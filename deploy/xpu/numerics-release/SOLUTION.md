# XPU P800 FP32／BF16 数值问题完整解决方案与证明资料

交付日期：2026-10-30。本文按用户确认的“以解决问题和回归闭环为主线”整理；FP32不再以查明上游内部最小修复提交作为验收门槛。

## 一、结论与修复组成

| 问题 | 表现与已知原因 | 正式解决方式 | 不能扩大的结论 |
|---|---|---|---|
| FP32 64³ / 256³ tile 非确定性 | 历史SDNN路径随机错值；补零/搬运/调度链存在版本差异，但内部最小根因未证明 | 升级冻结main并完整重建匹配原生扩展和Python后端 | 不称为本项目新设计的FP32算法/同步Pass，不保证任意后续main |
| BF16 FP32→BF16 | 默认RTNE表现为截断；转换在Legalize边界融合进DMA；显式RTZ另有低payload NaN变Inf | arch3 SDNN限定的PreserveBF16Rounding编译补偿Pass：RTNE预舍入、RTZ有限值预截断并保留NaN类别 | 厂商内部DMA实现/硬件模式没有源码证明；只描述实际IR边界和实测语义 |
| rank1取模读取 | 历史Capture/Repair缺少实际构建/绑定/Pipeline接入导致回绕合同丢失 | 完整接入CaptureRank1Wrap与RepairRank1Wrap | 仅覆盖识别到的正周期、rank1、前缀mask等合同 |
| FlagGems BLAS调用合同 | BMM/out假定连续stride、部分转置ADDMM进入不支持的复制路径 | 旧04/05 block-pointer补丁＋独立07 stride补丁 | 算子调用修复，不称为BF16编译Pass |

历史小形状make_llir abort、动态形状/类型合同错误已有旧兼容补丁和后续main环境对照；当前交付采用新main完整编译链，不再把旧Python补丁强套新libtriton。

## 二、固定代码与运行环境

| 项目 | 固定值 |
|---|---|
| main提交 | `84c3ce789b8eea0884d399a24697eac0ba873351` |
| 历史修复分支合并main后基线 | `e651adcefc9482a622848731cc670e2894affe60` |
| 本轮修复代码提交 | **`5b175f6ab17a72a8ed583fc12db4b81169ef587d`** |
| 分支 | `fix/xpu-sdnn-legacy-lowering-20261019` |
| FlagGems原源码 | `73c5aff1e304c293ab525ecb03e9449644496fbb`＋交付04/05/07补丁 |
| 标准镜像本地tag | `flagtree-xpu3.6-py310-torch2.9.0-flaggems-main-dev:202608` |
| 标准镜像不可变ID | `sha256:cd53efa40eb7ddc49c2ad76a9bfbd252572c5fb01bd10d02cffbf667c34a1975` |
| 芯片/驱动/运行库 | P800 OAM；Driver5.0.21.47；XPU-RT5.0.21 |
| Torch/Triton/FlagTree | 2.9.0+cu129 / 3.6.0 / 0.7.0+xpu |
| SDK对象包 | v0.3.6.9.0，内部provenance提交8e6c579b0943a909b0910380a5076407b9fc8b2f |
| 构建依赖 | LLVM22.1.8、pybind11 3.0.1、已归档LLVM19工具；详见environment清单 |

镜像预装FlagGems distribution metadata的`g4fa5805b8`不等于加载源码HEAD，不能混写。
Torch CUDA兼容接口的GPU/arch3不是NVIDIA硬件结论；PCI与XPU-SMI确认芯片。
修复代码commit的12个文件与已验证wheel构建输入逐项核对，记录规范LF和原始CRLF的区别。
wheel构建在提交之前，不能声称wheel内部版本metadata自动携带该新提交。

关键二进制：

```text
wheel: flagtree-0.7.0+xpu-cp310-cp310-linux_x86_64.whl
SHA256: 41b0217ff684909ef105ddff02daac6281b2f07b77c2e6a4b128ada3fccc178f
libtriton.so SHA256: f0732bda4c19a3b5e586d24cc49870620192e2320cdab7b0d611fee19ab443ef
旧libtriton.so SHA256: 28942c20acad0edde742553da22936974602cabc26b132ba23be30f6bbe87f5a
```

## 三、完整历史闭环证明

