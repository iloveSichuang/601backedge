import numpy as np
import matplotlib.pyplot as plt
from vmdpy import VMD

class VMDS:
    def __init__(self, alpha, K, tau, DC, init, tol):
        '''
        :param alpha:数据保真度约束的平衡参数，经验值为抽样点长度的1.5-2.0倍
        :param tau:噪声容限
        :param K:要分解模态的数量
        :param DC:合成的信号若无常量，则取值为0，若含有常量，则取值为1
        :param init:初始化w值,初始化为0时，所有的随机数从0开始,初始化为1时，均匀分布产生的随机数；初始化为2时，随机分布产生的随机数
        :param tol:收敛准则的容忍度； 通常在1e-6左右
        '''
        self.alpha = int(alpha)
        self.tau = int(tau)
        self.K = int(K)
        self.DC = int(DC)
        self.init = int(init)
        self.tol = float(tol)

    def forward(self, x, image_name):
        u, u_hat, omega = VMD(x, self.alpha, self.tau, self.K, self.DC, self.init, self.tol)  # 获取结果
        for i in range(self.K):     # 把要展示的内容展示出来
            plt.subplot(self.K, 1, i + 1)
            plt.plot(u[i, :])
        path = rf'D:\desktop\601backedge\app\model_and_data\results\{image_name}.png'  # 采用绝对路径
        plt.savefig(path)  # 保存图像到本地
        plt.show()  #
        plt.close()
        return (u, u_hat, omega)  # 将结果返回


if __name__ == '__main__':
    f_1 = 2.0
    f_2 = 24.0
    f_3 = 288.0
    T = 1000
    t = np.linspace(1 / float(T), 1, T, endpoint=True)
    pi = np.pi  # print(t)
    v_1 = np.cos(2 * pi * f_1 * t)
    v_2 = 1 / 4.0 * np.cos(2 * pi * f_2 * t)
    v_3 = 1 / 16.0 * np.cos(2 * pi * f_3 * t)

    alpha = '2000'
    tau = '0'
    K = '3'
    DC = '0'
    init = '1'
    tol = '1e-7'
    signal = v_1 + v_2 + v_3

    vmdModel = VMDS(alpha, K, tau, DC, init, tol)  # 实例化类
    result = vmdModel.forward(signal, '11111')  # sianal为待处理的信号,’1111‘是图像文件名
    print(result)

