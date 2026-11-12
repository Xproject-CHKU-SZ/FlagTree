import fs from 'node:fs'
import { zstdCompressSync, zstdDecompressSync, constants } from 'node:zlib'
const HARNESS = '/home/f/Documents/deepseek-harness'
const { restoreReleasedV4Artifact } = await import(`${HARNESS}/packages/session/session-format-v3-to-v4/lib/index.js`)
const { KNOWN_SESSION_EVENT_TYPES, snapshotSessionEvent } = await import(`${HARNESS}/packages/core/session/lib/index.js`)
const [input, output, boundaryArg] = process.argv.slice(2)
const boundary = Number(boundaryArg)
const lines = zstdDecompressSync(fs.readFileSync(input)).toString('utf8').trim().split('\n').map(JSON.parse)
const header = lines.shift()
const events = lines
// Zone B: app 的编号 = 磁盘编号 - 1（因为修复时插入过 system 头）
const shift = old => (old >= 5 ? old + 1 : old)
const rewrite = (v, inZoneB) => {
  if (Array.isArray(v)) return v.map(x => rewrite(x, inZoneB))
  if (v === null || typeof v !== 'object') return v
  const out = {}
  for (const [k, item] of Object.entries(v)) {
    if (!inZoneB) { out[k] = rewrite(item, false); continue }
    if (k === 'shadowedRange' && item && typeof item === 'object') {
      out[k] = { ...item,
        start: typeof item.start === 'number' ? shift(item.start) : item.start,
        end: typeof item.end === 'number' ? shift(item.end) : item.end }
      continue
    }
    const ref = k.endsWith('Seq') || k.endsWith('Seqs')
    if (ref && typeof item === 'number' && item >= 0) { out[k] = shift(item); continue }
    if (ref && Array.isArray(item) && item.every(x => typeof x === 'number')) { out[k] = item.map(shift); continue }
    out[k] = rewrite(item, true)
  }
  return out
}
const fixed = events.map((e, i) => {
  const next = rewrite(e, i >= boundary)
  next.seq = i
  return next
})
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
console.log('events', fixed.length)
