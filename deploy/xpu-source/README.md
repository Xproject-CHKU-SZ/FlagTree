# P800 从源码构建与最小验收

本目录替代旧 `deploy/xpu/numerics-release` 的wheel部署入口。交付只包含源码/配置/脚本，不含wheel、模型、日志或镜像归档。

## 固定版本
- 仓库：`https://github.com/Xproject-CHKU-SZ/FlagTree.git`
- 分支：`fix/xpu-sdnn-legacy-lowering-20261019`
- 已验证修复代码commit：`5b175f6ab17a72a8ed583fc12db4b81169ef587d`。
- 所含main基线：`84c3ce789b8eea0884d399a24697eac0ba873351`。
- 此目录属于后续部署变更，使用包含此目录的固定交付提交；构建脚本记录实际HEAD，使用git archive导出源码，拒绝已跟踪源码脏改。

## 必需前提
Linux x86_64、健康P800、Docker/Compose v2、构建网络、足够内存磁盘。已验证宿主Driver5.0.21.47/XPU-RT5.0.21；映射所选`/dev/xpuN`及`/dev/xpuctrl`，只读挂载`/usr/local/xpu`。节点号不必等于SMI序号。

基础镜像：`flagtree-xpu3.6-py310-torch2.9.0-flaggems-main-dev:202608`，ID必须为`sha256:cd53efa40eb7ddc49c2ad76a9bfbd252572c5fb01bd10d02cffbf667c34a1975`。请项目方提供该标准镜像；镜像包含厂商Torch和工具，不以其预装FlagTree作为修复产物。

**另需固定厂商LLVM19工具包**（不是FlagTree wheel）：`xtdk-llvm19.tar.gz`，SHA256 `17e3eb76022c590f17f2692c00687a4794c75882c51aab10e9b4ccfb117b4768`。原`trust/latest`地址曾变包，不能保证仅clone后冷下载该URL可复现；请项目方提供这个依赖或稳定下载地址。本机原件位于`/data2/chenzizhong/xpu-sdnn-numerics-main-20261028/downloads/xtdk-llvm19.tar.gz`，其他服务器需自行准备并设置路径，不依赖这个本机绝对路径。

其余LLVM22.1.8、SDNN v0.3.6.9.0、运行库等由仓库setup中固定URL/版本自动下载；pybind11固定3.0.1。本方案编译FlagTree源码/原生扩展；厂商SDNN只提供预编译SDK对象，**不声称从其未公开源码构建**。外网资源/SDK缺失应报构建失败，不回退到预装FlagTree。

## 操作
```sh
git clone https://github.com/Xproject-CHKU-SZ/FlagTree.git
cd FlagTree
git checkout fix/xpu-sdnn-legacy-lowering-20261019
# 正式交付请checkout随包说明提供的完整交付SHA，避免分支漂移。
cd deploy/xpu-source
cp .env.example .env
# 修改XPU_DEVICE、RESULTS_DIR（新绝对路径）、XPU_LLVM19_ARCHIVE
sh build.sh
docker compose --env-file .env up -d verify
docker compose --env-file .env logs -f verify
docker compose --env-file .env wait verify
```
成功：`SOURCE_ACCEPTANCE_PASSED FP32=90/90 COMPILER_DEVICE_TESTS=35`；容器退出0，结果目录`result.json`为passed，`tests.log`为35 passed。失败/超时/异常非零，保留日志，不删除已有结果。

验收：64³、256³ tile的FP32边界加载，3seed×30次，有限值、同输入逐位稳定、最大绝对误差≤1e-3；原有17项舍入IR＋12项取模＋6项BF16设备回归。BF16独立转换FAST_MODE=0；FAST_MODE=1的大向量独立转换仍是已知边界。这里是最小修复验收，不替代此前72项BLAS/54项转置或1800次稳定性记录。

脚本另在独立进程关闭/启用/关闭舍入Pass，定向64项BF16输入的错误数必须为64→0→64。该对照验证补偿Pass的因果作用，不冒充完整历史镜像复现。FP32明确关闭TF32，并沿用FAST_MODE=1；BF16测试使用0，均由脚本设置。

2026-11-03已在新的源码目录及独立venv完成原生源码编译（使用固定SDK缓存，不使用旧FlagTree wheel），新libtriton路径为`/opt/source-env/lib/python3.10/site-packages/triton/_C/libtriton.so`；上述BF16闭环、FP32 90次及35项回归通过。Dockerfile/Compose已完成语法与配置检查；本次尚未验证所有SDK公网URL的无缓存冷下载，也未在第二台XPU服务器实际运行。

FP32按升级main基线解决，不虚构最小内部修复；BF16为arch3 SDNN限定的编译层舍入补偿；取模为Capture/Repair接入。没有性能或新算法验收指标。
`build.log`为本次源码编译日志，`image.json`及`result.json`记录镜像、源码commit及实际新构建libtriton hash。源码构建后的hash不要求等于旧wheel hash。

规范：`D:\flagtree\AGENTS.md`。
