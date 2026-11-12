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
0000dc  9f8e0ecf  addli sp, sp, -6272
0000e0  80300002  core_id r1
0000e4  00d30002  load_param_i r6, 1
0000e8  00510002  load_param_i r2, 0
0000ec  1f8f8e30  addli r30, sp, 6208
0000f0  0b111350  fmac.s r2, r6, r1
0000f4  6b540f01  load.d r[9:10], 16(r30)
0000f8  9b319100  slli r3, r2, 9
0000fc  3386c12e  zext_int2long r[12:13], r3
000100  9331c406  setle.sl r3, r[9:10], r[13:14]
000104  3bff0100  bneq r3, zero, 988
000108  9f030004  addli r7, zero, 512
00010c  eb508f00  load.d r[2:3], 8(r30)
000110  9f07afcf  addli r15, r30, -6192
000114  0b35c418  sub.sl r[11:12], r[9:10], r[13:14]
000118  9f0ccfcf  addli r25, r30, -6176
00011c  1f170000  addli r14, zero, 1
000120  9f020000  addli r5, zero, 0
000124  1f2b1000  addli r22, zero, 10
000128  9f7b0000  addli r23, zero, 7
00012c  1f0c0fd0  addli r24, r30, -6144
000130  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000134  b381332e  zext_int2long r[3:4], r7
000138  80530102  load_param_i r7, 2
00013c  1739e602  sll.d r[19:20], r[13:14], r14
000140  73b01700  store.d r[2:3], 0(r15)
000144  eb500f00  load.d r[2:3], 0(r30)
000148  0b383540  min.sl r[17:18], r[11:12], r[4:5]
00014c  73b03c00  store.d r[4:5], 0(r25)
000150  9f018fcf  addli r3, r30, -6208
000154  0b936320  mul.s r6, r7, r6
000158  1f02bfcf  addli r4, r30, -6184
00015c  73b01100  store.d r[2:3], 0(r3)
000160  1b3a1800  slli r20, r16, 1
000164  ab0a00f0  lui r21, 983040
000168  0ba92011  add.ul r[19:20], r[2:3], r[19:20]
00016c  9f000fd0  addli r1, r30, -6144
000170  1b339300  slli r6, r6, 9
000174  171a5a01  or r20, r20, r21
000178  7f2a1900  l_gm2lm r20, r1, 0(r[19:20])
00017c  b300132c  zext_int2long r[1:2], r6
000180  1f3a0000  addli r20, zero, 3
000184  1f039fcf  addli r6, r30, -6200
000188  00a00200  mfence { lm, gm }
00018c  73308200  store.d r[9:10], 0(r4)
000190  73301300  store.d r[2:3], 0(r6)
000194  5b0b0000  j 88
000198  9f900200  addli r1, r5, 1
00019c  9f03afcf  addli r7, r30, -6192
0001a0  00a00000  mfence { lm }
0001a4  1731e602  sll.d r[3:4], r[13:14], r14
0001a8  2b0200f0  lui r4, 983040
0001ac  13338904  setlt.sl r6, r[19:20], r[9:10]
0001b0  8b924039  mod.s r5, r1, r20
0001b4  6bd60300  load.d r[13:14], 0(r7)
0001b8  9b301800  slli r1, r16, 1
0001bc  1f880c00  addli r16, r25, 0
0001c0  97904000  or r1, r1, r4
0001c4  0b212610  add.ul r[3:4], r[13:14], r[3:4]
0001c8  27060900  addli.d r[13:14], r[19:20], 0
0001cc  ff308101  s_lm2gm r1, r24, 0(r[3:4])
0001d0  9f000fd0  addli r1, r30, -6144
0001d4  9f019fcf  addli r3, r30, -6200
0001d8  1bb2b200  slli r4, r5, 11
0001dc  0b9c4010  add.s r24, r1, r4
0001e0  ebd00100  load.d r[2:3], 0(r3)
0001e4  0b351518  sub.sl r[11:12], r[11:12], r[2:3]
0001e8  b76b0300  beq r6, zero, 760
0001ec  9f01cfcf  addli r3, r30, -6176
0001f0  0b291610  add.ul r[19:20], r[13:14], r[2:3]
0001f4  ebd00100  load.d r[2:3], 0(r3)
0001f8  0b332419  sub.sl r[7:8], r[9:10], r[19:20]
0001fc  8b3c1340  min.sl r[26:27], r[7:8], r[2:3]
000200  bfe0ec00  blt.s r25, r14, 56
000204  1f930200  addli r6, r5, 1
000208  1f048fcf  addli r8, r30, -6208
00020c  ab0a00f0  lui r21, 983040
000210  9731e902  sll.d r[4:5], r[19:20], r14
000214  9bb31c00  slli r7, r25, 1
000218  0b134339  mod.s r6, r6, r20
00021c  eb500400  load.d r[2:3], 0(r8)
000220  97935301  or r7, r7, r21
000224  8ba13010  add.ul r[4:5], r[2:3], r[4:5]
000228  9f000fd0  addli r1, r30, -6144
00022c  1b33b300  slli r6, r6, 11
000230  0b936010  add.s r6, r1, r6
000234  ffa36100  l_gm2lm r7, r6, 0(r[4:5])
000238  9f00dfcf  addli r1, r30, -6168
00023c  1f01efcf  addli r2, r30, -6160
000240  1f02ffcf  addli r4, r30, -6152
000244  73b09001  store.d r[26:27], 0(r1)
000248  73302101  store.d r[19:20], 0(r2)
00024c  7330c200  store.d r[13:14], 0(r4)
000250  abf1ffff  lui r3, 1048575
000254  9b9121fe  ori r3, r3, 4066
000258  3f613800  blt.s r16, r3, 88
00025c  9f71f8ff  addli r3, r16, -1
000260  9f004000  addli r1, zero, 32
000264  2bf2ffff  lui r4, 1048575
000268  8b911130  div.s r3, r3, r1
00026c  1b12f2ff  ori r4, r4, 4095
000270  9bb37100  slli r7, r3, 7
000274  17a24100  xor r4, r3, r4
000278  9bb16100  slli r3, r3, 6
00027c  1b335200  slli r6, r4, 5
000280  8b137c10  add.s r7, r24, r7
000284  8b1a3c10  add.s r21, r24, r3
000288  c2800a02  vload.mz vr1{mr1}, 0(r21)
00028c  66411080  vmerge_l.hf vr2, vr0, vr1
000290  9f818300  addli r3, r7, 64
000294  46902302  vstore_mask16.mz vr2{mr1}, 0(r7)
000298  1f034300  addli r6, r6, 32
00029c  9f8303ff  addli r7, r7, -128
0002a0  9f8a8aff  addli r21, r21, -64
0002a4  e64110a0  vmerge_h.hf vr3, vr0, vr1
0002a8  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
0002ac  3b7f03fe  bneq r6, zero, -36
0002b0  00a00000  mfence { lm }
0002b4  abf1ffff  lui r3, 1048575
0002b8  9b9181ff  ori r3, r3, 4088
0002bc  970a3800  and r21, r16, r3
0002c0  3ff3ea00  blt.s r21, r14, 220
0002c4  1f032c00  addli r6, r24, 16
0002c8  9f030000  addli r7, zero, 0
0002cc  e301e3ff  loadli.w r3,  -16(r6)
0002d0  6342e3ff  loadli.w r4,  -12(r6)
0002d4  e307f3ff  loadli.w r15,  -8(r6)
0002d8  6346f3ff  loadli.w r12,  -4(r6)
0002dc  63091300  loadli.w r18,  8(r6)
0002e0  e3491300  loadli.w r19,  12(r6)
0002e4  e3060300  loadli.w r13,  0(r6)
0002e8  63410300  loadli.w r2,  4(r6)
0002ec  ab0d803f  lui r27, 260096
0002f0  9f831300  addli r7, r7, 8
0002f4  8be00158  neg.f r1, r3
0002f8  0b670258  neg.f r14, r4
0002fc  0bee0758  neg.f r28, r15
000300  0b640658  neg.f r8, r12
000304  8b6c0958  neg.f r25, r18
000308  0bed0958  neg.f r26, r19
00030c  8f801000  exp.f.rn r1, r1
000310  0f07e700  exp.f.rn r14, r14
000314  8f049e00  exp.f.rn r9, r28
000318  0b6e0158  neg.f r28, r2
00031c  8f8c9c01  exp.f.rn r25, r25
000320  0f0dad01  exp.f.rn r26, r26
000324  0f0ece01  exp.f.rn r28, r28
000328  8be0b011  add.f.rn r1, r1, r27
00032c  0b67b711  add.f.rn r14, r14, r27
000330  8be4b411  add.f.rn r9, r9, r27
000334  8becbc11  add.f.rn r25, r25, r27
000338  0b6dbd11  add.f.rn r26, r26, r27
00033c  8f801118  div.f.rn r1, r3, r1
000340  8f013400  exp.f.rn r3, r8
000344  0be40658  neg.f r8, r13
000348  0f02e218  div.f.rn r4, r4, r14
00034c  0b67be11  add.f.rn r14, r28, r27
000350  8f849718  div.f.rn r9, r15, r9
000354  0f048400  exp.f.rn r8, r8
000358  0f01e118  div.f.rn r2, r2, r14
00035c  8be1b111  add.f.rn r3, r3, r27
000360  670f13fe  storeli.w r1, -16(r6)
000364  674f43fe  storeli.w r4, -12(r6)
000368  e70f93fe  storeli.w r9, -8(r6)
00036c  0b64b411  add.f.rn r8, r8, r27
000370  8f013618  div.f.rn r3, r12, r3
000374  0f069919  div.f.rn r12, r18, r25
000378  67402300  storeli.w r2, 4(r6)
00037c  0f848618  div.f.rn r8, r13, r8
000380  8f86a919  div.f.rn r13, r19, r26
000384  e74f33fe  storeli.w r3, -4(r6)
000388  e700c300  storeli.w r12, 8(r6)
00038c  67008300  storeli.w r8, 0(r6)
000390  e740d300  storeli.w r13, 12(r6)
000394  1f034300  addli r6, r6, 32
000398  bfdc53ff  blt.s r7, r21, -204
00039c  4b415801  ble.s r16, r21, 80
0003a0  1f04cfcf  addli r8, r30, -6176
0003a4  eb500400  load.d r[2:3], 0(r8)
0003a8  2bf3ffff  lui r6, 1048575
0003ac  1b1303fe  ori r6, r6, 4064
0003b0  8b311540  min.sl r[4:5], r[11:12], r[2:3]
0003b4  9bb32100  slli r7, r3, 2
0003b8  97836300  and r7, r7, r6
0003bc  1b837100  andi r6, r3, 7
0003c0  8b137c10  add.s r7, r24, r7
0003c4  e3800300  loadli.w r1,  0(r7)
0003c8  ab01803f  lui r3, 260096
0003cc  1f73f3ff  addli r6, r6, -1
0003d0  0be10058  neg.f r2, r1
0003d4  0f012100  exp.f.rn r2, r2
0003d8  0b613110  add.f.rn r2, r2, r3
0003dc  8f802018  div.f.rn r1, r1, r2
0003e0  67801300  storeli.w r1, 0(r7)
0003e4  9fc30300  addli r7, r7, 4
0003e8  3b7f03fe  bneq r6, zero, -36
0003ec  9f00bfcf  addli r1, r30, -6184
0003f0  1f01ffcf  addli r2, r30, -6152
0003f4  9f01efcf  addli r3, r30, -6160
0003f8  1f02dfcf  addli r4, r30, -6168
0003fc  00a00000  mfence { lm }
000400  1f170000  addli r14, zero, 1
000404  6bd40000  load.d r[9:10], 0(r1)
000408  6b560100  load.d r[13:14], 0(r2)
00040c  6bd90100  load.d r[19:20], 0(r3)
000410  eb5c0200  load.d r[26:27], 0(r4)
000414  3f16e8fe  blt.s r16, r14, -636
000418  1f030000  addli r6, zero, 0
00041c  9f030c00  addli r7, r24, 0
000420  9f0a0c00  addli r21, r24, 0
000424  9f808300  addli r1, r7, 64
000428  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
00042c  1f034300  addli r6, r6, 32
000430  9f830301  addli r7, r7, 128
000434  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000438  ab000100  lui r1, 16
00043c  eaa11002  vand.u.mz vr3{mr1}, r1, vr1
000440  6aa22002  vand.u.mz vr4{mr1}, r1, vr2
000444  ab800000  lui r1, 8
000448  72213002  veq.u.mz mr2{mr1}, zero, vr3
00044c  fe010140  vmnot mr3, mr2
000450  72204002  veq.u.mz mr0{mr1}, zero, vr4
000454  92a01016  vadd.u.mh vr1{mr3}, r1, vr1
000458  fe010040  vmnot mr3, mr0
00045c  12a12016  vadd.u.mh vr2{mr3}, r1, vr2
000460  ab700000  lui r1, 7
000464  9b90f0ff  ori r1, r1, 4095
000468  92a01014  vadd.u.mh vr1{mr2}, r1, vr1
00046c  12a12010  vadd.u.mh vr2{mr0}, r1, vr2
000470  ea311bc2  vsrl.s.mz vr3{mr1}, r22, vr1
000474  6a322bc2  vsrl.s.mz vr4{mr1}, r22, vr2
000478  ab00803f  lui r1, 260096
00047c  2bf180ff  lui r2, 1046543
000480  abf17f00  lui r3, 2047
000484  9b91f1ff  ori r3, r3, 4095
000488  eaa13022  vor.u.mz vr3{mr1}, r1, vr3
00048c  6aa24022  vor.u.mz vr4{mr1}, r1, vr4
000490  1b1101f8  ori r2, r2, 3968
000494  eaa01102  vand.u.mz vr1{mr1}, r3, vr1
000498  6aa12102  vand.u.mz vr2{mr1}, r3, vr2
00049c  86910120  vfloat2fp16_l.rz vr3, vr3
0004a0  eaa01022  vor.u.mz vr1{mr1}, r1, vr1
0004a4  6aa12022  vor.u.mz vr2{mr1}, r1, vr2
0004a8  ab007f00  lui r1, 2032
0004ac  86510220  vfloat2fp16_h.rz vr3, vr4
0004b0  9b90f007  ori r1, r1, 127
0004b4  86900020  vfloat2fp16_l.rz vr1, vr1
0004b8  eaa13ba2  vsll.u.mz vr3{mr1}, r23, vr3
0004bc  86500120  vfloat2fp16_h.rz vr1, vr2
0004c0  6a213102  vand.u.mz vr2{mr1}, r2, vr3
0004c4  ea201ac2  vsrl.u.mz vr1{mr1}, r20, vr1
0004c8  eaa01002  vand.u.mz vr1{mr1}, r1, vr1
0004cc  eea02022  vor.u.mz vr1{mr1}, vr1, vr2
0004d0  46801a02  vstore.mz vr1{mr1}, 0(r21)
0004d4  9f8a8a00  addli r21, r21, 64
0004d8  3f3d03ff  blt.s r6, r16, -180
0004dc  db97ffff  j -836
0004e0  00a00300  mfence { lm, sm, gm }
0004e4  9f0e8fcf  addli sp, r30, -6208
0004e8  9f8e8e30  addli sp, sp, 6208
0004ec  00a00300  mfence { lm, sm, gm }
0004f0  00100000  exit
0004f4  00100000  exit
0004f8  00100000  exit
0004fc  00100000  exit
000500  00100000  exit
000504  00100000  exit
000508  00100000  exit
00050c  00100000  exit
000510  00100000  exit
000514  00100000  exit
000518  00100000  exit
00051c  00100000  exit
000520  00100000  exit
000524  00100000  exit
000528  00100000  exit
00052c  00100000  exit
000530  00100000  exit
000534  00100000  exit
000538  00100000  exit
00053c  00100000  exit
000540  00100000  exit
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
000734  00000000  nop
