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
000078  9f496000  addli r19, zero, 52
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
0000dc  9f8e0eff  addli sp, sp, -128
0000e0  1f8f8e00  addli r30, sp, 64
0000e4  805a0002  load_param_i r21, 0
0000e8  e3495f00  loadli.w r19,  44(r30)
0000ec  e3005f00  loadli.w r1,  40(r30)
0000f0  630a6f00  loadli.w r20,  48(r30)
0000f4  8b901920  mul.s r1, r19, r1
0000f8  0b9b4021  mul.s r22, r1, r20
0000fc  cb715b01  ble.s r22, r21, 124
000100  ab10833a  lui r1, 239665
000104  80db0002  load_param_i r23, 1
000108  1f0c1000  addli r24, zero, 8
00010c  9f0c0010  addli r25, zero, 2048
000110  1b9df026  ori r26, r1, 623
000114  5b090000  j 72
000118  0b128141  min.s r4, r2, r24
00011c  6b530f01  load.d r[7:8], 16(r30)
000120  6b548f01  load.d r[9:10], 24(r30)
000124  e7810e00  storeli.w zero, 24(sp)
000128  67819e01  storeli.w r25, 16(sp)
00012c  67c1ae01  storeli.w r26, 20(sp)
000130  e7c01e00  storeli.w r1, 12(sp)
000134  0b123150  fmac.s r4, r2, r3
000138  6b510f02  load.d r[3:4], 32(r30)
00013c  e7804e00  storeli.w r4, 8(sp)
000140  6b528f00  load.d r[5:6], 8(r30)
000144  73b02e00  store.d r[3:4], 0(sp)
000148  6b510f00  load.d r[3:4], 0(r30)
00014c  d7300000  jal 388
000150  8b9a7a11  add.s r21, r21, r23
000154  3fa06a01  blt.s r21, r22, 8
000158  5b040000  j 32
00015c  8b904a31  div.s r1, r21, r20
000160  9f215001  addli r3, zero, 170
000164  0b913031  div.s r2, r1, r19
000168  9f305001  addli r1, zero, 171
00016c  bf3e81ff  blt.s r2, r24, -84
000170  9f205001  addli r1, zero, 170
000174  dbf4ffff  j -92
000178  9f8e8e00  addli sp, sp, 64
00017c  00a00300  mfence { lm, sm, gm }
000180  00100000  exit
000184  9f8e8ede  addli sp, sp, -4288
000188  67c9ee21  storeli.w r30, 4244(sp)
00018c  1f8f8e21  addli r30, sp, 4288
000190  e7cb3e21  storeli.w r19, 4284(sp)
000194  e78b4e21  storeli.w r20, 4280(sp)
000198  67cb5e21  storeli.w r21, 4276(sp)
00019c  678b6e21  storeli.w r22, 4272(sp)
0001a0  e7ca7e21  storeli.w r23, 4268(sp)
0001a4  e78a8e21  storeli.w r24, 4264(sp)
0001a8  67ca9e21  storeli.w r25, 4260(sp)
0001ac  678aae21  storeli.w r26, 4256(sp)
0001b0  e7c9be21  storeli.w r27, 4252(sp)
0001b4  e789ce21  storeli.w r28, 4248(sp)
0001b8  6789fe21  storeli.w r31, 4240(sp)
0001bc  63052f00  loadli.w r10,  16(r30)
0001c0  e3451f00  loadli.w r11,  12(r30)
0001c4  e3003f00  loadli.w r1,  24(r30)
0001c8  1f06afde  addli r12, r30, -4272
0001cc  73302600  store.d r[3:4], 0(r12)
0001d0  b7f00000  beq r1, zero, 60
0001d4  00360002  core_id r12
0001d8  9f200000  addli r1, zero, 2
0001dc  b7311602  beq r12, r1, 1132
0001e0  9f100000  addli r1, zero, 1
0001e4  37111602  beq r12, r1, 1092
0001e8  bb710602  bneq r12, zero, 1148
0001ec  e3002f00  loadli.w r1,  16(r30)
0001f0  2b0100f0  lui r2, 983040
0001f4  9bb01000  slli r1, r1, 1
0001f8  97902000  or r1, r1, r2
0001fc  2b010000  lui r2, 0
000200  1f010100  addli r2, r2, 0
000204  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000208  db8b0000  j 1116
00020c  80300002  core_id r1
000210  bb800000  bneq r1, zero, 32
000214  e3002f00  loadli.w r1,  16(r30)
000218  2b0100f0  lui r2, 983040
00021c  9bb01000  slli r1, r1, 1
000220  97902000  or r1, r1, r2
000224  2b310000  lui r2, 3
000228  1f010100  addli r2, r2, 0
00022c  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000230  2bf10000  lui r2, 15
000234  e3401f00  loadli.w r1,  12(r30)
000238  1f120000  addli r4, zero, 1
00023c  00200300  mfence { sm, gm }
000240  1b11f1ff  ori r2, r2, 4095
000244  80210104  csr_set csr3, r2
000248  00d00100  sync_group
00024c  3fa14004  blt.s r1, r4, 2120
000250  e3002f00  loadli.w r1,  16(r30)
000254  1f040006  addli r8, zero, 768
000258  00530102  load_param_i r6, 2
00025c  ab370000  lui r15, 3
000260  9f01000c  addli r3, zero, 1536
000264  9f020000  addli r5, zero, 0
000268  1f090002  addli r18, zero, 256
00026c  9f090001  addli r19, zero, 128
000270  1f0a8000  addli r20, zero, 64
000274  9f0a4000  addli r21, zero, 32
000278  9f0b8fdf  addli r23, r30, -4160
00027c  1f0c2000  addli r24, zero, 16
000280  ab0cffff  lui r25, 1048560
000284  6e224262  vxor.u.mz vr4{mr1}, vr4, vr4
000288  9f870700  addli r15, r15, 0
00028c  e7466fde  storeli.w r6, -4244(r30)
000290  1ff1f005  addli r2, r1, 767
000294  8b138130  div.s r7, r2, r8
000298  00310002  core_id r2
00029c  13016104  setlt.u r2, r2, r6
0002a0  8b983320  mul.s r17, r7, r3
0002a4  e7457fde  storeli.w r7, -4260(r30)
0002a8  e7062fde  storeli.w r2, -4248(r30)
0002ac  1bb11000  slli r2, r1, 1
0002b0  67462fde  storeli.w r2, -4252(r30)
0002b4  33810010  fix2float_u.rn r2, r1
0002b8  93101004  setlt.s r1, zero, r1
0002bc  e7442fde  storeli.w r2, -4276(r30)
0002c0  67061fde  storeli.w r1, -4256(r30)
0002c4  ab700000  lui r1, 7
0002c8  1b9df0ff  ori r26, r1, 4095
0002cc  db020000  j 20
0002d0  e340dfde  loadli.w r1,  -4244(r30)
0002d4  8b921210  add.s r5, r5, r1
0002d8  3fa0b200  blt.s r5, r11, 8
0002dc  5bf70000  j 1976
0002e0  80300002  core_id r1
0002e4  e3011f00  loadli.w r3,  8(r30)
0002e8  8b901210  add.s r1, r5, r1
0002ec  1391b004  setlt.s r2, r1, r11
0002f0  8b903010  add.s r1, r1, r3
0002f4  e301dfde  loadli.w r3,  -4248(r30)
0002f8  8b90a020  mul.s r1, r1, r10
0002fc  33930028  sext_int2long r[7:8], r1
000300  9f00efde  addli r1, r30, -4240
000304  73b06000  store.d r[7:8], 0(r1)
000308  17812100  and r2, r3, r2
00030c  e301cfde  loadli.w r3,  -4256(r30)
000310  17812100  and r2, r3, r2
000314  e7472fde  storeli.w r2, -4228(r30)
000318  3b484100  bneq r2, r4, 528
00031c  9f04afde  addli r9, r30, -4272
000320  17334302  sll.d r[7:8], r[7:8], r4
000324  ab0000f0  lui r1, 983040
000328  1f078fdf  addli r14, r30, -4160
00032c  9f010000  addli r3, zero, 0
000330  1f010000  addli r2, zero, 0
000334  ebd50400  load.d r[12:13], 0(r9)
000338  e344cfde  loadli.w r9,  -4252(r30)
00033c  0ba36510  add.ul r[7:8], r[12:13], r[7:8]
000340  97901400  or r1, r9, r1
000344  ff20e300  l_gm2lm r1, r14, 0(r[7:8])
000348  1f830700  addli r6, r15, 0
00034c  00a00200  mfence { lm, gm }
000350  e344bfde  loadli.w r9,  -4260(r30)
000354  db0d0000  j 108
000358  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
00035c  16101102  vadd.f.mz.rn vr0{mr1}, vr2, vr1
000360  ea7039c0  vsrl.p vr1, r18, vr3
000364  6a7109c0  vsrl.p vr2, r18, vr0
000368  96901102  vadd.f.mz.rn vr1{mr1}, vr3, vr1
00036c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000370  6af119c0  vsrl.p vr2, r19, vr1
000374  eaf109c0  vsrl.p vr3, r19, vr0
000378  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00037c  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000380  6a711ac0  vsrl.p vr2, r20, vr1
000384  ea710ac0  vsrl.p vr3, r20, vr0
000388  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00038c  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000390  6af11ac0  vsrl.p vr2, r21, vr1
000394  eaf10ac0  vsrl.p vr3, r21, vr0
000398  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00039c  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0003a0  fa900040  vextracti.f r1, 0(vr1)
0003a4  8be11110  add.f.rn r3, r3, r1
0003a8  fa130040  vextracti.f r7, 0(vr0)
0003ac  0b617110  add.f.rn r2, r2, r7
0003b0  1f0303f4  addli r6, r6, -1536
0003b4  1f0707f4  addli r14, r14, -1536
0003b8  3f20b200  blt.s r4, r11, 8
0003bc  db2e0000  j 372
0003c0  9f850400  addli r11, r9, 0
0003c4  9ff4f5ff  addli r9, r11, -1
0003c8  8b908420  mul.s r1, r9, r8
0003cc  cb1f15fe  ble.s r10, r1, -28
0003d0  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0003d4  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0003d8  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0003dc  8b101518  sub.s r1, r10, r1
0003e0  bffd40fe  blt.s r1, r4, -132
0003e4  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0003e8  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0003ec  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0003f0  92334002  vadd.s.mz vr7{mr1}, zero, vr4
0003f4  8b968040  min.s r13, r1, r8
0003f8  9f030000  addli r7, zero, 0
0003fc  1f0b0700  addli r22, r14, 0
000400  9f000300  addli r1, r6, 0
000404  8b9d1011  add.s r27, r1, r17
000408  1f060fdf  addli r12, r30, -4224
00040c  0b181b11  add.s r16, r22, r17
000410  1f8e0df4  addli r28, r27, -1536
000414  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
000418  1f868df4  addli r12, r27, -1472
00041c  ca020e02  vloads.mz vr5{mr1}, 0(r28)
000420  4a030602  vloads.mz vr6{mr1}, 0(r12)
000424  1f0e08f4  addli r28, r16, -1536
000428  1f0688f4  addli r12, r16, -1472
00042c  c2030e02  vload.mz vr7{mr1}, 0(r28)
000430  42040602  vload.mz vr8{mr1}, 0(r12)
000434  1f060fdf  addli r12, r30, -4224
000438  e6447280  vmerge_l.hf vr9, vr4, vr7
00043c  e64372a0  vmerge_h.hf vr7, vr4, vr7
000440  66458280  vmerge_l.hf vr10, vr4, vr8
000444  664482a0  vmerge_h.hf vr8, vr4, vr8
000448  e6455280  vmerge_l.hf vr11, vr4, vr5
00044c  e64252a0  vmerge_h.hf vr5, vr4, vr5
000450  66406280  vmerge_l.hf vr0, vr4, vr6
000454  664362a0  vmerge_h.hf vr6, vr4, vr6
000458  96925302  vadd.f.mz.rn vr5{mr1}, vr7, vr5
00045c  c2130602  vload_mask16.mz vr7{mr1}, 0(r12)
000460  9694b402  vadd.f.mz.rn vr9{mr1}, vr9, vr11
000464  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
000468  16136402  vadd.f.mz.rn vr6{mr1}, vr8, vr6
00046c  1f868300  addli r12, r7, 64
000470  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
000474  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
000478  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00047c  96939302  vadd.f.mz.rn vr7{mr1}, vr7, vr9
000480  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
000484  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000488  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00048c  96935302  vadd.f.mz.rn vr7{mr1}, vr7, vr5
000490  4babc6fe  ble.s r13, r12, -312
000494  1f8e0df5  addli r28, r27, -1408
000498  9f8d8df5  addli r27, r27, -1344
00049c  1f0608f5  addli r12, r16, -1408
0004a0  9f830301  addli r7, r7, 128
0004a4  9f800002  addli r1, r1, 256
0004a8  1f0b0b02  addli r22, r22, 256
0004ac  4a000e02  vloads.mz vr0{mr1}, 0(r28)
0004b0  ca820d02  vloads.mz vr5{mr1}, 0(r27)
0004b4  42030602  vload.mz vr6{mr1}, 0(r12)
0004b8  1f0688f5  addli r12, r16, -1344
0004bc  1f080fdf  addli r16, r30, -4224
0004c0  46107802  vstore_mask16.mz vr7{mr1}, 0(r16)
0004c4  c2030602  vload.mz vr7{mr1}, 0(r12)
0004c8  1f060fdf  addli r12, r30, -4224
0004cc  66446280  vmerge_l.hf vr8, vr4, vr6
0004d0  664362a0  vmerge_h.hf vr6, vr4, vr6
0004d4  e6447280  vmerge_l.hf vr9, vr4, vr7
0004d8  e64372a0  vmerge_h.hf vr7, vr4, vr7
0004dc  66450280  vmerge_l.hf vr10, vr4, vr0
0004e0  664002a0  vmerge_h.hf vr0, vr4, vr0
0004e4  e6455280  vmerge_l.hf vr11, vr4, vr5
0004e8  e64252a0  vmerge_h.hf vr5, vr4, vr5
0004ec  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0004f0  42130602  vload_mask16.mz vr6{mr1}, 0(r12)
0004f4  1614a402  vadd.f.mz.rn vr8{mr1}, vr8, vr10
0004f8  9694b402  vadd.f.mz.rn vr9{mr1}, vr9, vr11
0004fc  96925302  vadd.f.mz.rn vr5{mr1}, vr7, vr5
000500  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000504  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
000508  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
00050c  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
000510  96915102  vadd.f.mz.rn vr3{mr1}, vr3, vr5
000514  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000518  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00051c  96130302  vadd.f.mz.rn vr7{mr1}, vr6, vr0
000520  bf9bd3fe  blt.s r7, r13, -284
000524  dbc6ffff  j -460
000528  1f010000  addli r2, zero, 0
00052c  9f010000  addli r3, zero, 0
000530  e3451f00  loadli.w r11,  12(r30)
000534  e340ffde  loadli.w r1,  -4228(r30)
000538  37e600fe  beq r1, zero, -616
00053c  63439fde  loadli.w r6,  -4276(r30)
000540  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000544  12344002  vadd.s.mz vr8{mr1}, zero, vr4
000548  9f000000  addli r1, zero, 0
00054c  8f816118  div.f.rn r3, r3, r6
000550  0f016118  div.f.rn r2, r2, r6
000554  0be33120  mul.f.rn r6, r3, r3
000558  6a911122  vor.f.mz vr2{mr1}, r3, vr1
00055c  0b616118  sub.f.rn r2, r2, r6
000560  63432f00  loadli.w r6,  20(r30)
000564  0b616110  add.f.rn r2, r2, r6
000568  2b03803f  lui r6, 260096
00056c  0f010108  sqrt.f.rn r2, r2
000570  0f012318  div.f.rn r2, r6, r2
000574  ea111122  vor.f.mz vr3{mr1}, r2, vr1
000578  1f010000  addli r2, zero, 0
00057c  8b91f010  add.s r3, r1, r15
000580  ea221c22  vor.u.mz vr5{mr1}, r24, vr1
000584  1f014100  addli r2, r2, 32
000588  4a800102  vloads.mz vr0{mr1}, 0(r3)
00058c  8b911b10  add.s r3, r23, r1
000590  9f808000  addli r1, r1, 64
000594  42820102  vload.mz vr4{mr1}, 0(r3)
000598  6eb342a2  vsll.s.mz vr6{mr1}, vr5, vr4
00059c  6ab24c02  vand.s.mz vr4{mr1}, r25, vr4
0005a0  eeb302a2  vsll.s.mz vr7{mr1}, vr5, vr0
0005a4  6ab00c02  vand.s.mz vr0{mr1}, r25, vr0
0005a8  16100202  vadd.f.mz.rn vr0{mr1}, vr4, vr0
0005ac  16137302  vadd.f.mz.rn vr6{mr1}, vr6, vr7
0005b0  1e122302  vsub.f.mz.rn vr4{mr1}, vr6, vr2
0005b4  1e102002  vsub.f.mz.rn vr0{mr1}, vr0, vr2
0005b8  0e924102  vmul.f.mz.rn vr4{mr1}, vr3, vr4
0005bc  0e900102  vmul.f.mz.rn vr0{mr1}, vr3, vr0
0005c0  6eb342c2  vsrl.s.mz vr6{mr1}, vr5, vr4
0005c4  eeb302c2  vsrl.s.mz vr7{mr1}, vr5, vr0
0005c8  6a336202  vand.s.mz vr6{mr1}, r4, vr6
0005cc  ea337202  vand.s.mz vr7{mr1}, r4, vr7
0005d0  16326202  vadd.s.mz vr4{mr1}, vr4, vr6
0005d4  16307002  vadd.s.mz vr0{mr1}, vr0, vr7
0005d8  12324d02  vadd.s.mz vr4{mr1}, r26, vr4
0005dc  12300d02  vadd.s.mz vr0{mr1}, r26, vr0
0005e0  6eb242c2  vsrl.s.mz vr4{mr1}, vr5, vr4
0005e4  6ab00c02  vand.s.mz vr0{mr1}, r25, vr0
0005e8  6e304022  vor.s.mz vr0{mr1}, vr0, vr4
0005ec  46800102  vstore.mz vr0{mr1}, 0(r3)
0005f0  3f3ea1fe  blt.s r2, r10, -116
0005f4  9f01efde  addli r3, r30, -4240
0005f8  6b530f00  load.d r[7:8], 0(r30)
0005fc  12328002  vadd.s.mz vr4{mr1}, zero, vr8
000600  ebd00100  load.d r[2:3], 0(r3)
000604  ab0100f0  lui r3, 983040
000608  97b04002  sll.d r[2:3], r[2:3], r4
00060c  8b201310  add.ul r[2:3], r[7:8], r[2:3]
000610  6343cfde  loadli.w r6,  -4252(r30)
000614  00a00000  mfence { lm }
000618  97113300  or r3, r6, r3
00061c  ffb17001  s_lm2gm r3, r23, 0(r[2:3])
000620  00a00200  mfence { lm, gm }
000624  db95ffff  j -852
000628  e3002f00  loadli.w r1,  16(r30)
00062c  2b0100f0  lui r2, 983040
000630  9bb01000  slli r1, r1, 1
000634  97902000  or r1, r1, r2
000638  2b110000  lui r2, 1
00063c  1f010100  addli r2, r2, 0
000640  ff002300  l_gm2sm r1, r2, 0(r[7:8])
000644  5b040000  j 32
000648  e3002f00  loadli.w r1,  16(r30)
00064c  2b0100f0  lui r2, 983040
000650  9bb01000  slli r1, r1, 1
000654  97902000  or r1, r1, r2
000658  2b210000  lui r2, 2
00065c  1f010100  addli r2, r2, 0
000660  ff002400  l_gm2sm r1, r2, 0(r[9:10])
000664  2bf10000  lui r2, 15
000668  e3401f00  loadli.w r1,  12(r30)
00066c  1f120000  addli r4, zero, 1
000670  00200300  mfence { sm, gm }
000674  1b11f1ff  ori r2, r2, 4095
000678  80210104  csr_set csr3, r2
00067c  00d00100  sync_group
000680  3fd04002  blt.s r1, r4, 1044
000684  00530102  load_param_i r6, 2
000688  e3002f00  loadli.w r1,  16(r30)
00068c  9f030006  addli r7, zero, 768
000690  9f01000c  addli r3, zero, 1536
000694  ab090000  lui r19, 0
000698  2b270000  lui r14, 2
00069c  9f020000  addli r5, zero, 0
0006a0  1f0b0001  addli r22, zero, 128
0006a4  9f0b8000  addli r23, zero, 64
0006a8  1f0c4000  addli r24, zero, 32
0006ac  1f0d8fdf  addli r26, r30, -4160
0006b0  9f0d2000  addli r27, zero, 16
0006b4  2b0effff  lui r28, 1048560
0006b8  6e224262  vxor.u.mz vr4{mr1}, vr4, vr4
0006bc  e7066fde  storeli.w r6, -4248(r30)
0006c0  13036604  setlt.u r6, r12, r6
0006c4  9f890900  addli r19, r19, 0
0006c8  1f070700  addli r14, r14, 0
0006cc  1ff1f005  addli r2, r1, 767
0006d0  0b117130  div.s r2, r2, r7
0006d4  67466fde  storeli.w r6, -4252(r30)
0006d8  1bb31000  slli r6, r1, 1
0006dc  67066fde  storeli.w r6, -4256(r30)
0006e0  33830010  fix2float_u.rn r6, r1
0006e4  93101004  setlt.s r1, zero, r1
0006e8  e7442fde  storeli.w r2, -4276(r30)
0006ec  0b1a3120  mul.s r20, r2, r3
0006f0  2b710000  lui r2, 7
0006f4  9b16f1ff  ori r13, r2, 4095
0006f8  e7046fde  storeli.w r6, -4280(r30)
0006fc  e7451fde  storeli.w r1, -4260(r30)
000700  ab100000  lui r1, 1
000704  9f800000  addli r1, r1, 0
000708  db030000  j 28
00070c  e342ffde  loadli.w r5,  -4228(r30)
000710  6301dfde  loadli.w r2,  -4248(r30)
000714  00360002  core_id r12
000718  8b922210  add.s r5, r5, r2
00071c  3fa0b200  blt.s r5, r11, 8
000720  db6e0000  j 884
000724  0b91c210  add.s r2, r5, r12
000728  e7475fde  storeli.w r5, -4228(r30)
00072c  e342cfde  loadli.w r5,  -4252(r30)
000730  9311b104  setlt.s r3, r2, r11
000734  97813200  and r3, r5, r3
000738  e3021f00  loadli.w r5,  8(r30)
00073c  0b115110  add.s r2, r2, r5
000740  e342bfde  loadli.w r5,  -4260(r30)
000744  0b11a120  mul.s r2, r2, r10
000748  97813200  and r3, r5, r3
00074c  e7462fde  storeli.w r2, -4244(r30)
000750  67073fde  storeli.w r3, -4240(r30)
000754  3be84100  bneq r3, r4, 536
000758  9f05afde  addli r11, r30, -4272
00075c  33140128  sext_int2long r[9:10], r2
000760  2b0100f0  lui r2, 983040
000764  1f098fdf  addli r18, r30, -4160
000768  9f010000  addli r3, zero, 0
00076c  9f070000  addli r15, zero, 0
000770  ebd20500  load.d r[6:7], 0(r11)
000774  17344402  sll.d r[9:10], r[9:10], r4
000778  0ba48210  add.ul r[9:10], r[6:7], r[9:10]
00077c  e302cfde  loadli.w r5,  -4256(r30)
000780  17912200  or r2, r5, r2
000784  7f212401  l_gm2lm r2, r18, 0(r[9:10])
000788  1f840900  addli r8, r19, 0
00078c  00a00200  mfence { lm, gm }
000790  63439fde  loadli.w r6,  -4276(r30)
000794  5b0e0000  j 112
000798  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
00079c  16101102  vadd.f.mz.rn vr0{mr1}, vr2, vr1
0007a0  1f010002  addli r2, zero, 256
0007a4  ea7031c0  vsrl.p vr1, r2, vr3
0007a8  6a7101c0  vsrl.p vr2, r2, vr0
0007ac  96901102  vadd.f.mz.rn vr1{mr1}, vr3, vr1
0007b0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0007b4  6a711bc0  vsrl.p vr2, r22, vr1
0007b8  ea710bc0  vsrl.p vr3, r22, vr0
0007bc  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0007c0  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0007c4  6af11bc0  vsrl.p vr2, r23, vr1
0007c8  eaf10bc0  vsrl.p vr3, r23, vr0
0007cc  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0007d0  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0007d4  6a711cc0  vsrl.p vr2, r24, vr1
0007d8  ea710cc0  vsrl.p vr3, r24, vr0
0007dc  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0007e0  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0007e4  7a910040  vextracti.f r2, 0(vr1)
0007e8  fa120040  vextracti.f r5, 0(vr0)
0007ec  8be12110  add.f.rn r3, r3, r2
0007f0  8be75710  add.f.rn r15, r15, r5
0007f4  1f0404f4  addli r8, r8, -1536
0007f8  1f0909f4  addli r18, r18, -1536
0007fc  3f20b200  blt.s r4, r11, 8
000800  db2e0000  j 372
000804  9f050300  addli r11, r6, 0
000808  1ff3f5ff  addli r6, r11, -1
00080c  0b117320  mul.s r2, r6, r7
000810  cb1f25fe  ble.s r10, r2, -28
000814  12314002  vadd.s.mz vr2{mr1}, zero, vr4
000818  92304002  vadd.s.mz vr1{mr1}, zero, vr4
00081c  92314002  vadd.s.mz vr3{mr1}, zero, vr4
000820  0b112518  sub.s r2, r10, r2
000824  bf6d41fe  blt.s r2, r4, -136
000828  92304002  vadd.s.mz vr1{mr1}, zero, vr4
00082c  12314002  vadd.s.mz vr2{mr1}, zero, vr4
000830  92314002  vadd.s.mz vr3{mr1}, zero, vr4
000834  92334002  vadd.s.mz vr7{mr1}, zero, vr4
000838  8b187140  min.s r17, r2, r7
00083c  1f080000  addli r16, zero, 0
000840  1f010900  addli r2, r18, 0
000844  9f040400  addli r9, r8, 0
000848  9f020fdf  addli r5, r30, -4224
00084c  0b964411  add.s r12, r9, r20
000850  8b1c4111  add.s r25, r2, r20
000854  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
000858  9f0206f4  addli r5, r12, -1536
00085c  9f0a86f4  addli r21, r12, -1472
000860  ca820202  vloads.mz vr5{mr1}, 0(r5)
000864  4a830a02  vloads.mz vr6{mr1}, 0(r21)
000868  9f820cf4  addli r5, r25, -1536
00086c  c2830202  vload.mz vr7{mr1}, 0(r5)
000870  9f828cf4  addli r5, r25, -1472
000874  42840202  vload.mz vr8{mr1}, 0(r5)
000878  9f020fdf  addli r5, r30, -4224
00087c  e6447280  vmerge_l.hf vr9, vr4, vr7
000880  e64372a0  vmerge_h.hf vr7, vr4, vr7
000884  66458280  vmerge_l.hf vr10, vr4, vr8
000888  664482a0  vmerge_h.hf vr8, vr4, vr8
00088c  e6455280  vmerge_l.hf vr11, vr4, vr5
000890  e64252a0  vmerge_h.hf vr5, vr4, vr5
000894  66406280  vmerge_l.hf vr0, vr4, vr6
000898  664362a0  vmerge_h.hf vr6, vr4, vr6
00089c  96925302  vadd.f.mz.rn vr5{mr1}, vr7, vr5
0008a0  c2930202  vload_mask16.mz vr7{mr1}, 0(r5)
0008a4  9694b402  vadd.f.mz.rn vr9{mr1}, vr9, vr11
0008a8  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
0008ac  16136402  vadd.f.mz.rn vr6{mr1}, vr8, vr6
0008b0  9f028800  addli r5, r16, 64
0008b4  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
0008b8  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0008bc  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0008c0  96939302  vadd.f.mz.rn vr7{mr1}, vr7, vr9
0008c4  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0008c8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0008cc  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0008d0  96935302  vadd.f.mz.rn vr7{mr1}, vr7, vr5
0008d4  4b9b58fe  ble.s r17, r5, -316
0008d8  9f0a06f5  addli r21, r12, -1408
0008dc  1f0686f5  addli r12, r12, -1344
0008e0  9f820cf5  addli r5, r25, -1408
0008e4  1f080801  addli r16, r16, 128
0008e8  9f840402  addli r9, r9, 256
0008ec  1f010102  addli r2, r2, 256
0008f0  4a800a02  vloads.mz vr0{mr1}, 0(r21)
0008f4  ca020602  vloads.mz vr5{mr1}, 0(r12)
0008f8  42830202  vload.mz vr6{mr1}, 0(r5)
0008fc  1f060fdf  addli r12, r30, -4224
000900  9f828cf5  addli r5, r25, -1344
000904  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
000908  c2830202  vload.mz vr7{mr1}, 0(r5)
00090c  9f020fdf  addli r5, r30, -4224
000910  66446280  vmerge_l.hf vr8, vr4, vr6
000914  664362a0  vmerge_h.hf vr6, vr4, vr6
000918  e6447280  vmerge_l.hf vr9, vr4, vr7
00091c  e64372a0  vmerge_h.hf vr7, vr4, vr7
000920  66450280  vmerge_l.hf vr10, vr4, vr0
000924  664002a0  vmerge_h.hf vr0, vr4, vr0
000928  e6455280  vmerge_l.hf vr11, vr4, vr5
00092c  e64252a0  vmerge_h.hf vr5, vr4, vr5
000930  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
000934  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
000938  1614a402  vadd.f.mz.rn vr8{mr1}, vr8, vr10
00093c  9694b402  vadd.f.mz.rn vr9{mr1}, vr9, vr11
000940  96925302  vadd.f.mz.rn vr5{mr1}, vr7, vr5
000944  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000948  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
00094c  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
000950  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
000954  96915102  vadd.f.mz.rn vr3{mr1}, vr3, vr5
000958  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00095c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000960  96130302  vadd.f.mz.rn vr7{mr1}, vr6, vr0
000964  bf1b18ff  blt.s r16, r17, -284
000968  5bc6ffff  j -464
00096c  9f070000  addli r15, zero, 0
000970  9f010000  addli r3, zero, 0
000974  e3451f00  loadli.w r11,  12(r30)
000978  6301efde  loadli.w r2,  -4240(r30)
00097c  374601fe  beq r2, zero, -624
000980  e3029fde  loadli.w r5,  -4280(r30)
000984  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000988  12354002  vadd.s.mz vr10{mr1}, zero, vr4
00098c  1f010000  addli r2, zero, 0
000990  8f815118  div.f.rn r3, r3, r5
000994  8f825718  div.f.rn r5, r15, r5
000998  0be33120  mul.f.rn r6, r3, r3
00099c  6a911122  vor.f.mz vr2{mr1}, r3, vr1
0009a0  9f010000  addli r3, zero, 0
0009a4  8be26218  sub.f.rn r5, r5, r6
0009a8  63432f00  loadli.w r6,  20(r30)
0009ac  8be26210  add.f.rn r5, r5, r6
0009b0  2b03803f  lui r6, 260096
0009b4  8f820208  sqrt.f.rn r5, r5
0009b8  8f025318  div.f.rn r5, r6, r5
0009bc  ea911222  vor.f.mz vr3{mr1}, r5, vr1
0009c0  8b123111  add.s r5, r2, r19
0009c4  0b131110  add.s r6, r2, r1
0009c8  6aa21d22  vor.u.mz vr4{mr1}, r27, vr1
0009cc  9f814100  addli r3, r3, 32
0009d0  4a800202  vloads.mz vr0{mr1}, 0(r5)
0009d4  8b122d10  add.s r5, r26, r2
0009d8  4a030302  vloads.mz vr6{mr1}, 0(r6)
0009dc  0b13e110  add.s r6, r2, r14
0009e0  1f018100  addli r2, r2, 64
0009e4  c2820202  vload.mz vr5{mr1}, 0(r5)
0009e8  ca030302  vloads.mz vr7{mr1}, 0(r6)
0009ec  6e3452a2  vsll.s.mz vr8{mr1}, vr4, vr5
0009f0  ea325e02  vand.s.mz vr5{mr1}, r28, vr5
0009f4  ee3402a2  vsll.s.mz vr9{mr1}, vr4, vr0
0009f8  6a300e02  vand.s.mz vr0{mr1}, r28, vr0
0009fc  16149402  vadd.f.mz.rn vr8{mr1}, vr8, vr9
000a00  16900202  vadd.f.mz.rn vr0{mr1}, vr5, vr0
000a04  ee3262a2  vsll.s.mz vr5{mr1}, vr4, vr6
000a08  ee3472a2  vsll.s.mz vr9{mr1}, vr4, vr7
000a0c  6a336e02  vand.s.mz vr6{mr1}, r28, vr6
000a10  ea337e02  vand.s.mz vr7{mr1}, r28, vr7
000a14  1e142402  vsub.f.mz.rn vr8{mr1}, vr8, vr2
000a18  1e102002  vsub.f.mz.rn vr0{mr1}, vr0, vr2
000a1c  0e948102  vmul.f.mz.rn vr8{mr1}, vr3, vr8
000a20  0e900102  vmul.f.mz.rn vr0{mr1}, vr3, vr0
000a24  a6145402  vmac.f.mz.rn vr9{mr1}, vr8, vr5
000a28  a6136002  vmac.f.mz.rn vr7{mr1}, vr0, vr6
000a2c  6e3092c2  vsrl.s.mz vr0{mr1}, vr4, vr9
000a30  ee3272c2  vsrl.s.mz vr5{mr1}, vr4, vr7
000a34  6a300202  vand.s.mz vr0{mr1}, r4, vr0
000a38  ea325202  vand.s.mz vr5{mr1}, r4, vr5
000a3c  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
000a40  96b25302  vadd.s.mz vr5{mr1}, vr7, vr5
000a44  12b00602  vadd.s.mz vr0{mr1}, r13, vr0
000a48  92b25602  vadd.s.mz vr5{mr1}, r13, vr5
000a4c  6e3002c2  vsrl.s.mz vr0{mr1}, vr4, vr0
000a50  6a325e02  vand.s.mz vr4{mr1}, r28, vr5
000a54  6e300222  vor.s.mz vr0{mr1}, vr4, vr0
000a58  46800202  vstore.mz vr0{mr1}, 0(r5)
000a5c  bf9da1fe  blt.s r3, r10, -156
000a60  6341dfde  loadli.w r2,  -4244(r30)
000a64  6b540f00  load.d r[9:10], 0(r30)
000a68  6303cfde  loadli.w r6,  -4256(r30)
000a6c  ab0200f0  lui r5, 983040
000a70  00a00000  mfence { lm }
000a74  1232a002  vadd.s.mz vr4{mr1}, zero, vr10
000a78  33110128  sext_int2long r[3:4], r2
000a7c  97125300  or r5, r6, r5
000a80  17314102  sll.d r[3:4], r[3:4], r4
000a84  0b212410  add.ul r[3:4], r[9:10], r[3:4]
000a88  ff32a101  s_lm2gm r5, r26, 0(r[3:4])
000a8c  00a00200  mfence { lm, gm }
000a90  db8fffff  j -900
000a94  9f0e8fde  addli sp, r30, -4288
000a98  e38f2e21  loadli.w r31,  4240(sp)
000a9c  63cf2e21  loadli.w r30,  4244(sp)
000aa0  638e3e21  loadli.w r28,  4248(sp)
000aa4  e3cd3e21  loadli.w r27,  4252(sp)
000aa8  638d4e21  loadli.w r26,  4256(sp)
000aac  e3cc4e21  loadli.w r25,  4260(sp)
000ab0  638c5e21  loadli.w r24,  4264(sp)
000ab4  e3cb5e21  loadli.w r23,  4268(sp)
000ab8  638b6e21  loadli.w r22,  4272(sp)
000abc  e3ca6e21  loadli.w r21,  4276(sp)
000ac0  638a7e21  loadli.w r20,  4280(sp)
000ac4  e3c97e21  loadli.w r19,  4284(sp)
000ac8  9f8e8e21  addli sp, sp, 4288
000acc  5f800f00  jr r31, 0
000ad0  00100000  exit
000ad4  00100000  exit
000ad8  00100000  exit
000adc  00100000  exit
000ae0  00100000  exit
000ae4  00100000  exit
000ae8  00100000  exit
000aec  00100000  exit
000af0  00100000  exit
000af4  00100000  exit
000af8  00100000  exit
000afc  00100000  exit
000b00  00100000  exit
000b04  00100000  exit
000b08  00100000  exit
000b0c  00100000  exit
000b10  00100000  exit
000b14  00100000  exit
000b18  00100000  exit
000b1c  00100000  exit
000b20  00100000  exit
000b24  00100000  exit
000b28  00100000  exit
000b2c  00100000  exit
000b30  00100000  exit
000b34  00100000  exit
000b38  00100000  exit
000b3c  00100000  exit
000b40  00100000  exit
000b44  00100000  exit
000b48  00100000  exit
000b4c  00100000  exit
000b50  00100000  exit
000b54  00100000  exit
000b58  00100000  exit
000b5c  00100000  exit
000b60  00100000  exit
000b64  00100000  exit
000b68  00100000  exit
000b6c  00100000  exit
000b70  00100000  exit
000b74  00100000  exit
000b78  00100000  exit
000b7c  00100000  exit
000b80  00100000  exit
000b84  00100000  exit
000b88  00100000  exit
000b8c  00100000  exit
000b90  00100000  exit
000b94  00100000  exit
000b98  00100000  exit
000b9c  00100000  exit
000ba0  00100000  exit
000ba4  00100000  exit
000ba8  00100000  exit
000bac  00100000  exit
000bb0  00100000  exit
000bb4  00100000  exit
000bb8  00100000  exit
000bbc  00100000  exit
000bc0  00100000  exit
000bc4  00100000  exit
000bc8  00100000  exit
000bcc  00100000  exit
000bd0  00100000  exit
000bd4  00100000  exit
000bd8  00100000  exit
000bdc  00100000  exit
000be0  00100000  exit
000be4  00100000  exit
000be8  00100000  exit
000bec  00100000  exit
000bf0  00100000  exit
000bf4  00100000  exit
000bf8  00100000  exit
000bfc  00100000  exit
000c00  00100000  exit
000c04  00100000  exit
000c08  00100000  exit
000c0c  00100000  exit
000c10  00100000  exit
000c14  00100000  exit
000c18  00100000  exit
000c1c  00100000  exit
000c20  00100000  exit
000c24  00100000  exit
000c28  00100000  exit
000c2c  00100000  exit
000c30  00100000  exit
000c34  00100000  exit
000c38  00100000  exit
000c3c  00100000  exit
000c40  00100000  exit
000c44  00100000  exit
000c48  00100000  exit
000c4c  00100000  exit
000c50  00100000  exit
000c54  00100000  exit
000c58  00100000  exit
000c5c  00100000  exit
000c60  00100000  exit
000c64  00100000  exit
000c68  00100000  exit
000c6c  00100000  exit
000c70  00100000  exit
000c74  00100000  exit
000c78  00100000  exit
000c7c  00100000  exit
000c80  00100000  exit
000c84  00100000  exit
000c88  00100000  exit
000c8c  00100000  exit
000c90  00100000  exit
000c94  00100000  exit
000c98  00100000  exit
000c9c  00100000  exit
000ca0  00100000  exit
000ca4  00100000  exit
000ca8  00100000  exit
000cac  00100000  exit
000cb0  00100000  exit
000cb4  00100000  exit
000cb8  00100000  exit
000cbc  00100000  exit
000cc0  00100000  exit
000cc4  00100000  exit
000cc8  00100000  exit
000ccc  00100000  exit
000cd0  00100000  exit
000cd4  00100000  exit
000cd8  00100000  exit
000cdc  00100000  exit
000ce0  00100000  exit
000ce4  00100000  exit
000ce8  00100000  exit
000cec  00100000  exit
000cf0  00100000  exit
000cf4  00100000  exit
000cf8  00100000  exit
000cfc  00100000  exit
000d00  00100000  exit
000d04  00100000  exit
000d08  00100000  exit
000d0c  00100000  exit
