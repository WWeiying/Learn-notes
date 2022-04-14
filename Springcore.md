工艺能力，design，功能部件，RiscV IMC

[Computer Arithmetic Algorithms and Hardware Implementations.pdf](F:\spring core\资料\Computer Arithmetic Algorithms and Hardware Implementations.pdf)

tcs

函数库，用汇编写的

汇编代码——机器代码——ISA

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
