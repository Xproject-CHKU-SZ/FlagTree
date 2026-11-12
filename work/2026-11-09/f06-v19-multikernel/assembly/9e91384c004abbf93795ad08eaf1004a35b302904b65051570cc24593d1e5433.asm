; SHA-256 9e91384c004abbf93795ad08eaf1004a35b302904b65051570cc24593d1e5433
; P800 Cluster · XTDK LLVM 19 · 758 / 758 words decoded
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
0000dc  9f8e0efd  addli sp, sp, -384
0000e0  1f8f8e02  addli r30, sp, 320
0000e4  00520002  load_param_i r4, 0
0000e8  63014f00  loadli.w r2,  32(r30)
0000ec  e3403f00  loadli.w r1,  28(r30)
0000f0  e3414f00  loadli.w r3,  36(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  e74c1ffc  storeli.w r1, -308(r30)
000100  4ba24004  ble.s r1, r4, 2184
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  9f024000  addli r5, zero, 32
000110  9f040fff  addli r9, r30, -128
000114  2b0c4000  lui r24, 1024
000118  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00011c  9bb04000  slli r1, r1, 4
000120  e70c2ffc  storeli.w r2, -312(r30)
000124  2bf17f7f  lui r2, 522239
000128  674c1ffc  storeli.w r1, -316(r30)
00012c  ab700000  lui r1, 7
000130  9b1af1ff  ori r21, r2, 4095
000134  1b97f0ff  ori r14, r1, 4095
000138  abf0ff7f  lui r1, 524287
00013c  1b9af0ff  ori r20, r1, 4095
000140  9f200000  addli r1, zero, 2
000144  670ceffc  storeli.w r14, -320(r30)
000148  fe8100e0  vmmov mr3, r1
00014c  5b190000  j 200
000150  b3900800  float2bfloat.rn r1, r17
000154  33920600  float2bfloat.rn r4, r13
000158  6b510f01  load.d r[3:4], 16(r30)
00015c  6b530ff2  load.d r[7:8], -224(r30)
000160  73101ff8  store.h r1, -128(r30)
000164  b3100600  float2bfloat.rn r1, r12
000168  73124ff8  store.h r4, -124(r30)
00016c  33120e00  float2bfloat.rn r4, r28
000170  0b216110  add.ul r[3:4], r[3:4], r[7:8]
000174  73111ff8  store.h r1, -126(r30)
000178  b3100800  float2bfloat.rn r1, r16
00017c  73144ff8  store.h r4, -120(r30)
000180  33920700  float2bfloat.rn r4, r15
000184  73131ff8  store.h r1, -122(r30)
000188  b3100400  float2bfloat.rn r1, r8
00018c  73164ff8  store.h r4, -116(r30)
000190  63426ffe  loadli.w r4,  -204(r30)
000194  73151ff8  store.h r1, -118(r30)
000198  b3100900  float2bfloat.rn r1, r18
00019c  33120200  float2bfloat.rn r4, r4
0001a0  73171ff8  store.h r1, -114(r30)
0001a4  e3006ffe  loadli.w r1,  -208(r30)
0001a8  73184ff8  store.h r4, -112(r30)
0001ac  33120b00  float2bfloat.rn r4, r22
0001b0  b3900000  float2bfloat.rn r1, r1
0001b4  731a4ff8  store.h r4, -108(r30)
0001b8  33920c00  float2bfloat.rn r4, r25
0001bc  73191ff8  store.h r1, -110(r30)
0001c0  b3100500  float2bfloat.rn r1, r10
0001c4  731c4ff8  store.h r4, -104(r30)
0001c8  33920900  float2bfloat.rn r4, r19
0001cc  731b1ff8  store.h r1, -106(r30)
0001d0  b3900d00  float2bfloat.rn r1, r27
0001d4  731e4ff8  store.h r4, -100(r30)
0001d8  2b0200f0  lui r4, 983040
0001dc  731d1ff8  store.h r1, -102(r30)
0001e0  e3007ffe  loadli.w r1,  -200(r30)
0001e4  b3900000  float2bfloat.rn r1, r1
0001e8  731f1ff8  store.h r1, -98(r30)
0001ec  97904200  or r1, r5, r4
0001f0  00a00000  mfence { lm }
0001f4  ff309100  s_lm2gm r1, r9, 0(r[3:4])
0001f8  63425ffe  loadli.w r4,  -212(r30)
0001fc  e3009ffd  loadli.w r1,  -312(r30)
000200  00a00000  mfence { lm }
000204  0b121210  add.s r4, r4, r1
000208  e3409ffd  loadli.w r1,  -308(r30)
00020c  3f201200  blt.s r4, r1, 8
000210  5bef0000  j 1912
000214  e3404f00  loadli.w r1,  36(r30)
000218  63014f00  loadli.w r2,  32(r30)
00021c  ab0100f0  lui r3, 983040
000220  e7424ffe  storeli.w r4, -212(r30)
000224  9f130000  addli r7, zero, 1
000228  92300002  vadd.s.mz vr1{mr1}, zero, vr0
00022c  9f180000  addli r17, zero, 1
000230  12310002  vadd.s.mz vr2{mr1}, zero, vr0
000234  97913200  or r3, r5, r3
000238  7e8108e0  vmmov mr2, r17
00023c  8b101230  div.s r1, r4, r1
000240  2b0200f0  lui r4, 983040
000244  17924200  or r4, r5, r4
000248  8b902030  div.s r1, r1, r2
00024c  63418ffd  loadli.w r2,  -316(r30)
000250  9bb0a000  slli r1, r1, 10
000254  8b902010  add.s r1, r1, r2
000258  1f010008  addli r2, zero, 1024
00025c  0b912038  mod.s r2, r1, r2
000260  b3920028  sext_int2long r[6:7], r1
000264  17b57202  sll.d r[11:12], r[6:7], r7
000268  eb520f00  load.d r[6:7], 0(r30)
00026c  7330aff2  store.d r[11:12], -224(r30)
000270  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
000274  b3100128  sext_int2long r[2:3], r2
000278  97b07002  sll.d r[2:3], r[2:3], r7
00027c  eb538f00  load.d r[8:9], 8(r30)
000280  8ba01310  add.ul r[2:3], r[8:9], r[2:3]
000284  9f038ffe  addli r7, r30, -192
000288  ffa17200  l_gm2lm r3, r7, 0(r[6:7])
00028c  7fa29000  l_gm2lm r4, r9, 0(r[2:3])
000290  00a00000  mfence { lm }
000294  eb300ff4  load.hu r1, -192(r30)
000298  6b312ff4  load.hu r2, -190(r30)
00029c  eb314ff4  load.hu r3, -188(r30)
0002a0  6b326ff4  load.hu r4, -186(r30)
0002a4  eb328ff4  load.hu r5, -184(r30)
0002a8  6b33aff4  load.hu r6, -182(r30)
0002ac  eb33cff4  load.hu r7, -180(r30)
0002b0  6b34eff4  load.hu r8, -178(r30)
0002b4  eb340ff5  load.hu r9, -176(r30)
0002b8  6b352ff5  load.hu r10, -174(r30)
0002bc  eb354ff5  load.hu r11, -172(r30)
0002c0  6b366ff5  load.hu r12, -170(r30)
0002c4  eb368ff5  load.hu r13, -168(r30)
0002c8  6b37aff5  load.hu r14, -166(r30)
0002cc  eb37cff5  load.hu r15, -164(r30)
0002d0  6b38eff5  load.hu r16, -162(r30)
0002d4  b3900018  bfloat2float.rn r1, r1
0002d8  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0002dc  b3100118  bfloat2float.rn r1, r2
0002e0  1f410000  addli r2, zero, 4
0002e4  7e0001e0  vmmov mr0, r2
0002e8  1f011000  addli r2, zero, 8
0002ec  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0002f0  b3900118  bfloat2float.rn r1, r3
0002f4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0002f8  b3100218  bfloat2float.rn r1, r4
0002fc  7e0001e0  vmmov mr0, r2
000300  1f012000  addli r2, zero, 16
000304  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000308  b3900218  bfloat2float.rn r1, r5
00030c  7e0001e0  vmmov mr0, r2
000310  1f014000  addli r2, zero, 32
000314  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000318  b3100318  bfloat2float.rn r1, r6
00031c  7e0001e0  vmmov mr0, r2
000320  1f018000  addli r2, zero, 64
000324  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000328  b3900318  bfloat2float.rn r1, r7
00032c  7e0001e0  vmmov mr0, r2
000330  1f010001  addli r2, zero, 128
000334  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000338  b3100418  bfloat2float.rn r1, r8
00033c  7e0001e0  vmmov mr0, r2
000340  1f010002  addli r2, zero, 256
000344  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000348  b3900418  bfloat2float.rn r1, r9
00034c  7e0001e0  vmmov mr0, r2
000350  1f010004  addli r2, zero, 512
000354  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000358  b3100518  bfloat2float.rn r1, r10
00035c  7e0001e0  vmmov mr0, r2
000360  1f010008  addli r2, zero, 1024
000364  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000368  b3900518  bfloat2float.rn r1, r11
00036c  7e0001e0  vmmov mr0, r2
000370  1f010010  addli r2, zero, 2048
000374  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000378  b3100618  bfloat2float.rn r1, r12
00037c  7e0001e0  vmmov mr0, r2
000380  1f010020  addli r2, zero, 4096
000384  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000388  b3900618  bfloat2float.rn r1, r13
00038c  7e0001e0  vmmov mr0, r2
000390  1f010040  addli r2, zero, 8192
000394  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000398  b3100718  bfloat2float.rn r1, r14
00039c  7e0001e0  vmmov mr0, r2
0003a0  2b410000  lui r2, 4
0003a4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0003a8  b3900718  bfloat2float.rn r1, r15
0003ac  7e0001e0  vmmov mr0, r2
0003b0  2b810000  lui r2, 8
0003b4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0003b8  b3100818  bfloat2float.rn r1, r16
0003bc  7e0001e0  vmmov mr0, r2
0003c0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0003c4  eb300ff8  load.hu r1, -128(r30)
0003c8  6b312ff8  load.hu r2, -126(r30)
0003cc  eb314ff8  load.hu r3, -124(r30)
0003d0  6b326ff8  load.hu r4, -122(r30)
0003d4  eb328ff8  load.hu r5, -120(r30)
0003d8  6b33aff8  load.hu r6, -118(r30)
0003dc  eb33cff8  load.hu r7, -116(r30)
0003e0  6b34eff8  load.hu r8, -114(r30)
0003e4  eb340ff9  load.hu r9, -112(r30)
0003e8  6b352ff9  load.hu r10, -110(r30)
0003ec  eb354ff9  load.hu r11, -108(r30)
0003f0  6b366ff9  load.hu r12, -106(r30)
0003f4  eb368ff9  load.hu r13, -104(r30)
0003f8  6b37aff9  load.hu r14, -102(r30)
0003fc  eb37cff9  load.hu r15, -100(r30)
000400  6b38eff9  load.hu r16, -98(r30)
000404  b3900018  bfloat2float.rn r1, r1
000408  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00040c  b3100118  bfloat2float.rn r1, r2
000410  1f410000  addli r2, zero, 4
000414  7e0101e0  vmmov mr2, r2
000418  1f011000  addli r2, zero, 8
00041c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
000420  b3900118  bfloat2float.rn r1, r3
000424  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000428  b3100218  bfloat2float.rn r1, r4
00042c  7e0101e0  vmmov mr2, r2
000430  1f012000  addli r2, zero, 16
000434  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000438  b3900218  bfloat2float.rn r1, r5
00043c  7e0101e0  vmmov mr2, r2
000440  1f014000  addli r2, zero, 32
000444  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000448  b3100318  bfloat2float.rn r1, r6
00044c  7e0101e0  vmmov mr2, r2
000450  1f018000  addli r2, zero, 64
000454  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000458  b3900318  bfloat2float.rn r1, r7
00045c  7e0101e0  vmmov mr2, r2
000460  1f010001  addli r2, zero, 128
000464  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000468  b3100418  bfloat2float.rn r1, r8
00046c  7e0101e0  vmmov mr2, r2
000470  1f010002  addli r2, zero, 256
000474  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000478  b3900418  bfloat2float.rn r1, r9
00047c  7e0101e0  vmmov mr2, r2
000480  1f010004  addli r2, zero, 512
000484  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000488  b3100518  bfloat2float.rn r1, r10
00048c  7e0101e0  vmmov mr2, r2
000490  1f010008  addli r2, zero, 1024
000494  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000498  b3900518  bfloat2float.rn r1, r11
00049c  7e0101e0  vmmov mr2, r2
0004a0  1f010010  addli r2, zero, 2048
0004a4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004a8  b3100618  bfloat2float.rn r1, r12
0004ac  7e0101e0  vmmov mr2, r2
0004b0  1f010020  addli r2, zero, 4096
0004b4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004b8  b3900618  bfloat2float.rn r1, r13
0004bc  7e0101e0  vmmov mr2, r2
0004c0  1f010040  addli r2, zero, 8192
0004c4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004c8  b3100718  bfloat2float.rn r1, r14
0004cc  7e0101e0  vmmov mr2, r2
0004d0  2b410000  lui r2, 4
0004d4  2b07807f  lui r14, 522240
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
000500  63488fff  loadli.w r16,  -60(r30)
000504  e3009fff  loadli.w r1,  -56(r30)
000508  63439fff  loadli.w r6,  -52(r30)
00050c  6304afff  loadli.w r8,  -48(r30)
000510  e347afff  loadli.w r15,  -44(r30)
000514  e303bfff  loadli.w r7,  -40(r30)
000518  e342bfff  loadli.w r5,  -36(r30)
00051c  630dcfff  loadli.w r26,  -32(r30)
000520  e34bcfff  loadli.w r23,  -28(r30)
000524  6305dfff  loadli.w r10,  -24(r30)
000528  e34ddfff  loadli.w r27,  -20(r30)
00052c  e30cefff  loadli.w r25,  -16(r30)
000530  e349efff  loadli.w r19,  -12(r30)
000534  6302ffff  loadli.w r4,  -8(r30)
000538  97014601  and r3, r12, r20
00053c  e7434ffe  storeli.w r4, -196(r30)
000540  e345ffff  loadli.w r11,  -4(r30)
000544  13013704  setlt.u r2, r14, r3
000548  3b300100  bneq r2, zero, 12
00054c  9f080600  addli r17, r12, 0
000550  5b010000  j 8
000554  97188601  or r17, r12, r24
000558  17014801  and r2, r16, r20
00055c  13022704  setlt.u r4, r14, r2
000560  3b300200  bneq r4, zero, 12
000564  e7410fff  storeli.w r16, -228(r30)
000568  db010000  j 12
00056c  17128801  or r4, r16, r24
000570  e7414ffe  storeli.w r4, -228(r30)
000574  97864001  and r13, r1, r20
000578  1302d704  setlt.u r4, r14, r13
00057c  3b300200  bneq r4, zero, 12
000580  e7011ffe  storeli.w r1, -232(r30)
000584  db010000  j 12
000588  17928001  or r4, r1, r24
00058c  e7014ffe  storeli.w r4, -232(r30)
000590  97044301  and r9, r6, r20
000594  13029704  setlt.u r4, r14, r9
000598  3b300200  bneq r4, zero, 12
00059c  67416ffe  storeli.w r6, -236(r30)
0005a0  db010000  j 12
0005a4  17128301  or r4, r6, r24
0005a8  67414ffe  storeli.w r4, -236(r30)
0005ac  170b4401  and r22, r8, r20
0005b0  13026705  setlt.u r4, r14, r22
0005b4  3b300200  bneq r4, zero, 12
0005b8  1f0e0400  addli r28, r8, 0
0005bc  5b010000  j 8
0005c0  171e8401  or r28, r8, r24
0005c4  17894701  and r18, r15, r20
0005c8  670dfffc  storeli.w r15, -304(r30)
0005cc  13022705  setlt.u r4, r14, r18
0005d0  3b300200  bneq r4, zero, 12
0005d4  6701fffe  storeli.w r15, -240(r30)
0005d8  db010000  j 12
0005dc  17928701  or r4, r15, r24
0005e0  67014ffe  storeli.w r4, -240(r30)
0005e4  97874301  and r15, r7, r20
0005e8  674d7ffc  storeli.w r7, -300(r30)
0005ec  1302f704  setlt.u r4, r14, r15
0005f0  3b300200  bneq r4, zero, 12
0005f4  e7407ffe  storeli.w r7, -244(r30)
0005f8  db010000  j 12
0005fc  17928301  or r4, r7, r24
000600  e7404ffe  storeli.w r4, -244(r30)
000604  17824201  and r4, r5, r20
000608  e70d5ffc  storeli.w r5, -296(r30)
00060c  670f4ffc  storeli.w r4, -272(r30)
000610  13024704  setlt.u r4, r14, r4
000614  3b300200  bneq r4, zero, 12
000618  e7005ffe  storeli.w r5, -248(r30)
00061c  db010000  j 12
000620  17928201  or r4, r5, r24
000624  e7004ffe  storeli.w r4, -248(r30)
000628  17024d01  and r4, r26, r20
00062c  e74daffd  storeli.w r26, -292(r30)
000630  674f4ffc  storeli.w r4, -268(r30)
000634  13024704  setlt.u r4, r14, r4
000638  3b300200  bneq r4, zero, 12
00063c  6743afff  storeli.w r26, -204(r30)
000640  db010000  j 12
000644  17128d01  or r4, r26, r24
000648  67434ffe  storeli.w r4, -204(r30)
00064c  17824b01  and r4, r23, r20
000650  670e7ffd  storeli.w r23, -288(r30)
000654  1f0d0200  addli r26, r4, 0
000658  13024704  setlt.u r4, r14, r4
00065c  3b300200  bneq r4, zero, 12
000660  67037fff  storeli.w r23, -208(r30)
000664  db010000  j 12
000668  17928b01  or r4, r23, r24
00066c  67034ffe  storeli.w r4, -208(r30)
000670  17024501  and r4, r10, r20
000674  9f0b0200  addli r23, r4, 0
000678  13024704  setlt.u r4, r14, r4
00067c  3b300200  bneq r4, zero, 12
000680  9f020500  addli r5, r10, 0
000684  5b010000  j 8
000688  97128501  or r5, r10, r24
00068c  17824d01  and r4, r27, r20
000690  674eaffc  storeli.w r10, -284(r30)
000694  e70f4ffc  storeli.w r4, -264(r30)
000698  13024704  setlt.u r4, r14, r4
00069c  3b300200  bneq r4, zero, 12
0006a0  9f830d00  addli r7, r27, 0
0006a4  5b010000  j 8
0006a8  97938d01  or r7, r27, r24
0006ac  17824c01  and r4, r25, r20
0006b0  1f850d00  addli r10, r27, 0
0006b4  9f8d0800  addli r27, r17, 0
0006b8  e70e9ffd  storeli.w r25, -280(r30)
0006bc  e74f4ffc  storeli.w r4, -260(r30)
0006c0  13024704  setlt.u r4, r14, r4
0006c4  37200200  beq r4, zero, 8
0006c8  979c8c01  or r25, r25, r24
0006cc  17824901  and r4, r19, r20
0006d0  9f880500  addli r17, r11, 0
0006d4  ab054000  lui r11, 1024
0006d8  e74e3ffd  storeli.w r19, -276(r30)
0006dc  67004ffe  storeli.w r4, -256(r30)
0006e0  13024704  setlt.u r4, r14, r4
0006e4  37200200  beq r4, zero, 8
0006e8  97998901  or r19, r19, r24
0006ec  634c7ffe  loadli.w r24,  -196(r30)
0006f0  17024c01  and r4, r24, r20
0006f4  67404ffe  storeli.w r4, -252(r30)
0006f8  13024704  setlt.u r4, r14, r4
0006fc  37200200  beq r4, zero, 8
000700  171cbc00  or r24, r24, r11
000704  17824801  and r4, r17, r20
000708  13074704  setlt.u r14, r14, r4
00070c  3b300700  bneq r14, zero, 12
000710  e7031fff  storeli.w r17, -200(r30)
000714  db010000  j 12
000718  9795b800  or r11, r17, r11
00071c  e703bffe  storeli.w r11, -200(r30)
000720  93813a04  setlt.u r3, r21, r3
000724  63078ffd  loadli.w r14,  -320(r30)
000728  9f850800  addli r11, r17, 0
00072c  9f880d00  addli r17, r27, 0
000730  3bf00100  bneq r3, zero, 28
000734  9b410601  srli r3, r12, 16
000738  9b811100  andi r3, r3, 1
00073c  8b113610  add.s r3, r12, r3
000740  2b06ffff  lui r12, 1048560
000744  8b91e110  add.s r3, r3, r14
000748  9788c100  and r17, r3, r12
00074c  13812a04  setlt.u r2, r21, r2
000750  63463ffe  loadli.w r12,  -228(r30)
000754  ab01ffff  lui r3, 1048560
000758  9f8d0900  addli r27, r19, 0
00075c  3b600100  bneq r2, zero, 24
000760  1b410801  srli r2, r16, 16
000764  1b011100  andi r2, r2, 1
000768  0b112810  add.s r2, r16, r2
00076c  0b11e110  add.s r2, r2, r14
000770  17063100  and r12, r2, r3
000774  1381da04  setlt.u r2, r21, r13
000778  e3063ffe  loadli.w r13,  -232(r30)
00077c  9f090c00  addli r19, r24, 0
000780  3b600100  bneq r2, zero, 24
000784  1bc10001  srli r2, r1, 16
000788  1b011100  andi r2, r2, 1
00078c  8b902010  add.s r1, r1, r2
000790  8b90e010  add.s r1, r1, r14
000794  97863000  and r13, r1, r3
000798  93809a04  setlt.u r1, r21, r9
00079c  63482ffe  loadli.w r16,  -236(r30)
0007a0  3be00000  bneq r1, zero, 24
0007a4  9b400301  srli r1, r6, 16
0007a8  9b801000  andi r1, r1, 1
0007ac  8b101310  add.s r1, r6, r1
0007b0  8b90e010  add.s r1, r1, r14
0007b4  17883000  and r16, r1, r3
0007b8  93806a05  setlt.u r1, r21, r22
0007bc  9f040fff  addli r9, r30, -128
0007c0  3be00000  bneq r1, zero, 24
0007c4  9b400401  srli r1, r8, 16
0007c8  9b801000  andi r1, r1, 1
0007cc  8b101410  add.s r1, r8, r1
0007d0  8b90e010  add.s r1, r1, r14
0007d4  178e3000  and r28, r1, r3
0007d8  93802a05  setlt.u r1, r21, r18
0007dc  63042ffe  loadli.w r8,  -240(r30)
0007e0  1f8b0200  addli r22, r5, 0
0007e4  3bf00000  bneq r1, zero, 28
0007e8  6301affd  loadli.w r2,  -304(r30)
0007ec  9b400101  srli r1, r2, 16
0007f0  9b801000  andi r1, r1, 1
0007f4  8b101110  add.s r1, r2, r1
0007f8  8b90e010  add.s r1, r1, r14
0007fc  17843000  and r8, r1, r3
000800  9380fa04  setlt.u r1, r21, r15
000804  e3471ffe  loadli.w r15,  -244(r30)
000808  63091ffe  loadli.w r18,  -248(r30)
00080c  3bf00000  bneq r1, zero, 28
000810  6341affd  loadli.w r2,  -300(r30)
000814  9b400101  srli r1, r2, 16
000818  9b801000  andi r1, r1, 1
00081c  8b101110  add.s r1, r2, r1
000820  8b90e010  add.s r1, r1, r14
000824  97873000  and r15, r1, r3
000828  e300effd  loadli.w r1,  -272(r30)
00082c  93801a04  setlt.u r1, r21, r1
000830  3bf00000  bneq r1, zero, 28
000834  6301bffd  loadli.w r2,  -296(r30)
000838  9b400101  srli r1, r2, 16
00083c  9b801000  andi r1, r1, 1
000840  8b101110  add.s r1, r2, r1
000844  8b90e010  add.s r1, r1, r14
000848  17893000  and r18, r1, r3
00084c  e340effd  loadli.w r1,  -268(r30)
000850  9f024000  addli r5, zero, 32
000854  93801a04  setlt.u r1, r21, r1
000858  b7930000  beq r1, zero, 228
00085c  9380aa05  setlt.u r1, r21, r26
000860  37840000  beq r1, zero, 256
000864  93807a05  setlt.u r1, r21, r23
000868  3bf00000  bneq r1, zero, 28
00086c  6341cffd  loadli.w r2,  -284(r30)
000870  9b400101  srli r1, r2, 16
000874  9b801000  andi r1, r1, 1
000878  8b101110  add.s r1, r2, r1
00087c  8b90e010  add.s r1, r1, r14
000880  178b3000  and r22, r1, r3
000884  e300fffd  loadli.w r1,  -264(r30)
000888  93801a04  setlt.u r1, r21, r1
00088c  3be00000  bneq r1, zero, 24
000890  9b400501  srli r1, r10, 16
000894  9b801000  andi r1, r1, 1
000898  8b101510  add.s r1, r10, r1
00089c  8b90e010  add.s r1, r1, r14
0008a0  97833000  and r7, r1, r3
0008a4  e340fffd  loadli.w r1,  -260(r30)
0008a8  93801a04  setlt.u r1, r21, r1
0008ac  3bf00000  bneq r1, zero, 28
0008b0  6301dffd  loadli.w r2,  -280(r30)
0008b4  9b400101  srli r1, r2, 16
0008b8  9b801000  andi r1, r1, 1
0008bc  8b101110  add.s r1, r2, r1
0008c0  8b90e010  add.s r1, r1, r14
0008c4  978c3000  and r25, r1, r3
0008c8  e3000ffe  loadli.w r1,  -256(r30)
0008cc  93801a04  setlt.u r1, r21, r1
0008d0  3bf00000  bneq r1, zero, 28
0008d4  6341dffd  loadli.w r2,  -276(r30)
0008d8  9b400101  srli r1, r2, 16
0008dc  9b801000  andi r1, r1, 1
0008e0  8b101110  add.s r1, r2, r1
0008e4  8b90e010  add.s r1, r1, r14
0008e8  978d3000  and r27, r1, r3
0008ec  e3400ffe  loadli.w r1,  -252(r30)
0008f0  93801a04  setlt.u r1, r21, r1
0008f4  3bf00000  bneq r1, zero, 28
0008f8  63417ffe  loadli.w r2,  -196(r30)
0008fc  9b400101  srli r1, r2, 16
000900  9b801000  andi r1, r1, 1
000904  8b101110  add.s r1, r2, r1
000908  8b90e010  add.s r1, r1, r14
00090c  97893000  and r19, r1, r3
000910  93804a04  setlt.u r1, r21, r4
000914  1f850300  addli r10, r7, 0
000918  2b0c4000  lui r24, 1024
00091c  bbd000fc  bneq r1, zero, -1996
000920  9bc00501  srli r1, r11, 16
000924  9b801000  andi r1, r1, 1
000928  8b901510  add.s r1, r11, r1
00092c  8b90e010  add.s r1, r1, r14
000930  97803000  and r1, r1, r3
000934  e7031ffe  storeli.w r1, -200(r30)
000938  5b03ffff  j -2024
00093c  6341bffd  loadli.w r2,  -292(r30)
000940  9b400101  srli r1, r2, 16
000944  9b801000  andi r1, r1, 1
000948  8b101110  add.s r1, r2, r1
00094c  8b90e010  add.s r1, r1, r14
000950  97803000  and r1, r1, r3
000954  67431ffe  storeli.w r1, -204(r30)
000958  9380aa05  setlt.u r1, r21, r26
00095c  3bac00fe  bneq r1, zero, -248
000960  6301cffd  loadli.w r2,  -288(r30)
000964  9b400101  srli r1, r2, 16
000968  9b801000  andi r1, r1, 1
00096c  8b101110  add.s r1, r2, r1
000970  8b90e010  add.s r1, r1, r14
000974  97803000  and r1, r1, r3
000978  67031ffe  storeli.w r1, -208(r30)
00097c  93807a05  setlt.u r1, r21, r23
000980  b7bb00fe  beq r1, zero, -276
000984  5be0ffff  j -256
000988  9f0e8ffd  addli sp, r30, -320
00098c  9f8e8e02  addli sp, sp, 320
000990  00a00300  mfence { lm, sm, gm }
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
