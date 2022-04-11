# 机器学习作业一

**王伟营 202128014628067**

[TOC]
### 作业要求:
* 从两个高斯分布中采样。一组采样为正类，一组采样为负类。
* 编程实现线性回归， $y_i$ 为 -1 或 1 。保存参数，画出回归投影面，同时可视化显示结果。
* 编程实现线性判别分析，保留参数，对测试数据做出预测，同时可视化显示结果，画出分类面。
* 实验 1 两个高斯分布具有一样的方差，实验 2 两个高斯分布具有不同的方差，观察实验结果的不同。

### 实验 1 ：

1. 两个具有相同方差的高斯分布的采样

   类1的高斯分布的方差为0.3、0.5，类2的高斯分布的方差为0.3、0.5。两个具有相同方差的高斯分布的采样如下图所示：

   ![Figure 2022-03-15 181055](F:\学习\1机器学习\相同方差.png)

2. 线性回归
   $$
   \hat{w}=(X^TX)^{-1}X^TY
   $$
   参数$w$求得的结果是$[-0.691291, -0.2342, 0.00220833]$，回归投影面如下图所示。

   ![线性回归](F:\学习\1机器学习\线性回归-1.png)

3. 线性判别分析
   $$
   S_w^{-1}S_bw=\lambda w,\quad w为S_w^{-1}S_b的特征向量
   $$
   参数$w$求得的结果是$[0.947123, -0.677742]$，预测正确率为95%左右，分类面如下图所示。

   ![LDA-2](F:\学习\1机器学习\LDA-1.png)

4. 代码

   ```python
   import numpy as np
   import matplotlib.pyplot as plt
   from mpl_toolkits.mplot3d import Axes3D
   
   # 生成训练数据集，每类100个数据
   def get_train_data(data_size=100):
       data_label = np.zeros((2 * data_size, 1))
       # class 1
       x1 = np.reshape(np.random.normal(1, 0.3, data_size), (data_size, 1))
       y1 = np.reshape(np.random.normal(1, 0.5, data_size), (data_size, 1))
       data_train = np.concatenate((x1, y1), axis=1)
       data_label[0:data_size, :] = -1
       # class 2
       x2 = np.reshape(np.random.normal(-1, 0.3, data_size), (data_size, 1))
       y2 = np.reshape(np.random.normal(-1, 0.5, data_size), (data_size, 1))
       data_train = np.concatenate((data_train, np.concatenate((x2, y2), axis=1)), axis=0)
       data_label[data_size:2 * data_size, :] = 1
       return data_train, data_label
   
   #生成测试数据集，每类10个
   def get_test_data(data_size=10):
       testdata_label = np.zeros((2 * data_size, 1))
       # class 1
       x1 = np.reshape(np.random.normal(1, 0.6, data_size), (data_size, 1))
       y1 = np.reshape(np.random.normal(1, 0.8, data_size), (data_size, 1))
       data_test = np.concatenate((x1, y1), axis=1)
       testdata_label[0:data_size, :] = -1
       # class 2
       x2 = np.reshape(np.random.normal(-1, 0.3, data_size), (data_size, 1))
       y2 = np.reshape(np.random.normal(-1, 0.5, data_size), (data_size, 1))
       data_test = np.concatenate((data_test, np.concatenate((x2, y2), axis=1)), axis=0)
       testdata_label[data_size:2 * data_size, :] = 1
       return data_test, testdata_label
   
   #线性回归
   X0, y=get_train_data()
   X=np.concatenate((X0, np.ones([200,1])), axis=1)
   w=np.dot(np.dot(np.linalg.inv(np.dot(X.T,X)),X.T),y)
   
   #高斯分布采样
   plt.scatter(X[:100,0], X[:100,1],s=5,cmap='Blues')
   plt.scatter(X[100:,0], X[100:,1],s=5,cmap='red')
   
   # #线性回归绘图
   # fig=plt.figure()
   # ax1= Axes3D(fig)
   # ax1.scatter3D(X[:100,0],X[:100,1],X[:100,2],s=10, cmap='Blues')  #绘制散点图
   # ax1.scatter3D(X[100:,0],X[100:,1],X[100:,2],s=10, cmap='red')
   # xx = np.arange(-2,2,0.5)
   # yy = np.arange(-2,2,0.5)
   # xx1,xx2=np.meshgrid(xx,yy)
   # zz1=w[0]*xx1+w[1]*xx2+w[2]
   # ax1.plot_surface(xx1,xx2,zz1,alpha=0.8,rstride=1, cstride=1,label='RegressionSurface')
   # #设置坐标轴标签
   # ax1.set_xlabel('X')
   # ax1.set_ylabel('Y')
   # ax1.set_zlabel('Z')
   # plt.show()
   
   #线性判别分析
   X2,y2=get_test_data()
   u0=np.mean(X[:100,:2],axis=0).reshape(2,1)
   u1=np.mean(X[100:,:2],axis=0).reshape(2,1)
   sigma0=np.cov(X[:100,:2],rowvar=False)
   sigma1=np.cov(X[100:,:2],rowvar=False)
   #类内散度矩阵
   Sw=sigma0+sigma1
   #类间散度矩阵
   Sb=np.dot((u0-u1),(u0-u1).T)
   a,w1=np.linalg.eig(np.dot(np.linalg.inv(Sw),Sb))
   
   #线性判别分析绘图
   fig=plt.figure()
   ax2= Axes3D(fig)
   # ax2.scatter3D(X2[:10,0],X2[:10,1],y2[:10,0],s=5, marker='*',cmap='BrBG_r')  #绘制散点图
   # ax2.scatter3D(X2[10:,0],X2[10:,1],y2[10:,0],s=5, marker='*', cmap='	Dark2_r')
   ax2.scatter3D(X[:100,0],X[:100,1],X[:100,2],s=5, cmap='Blues')  #绘制散点图
   ax2.scatter3D(X[100:,0],X[100:,1],X[100:,2],s=5, cmap='red')
   xx = np.arange(-2,2,0.5)
   yy = np.arange(-2,2,0.5)
   xx1,xx2=np.meshgrid(xx,yy)
   zz1=w1[0,0]*xx1+w1[0,1]*xx2
   ax2.plot_surface(xx1,xx2,zz1,alpha=0.8,rstride=1, cstride=1,label='RegressionSurface')
   #设置坐标轴标签
   ax2.set_xlabel('X')
   ax2.set_ylabel('Y')
   ax2.set_zlabel('Z')
   plt.show()
   
   #测试
   correct_mount=0
   for i in range(20):
       z_test=np.dot(w1[0,:],X2[i,:])
       if ((y2[i]>=z_test)and(y2[i]==1))or((y2[i]<=z_test)and(y2[i]==-1)):
           correct_mount+=1
   acc=correct_mount/20
   ```

