"""Hugging Face小模型下载定义。

固定revision用于保证服务器复测获得相同模型文件。下载逻辑仅负责取得测试
材料，不把模型仓库标签解释为编译能力证明。
"""

from __future__ import annotations

from pathlib import Path


HF_REPO_ID = "optimum-intel-internal-testing/tiny-random-MobileBertModel"
HF_REVISION = "43d7391e161501d14a4d6ef7484ba17ec08066a7"

MEDIUM_ONNX_REPO_ID = "Xenova/distilbert-base-uncased-finetuned-sst-2-english"
MEDIUM_ONNX_REVISION = "0b6928efcb76139cae2c6881d49cda67fe119f42"
MEDIUM_ONNX_FILE = "onnx/model.onnx"

MEDIUM_TENSORFLOW_REPO_ID = (
    "distilbert/distilbert-base-uncased-finetuned-sst-2-english"
)
MEDIUM_TENSORFLOW_REVISION = "714eb0fa89d2f80546fda750413ed43d93601a13"
MEDIUM_TENSORFLOW_FILE = "tf_model.h5"


def download_onnx_model(
    local_dir: str | Path,
    *,
    repo_id: str = HF_REPO_ID,
    revision: str = HF_REVISION,
    filename: str = "onnx/model.onnx",
) -> Path:
    """下载固定版本的ONNX模型并返回本地路径。"""

    from huggingface_hub import hf_hub_download

    local_dir = Path(local_dir)
    local_dir.mkdir(parents=True, exist_ok=True)
    path = hf_hub_download(
        repo_id=repo_id,
        revision=revision,
        filename=filename,
        local_dir=str(local_dir),
    )
    return Path(path)

def download_tensorflow_model(
    local_dir: str | Path,
    *,
    repo_id: str = HF_REPO_ID,
    revision: str = HF_REVISION,
    weight_filename: str = "tf_model.h5",
) -> Path:
    """下载固定版本的TensorFlow权重和加载所需配置。"""

    from huggingface_hub import snapshot_download

    local_dir = Path(local_dir)
    local_dir.mkdir(parents=True, exist_ok=True)
    path = snapshot_download(
        repo_id=repo_id,
        revision=revision,
        local_dir=str(local_dir),
        allow_patterns=[
            "config.json",
            weight_filename,
            "tokenizer_config.json",
            "special_tokens_map.json",
            "tokenizer.json",
            "vocab.txt",
        ],
    )
    return Path(path)
