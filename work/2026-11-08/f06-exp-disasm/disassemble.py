"""Decode 32-bit KL3 instruction words with the XTDK LLVM disassembler."""
import argparse
import ctypes as C
import hashlib
import json
from collections import Counter
from pathlib import Path


def decode(binary, llvm):
    lib = C.CDLL(str(llvm.resolve()))
    for suffix in ('TargetInfo', 'TargetMC', 'Disassembler', 'AsmPrinter'):
        getattr(lib, 'LLVMInitializeXPU' + suffix)()
    lib.LLVMCreateDisasmCPU.argtypes = [C.c_char_p, C.c_char_p, C.c_void_p, C.c_int, C.c_void_p, C.c_void_p]
    lib.LLVMCreateDisasmCPU.restype = C.c_void_p
    lib.LLVMDisasmInstruction.argtypes = [C.c_void_p, C.c_void_p, C.c_uint64, C.c_uint64, C.c_char_p, C.c_size_t]
    lib.LLVMDisasmInstruction.restype = C.c_size_t
    lib.LLVMDisasmDispose.argtypes = [C.c_void_p]
    ctx = lib.LLVMCreateDisasmCPU(b'xpu3-baidu-none-gnu', b'xpu3', None, 0, None, None)
    if not ctx:
        raise RuntimeError('KL3 decoder unavailable')
    if len(binary) % 4:
        raise ValueError('unaligned code length')
    code = C.create_string_buffer(binary)
    line = C.create_string_buffer(1024)
    result = []
    for offset in range(0, len(binary), 4):
        n = lib.LLVMDisasmInstruction(ctx, C.byref(code, offset), 4, offset, line, len(line))
        result.append((offset, binary[offset:offset+4].hex(), line.value.decode().strip() if n==4 else '.word (undecoded)'))
    lib.LLVMDisasmDispose(ctx)
    return result

if __name__ == '__main__':
    ap=argparse.ArgumentParser()
    ap.add_argument('binary', type=Path)
    ap.add_argument('llvm', type=Path)
    ap.add_argument('listing', type=Path)
    args=ap.parse_args()
    raw=args.binary.read_bytes()
    rows=decode(raw,args.llvm)
    args.listing.write_text(''.join(f'{i:06x}  {word}  {op}\n' for i,word,op in rows))
    counts=Counter(op.split()[0] for _,_,op in rows)
    print(json.dumps(dict(bytes=len(raw),sha256=hashlib.sha256(raw).hexdigest(),words=len(rows),opcodes=counts)))
