import fs from 'node:fs'
import path from 'node:path'
import { zstdDecompressSync } from 'node:zlib'
const HARNESS = '/home/f/Documents/deepseek-harness'
const { restoreReleasedV4Artifact } = await import(`${HARNESS}/packages/session/session-format-v3-to-v4/lib/index.js`)
const { KNOWN_SESSION_EVENT_TYPES, snapshotSessionEvent } = await import(`${HARNESS}/packages/core/session/lib/index.js`)
const dir = process.argv[2]
for (const name of fs.readdirSync(dir).sort()) {
  const file = path.join(dir, name, 'session.v4.jsonl.zstd')
  if (!fs.existsSync(file)) continue
  try {
    const lines = zstdDecompressSync(fs.readFileSync(file)).toString('utf8').trim().split('\n').map(JSON.parse)
    const header = lines.shift(); delete header.type
    for (const e of lines) snapshotSessionEvent(structuredClone(e))
    restoreReleasedV4Artifact({ header, inheritedEventCount: 0, events: lines }, KNOWN_SESSION_EVENT_TYPES)
    console.log('ok  ', name, lines.length)
  } catch (error) { console.log('FAIL', name, String(error.message).slice(0, 120)) }
}
