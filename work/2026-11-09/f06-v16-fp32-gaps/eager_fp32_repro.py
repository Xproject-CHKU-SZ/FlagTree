"""Run on the P800 torch_xmlir runtime: python eager_fp32_repro.py"""
import json
import torch


@torch.no_grad()
def main():
    x = torch.ones((512, 1024), dtype=torch.float32)
    x[0, 0] = float("nan")
    x = x.cuda()
    batched = x.sum(dim=-1)
    keepdim = x.sum(dim=-1, keepdim=True)
    print(json.dumps({
        "case": "unmodified row 21",
        "sum_all_rows_index_21": str(batched[21].item()),
        "sum_keepdim_index_21": str(keepdim[21, 0].item()),
        "sum_only_row_21": x[21].sum().item(),
        "expected": 1024.0,
    }))

    row = torch.tensor([999.875, 1000.125], dtype=torch.float32).repeat(512)
    z = row.repeat(64, 1).cuda()
    eps = 1e-3
    _, _, rstd = torch.native_layer_norm(z, (1024,), None, None, eps)
    _, _, centered = torch.native_layer_norm(z - 1000, (1024,), None, None, eps)
    print(json.dumps({
        "case": "alternating 1000 +/- 0.125",
        "device_rstd": rstd.flatten()[0].item(),
        "centered_device_rstd": centered.flatten()[0].item(),
        "expected_rstd": (0.125 ** 2 + eps) ** -0.5,
    }))


if __name__ == "__main__":
    main()
