物体分类

物体检测：图像里是什么，在什么位置

物体分割：每个像素属于什么东西

深度学习的可解释性？

世界上所有事情都是有道理的，关键在于两点:1. 有没有必要知道道理；2. 有没有能力知道这个道理。

向量关于向量的导数是一个矩阵 

![image-20220316180120848](https://cdn.jsdelivr.net/gh/WWeiying/Figurebed/blog-images/2022/03/31/a79524a3fa5a301508d691dfcc9aade8-a79524a3fa5a301508d691dfcc9aade8-a79524a3fa5a301508d691dfcc9aade8-image-20220316180120848-d96846-d32281-bf8e43.png)有1/2是为了方便求导去掉

机器学习一般解决NP问题

探究超参数对实验结果的影响

绝对差值是不可导的

batchsize越小对收敛越好。



绿色是似然函数，蓝色是函数，黄色是梯度，L1 loss预测值和真实值很远时，梯度常量，稳定性有好处，在0点处，优化末期，优化不那么稳定

Huber鲁棒损失

感知机不能拟合xor函数，导致第一次AI寒冬。多层感知机可以。

激活函数是绝对值函数的软的版本。

Relu的优势是简单、算的很快。ReLu不是线性函数。激活函数的本质是引入非线性。

神经网络参数训练完成后，参数保持不变。“动态神经网络？思考”

SVM缺点：对几万个点还行，再多了就很难计算了；可调的地方不多了。

测试数据集只用一次。

经常：30%测试数据，70%数据做5折交叉验证。深度学习不用交叉验证。k越大效果越好，但要考虑计算能力。

时序序列的数据，测试集在训练集之后。

超参数的设计靠经验。老中医。随机调也行。

类别不平衡，验证数据集要平衡。

k折交叉验证三种使用方法：1. 交叉验证训练之后，重新调整超参数，再训练；2. 从k个中，选择表现最好的超参数作为最终参数；3. k个模型一起用，最后对预测结果取平均。

SVM打败多层感知机，深度学习CNN打败SVM。

训练数据集越小，模型越复杂，过拟合越容易发生。

数据集太小，过拟合可能无法避免。

通过限制参数值的取值范围控制模型复杂度。

dropout很少用在CNN，多用在MLP上。

BN是给卷积层用的，dropout是给全连接层用的。

weight decay用的更多。dropout常取0.1、0.9，可能导致参数收敛更慢。

向量关于向量的导数是矩阵

nan一般是除以0了。调低学习率。

网络输出的值变成了nan，一般是梯度的问题（梯度爆炸）。

深度学习的好处：不用数学也能学。但是数学还要学。

sigmoid可能引起梯度消失，relu可以缓解。sigmoid和梯度消失不是充分必要关系。

autogluon

很少用偶数的卷积核，用奇数上下填充对称。

因为计算量太大，不选步幅为1。

NAS能让超参数一起训练。NAS是有钱人的游戏。

小的卷积核计算快一点。

输出通道数是卷积层的超参数，输入通道数是上一卷积层的超参数。

1*1卷积不识别空间模式，它只看一个像素，没有看该像素与周边像素的关系。

卷积层对位置十分敏感。

一般高宽减半，通道数会加倍。

view和reshape没有本质区别。

fashion-mnist准确度0.95应该可以。

***cnn explainer网址，可视化看每一层学到了什么特征***

relu比sigmoid梯度更大，maxpooling输出更大，梯度更大，训练更容易。

Alex net把图片压缩，通道拉长，最后全连接层

imagenet还是当前常用的数据集。

Alexnet学到的特征不一定符合人类的逻辑。深度学习的可解释性比较差。

alexnet两个全连接层，缺少了一个，效果大打折扣。

VGG（13年的冠军）：在同样的计算开销的情况下，用深更窄的卷积核的效果更好。

***gluoncv Model zoo网址***

空间压缩一半，模式增加一倍。

全连接层特别占用参数，尤其是卷积层后的全连接层，很容易过拟合。

NIN 1*1的卷积层等价于全连接层。

GoogLeNet第一次卷积神经网络超过100层。

卷积层抽取空间信息。

$3*3$卷积改成$1*3$、$3*1$，计算量减掉1/3

高层语义，底层特征

激活函数加入非线性

批量归一化线性，使方差均值变化不要太剧烈，是对输入输出线性变换，用在激活函数之前

BN层一般用于深层网络，浅层MLP加上BN效果不好。

resnet 34用得比较多，可以上resnet 50。resnet152计算代价昂贵。

cos学习率、step学习率、固定学习率

学习率可以让靠近输出的小一些，靠近输入的大一些，缓解梯度消失的问题，但是很难调。

少量的高质量数据比很多低质量数据有用。

深度学习是炼丹。

ps能用的都可以用在数据增广上。

CIFAR10

图片增广使得测试精度、训练精度的间隔变小。增广使得均值不变，方差改变一点点。

原始样本的多样性单一。

mix-up增广有效。是？未知

神经网络越底层的特征越通用

目标检测：检测出所有物体及其位置。

区域卷积神经网络R-CNN

Fast RCNN 不再对每个锚框抽取特征，直接对整张图片

Faster RCNN（用得比较多，相对还是比较慢）用于精度要求较高的场景，目标检测算法比目标分类算法要贵得多。

卷积是识别local的模式

转置卷积能拉大

转置卷积、反卷积是一个东西

中文分词库：jieba

穷举搜索

贪心搜索

