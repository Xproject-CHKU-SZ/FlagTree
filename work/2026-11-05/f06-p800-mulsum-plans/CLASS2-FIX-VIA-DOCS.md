# 用 XPU 架构文档解释并修复第二类问题

文档位置（仓库内，非厂商 PDF）：
`third_party/xpu/docs/xpu3/how_to_write_kernel_skills/`
- `how_to_write_reduce/README.md`、`how_to_write_reduce/references/reduce_envelope.md`
- `how_to_write_copy/README.md`（SDNN / `tle.dsa` 搬运那条路）

厂商 PDF（`/home/f/Documents/P800-document`）只有 XDNN API、XTDK、XRE、XProfiler 的使用手册，
没有 SDNN 代码生成约束；真正相关的是上面这套 kernel 实录。

## 症状与文档条目的对应

| 观察到的症状 | 文档条目 | 结论 |
|---|---|---|
| 融合核 `tl.where(r0_mask & xmask, _tmp4 + tmp0*tmp1, _tmp4)` 在归约里，f32 2048 宽结果错 159–345 | reduce_envelope「Masking a tile that came through LM」：归约里的 `tl.where` 会静默算错（bf16 在 (600,40999) 错；f16 每个 tile 都编译不过，报 local-memory budget） | 归约轴上的 mask 是首要嫌疑 |
| `R0_BLOCK=2048` 直接 -714 | 同节：「TLE kernel stack is over the local-memory budget」；另一条：power-of-two tile 越界读会 fault | tile 超出 LM 预算 → 设备异常 |
| 独立归约 `XBLOCK=1` 约 2.1 ms，而历史独立测量 25.4 µs | README 三分钟版本第 3 条：写回开销随 XBLOCK 阶梯下降（64 行 ~9 µs、512 行 ~0.7 µs） | XBLOCK=1 时每个 program 只写一个标量、grid 2048，写回占满时间 |
| 256 列分块能过、2048 宽不行 | 同条：tile 形状是算法不是调参，48 点扫描差 1.3–6.4 倍 | 宽 tile 属未验证区间，不是等价配置 |

另两条已满足的约束（说明方向没错）：归约轴必须是最后一轴（`TLECoreTiling.cpp:383`，
我们的行求和满足）；归约轴要保持整除或退成单趟（2048 % 128 == 0，本可以不用 mask）。

## 可执行的修法

1. **归约轴整除时去掉 mask**：用零填充（short tile 先清零）代替 `tl.where` 与带 mask 的 load。
   我们的图里 `r0_numel=2048`、`R0_BLOCK=128` 精确整除，mask 本来就是多余的。
2. **tile 受 LM 预算约束**：`XBLOCK × R0_BLOCK × dtype` 要留在预算内，别再试 `R0_BLOCK=2048`。
3. **按写回阶梯选 XBLOCK**：目标是单 cluster 单 program、XBLOCK 尽量大，而不是 `XBLOCK=1`。
   这直接对应 2.1 ms → 历史 25 µs 的差距，是恢复 SDNN 归约性能的关键。

## 待确认

文档针对 `tle.gpu`/`tle.dsa` 路径，我们的核是 Inductor 生成的 Triton 再走 SDNN 后端；
机制高度吻合但需一次定向验证：在整除形状上去掉归约 mask（零填充）、`XBLOCK=64 / R0_BLOCK=128`
重跑对拍，若结果正确且耗时回到几十微秒，即可确认第二类是「mask + tile 尺寸」而非取模或
其它代码生成缺陷。
