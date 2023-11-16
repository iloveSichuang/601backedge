from flask import Blueprint, render_template, request, jsonify, redirect, url_for, session, send_from_directory, jsonify
from flask_login import login_required
from ..models import Network, Dataset, Networkcategory, ModelApp, TestDataset
import os
import csv
import sqlalchemy as sa
from operator import or_
from app.models.Organization import Organization
from ..base import base
from ..models import Role, Resource, User
from flask import render_template, request
from flask_login import current_user
from flask import jsonify
from datetime import datetime
from .. import db
import uuid
from sqlalchemy import desc
from sqlalchemy import asc
from sqlalchemy import or_
import json



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

            file.save(os.path.join('D:/desktop/601backedge/app/model_and_data/datasets', filename))
            # 将保存路径存入数据库
            save_path = os.path.join('D:/desktop/601backedge/app/model_and_data/datasets', filename)
            # print(save_path)
            dataset = Dataset(name=name, data_description=data_description, path=save_path,
                              created_username=user.LOGINNAME, created_userrole=user.LOGINNAME)
            db.session.add(dataset)
            db.session.commit()
            return 'success'
        return 'error'


@base.route('/show_dataset', methods=['GET'])
@login_required
def show_dataset():
    datasets = Dataset.query.all()
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

