import fs from 'node:fs'
import { zstdCompressSync, zstdDecompressSync, constants } from 'node:zlib'
const HARNESS = '/home/f/Documents/deepseek-harness'
const { restoreReleasedV4Artifact } = await import(`${HARNESS}/packages/session/session-format-v3-to-v4/lib/index.js`)
const { KNOWN_SESSION_EVENT_TYPES, snapshotSessionEvent } = await import(`${HARNESS}/packages/core/session/lib/index.js`)
const [input, output] = process.argv.slice(2)
const lines = zstdDecompressSync(fs.readFileSync(input)).toString('utf8').trim().split('\n').map(JSON.parse)
const header = lines.shift()
const kept = lines.filter(e => !String(e.type).startsWith('compaction/'))
console.log('drop', lines.length - kept.length, 'compaction events ->', kept.length)
const map = new Map()
kept.forEach((e, i) => { if (!map.has(e.seq)) map.set(e.seq, i) })
const oldSeqs = [...map.keys()].sort((a, b) => a - b)
const resolve = old => {
  if (map.has(old)) return map.get(old)
  let lo = 0, hi = oldSeqs.length - 1, best = 0
  while (lo <= hi) {
    const mid = (lo + hi) >> 1
    if (oldSeqs[mid] <= old) { best = oldSeqs[mid]; lo = mid + 1 } else hi = mid - 1
  }
  return map.get(best) ?? 0
}
const rewrite = v => {
  if (Array.isArray(v)) return v.map(rewrite)
  if (v === null || typeof v !== 'object') return v
  const out = {}
  for (const [k, item] of Object.entries(v)) {
    if (k === 'shadowedRange' && item && typeof item === 'object') { out[k] = item; continue }
    const ref = k.endsWith('Seq') || k.endsWith('Seqs')
    if (ref && typeof item === 'number' && item >= 0) { out[k] = resolve(item); continue }
    if (ref && Array.isArray(item) && item.every(x => typeof x === 'number')) { out[k] = item.map(x => resolve(x)); continue }
    out[k] = rewrite(item)
  }
  return out
}
kept.forEach((e, i) => { e.seq = i })
const fixed = kept.map(rewrite)
const logical = { ...header }; delete logical.type
try {
  restoreReleasedV4Artifact({ header: logical, inheritedEventCount: 0, events: fixed }, KNOWN_SESSION_EVENT_TYPES)
  for (const e of fixed) snapshotSessionEvent(structuredClone(e))
  console.log('校验通过')
} catch (error) { console.log('校验失败:', String(error.message)) }
const zstd = t => zstdCompressSync(Buffer.from(t, 'utf8'), { params: { [constants.ZSTD_c_checksumFlag]: 1 } })
fs.writeFileSync(output, Buffer.concat([
  zstd(JSON.stringify({ ...logical, type: 'session' }) + '\n'),
  zstd(fixed.map(e => JSON.stringify(e)).join('\n') + '\n'),
]))
