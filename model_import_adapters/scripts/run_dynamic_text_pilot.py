#!/usr/bin/env python3
"""CPU-free dynamic text-model pilot with faithful SentenceTransformer output.

Run each attempt in a new directory. This is a pilot, not a 300-model success
counter; batch acceptance must additionally verify logs, exit codes and hashes.
"""
from __future__ import annotations

import argparse
import hashlib
import inspect
import json
import os
from pathlib import Path
import subprocess
import sys
import time
import traceback

PROBES = ((1, 8), (2, 24), (4, 64), (2, 8), (1, 64))
TEXTS = [
    "A short document about neural networks.",
    "A passage describing model compilation.",
    "Dynamic tensor shapes support variable sequence lengths.",
    "The compiler executes the exported model on a PPU.",
]
PAIRS = ["This passage concerns machine learning."] * 4


def write_json(path, value):
    path.write_text(json.dumps(value, ensure_ascii=False, indent=2, default=str, allow_nan=False) + "\n", encoding="utf-8")


def sha256(path):
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def compilation_options(disable_pattern_matcher):
    """Keep normal Inductor defaults unless an explicit diagnosed option is set."""
    return {"pattern_matcher": False} if disable_pattern_matcher else {}


def supports_unused_cache_toggle(model):
    """A config attribute alone does not mean a classifier accepts use_cache."""
    parameters = inspect.signature(model.forward).parameters
    return hasattr(model.config, "use_cache") and (
        "use_cache" in parameters or any(p.kind == inspect.Parameter.VAR_KEYWORD for p in parameters.values())
    )


def validate_local_code_review(snapshot, model_id, revision, review_path):
    """Bind explicit custom-code loading to the exact reviewed cached source."""
    if review_path is None:
        return None
    review = json.loads(review_path.read_text(encoding="utf-8"))
    if review.get("schema_version") != 1 or review.get("status") != "reviewed":
        raise RuntimeError("Local code review schema/status is invalid")
    if review.get("model_id") != model_id or review.get("revision") != revision:
        raise RuntimeError("Local code review model/revision mismatch")
    if Path(review.get("snapshot", "")).resolve() != snapshot.resolve():
        raise RuntimeError("Local code review snapshot mismatch")
    rows = review.get("python_files", [])
    names = [row["path"] for row in rows]
    if not names or len(names) != len(set(names)):
        raise RuntimeError("Local code review requires a nonempty unique source inventory")
    actual = {str(p.relative_to(snapshot)) for p in snapshot.rglob("*.py") if p.is_file()}
    if set(names) != actual:
        raise RuntimeError("Local code review source set mismatch")
    for row in rows:
        relative = Path(row["path"])
        if relative.is_absolute() or ".." in relative.parts or sha256(snapshot / relative) != row.get("sha256"):
            raise RuntimeError("Local code review source hash mismatch")
    return {"path": str(review_path), "sha256": sha256(review_path),
            "model_id": model_id, "revision": revision, "python_files": rows,
            "output_contract": review.get("output_contract")}


def select_transformer_task(config, model_id):
    """Select from the saved architecture, never invent a head from an ID."""
    architectures = config.get("architectures", [])
    if "colbert" in model_id.lower() or any(name in {"HF_ColBERT", "RobertaForCL"} for name in architectures):
        raise RuntimeError(f"Task protocol required for custom retrieval model {model_id}: preserve its saved projection and scoring")
    if any("CausalLM" in name for name in architectures):
        raise RuntimeError(
            f"Task protocol required for causal-LM checkpoint {model_id}: "
            "preserve original prompt and scoring/generation output; "
            "do not replace it with a random classification head or hidden states")
    if any("SequenceClassification" in name for name in architectures):
        return "sequence_classification_logits"
    if "rerank" in model_id.lower():
        raise RuntimeError(f"Task protocol required for reranker {model_id}: saved architecture has no classification head")
    return "token_encoder_last_hidden_state"


def noinstruct_task_outputs(hidden, attention_mask):
    """Keep both documented modes: unnormalized document CLS and query mean."""
    import torch
    document = hidden[:, 0, :]
    query = (hidden * attention_mask.unsqueeze(2)).sum(dim=1) / attention_mask.sum(dim=-1).view(-1, 1)
    return torch.stack((document, query), dim=1)


def encode_sentence_reference(model, texts, *, device, expected_inputs, encode_kwargs=None):
    """Run the original encode pipeline with the same padded tokenizer inputs.

    encode() sorts text rows and normally pads only to the longest text. Keep
    that task pipeline, but enforce the probe padding and verify the actual
    token rows before any source forward call. Always restore the tokenizer.
    """
    original_tokenize = model.tokenize
    had_instance_tokenize = "tokenize" in model.__dict__
    calls = []
    prompt = model.prompts.get(model.default_prompt_name, "") if model.default_prompt_name else ""
    expected_texts = sorted(prompt + text for text in texts)

    def fixed_tokenize(batch_texts, **kwargs):
        is_probe_batch = sorted(batch_texts) == expected_texts
        if is_probe_batch:
            kwargs["padding"] = "max_length"
        encoded = original_tokenize(batch_texts, **kwargs)
        # Prompt-length calculation can tokenize a prompt alone. Only the
        # actual full probe batch is eligible for the input equality check.
        if is_probe_batch:
            def joint_rows(values):
                return sorted(tuple(tuple(values[key][i].tolist()) for key in sorted(expected_inputs))
                              for i in range(len(texts)))
            if any(key not in encoded or encoded[key].shape != value.shape
                   for key, value in expected_inputs.items()):
                raise RuntimeError("Source encode tokenizer Shape does not match the probe")
            if joint_rows(encoded) != joint_rows(expected_inputs):
                raise RuntimeError("Source encode token rows do not match the probe")
            calls.append(True)
        return encoded

    model.tokenize = fixed_tokenize
    try:
        output = model.encode(texts, batch_size=len(texts), convert_to_tensor=True,
                              show_progress_bar=False, device=device, **(encode_kwargs or {}))
        if len(calls) != 1:
            raise RuntimeError("Source encode did not tokenize exactly one matching probe batch")
        return output
    finally:
        if had_instance_tokenize:
            model.tokenize = original_tokenize
        else:
            del model.tokenize


