"""NVRTC compile to relocatable GPU machine code; nvJitLink object-only link.

No GPU is required for these host-side APIs. Timing separates library loading,
function compilation (including its assembler), and object linking.
"""
import ctypes as C
import hashlib
from pathlib import Path
import time


def sha(data):
    return hashlib.sha256(data).hexdigest()


def elf_type(data):
    assert data[:4] == b'\x7fELF' and data[5] == 1
    return int.from_bytes(data[16:18], 'little')


def function_source(mode, full_asm):
    lines = full_asm.splitlines()
    if mode == 'general':
        asm = full_asm
    elif mode == 'small':
        body = lines[lines.index('mul.f32 z, $1, $1;'):lines.index('mul.f32 e, a, 0f4038AA3B;')]
        asm = '{\n.reg .f32 z, p, small;\n'+'\n'.join(body)+'\nmov.f32 $0, small;\n}'
    elif mode == 'large':
        body = lines[lines.index('mul.f32 e, a, 0f4038AA3B;'):lines.index('selp.f32 $0, small, large, use_small;')]
        asm = ('{\n.reg .f32 a, e, d, r, large;\n.reg .b32 sign, bits;\n.reg .pred saturated;\n'
               'abs.ftz.f32 a, $1;\n'+'\n'.join(body)+'\nmov.f32 $0, large;\n}')
    else:
        raise ValueError(mode)
    asm = asm.replace('$0','%0').replace('$1','%1')
    return ('extern "C" __device__ __noinline__ float f06_tanh(float x) {\n'
            '  float y;\n  asm volatile (R"ptx('+asm+')ptx" : "=f"(y) : "f"(x));\n'
            '  return y;\n}\n')


