; SHA-256 92150132bd4893a5f95fe098705a5c201458852136be62fa5b8a8f99a3eed534
; P800 Cluster · XTDK LLVM 19 · 810 / 810 words decoded
; bound names: triton_poi_fused_add_relu_1
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
000078  9f094000  addli r19, zero, 32
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
0000e4  80510002  load_param_i r3, 0
0000e8  63013f00  loadli.w r2,  24(r30)
0000ec  e3402f00  loadli.w r1,  20(r30)
0000f0  63423f00  loadli.w r4,  28(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b904020  mul.s r1, r1, r4
0000fc  e7431ffe  storeli.w r1, -196(r30)
000100  4be53004  ble.s r1, r3, 2392
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  1f074000  addli r14, zero, 32
000110  9f050fff  addli r11, r30, -128
000114  2b09807f  lui r18, 522240
000118  ab094000  lui r19, 1024
00011c  2b0affff  lui r20, 1048560
000120  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000124  9bb04000  slli r1, r1, 4
000128  e7032ffe  storeli.w r2, -200(r30)
00012c  2bf1ff7f  lui r2, 524287
000130  67431ffe  storeli.w r1, -204(r30)
000134  ab700000  lui r1, 7
000138  9b18f1ff  ori r17, r2, 4095
00013c  1b98f0ff  ori r16, r1, 4095
000140  9f200000  addli r1, zero, 2
000144  fe8100e0  vmmov mr3, r1
000148  5b160000  j 176
00014c  33110100  float2bfloat.rn r2, r2
000150  b3900000  float2bfloat.rn r1, r1
000154  33920400  float2bfloat.rn r4, r9
000158  33140400  float2bfloat.rn r8, r8
00015c  73142ff8  store.h r2, -120(r30)
000160  33910600  float2bfloat.rn r2, r13
000164  73151ff8  store.h r1, -118(r30)
000168  b3900500  float2bfloat.rn r1, r11
00016c  73104ff8  store.h r4, -128(r30)
000170  33920700  float2bfloat.rn r4, r15
000174  73118ff8  store.h r8, -126(r30)
000178  9f050fff  addli r11, r30, -128
00017c  73162ff8  store.h r2, -116(r30)
000180  33910300  float2bfloat.rn r2, r7
000184  73171ff8  store.h r1, -114(r30)
000188  b3100300  float2bfloat.rn r1, r6
00018c  73124ff8  store.h r4, -124(r30)
000190  33120600  float2bfloat.rn r4, r12
000194  73182ff8  store.h r2, -112(r30)
000198  33910200  float2bfloat.rn r2, r5
00019c  73191ff8  store.h r1, -110(r30)
0001a0  b3100e00  float2bfloat.rn r1, r28
0001a4  73134ff8  store.h r4, -122(r30)
0001a8  731a2ff8  store.h r2, -108(r30)
0001ac  33910d00  float2bfloat.rn r2, r27
0001b0  731b1ff8  store.h r1, -106(r30)
0001b4  b3900c00  float2bfloat.rn r1, r25
0001b8  731c2ff8  store.h r2, -104(r30)
0001bc  33110c00  float2bfloat.rn r2, r24
0001c0  731d1ff8  store.h r1, -102(r30)
0001c4  b3900b00  float2bfloat.rn r1, r23
0001c8  731e2ff8  store.h r2, -100(r30)
0001cc  2b0100f0  lui r2, 983040
0001d0  731f1ff8  store.h r1, -98(r30)
0001d4  00a00000  mfence { lm }
0001d8  97102700  or r1, r14, r2
0001dc  ffb0ba00  s_lm2gm r1, r11, 0(r[22:23])
0001e0  e3007ffe  loadli.w r1,  -200(r30)
0001e4  00a00000  mfence { lm }
0001e8  8b911110  add.s r3, r3, r1
0001ec  e3407ffe  loadli.w r1,  -196(r30)
0001f0  3fa01100  blt.s r3, r1, 8
0001f4  db0c0100  j 2148
0001f8  e3403f00  loadli.w r1,  28(r30)
0001fc  63013f00  loadli.w r2,  24(r30)
000200  1f120000  addli r4, zero, 1
000204  eb540f00  load.d r[10:11], 0(r30)
000208  ab0200f0  lui r5, 983040
00020c  2b0300f0  lui r6, 983040
000210  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000214  12310002  vadd.s.mz vr2{mr1}, zero, vr0
000218  97125700  or r5, r14, r5
00021c  17136700  or r6, r14, r6
000220  8b901130  div.s r1, r3, r1
000224  8b902030  div.s r1, r1, r2
000228  63416ffe  loadli.w r2,  -204(r30)
00022c  9bb0a000  slli r1, r1, 10
000230  8b902010  add.s r1, r1, r2
000234  1f010008  addli r2, zero, 1024
000238  0b912038  mod.s r2, r1, r2
00023c  b3930028  sext_int2long r[8:9], r1
000240  97b34302  sll.d r[8:9], r[8:9], r4
000244  8baa7410  add.ul r[22:23], r[10:11], r[8:9]
000248  eb538f00  load.d r[8:9], 8(r30)
00024c  b3100128  sext_int2long r[2:3], r2
000250  97b04002  sll.d r[2:3], r[2:3], r4
000254  1f028ffe  addli r4, r30, -192
000258  8ba01310  add.ul r[2:3], r[8:9], r[2:3]
00025c  ffa24a00  l_gm2lm r5, r4, 0(r[22:23])
000260  1f120000  addli r4, zero, 1
000264  7fa3b000  l_gm2lm r6, r11, 0(r[2:3])
000268  7e0102e0  vmmov mr2, r4
00026c  00a00000  mfence { lm }
000270  eb300ff4  load.hu r1, -192(r30)
000274  6b312ff4  load.hu r2, -190(r30)
000278  eb324ff4  load.hu r5, -188(r30)
00027c  6b336ff4  load.hu r6, -186(r30)
000280  eb338ff4  load.hu r7, -184(r30)
000284  6b34aff4  load.hu r8, -182(r30)
000288  eb34cff4  load.hu r9, -180(r30)
00028c  eb35eff4  load.hu r11, -178(r30)
000290  6b360ff5  load.hu r12, -176(r30)
000294  eb362ff5  load.hu r13, -174(r30)
000298  eb374ff5  load.hu r15, -172(r30)
00029c  eb3b6ff5  load.hu r23, -170(r30)
0002a0  6b3c8ff5  load.hu r24, -168(r30)
0002a4  eb3caff5  load.hu r25, -166(r30)
0002a8  6b3dcff5  load.hu r26, -164(r30)
0002ac  eb3deff5  load.hu r27, -162(r30)
0002b0  b3900018  bfloat2float.rn r1, r1
0002b4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0002b8  b3100118  bfloat2float.rn r1, r2
0002bc  1f410000  addli r2, zero, 4
0002c0  7e0001e0  vmmov mr0, r2
0002c4  1f011000  addli r2, zero, 8
0002c8  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0002cc  b3900218  bfloat2float.rn r1, r5
0002d0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0002d4  b3100318  bfloat2float.rn r1, r6
0002d8  7e0001e0  vmmov mr0, r2
0002dc  1f012000  addli r2, zero, 16
0002e0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0002e4  b3900318  bfloat2float.rn r1, r7
0002e8  7e0001e0  vmmov mr0, r2
0002ec  1f014000  addli r2, zero, 32
0002f0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0002f4  b3100418  bfloat2float.rn r1, r8
0002f8  7e0001e0  vmmov mr0, r2
0002fc  1f018000  addli r2, zero, 64
000300  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000304  b3900418  bfloat2float.rn r1, r9
000308  7e0001e0  vmmov mr0, r2
00030c  1f010001  addli r2, zero, 128
000310  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000314  b3900518  bfloat2float.rn r1, r11
000318  7e0001e0  vmmov mr0, r2
00031c  1f010002  addli r2, zero, 256
000320  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000324  b3100618  bfloat2float.rn r1, r12
000328  7e0001e0  vmmov mr0, r2
00032c  1f010004  addli r2, zero, 512
000330  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000334  b3900618  bfloat2float.rn r1, r13
000338  7e0001e0  vmmov mr0, r2
00033c  1f010008  addli r2, zero, 1024
000340  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000344  b3900718  bfloat2float.rn r1, r15
000348  7e0001e0  vmmov mr0, r2
00034c  1f010010  addli r2, zero, 2048
000350  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000354  b3900b18  bfloat2float.rn r1, r23
000358  7e0001e0  vmmov mr0, r2
00035c  1f010020  addli r2, zero, 4096
000360  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000364  b3100c18  bfloat2float.rn r1, r24
000368  7e0001e0  vmmov mr0, r2
00036c  1f010040  addli r2, zero, 8192
000370  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000374  b3900c18  bfloat2float.rn r1, r25
000378  7e0001e0  vmmov mr0, r2
00037c  2b410000  lui r2, 4
000380  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000384  b3100d18  bfloat2float.rn r1, r26
000388  7e0001e0  vmmov mr0, r2
00038c  2b810000  lui r2, 8
000390  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000394  b3900d18  bfloat2float.rn r1, r27
000398  7e0001e0  vmmov mr0, r2
00039c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0003a0  eb300ff8  load.hu r1, -128(r30)
0003a4  6b312ff8  load.hu r2, -126(r30)
0003a8  eb324ff8  load.hu r5, -124(r30)
0003ac  6b336ff8  load.hu r6, -122(r30)
0003b0  eb338ff8  load.hu r7, -120(r30)
0003b4  6b34aff8  load.hu r8, -118(r30)
0003b8  eb34cff8  load.hu r9, -116(r30)
0003bc  eb35eff8  load.hu r11, -114(r30)
0003c0  6b360ff9  load.hu r12, -112(r30)
0003c4  eb362ff9  load.hu r13, -110(r30)
0003c8  eb374ff9  load.hu r15, -108(r30)
0003cc  eb3b6ff9  load.hu r23, -106(r30)
0003d0  6b3c8ff9  load.hu r24, -104(r30)
0003d4  eb3caff9  load.hu r25, -102(r30)
0003d8  6b3dcff9  load.hu r26, -100(r30)
0003dc  eb3deff9  load.hu r27, -98(r30)
0003e0  b3900018  bfloat2float.rn r1, r1
0003e4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003e8  b3100118  bfloat2float.rn r1, r2
0003ec  1f410000  addli r2, zero, 4
0003f0  7e0101e0  vmmov mr2, r2
0003f4  1f011000  addli r2, zero, 8
0003f8  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0003fc  b3900218  bfloat2float.rn r1, r5
000400  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000404  b3100318  bfloat2float.rn r1, r6
000408  7e0101e0  vmmov mr2, r2
00040c  1f012000  addli r2, zero, 16
000410  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000414  b3900318  bfloat2float.rn r1, r7
000418  7e0101e0  vmmov mr2, r2
00041c  1f014000  addli r2, zero, 32
000420  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000424  b3100418  bfloat2float.rn r1, r8
000428  7e0101e0  vmmov mr2, r2
00042c  1f018000  addli r2, zero, 64
000430  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000434  b3900418  bfloat2float.rn r1, r9
000438  7e0101e0  vmmov mr2, r2
00043c  1f010001  addli r2, zero, 128
000440  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000444  b3900518  bfloat2float.rn r1, r11
000448  7e0101e0  vmmov mr2, r2
00044c  1f010002  addli r2, zero, 256
000450  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000454  b3100618  bfloat2float.rn r1, r12
000458  7e0101e0  vmmov mr2, r2
00045c  1f010004  addli r2, zero, 512
000460  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000464  b3900618  bfloat2float.rn r1, r13
000468  7e0101e0  vmmov mr2, r2
00046c  1f010008  addli r2, zero, 1024
000470  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000474  b3900718  bfloat2float.rn r1, r15
000478  7e0101e0  vmmov mr2, r2
00047c  1f010010  addli r2, zero, 2048
000480  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000484  b3900b18  bfloat2float.rn r1, r23
000488  7e0101e0  vmmov mr2, r2
00048c  1f010020  addli r2, zero, 4096
000490  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000494  b3100c18  bfloat2float.rn r1, r24
000498  7e0101e0  vmmov mr2, r2
00049c  1f010040  addli r2, zero, 8192
0004a0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004a4  b3900c18  bfloat2float.rn r1, r25
0004a8  7e0101e0  vmmov mr2, r2
0004ac  2b410000  lui r2, 4
0004b0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004b4  b3100d18  bfloat2float.rn r1, r26
0004b8  7e0101e0  vmmov mr2, r2
0004bc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004c0  b3900d18  bfloat2float.rn r1, r27
0004c4  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0004c8  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0004cc  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0004d0  00a00000  mfence { lm }
0004d4  630d8fff  loadli.w r26,  -64(r30)
0004d8  63448fff  loadli.w r8,  -60(r30)
0004dc  e3079fff  loadli.w r15,  -56(r30)
0004e0  63469fff  loadli.w r12,  -52(r30)
0004e4  6301afff  loadli.w r2,  -48(r30)
0004e8  e340afff  loadli.w r1,  -44(r30)
0004ec  e306bfff  loadli.w r13,  -40(r30)
0004f0  e345bfff  loadli.w r11,  -36(r30)
0004f4  e303cfff  loadli.w r7,  -32(r30)
0004f8  6343cfff  loadli.w r6,  -28(r30)
0004fc  e302dfff  loadli.w r5,  -24(r30)
000500  634edfff  loadli.w r28,  -20(r30)
000504  e30defff  loadli.w r27,  -16(r30)
000508  e34cefff  loadli.w r25,  -12(r30)
00050c  630cffff  loadli.w r24,  -8(r30)
000510  e34bffff  loadli.w r23,  -4(r30)
000514  97041d01  and r9, r26, r17
000518  93049904  setlt.u r9, r18, r9
00051c  3be00400  bneq r9, zero, 24
000520  9b440d01  srli r9, r26, 16
000524  9b841400  andi r9, r9, 1
000528  8b149d10  add.s r9, r26, r9
00052c  8b940411  add.s r9, r9, r16
000530  5b010000  j 8
000534  97143d01  or r9, r26, r19
000538  170d1401  and r26, r8, r17
00053c  130da905  setlt.u r26, r18, r26
000540  3b600d00  bneq r26, zero, 24
000544  1b4d0401  srli r26, r8, 16
000548  1b0d1d00  andi r26, r26, 1
00054c  0b14a411  add.s r8, r8, r26
000550  0b140411  add.s r8, r8, r16
000554  5b010000  j 8
000558  17143401  or r8, r8, r19
00055c  178d1701  and r26, r15, r17
000560  130da905  setlt.u r26, r18, r26
000564  3b600d00  bneq r26, zero, 24
000568  1bcd0701  srli r26, r15, 16
00056c  1b0d1d00  andi r26, r26, 1
000570  8b97a711  add.s r15, r15, r26
000574  8b970711  add.s r15, r15, r16
000578  5b010000  j 8
00057c  97973701  or r15, r15, r19
000580  170d1601  and r26, r12, r17
000584  130da905  setlt.u r26, r18, r26
000588  3b600d00  bneq r26, zero, 24
00058c  1b4d0601  srli r26, r12, 16
000590  1b0d1d00  andi r26, r26, 1
000594  0b16a611  add.s r12, r12, r26
000598  0b160611  add.s r12, r12, r16
00059c  5b010000  j 8
0005a0  17163601  or r12, r12, r19
0005a4  170d1101  and r26, r2, r17
0005a8  130da905  setlt.u r26, r18, r26
0005ac  3b600d00  bneq r26, zero, 24
0005b0  1b4d0101  srli r26, r2, 16
0005b4  1b0d1d00  andi r26, r26, 1
0005b8  0b11a111  add.s r2, r2, r26
0005bc  0b110111  add.s r2, r2, r16
0005c0  5b010000  j 8
0005c4  17113101  or r2, r2, r19
0005c8  178d1001  and r26, r1, r17
0005cc  130da905  setlt.u r26, r18, r26
0005d0  3b600d00  bneq r26, zero, 24
0005d4  1bcd0001  srli r26, r1, 16
0005d8  1b0d1d00  andi r26, r26, 1
0005dc  8b90a011  add.s r1, r1, r26
0005e0  8b900011  add.s r1, r1, r16
0005e4  5b010000  j 8
0005e8  97903001  or r1, r1, r19
0005ec  178d1601  and r26, r13, r17
0005f0  130da905  setlt.u r26, r18, r26
0005f4  3b600d00  bneq r26, zero, 24
0005f8  1bcd0601  srli r26, r13, 16
0005fc  1b0d1d00  andi r26, r26, 1
000600  8b96a611  add.s r13, r13, r26
000604  8b960611  add.s r13, r13, r16
000608  5b010000  j 8
00060c  97963601  or r13, r13, r19
000610  178d1501  and r26, r11, r17
000614  130da905  setlt.u r26, r18, r26
000618  3b600d00  bneq r26, zero, 24
00061c  1bcd0501  srli r26, r11, 16
000620  1b0d1d00  andi r26, r26, 1
000624  8b95a511  add.s r11, r11, r26
000628  8b950511  add.s r11, r11, r16
00062c  5b010000  j 8
000630  97953501  or r11, r11, r19
000634  178d1301  and r26, r7, r17
000638  130da905  setlt.u r26, r18, r26
00063c  3b600d00  bneq r26, zero, 24
000640  1bcd0301  srli r26, r7, 16
000644  1b0d1d00  andi r26, r26, 1
000648  8b93a311  add.s r7, r7, r26
00064c  8b930311  add.s r7, r7, r16
000650  5b010000  j 8
000654  97933301  or r7, r7, r19
000658  170d1301  and r26, r6, r17
00065c  130da905  setlt.u r26, r18, r26
000660  3b600d00  bneq r26, zero, 24
000664  1b4d0301  srli r26, r6, 16
000668  1b0d1d00  andi r26, r26, 1
00066c  0b13a311  add.s r6, r6, r26
000670  0b130311  add.s r6, r6, r16
000674  5b010000  j 8
000678  17133301  or r6, r6, r19
00067c  178d1201  and r26, r5, r17
000680  130da905  setlt.u r26, r18, r26
000684  3b600d00  bneq r26, zero, 24
000688  1bcd0201  srli r26, r5, 16
00068c  1b0d1d00  andi r26, r26, 1
000690  8b92a211  add.s r5, r5, r26
000694  8b920211  add.s r5, r5, r16
000698  5b010000  j 8
00069c  97923201  or r5, r5, r19
0006a0  170d1e01  and r26, r28, r17
0006a4  130da905  setlt.u r26, r18, r26
0006a8  3b600d00  bneq r26, zero, 24
0006ac  1b4d0e01  srli r26, r28, 16
0006b0  1b0d1d00  andi r26, r26, 1
0006b4  0b1dae11  add.s r26, r28, r26
0006b8  0b1e0d11  add.s r28, r26, r16
0006bc  5b010000  j 8
0006c0  171e3e01  or r28, r28, r19
0006c4  178d1d01  and r26, r27, r17
0006c8  130da905  setlt.u r26, r18, r26
0006cc  3b600d00  bneq r26, zero, 24
0006d0  1bcd0d01  srli r26, r27, 16
0006d4  1b0d1d00  andi r26, r26, 1
0006d8  0b9dad11  add.s r26, r27, r26
0006dc  8b1d0d11  add.s r27, r26, r16
0006e0  5b010000  j 8
0006e4  979d3d01  or r27, r27, r19
0006e8  178d1c01  and r26, r25, r17
0006ec  130da905  setlt.u r26, r18, r26
0006f0  3b600d00  bneq r26, zero, 24
0006f4  1bcd0c01  srli r26, r25, 16
0006f8  1b0d1d00  andi r26, r26, 1
0006fc  8b9cac11  add.s r25, r25, r26
000700  8b9c0c11  add.s r25, r25, r16
000704  5b010000  j 8
000708  979c3c01  or r25, r25, r19
00070c  170d1c01  and r26, r24, r17
000710  130da905  setlt.u r26, r18, r26
000714  3b600d00  bneq r26, zero, 24
000718  1b4d0c01  srli r26, r24, 16
00071c  1b0d1d00  andi r26, r26, 1
000720  0b1cac11  add.s r24, r24, r26
000724  0b1c0c11  add.s r24, r24, r16
000728  5b010000  j 8
00072c  171c3c01  or r24, r24, r19
000730  178d1b01  and r26, r23, r17
000734  130da905  setlt.u r26, r18, r26
000738  3b600d00  bneq r26, zero, 24
00073c  1bcd0b01  srli r26, r23, 16
000740  1b0d1d00  andi r26, r26, 1
000744  8b9bab11  add.s r23, r23, r26
000748  8b9b0b11  add.s r23, r23, r16
00074c  5b010000  j 8
000750  979b3b01  or r23, r23, r19
000754  178d4401  and r26, r9, r20
000758  9bc47401  srli r9, r9, 23
00075c  1b359d00  slli r10, r26, 9
000760  13620d04  setlt.f r4, r26, zero
000764  9b84f40f  andi r9, r9, 255
000768  13050500  seteq r10, r10, zero
00076c  9bf4f40f  setlti r9, r9, 255
000770  9794a400  or r9, r9, r10
000774  17029200  and r4, r4, r9
000778  9f040000  addli r9, zero, 0
00077c  3b200200  bneq r4, zero, 8
000780  9f040d00  addli r9, r26, 0
000784  170d4401  and r26, r8, r20
000788  1b447401  srli r8, r8, 23
00078c  1b329d00  slli r4, r26, 9
000790  13650d04  setlt.f r10, r26, zero
000794  1b04f40f  andi r8, r8, 255
000798  13020200  seteq r4, r4, zero
00079c  1b74f40f  setlti r8, r8, 255
0007a0  17124400  or r4, r8, r4
0007a4  1f040000  addli r8, zero, 0
0007a8  17024500  and r4, r10, r4
0007ac  3b200200  bneq r4, zero, 8
0007b0  1f040d00  addli r8, r26, 0
0007b4  178d4701  and r26, r15, r20
0007b8  1bc57701  srli r10, r15, 23
0007bc  1b329d00  slli r4, r26, 9
0007c0  93670d04  setlt.f r15, r26, zero
0007c4  1b05f50f  andi r10, r10, 255
0007c8  13020200  seteq r4, r4, zero
0007cc  1b75f50f  setlti r10, r10, 255
0007d0  17124500  or r4, r10, r4
0007d4  17824700  and r4, r15, r4
0007d8  9f070000  addli r15, zero, 0
0007dc  3b200200  bneq r4, zero, 8
0007e0  9f070d00  addli r15, r26, 0
0007e4  170d4601  and r26, r12, r20
0007e8  1b457601  srli r10, r12, 23
0007ec  1b329d00  slli r4, r26, 9
0007f0  13660d04  setlt.f r12, r26, zero
0007f4  1b05f50f  andi r10, r10, 255
0007f8  13020200  seteq r4, r4, zero
0007fc  1b75f50f  setlti r10, r10, 255
000800  17124500  or r4, r10, r4
000804  17024600  and r4, r12, r4
000808  1f060000  addli r12, zero, 0
00080c  3b200200  bneq r4, zero, 8
000810  1f060d00  addli r12, r26, 0
000814  170d4101  and r26, r2, r20
000818  1b417101  srli r2, r2, 23
00081c  1b329d00  slli r4, r26, 9
000820  13650d04  setlt.f r10, r26, zero
000824  1b01f10f  andi r2, r2, 255
000828  13020200  seteq r4, r4, zero
00082c  1b71f10f  setlti r2, r2, 255
000830  17114100  or r2, r2, r4
000834  17022500  and r4, r10, r2
000838  1f010000  addli r2, zero, 0
00083c  3b200200  bneq r4, zero, 8
000840  1f010d00  addli r2, r26, 0
000844  178d4001  and r26, r1, r20
000848  9bc07001  srli r1, r1, 23
00084c  1b329d00  slli r4, r26, 9
000850  13650d04  setlt.f r10, r26, zero
000854  9b80f00f  andi r1, r1, 255
000858  13020200  seteq r4, r4, zero
00085c  9bf0f00f  setlti r1, r1, 255
000860  97904000  or r1, r1, r4
000864  17021500  and r4, r10, r1
000868  9f000000  addli r1, zero, 0
00086c  3b200200  bneq r4, zero, 8
000870  9f000d00  addli r1, r26, 0
000874  178d4601  and r26, r13, r20
000878  1bc57601  srli r10, r13, 23
00087c  1b329d00  slli r4, r26, 9
000880  93660d04  setlt.f r13, r26, zero
000884  1b05f50f  andi r10, r10, 255
000888  13020200  seteq r4, r4, zero
00088c  1b75f50f  setlti r10, r10, 255
000890  17124500  or r4, r10, r4
000894  17824600  and r4, r13, r4
000898  9f060000  addli r13, zero, 0
00089c  3b200200  bneq r4, zero, 8
0008a0  9f060d00  addli r13, r26, 0
0008a4  178d4501  and r26, r11, r20
0008a8  1bc57501  srli r10, r11, 23
0008ac  1b329d00  slli r4, r26, 9
0008b0  93650d04  setlt.f r11, r26, zero
0008b4  1b05f50f  andi r10, r10, 255
0008b8  13020200  seteq r4, r4, zero
0008bc  1b75f50f  setlti r10, r10, 255
0008c0  17124500  or r4, r10, r4
0008c4  17824500  and r4, r11, r4
0008c8  9f050000  addli r11, zero, 0
0008cc  3b200200  bneq r4, zero, 8
0008d0  9f050d00  addli r11, r26, 0
0008d4  178d4301  and r26, r7, r20
0008d8  9bc37301  srli r7, r7, 23
0008dc  1b329d00  slli r4, r26, 9
0008e0  13650d04  setlt.f r10, r26, zero
0008e4  9b83f30f  andi r7, r7, 255
0008e8  13020200  seteq r4, r4, zero
0008ec  9bf3f30f  setlti r7, r7, 255
0008f0  17924300  or r4, r7, r4
0008f4  9f030000  addli r7, zero, 0
0008f8  17024500  and r4, r10, r4
0008fc  3b200200  bneq r4, zero, 8
000900  9f030d00  addli r7, r26, 0
000904  170d4301  and r26, r6, r20
000908  1b437301  srli r6, r6, 23
00090c  1b329d00  slli r4, r26, 9
000910  13650d04  setlt.f r10, r26, zero
000914  1b03f30f  andi r6, r6, 255
000918  13020200  seteq r4, r4, zero
00091c  1b73f30f  setlti r6, r6, 255
000920  17124300  or r4, r6, r4
000924  1f030000  addli r6, zero, 0
000928  17024500  and r4, r10, r4
00092c  3b200200  bneq r4, zero, 8
000930  1f030d00  addli r6, r26, 0
000934  178d4201  and r26, r5, r20
000938  9bc27201  srli r5, r5, 23
00093c  1b329d00  slli r4, r26, 9
000940  13650d04  setlt.f r10, r26, zero
000944  9b82f20f  andi r5, r5, 255
000948  13020200  seteq r4, r4, zero
00094c  9bf2f20f  setlti r5, r5, 255
000950  17924200  or r4, r5, r4
000954  9f020000  addli r5, zero, 0
000958  17024500  and r4, r10, r4
00095c  3b200200  bneq r4, zero, 8
000960  9f020d00  addli r5, r26, 0
000964  170d4e01  and r26, r28, r20
000968  1b457e01  srli r10, r28, 23
00096c  1b329d00  slli r4, r26, 9
000970  136e0d04  setlt.f r28, r26, zero
000974  1b05f50f  andi r10, r10, 255
000978  13020200  seteq r4, r4, zero
00097c  1b75f50f  setlti r10, r10, 255
000980  17124500  or r4, r10, r4
000984  17024e00  and r4, r28, r4
000988  1f0e0000  addli r28, zero, 0
00098c  3b200200  bneq r4, zero, 8
000990  1f0e0d00  addli r28, r26, 0
000994  178d4d01  and r26, r27, r20
000998  1bc57d01  srli r10, r27, 23
00099c  1b329d00  slli r4, r26, 9
0009a0  936d0d04  setlt.f r27, r26, zero
0009a4  1b05f50f  andi r10, r10, 255
0009a8  13020200  seteq r4, r4, zero
0009ac  1b75f50f  setlti r10, r10, 255
0009b0  17124500  or r4, r10, r4
0009b4  17824d00  and r4, r27, r4
0009b8  9f0d0000  addli r27, zero, 0
0009bc  3b200200  bneq r4, zero, 8
0009c0  9f0d0d00  addli r27, r26, 0
0009c4  178d4c01  and r26, r25, r20
0009c8  1bc57c01  srli r10, r25, 23
0009cc  1b329d00  slli r4, r26, 9
0009d0  936c0d04  setlt.f r25, r26, zero
0009d4  1b05f50f  andi r10, r10, 255
0009d8  13020200  seteq r4, r4, zero
0009dc  1b75f50f  setlti r10, r10, 255
0009e0  17124500  or r4, r10, r4
0009e4  17824c00  and r4, r25, r4
0009e8  9f0c0000  addli r25, zero, 0
0009ec  3b200200  bneq r4, zero, 8
0009f0  9f0c0d00  addli r25, r26, 0
0009f4  170d4c01  and r26, r24, r20
0009f8  1b457c01  srli r10, r24, 23
0009fc  1b329d00  slli r4, r26, 9
000a00  136c0d04  setlt.f r24, r26, zero
000a04  1b05f50f  andi r10, r10, 255
000a08  13020200  seteq r4, r4, zero
000a0c  1b75f50f  setlti r10, r10, 255
000a10  17124500  or r4, r10, r4
000a14  17024c00  and r4, r24, r4
000a18  1f0c0000  addli r24, zero, 0
000a1c  3b200200  bneq r4, zero, 8
000a20  1f0c0d00  addli r24, r26, 0
000a24  178d4b01  and r26, r23, r20
000a28  1bc57b01  srli r10, r23, 23
000a2c  1b329d00  slli r4, r26, 9
000a30  936b0d04  setlt.f r23, r26, zero
000a34  1b05f50f  andi r10, r10, 255
000a38  13020200  seteq r4, r4, zero
000a3c  1b75f50f  setlti r10, r10, 255
000a40  17124500  or r4, r10, r4
000a44  17824b00  and r4, r23, r4
000a48  9f0b0000  addli r23, zero, 0
000a4c  3b0c02fa  bneq r4, zero, -2304
000a50  9f0b0d00  addli r23, r26, 0
000a54  5bdffeff  j -2312
000a58  9f0e0ffe  addli sp, r30, -256
000a5c  9f8e0e02  addli sp, sp, 256
000a60  00a00300  mfence { lm, sm, gm }
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
000b50  00100000  exit
000b54  00100000  exit
000b58  00100000  exit
000b5c  00100000  exit
000b60  00100000  exit
000b64  00100000  exit
000b68  00100000  exit
000b6c  00100000  exit
000b70  00100000  exit
000b74  00100000  exit
000b78  00100000  exit
000b7c  00100000  exit
000b80  00100000  exit
000b84  00100000  exit
000b88  00100000  exit
000b8c  00100000  exit
000b90  00100000  exit
000b94  00100000  exit
000b98  00100000  exit
000b9c  00100000  exit
000ba0  00100000  exit
000ba4  00100000  exit
000ba8  00100000  exit
000bac  00100000  exit
000bb0  00100000  exit
000bb4  00100000  exit
000bb8  00100000  exit
000bbc  00100000  exit
000bc0  00100000  exit
000bc4  00100000  exit
000bc8  00100000  exit
000bcc  00100000  exit
000bd0  00100000  exit
000bd4  00100000  exit
000bd8  00100000  exit
000bdc  00100000  exit
000be0  00100000  exit
000be4  00100000  exit
000be8  00100000  exit
000bec  00100000  exit
000bf0  00100000  exit
000bf4  00100000  exit
000bf8  00100000  exit
000bfc  00100000  exit
000c00  00100000  exit
000c04  00100000  exit
000c08  00100000  exit
000c0c  00100000  exit
000c10  00100000  exit
000c14  00100000  exit
000c18  00100000  exit
000c1c  00100000  exit
000c20  00100000  exit
000c24  00100000  exit
000c28  00100000  exit
000c2c  00100000  exit
000c30  00100000  exit
000c34  00100000  exit
000c38  00100000  exit
000c3c  00100000  exit
000c40  00100000  exit
000c44  00100000  exit
000c48  00100000  exit
000c4c  00100000  exit
000c50  00100000  exit
000c54  00100000  exit
000c58  00100000  exit
000c5c  00100000  exit
000c60  00100000  exit
000c64  00100000  exit
000c68  00100000  exit
000c6c  00100000  exit
000c70  00100000  exit
000c74  00100000  exit
000c78  00100000  exit
000c7c  00100000  exit
000c80  00100000  exit
000c84  00100000  exit
000c88  00100000  exit
000c8c  00100000  exit
000c90  00100000  exit
000c94  00100000  exit
000c98  00100000  exit
000c9c  00100000  exit
000ca0  00100000  exit
000ca4  00100000  exit
