; SHA-256 10e31460f297efd457267db1e4a774c9153d7b56fd95ce3ff1a0e5f06140d450
; P800 Cluster · XTDK LLVM 19 · 724 / 724 words decoded
; bound names: triton_poi_fused_add_silu_0
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
0000dc  9f8e8efd  addli sp, sp, -320
0000e0  1f8f0e02  addli r30, sp, 256
0000e4  00520002  load_param_i r4, 0
0000e8  63014f00  loadli.w r2,  32(r30)
0000ec  e3403f00  loadli.w r1,  28(r30)
0000f0  e3414f00  loadli.w r3,  36(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  e7421ffe  storeli.w r1, -212(r30)
000100  4b804004  ble.s r1, r4, 2048
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  9f024000  addli r5, zero, 32
000110  9f040fff  addli r9, r30, -128
000114  2b0a807f  lui r20, 522240
000118  2b0bffff  lui r22, 1048560
00011c  ab0b803f  lui r23, 260096
000120  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000124  9bb04000  slli r1, r1, 4
000128  e7022ffe  storeli.w r2, -216(r30)
00012c  2bf1ff7f  lui r2, 524287
000130  67421ffe  storeli.w r1, -220(r30)
000134  ab700000  lui r1, 7
000138  9b19f1ff  ori r19, r2, 4095
00013c  1b99f0ff  ori r18, r1, 4095
000140  9f200000  addli r1, zero, 2
000144  fe8100e0  vmmov mr3, r1
000148  67022fff  storeli.w r18, -224(r30)
00014c  5b4b0000  j 600
000150  1bc10d01  srli r2, r27, 16
000154  1b011100  andi r2, r2, 1
000158  0b912d10  add.s r2, r27, r2
00015c  8b112111  add.s r3, r2, r18
000160  17086d01  and r16, r26, r22
000164  170e6e01  and r28, r28, r22
000168  170d6401  and r26, r8, r22
00016c  970d6301  and r27, r6, r22
000170  97836001  and r7, r1, r22
000174  17036701  and r6, r14, r22
000178  97006601  and r1, r12, r22
00017c  97066501  and r13, r10, r22
000180  97826501  and r5, r11, r22
000184  97856a01  and r11, r21, r22
000188  17816801  and r2, r17, r22
00018c  17056c01  and r10, r24, r22
000190  0b640858  neg.f r8, r16
000194  8b640e58  neg.f r9, r28
000198  8bea0658  neg.f r21, r13
00019c  8b680d58  neg.f r17, r26
0001a0  0b690358  neg.f r18, r6
0001a4  0f060400  exp.f.rn r12, r8
0001a8  0f870400  exp.f.rn r14, r9
0001ac  17846701  and r8, r15, r22
0001b0  8f8a0a00  exp.f.rn r21, r21
0001b4  8f880800  exp.f.rn r17, r17
0001b8  0f090900  exp.f.rn r18, r18
0001bc  97046201  and r9, r4, r22
0001c0  17826c01  and r4, r25, r22
0001c4  8bec0358  neg.f r25, r7
0001c8  8f8c0c00  exp.f.rn r25, r25
0001cc  8b677611  add.f.rn r15, r12, r23
0001d0  17866101  and r12, r3, r22
0001d4  8b617711  add.f.rn r3, r14, r23
0001d8  0be70d58  neg.f r14, r27
0001dc  8bea7a11  add.f.rn r21, r21, r23
0001e0  8be87811  add.f.rn r17, r17, r23
0001e4  0b697911  add.f.rn r18, r18, r23
0001e8  0f0c0700  exp.f.rn r24, r14
0001ec  8bec7c11  add.f.rn r25, r25, r23
0001f0  8f87fb18  div.f.rn r15, r23, r15
0001f4  8f813b18  div.f.rn r3, r23, r3
0001f8  8f8a5b19  div.f.rn r21, r23, r21
0001fc  8f881b19  div.f.rn r17, r23, r17
000200  0f892b19  div.f.rn r18, r23, r18
000204  8f8c9b19  div.f.rn r25, r23, r25
000208  0b6c7c11  add.f.rn r24, r24, r23
00020c  0be70721  mul.f.rn r14, r15, r16
000210  8be7c121  mul.f.rn r15, r3, r28
000214  8b610158  neg.f r3, r2
000218  0be80258  neg.f r16, r5
00021c  8be6da20  mul.f.rn r13, r21, r13
000220  8bea0458  neg.f r21, r9
000224  0b636920  mul.f.rn r6, r18, r6
000228  0be90558  neg.f r18, r11
00022c  8be8a821  mul.f.rn r17, r17, r26
000230  0b6d0458  neg.f r26, r8
000234  8f810100  exp.f.rn r3, r3
000238  0f080800  exp.f.rn r16, r16
00023c  0f8c8b19  div.f.rn r24, r23, r24
000240  8f8a0a00  exp.f.rn r21, r21
000244  8be37c20  mul.f.rn r7, r25, r7
000248  8b6c0558  neg.f r25, r10
00024c  0f0d0d00  exp.f.rn r26, r26
000250  0f090900  exp.f.rn r18, r18
000254  8f8c0c00  exp.f.rn r25, r25
000258  33130300  float2bfloat.rn r6, r6
00025c  b3930300  float2bfloat.rn r7, r7
000260  73166ff8  store.h r6, -116(r30)
000264  8be17111  add.f.rn r3, r3, r23
000268  0b687811  add.f.rn r16, r16, r23
00026c  0b6cbc21  mul.f.rn r24, r24, r27
000270  8bed0058  neg.f r27, r1
000274  8bea7a11  add.f.rn r21, r21, r23
000278  0b6d7d11  add.f.rn r26, r26, r23
00027c  0b697911  add.f.rn r18, r18, r23
000280  73157ff8  store.h r7, -118(r30)
000284  8f8d0d00  exp.f.rn r27, r27
000288  8bec7c11  add.f.rn r25, r25, r23
00028c  8f813b18  div.f.rn r3, r23, r3
000290  0f880b19  div.f.rn r16, r23, r16
000294  8f8a5b19  div.f.rn r21, r23, r21
000298  0f8dab19  div.f.rn r26, r23, r26
00029c  0f892b19  div.f.rn r18, r23, r18
0002a0  8f8c9b19  div.f.rn r25, r23, r25
0002a4  8bed7d11  add.f.rn r27, r27, r23
0002a8  0be12120  mul.f.rn r2, r3, r2
0002ac  8b610658  neg.f r3, r12
0002b0  8b625820  mul.f.rn r5, r16, r5
0002b4  0b680258  neg.f r16, r4
0002b8  8be49a20  mul.f.rn r9, r21, r9
0002bc  0b648d20  mul.f.rn r8, r26, r8
0002c0  8b65b920  mul.f.rn r11, r18, r11
0002c4  8f810100  exp.f.rn r3, r3
0002c8  0f080800  exp.f.rn r16, r16
0002cc  8f8dbb19  div.f.rn r27, r23, r27
0002d0  0be5ac20  mul.f.rn r10, r25, r10
0002d4  33110100  float2bfloat.rn r2, r2
0002d8  b3920200  float2bfloat.rn r5, r5
0002dc  73182ff8  store.h r2, -112(r30)
0002e0  33910400  float2bfloat.rn r2, r9
0002e4  73175ff8  store.h r5, -114(r30)
0002e8  9f040fff  addli r9, r30, -128
0002ec  8be17111  add.f.rn r3, r3, r23
0002f0  0b687811  add.f.rn r16, r16, r23
0002f4  8be01d20  mul.f.rn r1, r27, r1
0002f8  731b2ff8  store.h r2, -106(r30)
0002fc  33910500  float2bfloat.rn r2, r11
000300  731d2ff8  store.h r2, -102(r30)
000304  8f813b18  div.f.rn r3, r23, r3
000308  0f880b19  div.f.rn r16, r23, r16
00030c  b3900000  float2bfloat.rn r1, r1
000310  73191ff8  store.h r1, -110(r30)
000314  b3100400  float2bfloat.rn r1, r8
000318  731a1ff8  store.h r1, -108(r30)
00031c  b3100500  float2bfloat.rn r1, r10
000320  731c1ff8  store.h r1, -104(r30)
000324  8be1c120  mul.f.rn r3, r3, r12
000328  0b624820  mul.f.rn r4, r16, r4
00032c  33160700  float2bfloat.rn r12, r14
000330  33970700  float2bfloat.rn r14, r15
000334  7310cff8  store.h r12, -128(r30)
000338  33160c00  float2bfloat.rn r12, r24
00033c  7311eff8  store.h r14, -126(r30)
000340  33970800  float2bfloat.rn r14, r17
000344  7312cff8  store.h r12, -124(r30)
000348  33960600  float2bfloat.rn r12, r13
00034c  7313eff8  store.h r14, -122(r30)
000350  33910100  float2bfloat.rn r2, r3
000354  b3100200  float2bfloat.rn r1, r4
000358  6b520ff3  load.d r[5:6], -208(r30)
00035c  7314cff8  store.h r12, -120(r30)
000360  731f2ff8  store.h r2, -98(r30)
000364  6b510f01  load.d r[3:4], 16(r30)
000368  731e1ff8  store.h r1, -100(r30)
00036c  ab0000f0  lui r1, 983040
000370  00a00000  mfence { lm }
000374  0b214110  add.ul r[3:4], r[3:4], r[5:6]
000378  9f024000  addli r5, zero, 32
00037c  63427ffe  loadli.w r4,  -196(r30)
000380  97901200  or r1, r5, r1
000384  ff309100  s_lm2gm r1, r9, 0(r[3:4])
000388  e3005ffe  loadli.w r1,  -216(r30)
00038c  00a00000  mfence { lm }
000390  63094ffe  loadli.w r18,  -224(r30)
000394  0b121210  add.s r4, r4, r1
000398  e3405ffe  loadli.w r1,  -212(r30)
00039c  3f201200  blt.s r4, r1, 8
0003a0  5bac0000  j 1376
0003a4  e3404f00  loadli.w r1,  36(r30)
0003a8  63014f00  loadli.w r2,  32(r30)
0003ac  ab0100f0  lui r3, 983040
0003b0  e7434ffe  storeli.w r4, -196(r30)
0003b4  9f130000  addli r7, zero, 1
0003b8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0003bc  9f180000  addli r17, zero, 1
0003c0  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0003c4  97913200  or r3, r5, r3
0003c8  7e8108e0  vmmov mr2, r17
0003cc  8b101230  div.s r1, r4, r1
0003d0  2b0200f0  lui r4, 983040
0003d4  17924200  or r4, r5, r4
0003d8  8b902030  div.s r1, r1, r2
0003dc  63414ffe  loadli.w r2,  -220(r30)
0003e0  9bb0a000  slli r1, r1, 10
0003e4  8b902010  add.s r1, r1, r2
0003e8  1f010008  addli r2, zero, 1024
0003ec  0b912038  mod.s r2, r1, r2
0003f0  b3920028  sext_int2long r[6:7], r1
0003f4  17b57202  sll.d r[11:12], r[6:7], r7
0003f8  eb520f00  load.d r[6:7], 0(r30)
0003fc  7338aff2  store.d r[11:12], -208(r30)
000400  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
000404  b3100128  sext_int2long r[2:3], r2
000408  97b07002  sll.d r[2:3], r[2:3], r7
00040c  eb538f00  load.d r[8:9], 8(r30)
000410  8ba01310  add.ul r[2:3], r[8:9], r[2:3]
000414  9f038ffe  addli r7, r30, -192
000418  ffa17200  l_gm2lm r3, r7, 0(r[6:7])
00041c  7fa29000  l_gm2lm r4, r9, 0(r[2:3])
000420  00a00000  mfence { lm }
000424  eb300ff4  load.hu r1, -192(r30)
000428  6b312ff4  load.hu r2, -190(r30)
00042c  eb314ff4  load.hu r3, -188(r30)
000430  6b326ff4  load.hu r4, -186(r30)
000434  eb328ff4  load.hu r5, -184(r30)
000438  6b33aff4  load.hu r6, -182(r30)
00043c  eb33cff4  load.hu r7, -180(r30)
000440  6b34eff4  load.hu r8, -178(r30)
000444  eb340ff5  load.hu r9, -176(r30)
000448  6b352ff5  load.hu r10, -174(r30)
00044c  eb354ff5  load.hu r11, -172(r30)
000450  6b366ff5  load.hu r12, -170(r30)
000454  eb368ff5  load.hu r13, -168(r30)
000458  6b37aff5  load.hu r14, -166(r30)
00045c  eb37cff5  load.hu r15, -164(r30)
000460  6b38eff5  load.hu r16, -162(r30)
000464  b3900018  bfloat2float.rn r1, r1
000468  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
00046c  b3100118  bfloat2float.rn r1, r2
000470  1f410000  addli r2, zero, 4
000474  7e0001e0  vmmov mr0, r2
000478  1f011000  addli r2, zero, 8
00047c  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
000480  b3900118  bfloat2float.rn r1, r3
000484  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000488  b3100218  bfloat2float.rn r1, r4
00048c  7e0001e0  vmmov mr0, r2
000490  1f012000  addli r2, zero, 16
000494  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000498  b3900218  bfloat2float.rn r1, r5
00049c  7e0001e0  vmmov mr0, r2
0004a0  1f014000  addli r2, zero, 32
0004a4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0004a8  b3100318  bfloat2float.rn r1, r6
0004ac  7e0001e0  vmmov mr0, r2
0004b0  1f018000  addli r2, zero, 64
0004b4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0004b8  b3900318  bfloat2float.rn r1, r7
0004bc  7e0001e0  vmmov mr0, r2
0004c0  1f010001  addli r2, zero, 128
0004c4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0004c8  b3100418  bfloat2float.rn r1, r8
0004cc  7e0001e0  vmmov mr0, r2
0004d0  1f010002  addli r2, zero, 256
0004d4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0004d8  b3900418  bfloat2float.rn r1, r9
0004dc  7e0001e0  vmmov mr0, r2
0004e0  1f010004  addli r2, zero, 512
0004e4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0004e8  b3100518  bfloat2float.rn r1, r10
0004ec  7e0001e0  vmmov mr0, r2
0004f0  1f010008  addli r2, zero, 1024
0004f4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0004f8  b3900518  bfloat2float.rn r1, r11
0004fc  7e0001e0  vmmov mr0, r2
000500  1f010010  addli r2, zero, 2048
000504  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000508  b3100618  bfloat2float.rn r1, r12
00050c  7e0001e0  vmmov mr0, r2
000510  1f010020  addli r2, zero, 4096
000514  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000518  b3900618  bfloat2float.rn r1, r13
00051c  7e0001e0  vmmov mr0, r2
000520  1f010040  addli r2, zero, 8192
000524  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000528  b3100718  bfloat2float.rn r1, r14
00052c  7e0001e0  vmmov mr0, r2
000530  2b410000  lui r2, 4
000534  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000538  b3900718  bfloat2float.rn r1, r15
00053c  7e0001e0  vmmov mr0, r2
000540  2b810000  lui r2, 8
000544  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000548  b3100818  bfloat2float.rn r1, r16
00054c  7e0001e0  vmmov mr0, r2
000550  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000554  eb300ff8  load.hu r1, -128(r30)
000558  6b312ff8  load.hu r2, -126(r30)
00055c  eb314ff8  load.hu r3, -124(r30)
000560  6b326ff8  load.hu r4, -122(r30)
000564  eb328ff8  load.hu r5, -120(r30)
000568  6b33aff8  load.hu r6, -118(r30)
00056c  eb33cff8  load.hu r7, -116(r30)
000570  6b34eff8  load.hu r8, -114(r30)
000574  eb340ff9  load.hu r9, -112(r30)
000578  6b352ff9  load.hu r10, -110(r30)
00057c  eb354ff9  load.hu r11, -108(r30)
000580  6b366ff9  load.hu r12, -106(r30)
000584  eb368ff9  load.hu r13, -104(r30)
000588  6b37aff9  load.hu r14, -102(r30)
00058c  eb37cff9  load.hu r15, -100(r30)
000590  6b38eff9  load.hu r16, -98(r30)
000594  b3900018  bfloat2float.rn r1, r1
000598  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00059c  b3100118  bfloat2float.rn r1, r2
0005a0  1f410000  addli r2, zero, 4
0005a4  7e0101e0  vmmov mr2, r2
0005a8  1f011000  addli r2, zero, 8
0005ac  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0005b0  b3900118  bfloat2float.rn r1, r3
0005b4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0005b8  b3100218  bfloat2float.rn r1, r4
0005bc  7e0101e0  vmmov mr2, r2
0005c0  1f012000  addli r2, zero, 16
0005c4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0005c8  b3900218  bfloat2float.rn r1, r5
0005cc  7e0101e0  vmmov mr2, r2
0005d0  1f014000  addli r2, zero, 32
0005d4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0005d8  b3100318  bfloat2float.rn r1, r6
0005dc  7e0101e0  vmmov mr2, r2
0005e0  1f018000  addli r2, zero, 64
0005e4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0005e8  b3900318  bfloat2float.rn r1, r7
0005ec  7e0101e0  vmmov mr2, r2
0005f0  1f010001  addli r2, zero, 128
0005f4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0005f8  b3100418  bfloat2float.rn r1, r8
0005fc  7e0101e0  vmmov mr2, r2
000600  1f010002  addli r2, zero, 256
000604  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000608  b3900418  bfloat2float.rn r1, r9
00060c  7e0101e0  vmmov mr2, r2
000610  1f010004  addli r2, zero, 512
000614  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000618  b3100518  bfloat2float.rn r1, r10
00061c  7e0101e0  vmmov mr2, r2
000620  1f010008  addli r2, zero, 1024
000624  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000628  b3900518  bfloat2float.rn r1, r11
00062c  7e0101e0  vmmov mr2, r2
000630  1f010010  addli r2, zero, 2048
000634  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000638  b3100618  bfloat2float.rn r1, r12
00063c  7e0101e0  vmmov mr2, r2
000640  1f010020  addli r2, zero, 4096
000644  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000648  b3900618  bfloat2float.rn r1, r13
00064c  7e0101e0  vmmov mr2, r2
000650  1f010040  addli r2, zero, 8192
000654  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000658  b3100718  bfloat2float.rn r1, r14
00065c  7e0101e0  vmmov mr2, r2
000660  2b410000  lui r2, 4
000664  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000668  b3900718  bfloat2float.rn r1, r15
00066c  7e0101e0  vmmov mr2, r2
000670  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000674  b3100818  bfloat2float.rn r1, r16
000678  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
00067c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000680  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
000684  00a00000  mfence { lm }
000688  63058fff  loadli.w r10,  -64(r30)
00068c  63438fff  loadli.w r6,  -60(r30)
000690  e3019fff  loadli.w r3,  -56(r30)
000694  63449fff  loadli.w r8,  -52(r30)
000698  6302afff  loadli.w r4,  -48(r30)
00069c  e340afff  loadli.w r1,  -44(r30)
0006a0  6306bfff  loadli.w r12,  -40(r30)
0006a4  e345bfff  loadli.w r11,  -36(r30)
0006a8  e308cfff  loadli.w r17,  -32(r30)
0006ac  6341cfff  loadli.w r2,  -28(r30)
0006b0  e307dfff  loadli.w r15,  -24(r30)
0006b4  e346dfff  loadli.w r13,  -20(r30)
0006b8  e304efff  loadli.w r9,  -16(r30)
0006bc  e343efff  loadli.w r7,  -12(r30)
0006c0  97023501  and r5, r10, r19
0006c4  13075a04  setlt.u r14, r20, r5
0006c8  e302ffff  loadli.w r5,  -8(r30)
0006cc  e34dffff  loadli.w r27,  -4(r30)
0006d0  3b700700  bneq r14, zero, 28
0006d4  1b470501  srli r14, r10, 16
0006d8  2b084000  lui r16, 1024
0006dc  1b071700  andi r14, r14, 1
0006e0  0b15e510  add.s r10, r10, r14
0006e4  0b1d2511  add.s r26, r10, r18
0006e8  db010000  j 12
0006ec  2b084000  lui r16, 1024
0006f0  171d0501  or r26, r10, r16
0006f4  17053301  and r10, r6, r19
0006f8  1305aa04  setlt.u r10, r20, r10
0006fc  3b600500  bneq r10, zero, 24
000700  1b450301  srli r10, r6, 16
000704  1b051500  andi r10, r10, 1
000708  0b13a310  add.s r6, r6, r10
00070c  0b1e2311  add.s r28, r6, r18
000710  5b010000  j 8
000714  171e0301  or r28, r6, r16
000718  17833101  and r6, r3, r19
00071c  13036a04  setlt.u r6, r20, r6
000720  3b600300  bneq r6, zero, 24
000724  1bc30101  srli r6, r3, 16
000728  1b031300  andi r6, r6, 1
00072c  8b916110  add.s r3, r3, r6
000730  0b932111  add.s r6, r3, r18
000734  5b010000  j 8
000738  17930101  or r6, r3, r16
00073c  97013401  and r3, r8, r19
000740  93013a04  setlt.u r3, r20, r3
000744  3be00100  bneq r3, zero, 24
000748  9b410401  srli r3, r8, 16
00074c  9b811100  andi r3, r3, 1
000750  8b113410  add.s r3, r8, r3
000754  0b942111  add.s r8, r3, r18
000758  5b010000  j 8
00075c  17140401  or r8, r8, r16
000760  97013201  and r3, r4, r19
000764  93013a04  setlt.u r3, r20, r3
000768  3be00100  bneq r3, zero, 24
00076c  9b410201  srli r3, r4, 16
000770  9b811100  andi r3, r3, 1
000774  8b113210  add.s r3, r4, r3
000778  0b952111  add.s r10, r3, r18
00077c  5b010000  j 8
000780  17150201  or r10, r4, r16
000784  97813001  and r3, r1, r19
000788  93013a04  setlt.u r3, r20, r3
00078c  3be00100  bneq r3, zero, 24
000790  9bc10001  srli r3, r1, 16
000794  9b811100  andi r3, r3, 1
000798  8b903010  add.s r1, r1, r3
00079c  8b902011  add.s r1, r1, r18
0007a0  5b010000  j 8
0007a4  97900001  or r1, r1, r16
0007a8  97013601  and r3, r12, r19
0007ac  93013a04  setlt.u r3, r20, r3
0007b0  3be00100  bneq r3, zero, 24
0007b4  9b410601  srli r3, r12, 16
0007b8  9b811100  andi r3, r3, 1
0007bc  8b113610  add.s r3, r12, r3
0007c0  0b972111  add.s r14, r3, r18
0007c4  5b010000  j 8
0007c8  17170601  or r14, r12, r16
0007cc  97813501  and r3, r11, r19
0007d0  93013a04  setlt.u r3, r20, r3
0007d4  3be00100  bneq r3, zero, 24
0007d8  9bc10501  srli r3, r11, 16
0007dc  9b811100  andi r3, r3, 1
0007e0  8b913510  add.s r3, r11, r3
0007e4  8b952111  add.s r11, r3, r18
0007e8  5b010000  j 8
0007ec  97950501  or r11, r11, r16
0007f0  97813801  and r3, r17, r19
0007f4  93013a04  setlt.u r3, r20, r3
0007f8  3be00100  bneq r3, zero, 24
0007fc  9bc10801  srli r3, r17, 16
000800  9b811100  andi r3, r3, 1
000804  8b913810  add.s r3, r17, r3
000808  8b982111  add.s r17, r3, r18
00080c  5b010000  j 8
000810  97980801  or r17, r17, r16
000814  97013101  and r3, r2, r19
000818  93013a04  setlt.u r3, r20, r3
00081c  3be00100  bneq r3, zero, 24
000820  9b410101  srli r3, r2, 16
000824  9b811100  andi r3, r3, 1
000828  0b113110  add.s r2, r2, r3
00082c  0b162111  add.s r12, r2, r18
000830  5b010000  j 8
000834  17160101  or r12, r2, r16
000838  17813701  and r2, r15, r19
00083c  13012a04  setlt.u r2, r20, r2
000840  3b600100  bneq r2, zero, 24
000844  1bc10701  srli r2, r15, 16
000848  1b011100  andi r2, r2, 1
00084c  0b912710  add.s r2, r15, r2
000850  8b172111  add.s r15, r2, r18
000854  5b010000  j 8
000858  97970701  or r15, r15, r16
00085c  17813601  and r2, r13, r19
000860  13012a04  setlt.u r2, r20, r2
000864  3b600100  bneq r2, zero, 24
000868  1bc10601  srli r2, r13, 16
00086c  1b011100  andi r2, r2, 1
000870  0b912610  add.s r2, r13, r2
000874  0b122111  add.s r4, r2, r18
000878  5b010000  j 8
00087c  17920601  or r4, r13, r16
000880  17813401  and r2, r9, r19
000884  13012a04  setlt.u r2, r20, r2
000888  3b600100  bneq r2, zero, 24
00088c  1bc10401  srli r2, r9, 16
000890  1b011100  andi r2, r2, 1
000894  0b912410  add.s r2, r9, r2
000898  0b1c2111  add.s r24, r2, r18
00089c  5b010000  j 8
0008a0  179c0401  or r24, r9, r16
0008a4  17813301  and r2, r7, r19
0008a8  13012a04  setlt.u r2, r20, r2
0008ac  3b600100  bneq r2, zero, 24
0008b0  1bc10301  srli r2, r7, 16
0008b4  1b011100  andi r2, r2, 1
0008b8  0b912310  add.s r2, r7, r2
0008bc  8b1a2111  add.s r21, r2, r18
0008c0  5b010000  j 8
0008c4  979a0301  or r21, r7, r16
0008c8  17813201  and r2, r5, r19
0008cc  13012a04  setlt.u r2, r20, r2
0008d0  3b600100  bneq r2, zero, 24
0008d4  1bc10201  srli r2, r5, 16
0008d8  1b011100  andi r2, r2, 1
0008dc  0b912210  add.s r2, r5, r2
0008e0  8b1c2111  add.s r25, r2, r18
0008e4  5b010000  j 8
0008e8  979c0201  or r25, r5, r16
0008ec  17813d01  and r2, r27, r19
0008f0  13012a04  setlt.u r2, r20, r2
0008f4  377101fc  beq r2, zero, -1956
0008f8  97910d01  or r3, r27, r16
0008fc  db0cffff  j -1948
000900  9f0e0ffe  addli sp, r30, -256
000904  9f8e0e02  addli sp, sp, 256
000908  00a00300  mfence { lm, sm, gm }
00090c  00100000  exit
000910  00100000  exit
000914  00100000  exit
000918  00100000  exit
00091c  00100000  exit
000920  00100000  exit
000924  00100000  exit
000928  00100000  exit
00092c  00100000  exit
000930  00100000  exit
000934  00100000  exit
000938  00100000  exit
00093c  00100000  exit
000940  00100000  exit
000944  00100000  exit
000948  00100000  exit
00094c  00100000  exit
000950  00100000  exit
000954  00100000  exit
000958  00100000  exit
00095c  00100000  exit
000960  00100000  exit
000964  00100000  exit
000968  00100000  exit
00096c  00100000  exit
000970  00100000  exit
000974  00100000  exit
000978  00100000  exit
00097c  00100000  exit
000980  00100000  exit
000984  00100000  exit
000988  00100000  exit
00098c  00100000  exit
000990  00100000  exit
000994  00100000  exit
000998  00100000  exit
00099c  00100000  exit
0009a0  00100000  exit
0009a4  00100000  exit
0009a8  00100000  exit
0009ac  00100000  exit
0009b0  00100000  exit
0009b4  00100000  exit
0009b8  00100000  exit
0009bc  00100000  exit
0009c0  00100000  exit
0009c4  00100000  exit
0009c8  00100000  exit
0009cc  00100000  exit
0009d0  00100000  exit
0009d4  00100000  exit
0009d8  00100000  exit
0009dc  00100000  exit
0009e0  00100000  exit
0009e4  00100000  exit
0009e8  00100000  exit
0009ec  00100000  exit
0009f0  00100000  exit
0009f4  00100000  exit
0009f8  00100000  exit
0009fc  00100000  exit
000a00  00100000  exit
000a04  00100000  exit
000a08  00100000  exit
000a0c  00100000  exit
000a10  00100000  exit
000a14  00100000  exit
000a18  00100000  exit
000a1c  00100000  exit
000a20  00100000  exit
000a24  00100000  exit
000a28  00100000  exit
000a2c  00100000  exit
000a30  00100000  exit
000a34  00100000  exit
000a38  00100000  exit
000a3c  00100000  exit
000a40  00100000  exit
000a44  00100000  exit
000a48  00100000  exit
000a4c  00100000  exit
000a50  00100000  exit
000a54  00100000  exit
000a58  00100000  exit
000a5c  00100000  exit
000a60  00100000  exit
000a64  00100000  exit
000a68  00100000  exit
000a6c  00100000  exit
000a70  00100000  exit
000a74  00100000  exit
000a78  00100000  exit
000a7c  00100000  exit
000a80  00100000  exit
000a84  00100000  exit
000a88  00100000  exit
000a8c  00100000  exit
000a90  00100000  exit
000a94  00100000  exit
000a98  00100000  exit
000a9c  00100000  exit
000aa0  00100000  exit
000aa4  00100000  exit
000aa8  00100000  exit
000aac  00100000  exit
000ab0  00100000  exit
000ab4  00100000  exit
000ab8  00100000  exit
000abc  00100000  exit
000ac0  00100000  exit
000ac4  00100000  exit
000ac8  00100000  exit
000acc  00100000  exit
000ad0  00100000  exit
000ad4  00100000  exit
000ad8  00100000  exit
000adc  00100000  exit
000ae0  00100000  exit
000ae4  00100000  exit
000ae8  00100000  exit
000aec  00100000  exit
000af0  00100000  exit
000af4  00100000  exit
000af8  00100000  exit
000afc  00100000  exit
000b00  00100000  exit
000b04  00100000  exit
000b08  00100000  exit
000b0c  00100000  exit
000b10  00100000  exit
000b14  00100000  exit
000b18  00100000  exit
000b1c  00100000  exit
000b20  00100000  exit
000b24  00100000  exit
000b28  00100000  exit
000b2c  00100000  exit
000b30  00100000  exit
000b34  00100000  exit
000b38  00100000  exit
000b3c  00100000  exit
000b40  00100000  exit
000b44  00100000  exit
000b48  00100000  exit
000b4c  00100000  exit
