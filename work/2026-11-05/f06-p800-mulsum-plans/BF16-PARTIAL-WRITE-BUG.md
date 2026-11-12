# P800 bf16 逐元素算子“部分元素未写入”缺陷报告

## 一、结论（一句话）

**bf16 的 Inductor pointwise kernel 在 XBLOCK > 1024 时，store 只写出每 `16 × (XBLOCK/1024)` 个元素里的
前 16 个（bf16 下正好 32 字节），其余位置保持未初始化。** 因此输出只有 `1024/XBLOCK` 的比例是真的，
未写位置残留的旧内存经常正好是 `0x7F80`（bf16 的 +inf），校验时就表现为“散落的 inf / NaN”。

f32 / f16 在同样工况下 100% 正确；这不是显存容量、并发、或 bf16 算术的问题。

## 二、测试环境

| 项 | 值 |
|---|---|
| 设备 | 昆仑芯 P800，物理 7 号卡（单卡串行） |
| 运行时 | `flagtree-0.7.1a1+xpu3.6` + 自编译 core（含 `#1458` 两个 pass，sha256 `001cbc11…`） |
| Python | 3.10，实验目录内 conda 环境，统一由 `run_env.sh` 注入 |
| 图 | `torch.fx.symbolic_trace` 后的 `x * y`（`x:[2048,2048]`，`y:[2048]` 广播），经 `_resource_codegen.compile_region` 走原生 Inductor + `cluster` 资源 |
| 校验 | 输出与 torch 参考**逐元素按位相等**，统计正确元素数与正确位置的分布 |

对照组 f16/f32 使用同一脚本、同一形状、同一编译路径，仅改 dtype。

## 三、现象

| dtype | XBLOCK | 正确元素 / 总数 | 占比 | 非有限值 |
|---|---:|---:|---:|---:|
| bf16 | 1024 | 4,194,304 / 4,194,304 | 100% | 0 |
| bf16 | 2048 | 2,098,090 / 4,194,304 | ≈50% | 0 |
| bf16 | 3072 | 1,398,515 / 4,194,304 | ≈33.3% | 105 |
| bf16 | 4096 | 1,049,504 / 4,194,304 | 25% | 62,123 |
| f16 | 4096 | 4,194,304 / 4,194,304 | **100%** | 0 |

非有限值的数量每次运行会变（取决于未初始化内存里残留的字节），**正确率才是稳定判据**。

## 四、出错原理

### 4.1 写入是“16 个连续元素 + 一段空洞”的周期结构，不是前缀截断

逐元素比较后看正确位置（`1`=正确）：

```
XBLOCK=2048: 1111111111111111 0000000000000000 1111111111111111 ...   （16 写 / 16 空）
XBLOCK=4096: 1111111111111111 0000...(48 个 0) 1111111111111111 ...  （16 写 / 48 空）
XBLOCK=1024: 全部为 1                                               （无空洞）
```

- 每次写出的是 **16 个连续元素**（bf16 = 32 字节），正好是一个 32 B 的搬运/向量单位；
- 空洞长度随 XBLOCK 线性增长：周期 = `16 × (XBLOCK / 1024)` 个元素；
- 因此正确率 = `16 / (16 × XBLOCK/1024)` = `1024 / XBLOCK`。

### 4.2 为什么表现为 inf / NaN

Inductor 的输出缓冲是 `empty_strided_cuda(...)` 分配的**未初始化**内存，未被写入的位置保留
分配器里上一任使用者的残留字节。bf16 的 +inf 位型是 `0x7F80`（f32 的 `0x7F800000` 高 16 位），
在随机残留里命中率不低，所以数值校验看到的是散落的 `inf`；每次运行残留不同，数量也就不同。

f32 的 inf 位型 `0x7F800000`、f16 的 `0x7C00` 在残留里不容易命中，所以同样的“漏写”不会以 inf
的形式暴露——**必须用“正确率”而不是“非有限值”来判定**。

