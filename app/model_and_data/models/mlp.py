import numpy as np
import pandas as pd
import torch.nn.functional as F
import torch
import torch.nn as nn
import torch.optim as optim
import matplotlib.pyplot as plt


class MLP(nn.Module):

    def __init__(self, input_size, hidden_size, output_size, num_layers):
        super(MLP, self).__init__()
        self.input_size = int(input_size)
        self.hidden_size = int(hidden_size)
        self.output_size = int(output_size)
        self.num_layers = int(num_layers)
        self.layer_lst = nn.ModuleList()
        self.is_tuple = False
        self.input_layer = nn.Linear(self.input_size, self.hidden_size)
        for _ in range(self.num_layers):
            self.layer_lst.append(nn.Linear(self.hidden_size, self.hidden_size))

        self.out_layer = nn.Linear(self.hidden_size, self.output_size)


    def otherfucntion(self):
        ##神经网络中需要的其他逻辑

        pass

    def forward(self, input_data):
        if self.is_tuple:
            x = F.relu(self.input_layer(self.flatten(input_data)))
        else:
            x = F.relu(self.input_layer(input_data))
        for layer_ele in self.layer_lst:
            x = F.relu(layer_ele(x))

        return self.out_layer(x)


if __name__=='__main__':
    pass
    # model = MLP()
    # print(model)
