#!/usr/bin/env python3
"""Read-only cache inventory explaining candidate shortfalls; no model loading."""
from __future__ import annotations

import argparse
from collections import Counter
import hashlib
import json
from pathlib import Path

from run_unified_ir_text_campaign import TEXT_MODEL_TYPES, candidate_for_repo, selected_snapshot


def inspect(root: Path) -> dict:
    rows = []
    for repo in sorted(root.glob("models--*")):
        snapshot, revision = selected_snapshot(repo)
        row = {"model_id": repo.name.removeprefix("models--").replace("--", "/"), "revision": revision, "snapshot": str(snapshot) if snapshot else None, "legacy_eligible": False, "reasons": []}
        config_path = snapshot / "config.json" if snapshot else None
        if config_path is None or not config_path.is_file():
            row["reasons"].append("root_config_missing")
            rows.append(row)
            continue
        try:
            config = json.loads(config_path.read_text(encoding="utf-8"))
            row["model_type"] = config.get("model_type")
            row["architectures"] = config.get("architectures")
            row["config_sha256"] = hashlib.sha256(config_path.read_bytes()).hexdigest()
            row["legacy_eligible"] = candidate_for_repo(repo) is not None
            text = str(config.get("model_type", "")).lower() in TEXT_MODEL_TYPES or any(word in " ".join(config.get("architectures") or []).lower() for word in ("bert", "roberta", "mpnet", "electra", "deberta"))
            row["text_architecture_hint"] = text
            if not text:
                row["reasons"].append("non_text_architecture")
            if config.get("auto_map"):
                row["reasons"].append("auto_map_present")
            if config.get("quantization_config"):
                row["reasons"].append("quantization_present")
            # Only root model weights or their indexed shards can establish
            # transformer completeness; a Dense/pooling submodule is not enough.
            row["root_weight_files"] = [p.name for p in snapshot.glob("*") if p.is_file() and p.suffix in {".bin", ".safetensors"}]
            row["root_weight_indexes"] = [p.name for p in snapshot.glob("*.index.json") if p.is_file()]
            if not row["root_weight_files"] and not row["root_weight_indexes"]:
                row["reasons"].append("root_transformer_weights_missing")
            modules_path = snapshot / "modules.json"
            if modules_path.exists():
                modules = json.loads(modules_path.read_text(encoding="utf-8"))
                row["sentence_transformer_modules"] = modules
                # Inspect the class name, not the package prefix:
                # sentence_transformers.models.Dense.Dense is not Transformer.
                row["extra_pipeline_modules"] = [m for m in modules if m.get("type", "").rsplit(".", 1)[-1].lower() not in {"transformer", "pooling", "normalize"}]
                for module in modules:
                    if "pooling" not in module.get("type", "").lower():
                        continue
                    pooling_path = snapshot / module.get("path", "") / "config.json"
                    if pooling_path.exists():
                        pooling = json.loads(pooling_path.read_text(encoding="utf-8"))
                        row["pooling_config"] = pooling
                        special = {k: v for k, v in pooling.items() if "weighted" in k.lower() or "lasttoken" in k.lower()}
                        if special and not any(bool(v) for v in special.values()):
                            row["reasons"].append("legacy_rejects_disabled_pooling_flags")
                        elif any(bool(v) for v in special.values()):
                            row["reasons"].append("active_extended_pooling")
            if not row["legacy_eligible"] and not row["reasons"]:
                row["reasons"].append("other_adapter_filter")
        except (OSError, ValueError, TypeError, KeyError) as exc:
            row["reasons"].append("metadata_error")
            row["error"] = f"{type(exc).__name__}: {exc}"
        rows.append(row)
    return {"scope": "cache metadata inspection; no runtime success claim", "repositories": len(rows), "legacy_eligible_count": sum(r["legacy_eligible"] for r in rows), "reason_counts": dict(Counter(reason for r in rows for reason in r["reasons"])), "models": rows}


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--hub-root", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    if args.output.exists():
        raise SystemExit("use a new output path to retain historical inventory")
    report = inspect(args.hub_root)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({k: report[k] for k in ("repositories", "legacy_eligible_count", "reason_counts")}, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
