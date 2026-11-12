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
0000e4  9f8e0eed  addli sp, sp, -2432
0000e8  ab000000  lui r1, 0
0000ec  80310002  core_id r3
0000f0  1f8f0e12  addli r30, sp, 2304
0000f4  2b620000  lui r4, 6
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
000124  9f820240  addli r5, r5, 8192
000128  0b139320  mul.s r6, r6, r9
00012c  1b12f2ff  ori r4, r4, 4095
000130  e7038fee  storeli.w r8, -2248(r30)
000134  73600400  stores.w zero, 0(r8)
000138  1f040008  addli r8, zero, 1024
00013c  00a00300  mfence { lm, sm, gm }
000140  80210204  csr_set csr3, r4
000144  00d00100  sync_group
000148  67435fee  storeli.w r5, -2252(r30)
00014c  73e00200  stores.w zero, 0(r5)
000150  8b137418  sub.s r7, r8, r7
000154  80520002  load_param_i r5, 0
000158  1f140000  addli r8, zero, 1
00015c  00a00300  mfence { lm, sm, gm }
000160  80210204  csr_set csr3, r4
000164  00d00100  sync_group
000168  e7436fee  storeli.w r6, -2244(r30)
00016c  00a00300  mfence { lm, sm, gm }
000170  00a00300  mfence { lm, sm, gm }
000174  80210204  csr_set csr3, r4
000178  00d00100  sync_group
00017c  bfe08300  blt.s r7, r8, 56
000180  1bb56100  slli r10, r3, 6
000184  9f052000  addli r11, zero, 16
000188  abf60300  lui r13, 63
00018c  6b540f02  load.d r[9:10], 32(r30)
000190  8b83b340  min.u r7, r7, r11
000194  0b96a010  add.s r12, r1, r10
000198  8b15d610  add.s r11, r12, r13
00019c  33160528  sext_int2long r[13:14], r10
0001a0  9bb32300  slli r7, r7, 2
0001a4  2b0500f0  lui r10, 983040
0001a8  0b24c410  add.ul r[9:10], r[9:10], r[13:14]
0001ac  9793a300  or r7, r7, r10
0001b0  ff03b400  l_gm2sm r7, r11, 0(r[9:10])
0001b4  00a00300  mfence { lm, sm, gm }
0001b8  00a00300  mfence { lm, sm, gm }
0001bc  80210204  csr_set csr3, r4
0001c0  00d00100  sync_group
0001c4  63427fee  loadli.w r4,  -2244(r30)
0001c8  4b5c5208  ble.s r4, r5, 4884
0001cc  1b883100  andi r16, r3, 3
0001d0  e3451f00  loadli.w r11,  12(r30)
0001d4  00d30002  load_param_i r6, 1
0001d8  9bc12100  srli r3, r3, 2
0001dc  9f070002  addli r15, zero, 256
0001e0  eb548f01  load.d r[10:11], 24(r30)
0001e4  63428f00  loadli.w r4,  68(r30)
0001e8  eb530f05  load.d r[8:9], 80(r30)
0001ec  1b368800  slli r12, r16, 8
0001f0  67036fee  storeli.w r6, -2256(r30)
0001f4  1b83f100  andi r6, r3, 15
0001f8  8b95c518  sub.s r11, r11, r12
0001fc  b3060628  zext_int2long r[14:15], r12
000200  e7426fee  storeli.w r6, -2260(r30)
000204  8b910548  max.s r3, r11, zero
000208  8bb4d420  mul.sl r[10:11], r[10:11], r[14:15]
00020c  9f054fee  addli r11, r30, -2272
000210  8b91f140  min.s r3, r3, r15
000214  73b09500  store.d r[10:11], 0(r11)
000218  9b34a800  slli r9, r16, 10
00021c  1f058000  addli r10, zero, 64
000220  9bb12100  slli r3, r3, 2
000224  8b949010  add.s r9, r1, r9
000228  e7413fee  storeli.w r3, -2276(r30)
00022c  abf1ffff  lui r3, 1048575
000230  9b9101ff  ori r3, r3, 4080
000234  17013100  and r2, r2, r3
000238  abf10300  lui r3, 63
00023c  8b902010  add.s r1, r1, r2
000240  0b9c3410  add.s r24, r9, r3
000244  8b11c218  sub.s r3, r4, r12
000248  2b610000  lui r2, 6
00024c  1f022fee  addli r4, r30, -2288
000250  9f040001  addli r9, zero, 128
000254  1b110101  ori r2, r2, 16
000258  8b910148  max.s r3, r3, zero
00025c  9f8c0040  addli r25, r1, 8192
000260  0b9d2010  add.s r26, r1, r2
000264  8b90f140  min.s r1, r3, r15
000268  0bb1d320  mul.sl r[3:4], r[8:9], r[14:15]
00026c  1f240000  addli r8, zero, 2
000270  9f030ff6  addli r7, r30, -1280
000274  9f064000  addli r13, zero, 32
000278  73302200  store.d r[3:4], 0(r4)
00027c  9bb02000  slli r1, r1, 2
000280  abf10000  lui r3, 15
000284  9b95f1ff  ori r11, r3, 4095
000288  e7401fee  storeli.w r1, -2292(r30)
00028c  b3000328  zext_int2long r[2:3], r6
000290  9f010fee  addli r3, r30, -2304
000294  73b01100  store.d r[2:3], 0(r3)
000298  db090000  j 76
00029c  eb508f04  load.d r[2:3], 72(r30)
0002a0  1f032fee  addli r6, r30, -2288
0002a4  8bb01120  mul.sl r[2:3], r[4:5], r[2:3]
0002a8  eb510300  load.d r[4:5], 0(r6)
0002ac  6b538f03  load.d r[7:8], 56(r30)
0002b0  8ba03010  add.ul r[2:3], r[2:3], r[4:5]
0002b4  ab0100f0  lui r3, 983040
0002b8  97b08002  sll.d r[2:3], r[2:3], r8
0002bc  97113700  or r3, r14, r3
0002c0  8b201310  add.ul r[2:3], r[7:8], r[2:3]
0002c4  9f030ff6  addli r7, r30, -1280
0002c8  ffb17000  s_lm2gm r3, r7, 0(r[2:3])
0002cc  e3006fee  loadli.w r1,  -2256(r30)
0002d0  00a00000  mfence { lm }
0002d4  8b921210  add.s r5, r5, r1
0002d8  e3407fee  loadli.w r1,  -2244(r30)
0002dc  3fa01200  blt.s r5, r1, 8
0002e0  db3f0200  j 4604
0002e4  e340cf00  loadli.w r1,  100(r30)
0002e8  63473fee  loadli.w r14,  -2276(r30)
0002ec  8b911230  div.s r3, r5, r1
0002f0  e300cf00  loadli.w r1,  96(r30)
0002f4  8b911130  div.s r3, r3, r1
0002f8  e3405fee  loadli.w r1,  -2260(r30)
0002fc  9bb14100  slli r3, r3, 4
000300  17961100  or r12, r3, r1
000304  e3001f00  loadli.w r1,  8(r30)
000308  3f201600  blt.s r12, r1, 8
00030c  1f070000  addli r14, zero, 0
000310  1f030fee  addli r6, r30, -2304
000314  b3910128  sext_int2long r[4:5], r3
000318  eb500300  load.d r[2:3], 0(r6)
00031c  1f034fee  addli r6, r30, -2272
000320  97911102  or.d r[4:5], r[4:5], r[2:3]
000324  eb500f01  load.d r[2:3], 16(r30)
000328  8bba1120  mul.sl r[22:23], r[4:5], r[2:3]
00032c  eb500300  load.d r[2:3], 0(r6)
000330  2b0300f0  lui r6, 983040
000334  17136700  or r6, r14, r6
000338  8baa1a10  add.ul r[22:23], r[22:23], r[2:3]
00033c  eb500f00  load.d r[2:3], 0(r30)
000340  97ba8a02  sll.d r[22:23], r[22:23], r8
000344  8baa5011  add.ul r[22:23], r[2:3], r[22:23]
000348  9f000ff6  addli r1, r30, -1280
00034c  7fa37a00  l_gm2lm r6, r7, 0(r[22:23])
000350  00a00000  mfence { lm }
000354  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000358  9f008ff6  addli r1, r30, -1216
00035c  ca110c02  vloads_mask16.mz vr3{mr1}, 0(r24)
000360  ca128c02  vloads_mask16.mz vr5{mr1}, 64(r24)
000364  ca130c03  vloads_mask16.mz vr7{mr1}, 128(r24)
000368  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
00036c  9f000ff7  addli r1, r30, -1152
000370  4a128c03  vloads_mask16.mz vr4{mr1}, 192(r24)
000374  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000378  9f008ff7  addli r1, r30, -1088
00037c  4a100c22  vloads_mask16.mz vr0{mr1}, 256(r24)
000380  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
000384  ca108c22  vloads_mask16.mz vr1{mr1}, 320(r24)
000388  c2140f82  vload_mask16.mz vr9{mr1}, 1024(r30)
00038c  4a110c23  vloads_mask16.mz vr2{mr1}, 384(r24)
000390  9f000ff3  addli r1, r30, -1664
000394  16900402  vadd.f.mz.rn vr0{mr1}, vr9, vr0
000398  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
00039c  16113302  vadd.f.mz.rn vr2{mr1}, vr6, vr3
0003a0  9f008ff2  addli r1, r30, -1728
0003a4  96117502  vadd.f.mz.rn vr3{mr1}, vr10, vr7
0003a8  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0003ac  16115402  vadd.f.mz.rn vr2{mr1}, vr8, vr5
0003b0  9f000ff5  addli r1, r30, -1408
0003b4  42138f82  vload_mask16.mz vr6{mr1}, 1088(r30)
0003b8  ca130c42  vloads_mask16.mz vr7{mr1}, 512(r24)
0003bc  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0003c0  9f008ff4  addli r1, r30, -1472
0003c4  4a118c23  vloads_mask16.mz vr2{mr1}, 448(r24)
0003c8  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0003cc  96914502  vadd.f.mz.rn vr3{mr1}, vr11, vr4
0003d0  9f000ff4  addli r1, r30, -1536
0003d4  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0003d8  9f008ff3  addli r1, r30, -1600
0003dc  42120f83  vload_mask16.mz vr4{mr1}, 1152(r30)
0003e0  ca148c42  vloads_mask16.mz vr9{mr1}, 576(r24)
0003e4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003e8  16101302  vadd.f.mz.rn vr0{mr1}, vr6, vr1
0003ec  9f008ff5  addli r1, r30, -1344
0003f0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003f4  9f000ff3  addli r1, r30, -1664
0003f8  42138f83  vload_mask16.mz vr6{mr1}, 1216(r30)
0003fc  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000400  16142302  vadd.f.mz.rn vr8{mr1}, vr6, vr2
000404  96110202  vadd.f.mz.rn vr3{mr1}, vr4, vr0
000408  42120fa2  vload_mask16.mz vr4{mr1}, 1280(r30)
00040c  4a100c43  vloads_mask16.mz vr0{mr1}, 640(r24)
000410  ca108c43  vloads_mask16.mz vr1{mr1}, 704(r24)
000414  ca120c62  vloads_mask16.mz vr5{mr1}, 768(r24)
000418  16117202  vadd.f.mz.rn vr2{mr1}, vr4, vr7
00041c  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000420  9f000ff2  addli r1, r30, -1792
000424  42128fa2  vload_mask16.mz vr4{mr1}, 1344(r30)
000428  4a118c63  vloads_mask16.mz vr2{mr1}, 960(r24)
00042c  4a138c62  vloads_mask16.mz vr6{mr1}, 832(r24)
000430  ca150c63  vloads_mask16.mz vr11{mr1}, 896(r24)
000434  96139202  vadd.f.mz.rn vr7{mr1}, vr4, vr9
000438  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
00043c  42120fa3  vload_mask16.mz vr4{mr1}, 1408(r30)
000440  c2148fa3  vload_mask16.mz vr9{mr1}, 1472(r30)
000444  42150fc2  vload_mask16.mz vr10{mr1}, 1536(r30)
000448  16110202  vadd.f.mz.rn vr2{mr1}, vr4, vr0
00044c  42108fc2  vload_mask16.mz vr0{mr1}, 1600(r30)
000450  16921402  vadd.f.mz.rn vr4{mr1}, vr9, vr1
000454  c2100fc3  vload_mask16.mz vr1{mr1}, 1664(r30)
000458  96145502  vadd.f.mz.rn vr9{mr1}, vr10, vr5
00045c  42158fc3  vload_mask16.mz vr10{mr1}, 1728(r30)
000460  16136002  vadd.f.mz.rn vr6{mr1}, vr0, vr6
000464  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000468  9f000ff3  addli r1, r30, -1664
00046c  9690b002  vadd.f.mz.rn vr1{mr1}, vr1, vr11
000470  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000474  9f000ff5  addli r1, r30, -1408
000478  96150502  vadd.f.mz.rn vr11{mr1}, vr10, vr0
00047c  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000480  9f008ff2  addli r1, r30, -1728
000484  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000488  9f008ff4  addli r1, r30, -1472
00048c  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
000490  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000494  9f000ff4  addli r1, r30, -1536
000498  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
00049c  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0004a0  9f008ff3  addli r1, r30, -1600
0004a4  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
0004a8  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0004ac  9f008ff5  addli r1, r30, -1344
0004b0  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
0004b4  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0004b8  9f008fef  addli r1, r30, -2112
0004bc  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
0004c0  36103002  vmax.f.mz vr0{mr1}, vr0, vr3
0004c4  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0004c8  9f008fee  addli r1, r30, -2240
0004cc  36108002  vmax.f.mz vr0{mr1}, vr0, vr8
0004d0  36105002  vmax.f.mz vr0{mr1}, vr0, vr5
0004d4  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0004d8  9f000fef  addli r1, r30, -2176
0004dc  36107002  vmax.f.mz vr0{mr1}, vr0, vr7
0004e0  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
0004e4  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
0004e8  9f000ff0  addli r1, r30, -2048
0004ec  36104002  vmax.f.mz vr0{mr1}, vr0, vr4
0004f0  36109002  vmax.f.mz vr0{mr1}, vr0, vr9
0004f4  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0004f8  9f008ff0  addli r1, r30, -1984
0004fc  36106002  vmax.f.mz vr0{mr1}, vr0, vr6
000500  1231b002  vadd.s.mz vr2{mr1}, zero, vr11
000504  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000508  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
00050c  9f000ff1  addli r1, r30, -1920
000510  3610b002  vmax.f.mz vr0{mr1}, vr0, vr11
000514  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
000518  9f000ff2  addli r1, r30, -1792
00051c  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
000520  9f008ff1  addli r1, r30, -1856
000524  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000528  eaf007c0  vsrl.p vr1, r15, vr0
00052c  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000530  e3406fee  loadli.w r1,  -2252(r30)
000534  eaf004c0  vsrl.p vr1, r9, vr0
000538  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
00053c  ea7005c0  vsrl.p vr1, r10, vr0
000540  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000544  eaf006c0  vsrl.p vr1, r13, vr0
000548  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
00054c  7a130040  vextracti.f r6, 0(vr0)
000550  9f060800  addli r13, r16, 0
000554  73e06000  stores.w r6, 0(r1)
000558  00a00300  mfence { lm, sm, gm }
00055c  80a10504  csr_set csr3, r11
000560  00d00100  sync_group
000564  bb900600  bneq r13, zero, 36
000568  6fc30c00  loads.w r6, 0(r25)
00056c  6fc74c00  loads.w r14, 4(r25)
000570  efca8c00  loads.w r21, 8(r25)
000574  6fcbcc00  loads.w r22, 12(r25)
000578  0b63e348  max.f r6, r6, r14
00057c  0b635349  max.f r6, r6, r21
000580  0b636349  max.f r6, r6, r22
000584  73e06c00  stores.w r6, 0(r25)
000588  00a00300  mfence { lm, sm, gm }
00058c  80a10504  csr_set csr3, r11
000590  00d00100  sync_group
000594  6fc30c00  loads.w r6, 0(r25)
000598  ab000080  lui r1, 524288
00059c  9f080ffe  addli r17, r30, -256
0005a0  17271300  xor r14, r6, r1
0005a4  9f008ff2  addli r1, r30, -1728
0005a8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0005ac  9f000ff5  addli r1, r30, -1408
0005b0  92110702  vadd.f.mz.rn vr3{mr1}, r14, vr0
0005b4  46103fe2  vstore_mask16.mz vr3{mr1}, 1792(r30)
0005b8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0005bc  9f008ff4  addli r1, r30, -1472
0005c0  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
0005c4  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
0005c8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0005cc  9f000ff4  addli r1, r30, -1536
0005d0  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
0005d4  46180fe2  vstore_mask16.mz vr0{mr1}, 1920(r30)
0005d8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0005dc  9f008ff3  addli r1, r30, -1600
0005e0  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
0005e4  461c0fe2  vstore_mask16.mz vr0{mr1}, 1984(r30)
0005e8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0005ec  00a00000  mfence { lm }
0005f0  63830800  loadli.w r6,  0(r17)
0005f4  e3ca0800  loadli.w r21,  4(r17)
0005f8  638b1800  loadli.w r22,  8(r17)
0005fc  63c91800  loadli.w r18,  12(r17)
000600  638a2800  loadli.w r20,  16(r17)
000604  e3cb2800  loadli.w r23,  20(r17)
000608  e3893800  loadli.w r19,  24(r17)
00060c  63c13800  loadli.w r2,  28(r17)
000610  e3834800  loadli.w r7,  32(r17)
000614  63c44800  loadli.w r8,  36(r17)
000618  e3845800  loadli.w r9,  40(r17)
00061c  e3cd5800  loadli.w r27,  44(r17)
000620  638e6800  loadli.w r28,  48(r17)
000624  63c56800  loadli.w r10,  52(r17)
000628  e3807800  loadli.w r1,  56(r17)
00062c  e3c77800  loadli.w r15,  60(r17)
000630  0f030300  exp.f.rn r6, r6
000634  8f8a0a00  exp.f.rn r21, r21
000638  0f0b0b00  exp.f.rn r22, r22
00063c  0f090900  exp.f.rn r18, r18
000640  0f0a0a00  exp.f.rn r20, r20
000644  8f8b0b00  exp.f.rn r23, r23
000648  8f890900  exp.f.rn r19, r19
00064c  0f010100  exp.f.rn r2, r2
000650  8f830300  exp.f.rn r7, r7
000654  0f040400  exp.f.rn r8, r8
000658  8f840400  exp.f.rn r9, r9
00065c  8f8d0d00  exp.f.rn r27, r27
000660  0f0e0e00  exp.f.rn r28, r28
000664  0f050500  exp.f.rn r10, r10
000668  8f800000  exp.f.rn r1, r1
00066c  8f870700  exp.f.rn r15, r15
000670  67806800  storeli.w r6, 0(r17)
000674  67c05801  storeli.w r21, 4(r17)
000678  e7806801  storeli.w r22, 8(r17)
00067c  e7c02801  storeli.w r18, 12(r17)
000680  67814801  storeli.w r20, 16(r17)
000684  67c17801  storeli.w r23, 20(r17)
000688  e7813801  storeli.w r19, 24(r17)
00068c  e7c12800  storeli.w r2, 28(r17)
000690  67827800  storeli.w r7, 32(r17)
000694  67c28800  storeli.w r8, 36(r17)
000698  e7829800  storeli.w r9, 40(r17)
00069c  e7c2b801  storeli.w r27, 44(r17)
0006a0  6783c801  storeli.w r28, 48(r17)
0006a4  67c3a800  storeli.w r10, 52(r17)
0006a8  e7831800  storeli.w r1, 56(r17)
0006ac  e7c3f800  storeli.w r15, 60(r17)
0006b0  63838800  loadli.w r6,  64(r17)
0006b4  e3ca8800  loadli.w r21,  68(r17)
0006b8  638b9800  loadli.w r22,  72(r17)
0006bc  63c99800  loadli.w r18,  76(r17)
0006c0  638aa800  loadli.w r20,  80(r17)
0006c4  e3cba800  loadli.w r23,  84(r17)
0006c8  e389b800  loadli.w r19,  88(r17)
0006cc  63c1b800  loadli.w r2,  92(r17)
0006d0  e383c800  loadli.w r7,  96(r17)
0006d4  63c4c800  loadli.w r8,  100(r17)
0006d8  e384d800  loadli.w r9,  104(r17)
0006dc  e3cdd800  loadli.w r27,  108(r17)
0006e0  638ee800  loadli.w r28,  112(r17)
0006e4  63c5e800  loadli.w r10,  116(r17)
0006e8  e380f800  loadli.w r1,  120(r17)
0006ec  e3c7f800  loadli.w r15,  124(r17)
0006f0  0f030300  exp.f.rn r6, r6
0006f4  8f8a0a00  exp.f.rn r21, r21
0006f8  0f0b0b00  exp.f.rn r22, r22
0006fc  0f090900  exp.f.rn r18, r18
000700  0f0a0a00  exp.f.rn r20, r20
000704  8f8b0b00  exp.f.rn r23, r23
000708  8f890900  exp.f.rn r19, r19
00070c  0f010100  exp.f.rn r2, r2
000710  8f830300  exp.f.rn r7, r7
000714  0f040400  exp.f.rn r8, r8
000718  8f840400  exp.f.rn r9, r9
00071c  8f8d0d00  exp.f.rn r27, r27
000720  0f0e0e00  exp.f.rn r28, r28
000724  0f050500  exp.f.rn r10, r10
000728  8f800000  exp.f.rn r1, r1
00072c  8f870700  exp.f.rn r15, r15
000730  67846800  storeli.w r6, 64(r17)
000734  67c45801  storeli.w r21, 68(r17)
000738  e7846801  storeli.w r22, 72(r17)
00073c  e7c42801  storeli.w r18, 76(r17)
000740  67854801  storeli.w r20, 80(r17)
000744  67c57801  storeli.w r23, 84(r17)
000748  e7853801  storeli.w r19, 88(r17)
00074c  e7c52800  storeli.w r2, 92(r17)
000750  67867800  storeli.w r7, 96(r17)
000754  67c68800  storeli.w r8, 100(r17)
000758  e7869800  storeli.w r9, 104(r17)
00075c  e7c6b801  storeli.w r27, 108(r17)
000760  6787c801  storeli.w r28, 112(r17)
000764  67c7a800  storeli.w r10, 116(r17)
000768  e7871800  storeli.w r1, 120(r17)
00076c  e7c7f800  storeli.w r15, 124(r17)
000770  63830801  loadli.w r6,  128(r17)
000774  e3ca0801  loadli.w r21,  132(r17)
000778  638b1801  loadli.w r22,  136(r17)
00077c  63c91801  loadli.w r18,  140(r17)
000780  638a2801  loadli.w r20,  144(r17)
000784  e3cb2801  loadli.w r23,  148(r17)
000788  e3893801  loadli.w r19,  152(r17)
00078c  63c13801  loadli.w r2,  156(r17)
000790  e3834801  loadli.w r7,  160(r17)
000794  63c44801  loadli.w r8,  164(r17)
000798  e3845801  loadli.w r9,  168(r17)
00079c  e3cd5801  loadli.w r27,  172(r17)
0007a0  638e6801  loadli.w r28,  176(r17)
0007a4  63c56801  loadli.w r10,  180(r17)
0007a8  e3807801  loadli.w r1,  184(r17)
0007ac  e3c77801  loadli.w r15,  188(r17)
0007b0  0f030300  exp.f.rn r6, r6
0007b4  8f8a0a00  exp.f.rn r21, r21
0007b8  0f0b0b00  exp.f.rn r22, r22
0007bc  0f090900  exp.f.rn r18, r18
0007c0  0f0a0a00  exp.f.rn r20, r20
0007c4  8f8b0b00  exp.f.rn r23, r23
0007c8  8f890900  exp.f.rn r19, r19
0007cc  0f010100  exp.f.rn r2, r2
0007d0  8f830300  exp.f.rn r7, r7
0007d4  0f040400  exp.f.rn r8, r8
0007d8  8f840400  exp.f.rn r9, r9
0007dc  8f8d0d00  exp.f.rn r27, r27
0007e0  0f0e0e00  exp.f.rn r28, r28
0007e4  0f050500  exp.f.rn r10, r10
0007e8  8f800000  exp.f.rn r1, r1
0007ec  8f870700  exp.f.rn r15, r15
0007f0  67886800  storeli.w r6, 128(r17)
0007f4  67c85801  storeli.w r21, 132(r17)
0007f8  e7886801  storeli.w r22, 136(r17)
0007fc  e7c82801  storeli.w r18, 140(r17)
000800  67894801  storeli.w r20, 144(r17)
000804  67c97801  storeli.w r23, 148(r17)
000808  e7893801  storeli.w r19, 152(r17)
00080c  e7c92800  storeli.w r2, 156(r17)
000810  678a7800  storeli.w r7, 160(r17)
000814  67ca8800  storeli.w r8, 164(r17)
000818  e78a9800  storeli.w r9, 168(r17)
00081c  e7cab801  storeli.w r27, 172(r17)
000820  678bc801  storeli.w r28, 176(r17)
000824  67cba800  storeli.w r10, 180(r17)
000828  e78b1800  storeli.w r1, 184(r17)
00082c  e7cbf800  storeli.w r15, 188(r17)
000830  63838801  loadli.w r6,  192(r17)
000834  e3ca8801  loadli.w r21,  196(r17)
000838  638b9801  loadli.w r22,  200(r17)
00083c  63c99801  loadli.w r18,  204(r17)
000840  638aa801  loadli.w r20,  208(r17)
000844  e3cba801  loadli.w r23,  212(r17)
000848  e389b801  loadli.w r19,  216(r17)
00084c  63c1b801  loadli.w r2,  220(r17)
000850  e383c801  loadli.w r7,  224(r17)
000854  63c4c801  loadli.w r8,  228(r17)
000858  e384d801  loadli.w r9,  232(r17)
00085c  e3cdd801  loadli.w r27,  236(r17)
000860  638ee801  loadli.w r28,  240(r17)
000864  63c5e801  loadli.w r10,  244(r17)
000868  e380f801  loadli.w r1,  248(r17)
00086c  e3c7f801  loadli.w r15,  252(r17)
000870  0f030300  exp.f.rn r6, r6
000874  8f8a0a00  exp.f.rn r21, r21
000878  0f0b0b00  exp.f.rn r22, r22
00087c  0f090900  exp.f.rn r18, r18
000880  0f0a0a00  exp.f.rn r20, r20
000884  8f8b0b00  exp.f.rn r23, r23
000888  8f890900  exp.f.rn r19, r19
00088c  0f010100  exp.f.rn r2, r2
000890  8f830300  exp.f.rn r7, r7
000894  0f040400  exp.f.rn r8, r8
000898  8f840400  exp.f.rn r9, r9
00089c  8f8d0d00  exp.f.rn r27, r27
0008a0  0f0e0e00  exp.f.rn r28, r28
0008a4  0f050500  exp.f.rn r10, r10
0008a8  8f800000  exp.f.rn r1, r1
0008ac  8f870700  exp.f.rn r15, r15
0008b0  678c6800  storeli.w r6, 192(r17)
0008b4  67cc5801  storeli.w r21, 196(r17)
0008b8  e78c6801  storeli.w r22, 200(r17)
0008bc  e7cc2801  storeli.w r18, 204(r17)
0008c0  678d4801  storeli.w r20, 208(r17)
0008c4  67cd7801  storeli.w r23, 212(r17)
0008c8  e78d3801  storeli.w r19, 216(r17)
0008cc  e7cd2800  storeli.w r2, 220(r17)
0008d0  678e7800  storeli.w r7, 224(r17)
0008d4  67ce8800  storeli.w r8, 228(r17)
0008d8  e78e9800  storeli.w r9, 232(r17)
0008dc  e7ceb801  storeli.w r27, 236(r17)
0008e0  678fc801  storeli.w r28, 240(r17)
0008e4  67cfa800  storeli.w r10, 244(r17)
0008e8  e78f1800  storeli.w r1, 248(r17)
0008ec  e7cff800  storeli.w r15, 252(r17)
0008f0  00a00000  mfence { lm }
0008f4  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
0008f8  c2108fe2  vload_mask16.mz vr1{mr1}, 1856(r30)
0008fc  9f008ff5  addli r1, r30, -1344
000900  c2110fe3  vload_mask16.mz vr3{mr1}, 1920(r30)
000904  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
000908  c2158fe3  vload_mask16.mz vr11{mr1}, 1984(r30)
00090c  46100fe2  vstore_mask16.mz vr0{mr1}, 1792(r30)
000910  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000914  9f008fef  addli r1, r30, -2112
000918  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
00091c  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
000920  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000924  9f008ff4  addli r1, r30, -1472
000928  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
00092c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000930  9f008ff3  addli r1, r30, -1600
000934  96101202  vadd.f.mz.rn vr1{mr1}, vr4, vr1
000938  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
00093c  9f008fee  addli r1, r30, -2240
000940  46180fe2  vstore_mask16.mz vr0{mr1}, 1920(r30)
000944  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000948  9f000ff5  addli r1, r30, -1408
00094c  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
000950  461c0fe2  vstore_mask16.mz vr0{mr1}, 1984(r30)
000954  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
000958  9f000ff3  addli r1, r30, -1664
00095c  16903002  vadd.f.mz.rn vr0{mr1}, vr1, vr3
000960  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000964  00a00000  mfence { lm }
000968  e3800800  loadli.w r1,  0(r17)
00096c  63c10800  loadli.w r2,  4(r17)
000970  63831800  loadli.w r6,  8(r17)
000974  e3c31800  loadli.w r7,  12(r17)
000978  63842800  loadli.w r8,  16(r17)
00097c  e3c42800  loadli.w r9,  20(r17)
000980  63853800  loadli.w r10,  24(r17)
000984  e3c73800  loadli.w r15,  28(r17)
000988  63884800  loadli.w r16,  32(r17)
00098c  63c94800  loadli.w r18,  36(r17)
000990  e3895800  loadli.w r19,  40(r17)
000994  63ca5800  loadli.w r20,  44(r17)
000998  e38a6800  loadli.w r21,  48(r17)
00099c  63cb6800  loadli.w r22,  52(r17)
0009a0  e38b7800  loadli.w r23,  56(r17)
0009a4  e3cd7800  loadli.w r27,  60(r17)
0009a8  8f800000  exp.f.rn r1, r1
0009ac  0f010100  exp.f.rn r2, r2
0009b0  0f030300  exp.f.rn r6, r6
0009b4  8f830300  exp.f.rn r7, r7
0009b8  0f040400  exp.f.rn r8, r8
0009bc  8f840400  exp.f.rn r9, r9
0009c0  0f050500  exp.f.rn r10, r10
0009c4  8f870700  exp.f.rn r15, r15
0009c8  0f080800  exp.f.rn r16, r16
0009cc  0f090900  exp.f.rn r18, r18
0009d0  8f890900  exp.f.rn r19, r19
0009d4  0f0a0a00  exp.f.rn r20, r20
0009d8  8f8a0a00  exp.f.rn r21, r21
0009dc  0f0b0b00  exp.f.rn r22, r22
0009e0  8f8b0b00  exp.f.rn r23, r23
0009e4  8f8d0d00  exp.f.rn r27, r27
0009e8  67801800  storeli.w r1, 0(r17)
0009ec  67c02800  storeli.w r2, 4(r17)
0009f0  e7806800  storeli.w r6, 8(r17)
0009f4  e7c07800  storeli.w r7, 12(r17)
0009f8  67818800  storeli.w r8, 16(r17)
0009fc  67c19800  storeli.w r9, 20(r17)
000a00  e781a800  storeli.w r10, 24(r17)
000a04  e7c1f800  storeli.w r15, 28(r17)
000a08  67820801  storeli.w r16, 32(r17)
000a0c  67c22801  storeli.w r18, 36(r17)
000a10  e7823801  storeli.w r19, 40(r17)
000a14  e7c24801  storeli.w r20, 44(r17)
000a18  67835801  storeli.w r21, 48(r17)
000a1c  67c36801  storeli.w r22, 52(r17)
000a20  e7837801  storeli.w r23, 56(r17)
000a24  e7c3b801  storeli.w r27, 60(r17)
000a28  e3808800  loadli.w r1,  64(r17)
000a2c  63c18800  loadli.w r2,  68(r17)
000a30  63839800  loadli.w r6,  72(r17)
000a34  e3c39800  loadli.w r7,  76(r17)
000a38  6384a800  loadli.w r8,  80(r17)
000a3c  e3c4a800  loadli.w r9,  84(r17)
000a40  6385b800  loadli.w r10,  88(r17)
000a44  e3c7b800  loadli.w r15,  92(r17)
000a48  6388c800  loadli.w r16,  96(r17)
000a4c  63c9c800  loadli.w r18,  100(r17)
000a50  e389d800  loadli.w r19,  104(r17)
000a54  63cad800  loadli.w r20,  108(r17)
000a58  e38ae800  loadli.w r21,  112(r17)
000a5c  63cbe800  loadli.w r22,  116(r17)
000a60  e38bf800  loadli.w r23,  120(r17)
000a64  e3cdf800  loadli.w r27,  124(r17)
000a68  8f800000  exp.f.rn r1, r1
000a6c  0f010100  exp.f.rn r2, r2
000a70  0f030300  exp.f.rn r6, r6
000a74  8f830300  exp.f.rn r7, r7
000a78  0f040400  exp.f.rn r8, r8
000a7c  8f840400  exp.f.rn r9, r9
000a80  0f050500  exp.f.rn r10, r10
000a84  8f870700  exp.f.rn r15, r15
000a88  0f080800  exp.f.rn r16, r16
000a8c  0f090900  exp.f.rn r18, r18
000a90  8f890900  exp.f.rn r19, r19
000a94  0f0a0a00  exp.f.rn r20, r20
000a98  8f8a0a00  exp.f.rn r21, r21
000a9c  0f0b0b00  exp.f.rn r22, r22
000aa0  8f8b0b00  exp.f.rn r23, r23
000aa4  8f8d0d00  exp.f.rn r27, r27
000aa8  67841800  storeli.w r1, 64(r17)
000aac  67c42800  storeli.w r2, 68(r17)
000ab0  e7846800  storeli.w r6, 72(r17)
000ab4  e7c47800  storeli.w r7, 76(r17)
000ab8  67858800  storeli.w r8, 80(r17)
000abc  67c59800  storeli.w r9, 84(r17)
000ac0  e785a800  storeli.w r10, 88(r17)
000ac4  e7c5f800  storeli.w r15, 92(r17)
000ac8  67860801  storeli.w r16, 96(r17)
000acc  67c62801  storeli.w r18, 100(r17)
000ad0  e7863801  storeli.w r19, 104(r17)
000ad4  e7c64801  storeli.w r20, 108(r17)
000ad8  67875801  storeli.w r21, 112(r17)
000adc  67c76801  storeli.w r22, 116(r17)
000ae0  e7877801  storeli.w r23, 120(r17)
000ae4  e7c7b801  storeli.w r27, 124(r17)
000ae8  e3800801  loadli.w r1,  128(r17)
000aec  63c10801  loadli.w r2,  132(r17)
000af0  63831801  loadli.w r6,  136(r17)
000af4  e3c31801  loadli.w r7,  140(r17)
000af8  63842801  loadli.w r8,  144(r17)
000afc  e3c42801  loadli.w r9,  148(r17)
000b00  63853801  loadli.w r10,  152(r17)
000b04  e3c73801  loadli.w r15,  156(r17)
000b08  63884801  loadli.w r16,  160(r17)
000b0c  63c94801  loadli.w r18,  164(r17)
000b10  e3895801  loadli.w r19,  168(r17)
000b14  63ca5801  loadli.w r20,  172(r17)
000b18  e38a6801  loadli.w r21,  176(r17)
000b1c  63cb6801  loadli.w r22,  180(r17)
000b20  e38b7801  loadli.w r23,  184(r17)
000b24  e3cd7801  loadli.w r27,  188(r17)
000b28  8f800000  exp.f.rn r1, r1
000b2c  0f010100  exp.f.rn r2, r2
000b30  0f030300  exp.f.rn r6, r6
000b34  8f830300  exp.f.rn r7, r7
000b38  0f040400  exp.f.rn r8, r8
000b3c  8f840400  exp.f.rn r9, r9
000b40  0f050500  exp.f.rn r10, r10
000b44  8f870700  exp.f.rn r15, r15
000b48  0f080800  exp.f.rn r16, r16
000b4c  0f090900  exp.f.rn r18, r18
000b50  8f890900  exp.f.rn r19, r19
000b54  0f0a0a00  exp.f.rn r20, r20
000b58  8f8a0a00  exp.f.rn r21, r21
000b5c  0f0b0b00  exp.f.rn r22, r22
000b60  8f8b0b00  exp.f.rn r23, r23
000b64  8f8d0d00  exp.f.rn r27, r27
000b68  67881800  storeli.w r1, 128(r17)
000b6c  67c82800  storeli.w r2, 132(r17)
000b70  e7886800  storeli.w r6, 136(r17)
000b74  e7c87800  storeli.w r7, 140(r17)
000b78  67898800  storeli.w r8, 144(r17)
000b7c  67c99800  storeli.w r9, 148(r17)
000b80  e789a800  storeli.w r10, 152(r17)
000b84  e7c9f800  storeli.w r15, 156(r17)
000b88  678a0801  storeli.w r16, 160(r17)
000b8c  67ca2801  storeli.w r18, 164(r17)
000b90  e78a3801  storeli.w r19, 168(r17)
000b94  e7ca4801  storeli.w r20, 172(r17)
000b98  678b5801  storeli.w r21, 176(r17)
000b9c  67cb6801  storeli.w r22, 180(r17)
000ba0  e78b7801  storeli.w r23, 184(r17)
000ba4  e7cbb801  storeli.w r27, 188(r17)
000ba8  e3808801  loadli.w r1,  192(r17)
000bac  63c18801  loadli.w r2,  196(r17)
000bb0  63839801  loadli.w r6,  200(r17)
000bb4  e3c39801  loadli.w r7,  204(r17)
000bb8  6384a801  loadli.w r8,  208(r17)
000bbc  e3c4a801  loadli.w r9,  212(r17)
000bc0  6385b801  loadli.w r10,  216(r17)
000bc4  e3c7b801  loadli.w r15,  220(r17)
000bc8  6388c801  loadli.w r16,  224(r17)
000bcc  63c9c801  loadli.w r18,  228(r17)
000bd0  e389d801  loadli.w r19,  232(r17)
000bd4  63cad801  loadli.w r20,  236(r17)
000bd8  e38ae801  loadli.w r21,  240(r17)
000bdc  63cbe801  loadli.w r22,  244(r17)
000be0  e38bf801  loadli.w r23,  248(r17)
000be4  e3cdf801  loadli.w r27,  252(r17)
000be8  8f800000  exp.f.rn r1, r1
000bec  0f010100  exp.f.rn r2, r2
000bf0  0f030300  exp.f.rn r6, r6
000bf4  8f830300  exp.f.rn r7, r7
000bf8  0f040400  exp.f.rn r8, r8
000bfc  8f840400  exp.f.rn r9, r9
000c00  0f050500  exp.f.rn r10, r10
000c04  8f870700  exp.f.rn r15, r15
000c08  0f080800  exp.f.rn r16, r16
000c0c  0f090900  exp.f.rn r18, r18
000c10  8f890900  exp.f.rn r19, r19
000c14  0f0a0a00  exp.f.rn r20, r20
000c18  8f8a0a00  exp.f.rn r21, r21
000c1c  0f0b0b00  exp.f.rn r22, r22
000c20  8f8b0b00  exp.f.rn r23, r23
000c24  8f8d0d00  exp.f.rn r27, r27
000c28  678c1800  storeli.w r1, 192(r17)
000c2c  67cc2800  storeli.w r2, 196(r17)
000c30  e78c6800  storeli.w r6, 200(r17)
000c34  e7cc7800  storeli.w r7, 204(r17)
000c38  678d8800  storeli.w r8, 208(r17)
000c3c  67cd9800  storeli.w r9, 212(r17)
000c40  e78da800  storeli.w r10, 216(r17)
000c44  e7cdf800  storeli.w r15, 220(r17)
000c48  678e0801  storeli.w r16, 224(r17)
000c4c  67ce2801  storeli.w r18, 228(r17)
000c50  e78e3801  storeli.w r19, 232(r17)
000c54  e7ce4801  storeli.w r20, 236(r17)
000c58  678f5801  storeli.w r21, 240(r17)
000c5c  67cf6801  storeli.w r22, 244(r17)
000c60  e78f7801  storeli.w r23, 248(r17)
000c64  e7cfb801  storeli.w r27, 252(r17)
000c68  00a00000  mfence { lm }
000c6c  92111702  vadd.f.mz.rn vr3{mr1}, r14, vr1
000c70  42130fe2  vload_mask16.mz vr6{mr1}, 1792(r30)
000c74  9f008ff5  addli r1, r30, -1344
000c78  1610b002  vadd.f.mz.rn vr0{mr1}, vr0, vr11
000c7c  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
000c80  9f000fef  addli r1, r30, -2176
000c84  42148fe2  vload_mask16.mz vr8{mr1}, 1856(r30)
000c88  c2130fe3  vload_mask16.mz vr7{mr1}, 1920(r30)
000c8c  42128fe3  vload_mask16.mz vr4{mr1}, 1984(r30)
000c90  46103fe2  vstore_mask16.mz vr3{mr1}, 1792(r30)
000c94  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000c98  9f000ff0  addli r1, r30, -2048
000c9c  92111702  vadd.f.mz.rn vr3{mr1}, r14, vr1
000ca0  46143fe2  vstore_mask16.mz vr3{mr1}, 1856(r30)
000ca4  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
000ca8  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000cac  9f008ff0  addli r1, r30, -1984
000cb0  92111702  vadd.f.mz.rn vr3{mr1}, r14, vr1
000cb4  46183fe2  vstore_mask16.mz vr3{mr1}, 1920(r30)
000cb8  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000cbc  9f000ff3  addli r1, r30, -1664
000cc0  92111702  vadd.f.mz.rn vr3{mr1}, r14, vr1
000cc4  461c3fe2  vstore_mask16.mz vr3{mr1}, 1984(r30)
000cc8  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
000ccc  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
000cd0  9f000ff1  addli r1, r30, -1920
000cd4  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000cd8  00a00000  mfence { lm }
000cdc  e3800800  loadli.w r1,  0(r17)
000ce0  63c10800  loadli.w r2,  4(r17)
000ce4  63831800  loadli.w r6,  8(r17)
000ce8  e3c31800  loadli.w r7,  12(r17)
000cec  63842800  loadli.w r8,  16(r17)
000cf0  e3c42800  loadli.w r9,  20(r17)
000cf4  63853800  loadli.w r10,  24(r17)
000cf8  e3c73800  loadli.w r15,  28(r17)
000cfc  63884800  loadli.w r16,  32(r17)
000d00  63c94800  loadli.w r18,  36(r17)
000d04  e3895800  loadli.w r19,  40(r17)
000d08  63ca5800  loadli.w r20,  44(r17)
000d0c  e38a6800  loadli.w r21,  48(r17)
000d10  63cb6800  loadli.w r22,  52(r17)
000d14  e38b7800  loadli.w r23,  56(r17)
000d18  e3cd7800  loadli.w r27,  60(r17)
000d1c  8f800000  exp.f.rn r1, r1
000d20  0f010100  exp.f.rn r2, r2
000d24  0f030300  exp.f.rn r6, r6
000d28  8f830300  exp.f.rn r7, r7
000d2c  0f040400  exp.f.rn r8, r8
000d30  8f840400  exp.f.rn r9, r9
000d34  0f050500  exp.f.rn r10, r10
000d38  8f870700  exp.f.rn r15, r15
000d3c  0f080800  exp.f.rn r16, r16
000d40  0f090900  exp.f.rn r18, r18
000d44  8f890900  exp.f.rn r19, r19
000d48  0f0a0a00  exp.f.rn r20, r20
000d4c  8f8a0a00  exp.f.rn r21, r21
000d50  0f0b0b00  exp.f.rn r22, r22
000d54  8f8b0b00  exp.f.rn r23, r23
000d58  8f8d0d00  exp.f.rn r27, r27
000d5c  67801800  storeli.w r1, 0(r17)
000d60  67c02800  storeli.w r2, 4(r17)
000d64  e7806800  storeli.w r6, 8(r17)
000d68  e7c07800  storeli.w r7, 12(r17)
000d6c  67818800  storeli.w r8, 16(r17)
000d70  67c19800  storeli.w r9, 20(r17)
000d74  e781a800  storeli.w r10, 24(r17)
000d78  e7c1f800  storeli.w r15, 28(r17)
000d7c  67820801  storeli.w r16, 32(r17)
000d80  67c22801  storeli.w r18, 36(r17)
000d84  e7823801  storeli.w r19, 40(r17)
000d88  e7c24801  storeli.w r20, 44(r17)
000d8c  67835801  storeli.w r21, 48(r17)
000d90  67c36801  storeli.w r22, 52(r17)
000d94  e7837801  storeli.w r23, 56(r17)
000d98  e7c3b801  storeli.w r27, 60(r17)
000d9c  e3808800  loadli.w r1,  64(r17)
000da0  63c18800  loadli.w r2,  68(r17)
000da4  63839800  loadli.w r6,  72(r17)
000da8  e3c39800  loadli.w r7,  76(r17)
000dac  6384a800  loadli.w r8,  80(r17)
000db0  e3c4a800  loadli.w r9,  84(r17)
000db4  6385b800  loadli.w r10,  88(r17)
000db8  e3c7b800  loadli.w r15,  92(r17)
000dbc  6388c800  loadli.w r16,  96(r17)
000dc0  63c9c800  loadli.w r18,  100(r17)
000dc4  e389d800  loadli.w r19,  104(r17)
000dc8  63cad800  loadli.w r20,  108(r17)
000dcc  e38ae800  loadli.w r21,  112(r17)
000dd0  63cbe800  loadli.w r22,  116(r17)
000dd4  e38bf800  loadli.w r23,  120(r17)
000dd8  e3cdf800  loadli.w r27,  124(r17)
000ddc  8f800000  exp.f.rn r1, r1
000de0  0f010100  exp.f.rn r2, r2
000de4  0f030300  exp.f.rn r6, r6
000de8  8f830300  exp.f.rn r7, r7
000dec  0f040400  exp.f.rn r8, r8
000df0  8f840400  exp.f.rn r9, r9
000df4  0f050500  exp.f.rn r10, r10
000df8  8f870700  exp.f.rn r15, r15
000dfc  0f080800  exp.f.rn r16, r16
000e00  0f090900  exp.f.rn r18, r18
000e04  8f890900  exp.f.rn r19, r19
000e08  0f0a0a00  exp.f.rn r20, r20
000e0c  8f8a0a00  exp.f.rn r21, r21
000e10  0f0b0b00  exp.f.rn r22, r22
000e14  8f8b0b00  exp.f.rn r23, r23
000e18  8f8d0d00  exp.f.rn r27, r27
000e1c  67841800  storeli.w r1, 64(r17)
000e20  67c42800  storeli.w r2, 68(r17)
000e24  e7846800  storeli.w r6, 72(r17)
000e28  e7c47800  storeli.w r7, 76(r17)
000e2c  67858800  storeli.w r8, 80(r17)
000e30  67c59800  storeli.w r9, 84(r17)
000e34  e785a800  storeli.w r10, 88(r17)
000e38  e7c5f800  storeli.w r15, 92(r17)
000e3c  67860801  storeli.w r16, 96(r17)
000e40  67c62801  storeli.w r18, 100(r17)
000e44  e7863801  storeli.w r19, 104(r17)
000e48  e7c64801  storeli.w r20, 108(r17)
000e4c  67875801  storeli.w r21, 112(r17)
000e50  67c76801  storeli.w r22, 116(r17)
000e54  e7877801  storeli.w r23, 120(r17)
000e58  e7c7b801  storeli.w r27, 124(r17)
000e5c  e3800801  loadli.w r1,  128(r17)
000e60  63c10801  loadli.w r2,  132(r17)
000e64  63831801  loadli.w r6,  136(r17)
000e68  e3c31801  loadli.w r7,  140(r17)
000e6c  63842801  loadli.w r8,  144(r17)
000e70  e3c42801  loadli.w r9,  148(r17)
000e74  63853801  loadli.w r10,  152(r17)
000e78  e3c73801  loadli.w r15,  156(r17)
000e7c  63884801  loadli.w r16,  160(r17)
000e80  63c94801  loadli.w r18,  164(r17)
000e84  e3895801  loadli.w r19,  168(r17)
000e88  63ca5801  loadli.w r20,  172(r17)
000e8c  e38a6801  loadli.w r21,  176(r17)
000e90  63cb6801  loadli.w r22,  180(r17)
000e94  e38b7801  loadli.w r23,  184(r17)
000e98  e3cd7801  loadli.w r27,  188(r17)
000e9c  8f800000  exp.f.rn r1, r1
000ea0  0f010100  exp.f.rn r2, r2
000ea4  0f030300  exp.f.rn r6, r6
000ea8  8f830300  exp.f.rn r7, r7
000eac  0f040400  exp.f.rn r8, r8
000eb0  8f840400  exp.f.rn r9, r9
000eb4  0f050500  exp.f.rn r10, r10
000eb8  8f870700  exp.f.rn r15, r15
000ebc  0f080800  exp.f.rn r16, r16
000ec0  0f090900  exp.f.rn r18, r18
000ec4  8f890900  exp.f.rn r19, r19
000ec8  0f0a0a00  exp.f.rn r20, r20
000ecc  8f8a0a00  exp.f.rn r21, r21
000ed0  0f0b0b00  exp.f.rn r22, r22
000ed4  8f8b0b00  exp.f.rn r23, r23
000ed8  8f8d0d00  exp.f.rn r27, r27
000edc  67881800  storeli.w r1, 128(r17)
000ee0  67c82800  storeli.w r2, 132(r17)
000ee4  e7886800  storeli.w r6, 136(r17)
000ee8  e7c87800  storeli.w r7, 140(r17)
000eec  67898800  storeli.w r8, 144(r17)
000ef0  67c99800  storeli.w r9, 148(r17)
000ef4  e789a800  storeli.w r10, 152(r17)
000ef8  e7c9f800  storeli.w r15, 156(r17)
000efc  678a0801  storeli.w r16, 160(r17)
000f00  67ca2801  storeli.w r18, 164(r17)
000f04  e78a3801  storeli.w r19, 168(r17)
000f08  e7ca4801  storeli.w r20, 172(r17)
000f0c  678b5801  storeli.w r21, 176(r17)
000f10  67cb6801  storeli.w r22, 180(r17)
000f14  e78b7801  storeli.w r23, 184(r17)
000f18  e7cbb801  storeli.w r27, 188(r17)
000f1c  e3808801  loadli.w r1,  192(r17)
000f20  63c18801  loadli.w r2,  196(r17)
000f24  63839801  loadli.w r6,  200(r17)
000f28  e3c39801  loadli.w r7,  204(r17)
000f2c  6384a801  loadli.w r8,  208(r17)
000f30  e3c4a801  loadli.w r9,  212(r17)
000f34  6385b801  loadli.w r10,  216(r17)
000f38  e3c7b801  loadli.w r15,  220(r17)
000f3c  6388c801  loadli.w r16,  224(r17)
000f40  63c9c801  loadli.w r18,  228(r17)
000f44  e389d801  loadli.w r19,  232(r17)
000f48  63cad801  loadli.w r20,  236(r17)
000f4c  e38ae801  loadli.w r21,  240(r17)
000f50  63cbe801  loadli.w r22,  244(r17)
000f54  e38bf801  loadli.w r23,  248(r17)
000f58  e3cdf801  loadli.w r27,  252(r17)
000f5c  8f800000  exp.f.rn r1, r1
000f60  0f010100  exp.f.rn r2, r2
000f64  0f030300  exp.f.rn r6, r6
000f68  8f830300  exp.f.rn r7, r7
000f6c  0f040400  exp.f.rn r8, r8
000f70  8f840400  exp.f.rn r9, r9
000f74  0f050500  exp.f.rn r10, r10
000f78  8f870700  exp.f.rn r15, r15
000f7c  0f080800  exp.f.rn r16, r16
000f80  0f090900  exp.f.rn r18, r18
000f84  8f890900  exp.f.rn r19, r19
000f88  0f0a0a00  exp.f.rn r20, r20
000f8c  8f8a0a00  exp.f.rn r21, r21
000f90  0f0b0b00  exp.f.rn r22, r22
000f94  8f8b0b00  exp.f.rn r23, r23
000f98  8f8d0d00  exp.f.rn r27, r27
000f9c  678c1800  storeli.w r1, 192(r17)
000fa0  67cc2800  storeli.w r2, 196(r17)
000fa4  e78c6800  storeli.w r6, 200(r17)
000fa8  e7cc7800  storeli.w r7, 204(r17)
000fac  678d8800  storeli.w r8, 208(r17)
000fb0  67cd9800  storeli.w r9, 212(r17)
000fb4  e78da800  storeli.w r10, 216(r17)
000fb8  e7cdf800  storeli.w r15, 220(r17)
000fbc  678e0801  storeli.w r16, 224(r17)
000fc0  67ce2801  storeli.w r18, 228(r17)
000fc4  e78e3801  storeli.w r19, 232(r17)
000fc8  e7ce4801  storeli.w r20, 236(r17)
000fcc  678f5801  storeli.w r21, 240(r17)
000fd0  67cf6801  storeli.w r22, 244(r17)
000fd4  e78f7801  storeli.w r23, 248(r17)
000fd8  e7cfb801  storeli.w r27, 252(r17)
000fdc  00a00000  mfence { lm }
000fe0  92141702  vadd.f.mz.rn vr9{mr1}, r14, vr1
000fe4  c2120fe2  vload_mask16.mz vr5{mr1}, 1792(r30)
000fe8  9f000ff4  addli r1, r30, -1536
000fec  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
000ff0  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
000ff4  9f000ff2  addli r1, r30, -1792
000ff8  c2138fe2  vload_mask16.mz vr7{mr1}, 1856(r30)
000ffc  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
001000  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
001004  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
001008  46109fe2  vstore_mask16.mz vr9{mr1}, 1792(r30)
00100c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001010  9f008ff1  addli r1, r30, -1856
001014  92141702  vadd.f.mz.rn vr9{mr1}, r14, vr1
001018  46149fe2  vstore_mask16.mz vr9{mr1}, 1856(r30)
00101c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001020  92141702  vadd.f.mz.rn vr9{mr1}, r14, vr1
001024  46189fe2  vstore_mask16.mz vr9{mr1}, 1920(r30)
001028  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
00102c  92142702  vadd.f.mz.rn vr9{mr1}, r14, vr2
001030  461c9fe2  vstore_mask16.mz vr9{mr1}, 1984(r30)
001034  00a00000  mfence { lm }
001038  e3800800  loadli.w r1,  0(r17)
00103c  63c10800  loadli.w r2,  4(r17)
001040  63831800  loadli.w r6,  8(r17)
001044  e3c31800  loadli.w r7,  12(r17)
001048  63842800  loadli.w r8,  16(r17)
00104c  e3c42800  loadli.w r9,  20(r17)
001050  63853800  loadli.w r10,  24(r17)
001054  63c73800  loadli.w r14,  28(r17)
001058  e3874800  loadli.w r15,  32(r17)
00105c  63c84800  loadli.w r16,  36(r17)
001060  63895800  loadli.w r18,  40(r17)
001064  e3c95800  loadli.w r19,  44(r17)
001068  638a6800  loadli.w r20,  48(r17)
00106c  e3ca6800  loadli.w r21,  52(r17)
001070  638b7800  loadli.w r22,  56(r17)
001074  e3cb7800  loadli.w r23,  60(r17)
001078  8f800000  exp.f.rn r1, r1
00107c  0f010100  exp.f.rn r2, r2
001080  0f030300  exp.f.rn r6, r6
001084  8f830300  exp.f.rn r7, r7
001088  0f040400  exp.f.rn r8, r8
00108c  8f840400  exp.f.rn r9, r9
001090  0f050500  exp.f.rn r10, r10
001094  0f070700  exp.f.rn r14, r14
001098  8f870700  exp.f.rn r15, r15
00109c  0f080800  exp.f.rn r16, r16
0010a0  0f090900  exp.f.rn r18, r18
0010a4  8f890900  exp.f.rn r19, r19
0010a8  0f0a0a00  exp.f.rn r20, r20
0010ac  8f8a0a00  exp.f.rn r21, r21
0010b0  0f0b0b00  exp.f.rn r22, r22
0010b4  8f8b0b00  exp.f.rn r23, r23
0010b8  67801800  storeli.w r1, 0(r17)
0010bc  67c02800  storeli.w r2, 4(r17)
0010c0  e7806800  storeli.w r6, 8(r17)
0010c4  e7c07800  storeli.w r7, 12(r17)
0010c8  67818800  storeli.w r8, 16(r17)
0010cc  67c19800  storeli.w r9, 20(r17)
0010d0  e781a800  storeli.w r10, 24(r17)
0010d4  e7c1e800  storeli.w r14, 28(r17)
0010d8  6782f800  storeli.w r15, 32(r17)
0010dc  67c20801  storeli.w r16, 36(r17)
0010e0  e7822801  storeli.w r18, 40(r17)
0010e4  e7c23801  storeli.w r19, 44(r17)
0010e8  67834801  storeli.w r20, 48(r17)
0010ec  67c35801  storeli.w r21, 52(r17)
0010f0  e7836801  storeli.w r22, 56(r17)
0010f4  e7c37801  storeli.w r23, 60(r17)
0010f8  e3808800  loadli.w r1,  64(r17)
0010fc  63c18800  loadli.w r2,  68(r17)
001100  63839800  loadli.w r6,  72(r17)
001104  e3c39800  loadli.w r7,  76(r17)
001108  6384a800  loadli.w r8,  80(r17)
00110c  e3c4a800  loadli.w r9,  84(r17)
001110  6385b800  loadli.w r10,  88(r17)
001114  63c7b800  loadli.w r14,  92(r17)
001118  e387c800  loadli.w r15,  96(r17)
00111c  63c8c800  loadli.w r16,  100(r17)
001120  6389d800  loadli.w r18,  104(r17)
001124  e3c9d800  loadli.w r19,  108(r17)
001128  638ae800  loadli.w r20,  112(r17)
00112c  e3cae800  loadli.w r21,  116(r17)
001130  638bf800  loadli.w r22,  120(r17)
001134  e3cbf800  loadli.w r23,  124(r17)
001138  8f800000  exp.f.rn r1, r1
00113c  0f010100  exp.f.rn r2, r2
001140  0f030300  exp.f.rn r6, r6
001144  8f830300  exp.f.rn r7, r7
001148  0f040400  exp.f.rn r8, r8
00114c  8f840400  exp.f.rn r9, r9
001150  0f050500  exp.f.rn r10, r10
001154  0f070700  exp.f.rn r14, r14
001158  8f870700  exp.f.rn r15, r15
00115c  0f080800  exp.f.rn r16, r16
001160  0f090900  exp.f.rn r18, r18
001164  8f890900  exp.f.rn r19, r19
001168  0f0a0a00  exp.f.rn r20, r20
00116c  8f8a0a00  exp.f.rn r21, r21
001170  0f0b0b00  exp.f.rn r22, r22
001174  8f8b0b00  exp.f.rn r23, r23
001178  67841800  storeli.w r1, 64(r17)
00117c  67c42800  storeli.w r2, 68(r17)
001180  e7846800  storeli.w r6, 72(r17)
001184  e7c47800  storeli.w r7, 76(r17)
001188  67858800  storeli.w r8, 80(r17)
00118c  67c59800  storeli.w r9, 84(r17)
001190  e785a800  storeli.w r10, 88(r17)
001194  e7c5e800  storeli.w r14, 92(r17)
001198  6786f800  storeli.w r15, 96(r17)
00119c  67c60801  storeli.w r16, 100(r17)
0011a0  e7862801  storeli.w r18, 104(r17)
0011a4  e7c63801  storeli.w r19, 108(r17)
0011a8  67874801  storeli.w r20, 112(r17)
0011ac  67c75801  storeli.w r21, 116(r17)
0011b0  e7876801  storeli.w r22, 120(r17)
0011b4  e7c77801  storeli.w r23, 124(r17)
0011b8  e3800801  loadli.w r1,  128(r17)
0011bc  63c10801  loadli.w r2,  132(r17)
0011c0  63831801  loadli.w r6,  136(r17)
0011c4  e3c31801  loadli.w r7,  140(r17)
0011c8  63842801  loadli.w r8,  144(r17)
0011cc  e3c42801  loadli.w r9,  148(r17)
0011d0  63853801  loadli.w r10,  152(r17)
0011d4  63c73801  loadli.w r14,  156(r17)
0011d8  e3874801  loadli.w r15,  160(r17)
0011dc  63c84801  loadli.w r16,  164(r17)
0011e0  63895801  loadli.w r18,  168(r17)
0011e4  e3c95801  loadli.w r19,  172(r17)
0011e8  638a6801  loadli.w r20,  176(r17)
0011ec  e3ca6801  loadli.w r21,  180(r17)
0011f0  638b7801  loadli.w r22,  184(r17)
0011f4  e3cb7801  loadli.w r23,  188(r17)
0011f8  8f800000  exp.f.rn r1, r1
0011fc  0f010100  exp.f.rn r2, r2
001200  0f030300  exp.f.rn r6, r6
001204  8f830300  exp.f.rn r7, r7
001208  0f040400  exp.f.rn r8, r8
00120c  8f840400  exp.f.rn r9, r9
001210  0f050500  exp.f.rn r10, r10
001214  0f070700  exp.f.rn r14, r14
001218  8f870700  exp.f.rn r15, r15
00121c  0f080800  exp.f.rn r16, r16
001220  0f090900  exp.f.rn r18, r18
001224  8f890900  exp.f.rn r19, r19
001228  0f0a0a00  exp.f.rn r20, r20
00122c  8f8a0a00  exp.f.rn r21, r21
001230  0f0b0b00  exp.f.rn r22, r22
001234  8f8b0b00  exp.f.rn r23, r23
001238  67881800  storeli.w r1, 128(r17)
00123c  67c82800  storeli.w r2, 132(r17)
001240  e7886800  storeli.w r6, 136(r17)
001244  e7c87800  storeli.w r7, 140(r17)
001248  67898800  storeli.w r8, 144(r17)
00124c  67c99800  storeli.w r9, 148(r17)
001250  e789a800  storeli.w r10, 152(r17)
001254  e7c9e800  storeli.w r14, 156(r17)
001258  678af800  storeli.w r15, 160(r17)
00125c  67ca0801  storeli.w r16, 164(r17)
001260  e78a2801  storeli.w r18, 168(r17)
001264  e7ca3801  storeli.w r19, 172(r17)
001268  678b4801  storeli.w r20, 176(r17)
00126c  67cb5801  storeli.w r21, 180(r17)
001270  e78b6801  storeli.w r22, 184(r17)
001274  e7cb7801  storeli.w r23, 188(r17)
001278  e3808801  loadli.w r1,  192(r17)
00127c  63c18801  loadli.w r2,  196(r17)
001280  63839801  loadli.w r6,  200(r17)
001284  e3c39801  loadli.w r7,  204(r17)
001288  6384a801  loadli.w r8,  208(r17)
00128c  e3c4a801  loadli.w r9,  212(r17)
001290  6385b801  loadli.w r10,  216(r17)
001294  63c7b801  loadli.w r14,  220(r17)
001298  e387c801  loadli.w r15,  224(r17)
00129c  63c8c801  loadli.w r16,  228(r17)
0012a0  6389d801  loadli.w r18,  232(r17)
0012a4  e3c9d801  loadli.w r19,  236(r17)
0012a8  638ae801  loadli.w r20,  240(r17)
0012ac  e3cae801  loadli.w r21,  244(r17)
0012b0  638bf801  loadli.w r22,  248(r17)
0012b4  e3cbf801  loadli.w r23,  252(r17)
0012b8  8f800000  exp.f.rn r1, r1
0012bc  0f010100  exp.f.rn r2, r2
0012c0  0f030300  exp.f.rn r6, r6
0012c4  8f830300  exp.f.rn r7, r7
0012c8  0f040400  exp.f.rn r8, r8
0012cc  8f840400  exp.f.rn r9, r9
0012d0  0f050500  exp.f.rn r10, r10
0012d4  0f070700  exp.f.rn r14, r14
0012d8  8f870700  exp.f.rn r15, r15
0012dc  0f080800  exp.f.rn r16, r16
0012e0  0f090900  exp.f.rn r18, r18
0012e4  8f890900  exp.f.rn r19, r19
0012e8  0f0a0a00  exp.f.rn r20, r20
0012ec  8f8a0a00  exp.f.rn r21, r21
0012f0  0f0b0b00  exp.f.rn r22, r22
0012f4  8f8b0b00  exp.f.rn r23, r23
0012f8  678c1800  storeli.w r1, 192(r17)
0012fc  67cc2800  storeli.w r2, 196(r17)
001300  e78c6800  storeli.w r6, 200(r17)
001304  e7cc7800  storeli.w r7, 204(r17)
001308  678d8800  storeli.w r8, 208(r17)
00130c  67cd9800  storeli.w r9, 212(r17)
001310  e78da800  storeli.w r10, 216(r17)
001314  e7cde800  storeli.w r14, 220(r17)
001318  678ef800  storeli.w r15, 224(r17)
00131c  67ce0801  storeli.w r16, 228(r17)
001320  e78e2801  storeli.w r18, 232(r17)
001324  e7ce3801  storeli.w r19, 236(r17)
001328  678f4801  storeli.w r20, 240(r17)
00132c  67cf5801  storeli.w r21, 244(r17)
001330  e78f6801  storeli.w r22, 248(r17)
001334  e7cf7801  storeli.w r23, 252(r17)
001338  00a00000  mfence { lm }
00133c  c2140fe2  vload_mask16.mz vr9{mr1}, 1792(r30)
001340  42158fe2  vload_mask16.mz vr10{mr1}, 1856(r30)
001344  c2150fe3  vload_mask16.mz vr11{mr1}, 1920(r30)
001348  9f000002  addli r1, zero, 256
00134c  1f880600  addli r16, r13, 0
001350  9f070002  addli r15, zero, 256
001354  9f040001  addli r9, zero, 128
001358  1f058000  addli r10, zero, 64
00135c  9f064000  addli r13, zero, 32
001360  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
001364  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
001368  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
00136c  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
001370  1610a002  vadd.f.mz.rn vr0{mr1}, vr0, vr10
001374  9610b002  vadd.f.mz.rn vr1{mr1}, vr0, vr11
001378  42108fe3  vload_mask16.mz vr0{mr1}, 1984(r30)
00137c  63017fee  loadli.w r2,  -2248(r30)
001380  96900002  vadd.f.mz.rn vr1{mr1}, vr1, vr0
001384  6af110c0  vsrl.p vr2, r1, vr1
001388  9f000001  addli r1, zero, 128
00138c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001390  6af110c0  vsrl.p vr2, r1, vr1
001394  9f008000  addli r1, zero, 64
001398  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00139c  6af110c0  vsrl.p vr2, r1, vr1
0013a0  9f004000  addli r1, zero, 32
0013a4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0013a8  6af110c0  vsrl.p vr2, r1, vr1
0013ac  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0013b0  fa900040  vextracti.f r1, 0(vr1)
0013b4  73601100  stores.w r1, 0(r2)
0013b8  00a00300  mfence { lm, sm, gm }
0013bc  80a10504  csr_set csr3, r11
0013c0  00d00100  sync_group
0013c4  bb100800  bneq r16, zero, 36
0013c8  ef400d00  loads.w r1, 0(r26)
0013cc  6f414d00  loads.w r2, 4(r26)
0013d0  6f438d00  loads.w r6, 8(r26)
0013d4  8be02010  add.f.rn r1, r1, r2
0013d8  6f41cd00  loads.w r2, 12(r26)
0013dc  8be06010  add.f.rn r1, r1, r6
0013e0  8be02010  add.f.rn r1, r1, r2
0013e4  73601d00  stores.w r1, 0(r26)
0013e8  00a00300  mfence { lm, sm, gm }
0013ec  80a10504  csr_set csr3, r11
0013f0  00d00100  sync_group
0013f4  ef400d00  loads.w r1, 0(r26)
0013f8  2b01803f  lui r2, 260096
0013fc  1f240000  addli r8, zero, 2
001400  0f071118  div.f.rn r14, r2, r1
001404  9f008ff3  addli r1, r30, -1600
001408  0a100702  vmul.f.mz.rn vr0{mr1}, r14, vr0
00140c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001410  9f000ff6  addli r1, r30, -1280
001414  0a111702  vmul.f.mz.rn vr2{mr1}, r14, vr1
001418  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
00141c  9f008ff4  addli r1, r30, -1472
001420  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001424  9f008ff6  addli r1, r30, -1216
001428  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
00142c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
001430  9f000ff5  addli r1, r30, -1408
001434  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001438  9f000ff7  addli r1, r30, -1152
00143c  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
001440  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
001444  9f008ff5  addli r1, r30, -1344
001448  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00144c  9f008ff7  addli r1, r30, -1088
001450  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
001454  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
001458  8a106702  vmul.f.mz.rn vr1{mr1}, r14, vr6
00145c  9f000ff3  addli r1, r30, -1664
001460  46101f82  vstore_mask16.mz vr1{mr1}, 1024(r30)
001464  8a108702  vmul.f.mz.rn vr1{mr1}, r14, vr8
001468  46141f82  vstore_mask16.mz vr1{mr1}, 1088(r30)
00146c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001470  9f000ff4  addli r1, r30, -1536
001474  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
001478  46181f82  vstore_mask16.mz vr1{mr1}, 1152(r30)
00147c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001480  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
001484  461c1f82  vstore_mask16.mz vr1{mr1}, 1216(r30)
001488  8a105702  vmul.f.mz.rn vr1{mr1}, r14, vr5
00148c  46101fa2  vstore_mask16.mz vr1{mr1}, 1280(r30)
001490  8a107702  vmul.f.mz.rn vr1{mr1}, r14, vr7
001494  46141fa2  vstore_mask16.mz vr1{mr1}, 1344(r30)
001498  8a104702  vmul.f.mz.rn vr1{mr1}, r14, vr4
00149c  46181fa2  vstore_mask16.mz vr1{mr1}, 1408(r30)
0014a0  8a103702  vmul.f.mz.rn vr1{mr1}, r14, vr3
0014a4  461c1fa2  vstore_mask16.mz vr1{mr1}, 1472(r30)
0014a8  8a109702  vmul.f.mz.rn vr1{mr1}, r14, vr9
0014ac  46101fc2  vstore_mask16.mz vr1{mr1}, 1536(r30)
0014b0  8a10a702  vmul.f.mz.rn vr1{mr1}, r14, vr10
0014b4  46141fc2  vstore_mask16.mz vr1{mr1}, 1600(r30)
0014b8  8a10b702  vmul.f.mz.rn vr1{mr1}, r14, vr11
0014bc  46181fc2  vstore_mask16.mz vr1{mr1}, 1664(r30)
0014c0  461c0fc2  vstore_mask16.mz vr0{mr1}, 1728(r30)
0014c4  00a00000  mfence { lm }
0014c8  e3008f00  loadli.w r1,  64(r30)
0014cc  63471fee  loadli.w r14,  -2292(r30)
0014d0  3f3716f6  blt.s r12, r1, -4660
0014d4  1f070000  addli r14, zero, 0
0014d8  dbb8fdff  j -4668
0014dc  9f0e0fee  addli sp, r30, -2304
0014e0  9f8e0e12  addli sp, sp, 2304
0014e4  00a00300  mfence { lm, sm, gm }
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
0016fc  00100000  exit
001700  00100000  exit
001704  00100000  exit
001708  00100000  exit
00170c  00100000  exit
001710  00100000  exit
001714  00100000  exit
001718  00100000  exit
00171c  00100000  exit
001720  00100000  exit
001724  00100000  exit
001728  00100000  exit
