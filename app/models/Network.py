from app import db
from datetime import datetime
from sqlalchemy import desc
# 模型model
'''
模型名称
模型需要传入的参数
模型地址
'''


class Network(db.Model):
    __tablename__ = 'network'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    name = db.Column(db.String(100), nullable=False)
    path = db.Column(db.String(255), nullable=False)
    network_params = db.Column(db.String(500), nullable=False)
    category_id = db.Column(db.Integer, db.ForeignKey('netcat.id'), nullable=False)
    is_deep = db.Column(db.Integer, default=0)   # 0表示为机器学习 1表示深度学习
    created_username = db.Column(db.String(100), nullable=False)  # LoginName
    modelapps = db.relationship('ModelApp', backref='network')
    create_time = db.Column(db.DateTime, default=datetime.now)
    def to_dict(self):
        if self.is_deep==0:
            type = '机器学习'
        else:
            type = '深度学习'
        return {'id': self.id, 'name': self.name, 'path':self.path, 'network_params': self.network_params,
                'category': self.netcat.name, 'type': type, 'created_username': self.created_username}


class Networkcategory(db.Model):
    __tablename__ = 'netcat'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    name = db.Column(db.String(100), nullable=False)
    networks = db.relationship('Network', backref='netcat')

    def to_dict(self):
        return {'value': self.id, 'label': self.name}

    def to_dict2(self):
        return {'value': self.name, 'text': self.name}


class ModelApp(db.Model):
    __tablename__ = 'model_application'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    model_name = db.Column(db.String(100), nullable=False)
    model_description = db.Column(db.Text, nullable=False)
    data_id = db.Column(db.Integer, db.ForeignKey('testdata.id'), nullable=False)
    # dataset = db.Column(db.String(100), nullable=False)  # 数据集应该存放的也是id,
    params = db.Column(db.String(500), nullable=False)
    network_id = db.Column(db.Integer, db.ForeignKey('network.id'), nullable=False)
    appliparams = db.relationship('AppParams', backref='model_application')
    status = db.Column(db.Integer, default=0)   # 0表示为未训练 1表示训练完成
    created_username = db.Column(db.String(100), nullable=False)
    create_time = db.Column(db.DateTime, default=datetime.now)
    def to_dict(self):
        if self.status == 0:
            percentage = 0
            process = None
            path = None
        else:
            process = 'success'
            percentage = 100
            appparams = self.appliparams
            appparam = appparams[-1]
            path = appparam.result
        return {'id': self.id, 'model_name': self.model_name, 'model_description': self.model_description,
                'network': self.network.name, 'dataset': self.test_data.name, 'params': eval(self.params), 'process': process,
                'status': self.status, 'percentage': percentage, 'imagePath': None, 'path':path, 'created_username': self.created_username}


class AppParams(db.Model):
    __tablename__ = 'appparams'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    params = db.Column(db.String(500), nullable=False)
    result = db.Column(db.String(255), nullable=False)  # 返回文件名（图像/文件）
    app_id = db.Column(db.Integer, db.ForeignKey('model_application.id'), nullable=False)
    train_time = db.Column(db.DateTime, default=datetime.now)
    def to_dict(self):
        image_path = fr'D:\Users\601backedge\app\model_and_data\results\{self.result}.png'
        return {'id': self.id, 'params': self.params, 'result': image_path}











