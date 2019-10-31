#  LLDB

## 摘要

> LLDB 是一个有着 REPL 的特性和 C++,Python插件的开源调试器。LLDB绑定在Xcode内部，存在于主窗口底部的控制台中。 调试器允许你在程序运行的特定时暂停它，你可以查看变量的值，执行自定的指令，并且按照你所认为合适的步骤来操作程序的进展。

## Execution Commands (执行命令)

1. process launch:运行当前进程
2. thread step-in:当前线程下一步（遇到子函数就进入并且继续单步执行）
3. thread step-over: 当前线程下一步（以一个完整子函数为一步)
4. thread step-inst:当前线程下一步（以一个汇编函数为一步)
5. thread step-inst-over:当前线程下一步（遇到汇编函数就进入并且继续单步执行汇编指令
6. thread step-out:退出当前帧栈
7. thread return NO :立即从当前选定的帧返回，返回值可选

## Breakpoint Commands (断点命令)

1. breakpoint list：查看所有断点列表
2. breakpoint delete：删除所有断点（可跟组号删除指定组）
3. breakpoint disable/enable：禁用 启用指定断点
4. breakpoint set -r some：遍历整个项目中包含 some 这个字符的所有方法并设置断点
5. breakpoint command add：给断点添加命令
6. breakpoint command list：获取增加的断点命令列表
7. breakpoint command delete：删除所有增加的断点命令
8. breakpoint disable/enable ：让断点失效/生效
    
## Watchpoint Commands (监视内存命令)

1. watchpoint set expression 0x10cc64d50：在内存中为地址为0x10cc64d50的对象设置内存断点
2. watchpoint set variable xxoo：为当前对象的变量 xxoo 设置内存断点
3. watchpoint list:列出所有watchpoint
4. watchpoint delete:删除所有watchpoint

## Examining Variables (检查变量)

1. frame variable:列出当前帧的所有变量
2. frame info:查看当前帧的信息
3. frame select:选择某个帧
4. target stop-hook add --one-liner "frame variable":让你在程序stop的时候执行frame variable命令
5. target stop-hook list：查看所有添加的stop-hook
6. target stop-hook delete：删除单个或者全部的stop-hook
7. target stop-hook disable/enable：让单个或者全部的stop-hook失效/生效

## Evaluating Expressions (计算表达式)

1. expression -- self.view:执行表达式
2. po self.view:打印对象
3. expression -- (void)[CATransaction flush]:刷新界面

## Examining Thread State (检查线程状态)

1. thread backtrace:当前线程回溯
2. thread jump: 直接让程序跳到某一行。由于ARC下编译器实际插入了不少retain，release命令。跳过一些代码不执行很可能会造成对象内存混乱发生crash。
3. thread list: 列出所有的线程
4. thread select: 选择某个线程
5. thread until: 传入一个line的参数，让程序执行到这行的时候暂停
6. thread info: 输出当前线程的信息
7. register read：显示当前线程的通用寄存器
8. register write rax 123：将一个新的十进制值“123”写入当前线程寄存器“rax”。
9. memory read --size 4 --format x --count 4 0xbffff3c0：从地址0xbffff3c0读取内存，并显示4个十六进制uint32_t值。

## Executable and Shared Library Query Commands (可执行和共享库查询命令)

1. image list：列出主要的可执行文件和所有依赖的共享库。
2. image lookup --address 0x1ec4：在可执行文件或任何共享库中查找原始地址信息
3. image lookup -v --address 0x1ec4：查找完整的源代码行信息。
4. image lookup --type NSString：根据名称查找对应（NSString）类型的信息。

## Miscellaneous (其他)

1. apropos keyword:根据某个关键字搜索命令
2. help list:获取所有命令列表

## 脚本

> LLDB启动的时候有一个会加载的文件~/.lldbinit,可以在这里面为命令设置别名,也可以运行你的.py后缀的脚本(command script ~/.nudge.py),当你在运行中或者设置了断点，由于其他原因进入调试模式，可以使用script进入Python编写模式:
>
(```)
    (lldb) script
    Python Interactive Interpreter. To exit, type 'quit()', 'exit()'.
    >>> do something
(```)

## 参考文档

1. [LLDB命令](https://lldb.llvm.org/use/map.html)
2. [LLDB源码](https://github.com/llvm/llvm-project.git)
3. [LLDB-Python-API](https://lldb.llvm.org/python_reference/index.html)
