import numpy as np
import torch
import torch.nn as nn
from torch.utils.data import Dataset, DataLoader

import importlib.util
import torch.optim as optim
import matplotlib.pyplot as plt

from .MyDataset import MyDatasetReader


class Train_ML:
    def __init__(self, dataset, network_name, model_params, image_name):
        self.dataset = fr'D:\desktop\601backedge\app\model_and_data\datasets\{dataset}'
        self.network = network_name
        self.params = model_params
        self.image_name = image_name
        '''
        随机生成的图像文件名
        注意传进来的是数据文件的名字，需要拼接以便找到文件的地址
        '''
    def train(self):
        # data = np.genfromtxt('../datasets/signal.csv', delimiter=',')
        data = np.genfromtxt(self.dataset, delimiter=',')   # 读取数据
        # 映射网络模型
        # 假设网络模型名为小写（vmd）,类名为大写（VMD）
        # 步骤1：获取模块的规范
        module_spec = importlib.util.spec_from_file_location(self.network.upper(), fr'D:\desktop\601backedge\app\model_and_data\models\{self.network}.py')

        # 步骤2：加载模块
        module = importlib.util.module_from_spec(module_spec)
        module_spec.loader.exec_module(module)

        # 步骤3：获取类对象
        class_obj = getattr(module, self.network.upper())

        model_ = class_obj(**self.params)

        # 要结果数据，还是要画图？
        # 如何保存训练好的保存数据
        # a, b, c = model_.forward(data)  # 训练数据
        # model_.plot(data, self.image_name)  # 画图
        result = model_.forward(data, self.image_name)
        return result


class Train_DML:
    def __init__(self, dataset, network_name, model_params, image_name):
        self.dataset = fr'D:\desktop\601backedge\app\model_and_data\datasets\{dataset}'
        self.network = network_name
        # 默认网络都含有这几个参数
        self.epochs = int(model_params['epochs'])
        self.learning_rate = float(model_params['learning_rate'])
        self.batch_size = int(model_params['batch_size'])
        self.params = model_params
        self.image_name = image_name

    def train(self):
        data = MyDatasetReader(self.dataset)
        print(data)

        module_spec = importlib.util.spec_from_file_location(self.network.upper(), fr'D:\desktop\601backedge\app\model_and_data\models\{self.network}.py')

        # 步骤2：加载模块
        module = importlib.util.module_from_spec(module_spec)
        module_spec.loader.exec_module(module)

        # 步骤3：获取类对象
        class_obj = getattr(module, self.network.upper())

        # 将不需要的参数删除
        keys_to_delete = ['epochs', 'learning_rate', 'batch_size']
        for key in keys_to_delete:
            if key in self.params:
                del self.params[key]
        # 实例化类
        model_ = class_obj(**self.params)

        criterion = nn.MSELoss()
        optimizer = optim.Adam(model_.parameters(), lr=self.learning_rate)
        data = DataLoader(data, batch_size=self.batch_size, shuffle=False)
        print(data)
        loss_l = []
        for epoch in range(self.epochs):
            losses = 0
            for features, labels in data:
                output = model_(features)
                loss = criterion(output, labels)
                optimizer.zero_grad()
                loss.backward()
                optimizer.step()
                losses += loss.item()
            loss_l.append(losses/len(data))
            if (epoch + 1) % 10 == 0:
                print(f'Epoch [{epoch + 1}/{self.epochs}], Loss: {losses/len(data):.4f}')
        print(loss_l)
        plt.plot(loss_l)
        path = rf'D:\desktop\601backedge\app\model_and_data\results\{self.image_name}.png'
        plt.savefig(path)
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
