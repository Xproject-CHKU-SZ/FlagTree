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
000078  9f494000  addli r19, zero, 36
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
0000e8  e3493f00  loadli.w r19,  28(r30)
0000ec  e3003f00  loadli.w r1,  24(r30)
0000f0  630a4f00  loadli.w r20,  32(r30)
0000f4  8b901920  mul.s r1, r19, r1
0000f8  0b9b4021  mul.s r22, r1, r20
0000fc  4b215b01  ble.s r22, r21, 72
000100  80db0002  load_param_i r23, 1
000104  1f0c6001  addli r24, zero, 176
000108  9f0c0010  addli r25, zero, 2048
00010c  1f0d0004  addli r26, zero, 512
000110  8b904a31  div.s r1, r21, r20
000114  6b510f00  load.d r[3:4], 0(r30)
000118  6b528f00  load.d r[5:6], 8(r30)
00011c  6b530f01  load.d r[7:8], 16(r30)
000120  67c0ae01  storeli.w r26, 4(sp)
000124  67809e01  storeli.w r25, 0(sp)
000128  8b903031  div.s r1, r1, r19
00012c  0b948021  mul.s r8, r1, r24
000130  8b908c18  sub.s r1, r25, r8
000134  8b948041  min.s r9, r1, r24
000138  572a0000  jal 336
00013c  8b9a7a11  add.s r21, r21, r23
000140  3fcf6aff  blt.s r21, r22, -48
000144  9f8e8e00  addli sp, sp, 64
000148  00a00300  mfence { lm, sm, gm }
00014c  00100000  exit
000150  9f8e8edb  addli sp, sp, -4672
000154  67c1ee25  storeli.w r30, 4628(sp)
000158  1f8f8e24  addli r30, sp, 4672
00015c  e7c33e25  storeli.w r19, 4668(sp)
000160  e7834e25  storeli.w r20, 4664(sp)
000164  67c35e25  storeli.w r21, 4660(sp)
000168  67836e25  storeli.w r22, 4656(sp)
00016c  e7c27e25  storeli.w r23, 4652(sp)
000170  e7828e25  storeli.w r24, 4648(sp)
000174  67c29e25  storeli.w r25, 4644(sp)
000178  6782ae25  storeli.w r26, 4640(sp)
00017c  e7c1be25  storeli.w r27, 4636(sp)
000180  e781ce25  storeli.w r28, 4632(sp)
000184  6781fe25  storeli.w r31, 4624(sp)
000188  9f00ffdd  addli r1, r30, -4360
00018c  e7068fde  storeli.w r8, -4248(r30)
000190  73b06000  store.d r[7:8], 0(r1)
000194  9f00efdd  addli r1, r30, -4368
000198  73b02000  store.d r[3:4], 0(r1)
00019c  2b010000  lui r2, 0
0001a0  80300002  core_id r1
0001a4  1f010100  addli r2, r2, 0
0001a8  3be00000  bneq r1, zero, 24
0001ac  e3010f00  loadli.w r3,  0(r30)
0001b0  2b0300f0  lui r6, 983040
0001b4  9bb11100  slli r3, r3, 1
0001b8  97916100  or r3, r3, r6
0001bc  ff012200  l_gm2sm r3, r2, 0(r[5:6])
0001c0  abf10000  lui r3, 15
0001c4  9f120000  addli r5, zero, 1
0001c8  00200300  mfence { sm, gm }
0001cc  9b91f1ff  ori r3, r3, 4095
0001d0  e7463fde  storeli.w r3, -4244(r30)
0001d4  80a10104  csr_set csr3, r3
0001d8  00d00100  sync_group
0001dc  bfa45402  blt.s r9, r5, 1320
0001e0  e3010f00  loadli.w r3,  0(r30)
0001e4  1f020008  addli r4, zero, 1024
0001e8  1f030fdf  addli r6, r30, -4224
0001ec  2bf6ffff  lui r12, 1048575
0001f0  1ba41000  xori r8, r1, 1
0001f4  2b150000  lui r10, 1
0001f8  ab130000  lui r7, 1
0001fc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000200  9f0a0010  addli r21, zero, 2048
000204  2b0cffff  lui r24, 1048560
000208  2b0d807f  lui r26, 522240
00020c  ab0dc07f  lui r27, 523264
000210  1f0ec007  addli r28, zero, 992
000214  1f0ae007  addli r20, zero, 1008
000218  1f090fff  addli r18, r30, -128
00021c  9f0b8000  addli r23, zero, 64
000220  67469fde  storeli.w r9, -4252(r30)
000224  1f030310  addli r6, r6, 2048
000228  1f050502  addli r10, r10, 256
00022c  9f830300  addli r7, r7, 0
000230  1b342400  slli r8, r8, 2
000234  0b974130  div.s r14, r3, r4
000238  1bb22000  slli r4, r1, 2
00023c  e74e6fdc  storeli.w r6, -4372(r30)
000240  1b1306c0  ori r6, r12, 3072
000244  8b167210  add.s r13, r4, r7
000248  178b6100  and r22, r3, r6
00024c  0b137410  add.s r6, r8, r7
000250  ab03fc42  lui r7, 274368
000254  e70edfdc  storeli.w r13, -4376(r30)
000258  674e6fdc  storeli.w r6, -4380(r30)
00025c  2b03404b  lui r6, 308224
000260  e7456fdf  storeli.w r22, -4260(r30)
000264  8b95e038  mod.s r11, r1, r14
000268  8b90e030  div.s r1, r1, r14
00026c  6706efde  storeli.w r14, -4256(r30)
000270  9bb1a500  slli r3, r11, 10
000274  67451fde  storeli.w r1, -4268(r30)
000278  ab050080  lui r11, 524288
00027c  e7053fde  storeli.w r3, -4264(r30)
000280  9bb11100  slli r3, r3, 1
000284  8b902110  add.s r1, r3, r2
000288  1f012000  addli r2, zero, 16
00028c  ab0140cb  lui r3, 832512
000290  670e1fdc  storeli.w r1, -4384(r30)
000294  8b10a210  add.s r1, r4, r10
000298  2bc2ae3a  lui r4, 240364
00029c  6a210122  vor.u.mz vr2{mr1}, r2, vr0
0002a0  2b01fcc2  lui r2, 798656
0002a4  e74d1fdc  storeli.w r1, -4388(r30)
0002a8  8b10a410  add.s r1, r8, r10
0002ac  1b12f23f  ori r4, r4, 1023
0002b0  6a220122  vor.u.mz vr4{mr1}, r2, vr0
0002b4  1f712000  addli r2, zero, 23
0002b8  2b842139  lui r8, 234008
0002bc  e70d1fdc  storeli.w r1, -4392(r30)
0002c0  ab0080ff  lui r1, 1046528
0002c4  ea110222  vor.f.mz vr3{mr1}, r4, vr0
0002c8  2b921d3c  lui r4, 246233
0002cc  6a230122  vor.u.mz vr6{mr1}, r2, vr0
0002d0  9b169448  ori r13, r8, 1161
0002d4  2b54633d  lui r8, 251445
0002d8  2b01803f  lui r2, 260096
0002dc  ea900022  vor.f.mz vr1{mr1}, r1, vr0
0002e0  9f000fdd  addli r1, r30, -4480
0002e4  1b12b255  ori r4, r4, 1371
0002e8  1b147484  ori r8, r8, 2119
0002ec  ea130222  vor.f.mz vr7{mr1}, r4, vr0
0002f0  2bf2753e  lui r4, 255839
0002f4  ea120422  vor.f.mz vr5{mr1}, r8, vr0
0002f8  2b74313f  lui r8, 258839
0002fc  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000300  9b1006fe  ori r1, r12, 4064
000304  1b1802df  ori r16, r4, 3568
000308  1f020fde  addli r4, r30, -4352
00030c  9b198421  ori r19, r8, 536
000310  1f060000  addli r12, zero, 0
000314  e7471fdc  storeli.w r1, -4484(r30)
000318  ab700000  lui r1, 7
00031c  46106202  vstore_mask16.mz vr6{mr1}, 0(r4)
000320  1f020fdc  addli r4, r30, -4608
000324  9b9cf0ff  ori r25, r1, 4095
000328  aba0b83f  lui r1, 261002
00032c  46104202  vstore_mask16.mz vr4{mr1}, 0(r4)
000330  1f028fdb  addli r4, r30, -4672
000334  9b90b0a3  ori r1, r1, 2619
000338  46102202  vstore_mask16.mz vr2{mr1}, 0(r4)
00033c  db030000  j 28
000340  6304cfde  loadli.w r8,  -4256(r30)
000344  00520102  load_param_i r4, 2
000348  0b128230  div.s r4, r4, r8
00034c  0b16c210  add.s r12, r4, r12
000350  3f209600  blt.s r12, r9, 8
000354  5b760000  j 944
000358  6342afde  loadli.w r4,  -4268(r30)
00035c  6305bfde  loadli.w r10,  -4264(r30)
000360  63040f00  loadli.w r8,  0(r30)
000364  8b184610  add.s r17, r12, r4
000368  6302dfde  loadli.w r4,  -4248(r30)
00036c  e7471fdf  storeli.w r17, -4228(r30)
000370  0b924810  add.s r4, r17, r4
000374  0b158250  fmac.s r10, r4, r8
000378  1f02efde  addli r4, r30, -4240
00037c  33170528  sext_int2long r[15:16], r10
000380  7330e200  store.d r[15:16], 0(r4)
000384  2b0280ff  lui r4, 1046528
000388  cb931401  ble.s r9, r17, 228
00038c  1f02efde  addli r4, r30, -4240
000390  9f04efdd  addli r9, r30, -4368
000394  1f040010  addli r8, zero, 2048
000398  6345dfdd  loadli.w r10,  -4372(r30)
00039c  9f080fdf  addli r17, r30, -4224
0003a0  6b570200  load.d r[15:16], 0(r4)
0003a4  ebda0400  load.d r[22:23], 0(r9)
0003a8  2b0200f0  lui r4, 983040
0003ac  17124400  or r4, r8, r4
0003b0  1f040fdd  addli r8, r30, -4480
0003b4  17375702  sll.d r[15:16], r[15:16], r5
0003b8  0ba7ea10  add.ul r[15:16], r[22:23], r[15:16]
0003bc  7f22a700  l_gm2lm r4, r10, 0(r[15:16])
0003c0  00a00200  mfence { lm, gm }
0003c4  42140402  vload_mask16.mz vr8{mr1}, 0(r8)
0003c8  e307cfdd  loadli.w r15,  -4384(r30)
0003cc  6342ffdc  loadli.w r4,  -4484(r30)
0003d0  ca840702  vloads.mz vr9{mr1}, 0(r15)
0003d4  42050502  vload.mz vr10{mr1}, 0(r10)
0003d8  1f024200  addli r4, r4, 32
0003dc  9f8a8800  addli r21, r17, 64
0003e0  9f878700  addli r15, r15, 64
0003e4  1f058500  addli r10, r10, 64
0003e8  1307c205  setlt.u r14, r4, r28
0003ec  ee35a1a2  vsll.s.mz vr11{mr1}, vr2, vr10
0003f0  6a35ac02  vand.s.mz vr10{mr1}, r24, vr10
0003f4  ee3091a2  vsll.s.mz vr1{mr1}, vr2, vr9
0003f8  ea349c02  vand.s.mz vr9{mr1}, r24, vr9
0003fc  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
000400  96149502  vadd.f.mz.rn vr9{mr1}, vr10, vr9
000404  6e3511c2  vsrl.s.mz vr10{mr1}, vr2, vr1
000408  ee3591c2  vsrl.s.mz vr11{mr1}, vr2, vr9
00040c  6ab5a202  vand.s.mz vr10{mr1}, r5, vr10
000410  eab5b202  vand.s.mz vr11{mr1}, r5, vr11
000414  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
000418  96b5b402  vadd.s.mz vr11{mr1}, vr9, vr11
00041c  e69000c0  vabs.f vr1, vr1
000420  e69404c0  vabs.f vr9, vr9
000424  12b5ac02  vadd.s.mz vr10{mr1}, r25, vr10
000428  92b5bc02  vadd.s.mz vr11{mr1}, r25, vr11
00042c  72211d42  vlt.u.mz mr2{mr1}, r26, vr1
000430  6a35ac02  vand.s.mz vr10{mr1}, r24, vr10
000434  ea35bc02  vand.s.mz vr11{mr1}, r24, vr11
000438  6aa50d34  vor.u.mh vr10{mr2}, r27, vr0
00043c  72219d42  vlt.u.mz mr2{mr1}, r26, vr9
000440  eaa50d34  vor.u.mh vr11{mr2}, r27, vr0
000444  4690a802  vstore_mask16.mz vr10{mr1}, 0(r17)
000448  9f880801  addli r17, r17, 128
00044c  b610b502  vmax.f.mz vr1{mr1}, vr10, vr11
000450  4690ba02  vstore_mask16.mz vr11{mr1}, 0(r21)
000454  36141402  vmax.f.mz vr8{mr1}, vr8, vr1
000458  bb6d07fe  bneq r14, zero, -136
00045c  7a120460  vrmax.f r4, vr8
000460  e344cfde  loadli.w r9,  -4252(r30)
000464  634bbfde  loadli.w r22,  -4260(r30)
000468  9f0a0010  addli r21, zero, 2048
00046c  bb515b01  bneq r22, r21, 116
000470  6304dfdd  loadli.w r8,  -4376(r30)
000474  1b379200  slli r14, r4, 9
000478  9b477201  srli r15, r4, 23
00047c  13070700  seteq r14, r14, zero
000480  9b87f70f  andi r15, r15, 255
000484  73604400  stores.w r4, 0(r8)
000488  00a00300  mfence { lm, sm, gm }
00048c  9bf7f70f  setlti r15, r15, 255
000490  6344dfde  loadli.w r8,  -4244(r30)
000494  80210404  csr_set csr3, r8
000498  00d00100  sync_group
00049c  6344cfdd  loadli.w r8,  -4380(r30)
0004a0  1797e700  or r14, r15, r14
0004a4  6f450400  loads.w r10, 0(r8)
0004a8  9b389500  slli r17, r10, 9
0004ac  9b4a7501  srli r21, r10, 23
0004b0  1364a204  setlt.f r8, r4, r10
0004b4  93880800  seteq r17, r17, zero
0004b8  9b8afa0f  andi r21, r21, 255
0004bc  9bfafa0f  setlti r21, r21, 255
0004c0  97971a01  or r15, r21, r17
0004c4  1787e700  and r14, r15, r14
0004c8  1704e400  and r8, r8, r14
0004cc  3b200400  bneq r8, zero, 8
0004d0  1f050200  addli r10, r4, 0
0004d4  e344cfde  loadli.w r9,  -4252(r30)
0004d8  1f020500  addli r4, r10, 0
0004dc  9f0a0010  addli r21, zero, 2048
0004e0  6344ffde  loadli.w r8,  -4228(r30)
0004e4  cba38400  ble.s r9, r8, 232
0004e8  6a140222  vor.f.mz vr8{mr1}, r4, vr0
0004ec  2bf4ffff  lui r8, 1048575
0004f0  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0004f4  12325002  vadd.s.mz vr4{mr1}, zero, vr5
0004f8  92340002  vadd.s.mz vr9{mr1}, zero, vr0
0004fc  92326002  vadd.s.mz vr5{mr1}, zero, vr6
000500  1f020fdf  addli r4, r30, -4224
000504  00a00000  mfence { lm }
000508  1b1504ff  ori r10, r8, 4080
00050c  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
000510  12337002  vadd.s.mz vr6{mr1}, zero, vr7
000514  1f052500  addli r10, r10, 16
000518  13044505  setlt.u r8, r10, r20
00051c  9e908002  vsub.f.mz.rn vr1{mr1}, vr1, vr8
000520  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
000524  1a951502  vsub.f.mz.rn vr10{mr1}, r11, vr1
000528  7291a342  vlt.f.mz mr2{mr1}, r7, vr10
00052c  ea202034  vor.u.mh vr1{mr2}, zero, vr2
000530  12151302  vadd.f.mz.rn vr10{mr1}, r6, vr1
000534  9295a102  vadd.f.mz.rn vr11{mr1}, r3, vr10
000538  6eb5a2a2  vsll.s.mz vr10{mr1}, vr5, vr10
00053c  9e90b002  vsub.f.mz.rn vr1{mr1}, vr1, vr11
000540  92353002  vadd.s.mz vr11{mr1}, zero, vr3
000544  1235a102  vadd.s.mz vr10{mr1}, r2, vr10
000548  a2951602  vmac.f.mz.rn vr11{mr1}, r13, vr1
00054c  26931502  vmac.f.mz.rn vr6{mr1}, vr11, vr1
000550  92354002  vadd.s.mz vr11{mr1}, zero, vr4
000554  a6151302  vmac.f.mz.rn vr11{mr1}, vr6, vr1
000558  6a130822  vor.f.mz vr6{mr1}, r16, vr0
00055c  26931502  vmac.f.mz.rn vr6{mr1}, vr11, vr1
000560  ea950922  vor.f.mz vr11{mr1}, r19, vr0
000564  a6151302  vmac.f.mz.rn vr11{mr1}, vr6, vr1
000568  6a130122  vor.f.mz vr6{mr1}, r2, vr0
00056c  26931502  vmac.f.mz.rn vr6{mr1}, vr11, vr1
000570  8e10a302  vmul.f.mz.rn vr1{mr1}, vr6, vr10
000574  ea200034  vor.u.mh vr1{mr2}, zero, vr0
000578  96941402  vadd.f.mz.rn vr9{mr1}, vr9, vr1
00057c  46101202  vstore_mask16.mz vr1{mr1}, 0(r4)
000580  1f028200  addli r4, r4, 64
000584  3b2e04fe  bneq r8, zero, -120
000588  46109902  vstore_mask16.mz vr9{mr1}, 0(r18)
00058c  1f050000  addli r10, zero, 0
000590  1f020000  addli r4, zero, 0
000594  00a00000  mfence { lm }
000598  0b14a910  add.s r8, r18, r10
00059c  1f450500  addli r10, r10, 4
0005a0  63040400  loadli.w r8,  0(r8)
0005a4  0b628210  add.f.rn r4, r4, r8
0005a8  bb4f75ff  bneq r10, r23, -16
0005ac  1f040fde  addli r8, r30, -4352
0005b0  92324002  vadd.s.mz vr5{mr1}, zero, vr4
0005b4  12322002  vadd.s.mz vr4{mr1}, zero, vr2
0005b8  42130402  vload_mask16.mz vr6{mr1}, 0(r8)
0005bc  1f048fdb  addli r8, r30, -4672
0005c0  42110402  vload_mask16.mz vr2{mr1}, 0(r8)
0005c4  37405b01  beq r22, r21, 16
0005c8  5b060000  j 48
0005cc  1f020000  addli r4, zero, 0
0005d0  bb205b01  bneq r22, r21, 40
0005d4  6344bfdd  loadli.w r8,  -4388(r30)
0005d8  73604400  stores.w r4, 0(r8)
0005dc  00a00300  mfence { lm, sm, gm }
0005e0  6344dfde  loadli.w r8,  -4244(r30)
0005e4  80210404  csr_set csr3, r8
0005e8  00d00100  sync_group
0005ec  6304bfdd  loadli.w r8,  -4392(r30)
0005f0  6f440400  loads.w r8, 0(r8)
0005f4  0b628210  add.f.rn r4, r4, r8
0005f8  6344ffde  loadli.w r8,  -4228(r30)
0005fc  4ba08400  ble.s r9, r8, 8
000600  db010000  j 12
000604  bb745bff  bneq r22, r21, -708
000608  db1d0000  j 236
00060c  0f024118  div.f.rn r4, r2, r4
000610  6e248462  vxor.u.mz vr8{mr1}, vr8, vr8
000614  2bf4ffff  lui r8, 1048575
000618  1f050fdf  addli r10, r30, -4224
00061c  9f072000  addli r15, zero, 16
000620  00a00000  mfence { lm }
000624  1b1404fe  ori r8, r8, 4064
000628  ea148222  vor.f.mz vr9{mr1}, r4, vr8
00062c  1f020fdf  addli r4, r30, -4224
000630  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
000634  1f078200  addli r14, r4, 64
000638  6aa58722  vor.u.mz vr10{mr1}, r15, vr8
00063c  1f044400  addli r8, r8, 32
000640  1f020201  addli r4, r4, 128
000644  42130702  vload_mask16.mz vr6{mr1}, 0(r14)
000648  1307c405  setlt.u r14, r8, r28
00064c  8e901402  vmul.f.mz.rn vr1{mr1}, vr9, vr1
000650  0e936402  vmul.f.mz.rn vr6{mr1}, vr9, vr6
000654  ee3515c2  vsrl.s.mz vr11{mr1}, vr10, vr1
000658  6e3265c2  vsrl.s.mz vr4{mr1}, vr10, vr6
00065c  eab5b202  vand.s.mz vr11{mr1}, r5, vr11
000660  6ab24202  vand.s.mz vr4{mr1}, r5, vr4
000664  96b5b002  vadd.s.mz vr11{mr1}, vr1, vr11
000668  e69000c0  vabs.f vr1, vr1
00066c  16324302  vadd.s.mz vr4{mr1}, vr6, vr4
000670  92b5bc02  vadd.s.mz vr11{mr1}, r25, vr11
000674  72211d42  vlt.u.mz mr2{mr1}, r26, vr1
000678  e61003c0  vabs.f vr1, vr6
00067c  12b24c02  vadd.s.mz vr4{mr1}, r25, vr4
000680  ea35bc02  vand.s.mz vr11{mr1}, r24, vr11
000684  6a324c02  vand.s.mz vr4{mr1}, r24, vr4
000688  eaa58d34  vor.u.mh vr11{mr2}, r27, vr8
00068c  72211d42  vlt.u.mz mr2{mr1}, r26, vr1
000690  6aa28d34  vor.u.mh vr4{mr2}, r27, vr8
000694  ee30b5c2  vsrl.s.mz vr1{mr1}, vr10, vr11
000698  ee301222  vor.s.mz vr1{mr1}, vr4, vr1
00069c  46001502  vstore.mz vr1{mr1}, 0(r10)
0006a0  1f058500  addli r10, r10, 64
0006a4  3b3e07fe  bneq r14, zero, -116
0006a8  1f02efde  addli r4, r30, -4240
0006ac  1f04ffdd  addli r8, r30, -4360
0006b0  6b570200  load.d r[15:16], 0(r4)
0006b4  eb5a0400  load.d r[22:23], 0(r8)
0006b8  2b0200f0  lui r4, 983040
0006bc  1f040fdf  addli r8, r30, -4224
0006c0  00a00000  mfence { lm }
0006c4  17375702  sll.d r[15:16], r[15:16], r5
0006c8  0ba7ea10  add.ul r[15:16], r[22:23], r[15:16]
0006cc  9f0a0010  addli r21, zero, 2048
0006d0  17924a00  or r4, r21, r4
0006d4  7f328700  s_lm2gm r4, r8, 0(r[15:16])
0006d8  1f020fdc  addli r4, r30, -4608
0006dc  00a00200  mfence { lm, gm }
0006e0  42120202  vload_mask16.mz vr4{mr1}, 0(r4)
0006e4  1f020fde  addli r4, r30, -4352
0006e8  634bbfde  loadli.w r22,  -4260(r30)
0006ec  42130202  vload_mask16.mz vr6{mr1}, 0(r4)
0006f0  3b415bff  bneq r22, r21, -944
0006f4  6342dfde  loadli.w r4,  -4244(r30)
0006f8  80210204  csr_set csr3, r4
0006fc  00d00100  sync_group
000700  5b88ffff  j -960
000704  9f0e8fdb  addli sp, r30, -4672
000708  e38f2e24  loadli.w r31,  4624(sp)
00070c  63cf2e24  loadli.w r30,  4628(sp)
000710  638e3e24  loadli.w r28,  4632(sp)
000714  e3cd3e24  loadli.w r27,  4636(sp)
000718  638d4e24  loadli.w r26,  4640(sp)
00071c  e3cc4e24  loadli.w r25,  4644(sp)
000720  638c5e24  loadli.w r24,  4648(sp)
000724  e3cb5e24  loadli.w r23,  4652(sp)
000728  638b6e24  loadli.w r22,  4656(sp)
00072c  e3ca6e24  loadli.w r21,  4660(sp)
000730  638a7e24  loadli.w r20,  4664(sp)
000734  e3c97e24  loadli.w r19,  4668(sp)
000738  9f8e8e24  addli sp, sp, 4672
00073c  5f800f00  jr r31, 0
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
000790  00100000  exit
000794  00100000  exit
000798  00100000  exit
00079c  00100000  exit
0007a0  00100000  exit
0007a4  00100000  exit
0007a8  00100000  exit
0007ac  00100000  exit
0007b0  00100000  exit
0007b4  00100000  exit
0007b8  00100000  exit
0007bc  00100000  exit
0007c0  00100000  exit
0007c4  00100000  exit
0007c8  00100000  exit
0007cc  00100000  exit
0007d0  00100000  exit
0007d4  00100000  exit
0007d8  00100000  exit
0007dc  00100000  exit
0007e0  00100000  exit
0007e4  00100000  exit
0007e8  00100000  exit
0007ec  00100000  exit
0007f0  00100000  exit
0007f4  00100000  exit
0007f8  00100000  exit
0007fc  00100000  exit
000800  00100000  exit
000804  00100000  exit
000808  00100000  exit
00080c  00100000  exit
000810  00100000  exit
000814  00100000  exit
000818  00100000  exit
00081c  00100000  exit
000820  00100000  exit
000824  00100000  exit
000828  00100000  exit
00082c  00100000  exit
000830  00100000  exit
000834  00100000  exit
000838  00100000  exit
00083c  00100000  exit
000840  00100000  exit
000844  00100000  exit
000848  00100000  exit
00084c  00100000  exit
000850  00100000  exit
000854  00100000  exit
000858  00100000  exit
00085c  00100000  exit
000860  00100000  exit
000864  00100000  exit
000868  00100000  exit
00086c  00100000  exit
000870  00100000  exit
000874  00100000  exit
000878  00100000  exit
00087c  00100000  exit
000880  00100000  exit
000884  00100000  exit
000888  00100000  exit
00088c  00100000  exit
000890  00100000  exit
000894  00100000  exit
000898  00100000  exit
00089c  00100000  exit
0008a0  00100000  exit
0008a4  00100000  exit
0008a8  00100000  exit
0008ac  00100000  exit
0008b0  00100000  exit
0008b4  00100000  exit
0008b8  00100000  exit
0008bc  00100000  exit
0008c0  00100000  exit
0008c4  00100000  exit
0008c8  00100000  exit
0008cc  00100000  exit
0008d0  00100000  exit
0008d4  00100000  exit
0008d8  00100000  exit
0008dc  00100000  exit
0008e0  00100000  exit
0008e4  00100000  exit
0008e8  00100000  exit
0008ec  00100000  exit
0008f0  00100000  exit
0008f4  00100000  exit
0008f8  00100000  exit
0008fc  00100000  exit
000900  00100000  exit
000904  00100000  exit
000908  00100000  exit
00090c  00100000  exit
000910  00100000  exit
000914  00100000  exit
000918  00100000  exit
00091c  00100000  exit
000920  00100000  exit
000924  00100000  exit
000928  00100000  exit
00092c  00100000  exit
000930  00100000  exit
000934  00100000  exit
000938  00100000  exit
00093c  00100000  exit
000940  00100000  exit
000944  00100000  exit
000948  00100000  exit
00094c  00100000  exit
000950  00100000  exit
000954  00100000  exit
000958  00100000  exit
00095c  00100000  exit
000960  00100000  exit
000964  00100000  exit
000968  00100000  exit
00096c  00100000  exit
000970  00100000  exit
000974  00100000  exit
000978  00100000  exit
00097c  00100000  exit
