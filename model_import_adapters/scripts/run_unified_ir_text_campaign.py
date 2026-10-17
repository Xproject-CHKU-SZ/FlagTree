#!/usr/bin/env python3
"""Discover cached text encoders and run CPU-free Core ATen/PPU validations."""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import re
import subprocess
import sys
import time
import traceback
from collections import defaultdict
from pathlib import Path
from typing import Any


WEIGHT_SUFFIXES = (".safetensors", ".bin", ".pt", ".pth")
TOKENIZER_NAMES = {
    "tokenizer.json", "tokenizer.model", "spiece.model", "vocab.txt",
    "vocab.json", "merges.txt", "sentencepiece.bpe.model",
}
TEXT_MODEL_TYPES = {
    "albert", "bert", "bert-generation", "camembert", "deberta", "deberta-v2",
    "distilbert", "electra", "ernie", "flaubert", "fnet", "longformer",
    "mpnet", "modernbert", "mobilebert", "rembert", "roberta", "roformer",
    "xlm", "xlm-roberta", "xlnet", "nezha", "megatron-bert", "nystromformer",
    "bart", "big_bird", "bigbird_pegasus", "bloom", "deberta-v3", "gemma",
    "gemma2", "gpt2", "gpt_neo", "gpt_neox", "llama", "mamba", "mistral",
    "mt5", "opt", "phi", "phi3", "qwen2", "qwen3", "qwen2_moe", "t5",
    "t5gemma", "transfo-xl", "mpt", "pegasus", "xlm-roberta-xl",
}
EMBED_HINTS = ("embed", "sentence", "sbert", "e5", "gte", "bge", "text2vec", "retriev")
RERANK_HINTS = ("rerank", "cross-encoder", "cross_encoder")


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def model_id_from_cache_dir(path: Path) -> str:
    return path.name.removeprefix("models--").replace("--", "/")


def selected_snapshot(repo_dir: Path) -> tuple[Path | None, str | None]:
    snapshots = repo_dir / "snapshots"
    if not snapshots.is_dir():
        return None, None
    revisions = sorted(item for item in snapshots.iterdir() if item.is_dir())
    if not revisions:
        return None, None
    ref = repo_dir / "refs" / "main"
    if ref.is_file():
        revision = ref.read_text(encoding="utf-8").strip()
        match = snapshots / revision
        if match.is_dir():
            return match, revision
    # Prefer the most complete local revision when refs/main is absent or stale.
    def completeness(item: Path) -> tuple[int, int, int, str]:
        config = int((item / "config.json").is_file())
        weights = sum(
            path.is_file() and path.suffix.lower() in WEIGHT_SUFFIXES
            for path in item.rglob("*")
        )
        tokenizer = sum(
            path.is_file() and (path.name in TOKENIZER_NAMES or path.name == "tokenizer_config.json")
            for path in item.rglob("*")
        )
        return config, int(weights > 0), tokenizer, item.name
    item = max(revisions, key=completeness)
    return item, item.name


def detect_pooling(snapshot: Path) -> dict[str, Any] | None:
    modules_path = snapshot / "modules.json"
    if not modules_path.is_file():
        return None
    try:
        modules = json.loads(modules_path.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError):
        return {"supported": False, "reason": "invalid_modules_json"}
    pooling_module = next(
        (item for item in modules if "pooling" in str(item.get("type", "")).lower()),
        None,
    )
    normalize = any("normalize" in str(item.get("type", "")).lower() for item in modules)
    simple_classes = {"transformer", "pooling", "normalize"}
    if any(str(item.get("type", "")).rsplit(".", 1)[-1].lower() not in simple_classes for item in modules):
        return {"supported": False, "reason": "requires_full_sentence_transformer_pipeline"}
    if pooling_module is None:
        return {"supported": False, "reason": "sentence_transformer_pooling_missing"}
    relative = str(pooling_module.get("path", ""))
    config_path = snapshot / relative / "config.json"
    if not config_path.is_file():
        return {"supported": False, "reason": "pooling_config_missing"}
    try:
        config = json.loads(config_path.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError):
        return {"supported": False, "reason": "invalid_pooling_config"}
    allowed = {
        "pooling_mode_cls_token", "pooling_mode_mean_tokens", "pooling_mode_max_tokens",
        "pooling_mode_mean_sqrt_len_tokens",
    }
    modes = {key: bool(config.get(key, False)) for key in allowed}
    active = [key for key, enabled in modes.items() if enabled]
    if any(bool(value) and ("weighted" in key.lower() or "lasttoken" in key.lower()) for key, value in config.items()):
        return {"supported": False, "reason": "unsupported_pooling_mode"}
    if not active:
        return {"supported": False, "reason": "no_supported_pooling_mode"}
    return {"supported": True, "modes": modes, "normalize": normalize}


