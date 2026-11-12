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
0000dc  9f8e8ecb  addli sp, sp, -6720
0000e0  1f8f0e34  addli r30, sp, 6656
0000e4  9f711000  addli r3, zero, 15
0000e8  00d40002  load_param_i r8, 1
0000ec  80530002  load_param_i r7, 0
0000f0  80520102  load_param_i r5, 2
0000f4  eb568f01  load.d r[14:15], 24(r30)
0000f8  b381312e  zext_int2long r[3:4], r3
0000fc  eb508f00  load.d r[2:3], 8(r30)
000100  1f03cfcd  addli r6, r30, -6432
000104  eb540f01  load.d r[10:11], 16(r30)
000108  93b1d104  setlt.sl r3, r[4:5], r[14:15]
00010c  1f02bfcd  addli r4, r30, -6440
000110  73301200  store.d r[2:3], 0(r4)
000114  eb500f00  load.d r[2:3], 0(r30)
000118  73301300  store.d r[2:3], 0(r6)
00011c  9f008fce  addli r1, r30, -6336
000120  73b0d000  store.d r[14:15], 0(r1)
000124  3bc20102  bneq r3, zero, 1168
000128  8b918220  mul.s r3, r5, r8
00012c  80350002  core_id r11
000130  b381312e  zext_int2long r[3:4], r3
000134  8b13b450  fmac.s r7, r8, r11
000138  8f923472  mod.sl r[5:6], r[9:10], r[3:4]
00013c  8f913466  div.sl r[3:4], r[9:10], r[3:4]
000140  b383732e  zext_int2long r[7:8], r7
000144  93b55304  setlt.sl r11, r[8:9], r[6:7]
000148  8bb25340  min.sl r[6:7], r[8:9], r[6:7]
00014c  8bb27150  fmac.sl r[6:7], r[4:5], r[8:9]
000150  b385b52e  zext_int2long r[11:12], r11
000154  8ba1b110  add.ul r[4:5], r[4:5], r[12:13]
000158  8ba35110  add.ul r[8:9], r[4:5], r[6:7]
00015c  8bb19240  min.sl r[4:5], r[6:7], r[10:11]
000160  8bb69340  min.sl r[14:15], r[8:9], r[10:11]
000164  93b23606  setle.sl r5, r[14:15], r[4:5]
000168  3bb10220  bneq r5, zero, 16460
00016c  9f038fce  addli r7, r30, -6336
000170  9f02000c  addli r5, zero, 1536
000174  1f160000  addli r12, zero, 1
000178  1f0a0fcf  addli r20, r30, -6272
00017c  9f271000  addli r15, zero, 10
000180  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000184  ebd00300  load.d r[2:3], 0(r7)
000188  b382522a  zext_int2long r[5:6], r5
00018c  0f981260  div.sl r[17:18], r[6:7], r[2:3]
000190  abf2ffff  lui r5, 1048575
000194  9b92c2ff  ori r5, r5, 4092
000198  97845000  and r9, r1, r5
00019c  9f00cfce  addli r1, r30, -6304
0001a0  1f01bfce  addli r2, r30, -6312
0001a4  3395a42a  sext_int2long r[10:11], r9
0001a8  73b0d000  store.d r[14:15], 0(r1)
0001ac  73300101  store.d r[17:18], 0(r2)
0001b0  db0a0000  j 84
0001b4  1f09ffce  addli r18, r30, -6280
0001b8  9f09bfce  addli r19, r30, -6312
0001bc  00a00000  mfence { lm }
0001c0  1f0bbfcd  addli r22, r30, -6440
0001c4  9f0befce  addli r23, r30, -6288
0001c8  9f0acfce  addli r21, r30, -6304
0001cc  eb510900  load.d r[4:5], 0(r18)
0001d0  6bd80900  load.d r[17:18], 0(r19)
0001d4  ab0200f0  lui r5, 983040
0001d8  eb500b00  load.d r[2:3], 0(r22)
0001dc  ebd30b00  load.d r[8:9], 0(r23)
0001e0  ebd60a00  load.d r[14:15], 0(r21)
0001e4  8ba10111  add.ul r[4:5], r[4:5], r[17:18]
0001e8  8ba37010  add.ul r[8:9], r[2:3], r[8:9]
0001ec  e300dfce  loadli.w r1,  -6296(r30)
0001f0  13b3d104  setlt.sl r6, r[4:5], r[14:15]
0001f4  97925000  or r5, r1, r5
0001f8  ffb24301  s_lm2gm r5, r20, 0(r[8:9])
0001fc  00a00200  mfence { lm, gm }
000200  b75e031e  beq r6, zero, 16308
000204  8bb23618  sub.sl r[6:7], r[14:15], r[4:5]
000208  9f068fce  addli r13, r30, -6336
00020c  1f07ffce  addli r14, r30, -6280
000210  ebd00600  load.d r[2:3], 0(r13)
000214  8bbb0241  min.sl r[24:25], r[6:7], r[17:18]
000218  1f08cfcd  addli r16, r30, -6432
00021c  73303700  store.d r[4:5], 0(r14)
000220  ab0200f0  lui r5, 983040
000224  9f08efce  addli r17, r30, -6288
000228  8bb31120  mul.sl r[8:9], r[4:5], r[2:3]
00022c  8bba1b20  mul.sl r[22:23], r[24:25], r[2:3]
000230  eb510800  load.d r[4:5], 0(r16)
000234  17b3c302  sll.d r[7:8], r[8:9], r12
000238  1bb41a00  slli r8, r21, 1
00023c  73b06800  store.d r[7:8], 0(r17)
000240  0ba36110  add.ul r[7:8], r[4:5], r[7:8]
000244  97125400  or r5, r8, r5
000248  e7068fce  storeli.w r8, -6296(r30)
00024c  ff224301  l_gm2lm r5, r20, 0(r[7:8])
000250  00a00200  mfence { lm, gm }
000254  abf2ffff  lui r5, 1048575
000258  9b9222fe  ori r5, r5, 4066
00025c  3fe15a00  blt.s r21, r5, 88
000260  9ff2faff  addli r5, r21, -1
000264  9f014000  addli r3, zero, 32
000268  2bf3ffff  lui r6, 1048575
00026c  8b923230  div.s r5, r5, r3
000270  1b13f3ff  ori r6, r6, 4095
000274  17a36200  xor r6, r5, r6
000278  9bb37200  slli r7, r5, 7
00027c  1bb46200  slli r8, r5, 6
000280  9b325300  slli r5, r6, 5
000284  0b137a10  add.s r6, r20, r7
000288  8b138a10  add.s r7, r20, r8
00028c  c2800302  vload.mz vr1{mr1}, 0(r7)
000290  66411080  vmerge_l.hf vr2, vr0, vr1
000294  1f048300  addli r8, r6, 64
000298  46102302  vstore_mask16.mz vr2{mr1}, 0(r6)
00029c  9f824200  addli r5, r5, 32
0002a0  1f0303ff  addli r6, r6, -128
0002a4  9f8383ff  addli r7, r7, -64
0002a8  e64110a0  vmerge_h.hf vr3, vr0, vr1
0002ac  46103402  vstore_mask16.mz vr3{mr1}, 0(r8)
0002b0  3bff02fe  bneq r5, zero, -36
0002b4  b3025628  zext_int2long r[5:6], r12
0002b8  00a00000  mfence { lm }
0002bc  93b25b04  setlt.sl r5, r[24:25], r[6:7]
0002c0  bb880200  bneq r5, zero, 544
0002c4  b30c9029  zext_int2long r[25:26], zero
0002c8  db020000  j 20
0002cc  a79c0c00  addli.d r[26:27], r[26:27], 1
0002d0  00a00000  mfence { lm }
0002d4  93b17c05  setlt.sl r3, r[26:27], r[24:25]
0002d8  37a80100  beq r3, zero, 520
0002dc  8bb21c20  mul.sl r[6:7], r[26:27], r[2:3]
0002e0  2b0780ff  lui r14, 1046528
0002e4  9bb22200  slli r5, r5, 2
0002e8  8b1d5a10  add.s r27, r20, r5
0002ec  3fe1c400  blt.s r9, r12, 88
0002f0  2b0780ff  lui r14, 1046528
0002f4  b3025028  zext_int2long r[5:6], zero
0002f8  9bb32200  slli r7, r5, 2
0002fc  a7c20200  addli.d r[6:7], r[6:7], 4
000300  0b947d10  add.s r8, r27, r7
000304  1b9e4300  ori r28, r7, 4
000308  1b998300  ori r18, r7, 8
00030c  9b93c300  ori r7, r7, 12
000310  63040400  loadli.w r8,  0(r8)
000314  8b99cd11  add.s r19, r27, r28
000318  8b937d10  add.s r7, r27, r7
00031c  e3830300  loadli.w r7,  0(r7)
000320  0b648748  max.f r8, r14, r8
000324  0b972d11  add.s r14, r27, r18
000328  63890900  loadli.w r18,  0(r19)
00032c  93b9a204  setlt.sl r19, r[6:7], r[11:12]
000330  63070700  loadli.w r14,  0(r14)
000334  0b642449  max.f r8, r8, r18
000338  0b64e448  max.f r8, r8, r14
00033c  0b677448  max.f r14, r8, r7
000340  bbee09fe  bneq r19, zero, -72
000344  9f018fce  addli r3, r30, -6336
000348  a7020500  addli.d r[6:7], r[11:12], 0
00034c  ebd00100  load.d r[2:3], 0(r3)
000350  13bea006  setle.sl r28, r[2:3], r[11:12]
000354  bb000e00  bneq r28, zero, 32
000358  9bb32200  slli r7, r5, 2
00035c  a7920200  addli.d r[6:7], r[6:7], 1
000360  8b937d10  add.s r7, r27, r7
000364  13b41204  setlt.sl r8, r[6:7], r[2:3]
000368  e3830300  loadli.w r7,  0(r7)
00036c  0b677748  max.f r14, r14, r7
000370  bb2f04fe  bneq r8, zero, -24
000374  3fb2c400  blt.s r9, r12, 140
000378  b3025028  zext_int2long r[5:6], zero
00037c  9f030000  addli r7, zero, 0
000380  1bb42200  slli r8, r5, 2
000384  a7c20200  addli.d r[6:7], r[6:7], 4
000388  0b998d10  add.s r18, r27, r8
00038c  9b194400  ori r19, r8, 4
000390  1b128400  ori r4, r8, 8
000394  1b14c400  ori r8, r8, 12
000398  93b6a204  setlt.sl r13, r[6:7], r[11:12]
00039c  630a0900  loadli.w r20,  0(r18)
0003a0  8b993d11  add.s r19, r27, r19
0003a4  0b924d10  add.s r4, r27, r4
0003a8  0b948d10  add.s r8, r27, r8
0003ac  e3810900  loadli.w r3,  0(r19)
0003b0  63080200  loadli.w r16,  0(r4)
0003b4  e3080400  loadli.w r17,  0(r8)
0003b8  0b6aea18  sub.f.rn r20, r20, r14
0003bc  8be1e118  sub.f.rn r3, r3, r14
0003c0  0b68e818  sub.f.rn r16, r16, r14
0003c4  8be8e818  sub.f.rn r17, r17, r14
0003c8  0f0a4a01  exp.f.rn r20, r20
0003cc  8f813100  exp.f.rn r3, r3
0003d0  0f080801  exp.f.rn r16, r16
0003d4  8f881801  exp.f.rn r17, r17
0003d8  8be34311  add.f.rn r7, r7, r20
0003dc  67004901  storeli.w r20, 0(r18)
0003e0  67803900  storeli.w r3, 0(r19)
0003e4  67000201  storeli.w r16, 0(r4)
0003e8  67001401  storeli.w r17, 0(r8)
0003ec  8be33310  add.f.rn r7, r7, r3
0003f0  8be30311  add.f.rn r7, r7, r16
0003f4  8be31311  add.f.rn r7, r7, r17
0003f8  3bae06fe  bneq r13, zero, -120
0003fc  5b010000  j 8
000400  9f030000  addli r7, zero, 0
000404  9f018fce  addli r3, r30, -6336
000408  a7020500  addli.d r[6:7], r[11:12], 0
00040c  ebd00100  load.d r[2:3], 0(r3)
000410  bb300e00  bneq r28, zero, 44
000414  9bb12200  slli r3, r5, 2
000418  a7920200  addli.d r[6:7], r[6:7], 1
00041c  8b913d10  add.s r3, r27, r3
000420  13b41204  setlt.sl r8, r[6:7], r[2:3]
000424  63820100  loadli.w r4,  0(r3)
000428  0b62e218  sub.f.rn r4, r4, r14
00042c  0f024200  exp.f.rn r4, r4
000430  8be34310  add.f.rn r7, r7, r4
000434  67804100  storeli.w r4, 0(r3)
000438  3b7f04fe  bneq r8, zero, -36
00043c  ab01803f  lui r3, 260096
000440  1f0a0fcf  addli r20, r30, -6272
000444  8f837118  div.f.rn r7, r3, r7
000448  bf91c400  blt.s r9, r12, 100
00044c  b3025028  zext_int2long r[5:6], zero
000450  9bb12200  slli r3, r5, 2
000454  a7c20200  addli.d r[6:7], r[6:7], 4
000458  1b944100  ori r8, r3, 4
00045c  1b978100  ori r14, r3, 8
000460  0b923d10  add.s r4, r27, r3
000464  9b91c100  ori r3, r3, 12
000468  93b9a204  setlt.sl r19, r[6:7], r[11:12]
00046c  0b948d10  add.s r8, r27, r8
000470  0b97ed10  add.s r14, r27, r14
000474  8b913d10  add.s r3, r27, r3
000478  e3060200  loadli.w r13,  0(r4)
00047c  63080400  loadli.w r16,  0(r8)
000480  e3080700  loadli.w r17,  0(r14)
000484  63890100  loadli.w r18,  0(r3)
000488  8be6d320  mul.f.rn r13, r7, r13
00048c  0be80321  mul.f.rn r16, r7, r16
000490  8be81321  mul.f.rn r17, r7, r17
000494  0be92321  mul.f.rn r18, r7, r18
000498  6700d200  storeli.w r13, 0(r4)
00049c  67000401  storeli.w r16, 0(r8)
0004a0  67001701  storeli.w r17, 0(r14)
0004a4  67802101  storeli.w r18, 0(r3)
0004a8  bbae09fe  bneq r19, zero, -88
0004ac  9f018fce  addli r3, r30, -6336
0004b0  a7020500  addli.d r[6:7], r[11:12], 0
0004b4  ebd00100  load.d r[2:3], 0(r3)
0004b8  3b580efe  bneq r28, zero, -492
0004bc  9bb12200  slli r3, r5, 2
0004c0  a7920200  addli.d r[6:7], r[6:7], 1
0004c4  8b913d10  add.s r3, r27, r3
0004c8  13b41204  setlt.sl r8, r[6:7], r[2:3]
0004cc  63820100  loadli.w r4,  0(r3)
0004d0  0be24320  mul.f.rn r4, r7, r4
0004d4  67804100  storeli.w r4, 0(r3)
0004d8  bb1f04fe  bneq r8, zero, -28
0004dc  5bbeffff  j -528
0004e0  9f700000  addli r1, zero, 7
0004e4  1f310000  addli r2, zero, 3
0004e8  3fb3cafe  blt.s r21, r12, -820
0004ec  9f030fcf  addli r7, r30, -6272
0004f0  1f040fcf  addli r8, r30, -6272
0004f4  1f070000  addli r14, zero, 0
0004f8  9f828300  addli r5, r7, 64
0004fc  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
000500  1f074700  addli r14, r14, 32
000504  9f830301  addli r7, r7, 128
000508  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
00050c  ab020100  lui r5, 16
000510  eaa11202  vand.u.mz vr3{mr1}, r5, vr1
000514  6aa22202  vand.u.mz vr4{mr1}, r5, vr2
000518  ab820000  lui r5, 8
00051c  72213002  veq.u.mz mr2{mr1}, zero, vr3
000520  fe010140  vmnot mr3, mr2
000524  72204002  veq.u.mz mr0{mr1}, zero, vr4
000528  92a01216  vadd.u.mh vr1{mr3}, r5, vr1
00052c  fe010040  vmnot mr3, mr0
000530  12a12216  vadd.u.mh vr2{mr3}, r5, vr2
000534  ab720000  lui r5, 7
000538  9b92f2ff  ori r5, r5, 4095
00053c  92a01214  vadd.u.mh vr1{mr2}, r5, vr1
000540  12a12210  vadd.u.mh vr2{mr0}, r5, vr2
000544  eab117c2  vsrl.s.mz vr3{mr1}, r15, vr1
000548  6ab227c2  vsrl.s.mz vr4{mr1}, r15, vr2
00054c  ab02803f  lui r5, 260096
000550  2bf380ff  lui r6, 1046543
000554  abfb7f00  lui r23, 2047
000558  9b9bfbff  ori r23, r23, 4095
00055c  eaa13222  vor.u.mz vr3{mr1}, r5, vr3
000560  6aa24222  vor.u.mz vr4{mr1}, r5, vr4
000564  1b1303f8  ori r6, r6, 3968
000568  eaa01b02  vand.u.mz vr1{mr1}, r23, vr1
00056c  6aa12b02  vand.u.mz vr2{mr1}, r23, vr2
000570  86910120  vfloat2fp16_l.rz vr3, vr3
000574  eaa01222  vor.u.mz vr1{mr1}, r5, vr1
000578  6aa12222  vor.u.mz vr2{mr1}, r5, vr2
00057c  ab027f00  lui r5, 2032
000580  86510220  vfloat2fp16_h.rz vr3, vr4
000584  9b92f207  ori r5, r5, 127
000588  86900020  vfloat2fp16_l.rz vr1, vr1
00058c  eaa130a2  vsll.u.mz vr3{mr1}, r1, vr3
000590  86500120  vfloat2fp16_h.rz vr1, vr2
000594  6a213302  vand.u.mz vr2{mr1}, r6, vr3
000598  ea2011c2  vsrl.u.mz vr1{mr1}, r2, vr1
00059c  eaa01202  vand.u.mz vr1{mr1}, r5, vr1
0005a0  eea02022  vor.u.mz vr1{mr1}, vr1, vr2
0005a4  46001402  vstore.mz vr1{mr1}, 0(r8)
0005a8  1f048400  addli r8, r8, 64
0005ac  3f3d57ff  blt.s r14, r21, -180
0005b0  db80ffff  j -1020
0005b4  9f01000c  addli r3, zero, 1536
0005b8  b385b12e  zext_int2long r[11:12], r3
0005bc  13a2d504  setlt.ul r4, r[12:13], r[14:15]
0005c0  bb2a0204  bneq r4, zero, 2728
0005c4  8b918220  mul.s r3, r5, r8
0005c8  80350002  core_id r11
0005cc  b381312e  zext_int2long r[3:4], r3
0005d0  8b13b450  fmac.s r7, r8, r11
0005d4  8f923472  mod.sl r[5:6], r[9:10], r[3:4]
0005d8  8f913466  div.sl r[3:4], r[9:10], r[3:4]
0005dc  b383732e  zext_int2long r[7:8], r7
0005e0  93b55304  setlt.sl r11, r[8:9], r[6:7]
0005e4  8bb25340  min.sl r[6:7], r[8:9], r[6:7]
0005e8  8bb27150  fmac.sl r[6:7], r[4:5], r[8:9]
0005ec  8bb79240  min.sl r[16:17], r[6:7], r[10:11]
0005f0  b383752e  zext_int2long r[7:8], r11
0005f4  a385f600  andi.d r[12:13], r[14:15], 15
0005f8  8ba17110  add.ul r[4:5], r[4:5], r[8:9]
0005fc  b3037028  zext_int2long r[7:8], zero
000600  8ba15110  add.ul r[4:5], r[4:5], r[6:7]
000604  9f029fcd  addli r5, r30, -6456
000608  8bb09140  min.sl r[2:3], r[4:5], r[10:11]
00060c  13a27502  setneq.d r4, r[12:13], r[8:9]
000610  93b1f006  setle.sl r3, r[2:3], r[16:17]
000614  73b01200  store.d r[2:3], 0(r5)
000618  b74d020e  beq r4, zero, 8048
00061c  3bee011c  bneq r3, zero, 15256
000620  1f068fce  addli r12, r30, -6336
000624  abf00000  lui r1, 15
000628  1f01000c  addli r2, zero, 1536
00062c  9f08ffce  addli r17, r30, -6280
000630  1f0a9fce  addli r20, r30, -6328
000634  1f0c7fce  addli r24, r30, -6344
000638  1f09bfce  addli r18, r30, -6312
00063c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000640  6b550600  load.d r[11:12], 0(r12)
000644  9b90f0ff  ori r1, r1, 4095
000648  1f060fcf  addli r12, r30, -6272
00064c  97001500  and r1, r10, r1
000650  a701e5ff  addli.d r[4:5], r[11:12], 32752
000654  9b392500  slli r19, r10, 2
000658  73b03800  store.d r[4:5], 0(r17)
00065c  abf1ffff  lui r3, 1048575
000660  8b001130  div.u r1, r2, r1
000664  1b01f501  andi r2, r10, 31
000668  9b93f1ff  ori r7, r3, 4095
00066c  1b9201fe  ori r4, r3, 4064
000670  17b12300  sll r2, r7, r2
000674  33048228  zext_int2long r[8:9], r4
000678  97024500  and r5, r10, r4
00067c  338b602b  zext_int2long r[22:23], r1
000680  97207100  xor r1, r2, r7
000684  1f733000  addli r6, zero, 31
000688  97068502  and.d r[14:15], r[11:12], r[9:10]
00068c  17046502  and.d r[9:10], r[11:12], r[7:8]
000690  7e8000e0  vmmov mr0, r1
000694  9bc00001  srli r1, r1, 16
000698  17b18300  sll r2, r7, r8
00069c  7e8100e0  vmmov mr2, r1
0006a0  73308900  store.d r[9:10], 0(r18)
0006a4  1f049fcd  addli r8, r30, -6456
0006a8  7e0001a0  vmmov zero, mr2
0006ac  17227100  xor r4, r2, r7
0006b0  67000a00  storeli.w zero, 0(r20)
0006b4  1b91c1ff  ori r2, r3, 4092
0006b8  17200000  xor zero, zero, zero
0006bc  6b530400  load.d r[7:8], 0(r8)
0006c0  9b400201  srli r1, r4, 16
0006c4  97082500  and r17, r10, r2
0006c8  1b118600  ori r2, r12, 8
0006cc  67054fce  storeli.w r4, -6320(r30)
0006d0  7e8100e0  vmmov mr2, r1
0006d4  9b9001ff  ori r1, r3, 4080
0006d8  67002fce  storeli.w r2, -6400(r30)
0006dc  1b013500  andi r2, r10, 3
0006e0  9f012fce  addli r3, r30, -6384
0006e4  27850700  addli.d r[11:12], r[16:17], 0
0006e8  7e0001a0  vmmov zero, mr2
0006ec  7e0102e0  vmmov mr2, r4
0006f0  1f021fce  addli r4, r30, -6392
0006f4  97801900  and r1, r19, r1
0006f8  67000c00  storeli.w zero, 0(r24)
0006fc  17200000  xor zero, zero, zero
000700  67062fce  storeli.w r2, -6304(r30)
000704  1f01efce  addli r2, r30, -6288
000708  73b06101  store.d r[23:24], 0(r3)
00070c  8b101610  add.s r1, r12, r1
000710  9f1d0000  addli r27, zero, 1
000714  9f0a4000  addli r21, zero, 32
000718  9f241000  addli r9, zero, 10
00071c  7e0001a0  vmmov zero, mr2
000720  e74f1fcc  storeli.w r1, -6404(r30)
000724  9f006fce  addli r1, r30, -6352
000728  7e810de0  vmmov mr2, r27
00072c  67800000  storeli.w zero, 0(r1)
000730  17200000  xor zero, zero, zero
000734  7e0001a0  vmmov zero, mr2
000738  67000100  storeli.w zero, 0(r2)
00073c  17200000  xor zero, zero, zero
000740  7e0000a0  vmmov zero, mr0
000744  67000200  storeli.w zero, 0(r4)
000748  17200000  xor zero, zero, zero
00074c  db0c0000  j 100
000750  1f09afcd  addli r18, r30, -6448
000754  1f0a2fce  addli r20, r30, -6384
000758  9f0cbfcd  addli r25, r30, -6440
00075c  1f0d5fce  addli r26, r30, -6360
000760  00a00000  mfence { lm }
000764  1f0c9fcd  addli r24, r30, -6456
000768  6b550900  load.d r[11:12], 0(r18)
00076c  6b5b0a00  load.d r[23:24], 0(r20)
000770  ab0000f0  lui r1, 983040
000774  63044fce  loadli.w r8,  -6368(r30)
000778  ebd10c00  load.d r[4:5], 0(r25)
00077c  eb570d00  load.d r[16:17], 0(r26)
000780  6b530c00  load.d r[7:8], 0(r24)
000784  0b256511  add.ul r[11:12], r[11:12], r[23:24]
000788  8ba1f110  add.ul r[4:5], r[4:5], r[16:17]
00078c  97101400  or r1, r8, r1
000790  ffb0c100  s_lm2gm r1, r12, 0(r[4:5])
000794  13316504  setlt.sl r2, r[11:12], r[7:8]
000798  9f001fce  addli r1, r30, -6392
00079c  00a00200  mfence { lm, gm }
0007a0  63800000  loadli.w zero,  0(r1)
0007a4  7e0000e0  vmmov mr0, zero
0007a8  17200000  xor zero, zero, zero
0007ac  3728011c  beq r2, zero, 14856
0007b0  1f048fce  addli r8, r30, -6336
0007b4  8b30a318  sub.sl r[2:3], r[7:8], r[11:12]
0007b8  1f09dfce  addli r18, r30, -6296
0007bc  1f0acfcd  addli r20, r30, -6432
0007c0  6b530400  load.d r[7:8], 0(r8)
0007c4  8bb76041  min.sl r[16:17], r[2:3], r[23:24]
0007c8  ab0000f0  lui r1, 983040
0007cc  1f0b5fce  addli r22, r30, -6360
0007d0  7330f900  store.d r[16:17], 0(r18)
0007d4  8b316520  mul.sl r[4:5], r[11:12], r[7:8]
0007d8  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
0007dc  17b3b103  sll.d r[7:8], r[4:5], r27
0007e0  6b510a00  load.d r[3:4], 0(r20)
0007e4  1bb21700  slli r4, r15, 1
0007e8  97101200  or r1, r4, r1
0007ec  73306b00  store.d r[7:8], 0(r22)
0007f0  67024fce  storeli.w r4, -6368(r30)
0007f4  0b216110  add.ul r[3:4], r[3:4], r[7:8]
0007f8  ff20c100  l_gm2lm r1, r12, 0(r[3:4])
0007fc  00a00200  mfence { lm, gm }
000800  abf0ffff  lui r1, 1048575
000804  9b9020fe  ori r1, r1, 4066
000808  3fd11700  blt.s r15, r1, 84
00080c  9ff0f7ff  addli r1, r15, -1
000810  2bf1ffff  lui r2, 1048575
000814  8b905031  div.s r1, r1, r21
000818  1b11f1ff  ori r2, r2, 4095
00081c  17a12000  xor r2, r1, r2
000820  9bb17000  slli r3, r1, 7
000824  9bb06000  slli r1, r1, 6
000828  1b335100  slli r6, r2, 5
00082c  8b133610  add.s r7, r12, r3
000830  0b141610  add.s r8, r12, r1
000834  c2000402  vload.mz vr1{mr1}, 0(r8)
000838  66411080  vmerge_l.hf vr2, vr0, vr1
00083c  9f808300  addli r1, r7, 64
000840  46902302  vstore_mask16.mz vr2{mr1}, 0(r7)
000844  1f034300  addli r6, r6, 32
000848  9f8303ff  addli r7, r7, -128
00084c  1f0484ff  addli r8, r8, -64
000850  e64110a0  vmerge_h.hf vr3, vr0, vr1
000854  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
000858  3b7f03fe  bneq r6, zero, -36
00085c  1f04dfce  addli r8, r30, -6296
000860  b3801d2e  zext_int2long r[1:2], r27
000864  1f033fce  addli r6, r30, -6376
000868  9f03afcd  addli r7, r30, -6448
00086c  eb510400  load.d r[4:5], 0(r8)
000870  7330f300  store.d r[16:17], 0(r6)
000874  73b0a300  store.d r[11:12], 0(r7)
000878  00a00000  mfence { lm }
00087c  93b01104  setlt.sl r1, r[4:5], r[2:3]
000880  3bac0002  bneq r1, zero, 1800
000884  634bffcd  loadli.w r22,  -6404(r30)
000888  63030fce  loadli.w r6,  -6400(r30)
00088c  3305a028  zext_int2long r[10:11], zero
000890  db070000  j 60
000894  8a101a02  vmul.f.mz.rn vr1{mr1}, r20, vr1
000898  9b400401  srli r1, r8, 16
00089c  1f818300  addli r2, r7, 64
0008a0  7e8100e0  vmmov mr2, r1
0008a4  46101114  vstore_mask16.mh vr1{mr2}, 0(r2)
0008a8  9f01dfce  addli r3, r30, -6296
0008ac  27150500  addli.d r[11:12], r[11:12], 1
0008b0  0b133311  add.s r6, r6, r19
0008b4  0b1b3b11  add.s r22, r22, r19
0008b8  1f060fcf  addli r12, r30, -6272
0008bc  ebd00100  load.d r[2:3], 0(r3)
0008c0  00a00000  mfence { lm }
0008c4  93301504  setlt.sl r1, r[11:12], r[2:3]
0008c8  378b0002  beq r1, zero, 1728
0008cc  9f078fce  addli r15, r30, -6336
0008d0  b3013028  zext_int2long r[3:4], zero
0008d4  ebd00700  load.d r[2:3], 0(r15)
0008d8  8b331520  mul.sl r[8:9], r[11:12], r[2:3]
0008dc  a380f300  andi.d r[2:3], r[8:9], 15
0008e0  93a03000  seteq.d r1, r[2:3], r[4:5]
0008e4  a7810300  addli.d r[4:5], r[8:9], 0
0008e8  3be00000  bneq r1, zero, 24
0008ec  9f002000  addli r1, zero, 16
0008f0  9f410000  addli r3, zero, 4
0008f4  b380102a  zext_int2long r[1:2], r1
0008f8  8f901362  div.sl r[1:2], r[7:8], r[1:2]
0008fc  97b13002  sll.d r[4:5], r[2:3], r3
000900  13ae3302  setneq.d r28, r[8:9], r[4:5]
000904  9bb02300  slli r1, r7, 2
000908  8bbc3318  sub.sl r[26:27], r[8:9], r[4:5]
00090c  0b161610  add.s r12, r12, r1
000910  3b110e00  bneq r28, zero, 68
000914  ab0180ff  lui r3, 1046528
000918  b7f30200  beq r5, zero, 252
00091c  ab0080ff  lui r1, 1046528
000920  b3037028  zext_int2long r[7:8], zero
000924  ea900022  vor.f.mz vr1{mr1}, r1, vr0
000928  9bb02300  slli r1, r7, 2
00092c  a7834300  addli.d r[8:9], r[8:9], 32
000930  8b101610  add.s r1, r12, r1
000934  13a1d304  setlt.ul r2, r[8:9], r[14:15]
000938  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
00093c  9f808000  addli r1, r1, 64
000940  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000944  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
000948  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
00094c  3b7f01fe  bneq r2, zero, -36
000950  5b190000  j 200
000954  abf0ffff  lui r1, 1048575
000958  9bb12c00  slli r3, r25, 2
00095c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000960  1b91f0ff  ori r2, r1, 4095
000964  8b113618  sub.s r3, r12, r3
000968  9b9000fe  ori r1, r1, 4064
00096c  17319101  sll r2, r2, r25
000970  1f8a8100  addli r20, r3, 64
000974  7e0101e0  vmmov mr2, r2
000978  42910104  vload_mask16.mz vr2{mr2}, 0(r3)
00097c  2b0180ff  lui r2, 1046528
000980  ea101122  vor.f.mz vr1{mr1}, r2, vr1
000984  1f01ffce  addli r2, r30, -6280
000988  eb530100  load.d r[8:9], 0(r2)
00098c  b6902014  vmax.f.mh vr1{mr2}, vr1, vr2
000990  8bab7c10  add.ul r[24:25], r[26:27], r[8:9]
000994  17891b00  and r18, r23, r1
000998  b313792c  sext_int2long r[7:8], r18
00099c  bf40b901  blt.s r18, r27, 48
0009a0  b307f028  zext_int2long r[15:16], zero
0009a4  9bb02700  slli r1, r15, 2
0009a8  a7874700  addli.d r[16:17], r[16:17], 32
0009ac  8b101a10  add.s r1, r20, r1
0009b0  13b17704  setlt.sl r2, r[16:17], r[8:9]
0009b4  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0009b8  9f808000  addli r1, r1, 64
0009bc  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0009c0  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
0009c4  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
0009c8  3b7f01fe  bneq r2, zero, -36
0009cc  93b07305  setlt.sl r1, r[8:9], r[24:25]
0009d0  37920000  beq r1, zero, 132
0009d4  abf0ffff  lui r1, 1048575
0009d8  1b81fb01  andi r2, r23, 31
0009dc  9b312900  slli r3, r18, 2
0009e0  9b90f0ff  ori r1, r1, 4095
0009e4  17b12000  sll r2, r1, r2
0009e8  97201100  xor r1, r2, r1
0009ec  0b113a10  add.s r2, r20, r3
0009f0  7e8100e0  vmmov mr2, r1
0009f4  9bc00001  srli r1, r1, 16
0009f8  42110104  vload_mask16.mz vr2{mr2}, 0(r2)
0009fc  1f018100  addli r2, r2, 64
000a00  fe8100e0  vmmov mr3, r1
000a04  c2110106  vload_mask16.mz vr3{mr3}, 0(r2)
000a08  b6902014  vmax.f.mh vr1{mr2}, vr1, vr2
000a0c  b6903016  vmax.f.mh vr1{mr3}, vr1, vr3
000a10  db080000  j 68
000a14  ea900122  vor.f.mz vr1{mr1}, r3, vr0
000a18  9f018fce  addli r3, r30, -6336
000a1c  ebd00100  load.d r[2:3], 0(r3)
000a20  93a01604  setlt.ul r1, r[14:15], r[2:3]
000a24  b7c00000  beq r1, zero, 48
000a28  9bb02200  slli r1, r5, 2
000a2c  1f019fce  addli r2, r30, -6328
000a30  8b101610  add.s r1, r12, r1
000a34  63000100  loadli.w zero,  0(r2)
000a38  42910000  vload_mask16.mz vr2{mr0}, 0(r1)
000a3c  9f808000  addli r1, r1, 64
000a40  7e0100e0  vmmov mr2, zero
000a44  17200000  xor zero, zero, zero
000a48  c2910004  vload_mask16.mz vr3{mr2}, 0(r1)
000a4c  b6902010  vmax.f.mh vr1{mr0}, vr1, vr2
000a50  b6903014  vmax.f.mh vr1{mr2}, vr1, vr3
000a54  9f000002  addli r1, zero, 256
000a58  1f01efce  addli r2, r30, -6288
000a5c  6af110c0  vsrl.p vr2, r1, vr1
000a60  9f000001  addli r1, zero, 128
000a64  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
000a68  6af110c0  vsrl.p vr2, r1, vr1
000a6c  9f008000  addli r1, zero, 64
000a70  63000100  loadli.w zero,  0(r2)
000a74  7e0100e0  vmmov mr2, zero
000a78  17200000  xor zero, zero, zero
000a7c  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
000a80  6af110c0  vsrl.p vr2, r1, vr1
000a84  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
000a88  6af11ac0  vsrl.p vr2, r21, vr1
000a8c  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
000a90  fa900024  vextract.f r1, vr1{mr2}
000a94  0bea0058  neg.f r20, r1
000a98  bb220e00  bneq r28, zero, 168
000a9c  b7e00200  beq r5, zero, 56
000aa0  b3037028  zext_int2long r[7:8], zero
000aa4  9bb02300  slli r1, r7, 2
000aa8  a7834300  addli.d r[8:9], r[8:9], 32
000aac  8b101610  add.s r1, r12, r1
000ab0  13a1d304  setlt.ul r2, r[8:9], r[14:15]
000ab4  9f818000  addli r3, r1, 64
000ab8  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000abc  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
000ac0  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
000ac4  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
000ac8  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000acc  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
000ad0  3b5f01fe  bneq r2, zero, -44
000ad4  9f018fce  addli r3, r30, -6336
000ad8  ebd00100  load.d r[2:3], 0(r3)
000adc  93a01604  setlt.ul r1, r[14:15], r[2:3]
000ae0  37950000  beq r1, zero, 324
000ae4  9bb02200  slli r1, r5, 2
000ae8  1f08bfce  addli r16, r30, -6312
000aec  9f076fce  addli r15, r30, -6352
000af0  6304afce  loadli.w r8,  -6320(r30)
000af4  8b131610  add.s r7, r12, r1
000af8  9f002000  addli r1, zero, 16
000afc  eb510800  load.d r[4:5], 0(r16)
000b00  63800700  loadli.w zero,  0(r15)
000b04  b380102a  zext_int2long r[1:2], r1
000b08  fe0100e0  vmmov mr3, zero
000b0c  17200000  xor zero, zero, zero
000b10  93b03004  setlt.sl r1, r[2:3], r[4:5]
000b14  9f017fce  addli r3, r30, -6344
000b18  42910306  vload_mask16.mz vr2{mr3}, 0(r7)
000b1c  1f818300  addli r2, r7, 64
000b20  63800100  loadli.w zero,  0(r3)
000b24  7e0100e0  vmmov mr2, zero
000b28  17200000  xor zero, zero, zero
000b2c  c2100104  vload_mask16.mz vr1{mr2}, 0(r2)
000b30  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
000b34  46902316  vstore_mask16.mh vr2{mr3}, 0(r7)
000b38  3be30000  bneq r1, zero, 216
000b3c  5b1d0000  j 232
000b40  abf0ffff  lui r1, 1048575
000b44  9bb12c00  slli r3, r25, 2
000b48  1b91f0ff  ori r2, r1, 4095
000b4c  8b113618  sub.s r3, r12, r3
000b50  9b9000fe  ori r1, r1, 4064
000b54  17319101  sll r2, r2, r25
000b58  1f898100  addli r18, r3, 64
000b5c  7e0101e0  vmmov mr2, r2
000b60  1f01ffce  addli r2, r30, -6280
000b64  c2900104  vload_mask16.mz vr1{mr2}, 0(r3)
000b68  eb530100  load.d r[8:9], 0(r2)
000b6c  8ba37c10  add.ul r[8:9], r[26:27], r[8:9]
000b70  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
000b74  978b1300  and r23, r7, r1
000b78  b397fb2e  sext_int2long r[15:16], r23
000b7c  46901114  vstore_mask16.mh vr1{mr2}, 0(r3)
000b80  bfe0bb01  blt.s r23, r27, 56
000b84  b3013028  zext_int2long r[3:4], zero
000b88  9bb02100  slli r1, r3, 2
000b8c  a7814100  addli.d r[4:5], r[4:5], 32
000b90  8b101910  add.s r1, r18, r1
000b94  13b1f104  setlt.sl r2, r[4:5], r[16:17]
000b98  1f8c8000  addli r24, r1, 64
000b9c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000ba0  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
000ba4  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
000ba8  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
000bac  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000bb0  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
000bb4  3b5f01fe  bneq r2, zero, -44
000bb8  93b07704  setlt.sl r1, r[16:17], r[8:9]
000bbc  b7a10000  beq r1, zero, 104
000bc0  abf0ffff  lui r1, 1048575
000bc4  0bb1f318  sub.sl r[3:4], r[8:9], r[16:17]
000bc8  9bb32b00  slli r7, r23, 2
000bcc  9b90f0ff  ori r1, r1, 4095
000bd0  8b137910  add.s r7, r18, r7
000bd4  17b22000  sll r4, r1, r2
000bd8  17241200  xor r8, r4, r1
000bdc  9f102000  addli r1, zero, 17
000be0  b387f02a  zext_int2long r[15:16], r1
000be4  7e0104e0  vmmov mr2, r8
000be8  42910304  vload_mask16.mz vr2{mr2}, 0(r7)
000bec  9330f104  setlt.sl r1, r[3:4], r[16:17]
000bf0  1f012000  addli r2, zero, 16
000bf4  9f818300  addli r3, r7, 64
000bf8  17512400  sra r2, r8, r2
000bfc  fe0101e0  vmmov mr3, r2
000c00  c2900106  vload_mask16.mz vr1{mr3}, 0(r3)
000c04  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
000c08  46902314  vstore_mask16.mh vr2{mr2}, 0(r7)
000c0c  3be00000  bneq r1, zero, 24
000c10  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
000c14  9b400401  srli r1, r8, 16
000c18  1f818300  addli r2, r7, 64
000c1c  7e8100e0  vmmov mr2, r1
000c20  46101114  vstore_mask16.mh vr1{mr2}, 0(r2)
000c24  00a00000  mfence { lm }
000c28  37a10800  beq r17, zero, 72
000c2c  9f030000  addli r7, zero, 0
000c30  1f040300  addli r8, r6, 0
000c34  e300f4ff  loadli.w r1,  -8(r8)
000c38  6341f4ff  loadli.w r2,  -4(r8)
000c3c  e3010400  loadli.w r3,  0(r8)
000c40  63420400  loadli.w r4,  4(r8)
000c44  9fc30300  addli r7, r7, 4
000c48  8f801000  exp.f.rn r1, r1
000c4c  0f012100  exp.f.rn r2, r2
000c50  8f813100  exp.f.rn r3, r3
000c54  0f024200  exp.f.rn r4, r4
000c58  e70f14fe  storeli.w r1, -8(r8)
000c5c  e74f24fe  storeli.w r2, -4(r8)
000c60  67003400  storeli.w r3, 0(r8)
000c64  67404400  storeli.w r4, 4(r8)
000c68  1f042400  addli r8, r8, 16
000c6c  3faf13ff  blt.s r7, r17, -56
000c70  9f038fce  addli r7, r30, -6336
000c74  6302cfce  loadli.w r4,  -6304(r30)
000c78  9f010b00  addli r3, r22, 0
000c7c  ebd00300  load.d r[2:3], 0(r7)
000c80  93801007  setle.u r1, r1, r17
000c84  3bf00000  bneq r1, zero, 28
000c88  e3800100  loadli.w r1,  0(r3)
000c8c  1f72f2ff  addli r4, r4, -1
000c90  8f801000  exp.f.rn r1, r1
000c94  67801100  storeli.w r1, 0(r3)
000c98  9fc10100  addli r3, r3, 4
000c9c  bb3f02fe  bneq r4, zero, -20
000ca0  00a00000  mfence { lm }
000ca4  bb310e00  bneq r28, zero, 108
000ca8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000cac  b7d00200  beq r5, zero, 52
000cb0  b3037028  zext_int2long r[7:8], zero
000cb4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000cb8  9bb02300  slli r1, r7, 2
000cbc  a7834300  addli.d r[8:9], r[8:9], 32
000cc0  8b101610  add.s r1, r12, r1
000cc4  13a1d304  setlt.ul r2, r[8:9], r[14:15]
000cc8  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000ccc  9f808000  addli r1, r1, 64
000cd0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000cd4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000cd8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000cdc  3b7f01fe  bneq r2, zero, -36
000ce0  9f018fce  addli r3, r30, -6336
000ce4  ebd00100  load.d r[2:3], 0(r3)
000ce8  93a01604  setlt.ul r1, r[14:15], r[2:3]
000cec  37e30000  beq r1, zero, 216
000cf0  9bb02200  slli r1, r5, 2
000cf4  8b131610  add.s r7, r12, r1
000cf8  9f009fce  addli r1, r30, -6328
000cfc  42910300  vload_mask16.mz vr2{mr0}, 0(r7)
000d00  63800000  loadli.w zero,  0(r1)
000d04  7e0100e0  vmmov mr2, zero
000d08  17200000  xor zero, zero, zero
000d0c  5b150000  j 168
000d10  abf0ffff  lui r1, 1048575
000d14  9bb12c00  slli r3, r25, 2
000d18  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
000d1c  1b91f0ff  ori r2, r1, 4095
000d20  8b113618  sub.s r3, r12, r3
000d24  9b9000fe  ori r1, r1, 4064
000d28  17319101  sll r2, r2, r25
000d2c  1f8a8100  addli r20, r3, 64
000d30  7e0101e0  vmmov mr2, r2
000d34  1f01ffce  addli r2, r30, -6280
000d38  c2900104  vload_mask16.mz vr1{mr2}, 0(r3)
000d3c  eb530100  load.d r[8:9], 0(r2)
000d40  8bab7c10  add.ul r[24:25], r[26:27], r[8:9]
000d44  17891b00  and r18, r23, r1
000d48  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000d4c  b313792c  sext_int2long r[7:8], r18
000d50  bf40b901  blt.s r18, r27, 48
000d54  b307f028  zext_int2long r[15:16], zero
000d58  9bb02700  slli r1, r15, 2
000d5c  a7874700  addli.d r[16:17], r[16:17], 32
000d60  8b101a10  add.s r1, r20, r1
000d64  13b17704  setlt.sl r2, r[16:17], r[8:9]
000d68  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000d6c  9f808000  addli r1, r1, 64
000d70  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000d74  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000d78  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000d7c  3b7f01fe  bneq r2, zero, -36
000d80  93b07305  setlt.sl r1, r[8:9], r[24:25]
000d84  37810000  beq r1, zero, 64
000d88  abf0ffff  lui r1, 1048575
000d8c  1b81fb01  andi r2, r23, 31
000d90  9b312900  slli r3, r18, 2
000d94  9b90f0ff  ori r1, r1, 4095
000d98  8b133a10  add.s r7, r20, r3
000d9c  17b12000  sll r2, r1, r2
000da0  97201100  xor r1, r2, r1
000da4  7e8100e0  vmmov mr2, r1
000da8  9bc00001  srli r1, r1, 16
000dac  42910304  vload_mask16.mz vr2{mr2}, 0(r7)
000db0  7e8100e0  vmmov mr2, r1
000db4  9f808300  addli r1, r7, 64
000db8  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000dbc  c2910004  vload_mask16.mz vr3{mr2}, 0(r1)
000dc0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000dc4  9f000002  addli r1, zero, 256
000dc8  9f01efce  addli r3, r30, -6288
000dcc  6af110c0  vsrl.p vr2, r1, vr1
000dd0  9f000001  addli r1, zero, 128
000dd4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000dd8  6af110c0  vsrl.p vr2, r1, vr1
000ddc  9f008000  addli r1, zero, 64
000de0  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000de4  6af110c0  vsrl.p vr2, r1, vr1
000de8  ab00803f  lui r1, 260096
000dec  63800100  loadli.w zero,  0(r3)
000df0  7e0100e0  vmmov mr2, zero
000df4  17200000  xor zero, zero, zero
000df8  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000dfc  6af11ac0  vsrl.p vr2, r21, vr1
000e00  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000e04  7a910024  vextract.f r2, vr1{mr2}
000e08  0f8a2018  div.f.rn r20, r1, r2
000e0c  bb220e00  bneq r28, zero, 168
000e10  b7e00200  beq r5, zero, 56
000e14  b3013028  zext_int2long r[3:4], zero
000e18  9bb02100  slli r1, r3, 2
000e1c  a7814100  addli.d r[4:5], r[4:5], 32
000e20  8b101610  add.s r1, r12, r1
000e24  13a1d104  setlt.ul r2, r[4:5], r[14:15]
000e28  9f838000  addli r7, r1, 64
000e2c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000e30  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
000e34  8a101a02  vmul.f.mz.rn vr1{mr1}, r20, vr1
000e38  0a112a02  vmul.f.mz.rn vr2{mr1}, r20, vr2
000e3c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000e40  46902302  vstore_mask16.mz vr2{mr1}, 0(r7)
000e44  3b5f01fe  bneq r2, zero, -44
000e48  9f018fce  addli r3, r30, -6336
000e4c  ebd00100  load.d r[2:3], 0(r3)
000e50  93a01604  setlt.ul r1, r[14:15], r[2:3]
000e54  37d900fc  beq r1, zero, -1452
000e58  9bb02200  slli r1, r5, 2
000e5c  9f07bfce  addli r15, r30, -6312
000e60  6304afce  loadli.w r8,  -6320(r30)
000e64  8b131610  add.s r7, r12, r1
000e68  9f002000  addli r1, zero, 16
000e6c  1f066fce  addli r12, r30, -6352
000e70  ebd10700  load.d r[4:5], 0(r15)
000e74  b380102a  zext_int2long r[1:2], r1
000e78  63000600  loadli.w zero,  0(r12)
000e7c  93b03004  setlt.sl r1, r[2:3], r[4:5]
000e80  9f017fce  addli r3, r30, -6344
000e84  1f818300  addli r2, r7, 64
000e88  fe0100e0  vmmov mr3, zero
000e8c  17200000  xor zero, zero, zero
000e90  42910306  vload_mask16.mz vr2{mr3}, 0(r7)
000e94  63800100  loadli.w zero,  0(r3)
000e98  7e0100e0  vmmov mr2, zero
000e9c  17200000  xor zero, zero, zero
000ea0  c2100104  vload_mask16.mz vr1{mr2}, 0(r2)
000ea4  0a112a02  vmul.f.mz.rn vr2{mr1}, r20, vr2
000ea8  46902316  vstore_mask16.mh vr2{mr3}, 0(r7)
000eac  bba700fc  bneq r1, zero, -1560
000eb0  5b3fffff  j -1544
000eb4  abf0ffff  lui r1, 1048575
000eb8  9bb12c00  slli r3, r25, 2
000ebc  1b91f0ff  ori r2, r1, 4095
000ec0  8b113618  sub.s r3, r12, r3
000ec4  9b9000fe  ori r1, r1, 4064
000ec8  17319101  sll r2, r2, r25
000ecc  1f868100  addli r12, r3, 64
000ed0  7e0101e0  vmmov mr2, r2
000ed4  1f01ffce  addli r2, r30, -6280
000ed8  c2900104  vload_mask16.mz vr1{mr2}, 0(r3)
000edc  eb530100  load.d r[8:9], 0(r2)
000ee0  8ba37c10  add.ul r[8:9], r[26:27], r[8:9]
000ee4  8a101a02  vmul.f.mz.rn vr1{mr1}, r20, vr1
000ee8  17891300  and r18, r7, r1
000eec  b317f92c  sext_int2long r[15:16], r18
000ef0  46901114  vstore_mask16.mh vr1{mr2}, 0(r3)
000ef4  bf60b901  blt.s r18, r27, 56
000ef8  b3013028  zext_int2long r[3:4], zero
000efc  9bb02100  slli r1, r3, 2
000f00  a7814100  addli.d r[4:5], r[4:5], 32
000f04  8b101610  add.s r1, r12, r1
000f08  13b1f104  setlt.sl r2, r[4:5], r[16:17]
000f0c  9f8b8000  addli r23, r1, 64
000f10  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000f14  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
000f18  8a101a02  vmul.f.mz.rn vr1{mr1}, r20, vr1
000f1c  0a112a02  vmul.f.mz.rn vr2{mr1}, r20, vr2
000f20  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000f24  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
000f28  3b5f01fe  bneq r2, zero, -44
000f2c  93b07704  setlt.sl r1, r[16:17], r[8:9]
000f30  b7e500fc  beq r1, zero, -1672
000f34  abf0ffff  lui r1, 1048575
000f38  0bb1f318  sub.sl r[3:4], r[8:9], r[16:17]
000f3c  9b332900  slli r7, r18, 2
000f40  9b90f0ff  ori r1, r1, 4095
000f44  8b137610  add.s r7, r12, r7
000f48  17b22000  sll r4, r1, r2
000f4c  17241200  xor r8, r4, r1
000f50  9f102000  addli r1, zero, 17
000f54  b387f02a  zext_int2long r[15:16], r1
000f58  7e0104e0  vmmov mr2, r8
000f5c  42910304  vload_mask16.mz vr2{mr2}, 0(r7)
000f60  9330f104  setlt.sl r1, r[3:4], r[16:17]
000f64  1f012000  addli r2, zero, 16
000f68  9f818300  addli r3, r7, 64
000f6c  17512400  sra r2, r8, r2
000f70  fe0101e0  vmmov mr3, r2
000f74  c2900106  vload_mask16.mz vr1{mr3}, 0(r3)
000f78  0a112a02  vmul.f.mz.rn vr2{mr1}, r20, vr2
000f7c  46902314  vstore_mask16.mh vr2{mr2}, 0(r7)
000f80  37d400fc  beq r1, zero, -1772
000f84  db24ffff  j -1756
000f88  9f003fce  addli r1, r30, -6376
000f8c  00a00000  mfence { lm }
000f90  1f720000  addli r4, zero, 7
000f94  9f330000  addli r7, zero, 3
000f98  ebd70000  load.d r[16:17], 0(r1)
000f9c  bfdeb7fb  blt.s r15, r27, -2124
000fa0  1f030fcf  addli r6, r30, -6272
000fa4  1f050fcf  addli r10, r30, -6272
000fa8  9f050000  addli r11, zero, 0
000fac  9f008300  addli r1, r6, 64
000fb0  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
000fb4  9f854500  addli r11, r11, 32
000fb8  1f030301  addli r6, r6, 128
000fbc  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000fc0  ab000100  lui r1, 16
000fc4  eaa11002  vand.u.mz vr3{mr1}, r1, vr1
000fc8  6aa22002  vand.u.mz vr4{mr1}, r1, vr2
000fcc  ab800000  lui r1, 8
000fd0  f2213002  veq.u.mz mr3{mr1}, zero, vr3
000fd4  7e800140  vmnot mr0, mr3
000fd8  72214002  veq.u.mz mr2{mr1}, zero, vr4
000fdc  92a01010  vadd.u.mh vr1{mr0}, r1, vr1
000fe0  7e000140  vmnot mr0, mr2
000fe4  12a12010  vadd.u.mh vr2{mr0}, r1, vr2
000fe8  ab700000  lui r1, 7
000fec  9b90f0ff  ori r1, r1, 4095
000ff0  92a01016  vadd.u.mh vr1{mr3}, r1, vr1
000ff4  12a12014  vadd.u.mh vr2{mr2}, r1, vr2
000ff8  eab114c2  vsrl.s.mz vr3{mr1}, r9, vr1
000ffc  6ab224c2  vsrl.s.mz vr4{mr1}, r9, vr2
001000  ab00803f  lui r1, 260096
001004  2bf180ff  lui r2, 1046543
001008  abf17f00  lui r3, 2047
00100c  9b91f1ff  ori r3, r3, 4095
001010  eaa13022  vor.u.mz vr3{mr1}, r1, vr3
001014  6aa24022  vor.u.mz vr4{mr1}, r1, vr4
001018  1b1101f8  ori r2, r2, 3968
00101c  eaa01102  vand.u.mz vr1{mr1}, r3, vr1
001020  6aa12102  vand.u.mz vr2{mr1}, r3, vr2
001024  86910120  vfloat2fp16_l.rz vr3, vr3
001028  eaa01022  vor.u.mz vr1{mr1}, r1, vr1
00102c  6aa12022  vor.u.mz vr2{mr1}, r1, vr2
001030  ab007f00  lui r1, 2032
001034  86510220  vfloat2fp16_h.rz vr3, vr4
001038  9b90f007  ori r1, r1, 127
00103c  86900020  vfloat2fp16_l.rz vr1, vr1
001040  ea2132a2  vsll.u.mz vr3{mr1}, r4, vr3
001044  86500120  vfloat2fp16_h.rz vr1, vr2
001048  6a213102  vand.u.mz vr2{mr1}, r2, vr3
00104c  eaa013c2  vsrl.u.mz vr1{mr1}, r7, vr1
001050  eaa01002  vand.u.mz vr1{mr1}, r1, vr1
001054  eea02022  vor.u.mz vr1{mr1}, vr1, vr2
001058  46001502  vstore.mz vr1{mr1}, 0(r10)
00105c  1f058500  addli r10, r10, 64
001060  3fbdf5fe  blt.s r11, r15, -180
001064  dbddfeff  j -2324
001068  8b903220  mul.s r1, r5, r3
00106c  ab010000  lui r3, 0
001070  1bb32200  slli r6, r5, 2
001074  80350002  core_id r11
001078  b380102a  zext_int2long r[1:2], r1
00107c  9f810100  addli r3, r3, 0
001080  93a0d004  setlt.ul r1, r[2:3], r[14:15]
001084  1bb12500  slli r2, r11, 2
001088  0b123310  add.s r4, r6, r3
00108c  0b1a3110  add.s r20, r2, r3
001090  ab0180ff  lui r3, 1046528
001094  8b1b2210  add.s r23, r4, r2
001098  67034fce  storeli.w r4, -6352(r30)
00109c  73603a00  stores.w r3, 0(r20)
0010a0  73e00b00  stores.w zero, 0(r23)
0010a4  37f30000  beq r1, zero, 220
0010a8  b3001428  zext_int2long r[1:2], r8
0010ac  3383632e  zext_int2long r[6:7], r7
0010b0  8f911476  mod.sl r[3:4], r[9:10], r[1:2]
0010b4  8f901462  div.sl r[1:2], r[9:10], r[1:2]
0010b8  13343304  setlt.sl r8, r[7:8], r[4:5]
0010bc  8b313340  min.sl r[4:5], r[7:8], r[4:5]
0010c0  8bb16050  fmac.sl r[4:5], r[2:3], r[7:8]
0010c4  9f035fce  addli r7, r30, -6360
0010c8  1f039fce  addli r6, r30, -6328
0010cc  3306c428  zext_int2long r[12:13], r8
0010d0  8ba0c010  add.ul r[2:3], r[2:3], r[13:14]
0010d4  8ba03010  add.ul r[2:3], r[2:3], r[4:5]
0010d8  8bb19140  min.sl r[4:5], r[4:5], r[10:11]
0010dc  8bb09040  min.sl r[2:3], r[2:3], r[10:11]
0010e0  73303300  store.d r[4:5], 0(r6)
0010e4  73b01300  store.d r[2:3], 0(r7)
0010e8  93b03006  setle.sl r1, r[2:3], r[4:5]
0010ec  3ba30018  bneq r1, zero, 12488
0010f0  9f078fce  addli r15, r30, -6336
0010f4  1f0c4000  addli r24, zero, 32
0010f8  1f160000  addli r12, zero, 1
0010fc  ebd40700  load.d r[10:11], 0(r15)
001100  b3013c28  zext_int2long r[3:4], r24
001104  a7f03400  addli.d r[2:3], r[10:11], 31
001108  8f903062  div.sl r[1:2], r[1:2], r[3:4]
00110c  b381322a  zext_int2long r[3:4], r5
001110  8f923072  mod.sl r[5:6], r[1:2], r[3:4]
001114  8f903062  div.sl r[1:2], r[1:2], r[3:4]
001118  b381352e  zext_int2long r[3:4], r11
00111c  93b35104  setlt.sl r7, r[4:5], r[6:7]
001120  8bb25140  min.sl r[6:7], r[4:5], r[6:7]
001124  8bb23050  fmac.sl r[6:7], r[2:3], r[4:5]
001128  9f510000  addli r3, zero, 5
00112c  b383732e  zext_int2long r[7:8], r7
001130  8ba07010  add.ul r[2:3], r[2:3], r[8:9]
001134  8ba05010  add.ul r[2:3], r[2:3], r[6:7]
001138  17b23202  sll.d r[5:6], r[6:7], r3
00113c  97b03002  sll.d r[2:3], r[2:3], r3
001140  8b319240  min.sl r[4:5], r[5:6], r[10:11]
001144  9f02efce  addli r5, r30, -6288
001148  0bb99040  min.sl r[19:20], r[2:3], r[10:11]
00114c  9f100000  addli r1, zero, 1
001150  73b03200  store.d r[4:5], 0(r5)
001154  8b363918  sub.sl r[14:15], r[19:20], r[4:5]
001158  b380102a  zext_int2long r[1:2], r1
00115c  93b01604  setlt.sl r1, r[14:15], r[2:3]
001160  bb85000e  bneq r1, zero, 7520
001164  9f00000c  addli r1, zero, 1536
001168  b380102a  zext_int2long r[1:2], r1
00116c  8f91165e  div.ul r[3:4], r[13:14], r[1:2]
001170  a3b10102  slli.d r[4:5], r[4:5], 32
001174  a3d10102  srai.d r[4:5], r[4:5], 32
001178  8bb11120  mul.sl r[4:5], r[4:5], r[2:3]
00117c  5ba90300  j 7496
001180  9f00000c  addli r1, zero, 1536
001184  27f1f60b  addli.d r[3:4], r[14:15], 1535
001188  3386c02a  zext_int2long r[12:13], r1
00118c  0f11c15c  div.ul r[2:3], r[2:3], r[12:13]
001190  9f70f1ff  addli r1, r2, -1
001194  97001100  and r1, r2, r1
001198  37e20000  beq r1, zero, 152
00119c  9b401100  srli r1, r2, 1
0011a0  97101100  or r1, r2, r1
0011a4  1bc12000  srli r2, r1, 2
0011a8  97902000  or r1, r1, r2
0011ac  1bc14000  srli r2, r1, 4
0011b0  97902000  or r1, r1, r2
0011b4  1bc18000  srli r2, r1, 8
0011b8  97902000  or r1, r1, r2
0011bc  2bf1ffff  lui r2, 1048575
0011c0  9bc10001  srli r3, r1, 16
0011c4  1b11f1ff  ori r2, r2, 4095
0011c8  97903000  or r1, r1, r3
0011cc  ab515555  lui r3, 349525
0011d0  97a02000  xor r1, r1, r2
0011d4  1b915155  ori r2, r3, 1365
0011d8  9bc11000  srli r3, r1, 1
0011dc  17812100  and r2, r3, r2
0011e0  ab313333  lui r3, 209715
0011e4  8b902018  sub.s r1, r1, r2
0011e8  1b913133  ori r2, r3, 819
0011ec  9bc12000  srli r3, r1, 2
0011f0  97802000  and r1, r1, r2
0011f4  17812100  and r2, r3, r2
0011f8  ab010f0f  lui r3, 61680
0011fc  8b902010  add.s r1, r1, r2
001200  9b91f1f0  ori r3, r3, 3855
001204  1bc14000  srli r2, r1, 4
001208  8b902010  add.s r1, r1, r2
00120c  2b010101  lui r2, 4112
001210  1b111110  ori r2, r2, 257
001214  97803000  and r1, r1, r3
001218  8b902020  mul.s r1, r1, r2
00121c  1f014000  addli r2, zero, 32
001220  9bc08001  srli r1, r1, 24
001224  8b101118  sub.s r1, r2, r1
001228  1f110000  addli r2, zero, 1
00122c  17311100  sll r2, r2, r1
001230  8b922230  div.s r5, r5, r2
001234  1f02cfce  addli r4, r30, -6304
001238  73302200  store.d r[3:4], 0(r4)
00123c  8b105420  mul.s r1, r8, r5
001240  8b915538  mod.s r3, r11, r5
001244  b390102a  sext_int2long r[1:2], r1
001248  0f961470  mod.sl r[13:14], r[10:11], r[2:3]
00124c  8f901462  div.sl r[1:2], r[9:10], r[1:2]
001250  8b133450  fmac.s r7, r8, r3
001254  670d3fcc  storeli.w r3, -6448(r30)
001258  9f01afce  addli r3, r30, -6320
00125c  b383732e  zext_int2long r[7:8], r7
001260  13b7c304  setlt.sl r14, r[8:9], r[13:14]
001264  0bb6c340  min.sl r[13:14], r[8:9], r[13:14]
001268  0bb67050  fmac.sl r[13:14], r[2:3], r[8:9]
00126c  8b339640  min.sl r[8:9], r[13:14], r[10:11]
001270  3307e72c  zext_int2long r[14:15], r14
001274  8ba0e010  add.ul r[2:3], r[2:3], r[15:16]
001278  8ba0c010  add.ul r[2:3], r[2:3], r[13:14]
00127c  8bb09040  min.sl r[2:3], r[2:3], r[10:11]
001280  73b01100  store.d r[2:3], 0(r3)
001284  93b07006  setle.sl r1, r[2:3], r[8:9]
001288  bbbc0016  bneq r1, zero, 12076
00128c  1f078fce  addli r14, r30, -6336
001290  9f044000  addli r9, zero, 32
001294  9f09cfce  addli r19, r30, -6304
001298  8b975530  div.s r15, r11, r5
00129c  1f094000  addli r18, zero, 32
0012a0  eb510700  load.d r[4:5], 0(r14)
0012a4  b384942a  zext_int2long r[9:10], r9
0012a8  a7f03100  addli.d r[2:3], r[4:5], 31
0012ac  8f909062  div.sl r[1:2], r[1:2], r[9:10]
0012b0  ebd40900  load.d r[10:11], 0(r19)
0012b4  b394942a  sext_int2long r[9:10], r9
0012b8  0f969070  mod.sl r[13:14], r[2:3], r[10:11]
0012bc  8f909062  div.sl r[1:2], r[1:2], r[9:10]
0012c0  b394972e  sext_int2long r[9:10], r15
0012c4  93b5c404  setlt.sl r11, r[10:11], r[13:14]
0012c8  0bb6c440  min.sl r[13:14], r[10:11], r[13:14]
0012cc  0bb69050  fmac.sl r[13:14], r[2:3], r[10:11]
0012d0  3388052f  zext_int2long r[16:17], r11
0012d4  9f550000  addli r11, zero, 5
0012d8  8ba00011  add.ul r[2:3], r[2:3], r[17:18]
0012dc  9734b602  sll.d r[10:11], r[13:14], r11
0012e0  8ba0c010  add.ul r[2:3], r[2:3], r[13:14]
0012e4  97b0b002  sll.d r[2:3], r[2:3], r11
0012e8  8bb53440  min.sl r[12:13], r[10:11], r[4:5]
0012ec  8bb43040  min.sl r[10:11], r[2:3], r[4:5]
0012f0  93b0b406  setle.sl r1, r[10:11], r[12:13]
0012f4  3b8b0016  bneq r1, zero, 11968
0012f8  8bb6b418  sub.sl r[14:15], r[10:11], r[12:13]
0012fc  2bf1ffff  lui r2, 1048575
001300  1f0b0fce  addli r22, r30, -6400
001304  6302afcd  loadli.w r4,  -6448(r30)
001308  9f4bffcd  addli r23, r30, -6404
00130c  9f0a0fff  addli r21, r30, -128
001310  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001314  9ff0f6ff  addli r1, r13, -1
001318  1b1801fe  ori r16, r2, 4064
00131c  9b88f601  andi r17, r13, 31
001320  9bbc1600  slli r25, r13, 1
001324  1b3e2200  slli r28, r4, 2
001328  8b902031  div.s r1, r1, r18
00132c  1b19f1ff  ori r18, r2, 4095
001330  17880601  and r16, r13, r16
001334  97391901  sll r19, r18, r17
001338  1b3a2800  slli r20, r16, 2
00133c  9f080fcf  addli r17, r30, -6272
001340  97a92901  xor r19, r19, r18
001344  8b914811  add.s r3, r17, r20
001348  7e8009e0  vmmov mr0, r19
00134c  1bca0901  srli r20, r19, 16
001350  e7073fce  storeli.w r3, -6280(r30)
001354  9f818100  addli r3, r3, 64
001358  9f090200  addli r19, r4, 0
00135c  7e0000a0  vmmov zero, mr0
001360  67000b00  storeli.w zero, 0(r22)
001364  7e000ae0  vmmov mr0, r20
001368  17200000  xor zero, zero, zero
00136c  67073fce  storeli.w r3, -6288(r30)
001370  8b995750  fmac.s r19, r15, r5
001374  1bba2200  slli r20, r5, 2
001378  7e0000a0  vmmov zero, mr0
00137c  67800b00  storeli.w zero, 0(r23)
001380  ab010000  lui r3, 0
001384  9bb72900  slli r15, r19, 2
001388  9b19c1ff  ori r19, r2, 4092
00138c  17200000  xor zero, zero, zero
001390  e74ecfcd  storeli.w r28, -6420(r30)
001394  9f810100  addli r3, r3, 0
001398  178d3601  and r26, r13, r19
00139c  e3096fce  loadli.w r19,  -6352(r30)
0013a0  9f1d0000  addli r27, zero, 1
0013a4  1f004fce  addli zero, r30, -6368
0013a8  1f8c0100  addli r24, r3, 0
0013ac  17bbb503  sll.d r[23:24], r[12:13], r27
0013b0  fe810de0  vmmov mr3, r27
0013b4  8b918711  add.s r3, r15, r24
0013b8  e7033fce  storeli.w r3, -6344(r30)
0013bc  8b914a11  add.s r3, r21, r20
0013c0  e70c3fcc  storeli.w r3, -6456(r30)
0013c4  9f818a00  addli r3, r21, 64
0013c8  e70f3fcc  storeli.w r3, -6408(r30)
0013cc  8b91f910  add.s r3, r19, r15
0013d0  9f07cfcd  addli r15, r30, -6432
0013d4  e7023fce  storeli.w r3, -6360(r30)
0013d8  9f818900  addli r3, r19, 64
0013dc  67453fcc  storeli.w r3, -6572(r30)
0013e0  ebd10700  load.d r[4:5], 0(r15)
0013e4  97a72001  xor r15, r1, r18
0013e8  8ba16111  add.ul r[4:5], r[4:5], r[23:24]
0013ec  73303000  store.d r[4:5], 0(zero)
0013f0  17200000  xor zero, zero, zero
0013f4  1f00bfcd  addli zero, r30, -6440
0013f8  eb510000  load.d r[4:5], 0(zero)
0013fc  17200000  xor zero, zero, zero
001400  8ba16111  add.ul r[4:5], r[4:5], r[23:24]
001404  1f0b3fce  addli r22, r30, -6376
001408  9f7b0000  addli r23, zero, 7
00140c  73303b00  store.d r[4:5], 0(r22)
001410  9f810901  addli r3, r19, 128
001414  1f2b1000  addli r22, zero, 10
001418  67053fcc  storeli.w r3, -6576(r30)
00141c  9bb15700  slli r3, r15, 5
001420  8b17b810  add.s r15, r16, r11
001424  8b15bd10  add.s r11, r26, r11
001428  1bb67000  slli r12, r1, 7
00142c  9bb06000  slli r1, r1, 6
001430  8b901810  add.s r1, r17, r1
001434  e70d3fcc  storeli.w r3, -6440(r30)
001438  8b91c810  add.s r3, r17, r12
00143c  1f068000  addli r12, zero, 64
001440  e70b1fcc  storeli.w r1, -6472(r30)
001444  8b909718  sub.s r1, r15, r9
001448  670c3fcc  storeli.w r3, -6464(r30)
00144c  9f01dfce  addli r3, r30, -6296
001450  9f870c00  addli r15, r25, 0
001454  670f1fcc  storeli.w r1, -6416(r30)
001458  8b909518  sub.s r1, r11, r9
00145c  9b1401f8  ori r9, r2, 3968
001460  1b1101ff  ori r2, r2, 4080
001464  e704ffce  storeli.w r15, -6328(r30)
001468  67011fce  storeli.w r1, -6384(r30)
00146c  9bb02600  slli r1, r13, 2
001470  97849000  and r9, r1, r9
001474  97802000  and r1, r1, r2
001478  0b118e11  add.s r2, r28, r24
00147c  331c8829  sext_int2long r[24:25], r16
001480  8b901810  add.s r1, r17, r1
001484  670b2fcc  storeli.w r2, -6480(r30)
001488  0b9e9810  add.s r28, r17, r9
00148c  9f340000  addli r9, zero, 3
001490  7e8001a0  vmmov zero, mr3
001494  e7001fce  storeli.w r1, -6392(r30)
001498  8b106110  add.s r1, r2, r6
00149c  e70a1fcc  storeli.w r1, -6488(r30)
0014a0  9f808901  addli r1, r19, 192
0014a4  e7441fcc  storeli.w r1, -6580(r30)
0014a8  9b908800  ori r1, r17, 8
0014ac  670e1fcc  storeli.w r1, -6432(r30)
0014b0  b390122a  sext_int2long r[1:2], r5
0014b4  73b01100  store.d r[2:3], 0(r3)
0014b8  9f00bfce  addli r1, r30, -6312
0014bc  67800000  storeli.w zero, 0(r1)
0014c0  17200000  xor zero, zero, zero
0014c4  db090000  j 76
0014c8  1f03afce  addli r6, r30, -6320
0014cc  00a00000  mfence { lm }
0014d0  ab0000f0  lui r1, 983040
0014d4  a7930300  addli.d r[8:9], r[8:9], 1
0014d8  1f093fce  addli r18, r30, -6376
0014dc  e3079fce  loadli.w r15,  -6328(r30)
0014e0  6b510300  load.d r[3:4], 0(r6)
0014e4  97901700  or r1, r15, r1
0014e8  13b12304  setlt.sl r2, r[8:9], r[3:4]
0014ec  eb510900  load.d r[4:5], 0(r18)
0014f0  8ba1a110  add.ul r[4:5], r[4:5], r[11:12]
0014f4  ffb01101  s_lm2gm r1, r17, 0(r[4:5])
0014f8  9f00bfce  addli r1, r30, -6312
0014fc  00a00200  mfence { lm, gm }
001500  63800000  loadli.w zero,  0(r1)
001504  fe0100e0  vmmov mr3, zero
001508  17200000  xor zero, zero, zero
00150c  b7220116  beq r2, zero, 11432
001510  1f028fce  addli r4, r30, -6336
001514  eb500200  load.d r[2:3], 0(r4)
001518  2b0300f0  lui r6, 983040
00151c  8bb01320  mul.sl r[2:3], r[8:9], r[2:3]
001520  17b5b003  sll.d r[11:12], r[2:3], r27
001524  97906700  or r1, r15, r6
001528  1f034fce  addli r6, r30, -6368
00152c  6b510300  load.d r[3:4], 0(r6)
001530  0b29a110  add.ul r[19:20], r[3:4], r[11:12]
001534  ff201901  l_gm2lm r1, r17, 0(r[19:20])
001538  00a00200  mfence { lm, gm }
00153c  abf0ffff  lui r1, 1048575
001540  9b9020fe  ori r1, r1, 4066
001544  bfe01600  blt.s r13, r1, 56
001548  63037fcd  loadli.w r6,  -6472(r30)
00154c  e3078fcd  loadli.w r15,  -6464(r30)
001550  e309bfcd  loadli.w r19,  -6440(r30)
001554  c2000302  vload.mz vr1{mr1}, 0(r6)
001558  66411080  vmerge_l.hf vr2, vr0, vr1
00155c  9f808700  addli r1, r15, 64
001560  46902702  vstore_mask16.mz vr2{mr1}, 0(r15)
001564  9f894900  addli r19, r19, 32
001568  9f8707ff  addli r15, r15, -128
00156c  1f0383ff  addli r6, r6, -64
001570  e64110a0  vmerge_h.hf vr3, vr0, vr1
001574  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
001578  3bff09fe  bneq r19, zero, -36
00157c  2b0380ff  lui r6, 1046528
001580  00a00000  mfence { lm }
001584  3f1ab801  blt.s r16, r27, 644
001588  ab0080ff  lui r1, 1046528
00158c  33092029  zext_int2long r[18:19], zero
001590  1f024000  addli r4, zero, 32
001594  9f070001  addli r15, zero, 128
001598  ea900022  vor.f.mz vr1{mr1}, r1, vr0
00159c  9b302900  slli r1, r18, 2
0015a0  27094900  addli.d r[19:20], r[19:20], 32
0015a4  8b901810  add.s r1, r17, r1
0015a8  13318905  setlt.sl r2, r[19:20], r[25:26]
0015ac  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0015b0  9f808000  addli r1, r1, 64
0015b4  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0015b8  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
0015bc  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
0015c0  3b7f01fe  bneq r2, zero, -36
0015c4  1333dc04  setlt.sl r6, r[25:26], r[14:15]
0015c8  b7700300  beq r6, zero, 60
0015cc  1f010fce  addli r2, r30, -6400
0015d0  e300ffce  loadli.w r1,  -6280(r30)
0015d4  9f41ffcd  addli r3, r30, -6404
0015d8  63000100  loadli.w zero,  0(r2)
0015dc  7e0000e0  vmmov mr0, zero
0015e0  17200000  xor zero, zero, zero
0015e4  42910000  vload_mask16.mz vr2{mr0}, 0(r1)
0015e8  63800100  loadli.w zero,  0(r3)
0015ec  e300efce  loadli.w r1,  -6288(r30)
0015f0  7e0100e0  vmmov mr2, zero
0015f4  17200000  xor zero, zero, zero
0015f8  c2910004  vload_mask16.mz vr3{mr2}, 0(r1)
0015fc  b6902010  vmax.f.mh vr1{mr0}, vr1, vr2
001600  b6903014  vmax.f.mh vr1{mr2}, vr1, vr3
001604  9f00dfce  addli r1, r30, -6296
001608  63017fce  loadli.w r2,  -6344(r30)
00160c  6bd90000  load.d r[19:20], 0(r1)
001610  9f000002  addli r1, zero, 256
001614  6af110c0  vsrl.p vr2, r1, vr1
001618  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
00161c  6af117c0  vsrl.p vr2, r15, vr1
001620  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
001624  6a7116c0  vsrl.p vr2, r12, vr1
001628  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
00162c  6a7112c0  vsrl.p vr2, r4, vr1
001630  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
001634  fa900026  vextract.f r1, vr1{mr3}
001638  73601100  stores.w r1, 0(r2)
00163c  00200100  mfence { sm }
001640  37d1c200  beq r5, r12, 84
001644  9f701000  addli r1, zero, 15
001648  00300000  sync_local
00164c  3fa15000  blt.s r1, r5, 72
001650  9f100002  addli r1, zero, 257
001654  670a1ffe  storeli.w r1, -96(r30)
001658  9f102022  addli r1, zero, 4369
00165c  67091ffe  storeli.w r1, -112(r30)
001660  ab500000  lui r1, 5
001664  9b905055  ori r1, r1, 1365
001668  e7081ffe  storeli.w r1, -120(r30)
00166c  abf00000  lui r1, 15
001670  63019fcd  loadli.w r2,  -6456(r30)
001674  e301afcd  loadli.w r3,  -6448(r30)
001678  9b90f0ff  ori r1, r1, 4095
00167c  67481ffe  storeli.w r1, -124(r30)
001680  63010100  loadli.w r2,  0(r2)
001684  17313100  sll r2, r2, r3
001688  97001100  and r1, r2, r1
00168c  80a10004  csr_set csr3, r1
001690  00d00100  sync_group
001694  9f500000  addli r1, zero, 5
001698  3f811200  blt.s r5, r1, 64
00169c  9f01cfce  addli r3, r30, -6304
0016a0  ab0780ff  lui r15, 1046528
0016a4  ebd00100  load.d r[2:3], 0(r3)
0016a8  bff6b003  blt.s r1, r27, 1468
0016ac  9f01cfce  addli r3, r30, -6304
0016b0  ab0780ff  lui r15, 1046528
0016b4  63096fcd  loadli.w r18,  -6480(r30)
0016b8  ebd00100  load.d r[2:3], 0(r3)
0016bc  9f890000  addli r19, r1, 0
0016c0  ef400900  loads.w r1, 0(r18)
0016c4  9ff9f9ff  addli r19, r19, -1
0016c8  0b194911  add.s r18, r18, r20
0016cc  8be71748  max.f r15, r15, r1
0016d0  bbcf09fe  bneq r19, zero, -16
0016d4  5bb20000  j 1424
0016d8  9f200000  addli r1, zero, 2
0016dc  b380102a  zext_int2long r[1:2], r1
0016e0  93201900  seteq.d r1, r[19:20], r[2:3]
0016e4  bbf40000  bneq r1, zero, 316
0016e8  9f400000  addli r1, zero, 4
0016ec  b380102a  zext_int2long r[1:2], r1
0016f0  93201902  setneq.d r1, r[19:20], r[2:3]
0016f4  3bd40002  bneq r1, zero, 1300
0016f8  ea200002  vand.u.mz vr1{mr1}, zero, vr0
0016fc  9bb00d00  slli r1, r27, 0
001700  7e8000e0  vmmov mr0, r1
001704  9bb01d00  slli r1, r27, 1
001708  ea201030  vor.u.mh vr1{mr0}, zero, vr1
00170c  7e8000e0  vmmov mr0, r1
001710  9f002000  addli r1, zero, 16
001714  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001718  9bb02d00  slli r1, r27, 2
00171c  7e8000e0  vmmov mr0, r1
001720  9bb03d00  slli r1, r27, 3
001724  ea201230  vor.u.mh vr1{mr0}, r4, vr1
001728  7e8000e0  vmmov mr0, r1
00172c  9f006000  addli r1, zero, 48
001730  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001734  9bb04d00  slli r1, r27, 4
001738  7e8000e0  vmmov mr0, r1
00173c  9bb05d00  slli r1, r27, 5
001740  ea201630  vor.u.mh vr1{mr0}, r12, vr1
001744  7e8000e0  vmmov mr0, r1
001748  9f00a000  addli r1, zero, 80
00174c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001750  9bb06d00  slli r1, r27, 6
001754  7e8000e0  vmmov mr0, r1
001758  9f00c000  addli r1, zero, 96
00175c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001760  9bb07d00  slli r1, r27, 7
001764  7e8000e0  vmmov mr0, r1
001768  9f00e000  addli r1, zero, 112
00176c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001770  9bb08d00  slli r1, r27, 8
001774  7e8000e0  vmmov mr0, r1
001778  9bb09d00  slli r1, r27, 9
00177c  eaa01730  vor.u.mh vr1{mr0}, r15, vr1
001780  7e8000e0  vmmov mr0, r1
001784  9f002001  addli r1, zero, 144
001788  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00178c  9bb0ad00  slli r1, r27, 10
001790  7e8000e0  vmmov mr0, r1
001794  9f004001  addli r1, zero, 160
001798  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00179c  9bb0bd00  slli r1, r27, 11
0017a0  7e8000e0  vmmov mr0, r1
0017a4  9f006001  addli r1, zero, 176
0017a8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0017ac  9bb0cd00  slli r1, r27, 12
0017b0  7e8000e0  vmmov mr0, r1
0017b4  9f008001  addli r1, zero, 192
0017b8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0017bc  9bb0dd00  slli r1, r27, 13
0017c0  7e8000e0  vmmov mr0, r1
0017c4  9f00a001  addli r1, zero, 208
0017c8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0017cc  9bb0ed00  slli r1, r27, 14
0017d0  7e8000e0  vmmov mr0, r1
0017d4  9f00c001  addli r1, zero, 224
0017d8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0017dc  ab800000  lui r1, 8
0017e0  9f800000  addli r1, r1, 0
0017e4  7e8000e0  vmmov mr0, r1
0017e8  9f00e001  addli r1, zero, 240
0017ec  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0017f0  e340dfcd  loadli.w r1,  -6420(r30)
0017f4  92b01002  vadd.s.mz vr1{mr1}, r1, vr1
0017f8  ab000000  lui r1, 0
0017fc  9f800000  addli r1, r1, 0
001800  e2b01002  vgathers_mask16.mz vr1{mr1}, vr1{r1}
001804  5b870000  j 1080
001808  ea100322  vor.f.mz vr1{mr1}, r6, vr0
00180c  1f024000  addli r4, zero, 32
001810  9f070001  addli r15, zero, 128
001814  1333dc04  setlt.sl r6, r[25:26], r[14:15]
001818  bb5603fe  bneq r6, zero, -588
00181c  5bbdffff  j -536
001820  9bb00d00  slli r1, r27, 0
001824  ea200002  vand.u.mz vr1{mr1}, zero, vr0
001828  1f414fcd  addli r2, r30, -6492
00182c  9f014fcd  addli r3, r30, -6496
001830  1f493fcd  addli r18, r30, -6500
001834  9f093fcd  addli r19, r30, -6504
001838  7e8000e0  vmmov mr0, r1
00183c  9bb01d00  slli r1, r27, 1
001840  7e0000a0  vmmov zero, mr0
001844  67000100  storeli.w zero, 0(r2)
001848  17200000  xor zero, zero, zero
00184c  ea201030  vor.u.mh vr1{mr0}, zero, vr1
001850  7e8000e0  vmmov mr0, r1
001854  7e0000a0  vmmov zero, mr0
001858  67800100  storeli.w zero, 0(r3)
00185c  17200000  xor zero, zero, zero
001860  9f001000  addli r1, zero, 8
001864  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001868  9bb02d00  slli r1, r27, 2
00186c  7e8000e0  vmmov mr0, r1
001870  7e0000a0  vmmov zero, mr0
001874  67000900  storeli.w zero, 0(r18)
001878  17200000  xor zero, zero, zero
00187c  9f002000  addli r1, zero, 16
001880  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001884  9bb03d00  slli r1, r27, 3
001888  7e8000e0  vmmov mr0, r1
00188c  7e0000a0  vmmov zero, mr0
001890  67800900  storeli.w zero, 0(r19)
001894  17200000  xor zero, zero, zero
001898  9f003000  addli r1, zero, 24
00189c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0018a0  9bb04d00  slli r1, r27, 4
0018a4  7e8000e0  vmmov mr0, r1
0018a8  9f402fcd  addli r1, r30, -6508
0018ac  7e0000a0  vmmov zero, mr0
0018b0  67800000  storeli.w zero, 0(r1)
0018b4  9bb05d00  slli r1, r27, 5
0018b8  ea201230  vor.u.mh vr1{mr0}, r4, vr1
0018bc  17200000  xor zero, zero, zero
0018c0  7e8000e0  vmmov mr0, r1
0018c4  9f001fcd  addli r1, r30, -6520
0018c8  7e0000a0  vmmov zero, mr0
0018cc  67800000  storeli.w zero, 0(r1)
0018d0  17200000  xor zero, zero, zero
0018d4  9f005000  addli r1, zero, 40
0018d8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0018dc  9bb06d00  slli r1, r27, 6
0018e0  7e8000e0  vmmov mr0, r1
0018e4  9f000fcd  addli r1, r30, -6528
0018e8  7e0000a0  vmmov zero, mr0
0018ec  67800000  storeli.w zero, 0(r1)
0018f0  17200000  xor zero, zero, zero
0018f4  9f006000  addli r1, zero, 48
0018f8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0018fc  9bb07d00  slli r1, r27, 7
001900  7e8000e0  vmmov mr0, r1
001904  9f00ffcc  addli r1, r30, -6536
001908  7e0000a0  vmmov zero, mr0
00190c  67800000  storeli.w zero, 0(r1)
001910  17200000  xor zero, zero, zero
001914  9f007000  addli r1, zero, 56
001918  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00191c  9bb08d00  slli r1, r27, 8
001920  7e8000e0  vmmov mr0, r1
001924  9f00efcc  addli r1, r30, -6544
001928  7e0000a0  vmmov zero, mr0
00192c  67800000  storeli.w zero, 0(r1)
001930  9bb09d00  slli r1, r27, 9
001934  ea201630  vor.u.mh vr1{mr0}, r12, vr1
001938  17200000  xor zero, zero, zero
00193c  7e8000e0  vmmov mr0, r1
001940  9f40dfcc  addli r1, r30, -6548
001944  7e0000a0  vmmov zero, mr0
001948  67800000  storeli.w zero, 0(r1)
00194c  17200000  xor zero, zero, zero
001950  9f009000  addli r1, zero, 72
001954  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001958  9bb0ad00  slli r1, r27, 10
00195c  7e8000e0  vmmov mr0, r1
001960  9f00dfcc  addli r1, r30, -6552
001964  7e0000a0  vmmov zero, mr0
001968  67800000  storeli.w zero, 0(r1)
00196c  17200000  xor zero, zero, zero
001970  9f00a000  addli r1, zero, 80
001974  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001978  9bb0bd00  slli r1, r27, 11
00197c  7e8000e0  vmmov mr0, r1
001980  9f40cfcc  addli r1, r30, -6556
001984  7e0000a0  vmmov zero, mr0
001988  67800000  storeli.w zero, 0(r1)
00198c  17200000  xor zero, zero, zero
001990  9f00b000  addli r1, zero, 88
001994  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001998  9bb0cd00  slli r1, r27, 12
00199c  7e8000e0  vmmov mr0, r1
0019a0  9f00cfcc  addli r1, r30, -6560
0019a4  7e0000a0  vmmov zero, mr0
0019a8  67800000  storeli.w zero, 0(r1)
0019ac  17200000  xor zero, zero, zero
0019b0  9f00c000  addli r1, zero, 96
0019b4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0019b8  9bb0dd00  slli r1, r27, 13
0019bc  7e8000e0  vmmov mr0, r1
0019c0  9f00bfcc  addli r1, r30, -6568
0019c4  7e0000a0  vmmov zero, mr0
0019c8  67800000  storeli.w zero, 0(r1)
0019cc  17200000  xor zero, zero, zero
0019d0  9f00d000  addli r1, zero, 104
0019d4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0019d8  9bb0ed00  slli r1, r27, 14
0019dc  7e8000e0  vmmov mr0, r1
0019e0  9f00e000  addli r1, zero, 112
0019e4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0019e8  ab800000  lui r1, 8
0019ec  9f800000  addli r1, r1, 0
0019f0  fe8100e0  vmmov mr3, r1
0019f4  9f00f000  addli r1, zero, 120
0019f8  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0019fc  9f00bfce  addli r1, r30, -6312
001a00  63800000  loadli.w zero,  0(r1)
001a04  fe0100e0  vmmov mr3, zero
001a08  17200000  xor zero, zero, zero
001a0c  6a210002  vand.u.mz vr2{mr1}, zero, vr0
001a10  e7cffeff  storeli.w r31, -4(sp)
001a14  9f4f4fcd  addli r31, r30, -6492
001a18  63800f00  loadli.w zero,  0(r31)
001a1c  e3cffeff  loadli.w r31,  -4(sp)
001a20  7e0100e0  vmmov mr2, zero
001a24  17200000  xor zero, zero, zero
001a28  6aa12734  vor.u.mh vr2{mr2}, r15, vr2
001a2c  e7cffeff  storeli.w r31, -4(sp)
001a30  9f0f4fcd  addli r31, r30, -6496
001a34  9f001001  addli r1, zero, 136
001a38  63800f00  loadli.w zero,  0(r31)
001a3c  e3cffeff  loadli.w r31,  -4(sp)
001a40  7e0100e0  vmmov mr2, zero
001a44  17200000  xor zero, zero, zero
001a48  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
001a4c  e7cffeff  storeli.w r31, -4(sp)
001a50  9f4f3fcd  addli r31, r30, -6500
001a54  9f002001  addli r1, zero, 144
001a58  63800f00  loadli.w zero,  0(r31)
001a5c  e3cffeff  loadli.w r31,  -4(sp)
001a60  7e0100e0  vmmov mr2, zero
001a64  17200000  xor zero, zero, zero
001a68  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
001a6c  e7cffeff  storeli.w r31, -4(sp)
001a70  9f0f3fcd  addli r31, r30, -6504
001a74  9f003001  addli r1, zero, 152
001a78  63800f00  loadli.w zero,  0(r31)
001a7c  e3cffeff  loadli.w r31,  -4(sp)
001a80  7e0100e0  vmmov mr2, zero
001a84  17200000  xor zero, zero, zero
001a88  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
001a8c  e7cffeff  storeli.w r31, -4(sp)
001a90  9f4f2fcd  addli r31, r30, -6508
001a94  9f004001  addli r1, zero, 160
001a98  63800f00  loadli.w zero,  0(r31)
001a9c  e3cffeff  loadli.w r31,  -4(sp)
001aa0  7e0100e0  vmmov mr2, zero
001aa4  17200000  xor zero, zero, zero
001aa8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
001aac  e7cffeff  storeli.w r31, -4(sp)
001ab0  9f0f1fcd  addli r31, r30, -6520
001ab4  9f005001  addli r1, zero, 168
001ab8  63800f00  loadli.w zero,  0(r31)
001abc  e3cffeff  loadli.w r31,  -4(sp)
001ac0  7e0100e0  vmmov mr2, zero
001ac4  17200000  xor zero, zero, zero
001ac8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
001acc  e7cffeff  storeli.w r31, -4(sp)
001ad0  9f0f0fcd  addli r31, r30, -6528
001ad4  9f006001  addli r1, zero, 176
001ad8  63800f00  loadli.w zero,  0(r31)
001adc  e3cffeff  loadli.w r31,  -4(sp)
001ae0  7e0100e0  vmmov mr2, zero
001ae4  17200000  xor zero, zero, zero
001ae8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
001aec  e7cffeff  storeli.w r31, -4(sp)
001af0  9f0fffcc  addli r31, r30, -6536
001af4  9f007001  addli r1, zero, 184
001af8  63800f00  loadli.w zero,  0(r31)
001afc  e3cffeff  loadli.w r31,  -4(sp)
001b00  7e0100e0  vmmov mr2, zero
001b04  17200000  xor zero, zero, zero
001b08  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
001b0c  e7cffeff  storeli.w r31, -4(sp)
001b10  9f0fefcc  addli r31, r30, -6544
001b14  9f008001  addli r1, zero, 192
001b18  63800f00  loadli.w zero,  0(r31)
001b1c  e3cffeff  loadli.w r31,  -4(sp)
001b20  7e0100e0  vmmov mr2, zero
001b24  17200000  xor zero, zero, zero
001b28  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
001b2c  e7cffeff  storeli.w r31, -4(sp)
001b30  9f4fdfcc  addli r31, r30, -6548
001b34  9f009001  addli r1, zero, 200
001b38  63800f00  loadli.w zero,  0(r31)
001b3c  e3cffeff  loadli.w r31,  -4(sp)
001b40  7e0100e0  vmmov mr2, zero
001b44  17200000  xor zero, zero, zero
001b48  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
001b4c  e7cffeff  storeli.w r31, -4(sp)
001b50  9f0fdfcc  addli r31, r30, -6552
001b54  9f00a001  addli r1, zero, 208
001b58  63800f00  loadli.w zero,  0(r31)
001b5c  e3cffeff  loadli.w r31,  -4(sp)
001b60  7e0100e0  vmmov mr2, zero
001b64  17200000  xor zero, zero, zero
001b68  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
001b6c  e7cffeff  storeli.w r31, -4(sp)
001b70  9f4fcfcc  addli r31, r30, -6556
001b74  9f00b001  addli r1, zero, 216
001b78  63800f00  loadli.w zero,  0(r31)
001b7c  e3cffeff  loadli.w r31,  -4(sp)
001b80  7e0100e0  vmmov mr2, zero
001b84  17200000  xor zero, zero, zero
001b88  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
001b8c  e7cffeff  storeli.w r31, -4(sp)
001b90  9f0fcfcc  addli r31, r30, -6560
001b94  9f00c001  addli r1, zero, 224
001b98  63800f00  loadli.w zero,  0(r31)
001b9c  e3cffeff  loadli.w r31,  -4(sp)
001ba0  7e0100e0  vmmov mr2, zero
001ba4  17200000  xor zero, zero, zero
001ba8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
001bac  e7cffeff  storeli.w r31, -4(sp)
001bb0  9f0fbfcc  addli r31, r30, -6568
001bb4  9f00d001  addli r1, zero, 232
001bb8  63800f00  loadli.w zero,  0(r31)
001bbc  e3cffeff  loadli.w r31,  -4(sp)
001bc0  7e0100e0  vmmov mr2, zero
001bc4  17200000  xor zero, zero, zero
001bc8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
001bcc  9f00e001  addli r1, zero, 240
001bd0  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
001bd4  ab800000  lui r1, 8
001bd8  9f800000  addli r1, r1, 0
001bdc  7e8000e0  vmmov mr0, r1
001be0  9f00f001  addli r1, zero, 248
001be4  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
001be8  e340dfcd  loadli.w r1,  -6420(r30)
001bec  92b01002  vadd.s.mz vr1{mr1}, r1, vr1
001bf0  12b12002  vadd.s.mz vr2{mr1}, r1, vr2
001bf4  ab000000  lui r1, 0
001bf8  9f800000  addli r1, r1, 0
001bfc  e2b01002  vgathers_mask16.mz vr1{mr1}, vr1{r1}
001c00  62b12002  vgathers_mask16.mz vr2{mr1}, vr2{r1}
001c04  db060000  j 52
001c08  ab000000  lui r1, 0
001c0c  9f800000  addli r1, r1, 0
001c10  1f810000  addli r2, r1, 0
001c14  9f008100  addli r1, r2, 64
001c18  ca100102  vloads_mask16.mz vr1{mr1}, 0(r2)
001c1c  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
001c20  9f000101  addli r1, r2, 128
001c24  1f018101  addli r2, r2, 192
001c28  ca910002  vloads_mask16.mz vr3{mr1}, 0(r1)
001c2c  4a120102  vloads_mask16.mz vr4{mr1}, 0(r2)
001c30  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
001c34  36114102  vmax.f.mz vr2{mr1}, vr2, vr4
001c38  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
001c3c  9f000002  addli r1, zero, 256
001c40  6af110c0  vsrl.p vr2, r1, vr1
001c44  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
001c48  6af117c0  vsrl.p vr2, r15, vr1
001c4c  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
001c50  6a7116c0  vsrl.p vr2, r12, vr1
001c54  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
001c58  6a7112c0  vsrl.p vr2, r4, vr1
001c5c  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
001c60  fa970026  vextract.f r15, vr1{mr3}
001c64  8be70758  neg.f r15, r15
001c68  00a00000  mfence { lm }
001c6c  bf50b801  blt.s r16, r27, 52
001c70  1f090fcf  addli r18, r30, -6272
001c74  9f090000  addli r19, zero, 0
001c78  c2100902  vload_mask16.mz vr1{mr1}, 0(r18)
001c7c  9f008900  addli r1, r18, 64
001c80  9f894900  addli r19, r19, 32
001c84  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001c88  92901702  vadd.f.mz.rn vr1{mr1}, r15, vr1
001c8c  12912702  vadd.f.mz.rn vr2{mr1}, r15, vr2
001c90  46101902  vstore_mask16.mz vr1{mr1}, 0(r18)
001c94  1f090901  addli r18, r18, 128
001c98  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
001c9c  3fff09ff  blt.s r19, r16, -36
001ca0  3f20d800  blt.s r16, r13, 8
001ca4  5b0b0000  j 88
001ca8  00a00000  mfence { lm }
001cac  9f090000  addli r19, zero, 0
001cb0  e300ffce  loadli.w r1,  -6280(r30)
001cb4  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001cb8  e300efce  loadli.w r1,  -6288(r30)
001cbc  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001cc0  00a00000  mfence { lm }
001cc4  e300ffcd  loadli.w r1,  -6408(r30)
001cc8  92901702  vadd.f.mz.rn vr1{mr1}, r15, vr1
001ccc  12912702  vadd.f.mz.rn vr2{mr1}, r15, vr2
001cd0  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
001cd4  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
001cd8  00a00000  mfence { lm }
001cdc  e307efcd  loadli.w r15,  -6416(r30)
001ce0  8b903a11  add.s r1, r21, r19
001ce4  0b113e11  add.s r2, r28, r19
001ce8  9f970700  addli r15, r15, 1
001cec  9fc90900  addli r19, r19, 4
001cf0  e3800000  loadli.w r1,  0(r1)
001cf4  67001100  storeli.w r1, 0(r2)
001cf8  bbaf07fe  bneq r15, zero, -24
001cfc  00a00000  mfence { lm }
001d00  3f21bd01  blt.s r26, r27, 72
001d04  e309cfcd  loadli.w r19,  -6432(r30)
001d08  9f070000  addli r15, zero, 0
001d0c  e380f9ff  loadli.w r1,  -8(r19)
001d10  63c1f9ff  loadli.w r2,  -4(r19)
001d14  e3c10900  loadli.w r3,  4(r19)
001d18  63890900  loadli.w r18,  0(r19)
001d1c  9fc70700  addli r15, r15, 4
001d20  8f801000  exp.f.rn r1, r1
001d24  0f012100  exp.f.rn r2, r2
001d28  0f024900  exp.f.rn r4, r18
001d2c  8f813100  exp.f.rn r3, r3
001d30  e78f19fe  storeli.w r1, -8(r19)
001d34  e7cf29fe  storeli.w r2, -4(r19)
001d38  67804900  storeli.w r4, 0(r19)
001d3c  67c03900  storeli.w r3, 4(r19)
001d40  9f892900  addli r19, r19, 16
001d44  3fafa7ff  blt.s r15, r26, -56
001d48  e3071fce  loadli.w r15,  -6392(r30)
001d4c  63092fce  loadli.w r18,  -6384(r30)
001d50  4bf0a601  ble.s r13, r26, 28
001d54  e3800700  loadli.w r1,  0(r15)
001d58  1f190900  addli r18, r18, 1
001d5c  8f801000  exp.f.rn r1, r1
001d60  67801700  storeli.w r1, 0(r15)
001d64  9fc70700  addli r15, r15, 4
001d68  bb3f09fe  bneq r18, zero, -20
001d6c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001d70  00a00000  mfence { lm }
001d74  bf50b801  blt.s r16, r27, 52
001d78  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001d7c  33092029  zext_int2long r[18:19], zero
001d80  9b302900  slli r1, r18, 2
001d84  27094900  addli.d r[19:20], r[19:20], 32
001d88  8b901810  add.s r1, r17, r1
001d8c  13318905  setlt.sl r2, r[19:20], r[25:26]
001d90  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001d94  9f808000  addli r1, r1, 64
001d98  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
001d9c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001da0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001da4  3b7f01fe  bneq r2, zero, -36
001da8  1f024000  addli r4, zero, 32
001dac  9f070001  addli r15, zero, 128
001db0  b7700300  beq r6, zero, 60
001db4  1f010fce  addli r2, r30, -6400
001db8  e300ffce  loadli.w r1,  -6280(r30)
001dbc  9f41ffcd  addli r3, r30, -6404
001dc0  63000100  loadli.w zero,  0(r2)
001dc4  7e0000e0  vmmov mr0, zero
001dc8  17200000  xor zero, zero, zero
001dcc  42910000  vload_mask16.mz vr2{mr0}, 0(r1)
001dd0  63800100  loadli.w zero,  0(r3)
001dd4  e300efce  loadli.w r1,  -6288(r30)
001dd8  7e0000e0  vmmov mr0, zero
001ddc  17200000  xor zero, zero, zero
001de0  c2910000  vload_mask16.mz vr3{mr0}, 0(r1)
001de4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001de8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001dec  9f00dfce  addli r1, r30, -6296
001df0  63015fce  loadli.w r2,  -6360(r30)
001df4  6bd90000  load.d r[19:20], 0(r1)
001df8  9f000002  addli r1, zero, 256
001dfc  6af110c0  vsrl.p vr2, r1, vr1
001e00  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001e04  6af117c0  vsrl.p vr2, r15, vr1
001e08  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001e0c  6a7116c0  vsrl.p vr2, r12, vr1
001e10  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001e14  6a7112c0  vsrl.p vr2, r4, vr1
001e18  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001e1c  fa900026  vextract.f r1, vr1{mr3}
001e20  73601100  stores.w r1, 0(r2)
001e24  00200100  mfence { sm }
001e28  37d1c200  beq r5, r12, 84
001e2c  9f701000  addli r1, zero, 15
001e30  00300000  sync_local
001e34  3fa15000  blt.s r1, r5, 72
001e38  9f100002  addli r1, zero, 257
001e3c  670a1ffe  storeli.w r1, -96(r30)
001e40  9f102022  addli r1, zero, 4369
001e44  67091ffe  storeli.w r1, -112(r30)
001e48  ab500000  lui r1, 5
001e4c  9b905055  ori r1, r1, 1365
001e50  e7081ffe  storeli.w r1, -120(r30)
001e54  abf00000  lui r1, 15
001e58  63019fcd  loadli.w r2,  -6456(r30)
001e5c  e301afcd  loadli.w r3,  -6448(r30)
001e60  9b90f0ff  ori r1, r1, 4095
001e64  67481ffe  storeli.w r1, -124(r30)
001e68  63010100  loadli.w r2,  0(r2)
001e6c  17313100  sll r2, r2, r3
001e70  97001100  and r1, r2, r1
001e74  80a10004  csr_set csr3, r1
001e78  00d00100  sync_group
001e7c  9f500000  addli r1, zero, 5
001e80  bfd01200  blt.s r5, r1, 52
001e84  9f01cfce  addli r3, r30, -6304
001e88  ebd00100  load.d r[2:3], 0(r3)
001e8c  3fd5b001  blt.s r1, r27, 340
001e90  e3075fcd  loadli.w r15,  -6488(r30)
001e94  1f030000  addli r6, zero, 0
001e98  1f890000  addli r18, r1, 0
001e9c  efc00700  loads.w r1, 0(r15)
001ea0  1f79f9ff  addli r18, r18, -1
001ea4  8b974711  add.s r15, r15, r20
001ea8  0b631310  add.f.rn r6, r6, r1
001eac  bb4f09fe  bneq r18, zero, -16
001eb0  5bae0000  j 1392
001eb4  9f200000  addli r1, zero, 2
001eb8  b380102a  zext_int2long r[1:2], r1
001ebc  93201900  seteq.d r1, r[19:20], r[2:3]
001ec0  bba40000  bneq r1, zero, 296
001ec4  9f400000  addli r1, zero, 4
001ec8  b380102a  zext_int2long r[1:2], r1
001ecc  93201902  setneq.d r1, r[19:20], r[2:3]
001ed0  bbf30002  bneq r1, zero, 1276
001ed4  ea200002  vand.u.mz vr1{mr1}, zero, vr0
001ed8  9bb00d00  slli r1, r27, 0
001edc  7e8000e0  vmmov mr0, r1
001ee0  9bb01d00  slli r1, r27, 1
001ee4  ea201030  vor.u.mh vr1{mr0}, zero, vr1
001ee8  7e8000e0  vmmov mr0, r1
001eec  9f002000  addli r1, zero, 16
001ef0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001ef4  9bb02d00  slli r1, r27, 2
001ef8  7e8000e0  vmmov mr0, r1
001efc  9bb03d00  slli r1, r27, 3
001f00  ea201230  vor.u.mh vr1{mr0}, r4, vr1
001f04  7e8000e0  vmmov mr0, r1
001f08  9f006000  addli r1, zero, 48
001f0c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001f10  9bb04d00  slli r1, r27, 4
001f14  7e8000e0  vmmov mr0, r1
001f18  9bb05d00  slli r1, r27, 5
001f1c  ea201630  vor.u.mh vr1{mr0}, r12, vr1
001f20  7e8000e0  vmmov mr0, r1
001f24  9f00a000  addli r1, zero, 80
001f28  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001f2c  9bb06d00  slli r1, r27, 6
001f30  7e8000e0  vmmov mr0, r1
001f34  9f00c000  addli r1, zero, 96
001f38  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001f3c  9bb07d00  slli r1, r27, 7
001f40  7e8000e0  vmmov mr0, r1
001f44  9f00e000  addli r1, zero, 112
001f48  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001f4c  9bb08d00  slli r1, r27, 8
001f50  7e8000e0  vmmov mr0, r1
001f54  9bb09d00  slli r1, r27, 9
001f58  eaa01730  vor.u.mh vr1{mr0}, r15, vr1
001f5c  7e8000e0  vmmov mr0, r1
001f60  9f002001  addli r1, zero, 144
001f64  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001f68  9bb0ad00  slli r1, r27, 10
001f6c  7e8000e0  vmmov mr0, r1
001f70  9f004001  addli r1, zero, 160
001f74  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001f78  9bb0bd00  slli r1, r27, 11
001f7c  7e8000e0  vmmov mr0, r1
001f80  9f006001  addli r1, zero, 176
001f84  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001f88  9bb0cd00  slli r1, r27, 12
001f8c  7e8000e0  vmmov mr0, r1
001f90  9f008001  addli r1, zero, 192
001f94  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001f98  9bb0dd00  slli r1, r27, 13
001f9c  7e8000e0  vmmov mr0, r1
001fa0  9f00a001  addli r1, zero, 208
001fa4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001fa8  9bb0ed00  slli r1, r27, 14
001fac  7e8000e0  vmmov mr0, r1
001fb0  9f00c001  addli r1, zero, 224
001fb4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001fb8  ab800000  lui r1, 8
001fbc  9f800000  addli r1, r1, 0
001fc0  7e8000e0  vmmov mr0, r1
001fc4  9f00e001  addli r1, zero, 240
001fc8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001fcc  e340dfcd  loadli.w r1,  -6420(r30)
001fd0  92b01002  vadd.s.mz vr1{mr1}, r1, vr1
001fd4  e3006fce  loadli.w r1,  -6352(r30)
001fd8  e2b01002  vgathers_mask16.mz vr1{mr1}, vr1{r1}
001fdc  db830000  j 1052
001fe0  1f030000  addli r6, zero, 0
001fe4  db870000  j 1084
001fe8  9bb00d00  slli r1, r27, 0
001fec  ea200002  vand.u.mz vr1{mr1}, zero, vr0
001ff0  1f414fcd  addli r2, r30, -6492
001ff4  9f014fcd  addli r3, r30, -6496
001ff8  1f433fcd  addli r6, r30, -6500
001ffc  1f093fcd  addli r18, r30, -6504
002000  9f492fcd  addli r19, r30, -6508
002004  7e8000e0  vmmov mr0, r1
002008  9bb01d00  slli r1, r27, 1
00200c  7e0000a0  vmmov zero, mr0
002010  67000100  storeli.w zero, 0(r2)
002014  17200000  xor zero, zero, zero
002018  ea201030  vor.u.mh vr1{mr0}, zero, vr1
00201c  7e8000e0  vmmov mr0, r1
002020  7e0000a0  vmmov zero, mr0
002024  67800100  storeli.w zero, 0(r3)
002028  17200000  xor zero, zero, zero
00202c  9f001000  addli r1, zero, 8
002030  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002034  9bb02d00  slli r1, r27, 2
002038  7e8000e0  vmmov mr0, r1
00203c  7e0000a0  vmmov zero, mr0
002040  67000300  storeli.w zero, 0(r6)
002044  17200000  xor zero, zero, zero
002048  9f002000  addli r1, zero, 16
00204c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002050  9bb03d00  slli r1, r27, 3
002054  7e8000e0  vmmov mr0, r1
002058  7e0000a0  vmmov zero, mr0
00205c  67000900  storeli.w zero, 0(r18)
002060  17200000  xor zero, zero, zero
002064  9f003000  addli r1, zero, 24
002068  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00206c  9bb04d00  slli r1, r27, 4
002070  7e8000e0  vmmov mr0, r1
002074  9bb05d00  slli r1, r27, 5
002078  7e0000a0  vmmov zero, mr0
00207c  67800900  storeli.w zero, 0(r19)
002080  ea201230  vor.u.mh vr1{mr0}, r4, vr1
002084  7e8000e0  vmmov mr0, r1
002088  17200000  xor zero, zero, zero
00208c  9f001fcd  addli r1, r30, -6520
002090  7e0000a0  vmmov zero, mr0
002094  67800000  storeli.w zero, 0(r1)
002098  17200000  xor zero, zero, zero
00209c  9f005000  addli r1, zero, 40
0020a0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0020a4  9bb06d00  slli r1, r27, 6
0020a8  7e8000e0  vmmov mr0, r1
0020ac  9f000fcd  addli r1, r30, -6528
0020b0  7e0000a0  vmmov zero, mr0
0020b4  67800000  storeli.w zero, 0(r1)
0020b8  17200000  xor zero, zero, zero
0020bc  9f006000  addli r1, zero, 48
0020c0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0020c4  9bb07d00  slli r1, r27, 7
0020c8  7e8000e0  vmmov mr0, r1
0020cc  9f00ffcc  addli r1, r30, -6536
0020d0  7e0000a0  vmmov zero, mr0
0020d4  67800000  storeli.w zero, 0(r1)
0020d8  17200000  xor zero, zero, zero
0020dc  9f007000  addli r1, zero, 56
0020e0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0020e4  9bb08d00  slli r1, r27, 8
0020e8  7e8000e0  vmmov mr0, r1
0020ec  9f00efcc  addli r1, r30, -6544
0020f0  7e0000a0  vmmov zero, mr0
0020f4  67800000  storeli.w zero, 0(r1)
0020f8  9bb09d00  slli r1, r27, 9
0020fc  ea201630  vor.u.mh vr1{mr0}, r12, vr1
002100  17200000  xor zero, zero, zero
002104  7e8000e0  vmmov mr0, r1
002108  9f40dfcc  addli r1, r30, -6548
00210c  7e0000a0  vmmov zero, mr0
002110  67800000  storeli.w zero, 0(r1)
002114  17200000  xor zero, zero, zero
002118  9f009000  addli r1, zero, 72
00211c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002120  9bb0ad00  slli r1, r27, 10
002124  7e8000e0  vmmov mr0, r1
002128  9f00dfcc  addli r1, r30, -6552
00212c  7e0000a0  vmmov zero, mr0
002130  67800000  storeli.w zero, 0(r1)
002134  17200000  xor zero, zero, zero
002138  9f00a000  addli r1, zero, 80
00213c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002140  9bb0bd00  slli r1, r27, 11
002144  7e8000e0  vmmov mr0, r1
002148  9f40cfcc  addli r1, r30, -6556
00214c  7e0000a0  vmmov zero, mr0
002150  67800000  storeli.w zero, 0(r1)
002154  17200000  xor zero, zero, zero
002158  9f00b000  addli r1, zero, 88
00215c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002160  9bb0cd00  slli r1, r27, 12
002164  7e8000e0  vmmov mr0, r1
002168  9f00cfcc  addli r1, r30, -6560
00216c  7e0000a0  vmmov zero, mr0
002170  67800000  storeli.w zero, 0(r1)
002174  17200000  xor zero, zero, zero
002178  9f00c000  addli r1, zero, 96
00217c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002180  9bb0dd00  slli r1, r27, 13
002184  7e8000e0  vmmov mr0, r1
002188  9f00bfcc  addli r1, r30, -6568
00218c  7e0000a0  vmmov zero, mr0
002190  67800000  storeli.w zero, 0(r1)
002194  17200000  xor zero, zero, zero
002198  9f00d000  addli r1, zero, 104
00219c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0021a0  9bb0ed00  slli r1, r27, 14
0021a4  7e8000e0  vmmov mr0, r1
0021a8  9f00e000  addli r1, zero, 112
0021ac  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0021b0  ab800000  lui r1, 8
0021b4  9f800000  addli r1, r1, 0
0021b8  fe8100e0  vmmov mr3, r1
0021bc  9f00f000  addli r1, zero, 120
0021c0  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0021c4  9f00bfce  addli r1, r30, -6312
0021c8  63800000  loadli.w zero,  0(r1)
0021cc  fe0100e0  vmmov mr3, zero
0021d0  17200000  xor zero, zero, zero
0021d4  6a210002  vand.u.mz vr2{mr1}, zero, vr0
0021d8  e7cffeff  storeli.w r31, -4(sp)
0021dc  9f4f4fcd  addli r31, r30, -6492
0021e0  63800f00  loadli.w zero,  0(r31)
0021e4  e3cffeff  loadli.w r31,  -4(sp)
0021e8  7e0100e0  vmmov mr2, zero
0021ec  17200000  xor zero, zero, zero
0021f0  6aa12734  vor.u.mh vr2{mr2}, r15, vr2
0021f4  e7cffeff  storeli.w r31, -4(sp)
0021f8  9f0f4fcd  addli r31, r30, -6496
0021fc  9f001001  addli r1, zero, 136
002200  63800f00  loadli.w zero,  0(r31)
002204  e3cffeff  loadli.w r31,  -4(sp)
002208  7e0100e0  vmmov mr2, zero
00220c  17200000  xor zero, zero, zero
002210  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002214  e7cffeff  storeli.w r31, -4(sp)
002218  9f4f3fcd  addli r31, r30, -6500
00221c  9f002001  addli r1, zero, 144
002220  63800f00  loadli.w zero,  0(r31)
002224  e3cffeff  loadli.w r31,  -4(sp)
002228  7e0100e0  vmmov mr2, zero
00222c  17200000  xor zero, zero, zero
002230  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002234  e7cffeff  storeli.w r31, -4(sp)
002238  9f0f3fcd  addli r31, r30, -6504
00223c  9f003001  addli r1, zero, 152
002240  63800f00  loadli.w zero,  0(r31)
002244  e3cffeff  loadli.w r31,  -4(sp)
002248  7e0100e0  vmmov mr2, zero
00224c  17200000  xor zero, zero, zero
002250  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002254  e7cffeff  storeli.w r31, -4(sp)
002258  9f4f2fcd  addli r31, r30, -6508
00225c  9f004001  addli r1, zero, 160
002260  63800f00  loadli.w zero,  0(r31)
002264  e3cffeff  loadli.w r31,  -4(sp)
002268  7e0100e0  vmmov mr2, zero
00226c  17200000  xor zero, zero, zero
002270  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002274  e7cffeff  storeli.w r31, -4(sp)
002278  9f0f1fcd  addli r31, r30, -6520
00227c  9f005001  addli r1, zero, 168
002280  63800f00  loadli.w zero,  0(r31)
002284  e3cffeff  loadli.w r31,  -4(sp)
002288  7e0100e0  vmmov mr2, zero
00228c  17200000  xor zero, zero, zero
002290  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002294  e7cffeff  storeli.w r31, -4(sp)
002298  9f0f0fcd  addli r31, r30, -6528
00229c  9f006001  addli r1, zero, 176
0022a0  63800f00  loadli.w zero,  0(r31)
0022a4  e3cffeff  loadli.w r31,  -4(sp)
0022a8  7e0100e0  vmmov mr2, zero
0022ac  17200000  xor zero, zero, zero
0022b0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0022b4  e7cffeff  storeli.w r31, -4(sp)
0022b8  9f0fffcc  addli r31, r30, -6536
0022bc  9f007001  addli r1, zero, 184
0022c0  63800f00  loadli.w zero,  0(r31)
0022c4  e3cffeff  loadli.w r31,  -4(sp)
0022c8  7e0100e0  vmmov mr2, zero
0022cc  17200000  xor zero, zero, zero
0022d0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0022d4  e7cffeff  storeli.w r31, -4(sp)
0022d8  9f0fefcc  addli r31, r30, -6544
0022dc  9f008001  addli r1, zero, 192
0022e0  63800f00  loadli.w zero,  0(r31)
0022e4  e3cffeff  loadli.w r31,  -4(sp)
0022e8  7e0100e0  vmmov mr2, zero
0022ec  17200000  xor zero, zero, zero
0022f0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0022f4  e7cffeff  storeli.w r31, -4(sp)
0022f8  9f4fdfcc  addli r31, r30, -6548
0022fc  9f009001  addli r1, zero, 200
002300  63800f00  loadli.w zero,  0(r31)
002304  e3cffeff  loadli.w r31,  -4(sp)
002308  7e0100e0  vmmov mr2, zero
00230c  17200000  xor zero, zero, zero
002310  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002314  e7cffeff  storeli.w r31, -4(sp)
002318  9f0fdfcc  addli r31, r30, -6552
00231c  9f00a001  addli r1, zero, 208
002320  63800f00  loadli.w zero,  0(r31)
002324  e3cffeff  loadli.w r31,  -4(sp)
002328  7e0100e0  vmmov mr2, zero
00232c  17200000  xor zero, zero, zero
002330  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002334  e7cffeff  storeli.w r31, -4(sp)
002338  9f4fcfcc  addli r31, r30, -6556
00233c  9f00b001  addli r1, zero, 216
002340  63800f00  loadli.w zero,  0(r31)
002344  e3cffeff  loadli.w r31,  -4(sp)
002348  7e0100e0  vmmov mr2, zero
00234c  17200000  xor zero, zero, zero
002350  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002354  e7cffeff  storeli.w r31, -4(sp)
002358  9f0fcfcc  addli r31, r30, -6560
00235c  9f00c001  addli r1, zero, 224
002360  63800f00  loadli.w zero,  0(r31)
002364  e3cffeff  loadli.w r31,  -4(sp)
002368  7e0100e0  vmmov mr2, zero
00236c  17200000  xor zero, zero, zero
002370  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002374  e7cffeff  storeli.w r31, -4(sp)
002378  9f0fbfcc  addli r31, r30, -6568
00237c  9f00d001  addli r1, zero, 232
002380  63800f00  loadli.w zero,  0(r31)
002384  e3cffeff  loadli.w r31,  -4(sp)
002388  7e0100e0  vmmov mr2, zero
00238c  17200000  xor zero, zero, zero
002390  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002394  9f00e001  addli r1, zero, 240
002398  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
00239c  ab800000  lui r1, 8
0023a0  9f800000  addli r1, r1, 0
0023a4  7e8000e0  vmmov mr0, r1
0023a8  9f00f001  addli r1, zero, 248
0023ac  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0023b0  e340dfcd  loadli.w r1,  -6420(r30)
0023b4  92b01002  vadd.s.mz vr1{mr1}, r1, vr1
0023b8  12b12002  vadd.s.mz vr2{mr1}, r1, vr2
0023bc  e3006fce  loadli.w r1,  -6352(r30)
0023c0  e2b01002  vgathers_mask16.mz vr1{mr1}, vr1{r1}
0023c4  62b12002  vgathers_mask16.mz vr2{mr1}, vr2{r1}
0023c8  db050000  j 44
0023cc  e3006fce  loadli.w r1,  -6352(r30)
0023d0  ca900002  vloads_mask16.mz vr1{mr1}, 0(r1)
0023d4  e340afcc  loadli.w r1,  -6572(r30)
0023d8  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
0023dc  e300afcc  loadli.w r1,  -6576(r30)
0023e0  ca910002  vloads_mask16.mz vr3{mr1}, 0(r1)
0023e4  e3409fcc  loadli.w r1,  -6580(r30)
0023e8  4a920002  vloads_mask16.mz vr4{mr1}, 0(r1)
0023ec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0023f0  16114102  vadd.f.mz.rn vr2{mr1}, vr2, vr4
0023f4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0023f8  9f000002  addli r1, zero, 256
0023fc  6af110c0  vsrl.p vr2, r1, vr1
002400  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
002404  6af117c0  vsrl.p vr2, r15, vr1
002408  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00240c  6a7116c0  vsrl.p vr2, r12, vr1
002410  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
002414  6a7112c0  vsrl.p vr2, r4, vr1
002418  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00241c  7a930026  vextract.f r6, vr1{mr3}
002420  00a00000  mfence { lm }
002424  ab00803f  lui r1, 260096
002428  0f836018  div.f.rn r6, r1, r6
00242c  bf50b801  blt.s r16, r27, 52
002430  9f070fcf  addli r15, r30, -6272
002434  1f090000  addli r18, zero, 0
002438  c2900702  vload_mask16.mz vr1{mr1}, 0(r15)
00243c  9f808700  addli r1, r15, 64
002440  1f094900  addli r18, r18, 32
002444  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
002448  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
00244c  0a112302  vmul.f.mz.rn vr2{mr1}, r6, vr2
002450  46901702  vstore_mask16.mz vr1{mr1}, 0(r15)
002454  9f870701  addli r15, r15, 128
002458  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
00245c  3f7f09ff  blt.s r18, r16, -36
002460  3f20d800  blt.s r16, r13, 8
002464  db0a0000  j 84
002468  00a00000  mfence { lm }
00246c  9f070000  addli r15, zero, 0
002470  e300ffce  loadli.w r1,  -6280(r30)
002474  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002478  e300efce  loadli.w r1,  -6288(r30)
00247c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
002480  e300ffcd  loadli.w r1,  -6408(r30)
002484  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
002488  0a112302  vmul.f.mz.rn vr2{mr1}, r6, vr2
00248c  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
002490  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
002494  00a00000  mfence { lm }
002498  6303efcd  loadli.w r6,  -6416(r30)
00249c  8b90fa10  add.s r1, r21, r15
0024a0  0b11fe10  add.s r2, r28, r15
0024a4  1f130300  addli r6, r6, 1
0024a8  9fc70700  addli r15, r15, 4
0024ac  e3800000  loadli.w r1,  0(r1)
0024b0  67001100  storeli.w r1, 0(r2)
0024b4  bb2f03fe  bneq r6, zero, -24
0024b8  00a00000  mfence { lm }
0024bc  3fb0b6f9  blt.s r13, r27, -4084
0024c0  1f030fcf  addli r6, r30, -6272
0024c4  9f070fcf  addli r15, r30, -6272
0024c8  9f090000  addli r19, zero, 0
0024cc  9f008300  addli r1, r6, 64
0024d0  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
0024d4  9f894900  addli r19, r19, 32
0024d8  1f030301  addli r6, r6, 128
0024dc  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0024e0  ab000100  lui r1, 16
0024e4  eaa11002  vand.u.mz vr3{mr1}, r1, vr1
0024e8  6aa22002  vand.u.mz vr4{mr1}, r1, vr2
0024ec  ab800000  lui r1, 8
0024f0  72213002  veq.u.mz mr2{mr1}, zero, vr3
0024f4  fe010140  vmnot mr3, mr2
0024f8  72204002  veq.u.mz mr0{mr1}, zero, vr4
0024fc  92a01016  vadd.u.mh vr1{mr3}, r1, vr1
002500  fe010040  vmnot mr3, mr0
002504  12a12016  vadd.u.mh vr2{mr3}, r1, vr2
002508  ab700000  lui r1, 7
00250c  9b90f0ff  ori r1, r1, 4095
002510  92a01014  vadd.u.mh vr1{mr2}, r1, vr1
002514  12a12010  vadd.u.mh vr2{mr0}, r1, vr2
002518  ea311bc2  vsrl.s.mz vr3{mr1}, r22, vr1
00251c  6a322bc2  vsrl.s.mz vr4{mr1}, r22, vr2
002520  ab00803f  lui r1, 260096
002524  2bf180ff  lui r2, 1046543
002528  abf17f00  lui r3, 2047
00252c  9b91f1ff  ori r3, r3, 4095
002530  eaa13022  vor.u.mz vr3{mr1}, r1, vr3
002534  6aa24022  vor.u.mz vr4{mr1}, r1, vr4
002538  1b1101f8  ori r2, r2, 3968
00253c  eaa01102  vand.u.mz vr1{mr1}, r3, vr1
002540  6aa12102  vand.u.mz vr2{mr1}, r3, vr2
002544  86910120  vfloat2fp16_l.rz vr3, vr3
002548  eaa01022  vor.u.mz vr1{mr1}, r1, vr1
00254c  6aa12022  vor.u.mz vr2{mr1}, r1, vr2
002550  ab007f00  lui r1, 2032
002554  86510220  vfloat2fp16_h.rz vr3, vr4
002558  9b90f007  ori r1, r1, 127
00255c  86900020  vfloat2fp16_l.rz vr1, vr1
002560  eaa13ba2  vsll.u.mz vr3{mr1}, r23, vr3
002564  86500120  vfloat2fp16_h.rz vr1, vr2
002568  6a213102  vand.u.mz vr2{mr1}, r2, vr3
00256c  eaa014c2  vsrl.u.mz vr1{mr1}, r9, vr1
002570  eaa01002  vand.u.mz vr1{mr1}, r1, vr1
002574  eea02022  vor.u.mz vr1{mr1}, vr1, vr2
002578  46801702  vstore.mz vr1{mr1}, 0(r15)
00257c  9f878700  addli r15, r15, 64
002580  3fbdd9fe  blt.s r19, r13, -180
002584  dbe8fdff  j -4284
002588  bbb0010e  bneq r3, zero, 7212
00258c  1f058fce  addli r10, r30, -6336
002590  abf10000  lui r3, 15
002594  abf3ffff  lui r7, 1048575
002598  1f02000c  addli r4, zero, 1536
00259c  1f0b0002  addli r22, zero, 256
0025a0  1f0c0001  addli r24, zero, 128
0025a4  9f0c8000  addli r25, zero, 64
0025a8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0025ac  eb500500  load.d r[2:3], 0(r10)
0025b0  9b91f1ff  ori r3, r3, 4095
0025b4  9b9203fc  ori r5, r7, 4032
0025b8  9b9403f8  ori r9, r7, 3968
0025bc  9b9303fe  ori r7, r7, 4064
0025c0  b385b32e  zext_int2long r[11:12], r7
0025c4  97813000  and r3, r1, r3
0025c8  97865000  and r13, r1, r5
0025cc  b382522a  zext_int2long r[5:6], r5
0025d0  978b9000  and r23, r1, r9
0025d4  0b043230  div.u r8, r4, r3
0025d8  97817000  and r3, r1, r7
0025dc  978d5002  and.d r[28:29], r[2:3], r[6:7]
0025e0  9f039fcd  addli r7, r30, -6456
0025e4  e74fdfcc  storeli.w r13, -6404(r30)
0025e8  e70f7fcd  storeli.w r23, -6408(r30)
0025ec  ebd20300  load.d r[6:7], 0(r7)
0025f0  e74e3fcc  storeli.w r3, -6420(r30)
0025f4  a7810700  addli.d r[4:5], r[16:17], 0
0025f8  1f084000  addli r16, zero, 32
0025fc  b3081429  zext_int2long r[17:18], r8
002600  3384842a  zext_int2long r[8:9], r9
002604  97898002  and.d r[20:21], r[2:3], r[9:10]
002608  9780b002  and.d r[2:3], r[2:3], r[12:13]
00260c  1f040fce  addli r8, r30, -6400
002610  9f045fcd  addli r9, r30, -6488
002614  1f060fcf  addli r12, r30, -6272
002618  9f454fcd  addli r11, r30, -6492
00261c  73301400  store.d r[2:3], 0(r8)
002620  9f100000  addli r1, zero, 1
002624  1f01efcd  addli r2, r30, -6416
002628  73b01401  store.d r[18:19], 0(r9)
00262c  7e8000e0  vmmov mr0, r1
002630  9f007fce  addli r1, r30, -6344
002634  7330b101  store.d r[28:29], 0(r2)
002638  7e0000a0  vmmov zero, mr0
00263c  67800500  storeli.w zero, 0(r11)
002640  73b03001  store.d r[20:21], 0(r1)
002644  17200000  xor zero, zero, zero
002648  db0c0000  j 100
00264c  9f05afcd  addli r11, r30, -6448
002650  9f0a5fcd  addli r21, r30, -6488
002654  1f07bfcd  addli r14, r30, -6440
002658  9f077fcd  addli r15, r30, -6472
00265c  00a00000  mfence { lm }
002660  1f0d9fcd  addli r26, r30, -6456
002664  ebd10500  load.d r[4:5], 0(r11)
002668  ebd80a00  load.d r[18:19], 0(r21)
00266c  ab0300f0  lui r7, 983040
002670  eb500700  load.d r[2:3], 0(r14)
002674  ebd40700  load.d r[10:11], 0(r15)
002678  eb520d00  load.d r[6:7], 0(r26)
00267c  0ba79010  add.ul r[15:16], r[2:3], r[10:11]
002680  e3006fcd  loadli.w r1,  -6480(r30)
002684  8ba11111  add.ul r[4:5], r[4:5], r[18:19]
002688  13b45104  setlt.sl r8, r[4:5], r[6:7]
00268c  97937000  or r7, r1, r7
002690  9f404fcd  addli r1, r30, -6492
002694  ff33c700  s_lm2gm r7, r12, 0(r[15:16])
002698  00a00200  mfence { lm, gm }
00269c  63800000  loadli.w zero,  0(r1)
0026a0  7e0000e0  vmmov mr0, zero
0026a4  17200000  xor zero, zero, zero
0026a8  373c040c  beq r8, zero, 6924
0026ac  9f048fce  addli r9, r30, -6336
0026b0  8bb33218  sub.sl r[8:9], r[6:7], r[4:5]
0026b4  9f0aafcd  addli r21, r30, -6448
0026b8  1f0d7fcd  addli r26, r30, -6472
0026bc  6bd50400  load.d r[11:12], 0(r9)
0026c0  8bb01341  min.sl r[2:3], r[8:9], r[18:19]
0026c4  1f041fce  addli r8, r30, -6392
0026c8  73b03a00  store.d r[4:5], 0(r21)
0026cc  ab0800f0  lui r17, 983040
0026d0  1f09cfcd  addli r18, r30, -6432
0026d4  73301400  store.d r[2:3], 0(r8)
0026d8  0bb3a020  mul.sl r[7:8], r[2:3], r[11:12]
0026dc  0bb7a120  mul.sl r[15:16], r[4:5], r[11:12]
0026e0  9f100000  addli r1, zero, 1
0026e4  97311702  sll.d r[4:5], r[15:16], r1
0026e8  eb500900  load.d r[2:3], 0(r18)
0026ec  9b321300  slli r5, r6, 1
0026f0  97981201  or r17, r5, r17
0026f4  73303d00  store.d r[4:5], 0(r26)
0026f8  670b5fcc  storeli.w r5, -6480(r30)
0026fc  0ba73010  add.ul r[15:16], r[2:3], r[4:5]
002700  9f008fcd  addli r1, r30, -6464
002704  ff28c700  l_gm2lm r17, r12, 0(r[15:16])
002708  00a00200  mfence { lm, gm }
00270c  2bf7ffff  lui r14, 1048575
002710  73b06000  store.d r[7:8], 0(r1)
002714  1b1727fe  ori r14, r14, 4066
002718  3f71e300  blt.s r6, r14, 92
00271c  9f018fcd  addli r3, r30, -6464
002720  ebd00100  load.d r[2:3], 0(r3)
002724  abf7ffff  lui r15, 1048575
002728  9b97f7ff  ori r15, r15, 4095
00272c  1ff7f0ff  addli r14, r1, -1
002730  0b170731  div.s r14, r14, r16
002734  9727f700  xor r15, r14, r15
002738  9b387700  slli r17, r14, 7
00273c  1b396700  slli r18, r14, 6
002740  1bb75700  slli r14, r15, 5
002744  8b171611  add.s r15, r12, r17
002748  8b182611  add.s r17, r12, r18
00274c  c2800802  vload.mz vr1{mr1}, 0(r17)
002750  66411080  vmerge_l.hf vr2, vr0, vr1
002754  1f898700  addli r18, r15, 64
002758  46902702  vstore_mask16.mz vr2{mr1}, 0(r15)
00275c  1f074700  addli r14, r14, 32
002760  9f8707ff  addli r15, r15, -128
002764  9f8888ff  addli r17, r17, -64
002768  e64110a0  vmerge_h.hf vr3, vr0, vr1
00276c  46103902  vstore_mask16.mz vr3{mr1}, 0(r18)
002770  3b7f07fe  bneq r14, zero, -36
002774  9f100000  addli r1, zero, 1
002778  9f011fce  addli r3, r30, -6392
00277c  3387e02a  zext_int2long r[14:15], r1
002780  ebd00100  load.d r[2:3], 0(r3)
002784  00a00000  mfence { lm }
002788  13b7e004  setlt.sl r14, r[2:3], r[15:16]
00278c  9f000fce  addli r1, r30, -6400
002790  6bd20000  load.d r[5:6], 0(r1)
002794  3b290702  bneq r14, zero, 1608
002798  33036028  zext_int2long r[6:7], zero
00279c  db040000  j 36
0027a0  9f016fce  addli r3, r30, -6352
0027a4  1f041fce  addli r8, r30, -6392
0027a8  6bd30100  load.d r[7:8], 0(r3)
0027ac  eb500400  load.d r[2:3], 0(r8)
0027b0  00a00000  mfence { lm }
0027b4  27130300  addli.d r[7:8], r[7:8], 1
0027b8  93301304  setlt.sl r1, r[7:8], r[2:3]
0027bc  b7880002  beq r1, zero, 1568
0027c0  0b37a320  mul.sl r[15:16], r[7:8], r[11:12]
0027c4  9f006fce  addli r1, r30, -6352
0027c8  9b372700  slli r15, r14, 2
0027cc  2b0780ff  lui r14, 1046528
0027d0  73b06000  store.d r[7:8], 0(r1)
0027d4  0b14f610  add.s r8, r12, r15
0027d8  37e10600  beq r13, zero, 88
0027dc  2b0780ff  lui r14, 1046528
0027e0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0027e4  ea101722  vor.f.mz vr1{mr1}, r14, vr1
0027e8  3307e028  zext_int2long r[14:15], zero
0027ec  9b382700  slli r17, r14, 2
0027f0  27078700  addli.d r[15:16], r[15:16], 64
0027f4  8b181411  add.s r17, r8, r17
0027f8  1329b705  setlt.ul r18, r[15:16], r[28:29]
0027fc  42910802  vload_mask16.mz vr2{mr1}, 0(r17)
002800  9f8a8800  addli r21, r17, 64
002804  c2910a02  vload_mask16.mz vr3{mr1}, 0(r21)
002808  9f8a0801  addli r21, r17, 128
00280c  9f888801  addli r17, r17, 192
002810  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
002814  42910a02  vload_mask16.mz vr2{mr1}, 0(r21)
002818  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
00281c  c2910802  vload_mask16.mz vr3{mr1}, 0(r17)
002820  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
002824  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
002828  3b1f09fe  bneq r18, zero, -60
00282c  5b010000  j 8
002830  ea100722  vor.f.mz vr1{mr1}, r14, vr0
002834  9320b507  setle.ul r1, r[11:12], r[28:29]
002838  a7880d00  addli.d r[18:19], r[28:29], 0
00283c  e7021fce  storeli.w r1, -6360(r30)
002840  bb800000  bneq r1, zero, 32
002844  9bb72800  slli r15, r17, 2
002848  a7882800  addli.d r[18:19], r[18:19], 16
00284c  8b17f410  add.s r15, r8, r15
002850  42910702  vload_mask16.mz vr2{mr1}, 0(r15)
002854  93b7a804  setlt.sl r15, r[18:19], r[11:12]
002858  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
00285c  bbaf07fe  bneq r15, zero, -24
002860  6a711bc0  vsrl.p vr2, r22, vr1
002864  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
002868  6a711cc0  vsrl.p vr2, r24, vr1
00286c  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
002870  6af11cc0  vsrl.p vr2, r25, vr1
002874  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
002878  6a7118c0  vsrl.p vr2, r16, vr1
00287c  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
002880  fa970020  vextract.f r15, vr1{mr0}
002884  8be70758  neg.f r15, r15
002888  b7820b00  beq r23, zero, 160
00288c  b3081029  zext_int2long r[17:18], zero
002890  9bba2800  slli r21, r17, 2
002894  a7880801  addli.d r[18:19], r[18:19], 128
002898  9f007fce  addli r1, r30, -6344
00289c  8b1a5411  add.s r21, r8, r21
0028a0  13ab3805  setlt.ul r22, r[18:19], r[20:21]
0028a4  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
0028a8  9f898a01  addli r19, r21, 192
0028ac  1f8a0a02  addli r20, r21, 256
0028b0  9f8c8a00  addli r25, r21, 64
0028b4  9f850a01  addli r11, r21, 128
0028b8  1f888a02  addli r16, r21, 320
0028bc  1f8d0a03  addli r26, r21, 384
0028c0  42920902  vload_mask16.mz vr4{mr1}, 0(r19)
0028c4  c2120a02  vload_mask16.mz vr5{mr1}, 0(r20)
0028c8  42910c02  vload_mask16.mz vr2{mr1}, 0(r25)
0028cc  c2910502  vload_mask16.mz vr3{mr1}, 0(r11)
0028d0  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
0028d4  92901702  vadd.f.mz.rn vr1{mr1}, r15, vr1
0028d8  12924702  vadd.f.mz.rn vr4{mr1}, r15, vr4
0028dc  92925702  vadd.f.mz.rn vr5{mr1}, r15, vr5
0028e0  12912702  vadd.f.mz.rn vr2{mr1}, r15, vr2
0028e4  92913702  vadd.f.mz.rn vr3{mr1}, r15, vr3
0028e8  12936702  vadd.f.mz.rn vr6{mr1}, r15, vr6
0028ec  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
0028f0  9f8a8a03  addli r21, r21, 448
0028f4  c2100d02  vload_mask16.mz vr1{mr1}, 0(r26)
0028f8  c2930a02  vload_mask16.mz vr7{mr1}, 0(r21)
0028fc  46904902  vstore_mask16.mz vr4{mr1}, 0(r19)
002900  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
002904  ebd90000  load.d r[20:21], 0(r1)
002908  46902c02  vstore_mask16.mz vr2{mr1}, 0(r25)
00290c  46903502  vstore_mask16.mz vr3{mr1}, 0(r11)
002910  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
002914  92901702  vadd.f.mz.rn vr1{mr1}, r15, vr1
002918  92937702  vadd.f.mz.rn vr7{mr1}, r15, vr7
00291c  46101d02  vstore_mask16.mz vr1{mr1}, 0(r26)
002920  46907a02  vstore_mask16.mz vr7{mr1}, 0(r21)
002924  bb3d0bfe  bneq r22, zero, -148
002928  93807607  setle.u r1, r13, r23
00292c  a7880900  addli.d r[18:19], r[20:21], 0
002930  67021fce  storeli.w r1, -6368(r30)
002934  3bd10000  bneq r1, zero, 84
002938  9bb52800  slli r11, r17, 2
00293c  a7888800  addli.d r[18:19], r[18:19], 64
002940  8b15b410  add.s r11, r8, r11
002944  13a8b805  setlt.ul r16, r[18:19], r[28:29]
002948  9f898500  addli r19, r11, 64
00294c  1f8a0501  addli r20, r11, 128
002950  9f8a8501  addli r21, r11, 192
002954  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
002958  42910902  vload_mask16.mz vr2{mr1}, 0(r19)
00295c  c2110a02  vload_mask16.mz vr3{mr1}, 0(r20)
002960  42920a02  vload_mask16.mz vr4{mr1}, 0(r21)
002964  92901702  vadd.f.mz.rn vr1{mr1}, r15, vr1
002968  12912702  vadd.f.mz.rn vr2{mr1}, r15, vr2
00296c  92913702  vadd.f.mz.rn vr3{mr1}, r15, vr3
002970  12924702  vadd.f.mz.rn vr4{mr1}, r15, vr4
002974  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
002978  46902902  vstore_mask16.mz vr2{mr1}, 0(r19)
00297c  46103a02  vstore_mask16.mz vr3{mr1}, 0(r20)
002980  46904a02  vstore_mask16.mz vr4{mr1}, 0(r21)
002984  bb5e08fe  bneq r16, zero, -76
002988  e340dfcd  loadli.w r1,  -6420(r30)
00298c  a7880d00  addli.d r[18:19], r[28:29], 0
002990  9380d006  setle.u r1, r1, r13
002994  e7011fce  storeli.w r1, -6376(r30)
002998  bbd00000  bneq r1, zero, 52
00299c  9bb52800  slli r11, r17, 2
0029a0  a7884800  addli.d r[18:19], r[18:19], 32
0029a4  8b15b410  add.s r11, r8, r11
0029a8  13a84804  setlt.ul r16, r[18:19], r[5:6]
0029ac  9f898500  addli r19, r11, 64
0029b0  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
0029b4  42910902  vload_mask16.mz vr2{mr1}, 0(r19)
0029b8  92901702  vadd.f.mz.rn vr1{mr1}, r15, vr1
0029bc  12912702  vadd.f.mz.rn vr2{mr1}, r15, vr2
0029c0  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
0029c4  46902902  vstore_mask16.mz vr2{mr1}, 0(r19)
0029c8  3b5f08fe  bneq r16, zero, -44
0029cc  1f038fce  addli r6, r30, -6336
0029d0  a7080200  addli.d r[18:19], r[5:6], 0
0029d4  eb500300  load.d r[2:3], 0(r6)
0029d8  93a14006  setle.ul r3, r[2:3], r[5:6]
0029dc  67013fce  storeli.w r3, -6384(r30)
0029e0  bb900100  bneq r3, zero, 36
0029e4  9bb52800  slli r11, r17, 2
0029e8  a7882800  addli.d r[18:19], r[18:19], 16
0029ec  8b15b410  add.s r11, r8, r11
0029f0  13b81804  setlt.sl r16, r[18:19], r[2:3]
0029f4  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
0029f8  92901702  vadd.f.mz.rn vr1{mr1}, r15, vr1
0029fc  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
002a00  bb1f08fe  bneq r16, zero, -28
002a04  b3081029  zext_int2long r[17:18], zero
002a08  00a00000  mfence { lm }
002a0c  9bb52800  slli r11, r17, 2
002a10  a7882800  addli.d r[18:19], r[18:19], 16
002a14  9b914501  ori r3, r11, 20
002a18  9b9c8501  ori r25, r11, 24
002a1c  1b9bc501  ori r22, r11, 28
002a20  9b974500  ori r15, r11, 4
002a24  0b18b410  add.s r16, r8, r11
002a28  1b9c0502  ori r24, r11, 32
002a2c  9b9dc500  ori r27, r11, 12
002a30  1b9e8503  ori r28, r11, 56
002a34  8b123410  add.s r5, r8, r3
002a38  8b1c9411  add.s r25, r8, r25
002a3c  0b1b6411  add.s r22, r8, r22
002a40  0b1af410  add.s r20, r8, r15
002a44  63010800  loadli.w r2,  0(r16)
002a48  8b168411  add.s r13, r8, r24
002a4c  1b9c4502  ori r24, r11, 36
002a50  9b978500  ori r15, r11, 8
002a54  8b1ab411  add.s r21, r8, r27
002a58  9b9d0501  ori r27, r11, 16
002a5c  0b1ec411  add.s r28, r8, r28
002a60  e3800200  loadli.w r1,  0(r5)
002a64  63020a00  loadli.w r4,  0(r20)
002a68  8b198411  add.s r19, r8, r24
002a6c  1b9c8502  ori r24, r11, 40
002a70  0b1df410  add.s r26, r8, r15
002a74  e3840a00  loadli.w r9,  0(r21)
002a78  8b1db411  add.s r27, r8, r27
002a7c  8f0b7101  exp.f.rn r23, r2
002a80  0b178411  add.s r14, r8, r24
002a84  1b9cc502  ori r24, r11, 44
002a88  e3030d00  loadli.w r7,  0(r26)
002a8c  63850d00  loadli.w r10,  0(r27)
002a90  e7071fce  storeli.w r1, -6280(r30)
002a94  e3800c00  loadli.w r1,  0(r25)
002a98  0f06c200  exp.f.rn r12, r4
002a9c  63020e00  loadli.w r4,  0(r28)
002aa0  0b138411  add.s r6, r8, r24
002aa4  1b9c0503  ori r24, r11, 48
002aa8  67071fce  storeli.w r1, -6288(r30)
002aac  e3000b00  loadli.w r1,  0(r22)
002ab0  0b1c8411  add.s r24, r8, r24
002ab4  0f024200  exp.f.rn r4, r4
002ab8  67007801  storeli.w r23, 0(r16)
002abc  0f880401  exp.f.rn r16, r9
002ac0  63010c00  loadli.w r2,  0(r24)
002ac4  e7061fce  storeli.w r1, -6296(r30)
002ac8  e3800600  loadli.w r1,  0(r13)
002acc  6700ca00  storeli.w r12, 0(r20)
002ad0  0f86c300  exp.f.rn r12, r7
002ad4  e303ffce  loadli.w r7,  -6280(r30)
002ad8  e304dfce  loadli.w r9,  -6296(r30)
002adc  0f0a4501  exp.f.rn r20, r10
002ae0  0f012100  exp.f.rn r2, r2
002ae4  e7051fce  storeli.w r1, -6312(r30)
002ae8  e3800900  loadli.w r1,  0(r19)
002aec  8f8b7301  exp.f.rn r23, r7
002af0  e303efce  loadli.w r7,  -6288(r30)
002af4  0f85a400  exp.f.rn r10, r9
002af8  e304bfce  loadli.w r9,  -6312(r30)
002afc  67004e00  storeli.w r4, 0(r28)
002b00  67061fce  storeli.w r1, -6304(r30)
002b04  e3000700  loadli.w r1,  0(r14)
002b08  67800a01  storeli.w r16, 0(r21)
002b0c  8f837300  exp.f.rn r7, r7
002b10  8f849400  exp.f.rn r9, r9
002b14  6700cd00  storeli.w r12, 0(r26)
002b18  67804d01  storeli.w r20, 0(r27)
002b1c  67051fce  storeli.w r1, -6320(r30)
002b20  e3000300  loadli.w r1,  0(r6)
002b24  67002c00  storeli.w r2, 0(r24)
002b28  6700ab00  storeli.w r10, 0(r22)
002b2c  67807201  storeli.w r23, 0(r5)
002b30  e302cfce  loadli.w r5,  -6304(r30)
002b34  e7041fce  storeli.w r1, -6328(r30)
002b38  9b904503  ori r1, r11, 52
002b3c  9b95c503  ori r11, r11, 60
002b40  8b15b410  add.s r11, r8, r11
002b44  8b101410  add.s r1, r8, r1
002b48  67807c00  storeli.w r7, 0(r25)
002b4c  e303afce  loadli.w r7,  -6320(r30)
002b50  67809600  storeli.w r9, 0(r13)
002b54  e3049fce  loadli.w r9,  -6328(r30)
002b58  8f825200  exp.f.rn r5, r5
002b5c  e3870500  loadli.w r15,  0(r11)
002b60  e3810000  loadli.w r3,  0(r1)
002b64  8f837300  exp.f.rn r7, r7
002b68  8f849400  exp.f.rn r9, r9
002b6c  0f85a700  exp.f.rn r10, r15
002b70  9f078fce  addli r15, r30, -6336
002b74  8f813100  exp.f.rn r3, r3
002b78  6bd60700  load.d r[13:14], 0(r15)
002b7c  67805900  storeli.w r5, 0(r19)
002b80  13b6c804  setlt.sl r12, r[18:19], r[13:14]
002b84  67007700  storeli.w r7, 0(r14)
002b88  67009300  storeli.w r9, 0(r6)
002b8c  67803000  storeli.w r3, 0(r1)
002b90  6780a500  storeli.w r10, 0(r11)
002b94  bb6906fe  bneq r12, zero, -392
002b98  9f00efcd  addli r1, r30, -6416
002b9c  00a00000  mfence { lm }
002ba0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002ba4  e346ffcd  loadli.w r13,  -6404(r30)
002ba8  ebdd0000  load.d r[28:29], 0(r1)
002bac  37b10600  beq r13, zero, 76
002bb0  b3081029  zext_int2long r[17:18], zero
002bb4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002bb8  9bb02800  slli r1, r17, 2
002bbc  a7888800  addli.d r[18:19], r[18:19], 64
002bc0  8b101410  add.s r1, r8, r1
002bc4  13a1b805  setlt.ul r2, r[18:19], r[28:29]
002bc8  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
002bcc  9f818000  addli r3, r1, 64
002bd0  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
002bd4  9f810001  addli r3, r1, 128
002bd8  9f808001  addli r1, r1, 192
002bdc  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
002be0  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
002be4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002be8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
002bec  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
002bf0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002bf4  3b1f01fe  bneq r2, zero, -60
002bf8  1f018fce  addli r2, r30, -6336
002bfc  9f017fce  addli r3, r30, -6344
002c00  e30bffcd  loadli.w r23,  -6408(r30)
002c04  e3005fce  loadli.w r1,  -6360(r30)
002c08  a7880d00  addli.d r[18:19], r[28:29], 0
002c0c  1f060fcf  addli r12, r30, -6272
002c10  1f084000  addli r16, zero, 32
002c14  1f0b0002  addli r22, zero, 256
002c18  1f0c0001  addli r24, zero, 128
002c1c  9f0c8000  addli r25, zero, 64
002c20  6b550100  load.d r[11:12], 0(r2)
002c24  ebd90100  load.d r[20:21], 0(r3)
002c28  bb800000  bneq r1, zero, 32
002c2c  9bb02800  slli r1, r17, 2
002c30  a7882800  addli.d r[18:19], r[18:19], 16
002c34  8b101410  add.s r1, r8, r1
002c38  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
002c3c  93b0a804  setlt.sl r1, r[18:19], r[11:12]
002c40  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
002c44  bbaf00fe  bneq r1, zero, -24
002c48  6a711bc0  vsrl.p vr2, r22, vr1
002c4c  ab00803f  lui r1, 260096
002c50  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
002c54  6a711cc0  vsrl.p vr2, r24, vr1
002c58  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
002c5c  6af11cc0  vsrl.p vr2, r25, vr1
002c60  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
002c64  6a7118c0  vsrl.p vr2, r16, vr1
002c68  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
002c6c  7a910020  vextract.f r2, vr1{mr0}
002c70  0f872018  div.f.rn r14, r1, r2
002c74  37e20b00  beq r23, zero, 152
002c78  b3081029  zext_int2long r[17:18], zero
002c7c  9bb02800  slli r1, r17, 2
002c80  a7880801  addli.d r[18:19], r[18:19], 128
002c84  8b101410  add.s r1, r8, r1
002c88  13a13805  setlt.ul r2, r[18:19], r[20:21]
002c8c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002c90  9f818000  addli r3, r1, 64
002c94  1f820001  addli r4, r1, 128
002c98  9f828001  addli r5, r1, 192
002c9c  1f830002  addli r6, r1, 256
002ca0  9f838002  addli r7, r1, 320
002ca4  9f840003  addli r9, r1, 384
002ca8  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
002cac  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
002cb0  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
002cb4  c2120302  vload_mask16.mz vr5{mr1}, 0(r6)
002cb8  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
002cbc  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
002cc0  0a112702  vmul.f.mz.rn vr2{mr1}, r14, vr2
002cc4  8a113702  vmul.f.mz.rn vr3{mr1}, r14, vr3
002cc8  0a124702  vmul.f.mz.rn vr4{mr1}, r14, vr4
002ccc  8a125702  vmul.f.mz.rn vr5{mr1}, r14, vr5
002cd0  0a136702  vmul.f.mz.rn vr6{mr1}, r14, vr6
002cd4  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002cd8  9f808003  addli r1, r1, 448
002cdc  c2900402  vload_mask16.mz vr1{mr1}, 0(r9)
002ce0  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
002ce4  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
002ce8  46103202  vstore_mask16.mz vr3{mr1}, 0(r4)
002cec  46904202  vstore_mask16.mz vr4{mr1}, 0(r5)
002cf0  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
002cf4  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
002cf8  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
002cfc  8a137702  vmul.f.mz.rn vr7{mr1}, r14, vr7
002d00  46901402  vstore_mask16.mz vr1{mr1}, 0(r9)
002d04  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
002d08  bb5d01fe  bneq r2, zero, -140
002d0c  e3004fce  loadli.w r1,  -6368(r30)
002d10  a7880900  addli.d r[18:19], r[20:21], 0
002d14  3bd10000  bneq r1, zero, 84
002d18  9bb02800  slli r1, r17, 2
002d1c  a7888800  addli.d r[18:19], r[18:19], 64
002d20  8b101410  add.s r1, r8, r1
002d24  13a1b805  setlt.ul r2, r[18:19], r[28:29]
002d28  9f818000  addli r3, r1, 64
002d2c  1f820001  addli r4, r1, 128
002d30  9f828001  addli r5, r1, 192
002d34  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002d38  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
002d3c  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
002d40  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
002d44  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
002d48  0a112702  vmul.f.mz.rn vr2{mr1}, r14, vr2
002d4c  8a113702  vmul.f.mz.rn vr3{mr1}, r14, vr3
002d50  0a124702  vmul.f.mz.rn vr4{mr1}, r14, vr4
002d54  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002d58  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
002d5c  46103202  vstore_mask16.mz vr3{mr1}, 0(r4)
002d60  46904202  vstore_mask16.mz vr4{mr1}, 0(r5)
002d64  bb5e01fe  bneq r2, zero, -76
002d68  1f010fce  addli r2, r30, -6400
002d6c  e3003fce  loadli.w r1,  -6376(r30)
002d70  a7880d00  addli.d r[18:19], r[28:29], 0
002d74  6b520100  load.d r[5:6], 0(r2)
002d78  bbd00000  bneq r1, zero, 52
002d7c  9bb02800  slli r1, r17, 2
002d80  a7884800  addli.d r[18:19], r[18:19], 32
002d84  8b101410  add.s r1, r8, r1
002d88  13a14804  setlt.ul r2, r[18:19], r[5:6]
002d8c  9f818000  addli r3, r1, 64
002d90  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002d94  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
002d98  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
002d9c  0a112702  vmul.f.mz.rn vr2{mr1}, r14, vr2
002da0  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002da4  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
002da8  3b5f01fe  bneq r2, zero, -44
002dac  e3002fce  loadli.w r1,  -6384(r30)
002db0  a7080200  addli.d r[18:19], r[5:6], 0
002db4  bbb700fc  bneq r1, zero, -1556
002db8  9bb02800  slli r1, r17, 2
002dbc  a7882800  addli.d r[18:19], r[18:19], 16
002dc0  8b101410  add.s r1, r8, r1
002dc4  13b1a804  setlt.sl r2, r[18:19], r[11:12]
002dc8  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002dcc  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
002dd0  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002dd4  bb1f01fe  bneq r2, zero, -28
002dd8  5b39ffff  j -1592
002ddc  9f038fcd  addli r7, r30, -6464
002de0  9f100000  addli r1, zero, 1
002de4  1f211000  addli r2, zero, 10
002de8  9f710000  addli r3, zero, 7
002dec  1f320000  addli r4, zero, 3
002df0  ebd20300  load.d r[6:7], 0(r7)
002df4  3fe112fc  blt.s r5, r1, -1960
002df8  9f030fcf  addli r7, r30, -6272
002dfc  1f040fcf  addli r8, r30, -6272
002e00  1f070000  addli r14, zero, 0
002e04  9f878300  addli r15, r7, 64
002e08  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
002e0c  1f074700  addli r14, r14, 32
002e10  9f830301  addli r7, r7, 128
002e14  42910702  vload_mask16.mz vr2{mr1}, 0(r15)
002e18  ab070100  lui r15, 16
002e1c  eaa11702  vand.u.mz vr3{mr1}, r15, vr1
002e20  6aa22702  vand.u.mz vr4{mr1}, r15, vr2
002e24  ab870000  lui r15, 8
002e28  f2213002  veq.u.mz mr3{mr1}, zero, vr3
002e2c  7e800140  vmnot mr0, mr3
002e30  72214002  veq.u.mz mr2{mr1}, zero, vr4
002e34  92a01710  vadd.u.mh vr1{mr0}, r15, vr1
002e38  7e000140  vmnot mr0, mr2
002e3c  12a12710  vadd.u.mh vr2{mr0}, r15, vr2
002e40  ab770000  lui r15, 7
002e44  9b97f7ff  ori r15, r15, 4095
002e48  92a01716  vadd.u.mh vr1{mr3}, r15, vr1
002e4c  12a12714  vadd.u.mh vr2{mr2}, r15, vr2
002e50  ea3111c2  vsrl.s.mz vr3{mr1}, r2, vr1
002e54  6a3221c2  vsrl.s.mz vr4{mr1}, r2, vr2
002e58  ab07803f  lui r15, 260096
002e5c  abf880ff  lui r17, 1046543
002e60  2bf97f00  lui r18, 2047
002e64  1b19f9ff  ori r18, r18, 4095
002e68  eaa13722  vor.u.mz vr3{mr1}, r15, vr3
002e6c  6aa24722  vor.u.mz vr4{mr1}, r15, vr4
002e70  9b9808f8  ori r17, r17, 3968
002e74  ea201902  vand.u.mz vr1{mr1}, r18, vr1
002e78  6a212902  vand.u.mz vr2{mr1}, r18, vr2
002e7c  86910120  vfloat2fp16_l.rz vr3, vr3
002e80  eaa01722  vor.u.mz vr1{mr1}, r15, vr1
002e84  6aa12722  vor.u.mz vr2{mr1}, r15, vr2
002e88  ab077f00  lui r15, 2032
002e8c  86510220  vfloat2fp16_h.rz vr3, vr4
002e90  9b97f707  ori r15, r15, 127
002e94  86900020  vfloat2fp16_l.rz vr1, vr1
002e98  eaa131a2  vsll.u.mz vr3{mr1}, r3, vr3
002e9c  86500120  vfloat2fp16_h.rz vr1, vr2
002ea0  6aa13802  vand.u.mz vr2{mr1}, r17, vr3
002ea4  ea2012c2  vsrl.u.mz vr1{mr1}, r4, vr1
002ea8  eaa01702  vand.u.mz vr1{mr1}, r15, vr1
002eac  eea02022  vor.u.mz vr1{mr1}, vr1, vr2
002eb0  46001402  vstore.mz vr1{mr1}, 0(r8)
002eb4  1f048400  addli r8, r8, 64
002eb8  3f3d57fe  blt.s r14, r5, -180
002ebc  5bf2feff  j -2160
002ec0  b3013028  zext_int2long r[3:4], zero
002ec4  9f07efce  addli r15, r30, -6288
002ec8  9bb01600  slli r1, r13, 1
002ecc  1b83f601  andi r6, r13, 31
002ed0  9f0c0fcf  addli r25, r30, -6272
002ed4  9f0d0fff  addli r27, r30, -128
002ed8  9f4adfcc  addli r21, r30, -6548
002edc  9f08dfcc  addli r17, r30, -6552
002ee0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002ee4  6bd50700  load.d r[11:12], 0(r15)
002ee8  67011fce  storeli.w r1, -6384(r30)
002eec  abf2ffff  lui r5, 1048575
002ef0  9ff0f6ff  addli r1, r13, -1
002ef4  67024fcf  storeli.w r20, -6368(r30)
002ef8  e7017fcf  storeli.w r23, -6376(r30)
002efc  1b9102fe  ori r2, r5, 4064
002f00  9b93f2ff  ori r7, r5, 4095
002f04  8b908031  div.s r1, r1, r24
002f08  8ba1a110  add.ul r[4:5], r[4:5], r[11:12]
002f0c  178d2600  and r26, r13, r2
002f10  17b36300  sll r6, r7, r6
002f14  8b373918  sub.sl r[16:17], r[19:20], r[4:5]
002f18  1b342d00  slli r8, r26, 2
002f1c  17237300  xor r6, r6, r7
002f20  e700afcf  storeli.w r26, -6392(r30)
002f24  178b2700  and r22, r15, r2
002f28  8b948c10  add.s r9, r25, r8
002f2c  1b440301  srli r8, r6, 16
002f30  7e0003e0  vmmov mr0, r6
002f34  7e0000a0  vmmov zero, mr0
002f38  1b312b00  slli r2, r22, 2
002f3c  67006fcf  storeli.w r22, -6400(r30)
002f40  7e0004e0  vmmov mr0, r8
002f44  1f838400  addli r6, r9, 64
002f48  1b84f701  andi r8, r15, 31
002f4c  e70c9fcc  storeli.w r9, -6456(r30)
002f50  67800a00  storeli.w zero, 0(r21)
002f54  17200000  xor zero, zero, zero
002f58  8b942c10  add.s r9, r25, r2
002f5c  7e0000a0  vmmov zero, mr0
002f60  17b18300  sll r2, r7, r8
002f64  670c6fcc  storeli.w r6, -6464(r30)
002f68  1f838d00  addli r6, r27, 64
002f6c  67800800  storeli.w zero, 0(r17)
002f70  17200000  xor zero, zero, zero
002f74  1f848400  addli r8, r9, 64
002f78  67469fcc  storeli.w r9, -6556(r30)
002f7c  e7066fce  storeli.w r6, -6296(r30)
002f80  1b93c2ff  ori r6, r5, 4092
002f84  17217100  xor r2, r2, r7
002f88  67068fcc  storeli.w r8, -6560(r30)
002f8c  278401f4  addli.d r[9:10], r[4:5], 31232
002f90  7e0001e0  vmmov mr0, r2
002f94  178e6600  and r28, r13, r6
002f98  97886700  and r17, r15, r6
002f9c  1f03afcc  addli r6, r30, -6576
002fa0  1b410101  srli r2, r2, 16
002fa4  7e0000a0  vmmov zero, mr0
002fa8  67000300  storeli.w zero, 0(r6)
002fac  17200000  xor zero, zero, zero
002fb0  674a1fcd  storeli.w r17, -6492(r30)
002fb4  7e0001e0  vmmov mr0, r2
002fb8  1f01ffce  addli r2, r30, -6280
002fbc  e74fcfcd  storeli.w r28, -6404(r30)
002fc0  1f00bfcc  addli zero, r30, -6568
002fc4  73302101  store.d r[19:20], 0(r2)
002fc8  73308000  store.d r[9:10], 0(zero)
002fcc  e3046fce  loadli.w r9,  -6352(r30)
002fd0  17200000  xor zero, zero, zero
002fd4  1f838400  addli r6, r9, 64
002fd8  e70f6fcc  storeli.w r6, -6408(r30)
002fdc  17a37000  xor r6, r1, r7
002fe0  9f830401  addli r7, r9, 128
002fe4  1b335300  slli r6, r6, 5
002fe8  670f7fcc  storeli.w r7, -6416(r30)
002fec  8b13ad10  add.s r7, r26, r10
002ff0  e7446fcc  storeli.w r6, -6580(r30)
002ff4  1bb37000  slli r6, r1, 7
002ff8  9bb06000  slli r1, r1, 6
002ffc  8b932319  sub.s r7, r7, r18
003000  0b936c10  add.s r6, r25, r6
003004  8b901c10  add.s r1, r25, r1
003008  67457fcc  storeli.w r7, -6572(r30)
00300c  e7046fcc  storeli.w r6, -6584(r30)
003010  67441fcc  storeli.w r1, -6588(r30)
003014  1b9302f8  ori r6, r5, 3968
003018  9bb02600  slli r1, r13, 2
00301c  9b9202ff  ori r5, r5, 4080
003020  17846000  and r8, r1, r6
003024  97805000  and r1, r1, r5
003028  8b938c10  add.s r7, r25, r8
00302c  8b901c10  add.s r1, r25, r1
003030  1f045fcd  addli r8, r30, -6488
003034  e70b7fcc  storeli.w r7, -6472(r30)
003038  8b13ae10  add.s r7, r28, r10
00303c  e7491fcc  storeli.w r1, -6500(r30)
003040  7330f400  store.d r[16:17], 0(r8)
003044  1f44f00b  addli r8, zero, 1532
003048  8b932319  sub.s r7, r7, r18
00304c  670a7fcc  storeli.w r7, -6496(r30)
003050  8b133b10  add.s r7, r22, r3
003054  8b913810  add.s r3, r17, r3
003058  1bb22700  slli r4, r15, 2
00305c  9f07cfcd  addli r15, r30, -6432
003060  9f08bfcd  addli r17, r30, -6440
003064  1f080fcd  addli r16, r30, -6528
003068  97006200  and r1, r4, r6
00306c  0b932319  sub.s r6, r7, r18
003070  9f03afcd  addli r7, r30, -6448
003074  8b901c10  add.s r1, r25, r1
003078  67046fcc  storeli.w r6, -6592(r30)
00307c  e7431fcc  storeli.w r1, -6596(r30)
003080  8b902119  sub.s r1, r3, r18
003084  8b11a918  sub.s r3, r18, r10
003088  e7091fcc  storeli.w r1, -6504(r30)
00308c  97005200  and r1, r4, r5
003090  9732c502  sll.d r[6:7], r[11:12], r12
003094  1f06c00b  addli r12, zero, 1504
003098  8b901c10  add.s r1, r25, r1
00309c  73305800  store.d r[6:7], 0(r16)
0030a0  1f281000  addli r16, zero, 10
0030a4  67491fcc  storeli.w r1, -6508(r30)
0030a8  9f8001f4  addli r1, r3, -1536
0030ac  b3113d2c  sext_int2long r[3:4], r26
0030b0  e7031fcc  storeli.w r1, -6600(r30)
0030b4  9f808401  addli r1, r9, 192
0030b8  73b03300  store.d r[4:5], 0(r7)
0030bc  b3113b2c  sext_int2long r[3:4], r22
0030c0  9f041fcd  addli r9, r30, -6520
0030c4  73b03400  store.d r[4:5], 0(r9)
0030c8  a701050c  addli.d r[4:5], r[11:12], 1536
0030cc  9f056fcd  addli r11, r30, -6480
0030d0  1f05ffcc  addli r10, r30, -6536
0030d4  e74e1fcc  storeli.w r1, -6420(r30)
0030d8  9b908c00  ori r1, r25, 8
0030dc  73b03500  store.d r[4:5], 0(r11)
0030e0  ebd10700  load.d r[4:5], 0(r15)
0030e4  67051fce  storeli.w r1, -6320(r30)
0030e8  9f808c2f  addli r1, r25, 6080
0030ec  e7051fce  storeli.w r1, -6312(r30)
0030f0  9f406fcc  addli r1, r30, -6604
0030f4  8ba15110  add.ul r[4:5], r[4:5], r[6:7]
0030f8  73303500  store.d r[4:5], 0(r10)
0030fc  ebd10800  load.d r[4:5], 0(r17)
003100  9f780000  addli r17, zero, 7
003104  1f350000  addli r10, zero, 3
003108  7e0000a0  vmmov zero, mr0
00310c  67800000  storeli.w zero, 0(r1)
003110  17200000  xor zero, zero, zero
003114  8ba15110  add.ul r[4:5], r[4:5], r[6:7]
003118  9f02efcc  addli r5, r30, -6544
00311c  73b03200  store.d r[4:5], 0(r5)
003120  9f017fce  addli r3, r30, -6344
003124  73b0d100  store.d r[14:15], 0(r3)
003128  db100000  j 132
00312c  1f039fce  addli r6, r30, -6328
003130  9f03efcc  addli r7, r30, -6544
003134  eb500300  load.d r[2:3], 0(r6)
003138  00a00000  mfence { lm }
00313c  ab0100f0  lui r3, 983040
003140  6bd20300  load.d r[5:6], 0(r7)
003144  8bb02021  mul.sl r[2:3], r[2:3], r[19:20]
003148  97b04003  sll.d r[2:3], r[2:3], r20
00314c  8b201210  add.ul r[2:3], r[5:6], r[2:3]
003150  63022fce  loadli.w r4,  -6384(r30)
003154  97113200  or r3, r4, r3
003158  ffb19001  s_lm2gm r3, r25, 0(r[2:3])
00315c  9f00ffce  addli r1, r30, -6280
003160  00a00200  mfence { lm, gm }
003164  6bd90000  load.d r[19:20], 0(r1)
003168  9f029fce  addli r5, r30, -6328
00316c  9f035fce  addli r7, r30, -6360
003170  1f039fce  addli r6, r30, -6328
003174  630a4fce  loadli.w r20,  -6368(r30)
003178  e30b3fce  loadli.w r23,  -6376(r30)
00317c  630d1fce  loadli.w r26,  -6392(r30)
003180  630b0fce  loadli.w r22,  -6400(r30)
003184  634effcd  loadli.w r28,  -6404(r30)
003188  1f0c4000  addli r24, zero, 32
00318c  ebd00200  load.d r[2:3], 0(r5)
003190  ebd10300  load.d r[4:5], 0(r7)
003194  a7900000  addli.d r[2:3], r[2:3], 1
003198  73301300  store.d r[2:3], 0(r6)
00319c  93b03004  setlt.sl r1, r[2:3], r[4:5]
0031a0  1f017fce  addli r2, r30, -6344
0031a4  eb560100  load.d r[14:15], 0(r2)
0031a8  37b00008  beq r1, zero, 4108
0031ac  9f10000c  addli r1, zero, 1537
0031b0  1f120000  addli r4, zero, 1
0031b4  b380102a  zext_int2long r[1:2], r1
0031b8  fe0102e0  vmmov mr3, r4
0031bc  93b31604  setlt.sl r7, r[14:15], r[2:3]
0031c0  67067fce  storeli.w r7, -6304(r30)
0031c4  3bb70300  bneq r7, zero, 460
0031c8  1f02efce  addli r4, r30, -6288
0031cc  a7060900  addli.d r[14:15], r[19:20], 0
0031d0  9f1a0000  addli r21, zero, 1
0031d4  eb500200  load.d r[2:3], 0(r4)
0031d8  ab0180ff  lui r3, 1046528
0031dc  93301906  setle.sl r1, r[19:20], r[2:3]
0031e0  1f018fce  addli r2, r30, -6336
0031e4  6b590100  load.d r[19:20], 0(r2)
0031e8  3bfb0000  bneq r1, zero, 732
0031ec  9f049fce  addli r9, r30, -6328
0031f0  9f05cfcd  addli r11, r30, -6432
0031f4  ebd00400  load.d r[2:3], 0(r9)
0031f8  ebd10500  load.d r[4:5], 0(r11)
0031fc  8bb02021  mul.sl r[2:3], r[2:3], r[19:20]
003200  97b05003  sll.d r[2:3], r[2:3], r21
003204  0ba21110  add.ul r[5:6], r[4:5], r[2:3]
003208  9f00efce  addli r1, r30, -6288
00320c  ab0180ff  lui r3, 1046528
003210  6bd30000  load.d r[7:8], 0(r1)
003214  5b0a0000  j 80
003218  9f000002  addli r1, zero, 256
00321c  9f04ffce  addli r9, r30, -6280
003220  2703030c  addli.d r[7:8], r[7:8], 1536
003224  6af110c0  vsrl.p vr2, r1, vr1
003228  9f000001  addli r1, zero, 128
00322c  ebd60400  load.d r[14:15], 0(r9)
003230  00a00000  mfence { lm }
003234  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
003238  6af110c0  vsrl.p vr2, r1, vr1
00323c  9f008000  addli r1, zero, 64
003240  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
003244  6af110c0  vsrl.p vr2, r1, vr1
003248  9330d304  setlt.sl r1, r[7:8], r[14:15]
00324c  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
003250  6a711cc0  vsrl.p vr2, r24, vr1
003254  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
003258  7a910026  vextract.f r2, vr1{mr3}
00325c  8be12148  max.f r3, r3, r2
003260  b7990000  beq r1, zero, 612
003264  8bb06618  sub.sl r[2:3], r[14:15], r[7:8]
003268  9f04000c  addli r9, zero, 1536
00326c  97365303  sll.d r[14:15], r[7:8], r21
003270  8b959040  min.s r11, r1, r9
003274  ab0000f0  lui r1, 983040
003278  8b26d210  add.ul r[14:15], r[5:6], r[14:15]
00327c  1bb11500  slli r2, r11, 1
003280  97101100  or r1, r2, r1
003284  ffa09601  l_gm2lm r1, r25, 0(r[14:15])
003288  00a00200  mfence { lm, gm }
00328c  abf0ffff  lui r1, 1048575
003290  9b9020fe  ori r1, r1, 4066
003294  3fd11500  blt.s r11, r1, 84
003298  9ff0f5ff  addli r1, r11, -1
00329c  2bf1ffff  lui r2, 1048575
0032a0  8b908031  div.s r1, r1, r24
0032a4  1b11f1ff  ori r2, r2, 4095
0032a8  9bb67000  slli r13, r1, 7
0032ac  17a12000  xor r2, r1, r2
0032b0  9bb06000  slli r1, r1, 6
0032b4  9b345100  slli r9, r2, 5
0032b8  8b96dc10  add.s r13, r25, r13
0032bc  0b971c10  add.s r14, r25, r1
0032c0  c2000702  vload.mz vr1{mr1}, 0(r14)
0032c4  66411080  vmerge_l.hf vr2, vr0, vr1
0032c8  9f808600  addli r1, r13, 64
0032cc  46902602  vstore_mask16.mz vr2{mr1}, 0(r13)
0032d0  9f844400  addli r9, r9, 32
0032d4  9f8606ff  addli r13, r13, -128
0032d8  1f0787ff  addli r14, r14, -64
0032dc  e64110a0  vmerge_h.hf vr3, vr0, vr1
0032e0  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0032e4  3bff04fe  bneq r9, zero, -36
0032e8  00a00000  mfence { lm }
0032ec  abf0ffff  lui r1, 1048575
0032f0  ab0480ff  lui r9, 1046528
0032f4  9b9000fe  ori r1, r1, 4064
0032f8  97861500  and r13, r11, r1
0032fc  3f815601  blt.s r13, r21, 64
003300  ab0080ff  lui r1, 1046528
003304  3397e62a  sext_int2long r[14:15], r13
003308  33092029  zext_int2long r[18:19], zero
00330c  ea900022  vor.f.mz vr1{mr1}, r1, vr0
003310  9b302900  slli r1, r18, 2
003314  27094900  addli.d r[19:20], r[19:20], 32
003318  8b901c10  add.s r1, r25, r1
00331c  1331e904  setlt.sl r2, r[19:20], r[15:16]
003320  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003324  9f808000  addli r1, r1, 64
003328  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
00332c  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
003330  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
003334  3b7f01fe  bneq r2, zero, -36
003338  5b010000  j 8
00333c  ea900422  vor.f.mz vr1{mr1}, r9, vr0
003340  9f008fce  addli r1, r30, -6336
003344  6bd90000  load.d r[19:20], 0(r1)
003348  3fa0b600  blt.s r13, r11, 8
00334c  dbd9ffff  j -308
003350  abf0ffff  lui r1, 1048575
003354  1b81f501  andi r2, r11, 31
003358  9bb42600  slli r9, r13, 2
00335c  9b90f0ff  ori r1, r1, 4095
003360  17b12000  sll r2, r1, r2
003364  97201100  xor r1, r2, r1
003368  0b919c10  add.s r2, r25, r9
00336c  7e8000e0  vmmov mr0, r1
003370  9bc00001  srli r1, r1, 16
003374  42110100  vload_mask16.mz vr2{mr0}, 0(r2)
003378  1f018100  addli r2, r2, 64
00337c  7e8100e0  vmmov mr2, r1
003380  c2110104  vload_mask16.mz vr3{mr2}, 0(r2)
003384  b6902010  vmax.f.mh vr1{mr0}, vr1, vr2
003388  b6903014  vmax.f.mh vr1{mr2}, vr1, vr3
00338c  dbd1ffff  j -372
003390  9f038fce  addli r7, r30, -6336
003394  9f049fce  addli r9, r30, -6328
003398  9f05ffcc  addli r11, r30, -6536
00339c  1f130000  addli r6, zero, 1
0033a0  6bd90300  load.d r[19:20], 0(r7)
0033a4  ebd00400  load.d r[2:3], 0(r9)
0033a8  ab0100f0  lui r3, 983040
0033ac  8bb02021  mul.sl r[2:3], r[2:3], r[19:20]
0033b0  97b04002  sll.d r[2:3], r[2:3], r4
0033b4  63022fce  loadli.w r4,  -6384(r30)
0033b8  97113200  or r3, r4, r3
0033bc  6bd20500  load.d r[5:6], 0(r11)
0033c0  8b201210  add.ul r[2:3], r[5:6], r[2:3]
0033c4  ffa19001  l_gm2lm r3, r25, 0(r[2:3])
0033c8  00a00200  mfence { lm, gm }
0033cc  abf0ffff  lui r1, 1048575
0033d0  9b9020fe  ori r1, r1, 4066
0033d4  bfe01600  blt.s r13, r1, 56
0033d8  e3418fcc  loadli.w r3,  -6588(r30)
0033dc  63029fcc  loadli.w r4,  -6584(r30)
0033e0  e3429fcc  loadli.w r5,  -6580(r30)
0033e4  c2800102  vload.mz vr1{mr1}, 0(r3)
0033e8  66411080  vmerge_l.hf vr2, vr0, vr1
0033ec  9f008200  addli r1, r4, 64
0033f0  46102202  vstore_mask16.mz vr2{mr1}, 0(r4)
0033f4  9f824200  addli r5, r5, 32
0033f8  1f0202ff  addli r4, r4, -128
0033fc  9f8181ff  addli r3, r3, -64
003400  e64110a0  vmerge_h.hf vr3, vr0, vr1
003404  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
003408  3bff02fe  bneq r5, zero, -36
00340c  ab0180ff  lui r3, 1046528
003410  00a00000  mfence { lm }
003414  bf656d06  blt.s r26, r6, 3448
003418  ab0080ff  lui r1, 1046528
00341c  b3013028  zext_int2long r[3:4], zero
003420  ea900022  vor.f.mz vr1{mr1}, r1, vr0
003424  9f00afcd  addli r1, r30, -6448
003428  ebd20000  load.d r[6:7], 0(r1)
00342c  9bb02100  slli r1, r3, 2
003430  a7814100  addli.d r[4:5], r[4:5], 32
003434  8b901c10  add.s r1, r25, r1
003438  13b15104  setlt.sl r2, r[4:5], r[6:7]
00343c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003440  9f808000  addli r1, r1, 64
003444  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
003448  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
00344c  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
003450  3b7f01fe  bneq r2, zero, -36
003454  93b0d204  setlt.sl r1, r[6:7], r[14:15]
003458  b7f00000  beq r1, zero, 60
00345c  1f41dfcc  addli r2, r30, -6548
003460  e3009fcd  loadli.w r1,  -6456(r30)
003464  9f01dfcc  addli r3, r30, -6552
003468  63000100  loadli.w zero,  0(r2)
00346c  7e0000e0  vmmov mr0, zero
003470  17200000  xor zero, zero, zero
003474  42910000  vload_mask16.mz vr2{mr0}, 0(r1)
003478  63800100  loadli.w zero,  0(r3)
00347c  e3008fcd  loadli.w r1,  -6464(r30)
003480  7e0100e0  vmmov mr2, zero
003484  17200000  xor zero, zero, zero
003488  c2910004  vload_mask16.mz vr3{mr2}, 0(r1)
00348c  b6902010  vmax.f.mh vr1{mr0}, vr1, vr2
003490  b6903014  vmax.f.mh vr1{mr2}, vr1, vr3
003494  9f000002  addli r1, zero, 256
003498  6af110c0  vsrl.p vr2, r1, vr1
00349c  9f000001  addli r1, zero, 128
0034a0  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
0034a4  6af110c0  vsrl.p vr2, r1, vr1
0034a8  9f008000  addli r1, zero, 64
0034ac  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
0034b0  6af110c0  vsrl.p vr2, r1, vr1
0034b4  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
0034b8  6a711cc0  vsrl.p vr2, r24, vr1
0034bc  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
0034c0  fa910026  vextract.f r3, vr1{mr3}
0034c4  73603a00  stores.w r3, 0(r20)
0034c8  9f017fce  addli r3, r30, -6344
0034cc  1f1a0000  addli r20, zero, 1
0034d0  00200100  mfence { sm }
0034d4  abf00000  lui r1, 15
0034d8  9b90f0ff  ori r1, r1, 4095
0034dc  80a10004  csr_set csr3, r1
0034e0  00d00100  sync_group
0034e4  ab000000  lui r1, 0
0034e8  ebd60100  load.d r[14:15], 0(r3)
0034ec  9f800000  addli r1, r1, 0
0034f0  1f810000  addli r2, r1, 0
0034f4  9f008100  addli r1, r2, 64
0034f8  ca100102  vloads_mask16.mz vr1{mr1}, 0(r2)
0034fc  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
003500  9f000101  addli r1, r2, 128
003504  1f018101  addli r2, r2, 192
003508  ca910002  vloads_mask16.mz vr3{mr1}, 0(r1)
00350c  4a120102  vloads_mask16.mz vr4{mr1}, 0(r2)
003510  9f000002  addli r1, zero, 256
003514  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
003518  36114102  vmax.f.mz vr2{mr1}, vr2, vr4
00351c  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
003520  6af110c0  vsrl.p vr2, r1, vr1
003524  9f000001  addli r1, zero, 128
003528  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
00352c  6af110c0  vsrl.p vr2, r1, vr1
003530  9f008000  addli r1, zero, 64
003534  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
003538  6af110c0  vsrl.p vr2, r1, vr1
00353c  9f00000c  addli r1, zero, 1536
003540  b380102a  zext_int2long r[1:2], r1
003544  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
003548  93b0d004  setlt.sl r1, r[2:3], r[14:15]
00354c  6a711cc0  vsrl.p vr2, r24, vr1
003550  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
003554  7a910026  vextract.f r2, vr1{mr3}
003558  8b620158  neg.f r5, r2
00355c  b7cd0000  beq r1, zero, 880
003560  bf504b01  blt.s r22, r20, 52
003564  9f010fcf  addli r3, r30, -6272
003568  1f020000  addli r4, zero, 0
00356c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
003570  9f808100  addli r1, r3, 64
003574  1f024200  addli r4, r4, 32
003578  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
00357c  92901202  vadd.f.mz.rn vr1{mr1}, r5, vr1
003580  12912202  vadd.f.mz.rn vr2{mr1}, r5, vr2
003584  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
003588  9f810101  addli r3, r3, 128
00358c  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
003590  3f7f62ff  blt.s r4, r22, -36
003594  9f005fcd  addli r1, r30, -6488
003598  e3444fcd  loadli.w r9,  -6492(r30)
00359c  630eafce  loadli.w r28,  -6320(r30)
0035a0  ebd60000  load.d r[14:15], 0(r1)
0035a4  3f20db00  blt.s r22, r13, 8
0035a8  5b0b0000  j 88
0035ac  00a00000  mfence { lm }
0035b0  9f010000  addli r3, zero, 0
0035b4  e340cfcc  loadli.w r1,  -6556(r30)
0035b8  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0035bc  e300cfcc  loadli.w r1,  -6560(r30)
0035c0  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0035c4  e300dfce  loadli.w r1,  -6296(r30)
0035c8  92901202  vadd.f.mz.rn vr1{mr1}, r5, vr1
0035cc  12912202  vadd.f.mz.rn vr2{mr1}, r5, vr2
0035d0  46901d02  vstore_mask16.mz vr1{mr1}, 0(r27)
0035d4  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0035d8  00a00000  mfence { lm }
0035dc  63028fcc  loadli.w r4,  -6592(r30)
0035e0  63437fcc  loadli.w r6,  -6596(r30)
0035e4  8b903d10  add.s r1, r27, r3
0035e8  0b113310  add.s r2, r6, r3
0035ec  1f120200  addli r4, r4, 1
0035f0  9fc10100  addli r3, r3, 4
0035f4  e3800000  loadli.w r1,  0(r1)
0035f8  67001100  storeli.w r1, 0(r2)
0035fc  bb2f02fe  bneq r4, zero, -24
003600  00a00000  mfence { lm }
003604  3fa14401  blt.s r9, r20, 72
003608  9f010000  addli r3, zero, 0
00360c  1f020e00  addli r4, r28, 0
003610  e300f2ff  loadli.w r1,  -8(r4)
003614  6341f2ff  loadli.w r2,  -4(r4)
003618  63030200  loadli.w r6,  0(r4)
00361c  e3430200  loadli.w r7,  4(r4)
003620  9fc10100  addli r3, r3, 4
003624  8f801000  exp.f.rn r1, r1
003628  0f012100  exp.f.rn r2, r2
00362c  0f036300  exp.f.rn r6, r6
003630  8f837300  exp.f.rn r7, r7
003634  e70f12fe  storeli.w r1, -8(r4)
003638  e74f22fe  storeli.w r2, -4(r4)
00363c  67006200  storeli.w r6, 0(r4)
003640  67407200  storeli.w r7, 4(r4)
003644  1f022200  addli r4, r4, 16
003648  3faf91fe  blt.s r3, r9, -56
00364c  e3412fcd  loadli.w r3,  -6508(r30)
003650  63023fcd  loadli.w r4,  -6504(r30)
003654  4bf09600  ble.s r13, r9, 28
003658  e3800100  loadli.w r1,  0(r3)
00365c  1f120200  addli r4, r4, 1
003660  8f801000  exp.f.rn r1, r1
003664  67801100  storeli.w r1, 0(r3)
003668  9fc10100  addli r3, r3, 4
00366c  bb3f02fe  bneq r4, zero, -20
003670  9f001fcd  addli r1, r30, -6520
003674  00a00000  mfence { lm }
003678  6bd30000  load.d r[7:8], 0(r1)
00367c  bf2c4b05  blt.s r22, r20, 2856
003680  b3013028  zext_int2long r[3:4], zero
003684  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003688  9bb02100  slli r1, r3, 2
00368c  a7814100  addli.d r[4:5], r[4:5], 32
003690  8b901c10  add.s r1, r25, r1
003694  13b16104  setlt.sl r2, r[4:5], r[7:8]
003698  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
00369c  9f808000  addli r1, r1, 64
0036a0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0036a4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0036a8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0036ac  3b7f01fe  bneq r2, zero, -36
0036b0  9330d304  setlt.sl r1, r[7:8], r[14:15]
0036b4  b7f00000  beq r1, zero, 60
0036b8  1f01afcc  addli r2, r30, -6576
0036bc  e340cfcc  loadli.w r1,  -6556(r30)
0036c0  9f416fcc  addli r3, r30, -6604
0036c4  63000100  loadli.w zero,  0(r2)
0036c8  7e0000e0  vmmov mr0, zero
0036cc  17200000  xor zero, zero, zero
0036d0  42910000  vload_mask16.mz vr2{mr0}, 0(r1)
0036d4  63800100  loadli.w zero,  0(r3)
0036d8  e300cfcc  loadli.w r1,  -6560(r30)
0036dc  7e0000e0  vmmov mr0, zero
0036e0  17200000  xor zero, zero, zero
0036e4  c2910000  vload_mask16.mz vr3{mr0}, 0(r1)
0036e8  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0036ec  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0036f0  9f00bfcc  addli r1, r30, -6568
0036f4  1f02efce  addli r4, r30, -6288
0036f8  ebd60000  load.d r[14:15], 0(r1)
0036fc  9f000002  addli r1, zero, 256
003700  6af110c0  vsrl.p vr2, r1, vr1
003704  9f000001  addli r1, zero, 128
003708  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00370c  6af110c0  vsrl.p vr2, r1, vr1
003710  9f008000  addli r1, zero, 64
003714  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
003718  6af110c0  vsrl.p vr2, r1, vr1
00371c  eb500200  load.d r[2:3], 0(r4)
003720  00a00000  mfence { lm }
003724  93b01604  setlt.sl r1, r[14:15], r[2:3]
003728  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00372c  6a711cc0  vsrl.p vr2, r24, vr1
003730  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
003734  7a910026  vextract.f r2, vr1{mr3}
003738  8b610110  add.f.rn r3, r2, zero
00373c  3b9d0000  bneq r1, zero, 836
003740  1f029fce  addli r4, r30, -6328
003744  9f04cfcd  addli r9, r30, -6432
003748  eb500200  load.d r[2:3], 0(r4)
00374c  6bd30400  load.d r[7:8], 0(r9)
003750  8bb02021  mul.sl r[2:3], r[2:3], r[19:20]
003754  97b04003  sll.d r[2:3], r[2:3], r20
003758  0b231310  add.ul r[7:8], r[7:8], r[2:3]
00375c  97b04603  sll.d r[2:3], r[14:15], r20
003760  2b0200f0  lui r4, 983040
003764  9f040018  addli r9, zero, 3072
003768  8b201310  add.ul r[2:3], r[7:8], r[2:3]
00376c  17924400  or r4, r9, r4
003770  7fa29001  l_gm2lm r4, r25, 0(r[2:3])
003774  1f028017  addli r4, zero, 3008
003778  00a00200  mfence { lm, gm }
00377c  e304bfce  loadli.w r9,  -6312(r30)
003780  8b904c10  add.s r1, r25, r4
003784  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003788  1f0282ff  addli r4, r4, -64
00378c  42810002  vload.mz vr2{mr1}, 0(r1)
003790  9f8084ff  addli r1, r9, -64
003794  e6c12080  vmerge_l.hf vr3, vr1, vr2
003798  66c220a0  vmerge_h.hf vr4, vr1, vr2
00379c  46904402  vstore_mask16.mz vr4{mr1}, 0(r9)
0037a0  9f8404ff  addli r9, r9, -128
0037a4  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0037a8  abf0ffff  lui r1, 1048575
0037ac  9b9000fc  ori r1, r1, 4032
0037b0  3b4f12fe  bneq r4, r1, -48
0037b4  00a00000  mfence { lm }
0037b8  abf0ffff  lui r1, 1048575
0037bc  1f020fcf  addli r4, r30, -6272
0037c0  9b9400fe  ori r9, r1, 4064
0037c4  42110202  vload_mask16.mz vr2{mr1}, 0(r4)
0037c8  9f008200  addli r1, r4, 64
0037cc  9f844400  addli r9, r9, 32
0037d0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0037d4  1381c404  setlt.u r2, r9, r12
0037d8  12912202  vadd.f.mz.rn vr2{mr1}, r5, vr2
0037dc  92913202  vadd.f.mz.rn vr3{mr1}, r5, vr3
0037e0  46102202  vstore_mask16.mz vr2{mr1}, 0(r4)
0037e4  1f020201  addli r4, r4, 128
0037e8  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0037ec  3b6f01fe  bneq r2, zero, -40
0037f0  00a00000  mfence { lm }
0037f4  abf0ffff  lui r1, 1048575
0037f8  9f040e00  addli r9, r28, 0
0037fc  1b92c0ff  ori r4, r1, 4092
003800  e380f4ff  loadli.w r1,  -8(r9)
003804  63c1f4ff  loadli.w r2,  -4(r9)
003808  e3850400  loadli.w r11,  0(r9)
00380c  e3c70400  loadli.w r15,  4(r9)
003810  1f420200  addli r4, r4, 4
003814  13098204  setlt.u r18, r4, r8
003818  8f801000  exp.f.rn r1, r1
00381c  0f012100  exp.f.rn r2, r2
003820  8f85b500  exp.f.rn r11, r11
003824  8f87f700  exp.f.rn r15, r15
003828  e78f14fe  storeli.w r1, -8(r9)
00382c  e7cf24fe  storeli.w r2, -4(r9)
003830  6780b400  storeli.w r11, 0(r9)
003834  67c0f400  storeli.w r15, 4(r9)
003838  9f842400  addli r9, r9, 16
00383c  3b1f09fe  bneq r18, zero, -60
003840  33092029  zext_int2long r[18:19], zero
003844  00a00000  mfence { lm }
003848  9b302900  slli r1, r18, 2
00384c  b30a5629  zext_int2long r[21:22], r12
003850  8b901c10  add.s r1, r25, r1
003854  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003858  9f808000  addli r1, r1, 64
00385c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
003860  93205905  setlt.ul r1, r[19:20], r[22:23]
003864  27094900  addli.d r[19:20], r[19:20], 32
003868  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00386c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003870  3bef00fe  bneq r1, zero, -40
003874  9f000002  addli r1, zero, 256
003878  1f02efce  addli r4, r30, -6288
00387c  a78606f4  addli.d r[14:15], r[14:15], 31232
003880  6af110c0  vsrl.p vr2, r1, vr1
003884  9f000001  addli r1, zero, 128
003888  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00388c  6af110c0  vsrl.p vr2, r1, vr1
003890  9f008000  addli r1, zero, 64
003894  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
003898  6af110c0  vsrl.p vr2, r1, vr1
00389c  eb500200  load.d r[2:3], 0(r4)
0038a0  00a00000  mfence { lm }
0038a4  93b0d006  setle.sl r1, r[2:3], r[14:15]
0038a8  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0038ac  6a711cc0  vsrl.p vr2, r24, vr1
0038b0  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0038b4  7a910026  vextract.f r2, vr1{mr3}
0038b8  8be12110  add.f.rn r3, r3, r2
0038bc  1f018fce  addli r2, r30, -6336
0038c0  6b590100  load.d r[19:20], 0(r2)
0038c4  3bea00fe  bneq r1, zero, -360
0038c8  5b370000  j 440
0038cc  63037fcd  loadli.w r6,  -6472(r30)
0038d0  bf504d01  blt.s r26, r20, 52
0038d4  9f010fcf  addli r3, r30, -6272
0038d8  1f020000  addli r4, zero, 0
0038dc  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0038e0  9f808100  addli r1, r3, 64
0038e4  1f024200  addli r4, r4, 32
0038e8  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0038ec  92901202  vadd.f.mz.rn vr1{mr1}, r5, vr1
0038f0  12912202  vadd.f.mz.rn vr2{mr1}, r5, vr2
0038f4  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0038f8  9f810101  addli r3, r3, 128
0038fc  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
003900  3f7fa2ff  blt.s r4, r26, -36
003904  3f20dd00  blt.s r26, r13, 8
003908  db0a0000  j 84
00390c  00a00000  mfence { lm }
003910  9f010000  addli r3, zero, 0
003914  e3009fcd  loadli.w r1,  -6456(r30)
003918  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00391c  e3008fcd  loadli.w r1,  -6464(r30)
003920  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003924  e300dfce  loadli.w r1,  -6296(r30)
003928  92901202  vadd.f.mz.rn vr1{mr1}, r5, vr1
00392c  12912202  vadd.f.mz.rn vr2{mr1}, r5, vr2
003930  46901d02  vstore_mask16.mz vr1{mr1}, 0(r27)
003934  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
003938  00a00000  mfence { lm }
00393c  6342afcc  loadli.w r4,  -6572(r30)
003940  8b903d10  add.s r1, r27, r3
003944  0b113310  add.s r2, r6, r3
003948  1f120200  addli r4, r4, 1
00394c  9fc10100  addli r3, r3, 4
003950  e3800000  loadli.w r1,  0(r1)
003954  67001100  storeli.w r1, 0(r2)
003958  bb2f02fe  bneq r4, zero, -24
00395c  00a00000  mfence { lm }
003960  3f214e01  blt.s r28, r20, 72
003964  6302afce  loadli.w r4,  -6320(r30)
003968  9f010000  addli r3, zero, 0
00396c  e300f2ff  loadli.w r1,  -8(r4)
003970  6341f2ff  loadli.w r2,  -4(r4)
003974  63030200  loadli.w r6,  0(r4)
003978  e3430200  loadli.w r7,  4(r4)
00397c  9fc10100  addli r3, r3, 4
003980  8f801000  exp.f.rn r1, r1
003984  0f012100  exp.f.rn r2, r2
003988  0f036300  exp.f.rn r6, r6
00398c  8f837300  exp.f.rn r7, r7
003990  e70f12fe  storeli.w r1, -8(r4)
003994  e74f22fe  storeli.w r2, -4(r4)
003998  67006200  storeli.w r6, 0(r4)
00399c  67407200  storeli.w r7, 4(r4)
0039a0  1f022200  addli r4, r4, 16
0039a4  3fafc1ff  blt.s r3, r28, -56
0039a8  e3413fcd  loadli.w r3,  -6500(r30)
0039ac  63024fcd  loadli.w r4,  -6496(r30)
0039b0  4bf0c601  ble.s r13, r28, 28
0039b4  e3800100  loadli.w r1,  0(r3)
0039b8  1f120200  addli r4, r4, 1
0039bc  8f801000  exp.f.rn r1, r1
0039c0  67801100  storeli.w r1, 0(r3)
0039c4  9fc10100  addli r3, r3, 4
0039c8  bb3f02fe  bneq r4, zero, -20
0039cc  9f00afcd  addli r1, r30, -6448
0039d0  00a00000  mfence { lm }
0039d4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0039d8  6bd30000  load.d r[7:8], 0(r1)
0039dc  bf504d01  blt.s r26, r20, 52
0039e0  b3013028  zext_int2long r[3:4], zero
0039e4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0039e8  9bb02100  slli r1, r3, 2
0039ec  a7814100  addli.d r[4:5], r[4:5], 32
0039f0  8b901c10  add.s r1, r25, r1
0039f4  13b16104  setlt.sl r2, r[4:5], r[7:8]
0039f8  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0039fc  9f808000  addli r1, r1, 64
003a00  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
003a04  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
003a08  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003a0c  3b7f01fe  bneq r2, zero, -36
003a10  9330d304  setlt.sl r1, r[7:8], r[14:15]
003a14  b7f00000  beq r1, zero, 60
003a18  1f41dfcc  addli r2, r30, -6548
003a1c  e3009fcd  loadli.w r1,  -6456(r30)
003a20  9f01dfcc  addli r3, r30, -6552
003a24  63000100  loadli.w zero,  0(r2)
003a28  7e0000e0  vmmov mr0, zero
003a2c  17200000  xor zero, zero, zero
003a30  42910000  vload_mask16.mz vr2{mr0}, 0(r1)
003a34  63800100  loadli.w zero,  0(r3)
003a38  e3008fcd  loadli.w r1,  -6464(r30)
003a3c  7e0000e0  vmmov mr0, zero
003a40  17200000  xor zero, zero, zero
003a44  c2910000  vload_mask16.mz vr3{mr0}, 0(r1)
003a48  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
003a4c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003a50  9f000002  addli r1, zero, 256
003a54  6af110c0  vsrl.p vr2, r1, vr1
003a58  9f000001  addli r1, zero, 128
003a5c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
003a60  6af110c0  vsrl.p vr2, r1, vr1
003a64  9f008000  addli r1, zero, 64
003a68  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
003a6c  6af110c0  vsrl.p vr2, r1, vr1
003a70  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
003a74  6a711cc0  vsrl.p vr2, r24, vr1
003a78  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
003a7c  fa910026  vextract.f r3, vr1{mr3}
003a80  73e03b00  stores.w r3, 0(r23)
003a84  00200100  mfence { sm }
003a88  abf00000  lui r1, 15
003a8c  9b90f0ff  ori r1, r1, 4095
003a90  80a10004  csr_set csr3, r1
003a94  00d00100  sync_group
003a98  e3006fce  loadli.w r1,  -6352(r30)
003a9c  ca900002  vloads_mask16.mz vr1{mr1}, 0(r1)
003aa0  e300ffcd  loadli.w r1,  -6408(r30)
003aa4  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
003aa8  e300efcd  loadli.w r1,  -6416(r30)
003aac  ca910002  vloads_mask16.mz vr3{mr1}, 0(r1)
003ab0  e340dfcd  loadli.w r1,  -6420(r30)
003ab4  4a920002  vloads_mask16.mz vr4{mr1}, 0(r1)
003ab8  9f000002  addli r1, zero, 256
003abc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003ac0  16114102  vadd.f.mz.rn vr2{mr1}, vr2, vr4
003ac4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
003ac8  6af110c0  vsrl.p vr2, r1, vr1
003acc  9f000001  addli r1, zero, 128
003ad0  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
003ad4  6af110c0  vsrl.p vr2, r1, vr1
003ad8  9f008000  addli r1, zero, 64
003adc  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
003ae0  6af110c0  vsrl.p vr2, r1, vr1
003ae4  ab00803f  lui r1, 260096
003ae8  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
003aec  6a711cc0  vsrl.p vr2, r24, vr1
003af0  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
003af4  7a910026  vextract.f r2, vr1{mr3}
003af8  8f852018  div.f.rn r11, r1, r2
003afc  e300cfce  loadli.w r1,  -6304(r30)
003b00  bb940002  bneq r1, zero, 1316
003b04  abf0ffff  lui r1, 1048575
003b08  9f010fcf  addli r3, r30, -6272
003b0c  1b9200fe  ori r4, r1, 4064
003b10  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
003b14  9f808100  addli r1, r3, 64
003b18  1f024200  addli r4, r4, 32
003b1c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003b20  1301c204  setlt.u r2, r4, r12
003b24  8a901502  vmul.f.mz.rn vr1{mr1}, r11, vr1
003b28  0a912502  vmul.f.mz.rn vr2{mr1}, r11, vr2
003b2c  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
003b30  9f810101  addli r3, r3, 128
003b34  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
003b38  3b6f01fe  bneq r2, zero, -40
003b3c  00a00000  mfence { lm }
003b40  abf0ffff  lui r1, 1048575
003b44  9f010fcf  addli r3, r30, -6272
003b48  1f030fcf  addli r6, r30, -6272
003b4c  1b9200fe  ori r4, r1, 4064
003b50  9f808100  addli r1, r3, 64
003b54  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
003b58  1f024200  addli r4, r4, 32
003b5c  9f810101  addli r3, r3, 128
003b60  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003b64  ab000100  lui r1, 16
003b68  eaa11002  vand.u.mz vr3{mr1}, r1, vr1
003b6c  6aa22002  vand.u.mz vr4{mr1}, r1, vr2
003b70  ab800000  lui r1, 8
003b74  72203002  veq.u.mz mr0{mr1}, zero, vr3
003b78  7e010040  vmnot mr2, mr0
003b7c  f2214002  veq.u.mz mr3{mr1}, zero, vr4
003b80  92a01014  vadd.u.mh vr1{mr2}, r1, vr1
003b84  7e810140  vmnot mr2, mr3
003b88  12a12014  vadd.u.mh vr2{mr2}, r1, vr2
003b8c  ab700000  lui r1, 7
003b90  9b90f0ff  ori r1, r1, 4095
003b94  92a01010  vadd.u.mh vr1{mr0}, r1, vr1
003b98  12a12016  vadd.u.mh vr2{mr3}, r1, vr2
003b9c  ea3118c2  vsrl.s.mz vr3{mr1}, r16, vr1
003ba0  6a3228c2  vsrl.s.mz vr4{mr1}, r16, vr2
003ba4  ab00803f  lui r1, 260096
003ba8  2bf180ff  lui r2, 1046543
003bac  abf37f00  lui r7, 2047
003bb0  9b93f3ff  ori r7, r7, 4095
003bb4  eaa13022  vor.u.mz vr3{mr1}, r1, vr3
003bb8  6aa24022  vor.u.mz vr4{mr1}, r1, vr4
003bbc  1b1101f8  ori r2, r2, 3968
003bc0  eaa01302  vand.u.mz vr1{mr1}, r7, vr1
003bc4  6aa12302  vand.u.mz vr2{mr1}, r7, vr2
003bc8  86910120  vfloat2fp16_l.rz vr3, vr3
003bcc  eaa01022  vor.u.mz vr1{mr1}, r1, vr1
003bd0  6aa12022  vor.u.mz vr2{mr1}, r1, vr2
003bd4  ab007f00  lui r1, 2032
003bd8  86510220  vfloat2fp16_h.rz vr3, vr4
003bdc  9b90f007  ori r1, r1, 127
003be0  86900020  vfloat2fp16_l.rz vr1, vr1
003be4  eaa138a2  vsll.u.mz vr3{mr1}, r17, vr3
003be8  86500120  vfloat2fp16_h.rz vr1, vr2
003bec  6a213102  vand.u.mz vr2{mr1}, r2, vr3
003bf0  ea2015c2  vsrl.u.mz vr1{mr1}, r10, vr1
003bf4  eaa01002  vand.u.mz vr1{mr1}, r1, vr1
003bf8  9300c204  setlt.u r1, r4, r12
003bfc  eea02022  vor.u.mz vr1{mr1}, vr1, vr2
003c00  46001302  vstore.mz vr1{mr1}, 0(r6)
003c04  1f038300  addli r6, r6, 64
003c08  3bad00fe  bneq r1, zero, -184
003c0c  9f079fce  addli r15, r30, -6328
003c10  1f0b6fcd  addli r22, r30, -6480
003c14  9f0affce  addli r21, r30, -6280
003c18  9f0bbfcd  addli r23, r30, -6440
003c1c  1f0c0fcd  addli r24, r30, -6528
003c20  ebd00700  load.d r[2:3], 0(r15)
003c24  eb510b00  load.d r[4:5], 0(r22)
003c28  8bb02021  mul.sl r[2:3], r[2:3], r[19:20]
003c2c  6bd90a00  load.d r[19:20], 0(r21)
003c30  00a00000  mfence { lm }
003c34  17b34003  sll.d r[7:8], r[2:3], r20
003c38  ebd00b00  load.d r[2:3], 0(r23)
003c3c  93343906  setle.sl r9, r[19:20], r[4:5]
003c40  8ba16010  add.ul r[4:5], r[2:3], r[7:8]
003c44  ab0000f0  lui r1, 983040
003c48  eb560c00  load.d r[14:15], 0(r24)
003c4c  1f010018  addli r2, zero, 3072
003c50  97101100  or r1, r2, r1
003c54  8ba6d110  add.ul r[14:15], r[4:5], r[14:15]
003c58  ffb09601  s_lm2gm r1, r25, 0(r[14:15])
003c5c  00a00200  mfence { lm, gm }
003c60  3ba404fa  bneq r9, zero, -2808
003c64  9f04cfcd  addli r9, r30, -6432
003c68  ebd00400  load.d r[2:3], 0(r9)
003c6c  8ba06010  add.ul r[2:3], r[2:3], r[7:8]
003c70  1f03cfce  addli r6, r30, -6304
003c74  73301300  store.d r[2:3], 0(r6)
003c78  9f006fcd  addli r1, r30, -6480
003c7c  00a00000  mfence { lm }
003c80  e30b7fcc  loadli.w r23,  -6600(r30)
003c84  ebda0000  load.d r[22:23], 0(r1)
003c88  db060000  j 52
003c8c  9f04ffce  addli r9, r30, -6280
003c90  00a00000  mfence { lm }
003c94  ab0000f0  lui r1, 983040
003c98  a78a0a0c  addli.d r[22:23], r[22:23], 1536
003c9c  0ba3d110  add.ul r[7:8], r[4:5], r[14:15]
003ca0  9f8b0bf4  addli r23, r23, -1536
003ca4  6bd90400  load.d r[19:20], 0(r9)
003ca8  97901700  or r1, r15, r1
003cac  ff309301  s_lm2gm r1, r25, 0(r[7:8])
003cb0  13b12a05  setlt.sl r2, r[22:23], r[19:20]
003cb4  00a00200  mfence { lm, gm }
003cb8  b74201fa  beq r2, zero, -2896
003cbc  0b395919  sub.sl r[19:20], r[19:20], r[22:23]
003cc0  9f00000c  addli r1, zero, 1536
003cc4  1f01cfce  addli r2, r30, -6304
003cc8  97b64a03  sll.d r[14:15], r[22:23], r20
003ccc  0b1e1940  min.s r28, r18, r1
003cd0  ab0000f0  lui r1, 983040
003cd4  6b530100  load.d r[7:8], 0(r2)
003cd8  9b371e00  slli r15, r28, 1
003cdc  0b23d310  add.ul r[7:8], r[7:8], r[14:15]
003ce0  97901700  or r1, r15, r1
003ce4  ff209301  l_gm2lm r1, r25, 0(r[7:8])
003ce8  00a00200  mfence { lm, gm }
003cec  abf0ffff  lui r1, 1048575
003cf0  9b9020fe  ori r1, r1, 4066
003cf4  3f711e00  blt.s r28, r1, 92
003cf8  9f70feff  addli r1, r28, -1
003cfc  1f014000  addli r2, zero, 32
003d00  8b902030  div.s r1, r1, r2
003d04  2bf1ffff  lui r2, 1048575
003d08  1b11f1ff  ori r2, r2, 4095
003d0c  17a12000  xor r2, r1, r2
003d10  1bb37000  slli r6, r1, 7
003d14  9bb06000  slli r1, r1, 6
003d18  9b345100  slli r9, r2, 5
003d1c  0b9d6c10  add.s r26, r25, r6
003d20  0b9c1c10  add.s r24, r25, r1
003d24  c2000c02  vload.mz vr1{mr1}, 0(r24)
003d28  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
003d2c  e6411180  vmerge_l.hf vr3, vr2, vr1
003d30  9f008d00  addli r1, r26, 64
003d34  46103d02  vstore_mask16.mz vr3{mr1}, 0(r26)
003d38  9f844400  addli r9, r9, 32
003d3c  1f0d0dff  addli r26, r26, -128
003d40  1f0c8cff  addli r24, r24, -64
003d44  664211a0  vmerge_h.hf vr4, vr2, vr1
003d48  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
003d4c  3bef04fe  bneq r9, zero, -40
003d50  00a00000  mfence { lm }
003d54  abf0ffff  lui r1, 1048575
003d58  9b9000fe  ori r1, r1, 4064
003d5c  170d1e00  and r26, r28, r1
003d60  bf504d01  blt.s r26, r20, 52
003d64  1f030fcf  addli r6, r30, -6272
003d68  9f030000  addli r7, zero, 0
003d6c  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
003d70  9f008300  addli r1, r6, 64
003d74  9f834300  addli r7, r7, 32
003d78  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003d7c  92901202  vadd.f.mz.rn vr1{mr1}, r5, vr1
003d80  12912202  vadd.f.mz.rn vr2{mr1}, r5, vr2
003d84  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
003d88  1f030301  addli r6, r6, 128
003d8c  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
003d90  3fffa3ff  blt.s r7, r26, -36
003d94  3f20cd01  blt.s r26, r28, 8
003d98  db0e0000  j 116
003d9c  9b302d00  slli r1, r26, 2
003da0  2bf1ffff  lui r2, 1048575
003da4  00a00000  mfence { lm }
003da8  1f03000c  addli r6, zero, 1536
003dac  9f040000  addli r9, zero, 0
003db0  8b901c10  add.s r1, r25, r1
003db4  0b936b40  min.s r6, r23, r6
003db8  1b1101f8  ori r2, r2, 3968
003dbc  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
003dc0  9f808000  addli r1, r1, 64
003dc4  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003dc8  9b302300  slli r1, r6, 2
003dcc  1b03f301  andi r6, r6, 31
003dd0  97802000  and r1, r1, r2
003dd4  92901202  vadd.f.mz.rn vr1{mr1}, r5, vr1
003dd8  8b931c10  add.s r7, r25, r1
003ddc  e300dfce  loadli.w r1,  -6296(r30)
003de0  12912202  vadd.f.mz.rn vr2{mr1}, r5, vr2
003de4  46901d02  vstore_mask16.mz vr1{mr1}, 0(r27)
003de8  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
003dec  00a00000  mfence { lm }
003df0  8b909d10  add.s r1, r27, r9
003df4  0b919310  add.s r2, r7, r9
003df8  1f73f3ff  addli r6, r6, -1
003dfc  9fc40400  addli r9, r9, 4
003e00  e3800000  loadli.w r1,  0(r1)
003e04  67001100  storeli.w r1, 0(r2)
003e08  bb2f03fe  bneq r6, zero, -24
003e0c  00a00000  mfence { lm }
003e10  abf0ffff  lui r1, 1048575
003e14  9b90c0ff  ori r1, r1, 4092
003e18  97041e00  and r9, r28, r1
003e1c  3fa14401  blt.s r9, r20, 72
003e20  6303afce  loadli.w r6,  -6320(r30)
003e24  1f0c0000  addli r24, zero, 0
003e28  e300f3ff  loadli.w r1,  -8(r6)
003e2c  6341f3ff  loadli.w r2,  -4(r6)
003e30  e3030300  loadli.w r7,  0(r6)
003e34  634a0300  loadli.w r20,  4(r6)
003e38  1f4c0c00  addli r24, r24, 4
003e3c  8f801000  exp.f.rn r1, r1
003e40  0f012100  exp.f.rn r2, r2
003e44  8f837300  exp.f.rn r7, r7
003e48  0f0a4a01  exp.f.rn r20, r20
003e4c  e70f13fe  storeli.w r1, -8(r6)
003e50  e74f23fe  storeli.w r2, -4(r6)
003e54  67007300  storeli.w r7, 0(r6)
003e58  67404301  storeli.w r20, 4(r6)
003e5c  1f032300  addli r6, r6, 16
003e60  3f2f9cfe  blt.s r24, r9, -56
003e64  cb709e00  ble.s r28, r9, 60
003e68  9f00000c  addli r1, zero, 1536
003e6c  2bf1ffff  lui r2, 1048575
003e70  8b901b40  min.s r1, r23, r1
003e74  1b1101ff  ori r2, r2, 4080
003e78  1bb32000  slli r6, r1, 2
003e7c  17012300  and r2, r6, r2
003e80  1b833000  andi r6, r1, 3
003e84  8b932c10  add.s r7, r25, r2
003e88  e3800300  loadli.w r1,  0(r7)
003e8c  1f73f3ff  addli r6, r6, -1
003e90  8f801000  exp.f.rn r1, r1
003e94  67801300  storeli.w r1, 0(r7)
003e98  9fc30300  addli r7, r7, 4
003e9c  bb3f03fe  bneq r6, zero, -20
003ea0  1f1a0000  addli r20, zero, 1
003ea4  00a00000  mfence { lm }
003ea8  bf504d01  blt.s r26, r20, 52
003eac  1f030fcf  addli r6, r30, -6272
003eb0  9f030000  addli r7, zero, 0
003eb4  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
003eb8  9f008300  addli r1, r6, 64
003ebc  9f834300  addli r7, r7, 32
003ec0  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003ec4  8a901502  vmul.f.mz.rn vr1{mr1}, r11, vr1
003ec8  0a912502  vmul.f.mz.rn vr2{mr1}, r11, vr2
003ecc  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
003ed0  1f030301  addli r6, r6, 128
003ed4  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
003ed8  3fffa3ff  blt.s r7, r26, -36
003edc  3f20cd01  blt.s r26, r28, 8
003ee0  db0e0000  j 116
003ee4  1b312d00  slli r2, r26, 2
003ee8  2bf3ffff  lui r6, 1048575
003eec  00a00000  mfence { lm }
003ef0  9f00000c  addli r1, zero, 1536
003ef4  9f040000  addli r9, zero, 0
003ef8  0b912c10  add.s r2, r25, r2
003efc  8b901b40  min.s r1, r23, r1
003f00  1b1303f8  ori r6, r6, 3968
003f04  9f038100  addli r7, r2, 64
003f08  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
003f0c  1bb12000  slli r2, r1, 2
003f10  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
003f14  17016100  and r2, r2, r6
003f18  1b83f001  andi r6, r1, 31
003f1c  e300dfce  loadli.w r1,  -6296(r30)
003f20  8b932c10  add.s r7, r25, r2
003f24  8a901502  vmul.f.mz.rn vr1{mr1}, r11, vr1
003f28  0a912502  vmul.f.mz.rn vr2{mr1}, r11, vr2
003f2c  46901d02  vstore_mask16.mz vr1{mr1}, 0(r27)
003f30  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
003f34  00a00000  mfence { lm }
003f38  8b909d10  add.s r1, r27, r9
003f3c  0b919310  add.s r2, r7, r9
003f40  1f73f3ff  addli r6, r6, -1
003f44  9fc40400  addli r9, r9, 4
003f48  e3800000  loadli.w r1,  0(r1)
003f4c  67001100  storeli.w r1, 0(r2)
003f50  bb2f03fe  bneq r6, zero, -24
003f54  00a00000  mfence { lm }
003f58  bf5449ff  blt.s r18, r20, -716
003f5c  1f090fcf  addli r18, r30, -6272
003f60  9f090fcf  addli r19, r30, -6272
003f64  1f0d0000  addli r26, zero, 0
003f68  9f008900  addli r1, r18, 64
003f6c  c2100902  vload_mask16.mz vr1{mr1}, 0(r18)
003f70  1f0d4d00  addli r26, r26, 32
003f74  1f090901  addli r18, r18, 128
003f78  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003f7c  ab000100  lui r1, 16
003f80  eaa11002  vand.u.mz vr3{mr1}, r1, vr1
003f84  6aa22002  vand.u.mz vr4{mr1}, r1, vr2
003f88  ab800000  lui r1, 8
003f8c  72203002  veq.u.mz mr0{mr1}, zero, vr3
003f90  7e010040  vmnot mr2, mr0
003f94  f2214002  veq.u.mz mr3{mr1}, zero, vr4
003f98  92a01014  vadd.u.mh vr1{mr2}, r1, vr1
003f9c  7e810140  vmnot mr2, mr3
003fa0  12a12014  vadd.u.mh vr2{mr2}, r1, vr2
003fa4  ab700000  lui r1, 7
003fa8  9b90f0ff  ori r1, r1, 4095
003fac  92a01010  vadd.u.mh vr1{mr0}, r1, vr1
003fb0  12a12016  vadd.u.mh vr2{mr3}, r1, vr2
003fb4  ea3118c2  vsrl.s.mz vr3{mr1}, r16, vr1
003fb8  6a3228c2  vsrl.s.mz vr4{mr1}, r16, vr2
003fbc  ab00803f  lui r1, 260096
003fc0  2bf180ff  lui r2, 1046543
003fc4  2bf37f00  lui r6, 2047
003fc8  1b13f3ff  ori r6, r6, 4095
003fcc  eaa13022  vor.u.mz vr3{mr1}, r1, vr3
003fd0  6aa24022  vor.u.mz vr4{mr1}, r1, vr4
003fd4  1b1101f8  ori r2, r2, 3968
003fd8  ea201302  vand.u.mz vr1{mr1}, r6, vr1
003fdc  6a212302  vand.u.mz vr2{mr1}, r6, vr2
003fe0  86910120  vfloat2fp16_l.rz vr3, vr3
003fe4  eaa01022  vor.u.mz vr1{mr1}, r1, vr1
003fe8  6aa12022  vor.u.mz vr2{mr1}, r1, vr2
003fec  ab007f00  lui r1, 2032
003ff0  86510220  vfloat2fp16_h.rz vr3, vr4
003ff4  9b90f007  ori r1, r1, 127
003ff8  86900020  vfloat2fp16_l.rz vr1, vr1
003ffc  eaa138a2  vsll.u.mz vr3{mr1}, r17, vr3
004000  86500120  vfloat2fp16_h.rz vr1, vr2
004004  6a213102  vand.u.mz vr2{mr1}, r2, vr3
004008  ea2015c2  vsrl.u.mz vr1{mr1}, r10, vr1
00400c  eaa01002  vand.u.mz vr1{mr1}, r1, vr1
004010  eea02022  vor.u.mz vr1{mr1}, vr1, vr2
004014  46801902  vstore.mz vr1{mr1}, 0(r19)
004018  9f898900  addli r19, r19, 64
00401c  3f3dcdff  blt.s r26, r28, -180
004020  db8dffff  j -916
004024  9f007fce  addli r1, r30, -6344
004028  ebd60000  load.d r[14:15], 0(r1)
00402c  bf504d01  blt.s r26, r20, 52
004030  9f010fcf  addli r3, r30, -6272
004034  1f020000  addli r4, zero, 0
004038  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00403c  9f808100  addli r1, r3, 64
004040  1f024200  addli r4, r4, 32
004044  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
004048  8a901502  vmul.f.mz.rn vr1{mr1}, r11, vr1
00404c  0a912502  vmul.f.mz.rn vr2{mr1}, r11, vr2
004050  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
004054  9f810101  addli r3, r3, 128
004058  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
00405c  3f7fa2ff  blt.s r4, r26, -36
004060  3f20dd00  blt.s r26, r13, 8
004064  5b0b0000  j 88
004068  00a00000  mfence { lm }
00406c  9f010000  addli r3, zero, 0
004070  e3009fcd  loadli.w r1,  -6456(r30)
004074  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
004078  e3008fcd  loadli.w r1,  -6464(r30)
00407c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
004080  e300dfce  loadli.w r1,  -6296(r30)
004084  8a901502  vmul.f.mz.rn vr1{mr1}, r11, vr1
004088  0a912502  vmul.f.mz.rn vr2{mr1}, r11, vr2
00408c  46901d02  vstore_mask16.mz vr1{mr1}, 0(r27)
004090  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
004094  00a00000  mfence { lm }
004098  6342afcc  loadli.w r4,  -6572(r30)
00409c  e3027fcd  loadli.w r5,  -6472(r30)
0040a0  8b903d10  add.s r1, r27, r3
0040a4  0b913210  add.s r2, r5, r3
0040a8  1f120200  addli r4, r4, 1
0040ac  9fc10100  addli r3, r3, 4
0040b0  e3800000  loadli.w r1,  0(r1)
0040b4  67001100  storeli.w r1, 0(r2)
0040b8  bb2f02fe  bneq r4, zero, -24
0040bc  00a00000  mfence { lm }
0040c0  bfb146f9  blt.s r13, r20, -3988
0040c4  9f010fcf  addli r3, r30, -6272
0040c8  1f020fcf  addli r4, r30, -6272
0040cc  9f020000  addli r5, zero, 0
0040d0  9f808100  addli r1, r3, 64
0040d4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0040d8  9f824200  addli r5, r5, 32
0040dc  9f810101  addli r3, r3, 128
0040e0  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0040e4  ab000100  lui r1, 16
0040e8  eaa11002  vand.u.mz vr3{mr1}, r1, vr1
0040ec  6aa22002  vand.u.mz vr4{mr1}, r1, vr2
0040f0  ab800000  lui r1, 8
0040f4  72203002  veq.u.mz mr0{mr1}, zero, vr3
0040f8  7e010040  vmnot mr2, mr0
0040fc  f2214002  veq.u.mz mr3{mr1}, zero, vr4
004100  92a01014  vadd.u.mh vr1{mr2}, r1, vr1
004104  7e810140  vmnot mr2, mr3
004108  12a12014  vadd.u.mh vr2{mr2}, r1, vr2
00410c  ab700000  lui r1, 7
004110  9b90f0ff  ori r1, r1, 4095
004114  92a01010  vadd.u.mh vr1{mr0}, r1, vr1
004118  12a12016  vadd.u.mh vr2{mr3}, r1, vr2
00411c  ea3118c2  vsrl.s.mz vr3{mr1}, r16, vr1
004120  6a3228c2  vsrl.s.mz vr4{mr1}, r16, vr2
004124  ab00803f  lui r1, 260096
004128  2bf180ff  lui r2, 1046543
00412c  2bf37f00  lui r6, 2047
004130  1b13f3ff  ori r6, r6, 4095
004134  eaa13022  vor.u.mz vr3{mr1}, r1, vr3
004138  6aa24022  vor.u.mz vr4{mr1}, r1, vr4
00413c  1b1101f8  ori r2, r2, 3968
004140  ea201302  vand.u.mz vr1{mr1}, r6, vr1
004144  6a212302  vand.u.mz vr2{mr1}, r6, vr2
004148  86910120  vfloat2fp16_l.rz vr3, vr3
00414c  eaa01022  vor.u.mz vr1{mr1}, r1, vr1
004150  6aa12022  vor.u.mz vr2{mr1}, r1, vr2
004154  ab007f00  lui r1, 2032
004158  86510220  vfloat2fp16_h.rz vr3, vr4
00415c  9b90f007  ori r1, r1, 127
004160  86900020  vfloat2fp16_l.rz vr1, vr1
004164  eaa138a2  vsll.u.mz vr3{mr1}, r17, vr3
004168  86500120  vfloat2fp16_h.rz vr1, vr2
00416c  6a213102  vand.u.mz vr2{mr1}, r2, vr3
004170  ea2015c2  vsrl.u.mz vr1{mr1}, r10, vr1
004174  eaa01002  vand.u.mz vr1{mr1}, r1, vr1
004178  eea02022  vor.u.mz vr1{mr1}, vr1, vr2
00417c  46001202  vstore.mz vr1{mr1}, 0(r4)
004180  1f028200  addli r4, r4, 64
004184  3fbdd2fe  blt.s r5, r13, -180
004188  dbf4fdff  j -4188
00418c  9f00afcd  addli r1, r30, -6448
004190  ea900122  vor.f.mz vr1{mr1}, r3, vr0
004194  ebd20000  load.d r[6:7], 0(r1)
004198  93b0d204  setlt.sl r1, r[6:7], r[14:15]
00419c  3b8b00f8  bneq r1, zero, -3392
0041a0  db5efeff  j -3340
0041a4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0041a8  9330d304  setlt.sl r1, r[7:8], r[14:15]
0041ac  3bb400fa  bneq r1, zero, -2804
0041b0  5ba8feff  j -2752
0041b4  9f0e0fcc  addli sp, r30, -6656
0041b8  9f8e0e34  addli sp, sp, 6656
0041bc  00a00300  mfence { lm, sm, gm }
0041c0  00100000  exit
0041c4  00100000  exit
0041c8  00100000  exit
0041cc  00100000  exit
0041d0  00100000  exit
0041d4  00100000  exit
0041d8  00100000  exit
0041dc  00100000  exit
0041e0  00100000  exit
0041e4  00100000  exit
0041e8  00100000  exit
0041ec  00100000  exit
0041f0  00100000  exit
0041f4  00100000  exit
0041f8  00100000  exit
0041fc  00100000  exit
004200  00100000  exit
004204  00100000  exit
004208  00100000  exit
00420c  00100000  exit
004210  00100000  exit
004214  00100000  exit
004218  00100000  exit
00421c  00100000  exit
004220  00100000  exit
004224  00100000  exit
004228  00100000  exit
00422c  00100000  exit
004230  00100000  exit
004234  00100000  exit
004238  00100000  exit
00423c  00100000  exit
004240  00100000  exit
004244  00100000  exit
004248  00100000  exit
00424c  00100000  exit
004250  00100000  exit
004254  00100000  exit
004258  00100000  exit
00425c  00100000  exit
004260  00100000  exit
004264  00100000  exit
004268  00100000  exit
00426c  00100000  exit
004270  00100000  exit
004274  00100000  exit
004278  00100000  exit
00427c  00100000  exit
004280  00100000  exit
004284  00100000  exit
004288  00100000  exit
00428c  00100000  exit
004290  00100000  exit
004294  00100000  exit
004298  00100000  exit
00429c  00100000  exit
0042a0  00100000  exit
0042a4  00100000  exit
0042a8  00100000  exit
0042ac  00100000  exit
0042b0  00100000  exit
0042b4  00100000  exit
0042b8  00100000  exit
0042bc  00100000  exit
0042c0  00100000  exit
0042c4  00100000  exit
0042c8  00100000  exit
0042cc  00100000  exit
0042d0  00100000  exit
0042d4  00100000  exit
0042d8  00100000  exit
0042dc  00100000  exit
0042e0  00100000  exit
0042e4  00100000  exit
0042e8  00100000  exit
0042ec  00100000  exit
0042f0  00100000  exit
0042f4  00100000  exit
0042f8  00100000  exit
0042fc  00100000  exit
004300  00100000  exit
004304  00100000  exit
004308  00100000  exit
00430c  00100000  exit
004310  00100000  exit
004314  00100000  exit
004318  00100000  exit
00431c  00100000  exit
004320  00100000  exit
004324  00100000  exit
004328  00100000  exit
00432c  00100000  exit
004330  00100000  exit
004334  00100000  exit
004338  00100000  exit
00433c  00100000  exit
004340  00100000  exit
004344  00100000  exit
004348  00100000  exit
00434c  00100000  exit
004350  00100000  exit
004354  00100000  exit
004358  00100000  exit
00435c  00100000  exit
004360  00100000  exit
004364  00100000  exit
004368  00100000  exit
00436c  00100000  exit
004370  00100000  exit
004374  00100000  exit
004378  00100000  exit
00437c  00100000  exit
004380  00100000  exit
004384  00100000  exit
004388  00100000  exit
00438c  00100000  exit
004390  00100000  exit
004394  00100000  exit
004398  00100000  exit
00439c  00100000  exit
0043a0  00100000  exit
0043a4  00100000  exit
0043a8  00100000  exit
0043ac  00100000  exit
0043b0  00100000  exit
0043b4  00100000  exit
0043b8  00100000  exit
0043bc  00100000  exit
0043c0  00100000  exit
0043c4  00100000  exit
0043c8  00100000  exit
0043cc  00100000  exit
0043d0  00100000  exit
0043d4  00100000  exit
0043d8  00100000  exit
0043dc  00100000  exit
0043e0  00100000  exit
0043e4  00100000  exit
0043e8  00100000  exit
0043ec  00100000  exit
0043f0  00100000  exit
0043f4  00100000  exit
0043f8  00100000  exit
0043fc  00100000  exit
004400  00100000  exit
004404  00000000  nop
