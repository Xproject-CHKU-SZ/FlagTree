#!/usr/bin/env python3
"""Build an opt-in exact-shape policy from an independently audited pair."""
import argparse,json
from pathlib import Path
import sys
sys.path.insert(0,str(Path(__file__).parents[1]/"src"))
from model_import_adapters.replay_policy import digest,policy_document
from model_import_adapters.prepared_policy import bind_discovery_preprocessing
from audit_dynamic_shape_pair import audit_reports
from benchmark_scene_pair import sha256


def main():
 p=argparse.ArgumentParser(description=__doc__)
 for name in ('calibration','comparison','artifact-audit','runtime','output'):p.add_argument('--'+name,type=Path,required=True)
 args=p.parse_args()
 a=json.loads(args.comparison.read_text());calibration=json.loads(args.calibration.read_text());audit=json.loads(args.artifact_audit.read_text());runtime=json.loads(args.runtime.read_text(encoding='utf-8-sig'))
 if a['status']!='measured' or a['identity']['strategy']!='graph_replay':raise ValueError('Only measured graph-replay report accepted')
 if a['calibration_sha256']!=sha256(args.calibration) or audit_reports(calibration,a)['candidate_outcome']!='passed':raise ValueError('Whole-model raw-statistics gate must pass')
 if audit.get('status')!='passed':raise ValueError('Independent artifact audit required')
 if 'models' in audit:audit=next(x for x in audit['models'] if x['model_id']==a['identity']['model_id'])
 if (audit.get('model_id')!=a['identity']['model_id'] or audit.get('calibration_sha256')!=sha256(args.calibration)
     or audit.get('comparison_sha256')!=sha256(args.comparison)):raise ValueError('Artifact audit identity/hash drift')
 observed={Path(x['path']).name:x['sha256'] for x in runtime['runtime_files']}
 if (observed['compiler.py']!=a['identity']['compiler_sha256']
     or any(runtime[name]!=a['identity'][name] for name in ('torch','triton','flagtree','device'))):raise ValueError('Runtime snapshot drift')
 rows=[x for x in a['probes'] if x['hit'] and x['candidate_route']=='exact_shape_replay' and x['status']=='performance_passed']
 if not rows or len(rows)>2:raise ValueError('One or two passed exact replay shapes required')
 entries=[]
 for row in rows:
  entries.append([[list(meta[0]),list(meta[1]),meta[2],meta[3],meta[4]] for meta in row['preparation']['input_metadata']])
 identity={k:a['identity'][k] for k in ('model_id','revision','task','pt2_sha256','compiler_sha256')}
 identity.update(source_sha256=a['identity']['source_files']['model_import_adapters/src/model_import_adapters/graph_replay.py'],
     libtriton_sha256=observed['libtriton.so'],precision='FP32/highest',target=a['identity']['device'],
     runtime=';'.join(f'{name}={runtime[name]}' for name in ('torch','triton','flagtree')),
     protocol_sha256=a['identity']['protocol_sha256'],compile_options_sha256=digest(a['compile_options']),
     router_sha256=sha256(Path(__file__).parents[1]/'src/model_import_adapters/replay_policy.py'))
 identity=bind_discovery_preprocessing(identity,calibration,a)
 evidence={'calibration_sha256':sha256(args.calibration),'comparison_sha256':sha256(args.comparison),'artifact_audit_sha256':sha256(args.artifact_audit)}
 value=policy_document(identity,entries,evidence);args.output.parent.mkdir(parents=True,exist_ok=True)
 with args.output.open('x',encoding='utf-8') as output:json.dump(value,output,ensure_ascii=False,indent=2)
 print(json.dumps({'status':'passed','model_id':identity['model_id'],'entries':len(entries),'sha256':value['sha256']}))


if __name__=='__main__':main()