def colbert_document_output(token_embeddings, input_ids, attention_mask, skiplist):
    """Lossless padded multi-vector representation with an explicit final mask channel."""
    import torch

    valid = attention_mask.bool()
    for token_id in skiplist:
        valid = valid & (input_ids != token_id)
    normalized = torch.nn.functional.normalize(token_embeddings, p=2, dim=-1)
    mask = valid.unsqueeze(-1).to(normalized.dtype)
    return torch.cat((normalized * mask, mask), dim=-1)


def encode_colbert_document_reference(model, texts, *, device, expected_inputs):
    """Compare independent native ragged encode to the masked padded IR contract."""
    import torch

    original_tokenize = model.tokenize
    had_instance = "tokenize" in model.__dict__
    prompt = model.prompts.get("document", "")
    expected_texts = sorted(prompt + text for text in texts)
    calls = []

    def fixed_tokenize(batch_texts=None, **kwargs):
        batch_texts = kwargs.pop("texts", batch_texts)
        is_probe = sorted(batch_texts) == expected_texts and kwargs.get("is_query", True) is False
        if is_probe:
            kwargs["pad"] = True
        encoded = original_tokenize(batch_texts, **kwargs)
        if is_probe:
            def rows(values):
                return sorted(tuple(tuple(values[k][i].tolist()) for k in sorted(expected_inputs)) for i in range(len(texts)))
            if any(k not in encoded or encoded[k].shape != v.shape for k, v in expected_inputs.items()) or rows(encoded) != rows(expected_inputs):
                raise RuntimeError("Native ColBERT encode inputs differ from the IR probe")
            calls.append(True)
        return encoded

    model.tokenize = fixed_tokenize
    try:
        outputs = model.encode(texts, is_query=False, prompt_name="document" if "document" in model.prompts else None,
            batch_size=len(texts), convert_to_tensor=True, convert_to_numpy=False,
            show_progress_bar=False, device=device)
        if len(calls) != 1 or len(outputs) != len(texts):
            raise RuntimeError("Native ColBERT encode did not execute exactly one probe batch")
        ids = expected_inputs["input_ids"].to(device)
        valid = model.skiplist_mask(ids, model.skiplist) & expected_inputs["attention_mask"].to(device).bool()
        dimension = outputs[0].shape[-1]
        packed = torch.zeros((*ids.shape, dimension + 1), dtype=outputs[0].dtype, device=device)
        for row, native in enumerate(outputs):
            if native.shape != (int(valid[row].sum().item()), dimension):
                raise RuntimeError("Native ColBERT ragged output length differs from its documented mask")
            packed[row, valid[row], :dimension] = native
        packed[..., -1] = valid.to(packed.dtype)
        return packed
    finally:
        if had_instance:
            model.tokenize = original_tokenize
        else:
            del model.tokenize


def splade_task_output(logits, attention_mask, *, activation_function):
    """Equivalent unchunked native max SPLADE; keep sequence as a SymInt."""
    if activation_function not in {"relu", "log1p_relu"}:
        raise ValueError("Unsupported SPLADE activation")
    values = (logits * attention_mask.unsqueeze(-1).to(logits.dtype)).relu().log1p()
    if activation_function == "log1p_relu":
        values = values.log1p()
    return values.max(dim=1).values


def validate_splade_pipeline(model, *, route=None):
    """Accept only the reviewed MLM + max-pooling task, without top-k pruning."""
    from sentence_transformers.sparse_encoder.models import MLMTransformer, SpladePooling

    modules = list(model.children())
    if route is not None:
        from sentence_transformers.models import Router

        if (route != "document" or len(modules) != 1 or type(modules[0]) is not Router
                or modules[0].default_route != route or route not in modules[0].sub_modules):
            raise RuntimeError("SPLADE router protocol requires the saved native default document route")
        modules = list(modules[0].sub_modules[route])
    if len(modules) != 2 or type(modules[0]) is not MLMTransformer or type(modules[1]) is not SpladePooling:
        raise RuntimeError("SPLADE task requires exactly native MLMTransformer and SpladePooling")
    pool = modules[1]
    if pool.pooling_strategy != "max" or pool.activation_function not in {"relu", "log1p_relu"}:
        raise RuntimeError("SPLADE task requires reviewed max pooling and activation")
    if model.max_active_dims is not None:
        raise RuntimeError("SPLADE top-k pruning requires its own output protocol")
    return pool


def replace_splade_dynamic_pool(model, *, route=None):
    """Replace the Python range over sequence only after saving native outputs."""
    import torch

    pool = validate_splade_pipeline(model, route=route)

    class DynamicSpladePool(torch.nn.Module):
        def forward(self, features):
            features["sentence_embedding"] = splade_task_output(
                features["token_embeddings"], features["attention_mask"],
                activation_function=pool.activation_function)
            return features

    if route is None:
        name = list(model._modules)[1]
        model._modules[name] = DynamicSpladePool().eval()
    else:
        name = f"0.sub_modules.{route}.1"
        model._first_module().sub_modules[route][1] = DynamicSpladePool().eval()
    return {"module": name, "pooling_strategy": pool.pooling_strategy,
            "activation_function": pool.activation_function, "original_chunk_size": pool.chunk_size,
            "route": route,
            "representation": "dense full vocabulary; no pruning, normalization or task-head replacement"}


