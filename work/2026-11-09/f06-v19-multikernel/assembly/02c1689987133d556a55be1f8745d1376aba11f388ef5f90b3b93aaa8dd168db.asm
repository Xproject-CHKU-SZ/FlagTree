; SHA-256 02c1689987133d556a55be1f8745d1376aba11f388ef5f90b3b93aaa8dd168db
; P800 Cluster · XTDK LLVM 19 · 1281 / 1281 words decoded
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
000100  cbd24008  ble.s r1, r4, 4276
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  9f024000  addli r5, zero, 32
000110  9f040fff  addli r9, r30, -128
000114  2b0b807f  lui r22, 522240
000118  2b0c4000  lui r24, 1024
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
00014c  db190000  j 204
000150  b3100700  float2bfloat.rn r1, r14
000154  33920600  float2bfloat.rn r4, r13
000158  6b510f01  load.d r[3:4], 16(r30)
00015c  6b538ff1  load.d r[7:8], -232(r30)
000160  2b0c4000  lui r24, 1024
000164  73101ff8  store.h r1, -128(r30)
000168  b3100600  float2bfloat.rn r1, r12
00016c  73124ff8  store.h r4, -124(r30)
000170  33120d00  float2bfloat.rn r4, r26
000174  0b216110  add.ul r[3:4], r[3:4], r[7:8]
000178  73111ff8  store.h r1, -126(r30)
00017c  b3900700  float2bfloat.rn r1, r15
000180  73144ff8  store.h r4, -120(r30)
000184  63027ffe  loadli.w r4,  -200(r30)
000188  73131ff8  store.h r1, -122(r30)
00018c  e3407ffe  loadli.w r1,  -196(r30)
000190  33120200  float2bfloat.rn r4, r4
000194  b3900000  float2bfloat.rn r1, r1
000198  73164ff8  store.h r4, -116(r30)
00019c  33120800  float2bfloat.rn r4, r16
0001a0  73151ff8  store.h r1, -118(r30)
0001a4  e3406ffe  loadli.w r1,  -204(r30)
0001a8  73184ff8  store.h r4, -112(r30)
0001ac  33120500  float2bfloat.rn r4, r10
0001b0  731a4ff8  store.h r4, -108(r30)
0001b4  33920d00  float2bfloat.rn r4, r27
0001b8  b3900000  float2bfloat.rn r1, r1
0001bc  731c4ff8  store.h r4, -104(r30)
0001c0  33920c00  float2bfloat.rn r4, r25
0001c4  73171ff8  store.h r1, -114(r30)
0001c8  b3100400  float2bfloat.rn r1, r8
0001cc  731e4ff8  store.h r4, -100(r30)
0001d0  2b0200f0  lui r4, 983040
0001d4  73191ff8  store.h r1, -110(r30)
0001d8  b3900b00  float2bfloat.rn r1, r23
0001dc  731b1ff8  store.h r1, -106(r30)
0001e0  b3900800  float2bfloat.rn r1, r17
0001e4  731d1ff8  store.h r1, -102(r30)
0001e8  b3900900  float2bfloat.rn r1, r19
0001ec  731f1ff8  store.h r1, -98(r30)
0001f0  97904200  or r1, r5, r4
0001f4  00a00000  mfence { lm }
0001f8  ff309100  s_lm2gm r1, r9, 0(r[3:4])
0001fc  63024ffe  loadli.w r4,  -224(r30)
000200  e3008ffd  loadli.w r1,  -320(r30)
000204  00a00000  mfence { lm }
000208  0b121210  add.s r4, r4, r1
00020c  e3408ffd  loadli.w r1,  -316(r30)
000210  3f201200  blt.s r4, r1, 8
000214  5bf40100  j 4000
000218  e3404f00  loadli.w r1,  36(r30)
00021c  63014f00  loadli.w r2,  32(r30)
000220  ab0100f0  lui r3, 983040
000224  67024ffe  storeli.w r4, -224(r30)
000228  9f130000  addli r7, zero, 1
00022c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000230  9f180000  addli r17, zero, 1
000234  12310002  vadd.s.mz vr2{mr1}, zero, vr0
000238  97913200  or r3, r5, r3
00023c  7e8108e0  vmmov mr2, r17
000240  8b101230  div.s r1, r4, r1
000244  2b0200f0  lui r4, 983040
000248  17924200  or r4, r5, r4
00024c  8b902030  div.s r1, r1, r2
000250  63417ffd  loadli.w r2,  -324(r30)
000254  9bb0a000  slli r1, r1, 10
000258  8b902010  add.s r1, r1, r2
00025c  1f010010  addli r2, zero, 2048
000260  0b912038  mod.s r2, r1, r2
000264  b3920028  sext_int2long r[6:7], r1
000268  17b57202  sll.d r[11:12], r[6:7], r7
00026c  eb520f00  load.d r[6:7], 0(r30)
000270  733caff0  store.d r[11:12], -232(r30)
000274  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
000278  b3100128  sext_int2long r[2:3], r2
00027c  97b07002  sll.d r[2:3], r[2:3], r7
000280  eb538f00  load.d r[8:9], 8(r30)
000284  8ba01310  add.ul r[2:3], r[8:9], r[2:3]
000288  9f038ffe  addli r7, r30, -192
00028c  ffa17200  l_gm2lm r3, r7, 0(r[6:7])
000290  7fa29000  l_gm2lm r4, r9, 0(r[2:3])
000294  00a00000  mfence { lm }
000298  eb300ff4  load.hu r1, -192(r30)
00029c  6b312ff4  load.hu r2, -190(r30)
0002a0  eb314ff4  load.hu r3, -188(r30)
0002a4  6b326ff4  load.hu r4, -186(r30)
0002a8  eb328ff4  load.hu r5, -184(r30)
0002ac  6b33aff4  load.hu r6, -182(r30)
0002b0  eb33cff4  load.hu r7, -180(r30)
0002b4  6b34eff4  load.hu r8, -178(r30)
0002b8  eb340ff5  load.hu r9, -176(r30)
0002bc  6b352ff5  load.hu r10, -174(r30)
0002c0  eb354ff5  load.hu r11, -172(r30)
0002c4  6b366ff5  load.hu r12, -170(r30)
0002c8  eb368ff5  load.hu r13, -168(r30)
0002cc  6b37aff5  load.hu r14, -166(r30)
0002d0  eb37cff5  load.hu r15, -164(r30)
0002d4  6b38eff5  load.hu r16, -162(r30)
0002d8  b3900018  bfloat2float.rn r1, r1
0002dc  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0002e0  b3100118  bfloat2float.rn r1, r2
0002e4  1f410000  addli r2, zero, 4
0002e8  7e0001e0  vmmov mr0, r2
0002ec  1f011000  addli r2, zero, 8
0002f0  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0002f4  b3900118  bfloat2float.rn r1, r3
0002f8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0002fc  b3100218  bfloat2float.rn r1, r4
000300  7e0001e0  vmmov mr0, r2
000304  1f012000  addli r2, zero, 16
000308  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00030c  b3900218  bfloat2float.rn r1, r5
000310  7e0001e0  vmmov mr0, r2
000314  1f014000  addli r2, zero, 32
000318  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00031c  b3100318  bfloat2float.rn r1, r6
000320  7e0001e0  vmmov mr0, r2
000324  1f018000  addli r2, zero, 64
000328  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00032c  b3900318  bfloat2float.rn r1, r7
000330  7e0001e0  vmmov mr0, r2
000334  1f010001  addli r2, zero, 128
000338  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00033c  b3100418  bfloat2float.rn r1, r8
000340  7e0001e0  vmmov mr0, r2
000344  1f010002  addli r2, zero, 256
000348  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00034c  b3900418  bfloat2float.rn r1, r9
000350  7e0001e0  vmmov mr0, r2
000354  1f010004  addli r2, zero, 512
000358  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00035c  b3100518  bfloat2float.rn r1, r10
000360  7e0001e0  vmmov mr0, r2
000364  1f010008  addli r2, zero, 1024
000368  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00036c  b3900518  bfloat2float.rn r1, r11
000370  7e0001e0  vmmov mr0, r2
000374  1f010010  addli r2, zero, 2048
000378  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00037c  b3100618  bfloat2float.rn r1, r12
000380  7e0001e0  vmmov mr0, r2
000384  1f010020  addli r2, zero, 4096
000388  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00038c  b3900618  bfloat2float.rn r1, r13
000390  7e0001e0  vmmov mr0, r2
000394  1f010040  addli r2, zero, 8192
000398  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00039c  b3100718  bfloat2float.rn r1, r14
0003a0  7e0001e0  vmmov mr0, r2
0003a4  2b410000  lui r2, 4
0003a8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0003ac  b3900718  bfloat2float.rn r1, r15
0003b0  7e0001e0  vmmov mr0, r2
0003b4  2b810000  lui r2, 8
0003b8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0003bc  b3100818  bfloat2float.rn r1, r16
0003c0  7e0001e0  vmmov mr0, r2
0003c4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0003c8  eb300ff8  load.hu r1, -128(r30)
0003cc  6b312ff8  load.hu r2, -126(r30)
0003d0  eb314ff8  load.hu r3, -124(r30)
0003d4  6b326ff8  load.hu r4, -122(r30)
0003d8  eb328ff8  load.hu r5, -120(r30)
0003dc  6b33aff8  load.hu r6, -118(r30)
0003e0  eb33cff8  load.hu r7, -116(r30)
0003e4  6b34eff8  load.hu r8, -114(r30)
0003e8  eb340ff9  load.hu r9, -112(r30)
0003ec  6b352ff9  load.hu r10, -110(r30)
0003f0  eb354ff9  load.hu r11, -108(r30)
0003f4  6b366ff9  load.hu r12, -106(r30)
0003f8  eb368ff9  load.hu r13, -104(r30)
0003fc  6b37aff9  load.hu r14, -102(r30)
000400  eb37cff9  load.hu r15, -100(r30)
000404  6b38eff9  load.hu r16, -98(r30)
000408  b3900018  bfloat2float.rn r1, r1
00040c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000410  b3100118  bfloat2float.rn r1, r2
000414  1f410000  addli r2, zero, 4
000418  7e0101e0  vmmov mr2, r2
00041c  1f011000  addli r2, zero, 8
000420  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
000424  b3900118  bfloat2float.rn r1, r3
000428  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00042c  b3100218  bfloat2float.rn r1, r4
000430  7e0101e0  vmmov mr2, r2
000434  1f012000  addli r2, zero, 16
000438  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00043c  b3900218  bfloat2float.rn r1, r5
000440  7e0101e0  vmmov mr2, r2
000444  1f014000  addli r2, zero, 32
000448  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00044c  b3100318  bfloat2float.rn r1, r6
000450  7e0101e0  vmmov mr2, r2
000454  1f018000  addli r2, zero, 64
000458  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00045c  b3900318  bfloat2float.rn r1, r7
000460  7e0101e0  vmmov mr2, r2
000464  1f010001  addli r2, zero, 128
000468  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00046c  b3100418  bfloat2float.rn r1, r8
000470  7e0101e0  vmmov mr2, r2
000474  1f010002  addli r2, zero, 256
000478  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00047c  b3900418  bfloat2float.rn r1, r9
000480  7e0101e0  vmmov mr2, r2
000484  1f010004  addli r2, zero, 512
000488  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00048c  b3100518  bfloat2float.rn r1, r10
000490  7e0101e0  vmmov mr2, r2
000494  1f010008  addli r2, zero, 1024
000498  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00049c  b3900518  bfloat2float.rn r1, r11
0004a0  7e0101e0  vmmov mr2, r2
0004a4  1f010010  addli r2, zero, 2048
0004a8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004ac  b3100618  bfloat2float.rn r1, r12
0004b0  7e0101e0  vmmov mr2, r2
0004b4  1f010020  addli r2, zero, 4096
0004b8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004bc  b3900618  bfloat2float.rn r1, r13
0004c0  7e0101e0  vmmov mr2, r2
0004c4  1f010040  addli r2, zero, 8192
0004c8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004cc  b3100718  bfloat2float.rn r1, r14
0004d0  7e0101e0  vmmov mr2, r2
0004d4  2b410000  lui r2, 4
0004d8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004dc  b3900718  bfloat2float.rn r1, r15
0004e0  7e0101e0  vmmov mr2, r2
0004e4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004e8  b3100818  bfloat2float.rn r1, r16
0004ec  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0004f0  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0004f4  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0004f8  00a00000  mfence { lm }
0004fc  63068fff  loadli.w r12,  -64(r30)
000500  e3458fff  loadli.w r11,  -60(r30)
000504  e30b9fff  loadli.w r23,  -56(r30)
000508  63479fff  loadli.w r14,  -52(r30)
00050c  6301afff  loadli.w r2,  -48(r30)
000510  634dafff  loadli.w r26,  -44(r30)
000514  e302bfff  loadli.w r5,  -40(r30)
000518  e34dbfff  loadli.w r27,  -36(r30)
00051c  e300cfff  loadli.w r1,  -32(r30)
000520  67421ffe  storeli.w r1, -220(r30)
000524  97004601  and r1, r12, r20
000528  e34ccfff  loadli.w r25,  -28(r30)
00052c  6308dfff  loadli.w r16,  -24(r30)
000530  93011b04  setlt.u r3, r22, r1
000534  e74d1ffc  storeli.w r1, -292(r30)
000538  e349dfff  loadli.w r19,  -20(r30)
00053c  e308efff  loadli.w r17,  -16(r30)
000540  e340efff  loadli.w r1,  -12(r30)
000544  e307ffff  loadli.w r15,  -8(r30)
000548  6342ffff  loadli.w r4,  -4(r30)
00054c  3bb00100  bneq r3, zero, 12
000550  6703cffe  storeli.w r12, -208(r30)
000554  db010000  j 12
000558  97118601  or r3, r12, r24
00055c  67033ffe  storeli.w r3, -208(r30)
000560  17854501  and r10, r11, r20
000564  e7021ffe  storeli.w r1, -216(r30)
000568  9301ab04  setlt.u r3, r22, r10
00056c  3bb00100  bneq r3, zero, 12
000570  9f860500  addli r13, r11, 0
000574  5b010000  j 8
000578  97968501  or r13, r11, r24
00057c  97844b01  and r9, r23, r20
000580  e3404ffe  loadli.w r1,  -220(r30)
000584  93019b04  setlt.u r3, r22, r9
000588  3bb00100  bneq r3, zero, 12
00058c  1f830b00  addli r6, r23, 0
000590  5b010000  j 8
000594  17938b01  or r6, r23, r24
000598  17044701  and r8, r14, r20
00059c  e7424ffe  storeli.w r4, -212(r30)
0005a0  93018b04  setlt.u r3, r22, r8
0005a4  3bb00100  bneq r3, zero, 12
0005a8  1f020700  addli r4, r14, 0
0005ac  5b010000  j 8
0005b0  17128701  or r4, r14, r24
0005b4  97034101  and r7, r2, r20
0005b8  93017b04  setlt.u r3, r22, r7
0005bc  3bb00100  bneq r3, zero, 12
0005c0  e7432ffe  storeli.w r2, -196(r30)
0005c4  db010000  j 12
0005c8  97118101  or r3, r2, r24
0005cc  e7433ffe  storeli.w r3, -196(r30)
0005d0  170e4d01  and r28, r26, r20
0005d4  e7034ffe  storeli.w r4, -200(r30)
0005d8  e70caffd  storeli.w r26, -312(r30)
0005dc  9301cb05  setlt.u r3, r22, r28
0005e0  3bb00100  bneq r3, zero, 12
0005e4  6700afff  storeli.w r26, -256(r30)
0005e8  db010000  j 12
0005ec  97118d01  or r3, r26, r24
0005f0  67003ffe  storeli.w r3, -256(r30)
0005f4  1f820200  addli r4, r5, 0
0005f8  97024201  and r5, r4, r20
0005fc  e74c4ffc  storeli.w r4, -308(r30)
000600  93015b04  setlt.u r3, r22, r5
000604  3bb00100  bneq r3, zero, 12
000608  67404ffe  storeli.w r4, -252(r30)
00060c  db010000  j 12
000610  97118201  or r3, r4, r24
000614  67403ffe  storeli.w r3, -252(r30)
000618  1f820d00  addli r4, r27, 0
00061c  67436ffe  storeli.w r6, -204(r30)
000620  970d4201  and r27, r4, r20
000624  670d4ffc  storeli.w r4, -304(r30)
000628  9301bb05  setlt.u r3, r22, r27
00062c  3bb00100  bneq r3, zero, 12
000630  e7004ffe  storeli.w r4, -248(r30)
000634  db010000  j 12
000638  97118201  or r3, r4, r24
00063c  e7003ffe  storeli.w r3, -248(r30)
000640  97814001  and r3, r1, r20
000644  670e3ffc  storeli.w r3, -288(r30)
000648  93013b04  setlt.u r3, r22, r3
00064c  3bb00100  bneq r3, zero, 12
000650  e7401ffe  storeli.w r1, -244(r30)
000654  db010000  j 12
000658  97918001  or r3, r1, r24
00065c  e7403ffe  storeli.w r3, -244(r30)
000660  97804c01  and r1, r25, r20
000664  93011b04  setlt.u r3, r22, r1
000668  674e1ffc  storeli.w r1, -284(r30)
00066c  3bb00100  bneq r3, zero, 12
000670  67019fff  storeli.w r25, -240(r30)
000674  db010000  j 12
000678  97918c01  or r3, r25, r24
00067c  67013ffe  storeli.w r3, -240(r30)
000680  97004801  and r1, r16, r20
000684  1f830c00  addli r6, r25, 0
000688  9f0c0800  addli r25, r16, 0
00068c  93011b04  setlt.u r3, r22, r1
000690  e70e1ffc  storeli.w r1, -280(r30)
000694  3bb00100  bneq r3, zero, 12
000698  1f020800  addli r4, r16, 0
00069c  5b010000  j 8
0006a0  17128801  or r4, r16, r24
0006a4  97804901  and r1, r19, r20
0006a8  1f880600  addli r16, r13, 0
0006ac  93011b04  setlt.u r3, r22, r1
0006b0  e74e1ffc  storeli.w r1, -276(r30)
0006b4  3bb00100  bneq r3, zero, 12
0006b8  9f860900  addli r13, r19, 0
0006bc  5b010000  j 8
0006c0  97968901  or r13, r19, r24
0006c4  97804801  and r1, r17, r20
0006c8  e70d1ffd  storeli.w r17, -296(r30)
0006cc  674d3ffd  storeli.w r19, -300(r30)
0006d0  93011b04  setlt.u r3, r22, r1
0006d4  670f1ffc  storeli.w r1, -272(r30)
0006d8  3bb00100  bneq r3, zero, 12
0006dc  9f810600  addli r3, r13, 0
0006e0  db010000  j 12
0006e4  9f810600  addli r3, r13, 0
0006e8  97988801  or r17, r17, r24
0006ec  e3065ffe  loadli.w r13,  -216(r30)
0006f0  97804601  and r1, r13, r20
0006f4  93091b04  setlt.u r19, r22, r1
0006f8  674f1ffc  storeli.w r1, -268(r30)
0006fc  3bb00900  bneq r19, zero, 12
000700  ab004000  lui r1, 1024
000704  db010000  j 12
000708  ab004000  lui r1, 1024
00070c  97968601  or r13, r13, r24
000710  178c4701  and r24, r15, r20
000714  6741dffe  storeli.w r13, -236(r30)
000718  e74ffffc  storeli.w r15, -260(r30)
00071c  93098b05  setlt.u r19, r22, r24
000720  3bb00900  bneq r19, zero, 12
000724  9f890700  addli r19, r15, 0
000728  5b010000  j 8
00072c  97991700  or r19, r15, r1
000730  e3475ffe  loadli.w r15,  -212(r30)
000734  97864701  and r13, r15, r20
000738  e70fdffc  storeli.w r13, -264(r30)
00073c  9306db04  setlt.u r13, r22, r13
000740  37a00600  beq r13, zero, 8
000744  97971700  or r15, r15, r1
000748  e340bffd  loadli.w r1,  -292(r30)
00074c  93861a04  setlt.u r13, r21, r1
000750  bb800600  bneq r13, zero, 32
000754  9b460601  srli r13, r12, 16
000758  9b861600  andi r13, r13, 1
00075c  0b16d610  add.s r12, r12, r13
000760  ab06ffff  lui r13, 1048560
000764  0b162611  add.s r12, r12, r18
000768  1706d600  and r12, r12, r13
00076c  6703cffe  storeli.w r12, -208(r30)
000770  1385aa04  setlt.u r10, r21, r10
000774  e3000ffe  loadli.w r1,  -256(r30)
000778  9f060800  addli r13, r16, 0
00077c  3b700500  bneq r10, zero, 28
000780  1bc50501  srli r10, r11, 16
000784  1b051500  andi r10, r10, 1
000788  0b95a510  add.s r10, r11, r10
00078c  ab05ffff  lui r11, 1048560
000790  0b152511  add.s r10, r10, r18
000794  9706b500  and r13, r10, r11
000798  93849a04  setlt.u r9, r21, r9
00079c  ab05ffff  lui r11, 1048560
0007a0  1f880c00  addli r16, r25, 0
0007a4  3bf00400  bneq r9, zero, 28
0007a8  9bc40b01  srli r9, r23, 16
0007ac  9b841400  andi r9, r9, 1
0007b0  8b949b10  add.s r9, r23, r9
0007b4  8b942411  add.s r9, r9, r18
0007b8  9784b400  and r9, r9, r11
0007bc  67439ffe  storeli.w r9, -204(r30)
0007c0  13848a04  setlt.u r8, r21, r8
0007c4  1f850900  addli r10, r19, 0
0007c8  9f0c0300  addli r25, r6, 0
0007cc  3b700400  bneq r8, zero, 28
0007d0  1b440701  srli r8, r14, 16
0007d4  1b041400  andi r8, r8, 1
0007d8  0b148710  add.s r8, r14, r8
0007dc  0b142411  add.s r8, r8, r18
0007e0  1704b400  and r8, r8, r11
0007e4  e7038ffe  storeli.w r8, -200(r30)
0007e8  93837a04  setlt.u r7, r21, r7
0007ec  e3042ffe  loadli.w r9,  -240(r30)
0007f0  63066ffe  loadli.w r12,  -208(r30)
0007f4  9f890100  addli r19, r3, 0
0007f8  9f0b0200  addli r23, r4, 0
0007fc  3bf00300  bneq r7, zero, 28
000800  9b430101  srli r7, r2, 16
000804  9b831300  andi r7, r7, 1
000808  0b117110  add.s r2, r2, r7
00080c  0b112111  add.s r2, r2, r18
000810  1701b100  and r2, r2, r11
000814  e7432ffe  storeli.w r2, -196(r30)
000818  1381ca05  setlt.u r2, r21, r28
00081c  63441ffe  loadli.w r8,  -244(r30)
000820  e3410ffe  loadli.w r3,  -252(r30)
000824  2b07803f  lui r14, 260096
000828  1f8e0000  addli r28, r1, 0
00082c  3b700100  bneq r2, zero, 28
000830  e3009ffd  loadli.w r1,  -312(r30)
000834  1bc10001  srli r2, r1, 16
000838  1b011100  andi r2, r2, 1
00083c  8b902010  add.s r1, r1, r2
000840  8b902011  add.s r1, r1, r18
000844  178eb000  and r28, r1, r11
000848  93805a04  setlt.u r1, r21, r5
00084c  630d1ffe  loadli.w r26,  -248(r30)
000850  3bf00000  bneq r1, zero, 28
000854  63419ffd  loadli.w r2,  -308(r30)
000858  9b400101  srli r1, r2, 16
00085c  9b801000  andi r1, r1, 1
000860  8b101110  add.s r1, r2, r1
000864  8b902011  add.s r1, r1, r18
000868  9781b000  and r3, r1, r11
00086c  9380ba05  setlt.u r1, r21, r27
000870  63417ffe  loadli.w r2,  -196(r30)
000874  e3027ffe  loadli.w r5,  -200(r30)
000878  3bf00000  bneq r1, zero, 28
00087c  6302affd  loadli.w r4,  -304(r30)
000880  9b400201  srli r1, r4, 16
000884  9b801000  andi r1, r1, 1
000888  8b101210  add.s r1, r4, r1
00088c  8b902011  add.s r1, r1, r18
000890  178db000  and r26, r1, r11
000894  e300cffd  loadli.w r1,  -288(r30)
000898  93801a04  setlt.u r1, r21, r1
00089c  3bf00000  bneq r1, zero, 28
0008a0  63424ffe  loadli.w r4,  -220(r30)
0008a4  9b400201  srli r1, r4, 16
0008a8  9b801000  andi r1, r1, 1
0008ac  8b101210  add.s r1, r4, r1
0008b0  8b902011  add.s r1, r1, r18
0008b4  1784b000  and r8, r1, r11
0008b8  e340cffd  loadli.w r1,  -284(r30)
0008bc  63436ffe  loadli.w r6,  -204(r30)
0008c0  93801a04  setlt.u r1, r21, r1
0008c4  3be00000  bneq r1, zero, 24
0008c8  9bc00c01  srli r1, r25, 16
0008cc  9b801000  andi r1, r1, 1
0008d0  8b901c10  add.s r1, r25, r1
0008d4  8b902011  add.s r1, r1, r18
0008d8  9784b000  and r9, r1, r11
0008dc  e300dffd  loadli.w r1,  -280(r30)
0008e0  93801a04  setlt.u r1, r21, r1
0008e4  3be00000  bneq r1, zero, 24
0008e8  9b400801  srli r1, r16, 16
0008ec  9b801000  andi r1, r1, 1
0008f0  8b101810  add.s r1, r16, r1
0008f4  8b902011  add.s r1, r1, r18
0008f8  978bb000  and r23, r1, r11
0008fc  e340dffd  loadli.w r1,  -276(r30)
000900  63482ffe  loadli.w r16,  -236(r30)
000904  93801a04  setlt.u r1, r21, r1
000908  3bf00000  bneq r1, zero, 28
00090c  6342affd  loadli.w r4,  -300(r30)
000910  9b400201  srli r1, r4, 16
000914  9b801000  andi r1, r1, 1
000918  8b101210  add.s r1, r4, r1
00091c  8b902011  add.s r1, r1, r18
000920  9789b000  and r19, r1, r11
000924  e300effd  loadli.w r1,  -272(r30)
000928  1f820700  addli r4, r15, 0
00092c  93801a04  setlt.u r1, r21, r1
000930  3bf00000  bneq r1, zero, 28
000934  e303bffd  loadli.w r7,  -296(r30)
000938  9bc00301  srli r1, r7, 16
00093c  9b801000  andi r1, r1, 1
000940  8b901310  add.s r1, r7, r1
000944  8b902011  add.s r1, r1, r18
000948  9788b000  and r17, r1, r11
00094c  e340effd  loadli.w r1,  -268(r30)
000950  e343fffd  loadli.w r7,  -260(r30)
000954  93801a04  setlt.u r1, r21, r1
000958  3bf00000  bneq r1, zero, 28
00095c  e3075ffe  loadli.w r15,  -216(r30)
000960  9bc00701  srli r1, r15, 16
000964  9b801000  andi r1, r1, 1
000968  8b901710  add.s r1, r15, r1
00096c  8b902011  add.s r1, r1, r18
000970  1788b000  and r16, r1, r11
000974  93808a05  setlt.u r1, r21, r24
000978  3be00000  bneq r1, zero, 24
00097c  9bc00301  srli r1, r7, 16
000980  9b801000  andi r1, r1, 1
000984  8b901310  add.s r1, r7, r1
000988  8b902011  add.s r1, r1, r18
00098c  1785b000  and r10, r1, r11
000990  e300fffd  loadli.w r1,  -264(r30)
000994  2b0c4000  lui r24, 1024
000998  93801a04  setlt.u r1, r21, r1
00099c  3bf00000  bneq r1, zero, 28
0009a0  63425ffe  loadli.w r4,  -212(r30)
0009a4  9b400201  srli r1, r4, 16
0009a8  9b801000  andi r1, r1, 1
0009ac  8b101210  add.s r1, r4, r1
0009b0  8b902011  add.s r1, r1, r18
0009b4  1782b000  and r4, r1, r11
0009b8  97004601  and r1, r12, r20
0009bc  93001b04  setlt.u r1, r22, r1
0009c0  3be00000  bneq r1, zero, 24
0009c4  9b400601  srli r1, r12, 16
0009c8  9b801000  andi r1, r1, 1
0009cc  8b101610  add.s r1, r12, r1
0009d0  0b962011  add.s r12, r1, r18
0009d4  5b010000  j 8
0009d8  17168601  or r12, r12, r24
0009dc  97804601  and r1, r13, r20
0009e0  93001b04  setlt.u r1, r22, r1
0009e4  3be00000  bneq r1, zero, 24
0009e8  9bc00601  srli r1, r13, 16
0009ec  9b801000  andi r1, r1, 1
0009f0  8b901610  add.s r1, r13, r1
0009f4  8b962011  add.s r13, r1, r18
0009f8  5b010000  j 8
0009fc  97968601  or r13, r13, r24
000a00  97004301  and r1, r6, r20
000a04  93001b04  setlt.u r1, r22, r1
000a08  3be00000  bneq r1, zero, 24
000a0c  9b400301  srli r1, r6, 16
000a10  9b801000  andi r1, r1, 1
000a14  8b101310  add.s r1, r6, r1
000a18  8b972011  add.s r15, r1, r18
000a1c  5b010000  j 8
000a20  97178301  or r15, r6, r24
000a24  97804201  and r1, r5, r20
000a28  93001b04  setlt.u r1, r22, r1
000a2c  3be00000  bneq r1, zero, 24
000a30  9bc00201  srli r1, r5, 16
000a34  9b801000  andi r1, r1, 1
000a38  8b901210  add.s r1, r5, r1
000a3c  8b922011  add.s r5, r1, r18
000a40  5b010000  j 8
000a44  97928201  or r5, r5, r24
000a48  97004101  and r1, r2, r20
000a4c  93001b04  setlt.u r1, r22, r1
000a50  3be00000  bneq r1, zero, 24
000a54  9b400101  srli r1, r2, 16
000a58  9b801000  andi r1, r1, 1
000a5c  8b101110  add.s r1, r2, r1
000a60  8b932011  add.s r7, r1, r18
000a64  5b010000  j 8
000a68  97138101  or r7, r2, r24
000a6c  97004e01  and r1, r28, r20
000a70  93001b04  setlt.u r1, r22, r1
000a74  3be00000  bneq r1, zero, 24
000a78  9b400e01  srli r1, r28, 16
000a7c  9b801000  andi r1, r1, 1
000a80  8b101e10  add.s r1, r28, r1
000a84  8b902011  add.s r1, r1, r18
000a88  5b010000  j 8
000a8c  97108e01  or r1, r28, r24
000a90  17814101  and r2, r3, r20
000a94  13012b04  setlt.u r2, r22, r2
000a98  3b600100  bneq r2, zero, 24
000a9c  1bc10101  srli r2, r3, 16
000aa0  1b011100  andi r2, r2, 1
000aa4  0b912110  add.s r2, r3, r2
000aa8  0b112111  add.s r2, r2, r18
000aac  5b010000  j 8
000ab0  17918101  or r2, r3, r24
000ab4  97014d01  and r3, r26, r20
000ab8  93013b04  setlt.u r3, r22, r3
000abc  3be00100  bneq r3, zero, 24
000ac0  9b410d01  srli r3, r26, 16
000ac4  9b811100  andi r3, r3, 1
000ac8  8b113d10  add.s r3, r26, r3
000acc  0b932111  add.s r6, r3, r18
000ad0  5b010000  j 8
000ad4  17138d01  or r6, r26, r24
000ad8  97014401  and r3, r8, r20
000adc  93013b04  setlt.u r3, r22, r3
000ae0  3be00100  bneq r3, zero, 24
000ae4  9b410401  srli r3, r8, 16
000ae8  9b811100  andi r3, r3, 1
000aec  8b113410  add.s r3, r8, r3
000af0  0b942111  add.s r8, r3, r18
000af4  5b010000  j 8
000af8  17148401  or r8, r8, r24
000afc  97814401  and r3, r9, r20
000b00  93013b04  setlt.u r3, r22, r3
000b04  3be00100  bneq r3, zero, 24
000b08  9bc10401  srli r3, r9, 16
000b0c  9b811100  andi r3, r3, 1
000b10  8b913410  add.s r3, r9, r3
000b14  8b942111  add.s r9, r3, r18
000b18  5b010000  j 8
000b1c  97948401  or r9, r9, r24
000b20  97814b01  and r3, r23, r20
000b24  93013b04  setlt.u r3, r22, r3
000b28  3be00100  bneq r3, zero, 24
000b2c  9bc10b01  srli r3, r23, 16
000b30  9b811100  andi r3, r3, 1
000b34  8b913b10  add.s r3, r23, r3
000b38  8b9b2111  add.s r23, r3, r18
000b3c  5b010000  j 8
000b40  979b8b01  or r23, r23, r24
000b44  97814901  and r3, r19, r20
000b48  93013b04  setlt.u r3, r22, r3
000b4c  3be00100  bneq r3, zero, 24
000b50  9bc10901  srli r3, r19, 16
000b54  9b811100  andi r3, r3, 1
000b58  8b913910  add.s r3, r19, r3
000b5c  8b9d2111  add.s r27, r3, r18
000b60  5b010000  j 8
000b64  979d8901  or r27, r19, r24
000b68  97814801  and r3, r17, r20
000b6c  93013b04  setlt.u r3, r22, r3
000b70  3be00100  bneq r3, zero, 24
000b74  9bc10801  srli r3, r17, 16
000b78  9b811100  andi r3, r3, 1
000b7c  8b913810  add.s r3, r17, r3
000b80  8b982111  add.s r17, r3, r18
000b84  5b010000  j 8
000b88  97988801  or r17, r17, r24
000b8c  97014801  and r3, r16, r20
000b90  93013b04  setlt.u r3, r22, r3
000b94  3be00100  bneq r3, zero, 24
000b98  9b410801  srli r3, r16, 16
000b9c  9b811100  andi r3, r3, 1
000ba0  8b113810  add.s r3, r16, r3
000ba4  8b9c2111  add.s r25, r3, r18
000ba8  5b010000  j 8
000bac  971c8801  or r25, r16, r24
000bb0  97014501  and r3, r10, r20
000bb4  93013b04  setlt.u r3, r22, r3
000bb8  3be00100  bneq r3, zero, 24
000bbc  9b410501  srli r3, r10, 16
000bc0  9b811100  andi r3, r3, 1
000bc4  8b113510  add.s r3, r10, r3
000bc8  8b992111  add.s r19, r3, r18
000bcc  5b010000  j 8
000bd0  97198501  or r19, r10, r24
000bd4  97014201  and r3, r4, r20
000bd8  93013b04  setlt.u r3, r22, r3
000bdc  3be00100  bneq r3, zero, 24
000be0  9b410201  srli r3, r4, 16
000be4  9b811100  andi r3, r3, 1
000be8  8b113210  add.s r3, r4, r3
000bec  8b912111  add.s r3, r3, r18
000bf0  5b010000  j 8
000bf4  97118201  or r3, r4, r24
000bf8  e70f3ffc  storeli.w r3, -264(r30)
000bfc  9701b600  and r3, r12, r11
000c00  0be20158  neg.f r4, r3
000c04  0f020200  exp.f.rn r4, r4
000c08  0b62e210  add.f.rn r4, r4, r14
000c0c  0f024718  div.f.rn r4, r14, r4
000c10  0b663220  mul.f.rn r12, r4, r3
000c14  97014601  and r3, r12, r20
000c18  e74f3ffc  storeli.w r3, -260(r30)
000c1c  93013b04  setlt.u r3, r22, r3
000c20  3bb00100  bneq r3, zero, 12
000c24  6703cffe  storeli.w r12, -208(r30)
000c28  db010000  j 12
000c2c  97118601  or r3, r12, r24
000c30  67033ffe  storeli.w r3, -208(r30)
000c34  9781b600  and r3, r13, r11
000c38  0be20158  neg.f r4, r3
000c3c  0f020200  exp.f.rn r4, r4
000c40  0b62e210  add.f.rn r4, r4, r14
000c44  0f024718  div.f.rn r4, r14, r4
000c48  8b663220  mul.f.rn r13, r4, r3
000c4c  97814601  and r3, r13, r20
000c50  674f3ffc  storeli.w r3, -268(r30)
000c54  93013b04  setlt.u r3, r22, r3
000c58  3bb00100  bneq r3, zero, 12
000c5c  e742dffe  storeli.w r13, -212(r30)
000c60  db010000  j 12
000c64  97918601  or r3, r13, r24
000c68  e7423ffe  storeli.w r3, -212(r30)
000c6c  9781b700  and r3, r15, r11
000c70  0be20158  neg.f r4, r3
000c74  0f020200  exp.f.rn r4, r4
000c78  0b62e210  add.f.rn r4, r4, r14
000c7c  0f024718  div.f.rn r4, r14, r4
000c80  8b673220  mul.f.rn r15, r4, r3
000c84  97814701  and r3, r15, r20
000c88  e74e3ffc  storeli.w r3, -276(r30)
000c8c  93013b04  setlt.u r3, r22, r3
000c90  3bb00100  bneq r3, zero, 12
000c94  e702fffe  storeli.w r15, -216(r30)
000c98  db010000  j 12
000c9c  97918701  or r3, r15, r24
000ca0  e7023ffe  storeli.w r3, -216(r30)
000ca4  9781b200  and r3, r5, r11
000ca8  0be20158  neg.f r4, r3
000cac  0f020200  exp.f.rn r4, r4
000cb0  0b62e210  add.f.rn r4, r4, r14
000cb4  0f024718  div.f.rn r4, r14, r4
000cb8  0b6d3220  mul.f.rn r26, r4, r3
000cbc  97014d01  and r3, r26, r20
000cc0  e70e3ffc  storeli.w r3, -280(r30)
000cc4  93013b04  setlt.u r3, r22, r3
000cc8  3bb00100  bneq r3, zero, 12
000ccc  6742afff  storeli.w r26, -220(r30)
000cd0  db010000  j 12
000cd4  97118d01  or r3, r26, r24
000cd8  67423ffe  storeli.w r3, -220(r30)
000cdc  9781b300  and r3, r7, r11
000ce0  0be20158  neg.f r4, r3
000ce4  0f020200  exp.f.rn r4, r4
000ce8  0b62e210  add.f.rn r4, r4, r14
000cec  0f024718  div.f.rn r4, r14, r4
000cf0  8b633220  mul.f.rn r7, r4, r3
000cf4  97814301  and r3, r7, r20
000cf8  674e3ffc  storeli.w r3, -284(r30)
000cfc  93013b04  setlt.u r3, r22, r3
000d00  3bb00100  bneq r3, zero, 12
000d04  67417ffe  storeli.w r7, -236(r30)
000d08  db010000  j 12
000d0c  97918301  or r3, r7, r24
000d10  67413ffe  storeli.w r3, -236(r30)
000d14  9780b000  and r1, r1, r11
000d18  8be10058  neg.f r3, r1
000d1c  8f810100  exp.f.rn r3, r3
000d20  8be1e110  add.f.rn r3, r3, r14
000d24  8f013718  div.f.rn r3, r14, r3
000d28  8be01120  mul.f.rn r1, r3, r1
000d2c  97814001  and r3, r1, r20
000d30  e74d3ffc  storeli.w r3, -292(r30)
000d34  93013b04  setlt.u r3, r22, r3
000d38  3bb00100  bneq r3, zero, 12
000d3c  e7431ffe  storeli.w r1, -196(r30)
000d40  db010000  j 12
000d44  97918001  or r3, r1, r24
000d48  e7433ffe  storeli.w r3, -196(r30)
000d4c  1701b100  and r2, r2, r11
000d50  8b610158  neg.f r3, r2
000d54  8f810100  exp.f.rn r3, r3
000d58  8be1e110  add.f.rn r3, r3, r14
000d5c  8f013718  div.f.rn r3, r14, r3
000d60  0be12120  mul.f.rn r2, r3, r2
000d64  97014101  and r3, r2, r20
000d68  e70d3ffc  storeli.w r3, -296(r30)
000d6c  93013b04  setlt.u r3, r22, r3
000d70  3bb00100  bneq r3, zero, 12
000d74  e7032ffe  storeli.w r2, -200(r30)
000d78  db010000  j 12
000d7c  97118101  or r3, r2, r24
000d80  e7033ffe  storeli.w r3, -200(r30)
000d84  9701b300  and r3, r6, r11
000d88  0be20158  neg.f r4, r3
000d8c  0f020200  exp.f.rn r4, r4
000d90  0b62e210  add.f.rn r4, r4, r14
000d94  0f024718  div.f.rn r4, r14, r4
000d98  0b683220  mul.f.rn r16, r4, r3
000d9c  97014801  and r3, r16, r20
000da0  674d3ffc  storeli.w r3, -300(r30)
000da4  93013b04  setlt.u r3, r22, r3
000da8  3bb00100  bneq r3, zero, 12
000dac  67430fff  storeli.w r16, -204(r30)
000db0  db010000  j 12
000db4  97118801  or r3, r16, r24
000db8  67433ffe  storeli.w r3, -204(r30)
000dbc  9701b400  and r3, r8, r11
000dc0  0be20158  neg.f r4, r3
000dc4  0f020200  exp.f.rn r4, r4
000dc8  0b62e210  add.f.rn r4, r4, r14
000dcc  0f024718  div.f.rn r4, r14, r4
000dd0  0b643220  mul.f.rn r8, r4, r3
000dd4  97014401  and r3, r8, r20
000dd8  670d3ffc  storeli.w r3, -304(r30)
000ddc  93013b04  setlt.u r3, r22, r3
000de0  3bb00100  bneq r3, zero, 12
000de4  67018ffe  storeli.w r8, -240(r30)
000de8  db010000  j 12
000dec  97118401  or r3, r8, r24
000df0  67013ffe  storeli.w r3, -240(r30)
000df4  9781b400  and r3, r9, r11
000df8  0be20158  neg.f r4, r3
000dfc  0f020200  exp.f.rn r4, r4
000e00  0b62e210  add.f.rn r4, r4, r14
000e04  0f024718  div.f.rn r4, r14, r4
000e08  0b653220  mul.f.rn r10, r4, r3
000e0c  97014501  and r3, r10, r20
000e10  e74c3ffc  storeli.w r3, -308(r30)
000e14  93013b04  setlt.u r3, r22, r3
000e18  3bb00100  bneq r3, zero, 12
000e1c  e740affe  storeli.w r10, -244(r30)
000e20  db010000  j 12
000e24  97118501  or r3, r10, r24
000e28  e7403ffe  storeli.w r3, -244(r30)
000e2c  9781bb00  and r3, r23, r11
000e30  0be20158  neg.f r4, r3
000e34  0f020200  exp.f.rn r4, r4
000e38  0b62e210  add.f.rn r4, r4, r14
000e3c  0f024718  div.f.rn r4, r14, r4
000e40  8b6b3220  mul.f.rn r23, r4, r3
000e44  97814b01  and r3, r23, r20
000e48  e70c3ffc  storeli.w r3, -312(r30)
000e4c  93013b04  setlt.u r3, r22, r3
000e50  3bb00100  bneq r3, zero, 12
000e54  e7007fff  storeli.w r23, -248(r30)
000e58  db010000  j 12
000e5c  97918b01  or r3, r23, r24
000e60  e7003ffe  storeli.w r3, -248(r30)
000e64  9781bd00  and r3, r27, r11
000e68  0be20158  neg.f r4, r3
000e6c  0f020200  exp.f.rn r4, r4
000e70  0b62e210  add.f.rn r4, r4, r14
000e74  0f024718  div.f.rn r4, r14, r4
000e78  8b643220  mul.f.rn r9, r4, r3
000e7c  978d4401  and r27, r9, r20
000e80  9301bb05  setlt.u r3, r22, r27
000e84  3bb00100  bneq r3, zero, 12
000e88  67409ffe  storeli.w r9, -252(r30)
000e8c  db010000  j 12
000e90  97918401  or r3, r9, r24
000e94  67403ffe  storeli.w r3, -252(r30)
000e98  9781b800  and r3, r17, r11
000e9c  0be20158  neg.f r4, r3
000ea0  0f020200  exp.f.rn r4, r4
000ea4  0b62e210  add.f.rn r4, r4, r14
000ea8  0f024718  div.f.rn r4, r14, r4
000eac  8b683220  mul.f.rn r17, r4, r3
000eb0  178e4801  and r28, r17, r20
000eb4  9301cb05  setlt.u r3, r22, r28
000eb8  3bb00100  bneq r3, zero, 12
000ebc  67001fff  storeli.w r17, -256(r30)
000ec0  db010000  j 12
000ec4  97918801  or r3, r17, r24
000ec8  67003ffe  storeli.w r3, -256(r30)
000ecc  9781bc00  and r3, r25, r11
000ed0  0be20158  neg.f r4, r3
000ed4  0f020200  exp.f.rn r4, r4
000ed8  0b62e210  add.f.rn r4, r4, r14
000edc  0f024718  div.f.rn r4, r14, r4
000ee0  8b623220  mul.f.rn r5, r4, r3
000ee4  17824201  and r4, r5, r20
000ee8  93014b04  setlt.u r3, r22, r4
000eec  3bb00100  bneq r3, zero, 12
000ef0  670f5ffc  storeli.w r5, -272(r30)
000ef4  db010000  j 12
000ef8  97918201  or r3, r5, r24
000efc  670f3ffc  storeli.w r3, -272(r30)
000f00  9781b900  and r3, r19, r11
000f04  8be90158  neg.f r19, r3
000f08  8f890900  exp.f.rn r19, r19
000f0c  8be9e910  add.f.rn r19, r19, r14
000f10  8f093719  div.f.rn r19, r14, r19
000f14  2b074000  lui r14, 1024
000f18  8be93920  mul.f.rn r19, r19, r3
000f1c  978c4901  and r25, r19, r20
000f20  93019b05  setlt.u r3, r22, r25
000f24  3bb00100  bneq r3, zero, 12
000f28  670e3ffd  storeli.w r19, -288(r30)
000f2c  db010000  j 12
000f30  97918901  or r3, r19, r24
000f34  670e3ffc  storeli.w r3, -288(r30)
000f38  e301fffd  loadli.w r3,  -264(r30)
000f3c  2b03ffff  lui r6, 1048560
000f40  9781b100  and r3, r3, r11
000f44  ab05803f  lui r11, 260096
000f48  0bec0158  neg.f r24, r3
000f4c  0f0c0c00  exp.f.rn r24, r24
000f50  0b6cbc10  add.f.rn r24, r24, r11
000f54  0f8c8519  div.f.rn r24, r11, r24
000f58  0b6c3c20  mul.f.rn r24, r24, r3
000f5c  97014c01  and r3, r24, r20
000f60  93053b04  setlt.u r11, r22, r3
000f64  3bb00500  bneq r11, zero, 12
000f68  e70f8ffd  storeli.w r24, -264(r30)
000f6c  db010000  j 12
000f70  9715ec00  or r11, r24, r14
000f74  e70fbffc  storeli.w r11, -264(r30)
000f78  e345fffd  loadli.w r11,  -260(r30)
000f7c  63076ffe  loadli.w r14,  -208(r30)
000f80  9385ba04  setlt.u r11, r21, r11
000f84  3be00500  bneq r11, zero, 24
000f88  9b450601  srli r11, r12, 16
000f8c  9b851500  andi r11, r11, 1
000f90  8b15b610  add.s r11, r12, r11
000f94  8b952511  add.s r11, r11, r18
000f98  17876500  and r14, r11, r6
000f9c  e345effd  loadli.w r11,  -268(r30)
000fa0  63465ffe  loadli.w r12,  -212(r30)
000fa4  9385ba04  setlt.u r11, r21, r11
000fa8  3be00500  bneq r11, zero, 24
000fac  9bc50601  srli r11, r13, 16
000fb0  9b851500  andi r11, r11, 1
000fb4  8b95b610  add.s r11, r13, r11
000fb8  8b952511  add.s r11, r11, r18
000fbc  17866500  and r12, r11, r6
000fc0  e345dffd  loadli.w r11,  -276(r30)
000fc4  e3065ffe  loadli.w r13,  -216(r30)
000fc8  9385ba04  setlt.u r11, r21, r11
000fcc  3be00500  bneq r11, zero, 24
000fd0  9bc50701  srli r11, r15, 16
000fd4  9b851500  andi r11, r11, 1
000fd8  8b95b710  add.s r11, r15, r11
000fdc  8b952511  add.s r11, r11, r18
000fe0  97866500  and r13, r11, r6
000fe4  e305dffd  loadli.w r11,  -280(r30)
000fe8  e3474ffe  loadli.w r15,  -220(r30)
000fec  9385ba04  setlt.u r11, r21, r11
000ff0  3be00500  bneq r11, zero, 24
000ff4  9b450d01  srli r11, r26, 16
000ff8  9b851500  andi r11, r11, 1
000ffc  8b15bd10  add.s r11, r26, r11
001000  8b952511  add.s r11, r11, r18
001004  97876500  and r15, r11, r6
001008  e345cffd  loadli.w r11,  -284(r30)
00100c  634d2ffe  loadli.w r26,  -236(r30)
001010  9385ba04  setlt.u r11, r21, r11
001014  3be00500  bneq r11, zero, 24
001018  9bc50301  srli r11, r7, 16
00101c  9b851500  andi r11, r11, 1
001020  8b93b310  add.s r7, r7, r11
001024  8b932311  add.s r7, r7, r18
001028  178d6300  and r26, r7, r6
00102c  6343bffd  loadli.w r6,  -292(r30)
001030  ab05ffff  lui r11, 1048560
001034  93836a04  setlt.u r7, r21, r6
001038  3bf00300  bneq r7, zero, 28
00103c  9bc30001  srli r7, r1, 16
001040  9b831300  andi r7, r7, 1
001044  8b907010  add.s r1, r1, r7
001048  8b902011  add.s r1, r1, r18
00104c  9780b000  and r1, r1, r11
001050  e7431ffe  storeli.w r1, -196(r30)
001054  e300bffd  loadli.w r1,  -296(r30)
001058  93801a04  setlt.u r1, r21, r1
00105c  3bf00000  bneq r1, zero, 28
001060  9b400101  srli r1, r2, 16
001064  9b801000  andi r1, r1, 1
001068  8b101110  add.s r1, r2, r1
00106c  8b902011  add.s r1, r1, r18
001070  9780b000  and r1, r1, r11
001074  e7031ffe  storeli.w r1, -200(r30)
001078  e340affd  loadli.w r1,  -300(r30)
00107c  93801a04  setlt.u r1, r21, r1
001080  3bf00000  bneq r1, zero, 28
001084  9b400801  srli r1, r16, 16
001088  9b801000  andi r1, r1, 1
00108c  8b101810  add.s r1, r16, r1
001090  8b902011  add.s r1, r1, r18
001094  9780b000  and r1, r1, r11
001098  67431ffe  storeli.w r1, -204(r30)
00109c  e300affd  loadli.w r1,  -304(r30)
0010a0  63082ffe  loadli.w r16,  -240(r30)
0010a4  93801a04  setlt.u r1, r21, r1
0010a8  3be00000  bneq r1, zero, 24
0010ac  9b400401  srli r1, r8, 16
0010b0  9b801000  andi r1, r1, 1
0010b4  8b101410  add.s r1, r8, r1
0010b8  8b902011  add.s r1, r1, r18
0010bc  1788b000  and r16, r1, r11
0010c0  e3409ffd  loadli.w r1,  -308(r30)
0010c4  63441ffe  loadli.w r8,  -244(r30)
0010c8  93801a04  setlt.u r1, r21, r1
0010cc  3be00000  bneq r1, zero, 24
0010d0  9b400501  srli r1, r10, 16
0010d4  9b801000  andi r1, r1, 1
0010d8  8b101510  add.s r1, r10, r1
0010dc  8b902011  add.s r1, r1, r18
0010e0  1784b000  and r8, r1, r11
0010e4  e3009ffd  loadli.w r1,  -312(r30)
0010e8  63051ffe  loadli.w r10,  -248(r30)
0010ec  93801a04  setlt.u r1, r21, r1
0010f0  3be00000  bneq r1, zero, 24
0010f4  9bc00b01  srli r1, r23, 16
0010f8  9b801000  andi r1, r1, 1
0010fc  8b901b10  add.s r1, r23, r1
001100  8b902011  add.s r1, r1, r18
001104  1785b000  and r10, r1, r11
001108  9380ba05  setlt.u r1, r21, r27
00110c  e34b0ffe  loadli.w r23,  -252(r30)
001110  3be00000  bneq r1, zero, 24
001114  9bc00401  srli r1, r9, 16
001118  9b801000  andi r1, r1, 1
00111c  8b901410  add.s r1, r9, r1
001120  8b902011  add.s r1, r1, r18
001124  978bb000  and r23, r1, r11
001128  9380ca05  setlt.u r1, r21, r28
00112c  e30d0ffe  loadli.w r27,  -256(r30)
001130  3be00000  bneq r1, zero, 24
001134  9bc00801  srli r1, r17, 16
001138  9b801000  andi r1, r1, 1
00113c  8b901810  add.s r1, r17, r1
001140  8b902011  add.s r1, r1, r18
001144  978db000  and r27, r1, r11
001148  93804a04  setlt.u r1, r21, r4
00114c  e308effd  loadli.w r17,  -272(r30)
001150  9f040fff  addli r9, r30, -128
001154  3be00000  bneq r1, zero, 24
001158  9bc00201  srli r1, r5, 16
00115c  9b801000  andi r1, r1, 1
001160  8b901210  add.s r1, r5, r1
001164  8b902011  add.s r1, r1, r18
001168  9788b000  and r17, r1, r11
00116c  93809a05  setlt.u r1, r21, r25
001170  e30ccffd  loadli.w r25,  -288(r30)
001174  3be00000  bneq r1, zero, 24
001178  9bc00901  srli r1, r19, 16
00117c  9b801000  andi r1, r1, 1
001180  8b901910  add.s r1, r19, r1
001184  8b902011  add.s r1, r1, r18
001188  978cb000  and r25, r1, r11
00118c  93803a04  setlt.u r1, r21, r3
001190  e309fffd  loadli.w r19,  -264(r30)
001194  9f024000  addli r5, zero, 32
001198  bbee00f6  bneq r1, zero, -4168
00119c  9b400c01  srli r1, r24, 16
0011a0  9b801000  andi r1, r1, 1
0011a4  8b101c10  add.s r1, r24, r1
0011a8  8b902011  add.s r1, r1, r18
0011ac  9789b000  and r19, r1, r11
0011b0  5bf4fdff  j -4192
0011b4  9f0e0ffd  addli sp, r30, -384
0011b8  9f8e0e03  addli sp, sp, 384
0011bc  00a00300  mfence { lm, sm, gm }
0011c0  00100000  exit
0011c4  00100000  exit
0011c8  00100000  exit
0011cc  00100000  exit
0011d0  00100000  exit
0011d4  00100000  exit
0011d8  00100000  exit
0011dc  00100000  exit
0011e0  00100000  exit
0011e4  00100000  exit
0011e8  00100000  exit
0011ec  00100000  exit
0011f0  00100000  exit
0011f4  00100000  exit
0011f8  00100000  exit
0011fc  00100000  exit
001200  00100000  exit
001204  00100000  exit
001208  00100000  exit
00120c  00100000  exit
001210  00100000  exit
001214  00100000  exit
001218  00100000  exit
00121c  00100000  exit
001220  00100000  exit
001224  00100000  exit
001228  00100000  exit
00122c  00100000  exit
001230  00100000  exit
001234  00100000  exit
001238  00100000  exit
00123c  00100000  exit
001240  00100000  exit
001244  00100000  exit
001248  00100000  exit
00124c  00100000  exit
001250  00100000  exit
001254  00100000  exit
001258  00100000  exit
00125c  00100000  exit
001260  00100000  exit
001264  00100000  exit
001268  00100000  exit
00126c  00100000  exit
001270  00100000  exit
001274  00100000  exit
001278  00100000  exit
00127c  00100000  exit
001280  00100000  exit
001284  00100000  exit
001288  00100000  exit
00128c  00100000  exit
001290  00100000  exit
001294  00100000  exit
001298  00100000  exit
00129c  00100000  exit
0012a0  00100000  exit
0012a4  00100000  exit
0012a8  00100000  exit
0012ac  00100000  exit
0012b0  00100000  exit
0012b4  00100000  exit
0012b8  00100000  exit
0012bc  00100000  exit
0012c0  00100000  exit
0012c4  00100000  exit
0012c8  00100000  exit
0012cc  00100000  exit
0012d0  00100000  exit
0012d4  00100000  exit
0012d8  00100000  exit
0012dc  00100000  exit
0012e0  00100000  exit
0012e4  00100000  exit
0012e8  00100000  exit
0012ec  00100000  exit
0012f0  00100000  exit
0012f4  00100000  exit
0012f8  00100000  exit
0012fc  00100000  exit
001300  00100000  exit
001304  00100000  exit
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
