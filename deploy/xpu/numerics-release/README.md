# P800 数值修复交付入口

固定编译代码提交：`5b175f6ab17a72a8ed583fc12db4b81169ef587d`。
该提交12个文件的规范LF内容与已验证V3 wheel构建源码一致；wheel在提交前构建，因此不是声称wheel内部metadata含该新提交。
源main为 `84c3ce789b8eea0884d399a24697eac0ba873351`；其后的main未纳入本次保证。

## payload（交付目录提供，不提交3GB wheel）

- `payload/flagtree-0.7.0+xpu-cp310-cp310-linux_x86_64.whl`
- `payload/patches/`：FlagTree源码分组补丁与FlagGems 04/05/07补丁；前者基于合并提交，不可直接把新Python后端复制进旧二进制。
- `payload/source-fixed.tar`：固定提交的完整源码快照；`payload/source-base.tar`及`source-commits.bundle`支持独立应用和追溯。
- `payload/tests/`、`scripts/`、`kernels/`、`legacy-compat/`：重放脚本及原反例。
- `payload/flaggems_hashes.json`、`payload.sha256`、`release.json`：输入校验。
- 历史原始闭环证据包及环境清单参见总报告。所有密码/令牌均不打包。

## 路径一：标准镜像内注入

在锁定标准镜像的**独立容器**内挂载交付目录到 `/release`，新的空工作目录到 `/research`，仅映射选定的健康XPU及xpuctrl；保留镜像默认entrypoint。

```sh
sh /release/install.sh
. /opt/xpu-fix/env.sh
/opt/xpu-fix/venv/bin/python /release/replay.py --full
```

安装器校验wheel及源输入hash、FlagGems提交，向独立prefix安装，不替换厂商Torch，不覆盖原Triton/FlagGems。
FlagTree源码补丁需要原生重建，**不能只打compiler.py**；本路径使用与补丁源码一致、已经完整重建的wheel注入。
如需源码级构建，应使用配套的原始构建脚本和固定依赖缓存（LLVM22.1.8、SDNN v0.3.6.9.0、pybind11 3.0.1、归档LLVM19工具）。不能用任意LLVM/旧SDNN替代。

## 路径二：Dockerfile + Compose

在Linux XPU主机上运行，先将基础镜像准备到本地，build.sh校验完整image ID。它是项目镜像，不保证公共registry匿名可拉取。直接使用项目RepoDigest作为FROM触发了公共registry查询并超时，因此采用本地tag加不可变image ID校验；构建日志仍会记录解析的摘要。

```sh
cp .env.example .env
# 设置新的REPLAY_DIR和健康XPU_DEVICE（默认/dev/xpu4，不等于任意主机SMI4）
docker compose -p xpu-numerics-delivery config
sh ./build.sh
docker compose -p xpu-numerics-delivery up -d fixed
docker compose -p xpu-numerics-delivery exec -T fixed /opt/xpu-fix/venv/bin/python /release/replay.py --full
```

build.sh先以Dockerfile.runtime从固定标准镜像安装wheel和FlagGems补丁，再以Dockerfile加入重放脚本/文档层。Dockerfile构建的是完整运行镜像，复用已经验证的预编译wheel，**不是声称重新从C++源码构建**。构建不联网升级核心依赖。
XPU宿主驱动5.0.21.47/XPU-RT5.0.21及`/usr/local/xpu`是外部前提，Docker镜像不包含宿主内核驱动。

`replay.py`独立执行旧版失败→新版本通过→旧版失败，分别记录collector和数值判定；随后35项编译/设备回归与BLAS路径。
旧版偶发正确，必须用足够重复数（默认3seed×30次）；不以一次成功否定随机问题。
`--full`加入4shape×3dtype×6BLAS和54项转置；1800次稳定性及174项pytest原始验收已保存在证据包，不将简版重放冒充全量。

## 回滚与边界

`sh /release/ROLLBACK.sh /research/scripts/legacy_fp32_control.py --out /research/results/manual-rollback --dtypes float32 --seeds 20261028 --repeat 30`
新进程使用原安装；原版本错误恢复是因果对照，不用于部署。
历史源码回滚脚本保留原实验路径。便携源码应用使用 `sh /release/apply-source.sh /tmp/new-source`；已在另一副本逆向应用DIFF，核对5个原文件恢复、7个新增文件撤销。应用前只将5个原文件规范化LF并校验hash，避免main中的CRLF造成补丁上下文不匹配，不忽略hash。

BF16补偿限定P800 arch3 SDNN的标量/静态tensor F32→BF16；不声称其他dtype、动态tensor、其他架构完整支持。
已知SDK名称含conv的StripAllOps清空路径不在本修复范围。共享卡数据不构成性能排名或A10080%指标结论。

规范：`D:\flagtree\AGENTS.md`。无需自动push；交付源码commit与部署配置commit分别记录。

## 2026-10-30 重放环境补充
独立BF16转换使用 XMLIR_MATMUL_FAST_MODE=0；矩阵乘法/BLAS沿用=1，两者不能混用。新环境实测=0的转换6/6通过，=1的转换6/6失败（输出存在哨兵未写区域），=1大向量转换不属于已验收配置。历史版本已知make_llir问题通过hash锁定旧兼容profile消除后，再要求取得BF16数值错误JSON；仅返回非零/abort不算数值复现。初次交付重放失败日志保留，不混入成功证据。
