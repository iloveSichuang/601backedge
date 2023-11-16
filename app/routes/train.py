from flask import request, jsonify, send_from_directory
from ..models import ModelApp, Network, AppParams
from .. import db
from app.model_and_data.TrainModel import Train_ML, Train_DML
import random

import string
from ..base import base
import os
from flask_login import login_required, current_user

'''
返回html都用不到，针对前后端分离，都有新的接口
'''


@base.route('/get_image/<id>')  # 返回训练结果到前端，根据需求还要再改，
def get_image(id):
    modelapp = ModelApp.query.get(id)
    appparams = modelapp.appliparams
    appparam = appparams[-1]
    filename = '{}.png'.format(appparam.result)

    return send_from_directory('app/model_and_data/results', filename)


@base.route('/get_imagebypath/<path:filename>')  # 返回训练结果到前端，根据需求还要再改，
def get_imagebypath(filename):
    filename = f'{filename}.png'
    print(filename)
    return send_from_directory('app/model_and_data/results', filename)
'''
将训练模型所需要的所有参数都返回
'''


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
            result = trainModel.train()
            print(444)
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


@base.route('/train_model2/<id>', methods=['GET'])
@login_required
def train_model2(id):
    model = ModelApp.query.get(id)
    dataset = model.test_data.ori_dataset.path
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
            result = trainModel.train()
            print(444)
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


@base.route('/show_userinfo', methods=['GET'])
@login_required
def show_userinfo():
    user = current_user
    # 采用相对路径 sys真是个天才
    f = open('app/model_and_data/datasets/data.csv', 'r', encoding='utf-8')
    lines = f.readlines()
    print(lines)
    return user.ID


@base.route('/get_ownnetworks', methods=['GET'])
@login_required
def get_ownnetworks():
    user = current_user
    print(user.ID)
    networks = Network.query.filter_by(created_username=user.LOGINNAME)
    networks = [network.to_dict() for network in networks]
    return jsonify(networks)