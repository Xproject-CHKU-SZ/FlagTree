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
0001c8  4b7b5208  ble.s r4, r5, 4828
0001cc  9b883100  andi r17, r3, 3
0001d0  e3451f00  loadli.w r11,  12(r30)
0001d4  00d30002  load_param_i r6, 1
0001d8  9bc12100  srli r3, r3, 2
0001dc  1f0a0002  addli r20, zero, 256
0001e0  eb548f01  load.d r[10:11], 24(r30)
0001e4  63428f00  loadli.w r4,  68(r30)
0001e8  eb530f05  load.d r[8:9], 80(r30)
0001ec  9f0b0ff6  addli r23, r30, -1280
0001f0  2b0e0080  lui r28, 524288
0001f4  9f0d8000  addli r27, zero, 64
0001f8  1bb68800  slli r12, r17, 8
0001fc  67036fee  storeli.w r6, -2256(r30)
000200  1b83f100  andi r6, r3, 15
000204  8b95c518  sub.s r11, r11, r12
000208  b3060628  zext_int2long r[14:15], r12
00020c  b3070328  zext_int2long r[16:17], r6
000210  8b910548  max.s r3, r11, zero
000214  8bb4d420  mul.sl r[10:11], r[10:11], r[14:15]
000218  9f055fee  addli r11, r30, -2264
00021c  8b914141  min.s r3, r3, r20
000220  73b09500  store.d r[10:11], 0(r11)
000224  9bb4a800  slli r9, r17, 10
000228  1f054000  addli r10, zero, 32
00022c  9bb12100  slli r3, r3, 2
000230  8b949010  add.s r9, r1, r9
000234  67423fee  storeli.w r3, -2268(r30)
000238  abf1ffff  lui r3, 1048575
00023c  9b9101ff  ori r3, r3, 4080
000240  17013100  and r2, r2, r3
000244  abf10300  lui r3, 63
000248  8b902010  add.s r1, r1, r2
00024c  0b9c3410  add.s r24, r9, r3
000250  8b11c218  sub.s r3, r4, r12
000254  2b610000  lui r2, 6
000258  1f023fee  addli r4, r30, -2280
00025c  9f040001  addli r9, zero, 128
000260  1b110101  ori r2, r2, 16
000264  8b910148  max.s r3, r3, zero
000268  9f8c0040  addli r25, r1, 8192
00026c  0b9d2010  add.s r26, r1, r2
000270  8b904141  min.s r1, r3, r20
000274  0bb1d320  mul.sl r[3:4], r[8:9], r[14:15]
000278  1f240000  addli r8, zero, 2
00027c  9f060ffe  addli r13, r30, -256
000280  9f030300  addli r7, r6, 0
000284  73302200  store.d r[3:4], 0(r4)
000288  abf10000  lui r3, 15
00028c  9bb02000  slli r1, r1, 2
000290  9b95f1ff  ori r11, r3, 4095
000294  5b090000  j 72
000298  6b598f04  load.d r[19:20], 72(r30)
00029c  0bb12121  mul.sl r[3:4], r[4:5], r[19:20]
0002a0  1f023fee  addli r4, r30, -2280
0002a4  6b590200  load.d r[19:20], 0(r4)
0002a8  2b0200f0  lui r4, 983040
0002ac  17124700  or r4, r14, r4
0002b0  0b212111  add.ul r[3:4], r[3:4], r[19:20]
0002b4  6b598f03  load.d r[19:20], 56(r30)
0002b8  17318102  sll.d r[3:4], r[3:4], r8
0002bc  0b212910  add.ul r[3:4], r[19:20], r[3:4]
0002c0  7f327101  s_lm2gm r4, r23, 0(r[3:4])
0002c4  63016fee  loadli.w r2,  -2256(r30)
0002c8  00a00000  mfence { lm }
0002cc  8b922210  add.s r5, r5, r2
0002d0  63417fee  loadli.w r2,  -2244(r30)
0002d4  3fa02200  blt.s r5, r2, 8
0002d8  db390200  j 4556
0002dc  6341cf00  loadli.w r2,  100(r30)
0002e0  63474fee  loadli.w r14,  -2268(r30)
0002e4  8b912230  div.s r3, r5, r2
0002e8  6301cf00  loadli.w r2,  96(r30)
0002ec  8b912130  div.s r3, r3, r2
0002f0  63011f00  loadli.w r2,  8(r30)
0002f4  9bb14100  slli r3, r3, 4
0002f8  17967100  or r12, r3, r7
0002fc  3f202600  blt.s r12, r2, 8
000300  1f070000  addli r14, zero, 0
000304  b3910128  sext_int2long r[4:5], r3
000308  6b590f01  load.d r[19:20], 16(r30)
00030c  1f015fee  addli r2, r30, -2264
000310  2b0300f0  lui r6, 983040
000314  9791f102  or.d r[4:5], r[4:5], r[16:17]
000318  17136700  or r6, r14, r6
00031c  8bba2121  mul.sl r[22:23], r[4:5], r[19:20]
000320  6b590100  load.d r[19:20], 0(r2)
000324  1f010ff6  addli r2, r30, -1280
000328  8baa2a11  add.ul r[22:23], r[22:23], r[19:20]
00032c  6b590f00  load.d r[19:20], 0(r30)
000330  97ba8a02  sll.d r[22:23], r[22:23], r8
000334  1f040002  addli r8, zero, 256
000338  8b2a5911  add.ul r[22:23], r[19:20], r[22:23]
00033c  7fa37a01  l_gm2lm r6, r23, 0(r[22:23])
000340  00a00000  mfence { lm }
000344  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
000348  1f018ff6  addli r2, r30, -1216
00034c  ca110c02  vloads_mask16.mz vr3{mr1}, 0(r24)
000350  ca128c02  vloads_mask16.mz vr5{mr1}, 64(r24)
000354  ca130c03  vloads_mask16.mz vr7{mr1}, 128(r24)
000358  42140102  vload_mask16.mz vr8{mr1}, 0(r2)
00035c  1f010ff7  addli r2, r30, -1152
000360  4a128c03  vloads_mask16.mz vr4{mr1}, 192(r24)
000364  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
000368  1f018ff7  addli r2, r30, -1088
00036c  4a100c22  vloads_mask16.mz vr0{mr1}, 256(r24)
000370  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
000374  ca108c22  vloads_mask16.mz vr1{mr1}, 320(r24)
000378  c2140f82  vload_mask16.mz vr9{mr1}, 1024(r30)
00037c  4a110c23  vloads_mask16.mz vr2{mr1}, 384(r24)
000380  1f010ff3  addli r2, r30, -1664
000384  16900402  vadd.f.mz.rn vr0{mr1}, vr9, vr0
000388  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
00038c  16113302  vadd.f.mz.rn vr2{mr1}, vr6, vr3
000390  1f018ff2  addli r2, r30, -1728
000394  96117502  vadd.f.mz.rn vr3{mr1}, vr10, vr7
000398  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
00039c  16115402  vadd.f.mz.rn vr2{mr1}, vr8, vr5
0003a0  1f010ff5  addli r2, r30, -1408
0003a4  42138f82  vload_mask16.mz vr6{mr1}, 1088(r30)
0003a8  ca130c42  vloads_mask16.mz vr7{mr1}, 512(r24)
0003ac  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
0003b0  1f018ff4  addli r2, r30, -1472
0003b4  4a118c23  vloads_mask16.mz vr2{mr1}, 448(r24)
0003b8  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
0003bc  96914502  vadd.f.mz.rn vr3{mr1}, vr11, vr4
0003c0  1f010ff4  addli r2, r30, -1536
0003c4  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
0003c8  1f018ff3  addli r2, r30, -1600
0003cc  42120f83  vload_mask16.mz vr4{mr1}, 1152(r30)
0003d0  ca148c42  vloads_mask16.mz vr9{mr1}, 576(r24)
0003d4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0003d8  16101302  vadd.f.mz.rn vr0{mr1}, vr6, vr1
0003dc  1f018ff5  addli r2, r30, -1344
0003e0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0003e4  1f010ff3  addli r2, r30, -1664
0003e8  42138f83  vload_mask16.mz vr6{mr1}, 1216(r30)
0003ec  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0003f0  16142302  vadd.f.mz.rn vr8{mr1}, vr6, vr2
0003f4  96110202  vadd.f.mz.rn vr3{mr1}, vr4, vr0
0003f8  42120fa2  vload_mask16.mz vr4{mr1}, 1280(r30)
0003fc  4a100c43  vloads_mask16.mz vr0{mr1}, 640(r24)
000400  ca108c43  vloads_mask16.mz vr1{mr1}, 704(r24)
000404  ca120c62  vloads_mask16.mz vr5{mr1}, 768(r24)
000408  16117202  vadd.f.mz.rn vr2{mr1}, vr4, vr7
00040c  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
000410  1f010ff2  addli r2, r30, -1792
000414  42128fa2  vload_mask16.mz vr4{mr1}, 1344(r30)
000418  4a118c63  vloads_mask16.mz vr2{mr1}, 960(r24)
00041c  4a138c62  vloads_mask16.mz vr6{mr1}, 832(r24)
000420  ca150c63  vloads_mask16.mz vr11{mr1}, 896(r24)
000424  96139202  vadd.f.mz.rn vr7{mr1}, vr4, vr9
000428  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
00042c  42120fa3  vload_mask16.mz vr4{mr1}, 1408(r30)
000430  c2148fa3  vload_mask16.mz vr9{mr1}, 1472(r30)
000434  42150fc2  vload_mask16.mz vr10{mr1}, 1536(r30)
000438  16110202  vadd.f.mz.rn vr2{mr1}, vr4, vr0
00043c  42108fc2  vload_mask16.mz vr0{mr1}, 1600(r30)
000440  16921402  vadd.f.mz.rn vr4{mr1}, vr9, vr1
000444  c2100fc3  vload_mask16.mz vr1{mr1}, 1664(r30)
000448  96145502  vadd.f.mz.rn vr9{mr1}, vr10, vr5
00044c  42158fc3  vload_mask16.mz vr10{mr1}, 1728(r30)
000450  16136002  vadd.f.mz.rn vr6{mr1}, vr0, vr6
000454  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
000458  1f010ff3  addli r2, r30, -1664
00045c  9690b002  vadd.f.mz.rn vr1{mr1}, vr1, vr11
000460  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
000464  1f010ff5  addli r2, r30, -1408
000468  96150502  vadd.f.mz.rn vr11{mr1}, vr10, vr0
00046c  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
000470  1f018ff2  addli r2, r30, -1728
000474  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
000478  1f018ff4  addli r2, r30, -1472
00047c  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
000480  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
000484  1f010ff4  addli r2, r30, -1536
000488  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
00048c  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
000490  1f018ff3  addli r2, r30, -1600
000494  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
000498  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
00049c  1f018ff5  addli r2, r30, -1344
0004a0  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
0004a4  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
0004a8  1f018fef  addli r2, r30, -2112
0004ac  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
0004b0  36103002  vmax.f.mz vr0{mr1}, vr0, vr3
0004b4  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
0004b8  1f018fee  addli r2, r30, -2240
0004bc  36108002  vmax.f.mz vr0{mr1}, vr0, vr8
0004c0  36105002  vmax.f.mz vr0{mr1}, vr0, vr5
0004c4  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
0004c8  1f010fef  addli r2, r30, -2176
0004cc  36107002  vmax.f.mz vr0{mr1}, vr0, vr7
0004d0  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
0004d4  46107102  vstore_mask16.mz vr7{mr1}, 0(r2)
0004d8  1f010ff0  addli r2, r30, -2048
0004dc  36104002  vmax.f.mz vr0{mr1}, vr0, vr4
0004e0  36109002  vmax.f.mz vr0{mr1}, vr0, vr9
0004e4  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
0004e8  1f018ff0  addli r2, r30, -1984
0004ec  36106002  vmax.f.mz vr0{mr1}, vr0, vr6
0004f0  1231b002  vadd.s.mz vr2{mr1}, zero, vr11
0004f4  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0004f8  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
0004fc  1f010ff1  addli r2, r30, -1920
000500  3610b002  vmax.f.mz vr0{mr1}, vr0, vr11
000504  46109102  vstore_mask16.mz vr9{mr1}, 0(r2)
000508  1f010ff2  addli r2, r30, -1792
00050c  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
000510  1f018ff1  addli r2, r30, -1856
000514  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
000518  ea700ac0  vsrl.p vr1, r20, vr0
00051c  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000520  63416fee  loadli.w r2,  -2252(r30)
000524  eaf004c0  vsrl.p vr1, r9, vr0
000528  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
00052c  eaf00dc0  vsrl.p vr1, r27, vr0
000530  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000534  ea7005c0  vsrl.p vr1, r10, vr0
000538  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
00053c  7a130040  vextracti.f r6, 0(vr0)
000540  73606100  stores.w r6, 0(r2)
000544  00a00300  mfence { lm, sm, gm }
000548  80a10504  csr_set csr3, r11
00054c  00d00100  sync_group
000550  bb900800  bneq r17, zero, 36
000554  6fc30c00  loads.w r6, 0(r25)
000558  6fc74c00  loads.w r14, 4(r25)
00055c  efca8c00  loads.w r21, 8(r25)
000560  6fcbcc00  loads.w r22, 12(r25)
000564  0b63e348  max.f r6, r6, r14
000568  0b635349  max.f r6, r6, r21
00056c  0b636349  max.f r6, r6, r22
000570  73e06c00  stores.w r6, 0(r25)
000574  00a00300  mfence { lm, sm, gm }
000578  80a10504  csr_set csr3, r11
00057c  00d00100  sync_group
000580  6fc30c00  loads.w r6, 0(r25)
000584  1f018ff2  addli r2, r30, -1728
000588  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
00058c  1f010ff5  addli r2, r30, -1408
000590  1727c301  xor r14, r6, r28
000594  92110702  vadd.f.mz.rn vr3{mr1}, r14, vr0
000598  46103fe2  vstore_mask16.mz vr3{mr1}, 1792(r30)
00059c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0005a0  1f018ff4  addli r2, r30, -1472
0005a4  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
0005a8  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
0005ac  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0005b0  1f010ff4  addli r2, r30, -1536
0005b4  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
0005b8  46180fe2  vstore_mask16.mz vr0{mr1}, 1920(r30)
0005bc  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0005c0  1f018ff3  addli r2, r30, -1600
0005c4  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
0005c8  461c0fe2  vstore_mask16.mz vr0{mr1}, 1984(r30)
0005cc  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0005d0  00a00000  mfence { lm }
0005d4  63830600  loadli.w r6,  0(r13)
0005d8  e3ca0600  loadli.w r21,  4(r13)
0005dc  638b1600  loadli.w r22,  8(r13)
0005e0  63c91600  loadli.w r18,  12(r13)
0005e4  638a2600  loadli.w r20,  16(r13)
0005e8  e3cb2600  loadli.w r23,  20(r13)
0005ec  e3893600  loadli.w r19,  24(r13)
0005f0  63c13600  loadli.w r2,  28(r13)
0005f4  0f030300  exp.f.rn r6, r6
0005f8  8f8a0a00  exp.f.rn r21, r21
0005fc  0f0b0b00  exp.f.rn r22, r22
000600  0f090900  exp.f.rn r18, r18
000604  0f0a0a00  exp.f.rn r20, r20
000608  8f8b0b00  exp.f.rn r23, r23
00060c  8f890900  exp.f.rn r19, r19
000610  0f010100  exp.f.rn r2, r2
000614  67806600  storeli.w r6, 0(r13)
000618  67c05601  storeli.w r21, 4(r13)
00061c  e7806601  storeli.w r22, 8(r13)
000620  e7c02601  storeli.w r18, 12(r13)
000624  67814601  storeli.w r20, 16(r13)
000628  67c17601  storeli.w r23, 20(r13)
00062c  e7813601  storeli.w r19, 24(r13)
000630  e7c12600  storeli.w r2, 28(r13)
000634  63834600  loadli.w r6,  32(r13)
000638  e3ca4600  loadli.w r21,  36(r13)
00063c  638b5600  loadli.w r22,  40(r13)
000640  63c95600  loadli.w r18,  44(r13)
000644  638a6600  loadli.w r20,  48(r13)
000648  e3cb6600  loadli.w r23,  52(r13)
00064c  e3897600  loadli.w r19,  56(r13)
000650  63c17600  loadli.w r2,  60(r13)
000654  0f030300  exp.f.rn r6, r6
000658  8f8a0a00  exp.f.rn r21, r21
00065c  0f0b0b00  exp.f.rn r22, r22
000660  0f090900  exp.f.rn r18, r18
000664  0f0a0a00  exp.f.rn r20, r20
000668  8f8b0b00  exp.f.rn r23, r23
00066c  8f890900  exp.f.rn r19, r19
000670  0f010100  exp.f.rn r2, r2
000674  67826600  storeli.w r6, 32(r13)
000678  67c25601  storeli.w r21, 36(r13)
00067c  e7826601  storeli.w r22, 40(r13)
000680  e7c22601  storeli.w r18, 44(r13)
000684  67834601  storeli.w r20, 48(r13)
000688  67c37601  storeli.w r23, 52(r13)
00068c  e7833601  storeli.w r19, 56(r13)
000690  e7c32600  storeli.w r2, 60(r13)
000694  63838600  loadli.w r6,  64(r13)
000698  e3ca8600  loadli.w r21,  68(r13)
00069c  638b9600  loadli.w r22,  72(r13)
0006a0  63c99600  loadli.w r18,  76(r13)
0006a4  638aa600  loadli.w r20,  80(r13)
0006a8  e3cba600  loadli.w r23,  84(r13)
0006ac  e389b600  loadli.w r19,  88(r13)
0006b0  63c1b600  loadli.w r2,  92(r13)
0006b4  0f030300  exp.f.rn r6, r6
0006b8  8f8a0a00  exp.f.rn r21, r21
0006bc  0f0b0b00  exp.f.rn r22, r22
0006c0  0f090900  exp.f.rn r18, r18
0006c4  0f0a0a00  exp.f.rn r20, r20
0006c8  8f8b0b00  exp.f.rn r23, r23
0006cc  8f890900  exp.f.rn r19, r19
0006d0  0f010100  exp.f.rn r2, r2
0006d4  67846600  storeli.w r6, 64(r13)
0006d8  67c45601  storeli.w r21, 68(r13)
0006dc  e7846601  storeli.w r22, 72(r13)
0006e0  e7c42601  storeli.w r18, 76(r13)
0006e4  67854601  storeli.w r20, 80(r13)
0006e8  67c57601  storeli.w r23, 84(r13)
0006ec  e7853601  storeli.w r19, 88(r13)
0006f0  e7c52600  storeli.w r2, 92(r13)
0006f4  6383c600  loadli.w r6,  96(r13)
0006f8  e3cac600  loadli.w r21,  100(r13)
0006fc  638bd600  loadli.w r22,  104(r13)
000700  63c9d600  loadli.w r18,  108(r13)
000704  638ae600  loadli.w r20,  112(r13)
000708  e3cbe600  loadli.w r23,  116(r13)
00070c  e389f600  loadli.w r19,  120(r13)
000710  63c1f600  loadli.w r2,  124(r13)
000714  0f030300  exp.f.rn r6, r6
000718  8f8a0a00  exp.f.rn r21, r21
00071c  0f0b0b00  exp.f.rn r22, r22
000720  0f090900  exp.f.rn r18, r18
000724  0f0a0a00  exp.f.rn r20, r20
000728  8f8b0b00  exp.f.rn r23, r23
00072c  8f890900  exp.f.rn r19, r19
000730  0f010100  exp.f.rn r2, r2
000734  67866600  storeli.w r6, 96(r13)
000738  67c65601  storeli.w r21, 100(r13)
00073c  e7866601  storeli.w r22, 104(r13)
000740  e7c62601  storeli.w r18, 108(r13)
000744  67874601  storeli.w r20, 112(r13)
000748  67c77601  storeli.w r23, 116(r13)
00074c  e7873601  storeli.w r19, 120(r13)
000750  e7c72600  storeli.w r2, 124(r13)
000754  63830601  loadli.w r6,  128(r13)
000758  e3ca0601  loadli.w r21,  132(r13)
00075c  638b1601  loadli.w r22,  136(r13)
000760  63c91601  loadli.w r18,  140(r13)
000764  638a2601  loadli.w r20,  144(r13)
000768  e3cb2601  loadli.w r23,  148(r13)
00076c  e3893601  loadli.w r19,  152(r13)
000770  63c13601  loadli.w r2,  156(r13)
000774  0f030300  exp.f.rn r6, r6
000778  8f8a0a00  exp.f.rn r21, r21
00077c  0f0b0b00  exp.f.rn r22, r22
000780  0f090900  exp.f.rn r18, r18
000784  0f0a0a00  exp.f.rn r20, r20
000788  8f8b0b00  exp.f.rn r23, r23
00078c  8f890900  exp.f.rn r19, r19
000790  0f010100  exp.f.rn r2, r2
000794  67886600  storeli.w r6, 128(r13)
000798  67c85601  storeli.w r21, 132(r13)
00079c  e7886601  storeli.w r22, 136(r13)
0007a0  e7c82601  storeli.w r18, 140(r13)
0007a4  67894601  storeli.w r20, 144(r13)
0007a8  67c97601  storeli.w r23, 148(r13)
0007ac  e7893601  storeli.w r19, 152(r13)
0007b0  e7c92600  storeli.w r2, 156(r13)
0007b4  63834601  loadli.w r6,  160(r13)
0007b8  e3ca4601  loadli.w r21,  164(r13)
0007bc  638b5601  loadli.w r22,  168(r13)
0007c0  63c95601  loadli.w r18,  172(r13)
0007c4  638a6601  loadli.w r20,  176(r13)
0007c8  e3cb6601  loadli.w r23,  180(r13)
0007cc  e3897601  loadli.w r19,  184(r13)
0007d0  63c17601  loadli.w r2,  188(r13)
0007d4  0f030300  exp.f.rn r6, r6
0007d8  8f8a0a00  exp.f.rn r21, r21
0007dc  0f0b0b00  exp.f.rn r22, r22
0007e0  0f090900  exp.f.rn r18, r18
0007e4  0f0a0a00  exp.f.rn r20, r20
0007e8  8f8b0b00  exp.f.rn r23, r23
0007ec  8f890900  exp.f.rn r19, r19
0007f0  0f010100  exp.f.rn r2, r2
0007f4  678a6600  storeli.w r6, 160(r13)
0007f8  67ca5601  storeli.w r21, 164(r13)
0007fc  e78a6601  storeli.w r22, 168(r13)
000800  e7ca2601  storeli.w r18, 172(r13)
000804  678b4601  storeli.w r20, 176(r13)
000808  67cb7601  storeli.w r23, 180(r13)
00080c  e78b3601  storeli.w r19, 184(r13)
000810  e7cb2600  storeli.w r2, 188(r13)
000814  63838601  loadli.w r6,  192(r13)
000818  e3ca8601  loadli.w r21,  196(r13)
00081c  638b9601  loadli.w r22,  200(r13)
000820  63c99601  loadli.w r18,  204(r13)
000824  638aa601  loadli.w r20,  208(r13)
000828  e3cba601  loadli.w r23,  212(r13)
00082c  e389b601  loadli.w r19,  216(r13)
000830  63c1b601  loadli.w r2,  220(r13)
000834  0f030300  exp.f.rn r6, r6
000838  8f8a0a00  exp.f.rn r21, r21
00083c  0f0b0b00  exp.f.rn r22, r22
000840  0f090900  exp.f.rn r18, r18
000844  0f0a0a00  exp.f.rn r20, r20
000848  8f8b0b00  exp.f.rn r23, r23
00084c  8f890900  exp.f.rn r19, r19
000850  0f010100  exp.f.rn r2, r2
000854  678c6600  storeli.w r6, 192(r13)
000858  67cc5601  storeli.w r21, 196(r13)
00085c  e78c6601  storeli.w r22, 200(r13)
000860  e7cc2601  storeli.w r18, 204(r13)
000864  678d4601  storeli.w r20, 208(r13)
000868  67cd7601  storeli.w r23, 212(r13)
00086c  e78d3601  storeli.w r19, 216(r13)
000870  e7cd2600  storeli.w r2, 220(r13)
000874  6383c601  loadli.w r6,  224(r13)
000878  e3cac601  loadli.w r21,  228(r13)
00087c  638bd601  loadli.w r22,  232(r13)
000880  63c9d601  loadli.w r18,  236(r13)
000884  638ae601  loadli.w r20,  240(r13)
000888  e3cbe601  loadli.w r23,  244(r13)
00088c  e389f601  loadli.w r19,  248(r13)
000890  63c1f601  loadli.w r2,  252(r13)
000894  0f030300  exp.f.rn r6, r6
000898  8f8a0a00  exp.f.rn r21, r21
00089c  0f0b0b00  exp.f.rn r22, r22
0008a0  0f090900  exp.f.rn r18, r18
0008a4  0f0a0a00  exp.f.rn r20, r20
0008a8  8f8b0b00  exp.f.rn r23, r23
0008ac  8f890900  exp.f.rn r19, r19
0008b0  0f010100  exp.f.rn r2, r2
0008b4  678e6600  storeli.w r6, 224(r13)
0008b8  67ce5601  storeli.w r21, 228(r13)
0008bc  e78e6601  storeli.w r22, 232(r13)
0008c0  e7ce2601  storeli.w r18, 236(r13)
0008c4  678f4601  storeli.w r20, 240(r13)
0008c8  67cf7601  storeli.w r23, 244(r13)
0008cc  e78f3601  storeli.w r19, 248(r13)
0008d0  e7cf2600  storeli.w r2, 252(r13)
0008d4  00a00000  mfence { lm }
0008d8  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
0008dc  c2108fe2  vload_mask16.mz vr1{mr1}, 1856(r30)
0008e0  1f018ff5  addli r2, r30, -1344
0008e4  c2110fe3  vload_mask16.mz vr3{mr1}, 1920(r30)
0008e8  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
0008ec  c2158fe3  vload_mask16.mz vr11{mr1}, 1984(r30)
0008f0  46100fe2  vstore_mask16.mz vr0{mr1}, 1792(r30)
0008f4  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0008f8  1f018fef  addli r2, r30, -2112
0008fc  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
000900  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
000904  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
000908  1f018ff4  addli r2, r30, -1472
00090c  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
000910  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
000914  1f018ff3  addli r2, r30, -1600
000918  96101202  vadd.f.mz.rn vr1{mr1}, vr4, vr1
00091c  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
000920  1f018fee  addli r2, r30, -2240
000924  46180fe2  vstore_mask16.mz vr0{mr1}, 1920(r30)
000928  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
00092c  1f010ff5  addli r2, r30, -1408
000930  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
000934  461c0fe2  vstore_mask16.mz vr0{mr1}, 1984(r30)
000938  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
00093c  1f010ff3  addli r2, r30, -1664
000940  16903002  vadd.f.mz.rn vr0{mr1}, vr1, vr3
000944  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
000948  00a00000  mfence { lm }
00094c  63810600  loadli.w r2,  0(r13)
000950  63c30600  loadli.w r6,  4(r13)
000954  63891600  loadli.w r18,  8(r13)
000958  e3c91600  loadli.w r19,  12(r13)
00095c  638a2600  loadli.w r20,  16(r13)
000960  e3ca2600  loadli.w r21,  20(r13)
000964  638b3600  loadli.w r22,  24(r13)
000968  e3cb3600  loadli.w r23,  28(r13)
00096c  0f010100  exp.f.rn r2, r2
000970  0f030300  exp.f.rn r6, r6
000974  0f090900  exp.f.rn r18, r18
000978  8f890900  exp.f.rn r19, r19
00097c  0f0a0a00  exp.f.rn r20, r20
000980  8f8a0a00  exp.f.rn r21, r21
000984  0f0b0b00  exp.f.rn r22, r22
000988  8f8b0b00  exp.f.rn r23, r23
00098c  67802600  storeli.w r2, 0(r13)
000990  67c06600  storeli.w r6, 4(r13)
000994  e7802601  storeli.w r18, 8(r13)
000998  e7c03601  storeli.w r19, 12(r13)
00099c  67814601  storeli.w r20, 16(r13)
0009a0  67c15601  storeli.w r21, 20(r13)
0009a4  e7816601  storeli.w r22, 24(r13)
0009a8  e7c17601  storeli.w r23, 28(r13)
0009ac  63814600  loadli.w r2,  32(r13)
0009b0  63c34600  loadli.w r6,  36(r13)
0009b4  63895600  loadli.w r18,  40(r13)
0009b8  e3c95600  loadli.w r19,  44(r13)
0009bc  638a6600  loadli.w r20,  48(r13)
0009c0  e3ca6600  loadli.w r21,  52(r13)
0009c4  638b7600  loadli.w r22,  56(r13)
0009c8  e3cb7600  loadli.w r23,  60(r13)
0009cc  0f010100  exp.f.rn r2, r2
0009d0  0f030300  exp.f.rn r6, r6
0009d4  0f090900  exp.f.rn r18, r18
0009d8  8f890900  exp.f.rn r19, r19
0009dc  0f0a0a00  exp.f.rn r20, r20
0009e0  8f8a0a00  exp.f.rn r21, r21
0009e4  0f0b0b00  exp.f.rn r22, r22
0009e8  8f8b0b00  exp.f.rn r23, r23
0009ec  67822600  storeli.w r2, 32(r13)
0009f0  67c26600  storeli.w r6, 36(r13)
0009f4  e7822601  storeli.w r18, 40(r13)
0009f8  e7c23601  storeli.w r19, 44(r13)
0009fc  67834601  storeli.w r20, 48(r13)
000a00  67c35601  storeli.w r21, 52(r13)
000a04  e7836601  storeli.w r22, 56(r13)
000a08  e7c37601  storeli.w r23, 60(r13)
000a0c  63818600  loadli.w r2,  64(r13)
000a10  63c38600  loadli.w r6,  68(r13)
000a14  63899600  loadli.w r18,  72(r13)
000a18  e3c99600  loadli.w r19,  76(r13)
000a1c  638aa600  loadli.w r20,  80(r13)
000a20  e3caa600  loadli.w r21,  84(r13)
000a24  638bb600  loadli.w r22,  88(r13)
000a28  e3cbb600  loadli.w r23,  92(r13)
000a2c  0f010100  exp.f.rn r2, r2
000a30  0f030300  exp.f.rn r6, r6
000a34  0f090900  exp.f.rn r18, r18
000a38  8f890900  exp.f.rn r19, r19
000a3c  0f0a0a00  exp.f.rn r20, r20
000a40  8f8a0a00  exp.f.rn r21, r21
000a44  0f0b0b00  exp.f.rn r22, r22
000a48  8f8b0b00  exp.f.rn r23, r23
000a4c  67842600  storeli.w r2, 64(r13)
000a50  67c46600  storeli.w r6, 68(r13)
000a54  e7842601  storeli.w r18, 72(r13)
000a58  e7c43601  storeli.w r19, 76(r13)
000a5c  67854601  storeli.w r20, 80(r13)
000a60  67c55601  storeli.w r21, 84(r13)
000a64  e7856601  storeli.w r22, 88(r13)
000a68  e7c57601  storeli.w r23, 92(r13)
000a6c  6381c600  loadli.w r2,  96(r13)
000a70  63c3c600  loadli.w r6,  100(r13)
000a74  6389d600  loadli.w r18,  104(r13)
000a78  e3c9d600  loadli.w r19,  108(r13)
000a7c  638ae600  loadli.w r20,  112(r13)
000a80  e3cae600  loadli.w r21,  116(r13)
000a84  638bf600  loadli.w r22,  120(r13)
000a88  e3cbf600  loadli.w r23,  124(r13)
000a8c  0f010100  exp.f.rn r2, r2
000a90  0f030300  exp.f.rn r6, r6
000a94  0f090900  exp.f.rn r18, r18
000a98  8f890900  exp.f.rn r19, r19
000a9c  0f0a0a00  exp.f.rn r20, r20
000aa0  8f8a0a00  exp.f.rn r21, r21
000aa4  0f0b0b00  exp.f.rn r22, r22
000aa8  8f8b0b00  exp.f.rn r23, r23
000aac  67862600  storeli.w r2, 96(r13)
000ab0  67c66600  storeli.w r6, 100(r13)
000ab4  e7862601  storeli.w r18, 104(r13)
000ab8  e7c63601  storeli.w r19, 108(r13)
000abc  67874601  storeli.w r20, 112(r13)
000ac0  67c75601  storeli.w r21, 116(r13)
000ac4  e7876601  storeli.w r22, 120(r13)
000ac8  e7c77601  storeli.w r23, 124(r13)
000acc  63810601  loadli.w r2,  128(r13)
000ad0  63c30601  loadli.w r6,  132(r13)
000ad4  63891601  loadli.w r18,  136(r13)
000ad8  e3c91601  loadli.w r19,  140(r13)
000adc  638a2601  loadli.w r20,  144(r13)
000ae0  e3ca2601  loadli.w r21,  148(r13)
000ae4  638b3601  loadli.w r22,  152(r13)
000ae8  e3cb3601  loadli.w r23,  156(r13)
000aec  0f010100  exp.f.rn r2, r2
000af0  0f030300  exp.f.rn r6, r6
000af4  0f090900  exp.f.rn r18, r18
000af8  8f890900  exp.f.rn r19, r19
000afc  0f0a0a00  exp.f.rn r20, r20
000b00  8f8a0a00  exp.f.rn r21, r21
000b04  0f0b0b00  exp.f.rn r22, r22
000b08  8f8b0b00  exp.f.rn r23, r23
000b0c  67882600  storeli.w r2, 128(r13)
000b10  67c86600  storeli.w r6, 132(r13)
000b14  e7882601  storeli.w r18, 136(r13)
000b18  e7c83601  storeli.w r19, 140(r13)
000b1c  67894601  storeli.w r20, 144(r13)
000b20  67c95601  storeli.w r21, 148(r13)
000b24  e7896601  storeli.w r22, 152(r13)
000b28  e7c97601  storeli.w r23, 156(r13)
000b2c  63814601  loadli.w r2,  160(r13)
000b30  63c34601  loadli.w r6,  164(r13)
000b34  63895601  loadli.w r18,  168(r13)
000b38  e3c95601  loadli.w r19,  172(r13)
000b3c  638a6601  loadli.w r20,  176(r13)
000b40  e3ca6601  loadli.w r21,  180(r13)
000b44  638b7601  loadli.w r22,  184(r13)
000b48  e3cb7601  loadli.w r23,  188(r13)
000b4c  0f010100  exp.f.rn r2, r2
000b50  0f030300  exp.f.rn r6, r6
000b54  0f090900  exp.f.rn r18, r18
000b58  8f890900  exp.f.rn r19, r19
000b5c  0f0a0a00  exp.f.rn r20, r20
000b60  8f8a0a00  exp.f.rn r21, r21
000b64  0f0b0b00  exp.f.rn r22, r22
000b68  8f8b0b00  exp.f.rn r23, r23
000b6c  678a2600  storeli.w r2, 160(r13)
000b70  67ca6600  storeli.w r6, 164(r13)
000b74  e78a2601  storeli.w r18, 168(r13)
000b78  e7ca3601  storeli.w r19, 172(r13)
000b7c  678b4601  storeli.w r20, 176(r13)
000b80  67cb5601  storeli.w r21, 180(r13)
000b84  e78b6601  storeli.w r22, 184(r13)
000b88  e7cb7601  storeli.w r23, 188(r13)
000b8c  63818601  loadli.w r2,  192(r13)
000b90  63c38601  loadli.w r6,  196(r13)
000b94  63899601  loadli.w r18,  200(r13)
000b98  e3c99601  loadli.w r19,  204(r13)
000b9c  638aa601  loadli.w r20,  208(r13)
000ba0  e3caa601  loadli.w r21,  212(r13)
000ba4  638bb601  loadli.w r22,  216(r13)
000ba8  e3cbb601  loadli.w r23,  220(r13)
000bac  0f010100  exp.f.rn r2, r2
000bb0  0f030300  exp.f.rn r6, r6
000bb4  0f090900  exp.f.rn r18, r18
000bb8  8f890900  exp.f.rn r19, r19
000bbc  0f0a0a00  exp.f.rn r20, r20
000bc0  8f8a0a00  exp.f.rn r21, r21
000bc4  0f0b0b00  exp.f.rn r22, r22
000bc8  8f8b0b00  exp.f.rn r23, r23
000bcc  678c2600  storeli.w r2, 192(r13)
000bd0  67cc6600  storeli.w r6, 196(r13)
000bd4  e78c2601  storeli.w r18, 200(r13)
000bd8  e7cc3601  storeli.w r19, 204(r13)
000bdc  678d4601  storeli.w r20, 208(r13)
000be0  67cd5601  storeli.w r21, 212(r13)
000be4  e78d6601  storeli.w r22, 216(r13)
000be8  e7cd7601  storeli.w r23, 220(r13)
000bec  6381c601  loadli.w r2,  224(r13)
000bf0  63c3c601  loadli.w r6,  228(r13)
000bf4  6389d601  loadli.w r18,  232(r13)
000bf8  e3c9d601  loadli.w r19,  236(r13)
000bfc  638ae601  loadli.w r20,  240(r13)
000c00  e3cae601  loadli.w r21,  244(r13)
000c04  638bf601  loadli.w r22,  248(r13)
000c08  e3cbf601  loadli.w r23,  252(r13)
000c0c  0f010100  exp.f.rn r2, r2
000c10  0f030300  exp.f.rn r6, r6
000c14  0f090900  exp.f.rn r18, r18
000c18  8f890900  exp.f.rn r19, r19
000c1c  0f0a0a00  exp.f.rn r20, r20
000c20  8f8a0a00  exp.f.rn r21, r21
000c24  0f0b0b00  exp.f.rn r22, r22
000c28  8f8b0b00  exp.f.rn r23, r23
000c2c  678e2600  storeli.w r2, 224(r13)
000c30  67ce6600  storeli.w r6, 228(r13)
000c34  e78e2601  storeli.w r18, 232(r13)
000c38  e7ce3601  storeli.w r19, 236(r13)
000c3c  678f4601  storeli.w r20, 240(r13)
000c40  67cf5601  storeli.w r21, 244(r13)
000c44  e78f6601  storeli.w r22, 248(r13)
000c48  e7cf7601  storeli.w r23, 252(r13)
000c4c  00a00000  mfence { lm }
000c50  92111702  vadd.f.mz.rn vr3{mr1}, r14, vr1
000c54  42130fe2  vload_mask16.mz vr6{mr1}, 1792(r30)
000c58  1f018ff5  addli r2, r30, -1344
000c5c  1610b002  vadd.f.mz.rn vr0{mr1}, vr0, vr11
000c60  4610b102  vstore_mask16.mz vr11{mr1}, 0(r2)
000c64  1f010fef  addli r2, r30, -2176
000c68  42148fe2  vload_mask16.mz vr8{mr1}, 1856(r30)
000c6c  c2130fe3  vload_mask16.mz vr7{mr1}, 1920(r30)
000c70  42128fe3  vload_mask16.mz vr4{mr1}, 1984(r30)
000c74  46103fe2  vstore_mask16.mz vr3{mr1}, 1792(r30)
000c78  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
000c7c  1f010ff0  addli r2, r30, -2048
000c80  92111702  vadd.f.mz.rn vr3{mr1}, r14, vr1
000c84  46143fe2  vstore_mask16.mz vr3{mr1}, 1856(r30)
000c88  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
000c8c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
000c90  1f018ff0  addli r2, r30, -1984
000c94  92111702  vadd.f.mz.rn vr3{mr1}, r14, vr1
000c98  46183fe2  vstore_mask16.mz vr3{mr1}, 1920(r30)
000c9c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
000ca0  1f010ff3  addli r2, r30, -1664
000ca4  92111702  vadd.f.mz.rn vr3{mr1}, r14, vr1
000ca8  461c3fe2  vstore_mask16.mz vr3{mr1}, 1984(r30)
000cac  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
000cb0  46107102  vstore_mask16.mz vr7{mr1}, 0(r2)
000cb4  1f010ff1  addli r2, r30, -1920
000cb8  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
000cbc  00a00000  mfence { lm }
000cc0  63810600  loadli.w r2,  0(r13)
000cc4  63c30600  loadli.w r6,  4(r13)
000cc8  63891600  loadli.w r18,  8(r13)
000ccc  e3c91600  loadli.w r19,  12(r13)
000cd0  638a2600  loadli.w r20,  16(r13)
000cd4  e3ca2600  loadli.w r21,  20(r13)
000cd8  638b3600  loadli.w r22,  24(r13)
000cdc  e3cb3600  loadli.w r23,  28(r13)
000ce0  0f010100  exp.f.rn r2, r2
000ce4  0f030300  exp.f.rn r6, r6
000ce8  0f090900  exp.f.rn r18, r18
000cec  8f890900  exp.f.rn r19, r19
000cf0  0f0a0a00  exp.f.rn r20, r20
000cf4  8f8a0a00  exp.f.rn r21, r21
000cf8  0f0b0b00  exp.f.rn r22, r22
000cfc  8f8b0b00  exp.f.rn r23, r23
000d00  67802600  storeli.w r2, 0(r13)
000d04  67c06600  storeli.w r6, 4(r13)
000d08  e7802601  storeli.w r18, 8(r13)
000d0c  e7c03601  storeli.w r19, 12(r13)
000d10  67814601  storeli.w r20, 16(r13)
000d14  67c15601  storeli.w r21, 20(r13)
000d18  e7816601  storeli.w r22, 24(r13)
000d1c  e7c17601  storeli.w r23, 28(r13)
000d20  63814600  loadli.w r2,  32(r13)
000d24  63c34600  loadli.w r6,  36(r13)
000d28  63895600  loadli.w r18,  40(r13)
000d2c  e3c95600  loadli.w r19,  44(r13)
000d30  638a6600  loadli.w r20,  48(r13)
000d34  e3ca6600  loadli.w r21,  52(r13)
000d38  638b7600  loadli.w r22,  56(r13)
000d3c  e3cb7600  loadli.w r23,  60(r13)
000d40  0f010100  exp.f.rn r2, r2
000d44  0f030300  exp.f.rn r6, r6
000d48  0f090900  exp.f.rn r18, r18
000d4c  8f890900  exp.f.rn r19, r19
000d50  0f0a0a00  exp.f.rn r20, r20
000d54  8f8a0a00  exp.f.rn r21, r21
000d58  0f0b0b00  exp.f.rn r22, r22
000d5c  8f8b0b00  exp.f.rn r23, r23
000d60  67822600  storeli.w r2, 32(r13)
000d64  67c26600  storeli.w r6, 36(r13)
000d68  e7822601  storeli.w r18, 40(r13)
000d6c  e7c23601  storeli.w r19, 44(r13)
000d70  67834601  storeli.w r20, 48(r13)
000d74  67c35601  storeli.w r21, 52(r13)
000d78  e7836601  storeli.w r22, 56(r13)
000d7c  e7c37601  storeli.w r23, 60(r13)
000d80  63818600  loadli.w r2,  64(r13)
000d84  63c38600  loadli.w r6,  68(r13)
000d88  63899600  loadli.w r18,  72(r13)
000d8c  e3c99600  loadli.w r19,  76(r13)
000d90  638aa600  loadli.w r20,  80(r13)
000d94  e3caa600  loadli.w r21,  84(r13)
000d98  638bb600  loadli.w r22,  88(r13)
000d9c  e3cbb600  loadli.w r23,  92(r13)
000da0  0f010100  exp.f.rn r2, r2
000da4  0f030300  exp.f.rn r6, r6
000da8  0f090900  exp.f.rn r18, r18
000dac  8f890900  exp.f.rn r19, r19
000db0  0f0a0a00  exp.f.rn r20, r20
000db4  8f8a0a00  exp.f.rn r21, r21
000db8  0f0b0b00  exp.f.rn r22, r22
000dbc  8f8b0b00  exp.f.rn r23, r23
000dc0  67842600  storeli.w r2, 64(r13)
000dc4  67c46600  storeli.w r6, 68(r13)
000dc8  e7842601  storeli.w r18, 72(r13)
000dcc  e7c43601  storeli.w r19, 76(r13)
000dd0  67854601  storeli.w r20, 80(r13)
000dd4  67c55601  storeli.w r21, 84(r13)
000dd8  e7856601  storeli.w r22, 88(r13)
000ddc  e7c57601  storeli.w r23, 92(r13)
000de0  6381c600  loadli.w r2,  96(r13)
000de4  63c3c600  loadli.w r6,  100(r13)
000de8  6389d600  loadli.w r18,  104(r13)
000dec  e3c9d600  loadli.w r19,  108(r13)
000df0  638ae600  loadli.w r20,  112(r13)
000df4  e3cae600  loadli.w r21,  116(r13)
000df8  638bf600  loadli.w r22,  120(r13)
000dfc  e3cbf600  loadli.w r23,  124(r13)
000e00  0f010100  exp.f.rn r2, r2
000e04  0f030300  exp.f.rn r6, r6
000e08  0f090900  exp.f.rn r18, r18
000e0c  8f890900  exp.f.rn r19, r19
000e10  0f0a0a00  exp.f.rn r20, r20
000e14  8f8a0a00  exp.f.rn r21, r21
000e18  0f0b0b00  exp.f.rn r22, r22
000e1c  8f8b0b00  exp.f.rn r23, r23
000e20  67862600  storeli.w r2, 96(r13)
000e24  67c66600  storeli.w r6, 100(r13)
000e28  e7862601  storeli.w r18, 104(r13)
000e2c  e7c63601  storeli.w r19, 108(r13)
000e30  67874601  storeli.w r20, 112(r13)
000e34  67c75601  storeli.w r21, 116(r13)
000e38  e7876601  storeli.w r22, 120(r13)
000e3c  e7c77601  storeli.w r23, 124(r13)
000e40  63810601  loadli.w r2,  128(r13)
000e44  63c30601  loadli.w r6,  132(r13)
000e48  63891601  loadli.w r18,  136(r13)
000e4c  e3c91601  loadli.w r19,  140(r13)
000e50  638a2601  loadli.w r20,  144(r13)
000e54  e3ca2601  loadli.w r21,  148(r13)
000e58  638b3601  loadli.w r22,  152(r13)
000e5c  e3cb3601  loadli.w r23,  156(r13)
000e60  0f010100  exp.f.rn r2, r2
000e64  0f030300  exp.f.rn r6, r6
000e68  0f090900  exp.f.rn r18, r18
000e6c  8f890900  exp.f.rn r19, r19
000e70  0f0a0a00  exp.f.rn r20, r20
000e74  8f8a0a00  exp.f.rn r21, r21
000e78  0f0b0b00  exp.f.rn r22, r22
000e7c  8f8b0b00  exp.f.rn r23, r23
000e80  67882600  storeli.w r2, 128(r13)
000e84  67c86600  storeli.w r6, 132(r13)
000e88  e7882601  storeli.w r18, 136(r13)
000e8c  e7c83601  storeli.w r19, 140(r13)
000e90  67894601  storeli.w r20, 144(r13)
000e94  67c95601  storeli.w r21, 148(r13)
000e98  e7896601  storeli.w r22, 152(r13)
000e9c  e7c97601  storeli.w r23, 156(r13)
000ea0  63814601  loadli.w r2,  160(r13)
000ea4  63c34601  loadli.w r6,  164(r13)
000ea8  63895601  loadli.w r18,  168(r13)
000eac  e3c95601  loadli.w r19,  172(r13)
000eb0  638a6601  loadli.w r20,  176(r13)
000eb4  e3ca6601  loadli.w r21,  180(r13)
000eb8  638b7601  loadli.w r22,  184(r13)
000ebc  e3cb7601  loadli.w r23,  188(r13)
000ec0  0f010100  exp.f.rn r2, r2
000ec4  0f030300  exp.f.rn r6, r6
000ec8  0f090900  exp.f.rn r18, r18
000ecc  8f890900  exp.f.rn r19, r19
000ed0  0f0a0a00  exp.f.rn r20, r20
000ed4  8f8a0a00  exp.f.rn r21, r21
000ed8  0f0b0b00  exp.f.rn r22, r22
000edc  8f8b0b00  exp.f.rn r23, r23
000ee0  678a2600  storeli.w r2, 160(r13)
000ee4  67ca6600  storeli.w r6, 164(r13)
000ee8  e78a2601  storeli.w r18, 168(r13)
000eec  e7ca3601  storeli.w r19, 172(r13)
000ef0  678b4601  storeli.w r20, 176(r13)
000ef4  67cb5601  storeli.w r21, 180(r13)
000ef8  e78b6601  storeli.w r22, 184(r13)
000efc  e7cb7601  storeli.w r23, 188(r13)
000f00  63818601  loadli.w r2,  192(r13)
000f04  63c38601  loadli.w r6,  196(r13)
000f08  63899601  loadli.w r18,  200(r13)
000f0c  e3c99601  loadli.w r19,  204(r13)
000f10  638aa601  loadli.w r20,  208(r13)
000f14  e3caa601  loadli.w r21,  212(r13)
000f18  638bb601  loadli.w r22,  216(r13)
000f1c  e3cbb601  loadli.w r23,  220(r13)
000f20  0f010100  exp.f.rn r2, r2
000f24  0f030300  exp.f.rn r6, r6
000f28  0f090900  exp.f.rn r18, r18
000f2c  8f890900  exp.f.rn r19, r19
000f30  0f0a0a00  exp.f.rn r20, r20
000f34  8f8a0a00  exp.f.rn r21, r21
000f38  0f0b0b00  exp.f.rn r22, r22
000f3c  8f8b0b00  exp.f.rn r23, r23
000f40  678c2600  storeli.w r2, 192(r13)
000f44  67cc6600  storeli.w r6, 196(r13)
000f48  e78c2601  storeli.w r18, 200(r13)
000f4c  e7cc3601  storeli.w r19, 204(r13)
000f50  678d4601  storeli.w r20, 208(r13)
000f54  67cd5601  storeli.w r21, 212(r13)
000f58  e78d6601  storeli.w r22, 216(r13)
000f5c  e7cd7601  storeli.w r23, 220(r13)
000f60  6381c601  loadli.w r2,  224(r13)
000f64  63c3c601  loadli.w r6,  228(r13)
000f68  6389d601  loadli.w r18,  232(r13)
000f6c  e3c9d601  loadli.w r19,  236(r13)
000f70  638ae601  loadli.w r20,  240(r13)
000f74  e3cae601  loadli.w r21,  244(r13)
000f78  638bf601  loadli.w r22,  248(r13)
000f7c  e3cbf601  loadli.w r23,  252(r13)
000f80  0f010100  exp.f.rn r2, r2
000f84  0f030300  exp.f.rn r6, r6
000f88  0f090900  exp.f.rn r18, r18
000f8c  8f890900  exp.f.rn r19, r19
000f90  0f0a0a00  exp.f.rn r20, r20
000f94  8f8a0a00  exp.f.rn r21, r21
000f98  0f0b0b00  exp.f.rn r22, r22
000f9c  8f8b0b00  exp.f.rn r23, r23
000fa0  678e2600  storeli.w r2, 224(r13)
000fa4  67ce6600  storeli.w r6, 228(r13)
000fa8  e78e2601  storeli.w r18, 232(r13)
000fac  e7ce3601  storeli.w r19, 236(r13)
000fb0  678f4601  storeli.w r20, 240(r13)
000fb4  67cf5601  storeli.w r21, 244(r13)
000fb8  e78f6601  storeli.w r22, 248(r13)
000fbc  e7cf7601  storeli.w r23, 252(r13)
000fc0  00a00000  mfence { lm }
000fc4  92141702  vadd.f.mz.rn vr9{mr1}, r14, vr1
000fc8  c2120fe2  vload_mask16.mz vr5{mr1}, 1792(r30)
000fcc  1f010ff4  addli r2, r30, -1536
000fd0  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
000fd4  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
000fd8  1f010ff2  addli r2, r30, -1792
000fdc  c2138fe2  vload_mask16.mz vr7{mr1}, 1856(r30)
000fe0  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
000fe4  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
000fe8  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
000fec  46109fe2  vstore_mask16.mz vr9{mr1}, 1792(r30)
000ff0  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
000ff4  1f018ff1  addli r2, r30, -1856
000ff8  92141702  vadd.f.mz.rn vr9{mr1}, r14, vr1
000ffc  46149fe2  vstore_mask16.mz vr9{mr1}, 1856(r30)
001000  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
001004  92141702  vadd.f.mz.rn vr9{mr1}, r14, vr1
001008  46189fe2  vstore_mask16.mz vr9{mr1}, 1920(r30)
00100c  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
001010  92142702  vadd.f.mz.rn vr9{mr1}, r14, vr2
001014  461c9fe2  vstore_mask16.mz vr9{mr1}, 1984(r30)
001018  00a00000  mfence { lm }
00101c  63810600  loadli.w r2,  0(r13)
001020  63c30600  loadli.w r6,  4(r13)
001024  63871600  loadli.w r14,  8(r13)
001028  63c91600  loadli.w r18,  12(r13)
00102c  e3892600  loadli.w r19,  16(r13)
001030  63ca2600  loadli.w r20,  20(r13)
001034  e38a3600  loadli.w r21,  24(r13)
001038  63cb3600  loadli.w r22,  28(r13)
00103c  0f010100  exp.f.rn r2, r2
001040  0f030300  exp.f.rn r6, r6
001044  0f070700  exp.f.rn r14, r14
001048  0f090900  exp.f.rn r18, r18
00104c  8f890900  exp.f.rn r19, r19
001050  0f0a0a00  exp.f.rn r20, r20
001054  8f8a0a00  exp.f.rn r21, r21
001058  0f0b0b00  exp.f.rn r22, r22
00105c  67802600  storeli.w r2, 0(r13)
001060  67c06600  storeli.w r6, 4(r13)
001064  e780e600  storeli.w r14, 8(r13)
001068  e7c02601  storeli.w r18, 12(r13)
00106c  67813601  storeli.w r19, 16(r13)
001070  67c14601  storeli.w r20, 20(r13)
001074  e7815601  storeli.w r21, 24(r13)
001078  e7c16601  storeli.w r22, 28(r13)
00107c  63814600  loadli.w r2,  32(r13)
001080  63c34600  loadli.w r6,  36(r13)
001084  63875600  loadli.w r14,  40(r13)
001088  63c95600  loadli.w r18,  44(r13)
00108c  e3896600  loadli.w r19,  48(r13)
001090  63ca6600  loadli.w r20,  52(r13)
001094  e38a7600  loadli.w r21,  56(r13)
001098  63cb7600  loadli.w r22,  60(r13)
00109c  0f010100  exp.f.rn r2, r2
0010a0  0f030300  exp.f.rn r6, r6
0010a4  0f070700  exp.f.rn r14, r14
0010a8  0f090900  exp.f.rn r18, r18
0010ac  8f890900  exp.f.rn r19, r19
0010b0  0f0a0a00  exp.f.rn r20, r20
0010b4  8f8a0a00  exp.f.rn r21, r21
0010b8  0f0b0b00  exp.f.rn r22, r22
0010bc  67822600  storeli.w r2, 32(r13)
0010c0  67c26600  storeli.w r6, 36(r13)
0010c4  e782e600  storeli.w r14, 40(r13)
0010c8  e7c22601  storeli.w r18, 44(r13)
0010cc  67833601  storeli.w r19, 48(r13)
0010d0  67c34601  storeli.w r20, 52(r13)
0010d4  e7835601  storeli.w r21, 56(r13)
0010d8  e7c36601  storeli.w r22, 60(r13)
0010dc  63818600  loadli.w r2,  64(r13)
0010e0  63c38600  loadli.w r6,  68(r13)
0010e4  63879600  loadli.w r14,  72(r13)
0010e8  63c99600  loadli.w r18,  76(r13)
0010ec  e389a600  loadli.w r19,  80(r13)
0010f0  63caa600  loadli.w r20,  84(r13)
0010f4  e38ab600  loadli.w r21,  88(r13)
0010f8  63cbb600  loadli.w r22,  92(r13)
0010fc  0f010100  exp.f.rn r2, r2
001100  0f030300  exp.f.rn r6, r6
001104  0f070700  exp.f.rn r14, r14
001108  0f090900  exp.f.rn r18, r18
00110c  8f890900  exp.f.rn r19, r19
001110  0f0a0a00  exp.f.rn r20, r20
001114  8f8a0a00  exp.f.rn r21, r21
001118  0f0b0b00  exp.f.rn r22, r22
00111c  67842600  storeli.w r2, 64(r13)
001120  67c46600  storeli.w r6, 68(r13)
001124  e784e600  storeli.w r14, 72(r13)
001128  e7c42601  storeli.w r18, 76(r13)
00112c  67853601  storeli.w r19, 80(r13)
001130  67c54601  storeli.w r20, 84(r13)
001134  e7855601  storeli.w r21, 88(r13)
001138  e7c56601  storeli.w r22, 92(r13)
00113c  6381c600  loadli.w r2,  96(r13)
001140  63c3c600  loadli.w r6,  100(r13)
001144  6387d600  loadli.w r14,  104(r13)
001148  63c9d600  loadli.w r18,  108(r13)
00114c  e389e600  loadli.w r19,  112(r13)
001150  63cae600  loadli.w r20,  116(r13)
001154  e38af600  loadli.w r21,  120(r13)
001158  63cbf600  loadli.w r22,  124(r13)
00115c  0f010100  exp.f.rn r2, r2
001160  0f030300  exp.f.rn r6, r6
001164  0f070700  exp.f.rn r14, r14
001168  0f090900  exp.f.rn r18, r18
00116c  8f890900  exp.f.rn r19, r19
001170  0f0a0a00  exp.f.rn r20, r20
001174  8f8a0a00  exp.f.rn r21, r21
001178  0f0b0b00  exp.f.rn r22, r22
00117c  67862600  storeli.w r2, 96(r13)
001180  67c66600  storeli.w r6, 100(r13)
001184  e786e600  storeli.w r14, 104(r13)
001188  e7c62601  storeli.w r18, 108(r13)
00118c  67873601  storeli.w r19, 112(r13)
001190  67c74601  storeli.w r20, 116(r13)
001194  e7875601  storeli.w r21, 120(r13)
001198  e7c76601  storeli.w r22, 124(r13)
00119c  63810601  loadli.w r2,  128(r13)
0011a0  63c30601  loadli.w r6,  132(r13)
0011a4  63871601  loadli.w r14,  136(r13)
0011a8  63c91601  loadli.w r18,  140(r13)
0011ac  e3892601  loadli.w r19,  144(r13)
0011b0  63ca2601  loadli.w r20,  148(r13)
0011b4  e38a3601  loadli.w r21,  152(r13)
0011b8  63cb3601  loadli.w r22,  156(r13)
0011bc  0f010100  exp.f.rn r2, r2
0011c0  0f030300  exp.f.rn r6, r6
0011c4  0f070700  exp.f.rn r14, r14
0011c8  0f090900  exp.f.rn r18, r18
0011cc  8f890900  exp.f.rn r19, r19
0011d0  0f0a0a00  exp.f.rn r20, r20
0011d4  8f8a0a00  exp.f.rn r21, r21
0011d8  0f0b0b00  exp.f.rn r22, r22
0011dc  67882600  storeli.w r2, 128(r13)
0011e0  67c86600  storeli.w r6, 132(r13)
0011e4  e788e600  storeli.w r14, 136(r13)
0011e8  e7c82601  storeli.w r18, 140(r13)
0011ec  67893601  storeli.w r19, 144(r13)
0011f0  67c94601  storeli.w r20, 148(r13)
0011f4  e7895601  storeli.w r21, 152(r13)
0011f8  e7c96601  storeli.w r22, 156(r13)
0011fc  63814601  loadli.w r2,  160(r13)
001200  63c34601  loadli.w r6,  164(r13)
001204  63875601  loadli.w r14,  168(r13)
001208  63c95601  loadli.w r18,  172(r13)
00120c  e3896601  loadli.w r19,  176(r13)
001210  63ca6601  loadli.w r20,  180(r13)
001214  e38a7601  loadli.w r21,  184(r13)
001218  63cb7601  loadli.w r22,  188(r13)
00121c  0f010100  exp.f.rn r2, r2
001220  0f030300  exp.f.rn r6, r6
001224  0f070700  exp.f.rn r14, r14
001228  0f090900  exp.f.rn r18, r18
00122c  8f890900  exp.f.rn r19, r19
001230  0f0a0a00  exp.f.rn r20, r20
001234  8f8a0a00  exp.f.rn r21, r21
001238  0f0b0b00  exp.f.rn r22, r22
00123c  678a2600  storeli.w r2, 160(r13)
001240  67ca6600  storeli.w r6, 164(r13)
001244  e78ae600  storeli.w r14, 168(r13)
001248  e7ca2601  storeli.w r18, 172(r13)
00124c  678b3601  storeli.w r19, 176(r13)
001250  67cb4601  storeli.w r20, 180(r13)
001254  e78b5601  storeli.w r21, 184(r13)
001258  e7cb6601  storeli.w r22, 188(r13)
00125c  63818601  loadli.w r2,  192(r13)
001260  63c38601  loadli.w r6,  196(r13)
001264  63879601  loadli.w r14,  200(r13)
001268  63c99601  loadli.w r18,  204(r13)
00126c  e389a601  loadli.w r19,  208(r13)
001270  63caa601  loadli.w r20,  212(r13)
001274  e38ab601  loadli.w r21,  216(r13)
001278  63cbb601  loadli.w r22,  220(r13)
00127c  0f010100  exp.f.rn r2, r2
001280  0f030300  exp.f.rn r6, r6
001284  0f070700  exp.f.rn r14, r14
001288  0f090900  exp.f.rn r18, r18
00128c  8f890900  exp.f.rn r19, r19
001290  0f0a0a00  exp.f.rn r20, r20
001294  8f8a0a00  exp.f.rn r21, r21
001298  0f0b0b00  exp.f.rn r22, r22
00129c  678c2600  storeli.w r2, 192(r13)
0012a0  67cc6600  storeli.w r6, 196(r13)
0012a4  e78ce600  storeli.w r14, 200(r13)
0012a8  e7cc2601  storeli.w r18, 204(r13)
0012ac  678d3601  storeli.w r19, 208(r13)
0012b0  67cd4601  storeli.w r20, 212(r13)
0012b4  e78d5601  storeli.w r21, 216(r13)
0012b8  e7cd6601  storeli.w r22, 220(r13)
0012bc  6381c601  loadli.w r2,  224(r13)
0012c0  63c3c601  loadli.w r6,  228(r13)
0012c4  6387d601  loadli.w r14,  232(r13)
0012c8  63c9d601  loadli.w r18,  236(r13)
0012cc  e389e601  loadli.w r19,  240(r13)
0012d0  63cae601  loadli.w r20,  244(r13)
0012d4  e38af601  loadli.w r21,  248(r13)
0012d8  63cbf601  loadli.w r22,  252(r13)
0012dc  0f010100  exp.f.rn r2, r2
0012e0  0f030300  exp.f.rn r6, r6
0012e4  0f070700  exp.f.rn r14, r14
0012e8  0f090900  exp.f.rn r18, r18
0012ec  8f890900  exp.f.rn r19, r19
0012f0  0f0a0a00  exp.f.rn r20, r20
0012f4  8f8a0a00  exp.f.rn r21, r21
0012f8  0f0b0b00  exp.f.rn r22, r22
0012fc  678e2600  storeli.w r2, 224(r13)
001300  67ce6600  storeli.w r6, 228(r13)
001304  e78ee600  storeli.w r14, 232(r13)
001308  e7ce2601  storeli.w r18, 236(r13)
00130c  678f3601  storeli.w r19, 240(r13)
001310  67cf4601  storeli.w r20, 244(r13)
001314  e78f5601  storeli.w r21, 248(r13)
001318  e7cf6601  storeli.w r22, 252(r13)
00131c  00a00000  mfence { lm }
001320  c2140fe2  vload_mask16.mz vr9{mr1}, 1792(r30)
001324  42158fe2  vload_mask16.mz vr10{mr1}, 1856(r30)
001328  c2150fe3  vload_mask16.mz vr11{mr1}, 1920(r30)
00132c  1f0a0002  addli r20, zero, 256
001330  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
001334  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
001338  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
00133c  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
001340  1610a002  vadd.f.mz.rn vr0{mr1}, vr0, vr10
001344  9610b002  vadd.f.mz.rn vr1{mr1}, vr0, vr11
001348  42108fe3  vload_mask16.mz vr0{mr1}, 1984(r30)
00134c  63037fee  loadli.w r6,  -2248(r30)
001350  96900002  vadd.f.mz.rn vr1{mr1}, vr1, vr0
001354  6a7114c0  vsrl.p vr2, r8, vr1
001358  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00135c  6af114c0  vsrl.p vr2, r9, vr1
001360  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001364  6af11dc0  vsrl.p vr2, r27, vr1
001368  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00136c  6a7115c0  vsrl.p vr2, r10, vr1
001370  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001374  7a910040  vextracti.f r2, 0(vr1)
001378  73602300  stores.w r2, 0(r6)
00137c  00a00300  mfence { lm, sm, gm }
001380  80a10504  csr_set csr3, r11
001384  00d00100  sync_group
001388  bb900800  bneq r17, zero, 36
00138c  6f410d00  loads.w r2, 0(r26)
001390  6f434d00  loads.w r6, 4(r26)
001394  6f478d00  loads.w r14, 8(r26)
001398  0b616110  add.f.rn r2, r2, r6
00139c  6f43cd00  loads.w r6, 12(r26)
0013a0  0b61e110  add.f.rn r2, r2, r14
0013a4  0b616110  add.f.rn r2, r2, r6
0013a8  73602d00  stores.w r2, 0(r26)
0013ac  00a00300  mfence { lm, sm, gm }
0013b0  80a10504  csr_set csr3, r11
0013b4  00d00100  sync_group
0013b8  6f410d00  loads.w r2, 0(r26)
0013bc  2b03803f  lui r6, 260096
0013c0  1f240000  addli r8, zero, 2
0013c4  9f0b0ff6  addli r23, r30, -1280
0013c8  0f072318  div.f.rn r14, r6, r2
0013cc  1f018ff3  addli r2, r30, -1600
0013d0  0a100702  vmul.f.mz.rn vr0{mr1}, r14, vr0
0013d4  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0013d8  1f010ff6  addli r2, r30, -1280
0013dc  0a111702  vmul.f.mz.rn vr2{mr1}, r14, vr1
0013e0  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
0013e4  1f018ff4  addli r2, r30, -1472
0013e8  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0013ec  1f018ff6  addli r2, r30, -1216
0013f0  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
0013f4  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
0013f8  1f010ff5  addli r2, r30, -1408
0013fc  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
001400  1f010ff7  addli r2, r30, -1152
001404  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
001408  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
00140c  1f018ff5  addli r2, r30, -1344
001410  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
001414  1f018ff7  addli r2, r30, -1088
001418  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
00141c  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
001420  8a106702  vmul.f.mz.rn vr1{mr1}, r14, vr6
001424  1f010ff3  addli r2, r30, -1664
001428  46101f82  vstore_mask16.mz vr1{mr1}, 1024(r30)
00142c  8a108702  vmul.f.mz.rn vr1{mr1}, r14, vr8
001430  46141f82  vstore_mask16.mz vr1{mr1}, 1088(r30)
001434  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
001438  1f010ff4  addli r2, r30, -1536
00143c  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
001440  46181f82  vstore_mask16.mz vr1{mr1}, 1152(r30)
001444  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
001448  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
00144c  461c1f82  vstore_mask16.mz vr1{mr1}, 1216(r30)
001450  8a105702  vmul.f.mz.rn vr1{mr1}, r14, vr5
001454  46101fa2  vstore_mask16.mz vr1{mr1}, 1280(r30)
001458  8a107702  vmul.f.mz.rn vr1{mr1}, r14, vr7
00145c  46141fa2  vstore_mask16.mz vr1{mr1}, 1344(r30)
001460  8a104702  vmul.f.mz.rn vr1{mr1}, r14, vr4
001464  46181fa2  vstore_mask16.mz vr1{mr1}, 1408(r30)
001468  8a103702  vmul.f.mz.rn vr1{mr1}, r14, vr3
00146c  461c1fa2  vstore_mask16.mz vr1{mr1}, 1472(r30)
001470  8a109702  vmul.f.mz.rn vr1{mr1}, r14, vr9
001474  46101fc2  vstore_mask16.mz vr1{mr1}, 1536(r30)
001478  8a10a702  vmul.f.mz.rn vr1{mr1}, r14, vr10
00147c  46141fc2  vstore_mask16.mz vr1{mr1}, 1600(r30)
001480  8a10b702  vmul.f.mz.rn vr1{mr1}, r14, vr11
001484  46181fc2  vstore_mask16.mz vr1{mr1}, 1664(r30)
001488  461c0fc2  vstore_mask16.mz vr0{mr1}, 1728(r30)
00148c  1f870000  addli r14, r1, 0
001490  00a00000  mfence { lm }
001494  63018f00  loadli.w r2,  64(r30)
001498  3f0826f6  blt.s r12, r2, -4608
00149c  1f070000  addli r14, zero, 0
0014a0  5bbffdff  j -4616
0014a4  9f0e0fee  addli sp, r30, -2304
0014a8  9f8e0e12  addli sp, sp, 2304
0014ac  00a00300  mfence { lm, sm, gm }
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
0016d0  00100000  exit
0016d4  00100000  exit
0016d8  00100000  exit
0016dc  00100000  exit
0016e0  00100000  exit
0016e4  00100000  exit
0016e8  00100000  exit
0016ec  00100000  exit
0016f0  00100000  exit
