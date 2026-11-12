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
000078  9f09d000  addli r19, zero, 104
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
0000ac  d71c0000  jal 228
0000b0  fe8007e0  vmmov mr1, r15
0000b4  fe900720  vmmovh mr1, r15
0000b8  1f8a0eff  addli r20, sp, -128
0000bc  4a100002  vloads_mask16.mz vr0{mr1}, 0(zero)
0000c0  ca108002  vloads_mask16.mz vr1{mr1}, 64(zero)
0000c4  46000a02  vstore.mz vr0{mr1}, 0(r20)
0000c8  46041a02  vstore.mz vr1{mr1}, 64(r20)
0000cc  00a00100  mfence { lm, sm }
0000d0  00d00100  sync_group
0000d4  97a01000  xor r1, r1, r1
0000d8  1f8f0e00  addli r30, sp, 0
0000dc  d71c0000  jal 228
0000e0  00400000  trap
0000e4  9f8e0ef1  addli sp, sp, -1920
0000e8  ab000000  lui r1, 0
0000ec  80310002  core_id r3
0000f0  1f8f0e0e  addli r30, sp, 1792
0000f4  2b520000  lui r4, 5
0000f8  1bb12100  slli r2, r3, 2
0000fc  9f800000  addli r1, r1, 0
000100  e303cf00  loadli.w r7,  96(r30)
000104  6343bf00  loadli.w r6,  92(r30)
000108  1b120201  ori r4, r4, 16
00010c  e344cf00  loadli.w r9,  100(r30)
000110  8b922010  add.s r5, r1, r2
000114  0b936320  mul.s r6, r7, r6
000118  9bb34100  slli r7, r3, 4
00011c  0b944210  add.s r8, r5, r4
000120  2bf20000  lui r4, 15
000124  9f820220  addli r5, r5, 4096
000128  0b139320  mul.s r6, r6, r9
00012c  1b12f2ff  ori r4, r4, 4095
000130  67438ff2  storeli.w r8, -1740(r30)
000134  73600400  stores.w zero, 0(r8)
000138  1f040008  addli r8, zero, 1024
00013c  00a00300  mfence { lm, sm, gm }
000140  80210204  csr_set csr3, r4
000144  00d00100  sync_group
000148  67035ff2  storeli.w r5, -1744(r30)
00014c  73e00200  stores.w zero, 0(r5)
000150  8b137418  sub.s r7, r8, r7
000154  80520002  load_param_i r5, 0
000158  1f140000  addli r8, zero, 1
00015c  00a00300  mfence { lm, sm, gm }
000160  80210204  csr_set csr3, r4
000164  00d00100  sync_group
000168  e7036ff2  storeli.w r6, -1736(r30)
00016c  00a00300  mfence { lm, sm, gm }
000170  00a00300  mfence { lm, sm, gm }
000174  80210204  csr_set csr3, r4
000178  00d00100  sync_group
00017c  bff08300  blt.s r7, r8, 60
000180  1bb55100  slli r10, r3, 5
000184  9f052000  addli r11, zero, 16
000188  6b540f02  load.d r[9:10], 32(r30)
00018c  8b83b340  min.u r7, r7, r11
000190  33160528  sext_int2long r[13:14], r10
000194  abf50300  lui r11, 63
000198  0b95a010  add.s r10, r1, r10
00019c  0b24c410  add.ul r[9:10], r[9:10], r[13:14]
0001a0  9b950580  ori r11, r11, 2048
0001a4  9bb31300  slli r7, r7, 1
0001a8  2b0600f0  lui r12, 983040
0001ac  0b15b510  add.s r10, r10, r11
0001b0  9793c300  or r7, r7, r12
0001b4  ff03a400  l_gm2sm r7, r10, 0(r[9:10])
0001b8  00a00300  mfence { lm, sm, gm }
0001bc  00a00300  mfence { lm, sm, gm }
0001c0  80210204  csr_set csr3, r4
0001c4  00d00100  sync_group
0001c8  63027ff2  loadli.w r4,  -1736(r30)
0001cc  cb0b5208  ble.s r4, r5, 4832
0001d0  1b883100  andi r16, r3, 3
0001d4  e3451f00  loadli.w r11,  12(r30)
0001d8  eb548f01  load.d r[10:11], 24(r30)
0001dc  00d30002  load_param_i r6, 1
0001e0  9bc12100  srli r3, r3, 2
0001e4  9f070002  addli r15, zero, 256
0001e8  63428f00  loadli.w r4,  68(r30)
0001ec  eb530f05  load.d r[8:9], 80(r30)
0001f0  9f080002  addli r17, zero, 256
0001f4  1b368800  slli r12, r16, 8
0001f8  e7426ff2  storeli.w r6, -1748(r30)
0001fc  1b83f100  andi r6, r3, 15
000200  8b95c518  sub.s r11, r11, r12
000204  b3060628  zext_int2long r[14:15], r12
000208  e7026ff2  storeli.w r6, -1752(r30)
00020c  8b910548  max.s r3, r11, zero
000210  8bb4d420  mul.sl r[10:11], r[10:11], r[14:15]
000214  8b91f140  min.s r3, r3, r15
000218  73309f92  store.d r[10:11], -1760(r30)
00021c  abf4ffff  lui r9, 1048575
000220  2bf50300  lui r10, 63
000224  9bb11100  slli r3, r3, 1
000228  9b9404ff  ori r9, r9, 4080
00022c  e7413ff2  storeli.w r3, -1764(r30)
000230  9b319800  slli r3, r16, 9
000234  17019100  and r2, r2, r9
000238  9b140580  ori r9, r10, 2048
00023c  1f058000  addli r10, zero, 64
000240  8b913010  add.s r3, r1, r3
000244  8b902010  add.s r1, r1, r2
000248  1f810020  addli r2, r1, 4096
00024c  0b9c9110  add.s r24, r3, r9
000250  8b11c218  sub.s r3, r4, r12
000254  9f040001  addli r9, zero, 128
000258  e7432ff2  storeli.w r2, -1732(r30)
00025c  2b510000  lui r2, 5
000260  8b910148  max.s r3, r3, zero
000264  1b110101  ori r2, r2, 16
000268  0b9d2010  add.s r26, r1, r2
00026c  8b90f140  min.s r1, r3, r15
000270  0bb1d320  mul.sl r[3:4], r[8:9], r[14:15]
000274  1f140000  addli r8, zero, 1
000278  9f030ffa  addli r7, r30, -768
00027c  9f064000  addli r13, zero, 32
000280  73382f90  store.d r[3:4], -1776(r30)
000284  9bb01000  slli r1, r1, 1
000288  abf10000  lui r3, 15
00028c  e7401ff2  storeli.w r1, -1780(r30)
000290  9b95f1ff  ori r11, r3, 4095
000294  b3000328  zext_int2long r[2:3], r6
000298  73301f90  store.d r[2:3], -1792(r30)
00029c  5b090000  j 72
0002a0  eb508f04  load.d r[2:3], 72(r30)
0002a4  6b538f03  load.d r[7:8], 56(r30)
0002a8  8bb01120  mul.sl r[2:3], r[4:5], r[2:3]
0002ac  eb510f91  load.d r[4:5], -1776(r30)
0002b0  8ba03010  add.ul r[2:3], r[2:3], r[4:5]
0002b4  ab0100f0  lui r3, 983040
0002b8  97b08002  sll.d r[2:3], r[2:3], r8
0002bc  97113700  or r3, r14, r3
0002c0  8b201310  add.ul r[2:3], r[7:8], r[2:3]
0002c4  9f030ffa  addli r7, r30, -768
0002c8  ffb17000  s_lm2gm r3, r7, 0(r[2:3])
0002cc  e3405ff2  loadli.w r1,  -1748(r30)
0002d0  00a00000  mfence { lm }
0002d4  8b921210  add.s r5, r5, r1
0002d8  e3007ff2  loadli.w r1,  -1736(r30)
0002dc  3fa01200  blt.s r5, r1, 8
0002e0  db390200  j 4556
0002e4  e340cf00  loadli.w r1,  100(r30)
0002e8  63473ff2  loadli.w r14,  -1764(r30)
0002ec  8b911230  div.s r3, r5, r1
0002f0  e300cf00  loadli.w r1,  96(r30)
0002f4  8b911130  div.s r3, r3, r1
0002f8  e3005ff2  loadli.w r1,  -1752(r30)
0002fc  9bb14100  slli r3, r3, 4
000300  17961100  or r12, r3, r1
000304  e3001f00  loadli.w r1,  8(r30)
000308  3f201600  blt.s r12, r1, 8
00030c  1f070000  addli r14, zero, 0
000310  eb500f90  load.d r[2:3], -1792(r30)
000314  b3910128  sext_int2long r[4:5], r3
000318  2b0300f0  lui r6, 983040
00031c  17136700  or r6, r14, r6
000320  97911102  or.d r[4:5], r[4:5], r[2:3]
000324  eb500f01  load.d r[2:3], 16(r30)
000328  8bba1120  mul.sl r[22:23], r[4:5], r[2:3]
00032c  eb500f92  load.d r[2:3], -1760(r30)
000330  8baa1a10  add.ul r[22:23], r[22:23], r[2:3]
000334  eb500f00  load.d r[2:3], 0(r30)
000338  97ba8a02  sll.d r[22:23], r[22:23], r8
00033c  8baa5011  add.ul r[22:23], r[2:3], r[22:23]
000340  9f008ff7  addli r1, r30, -1088
000344  7fa37a00  l_gm2lm r6, r7, 0(r[22:23])
000348  00a00000  mfence { lm }
00034c  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
000350  c2100fa2  vload_mask16.mz vr1{mr1}, 1280(r30)
000354  c2118fa2  vload_mask16.mz vr3{mr1}, 1344(r30)
000358  c2140fa3  vload_mask16.mz vr9{mr1}, 1408(r30)
00035c  06b50100  vfp162float_l.rn vr10, vr3
000360  86f50100  vfp162float_h.rn vr11, vr3
000364  86b30400  vfp162float_l.rn vr7, vr9
000368  86f20400  vfp162float_h.rn vr5, vr9
00036c  42148fa3  vload_mask16.mz vr8{mr1}, 1472(r30)
000370  4a138c02  vloads_mask16.mz vr6{mr1}, 64(r24)
000374  4a110c03  vloads_mask16.mz vr2{mr1}, 128(r24)
000378  4a128c03  vloads_mask16.mz vr4{mr1}, 192(r24)
00037c  86b10000  vfp162float_l.rn vr3, vr1
000380  86340000  vfp162float_l.rn vr9, vr0
000384  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000388  86740400  vfp162float_h.rn vr9, vr8
00038c  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
000390  86310400  vfp162float_l.rn vr3, vr8
000394  06f40000  vfp162float_h.rn vr8, vr1
000398  86700000  vfp162float_h.rn vr1, vr0
00039c  16101402  vadd.f.mz.rn vr0{mr1}, vr8, vr1
0003a0  9f000ff7  addli r1, r30, -1152
0003a4  86700300  vfp162float_h.rn vr1, vr6
0003a8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003ac  06300300  vfp162float_l.rn vr0, vr6
0003b0  4a130c22  vloads_mask16.mz vr6{mr1}, 256(r24)
0003b4  9f008ff2  addli r1, r30, -1728
0003b8  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
0003bc  46180f82  vstore_mask16.mz vr0{mr1}, 1152(r30)
0003c0  16901502  vadd.f.mz.rn vr0{mr1}, vr11, vr1
0003c4  86750100  vfp162float_h.rn vr11, vr2
0003c8  9690b202  vadd.f.mz.rn vr1{mr1}, vr5, vr11
0003cc  ca128c22  vloads_mask16.mz vr5{mr1}, 320(r24)
0003d0  46140f82  vstore_mask16.mz vr0{mr1}, 1088(r30)
0003d4  06300100  vfp162float_l.rn vr0, vr2
0003d8  461c1f82  vstore_mask16.mz vr1{mr1}, 1216(r30)
0003dc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0003e0  86730200  vfp162float_h.rn vr7, vr4
0003e4  16957402  vadd.f.mz.rn vr10{mr1}, vr9, vr7
0003e8  86330300  vfp162float_l.rn vr7, vr6
0003ec  46100f82  vstore_mask16.mz vr0{mr1}, 1024(r30)
0003f0  06300200  vfp162float_l.rn vr0, vr4
0003f4  96950102  vadd.f.mz.rn vr11{mr1}, vr3, vr0
0003f8  c2110fc2  vload_mask16.mz vr3{mr1}, 1536(r30)
0003fc  06b20100  vfp162float_l.rn vr4, vr3
000400  16107202  vadd.f.mz.rn vr0{mr1}, vr4, vr7
000404  86f30100  vfp162float_h.rn vr7, vr3
000408  06720300  vfp162float_h.rn vr4, vr6
00040c  96904302  vadd.f.mz.rn vr1{mr1}, vr7, vr4
000410  ca110c23  vloads_mask16.mz vr3{mr1}, 384(r24)
000414  c2148fc2  vload_mask16.mz vr9{mr1}, 1600(r30)
000418  06b30200  vfp162float_l.rn vr6, vr5
00041c  06b20400  vfp162float_l.rn vr4, vr9
000420  16146202  vadd.f.mz.rn vr8{mr1}, vr4, vr6
000424  06f30400  vfp162float_h.rn vr6, vr9
000428  86f40200  vfp162float_h.rn vr9, vr5
00042c  16119302  vadd.f.mz.rn vr2{mr1}, vr6, vr9
000430  4a128c23  vloads_mask16.mz vr4{mr1}, 448(r24)
000434  86b40100  vfp162float_l.rn vr9, vr3
000438  06f30100  vfp162float_h.rn vr6, vr3
00043c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000440  c2130fc3  vload_mask16.mz vr7{mr1}, 1664(r30)
000444  86b20300  vfp162float_l.rn vr5, vr7
000448  96929202  vadd.f.mz.rn vr5{mr1}, vr5, vr9
00044c  86f40300  vfp162float_h.rn vr9, vr7
000450  c2138fc3  vload_mask16.mz vr7{mr1}, 1728(r30)
000454  86b10300  vfp162float_l.rn vr3, vr7
000458  96906402  vadd.f.mz.rn vr1{mr1}, vr9, vr6
00045c  06330200  vfp162float_l.rn vr6, vr4
000460  96946102  vadd.f.mz.rn vr9{mr1}, vr3, vr6
000464  86f10300  vfp162float_h.rn vr3, vr7
000468  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00046c  9f000ff7  addli r1, r30, -1152
000470  06730200  vfp162float_h.rn vr6, vr4
000474  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
000478  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
00047c  9f008ff7  addli r1, r30, -1088
000480  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000484  9f008ff4  addli r1, r30, -1472
000488  b6916102  vmax.f.mz vr3{mr1}, vr3, vr6
00048c  42130f83  vload_mask16.mz vr6{mr1}, 1152(r30)
000490  b6916102  vmax.f.mz vr3{mr1}, vr3, vr6
000494  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
000498  9f008ff3  addli r1, r30, -1600
00049c  42138f82  vload_mask16.mz vr6{mr1}, 1088(r30)
0004a0  b6916102  vmax.f.mz vr3{mr1}, vr3, vr6
0004a4  42130f82  vload_mask16.mz vr6{mr1}, 1024(r30)
0004a8  b6916102  vmax.f.mz vr3{mr1}, vr3, vr6
0004ac  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
0004b0  9f000ff4  addli r1, r30, -1536
0004b4  42138f83  vload_mask16.mz vr6{mr1}, 1216(r30)
0004b8  b6916102  vmax.f.mz vr3{mr1}, vr3, vr6
0004bc  b691b102  vmax.f.mz vr3{mr1}, vr3, vr11
0004c0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004c4  9f000ff5  addli r1, r30, -1408
0004c8  b691a102  vmax.f.mz vr3{mr1}, vr3, vr10
0004cc  12357002  vadd.s.mz vr10{mr1}, zero, vr7
0004d0  b6910102  vmax.f.mz vr3{mr1}, vr3, vr0
0004d4  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0004d8  9f008ff6  addli r1, r30, -1216
0004dc  b6917102  vmax.f.mz vr3{mr1}, vr3, vr7
0004e0  b6918102  vmax.f.mz vr3{mr1}, vr3, vr8
0004e4  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0004e8  9f008ff5  addli r1, r30, -1344
0004ec  b6912102  vmax.f.mz vr3{mr1}, vr3, vr2
0004f0  b6915102  vmax.f.mz vr3{mr1}, vr3, vr5
0004f4  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0004f8  9f000ff6  addli r1, r30, -1280
0004fc  b6911102  vmax.f.mz vr3{mr1}, vr3, vr1
000500  b6919102  vmax.f.mz vr3{mr1}, vr3, vr9
000504  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000508  9f000ff3  addli r1, r30, -1664
00050c  b6914102  vmax.f.mz vr3{mr1}, vr3, vr4
000510  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
000514  92344002  vadd.s.mz vr9{mr1}, zero, vr4
000518  6af237c0  vsrl.p vr4, r15, vr3
00051c  b6914102  vmax.f.mz vr3{mr1}, vr3, vr4
000520  e3006ff2  loadli.w r1,  -1744(r30)
000524  6af234c0  vsrl.p vr4, r9, vr3
000528  b6914102  vmax.f.mz vr3{mr1}, vr3, vr4
00052c  6a7235c0  vsrl.p vr4, r10, vr3
000530  b6914102  vmax.f.mz vr3{mr1}, vr3, vr4
000534  6af236c0  vsrl.p vr4, r13, vr3
000538  b6914102  vmax.f.mz vr3{mr1}, vr3, vr4
00053c  7a930140  vextracti.f r6, 0(vr3)
000540  9f060800  addli r13, r16, 0
000544  73e06000  stores.w r6, 0(r1)
000548  00a00300  mfence { lm, sm, gm }
00054c  80a10504  csr_set csr3, r11
000550  00d00100  sync_group
000554  bba00600  bneq r13, zero, 40
000558  e3407ff2  loadli.w r1,  -1732(r30)
00055c  6fc30000  loads.w r6, 0(r1)
000560  6fc74000  loads.w r14, 4(r1)
000564  efca8000  loads.w r21, 8(r1)
000568  6fcbc000  loads.w r22, 12(r1)
00056c  0b63e348  max.f r6, r6, r14
000570  0b635349  max.f r6, r6, r21
000574  0b636349  max.f r6, r6, r22
000578  73e06000  stores.w r6, 0(r1)
00057c  00a00300  mfence { lm, sm, gm }
000580  80a10504  csr_set csr3, r11
000584  00d00100  sync_group
000588  e3407ff2  loadli.w r1,  -1732(r30)
00058c  9f0c0ffe  addli r25, r30, -256
000590  6fc30000  loads.w r6, 0(r1)
000594  ab000080  lui r1, 524288
000598  17271300  xor r14, r6, r1
00059c  9f008ff7  addli r1, r30, -1088
0005a0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0005a4  9f000ff7  addli r1, r30, -1152
0005a8  92110702  vadd.f.mz.rn vr3{mr1}, r14, vr0
0005ac  46103fe2  vstore_mask16.mz vr3{mr1}, 1792(r30)
0005b0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0005b4  92110702  vadd.f.mz.rn vr3{mr1}, r14, vr0
0005b8  46143fe2  vstore_mask16.mz vr3{mr1}, 1856(r30)
0005bc  42100f83  vload_mask16.mz vr0{mr1}, 1152(r30)
0005c0  92110702  vadd.f.mz.rn vr3{mr1}, r14, vr0
0005c4  46183fe2  vstore_mask16.mz vr3{mr1}, 1920(r30)
0005c8  42108f82  vload_mask16.mz vr0{mr1}, 1088(r30)
0005cc  92100702  vadd.f.mz.rn vr1{mr1}, r14, vr0
0005d0  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0005d4  42100f82  vload_mask16.mz vr0{mr1}, 1024(r30)
0005d8  00a00000  mfence { lm }
0005dc  63830c00  loadli.w r6,  0(r25)
0005e0  e3ca0c00  loadli.w r21,  4(r25)
0005e4  638b1c00  loadli.w r22,  8(r25)
0005e8  63c91c00  loadli.w r18,  12(r25)
0005ec  638a2c00  loadli.w r20,  16(r25)
0005f0  e3cb2c00  loadli.w r23,  20(r25)
0005f4  e3893c00  loadli.w r19,  24(r25)
0005f8  63c13c00  loadli.w r2,  28(r25)
0005fc  e3834c00  loadli.w r7,  32(r25)
000600  63c44c00  loadli.w r8,  36(r25)
000604  e3845c00  loadli.w r9,  40(r25)
000608  e3cd5c00  loadli.w r27,  44(r25)
00060c  638e6c00  loadli.w r28,  48(r25)
000610  63c56c00  loadli.w r10,  52(r25)
000614  e3807c00  loadli.w r1,  56(r25)
000618  e3c77c00  loadli.w r15,  60(r25)
00061c  0f030300  exp.f.rn r6, r6
000620  8f8a0a00  exp.f.rn r21, r21
000624  0f0b0b00  exp.f.rn r22, r22
000628  0f090900  exp.f.rn r18, r18
00062c  0f0a0a00  exp.f.rn r20, r20
000630  8f8b0b00  exp.f.rn r23, r23
000634  8f890900  exp.f.rn r19, r19
000638  0f010100  exp.f.rn r2, r2
00063c  8f830300  exp.f.rn r7, r7
000640  0f040400  exp.f.rn r8, r8
000644  8f840400  exp.f.rn r9, r9
000648  8f8d0d00  exp.f.rn r27, r27
00064c  0f0e0e00  exp.f.rn r28, r28
000650  0f050500  exp.f.rn r10, r10
000654  8f800000  exp.f.rn r1, r1
000658  8f870700  exp.f.rn r15, r15
00065c  67806c00  storeli.w r6, 0(r25)
000660  67c05c01  storeli.w r21, 4(r25)
000664  e7806c01  storeli.w r22, 8(r25)
000668  e7c02c01  storeli.w r18, 12(r25)
00066c  67814c01  storeli.w r20, 16(r25)
000670  67c17c01  storeli.w r23, 20(r25)
000674  e7813c01  storeli.w r19, 24(r25)
000678  e7c12c00  storeli.w r2, 28(r25)
00067c  67827c00  storeli.w r7, 32(r25)
000680  67c28c00  storeli.w r8, 36(r25)
000684  e7829c00  storeli.w r9, 40(r25)
000688  e7c2bc01  storeli.w r27, 44(r25)
00068c  6783cc01  storeli.w r28, 48(r25)
000690  67c3ac00  storeli.w r10, 52(r25)
000694  e7831c00  storeli.w r1, 56(r25)
000698  e7c3fc00  storeli.w r15, 60(r25)
00069c  63838c00  loadli.w r6,  64(r25)
0006a0  e3ca8c00  loadli.w r21,  68(r25)
0006a4  638b9c00  loadli.w r22,  72(r25)
0006a8  63c99c00  loadli.w r18,  76(r25)
0006ac  638aac00  loadli.w r20,  80(r25)
0006b0  e3cbac00  loadli.w r23,  84(r25)
0006b4  e389bc00  loadli.w r19,  88(r25)
0006b8  63c1bc00  loadli.w r2,  92(r25)
0006bc  e383cc00  loadli.w r7,  96(r25)
0006c0  63c4cc00  loadli.w r8,  100(r25)
0006c4  e384dc00  loadli.w r9,  104(r25)
0006c8  e3cddc00  loadli.w r27,  108(r25)
0006cc  638eec00  loadli.w r28,  112(r25)
0006d0  63c5ec00  loadli.w r10,  116(r25)
0006d4  e380fc00  loadli.w r1,  120(r25)
0006d8  e3c7fc00  loadli.w r15,  124(r25)
0006dc  0f030300  exp.f.rn r6, r6
0006e0  8f8a0a00  exp.f.rn r21, r21
0006e4  0f0b0b00  exp.f.rn r22, r22
0006e8  0f090900  exp.f.rn r18, r18
0006ec  0f0a0a00  exp.f.rn r20, r20
0006f0  8f8b0b00  exp.f.rn r23, r23
0006f4  8f890900  exp.f.rn r19, r19
0006f8  0f010100  exp.f.rn r2, r2
0006fc  8f830300  exp.f.rn r7, r7
000700  0f040400  exp.f.rn r8, r8
000704  8f840400  exp.f.rn r9, r9
000708  8f8d0d00  exp.f.rn r27, r27
00070c  0f0e0e00  exp.f.rn r28, r28
000710  0f050500  exp.f.rn r10, r10
000714  8f800000  exp.f.rn r1, r1
000718  8f870700  exp.f.rn r15, r15
00071c  67846c00  storeli.w r6, 64(r25)
000720  67c45c01  storeli.w r21, 68(r25)
000724  e7846c01  storeli.w r22, 72(r25)
000728  e7c42c01  storeli.w r18, 76(r25)
00072c  67854c01  storeli.w r20, 80(r25)
000730  67c57c01  storeli.w r23, 84(r25)
000734  e7853c01  storeli.w r19, 88(r25)
000738  e7c52c00  storeli.w r2, 92(r25)
00073c  67867c00  storeli.w r7, 96(r25)
000740  67c68c00  storeli.w r8, 100(r25)
000744  e7869c00  storeli.w r9, 104(r25)
000748  e7c6bc01  storeli.w r27, 108(r25)
00074c  6787cc01  storeli.w r28, 112(r25)
000750  67c7ac00  storeli.w r10, 116(r25)
000754  e7871c00  storeli.w r1, 120(r25)
000758  e7c7fc00  storeli.w r15, 124(r25)
00075c  63830c01  loadli.w r6,  128(r25)
000760  e3ca0c01  loadli.w r21,  132(r25)
000764  638b1c01  loadli.w r22,  136(r25)
000768  63c91c01  loadli.w r18,  140(r25)
00076c  638a2c01  loadli.w r20,  144(r25)
000770  e3cb2c01  loadli.w r23,  148(r25)
000774  e3893c01  loadli.w r19,  152(r25)
000778  63c13c01  loadli.w r2,  156(r25)
00077c  e3834c01  loadli.w r7,  160(r25)
000780  63c44c01  loadli.w r8,  164(r25)
000784  e3845c01  loadli.w r9,  168(r25)
000788  e3cd5c01  loadli.w r27,  172(r25)
00078c  638e6c01  loadli.w r28,  176(r25)
000790  63c56c01  loadli.w r10,  180(r25)
000794  e3807c01  loadli.w r1,  184(r25)
000798  e3c77c01  loadli.w r15,  188(r25)
00079c  0f030300  exp.f.rn r6, r6
0007a0  8f8a0a00  exp.f.rn r21, r21
0007a4  0f0b0b00  exp.f.rn r22, r22
0007a8  0f090900  exp.f.rn r18, r18
0007ac  0f0a0a00  exp.f.rn r20, r20
0007b0  8f8b0b00  exp.f.rn r23, r23
0007b4  8f890900  exp.f.rn r19, r19
0007b8  0f010100  exp.f.rn r2, r2
0007bc  8f830300  exp.f.rn r7, r7
0007c0  0f040400  exp.f.rn r8, r8
0007c4  8f840400  exp.f.rn r9, r9
0007c8  8f8d0d00  exp.f.rn r27, r27
0007cc  0f0e0e00  exp.f.rn r28, r28
0007d0  0f050500  exp.f.rn r10, r10
0007d4  8f800000  exp.f.rn r1, r1
0007d8  8f870700  exp.f.rn r15, r15
0007dc  67886c00  storeli.w r6, 128(r25)
0007e0  67c85c01  storeli.w r21, 132(r25)
0007e4  e7886c01  storeli.w r22, 136(r25)
0007e8  e7c82c01  storeli.w r18, 140(r25)
0007ec  67894c01  storeli.w r20, 144(r25)
0007f0  67c97c01  storeli.w r23, 148(r25)
0007f4  e7893c01  storeli.w r19, 152(r25)
0007f8  e7c92c00  storeli.w r2, 156(r25)
0007fc  678a7c00  storeli.w r7, 160(r25)
000800  67ca8c00  storeli.w r8, 164(r25)
000804  e78a9c00  storeli.w r9, 168(r25)
000808  e7cabc01  storeli.w r27, 172(r25)
00080c  678bcc01  storeli.w r28, 176(r25)
000810  67cbac00  storeli.w r10, 180(r25)
000814  e78b1c00  storeli.w r1, 184(r25)
000818  e7cbfc00  storeli.w r15, 188(r25)
00081c  63838c01  loadli.w r6,  192(r25)
000820  e3ca8c01  loadli.w r21,  196(r25)
000824  638b9c01  loadli.w r22,  200(r25)
000828  63c99c01  loadli.w r18,  204(r25)
00082c  638aac01  loadli.w r20,  208(r25)
000830  e3cbac01  loadli.w r23,  212(r25)
000834  e389bc01  loadli.w r19,  216(r25)
000838  63c1bc01  loadli.w r2,  220(r25)
00083c  e383cc01  loadli.w r7,  224(r25)
000840  63c4cc01  loadli.w r8,  228(r25)
000844  e384dc01  loadli.w r9,  232(r25)
000848  e3cddc01  loadli.w r27,  236(r25)
00084c  638eec01  loadli.w r28,  240(r25)
000850  63c5ec01  loadli.w r10,  244(r25)
000854  e380fc01  loadli.w r1,  248(r25)
000858  e3c7fc01  loadli.w r15,  252(r25)
00085c  0f030300  exp.f.rn r6, r6
000860  8f8a0a00  exp.f.rn r21, r21
000864  0f0b0b00  exp.f.rn r22, r22
000868  0f090900  exp.f.rn r18, r18
00086c  0f0a0a00  exp.f.rn r20, r20
000870  8f8b0b00  exp.f.rn r23, r23
000874  8f890900  exp.f.rn r19, r19
000878  0f010100  exp.f.rn r2, r2
00087c  8f830300  exp.f.rn r7, r7
000880  0f040400  exp.f.rn r8, r8
000884  8f840400  exp.f.rn r9, r9
000888  8f8d0d00  exp.f.rn r27, r27
00088c  0f0e0e00  exp.f.rn r28, r28
000890  0f050500  exp.f.rn r10, r10
000894  8f800000  exp.f.rn r1, r1
000898  8f870700  exp.f.rn r15, r15
00089c  678c6c00  storeli.w r6, 192(r25)
0008a0  67cc5c01  storeli.w r21, 196(r25)
0008a4  e78c6c01  storeli.w r22, 200(r25)
0008a8  e7cc2c01  storeli.w r18, 204(r25)
0008ac  678d4c01  storeli.w r20, 208(r25)
0008b0  67cd7c01  storeli.w r23, 212(r25)
0008b4  e78d3c01  storeli.w r19, 216(r25)
0008b8  e7cd2c00  storeli.w r2, 220(r25)
0008bc  678e7c00  storeli.w r7, 224(r25)
0008c0  67ce8c00  storeli.w r8, 228(r25)
0008c4  e78e9c00  storeli.w r9, 232(r25)
0008c8  e7cebc01  storeli.w r27, 236(r25)
0008cc  678fcc01  storeli.w r28, 240(r25)
0008d0  67cfac00  storeli.w r10, 244(r25)
0008d4  e78f1c00  storeli.w r1, 248(r25)
0008d8  e7cffc00  storeli.w r15, 252(r25)
0008dc  00a00000  mfence { lm }
0008e0  92100702  vadd.f.mz.rn vr1{mr1}, r14, vr0
0008e4  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
0008e8  c2128fe2  vload_mask16.mz vr5{mr1}, 1856(r30)
0008ec  c2110fe3  vload_mask16.mz vr3{mr1}, 1920(r30)
0008f0  42118fe3  vload_mask16.mz vr2{mr1}, 1984(r30)
0008f4  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
0008f8  9f008ff4  addli r1, r30, -1472
0008fc  42108f83  vload_mask16.mz vr0{mr1}, 1216(r30)
000900  92100702  vadd.f.mz.rn vr1{mr1}, r14, vr0
000904  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
000908  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00090c  9f008ff3  addli r1, r30, -1600
000910  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
000914  96105202  vadd.f.mz.rn vr1{mr1}, vr4, vr5
000918  46185f82  vstore_mask16.mz vr5{mr1}, 1152(r30)
00091c  46180fe2  vstore_mask16.mz vr0{mr1}, 1920(r30)
000920  92352002  vadd.s.mz vr11{mr1}, zero, vr2
000924  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000928  9f000ff4  addli r1, r30, -1536
00092c  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
000930  461c0fe2  vstore_mask16.mz vr0{mr1}, 1984(r30)
000934  461c3f82  vstore_mask16.mz vr3{mr1}, 1216(r30)
000938  16903002  vadd.f.mz.rn vr0{mr1}, vr1, vr3
00093c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000940  00a00000  mfence { lm }
000944  e3800c00  loadli.w r1,  0(r25)
000948  63c10c00  loadli.w r2,  4(r25)
00094c  63831c00  loadli.w r6,  8(r25)
000950  e3c31c00  loadli.w r7,  12(r25)
000954  63842c00  loadli.w r8,  16(r25)
000958  e3c42c00  loadli.w r9,  20(r25)
00095c  63853c00  loadli.w r10,  24(r25)
000960  e3c73c00  loadli.w r15,  28(r25)
000964  63884c00  loadli.w r16,  32(r25)
000968  63c94c00  loadli.w r18,  36(r25)
00096c  e3895c00  loadli.w r19,  40(r25)
000970  63ca5c00  loadli.w r20,  44(r25)
000974  e38a6c00  loadli.w r21,  48(r25)
000978  63cb6c00  loadli.w r22,  52(r25)
00097c  e38b7c00  loadli.w r23,  56(r25)
000980  e3cd7c00  loadli.w r27,  60(r25)
000984  8f800000  exp.f.rn r1, r1
000988  0f010100  exp.f.rn r2, r2
00098c  0f030300  exp.f.rn r6, r6
000990  8f830300  exp.f.rn r7, r7
000994  0f040400  exp.f.rn r8, r8
000998  8f840400  exp.f.rn r9, r9
00099c  0f050500  exp.f.rn r10, r10
0009a0  8f870700  exp.f.rn r15, r15
0009a4  0f080800  exp.f.rn r16, r16
0009a8  0f090900  exp.f.rn r18, r18
0009ac  8f890900  exp.f.rn r19, r19
0009b0  0f0a0a00  exp.f.rn r20, r20
0009b4  8f8a0a00  exp.f.rn r21, r21
0009b8  0f0b0b00  exp.f.rn r22, r22
0009bc  8f8b0b00  exp.f.rn r23, r23
0009c0  8f8d0d00  exp.f.rn r27, r27
0009c4  67801c00  storeli.w r1, 0(r25)
0009c8  67c02c00  storeli.w r2, 4(r25)
0009cc  e7806c00  storeli.w r6, 8(r25)
0009d0  e7c07c00  storeli.w r7, 12(r25)
0009d4  67818c00  storeli.w r8, 16(r25)
0009d8  67c19c00  storeli.w r9, 20(r25)
0009dc  e781ac00  storeli.w r10, 24(r25)
0009e0  e7c1fc00  storeli.w r15, 28(r25)
0009e4  67820c01  storeli.w r16, 32(r25)
0009e8  67c22c01  storeli.w r18, 36(r25)
0009ec  e7823c01  storeli.w r19, 40(r25)
0009f0  e7c24c01  storeli.w r20, 44(r25)
0009f4  67835c01  storeli.w r21, 48(r25)
0009f8  67c36c01  storeli.w r22, 52(r25)
0009fc  e7837c01  storeli.w r23, 56(r25)
000a00  e7c3bc01  storeli.w r27, 60(r25)
000a04  e3808c00  loadli.w r1,  64(r25)
000a08  63c18c00  loadli.w r2,  68(r25)
000a0c  63839c00  loadli.w r6,  72(r25)
000a10  e3c39c00  loadli.w r7,  76(r25)
000a14  6384ac00  loadli.w r8,  80(r25)
000a18  e3c4ac00  loadli.w r9,  84(r25)
000a1c  6385bc00  loadli.w r10,  88(r25)
000a20  e3c7bc00  loadli.w r15,  92(r25)
000a24  6388cc00  loadli.w r16,  96(r25)
000a28  63c9cc00  loadli.w r18,  100(r25)
000a2c  e389dc00  loadli.w r19,  104(r25)
000a30  63cadc00  loadli.w r20,  108(r25)
000a34  e38aec00  loadli.w r21,  112(r25)
000a38  63cbec00  loadli.w r22,  116(r25)
000a3c  e38bfc00  loadli.w r23,  120(r25)
000a40  e3cdfc00  loadli.w r27,  124(r25)
000a44  8f800000  exp.f.rn r1, r1
000a48  0f010100  exp.f.rn r2, r2
000a4c  0f030300  exp.f.rn r6, r6
000a50  8f830300  exp.f.rn r7, r7
000a54  0f040400  exp.f.rn r8, r8
000a58  8f840400  exp.f.rn r9, r9
000a5c  0f050500  exp.f.rn r10, r10
000a60  8f870700  exp.f.rn r15, r15
000a64  0f080800  exp.f.rn r16, r16
000a68  0f090900  exp.f.rn r18, r18
000a6c  8f890900  exp.f.rn r19, r19
000a70  0f0a0a00  exp.f.rn r20, r20
000a74  8f8a0a00  exp.f.rn r21, r21
000a78  0f0b0b00  exp.f.rn r22, r22
000a7c  8f8b0b00  exp.f.rn r23, r23
000a80  8f8d0d00  exp.f.rn r27, r27
000a84  67841c00  storeli.w r1, 64(r25)
000a88  67c42c00  storeli.w r2, 68(r25)
000a8c  e7846c00  storeli.w r6, 72(r25)
000a90  e7c47c00  storeli.w r7, 76(r25)
000a94  67858c00  storeli.w r8, 80(r25)
000a98  67c59c00  storeli.w r9, 84(r25)
000a9c  e785ac00  storeli.w r10, 88(r25)
000aa0  e7c5fc00  storeli.w r15, 92(r25)
000aa4  67860c01  storeli.w r16, 96(r25)
000aa8  67c62c01  storeli.w r18, 100(r25)
000aac  e7863c01  storeli.w r19, 104(r25)
000ab0  e7c64c01  storeli.w r20, 108(r25)
000ab4  67875c01  storeli.w r21, 112(r25)
000ab8  67c76c01  storeli.w r22, 116(r25)
000abc  e7877c01  storeli.w r23, 120(r25)
000ac0  e7c7bc01  storeli.w r27, 124(r25)
000ac4  e3800c01  loadli.w r1,  128(r25)
000ac8  63c10c01  loadli.w r2,  132(r25)
000acc  63831c01  loadli.w r6,  136(r25)
000ad0  e3c31c01  loadli.w r7,  140(r25)
000ad4  63842c01  loadli.w r8,  144(r25)
000ad8  e3c42c01  loadli.w r9,  148(r25)
000adc  63853c01  loadli.w r10,  152(r25)
000ae0  e3c73c01  loadli.w r15,  156(r25)
000ae4  63884c01  loadli.w r16,  160(r25)
000ae8  63c94c01  loadli.w r18,  164(r25)
000aec  e3895c01  loadli.w r19,  168(r25)
000af0  63ca5c01  loadli.w r20,  172(r25)
000af4  e38a6c01  loadli.w r21,  176(r25)
000af8  63cb6c01  loadli.w r22,  180(r25)
000afc  e38b7c01  loadli.w r23,  184(r25)
000b00  e3cd7c01  loadli.w r27,  188(r25)
000b04  8f800000  exp.f.rn r1, r1
000b08  0f010100  exp.f.rn r2, r2
000b0c  0f030300  exp.f.rn r6, r6
000b10  8f830300  exp.f.rn r7, r7
000b14  0f040400  exp.f.rn r8, r8
000b18  8f840400  exp.f.rn r9, r9
000b1c  0f050500  exp.f.rn r10, r10
000b20  8f870700  exp.f.rn r15, r15
000b24  0f080800  exp.f.rn r16, r16
000b28  0f090900  exp.f.rn r18, r18
000b2c  8f890900  exp.f.rn r19, r19
000b30  0f0a0a00  exp.f.rn r20, r20
000b34  8f8a0a00  exp.f.rn r21, r21
000b38  0f0b0b00  exp.f.rn r22, r22
000b3c  8f8b0b00  exp.f.rn r23, r23
000b40  8f8d0d00  exp.f.rn r27, r27
000b44  67881c00  storeli.w r1, 128(r25)
000b48  67c82c00  storeli.w r2, 132(r25)
000b4c  e7886c00  storeli.w r6, 136(r25)
000b50  e7c87c00  storeli.w r7, 140(r25)
000b54  67898c00  storeli.w r8, 144(r25)
000b58  67c99c00  storeli.w r9, 148(r25)
000b5c  e789ac00  storeli.w r10, 152(r25)
000b60  e7c9fc00  storeli.w r15, 156(r25)
000b64  678a0c01  storeli.w r16, 160(r25)
000b68  67ca2c01  storeli.w r18, 164(r25)
000b6c  e78a3c01  storeli.w r19, 168(r25)
000b70  e7ca4c01  storeli.w r20, 172(r25)
000b74  678b5c01  storeli.w r21, 176(r25)
000b78  67cb6c01  storeli.w r22, 180(r25)
000b7c  e78b7c01  storeli.w r23, 184(r25)
000b80  e7cbbc01  storeli.w r27, 188(r25)
000b84  e3808c01  loadli.w r1,  192(r25)
000b88  63c18c01  loadli.w r2,  196(r25)
000b8c  63839c01  loadli.w r6,  200(r25)
000b90  e3c39c01  loadli.w r7,  204(r25)
000b94  6384ac01  loadli.w r8,  208(r25)
000b98  e3c4ac01  loadli.w r9,  212(r25)
000b9c  6385bc01  loadli.w r10,  216(r25)
000ba0  e3c7bc01  loadli.w r15,  220(r25)
000ba4  6388cc01  loadli.w r16,  224(r25)
000ba8  63c9cc01  loadli.w r18,  228(r25)
000bac  e389dc01  loadli.w r19,  232(r25)
000bb0  63cadc01  loadli.w r20,  236(r25)
000bb4  e38aec01  loadli.w r21,  240(r25)
000bb8  63cbec01  loadli.w r22,  244(r25)
000bbc  e38bfc01  loadli.w r23,  248(r25)
000bc0  e3cdfc01  loadli.w r27,  252(r25)
000bc4  8f800000  exp.f.rn r1, r1
000bc8  0f010100  exp.f.rn r2, r2
000bcc  0f030300  exp.f.rn r6, r6
000bd0  8f830300  exp.f.rn r7, r7
000bd4  0f040400  exp.f.rn r8, r8
000bd8  8f840400  exp.f.rn r9, r9
000bdc  0f050500  exp.f.rn r10, r10
000be0  8f870700  exp.f.rn r15, r15
000be4  0f080800  exp.f.rn r16, r16
000be8  0f090900  exp.f.rn r18, r18
000bec  8f890900  exp.f.rn r19, r19
000bf0  0f0a0a00  exp.f.rn r20, r20
000bf4  8f8a0a00  exp.f.rn r21, r21
000bf8  0f0b0b00  exp.f.rn r22, r22
000bfc  8f8b0b00  exp.f.rn r23, r23
000c00  8f8d0d00  exp.f.rn r27, r27
000c04  678c1c00  storeli.w r1, 192(r25)
000c08  67cc2c00  storeli.w r2, 196(r25)
000c0c  e78c6c00  storeli.w r6, 200(r25)
000c10  e7cc7c00  storeli.w r7, 204(r25)
000c14  678d8c00  storeli.w r8, 208(r25)
000c18  67cd9c00  storeli.w r9, 212(r25)
000c1c  e78dac00  storeli.w r10, 216(r25)
000c20  e7cdfc00  storeli.w r15, 220(r25)
000c24  678e0c01  storeli.w r16, 224(r25)
000c28  67ce2c01  storeli.w r18, 228(r25)
000c2c  e78e3c01  storeli.w r19, 232(r25)
000c30  e7ce4c01  storeli.w r20, 236(r25)
000c34  678f5c01  storeli.w r21, 240(r25)
000c38  67cf6c01  storeli.w r22, 244(r25)
000c3c  e78f7c01  storeli.w r23, 248(r25)
000c40  e7cfbc01  storeli.w r27, 252(r25)
000c44  00a00000  mfence { lm }
000c48  c2110fe2  vload_mask16.mz vr3{mr1}, 1792(r30)
000c4c  c2128fe2  vload_mask16.mz vr5{mr1}, 1856(r30)
000c50  42130fe3  vload_mask16.mz vr6{mr1}, 1920(r30)
000c54  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
000c58  9f000ff5  addli r1, r30, -1408
000c5c  42118fe3  vload_mask16.mz vr2{mr1}, 1984(r30)
000c60  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
000c64  9210a702  vadd.f.mz.rn vr1{mr1}, r14, vr10
000c68  1610b002  vadd.f.mz.rn vr0{mr1}, vr0, vr11
000c6c  46103f82  vstore_mask16.mz vr3{mr1}, 1024(r30)
000c70  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
000c74  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000c78  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000c7c  9f008ff6  addli r1, r30, -1216
000c80  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
000c84  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
000c88  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000c8c  9f008ff5  addli r1, r30, -1344
000c90  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
000c94  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
000c98  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
000c9c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000ca0  00a00000  mfence { lm }
000ca4  e3800c00  loadli.w r1,  0(r25)
000ca8  63c10c00  loadli.w r2,  4(r25)
000cac  63831c00  loadli.w r6,  8(r25)
000cb0  e3c31c00  loadli.w r7,  12(r25)
000cb4  63842c00  loadli.w r8,  16(r25)
000cb8  e3c42c00  loadli.w r9,  20(r25)
000cbc  63853c00  loadli.w r10,  24(r25)
000cc0  e3c73c00  loadli.w r15,  28(r25)
000cc4  63884c00  loadli.w r16,  32(r25)
000cc8  63c94c00  loadli.w r18,  36(r25)
000ccc  e3895c00  loadli.w r19,  40(r25)
000cd0  63ca5c00  loadli.w r20,  44(r25)
000cd4  e38a6c00  loadli.w r21,  48(r25)
000cd8  63cb6c00  loadli.w r22,  52(r25)
000cdc  e38b7c00  loadli.w r23,  56(r25)
000ce0  e3cd7c00  loadli.w r27,  60(r25)
000ce4  8f800000  exp.f.rn r1, r1
000ce8  0f010100  exp.f.rn r2, r2
000cec  0f030300  exp.f.rn r6, r6
000cf0  8f830300  exp.f.rn r7, r7
000cf4  0f040400  exp.f.rn r8, r8
000cf8  8f840400  exp.f.rn r9, r9
000cfc  0f050500  exp.f.rn r10, r10
000d00  8f870700  exp.f.rn r15, r15
000d04  0f080800  exp.f.rn r16, r16
000d08  0f090900  exp.f.rn r18, r18
000d0c  8f890900  exp.f.rn r19, r19
000d10  0f0a0a00  exp.f.rn r20, r20
000d14  8f8a0a00  exp.f.rn r21, r21
000d18  0f0b0b00  exp.f.rn r22, r22
000d1c  8f8b0b00  exp.f.rn r23, r23
000d20  8f8d0d00  exp.f.rn r27, r27
000d24  67801c00  storeli.w r1, 0(r25)
000d28  67c02c00  storeli.w r2, 4(r25)
000d2c  e7806c00  storeli.w r6, 8(r25)
000d30  e7c07c00  storeli.w r7, 12(r25)
000d34  67818c00  storeli.w r8, 16(r25)
000d38  67c19c00  storeli.w r9, 20(r25)
000d3c  e781ac00  storeli.w r10, 24(r25)
000d40  e7c1fc00  storeli.w r15, 28(r25)
000d44  67820c01  storeli.w r16, 32(r25)
000d48  67c22c01  storeli.w r18, 36(r25)
000d4c  e7823c01  storeli.w r19, 40(r25)
000d50  e7c24c01  storeli.w r20, 44(r25)
000d54  67835c01  storeli.w r21, 48(r25)
000d58  67c36c01  storeli.w r22, 52(r25)
000d5c  e7837c01  storeli.w r23, 56(r25)
000d60  e7c3bc01  storeli.w r27, 60(r25)
000d64  e3808c00  loadli.w r1,  64(r25)
000d68  63c18c00  loadli.w r2,  68(r25)
000d6c  63839c00  loadli.w r6,  72(r25)
000d70  e3c39c00  loadli.w r7,  76(r25)
000d74  6384ac00  loadli.w r8,  80(r25)
000d78  e3c4ac00  loadli.w r9,  84(r25)
000d7c  6385bc00  loadli.w r10,  88(r25)
000d80  e3c7bc00  loadli.w r15,  92(r25)
000d84  6388cc00  loadli.w r16,  96(r25)
000d88  63c9cc00  loadli.w r18,  100(r25)
000d8c  e389dc00  loadli.w r19,  104(r25)
000d90  63cadc00  loadli.w r20,  108(r25)
000d94  e38aec00  loadli.w r21,  112(r25)
000d98  63cbec00  loadli.w r22,  116(r25)
000d9c  e38bfc00  loadli.w r23,  120(r25)
000da0  e3cdfc00  loadli.w r27,  124(r25)
000da4  8f800000  exp.f.rn r1, r1
000da8  0f010100  exp.f.rn r2, r2
000dac  0f030300  exp.f.rn r6, r6
000db0  8f830300  exp.f.rn r7, r7
000db4  0f040400  exp.f.rn r8, r8
000db8  8f840400  exp.f.rn r9, r9
000dbc  0f050500  exp.f.rn r10, r10
000dc0  8f870700  exp.f.rn r15, r15
000dc4  0f080800  exp.f.rn r16, r16
000dc8  0f090900  exp.f.rn r18, r18
000dcc  8f890900  exp.f.rn r19, r19
000dd0  0f0a0a00  exp.f.rn r20, r20
000dd4  8f8a0a00  exp.f.rn r21, r21
000dd8  0f0b0b00  exp.f.rn r22, r22
000ddc  8f8b0b00  exp.f.rn r23, r23
000de0  8f8d0d00  exp.f.rn r27, r27
000de4  67841c00  storeli.w r1, 64(r25)
000de8  67c42c00  storeli.w r2, 68(r25)
000dec  e7846c00  storeli.w r6, 72(r25)
000df0  e7c47c00  storeli.w r7, 76(r25)
000df4  67858c00  storeli.w r8, 80(r25)
000df8  67c59c00  storeli.w r9, 84(r25)
000dfc  e785ac00  storeli.w r10, 88(r25)
000e00  e7c5fc00  storeli.w r15, 92(r25)
000e04  67860c01  storeli.w r16, 96(r25)
000e08  67c62c01  storeli.w r18, 100(r25)
000e0c  e7863c01  storeli.w r19, 104(r25)
000e10  e7c64c01  storeli.w r20, 108(r25)
000e14  67875c01  storeli.w r21, 112(r25)
000e18  67c76c01  storeli.w r22, 116(r25)
000e1c  e7877c01  storeli.w r23, 120(r25)
000e20  e7c7bc01  storeli.w r27, 124(r25)
000e24  e3800c01  loadli.w r1,  128(r25)
000e28  63c10c01  loadli.w r2,  132(r25)
000e2c  63831c01  loadli.w r6,  136(r25)
000e30  e3c31c01  loadli.w r7,  140(r25)
000e34  63842c01  loadli.w r8,  144(r25)
000e38  e3c42c01  loadli.w r9,  148(r25)
000e3c  63853c01  loadli.w r10,  152(r25)
000e40  e3c73c01  loadli.w r15,  156(r25)
000e44  63884c01  loadli.w r16,  160(r25)
000e48  63c94c01  loadli.w r18,  164(r25)
000e4c  e3895c01  loadli.w r19,  168(r25)
000e50  63ca5c01  loadli.w r20,  172(r25)
000e54  e38a6c01  loadli.w r21,  176(r25)
000e58  63cb6c01  loadli.w r22,  180(r25)
000e5c  e38b7c01  loadli.w r23,  184(r25)
000e60  e3cd7c01  loadli.w r27,  188(r25)
000e64  8f800000  exp.f.rn r1, r1
000e68  0f010100  exp.f.rn r2, r2
000e6c  0f030300  exp.f.rn r6, r6
000e70  8f830300  exp.f.rn r7, r7
000e74  0f040400  exp.f.rn r8, r8
000e78  8f840400  exp.f.rn r9, r9
000e7c  0f050500  exp.f.rn r10, r10
000e80  8f870700  exp.f.rn r15, r15
000e84  0f080800  exp.f.rn r16, r16
000e88  0f090900  exp.f.rn r18, r18
000e8c  8f890900  exp.f.rn r19, r19
000e90  0f0a0a00  exp.f.rn r20, r20
000e94  8f8a0a00  exp.f.rn r21, r21
000e98  0f0b0b00  exp.f.rn r22, r22
000e9c  8f8b0b00  exp.f.rn r23, r23
000ea0  8f8d0d00  exp.f.rn r27, r27
000ea4  67881c00  storeli.w r1, 128(r25)
000ea8  67c82c00  storeli.w r2, 132(r25)
000eac  e7886c00  storeli.w r6, 136(r25)
000eb0  e7c87c00  storeli.w r7, 140(r25)
000eb4  67898c00  storeli.w r8, 144(r25)
000eb8  67c99c00  storeli.w r9, 148(r25)
000ebc  e789ac00  storeli.w r10, 152(r25)
000ec0  e7c9fc00  storeli.w r15, 156(r25)
000ec4  678a0c01  storeli.w r16, 160(r25)
000ec8  67ca2c01  storeli.w r18, 164(r25)
000ecc  e78a3c01  storeli.w r19, 168(r25)
000ed0  e7ca4c01  storeli.w r20, 172(r25)
000ed4  678b5c01  storeli.w r21, 176(r25)
000ed8  67cb6c01  storeli.w r22, 180(r25)
000edc  e78b7c01  storeli.w r23, 184(r25)
000ee0  e7cbbc01  storeli.w r27, 188(r25)
000ee4  e3808c01  loadli.w r1,  192(r25)
000ee8  63c18c01  loadli.w r2,  196(r25)
000eec  63839c01  loadli.w r6,  200(r25)
000ef0  e3c39c01  loadli.w r7,  204(r25)
000ef4  6384ac01  loadli.w r8,  208(r25)
000ef8  e3c4ac01  loadli.w r9,  212(r25)
000efc  6385bc01  loadli.w r10,  216(r25)
000f00  e3c7bc01  loadli.w r15,  220(r25)
000f04  6388cc01  loadli.w r16,  224(r25)
000f08  63c9cc01  loadli.w r18,  228(r25)
000f0c  e389dc01  loadli.w r19,  232(r25)
000f10  63cadc01  loadli.w r20,  236(r25)
000f14  e38aec01  loadli.w r21,  240(r25)
000f18  63cbec01  loadli.w r22,  244(r25)
000f1c  e38bfc01  loadli.w r23,  248(r25)
000f20  e3cdfc01  loadli.w r27,  252(r25)
000f24  8f800000  exp.f.rn r1, r1
000f28  0f010100  exp.f.rn r2, r2
000f2c  0f030300  exp.f.rn r6, r6
000f30  8f830300  exp.f.rn r7, r7
000f34  0f040400  exp.f.rn r8, r8
000f38  8f840400  exp.f.rn r9, r9
000f3c  0f050500  exp.f.rn r10, r10
000f40  8f870700  exp.f.rn r15, r15
000f44  0f080800  exp.f.rn r16, r16
000f48  0f090900  exp.f.rn r18, r18
000f4c  8f890900  exp.f.rn r19, r19
000f50  0f0a0a00  exp.f.rn r20, r20
000f54  8f8a0a00  exp.f.rn r21, r21
000f58  0f0b0b00  exp.f.rn r22, r22
000f5c  8f8b0b00  exp.f.rn r23, r23
000f60  8f8d0d00  exp.f.rn r27, r27
000f64  678c1c00  storeli.w r1, 192(r25)
000f68  67cc2c00  storeli.w r2, 196(r25)
000f6c  e78c6c00  storeli.w r6, 200(r25)
000f70  e7cc7c00  storeli.w r7, 204(r25)
000f74  678d8c00  storeli.w r8, 208(r25)
000f78  67cd9c00  storeli.w r9, 212(r25)
000f7c  e78dac00  storeli.w r10, 216(r25)
000f80  e7cdfc00  storeli.w r15, 220(r25)
000f84  678e0c01  storeli.w r16, 224(r25)
000f88  67ce2c01  storeli.w r18, 228(r25)
000f8c  e78e3c01  storeli.w r19, 232(r25)
000f90  e7ce4c01  storeli.w r20, 236(r25)
000f94  678f5c01  storeli.w r21, 240(r25)
000f98  67cf6c01  storeli.w r22, 244(r25)
000f9c  e78f7c01  storeli.w r23, 248(r25)
000fa0  e7cfbc01  storeli.w r27, 252(r25)
000fa4  00a00000  mfence { lm }
000fa8  c2110fe2  vload_mask16.mz vr3{mr1}, 1792(r30)
000fac  46142f82  vstore_mask16.mz vr2{mr1}, 1088(r30)
000fb0  9f008ff7  addli r1, r30, -1088
000fb4  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
000fb8  c2138fe2  vload_mask16.mz vr7{mr1}, 1856(r30)
000fbc  42140fe3  vload_mask16.mz vr8{mr1}, 1920(r30)
000fc0  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
000fc4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000fc8  42118fe3  vload_mask16.mz vr2{mr1}, 1984(r30)
000fcc  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
000fd0  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
000fd4  9f000ff6  addli r1, r30, -1280
000fd8  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000fdc  9f000ff3  addli r1, r30, -1664
000fe0  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
000fe4  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
000fe8  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000fec  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000ff0  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
000ff4  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
000ff8  92109702  vadd.f.mz.rn vr1{mr1}, r14, vr9
000ffc  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
001000  00a00000  mfence { lm }
001004  e3800c00  loadli.w r1,  0(r25)
001008  63c10c00  loadli.w r2,  4(r25)
00100c  63831c00  loadli.w r6,  8(r25)
001010  e3c31c00  loadli.w r7,  12(r25)
001014  63842c00  loadli.w r8,  16(r25)
001018  e3c42c00  loadli.w r9,  20(r25)
00101c  63853c00  loadli.w r10,  24(r25)
001020  63c73c00  loadli.w r14,  28(r25)
001024  e3874c00  loadli.w r15,  32(r25)
001028  63c84c00  loadli.w r16,  36(r25)
00102c  63895c00  loadli.w r18,  40(r25)
001030  e3c95c00  loadli.w r19,  44(r25)
001034  638a6c00  loadli.w r20,  48(r25)
001038  e3ca6c00  loadli.w r21,  52(r25)
00103c  638b7c00  loadli.w r22,  56(r25)
001040  e3cb7c00  loadli.w r23,  60(r25)
001044  8f800000  exp.f.rn r1, r1
001048  0f010100  exp.f.rn r2, r2
00104c  0f030300  exp.f.rn r6, r6
001050  8f830300  exp.f.rn r7, r7
001054  0f040400  exp.f.rn r8, r8
001058  8f840400  exp.f.rn r9, r9
00105c  0f050500  exp.f.rn r10, r10
001060  0f070700  exp.f.rn r14, r14
001064  8f870700  exp.f.rn r15, r15
001068  0f080800  exp.f.rn r16, r16
00106c  0f090900  exp.f.rn r18, r18
001070  8f890900  exp.f.rn r19, r19
001074  0f0a0a00  exp.f.rn r20, r20
001078  8f8a0a00  exp.f.rn r21, r21
00107c  0f0b0b00  exp.f.rn r22, r22
001080  8f8b0b00  exp.f.rn r23, r23
001084  67801c00  storeli.w r1, 0(r25)
001088  67c02c00  storeli.w r2, 4(r25)
00108c  e7806c00  storeli.w r6, 8(r25)
001090  e7c07c00  storeli.w r7, 12(r25)
001094  67818c00  storeli.w r8, 16(r25)
001098  67c19c00  storeli.w r9, 20(r25)
00109c  e781ac00  storeli.w r10, 24(r25)
0010a0  e7c1ec00  storeli.w r14, 28(r25)
0010a4  6782fc00  storeli.w r15, 32(r25)
0010a8  67c20c01  storeli.w r16, 36(r25)
0010ac  e7822c01  storeli.w r18, 40(r25)
0010b0  e7c23c01  storeli.w r19, 44(r25)
0010b4  67834c01  storeli.w r20, 48(r25)
0010b8  67c35c01  storeli.w r21, 52(r25)
0010bc  e7836c01  storeli.w r22, 56(r25)
0010c0  e7c37c01  storeli.w r23, 60(r25)
0010c4  e3808c00  loadli.w r1,  64(r25)
0010c8  63c18c00  loadli.w r2,  68(r25)
0010cc  63839c00  loadli.w r6,  72(r25)
0010d0  e3c39c00  loadli.w r7,  76(r25)
0010d4  6384ac00  loadli.w r8,  80(r25)
0010d8  e3c4ac00  loadli.w r9,  84(r25)
0010dc  6385bc00  loadli.w r10,  88(r25)
0010e0  63c7bc00  loadli.w r14,  92(r25)
0010e4  e387cc00  loadli.w r15,  96(r25)
0010e8  63c8cc00  loadli.w r16,  100(r25)
0010ec  6389dc00  loadli.w r18,  104(r25)
0010f0  e3c9dc00  loadli.w r19,  108(r25)
0010f4  638aec00  loadli.w r20,  112(r25)
0010f8  e3caec00  loadli.w r21,  116(r25)
0010fc  638bfc00  loadli.w r22,  120(r25)
001100  e3cbfc00  loadli.w r23,  124(r25)
001104  8f800000  exp.f.rn r1, r1
001108  0f010100  exp.f.rn r2, r2
00110c  0f030300  exp.f.rn r6, r6
001110  8f830300  exp.f.rn r7, r7
001114  0f040400  exp.f.rn r8, r8
001118  8f840400  exp.f.rn r9, r9
00111c  0f050500  exp.f.rn r10, r10
001120  0f070700  exp.f.rn r14, r14
001124  8f870700  exp.f.rn r15, r15
001128  0f080800  exp.f.rn r16, r16
00112c  0f090900  exp.f.rn r18, r18
001130  8f890900  exp.f.rn r19, r19
001134  0f0a0a00  exp.f.rn r20, r20
001138  8f8a0a00  exp.f.rn r21, r21
00113c  0f0b0b00  exp.f.rn r22, r22
001140  8f8b0b00  exp.f.rn r23, r23
001144  67841c00  storeli.w r1, 64(r25)
001148  67c42c00  storeli.w r2, 68(r25)
00114c  e7846c00  storeli.w r6, 72(r25)
001150  e7c47c00  storeli.w r7, 76(r25)
001154  67858c00  storeli.w r8, 80(r25)
001158  67c59c00  storeli.w r9, 84(r25)
00115c  e785ac00  storeli.w r10, 88(r25)
001160  e7c5ec00  storeli.w r14, 92(r25)
001164  6786fc00  storeli.w r15, 96(r25)
001168  67c60c01  storeli.w r16, 100(r25)
00116c  e7862c01  storeli.w r18, 104(r25)
001170  e7c63c01  storeli.w r19, 108(r25)
001174  67874c01  storeli.w r20, 112(r25)
001178  67c75c01  storeli.w r21, 116(r25)
00117c  e7876c01  storeli.w r22, 120(r25)
001180  e7c77c01  storeli.w r23, 124(r25)
001184  e3800c01  loadli.w r1,  128(r25)
001188  63c10c01  loadli.w r2,  132(r25)
00118c  63831c01  loadli.w r6,  136(r25)
001190  e3c31c01  loadli.w r7,  140(r25)
001194  63842c01  loadli.w r8,  144(r25)
001198  e3c42c01  loadli.w r9,  148(r25)
00119c  63853c01  loadli.w r10,  152(r25)
0011a0  63c73c01  loadli.w r14,  156(r25)
0011a4  e3874c01  loadli.w r15,  160(r25)
0011a8  63c84c01  loadli.w r16,  164(r25)
0011ac  63895c01  loadli.w r18,  168(r25)
0011b0  e3c95c01  loadli.w r19,  172(r25)
0011b4  638a6c01  loadli.w r20,  176(r25)
0011b8  e3ca6c01  loadli.w r21,  180(r25)
0011bc  638b7c01  loadli.w r22,  184(r25)
0011c0  e3cb7c01  loadli.w r23,  188(r25)
0011c4  8f800000  exp.f.rn r1, r1
0011c8  0f010100  exp.f.rn r2, r2
0011cc  0f030300  exp.f.rn r6, r6
0011d0  8f830300  exp.f.rn r7, r7
0011d4  0f040400  exp.f.rn r8, r8
0011d8  8f840400  exp.f.rn r9, r9
0011dc  0f050500  exp.f.rn r10, r10
0011e0  0f070700  exp.f.rn r14, r14
0011e4  8f870700  exp.f.rn r15, r15
0011e8  0f080800  exp.f.rn r16, r16
0011ec  0f090900  exp.f.rn r18, r18
0011f0  8f890900  exp.f.rn r19, r19
0011f4  0f0a0a00  exp.f.rn r20, r20
0011f8  8f8a0a00  exp.f.rn r21, r21
0011fc  0f0b0b00  exp.f.rn r22, r22
001200  8f8b0b00  exp.f.rn r23, r23
001204  67881c00  storeli.w r1, 128(r25)
001208  67c82c00  storeli.w r2, 132(r25)
00120c  e7886c00  storeli.w r6, 136(r25)
001210  e7c87c00  storeli.w r7, 140(r25)
001214  67898c00  storeli.w r8, 144(r25)
001218  67c99c00  storeli.w r9, 148(r25)
00121c  e789ac00  storeli.w r10, 152(r25)
001220  e7c9ec00  storeli.w r14, 156(r25)
001224  678afc00  storeli.w r15, 160(r25)
001228  67ca0c01  storeli.w r16, 164(r25)
00122c  e78a2c01  storeli.w r18, 168(r25)
001230  e7ca3c01  storeli.w r19, 172(r25)
001234  678b4c01  storeli.w r20, 176(r25)
001238  67cb5c01  storeli.w r21, 180(r25)
00123c  e78b6c01  storeli.w r22, 184(r25)
001240  e7cb7c01  storeli.w r23, 188(r25)
001244  e3808c01  loadli.w r1,  192(r25)
001248  63c18c01  loadli.w r2,  196(r25)
00124c  63839c01  loadli.w r6,  200(r25)
001250  e3c39c01  loadli.w r7,  204(r25)
001254  6384ac01  loadli.w r8,  208(r25)
001258  e3c4ac01  loadli.w r9,  212(r25)
00125c  6385bc01  loadli.w r10,  216(r25)
001260  63c7bc01  loadli.w r14,  220(r25)
001264  e387cc01  loadli.w r15,  224(r25)
001268  63c8cc01  loadli.w r16,  228(r25)
00126c  6389dc01  loadli.w r18,  232(r25)
001270  e3c9dc01  loadli.w r19,  236(r25)
001274  638aec01  loadli.w r20,  240(r25)
001278  e3caec01  loadli.w r21,  244(r25)
00127c  638bfc01  loadli.w r22,  248(r25)
001280  e3cbfc01  loadli.w r23,  252(r25)
001284  8f800000  exp.f.rn r1, r1
001288  0f010100  exp.f.rn r2, r2
00128c  0f030300  exp.f.rn r6, r6
001290  8f830300  exp.f.rn r7, r7
001294  0f040400  exp.f.rn r8, r8
001298  8f840400  exp.f.rn r9, r9
00129c  0f050500  exp.f.rn r10, r10
0012a0  0f070700  exp.f.rn r14, r14
0012a4  8f870700  exp.f.rn r15, r15
0012a8  0f080800  exp.f.rn r16, r16
0012ac  0f090900  exp.f.rn r18, r18
0012b0  8f890900  exp.f.rn r19, r19
0012b4  0f0a0a00  exp.f.rn r20, r20
0012b8  8f8a0a00  exp.f.rn r21, r21
0012bc  0f0b0b00  exp.f.rn r22, r22
0012c0  8f8b0b00  exp.f.rn r23, r23
0012c4  678c1c00  storeli.w r1, 192(r25)
0012c8  67cc2c00  storeli.w r2, 196(r25)
0012cc  e78c6c00  storeli.w r6, 200(r25)
0012d0  e7cc7c00  storeli.w r7, 204(r25)
0012d4  678d8c00  storeli.w r8, 208(r25)
0012d8  67cd9c00  storeli.w r9, 212(r25)
0012dc  e78dac00  storeli.w r10, 216(r25)
0012e0  e7cdec00  storeli.w r14, 220(r25)
0012e4  678efc00  storeli.w r15, 224(r25)
0012e8  67ce0c01  storeli.w r16, 228(r25)
0012ec  e78e2c01  storeli.w r18, 232(r25)
0012f0  e7ce3c01  storeli.w r19, 236(r25)
0012f4  678f4c01  storeli.w r20, 240(r25)
0012f8  67cf5c01  storeli.w r21, 244(r25)
0012fc  e78f6c01  storeli.w r22, 248(r25)
001300  e7cf7c01  storeli.w r23, 252(r25)
001304  00a00000  mfence { lm }
001308  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
00130c  c2140fe2  vload_mask16.mz vr9{mr1}, 1792(r30)
001310  9f000ff7  addli r1, r30, -1152
001314  1f880600  addli r16, r13, 0
001318  9f070002  addli r15, zero, 256
00131c  9f040001  addli r9, zero, 128
001320  1f058000  addli r10, zero, 64
001324  9f064000  addli r13, zero, 32
001328  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
00132c  9f000001  addli r1, zero, 128
001330  42158fe2  vload_mask16.mz vr10{mr1}, 1856(r30)
001334  c2100fe3  vload_mask16.mz vr1{mr1}, 1920(r30)
001338  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
00133c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001340  42118fe3  vload_mask16.mz vr2{mr1}, 1984(r30)
001344  63416ff2  loadli.w r2,  -1740(r30)
001348  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
00134c  1610a002  vadd.f.mz.rn vr0{mr1}, vr0, vr10
001350  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
001354  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001358  eaf108c0  vsrl.p vr3, r17, vr0
00135c  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
001360  eaf100c0  vsrl.p vr3, r1, vr0
001364  9f008000  addli r1, zero, 64
001368  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
00136c  eaf100c0  vsrl.p vr3, r1, vr0
001370  9f004000  addli r1, zero, 32
001374  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
001378  eaf100c0  vsrl.p vr3, r1, vr0
00137c  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
001380  fa100040  vextracti.f r1, 0(vr0)
001384  73601100  stores.w r1, 0(r2)
001388  00a00300  mfence { lm, sm, gm }
00138c  80a10504  csr_set csr3, r11
001390  00d00100  sync_group
001394  bb100800  bneq r16, zero, 36
001398  ef400d00  loads.w r1, 0(r26)
00139c  6f414d00  loads.w r2, 4(r26)
0013a0  6f438d00  loads.w r6, 8(r26)
0013a4  8be02010  add.f.rn r1, r1, r2
0013a8  6f41cd00  loads.w r2, 12(r26)
0013ac  8be06010  add.f.rn r1, r1, r6
0013b0  8be02010  add.f.rn r1, r1, r2
0013b4  73601d00  stores.w r1, 0(r26)
0013b8  00a00300  mfence { lm, sm, gm }
0013bc  80a10504  csr_set csr3, r11
0013c0  00d00100  sync_group
0013c4  ef400d00  loads.w r1, 0(r26)
0013c8  2b01803f  lui r2, 260096
0013cc  c2110f83  vload_mask16.mz vr3{mr1}, 1152(r30)
0013d0  1f140000  addli r8, zero, 1
0013d4  8f001118  div.f.rn r1, r2, r1
0013d8  0a904002  vmul.f.mz.rn vr0{mr1}, r1, vr4
0013dc  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
0013e0  06120000  vfloat2fp16_l.rn vr4, vr0
0013e4  06d20100  vfloat2fp16_h.rn vr4, vr3
0013e8  1f018ff7  addli r2, r30, -1088
0013ec  46104fa2  vstore_mask16.mz vr4{mr1}, 1280(r30)
0013f0  42108f83  vload_mask16.mz vr0{mr1}, 1216(r30)
0013f4  8a91b002  vmul.f.mz.rn vr3{mr1}, r1, vr11
0013f8  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
0013fc  86150000  vfloat2fp16_l.rn vr11, vr0
001400  86d50100  vfloat2fp16_h.rn vr11, vr3
001404  8a915002  vmul.f.mz.rn vr3{mr1}, r1, vr5
001408  42100f82  vload_mask16.mz vr0{mr1}, 1024(r30)
00140c  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
001410  86120000  vfloat2fp16_l.rn vr5, vr0
001414  86d20100  vfloat2fp16_h.rn vr5, vr3
001418  c2118f82  vload_mask16.mz vr3{mr1}, 1088(r30)
00141c  0a906002  vmul.f.mz.rn vr0{mr1}, r1, vr6
001420  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
001424  06130000  vfloat2fp16_l.rn vr6, vr0
001428  06d30100  vfloat2fp16_h.rn vr6, vr3
00142c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
001430  1f010ff7  addli r2, r30, -1152
001434  8a917002  vmul.f.mz.rn vr3{mr1}, r1, vr7
001438  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
00143c  86130000  vfloat2fp16_l.rn vr7, vr0
001440  86d30100  vfloat2fp16_h.rn vr7, vr3
001444  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
001448  0a908002  vmul.f.mz.rn vr0{mr1}, r1, vr8
00144c  4614bfa2  vstore_mask16.mz vr11{mr1}, 1344(r30)
001450  46185fa2  vstore_mask16.mz vr5{mr1}, 1408(r30)
001454  461c6fa2  vstore_mask16.mz vr6{mr1}, 1472(r30)
001458  46107fc2  vstore_mask16.mz vr7{mr1}, 1536(r30)
00145c  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
001460  06140000  vfloat2fp16_l.rn vr8, vr0
001464  06d40100  vfloat2fp16_h.rn vr8, vr3
001468  0a909002  vmul.f.mz.rn vr0{mr1}, r1, vr9
00146c  46148fc2  vstore_mask16.mz vr8{mr1}, 1600(r30)
001470  8a91a002  vmul.f.mz.rn vr3{mr1}, r1, vr10
001474  86140000  vfloat2fp16_l.rn vr9, vr0
001478  86d40100  vfloat2fp16_h.rn vr9, vr3
00147c  0a901002  vmul.f.mz.rn vr0{mr1}, r1, vr1
001480  8a902002  vmul.f.mz.rn vr1{mr1}, r1, vr2
001484  06110000  vfloat2fp16_l.rn vr2, vr0
001488  06d10000  vfloat2fp16_h.rn vr2, vr1
00148c  46189fc2  vstore_mask16.mz vr9{mr1}, 1664(r30)
001490  461c2fc2  vstore_mask16.mz vr2{mr1}, 1728(r30)
001494  00a00000  mfence { lm }
001498  e3008f00  loadli.w r1,  64(r30)
00149c  63471ff2  loadli.w r14,  -1780(r30)
0014a0  3f0816f6  blt.s r12, r1, -4608
0014a4  1f070000  addli r14, zero, 0
0014a8  5bbffdff  j -4616
0014ac  9f0e0ff2  addli sp, r30, -1792
0014b0  9f8e0e0e  addli sp, sp, 1792
0014b4  00a00300  mfence { lm, sm, gm }
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
00154c  00100000  exit
001550  00100000  exit
001554  00100000  exit
001558  00100000  exit
00155c  00100000  exit
001560  00100000  exit
001564  00100000  exit
001568  00100000  exit
00156c  00100000  exit
001570  00100000  exit
001574  00100000  exit
001578  00100000  exit
00157c  00100000  exit
001580  00100000  exit
001584  00100000  exit
001588  00100000  exit
00158c  00100000  exit
001590  00100000  exit
001594  00100000  exit
001598  00100000  exit
00159c  00100000  exit
0015a0  00100000  exit
0015a4  00100000  exit
0015a8  00100000  exit
0015ac  00100000  exit
0015b0  00100000  exit
0015b4  00100000  exit
0015b8  00100000  exit
0015bc  00100000  exit
0015c0  00100000  exit
0015c4  00100000  exit
0015c8  00100000  exit
0015cc  00100000  exit
0015d0  00100000  exit
0015d4  00100000  exit
0015d8  00100000  exit
0015dc  00100000  exit
0015e0  00100000  exit
0015e4  00100000  exit
0015e8  00100000  exit
0015ec  00100000  exit
0015f0  00100000  exit
0015f4  00100000  exit
0015f8  00100000  exit
0015fc  00100000  exit
001600  00100000  exit
001604  00100000  exit
001608  00100000  exit
00160c  00100000  exit
001610  00100000  exit
001614  00100000  exit
001618  00100000  exit
00161c  00100000  exit
001620  00100000  exit
001624  00100000  exit
001628  00100000  exit
00162c  00100000  exit
001630  00100000  exit
001634  00100000  exit
001638  00100000  exit
00163c  00100000  exit
001640  00100000  exit
001644  00100000  exit
001648  00100000  exit
00164c  00100000  exit
001650  00100000  exit
001654  00100000  exit
001658  00100000  exit
00165c  00100000  exit
001660  00100000  exit
001664  00100000  exit
001668  00100000  exit
00166c  00100000  exit
001670  00100000  exit
001674  00100000  exit
001678  00100000  exit
00167c  00100000  exit
001680  00100000  exit
001684  00100000  exit
001688  00100000  exit
00168c  00100000  exit
001690  00100000  exit
001694  00100000  exit
001698  00100000  exit
00169c  00100000  exit
0016a0  00100000  exit
0016a4  00100000  exit
0016a8  00100000  exit
0016ac  00100000  exit
0016b0  00100000  exit
0016b4  00100000  exit
0016b8  00100000  exit
0016bc  00100000  exit
0016c0  00100000  exit
0016c4  00100000  exit
0016c8  00100000  exit
0016cc  00100000  exit
0016d0  00100000  exit
0016d4  00100000  exit
0016d8  00100000  exit
0016dc  00100000  exit
0016e0  00100000  exit
0016e4  00100000  exit
0016e8  00100000  exit
0016ec  00100000  exit
0016f0  00100000  exit
0016f4  00100000  exit
0016f8  00100000  exit
