工艺能力，design，功能部件，RiscV IMC

[Computer Arithmetic Algorithms and Hardware Implementations.pdf](F:\spring core\资料\Computer Arithmetic Algorithms and Hardware Implementations.pdf)

tcs

函数库，用汇编写的

汇编代码——机器代码——ISA

https://github.com/openhwgroup

https://github.com/openhwgroup/cv32e40p

[OpenHW Group CV32E40P User Manual — CORE-V CV32E40P User Manual documentation](https://docs.openhwgroup.org/projects/cv32e40p-user-manual/)



# Linux

centos：包管理工具rpm,yum，界面简洁，性能强大

ubuntu：包管理工具apt

容器docker 、WSL、VMware、virtual box

超线程技术HT

主机必须有VPT技术，有虚拟化选项

Linux没有盘符

A、B盘是软盘，所以从C盘硬盘开始

根目录、根分区/

Linux里面一切皆文件

硬盘分区：

挂载点

引导分区/boot

linux最经典文件系统格式第四代扩展文件系统ext4

xfs新的高性能日志文件系统

swap交换分区，硬盘里作为内存的替补。给实际内存的一到二倍。单独用一个高速硬盘也可。

剩下的硬盘全是/根分区

super键即田字键

shift+delete删除

终端terminal:命令交互十分强大，本质上是命令解释层shell

CTRL+alt+f2真正意义的shell，加F3另一个shell，和终端本质上底层一回事。

ctrl+alt光标回来

Ubuntu快捷键有区别。

管理员是#提示，普通用户是$命令提示。

ls列出所有文件目录

~用户主目录

/根目录

linux文件系统/目录结构

Windows系统反斜杠\路径，又是转义字符，所以常常是\\

Linux是正斜杠

Linux目录是虚拟目录，是逻辑文件结构，真正物理上的取决于分区和挂载点。

bin：二进制命令目录，直接可以执行的机器代码，常用命令都在这，实际在usr/bin

sbin：系统级的二进制命令，只有管理员可以用的命令，usr/sbin

lib：usr/lib库目录，系统和程序所需要的共享库文件，类似Windows的dll，C盘的system32文件夹

usr：用户所需要的所有的应用程序/数据/文件

/boot：引导启动所需要的，100~500M

dev：管理设备的目录，所有硬件都当成文件来管理。

etc：系统管理所需要的配置文件。

home：普通用户的文件夹

root:超级管理员的目录

opt：第三方软件

media：可移动设备，U盘光驱的挂载点

mnt：外部存储的挂载点，和media差不多

proc：进程目录

run目录：运行目录，当前系统运行以来的所有的支持信息，临时的文件系统，重启小时

srv：系统服务的信息

sys：系统硬件相关的信息

tmp：临时目录，可以操作情况

var：可变目录，各种各样的日志

编辑器vim——编辑器之神，emacs神之编辑器（all in one）

vim比vi更强大的文本编辑器

切换输入法：super+空格

tab智能补充

vim：

一般模式：删除、复制、粘贴

* u撤回操作
* yy复制，8yy，y8y复制8行，y$复制光标到行尾，y^复制光标到行头，yw复制一个词（带空格）
* p粘贴，5p粘贴5行
* dd删除，3dd删除3行，dw删除一个词，d$，d^
* w跳到写一个词
* x剪切
* X退格
* r+要替换的，替换
* R变成替换模式
* 光标移动，^行头，$行尾，w下一个词的词头，e下一个词的词尾，gg、shift+h（H）、1+G文档的开头，G、L文档末尾、行数+G跳到指定行头、

命令模式：或者/

* :w保存
* ：set nu 显示行号，:set nonu不显示行号
* :q退出
* 加 ! 强制执行
* /查找+要查找的字符串，n向下找，N向上找
* ：noh取消高亮
* 替换：s/ old/new，替换当前查找到的第一个匹配到的词
* 替换：s/ old/new/g，当前行替换
* 替换：%s/ old/new，替换所有行的第一个
* 替换：%s/ old/new/g，替换所有行的所有

编辑模式i（插入模式）：

* i/I
* a/A
* o/O

 ping+ip用来检测两台机器之间是否联通。

ping www.baidu.com

主机IP：Windows查IP：ipconfig

虚拟机IP：linux查IP：ifconfig

复制：CTRL+shift+c

192.168 C类地址

前三个一样在一个局域网内。

DHCP动态分配IP

PC和VM是平等的关系。

NAT网络地址转换，局域网里虚拟出的局域网。

Vmnet8：主机访问虚拟机。

主机名hostname vim /etc/hostname 重启才有效

hostnamectl set-hostname spark10 实时生效

有一个通讯录：hosts文件（Windows/linux都有） vim /etc/hosts

域名劫持 修改hosts文件

基于ssh远程协议的远程登陆。

VNC远程登陆桌面版。

ls /usr/sbin/ |grep service

进程process：计算机中正在执行的程序或命令，正在运行的实体。分配一个唯一的PID识别码。

持续存在的进程叫服务service。所有的系统服务都是后台进程。守护进程daemgn

（centos6）/etc/init.d	绿色的是可执行的脚本

（centos7）systemctl 操作命令+服务 /usr/lib/systemd .service服务	.target一组服务

窗口化配置界面setup，有*的是开机自启动，运行级别越高功能越丰富。可以从级别1安全模式修改密码。NFS网络文件系统。常用级别3和5。

ctrl+alt+f3进入运行级别3

防火墙iptables/firewalld

systemd stop firewalls

shutdown一分钟的关机操作

shutdown -c取消关机

shutdown 3 3分钟后关机

shutdown 15:38

shutdown now立刻关机

shell

bin/sh整个shell命令的入口

unix里的Bourne shell

linux的Bourne  Again shell(Bash)

dash、bash都是shell工具

centos7默认的shell是bash

ls -l /bin/ |grep sh

每一行显示详细信息，有关sh

man帮助命令manual手册

空格是翻页，f是下翻页，b是上翻页，q退出

cd是内置命令 exit，是基础功能的命令

help获得内置的命令帮助信息

type看命令是内置还是外部命令。

history是命令历史命令

man -f 内置命令

P，Posix标准

man man查看man

ls - -help外部命令

shell快捷键

* ctrl+c终止
* ctrl+l，clear清屏

* reset重置
* tab快速补全

pwd打印工作目录绝对路径,内置命令

cd切换当前路径

cd ../返回当前目录的上一层

cd +名字

cd - 上一次所在的位置

cd 回到用户主文件夹

su 切换用户

ls列举出内容

ls -a所有内容显示（..上级菜单，.当前目录，.开头，隐藏的文件，.bahsrc当前用户的重要的配置文件（环境变量、别名））

ls -l类型权限等信息显示出来，开头d表示文件夹，-表示一般的文件

ll是ls -l的别名

ls -al隐藏文件详细信息也显示

mkdir a相对目录

mkdir /a根目录

ls /显示根目录

mkdir d d/e d/e/f

mkdir d c

mkdir -p d/g/f如果父目录不存在，也创建出来

rmdir d/r/f d/r d/

rmdir -p g/h/i

touch创建新文件

cp -r source dest

\cp不提示直接覆盖

\表示直接使用Linux的原生命令

cp 是cp -i的别名

alias查看别名

rm 默认删除文件的命令

rmdir删除文件夹或者rm -rf a删库跑路rm -rf /*

rm -f ./*删除当前目录的所有

mv移动或重命名或移动重命名

cat查看文件内容 cat -n显示行号

more按页显示

less分屏显示文本内容，按=显示信息，/向下搜索关键字

echo输出内容到控制台

echo +内容

echo +“内容”

echo -e “hello\nworld”支持转义字符

   >输出重定向

ll >info

cat info

echo -e “hello\nworld” >>info追加

echo $显示系统环境变量

head显示文件头部内容

tail输出文件尾部内容

tail -f 文件 实时追踪文档的所有更新

ctrl+s暂停 ctrl+q继续

ls -i info显示出索引号index，vim修改后索引号变化

ln软链接/符号链接，相当于快捷方式

ls -s 原文件/目录 软链接

ln -s /root/info myinfo文件类型是l

pwd -P显示真正的物理路径

cd -P 软连接目录

ln 文件 链接 不加-s是硬链接

inode保存了文件的metadata的元信息，文件有一个链接数

history查看执行过的命令 history 10 

!1156

history -c清空命令历史

date +%s从UTC标准时间1971开始的秒数

date +%S秒

data -s “”设置时间

ntpdate联网同步时间

cal查看日历

cal -3前后共三个月

cal -m周一在前

cal 2022

cal -y本年的日历

linux多用户多任务分时操作系统，不同用户不同身份

useradd

useradd -g分组

普通用户在/home下

useradd -d 用户目录 用户名

password 用户名   设置密码

id tony查看用户的信息，组信息

cat /etc/passwd查看所有用户

su 用户名 切换用户switch user

who am i  whoami查看当前用户，有空格查看最原始的用户，没有空格查看当前会话的用户。

sudo给普通用户暂时的超级管理员成分

vim /etc/sudoers临时能获得管理权的用户名单

userdel 用户 删除用户

userdel -r 用户 删除用户及其主目录

cat /etc/group

新建用户默认在同名组

groupadd 组名

usermod -g 组名 用户

groupmod -n 组名 组名 修改组名

groupdel 组名 删除组

wheel是管理员组，%组名 设置全组管理员

ll ls -l显示权限、文件类型

创建者的权限user，组里的同组成员的权限group，其他的用户other

u,g,o

w不代表可以删除文件，删除文件需要有该文件所属目录的w权限。

ls -al

可执行文件绿色表示

<img src="F:/%E5%AD%A6%E4%B9%A0/Learn-notes/image/image-20220424103659904.png" alt="image-20220424103659904" style="zoom:33%;" />



其实就是二进制码的十进制表示

chmod 777

chmod 644

chmod -R 777文件夹里的文件也修改

chown 属主 文件

chgrp 属组 文件

```shell
groupadd bigdata
groupadd testing
useradd -g bigdata xiaoming#添加到已有组，默认是同用户名组
id xiaoming
su xiaoming
cd ~
vim important_code
exit#退回到root用户
su xiaoliang
cd ~
exit
chmod g+x xiaoming
usermod -g bigdata xiaolan
```

find 文件目录 -name info

find /root -name “.cfg”

ls -lh

find /root -size +10m

locate在数据库里查找

uodatedb更新数据库

locate tmp速度比较快

which ls定位命令

which locate

which which

whereis locate查找位置

grep过滤查找，在文件内容里查找

grep -n boot 文件

| 管道符，前面处理结果传递给后面的指令

wc word count 单词词频的统计 多少行、多少个单词

wc info

grep -n boot 文件 | wc

gzip 文件名称

gunzip 文件名

zip 文件名

unzip 文件名

 tar打包

tar -zcvf xxx.tar.gz 

tree ./

ls -lh

du磁盘占用情况

du -ah

df -h

free -h查看内存

lsblk

IDE硬盘——hda

SATA硬盘——sda

SCSI硬盘（服务器用）——sda

lsblk -f 还会有文件类型、UUID

mount挂载

umount卸载

fdisk

mkfs创建文件系统

ps显示当前用户和中断的进程

加-的选项是UNIX风格

不加-的选项是BSD风格

ps aux | less

VSZ资源占用的虚拟内存

RSS占用的物理内存

TTY当前使用的终端

图形化终端-桌面

STAT进程状态

kill PID

killall

























## Shell

Bash,Bourne Again Shell





# 数字IC

设计流程：

* 确定项目需求，指定芯片具体指标：物理指标，性能功耗，功能指标
* 系统级设计
* 前端设计
* 后端设计

基于Standcell的ASIC设计流程

RTL-逻辑综合-Netlist（门级网表）-PR（place and route）-版图layout（PD）

Design verification功能验证

有限状态机







### Verilog HDL

算法级-RTL级-门级-开关级

并行性

stdcell标准单元库

行为级描述-always、initial

数据流描述-assign

结构级描述

模块module、时延

always assign是可综合的语法

Z在真实芯片里有，X没有

always只能对reg赋值

wire用assign赋值

芯片内部一般不出现inout定义

R2N N2G

提供激励的信号reg，便于在initial/always中进行赋值。

收集激励的信号reg or wire

vsim &同时释放命令行



VCS

ctrl+p自动补全









## DC

逻辑综合：RTL代码转换成工艺相关的门级网表

命令行模式：dc_shell

图形化界面模式：design_vision

# 技能树

### 语言

#### 编程语言

* Verilog
* Vhdl
* spinalHDL 
* Chisel
* Myhdl
* system verilog
* C语言

#### 脚本语言

* Tcl
* Perl
* Python
* shell
* makefile

### 基础知识

* 数电模电、电路分析、数据结构、计算机体系结构
* AMBA总线 AXI/AHB/APB/CHI/ACE
* 高低速接口 
  * 低速接口 UART/SPI/I2C/MIPI
  * 高速接口 SATA/PCIE/DMA/DDR/USB/
* 低功耗
  * 动态/静态功耗
  * 常见低功耗方法：power gating/clock gating等

* 静态时序分析
  * 建立/保持时间
  * 亚稳态及处理
  * 时序约束
* 设计方法
  * 乒乓操作、流水线、串并操作、无毛刺切换、状态机
  * 跨时钟处理 快到慢、慢到快、异步FIFO（FIFO深度计算）

### 平台

* Linux、shell命令
* gvim、emac编辑器
* 版本管理工具SVN/Git/p4
* EDA工具
  * 仿真 NCVerilog/VCS/Modelsim/iVerilog
  * 波形工具 DVE/Verdi/gtkWave
  * 逻辑等效性检查工具 formality
  * 综合工具 dc
  * lint/cdc检查工具 spyglass
  * 后端 PT/IIC2/innovus
  * FPGA综合布线布局工具 synplify/vivado
  * VC_static_tools

### 岗位

* 前端设计
  * RTL IP设计 从算法协议到RTL coding的能力
  * Soc设计集成/验证 总线、功耗、系统架构能力
* 验证
  * FPGA原型验证 HAPS
  * UVM验证 SV/UVM主流验证方法学
  * EMU验证 zebu/帕拉丁
* 综合
* STA （Static Timing Analysis，静态时序分析）
* DFT（Design Fortest，可测性设计）
  * bist/Scan design/JTAG/ATPG
* 后端
  * 物理验证/布局布线/静态时序分析/等价性检查/功耗分析
  

# 会议记录