def candidate_for_repo(repo_dir: Path) -> dict[str, Any] | None:
    model_id = model_id_from_cache_dir(repo_dir)
    snapshot, revision = selected_snapshot(repo_dir)
    if snapshot is None:
        return None
    config_path = snapshot / "config.json"
    if not config_path.is_file():
        return None
    try:
        config = json.loads(config_path.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError):
        return None
    model_type = str(config.get("model_type", "")).lower()
    architectures = config.get("architectures") or []
    architecture_text = " ".join(map(str, architectures)).lower()
    if model_type not in TEXT_MODEL_TYPES and not any(
        marker in architecture_text for marker in ("bert", "roberta", "mpnet", "electra", "deberta")
    ):
        return None
    if config.get("auto_map") or config.get("quantization_config"):
        return None
    weight_files = sorted(
        path for path in snapshot.rglob("*")
        if path.is_file() and path.suffix.lower() in WEIGHT_SUFFIXES
    )
    if not weight_files:
        return None
    tokenizer_files = sorted(
        path for path in snapshot.rglob("*")
        if path.is_file() and (path.name in TOKENIZER_NAMES or path.name == "tokenizer_config.json")
    )
    if not tokenizer_files:
        return None
    lower_name = model_id.lower()
    pooling = detect_pooling(snapshot)
    if pooling is not None and not pooling.get("supported"):
        return None
    if any(token in lower_name for token in RERANK_HINTS) or any(
        "sequenceclassification" in str(item).lower() for item in architectures
    ):
        task_kind = "sequence_classification"
        priority = 1
    elif pooling is not None or any(hint in lower_name for hint in EMBED_HINTS):
        task_kind = "sentence_embedding" if pooling else "token_encoder"
        priority = 0 if pooling else 1
    else:
        task_kind = "token_encoder"
        priority = 2
    total_weight_bytes = sum(path.stat().st_size for path in weight_files)
    return {
        "model_id": model_id,
        "revision": revision,
        "snapshot_path": str(snapshot),
        "cache_repo": str(repo_dir),
        "model_type": model_type,
        "architectures": architectures,
        "task_kind": task_kind,
        "priority": priority,
        "pooling": pooling,
        "config_path": str(config_path),
        "config_sha256": sha256_file(config_path),
        "weight_files": [str(path) for path in weight_files],
        "weight_bytes": total_weight_bytes,
        "tokenizer_files": [str(path) for path in tokenizer_files],
        "tokenizer_complete": True,
        "eligible": True,
        "status": "candidate",
    }


def discover(hub_root: Path) -> list[dict[str, Any]]:
    candidates: list[dict[str, Any]] = []
    for repo in sorted(hub_root.glob("models--*")):
        if not repo.is_dir():
            continue
        candidate = candidate_for_repo(repo)
        if candidate:
            candidates.append(candidate)
    # Priority groups are interleaved by architecture so pilots are representative.
    groups: dict[tuple[int, str], list[dict[str, Any]]] = defaultdict(list)
    for candidate in candidates:
        groups[(candidate["priority"], candidate["model_type"])].append(candidate)
    ordered: list[dict[str, Any]] = []
    for group in groups.values():
        group.sort(key=lambda item: item["model_id"].casefold())
    keys = sorted(groups)
    while any(groups[key] for key in keys):
        for key in keys:
            if groups[key]:
                ordered.append(groups[key].pop(0))
    for index, candidate in enumerate(ordered, 1):
        candidate["selection_rank"] = index
    return ordered


