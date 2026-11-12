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
0001c8  cb6a5208  ble.s r4, r5, 4792
0001cc  9b883100  andi r17, r3, 3
0001d0  e3451f00  loadli.w r11,  12(r30)
0001d4  00d30002  load_param_i r6, 1
0001d8  9bc12100  srli r3, r3, 2
0001dc  eb548f01  load.d r[10:11], 24(r30)
0001e0  63428f00  loadli.w r4,  68(r30)
0001e4  eb530f05  load.d r[8:9], 80(r30)
0001e8  1bb68800  slli r12, r17, 8
0001ec  67036fee  storeli.w r6, -2256(r30)
0001f0  1b8af100  andi r20, r3, 15
0001f4  1f030002  addli r6, zero, 256
0001f8  8b95c518  sub.s r11, r11, r12
0001fc  b3060628  zext_int2long r[14:15], r12
000200  b3070a28  zext_int2long r[16:17], r20
000204  8b910548  max.s r3, r11, zero
000208  8bb4d420  mul.sl r[10:11], r[10:11], r[14:15]
00020c  9f055fee  addli r11, r30, -2264
000210  8bbdd320  mul.sl r[28:29], r[8:9], r[14:15]
000214  9f030ff6  addli r7, r30, -1280
000218  1f040001  addli r8, zero, 128
00021c  9f060ffe  addli r13, r30, -256
000220  8b916140  min.s r3, r3, r6
000224  73b09500  store.d r[10:11], 0(r11)
000228  9bb4a800  slli r9, r17, 10
00022c  1f054000  addli r10, zero, 32
000230  9bbb2100  slli r23, r3, 2
000234  abf1ffff  lui r3, 1048575
000238  8b949010  add.s r9, r1, r9
00023c  9b9101ff  ori r3, r3, 4080
000240  17013100  and r2, r2, r3
000244  abf10300  lui r3, 63
000248  8b902010  add.s r1, r1, r2
00024c  0b9c3410  add.s r24, r9, r3
000250  2b610000  lui r2, 6
000254  8b11c218  sub.s r3, r4, r12
000258  9f048000  addli r9, zero, 64
00025c  1b110101  ori r2, r2, 16
000260  8b910148  max.s r3, r3, zero
000264  9f8c0040  addli r25, r1, 8192
000268  0b9d2010  add.s r26, r1, r2
00026c  8b906140  min.s r1, r3, r6
000270  abf10000  lui r3, 15
000274  1f210000  addli r2, zero, 2
000278  9bb02000  slli r1, r1, 2
00027c  9b95f1ff  ori r11, r3, 4095
000280  5b080000  j 64
000284  eb5a8f04  load.d r[22:23], 72(r30)
000288  2b0300f0  lui r6, 983040
00028c  17136700  or r6, r14, r6
000290  8bb15121  mul.sl r[4:5], r[4:5], r[22:23]
000294  eb5a8f03  load.d r[22:23], 56(r30)
000298  8ba1b111  add.ul r[4:5], r[4:5], r[28:29]
00029c  97b12102  sll.d r[4:5], r[4:5], r2
0002a0  8ba13a10  add.ul r[4:5], r[22:23], r[4:5]
0002a4  7fb37100  s_lm2gm r6, r7, 0(r[4:5])
0002a8  e3016fee  loadli.w r3,  -2256(r30)
0002ac  00a00000  mfence { lm }
0002b0  8b923210  add.s r5, r5, r3
0002b4  e3417fee  loadli.w r3,  -2244(r30)
0002b8  3fa03200  blt.s r5, r3, 8
0002bc  db380200  j 4548
0002c0  e341cf00  loadli.w r3,  100(r30)
0002c4  6302cf00  loadli.w r4,  96(r30)
0002c8  1f870b00  addli r14, r23, 0
0002cc  8b913230  div.s r3, r5, r3
0002d0  8b914130  div.s r3, r3, r4
0002d4  63021f00  loadli.w r4,  8(r30)
0002d8  9bb14100  slli r3, r3, 4
0002dc  17964101  or r12, r3, r20
0002e0  3f204600  blt.s r12, r4, 8
0002e4  1f070000  addli r14, zero, 0
0002e8  b3910128  sext_int2long r[4:5], r3
0002ec  1f035fee  addli r6, r30, -2264
0002f0  eb5a0f01  load.d r[22:23], 16(r30)
0002f4  9791f102  or.d r[4:5], r[4:5], r[16:17]
0002f8  6b590300  load.d r[19:20], 0(r6)
0002fc  2b0300f0  lui r6, 983040
000300  8bba5121  mul.sl r[22:23], r[4:5], r[22:23]
000304  17136700  or r6, r14, r6
000308  8baa2a11  add.ul r[22:23], r[22:23], r[19:20]
00030c  6b590f00  load.d r[19:20], 0(r30)
000310  97ba2a02  sll.d r[22:23], r[22:23], r2
000314  8b2a5911  add.ul r[22:23], r[19:20], r[22:23]
000318  9f090002  addli r19, zero, 256
00031c  7fa37a00  l_gm2lm r6, r7, 0(r[22:23])
000320  1f030ff6  addli r6, r30, -1280
000324  00a00000  mfence { lm }
000328  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
00032c  1f038ff6  addli r6, r30, -1216
000330  ca110c02  vloads_mask16.mz vr3{mr1}, 0(r24)
000334  ca128c02  vloads_mask16.mz vr5{mr1}, 64(r24)
000338  ca130c03  vloads_mask16.mz vr7{mr1}, 128(r24)
00033c  42140302  vload_mask16.mz vr8{mr1}, 0(r6)
000340  1f030ff7  addli r6, r30, -1152
000344  4a128c03  vloads_mask16.mz vr4{mr1}, 192(r24)
000348  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
00034c  1f038ff7  addli r6, r30, -1088
000350  4a100c22  vloads_mask16.mz vr0{mr1}, 256(r24)
000354  c2150302  vload_mask16.mz vr11{mr1}, 0(r6)
000358  ca108c22  vloads_mask16.mz vr1{mr1}, 320(r24)
00035c  c2140f82  vload_mask16.mz vr9{mr1}, 1024(r30)
000360  4a110c23  vloads_mask16.mz vr2{mr1}, 384(r24)
000364  1f030ff3  addli r6, r30, -1664
000368  16900402  vadd.f.mz.rn vr0{mr1}, vr9, vr0
00036c  46102302  vstore_mask16.mz vr2{mr1}, 0(r6)
000370  16113302  vadd.f.mz.rn vr2{mr1}, vr6, vr3
000374  1f038ff2  addli r6, r30, -1728
000378  96117502  vadd.f.mz.rn vr3{mr1}, vr10, vr7
00037c  46102302  vstore_mask16.mz vr2{mr1}, 0(r6)
000380  16115402  vadd.f.mz.rn vr2{mr1}, vr8, vr5
000384  1f030ff5  addli r6, r30, -1408
000388  42138f82  vload_mask16.mz vr6{mr1}, 1088(r30)
00038c  ca130c42  vloads_mask16.mz vr7{mr1}, 512(r24)
000390  46102302  vstore_mask16.mz vr2{mr1}, 0(r6)
000394  1f038ff4  addli r6, r30, -1472
000398  4a118c23  vloads_mask16.mz vr2{mr1}, 448(r24)
00039c  46103302  vstore_mask16.mz vr3{mr1}, 0(r6)
0003a0  96914502  vadd.f.mz.rn vr3{mr1}, vr11, vr4
0003a4  1f030ff4  addli r6, r30, -1536
0003a8  46103302  vstore_mask16.mz vr3{mr1}, 0(r6)
0003ac  1f038ff3  addli r6, r30, -1600
0003b0  42120f83  vload_mask16.mz vr4{mr1}, 1152(r30)
0003b4  ca148c42  vloads_mask16.mz vr9{mr1}, 576(r24)
0003b8  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
0003bc  16101302  vadd.f.mz.rn vr0{mr1}, vr6, vr1
0003c0  1f038ff5  addli r6, r30, -1344
0003c4  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
0003c8  1f030ff3  addli r6, r30, -1664
0003cc  42138f83  vload_mask16.mz vr6{mr1}, 1216(r30)
0003d0  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
0003d4  16142302  vadd.f.mz.rn vr8{mr1}, vr6, vr2
0003d8  96110202  vadd.f.mz.rn vr3{mr1}, vr4, vr0
0003dc  42120fa2  vload_mask16.mz vr4{mr1}, 1280(r30)
0003e0  4a100c43  vloads_mask16.mz vr0{mr1}, 640(r24)
0003e4  ca108c43  vloads_mask16.mz vr1{mr1}, 704(r24)
0003e8  ca120c62  vloads_mask16.mz vr5{mr1}, 768(r24)
0003ec  16117202  vadd.f.mz.rn vr2{mr1}, vr4, vr7
0003f0  46102302  vstore_mask16.mz vr2{mr1}, 0(r6)
0003f4  1f030ff2  addli r6, r30, -1792
0003f8  42128fa2  vload_mask16.mz vr4{mr1}, 1344(r30)
0003fc  4a118c63  vloads_mask16.mz vr2{mr1}, 960(r24)
000400  4a138c62  vloads_mask16.mz vr6{mr1}, 832(r24)
000404  ca150c63  vloads_mask16.mz vr11{mr1}, 896(r24)
000408  96139202  vadd.f.mz.rn vr7{mr1}, vr4, vr9
00040c  46102302  vstore_mask16.mz vr2{mr1}, 0(r6)
000410  42120fa3  vload_mask16.mz vr4{mr1}, 1408(r30)
000414  c2148fa3  vload_mask16.mz vr9{mr1}, 1472(r30)
000418  42150fc2  vload_mask16.mz vr10{mr1}, 1536(r30)
00041c  16110202  vadd.f.mz.rn vr2{mr1}, vr4, vr0
000420  42108fc2  vload_mask16.mz vr0{mr1}, 1600(r30)
000424  16921402  vadd.f.mz.rn vr4{mr1}, vr9, vr1
000428  c2100fc3  vload_mask16.mz vr1{mr1}, 1664(r30)
00042c  96145502  vadd.f.mz.rn vr9{mr1}, vr10, vr5
000430  42158fc3  vload_mask16.mz vr10{mr1}, 1728(r30)
000434  63476fee  loadli.w r14,  -2252(r30)
000438  16136002  vadd.f.mz.rn vr6{mr1}, vr0, vr6
00043c  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
000440  1f030ff3  addli r6, r30, -1664
000444  9690b002  vadd.f.mz.rn vr1{mr1}, vr1, vr11
000448  c2120302  vload_mask16.mz vr5{mr1}, 0(r6)
00044c  1f030ff5  addli r6, r30, -1408
000450  96150502  vadd.f.mz.rn vr11{mr1}, vr10, vr0
000454  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
000458  1f038ff2  addli r6, r30, -1728
00045c  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
000460  1f038ff4  addli r6, r30, -1472
000464  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
000468  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
00046c  1f030ff4  addli r6, r30, -1536
000470  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
000474  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
000478  1f038ff3  addli r6, r30, -1600
00047c  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
000480  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
000484  1f038ff5  addli r6, r30, -1344
000488  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
00048c  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
000490  1f038fef  addli r6, r30, -2112
000494  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
000498  36103002  vmax.f.mz vr0{mr1}, vr0, vr3
00049c  46103302  vstore_mask16.mz vr3{mr1}, 0(r6)
0004a0  1f038fee  addli r6, r30, -2240
0004a4  36108002  vmax.f.mz vr0{mr1}, vr0, vr8
0004a8  36105002  vmax.f.mz vr0{mr1}, vr0, vr5
0004ac  46108302  vstore_mask16.mz vr8{mr1}, 0(r6)
0004b0  1f030fef  addli r6, r30, -2176
0004b4  36107002  vmax.f.mz vr0{mr1}, vr0, vr7
0004b8  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
0004bc  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
0004c0  1f030ff0  addli r6, r30, -2048
0004c4  36104002  vmax.f.mz vr0{mr1}, vr0, vr4
0004c8  36109002  vmax.f.mz vr0{mr1}, vr0, vr9
0004cc  46102302  vstore_mask16.mz vr2{mr1}, 0(r6)
0004d0  1f038ff0  addli r6, r30, -1984
0004d4  36106002  vmax.f.mz vr0{mr1}, vr0, vr6
0004d8  1231b002  vadd.s.mz vr2{mr1}, zero, vr11
0004dc  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0004e0  46104302  vstore_mask16.mz vr4{mr1}, 0(r6)
0004e4  1f030ff1  addli r6, r30, -1920
0004e8  3610b002  vmax.f.mz vr0{mr1}, vr0, vr11
0004ec  46109302  vstore_mask16.mz vr9{mr1}, 0(r6)
0004f0  1f030ff2  addli r6, r30, -1792
0004f4  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
0004f8  1f038ff1  addli r6, r30, -1856
0004fc  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
000500  eaf009c0  vsrl.p vr1, r19, vr0
000504  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000508  ea7004c0  vsrl.p vr1, r8, vr0
00050c  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000510  eaf004c0  vsrl.p vr1, r9, vr0
000514  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000518  ea7005c0  vsrl.p vr1, r10, vr0
00051c  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000520  7a130040  vextracti.f r6, 0(vr0)
000524  73606700  stores.w r6, 0(r14)
000528  00a00300  mfence { lm, sm, gm }
00052c  80a10504  csr_set csr3, r11
000530  00d00100  sync_group
000534  bb900800  bneq r17, zero, 36
000538  6fc30c00  loads.w r6, 0(r25)
00053c  6fc74c00  loads.w r14, 4(r25)
000540  efca8c00  loads.w r21, 8(r25)
000544  6fcbcc00  loads.w r22, 12(r25)
000548  0b63e348  max.f r6, r6, r14
00054c  0b635349  max.f r6, r6, r21
000550  0b636349  max.f r6, r6, r22
000554  73e06c00  stores.w r6, 0(r25)
000558  00a00300  mfence { lm, sm, gm }
00055c  80a10504  csr_set csr3, r11
000560  00d00100  sync_group
000564  6fc30c00  loads.w r6, 0(r25)
000568  2b070080  lui r14, 524288
00056c  1727e300  xor r14, r6, r14
000570  1f038ff2  addli r6, r30, -1728
000574  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
000578  1f030ff5  addli r6, r30, -1408
00057c  92110702  vadd.f.mz.rn vr3{mr1}, r14, vr0
000580  46103fe2  vstore_mask16.mz vr3{mr1}, 1792(r30)
000584  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
000588  1f038ff4  addli r6, r30, -1472
00058c  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
000590  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
000594  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
000598  1f030ff4  addli r6, r30, -1536
00059c  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
0005a0  46180fe2  vstore_mask16.mz vr0{mr1}, 1920(r30)
0005a4  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
0005a8  1f038ff3  addli r6, r30, -1600
0005ac  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
0005b0  461c0fe2  vstore_mask16.mz vr0{mr1}, 1984(r30)
0005b4  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
0005b8  00a00000  mfence { lm }
0005bc  63830600  loadli.w r6,  0(r13)
0005c0  e3ca0600  loadli.w r21,  4(r13)
0005c4  638b1600  loadli.w r22,  8(r13)
0005c8  63c91600  loadli.w r18,  12(r13)
0005cc  0f030300  exp.f.rn r6, r6
0005d0  8f8a0a00  exp.f.rn r21, r21
0005d4  0f0b0b00  exp.f.rn r22, r22
0005d8  0f090900  exp.f.rn r18, r18
0005dc  67806600  storeli.w r6, 0(r13)
0005e0  67c05601  storeli.w r21, 4(r13)
0005e4  e7806601  storeli.w r22, 8(r13)
0005e8  e7c02601  storeli.w r18, 12(r13)
0005ec  63832600  loadli.w r6,  16(r13)
0005f0  e3ca2600  loadli.w r21,  20(r13)
0005f4  638b3600  loadli.w r22,  24(r13)
0005f8  63c93600  loadli.w r18,  28(r13)
0005fc  0f030300  exp.f.rn r6, r6
000600  8f8a0a00  exp.f.rn r21, r21
000604  0f0b0b00  exp.f.rn r22, r22
000608  0f090900  exp.f.rn r18, r18
00060c  67816600  storeli.w r6, 16(r13)
000610  67c15601  storeli.w r21, 20(r13)
000614  e7816601  storeli.w r22, 24(r13)
000618  e7c12601  storeli.w r18, 28(r13)
00061c  63834600  loadli.w r6,  32(r13)
000620  e3ca4600  loadli.w r21,  36(r13)
000624  638b5600  loadli.w r22,  40(r13)
000628  63c95600  loadli.w r18,  44(r13)
00062c  0f030300  exp.f.rn r6, r6
000630  8f8a0a00  exp.f.rn r21, r21
000634  0f0b0b00  exp.f.rn r22, r22
000638  0f090900  exp.f.rn r18, r18
00063c  67826600  storeli.w r6, 32(r13)
000640  67c25601  storeli.w r21, 36(r13)
000644  e7826601  storeli.w r22, 40(r13)
000648  e7c22601  storeli.w r18, 44(r13)
00064c  63836600  loadli.w r6,  48(r13)
000650  e3ca6600  loadli.w r21,  52(r13)
000654  638b7600  loadli.w r22,  56(r13)
000658  63c97600  loadli.w r18,  60(r13)
00065c  0f030300  exp.f.rn r6, r6
000660  8f8a0a00  exp.f.rn r21, r21
000664  0f0b0b00  exp.f.rn r22, r22
000668  0f090900  exp.f.rn r18, r18
00066c  67836600  storeli.w r6, 48(r13)
000670  67c35601  storeli.w r21, 52(r13)
000674  e7836601  storeli.w r22, 56(r13)
000678  e7c32601  storeli.w r18, 60(r13)
00067c  63838600  loadli.w r6,  64(r13)
000680  e3ca8600  loadli.w r21,  68(r13)
000684  638b9600  loadli.w r22,  72(r13)
000688  63c99600  loadli.w r18,  76(r13)
00068c  0f030300  exp.f.rn r6, r6
000690  8f8a0a00  exp.f.rn r21, r21
000694  0f0b0b00  exp.f.rn r22, r22
000698  0f090900  exp.f.rn r18, r18
00069c  67846600  storeli.w r6, 64(r13)
0006a0  67c45601  storeli.w r21, 68(r13)
0006a4  e7846601  storeli.w r22, 72(r13)
0006a8  e7c42601  storeli.w r18, 76(r13)
0006ac  6383a600  loadli.w r6,  80(r13)
0006b0  e3caa600  loadli.w r21,  84(r13)
0006b4  638bb600  loadli.w r22,  88(r13)
0006b8  63c9b600  loadli.w r18,  92(r13)
0006bc  0f030300  exp.f.rn r6, r6
0006c0  8f8a0a00  exp.f.rn r21, r21
0006c4  0f0b0b00  exp.f.rn r22, r22
0006c8  0f090900  exp.f.rn r18, r18
0006cc  67856600  storeli.w r6, 80(r13)
0006d0  67c55601  storeli.w r21, 84(r13)
0006d4  e7856601  storeli.w r22, 88(r13)
0006d8  e7c52601  storeli.w r18, 92(r13)
0006dc  6383c600  loadli.w r6,  96(r13)
0006e0  e3cac600  loadli.w r21,  100(r13)
0006e4  638bd600  loadli.w r22,  104(r13)
0006e8  63c9d600  loadli.w r18,  108(r13)
0006ec  0f030300  exp.f.rn r6, r6
0006f0  8f8a0a00  exp.f.rn r21, r21
0006f4  0f0b0b00  exp.f.rn r22, r22
0006f8  0f090900  exp.f.rn r18, r18
0006fc  67866600  storeli.w r6, 96(r13)
000700  67c65601  storeli.w r21, 100(r13)
000704  e7866601  storeli.w r22, 104(r13)
000708  e7c62601  storeli.w r18, 108(r13)
00070c  6383e600  loadli.w r6,  112(r13)
000710  e3cae600  loadli.w r21,  116(r13)
000714  638bf600  loadli.w r22,  120(r13)
000718  63c9f600  loadli.w r18,  124(r13)
00071c  0f030300  exp.f.rn r6, r6
000720  8f8a0a00  exp.f.rn r21, r21
000724  0f0b0b00  exp.f.rn r22, r22
000728  0f090900  exp.f.rn r18, r18
00072c  67876600  storeli.w r6, 112(r13)
000730  67c75601  storeli.w r21, 116(r13)
000734  e7876601  storeli.w r22, 120(r13)
000738  e7c72601  storeli.w r18, 124(r13)
00073c  63830601  loadli.w r6,  128(r13)
000740  e3ca0601  loadli.w r21,  132(r13)
000744  638b1601  loadli.w r22,  136(r13)
000748  63c91601  loadli.w r18,  140(r13)
00074c  0f030300  exp.f.rn r6, r6
000750  8f8a0a00  exp.f.rn r21, r21
000754  0f0b0b00  exp.f.rn r22, r22
000758  0f090900  exp.f.rn r18, r18
00075c  67886600  storeli.w r6, 128(r13)
000760  67c85601  storeli.w r21, 132(r13)
000764  e7886601  storeli.w r22, 136(r13)
000768  e7c82601  storeli.w r18, 140(r13)
00076c  63832601  loadli.w r6,  144(r13)
000770  e3ca2601  loadli.w r21,  148(r13)
000774  638b3601  loadli.w r22,  152(r13)
000778  63c93601  loadli.w r18,  156(r13)
00077c  0f030300  exp.f.rn r6, r6
000780  8f8a0a00  exp.f.rn r21, r21
000784  0f0b0b00  exp.f.rn r22, r22
000788  0f090900  exp.f.rn r18, r18
00078c  67896600  storeli.w r6, 144(r13)
000790  67c95601  storeli.w r21, 148(r13)
000794  e7896601  storeli.w r22, 152(r13)
000798  e7c92601  storeli.w r18, 156(r13)
00079c  63834601  loadli.w r6,  160(r13)
0007a0  e3ca4601  loadli.w r21,  164(r13)
0007a4  638b5601  loadli.w r22,  168(r13)
0007a8  63c95601  loadli.w r18,  172(r13)
0007ac  0f030300  exp.f.rn r6, r6
0007b0  8f8a0a00  exp.f.rn r21, r21
0007b4  0f0b0b00  exp.f.rn r22, r22
0007b8  0f090900  exp.f.rn r18, r18
0007bc  678a6600  storeli.w r6, 160(r13)
0007c0  67ca5601  storeli.w r21, 164(r13)
0007c4  e78a6601  storeli.w r22, 168(r13)
0007c8  e7ca2601  storeli.w r18, 172(r13)
0007cc  63836601  loadli.w r6,  176(r13)
0007d0  e3ca6601  loadli.w r21,  180(r13)
0007d4  638b7601  loadli.w r22,  184(r13)
0007d8  63c97601  loadli.w r18,  188(r13)
0007dc  0f030300  exp.f.rn r6, r6
0007e0  8f8a0a00  exp.f.rn r21, r21
0007e4  0f0b0b00  exp.f.rn r22, r22
0007e8  0f090900  exp.f.rn r18, r18
0007ec  678b6600  storeli.w r6, 176(r13)
0007f0  67cb5601  storeli.w r21, 180(r13)
0007f4  e78b6601  storeli.w r22, 184(r13)
0007f8  e7cb2601  storeli.w r18, 188(r13)
0007fc  63838601  loadli.w r6,  192(r13)
000800  e3ca8601  loadli.w r21,  196(r13)
000804  638b9601  loadli.w r22,  200(r13)
000808  63c99601  loadli.w r18,  204(r13)
00080c  0f030300  exp.f.rn r6, r6
000810  8f8a0a00  exp.f.rn r21, r21
000814  0f0b0b00  exp.f.rn r22, r22
000818  0f090900  exp.f.rn r18, r18
00081c  678c6600  storeli.w r6, 192(r13)
000820  67cc5601  storeli.w r21, 196(r13)
000824  e78c6601  storeli.w r22, 200(r13)
000828  e7cc2601  storeli.w r18, 204(r13)
00082c  6383a601  loadli.w r6,  208(r13)
000830  e3caa601  loadli.w r21,  212(r13)
000834  638bb601  loadli.w r22,  216(r13)
000838  63c9b601  loadli.w r18,  220(r13)
00083c  0f030300  exp.f.rn r6, r6
000840  8f8a0a00  exp.f.rn r21, r21
000844  0f0b0b00  exp.f.rn r22, r22
000848  0f090900  exp.f.rn r18, r18
00084c  678d6600  storeli.w r6, 208(r13)
000850  67cd5601  storeli.w r21, 212(r13)
000854  e78d6601  storeli.w r22, 216(r13)
000858  e7cd2601  storeli.w r18, 220(r13)
00085c  6383c601  loadli.w r6,  224(r13)
000860  e3cac601  loadli.w r21,  228(r13)
000864  638bd601  loadli.w r22,  232(r13)
000868  63c9d601  loadli.w r18,  236(r13)
00086c  0f030300  exp.f.rn r6, r6
000870  8f8a0a00  exp.f.rn r21, r21
000874  0f0b0b00  exp.f.rn r22, r22
000878  0f090900  exp.f.rn r18, r18
00087c  678e6600  storeli.w r6, 224(r13)
000880  67ce5601  storeli.w r21, 228(r13)
000884  e78e6601  storeli.w r22, 232(r13)
000888  e7ce2601  storeli.w r18, 236(r13)
00088c  6383e601  loadli.w r6,  240(r13)
000890  e3cae601  loadli.w r21,  244(r13)
000894  638bf601  loadli.w r22,  248(r13)
000898  63c9f601  loadli.w r18,  252(r13)
00089c  0f030300  exp.f.rn r6, r6
0008a0  8f8a0a00  exp.f.rn r21, r21
0008a4  0f0b0b00  exp.f.rn r22, r22
0008a8  0f090900  exp.f.rn r18, r18
0008ac  678f6600  storeli.w r6, 240(r13)
0008b0  67cf5601  storeli.w r21, 244(r13)
0008b4  e78f6601  storeli.w r22, 248(r13)
0008b8  e7cf2601  storeli.w r18, 252(r13)
0008bc  00a00000  mfence { lm }
0008c0  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
0008c4  c2108fe2  vload_mask16.mz vr1{mr1}, 1856(r30)
0008c8  1f038ff5  addli r6, r30, -1344
0008cc  c2110fe3  vload_mask16.mz vr3{mr1}, 1920(r30)
0008d0  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
0008d4  c2158fe3  vload_mask16.mz vr11{mr1}, 1984(r30)
0008d8  46100fe2  vstore_mask16.mz vr0{mr1}, 1792(r30)
0008dc  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
0008e0  1f038fef  addli r6, r30, -2112
0008e4  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
0008e8  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
0008ec  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
0008f0  1f038ff4  addli r6, r30, -1472
0008f4  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
0008f8  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
0008fc  1f038ff3  addli r6, r30, -1600
000900  96101202  vadd.f.mz.rn vr1{mr1}, vr4, vr1
000904  46104302  vstore_mask16.mz vr4{mr1}, 0(r6)
000908  1f038fee  addli r6, r30, -2240
00090c  46180fe2  vstore_mask16.mz vr0{mr1}, 1920(r30)
000910  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
000914  1f030ff5  addli r6, r30, -1408
000918  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
00091c  461c0fe2  vstore_mask16.mz vr0{mr1}, 1984(r30)
000920  46103302  vstore_mask16.mz vr3{mr1}, 0(r6)
000924  1f030ff3  addli r6, r30, -1664
000928  16903002  vadd.f.mz.rn vr0{mr1}, vr1, vr3
00092c  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
000930  00a00000  mfence { lm }
000934  63830600  loadli.w r6,  0(r13)
000938  63c90600  loadli.w r18,  4(r13)
00093c  e38a1600  loadli.w r21,  8(r13)
000940  63cb1600  loadli.w r22,  12(r13)
000944  0f030300  exp.f.rn r6, r6
000948  0f090900  exp.f.rn r18, r18
00094c  8f8a0a00  exp.f.rn r21, r21
000950  0f0b0b00  exp.f.rn r22, r22
000954  67806600  storeli.w r6, 0(r13)
000958  67c02601  storeli.w r18, 4(r13)
00095c  e7805601  storeli.w r21, 8(r13)
000960  e7c06601  storeli.w r22, 12(r13)
000964  63832600  loadli.w r6,  16(r13)
000968  63c92600  loadli.w r18,  20(r13)
00096c  e38a3600  loadli.w r21,  24(r13)
000970  63cb3600  loadli.w r22,  28(r13)
000974  0f030300  exp.f.rn r6, r6
000978  0f090900  exp.f.rn r18, r18
00097c  8f8a0a00  exp.f.rn r21, r21
000980  0f0b0b00  exp.f.rn r22, r22
000984  67816600  storeli.w r6, 16(r13)
000988  67c12601  storeli.w r18, 20(r13)
00098c  e7815601  storeli.w r21, 24(r13)
000990  e7c16601  storeli.w r22, 28(r13)
000994  63834600  loadli.w r6,  32(r13)
000998  63c94600  loadli.w r18,  36(r13)
00099c  e38a5600  loadli.w r21,  40(r13)
0009a0  63cb5600  loadli.w r22,  44(r13)
0009a4  0f030300  exp.f.rn r6, r6
0009a8  0f090900  exp.f.rn r18, r18
0009ac  8f8a0a00  exp.f.rn r21, r21
0009b0  0f0b0b00  exp.f.rn r22, r22
0009b4  67826600  storeli.w r6, 32(r13)
0009b8  67c22601  storeli.w r18, 36(r13)
0009bc  e7825601  storeli.w r21, 40(r13)
0009c0  e7c26601  storeli.w r22, 44(r13)
0009c4  63836600  loadli.w r6,  48(r13)
0009c8  63c96600  loadli.w r18,  52(r13)
0009cc  e38a7600  loadli.w r21,  56(r13)
0009d0  63cb7600  loadli.w r22,  60(r13)
0009d4  0f030300  exp.f.rn r6, r6
0009d8  0f090900  exp.f.rn r18, r18
0009dc  8f8a0a00  exp.f.rn r21, r21
0009e0  0f0b0b00  exp.f.rn r22, r22
0009e4  67836600  storeli.w r6, 48(r13)
0009e8  67c32601  storeli.w r18, 52(r13)
0009ec  e7835601  storeli.w r21, 56(r13)
0009f0  e7c36601  storeli.w r22, 60(r13)
0009f4  63838600  loadli.w r6,  64(r13)
0009f8  63c98600  loadli.w r18,  68(r13)
0009fc  e38a9600  loadli.w r21,  72(r13)
000a00  63cb9600  loadli.w r22,  76(r13)
000a04  0f030300  exp.f.rn r6, r6
000a08  0f090900  exp.f.rn r18, r18
000a0c  8f8a0a00  exp.f.rn r21, r21
000a10  0f0b0b00  exp.f.rn r22, r22
000a14  67846600  storeli.w r6, 64(r13)
000a18  67c42601  storeli.w r18, 68(r13)
000a1c  e7845601  storeli.w r21, 72(r13)
000a20  e7c46601  storeli.w r22, 76(r13)
000a24  6383a600  loadli.w r6,  80(r13)
000a28  63c9a600  loadli.w r18,  84(r13)
000a2c  e38ab600  loadli.w r21,  88(r13)
000a30  63cbb600  loadli.w r22,  92(r13)
000a34  0f030300  exp.f.rn r6, r6
000a38  0f090900  exp.f.rn r18, r18
000a3c  8f8a0a00  exp.f.rn r21, r21
000a40  0f0b0b00  exp.f.rn r22, r22
000a44  67856600  storeli.w r6, 80(r13)
000a48  67c52601  storeli.w r18, 84(r13)
000a4c  e7855601  storeli.w r21, 88(r13)
000a50  e7c56601  storeli.w r22, 92(r13)
000a54  6383c600  loadli.w r6,  96(r13)
000a58  63c9c600  loadli.w r18,  100(r13)
000a5c  e38ad600  loadli.w r21,  104(r13)
000a60  63cbd600  loadli.w r22,  108(r13)
000a64  0f030300  exp.f.rn r6, r6
000a68  0f090900  exp.f.rn r18, r18
000a6c  8f8a0a00  exp.f.rn r21, r21
000a70  0f0b0b00  exp.f.rn r22, r22
000a74  67866600  storeli.w r6, 96(r13)
000a78  67c62601  storeli.w r18, 100(r13)
000a7c  e7865601  storeli.w r21, 104(r13)
000a80  e7c66601  storeli.w r22, 108(r13)
000a84  6383e600  loadli.w r6,  112(r13)
000a88  63c9e600  loadli.w r18,  116(r13)
000a8c  e38af600  loadli.w r21,  120(r13)
000a90  63cbf600  loadli.w r22,  124(r13)
000a94  0f030300  exp.f.rn r6, r6
000a98  0f090900  exp.f.rn r18, r18
000a9c  8f8a0a00  exp.f.rn r21, r21
000aa0  0f0b0b00  exp.f.rn r22, r22
000aa4  67876600  storeli.w r6, 112(r13)
000aa8  67c72601  storeli.w r18, 116(r13)
000aac  e7875601  storeli.w r21, 120(r13)
000ab0  e7c76601  storeli.w r22, 124(r13)
000ab4  63830601  loadli.w r6,  128(r13)
000ab8  63c90601  loadli.w r18,  132(r13)
000abc  e38a1601  loadli.w r21,  136(r13)
000ac0  63cb1601  loadli.w r22,  140(r13)
000ac4  0f030300  exp.f.rn r6, r6
000ac8  0f090900  exp.f.rn r18, r18
000acc  8f8a0a00  exp.f.rn r21, r21
000ad0  0f0b0b00  exp.f.rn r22, r22
000ad4  67886600  storeli.w r6, 128(r13)
000ad8  67c82601  storeli.w r18, 132(r13)
000adc  e7885601  storeli.w r21, 136(r13)
000ae0  e7c86601  storeli.w r22, 140(r13)
000ae4  63832601  loadli.w r6,  144(r13)
000ae8  63c92601  loadli.w r18,  148(r13)
000aec  e38a3601  loadli.w r21,  152(r13)
000af0  63cb3601  loadli.w r22,  156(r13)
000af4  0f030300  exp.f.rn r6, r6
000af8  0f090900  exp.f.rn r18, r18
000afc  8f8a0a00  exp.f.rn r21, r21
000b00  0f0b0b00  exp.f.rn r22, r22
000b04  67896600  storeli.w r6, 144(r13)
000b08  67c92601  storeli.w r18, 148(r13)
000b0c  e7895601  storeli.w r21, 152(r13)
000b10  e7c96601  storeli.w r22, 156(r13)
000b14  63834601  loadli.w r6,  160(r13)
000b18  63c94601  loadli.w r18,  164(r13)
000b1c  e38a5601  loadli.w r21,  168(r13)
000b20  63cb5601  loadli.w r22,  172(r13)
000b24  0f030300  exp.f.rn r6, r6
000b28  0f090900  exp.f.rn r18, r18
000b2c  8f8a0a00  exp.f.rn r21, r21
000b30  0f0b0b00  exp.f.rn r22, r22
000b34  678a6600  storeli.w r6, 160(r13)
000b38  67ca2601  storeli.w r18, 164(r13)
000b3c  e78a5601  storeli.w r21, 168(r13)
000b40  e7ca6601  storeli.w r22, 172(r13)
000b44  63836601  loadli.w r6,  176(r13)
000b48  63c96601  loadli.w r18,  180(r13)
000b4c  e38a7601  loadli.w r21,  184(r13)
000b50  63cb7601  loadli.w r22,  188(r13)
000b54  0f030300  exp.f.rn r6, r6
000b58  0f090900  exp.f.rn r18, r18
000b5c  8f8a0a00  exp.f.rn r21, r21
000b60  0f0b0b00  exp.f.rn r22, r22
000b64  678b6600  storeli.w r6, 176(r13)
000b68  67cb2601  storeli.w r18, 180(r13)
000b6c  e78b5601  storeli.w r21, 184(r13)
000b70  e7cb6601  storeli.w r22, 188(r13)
000b74  63838601  loadli.w r6,  192(r13)
000b78  63c98601  loadli.w r18,  196(r13)
000b7c  e38a9601  loadli.w r21,  200(r13)
000b80  63cb9601  loadli.w r22,  204(r13)
000b84  0f030300  exp.f.rn r6, r6
000b88  0f090900  exp.f.rn r18, r18
000b8c  8f8a0a00  exp.f.rn r21, r21
000b90  0f0b0b00  exp.f.rn r22, r22
000b94  678c6600  storeli.w r6, 192(r13)
000b98  67cc2601  storeli.w r18, 196(r13)
000b9c  e78c5601  storeli.w r21, 200(r13)
000ba0  e7cc6601  storeli.w r22, 204(r13)
000ba4  6383a601  loadli.w r6,  208(r13)
000ba8  63c9a601  loadli.w r18,  212(r13)
000bac  e38ab601  loadli.w r21,  216(r13)
000bb0  63cbb601  loadli.w r22,  220(r13)
000bb4  0f030300  exp.f.rn r6, r6
000bb8  0f090900  exp.f.rn r18, r18
000bbc  8f8a0a00  exp.f.rn r21, r21
000bc0  0f0b0b00  exp.f.rn r22, r22
000bc4  678d6600  storeli.w r6, 208(r13)
000bc8  67cd2601  storeli.w r18, 212(r13)
000bcc  e78d5601  storeli.w r21, 216(r13)
000bd0  e7cd6601  storeli.w r22, 220(r13)
000bd4  6383c601  loadli.w r6,  224(r13)
000bd8  63c9c601  loadli.w r18,  228(r13)
000bdc  e38ad601  loadli.w r21,  232(r13)
000be0  63cbd601  loadli.w r22,  236(r13)
000be4  0f030300  exp.f.rn r6, r6
000be8  0f090900  exp.f.rn r18, r18
000bec  8f8a0a00  exp.f.rn r21, r21
000bf0  0f0b0b00  exp.f.rn r22, r22
000bf4  678e6600  storeli.w r6, 224(r13)
000bf8  67ce2601  storeli.w r18, 228(r13)
000bfc  e78e5601  storeli.w r21, 232(r13)
000c00  e7ce6601  storeli.w r22, 236(r13)
000c04  6383e601  loadli.w r6,  240(r13)
000c08  63c9e601  loadli.w r18,  244(r13)
000c0c  e38af601  loadli.w r21,  248(r13)
000c10  63cbf601  loadli.w r22,  252(r13)
000c14  0f030300  exp.f.rn r6, r6
000c18  0f090900  exp.f.rn r18, r18
000c1c  8f8a0a00  exp.f.rn r21, r21
000c20  0f0b0b00  exp.f.rn r22, r22
000c24  678f6600  storeli.w r6, 240(r13)
000c28  67cf2601  storeli.w r18, 244(r13)
000c2c  e78f5601  storeli.w r21, 248(r13)
000c30  e7cf6601  storeli.w r22, 252(r13)
000c34  00a00000  mfence { lm }
000c38  92111702  vadd.f.mz.rn vr3{mr1}, r14, vr1
000c3c  42130fe2  vload_mask16.mz vr6{mr1}, 1792(r30)
000c40  1f038ff5  addli r6, r30, -1344
000c44  1610b002  vadd.f.mz.rn vr0{mr1}, vr0, vr11
000c48  4610b302  vstore_mask16.mz vr11{mr1}, 0(r6)
000c4c  1f030fef  addli r6, r30, -2176
000c50  42148fe2  vload_mask16.mz vr8{mr1}, 1856(r30)
000c54  c2130fe3  vload_mask16.mz vr7{mr1}, 1920(r30)
000c58  42128fe3  vload_mask16.mz vr4{mr1}, 1984(r30)
000c5c  46103fe2  vstore_mask16.mz vr3{mr1}, 1792(r30)
000c60  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
000c64  1f030ff0  addli r6, r30, -2048
000c68  92111702  vadd.f.mz.rn vr3{mr1}, r14, vr1
000c6c  46143fe2  vstore_mask16.mz vr3{mr1}, 1856(r30)
000c70  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
000c74  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
000c78  1f038ff0  addli r6, r30, -1984
000c7c  92111702  vadd.f.mz.rn vr3{mr1}, r14, vr1
000c80  46183fe2  vstore_mask16.mz vr3{mr1}, 1920(r30)
000c84  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
000c88  1f030ff3  addli r6, r30, -1664
000c8c  92111702  vadd.f.mz.rn vr3{mr1}, r14, vr1
000c90  461c3fe2  vstore_mask16.mz vr3{mr1}, 1984(r30)
000c94  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
000c98  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
000c9c  1f030ff1  addli r6, r30, -1920
000ca0  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
000ca4  00a00000  mfence { lm }
000ca8  63830600  loadli.w r6,  0(r13)
000cac  63c90600  loadli.w r18,  4(r13)
000cb0  e38a1600  loadli.w r21,  8(r13)
000cb4  63cb1600  loadli.w r22,  12(r13)
000cb8  0f030300  exp.f.rn r6, r6
000cbc  0f090900  exp.f.rn r18, r18
000cc0  8f8a0a00  exp.f.rn r21, r21
000cc4  0f0b0b00  exp.f.rn r22, r22
000cc8  67806600  storeli.w r6, 0(r13)
000ccc  67c02601  storeli.w r18, 4(r13)
000cd0  e7805601  storeli.w r21, 8(r13)
000cd4  e7c06601  storeli.w r22, 12(r13)
000cd8  63832600  loadli.w r6,  16(r13)
000cdc  63c92600  loadli.w r18,  20(r13)
000ce0  e38a3600  loadli.w r21,  24(r13)
000ce4  63cb3600  loadli.w r22,  28(r13)
000ce8  0f030300  exp.f.rn r6, r6
000cec  0f090900  exp.f.rn r18, r18
000cf0  8f8a0a00  exp.f.rn r21, r21
000cf4  0f0b0b00  exp.f.rn r22, r22
000cf8  67816600  storeli.w r6, 16(r13)
000cfc  67c12601  storeli.w r18, 20(r13)
000d00  e7815601  storeli.w r21, 24(r13)
000d04  e7c16601  storeli.w r22, 28(r13)
000d08  63834600  loadli.w r6,  32(r13)
000d0c  63c94600  loadli.w r18,  36(r13)
000d10  e38a5600  loadli.w r21,  40(r13)
000d14  63cb5600  loadli.w r22,  44(r13)
000d18  0f030300  exp.f.rn r6, r6
000d1c  0f090900  exp.f.rn r18, r18
000d20  8f8a0a00  exp.f.rn r21, r21
000d24  0f0b0b00  exp.f.rn r22, r22
000d28  67826600  storeli.w r6, 32(r13)
000d2c  67c22601  storeli.w r18, 36(r13)
000d30  e7825601  storeli.w r21, 40(r13)
000d34  e7c26601  storeli.w r22, 44(r13)
000d38  63836600  loadli.w r6,  48(r13)
000d3c  63c96600  loadli.w r18,  52(r13)
000d40  e38a7600  loadli.w r21,  56(r13)
000d44  63cb7600  loadli.w r22,  60(r13)
000d48  0f030300  exp.f.rn r6, r6
000d4c  0f090900  exp.f.rn r18, r18
000d50  8f8a0a00  exp.f.rn r21, r21
000d54  0f0b0b00  exp.f.rn r22, r22
000d58  67836600  storeli.w r6, 48(r13)
000d5c  67c32601  storeli.w r18, 52(r13)
000d60  e7835601  storeli.w r21, 56(r13)
000d64  e7c36601  storeli.w r22, 60(r13)
000d68  63838600  loadli.w r6,  64(r13)
000d6c  63c98600  loadli.w r18,  68(r13)
000d70  e38a9600  loadli.w r21,  72(r13)
000d74  63cb9600  loadli.w r22,  76(r13)
000d78  0f030300  exp.f.rn r6, r6
000d7c  0f090900  exp.f.rn r18, r18
000d80  8f8a0a00  exp.f.rn r21, r21
000d84  0f0b0b00  exp.f.rn r22, r22
000d88  67846600  storeli.w r6, 64(r13)
000d8c  67c42601  storeli.w r18, 68(r13)
000d90  e7845601  storeli.w r21, 72(r13)
000d94  e7c46601  storeli.w r22, 76(r13)
000d98  6383a600  loadli.w r6,  80(r13)
000d9c  63c9a600  loadli.w r18,  84(r13)
000da0  e38ab600  loadli.w r21,  88(r13)
000da4  63cbb600  loadli.w r22,  92(r13)
000da8  0f030300  exp.f.rn r6, r6
000dac  0f090900  exp.f.rn r18, r18
000db0  8f8a0a00  exp.f.rn r21, r21
000db4  0f0b0b00  exp.f.rn r22, r22
000db8  67856600  storeli.w r6, 80(r13)
000dbc  67c52601  storeli.w r18, 84(r13)
000dc0  e7855601  storeli.w r21, 88(r13)
000dc4  e7c56601  storeli.w r22, 92(r13)
000dc8  6383c600  loadli.w r6,  96(r13)
000dcc  63c9c600  loadli.w r18,  100(r13)
000dd0  e38ad600  loadli.w r21,  104(r13)
000dd4  63cbd600  loadli.w r22,  108(r13)
000dd8  0f030300  exp.f.rn r6, r6
000ddc  0f090900  exp.f.rn r18, r18
000de0  8f8a0a00  exp.f.rn r21, r21
000de4  0f0b0b00  exp.f.rn r22, r22
000de8  67866600  storeli.w r6, 96(r13)
000dec  67c62601  storeli.w r18, 100(r13)
000df0  e7865601  storeli.w r21, 104(r13)
000df4  e7c66601  storeli.w r22, 108(r13)
000df8  6383e600  loadli.w r6,  112(r13)
000dfc  63c9e600  loadli.w r18,  116(r13)
000e00  e38af600  loadli.w r21,  120(r13)
000e04  63cbf600  loadli.w r22,  124(r13)
000e08  0f030300  exp.f.rn r6, r6
000e0c  0f090900  exp.f.rn r18, r18
000e10  8f8a0a00  exp.f.rn r21, r21
000e14  0f0b0b00  exp.f.rn r22, r22
000e18  67876600  storeli.w r6, 112(r13)
000e1c  67c72601  storeli.w r18, 116(r13)
000e20  e7875601  storeli.w r21, 120(r13)
000e24  e7c76601  storeli.w r22, 124(r13)
000e28  63830601  loadli.w r6,  128(r13)
000e2c  63c90601  loadli.w r18,  132(r13)
000e30  e38a1601  loadli.w r21,  136(r13)
000e34  63cb1601  loadli.w r22,  140(r13)
000e38  0f030300  exp.f.rn r6, r6
000e3c  0f090900  exp.f.rn r18, r18
000e40  8f8a0a00  exp.f.rn r21, r21
000e44  0f0b0b00  exp.f.rn r22, r22
000e48  67886600  storeli.w r6, 128(r13)
000e4c  67c82601  storeli.w r18, 132(r13)
000e50  e7885601  storeli.w r21, 136(r13)
000e54  e7c86601  storeli.w r22, 140(r13)
000e58  63832601  loadli.w r6,  144(r13)
000e5c  63c92601  loadli.w r18,  148(r13)
000e60  e38a3601  loadli.w r21,  152(r13)
000e64  63cb3601  loadli.w r22,  156(r13)
000e68  0f030300  exp.f.rn r6, r6
000e6c  0f090900  exp.f.rn r18, r18
000e70  8f8a0a00  exp.f.rn r21, r21
000e74  0f0b0b00  exp.f.rn r22, r22
000e78  67896600  storeli.w r6, 144(r13)
000e7c  67c92601  storeli.w r18, 148(r13)
000e80  e7895601  storeli.w r21, 152(r13)
000e84  e7c96601  storeli.w r22, 156(r13)
000e88  63834601  loadli.w r6,  160(r13)
000e8c  63c94601  loadli.w r18,  164(r13)
000e90  e38a5601  loadli.w r21,  168(r13)
000e94  63cb5601  loadli.w r22,  172(r13)
000e98  0f030300  exp.f.rn r6, r6
000e9c  0f090900  exp.f.rn r18, r18
000ea0  8f8a0a00  exp.f.rn r21, r21
000ea4  0f0b0b00  exp.f.rn r22, r22
000ea8  678a6600  storeli.w r6, 160(r13)
000eac  67ca2601  storeli.w r18, 164(r13)
000eb0  e78a5601  storeli.w r21, 168(r13)
000eb4  e7ca6601  storeli.w r22, 172(r13)
000eb8  63836601  loadli.w r6,  176(r13)
000ebc  63c96601  loadli.w r18,  180(r13)
000ec0  e38a7601  loadli.w r21,  184(r13)
000ec4  63cb7601  loadli.w r22,  188(r13)
000ec8  0f030300  exp.f.rn r6, r6
000ecc  0f090900  exp.f.rn r18, r18
000ed0  8f8a0a00  exp.f.rn r21, r21
000ed4  0f0b0b00  exp.f.rn r22, r22
000ed8  678b6600  storeli.w r6, 176(r13)
000edc  67cb2601  storeli.w r18, 180(r13)
000ee0  e78b5601  storeli.w r21, 184(r13)
000ee4  e7cb6601  storeli.w r22, 188(r13)
000ee8  63838601  loadli.w r6,  192(r13)
000eec  63c98601  loadli.w r18,  196(r13)
000ef0  e38a9601  loadli.w r21,  200(r13)
000ef4  63cb9601  loadli.w r22,  204(r13)
000ef8  0f030300  exp.f.rn r6, r6
000efc  0f090900  exp.f.rn r18, r18
000f00  8f8a0a00  exp.f.rn r21, r21
000f04  0f0b0b00  exp.f.rn r22, r22
000f08  678c6600  storeli.w r6, 192(r13)
000f0c  67cc2601  storeli.w r18, 196(r13)
000f10  e78c5601  storeli.w r21, 200(r13)
000f14  e7cc6601  storeli.w r22, 204(r13)
000f18  6383a601  loadli.w r6,  208(r13)
000f1c  63c9a601  loadli.w r18,  212(r13)
000f20  e38ab601  loadli.w r21,  216(r13)
000f24  63cbb601  loadli.w r22,  220(r13)
000f28  0f030300  exp.f.rn r6, r6
000f2c  0f090900  exp.f.rn r18, r18
000f30  8f8a0a00  exp.f.rn r21, r21
000f34  0f0b0b00  exp.f.rn r22, r22
000f38  678d6600  storeli.w r6, 208(r13)
000f3c  67cd2601  storeli.w r18, 212(r13)
000f40  e78d5601  storeli.w r21, 216(r13)
000f44  e7cd6601  storeli.w r22, 220(r13)
000f48  6383c601  loadli.w r6,  224(r13)
000f4c  63c9c601  loadli.w r18,  228(r13)
000f50  e38ad601  loadli.w r21,  232(r13)
000f54  63cbd601  loadli.w r22,  236(r13)
000f58  0f030300  exp.f.rn r6, r6
000f5c  0f090900  exp.f.rn r18, r18
000f60  8f8a0a00  exp.f.rn r21, r21
000f64  0f0b0b00  exp.f.rn r22, r22
000f68  678e6600  storeli.w r6, 224(r13)
000f6c  67ce2601  storeli.w r18, 228(r13)
000f70  e78e5601  storeli.w r21, 232(r13)
000f74  e7ce6601  storeli.w r22, 236(r13)
000f78  6383e601  loadli.w r6,  240(r13)
000f7c  63c9e601  loadli.w r18,  244(r13)
000f80  e38af601  loadli.w r21,  248(r13)
000f84  63cbf601  loadli.w r22,  252(r13)
000f88  0f030300  exp.f.rn r6, r6
000f8c  0f090900  exp.f.rn r18, r18
000f90  8f8a0a00  exp.f.rn r21, r21
000f94  0f0b0b00  exp.f.rn r22, r22
000f98  678f6600  storeli.w r6, 240(r13)
000f9c  67cf2601  storeli.w r18, 244(r13)
000fa0  e78f5601  storeli.w r21, 248(r13)
000fa4  e7cf6601  storeli.w r22, 252(r13)
000fa8  00a00000  mfence { lm }
000fac  92141702  vadd.f.mz.rn vr9{mr1}, r14, vr1
000fb0  c2120fe2  vload_mask16.mz vr5{mr1}, 1792(r30)
000fb4  1f030ff4  addli r6, r30, -1536
000fb8  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
000fbc  46104302  vstore_mask16.mz vr4{mr1}, 0(r6)
000fc0  1f030ff2  addli r6, r30, -1792
000fc4  c2138fe2  vload_mask16.mz vr7{mr1}, 1856(r30)
000fc8  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
000fcc  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
000fd0  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
000fd4  46109fe2  vstore_mask16.mz vr9{mr1}, 1792(r30)
000fd8  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
000fdc  1f038ff1  addli r6, r30, -1856
000fe0  92141702  vadd.f.mz.rn vr9{mr1}, r14, vr1
000fe4  46149fe2  vstore_mask16.mz vr9{mr1}, 1856(r30)
000fe8  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
000fec  92141702  vadd.f.mz.rn vr9{mr1}, r14, vr1
000ff0  46189fe2  vstore_mask16.mz vr9{mr1}, 1920(r30)
000ff4  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
000ff8  92142702  vadd.f.mz.rn vr9{mr1}, r14, vr2
000ffc  461c9fe2  vstore_mask16.mz vr9{mr1}, 1984(r30)
001000  00a00000  mfence { lm }
001004  63830600  loadli.w r6,  0(r13)
001008  63c70600  loadli.w r14,  4(r13)
00100c  63891600  loadli.w r18,  8(r13)
001010  e3ca1600  loadli.w r21,  12(r13)
001014  0f030300  exp.f.rn r6, r6
001018  0f070700  exp.f.rn r14, r14
00101c  0f090900  exp.f.rn r18, r18
001020  8f8a0a00  exp.f.rn r21, r21
001024  67806600  storeli.w r6, 0(r13)
001028  67c0e600  storeli.w r14, 4(r13)
00102c  e7802601  storeli.w r18, 8(r13)
001030  e7c05601  storeli.w r21, 12(r13)
001034  63832600  loadli.w r6,  16(r13)
001038  63c72600  loadli.w r14,  20(r13)
00103c  63893600  loadli.w r18,  24(r13)
001040  e3ca3600  loadli.w r21,  28(r13)
001044  0f030300  exp.f.rn r6, r6
001048  0f070700  exp.f.rn r14, r14
00104c  0f090900  exp.f.rn r18, r18
001050  8f8a0a00  exp.f.rn r21, r21
001054  67816600  storeli.w r6, 16(r13)
001058  67c1e600  storeli.w r14, 20(r13)
00105c  e7812601  storeli.w r18, 24(r13)
001060  e7c15601  storeli.w r21, 28(r13)
001064  63834600  loadli.w r6,  32(r13)
001068  63c74600  loadli.w r14,  36(r13)
00106c  63895600  loadli.w r18,  40(r13)
001070  e3ca5600  loadli.w r21,  44(r13)
001074  0f030300  exp.f.rn r6, r6
001078  0f070700  exp.f.rn r14, r14
00107c  0f090900  exp.f.rn r18, r18
001080  8f8a0a00  exp.f.rn r21, r21
001084  67826600  storeli.w r6, 32(r13)
001088  67c2e600  storeli.w r14, 36(r13)
00108c  e7822601  storeli.w r18, 40(r13)
001090  e7c25601  storeli.w r21, 44(r13)
001094  63836600  loadli.w r6,  48(r13)
001098  63c76600  loadli.w r14,  52(r13)
00109c  63897600  loadli.w r18,  56(r13)
0010a0  e3ca7600  loadli.w r21,  60(r13)
0010a4  0f030300  exp.f.rn r6, r6
0010a8  0f070700  exp.f.rn r14, r14
0010ac  0f090900  exp.f.rn r18, r18
0010b0  8f8a0a00  exp.f.rn r21, r21
0010b4  67836600  storeli.w r6, 48(r13)
0010b8  67c3e600  storeli.w r14, 52(r13)
0010bc  e7832601  storeli.w r18, 56(r13)
0010c0  e7c35601  storeli.w r21, 60(r13)
0010c4  63838600  loadli.w r6,  64(r13)
0010c8  63c78600  loadli.w r14,  68(r13)
0010cc  63899600  loadli.w r18,  72(r13)
0010d0  e3ca9600  loadli.w r21,  76(r13)
0010d4  0f030300  exp.f.rn r6, r6
0010d8  0f070700  exp.f.rn r14, r14
0010dc  0f090900  exp.f.rn r18, r18
0010e0  8f8a0a00  exp.f.rn r21, r21
0010e4  67846600  storeli.w r6, 64(r13)
0010e8  67c4e600  storeli.w r14, 68(r13)
0010ec  e7842601  storeli.w r18, 72(r13)
0010f0  e7c45601  storeli.w r21, 76(r13)
0010f4  6383a600  loadli.w r6,  80(r13)
0010f8  63c7a600  loadli.w r14,  84(r13)
0010fc  6389b600  loadli.w r18,  88(r13)
001100  e3cab600  loadli.w r21,  92(r13)
001104  0f030300  exp.f.rn r6, r6
001108  0f070700  exp.f.rn r14, r14
00110c  0f090900  exp.f.rn r18, r18
001110  8f8a0a00  exp.f.rn r21, r21
001114  67856600  storeli.w r6, 80(r13)
001118  67c5e600  storeli.w r14, 84(r13)
00111c  e7852601  storeli.w r18, 88(r13)
001120  e7c55601  storeli.w r21, 92(r13)
001124  6383c600  loadli.w r6,  96(r13)
001128  63c7c600  loadli.w r14,  100(r13)
00112c  6389d600  loadli.w r18,  104(r13)
001130  e3cad600  loadli.w r21,  108(r13)
001134  0f030300  exp.f.rn r6, r6
001138  0f070700  exp.f.rn r14, r14
00113c  0f090900  exp.f.rn r18, r18
001140  8f8a0a00  exp.f.rn r21, r21
001144  67866600  storeli.w r6, 96(r13)
001148  67c6e600  storeli.w r14, 100(r13)
00114c  e7862601  storeli.w r18, 104(r13)
001150  e7c65601  storeli.w r21, 108(r13)
001154  6383e600  loadli.w r6,  112(r13)
001158  63c7e600  loadli.w r14,  116(r13)
00115c  6389f600  loadli.w r18,  120(r13)
001160  e3caf600  loadli.w r21,  124(r13)
001164  0f030300  exp.f.rn r6, r6
001168  0f070700  exp.f.rn r14, r14
00116c  0f090900  exp.f.rn r18, r18
001170  8f8a0a00  exp.f.rn r21, r21
001174  67876600  storeli.w r6, 112(r13)
001178  67c7e600  storeli.w r14, 116(r13)
00117c  e7872601  storeli.w r18, 120(r13)
001180  e7c75601  storeli.w r21, 124(r13)
001184  63830601  loadli.w r6,  128(r13)
001188  63c70601  loadli.w r14,  132(r13)
00118c  63891601  loadli.w r18,  136(r13)
001190  e3ca1601  loadli.w r21,  140(r13)
001194  0f030300  exp.f.rn r6, r6
001198  0f070700  exp.f.rn r14, r14
00119c  0f090900  exp.f.rn r18, r18
0011a0  8f8a0a00  exp.f.rn r21, r21
0011a4  67886600  storeli.w r6, 128(r13)
0011a8  67c8e600  storeli.w r14, 132(r13)
0011ac  e7882601  storeli.w r18, 136(r13)
0011b0  e7c85601  storeli.w r21, 140(r13)
0011b4  63832601  loadli.w r6,  144(r13)
0011b8  63c72601  loadli.w r14,  148(r13)
0011bc  63893601  loadli.w r18,  152(r13)
0011c0  e3ca3601  loadli.w r21,  156(r13)
0011c4  0f030300  exp.f.rn r6, r6
0011c8  0f070700  exp.f.rn r14, r14
0011cc  0f090900  exp.f.rn r18, r18
0011d0  8f8a0a00  exp.f.rn r21, r21
0011d4  67896600  storeli.w r6, 144(r13)
0011d8  67c9e600  storeli.w r14, 148(r13)
0011dc  e7892601  storeli.w r18, 152(r13)
0011e0  e7c95601  storeli.w r21, 156(r13)
0011e4  63834601  loadli.w r6,  160(r13)
0011e8  63c74601  loadli.w r14,  164(r13)
0011ec  63895601  loadli.w r18,  168(r13)
0011f0  e3ca5601  loadli.w r21,  172(r13)
0011f4  0f030300  exp.f.rn r6, r6
0011f8  0f070700  exp.f.rn r14, r14
0011fc  0f090900  exp.f.rn r18, r18
001200  8f8a0a00  exp.f.rn r21, r21
001204  678a6600  storeli.w r6, 160(r13)
001208  67cae600  storeli.w r14, 164(r13)
00120c  e78a2601  storeli.w r18, 168(r13)
001210  e7ca5601  storeli.w r21, 172(r13)
001214  63836601  loadli.w r6,  176(r13)
001218  63c76601  loadli.w r14,  180(r13)
00121c  63897601  loadli.w r18,  184(r13)
001220  e3ca7601  loadli.w r21,  188(r13)
001224  0f030300  exp.f.rn r6, r6
001228  0f070700  exp.f.rn r14, r14
00122c  0f090900  exp.f.rn r18, r18
001230  8f8a0a00  exp.f.rn r21, r21
001234  678b6600  storeli.w r6, 176(r13)
001238  67cbe600  storeli.w r14, 180(r13)
00123c  e78b2601  storeli.w r18, 184(r13)
001240  e7cb5601  storeli.w r21, 188(r13)
001244  63838601  loadli.w r6,  192(r13)
001248  63c78601  loadli.w r14,  196(r13)
00124c  63899601  loadli.w r18,  200(r13)
001250  e3ca9601  loadli.w r21,  204(r13)
001254  0f030300  exp.f.rn r6, r6
001258  0f070700  exp.f.rn r14, r14
00125c  0f090900  exp.f.rn r18, r18
001260  8f8a0a00  exp.f.rn r21, r21
001264  678c6600  storeli.w r6, 192(r13)
001268  67cce600  storeli.w r14, 196(r13)
00126c  e78c2601  storeli.w r18, 200(r13)
001270  e7cc5601  storeli.w r21, 204(r13)
001274  6383a601  loadli.w r6,  208(r13)
001278  63c7a601  loadli.w r14,  212(r13)
00127c  6389b601  loadli.w r18,  216(r13)
001280  e3cab601  loadli.w r21,  220(r13)
001284  0f030300  exp.f.rn r6, r6
001288  0f070700  exp.f.rn r14, r14
00128c  0f090900  exp.f.rn r18, r18
001290  8f8a0a00  exp.f.rn r21, r21
001294  678d6600  storeli.w r6, 208(r13)
001298  67cde600  storeli.w r14, 212(r13)
00129c  e78d2601  storeli.w r18, 216(r13)
0012a0  e7cd5601  storeli.w r21, 220(r13)
0012a4  6383c601  loadli.w r6,  224(r13)
0012a8  63c7c601  loadli.w r14,  228(r13)
0012ac  6389d601  loadli.w r18,  232(r13)
0012b0  e3cad601  loadli.w r21,  236(r13)
0012b4  0f030300  exp.f.rn r6, r6
0012b8  0f070700  exp.f.rn r14, r14
0012bc  0f090900  exp.f.rn r18, r18
0012c0  8f8a0a00  exp.f.rn r21, r21
0012c4  678e6600  storeli.w r6, 224(r13)
0012c8  67cee600  storeli.w r14, 228(r13)
0012cc  e78e2601  storeli.w r18, 232(r13)
0012d0  e7ce5601  storeli.w r21, 236(r13)
0012d4  6383e601  loadli.w r6,  240(r13)
0012d8  63c7e601  loadli.w r14,  244(r13)
0012dc  6389f601  loadli.w r18,  248(r13)
0012e0  e3caf601  loadli.w r21,  252(r13)
0012e4  0f030300  exp.f.rn r6, r6
0012e8  0f070700  exp.f.rn r14, r14
0012ec  0f090900  exp.f.rn r18, r18
0012f0  8f8a0a00  exp.f.rn r21, r21
0012f4  678f6600  storeli.w r6, 240(r13)
0012f8  67cfe600  storeli.w r14, 244(r13)
0012fc  e78f2601  storeli.w r18, 248(r13)
001300  e7cf5601  storeli.w r21, 252(r13)
001304  00a00000  mfence { lm }
001308  c2140fe2  vload_mask16.mz vr9{mr1}, 1792(r30)
00130c  42158fe2  vload_mask16.mz vr10{mr1}, 1856(r30)
001310  c2150fe3  vload_mask16.mz vr11{mr1}, 1920(r30)
001314  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
001318  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
00131c  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
001320  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
001324  1610a002  vadd.f.mz.rn vr0{mr1}, vr0, vr10
001328  9610b002  vadd.f.mz.rn vr1{mr1}, vr0, vr11
00132c  42108fe3  vload_mask16.mz vr0{mr1}, 1984(r30)
001330  63077fee  loadli.w r14,  -2248(r30)
001334  96900002  vadd.f.mz.rn vr1{mr1}, vr1, vr0
001338  6af119c0  vsrl.p vr2, r19, vr1
00133c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001340  6a7114c0  vsrl.p vr2, r8, vr1
001344  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001348  6af114c0  vsrl.p vr2, r9, vr1
00134c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001350  6a7115c0  vsrl.p vr2, r10, vr1
001354  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001358  7a930040  vextracti.f r6, 0(vr1)
00135c  73606700  stores.w r6, 0(r14)
001360  00a00300  mfence { lm, sm, gm }
001364  80a10504  csr_set csr3, r11
001368  00d00100  sync_group
00136c  bb900800  bneq r17, zero, 36
001370  6f430d00  loads.w r6, 0(r26)
001374  6f474d00  loads.w r14, 4(r26)
001378  6f498d00  loads.w r18, 8(r26)
00137c  0b63e310  add.f.rn r6, r6, r14
001380  6f47cd00  loads.w r14, 12(r26)
001384  0b632311  add.f.rn r6, r6, r18
001388  0b63e310  add.f.rn r6, r6, r14
00138c  73606d00  stores.w r6, 0(r26)
001390  00a00300  mfence { lm, sm, gm }
001394  80a10504  csr_set csr3, r11
001398  00d00100  sync_group
00139c  6f430d00  loads.w r6, 0(r26)
0013a0  2b07803f  lui r14, 260096
0013a4  0f076718  div.f.rn r14, r14, r6
0013a8  1f038ff3  addli r6, r30, -1600
0013ac  0a100702  vmul.f.mz.rn vr0{mr1}, r14, vr0
0013b0  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
0013b4  1f030ff6  addli r6, r30, -1280
0013b8  0a111702  vmul.f.mz.rn vr2{mr1}, r14, vr1
0013bc  46102302  vstore_mask16.mz vr2{mr1}, 0(r6)
0013c0  1f038ff4  addli r6, r30, -1472
0013c4  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
0013c8  1f038ff6  addli r6, r30, -1216
0013cc  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
0013d0  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
0013d4  1f030ff5  addli r6, r30, -1408
0013d8  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
0013dc  1f030ff7  addli r6, r30, -1152
0013e0  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
0013e4  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
0013e8  1f038ff5  addli r6, r30, -1344
0013ec  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
0013f0  1f038ff7  addli r6, r30, -1088
0013f4  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
0013f8  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
0013fc  8a106702  vmul.f.mz.rn vr1{mr1}, r14, vr6
001400  1f030ff3  addli r6, r30, -1664
001404  46101f82  vstore_mask16.mz vr1{mr1}, 1024(r30)
001408  8a108702  vmul.f.mz.rn vr1{mr1}, r14, vr8
00140c  46141f82  vstore_mask16.mz vr1{mr1}, 1088(r30)
001410  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
001414  1f030ff4  addli r6, r30, -1536
001418  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
00141c  46181f82  vstore_mask16.mz vr1{mr1}, 1152(r30)
001420  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
001424  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
001428  461c1f82  vstore_mask16.mz vr1{mr1}, 1216(r30)
00142c  8a105702  vmul.f.mz.rn vr1{mr1}, r14, vr5
001430  46101fa2  vstore_mask16.mz vr1{mr1}, 1280(r30)
001434  8a107702  vmul.f.mz.rn vr1{mr1}, r14, vr7
001438  46141fa2  vstore_mask16.mz vr1{mr1}, 1344(r30)
00143c  8a104702  vmul.f.mz.rn vr1{mr1}, r14, vr4
001440  46181fa2  vstore_mask16.mz vr1{mr1}, 1408(r30)
001444  8a103702  vmul.f.mz.rn vr1{mr1}, r14, vr3
001448  461c1fa2  vstore_mask16.mz vr1{mr1}, 1472(r30)
00144c  8a109702  vmul.f.mz.rn vr1{mr1}, r14, vr9
001450  46101fc2  vstore_mask16.mz vr1{mr1}, 1536(r30)
001454  8a10a702  vmul.f.mz.rn vr1{mr1}, r14, vr10
001458  46141fc2  vstore_mask16.mz vr1{mr1}, 1600(r30)
00145c  8a10b702  vmul.f.mz.rn vr1{mr1}, r14, vr11
001460  46181fc2  vstore_mask16.mz vr1{mr1}, 1664(r30)
001464  461c0fc2  vstore_mask16.mz vr0{mr1}, 1728(r30)
001468  1f870000  addli r14, r1, 0
00146c  00a00000  mfence { lm }
001470  63038f00  loadli.w r6,  64(r30)
001474  3f4866f6  blt.s r12, r6, -4592
001478  1f070000  addli r14, zero, 0
00147c  5bc1fdff  j -4600
001480  9f0e0fee  addli sp, r30, -2304
001484  9f8e0e12  addli sp, sp, 2304
001488  00a00300  mfence { lm, sm, gm }
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