### 实验 2 ：

1. 两个具有不同方差的高斯分布的采样

   类1的高斯分布的方差为0.6、0.8，类2的高斯分布的方差为0.3、0.5。两个具有不同方差的高斯分布的采样如下图所示：

   ![Figure 2022-03-15 181055](F:\学习\1机器学习\不同方差.png)

2. 线性回归

   $$
   \hat{w}=(X^TX)^{-1}X^TY
   $$
   参数$w$求得的结果是$[-0.617114, -0.250245, 0.00701421]$，回归投影面如下图所示。

   ![线性回归](F:\学习\1机器学习\线性回归-2.png)

3. 线性判别分析
   $$
   S_w^{-1}S_bw=\lambda w,\quad w为S_w^{-1}S_b的特征向量
   $$
   参数$w$求得的结果是$[0.856843,-0.698133]$，预测正确率为95%左右，分类面如下图所示。

   ![LDA-2](F:\学习\1机器学习\LDA-2.png)

4. 代码

   ```python
   import numpy as np
   import matplotlib.pyplot as plt
   from mpl_toolkits.mplot3d import Axes3D
   
   # 生成训练数据集，每类100个数据
   def get_train_data(data_size=100):
       data_label = np.zeros((2 * data_size, 1))
       # class 1
       x1 = np.reshape(np.random.normal(1, 0.6, data_size), (data_size, 1))
       y1 = np.reshape(np.random.normal(1, 0.8, data_size), (data_size, 1))
       data_train = np.concatenate((x1, y1), axis=1)
       data_label[0:data_size, :] = -1
       # class 2
       x2 = np.reshape(np.random.normal(-1, 0.3, data_size), (data_size, 1))
       y2 = np.reshape(np.random.normal(-1, 0.5, data_size), (data_size, 1))
       data_train = np.concatenate((data_train, np.concatenate((x2, y2), axis=1)), axis=0)
       data_label[data_size:2 * data_size, :] = 1
       return data_train, data_label
   
   #生成测试数据集，每类10个
   def get_test_data(data_size=10):
       testdata_label = np.zeros((2 * data_size, 1))
       # class 1
       x1 = np.reshape(np.random.normal(1, 0.6, data_size), (data_size, 1))
       y1 = np.reshape(np.random.normal(1, 0.8, data_size), (data_size, 1))
       data_test = np.concatenate((x1, y1), axis=1)
       testdata_label[0:data_size, :] = -1
       # class 2
       x2 = np.reshape(np.random.normal(-1, 0.3, data_size), (data_size, 1))
       y2 = np.reshape(np.random.normal(-1, 0.5, data_size), (data_size, 1))
       data_test = np.concatenate((data_test, np.concatenate((x2, y2), axis=1)), axis=0)
       testdata_label[data_size:2 * data_size, :] = 1
       return data_test, testdata_label
   
   #线性回归
   X0, y=get_train_data()
   X=np.concatenate((X0, np.ones([200,1])), axis=1)
   w=np.dot(np.dot(np.linalg.inv(np.dot(X.T,X)),X.T),y)
   
   #高斯分布采样
   plt.scatter(X[:100,0], X[:100,1],s=5,cmap='Blues')
   plt.scatter(X[100:,0], X[100:,1],s=5,cmap='red')
   
   # #线性回归绘图
   # fig=plt.figure()
   # ax1= Axes3D(fig)
   # ax1.scatter3D(X[:100,0],X[:100,1],X[:100,2],s=10, cmap='Blues')  #绘制散点图
   # ax1.scatter3D(X[100:,0],X[100:,1],X[100:,2],s=10, cmap='red')
   # xx = np.arange(-2,2,0.5)
   # yy = np.arange(-2,2,0.5)
   # xx1,xx2=np.meshgrid(xx,yy)
   # zz1=w[0]*xx1+w[1]*xx2+w[2]
   # ax1.plot_surface(xx1,xx2,zz1,alpha=0.8,rstride=1, cstride=1,label='RegressionSurface')
   # #设置坐标轴标签
   # ax1.set_xlabel('X')
   # ax1.set_ylabel('Y')
   # ax1.set_zlabel('Z')
   # plt.show()
   
   #线性判别分析
   X2,y2=get_test_data()
   u0=np.mean(X[:100,:2],axis=0).reshape(2,1)
   u1=np.mean(X[100:,:2],axis=0).reshape(2,1)
   sigma0=np.cov(X[:100,:2],rowvar=False)
   sigma1=np.cov(X[100:,:2],rowvar=False)
   #类内散度矩阵
   Sw=sigma0+sigma1
   #类间散度矩阵
   Sb=np.dot((u0-u1),(u0-u1).T)
   a,w1=np.linalg.eig(np.dot(np.linalg.inv(Sw),Sb))
   
   #线性判别分析绘图
   fig=plt.figure()
   ax2= Axes3D(fig)
   # ax2.scatter3D(X2[:10,0],X2[:10,1],y2[:10,0],s=5, marker='*',cmap='BrBG_r')  #绘制散点图
   # ax2.scatter3D(X2[10:,0],X2[10:,1],y2[10:,0],s=5, marker='*', cmap='	Dark2_r')
   ax2.scatter3D(X[:100,0],X[:100,1],X[:100,2],s=5, cmap='Blues')  #绘制散点图
   ax2.scatter3D(X[100:,0],X[100:,1],X[100:,2],s=5, cmap='red')
   xx = np.arange(-2,2,0.5)
   yy = np.arange(-2,2,0.5)
   xx1,xx2=np.meshgrid(xx,yy)
   zz1=w1[0,0]*xx1+w1[0,1]*xx2
   ax2.plot_surface(xx1,xx2,zz1,alpha=0.8,rstride=1, cstride=1,label='RegressionSurface')
   #设置坐标轴标签
   ax2.set_xlabel('X')
   ax2.set_ylabel('Y')
   ax2.set_zlabel('Z')
   plt.show()
   
   #测试
   correct_mount=0
   for i in range(20):
       z_test=np.dot(w1[0,:],X2[i,:])
       if ((y2[i]>=z_test)and(y2[i]==1))or((y2[i]<=z_test)and(y2[i]==-1)):
           correct_mount+=1
   acc=correct_mount/20
   ```

   
   
### 实验 1 和实验 2 结果的比较

   具有相同方差的高斯分布的得到的线性回归投影面模型的效果比具有不同方差的高斯分布的得到的线性回归投影面效果更好。二者在线性判别分析的结果比较中没看出明显区别。

   

   