class DeviceLinker:
    def __init__(self, cuda_root='/usr/local/cuda', arch=89, nvrtc_options=()):
        start = time.perf_counter_ns()
        self.arch = arch
        self.nvrtc_options = tuple(nvrtc_options)
        self.root = Path(cuda_root).resolve()
        self.nvrtc = C.CDLL(str(self.root/'lib64/libnvrtc.so'))
        self.linker = C.CDLL(str(self.root/'lib64/libnvJitLink.so'))
        self.library_load_ms = (time.perf_counter_ns()-start)/1e6
        self._bind(self.nvrtc, 'nvrtcVersion', [C.POINTER(C.c_int),C.POINTER(C.c_int)])
        self._bind(self.nvrtc, 'nvrtcCreateProgram', [C.POINTER(C.c_void_p),C.c_char_p,C.c_char_p,C.c_int,C.c_void_p,C.c_void_p])
        self._bind(self.nvrtc, 'nvrtcCompileProgram', [C.c_void_p,C.c_int,C.POINTER(C.c_char_p)])
        self._bind(self.nvrtc, 'nvrtcDestroyProgram', [C.POINTER(C.c_void_p)])
        for kind in ('ProgramLog','CUBIN','PTX'):
            self._bind(self.nvrtc, 'nvrtcGet'+kind+'Size', [C.c_void_p,C.POINTER(C.c_size_t)])
            self._bind(self.nvrtc, 'nvrtcGet'+kind, [C.c_void_p,C.c_void_p])
        self._bind(self.linker, 'nvJitLinkCreate', [C.POINTER(C.c_void_p),C.c_uint32,C.POINTER(C.c_char_p)])
        self._bind(self.linker, 'nvJitLinkAddData', [C.c_void_p,C.c_int,C.c_void_p,C.c_size_t,C.c_char_p])
        self._bind(self.linker, 'nvJitLinkComplete', [C.c_void_p])
        self._bind(self.linker, 'nvJitLinkDestroy', [C.POINTER(C.c_void_p)])
        for kind in ('ErrorLog','InfoLog','LinkedCubin'):
            self._bind(self.linker,'nvJitLinkGet'+kind+'Size',[C.c_void_p,C.POINTER(C.c_size_t)])
            self._bind(self.linker,'nvJitLinkGet'+kind,[C.c_void_p,C.c_void_p])
        major,minor = C.c_int(),C.c_int()
        assert self.nvrtc.nvrtcVersion(C.byref(major),C.byref(minor)) == 0
        self.version = [major.value,minor.value]
        self.function_cache = {}
        self.compile_events = []
        self.link_events = []

    @staticmethod
    def _bind(lib,name,args):
        fn = getattr(lib,name)
        fn.argtypes = args
        fn.restype = C.c_int

    @staticmethod
    def _blob(lib,prefix,kind,handle):
        size = C.c_size_t()
        code = getattr(lib,prefix+'Get'+kind+'Size')(handle,C.byref(size))
        if code:
            raise RuntimeError((prefix,kind,'size',code))
        if not size.value:
            return b''
        buffer = C.create_string_buffer(size.value)
        code = getattr(lib,prefix+'Get'+kind)(handle,buffer)
        if code:
            raise RuntimeError((prefix,kind,'get',code))
        return buffer.raw

    def compile_function(self, mode, full_asm):
        source = function_source(mode,full_asm)
        key = (mode,sha(source.encode()),self.arch,self.nvrtc_options)
        if key in self.function_cache:
            return self.function_cache[key],dict(cache_hit=True,mode=mode,total_ms=0.)
        start = time.perf_counter_ns()
        prog = C.c_void_p()
        code = self.nvrtc.nvrtcCreateProgram(C.byref(prog),source.encode(),b'f06_tanh.cu',0,None,None)
        if code:
            raise RuntimeError(('nvrtcCreateProgram',code))
        options = [f'--gpu-architecture=sm_{self.arch}','--relocatable-device-code=true','--std=c++17','--fmad=false',*self.nvrtc_options]
        array = (C.c_char_p*len(options))(*(x.encode() for x in options))
        try:
            t = time.perf_counter_ns()
            code = self.nvrtc.nvrtcCompileProgram(prog,len(options),array)
            compile_ms = (time.perf_counter_ns()-t)/1e6
            log = self._blob(self.nvrtc,'nvrtc','ProgramLog',prog).rstrip(b'\0').decode()
            if code:
                raise RuntimeError(('nvrtcCompileProgram',code,log))
            obj = self._blob(self.nvrtc,'nvrtc','CUBIN',prog)
            ptx = self._blob(self.nvrtc,'nvrtc','PTX',prog).rstrip(b'\0').decode()
        finally:
            self.nvrtc.nvrtcDestroyProgram(C.byref(prog))
        assert elf_type(obj) == 1, 'The function must remain relocatable, not a linked executable'
        record = dict(mode=mode,cache_hit=False,options=options,compile_api_ms=compile_ms,
                      total_ms=(time.perf_counter_ns()-start)/1e6,source_sha256=sha(source.encode()),
                      object_sha256=sha(obj),object_bytes=len(obj),elf_type=1,log=log,
                      function_compiled_to_machine_code=True)
        value = dict(object=obj,source=source,ptx=ptx,record=record)
        self.function_cache[key] = value
        self.compile_events.append(record)
        return value,record

    def link(self, body, function_object):
        assert elf_type(body) == elf_type(function_object) == 1
        start = time.perf_counter_ns()
        handle = C.c_void_p()
        options = [f'-arch=sm_{self.arch}']
        array = (C.c_char_p*len(options))(*(x.encode() for x in options))
        code = self.linker.nvJitLinkCreate(C.byref(handle),len(options),array)
        if code:
            raise RuntimeError(('nvJitLinkCreate',code))
        buffers = []
        try:
            for name,data in [('fused_body.o',body),('tanh_function.o',function_object)]:
                buffer = C.create_string_buffer(data)
                buffers.append(buffer)
                # NVJITLINK_INPUT_CUBIN=1 also accepts relocatable device ELF.
                code = self.linker.nvJitLinkAddData(handle,1,buffer,len(data),name.encode())
                if code:
                    raise RuntimeError(('nvJitLinkAddData',name,code))
            t = time.perf_counter_ns()
            code = self.linker.nvJitLinkComplete(handle)
            complete_ms = (time.perf_counter_ns()-t)/1e6
            log = self._blob(self.linker,'nvJitLink','ErrorLog',handle).rstrip(b'\0').decode()
            if code:
                raise RuntimeError(('nvJitLinkComplete',code,log))
            image = self._blob(self.linker,'nvJitLink','LinkedCubin',handle)
            info = self._blob(self.linker,'nvJitLink','InfoLog',handle).rstrip(b'\0').decode()
        finally:
            self.linker.nvJitLinkDestroy(C.byref(handle))
        assert elf_type(image) == 2
        record = dict(total_ms=(time.perf_counter_ns()-start)/1e6,link_complete_ms=complete_ms,
                      input_formats=['relocatable GPU machine code','relocatable GPU machine code'],
                      body_sha256=sha(body),function_sha256=sha(function_object),
                      cubin_sha256=sha(image),cubin_bytes=len(image),elf_type=2,options=options,
                      error_log=log,info_log=info,lto=False)
        self.link_events.append(record)
        return image,record
