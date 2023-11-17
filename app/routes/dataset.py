from flask_login import login_required
from ..models import Network, Dataset, Networkcategory, ModelApp, TestDataset
import os
import csv
import sqlalchemy as sa
import pandas as pd
from ..base import base

from flask import render_template, request
from flask_login import current_user
from flask import jsonify

from .. import db




@base.route('/upload_dataset', methods=['POST'])  # 网络模型上传（需要区别身份，管理员还是用户，待完成）
@login_required
def upload_dataset():
    if request.method == 'POST':
        user = current_user
        data = request.form
        name = request.form.get('name')
        data_description = request.form.get('data_description')
        file = request.files['file']
        if file:
            # 保存文件到服务器
            filename = file.filename
            save_path = os.path.join('app/model_and_data/datasets', filename)

            file.save(save_path)
            dataset = Dataset(name=name, data_description=data_description, path=save_path,
                              created_username=user.LOGINNAME, created_userrole=user.LOGINNAME)
            db.session.add(dataset)
            db.session.commit()
            return 'success'
        return 'error'


@base.route('/show_dataset', methods=['GET'])
@login_required
def show_dataset():
    username = current_user.LOGINNAME
    if username == 'admin':
        datasets = Dataset.query.all()
    else:
        datasets = Dataset.query.filter_by(created_username=username).all()
    # datasets = Dataset.query.all()
    datasets = [dataset.to_dict() for dataset in datasets]
    # network.netcat.name
    return jsonify(datasets)


@base.route('/delete_dataset/<id>', methods=['DELETE'])
@login_required
def delete_dataset(id):
    if ',' not in id:
        dataset = Dataset.query.get(id)
        if dataset:
            try:
                db.session.delete(dataset)
                db.session.commit()
                data = {
                    'msg': f"删除成功",
                    'code': 200
                }
                return jsonify(data)
            except sa.exc.IntegrityError as e:
                data = {
                    'msg': f"外键约束错误",
                    'code': 400
                }
                return jsonify(data)
        else:
            return '删除失败'
    else:
        id_list = eval(id)
        data = {
            'msg': [],
            'code': []
        }
        for i in id_list:
            dataset = Dataset.query.get(i)
            if dataset:
                try:
                    db.session.delete(dataset)
                    db.session.commit()
                # except sa.exc.IntegrityError as e:
                except sa.exc.IntegrityError as e:
                    data['msg'].append(f"第{i}条数据外键错误")
                    data['code'].append(400)
                    db.session.close()
                    # return '错误'
                else:
                    # data['msg'].append(f"第{i}条数据删除成功")
                    data['code'].append(200)
            else:
                data['msg'].append(f"第{i}条数据不存在")
                data['code'].append(400)
        data['code'] = max(data['code'])
        data['msg'] = str(data['msg']).replace('[', '').replace(']', '')
        return jsonify(data)


@base.route('/get_csv_dimensions/<id>', methods=['GET'])
@login_required
def get_csv_dimensions(id):
    dataset = Dataset.query.get(id)
    filepath = dataset.path
    try:
        with open(filepath, 'r') as file:
            reader = csv.reader(file)
            rows = sum(1 for row in reader)  # 获取行数
            file.seek(0)  # 重新将文件指针移动到文件开头
            cols = len(next(reader))  # 获取列数
            data = {
                'rows': rows,
                'cols': cols
            }
        return jsonify(data)
    except:
        return 'error'


@base.route('/get_csv_data/<id>', methods=['GET'])
@login_required
def get_csv_data(id):
    dataset = Dataset.query.get(id)
    filepath = dataset.path
    data = []
    with open(filepath, 'r', encoding='utf-8') as file:
        reader = csv.reader(file)
        for row in reader:
            data.append(row)
    # print(data)
    return data


@base.route('/select_dataset/<id>', methods=['POST'])
@login_required
def select_dataset(id):
    user = current_user
    input_ = request.args.getlist('in')
    out_ = request.args.getlist('out')
    name = request.args.get('name')
    test_data = TestDataset(name=name, input=str(input_), output=str(out_),
                            origin_dataset=id, created_username=user.LOGINNAME, created_userrole=user.LOGINNAME)
    db.session.add(test_data)
    db.session.commit()
    return 'success'


@base.route('/show_userdata', methods=['GET'])
@login_required
def show_testdata():
    username = current_user.LOGINNAME
    if username == 'admin':
        datasets = TestDataset.query.all()
    else:
        datasets = TestDataset.query.filter_by(created_username=username).all()
    datasets = [dataset.to_dict() for dataset in datasets]
    # network.netcat.name
    return jsonify(datasets)


@base.route('/delete_userdata/<id>', methods=['DELETE'])
@login_required
def delete_userdata(id):
    # print(id)
    if ',' not in id:
        dataset = TestDataset.query.get(id)
        if dataset:
            try:
                db.session.delete(dataset)
                db.session.commit()
                data = {
                    'msg': f"删除成功",
                    'code': 200
                }
                return jsonify(data)
            except sa.exc.IntegrityError as e:
                db.session.close()
                data = {
                    'msg': f"外键约束错误",
                    'code': 400
                }
                return jsonify(data)
        else:
            return '删除失败'
    else:
        id_list = eval(id)
        data = {
            'msg': [],
            'code': []
        }
        for i in id_list:
            dataset = TestDataset.query.get(i)
            if dataset:
                try:
                    db.session.delete(dataset)
                    db.session.commit()
                # except sa.exc.IntegrityError as e:
                except sa.exc.IntegrityError as e:
                    data['msg'].append(f"第{i}条数据外键错误")
                    data['code'].append(400)
                    db.session.close()
                    # return '错误'
                else:
                    # data['msg'].append(f"第{i}条数据删除成功")
                    data['code'].append(200)
            else:
                data['msg'].append(f"第{i}条数据不存在")
                data['code'].append(400)
        data['code'] = max(data['code'])
        data['msg'] = str(data['msg']).replace('[', '').replace(']', '')
        return jsonify(data)


@base.route('/get_userdata_info/<id>', methods=['GET'])
@login_required
def get_testdata_info(id):
    testdata = TestDataset.query.get(id)
    origin_data_path = testdata.ori_dataset.path  # 原始数据集路径
    data = pd.read_csv(os.environ['app_home']+fr'/{origin_data_path}')
    input = eval(testdata.input)
    output = eval(testdata.output)
    inputs = data[input]
    outputs = data[output]
    # print(type(inputs.to_json(orient='records')))
    datas = {
        'input': eval(inputs.to_json(orient='records')),
        'output': eval(outputs.to_json(orient='records')),
    }
    # in_out_data = eval(testdata.input) + eval(testdata.output)
    # print(in_out_data)
    # print(type(in_out_data))
    # datas = data[in_out_data]
    # datas = datas.to_json(orient='records')
    # print(type(datas['input']))
    return datas