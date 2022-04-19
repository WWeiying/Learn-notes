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

命令模式

* :w保存
* ：set nu 显示行号，:nonu不显示行号
* :q退出

编辑模式i（插入模式）：



























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
