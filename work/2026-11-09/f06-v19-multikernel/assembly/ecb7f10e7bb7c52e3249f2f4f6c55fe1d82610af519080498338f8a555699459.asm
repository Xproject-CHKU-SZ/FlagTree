; SHA-256 ecb7f10e7bb7c52e3249f2f4f6c55fe1d82610af519080498338f8a555699459
; P800 Cluster · XTDK LLVM 19 · 1363 / 1363 words decoded
; bound names: triton_unk_fused_0
000000  17200000  xor zero, zero, zero
000004  1f420000  addli r4, zero, 4
000008  1f041000  addli r8, zero, 8
00000c  9f77f0ff  addli r15, zero, -1
000010  80310002  core_id r3
000014  00510102  load_param_i r2, 2
000018  ab800000  lui r1, 8
00001c  ab020000  lui r5, 0
000020  9f820200  addli r5, r5, 0
000024  8b805018  sub.u r1, r1, r5
000028  1b85f100  andi r10, r3, 15
00002c  9b144000  ori r9, zero, 4
000030  3fb04100  blt.s r3, r4, 12
000034  1f45f5ff  addli r10, r10, -4
000038  9b146000  ori r9, zero, 6
00003c  0b059538  mod.u r10, r10, r9
000040  1f7a1100  addli r20, r2, 15
000044  9b454a00  srli r11, r20, 4
000048  1bc64100  srli r12, r3, 4
00004c  8b86b030  div.u r13, r1, r11
000050  1f160600  addli r12, r12, 1
000054  8b00d620  mul.u r1, r12, r13
000058  8b805010  add.u r1, r1, r5
00005c  9f8e0000  addli sp, r1, 0
000060  1bba6700  slli r20, r15, 6
000064  978e4e01  and sp, sp, r20
000068  bb003000  bneq zero, r3, 32
00006c  80520202  load_param_i r5, 4
000070  00d20102  load_param_i r4, 3
000074  ab0900f0  lui r19, 983040
000078  9f095000  addli r19, zero, 40
00007c  00200300  mfence { sm, gm }
000080  ff090200  l_gm2sm r19, zero, 0(r[5:6])
000084  00200300  mfence { sm, gm }
000088  abfa0000  lui r21, 15
00008c  9b9afaff  ori r21, r21, 4095
000090  80a10a04  csr_set csr3, r21
000094  00d00100  sync_group
000098  57160000  jal 176
00009c  00a00100  mfence { lm, sm }
0000a0  00d00100  sync_group
0000a4  fe8007e0  vmmov mr1, r15
0000a8  fe900720  vmmovh mr1, r15
0000ac  d71b0000  jal 220
0000b0  fe8007e0  vmmov mr1, r15
0000b4  fe900720  vmmovh mr1, r15
0000b8  1f8a8eff  addli r20, sp, -64
0000bc  4a100002  vloads_mask16.mz vr0{mr1}, 0(zero)
0000c0  46000a02  vstore.mz vr0{mr1}, 0(r20)
0000c4  00a00100  mfence { lm, sm }
0000c8  00d00100  sync_group
0000cc  97a01000  xor r1, r1, r1
0000d0  1f8f0e00  addli r30, sp, 0
0000d4  d71b0000  jal 220
0000d8  00400000  trap
0000dc  9f8e8efc  addli sp, sp, -448
0000e0  1f8f0e03  addli r30, sp, 384
0000e4  00520002  load_param_i r4, 0
0000e8  63014f00  loadli.w r2,  32(r30)
0000ec  e3403f00  loadli.w r1,  28(r30)
0000f0  e3414f00  loadli.w r3,  36(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  674c1ffc  storeli.w r1, -316(r30)
000100  cbf74008  ble.s r1, r4, 4604
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  9f024000  addli r5, zero, 32
000110  9f040fff  addli r9, r30, -128
000114  2b0b807f  lui r22, 522240
000118  ab094000  lui r19, 1024
00011c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000120  9bb04000  slli r1, r1, 4
000124  670c2ffc  storeli.w r2, -320(r30)
000128  2bf17f7f  lui r2, 522239
00012c  e74b1ffc  storeli.w r1, -324(r30)
000130  ab700000  lui r1, 7
000134  9b1af1ff  ori r21, r2, 4095
000138  1b99f0ff  ori r18, r1, 4095
00013c  abf0ff7f  lui r1, 524287
000140  1b9af0ff  ori r20, r1, 4095
000144  9f200000  addli r1, zero, 2
000148  fe8100e0  vmmov mr3, r1
00014c  db180000  j 196
000150  e3003ffe  loadli.w r1,  -232(r30)
000154  33120c00  float2bfloat.rn r4, r24
000158  6b510f01  load.d r[3:4], 16(r30)
00015c  6b538ff0  load.d r[7:8], -248(r30)
000160  73124ff8  store.h r4, -124(r30)
000164  33920500  float2bfloat.rn r4, r11
000168  b3900000  float2bfloat.rn r1, r1
00016c  0b216110  add.ul r[3:4], r[3:4], r[7:8]
000170  73144ff8  store.h r4, -120(r30)
000174  33920800  float2bfloat.rn r4, r17
000178  73101ff8  store.h r1, -128(r30)
00017c  b3100500  float2bfloat.rn r1, r10
000180  73164ff8  store.h r4, -116(r30)
000184  33920b00  float2bfloat.rn r4, r23
000188  73111ff8  store.h r1, -126(r30)
00018c  b3100400  float2bfloat.rn r1, r8
000190  73184ff8  store.h r4, -112(r30)
000194  33920d00  float2bfloat.rn r4, r27
000198  73131ff8  store.h r1, -122(r30)
00019c  b3100800  float2bfloat.rn r1, r16
0001a0  731a4ff8  store.h r4, -108(r30)
0001a4  33120e00  float2bfloat.rn r4, r28
0001a8  73151ff8  store.h r1, -118(r30)
0001ac  b3900700  float2bfloat.rn r1, r15
0001b0  731c4ff8  store.h r4, -104(r30)
0001b4  33120600  float2bfloat.rn r4, r12
0001b8  73171ff8  store.h r1, -114(r30)
0001bc  b3100d00  float2bfloat.rn r1, r26
0001c0  731e4ff8  store.h r4, -100(r30)
0001c4  2b0200f0  lui r4, 983040
0001c8  73191ff8  store.h r1, -110(r30)
0001cc  b3100700  float2bfloat.rn r1, r14
0001d0  731b1ff8  store.h r1, -106(r30)
0001d4  e3402ffe  loadli.w r1,  -236(r30)
0001d8  b3900000  float2bfloat.rn r1, r1
0001dc  731d1ff8  store.h r1, -102(r30)
0001e0  b3900600  float2bfloat.rn r1, r13
0001e4  731f1ff8  store.h r1, -98(r30)
0001e8  97904200  or r1, r5, r4
0001ec  00a00000  mfence { lm }
0001f0  ff309100  s_lm2gm r1, r9, 0(r[3:4])
0001f4  63022ffe  loadli.w r4,  -240(r30)
0001f8  e3008ffd  loadli.w r1,  -320(r30)
0001fc  00a00000  mfence { lm }
000200  0b121210  add.s r4, r4, r1
000204  e3408ffd  loadli.w r1,  -316(r30)
000208  3f201200  blt.s r4, r1, 8
00020c  5b1e0200  j 4336
000210  e3404f00  loadli.w r1,  36(r30)
000214  63014f00  loadli.w r2,  32(r30)
000218  ab0100f0  lui r3, 983040
00021c  67014ffe  storeli.w r4, -240(r30)
000220  9f130000  addli r7, zero, 1
000224  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000228  9f180000  addli r17, zero, 1
00022c  12310002  vadd.s.mz vr2{mr1}, zero, vr0
000230  97913200  or r3, r5, r3
000234  7e8108e0  vmmov mr2, r17
000238  8b101230  div.s r1, r4, r1
00023c  2b0200f0  lui r4, 983040
000240  17924200  or r4, r5, r4
000244  8b902030  div.s r1, r1, r2
000248  63417ffd  loadli.w r2,  -324(r30)
00024c  9bb0a000  slli r1, r1, 10
000250  8b902010  add.s r1, r1, r2
000254  1f010008  addli r2, zero, 1024
000258  0b912038  mod.s r2, r1, r2
00025c  b3920028  sext_int2long r[6:7], r1
000260  17b57202  sll.d r[11:12], r[6:7], r7
000264  eb520f00  load.d r[6:7], 0(r30)
000268  7334aff0  store.d r[11:12], -248(r30)
00026c  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
000270  b3100128  sext_int2long r[2:3], r2
000274  97b07002  sll.d r[2:3], r[2:3], r7
000278  eb538f00  load.d r[8:9], 8(r30)
00027c  8ba01310  add.ul r[2:3], r[8:9], r[2:3]
000280  9f038ffe  addli r7, r30, -192
000284  ffa17200  l_gm2lm r3, r7, 0(r[6:7])
000288  7fa29000  l_gm2lm r4, r9, 0(r[2:3])
00028c  00a00000  mfence { lm }
000290  eb300ff4  load.hu r1, -192(r30)
000294  6b312ff4  load.hu r2, -190(r30)
000298  eb314ff4  load.hu r3, -188(r30)
00029c  6b326ff4  load.hu r4, -186(r30)
0002a0  eb328ff4  load.hu r5, -184(r30)
0002a4  6b33aff4  load.hu r6, -182(r30)
0002a8  eb33cff4  load.hu r7, -180(r30)
0002ac  6b34eff4  load.hu r8, -178(r30)
0002b0  eb340ff5  load.hu r9, -176(r30)
0002b4  6b352ff5  load.hu r10, -174(r30)
0002b8  eb354ff5  load.hu r11, -172(r30)
0002bc  6b366ff5  load.hu r12, -170(r30)
0002c0  eb368ff5  load.hu r13, -168(r30)
0002c4  6b37aff5  load.hu r14, -166(r30)
0002c8  eb37cff5  load.hu r15, -164(r30)
0002cc  6b38eff5  load.hu r16, -162(r30)
0002d0  b3900018  bfloat2float.rn r1, r1
0002d4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0002d8  b3100118  bfloat2float.rn r1, r2
0002dc  1f410000  addli r2, zero, 4
0002e0  7e0001e0  vmmov mr0, r2
0002e4  1f011000  addli r2, zero, 8
0002e8  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0002ec  b3900118  bfloat2float.rn r1, r3
0002f0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0002f4  b3100218  bfloat2float.rn r1, r4
0002f8  7e0001e0  vmmov mr0, r2
0002fc  1f012000  addli r2, zero, 16
000300  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000304  b3900218  bfloat2float.rn r1, r5
000308  7e0001e0  vmmov mr0, r2
00030c  1f014000  addli r2, zero, 32
000310  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000314  b3100318  bfloat2float.rn r1, r6
000318  7e0001e0  vmmov mr0, r2
00031c  1f018000  addli r2, zero, 64
000320  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000324  b3900318  bfloat2float.rn r1, r7
000328  7e0001e0  vmmov mr0, r2
00032c  1f010001  addli r2, zero, 128
000330  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000334  b3100418  bfloat2float.rn r1, r8
000338  7e0001e0  vmmov mr0, r2
00033c  1f010002  addli r2, zero, 256
000340  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000344  b3900418  bfloat2float.rn r1, r9
000348  7e0001e0  vmmov mr0, r2
00034c  1f010004  addli r2, zero, 512
000350  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000354  b3100518  bfloat2float.rn r1, r10
000358  7e0001e0  vmmov mr0, r2
00035c  1f010008  addli r2, zero, 1024
000360  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000364  b3900518  bfloat2float.rn r1, r11
000368  7e0001e0  vmmov mr0, r2
00036c  1f010010  addli r2, zero, 2048
000370  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000374  b3100618  bfloat2float.rn r1, r12
000378  7e0001e0  vmmov mr0, r2
00037c  1f010020  addli r2, zero, 4096
000380  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000384  b3900618  bfloat2float.rn r1, r13
000388  7e0001e0  vmmov mr0, r2
00038c  1f010040  addli r2, zero, 8192
000390  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000394  b3100718  bfloat2float.rn r1, r14
000398  7e0001e0  vmmov mr0, r2
00039c  2b410000  lui r2, 4
0003a0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0003a4  b3900718  bfloat2float.rn r1, r15
0003a8  7e0001e0  vmmov mr0, r2
0003ac  2b810000  lui r2, 8
0003b0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0003b4  b3100818  bfloat2float.rn r1, r16
0003b8  7e0001e0  vmmov mr0, r2
0003bc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0003c0  eb300ff8  load.hu r1, -128(r30)
0003c4  6b312ff8  load.hu r2, -126(r30)
0003c8  eb314ff8  load.hu r3, -124(r30)
0003cc  6b326ff8  load.hu r4, -122(r30)
0003d0  eb328ff8  load.hu r5, -120(r30)
0003d4  6b33aff8  load.hu r6, -118(r30)
0003d8  eb33cff8  load.hu r7, -116(r30)
0003dc  6b34eff8  load.hu r8, -114(r30)
0003e0  eb340ff9  load.hu r9, -112(r30)
0003e4  6b352ff9  load.hu r10, -110(r30)
0003e8  eb354ff9  load.hu r11, -108(r30)
0003ec  6b366ff9  load.hu r12, -106(r30)
0003f0  eb368ff9  load.hu r13, -104(r30)
0003f4  6b37aff9  load.hu r14, -102(r30)
0003f8  eb37cff9  load.hu r15, -100(r30)
0003fc  6b38eff9  load.hu r16, -98(r30)
000400  b3900018  bfloat2float.rn r1, r1
000404  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000408  b3100118  bfloat2float.rn r1, r2
00040c  1f410000  addli r2, zero, 4
000410  7e0101e0  vmmov mr2, r2
000414  1f011000  addli r2, zero, 8
000418  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
00041c  b3900118  bfloat2float.rn r1, r3
000420  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000424  b3100218  bfloat2float.rn r1, r4
000428  7e0101e0  vmmov mr2, r2
00042c  1f012000  addli r2, zero, 16
000430  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000434  b3900218  bfloat2float.rn r1, r5
000438  7e0101e0  vmmov mr2, r2
00043c  1f014000  addli r2, zero, 32
000440  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000444  b3100318  bfloat2float.rn r1, r6
000448  7e0101e0  vmmov mr2, r2
00044c  1f018000  addli r2, zero, 64
000450  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000454  b3900318  bfloat2float.rn r1, r7
000458  7e0101e0  vmmov mr2, r2
00045c  1f010001  addli r2, zero, 128
000460  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000464  b3100418  bfloat2float.rn r1, r8
000468  7e0101e0  vmmov mr2, r2
00046c  1f010002  addli r2, zero, 256
000470  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000474  b3900418  bfloat2float.rn r1, r9
000478  7e0101e0  vmmov mr2, r2
00047c  1f010004  addli r2, zero, 512
000480  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000484  b3100518  bfloat2float.rn r1, r10
000488  7e0101e0  vmmov mr2, r2
00048c  1f010008  addli r2, zero, 1024
000490  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000494  b3900518  bfloat2float.rn r1, r11
000498  7e0101e0  vmmov mr2, r2
00049c  1f010010  addli r2, zero, 2048
0004a0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004a4  b3100618  bfloat2float.rn r1, r12
0004a8  7e0101e0  vmmov mr2, r2
0004ac  1f010020  addli r2, zero, 4096
0004b0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004b4  b3900618  bfloat2float.rn r1, r13
0004b8  7e0101e0  vmmov mr2, r2
0004bc  1f010040  addli r2, zero, 8192
0004c0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004c4  b3100718  bfloat2float.rn r1, r14
0004c8  7e0101e0  vmmov mr2, r2
0004cc  2b410000  lui r2, 4
0004d0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004d4  b3900718  bfloat2float.rn r1, r15
0004d8  7e0101e0  vmmov mr2, r2
0004dc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004e0  b3100818  bfloat2float.rn r1, r16
0004e4  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0004e8  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0004ec  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0004f0  00a00000  mfence { lm }
0004f4  63068fff  loadli.w r12,  -64(r30)
0004f8  e3458fff  loadli.w r11,  -60(r30)
0004fc  630e9fff  loadli.w r28,  -56(r30)
000500  e3489fff  loadli.w r17,  -52(r30)
000504  6307afff  loadli.w r14,  -48(r30)
000508  e34bafff  loadli.w r23,  -44(r30)
00050c  e30cbfff  loadli.w r25,  -40(r30)
000510  e340bfff  loadli.w r1,  -36(r30)
000514  67021ffe  storeli.w r1, -224(r30)
000518  17084601  and r16, r12, r20
00051c  e303cfff  loadli.w r7,  -32(r30)
000520  6343cfff  loadli.w r6,  -28(r30)
000524  6305dfff  loadli.w r10,  -24(r30)
000528  e34ddfff  loadli.w r27,  -20(r30)
00052c  6304efff  loadli.w r8,  -16(r30)
000530  e340efff  loadli.w r1,  -12(r30)
000534  93010b05  setlt.u r3, r22, r16
000538  67421ffe  storeli.w r1, -220(r30)
00053c  e300ffff  loadli.w r1,  -8(r30)
000540  e7021ffe  storeli.w r1, -216(r30)
000544  6341ffff  loadli.w r2,  -4(r30)
000548  3bb00100  bneq r3, zero, 12
00054c  6703cffe  storeli.w r12, -208(r30)
000550  db010000  j 12
000554  97103601  or r1, r12, r19
000558  67031ffe  storeli.w r1, -208(r30)
00055c  97874501  and r15, r11, r20
000560  9301fb04  setlt.u r3, r22, r15
000564  3bb00100  bneq r3, zero, 12
000568  9f820500  addli r5, r11, 0
00056c  5b010000  j 8
000570  97923501  or r5, r11, r19
000574  97064e01  and r13, r28, r20
000578  e7422ffe  storeli.w r2, -212(r30)
00057c  9301db04  setlt.u r3, r22, r13
000580  3bb00100  bneq r3, zero, 12
000584  1f010e00  addli r2, r28, 0
000588  5b010000  j 8
00058c  17113e01  or r2, r28, r19
000590  178c4801  and r24, r17, r20
000594  93018b05  setlt.u r3, r22, r24
000598  3bb00100  bneq r3, zero, 12
00059c  e7431fff  storeli.w r17, -196(r30)
0005a0  db010000  j 12
0005a4  97903801  or r1, r17, r19
0005a8  e7431ffe  storeli.w r1, -196(r30)
0005ac  97044701  and r9, r14, r20
0005b0  e3014ffe  loadli.w r3,  -224(r30)
0005b4  13029b04  setlt.u r4, r22, r9
0005b8  3b300200  bneq r4, zero, 12
0005bc  e70feffc  storeli.w r14, -264(r30)
0005c0  db010000  j 12
0005c4  97103701  or r1, r14, r19
0005c8  e70f1ffc  storeli.w r1, -264(r30)
0005cc  178d4b01  and r26, r23, r20
0005d0  e74c7ffd  storeli.w r23, -308(r30)
0005d4  1302ab05  setlt.u r4, r22, r26
0005d8  37200200  beq r4, zero, 8
0005dc  979b3b01  or r23, r23, r19
0005e0  9f800c00  addli r1, r25, 0
0005e4  67435ffe  storeli.w r5, -204(r30)
0005e8  978c4001  and r25, r1, r20
0005ec  670d1ffc  storeli.w r1, -304(r30)
0005f0  13029b05  setlt.u r4, r22, r25
0005f4  37200200  beq r4, zero, 8
0005f8  97903001  or r1, r1, r19
0005fc  97824101  and r5, r3, r20
000600  e74f1ffc  storeli.w r1, -260(r30)
000604  13025b04  setlt.u r4, r22, r5
000608  3b300200  bneq r4, zero, 12
00060c  67003ffe  storeli.w r3, -256(r30)
000610  db010000  j 12
000614  97903101  or r1, r3, r19
000618  67001ffe  storeli.w r1, -256(r30)
00061c  97804301  and r1, r7, r20
000620  674d7ffc  storeli.w r7, -300(r30)
000624  13021b04  setlt.u r4, r22, r1
000628  670e1ffc  storeli.w r1, -288(r30)
00062c  3b300200  bneq r4, zero, 12
000630  67407ffe  storeli.w r7, -252(r30)
000634  db010000  j 12
000638  97903301  or r1, r7, r19
00063c  67401ffe  storeli.w r1, -252(r30)
000640  97004301  and r1, r6, r20
000644  93031b04  setlt.u r7, r22, r1
000648  674e1ffc  storeli.w r1, -284(r30)
00064c  3bb00300  bneq r7, zero, 12
000650  67416ffe  storeli.w r6, -236(r30)
000654  db010000  j 12
000658  97103301  or r1, r6, r19
00065c  67411ffe  storeli.w r1, -236(r30)
000660  97014501  and r3, r10, r20
000664  e3404ffe  loadli.w r1,  -220(r30)
000668  e70d6ffc  storeli.w r6, -296(r30)
00066c  1f030500  addli r6, r10, 0
000670  93033b04  setlt.u r7, r22, r3
000674  e70e3ffc  storeli.w r3, -280(r30)
000678  37a00300  beq r7, zero, 8
00067c  17153501  or r10, r10, r19
000680  97814d01  and r3, r27, r20
000684  93033b04  setlt.u r7, r22, r3
000688  e74e3ffc  storeli.w r3, -276(r30)
00068c  3bb00300  bneq r7, zero, 12
000690  9f810d00  addli r3, r27, 0
000694  5b010000  j 8
000698  97913d01  or r3, r27, r19
00069c  e7032ffe  storeli.w r2, -200(r30)
0006a0  17014401  and r2, r8, r20
0006a4  1f820d00  addli r4, r27, 0
0006a8  ab0d4000  lui r27, 1024
0006ac  e74d8ffc  storeli.w r8, -292(r30)
0006b0  93032b04  setlt.u r7, r22, r2
0006b4  670f2ffc  storeli.w r2, -272(r30)
0006b8  37a00300  beq r7, zero, 8
0006bc  17143401  or r8, r8, r19
0006c0  97894001  and r19, r1, r20
0006c4  63015ffe  loadli.w r2,  -216(r30)
0006c8  93033b05  setlt.u r7, r22, r19
0006cc  37a00300  beq r7, zero, 8
0006d0  9790b001  or r1, r1, r27
0006d4  e7011ffe  storeli.w r1, -232(r30)
0006d8  97004101  and r1, r2, r20
0006dc  93031b04  setlt.u r7, r22, r1
0006e0  674f1ffc  storeli.w r1, -268(r30)
0006e4  3bb00300  bneq r7, zero, 12
0006e8  e7412ffe  storeli.w r2, -228(r30)
0006ec  db010000  j 12
0006f0  9710b101  or r1, r2, r27
0006f4  e7411ffe  storeli.w r1, -228(r30)
0006f8  63415ffe  loadli.w r2,  -212(r30)
0006fc  97034101  and r7, r2, r20
000700  93007b04  setlt.u r1, r22, r7
000704  37a00000  beq r1, zero, 8
000708  1711b101  or r2, r2, r27
00070c  93800a05  setlt.u r1, r21, r16
000710  9f0d0200  addli r27, r4, 0
000714  bb800000  bneq r1, zero, 32
000718  9b400601  srli r1, r12, 16
00071c  9b801000  andi r1, r1, 1
000720  8b101610  add.s r1, r12, r1
000724  2b06ffff  lui r12, 1048560
000728  8b902011  add.s r1, r1, r18
00072c  9780c000  and r1, r1, r12
000730  67031ffe  storeli.w r1, -208(r30)
000734  9380fa04  setlt.u r1, r21, r15
000738  6348fffd  loadli.w r16,  -260(r30)
00073c  bb800000  bneq r1, zero, 32
000740  9bc00501  srli r1, r11, 16
000744  9b801000  andi r1, r1, 1
000748  8b901510  add.s r1, r11, r1
00074c  ab05ffff  lui r11, 1048560
000750  8b902011  add.s r1, r1, r18
000754  9780b000  and r1, r1, r11
000758  67431ffe  storeli.w r1, -204(r30)
00075c  9380da04  setlt.u r1, r21, r13
000760  e3070ffe  loadli.w r15,  -256(r30)
000764  1f060500  addli r12, r10, 0
000768  bb800000  bneq r1, zero, 32
00076c  9b400e01  srli r1, r28, 16
000770  ab05ffff  lui r11, 1048560
000774  9b801000  andi r1, r1, 1
000778  8b101e10  add.s r1, r28, r1
00077c  8b902011  add.s r1, r1, r18
000780  9780b000  and r1, r1, r11
000784  e7031ffe  storeli.w r1, -200(r30)
000788  93808a05  setlt.u r1, r21, r24
00078c  e3460ffe  loadli.w r13,  -252(r30)
000790  2b0effff  lui r28, 1048560
000794  3bf00000  bneq r1, zero, 28
000798  9bc00801  srli r1, r17, 16
00079c  9b801000  andi r1, r1, 1
0007a0  8b901810  add.s r1, r17, r1
0007a4  8b902011  add.s r1, r1, r18
0007a8  9780c001  and r1, r1, r28
0007ac  e7431ffe  storeli.w r1, -196(r30)
0007b0  93809a04  setlt.u r1, r21, r9
0007b4  e304fffd  loadli.w r9,  -264(r30)
0007b8  9f050400  addli r11, r8, 0
0007bc  3be00000  bneq r1, zero, 24
0007c0  9b400701  srli r1, r14, 16
0007c4  9b801000  andi r1, r1, 1
0007c8  8b101710  add.s r1, r14, r1
0007cc  8b902011  add.s r1, r1, r18
0007d0  9784c001  and r9, r1, r28
0007d4  9380aa05  setlt.u r1, r21, r26
0007d8  3bf00000  bneq r1, zero, 28
0007dc  63429ffd  loadli.w r4,  -308(r30)
0007e0  9b400201  srli r1, r4, 16
0007e4  9b801000  andi r1, r1, 1
0007e8  8b101210  add.s r1, r4, r1
0007ec  8b902011  add.s r1, r1, r18
0007f0  978bc001  and r23, r1, r28
0007f4  93809a05  setlt.u r1, r21, r25
0007f8  63472ffe  loadli.w r14,  -236(r30)
0007fc  3bf00000  bneq r1, zero, 28
000800  6302affd  loadli.w r4,  -304(r30)
000804  9b400201  srli r1, r4, 16
000808  9b801000  andi r1, r1, 1
00080c  8b101210  add.s r1, r4, r1
000810  8b902011  add.s r1, r1, r18
000814  1788c001  and r16, r1, r28
000818  93805a04  setlt.u r1, r21, r5
00081c  e3487ffe  loadli.w r17,  -196(r30)
000820  3bf00000  bneq r1, zero, 28
000824  63024ffe  loadli.w r4,  -224(r30)
000828  9b400201  srli r1, r4, 16
00082c  9b801000  andi r1, r1, 1
000830  8b101210  add.s r1, r4, r1
000834  8b902011  add.s r1, r1, r18
000838  9787c001  and r15, r1, r28
00083c  e300cffd  loadli.w r1,  -288(r30)
000840  e3426ffe  loadli.w r5,  -204(r30)
000844  93801a04  setlt.u r1, r21, r1
000848  3bf00000  bneq r1, zero, 28
00084c  6342affd  loadli.w r4,  -300(r30)
000850  9b400201  srli r1, r4, 16
000854  9b801000  andi r1, r1, 1
000858  8b101210  add.s r1, r4, r1
00085c  8b902011  add.s r1, r1, r18
000860  9786c001  and r13, r1, r28
000864  e340cffd  loadli.w r1,  -284(r30)
000868  93801a04  setlt.u r1, r21, r1
00086c  3bf00000  bneq r1, zero, 28
000870  6302bffd  loadli.w r4,  -296(r30)
000874  9b400201  srli r1, r4, 16
000878  9b801000  andi r1, r1, 1
00087c  8b101210  add.s r1, r4, r1
000880  8b902011  add.s r1, r1, r18
000884  1787c001  and r14, r1, r28
000888  e300dffd  loadli.w r1,  -280(r30)
00088c  63423ffe  loadli.w r4,  -228(r30)
000890  93801a04  setlt.u r1, r21, r1
000894  3be00000  bneq r1, zero, 24
000898  9b400301  srli r1, r6, 16
00089c  9b801000  andi r1, r1, 1
0008a0  8b101310  add.s r1, r6, r1
0008a4  8b902011  add.s r1, r1, r18
0008a8  1786c001  and r12, r1, r28
0008ac  e340dffd  loadli.w r1,  -276(r30)
0008b0  93801a04  setlt.u r1, r21, r1
0008b4  3be00000  bneq r1, zero, 24
0008b8  9bc00d01  srli r1, r27, 16
0008bc  9b801000  andi r1, r1, 1
0008c0  8b901d10  add.s r1, r27, r1
0008c4  8b902011  add.s r1, r1, r18
0008c8  9781c001  and r3, r1, r28
0008cc  e300effd  loadli.w r1,  -272(r30)
0008d0  63053ffe  loadli.w r10,  -232(r30)
0008d4  93801a04  setlt.u r1, r21, r1
0008d8  3bf00000  bneq r1, zero, 28
0008dc  6343bffd  loadli.w r6,  -292(r30)
0008e0  9b400301  srli r1, r6, 16
0008e4  9b801000  andi r1, r1, 1
0008e8  8b101310  add.s r1, r6, r1
0008ec  8b902011  add.s r1, r1, r18
0008f0  9785c001  and r11, r1, r28
0008f4  93803a05  setlt.u r1, r21, r19
0008f8  3bf00000  bneq r1, zero, 28
0008fc  63434ffe  loadli.w r6,  -220(r30)
000900  9b400301  srli r1, r6, 16
000904  9b801000  andi r1, r1, 1
000908  8b101310  add.s r1, r6, r1
00090c  8b902011  add.s r1, r1, r18
000910  1785c001  and r10, r1, r28
000914  e340effd  loadli.w r1,  -268(r30)
000918  e3096ffe  loadli.w r19,  -208(r30)
00091c  2b034000  lui r6, 1024
000920  93801a04  setlt.u r1, r21, r1
000924  3bf00000  bneq r1, zero, 28
000928  63025ffe  loadli.w r4,  -216(r30)
00092c  9b400201  srli r1, r4, 16
000930  9b801000  andi r1, r1, 1
000934  8b101210  add.s r1, r4, r1
000938  8b902011  add.s r1, r1, r18
00093c  1782c001  and r4, r1, r28
000940  93807a04  setlt.u r1, r21, r7
000944  9f030100  addli r7, r2, 0
000948  3bf00000  bneq r1, zero, 28
00094c  63415ffe  loadli.w r2,  -212(r30)
000950  9b400101  srli r1, r2, 16
000954  9b801000  andi r1, r1, 1
000958  8b101110  add.s r1, r2, r1
00095c  8b902011  add.s r1, r1, r18
000960  9783c001  and r7, r1, r28
000964  97804901  and r1, r19, r20
000968  63017ffe  loadli.w r2,  -200(r30)
00096c  93001b04  setlt.u r1, r22, r1
000970  3be00000  bneq r1, zero, 24
000974  9bc00901  srli r1, r19, 16
000978  9b801000  andi r1, r1, 1
00097c  8b901910  add.s r1, r19, r1
000980  8b9c2011  add.s r25, r1, r18
000984  5b010000  j 8
000988  979c6900  or r25, r19, r6
00098c  97804201  and r1, r5, r20
000990  93001b04  setlt.u r1, r22, r1
000994  3be00000  bneq r1, zero, 24
000998  9bc00201  srli r1, r5, 16
00099c  9b801000  andi r1, r1, 1
0009a0  8b901210  add.s r1, r5, r1
0009a4  0b9c2011  add.s r24, r1, r18
0009a8  5b010000  j 8
0009ac  179c6200  or r24, r5, r6
0009b0  97004101  and r1, r2, r20
0009b4  93001b04  setlt.u r1, r22, r1
0009b8  3be00000  bneq r1, zero, 24
0009bc  9b400101  srli r1, r2, 16
0009c0  9b801000  andi r1, r1, 1
0009c4  8b101110  add.s r1, r2, r1
0009c8  8b922011  add.s r5, r1, r18
0009cc  5b010000  j 8
0009d0  97126100  or r5, r2, r6
0009d4  97804801  and r1, r17, r20
0009d8  93001b04  setlt.u r1, r22, r1
0009dc  3be00000  bneq r1, zero, 24
0009e0  9bc00801  srli r1, r17, 16
0009e4  9b801000  andi r1, r1, 1
0009e8  8b901810  add.s r1, r17, r1
0009ec  8b982011  add.s r17, r1, r18
0009f0  5b010000  j 8
0009f4  97986800  or r17, r17, r6
0009f8  97804401  and r1, r9, r20
0009fc  93001b04  setlt.u r1, r22, r1
000a00  3be00000  bneq r1, zero, 24
000a04  9bc00401  srli r1, r9, 16
000a08  9b801000  andi r1, r1, 1
000a0c  8b901410  add.s r1, r9, r1
000a10  8b942011  add.s r9, r1, r18
000a14  5b010000  j 8
000a18  97946400  or r9, r9, r6
000a1c  97804b01  and r1, r23, r20
000a20  93001b04  setlt.u r1, r22, r1
000a24  3be00000  bneq r1, zero, 24
000a28  9bc00b01  srli r1, r23, 16
000a2c  9b801000  andi r1, r1, 1
000a30  8b901b10  add.s r1, r23, r1
000a34  0b942011  add.s r8, r1, r18
000a38  5b010000  j 8
000a3c  17946b00  or r8, r23, r6
000a40  97004801  and r1, r16, r20
000a44  93001b04  setlt.u r1, r22, r1
000a48  3be00000  bneq r1, zero, 24
000a4c  9b400801  srli r1, r16, 16
000a50  9b801000  andi r1, r1, 1
000a54  8b101810  add.s r1, r16, r1
000a58  0b982011  add.s r16, r1, r18
000a5c  5b010000  j 8
000a60  17186800  or r16, r16, r6
000a64  97804701  and r1, r15, r20
000a68  93001b04  setlt.u r1, r22, r1
000a6c  3be00000  bneq r1, zero, 24
000a70  9bc00701  srli r1, r15, 16
000a74  9b801000  andi r1, r1, 1
000a78  8b901710  add.s r1, r15, r1
000a7c  8b972011  add.s r15, r1, r18
000a80  5b010000  j 8
000a84  97976700  or r15, r15, r6
000a88  97804601  and r1, r13, r20
000a8c  93001b04  setlt.u r1, r22, r1
000a90  3be00000  bneq r1, zero, 24
000a94  9bc00601  srli r1, r13, 16
000a98  9b801000  andi r1, r1, 1
000a9c  8b901610  add.s r1, r13, r1
000aa0  8b962011  add.s r13, r1, r18
000aa4  5b010000  j 8
000aa8  97966600  or r13, r13, r6
000aac  97004701  and r1, r14, r20
000ab0  93001b04  setlt.u r1, r22, r1
000ab4  3be00000  bneq r1, zero, 24
000ab8  9b400701  srli r1, r14, 16
000abc  9b801000  andi r1, r1, 1
000ac0  8b101710  add.s r1, r14, r1
000ac4  0b972011  add.s r14, r1, r18
000ac8  5b010000  j 8
000acc  17176700  or r14, r14, r6
000ad0  97004601  and r1, r12, r20
000ad4  93001b04  setlt.u r1, r22, r1
000ad8  3be00000  bneq r1, zero, 24
000adc  9b400601  srli r1, r12, 16
000ae0  9b801000  andi r1, r1, 1
000ae4  8b101610  add.s r1, r12, r1
000ae8  8b902011  add.s r1, r1, r18
000aec  5b010000  j 8
000af0  97106600  or r1, r12, r6
000af4  17814101  and r2, r3, r20
000af8  13012b04  setlt.u r2, r22, r2
000afc  3b600100  bneq r2, zero, 24
000b00  1bc10101  srli r2, r3, 16
000b04  1b011100  andi r2, r2, 1
000b08  0b912110  add.s r2, r3, r2
000b0c  0b112111  add.s r2, r2, r18
000b10  5b010000  j 8
000b14  17916100  or r2, r3, r6
000b18  97814501  and r3, r11, r20
000b1c  93013b04  setlt.u r3, r22, r3
000b20  3be00100  bneq r3, zero, 24
000b24  9bc10501  srli r3, r11, 16
000b28  9b811100  andi r3, r3, 1
000b2c  8b913510  add.s r3, r11, r3
000b30  0b962111  add.s r12, r3, r18
000b34  5b010000  j 8
000b38  17966500  or r12, r11, r6
000b3c  97014501  and r3, r10, r20
000b40  93013b04  setlt.u r3, r22, r3
000b44  3be00100  bneq r3, zero, 24
000b48  9b410501  srli r3, r10, 16
000b4c  9b811100  andi r3, r3, 1
000b50  8b113510  add.s r3, r10, r3
000b54  8b952111  add.s r11, r3, r18
000b58  5b010000  j 8
000b5c  97156500  or r11, r10, r6
000b60  97014201  and r3, r4, r20
000b64  93013b04  setlt.u r3, r22, r3
000b68  3be00100  bneq r3, zero, 24
000b6c  9b410201  srli r3, r4, 16
000b70  9b811100  andi r3, r3, 1
000b74  8b113210  add.s r3, r4, r3
000b78  0b922111  add.s r4, r3, r18
000b7c  5b010000  j 8
000b80  17126200  or r4, r4, r6
000b84  97814301  and r3, r7, r20
000b88  93013b04  setlt.u r3, r22, r3
000b8c  3be00100  bneq r3, zero, 24
000b90  9bc10301  srli r3, r7, 16
000b94  9b811100  andi r3, r3, 1
000b98  8b913310  add.s r3, r7, r3
000b9c  8b912111  add.s r3, r3, r18
000ba0  5b010000  j 8
000ba4  97916300  or r3, r7, r6
000ba8  1783cc01  and r6, r25, r28
000bac  1bc57c01  srli r10, r25, 23
000bb0  9f0b0000  addli r23, zero, 0
000bb4  9b339300  slli r7, r6, 9
000bb8  93690304  setlt.f r19, r6, zero
000bbc  1b05f50f  andi r10, r10, 255
000bc0  93830300  seteq r7, r7, zero
000bc4  1b75f50f  setlti r10, r10, 255
000bc8  97137500  or r7, r10, r7
000bcc  97837900  and r7, r19, r7
000bd0  3ba00300  bneq r7, zero, 8
000bd4  9f0b0300  addli r23, r6, 0
000bd8  1703cc01  and r6, r24, r28
000bdc  1b457c01  srli r10, r24, 23
000be0  1f0c0000  addli r24, zero, 0
000be4  9b339300  slli r7, r6, 9
000be8  93690304  setlt.f r19, r6, zero
000bec  1b05f50f  andi r10, r10, 255
000bf0  93830300  seteq r7, r7, zero
000bf4  1b75f50f  setlti r10, r10, 255
000bf8  97137500  or r7, r10, r7
000bfc  97837900  and r7, r19, r7
000c00  3ba00300  bneq r7, zero, 8
000c04  1f0c0300  addli r24, r6, 0
000c08  1783c201  and r6, r5, r28
000c0c  9bc27201  srli r5, r5, 23
000c10  9f0c0000  addli r25, zero, 0
000c14  ab094000  lui r19, 1024
000c18  9b339300  slli r7, r6, 9
000c1c  13650304  setlt.f r10, r6, zero
000c20  9b82f20f  andi r5, r5, 255
000c24  93830300  seteq r7, r7, zero
000c28  9bf2f20f  setlti r5, r5, 255
000c2c  97927200  or r5, r5, r7
000c30  97025500  and r5, r10, r5
000c34  3ba00200  bneq r5, zero, 8
000c38  9f0c0300  addli r25, r6, 0
000c3c  9782c801  and r5, r17, r28
000c40  9bc37801  srli r7, r17, 23
000c44  9f080000  addli r17, zero, 0
000c48  1bb39200  slli r6, r5, 9
000c4c  13e50204  setlt.f r10, r5, zero
000c50  9b83f30f  andi r7, r7, 255
000c54  13030300  seteq r6, r6, zero
000c58  9bf3f30f  setlti r7, r7, 255
000c5c  17936300  or r6, r7, r6
000c60  17036500  and r6, r10, r6
000c64  3b200300  bneq r6, zero, 8
000c68  9f880200  addli r17, r5, 0
000c6c  9782c401  and r5, r9, r28
000c70  9bc37401  srli r7, r9, 23
000c74  1f0d0000  addli r26, zero, 0
000c78  1bb39200  slli r6, r5, 9
000c7c  93e40204  setlt.f r9, r5, zero
000c80  9b83f30f  andi r7, r7, 255
000c84  13030300  seteq r6, r6, zero
000c88  9bf3f30f  setlti r7, r7, 255
000c8c  17936300  or r6, r7, r6
000c90  17836400  and r6, r9, r6
000c94  3b200300  bneq r6, zero, 8
000c98  1f8d0200  addli r26, r5, 0
000c9c  9702c401  and r5, r8, r28
000ca0  9b437401  srli r7, r8, 23
000ca4  9f0d0000  addli r27, zero, 0
000ca8  1bb39200  slli r6, r5, 9
000cac  13e40204  setlt.f r8, r5, zero
000cb0  9b83f30f  andi r7, r7, 255
000cb4  13030300  seteq r6, r6, zero
000cb8  9bf3f30f  setlti r7, r7, 255
000cbc  17936300  or r6, r7, r6
000cc0  17036400  and r6, r8, r6
000cc4  3b200300  bneq r6, zero, 8
000cc8  9f8d0200  addli r27, r5, 0
000ccc  9702c801  and r5, r16, r28
000cd0  9b437801  srli r7, r16, 23
000cd4  e7030ffe  storeli.w zero, -200(r30)
000cd8  1bb39200  slli r6, r5, 9
000cdc  13e40204  setlt.f r8, r5, zero
000ce0  9b83f30f  andi r7, r7, 255
000ce4  13030300  seteq r6, r6, zero
000ce8  9bf3f30f  setlti r7, r7, 255
000cec  17936300  or r6, r7, r6
000cf0  17036400  and r6, r8, r6
000cf4  3b200300  bneq r6, zero, 8
000cf8  e7035ffe  storeli.w r5, -200(r30)
000cfc  9782c701  and r5, r15, r28
000d00  9bc37701  srli r7, r15, 23
000d04  67430ffe  storeli.w zero, -204(r30)
000d08  1bb39200  slli r6, r5, 9
000d0c  13e40204  setlt.f r8, r5, zero
000d10  9b83f30f  andi r7, r7, 255
000d14  13030300  seteq r6, r6, zero
000d18  9bf3f30f  setlti r7, r7, 255
000d1c  17936300  or r6, r7, r6
000d20  17036400  and r6, r8, r6
000d24  3b200300  bneq r6, zero, 8
000d28  67435ffe  storeli.w r5, -204(r30)
000d2c  9782c601  and r5, r13, r28
000d30  9bc37601  srli r7, r13, 23
000d34  67030ffe  storeli.w zero, -208(r30)
000d38  1bb39200  slli r6, r5, 9
000d3c  13e40204  setlt.f r8, r5, zero
000d40  9b83f30f  andi r7, r7, 255
000d44  13030300  seteq r6, r6, zero
000d48  9bf3f30f  setlti r7, r7, 255
000d4c  17936300  or r6, r7, r6
000d50  17036400  and r6, r8, r6
000d54  3b200300  bneq r6, zero, 8
000d58  67035ffe  storeli.w r5, -208(r30)
000d5c  9702c701  and r5, r14, r28
000d60  9b437701  srli r7, r14, 23
000d64  1f070000  addli r14, zero, 0
000d68  ab06ff7f  lui r13, 524272
000d6c  1bb39200  slli r6, r5, 9
000d70  13e40204  setlt.f r8, r5, zero
000d74  9b83f30f  andi r7, r7, 255
000d78  13030300  seteq r6, r6, zero
000d7c  9bf3f30f  setlti r7, r7, 255
000d80  17936300  or r6, r7, r6
000d84  17036400  and r6, r8, r6
000d88  3b200300  bneq r6, zero, 8
000d8c  1f870200  addli r14, r5, 0
000d90  9782c001  and r5, r1, r28
000d94  9bc07001  srli r1, r1, 23
000d98  e7420ffe  storeli.w zero, -212(r30)
000d9c  1bb39200  slli r6, r5, 9
000da0  93e30204  setlt.f r7, r5, zero
000da4  9b80f00f  andi r1, r1, 255
000da8  13030300  seteq r6, r6, zero
000dac  9bf0f00f  setlti r1, r1, 255
000db0  97906000  or r1, r1, r6
000db4  17831300  and r6, r7, r1
000db8  3b200300  bneq r6, zero, 8
000dbc  e7425ffe  storeli.w r5, -212(r30)
000dc0  9702c101  and r5, r2, r28
000dc4  1b417101  srli r2, r2, 23
000dc8  e7020ffe  storeli.w zero, -216(r30)
000dcc  1bb39200  slli r6, r5, 9
000dd0  93e30204  setlt.f r7, r5, zero
000dd4  1b01f10f  andi r2, r2, 255
000dd8  13030300  seteq r6, r6, zero
000ddc  1b71f10f  setlti r2, r2, 255
000de0  17116100  or r2, r2, r6
000de4  17832300  and r6, r7, r2
000de8  3b200300  bneq r6, zero, 8
000dec  e7025ffe  storeli.w r5, -216(r30)
000df0  9702c601  and r5, r12, r28
000df4  9b437601  srli r7, r12, 23
000df8  9f000000  addli r1, zero, 0
000dfc  1bb39200  slli r6, r5, 9
000e00  13e40204  setlt.f r8, r5, zero
000e04  9b83f30f  andi r7, r7, 255
000e08  13030300  seteq r6, r6, zero
000e0c  9bf3f30f  setlti r7, r7, 255
000e10  17936300  or r6, r7, r6
000e14  17036400  and r6, r8, r6
000e18  3b200300  bneq r6, zero, 8
000e1c  9f800200  addli r1, r5, 0
000e20  9782c501  and r5, r11, r28
000e24  9bc37501  srli r7, r11, 23
000e28  e3455ffe  loadli.w r11,  -212(r30)
000e2c  63065ffe  loadli.w r12,  -216(r30)
000e30  67021ffe  storeli.w r1, -224(r30)
000e34  67420ffe  storeli.w zero, -220(r30)
000e38  1bb39200  slli r6, r5, 9
000e3c  13e40204  setlt.f r8, r5, zero
000e40  9b83f30f  andi r7, r7, 255
000e44  13030300  seteq r6, r6, zero
000e48  9bf3f30f  setlti r7, r7, 255
000e4c  17936300  or r6, r7, r6
000e50  17036400  and r6, r8, r6
000e54  3b200300  bneq r6, zero, 8
000e58  67425ffe  storeli.w r5, -220(r30)
000e5c  9702c201  and r5, r4, r28
000e60  1b427201  srli r4, r4, 23
000e64  9f000000  addli r1, zero, 0
000e68  1bb39200  slli r6, r5, 9
000e6c  93e30204  setlt.f r7, r5, zero
000e70  1b02f20f  andi r4, r4, 255
000e74  13030300  seteq r6, r6, zero
000e78  1b72f20f  setlti r4, r4, 255
000e7c  17126200  or r4, r4, r6
000e80  17824300  and r4, r7, r4
000e84  3b200200  bneq r4, zero, 8
000e88  9f800200  addli r1, r5, 0
000e8c  1782c101  and r4, r3, r28
000e90  9bc17101  srli r3, r3, 23
000e94  e7411ffe  storeli.w r1, -228(r30)
000e98  e7430ffe  storeli.w zero, -196(r30)
000e9c  9b329200  slli r5, r4, 9
000ea0  13630204  setlt.f r6, r4, zero
000ea4  9b81f10f  andi r3, r3, 255
000ea8  93820200  seteq r5, r5, zero
000eac  9bf1f10f  setlti r3, r3, 255
000eb0  97915100  or r3, r3, r5
000eb4  97013300  and r3, r6, r3
000eb8  3ba00100  bneq r3, zero, 8
000ebc  e7434ffe  storeli.w r4, -196(r30)
000ec0  1785db00  and r10, r23, r13
000ec4  9301ab04  setlt.u r3, r22, r10
000ec8  3bb00100  bneq r3, zero, 12
000ecc  e7017fff  storeli.w r23, -232(r30)
000ed0  db010000  j 12
000ed4  97903b01  or r1, r23, r19
000ed8  e7011ffe  storeli.w r1, -232(r30)
000edc  9704dc00  and r9, r24, r13
000ee0  e3007ffe  loadli.w r1,  -200(r30)
000ee4  63426ffe  loadli.w r4,  -204(r30)
000ee8  93019b04  setlt.u r3, r22, r9
000eec  3bb00100  bneq r3, zero, 12
000ef0  67408fff  storeli.w r24, -252(r30)
000ef4  db010000  j 12
000ef8  17113c01  or r2, r24, r19
000efc  67402ffe  storeli.w r2, -252(r30)
000f00  1784dc00  and r8, r25, r13
000f04  93018b04  setlt.u r3, r22, r8
000f08  3bb00100  bneq r3, zero, 12
000f0c  67009fff  storeli.w r25, -256(r30)
000f10  db010000  j 12
000f14  17913c01  or r2, r25, r19
000f18  67002ffe  storeli.w r2, -256(r30)
000f1c  9783d800  and r7, r17, r13
000f20  93017b04  setlt.u r3, r22, r7
000f24  3bb00100  bneq r3, zero, 12
000f28  e74f1ffd  storeli.w r17, -260(r30)
000f2c  db010000  j 12
000f30  17913801  or r2, r17, r19
000f34  e74f2ffc  storeli.w r2, -260(r30)
000f38  1708dd00  and r16, r26, r13
000f3c  93010b05  setlt.u r3, r22, r16
000f40  3bb00100  bneq r3, zero, 12
000f44  e70faffd  storeli.w r26, -264(r30)
000f48  db010000  j 12
000f4c  17113d01  or r2, r26, r19
000f50  e70f2ffc  storeli.w r2, -264(r30)
000f54  1783dd00  and r6, r27, r13
000f58  93016b04  setlt.u r3, r22, r6
000f5c  3bb00100  bneq r3, zero, 12
000f60  674fbffd  storeli.w r27, -268(r30)
000f64  db010000  j 12
000f68  17913d01  or r2, r27, r19
000f6c  674f2ffc  storeli.w r2, -268(r30)
000f70  9782d000  and r5, r1, r13
000f74  ab07ffff  lui r15, 1048560
000f78  93015b04  setlt.u r3, r22, r5
000f7c  37a00100  beq r3, zero, 8
000f80  97903001  or r1, r1, r19
000f84  170ed200  and r28, r4, r13
000f88  670f1ffc  storeli.w r1, -272(r30)
000f8c  e70c7ffd  storeli.w r23, -312(r30)
000f90  9301cb05  setlt.u r3, r22, r28
000f94  3bb00100  bneq r3, zero, 12
000f98  e74e4ffc  storeli.w r4, -276(r30)
000f9c  db010000  j 12
000fa0  97103201  or r1, r4, r19
000fa4  e74e1ffc  storeli.w r1, -276(r30)
000fa8  e3006ffe  loadli.w r1,  -208(r30)
000fac  670dbffd  storeli.w r27, -304(r30)
000fb0  978bd000  and r23, r1, r13
000fb4  93017b05  setlt.u r3, r22, r23
000fb8  37a00100  beq r3, zero, 8
000fbc  97903001  or r1, r1, r19
000fc0  970dd700  and r27, r14, r13
000fc4  e70e1ffc  storeli.w r1, -280(r30)
000fc8  9301bb05  setlt.u r3, r22, r27
000fcc  3bb00100  bneq r3, zero, 12
000fd0  674eeffc  storeli.w r14, -284(r30)
000fd4  db010000  j 12
000fd8  97103701  or r1, r14, r19
000fdc  674e1ffc  storeli.w r1, -284(r30)
000fe0  1782d500  and r4, r11, r13
000fe4  e74ceffc  storeli.w r14, -308(r30)
000fe8  93014b04  setlt.u r3, r22, r4
000fec  3bb00100  bneq r3, zero, 12
000ff0  670ebffc  storeli.w r11, -288(r30)
000ff4  db010000  j 12
000ff8  97903501  or r1, r11, r19
000ffc  670e1ffc  storeli.w r1, -288(r30)
001000  1707d600  and r14, r12, r13
001004  ab004000  lui r1, 1024
001008  9301eb04  setlt.u r3, r22, r14
00100c  3bb00100  bneq r3, zero, 12
001010  e74dcffc  storeli.w r12, -292(r30)
001014  db010000  j 12
001018  17113601  or r2, r12, r19
00101c  e74d2ffc  storeli.w r2, -292(r30)
001020  63064ffe  loadli.w r12,  -224(r30)
001024  9f850800  addli r11, r17, 0
001028  9f880c00  addli r17, r25, 0
00102c  9701d600  and r3, r12, r13
001030  93093b04  setlt.u r19, r22, r3
001034  3bb00900  bneq r19, zero, 12
001038  e70dcffc  storeli.w r12, -296(r30)
00103c  db010000  j 12
001040  17111600  or r2, r12, r1
001044  e70d2ffc  storeli.w r2, -296(r30)
001048  63464ffe  loadli.w r12,  -220(r30)
00104c  9709d600  and r19, r12, r13
001050  930c3b05  setlt.u r25, r22, r19
001054  3bb00c00  bneq r25, zero, 12
001058  6741cffe  storeli.w r12, -236(r30)
00105c  db010000  j 12
001060  17111600  or r2, r12, r1
001064  67412ffe  storeli.w r2, -236(r30)
001068  63413ffe  loadli.w r2,  -228(r30)
00106c  1706d100  and r12, r2, r13
001070  930ccb04  setlt.u r25, r22, r12
001074  37a00c00  beq r25, zero, 8
001078  17111100  or r2, r2, r1
00107c  674d2ffc  storeli.w r2, -300(r30)
001080  63417ffe  loadli.w r2,  -196(r30)
001084  970cd100  and r25, r2, r13
001088  e7432ffe  storeli.w r2, -196(r30)
00108c  93069b05  setlt.u r13, r22, r25
001090  3bd00600  bneq r13, zero, 20
001094  9f060100  addli r13, r2, 0
001098  1385aa04  setlt.u r10, r21, r10
00109c  37500500  beq r10, zero, 20
0010a0  db050000  j 44
0010a4  97161100  or r13, r2, r1
0010a8  1385aa04  setlt.u r10, r21, r10
0010ac  bb000500  bneq r10, zero, 32
0010b0  63019ffd  loadli.w r2,  -312(r30)
0010b4  1b450101  srli r10, r2, 16
0010b8  1b051500  andi r10, r10, 1
0010bc  1715a100  or r10, r2, r10
0010c0  0b152511  add.s r10, r10, r18
0010c4  9700f500  and r1, r10, r15
0010c8  e7011ffe  storeli.w r1, -232(r30)
0010cc  93849a04  setlt.u r9, r21, r9
0010d0  63450ffe  loadli.w r10,  -252(r30)
0010d4  3be00400  bneq r9, zero, 24
0010d8  9b440c01  srli r9, r24, 16
0010dc  9b841400  andi r9, r9, 1
0010e0  97149c00  or r9, r24, r9
0010e4  8b942411  add.s r9, r9, r18
0010e8  1785f400  and r10, r9, r15
0010ec  13848a04  setlt.u r8, r21, r8
0010f0  630c0ffe  loadli.w r24,  -256(r30)
0010f4  3b600400  bneq r8, zero, 24
0010f8  1bc40801  srli r8, r17, 16
0010fc  1b041400  andi r8, r8, 1
001100  17948800  or r8, r17, r8
001104  0b142411  add.s r8, r8, r18
001108  170cf400  and r24, r8, r15
00110c  93837a04  setlt.u r7, r21, r7
001110  6344fffd  loadli.w r8,  -260(r30)
001114  9f040fff  addli r9, r30, -128
001118  3be00300  bneq r7, zero, 24
00111c  9bc30501  srli r7, r11, 16
001120  9b831300  andi r7, r7, 1
001124  97937500  or r7, r11, r7
001128  8b932311  add.s r7, r7, r18
00112c  1784f300  and r8, r7, r15
001130  93830a05  setlt.u r7, r21, r16
001134  e305fffd  loadli.w r11,  -264(r30)
001138  e308effd  loadli.w r17,  -272(r30)
00113c  3be00300  bneq r7, zero, 24
001140  9b430d01  srli r7, r26, 16
001144  9b831300  andi r7, r7, 1
001148  97137d00  or r7, r26, r7
00114c  8b932311  add.s r7, r7, r18
001150  9785f300  and r11, r7, r15
001154  13836a04  setlt.u r6, r21, r6
001158  6348effd  loadli.w r16,  -268(r30)
00115c  3b700300  bneq r6, zero, 28
001160  e300affd  loadli.w r1,  -304(r30)
001164  1bc30001  srli r6, r1, 16
001168  1b031300  andi r6, r6, 1
00116c  17936000  or r6, r1, r6
001170  0b132311  add.s r6, r6, r18
001174  1708f300  and r16, r6, r15
001178  93825a04  setlt.u r5, r21, r5
00117c  634dcffd  loadli.w r26,  -284(r30)
001180  3bf00200  bneq r5, zero, 28
001184  e3007ffe  loadli.w r1,  -200(r30)
001188  9bc20001  srli r5, r1, 16
00118c  9b821200  andi r5, r5, 1
001190  97925000  or r5, r1, r5
001194  8b922211  add.s r5, r5, r18
001198  9788f200  and r17, r5, r15
00119c  9382ca05  setlt.u r5, r21, r28
0011a0  e347dffd  loadli.w r15,  -276(r30)
0011a4  2b03ffff  lui r6, 1048560
0011a8  3bf00200  bneq r5, zero, 28
0011ac  e3406ffe  loadli.w r1,  -204(r30)
0011b0  9bc20001  srli r5, r1, 16
0011b4  9b821200  andi r5, r5, 1
0011b8  97925000  or r5, r1, r5
0011bc  8b922211  add.s r5, r5, r18
0011c0  97876200  and r15, r5, r6
0011c4  93827a05  setlt.u r5, r21, r23
0011c8  e30bdffd  loadli.w r23,  -280(r30)
0011cc  630ebffd  loadli.w r28,  -296(r30)
0011d0  3bf00200  bneq r5, zero, 28
0011d4  e3006ffe  loadli.w r1,  -208(r30)
0011d8  9bc20001  srli r5, r1, 16
0011dc  9b821200  andi r5, r5, 1
0011e0  97925000  or r5, r1, r5
0011e4  8b922211  add.s r5, r5, r18
0011e8  978b6200  and r23, r5, r6
0011ec  9382ba05  setlt.u r5, r21, r27
0011f0  3bf00200  bneq r5, zero, 28
0011f4  e3409ffd  loadli.w r1,  -308(r30)
0011f8  9bc20001  srli r5, r1, 16
0011fc  9b821200  andi r5, r5, 1
001200  97925000  or r5, r1, r5
001204  8b922211  add.s r5, r5, r18
001208  178d6200  and r26, r5, r6
00120c  13824a04  setlt.u r4, r21, r4
001210  e30dcffd  loadli.w r27,  -288(r30)
001214  3b700200  bneq r4, zero, 28
001218  e3405ffe  loadli.w r1,  -212(r30)
00121c  1bc20001  srli r4, r1, 16
001220  1b021200  andi r4, r4, 1
001224  97904000  or r1, r1, r4
001228  8b902011  add.s r1, r1, r18
00122c  978d6000  and r27, r1, r6
001230  9380ea04  setlt.u r1, r21, r14
001234  6347bffd  loadli.w r14,  -292(r30)
001238  9f024000  addli r5, zero, 32
00123c  b7f10000  beq r1, zero, 124
001240  93803a04  setlt.u r1, r21, r3
001244  37d20000  beq r1, zero, 148
001248  93803a05  setlt.u r1, r21, r19
00124c  bb800000  bneq r1, zero, 32
001250  63414ffe  loadli.w r2,  -220(r30)
001254  9b400101  srli r1, r2, 16
001258  9b801000  andi r1, r1, 1
00125c  97101100  or r1, r2, r1
001260  8b902011  add.s r1, r1, r18
001264  97806000  and r1, r1, r6
001268  67411ffe  storeli.w r1, -236(r30)
00126c  9380ca04  setlt.u r1, r21, r12
001270  6346affd  loadli.w r12,  -300(r30)
001274  ab094000  lui r19, 1024
001278  3bf00000  bneq r1, zero, 28
00127c  63413ffe  loadli.w r2,  -228(r30)
001280  9b400101  srli r1, r2, 16
001284  9b801000  andi r1, r1, 1
001288  97101100  or r1, r2, r1
00128c  8b902011  add.s r1, r1, r18
001290  17866000  and r12, r1, r6
001294  93809a05  setlt.u r1, r21, r25
001298  bbea00f6  bneq r1, zero, -4424
00129c  63417ffe  loadli.w r2,  -196(r30)
0012a0  9b400101  srli r1, r2, 16
0012a4  9b801000  andi r1, r1, 1
0012a8  97101100  or r1, r2, r1
0012ac  8b902011  add.s r1, r1, r18
0012b0  97866000  and r13, r1, r6
0012b4  dbd3fdff  j -4452
0012b8  63015ffe  loadli.w r2,  -216(r30)
0012bc  9b400101  srli r1, r2, 16
0012c0  9b801000  andi r1, r1, 1
0012c4  97101100  or r1, r2, r1
0012c8  8b902011  add.s r1, r1, r18
0012cc  17876000  and r14, r1, r6
0012d0  93803a04  setlt.u r1, r21, r3
0012d4  bbdd00fe  bneq r1, zero, -140
0012d8  63014ffe  loadli.w r2,  -224(r30)
0012dc  9b400101  srli r1, r2, 16
0012e0  9b801000  andi r1, r1, 1
0012e4  97101100  or r1, r2, r1
0012e8  8b902011  add.s r1, r1, r18
0012ec  178e6000  and r28, r1, r6
0012f0  93803a05  setlt.u r1, r21, r19
0012f4  37fd00fe  beq r1, zero, -164
0012f8  dbeeffff  j -140
0012fc  9f0e0ffd  addli sp, r30, -384
001300  9f8e0e03  addli sp, sp, 384
001304  00a00300  mfence { lm, sm, gm }
001308  00100000  exit
00130c  00100000  exit
001310  00100000  exit
001314  00100000  exit
001318  00100000  exit
00131c  00100000  exit
001320  00100000  exit
001324  00100000  exit
001328  00100000  exit
00132c  00100000  exit
001330  00100000  exit
001334  00100000  exit
001338  00100000  exit
00133c  00100000  exit
001340  00100000  exit
001344  00100000  exit
001348  00100000  exit
00134c  00100000  exit
001350  00100000  exit
001354  00100000  exit
001358  00100000  exit
00135c  00100000  exit
001360  00100000  exit
001364  00100000  exit
001368  00100000  exit
00136c  00100000  exit
001370  00100000  exit
001374  00100000  exit
001378  00100000  exit
00137c  00100000  exit
001380  00100000  exit
001384  00100000  exit
001388  00100000  exit
00138c  00100000  exit
001390  00100000  exit
001394  00100000  exit
001398  00100000  exit
00139c  00100000  exit
0013a0  00100000  exit
0013a4  00100000  exit
0013a8  00100000  exit
0013ac  00100000  exit
0013b0  00100000  exit
0013b4  00100000  exit
0013b8  00100000  exit
0013bc  00100000  exit
0013c0  00100000  exit
0013c4  00100000  exit
0013c8  00100000  exit
0013cc  00100000  exit
0013d0  00100000  exit
0013d4  00100000  exit
0013d8  00100000  exit
0013dc  00100000  exit
0013e0  00100000  exit
0013e4  00100000  exit
0013e8  00100000  exit
0013ec  00100000  exit
0013f0  00100000  exit
0013f4  00100000  exit
0013f8  00100000  exit
0013fc  00100000  exit
001400  00100000  exit
001404  00100000  exit
001408  00100000  exit
00140c  00100000  exit
001410  00100000  exit
001414  00100000  exit
001418  00100000  exit
00141c  00100000  exit
001420  00100000  exit
001424  00100000  exit
001428  00100000  exit
00142c  00100000  exit
001430  00100000  exit
001434  00100000  exit
001438  00100000  exit
00143c  00100000  exit
001440  00100000  exit
001444  00100000  exit
001448  00100000  exit
00144c  00100000  exit
001450  00100000  exit
001454  00100000  exit
001458  00100000  exit
00145c  00100000  exit
001460  00100000  exit
001464  00100000  exit
001468  00100000  exit
00146c  00100000  exit
001470  00100000  exit
001474  00100000  exit
001478  00100000  exit
00147c  00100000  exit
001480  00100000  exit
001484  00100000  exit
001488  00100000  exit
00148c  00100000  exit
001490  00100000  exit
001494  00100000  exit
001498  00100000  exit
00149c  00100000  exit
0014a0  00100000  exit
0014a4  00100000  exit
0014a8  00100000  exit
0014ac  00100000  exit
0014b0  00100000  exit
0014b4  00100000  exit
0014b8  00100000  exit
0014bc  00100000  exit
0014c0  00100000  exit
0014c4  00100000  exit
0014c8  00100000  exit
0014cc  00100000  exit
0014d0  00100000  exit
0014d4  00100000  exit
0014d8  00100000  exit
0014dc  00100000  exit
0014e0  00100000  exit
0014e4  00100000  exit
0014e8  00100000  exit
0014ec  00100000  exit
0014f0  00100000  exit
0014f4  00100000  exit
0014f8  00100000  exit
0014fc  00100000  exit
001500  00100000  exit
001504  00100000  exit
001508  00100000  exit
00150c  00100000  exit
001510  00100000  exit
001514  00100000  exit
001518  00100000  exit
00151c  00100000  exit
001520  00100000  exit
001524  00100000  exit
001528  00100000  exit
00152c  00100000  exit
001530  00100000  exit
001534  00100000  exit
001538  00100000  exit
00153c  00100000  exit
001540  00100000  exit
001544  00100000  exit
001548  00100000  exit
