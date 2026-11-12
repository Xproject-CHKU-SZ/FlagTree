#!/usr/bin/env node
/**
 * 修复会话日志里的 seq 断档/重复：按事件实际顺序重排 0..N-1，
 * 同步改写所有 Seq 引用，再用 DSH 自家校验器验证。
 *
 * 用法: node renumber_session.mjs <in.zstd> <out.zstd>
 */
import fs from 'node:fs'
import { zstdCompressSync, zstdDecompressSync, constants } from 'node:zlib'

const HARNESS = '/home/f/Documents/deepseek-harness'
const { restoreReleasedV4Artifact } =
  await import(`${HARNESS}/packages/session/session-format-v3-to-v4/lib/index.js`)
const { KNOWN_SESSION_EVENT_TYPES, snapshotSessionEvent } =
  await import(`${HARNESS}/packages/core/session/lib/index.js`)

const [input, output] = process.argv.slice(2)
if (!input || !output) throw new Error('用法: node renumber_session.mjs <in.zstd> <out.zstd>')

const lines = zstdDecompressSync(fs.readFileSync(input)).toString('utf8').trim().split('\n').map(JSON.parse)
const header = lines.shift()
const events = lines
const before = events.map(e => e.seq)

const map = new Map()
events.forEach((event, index) => { if (!map.has(event.seq)) map.set(event.seq, index) })

const rewrite = value => {
  if (Array.isArray(value)) return value.map(rewrite)
  if (value === null || typeof value !== 'object') return value
  const out = {}
  for (const [key, item] of Object.entries(value)) {
    if (key === 'shadowedRange' && item && typeof item === 'object') {
      const range = { ...item }
      if (typeof range.start === 'number') range.start = map.get(range.start) ?? range.start
      if (typeof range.end === 'number') range.end = map.get(range.end) ?? range.end
      out[key] = range
      continue
    }
    const isRef = key.endsWith('Seq') || key.endsWith('Seqs')
    if (isRef && typeof item === 'number' && item >= 0) { out[key] = map.get(item) ?? item; continue }
    if (isRef && Array.isArray(item) && item.every(x => typeof x === 'number')) {
      out[key] = item.map(x => map.get(x) ?? x); continue
    }
    out[key] = rewrite(item)
  }
  return out
}

events.forEach((event, index) => { event.seq = index })
const fixed = events.map(event => rewrite(event))

const logical = { ...header }
delete logical.type
const zstd = t => zstdCompressSync(Buffer.from(t, 'utf8'), { params: { [constants.ZSTD_c_checksumFlag]: 1 } })
const compressed = Buffer.concat([
  zstd(JSON.stringify({ ...logical, type: 'session' }) + '\n'),
  zstd(fixed.map(e => JSON.stringify(e)).join('\n') + '\n'),
])
fs.writeFileSync(output, compressed)
try {
  restoreReleasedV4Artifact({ header: logical, inheritedEventCount: 0, events: fixed }, KNOWN_SESSION_EVENT_TYPES)
  for (const event of fixed) snapshotSessionEvent(structuredClone(event))
  console.log('校验通过')
} catch (error) {
  console.log('校验失败:', String(error.message))
  process.exitCode = 2
}
console.log(`events ${events.length}, seq ${Math.min(...before)}..${Math.max(...before)} → 0..${events.length - 1}`)
console.log(`size ${(fs.statSync(input).size / 1e6).toFixed(2)}MB → ${(compressed.length / 1e6).toFixed(2)}MB`)