### 4.3 已排除的其它解释

| 猜测 | 证据 |
|---|---|
| 显存 / tile 容量限制 | f16 在 XBLOCK=16384（32 KB tile）100% 正确；f32 在 4096（16 KB）100% 正确 |
| 并发 / 核数 | warps 1/4/8/16 均复现 |
| bf16 算术或 cast 代码生成 | 把 Inductor 生成的核源码原样 dump 出来、单独加载运行，结果 100% 正确 |
| 网格（grid）与配置不匹配 | 正确元素是“16 写 / 空洞”的周期结构、均匀分布，不是“前缀已写、尾部未写” |
| `emulate_precision_casts` 引入的多余 cast | 开/关均复现（62,948 / 61,052） |
| coordinate-descent 调优过程 | 配置固定后单独复跑同样复现；它是“放大器”（倾向选大 XBLOCK），不是起因 |

### 4.4 触发条件

- dtype = bf16；
- 请求的 XBLOCK > 1024；
- 走 Inductor 的 pointwise 代码生成（graph-fusion 资源编译路径）。

## 五、最小复现

### 5.1 放置脚本

在 P800 实验机 `/data2/zhaoweiming/f06-mulsum-plans-20261105/` 下创建 `repro_bf16_partial.py`：

```python
"""P800 bf16 pointwise 漏写复现：统计正确率与写入的周期结构。"""
import copy, itertools, os, sys, time
BASE = '/data2/zhaoweiming/f06-mulsum-plans-20261105'
stamp = str(int(time.time()))
# 必须在 import torch 之前覆盖缓存目录，否则命中旧缓存、可能复现不出来
os.environ['TORCHINDUCTOR_CACHE_DIR'] = f'{BASE}/cache/repro{stamp}/ind'
os.environ['TRITON_CACHE_DIR'] = f'{BASE}/cache/repro{stamp}/triton'
sys.path.insert(0, BASE)
import torch, triton, triton.experimental
triton.experimental.__path__.insert(0, BASE + '/source/python/triton/experimental')
from unittest.mock import patch
from triton.experimental.graph_fusion import _resource_autotune as auto, _resource_codegen as gen
from triton.experimental.graph_fusion._resource_codegen import ResourceHeuristics as H
from triton.experimental.graph_fusion._resource_runtime import inference_entry
from triton.experimental.graph_fusion._p800_compiler import target_scope
from torch._inductor import config

m, n = 2048, 2048
xb = int(sys.argv[1])                       # 1024 / 2048 / 3072 / 4096
dt = sys.argv[2] if len(sys.argv) > 2 else 'bfloat16'
dtype = getattr(torch, dt)

g1 = torch.Generator().manual_seed(61)
a = torch.randn((m, n), generator=g1).to(dtype).cuda()
b = torch.randn((n,), generator=g1).to(dtype).cuda()
gm = torch.fx.symbolic_trace(lambda x, y: (x * y,))

# 只钉这一个 region 的 XBLOCK，其余全部走原生 Inductor
base = H.__getattr__
def lookup(obj, name):
    f = base(obj, name)
    if obj.resource != 'cluster':
        return f
    def factory(*args, **kwargs):
        deco = f(*args, **kwargs)
        def decorate(fn):
            tuner = deco(fn)
            cfg = copy.deepcopy(tuner.configs[0])
            if 'XBLOCK' in cfg.kwargs:
                cfg.kwargs['XBLOCK'] = xb
            cfg.num_warps = 8
            cfg.num_stages = 1
            tuner.configs = [cfg]
            tuner.inductor_meta = dict(tuner.inductor_meta,
                                       coordinate_descent_tuning=False,
                                       autotune_local_cache=False)
            return tuner
        return decorate
    return factory

with target_scope(), config.patch(auto.compiler_options()), patch.object(H, '__getattr__', lookup):
    binary, evidence = gen.compile_region(gm, (a, b), 'cluster')
    entry, _ = inference_entry(binary)
    out = entry([a, b])[0]
    torch.cuda.synchronize()

ok = (out == (a * b)).reshape(-1)
total = ok.numel()
print(f'dtype={dt} xblock={xb} correct={int(ok.sum())}/{total} ({ok.sum() / total:.1%}) '
      f'nonfinite={int((~torch.isfinite(out)).sum())}')
print('first64:', ''.join('1' if v else '0' for v in ok[:64].tolist()))
print('runs:', [len(list(g)) for _, g in itertools.groupby(ok[:256].tolist())][:8])
```

