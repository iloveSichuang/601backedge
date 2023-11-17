import numpy as np
import torch
import torch.nn as nn
from torch.utils.data import Dataset, DataLoader

import importlib.util
import torch.optim as optim
import matplotlib.pyplot as plt
import os
from app.model_and_data.MyDataset import MyDatasetReader


class Train_ML:
    def __init__(self, dataset, network_name, network_path, model_params, image_path):
        # print(os.environ['app_home'])
        self.dataset = os.environ['app_home'] + fr'/{dataset}'
        self.network_path = os.environ['app_home'] + fr'/{network_path}'
        self.network = network_name
        self.params = model_params
        self.path = os.environ['app_home'] + fr'/{image_path}'  # 图像保存路径
        '''
        随机生成的图像文件名
        注意传进来的是数据文件的名字，需要拼接以便找到文件的地址
        '''
    def train(self):
        data = np.genfromtxt(self.dataset, delimiter=',')   # 读取数据
        print(data)
        # 映射网络模型
        # 假设网络模型名为小写（vmd）,类名为大写（VMD）
        # 步骤1：获取模块的规范
        module_spec = importlib.util.spec_from_file_location(self.network, fr'{self.network_path}')

        # 步骤2：加载模块
        module = importlib.util.module_from_spec(module_spec)
        module_spec.loader.exec_module(module)

        # 步骤3：获取类对象
        class_obj = getattr(module, self.network)

        model_ = class_obj(**self.params)
        print(model_)
        print(444)
        # 要结果数据，还是要画图？
        # 如何保存训练好的保存数据

        a, b, c = model_.forward(data, self.path)  # 训练数据
        # model_.plot(data, self.image_name)  # 画图
        return a,b,c


class Train_DML:
    def __init__(self, dataset, network_name, network_path, model_params, image_path):
        self.dataset = os.environ['app_home'] + fr'/{dataset}'
        self.network_path = os.environ['app_home'] + fr'/{network_path}'
        self.network = network_name
        self.params = model_params
        self.path = os.environ['app_home'] + fr'/{image_path}'  # 图像保存路径
        # 默认网络都含有这几个参数
        self.epochs = int(model_params['epochs'])
        self.learning_rate = float(model_params['learning_rate'])
        self.batch_size = int(model_params['batch_size'])
        self.params = model_params

    def train(self):
        print(self.dataset)
        data = MyDatasetReader(fr'{self.dataset}')
        print(data)
        print(self.network_path)
        module_spec = importlib.util.spec_from_file_location(self.network, fr'{self.network_path}')

        # 步骤2：加载模块
        module = importlib.util.module_from_spec(module_spec)
        module_spec.loader.exec_module(module)

        # 步骤3：获取类对象
        class_obj = getattr(module, self.network)

        # 将不需要的参数删除
        keys_to_delete = ['epochs', 'learning_rate', 'batch_size']
        for key in keys_to_delete:
            if key in self.params:
                del self.params[key]
        # 实例化类
        print(23456)
        model_ = class_obj(**self.params)
        print(333)
        criterion = nn.MSELoss()
        optimizer = optim.Adam(model_.parameters(), lr=self.learning_rate)
        data = DataLoader(data, batch_size=self.batch_size, shuffle=False)
        print(data)
        loss_l = []
        for epoch in range(self.epochs):
            losses = 0
            for features, labels in data:
                output = model_.forward(features)
                loss = criterion(output, labels)
                optimizer.zero_grad()
                loss.backward()
                optimizer.step()
                losses += loss.item()
            loss_l.append(losses/len(data))
            if (epoch + 1) % 10 == 0:
                print(f'Epoch [{epoch + 1}/{self.epochs}], Loss: {losses/len(data):.4f}')
        plt.plot(loss_l)

        plt.savefig(self.path)
        plt.show()
        plt.close()


if __name__ == '__main__':
    model = {
        'dataset': 'signal.csv',
        'model_params': {
            'alpha': '2000',
            'tau': '0',
            'K': '3',
            'DC': '0',
            'init': '1',
            'tol': '0.0000001'
                   },
        'network_name': 'vmds',
        'image_name': '11gaea'
    }
    modelTrain = Train_ML(**model)
    u, u_hat, omega = modelTrain.train()
    print(u, u_hat, omega)

    # params = {
    #     'dataset': 'data.csv',
    #     'model_params': {
    #         'input_size': 12,
    #         'hidden_size': 10,
    #         'output_size': 1,
    #         'num_layers': 3,
    #         'epochs': 1000,
    #         'learning_rate': 0.01,
    #         'batch_size': 32
    #     },
    #     'network_name': 'mlp',
    #     'image_name': 'faaesf'
    # }
    #
    # model_train = Train_DML(**params)
    # model_train.train()
    # print("训练结束")