服务器实验根：`/data2/chenzizhong/xpu-sdnn-numerics-main-20261028/`，历史容器内挂载为`/research`。
Windows证据根：`D:\flagtree\verification\xpu-sdnn-numerics-main-20261028\`。
下列路径均相对于实验根，**不仅有结果JSON，还保留原始.pt、日志、IR、缓存、命令及实际动态库hash**。

| 验收项 | 修复前→修复后→撤销/退回 | 权威证据 |
|---|---|---|
| FP32版本升级闭环 | 3seed组失败→3seed组通过→3seed组失败；每组30次，同卡同输入同kernel | `results/continue-20261029/fp32-upgrade-{baseline-old,upgraded-main,rollback-old}/`；`scripts/fp32_upgrade_same_device.sh` |
| FP32稳定性 | 3seed×3组冷/热新进程×100次=1800次；逐位稳定；最大误差1.4176925844822108e-05 | `results/continue-20261029/fp32-stability-final-v3/`，`scripts/stress_fp32.py` |
| FP32扩展 | 32/63/65/128³×tile32/64/128/256×连续/转置=32项通过 | `results/continue-20261029/fp32-expanded-v3/` |
| BF16默认RTNE | 64个定向值16错→0错→16错 | `bf16-native-baseline`、`cast-wheel-v3`、`final-v3-rollback-rtne`（位于continue-20261029） |
| BF16三种舍入 | 每模式327680项，V2默认/RTNE/RTZ=0/0/8错→V3=0/0/0→退V2=0/0/8 | `results/continue-20261029/bf16-rtz-{baseline-v2,fixed-v3,rollback-v2}/` |
| stride独立闭环 | 转置B的BMM_OUT，3dtype：3失败→0失败→3失败，编译器不变 | `results/continue-20261029/stride-{baseline,fixed,rollback}/` |
| 取模开关闭环 | PERIOD7/17：失败→通过→失败；32：始终通过；源与保护区不变 | `results/continue-20261029/modulo-pair-controls/`及`logs/modulo-debug-v3.log` |
| BLAS集成 | 4shape×3dtype×MM/BMM/直接ADDMM及out=72/72；A/B/AB转置54/54 | `blas-final-v3-r2-*`及`blas-stride-v3-layout-*`（continue-20261029） |
| pytest | BLAS174通过、3跳过；IR＋取模29通过；BF16设备6通过 | `logs/flaggems-blas-pytest-final-v3-r2.log`、`wheel-v3-pytest.log`、`bf16-device-normal-pytest-v3.log` |
| 来源/环境 | 源码、工具、SDK、动态映射、输入、原容器生命周期不变 | `environment/final-{runtime,static}-provenance-v3.json`与原/后快照 |

浮点验收：FP32原反例最大绝对误差≤1e-3、无非有限值、同输入逐位稳定；BF16定向转换有限值按独立RTNE/RTZ参考逐位一致，NaN检查类别、不要求payload一致。BLAS不放宽原FlagGems dtype/reduce_dim判据。

4号卡追加证据：`results/fp32-fill-scheduler-20261029/`，升级版90/90通过；旧版简单补零提升仍29/30超差，撤销后30/30超差。旧条件fill外围确有sync，故未采用“完全缺同步边”的未经证明解释。
结构化输入追加证据：`results/fp32-structured-inputs-20261029/`，旧版120次中107次超差，新版120次全精确正确。

### 命令与退出码（原始记录可重查）

```sh
# 原始版本升级/退回闭环脚本；默认写入历史目录，重放需改为新的目录。
sh /research/scripts/fp32_upgrade_same_device.sh
# collector exit均0，独立FP32判定failed=3/0/3，numeric exit=1/0/1