def write_inventory(hub_root: Path, campaign_dir: Path) -> dict[str, Any]:
    candidates = discover(hub_root)
    campaign_dir.mkdir(parents=True, exist_ok=True)
    inventory_path = campaign_dir / "inventory.json"
    summary = {
        "schema_version": 1,
        "campaign": campaign_dir.name,
        "hub_root": str(hub_root),
        "created_at_unix": time.time(),
        "cpu_baseline": "skipped",
        "candidate_count": len(candidates),
        "unique_model_ids": len({item["model_id"] for item in candidates}),
        "task_kind_counts": {
            kind: sum(item["task_kind"] == kind for item in candidates)
            for kind in sorted({item["task_kind"] for item in candidates})
        },
        "candidates": candidates,
    }
    inventory_path.write_text(json.dumps(summary, ensure_ascii=False, indent=2), encoding="utf-8")
    write_campaign_summary(campaign_dir)
    return summary


def write_campaign_summary(campaign_dir: Path) -> dict[str, Any]:
    inventory_path = campaign_dir / "inventory.json"
    inventory = json.loads(inventory_path.read_text(encoding="utf-8")) if inventory_path.exists() else {"candidates": []}
    results: list[dict[str, Any]] = []
    for result_path in sorted((campaign_dir / "cases").glob("*/status.json")):
        try:
            results.append(json.loads(result_path.read_text(encoding="utf-8")))
        except (OSError, json.JSONDecodeError):
            continue
    passed = [item for item in results if item.get("ppu_status") == "passed" and item.get("counted_for_goal")]
    summary = {
        "schema_version": 1,
        "campaign": campaign_dir.name,
        "target_unique_models": 300,
        "candidate_count": inventory.get("candidate_count", 0),
        "attempted_count": len(results),
        "ppu_closed_loop_pass_count": len({item["model_id"] for item in passed}),
        "a100_review_counts": {
            state: sum(item.get("a100_review_status") == state for item in results)
            for state in ("pending", "passed", "failed", "not_comparable")
        },
        "failure_stage_counts": {
            stage: sum(item.get("failure_stage") == stage for item in results)
            for stage in sorted({str(item.get("failure_stage")) for item in results if item.get("failure_stage")})
        },
        "results": results,
    }
    (campaign_dir / "summary.json").write_text(json.dumps(summary, ensure_ascii=False, indent=2), encoding="utf-8")
    return summary


def tree_tensors(value: Any) -> list[Any]:
    import torch
    from torch.utils._pytree import tree_flatten

    flat, _ = tree_flatten(value)
    return [item for item in flat if isinstance(item, torch.Tensor)]


def compare_ppu_tensors(expected: Any, actual: Any, *, atol: float, rtol: float) -> list[dict[str, Any]]:
    import torch
    from torch.utils._pytree import tree_flatten

    expected_flat, expected_spec = tree_flatten(expected)
    actual_flat, actual_spec = tree_flatten(actual)
    if expected_spec != actual_spec or len(expected_flat) != len(actual_flat):
        raise RuntimeError("eager 与编译输出结构不同")
    records: list[dict[str, Any]] = []
    for index, (reference, compiled) in enumerate(zip(expected_flat, actual_flat)):
        if not isinstance(reference, torch.Tensor) or not isinstance(compiled, torch.Tensor):
            if reference != compiled:
                raise RuntimeError(f"输出 {index} 非 Tensor 值不一致")
            records.append({"index": index, "kind": "value", "passed": True})
            continue
        if reference.device.type != "cuda" or compiled.device.type != "cuda":
            raise RuntimeError("PPU eager/compiled 输出必须都保留在目标 PPU 上")
        if reference.shape != compiled.shape or reference.dtype != compiled.dtype:
            raise RuntimeError(f"输出 {index} Shape/dtype 不一致")
        if not torch.isfinite(reference).all().item() or not torch.isfinite(compiled).all().item():
            raise RuntimeError(f"输出 {index} 含 NaN 或 Inf")
        diff = (reference - compiled).abs()
        denom = reference.abs().clamp_min(torch.finfo(reference.dtype).tiny)
        max_abs = float(diff.max().item()) if diff.numel() else 0.0
        max_rel = float((diff / denom).max().item()) if diff.numel() else 0.0
        passed = bool(torch.allclose(reference, compiled, atol=atol, rtol=rtol))
        records.append({
            "index": index, "kind": "tensor", "shape": list(reference.shape),
            "dtype": str(reference.dtype).removeprefix("torch."), "device": str(reference.device),
            "max_abs_error": max_abs, "max_rel_error": max_rel, "atol": atol, "rtol": rtol,
            "finite": True, "passed": passed,
        })
        if not passed:
            raise RuntimeError(f"输出 {index} 的 PPU eager/compiled 比较超出容差")
    return records


