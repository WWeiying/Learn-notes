指令集架构ISA

增量ISA

二进制兼容性

基础指令集ISA：RV32I

1GHz=1/1ns($10^9$)

伪指令

RV32I指令格式：

R、I、S、B、U、J

算数指令`add`  `sub`

逻辑指令`and` `or` `xor`

移位指令`sll` `srl` `sra`

当小于时置位`slt` `sltu` `slti` `sltiu`

加载立即数到高位指令`lui`

向PC高位加上立即数指令`auipc`

加载指令`lw` `lb` `lbu` `lh` `lhu`

存储指令`sw` `sb` `sh`

条件分支指令 `beq` `bne` `bge` `blt` `bgeu` `bltu`

跳转并链接指令`jal` `jalr`

控制状态寄存器指令`csrrc` `csrrs` `csrrw` `csrrci` `csrrsi` `csrrwi`   `ecall` `ebreak`  `fence` `fence.i`

积的长度是乘数和被乘数长度的和，RV32M需要两条乘法指令得到一个64位的积。

几乎所有的处理器，乘法比移位和加法慢很多，除法比乘法慢很多。

IEEE 754-2008浮点标准

浮点算法舍入：舍入到最近的偶数RNE
