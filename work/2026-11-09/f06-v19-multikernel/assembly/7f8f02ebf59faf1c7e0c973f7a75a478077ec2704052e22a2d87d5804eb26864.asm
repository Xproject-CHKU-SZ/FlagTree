; SHA-256 7f8f02ebf59faf1c7e0c973f7a75a478077ec2704052e22a2d87d5804eb26864
; P800 Cluster · XTDK LLVM 19 · 1751 / 1751 words decoded
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
0000fc  674b1ffc  storeli.w r1, -332(r30)
000100  4bb0400c  ble.s r1, r4, 6156
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  9f024000  addli r5, zero, 32
000110  9f040fff  addli r9, r30, -128
000114  2b09807f  lui r18, 522240
000118  ab094000  lui r19, 1024
00011c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000120  9bb04000  slli r1, r1, 4
000124  670b2ffc  storeli.w r2, -336(r30)
000128  2bf17f7f  lui r2, 522239
00012c  e74a1ffc  storeli.w r1, -340(r30)
000130  ab700000  lui r1, 7
000134  9b1af1ff  ori r21, r2, 4095
000138  2b414c3f  lui r2, 259268
00013c  1b95f0ff  ori r10, r1, 4095
000140  abf0ff7f  lui r1, 524287
000144  1b9af0ff  ori r20, r1, 4095
000148  ab20373d  lui r1, 250738
00014c  e743affe  storeli.w r10, -196(r30)
000150  9b913071  ori r3, r1, 1811
000154  9b10a122  ori r1, r2, 554
000158  e7031ffe  storeli.w r1, -200(r30)
00015c  9f200000  addli r1, zero, 2
000160  e70a3ffc  storeli.w r3, -344(r30)
000164  fe8100e0  vmmov mr3, r1
000168  db1a0000  j 212
00016c  6b510f01  load.d r[3:4], 16(r30)
000170  6b520ff1  load.d r[5:6], -240(r30)
000174  b3900300  float2bfloat.rn r1, r7
000178  73101ff8  store.h r1, -128(r30)
00017c  b3100600  float2bfloat.rn r1, r12
000180  0b214110  add.ul r[3:4], r[3:4], r[5:6]
000184  33920600  float2bfloat.rn r4, r13
000188  9f024000  addli r5, zero, 32
00018c  73111ff8  store.h r1, -126(r30)
000190  e3406ffe  loadli.w r1,  -204(r30)
000194  73124ff8  store.h r4, -124(r30)
000198  63026ffe  loadli.w r4,  -208(r30)
00019c  b3900000  float2bfloat.rn r1, r1
0001a0  33120200  float2bfloat.rn r4, r4
0001a4  73131ff8  store.h r1, -122(r30)
0001a8  e3405ffe  loadli.w r1,  -212(r30)
0001ac  73144ff8  store.h r4, -120(r30)
0001b0  63025ffe  loadli.w r4,  -216(r30)
0001b4  b3900000  float2bfloat.rn r1, r1
0001b8  33120200  float2bfloat.rn r4, r4
0001bc  73151ff8  store.h r1, -118(r30)
0001c0  b3100700  float2bfloat.rn r1, r14
0001c4  73164ff8  store.h r4, -116(r30)
0001c8  33120800  float2bfloat.rn r4, r16
0001cc  73171ff8  store.h r1, -114(r30)
0001d0  b3900800  float2bfloat.rn r1, r17
0001d4  73184ff8  store.h r4, -112(r30)
0001d8  33920500  float2bfloat.rn r4, r11
0001dc  73191ff8  store.h r1, -110(r30)
0001e0  b3100900  float2bfloat.rn r1, r18
0001e4  2b09807f  lui r18, 522240
0001e8  731a4ff8  store.h r4, -108(r30)
0001ec  33920700  float2bfloat.rn r4, r15
0001f0  731b1ff8  store.h r1, -106(r30)
0001f4  b3100300  float2bfloat.rn r1, r6
0001f8  731c4ff8  store.h r4, -104(r30)
0001fc  33120400  float2bfloat.rn r4, r8
000200  731d1ff8  store.h r1, -102(r30)
000204  b3900d00  float2bfloat.rn r1, r27
000208  731e4ff8  store.h r4, -100(r30)
00020c  2b0200f0  lui r4, 983040
000210  731f1ff8  store.h r1, -98(r30)
000214  97904200  or r1, r5, r4
000218  00a00000  mfence { lm }
00021c  63023ffe  loadli.w r4,  -232(r30)
000220  ff309100  s_lm2gm r1, r9, 0(r[3:4])
000224  e3006ffd  loadli.w r1,  -336(r30)
000228  00a00000  mfence { lm }
00022c  0b121210  add.s r4, r4, r1
000230  e3406ffd  loadli.w r1,  -332(r30)
000234  3f201200  blt.s r4, r1, 8
000238  dbda0200  j 5844
00023c  e3404f00  loadli.w r1,  36(r30)
000240  63014f00  loadli.w r2,  32(r30)
000244  ab0100f0  lui r3, 983040
000248  e7014ffe  storeli.w r4, -232(r30)
00024c  9f130000  addli r7, zero, 1
000250  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000254  9f180000  addli r17, zero, 1
000258  12310002  vadd.s.mz vr2{mr1}, zero, vr0
00025c  97913200  or r3, r5, r3
000260  7e8108e0  vmmov mr2, r17
000264  8b101230  div.s r1, r4, r1
000268  2b0200f0  lui r4, 983040
00026c  17924200  or r4, r5, r4
000270  8b902030  div.s r1, r1, r2
000274  63415ffd  loadli.w r2,  -340(r30)
000278  9bb0a000  slli r1, r1, 10
00027c  8b902010  add.s r1, r1, r2
000280  1f010010  addli r2, zero, 2048
000284  0b912038  mod.s r2, r1, r2
000288  b3920028  sext_int2long r[6:7], r1
00028c  17b57202  sll.d r[11:12], r[6:7], r7
000290  eb520f00  load.d r[6:7], 0(r30)
000294  7338aff0  store.d r[11:12], -240(r30)
000298  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
00029c  b3100128  sext_int2long r[2:3], r2
0002a0  97b07002  sll.d r[2:3], r[2:3], r7
0002a4  eb538f00  load.d r[8:9], 8(r30)
0002a8  8ba01310  add.ul r[2:3], r[8:9], r[2:3]
0002ac  9f038ffe  addli r7, r30, -192
0002b0  ffa17200  l_gm2lm r3, r7, 0(r[6:7])
0002b4  7fa29000  l_gm2lm r4, r9, 0(r[2:3])
0002b8  00a00000  mfence { lm }
0002bc  eb300ff4  load.hu r1, -192(r30)
0002c0  6b312ff4  load.hu r2, -190(r30)
0002c4  eb314ff4  load.hu r3, -188(r30)
0002c8  6b326ff4  load.hu r4, -186(r30)
0002cc  eb328ff4  load.hu r5, -184(r30)
0002d0  6b33aff4  load.hu r6, -182(r30)
0002d4  eb33cff4  load.hu r7, -180(r30)
0002d8  6b34eff4  load.hu r8, -178(r30)
0002dc  eb340ff5  load.hu r9, -176(r30)
0002e0  6b352ff5  load.hu r10, -174(r30)
0002e4  eb354ff5  load.hu r11, -172(r30)
0002e8  6b366ff5  load.hu r12, -170(r30)
0002ec  eb368ff5  load.hu r13, -168(r30)
0002f0  6b37aff5  load.hu r14, -166(r30)
0002f4  eb37cff5  load.hu r15, -164(r30)
0002f8  6b38eff5  load.hu r16, -162(r30)
0002fc  b3900018  bfloat2float.rn r1, r1
000300  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000304  b3100118  bfloat2float.rn r1, r2
000308  1f410000  addli r2, zero, 4
00030c  7e0001e0  vmmov mr0, r2
000310  1f011000  addli r2, zero, 8
000314  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
000318  b3900118  bfloat2float.rn r1, r3
00031c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000320  b3100218  bfloat2float.rn r1, r4
000324  7e0001e0  vmmov mr0, r2
000328  1f012000  addli r2, zero, 16
00032c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000330  b3900218  bfloat2float.rn r1, r5
000334  7e0001e0  vmmov mr0, r2
000338  1f014000  addli r2, zero, 32
00033c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000340  b3100318  bfloat2float.rn r1, r6
000344  7e0001e0  vmmov mr0, r2
000348  1f018000  addli r2, zero, 64
00034c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000350  b3900318  bfloat2float.rn r1, r7
000354  7e0001e0  vmmov mr0, r2
000358  1f010001  addli r2, zero, 128
00035c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000360  b3100418  bfloat2float.rn r1, r8
000364  7e0001e0  vmmov mr0, r2
000368  1f010002  addli r2, zero, 256
00036c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000370  b3900418  bfloat2float.rn r1, r9
000374  7e0001e0  vmmov mr0, r2
000378  1f010004  addli r2, zero, 512
00037c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000380  b3100518  bfloat2float.rn r1, r10
000384  7e0001e0  vmmov mr0, r2
000388  1f010008  addli r2, zero, 1024
00038c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000390  b3900518  bfloat2float.rn r1, r11
000394  7e0001e0  vmmov mr0, r2
000398  1f010010  addli r2, zero, 2048
00039c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0003a0  b3100618  bfloat2float.rn r1, r12
0003a4  7e0001e0  vmmov mr0, r2
0003a8  1f010020  addli r2, zero, 4096
0003ac  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0003b0  b3900618  bfloat2float.rn r1, r13
0003b4  7e0001e0  vmmov mr0, r2
0003b8  1f010040  addli r2, zero, 8192
0003bc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0003c0  b3100718  bfloat2float.rn r1, r14
0003c4  7e0001e0  vmmov mr0, r2
0003c8  2b410000  lui r2, 4
0003cc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0003d0  b3900718  bfloat2float.rn r1, r15
0003d4  7e0001e0  vmmov mr0, r2
0003d8  2b810000  lui r2, 8
0003dc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0003e0  b3100818  bfloat2float.rn r1, r16
0003e4  7e0001e0  vmmov mr0, r2
0003e8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0003ec  eb300ff8  load.hu r1, -128(r30)
0003f0  6b312ff8  load.hu r2, -126(r30)
0003f4  eb314ff8  load.hu r3, -124(r30)
0003f8  6b326ff8  load.hu r4, -122(r30)
0003fc  eb328ff8  load.hu r5, -120(r30)
000400  6b33aff8  load.hu r6, -118(r30)
000404  eb33cff8  load.hu r7, -116(r30)
000408  6b34eff8  load.hu r8, -114(r30)
00040c  eb340ff9  load.hu r9, -112(r30)
000410  6b352ff9  load.hu r10, -110(r30)
000414  eb354ff9  load.hu r11, -108(r30)
000418  6b366ff9  load.hu r12, -106(r30)
00041c  eb368ff9  load.hu r13, -104(r30)
000420  6b37aff9  load.hu r14, -102(r30)
000424  eb37cff9  load.hu r15, -100(r30)
000428  6b38eff9  load.hu r16, -98(r30)
00042c  b3900018  bfloat2float.rn r1, r1
000430  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000434  b3100118  bfloat2float.rn r1, r2
000438  1f410000  addli r2, zero, 4
00043c  7e0101e0  vmmov mr2, r2
000440  1f011000  addli r2, zero, 8
000444  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
000448  b3900118  bfloat2float.rn r1, r3
00044c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000450  b3100218  bfloat2float.rn r1, r4
000454  7e0101e0  vmmov mr2, r2
000458  1f012000  addli r2, zero, 16
00045c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000460  b3900218  bfloat2float.rn r1, r5
000464  7e0101e0  vmmov mr2, r2
000468  1f014000  addli r2, zero, 32
00046c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000470  b3100318  bfloat2float.rn r1, r6
000474  7e0101e0  vmmov mr2, r2
000478  1f018000  addli r2, zero, 64
00047c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000480  b3900318  bfloat2float.rn r1, r7
000484  7e0101e0  vmmov mr2, r2
000488  1f010001  addli r2, zero, 128
00048c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000490  b3100418  bfloat2float.rn r1, r8
000494  7e0101e0  vmmov mr2, r2
000498  1f010002  addli r2, zero, 256
00049c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004a0  b3900418  bfloat2float.rn r1, r9
0004a4  7e0101e0  vmmov mr2, r2
0004a8  1f010004  addli r2, zero, 512
0004ac  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004b0  b3100518  bfloat2float.rn r1, r10
0004b4  7e0101e0  vmmov mr2, r2
0004b8  1f010008  addli r2, zero, 1024
0004bc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004c0  b3900518  bfloat2float.rn r1, r11
0004c4  7e0101e0  vmmov mr2, r2
0004c8  1f010010  addli r2, zero, 2048
0004cc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004d0  b3100618  bfloat2float.rn r1, r12
0004d4  7e0101e0  vmmov mr2, r2
0004d8  1f010020  addli r2, zero, 4096
0004dc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004e0  b3900618  bfloat2float.rn r1, r13
0004e4  7e0101e0  vmmov mr2, r2
0004e8  1f010040  addli r2, zero, 8192
0004ec  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004f0  b3100718  bfloat2float.rn r1, r14
0004f4  7e0101e0  vmmov mr2, r2
0004f8  2b410000  lui r2, 4
0004fc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000500  b3900718  bfloat2float.rn r1, r15
000504  7e0101e0  vmmov mr2, r2
000508  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00050c  b3100818  bfloat2float.rn r1, r16
000510  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000514  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000518  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
00051c  00a00000  mfence { lm }
000520  e30d8fff  loadli.w r27,  -64(r30)
000524  e3488fff  loadli.w r17,  -60(r30)
000528  63089fff  loadli.w r16,  -56(r30)
00052c  e3479fff  loadli.w r15,  -52(r30)
000530  6307afff  loadli.w r14,  -48(r30)
000534  e346afff  loadli.w r13,  -44(r30)
000538  e30bbfff  loadli.w r23,  -40(r30)
00053c  e344bfff  loadli.w r9,  -36(r30)
000540  630ccfff  loadli.w r24,  -32(r30)
000544  634bcfff  loadli.w r22,  -28(r30)
000548  6306dfff  loadli.w r12,  -24(r30)
00054c  6341dfff  loadli.w r2,  -20(r30)
000550  17854d01  and r10, r27, r20
000554  e7412ffe  storeli.w r2, -228(r30)
000558  e301efff  loadli.w r3,  -16(r30)
00055c  e345efff  loadli.w r11,  -12(r30)
000560  630dffff  loadli.w r26,  -8(r30)
000564  e342ffff  loadli.w r5,  -4(r30)
000568  9300a904  setlt.u r1, r18, r10
00056c  3bb00000  bneq r1, zero, 12
000570  1f810d00  addli r2, r27, 0
000574  5b010000  j 8
000578  17913d01  or r2, r27, r19
00057c  17844801  and r8, r17, r20
000580  e7022ffe  storeli.w r2, -216(r30)
000584  93008904  setlt.u r1, r18, r8
000588  3bb00000  bneq r1, zero, 12
00058c  1f810800  addli r2, r17, 0
000590  5b010000  j 8
000594  17913801  or r2, r17, r19
000598  97034801  and r7, r16, r20
00059c  67023ffe  storeli.w r3, -224(r30)
0005a0  93007904  setlt.u r1, r18, r7
0005a4  3bb00000  bneq r1, zero, 12
0005a8  9f010800  addli r3, r16, 0
0005ac  5b010000  j 8
0005b0  97113801  or r3, r16, r19
0005b4  17834701  and r6, r15, r20
0005b8  93006904  setlt.u r1, r18, r6
0005bc  3bb00000  bneq r1, zero, 12
0005c0  e70ffffc  storeli.w r15, -264(r30)
0005c4  db010000  j 12
0005c8  97903701  or r1, r15, r19
0005cc  e70f1ffc  storeli.w r1, -264(r30)
0005d0  17024701  and r4, r14, r20
0005d4  e7422ffe  storeli.w r2, -212(r30)
0005d8  93004904  setlt.u r1, r18, r4
0005dc  3bb00000  bneq r1, zero, 12
0005e0  e74feffc  storeli.w r14, -260(r30)
0005e4  db010000  j 12
0005e8  97103701  or r1, r14, r19
0005ec  e74f1ffc  storeli.w r1, -260(r30)
0005f0  17814601  and r2, r13, r20
0005f4  67033ffe  storeli.w r3, -208(r30)
0005f8  93002904  setlt.u r1, r18, r2
0005fc  3bb00000  bneq r1, zero, 12
000600  6743dffe  storeli.w r13, -204(r30)
000604  db010000  j 12
000608  97903601  or r1, r13, r19
00060c  67431ffe  storeli.w r1, -204(r30)
000610  97804b01  and r1, r23, r20
000614  2b0e4000  lui r28, 1024
000618  67425ffe  storeli.w r5, -220(r30)
00061c  93011904  setlt.u r3, r18, r1
000620  3bb00100  bneq r3, zero, 12
000624  9f820b00  addli r5, r23, 0
000628  5b010000  j 8
00062c  97923b01  or r5, r23, r19
000630  978c4401  and r25, r9, r20
000634  e74c9ffc  storeli.w r9, -308(r30)
000638  e70c7ffd  storeli.w r23, -312(r30)
00063c  93019905  setlt.u r3, r18, r25
000640  37a00100  beq r3, zero, 8
000644  9794c401  or r9, r9, r28
000648  970b4c01  and r23, r24, r20
00064c  670f8ffd  storeli.w r24, -272(r30)
000650  93017905  setlt.u r3, r18, r23
000654  37a00100  beq r3, zero, 8
000658  171ccc01  or r24, r24, r28
00065c  97094b01  and r19, r22, r20
000660  674f6ffd  storeli.w r22, -268(r30)
000664  93013905  setlt.u r3, r18, r19
000668  37a00100  beq r3, zero, 8
00066c  171bcb01  or r22, r22, r28
000670  97014601  and r3, r12, r20
000674  67005ffe  storeli.w r5, -256(r30)
000678  670dcffc  storeli.w r12, -304(r30)
00067c  e74d3ffc  storeli.w r3, -292(r30)
000680  93013904  setlt.u r3, r18, r3
000684  37a00100  beq r3, zero, 8
000688  1716c601  or r12, r12, r28
00068c  e3423ffe  loadli.w r5,  -228(r30)
000690  97814201  and r3, r5, r20
000694  670e3ffc  storeli.w r3, -288(r30)
000698  93013904  setlt.u r3, r18, r3
00069c  3bb00100  bneq r3, zero, 12
0006a0  67405ffe  storeli.w r5, -252(r30)
0006a4  db010000  j 12
0006a8  9791c201  or r3, r5, r28
0006ac  67403ffe  storeli.w r3, -252(r30)
0006b0  e3024ffe  loadli.w r5,  -224(r30)
0006b4  97814201  and r3, r5, r20
0006b8  674e3ffc  storeli.w r3, -284(r30)
0006bc  93013904  setlt.u r3, r18, r3
0006c0  3bb00100  bneq r3, zero, 12
0006c4  e7005ffe  storeli.w r5, -248(r30)
0006c8  db010000  j 12
0006cc  9791c201  or r3, r5, r28
0006d0  e7003ffe  storeli.w r3, -248(r30)
0006d4  97814501  and r3, r11, r20
0006d8  674dbffc  storeli.w r11, -300(r30)
0006dc  13093904  setlt.u r18, r18, r3
0006e0  e70e3ffc  storeli.w r3, -280(r30)
0006e4  9f810400  addli r3, r9, 0
0006e8  ab04807f  lui r9, 522240
0006ec  37200900  beq r18, zero, 8
0006f0  9795c501  or r11, r11, r28
0006f4  97024d01  and r5, r26, r20
0006f8  e740bffe  storeli.w r11, -244(r30)
0006fc  e70daffd  storeli.w r26, -296(r30)
000700  13895404  setlt.u r18, r9, r5
000704  e74e5ffc  storeli.w r5, -276(r30)
000708  3b300900  bneq r18, zero, 12
00070c  9f050d00  addli r11, r26, 0
000710  5b010000  j 8
000714  9715cd01  or r11, r26, r28
000718  634d4ffe  loadli.w r26,  -220(r30)
00071c  17094d01  and r18, r26, r20
000720  93842405  setlt.u r9, r9, r18
000724  37a00400  beq r9, zero, 8
000728  171dcd01  or r26, r26, r28
00072c  9384aa04  setlt.u r9, r21, r10
000730  bb900400  bneq r9, zero, 36
000734  9bc40d01  srli r9, r27, 16
000738  63457ffe  loadli.w r10,  -196(r30)
00073c  9b841400  andi r9, r9, 1
000740  8b949d10  add.s r9, r27, r9
000744  8b94a410  add.s r9, r9, r10
000748  2b05ffff  lui r10, 1048560
00074c  9784a400  and r9, r9, r10
000750  e7029ffe  storeli.w r9, -216(r30)
000754  13848a04  setlt.u r8, r21, r8
000758  e34d7ffe  loadli.w r27,  -196(r30)
00075c  bb000400  bneq r8, zero, 32
000760  1bc40801  srli r8, r17, 16
000764  ab04ffff  lui r9, 1048560
000768  1b041400  andi r8, r8, 1
00076c  0b948810  add.s r8, r17, r8
000770  0b14b411  add.s r8, r8, r27
000774  17049400  and r8, r8, r9
000778  e7428ffe  storeli.w r8, -212(r30)
00077c  93837a04  setlt.u r7, r21, r7
000780  1f050c00  addli r10, r24, 0
000784  bb800300  bneq r7, zero, 32
000788  9b430801  srli r7, r16, 16
00078c  2b04ffff  lui r8, 1048560
000790  9b831300  andi r7, r7, 1
000794  8b137810  add.s r7, r16, r7
000798  8b93b311  add.s r7, r7, r27
00079c  97838300  and r7, r7, r8
0007a0  67037ffe  storeli.w r7, -208(r30)
0007a4  13836a04  setlt.u r6, r21, r6
0007a8  9f040b00  addli r9, r22, 0
0007ac  6308fffd  loadli.w r16,  -264(r30)
0007b0  630beffd  loadli.w r22,  -272(r30)
0007b4  ab03ffff  lui r7, 1048560
0007b8  3b600300  bneq r6, zero, 24
0007bc  1bc30701  srli r6, r15, 16
0007c0  1b031300  andi r6, r6, 1
0007c4  0b936710  add.s r6, r15, r6
0007c8  0b13b311  add.s r6, r6, r27
0007cc  17087300  and r16, r6, r7
0007d0  13824a04  setlt.u r4, r21, r4
0007d4  e347fffd  loadli.w r15,  -260(r30)
0007d8  e342effd  loadli.w r5,  -268(r30)
0007dc  1f040600  addli r8, r12, 0
0007e0  3b600200  bneq r4, zero, 24
0007e4  1b420701  srli r4, r14, 16
0007e8  1b021200  andi r4, r4, 1
0007ec  0b124710  add.s r4, r14, r4
0007f0  0b12b211  add.s r4, r4, r27
0007f4  97077200  and r15, r4, r7
0007f8  13812a04  setlt.u r2, r21, r2
0007fc  63060ffe  loadli.w r12,  -256(r30)
000800  1f830500  addli r6, r11, 0
000804  3b700100  bneq r2, zero, 28
000808  1bc10601  srli r2, r13, 16
00080c  1b011100  andi r2, r2, 1
000810  0b912610  add.s r2, r13, r2
000814  0b11b111  add.s r2, r2, r27
000818  17017100  and r2, r2, r7
00081c  67432ffe  storeli.w r2, -204(r30)
000820  93801a04  setlt.u r1, r21, r1
000824  63420ffe  loadli.w r4,  -252(r30)
000828  9f850100  addli r11, r3, 0
00082c  3bf00000  bneq r1, zero, 28
000830  63019ffd  loadli.w r2,  -312(r30)
000834  9b400101  srli r1, r2, 16
000838  9b801000  andi r1, r1, 1
00083c  8b101110  add.s r1, r2, r1
000840  8b90b011  add.s r1, r1, r27
000844  17867000  and r12, r1, r7
000848  93809a05  setlt.u r1, r21, r25
00084c  e3016ffe  loadli.w r3,  -208(r30)
000850  63415ffe  loadli.w r2,  -212(r30)
000854  3bf00000  bneq r1, zero, 28
000858  e3459ffd  loadli.w r11,  -308(r30)
00085c  9bc00501  srli r1, r11, 16
000860  9b801000  andi r1, r1, 1
000864  8b901510  add.s r1, r11, r1
000868  8b90b011  add.s r1, r1, r27
00086c  97857000  and r11, r1, r7
000870  93807a05  setlt.u r1, r21, r23
000874  ab084000  lui r17, 1024
000878  3be00000  bneq r1, zero, 24
00087c  9b400b01  srli r1, r22, 16
000880  9b801000  andi r1, r1, 1
000884  8b101b10  add.s r1, r22, r1
000888  8b90b011  add.s r1, r1, r27
00088c  17857000  and r10, r1, r7
000890  93803a05  setlt.u r1, r21, r19
000894  e30b1ffe  loadli.w r23,  -248(r30)
000898  e3466ffe  loadli.w r13,  -204(r30)
00089c  3be00000  bneq r1, zero, 24
0008a0  9bc00201  srli r1, r5, 16
0008a4  9b801000  andi r1, r1, 1
0008a8  8b901210  add.s r1, r5, r1
0008ac  8b90b011  add.s r1, r1, r27
0008b0  97847000  and r9, r1, r7
0008b4  e340bffd  loadli.w r1,  -292(r30)
0008b8  ab090080  lui r19, 524288
0008bc  93801a04  setlt.u r1, r21, r1
0008c0  3bf00000  bneq r1, zero, 28
0008c4  e302affd  loadli.w r5,  -304(r30)
0008c8  9bc00201  srli r1, r5, 16
0008cc  9b801000  andi r1, r1, 1
0008d0  8b901210  add.s r1, r5, r1
0008d4  8b90b011  add.s r1, r1, r27
0008d8  17847000  and r8, r1, r7
0008dc  e300cffd  loadli.w r1,  -288(r30)
0008e0  e3421ffe  loadli.w r5,  -244(r30)
0008e4  93801a04  setlt.u r1, r21, r1
0008e8  3bf00000  bneq r1, zero, 28
0008ec  63423ffe  loadli.w r4,  -228(r30)
0008f0  9b400201  srli r1, r4, 16
0008f4  9b801000  andi r1, r1, 1
0008f8  8b101210  add.s r1, r4, r1
0008fc  8b90b011  add.s r1, r1, r27
000900  17827000  and r4, r1, r7
000904  e340cffd  loadli.w r1,  -284(r30)
000908  2b0e8041  lui r28, 268288
00090c  93801a04  setlt.u r1, r21, r1
000910  3bf00000  bneq r1, zero, 28
000914  63074ffe  loadli.w r14,  -224(r30)
000918  9b400701  srli r1, r14, 16
00091c  9b801000  andi r1, r1, 1
000920  8b101710  add.s r1, r14, r1
000924  8b90b011  add.s r1, r1, r27
000928  978b7000  and r23, r1, r7
00092c  e300dffd  loadli.w r1,  -280(r30)
000930  630c7ffe  loadli.w r24,  -200(r30)
000934  93801a04  setlt.u r1, r21, r1
000938  3bf00000  bneq r1, zero, 28
00093c  e342affd  loadli.w r5,  -300(r30)
000940  9bc00201  srli r1, r5, 16
000944  9b801000  andi r1, r1, 1
000948  8b901210  add.s r1, r5, r1
00094c  8b90b011  add.s r1, r1, r27
000950  97827000  and r5, r1, r7
000954  e340dffd  loadli.w r1,  -276(r30)
000958  93801a04  setlt.u r1, r21, r1
00095c  3bf00000  bneq r1, zero, 28
000960  6303bffd  loadli.w r6,  -296(r30)
000964  9b400301  srli r1, r6, 16
000968  9b801000  andi r1, r1, 1
00096c  8b101310  add.s r1, r6, r1
000970  8b90b011  add.s r1, r1, r27
000974  17837000  and r6, r1, r7
000978  93802a05  setlt.u r1, r21, r18
00097c  2b0b807f  lui r22, 522240
000980  3bf00000  bneq r1, zero, 28
000984  63474ffe  loadli.w r14,  -220(r30)
000988  9b400701  srli r1, r14, 16
00098c  9b801000  andi r1, r1, 1
000990  8b101710  add.s r1, r14, r1
000994  8b90b011  add.s r1, r1, r27
000998  178d7000  and r26, r1, r7
00099c  e3035ffe  loadli.w r7,  -216(r30)
0009a0  97804301  and r1, r7, r20
0009a4  93001b04  setlt.u r1, r22, r1
0009a8  3be00000  bneq r1, zero, 24
0009ac  9bc00301  srli r1, r7, 16
0009b0  9b801000  andi r1, r1, 1
0009b4  8b901310  add.s r1, r7, r1
0009b8  0b97b011  add.s r14, r1, r27
0009bc  5b010000  j 8
0009c0  17971301  or r14, r7, r17
0009c4  97004101  and r1, r2, r20
0009c8  93001b04  setlt.u r1, r22, r1
0009cc  3be00000  bneq r1, zero, 24
0009d0  9b400101  srli r1, r2, 16
0009d4  9b801000  andi r1, r1, 1
0009d8  8b101110  add.s r1, r2, r1
0009dc  0b91b011  add.s r2, r1, r27
0009e0  5b010000  j 8
0009e4  17111101  or r2, r2, r17
0009e8  97804101  and r1, r3, r20
0009ec  93001b04  setlt.u r1, r22, r1
0009f0  3be00000  bneq r1, zero, 24
0009f4  9bc00101  srli r1, r3, 16
0009f8  9b801000  andi r1, r1, 1
0009fc  8b901110  add.s r1, r3, r1
000a00  8b90b011  add.s r1, r1, r27
000a04  5b010000  j 8
000a08  97901101  or r1, r3, r17
000a0c  97014801  and r3, r16, r20
000a10  2b09ffff  lui r18, 1048560
000a14  93013b04  setlt.u r3, r22, r3
000a18  3be00100  bneq r3, zero, 24
000a1c  9b410801  srli r3, r16, 16
000a20  9b811100  andi r3, r3, 1
000a24  8b113810  add.s r3, r16, r3
000a28  0b98b111  add.s r16, r3, r27
000a2c  5b010000  j 8
000a30  17181801  or r16, r16, r17
000a34  97814701  and r3, r15, r20
000a38  93013b04  setlt.u r3, r22, r3
000a3c  3be00100  bneq r3, zero, 24
000a40  9bc10701  srli r3, r15, 16
000a44  9b811100  andi r3, r3, 1
000a48  8b913710  add.s r3, r15, r3
000a4c  8b97b111  add.s r15, r3, r27
000a50  5b010000  j 8
000a54  97971701  or r15, r15, r17
000a58  97814601  and r3, r13, r20
000a5c  93013b04  setlt.u r3, r22, r3
000a60  3be00100  bneq r3, zero, 24
000a64  9bc10601  srli r3, r13, 16
000a68  9b811100  andi r3, r3, 1
000a6c  8b913610  add.s r3, r13, r3
000a70  8b96b111  add.s r13, r3, r27
000a74  5b010000  j 8
000a78  97961601  or r13, r13, r17
000a7c  97014601  and r3, r12, r20
000a80  93013b04  setlt.u r3, r22, r3
000a84  3be00100  bneq r3, zero, 24
000a88  9b410601  srli r3, r12, 16
000a8c  9b811100  andi r3, r3, 1
000a90  8b113610  add.s r3, r12, r3
000a94  0b96b111  add.s r12, r3, r27
000a98  5b010000  j 8
000a9c  17161601  or r12, r12, r17
000aa0  97814501  and r3, r11, r20
000aa4  93013b04  setlt.u r3, r22, r3
000aa8  3be00100  bneq r3, zero, 24
000aac  9bc10501  srli r3, r11, 16
000ab0  9b811100  andi r3, r3, 1
000ab4  8b913510  add.s r3, r11, r3
000ab8  8b95b111  add.s r11, r3, r27
000abc  5b010000  j 8
000ac0  97951501  or r11, r11, r17
000ac4  97014501  and r3, r10, r20
000ac8  93013b04  setlt.u r3, r22, r3
000acc  3be00100  bneq r3, zero, 24
000ad0  9b410501  srli r3, r10, 16
000ad4  9b811100  andi r3, r3, 1
000ad8  8b113510  add.s r3, r10, r3
000adc  0b95b111  add.s r10, r3, r27
000ae0  5b010000  j 8
000ae4  17151501  or r10, r10, r17
000ae8  97814401  and r3, r9, r20
000aec  93013b04  setlt.u r3, r22, r3
000af0  3be00100  bneq r3, zero, 24
000af4  9bc10401  srli r3, r9, 16
000af8  9b811100  andi r3, r3, 1
000afc  8b913410  add.s r3, r9, r3
000b00  8b94b111  add.s r9, r3, r27
000b04  5b010000  j 8
000b08  97941401  or r9, r9, r17
000b0c  97014401  and r3, r8, r20
000b10  93013b04  setlt.u r3, r22, r3
000b14  3be00100  bneq r3, zero, 24
000b18  9b410401  srli r3, r8, 16
000b1c  9b811100  andi r3, r3, 1
000b20  8b113410  add.s r3, r8, r3
000b24  0b94b111  add.s r8, r3, r27
000b28  5b010000  j 8
000b2c  17141401  or r8, r8, r17
000b30  97014201  and r3, r4, r20
000b34  93013b04  setlt.u r3, r22, r3
000b38  3be00100  bneq r3, zero, 24
000b3c  9b410201  srli r3, r4, 16
000b40  9b811100  andi r3, r3, 1
000b44  8b113210  add.s r3, r4, r3
000b48  0b92b111  add.s r4, r3, r27
000b4c  5b010000  j 8
000b50  17121201  or r4, r4, r17
000b54  97814b01  and r3, r23, r20
000b58  93013b04  setlt.u r3, r22, r3
000b5c  3be00100  bneq r3, zero, 24
000b60  9bc10b01  srli r3, r23, 16
000b64  9b811100  andi r3, r3, 1
000b68  8b913b10  add.s r3, r23, r3
000b6c  8b93b111  add.s r7, r3, r27
000b70  5b010000  j 8
000b74  97931b01  or r7, r23, r17
000b78  97814201  and r3, r5, r20
000b7c  93013b04  setlt.u r3, r22, r3
000b80  3be00100  bneq r3, zero, 24
000b84  9bc10201  srli r3, r5, 16
000b88  9b811100  andi r3, r3, 1
000b8c  8b913210  add.s r3, r5, r3
000b90  8b92b111  add.s r5, r3, r27
000b94  5b010000  j 8
000b98  97921201  or r5, r5, r17
000b9c  97014301  and r3, r6, r20
000ba0  93013b04  setlt.u r3, r22, r3
000ba4  3be00100  bneq r3, zero, 24
000ba8  9b410301  srli r3, r6, 16
000bac  9b811100  andi r3, r3, 1
000bb0  8b113310  add.s r3, r6, r3
000bb4  8b91b111  add.s r3, r3, r27
000bb8  5b010000  j 8
000bbc  97111301  or r3, r6, r17
000bc0  e74f3ffc  storeli.w r3, -260(r30)
000bc4  97014d01  and r3, r26, r20
000bc8  93013b04  setlt.u r3, r22, r3
000bcc  3be00100  bneq r3, zero, 24
000bd0  9b410d01  srli r3, r26, 16
000bd4  9b811100  andi r3, r3, 1
000bd8  8b113d10  add.s r3, r26, r3
000bdc  8b91b111  add.s r3, r3, r27
000be0  5b010000  j 8
000be4  97111d01  or r3, r26, r17
000be8  17032701  and r6, r14, r18
000bec  e30d5ffd  loadli.w r27,  -344(r30)
000bf0  0b676320  mul.f.rn r14, r6, r6
000bf4  67436ffe  storeli.w r6, -204(r30)
000bf8  0b676720  mul.f.rn r14, r14, r6
000bfc  0b67b721  mul.f.rn r14, r14, r27
000c00  0b676710  add.f.rn r14, r14, r6
000c04  0b678721  mul.f.rn r14, r14, r24
000c08  97084701  and r17, r14, r20
000c0c  93081e05  setlt.u r17, r28, r17
000c10  3bb00800  bneq r17, zero, 12
000c14  e74beffc  storeli.w r14, -324(r30)
000c18  5b020000  j 16
000c1c  97083701  and r17, r14, r19
000c20  1793c801  or r6, r17, r28
000c24  e74b6ffc  storeli.w r6, -324(r30)
000c28  17032101  and r6, r2, r18
000c2c  0b616320  mul.f.rn r2, r6, r6
000c30  67036ffe  storeli.w r6, -208(r30)
000c34  0b616120  mul.f.rn r2, r2, r6
000c38  0b61b121  mul.f.rn r2, r2, r27
000c3c  0b616110  add.f.rn r2, r2, r6
000c40  0b618121  mul.f.rn r2, r2, r24
000c44  97084101  and r17, r2, r20
000c48  93081e05  setlt.u r17, r28, r17
000c4c  3bb00800  bneq r17, zero, 12
000c50  670c2ffc  storeli.w r2, -320(r30)
000c54  5b020000  j 16
000c58  97083101  and r17, r2, r19
000c5c  1793c801  or r6, r17, r28
000c60  670c6ffc  storeli.w r6, -320(r30)
000c64  17832001  and r6, r1, r18
000c68  8b606320  mul.f.rn r1, r6, r6
000c6c  e7426ffe  storeli.w r6, -212(r30)
000c70  8be06020  mul.f.rn r1, r1, r6
000c74  8be0b021  mul.f.rn r1, r1, r27
000c78  8be06010  add.f.rn r1, r1, r6
000c7c  8be08021  mul.f.rn r1, r1, r24
000c80  97884001  and r17, r1, r20
000c84  93081e05  setlt.u r17, r28, r17
000c88  3bb00800  bneq r17, zero, 12
000c8c  e74e1ffc  storeli.w r1, -276(r30)
000c90  5b020000  j 16
000c94  97883001  and r17, r1, r19
000c98  1793c801  or r6, r17, r28
000c9c  e74e6ffc  storeli.w r6, -276(r30)
000ca0  17032801  and r6, r16, r18
000ca4  0b686320  mul.f.rn r16, r6, r6
000ca8  e7026ffe  storeli.w r6, -216(r30)
000cac  0b686820  mul.f.rn r16, r16, r6
000cb0  0b68b821  mul.f.rn r16, r16, r27
000cb4  0b686810  add.f.rn r16, r16, r6
000cb8  0b6d8821  mul.f.rn r26, r16, r24
000cbc  17084d01  and r16, r26, r20
000cc0  13080e05  setlt.u r16, r28, r16
000cc4  3b300800  bneq r16, zero, 12
000cc8  674caffd  storeli.w r26, -316(r30)
000ccc  5b020000  j 16
000cd0  17083d01  and r16, r26, r19
000cd4  1713c801  or r6, r16, r28
000cd8  674c6ffc  storeli.w r6, -316(r30)
000cdc  17832701  and r6, r15, r18
000ce0  2b094000  lui r18, 1024
000ce4  8b676320  mul.f.rn r15, r6, r6
000ce8  67426ffe  storeli.w r6, -220(r30)
000cec  8be76720  mul.f.rn r15, r15, r6
000cf0  8be7b721  mul.f.rn r15, r15, r27
000cf4  8be76710  add.f.rn r15, r15, r6
000cf8  8be78721  mul.f.rn r15, r15, r24
000cfc  17884701  and r16, r15, r20
000d00  13080e05  setlt.u r16, r28, r16
000d04  3b300800  bneq r16, zero, 12
000d08  e70cfffc  storeli.w r15, -312(r30)
000d0c  5b020000  j 16
000d10  17883701  and r16, r15, r19
000d14  1713c801  or r6, r16, r28
000d18  e70c6ffc  storeli.w r6, -312(r30)
000d1c  2b08ffff  lui r16, 1048560
000d20  17830601  and r6, r13, r16
000d24  8b666320  mul.f.rn r13, r6, r6
000d28  67026ffe  storeli.w r6, -224(r30)
000d2c  8be66620  mul.f.rn r13, r13, r6
000d30  8be6b621  mul.f.rn r13, r13, r27
000d34  8be66610  add.f.rn r13, r13, r6
000d38  8bec8621  mul.f.rn r25, r13, r24
000d3c  97864c01  and r13, r25, r20
000d40  9306de04  setlt.u r13, r28, r13
000d44  3bb00600  bneq r13, zero, 12
000d48  e74c9ffd  storeli.w r25, -308(r30)
000d4c  5b020000  j 16
000d50  97863c01  and r13, r25, r19
000d54  1793c601  or r6, r13, r28
000d58  e74c6ffc  storeli.w r6, -308(r30)
000d5c  17030601  and r6, r12, r16
000d60  0b666320  mul.f.rn r12, r6, r6
000d64  e7416ffe  storeli.w r6, -228(r30)
000d68  0b666620  mul.f.rn r12, r12, r6
000d6c  0b66b621  mul.f.rn r12, r12, r27
000d70  0b666610  add.f.rn r12, r12, r6
000d74  8b668621  mul.f.rn r13, r12, r24
000d78  17864601  and r12, r13, r20
000d7c  1306ce04  setlt.u r12, r28, r12
000d80  3b300600  bneq r12, zero, 12
000d84  e70edffc  storeli.w r13, -280(r30)
000d88  5b020000  j 16
000d8c  17863601  and r12, r13, r19
000d90  1713c601  or r6, r12, r28
000d94  e70e6ffc  storeli.w r6, -280(r30)
000d98  17830501  and r6, r11, r16
000d9c  8b656320  mul.f.rn r11, r6, r6
000da0  e7406ffe  storeli.w r6, -244(r30)
000da4  8be56520  mul.f.rn r11, r11, r6
000da8  8be5b521  mul.f.rn r11, r11, r27
000dac  8be56510  add.f.rn r11, r11, r6
000db0  8beb8521  mul.f.rn r23, r11, r24
000db4  97854b01  and r11, r23, r20
000db8  9305be04  setlt.u r11, r28, r11
000dbc  3bb00500  bneq r11, zero, 12
000dc0  670d7ffd  storeli.w r23, -304(r30)
000dc4  5b020000  j 16
000dc8  97853b01  and r11, r23, r19
000dcc  1793c501  or r6, r11, r28
000dd0  670d6ffc  storeli.w r6, -304(r30)
000dd4  97080501  and r17, r10, r16
000dd8  0be51821  mul.f.rn r10, r17, r17
000ddc  0b651521  mul.f.rn r10, r10, r17
000de0  0b65b521  mul.f.rn r10, r10, r27
000de4  0b651511  add.f.rn r10, r10, r17
000de8  0b658521  mul.f.rn r10, r10, r24
000dec  97054501  and r11, r10, r20
000df0  9305be04  setlt.u r11, r28, r11
000df4  3bb00500  bneq r11, zero, 12
000df8  674eaffc  storeli.w r10, -284(r30)
000dfc  5b020000  j 16
000e00  97053501  and r11, r10, r19
000e04  1793c501  or r6, r11, r28
000e08  674e6ffc  storeli.w r6, -284(r30)
000e0c  97850401  and r11, r9, r16
000e10  8be4b520  mul.f.rn r9, r11, r11
000e14  8be4b420  mul.f.rn r9, r9, r11
000e18  8be4b421  mul.f.rn r9, r9, r27
000e1c  8be4b410  add.f.rn r9, r9, r11
000e20  8be48421  mul.f.rn r9, r9, r24
000e24  17864401  and r12, r9, r20
000e28  1306ce04  setlt.u r12, r28, r12
000e2c  3b300600  bneq r12, zero, 12
000e30  670e9ffc  storeli.w r9, -288(r30)
000e34  5b020000  j 16
000e38  17863401  and r12, r9, r19
000e3c  1713c601  or r6, r12, r28
000e40  670e6ffc  storeli.w r6, -288(r30)
000e44  17030401  and r6, r8, r16
000e48  0b646320  mul.f.rn r8, r6, r6
000e4c  e7006ffe  storeli.w r6, -248(r30)
000e50  0b646420  mul.f.rn r8, r8, r6
000e54  0b64b421  mul.f.rn r8, r8, r27
000e58  0b646410  add.f.rn r8, r8, r6
000e5c  0b648421  mul.f.rn r8, r8, r24
000e60  17064401  and r12, r8, r20
000e64  1306ce04  setlt.u r12, r28, r12
000e68  3b300600  bneq r12, zero, 12
000e6c  674d8ffc  storeli.w r8, -300(r30)
000e70  5b020000  j 16
000e74  17063401  and r12, r8, r19
000e78  1713c601  or r6, r12, r28
000e7c  674d6ffc  storeli.w r6, -300(r30)
000e80  17060201  and r12, r4, r16
000e84  2b038041  lui r6, 268288
000e88  0b62c620  mul.f.rn r4, r12, r12
000e8c  6740cffe  storeli.w r12, -252(r30)
000e90  0b62c220  mul.f.rn r4, r4, r12
000e94  0b62b221  mul.f.rn r4, r4, r27
000e98  0b62c210  add.f.rn r4, r4, r12
000e9c  2b060080  lui r12, 524288
000ea0  0b6e8221  mul.f.rn r28, r4, r24
000ea4  17024e01  and r4, r28, r20
000ea8  13024304  setlt.u r4, r6, r4
000eac  3b300200  bneq r4, zero, 12
000eb0  e70dcffd  storeli.w r28, -296(r30)
000eb4  5b020000  j 16
000eb8  17023e01  and r4, r28, r19
000ebc  17126200  or r4, r4, r6
000ec0  e70d4ffc  storeli.w r4, -296(r30)
000ec4  97830301  and r7, r7, r16
000ec8  0be27320  mul.f.rn r4, r7, r7
000ecc  0b627220  mul.f.rn r4, r4, r7
000ed0  0b62b221  mul.f.rn r4, r4, r27
000ed4  0b627210  add.f.rn r4, r4, r7
000ed8  8b698221  mul.f.rn r19, r4, r24
000edc  17824901  and r4, r19, r20
000ee0  13024304  setlt.u r4, r6, r4
000ee4  3b300200  bneq r4, zero, 12
000ee8  e74d3ffd  storeli.w r19, -292(r30)
000eec  5b020000  j 16
000ef0  1782c900  and r4, r19, r12
000ef4  17126200  or r4, r4, r6
000ef8  e74d4ffc  storeli.w r4, -292(r30)
000efc  97820201  and r5, r5, r16
000f00  0be25220  mul.f.rn r4, r5, r5
000f04  67005ffe  storeli.w r5, -256(r30)
000f08  0b625220  mul.f.rn r4, r4, r5
000f0c  0b62b221  mul.f.rn r4, r4, r27
000f10  0b625210  add.f.rn r4, r4, r5
000f14  0b6c8221  mul.f.rn r24, r4, r24
000f18  17024c01  and r4, r24, r20
000f1c  13024304  setlt.u r4, r6, r4
000f20  3b300200  bneq r4, zero, 12
000f24  670f8ffd  storeli.w r24, -272(r30)
000f28  5b020000  j 16
000f2c  1702cc00  and r4, r24, r12
000f30  17126200  or r4, r4, r6
000f34  670f4ffc  storeli.w r4, -272(r30)
000f38  6342fffd  loadli.w r4,  -260(r30)
000f3c  97020201  and r5, r4, r16
000f40  0be25220  mul.f.rn r4, r5, r5
000f44  e74f5ffc  storeli.w r5, -260(r30)
000f48  0b625220  mul.f.rn r4, r4, r5
000f4c  0b62b221  mul.f.rn r4, r4, r27
000f50  0b625210  add.f.rn r4, r4, r5
000f54  e3027ffe  loadli.w r5,  -200(r30)
000f58  8b625220  mul.f.rn r5, r4, r5
000f5c  17824201  and r4, r5, r20
000f60  13024304  setlt.u r4, r6, r4
000f64  3b300200  bneq r4, zero, 12
000f68  674f5ffc  storeli.w r5, -268(r30)
000f6c  5b020000  j 16
000f70  1782c200  and r4, r5, r12
000f74  17126200  or r4, r4, r6
000f78  674f4ffc  storeli.w r4, -268(r30)
000f7c  17820101  and r4, r3, r16
000f80  8b614220  mul.f.rn r3, r4, r4
000f84  e70f4ffc  storeli.w r4, -264(r30)
000f88  8be14120  mul.f.rn r3, r3, r4
000f8c  8be1b121  mul.f.rn r3, r3, r27
000f90  8be14110  add.f.rn r3, r3, r4
000f94  63027ffe  loadli.w r4,  -200(r30)
000f98  8be14120  mul.f.rn r3, r3, r4
000f9c  17824101  and r4, r3, r20
000fa0  13024304  setlt.u r4, r6, r4
000fa4  3b300200  bneq r4, zero, 12
000fa8  1f880100  addli r16, r3, 0
000fac  db010000  j 12
000fb0  1782c100  and r4, r3, r12
000fb4  17186200  or r16, r4, r6
000fb8  1b329700  slli r4, r14, 9
000fbc  1b437701  srli r6, r14, 23
000fc0  2b06803f  lui r12, 260096
000fc4  13020200  seteq r4, r4, zero
000fc8  1b03f30f  andi r6, r6, 255
000fcc  1b73f30f  setlti r6, r6, 255
000fd0  17124300  or r4, r6, r4
000fd4  3b300200  bneq r4, zero, 12
000fd8  971d2701  or r27, r14, r18
000fdc  db040000  j 36
000fe0  63427ffd  loadli.w r4,  -324(r30)
000fe4  1f870300  addli r14, r7, 0
000fe8  0f020200  exp.f.rn r4, r4
000fec  0f034618  div.f.rn r6, r12, r4
000ff0  8b636218  sub.f.rn r7, r4, r6
000ff4  0b626210  add.f.rn r4, r4, r6
000ff8  8f8d4318  div.f.rn r27, r7, r4
000ffc  9f030700  addli r7, r14, 0
001000  1b329100  slli r4, r2, 9
001004  1b437101  srli r6, r2, 23
001008  13020200  seteq r4, r4, zero
00100c  1b03f30f  andi r6, r6, 255
001010  1b73f30f  setlti r6, r6, 255
001014  17124300  or r4, r6, r4
001018  3b300200  bneq r4, zero, 12
00101c  17172101  or r14, r2, r18
001020  db030000  j 28
001024  63018ffd  loadli.w r2,  -320(r30)
001028  0f010100  exp.f.rn r2, r2
00102c  0f022618  div.f.rn r4, r12, r2
001030  0b634118  sub.f.rn r6, r2, r4
001034  0b614110  add.f.rn r2, r2, r4
001038  0f072318  div.f.rn r14, r6, r2
00103c  1bb19000  slli r2, r1, 9
001040  1bc27001  srli r4, r1, 23
001044  13010100  seteq r2, r2, zero
001048  1b02f20f  andi r4, r4, 255
00104c  1b72f20f  setlti r4, r4, 255
001050  17112200  or r2, r4, r2
001054  3b300100  bneq r2, zero, 12
001058  97902001  or r1, r1, r18
00105c  db030000  j 28
001060  e340dffd  loadli.w r1,  -276(r30)
001064  8f800000  exp.f.rn r1, r1
001068  0f011618  div.f.rn r2, r12, r1
00106c  0be22018  sub.f.rn r4, r1, r2
001070  8be02010  add.f.rn r1, r1, r2
001074  8f001218  div.f.rn r1, r4, r1
001078  e74e1ffc  storeli.w r1, -276(r30)
00107c  9b309d00  slli r1, r26, 9
001080  1b417d01  srli r2, r26, 23
001084  93800000  seteq r1, r1, zero
001088  1b01f10f  andi r2, r2, 255
00108c  1b71f10f  setlti r2, r2, 255
001090  97101100  or r1, r2, r1
001094  3bb00000  bneq r1, zero, 12
001098  97102d01  or r1, r26, r18
00109c  db030000  j 28
0010a0  e3408ffd  loadli.w r1,  -316(r30)
0010a4  8f800000  exp.f.rn r1, r1
0010a8  0f011618  div.f.rn r2, r12, r1
0010ac  0be22018  sub.f.rn r4, r1, r2
0010b0  8be02010  add.f.rn r1, r1, r2
0010b4  8f001218  div.f.rn r1, r4, r1
0010b8  1bb19700  slli r2, r15, 9
0010bc  1bc27701  srli r4, r15, 23
0010c0  2b0d003f  lui r26, 258048
0010c4  13010100  seteq r2, r2, zero
0010c8  1b02f20f  andi r4, r4, 255
0010cc  1b72f20f  setlti r4, r4, 255
0010d0  17112200  or r2, r4, r2
0010d4  3b300100  bneq r2, zero, 12
0010d8  97972701  or r15, r15, r18
0010dc  db030000  j 28
0010e0  63019ffd  loadli.w r2,  -312(r30)
0010e4  0f010100  exp.f.rn r2, r2
0010e8  0f022618  div.f.rn r4, r12, r2
0010ec  0b634118  sub.f.rn r6, r2, r4
0010f0  0b614110  add.f.rn r2, r2, r4
0010f4  8f072318  div.f.rn r15, r6, r2
0010f8  1bb19c00  slli r2, r25, 9
0010fc  1bc27c01  srli r4, r25, 23
001100  13010100  seteq r2, r2, zero
001104  1b02f20f  andi r4, r4, 255
001108  1b72f20f  setlti r4, r4, 255
00110c  17112200  or r2, r4, r2
001110  3b400100  bneq r2, zero, 16
001114  2b014000  lui r2, 1024
001118  17992c00  or r18, r25, r2
00111c  db030000  j 28
001120  63419ffd  loadli.w r2,  -308(r30)
001124  0f010100  exp.f.rn r2, r2
001128  0f022618  div.f.rn r4, r12, r2
00112c  0b634118  sub.f.rn r6, r2, r4
001130  0b614110  add.f.rn r2, r2, r4
001134  0f092318  div.f.rn r18, r6, r2
001138  1bb19600  slli r2, r13, 9
00113c  1bc27601  srli r4, r13, 23
001140  ab0c4000  lui r25, 1024
001144  13010100  seteq r2, r2, zero
001148  1b02f20f  andi r4, r4, 255
00114c  1b72f20f  setlti r4, r4, 255
001150  17112200  or r2, r4, r2
001154  3b300100  bneq r2, zero, 12
001158  17919601  or r2, r13, r25
00115c  db030000  j 28
001160  6301dffd  loadli.w r2,  -280(r30)
001164  0f010100  exp.f.rn r2, r2
001168  0f022618  div.f.rn r4, r12, r2
00116c  0b634118  sub.f.rn r6, r2, r4
001170  0b614110  add.f.rn r2, r2, r4
001174  0f012318  div.f.rn r2, r6, r2
001178  e70e2ffc  storeli.w r2, -280(r30)
00117c  1bb19b00  slli r2, r23, 9
001180  1bc27b01  srli r4, r23, 23
001184  13010100  seteq r2, r2, zero
001188  1b02f20f  andi r4, r4, 255
00118c  1b72f20f  setlti r4, r4, 255
001190  17112200  or r2, r4, r2
001194  3b300100  bneq r2, zero, 12
001198  979b9b01  or r23, r23, r25
00119c  db030000  j 28
0011a0  6301affd  loadli.w r2,  -304(r30)
0011a4  0f010100  exp.f.rn r2, r2
0011a8  0f022618  div.f.rn r4, r12, r2
0011ac  0b634118  sub.f.rn r6, r2, r4
0011b0  0b614110  add.f.rn r2, r2, r4
0011b4  8f0b2318  div.f.rn r23, r6, r2
0011b8  1b319500  slli r2, r10, 9
0011bc  1b427501  srli r4, r10, 23
0011c0  13010100  seteq r2, r2, zero
0011c4  1b02f20f  andi r4, r4, 255
0011c8  1b72f20f  setlti r4, r4, 255
0011cc  17112200  or r2, r4, r2
0011d0  3b300100  bneq r2, zero, 12
0011d4  17119501  or r2, r10, r25
0011d8  db030000  j 28
0011dc  6341cffd  loadli.w r2,  -284(r30)
0011e0  0f010100  exp.f.rn r2, r2
0011e4  0f022618  div.f.rn r4, r12, r2
0011e8  0b634118  sub.f.rn r6, r2, r4
0011ec  0b614110  add.f.rn r2, r2, r4
0011f0  0f012318  div.f.rn r2, r6, r2
0011f4  674e2ffc  storeli.w r2, -284(r30)
0011f8  1bb19400  slli r2, r9, 9
0011fc  1bc27401  srli r4, r9, 23
001200  13010100  seteq r2, r2, zero
001204  1b02f20f  andi r4, r4, 255
001208  1b72f20f  setlti r4, r4, 255
00120c  17112200  or r2, r4, r2
001210  3b300100  bneq r2, zero, 12
001214  17919401  or r2, r9, r25
001218  db030000  j 28
00121c  6301cffd  loadli.w r2,  -288(r30)
001220  0f010100  exp.f.rn r2, r2
001224  0f022618  div.f.rn r4, r12, r2
001228  0b634118  sub.f.rn r6, r2, r4
00122c  0b614110  add.f.rn r2, r2, r4
001230  0f012318  div.f.rn r2, r6, r2
001234  670e2ffc  storeli.w r2, -288(r30)
001238  1b319400  slli r2, r8, 9
00123c  1b427401  srli r4, r8, 23
001240  13010100  seteq r2, r2, zero
001244  1b02f20f  andi r4, r4, 255
001248  1b72f20f  setlti r4, r4, 255
00124c  17112200  or r2, r4, r2
001250  3b300100  bneq r2, zero, 12
001254  17149401  or r8, r8, r25
001258  db030000  j 28
00125c  6341affd  loadli.w r2,  -300(r30)
001260  0f010100  exp.f.rn r2, r2
001264  0f022618  div.f.rn r4, r12, r2
001268  0b634118  sub.f.rn r6, r2, r4
00126c  0b614110  add.f.rn r2, r2, r4
001270  0f042318  div.f.rn r8, r6, r2
001274  1b319e00  slli r2, r28, 9
001278  1b427e01  srli r4, r28, 23
00127c  13010100  seteq r2, r2, zero
001280  1b02f20f  andi r4, r4, 255
001284  1b72f20f  setlti r4, r4, 255
001288  17112200  or r2, r4, r2
00128c  3b300100  bneq r2, zero, 12
001290  171e9e01  or r28, r28, r25
001294  db030000  j 28
001298  6301bffd  loadli.w r2,  -296(r30)
00129c  0f010100  exp.f.rn r2, r2
0012a0  0f022618  div.f.rn r4, r12, r2
0012a4  0b634118  sub.f.rn r6, r2, r4
0012a8  0b614110  add.f.rn r2, r2, r4
0012ac  0f0e2318  div.f.rn r28, r6, r2
0012b0  1bb19900  slli r2, r19, 9
0012b4  1bc27901  srli r4, r19, 23
0012b8  13010100  seteq r2, r2, zero
0012bc  1b02f20f  andi r4, r4, 255
0012c0  1b72f20f  setlti r4, r4, 255
0012c4  17112200  or r2, r4, r2
0012c8  3b300100  bneq r2, zero, 12
0012cc  97999901  or r19, r19, r25
0012d0  db030000  j 28
0012d4  6341bffd  loadli.w r2,  -292(r30)
0012d8  0f010100  exp.f.rn r2, r2
0012dc  0f022618  div.f.rn r4, r12, r2
0012e0  0b634118  sub.f.rn r6, r2, r4
0012e4  0b614110  add.f.rn r2, r2, r4
0012e8  8f092318  div.f.rn r19, r6, r2
0012ec  1b319c00  slli r2, r24, 9
0012f0  1b427c01  srli r4, r24, 23
0012f4  13010100  seteq r2, r2, zero
0012f8  1b02f20f  andi r4, r4, 255
0012fc  1b72f20f  setlti r4, r4, 255
001300  17112200  or r2, r4, r2
001304  3b300100  bneq r2, zero, 12
001308  17119c01  or r2, r24, r25
00130c  db030000  j 28
001310  6301effd  loadli.w r2,  -272(r30)
001314  0f010100  exp.f.rn r2, r2
001318  0f022618  div.f.rn r4, r12, r2
00131c  0b634118  sub.f.rn r6, r2, r4
001320  0b614110  add.f.rn r2, r2, r4
001324  0f012318  div.f.rn r2, r6, r2
001328  e74d2ffc  storeli.w r2, -292(r30)
00132c  1bb19200  slli r2, r5, 9
001330  1bc27201  srli r4, r5, 23
001334  13010100  seteq r2, r2, zero
001338  1b02f20f  andi r4, r4, 255
00133c  1b72f20f  setlti r4, r4, 255
001340  17112200  or r2, r4, r2
001344  3b300100  bneq r2, zero, 12
001348  17919201  or r2, r5, r25
00134c  db030000  j 28
001350  6341effd  loadli.w r2,  -268(r30)
001354  0f010100  exp.f.rn r2, r2
001358  0f022618  div.f.rn r4, r12, r2
00135c  8b624118  sub.f.rn r5, r2, r4
001360  0b614110  add.f.rn r2, r2, r4
001364  0f812218  div.f.rn r2, r5, r2
001368  e70d2ffc  storeli.w r2, -296(r30)
00136c  1bb19100  slli r2, r3, 9
001370  1bc27101  srli r4, r3, 23
001374  13010100  seteq r2, r2, zero
001378  1b02f20f  andi r4, r4, 255
00137c  1b72f20f  setlti r4, r4, 255
001380  17112200  or r2, r4, r2
001384  3b300100  bneq r2, zero, 12
001388  17919101  or r2, r3, r25
00138c  5b030000  j 24
001390  0f010800  exp.f.rn r2, r16
001394  8f012618  div.f.rn r3, r12, r2
001398  0b623118  sub.f.rn r4, r2, r3
00139c  0b613110  add.f.rn r2, r2, r3
0013a0  0f012218  div.f.rn r2, r4, r2
0013a4  e74c2ffc  storeli.w r2, -308(r30)
0013a8  63416ffe  loadli.w r2,  -204(r30)
0013ac  8be1cd10  add.f.rn r3, r27, r12
0013b0  0b61a121  mul.f.rn r2, r2, r26
0013b4  0b653120  mul.f.rn r10, r2, r3
0013b8  17014501  and r2, r10, r20
0013bc  674d2ffc  storeli.w r2, -300(r30)
0013c0  13012b04  setlt.u r2, r22, r2
0013c4  3b300100  bneq r2, zero, 12
0013c8  674faffc  storeli.w r10, -268(r30)
0013cc  db010000  j 12
0013d0  17119501  or r2, r10, r25
0013d4  674f2ffc  storeli.w r2, -268(r30)
0013d8  63016ffe  loadli.w r2,  -208(r30)
0013dc  8b61c710  add.f.rn r3, r14, r12
0013e0  0b61a121  mul.f.rn r2, r2, r26
0013e4  8b663120  mul.f.rn r13, r2, r3
0013e8  17814601  and r2, r13, r20
0013ec  670d2ffc  storeli.w r2, -304(r30)
0013f0  13012b04  setlt.u r2, r22, r2
0013f4  3b300100  bneq r2, zero, 12
0013f8  670fdffc  storeli.w r13, -272(r30)
0013fc  db010000  j 12
001400  17919601  or r2, r13, r25
001404  670f2ffc  storeli.w r2, -272(r30)
001408  63415ffe  loadli.w r2,  -212(r30)
00140c  e341dffd  loadli.w r3,  -276(r30)
001410  0b61a121  mul.f.rn r2, r2, r26
001414  8be1c110  add.f.rn r3, r3, r12
001418  8b613120  mul.f.rn r3, r2, r3
00141c  17814101  and r2, r3, r20
001420  e70c2ffc  storeli.w r2, -312(r30)
001424  13012b04  setlt.u r2, r22, r2
001428  3b300100  bneq r2, zero, 12
00142c  e74e3ffc  storeli.w r3, -276(r30)
001430  db010000  j 12
001434  17919101  or r2, r3, r25
001438  e74e2ffc  storeli.w r2, -276(r30)
00143c  63015ffe  loadli.w r2,  -216(r30)
001440  8be0c010  add.f.rn r1, r1, r12
001444  0b61a121  mul.f.rn r2, r2, r26
001448  8b601120  mul.f.rn r1, r2, r1
00144c  17814001  and r2, r1, r20
001450  674c2ffc  storeli.w r2, -316(r30)
001454  13012b04  setlt.u r2, r22, r2
001458  3b300100  bneq r2, zero, 12
00145c  67431ffe  storeli.w r1, -204(r30)
001460  db010000  j 12
001464  17919001  or r2, r1, r25
001468  67432ffe  storeli.w r2, -204(r30)
00146c  63414ffe  loadli.w r2,  -220(r30)
001470  0be2c710  add.f.rn r4, r15, r12
001474  0b61a121  mul.f.rn r2, r2, r26
001478  0b614120  mul.f.rn r2, r2, r4
00147c  17024101  and r4, r2, r20
001480  670c4ffc  storeli.w r4, -320(r30)
001484  13024b04  setlt.u r4, r22, r4
001488  3b300200  bneq r4, zero, 12
00148c  67032ffe  storeli.w r2, -208(r30)
001490  db010000  j 12
001494  17129101  or r4, r2, r25
001498  67034ffe  storeli.w r4, -208(r30)
00149c  63024ffe  loadli.w r4,  -224(r30)
0014a0  8b62c910  add.f.rn r5, r18, r12
0014a4  0b62a221  mul.f.rn r4, r4, r26
0014a8  8b645220  mul.f.rn r9, r4, r5
0014ac  17824401  and r4, r9, r20
0014b0  e74b4ffc  storeli.w r4, -324(r30)
0014b4  13024b04  setlt.u r4, r22, r4
0014b8  3b300200  bneq r4, zero, 12
0014bc  e7429ffe  storeli.w r9, -212(r30)
0014c0  db010000  j 12
0014c4  17929401  or r4, r9, r25
0014c8  e7424ffe  storeli.w r4, -212(r30)
0014cc  63423ffe  loadli.w r4,  -228(r30)
0014d0  e302dffd  loadli.w r5,  -280(r30)
0014d4  2b08ffff  lui r16, 1048560
0014d8  0b62a221  mul.f.rn r4, r4, r26
0014dc  8be2c210  add.f.rn r5, r5, r12
0014e0  0b675220  mul.f.rn r14, r4, r5
0014e4  17024701  and r4, r14, r20
0014e8  e70e4ffc  storeli.w r4, -280(r30)
0014ec  13024b04  setlt.u r4, r22, r4
0014f0  3b300200  bneq r4, zero, 12
0014f4  e702effe  storeli.w r14, -216(r30)
0014f8  db010000  j 12
0014fc  17129701  or r4, r14, r25
001500  e7024ffe  storeli.w r4, -216(r30)
001504  63421ffe  loadli.w r4,  -244(r30)
001508  8be2cb10  add.f.rn r5, r23, r12
00150c  0b62a221  mul.f.rn r4, r4, r26
001510  0b6c5220  mul.f.rn r24, r4, r5
001514  17024c01  and r4, r24, r20
001518  e70b4ffc  storeli.w r4, -328(r30)
00151c  13024b04  setlt.u r4, r22, r4
001520  3b300200  bneq r4, zero, 12
001524  67428fff  storeli.w r24, -220(r30)
001528  db010000  j 12
00152c  17129c01  or r4, r24, r25
001530  67424ffe  storeli.w r4, -220(r30)
001534  e342cffd  loadli.w r5,  -284(r30)
001538  0be2a821  mul.f.rn r4, r17, r26
00153c  8be2c210  add.f.rn r5, r5, r12
001540  8b685220  mul.f.rn r17, r4, r5
001544  17824801  and r4, r17, r20
001548  674e4ffc  storeli.w r4, -284(r30)
00154c  13024b04  setlt.u r4, r22, r4
001550  3b300200  bneq r4, zero, 12
001554  67021fff  storeli.w r17, -224(r30)
001558  db010000  j 12
00155c  17929801  or r4, r17, r25
001560  67024ffe  storeli.w r4, -224(r30)
001564  e302cffd  loadli.w r5,  -288(r30)
001568  0be2a521  mul.f.rn r4, r11, r26
00156c  8be2c210  add.f.rn r5, r5, r12
001570  8b655220  mul.f.rn r11, r4, r5
001574  17824501  and r4, r11, r20
001578  670e4ffc  storeli.w r4, -288(r30)
00157c  13024b04  setlt.u r4, r22, r4
001580  3b300200  bneq r4, zero, 12
001584  e741bffe  storeli.w r11, -228(r30)
001588  db010000  j 12
00158c  17929501  or r4, r11, r25
001590  e7414ffe  storeli.w r4, -228(r30)
001594  63021ffe  loadli.w r4,  -248(r30)
001598  8b62c410  add.f.rn r5, r8, r12
00159c  0b62a221  mul.f.rn r4, r4, r26
0015a0  0b625220  mul.f.rn r4, r4, r5
0015a4  17094201  and r18, r4, r20
0015a8  93022b05  setlt.u r5, r22, r18
0015ac  3bb00200  bneq r5, zero, 12
0015b0  e7404ffe  storeli.w r4, -244(r30)
0015b4  db010000  j 12
0015b8  97129201  or r5, r4, r25
0015bc  e7405ffe  storeli.w r5, -244(r30)
0015c0  e3420ffe  loadli.w r5,  -252(r30)
0015c4  0b63ce10  add.f.rn r6, r28, r12
0015c8  8be2a221  mul.f.rn r5, r5, r26
0015cc  8be76220  mul.f.rn r15, r5, r6
0015d0  978b4701  and r23, r15, r20
0015d4  93027b05  setlt.u r5, r22, r23
0015d8  3bb00200  bneq r5, zero, 12
0015dc  e700fffe  storeli.w r15, -248(r30)
0015e0  db010000  j 12
0015e4  97929701  or r5, r15, r25
0015e8  e7005ffe  storeli.w r5, -248(r30)
0015ec  8be2a321  mul.f.rn r5, r7, r26
0015f0  0be3c910  add.f.rn r6, r19, r12
0015f4  0be36220  mul.f.rn r6, r5, r6
0015f8  170e4301  and r28, r6, r20
0015fc  9302cb05  setlt.u r5, r22, r28
001600  3bb00200  bneq r5, zero, 12
001604  67406ffe  storeli.w r6, -252(r30)
001608  db010000  j 12
00160c  97129301  or r5, r6, r25
001610  67405ffe  storeli.w r5, -252(r30)
001614  e3020ffe  loadli.w r5,  -256(r30)
001618  6344bffd  loadli.w r8,  -292(r30)
00161c  ab03803f  lui r7, 260096
001620  8be2a221  mul.f.rn r5, r5, r26
001624  0b64c410  add.f.rn r8, r8, r12
001628  0be48220  mul.f.rn r8, r5, r8
00162c  97094401  and r19, r8, r20
001630  93023b05  setlt.u r5, r22, r19
001634  3bd00200  bneq r5, zero, 20
001638  ab0d4000  lui r27, 1024
00163c  2b06807f  lui r12, 522240
001640  67008ffe  storeli.w r8, -256(r30)
001644  db020000  j 20
001648  97129401  or r5, r8, r25
00164c  2b06807f  lui r12, 522240
001650  ab0d4000  lui r27, 1024
001654  67005ffe  storeli.w r5, -256(r30)
001658  e342fffd  loadli.w r5,  -260(r30)
00165c  630bbffd  loadli.w r22,  -296(r30)
001660  8be2a221  mul.f.rn r5, r5, r26
001664  0b6b7b10  add.f.rn r22, r22, r7
001668  0beb6221  mul.f.rn r22, r5, r22
00166c  970c4b01  and r25, r22, r20
001670  93029605  setlt.u r5, r12, r25
001674  3bb00200  bneq r5, zero, 12
001678  e74f6ffd  storeli.w r22, -260(r30)
00167c  db010000  j 12
001680  9712bb01  or r5, r22, r27
001684  e74f5ffc  storeli.w r5, -260(r30)
001688  e302fffd  loadli.w r5,  -264(r30)
00168c  8be2a221  mul.f.rn r5, r5, r26
001690  634d9ffd  loadli.w r26,  -308(r30)
001694  0b6d7d10  add.f.rn r26, r26, r7
001698  0beda221  mul.f.rn r26, r5, r26
00169c  97024d01  and r5, r26, r20
0016a0  13065604  setlt.u r12, r12, r5
0016a4  3b300600  bneq r12, zero, 12
0016a8  9f0d0d00  addli r27, r26, 0
0016ac  5b010000  j 8
0016b0  971dbd01  or r27, r26, r27
0016b4  6346affd  loadli.w r12,  -300(r30)
0016b8  e343effd  loadli.w r7,  -268(r30)
0016bc  1386ca04  setlt.u r12, r21, r12
0016c0  3b700600  bneq r12, zero, 28
0016c4  1b460501  srli r12, r10, 16
0016c8  1b061600  andi r12, r12, 1
0016cc  0b15c510  add.s r10, r10, r12
0016d0  63467ffe  loadli.w r12,  -196(r30)
0016d4  0b15c510  add.s r10, r10, r12
0016d8  97030501  and r7, r10, r16
0016dc  6305affd  loadli.w r10,  -304(r30)
0016e0  6306effd  loadli.w r12,  -272(r30)
0016e4  1385aa04  setlt.u r10, r21, r10
0016e8  3b700500  bneq r10, zero, 28
0016ec  1bc50601  srli r10, r13, 16
0016f0  63467ffe  loadli.w r12,  -196(r30)
0016f4  1b051500  andi r10, r10, 1
0016f8  0b95a610  add.s r10, r13, r10
0016fc  0b15c510  add.s r10, r10, r12
001700  17060501  and r12, r10, r16
001704  63059ffd  loadli.w r10,  -312(r30)
001708  e346dffd  loadli.w r13,  -276(r30)
00170c  1385aa04  setlt.u r10, r21, r10
001710  3b700500  bneq r10, zero, 28
001714  1bc50101  srli r10, r3, 16
001718  1b051500  andi r10, r10, 1
00171c  8b91a110  add.s r3, r3, r10
001720  63457ffe  loadli.w r10,  -196(r30)
001724  8b91a110  add.s r3, r3, r10
001728  97860101  and r13, r3, r16
00172c  e3418ffd  loadli.w r3,  -316(r30)
001730  93813a04  setlt.u r3, r21, r3
001734  bb800100  bneq r3, zero, 32
001738  9bc10001  srli r3, r1, 16
00173c  9b811100  andi r3, r3, 1
001740  8b903010  add.s r1, r1, r3
001744  e3417ffe  loadli.w r3,  -196(r30)
001748  8b903010  add.s r1, r1, r3
00174c  97800001  and r1, r1, r16
001750  67431ffe  storeli.w r1, -204(r30)
001754  e3008ffd  loadli.w r1,  -320(r30)
001758  93801a04  setlt.u r1, r21, r1
00175c  bb800000  bneq r1, zero, 32
001760  9b400101  srli r1, r2, 16
001764  9b801000  andi r1, r1, 1
001768  8b101110  add.s r1, r2, r1
00176c  63417ffe  loadli.w r2,  -196(r30)
001770  8b902010  add.s r1, r1, r2
001774  97800001  and r1, r1, r16
001778  67031ffe  storeli.w r1, -208(r30)
00177c  e3407ffd  loadli.w r1,  -324(r30)
001780  93801a04  setlt.u r1, r21, r1
001784  bb800000  bneq r1, zero, 32
001788  9bc00401  srli r1, r9, 16
00178c  63417ffe  loadli.w r2,  -196(r30)
001790  9b801000  andi r1, r1, 1
001794  8b901410  add.s r1, r9, r1
001798  8b902010  add.s r1, r1, r2
00179c  97800001  and r1, r1, r16
0017a0  e7421ffe  storeli.w r1, -212(r30)
0017a4  e300dffd  loadli.w r1,  -280(r30)
0017a8  93801a04  setlt.u r1, r21, r1
0017ac  bb800000  bneq r1, zero, 32
0017b0  9b400701  srli r1, r14, 16
0017b4  63417ffe  loadli.w r2,  -196(r30)
0017b8  9b801000  andi r1, r1, 1
0017bc  8b101710  add.s r1, r14, r1
0017c0  8b902010  add.s r1, r1, r2
0017c4  97800001  and r1, r1, r16
0017c8  e7021ffe  storeli.w r1, -216(r30)
0017cc  e3007ffd  loadli.w r1,  -328(r30)
0017d0  63474ffe  loadli.w r14,  -220(r30)
0017d4  9f040fff  addli r9, r30, -128
0017d8  ab01ffff  lui r3, 1048560
0017dc  93801a04  setlt.u r1, r21, r1
0017e0  3bf00000  bneq r1, zero, 28
0017e4  9b400c01  srli r1, r24, 16
0017e8  63417ffe  loadli.w r2,  -196(r30)
0017ec  9b801000  andi r1, r1, 1
0017f0  8b101c10  add.s r1, r24, r1
0017f4  8b902010  add.s r1, r1, r2
0017f8  17873000  and r14, r1, r3
0017fc  e340cffd  loadli.w r1,  -284(r30)
001800  63457ffe  loadli.w r10,  -196(r30)
001804  63084ffe  loadli.w r16,  -224(r30)
001808  93801a04  setlt.u r1, r21, r1
00180c  3be00000  bneq r1, zero, 24
001810  9bc00801  srli r1, r17, 16
001814  9b801000  andi r1, r1, 1
001818  8b901810  add.s r1, r17, r1
00181c  8b90a010  add.s r1, r1, r10
001820  17883000  and r16, r1, r3
001824  e300cffd  loadli.w r1,  -288(r30)
001828  e3483ffe  loadli.w r17,  -228(r30)
00182c  93801a04  setlt.u r1, r21, r1
001830  3be00000  bneq r1, zero, 24
001834  9bc00501  srli r1, r11, 16
001838  9b801000  andi r1, r1, 1
00183c  8b901510  add.s r1, r11, r1
001840  8b90a010  add.s r1, r1, r10
001844  97883000  and r17, r1, r3
001848  93802a05  setlt.u r1, r21, r18
00184c  e3451ffe  loadli.w r11,  -244(r30)
001850  3be00000  bneq r1, zero, 24
001854  9b400201  srli r1, r4, 16
001858  9b801000  andi r1, r1, 1
00185c  8b101210  add.s r1, r4, r1
001860  8b90a010  add.s r1, r1, r10
001864  97853000  and r11, r1, r3
001868  93807a05  setlt.u r1, r21, r23
00186c  63091ffe  loadli.w r18,  -248(r30)
001870  3be00000  bneq r1, zero, 24
001874  9bc00701  srli r1, r15, 16
001878  9b801000  andi r1, r1, 1
00187c  8b901710  add.s r1, r15, r1
001880  8b90a010  add.s r1, r1, r10
001884  17893000  and r18, r1, r3
001888  9380ca05  setlt.u r1, r21, r28
00188c  e3470ffe  loadli.w r15,  -252(r30)
001890  3be00000  bneq r1, zero, 24
001894  9b400301  srli r1, r6, 16
001898  9b801000  andi r1, r1, 1
00189c  8b101310  add.s r1, r6, r1
0018a0  8b90a010  add.s r1, r1, r10
0018a4  97873000  and r15, r1, r3
0018a8  93803a05  setlt.u r1, r21, r19
0018ac  63030ffe  loadli.w r6,  -256(r30)
0018b0  3be00000  bneq r1, zero, 24
0018b4  9b400401  srli r1, r8, 16
0018b8  9b801000  andi r1, r1, 1
0018bc  8b101410  add.s r1, r8, r1
0018c0  8b90a010  add.s r1, r1, r10
0018c4  17833000  and r6, r1, r3
0018c8  93809a05  setlt.u r1, r21, r25
0018cc  6344fffd  loadli.w r8,  -260(r30)
0018d0  3be00000  bneq r1, zero, 24
0018d4  9b400b01  srli r1, r22, 16
0018d8  9b801000  andi r1, r1, 1
0018dc  8b101b10  add.s r1, r22, r1
0018e0  8b90a010  add.s r1, r1, r10
0018e4  17843000  and r8, r1, r3
0018e8  93805a04  setlt.u r1, r21, r5
0018ec  ab094000  lui r19, 1024
0018f0  bbf100f4  bneq r1, zero, -6020
0018f4  9b400d01  srli r1, r26, 16
0018f8  9b801000  andi r1, r1, 1
0018fc  8b101d10  add.s r1, r26, r1
001900  8b90a010  add.s r1, r1, r10
001904  978d3000  and r27, r1, r3
001908  db0cfdff  j -6044
00190c  9f0e0ffd  addli sp, r30, -384
001910  9f8e0e03  addli sp, sp, 384
001914  00a00300  mfence { lm, sm, gm }
001918  00100000  exit
00191c  00100000  exit
001920  00100000  exit
001924  00100000  exit
001928  00100000  exit
00192c  00100000  exit
001930  00100000  exit
001934  00100000  exit
001938  00100000  exit
00193c  00100000  exit
001940  00100000  exit
001944  00100000  exit
001948  00100000  exit
00194c  00100000  exit
001950  00100000  exit
001954  00100000  exit
001958  00100000  exit
00195c  00100000  exit
001960  00100000  exit
001964  00100000  exit
001968  00100000  exit
00196c  00100000  exit
001970  00100000  exit
001974  00100000  exit
001978  00100000  exit
00197c  00100000  exit
001980  00100000  exit
001984  00100000  exit
001988  00100000  exit
00198c  00100000  exit
001990  00100000  exit
001994  00100000  exit
001998  00100000  exit
00199c  00100000  exit
0019a0  00100000  exit
0019a4  00100000  exit
0019a8  00100000  exit
0019ac  00100000  exit
0019b0  00100000  exit
0019b4  00100000  exit
0019b8  00100000  exit
0019bc  00100000  exit
0019c0  00100000  exit
0019c4  00100000  exit
0019c8  00100000  exit
0019cc  00100000  exit
0019d0  00100000  exit
0019d4  00100000  exit
0019d8  00100000  exit
0019dc  00100000  exit
0019e0  00100000  exit
0019e4  00100000  exit
0019e8  00100000  exit
0019ec  00100000  exit
0019f0  00100000  exit
0019f4  00100000  exit
0019f8  00100000  exit
0019fc  00100000  exit
001a00  00100000  exit
001a04  00100000  exit
001a08  00100000  exit
001a0c  00100000  exit
001a10  00100000  exit
001a14  00100000  exit
001a18  00100000  exit
001a1c  00100000  exit
001a20  00100000  exit
001a24  00100000  exit
001a28  00100000  exit
001a2c  00100000  exit
001a30  00100000  exit
001a34  00100000  exit
001a38  00100000  exit
001a3c  00100000  exit
001a40  00100000  exit
001a44  00100000  exit
001a48  00100000  exit
001a4c  00100000  exit
001a50  00100000  exit
001a54  00100000  exit
001a58  00100000  exit
001a5c  00100000  exit
001a60  00100000  exit
001a64  00100000  exit
001a68  00100000  exit
001a6c  00100000  exit
001a70  00100000  exit
001a74  00100000  exit
001a78  00100000  exit
001a7c  00100000  exit
001a80  00100000  exit
001a84  00100000  exit
001a88  00100000  exit
001a8c  00100000  exit
001a90  00100000  exit
001a94  00100000  exit
001a98  00100000  exit
001a9c  00100000  exit
001aa0  00100000  exit
001aa4  00100000  exit
001aa8  00100000  exit
001aac  00100000  exit
001ab0  00100000  exit
001ab4  00100000  exit
001ab8  00100000  exit
001abc  00100000  exit
001ac0  00100000  exit
001ac4  00100000  exit
001ac8  00100000  exit
001acc  00100000  exit
001ad0  00100000  exit
001ad4  00100000  exit
001ad8  00100000  exit
001adc  00100000  exit
001ae0  00100000  exit
001ae4  00100000  exit
001ae8  00100000  exit
001aec  00100000  exit
001af0  00100000  exit
001af4  00100000  exit
001af8  00100000  exit
001afc  00100000  exit
001b00  00100000  exit
001b04  00100000  exit
001b08  00100000  exit
001b0c  00100000  exit
001b10  00100000  exit
001b14  00100000  exit
001b18  00100000  exit
001b1c  00100000  exit
001b20  00100000  exit
001b24  00100000  exit
001b28  00100000  exit
001b2c  00100000  exit
001b30  00100000  exit
001b34  00100000  exit
001b38  00100000  exit
001b3c  00100000  exit
001b40  00100000  exit
001b44  00100000  exit
001b48  00100000  exit
001b4c  00100000  exit
001b50  00100000  exit
001b54  00100000  exit
001b58  00100000  exit
