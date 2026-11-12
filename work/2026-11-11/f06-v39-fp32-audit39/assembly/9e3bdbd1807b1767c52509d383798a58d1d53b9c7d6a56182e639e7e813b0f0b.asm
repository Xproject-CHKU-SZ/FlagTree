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
0000dc  9f8e8ecd  addli sp, sp, -6464
0000e0  1f8f0e32  addli r30, sp, 6400
0000e4  9f000040  addli r1, zero, 8192
0000e8  eb510f01  load.d r[4:5], 16(r30)
0000ec  b380102a  zext_int2long r[1:2], r1
0000f0  6b538f00  load.d r[7:8], 8(r30)
0000f4  1f04bfce  addli r8, r30, -6312
0000f8  9f04dfce  addli r9, r30, -6296
0000fc  93b21104  setlt.sl r5, r[4:5], r[2:3]
000100  eb508f01  load.d r[2:3], 24(r30)
000104  73306400  store.d r[7:8], 0(r8)
000108  6b530f00  load.d r[7:8], 0(r30)
00010c  73b06400  store.d r[7:8], 0(r9)
000110  3bb40202  bneq r5, zero, 1292
000114  9f020004  addli r5, zero, 512
000118  b382522a  zext_int2long r[5:6], r5
00011c  93b31204  setlt.sl r7, r[6:7], r[2:3]
000120  bbf30302  bneq r7, zero, 1276
000124  0f971264  div.sl r[14:15], r[5:6], r[1:2]
000128  80530102  load_param_i r7, 2
00012c  00d40002  load_param_i r8, 1
000130  8b137420  mul.s r7, r8, r7
000134  b384932e  zext_int2long r[9:10], r7
000138  80330002  core_id r7
00013c  8ba2e110  add.ul r[6:7], r[4:5], r[15:16]
000140  a7f2f2ff  addli.d r[6:7], r[6:7], 32767
000144  8f92e262  div.sl r[5:6], r[5:6], r[14:15]
000148  8f959276  mod.sl r[11:12], r[5:6], r[9:10]
00014c  8f929262  div.sl r[5:6], r[5:6], r[9:10]
000150  80540002  load_param_i r9, 0
000154  8b147450  fmac.s r9, r8, r7
000158  b383742a  zext_int2long r[7:8], r9
00015c  93b4b304  setlt.sl r9, r[8:9], r[12:13]
000160  0bb5b340  min.sl r[11:12], r[8:9], r[12:13]
000164  0bb57250  fmac.sl r[11:12], r[6:7], r[8:9]
000168  8b33e520  mul.sl r[8:9], r[11:12], r[15:16]
00016c  8bb33340  min.sl r[8:9], r[8:9], r[4:5]
000170  3386c42a  zext_int2long r[12:13], r9
000174  9f040fcf  addli r9, r30, -6272
000178  8ba2c210  add.ul r[6:7], r[6:7], r[13:14]
00017c  73b0e400  store.d r[15:16], 0(r9)
000180  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
000184  8bb2e220  mul.sl r[6:7], r[6:7], r[15:16]
000188  0bb73240  min.sl r[15:16], r[6:7], r[4:5]
00018c  1f021fcf  addli r4, r30, -6264
000190  93317706  setle.sl r3, r[15:16], r[8:9]
000194  73307200  store.d r[8:9], 0(r4)
000198  3bc50106  bneq r3, zero, 3408
00019c  1f024000  addli r4, zero, 32
0001a0  abf1ffff  lui r3, 1048575
0001a4  9ff3f0ff  addli r7, r1, -1
0001a8  0b934038  mod.s r6, r1, r4
0001ac  1b9401fe  ori r8, r3, 4064
0001b0  33024028  zext_int2long r[4:5], zero
0001b4  9b91f1ff  ori r3, r3, 4095
0001b8  17868300  and r12, r7, r8
0001bc  37300300  beq r6, zero, 12
0001c0  17b36100  sll r6, r3, r6
0001c4  97213300  xor r3, r6, r3
0001c8  2383f000  andi.d r[7:8], r[2:3], 15
0001cc  1f04efce  addli r8, r30, -6288
0001d0  0bb24048  max.sl r[5:6], r[2:3], r[5:6]
0001d4  7e8001e0  vmmov mr0, r3
0001d8  1f1b0000  addli r22, zero, 1
0001dc  1f0a0000  addli r20, zero, 0
0001e0  9bb92000  slli r19, r1, 2
0001e4  1f280000  addli r16, zero, 2
0001e8  1f0e8fdf  addli r28, r30, -4160
0001ec  9f048000  addli r9, zero, 64
0001f0  9f0d8fcf  addli r27, r30, -6208
0001f4  9f060fe0  addli r13, r30, -4096
0001f8  73306400  store.d r[7:8], 0(r8)
0001fc  1f037fcf  addli r6, r30, -6216
000200  9f035fcf  addli r7, r30, -6232
000204  73304300  store.d r[5:6], 0(r6)
000208  1f022000  addli r4, zero, 16
00020c  97d14100  sra r3, r3, r4
000210  1f020004  addli r4, zero, 512
000214  b30b7229  zext_int2long r[23:24], r4
000218  33024b2c  zext_int2long r[4:5], r22
00021c  7e8101e0  vmmov mr2, r3
000220  9f01afce  addli r3, r30, -6320
000224  73b04300  store.d r[5:6], 0(r7)
000228  1b322600  slli r4, r12, 2
00022c  73b0e100  store.d r[15:16], 0(r3)
000230  670b4fce  storeli.w r4, -6224(r30)
000234  5b0b0000  j 88
000238  1f09cfce  addli r18, r30, -6304
00023c  00a00000  mfence { lm }
000240  9f081fcf  addli r17, r30, -6264
000244  9f0aafce  addli r21, r30, -6320
000248  1f280000  addli r16, zero, 2
00024c  9f0c1fcf  addli r25, r30, -6264
000250  eb520900  load.d r[6:7], 0(r18)
000254  ebd30800  load.d r[8:9], 0(r17)
000258  9bb22200  slli r5, r5, 2
00025c  2b0300f0  lui r6, 983040
000260  6bd70a00  load.d r[15:16], 0(r21)
000264  97b10303  sll.d r[4:5], r[8:9], r16
000268  a7830304  addli.d r[8:9], r[8:9], 512
00026c  73b07c00  store.d r[8:9], 0(r25)
000270  97926200  or r5, r5, r6
000274  93b3e304  setlt.sl r7, r[8:9], r[15:16]
000278  1f04bfce  addli r8, r30, -6312
00027c  6b550400  load.d r[11:12], 0(r8)
000280  8b213510  add.ul r[4:5], r[11:12], r[4:5]
000284  ffb2b101  s_lm2gm r5, r27, 0(r[4:5])
000288  b7810306  beq r7, zero, 3168
00028c  9f0a1fcf  addli r21, r30, -6264
000290  9f0cdfce  addli r25, r30, -6296
000294  ebd20a00  load.d r[6:7], 0(r21)
000298  8b315718  sub.sl r[4:5], r[15:16], r[6:7]
00029c  9f070fcf  addli r15, r30, -6272
0002a0  8bb21220  mul.sl r[6:7], r[6:7], r[2:3]
0002a4  ebd30700  load.d r[8:9], 0(r15)
0002a8  97b20203  sll.d r[6:7], r[6:7], r16
0002ac  1f085fcf  addli r16, r30, -6232
0002b0  2b0700f0  lui r14, 983040
0002b4  6b550800  load.d r[11:12], 0(r16)
0002b8  8bb33340  min.sl r[8:9], r[8:9], r[4:5]
0002bc  8bb81320  mul.sl r[18:19], r[8:9], r[2:3]
0002c0  13b4a104  setlt.sl r8, r[4:5], r[11:12]
0002c4  6bd50c00  load.d r[11:12], 0(r25)
0002c8  8bb17141  min.sl r[4:5], r[4:5], r[24:25]
0002cc  9bb32800  slli r7, r17, 2
0002d0  8b225510  add.ul r[6:7], r[11:12], r[6:7]
0002d4  9793e300  or r7, r7, r14
0002d8  ffa3d200  l_gm2lm r7, r13, 0(r[6:7])
0002dc  9f02cfce  addli r5, r30, -6304
0002e0  73b03200  store.d r[4:5], 0(r5)
0002e4  3b5d04fe  bneq r8, zero, -172
0002e8  9f021fcf  addli r5, r30, -6264
0002ec  6bd70200  load.d r[15:16], 0(r5)
0002f0  0ba5e110  add.ul r[11:12], r[4:5], r[15:16]
0002f4  27030700  addli.d r[7:8], r[15:16], 0
0002f8  9f011fcf  addli r3, r30, -6264
0002fc  1f02ffce  addli r4, r30, -6280
000300  73b0e100  store.d r[15:16], 0(r3)
000304  7330a200  store.d r[11:12], 0(r4)
000308  5b070000  j 56
00030c  630a4fcf  loadli.w r20,  -6240(r30)
000310  1f04ffce  addli r8, r30, -6280
000314  1f072fcf  addli r14, r30, -6256
000318  9f020fe0  addli r5, r30, -4096
00031c  6b550400  load.d r[11:12], 0(r8)
000320  6b530700  load.d r[7:8], 0(r14)
000324  1b2a1a00  xori r20, r20, 1
000328  1b32ba00  slli r4, r20, 11
00032c  9331a304  setlt.sl r3, r[7:8], r[11:12]
000330  8b964210  add.s r13, r5, r4
000334  1f023fcf  addli r4, r30, -6248
000338  eb580200  load.d r[18:19], 0(r4)
00033c  b7fb01fe  beq r3, zero, -260
000340  1f080fcf  addli r16, r30, -6272
000344  a7010300  addli.d r[4:5], r[7:8], 0
000348  eb530800  load.d r[8:9], 0(r16)
00034c  0ba77110  add.ul r[15:16], r[4:5], r[8:9]
000350  8b32e518  sub.sl r[6:7], r[11:12], r[15:16]
000354  8bb35340  min.sl r[8:9], r[8:9], r[6:7]
000358  9f025fcf  addli r5, r30, -6232
00035c  8bbc1320  mul.sl r[26:27], r[8:9], r[2:3]
000360  ebd30200  load.d r[8:9], 0(r5)
000364  00a00000  mfence { lm }
000368  93b37c04  setlt.sl r7, r[26:27], r[8:9]
00036c  3bc10300  bneq r7, zero, 80
000370  1f240000  addli r8, zero, 2
000374  0b351720  mul.sl r[11:12], r[15:16], r[2:3]
000378  9f0a3fcf  addli r21, r30, -6248
00037c  9b33ba00  slli r7, r20, 11
000380  1f003fcf  addli zero, r30, -6248
000384  97328502  sll.d r[6:7], r[11:12], r8
000388  9ba30380  xori r7, r7, 2048
00038c  1f040fe0  addli r8, r30, -4096
000390  73b05a00  store.d r[6:7], 0(r21)
000394  9f02dfce  addli r5, r30, -6296
000398  2b0800f0  lui r16, 983040
00039c  8b137410  add.s r7, r8, r7
0003a0  1bb42c00  slli r8, r25, 2
0003a4  6bd50200  load.d r[11:12], 0(r5)
0003a8  eb520000  load.d r[6:7], 0(zero)
0003ac  17140401  or r8, r8, r16
0003b0  17200000  xor zero, zero, zero
0003b4  0b255510  add.ul r[11:12], r[11:12], r[6:7]
0003b8  7f247500  l_gm2lm r8, r7, 0(r[11:12])
0003bc  8f921862  div.sl r[5:6], r[17:18], r[1:2]
0003c0  9f08efce  addli r17, r30, -6288
0003c4  b3037028  zext_int2long r[7:8], zero
0003c8  1f083fcf  addli r16, r30, -6248
0003cc  670a4fcf  storeli.w r20, -6240(r30)
0003d0  6bd50800  load.d r[11:12], 0(r17)
0003d4  73309801  store.d r[26:27], 0(r16)
0003d8  93237500  seteq.d r7, r[11:12], r[8:9]
0003dc  1f041fcf  addli r8, r30, -6264
0003e0  6b550400  load.d r[11:12], 0(r8)
0003e4  8bbca118  sub.sl r[26:27], r[4:5], r[11:12]
0003e8  9f012fcf  addli r3, r30, -6256
0003ec  73b0e100  store.d r[15:16], 0(r3)
0003f0  bbd50300  bneq r7, zero, 372
0003f4  9f035fcf  addli r7, r30, -6232
0003f8  ebd10300  load.d r[4:5], 0(r7)
0003fc  93b13204  setlt.sl r3, r[6:7], r[4:5]
000400  3bbc01fe  bneq r3, zero, -244
000404  1f0a0000  addli r20, zero, 0
000408  3307e028  zext_int2long r[14:15], zero
00040c  9f8a0600  addli r21, r13, 0
000410  db050000  j 44
000414  8b219711  add.ul r[4:5], r[15:16], r[26:27]
000418  8f917177  mod.sl r[3:4], r[3:4], r[23:24]
00041c  9bb12100  slli r3, r3, 2
000420  8b913d10  add.s r3, r27, r3
000424  67802101  storeli.w r18, 0(r3)
000428  27170700  addli.d r[15:16], r[15:16], 1
00042c  0b1a1a18  sub.s r20, r20, r1
000430  8b9a3a11  add.s r21, r21, r19
000434  93315704  setlt.sl r3, r[15:16], r[6:7]
000438  37db01fe  beq r3, zero, -300
00043c  1f057fcf  addli r10, r30, -6216
000440  b3013a28  zext_int2long r[3:4], r20
000444  1f090000  addli r18, zero, 0
000448  eb530500  load.d r[8:9], 0(r10)
00044c  a381f100  andi.d r[4:5], r[4:5], 15
000450  8ba13340  min.ul r[4:5], r[8:9], r[4:5]
000454  b3037028  zext_int2long r[7:8], zero
000458  93a37100  seteq.d r7, r[4:5], r[8:9]
00045c  bb800300  bneq r7, zero, 32
000460  9f830a00  addli r7, r21, 0
000464  1f840100  addli r8, r3, 0
000468  63880300  loadli.w r16,  0(r7)
00046c  1f74f4ff  addli r8, r8, -1
000470  9fc30300  addli r7, r7, 4
000474  0b690911  add.f.rn r18, r18, r16
000478  bb4f04fe  bneq r8, zero, -16
00047c  93a31102  setneq.d r7, r[4:5], r[2:3]
000480  37de03fe  beq r7, zero, -108
000484  0bb83018  sub.sl r[17:18], r[2:3], r[4:5]
000488  9f034000  addli r7, zero, 32
00048c  0b1b7838  mod.s r22, r16, r7
000490  abf3ffff  lui r7, 1048575
000494  1b94f3ff  ori r8, r7, 4095
000498  37300b00  beq r22, zero, 12
00049c  173b6401  sll r22, r8, r22
0004a0  17248b00  xor r8, r22, r8
0004a4  0b351720  mul.sl r[11:12], r[15:16], r[2:3]
0004a8  1f78f8ff  addli r16, r16, -1
0004ac  9b9303fe  ori r7, r7, 4064
0004b0  fe0104e0  vmmov mr3, r8
0004b4  1f1b0000  addli r22, zero, 1
0004b8  1b352500  slli r10, r10, 2
0004bc  9bb52100  slli r11, r3, 2
0004c0  97037800  and r7, r16, r7
0004c4  0b95a610  add.s r10, r13, r10
0004c8  0b15b510  add.s r10, r10, r11
0004cc  9bb52300  slli r11, r7, 2
0004d0  0b15b510  add.s r10, r10, r11
0004d4  9f052000  addli r11, zero, 16
0004d8  1754b400  sra r8, r8, r11
0004dc  42100506  vload_mask16.mz vr0{mr3}, 0(r10)
0004e0  1f058500  addli r10, r10, 64
0004e4  fe0104e0  vmmov mr3, r8
0004e8  c2100506  vload_mask16.mz vr1{mr3}, 0(r10)
0004ec  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0004f0  bfc06301  blt.s r7, r22, 48
0004f4  9bb12100  slli r3, r3, 2
0004f8  1f020000  addli r4, zero, 0
0004fc  0b943a10  add.s r8, r21, r3
000500  1f024200  addli r4, r4, 32
000504  9f810101  addli r3, r3, 128
000508  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
00050c  1f048400  addli r8, r8, 64
000510  42110402  vload_mask16.mz vr2{mr1}, 0(r8)
000514  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
000518  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00051c  bf0f72fe  blt.s r4, r7, -32
000520  46100e02  vstore_mask16.mz vr0{mr1}, 0(r28)
000524  9f010000  addli r3, zero, 0
000528  1f020000  addli r4, zero, 0
00052c  00a00000  mfence { lm }
000530  8b133e10  add.s r7, r28, r3
000534  9fc10100  addli r3, r3, 4
000538  e3830300  loadli.w r7,  0(r7)
00053c  0b627210  add.f.rn r4, r4, r7
000540  bbcf91fe  bneq r3, r9, -16
000544  8b239711  add.ul r[8:9], r[15:16], r[26:27]
000548  8b614910  add.f.rn r3, r18, r4
00054c  8f937377  mod.sl r[7:8], r[7:8], r[23:24]
000550  1bb22300  slli r4, r7, 2
000554  0b924d10  add.s r4, r27, r4
000558  67003200  storeli.w r3, 0(r4)
00055c  00a00000  mfence { lm }
000560  5bd9ffff  j -312
000564  9f035fcf  addli r7, r30, -6232
000568  ebd10300  load.d r[4:5], 0(r7)
00056c  93b13204  setlt.sl r3, r[6:7], r[4:5]
000570  3bf601fe  bneq r3, zero, -612
000574  3307e028  zext_int2long r[14:15], zero
000578  1f890600  addli r18, r13, 0
00057c  8b311720  mul.sl r[4:5], r[15:16], r[2:3]
000580  9bb12100  slli r3, r3, 2
000584  63026fcf  loadli.w r4,  -6224(r30)
000588  8b913610  add.s r3, r13, r3
00058c  8b914110  add.s r3, r3, r4
000590  1f828100  addli r4, r3, 64
000594  42900100  vload_mask16.mz vr0{mr0}, 0(r3)
000598  c2100204  vload_mask16.mz vr1{mr2}, 0(r4)
00059c  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0005a0  bf306601  blt.s r12, r22, 44
0005a4  9f010000  addli r3, zero, 0
0005a8  1f020900  addli r4, r18, 0
0005ac  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
0005b0  9f038200  addli r7, r4, 64
0005b4  9f814100  addli r3, r3, 32
0005b8  1f020201  addli r4, r4, 128
0005bc  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
0005c0  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0005c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0005c8  bf9fc1fe  blt.s r3, r12, -28
0005cc  46100e02  vstore_mask16.mz vr0{mr1}, 0(r28)
0005d0  1f020000  addli r4, zero, 0
0005d4  9f010000  addli r3, zero, 0
0005d8  00a00000  mfence { lm }
0005dc  8b134e10  add.s r7, r28, r4
0005e0  1f420200  addli r4, r4, 4
0005e4  e3830300  loadli.w r7,  0(r7)
0005e8  8be17110  add.f.rn r3, r3, r7
0005ec  bb4f92fe  bneq r4, r9, -16
0005f0  8b239711  add.ul r[8:9], r[15:16], r[26:27]
0005f4  27170700  addli.d r[15:16], r[15:16], 1
0005f8  0b193911  add.s r18, r18, r19
0005fc  8f937377  mod.sl r[7:8], r[7:8], r[23:24]
000600  13325704  setlt.sl r4, r[15:16], r[6:7]
000604  9bb32300  slli r7, r7, 2
000608  8b937d10  add.s r7, r27, r7
00060c  67803300  storeli.w r3, 0(r7)
000610  00a00000  mfence { lm }
000614  bb2d02fe  bneq r4, zero, -152
000618  db9effff  j -780
00061c  80d20002  load_param_i r5, 1
000620  80530002  load_param_i r7, 0
000624  eb044f02  load.b r9, 36(r30)
000628  b382522a  zext_int2long r[5:6], r5
00062c  b383732e  zext_int2long r[7:8], r7
000630  37810400  beq r9, zero, 64
000634  0f955074  mod.sl r[10:11], r[1:2], r[5:6]
000638  8f925062  div.sl r[5:6], r[1:2], r[5:6]
00063c  a7870100  addli.d r[16:17], r[4:5], 0
000640  13b6a304  setlt.sl r12, r[8:9], r[11:12]
000644  0bb5a340  min.sl r[11:12], r[8:9], r[11:12]
000648  0bb57250  fmac.sl r[11:12], r[6:7], r[8:9]
00064c  3306c628  zext_int2long r[12:13], r12
000650  8ba2c210  add.ul r[6:7], r[6:7], r[13:14]
000654  0b361540  min.sl r[13:14], r[11:12], r[2:3]
000658  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
00065c  0bb51240  min.sl r[11:12], r[6:7], r[2:3]
000660  b3025028  zext_int2long r[5:6], zero
000664  13b75706  setle.sl r14, r[16:17], r[6:7]
000668  37010700  beq r14, zero, 64
00066c  db0f0100  j 2172
000670  0f955174  mod.sl r[10:11], r[3:4], r[5:6]
000674  8f925162  div.sl r[5:6], r[3:4], r[5:6]
000678  13b6a304  setlt.sl r12, r[8:9], r[11:12]
00067c  0bb5a340  min.sl r[11:12], r[8:9], r[11:12]
000680  0bb57250  fmac.sl r[11:12], r[6:7], r[8:9]
000684  3306c628  zext_int2long r[12:13], r12
000688  8ba2c210  add.ul r[6:7], r[6:7], r[13:14]
00068c  0ba6a210  add.ul r[13:14], r[6:7], r[11:12]
000690  8b323540  min.sl r[6:7], r[11:12], r[4:5]
000694  27850000  addli.d r[11:12], r[2:3], 0
000698  8b373640  min.sl r[16:17], r[13:14], r[4:5]
00069c  3306c028  zext_int2long r[12:13], zero
0006a0  13b75706  setle.sl r14, r[16:17], r[6:7]
0006a4  3b110704  bneq r14, zero, 2116
0006a8  00390002  core_id r18
0006ac  1f270000  addli r14, zero, 2
0006b0  93840400  seteq r9, r9, zero
0006b4  0b35c518  sub.sl r[11:12], r[11:12], r[13:14]
0006b8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0006bc  80580102  load_param_i r17, 2
0006c0  1f0a5fcf  addli r20, r30, -6232
0006c4  6e300062  vxor.s.mz vr0{mr1}, vr0, vr0
0006c8  1736e602  sll.d r[13:14], r[13:14], r14
0006cc  1b394900  slli r18, r18, 4
0006d0  1f070004  addli r14, zero, 512
0006d4  67061fcf  storeli.w r17, -6304(r30)
0006d8  67052fcf  storeli.w r18, -6320(r30)
0006dc  3309272d  zext_int2long r[18:19], r14
0006e0  1bb74800  slli r14, r17, 4
0006e4  73302a01  store.d r[19:20], 0(r20)
0006e8  8b382541  min.sl r[18:19], r[11:12], r[19:20]
0006ec  9f096fcf  addli r19, r30, -6224
0006f0  73b01901  store.d r[18:19], 0(r19)
0006f4  3bb00400  bneq r9, zero, 12
0006f8  8bb13320  mul.sl r[4:5], r[8:9], r[4:5]
0006fc  5b010000  j 8
000700  b3013028  zext_int2long r[3:4], zero
000704  9f034fce  addli r7, r30, -6368
000708  9f0bdfce  addli r23, r30, -6296
00070c  1f0c3fcf  addli r24, r30, -6248
000710  9f0d5fcf  addli r27, r30, -6232
000714  1f0e8fce  addli r28, r30, -6336
000718  12100002  vadd.f.mz.rn vr0{mr1}, zero, vr0
00071c  b308172d  zext_int2long r[17:18], r14
000720  1f078000  addli r14, zero, 64
000724  73b03300  store.d r[4:5], 0(r7)
000728  ebd30b00  load.d r[8:9], 0(r23)
00072c  a771f503  addli.d r[4:5], r[11:12], 511
000730  8ba3c310  add.ul r[8:9], r[8:9], r[13:14]
000734  1f066fcf  addli r12, r30, -6224
000738  73307c00  store.d r[8:9], 0(r24)
00073c  ebd30d00  load.d r[8:9], 0(r27)
000740  8f917166  div.sl r[3:4], r[3:4], r[7:8]
000744  e303cfce  loadli.w r7,  -6304(r30)
000748  b38c932f  zext_int2long r[25:26], r7
00074c  e303afce  loadli.w r7,  -6320(r30)
000750  b383732e  zext_int2long r[7:8], r7
000754  73307e00  store.d r[8:9], 0(r28)
000758  6b540600  load.d r[9:10], 0(r12)
00075c  80330002  core_id r7
000760  b389332f  zext_int2long r[19:20], r7
000764  9bb32300  slli r7, r7, 2
000768  1b342400  slli r8, r8, 2
00076c  9f140000  addli r9, zero, 1
000770  e7088fce  storeli.w r8, -6264(r30)
000774  ab1a0000  lui r21, 1
000778  2b0b0000  lui r22, 0
00077c  3386c42a  zext_int2long r[12:13], r9
000780  7e8004e0  vmmov mr0, r9
000784  9f04dfce  addli r9, r30, -6296
000788  1f048fdf  addli r8, r30, -4160
00078c  9f8a0af0  addli r21, r21, -2048
000790  1f0b0b00  addli r22, r22, 0
000794  73b03401  store.d r[20:21], 0(r9)
000798  8b935311  add.s r7, r7, r21
00079c  a3b10102  slli.d r[4:5], r[4:5], 32
0007a0  67077fce  storeli.w r7, -6288(r30)
0007a4  9f034fcf  addli r7, r30, -6240
0007a8  73b0c300  store.d r[13:14], 0(r7)
0007ac  a3d10102  srai.d r[4:5], r[4:5], 32
0007b0  1f065fce  addli r12, r30, -6360
0007b4  9f069fce  addli r13, r30, -6328
0007b8  73303600  store.d r[4:5], 0(r12)
0007bc  9f010fcf  addli r3, r30, -6272
0007c0  1f027fce  addli r4, r30, -6344
0007c4  73b0f600  store.d r[16:17], 0(r13)
0007c8  73b09101  store.d r[26:27], 0(r3)
0007cc  73301201  store.d r[18:19], 0(r4)
0007d0  db0a0000  j 84
0007d4  9f0d4fce  addli r27, r30, -6368
0007d8  9bb32b00  slli r7, r23, 2
0007dc  9f240000  addli r9, zero, 2
0007e0  9f0bbfce  addli r23, r30, -6312
0007e4  ebd10d00  load.d r[4:5], 0(r27)
0007e8  8ba13210  add.ul r[4:5], r[6:7], r[4:5]
0007ec  97b19102  sll.d r[4:5], r[4:5], r9
0007f0  ab0400f0  lui r9, 983040
0007f4  6bd60b00  load.d r[13:14], 0(r23)
0007f8  97939300  or r7, r7, r9
0007fc  8b213610  add.ul r[4:5], r[13:14], r[4:5]
000800  ff936101  s_sm2gm r7, r22, 0(r[4:5])
000804  a7820204  addli.d r[6:7], r[6:7], 512
000808  00200100  mfence { sm }
00080c  2bf20000  lui r4, 15
000810  93b1f204  setlt.sl r3, r[6:7], r[16:17]
000814  1b12f2ff  ori r4, r4, 4095
000818  80210204  csr_set csr3, r4
00081c  00d00100  sync_group
000820  37ab0102  beq r3, zero, 1736
000824  9f045fcf  addli r9, r30, -6232
000828  8bb15718  sub.sl r[4:5], r[16:17], r[6:7]
00082c  9f078fce  addli r15, r30, -6336
000830  e303afce  loadli.w r7,  -6320(r30)
000834  6bd60400  load.d r[13:14], 0(r9)
000838  8bbbc140  min.sl r[24:25], r[4:5], r[13:14]
00083c  a3b10b02  slli.d r[4:5], r[24:25], 32
000840  23d60102  srai.d r[13:14], r[4:5], 32
000844  ebd10700  load.d r[4:5], 0(r15)
000848  4bf07b00  ble.s r23, r7, 28
00084c  9bb32100  slli r7, r3, 2
000850  8ba11111  add.ul r[4:5], r[4:5], r[18:19]
000854  93b4c104  setlt.sl r9, r[4:5], r[13:14]
000858  8b936311  add.s r7, r7, r22
00085c  4e900302  vstores_mask16.mz vr0{mr1}, 0(r7)
000860  bbbf04fe  bneq r9, zero, -20
000864  e301cfce  loadli.w r3,  -6304(r30)
000868  4b817101  ble.s r3, r23, 64
00086c  a7870900  addli.d r[16:17], r[20:21], 0
000870  80310002  core_id r3
000874  cbd03b00  ble.s r23, r3, 52
000878  9bb18700  slli r3, r15, 8
00087c  8ba79711  add.ul r[16:17], r[16:17], r[26:27]
000880  13b2c704  setlt.sl r4, r[16:17], r[13:14]
000884  8b915111  add.s r3, r3, r21
000888  9f838100  addli r7, r3, 64
00088c  4e900102  vstores_mask16.mz vr0{mr1}, 0(r3)
000890  4e900302  vstores_mask16.mz vr0{mr1}, 0(r7)
000894  9f830101  addli r7, r3, 128
000898  9f818101  addli r3, r3, 192
00089c  4e900302  vstores_mask16.mz vr0{mr1}, 0(r7)
0008a0  4e900102  vstores_mask16.mz vr0{mr1}, 0(r3)
0008a4  3b5f02fe  bneq r4, zero, -44
0008a8  8f917977  mod.sl r[3:4], r[19:20], r[23:24]
0008ac  93b39b05  setlt.sl r7, r[24:25], r[26:27]
0008b0  93b73b07  setle.sl r15, r[24:25], r[20:21]
0008b4  00a00300  mfence { lm, sm, gm }
0008b8  abf40000  lui r9, 15
0008bc  1f062fcf  addli r12, r30, -6256
0008c0  9b94f4ff  ori r9, r9, 4095
0008c4  80a10404  csr_set csr3, r9
0008c8  9f047fcf  addli r9, r30, -6216
0008cc  00d00100  sync_group
0008d0  73307601  store.d r[24:25], 0(r12)
0008d4  73b05400  store.d r[6:7], 0(r9)
0008d8  b78c0300  beq r7, zero, 800
0008dc  0f967961  div.sl r[13:14], r[20:21], r[24:25]
0008e0  9f131000  addli r7, zero, 9
0008e4  9f044fcf  addli r9, r30, -6240
0008e8  6743ffce  storeli.w r15, -6348(r30)
0008ec  9f0a5fcf  addli r21, r30, -6232
0008f0  ebd80400  load.d r[18:19], 0(r9)
0008f4  17367602  sll.d r[13:14], r[13:14], r7
0008f8  8b37c518  sub.sl r[16:17], r[11:12], r[13:14]
0008fc  93b31705  setlt.sl r7, r[16:17], r[18:19]
000900  8ba85110  add.ul r[18:19], r[4:5], r[6:7]
000904  ebd10a00  load.d r[4:5], 0(r21)
000908  8bbd3740  min.sl r[28:29], r[16:17], r[4:5]
00090c  3b810300  bneq r7, zero, 64
000910  9f073fcf  addli r15, r30, -6248
000914  9f230000  addli r7, zero, 2
000918  8bb11820  mul.sl r[4:5], r[18:19], r[2:3]
00091c  1f087fcf  addli r16, r30, -6216
000920  ebd20700  load.d r[6:7], 0(r15)
000924  97b17102  sll.d r[4:5], r[4:5], r7
000928  17367602  sll.d r[13:14], r[13:14], r7
00092c  9bb32d00  slli r7, r27, 2
000930  8ba13210  add.ul r[4:5], r[6:7], r[4:5]
000934  eb520800  load.d r[6:7], 0(r16)
000938  ab0400f0  lui r9, 983040
00093c  97939300  or r7, r7, r9
000940  8ba1c110  add.ul r[4:5], r[4:5], r[13:14]
000944  9f040fe0  addli r9, r30, -4096
000948  ffa39100  l_gm2lm r7, r9, 0(r[4:5])
00094c  9f035fce  addli r7, r30, -6360
000950  9f04ffce  addli r9, r30, -6280
000954  ebd10300  load.d r[4:5], 0(r7)
000958  8bb13b20  mul.sl r[4:5], r[24:25], r[4:5]
00095c  73b03400  store.d r[4:5], 0(r9)
000960  93b13107  setle.sl r3, r[4:5], r[20:21]
000964  bba60100  bneq r3, zero, 424
000968  9f01dfce  addli r3, r30, -6296
00096c  9f030000  addli r7, zero, 0
000970  9f0b0000  addli r23, zero, 0
000974  9f070fe0  addli r15, r30, -4096
000978  ebda0100  load.d r[22:23], 0(r3)
00097c  1f082fcf  addli r16, r30, -6256
000980  8baa9a11  add.ul r[22:23], r[22:23], r[26:27]
000984  9f141000  addli r9, zero, 9
000988  1f0d4fcf  addli r26, r30, -6240
00098c  1f005fcf  addli zero, r30, -6232
000990  6b560800  load.d r[13:14], 0(r16)
000994  6b5c0d00  load.d r[25:26], 0(r26)
000998  8f91ca66  div.sl r[3:4], r[21:22], r[12:13]
00099c  0f96ca70  mod.sl r[13:14], r[22:23], r[13:14]
0009a0  97b19102  sll.d r[4:5], r[4:5], r9
0009a4  8b393518  sub.sl r[20:21], r[11:12], r[4:5]
0009a8  93b48905  setlt.sl r9, r[20:21], r[25:26]
0009ac  0b2c5610  add.ul r[25:26], r[13:14], r[6:7]
0009b0  6b560000  load.d r[13:14], 0(zero)
0009b4  17200000  xor zero, zero, zero
0009b8  00a00300  mfence { lm, sm, gm }
0009bc  0bb6c940  min.sl r[13:14], r[20:21], r[13:14]
0009c0  3bc10400  bneq r9, zero, 80
0009c4  9bb4b300  slli r9, r7, 11
0009c8  9f020fe0  addli r5, r30, -4096
0009cc  1f0d3fcf  addli r26, r30, -6248
0009d0  1f280000  addli r16, zero, 2
0009d4  8b391c20  mul.sl r[20:21], r[25:26], r[2:3]
0009d8  1f007fcf  addli zero, r30, -6216
0009dc  9ba40480  xori r9, r9, 2048
0009e0  97b90903  sll.d r[20:21], r[20:21], r16
0009e4  97b10103  sll.d r[4:5], r[4:5], r16
0009e8  1b382600  slli r16, r12, 2
0009ec  8b949210  add.s r9, r5, r9
0009f0  eb520d00  load.d r[6:7], 0(r26)
0009f4  8ba93211  add.ul r[20:21], r[6:7], r[20:21]
0009f8  eb520000  load.d r[6:7], 0(zero)
0009fc  2b0d00f0  lui r26, 983040
000a00  17200000  xor zero, zero, zero
000a04  8ba13910  add.ul r[4:5], r[20:21], r[4:5]
000a08  1718a801  or r16, r16, r26
000a0c  7fa89100  l_gm2lm r16, r9, 0(r[4:5])
000a10  9f014000  addli r3, zero, 32
000a14  2bf2ffff  lui r4, 1048575
000a18  8b943d38  mod.s r9, r27, r3
000a1c  9b11f2ff  ori r3, r4, 4095
000a20  37b00400  beq r9, zero, 12
000a24  97b49100  sll r9, r3, r9
000a28  97a13400  xor r3, r9, r3
000a2c  9ff4fdff  addli r9, r27, -1
000a30  1b1202fe  ori r4, r4, 4064
000a34  7e8101e0  vmmov mr2, r3
000a38  17884400  and r16, r9, r4
000a3c  9f042000  addli r9, zero, 16
000a40  1b322800  slli r4, r16, 2
000a44  97d19100  sra r3, r3, r9
000a48  0b924710  add.s r4, r15, r4
000a4c  c2100204  vload_mask16.mz vr1{mr2}, 0(r4)
000a50  1f028200  addli r4, r4, 64
000a54  7e8101e0  vmmov mr2, r3
000a58  9f110000  addli r3, zero, 1
000a5c  42110204  vload_mask16.mz vr2{mr2}, 0(r4)
000a60  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000a64  bf203800  blt.s r16, r3, 40
000a68  9f0d0000  addli r27, zero, 0
000a6c  42910702  vload_mask16.mz vr2{mr1}, 0(r15)
000a70  9f818700  addli r3, r15, 64
000a74  9f8d4d00  addli r27, r27, 32
000a78  9f870701  addli r15, r15, 128
000a7c  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000a80  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000a84  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a88  bf9f0dff  blt.s r27, r16, -28
000a8c  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
000a90  1f080000  addli r16, zero, 0
000a94  9f070000  addli r15, zero, 0
000a98  00a00000  mfence { lm }
000a9c  8b110411  add.s r3, r8, r16
000aa0  1f480800  addli r16, r16, 4
000aa4  e3810100  loadli.w r3,  0(r3)
000aa8  8be73710  add.f.rn r15, r15, r3
000aac  bb4fe8fe  bneq r16, r14, -16
000ab0  8bb15818  sub.sl r[4:5], r[18:19], r[6:7]
000ab4  8be47719  sub.f.rn r9, r15, r23
000ab8  1f0affce  addli r20, r30, -6280
000abc  9ba31300  xori r7, r7, 1
000ac0  9f0d0600  addli r27, r12, 0
000ac4  9bb18100  slli r3, r3, 8
000ac8  6302efce  loadli.w r4,  -6288(r30)
000acc  eb580a00  load.d r[18:19], 0(r20)
000ad0  8b113210  add.s r3, r4, r3
000ad4  93b91a05  setlt.sl r19, r[22:23], r[18:19]
000ad8  a7080c00  addli.d r[18:19], r[25:26], 0
000adc  6fc20100  loads.w r4, 0(r3)
000ae0  00a00100  mfence { lm, sm }
000ae4  0be84410  add.f.rn r16, r9, r4
000ae8  0b624818  sub.f.rn r4, r16, r4
000aec  73e00101  stores.w r16, 0(r3)
000af0  9f010fcf  addli r3, r30, -6272
000af4  ebdc0100  load.d r[26:27], 0(r3)
000af8  8b6b9218  sub.f.rn r23, r4, r9
000afc  1bb2b300  slli r4, r7, 11
000b00  9f040fe0  addli r9, r30, -4096
000b04  8b974410  add.s r15, r9, r4
000b08  bbd909fe  bneq r19, zero, -396
000b0c  00200100  mfence { sm }
000b10  abf10000  lui r3, 15
000b14  1f02dfce  addli r4, r30, -6296
000b18  9f032fcf  addli r7, r30, -6256
000b1c  9f044000  addli r9, zero, 32
000b20  9f070002  addli r15, zero, 256
000b24  1f080001  addli r16, zero, 128
000b28  9b91f1ff  ori r3, r3, 4095
000b2c  80a10104  csr_set csr3, r3
000b30  00d00100  sync_group
000b34  eb590200  load.d r[20:21], 0(r4)
000b38  ab1a0000  lui r21, 1
000b3c  2b0b0000  lui r22, 0
000b40  ebdb0300  load.d r[24:25], 0(r7)
000b44  e3416fce  loadli.w r3,  -6348(r30)
000b48  9f8a0af0  addli r21, r21, -2048
000b4c  1f0b0b00  addli r22, r22, 0
000b50  27860900  addli.d r[13:14], r[20:21], 0
000b54  bbd10100  bneq r3, zero, 116
000b58  9b318600  slli r3, r12, 8
000b5c  8b915111  add.s r3, r3, r21
000b60  1f828100  addli r4, r3, 64
000b64  9f830101  addli r7, r3, 128
000b68  ca900102  vloads_mask16.mz vr1{mr1}, 0(r3)
000b6c  9f818101  addli r3, r3, 192
000b70  4a110202  vloads_mask16.mz vr2{mr1}, 0(r4)
000b74  4a920102  vloads_mask16.mz vr4{mr1}, 0(r3)
000b78  ca910302  vloads_mask16.mz vr3{mr1}, 0(r7)
000b7c  9b312600  slli r3, r12, 2
000b80  0b269611  add.ul r[13:14], r[13:14], r[26:27]
000b84  13327605  setlt.sl r4, r[13:14], r[24:25]
000b88  8b916111  add.s r3, r3, r22
000b8c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000b90  16914102  vadd.f.mz.rn vr2{mr1}, vr3, vr4
000b94  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000b98  6af117c0  vsrl.p vr2, r15, vr1
000b9c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000ba0  6a7118c0  vsrl.p vr2, r16, vr1
000ba4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000ba8  6a7117c0  vsrl.p vr2, r14, vr1
000bac  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000bb0  6af114c0  vsrl.p vr2, r9, vr1
000bb4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000bb8  fa930020  vextract.f r7, vr1{mr0}
000bbc  73e07100  stores.w r7, 0(r3)
000bc0  00a00100  mfence { lm, sm }
000bc4  3b5e02fe  bneq r4, zero, -108
000bc8  00200100  mfence { sm }
000bcc  abf10000  lui r3, 15
000bd0  1f029fce  addli r4, r30, -6328
000bd4  9f037fce  addli r7, r30, -6344
000bd8  9b91f1ff  ori r3, r3, 4095
000bdc  80a10104  csr_set csr3, r3
000be0  00d00100  sync_group
000be4  eb570200  load.d r[16:17], 0(r4)
000be8  ebd80300  load.d r[18:19], 0(r7)
000bec  80310002  core_id r3
000bf0  3bd001fe  bneq r3, zero, -1004
000bf4  5b7cffff  j -1056
000bf8  9f044fcf  addli r9, r30, -6240
000bfc  8bab5110  add.ul r[24:25], r[4:5], r[6:7]
000c00  6bd60400  load.d r[13:14], 0(r9)
000c04  9333c504  setlt.sl r7, r[11:12], r[13:14]
000c08  e7077fce  storeli.w r7, -6280(r30)
000c0c  bbe00300  bneq r7, zero, 56
000c10  8bb11b20  mul.sl r[4:5], r[24:25], r[2:3]
000c14  9f230000  addli r7, zero, 2
000c18  1f063fcf  addli r12, r30, -6248
000c1c  9f067fcf  addli r13, r30, -6216
000c20  97b17102  sll.d r[4:5], r[4:5], r7
000c24  ab0300f0  lui r7, 983040
000c28  eb520600  load.d r[6:7], 0(r12)
000c2c  e3041fcf  loadli.w r9,  -6264(r30)
000c30  8ba13210  add.ul r[4:5], r[6:7], r[4:5]
000c34  97937400  or r7, r9, r7
000c38  9f040fe0  addli r9, r30, -4096
000c3c  ebd20600  load.d r[6:7], 0(r13)
000c40  ffa39100  l_gm2lm r7, r9, 0(r[4:5])
000c44  3ba90700  bneq r15, zero, 584
000c48  abf1ffff  lui r3, 1048575
000c4c  9f04dfce  addli r9, r30, -6296
000c50  1f020000  addli r4, zero, 0
000c54  9f030fe0  addli r7, r30, -4096
000c58  9b91f1ff  ori r3, r3, 4095
000c5c  6bd60400  load.d r[13:14], 0(r9)
000c60  b39a512f  sext_int2long r[21:22], r3
000c64  9f016fcf  addli r3, r30, -6224
000c68  ebd80100  load.d r[18:19], 0(r3)
000c6c  db040000  j 36
000c70  a7870800  addli.d r[16:17], r[18:19], 0
000c74  9f042fcf  addli r9, r30, -6256
000c78  ebd80400  load.d r[18:19], 0(r9)
000c7c  93311605  setlt.sl r3, r[13:14], r[18:19]
000c80  a7880700  addli.d r[18:19], r[16:17], 0
000c84  9f070fcf  addli r15, r30, -6272
000c88  ebdc0700  load.d r[26:27], 0(r15)
000c8c  37880100  beq r3, zero, 512
000c90  e301ffce  loadli.w r3,  -6280(r30)
000c94  0b269611  add.ul r[13:14], r[13:14], r[26:27]
000c98  3bef01fe  bneq r3, zero, -40
000c9c  b30db029  zext_int2long r[27:28], zero
000ca0  9f0c0000  addli r25, zero, 0
000ca4  9f044fcf  addli r9, r30, -6240
000ca8  8ba7b811  add.ul r[16:17], r[18:19], r[28:29]
000cac  ebd20400  load.d r[6:7], 0(r9)
000cb0  8b37f518  sub.sl r[16:17], r[11:12], r[16:17]
000cb4  00a00300  mfence { lm, sm, gm }
000cb8  93b15704  setlt.sl r3, r[16:17], r[6:7]
000cbc  9f025fcf  addli r5, r30, -6232
000cc0  ebd90200  load.d r[20:21], 0(r5)
000cc4  8bb73741  min.sl r[16:17], r[16:17], r[20:21]
000cc8  3bd10100  bneq r3, zero, 84
000ccc  1f0d3fcf  addli r26, r30, -6248
000cd0  9f240000  addli r9, zero, 2
000cd4  8bba1b20  mul.sl r[22:23], r[24:25], r[2:3]
000cd8  9b31b200  slli r3, r4, 11
000cdc  eb520d00  load.d r[6:7], 0(r26)
000ce0  97ba9a02  sll.d r[22:23], r[22:23], r9
000ce4  97b99d02  sll.d r[20:21], r[28:29], r9
000ce8  9ba10180  xori r3, r3, 2048
000cec  8baa5211  add.ul r[22:23], r[6:7], r[22:23]
000cf0  9f020fe0  addli r5, r30, -4096
000cf4  8ba93a11  add.ul r[20:21], r[22:23], r[20:21]
000cf8  97ba9802  sll.d r[22:23], r[18:19], r9
000cfc  9bb42700  slli r9, r15, 2
000d00  8b913210  add.s r3, r5, r3
000d04  8ba95911  add.ul r[20:21], r[20:21], r[22:23]
000d08  ab0a00f0  lui r21, 983040
000d0c  97945401  or r9, r9, r21
000d10  a78a0b00  addli.d r[22:23], r[24:25], 0
000d14  ffa43900  l_gm2lm r9, r3, 0(r[20:21])
000d18  db0d0000  j 108
000d1c  9f042fcf  addli r9, r30, -6256
000d20  ebd20400  load.d r[6:7], 0(r9)
000d24  93b1c206  setle.sl r3, r[6:7], r[13:14]
000d28  3bf10100  bneq r3, zero, 92
000d2c  1f0a2fcf  addli r20, r30, -6256
000d30  1f0d7fcf  addli r26, r30, -6216
000d34  9b31b200  slli r3, r4, 11
000d38  9f290000  addli r19, zero, 2
000d3c  eb520a00  load.d r[6:7], 0(r20)
000d40  9ba10180  xori r3, r3, 2048
000d44  8f175676  mod.sl r[15:16], r[12:13], r[5:6]
000d48  eb520d00  load.d r[6:7], 0(r26)
000d4c  ab0400f0  lui r9, 983040
000d50  8baa5710  add.ul r[22:23], r[16:17], r[6:7]
000d54  9f020fe0  addli r5, r30, -4096
000d58  8bb71a20  mul.sl r[16:17], r[22:23], r[2:3]
000d5c  8b913210  add.s r3, r5, r3
000d60  97b73703  sll.d r[16:17], r[16:17], r19
000d64  9f093fcf  addli r19, r30, -6248
000d68  ebd20900  load.d r[6:7], 0(r19)
000d6c  8ba7f210  add.ul r[16:17], r[6:7], r[16:17]
000d70  e3021fcf  loadli.w r5,  -6264(r30)
000d74  97949200  or r9, r5, r9
000d78  ffa43700  l_gm2lm r9, r3, 0(r[16:17])
000d7c  9f016fcf  addli r3, r30, -6224
000d80  ebd70100  load.d r[16:17], 0(r3)
000d84  9f014000  addli r3, zero, 32
000d88  2bfdffff  lui r26, 1048575
000d8c  8b943838  mod.s r9, r17, r3
000d90  9b11fdff  ori r3, r26, 4095
000d94  37b00400  beq r9, zero, 12
000d98  97b49100  sll r9, r3, r9
000d9c  97a13400  xor r3, r9, r3
000da0  9f047fcf  addli r9, r30, -6216
000da4  7e8101e0  vmmov mr2, r3
000da8  ebd20400  load.d r[6:7], 0(r9)
000dac  9ff4f8ff  addli r9, r17, -1
000db0  9b180dfe  ori r17, r26, 4064
000db4  1f092000  addli r18, zero, 16
000db8  97881401  and r17, r9, r17
000dbc  97d12101  sra r3, r3, r18
000dc0  9bb42800  slli r9, r17, 2
000dc4  8b949310  add.s r9, r7, r9
000dc8  c2900404  vload_mask16.mz vr1{mr2}, 0(r9)
000dcc  9f848400  addli r9, r9, 64
000dd0  7e8101e0  vmmov mr2, r3
000dd4  9f110000  addli r3, zero, 1
000dd8  42910404  vload_mask16.mz vr2{mr2}, 0(r9)
000ddc  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000de0  bfa03800  blt.s r17, r3, 40
000de4  1f090000  addli r18, zero, 0
000de8  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
000dec  9f818300  addli r3, r7, 64
000df0  1f094900  addli r18, r18, 32
000df4  9f830301  addli r7, r7, 128
000df8  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000dfc  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000e00  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000e04  bf1f19ff  blt.s r18, r17, -28
000e08  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
000e0c  9f080000  addli r17, zero, 0
000e10  9f030000  addli r7, zero, 0
000e14  00a00000  mfence { lm }
000e18  8b111411  add.s r3, r8, r17
000e1c  9fc80800  addli r17, r17, 4
000e20  e3810100  loadli.w r3,  0(r3)
000e24  8be33310  add.f.rn r7, r7, r3
000e28  bbcfe8fe  bneq r17, r14, -16
000e2c  8bb85b18  sub.sl r[18:19], r[24:25], r[6:7]
000e30  ab040000  lui r9, 0
000e34  8be39319  sub.f.rn r7, r7, r25
000e38  1f0a6fcf  addli r20, r30, -6224
000e3c  1b221200  xori r4, r4, 1
000e40  a78b0a00  addli.d r[24:25], r[22:23], 0
000e44  9bb12800  slli r3, r17, 2
000e48  9f840400  addli r9, r9, 0
000e4c  6b590a00  load.d r[19:20], 0(r20)
000e50  8b919110  add.s r3, r3, r9
000e54  8bad2d11  add.ul r[28:29], r[28:29], r[19:20]
000e58  efc40100  loads.w r9, 0(r3)
000e5c  00a00100  mfence { lm, sm }
000e60  93b9ad04  setlt.sl r19, r[28:29], r[11:12]
000e64  8be89310  add.f.rn r17, r7, r9
000e68  8be49818  sub.f.rn r9, r17, r9
000e6c  73e01101  stores.w r17, 0(r3)
000e70  a7880700  addli.d r[18:19], r[16:17], 0
000e74  8bec7418  sub.f.rn r25, r9, r7
000e78  9b33b200  slli r7, r4, 11
000e7c  9f040fe0  addli r9, r30, -4096
000e80  8b937410  add.s r7, r9, r7
000e84  bb8809fe  bneq r19, zero, -480
000e88  dbbdffff  j -532
000e8c  00200100  mfence { sm }
000e90  abf10000  lui r3, 15
000e94  1f029fce  addli r4, r30, -6328
000e98  9f037fce  addli r7, r30, -6344
000e9c  9f04dfce  addli r9, r30, -6296
000ea0  1f062fcf  addli r12, r30, -6256
000ea4  9b91f1ff  ori r3, r3, 4095
000ea8  80a10104  csr_set csr3, r3
000eac  00d00100  sync_group
000eb0  00200100  mfence { sm }
000eb4  80a10104  csr_set csr3, r3
000eb8  00d00100  sync_group
000ebc  eb570200  load.d r[16:17], 0(r4)
000ec0  ebd80300  load.d r[18:19], 0(r7)
000ec4  ebd90400  load.d r[20:21], 0(r9)
000ec8  ab1a0000  lui r21, 1
000ecc  2b0b0000  lui r22, 0
000ed0  eb5b0600  load.d r[24:25], 0(r12)
000ed4  80310002  core_id r3
000ed8  9f8a0af0  addli r21, r21, -2048
000edc  1f0b0b00  addli r22, r22, 0
000ee0  bb9401fc  bneq r3, zero, -1756
000ee4  5b1effff  j -1808
000ee8  9f0e0fce  addli sp, r30, -6400
000eec  9f8e0e32  addli sp, sp, 6400
000ef0  00a00300  mfence { lm, sm, gm }
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
000f74  00100000  exit
000f78  00100000  exit
000f7c  00100000  exit
000f80  00100000  exit
000f84  00100000  exit
000f88  00100000  exit
000f8c  00100000  exit
000f90  00100000  exit
000f94  00100000  exit
000f98  00100000  exit
000f9c  00100000  exit
000fa0  00100000  exit
000fa4  00100000  exit
000fa8  00100000  exit
000fac  00100000  exit
000fb0  00100000  exit
000fb4  00100000  exit
000fb8  00100000  exit
000fbc  00100000  exit
000fc0  00100000  exit
000fc4  00100000  exit
000fc8  00100000  exit
000fcc  00100000  exit
000fd0  00100000  exit
000fd4  00100000  exit
000fd8  00100000  exit
000fdc  00100000  exit
000fe0  00100000  exit
000fe4  00100000  exit
000fe8  00100000  exit
000fec  00100000  exit
000ff0  00100000  exit
000ff4  00100000  exit
000ff8  00100000  exit
000ffc  00100000  exit
001000  00100000  exit
001004  00100000  exit
001008  00100000  exit
00100c  00100000  exit
001010  00100000  exit
001014  00100000  exit
001018  00100000  exit
00101c  00100000  exit
001020  00100000  exit
001024  00100000  exit
001028  00100000  exit
00102c  00100000  exit
001030  00100000  exit
001034  00100000  exit
001038  00100000  exit
00103c  00100000  exit
001040  00100000  exit
001044  00100000  exit
001048  00100000  exit
00104c  00100000  exit
001050  00100000  exit
001054  00100000  exit
001058  00100000  exit
00105c  00100000  exit
001060  00100000  exit
001064  00100000  exit
001068  00100000  exit
00106c  00100000  exit
001070  00100000  exit
001074  00100000  exit
001078  00100000  exit
00107c  00100000  exit
001080  00100000  exit
001084  00100000  exit
001088  00100000  exit
00108c  00100000  exit
001090  00100000  exit
001094  00100000  exit
001098  00100000  exit
00109c  00100000  exit
0010a0  00100000  exit
0010a4  00100000  exit
0010a8  00100000  exit
0010ac  00100000  exit
0010b0  00100000  exit
0010b4  00100000  exit
0010b8  00100000  exit
0010bc  00100000  exit
0010c0  00100000  exit
0010c4  00100000  exit
0010c8  00100000  exit
0010cc  00100000  exit
0010d0  00100000  exit
0010d4  00100000  exit
0010d8  00100000  exit
0010dc  00100000  exit
0010e0  00100000  exit
0010e4  00100000  exit
0010e8  00100000  exit
0010ec  00100000  exit
0010f0  00100000  exit
0010f4  00100000  exit
0010f8  00100000  exit
0010fc  00100000  exit
001100  00100000  exit
001104  00100000  exit
001108  00100000  exit
00110c  00100000  exit
001110  00100000  exit
001114  00100000  exit
001118  00100000  exit
00111c  00100000  exit
001120  00100000  exit
001124  00100000  exit
001128  00100000  exit
00112c  00100000  exit
001130  00100000  exit
001134  00100000  exit
