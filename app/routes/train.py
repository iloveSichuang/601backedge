from flask import Blueprint, request, jsonify, send_from_directory
from ..models import ModelApp, Network, AppParams
from .. import db
from app.model_and_data.TrainModel import Train_ML, Train_DML
import random

import string
from ..base import base
import os
from flask_login import login_required
'''
返回html都用不到，针对前后端分离，都有新的接口
'''


@base.route('/get_image/<id>')  # 返回训练结果到前端，根据需求还要再改，
def get_image(id):
    modelapp = ModelApp.query.get(id)
    appparams = modelapp.appliparams
    appparam = appparams[-1]
    filename = '{}.png'.format(appparam.result)

    return send_from_directory('D:/Users/601backedge/app/model_and_data/results', filename)


@base.route('/get_imagebypath/<path:filename>')  # 返回训练结果到前端，根据需求还要再改，
def get_imagebypath(filename):
    filename = f'{filename}.png'
    return send_from_directory('D:/Users/601backedge/app/model_and_data/results', filename)
'''
将训练模型所需要的所有参数都返回
'''


@base.route('/train_test/<id>', methods=['GET', 'POST'])
def train_test(id):
    """
    根据训练的id训练，get方法获取模型所有参数
    post方法，先获取参数，然后查询数据库判断是深度学习还是机器学习，0，机器学习，1代表深度学习，
    训练将结果保存到数据库，对应图像文件名随机生成
    """
    if request.method == 'GET':
        # 先不考虑调参的过程，所有数据都由数据库读出
        model = ModelApp.query.get(id)
        # print(model)
        network_name = model.network.name
        dataset = model.dataset
        params = {}
        model_params = eval(model.params)
        params['network_name'] = network_name
        params['dataset'] = dataset
        params['model_params'] = model_params
        return jsonify(params)
    else:
        data = request.form
        data = data.to_dict()
        print(data)
        params = {}
        '''
        训练时只需要modelapp的id,修改的参数，以及最后的结果图像
        '''
        # 还是需要把前端传入的数据封装成后端需要的样子
        # 将不需要的参数删除
        keys_to_delete = ['dataset', 'network_name']
        for key in keys_to_delete:
            if key in data:
                del data[key]
        params['model_params'] = data
        print(data)
        print(type(data))
        params['dataset'] = request.form.get('dataset')
        image_name = ''.join(random.choices(string.ascii_letters + string.digits, k=5))
        params['image_name'] = image_name
        # 根据网络名找到网络判断是机器学习还是深度学习
        network_name = request.form.get('network_name')
        params['network_name'] = network_name
        print(params)

        network = Network.query.filter_by(name=network_name).first()
        if network.is_deep == 0:
            # 机器学习处理
            train_model = Train_ML(**params)
            train_model.train()  # 训练过程
            # result_plot = trainmodel.plot()  # 结果图像
            # return results
        else:
            # 深度学习训练
            trainmodel = Train_DML(**params)
            trainmodel.train()
            # return results
        model = AppParams(params=str(params), result=image_name, app_id=id)  # 存入数据库需要转为str类型
        db.session.add(model)
        db.session.commit()
        return '训练结束'
        # '''
        # 训练过程
        # train函数或者类只需要模型名，数据集，针对模型的参数
        # '''


@base.route('/train_model/<id>', methods=['GET'])
@login_required
def train_model(id):
    # print(id)
    model = ModelApp.query.get(id)
    dataset = model.dataset
    network_name = model.network.name
    model_params = eval(model.params)
    print(model_params)
    image_name = ''.join(random.choices(string.ascii_letters + string.digits, k=5))
    train_params = {'dataset': dataset,
                    'network_name': network_name,
                    'model_params': model_params,
                    'image_name': image_name}
    appparam = AppParams(params=str(model_params), result=image_name, app_id=id)
    db.session.add(appparam)  # 添加但不执行
    print(111)
    if model.network.is_deep == 0:
        try:
            print(222)
            trainModel = Train_ML(**train_params)
            print(333)
            trainModel.train()
            model.status = 1
            db.session.commit()  # 执行插入数据库
            data = {
                'msg': '训练完成',
                'code': 200
            }
        except Exception as e:
            db.session.close()
            data = {
                'msg': '训练出错',
                'code': 400
            }
    else:
        try:
            print(444)
            trainModel = Train_DML(**train_params)
            print(555)
            trainModel.train()
            model.status = 1
            print(666)
            db.session.commit()
            data = {
                'msg': '训练完成',
                'code': 200
            }
        except Exception as e:
            db.session.close()
            data = {
                'msg': '训练出错',
                'code': 400
            }
    return jsonify(data)


@base.route('/download_model/<path>', methods=['GET'])
@login_required
def download_model(path):
    # 获取文件所在目录路径
    directory = os.path.dirname(path)

    # 获取文件名
    filename = os.path.basename(path)

    # 下载文件
    return send_from_directory(directory, filename, as_attachment=True)


@base.route('/get_trainresults/<id>', methods=['GET'])
@login_required
def get_trainresult(id):
    modelapp = ModelApp.query.get(id)
    appparams = modelapp.appliparams
    appparams = [appparam.to_dict() for appparam in appparams]
    return jsonify(appparams)


@base.route('/delete_appparams/<id>')
@login_required
def delete_appparams(id):
    appparam = AppParams.query.get(id)
    if appparam:
        db.session.delete(appparam)
        db.session.commit()
        return '删除成功'
    else:
        return '删除失败'