def make_encoder_module(model: Any, task_kind: str, pooling: dict[str, Any] | None, use_types: bool) -> Any:
    import torch

    class TextModel(torch.nn.Module):
        def __init__(self, inner: Any) -> None:
            super().__init__()
            self.inner = inner

        def forward(self, input_ids: Any, attention_mask: Any, token_type_ids: Any = None) -> Any:
            kwargs = {"input_ids": input_ids, "attention_mask": attention_mask, "return_dict": True}
            if token_type_ids is not None:
                kwargs["token_type_ids"] = token_type_ids
            output = self.inner(**kwargs)
            if task_kind == "sequence_classification":
                return output.logits
            hidden = output.last_hidden_state
            if not pooling:
                return hidden
            mask = attention_mask.unsqueeze(-1).to(hidden.dtype)
            pooled: list[Any] = []
            modes = pooling["modes"]
            if modes.get("pooling_mode_cls_token"):
                pooled.append(hidden[:, 0])
            if modes.get("pooling_mode_mean_tokens"):
                pooled.append((hidden * mask).sum(dim=1) / mask.sum(dim=1).clamp_min(1))
            if modes.get("pooling_mode_max_tokens"):
                floor = torch.finfo(hidden.dtype).min
                pooled.append(hidden.masked_fill(mask == 0, floor).max(dim=1).values)
            if modes.get("pooling_mode_mean_sqrt_len_tokens"):
                pooled.append((hidden * mask).sum(dim=1) / mask.sum(dim=1).clamp_min(1).sqrt())
            result = torch.cat(pooled, dim=-1) if len(pooled) > 1 else pooled[0]
            if pooling.get("normalize"):
                result = torch.nn.functional.normalize(result, p=2, dim=-1)
            return result

    return TextModel(model)


def hash_model_files(candidate: dict[str, Any]) -> list[dict[str, Any]]:
    paths = sorted(set(candidate["weight_files"] + candidate["tokenizer_files"] + [candidate["config_path"]]))
    records = []
    for raw in paths:
        path = Path(raw)
        records.append({
            "path": raw,
            "name": path.name,
            "size_bytes": path.stat().st_size,
            "sha256": sha256_file(path),
        })
    return records


def environment_snapshot(device: str, candidate: dict[str, Any]) -> dict[str, Any]:
    import torch
    import transformers
    import triton

    return {
        "python": sys.version,
        "platform": sys.platform,
        "torch": torch.__version__,
        "transformers": transformers.__version__,
        "triton": triton.__version__,
        "device_requested": device,
        "device_name": torch.cuda.get_device_name(0),
        "visible_device_count": torch.cuda.device_count(),
        "cuda_available": torch.cuda.is_available(),
        "model_id": candidate["model_id"],
        "revision": candidate["revision"],
        "cpu_forward_baseline": "not_run",
        "reference_mode": "same_ppu_eager_vs_compiled",
        "compile_threads": os.environ.get("TORCHINDUCTOR_COMPILE_THREADS"),
    }


def artifact_index(root: Path, suffixes: set[str] | None = None) -> list[dict[str, Any]]:
    if not root.is_dir():
        return []
    records = []
    for path in sorted(item for item in root.rglob("*") if item.is_file()):
        if suffixes is not None and path.suffix.lower() not in suffixes:
            continue
        records.append({
            "relative_path": str(path.relative_to(root)), "suffix": path.suffix.lower(),
            "size_bytes": path.stat().st_size, "sha256": sha256_file(path),
        })
    return records