def disable_unused_sentence_cache(model):
    """Disable an unused Transformer KV output, never the embedding pipeline."""
    transformer = model._first_module()
    inner = getattr(transformer, "auto_model", None)
    if inner is None or not supports_unused_cache_toggle(inner):
        raise RuntimeError("SentenceTransformer backbone has no supported use_cache input")
    before = inner.config.use_cache
    if before is not True:
        raise RuntimeError("SentenceTransformer backbone cache was not enabled")
    inner.config.use_cache = False
    return {"backbone": type(inner).__module__ + "." + type(inner).__name__,
            "before": before, "after": False, "task_output": "sentence_embedding"}


def legacy_unbounded_usable_length(cache, new_seq_length, layer_idx=0):
    """Old unbounded DynamicCache kept all previous tokens, without eviction."""
    del new_seq_length
    if cache.get_max_cache_shape(layer_idx) != -1:
        raise RuntimeError("Legacy compatibility accepts only unbounded DynamicCache")
    return cache.get_seq_length(layer_idx)


def install_local_legacy_cache(model):
    """Restore an old API only in the reviewed custom model's module namespace."""
    from transformers.cache_utils import DynamicCache

    inner = getattr(model._first_module(), "auto_model", None)
    if inner is None or inner.config.use_cache is not True:
        raise RuntimeError("Legacy cache compatibility requires an enabled native task cache")
    module = sys.modules[type(inner).__module__]
    if not module.__name__.startswith("transformers_modules.") or getattr(module, "DynamicCache", None) is not DynamicCache:
        raise RuntimeError("Legacy cache compatibility requires reviewed custom DynamicCache binding")
    if hasattr(DynamicCache, "get_usable_length"):
        raise RuntimeError("Native DynamicCache already exposes the legacy method")

    class LegacyUnboundedDynamicCache(DynamicCache):
        def get_usable_length(self, new_seq_length, layer_idx=0):
            return legacy_unbounded_usable_length(self, new_seq_length, layer_idx)

    module.DynamicCache = LegacyUnboundedDynamicCache
    return {"module": module.__name__, "method": "get_usable_length",
            "semantics": "unbounded previous sequence length; no eviction or output change",
            "global_transformers_modified": False}


def compare_probe_outputs(expected, actual, *, comparator, kind, output_dir,
                          batch, sequence, inputs):
    """Persist the actual failing tensors without changing comparison policy."""
    try:
        return comparator(expected, actual, atol=3e-4, rtol=3e-4)
    except Exception as exc:
        import numpy as np

        arrays = {key: value.detach().cpu().numpy() for key, value in inputs.items()}
        arrays.update(expected_output=expected.detach().cpu().numpy(),
                      actual_output=actual.detach().cpu().numpy())
        stem = f"comparison-failure-{kind}-{batch}x{sequence}"
        archive = output_dir / f"{stem}.npz"
        np.savez_compressed(archive, **arrays)
        left, right = arrays["expected_output"], arrays["actual_output"]
        same_contract = left.shape == right.shape and left.dtype == right.dtype
        finite = bool(np.isfinite(left).all() and np.isfinite(right).all())
        metrics = {}
        if same_contract and finite:
            delta = np.abs(left.astype(np.float64) - right.astype(np.float64))
            limit = 3e-4 + 3e-4 * np.abs(left.astype(np.float64))
            bad = delta > limit
            metrics = {"max_abs_error": float(delta.max()) if delta.size else 0.0,
                       "failed_elements": int(bad.sum()),
                       "first_failed_indices": np.argwhere(bad)[:16].tolist()}
        write_json(output_dir / f"{stem}.json", {
            "kind": kind, "batch": batch, "sequence": sequence,
            "expected_shape": list(left.shape), "actual_shape": list(right.shape),
            "expected_dtype": str(left.dtype), "actual_dtype": str(right.dtype),
            "same_contract": same_contract, "finite": finite, "atol": 3e-4, "rtol": 3e-4,
            "archive": str(archive), "sha256": sha256(archive),
            "raw_error": f"{type(exc).__name__}: {exc}", **metrics})
        raise


def replace_apex_fused_norms(model):
    """Replace T5's Apex RMSNorm; never turn mean-subtracting LayerNorm into RMSNorm."""
    import torch

    class ManualRmsNorm(torch.nn.Module):
        def __init__(self, normalized_shape, eps, weight):
            super().__init__()
            self.normalized_shape = tuple(normalized_shape) if isinstance(normalized_shape, (tuple, list)) else (int(normalized_shape),)
            self.eps = float(eps)
            self.weight = torch.nn.Parameter(weight.detach().clone())

        def forward(self, input):
            variance = input.float().pow(2).mean(dim=-1, keepdim=True)
            output = input * torch.rsqrt(variance + self.eps)
            return output * self.weight

    replaced = []
    for name, child in list(model.named_children()):
        class_name = type(child).__name__
        if class_name == "FusedRMSNorm" and type(child).__module__.startswith("apex.normalization") and hasattr(child, "weight"):
            shape = getattr(child, "normalized_shape", child.weight.shape)
            eps = getattr(child, "eps", getattr(child, "epsilon", 1e-5))
            if tuple(shape) != tuple(child.weight.shape) or len(tuple(shape)) != 1:
                raise RuntimeError("T5 RMSNorm fallback requires a single last-feature axis")
            model._modules[name] = ManualRmsNorm(shape, eps, child.weight).to(child.weight.device, child.weight.dtype)
            replaced.append(name)
        else:
            replaced.extend(f"{name}.{item}" for item in replace_apex_fused_norms(child))
    return replaced


