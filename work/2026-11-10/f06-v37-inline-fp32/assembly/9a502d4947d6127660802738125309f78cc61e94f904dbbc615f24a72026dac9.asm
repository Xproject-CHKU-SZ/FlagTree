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
000078  9f093000  addli r19, zero, 24
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
0000dc  9f8e0ecc  addli sp, sp, -6656
0000e0  80500102  load_param_i r1, 2
0000e4  80d10002  load_param_i r3, 1
0000e8  1f8f8e33  addli r30, sp, 6592
0000ec  9f243000  addli r9, zero, 26
0000f0  0b921120  mul.s r4, r3, r1
0000f4  eb500f01  load.d r[2:3], 16(r30)
0000f8  b3025228  .word 0x285202b3
0000fc  1f028000  addli r4, zero, 64
000100  8f935066  .word 0x6650938f
000104  3305a228  .word 0x28a20533
000108  2b0200fc  lui r4, 1032192
00010c  8bb3a348  max.sl r[8:9], r[8:9], r[11:12]
000110  2bf5ffff  lui r10, 1048575
000114  b305b228  .word 0x28b205b3
000118  97b39302  sll.d r[8:9], r[8:9], r9
00011c  1b1205fc  ori r4, r10, 4032
000120  00350002  core_id r10
000124  8ba3b310  add.ul r[8:9], r[8:9], r[12:13]
000128  b315b228  .word 0x28b215b3
00012c  1f020008  addli r4, zero, 1024
000130  97d39302  sra.d r[8:9], r[8:9], r9
000134  80540002  load_param_i r9, 0
000138  9783b302  and.d r[8:9], r[8:9], r[12:13]
00013c  8b94a150  fmac.s r9, r3, r10
000140  b305b228  .word 0x28b205b3
000144  1f05ffcc  addli r10, r30, -6536
000148  8bb1b340  min.sl r[4:5], r[8:9], r[12:13]
00014c  b383742a  .word 0x2a7483b3
000150  0bb47120  mul.sl r[9:10], r[4:5], r[8:9]
000154  73303500  store.d r[4:5], 0(r10)
000158  93b38006  setle.sl r7, r[2:3], r[9:10]
00015c  3bef0300  bneq r7, zero, 984
000160  9f09ffcc  addli r19, r30, -6536
000164  9f130000  addli r7, zero, 1
000168  0bb58018  sub.sl r[11:12], r[2:3], r[9:10]
00016c  eb580f00  load.d r[18:19], 0(r30)
000170  1f0ccfcc  addli r24, r30, -6560
000174  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000178  9f0cefcc  addli r25, r30, -6544
00017c  1f0a4000  addli r20, zero, 32
000180  9f7a1000  addli r21, zero, 15
000184  1f0b0fd0  addli r22, r30, -6144
000188  9f0b0000  addli r23, zero, 0
00018c  ee350062  vxor.s.mz vr11{mr1}, vr0, vr0
000190  ebd10900  load.d r[4:5], 0(r19)
000194  97377402  sll.d r[16:17], r[9:10], r7
000198  73301c01  store.d r[18:19], 0(r24)
00019c  8bb6a140  min.sl r[14:15], r[4:5], r[11:12]
0001a0  0ba5f810  add.ul r[11:12], r[18:19], r[16:17]
0001a4  ab0700f0  lui r15, 983040
0001a8  eb588f00  load.d r[18:19], 8(r30)
0001ac  1f080fd0  addli r16, r30, -6144
0001b0  8bb15120  mul.sl r[4:5], r[4:5], r[6:7]
0001b4  9f02dfcc  addli r5, r30, -6552
0001b8  1bb61600  slli r12, r13, 1
0001bc  73b01c01  store.d r[18:19], 0(r25)
0001c0  1716f600  or r12, r12, r15
0001c4  9f070fcf  addli r15, r30, -6272
0001c8  7f260501  l_gm2lm r12, r16, 0(r[11:12])
0001cc  1f898700  addli r18, r15, 64
0001d0  00a00200  mfence { lm, gm }
0001d4  73b03200  store.d r[4:5], 0(r5)
0001d8  9f010fcd  addli r3, r30, -6528
0001dc  4690b102  vstore_mask16.mz vr11{mr1}, 0(r3)
0001e0  5b0a0000  j 80
0001e4  9f05efcc  addli r11, r30, -6544
0001e8  00a00000  mfence { lm }
0001ec  97317402  sll.d r[4:5], r[9:10], r7
0001f0  1f340000  addli r8, zero, 3
0001f4  13351c04  setlt.sl r10, r[25:26], r[2:3]
0001f8  ebd20500  load.d r[6:7], 0(r11)
0001fc  8ba13210  add.ul r[4:5], r[6:7], r[4:5]
000200  9f920b00  addli r5, r23, 1
000204  1bb31600  slli r6, r13, 1
000208  9f060d00  addli r13, r26, 0
00020c  8b9b8238  mod.s r23, r5, r8
000210  ab0200f0  lui r5, 983040
000214  27040c00  addli.d r[9:10], r[25:26], 0
000218  97125300  or r5, r6, r5
00021c  ffb26101  s_lm2gm r5, r22, 0(r[4:5])
000220  1f020fd0  addli r4, r30, -6144
000224  9bb1bb00  slli r3, r23, 11
000228  0b1b3210  add.s r22, r4, r3
00022c  372c0500  beq r10, zero, 776
000230  1f05dfcc  addli r10, r30, -6552
000234  9f05ffcc  addli r11, r30, -6536
000238  eb510500  load.d r[4:5], 0(r10)
00023c  0b2c3410  add.ul r[25:26], r[9:10], r[4:5]
000240  ebd10500  load.d r[4:5], 0(r11)
000244  8bb28019  sub.sl r[6:7], r[2:3], r[25:26]
000248  0bbd5140  min.sl r[27:28], r[4:5], r[6:7]
00024c  bf707d00  blt.s r26, r7, 60
000250  9f920b00  addli r5, r23, 1
000254  9f310000  addli r3, zero, 3
000258  1f08cfcc  addli r16, r30, -6560
00025c  2b0600f0  lui r12, 983040
000260  17357c02  sll.d r[11:12], r[25:26], r7
000264  1b331d00  slli r6, r26, 1
000268  8b923238  mod.s r5, r5, r3
00026c  eb510800  load.d r[4:5], 0(r16)
000270  1713c300  or r6, r6, r12
000274  0ba5a110  add.ul r[11:12], r[4:5], r[11:12]
000278  9f010fd0  addli r3, r30, -6144
00027c  9bb2b200  slli r5, r5, 11
000280  8b925110  add.s r5, r3, r5
000284  7f235500  l_gm2lm r6, r5, 0(r[11:12])
000288  3ffd76fe  blt.s r13, r7, -164
00028c  1f0e0000  addli r28, zero, 0
000290  9f820600  addli r5, r13, 0
000294  db1d0000  j 236
000298  1f060fcd  addli r12, r30, -6528
00029c  00a00000  mfence { lm }
0002a0  ab211041  lui r3, 266498
0002a4  2bf20000  lui r4, 15
0002a8  42900702  vload_mask16.mz vr0{mr1}, 0(r15)
0002ac  c2100902  vload_mask16.mz vr1{mr1}, 0(r18)
0002b0  ab05803f  lui r11, 260096
0002b4  1f0e4e00  addli r28, r28, 32
0002b8  9f82c2ff  addli r5, r5, -32
0002bc  c2150602  vload_mask16.mz vr11{mr1}, 0(r12)
0002c0  9b9141cb  ori r3, r3, 3252
0002c4  1b12f2ff  ori r4, r4, 4095
0002c8  f2916142  vlt.f.mz mr3{mr1}, r3, vr6
0002cc  72905142  vlt.f.mz mr0{mr1}, r3, vr5
0002d0  7e8501a0  vmmov r10, mr3
0002d4  fe0100a0  vmmov r3, mr0
0002d8  17254500  xor r10, r10, r4
0002dc  97a14100  xor r3, r3, r4
0002e0  2b0200c0  lui r4, 786432
0002e4  1293b502  vadd.f.mz.rn vr6{mr1}, r11, vr11
0002e8  7e0105e0  vmmov mr2, r10
0002ec  1f45ffcd  addli r10, r30, -6404
0002f0  92326002  vadd.s.mz vr5{mr1}, zero, vr6
0002f4  a2120204  vmac.f.mz.rn vr5{mr2}, r4, vr0
0002f8  7e8101e0  vmmov mr2, r3
0002fc  22131204  vmac.f.mz.rn vr6{mr2}, r4, vr1
000300  1f02ffcd  addli r4, r30, -6408
000304  92925516  vadd.f.mh.rn vr5{mr3}, r11, vr5
000308  12936510  vadd.f.mh.rn vr6{mr0}, r11, vr6
00030c  ab010080  lui r3, 524288
000310  63000200  loadli.w zero,  0(r4)
000314  6a904102  vand.f.mz vr0{mr1}, r3, vr4
000318  ea903102  vand.f.mz vr1{mr1}, r3, vr3
00031c  7e0000e0  vmmov mr0, zero
000320  17200000  xor zero, zero, zero
000324  63000500  loadli.w zero,  0(r10)
000328  ab01003f  lui r3, 258048
00032c  6e900220  vor.f.mz vr0{mr0}, vr5, vr0
000330  7e0000e0  vmmov mr0, zero
000334  17200000  xor zero, zero, zero
000338  ee101320  vor.f.mz vr1{mr0}, vr6, vr1
00033c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000340  96101402  vadd.f.mz.rn vr1{mr1}, vr8, vr1
000344  12900502  vadd.f.mz.rn vr0{mr1}, r11, vr0
000348  92901502  vadd.f.mz.rn vr1{mr1}, r11, vr1
00034c  9f058fce  addli r11, r30, -6336
000350  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
000354  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
000358  9f010fce  addli r3, r30, -6400
00035c  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
000360  0e100102  vmul.f.mz.rn vr0{mr1}, vr2, vr0
000364  42910502  vload_mask16.mz vr2{mr1}, 0(r11)
000368  06100000  vfloat2fp16_l.rn vr0, vr0
00036c  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
000370  06d00000  vfloat2fp16_h.rn vr0, vr1
000374  46000302  vstore.mz vr0{mr1}, 0(r6)
000378  3f20de00  blt.s r28, r13, 8
00037c  5bcdffff  j -408
000380  1b331e00  slli r6, r28, 1
000384  1f020fce  addli r4, r30, -6400
000388  9f018fce  addli r3, r30, -6336
00038c  1231b002  vadd.s.mz vr2{mr1}, zero, vr11
000390  0b136b10  add.s r6, r22, r6
000394  c2000302  vload.mz vr1{mr1}, 0(r6)
000398  2b25373d  lui r10, 250738
00039c  ab454c3f  lui r11, 259268
0003a0  1b153571  ori r10, r10, 1811
0003a4  86b20000  vfp162float_l.rn vr5, vr1
0003a8  06f30000  vfp162float_h.rn vr6, vr1
0003ac  8a115502  vmul.f.mz.rn vr3{mr1}, r10, vr5
0003b0  0a126502  vmul.f.mz.rn vr4{mr1}, r10, vr6
0003b4  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
0003b8  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
0003bc  1b959522  ori r10, r11, 553
0003c0  ab95193f  lui r11, 258457
0003c4  2bf60000  lui r12, 15
0003c8  1b16f6ff  ori r12, r12, 4095
0003cc  8e915102  vmul.f.mz.rn vr3{mr1}, vr3, vr5
0003d0  0e126202  vmul.f.mz.rn vr4{mr1}, vr4, vr6
0003d4  a6923202  vmac.f.mz.rn vr5{mr1}, vr5, vr3
0003d8  26134302  vmac.f.mz.rn vr6{mr1}, vr6, vr4
0003dc  0a125502  vmul.f.mz.rn vr4{mr1}, r10, vr5
0003e0  8a116502  vmul.f.mz.rn vr3{mr1}, r10, vr6
0003e4  2ba53840  lui r10, 263050
0003e8  1b18b5a3  ori r16, r10, 2619
0003ec  1f050fcf  addli r10, r30, -6272
0003f0  661302c0  vabs.f vr6, vr4
0003f4  e69201c0  vabs.f vr5, vr3
0003f8  8e134202  vmul.f.mz.rn vr7{mr1}, vr4, vr4
0003fc  0e943102  vmul.f.mz.rn vr8{mr1}, vr3, vr3
000400  8a146802  vmul.f.mz.rn vr9{mr1}, r16, vr6
000404  0a155802  vmul.f.mz.rn vr10{mr1}, r16, vr5
000408  46109502  vstore_mask16.mz vr9{mr1}, 0(r10)
00040c  4610a902  vstore_mask16.mz vr10{mr1}, 0(r18)
000410  2b3856bd  lui r16, 775523
000414  abf8803c  lui r17, 247823
000418  ab59083e  lui r19, 254085
00041c  aba1aabe  lui r3, 780970
000420  1b18e8ca  ori r16, r16, 3246
000424  1b922808  ori r4, r17, 130
000428  9b91d19e  ori r3, r3, 2541
00042c  9f08ffcd  addli r17, r30, -6408
000430  9214b802  vadd.f.mz.rn vr9{mr1}, r16, vr11
000434  1b981994  ori r16, r19, 2369
000438  12902102  vadd.f.mz.rn vr0{mr1}, r3, vr2
00043c  8b914241  min.s r3, r5, r20
000440  1215b802  vadd.f.mz.rn vr10{mr1}, r16, vr11
000444  1f48ffcd  addli r16, r30, -6404
000448  92359002  vadd.s.mz vr11{mr1}, zero, vr9
00044c  a2148202  vmac.f.mz.rn vr9{mr1}, r4, vr8
000450  9230a002  vadd.s.mz vr1{mr1}, zero, vr10
000454  a2157202  vmac.f.mz.rn vr11{mr1}, r4, vr7
000458  26958402  vmac.f.mz.rn vr10{mr1}, vr9, vr8
00045c  92142002  vadd.f.mz.rn vr9{mr1}, zero, vr2
000460  1b92a599  ori r4, r11, 2458
000464  72116262  vle.f.mz mr2{mr1}, r4, vr6
000468  72105262  vle.f.mz mr0{mr1}, r4, vr5
00046c  fe0901a0  vmmov r19, mr2
000470  fe0500a0  vmmov r11, mr0
000474  a6907502  vmac.f.mz.rn vr1{mr1}, vr11, vr7
000478  92350002  vadd.s.mz vr11{mr1}, zero, vr0
00047c  26108502  vmac.f.mz.rn vr0{mr1}, vr10, vr8
000480  17a2c900  xor r4, r19, r12
000484  17a6c500  xor r12, r11, r12
000488  a6957002  vmac.f.mz.rn vr11{mr1}, vr1, vr7
00048c  92309002  vadd.s.mz vr1{mr1}, zero, vr9
000490  a6148002  vmac.f.mz.rn vr9{mr1}, vr0, vr8
000494  a6907502  vmac.f.mz.rn vr1{mr1}, vr11, vr7
000498  92334002  vadd.s.mz vr7{mr1}, zero, vr4
00049c  7e0001a0  vmmov zero, mr2
0004a0  67800800  storeli.w zero, 0(r17)
0004a4  17200000  xor zero, zero, zero
0004a8  7e0000a0  vmmov zero, mr0
0004ac  7e0002e0  vmmov mr0, r4
0004b0  67000800  storeli.w zero, 0(r16)
0004b4  17200000  xor zero, zero, zero
0004b8  a6937000  vmac.f.mz.rn vr7{mr0}, vr1, vr7
0004bc  7e0006e0  vmmov mr0, r12
0004c0  0b967148  max.s r12, r3, r7
0004c4  00a00000  mfence { lm }
0004c8  12343002  vadd.s.mz vr8{mr1}, zero, vr3
0004cc  1f080000  addli r16, zero, 0
0004d0  26948400  vmac.f.mz.rn vr8{mr0}, vr9, vr8
0004d4  5b020000  j 16
0004d8  1f180800  addli r16, r16, 1
0004dc  1f450500  addli r10, r10, 4
0004e0  b76606ff  beq r12, r16, -584
0004e4  93810a05  setlt.u r3, r21, r16
0004e8  3bd00100  bneq r3, zero, 20
0004ec  97c10901  srl r3, r19, r16
0004f0  9b811100  andi r3, r3, 1
0004f4  3be00100  bneq r3, zero, 24
0004f8  5bfcffff  j -32
0004fc  9f01e8ff  addli r3, r16, -16
000500  97c13500  srl r3, r11, r3
000504  9b811100  andi r3, r3, 1
000508  37cf01fe  beq r3, zero, -48
00050c  e3010500  loadli.w r3,  0(r10)
000510  2b020040  lui r4, 262144
000514  0f024210  .word 0x1042020f
000518  8b613220  mul.f.rn r3, r4, r3
00051c  2b02803f  lui r4, 260096
000520  8f813100  .word 0x0031818f
000524  8be14110  add.f.rn r3, r3, r4
000528  8f013218  div.f.rn r3, r4, r3
00052c  67003500  storeli.w r3, 0(r10)
000530  5bf5ffff  j -88
000534  00a00300  mfence { lm, sm, gm }
000538  9f0e8fcc  addli sp, r30, -6592
00053c  9f8e8e33  addli sp, sp, 6592
000540  00a00300  mfence { lm, sm, gm }
000544  00100000  exit
000548  00100000  exit
00054c  00100000  exit
000550  00100000  exit
000554  00100000  exit
000558  00100000  exit
00055c  00100000  exit
000560  00100000  exit
000564  00100000  exit
000568  00100000  exit
00056c  00100000  exit
000570  00100000  exit
000574  00100000  exit
000578  00100000  exit
00057c  00100000  exit
000580  00100000  exit
000584  00100000  exit
000588  00100000  exit
00058c  00100000  exit
000590  00100000  exit
000594  00100000  exit
000598  00100000  exit
00059c  00100000  exit
0005a0  00100000  exit
0005a4  00100000  exit
0005a8  00100000  exit
0005ac  00100000  exit
0005b0  00100000  exit
0005b4  00100000  exit
0005b8  00100000  exit
0005bc  00100000  exit
0005c0  00100000  exit
0005c4  00100000  exit
0005c8  00100000  exit
0005cc  00100000  exit
0005d0  00100000  exit
0005d4  00100000  exit
0005d8  00100000  exit
0005dc  00100000  exit
0005e0  00100000  exit
0005e4  00100000  exit
0005e8  00100000  exit
0005ec  00100000  exit
0005f0  00100000  exit
0005f4  00100000  exit
0005f8  00100000  exit
0005fc  00100000  exit
000600  00100000  exit
000604  00100000  exit
000608  00100000  exit
00060c  00100000  exit
000610  00100000  exit
000614  00100000  exit
000618  00100000  exit
00061c  00100000  exit
000620  00100000  exit
000624  00100000  exit
000628  00100000  exit
00062c  00100000  exit
000630  00100000  exit
000634  00100000  exit
000638  00100000  exit
00063c  00100000  exit
000640  00100000  exit
000644  00100000  exit
000648  00100000  exit
00064c  00100000  exit
000650  00100000  exit
000654  00100000  exit
000658  00100000  exit
00065c  00100000  exit
000660  00100000  exit
000664  00100000  exit
000668  00100000  exit
00066c  00100000  exit
000670  00100000  exit
000674  00100000  exit
000678  00100000  exit
00067c  00100000  exit
000680  00100000  exit
000684  00100000  exit
000688  00100000  exit
00068c  00100000  exit
000690  00100000  exit
000694  00100000  exit
000698  00100000  exit
00069c  00100000  exit
0006a0  00100000  exit
0006a4  00100000  exit
0006a8  00100000  exit
0006ac  00100000  exit
0006b0  00100000  exit
0006b4  00100000  exit
0006b8  00100000  exit
0006bc  00100000  exit
0006c0  00100000  exit
0006c4  00100000  exit
0006c8  00100000  exit
0006cc  00100000  exit
0006d0  00100000  exit
0006d4  00100000  exit
0006d8  00100000  exit
0006dc  00100000  exit
0006e0  00100000  exit
0006e4  00100000  exit
0006e8  00100000  exit
0006ec  00100000  exit
0006f0  00100000  exit
0006f4  00100000  exit
0006f8  00100000  exit
0006fc  00100000  exit
000700  00100000  exit
000704  00100000  exit
000708  00100000  exit
00070c  00100000  exit
000710  00100000  exit
000714  00100000  exit
000718  00100000  exit
00071c  00100000  exit
000720  00100000  exit
000724  00100000  exit
000728  00100000  exit
00072c  00100000  exit
000730  00100000  exit
000734  00100000  exit
000738  00100000  exit
00073c  00100000  exit
000740  00100000  exit
000744  00100000  exit
000748  00100000  exit
00074c  00100000  exit
000750  00100000  exit
000754  00100000  exit
000758  00100000  exit
00075c  00100000  exit
000760  00100000  exit
000764  00100000  exit
000768  00100000  exit
00076c  00100000  exit
000770  00100000  exit
000774  00100000  exit
000778  00100000  exit
00077c  00100000  exit
000780  00100000  exit
000784  00100000  exit
