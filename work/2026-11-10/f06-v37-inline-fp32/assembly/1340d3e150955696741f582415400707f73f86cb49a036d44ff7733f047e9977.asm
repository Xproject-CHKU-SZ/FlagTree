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
0000e4  9f8e8ed8  addli sp, sp, -5056
0000e8  2b010000  lui r2, 0
0000ec  00330002  core_id r6
0000f0  ab600000  lui r1, 6
0000f4  1f8f8e26  addli r30, sp, 4928
0000f8  abf30000  lui r7, 15
0000fc  005b0002  load_param_i r22, 0
000100  9b312300  slli r3, r6, 2
000104  1f010100  addli r2, r2, 0
000108  9b900001  ori r1, r1, 16
00010c  e304cf00  loadli.w r9,  96(r30)
000110  e342bf00  loadli.w r5,  92(r30)
000114  9b9af3ff  ori r21, r7, 4095
000118  6344cf00  loadli.w r8,  100(r30)
00011c  0b123110  add.s r4, r2, r3
000120  0b151210  add.s r10, r4, r1
000124  1f020240  addli r4, r4, 8192
000128  6743afda  storeli.w r10, -4812(r30)
00012c  73600500  stores.w zero, 0(r10)
000130  00a00300  mfence { lm, sm, gm }
000134  80a10a04  csr_set csr3, r21
000138  00d00100  sync_group
00013c  67034fda  storeli.w r4, -4816(r30)
000140  73600200  stores.w zero, 0(r4)
000144  0b925420  mul.s r4, r9, r5
000148  00a00300  mfence { lm, sm, gm }
00014c  80a10a04  csr_set csr3, r21
000150  00d00100  sync_group
000154  0b128220  mul.s r4, r4, r8
000158  e7424fda  storeli.w r4, -4820(r30)
00015c  cb5e6239  ble.s r4, r22, 29620
000160  1b0c3300  andi r24, r6, 3
000164  6b540f03  load.d r[9:10], 48(r30)
000168  63055f00  loadli.w r10,  40(r30)
00016c  00d70002  load_param_i r14, 1
000170  eb550f02  load.d r[12:13], 32(r30)
000174  1f0a0004  addli r20, zero, 512
000178  eb578f01  load.d r[16:17], 24(r30)
00017c  1b432300  srli r6, r6, 2
000180  e3438f00  loadli.w r7,  68(r30)
000184  e3461f00  loadli.w r13,  12(r30)
000188  6b520f05  load.d r[5:6], 80(r30)
00018c  1f0e0ff6  addli r28, r30, -1280
000190  e74f5fe1  storeli.w r21, -3844(r30)
000194  9b389c00  slli r17, r24, 9
000198  6742efda  storeli.w r14, -4828(r30)
00019c  1f170000  addli r14, zero, 1
0001a0  e7028fdb  storeli.w r24, -4824(r30)
0001a4  33890828  zext_int2long r[19:20], r17
0001a8  0b151519  sub.s r10, r10, r17
0001ac  0b342421  mul.sl r[9:10], r[9:10], r[19:20]
0001b0  0b150548  max.s r10, r10, zero
0001b4  1734e402  sll.d r[9:10], r[9:10], r14
0001b8  0b154541  min.s r10, r10, r20
0001bc  0ba48510  add.ul r[9:10], r[12:13], r[9:10]
0001c0  9f053fda  addli r11, r30, -4840
0001c4  73b08500  store.d r[9:10], 0(r11)
0001c8  1b341500  slli r8, r10, 1
0001cc  1b05f300  andi r10, r6, 15
0001d0  1f031fda  addli r6, r30, -4856
0001d4  9f050fee  addli r11, r30, -2304
0001d8  67418fda  storeli.w r8, -4844(r30)
0001dc  0bb42721  mul.sl r[9:10], r[16:17], r[19:20]
0001e0  9f070001  addli r15, zero, 128
0001e4  1f088000  addli r16, zero, 64
0001e8  6701afda  storeli.w r10, -4848(r30)
0001ec  73308300  store.d r[9:10], 0(r6)
0001f0  2bf4ffff  lui r8, 1048575
0001f4  0b931619  sub.s r6, r13, r17
0001f8  9f060002  addli r13, zero, 256
0001fc  1b1404ff  ori r8, r8, 4080
000200  0b130348  max.s r6, r6, zero
000204  97818100  and r3, r3, r8
000208  0b134341  min.s r6, r6, r20
00020c  0b113110  add.s r2, r2, r3
000210  8b911319  sub.s r3, r7, r17
000214  1b331300  slli r6, r6, 1
000218  9f084000  addli r17, zero, 32
00021c  8b101110  add.s r1, r2, r1
000220  8b910148  max.s r3, r3, zero
000224  67406fda  storeli.w r6, -4860(r30)
000228  1f030140  addli r6, r2, 8192
00022c  e7031fda  storeli.w r1, -4808(r30)
000230  8b904141  min.s r1, r3, r20
000234  0b312221  mul.sl r[3:4], r[5:6], r[19:20]
000238  1f02ffd9  addli r4, r30, -4872
00023c  e7436fda  storeli.w r6, -4804(r30)
000240  9bb01000  slli r1, r1, 1
000244  73302200  store.d r[3:4], 0(r4)
000248  9f01dfd9  addli r3, r30, -4888
00024c  674f1fd8  storeli.w r1, -4876(r30)
000250  aba0aaaa  lui r1, 699050
000254  9fa05015  addli r1, r1, 2730
000258  7e8000e0  vmmov mr0, r1
00025c  ab505555  lui r1, 349525
000260  9fd0a00a  addli r1, r1, 1365
000264  7e8100e0  vmmov mr2, r1
000268  ab700000  lui r1, 7
00026c  1b94f0ff  ori r8, r1, 4095
000270  b3000528  zext_int2long r[2:3], r10
000274  73b01100  store.d r[2:3], 0(r3)
000278  db0c0000  j 100
00027c  1f03dfe1  addli r6, r30, -3864
000280  6b518f04  load.d r[3:4], 72(r30)
000284  9f050fee  addli r11, r30, -2304
000288  9f060002  addli r13, zero, 256
00028c  9f070001  addli r15, zero, 128
000290  1f088000  addli r16, zero, 64
000294  9f084000  addli r17, zero, 32
000298  6b520300  load.d r[5:6], 0(r6)
00029c  1f03ffd9  addli r6, r30, -4872
0002a0  0b312220  mul.sl r[3:4], r[5:6], r[3:4]
0002a4  6b520300  load.d r[5:6], 0(r6)
0002a8  0b214110  add.ul r[3:4], r[3:4], r[5:6]
0002ac  eb528f03  load.d r[6:7], 56(r30)
0002b0  2b0200f0  lui r4, 983040
0002b4  1731e102  sll.d r[3:4], r[3:4], r14
0002b8  97904000  or r1, r1, r4
0002bc  0ba12210  add.ul r[3:4], r[6:7], r[3:4]
0002c0  ff30c101  s_lm2gm r1, r28, 0(r[3:4])
0002c4  e3404fda  loadli.w r1,  -4828(r30)
0002c8  00a00000  mfence { lm }
0002cc  0b1b1b10  add.s r22, r22, r1
0002d0  e3405fda  loadli.w r1,  -4820(r30)
0002d4  3f201b00  blt.s r22, r1, 8
0002d8  5b470e00  j 29240
0002dc  e340cf00  loadli.w r1,  100(r30)
0002e0  6301cf00  loadli.w r2,  96(r30)
0002e4  e3412fda  loadli.w r3,  -4844(r30)
0002e8  e70f6fe1  storeli.w r22, -3848(r30)
0002ec  8b101b30  div.s r1, r22, r1
0002f0  8b902030  div.s r1, r1, r2
0002f4  2b0100f0  lui r2, 983040
0002f8  97912100  or r3, r3, r2
0002fc  1bb14000  slli r2, r1, 4
000300  9f003fda  addli r1, r30, -4840
000304  6bd20000  load.d r[5:6], 0(r1)
000308  e3002fda  loadli.w r1,  -4848(r30)
00030c  ff21b200  l_gm2lm r3, r11, 0(r[5:6])
000310  17121100  or r4, r2, r1
000314  00a00000  mfence { lm }
000318  e3011f00  loadli.w r3,  8(r30)
00031c  e3400fda  loadli.w r1,  -4860(r30)
000320  674f4fe0  storeli.w r4, -3852(r30)
000324  3f203200  blt.s r4, r3, 8
000328  9f000000  addli r1, zero, 0
00032c  1f03dfd9  addli r6, r30, -4888
000330  33110128  sext_int2long r[3:4], r2
000334  9f03dfe1  addli r7, r30, -3864
000338  9f0b8e00  addli r23, r28, 64
00033c  1f090c00  addli r18, r24, 0
000340  1f0b4000  addli r22, zero, 32
000344  6b520300  load.d r[5:6], 0(r6)
000348  97124102  or.d r[6:7], r[3:4], r[5:6]
00034c  eb510f01  load.d r[4:5], 16(r30)
000350  2b0100f0  lui r2, 983040
000354  73b05300  store.d r[6:7], 0(r7)
000358  9f031fda  addli r7, r30, -4856
00035c  97902000  or r1, r1, r2
000360  8bb13220  mul.sl r[4:5], r[6:7], r[4:5]
000364  ebd20300  load.d r[6:7], 0(r7)
000368  9f030e01  addli r7, r28, 128
00036c  8ba15110  add.ul r[4:5], r[4:5], r[6:7]
000370  eb520f00  load.d r[6:7], 0(r30)
000374  97b1e102  sll.d r[4:5], r[4:5], r14
000378  0ba13210  add.ul r[3:4], r[6:7], r[4:5]
00037c  9f028e01  addli r5, r28, 192
000380  1f020e02  addli r4, r28, 256
000384  1f030fe4  addli r6, r30, -3584
000388  ff20c101  l_gm2lm r1, r28, 0(r[3:4])
00038c  9f808500  addli r1, r11, 64
000390  1f010fe1  addli r2, r30, -3968
000394  9f010e03  addli r3, r28, 384
000398  00a00000  mfence { lm }
00039c  670d5fe0  storeli.w r5, -3888(r30)
0003a0  e74c7fe0  storeli.w r7, -3892(r30)
0003a4  c2010e04  vload.mz vr3{mr2}, 0(r28)
0003a8  42820b04  vload.mz vr4{mr2}, 0(r23)
0003ac  42840304  vload.mz vr8{mr2}, 0(r7)
0003b0  42850504  vload.mz vr10{mr2}, 0(r11)
0003b4  42830204  vload.mz vr6{mr2}, 0(r5)
0003b8  42010e00  vload.mz vr2{mr0}, 0(r28)
0003bc  c2030204  vload.mz vr7{mr2}, 0(r4)
0003c0  c2800b00  vload.mz vr1{mr0}, 0(r23)
0003c4  42800300  vload.mz vr0{mr0}, 0(r7)
0003c8  c2840200  vload.mz vr9{mr0}, 0(r5)
0003cc  9f028e02  addli r5, r28, 320
0003d0  9f030200  addli r7, r4, 0
0003d4  674d3fe0  storeli.w r3, -3884(r30)
0003d8  1f870200  addli r14, r5, 0
0003dc  e6c20100  vshuffle2.hf vr5, vr3
0003e0  e6410200  vshuffle2.hf vr3, vr4
0003e4  66420400  vshuffle2.hf vr4, vr8
0003e8  42840500  vload.mz vr8{mr0}, 0(r11)
0003ec  e6450300  vshuffle2.hf vr11, vr6
0003f0  66c30300  vshuffle2.hf vr6, vr7
0003f4  c2830000  vload.mz vr7{mr0}, 0(r1)
0003f8  66450500  vshuffle2.hf vr10, vr10
0003fc  16118102  vadd.f.mz.rn vr2{mr1}, vr2, vr8
000400  42840004  vload.mz vr8{mr2}, 0(r1)
000404  9f800501  addli r1, r11, 128
000408  96907002  vadd.f.mz.rn vr1{mr1}, vr1, vr7
00040c  c2830104  vload.mz vr7{mr2}, 0(r3)
000410  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
000414  1691a202  vadd.f.mz.rn vr2{mr1}, vr5, vr10
000418  c2820004  vload.mz vr5{mr2}, 0(r1)
00041c  1f018fe0  addli r2, r30, -4032
000420  42850000  vload.mz vr10{mr0}, 0(r1)
000424  9f808501  addli r1, r11, 192
000428  66440400  vshuffle2.hf vr8, vr8
00042c  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
000430  1f010fe2  addli r2, r30, -3840
000434  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
000438  96908102  vadd.f.mz.rn vr1{mr1}, vr3, vr8
00043c  e6c20200  vshuffle2.hf vr5, vr5
000440  1f018fe2  addli r2, r30, -3776
000444  1610a002  vadd.f.mz.rn vr0{mr1}, vr0, vr10
000448  c2810204  vload.mz vr3{mr2}, 0(r5)
00044c  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
000450  c2800004  vload.mz vr1{mr2}, 0(r1)
000454  16115202  vadd.f.mz.rn vr2{mr1}, vr4, vr5
000458  42820000  vload.mz vr4{mr0}, 0(r1)
00045c  1f810502  addli r2, r11, 256
000460  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
000464  1f038fe4  addli r6, r30, -3520
000468  c2020200  vload.mz vr5{mr0}, 0(r4)
00046c  9f008fe3  addli r1, r30, -3648
000470  1f028e03  addli r4, r28, 448
000474  42000104  vload.mz vr0{mr2}, 0(r2)
000478  42050100  vload.mz vr10{mr0}, 0(r2)
00047c  1f810503  addli r2, r11, 384
000480  1f060200  addli r12, r4, 0
000484  46102302  vstore_mask16.mz vr2{mr1}, 0(r6)
000488  1f030e05  addli r6, r28, 640
00048c  e6c00000  vshuffle2.hf vr1, vr1
000490  16914402  vadd.f.mz.rn vr2{mr1}, vr9, vr4
000494  42820200  vload.mz vr4{mr0}, 0(r5)
000498  9f020e06  addli r5, r28, 768
00049c  e70f6fec  storeli.w r6, -2312(r30)
0004a0  66400000  vshuffle2.hf vr0, vr0
0004a4  e70d5fe0  storeli.w r5, -3880(r30)
0004a8  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
0004ac  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0004b0  9f000fec  addli r1, r30, -2560
0004b4  c2050204  vload.mz vr11{mr2}, 0(r4)
0004b8  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0004bc  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0004c0  9690a202  vadd.f.mz.rn vr1{mr1}, vr5, vr10
0004c4  9f000fe3  addli r1, r30, -3712
0004c8  c2020104  vload.mz vr5{mr2}, 0(r2)
0004cc  42050100  vload.mz vr10{mr0}, 0(r2)
0004d0  1f018e04  addli r2, r28, 576
0004d4  674f2fec  storeli.w r2, -2316(r30)
0004d8  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0004dc  9f000fed  addli r1, r30, -2432
0004e0  e6c00300  vshuffle2.hf vr1, vr7
0004e4  c2830100  vload.mz vr7{mr0}, 0(r3)
0004e8  9f010e04  addli r3, r28, 512
0004ec  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004f0  9f808502  addli r1, r11, 320
0004f4  66c00100  vshuffle2.hf vr0, vr3
0004f8  e6c20200  vshuffle2.hf vr5, vr5
0004fc  670f3fec  storeli.w r3, -2320(r30)
000500  c2810004  vload.mz vr3{mr2}, 0(r1)
000504  42830000  vload.mz vr6{mr0}, 0(r1)
000508  9f008fea  addli r1, r30, -2752
00050c  e6c10100  vshuffle2.hf vr3, vr3
000510  16116202  vadd.f.mz.rn vr2{mr1}, vr4, vr6
000514  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000518  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
00051c  9f000feb  addli r1, r30, -2688
000520  c2010200  vload.mz vr3{mr0}, 0(r4)
000524  1f028e05  addli r4, r28, 704
000528  e74f4fec  storeli.w r4, -2308(r30)
00052c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000530  1690a302  vadd.f.mz.rn vr0{mr1}, vr7, vr10
000534  9f008feb  addli r1, r30, -2624
000538  c2830104  vload.mz vr7{mr2}, 0(r3)
00053c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000540  16905002  vadd.f.mz.rn vr0{mr1}, vr1, vr5
000544  9f008fec  addli r1, r30, -2496
000548  c2820100  vload.mz vr5{mr0}, 0(r3)
00054c  9f018fe9  addli r3, r30, -2880
000550  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000554  9f808503  addli r1, r11, 448
000558  66c00500  vshuffle2.hf vr0, vr11
00055c  c2850204  vload.mz vr11{mr2}, 0(r5)
000560  c2800004  vload.mz vr1{mr2}, 0(r1)
000564  42820000  vload.mz vr4{mr0}, 0(r1)
000568  9f800504  addli r1, r11, 512
00056c  42830000  vload.mz vr6{mr0}, 0(r1)
000570  e6c00000  vshuffle2.hf vr1, vr1
000574  16914102  vadd.f.mz.rn vr2{mr1}, vr3, vr4
000578  c2010104  vload.mz vr3{mr2}, 0(r2)
00057c  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
000580  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
000584  9f010fe9  addli r3, r30, -2944
000588  e6c00300  vshuffle2.hf vr1, vr7
00058c  c2030304  vload.mz vr7{mr2}, 0(r6)
000590  e6c10100  vshuffle2.hf vr3, vr3
000594  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
000598  16906202  vadd.f.mz.rn vr0{mr1}, vr5, vr6
00059c  9f010fea  addli r3, r30, -2816
0005a0  c2020100  vload.mz vr5{mr0}, 0(r2)
0005a4  1f818505  addli r2, r11, 704
0005a8  42050100  vload.mz vr10{mr0}, 0(r2)
0005ac  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0005b0  42800004  vload.mz vr0{mr2}, 0(r1)
0005b4  9f808504  addli r1, r11, 576
0005b8  9f018e06  addli r3, r28, 832
0005bc  42820004  vload.mz vr4{mr2}, 0(r1)
0005c0  42830000  vload.mz vr6{mr0}, 0(r1)
0005c4  9f008fe8  addli r1, r30, -3008
0005c8  42840104  vload.mz vr8{mr2}, 0(r3)
0005cc  e74d3fe0  storeli.w r3, -3876(r30)
0005d0  66400000  vshuffle2.hf vr0, vr0
0005d4  66420200  vshuffle2.hf vr4, vr4
0005d8  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
0005dc  96906202  vadd.f.mz.rn vr1{mr1}, vr5, vr6
0005e0  c2020300  vload.mz vr5{mr0}, 0(r6)
0005e4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0005e8  9f008fe7  addli r1, r30, -3136
0005ec  42000204  vload.mz vr0{mr2}, 0(r4)
0005f0  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0005f4  96904102  vadd.f.mz.rn vr1{mr1}, vr3, vr4
0005f8  9f000fe8  addli r1, r30, -3072
0005fc  42020104  vload.mz vr4{mr2}, 0(r2)
000600  1f818506  addli r2, r11, 832
000604  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000608  9f800505  addli r1, r11, 640
00060c  e6c00300  vshuffle2.hf vr1, vr7
000610  c2030200  vload.mz vr7{mr0}, 0(r4)
000614  66400000  vshuffle2.hf vr0, vr0
000618  1f020e07  addli r4, r28, 896
00061c  c2810004  vload.mz vr3{mr2}, 0(r1)
000620  42830000  vload.mz vr6{mr0}, 0(r1)
000624  9f008fe5  addli r1, r30, -3392
000628  66420200  vshuffle2.hf vr4, vr4
00062c  670e4fe0  storeli.w r4, -3872(r30)
000630  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
000634  42820200  vload.mz vr4{mr0}, 0(r5)
000638  9f028000  addli r5, zero, 64
00063c  e6c10100  vshuffle2.hf vr3, vr3
000640  16916202  vadd.f.mz.rn vr2{mr1}, vr5, vr6
000644  c2020104  vload.mz vr5{mr2}, 0(r2)
000648  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00064c  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000650  9f008fe6  addli r1, r30, -3264
000654  e6c20200  vshuffle2.hf vr5, vr5
000658  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00065c  9690a302  vadd.f.mz.rn vr1{mr1}, vr7, vr10
000660  9f000fe6  addli r1, r30, -3328
000664  c2830100  vload.mz vr7{mr0}, 0(r3)
000668  42050204  vload.mz vr10{mr2}, 0(r4)
00066c  9f018e07  addli r3, r28, 960
000670  1f0e0002  addli r28, zero, 256
000674  674e3fe0  storeli.w r3, -3868(r30)
000678  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00067c  9f000fe7  addli r1, r30, -3200
000680  e6400400  vshuffle2.hf vr1, vr8
000684  42040100  vload.mz vr8{mr0}, 0(r2)
000688  1f818507  addli r2, r11, 960
00068c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000690  9f800506  addli r1, r11, 768
000694  66c00500  vshuffle2.hf vr0, vr11
000698  42830000  vload.mz vr6{mr0}, 0(r1)
00069c  c2810004  vload.mz vr3{mr2}, 0(r1)
0006a0  9f000fe5  addli r1, r30, -3456
0006a4  96955002  vadd.f.mz.rn vr11{mr1}, vr1, vr5
0006a8  e6400500  vshuffle2.hf vr1, vr10
0006ac  42050100  vload.mz vr10{mr0}, 0(r2)
0006b0  c2020104  vload.mz vr5{mr2}, 0(r2)
0006b4  63016fda  loadli.w r2,  -4816(r30)
0006b8  16116202  vadd.f.mz.rn vr2{mr1}, vr4, vr6
0006bc  e6c10100  vshuffle2.hf vr3, vr3
0006c0  16938302  vadd.f.mz.rn vr6{mr1}, vr7, vr8
0006c4  c2030200  vload.mz vr7{mr0}, 0(r4)
0006c8  42840100  vload.mz vr8{mr0}, 0(r3)
0006cc  42820104  vload.mz vr4{mr2}, 0(r3)
0006d0  e6c20200  vshuffle2.hf vr5, vr5
0006d4  9f010001  addli r3, zero, 128
0006d8  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0006dc  9f800507  addli r1, r11, 896
0006e0  96143002  vadd.f.mz.rn vr9{mr1}, vr0, vr3
0006e4  c2810004  vload.mz vr3{mr2}, 0(r1)
0006e8  42800000  vload.mz vr0{mr0}, 0(r1)
0006ec  9f008fe0  addli r1, r30, -4032
0006f0  66420200  vshuffle2.hf vr4, vr4
0006f4  96125202  vadd.f.mz.rn vr5{mr1}, vr4, vr5
0006f8  e6c10100  vshuffle2.hf vr3, vr3
0006fc  16910302  vadd.f.mz.rn vr2{mr1}, vr7, vr0
000700  1610a402  vadd.f.mz.rn vr0{mr1}, vr8, vr10
000704  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000708  9f000fe3  addli r1, r30, -3712
00070c  96933002  vadd.f.mz.rn vr7{mr1}, vr1, vr3
000710  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000714  9f000fe1  addli r1, r30, -3968
000718  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00071c  9f000fe2  addli r1, r30, -3840
000720  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000724  9f008fe2  addli r1, r30, -3776
000728  12351002  vadd.s.mz vr10{mr1}, zero, vr1
00072c  b6908002  vmax.f.mz vr1{mr1}, vr1, vr8
000730  b6904002  vmax.f.mz vr1{mr1}, vr1, vr4
000734  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000738  9f000fe4  addli r1, r30, -3584
00073c  b6904002  vmax.f.mz vr1{mr1}, vr1, vr4
000740  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000744  9f008fe4  addli r1, r30, -3520
000748  b6904002  vmax.f.mz vr1{mr1}, vr1, vr4
00074c  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000750  9f008fe3  addli r1, r30, -3648
000754  b6904002  vmax.f.mz vr1{mr1}, vr1, vr4
000758  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
00075c  9f000fec  addli r1, r30, -2560
000760  b6904002  vmax.f.mz vr1{mr1}, vr1, vr4
000764  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000768  9f000fed  addli r1, r30, -2432
00076c  b6904002  vmax.f.mz vr1{mr1}, vr1, vr4
000770  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
000774  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000778  9f008fea  addli r1, r30, -2752
00077c  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
000780  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000784  9f000feb  addli r1, r30, -2688
000788  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
00078c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000790  9f008feb  addli r1, r30, -2624
000794  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
000798  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
00079c  9f008fec  addli r1, r30, -2496
0007a0  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
0007a4  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0007a8  9f008fe9  addli r1, r30, -2880
0007ac  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
0007b0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0007b4  9f000fe9  addli r1, r30, -2944
0007b8  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
0007bc  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0007c0  9f000fea  addli r1, r30, -2816
0007c4  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
0007c8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0007cc  9f008fe8  addli r1, r30, -3008
0007d0  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
0007d4  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0007d8  9f008fe7  addli r1, r30, -3136
0007dc  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
0007e0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0007e4  9f000fe8  addli r1, r30, -3072
0007e8  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
0007ec  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0007f0  9f008fe5  addli r1, r30, -3392
0007f4  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
0007f8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0007fc  9f008fe6  addli r1, r30, -3264
000800  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
000804  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000808  9f000fe6  addli r1, r30, -3328
00080c  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
000810  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000814  9f000fe7  addli r1, r30, -3200
000818  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
00081c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000820  9f000fe5  addli r1, r30, -3456
000824  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
000828  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
00082c  9f008fdc  addli r1, r30, -4544
000830  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
000834  b6909002  vmax.f.mz vr1{mr1}, vr1, vr9
000838  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
00083c  9f000fdc  addli r1, r30, -4608
000840  b6906002  vmax.f.mz vr1{mr1}, vr1, vr6
000844  b690b002  vmax.f.mz vr1{mr1}, vr1, vr11
000848  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
00084c  9f000fdd  addli r1, r30, -4480
000850  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
000854  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
000858  9f008fda  addli r1, r30, -4800
00085c  92357002  vadd.s.mz vr11{mr1}, zero, vr7
000860  b690b002  vmax.f.mz vr1{mr1}, vr1, vr11
000864  b6900002  vmax.f.mz vr1{mr1}, vr1, vr0
000868  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
00086c  9f000fdb  addli r1, r30, -4736
000870  b6905002  vmax.f.mz vr1{mr1}, vr1, vr5
000874  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000878  9f008fdb  addli r1, r30, -4672
00087c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000880  eaf216c0  vsrl.p vr5, r13, vr1
000884  b6905002  vmax.f.mz vr1{mr1}, vr1, vr5
000888  eaf217c0  vsrl.p vr5, r15, vr1
00088c  b6905002  vmax.f.mz vr1{mr1}, vr1, vr5
000890  ea7218c0  vsrl.p vr5, r16, vr1
000894  b6905002  vmax.f.mz vr1{mr1}, vr1, vr5
000898  eaf218c0  vsrl.p vr5, r17, vr1
00089c  b6905002  vmax.f.mz vr1{mr1}, vr1, vr5
0008a0  fa900040  vextracti.f r1, 0(vr1)
0008a4  73601100  stores.w r1, 0(r2)
0008a8  00a00300  mfence { lm, sm, gm }
0008ac  80a10a04  csr_set csr3, r21
0008b0  00d00100  sync_group
0008b4  bb200900  bneq r18, zero, 40
0008b8  63457fda  loadli.w r10,  -4804(r30)
0008bc  ef400500  loads.w r1, 0(r10)
0008c0  6f414500  loads.w r2, 4(r10)
0008c4  6f428500  loads.w r4, 8(r10)
0008c8  6f43c500  loads.w r6, 12(r10)
0008cc  8be02048  max.f r1, r1, r2
0008d0  8be04048  max.f r1, r1, r4
0008d4  8be06048  max.f r1, r1, r6
0008d8  73601500  stores.w r1, 0(r10)
0008dc  00a00300  mfence { lm, sm, gm }
0008e0  80a10a04  csr_set csr3, r21
0008e4  00d00100  sync_group
0008e8  e3407fda  loadli.w r1,  -4804(r30)
0008ec  2b010080  lui r2, 524288
0008f0  9f040ffe  addli r9, r30, -256
0008f4  efc00000  loads.w r1, 0(r1)
0008f8  17aa2000  xor r20, r1, r2
0008fc  9f000fe2  addli r1, r30, -3840
000900  1211aa02  vadd.f.mz.rn vr2{mr1}, r20, vr10
000904  46102fe2  vstore_mask16.mz vr2{mr1}, 1792(r30)
000908  92108a02  vadd.f.mz.rn vr1{mr1}, r20, vr8
00090c  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
000910  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000914  9f008fe2  addli r1, r30, -3776
000918  92100a02  vadd.f.mz.rn vr1{mr1}, r20, vr0
00091c  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
000920  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000924  9f000fe4  addli r1, r30, -3584
000928  92100a02  vadd.f.mz.rn vr1{mr1}, r20, vr0
00092c  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
000930  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000934  00a00000  mfence { lm }
000938  e3800400  loadli.w r1,  0(r9)
00093c  63c10400  loadli.w r2,  4(r9)
000940  63821400  loadli.w r4,  8(r9)
000944  63c31400  loadli.w r6,  12(r9)
000948  63852400  loadli.w r10,  16(r9)
00094c  e3c52400  loadli.w r11,  20(r9)
000950  e3863400  loadli.w r13,  24(r9)
000954  e3c73400  loadli.w r15,  28(r9)
000958  63884400  loadli.w r16,  32(r9)
00095c  e3c84400  loadli.w r17,  36(r9)
000960  e3895400  loadli.w r19,  40(r9)
000964  e3ca5400  loadli.w r21,  44(r9)
000968  638c6400  loadli.w r24,  48(r9)
00096c  e3cc6400  loadli.w r25,  52(r9)
000970  638d7400  loadli.w r26,  56(r9)
000974  e3cd7400  loadli.w r27,  60(r9)
000978  8f800000  exp.f.rn r1, r1
00097c  0f010100  exp.f.rn r2, r2
000980  0f020200  exp.f.rn r4, r4
000984  0f030300  exp.f.rn r6, r6
000988  0f050500  exp.f.rn r10, r10
00098c  8f850500  exp.f.rn r11, r11
000990  8f860600  exp.f.rn r13, r13
000994  8f870700  exp.f.rn r15, r15
000998  0f080800  exp.f.rn r16, r16
00099c  8f880800  exp.f.rn r17, r17
0009a0  8f890900  exp.f.rn r19, r19
0009a4  8f8a0a00  exp.f.rn r21, r21
0009a8  0f0c0c00  exp.f.rn r24, r24
0009ac  8f8c0c00  exp.f.rn r25, r25
0009b0  0f0d0d00  exp.f.rn r26, r26
0009b4  8f8d0d00  exp.f.rn r27, r27
0009b8  67801400  storeli.w r1, 0(r9)
0009bc  67c02400  storeli.w r2, 4(r9)
0009c0  e7804400  storeli.w r4, 8(r9)
0009c4  e7c06400  storeli.w r6, 12(r9)
0009c8  6781a400  storeli.w r10, 16(r9)
0009cc  67c1b400  storeli.w r11, 20(r9)
0009d0  e781d400  storeli.w r13, 24(r9)
0009d4  e7c1f400  storeli.w r15, 28(r9)
0009d8  67820401  storeli.w r16, 32(r9)
0009dc  67c21401  storeli.w r17, 36(r9)
0009e0  e7823401  storeli.w r19, 40(r9)
0009e4  e7c25401  storeli.w r21, 44(r9)
0009e8  67838401  storeli.w r24, 48(r9)
0009ec  67c39401  storeli.w r25, 52(r9)
0009f0  e783a401  storeli.w r26, 56(r9)
0009f4  e7c3b401  storeli.w r27, 60(r9)
0009f8  e3808400  loadli.w r1,  64(r9)
0009fc  63c18400  loadli.w r2,  68(r9)
000a00  63829400  loadli.w r4,  72(r9)
000a04  63c39400  loadli.w r6,  76(r9)
000a08  6385a400  loadli.w r10,  80(r9)
000a0c  e3c5a400  loadli.w r11,  84(r9)
000a10  e386b400  loadli.w r13,  88(r9)
000a14  e3c7b400  loadli.w r15,  92(r9)
000a18  6388c400  loadli.w r16,  96(r9)
000a1c  e3c8c400  loadli.w r17,  100(r9)
000a20  e389d400  loadli.w r19,  104(r9)
000a24  e3cad400  loadli.w r21,  108(r9)
000a28  638ce400  loadli.w r24,  112(r9)
000a2c  e3cce400  loadli.w r25,  116(r9)
000a30  638df400  loadli.w r26,  120(r9)
000a34  e3cdf400  loadli.w r27,  124(r9)
000a38  8f800000  exp.f.rn r1, r1
000a3c  0f010100  exp.f.rn r2, r2
000a40  0f020200  exp.f.rn r4, r4
000a44  0f030300  exp.f.rn r6, r6
000a48  0f050500  exp.f.rn r10, r10
000a4c  8f850500  exp.f.rn r11, r11
000a50  8f860600  exp.f.rn r13, r13
000a54  8f870700  exp.f.rn r15, r15
000a58  0f080800  exp.f.rn r16, r16
000a5c  8f880800  exp.f.rn r17, r17
000a60  8f890900  exp.f.rn r19, r19
000a64  8f8a0a00  exp.f.rn r21, r21
000a68  0f0c0c00  exp.f.rn r24, r24
000a6c  8f8c0c00  exp.f.rn r25, r25
000a70  0f0d0d00  exp.f.rn r26, r26
000a74  8f8d0d00  exp.f.rn r27, r27
000a78  67841400  storeli.w r1, 64(r9)
000a7c  67c42400  storeli.w r2, 68(r9)
000a80  e7844400  storeli.w r4, 72(r9)
000a84  e7c46400  storeli.w r6, 76(r9)
000a88  6785a400  storeli.w r10, 80(r9)
000a8c  67c5b400  storeli.w r11, 84(r9)
000a90  e785d400  storeli.w r13, 88(r9)
000a94  e7c5f400  storeli.w r15, 92(r9)
000a98  67860401  storeli.w r16, 96(r9)
000a9c  67c61401  storeli.w r17, 100(r9)
000aa0  e7863401  storeli.w r19, 104(r9)
000aa4  e7c65401  storeli.w r21, 108(r9)
000aa8  67878401  storeli.w r24, 112(r9)
000aac  67c79401  storeli.w r25, 116(r9)
000ab0  e787a401  storeli.w r26, 120(r9)
000ab4  e7c7b401  storeli.w r27, 124(r9)
000ab8  e3800401  loadli.w r1,  128(r9)
000abc  63c10401  loadli.w r2,  132(r9)
000ac0  63821401  loadli.w r4,  136(r9)
000ac4  63c31401  loadli.w r6,  140(r9)
000ac8  63852401  loadli.w r10,  144(r9)
000acc  e3c52401  loadli.w r11,  148(r9)
000ad0  e3863401  loadli.w r13,  152(r9)
000ad4  e3c73401  loadli.w r15,  156(r9)
000ad8  63884401  loadli.w r16,  160(r9)
000adc  e3c84401  loadli.w r17,  164(r9)
000ae0  e3895401  loadli.w r19,  168(r9)
000ae4  e3ca5401  loadli.w r21,  172(r9)
000ae8  638c6401  loadli.w r24,  176(r9)
000aec  e3cc6401  loadli.w r25,  180(r9)
000af0  638d7401  loadli.w r26,  184(r9)
000af4  e3cd7401  loadli.w r27,  188(r9)
000af8  8f800000  exp.f.rn r1, r1
000afc  0f010100  exp.f.rn r2, r2
000b00  0f020200  exp.f.rn r4, r4
000b04  0f030300  exp.f.rn r6, r6
000b08  0f050500  exp.f.rn r10, r10
000b0c  8f850500  exp.f.rn r11, r11
000b10  8f860600  exp.f.rn r13, r13
000b14  8f870700  exp.f.rn r15, r15
000b18  0f080800  exp.f.rn r16, r16
000b1c  8f880800  exp.f.rn r17, r17
000b20  8f890900  exp.f.rn r19, r19
000b24  8f8a0a00  exp.f.rn r21, r21
000b28  0f0c0c00  exp.f.rn r24, r24
000b2c  8f8c0c00  exp.f.rn r25, r25
000b30  0f0d0d00  exp.f.rn r26, r26
000b34  8f8d0d00  exp.f.rn r27, r27
000b38  67881400  storeli.w r1, 128(r9)
000b3c  67c82400  storeli.w r2, 132(r9)
000b40  e7884400  storeli.w r4, 136(r9)
000b44  e7c86400  storeli.w r6, 140(r9)
000b48  6789a400  storeli.w r10, 144(r9)
000b4c  67c9b400  storeli.w r11, 148(r9)
000b50  e789d400  storeli.w r13, 152(r9)
000b54  e7c9f400  storeli.w r15, 156(r9)
000b58  678a0401  storeli.w r16, 160(r9)
000b5c  67ca1401  storeli.w r17, 164(r9)
000b60  e78a3401  storeli.w r19, 168(r9)
000b64  e7ca5401  storeli.w r21, 172(r9)
000b68  678b8401  storeli.w r24, 176(r9)
000b6c  67cb9401  storeli.w r25, 180(r9)
000b70  e78ba401  storeli.w r26, 184(r9)
000b74  e7cbb401  storeli.w r27, 188(r9)
000b78  e3808401  loadli.w r1,  192(r9)
000b7c  63c18401  loadli.w r2,  196(r9)
000b80  63829401  loadli.w r4,  200(r9)
000b84  63c39401  loadli.w r6,  204(r9)
000b88  6385a401  loadli.w r10,  208(r9)
000b8c  e3c5a401  loadli.w r11,  212(r9)
000b90  e386b401  loadli.w r13,  216(r9)
000b94  e3c7b401  loadli.w r15,  220(r9)
000b98  6388c401  loadli.w r16,  224(r9)
000b9c  e3c8c401  loadli.w r17,  228(r9)
000ba0  e389d401  loadli.w r19,  232(r9)
000ba4  e3cad401  loadli.w r21,  236(r9)
000ba8  638ce401  loadli.w r24,  240(r9)
000bac  e3cce401  loadli.w r25,  244(r9)
000bb0  638df401  loadli.w r26,  248(r9)
000bb4  e3cdf401  loadli.w r27,  252(r9)
000bb8  8f800000  exp.f.rn r1, r1
000bbc  0f010100  exp.f.rn r2, r2
000bc0  0f020200  exp.f.rn r4, r4
000bc4  0f030300  exp.f.rn r6, r6
000bc8  0f050500  exp.f.rn r10, r10
000bcc  8f850500  exp.f.rn r11, r11
000bd0  8f860600  exp.f.rn r13, r13
000bd4  8f870700  exp.f.rn r15, r15
000bd8  0f080800  exp.f.rn r16, r16
000bdc  8f880800  exp.f.rn r17, r17
000be0  8f890900  exp.f.rn r19, r19
000be4  8f8a0a00  exp.f.rn r21, r21
000be8  0f0c0c00  exp.f.rn r24, r24
000bec  8f8c0c00  exp.f.rn r25, r25
000bf0  0f0d0d00  exp.f.rn r26, r26
000bf4  8f8d0d00  exp.f.rn r27, r27
000bf8  678c1400  storeli.w r1, 192(r9)
000bfc  67cc2400  storeli.w r2, 196(r9)
000c00  e78c4400  storeli.w r4, 200(r9)
000c04  e7cc6400  storeli.w r6, 204(r9)
000c08  678da400  storeli.w r10, 208(r9)
000c0c  67cdb400  storeli.w r11, 212(r9)
000c10  e78dd400  storeli.w r13, 216(r9)
000c14  e7cdf400  storeli.w r15, 220(r9)
000c18  678e0401  storeli.w r16, 224(r9)
000c1c  67ce1401  storeli.w r17, 228(r9)
000c20  e78e3401  storeli.w r19, 232(r9)
000c24  e7ce5401  storeli.w r21, 236(r9)
000c28  678f8401  storeli.w r24, 240(r9)
000c2c  67cf9401  storeli.w r25, 244(r9)
000c30  e78fa401  storeli.w r26, 248(r9)
000c34  e7cfb401  storeli.w r27, 252(r9)
000c38  00a00000  mfence { lm }
000c3c  12110a02  vadd.f.mz.rn vr2{mr1}, r20, vr0
000c40  c2100fe2  vload_mask16.mz vr1{mr1}, 1792(r30)
000c44  c2128fe2  vload_mask16.mz vr5{mr1}, 1856(r30)
000c48  9f008fe4  addli r1, r30, -3520
000c4c  42140fe3  vload_mask16.mz vr8{mr1}, 1920(r30)
000c50  c2138fe3  vload_mask16.mz vr7{mr1}, 1984(r30)
000c54  46102fe2  vstore_mask16.mz vr2{mr1}, 1792(r30)
000c58  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000c5c  9f008fe3  addli r1, r30, -3648
000c60  12110a02  vadd.f.mz.rn vr2{mr1}, r20, vr0
000c64  46142fe2  vstore_mask16.mz vr2{mr1}, 1856(r30)
000c68  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000c6c  9f008fdd  addli r1, r30, -4416
000c70  12110a02  vadd.f.mz.rn vr2{mr1}, r20, vr0
000c74  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000c78  9f000fec  addli r1, r30, -2560
000c7c  46182fe2  vstore_mask16.mz vr2{mr1}, 1920(r30)
000c80  96925002  vadd.f.mz.rn vr5{mr1}, vr1, vr5
000c84  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000c88  9f000fde  addli r1, r30, -4352
000c8c  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
000c90  461c2fe2  vstore_mask16.mz vr2{mr1}, 1984(r30)
000c94  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
000c98  9f000fe3  addli r1, r30, -3712
000c9c  16918202  vadd.f.mz.rn vr2{mr1}, vr5, vr8
000ca0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000ca4  00a00000  mfence { lm }
000ca8  e3800400  loadli.w r1,  0(r9)
000cac  63c10400  loadli.w r2,  4(r9)
000cb0  63821400  loadli.w r4,  8(r9)
000cb4  63c31400  loadli.w r6,  12(r9)
000cb8  63852400  loadli.w r10,  16(r9)
000cbc  e3c52400  loadli.w r11,  20(r9)
000cc0  e3863400  loadli.w r13,  24(r9)
000cc4  e3c73400  loadli.w r15,  28(r9)
000cc8  63884400  loadli.w r16,  32(r9)
000ccc  e3c84400  loadli.w r17,  36(r9)
000cd0  e3895400  loadli.w r19,  40(r9)
000cd4  e3ca5400  loadli.w r21,  44(r9)
000cd8  638c6400  loadli.w r24,  48(r9)
000cdc  e3cc6400  loadli.w r25,  52(r9)
000ce0  638d7400  loadli.w r26,  56(r9)
000ce4  e3cd7400  loadli.w r27,  60(r9)
000ce8  8f800000  exp.f.rn r1, r1
000cec  0f010100  exp.f.rn r2, r2
000cf0  0f020200  exp.f.rn r4, r4
000cf4  0f030300  exp.f.rn r6, r6
000cf8  0f050500  exp.f.rn r10, r10
000cfc  8f850500  exp.f.rn r11, r11
000d00  8f860600  exp.f.rn r13, r13
000d04  8f870700  exp.f.rn r15, r15
000d08  0f080800  exp.f.rn r16, r16
000d0c  8f880800  exp.f.rn r17, r17
000d10  8f890900  exp.f.rn r19, r19
000d14  8f8a0a00  exp.f.rn r21, r21
000d18  0f0c0c00  exp.f.rn r24, r24
000d1c  8f8c0c00  exp.f.rn r25, r25
000d20  0f0d0d00  exp.f.rn r26, r26
000d24  8f8d0d00  exp.f.rn r27, r27
000d28  67801400  storeli.w r1, 0(r9)
000d2c  67c02400  storeli.w r2, 4(r9)
000d30  e7804400  storeli.w r4, 8(r9)
000d34  e7c06400  storeli.w r6, 12(r9)
000d38  6781a400  storeli.w r10, 16(r9)
000d3c  67c1b400  storeli.w r11, 20(r9)
000d40  e781d400  storeli.w r13, 24(r9)
000d44  e7c1f400  storeli.w r15, 28(r9)
000d48  67820401  storeli.w r16, 32(r9)
000d4c  67c21401  storeli.w r17, 36(r9)
000d50  e7823401  storeli.w r19, 40(r9)
000d54  e7c25401  storeli.w r21, 44(r9)
000d58  67838401  storeli.w r24, 48(r9)
000d5c  67c39401  storeli.w r25, 52(r9)
000d60  e783a401  storeli.w r26, 56(r9)
000d64  e7c3b401  storeli.w r27, 60(r9)
000d68  e3808400  loadli.w r1,  64(r9)
000d6c  63c18400  loadli.w r2,  68(r9)
000d70  63829400  loadli.w r4,  72(r9)
000d74  63c39400  loadli.w r6,  76(r9)
000d78  6385a400  loadli.w r10,  80(r9)
000d7c  e3c5a400  loadli.w r11,  84(r9)
000d80  e386b400  loadli.w r13,  88(r9)
000d84  e3c7b400  loadli.w r15,  92(r9)
000d88  6388c400  loadli.w r16,  96(r9)
000d8c  e3c8c400  loadli.w r17,  100(r9)
000d90  e389d400  loadli.w r19,  104(r9)
000d94  e3cad400  loadli.w r21,  108(r9)
000d98  638ce400  loadli.w r24,  112(r9)
000d9c  e3cce400  loadli.w r25,  116(r9)
000da0  638df400  loadli.w r26,  120(r9)
000da4  e3cdf400  loadli.w r27,  124(r9)
000da8  8f800000  exp.f.rn r1, r1
000dac  0f010100  exp.f.rn r2, r2
000db0  0f020200  exp.f.rn r4, r4
000db4  0f030300  exp.f.rn r6, r6
000db8  0f050500  exp.f.rn r10, r10
000dbc  8f850500  exp.f.rn r11, r11
000dc0  8f860600  exp.f.rn r13, r13
000dc4  8f870700  exp.f.rn r15, r15
000dc8  0f080800  exp.f.rn r16, r16
000dcc  8f880800  exp.f.rn r17, r17
000dd0  8f890900  exp.f.rn r19, r19
000dd4  8f8a0a00  exp.f.rn r21, r21
000dd8  0f0c0c00  exp.f.rn r24, r24
000ddc  8f8c0c00  exp.f.rn r25, r25
000de0  0f0d0d00  exp.f.rn r26, r26
000de4  8f8d0d00  exp.f.rn r27, r27
000de8  67841400  storeli.w r1, 64(r9)
000dec  67c42400  storeli.w r2, 68(r9)
000df0  e7844400  storeli.w r4, 72(r9)
000df4  e7c46400  storeli.w r6, 76(r9)
000df8  6785a400  storeli.w r10, 80(r9)
000dfc  67c5b400  storeli.w r11, 84(r9)
000e00  e785d400  storeli.w r13, 88(r9)
000e04  e7c5f400  storeli.w r15, 92(r9)
000e08  67860401  storeli.w r16, 96(r9)
000e0c  67c61401  storeli.w r17, 100(r9)
000e10  e7863401  storeli.w r19, 104(r9)
000e14  e7c65401  storeli.w r21, 108(r9)
000e18  67878401  storeli.w r24, 112(r9)
000e1c  67c79401  storeli.w r25, 116(r9)
000e20  e787a401  storeli.w r26, 120(r9)
000e24  e7c7b401  storeli.w r27, 124(r9)
000e28  e3800401  loadli.w r1,  128(r9)
000e2c  63c10401  loadli.w r2,  132(r9)
000e30  63821401  loadli.w r4,  136(r9)
000e34  63c31401  loadli.w r6,  140(r9)
000e38  63852401  loadli.w r10,  144(r9)
000e3c  e3c52401  loadli.w r11,  148(r9)
000e40  e3863401  loadli.w r13,  152(r9)
000e44  e3c73401  loadli.w r15,  156(r9)
000e48  63884401  loadli.w r16,  160(r9)
000e4c  e3c84401  loadli.w r17,  164(r9)
000e50  e3895401  loadli.w r19,  168(r9)
000e54  e3ca5401  loadli.w r21,  172(r9)
000e58  638c6401  loadli.w r24,  176(r9)
000e5c  e3cc6401  loadli.w r25,  180(r9)
000e60  638d7401  loadli.w r26,  184(r9)
000e64  e3cd7401  loadli.w r27,  188(r9)
000e68  8f800000  exp.f.rn r1, r1
000e6c  0f010100  exp.f.rn r2, r2
000e70  0f020200  exp.f.rn r4, r4
000e74  0f030300  exp.f.rn r6, r6
000e78  0f050500  exp.f.rn r10, r10
000e7c  8f850500  exp.f.rn r11, r11
000e80  8f860600  exp.f.rn r13, r13
000e84  8f870700  exp.f.rn r15, r15
000e88  0f080800  exp.f.rn r16, r16
000e8c  8f880800  exp.f.rn r17, r17
000e90  8f890900  exp.f.rn r19, r19
000e94  8f8a0a00  exp.f.rn r21, r21
000e98  0f0c0c00  exp.f.rn r24, r24
000e9c  8f8c0c00  exp.f.rn r25, r25
000ea0  0f0d0d00  exp.f.rn r26, r26
000ea4  8f8d0d00  exp.f.rn r27, r27
000ea8  67881400  storeli.w r1, 128(r9)
000eac  67c82400  storeli.w r2, 132(r9)
000eb0  e7884400  storeli.w r4, 136(r9)
000eb4  e7c86400  storeli.w r6, 140(r9)
000eb8  6789a400  storeli.w r10, 144(r9)
000ebc  67c9b400  storeli.w r11, 148(r9)
000ec0  e789d400  storeli.w r13, 152(r9)
000ec4  e7c9f400  storeli.w r15, 156(r9)
000ec8  678a0401  storeli.w r16, 160(r9)
000ecc  67ca1401  storeli.w r17, 164(r9)
000ed0  e78a3401  storeli.w r19, 168(r9)
000ed4  e7ca5401  storeli.w r21, 172(r9)
000ed8  678b8401  storeli.w r24, 176(r9)
000edc  67cb9401  storeli.w r25, 180(r9)
000ee0  e78ba401  storeli.w r26, 184(r9)
000ee4  e7cbb401  storeli.w r27, 188(r9)
000ee8  e3808401  loadli.w r1,  192(r9)
000eec  63c18401  loadli.w r2,  196(r9)
000ef0  63829401  loadli.w r4,  200(r9)
000ef4  63c39401  loadli.w r6,  204(r9)
000ef8  6385a401  loadli.w r10,  208(r9)
000efc  e3c5a401  loadli.w r11,  212(r9)
000f00  e386b401  loadli.w r13,  216(r9)
000f04  e3c7b401  loadli.w r15,  220(r9)
000f08  6388c401  loadli.w r16,  224(r9)
000f0c  e3c8c401  loadli.w r17,  228(r9)
000f10  e389d401  loadli.w r19,  232(r9)
000f14  e3cad401  loadli.w r21,  236(r9)
000f18  638ce401  loadli.w r24,  240(r9)
000f1c  e3cce401  loadli.w r25,  244(r9)
000f20  638df401  loadli.w r26,  248(r9)
000f24  e3cdf401  loadli.w r27,  252(r9)
000f28  8f800000  exp.f.rn r1, r1
000f2c  0f010100  exp.f.rn r2, r2
000f30  0f020200  exp.f.rn r4, r4
000f34  0f030300  exp.f.rn r6, r6
000f38  0f050500  exp.f.rn r10, r10
000f3c  8f850500  exp.f.rn r11, r11
000f40  8f860600  exp.f.rn r13, r13
000f44  8f870700  exp.f.rn r15, r15
000f48  0f080800  exp.f.rn r16, r16
000f4c  8f880800  exp.f.rn r17, r17
000f50  8f890900  exp.f.rn r19, r19
000f54  8f8a0a00  exp.f.rn r21, r21
000f58  0f0c0c00  exp.f.rn r24, r24
000f5c  8f8c0c00  exp.f.rn r25, r25
000f60  0f0d0d00  exp.f.rn r26, r26
000f64  8f8d0d00  exp.f.rn r27, r27
000f68  678c1400  storeli.w r1, 192(r9)
000f6c  67cc2400  storeli.w r2, 196(r9)
000f70  e78c4400  storeli.w r4, 200(r9)
000f74  e7cc6400  storeli.w r6, 204(r9)
000f78  678da400  storeli.w r10, 208(r9)
000f7c  67cdb400  storeli.w r11, 212(r9)
000f80  e78dd400  storeli.w r13, 216(r9)
000f84  e7cdf400  storeli.w r15, 220(r9)
000f88  678e0401  storeli.w r16, 224(r9)
000f8c  67ce1401  storeli.w r17, 228(r9)
000f90  e78e3401  storeli.w r19, 232(r9)
000f94  e7ce5401  storeli.w r21, 236(r9)
000f98  678f8401  storeli.w r24, 240(r9)
000f9c  67cf9401  storeli.w r25, 244(r9)
000fa0  e78fa401  storeli.w r26, 248(r9)
000fa4  e7cfb401  storeli.w r27, 252(r9)
000fa8  00a00000  mfence { lm }
000fac  92120a02  vadd.f.mz.rn vr5{mr1}, r20, vr0
000fb0  42150fe2  vload_mask16.mz vr10{mr1}, 1792(r30)
000fb4  9f008fde  addli r1, r30, -4288
000fb8  16117102  vadd.f.mz.rn vr2{mr1}, vr2, vr7
000fbc  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
000fc0  9f000fdf  addli r1, r30, -4224
000fc4  c2148fe2  vload_mask16.mz vr9{mr1}, 1856(r30)
000fc8  42140fe3  vload_mask16.mz vr8{mr1}, 1920(r30)
000fcc  c2138fe3  vload_mask16.mz vr7{mr1}, 1984(r30)
000fd0  46105fe2  vstore_mask16.mz vr5{mr1}, 1792(r30)
000fd4  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
000fd8  9f000fed  addli r1, r30, -2432
000fdc  1611a102  vadd.f.mz.rn vr2{mr1}, vr2, vr10
000fe0  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000fe4  9f008fea  addli r1, r30, -2752
000fe8  92125a02  vadd.f.mz.rn vr5{mr1}, r20, vr5
000fec  46145fe2  vstore_mask16.mz vr5{mr1}, 1856(r30)
000ff0  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000ff4  9f008fdf  addli r1, r30, -4160
000ff8  16119102  vadd.f.mz.rn vr2{mr1}, vr2, vr9
000ffc  92125a02  vadd.f.mz.rn vr5{mr1}, r20, vr5
001000  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
001004  9f000feb  addli r1, r30, -2688
001008  46185fe2  vstore_mask16.mz vr5{mr1}, 1920(r30)
00100c  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
001010  9f000fe0  addli r1, r30, -4096
001014  16118102  vadd.f.mz.rn vr2{mr1}, vr2, vr8
001018  92125a02  vadd.f.mz.rn vr5{mr1}, r20, vr5
00101c  461c5fe2  vstore_mask16.mz vr5{mr1}, 1984(r30)
001020  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
001024  9f008feb  addli r1, r30, -2624
001028  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
00102c  00a00000  mfence { lm }
001030  e3800400  loadli.w r1,  0(r9)
001034  63c10400  loadli.w r2,  4(r9)
001038  63821400  loadli.w r4,  8(r9)
00103c  63c31400  loadli.w r6,  12(r9)
001040  63852400  loadli.w r10,  16(r9)
001044  e3c52400  loadli.w r11,  20(r9)
001048  e3863400  loadli.w r13,  24(r9)
00104c  e3c73400  loadli.w r15,  28(r9)
001050  63884400  loadli.w r16,  32(r9)
001054  e3c84400  loadli.w r17,  36(r9)
001058  e3895400  loadli.w r19,  40(r9)
00105c  e3ca5400  loadli.w r21,  44(r9)
001060  638c6400  loadli.w r24,  48(r9)
001064  e3cc6400  loadli.w r25,  52(r9)
001068  638d7400  loadli.w r26,  56(r9)
00106c  e3cd7400  loadli.w r27,  60(r9)
001070  8f800000  exp.f.rn r1, r1
001074  0f010100  exp.f.rn r2, r2
001078  0f020200  exp.f.rn r4, r4
00107c  0f030300  exp.f.rn r6, r6
001080  0f050500  exp.f.rn r10, r10
001084  8f850500  exp.f.rn r11, r11
001088  8f860600  exp.f.rn r13, r13
00108c  8f870700  exp.f.rn r15, r15
001090  0f080800  exp.f.rn r16, r16
001094  8f880800  exp.f.rn r17, r17
001098  8f890900  exp.f.rn r19, r19
00109c  8f8a0a00  exp.f.rn r21, r21
0010a0  0f0c0c00  exp.f.rn r24, r24
0010a4  8f8c0c00  exp.f.rn r25, r25
0010a8  0f0d0d00  exp.f.rn r26, r26
0010ac  8f8d0d00  exp.f.rn r27, r27
0010b0  67801400  storeli.w r1, 0(r9)
0010b4  67c02400  storeli.w r2, 4(r9)
0010b8  e7804400  storeli.w r4, 8(r9)
0010bc  e7c06400  storeli.w r6, 12(r9)
0010c0  6781a400  storeli.w r10, 16(r9)
0010c4  67c1b400  storeli.w r11, 20(r9)
0010c8  e781d400  storeli.w r13, 24(r9)
0010cc  e7c1f400  storeli.w r15, 28(r9)
0010d0  67820401  storeli.w r16, 32(r9)
0010d4  67c21401  storeli.w r17, 36(r9)
0010d8  e7823401  storeli.w r19, 40(r9)
0010dc  e7c25401  storeli.w r21, 44(r9)
0010e0  67838401  storeli.w r24, 48(r9)
0010e4  67c39401  storeli.w r25, 52(r9)
0010e8  e783a401  storeli.w r26, 56(r9)
0010ec  e7c3b401  storeli.w r27, 60(r9)
0010f0  e3808400  loadli.w r1,  64(r9)
0010f4  63c18400  loadli.w r2,  68(r9)
0010f8  63829400  loadli.w r4,  72(r9)
0010fc  63c39400  loadli.w r6,  76(r9)
001100  6385a400  loadli.w r10,  80(r9)
001104  e3c5a400  loadli.w r11,  84(r9)
001108  e386b400  loadli.w r13,  88(r9)
00110c  e3c7b400  loadli.w r15,  92(r9)
001110  6388c400  loadli.w r16,  96(r9)
001114  e3c8c400  loadli.w r17,  100(r9)
001118  e389d400  loadli.w r19,  104(r9)
00111c  e3cad400  loadli.w r21,  108(r9)
001120  638ce400  loadli.w r24,  112(r9)
001124  e3cce400  loadli.w r25,  116(r9)
001128  638df400  loadli.w r26,  120(r9)
00112c  e3cdf400  loadli.w r27,  124(r9)
001130  8f800000  exp.f.rn r1, r1
001134  0f010100  exp.f.rn r2, r2
001138  0f020200  exp.f.rn r4, r4
00113c  0f030300  exp.f.rn r6, r6
001140  0f050500  exp.f.rn r10, r10
001144  8f850500  exp.f.rn r11, r11
001148  8f860600  exp.f.rn r13, r13
00114c  8f870700  exp.f.rn r15, r15
001150  0f080800  exp.f.rn r16, r16
001154  8f880800  exp.f.rn r17, r17
001158  8f890900  exp.f.rn r19, r19
00115c  8f8a0a00  exp.f.rn r21, r21
001160  0f0c0c00  exp.f.rn r24, r24
001164  8f8c0c00  exp.f.rn r25, r25
001168  0f0d0d00  exp.f.rn r26, r26
00116c  8f8d0d00  exp.f.rn r27, r27
001170  67841400  storeli.w r1, 64(r9)
001174  67c42400  storeli.w r2, 68(r9)
001178  e7844400  storeli.w r4, 72(r9)
00117c  e7c46400  storeli.w r6, 76(r9)
001180  6785a400  storeli.w r10, 80(r9)
001184  67c5b400  storeli.w r11, 84(r9)
001188  e785d400  storeli.w r13, 88(r9)
00118c  e7c5f400  storeli.w r15, 92(r9)
001190  67860401  storeli.w r16, 96(r9)
001194  67c61401  storeli.w r17, 100(r9)
001198  e7863401  storeli.w r19, 104(r9)
00119c  e7c65401  storeli.w r21, 108(r9)
0011a0  67878401  storeli.w r24, 112(r9)
0011a4  67c79401  storeli.w r25, 116(r9)
0011a8  e787a401  storeli.w r26, 120(r9)
0011ac  e7c7b401  storeli.w r27, 124(r9)
0011b0  e3800401  loadli.w r1,  128(r9)
0011b4  63c10401  loadli.w r2,  132(r9)
0011b8  63821401  loadli.w r4,  136(r9)
0011bc  63c31401  loadli.w r6,  140(r9)
0011c0  63852401  loadli.w r10,  144(r9)
0011c4  e3c52401  loadli.w r11,  148(r9)
0011c8  e3863401  loadli.w r13,  152(r9)
0011cc  e3c73401  loadli.w r15,  156(r9)
0011d0  63884401  loadli.w r16,  160(r9)
0011d4  e3c84401  loadli.w r17,  164(r9)
0011d8  e3895401  loadli.w r19,  168(r9)
0011dc  e3ca5401  loadli.w r21,  172(r9)
0011e0  638c6401  loadli.w r24,  176(r9)
0011e4  e3cc6401  loadli.w r25,  180(r9)
0011e8  638d7401  loadli.w r26,  184(r9)
0011ec  e3cd7401  loadli.w r27,  188(r9)
0011f0  8f800000  exp.f.rn r1, r1
0011f4  0f010100  exp.f.rn r2, r2
0011f8  0f020200  exp.f.rn r4, r4
0011fc  0f030300  exp.f.rn r6, r6
001200  0f050500  exp.f.rn r10, r10
001204  8f850500  exp.f.rn r11, r11
001208  8f860600  exp.f.rn r13, r13
00120c  8f870700  exp.f.rn r15, r15
001210  0f080800  exp.f.rn r16, r16
001214  8f880800  exp.f.rn r17, r17
001218  8f890900  exp.f.rn r19, r19
00121c  8f8a0a00  exp.f.rn r21, r21
001220  0f0c0c00  exp.f.rn r24, r24
001224  8f8c0c00  exp.f.rn r25, r25
001228  0f0d0d00  exp.f.rn r26, r26
00122c  8f8d0d00  exp.f.rn r27, r27
001230  67881400  storeli.w r1, 128(r9)
001234  67c82400  storeli.w r2, 132(r9)
001238  e7884400  storeli.w r4, 136(r9)
00123c  e7c86400  storeli.w r6, 140(r9)
001240  6789a400  storeli.w r10, 144(r9)
001244  67c9b400  storeli.w r11, 148(r9)
001248  e789d400  storeli.w r13, 152(r9)
00124c  e7c9f400  storeli.w r15, 156(r9)
001250  678a0401  storeli.w r16, 160(r9)
001254  67ca1401  storeli.w r17, 164(r9)
001258  e78a3401  storeli.w r19, 168(r9)
00125c  e7ca5401  storeli.w r21, 172(r9)
001260  678b8401  storeli.w r24, 176(r9)
001264  67cb9401  storeli.w r25, 180(r9)
001268  e78ba401  storeli.w r26, 184(r9)
00126c  e7cbb401  storeli.w r27, 188(r9)
001270  e3808401  loadli.w r1,  192(r9)
001274  63c18401  loadli.w r2,  196(r9)
001278  63829401  loadli.w r4,  200(r9)
00127c  63c39401  loadli.w r6,  204(r9)
001280  6385a401  loadli.w r10,  208(r9)
001284  e3c5a401  loadli.w r11,  212(r9)
001288  e386b401  loadli.w r13,  216(r9)
00128c  e3c7b401  loadli.w r15,  220(r9)
001290  6388c401  loadli.w r16,  224(r9)
001294  e3c8c401  loadli.w r17,  228(r9)
001298  e389d401  loadli.w r19,  232(r9)
00129c  e3cad401  loadli.w r21,  236(r9)
0012a0  638ce401  loadli.w r24,  240(r9)
0012a4  e3cce401  loadli.w r25,  244(r9)
0012a8  638df401  loadli.w r26,  248(r9)
0012ac  e3cdf401  loadli.w r27,  252(r9)
0012b0  8f800000  exp.f.rn r1, r1
0012b4  0f010100  exp.f.rn r2, r2
0012b8  0f020200  exp.f.rn r4, r4
0012bc  0f030300  exp.f.rn r6, r6
0012c0  0f050500  exp.f.rn r10, r10
0012c4  8f850500  exp.f.rn r11, r11
0012c8  8f860600  exp.f.rn r13, r13
0012cc  8f870700  exp.f.rn r15, r15
0012d0  0f080800  exp.f.rn r16, r16
0012d4  8f880800  exp.f.rn r17, r17
0012d8  8f890900  exp.f.rn r19, r19
0012dc  8f8a0a00  exp.f.rn r21, r21
0012e0  0f0c0c00  exp.f.rn r24, r24
0012e4  8f8c0c00  exp.f.rn r25, r25
0012e8  0f0d0d00  exp.f.rn r26, r26
0012ec  8f8d0d00  exp.f.rn r27, r27
0012f0  678c1400  storeli.w r1, 192(r9)
0012f4  67cc2400  storeli.w r2, 196(r9)
0012f8  e78c4400  storeli.w r4, 200(r9)
0012fc  e7cc6400  storeli.w r6, 204(r9)
001300  678da400  storeli.w r10, 208(r9)
001304  67cdb400  storeli.w r11, 212(r9)
001308  e78dd400  storeli.w r13, 216(r9)
00130c  e7cdf400  storeli.w r15, 220(r9)
001310  678e0401  storeli.w r16, 224(r9)
001314  67ce1401  storeli.w r17, 228(r9)
001318  e78e3401  storeli.w r19, 232(r9)
00131c  e7ce5401  storeli.w r21, 236(r9)
001320  678f8401  storeli.w r24, 240(r9)
001324  67cf9401  storeli.w r25, 244(r9)
001328  e78fa401  storeli.w r26, 248(r9)
00132c  e7cfb401  storeli.w r27, 252(r9)
001330  00a00000  mfence { lm }
001334  16117102  vadd.f.mz.rn vr2{mr1}, vr2, vr7
001338  42150fe2  vload_mask16.mz vr10{mr1}, 1792(r30)
00133c  9f008fe0  addli r1, r30, -4032
001340  92125a02  vadd.f.mz.rn vr5{mr1}, r20, vr5
001344  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
001348  9f000fe1  addli r1, r30, -3968
00134c  c2148fe2  vload_mask16.mz vr9{mr1}, 1856(r30)
001350  42140fe3  vload_mask16.mz vr8{mr1}, 1920(r30)
001354  c2138fe3  vload_mask16.mz vr7{mr1}, 1984(r30)
001358  46105fe2  vstore_mask16.mz vr5{mr1}, 1792(r30)
00135c  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
001360  9f008fec  addli r1, r30, -2496
001364  1611a102  vadd.f.mz.rn vr2{mr1}, vr2, vr10
001368  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
00136c  9f008fe9  addli r1, r30, -2880
001370  92125a02  vadd.f.mz.rn vr5{mr1}, r20, vr5
001374  46145fe2  vstore_mask16.mz vr5{mr1}, 1856(r30)
001378  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
00137c  9f000fe2  addli r1, r30, -3840
001380  16119102  vadd.f.mz.rn vr2{mr1}, vr2, vr9
001384  92125a02  vadd.f.mz.rn vr5{mr1}, r20, vr5
001388  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
00138c  9f000fe9  addli r1, r30, -2944
001390  46185fe2  vstore_mask16.mz vr5{mr1}, 1920(r30)
001394  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
001398  9f008fe2  addli r1, r30, -3776
00139c  16118102  vadd.f.mz.rn vr2{mr1}, vr2, vr8
0013a0  92125a02  vadd.f.mz.rn vr5{mr1}, r20, vr5
0013a4  461c5fe2  vstore_mask16.mz vr5{mr1}, 1984(r30)
0013a8  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0013ac  9f000fea  addli r1, r30, -2816
0013b0  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0013b4  00a00000  mfence { lm }
0013b8  e3800400  loadli.w r1,  0(r9)
0013bc  63c10400  loadli.w r2,  4(r9)
0013c0  63821400  loadli.w r4,  8(r9)
0013c4  63c31400  loadli.w r6,  12(r9)
0013c8  63852400  loadli.w r10,  16(r9)
0013cc  e3c52400  loadli.w r11,  20(r9)
0013d0  e3863400  loadli.w r13,  24(r9)
0013d4  e3c73400  loadli.w r15,  28(r9)
0013d8  63884400  loadli.w r16,  32(r9)
0013dc  e3c84400  loadli.w r17,  36(r9)
0013e0  e3895400  loadli.w r19,  40(r9)
0013e4  e3ca5400  loadli.w r21,  44(r9)
0013e8  638c6400  loadli.w r24,  48(r9)
0013ec  e3cc6400  loadli.w r25,  52(r9)
0013f0  638d7400  loadli.w r26,  56(r9)
0013f4  e3cd7400  loadli.w r27,  60(r9)
0013f8  8f800000  exp.f.rn r1, r1
0013fc  0f010100  exp.f.rn r2, r2
001400  0f020200  exp.f.rn r4, r4
001404  0f030300  exp.f.rn r6, r6
001408  0f050500  exp.f.rn r10, r10
00140c  8f850500  exp.f.rn r11, r11
001410  8f860600  exp.f.rn r13, r13
001414  8f870700  exp.f.rn r15, r15
001418  0f080800  exp.f.rn r16, r16
00141c  8f880800  exp.f.rn r17, r17
001420  8f890900  exp.f.rn r19, r19
001424  8f8a0a00  exp.f.rn r21, r21
001428  0f0c0c00  exp.f.rn r24, r24
00142c  8f8c0c00  exp.f.rn r25, r25
001430  0f0d0d00  exp.f.rn r26, r26
001434  8f8d0d00  exp.f.rn r27, r27
001438  67801400  storeli.w r1, 0(r9)
00143c  67c02400  storeli.w r2, 4(r9)
001440  e7804400  storeli.w r4, 8(r9)
001444  e7c06400  storeli.w r6, 12(r9)
001448  6781a400  storeli.w r10, 16(r9)
00144c  67c1b400  storeli.w r11, 20(r9)
001450  e781d400  storeli.w r13, 24(r9)
001454  e7c1f400  storeli.w r15, 28(r9)
001458  67820401  storeli.w r16, 32(r9)
00145c  67c21401  storeli.w r17, 36(r9)
001460  e7823401  storeli.w r19, 40(r9)
001464  e7c25401  storeli.w r21, 44(r9)
001468  67838401  storeli.w r24, 48(r9)
00146c  67c39401  storeli.w r25, 52(r9)
001470  e783a401  storeli.w r26, 56(r9)
001474  e7c3b401  storeli.w r27, 60(r9)
001478  e3808400  loadli.w r1,  64(r9)
00147c  63c18400  loadli.w r2,  68(r9)
001480  63829400  loadli.w r4,  72(r9)
001484  63c39400  loadli.w r6,  76(r9)
001488  6385a400  loadli.w r10,  80(r9)
00148c  e3c5a400  loadli.w r11,  84(r9)
001490  e386b400  loadli.w r13,  88(r9)
001494  e3c7b400  loadli.w r15,  92(r9)
001498  6388c400  loadli.w r16,  96(r9)
00149c  e3c8c400  loadli.w r17,  100(r9)
0014a0  e389d400  loadli.w r19,  104(r9)
0014a4  e3cad400  loadli.w r21,  108(r9)
0014a8  638ce400  loadli.w r24,  112(r9)
0014ac  e3cce400  loadli.w r25,  116(r9)
0014b0  638df400  loadli.w r26,  120(r9)
0014b4  e3cdf400  loadli.w r27,  124(r9)
0014b8  8f800000  exp.f.rn r1, r1
0014bc  0f010100  exp.f.rn r2, r2
0014c0  0f020200  exp.f.rn r4, r4
0014c4  0f030300  exp.f.rn r6, r6
0014c8  0f050500  exp.f.rn r10, r10
0014cc  8f850500  exp.f.rn r11, r11
0014d0  8f860600  exp.f.rn r13, r13
0014d4  8f870700  exp.f.rn r15, r15
0014d8  0f080800  exp.f.rn r16, r16
0014dc  8f880800  exp.f.rn r17, r17
0014e0  8f890900  exp.f.rn r19, r19
0014e4  8f8a0a00  exp.f.rn r21, r21
0014e8  0f0c0c00  exp.f.rn r24, r24
0014ec  8f8c0c00  exp.f.rn r25, r25
0014f0  0f0d0d00  exp.f.rn r26, r26
0014f4  8f8d0d00  exp.f.rn r27, r27
0014f8  67841400  storeli.w r1, 64(r9)
0014fc  67c42400  storeli.w r2, 68(r9)
001500  e7844400  storeli.w r4, 72(r9)
001504  e7c46400  storeli.w r6, 76(r9)
001508  6785a400  storeli.w r10, 80(r9)
00150c  67c5b400  storeli.w r11, 84(r9)
001510  e785d400  storeli.w r13, 88(r9)
001514  e7c5f400  storeli.w r15, 92(r9)
001518  67860401  storeli.w r16, 96(r9)
00151c  67c61401  storeli.w r17, 100(r9)
001520  e7863401  storeli.w r19, 104(r9)
001524  e7c65401  storeli.w r21, 108(r9)
001528  67878401  storeli.w r24, 112(r9)
00152c  67c79401  storeli.w r25, 116(r9)
001530  e787a401  storeli.w r26, 120(r9)
001534  e7c7b401  storeli.w r27, 124(r9)
001538  e3800401  loadli.w r1,  128(r9)
00153c  63c10401  loadli.w r2,  132(r9)
001540  63821401  loadli.w r4,  136(r9)
001544  63c31401  loadli.w r6,  140(r9)
001548  63852401  loadli.w r10,  144(r9)
00154c  e3c52401  loadli.w r11,  148(r9)
001550  e3863401  loadli.w r13,  152(r9)
001554  e3c73401  loadli.w r15,  156(r9)
001558  63884401  loadli.w r16,  160(r9)
00155c  e3c84401  loadli.w r17,  164(r9)
001560  e3895401  loadli.w r19,  168(r9)
001564  e3ca5401  loadli.w r21,  172(r9)
001568  638c6401  loadli.w r24,  176(r9)
00156c  e3cc6401  loadli.w r25,  180(r9)
001570  638d7401  loadli.w r26,  184(r9)
001574  e3cd7401  loadli.w r27,  188(r9)
001578  8f800000  exp.f.rn r1, r1
00157c  0f010100  exp.f.rn r2, r2
001580  0f020200  exp.f.rn r4, r4
001584  0f030300  exp.f.rn r6, r6
001588  0f050500  exp.f.rn r10, r10
00158c  8f850500  exp.f.rn r11, r11
001590  8f860600  exp.f.rn r13, r13
001594  8f870700  exp.f.rn r15, r15
001598  0f080800  exp.f.rn r16, r16
00159c  8f880800  exp.f.rn r17, r17
0015a0  8f890900  exp.f.rn r19, r19
0015a4  8f8a0a00  exp.f.rn r21, r21
0015a8  0f0c0c00  exp.f.rn r24, r24
0015ac  8f8c0c00  exp.f.rn r25, r25
0015b0  0f0d0d00  exp.f.rn r26, r26
0015b4  8f8d0d00  exp.f.rn r27, r27
0015b8  67881400  storeli.w r1, 128(r9)
0015bc  67c82400  storeli.w r2, 132(r9)
0015c0  e7884400  storeli.w r4, 136(r9)
0015c4  e7c86400  storeli.w r6, 140(r9)
0015c8  6789a400  storeli.w r10, 144(r9)
0015cc  67c9b400  storeli.w r11, 148(r9)
0015d0  e789d400  storeli.w r13, 152(r9)
0015d4  e7c9f400  storeli.w r15, 156(r9)
0015d8  678a0401  storeli.w r16, 160(r9)
0015dc  67ca1401  storeli.w r17, 164(r9)
0015e0  e78a3401  storeli.w r19, 168(r9)
0015e4  e7ca5401  storeli.w r21, 172(r9)
0015e8  678b8401  storeli.w r24, 176(r9)
0015ec  67cb9401  storeli.w r25, 180(r9)
0015f0  e78ba401  storeli.w r26, 184(r9)
0015f4  e7cbb401  storeli.w r27, 188(r9)
0015f8  e3808401  loadli.w r1,  192(r9)
0015fc  63c18401  loadli.w r2,  196(r9)
001600  63829401  loadli.w r4,  200(r9)
001604  63c39401  loadli.w r6,  204(r9)
001608  6385a401  loadli.w r10,  208(r9)
00160c  e3c5a401  loadli.w r11,  212(r9)
001610  e386b401  loadli.w r13,  216(r9)
001614  e3c7b401  loadli.w r15,  220(r9)
001618  6388c401  loadli.w r16,  224(r9)
00161c  e3c8c401  loadli.w r17,  228(r9)
001620  e389d401  loadli.w r19,  232(r9)
001624  e3cad401  loadli.w r21,  236(r9)
001628  638ce401  loadli.w r24,  240(r9)
00162c  e3cce401  loadli.w r25,  244(r9)
001630  638df401  loadli.w r26,  248(r9)
001634  e3cdf401  loadli.w r27,  252(r9)
001638  8f800000  exp.f.rn r1, r1
00163c  0f010100  exp.f.rn r2, r2
001640  0f020200  exp.f.rn r4, r4
001644  0f030300  exp.f.rn r6, r6
001648  0f050500  exp.f.rn r10, r10
00164c  8f850500  exp.f.rn r11, r11
001650  8f860600  exp.f.rn r13, r13
001654  8f870700  exp.f.rn r15, r15
001658  0f080800  exp.f.rn r16, r16
00165c  8f880800  exp.f.rn r17, r17
001660  8f890900  exp.f.rn r19, r19
001664  8f8a0a00  exp.f.rn r21, r21
001668  0f0c0c00  exp.f.rn r24, r24
00166c  8f8c0c00  exp.f.rn r25, r25
001670  0f0d0d00  exp.f.rn r26, r26
001674  8f8d0d00  exp.f.rn r27, r27
001678  678c1400  storeli.w r1, 192(r9)
00167c  67cc2400  storeli.w r2, 196(r9)
001680  e78c4400  storeli.w r4, 200(r9)
001684  e7cc6400  storeli.w r6, 204(r9)
001688  678da400  storeli.w r10, 208(r9)
00168c  67cdb400  storeli.w r11, 212(r9)
001690  e78dd400  storeli.w r13, 216(r9)
001694  e7cdf400  storeli.w r15, 220(r9)
001698  678e0401  storeli.w r16, 224(r9)
00169c  67ce1401  storeli.w r17, 228(r9)
0016a0  e78e3401  storeli.w r19, 232(r9)
0016a4  e7ce5401  storeli.w r21, 236(r9)
0016a8  678f8401  storeli.w r24, 240(r9)
0016ac  67cf9401  storeli.w r25, 244(r9)
0016b0  e78fa401  storeli.w r26, 248(r9)
0016b4  e7cfb401  storeli.w r27, 252(r9)
0016b8  00a00000  mfence { lm }
0016bc  16117102  vadd.f.mz.rn vr2{mr1}, vr2, vr7
0016c0  42150fe2  vload_mask16.mz vr10{mr1}, 1792(r30)
0016c4  9f000fe3  addli r1, r30, -3712
0016c8  92125a02  vadd.f.mz.rn vr5{mr1}, r20, vr5
0016cc  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
0016d0  9f008fe3  addli r1, r30, -3648
0016d4  c2148fe2  vload_mask16.mz vr9{mr1}, 1856(r30)
0016d8  42140fe3  vload_mask16.mz vr8{mr1}, 1920(r30)
0016dc  c2138fe3  vload_mask16.mz vr7{mr1}, 1984(r30)
0016e0  46105fe2  vstore_mask16.mz vr5{mr1}, 1792(r30)
0016e4  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
0016e8  9f008fe8  addli r1, r30, -3008
0016ec  1611a102  vadd.f.mz.rn vr2{mr1}, vr2, vr10
0016f0  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0016f4  9f008fe7  addli r1, r30, -3136
0016f8  92125a02  vadd.f.mz.rn vr5{mr1}, r20, vr5
0016fc  46145fe2  vstore_mask16.mz vr5{mr1}, 1856(r30)
001700  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
001704  9f000fe4  addli r1, r30, -3584
001708  16119102  vadd.f.mz.rn vr2{mr1}, vr2, vr9
00170c  92125a02  vadd.f.mz.rn vr5{mr1}, r20, vr5
001710  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
001714  9f000fe8  addli r1, r30, -3072
001718  46185fe2  vstore_mask16.mz vr5{mr1}, 1920(r30)
00171c  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
001720  9f008fe4  addli r1, r30, -3520
001724  16118102  vadd.f.mz.rn vr2{mr1}, vr2, vr8
001728  92125a02  vadd.f.mz.rn vr5{mr1}, r20, vr5
00172c  461c5fe2  vstore_mask16.mz vr5{mr1}, 1984(r30)
001730  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
001734  9f008fe5  addli r1, r30, -3392
001738  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
00173c  00a00000  mfence { lm }
001740  e3800400  loadli.w r1,  0(r9)
001744  63c10400  loadli.w r2,  4(r9)
001748  63821400  loadli.w r4,  8(r9)
00174c  63c31400  loadli.w r6,  12(r9)
001750  63852400  loadli.w r10,  16(r9)
001754  e3c52400  loadli.w r11,  20(r9)
001758  e3863400  loadli.w r13,  24(r9)
00175c  e3c73400  loadli.w r15,  28(r9)
001760  63884400  loadli.w r16,  32(r9)
001764  e3c84400  loadli.w r17,  36(r9)
001768  e3895400  loadli.w r19,  40(r9)
00176c  e3ca5400  loadli.w r21,  44(r9)
001770  638c6400  loadli.w r24,  48(r9)
001774  e3cc6400  loadli.w r25,  52(r9)
001778  638d7400  loadli.w r26,  56(r9)
00177c  e3cd7400  loadli.w r27,  60(r9)
001780  8f800000  exp.f.rn r1, r1
001784  0f010100  exp.f.rn r2, r2
001788  0f020200  exp.f.rn r4, r4
00178c  0f030300  exp.f.rn r6, r6
001790  0f050500  exp.f.rn r10, r10
001794  8f850500  exp.f.rn r11, r11
001798  8f860600  exp.f.rn r13, r13
00179c  8f870700  exp.f.rn r15, r15
0017a0  0f080800  exp.f.rn r16, r16
0017a4  8f880800  exp.f.rn r17, r17
0017a8  8f890900  exp.f.rn r19, r19
0017ac  8f8a0a00  exp.f.rn r21, r21
0017b0  0f0c0c00  exp.f.rn r24, r24
0017b4  8f8c0c00  exp.f.rn r25, r25
0017b8  0f0d0d00  exp.f.rn r26, r26
0017bc  8f8d0d00  exp.f.rn r27, r27
0017c0  67801400  storeli.w r1, 0(r9)
0017c4  67c02400  storeli.w r2, 4(r9)
0017c8  e7804400  storeli.w r4, 8(r9)
0017cc  e7c06400  storeli.w r6, 12(r9)
0017d0  6781a400  storeli.w r10, 16(r9)
0017d4  67c1b400  storeli.w r11, 20(r9)
0017d8  e781d400  storeli.w r13, 24(r9)
0017dc  e7c1f400  storeli.w r15, 28(r9)
0017e0  67820401  storeli.w r16, 32(r9)
0017e4  67c21401  storeli.w r17, 36(r9)
0017e8  e7823401  storeli.w r19, 40(r9)
0017ec  e7c25401  storeli.w r21, 44(r9)
0017f0  67838401  storeli.w r24, 48(r9)
0017f4  67c39401  storeli.w r25, 52(r9)
0017f8  e783a401  storeli.w r26, 56(r9)
0017fc  e7c3b401  storeli.w r27, 60(r9)
001800  e3808400  loadli.w r1,  64(r9)
001804  63c18400  loadli.w r2,  68(r9)
001808  63829400  loadli.w r4,  72(r9)
00180c  63c39400  loadli.w r6,  76(r9)
001810  6385a400  loadli.w r10,  80(r9)
001814  e3c5a400  loadli.w r11,  84(r9)
001818  e386b400  loadli.w r13,  88(r9)
00181c  e3c7b400  loadli.w r15,  92(r9)
001820  6388c400  loadli.w r16,  96(r9)
001824  e3c8c400  loadli.w r17,  100(r9)
001828  e389d400  loadli.w r19,  104(r9)
00182c  e3cad400  loadli.w r21,  108(r9)
001830  638ce400  loadli.w r24,  112(r9)
001834  e3cce400  loadli.w r25,  116(r9)
001838  638df400  loadli.w r26,  120(r9)
00183c  e3cdf400  loadli.w r27,  124(r9)
001840  8f800000  exp.f.rn r1, r1
001844  0f010100  exp.f.rn r2, r2
001848  0f020200  exp.f.rn r4, r4
00184c  0f030300  exp.f.rn r6, r6
001850  0f050500  exp.f.rn r10, r10
001854  8f850500  exp.f.rn r11, r11
001858  8f860600  exp.f.rn r13, r13
00185c  8f870700  exp.f.rn r15, r15
001860  0f080800  exp.f.rn r16, r16
001864  8f880800  exp.f.rn r17, r17
001868  8f890900  exp.f.rn r19, r19
00186c  8f8a0a00  exp.f.rn r21, r21
001870  0f0c0c00  exp.f.rn r24, r24
001874  8f8c0c00  exp.f.rn r25, r25
001878  0f0d0d00  exp.f.rn r26, r26
00187c  8f8d0d00  exp.f.rn r27, r27
001880  67841400  storeli.w r1, 64(r9)
001884  67c42400  storeli.w r2, 68(r9)
001888  e7844400  storeli.w r4, 72(r9)
00188c  e7c46400  storeli.w r6, 76(r9)
001890  6785a400  storeli.w r10, 80(r9)
001894  67c5b400  storeli.w r11, 84(r9)
001898  e785d400  storeli.w r13, 88(r9)
00189c  e7c5f400  storeli.w r15, 92(r9)
0018a0  67860401  storeli.w r16, 96(r9)
0018a4  67c61401  storeli.w r17, 100(r9)
0018a8  e7863401  storeli.w r19, 104(r9)
0018ac  e7c65401  storeli.w r21, 108(r9)
0018b0  67878401  storeli.w r24, 112(r9)
0018b4  67c79401  storeli.w r25, 116(r9)
0018b8  e787a401  storeli.w r26, 120(r9)
0018bc  e7c7b401  storeli.w r27, 124(r9)
0018c0  e3800401  loadli.w r1,  128(r9)
0018c4  63c10401  loadli.w r2,  132(r9)
0018c8  63821401  loadli.w r4,  136(r9)
0018cc  63c31401  loadli.w r6,  140(r9)
0018d0  63852401  loadli.w r10,  144(r9)
0018d4  e3c52401  loadli.w r11,  148(r9)
0018d8  e3863401  loadli.w r13,  152(r9)
0018dc  e3c73401  loadli.w r15,  156(r9)
0018e0  63884401  loadli.w r16,  160(r9)
0018e4  e3c84401  loadli.w r17,  164(r9)
0018e8  e3895401  loadli.w r19,  168(r9)
0018ec  e3ca5401  loadli.w r21,  172(r9)
0018f0  638c6401  loadli.w r24,  176(r9)
0018f4  e3cc6401  loadli.w r25,  180(r9)
0018f8  638d7401  loadli.w r26,  184(r9)
0018fc  e3cd7401  loadli.w r27,  188(r9)
001900  8f800000  exp.f.rn r1, r1
001904  0f010100  exp.f.rn r2, r2
001908  0f020200  exp.f.rn r4, r4
00190c  0f030300  exp.f.rn r6, r6
001910  0f050500  exp.f.rn r10, r10
001914  8f850500  exp.f.rn r11, r11
001918  8f860600  exp.f.rn r13, r13
00191c  8f870700  exp.f.rn r15, r15
001920  0f080800  exp.f.rn r16, r16
001924  8f880800  exp.f.rn r17, r17
001928  8f890900  exp.f.rn r19, r19
00192c  8f8a0a00  exp.f.rn r21, r21
001930  0f0c0c00  exp.f.rn r24, r24
001934  8f8c0c00  exp.f.rn r25, r25
001938  0f0d0d00  exp.f.rn r26, r26
00193c  8f8d0d00  exp.f.rn r27, r27
001940  67881400  storeli.w r1, 128(r9)
001944  67c82400  storeli.w r2, 132(r9)
001948  e7884400  storeli.w r4, 136(r9)
00194c  e7c86400  storeli.w r6, 140(r9)
001950  6789a400  storeli.w r10, 144(r9)
001954  67c9b400  storeli.w r11, 148(r9)
001958  e789d400  storeli.w r13, 152(r9)
00195c  e7c9f400  storeli.w r15, 156(r9)
001960  678a0401  storeli.w r16, 160(r9)
001964  67ca1401  storeli.w r17, 164(r9)
001968  e78a3401  storeli.w r19, 168(r9)
00196c  e7ca5401  storeli.w r21, 172(r9)
001970  678b8401  storeli.w r24, 176(r9)
001974  67cb9401  storeli.w r25, 180(r9)
001978  e78ba401  storeli.w r26, 184(r9)
00197c  e7cbb401  storeli.w r27, 188(r9)
001980  e3808401  loadli.w r1,  192(r9)
001984  63c18401  loadli.w r2,  196(r9)
001988  63829401  loadli.w r4,  200(r9)
00198c  63c39401  loadli.w r6,  204(r9)
001990  6385a401  loadli.w r10,  208(r9)
001994  e3c5a401  loadli.w r11,  212(r9)
001998  e386b401  loadli.w r13,  216(r9)
00199c  e3c7b401  loadli.w r15,  220(r9)
0019a0  6388c401  loadli.w r16,  224(r9)
0019a4  e3c8c401  loadli.w r17,  228(r9)
0019a8  e389d401  loadli.w r19,  232(r9)
0019ac  e3cad401  loadli.w r21,  236(r9)
0019b0  638ce401  loadli.w r24,  240(r9)
0019b4  e3cce401  loadli.w r25,  244(r9)
0019b8  638df401  loadli.w r26,  248(r9)
0019bc  e3cdf401  loadli.w r27,  252(r9)
0019c0  8f800000  exp.f.rn r1, r1
0019c4  0f010100  exp.f.rn r2, r2
0019c8  0f020200  exp.f.rn r4, r4
0019cc  0f030300  exp.f.rn r6, r6
0019d0  0f050500  exp.f.rn r10, r10
0019d4  8f850500  exp.f.rn r11, r11
0019d8  8f860600  exp.f.rn r13, r13
0019dc  8f870700  exp.f.rn r15, r15
0019e0  0f080800  exp.f.rn r16, r16
0019e4  8f880800  exp.f.rn r17, r17
0019e8  8f890900  exp.f.rn r19, r19
0019ec  8f8a0a00  exp.f.rn r21, r21
0019f0  0f0c0c00  exp.f.rn r24, r24
0019f4  8f8c0c00  exp.f.rn r25, r25
0019f8  0f0d0d00  exp.f.rn r26, r26
0019fc  8f8d0d00  exp.f.rn r27, r27
001a00  678c1400  storeli.w r1, 192(r9)
001a04  67cc2400  storeli.w r2, 196(r9)
001a08  e78c4400  storeli.w r4, 200(r9)
001a0c  e7cc6400  storeli.w r6, 204(r9)
001a10  678da400  storeli.w r10, 208(r9)
001a14  67cdb400  storeli.w r11, 212(r9)
001a18  e78dd400  storeli.w r13, 216(r9)
001a1c  e7cdf400  storeli.w r15, 220(r9)
001a20  678e0401  storeli.w r16, 224(r9)
001a24  67ce1401  storeli.w r17, 228(r9)
001a28  e78e3401  storeli.w r19, 232(r9)
001a2c  e7ce5401  storeli.w r21, 236(r9)
001a30  678f8401  storeli.w r24, 240(r9)
001a34  67cf9401  storeli.w r25, 244(r9)
001a38  e78fa401  storeli.w r26, 248(r9)
001a3c  e7cfb401  storeli.w r27, 252(r9)
001a40  00a00000  mfence { lm }
001a44  16117102  vadd.f.mz.rn vr2{mr1}, vr2, vr7
001a48  42150fe2  vload_mask16.mz vr10{mr1}, 1792(r30)
001a4c  9f008fe5  addli r1, r30, -3392
001a50  92125a02  vadd.f.mz.rn vr5{mr1}, r20, vr5
001a54  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
001a58  9f008fe7  addli r1, r30, -3136
001a5c  c2148fe2  vload_mask16.mz vr9{mr1}, 1856(r30)
001a60  42140fe3  vload_mask16.mz vr8{mr1}, 1920(r30)
001a64  c2138fe3  vload_mask16.mz vr7{mr1}, 1984(r30)
001a68  46105fe2  vstore_mask16.mz vr5{mr1}, 1792(r30)
001a6c  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
001a70  9f008fe6  addli r1, r30, -3264
001a74  1611a102  vadd.f.mz.rn vr2{mr1}, vr2, vr10
001a78  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
001a7c  9f000fe6  addli r1, r30, -3328
001a80  92125a02  vadd.f.mz.rn vr5{mr1}, r20, vr5
001a84  46145fe2  vstore_mask16.mz vr5{mr1}, 1856(r30)
001a88  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
001a8c  9f000fe8  addli r1, r30, -3072
001a90  16119102  vadd.f.mz.rn vr2{mr1}, vr2, vr9
001a94  92125a02  vadd.f.mz.rn vr5{mr1}, r20, vr5
001a98  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
001a9c  9f000fe7  addli r1, r30, -3200
001aa0  46185fe2  vstore_mask16.mz vr5{mr1}, 1920(r30)
001aa4  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
001aa8  9f008fe8  addli r1, r30, -3008
001aac  16118102  vadd.f.mz.rn vr2{mr1}, vr2, vr8
001ab0  92125a02  vadd.f.mz.rn vr5{mr1}, r20, vr5
001ab4  461c5fe2  vstore_mask16.mz vr5{mr1}, 1984(r30)
001ab8  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
001abc  9f000fe5  addli r1, r30, -3456
001ac0  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
001ac4  00a00000  mfence { lm }
001ac8  e3800400  loadli.w r1,  0(r9)
001acc  63c10400  loadli.w r2,  4(r9)
001ad0  63821400  loadli.w r4,  8(r9)
001ad4  63c31400  loadli.w r6,  12(r9)
001ad8  63852400  loadli.w r10,  16(r9)
001adc  e3c52400  loadli.w r11,  20(r9)
001ae0  e3863400  loadli.w r13,  24(r9)
001ae4  e3c73400  loadli.w r15,  28(r9)
001ae8  63884400  loadli.w r16,  32(r9)
001aec  e3c84400  loadli.w r17,  36(r9)
001af0  e3895400  loadli.w r19,  40(r9)
001af4  e3ca5400  loadli.w r21,  44(r9)
001af8  638c6400  loadli.w r24,  48(r9)
001afc  e3cc6400  loadli.w r25,  52(r9)
001b00  638d7400  loadli.w r26,  56(r9)
001b04  e3cd7400  loadli.w r27,  60(r9)
001b08  8f800000  exp.f.rn r1, r1
001b0c  0f010100  exp.f.rn r2, r2
001b10  0f020200  exp.f.rn r4, r4
001b14  0f030300  exp.f.rn r6, r6
001b18  0f050500  exp.f.rn r10, r10
001b1c  8f850500  exp.f.rn r11, r11
001b20  8f860600  exp.f.rn r13, r13
001b24  8f870700  exp.f.rn r15, r15
001b28  0f080800  exp.f.rn r16, r16
001b2c  8f880800  exp.f.rn r17, r17
001b30  8f890900  exp.f.rn r19, r19
001b34  8f8a0a00  exp.f.rn r21, r21
001b38  0f0c0c00  exp.f.rn r24, r24
001b3c  8f8c0c00  exp.f.rn r25, r25
001b40  0f0d0d00  exp.f.rn r26, r26
001b44  8f8d0d00  exp.f.rn r27, r27
001b48  67801400  storeli.w r1, 0(r9)
001b4c  67c02400  storeli.w r2, 4(r9)
001b50  e7804400  storeli.w r4, 8(r9)
001b54  e7c06400  storeli.w r6, 12(r9)
001b58  6781a400  storeli.w r10, 16(r9)
001b5c  67c1b400  storeli.w r11, 20(r9)
001b60  e781d400  storeli.w r13, 24(r9)
001b64  e7c1f400  storeli.w r15, 28(r9)
001b68  67820401  storeli.w r16, 32(r9)
001b6c  67c21401  storeli.w r17, 36(r9)
001b70  e7823401  storeli.w r19, 40(r9)
001b74  e7c25401  storeli.w r21, 44(r9)
001b78  67838401  storeli.w r24, 48(r9)
001b7c  67c39401  storeli.w r25, 52(r9)
001b80  e783a401  storeli.w r26, 56(r9)
001b84  e7c3b401  storeli.w r27, 60(r9)
001b88  e3808400  loadli.w r1,  64(r9)
001b8c  63c18400  loadli.w r2,  68(r9)
001b90  63829400  loadli.w r4,  72(r9)
001b94  63c39400  loadli.w r6,  76(r9)
001b98  6385a400  loadli.w r10,  80(r9)
001b9c  e3c5a400  loadli.w r11,  84(r9)
001ba0  e386b400  loadli.w r13,  88(r9)
001ba4  e3c7b400  loadli.w r15,  92(r9)
001ba8  6388c400  loadli.w r16,  96(r9)
001bac  e3c8c400  loadli.w r17,  100(r9)
001bb0  e389d400  loadli.w r19,  104(r9)
001bb4  e3cad400  loadli.w r21,  108(r9)
001bb8  638ce400  loadli.w r24,  112(r9)
001bbc  e3cce400  loadli.w r25,  116(r9)
001bc0  638df400  loadli.w r26,  120(r9)
001bc4  e3cdf400  loadli.w r27,  124(r9)
001bc8  8f800000  exp.f.rn r1, r1
001bcc  0f010100  exp.f.rn r2, r2
001bd0  0f020200  exp.f.rn r4, r4
001bd4  0f030300  exp.f.rn r6, r6
001bd8  0f050500  exp.f.rn r10, r10
001bdc  8f850500  exp.f.rn r11, r11
001be0  8f860600  exp.f.rn r13, r13
001be4  8f870700  exp.f.rn r15, r15
001be8  0f080800  exp.f.rn r16, r16
001bec  8f880800  exp.f.rn r17, r17
001bf0  8f890900  exp.f.rn r19, r19
001bf4  8f8a0a00  exp.f.rn r21, r21
001bf8  0f0c0c00  exp.f.rn r24, r24
001bfc  8f8c0c00  exp.f.rn r25, r25
001c00  0f0d0d00  exp.f.rn r26, r26
001c04  8f8d0d00  exp.f.rn r27, r27
001c08  67841400  storeli.w r1, 64(r9)
001c0c  67c42400  storeli.w r2, 68(r9)
001c10  e7844400  storeli.w r4, 72(r9)
001c14  e7c46400  storeli.w r6, 76(r9)
001c18  6785a400  storeli.w r10, 80(r9)
001c1c  67c5b400  storeli.w r11, 84(r9)
001c20  e785d400  storeli.w r13, 88(r9)
001c24  e7c5f400  storeli.w r15, 92(r9)
001c28  67860401  storeli.w r16, 96(r9)
001c2c  67c61401  storeli.w r17, 100(r9)
001c30  e7863401  storeli.w r19, 104(r9)
001c34  e7c65401  storeli.w r21, 108(r9)
001c38  67878401  storeli.w r24, 112(r9)
001c3c  67c79401  storeli.w r25, 116(r9)
001c40  e787a401  storeli.w r26, 120(r9)
001c44  e7c7b401  storeli.w r27, 124(r9)
001c48  e3800401  loadli.w r1,  128(r9)
001c4c  63c10401  loadli.w r2,  132(r9)
001c50  63821401  loadli.w r4,  136(r9)
001c54  63c31401  loadli.w r6,  140(r9)
001c58  63852401  loadli.w r10,  144(r9)
001c5c  e3c52401  loadli.w r11,  148(r9)
001c60  e3863401  loadli.w r13,  152(r9)
001c64  e3c73401  loadli.w r15,  156(r9)
001c68  63884401  loadli.w r16,  160(r9)
001c6c  e3c84401  loadli.w r17,  164(r9)
001c70  e3895401  loadli.w r19,  168(r9)
001c74  e3ca5401  loadli.w r21,  172(r9)
001c78  638c6401  loadli.w r24,  176(r9)
001c7c  e3cc6401  loadli.w r25,  180(r9)
001c80  638d7401  loadli.w r26,  184(r9)
001c84  e3cd7401  loadli.w r27,  188(r9)
001c88  8f800000  exp.f.rn r1, r1
001c8c  0f010100  exp.f.rn r2, r2
001c90  0f020200  exp.f.rn r4, r4
001c94  0f030300  exp.f.rn r6, r6
001c98  0f050500  exp.f.rn r10, r10
001c9c  8f850500  exp.f.rn r11, r11
001ca0  8f860600  exp.f.rn r13, r13
001ca4  8f870700  exp.f.rn r15, r15
001ca8  0f080800  exp.f.rn r16, r16
001cac  8f880800  exp.f.rn r17, r17
001cb0  8f890900  exp.f.rn r19, r19
001cb4  8f8a0a00  exp.f.rn r21, r21
001cb8  0f0c0c00  exp.f.rn r24, r24
001cbc  8f8c0c00  exp.f.rn r25, r25
001cc0  0f0d0d00  exp.f.rn r26, r26
001cc4  8f8d0d00  exp.f.rn r27, r27
001cc8  67881400  storeli.w r1, 128(r9)
001ccc  67c82400  storeli.w r2, 132(r9)
001cd0  e7884400  storeli.w r4, 136(r9)
001cd4  e7c86400  storeli.w r6, 140(r9)
001cd8  6789a400  storeli.w r10, 144(r9)
001cdc  67c9b400  storeli.w r11, 148(r9)
001ce0  e789d400  storeli.w r13, 152(r9)
001ce4  e7c9f400  storeli.w r15, 156(r9)
001ce8  678a0401  storeli.w r16, 160(r9)
001cec  67ca1401  storeli.w r17, 164(r9)
001cf0  e78a3401  storeli.w r19, 168(r9)
001cf4  e7ca5401  storeli.w r21, 172(r9)
001cf8  678b8401  storeli.w r24, 176(r9)
001cfc  67cb9401  storeli.w r25, 180(r9)
001d00  e78ba401  storeli.w r26, 184(r9)
001d04  e7cbb401  storeli.w r27, 188(r9)
001d08  e3808401  loadli.w r1,  192(r9)
001d0c  63c18401  loadli.w r2,  196(r9)
001d10  63829401  loadli.w r4,  200(r9)
001d14  63c39401  loadli.w r6,  204(r9)
001d18  6385a401  loadli.w r10,  208(r9)
001d1c  e3c5a401  loadli.w r11,  212(r9)
001d20  e386b401  loadli.w r13,  216(r9)
001d24  e3c7b401  loadli.w r15,  220(r9)
001d28  6388c401  loadli.w r16,  224(r9)
001d2c  e3c8c401  loadli.w r17,  228(r9)
001d30  e389d401  loadli.w r19,  232(r9)
001d34  e3cad401  loadli.w r21,  236(r9)
001d38  638ce401  loadli.w r24,  240(r9)
001d3c  e3cce401  loadli.w r25,  244(r9)
001d40  638df401  loadli.w r26,  248(r9)
001d44  e3cdf401  loadli.w r27,  252(r9)
001d48  8f800000  exp.f.rn r1, r1
001d4c  0f010100  exp.f.rn r2, r2
001d50  0f020200  exp.f.rn r4, r4
001d54  0f030300  exp.f.rn r6, r6
001d58  0f050500  exp.f.rn r10, r10
001d5c  8f850500  exp.f.rn r11, r11
001d60  8f860600  exp.f.rn r13, r13
001d64  8f870700  exp.f.rn r15, r15
001d68  0f080800  exp.f.rn r16, r16
001d6c  8f880800  exp.f.rn r17, r17
001d70  8f890900  exp.f.rn r19, r19
001d74  8f8a0a00  exp.f.rn r21, r21
001d78  0f0c0c00  exp.f.rn r24, r24
001d7c  8f8c0c00  exp.f.rn r25, r25
001d80  0f0d0d00  exp.f.rn r26, r26
001d84  8f8d0d00  exp.f.rn r27, r27
001d88  678c1400  storeli.w r1, 192(r9)
001d8c  67cc2400  storeli.w r2, 196(r9)
001d90  e78c4400  storeli.w r4, 200(r9)
001d94  e7cc6400  storeli.w r6, 204(r9)
001d98  678da400  storeli.w r10, 208(r9)
001d9c  67cdb400  storeli.w r11, 212(r9)
001da0  e78dd400  storeli.w r13, 216(r9)
001da4  e7cdf400  storeli.w r15, 220(r9)
001da8  678e0401  storeli.w r16, 224(r9)
001dac  67ce1401  storeli.w r17, 228(r9)
001db0  e78e3401  storeli.w r19, 232(r9)
001db4  e7ce5401  storeli.w r21, 236(r9)
001db8  678f8401  storeli.w r24, 240(r9)
001dbc  67cf9401  storeli.w r25, 244(r9)
001dc0  e78fa401  storeli.w r26, 248(r9)
001dc4  e7cfb401  storeli.w r27, 252(r9)
001dc8  00a00000  mfence { lm }
001dcc  16117102  vadd.f.mz.rn vr2{mr1}, vr2, vr7
001dd0  c2140fe2  vload_mask16.mz vr9{mr1}, 1792(r30)
001dd4  9f008fe9  addli r1, r30, -2880
001dd8  92125a02  vadd.f.mz.rn vr5{mr1}, r20, vr5
001ddc  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
001de0  9f000fea  addli r1, r30, -2816
001de4  42148fe2  vload_mask16.mz vr8{mr1}, 1856(r30)
001de8  c2130fe3  vload_mask16.mz vr7{mr1}, 1920(r30)
001dec  42138fe3  vload_mask16.mz vr6{mr1}, 1984(r30)
001df0  46105fe2  vstore_mask16.mz vr5{mr1}, 1792(r30)
001df4  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
001df8  9f008fdc  addli r1, r30, -4544
001dfc  16119102  vadd.f.mz.rn vr2{mr1}, vr2, vr9
001e00  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
001e04  9f000fdc  addli r1, r30, -4608
001e08  92125a02  vadd.f.mz.rn vr5{mr1}, r20, vr5
001e0c  46145fe2  vstore_mask16.mz vr5{mr1}, 1856(r30)
001e10  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
001e14  9f008fea  addli r1, r30, -2752
001e18  16118102  vadd.f.mz.rn vr2{mr1}, vr2, vr8
001e1c  92125a02  vadd.f.mz.rn vr5{mr1}, r20, vr5
001e20  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
001e24  9f000fdd  addli r1, r30, -4480
001e28  46185fe2  vstore_mask16.mz vr5{mr1}, 1920(r30)
001e2c  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
001e30  9f000feb  addli r1, r30, -2688
001e34  16117102  vadd.f.mz.rn vr2{mr1}, vr2, vr7
001e38  92125a02  vadd.f.mz.rn vr5{mr1}, r20, vr5
001e3c  461c5fe2  vstore_mask16.mz vr5{mr1}, 1984(r30)
001e40  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
001e44  9f008fda  addli r1, r30, -4800
001e48  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001e4c  00a00000  mfence { lm }
001e50  e3800400  loadli.w r1,  0(r9)
001e54  63c10400  loadli.w r2,  4(r9)
001e58  63821400  loadli.w r4,  8(r9)
001e5c  63c31400  loadli.w r6,  12(r9)
001e60  63852400  loadli.w r10,  16(r9)
001e64  e3c52400  loadli.w r11,  20(r9)
001e68  e3863400  loadli.w r13,  24(r9)
001e6c  e3c73400  loadli.w r15,  28(r9)
001e70  63884400  loadli.w r16,  32(r9)
001e74  e3c84400  loadli.w r17,  36(r9)
001e78  e3895400  loadli.w r19,  40(r9)
001e7c  e3ca5400  loadli.w r21,  44(r9)
001e80  638c6400  loadli.w r24,  48(r9)
001e84  e3cc6400  loadli.w r25,  52(r9)
001e88  638d7400  loadli.w r26,  56(r9)
001e8c  e3cd7400  loadli.w r27,  60(r9)
001e90  8f800000  exp.f.rn r1, r1
001e94  0f010100  exp.f.rn r2, r2
001e98  0f020200  exp.f.rn r4, r4
001e9c  0f030300  exp.f.rn r6, r6
001ea0  0f050500  exp.f.rn r10, r10
001ea4  8f850500  exp.f.rn r11, r11
001ea8  8f860600  exp.f.rn r13, r13
001eac  8f870700  exp.f.rn r15, r15
001eb0  0f080800  exp.f.rn r16, r16
001eb4  8f880800  exp.f.rn r17, r17
001eb8  8f890900  exp.f.rn r19, r19
001ebc  8f8a0a00  exp.f.rn r21, r21
001ec0  0f0c0c00  exp.f.rn r24, r24
001ec4  8f8c0c00  exp.f.rn r25, r25
001ec8  0f0d0d00  exp.f.rn r26, r26
001ecc  8f8d0d00  exp.f.rn r27, r27
001ed0  67801400  storeli.w r1, 0(r9)
001ed4  67c02400  storeli.w r2, 4(r9)
001ed8  e7804400  storeli.w r4, 8(r9)
001edc  e7c06400  storeli.w r6, 12(r9)
001ee0  6781a400  storeli.w r10, 16(r9)
001ee4  67c1b400  storeli.w r11, 20(r9)
001ee8  e781d400  storeli.w r13, 24(r9)
001eec  e7c1f400  storeli.w r15, 28(r9)
001ef0  67820401  storeli.w r16, 32(r9)
001ef4  67c21401  storeli.w r17, 36(r9)
001ef8  e7823401  storeli.w r19, 40(r9)
001efc  e7c25401  storeli.w r21, 44(r9)
001f00  67838401  storeli.w r24, 48(r9)
001f04  67c39401  storeli.w r25, 52(r9)
001f08  e783a401  storeli.w r26, 56(r9)
001f0c  e7c3b401  storeli.w r27, 60(r9)
001f10  e3808400  loadli.w r1,  64(r9)
001f14  63c18400  loadli.w r2,  68(r9)
001f18  63829400  loadli.w r4,  72(r9)
001f1c  63c39400  loadli.w r6,  76(r9)
001f20  6385a400  loadli.w r10,  80(r9)
001f24  e3c5a400  loadli.w r11,  84(r9)
001f28  e386b400  loadli.w r13,  88(r9)
001f2c  e3c7b400  loadli.w r15,  92(r9)
001f30  6388c400  loadli.w r16,  96(r9)
001f34  e3c8c400  loadli.w r17,  100(r9)
001f38  e389d400  loadli.w r19,  104(r9)
001f3c  e3cad400  loadli.w r21,  108(r9)
001f40  638ce400  loadli.w r24,  112(r9)
001f44  e3cce400  loadli.w r25,  116(r9)
001f48  638df400  loadli.w r26,  120(r9)
001f4c  e3cdf400  loadli.w r27,  124(r9)
001f50  8f800000  exp.f.rn r1, r1
001f54  0f010100  exp.f.rn r2, r2
001f58  0f020200  exp.f.rn r4, r4
001f5c  0f030300  exp.f.rn r6, r6
001f60  0f050500  exp.f.rn r10, r10
001f64  8f850500  exp.f.rn r11, r11
001f68  8f860600  exp.f.rn r13, r13
001f6c  8f870700  exp.f.rn r15, r15
001f70  0f080800  exp.f.rn r16, r16
001f74  8f880800  exp.f.rn r17, r17
001f78  8f890900  exp.f.rn r19, r19
001f7c  8f8a0a00  exp.f.rn r21, r21
001f80  0f0c0c00  exp.f.rn r24, r24
001f84  8f8c0c00  exp.f.rn r25, r25
001f88  0f0d0d00  exp.f.rn r26, r26
001f8c  8f8d0d00  exp.f.rn r27, r27
001f90  67841400  storeli.w r1, 64(r9)
001f94  67c42400  storeli.w r2, 68(r9)
001f98  e7844400  storeli.w r4, 72(r9)
001f9c  e7c46400  storeli.w r6, 76(r9)
001fa0  6785a400  storeli.w r10, 80(r9)
001fa4  67c5b400  storeli.w r11, 84(r9)
001fa8  e785d400  storeli.w r13, 88(r9)
001fac  e7c5f400  storeli.w r15, 92(r9)
001fb0  67860401  storeli.w r16, 96(r9)
001fb4  67c61401  storeli.w r17, 100(r9)
001fb8  e7863401  storeli.w r19, 104(r9)
001fbc  e7c65401  storeli.w r21, 108(r9)
001fc0  67878401  storeli.w r24, 112(r9)
001fc4  67c79401  storeli.w r25, 116(r9)
001fc8  e787a401  storeli.w r26, 120(r9)
001fcc  e7c7b401  storeli.w r27, 124(r9)
001fd0  e3800401  loadli.w r1,  128(r9)
001fd4  63c10401  loadli.w r2,  132(r9)
001fd8  63821401  loadli.w r4,  136(r9)
001fdc  63c31401  loadli.w r6,  140(r9)
001fe0  63852401  loadli.w r10,  144(r9)
001fe4  e3c52401  loadli.w r11,  148(r9)
001fe8  e3863401  loadli.w r13,  152(r9)
001fec  e3c73401  loadli.w r15,  156(r9)
001ff0  63884401  loadli.w r16,  160(r9)
001ff4  e3c84401  loadli.w r17,  164(r9)
001ff8  e3895401  loadli.w r19,  168(r9)
001ffc  e3ca5401  loadli.w r21,  172(r9)
002000  638c6401  loadli.w r24,  176(r9)
002004  e3cc6401  loadli.w r25,  180(r9)
002008  638d7401  loadli.w r26,  184(r9)
00200c  e3cd7401  loadli.w r27,  188(r9)
002010  8f800000  exp.f.rn r1, r1
002014  0f010100  exp.f.rn r2, r2
002018  0f020200  exp.f.rn r4, r4
00201c  0f030300  exp.f.rn r6, r6
002020  0f050500  exp.f.rn r10, r10
002024  8f850500  exp.f.rn r11, r11
002028  8f860600  exp.f.rn r13, r13
00202c  8f870700  exp.f.rn r15, r15
002030  0f080800  exp.f.rn r16, r16
002034  8f880800  exp.f.rn r17, r17
002038  8f890900  exp.f.rn r19, r19
00203c  8f8a0a00  exp.f.rn r21, r21
002040  0f0c0c00  exp.f.rn r24, r24
002044  8f8c0c00  exp.f.rn r25, r25
002048  0f0d0d00  exp.f.rn r26, r26
00204c  8f8d0d00  exp.f.rn r27, r27
002050  67881400  storeli.w r1, 128(r9)
002054  67c82400  storeli.w r2, 132(r9)
002058  e7884400  storeli.w r4, 136(r9)
00205c  e7c86400  storeli.w r6, 140(r9)
002060  6789a400  storeli.w r10, 144(r9)
002064  67c9b400  storeli.w r11, 148(r9)
002068  e789d400  storeli.w r13, 152(r9)
00206c  e7c9f400  storeli.w r15, 156(r9)
002070  678a0401  storeli.w r16, 160(r9)
002074  67ca1401  storeli.w r17, 164(r9)
002078  e78a3401  storeli.w r19, 168(r9)
00207c  e7ca5401  storeli.w r21, 172(r9)
002080  678b8401  storeli.w r24, 176(r9)
002084  67cb9401  storeli.w r25, 180(r9)
002088  e78ba401  storeli.w r26, 184(r9)
00208c  e7cbb401  storeli.w r27, 188(r9)
002090  e3808401  loadli.w r1,  192(r9)
002094  63c18401  loadli.w r2,  196(r9)
002098  63829401  loadli.w r4,  200(r9)
00209c  63c39401  loadli.w r6,  204(r9)
0020a0  6385a401  loadli.w r10,  208(r9)
0020a4  e3c5a401  loadli.w r11,  212(r9)
0020a8  e386b401  loadli.w r13,  216(r9)
0020ac  e3c7b401  loadli.w r15,  220(r9)
0020b0  6388c401  loadli.w r16,  224(r9)
0020b4  e3c8c401  loadli.w r17,  228(r9)
0020b8  e389d401  loadli.w r19,  232(r9)
0020bc  e3cad401  loadli.w r21,  236(r9)
0020c0  638ce401  loadli.w r24,  240(r9)
0020c4  e3cce401  loadli.w r25,  244(r9)
0020c8  638df401  loadli.w r26,  248(r9)
0020cc  e3cdf401  loadli.w r27,  252(r9)
0020d0  8f800000  exp.f.rn r1, r1
0020d4  0f010100  exp.f.rn r2, r2
0020d8  0f020200  exp.f.rn r4, r4
0020dc  0f030300  exp.f.rn r6, r6
0020e0  0f050500  exp.f.rn r10, r10
0020e4  8f850500  exp.f.rn r11, r11
0020e8  8f860600  exp.f.rn r13, r13
0020ec  8f870700  exp.f.rn r15, r15
0020f0  0f080800  exp.f.rn r16, r16
0020f4  8f880800  exp.f.rn r17, r17
0020f8  8f890900  exp.f.rn r19, r19
0020fc  8f8a0a00  exp.f.rn r21, r21
002100  0f0c0c00  exp.f.rn r24, r24
002104  8f8c0c00  exp.f.rn r25, r25
002108  0f0d0d00  exp.f.rn r26, r26
00210c  8f8d0d00  exp.f.rn r27, r27
002110  678c1400  storeli.w r1, 192(r9)
002114  67cc2400  storeli.w r2, 196(r9)
002118  e78c4400  storeli.w r4, 200(r9)
00211c  e7cc6400  storeli.w r6, 204(r9)
002120  678da400  storeli.w r10, 208(r9)
002124  67cdb400  storeli.w r11, 212(r9)
002128  e78dd400  storeli.w r13, 216(r9)
00212c  e7cdf400  storeli.w r15, 220(r9)
002130  678e0401  storeli.w r16, 224(r9)
002134  67ce1401  storeli.w r17, 228(r9)
002138  e78e3401  storeli.w r19, 232(r9)
00213c  e7ce5401  storeli.w r21, 236(r9)
002140  678f8401  storeli.w r24, 240(r9)
002144  67cf9401  storeli.w r25, 244(r9)
002148  e78fa401  storeli.w r26, 248(r9)
00214c  e7cfb401  storeli.w r27, 252(r9)
002150  00a00000  mfence { lm }
002154  16116102  vadd.f.mz.rn vr2{mr1}, vr2, vr6
002158  42140fe2  vload_mask16.mz vr8{mr1}, 1792(r30)
00215c  9f008feb  addli r1, r30, -2624
002160  12100a02  vadd.f.mz.rn vr0{mr1}, r20, vr0
002164  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
002168  9f000fec  addli r1, r30, -2560
00216c  c2138fe2  vload_mask16.mz vr7{mr1}, 1856(r30)
002170  42130fe3  vload_mask16.mz vr6{mr1}, 1920(r30)
002174  c2128fe3  vload_mask16.mz vr5{mr1}, 1984(r30)
002178  46100fe2  vstore_mask16.mz vr0{mr1}, 1792(r30)
00217c  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
002180  9f000fdb  addli r1, r30, -4736
002184  16108102  vadd.f.mz.rn vr0{mr1}, vr2, vr8
002188  1211ba02  vadd.f.mz.rn vr2{mr1}, r20, vr11
00218c  46142fe2  vstore_mask16.mz vr2{mr1}, 1856(r30)
002190  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
002194  9f008fec  addli r1, r30, -2496
002198  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
00219c  92355002  vadd.s.mz vr11{mr1}, zero, vr5
0021a0  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
0021a4  9f008fdb  addli r1, r30, -4672
0021a8  46182fe2  vstore_mask16.mz vr2{mr1}, 1920(r30)
0021ac  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
0021b0  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0021b4  9f000fed  addli r1, r30, -2432
0021b8  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
0021bc  461c2fe2  vstore_mask16.mz vr2{mr1}, 1984(r30)
0021c0  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0021c4  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
0021c8  00a00000  mfence { lm }
0021cc  e3800400  loadli.w r1,  0(r9)
0021d0  63c10400  loadli.w r2,  4(r9)
0021d4  63821400  loadli.w r4,  8(r9)
0021d8  63c31400  loadli.w r6,  12(r9)
0021dc  63852400  loadli.w r10,  16(r9)
0021e0  e3c52400  loadli.w r11,  20(r9)
0021e4  e3863400  loadli.w r13,  24(r9)
0021e8  e3c73400  loadli.w r15,  28(r9)
0021ec  63884400  loadli.w r16,  32(r9)
0021f0  e3c84400  loadli.w r17,  36(r9)
0021f4  e3895400  loadli.w r19,  40(r9)
0021f8  63ca5400  loadli.w r20,  44(r9)
0021fc  e38a6400  loadli.w r21,  48(r9)
002200  63cc6400  loadli.w r24,  52(r9)
002204  e38c7400  loadli.w r25,  56(r9)
002208  63cd7400  loadli.w r26,  60(r9)
00220c  8f800000  exp.f.rn r1, r1
002210  0f010100  exp.f.rn r2, r2
002214  0f020200  exp.f.rn r4, r4
002218  0f030300  exp.f.rn r6, r6
00221c  0f050500  exp.f.rn r10, r10
002220  8f850500  exp.f.rn r11, r11
002224  8f860600  exp.f.rn r13, r13
002228  8f870700  exp.f.rn r15, r15
00222c  0f080800  exp.f.rn r16, r16
002230  8f880800  exp.f.rn r17, r17
002234  8f890900  exp.f.rn r19, r19
002238  0f0a0a00  exp.f.rn r20, r20
00223c  8f8a0a00  exp.f.rn r21, r21
002240  0f0c0c00  exp.f.rn r24, r24
002244  8f8c0c00  exp.f.rn r25, r25
002248  0f0d0d00  exp.f.rn r26, r26
00224c  67801400  storeli.w r1, 0(r9)
002250  67c02400  storeli.w r2, 4(r9)
002254  e7804400  storeli.w r4, 8(r9)
002258  e7c06400  storeli.w r6, 12(r9)
00225c  6781a400  storeli.w r10, 16(r9)
002260  67c1b400  storeli.w r11, 20(r9)
002264  e781d400  storeli.w r13, 24(r9)
002268  e7c1f400  storeli.w r15, 28(r9)
00226c  67820401  storeli.w r16, 32(r9)
002270  67c21401  storeli.w r17, 36(r9)
002274  e7823401  storeli.w r19, 40(r9)
002278  e7c24401  storeli.w r20, 44(r9)
00227c  67835401  storeli.w r21, 48(r9)
002280  67c38401  storeli.w r24, 52(r9)
002284  e7839401  storeli.w r25, 56(r9)
002288  e7c3a401  storeli.w r26, 60(r9)
00228c  e3808400  loadli.w r1,  64(r9)
002290  63c18400  loadli.w r2,  68(r9)
002294  63829400  loadli.w r4,  72(r9)
002298  63c39400  loadli.w r6,  76(r9)
00229c  6385a400  loadli.w r10,  80(r9)
0022a0  e3c5a400  loadli.w r11,  84(r9)
0022a4  e386b400  loadli.w r13,  88(r9)
0022a8  e3c7b400  loadli.w r15,  92(r9)
0022ac  6388c400  loadli.w r16,  96(r9)
0022b0  e3c8c400  loadli.w r17,  100(r9)
0022b4  e389d400  loadli.w r19,  104(r9)
0022b8  63cad400  loadli.w r20,  108(r9)
0022bc  e38ae400  loadli.w r21,  112(r9)
0022c0  63cce400  loadli.w r24,  116(r9)
0022c4  e38cf400  loadli.w r25,  120(r9)
0022c8  63cdf400  loadli.w r26,  124(r9)
0022cc  8f800000  exp.f.rn r1, r1
0022d0  0f010100  exp.f.rn r2, r2
0022d4  0f020200  exp.f.rn r4, r4
0022d8  0f030300  exp.f.rn r6, r6
0022dc  0f050500  exp.f.rn r10, r10
0022e0  8f850500  exp.f.rn r11, r11
0022e4  8f860600  exp.f.rn r13, r13
0022e8  8f870700  exp.f.rn r15, r15
0022ec  0f080800  exp.f.rn r16, r16
0022f0  8f880800  exp.f.rn r17, r17
0022f4  8f890900  exp.f.rn r19, r19
0022f8  0f0a0a00  exp.f.rn r20, r20
0022fc  8f8a0a00  exp.f.rn r21, r21
002300  0f0c0c00  exp.f.rn r24, r24
002304  8f8c0c00  exp.f.rn r25, r25
002308  0f0d0d00  exp.f.rn r26, r26
00230c  67841400  storeli.w r1, 64(r9)
002310  67c42400  storeli.w r2, 68(r9)
002314  e7844400  storeli.w r4, 72(r9)
002318  e7c46400  storeli.w r6, 76(r9)
00231c  6785a400  storeli.w r10, 80(r9)
002320  67c5b400  storeli.w r11, 84(r9)
002324  e785d400  storeli.w r13, 88(r9)
002328  e7c5f400  storeli.w r15, 92(r9)
00232c  67860401  storeli.w r16, 96(r9)
002330  67c61401  storeli.w r17, 100(r9)
002334  e7863401  storeli.w r19, 104(r9)
002338  e7c64401  storeli.w r20, 108(r9)
00233c  67875401  storeli.w r21, 112(r9)
002340  67c78401  storeli.w r24, 116(r9)
002344  e7879401  storeli.w r25, 120(r9)
002348  e7c7a401  storeli.w r26, 124(r9)
00234c  e3800401  loadli.w r1,  128(r9)
002350  63c10401  loadli.w r2,  132(r9)
002354  63821401  loadli.w r4,  136(r9)
002358  63c31401  loadli.w r6,  140(r9)
00235c  63852401  loadli.w r10,  144(r9)
002360  e3c52401  loadli.w r11,  148(r9)
002364  e3863401  loadli.w r13,  152(r9)
002368  e3c73401  loadli.w r15,  156(r9)
00236c  63884401  loadli.w r16,  160(r9)
002370  e3c84401  loadli.w r17,  164(r9)
002374  e3895401  loadli.w r19,  168(r9)
002378  63ca5401  loadli.w r20,  172(r9)
00237c  e38a6401  loadli.w r21,  176(r9)
002380  63cc6401  loadli.w r24,  180(r9)
002384  e38c7401  loadli.w r25,  184(r9)
002388  63cd7401  loadli.w r26,  188(r9)
00238c  8f800000  exp.f.rn r1, r1
002390  0f010100  exp.f.rn r2, r2
002394  0f020200  exp.f.rn r4, r4
002398  0f030300  exp.f.rn r6, r6
00239c  0f050500  exp.f.rn r10, r10
0023a0  8f850500  exp.f.rn r11, r11
0023a4  8f860600  exp.f.rn r13, r13
0023a8  8f870700  exp.f.rn r15, r15
0023ac  0f080800  exp.f.rn r16, r16
0023b0  8f880800  exp.f.rn r17, r17
0023b4  8f890900  exp.f.rn r19, r19
0023b8  0f0a0a00  exp.f.rn r20, r20
0023bc  8f8a0a00  exp.f.rn r21, r21
0023c0  0f0c0c00  exp.f.rn r24, r24
0023c4  8f8c0c00  exp.f.rn r25, r25
0023c8  0f0d0d00  exp.f.rn r26, r26
0023cc  67881400  storeli.w r1, 128(r9)
0023d0  67c82400  storeli.w r2, 132(r9)
0023d4  e7884400  storeli.w r4, 136(r9)
0023d8  e7c86400  storeli.w r6, 140(r9)
0023dc  6789a400  storeli.w r10, 144(r9)
0023e0  67c9b400  storeli.w r11, 148(r9)
0023e4  e789d400  storeli.w r13, 152(r9)
0023e8  e7c9f400  storeli.w r15, 156(r9)
0023ec  678a0401  storeli.w r16, 160(r9)
0023f0  67ca1401  storeli.w r17, 164(r9)
0023f4  e78a3401  storeli.w r19, 168(r9)
0023f8  e7ca4401  storeli.w r20, 172(r9)
0023fc  678b5401  storeli.w r21, 176(r9)
002400  67cb8401  storeli.w r24, 180(r9)
002404  e78b9401  storeli.w r25, 184(r9)
002408  e7cba401  storeli.w r26, 188(r9)
00240c  e3808401  loadli.w r1,  192(r9)
002410  63c18401  loadli.w r2,  196(r9)
002414  63829401  loadli.w r4,  200(r9)
002418  63c39401  loadli.w r6,  204(r9)
00241c  6385a401  loadli.w r10,  208(r9)
002420  e3c5a401  loadli.w r11,  212(r9)
002424  e386b401  loadli.w r13,  216(r9)
002428  e3c7b401  loadli.w r15,  220(r9)
00242c  6388c401  loadli.w r16,  224(r9)
002430  e3c8c401  loadli.w r17,  228(r9)
002434  e389d401  loadli.w r19,  232(r9)
002438  63cad401  loadli.w r20,  236(r9)
00243c  e38ae401  loadli.w r21,  240(r9)
002440  63cce401  loadli.w r24,  244(r9)
002444  e38cf401  loadli.w r25,  248(r9)
002448  63cdf401  loadli.w r26,  252(r9)
00244c  8f800000  exp.f.rn r1, r1
002450  0f010100  exp.f.rn r2, r2
002454  0f020200  exp.f.rn r4, r4
002458  0f030300  exp.f.rn r6, r6
00245c  0f050500  exp.f.rn r10, r10
002460  8f850500  exp.f.rn r11, r11
002464  8f860600  exp.f.rn r13, r13
002468  8f870700  exp.f.rn r15, r15
00246c  0f080800  exp.f.rn r16, r16
002470  8f880800  exp.f.rn r17, r17
002474  8f890900  exp.f.rn r19, r19
002478  0f0a0a00  exp.f.rn r20, r20
00247c  8f8a0a00  exp.f.rn r21, r21
002480  0f0c0c00  exp.f.rn r24, r24
002484  8f8c0c00  exp.f.rn r25, r25
002488  0f0d0d00  exp.f.rn r26, r26
00248c  678c1400  storeli.w r1, 192(r9)
002490  67cc2400  storeli.w r2, 196(r9)
002494  e78c4400  storeli.w r4, 200(r9)
002498  e7cc6400  storeli.w r6, 204(r9)
00249c  678da400  storeli.w r10, 208(r9)
0024a0  67cdb400  storeli.w r11, 212(r9)
0024a4  e78dd400  storeli.w r13, 216(r9)
0024a8  e7cdf400  storeli.w r15, 220(r9)
0024ac  678e0401  storeli.w r16, 224(r9)
0024b0  67ce1401  storeli.w r17, 228(r9)
0024b4  e78e3401  storeli.w r19, 232(r9)
0024b8  e7ce4401  storeli.w r20, 236(r9)
0024bc  678f5401  storeli.w r21, 240(r9)
0024c0  67cf8401  storeli.w r24, 244(r9)
0024c4  e78f9401  storeli.w r25, 248(r9)
0024c8  e7cfa401  storeli.w r26, 252(r9)
0024cc  00a00000  mfence { lm }
0024d0  6343ffe1  loadli.w r6,  -3844(r30)
0024d4  42110fe2  vload_mask16.mz vr2{mr1}, 1792(r30)
0024d8  9f000fe9  addli r1, r30, -2944
0024dc  1610b002  vadd.f.mz.rn vr0{mr1}, vr0, vr11
0024e0  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0024e4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024e8  c2148fe2  vload_mask16.mz vr9{mr1}, 1856(r30)
0024ec  42140fe3  vload_mask16.mz vr8{mr1}, 1920(r30)
0024f0  c2138fe3  vload_mask16.mz vr7{mr1}, 1984(r30)
0024f4  63416fda  loadli.w r2,  -4812(r30)
0024f8  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0024fc  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
002500  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
002504  6a710ec0  vsrl.p vr2, r28, vr0
002508  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00250c  6af101c0  vsrl.p vr2, r3, vr0
002510  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002514  6af102c0  vsrl.p vr2, r5, vr0
002518  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00251c  6a710bc0  vsrl.p vr2, r22, vr0
002520  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002524  fa100040  vextracti.f r1, 0(vr0)
002528  73601100  stores.w r1, 0(r2)
00252c  00a00300  mfence { lm, sm, gm }
002530  80210304  csr_set csr3, r6
002534  00d00100  sync_group
002538  bb200900  bneq r18, zero, 40
00253c  63057fda  loadli.w r10,  -4808(r30)
002540  ef400500  loads.w r1, 0(r10)
002544  6f414500  loads.w r2, 4(r10)
002548  6f428500  loads.w r4, 8(r10)
00254c  8be02010  add.f.rn r1, r1, r2
002550  6f41c500  loads.w r2, 12(r10)
002554  8be04010  add.f.rn r1, r1, r4
002558  8be02010  add.f.rn r1, r1, r2
00255c  73601500  stores.w r1, 0(r10)
002560  00a00300  mfence { lm, sm, gm }
002564  80210304  csr_set csr3, r6
002568  00d00100  sync_group
00256c  e3007fda  loadli.w r1,  -4808(r30)
002570  9f042000  addli r9, zero, 16
002574  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002578  2b01803f  lui r2, 260096
00257c  634b9fe1  loadli.w r22,  -3892(r30)
002580  1f0e0ff6  addli r28, r30, -1280
002584  9f020700  addli r5, r14, 0
002588  eaa10422  vor.u.mz vr3{mr1}, r9, vr0
00258c  efc00000  loads.w r1, 0(r1)
002590  0f0a1118  div.f.rn r20, r2, r1
002594  0a121a02  vmul.f.mz.rn vr4{mr1}, r20, vr1
002598  ab00807f  lui r1, 522240
00259c  eeb041c2  vsrl.s.mz vr1{mr1}, vr3, vr4
0025a0  e61202c0  vabs.f vr5, vr4
0025a4  2b014000  lui r2, 1024
0025a8  6aa10022  vor.u.mz vr2{mr1}, r1, vr0
0025ac  9f100000  addli r1, zero, 1
0025b0  eab01002  vand.s.mz vr1{mr1}, r1, vr1
0025b4  f6215142  vlt.u.mz mr3{mr1}, vr2, vr5
0025b8  7e8201a0  vmmov r4, mr3
0025bc  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
0025c0  9b40f200  srli r1, r4, 15
0025c4  6a324122  vor.s.mz vr4{mr1}, r2, vr4
0025c8  9b801000  andi r1, r1, 1
0025cc  92301402  vadd.s.mz vr1{mr1}, r8, vr1
0025d0  3bb00000  bneq r1, zero, 12
0025d4  fab6f040  vextracti.s r13, 15(vr1)
0025d8  5b010000  j 8
0025dc  fa36f240  vextracti.s r13, 15(vr4)
0025e0  9b40e200  srli r1, r4, 14
0025e4  1f170000  addli r14, zero, 1
0025e8  9b801000  andi r1, r1, 1
0025ec  3bb00000  bneq r1, zero, 12
0025f0  fab7e040  vextracti.s r15, 14(vr1)
0025f4  5b010000  j 8
0025f8  fa37e240  vextracti.s r15, 14(vr4)
0025fc  9b40d200  srli r1, r4, 13
002600  9b801000  andi r1, r1, 1
002604  3bb00000  bneq r1, zero, 12
002608  7ab8d040  vextracti.s r16, 13(vr1)
00260c  5b010000  j 8
002610  7a38d240  vextracti.s r16, 13(vr4)
002614  9b40c200  srli r1, r4, 12
002618  9b801000  andi r1, r1, 1
00261c  3bb00000  bneq r1, zero, 12
002620  fab0c040  vextracti.s r1, 12(vr1)
002624  5b010000  j 8
002628  fa30c240  vextracti.s r1, 12(vr4)
00262c  1b41b200  srli r2, r4, 11
002630  1b011100  andi r2, r2, 1
002634  3b300100  bneq r2, zero, 12
002638  fab8b040  vextracti.s r17, 11(vr1)
00263c  5b010000  j 8
002640  fa38b240  vextracti.s r17, 11(vr4)
002644  1b41a200  srli r2, r4, 10
002648  1b011100  andi r2, r2, 1
00264c  3b300100  bneq r2, zero, 12
002650  fab9a040  vextracti.s r19, 10(vr1)
002654  5b010000  j 8
002658  fa39a240  vextracti.s r19, 10(vr4)
00265c  1b419200  srli r2, r4, 9
002660  1b011100  andi r2, r2, 1
002664  3b300100  bneq r2, zero, 12
002668  7abc9040  vextracti.s r24, 9(vr1)
00266c  5b010000  j 8
002670  7a3c9240  vextracti.s r24, 9(vr4)
002674  1b418200  srli r2, r4, 8
002678  1f090600  addli r18, r12, 0
00267c  6306afe1  loadli.w r12,  -3888(r30)
002680  1b011100  andi r2, r2, 1
002684  3b300100  bneq r2, zero, 12
002688  fabc8040  vextracti.s r25, 8(vr1)
00268c  5b010000  j 8
002690  fa3c8240  vextracti.s r25, 8(vr4)
002694  1b417200  srli r2, r4, 7
002698  1b011100  andi r2, r2, 1
00269c  3b300100  bneq r2, zero, 12
0026a0  7ab57040  vextracti.s r10, 7(vr1)
0026a4  5b010000  j 8
0026a8  7a357240  vextracti.s r10, 7(vr4)
0026ac  1b416200  srli r2, r4, 6
0026b0  1b011100  andi r2, r2, 1
0026b4  3b300100  bneq r2, zero, 12
0026b8  fab56040  vextracti.s r11, 6(vr1)
0026bc  5b010000  j 8
0026c0  fa356240  vextracti.s r11, 6(vr4)
0026c4  1b415200  srli r2, r4, 5
0026c8  1b011100  andi r2, r2, 1
0026cc  3b300100  bneq r2, zero, 12
0026d0  faba5040  vextracti.s r21, 5(vr1)
0026d4  5b010000  j 8
0026d8  fa3a5240  vextracti.s r21, 5(vr4)
0026dc  1b414200  srli r2, r4, 4
0026e0  1b011100  andi r2, r2, 1
0026e4  3b300100  bneq r2, zero, 12
0026e8  7ab34040  vextracti.s r6, 4(vr1)
0026ec  5b010000  j 8
0026f0  7a334240  vextracti.s r6, 4(vr4)
0026f4  1b413200  srli r2, r4, 3
0026f8  1b011100  andi r2, r2, 1
0026fc  3b300100  bneq r2, zero, 12
002700  7ab13040  vextracti.s r2, 3(vr1)
002704  5b010000  j 8
002708  7a313240  vextracti.s r2, 3(vr4)
00270c  1b4d2200  srli r26, r4, 2
002710  1b0d1d00  andi r26, r26, 1
002714  3b300d00  bneq r26, zero, 12
002718  7abd2040  vextracti.s r26, 2(vr1)
00271c  5b010000  j 8
002720  7a3d2240  vextracti.s r26, 2(vr4)
002724  9b4d1200  srli r27, r4, 1
002728  9b8d1d00  andi r27, r27, 1
00272c  3be00d00  bneq r27, zero, 24
002730  fabd1040  vextracti.s r27, 1(vr1)
002734  1b021200  andi r4, r4, 1
002738  37600200  beq r4, zero, 24
00273c  7a320240  vextracti.s r4, 0(vr4)
002740  db020000  j 20
002744  fa3d1240  vextracti.s r27, 1(vr4)
002748  1b021200  andi r4, r4, 1
00274c  bb4f02fe  bneq r4, zero, -16
002750  7ab20040  vextracti.s r4, 0(vr1)
002754  92320002  vadd.s.mz vr5{mr1}, zero, vr0
002758  9f110000  addli r3, zero, 1
00275c  fe8101e0  vmmov mr3, r3
002760  9f210000  addli r3, zero, 2
002764  ea225236  vor.u.mh vr5{mr3}, r4, vr5
002768  fe8101e0  vmmov mr3, r3
00276c  9f410000  addli r3, zero, 4
002770  eaa25d36  vor.u.mh vr5{mr3}, r27, vr5
002774  fe8101e0  vmmov mr3, r3
002778  9f011000  addli r3, zero, 8
00277c  ea225d36  vor.u.mh vr5{mr3}, r26, vr5
002780  fe8101e0  vmmov mr3, r3
002784  ab014000  lui r3, 1024
002788  ea225136  vor.u.mh vr5{mr3}, r2, vr5
00278c  1f012000  addli r2, zero, 16
002790  fe0101e0  vmmov mr3, r2
002794  1f014000  addli r2, zero, 32
002798  ea225336  vor.u.mh vr5{mr3}, r6, vr5
00279c  fe0101e0  vmmov mr3, r2
0027a0  1f018000  addli r2, zero, 64
0027a4  eaa25a36  vor.u.mh vr5{mr3}, r21, vr5
0027a8  fe0101e0  vmmov mr3, r2
0027ac  1f010001  addli r2, zero, 128
0027b0  eaa25536  vor.u.mh vr5{mr3}, r11, vr5
0027b4  fe0101e0  vmmov mr3, r2
0027b8  1f010002  addli r2, zero, 256
0027bc  ea225536  vor.u.mh vr5{mr3}, r10, vr5
0027c0  fe0101e0  vmmov mr3, r2
0027c4  1f010004  addli r2, zero, 512
0027c8  eaa25c36  vor.u.mh vr5{mr3}, r25, vr5
0027cc  fe0101e0  vmmov mr3, r2
0027d0  1f010008  addli r2, zero, 1024
0027d4  ea225c36  vor.u.mh vr5{mr3}, r24, vr5
0027d8  fe0101e0  vmmov mr3, r2
0027dc  1f010010  addli r2, zero, 2048
0027e0  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
0027e4  fe0101e0  vmmov mr3, r2
0027e8  1f018fdd  addli r2, r30, -4416
0027ec  eaa25836  vor.u.mh vr5{mr3}, r17, vr5
0027f0  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0027f4  1f010020  addli r2, zero, 4096
0027f8  0a121a02  vmul.f.mz.rn vr4{mr1}, r20, vr1
0027fc  661302c0  vabs.f vr6, vr4
002800  eeb041c2  vsrl.s.mz vr1{mr1}, vr3, vr4
002804  fe0101e0  vmmov mr3, r2
002808  2b810000  lui r2, 8
00280c  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
002810  9f000040  addli r1, zero, 8192
002814  ea301702  vand.s.mz vr1{mr1}, r14, vr1
002818  fe8100e0  vmmov mr3, r1
00281c  ab400000  lui r1, 4
002820  ea225836  vor.u.mh vr5{mr3}, r16, vr5
002824  fe8100e0  vmmov mr3, r1
002828  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
00282c  6ab24122  vor.s.mz vr4{mr1}, r3, vr4
002830  eaa25736  vor.u.mh vr5{mr3}, r15, vr5
002834  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
002838  fe8001a0  vmmov r1, mr3
00283c  fe0101e0  vmmov mr3, r2
002840  92301402  vadd.s.mz vr1{mr1}, r8, vr1
002844  1bc1f000  srli r2, r1, 15
002848  eaa25636  vor.u.mh vr5{mr3}, r13, vr5
00284c  1b011100  andi r2, r2, 1
002850  46005e10  vstore.mh vr5{mr0}, 0(r28)
002854  3b300100  bneq r2, zero, 12
002858  fab6f040  vextracti.s r13, 15(vr1)
00285c  5b010000  j 8
002860  fa36f240  vextracti.s r13, 15(vr4)
002864  1bc1e000  srli r2, r1, 14
002868  1b011100  andi r2, r2, 1
00286c  3b300100  bneq r2, zero, 12
002870  fab7e040  vextracti.s r15, 14(vr1)
002874  5b010000  j 8
002878  fa37e240  vextracti.s r15, 14(vr4)
00287c  1bc1d000  srli r2, r1, 13
002880  1b011100  andi r2, r2, 1
002884  3b300100  bneq r2, zero, 12
002888  7ab8d040  vextracti.s r16, 13(vr1)
00288c  5b010000  j 8
002890  7a38d240  vextracti.s r16, 13(vr4)
002894  1bc1c000  srli r2, r1, 12
002898  1b011100  andi r2, r2, 1
00289c  3b300100  bneq r2, zero, 12
0028a0  7ab2c040  vextracti.s r4, 12(vr1)
0028a4  5b010000  j 8
0028a8  7a32c240  vextracti.s r4, 12(vr4)
0028ac  1bc1b000  srli r2, r1, 11
0028b0  1b011100  andi r2, r2, 1
0028b4  3b300100  bneq r2, zero, 12
0028b8  fab8b040  vextracti.s r17, 11(vr1)
0028bc  5b010000  j 8
0028c0  fa38b240  vextracti.s r17, 11(vr4)
0028c4  1bc1a000  srli r2, r1, 10
0028c8  1b011100  andi r2, r2, 1
0028cc  3b300100  bneq r2, zero, 12
0028d0  fab9a040  vextracti.s r19, 10(vr1)
0028d4  5b010000  j 8
0028d8  fa39a240  vextracti.s r19, 10(vr4)
0028dc  1bc19000  srli r2, r1, 9
0028e0  1b011100  andi r2, r2, 1
0028e4  3b300100  bneq r2, zero, 12
0028e8  7abc9040  vextracti.s r24, 9(vr1)
0028ec  5b010000  j 8
0028f0  7a3c9240  vextracti.s r24, 9(vr4)
0028f4  1bc18000  srli r2, r1, 8
0028f8  1b011100  andi r2, r2, 1
0028fc  3b300100  bneq r2, zero, 12
002900  fabc8040  vextracti.s r25, 8(vr1)
002904  5b010000  j 8
002908  fa3c8240  vextracti.s r25, 8(vr4)
00290c  1bc17000  srli r2, r1, 7
002910  1b011100  andi r2, r2, 1
002914  3b300100  bneq r2, zero, 12
002918  7ab57040  vextracti.s r10, 7(vr1)
00291c  5b010000  j 8
002920  7a357240  vextracti.s r10, 7(vr4)
002924  1bc16000  srli r2, r1, 6
002928  1b011100  andi r2, r2, 1
00292c  3b300100  bneq r2, zero, 12
002930  fab56040  vextracti.s r11, 6(vr1)
002934  5b010000  j 8
002938  fa356240  vextracti.s r11, 6(vr4)
00293c  1bc15000  srli r2, r1, 5
002940  1b011100  andi r2, r2, 1
002944  3b300100  bneq r2, zero, 12
002948  faba5040  vextracti.s r21, 5(vr1)
00294c  5b010000  j 8
002950  fa3a5240  vextracti.s r21, 5(vr4)
002954  1bc14000  srli r2, r1, 4
002958  1b011100  andi r2, r2, 1
00295c  3b300100  bneq r2, zero, 12
002960  7ab34040  vextracti.s r6, 4(vr1)
002964  5b010000  j 8
002968  7a334240  vextracti.s r6, 4(vr4)
00296c  1bc13000  srli r2, r1, 3
002970  1b011100  andi r2, r2, 1
002974  3b300100  bneq r2, zero, 12
002978  7ab13040  vextracti.s r2, 3(vr1)
00297c  5b010000  j 8
002980  7a313240  vextracti.s r2, 3(vr4)
002984  1bcd2000  srli r26, r1, 2
002988  1b0d1d00  andi r26, r26, 1
00298c  3b300d00  bneq r26, zero, 12
002990  7abd2040  vextracti.s r26, 2(vr1)
002994  5b010000  j 8
002998  7a3d2240  vextracti.s r26, 2(vr4)
00299c  9bcd1000  srli r27, r1, 1
0029a0  9b8d1d00  andi r27, r27, 1
0029a4  3be00d00  bneq r27, zero, 24
0029a8  fabd1040  vextracti.s r27, 1(vr1)
0029ac  9b801000  andi r1, r1, 1
0029b0  37e00000  beq r1, zero, 24
0029b4  fa300240  vextracti.s r1, 0(vr4)
0029b8  db020000  j 20
0029bc  fa3d1240  vextracti.s r27, 1(vr4)
0029c0  9b801000  andi r1, r1, 1
0029c4  bbcf00fe  bneq r1, zero, -16
0029c8  fab00040  vextracti.s r1, 0(vr1)
0029cc  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0029d0  1f100000  addli zero, zero, 1
0029d4  fe0100e0  vmmov mr3, zero
0029d8  17200000  xor zero, zero, zero
0029dc  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
0029e0  9f200000  addli r1, zero, 2
0029e4  fe8100e0  vmmov mr3, r1
0029e8  9f400000  addli r1, zero, 4
0029ec  6aa24d36  vor.u.mh vr4{mr3}, r27, vr4
0029f0  fe8100e0  vmmov mr3, r1
0029f4  9f001000  addli r1, zero, 8
0029f8  6a224d36  vor.u.mh vr4{mr3}, r26, vr4
0029fc  fe8100e0  vmmov mr3, r1
002a00  9f002000  addli r1, zero, 16
002a04  6a224136  vor.u.mh vr4{mr3}, r2, vr4
002a08  fe8100e0  vmmov mr3, r1
002a0c  9f004000  addli r1, zero, 32
002a10  2b014000  lui r2, 1024
002a14  6a224336  vor.u.mh vr4{mr3}, r6, vr4
002a18  fe8100e0  vmmov mr3, r1
002a1c  9f008000  addli r1, zero, 64
002a20  6aa24a36  vor.u.mh vr4{mr3}, r21, vr4
002a24  fe8100e0  vmmov mr3, r1
002a28  9f000001  addli r1, zero, 128
002a2c  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
002a30  fe8100e0  vmmov mr3, r1
002a34  9f000002  addli r1, zero, 256
002a38  6a224536  vor.u.mh vr4{mr3}, r10, vr4
002a3c  fe8100e0  vmmov mr3, r1
002a40  9f000004  addli r1, zero, 512
002a44  6aa24c36  vor.u.mh vr4{mr3}, r25, vr4
002a48  fe8100e0  vmmov mr3, r1
002a4c  9f000008  addli r1, zero, 1024
002a50  6a224c36  vor.u.mh vr4{mr3}, r24, vr4
002a54  fe8100e0  vmmov mr3, r1
002a58  9f000010  addli r1, zero, 2048
002a5c  6aa24936  vor.u.mh vr4{mr3}, r19, vr4
002a60  fe8100e0  vmmov mr3, r1
002a64  9f000020  addli r1, zero, 4096
002a68  6aa24836  vor.u.mh vr4{mr3}, r17, vr4
002a6c  fe8100e0  vmmov mr3, r1
002a70  9f000fde  addli r1, r30, -4352
002a74  6a224236  vor.u.mh vr4{mr3}, r4, vr4
002a78  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002a7c  9f000040  addli r1, zero, 8192
002a80  8a121a02  vmul.f.mz.rn vr5{mr1}, r20, vr1
002a84  669302c0  vabs.f vr6, vr5
002a88  eeb051c2  vsrl.s.mz vr1{mr1}, vr3, vr5
002a8c  fe8100e0  vmmov mr3, r1
002a90  ab400000  lui r1, 4
002a94  6a224836  vor.u.mh vr4{mr3}, r16, vr4
002a98  fe8100e0  vmmov mr3, r1
002a9c  ab800000  lui r1, 8
002aa0  ea301702  vand.s.mz vr1{mr1}, r14, vr1
002aa4  6aa24736  vor.u.mh vr4{mr3}, r15, vr4
002aa8  fe8100e0  vmmov mr3, r1
002aac  96b01202  vadd.s.mz vr1{mr1}, vr5, vr1
002ab0  6aa24636  vor.u.mh vr4{mr3}, r13, vr4
002ab4  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
002ab8  7e8201a0  vmmov r4, mr3
002abc  92301402  vadd.s.mz vr1{mr1}, r8, vr1
002ac0  9b40f200  srli r1, r4, 15
002ac4  6af344c0  vsrl.p vr6, r9, vr4
002ac8  6a325122  vor.s.mz vr4{mr1}, r2, vr5
002acc  9b801000  andi r1, r1, 1
002ad0  46006e14  vstore.mh vr6{mr2}, 0(r28)
002ad4  3bb00000  bneq r1, zero, 12
002ad8  fab6f040  vextracti.s r13, 15(vr1)
002adc  5b010000  j 8
002ae0  fa36f240  vextracti.s r13, 15(vr4)
002ae4  9b40e200  srli r1, r4, 14
002ae8  9b801000  andi r1, r1, 1
002aec  3bb00000  bneq r1, zero, 12
002af0  fab7e040  vextracti.s r15, 14(vr1)
002af4  5b010000  j 8
002af8  fa37e240  vextracti.s r15, 14(vr4)
002afc  9b40d200  srli r1, r4, 13
002b00  9b801000  andi r1, r1, 1
002b04  3bb00000  bneq r1, zero, 12
002b08  7ab8d040  vextracti.s r16, 13(vr1)
002b0c  5b010000  j 8
002b10  7a38d240  vextracti.s r16, 13(vr4)
002b14  9b40c200  srli r1, r4, 12
002b18  9b801000  andi r1, r1, 1
002b1c  3bb00000  bneq r1, zero, 12
002b20  fab0c040  vextracti.s r1, 12(vr1)
002b24  5b010000  j 8
002b28  fa30c240  vextracti.s r1, 12(vr4)
002b2c  1b41b200  srli r2, r4, 11
002b30  1b011100  andi r2, r2, 1
002b34  3b300100  bneq r2, zero, 12
002b38  fab8b040  vextracti.s r17, 11(vr1)
002b3c  5b010000  j 8
002b40  fa38b240  vextracti.s r17, 11(vr4)
002b44  1b41a200  srli r2, r4, 10
002b48  1b011100  andi r2, r2, 1
002b4c  3b300100  bneq r2, zero, 12
002b50  fab9a040  vextracti.s r19, 10(vr1)
002b54  5b010000  j 8
002b58  fa39a240  vextracti.s r19, 10(vr4)
002b5c  1b419200  srli r2, r4, 9
002b60  1b011100  andi r2, r2, 1
002b64  3b300100  bneq r2, zero, 12
002b68  7abc9040  vextracti.s r24, 9(vr1)
002b6c  5b010000  j 8
002b70  7a3c9240  vextracti.s r24, 9(vr4)
002b74  1b418200  srli r2, r4, 8
002b78  1b011100  andi r2, r2, 1
002b7c  3b300100  bneq r2, zero, 12
002b80  fabc8040  vextracti.s r25, 8(vr1)
002b84  5b010000  j 8
002b88  fa3c8240  vextracti.s r25, 8(vr4)
002b8c  1b417200  srli r2, r4, 7
002b90  1b011100  andi r2, r2, 1
002b94  3b300100  bneq r2, zero, 12
002b98  7ab57040  vextracti.s r10, 7(vr1)
002b9c  5b010000  j 8
002ba0  7a357240  vextracti.s r10, 7(vr4)
002ba4  1b416200  srli r2, r4, 6
002ba8  1b011100  andi r2, r2, 1
002bac  3b300100  bneq r2, zero, 12
002bb0  fab56040  vextracti.s r11, 6(vr1)
002bb4  5b010000  j 8
002bb8  fa356240  vextracti.s r11, 6(vr4)
002bbc  1b415200  srli r2, r4, 5
002bc0  1b011100  andi r2, r2, 1
002bc4  3b300100  bneq r2, zero, 12
002bc8  faba5040  vextracti.s r21, 5(vr1)
002bcc  5b010000  j 8
002bd0  fa3a5240  vextracti.s r21, 5(vr4)
002bd4  1b414200  srli r2, r4, 4
002bd8  1b011100  andi r2, r2, 1
002bdc  3b300100  bneq r2, zero, 12
002be0  7ab34040  vextracti.s r6, 4(vr1)
002be4  5b010000  j 8
002be8  7a334240  vextracti.s r6, 4(vr4)
002bec  1b413200  srli r2, r4, 3
002bf0  1b011100  andi r2, r2, 1
002bf4  3b300100  bneq r2, zero, 12
002bf8  7ab13040  vextracti.s r2, 3(vr1)
002bfc  5b010000  j 8
002c00  7a313240  vextracti.s r2, 3(vr4)
002c04  1b4d2200  srli r26, r4, 2
002c08  1b0d1d00  andi r26, r26, 1
002c0c  3b300d00  bneq r26, zero, 12
002c10  7abd2040  vextracti.s r26, 2(vr1)
002c14  5b010000  j 8
002c18  7a3d2240  vextracti.s r26, 2(vr4)
002c1c  9b4d1200  srli r27, r4, 1
002c20  9b8d1d00  andi r27, r27, 1
002c24  3be00d00  bneq r27, zero, 24
002c28  fabd1040  vextracti.s r27, 1(vr1)
002c2c  1b021200  andi r4, r4, 1
002c30  37600200  beq r4, zero, 24
002c34  7a320240  vextracti.s r4, 0(vr4)
002c38  db020000  j 20
002c3c  fa3d1240  vextracti.s r27, 1(vr4)
002c40  1b021200  andi r4, r4, 1
002c44  bb4f02fe  bneq r4, zero, -16
002c48  7ab20040  vextracti.s r4, 0(vr1)
002c4c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
002c50  1f100000  addli zero, zero, 1
002c54  fe0100e0  vmmov mr3, zero
002c58  17200000  xor zero, zero, zero
002c5c  ea225236  vor.u.mh vr5{mr3}, r4, vr5
002c60  1f220000  addli r4, zero, 2
002c64  fe0102e0  vmmov mr3, r4
002c68  1f420000  addli r4, zero, 4
002c6c  eaa25d36  vor.u.mh vr5{mr3}, r27, vr5
002c70  fe0102e0  vmmov mr3, r4
002c74  1f021000  addli r4, zero, 8
002c78  ea225d36  vor.u.mh vr5{mr3}, r26, vr5
002c7c  fe0102e0  vmmov mr3, r4
002c80  ea225136  vor.u.mh vr5{mr3}, r2, vr5
002c84  1f012000  addli r2, zero, 16
002c88  fe0101e0  vmmov mr3, r2
002c8c  1f014000  addli r2, zero, 32
002c90  ea225336  vor.u.mh vr5{mr3}, r6, vr5
002c94  fe0101e0  vmmov mr3, r2
002c98  1f018000  addli r2, zero, 64
002c9c  eaa25a36  vor.u.mh vr5{mr3}, r21, vr5
002ca0  fe0101e0  vmmov mr3, r2
002ca4  1f010001  addli r2, zero, 128
002ca8  eaa25536  vor.u.mh vr5{mr3}, r11, vr5
002cac  fe0101e0  vmmov mr3, r2
002cb0  1f010002  addli r2, zero, 256
002cb4  ea225536  vor.u.mh vr5{mr3}, r10, vr5
002cb8  fe0101e0  vmmov mr3, r2
002cbc  1f010004  addli r2, zero, 512
002cc0  eaa25c36  vor.u.mh vr5{mr3}, r25, vr5
002cc4  fe0101e0  vmmov mr3, r2
002cc8  1f010008  addli r2, zero, 1024
002ccc  ea225c36  vor.u.mh vr5{mr3}, r24, vr5
002cd0  fe0101e0  vmmov mr3, r2
002cd4  1f010010  addli r2, zero, 2048
002cd8  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
002cdc  fe0101e0  vmmov mr3, r2
002ce0  1f018fde  addli r2, r30, -4288
002ce4  eaa25836  vor.u.mh vr5{mr3}, r17, vr5
002ce8  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
002cec  1f010020  addli r2, zero, 4096
002cf0  0a121a02  vmul.f.mz.rn vr4{mr1}, r20, vr1
002cf4  661302c0  vabs.f vr6, vr4
002cf8  eeb041c2  vsrl.s.mz vr1{mr1}, vr3, vr4
002cfc  fe0101e0  vmmov mr3, r2
002d00  2b810000  lui r2, 8
002d04  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
002d08  9f000040  addli r1, zero, 8192
002d0c  ea301702  vand.s.mz vr1{mr1}, r14, vr1
002d10  fe8100e0  vmmov mr3, r1
002d14  ab400000  lui r1, 4
002d18  ea225836  vor.u.mh vr5{mr3}, r16, vr5
002d1c  fe8100e0  vmmov mr3, r1
002d20  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
002d24  6ab24122  vor.s.mz vr4{mr1}, r3, vr4
002d28  eaa25736  vor.u.mh vr5{mr3}, r15, vr5
002d2c  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
002d30  fe8001a0  vmmov r1, mr3
002d34  fe0101e0  vmmov mr3, r2
002d38  92301402  vadd.s.mz vr1{mr1}, r8, vr1
002d3c  1bc1f000  srli r2, r1, 15
002d40  eaa25636  vor.u.mh vr5{mr3}, r13, vr5
002d44  1b011100  andi r2, r2, 1
002d48  46805b10  vstore.mh vr5{mr0}, 0(r23)
002d4c  3b300100  bneq r2, zero, 12
002d50  fab6f040  vextracti.s r13, 15(vr1)
002d54  5b010000  j 8
002d58  fa36f240  vextracti.s r13, 15(vr4)
002d5c  1bc1e000  srli r2, r1, 14
002d60  e341afe1  loadli.w r3,  -3884(r30)
002d64  1b011100  andi r2, r2, 1
002d68  3b300100  bneq r2, zero, 12
002d6c  fab7e040  vextracti.s r15, 14(vr1)
002d70  5b010000  j 8
002d74  fa37e240  vextracti.s r15, 14(vr4)
002d78  1bc1d000  srli r2, r1, 13
002d7c  1b011100  andi r2, r2, 1
002d80  3b300100  bneq r2, zero, 12
002d84  7ab8d040  vextracti.s r16, 13(vr1)
002d88  5b010000  j 8
002d8c  7a38d240  vextracti.s r16, 13(vr4)
002d90  1bc1c000  srli r2, r1, 12
002d94  1b011100  andi r2, r2, 1
002d98  3b300100  bneq r2, zero, 12
002d9c  7ab2c040  vextracti.s r4, 12(vr1)
002da0  5b010000  j 8
002da4  7a32c240  vextracti.s r4, 12(vr4)
002da8  1bc1b000  srli r2, r1, 11
002dac  1b011100  andi r2, r2, 1
002db0  3b300100  bneq r2, zero, 12
002db4  fab8b040  vextracti.s r17, 11(vr1)
002db8  5b010000  j 8
002dbc  fa38b240  vextracti.s r17, 11(vr4)
002dc0  1bc1a000  srli r2, r1, 10
002dc4  1b011100  andi r2, r2, 1
002dc8  3b300100  bneq r2, zero, 12
002dcc  fab9a040  vextracti.s r19, 10(vr1)
002dd0  5b010000  j 8
002dd4  fa39a240  vextracti.s r19, 10(vr4)
002dd8  1bc19000  srli r2, r1, 9
002ddc  1b011100  andi r2, r2, 1
002de0  3b300100  bneq r2, zero, 12
002de4  7abc9040  vextracti.s r24, 9(vr1)
002de8  5b010000  j 8
002dec  7a3c9240  vextracti.s r24, 9(vr4)
002df0  1bc18000  srli r2, r1, 8
002df4  1b011100  andi r2, r2, 1
002df8  3b300100  bneq r2, zero, 12
002dfc  fabc8040  vextracti.s r25, 8(vr1)
002e00  5b010000  j 8
002e04  fa3c8240  vextracti.s r25, 8(vr4)
002e08  1bc17000  srli r2, r1, 7
002e0c  1b011100  andi r2, r2, 1
002e10  3b300100  bneq r2, zero, 12
002e14  7ab57040  vextracti.s r10, 7(vr1)
002e18  5b010000  j 8
002e1c  7a357240  vextracti.s r10, 7(vr4)
002e20  1bc16000  srli r2, r1, 6
002e24  1b011100  andi r2, r2, 1
002e28  3b300100  bneq r2, zero, 12
002e2c  fab56040  vextracti.s r11, 6(vr1)
002e30  5b010000  j 8
002e34  fa356240  vextracti.s r11, 6(vr4)
002e38  1bc15000  srli r2, r1, 5
002e3c  1b011100  andi r2, r2, 1
002e40  3b300100  bneq r2, zero, 12
002e44  faba5040  vextracti.s r21, 5(vr1)
002e48  5b010000  j 8
002e4c  fa3a5240  vextracti.s r21, 5(vr4)
002e50  1bc14000  srli r2, r1, 4
002e54  1b011100  andi r2, r2, 1
002e58  3b300100  bneq r2, zero, 12
002e5c  7ab34040  vextracti.s r6, 4(vr1)
002e60  5b010000  j 8
002e64  7a334240  vextracti.s r6, 4(vr4)
002e68  1bc13000  srli r2, r1, 3
002e6c  1b011100  andi r2, r2, 1
002e70  3b300100  bneq r2, zero, 12
002e74  7ab13040  vextracti.s r2, 3(vr1)
002e78  5b010000  j 8
002e7c  7a313240  vextracti.s r2, 3(vr4)
002e80  1bcd2000  srli r26, r1, 2
002e84  1b0d1d00  andi r26, r26, 1
002e88  3b300d00  bneq r26, zero, 12
002e8c  7abd2040  vextracti.s r26, 2(vr1)
002e90  5b010000  j 8
002e94  7a3d2240  vextracti.s r26, 2(vr4)
002e98  9bcd1000  srli r27, r1, 1
002e9c  9b8d1d00  andi r27, r27, 1
002ea0  3be00d00  bneq r27, zero, 24
002ea4  fabd1040  vextracti.s r27, 1(vr1)
002ea8  9b801000  andi r1, r1, 1
002eac  37e00000  beq r1, zero, 24
002eb0  fa300240  vextracti.s r1, 0(vr4)
002eb4  db020000  j 20
002eb8  fa3d1240  vextracti.s r27, 1(vr4)
002ebc  9b801000  andi r1, r1, 1
002ec0  bbcf00fe  bneq r1, zero, -16
002ec4  fab00040  vextracti.s r1, 0(vr1)
002ec8  12320002  vadd.s.mz vr4{mr1}, zero, vr0
002ecc  1f100000  addli zero, zero, 1
002ed0  fe0100e0  vmmov mr3, zero
002ed4  17200000  xor zero, zero, zero
002ed8  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
002edc  9f200000  addli r1, zero, 2
002ee0  fe8100e0  vmmov mr3, r1
002ee4  9f400000  addli r1, zero, 4
002ee8  6aa24d36  vor.u.mh vr4{mr3}, r27, vr4
002eec  fe8100e0  vmmov mr3, r1
002ef0  9f001000  addli r1, zero, 8
002ef4  ab0d4000  lui r27, 1024
002ef8  6a224d36  vor.u.mh vr4{mr3}, r26, vr4
002efc  fe8100e0  vmmov mr3, r1
002f00  9f002000  addli r1, zero, 16
002f04  6a224136  vor.u.mh vr4{mr3}, r2, vr4
002f08  fe8100e0  vmmov mr3, r1
002f0c  9f004000  addli r1, zero, 32
002f10  6a224336  vor.u.mh vr4{mr3}, r6, vr4
002f14  fe8100e0  vmmov mr3, r1
002f18  9f008000  addli r1, zero, 64
002f1c  6aa24a36  vor.u.mh vr4{mr3}, r21, vr4
002f20  fe8100e0  vmmov mr3, r1
002f24  9f000001  addli r1, zero, 128
002f28  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
002f2c  fe8100e0  vmmov mr3, r1
002f30  9f000002  addli r1, zero, 256
002f34  6a224536  vor.u.mh vr4{mr3}, r10, vr4
002f38  fe8100e0  vmmov mr3, r1
002f3c  9f000004  addli r1, zero, 512
002f40  6aa24c36  vor.u.mh vr4{mr3}, r25, vr4
002f44  fe8100e0  vmmov mr3, r1
002f48  9f000008  addli r1, zero, 1024
002f4c  6a224c36  vor.u.mh vr4{mr3}, r24, vr4
002f50  fe8100e0  vmmov mr3, r1
002f54  9f000010  addli r1, zero, 2048
002f58  6aa24936  vor.u.mh vr4{mr3}, r19, vr4
002f5c  fe8100e0  vmmov mr3, r1
002f60  9f000020  addli r1, zero, 4096
002f64  6aa24836  vor.u.mh vr4{mr3}, r17, vr4
002f68  fe8100e0  vmmov mr3, r1
002f6c  9f000fdf  addli r1, r30, -4224
002f70  6a224236  vor.u.mh vr4{mr3}, r4, vr4
002f74  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002f78  9f000040  addli r1, zero, 8192
002f7c  8a121a02  vmul.f.mz.rn vr5{mr1}, r20, vr1
002f80  669302c0  vabs.f vr6, vr5
002f84  eeb051c2  vsrl.s.mz vr1{mr1}, vr3, vr5
002f88  fe8100e0  vmmov mr3, r1
002f8c  ab400000  lui r1, 4
002f90  6a224836  vor.u.mh vr4{mr3}, r16, vr4
002f94  fe8100e0  vmmov mr3, r1
002f98  ab800000  lui r1, 8
002f9c  ea301702  vand.s.mz vr1{mr1}, r14, vr1
002fa0  6aa24736  vor.u.mh vr4{mr3}, r15, vr4
002fa4  fe8100e0  vmmov mr3, r1
002fa8  96b01202  vadd.s.mz vr1{mr1}, vr5, vr1
002fac  6aa24636  vor.u.mh vr4{mr3}, r13, vr4
002fb0  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
002fb4  7e8201a0  vmmov r4, mr3
002fb8  92301402  vadd.s.mz vr1{mr1}, r8, vr1
002fbc  9b40f200  srli r1, r4, 15
002fc0  6af344c0  vsrl.p vr6, r9, vr4
002fc4  6ab25d22  vor.s.mz vr4{mr1}, r27, vr5
002fc8  9b801000  andi r1, r1, 1
002fcc  46806b14  vstore.mh vr6{mr2}, 0(r23)
002fd0  3bb00000  bneq r1, zero, 12
002fd4  fab6f040  vextracti.s r13, 15(vr1)
002fd8  5b010000  j 8
002fdc  fa36f240  vextracti.s r13, 15(vr4)
002fe0  9b40e200  srli r1, r4, 14
002fe4  9b801000  andi r1, r1, 1
002fe8  3bb00000  bneq r1, zero, 12
002fec  fab7e040  vextracti.s r15, 14(vr1)
002ff0  5b010000  j 8
002ff4  fa37e240  vextracti.s r15, 14(vr4)
002ff8  9b40d200  srli r1, r4, 13
002ffc  9b801000  andi r1, r1, 1
003000  3bb00000  bneq r1, zero, 12
003004  7ab8d040  vextracti.s r16, 13(vr1)
003008  5b010000  j 8
00300c  7a38d240  vextracti.s r16, 13(vr4)
003010  9b40c200  srli r1, r4, 12
003014  9b801000  andi r1, r1, 1
003018  3bb00000  bneq r1, zero, 12
00301c  fab0c040  vextracti.s r1, 12(vr1)
003020  5b010000  j 8
003024  fa30c240  vextracti.s r1, 12(vr4)
003028  1b41b200  srli r2, r4, 11
00302c  1b011100  andi r2, r2, 1
003030  3b300100  bneq r2, zero, 12
003034  fab8b040  vextracti.s r17, 11(vr1)
003038  5b010000  j 8
00303c  fa38b240  vextracti.s r17, 11(vr4)
003040  1b41a200  srli r2, r4, 10
003044  1b011100  andi r2, r2, 1
003048  3b300100  bneq r2, zero, 12
00304c  fab9a040  vextracti.s r19, 10(vr1)
003050  5b010000  j 8
003054  fa39a240  vextracti.s r19, 10(vr4)
003058  1b419200  srli r2, r4, 9
00305c  1b011100  andi r2, r2, 1
003060  3b300100  bneq r2, zero, 12
003064  fabb9040  vextracti.s r23, 9(vr1)
003068  5b010000  j 8
00306c  fa3b9240  vextracti.s r23, 9(vr4)
003070  1b418200  srli r2, r4, 8
003074  1b011100  andi r2, r2, 1
003078  3b300100  bneq r2, zero, 12
00307c  7abc8040  vextracti.s r24, 8(vr1)
003080  5b010000  j 8
003084  7a3c8240  vextracti.s r24, 8(vr4)
003088  1b417200  srli r2, r4, 7
00308c  1b011100  andi r2, r2, 1
003090  3b300100  bneq r2, zero, 12
003094  7ab57040  vextracti.s r10, 7(vr1)
003098  5b010000  j 8
00309c  7a357240  vextracti.s r10, 7(vr4)
0030a0  1b416200  srli r2, r4, 6
0030a4  1b011100  andi r2, r2, 1
0030a8  3b300100  bneq r2, zero, 12
0030ac  fab56040  vextracti.s r11, 6(vr1)
0030b0  5b010000  j 8
0030b4  fa356240  vextracti.s r11, 6(vr4)
0030b8  1b415200  srli r2, r4, 5
0030bc  1b011100  andi r2, r2, 1
0030c0  3b300100  bneq r2, zero, 12
0030c4  faba5040  vextracti.s r21, 5(vr1)
0030c8  5b010000  j 8
0030cc  fa3a5240  vextracti.s r21, 5(vr4)
0030d0  1b414200  srli r2, r4, 4
0030d4  1b011100  andi r2, r2, 1
0030d8  3b300100  bneq r2, zero, 12
0030dc  7ab34040  vextracti.s r6, 4(vr1)
0030e0  5b010000  j 8
0030e4  7a334240  vextracti.s r6, 4(vr4)
0030e8  1b413200  srli r2, r4, 3
0030ec  1b011100  andi r2, r2, 1
0030f0  3b300100  bneq r2, zero, 12
0030f4  7ab13040  vextracti.s r2, 3(vr1)
0030f8  5b010000  j 8
0030fc  7a313240  vextracti.s r2, 3(vr4)
003100  9b4c2200  srli r25, r4, 2
003104  9b8c1c00  andi r25, r25, 1
003108  3bb00c00  bneq r25, zero, 12
00310c  fabc2040  vextracti.s r25, 2(vr1)
003110  5b010000  j 8
003114  fa3c2240  vextracti.s r25, 2(vr4)
003118  1b4d1200  srli r26, r4, 1
00311c  1b0d1d00  andi r26, r26, 1
003120  3b600d00  bneq r26, zero, 24
003124  7abd1040  vextracti.s r26, 1(vr1)
003128  1b021200  andi r4, r4, 1
00312c  37600200  beq r4, zero, 24
003130  7a320240  vextracti.s r4, 0(vr4)
003134  db020000  j 20
003138  7a3d1240  vextracti.s r26, 1(vr4)
00313c  1b021200  andi r4, r4, 1
003140  bb4f02fe  bneq r4, zero, -16
003144  7ab20040  vextracti.s r4, 0(vr1)
003148  92320002  vadd.s.mz vr5{mr1}, zero, vr0
00314c  1f100000  addli zero, zero, 1
003150  fe0100e0  vmmov mr3, zero
003154  17200000  xor zero, zero, zero
003158  ea225236  vor.u.mh vr5{mr3}, r4, vr5
00315c  1f220000  addli r4, zero, 2
003160  fe0102e0  vmmov mr3, r4
003164  1f420000  addli r4, zero, 4
003168  ea225d36  vor.u.mh vr5{mr3}, r26, vr5
00316c  fe0102e0  vmmov mr3, r4
003170  1f021000  addli r4, zero, 8
003174  eaa25c36  vor.u.mh vr5{mr3}, r25, vr5
003178  fe0102e0  vmmov mr3, r4
00317c  ea225136  vor.u.mh vr5{mr3}, r2, vr5
003180  1f012000  addli r2, zero, 16
003184  fe0101e0  vmmov mr3, r2
003188  1f014000  addli r2, zero, 32
00318c  ea225336  vor.u.mh vr5{mr3}, r6, vr5
003190  fe0101e0  vmmov mr3, r2
003194  1f018000  addli r2, zero, 64
003198  eaa25a36  vor.u.mh vr5{mr3}, r21, vr5
00319c  fe0101e0  vmmov mr3, r2
0031a0  1f010001  addli r2, zero, 128
0031a4  eaa25536  vor.u.mh vr5{mr3}, r11, vr5
0031a8  fe0101e0  vmmov mr3, r2
0031ac  1f010002  addli r2, zero, 256
0031b0  ea225536  vor.u.mh vr5{mr3}, r10, vr5
0031b4  fe0101e0  vmmov mr3, r2
0031b8  1f010004  addli r2, zero, 512
0031bc  ea225c36  vor.u.mh vr5{mr3}, r24, vr5
0031c0  fe0101e0  vmmov mr3, r2
0031c4  1f010008  addli r2, zero, 1024
0031c8  eaa25b36  vor.u.mh vr5{mr3}, r23, vr5
0031cc  fe0101e0  vmmov mr3, r2
0031d0  1f010010  addli r2, zero, 2048
0031d4  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
0031d8  fe0101e0  vmmov mr3, r2
0031dc  1f018fdf  addli r2, r30, -4160
0031e0  eaa25836  vor.u.mh vr5{mr3}, r17, vr5
0031e4  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0031e8  1f010020  addli r2, zero, 4096
0031ec  0a121a02  vmul.f.mz.rn vr4{mr1}, r20, vr1
0031f0  661302c0  vabs.f vr6, vr4
0031f4  eeb041c2  vsrl.s.mz vr1{mr1}, vr3, vr4
0031f8  fe0101e0  vmmov mr3, r2
0031fc  2b810000  lui r2, 8
003200  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
003204  9f000040  addli r1, zero, 8192
003208  ea301702  vand.s.mz vr1{mr1}, r14, vr1
00320c  fe8100e0  vmmov mr3, r1
003210  ab400000  lui r1, 4
003214  ea225836  vor.u.mh vr5{mr3}, r16, vr5
003218  fe8100e0  vmmov mr3, r1
00321c  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
003220  6ab24d22  vor.s.mz vr4{mr1}, r27, vr4
003224  eaa25736  vor.u.mh vr5{mr3}, r15, vr5
003228  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
00322c  fe8001a0  vmmov r1, mr3
003230  fe0101e0  vmmov mr3, r2
003234  92301402  vadd.s.mz vr1{mr1}, r8, vr1
003238  1bc1f000  srli r2, r1, 15
00323c  eaa25636  vor.u.mh vr5{mr3}, r13, vr5
003240  1b011100  andi r2, r2, 1
003244  46005b10  vstore.mh vr5{mr0}, 0(r22)
003248  3b300100  bneq r2, zero, 12
00324c  fab6f040  vextracti.s r13, 15(vr1)
003250  5b010000  j 8
003254  fa36f240  vextracti.s r13, 15(vr4)
003258  1bc1e000  srli r2, r1, 14
00325c  1b011100  andi r2, r2, 1
003260  3b300100  bneq r2, zero, 12
003264  fab7e040  vextracti.s r15, 14(vr1)
003268  5b010000  j 8
00326c  fa37e240  vextracti.s r15, 14(vr4)
003270  1bc1d000  srli r2, r1, 13
003274  1b011100  andi r2, r2, 1
003278  3b300100  bneq r2, zero, 12
00327c  7ab8d040  vextracti.s r16, 13(vr1)
003280  5b010000  j 8
003284  7a38d240  vextracti.s r16, 13(vr4)
003288  1bc1c000  srli r2, r1, 12
00328c  1b011100  andi r2, r2, 1
003290  3b300100  bneq r2, zero, 12
003294  7ab2c040  vextracti.s r4, 12(vr1)
003298  5b010000  j 8
00329c  7a32c240  vextracti.s r4, 12(vr4)
0032a0  1bc1b000  srli r2, r1, 11
0032a4  1b011100  andi r2, r2, 1
0032a8  3b300100  bneq r2, zero, 12
0032ac  fab8b040  vextracti.s r17, 11(vr1)
0032b0  5b010000  j 8
0032b4  fa38b240  vextracti.s r17, 11(vr4)
0032b8  1bc1a000  srli r2, r1, 10
0032bc  1b011100  andi r2, r2, 1
0032c0  3b300100  bneq r2, zero, 12
0032c4  fab9a040  vextracti.s r19, 10(vr1)
0032c8  5b010000  j 8
0032cc  fa39a240  vextracti.s r19, 10(vr4)
0032d0  1bc19000  srli r2, r1, 9
0032d4  1b011100  andi r2, r2, 1
0032d8  3b300100  bneq r2, zero, 12
0032dc  fabb9040  vextracti.s r23, 9(vr1)
0032e0  5b010000  j 8
0032e4  fa3b9240  vextracti.s r23, 9(vr4)
0032e8  1bc18000  srli r2, r1, 8
0032ec  1b011100  andi r2, r2, 1
0032f0  3b300100  bneq r2, zero, 12
0032f4  7abc8040  vextracti.s r24, 8(vr1)
0032f8  5b010000  j 8
0032fc  7a3c8240  vextracti.s r24, 8(vr4)
003300  1bc17000  srli r2, r1, 7
003304  1b011100  andi r2, r2, 1
003308  3b300100  bneq r2, zero, 12
00330c  7ab57040  vextracti.s r10, 7(vr1)
003310  5b010000  j 8
003314  7a357240  vextracti.s r10, 7(vr4)
003318  1bc16000  srli r2, r1, 6
00331c  1b011100  andi r2, r2, 1
003320  3b300100  bneq r2, zero, 12
003324  fab56040  vextracti.s r11, 6(vr1)
003328  5b010000  j 8
00332c  fa356240  vextracti.s r11, 6(vr4)
003330  1bc15000  srli r2, r1, 5
003334  1b011100  andi r2, r2, 1
003338  3b300100  bneq r2, zero, 12
00333c  faba5040  vextracti.s r21, 5(vr1)
003340  5b010000  j 8
003344  fa3a5240  vextracti.s r21, 5(vr4)
003348  1bc14000  srli r2, r1, 4
00334c  1b011100  andi r2, r2, 1
003350  3b300100  bneq r2, zero, 12
003354  7ab34040  vextracti.s r6, 4(vr1)
003358  5b010000  j 8
00335c  7a334240  vextracti.s r6, 4(vr4)
003360  1bc13000  srli r2, r1, 3
003364  1b011100  andi r2, r2, 1
003368  3b300100  bneq r2, zero, 12
00336c  7ab13040  vextracti.s r2, 3(vr1)
003370  5b010000  j 8
003374  7a313240  vextracti.s r2, 3(vr4)
003378  9bcc2000  srli r25, r1, 2
00337c  9b8c1c00  andi r25, r25, 1
003380  3bb00c00  bneq r25, zero, 12
003384  fabc2040  vextracti.s r25, 2(vr1)
003388  5b010000  j 8
00338c  fa3c2240  vextracti.s r25, 2(vr4)
003390  1bcd1000  srli r26, r1, 1
003394  1b0d1d00  andi r26, r26, 1
003398  3b600d00  bneq r26, zero, 24
00339c  7abd1040  vextracti.s r26, 1(vr1)
0033a0  9b801000  andi r1, r1, 1
0033a4  37e00000  beq r1, zero, 24
0033a8  fa300240  vextracti.s r1, 0(vr4)
0033ac  db020000  j 20
0033b0  7a3d1240  vextracti.s r26, 1(vr4)
0033b4  9b801000  andi r1, r1, 1
0033b8  bbcf00fe  bneq r1, zero, -16
0033bc  fab00040  vextracti.s r1, 0(vr1)
0033c0  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0033c4  1f100000  addli zero, zero, 1
0033c8  fe0100e0  vmmov mr3, zero
0033cc  17200000  xor zero, zero, zero
0033d0  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
0033d4  9f200000  addli r1, zero, 2
0033d8  fe8100e0  vmmov mr3, r1
0033dc  9f400000  addli r1, zero, 4
0033e0  6a224d36  vor.u.mh vr4{mr3}, r26, vr4
0033e4  fe8100e0  vmmov mr3, r1
0033e8  9f001000  addli r1, zero, 8
0033ec  6aa24c36  vor.u.mh vr4{mr3}, r25, vr4
0033f0  fe8100e0  vmmov mr3, r1
0033f4  9f002000  addli r1, zero, 16
0033f8  6a224136  vor.u.mh vr4{mr3}, r2, vr4
0033fc  fe8100e0  vmmov mr3, r1
003400  9f004000  addli r1, zero, 32
003404  6a224336  vor.u.mh vr4{mr3}, r6, vr4
003408  fe8100e0  vmmov mr3, r1
00340c  9f008000  addli r1, zero, 64
003410  6aa24a36  vor.u.mh vr4{mr3}, r21, vr4
003414  fe8100e0  vmmov mr3, r1
003418  9f000001  addli r1, zero, 128
00341c  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
003420  fe8100e0  vmmov mr3, r1
003424  9f000002  addli r1, zero, 256
003428  6a224536  vor.u.mh vr4{mr3}, r10, vr4
00342c  fe8100e0  vmmov mr3, r1
003430  9f000004  addli r1, zero, 512
003434  6a224c36  vor.u.mh vr4{mr3}, r24, vr4
003438  fe8100e0  vmmov mr3, r1
00343c  9f000008  addli r1, zero, 1024
003440  6aa24b36  vor.u.mh vr4{mr3}, r23, vr4
003444  fe8100e0  vmmov mr3, r1
003448  9f000010  addli r1, zero, 2048
00344c  6aa24936  vor.u.mh vr4{mr3}, r19, vr4
003450  fe8100e0  vmmov mr3, r1
003454  9f000020  addli r1, zero, 4096
003458  6aa24836  vor.u.mh vr4{mr3}, r17, vr4
00345c  fe8100e0  vmmov mr3, r1
003460  9f000fe0  addli r1, r30, -4096
003464  6a224236  vor.u.mh vr4{mr3}, r4, vr4
003468  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00346c  9f000040  addli r1, zero, 8192
003470  8a121a02  vmul.f.mz.rn vr5{mr1}, r20, vr1
003474  669302c0  vabs.f vr6, vr5
003478  eeb051c2  vsrl.s.mz vr1{mr1}, vr3, vr5
00347c  fe8100e0  vmmov mr3, r1
003480  ab400000  lui r1, 4
003484  6a224836  vor.u.mh vr4{mr3}, r16, vr4
003488  fe8100e0  vmmov mr3, r1
00348c  ab800000  lui r1, 8
003490  ea301702  vand.s.mz vr1{mr1}, r14, vr1
003494  6aa24736  vor.u.mh vr4{mr3}, r15, vr4
003498  fe8100e0  vmmov mr3, r1
00349c  96b01202  vadd.s.mz vr1{mr1}, vr5, vr1
0034a0  6aa24636  vor.u.mh vr4{mr3}, r13, vr4
0034a4  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
0034a8  7e8201a0  vmmov r4, mr3
0034ac  92301402  vadd.s.mz vr1{mr1}, r8, vr1
0034b0  9b40f200  srli r1, r4, 15
0034b4  6af344c0  vsrl.p vr6, r9, vr4
0034b8  6ab25d22  vor.s.mz vr4{mr1}, r27, vr5
0034bc  9b801000  andi r1, r1, 1
0034c0  46006b14  vstore.mh vr6{mr2}, 0(r22)
0034c4  3bb00000  bneq r1, zero, 12
0034c8  fab6f040  vextracti.s r13, 15(vr1)
0034cc  5b010000  j 8
0034d0  fa36f240  vextracti.s r13, 15(vr4)
0034d4  9b40e200  srli r1, r4, 14
0034d8  630dbfe1  loadli.w r26,  -3880(r30)
0034dc  9b801000  andi r1, r1, 1
0034e0  3bb00000  bneq r1, zero, 12
0034e4  fab7e040  vextracti.s r15, 14(vr1)
0034e8  5b010000  j 8
0034ec  fa37e240  vextracti.s r15, 14(vr4)
0034f0  9b40d200  srli r1, r4, 13
0034f4  9b801000  andi r1, r1, 1
0034f8  3bb00000  bneq r1, zero, 12
0034fc  7ab8d040  vextracti.s r16, 13(vr1)
003500  5b010000  j 8
003504  7a38d240  vextracti.s r16, 13(vr4)
003508  9b40c200  srli r1, r4, 12
00350c  9b801000  andi r1, r1, 1
003510  3bb00000  bneq r1, zero, 12
003514  fab0c040  vextracti.s r1, 12(vr1)
003518  5b010000  j 8
00351c  fa30c240  vextracti.s r1, 12(vr4)
003520  1b41b200  srli r2, r4, 11
003524  1b011100  andi r2, r2, 1
003528  3b300100  bneq r2, zero, 12
00352c  fab8b040  vextracti.s r17, 11(vr1)
003530  5b010000  j 8
003534  fa38b240  vextracti.s r17, 11(vr4)
003538  1b41a200  srli r2, r4, 10
00353c  1b011100  andi r2, r2, 1
003540  3b300100  bneq r2, zero, 12
003544  fab9a040  vextracti.s r19, 10(vr1)
003548  5b010000  j 8
00354c  fa39a240  vextracti.s r19, 10(vr4)
003550  1b419200  srli r2, r4, 9
003554  1b011100  andi r2, r2, 1
003558  3b300100  bneq r2, zero, 12
00355c  7abb9040  vextracti.s r22, 9(vr1)
003560  5b010000  j 8
003564  7a3b9240  vextracti.s r22, 9(vr4)
003568  1b418200  srli r2, r4, 8
00356c  1b011100  andi r2, r2, 1
003570  3b300100  bneq r2, zero, 12
003574  fabb8040  vextracti.s r23, 8(vr1)
003578  5b010000  j 8
00357c  fa3b8240  vextracti.s r23, 8(vr4)
003580  1b417200  srli r2, r4, 7
003584  1b011100  andi r2, r2, 1
003588  3b300100  bneq r2, zero, 12
00358c  7ab57040  vextracti.s r10, 7(vr1)
003590  5b010000  j 8
003594  7a357240  vextracti.s r10, 7(vr4)
003598  1b416200  srli r2, r4, 6
00359c  1b011100  andi r2, r2, 1
0035a0  3b300100  bneq r2, zero, 12
0035a4  fab56040  vextracti.s r11, 6(vr1)
0035a8  5b010000  j 8
0035ac  fa356240  vextracti.s r11, 6(vr4)
0035b0  1b415200  srli r2, r4, 5
0035b4  1b011100  andi r2, r2, 1
0035b8  3b300100  bneq r2, zero, 12
0035bc  faba5040  vextracti.s r21, 5(vr1)
0035c0  5b010000  j 8
0035c4  fa3a5240  vextracti.s r21, 5(vr4)
0035c8  1b414200  srli r2, r4, 4
0035cc  1b011100  andi r2, r2, 1
0035d0  3b300100  bneq r2, zero, 12
0035d4  7ab34040  vextracti.s r6, 4(vr1)
0035d8  5b010000  j 8
0035dc  7a334240  vextracti.s r6, 4(vr4)
0035e0  1b413200  srli r2, r4, 3
0035e4  1b011100  andi r2, r2, 1
0035e8  3b300100  bneq r2, zero, 12
0035ec  7ab13040  vextracti.s r2, 3(vr1)
0035f0  5b010000  j 8
0035f4  7a313240  vextracti.s r2, 3(vr4)
0035f8  1b4c2200  srli r24, r4, 2
0035fc  1b0c1c00  andi r24, r24, 1
003600  3b300c00  bneq r24, zero, 12
003604  7abc2040  vextracti.s r24, 2(vr1)
003608  5b010000  j 8
00360c  7a3c2240  vextracti.s r24, 2(vr4)
003610  9b4c1200  srli r25, r4, 1
003614  9b8c1c00  andi r25, r25, 1
003618  3be00c00  bneq r25, zero, 24
00361c  fabc1040  vextracti.s r25, 1(vr1)
003620  1b021200  andi r4, r4, 1
003624  37600200  beq r4, zero, 24
003628  7a320240  vextracti.s r4, 0(vr4)
00362c  db020000  j 20
003630  fa3c1240  vextracti.s r25, 1(vr4)
003634  1b021200  andi r4, r4, 1
003638  bb4f02fe  bneq r4, zero, -16
00363c  7ab20040  vextracti.s r4, 0(vr1)
003640  92320002  vadd.s.mz vr5{mr1}, zero, vr0
003644  1f100000  addli zero, zero, 1
003648  fe0100e0  vmmov mr3, zero
00364c  17200000  xor zero, zero, zero
003650  ea225236  vor.u.mh vr5{mr3}, r4, vr5
003654  1f220000  addli r4, zero, 2
003658  fe0102e0  vmmov mr3, r4
00365c  1f420000  addli r4, zero, 4
003660  eaa25c36  vor.u.mh vr5{mr3}, r25, vr5
003664  fe0102e0  vmmov mr3, r4
003668  1f021000  addli r4, zero, 8
00366c  ea225c36  vor.u.mh vr5{mr3}, r24, vr5
003670  fe0102e0  vmmov mr3, r4
003674  ea225136  vor.u.mh vr5{mr3}, r2, vr5
003678  1f012000  addli r2, zero, 16
00367c  fe0101e0  vmmov mr3, r2
003680  1f014000  addli r2, zero, 32
003684  ea225336  vor.u.mh vr5{mr3}, r6, vr5
003688  fe0101e0  vmmov mr3, r2
00368c  1f018000  addli r2, zero, 64
003690  eaa25a36  vor.u.mh vr5{mr3}, r21, vr5
003694  fe0101e0  vmmov mr3, r2
003698  1f010001  addli r2, zero, 128
00369c  eaa25536  vor.u.mh vr5{mr3}, r11, vr5
0036a0  fe0101e0  vmmov mr3, r2
0036a4  1f010002  addli r2, zero, 256
0036a8  ea225536  vor.u.mh vr5{mr3}, r10, vr5
0036ac  fe0101e0  vmmov mr3, r2
0036b0  1f010004  addli r2, zero, 512
0036b4  eaa25b36  vor.u.mh vr5{mr3}, r23, vr5
0036b8  fe0101e0  vmmov mr3, r2
0036bc  1f010008  addli r2, zero, 1024
0036c0  ea225b36  vor.u.mh vr5{mr3}, r22, vr5
0036c4  fe0101e0  vmmov mr3, r2
0036c8  1f010010  addli r2, zero, 2048
0036cc  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
0036d0  fe0101e0  vmmov mr3, r2
0036d4  1f018fe0  addli r2, r30, -4032
0036d8  eaa25836  vor.u.mh vr5{mr3}, r17, vr5
0036dc  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0036e0  1f010020  addli r2, zero, 4096
0036e4  0a121a02  vmul.f.mz.rn vr4{mr1}, r20, vr1
0036e8  661302c0  vabs.f vr6, vr4
0036ec  eeb041c2  vsrl.s.mz vr1{mr1}, vr3, vr4
0036f0  fe0101e0  vmmov mr3, r2
0036f4  2b810000  lui r2, 8
0036f8  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
0036fc  9f000040  addli r1, zero, 8192
003700  ea301702  vand.s.mz vr1{mr1}, r14, vr1
003704  fe8100e0  vmmov mr3, r1
003708  ab400000  lui r1, 4
00370c  ea225836  vor.u.mh vr5{mr3}, r16, vr5
003710  fe8100e0  vmmov mr3, r1
003714  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
003718  6ab24d22  vor.s.mz vr4{mr1}, r27, vr4
00371c  eaa25736  vor.u.mh vr5{mr3}, r15, vr5
003720  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
003724  fe8001a0  vmmov r1, mr3
003728  fe0101e0  vmmov mr3, r2
00372c  92301402  vadd.s.mz vr1{mr1}, r8, vr1
003730  1bc1f000  srli r2, r1, 15
003734  eaa25636  vor.u.mh vr5{mr3}, r13, vr5
003738  1b011100  andi r2, r2, 1
00373c  46005610  vstore.mh vr5{mr0}, 0(r12)
003740  3b300100  bneq r2, zero, 12
003744  fab6f040  vextracti.s r13, 15(vr1)
003748  5b010000  j 8
00374c  fa36f240  vextracti.s r13, 15(vr4)
003750  1bc1e000  srli r2, r1, 14
003754  1b011100  andi r2, r2, 1
003758  3b300100  bneq r2, zero, 12
00375c  fab7e040  vextracti.s r15, 14(vr1)
003760  5b010000  j 8
003764  fa37e240  vextracti.s r15, 14(vr4)
003768  1bc1d000  srli r2, r1, 13
00376c  1b011100  andi r2, r2, 1
003770  3b300100  bneq r2, zero, 12
003774  7ab8d040  vextracti.s r16, 13(vr1)
003778  5b010000  j 8
00377c  7a38d240  vextracti.s r16, 13(vr4)
003780  1bc1c000  srli r2, r1, 12
003784  1b011100  andi r2, r2, 1
003788  3b300100  bneq r2, zero, 12
00378c  7ab2c040  vextracti.s r4, 12(vr1)
003790  5b010000  j 8
003794  7a32c240  vextracti.s r4, 12(vr4)
003798  1bc1b000  srli r2, r1, 11
00379c  1b011100  andi r2, r2, 1
0037a0  3b300100  bneq r2, zero, 12
0037a4  fab8b040  vextracti.s r17, 11(vr1)
0037a8  5b010000  j 8
0037ac  fa38b240  vextracti.s r17, 11(vr4)
0037b0  1bc1a000  srli r2, r1, 10
0037b4  1b011100  andi r2, r2, 1
0037b8  3b300100  bneq r2, zero, 12
0037bc  fab9a040  vextracti.s r19, 10(vr1)
0037c0  5b010000  j 8
0037c4  fa39a240  vextracti.s r19, 10(vr4)
0037c8  1bc19000  srli r2, r1, 9
0037cc  1b011100  andi r2, r2, 1
0037d0  3b300100  bneq r2, zero, 12
0037d4  7abb9040  vextracti.s r22, 9(vr1)
0037d8  5b010000  j 8
0037dc  7a3b9240  vextracti.s r22, 9(vr4)
0037e0  1bc18000  srli r2, r1, 8
0037e4  1b011100  andi r2, r2, 1
0037e8  3b300100  bneq r2, zero, 12
0037ec  fabb8040  vextracti.s r23, 8(vr1)
0037f0  5b010000  j 8
0037f4  fa3b8240  vextracti.s r23, 8(vr4)
0037f8  1bc17000  srli r2, r1, 7
0037fc  1b011100  andi r2, r2, 1
003800  3b300100  bneq r2, zero, 12
003804  7ab57040  vextracti.s r10, 7(vr1)
003808  5b010000  j 8
00380c  7a357240  vextracti.s r10, 7(vr4)
003810  1bc16000  srli r2, r1, 6
003814  1b011100  andi r2, r2, 1
003818  3b300100  bneq r2, zero, 12
00381c  fab56040  vextracti.s r11, 6(vr1)
003820  5b010000  j 8
003824  fa356240  vextracti.s r11, 6(vr4)
003828  1bc15000  srli r2, r1, 5
00382c  1b011100  andi r2, r2, 1
003830  3b300100  bneq r2, zero, 12
003834  faba5040  vextracti.s r21, 5(vr1)
003838  5b010000  j 8
00383c  fa3a5240  vextracti.s r21, 5(vr4)
003840  1bc14000  srli r2, r1, 4
003844  1b011100  andi r2, r2, 1
003848  3b300100  bneq r2, zero, 12
00384c  7ab34040  vextracti.s r6, 4(vr1)
003850  5b010000  j 8
003854  7a334240  vextracti.s r6, 4(vr4)
003858  1bc13000  srli r2, r1, 3
00385c  1b011100  andi r2, r2, 1
003860  3b300100  bneq r2, zero, 12
003864  7ab13040  vextracti.s r2, 3(vr1)
003868  5b010000  j 8
00386c  7a313240  vextracti.s r2, 3(vr4)
003870  1bcc2000  srli r24, r1, 2
003874  1b0c1c00  andi r24, r24, 1
003878  3b300c00  bneq r24, zero, 12
00387c  7abc2040  vextracti.s r24, 2(vr1)
003880  5b010000  j 8
003884  7a3c2240  vextracti.s r24, 2(vr4)
003888  9bcc1000  srli r25, r1, 1
00388c  9b8c1c00  andi r25, r25, 1
003890  3be00c00  bneq r25, zero, 24
003894  fabc1040  vextracti.s r25, 1(vr1)
003898  9b801000  andi r1, r1, 1
00389c  37e00000  beq r1, zero, 24
0038a0  fa300240  vextracti.s r1, 0(vr4)
0038a4  db020000  j 20
0038a8  fa3c1240  vextracti.s r25, 1(vr4)
0038ac  9b801000  andi r1, r1, 1
0038b0  bbcf00fe  bneq r1, zero, -16
0038b4  fab00040  vextracti.s r1, 0(vr1)
0038b8  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0038bc  1f100000  addli zero, zero, 1
0038c0  fe0100e0  vmmov mr3, zero
0038c4  17200000  xor zero, zero, zero
0038c8  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
0038cc  9f200000  addli r1, zero, 2
0038d0  fe8100e0  vmmov mr3, r1
0038d4  9f400000  addli r1, zero, 4
0038d8  6aa24c36  vor.u.mh vr4{mr3}, r25, vr4
0038dc  fe8100e0  vmmov mr3, r1
0038e0  9f001000  addli r1, zero, 8
0038e4  6a224c36  vor.u.mh vr4{mr3}, r24, vr4
0038e8  fe8100e0  vmmov mr3, r1
0038ec  9f002000  addli r1, zero, 16
0038f0  6a224136  vor.u.mh vr4{mr3}, r2, vr4
0038f4  fe8100e0  vmmov mr3, r1
0038f8  9f004000  addli r1, zero, 32
0038fc  6a224336  vor.u.mh vr4{mr3}, r6, vr4
003900  fe8100e0  vmmov mr3, r1
003904  9f008000  addli r1, zero, 64
003908  6aa24a36  vor.u.mh vr4{mr3}, r21, vr4
00390c  fe8100e0  vmmov mr3, r1
003910  9f000001  addli r1, zero, 128
003914  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
003918  fe8100e0  vmmov mr3, r1
00391c  9f000002  addli r1, zero, 256
003920  6a224536  vor.u.mh vr4{mr3}, r10, vr4
003924  fe8100e0  vmmov mr3, r1
003928  9f000004  addli r1, zero, 512
00392c  6aa24b36  vor.u.mh vr4{mr3}, r23, vr4
003930  fe8100e0  vmmov mr3, r1
003934  9f000008  addli r1, zero, 1024
003938  6a224b36  vor.u.mh vr4{mr3}, r22, vr4
00393c  fe8100e0  vmmov mr3, r1
003940  9f000010  addli r1, zero, 2048
003944  6aa24936  vor.u.mh vr4{mr3}, r19, vr4
003948  fe8100e0  vmmov mr3, r1
00394c  9f000020  addli r1, zero, 4096
003950  6aa24836  vor.u.mh vr4{mr3}, r17, vr4
003954  fe8100e0  vmmov mr3, r1
003958  9f000fe1  addli r1, r30, -3968
00395c  6a224236  vor.u.mh vr4{mr3}, r4, vr4
003960  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
003964  9f000040  addli r1, zero, 8192
003968  8a121a02  vmul.f.mz.rn vr5{mr1}, r20, vr1
00396c  669302c0  vabs.f vr6, vr5
003970  eeb051c2  vsrl.s.mz vr1{mr1}, vr3, vr5
003974  fe8100e0  vmmov mr3, r1
003978  ab400000  lui r1, 4
00397c  6a224836  vor.u.mh vr4{mr3}, r16, vr4
003980  fe8100e0  vmmov mr3, r1
003984  ab800000  lui r1, 8
003988  ea301702  vand.s.mz vr1{mr1}, r14, vr1
00398c  6aa24736  vor.u.mh vr4{mr3}, r15, vr4
003990  fe8100e0  vmmov mr3, r1
003994  96b01202  vadd.s.mz vr1{mr1}, vr5, vr1
003998  6aa24636  vor.u.mh vr4{mr3}, r13, vr4
00399c  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
0039a0  7e8201a0  vmmov r4, mr3
0039a4  92301402  vadd.s.mz vr1{mr1}, r8, vr1
0039a8  9b40f200  srli r1, r4, 15
0039ac  6af344c0  vsrl.p vr6, r9, vr4
0039b0  6ab25d22  vor.s.mz vr4{mr1}, r27, vr5
0039b4  9b801000  andi r1, r1, 1
0039b8  46006614  vstore.mh vr6{mr2}, 0(r12)
0039bc  3bb00000  bneq r1, zero, 12
0039c0  7ab6f040  vextracti.s r12, 15(vr1)
0039c4  5b010000  j 8
0039c8  7a36f240  vextracti.s r12, 15(vr4)
0039cc  9b40e200  srli r1, r4, 14
0039d0  e34cbfe1  loadli.w r25,  -3876(r30)
0039d4  9b801000  andi r1, r1, 1
0039d8  3bb00000  bneq r1, zero, 12
0039dc  fab6e040  vextracti.s r13, 14(vr1)
0039e0  5b010000  j 8
0039e4  fa36e240  vextracti.s r13, 14(vr4)
0039e8  9b40d200  srli r1, r4, 13
0039ec  9b801000  andi r1, r1, 1
0039f0  3bb00000  bneq r1, zero, 12
0039f4  fab7d040  vextracti.s r15, 13(vr1)
0039f8  5b010000  j 8
0039fc  fa37d240  vextracti.s r15, 13(vr4)
003a00  9b40c200  srli r1, r4, 12
003a04  9b801000  andi r1, r1, 1
003a08  3bb00000  bneq r1, zero, 12
003a0c  fab0c040  vextracti.s r1, 12(vr1)
003a10  5b010000  j 8
003a14  fa30c240  vextracti.s r1, 12(vr4)
003a18  1b41b200  srli r2, r4, 11
003a1c  1b011100  andi r2, r2, 1
003a20  3b300100  bneq r2, zero, 12
003a24  7ab8b040  vextracti.s r16, 11(vr1)
003a28  5b010000  j 8
003a2c  7a38b240  vextracti.s r16, 11(vr4)
003a30  1b41a200  srli r2, r4, 10
003a34  1b011100  andi r2, r2, 1
003a38  3b300100  bneq r2, zero, 12
003a3c  fab8a040  vextracti.s r17, 10(vr1)
003a40  5b010000  j 8
003a44  fa38a240  vextracti.s r17, 10(vr4)
003a48  1b419200  srli r2, r4, 9
003a4c  1b011100  andi r2, r2, 1
003a50  3b300100  bneq r2, zero, 12
003a54  fab99040  vextracti.s r19, 9(vr1)
003a58  5b010000  j 8
003a5c  fa399240  vextracti.s r19, 9(vr4)
003a60  1b418200  srli r2, r4, 8
003a64  1b011100  andi r2, r2, 1
003a68  3b300100  bneq r2, zero, 12
003a6c  7abb8040  vextracti.s r22, 8(vr1)
003a70  5b010000  j 8
003a74  7a3b8240  vextracti.s r22, 8(vr4)
003a78  1b417200  srli r2, r4, 7
003a7c  1b011100  andi r2, r2, 1
003a80  3b300100  bneq r2, zero, 12
003a84  7ab57040  vextracti.s r10, 7(vr1)
003a88  5b010000  j 8
003a8c  7a357240  vextracti.s r10, 7(vr4)
003a90  1b416200  srli r2, r4, 6
003a94  1b011100  andi r2, r2, 1
003a98  3b300100  bneq r2, zero, 12
003a9c  fab56040  vextracti.s r11, 6(vr1)
003aa0  5b010000  j 8
003aa4  fa356240  vextracti.s r11, 6(vr4)
003aa8  1b415200  srli r2, r4, 5
003aac  1b011100  andi r2, r2, 1
003ab0  3b300100  bneq r2, zero, 12
003ab4  faba5040  vextracti.s r21, 5(vr1)
003ab8  5b010000  j 8
003abc  fa3a5240  vextracti.s r21, 5(vr4)
003ac0  1b414200  srli r2, r4, 4
003ac4  1b011100  andi r2, r2, 1
003ac8  3b300100  bneq r2, zero, 12
003acc  7ab34040  vextracti.s r6, 4(vr1)
003ad0  5b010000  j 8
003ad4  7a334240  vextracti.s r6, 4(vr4)
003ad8  1b413200  srli r2, r4, 3
003adc  1b011100  andi r2, r2, 1
003ae0  3b300100  bneq r2, zero, 12
003ae4  7ab13040  vextracti.s r2, 3(vr1)
003ae8  5b010000  j 8
003aec  7a313240  vextracti.s r2, 3(vr4)
003af0  9b4b2200  srli r23, r4, 2
003af4  9b8b1b00  andi r23, r23, 1
003af8  3bb00b00  bneq r23, zero, 12
003afc  fabb2040  vextracti.s r23, 2(vr1)
003b00  5b010000  j 8
003b04  fa3b2240  vextracti.s r23, 2(vr4)
003b08  1b4c1200  srli r24, r4, 1
003b0c  1b0c1c00  andi r24, r24, 1
003b10  3b600c00  bneq r24, zero, 24
003b14  7abc1040  vextracti.s r24, 1(vr1)
003b18  1b021200  andi r4, r4, 1
003b1c  37600200  beq r4, zero, 24
003b20  7a320240  vextracti.s r4, 0(vr4)
003b24  db020000  j 20
003b28  7a3c1240  vextracti.s r24, 1(vr4)
003b2c  1b021200  andi r4, r4, 1
003b30  bb4f02fe  bneq r4, zero, -16
003b34  7ab20040  vextracti.s r4, 0(vr1)
003b38  92320002  vadd.s.mz vr5{mr1}, zero, vr0
003b3c  1f100000  addli zero, zero, 1
003b40  fe0100e0  vmmov mr3, zero
003b44  17200000  xor zero, zero, zero
003b48  ea225236  vor.u.mh vr5{mr3}, r4, vr5
003b4c  1f220000  addli r4, zero, 2
003b50  fe0102e0  vmmov mr3, r4
003b54  1f420000  addli r4, zero, 4
003b58  ea225c36  vor.u.mh vr5{mr3}, r24, vr5
003b5c  fe0102e0  vmmov mr3, r4
003b60  1f021000  addli r4, zero, 8
003b64  eaa25b36  vor.u.mh vr5{mr3}, r23, vr5
003b68  fe0102e0  vmmov mr3, r4
003b6c  ea225136  vor.u.mh vr5{mr3}, r2, vr5
003b70  1f012000  addli r2, zero, 16
003b74  fe0101e0  vmmov mr3, r2
003b78  1f014000  addli r2, zero, 32
003b7c  ea225336  vor.u.mh vr5{mr3}, r6, vr5
003b80  fe0101e0  vmmov mr3, r2
003b84  1f018000  addli r2, zero, 64
003b88  eaa25a36  vor.u.mh vr5{mr3}, r21, vr5
003b8c  fe0101e0  vmmov mr3, r2
003b90  1f010001  addli r2, zero, 128
003b94  eaa25536  vor.u.mh vr5{mr3}, r11, vr5
003b98  fe0101e0  vmmov mr3, r2
003b9c  1f010002  addli r2, zero, 256
003ba0  ea225536  vor.u.mh vr5{mr3}, r10, vr5
003ba4  fe0101e0  vmmov mr3, r2
003ba8  1f010004  addli r2, zero, 512
003bac  ea225b36  vor.u.mh vr5{mr3}, r22, vr5
003bb0  fe0101e0  vmmov mr3, r2
003bb4  1f010008  addli r2, zero, 1024
003bb8  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
003bbc  fe0101e0  vmmov mr3, r2
003bc0  1f010010  addli r2, zero, 2048
003bc4  eaa25836  vor.u.mh vr5{mr3}, r17, vr5
003bc8  fe0101e0  vmmov mr3, r2
003bcc  1f010fe2  addli r2, r30, -3840
003bd0  ea225836  vor.u.mh vr5{mr3}, r16, vr5
003bd4  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
003bd8  1f010020  addli r2, zero, 4096
003bdc  0a121a02  vmul.f.mz.rn vr4{mr1}, r20, vr1
003be0  661302c0  vabs.f vr6, vr4
003be4  eeb041c2  vsrl.s.mz vr1{mr1}, vr3, vr4
003be8  fe0101e0  vmmov mr3, r2
003bec  2b810000  lui r2, 8
003bf0  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
003bf4  9f000040  addli r1, zero, 8192
003bf8  ea301702  vand.s.mz vr1{mr1}, r14, vr1
003bfc  fe8100e0  vmmov mr3, r1
003c00  ab400000  lui r1, 4
003c04  eaa25736  vor.u.mh vr5{mr3}, r15, vr5
003c08  fe8100e0  vmmov mr3, r1
003c0c  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
003c10  6ab24d22  vor.s.mz vr4{mr1}, r27, vr4
003c14  eaa25636  vor.u.mh vr5{mr3}, r13, vr5
003c18  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
003c1c  fe8001a0  vmmov r1, mr3
003c20  fe0101e0  vmmov mr3, r2
003c24  92301402  vadd.s.mz vr1{mr1}, r8, vr1
003c28  1bc1f000  srli r2, r1, 15
003c2c  ea225636  vor.u.mh vr5{mr3}, r12, vr5
003c30  1b011100  andi r2, r2, 1
003c34  46805310  vstore.mh vr5{mr0}, 0(r7)
003c38  3b300100  bneq r2, zero, 12
003c3c  7ab6f040  vextracti.s r12, 15(vr1)
003c40  5b010000  j 8
003c44  7a36f240  vextracti.s r12, 15(vr4)
003c48  1bc1e000  srli r2, r1, 14
003c4c  1b011100  andi r2, r2, 1
003c50  3b300100  bneq r2, zero, 12
003c54  fab6e040  vextracti.s r13, 14(vr1)
003c58  5b010000  j 8
003c5c  fa36e240  vextracti.s r13, 14(vr4)
003c60  1bc1d000  srli r2, r1, 13
003c64  1b011100  andi r2, r2, 1
003c68  3b300100  bneq r2, zero, 12
003c6c  fab7d040  vextracti.s r15, 13(vr1)
003c70  5b010000  j 8
003c74  fa37d240  vextracti.s r15, 13(vr4)
003c78  1bc1c000  srli r2, r1, 12
003c7c  1b011100  andi r2, r2, 1
003c80  3b300100  bneq r2, zero, 12
003c84  7ab2c040  vextracti.s r4, 12(vr1)
003c88  5b010000  j 8
003c8c  7a32c240  vextracti.s r4, 12(vr4)
003c90  1bc1b000  srli r2, r1, 11
003c94  1b011100  andi r2, r2, 1
003c98  3b300100  bneq r2, zero, 12
003c9c  7ab8b040  vextracti.s r16, 11(vr1)
003ca0  5b010000  j 8
003ca4  7a38b240  vextracti.s r16, 11(vr4)
003ca8  1bc1a000  srli r2, r1, 10
003cac  1b011100  andi r2, r2, 1
003cb0  3b300100  bneq r2, zero, 12
003cb4  fab8a040  vextracti.s r17, 10(vr1)
003cb8  5b010000  j 8
003cbc  fa38a240  vextracti.s r17, 10(vr4)
003cc0  1bc19000  srli r2, r1, 9
003cc4  1b011100  andi r2, r2, 1
003cc8  3b300100  bneq r2, zero, 12
003ccc  fab99040  vextracti.s r19, 9(vr1)
003cd0  5b010000  j 8
003cd4  fa399240  vextracti.s r19, 9(vr4)
003cd8  1bc18000  srli r2, r1, 8
003cdc  1b011100  andi r2, r2, 1
003ce0  3b300100  bneq r2, zero, 12
003ce4  7abb8040  vextracti.s r22, 8(vr1)
003ce8  5b010000  j 8
003cec  7a3b8240  vextracti.s r22, 8(vr4)
003cf0  1bc17000  srli r2, r1, 7
003cf4  1b011100  andi r2, r2, 1
003cf8  3b300100  bneq r2, zero, 12
003cfc  7ab57040  vextracti.s r10, 7(vr1)
003d00  5b010000  j 8
003d04  7a357240  vextracti.s r10, 7(vr4)
003d08  1bc16000  srli r2, r1, 6
003d0c  1b011100  andi r2, r2, 1
003d10  3b300100  bneq r2, zero, 12
003d14  fab56040  vextracti.s r11, 6(vr1)
003d18  5b010000  j 8
003d1c  fa356240  vextracti.s r11, 6(vr4)
003d20  1bc15000  srli r2, r1, 5
003d24  1b011100  andi r2, r2, 1
003d28  3b300100  bneq r2, zero, 12
003d2c  faba5040  vextracti.s r21, 5(vr1)
003d30  5b010000  j 8
003d34  fa3a5240  vextracti.s r21, 5(vr4)
003d38  1bc14000  srli r2, r1, 4
003d3c  1b011100  andi r2, r2, 1
003d40  3b300100  bneq r2, zero, 12
003d44  7ab34040  vextracti.s r6, 4(vr1)
003d48  5b010000  j 8
003d4c  7a334240  vextracti.s r6, 4(vr4)
003d50  1bc13000  srli r2, r1, 3
003d54  1b011100  andi r2, r2, 1
003d58  3b300100  bneq r2, zero, 12
003d5c  7ab13040  vextracti.s r2, 3(vr1)
003d60  5b010000  j 8
003d64  7a313240  vextracti.s r2, 3(vr4)
003d68  9bcb2000  srli r23, r1, 2
003d6c  9b8b1b00  andi r23, r23, 1
003d70  3bb00b00  bneq r23, zero, 12
003d74  fabb2040  vextracti.s r23, 2(vr1)
003d78  5b010000  j 8
003d7c  fa3b2240  vextracti.s r23, 2(vr4)
003d80  1bcc1000  srli r24, r1, 1
003d84  1b0c1c00  andi r24, r24, 1
003d88  3b600c00  bneq r24, zero, 24
003d8c  7abc1040  vextracti.s r24, 1(vr1)
003d90  9b801000  andi r1, r1, 1
003d94  37e00000  beq r1, zero, 24
003d98  fa300240  vextracti.s r1, 0(vr4)
003d9c  db020000  j 20
003da0  7a3c1240  vextracti.s r24, 1(vr4)
003da4  9b801000  andi r1, r1, 1
003da8  bbcf00fe  bneq r1, zero, -16
003dac  fab00040  vextracti.s r1, 0(vr1)
003db0  12320002  vadd.s.mz vr4{mr1}, zero, vr0
003db4  1f100000  addli zero, zero, 1
003db8  fe0100e0  vmmov mr3, zero
003dbc  17200000  xor zero, zero, zero
003dc0  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
003dc4  9f200000  addli r1, zero, 2
003dc8  fe8100e0  vmmov mr3, r1
003dcc  9f400000  addli r1, zero, 4
003dd0  6a224c36  vor.u.mh vr4{mr3}, r24, vr4
003dd4  fe8100e0  vmmov mr3, r1
003dd8  9f001000  addli r1, zero, 8
003ddc  6aa24b36  vor.u.mh vr4{mr3}, r23, vr4
003de0  fe8100e0  vmmov mr3, r1
003de4  9f002000  addli r1, zero, 16
003de8  6a224136  vor.u.mh vr4{mr3}, r2, vr4
003dec  fe8100e0  vmmov mr3, r1
003df0  9f004000  addli r1, zero, 32
003df4  6a224336  vor.u.mh vr4{mr3}, r6, vr4
003df8  fe8100e0  vmmov mr3, r1
003dfc  9f008000  addli r1, zero, 64
003e00  6aa24a36  vor.u.mh vr4{mr3}, r21, vr4
003e04  fe8100e0  vmmov mr3, r1
003e08  9f000001  addli r1, zero, 128
003e0c  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
003e10  fe8100e0  vmmov mr3, r1
003e14  9f000002  addli r1, zero, 256
003e18  6a224536  vor.u.mh vr4{mr3}, r10, vr4
003e1c  fe8100e0  vmmov mr3, r1
003e20  9f000004  addli r1, zero, 512
003e24  6a224b36  vor.u.mh vr4{mr3}, r22, vr4
003e28  fe8100e0  vmmov mr3, r1
003e2c  9f000008  addli r1, zero, 1024
003e30  6aa24936  vor.u.mh vr4{mr3}, r19, vr4
003e34  fe8100e0  vmmov mr3, r1
003e38  9f000010  addli r1, zero, 2048
003e3c  6aa24836  vor.u.mh vr4{mr3}, r17, vr4
003e40  fe8100e0  vmmov mr3, r1
003e44  9f000020  addli r1, zero, 4096
003e48  6a224836  vor.u.mh vr4{mr3}, r16, vr4
003e4c  fe8100e0  vmmov mr3, r1
003e50  9f008fe2  addli r1, r30, -3776
003e54  6a224236  vor.u.mh vr4{mr3}, r4, vr4
003e58  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
003e5c  9f000040  addli r1, zero, 8192
003e60  8a121a02  vmul.f.mz.rn vr5{mr1}, r20, vr1
003e64  669302c0  vabs.f vr6, vr5
003e68  eeb051c2  vsrl.s.mz vr1{mr1}, vr3, vr5
003e6c  fe8100e0  vmmov mr3, r1
003e70  ab400000  lui r1, 4
003e74  6aa24736  vor.u.mh vr4{mr3}, r15, vr4
003e78  fe8100e0  vmmov mr3, r1
003e7c  ab800000  lui r1, 8
003e80  ea301702  vand.s.mz vr1{mr1}, r14, vr1
003e84  6aa24636  vor.u.mh vr4{mr3}, r13, vr4
003e88  fe8100e0  vmmov mr3, r1
003e8c  96b01202  vadd.s.mz vr1{mr1}, vr5, vr1
003e90  6a224636  vor.u.mh vr4{mr3}, r12, vr4
003e94  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
003e98  7e8201a0  vmmov r4, mr3
003e9c  92301402  vadd.s.mz vr1{mr1}, r8, vr1
003ea0  9b40f200  srli r1, r4, 15
003ea4  6af344c0  vsrl.p vr6, r9, vr4
003ea8  6ab25d22  vor.s.mz vr4{mr1}, r27, vr5
003eac  9b801000  andi r1, r1, 1
003eb0  46806314  vstore.mh vr6{mr2}, 0(r7)
003eb4  3bb00000  bneq r1, zero, 12
003eb8  fab3f040  vextracti.s r7, 15(vr1)
003ebc  5b010000  j 8
003ec0  fa33f240  vextracti.s r7, 15(vr4)
003ec4  9b40e200  srli r1, r4, 14
003ec8  630c5fda  loadli.w r24,  -4824(r30)
003ecc  9b801000  andi r1, r1, 1
003ed0  3bb00000  bneq r1, zero, 12
003ed4  7ab6e040  vextracti.s r12, 14(vr1)
003ed8  5b010000  j 8
003edc  7a36e240  vextracti.s r12, 14(vr4)
003ee0  9b40d200  srli r1, r4, 13
003ee4  9b801000  andi r1, r1, 1
003ee8  3bb00000  bneq r1, zero, 12
003eec  fab6d040  vextracti.s r13, 13(vr1)
003ef0  5b010000  j 8
003ef4  fa36d240  vextracti.s r13, 13(vr4)
003ef8  9b40c200  srli r1, r4, 12
003efc  9b801000  andi r1, r1, 1
003f00  3bb00000  bneq r1, zero, 12
003f04  fab0c040  vextracti.s r1, 12(vr1)
003f08  5b010000  j 8
003f0c  fa30c240  vextracti.s r1, 12(vr4)
003f10  1b41b200  srli r2, r4, 11
003f14  1b011100  andi r2, r2, 1
003f18  3b300100  bneq r2, zero, 12
003f1c  fab7b040  vextracti.s r15, 11(vr1)
003f20  5b010000  j 8
003f24  fa37b240  vextracti.s r15, 11(vr4)
003f28  1b41a200  srli r2, r4, 10
003f2c  1b011100  andi r2, r2, 1
003f30  3b300100  bneq r2, zero, 12
003f34  7ab8a040  vextracti.s r16, 10(vr1)
003f38  5b010000  j 8
003f3c  7a38a240  vextracti.s r16, 10(vr4)
003f40  1b419200  srli r2, r4, 9
003f44  1b011100  andi r2, r2, 1
003f48  3b300100  bneq r2, zero, 12
003f4c  fab89040  vextracti.s r17, 9(vr1)
003f50  5b010000  j 8
003f54  fa389240  vextracti.s r17, 9(vr4)
003f58  1b418200  srli r2, r4, 8
003f5c  1b011100  andi r2, r2, 1
003f60  3b300100  bneq r2, zero, 12
003f64  fab98040  vextracti.s r19, 8(vr1)
003f68  5b010000  j 8
003f6c  fa398240  vextracti.s r19, 8(vr4)
003f70  1b417200  srli r2, r4, 7
003f74  1b011100  andi r2, r2, 1
003f78  3b300100  bneq r2, zero, 12
003f7c  7ab57040  vextracti.s r10, 7(vr1)
003f80  5b010000  j 8
003f84  7a357240  vextracti.s r10, 7(vr4)
003f88  1b416200  srli r2, r4, 6
003f8c  1b011100  andi r2, r2, 1
003f90  3b300100  bneq r2, zero, 12
003f94  fab56040  vextracti.s r11, 6(vr1)
003f98  5b010000  j 8
003f9c  fa356240  vextracti.s r11, 6(vr4)
003fa0  1b415200  srli r2, r4, 5
003fa4  1b011100  andi r2, r2, 1
003fa8  3b300100  bneq r2, zero, 12
003fac  faba5040  vextracti.s r21, 5(vr1)
003fb0  5b010000  j 8
003fb4  fa3a5240  vextracti.s r21, 5(vr4)
003fb8  1b414200  srli r2, r4, 4
003fbc  1b011100  andi r2, r2, 1
003fc0  3b300100  bneq r2, zero, 12
003fc4  7ab34040  vextracti.s r6, 4(vr1)
003fc8  5b010000  j 8
003fcc  7a334240  vextracti.s r6, 4(vr4)
003fd0  1b413200  srli r2, r4, 3
003fd4  1b011100  andi r2, r2, 1
003fd8  3b300100  bneq r2, zero, 12
003fdc  7ab13040  vextracti.s r2, 3(vr1)
003fe0  5b010000  j 8
003fe4  7a313240  vextracti.s r2, 3(vr4)
003fe8  1b4b2200  srli r22, r4, 2
003fec  1b0b1b00  andi r22, r22, 1
003ff0  3b300b00  bneq r22, zero, 12
003ff4  7abb2040  vextracti.s r22, 2(vr1)
003ff8  5b010000  j 8
003ffc  7a3b2240  vextracti.s r22, 2(vr4)
004000  9b4b1200  srli r23, r4, 1
004004  9b8b1b00  andi r23, r23, 1
004008  3be00b00  bneq r23, zero, 24
00400c  fabb1040  vextracti.s r23, 1(vr1)
004010  1b021200  andi r4, r4, 1
004014  37600200  beq r4, zero, 24
004018  7a320240  vextracti.s r4, 0(vr4)
00401c  db020000  j 20
004020  fa3b1240  vextracti.s r23, 1(vr4)
004024  1b021200  andi r4, r4, 1
004028  bb4f02fe  bneq r4, zero, -16
00402c  7ab20040  vextracti.s r4, 0(vr1)
004030  92320002  vadd.s.mz vr5{mr1}, zero, vr0
004034  1f100000  addli zero, zero, 1
004038  fe0100e0  vmmov mr3, zero
00403c  17200000  xor zero, zero, zero
004040  ea225236  vor.u.mh vr5{mr3}, r4, vr5
004044  1f220000  addli r4, zero, 2
004048  fe0102e0  vmmov mr3, r4
00404c  1f420000  addli r4, zero, 4
004050  eaa25b36  vor.u.mh vr5{mr3}, r23, vr5
004054  fe0102e0  vmmov mr3, r4
004058  1f021000  addli r4, zero, 8
00405c  ea225b36  vor.u.mh vr5{mr3}, r22, vr5
004060  fe0102e0  vmmov mr3, r4
004064  ea225136  vor.u.mh vr5{mr3}, r2, vr5
004068  1f012000  addli r2, zero, 16
00406c  fe0101e0  vmmov mr3, r2
004070  1f014000  addli r2, zero, 32
004074  ea225336  vor.u.mh vr5{mr3}, r6, vr5
004078  fe0101e0  vmmov mr3, r2
00407c  1f018000  addli r2, zero, 64
004080  eaa25a36  vor.u.mh vr5{mr3}, r21, vr5
004084  fe0101e0  vmmov mr3, r2
004088  1f010001  addli r2, zero, 128
00408c  eaa25536  vor.u.mh vr5{mr3}, r11, vr5
004090  fe0101e0  vmmov mr3, r2
004094  1f010002  addli r2, zero, 256
004098  ea225536  vor.u.mh vr5{mr3}, r10, vr5
00409c  fe0101e0  vmmov mr3, r2
0040a0  1f010004  addli r2, zero, 512
0040a4  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
0040a8  fe0101e0  vmmov mr3, r2
0040ac  1f010008  addli r2, zero, 1024
0040b0  eaa25836  vor.u.mh vr5{mr3}, r17, vr5
0040b4  fe0101e0  vmmov mr3, r2
0040b8  1f010010  addli r2, zero, 2048
0040bc  ea225836  vor.u.mh vr5{mr3}, r16, vr5
0040c0  fe0101e0  vmmov mr3, r2
0040c4  1f010fe3  addli r2, r30, -3712
0040c8  eaa25736  vor.u.mh vr5{mr3}, r15, vr5
0040cc  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0040d0  1f010020  addli r2, zero, 4096
0040d4  0a121a02  vmul.f.mz.rn vr4{mr1}, r20, vr1
0040d8  661302c0  vabs.f vr6, vr4
0040dc  eeb041c2  vsrl.s.mz vr1{mr1}, vr3, vr4
0040e0  fe0101e0  vmmov mr3, r2
0040e4  2b810000  lui r2, 8
0040e8  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
0040ec  9f000040  addli r1, zero, 8192
0040f0  ea301702  vand.s.mz vr1{mr1}, r14, vr1
0040f4  fe8100e0  vmmov mr3, r1
0040f8  ab400000  lui r1, 4
0040fc  eaa25636  vor.u.mh vr5{mr3}, r13, vr5
004100  fe8100e0  vmmov mr3, r1
004104  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
004108  6ab24d22  vor.s.mz vr4{mr1}, r27, vr4
00410c  ea225636  vor.u.mh vr5{mr3}, r12, vr5
004110  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
004114  fe8001a0  vmmov r1, mr3
004118  fe0101e0  vmmov mr3, r2
00411c  92301402  vadd.s.mz vr1{mr1}, r8, vr1
004120  1bc1f000  srli r2, r1, 15
004124  eaa25336  vor.u.mh vr5{mr3}, r7, vr5
004128  1b011100  andi r2, r2, 1
00412c  46805210  vstore.mh vr5{mr0}, 0(r5)
004130  3b300100  bneq r2, zero, 12
004134  fab3f040  vextracti.s r7, 15(vr1)
004138  5b010000  j 8
00413c  fa33f240  vextracti.s r7, 15(vr4)
004140  1bc1e000  srli r2, r1, 14
004144  1b011100  andi r2, r2, 1
004148  3b300100  bneq r2, zero, 12
00414c  7ab6e040  vextracti.s r12, 14(vr1)
004150  5b010000  j 8
004154  7a36e240  vextracti.s r12, 14(vr4)
004158  1bc1d000  srli r2, r1, 13
00415c  1b011100  andi r2, r2, 1
004160  3b300100  bneq r2, zero, 12
004164  fab6d040  vextracti.s r13, 13(vr1)
004168  5b010000  j 8
00416c  fa36d240  vextracti.s r13, 13(vr4)
004170  1bc1c000  srli r2, r1, 12
004174  1b011100  andi r2, r2, 1
004178  3b300100  bneq r2, zero, 12
00417c  7ab2c040  vextracti.s r4, 12(vr1)
004180  5b010000  j 8
004184  7a32c240  vextracti.s r4, 12(vr4)
004188  1bc1b000  srli r2, r1, 11
00418c  1b011100  andi r2, r2, 1
004190  3b300100  bneq r2, zero, 12
004194  fab7b040  vextracti.s r15, 11(vr1)
004198  5b010000  j 8
00419c  fa37b240  vextracti.s r15, 11(vr4)
0041a0  1bc1a000  srli r2, r1, 10
0041a4  1b011100  andi r2, r2, 1
0041a8  3b300100  bneq r2, zero, 12
0041ac  7ab8a040  vextracti.s r16, 10(vr1)
0041b0  5b010000  j 8
0041b4  7a38a240  vextracti.s r16, 10(vr4)
0041b8  1bc19000  srli r2, r1, 9
0041bc  1b011100  andi r2, r2, 1
0041c0  3b300100  bneq r2, zero, 12
0041c4  fab89040  vextracti.s r17, 9(vr1)
0041c8  5b010000  j 8
0041cc  fa389240  vextracti.s r17, 9(vr4)
0041d0  1bc18000  srli r2, r1, 8
0041d4  1b011100  andi r2, r2, 1
0041d8  3b300100  bneq r2, zero, 12
0041dc  fab98040  vextracti.s r19, 8(vr1)
0041e0  5b010000  j 8
0041e4  fa398240  vextracti.s r19, 8(vr4)
0041e8  1bc17000  srli r2, r1, 7
0041ec  1b011100  andi r2, r2, 1
0041f0  3b300100  bneq r2, zero, 12
0041f4  7ab57040  vextracti.s r10, 7(vr1)
0041f8  5b010000  j 8
0041fc  7a357240  vextracti.s r10, 7(vr4)
004200  1bc16000  srli r2, r1, 6
004204  1b011100  andi r2, r2, 1
004208  3b300100  bneq r2, zero, 12
00420c  fab56040  vextracti.s r11, 6(vr1)
004210  5b010000  j 8
004214  fa356240  vextracti.s r11, 6(vr4)
004218  1bc15000  srli r2, r1, 5
00421c  1b011100  andi r2, r2, 1
004220  3b300100  bneq r2, zero, 12
004224  faba5040  vextracti.s r21, 5(vr1)
004228  5b010000  j 8
00422c  fa3a5240  vextracti.s r21, 5(vr4)
004230  1bc14000  srli r2, r1, 4
004234  1b011100  andi r2, r2, 1
004238  3b300100  bneq r2, zero, 12
00423c  7ab34040  vextracti.s r6, 4(vr1)
004240  5b010000  j 8
004244  7a334240  vextracti.s r6, 4(vr4)
004248  1bc13000  srli r2, r1, 3
00424c  1b011100  andi r2, r2, 1
004250  3b300100  bneq r2, zero, 12
004254  7ab13040  vextracti.s r2, 3(vr1)
004258  5b010000  j 8
00425c  7a313240  vextracti.s r2, 3(vr4)
004260  1bcb2000  srli r22, r1, 2
004264  1b0b1b00  andi r22, r22, 1
004268  3b300b00  bneq r22, zero, 12
00426c  7abb2040  vextracti.s r22, 2(vr1)
004270  5b010000  j 8
004274  7a3b2240  vextracti.s r22, 2(vr4)
004278  9bcb1000  srli r23, r1, 1
00427c  9b8b1b00  andi r23, r23, 1
004280  3be00b00  bneq r23, zero, 24
004284  fabb1040  vextracti.s r23, 1(vr1)
004288  9b801000  andi r1, r1, 1
00428c  37e00000  beq r1, zero, 24
004290  fa300240  vextracti.s r1, 0(vr4)
004294  db020000  j 20
004298  fa3b1240  vextracti.s r23, 1(vr4)
00429c  9b801000  andi r1, r1, 1
0042a0  bbcf00fe  bneq r1, zero, -16
0042a4  fab00040  vextracti.s r1, 0(vr1)
0042a8  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0042ac  1f100000  addli zero, zero, 1
0042b0  fe0100e0  vmmov mr3, zero
0042b4  17200000  xor zero, zero, zero
0042b8  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
0042bc  9f200000  addli r1, zero, 2
0042c0  fe8100e0  vmmov mr3, r1
0042c4  9f400000  addli r1, zero, 4
0042c8  6aa24b36  vor.u.mh vr4{mr3}, r23, vr4
0042cc  fe8100e0  vmmov mr3, r1
0042d0  9f001000  addli r1, zero, 8
0042d4  6a224b36  vor.u.mh vr4{mr3}, r22, vr4
0042d8  fe8100e0  vmmov mr3, r1
0042dc  9f002000  addli r1, zero, 16
0042e0  6a224136  vor.u.mh vr4{mr3}, r2, vr4
0042e4  fe8100e0  vmmov mr3, r1
0042e8  9f004000  addli r1, zero, 32
0042ec  6a224336  vor.u.mh vr4{mr3}, r6, vr4
0042f0  fe8100e0  vmmov mr3, r1
0042f4  9f008000  addli r1, zero, 64
0042f8  6aa24a36  vor.u.mh vr4{mr3}, r21, vr4
0042fc  fe8100e0  vmmov mr3, r1
004300  9f000001  addli r1, zero, 128
004304  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
004308  fe8100e0  vmmov mr3, r1
00430c  9f000002  addli r1, zero, 256
004310  6a224536  vor.u.mh vr4{mr3}, r10, vr4
004314  fe8100e0  vmmov mr3, r1
004318  9f000004  addli r1, zero, 512
00431c  6aa24936  vor.u.mh vr4{mr3}, r19, vr4
004320  fe8100e0  vmmov mr3, r1
004324  9f000008  addli r1, zero, 1024
004328  6aa24836  vor.u.mh vr4{mr3}, r17, vr4
00432c  fe8100e0  vmmov mr3, r1
004330  9f000010  addli r1, zero, 2048
004334  6a224836  vor.u.mh vr4{mr3}, r16, vr4
004338  fe8100e0  vmmov mr3, r1
00433c  9f000020  addli r1, zero, 4096
004340  6aa24736  vor.u.mh vr4{mr3}, r15, vr4
004344  fe8100e0  vmmov mr3, r1
004348  9f008fe3  addli r1, r30, -3648
00434c  6a224236  vor.u.mh vr4{mr3}, r4, vr4
004350  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
004354  9f000040  addli r1, zero, 8192
004358  8a121a02  vmul.f.mz.rn vr5{mr1}, r20, vr1
00435c  669302c0  vabs.f vr6, vr5
004360  eeb051c2  vsrl.s.mz vr1{mr1}, vr3, vr5
004364  fe8100e0  vmmov mr3, r1
004368  ab400000  lui r1, 4
00436c  6aa24636  vor.u.mh vr4{mr3}, r13, vr4
004370  fe8100e0  vmmov mr3, r1
004374  ab800000  lui r1, 8
004378  ea301702  vand.s.mz vr1{mr1}, r14, vr1
00437c  6a224636  vor.u.mh vr4{mr3}, r12, vr4
004380  fe8100e0  vmmov mr3, r1
004384  96b01202  vadd.s.mz vr1{mr1}, vr5, vr1
004388  6aa24336  vor.u.mh vr4{mr3}, r7, vr4
00438c  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
004390  7e8201a0  vmmov r4, mr3
004394  92301402  vadd.s.mz vr1{mr1}, r8, vr1
004398  9b40f200  srli r1, r4, 15
00439c  6af344c0  vsrl.p vr6, r9, vr4
0043a0  6ab25d22  vor.s.mz vr4{mr1}, r27, vr5
0043a4  9b801000  andi r1, r1, 1
0043a8  46806214  vstore.mh vr6{mr2}, 0(r5)
0043ac  3bb00000  bneq r1, zero, 12
0043b0  fab2f040  vextracti.s r5, 15(vr1)
0043b4  5b010000  j 8
0043b8  fa32f240  vextracti.s r5, 15(vr4)
0043bc  9b40e200  srli r1, r4, 14
0043c0  e30bcfe1  loadli.w r23,  -3872(r30)
0043c4  9b801000  andi r1, r1, 1
0043c8  3bb00000  bneq r1, zero, 12
0043cc  fab3e040  vextracti.s r7, 14(vr1)
0043d0  5b010000  j 8
0043d4  fa33e240  vextracti.s r7, 14(vr4)
0043d8  9b40d200  srli r1, r4, 13
0043dc  9b801000  andi r1, r1, 1
0043e0  3bb00000  bneq r1, zero, 12
0043e4  7ab6d040  vextracti.s r12, 13(vr1)
0043e8  5b010000  j 8
0043ec  7a36d240  vextracti.s r12, 13(vr4)
0043f0  9b40c200  srli r1, r4, 12
0043f4  9b801000  andi r1, r1, 1
0043f8  3bb00000  bneq r1, zero, 12
0043fc  fab0c040  vextracti.s r1, 12(vr1)
004400  5b010000  j 8
004404  fa30c240  vextracti.s r1, 12(vr4)
004408  1b41b200  srli r2, r4, 11
00440c  1b011100  andi r2, r2, 1
004410  3b300100  bneq r2, zero, 12
004414  fab6b040  vextracti.s r13, 11(vr1)
004418  5b010000  j 8
00441c  fa36b240  vextracti.s r13, 11(vr4)
004420  1b41a200  srli r2, r4, 10
004424  1b011100  andi r2, r2, 1
004428  3b300100  bneq r2, zero, 12
00442c  fab7a040  vextracti.s r15, 10(vr1)
004430  5b010000  j 8
004434  fa37a240  vextracti.s r15, 10(vr4)
004438  1b419200  srli r2, r4, 9
00443c  1b011100  andi r2, r2, 1
004440  3b300100  bneq r2, zero, 12
004444  7ab89040  vextracti.s r16, 9(vr1)
004448  5b010000  j 8
00444c  7a389240  vextracti.s r16, 9(vr4)
004450  1b418200  srli r2, r4, 8
004454  1b011100  andi r2, r2, 1
004458  3b300100  bneq r2, zero, 12
00445c  fab88040  vextracti.s r17, 8(vr1)
004460  5b010000  j 8
004464  fa388240  vextracti.s r17, 8(vr4)
004468  1b417200  srli r2, r4, 7
00446c  1b011100  andi r2, r2, 1
004470  3b300100  bneq r2, zero, 12
004474  7ab57040  vextracti.s r10, 7(vr1)
004478  5b010000  j 8
00447c  7a357240  vextracti.s r10, 7(vr4)
004480  1b416200  srli r2, r4, 6
004484  1b011100  andi r2, r2, 1
004488  3b300100  bneq r2, zero, 12
00448c  fab56040  vextracti.s r11, 6(vr1)
004490  5b010000  j 8
004494  fa356240  vextracti.s r11, 6(vr4)
004498  1b415200  srli r2, r4, 5
00449c  1b011100  andi r2, r2, 1
0044a0  3b300100  bneq r2, zero, 12
0044a4  fab95040  vextracti.s r19, 5(vr1)
0044a8  5b010000  j 8
0044ac  fa395240  vextracti.s r19, 5(vr4)
0044b0  1b414200  srli r2, r4, 4
0044b4  1b011100  andi r2, r2, 1
0044b8  3b300100  bneq r2, zero, 12
0044bc  7ab34040  vextracti.s r6, 4(vr1)
0044c0  5b010000  j 8
0044c4  7a334240  vextracti.s r6, 4(vr4)
0044c8  1b413200  srli r2, r4, 3
0044cc  1b011100  andi r2, r2, 1
0044d0  3b300100  bneq r2, zero, 12
0044d4  7ab13040  vextracti.s r2, 3(vr1)
0044d8  5b010000  j 8
0044dc  7a313240  vextracti.s r2, 3(vr4)
0044e0  9b4a2200  srli r21, r4, 2
0044e4  9b8a1a00  andi r21, r21, 1
0044e8  3bb00a00  bneq r21, zero, 12
0044ec  faba2040  vextracti.s r21, 2(vr1)
0044f0  5b010000  j 8
0044f4  fa3a2240  vextracti.s r21, 2(vr4)
0044f8  1b4b1200  srli r22, r4, 1
0044fc  1b0b1b00  andi r22, r22, 1
004500  3b600b00  bneq r22, zero, 24
004504  7abb1040  vextracti.s r22, 1(vr1)
004508  1b021200  andi r4, r4, 1
00450c  37600200  beq r4, zero, 24
004510  7a320240  vextracti.s r4, 0(vr4)
004514  db020000  j 20
004518  7a3b1240  vextracti.s r22, 1(vr4)
00451c  1b021200  andi r4, r4, 1
004520  bb4f02fe  bneq r4, zero, -16
004524  7ab20040  vextracti.s r4, 0(vr1)
004528  92320002  vadd.s.mz vr5{mr1}, zero, vr0
00452c  1f100000  addli zero, zero, 1
004530  fe0100e0  vmmov mr3, zero
004534  17200000  xor zero, zero, zero
004538  ea225236  vor.u.mh vr5{mr3}, r4, vr5
00453c  1f220000  addli r4, zero, 2
004540  fe0102e0  vmmov mr3, r4
004544  1f420000  addli r4, zero, 4
004548  ea225b36  vor.u.mh vr5{mr3}, r22, vr5
00454c  fe0102e0  vmmov mr3, r4
004550  1f021000  addli r4, zero, 8
004554  eaa25a36  vor.u.mh vr5{mr3}, r21, vr5
004558  fe0102e0  vmmov mr3, r4
00455c  ea225136  vor.u.mh vr5{mr3}, r2, vr5
004560  1f012000  addli r2, zero, 16
004564  fe0101e0  vmmov mr3, r2
004568  1f014000  addli r2, zero, 32
00456c  ea225336  vor.u.mh vr5{mr3}, r6, vr5
004570  fe0101e0  vmmov mr3, r2
004574  1f018000  addli r2, zero, 64
004578  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
00457c  fe0101e0  vmmov mr3, r2
004580  1f010001  addli r2, zero, 128
004584  eaa25536  vor.u.mh vr5{mr3}, r11, vr5
004588  fe0101e0  vmmov mr3, r2
00458c  1f010002  addli r2, zero, 256
004590  ea225536  vor.u.mh vr5{mr3}, r10, vr5
004594  fe0101e0  vmmov mr3, r2
004598  1f010004  addli r2, zero, 512
00459c  eaa25836  vor.u.mh vr5{mr3}, r17, vr5
0045a0  fe0101e0  vmmov mr3, r2
0045a4  1f010008  addli r2, zero, 1024
0045a8  ea225836  vor.u.mh vr5{mr3}, r16, vr5
0045ac  fe0101e0  vmmov mr3, r2
0045b0  1f010010  addli r2, zero, 2048
0045b4  eaa25736  vor.u.mh vr5{mr3}, r15, vr5
0045b8  fe0101e0  vmmov mr3, r2
0045bc  1f010fe4  addli r2, r30, -3584
0045c0  eaa25636  vor.u.mh vr5{mr3}, r13, vr5
0045c4  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0045c8  1f010020  addli r2, zero, 4096
0045cc  0a121a02  vmul.f.mz.rn vr4{mr1}, r20, vr1
0045d0  661302c0  vabs.f vr6, vr4
0045d4  eeb041c2  vsrl.s.mz vr1{mr1}, vr3, vr4
0045d8  fe0101e0  vmmov mr3, r2
0045dc  2b810000  lui r2, 8
0045e0  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
0045e4  9f000040  addli r1, zero, 8192
0045e8  ea301702  vand.s.mz vr1{mr1}, r14, vr1
0045ec  fe8100e0  vmmov mr3, r1
0045f0  ab400000  lui r1, 4
0045f4  ea225636  vor.u.mh vr5{mr3}, r12, vr5
0045f8  fe8100e0  vmmov mr3, r1
0045fc  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
004600  6ab24d22  vor.s.mz vr4{mr1}, r27, vr4
004604  eaa25336  vor.u.mh vr5{mr3}, r7, vr5
004608  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
00460c  fe8001a0  vmmov r1, mr3
004610  fe0101e0  vmmov mr3, r2
004614  92301402  vadd.s.mz vr1{mr1}, r8, vr1
004618  1bc1f000  srli r2, r1, 15
00461c  eaa25236  vor.u.mh vr5{mr3}, r5, vr5
004620  1b011100  andi r2, r2, 1
004624  46805110  vstore.mh vr5{mr0}, 0(r3)
004628  3b300100  bneq r2, zero, 12
00462c  fab2f040  vextracti.s r5, 15(vr1)
004630  5b010000  j 8
004634  fa32f240  vextracti.s r5, 15(vr4)
004638  1bc1e000  srli r2, r1, 14
00463c  1b011100  andi r2, r2, 1
004640  3b300100  bneq r2, zero, 12
004644  fab3e040  vextracti.s r7, 14(vr1)
004648  5b010000  j 8
00464c  fa33e240  vextracti.s r7, 14(vr4)
004650  1bc1d000  srli r2, r1, 13
004654  1b011100  andi r2, r2, 1
004658  3b300100  bneq r2, zero, 12
00465c  7ab6d040  vextracti.s r12, 13(vr1)
004660  5b010000  j 8
004664  7a36d240  vextracti.s r12, 13(vr4)
004668  1bc1c000  srli r2, r1, 12
00466c  1b011100  andi r2, r2, 1
004670  3b300100  bneq r2, zero, 12
004674  7ab2c040  vextracti.s r4, 12(vr1)
004678  5b010000  j 8
00467c  7a32c240  vextracti.s r4, 12(vr4)
004680  1bc1b000  srli r2, r1, 11
004684  1b011100  andi r2, r2, 1
004688  3b300100  bneq r2, zero, 12
00468c  fab6b040  vextracti.s r13, 11(vr1)
004690  5b010000  j 8
004694  fa36b240  vextracti.s r13, 11(vr4)
004698  1bc1a000  srli r2, r1, 10
00469c  1b011100  andi r2, r2, 1
0046a0  3b300100  bneq r2, zero, 12
0046a4  fab7a040  vextracti.s r15, 10(vr1)
0046a8  5b010000  j 8
0046ac  fa37a240  vextracti.s r15, 10(vr4)
0046b0  1bc19000  srli r2, r1, 9
0046b4  1b011100  andi r2, r2, 1
0046b8  3b300100  bneq r2, zero, 12
0046bc  7ab89040  vextracti.s r16, 9(vr1)
0046c0  5b010000  j 8
0046c4  7a389240  vextracti.s r16, 9(vr4)
0046c8  1bc18000  srli r2, r1, 8
0046cc  1b011100  andi r2, r2, 1
0046d0  3b300100  bneq r2, zero, 12
0046d4  fab88040  vextracti.s r17, 8(vr1)
0046d8  5b010000  j 8
0046dc  fa388240  vextracti.s r17, 8(vr4)
0046e0  1bc17000  srli r2, r1, 7
0046e4  1b011100  andi r2, r2, 1
0046e8  3b300100  bneq r2, zero, 12
0046ec  7ab57040  vextracti.s r10, 7(vr1)
0046f0  5b010000  j 8
0046f4  7a357240  vextracti.s r10, 7(vr4)
0046f8  1bc16000  srli r2, r1, 6
0046fc  1b011100  andi r2, r2, 1
004700  3b300100  bneq r2, zero, 12
004704  fab56040  vextracti.s r11, 6(vr1)
004708  5b010000  j 8
00470c  fa356240  vextracti.s r11, 6(vr4)
004710  1bc15000  srli r2, r1, 5
004714  1b011100  andi r2, r2, 1
004718  3b300100  bneq r2, zero, 12
00471c  fab95040  vextracti.s r19, 5(vr1)
004720  5b010000  j 8
004724  fa395240  vextracti.s r19, 5(vr4)
004728  1bc14000  srli r2, r1, 4
00472c  1b011100  andi r2, r2, 1
004730  3b300100  bneq r2, zero, 12
004734  7ab34040  vextracti.s r6, 4(vr1)
004738  5b010000  j 8
00473c  7a334240  vextracti.s r6, 4(vr4)
004740  1bc13000  srli r2, r1, 3
004744  1b011100  andi r2, r2, 1
004748  3b300100  bneq r2, zero, 12
00474c  7ab13040  vextracti.s r2, 3(vr1)
004750  5b010000  j 8
004754  7a313240  vextracti.s r2, 3(vr4)
004758  9bca2000  srli r21, r1, 2
00475c  9b8a1a00  andi r21, r21, 1
004760  3bb00a00  bneq r21, zero, 12
004764  faba2040  vextracti.s r21, 2(vr1)
004768  5b010000  j 8
00476c  fa3a2240  vextracti.s r21, 2(vr4)
004770  1bcb1000  srli r22, r1, 1
004774  1b0b1b00  andi r22, r22, 1
004778  3b600b00  bneq r22, zero, 24
00477c  7abb1040  vextracti.s r22, 1(vr1)
004780  9b801000  andi r1, r1, 1
004784  37e00000  beq r1, zero, 24
004788  fa300240  vextracti.s r1, 0(vr4)
00478c  db020000  j 20
004790  7a3b1240  vextracti.s r22, 1(vr4)
004794  9b801000  andi r1, r1, 1
004798  bbcf00fe  bneq r1, zero, -16
00479c  fab00040  vextracti.s r1, 0(vr1)
0047a0  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0047a4  1f100000  addli zero, zero, 1
0047a8  fe0100e0  vmmov mr3, zero
0047ac  17200000  xor zero, zero, zero
0047b0  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
0047b4  9f200000  addli r1, zero, 2
0047b8  fe8100e0  vmmov mr3, r1
0047bc  9f400000  addli r1, zero, 4
0047c0  6a224b36  vor.u.mh vr4{mr3}, r22, vr4
0047c4  fe8100e0  vmmov mr3, r1
0047c8  9f001000  addli r1, zero, 8
0047cc  6aa24a36  vor.u.mh vr4{mr3}, r21, vr4
0047d0  fe8100e0  vmmov mr3, r1
0047d4  9f002000  addli r1, zero, 16
0047d8  6a224136  vor.u.mh vr4{mr3}, r2, vr4
0047dc  fe8100e0  vmmov mr3, r1
0047e0  9f004000  addli r1, zero, 32
0047e4  6a224336  vor.u.mh vr4{mr3}, r6, vr4
0047e8  fe8100e0  vmmov mr3, r1
0047ec  9f008000  addli r1, zero, 64
0047f0  6aa24936  vor.u.mh vr4{mr3}, r19, vr4
0047f4  fe8100e0  vmmov mr3, r1
0047f8  9f000001  addli r1, zero, 128
0047fc  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
004800  fe8100e0  vmmov mr3, r1
004804  9f000002  addli r1, zero, 256
004808  6a224536  vor.u.mh vr4{mr3}, r10, vr4
00480c  fe8100e0  vmmov mr3, r1
004810  9f000004  addli r1, zero, 512
004814  6aa24836  vor.u.mh vr4{mr3}, r17, vr4
004818  fe8100e0  vmmov mr3, r1
00481c  9f000008  addli r1, zero, 1024
004820  6a224836  vor.u.mh vr4{mr3}, r16, vr4
004824  fe8100e0  vmmov mr3, r1
004828  9f000010  addli r1, zero, 2048
00482c  6aa24736  vor.u.mh vr4{mr3}, r15, vr4
004830  fe8100e0  vmmov mr3, r1
004834  9f000020  addli r1, zero, 4096
004838  6aa24636  vor.u.mh vr4{mr3}, r13, vr4
00483c  fe8100e0  vmmov mr3, r1
004840  9f008fe4  addli r1, r30, -3520
004844  6a224236  vor.u.mh vr4{mr3}, r4, vr4
004848  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00484c  9f000040  addli r1, zero, 8192
004850  8a121a02  vmul.f.mz.rn vr5{mr1}, r20, vr1
004854  669302c0  vabs.f vr6, vr5
004858  eeb051c2  vsrl.s.mz vr1{mr1}, vr3, vr5
00485c  fe8100e0  vmmov mr3, r1
004860  ab400000  lui r1, 4
004864  6a224636  vor.u.mh vr4{mr3}, r12, vr4
004868  fe8100e0  vmmov mr3, r1
00486c  ab800000  lui r1, 8
004870  ea301702  vand.s.mz vr1{mr1}, r14, vr1
004874  6aa24336  vor.u.mh vr4{mr3}, r7, vr4
004878  fe8100e0  vmmov mr3, r1
00487c  96b01202  vadd.s.mz vr1{mr1}, vr5, vr1
004880  6aa24236  vor.u.mh vr4{mr3}, r5, vr4
004884  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
004888  7e8201a0  vmmov r4, mr3
00488c  92301402  vadd.s.mz vr1{mr1}, r8, vr1
004890  9b40f200  srli r1, r4, 15
004894  6af344c0  vsrl.p vr6, r9, vr4
004898  6ab25d22  vor.s.mz vr4{mr1}, r27, vr5
00489c  9b801000  andi r1, r1, 1
0048a0  46806114  vstore.mh vr6{mr2}, 0(r3)
0048a4  3bb00000  bneq r1, zero, 12
0048a8  fab1f040  vextracti.s r3, 15(vr1)
0048ac  5b010000  j 8
0048b0  fa31f240  vextracti.s r3, 15(vr4)
0048b4  9b40e200  srli r1, r4, 14
0048b8  630bffe1  loadli.w r22,  -3848(r30)
0048bc  9b801000  andi r1, r1, 1
0048c0  3bb00000  bneq r1, zero, 12
0048c4  fab2e040  vextracti.s r5, 14(vr1)
0048c8  5b010000  j 8
0048cc  fa32e240  vextracti.s r5, 14(vr4)
0048d0  9b40d200  srli r1, r4, 13
0048d4  9b801000  andi r1, r1, 1
0048d8  3bb00000  bneq r1, zero, 12
0048dc  fab3d040  vextracti.s r7, 13(vr1)
0048e0  5b010000  j 8
0048e4  fa33d240  vextracti.s r7, 13(vr4)
0048e8  9b40c200  srli r1, r4, 12
0048ec  9b801000  andi r1, r1, 1
0048f0  3bb00000  bneq r1, zero, 12
0048f4  fab0c040  vextracti.s r1, 12(vr1)
0048f8  5b010000  j 8
0048fc  fa30c240  vextracti.s r1, 12(vr4)
004900  1b41b200  srli r2, r4, 11
004904  1b011100  andi r2, r2, 1
004908  3b300100  bneq r2, zero, 12
00490c  7ab6b040  vextracti.s r12, 11(vr1)
004910  5b010000  j 8
004914  7a36b240  vextracti.s r12, 11(vr4)
004918  1b41a200  srli r2, r4, 10
00491c  1b011100  andi r2, r2, 1
004920  3b300100  bneq r2, zero, 12
004924  fab6a040  vextracti.s r13, 10(vr1)
004928  5b010000  j 8
00492c  fa36a240  vextracti.s r13, 10(vr4)
004930  1b419200  srli r2, r4, 9
004934  1b011100  andi r2, r2, 1
004938  3b300100  bneq r2, zero, 12
00493c  fab79040  vextracti.s r15, 9(vr1)
004940  5b010000  j 8
004944  fa379240  vextracti.s r15, 9(vr4)
004948  1b418200  srli r2, r4, 8
00494c  1b011100  andi r2, r2, 1
004950  3b300100  bneq r2, zero, 12
004954  7ab88040  vextracti.s r16, 8(vr1)
004958  5b010000  j 8
00495c  7a388240  vextracti.s r16, 8(vr4)
004960  1b417200  srli r2, r4, 7
004964  1b011100  andi r2, r2, 1
004968  3b300100  bneq r2, zero, 12
00496c  7ab57040  vextracti.s r10, 7(vr1)
004970  5b010000  j 8
004974  7a357240  vextracti.s r10, 7(vr4)
004978  1b416200  srli r2, r4, 6
00497c  1b011100  andi r2, r2, 1
004980  3b300100  bneq r2, zero, 12
004984  fab56040  vextracti.s r11, 6(vr1)
004988  5b010000  j 8
00498c  fa356240  vextracti.s r11, 6(vr4)
004990  1b415200  srli r2, r4, 5
004994  1b011100  andi r2, r2, 1
004998  3b300100  bneq r2, zero, 12
00499c  fab85040  vextracti.s r17, 5(vr1)
0049a0  5b010000  j 8
0049a4  fa385240  vextracti.s r17, 5(vr4)
0049a8  1b414200  srli r2, r4, 4
0049ac  1b011100  andi r2, r2, 1
0049b0  3b300100  bneq r2, zero, 12
0049b4  7ab34040  vextracti.s r6, 4(vr1)
0049b8  5b010000  j 8
0049bc  7a334240  vextracti.s r6, 4(vr4)
0049c0  1b413200  srli r2, r4, 3
0049c4  1b011100  andi r2, r2, 1
0049c8  3b300100  bneq r2, zero, 12
0049cc  7ab13040  vextracti.s r2, 3(vr1)
0049d0  5b010000  j 8
0049d4  7a313240  vextracti.s r2, 3(vr4)
0049d8  9b492200  srli r19, r4, 2
0049dc  9b891900  andi r19, r19, 1
0049e0  3bb00900  bneq r19, zero, 12
0049e4  fab92040  vextracti.s r19, 2(vr1)
0049e8  5b010000  j 8
0049ec  fa392240  vextracti.s r19, 2(vr4)
0049f0  9b4a1200  srli r21, r4, 1
0049f4  9b8a1a00  andi r21, r21, 1
0049f8  3be00a00  bneq r21, zero, 24
0049fc  faba1040  vextracti.s r21, 1(vr1)
004a00  1b021200  andi r4, r4, 1
004a04  37600200  beq r4, zero, 24
004a08  7a320240  vextracti.s r4, 0(vr4)
004a0c  db020000  j 20
004a10  fa3a1240  vextracti.s r21, 1(vr4)
004a14  1b021200  andi r4, r4, 1
004a18  bb4f02fe  bneq r4, zero, -16
004a1c  7ab20040  vextracti.s r4, 0(vr1)
004a20  92320002  vadd.s.mz vr5{mr1}, zero, vr0
004a24  1f100000  addli zero, zero, 1
004a28  fe0100e0  vmmov mr3, zero
004a2c  17200000  xor zero, zero, zero
004a30  ea225236  vor.u.mh vr5{mr3}, r4, vr5
004a34  1f220000  addli r4, zero, 2
004a38  fe0102e0  vmmov mr3, r4
004a3c  1f420000  addli r4, zero, 4
004a40  eaa25a36  vor.u.mh vr5{mr3}, r21, vr5
004a44  fe0102e0  vmmov mr3, r4
004a48  1f021000  addli r4, zero, 8
004a4c  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
004a50  fe0102e0  vmmov mr3, r4
004a54  ea225136  vor.u.mh vr5{mr3}, r2, vr5
004a58  1f012000  addli r2, zero, 16
004a5c  fe0101e0  vmmov mr3, r2
004a60  1f014000  addli r2, zero, 32
004a64  ea225336  vor.u.mh vr5{mr3}, r6, vr5
004a68  fe0101e0  vmmov mr3, r2
004a6c  1f018000  addli r2, zero, 64
004a70  eaa25836  vor.u.mh vr5{mr3}, r17, vr5
004a74  fe0101e0  vmmov mr3, r2
004a78  1f010001  addli r2, zero, 128
004a7c  eaa25536  vor.u.mh vr5{mr3}, r11, vr5
004a80  fe0101e0  vmmov mr3, r2
004a84  1f010002  addli r2, zero, 256
004a88  ea225536  vor.u.mh vr5{mr3}, r10, vr5
004a8c  fe0101e0  vmmov mr3, r2
004a90  1f010004  addli r2, zero, 512
004a94  ea225836  vor.u.mh vr5{mr3}, r16, vr5
004a98  fe0101e0  vmmov mr3, r2
004a9c  1f010008  addli r2, zero, 1024
004aa0  eaa25736  vor.u.mh vr5{mr3}, r15, vr5
004aa4  fe0101e0  vmmov mr3, r2
004aa8  1f010010  addli r2, zero, 2048
004aac  eaa25636  vor.u.mh vr5{mr3}, r13, vr5
004ab0  fe0101e0  vmmov mr3, r2
004ab4  1f018fe5  addli r2, r30, -3392
004ab8  ea225636  vor.u.mh vr5{mr3}, r12, vr5
004abc  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004ac0  1f010020  addli r2, zero, 4096
004ac4  0a121a02  vmul.f.mz.rn vr4{mr1}, r20, vr1
004ac8  661302c0  vabs.f vr6, vr4
004acc  eeb041c2  vsrl.s.mz vr1{mr1}, vr3, vr4
004ad0  fe0101e0  vmmov mr3, r2
004ad4  2b810000  lui r2, 8
004ad8  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
004adc  9f000040  addli r1, zero, 8192
004ae0  ea301702  vand.s.mz vr1{mr1}, r14, vr1
004ae4  fe8100e0  vmmov mr3, r1
004ae8  ab400000  lui r1, 4
004aec  eaa25336  vor.u.mh vr5{mr3}, r7, vr5
004af0  fe8100e0  vmmov mr3, r1
004af4  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
004af8  6ab24d22  vor.s.mz vr4{mr1}, r27, vr4
004afc  eaa25236  vor.u.mh vr5{mr3}, r5, vr5
004b00  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
004b04  fe8001a0  vmmov r1, mr3
004b08  fe0101e0  vmmov mr3, r2
004b0c  92301402  vadd.s.mz vr1{mr1}, r8, vr1
004b10  1bc1f000  srli r2, r1, 15
004b14  eaa25136  vor.u.mh vr5{mr3}, r3, vr5
004b18  1b011100  andi r2, r2, 1
004b1c  46005910  vstore.mh vr5{mr0}, 0(r18)
004b20  3b300100  bneq r2, zero, 12
004b24  fab1f040  vextracti.s r3, 15(vr1)
004b28  5b010000  j 8
004b2c  fa31f240  vextracti.s r3, 15(vr4)
004b30  1bc1e000  srli r2, r1, 14
004b34  1b011100  andi r2, r2, 1
004b38  3b300100  bneq r2, zero, 12
004b3c  fab2e040  vextracti.s r5, 14(vr1)
004b40  5b010000  j 8
004b44  fa32e240  vextracti.s r5, 14(vr4)
004b48  1bc1d000  srli r2, r1, 13
004b4c  1b011100  andi r2, r2, 1
004b50  3b300100  bneq r2, zero, 12
004b54  fab3d040  vextracti.s r7, 13(vr1)
004b58  5b010000  j 8
004b5c  fa33d240  vextracti.s r7, 13(vr4)
004b60  1bc1c000  srli r2, r1, 12
004b64  1b011100  andi r2, r2, 1
004b68  3b300100  bneq r2, zero, 12
004b6c  7ab2c040  vextracti.s r4, 12(vr1)
004b70  5b010000  j 8
004b74  7a32c240  vextracti.s r4, 12(vr4)
004b78  1bc1b000  srli r2, r1, 11
004b7c  1b011100  andi r2, r2, 1
004b80  3b300100  bneq r2, zero, 12
004b84  7ab6b040  vextracti.s r12, 11(vr1)
004b88  5b010000  j 8
004b8c  7a36b240  vextracti.s r12, 11(vr4)
004b90  1bc1a000  srli r2, r1, 10
004b94  1b011100  andi r2, r2, 1
004b98  3b300100  bneq r2, zero, 12
004b9c  fab6a040  vextracti.s r13, 10(vr1)
004ba0  5b010000  j 8
004ba4  fa36a240  vextracti.s r13, 10(vr4)
004ba8  1bc19000  srli r2, r1, 9
004bac  1b011100  andi r2, r2, 1
004bb0  3b300100  bneq r2, zero, 12
004bb4  fab79040  vextracti.s r15, 9(vr1)
004bb8  5b010000  j 8
004bbc  fa379240  vextracti.s r15, 9(vr4)
004bc0  1bc18000  srli r2, r1, 8
004bc4  1b011100  andi r2, r2, 1
004bc8  3b300100  bneq r2, zero, 12
004bcc  7ab88040  vextracti.s r16, 8(vr1)
004bd0  5b010000  j 8
004bd4  7a388240  vextracti.s r16, 8(vr4)
004bd8  1bc17000  srli r2, r1, 7
004bdc  1b011100  andi r2, r2, 1
004be0  3b300100  bneq r2, zero, 12
004be4  7ab57040  vextracti.s r10, 7(vr1)
004be8  5b010000  j 8
004bec  7a357240  vextracti.s r10, 7(vr4)
004bf0  1bc16000  srli r2, r1, 6
004bf4  1b011100  andi r2, r2, 1
004bf8  3b300100  bneq r2, zero, 12
004bfc  fab56040  vextracti.s r11, 6(vr1)
004c00  5b010000  j 8
004c04  fa356240  vextracti.s r11, 6(vr4)
004c08  1bc15000  srli r2, r1, 5
004c0c  1b011100  andi r2, r2, 1
004c10  3b300100  bneq r2, zero, 12
004c14  fab85040  vextracti.s r17, 5(vr1)
004c18  5b010000  j 8
004c1c  fa385240  vextracti.s r17, 5(vr4)
004c20  1bc14000  srli r2, r1, 4
004c24  1b011100  andi r2, r2, 1
004c28  3b300100  bneq r2, zero, 12
004c2c  7ab34040  vextracti.s r6, 4(vr1)
004c30  5b010000  j 8
004c34  7a334240  vextracti.s r6, 4(vr4)
004c38  1bc13000  srli r2, r1, 3
004c3c  1b011100  andi r2, r2, 1
004c40  3b300100  bneq r2, zero, 12
004c44  7ab13040  vextracti.s r2, 3(vr1)
004c48  5b010000  j 8
004c4c  7a313240  vextracti.s r2, 3(vr4)
004c50  9bc92000  srli r19, r1, 2
004c54  9b891900  andi r19, r19, 1
004c58  3bb00900  bneq r19, zero, 12
004c5c  fab92040  vextracti.s r19, 2(vr1)
004c60  5b010000  j 8
004c64  fa392240  vextracti.s r19, 2(vr4)
004c68  9bca1000  srli r21, r1, 1
004c6c  9b8a1a00  andi r21, r21, 1
004c70  3be00a00  bneq r21, zero, 24
004c74  faba1040  vextracti.s r21, 1(vr1)
004c78  9b801000  andi r1, r1, 1
004c7c  37e00000  beq r1, zero, 24
004c80  fa300240  vextracti.s r1, 0(vr4)
004c84  db020000  j 20
004c88  fa3a1240  vextracti.s r21, 1(vr4)
004c8c  9b801000  andi r1, r1, 1
004c90  bbcf00fe  bneq r1, zero, -16
004c94  fab00040  vextracti.s r1, 0(vr1)
004c98  12320002  vadd.s.mz vr4{mr1}, zero, vr0
004c9c  1f100000  addli zero, zero, 1
004ca0  fe0100e0  vmmov mr3, zero
004ca4  17200000  xor zero, zero, zero
004ca8  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
004cac  9f200000  addli r1, zero, 2
004cb0  fe8100e0  vmmov mr3, r1
004cb4  9f400000  addli r1, zero, 4
004cb8  6aa24a36  vor.u.mh vr4{mr3}, r21, vr4
004cbc  fe8100e0  vmmov mr3, r1
004cc0  9f001000  addli r1, zero, 8
004cc4  6aa24936  vor.u.mh vr4{mr3}, r19, vr4
004cc8  fe8100e0  vmmov mr3, r1
004ccc  9f002000  addli r1, zero, 16
004cd0  6a224136  vor.u.mh vr4{mr3}, r2, vr4
004cd4  fe8100e0  vmmov mr3, r1
004cd8  9f004000  addli r1, zero, 32
004cdc  6a224336  vor.u.mh vr4{mr3}, r6, vr4
004ce0  fe8100e0  vmmov mr3, r1
004ce4  9f008000  addli r1, zero, 64
004ce8  6aa24836  vor.u.mh vr4{mr3}, r17, vr4
004cec  fe8100e0  vmmov mr3, r1
004cf0  9f000001  addli r1, zero, 128
004cf4  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
004cf8  fe8100e0  vmmov mr3, r1
004cfc  9f000002  addli r1, zero, 256
004d00  6a224536  vor.u.mh vr4{mr3}, r10, vr4
004d04  fe8100e0  vmmov mr3, r1
004d08  9f000004  addli r1, zero, 512
004d0c  6a224836  vor.u.mh vr4{mr3}, r16, vr4
004d10  fe8100e0  vmmov mr3, r1
004d14  9f000008  addli r1, zero, 1024
004d18  6aa24736  vor.u.mh vr4{mr3}, r15, vr4
004d1c  fe8100e0  vmmov mr3, r1
004d20  9f000010  addli r1, zero, 2048
004d24  6aa24636  vor.u.mh vr4{mr3}, r13, vr4
004d28  fe8100e0  vmmov mr3, r1
004d2c  9f000020  addli r1, zero, 4096
004d30  6a224636  vor.u.mh vr4{mr3}, r12, vr4
004d34  fe8100e0  vmmov mr3, r1
004d38  9f008fe7  addli r1, r30, -3136
004d3c  6a224236  vor.u.mh vr4{mr3}, r4, vr4
004d40  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
004d44  9f000040  addli r1, zero, 8192
004d48  8a121a02  vmul.f.mz.rn vr5{mr1}, r20, vr1
004d4c  669302c0  vabs.f vr6, vr5
004d50  eeb051c2  vsrl.s.mz vr1{mr1}, vr3, vr5
004d54  fe8100e0  vmmov mr3, r1
004d58  ab400000  lui r1, 4
004d5c  6aa24336  vor.u.mh vr4{mr3}, r7, vr4
004d60  fe8100e0  vmmov mr3, r1
004d64  ab800000  lui r1, 8
004d68  ea301702  vand.s.mz vr1{mr1}, r14, vr1
004d6c  6aa24236  vor.u.mh vr4{mr3}, r5, vr4
004d70  fe8100e0  vmmov mr3, r1
004d74  96b01202  vadd.s.mz vr1{mr1}, vr5, vr1
004d78  6aa24136  vor.u.mh vr4{mr3}, r3, vr4
004d7c  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
004d80  7e8201a0  vmmov r4, mr3
004d84  92301402  vadd.s.mz vr1{mr1}, r8, vr1
004d88  9b40f200  srli r1, r4, 15
004d8c  6af344c0  vsrl.p vr6, r9, vr4
004d90  6ab25d22  vor.s.mz vr4{mr1}, r27, vr5
004d94  9b801000  andi r1, r1, 1
004d98  46006914  vstore.mh vr6{mr2}, 0(r18)
004d9c  3bb00000  bneq r1, zero, 12
004da0  fab1f040  vextracti.s r3, 15(vr1)
004da4  5b010000  j 8
004da8  fa31f240  vextracti.s r3, 15(vr4)
004dac  9b40e200  srli r1, r4, 14
004db0  e34affe1  loadli.w r21,  -3844(r30)
004db4  9b801000  andi r1, r1, 1
004db8  3bb00000  bneq r1, zero, 12
004dbc  fab2e040  vextracti.s r5, 14(vr1)
004dc0  5b010000  j 8
004dc4  fa32e240  vextracti.s r5, 14(vr4)
004dc8  9b40d200  srli r1, r4, 13
004dcc  9b801000  andi r1, r1, 1
004dd0  3bb00000  bneq r1, zero, 12
004dd4  fab3d040  vextracti.s r7, 13(vr1)
004dd8  5b010000  j 8
004ddc  fa33d240  vextracti.s r7, 13(vr4)
004de0  9b40c200  srli r1, r4, 12
004de4  9b801000  andi r1, r1, 1
004de8  3bb00000  bneq r1, zero, 12
004dec  fab0c040  vextracti.s r1, 12(vr1)
004df0  5b010000  j 8
004df4  fa30c240  vextracti.s r1, 12(vr4)
004df8  1b41b200  srli r2, r4, 11
004dfc  1b011100  andi r2, r2, 1
004e00  3b300100  bneq r2, zero, 12
004e04  7ab6b040  vextracti.s r12, 11(vr1)
004e08  5b010000  j 8
004e0c  7a36b240  vextracti.s r12, 11(vr4)
004e10  1b41a200  srli r2, r4, 10
004e14  1b011100  andi r2, r2, 1
004e18  3b300100  bneq r2, zero, 12
004e1c  fab6a040  vextracti.s r13, 10(vr1)
004e20  5b010000  j 8
004e24  fa36a240  vextracti.s r13, 10(vr4)
004e28  1b419200  srli r2, r4, 9
004e2c  1b011100  andi r2, r2, 1
004e30  3b300100  bneq r2, zero, 12
004e34  fab79040  vextracti.s r15, 9(vr1)
004e38  5b010000  j 8
004e3c  fa379240  vextracti.s r15, 9(vr4)
004e40  1b418200  srli r2, r4, 8
004e44  1b011100  andi r2, r2, 1
004e48  3b300100  bneq r2, zero, 12
004e4c  7ab88040  vextracti.s r16, 8(vr1)
004e50  5b010000  j 8
004e54  7a388240  vextracti.s r16, 8(vr4)
004e58  1b417200  srli r2, r4, 7
004e5c  1b011100  andi r2, r2, 1
004e60  3b300100  bneq r2, zero, 12
004e64  7ab57040  vextracti.s r10, 7(vr1)
004e68  5b010000  j 8
004e6c  7a357240  vextracti.s r10, 7(vr4)
004e70  1b416200  srli r2, r4, 6
004e74  1b011100  andi r2, r2, 1
004e78  3b300100  bneq r2, zero, 12
004e7c  fab56040  vextracti.s r11, 6(vr1)
004e80  5b010000  j 8
004e84  fa356240  vextracti.s r11, 6(vr4)
004e88  1b415200  srli r2, r4, 5
004e8c  1b011100  andi r2, r2, 1
004e90  3b300100  bneq r2, zero, 12
004e94  fab85040  vextracti.s r17, 5(vr1)
004e98  5b010000  j 8
004e9c  fa385240  vextracti.s r17, 5(vr4)
004ea0  1b414200  srli r2, r4, 4
004ea4  1b011100  andi r2, r2, 1
004ea8  3b300100  bneq r2, zero, 12
004eac  7ab34040  vextracti.s r6, 4(vr1)
004eb0  5b010000  j 8
004eb4  7a334240  vextracti.s r6, 4(vr4)
004eb8  1b413200  srli r2, r4, 3
004ebc  1b011100  andi r2, r2, 1
004ec0  3b300100  bneq r2, zero, 12
004ec4  7ab13040  vextracti.s r2, 3(vr1)
004ec8  5b010000  j 8
004ecc  7a313240  vextracti.s r2, 3(vr4)
004ed0  1b492200  srli r18, r4, 2
004ed4  1b091900  andi r18, r18, 1
004ed8  3b300900  bneq r18, zero, 12
004edc  7ab92040  vextracti.s r18, 2(vr1)
004ee0  5b010000  j 8
004ee4  7a392240  vextracti.s r18, 2(vr4)
004ee8  9b491200  srli r19, r4, 1
004eec  9b891900  andi r19, r19, 1
004ef0  3be00900  bneq r19, zero, 24
004ef4  fab91040  vextracti.s r19, 1(vr1)
004ef8  1b021200  andi r4, r4, 1
004efc  37600200  beq r4, zero, 24
004f00  7a320240  vextracti.s r4, 0(vr4)
004f04  db020000  j 20
004f08  fa391240  vextracti.s r19, 1(vr4)
004f0c  1b021200  andi r4, r4, 1
004f10  bb4f02fe  bneq r4, zero, -16
004f14  7ab20040  vextracti.s r4, 0(vr1)
004f18  92320002  vadd.s.mz vr5{mr1}, zero, vr0
004f1c  1f100000  addli zero, zero, 1
004f20  fe0100e0  vmmov mr3, zero
004f24  17200000  xor zero, zero, zero
004f28  ea225236  vor.u.mh vr5{mr3}, r4, vr5
004f2c  1f220000  addli r4, zero, 2
004f30  fe0102e0  vmmov mr3, r4
004f34  1f420000  addli r4, zero, 4
004f38  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
004f3c  fe0102e0  vmmov mr3, r4
004f40  1f021000  addli r4, zero, 8
004f44  ea225936  vor.u.mh vr5{mr3}, r18, vr5
004f48  fe0102e0  vmmov mr3, r4
004f4c  ea225136  vor.u.mh vr5{mr3}, r2, vr5
004f50  1f012000  addli r2, zero, 16
004f54  fe0101e0  vmmov mr3, r2
004f58  1f014000  addli r2, zero, 32
004f5c  ea225336  vor.u.mh vr5{mr3}, r6, vr5
004f60  fe0101e0  vmmov mr3, r2
004f64  1f018000  addli r2, zero, 64
004f68  eaa25836  vor.u.mh vr5{mr3}, r17, vr5
004f6c  fe0101e0  vmmov mr3, r2
004f70  1f010001  addli r2, zero, 128
004f74  eaa25536  vor.u.mh vr5{mr3}, r11, vr5
004f78  fe0101e0  vmmov mr3, r2
004f7c  1f010002  addli r2, zero, 256
004f80  ea225536  vor.u.mh vr5{mr3}, r10, vr5
004f84  fe0101e0  vmmov mr3, r2
004f88  1f010004  addli r2, zero, 512
004f8c  ea225836  vor.u.mh vr5{mr3}, r16, vr5
004f90  fe0101e0  vmmov mr3, r2
004f94  1f010008  addli r2, zero, 1024
004f98  eaa25736  vor.u.mh vr5{mr3}, r15, vr5
004f9c  fe0101e0  vmmov mr3, r2
004fa0  1f010010  addli r2, zero, 2048
004fa4  eaa25636  vor.u.mh vr5{mr3}, r13, vr5
004fa8  fe0101e0  vmmov mr3, r2
004fac  1f010fe8  addli r2, r30, -3072
004fb0  ea225636  vor.u.mh vr5{mr3}, r12, vr5
004fb4  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004fb8  1f010020  addli r2, zero, 4096
004fbc  0a121a02  vmul.f.mz.rn vr4{mr1}, r20, vr1
004fc0  661302c0  vabs.f vr6, vr4
004fc4  eeb041c2  vsrl.s.mz vr1{mr1}, vr3, vr4
004fc8  fe0101e0  vmmov mr3, r2
004fcc  2b810000  lui r2, 8
004fd0  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
004fd4  9f000040  addli r1, zero, 8192
004fd8  ea301702  vand.s.mz vr1{mr1}, r14, vr1
004fdc  fe8100e0  vmmov mr3, r1
004fe0  ab400000  lui r1, 4
004fe4  eaa25336  vor.u.mh vr5{mr3}, r7, vr5
004fe8  fe8100e0  vmmov mr3, r1
004fec  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
004ff0  6ab24d22  vor.s.mz vr4{mr1}, r27, vr4
004ff4  eaa25236  vor.u.mh vr5{mr3}, r5, vr5
004ff8  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
004ffc  fe8001a0  vmmov r1, mr3
005000  fe0101e0  vmmov mr3, r2
005004  92301402  vadd.s.mz vr1{mr1}, r8, vr1
005008  1bc1f000  srli r2, r1, 15
00500c  eaa25136  vor.u.mh vr5{mr3}, r3, vr5
005010  e301efed  loadli.w r3,  -2320(r30)
005014  1b011100  andi r2, r2, 1
005018  46805110  vstore.mh vr5{mr0}, 0(r3)
00501c  3b300100  bneq r2, zero, 12
005020  fab1f040  vextracti.s r3, 15(vr1)
005024  5b010000  j 8
005028  fa31f240  vextracti.s r3, 15(vr4)
00502c  1bc1e000  srli r2, r1, 14
005030  1b011100  andi r2, r2, 1
005034  3b300100  bneq r2, zero, 12
005038  fab2e040  vextracti.s r5, 14(vr1)
00503c  5b010000  j 8
005040  fa32e240  vextracti.s r5, 14(vr4)
005044  1bc1d000  srli r2, r1, 13
005048  1b011100  andi r2, r2, 1
00504c  3b300100  bneq r2, zero, 12
005050  fab3d040  vextracti.s r7, 13(vr1)
005054  5b010000  j 8
005058  fa33d240  vextracti.s r7, 13(vr4)
00505c  1bc1c000  srli r2, r1, 12
005060  1b011100  andi r2, r2, 1
005064  3b300100  bneq r2, zero, 12
005068  7ab2c040  vextracti.s r4, 12(vr1)
00506c  5b010000  j 8
005070  7a32c240  vextracti.s r4, 12(vr4)
005074  1bc1b000  srli r2, r1, 11
005078  1b011100  andi r2, r2, 1
00507c  3b300100  bneq r2, zero, 12
005080  7ab6b040  vextracti.s r12, 11(vr1)
005084  5b010000  j 8
005088  7a36b240  vextracti.s r12, 11(vr4)
00508c  1bc1a000  srli r2, r1, 10
005090  1b011100  andi r2, r2, 1
005094  3b300100  bneq r2, zero, 12
005098  fab6a040  vextracti.s r13, 10(vr1)
00509c  5b010000  j 8
0050a0  fa36a240  vextracti.s r13, 10(vr4)
0050a4  1bc19000  srli r2, r1, 9
0050a8  1b011100  andi r2, r2, 1
0050ac  3b300100  bneq r2, zero, 12
0050b0  fab79040  vextracti.s r15, 9(vr1)
0050b4  5b010000  j 8
0050b8  fa379240  vextracti.s r15, 9(vr4)
0050bc  1bc18000  srli r2, r1, 8
0050c0  1b011100  andi r2, r2, 1
0050c4  3b300100  bneq r2, zero, 12
0050c8  7ab88040  vextracti.s r16, 8(vr1)
0050cc  5b010000  j 8
0050d0  7a388240  vextracti.s r16, 8(vr4)
0050d4  1bc17000  srli r2, r1, 7
0050d8  1b011100  andi r2, r2, 1
0050dc  3b300100  bneq r2, zero, 12
0050e0  7ab57040  vextracti.s r10, 7(vr1)
0050e4  5b010000  j 8
0050e8  7a357240  vextracti.s r10, 7(vr4)
0050ec  1bc16000  srli r2, r1, 6
0050f0  1b011100  andi r2, r2, 1
0050f4  3b300100  bneq r2, zero, 12
0050f8  fab56040  vextracti.s r11, 6(vr1)
0050fc  5b010000  j 8
005100  fa356240  vextracti.s r11, 6(vr4)
005104  1bc15000  srli r2, r1, 5
005108  1b011100  andi r2, r2, 1
00510c  3b300100  bneq r2, zero, 12
005110  fab85040  vextracti.s r17, 5(vr1)
005114  5b010000  j 8
005118  fa385240  vextracti.s r17, 5(vr4)
00511c  1bc14000  srli r2, r1, 4
005120  1b011100  andi r2, r2, 1
005124  3b300100  bneq r2, zero, 12
005128  7ab34040  vextracti.s r6, 4(vr1)
00512c  5b010000  j 8
005130  7a334240  vextracti.s r6, 4(vr4)
005134  1bc13000  srli r2, r1, 3
005138  1b011100  andi r2, r2, 1
00513c  3b300100  bneq r2, zero, 12
005140  7ab13040  vextracti.s r2, 3(vr1)
005144  5b010000  j 8
005148  7a313240  vextracti.s r2, 3(vr4)
00514c  1bc92000  srli r18, r1, 2
005150  1b091900  andi r18, r18, 1
005154  3b300900  bneq r18, zero, 12
005158  7ab92040  vextracti.s r18, 2(vr1)
00515c  5b010000  j 8
005160  7a392240  vextracti.s r18, 2(vr4)
005164  9bc91000  srli r19, r1, 1
005168  9b891900  andi r19, r19, 1
00516c  3be00900  bneq r19, zero, 24
005170  fab91040  vextracti.s r19, 1(vr1)
005174  9b801000  andi r1, r1, 1
005178  37e00000  beq r1, zero, 24
00517c  fa300240  vextracti.s r1, 0(vr4)
005180  db020000  j 20
005184  fa391240  vextracti.s r19, 1(vr4)
005188  9b801000  andi r1, r1, 1
00518c  bbcf00fe  bneq r1, zero, -16
005190  fab00040  vextracti.s r1, 0(vr1)
005194  12320002  vadd.s.mz vr4{mr1}, zero, vr0
005198  1f100000  addli zero, zero, 1
00519c  fe0100e0  vmmov mr3, zero
0051a0  17200000  xor zero, zero, zero
0051a4  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
0051a8  9f200000  addli r1, zero, 2
0051ac  fe8100e0  vmmov mr3, r1
0051b0  9f400000  addli r1, zero, 4
0051b4  6aa24936  vor.u.mh vr4{mr3}, r19, vr4
0051b8  fe8100e0  vmmov mr3, r1
0051bc  9f001000  addli r1, zero, 8
0051c0  6a224936  vor.u.mh vr4{mr3}, r18, vr4
0051c4  fe8100e0  vmmov mr3, r1
0051c8  9f002000  addli r1, zero, 16
0051cc  6a224136  vor.u.mh vr4{mr3}, r2, vr4
0051d0  fe8100e0  vmmov mr3, r1
0051d4  9f004000  addli r1, zero, 32
0051d8  6a224336  vor.u.mh vr4{mr3}, r6, vr4
0051dc  fe8100e0  vmmov mr3, r1
0051e0  9f008000  addli r1, zero, 64
0051e4  6aa24836  vor.u.mh vr4{mr3}, r17, vr4
0051e8  fe8100e0  vmmov mr3, r1
0051ec  9f000001  addli r1, zero, 128
0051f0  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
0051f4  fe8100e0  vmmov mr3, r1
0051f8  9f000002  addli r1, zero, 256
0051fc  6a224536  vor.u.mh vr4{mr3}, r10, vr4
005200  fe8100e0  vmmov mr3, r1
005204  9f000004  addli r1, zero, 512
005208  6a224836  vor.u.mh vr4{mr3}, r16, vr4
00520c  fe8100e0  vmmov mr3, r1
005210  9f000008  addli r1, zero, 1024
005214  6aa24736  vor.u.mh vr4{mr3}, r15, vr4
005218  fe8100e0  vmmov mr3, r1
00521c  9f000010  addli r1, zero, 2048
005220  6aa24636  vor.u.mh vr4{mr3}, r13, vr4
005224  fe8100e0  vmmov mr3, r1
005228  9f000020  addli r1, zero, 4096
00522c  6a224636  vor.u.mh vr4{mr3}, r12, vr4
005230  fe8100e0  vmmov mr3, r1
005234  9f008fe8  addli r1, r30, -3008
005238  6a224236  vor.u.mh vr4{mr3}, r4, vr4
00523c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
005240  9f000040  addli r1, zero, 8192
005244  8a121a02  vmul.f.mz.rn vr5{mr1}, r20, vr1
005248  669302c0  vabs.f vr6, vr5
00524c  eeb051c2  vsrl.s.mz vr1{mr1}, vr3, vr5
005250  fe8100e0  vmmov mr3, r1
005254  ab400000  lui r1, 4
005258  6aa24336  vor.u.mh vr4{mr3}, r7, vr4
00525c  fe8100e0  vmmov mr3, r1
005260  ab800000  lui r1, 8
005264  ea301702  vand.s.mz vr1{mr1}, r14, vr1
005268  6aa24236  vor.u.mh vr4{mr3}, r5, vr4
00526c  fe8100e0  vmmov mr3, r1
005270  96b01202  vadd.s.mz vr1{mr1}, vr5, vr1
005274  6aa24136  vor.u.mh vr4{mr3}, r3, vr4
005278  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
00527c  6301efed  loadli.w r2,  -2320(r30)
005280  7e8201a0  vmmov r4, mr3
005284  92301402  vadd.s.mz vr1{mr1}, r8, vr1
005288  9b40f200  srli r1, r4, 15
00528c  6af344c0  vsrl.p vr6, r9, vr4
005290  6ab25d22  vor.s.mz vr4{mr1}, r27, vr5
005294  9b801000  andi r1, r1, 1
005298  46006114  vstore.mh vr6{mr2}, 0(r2)
00529c  3bb00000  bneq r1, zero, 12
0052a0  fab1f040  vextracti.s r3, 15(vr1)
0052a4  5b010000  j 8
0052a8  fa31f240  vextracti.s r3, 15(vr4)
0052ac  9b40e200  srli r1, r4, 14
0052b0  9b801000  andi r1, r1, 1
0052b4  3bb00000  bneq r1, zero, 12
0052b8  fab2e040  vextracti.s r5, 14(vr1)
0052bc  5b010000  j 8
0052c0  fa32e240  vextracti.s r5, 14(vr4)
0052c4  9b40d200  srli r1, r4, 13
0052c8  9b801000  andi r1, r1, 1
0052cc  3bb00000  bneq r1, zero, 12
0052d0  fab3d040  vextracti.s r7, 13(vr1)
0052d4  5b010000  j 8
0052d8  fa33d240  vextracti.s r7, 13(vr4)
0052dc  9b40c200  srli r1, r4, 12
0052e0  9b801000  andi r1, r1, 1
0052e4  3bb00000  bneq r1, zero, 12
0052e8  fab0c040  vextracti.s r1, 12(vr1)
0052ec  5b010000  j 8
0052f0  fa30c240  vextracti.s r1, 12(vr4)
0052f4  1b41b200  srli r2, r4, 11
0052f8  1b011100  andi r2, r2, 1
0052fc  3b300100  bneq r2, zero, 12
005300  7ab6b040  vextracti.s r12, 11(vr1)
005304  5b010000  j 8
005308  7a36b240  vextracti.s r12, 11(vr4)
00530c  1b41a200  srli r2, r4, 10
005310  1b011100  andi r2, r2, 1
005314  3b300100  bneq r2, zero, 12
005318  fab6a040  vextracti.s r13, 10(vr1)
00531c  5b010000  j 8
005320  fa36a240  vextracti.s r13, 10(vr4)
005324  1b419200  srli r2, r4, 9
005328  1b011100  andi r2, r2, 1
00532c  3b300100  bneq r2, zero, 12
005330  fab79040  vextracti.s r15, 9(vr1)
005334  5b010000  j 8
005338  fa379240  vextracti.s r15, 9(vr4)
00533c  1b418200  srli r2, r4, 8
005340  1b011100  andi r2, r2, 1
005344  3b300100  bneq r2, zero, 12
005348  7ab88040  vextracti.s r16, 8(vr1)
00534c  5b010000  j 8
005350  7a388240  vextracti.s r16, 8(vr4)
005354  1b417200  srli r2, r4, 7
005358  1b011100  andi r2, r2, 1
00535c  3b300100  bneq r2, zero, 12
005360  7ab57040  vextracti.s r10, 7(vr1)
005364  5b010000  j 8
005368  7a357240  vextracti.s r10, 7(vr4)
00536c  1b416200  srli r2, r4, 6
005370  1b011100  andi r2, r2, 1
005374  3b300100  bneq r2, zero, 12
005378  fab56040  vextracti.s r11, 6(vr1)
00537c  5b010000  j 8
005380  fa356240  vextracti.s r11, 6(vr4)
005384  1b415200  srli r2, r4, 5
005388  1b011100  andi r2, r2, 1
00538c  3b300100  bneq r2, zero, 12
005390  fab85040  vextracti.s r17, 5(vr1)
005394  5b010000  j 8
005398  fa385240  vextracti.s r17, 5(vr4)
00539c  1b414200  srli r2, r4, 4
0053a0  1b011100  andi r2, r2, 1
0053a4  3b300100  bneq r2, zero, 12
0053a8  7ab34040  vextracti.s r6, 4(vr1)
0053ac  5b010000  j 8
0053b0  7a334240  vextracti.s r6, 4(vr4)
0053b4  1b413200  srli r2, r4, 3
0053b8  1b011100  andi r2, r2, 1
0053bc  3b300100  bneq r2, zero, 12
0053c0  7ab13040  vextracti.s r2, 3(vr1)
0053c4  5b010000  j 8
0053c8  7a313240  vextracti.s r2, 3(vr4)
0053cc  1b492200  srli r18, r4, 2
0053d0  1b091900  andi r18, r18, 1
0053d4  3b300900  bneq r18, zero, 12
0053d8  7ab92040  vextracti.s r18, 2(vr1)
0053dc  5b010000  j 8
0053e0  7a392240  vextracti.s r18, 2(vr4)
0053e4  9b491200  srli r19, r4, 1
0053e8  9b891900  andi r19, r19, 1
0053ec  3be00900  bneq r19, zero, 24
0053f0  fab91040  vextracti.s r19, 1(vr1)
0053f4  1b021200  andi r4, r4, 1
0053f8  37600200  beq r4, zero, 24
0053fc  7a320240  vextracti.s r4, 0(vr4)
005400  db020000  j 20
005404  fa391240  vextracti.s r19, 1(vr4)
005408  1b021200  andi r4, r4, 1
00540c  bb4f02fe  bneq r4, zero, -16
005410  7ab20040  vextracti.s r4, 0(vr1)
005414  92320002  vadd.s.mz vr5{mr1}, zero, vr0
005418  1f100000  addli zero, zero, 1
00541c  fe0100e0  vmmov mr3, zero
005420  17200000  xor zero, zero, zero
005424  ea225236  vor.u.mh vr5{mr3}, r4, vr5
005428  1f220000  addli r4, zero, 2
00542c  fe0102e0  vmmov mr3, r4
005430  1f420000  addli r4, zero, 4
005434  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
005438  fe0102e0  vmmov mr3, r4
00543c  1f021000  addli r4, zero, 8
005440  ea225936  vor.u.mh vr5{mr3}, r18, vr5
005444  fe0102e0  vmmov mr3, r4
005448  ea225136  vor.u.mh vr5{mr3}, r2, vr5
00544c  1f012000  addli r2, zero, 16
005450  fe0101e0  vmmov mr3, r2
005454  1f014000  addli r2, zero, 32
005458  ea225336  vor.u.mh vr5{mr3}, r6, vr5
00545c  fe0101e0  vmmov mr3, r2
005460  1f018000  addli r2, zero, 64
005464  eaa25836  vor.u.mh vr5{mr3}, r17, vr5
005468  fe0101e0  vmmov mr3, r2
00546c  1f010001  addli r2, zero, 128
005470  eaa25536  vor.u.mh vr5{mr3}, r11, vr5
005474  fe0101e0  vmmov mr3, r2
005478  1f010002  addli r2, zero, 256
00547c  ea225536  vor.u.mh vr5{mr3}, r10, vr5
005480  fe0101e0  vmmov mr3, r2
005484  1f010004  addli r2, zero, 512
005488  ea225836  vor.u.mh vr5{mr3}, r16, vr5
00548c  fe0101e0  vmmov mr3, r2
005490  1f010008  addli r2, zero, 1024
005494  eaa25736  vor.u.mh vr5{mr3}, r15, vr5
005498  fe0101e0  vmmov mr3, r2
00549c  1f010010  addli r2, zero, 2048
0054a0  eaa25636  vor.u.mh vr5{mr3}, r13, vr5
0054a4  fe0101e0  vmmov mr3, r2
0054a8  1f018fe9  addli r2, r30, -2880
0054ac  ea225636  vor.u.mh vr5{mr3}, r12, vr5
0054b0  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0054b4  1f010020  addli r2, zero, 4096
0054b8  0a121a02  vmul.f.mz.rn vr4{mr1}, r20, vr1
0054bc  661302c0  vabs.f vr6, vr4
0054c0  eeb041c2  vsrl.s.mz vr1{mr1}, vr3, vr4
0054c4  fe0101e0  vmmov mr3, r2
0054c8  2b810000  lui r2, 8
0054cc  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
0054d0  9f000040  addli r1, zero, 8192
0054d4  ea301702  vand.s.mz vr1{mr1}, r14, vr1
0054d8  fe8100e0  vmmov mr3, r1
0054dc  ab400000  lui r1, 4
0054e0  eaa25336  vor.u.mh vr5{mr3}, r7, vr5
0054e4  fe8100e0  vmmov mr3, r1
0054e8  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
0054ec  6ab24d22  vor.s.mz vr4{mr1}, r27, vr4
0054f0  eaa25236  vor.u.mh vr5{mr3}, r5, vr5
0054f4  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
0054f8  fe8001a0  vmmov r1, mr3
0054fc  fe0101e0  vmmov mr3, r2
005500  92301402  vadd.s.mz vr1{mr1}, r8, vr1
005504  1bc1f000  srli r2, r1, 15
005508  eaa25136  vor.u.mh vr5{mr3}, r3, vr5
00550c  e341efed  loadli.w r3,  -2316(r30)
005510  1b011100  andi r2, r2, 1
005514  46805110  vstore.mh vr5{mr0}, 0(r3)
005518  3b300100  bneq r2, zero, 12
00551c  fab1f040  vextracti.s r3, 15(vr1)
005520  5b010000  j 8
005524  fa31f240  vextracti.s r3, 15(vr4)
005528  1bc1e000  srli r2, r1, 14
00552c  1b011100  andi r2, r2, 1
005530  3b300100  bneq r2, zero, 12
005534  fab2e040  vextracti.s r5, 14(vr1)
005538  5b010000  j 8
00553c  fa32e240  vextracti.s r5, 14(vr4)
005540  1bc1d000  srli r2, r1, 13
005544  1b011100  andi r2, r2, 1
005548  3b300100  bneq r2, zero, 12
00554c  fab3d040  vextracti.s r7, 13(vr1)
005550  5b010000  j 8
005554  fa33d240  vextracti.s r7, 13(vr4)
005558  1bc1c000  srli r2, r1, 12
00555c  1b011100  andi r2, r2, 1
005560  3b300100  bneq r2, zero, 12
005564  7ab2c040  vextracti.s r4, 12(vr1)
005568  5b010000  j 8
00556c  7a32c240  vextracti.s r4, 12(vr4)
005570  1bc1b000  srli r2, r1, 11
005574  1b011100  andi r2, r2, 1
005578  3b300100  bneq r2, zero, 12
00557c  7ab6b040  vextracti.s r12, 11(vr1)
005580  5b010000  j 8
005584  7a36b240  vextracti.s r12, 11(vr4)
005588  1bc1a000  srli r2, r1, 10
00558c  1b011100  andi r2, r2, 1
005590  3b300100  bneq r2, zero, 12
005594  fab6a040  vextracti.s r13, 10(vr1)
005598  5b010000  j 8
00559c  fa36a240  vextracti.s r13, 10(vr4)
0055a0  1bc19000  srli r2, r1, 9
0055a4  1b011100  andi r2, r2, 1
0055a8  3b300100  bneq r2, zero, 12
0055ac  fab79040  vextracti.s r15, 9(vr1)
0055b0  5b010000  j 8
0055b4  fa379240  vextracti.s r15, 9(vr4)
0055b8  1bc18000  srli r2, r1, 8
0055bc  1b011100  andi r2, r2, 1
0055c0  3b300100  bneq r2, zero, 12
0055c4  7ab88040  vextracti.s r16, 8(vr1)
0055c8  5b010000  j 8
0055cc  7a388240  vextracti.s r16, 8(vr4)
0055d0  1bc17000  srli r2, r1, 7
0055d4  1b011100  andi r2, r2, 1
0055d8  3b300100  bneq r2, zero, 12
0055dc  7ab57040  vextracti.s r10, 7(vr1)
0055e0  5b010000  j 8
0055e4  7a357240  vextracti.s r10, 7(vr4)
0055e8  1bc16000  srli r2, r1, 6
0055ec  1b011100  andi r2, r2, 1
0055f0  3b300100  bneq r2, zero, 12
0055f4  fab56040  vextracti.s r11, 6(vr1)
0055f8  5b010000  j 8
0055fc  fa356240  vextracti.s r11, 6(vr4)
005600  1bc15000  srli r2, r1, 5
005604  1b011100  andi r2, r2, 1
005608  3b300100  bneq r2, zero, 12
00560c  fab85040  vextracti.s r17, 5(vr1)
005610  5b010000  j 8
005614  fa385240  vextracti.s r17, 5(vr4)
005618  1bc14000  srli r2, r1, 4
00561c  1b011100  andi r2, r2, 1
005620  3b300100  bneq r2, zero, 12
005624  7ab34040  vextracti.s r6, 4(vr1)
005628  5b010000  j 8
00562c  7a334240  vextracti.s r6, 4(vr4)
005630  1bc13000  srli r2, r1, 3
005634  1b011100  andi r2, r2, 1
005638  3b300100  bneq r2, zero, 12
00563c  7ab13040  vextracti.s r2, 3(vr1)
005640  5b010000  j 8
005644  7a313240  vextracti.s r2, 3(vr4)
005648  1bc92000  srli r18, r1, 2
00564c  1b091900  andi r18, r18, 1
005650  3b300900  bneq r18, zero, 12
005654  7ab92040  vextracti.s r18, 2(vr1)
005658  5b010000  j 8
00565c  7a392240  vextracti.s r18, 2(vr4)
005660  9bc91000  srli r19, r1, 1
005664  9b891900  andi r19, r19, 1
005668  3be00900  bneq r19, zero, 24
00566c  fab91040  vextracti.s r19, 1(vr1)
005670  9b801000  andi r1, r1, 1
005674  37e00000  beq r1, zero, 24
005678  fa300240  vextracti.s r1, 0(vr4)
00567c  db020000  j 20
005680  fa391240  vextracti.s r19, 1(vr4)
005684  9b801000  andi r1, r1, 1
005688  bbcf00fe  bneq r1, zero, -16
00568c  fab00040  vextracti.s r1, 0(vr1)
005690  12320002  vadd.s.mz vr4{mr1}, zero, vr0
005694  1f100000  addli zero, zero, 1
005698  fe0100e0  vmmov mr3, zero
00569c  17200000  xor zero, zero, zero
0056a0  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
0056a4  9f200000  addli r1, zero, 2
0056a8  fe8100e0  vmmov mr3, r1
0056ac  9f400000  addli r1, zero, 4
0056b0  6aa24936  vor.u.mh vr4{mr3}, r19, vr4
0056b4  fe8100e0  vmmov mr3, r1
0056b8  9f001000  addli r1, zero, 8
0056bc  6a224936  vor.u.mh vr4{mr3}, r18, vr4
0056c0  fe8100e0  vmmov mr3, r1
0056c4  9f002000  addli r1, zero, 16
0056c8  6a224136  vor.u.mh vr4{mr3}, r2, vr4
0056cc  fe8100e0  vmmov mr3, r1
0056d0  9f004000  addli r1, zero, 32
0056d4  6a224336  vor.u.mh vr4{mr3}, r6, vr4
0056d8  fe8100e0  vmmov mr3, r1
0056dc  9f008000  addli r1, zero, 64
0056e0  6aa24836  vor.u.mh vr4{mr3}, r17, vr4
0056e4  fe8100e0  vmmov mr3, r1
0056e8  9f000001  addli r1, zero, 128
0056ec  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
0056f0  fe8100e0  vmmov mr3, r1
0056f4  9f000002  addli r1, zero, 256
0056f8  6a224536  vor.u.mh vr4{mr3}, r10, vr4
0056fc  fe8100e0  vmmov mr3, r1
005700  9f000004  addli r1, zero, 512
005704  6a224836  vor.u.mh vr4{mr3}, r16, vr4
005708  fe8100e0  vmmov mr3, r1
00570c  9f000008  addli r1, zero, 1024
005710  6aa24736  vor.u.mh vr4{mr3}, r15, vr4
005714  fe8100e0  vmmov mr3, r1
005718  9f000010  addli r1, zero, 2048
00571c  6aa24636  vor.u.mh vr4{mr3}, r13, vr4
005720  fe8100e0  vmmov mr3, r1
005724  9f000020  addli r1, zero, 4096
005728  6a224636  vor.u.mh vr4{mr3}, r12, vr4
00572c  fe8100e0  vmmov mr3, r1
005730  9f000fea  addli r1, r30, -2816
005734  6a224236  vor.u.mh vr4{mr3}, r4, vr4
005738  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00573c  9f000040  addli r1, zero, 8192
005740  8a121a02  vmul.f.mz.rn vr5{mr1}, r20, vr1
005744  669302c0  vabs.f vr6, vr5
005748  eeb051c2  vsrl.s.mz vr1{mr1}, vr3, vr5
00574c  fe8100e0  vmmov mr3, r1
005750  ab400000  lui r1, 4
005754  6aa24336  vor.u.mh vr4{mr3}, r7, vr4
005758  fe8100e0  vmmov mr3, r1
00575c  ab800000  lui r1, 8
005760  ea301702  vand.s.mz vr1{mr1}, r14, vr1
005764  6aa24236  vor.u.mh vr4{mr3}, r5, vr4
005768  fe8100e0  vmmov mr3, r1
00576c  96b01202  vadd.s.mz vr1{mr1}, vr5, vr1
005770  6aa24136  vor.u.mh vr4{mr3}, r3, vr4
005774  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
005778  6341efed  loadli.w r2,  -2316(r30)
00577c  7e8201a0  vmmov r4, mr3
005780  92301402  vadd.s.mz vr1{mr1}, r8, vr1
005784  9b40f200  srli r1, r4, 15
005788  6af344c0  vsrl.p vr6, r9, vr4
00578c  6ab25d22  vor.s.mz vr4{mr1}, r27, vr5
005790  9b801000  andi r1, r1, 1
005794  46006114  vstore.mh vr6{mr2}, 0(r2)
005798  3bb00000  bneq r1, zero, 12
00579c  fab1f040  vextracti.s r3, 15(vr1)
0057a0  5b010000  j 8
0057a4  fa31f240  vextracti.s r3, 15(vr4)
0057a8  9b40e200  srli r1, r4, 14
0057ac  9b801000  andi r1, r1, 1
0057b0  3bb00000  bneq r1, zero, 12
0057b4  fab2e040  vextracti.s r5, 14(vr1)
0057b8  5b010000  j 8
0057bc  fa32e240  vextracti.s r5, 14(vr4)
0057c0  9b40d200  srli r1, r4, 13
0057c4  9b801000  andi r1, r1, 1
0057c8  3bb00000  bneq r1, zero, 12
0057cc  fab3d040  vextracti.s r7, 13(vr1)
0057d0  5b010000  j 8
0057d4  fa33d240  vextracti.s r7, 13(vr4)
0057d8  9b40c200  srli r1, r4, 12
0057dc  9b801000  andi r1, r1, 1
0057e0  3bb00000  bneq r1, zero, 12
0057e4  fab0c040  vextracti.s r1, 12(vr1)
0057e8  5b010000  j 8
0057ec  fa30c240  vextracti.s r1, 12(vr4)
0057f0  1b41b200  srli r2, r4, 11
0057f4  1b011100  andi r2, r2, 1
0057f8  3b300100  bneq r2, zero, 12
0057fc  7ab6b040  vextracti.s r12, 11(vr1)
005800  5b010000  j 8
005804  7a36b240  vextracti.s r12, 11(vr4)
005808  1b41a200  srli r2, r4, 10
00580c  1b011100  andi r2, r2, 1
005810  3b300100  bneq r2, zero, 12
005814  fab6a040  vextracti.s r13, 10(vr1)
005818  5b010000  j 8
00581c  fa36a240  vextracti.s r13, 10(vr4)
005820  1b419200  srli r2, r4, 9
005824  1b011100  andi r2, r2, 1
005828  3b300100  bneq r2, zero, 12
00582c  fab79040  vextracti.s r15, 9(vr1)
005830  5b010000  j 8
005834  fa379240  vextracti.s r15, 9(vr4)
005838  1b418200  srli r2, r4, 8
00583c  1b011100  andi r2, r2, 1
005840  3b300100  bneq r2, zero, 12
005844  7ab88040  vextracti.s r16, 8(vr1)
005848  5b010000  j 8
00584c  7a388240  vextracti.s r16, 8(vr4)
005850  1b417200  srli r2, r4, 7
005854  1b011100  andi r2, r2, 1
005858  3b300100  bneq r2, zero, 12
00585c  7ab57040  vextracti.s r10, 7(vr1)
005860  5b010000  j 8
005864  7a357240  vextracti.s r10, 7(vr4)
005868  1b416200  srli r2, r4, 6
00586c  1b011100  andi r2, r2, 1
005870  3b300100  bneq r2, zero, 12
005874  fab56040  vextracti.s r11, 6(vr1)
005878  5b010000  j 8
00587c  fa356240  vextracti.s r11, 6(vr4)
005880  1b415200  srli r2, r4, 5
005884  1b011100  andi r2, r2, 1
005888  3b300100  bneq r2, zero, 12
00588c  fab85040  vextracti.s r17, 5(vr1)
005890  5b010000  j 8
005894  fa385240  vextracti.s r17, 5(vr4)
005898  1b414200  srli r2, r4, 4
00589c  1b011100  andi r2, r2, 1
0058a0  3b300100  bneq r2, zero, 12
0058a4  7ab34040  vextracti.s r6, 4(vr1)
0058a8  5b010000  j 8
0058ac  7a334240  vextracti.s r6, 4(vr4)
0058b0  1b413200  srli r2, r4, 3
0058b4  1b011100  andi r2, r2, 1
0058b8  3b300100  bneq r2, zero, 12
0058bc  7ab13040  vextracti.s r2, 3(vr1)
0058c0  5b010000  j 8
0058c4  7a313240  vextracti.s r2, 3(vr4)
0058c8  1b492200  srli r18, r4, 2
0058cc  1b091900  andi r18, r18, 1
0058d0  3b300900  bneq r18, zero, 12
0058d4  7ab92040  vextracti.s r18, 2(vr1)
0058d8  5b010000  j 8
0058dc  7a392240  vextracti.s r18, 2(vr4)
0058e0  9b491200  srli r19, r4, 1
0058e4  9b891900  andi r19, r19, 1
0058e8  3be00900  bneq r19, zero, 24
0058ec  fab91040  vextracti.s r19, 1(vr1)
0058f0  1b021200  andi r4, r4, 1
0058f4  37600200  beq r4, zero, 24
0058f8  7a320240  vextracti.s r4, 0(vr4)
0058fc  db020000  j 20
005900  fa391240  vextracti.s r19, 1(vr4)
005904  1b021200  andi r4, r4, 1
005908  bb4f02fe  bneq r4, zero, -16
00590c  7ab20040  vextracti.s r4, 0(vr1)
005910  92320002  vadd.s.mz vr5{mr1}, zero, vr0
005914  1f100000  addli zero, zero, 1
005918  fe0100e0  vmmov mr3, zero
00591c  17200000  xor zero, zero, zero
005920  ea225236  vor.u.mh vr5{mr3}, r4, vr5
005924  1f220000  addli r4, zero, 2
005928  fe0102e0  vmmov mr3, r4
00592c  1f420000  addli r4, zero, 4
005930  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
005934  fe0102e0  vmmov mr3, r4
005938  1f021000  addli r4, zero, 8
00593c  ea225936  vor.u.mh vr5{mr3}, r18, vr5
005940  fe0102e0  vmmov mr3, r4
005944  ea225136  vor.u.mh vr5{mr3}, r2, vr5
005948  1f012000  addli r2, zero, 16
00594c  fe0101e0  vmmov mr3, r2
005950  1f014000  addli r2, zero, 32
005954  ea225336  vor.u.mh vr5{mr3}, r6, vr5
005958  fe0101e0  vmmov mr3, r2
00595c  1f018000  addli r2, zero, 64
005960  eaa25836  vor.u.mh vr5{mr3}, r17, vr5
005964  fe0101e0  vmmov mr3, r2
005968  1f010001  addli r2, zero, 128
00596c  eaa25536  vor.u.mh vr5{mr3}, r11, vr5
005970  fe0101e0  vmmov mr3, r2
005974  1f010002  addli r2, zero, 256
005978  ea225536  vor.u.mh vr5{mr3}, r10, vr5
00597c  fe0101e0  vmmov mr3, r2
005980  1f010004  addli r2, zero, 512
005984  ea225836  vor.u.mh vr5{mr3}, r16, vr5
005988  fe0101e0  vmmov mr3, r2
00598c  1f010008  addli r2, zero, 1024
005990  eaa25736  vor.u.mh vr5{mr3}, r15, vr5
005994  fe0101e0  vmmov mr3, r2
005998  1f010010  addli r2, zero, 2048
00599c  eaa25636  vor.u.mh vr5{mr3}, r13, vr5
0059a0  fe0101e0  vmmov mr3, r2
0059a4  1f018fea  addli r2, r30, -2752
0059a8  ea225636  vor.u.mh vr5{mr3}, r12, vr5
0059ac  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0059b0  1f010020  addli r2, zero, 4096
0059b4  0a121a02  vmul.f.mz.rn vr4{mr1}, r20, vr1
0059b8  661302c0  vabs.f vr6, vr4
0059bc  eeb041c2  vsrl.s.mz vr1{mr1}, vr3, vr4
0059c0  fe0101e0  vmmov mr3, r2
0059c4  2b810000  lui r2, 8
0059c8  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
0059cc  9f000040  addli r1, zero, 8192
0059d0  ea301702  vand.s.mz vr1{mr1}, r14, vr1
0059d4  fe8100e0  vmmov mr3, r1
0059d8  ab400000  lui r1, 4
0059dc  eaa25336  vor.u.mh vr5{mr3}, r7, vr5
0059e0  fe8100e0  vmmov mr3, r1
0059e4  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
0059e8  6ab24d22  vor.s.mz vr4{mr1}, r27, vr4
0059ec  eaa25236  vor.u.mh vr5{mr3}, r5, vr5
0059f0  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
0059f4  fe8001a0  vmmov r1, mr3
0059f8  fe0101e0  vmmov mr3, r2
0059fc  92301402  vadd.s.mz vr1{mr1}, r8, vr1
005a00  1bc1f000  srli r2, r1, 15
005a04  eaa25136  vor.u.mh vr5{mr3}, r3, vr5
005a08  e301ffed  loadli.w r3,  -2312(r30)
005a0c  1b011100  andi r2, r2, 1
005a10  46805110  vstore.mh vr5{mr0}, 0(r3)
005a14  3b300100  bneq r2, zero, 12
005a18  fab1f040  vextracti.s r3, 15(vr1)
005a1c  5b010000  j 8
005a20  fa31f240  vextracti.s r3, 15(vr4)
005a24  1bc1e000  srli r2, r1, 14
005a28  1b011100  andi r2, r2, 1
005a2c  3b300100  bneq r2, zero, 12
005a30  fab2e040  vextracti.s r5, 14(vr1)
005a34  5b010000  j 8
005a38  fa32e240  vextracti.s r5, 14(vr4)
005a3c  1bc1d000  srli r2, r1, 13
005a40  1b011100  andi r2, r2, 1
005a44  3b300100  bneq r2, zero, 12
005a48  fab3d040  vextracti.s r7, 13(vr1)
005a4c  5b010000  j 8
005a50  fa33d240  vextracti.s r7, 13(vr4)
005a54  1bc1c000  srli r2, r1, 12
005a58  1b011100  andi r2, r2, 1
005a5c  3b300100  bneq r2, zero, 12
005a60  7ab2c040  vextracti.s r4, 12(vr1)
005a64  5b010000  j 8
005a68  7a32c240  vextracti.s r4, 12(vr4)
005a6c  1bc1b000  srli r2, r1, 11
005a70  1b011100  andi r2, r2, 1
005a74  3b300100  bneq r2, zero, 12
005a78  7ab6b040  vextracti.s r12, 11(vr1)
005a7c  5b010000  j 8
005a80  7a36b240  vextracti.s r12, 11(vr4)
005a84  1bc1a000  srli r2, r1, 10
005a88  1b011100  andi r2, r2, 1
005a8c  3b300100  bneq r2, zero, 12
005a90  fab6a040  vextracti.s r13, 10(vr1)
005a94  5b010000  j 8
005a98  fa36a240  vextracti.s r13, 10(vr4)
005a9c  1bc19000  srli r2, r1, 9
005aa0  1b011100  andi r2, r2, 1
005aa4  3b300100  bneq r2, zero, 12
005aa8  fab79040  vextracti.s r15, 9(vr1)
005aac  5b010000  j 8
005ab0  fa379240  vextracti.s r15, 9(vr4)
005ab4  1bc18000  srli r2, r1, 8
005ab8  1b011100  andi r2, r2, 1
005abc  3b300100  bneq r2, zero, 12
005ac0  7ab88040  vextracti.s r16, 8(vr1)
005ac4  5b010000  j 8
005ac8  7a388240  vextracti.s r16, 8(vr4)
005acc  1bc17000  srli r2, r1, 7
005ad0  1b011100  andi r2, r2, 1
005ad4  3b300100  bneq r2, zero, 12
005ad8  7ab57040  vextracti.s r10, 7(vr1)
005adc  5b010000  j 8
005ae0  7a357240  vextracti.s r10, 7(vr4)
005ae4  1bc16000  srli r2, r1, 6
005ae8  1b011100  andi r2, r2, 1
005aec  3b300100  bneq r2, zero, 12
005af0  fab56040  vextracti.s r11, 6(vr1)
005af4  5b010000  j 8
005af8  fa356240  vextracti.s r11, 6(vr4)
005afc  1bc15000  srli r2, r1, 5
005b00  1b011100  andi r2, r2, 1
005b04  3b300100  bneq r2, zero, 12
005b08  fab85040  vextracti.s r17, 5(vr1)
005b0c  5b010000  j 8
005b10  fa385240  vextracti.s r17, 5(vr4)
005b14  1bc14000  srli r2, r1, 4
005b18  1b011100  andi r2, r2, 1
005b1c  3b300100  bneq r2, zero, 12
005b20  7ab34040  vextracti.s r6, 4(vr1)
005b24  5b010000  j 8
005b28  7a334240  vextracti.s r6, 4(vr4)
005b2c  1bc13000  srli r2, r1, 3
005b30  1b011100  andi r2, r2, 1
005b34  3b300100  bneq r2, zero, 12
005b38  7ab13040  vextracti.s r2, 3(vr1)
005b3c  5b010000  j 8
005b40  7a313240  vextracti.s r2, 3(vr4)
005b44  1bc92000  srli r18, r1, 2
005b48  1b091900  andi r18, r18, 1
005b4c  3b300900  bneq r18, zero, 12
005b50  7ab92040  vextracti.s r18, 2(vr1)
005b54  5b010000  j 8
005b58  7a392240  vextracti.s r18, 2(vr4)
005b5c  9bc91000  srli r19, r1, 1
005b60  9b891900  andi r19, r19, 1
005b64  3be00900  bneq r19, zero, 24
005b68  fab91040  vextracti.s r19, 1(vr1)
005b6c  9b801000  andi r1, r1, 1
005b70  37e00000  beq r1, zero, 24
005b74  fa300240  vextracti.s r1, 0(vr4)
005b78  db020000  j 20
005b7c  fa391240  vextracti.s r19, 1(vr4)
005b80  9b801000  andi r1, r1, 1
005b84  bbcf00fe  bneq r1, zero, -16
005b88  fab00040  vextracti.s r1, 0(vr1)
005b8c  12320002  vadd.s.mz vr4{mr1}, zero, vr0
005b90  1f100000  addli zero, zero, 1
005b94  fe0100e0  vmmov mr3, zero
005b98  17200000  xor zero, zero, zero
005b9c  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
005ba0  9f200000  addli r1, zero, 2
005ba4  fe8100e0  vmmov mr3, r1
005ba8  9f400000  addli r1, zero, 4
005bac  6aa24936  vor.u.mh vr4{mr3}, r19, vr4
005bb0  fe8100e0  vmmov mr3, r1
005bb4  9f001000  addli r1, zero, 8
005bb8  6a224936  vor.u.mh vr4{mr3}, r18, vr4
005bbc  fe8100e0  vmmov mr3, r1
005bc0  9f002000  addli r1, zero, 16
005bc4  6a224136  vor.u.mh vr4{mr3}, r2, vr4
005bc8  fe8100e0  vmmov mr3, r1
005bcc  9f004000  addli r1, zero, 32
005bd0  6a224336  vor.u.mh vr4{mr3}, r6, vr4
005bd4  fe8100e0  vmmov mr3, r1
005bd8  9f008000  addli r1, zero, 64
005bdc  6aa24836  vor.u.mh vr4{mr3}, r17, vr4
005be0  fe8100e0  vmmov mr3, r1
005be4  9f000001  addli r1, zero, 128
005be8  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
005bec  fe8100e0  vmmov mr3, r1
005bf0  9f000002  addli r1, zero, 256
005bf4  6a224536  vor.u.mh vr4{mr3}, r10, vr4
005bf8  fe8100e0  vmmov mr3, r1
005bfc  9f000004  addli r1, zero, 512
005c00  6a224836  vor.u.mh vr4{mr3}, r16, vr4
005c04  fe8100e0  vmmov mr3, r1
005c08  9f000008  addli r1, zero, 1024
005c0c  6aa24736  vor.u.mh vr4{mr3}, r15, vr4
005c10  fe8100e0  vmmov mr3, r1
005c14  9f000010  addli r1, zero, 2048
005c18  6aa24636  vor.u.mh vr4{mr3}, r13, vr4
005c1c  fe8100e0  vmmov mr3, r1
005c20  9f000020  addli r1, zero, 4096
005c24  6a224636  vor.u.mh vr4{mr3}, r12, vr4
005c28  fe8100e0  vmmov mr3, r1
005c2c  9f000feb  addli r1, r30, -2688
005c30  6a224236  vor.u.mh vr4{mr3}, r4, vr4
005c34  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
005c38  9f000040  addli r1, zero, 8192
005c3c  8a121a02  vmul.f.mz.rn vr5{mr1}, r20, vr1
005c40  669302c0  vabs.f vr6, vr5
005c44  eeb051c2  vsrl.s.mz vr1{mr1}, vr3, vr5
005c48  fe8100e0  vmmov mr3, r1
005c4c  ab400000  lui r1, 4
005c50  6aa24336  vor.u.mh vr4{mr3}, r7, vr4
005c54  fe8100e0  vmmov mr3, r1
005c58  ab800000  lui r1, 8
005c5c  ea301702  vand.s.mz vr1{mr1}, r14, vr1
005c60  6aa24236  vor.u.mh vr4{mr3}, r5, vr4
005c64  fe8100e0  vmmov mr3, r1
005c68  96b01202  vadd.s.mz vr1{mr1}, vr5, vr1
005c6c  6aa24136  vor.u.mh vr4{mr3}, r3, vr4
005c70  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
005c74  6301ffed  loadli.w r2,  -2312(r30)
005c78  7e8201a0  vmmov r4, mr3
005c7c  92301402  vadd.s.mz vr1{mr1}, r8, vr1
005c80  9b40f200  srli r1, r4, 15
005c84  6af344c0  vsrl.p vr6, r9, vr4
005c88  6ab25d22  vor.s.mz vr4{mr1}, r27, vr5
005c8c  9b801000  andi r1, r1, 1
005c90  46006114  vstore.mh vr6{mr2}, 0(r2)
005c94  3bb00000  bneq r1, zero, 12
005c98  fab1f040  vextracti.s r3, 15(vr1)
005c9c  5b010000  j 8
005ca0  fa31f240  vextracti.s r3, 15(vr4)
005ca4  9b40e200  srli r1, r4, 14
005ca8  9b801000  andi r1, r1, 1
005cac  3bb00000  bneq r1, zero, 12
005cb0  fab2e040  vextracti.s r5, 14(vr1)
005cb4  5b010000  j 8
005cb8  fa32e240  vextracti.s r5, 14(vr4)
005cbc  9b40d200  srli r1, r4, 13
005cc0  9b801000  andi r1, r1, 1
005cc4  3bb00000  bneq r1, zero, 12
005cc8  fab3d040  vextracti.s r7, 13(vr1)
005ccc  5b010000  j 8
005cd0  fa33d240  vextracti.s r7, 13(vr4)
005cd4  9b40c200  srli r1, r4, 12
005cd8  9b801000  andi r1, r1, 1
005cdc  3bb00000  bneq r1, zero, 12
005ce0  fab0c040  vextracti.s r1, 12(vr1)
005ce4  5b010000  j 8
005ce8  fa30c240  vextracti.s r1, 12(vr4)
005cec  1b41b200  srli r2, r4, 11
005cf0  1b011100  andi r2, r2, 1
005cf4  3b300100  bneq r2, zero, 12
005cf8  fab5b040  vextracti.s r11, 11(vr1)
005cfc  5b010000  j 8
005d00  fa35b240  vextracti.s r11, 11(vr4)
005d04  1b41a200  srli r2, r4, 10
005d08  1b011100  andi r2, r2, 1
005d0c  3b300100  bneq r2, zero, 12
005d10  7ab6a040  vextracti.s r12, 10(vr1)
005d14  5b010000  j 8
005d18  7a36a240  vextracti.s r12, 10(vr4)
005d1c  1b419200  srli r2, r4, 9
005d20  1b011100  andi r2, r2, 1
005d24  3b300100  bneq r2, zero, 12
005d28  fab69040  vextracti.s r13, 9(vr1)
005d2c  5b010000  j 8
005d30  fa369240  vextracti.s r13, 9(vr4)
005d34  1b418200  srli r2, r4, 8
005d38  1b011100  andi r2, r2, 1
005d3c  3b300100  bneq r2, zero, 12
005d40  fab78040  vextracti.s r15, 8(vr1)
005d44  5b010000  j 8
005d48  fa378240  vextracti.s r15, 8(vr4)
005d4c  1b417200  srli r2, r4, 7
005d50  1b011100  andi r2, r2, 1
005d54  3b300100  bneq r2, zero, 12
005d58  7ab57040  vextracti.s r10, 7(vr1)
005d5c  5b010000  j 8
005d60  7a357240  vextracti.s r10, 7(vr4)
005d64  1b416200  srli r2, r4, 6
005d68  1b011100  andi r2, r2, 1
005d6c  3b300100  bneq r2, zero, 12
005d70  7ab86040  vextracti.s r16, 6(vr1)
005d74  5b010000  j 8
005d78  7a386240  vextracti.s r16, 6(vr4)
005d7c  1b415200  srli r2, r4, 5
005d80  1b011100  andi r2, r2, 1
005d84  3b300100  bneq r2, zero, 12
005d88  fab85040  vextracti.s r17, 5(vr1)
005d8c  5b010000  j 8
005d90  fa385240  vextracti.s r17, 5(vr4)
005d94  1b414200  srli r2, r4, 4
005d98  1b011100  andi r2, r2, 1
005d9c  3b300100  bneq r2, zero, 12
005da0  7ab34040  vextracti.s r6, 4(vr1)
005da4  5b010000  j 8
005da8  7a334240  vextracti.s r6, 4(vr4)
005dac  1b413200  srli r2, r4, 3
005db0  1b011100  andi r2, r2, 1
005db4  3b300100  bneq r2, zero, 12
005db8  7ab13040  vextracti.s r2, 3(vr1)
005dbc  5b010000  j 8
005dc0  7a313240  vextracti.s r2, 3(vr4)
005dc4  1b492200  srli r18, r4, 2
005dc8  1b091900  andi r18, r18, 1
005dcc  3b300900  bneq r18, zero, 12
005dd0  7ab92040  vextracti.s r18, 2(vr1)
005dd4  5b010000  j 8
005dd8  7a392240  vextracti.s r18, 2(vr4)
005ddc  9b491200  srli r19, r4, 1
005de0  9b891900  andi r19, r19, 1
005de4  3be00900  bneq r19, zero, 24
005de8  fab91040  vextracti.s r19, 1(vr1)
005dec  1b021200  andi r4, r4, 1
005df0  37600200  beq r4, zero, 24
005df4  7a320240  vextracti.s r4, 0(vr4)
005df8  db020000  j 20
005dfc  fa391240  vextracti.s r19, 1(vr4)
005e00  1b021200  andi r4, r4, 1
005e04  bb4f02fe  bneq r4, zero, -16
005e08  7ab20040  vextracti.s r4, 0(vr1)
005e0c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
005e10  1f100000  addli zero, zero, 1
005e14  fe0100e0  vmmov mr3, zero
005e18  17200000  xor zero, zero, zero
005e1c  ea225236  vor.u.mh vr5{mr3}, r4, vr5
005e20  1f220000  addli r4, zero, 2
005e24  fe0102e0  vmmov mr3, r4
005e28  1f420000  addli r4, zero, 4
005e2c  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
005e30  fe0102e0  vmmov mr3, r4
005e34  1f021000  addli r4, zero, 8
005e38  ea225936  vor.u.mh vr5{mr3}, r18, vr5
005e3c  fe0102e0  vmmov mr3, r4
005e40  ea225136  vor.u.mh vr5{mr3}, r2, vr5
005e44  1f012000  addli r2, zero, 16
005e48  fe0101e0  vmmov mr3, r2
005e4c  1f014000  addli r2, zero, 32
005e50  ea225336  vor.u.mh vr5{mr3}, r6, vr5
005e54  fe0101e0  vmmov mr3, r2
005e58  1f018000  addli r2, zero, 64
005e5c  eaa25836  vor.u.mh vr5{mr3}, r17, vr5
005e60  fe0101e0  vmmov mr3, r2
005e64  1f010001  addli r2, zero, 128
005e68  ea225836  vor.u.mh vr5{mr3}, r16, vr5
005e6c  fe0101e0  vmmov mr3, r2
005e70  1f010002  addli r2, zero, 256
005e74  ea225536  vor.u.mh vr5{mr3}, r10, vr5
005e78  fe0101e0  vmmov mr3, r2
005e7c  1f010004  addli r2, zero, 512
005e80  eaa25736  vor.u.mh vr5{mr3}, r15, vr5
005e84  fe0101e0  vmmov mr3, r2
005e88  1f010008  addli r2, zero, 1024
005e8c  eaa25636  vor.u.mh vr5{mr3}, r13, vr5
005e90  fe0101e0  vmmov mr3, r2
005e94  1f010010  addli r2, zero, 2048
005e98  ea225636  vor.u.mh vr5{mr3}, r12, vr5
005e9c  fe0101e0  vmmov mr3, r2
005ea0  1f018feb  addli r2, r30, -2624
005ea4  eaa25536  vor.u.mh vr5{mr3}, r11, vr5
005ea8  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
005eac  1f010020  addli r2, zero, 4096
005eb0  0a121a02  vmul.f.mz.rn vr4{mr1}, r20, vr1
005eb4  661302c0  vabs.f vr6, vr4
005eb8  eeb041c2  vsrl.s.mz vr1{mr1}, vr3, vr4
005ebc  fe0101e0  vmmov mr3, r2
005ec0  2b810000  lui r2, 8
005ec4  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
005ec8  9f000040  addli r1, zero, 8192
005ecc  ea301702  vand.s.mz vr1{mr1}, r14, vr1
005ed0  fe8100e0  vmmov mr3, r1
005ed4  ab400000  lui r1, 4
005ed8  eaa25336  vor.u.mh vr5{mr3}, r7, vr5
005edc  fe8100e0  vmmov mr3, r1
005ee0  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
005ee4  6ab24d22  vor.s.mz vr4{mr1}, r27, vr4
005ee8  eaa25236  vor.u.mh vr5{mr3}, r5, vr5
005eec  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
005ef0  fe8001a0  vmmov r1, mr3
005ef4  fe0101e0  vmmov mr3, r2
005ef8  92301402  vadd.s.mz vr1{mr1}, r8, vr1
005efc  1bc1f000  srli r2, r1, 15
005f00  eaa25136  vor.u.mh vr5{mr3}, r3, vr5
005f04  e341ffed  loadli.w r3,  -2308(r30)
005f08  1b011100  andi r2, r2, 1
005f0c  46805110  vstore.mh vr5{mr0}, 0(r3)
005f10  3b300100  bneq r2, zero, 12
005f14  fab1f040  vextracti.s r3, 15(vr1)
005f18  5b010000  j 8
005f1c  fa31f240  vextracti.s r3, 15(vr4)
005f20  1bc1e000  srli r2, r1, 14
005f24  1b011100  andi r2, r2, 1
005f28  3b300100  bneq r2, zero, 12
005f2c  fab2e040  vextracti.s r5, 14(vr1)
005f30  5b010000  j 8
005f34  fa32e240  vextracti.s r5, 14(vr4)
005f38  1bc1d000  srli r2, r1, 13
005f3c  1b011100  andi r2, r2, 1
005f40  3b300100  bneq r2, zero, 12
005f44  fab3d040  vextracti.s r7, 13(vr1)
005f48  5b010000  j 8
005f4c  fa33d240  vextracti.s r7, 13(vr4)
005f50  1bc1c000  srli r2, r1, 12
005f54  1b011100  andi r2, r2, 1
005f58  3b300100  bneq r2, zero, 12
005f5c  7ab2c040  vextracti.s r4, 12(vr1)
005f60  5b010000  j 8
005f64  7a32c240  vextracti.s r4, 12(vr4)
005f68  1bc1b000  srli r2, r1, 11
005f6c  1b011100  andi r2, r2, 1
005f70  3b300100  bneq r2, zero, 12
005f74  fab5b040  vextracti.s r11, 11(vr1)
005f78  5b010000  j 8
005f7c  fa35b240  vextracti.s r11, 11(vr4)
005f80  1bc1a000  srli r2, r1, 10
005f84  1b011100  andi r2, r2, 1
005f88  3b300100  bneq r2, zero, 12
005f8c  7ab6a040  vextracti.s r12, 10(vr1)
005f90  5b010000  j 8
005f94  7a36a240  vextracti.s r12, 10(vr4)
005f98  1bc19000  srli r2, r1, 9
005f9c  1b011100  andi r2, r2, 1
005fa0  3b300100  bneq r2, zero, 12
005fa4  fab69040  vextracti.s r13, 9(vr1)
005fa8  5b010000  j 8
005fac  fa369240  vextracti.s r13, 9(vr4)
005fb0  1bc18000  srli r2, r1, 8
005fb4  1b011100  andi r2, r2, 1
005fb8  3b300100  bneq r2, zero, 12
005fbc  fab78040  vextracti.s r15, 8(vr1)
005fc0  5b010000  j 8
005fc4  fa378240  vextracti.s r15, 8(vr4)
005fc8  1bc17000  srli r2, r1, 7
005fcc  1b011100  andi r2, r2, 1
005fd0  3b300100  bneq r2, zero, 12
005fd4  7ab57040  vextracti.s r10, 7(vr1)
005fd8  5b010000  j 8
005fdc  7a357240  vextracti.s r10, 7(vr4)
005fe0  1bc16000  srli r2, r1, 6
005fe4  1b011100  andi r2, r2, 1
005fe8  3b300100  bneq r2, zero, 12
005fec  7ab86040  vextracti.s r16, 6(vr1)
005ff0  5b010000  j 8
005ff4  7a386240  vextracti.s r16, 6(vr4)
005ff8  1bc15000  srli r2, r1, 5
005ffc  1b011100  andi r2, r2, 1
006000  3b300100  bneq r2, zero, 12
006004  fab85040  vextracti.s r17, 5(vr1)
006008  5b010000  j 8
00600c  fa385240  vextracti.s r17, 5(vr4)
006010  1bc14000  srli r2, r1, 4
006014  1b011100  andi r2, r2, 1
006018  3b300100  bneq r2, zero, 12
00601c  7ab34040  vextracti.s r6, 4(vr1)
006020  5b010000  j 8
006024  7a334240  vextracti.s r6, 4(vr4)
006028  1bc13000  srli r2, r1, 3
00602c  1b011100  andi r2, r2, 1
006030  3b300100  bneq r2, zero, 12
006034  7ab13040  vextracti.s r2, 3(vr1)
006038  5b010000  j 8
00603c  7a313240  vextracti.s r2, 3(vr4)
006040  1bc92000  srli r18, r1, 2
006044  1b091900  andi r18, r18, 1
006048  3b300900  bneq r18, zero, 12
00604c  7ab92040  vextracti.s r18, 2(vr1)
006050  5b010000  j 8
006054  7a392240  vextracti.s r18, 2(vr4)
006058  9bc91000  srli r19, r1, 1
00605c  9b891900  andi r19, r19, 1
006060  3be00900  bneq r19, zero, 24
006064  fab91040  vextracti.s r19, 1(vr1)
006068  9b801000  andi r1, r1, 1
00606c  37e00000  beq r1, zero, 24
006070  fa300240  vextracti.s r1, 0(vr4)
006074  db020000  j 20
006078  fa391240  vextracti.s r19, 1(vr4)
00607c  9b801000  andi r1, r1, 1
006080  bbcf00fe  bneq r1, zero, -16
006084  fab00040  vextracti.s r1, 0(vr1)
006088  12320002  vadd.s.mz vr4{mr1}, zero, vr0
00608c  1f100000  addli zero, zero, 1
006090  fe0100e0  vmmov mr3, zero
006094  17200000  xor zero, zero, zero
006098  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
00609c  9f200000  addli r1, zero, 2
0060a0  fe8100e0  vmmov mr3, r1
0060a4  9f400000  addli r1, zero, 4
0060a8  6aa24936  vor.u.mh vr4{mr3}, r19, vr4
0060ac  fe8100e0  vmmov mr3, r1
0060b0  9f001000  addli r1, zero, 8
0060b4  6a224936  vor.u.mh vr4{mr3}, r18, vr4
0060b8  fe8100e0  vmmov mr3, r1
0060bc  9f002000  addli r1, zero, 16
0060c0  6a224136  vor.u.mh vr4{mr3}, r2, vr4
0060c4  fe8100e0  vmmov mr3, r1
0060c8  9f004000  addli r1, zero, 32
0060cc  6a224336  vor.u.mh vr4{mr3}, r6, vr4
0060d0  fe8100e0  vmmov mr3, r1
0060d4  9f008000  addli r1, zero, 64
0060d8  6aa24836  vor.u.mh vr4{mr3}, r17, vr4
0060dc  fe8100e0  vmmov mr3, r1
0060e0  9f000001  addli r1, zero, 128
0060e4  6a224836  vor.u.mh vr4{mr3}, r16, vr4
0060e8  fe8100e0  vmmov mr3, r1
0060ec  9f000002  addli r1, zero, 256
0060f0  6a224536  vor.u.mh vr4{mr3}, r10, vr4
0060f4  fe8100e0  vmmov mr3, r1
0060f8  9f000004  addli r1, zero, 512
0060fc  6aa24736  vor.u.mh vr4{mr3}, r15, vr4
006100  fe8100e0  vmmov mr3, r1
006104  9f000008  addli r1, zero, 1024
006108  6aa24636  vor.u.mh vr4{mr3}, r13, vr4
00610c  fe8100e0  vmmov mr3, r1
006110  9f000010  addli r1, zero, 2048
006114  6a224636  vor.u.mh vr4{mr3}, r12, vr4
006118  fe8100e0  vmmov mr3, r1
00611c  9f000020  addli r1, zero, 4096
006120  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
006124  fe8100e0  vmmov mr3, r1
006128  9f000fec  addli r1, r30, -2560
00612c  6a224236  vor.u.mh vr4{mr3}, r4, vr4
006130  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
006134  9f000040  addli r1, zero, 8192
006138  8a121a02  vmul.f.mz.rn vr5{mr1}, r20, vr1
00613c  669302c0  vabs.f vr6, vr5
006140  eeb051c2  vsrl.s.mz vr1{mr1}, vr3, vr5
006144  fe8100e0  vmmov mr3, r1
006148  ab400000  lui r1, 4
00614c  6aa24336  vor.u.mh vr4{mr3}, r7, vr4
006150  fe8100e0  vmmov mr3, r1
006154  ab800000  lui r1, 8
006158  ea301702  vand.s.mz vr1{mr1}, r14, vr1
00615c  6aa24236  vor.u.mh vr4{mr3}, r5, vr4
006160  fe8100e0  vmmov mr3, r1
006164  96b01202  vadd.s.mz vr1{mr1}, vr5, vr1
006168  6aa24136  vor.u.mh vr4{mr3}, r3, vr4
00616c  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
006170  6341ffed  loadli.w r2,  -2308(r30)
006174  7e8201a0  vmmov r4, mr3
006178  92301402  vadd.s.mz vr1{mr1}, r8, vr1
00617c  9b40f200  srli r1, r4, 15
006180  6af344c0  vsrl.p vr6, r9, vr4
006184  6ab25d22  vor.s.mz vr4{mr1}, r27, vr5
006188  9b801000  andi r1, r1, 1
00618c  46006114  vstore.mh vr6{mr2}, 0(r2)
006190  3bb00000  bneq r1, zero, 12
006194  fab1f040  vextracti.s r3, 15(vr1)
006198  5b010000  j 8
00619c  fa31f240  vextracti.s r3, 15(vr4)
0061a0  9b40e200  srli r1, r4, 14
0061a4  9b801000  andi r1, r1, 1
0061a8  3bb00000  bneq r1, zero, 12
0061ac  fab2e040  vextracti.s r5, 14(vr1)
0061b0  5b010000  j 8
0061b4  fa32e240  vextracti.s r5, 14(vr4)
0061b8  9b40d200  srli r1, r4, 13
0061bc  9b801000  andi r1, r1, 1
0061c0  3bb00000  bneq r1, zero, 12
0061c4  fab3d040  vextracti.s r7, 13(vr1)
0061c8  5b010000  j 8
0061cc  fa33d240  vextracti.s r7, 13(vr4)
0061d0  9b40c200  srli r1, r4, 12
0061d4  9b801000  andi r1, r1, 1
0061d8  3bb00000  bneq r1, zero, 12
0061dc  fab0c040  vextracti.s r1, 12(vr1)
0061e0  5b010000  j 8
0061e4  fa30c240  vextracti.s r1, 12(vr4)
0061e8  1b41b200  srli r2, r4, 11
0061ec  1b011100  andi r2, r2, 1
0061f0  3b300100  bneq r2, zero, 12
0061f4  7ab5b040  vextracti.s r10, 11(vr1)
0061f8  5b010000  j 8
0061fc  7a35b240  vextracti.s r10, 11(vr4)
006200  1b41a200  srli r2, r4, 10
006204  1b011100  andi r2, r2, 1
006208  3b300100  bneq r2, zero, 12
00620c  fab5a040  vextracti.s r11, 10(vr1)
006210  5b010000  j 8
006214  fa35a240  vextracti.s r11, 10(vr4)
006218  1b419200  srli r2, r4, 9
00621c  1b011100  andi r2, r2, 1
006220  3b300100  bneq r2, zero, 12
006224  7ab69040  vextracti.s r12, 9(vr1)
006228  5b010000  j 8
00622c  7a369240  vextracti.s r12, 9(vr4)
006230  1b418200  srli r2, r4, 8
006234  1b011100  andi r2, r2, 1
006238  3b300100  bneq r2, zero, 12
00623c  fab68040  vextracti.s r13, 8(vr1)
006240  5b010000  j 8
006244  fa368240  vextracti.s r13, 8(vr4)
006248  1b417200  srli r2, r4, 7
00624c  1b011100  andi r2, r2, 1
006250  3b300100  bneq r2, zero, 12
006254  fab77040  vextracti.s r15, 7(vr1)
006258  5b010000  j 8
00625c  fa377240  vextracti.s r15, 7(vr4)
006260  1b416200  srli r2, r4, 6
006264  1b011100  andi r2, r2, 1
006268  3b300100  bneq r2, zero, 12
00626c  7ab86040  vextracti.s r16, 6(vr1)
006270  5b010000  j 8
006274  7a386240  vextracti.s r16, 6(vr4)
006278  1b415200  srli r2, r4, 5
00627c  1b011100  andi r2, r2, 1
006280  3b300100  bneq r2, zero, 12
006284  fab85040  vextracti.s r17, 5(vr1)
006288  5b010000  j 8
00628c  fa385240  vextracti.s r17, 5(vr4)
006290  1b414200  srli r2, r4, 4
006294  1b011100  andi r2, r2, 1
006298  3b300100  bneq r2, zero, 12
00629c  7ab34040  vextracti.s r6, 4(vr1)
0062a0  5b010000  j 8
0062a4  7a334240  vextracti.s r6, 4(vr4)
0062a8  1b413200  srli r2, r4, 3
0062ac  1b011100  andi r2, r2, 1
0062b0  3b300100  bneq r2, zero, 12
0062b4  7ab13040  vextracti.s r2, 3(vr1)
0062b8  5b010000  j 8
0062bc  7a313240  vextracti.s r2, 3(vr4)
0062c0  1b492200  srli r18, r4, 2
0062c4  1b091900  andi r18, r18, 1
0062c8  3b300900  bneq r18, zero, 12
0062cc  7ab92040  vextracti.s r18, 2(vr1)
0062d0  5b010000  j 8
0062d4  7a392240  vextracti.s r18, 2(vr4)
0062d8  9b491200  srli r19, r4, 1
0062dc  9b891900  andi r19, r19, 1
0062e0  3be00900  bneq r19, zero, 24
0062e4  fab91040  vextracti.s r19, 1(vr1)
0062e8  1b021200  andi r4, r4, 1
0062ec  37600200  beq r4, zero, 24
0062f0  7a320240  vextracti.s r4, 0(vr4)
0062f4  db020000  j 20
0062f8  fa391240  vextracti.s r19, 1(vr4)
0062fc  1b021200  andi r4, r4, 1
006300  bb4f02fe  bneq r4, zero, -16
006304  7ab20040  vextracti.s r4, 0(vr1)
006308  92320002  vadd.s.mz vr5{mr1}, zero, vr0
00630c  1f100000  addli zero, zero, 1
006310  fe0100e0  vmmov mr3, zero
006314  17200000  xor zero, zero, zero
006318  ea225236  vor.u.mh vr5{mr3}, r4, vr5
00631c  1f220000  addli r4, zero, 2
006320  fe0102e0  vmmov mr3, r4
006324  1f420000  addli r4, zero, 4
006328  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
00632c  fe0102e0  vmmov mr3, r4
006330  1f021000  addli r4, zero, 8
006334  ea225936  vor.u.mh vr5{mr3}, r18, vr5
006338  fe0102e0  vmmov mr3, r4
00633c  ea225136  vor.u.mh vr5{mr3}, r2, vr5
006340  1f012000  addli r2, zero, 16
006344  fe0101e0  vmmov mr3, r2
006348  1f014000  addli r2, zero, 32
00634c  ea225336  vor.u.mh vr5{mr3}, r6, vr5
006350  fe0101e0  vmmov mr3, r2
006354  1f018000  addli r2, zero, 64
006358  eaa25836  vor.u.mh vr5{mr3}, r17, vr5
00635c  fe0101e0  vmmov mr3, r2
006360  1f010001  addli r2, zero, 128
006364  ea225836  vor.u.mh vr5{mr3}, r16, vr5
006368  fe0101e0  vmmov mr3, r2
00636c  1f010002  addli r2, zero, 256
006370  eaa25736  vor.u.mh vr5{mr3}, r15, vr5
006374  fe0101e0  vmmov mr3, r2
006378  1f010004  addli r2, zero, 512
00637c  eaa25636  vor.u.mh vr5{mr3}, r13, vr5
006380  fe0101e0  vmmov mr3, r2
006384  1f010008  addli r2, zero, 1024
006388  ea225636  vor.u.mh vr5{mr3}, r12, vr5
00638c  fe0101e0  vmmov mr3, r2
006390  1f010010  addli r2, zero, 2048
006394  eaa25536  vor.u.mh vr5{mr3}, r11, vr5
006398  fe0101e0  vmmov mr3, r2
00639c  1f018fec  addli r2, r30, -2496
0063a0  ea225536  vor.u.mh vr5{mr3}, r10, vr5
0063a4  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0063a8  1f010020  addli r2, zero, 4096
0063ac  0a121a02  vmul.f.mz.rn vr4{mr1}, r20, vr1
0063b0  661302c0  vabs.f vr6, vr4
0063b4  eeb041c2  vsrl.s.mz vr1{mr1}, vr3, vr4
0063b8  fe0101e0  vmmov mr3, r2
0063bc  2b810000  lui r2, 8
0063c0  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
0063c4  9f000040  addli r1, zero, 8192
0063c8  ea301702  vand.s.mz vr1{mr1}, r14, vr1
0063cc  fe8100e0  vmmov mr3, r1
0063d0  ab400000  lui r1, 4
0063d4  eaa25336  vor.u.mh vr5{mr3}, r7, vr5
0063d8  fe8100e0  vmmov mr3, r1
0063dc  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
0063e0  6ab24d22  vor.s.mz vr4{mr1}, r27, vr4
0063e4  eaa25236  vor.u.mh vr5{mr3}, r5, vr5
0063e8  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
0063ec  fe8001a0  vmmov r1, mr3
0063f0  fe0101e0  vmmov mr3, r2
0063f4  92301402  vadd.s.mz vr1{mr1}, r8, vr1
0063f8  1bc1f000  srli r2, r1, 15
0063fc  eaa25136  vor.u.mh vr5{mr3}, r3, vr5
006400  1b011100  andi r2, r2, 1
006404  46005d10  vstore.mh vr5{mr0}, 0(r26)
006408  3b300100  bneq r2, zero, 12
00640c  fab1f040  vextracti.s r3, 15(vr1)
006410  5b010000  j 8
006414  fa31f240  vextracti.s r3, 15(vr4)
006418  1bc1e000  srli r2, r1, 14
00641c  1b011100  andi r2, r2, 1
006420  3b300100  bneq r2, zero, 12
006424  fab2e040  vextracti.s r5, 14(vr1)
006428  5b010000  j 8
00642c  fa32e240  vextracti.s r5, 14(vr4)
006430  1bc1d000  srli r2, r1, 13
006434  1b011100  andi r2, r2, 1
006438  3b300100  bneq r2, zero, 12
00643c  fab3d040  vextracti.s r7, 13(vr1)
006440  5b010000  j 8
006444  fa33d240  vextracti.s r7, 13(vr4)
006448  1bc1c000  srli r2, r1, 12
00644c  1b011100  andi r2, r2, 1
006450  3b300100  bneq r2, zero, 12
006454  7ab2c040  vextracti.s r4, 12(vr1)
006458  5b010000  j 8
00645c  7a32c240  vextracti.s r4, 12(vr4)
006460  1bc1b000  srli r2, r1, 11
006464  1b011100  andi r2, r2, 1
006468  3b300100  bneq r2, zero, 12
00646c  7ab5b040  vextracti.s r10, 11(vr1)
006470  5b010000  j 8
006474  7a35b240  vextracti.s r10, 11(vr4)
006478  1bc1a000  srli r2, r1, 10
00647c  1b011100  andi r2, r2, 1
006480  3b300100  bneq r2, zero, 12
006484  fab5a040  vextracti.s r11, 10(vr1)
006488  5b010000  j 8
00648c  fa35a240  vextracti.s r11, 10(vr4)
006490  1bc19000  srli r2, r1, 9
006494  1b011100  andi r2, r2, 1
006498  3b300100  bneq r2, zero, 12
00649c  7ab69040  vextracti.s r12, 9(vr1)
0064a0  5b010000  j 8
0064a4  7a369240  vextracti.s r12, 9(vr4)
0064a8  1bc18000  srli r2, r1, 8
0064ac  1b011100  andi r2, r2, 1
0064b0  3b300100  bneq r2, zero, 12
0064b4  fab68040  vextracti.s r13, 8(vr1)
0064b8  5b010000  j 8
0064bc  fa368240  vextracti.s r13, 8(vr4)
0064c0  1bc17000  srli r2, r1, 7
0064c4  1b011100  andi r2, r2, 1
0064c8  3b300100  bneq r2, zero, 12
0064cc  fab77040  vextracti.s r15, 7(vr1)
0064d0  5b010000  j 8
0064d4  fa377240  vextracti.s r15, 7(vr4)
0064d8  1bc16000  srli r2, r1, 6
0064dc  1b011100  andi r2, r2, 1
0064e0  3b300100  bneq r2, zero, 12
0064e4  7ab86040  vextracti.s r16, 6(vr1)
0064e8  5b010000  j 8
0064ec  7a386240  vextracti.s r16, 6(vr4)
0064f0  1bc15000  srli r2, r1, 5
0064f4  1b011100  andi r2, r2, 1
0064f8  3b300100  bneq r2, zero, 12
0064fc  fab85040  vextracti.s r17, 5(vr1)
006500  5b010000  j 8
006504  fa385240  vextracti.s r17, 5(vr4)
006508  1bc14000  srli r2, r1, 4
00650c  1b011100  andi r2, r2, 1
006510  3b300100  bneq r2, zero, 12
006514  7ab34040  vextracti.s r6, 4(vr1)
006518  5b010000  j 8
00651c  7a334240  vextracti.s r6, 4(vr4)
006520  1bc13000  srli r2, r1, 3
006524  1b011100  andi r2, r2, 1
006528  3b300100  bneq r2, zero, 12
00652c  7ab13040  vextracti.s r2, 3(vr1)
006530  5b010000  j 8
006534  7a313240  vextracti.s r2, 3(vr4)
006538  1bc92000  srli r18, r1, 2
00653c  1b091900  andi r18, r18, 1
006540  3b300900  bneq r18, zero, 12
006544  7ab92040  vextracti.s r18, 2(vr1)
006548  5b010000  j 8
00654c  7a392240  vextracti.s r18, 2(vr4)
006550  9bc91000  srli r19, r1, 1
006554  9b891900  andi r19, r19, 1
006558  3be00900  bneq r19, zero, 24
00655c  fab91040  vextracti.s r19, 1(vr1)
006560  9b801000  andi r1, r1, 1
006564  37e00000  beq r1, zero, 24
006568  fa300240  vextracti.s r1, 0(vr4)
00656c  db020000  j 20
006570  fa391240  vextracti.s r19, 1(vr4)
006574  9b801000  andi r1, r1, 1
006578  bbcf00fe  bneq r1, zero, -16
00657c  fab00040  vextracti.s r1, 0(vr1)
006580  12320002  vadd.s.mz vr4{mr1}, zero, vr0
006584  1f100000  addli zero, zero, 1
006588  fe0100e0  vmmov mr3, zero
00658c  17200000  xor zero, zero, zero
006590  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
006594  9f200000  addli r1, zero, 2
006598  fe8100e0  vmmov mr3, r1
00659c  9f400000  addli r1, zero, 4
0065a0  6aa24936  vor.u.mh vr4{mr3}, r19, vr4
0065a4  fe8100e0  vmmov mr3, r1
0065a8  9f001000  addli r1, zero, 8
0065ac  6a224936  vor.u.mh vr4{mr3}, r18, vr4
0065b0  fe8100e0  vmmov mr3, r1
0065b4  9f002000  addli r1, zero, 16
0065b8  6a224136  vor.u.mh vr4{mr3}, r2, vr4
0065bc  fe8100e0  vmmov mr3, r1
0065c0  9f004000  addli r1, zero, 32
0065c4  6a224336  vor.u.mh vr4{mr3}, r6, vr4
0065c8  fe8100e0  vmmov mr3, r1
0065cc  9f008000  addli r1, zero, 64
0065d0  6aa24836  vor.u.mh vr4{mr3}, r17, vr4
0065d4  fe8100e0  vmmov mr3, r1
0065d8  9f000001  addli r1, zero, 128
0065dc  6a224836  vor.u.mh vr4{mr3}, r16, vr4
0065e0  fe8100e0  vmmov mr3, r1
0065e4  9f000002  addli r1, zero, 256
0065e8  6aa24736  vor.u.mh vr4{mr3}, r15, vr4
0065ec  fe8100e0  vmmov mr3, r1
0065f0  9f000004  addli r1, zero, 512
0065f4  6aa24636  vor.u.mh vr4{mr3}, r13, vr4
0065f8  fe8100e0  vmmov mr3, r1
0065fc  9f000008  addli r1, zero, 1024
006600  6a224636  vor.u.mh vr4{mr3}, r12, vr4
006604  fe8100e0  vmmov mr3, r1
006608  9f000010  addli r1, zero, 2048
00660c  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
006610  fe8100e0  vmmov mr3, r1
006614  9f000020  addli r1, zero, 4096
006618  6a224536  vor.u.mh vr4{mr3}, r10, vr4
00661c  fe8100e0  vmmov mr3, r1
006620  9f000fed  addli r1, r30, -2432
006624  6a224236  vor.u.mh vr4{mr3}, r4, vr4
006628  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00662c  9f000040  addli r1, zero, 8192
006630  8a121a02  vmul.f.mz.rn vr5{mr1}, r20, vr1
006634  669302c0  vabs.f vr6, vr5
006638  eeb051c2  vsrl.s.mz vr1{mr1}, vr3, vr5
00663c  fe8100e0  vmmov mr3, r1
006640  ab400000  lui r1, 4
006644  6aa24336  vor.u.mh vr4{mr3}, r7, vr4
006648  fe8100e0  vmmov mr3, r1
00664c  ab800000  lui r1, 8
006650  ea301702  vand.s.mz vr1{mr1}, r14, vr1
006654  6aa24236  vor.u.mh vr4{mr3}, r5, vr4
006658  fe8100e0  vmmov mr3, r1
00665c  96b01202  vadd.s.mz vr1{mr1}, vr5, vr1
006660  6aa24136  vor.u.mh vr4{mr3}, r3, vr4
006664  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
006668  7e8201a0  vmmov r4, mr3
00666c  92301402  vadd.s.mz vr1{mr1}, r8, vr1
006670  9b40f200  srli r1, r4, 15
006674  6af344c0  vsrl.p vr6, r9, vr4
006678  6ab25d22  vor.s.mz vr4{mr1}, r27, vr5
00667c  9b801000  andi r1, r1, 1
006680  46006d14  vstore.mh vr6{mr2}, 0(r26)
006684  3bb00000  bneq r1, zero, 12
006688  fab1f040  vextracti.s r3, 15(vr1)
00668c  5b010000  j 8
006690  fa31f240  vextracti.s r3, 15(vr4)
006694  9b40e200  srli r1, r4, 14
006698  9b801000  andi r1, r1, 1
00669c  3bb00000  bneq r1, zero, 12
0066a0  fab2e040  vextracti.s r5, 14(vr1)
0066a4  5b010000  j 8
0066a8  fa32e240  vextracti.s r5, 14(vr4)
0066ac  9b40d200  srli r1, r4, 13
0066b0  9b801000  andi r1, r1, 1
0066b4  3bb00000  bneq r1, zero, 12
0066b8  fab3d040  vextracti.s r7, 13(vr1)
0066bc  5b010000  j 8
0066c0  fa33d240  vextracti.s r7, 13(vr4)
0066c4  9b40c200  srli r1, r4, 12
0066c8  9b801000  andi r1, r1, 1
0066cc  3bb00000  bneq r1, zero, 12
0066d0  fab0c040  vextracti.s r1, 12(vr1)
0066d4  5b010000  j 8
0066d8  fa30c240  vextracti.s r1, 12(vr4)
0066dc  1b41b200  srli r2, r4, 11
0066e0  1b011100  andi r2, r2, 1
0066e4  3b300100  bneq r2, zero, 12
0066e8  7ab5b040  vextracti.s r10, 11(vr1)
0066ec  5b010000  j 8
0066f0  7a35b240  vextracti.s r10, 11(vr4)
0066f4  1b41a200  srli r2, r4, 10
0066f8  1b011100  andi r2, r2, 1
0066fc  3b300100  bneq r2, zero, 12
006700  fab5a040  vextracti.s r11, 10(vr1)
006704  5b010000  j 8
006708  fa35a240  vextracti.s r11, 10(vr4)
00670c  1b419200  srli r2, r4, 9
006710  1b011100  andi r2, r2, 1
006714  3b300100  bneq r2, zero, 12
006718  7ab69040  vextracti.s r12, 9(vr1)
00671c  5b010000  j 8
006720  7a369240  vextracti.s r12, 9(vr4)
006724  1b418200  srli r2, r4, 8
006728  1b011100  andi r2, r2, 1
00672c  3b300100  bneq r2, zero, 12
006730  fab68040  vextracti.s r13, 8(vr1)
006734  5b010000  j 8
006738  fa368240  vextracti.s r13, 8(vr4)
00673c  1b417200  srli r2, r4, 7
006740  1b011100  andi r2, r2, 1
006744  3b300100  bneq r2, zero, 12
006748  fab77040  vextracti.s r15, 7(vr1)
00674c  5b010000  j 8
006750  fa377240  vextracti.s r15, 7(vr4)
006754  1b416200  srli r2, r4, 6
006758  1b011100  andi r2, r2, 1
00675c  3b300100  bneq r2, zero, 12
006760  7ab86040  vextracti.s r16, 6(vr1)
006764  5b010000  j 8
006768  7a386240  vextracti.s r16, 6(vr4)
00676c  1b415200  srli r2, r4, 5
006770  1b011100  andi r2, r2, 1
006774  3b300100  bneq r2, zero, 12
006778  fab85040  vextracti.s r17, 5(vr1)
00677c  5b010000  j 8
006780  fa385240  vextracti.s r17, 5(vr4)
006784  1b414200  srli r2, r4, 4
006788  1b011100  andi r2, r2, 1
00678c  3b300100  bneq r2, zero, 12
006790  7ab34040  vextracti.s r6, 4(vr1)
006794  5b010000  j 8
006798  7a334240  vextracti.s r6, 4(vr4)
00679c  1b413200  srli r2, r4, 3
0067a0  1b011100  andi r2, r2, 1
0067a4  3b300100  bneq r2, zero, 12
0067a8  7ab13040  vextracti.s r2, 3(vr1)
0067ac  5b010000  j 8
0067b0  7a313240  vextracti.s r2, 3(vr4)
0067b4  1b492200  srli r18, r4, 2
0067b8  1b091900  andi r18, r18, 1
0067bc  3b300900  bneq r18, zero, 12
0067c0  7ab92040  vextracti.s r18, 2(vr1)
0067c4  5b010000  j 8
0067c8  7a392240  vextracti.s r18, 2(vr4)
0067cc  9b491200  srli r19, r4, 1
0067d0  9b891900  andi r19, r19, 1
0067d4  3be00900  bneq r19, zero, 24
0067d8  fab91040  vextracti.s r19, 1(vr1)
0067dc  1b021200  andi r4, r4, 1
0067e0  37600200  beq r4, zero, 24
0067e4  7a320240  vextracti.s r4, 0(vr4)
0067e8  db020000  j 20
0067ec  fa391240  vextracti.s r19, 1(vr4)
0067f0  1b021200  andi r4, r4, 1
0067f4  bb4f02fe  bneq r4, zero, -16
0067f8  7ab20040  vextracti.s r4, 0(vr1)
0067fc  92320002  vadd.s.mz vr5{mr1}, zero, vr0
006800  1f1d0000  addli r26, zero, 1
006804  0a12ba02  vmul.f.mz.rn vr4{mr1}, r20, vr11
006808  eeb041c2  vsrl.s.mz vr1{mr1}, vr3, vr4
00680c  661302c0  vabs.f vr6, vr4
006810  fe010de0  vmmov mr3, r26
006814  ea225236  vor.u.mh vr5{mr3}, r4, vr5
006818  1f220000  addli r4, zero, 2
00681c  ea301702  vand.s.mz vr1{mr1}, r14, vr1
006820  fe0102e0  vmmov mr3, r4
006824  1f420000  addli r4, zero, 4
006828  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
00682c  fe0102e0  vmmov mr3, r4
006830  1f021000  addli r4, zero, 8
006834  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
006838  6ab24d22  vor.s.mz vr4{mr1}, r27, vr4
00683c  ea225936  vor.u.mh vr5{mr3}, r18, vr5
006840  fe0102e0  vmmov mr3, r4
006844  92301402  vadd.s.mz vr1{mr1}, r8, vr1
006848  ea225136  vor.u.mh vr5{mr3}, r2, vr5
00684c  1f012000  addli r2, zero, 16
006850  fe0101e0  vmmov mr3, r2
006854  1f014000  addli r2, zero, 32
006858  ea225336  vor.u.mh vr5{mr3}, r6, vr5
00685c  fe0101e0  vmmov mr3, r2
006860  1f018000  addli r2, zero, 64
006864  eaa25836  vor.u.mh vr5{mr3}, r17, vr5
006868  fe0101e0  vmmov mr3, r2
00686c  1f010001  addli r2, zero, 128
006870  ea225836  vor.u.mh vr5{mr3}, r16, vr5
006874  fe0101e0  vmmov mr3, r2
006878  1f010002  addli r2, zero, 256
00687c  eaa25736  vor.u.mh vr5{mr3}, r15, vr5
006880  fe0101e0  vmmov mr3, r2
006884  1f010004  addli r2, zero, 512
006888  eaa25636  vor.u.mh vr5{mr3}, r13, vr5
00688c  fe0101e0  vmmov mr3, r2
006890  1f010008  addli r2, zero, 1024
006894  ea225636  vor.u.mh vr5{mr3}, r12, vr5
006898  fe0101e0  vmmov mr3, r2
00689c  1f010010  addli r2, zero, 2048
0068a0  eaa25536  vor.u.mh vr5{mr3}, r11, vr5
0068a4  fe0101e0  vmmov mr3, r2
0068a8  1f010020  addli r2, zero, 4096
0068ac  ea225536  vor.u.mh vr5{mr3}, r10, vr5
0068b0  fe0101e0  vmmov mr3, r2
0068b4  2b810000  lui r2, 8
0068b8  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
0068bc  9f000040  addli r1, zero, 8192
0068c0  fe8100e0  vmmov mr3, r1
0068c4  ab400000  lui r1, 4
0068c8  eaa25336  vor.u.mh vr5{mr3}, r7, vr5
0068cc  fe8100e0  vmmov mr3, r1
0068d0  eaa25236  vor.u.mh vr5{mr3}, r5, vr5
0068d4  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
0068d8  fe8001a0  vmmov r1, mr3
0068dc  fe0101e0  vmmov mr3, r2
0068e0  1bc1f000  srli r2, r1, 15
0068e4  eaa25136  vor.u.mh vr5{mr3}, r3, vr5
0068e8  1b011100  andi r2, r2, 1
0068ec  46805c10  vstore.mh vr5{mr0}, 0(r25)
0068f0  3b300100  bneq r2, zero, 12
0068f4  fab1f040  vextracti.s r3, 15(vr1)
0068f8  5b010000  j 8
0068fc  fa31f240  vextracti.s r3, 15(vr4)
006900  1bc1e000  srli r2, r1, 14
006904  1b011100  andi r2, r2, 1
006908  3b300100  bneq r2, zero, 12
00690c  fab2e040  vextracti.s r5, 14(vr1)
006910  5b010000  j 8
006914  fa32e240  vextracti.s r5, 14(vr4)
006918  1bc1d000  srli r2, r1, 13
00691c  1b011100  andi r2, r2, 1
006920  3b300100  bneq r2, zero, 12
006924  fab3d040  vextracti.s r7, 13(vr1)
006928  5b010000  j 8
00692c  fa33d240  vextracti.s r7, 13(vr4)
006930  1bc1c000  srli r2, r1, 12
006934  1b011100  andi r2, r2, 1
006938  3b300100  bneq r2, zero, 12
00693c  7ab2c040  vextracti.s r4, 12(vr1)
006940  5b010000  j 8
006944  7a32c240  vextracti.s r4, 12(vr4)
006948  1bc1b000  srli r2, r1, 11
00694c  1b011100  andi r2, r2, 1
006950  3b300100  bneq r2, zero, 12
006954  7ab5b040  vextracti.s r10, 11(vr1)
006958  5b010000  j 8
00695c  7a35b240  vextracti.s r10, 11(vr4)
006960  1bc1a000  srli r2, r1, 10
006964  1b011100  andi r2, r2, 1
006968  3b300100  bneq r2, zero, 12
00696c  fab5a040  vextracti.s r11, 10(vr1)
006970  5b010000  j 8
006974  fa35a240  vextracti.s r11, 10(vr4)
006978  1bc19000  srli r2, r1, 9
00697c  1b011100  andi r2, r2, 1
006980  3b300100  bneq r2, zero, 12
006984  7ab69040  vextracti.s r12, 9(vr1)
006988  5b010000  j 8
00698c  7a369240  vextracti.s r12, 9(vr4)
006990  1bc18000  srli r2, r1, 8
006994  1b011100  andi r2, r2, 1
006998  3b300100  bneq r2, zero, 12
00699c  fab68040  vextracti.s r13, 8(vr1)
0069a0  5b010000  j 8
0069a4  fa368240  vextracti.s r13, 8(vr4)
0069a8  1bc17000  srli r2, r1, 7
0069ac  1b011100  andi r2, r2, 1
0069b0  3b300100  bneq r2, zero, 12
0069b4  fab77040  vextracti.s r15, 7(vr1)
0069b8  5b010000  j 8
0069bc  fa377240  vextracti.s r15, 7(vr4)
0069c0  1bc16000  srli r2, r1, 6
0069c4  1b011100  andi r2, r2, 1
0069c8  3b300100  bneq r2, zero, 12
0069cc  7ab86040  vextracti.s r16, 6(vr1)
0069d0  5b010000  j 8
0069d4  7a386240  vextracti.s r16, 6(vr4)
0069d8  1bc15000  srli r2, r1, 5
0069dc  1b011100  andi r2, r2, 1
0069e0  3b300100  bneq r2, zero, 12
0069e4  fab85040  vextracti.s r17, 5(vr1)
0069e8  5b010000  j 8
0069ec  fa385240  vextracti.s r17, 5(vr4)
0069f0  1bc14000  srli r2, r1, 4
0069f4  1b011100  andi r2, r2, 1
0069f8  3b300100  bneq r2, zero, 12
0069fc  7ab34040  vextracti.s r6, 4(vr1)
006a00  5b010000  j 8
006a04  7a334240  vextracti.s r6, 4(vr4)
006a08  1bc13000  srli r2, r1, 3
006a0c  1b011100  andi r2, r2, 1
006a10  3b300100  bneq r2, zero, 12
006a14  7ab13040  vextracti.s r2, 3(vr1)
006a18  5b010000  j 8
006a1c  7a313240  vextracti.s r2, 3(vr4)
006a20  1bc92000  srli r18, r1, 2
006a24  1b091900  andi r18, r18, 1
006a28  3b300900  bneq r18, zero, 12
006a2c  7ab92040  vextracti.s r18, 2(vr1)
006a30  5b010000  j 8
006a34  7a392240  vextracti.s r18, 2(vr4)
006a38  9bc91000  srli r19, r1, 1
006a3c  9b891900  andi r19, r19, 1
006a40  3be00900  bneq r19, zero, 24
006a44  fab91040  vextracti.s r19, 1(vr1)
006a48  9b801000  andi r1, r1, 1
006a4c  37e00000  beq r1, zero, 24
006a50  fa300240  vextracti.s r1, 0(vr4)
006a54  db020000  j 20
006a58  fa391240  vextracti.s r19, 1(vr4)
006a5c  9b801000  andi r1, r1, 1
006a60  bbcf00fe  bneq r1, zero, -16
006a64  fab00040  vextracti.s r1, 0(vr1)
006a68  12320002  vadd.s.mz vr4{mr1}, zero, vr0
006a6c  1f1d0000  addli r26, zero, 1
006a70  fe010de0  vmmov mr3, r26
006a74  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
006a78  9f200000  addli r1, zero, 2
006a7c  fe8100e0  vmmov mr3, r1
006a80  9f400000  addli r1, zero, 4
006a84  6aa24936  vor.u.mh vr4{mr3}, r19, vr4
006a88  fe8100e0  vmmov mr3, r1
006a8c  9f001000  addli r1, zero, 8
006a90  6a224936  vor.u.mh vr4{mr3}, r18, vr4
006a94  fe8100e0  vmmov mr3, r1
006a98  9f002000  addli r1, zero, 16
006a9c  6a224136  vor.u.mh vr4{mr3}, r2, vr4
006aa0  fe8100e0  vmmov mr3, r1
006aa4  9f004000  addli r1, zero, 32
006aa8  6a224336  vor.u.mh vr4{mr3}, r6, vr4
006aac  fe8100e0  vmmov mr3, r1
006ab0  9f008000  addli r1, zero, 64
006ab4  6aa24836  vor.u.mh vr4{mr3}, r17, vr4
006ab8  fe8100e0  vmmov mr3, r1
006abc  9f000001  addli r1, zero, 128
006ac0  6a224836  vor.u.mh vr4{mr3}, r16, vr4
006ac4  fe8100e0  vmmov mr3, r1
006ac8  9f000002  addli r1, zero, 256
006acc  6aa24736  vor.u.mh vr4{mr3}, r15, vr4
006ad0  fe8100e0  vmmov mr3, r1
006ad4  9f000004  addli r1, zero, 512
006ad8  6aa24636  vor.u.mh vr4{mr3}, r13, vr4
006adc  fe8100e0  vmmov mr3, r1
006ae0  9f000008  addli r1, zero, 1024
006ae4  6a224636  vor.u.mh vr4{mr3}, r12, vr4
006ae8  fe8100e0  vmmov mr3, r1
006aec  9f000010  addli r1, zero, 2048
006af0  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
006af4  fe8100e0  vmmov mr3, r1
006af8  9f000020  addli r1, zero, 4096
006afc  6a224536  vor.u.mh vr4{mr3}, r10, vr4
006b00  fe8100e0  vmmov mr3, r1
006b04  9f000fe9  addli r1, r30, -2944
006b08  6a224236  vor.u.mh vr4{mr3}, r4, vr4
006b0c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
006b10  9f000040  addli r1, zero, 8192
006b14  8a121a02  vmul.f.mz.rn vr5{mr1}, r20, vr1
006b18  669302c0  vabs.f vr6, vr5
006b1c  eeb051c2  vsrl.s.mz vr1{mr1}, vr3, vr5
006b20  fe8100e0  vmmov mr3, r1
006b24  ab400000  lui r1, 4
006b28  6aa24336  vor.u.mh vr4{mr3}, r7, vr4
006b2c  fe8100e0  vmmov mr3, r1
006b30  ab800000  lui r1, 8
006b34  ea301702  vand.s.mz vr1{mr1}, r14, vr1
006b38  6aa24236  vor.u.mh vr4{mr3}, r5, vr4
006b3c  fe8100e0  vmmov mr3, r1
006b40  96b01202  vadd.s.mz vr1{mr1}, vr5, vr1
006b44  6aa24136  vor.u.mh vr4{mr3}, r3, vr4
006b48  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
006b4c  7e8201a0  vmmov r4, mr3
006b50  92301402  vadd.s.mz vr1{mr1}, r8, vr1
006b54  9b40f200  srli r1, r4, 15
006b58  6af344c0  vsrl.p vr6, r9, vr4
006b5c  6ab25d22  vor.s.mz vr4{mr1}, r27, vr5
006b60  9b801000  andi r1, r1, 1
006b64  46806c14  vstore.mh vr6{mr2}, 0(r25)
006b68  3bb00000  bneq r1, zero, 12
006b6c  fab1f040  vextracti.s r3, 15(vr1)
006b70  5b010000  j 8
006b74  fa31f240  vextracti.s r3, 15(vr4)
006b78  9b40e200  srli r1, r4, 14
006b7c  9b801000  andi r1, r1, 1
006b80  3bb00000  bneq r1, zero, 12
006b84  fab2e040  vextracti.s r5, 14(vr1)
006b88  5b010000  j 8
006b8c  fa32e240  vextracti.s r5, 14(vr4)
006b90  9b40d200  srli r1, r4, 13
006b94  9b801000  andi r1, r1, 1
006b98  3bb00000  bneq r1, zero, 12
006b9c  fab3d040  vextracti.s r7, 13(vr1)
006ba0  5b010000  j 8
006ba4  fa33d240  vextracti.s r7, 13(vr4)
006ba8  9b40c200  srli r1, r4, 12
006bac  9b801000  andi r1, r1, 1
006bb0  3bb00000  bneq r1, zero, 12
006bb4  fab0c040  vextracti.s r1, 12(vr1)
006bb8  5b010000  j 8
006bbc  fa30c240  vextracti.s r1, 12(vr4)
006bc0  1b41b200  srli r2, r4, 11
006bc4  1b011100  andi r2, r2, 1
006bc8  3b300100  bneq r2, zero, 12
006bcc  7ab5b040  vextracti.s r10, 11(vr1)
006bd0  5b010000  j 8
006bd4  7a35b240  vextracti.s r10, 11(vr4)
006bd8  1b41a200  srli r2, r4, 10
006bdc  1b011100  andi r2, r2, 1
006be0  3b300100  bneq r2, zero, 12
006be4  fab5a040  vextracti.s r11, 10(vr1)
006be8  5b010000  j 8
006bec  fa35a240  vextracti.s r11, 10(vr4)
006bf0  1b419200  srli r2, r4, 9
006bf4  1b011100  andi r2, r2, 1
006bf8  3b300100  bneq r2, zero, 12
006bfc  7ab69040  vextracti.s r12, 9(vr1)
006c00  5b010000  j 8
006c04  7a369240  vextracti.s r12, 9(vr4)
006c08  1b418200  srli r2, r4, 8
006c0c  1b011100  andi r2, r2, 1
006c10  3b300100  bneq r2, zero, 12
006c14  fab68040  vextracti.s r13, 8(vr1)
006c18  5b010000  j 8
006c1c  fa368240  vextracti.s r13, 8(vr4)
006c20  1b417200  srli r2, r4, 7
006c24  1b011100  andi r2, r2, 1
006c28  3b300100  bneq r2, zero, 12
006c2c  fab77040  vextracti.s r15, 7(vr1)
006c30  5b010000  j 8
006c34  fa377240  vextracti.s r15, 7(vr4)
006c38  1b416200  srli r2, r4, 6
006c3c  1b011100  andi r2, r2, 1
006c40  3b300100  bneq r2, zero, 12
006c44  7ab86040  vextracti.s r16, 6(vr1)
006c48  5b010000  j 8
006c4c  7a386240  vextracti.s r16, 6(vr4)
006c50  1b415200  srli r2, r4, 5
006c54  1b011100  andi r2, r2, 1
006c58  3b300100  bneq r2, zero, 12
006c5c  fab85040  vextracti.s r17, 5(vr1)
006c60  5b010000  j 8
006c64  fa385240  vextracti.s r17, 5(vr4)
006c68  1b414200  srli r2, r4, 4
006c6c  1b011100  andi r2, r2, 1
006c70  3b300100  bneq r2, zero, 12
006c74  7ab34040  vextracti.s r6, 4(vr1)
006c78  5b010000  j 8
006c7c  7a334240  vextracti.s r6, 4(vr4)
006c80  1b413200  srli r2, r4, 3
006c84  1b011100  andi r2, r2, 1
006c88  3b300100  bneq r2, zero, 12
006c8c  7ab13040  vextracti.s r2, 3(vr1)
006c90  5b010000  j 8
006c94  7a313240  vextracti.s r2, 3(vr4)
006c98  1b492200  srli r18, r4, 2
006c9c  1b091900  andi r18, r18, 1
006ca0  3b300900  bneq r18, zero, 12
006ca4  7ab92040  vextracti.s r18, 2(vr1)
006ca8  5b010000  j 8
006cac  7a392240  vextracti.s r18, 2(vr4)
006cb0  9b491200  srli r19, r4, 1
006cb4  9b891900  andi r19, r19, 1
006cb8  3be00900  bneq r19, zero, 24
006cbc  fab91040  vextracti.s r19, 1(vr1)
006cc0  1b021200  andi r4, r4, 1
006cc4  37600200  beq r4, zero, 24
006cc8  7a320240  vextracti.s r4, 0(vr4)
006ccc  db020000  j 20
006cd0  fa391240  vextracti.s r19, 1(vr4)
006cd4  1b021200  andi r4, r4, 1
006cd8  bb4f02fe  bneq r4, zero, -16
006cdc  7ab20040  vextracti.s r4, 0(vr1)
006ce0  92320002  vadd.s.mz vr5{mr1}, zero, vr0
006ce4  9f1c0000  addli r25, zero, 1
006ce8  0a129a02  vmul.f.mz.rn vr4{mr1}, r20, vr9
006cec  eeb041c2  vsrl.s.mz vr1{mr1}, vr3, vr4
006cf0  661302c0  vabs.f vr6, vr4
006cf4  fe810ce0  vmmov mr3, r25
006cf8  ea225236  vor.u.mh vr5{mr3}, r4, vr5
006cfc  1f220000  addli r4, zero, 2
006d00  ea301702  vand.s.mz vr1{mr1}, r14, vr1
006d04  fe0102e0  vmmov mr3, r4
006d08  1f420000  addli r4, zero, 4
006d0c  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
006d10  fe0102e0  vmmov mr3, r4
006d14  1f021000  addli r4, zero, 8
006d18  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
006d1c  6ab24d22  vor.s.mz vr4{mr1}, r27, vr4
006d20  ea225936  vor.u.mh vr5{mr3}, r18, vr5
006d24  fe0102e0  vmmov mr3, r4
006d28  92301402  vadd.s.mz vr1{mr1}, r8, vr1
006d2c  ea225136  vor.u.mh vr5{mr3}, r2, vr5
006d30  1f012000  addli r2, zero, 16
006d34  fe0101e0  vmmov mr3, r2
006d38  1f014000  addli r2, zero, 32
006d3c  ea225336  vor.u.mh vr5{mr3}, r6, vr5
006d40  fe0101e0  vmmov mr3, r2
006d44  1f018000  addli r2, zero, 64
006d48  eaa25836  vor.u.mh vr5{mr3}, r17, vr5
006d4c  fe0101e0  vmmov mr3, r2
006d50  1f010001  addli r2, zero, 128
006d54  ea225836  vor.u.mh vr5{mr3}, r16, vr5
006d58  fe0101e0  vmmov mr3, r2
006d5c  1f010002  addli r2, zero, 256
006d60  eaa25736  vor.u.mh vr5{mr3}, r15, vr5
006d64  fe0101e0  vmmov mr3, r2
006d68  1f010004  addli r2, zero, 512
006d6c  eaa25636  vor.u.mh vr5{mr3}, r13, vr5
006d70  fe0101e0  vmmov mr3, r2
006d74  1f010008  addli r2, zero, 1024
006d78  ea225636  vor.u.mh vr5{mr3}, r12, vr5
006d7c  fe0101e0  vmmov mr3, r2
006d80  1f010010  addli r2, zero, 2048
006d84  eaa25536  vor.u.mh vr5{mr3}, r11, vr5
006d88  fe0101e0  vmmov mr3, r2
006d8c  1f010020  addli r2, zero, 4096
006d90  ea225536  vor.u.mh vr5{mr3}, r10, vr5
006d94  fe0101e0  vmmov mr3, r2
006d98  2b810000  lui r2, 8
006d9c  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
006da0  9f000040  addli r1, zero, 8192
006da4  fe8100e0  vmmov mr3, r1
006da8  ab400000  lui r1, 4
006dac  eaa25336  vor.u.mh vr5{mr3}, r7, vr5
006db0  fe8100e0  vmmov mr3, r1
006db4  eaa25236  vor.u.mh vr5{mr3}, r5, vr5
006db8  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
006dbc  fe8001a0  vmmov r1, mr3
006dc0  fe0101e0  vmmov mr3, r2
006dc4  1bc1f000  srli r2, r1, 15
006dc8  eaa25136  vor.u.mh vr5{mr3}, r3, vr5
006dcc  1b011100  andi r2, r2, 1
006dd0  46805b10  vstore.mh vr5{mr0}, 0(r23)
006dd4  3b300100  bneq r2, zero, 12
006dd8  fab1f040  vextracti.s r3, 15(vr1)
006ddc  5b010000  j 8
006de0  fa31f240  vextracti.s r3, 15(vr4)
006de4  1bc1e000  srli r2, r1, 14
006de8  1b011100  andi r2, r2, 1
006dec  3b300100  bneq r2, zero, 12
006df0  fab2e040  vextracti.s r5, 14(vr1)
006df4  5b010000  j 8
006df8  fa32e240  vextracti.s r5, 14(vr4)
006dfc  1bc1d000  srli r2, r1, 13
006e00  1b011100  andi r2, r2, 1
006e04  3b300100  bneq r2, zero, 12
006e08  fab3d040  vextracti.s r7, 13(vr1)
006e0c  5b010000  j 8
006e10  fa33d240  vextracti.s r7, 13(vr4)
006e14  1bc1c000  srli r2, r1, 12
006e18  1b011100  andi r2, r2, 1
006e1c  3b300100  bneq r2, zero, 12
006e20  7ab2c040  vextracti.s r4, 12(vr1)
006e24  5b010000  j 8
006e28  7a32c240  vextracti.s r4, 12(vr4)
006e2c  1bc1b000  srli r2, r1, 11
006e30  1b011100  andi r2, r2, 1
006e34  3b300100  bneq r2, zero, 12
006e38  7ab5b040  vextracti.s r10, 11(vr1)
006e3c  5b010000  j 8
006e40  7a35b240  vextracti.s r10, 11(vr4)
006e44  1bc1a000  srli r2, r1, 10
006e48  1b011100  andi r2, r2, 1
006e4c  3b300100  bneq r2, zero, 12
006e50  fab5a040  vextracti.s r11, 10(vr1)
006e54  5b010000  j 8
006e58  fa35a240  vextracti.s r11, 10(vr4)
006e5c  1bc19000  srli r2, r1, 9
006e60  1b011100  andi r2, r2, 1
006e64  3b300100  bneq r2, zero, 12
006e68  7ab69040  vextracti.s r12, 9(vr1)
006e6c  5b010000  j 8
006e70  7a369240  vextracti.s r12, 9(vr4)
006e74  1bc18000  srli r2, r1, 8
006e78  1b011100  andi r2, r2, 1
006e7c  3b300100  bneq r2, zero, 12
006e80  fab68040  vextracti.s r13, 8(vr1)
006e84  5b010000  j 8
006e88  fa368240  vextracti.s r13, 8(vr4)
006e8c  1bc17000  srli r2, r1, 7
006e90  1b011100  andi r2, r2, 1
006e94  3b300100  bneq r2, zero, 12
006e98  fab77040  vextracti.s r15, 7(vr1)
006e9c  5b010000  j 8
006ea0  fa377240  vextracti.s r15, 7(vr4)
006ea4  1bc16000  srli r2, r1, 6
006ea8  1b011100  andi r2, r2, 1
006eac  3b300100  bneq r2, zero, 12
006eb0  7ab86040  vextracti.s r16, 6(vr1)
006eb4  5b010000  j 8
006eb8  7a386240  vextracti.s r16, 6(vr4)
006ebc  1bc15000  srli r2, r1, 5
006ec0  1b011100  andi r2, r2, 1
006ec4  3b300100  bneq r2, zero, 12
006ec8  fab85040  vextracti.s r17, 5(vr1)
006ecc  5b010000  j 8
006ed0  fa385240  vextracti.s r17, 5(vr4)
006ed4  1bc14000  srli r2, r1, 4
006ed8  1b011100  andi r2, r2, 1
006edc  3b300100  bneq r2, zero, 12
006ee0  7ab34040  vextracti.s r6, 4(vr1)
006ee4  5b010000  j 8
006ee8  7a334240  vextracti.s r6, 4(vr4)
006eec  1bc13000  srli r2, r1, 3
006ef0  1b011100  andi r2, r2, 1
006ef4  3b300100  bneq r2, zero, 12
006ef8  7ab13040  vextracti.s r2, 3(vr1)
006efc  5b010000  j 8
006f00  7a313240  vextracti.s r2, 3(vr4)
006f04  1bc92000  srli r18, r1, 2
006f08  1b091900  andi r18, r18, 1
006f0c  3b300900  bneq r18, zero, 12
006f10  7ab92040  vextracti.s r18, 2(vr1)
006f14  5b010000  j 8
006f18  7a392240  vextracti.s r18, 2(vr4)
006f1c  9bc91000  srli r19, r1, 1
006f20  9b891900  andi r19, r19, 1
006f24  3be00900  bneq r19, zero, 24
006f28  fab91040  vextracti.s r19, 1(vr1)
006f2c  9b801000  andi r1, r1, 1
006f30  37e00000  beq r1, zero, 24
006f34  fa300240  vextracti.s r1, 0(vr4)
006f38  db020000  j 20
006f3c  fa391240  vextracti.s r19, 1(vr4)
006f40  9b801000  andi r1, r1, 1
006f44  bbcf00fe  bneq r1, zero, -16
006f48  fab00040  vextracti.s r1, 0(vr1)
006f4c  12320002  vadd.s.mz vr4{mr1}, zero, vr0
006f50  9f1c0000  addli r25, zero, 1
006f54  8a128a02  vmul.f.mz.rn vr5{mr1}, r20, vr8
006f58  eeb051c2  vsrl.s.mz vr1{mr1}, vr3, vr5
006f5c  669302c0  vabs.f vr6, vr5
006f60  fe810ce0  vmmov mr3, r25
006f64  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
006f68  9f200000  addli r1, zero, 2
006f6c  ea301702  vand.s.mz vr1{mr1}, r14, vr1
006f70  fe8100e0  vmmov mr3, r1
006f74  9f400000  addli r1, zero, 4
006f78  6aa24936  vor.u.mh vr4{mr3}, r19, vr4
006f7c  fe8100e0  vmmov mr3, r1
006f80  9f001000  addli r1, zero, 8
006f84  96b01202  vadd.s.mz vr1{mr1}, vr5, vr1
006f88  6a224936  vor.u.mh vr4{mr3}, r18, vr4
006f8c  fe8100e0  vmmov mr3, r1
006f90  9f002000  addli r1, zero, 16
006f94  92301402  vadd.s.mz vr1{mr1}, r8, vr1
006f98  6a224136  vor.u.mh vr4{mr3}, r2, vr4
006f9c  fe8100e0  vmmov mr3, r1
006fa0  9f004000  addli r1, zero, 32
006fa4  6a224336  vor.u.mh vr4{mr3}, r6, vr4
006fa8  fe8100e0  vmmov mr3, r1
006fac  9f008000  addli r1, zero, 64
006fb0  6aa24836  vor.u.mh vr4{mr3}, r17, vr4
006fb4  fe8100e0  vmmov mr3, r1
006fb8  9f000001  addli r1, zero, 128
006fbc  6a224836  vor.u.mh vr4{mr3}, r16, vr4
006fc0  fe8100e0  vmmov mr3, r1
006fc4  9f000002  addli r1, zero, 256
006fc8  6aa24736  vor.u.mh vr4{mr3}, r15, vr4
006fcc  fe8100e0  vmmov mr3, r1
006fd0  9f000004  addli r1, zero, 512
006fd4  6aa24636  vor.u.mh vr4{mr3}, r13, vr4
006fd8  fe8100e0  vmmov mr3, r1
006fdc  9f000008  addli r1, zero, 1024
006fe0  6a224636  vor.u.mh vr4{mr3}, r12, vr4
006fe4  fe8100e0  vmmov mr3, r1
006fe8  9f000010  addli r1, zero, 2048
006fec  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
006ff0  fe8100e0  vmmov mr3, r1
006ff4  9f000020  addli r1, zero, 4096
006ff8  6a224536  vor.u.mh vr4{mr3}, r10, vr4
006ffc  fe8100e0  vmmov mr3, r1
007000  9f000040  addli r1, zero, 8192
007004  6a224236  vor.u.mh vr4{mr3}, r4, vr4
007008  fe8100e0  vmmov mr3, r1
00700c  ab400000  lui r1, 4
007010  6aa24336  vor.u.mh vr4{mr3}, r7, vr4
007014  fe8100e0  vmmov mr3, r1
007018  ab800000  lui r1, 8
00701c  6aa24236  vor.u.mh vr4{mr3}, r5, vr4
007020  fe8100e0  vmmov mr3, r1
007024  6aa24136  vor.u.mh vr4{mr3}, r3, vr4
007028  f6216142  vlt.u.mz mr3{mr1}, vr2, vr6
00702c  7e8201a0  vmmov r4, mr3
007030  9b40f200  srli r1, r4, 15
007034  6af344c0  vsrl.p vr6, r9, vr4
007038  6ab25d22  vor.s.mz vr4{mr1}, r27, vr5
00703c  9b801000  andi r1, r1, 1
007040  46806b14  vstore.mh vr6{mr2}, 0(r23)
007044  3bb00000  bneq r1, zero, 12
007048  fab1f040  vextracti.s r3, 15(vr1)
00704c  5b010000  j 8
007050  fa31f240  vextracti.s r3, 15(vr4)
007054  9b40e200  srli r1, r4, 14
007058  9b801000  andi r1, r1, 1
00705c  3bb00000  bneq r1, zero, 12
007060  fab2e040  vextracti.s r5, 14(vr1)
007064  5b010000  j 8
007068  fa32e240  vextracti.s r5, 14(vr4)
00706c  9b40d200  srli r1, r4, 13
007070  9b801000  andi r1, r1, 1
007074  3bb00000  bneq r1, zero, 12
007078  fab3d040  vextracti.s r7, 13(vr1)
00707c  5b010000  j 8
007080  fa33d240  vextracti.s r7, 13(vr4)
007084  9b40c200  srli r1, r4, 12
007088  9b801000  andi r1, r1, 1
00708c  3bb00000  bneq r1, zero, 12
007090  fab0c040  vextracti.s r1, 12(vr1)
007094  5b010000  j 8
007098  fa30c240  vextracti.s r1, 12(vr4)
00709c  1b41b200  srli r2, r4, 11
0070a0  1b011100  andi r2, r2, 1
0070a4  3b300100  bneq r2, zero, 12
0070a8  7ab5b040  vextracti.s r10, 11(vr1)
0070ac  5b010000  j 8
0070b0  7a35b240  vextracti.s r10, 11(vr4)
0070b4  1b41a200  srli r2, r4, 10
0070b8  1b011100  andi r2, r2, 1
0070bc  3b300100  bneq r2, zero, 12
0070c0  fab5a040  vextracti.s r11, 10(vr1)
0070c4  5b010000  j 8
0070c8  fa35a240  vextracti.s r11, 10(vr4)
0070cc  1b419200  srli r2, r4, 9
0070d0  1b011100  andi r2, r2, 1
0070d4  3b300100  bneq r2, zero, 12
0070d8  7ab69040  vextracti.s r12, 9(vr1)
0070dc  5b010000  j 8
0070e0  7a369240  vextracti.s r12, 9(vr4)
0070e4  1b418200  srli r2, r4, 8
0070e8  1b011100  andi r2, r2, 1
0070ec  3b300100  bneq r2, zero, 12
0070f0  fab68040  vextracti.s r13, 8(vr1)
0070f4  5b010000  j 8
0070f8  fa368240  vextracti.s r13, 8(vr4)
0070fc  1b417200  srli r2, r4, 7
007100  1b011100  andi r2, r2, 1
007104  3b300100  bneq r2, zero, 12
007108  fab77040  vextracti.s r15, 7(vr1)
00710c  5b010000  j 8
007110  fa377240  vextracti.s r15, 7(vr4)
007114  1b416200  srli r2, r4, 6
007118  1b011100  andi r2, r2, 1
00711c  3b300100  bneq r2, zero, 12
007120  7ab86040  vextracti.s r16, 6(vr1)
007124  5b010000  j 8
007128  7a386240  vextracti.s r16, 6(vr4)
00712c  1b415200  srli r2, r4, 5
007130  1b011100  andi r2, r2, 1
007134  3b300100  bneq r2, zero, 12
007138  fab85040  vextracti.s r17, 5(vr1)
00713c  5b010000  j 8
007140  fa385240  vextracti.s r17, 5(vr4)
007144  1b414200  srli r2, r4, 4
007148  1b011100  andi r2, r2, 1
00714c  3b300100  bneq r2, zero, 12
007150  7ab34040  vextracti.s r6, 4(vr1)
007154  5b010000  j 8
007158  7a334240  vextracti.s r6, 4(vr4)
00715c  1b413200  srli r2, r4, 3
007160  1b011100  andi r2, r2, 1
007164  3b300100  bneq r2, zero, 12
007168  7ab13040  vextracti.s r2, 3(vr1)
00716c  5b010000  j 8
007170  7a313240  vextracti.s r2, 3(vr4)
007174  1b492200  srli r18, r4, 2
007178  1b091900  andi r18, r18, 1
00717c  3b300900  bneq r18, zero, 12
007180  7ab92040  vextracti.s r18, 2(vr1)
007184  5b010000  j 8
007188  7a392240  vextracti.s r18, 2(vr4)
00718c  9b491200  srli r19, r4, 1
007190  9b891900  andi r19, r19, 1
007194  3be00900  bneq r19, zero, 24
007198  fab91040  vextracti.s r19, 1(vr1)
00719c  1b021200  andi r4, r4, 1
0071a0  37600200  beq r4, zero, 24
0071a4  7a320240  vextracti.s r4, 0(vr4)
0071a8  db020000  j 20
0071ac  fa391240  vextracti.s r19, 1(vr4)
0071b0  1b021200  andi r4, r4, 1
0071b4  bb4f02fe  bneq r4, zero, -16
0071b8  7ab20040  vextracti.s r4, 0(vr1)
0071bc  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0071c0  9f1b0000  addli r23, zero, 1
0071c4  8a127a02  vmul.f.mz.rn vr5{mr1}, r20, vr7
0071c8  eeb051c2  vsrl.s.mz vr1{mr1}, vr3, vr5
0071cc  e69102c0  vabs.f vr3, vr5
0071d0  fe810be0  vmmov mr3, r23
0071d4  6a224236  vor.u.mh vr4{mr3}, r4, vr4
0071d8  1f220000  addli r4, zero, 2
0071dc  ea301702  vand.s.mz vr1{mr1}, r14, vr1
0071e0  fe0102e0  vmmov mr3, r4
0071e4  1f420000  addli r4, zero, 4
0071e8  6aa24936  vor.u.mh vr4{mr3}, r19, vr4
0071ec  fe0102e0  vmmov mr3, r4
0071f0  1f021000  addli r4, zero, 8
0071f4  96b01202  vadd.s.mz vr1{mr1}, vr5, vr1
0071f8  6a224936  vor.u.mh vr4{mr3}, r18, vr4
0071fc  fe0102e0  vmmov mr3, r4
007200  92301402  vadd.s.mz vr1{mr1}, r8, vr1
007204  6a224136  vor.u.mh vr4{mr3}, r2, vr4
007208  1f012000  addli r2, zero, 16
00720c  fe0101e0  vmmov mr3, r2
007210  1f014000  addli r2, zero, 32
007214  6a224336  vor.u.mh vr4{mr3}, r6, vr4
007218  fe0101e0  vmmov mr3, r2
00721c  1f018000  addli r2, zero, 64
007220  6aa24836  vor.u.mh vr4{mr3}, r17, vr4
007224  fe0101e0  vmmov mr3, r2
007228  1f010001  addli r2, zero, 128
00722c  6a224836  vor.u.mh vr4{mr3}, r16, vr4
007230  fe0101e0  vmmov mr3, r2
007234  1f010002  addli r2, zero, 256
007238  6aa24736  vor.u.mh vr4{mr3}, r15, vr4
00723c  fe0101e0  vmmov mr3, r2
007240  1f010004  addli r2, zero, 512
007244  6aa24636  vor.u.mh vr4{mr3}, r13, vr4
007248  fe0101e0  vmmov mr3, r2
00724c  1f010008  addli r2, zero, 1024
007250  6a224636  vor.u.mh vr4{mr3}, r12, vr4
007254  fe0101e0  vmmov mr3, r2
007258  1f010010  addli r2, zero, 2048
00725c  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
007260  fe0101e0  vmmov mr3, r2
007264  1f010020  addli r2, zero, 4096
007268  6a224536  vor.u.mh vr4{mr3}, r10, vr4
00726c  fe0101e0  vmmov mr3, r2
007270  2b810000  lui r2, 8
007274  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
007278  9f000040  addli r1, zero, 8192
00727c  fe8100e0  vmmov mr3, r1
007280  ab400000  lui r1, 4
007284  6aa24336  vor.u.mh vr4{mr3}, r7, vr4
007288  fe8100e0  vmmov mr3, r1
00728c  6aa24236  vor.u.mh vr4{mr3}, r5, vr4
007290  f6213142  vlt.u.mz mr3{mr1}, vr2, vr3
007294  6ab15d22  vor.s.mz vr2{mr1}, r27, vr5
007298  fe8001a0  vmmov r1, mr3
00729c  fe0101e0  vmmov mr3, r2
0072a0  1bc1f000  srli r2, r1, 15
0072a4  6aa24136  vor.u.mh vr4{mr3}, r3, vr4
0072a8  634acfe1  loadli.w r20,  -3868(r30)
0072ac  1b011100  andi r2, r2, 1
0072b0  46004a10  vstore.mh vr4{mr0}, 0(r20)
0072b4  3b300100  bneq r2, zero, 12
0072b8  fab1f040  vextracti.s r3, 15(vr1)
0072bc  5b010000  j 8
0072c0  fa31f140  vextracti.s r3, 15(vr2)
0072c4  1bc1e000  srli r2, r1, 14
0072c8  1b011100  andi r2, r2, 1
0072cc  3b300100  bneq r2, zero, 12
0072d0  fab2e040  vextracti.s r5, 14(vr1)
0072d4  5b010000  j 8
0072d8  fa32e140  vextracti.s r5, 14(vr2)
0072dc  1bc1d000  srli r2, r1, 13
0072e0  1b011100  andi r2, r2, 1
0072e4  3b300100  bneq r2, zero, 12
0072e8  fab3d040  vextracti.s r7, 13(vr1)
0072ec  5b010000  j 8
0072f0  fa33d140  vextracti.s r7, 13(vr2)
0072f4  1bc1c000  srli r2, r1, 12
0072f8  1b011100  andi r2, r2, 1
0072fc  3b300100  bneq r2, zero, 12
007300  7ab2c040  vextracti.s r4, 12(vr1)
007304  5b010000  j 8
007308  7a32c140  vextracti.s r4, 12(vr2)
00730c  1bc1b000  srli r2, r1, 11
007310  1b011100  andi r2, r2, 1
007314  3b300100  bneq r2, zero, 12
007318  7ab5b040  vextracti.s r10, 11(vr1)
00731c  5b010000  j 8
007320  7a35b140  vextracti.s r10, 11(vr2)
007324  1bc1a000  srli r2, r1, 10
007328  1b011100  andi r2, r2, 1
00732c  3b300100  bneq r2, zero, 12
007330  fab5a040  vextracti.s r11, 10(vr1)
007334  5b010000  j 8
007338  fa35a140  vextracti.s r11, 10(vr2)
00733c  1bc19000  srli r2, r1, 9
007340  1b011100  andi r2, r2, 1
007344  3b300100  bneq r2, zero, 12
007348  7ab69040  vextracti.s r12, 9(vr1)
00734c  5b010000  j 8
007350  7a369140  vextracti.s r12, 9(vr2)
007354  1bc18000  srli r2, r1, 8
007358  1b011100  andi r2, r2, 1
00735c  3b300100  bneq r2, zero, 12
007360  fab68040  vextracti.s r13, 8(vr1)
007364  5b010000  j 8
007368  fa368140  vextracti.s r13, 8(vr2)
00736c  1bc17000  srli r2, r1, 7
007370  1b011100  andi r2, r2, 1
007374  3b300100  bneq r2, zero, 12
007378  fab77040  vextracti.s r15, 7(vr1)
00737c  5b010000  j 8
007380  fa377140  vextracti.s r15, 7(vr2)
007384  1bc16000  srli r2, r1, 6
007388  1b011100  andi r2, r2, 1
00738c  3b300100  bneq r2, zero, 12
007390  7ab86040  vextracti.s r16, 6(vr1)
007394  5b010000  j 8
007398  7a386140  vextracti.s r16, 6(vr2)
00739c  1bc15000  srli r2, r1, 5
0073a0  1b011100  andi r2, r2, 1
0073a4  3b300100  bneq r2, zero, 12
0073a8  fab85040  vextracti.s r17, 5(vr1)
0073ac  5b010000  j 8
0073b0  fa385140  vextracti.s r17, 5(vr2)
0073b4  1bc14000  srli r2, r1, 4
0073b8  1b011100  andi r2, r2, 1
0073bc  3b300100  bneq r2, zero, 12
0073c0  7ab34040  vextracti.s r6, 4(vr1)
0073c4  5b010000  j 8
0073c8  7a334140  vextracti.s r6, 4(vr2)
0073cc  1bc13000  srli r2, r1, 3
0073d0  1b011100  andi r2, r2, 1
0073d4  3b300100  bneq r2, zero, 12
0073d8  7ab13040  vextracti.s r2, 3(vr1)
0073dc  5b010000  j 8
0073e0  7a313140  vextracti.s r2, 3(vr2)
0073e4  1bc92000  srli r18, r1, 2
0073e8  1b091900  andi r18, r18, 1
0073ec  3b300900  bneq r18, zero, 12
0073f0  7ab92040  vextracti.s r18, 2(vr1)
0073f4  5b010000  j 8
0073f8  7a392140  vextracti.s r18, 2(vr2)
0073fc  9bc91000  srli r19, r1, 1
007400  9b891900  andi r19, r19, 1
007404  3be00900  bneq r19, zero, 24
007408  fab91040  vextracti.s r19, 1(vr1)
00740c  9b801000  andi r1, r1, 1
007410  37e00000  beq r1, zero, 24
007414  fa300140  vextracti.s r1, 0(vr2)
007418  db020000  j 20
00741c  fa391140  vextracti.s r19, 1(vr2)
007420  9b801000  andi r1, r1, 1
007424  bbcf00fe  bneq r1, zero, -16
007428  fab00040  vextracti.s r1, 0(vr1)
00742c  9f1b0000  addli r23, zero, 1
007430  fe810be0  vmmov mr3, r23
007434  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
007438  9f200000  addli r1, zero, 2
00743c  fe8100e0  vmmov mr3, r1
007440  9f400000  addli r1, zero, 4
007444  6aa00936  vor.u.mh vr0{mr3}, r19, vr0
007448  fe8100e0  vmmov mr3, r1
00744c  9f001000  addli r1, zero, 8
007450  6a200936  vor.u.mh vr0{mr3}, r18, vr0
007454  fe8100e0  vmmov mr3, r1
007458  9f002000  addli r1, zero, 16
00745c  6a200136  vor.u.mh vr0{mr3}, r2, vr0
007460  fe8100e0  vmmov mr3, r1
007464  9f004000  addli r1, zero, 32
007468  6a200336  vor.u.mh vr0{mr3}, r6, vr0
00746c  fe8100e0  vmmov mr3, r1
007470  9f008000  addli r1, zero, 64
007474  6aa00836  vor.u.mh vr0{mr3}, r17, vr0
007478  fe8100e0  vmmov mr3, r1
00747c  9f000001  addli r1, zero, 128
007480  6a200836  vor.u.mh vr0{mr3}, r16, vr0
007484  fe8100e0  vmmov mr3, r1
007488  9f000002  addli r1, zero, 256
00748c  6aa00736  vor.u.mh vr0{mr3}, r15, vr0
007490  fe8100e0  vmmov mr3, r1
007494  9f000004  addli r1, zero, 512
007498  6aa00636  vor.u.mh vr0{mr3}, r13, vr0
00749c  fe8100e0  vmmov mr3, r1
0074a0  9f000008  addli r1, zero, 1024
0074a4  6a200636  vor.u.mh vr0{mr3}, r12, vr0
0074a8  fe8100e0  vmmov mr3, r1
0074ac  9f000010  addli r1, zero, 2048
0074b0  6aa00536  vor.u.mh vr0{mr3}, r11, vr0
0074b4  fe8100e0  vmmov mr3, r1
0074b8  9f000020  addli r1, zero, 4096
0074bc  6a200536  vor.u.mh vr0{mr3}, r10, vr0
0074c0  fe8100e0  vmmov mr3, r1
0074c4  9f000040  addli r1, zero, 8192
0074c8  6a200236  vor.u.mh vr0{mr3}, r4, vr0
0074cc  fe8100e0  vmmov mr3, r1
0074d0  ab400000  lui r1, 4
0074d4  6aa00336  vor.u.mh vr0{mr3}, r7, vr0
0074d8  fe8100e0  vmmov mr3, r1
0074dc  ab800000  lui r1, 8
0074e0  6aa00236  vor.u.mh vr0{mr3}, r5, vr0
0074e4  fe8100e0  vmmov mr3, r1
0074e8  6aa00136  vor.u.mh vr0{mr3}, r3, vr0
0074ec  6af004c0  vsrl.p vr0, r9, vr0
0074f0  46000a14  vstore.mh vr0{mr2}, 0(r20)
0074f4  00a00000  mfence { lm }
0074f8  63018f00  loadli.w r2,  64(r30)
0074fc  e340efd9  loadli.w r1,  -4876(r30)
007500  e341efe1  loadli.w r3,  -3852(r30)
007504  bfe521c6  blt.s r3, r2, -29320
007508  9f000000  addli r1, zero, 0
00750c  5baef1ff  j -29328
007510  9f0e8fd9  addli sp, r30, -4928
007514  9f8e8e26  addli sp, sp, 4928
007518  00a00300  mfence { lm, sm, gm }
00751c  00100000  exit
007520  00100000  exit
007524  00100000  exit
007528  00100000  exit
00752c  00100000  exit
007530  00100000  exit
007534  00100000  exit
007538  00100000  exit
00753c  00100000  exit
007540  00100000  exit
007544  00100000  exit
007548  00100000  exit
00754c  00100000  exit
007550  00100000  exit
007554  00100000  exit
007558  00100000  exit
00755c  00100000  exit
007560  00100000  exit
007564  00100000  exit
007568  00100000  exit
00756c  00100000  exit
007570  00100000  exit
007574  00100000  exit
007578  00100000  exit
00757c  00100000  exit
007580  00100000  exit
007584  00100000  exit
007588  00100000  exit
00758c  00100000  exit
007590  00100000  exit
007594  00100000  exit
007598  00100000  exit
00759c  00100000  exit
0075a0  00100000  exit
0075a4  00100000  exit
0075a8  00100000  exit
0075ac  00100000  exit
0075b0  00100000  exit
0075b4  00100000  exit
0075b8  00100000  exit
0075bc  00100000  exit
0075c0  00100000  exit
0075c4  00100000  exit
0075c8  00100000  exit
0075cc  00100000  exit
0075d0  00100000  exit
0075d4  00100000  exit
0075d8  00100000  exit
0075dc  00100000  exit
0075e0  00100000  exit
0075e4  00100000  exit
0075e8  00100000  exit
0075ec  00100000  exit
0075f0  00100000  exit
0075f4  00100000  exit
0075f8  00100000  exit
0075fc  00100000  exit
007600  00100000  exit
007604  00100000  exit
007608  00100000  exit
00760c  00100000  exit
007610  00100000  exit
007614  00100000  exit
007618  00100000  exit
00761c  00100000  exit
007620  00100000  exit
007624  00100000  exit
007628  00100000  exit
00762c  00100000  exit
007630  00100000  exit
007634  00100000  exit
007638  00100000  exit
00763c  00100000  exit
007640  00100000  exit
007644  00100000  exit
007648  00100000  exit
00764c  00100000  exit
007650  00100000  exit
007654  00100000  exit
007658  00100000  exit
00765c  00100000  exit
007660  00100000  exit
007664  00100000  exit
007668  00100000  exit
00766c  00100000  exit
007670  00100000  exit
007674  00100000  exit
007678  00100000  exit
00767c  00100000  exit
007680  00100000  exit
007684  00100000  exit
007688  00100000  exit
00768c  00100000  exit
007690  00100000  exit
007694  00100000  exit
007698  00100000  exit
00769c  00100000  exit
0076a0  00100000  exit
0076a4  00100000  exit
0076a8  00100000  exit
0076ac  00100000  exit
0076b0  00100000  exit
0076b4  00100000  exit
0076b8  00100000  exit
0076bc  00100000  exit
0076c0  00100000  exit
0076c4  00100000  exit
0076c8  00100000  exit
0076cc  00100000  exit
0076d0  00100000  exit
0076d4  00100000  exit
0076d8  00100000  exit
0076dc  00100000  exit
0076e0  00100000  exit
0076e4  00100000  exit
0076e8  00100000  exit
0076ec  00100000  exit
0076f0  00100000  exit
0076f4  00100000  exit
0076f8  00100000  exit
0076fc  00100000  exit
007700  00100000  exit
007704  00100000  exit
007708  00100000  exit
00770c  00100000  exit
007710  00100000  exit
007714  00100000  exit
007718  00100000  exit
00771c  00100000  exit
007720  00100000  exit
007724  00100000  exit
007728  00100000  exit
00772c  00100000  exit
007730  00100000  exit
007734  00100000  exit
007738  00100000  exit
00773c  00100000  exit
007740  00100000  exit
007744  00100000  exit
007748  00100000  exit
00774c  00100000  exit
007750  00100000  exit
007754  00100000  exit
007758  00100000  exit
00775c  00100000  exit
