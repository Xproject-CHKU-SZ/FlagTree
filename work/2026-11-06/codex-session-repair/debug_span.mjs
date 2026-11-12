import fs from 'node:fs'
import { zstdDecompressSync } from 'node:zlib'
const lines = zstdDecompressSync(fs.readFileSync(process.argv[2])).toString('utf8').trim().split('\n').map(JSON.parse)
lines.shift()
const events = lines
const SURFACE = new Set(['system/message','user/message','assistant/message','tool/result','developer/message'])
const surface = []
for (const e of events) {
  if (e.type === 'compaction/prune' || e.type === 'compaction/summary') {
    const r = e.data.shadowedRange
    const start = surface.indexOf(r.start)
    const end = surface.indexOf(r.end)
    const seqs = e.data.shadowedSeqs
    const slice = start < 0 ? [] : surface.slice(start, end + 1)
    const ok = start >= 0 && end >= start && JSON.stringify(slice) === JSON.stringify(seqs)
    if (!ok) {
      console.log('FAIL at seq', e.seq, e.type, 'range', JSON.stringify(r), 'seqs', JSON.stringify(seqs).slice(0,200))
      console.log('  surface slice', JSON.stringify(slice).slice(0,200))
      process.exit(0)
    }
  }
  if (!SURFACE.has(e.type)) continue
  if (e.surfaceOp === 'append') surface.push(e.seq)
  else if (e.surfaceOp && typeof e.surfaceOp === 'object') {
    const a = surface.indexOf(e.surfaceOp.startSeq), b = surface.indexOf(e.surfaceOp.endSeq)
    surface.splice(a, b - a + 1, e.seq)
  }
}
console.log('all spans ok')
