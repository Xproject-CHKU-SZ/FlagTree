000000  17200000  xor zero, zero, zero
000004  1f420000  addli r4, zero, 4
000008  1f041000  addli r8, zero, 8
00000c  9f77f0ff  addli r15, zero, -1
000010  80310002  core_id r3
000014  00510102  load_param_i r2, 2
000018  ab800000  lui r1, 8
00001c  ab020000  lui r5, 0
000020  9f82020a  addli r5, r5, 1280
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
000078  9f096000  addli r19, zero, 48
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
0000dc  9f8e8ed6  addli sp, sp, -5312
0000e0  1f8f0e29  addli r30, sp, 5248
0000e4  9f01000a  addli r3, zero, 1280
0000e8  abf2ffff  lui r5, 1048575
0000ec  1f130000  addli r6, zero, 1
0000f0  eb508f02  load.d r[2:3], 40(r30)
0000f4  b381312e  zext_int2long r[3:4], r3
0000f8  9b92e2ff  ori r5, r5, 4094
0000fc  3303632c  zext_int2long r[6:7], r6
000100  1f04cfd7  addli r8, r30, -5152
000104  6b5c0f02  load.d r[25:26], 32(r30)
000108  9f043fd7  addli r9, r30, -5224
00010c  3385a22a  zext_int2long r[10:11], r5
000110  8f911166  div.sl r[3:4], r[3:4], r[1:2]
000114  0bb86148  max.sl r[17:18], r[4:5], r[7:8]
000118  b3025028  zext_int2long r[5:6], zero
00011c  9f03dfd7  addli r7, r30, -5144
000120  9701a802  and.d r[4:5], r[17:18], r[11:12]
000124  13a25100  seteq.d r4, r[4:5], r[6:7]
000128  eb520f01  load.d r[6:7], 16(r30)
00012c  e3013f00  loadli.w r3,  24(r30)
000130  73b05300  store.d r[6:7], 0(r7)
000134  eb528f00  load.d r[6:7], 8(r30)
000138  73305400  store.d r[6:7], 0(r8)
00013c  eb520f00  load.d r[6:7], 0(r30)
000140  73b05400  store.d r[6:7], 0(r9)
000144  bb0c0202  bneq r4, zero, 1824
000148  00320002  core_id r4
00014c  9f221000  addli r5, zero, 10
000150  ab030000  lui r7, 0
000154  93824204  setlt.u r5, r5, r4
000158  9f830300  addli r7, r7, 0
00015c  bbb00200  bneq r5, zero, 44
000160  9f120000  addli r5, zero, 1
000164  97b24200  sll r5, r5, r4
000168  9b821241  andi r5, r5, 1041
00016c  37f00200  beq r5, zero, 28
000170  9bb21000  slli r5, r1, 1
000174  2b0300f0  lui r6, 983040
000178  97926200  or r5, r5, r6
00017c  1f033fd7  addli r6, r30, -5224
000180  6b540300  load.d r[9:10], 0(r6)
000184  ff427400  bl_gm2lm r5, r7, 0(r[9:10])
000188  80d20002  load_param_i r5, 1
00018c  00530102  load_param_i r6, 2
000190  00560002  load_param_i r12, 0
000194  00a00000  mfence { lm }
000198  0b135320  mul.s r6, r6, r5
00019c  0b964250  fmac.s r12, r5, r4
0001a0  3303632c  zext_int2long r[6:7], r6
0001a4  33024628  zext_int2long r[4:5], r12
0001a8  0f156c74  mod.sl r[10:11], r[24:25], r[6:7]
0001ac  0f136c64  div.sl r[6:7], r[24:25], r[6:7]
0001b0  1336a204  setlt.sl r12, r[5:6], r[11:12]
0001b4  0b35a240  min.sl r[11:12], r[5:6], r[11:12]
0001b8  0b354350  fmac.sl r[11:12], r[7:8], r[5:6]
0001bc  3307e628  zext_int2long r[14:15], r12
0001c0  0b22e310  add.ul r[5:6], r[7:8], r[15:16]
0001c4  0b22a210  add.ul r[5:6], r[5:6], r[11:12]
0001c8  8b358541  min.sl r[12:13], r[11:12], r[25:26]
0001cc  0b348241  min.sl r[9:10], r[5:6], r[25:26]
0001d0  abf20000  lui r5, 15
0001d4  1332b406  setle.sl r4, r[9:10], r[12:13]
0001d8  9b92f2ff  ori r5, r5, 4095
0001dc  80a10204  csr_set csr3, r5
0001e0  00d00100  sync_group
0001e4  3b0d0204  bneq r4, zero, 2880
0001e8  9f470000  addli r15, zero, 4
0001ec  9f020fd8  addli r5, r30, -5120
0001f0  2383f001  andi.d r[7:8], r[2:3], 31
0001f4  1f058fd7  addli r10, r30, -5184
0001f8  8b39b418  sub.sl r[20:21], r[9:10], r[12:13]
0001fc  9bba1000  slli r21, r1, 1
000200  1f1d0000  addli r26, zero, 1
000204  9f0b2000  addli r23, zero, 16
000208  0b92f030  div.s r4, r1, r15
00020c  73306500  store.d r[7:8], 0(r10)
000210  1b934200  ori r6, r5, 4
000214  1f890214  addli r18, r5, 2560
000218  670b6fd6  storeli.w r6, -5200(r30)
00021c  1b3c2200  slli r24, r4, 2
000220  1b323200  slli r4, r4, 3
000224  8b924210  add.s r5, r5, r4
000228  8b9c8019  sub.s r25, r1, r24
00022c  e70a5fd6  storeli.w r5, -5208(r30)
000230  ab020000  lui r5, 0
000234  e74b2fd7  storeli.w r18, -5188(r30)
000238  9f820200  addli r5, r5, 0
00023c  8b1d5210  add.s r27, r4, r5
000240  1f02bfd7  addli r4, r30, -5160
000244  9f02afd7  addli r5, r30, -5168
000248  73300201  store.d r[17:18], 0(r4)
00024c  73b08200  store.d r[9:10], 0(r5)
000250  5b090000  j 72
000254  1f05afd7  addli r10, r30, -5168
000258  00a00300  mfence { lm, sm, gm }
00025c  2b0200f0  lui r4, 983040
000260  1f0edfd7  addli r28, r30, -5144
000264  1f00efd7  addli zero, r30, -5136
000268  8ba50511  add.ul r[12:13], r[12:13], r[17:18]
00026c  8bb90919  sub.sl r[20:21], r[20:21], r[17:18]
000270  6b540500  load.d r[9:10], 0(r10)
000274  eb560000  load.d r[14:15], 0(zero)
000278  6b530e00  load.d r[7:8], 0(r28)
00027c  17124b00  or r4, r22, r4
000280  17200000  xor zero, zero, zero
000284  93b28504  setlt.sl r5, r[12:13], r[9:10]
000288  0b23d310  add.ul r[7:8], r[7:8], r[14:15]
00028c  7f322301  s_lm2gm r4, r18, 0(r[7:8])
000290  00a00200  mfence { lm, gm }
000294  37ca0204  beq r5, zero, 2704
000298  0b32b418  sub.sl r[5:6], r[9:10], r[12:13]
00029c  1f0bcfd7  addli r22, r30, -5152
0002a0  2b0500f0  lui r10, 983040
0002a4  0b320241  min.sl r[5:6], r[5:6], r[17:18]
0002a8  0bb81520  mul.sl r[17:18], r[12:13], r[2:3]
0002ac  6b540b00  load.d r[9:10], 0(r22)
0002b0  0b331220  mul.sl r[7:8], r[5:6], r[2:3]
0002b4  9736a803  sll.d r[14:15], r[17:18], r26
0002b8  1f08efd7  addli r16, r30, -5136
0002bc  1b3e1300  slli r28, r6, 1
0002c0  7330d800  store.d r[14:15], 0(r16)
0002c4  0b28d410  add.ul r[17:18], r[9:10], r[14:15]
0002c8  1f240000  addli r8, zero, 2
0002cc  1715ae00  or r10, r28, r10
0002d0  7f252801  l_gm2lm r10, r18, 0(r[17:18])
0002d4  bf428200  blt.s r4, r8, 176
0002d8  9f068fd7  addli r13, r30, -5184
0002dc  33080029  zext_int2long r[16:17], zero
0002e0  e74ccfd7  storeli.w r28, -5172(r30)
0002e4  6bd40600  load.d r[9:10], 0(r13)
0002e8  13250401  seteq.d r10, r[9:10], r[17:18]
0002ec  bb4a0500  bneq r10, zero, 688
0002f0  63075fd7  loadli.w r14,  -5208(r30)
0002f4  630b6fd7  loadli.w r22,  -5200(r30)
0002f8  ab060000  lui r13, 0
0002fc  1f050000  addli r10, zero, 0
000300  9f860600  addli r13, r13, 0
000304  db020000  j 20
000308  1f150500  addli r10, r10, 1
00030c  0b1b5b11  add.s r22, r22, r21
000310  0b175711  add.s r14, r14, r21
000314  b77c4500  beq r10, r4, 828
000318  3f81f000  blt.s r1, r15, 64
00031c  1f080000  addli r16, zero, 0
000320  9fc80600  addli r17, r13, 4
000324  1f090b00  addli r18, r22, 0
000328  6bb4c8ff  load.hu r8, -4(r17)
00032c  ebb4e8ff  load.hu r9, -2(r17)
000330  6bbd0800  load.hu r26, 0(r17)
000334  6bbe2800  load.hu r28, 2(r17)
000338  1f480800  addli r16, r16, 4
00033c  9f881800  addli r17, r17, 8
000340  731e89fe  store.h r8, -4(r18)
000344  731f99fe  store.h r9, -2(r18)
000348  7310a901  store.h r26, 0(r18)
00034c  7311c901  store.h r28, 2(r18)
000350  1f091900  addli r18, r18, 8
000354  3f5f88ff  blt.s r16, r24, -44
000358  1f880d00  addli r16, r27, 0
00035c  9f080700  addli r17, r14, 0
000360  1f890c00  addli r18, r25, 0
000364  cb9e80ff  ble.s r1, r24, -92
000368  6b340800  load.hu r8, 0(r16)
00036c  1f79f9ff  addli r18, r18, -1
000370  1f280800  addli r16, r16, 2
000374  73908800  store.h r8, 0(r17)
000378  9fa80800  addli r17, r17, 2
00037c  bb3f09fe  bneq r18, zero, -20
000380  5bf1ffff  j -120
000384  00a00000  mfence { lm }
000388  2bf2ffff  lui r4, 1048575
00038c  ab060000  lui r13, 0
000390  1b1202fc  ori r4, r4, 4032
000394  9f860600  addli r13, r13, 0
000398  17024300  and r4, r6, r4
00039c  bf74a201  blt.s r4, r26, 316
0003a0  9f020000  addli r5, zero, 0
0003a4  1f850600  addli r10, r13, 0
0003a8  1f0b0900  addli r22, r18, 0
0003ac  42100502  vload_mask16.mz vr0{mr1}, 0(r10)
0003b0  2b04ffff  lui r8, 1048560
0003b4  c2100b02  vload_mask16.mz vr1{mr1}, 0(r22)
0003b8  9f048500  addli r9, r10, 64
0003bc  1f078b00  addli r14, r22, 64
0003c0  9f828200  addli r5, r5, 64
0003c4  1f050501  addli r10, r10, 128
0003c8  c2910402  vload_mask16.mz vr3{mr1}, 0(r9)
0003cc  42110702  vload_mask16.mz vr2{mr1}, 0(r14)
0003d0  ab040100  lui r9, 16
0003d4  2b880000  lui r16, 8
0003d8  6ab20ba2  vsll.s.mz vr4{mr1}, r23, vr0
0003dc  ea320402  vand.s.mz vr5{mr1}, r8, vr0
0003e0  6ab01ba2  vsll.s.mz vr0{mr1}, r23, vr1
0003e4  ea301402  vand.s.mz vr1{mr1}, r8, vr1
0003e8  6ab33ba2  vsll.s.mz vr6{mr1}, r23, vr3
0003ec  a2905102  vmac.f.mz.rn vr1{mr1}, r3, vr5
0003f0  22904102  vmac.f.mz.rn vr0{mr1}, r3, vr4
0003f4  6aa21402  vand.u.mz vr4{mr1}, r9, vr1
0003f8  eaa20402  vand.u.mz vr5{mr1}, r9, vr0
0003fc  72214002  veq.u.mz mr2{mr1}, zero, vr4
000400  72205002  veq.u.mz mr0{mr1}, zero, vr5
000404  6a323402  vand.s.mz vr4{mr1}, r8, vr3
000408  ea312402  vand.s.mz vr3{mr1}, r8, vr2
00040c  6ab12ba2  vsll.s.mz vr2{mr1}, r23, vr2
000410  fe010140  vmnot mr3, mr2
000414  92201816  vadd.u.mh vr1{mr3}, r16, vr1
000418  fe010040  vmnot mr3, mr0
00041c  12200816  vadd.u.mh vr0{mr3}, r16, vr0
000420  ab780000  lui r17, 7
000424  a2914102  vmac.f.mz.rn vr3{mr1}, r3, vr4
000428  22916102  vmac.f.mz.rn vr2{mr1}, r3, vr6
00042c  9b98f8ff  ori r17, r17, 4095
000430  92a01814  vadd.u.mh vr1{mr2}, r17, vr1
000434  12a00810  vadd.u.mh vr0{mr0}, r17, vr0
000438  2ba4aaaa  lui r8, 699050
00043c  1b14a4aa  ori r8, r8, 2730
000440  7e0004e0  vmmov mr0, r8
000444  1f04ffd7  addli r8, r30, -5128
000448  7e0000a0  vmmov zero, mr0
00044c  46001b10  vstore.mh vr1{mr0}, 0(r22)
000450  67000400  storeli.w zero, 0(r8)
000454  eaf00bc0  vsrl.p vr1, r23, vr0
000458  2b545555  lui r8, 349525
00045c  17200000  xor zero, zero, zero
000460  6aa03402  vand.u.mz vr0{mr1}, r9, vr3
000464  1b145455  ori r8, r8, 1365
000468  7e0004e0  vmmov mr0, r8
00046c  1f44ffd7  addli r8, r30, -5124
000470  7e0000a0  vmmov zero, mr0
000474  46001b10  vstore.mh vr1{mr0}, 0(r22)
000478  eaa02402  vand.u.mz vr1{mr1}, r9, vr2
00047c  9f04ffd7  addli r9, r30, -5128
000480  1f0b0b01  addli r22, r22, 128
000484  67000400  storeli.w zero, 0(r8)
000488  17200000  xor zero, zero, zero
00048c  f2210002  veq.u.mz mr3{mr1}, zero, vr0
000490  7e800140  vmnot mr0, mr3
000494  92213810  vadd.u.mh vr3{mr0}, r16, vr3
000498  72201002  veq.u.mz mr0{mr1}, zero, vr1
00049c  7e010040  vmnot mr2, mr0
0004a0  12212814  vadd.u.mh vr2{mr2}, r16, vr2
0004a4  1f48ffd7  addli r16, r30, -5124
0004a8  92a13816  vadd.u.mh vr3{mr3}, r17, vr3
0004ac  12a12810  vadd.u.mh vr2{mr0}, r17, vr2
0004b0  63800400  loadli.w zero,  0(r9)
0004b4  7e0000e0  vmmov mr0, zero
0004b8  17200000  xor zero, zero, zero
0004bc  46003710  vstore.mh vr3{mr0}, 0(r14)
0004c0  6af02bc0  vsrl.p vr0, r23, vr2
0004c4  63000800  loadli.w zero,  0(r16)
0004c8  7e0000e0  vmmov mr0, zero
0004cc  17200000  xor zero, zero, zero
0004d0  46000710  vstore.mh vr0{mr0}, 0(r14)
0004d4  3feb42fe  blt.s r5, r4, -296
0004d8  9f02bfd7  addli r5, r30, -5160
0004dc  1f0b0e00  addli r22, r28, 0
0004e0  6bd80200  load.d r[17:18], 0(r5)
0004e4  cb4543fe  ble.s r6, r4, -656
0004e8  0b343841  min.sl r[9:10], r[17:18], r[20:21]
0004ec  abf2ffff  lui r5, 1048575
0004f0  0bb48020  mul.sl r[9:10], r[2:3], r[9:10]
0004f4  9b9202f8  ori r5, r5, 3968
0004f8  1b341400  slli r8, r8, 1
0004fc  17045400  and r8, r8, r5
000500  8b128910  add.s r5, r18, r8
000504  0b15d410  add.s r10, r8, r13
000508  42100502  vload_mask16.mz vr0{mr1}, 0(r10)
00050c  2b04ffff  lui r8, 1048560
000510  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
000514  ab040100  lui r9, 16
000518  2b870000  lui r14, 8
00051c  1f024200  addli r4, r4, 32
000520  1f058500  addli r10, r10, 64
000524  ea310402  vand.s.mz vr3{mr1}, r8, vr0
000528  ea302402  vand.s.mz vr1{mr1}, r8, vr2
00052c  6ab20ba2  vsll.s.mz vr4{mr1}, r23, vr0
000530  6ab02ba2  vsll.s.mz vr0{mr1}, r23, vr2
000534  a2903102  vmac.f.mz.rn vr1{mr1}, r3, vr3
000538  22904102  vmac.f.mz.rn vr0{mr1}, r3, vr4
00053c  6aa11402  vand.u.mz vr2{mr1}, r9, vr1
000540  eaa10402  vand.u.mz vr3{mr1}, r9, vr0
000544  72212002  veq.u.mz mr2{mr1}, zero, vr2
000548  72203002  veq.u.mz mr0{mr1}, zero, vr3
00054c  fe010140  vmnot mr3, mr2
000550  92201716  vadd.u.mh vr1{mr3}, r14, vr1
000554  fe010040  vmnot mr3, mr0
000558  12200716  vadd.u.mh vr0{mr3}, r14, vr0
00055c  2b740000  lui r8, 7
000560  1b14f4ff  ori r8, r8, 4095
000564  92201414  vadd.u.mh vr1{mr2}, r8, vr1
000568  12200410  vadd.u.mh vr0{mr0}, r8, vr0
00056c  2ba4aaaa  lui r8, 699050
000570  1b14a4aa  ori r8, r8, 2730
000574  7e0004e0  vmmov mr0, r8
000578  46801210  vstore.mh vr1{mr0}, 0(r5)
00057c  eaf00bc0  vsrl.p vr1, r23, vr0
000580  2b545555  lui r8, 349525
000584  1b145455  ori r8, r8, 1365
000588  7e0004e0  vmmov mr0, r8
00058c  46801210  vstore.mh vr1{mr0}, 0(r5)
000590  9f828200  addli r5, r5, 64
000594  bf5d62fe  blt.s r4, r6, -140
000598  db97ffff  j -836
00059c  ab060000  lui r13, 0
0005a0  9f140000  addli r9, zero, 1
0005a4  1f080fd8  addli r16, r30, -5120
0005a8  1f070000  addli r14, zero, 0
0005ac  9f860600  addli r13, r13, 0
0005b0  5b020000  j 16
0005b4  1f170700  addli r14, r14, 1
0005b8  0b185811  add.s r16, r16, r21
0005bc  37524700  beq r14, r4, 148
0005c0  bfdf90fe  blt.s r1, r9, -12
0005c4  1f0b0000  addli r22, zero, 0
0005c8  1f890600  addli r18, r13, 0
0005cc  1f050800  addli r10, r16, 0
0005d0  42100902  vload_mask16.mz vr0{mr1}, 0(r18)
0005d4  ab08ffff  lui r17, 1048560
0005d8  2b0d0100  lui r26, 16
0005dc  2b840000  lui r8, 8
0005e0  1f0b4b00  addli r22, r22, 32
0005e4  1f098900  addli r18, r18, 64
0005e8  eab00802  vand.s.mz vr1{mr1}, r17, vr0
0005ec  6ab00ba2  vsll.s.mz vr0{mr1}, r23, vr0
0005f0  6a211d02  vand.u.mz vr2{mr1}, r26, vr1
0005f4  ea210d02  vand.u.mz vr3{mr1}, r26, vr0
0005f8  72212002  veq.u.mz mr2{mr1}, zero, vr2
0005fc  72203002  veq.u.mz mr0{mr1}, zero, vr3
000600  fe010140  vmnot mr3, mr2
000604  92201416  vadd.u.mh vr1{mr3}, r8, vr1
000608  fe010040  vmnot mr3, mr0
00060c  12200416  vadd.u.mh vr0{mr3}, r8, vr0
000610  2b740000  lui r8, 7
000614  1b14f4ff  ori r8, r8, 4095
000618  92201414  vadd.u.mh vr1{mr2}, r8, vr1
00061c  12200410  vadd.u.mh vr0{mr0}, r8, vr0
000620  2ba4aaaa  lui r8, 699050
000624  1b14a4aa  ori r8, r8, 2730
000628  7e0004e0  vmmov mr0, r8
00062c  46001510  vstore.mh vr1{mr0}, 0(r10)
000630  eaf00bc0  vsrl.p vr1, r23, vr0
000634  2b545555  lui r8, 349525
000638  1b145455  ori r8, r8, 1365
00063c  7e0004e0  vmmov mr0, r8
000640  46001510  vstore.mh vr1{mr0}, 0(r10)
000644  1f058500  addli r10, r10, 64
000648  3f2e1bfe  blt.s r22, r1, -120
00064c  5bedffff  j -152
000650  00a00000  mfence { lm }
000654  2bf2ffff  lui r4, 1048575
000658  634b9fd7  loadli.w r22,  -5172(r30)
00065c  1f1d0000  addli r26, zero, 1
000660  1b1202fc  ori r4, r4, 4032
000664  17024300  and r4, r6, r4
000668  bf64a201  blt.s r4, r26, 312
00066c  9f020fd8  addli r5, r30, -5120
000670  1f050000  addli r10, zero, 0
000674  1f840214  addli r8, r5, 2560
000678  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
00067c  ab04ffff  lui r9, 1048560
000680  1f888200  addli r16, r5, 64
000684  1f878214  addli r14, r5, 2624
000688  9f46ffd7  addli r13, r30, -5124
00068c  1f058500  addli r10, r10, 64
000690  9f820201  addli r5, r5, 128
000694  42110402  vload_mask16.mz vr2{mr1}, 0(r8)
000698  c2120802  vload_mask16.mz vr5{mr1}, 0(r16)
00069c  6ab20402  vand.s.mz vr4{mr1}, r9, vr0
0006a0  eab10ba2  vsll.s.mz vr3{mr1}, r23, vr0
0006a4  eab02402  vand.s.mz vr1{mr1}, r9, vr2
0006a8  6ab02ba2  vsll.s.mz vr0{mr1}, r23, vr2
0006ac  42110702  vload_mask16.mz vr2{mr1}, 0(r14)
0006b0  2b080100  lui r16, 16
0006b4  ab880000  lui r17, 8
0006b8  6ab35ba2  vsll.s.mz vr6{mr1}, r23, vr5
0006bc  a2904102  vmac.f.mz.rn vr1{mr1}, r3, vr4
0006c0  22903102  vmac.f.mz.rn vr0{mr1}, r3, vr3
0006c4  ea211802  vand.u.mz vr3{mr1}, r16, vr1
0006c8  6a220802  vand.u.mz vr4{mr1}, r16, vr0
0006cc  72213002  veq.u.mz mr2{mr1}, zero, vr3
0006d0  72204002  veq.u.mz mr0{mr1}, zero, vr4
0006d4  eab12402  vand.s.mz vr3{mr1}, r9, vr2
0006d8  6ab25402  vand.s.mz vr4{mr1}, r9, vr5
0006dc  6ab12ba2  vsll.s.mz vr2{mr1}, r23, vr2
0006e0  fe010140  vmnot mr3, mr2
0006e4  92a01816  vadd.u.mh vr1{mr3}, r17, vr1
0006e8  fe010040  vmnot mr3, mr0
0006ec  12a00816  vadd.u.mh vr0{mr3}, r17, vr0
0006f0  2b790000  lui r18, 7
0006f4  a2914102  vmac.f.mz.rn vr3{mr1}, r3, vr4
0006f8  22916102  vmac.f.mz.rn vr2{mr1}, r3, vr6
0006fc  1b19f9ff  ori r18, r18, 4095
000700  92201914  vadd.u.mh vr1{mr2}, r18, vr1
000704  12200910  vadd.u.mh vr0{mr0}, r18, vr0
000708  aba4aaaa  lui r9, 699050
00070c  9b94a4aa  ori r9, r9, 2730
000710  7e8004e0  vmmov mr0, r9
000714  7e0000a0  vmmov zero, mr0
000718  46001410  vstore.mh vr1{mr0}, 0(r8)
00071c  67800600  storeli.w zero, 0(r13)
000720  eaf00bc0  vsrl.p vr1, r23, vr0
000724  ab545555  lui r9, 349525
000728  17200000  xor zero, zero, zero
00072c  6a203802  vand.u.mz vr0{mr1}, r16, vr3
000730  9b945455  ori r9, r9, 1365
000734  7e8004e0  vmmov mr0, r9
000738  9f04ffd7  addli r9, r30, -5128
00073c  7e0000a0  vmmov zero, mr0
000740  46001410  vstore.mh vr1{mr0}, 0(r8)
000744  ea202802  vand.u.mz vr1{mr1}, r16, vr2
000748  1f44ffd7  addli r8, r30, -5124
00074c  1f08ffd7  addli r16, r30, -5128
000750  67800400  storeli.w zero, 0(r9)
000754  17200000  xor zero, zero, zero
000758  f2210002  veq.u.mz mr3{mr1}, zero, vr0
00075c  7e800140  vmnot mr0, mr3
000760  92a13810  vadd.u.mh vr3{mr0}, r17, vr3
000764  72201002  veq.u.mz mr0{mr1}, zero, vr1
000768  7e010040  vmnot mr2, mr0
00076c  12a12814  vadd.u.mh vr2{mr2}, r17, vr2
000770  92213916  vadd.u.mh vr3{mr3}, r18, vr3
000774  12212910  vadd.u.mh vr2{mr0}, r18, vr2
000778  63000400  loadli.w zero,  0(r8)
00077c  7e0000e0  vmmov mr0, zero
000780  17200000  xor zero, zero, zero
000784  46003710  vstore.mh vr3{mr0}, 0(r14)
000788  6af02bc0  vsrl.p vr0, r23, vr2
00078c  63000800  loadli.w zero,  0(r16)
000790  7e0000e0  vmmov mr0, zero
000794  17200000  xor zero, zero, zero
000798  46000710  vstore.mh vr0{mr0}, 0(r14)
00079c  3f6b45fe  blt.s r10, r4, -296
0007a0  9f02bfd7  addli r5, r30, -5160
0007a4  63497fd7  loadli.w r18,  -5188(r30)
0007a8  6bd80200  load.d r[17:18], 0(r5)
0007ac  cb2a43fc  ble.s r6, r4, -1368
0007b0  0b343841  min.sl r[9:10], r[17:18], r[20:21]
0007b4  abf2ffff  lui r5, 1048575
0007b8  0bb48020  mul.sl r[9:10], r[2:3], r[9:10]
0007bc  9b9202f8  ori r5, r5, 3968
0007c0  1b341400  slli r8, r8, 1
0007c4  97025400  and r5, r8, r5
0007c8  1f040fd8  addli r8, r30, -5120
0007cc  8b125410  add.s r5, r8, r5
0007d0  1f840214  addli r8, r5, 2560
0007d4  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
0007d8  ab04ffff  lui r9, 1048560
0007dc  1f024200  addli r4, r4, 32
0007e0  9f828200  addli r5, r5, 64
0007e4  42110402  vload_mask16.mz vr2{mr1}, 0(r8)
0007e8  6ab20402  vand.s.mz vr4{mr1}, r9, vr0
0007ec  eab10ba2  vsll.s.mz vr3{mr1}, r23, vr0
0007f0  eab02402  vand.s.mz vr1{mr1}, r9, vr2
0007f4  6ab02ba2  vsll.s.mz vr0{mr1}, r23, vr2
0007f8  ab040100  lui r9, 16
0007fc  a2904102  vmac.f.mz.rn vr1{mr1}, r3, vr4
000800  22903102  vmac.f.mz.rn vr0{mr1}, r3, vr3
000804  6aa11402  vand.u.mz vr2{mr1}, r9, vr1
000808  eaa10402  vand.u.mz vr3{mr1}, r9, vr0
00080c  ab840000  lui r9, 8
000810  72212002  veq.u.mz mr2{mr1}, zero, vr2
000814  72203002  veq.u.mz mr0{mr1}, zero, vr3
000818  fe010140  vmnot mr3, mr2
00081c  92a01416  vadd.u.mh vr1{mr3}, r9, vr1
000820  fe010040  vmnot mr3, mr0
000824  12a00416  vadd.u.mh vr0{mr3}, r9, vr0
000828  ab740000  lui r9, 7
00082c  9b94f4ff  ori r9, r9, 4095
000830  92a01414  vadd.u.mh vr1{mr2}, r9, vr1
000834  12a00410  vadd.u.mh vr0{mr0}, r9, vr0
000838  aba4aaaa  lui r9, 699050
00083c  9b94a4aa  ori r9, r9, 2730
000840  7e8004e0  vmmov mr0, r9
000844  46001410  vstore.mh vr1{mr0}, 0(r8)
000848  eaf00bc0  vsrl.p vr1, r23, vr0
00084c  ab545555  lui r9, 349525
000850  9b945455  ori r9, r9, 1365
000854  7e8004e0  vmmov mr0, r9
000858  46001410  vstore.mh vr1{mr0}, 0(r8)
00085c  bf5d62fe  blt.s r4, r6, -140
000860  db3effff  j -1548
000864  1f020004  addli r4, zero, 512
000868  a7f2f003  addli.d r[6:7], r[2:3], 511
00086c  80530102  load_param_i r7, 2
000870  9f076fd7  addli r15, r30, -5200
000874  b305b228  zext_int2long r[11:12], r4
000878  0f92b260  div.sl r[5:6], r[6:7], r[12:13]
00087c  00d30002  load_param_i r6, 1
000880  8b936320  mul.s r7, r7, r6
000884  b383732e  zext_int2long r[7:8], r7
000888  23320202  slli.d r[5:6], r[5:6], 32
00088c  23520202  srai.d r[5:6], r[5:6], 32
000890  0b328221  mul.sl r[5:6], r[5:6], r[25:26]
000894  8f167272  mod.sl r[13:14], r[4:5], r[7:8]
000898  0f197264  div.sl r[18:19], r[4:5], r[7:8]
00089c  80330002  core_id r7
0008a0  00540002  load_param_i r8, 0
0008a4  0b147350  fmac.s r8, r6, r7
0008a8  33036428  zext_int2long r[6:7], r8
0008ac  0b3ad340  min.sl r[21:22], r[7:8], r[14:15]
0008b0  0b3a6950  fmac.sl r[21:22], r[19:20], r[7:8]
0008b4  1333d304  setlt.sl r6, r[7:8], r[14:15]
0008b8  0b344a40  min.sl r[9:10], r[21:22], r[5:6]
0008bc  0f1b8465  div.sl r[22:23], r[8:9], r[24:25]
0008c0  0f1d8475  mod.sl r[26:27], r[8:9], r[24:25]
0008c4  3303632c  zext_int2long r[6:7], r6
0008c8  0b236910  add.ul r[7:8], r[19:20], r[7:8]
0008cc  0b234311  add.ul r[7:8], r[7:8], r[21:22]
0008d0  8b324340  min.sl r[6:7], r[7:8], r[5:6]
0008d4  1f121000  addli r4, zero, 9
0008d8  13b58206  setle.sl r10, r[6:7], r[9:10]
0008dc  73b05700  store.d r[6:7], 0(r15)
0008e0  abf2ffff  lui r5, 1048575
0008e4  17334b02  sll.d r[7:8], r[23:24], r4
0008e8  1f020fd8  addli r4, r30, -5120
0008ec  8bb66018  sub.sl r[14:15], r[2:3], r[7:8]
0008f0  9f0a0210  addli r21, r4, 2048
0008f4  8bb5b640  min.sl r[12:13], r[14:15], r[12:13]
0008f8  3b610500  bneq r10, zero, 88
0008fc  1f0e3fd7  addli r28, r30, -5224
000900  9f120000  addli r5, zero, 1
000904  2b0900f0  lui r18, 983040
000908  9bb61500  slli r13, r11, 1
00090c  0b3b1d20  mul.sl r[23:24], r[27:28], r[2:3]
000910  6b580e00  load.d r[17:18], 0(r28)
000914  17375302  sll.d r[15:16], r[7:8], r5
000918  17992601  or r18, r13, r18
00091c  173b5b02  sll.d r[23:24], r[23:24], r5
000920  8b29e810  add.ul r[20:21], r[17:18], r[15:16]
000924  1f08cfd7  addli r16, r30, -5152
000928  7fa94900  l_gm2lm r18, r4, 0(r[20:21])
00092c  6b520800  load.d r[5:6], 0(r16)
000930  2b0900f0  lui r18, 983040
000934  97962601  or r13, r13, r18
000938  0b226211  add.ul r[5:6], r[5:6], r[23:24]
00093c  0b22e210  add.ul r[5:6], r[5:6], r[15:16]
000940  ff265201  l_gm2lm r13, r21, 0(r[5:6])
000944  27020300  addli.d r[5:6], r[7:8], 0
000948  00a00200  mfence { lm, gm }
00094c  db010000  j 12
000950  1b92f2ff  ori r4, r5, 4095
000954  33124228  sext_int2long r[4:5], r4
000958  9f06bfd7  addli r13, r30, -5160
00095c  73b06600  store.d r[7:8], 0(r13)
000960  1f03afd7  addli r6, r30, -5168
000964  7330a301  store.d r[27:28], 0(r6)
000968  bb7e0500  bneq r10, zero, 956
00096c  9f060fd8  addli r13, r30, -5120
000970  1f050004  addli r10, zero, 512
000974  9f035fd7  addli r7, r30, -5208
000978  1f034fd7  addli r6, r30, -5216
00097c  1f1e0000  addli r28, zero, 1
000980  9f0d2000  addli r27, zero, 16
000984  9f070000  addli r15, zero, 0
000988  e74c0fd6  storeli.w zero, -5172(r30)
00098c  9f860610  addli r13, r13, 2048
000990  73b08301  store.d r[25:26], 0(r7)
000994  670cdfd6  storeli.w r13, -5184(r30)
000998  b306d52c  zext_int2long r[13:14], r10
00099c  1f050fd8  addli r10, r30, -5120
0009a0  7330d300  store.d r[14:15], 0(r6)
0009a4  e74bafd6  storeli.w r10, -5188(r30)
0009a8  db090000  j 76
0009ac  1f920700  addli r4, r15, 1
0009b0  9f320000  addli r5, zero, 3
0009b4  9f066fd7  addli r13, r30, -5200
0009b8  1f08efd7  addli r16, r30, -5136
0009bc  1f07bfd7  addli r14, r30, -5160
0009c0  9f08afd7  addli r17, r30, -5168
0009c4  9f050b00  addli r11, r22, 0
0009c8  8b175238  mod.s r15, r4, r5
0009cc  6bd20600  load.d r[5:6], 0(r13)
0009d0  6b530800  load.d r[7:8], 0(r16)
0009d4  73303701  store.d r[20:21], 0(r14)
0009d8  13354404  setlt.sl r10, r[9:10], r[5:6]
0009dc  e3028fd7  loadli.w r5,  -5184(r30)
0009e0  73b06800  store.d r[7:8], 0(r17)
0009e4  1bb2a700  slli r4, r15, 10
0009e8  8b9a4210  add.s r21, r5, r4
0009ec  27820900  addli.d r[5:6], r[20:21], 0
0009f0  b75c0500  beq r10, zero, 820
0009f4  27140400  addli.d r[9:10], r[9:10], 1
0009f8  1f151000  addli r10, zero, 9
0009fc  1f03efd7  addli r6, r30, -5136
000a00  9f034fd7  addli r7, r30, -5216
000a04  0f198465  div.sl r[18:19], r[8:9], r[24:25]
000a08  8f168473  mod.sl r[13:14], r[8:9], r[24:25]
000a0c  9739a902  sll.d r[20:21], r[19:20], r10
000a10  7330d300  store.d r[14:15], 0(r6)
000a14  ebd60300  load.d r[14:15], 0(r7)
000a18  0bbb3019  sub.sl r[23:24], r[2:3], r[20:21]
000a1c  0b3bdb40  min.sl r[23:24], r[23:24], r[14:15]
000a20  3f62cb01  blt.s r22, r28, 152
000a24  13253203  setneq.d r10, r[5:6], r[20:21]
000a28  17bcc903  sll.d r[25:26], r[20:21], r28
000a2c  3b400500  bneq r10, zero, 16
000a30  27030b00  addli.d r[7:8], r[23:24], 0
000a34  1b351b00  slli r10, r22, 1
000a38  5b070000  j 56
000a3c  63459fd7  loadli.w r10,  -5172(r30)
000a40  9f060fd8  addli r13, r30, -5120
000a44  1f083fd7  addli r16, r30, -5224
000a48  2b0d00f0  lui r26, 983040
000a4c  27030b00  addli.d r[7:8], r[23:24], 0
000a50  1b39a500  slli r18, r10, 10
000a54  1b351b00  slli r10, r22, 1
000a58  1b290940  xori r18, r18, 1024
000a5c  171da501  or r26, r10, r26
000a60  0b992611  add.s r18, r13, r18
000a64  eb560800  load.d r[14:15], 0(r16)
000a68  8ba68611  add.ul r[14:15], r[14:15], r[25:26]
000a6c  7fad2601  l_gm2lm r26, r18, 0(r[14:15])
000a70  1f0defd7  addli r26, r30, -5136
000a74  9f960700  addli r13, r15, 1
000a78  1f370000  addli r14, zero, 3
000a7c  1f09cfd7  addli r18, r30, -5152
000a80  6b580d00  load.d r[17:18], 0(r26)
000a84  8b96e638  mod.s r13, r13, r14
000a88  2b0700f0  lui r14, 983040
000a8c  6b5b0900  load.d r[23:24], 0(r18)
000a90  63098fd7  loadli.w r18,  -5184(r30)
000a94  1715e500  or r10, r10, r14
000a98  0b381820  mul.sl r[17:18], r[17:18], r[2:3]
000a9c  1738c803  sll.d r[17:18], r[17:18], r28
000aa0  9bb6a600  slli r13, r13, 10
000aa4  0b280b11  add.ul r[17:18], r[23:24], r[17:18]
000aa8  270b0300  addli.d r[23:24], r[7:8], 0
000aac  8b16d910  add.s r13, r18, r13
000ab0  0b288811  add.ul r[17:18], r[17:18], r[25:26]
000ab4  7f25d800  l_gm2lm r10, r13, 0(r[17:18])
000ab8  2bf5ffff  lui r10, 1048575
000abc  1b1505fc  ori r10, r10, 4032
000ac0  178ca500  and r24, r11, r10
000ac4  bf74cc01  blt.s r24, r28, 316
000ac8  634e7fd7  loadli.w r28,  -5188(r30)
000acc  1f0d0000  addli r26, zero, 0
000ad0  1f850a00  addli r10, r21, 0
000ad4  42100e02  vload_mask16.mz vr0{mr1}, 0(r28)
000ad8  ab06ffff  lui r13, 1048560
000adc  c2100502  vload_mask16.mz vr1{mr1}, 0(r10)
000ae0  1f078e00  addli r14, r28, 64
000ae4  1f098500  addli r18, r10, 64
000ae8  1f03ffd7  addli r6, r30, -5128
000aec  9f43ffd7  addli r7, r30, -5124
000af0  1f0d8d00  addli r26, r26, 64
000af4  1f0e0e01  addli r28, r28, 128
000af8  c2110702  vload_mask16.mz vr3{mr1}, 0(r14)
000afc  42110902  vload_mask16.mz vr2{mr1}, 0(r18)
000b00  2b070100  lui r14, 16
000b04  2b880000  lui r16, 8
000b08  6ab20da2  vsll.s.mz vr4{mr1}, r27, vr0
000b0c  eab20602  vand.s.mz vr5{mr1}, r13, vr0
000b10  6ab01da2  vsll.s.mz vr0{mr1}, r27, vr1
000b14  eab01602  vand.s.mz vr1{mr1}, r13, vr1
000b18  6ab33da2  vsll.s.mz vr6{mr1}, r27, vr3
000b1c  a2905102  vmac.f.mz.rn vr1{mr1}, r3, vr5
000b20  22904102  vmac.f.mz.rn vr0{mr1}, r3, vr4
000b24  6a221702  vand.u.mz vr4{mr1}, r14, vr1
000b28  ea220702  vand.u.mz vr5{mr1}, r14, vr0
000b2c  72214002  veq.u.mz mr2{mr1}, zero, vr4
000b30  72205002  veq.u.mz mr0{mr1}, zero, vr5
000b34  6ab23602  vand.s.mz vr4{mr1}, r13, vr3
000b38  eab12602  vand.s.mz vr3{mr1}, r13, vr2
000b3c  6ab12da2  vsll.s.mz vr2{mr1}, r27, vr2
000b40  fe010140  vmnot mr3, mr2
000b44  92201816  vadd.u.mh vr1{mr3}, r16, vr1
000b48  fe010040  vmnot mr3, mr0
000b4c  12200816  vadd.u.mh vr0{mr3}, r16, vr0
000b50  ab780000  lui r17, 7
000b54  a2914102  vmac.f.mz.rn vr3{mr1}, r3, vr4
000b58  22916102  vmac.f.mz.rn vr2{mr1}, r3, vr6
000b5c  9b98f8ff  ori r17, r17, 4095
000b60  92a01814  vadd.u.mh vr1{mr2}, r17, vr1
000b64  12a00810  vadd.u.mh vr0{mr0}, r17, vr0
000b68  aba6aaaa  lui r13, 699050
000b6c  9b96a6aa  ori r13, r13, 2730
000b70  7e8006e0  vmmov mr0, r13
000b74  7e0000a0  vmmov zero, mr0
000b78  46001510  vstore.mh vr1{mr0}, 0(r10)
000b7c  67000300  storeli.w zero, 0(r6)
000b80  eaf00dc0  vsrl.p vr1, r27, vr0
000b84  ab565555  lui r13, 349525
000b88  17200000  xor zero, zero, zero
000b8c  6a203702  vand.u.mz vr0{mr1}, r14, vr3
000b90  9b965655  ori r13, r13, 1365
000b94  7e8006e0  vmmov mr0, r13
000b98  9f06ffd7  addli r13, r30, -5128
000b9c  7e0000a0  vmmov zero, mr0
000ba0  46001510  vstore.mh vr1{mr0}, 0(r10)
000ba4  ea202702  vand.u.mz vr1{mr1}, r14, vr2
000ba8  1f47ffd7  addli r14, r30, -5124
000bac  1f050501  addli r10, r10, 128
000bb0  67800300  storeli.w zero, 0(r7)
000bb4  17200000  xor zero, zero, zero
000bb8  f2210002  veq.u.mz mr3{mr1}, zero, vr0
000bbc  7e800140  vmnot mr0, mr3
000bc0  92213810  vadd.u.mh vr3{mr0}, r16, vr3
000bc4  72201002  veq.u.mz mr0{mr1}, zero, vr1
000bc8  7e010040  vmnot mr2, mr0
000bcc  12212814  vadd.u.mh vr2{mr2}, r16, vr2
000bd0  92a13816  vadd.u.mh vr3{mr3}, r17, vr3
000bd4  12a12810  vadd.u.mh vr2{mr0}, r17, vr2
000bd8  63800600  loadli.w zero,  0(r13)
000bdc  7e0000e0  vmmov mr0, zero
000be0  17200000  xor zero, zero, zero
000be4  46003910  vstore.mh vr3{mr0}, 0(r18)
000be8  6af02dc0  vsrl.p vr0, r27, vr2
000bec  63000700  loadli.w zero,  0(r14)
000bf0  7e0000e0  vmmov mr0, zero
000bf4  17200000  xor zero, zero, zero
000bf8  46000910  vstore.mh vr0{mr0}, 0(r18)
000bfc  3f6b8dff  blt.s r26, r24, -296
000c00  1bb51500  slli r10, r11, 1
000c04  cbb28501  ble.s r11, r24, 172
000c08  abf6ffff  lui r13, 1048575
000c0c  63477fd7  loadli.w r14,  -5188(r30)
000c10  9b9606f8  ori r13, r13, 3968
000c14  9706d500  and r13, r10, r13
000c18  0b99da10  add.s r18, r21, r13
000c1c  0b1dd710  add.s r26, r14, r13
000c20  42100d02  vload_mask16.mz vr0{mr1}, 0(r26)
000c24  ab06ffff  lui r13, 1048560
000c28  42110902  vload_mask16.mz vr2{mr1}, 0(r18)
000c2c  2b070100  lui r14, 16
000c30  2b880000  lui r16, 8
000c34  1f0c4c00  addli r24, r24, 32
000c38  1f0d8d00  addli r26, r26, 64
000c3c  eab10602  vand.s.mz vr3{mr1}, r13, vr0
000c40  eab02602  vand.s.mz vr1{mr1}, r13, vr2
000c44  6ab20da2  vsll.s.mz vr4{mr1}, r27, vr0
000c48  6ab02da2  vsll.s.mz vr0{mr1}, r27, vr2
000c4c  a2903102  vmac.f.mz.rn vr1{mr1}, r3, vr3
000c50  22904102  vmac.f.mz.rn vr0{mr1}, r3, vr4
000c54  6a211702  vand.u.mz vr2{mr1}, r14, vr1
000c58  ea210702  vand.u.mz vr3{mr1}, r14, vr0
000c5c  72212002  veq.u.mz mr2{mr1}, zero, vr2
000c60  72203002  veq.u.mz mr0{mr1}, zero, vr3
000c64  fe010140  vmnot mr3, mr2
000c68  92201816  vadd.u.mh vr1{mr3}, r16, vr1
000c6c  fe010040  vmnot mr3, mr0
000c70  12200816  vadd.u.mh vr0{mr3}, r16, vr0
000c74  ab760000  lui r13, 7
000c78  9b96f6ff  ori r13, r13, 4095
000c7c  92a01614  vadd.u.mh vr1{mr2}, r13, vr1
000c80  12a00610  vadd.u.mh vr0{mr0}, r13, vr0
000c84  aba6aaaa  lui r13, 699050
000c88  9b96a6aa  ori r13, r13, 2730
000c8c  7e8006e0  vmmov mr0, r13
000c90  46001910  vstore.mh vr1{mr0}, 0(r18)
000c94  eaf00dc0  vsrl.p vr1, r27, vr0
000c98  ab565555  lui r13, 349525
000c9c  9b965655  ori r13, r13, 1365
000ca0  7e8006e0  vmmov mr0, r13
000ca4  46001910  vstore.mh vr1{mr0}, 0(r18)
000ca8  1f098900  addli r18, r18, 64
000cac  bf5dbcfe  blt.s r24, r11, -140
000cb0  1f08afd7  addli r16, r30, -5168
000cb4  9f08bfd7  addli r17, r30, -5160
000cb8  1f09dfd7  addli r18, r30, -5144
000cbc  1f1e0000  addli r28, zero, 1
000cc0  13223201  seteq.d r4, r[5:6], r[20:21]
000cc4  6b530800  load.d r[7:8], 0(r16)
000cc8  00a00300  mfence { lm, sm, gm }
000ccc  eb560900  load.d r[14:15], 0(r18)
000cd0  8b351320  mul.sl r[12:13], r[7:8], r[2:3]
000cd4  6bd30800  load.d r[7:8], 0(r17)
000cd8  97b5c503  sll.d r[12:13], r[12:13], r28
000cdc  1733c303  sll.d r[7:8], r[7:8], r28
000ce0  8ba5b610  add.ul r[12:13], r[14:15], r[12:13]
000ce4  ab0600f0  lui r13, 983040
000ce8  8ba26510  add.ul r[6:7], r[12:13], r[7:8]
000cec  9713d500  or r7, r10, r13
000cf0  ffb35201  s_lm2gm r7, r21, 0(r[6:7])
000cf4  e3429fd7  loadli.w r5,  -5172(r30)
000cf8  9ba21200  xori r5, r5, 1
000cfc  3b500200  bneq r4, zero, 20
000d00  1bb3a200  slli r6, r5, 10
000d04  9f030fd8  addli r7, r30, -5120
000d08  0b936310  add.s r6, r7, r6
000d0c  e74b6fd6  storeli.w r6, -5188(r30)
000d10  1f035fd7  addli r6, r30, -5208
000d14  6b5c0300  load.d r[25:26], 0(r6)
000d18  3b5202fe  bneq r4, zero, -876
000d1c  e74c5fd6  storeli.w r5, -5172(r30)
000d20  db91ffff  j -884
000d24  9f0e0fd7  addli sp, r30, -5248
000d28  9f8e0e29  addli sp, sp, 5248
000d2c  00a00300  mfence { lm, sm, gm }
000d30  00100000  exit
000d34  00100000  exit
000d38  00100000  exit
000d3c  00100000  exit
000d40  00100000  exit
000d44  00100000  exit
000d48  00100000  exit
000d4c  00100000  exit
000d50  00100000  exit
000d54  00100000  exit
000d58  00100000  exit
000d5c  00100000  exit
000d60  00100000  exit
000d64  00100000  exit
000d68  00100000  exit
000d6c  00100000  exit
000d70  00100000  exit
000d74  00100000  exit
000d78  00100000  exit
000d7c  00100000  exit
000d80  00100000  exit
000d84  00100000  exit
000d88  00100000  exit
000d8c  00100000  exit
000d90  00100000  exit
000d94  00100000  exit
000d98  00100000  exit
000d9c  00100000  exit
000da0  00100000  exit
000da4  00100000  exit
000da8  00100000  exit
000dac  00100000  exit
000db0  00100000  exit
000db4  00100000  exit
000db8  00100000  exit
000dbc  00100000  exit
000dc0  00100000  exit
000dc4  00100000  exit
000dc8  00100000  exit
000dcc  00100000  exit
000dd0  00100000  exit
000dd4  00100000  exit
000dd8  00100000  exit
000ddc  00100000  exit
000de0  00100000  exit
000de4  00100000  exit
000de8  00100000  exit
000dec  00100000  exit
000df0  00100000  exit
000df4  00100000  exit
000df8  00100000  exit
000dfc  00100000  exit
000e00  00100000  exit
000e04  00100000  exit
000e08  00100000  exit
000e0c  00100000  exit
000e10  00100000  exit
000e14  00100000  exit
000e18  00100000  exit
000e1c  00100000  exit
000e20  00100000  exit
000e24  00100000  exit
000e28  00100000  exit
000e2c  00100000  exit
000e30  00100000  exit
000e34  00100000  exit
000e38  00100000  exit
000e3c  00100000  exit
000e40  00100000  exit
000e44  00100000  exit
000e48  00100000  exit
000e4c  00100000  exit
000e50  00100000  exit
000e54  00100000  exit
000e58  00100000  exit
000e5c  00100000  exit
000e60  00100000  exit
000e64  00100000  exit
000e68  00100000  exit
000e6c  00100000  exit
000e70  00100000  exit
000e74  00100000  exit
000e78  00100000  exit
000e7c  00100000  exit
000e80  00100000  exit
000e84  00100000  exit
000e88  00100000  exit
000e8c  00100000  exit
000e90  00100000  exit
000e94  00100000  exit
000e98  00100000  exit
000e9c  00100000  exit
000ea0  00100000  exit
000ea4  00100000  exit
000ea8  00100000  exit
000eac  00100000  exit
000eb0  00100000  exit
000eb4  00100000  exit
000eb8  00100000  exit
000ebc  00100000  exit
000ec0  00100000  exit
000ec4  00100000  exit
000ec8  00100000  exit
000ecc  00100000  exit
000ed0  00100000  exit
000ed4  00100000  exit
000ed8  00100000  exit
000edc  00100000  exit
000ee0  00100000  exit
000ee4  00100000  exit
000ee8  00100000  exit
000eec  00100000  exit
000ef0  00100000  exit
000ef4  00100000  exit
000ef8  00100000  exit
000efc  00100000  exit
000f00  00100000  exit
000f04  00100000  exit
000f08  00100000  exit
000f0c  00100000  exit
000f10  00100000  exit
000f14  00100000  exit
000f18  00100000  exit
000f1c  00100000  exit
000f20  00100000  exit
000f24  00100000  exit
000f28  00100000  exit
000f2c  00100000  exit
000f30  00100000  exit
000f34  00100000  exit
000f38  00100000  exit
000f3c  00100000  exit
000f40  00100000  exit
000f44  00100000  exit
000f48  00100000  exit
000f4c  00100000  exit
000f50  00100000  exit
000f54  00100000  exit
000f58  00100000  exit
000f5c  00100000  exit
000f60  00100000  exit
000f64  00100000  exit
000f68  00100000  exit
000f6c  00100000  exit
000f70  00100000  exit
000f74  00000000  nop
