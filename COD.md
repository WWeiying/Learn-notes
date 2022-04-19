现代计算机的特征是处理器的并行性和存储的层次性

程序的性能：

* 算法，影响指令数、CPI
* 编程语言，影响指令数、CPI
* 编译器，影响指令数、CPI
* 指令系统体系结构，影响指令数、CPI、时钟频率
* 处理器、存储系统
* I/O系统

系统软件：

* 操作系统
* 编译器

高级编程语言：

* Fortran，科学计算
* Cobol，商业数据操作
* Lisp，符号操作设计

计算机五大部件，四项任务：

* IO设备
  * 输入设备，输入数据
  * 输出设备，输出数据

* 存储器，存储数据
* 处理器（中央处理单元，central processor unit），处理数据
  * 数据通路（运算器）,datapath
  * 控制器,control

美国著名拆解网站：www.ifixit.com　www.chipworks.com

仓储级计算机，Warehouse Scale computer，WSC

软件即服务，Saas

指令，instruction

汇编器，assembler

汇编语言，assembly language

机器语言，machine language

内存，memory，由DRAM构成

动态随机访问存储器，DRAM

高速缓存，cache memory，由SRAM构成

硬件和底层软件之间的接口，称为计算机指令系统体系结构，instruction或体系结构，architecture

提供给应用程序员的基本指令系统和操作系统合称为应用二进制接口，Application Binary Interface，ABI

易失性存储，主存储

非易失性存储，辅助存储，个人移动设备一般由闪存构成，服务器中由磁盘构成。

以太网，局域网，Local Area Network，LAN

晶体管：一种受电流控制的简单开关

超大规模集成电路，Very Large-Scale Integrated Circuit，VLSI

1英寸=0.0254米=2.54厘米

硅锭、晶圆、晶片、芯片

良率，yield

响应时间/执行时间，execution

吞吐率/带宽，band-width

挂钟时间，wall clock time/响应时间，response time/运行时间，elapsed time

CPU执行时间，CPU execution time/CPU时间

* 用户CPU时间，user CPU time
* 系统CPU时间，system CPU time

系统性能，system performance：空载系统的响应时间

CPU性能，CPU performance：用户CPU时间

时钟周期数/滴答数/时钟滴答数/时钟数/周期数，clock cycle

指令平均时钟周期数clock cycle per instruction，CPI

IPC，instruction per clock cycle

降低CPI，提高IPC

经典CPU性能公式：CPU时间=指令数$\times$CPI$\times$时钟周期长度

CMOS，互补型金属氧化物半导体，主要的能耗来源是动态功耗

为什么时钟频率增长为1000倍，功耗只增长了30倍？

因为功率是电压平方的函数，功率和能耗能够通过降低电压来大幅减小。

程序员显示并行编程

廉价冗余磁盘阵列，RAID

工作负载，workload

基准评测程序，benchmark

SPEC，Seystem Performance Evaluation Cooperation

SPEC89

SPEC CPU2006

* 12个整数基准程序集CINT2006
* 17个浮点基准程序集CFP2006

CINT2006或CFP2006的综合评测结果取SPEC分值的几何平均值

SPEC功耗基准测试程序

Amdahl定律：针对特定情况的性能提升，受到被改进的特征所占比例的限制。

MIPS每秒百万条指令数

执行时间是唯一有效且不可推翻的性能度量指标。

指令、指令系统instruction set

指令系统：

* MIPS 
* RISC-V
* Intel X86

存储程序

RISC-V操作数:

* 32个寄存器，x0~x32
* $2^{61}$个存储字

存到存储器，取到寄存器

编译器将C语言转换成RISC-V汇编指令；每条RISC-V指令只执行一个操作。

Java字节码，这样的Java编译器称为（Just In Time，JIT）即时编译器。

双字：64位一组，对应于RISC-V体系结构中寄存器的大小；字：32位一组。

RISC-V：32个64位寄存器。数量过多的寄存器可能会增加时钟周期。

编译器的工作将程序变量与寄存器相关联，将数据结构分配到内存的相应位置。

数据结构（数组、结构体）可以保存在内存中，处理器只能在寄存器中保存少量数据。

