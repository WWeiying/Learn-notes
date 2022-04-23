工艺能力，design，功能部件，RiscV IMC

[Computer Arithmetic Algorithms and Hardware Implementations.pdf](F:\spring core\资料\Computer Arithmetic Algorithms and Hardware Implementations.pdf)

tcs

函数库，用汇编写的

汇编代码——机器代码——ISA

https://github.com/openhwgroup

https://github.com/openhwgroup/cv32e40p

[OpenHW Group CV32E40P User Manual — CORE-V CV32E40P User Manual documentation](https://docs.openhwgroup.org/projects/cv32e40p-user-manual/)

## DC

逻辑综合：RTL代码转换成工艺相关的门级网表

命令行模式：dc_shell

图形化界面模式：design_vision

## Linux

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





























## Shell

Bash,Bourne Again Shell

## 技能树

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