# 位级BF16三路径
sh /research/scripts/bf16_v3_closure.sh
# 三阶段转换测试exit=1/0/1；各模式mismatches见上表
```

旧版随机错误不是每次均错，不能把“3个seed组失败”改写成“90次全部失败”。旧64项转换、全面边界集、BLAS误差门限亦不混为一种标准。

## 四、两种可复现环境交付

### A. 标准镜像内注入代码补丁及对应构建产物

交付目录包含：FlagTree源码基线tar、修复后tar、增量git bundle、分组源码patch、FlagGems patch，以及完整重建的匹配wheel。

```sh
# 在独立标准镜像容器中，挂载交付目录到/release、新空工作区到/research
sh /release/apply-source.sh /tmp/source-fixed
sh /release/install.sh
. /opt/xpu-fix/env.sh
/opt/xpu-fix/venv/bin/python /release/replay.py --full
```

源码注入验证：原始5文件规范化LF且hash匹配→完整DIFF应用→12文件hash匹配→另一副本逆向撤销→5原文件恢复、7新增文件撤销；修改副本保留。
安装验证：校验全部payload、wheel/core hash及FlagGems源码hash，只写`/opt/xpu-fix`；厂商Torch与旧Triton/FlagGems原安装保持不变。
**新Pass涉及C++原生扩展，单复制compiler.py不构成修复。**交付wheel是配套源码已完成原生重建的产物。若要求再次从源码构建，需同时提供固定LLVM/SDNN/工具缓存及历史构建脚本，详见附录；不以运行镜像打包过程冒充源码重建。

### B. Dockerfile＋Compose

```sh
# Linux XPU主机，位于完整交付目录
export XPU_DEVICE=/dev/xpu4
export REPLAY_DIR=/data2/chenzizhong/new-xpu-replay-20261030
sh ./build.sh
docker compose -p xpu-numerics-delivery up -d fixed
docker compose -p xpu-numerics-delivery exec -T fixed /opt/xpu-fix/venv/bin/python /release/replay.py --full
```

Dockerfile使用已验证wheel构建运行镜像。Compose保留默认entrypoint，只映射选定设备及xpuctrl；宿主SDK只读挂载，不修改共享容器。
`build.sh`在前后校验基础镜像完整ID；本地tag用于避免伪RepoDigest触发外网元数据查询。基础镜像和驱动为外部前提，不保证第三方机器自动有权限下载项目镜像。
镜像内不含宿主内核驱动。XPU_DEVICE是设备节点，不应按任意机器的SMI序号推断。

新`replay.py`独立进程执行baseline/fixed/rollback，保存每条命令、collector exit、numeric exit、日志、原始数据，然后执行35项编译/设备pytest、72项BLAS及54项转置（--full）。1800稳定性与174pytest保留历史完整证据；不把新重放的较小重复数冒充再次完成全部历史验收。

## 五、回滚、边界及证据包

- 运行回滚：`sh /release/ROLLBACK.sh <script.py> <args...>`，新进程清除注入路径并使用标准镜像Python；不卸载或覆盖厂商环境。
- 源码回滚历史四产物：`patches/final-v3-20261029/{MODIFIED_FILE.cpp,DIFF_FILE.patch,VERIFICATION.txt,ROLLBACK.sh}`。
- `VERIFICATION.txt`包含baseline/modified/rollback具体命令、输入、原始输出及退出码；早期脚本绑定原实验路径，便携交付不要将其误称任意路径安装器。
- SDK内部源码项目方已确认没有；FP32仅以版本升级解决的事实归档，不虚构内部修复原因。
- 已知StripAllOps对conv名称路径的清空负例另行记录，未包含在修复范围。
- 所有性能仅作共享卡观测，无新算法贡献、无A10080%性能验收结论。
- 不自动push；修复源码commit和交付配置commit分开记录。运行镜像ID和交付脚本验证终态另见`DELIVERY_STATUS.json`。

历史紧凑证据包：`numerics-v3-delivery-20261029.tar.gz`，SHA256 `9fe2a63c471dc1fd8446e59c7844493868bd6ad8a23897f7e71bd60974db756e`；Windows及服务器均有。此包不含3GB wheel；wheel保留服务器交付payload中并提供校验。
4号卡补测包：`fp32-card4-followup-20261029.tar.gz`，SHA256 `594f5ae84e817f10585c39bf329dccc3aa6a0287c5e0655ea1b2978d2b06935f`。

### 附录：完整源码再构建资源

服务器仍保留：`source/main`、`dependency-cache`（约29GB）、`build-deps/pybind11-3.0.1`、`downloads/xtdk-llvm19.tar.gz`、`scripts/build_main.sh`、`scripts/package_wheel_v3.sh`、`environment/build-dependency-override.diff`及构建日志。
LLVM19恢复包SHA256：`17e3eb76022c590f17f2692c00687a4794c75882c51aab10e9b4ccfb117b4768`。原下载位置曾变包，不保证未归档下载源可重现；本次优先交付可校验的wheel运行路径。
完整源码快照未夹带构建目录或SDK；仅拿源码tar、不拿固定依赖，不足以保证离线原生重建。

本次实际查阅规范：`D:\flagtree\AGENTS.md`。证据包括源码diff、source_hashes、环境provenance、原始位数据/数值报告、回滚记录及构建/重放日志。
## 2026-10-30 重放环境补充
独立BF16转换使用 XMLIR_MATMUL_FAST_MODE=0；矩阵乘法/BLAS沿用=1，两者不能混用。新环境实测=0的转换6/6通过，=1的转换6/6失败（输出存在哨兵未写区域），=1大向量转换不属于已验收配置。历史版本已知make_llir问题通过hash锁定旧兼容profile消除后，再要求取得BF16数值错误JSON；仅返回非零/abort不算数值复现。初次交付重放失败日志保留，不混入成功证据。