RISC-V指令中的算数运算只作用于寄存器。内存和寄存器传输数据的指令，称为数据传输指令。

基址 偏移量

RISC-V按字节寻址。

对齐限制：字的起始地址是4的倍数，双字的起始地址是8的倍数，risc-v、Intelx86没有对齐限制，MIPS有限制。

寄存器换出：将不常用或稍后才使用的变量存放到内存的过程

最低有效位least significant bit

最高有效位most significant bit

原码sign and magnitude

等比级数求和公式$S_n=\frac{a_1(1-q^n)}{1-q}$

二进制补码two’s complement

二进制补码的最小负数（$100000…000,-2^{63}$）没有对应的正数，不平衡。

符号位sign bit

符号扩展

一个数与其反码的和是$111...1111_2,-1$，所以$\bar{x}+x=-1,\bar{x}+1=-x$。

偏移表示法biased notation，通过给数加上偏移量得到一个非负表示形式，00…000表示最小负数，111…11表示最大正数，10…000表示0。

 一条指令的每一段称为一个字段。

RISC v指令都是32位长，是双字的一半。

R型指令格式，用于寄存器：操作数都取自寄存器，有两个源操作数寄存器和一个目标寄存器操作数。

![image-20220415145041948](https://cdn.jsdelivr.net/gh/WWeiying/Figurebed/blog-images/2022/04/15/00750202bee5c3d68740de86f8cc72de-image-20220415145041948-cfd818.png)

Risc-v字段：

* opcode操作码，指令的基本操作
* rd，目的操作数寄存器
* funct3，另外的操作码字段
* rs1，第一个源操作数寄存器
* rs2，第二个源操作数寄存器
* funct7，另外的操作码字段

I型指令格式，用于带常数的算术指令及加载指令。有一个操作数是常量，用一个12位的immediate字段替换了一个源操作数寄存器，有一个源操作数寄存器、一个目标操作数寄存器、一个12位的immediate字段。

![image-20220416110141164](https://cdn.jsdelivr.net/gh/WWeiying/Figurebed/blog-images/2022/04/16/55325803a29c372b783427daba5528a4-image-20220416110141164-a6ddd4.png)

* immediate字段，补码值表示$-2^{11}\sim  2^{11}-1$的常数，也可表示基地址字节偏移量，rs1基地址寄存器。

S型指令格式，有两个源操作数寄存器和一个12位的immediate字段，但没有目标操作数寄存器。

![image-20220416111626367](https://cdn.jsdelivr.net/gh/WWeiying/Figurebed/blog-images/2022/04/16/708f014fe24fb02b8cf5210a912d204b-image-20220416111626367-57fcb9.png)

所有指令格式中rs1/rs2/opcode/funct3保持相同的位置和大小，保持相似的指令格式降低了硬件的复杂性。指令格式通过opcode字段区分。

将指令作为数据使程序以二进制数据文件的形式来发布。计算机可以继承已有的与指令系统体系结构兼容的软件，二进制兼容性导致行业围绕少数几个指令系统体系结构形成联盟。

左移逻辑立即数slli

右移逻辑立即数srli

算数右移srai

移位操作的变体sll/srl/sra从寄存器中取出移位的位数，而不是立即数。

与AND

掩码：掩码隐藏了某些位，比如AND的源操作数某些位为0，则结果的对应位也为0。

或OR

按位取反NOT

异或XOR

实现NOT的一种方法是用XOR，其中一个操作数为全1。非等价于异或11…111

立即数与andi

立即数或ori

立即数异或xori

条件分支指令：

* beq 相等则分支
* bne 不等则分支

无条件分支，遇到该指令，程序必须分支，表达无条件分支的一种方法是使用条件始终为真的条件分支。

数组元素地址：基地址寄存器，偏移量左移3（相当于乘以8）

无符号整数最高有效位为1表示大于任何最高有效位为0的数，有符号整数最高有效位为1表示大于任何最高有效位为0的数。

小于则分支blt

无符号的小于则分支bltu

大于等于分支bge

无符号的大于等于则分支指令bgeu

MIPS：根据比较结果设置寄存器，然后使用beq或bne指令根据该临时寄存器的值进行分支判断。

ARM：设置额外的位记录指令执行期间发生的情况，称为条件代码或标志位。

有符号数的边界检查简便方式$0\le x<y$：将有符号数当作无符号数比较$x<y$检测x是否小于y 时，也检测x 是否为负数。

实现case/switch：

* switch语句转换成if-then-else语句；
* 编码形成指令序列的地址表（分支地址表或分支表）。

寄存器是计算机中访问数据最快的地方。

跳转-链接指令jal

返回地址、调用者、被调用者

程序计数器program counter，PC/指令地址寄存器：保存当前执行指令的地址的寄存器。

栈：一种被组织成后进先出队列并用于寄存器换出到存储器的数据结构。编译器需要使用多于8个参数寄存器，但使用之后要把寄存器恢复到原来的样子，所以在存储器中开辟了一部分空间称为栈，保存寄存器换出的值。

栈指针：指示栈中最新分配的地址的值，指示下一个过程应该被换出寄存器的位置和寄存器旧值的存放位置。栈指针是寄存器x2/sp，stack pointer。

压栈：向栈中添加元素

弹栈：从栈中移除元素

栈按照从高到低的地址顺序增长，减栈指针将值压栈，增加栈指针弹栈。

参数寄存器：x10~x17

返回地址寄存器：x1

RISC-V将19个寄存器分为：

* 临时寄存器，x5~x7, x28~x31
* 保存寄存器，saved register，旧值必须保存并恢复

减少了不必要的寄存器换出。

叶子leaf过程：不调用其他过程的过程。

C变量指一个存储位置，其解释取决于：

* 类型type，整型、字符型……
* 存储方式storage class，动态存储automatic、静态存储static

静态变量：所有过程之外声明的变量以及关键字static声明的所有变量。

全局指针：指向静态数据区的保存寄存器，寄存器x3，global pointer/gp

有些方案也保存栈，确保调用者弹栈时取回和压栈时相同的数据。

过程帧/活动记录：栈中包含过程保存的寄存器和局部变量的段。

帧指针fp：指向给定过程的局部变量和保存的寄存器地址的值。

帧指针在过程中为局部变量引用提供一个稳定的基址寄存器，通过维护稳定的sp减少对fp的引用。

存放随着生命周期增长或者缩短的动态数据结构（数组和链表）的段称为堆heap，在内存中。

栈和堆相向而长，此消彼长，高效使用内存。

动态数据，由C中的malloc和Java中的new分配，称为在堆的区域中向栈的方向增长。

C语言通过显示函数调用来分配和释放堆上的空间。C程序控制内存分配。忘记释放空间会导致内存泄漏，最终内存耗尽，操作系统崩溃。过早释放空间导致悬空指针。Java使用自动内存分配和垃圾回收机制。

* malloc()在堆上分配空间并返回指针；
* free()释放指针指向的堆空间。

一些递归可以用迭代实现，迭代消除了与递归相关的堆栈开销提高性能。

字符串是字节数组而不是双字。绝大多数计算机使用字节来表示字符。

在C语言中字符串复制通常使用指针而不是数组，避免i变量的寄存器的保存和恢复。

双字：8个字节

字：4个字节

半字：2个字节

RISC-V指令是字节地址。

数据竞争data race

汇编语言程序assembly language program：一种能被翻译成二进制机器语言的符号语言。

加载器：将目标程序放在内存中准备执行的系统程序。

动态链接库dynamically linked libraries，DLL：在执行期间链接到程序的库例程。

Java字节码指令系统

Java虚拟机JVM：解释Java字节码的程序。

JIT即时编译器

指针加一，将指针移动到其声明大小的下一个顺序对象。

访问内存的唯一方法是ld sd指令

GPR，general-purpose register，通用寄存器

RISC-V指令系统体系结构分为基本ISA（I）以及五个标准扩展M、A、F、D、C。RISC-V的基本体系结构及其扩展共有184条指令以及13条系统指令。

计算机体系结构=指令系统体系结构（ISA，instruction set architecture）+微体系结构