def run_one(candidate: dict[str, Any], case_dir: Path, repo_root: Path, device: str, atol: float, rtol: float) -> dict[str, Any]:
    # Set per-model compiler paths before loading Torch/Triton so all generated
    # caches and dumps are attributable to exactly one model attempt.
    os.environ.setdefault("TORCHINDUCTOR_COMPILE_THREADS", "1")
    os.environ.setdefault("TORCH_COMPILE_DEBUG", "1")
    os.environ.setdefault("TRITON_KERNEL_DUMP", "1")
    os.environ["TORCHINDUCTOR_CACHE_DIR"] = str(case_dir / "inductor-cache")
    os.environ["TRITON_DUMP_DIR"] = str(case_dir / "triton-dump")
    os.environ["TRITON_CACHE_DIR"] = str(case_dir / "triton-cache")

    import numpy as np
    import torch
    import inspect
    from transformers import AutoModel, AutoModelForSequenceClassification, AutoTokenizer
    from model_import_adapters.unified_ir import export_core_aten, load_core_aten

    case_dir.mkdir(parents=True, exist_ok=True)
    (case_dir / "command.json").write_text(json.dumps({
        "model_id": candidate["model_id"], "revision": candidate["revision"],
        "command_mode": "run-one", "device": device, "atol": atol, "rtol": rtol,
        "cpu_forward_baseline": "skipped",
    }, ensure_ascii=False, indent=2), encoding="utf-8")
    status: dict[str, Any] = {
        "model_id": candidate["model_id"], "revision": candidate["revision"],
        "task_kind": candidate["task_kind"], "model_type": candidate["model_type"],
        "ppu_status": "failed", "failure_stage": None,
        "a100_review_status": "pending", "cpu_baseline": "skipped",
        "started_at_unix": time.time(), "counted_for_goal": False,
    }
    try:
        status["failure_stage"] = "model_load"
        tokenizer = AutoTokenizer.from_pretrained(candidate["snapshot_path"], local_files_only=True, trust_remote_code=False)
        if candidate["task_kind"] == "sequence_classification":
            model = AutoModelForSequenceClassification.from_pretrained(candidate["snapshot_path"], local_files_only=True, trust_remote_code=False)
            texts = ["A short document about neural networks.", "A passage describing model compilation."]
            pairs = ["This sentence describes machine learning.", "The second passage discusses hardware execution."]
            encoded = tokenizer(texts, pairs, padding="max_length", truncation=True, max_length=24, return_tensors="pt")
        else:
            model = AutoModel.from_pretrained(candidate["snapshot_path"], local_files_only=True, trust_remote_code=False)
            texts = ["A short document about neural networks.", "A passage describing model compilation."]
            encoded = tokenizer(texts, padding="max_length", truncation=True, max_length=24, return_tensors="pt")
        if "input_ids" not in encoded or "attention_mask" not in encoded:
            raise RuntimeError("tokenizer must provide input_ids and attention_mask")
        use_types = "token_type_ids" in encoded and "token_type_ids" in inspect.signature(model.forward).parameters
        if not use_types:
            encoded.pop("token_type_ids", None)
        module = make_encoder_module(model.eval(), candidate["task_kind"], candidate.get("pooling"), use_types).to(device).eval()
        args = (encoded["input_ids"].to(device), encoded["attention_mask"].to(device))
        if use_types:
            args += (encoded["token_type_ids"].to(device),)
        input_record = {
            "texts": texts,
            "text_pairs": pairs if candidate["task_kind"] == "sequence_classification" else None,
            "tokenizer_class": type(tokenizer).__name__,
            "tokenizer_config": tokenizer.init_kwargs,
            "input_keys": list(encoded.keys()),
            "shapes": {key: list(value.shape) for key, value in encoded.items()},
            "dtypes": {key: str(value.dtype) for key, value in encoded.items()},
            "max_length": 24,
        }
        (case_dir / "probe.json").write_text(json.dumps(input_record, ensure_ascii=False, indent=2, default=str), encoding="utf-8")
        np.savez_compressed(case_dir / "probe_inputs.npz", **{key: value.numpy() for key, value in encoded.items()})
        (case_dir / "model_files.json").write_text(json.dumps(hash_model_files(candidate), ensure_ascii=False, indent=2), encoding="utf-8")
        (case_dir / "environment.json").write_text(json.dumps(environment_snapshot(device, candidate), ensure_ascii=False, indent=2), encoding="utf-8")

        status["failure_stage"] = "ppu_eager_reference"
        with torch.inference_mode():
            ppu_eager_output = module(*args)
        torch.cuda.synchronize()
        status["failure_stage"] = "core_aten_export_roundtrip"
        _, artifacts, details = export_core_aten(
            module, args, case_dir / "artifacts", source={
                "kind": "pytorch", "model_id": candidate["model_id"],
                "revision": candidate["revision"], "task_kind": candidate["task_kind"],
                "model_type": candidate["model_type"], "reference_device": device,
            }, strict=False, atol=atol, rtol=rtol,
        )
        status["export_status"] = "passed"
        status["artifacts"] = artifacts.as_dict()
        status["validation"] = details["validation"]

        status["failure_stage"] = "semantic_audit"
        audit_dir = case_dir / "semantic-rule-audit"
        audit_command = [
            sys.executable, str(repo_root / "model_import_adapters/scripts/audit_core_aten_semantic_rules.py"),
            "--core-aten", str(artifacts.exported_program), "--output-dir", str(audit_dir),
            "--entry", candidate["model_id"], "--source-kind", "pytorch",
        ]
        proc = subprocess.run(audit_command, text=True, capture_output=True, check=False)
        (case_dir / "audit.stdout.log").write_text(proc.stdout, encoding="utf-8")
        (case_dir / "audit.stderr.log").write_text(proc.stderr, encoding="utf-8")
        (case_dir / "audit.exit_code.txt").write_text(f"{proc.returncode}\n", encoding="utf-8")
        if proc.returncode:
            raise RuntimeError(f"semantic audit returned {proc.returncode}")
        status["semantic_audit_status"] = "passed"

        status["failure_stage"] = "ppu_compile_inference_compare"
        # ExportedProgram.module() is already frozen in eval semantics; calling
        # eval() on the loaded PPU GraphModule is unsupported by this runtime.
        loaded = load_core_aten(artifacts.exported_program).module().to(device)
        compiled = torch.compile(loaded, fullgraph=True)
        with torch.inference_mode():
            compiled_output = compiled(*args)
        torch.cuda.synchronize()
        comparisons = compare_ppu_tensors(ppu_eager_output, compiled_output, atol=atol, rtol=rtol)
        torch.save({"ppu_output": ppu_eager_output.detach().cpu()}, case_dir / "ppu_reference_output.pt")
        triton_records = artifact_index(case_dir / "triton-dump")
        cache_records = artifact_index(case_dir / "inductor-cache")
        stage_suffixes = {".ttir", ".ttgir", ".ptx", ".llir", ".hgbin", ".elf", ".xpubin"}
        stage_records = [item for item in triton_records + cache_records if item["suffix"] in stage_suffixes]
        compile_report = {
            "status": "passed",
            "model_id": candidate["model_id"],
            "revision": candidate["revision"],
            "device": device,
            "device_name": torch.cuda.get_device_name(0),
            "torch_compile": True,
            "fullgraph": True,
            "reference": "eager_on_same_ppu",
            "cpu_forward_baseline": "not_run",
            "comparison": comparisons,
            "triton_dump_files": triton_records,
            "inductor_cache_files": cache_records,
            "triton_stage_evidence": "found" if stage_records else "not_found_in_configured_paths",
            "triton_stage_files": stage_records,
        }
        (case_dir / "ppu_execution_report.json").write_text(json.dumps(compile_report, ensure_ascii=False, indent=2), encoding="utf-8")
        status["ppu_comparison"] = comparisons
        status["compile_status"] = "passed"
        status["inference_status"] = "passed"
        status["ppu_status"] = "passed"
        status["failure_stage"] = None
        status["counted_for_goal"] = True
        status["artifact_hashes"] = {
            path.name: sha256_file(path)
            for path in (artifacts.exported_program, artifacts.manifest, artifacts.semantics, artifacts.validation, artifacts.example_inputs)
        }
        status["triton_dump_evidence"] = "see_per_model_compiler_report"
        # Persist a compact runner report. Detailed caches/dumps stay per case.
        status["finished_at_unix"] = time.time()
    except Exception as exc:
        status["error"] = f"{type(exc).__name__}: {exc}"
        status["traceback"] = traceback.format_exc()
        status["finished_at_unix"] = time.time()
        (case_dir / "error.txt").write_text(status["traceback"], encoding="utf-8")
    (case_dir / "status.json").write_text(json.dumps(status, ensure_ascii=False, indent=2, default=str), encoding="utf-8")
    return status