### 5.2 运行（单卡串行）

```bash
cd /data2/zhaoweiming/f06-mulsum-plans-20261105
for xb in 1024 2048 3072 4096; do
  F06_PHYSICAL_DEVICE=7 bash run_env.sh repro_bf16_partial.py $xb bfloat16
done
F06_PHYSICAL_DEVICE=7 bash run_env.sh repro_bf16_partial.py 4096 float16   # 对照组
```

### 5.3 预期输出

```
dtype=bfloat16 xblock=1024 correct=4194304/4194304 (100.0%) nonfinite=0
first64: 1111111111111111111111111111111111111111111111111111111111111111
runs: [256]
dtype=bfloat16 xblock=2048 correct=2098090/4194304 (50.0%) nonfinite=0
first64: 1111111111111111000000000000000011111111111111110000000000000000
runs: [16, 16, 16, 16]
dtype=bfloat16 xblock=3072 correct=1398515/4194304 (33.3%) nonfinite=105
dtype=bfloat16 xblock=4096 correct=1049504/4194304 (25.0%) nonfinite=62123
first64: 1111111111111111000000000000000000000000000000000000000000000000
runs: [16, 48, 16, 48]
dtype=float16  xblock=4096 correct=4194304/4194304 (100.0%) nonfinite=0
```

**判读标准**：bf16 下正确率按 `1024/XBLOCK` 下降，`first64`/`runs` 呈 16 写、`16×(XBLOCK/1024)−16` 空的
周期结构；f16 在同一 XBLOCK 下 100% 正确 → 复现成立。

## 六、影响范围与当前规避

| 项 | 说明 |
|---|---|
| 受影响 | bf16 + Inductor pointwise + XBLOCK > 1024（含 Mul+Sum 拆分的乘法区域） |
| 不受影响 | f32 / f16；bf16 + XBLOCK ≤ 1024 |
| 对历史结论的影响 | 之前 bf16 路线里的“Inductor 精度不达标”“个别路线误差 159/19.875”，都应按本缺陷重新解读，不能当作算法或容差问题 |
| 规避 | bf16 关闭 `coordinate_descent_tuning`（避免它选大 XBLOCK）；**XBLOCK 上限必须 ≤ 1024**（2048 仍有 50% 漏写，只是不表现为 inf） |

## 七、请上游确认/修复的点

1. bf16 store 的谓词/向量化在 XBLOCK > 1024 时按 16 元素（32 B）粒度截断，导致每
   `16 × XBLOCK/1024` 个元素只写前 16 个——需要定位到具体的 lowering（store 谓词生成或
   32 B 搬运单元的掩码）。
2. 建议加一致性断言：`写入元素数 == numel`，不满足时报错而非静默漏写。
3. 调试构建建议对输出缓冲预填哨兵值，便于把“未写入”和“算错”区分开。

## 八、证据文件

- 复现脚本：`/data2/zhaoweiming/f06-mulsum-plans-20261105/repro_bf16_partial.py`
- 失败核源码：`/data2/zhaoweiming/f06-mulsum-plans-20261105/sdnn-fix/ew4096.py`
- 失败核产物：`work/2026-11-05/build/ir_fail.elf`、`ir_fail.xpubin`（可反汇编）
- 完整排查记录：`work/2026-11-05/f06-p800-mulsum-plans/SDNN-DSA-AUTOGEN.md`
