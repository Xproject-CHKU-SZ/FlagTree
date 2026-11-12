## FP32 vs eager

| 模板 | 16x128 | 32x256 | 64x1024 | 128x1024 | 512x1024 | 2048x2048 |
|---|---|---|---|---|---|---|
| mul_sum | 0.94 | 0.97 | 0.97 | 0.98 | 0.97 | 1.09 |
| mul_sum_keepdim | 0.95 | 0.95 | 0.97 | 0.98 | 0.94 | 1.10 |
| add_silu | n/a | n/a | 1.10 | 1.16 | 1.18 | 0.93 |
| add_gelu_exact | 0.79 | n/a | 0.79 | 0.79 | 1.40 | 1.47 |
| add_gelu_tanh | 0.78 | n/a | 0.78 | 0.74 | 1.17 | 1.72 |
| add_softmax | 0.92 | 0.92 | 0.92 | 0.69 | 0.20 | 0.09* |
| add_layernorm | 1.21 | 1.22 | 1.16 | 1.20 | 0.73 | 0.17 |
| add_layernorm_affine | 0.46* | 0.47* | 0.41* | 0.24* | 0.06* | 0.09* |
| matmul_bias | ERR | ERR | ERR | ERR | ERR | ERR |
| matmul_bias_relu | ERR | ERR | ERR | ERR | ERR | ERR |
| matmul_bias_gelu_exact | ERR | ERR | ERR | ERR | ERR | ERR |
| matmul_bias_gelu_tanh | ERR | ERR | ERR | ERR | ERR | ERR |
| matmul_bias_silu | ERR | ERR | ERR | ERR | ERR | ERR |

## FP16 vs eager

| 模板 | 16x128 | 32x256 | 64x1024 | 128x1024 | 512x1024 | 2048x2048 |
|---|---|---|---|---|---|---|
| mul_sum | 0.92 | 0.92 | 0.91 | 0.93 | 0.48 | 0.15 |
| mul_sum_keepdim | 0.91 | 0.90 | 0.92 | 0.92 | 0.50 | 0.15 |
| add_silu | n/a | n/a | 1.16 | 1.15 | 1.13 | 1.06 |
| add_gelu_exact | 0.81 | n/a | 0.79 | 0.79 | 1.49 | 1.49 |
| add_gelu_tanh | 0.78 | n/a | 0.79 | 0.80 | 1.02 | 1.70 |
| add_softmax | 0.91 | 0.92 | 0.91 | 0.66 | 0.20 | 0.08* |
| add_layernorm | 1.15 | 1.20 | 1.19 | 1.18 | 0.60 | 0.11 |
| add_layernorm_affine | 0.47* | 0.50* | 0.40* | 0.22* | 0.06* | 0.06* |
| matmul_bias | ERR | ERR | ERR | ERR | ERR | ERR |
| matmul_bias_relu | ERR | ERR | ERR | ERR | ERR | ERR |
| matmul_bias_gelu_exact | ERR | ERR | ERR | ERR | ERR | ERR |
| matmul_bias_gelu_tanh | ERR | ERR | ERR | ERR | ERR | ERR |
| matmul_bias_silu | ERR | ERR | ERR | ERR | ERR | ERR |

## FP32 vs Inductor

| 模板 | 16x128 | 32x256 | 64x1024 | 128x1024 | 512x1024 | 2048x2048 |
|---|---|---|---|---|---|---|
| mul_sum | 0.63 | 0.66 | 0.61 | 0.63 | 0.44 | 0.21 |
| mul_sum_keepdim | 0.65 | 0.65 | 0.66 | 0.66 | 0.43 | 0.22 |
| add_silu | n/a | n/a | 0.67 | 0.65 | 0.68 | 0.71 |
| add_gelu_exact | 0.65 | n/a | 0.65 | 0.68 | 1.20 | 1.27 |
| add_gelu_tanh | 0.64 | n/a | 0.63 | 0.64 | 1.17 | 1.72 |
| add_softmax | 0.65 | 0.63 | 0.32 | 0.17 | 0.04 | 0.09 |
| add_layernorm | 0.80 | 0.83 | 0.47 | 0.24 | 0.06 | 0.15 |
| add_layernorm_affine | 0.46 | 0.47 | 0.41 | 0.24 | 0.06 | 0.09 |
| matmul_bias | ERR | ERR | ERR | ERR | ERR | ERR |
| matmul_bias_relu | ERR | ERR | ERR | ERR | ERR | ERR |
| matmul_bias_gelu_exact | ERR | ERR | ERR | ERR | ERR | ERR |
| matmul_bias_gelu_tanh | ERR | ERR | ERR | ERR | ERR | ERR |
| matmul_bias_silu | ERR | ERR | ERR | ERR | ERR | ERR |

## FP16 vs Inductor

| 模板 | 16x128 | 32x256 | 64x1024 | 128x1024 | 512x1024 | 2048x2048 |
|---|---|---|---|---|---|---|
| mul_sum | 0.65 | 0.66 | 0.65 | 0.66 | 0.48 | 0.15 |
| mul_sum_keepdim | 0.65 | 0.63 | 0.65 | 0.67 | 0.49 | 0.15 |
| add_silu | n/a | n/a | 0.68 | 0.68 | 0.66 | 0.66 |
| add_gelu_exact | 0.67 | n/a | 0.65 | 0.65 | 1.24 | 1.24 |
| add_gelu_tanh | 0.67 | n/a | 0.66 | 0.69 | 1.02 | 1.70 |
| add_softmax | 0.65 | 0.65 | 0.32 | 0.15 | 0.05 | 0.08 |
| add_layernorm | 0.84 | 0.84 | 0.46 | 0.22 | 0.06 | 0.11 |
| add_layernorm_affine | 0.47 | 0.50 | 0.40 | 0.22 | 0.06 | 0.06 |
| matmul_bias | ERR | ERR | ERR | ERR | ERR | ERR |
| matmul_bias_relu | ERR | ERR | ERR | ERR | ERR | ERR |
| matmul_bias_gelu_exact | ERR | ERR | ERR | ERR | ERR | ERR |
| matmul_bias_gelu_tanh | ERR | ERR | ERR | ERR | ERR | ERR |
| matmul_bias_silu | ERR | ERR | ERR | ERR | ERR | ERR |