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
00012c  1f020004  addli r4, zero, 512
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
00015c  bb8f0300  bneq r7, zero, 992
000160  9f210000  addli r3, zero, 2
000164  1f0affcc  addli r20, r30, -6536
000168  0bb58018  sub.sl r[11:12], r[2:3], r[9:10]
00016c  eb580f00  load.d r[18:19], 0(r30)
000170  9f0ccfcc  addli r25, r30, -6560
000174  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000178  9f190000  addli r19, zero, 1
00017c  9f0a4000  addli r21, zero, 32
000180  1f7b1000  addli r22, zero, 15
000184  9f0b0fd0  addli r23, r30, -6144
000188  1f0c0000  addli r24, zero, 0
00018c  ee350062  vxor.s.mz vr11{mr1}, vr0, vr0
000190  97373402  sll.d r[16:17], r[9:10], r3
000194  eb510a00  load.d r[4:5], 0(r20)
000198  73b01c01  store.d r[18:19], 0(r25)
00019c  2b0600f0  lui r12, 983040
0001a0  8bb6a140  min.sl r[14:15], r[4:5], r[11:12]
0001a4  0ba5f810  add.ul r[11:12], r[18:19], r[16:17]
0001a8  9f070fd0  addli r15, r30, -6144
0001ac  6b588f00  load.d r[17:18], 8(r30)
0001b0  8bb15120  mul.sl r[4:5], r[4:5], r[6:7]
0001b4  9f02dfcc  addli r5, r30, -6552
0001b8  9bb32600  slli r7, r13, 2
0001bc  9793c300  or r7, r7, r12
0001c0  1f06efcc  addli r12, r30, -6544
0001c4  ff23f500  l_gm2lm r7, r15, 0(r[11:12])
0001c8  9f070fcf  addli r15, r30, -6272
0001cc  73300601  store.d r[17:18], 0(r12)
0001d0  00a00200  mfence { lm, gm }
0001d4  73b03200  store.d r[4:5], 0(r5)
0001d8  9f010fcd  addli r3, r30, -6528
0001dc  1f898700  addli r18, r15, 64
0001e0  4690b102  vstore_mask16.mz vr11{mr1}, 0(r3)
0001e4  db0a0000  j 84
0001e8  1f05efcc  addli r10, r30, -6544
0001ec  9f210000  addli r3, zero, 2
0001f0  00a00000  mfence { lm }
0001f4  9f330000  addli r7, zero, 3
0001f8  eb520500  load.d r[6:7], 0(r10)
0001fc  97313402  sll.d r[4:5], r[9:10], r3
000200  27840c00  addli.d r[9:10], r[26:27], 0
000204  8ba13210  add.ul r[4:5], r[6:7], r[4:5]
000208  9f120c00  addli r5, r24, 1
00020c  1bb32600  slli r6, r13, 2
000210  9f860d00  addli r13, r27, 0
000214  0b9c7238  mod.s r24, r5, r7
000218  ab0200f0  lui r5, 983040
00021c  93b31c04  setlt.sl r7, r[26:27], r[2:3]
000220  97125300  or r5, r6, r5
000224  ffb27101  s_lm2gm r5, r23, 0(r[4:5])
000228  1f020fd0  addli r4, r30, -6144
00022c  9b31bc00  slli r3, r24, 11
000230  8b1b3210  add.s r23, r4, r3
000234  37ac0300  beq r7, zero, 776
000238  9f03dfcc  addli r7, r30, -6552
00023c  1f05ffcc  addli r10, r30, -6536
000240  ebd10300  load.d r[4:5], 0(r7)
000244  8b2c3410  add.ul r[26:27], r[9:10], r[4:5]
000248  eb510500  load.d r[4:5], 0(r10)
00024c  8bb29019  sub.sl r[6:7], r[2:3], r[26:27]
000250  8bbd5140  min.sl r[28:29], r[4:5], r[6:7]
000254  3f813d01  blt.s r27, r19, 64
000258  9f120c00  addli r5, r24, 1
00025c  9f310000  addli r3, zero, 3
000260  1f06cfcc  addli r12, r30, -6560
000264  ab0500f0  lui r11, 983040
000268  1bb52d00  slli r10, r27, 2
00026c  8b923238  mod.s r5, r5, r3
000270  9f210000  addli r3, zero, 2
000274  1715b500  or r10, r10, r11
000278  17b33c02  sll.d r[7:8], r[26:27], r3
00027c  eb510600  load.d r[4:5], 0(r12)
000280  0ba36110  add.ul r[7:8], r[4:5], r[7:8]
000284  9f010fd0  addli r3, r30, -6144
000288  9bb2b200  slli r5, r5, 11
00028c  8b925110  add.s r5, r3, r5
000290  7f255300  l_gm2lm r10, r5, 0(r[7:8])
000294  3fdd36ff  blt.s r13, r19, -172
000298  9f020000  addli r5, zero, 0
00029c  1f830600  addli r6, r13, 0
0002a0  5b1d0000  j 232
0002a4  1f080fcd  addli r16, r30, -6528
0002a8  00a00000  mfence { lm }
0002ac  ab211041  lui r3, 266498
0002b0  2bf20000  lui r4, 15
0002b4  42900702  vload_mask16.mz vr0{mr1}, 0(r15)
0002b8  c2100902  vload_mask16.mz vr1{mr1}, 0(r18)
0002bc  2b06803f  lui r12, 260096
0002c0  9f824200  addli r5, r5, 32
0002c4  1f03c3ff  addli r6, r6, -32
0002c8  c2150802  vload_mask16.mz vr11{mr1}, 0(r16)
0002cc  9b9141cb  ori r3, r3, 3252
0002d0  1b12f2ff  ori r4, r4, 4095
0002d4  f2916142  vlt.f.mz mr3{mr1}, r3, vr6
0002d8  72905142  vlt.f.mz mr0{mr1}, r3, vr5
0002dc  fe8501a0  vmmov r11, mr3
0002e0  fe0100a0  vmmov r3, mr0
0002e4  97a54500  xor r11, r11, r4
0002e8  97a14100  xor r3, r3, r4
0002ec  2b0200c0  lui r4, 786432
0002f0  1213b602  vadd.f.mz.rn vr6{mr1}, r12, vr11
0002f4  7e8105e0  vmmov mr2, r11
0002f8  9f05ffcd  addli r11, r30, -6408
0002fc  92326002  vadd.s.mz vr5{mr1}, zero, vr6
000300  a2120204  vmac.f.mz.rn vr5{mr2}, r4, vr0
000304  7e8101e0  vmmov mr2, r3
000308  22131204  vmac.f.mz.rn vr6{mr2}, r4, vr1
00030c  1f42ffcd  addli r4, r30, -6404
000310  92125616  vadd.f.mh.rn vr5{mr3}, r12, vr5
000314  12136610  vadd.f.mh.rn vr6{mr0}, r12, vr6
000318  ab010080  lui r3, 524288
00031c  63000200  loadli.w zero,  0(r4)
000320  6a904102  vand.f.mz vr0{mr1}, r3, vr4
000324  ea903102  vand.f.mz vr1{mr1}, r3, vr3
000328  7e0000e0  vmmov mr0, zero
00032c  17200000  xor zero, zero, zero
000330  63800500  loadli.w zero,  0(r11)
000334  ab01003f  lui r3, 258048
000338  6e900220  vor.f.mz vr0{mr0}, vr5, vr0
00033c  7e0000e0  vmmov mr0, zero
000340  17200000  xor zero, zero, zero
000344  ee101320  vor.f.mz vr1{mr0}, vr6, vr1
000348  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00034c  96101402  vadd.f.mz.rn vr1{mr1}, vr8, vr1
000350  12100602  vadd.f.mz.rn vr0{mr1}, r12, vr0
000354  92101602  vadd.f.mz.rn vr1{mr1}, r12, vr1
000358  1f068fce  addli r12, r30, -6336
00035c  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
000360  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
000364  9f010fce  addli r3, r30, -6400
000368  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
00036c  0e100102  vmul.f.mz.rn vr0{mr1}, vr2, vr0
000370  42110602  vload_mask16.mz vr2{mr1}, 0(r12)
000374  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
000378  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
00037c  46101502  vstore_mask16.mz vr1{mr1}, 0(r10)
000380  3fa0d200  blt.s r5, r13, 8
000384  dbccffff  j -412
000388  9bb32200  slli r7, r5, 2
00038c  1f020fce  addli r4, r30, -6400
000390  9f018fce  addli r3, r30, -6336
000394  1f0a0fcf  addli r20, r30, -6272
000398  1231b002  vadd.s.mz vr2{mr1}, zero, vr11
00039c  8b937b10  add.s r7, r23, r7
0003a0  1f858300  addli r10, r7, 64
0003a4  c2920302  vload_mask16.mz vr5{mr1}, 0(r7)
0003a8  42130502  vload_mask16.mz vr6{mr1}, 0(r10)
0003ac  ab25373d  lui r11, 250738
0003b0  9b953571  ori r11, r11, 1811
0003b4  8a915502  vmul.f.mz.rn vr3{mr1}, r11, vr5
0003b8  0a926502  vmul.f.mz.rn vr4{mr1}, r11, vr6
0003bc  ab454c3f  lui r11, 259268
0003c0  46105202  vstore_mask16.mz vr5{mr1}, 0(r4)
0003c4  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
0003c8  2b96193f  lui r12, 258457
0003cc  8e915102  vmul.f.mz.rn vr3{mr1}, vr3, vr5
0003d0  9b959522  ori r11, r11, 553
0003d4  0e126202  vmul.f.mz.rn vr4{mr1}, vr4, vr6
0003d8  a6923202  vmac.f.mz.rn vr5{mr1}, vr5, vr3
0003dc  26134302  vmac.f.mz.rn vr6{mr1}, vr6, vr4
0003e0  0a925502  vmul.f.mz.rn vr4{mr1}, r11, vr5
0003e4  8a916502  vmul.f.mz.rn vr3{mr1}, r11, vr6
0003e8  abf50000  lui r11, 15
0003ec  2ba83840  lui r16, 263050
0003f0  661302c0  vabs.f vr6, vr4
0003f4  1b18b8a3  ori r16, r16, 2619
0003f8  8e134202  vmul.f.mz.rn vr7{mr1}, vr4, vr4
0003fc  e69201c0  vabs.f vr5, vr3
000400  0e943102  vmul.f.mz.rn vr8{mr1}, vr3, vr3
000404  8a146802  vmul.f.mz.rn vr9{mr1}, r16, vr6
000408  0a155802  vmul.f.mz.rn vr10{mr1}, r16, vr5
00040c  46109a02  vstore_mask16.mz vr9{mr1}, 0(r20)
000410  4610a902  vstore_mask16.mz vr10{mr1}, 0(r18)
000414  2b3856bd  lui r16, 775523
000418  abf8803c  lui r17, 247823
00041c  ab51083e  lui r3, 254085
000420  1b12e8ca  ori r4, r16, 3246
000424  9b911194  ori r3, r3, 2369
000428  2ba8aabe  lui r16, 780970
00042c  9214b202  vadd.f.mz.rn vr9{mr1}, r4, vr11
000430  1295b102  vadd.f.mz.rn vr10{mr1}, r3, vr11
000434  1b922808  ori r4, r17, 130
000438  1b18d89e  ori r16, r16, 2541
00043c  9f48ffcd  addli r17, r30, -6404
000440  8b115341  min.s r3, r6, r21
000444  12102802  vadd.f.mz.rn vr0{mr1}, r16, vr2
000448  1b98f5ff  ori r16, r11, 4095
00044c  92359002  vadd.s.mz vr11{mr1}, zero, vr9
000450  a2148202  vmac.f.mz.rn vr9{mr1}, r4, vr8
000454  9230a002  vadd.s.mz vr1{mr1}, zero, vr10
000458  a2157202  vmac.f.mz.rn vr11{mr1}, r4, vr7
00045c  26958402  vmac.f.mz.rn vr10{mr1}, vr9, vr8
000460  92142002  vadd.f.mz.rn vr9{mr1}, zero, vr2
000464  1b12a699  ori r4, r12, 2458
000468  1f06ffcd  addli r12, r30, -6408
00046c  72106262  vle.f.mz mr0{mr1}, r4, vr6
000470  fe0500a0  vmmov r11, mr0
000474  a6907502  vmac.f.mz.rn vr1{mr1}, vr11, vr7
000478  92350002  vadd.s.mz vr11{mr1}, zero, vr0
00047c  26108502  vmac.f.mz.rn vr0{mr1}, vr10, vr8
000480  a6957002  vmac.f.mz.rn vr11{mr1}, vr1, vr7
000484  92309002  vadd.s.mz vr1{mr1}, zero, vr9
000488  a6148002  vmac.f.mz.rn vr9{mr1}, vr0, vr8
00048c  a6907502  vmac.f.mz.rn vr1{mr1}, vr11, vr7
000490  92334002  vadd.s.mz vr7{mr1}, zero, vr4
000494  7e0000a0  vmmov zero, mr0
000498  72105262  vle.f.mz mr0{mr1}, r4, vr5
00049c  17a20501  xor r4, r11, r16
0004a0  67800800  storeli.w zero, 0(r17)
0004a4  17200000  xor zero, zero, zero
0004a8  7e0000a0  vmmov zero, mr0
0004ac  67000600  storeli.w zero, 0(r12)
0004b0  17200000  xor zero, zero, zero
0004b4  7e0600a0  vmmov r12, mr0
0004b8  7e0002e0  vmmov mr0, r4
0004bc  17280601  xor r16, r12, r16
0004c0  a6937000  vmac.f.mz.rn vr7{mr0}, vr1, vr7
0004c4  00a00000  mfence { lm }
0004c8  12343002  vadd.s.mz vr8{mr1}, zero, vr3
0004cc  9f080000  addli r17, zero, 0
0004d0  7e0008e0  vmmov mr0, r16
0004d4  0b983149  max.s r16, r3, r19
0004d8  26948400  vmac.f.mz.rn vr8{mr0}, vr9, vr8
0004dc  5b020000  j 16
0004e0  9f980800  addli r17, r17, 1
0004e4  1f4a0a00  addli r20, r20, 4
0004e8  b77618ff  beq r16, r17, -580
0004ec  93011b05  setlt.u r3, r22, r17
0004f0  3bd00100  bneq r3, zero, 20
0004f4  97c11501  srl r3, r11, r17
0004f8  9b811100  andi r3, r3, 1
0004fc  3be00100  bneq r3, zero, 24
000500  5bfcffff  j -32
000504  9f81e8ff  addli r3, r17, -16
000508  97413600  srl r3, r12, r3
00050c  9b811100  andi r3, r3, 1
000510  37cf01fe  beq r3, zero, -48
000514  e3010a00  loadli.w r3,  0(r20)
000518  2b020040  lui r4, 262144
00051c  0f024210  .word 0x1042020f
000520  8b613220  mul.f.rn r3, r4, r3
000524  2b02803f  lui r4, 260096
000528  8f813100  .word 0x0031818f
00052c  8be14110  add.f.rn r3, r3, r4
000530  8f013218  div.f.rn r3, r4, r3
000534  67003a00  storeli.w r3, 0(r20)
000538  5bf5ffff  j -88
00053c  00a00300  mfence { lm, sm, gm }
000540  9f0e8fcc  addli sp, r30, -6592
000544  9f8e8e33  addli sp, sp, 6592
000548  00a00300  mfence { lm, sm, gm }
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
000788  00100000  exit
00078c  00100000  exit
