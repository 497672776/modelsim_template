
# 关于本参考设计

本文提供了一个简单电路的脚本仿真的参考设计。
用于示范如何使用ModelSim命令行的方式来进行仿真。


# 目录和代码文件

* 目录 ./hdlsrc ，HDL源代码
    + 文件 ./hdlsrc/dut.v   ，测试平台代码，生成激励信号，例化待测模块
    + 文件 ./hdlsrc/testbench.v  ， 待测模块，内部逻辑为加法器

* 目录 ./modelsim ， ModelSim工程目录
    + 文件 ./modelsim/compile.f ，HDL代码文件 列表文件 
    + 文件 ./modelsim/sim_chongxinrun.do， 退出仿真 脚本
    + 文件 ./modelsim/sim_run.do，  运行仿真 脚本


* 请仿照参考代码的样式， 编写你自己的脚本化测试项目
* 可以重用提供的参考代码， 也可以自行编写
* 观察你的待测模块的输入和输出数据， 确认待测模块正确工作
* 思考一下， 如何做到不用肉眼观察验证结果， 而是自动化测试和验证