def run_batch(campaign_dir: Path, repo_root: Path, limit: int, device: str, atol: float, rtol: float, retry_failed: bool) -> dict[str, Any]:
    inventory = json.loads((campaign_dir / "inventory.json").read_text(encoding="utf-8"))
    cases_dir = campaign_dir / "cases"
    cases_dir.mkdir(parents=True, exist_ok=True)
    attempts = 0
    for candidate in inventory.get("candidates", []):
        if attempts >= limit:
            break
        slug = re.sub(r"[^A-Za-z0-9_.-]+", "_", candidate["model_id"])
        case_dir = cases_dir / slug
        if (case_dir / "status.json").is_file():
            previous = json.loads((case_dir / "status.json").read_text(encoding="utf-8"))
            if not retry_failed or previous.get("ppu_status") == "passed":
                continue
        candidate_path = case_dir / "candidate.json"
        case_dir.mkdir(parents=True, exist_ok=True)
        candidate_path.write_text(json.dumps(candidate, ensure_ascii=False, indent=2), encoding="utf-8")
        command = [
            sys.executable, str(Path(__file__).resolve()), "run-one",
            "--candidate", str(candidate_path), "--case-dir", str(case_dir),
            "--campaign-dir", str(campaign_dir), "--repo-root", str(repo_root), "--device", device,
            "--atol", str(atol), "--rtol", str(rtol),
        ]
        proc = subprocess.run(command, text=True, capture_output=True, check=False)
        (case_dir / "runner.stdout.log").write_text(proc.stdout, encoding="utf-8")
        (case_dir / "runner.stderr.log").write_text(proc.stderr, encoding="utf-8")
        (case_dir / "runner.exit_code.txt").write_text(f"{proc.returncode}\n", encoding="utf-8")
        if (case_dir / "status.json").is_file():
            status = json.loads((case_dir / "status.json").read_text(encoding="utf-8"))
        else:
            status = {
                "model_id": candidate["model_id"], "revision": candidate["revision"],
                "task_kind": candidate["task_kind"], "ppu_status": "failed",
                "failure_stage": "runner_startup", "error": proc.stderr[-4000:],
                "cpu_baseline": "skipped", "a100_review_status": "pending",
                "counted_for_goal": False, "finished_at_unix": time.time(),
            }
            (case_dir / "status.json").write_text(json.dumps(status, ensure_ascii=False, indent=2), encoding="utf-8")
        attempts += 1
        write_campaign_summary(campaign_dir)
        print(json.dumps({"model_id": candidate["model_id"], "status": status["ppu_status"], "stage": status.get("failure_stage"), "error": status.get("error")}, ensure_ascii=False), flush=True)
    return write_campaign_summary(campaign_dir)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("mode", choices=("inventory", "run-batch", "run-one"))
    parser.add_argument("--hub-root", type=Path, default=Path("/models/hub"))
    parser.add_argument("--campaign-dir", type=Path)
    parser.add_argument("--repo-root", type=Path, default=Path("/workspace/source/flagtree"))
    parser.add_argument("--limit", type=int, default=20)
    parser.add_argument("--retry-failed", action="store_true")
    parser.add_argument("--device", default="cuda:0")
    parser.add_argument("--atol", type=float, default=3e-4)
    parser.add_argument("--rtol", type=float, default=3e-4)
    parser.add_argument("--candidate", type=Path)
    parser.add_argument("--case-dir", type=Path)
    args = parser.parse_args()
    if args.mode == "inventory":
        if args.campaign_dir is None:
            parser.error("inventory requires --campaign-dir")
        result = write_inventory(args.hub_root, args.campaign_dir)
        print(json.dumps({key: result[key] for key in ("candidate_count", "unique_model_ids", "task_kind_counts")}, ensure_ascii=False, indent=2))
        return 0
    if args.mode == "run-one":
        if args.candidate is None or args.case_dir is None:
            parser.error("run-one requires --candidate and --case-dir")
        candidate = json.loads(args.candidate.read_text(encoding="utf-8"))
        result = run_one(candidate, args.case_dir, args.repo_root, args.device, args.atol, args.rtol)
        print(json.dumps({"model_id": result["model_id"], "status": result["ppu_status"], "failure_stage": result.get("failure_stage"), "error": result.get("error")}, ensure_ascii=False))
        return 0 if result["ppu_status"] == "passed" else 1
    if args.campaign_dir is None:
        parser.error("run-batch requires --campaign-dir")
    summary = run_batch(args.campaign_dir, args.repo_root, args.limit, args.device, args.atol, args.rtol, args.retry_failed)
    print(json.dumps({key: summary[key] for key in ("target_unique_models", "candidate_count", "attempted_count", "ppu_closed_loop_pass_count", "a100_review_counts", "failure_stage_counts")}, ensure_ascii=False, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