def run(args):
    out = args.output.resolve()
    out.mkdir(parents=True, exist_ok=False)
    # Process-local settings; no daemon or global toolchain changes.
    os.environ.update(
        TORCHINDUCTOR_WORKER_START="spawn", TORCHINDUCTOR_COMPILE_THREADS="1",
        TRITON_KERNEL_DUMP="1", TRITON_DUMP_DIR=str(out / "triton-dump"),
        TORCHINDUCTOR_CACHE_DIR=str(out / "inductor-cache"),
        TRITON_CACHE_DIR=str(out / "triton-cache"), HF_HUB_OFFLINE="1",
    )
    status = {"model_id": args.model_id, "status": "failed", "failure_stage": "preflight", "counted_for_300": False,
              "cpu_model_forward": "not_run", "a100_review": "pending", "probes": []}
    write_json(out / "command.json", {"argv": sys.argv, "reproduce": [sys.executable, *sys.argv], "use_new_output_directory": True})
    try:
        import importlib.metadata as metadata
        import numpy as np
        import torch
        import triton
        from transformers import AutoModel, AutoModelForSequenceClassification, AutoTokenizer
        from sentence_transformers import SentenceTransformer, SparseEncoder
        from run_unified_ir_text_campaign import compare_ppu_tensors, artifact_index, selected_snapshot
        from model_import_adapters.unified_ir import export_core_aten, load_core_aten
        from model_import_adapters.compiled_execution import _retarget_factory_devices

        torch.manual_seed(0)
        torch.cuda.set_device(args.device)
        if not torch.cuda.is_available() or torch.cuda.get_device_name(args.device) != "PPU-ZW810E":
            raise RuntimeError("Expected a visible PPU-ZW810E")
        snapshot, revision = selected_snapshot(args.hub_root / ("models--" + args.model_id.replace("/", "--")))
        if snapshot is None:
            raise RuntimeError("No cached snapshot")
        if args.revision is not None and revision != args.revision:
            raise RuntimeError(f"Snapshot revision drift: expected {args.revision}, selected {revision}")
        config = json.loads((snapshot / "config.json").read_text())
        if args.disable_inner_reference_compile and config.get("model_type") != "modernbert":
            raise RuntimeError("Inner reference-compile handling is only validated for ModernBERT")
        if args.disable_apex_fused_norm and config.get("model_type") != "t5":
            raise RuntimeError("Apex fused norm handling is only validated for T5")
        status.update(model_id=args.model_id, revision=revision, snapshot=str(snapshot))
        write_json(out / "environment.json", {
            "device": args.device, "device_name": torch.cuda.get_device_name(args.device),
            "visible_devices": torch.cuda.device_count(), "torch": torch.__version__,
            "python": sys.version, "triton": {"version": triton.__version__, "module_path": triton.__file__},
            "versions": {p: metadata.version(p) for p in ("transformers", "sentence-transformers")},
            "parameter_dtype_policy": "FP32", "cpu_model_forward": "not_run",
            "tf32_matmul": torch.backends.cuda.matmul.allow_tf32,
            "tf32_cudnn": torch.backends.cudnn.allow_tf32,
            "source_baseline": json.loads((args.repo_root / "source-baseline.json").read_text()),
        })
        status["failure_stage"] = "model_load"
        local_code_review = validate_local_code_review(snapshot, args.model_id, revision, args.local_code_review)
        if local_code_review:
            write_json(out / "local-code-review.json", local_code_review)
        asymmetric = args.task_protocol == "noinstruct_dual"
        colbert = args.task_protocol == "colbert_document"
        sparse = args.task_protocol in {"splade_max", "splade_document"}
        sparse_route = "document" if args.task_protocol == "splade_document" else None
        reference_kwargs = {"convert_to_sparse_tensor": False, "save_to_cpu": False} if sparse else None
        if asymmetric and (args.model_id != "avsolatorio/NoInstruct-small-Embedding-v0" or
                           revision != "b38747000553d8268915c95a55fc87e707c9aadd"):
            raise RuntimeError("NoInstruct task protocol is verified only for its fixed reviewed snapshot")
        is_sentence = ((snapshot / "modules.json").is_file() or colbert) and not asymmetric
        if args.disable_unused_sentence_cache and not is_sentence:
            raise RuntimeError("Unused sentence-cache handling requires a SentenceTransformer pipeline")
        selected_task = None if is_sentence else select_transformer_task(config, args.model_id)
        is_classifier = selected_task == "sequence_classification_logits"
        if config.get("quantization_config"):
            raise RuntimeError("Quantized model requires its own task/dtype protocol")
        if is_sentence:
            loader = SparseEncoder if sparse else SentenceTransformer
            if colbert:
                if args.task_package_wheel is None or sha256(args.task_package_wheel) != "d633c7fcc058b7786e11e14d303fe79e91e1b4a5e263a1e619e6fe6f77a27c2b":
                    raise RuntimeError("ColBERT requires the reviewed unmodified PyLate 1.4.0 wheel")
                sys.path.insert(0, str(args.task_package_wheel))
                from pylate.models import ColBERT, Dense
                loader = ColBERT
            model = loader(str(snapshot), device=args.device, local_files_only=True,
                trust_remote_code=local_code_review is not None,
                model_kwargs={"attn_implementation": "eager"}).float().eval()
            if sparse:
                validate_splade_pipeline(model, route=sparse_route)
            if colbert:
                from sentence_transformers.models import Transformer
                children = list(model.children())
                if (len(children) < 2 or type(children[0]) is not Transformer
                        or any(type(child) is not Dense for child in children[1:])):
                    raise RuntimeError("ColBERT document protocol requires saved Transformer and Dense projection modules")
                if not (snapshot / "modules.json").is_file() and config.get("architectures") != ["HF_ColBERT"]:
                    raise RuntimeError("ColBERT protocol requires an explicitly saved learned projection")
            task = "colbert_document_masked_multivectors" if colbert else "splade_full_vocabulary_max_scores" if sparse else "sentence_embedding_full_pipeline"
            prompt = model.prompts.get("document", "") if colbert else model.prompts.get(model.default_prompt_name, "") if model.default_prompt_name else ""
            prompt_length = model._get_prompt_length(prompt) if prompt else None
            truncate_dim = getattr(model, "truncate_dim", None)
            pipeline = [{"name": name, "class": type(child).__module__ + "." + type(child).__name__} for name, child in model.named_children()]
            class SentenceOutput(torch.nn.Module):
                def __init__(self, inner):
                    super().__init__()
                    self.inner = inner
                def forward(self, input_ids, attention_mask, token_type_ids=None):
                    features = {"input_ids": input_ids, "attention_mask": attention_mask.clone()}
                    if token_type_ids is not None:
                        features["token_type_ids"] = token_type_ids
                    if prompt_length is not None:
                        features["prompt_length"] = prompt_length
                    output = self.inner(features)
                    if colbert:
                        return colbert_document_output(output["token_embeddings"], input_ids, attention_mask, model.skiplist)
                    result = output["sentence_embedding"]
                    return result[..., :truncate_dim] if truncate_dim is not None else result
            module = SentenceOutput(model).eval()
            def prepare(batch, sequence):
                if sequence > model.max_seq_length_original:
                    raise RuntimeError("Probe sequence exceeds the model's original max_seq_length")
                model.max_seq_length = sequence
                if colbert:
                    model.document_length = sequence
                    return model.tokenize([prompt + text for text in TEXTS[:batch]], is_query=False, pad=True)
                result = model.tokenize([prompt + text for text in TEXTS[:batch]], padding="max_length")
                # Native Router tokenization includes a string task marker;
                # the graph inputs remain tensors and retain the saved default route.
                if sparse_route:
                    if result.get("task") != sparse_route:
                        raise RuntimeError("SPLADE tokenizer did not use the saved document route")
                    result.pop("task")
                return result
            model.max_seq_length_original = model.document_length if colbert else model.max_seq_length
        else:
            if local_code_review:
                raise RuntimeError("Reviewed local code currently requires a complete saved sentence pipeline")
            if sparse:
                raise RuntimeError("SPLADE task requires a saved native SparseEncoder modules.json")
            tokenizer = AutoTokenizer.from_pretrained(str(snapshot), local_files_only=True, trust_remote_code=False)
            cls = AutoModelForSequenceClassification if is_classifier else AutoModel
            model, loading = cls.from_pretrained(str(snapshot), local_files_only=True, trust_remote_code=False,
                attn_implementation="eager", output_loading_info=True)
            if loading.get("missing_keys") or loading.get("mismatched_keys"):
                raise RuntimeError(f"Model loading would introduce unverified weights: {loading}")
            model = model.float().to(args.device).eval()
            # Token encoders/classifiers expose no cache as a task output. Avoid
            # tracing an unused DynamicCache; retain the source model's default
            # cache behavior in the independent original-output comparison.
            disable_unused_cache = supports_unused_cache_toggle(model)
            task = "noinstruct_document_cls_and_query_mean" if asymmetric else selected_task
            pipeline = [{"class": type(model).__module__ + "." + type(model).__name__}]
            prompt, prompt_length, truncate_dim = "", None, None
            class TransformerOutput(torch.nn.Module):
                def __init__(self, inner):
                    super().__init__()
                    self.inner = inner
                def forward(self, input_ids, attention_mask, token_type_ids=None):
                    kwargs = {"input_ids": input_ids, "attention_mask": attention_mask, "return_dict": True}
                    if token_type_ids is not None:
                        kwargs["token_type_ids"] = token_type_ids
                    if disable_unused_cache:
                        kwargs["use_cache"] = False
                    output = self.inner(**kwargs)
                    if asymmetric:
                        return noinstruct_task_outputs(output.last_hidden_state, attention_mask)
                    return output.logits if is_classifier else output.last_hidden_state
            module = TransformerOutput(model).eval()
            def prepare(batch, sequence):
                result = tokenizer(TEXTS[:batch], PAIRS[:batch] if is_classifier else None,
                    padding="max_length", truncation=True, max_length=sequence, return_tensors="pt")
                if "token_type_ids" not in inspect.signature(model.forward).parameters:
                    result.pop("token_type_ids", None)
                return result

        if args.legacy_unbounded_cache:
            if not local_code_review or not is_sentence or not args.disable_unused_sentence_cache:
                raise RuntimeError("Legacy cache handling requires reviewed sentence source and original cache references")
            adaptation = install_local_legacy_cache(model)
            write_json(out / "legacy-unbounded-cache-adaptation.json", adaptation)
        files = []
        # Hash complete snapshot, including Dense/pooling/prompt/tokenizer files.
        for path in sorted(p for p in snapshot.rglob("*") if p.is_file()):
            files.append({"relative_path": str(path.relative_to(snapshot)), "size_bytes": path.stat().st_size, "sha256": sha256(path)})
        write_json(out / "model-files.json", {"model_id": args.model_id, "revision": revision, "snapshot": str(snapshot), "files": files})
        write_json(out / "task-protocol.json", {"task": task, "pipeline": pipeline, "texts": TEXTS, "text_pairs": PAIRS if is_classifier and not is_sentence else None,
            "prompt": prompt, "prompt_length": prompt_length, "truncate_dim": truncate_dim, "probes": PROBES,
            "dtype": "float32", "output_semantics": (
                "original ColBERT normalized document multivectors, zero padding and explicit last-channel validity mask"
                if colbert else
                "original SparseEncoder full vocabulary scores; native sparse values, dense representation"
                if sparse else "original full SentenceTransformer pipeline" if is_sentence else task),
            "task_protocol": args.task_protocol,
            "sparse_route": sparse_route,
            "local_code_review": local_code_review,
            "legacy_unbounded_cache": args.legacy_unbounded_cache,
            "compile_options": compilation_options(args.disable_inductor_pattern_matcher),
            "colbert_document_contract": {"document_prefix": model.document_prefix,
                "document_prefix_id": model.document_prefix_id, "skiplist": model.skiplist,
                "native_reference": "unmodified PyLate ColBERT.encode(is_query=False)",
                "last_channel": "validity_mask_not_embedding_dimension",
                "wheel": str(args.task_package_wheel), "wheel_sha256": sha256(args.task_package_wheel),
                "query_scope": "not validated; original query path retained"} if colbert else None,
            "output_axes": {"1": ["document_cls_unnormalized", "query_masked_mean_unnormalized"]} if asymmetric else None,
            "task_reference": {"path": "README.md", "sha256": sha256(snapshot / "README.md")} if asymmetric else None,
            "dim_policy": args.dim_policy,
            "inner_reference_compile_policy": "capture_original_then_disable_for_PT2" if args.disable_inner_reference_compile else "original",
            "apex_fused_norm_policy": "capture_original_then_lower_RMSNorm_to_ATen" if args.disable_apex_fused_norm else "original",
            "sentence_cache_policy": "capture_original_then_disable_unused_KV_output" if args.disable_unused_sentence_cache else "original",
            "sentence_source_padding_policy": "same_max_length_and_verified_token_rows" if is_sentence else "not_applicable",
            "attention_implementation": "eager", "warmup": 3, "measured_iterations": 10,
            "cache_policy": "original_sentence_pipeline" if is_sentence else ("disable_unused_task_cache; source comparison retains default" if disable_unused_cache else "not_applicable"),
            "timing_scope": "PT2 forward only; tokenization, compilation and serialization excluded"})
        encoded = prepare(2, 24)
        keys = [key for key in ("input_ids", "attention_mask", "token_type_ids") if key in encoded]
        original_outputs = {}
        if sparse:
            status["failure_stage"] = "ppu_original_splade_reference"
            checks = []
            for batch, sequence in PROBES:
                source_encoded = prepare(batch, sequence)
                with torch.inference_mode():
                    original = encode_sentence_reference(model, TEXTS[:batch], device=args.device,
                        expected_inputs=source_encoded, encode_kwargs=reference_kwargs)
                    native_sparse = encode_sentence_reference(model, TEXTS[:batch], device=args.device,
                        expected_inputs=source_encoded,
                        encode_kwargs={"convert_to_sparse_tensor": True, "save_to_cpu": False})
                    comparison = compare_ppu_tensors(original, native_sparse.to_dense(), atol=0, rtol=0)
                original_outputs[(batch, sequence)] = original.detach().clone()
                np.savez_compressed(out / f"original-before-splade-{batch}x{sequence}.npz",
                                    output=original.detach().cpu().numpy())
                checks.append({"batch": batch, "sequence": sequence, "sparse_dense_comparison": comparison})
            adaptation = replace_splade_dynamic_pool(model, route=sparse_route)
            write_json(out / "splade-dynamic-pool-adaptation.json", {
                **adaptation, "original_probes_saved": len(original_outputs), "checks": checks,
                "scope": "native sparse values retained as full vocabulary dense scores; only sequence loop removed"})
            encoded = prepare(2, 24)
        if args.disable_unused_sentence_cache:
            status["failure_stage"] = "ppu_original_sentence_cache_reference"
            for batch, sequence in PROBES:
                source_encoded = prepare(batch, sequence)
                with torch.inference_mode():
                    original = encode_sentence_reference(model, TEXTS[:batch], device=args.device,
                                                         expected_inputs=source_encoded)
                torch.cuda.synchronize()
                original_outputs[(batch, sequence)] = original.detach().clone()
                np.savez_compressed(out / f"original-before-unused-cache-{batch}x{sequence}.npz",
                                    output=original.detach().cpu().numpy())
            adaptation = disable_unused_sentence_cache(model)
            write_json(out / "unused-sentence-cache-adaptation.json", {
                **adaptation, "original_probes_saved": len(original_outputs),
                "scope": "Only unused KV output; original embedding outputs compared at every probe"})
            encoded = prepare(2, 24)
        if args.disable_inner_reference_compile:
            status["failure_stage"] = "ppu_original_inner_compiled_reference"
            # Preserve original task outputs before changing this operational
            # setting; no CPU inference and no comparison against a replacement
            # pooling or task head. Persist originals even if export later fails.
            for batch, sequence in PROBES:
                source_encoded = prepare(batch, sequence)
                source_inputs = tuple(source_encoded[key].to(args.device) for key in keys)
                with torch.inference_mode():
                    if is_sentence:
                        original = (encode_colbert_document_reference(model, TEXTS[:batch], device=args.device, expected_inputs=source_encoded)
                                    if colbert else encode_sentence_reference(model, TEXTS[:batch], device=args.device, expected_inputs=source_encoded))
                    else:
                        raw = model(**dict(zip(keys, source_inputs)), return_dict=True)
                        original = raw.logits if is_classifier else raw.last_hidden_state
                torch.cuda.synchronize()
                original_outputs[(batch, sequence)] = original.detach().clone()
                np.savez_compressed(out / f"original-before-adaptation-{batch}x{sequence}.npz", output=original.detach().cpu().numpy())
            switches = []
            visited_configs = set()
            for name, child in model.named_modules():
                child_config = getattr(child, "config", None)
                if child_config is None or id(child_config) in visited_configs or not hasattr(child_config, "reference_compile"):
                    continue
                visited_configs.add(id(child_config))
                switches.append({"module": name, "before": child_config.reference_compile, "after": False})
                child_config.reference_compile = False
            if not switches:
                raise RuntimeError("No ModernBERT reference_compile setting was observed")
            write_json(out / "inner-reference-compile-adaptation.json", {"switches": switches, "original_probes_saved": len(original_outputs), "scope": "whole PT2 is still compiled fullgraph"})
            encoded = prepare(2, 24)
        if args.disable_apex_fused_norm:
            status["failure_stage"] = "ppu_original_apex_norm_reference"
            for batch, sequence in PROBES:
                source_encoded = prepare(batch, sequence)
                source_inputs = tuple(source_encoded[key].to(args.device) for key in keys)
                with torch.inference_mode():
                    original = (encode_colbert_document_reference(model, TEXTS[:batch], device=args.device, expected_inputs=source_encoded)
                                    if colbert else encode_sentence_reference(model, TEXTS[:batch], device=args.device, expected_inputs=source_encoded))
                torch.cuda.synchronize()
                original_outputs[(batch, sequence)] = original.detach().clone()
                np.savez_compressed(out / f"original-before-apex-norm-{batch}x{sequence}.npz", output=original.detach().cpu().numpy())
            switches = replace_apex_fused_norms(model)
            if not switches:
                raise RuntimeError("No Apex fused norm module was found for --disable-apex-fused-norm")
            write_json(out / "apex-fused-norm-adaptation.json", {"switches": switches, "original_probes_saved": len(original_outputs), "scope": "whole PT2 is still compiled fullgraph"})
            encoded = prepare(2, 24)
        example = tuple(encoded[key].to(args.device) for key in keys)
        status["failure_stage"] = "core_aten_export_roundtrip"
        if args.dim_policy == "bounded_dynamic":
            # Explicit non-static hints retain the same requested bounds. No
            # automatic retry/specialization: this choice is in the protocol.
            batch_dim = torch.export.Dim.DYNAMIC(min=1, max=4)
            sequence_dim = torch.export.Dim.DYNAMIC(min=8, max=64)
        else:
            batch_dim = torch.export.Dim("batch", min=1, max=4)
            sequence_dim = torch.export.Dim("sequence", min=8, max=64)
        dynamics = tuple({0: batch_dim, 1: sequence_dim} for _ in example)
        ep, artifacts, details = export_core_aten(module, example, out / "artifacts", dynamic_shapes=dynamics,
            strict=False, source={"kind": "pytorch", "model_id": args.model_id, "revision": revision,
                "snapshot": str(snapshot), "task_kind": task, "pipeline": pipeline, "reference_device": args.device}, atol=3e-4, rtol=3e-4)
        if not ep.range_constraints:
            raise RuntimeError("Dynamic ranges did not survive export")
        if any(axis["kind"] != "symbolic" for inp in details["manifest"]["shape_constraints"]["inputs"] for axis in inp["axes"][:2]):
            raise RuntimeError("A requested dynamic input axis was specialized")
        write_json(out / "shape-constraints.json", details["manifest"]["shape_constraints"])
        # Export's temporary roundtrip GraphModule can participate in cycles.
        # Release those allocations before auditing or reloading large weights.
        import gc
        memory_before = {"allocated": torch.cuda.memory_allocated(args.device),
                         "reserved": torch.cuda.memory_reserved(args.device)}
        del ep
        gc.collect()
        torch.cuda.empty_cache()
        write_json(out / "post-export-memory.json", {"before": memory_before,
            "after": {"allocated": torch.cuda.memory_allocated(args.device),
                      "reserved": torch.cuda.memory_reserved(args.device)}})
        status["failure_stage"] = "semantic_audit"
        command = [sys.executable, str(args.repo_root / "model_import_adapters/scripts/audit_core_aten_semantic_rules.py"),
            "--core-aten", str(artifacts.exported_program), "--output-dir", str(out / "semantic-rule-audit"),
            "--entry", args.model_id, "--source-kind", "pytorch", "--dynamic-shapes-requested"]
        if args.semantic_audit_contract:
            command.extend(("--semantic-contract-json", str(artifacts.semantics)))
        proc = subprocess.run(command, capture_output=True, text=True)
        (out / "audit.stdout.log").write_text(proc.stdout)
        (out / "audit.stderr.log").write_text(proc.stderr)
        (out / "audit.exit_code.txt").write_text(str(proc.returncode) + "\n")
        if proc.returncode:
            raise RuntimeError(f"Semantic audit exited with {proc.returncode}")
        loaded = load_core_aten(artifacts.exported_program).module().to(args.device)
        relocated = _retarget_factory_devices(loaded, args.device)
        compiled = torch.compile(loaded, fullgraph=True, dynamic=True,
                                 options=compilation_options(args.disable_inductor_pattern_matcher))
        for batch, sequence in PROBES:
            status["failure_stage"] = f"ppu_shape_{batch}x{sequence}"
            encoded = prepare(batch, sequence)
            if any(list(encoded[key].shape) != [batch, sequence] for key in keys):
                raise RuntimeError("Tokenizer probe shape did not match the declared contract")
            inputs = tuple(encoded[key].to(args.device) for key in keys)
            def compare_probe(expected, actual, kind):
                return compare_probe_outputs(expected, actual, comparator=compare_ppu_tensors,
                    kind=kind, output_dir=out, batch=batch, sequence=sequence, inputs=encoded)
            with torch.inference_mode():
                reference = module(*inputs)
                if (batch, sequence) in original_outputs:
                    original = original_outputs[(batch, sequence)]
                    source_comparison = compare_probe(original, reference, "source")
                elif is_sentence:
                    original = (encode_colbert_document_reference(model, TEXTS[:batch], device=args.device, expected_inputs=encoded)
                                if colbert else encode_sentence_reference(model, TEXTS[:batch], device=args.device, expected_inputs=encoded))
                    source_comparison = compare_probe(original, reference, "source")
                else:
                    original_kwargs = {key: value for key, value in zip(keys, inputs)}
                    raw = model(**original_kwargs, return_dict=True)
                    if asymmetric:
                        # Independent literal reference from the cached model
                        # card; do not compare the helper against itself.
                        hidden = raw.last_hidden_state
                        vectors = hidden * inputs[1].unsqueeze(2)
                        query = vectors.sum(dim=1) / inputs[1].sum(dim=-1).view(-1, 1)
                        original = torch.stack((hidden[:, 0, :], query), dim=1)
                    else:
                        original = raw.logits if is_classifier else raw.last_hidden_state
                    source_comparison = compare_probe(original, reference, "source")
                restored = loaded(*inputs)
                roundtrip_comparison = compare_probe(reference, restored, "roundtrip")
                torch.cuda.synchronize()
                started = time.perf_counter()
                actual = compiled(*inputs)
                torch.cuda.synchronize()
                first_call_s = time.perf_counter() - started
                comparison = compare_probe(reference, actual, "compiled")
                for _ in range(3):
                    compiled(*inputs)
                torch.cuda.synchronize()
                samples = []
                for _ in range(10):
                    torch.cuda.synchronize()
                    start = time.perf_counter()
                    compiled(*inputs)
                    torch.cuda.synchronize()
                    samples.append((time.perf_counter() - start) * 1000)
            archive = out / f"probe-{batch}x{sequence}.npz"
            np.savez_compressed(archive, **{key: encoded[key].numpy() for key in keys},
                original_output=original.detach().cpu().numpy(), eager_output=reference.detach().cpu().numpy(),
                restored_output=restored.detach().cpu().numpy(), compiled_output=actual.detach().cpu().numpy())
            status["probes"].append({"batch": batch, "sequence": sequence, "input_keys": keys,
                "archive": str(archive), "sha256": sha256(archive), "source_comparison": source_comparison,
                "roundtrip_comparison": roundtrip_comparison, "compiled_comparison": comparison,
                "first_call_s": first_call_s, "samples_ms": samples,
                "mean_ms": float(np.mean(samples)), "p50_ms": float(np.percentile(samples, 50)),
                "p95_ms": float(np.percentile(samples, 95)), "p99_ms": float(np.percentile(samples, 99))})
            write_json(out / "progress.json", status)
            print(json.dumps({"model_id": args.model_id, "shape": [batch, sequence], "status": "passed", "mean_ms": float(np.mean(samples))}), flush=True)
        evidence = []
        for directory in ("triton-dump", "inductor-cache", "triton-cache"):
            evidence.extend({"root": directory, **record} for record in artifact_index(out / directory))
        write_json(out / "compiler-file-index.json", evidence)
        status.update(status="passed", failure_stage=None, fullgraph=True, dynamic_compile=True,
            device=torch.cuda.get_device_name(args.device), relocated_factory_nodes=relocated,
            triton_stage_suffixes=sorted({record["suffix"] for record in evidence if record["suffix"] in {".ttir", ".ttgir", ".llir", ".hgbin"}}),
            artifacts=artifacts.as_dict(), acceptance="pilot_passed_pending_batch_evidence_gate")
    except Exception as exc:
        status.update(error=f"{type(exc).__name__}: {exc}", traceback=traceback.format_exc())
        (out / "error.txt").write_text(status["traceback"], encoding="utf-8")
        print(status["traceback"], file=sys.stderr, flush=True)
    status["finished_at_unix"] = time.time()
    write_json(out / "report.json", status)
    (out / "exit-code.txt").write_text("0\n" if status["status"] == "passed" else "1\n")
    index = [{"path": str(path.relative_to(out)), "size_bytes": path.stat().st_size, "sha256": sha256(path)}
        for path in sorted(out.rglob("*")) if path.is_file() and not any(part in {"inductor-cache", "triton-cache", "triton-dump"} for part in path.relative_to(out).parts)]
    write_json(out / "evidence-sha256.json", index)
    print(json.dumps({"model_id": args.model_id, "status": status["status"], "failure_stage": status["failure_stage"]}), flush=True)
    return 0 if status["status"] == "passed" else 1


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--model-id", required=True)
    parser.add_argument("--revision")
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--repo-root", type=Path, required=True)
    parser.add_argument("--hub-root", type=Path, default=Path("/models/hub"))
    parser.add_argument("--device", default="cuda:0")
    parser.add_argument("--dim-policy", choices=("named", "bounded_dynamic"), default="named")
    parser.add_argument("--disable-inner-reference-compile", action="store_true")
    parser.add_argument("--disable-apex-fused-norm", action="store_true")
    parser.add_argument("--disable-unused-sentence-cache", action="store_true")
    parser.add_argument("--task-protocol", choices=("auto", "noinstruct_dual", "splade_max", "splade_document", "colbert_document"), default="auto")
    parser.add_argument("--semantic-audit-contract", action="store_true")
    parser.add_argument("--local-code-review", type=Path)
    parser.add_argument("--legacy-unbounded-cache", action="store_true")
    parser.add_argument("--disable-inductor-pattern-matcher", action="store_true")
    parser.add_argument("--task-package-wheel", type=Path)
    return run(parser.parse_args())


if __name__ == "__main__":
    raise SystemExit(main())
