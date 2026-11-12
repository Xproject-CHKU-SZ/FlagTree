; SHA-256 ec5d328c1a3d563a4026e51e394e7a835590a1ac88b1dd424a1730d837ed955d
; P800 Cluster · XTDK LLVM 19 · 845 / 851 words decoded
; bound names: triton_unk_fused_0
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
0000dc  9f8e8efd  addli sp, sp, -320
0000e0  1f8f0e02  addli r30, sp, 256
0000e4  00520002  load_param_i r4, 0
0000e8  63014f00  loadli.w r2,  32(r30)
0000ec  e3403f00  loadli.w r1,  28(r30)
0000f0  e3414f00  loadli.w r3,  36(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  67441ffe  storeli.w r1, -188(r30)
000100  cbe04002  ble.s r1, r4, 1080
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  9f042000  addli r9, zero, 16
000110  1f058fff  addli r10, r30, -64
000114  ab09ffff  lui r19, 1048560
000118  2b0c807f  lui r24, 522240
00011c  2b064000  lui r12, 1024
000120  9bb03000  slli r1, r1, 3
000124  67042ffe  storeli.w r2, -192(r30)
000128  2bf17f7f  lui r2, 522239
00012c  e7431ffe  storeli.w r1, -196(r30)
000130  ab700000  lui r1, 7
000134  9b1bf1ff  ori r23, r2, 4095
000138  2bb1a73e  lui r2, 256635
00013c  9b95f0ff  ori r11, r1, 4095
000140  abf0ff7f  lui r1, 524287
000144  1b9df0ff  ori r26, r1, 4095
000148  ab00353f  lui r1, 258896
00014c  e705bffe  storeli.w r11, -168(r30)
000150  9b90304f  ori r1, r1, 1267
000154  67471ffe  storeli.w r1, -140(r30)
000158  9b1051a0  ori r1, r2, 2565
00015c  ab01f03f  lui r3, 261888
000160  67071ffe  storeli.w r1, -144(r30)
000164  ab00babf  lui r1, 785312
000168  733c2ff6  store.d r[3:4], -136(r30)
00016c  2bf1b53f  lui r2, 260959
000170  9b90300e  ori r1, r1, 227
000174  e7461ffe  storeli.w r1, -148(r30)
000178  abd0873f  lui r1, 260221
00017c  9b9020c2  ori r1, r1, 3106
000180  e7061ffe  storeli.w r1, -152(r30)
000184  9b10310e  ori r1, r2, 227
000188  2b71823e  lui r2, 256039
00018c  67461ffe  storeli.w r1, -156(r30)
000190  aba091be  lui r1, 780570
000194  9b90e098  ori r1, r1, 2446
000198  67061ffe  storeli.w r1, -160(r30)
00019c  9b106190  ori r1, r2, 2310
0001a0  e7451ffe  storeli.w r1, -164(r30)
0001a4  5b070000  j 56
0001a8  6b510f01  load.d r[3:4], 16(r30)
0001ac  6b528ff4  load.d r[5:6], -184(r30)
0001b0  ab0000f0  lui r1, 983040
0001b4  97901400  or r1, r9, r1
0001b8  0b214110  add.ul r[3:4], r[3:4], r[5:6]
0001bc  6342affe  loadli.w r4,  -172(r30)
0001c0  ff30a100  s_lm2gm r1, r10, 0(r[3:4])
0001c4  e3008ffe  loadli.w r1,  -192(r30)
0001c8  00a00000  mfence { lm }
0001cc  0b121210  add.s r4, r4, r1
0001d0  e3408ffe  loadli.w r1,  -188(r30)
0001d4  3f201200  blt.s r4, r1, 8
0001d8  5b6c0000  j 864
0001dc  e3404f00  loadli.w r1,  36(r30)
0001e0  63014f00  loadli.w r2,  32(r30)
0001e4  67454ffe  storeli.w r4, -172(r30)
0001e8  9f130000  addli r7, zero, 1
0001ec  9f0c0000  addli r25, zero, 0
0001f0  8b101230  div.s r1, r4, r1
0001f4  8b902030  div.s r1, r1, r2
0001f8  63417ffe  loadli.w r2,  -196(r30)
0001fc  9bb09000  slli r1, r1, 9
000200  8b902010  add.s r1, r1, r2
000204  1f010010  addli r2, zero, 2048
000208  0b912038  mod.s r2, r1, r2
00020c  b3910028  sext_int2long r[4:5], r1
000210  ab0000f0  lui r1, 983040
000214  97b67102  sll.d r[14:15], r[4:5], r7
000218  97901400  or r1, r9, r1
00021c  7334dff4  store.d r[14:15], -184(r30)
000220  b3120128  sext_int2long r[6:7], r2
000224  2b0100f0  lui r2, 983040
000228  97b17202  sll.d r[4:5], r[6:7], r7
00022c  eb520f00  load.d r[6:7], 0(r30)
000230  eb538f00  load.d r[8:9], 8(r30)
000234  17912400  or r2, r9, r2
000238  8ba13310  add.ul r[4:5], r[8:9], r[4:5]
00023c  8ba2d210  add.ul r[6:7], r[6:7], r[14:15]
000240  9f030fff  addli r7, r30, -128
000244  ffa07200  l_gm2lm r1, r7, 0(r[6:7])
000248  7fa1a100  l_gm2lm r2, r10, 0(r[4:5])
00024c  00a00000  mfence { lm }
000250  5b040000  j 32
000254  b3900000  float2bfloat.rn r1, r1
000258  33110200  float2bfloat.rn r2, r4
00025c  9fcc0c00  addli r25, r25, 4
000260  73101e00  store.h r1, 0(r28)
000264  73112e00  store.h r2, 2(r28)
000268  00a00000  mfence { lm }
00026c  b7fc9cfe  beq r25, r9, -196
000270  9f000fff  addli r1, r30, -128
000274  0b1e9511  add.s r28, r10, r25
000278  8b909011  add.s r1, r1, r25
00027c  eb310e00  load.hu r3, 0(r28)
000280  6b322e00  load.hu r4, 2(r28)
000284  6bb10000  load.hu r2, 0(r1)
000288  ebb02000  load.hu r1, 2(r1)
00028c  b3910118  bfloat2float.rn r3, r3
000290  33110118  bfloat2float.rn r2, r2
000294  8b613110  add.f.rn r3, r2, r3
000298  9782a101  and r5, r3, r26
00029c  13015c04  setlt.u r2, r24, r5
0002a0  3b300100  bneq r2, zero, 12
0002a4  1f810100  addli r2, r3, 0
0002a8  5b010000  j 8
0002ac  1791c100  or r2, r3, r12
0002b0  b3900018  bfloat2float.rn r1, r1
0002b4  33120218  bfloat2float.rn r4, r4
0002b8  0be24010  add.f.rn r4, r1, r4
0002bc  1703a201  and r6, r4, r26
0002c0  93006c04  setlt.u r1, r24, r6
0002c4  3bd00000  bneq r1, zero, 20
0002c8  9f000200  addli r1, r4, 0
0002cc  93825b04  setlt.u r5, r23, r5
0002d0  37d00200  beq r5, zero, 20
0002d4  db040000  j 36
0002d8  9710c200  or r1, r4, r12
0002dc  93825b04  setlt.u r5, r23, r5
0002e0  3be00200  bneq r5, zero, 24
0002e4  1bc10101  srli r2, r3, 16
0002e8  1b011100  andi r2, r2, 1
0002ec  0b912110  add.s r2, r3, r2
0002f0  0b11b110  add.s r2, r2, r11
0002f4  17013101  and r2, r2, r19
0002f8  93816b04  setlt.u r3, r23, r6
0002fc  3be00100  bneq r3, zero, 24
000300  9b400201  srli r1, r4, 16
000304  9b801000  andi r1, r1, 1
000308  8b101210  add.s r1, r4, r1
00030c  8b90b010  add.s r1, r1, r11
000310  97803001  and r1, r1, r19
000314  9701a101  and r3, r2, r26
000318  93013c04  setlt.u r3, r24, r3
00031c  3be00100  bneq r3, zero, 24
000320  9b410101  srli r3, r2, 16
000324  9b811100  andi r3, r3, 1
000328  0b113110  add.s r2, r2, r3
00032c  0b11b110  add.s r2, r2, r11
000330  5b010000  j 8
000334  1711c100  or r2, r2, r12
000338  9781a001  and r3, r1, r26
00033c  93013c04  setlt.u r3, r24, r3
000340  3be00100  bneq r3, zero, 24
000344  9bc10001  srli r3, r1, 16
000348  9b811100  andi r3, r3, 1
00034c  8b903010  add.s r1, r1, r3
000350  0b9bb010  add.s r22, r1, r11
000354  5b010000  j 8
000358  179bc000  or r22, r1, r12
00035c  e340effe  loadli.w r1,  -140(r30)
000360  970a3101  and r21, r2, r19
000364  6301effe  loadli.w r2,  -144(r30)
000368  eb538ff7  load.d r[8:9], -136(r30)
00036c  9f030000  addli r7, zero, 0
000370  8be01a20  mul.f.rn r1, r21, r1
000374  733c7ff6  store.d r[8:9], -136(r30)
000378  0bea0060  abs.f r20, r1
00037c  1bb29000  slli r4, r1, 9
000380  0b612a20  mul.f.rn r2, r20, r2
000384  13030200  seteq r6, r4, zero
000388  0f210108  .word 0x0801210f
00038c  0f127120  .word 0x2071120f
000390  1bc17001  srli r2, r1, 23
000394  93e00004  setlt.f r1, r1, zero
000398  1b01f10f  andi r2, r2, 255
00039c  1b71f10f  setlti r2, r2, 255
0003a0  17116100  or r2, r2, r6
0003a4  978d2000  and r27, r1, r2
0003a8  27810300  addli.d r[3:4], r[8:9], 0
0003ac  d7a80000  jal 1348
0003b0  8f300110  .word 0x1001308f
0003b4  6341dffe  loadli.w r2,  -148(r30)
0003b8  e301dffe  loadli.w r3,  -152(r30)
0003bc  0b620a58  neg.f r4, r20
0003c0  0be13050  fmac.f.rn r2, r1, r3
0003c4  e341cffe  loadli.w r3,  -156(r30)
0003c8  8b611150  fmac.f.rn r3, r2, r1
0003cc  6301cffe  loadli.w r2,  -160(r30)
0003d0  0be11150  fmac.f.rn r2, r3, r1
0003d4  e341bffe  loadli.w r3,  -164(r30)
0003d8  8b611150  fmac.f.rn r3, r2, r1
0003dc  0b614a20  mul.f.rn r2, r20, r4
0003e0  2b0a803f  lui r20, 260096
0003e4  8be10158  neg.f r3, r3
0003e8  0f010100  exp.f.rn r2, r2
0003ec  8be03020  mul.f.rn r1, r1, r3
0003f0  0bea2050  fmac.f.rn r20, r1, r2
0003f4  37a00d00  beq r27, zero, 8
0003f8  0b6a0a58  neg.f r20, r20
0003fc  e340effe  loadli.w r1,  -140(r30)
000400  170b3b01  and r22, r22, r19
000404  6301effe  loadli.w r2,  -144(r30)
000408  8b601b20  mul.f.rn r1, r22, r1
00040c  8bed0060  abs.f r27, r1
000410  1bb29000  slli r4, r1, 9
000414  0be12d20  mul.f.rn r2, r27, r2
000418  13030200  seteq r6, r4, zero
00041c  8f230108  .word 0x0801238f
000420  6b518ff7  load.d r[3:4], -136(r30)
000424  0f922320  .word 0x2023920f
000428  9bc37001  srli r7, r1, 23
00042c  93e00004  setlt.f r1, r1, zero
000430  9b83f30f  andi r7, r7, 255
000434  9bf3f30f  setlti r7, r7, 255
000438  17936300  or r6, r7, r6
00043c  97896000  and r19, r1, r6
000440  d7a80000  jal 1348
000444  8f300110  .word 0x1001308f
000448  6341dffe  loadli.w r2,  -148(r30)
00044c  e301dffe  loadli.w r3,  -152(r30)
000450  0be20d58  neg.f r4, r27
000454  0be13050  fmac.f.rn r2, r1, r3
000458  e341cffe  loadli.w r3,  -156(r30)
00045c  8b611150  fmac.f.rn r3, r2, r1
000460  6301cffe  loadli.w r2,  -160(r30)
000464  0be11150  fmac.f.rn r2, r3, r1
000468  e341bffe  loadli.w r3,  -164(r30)
00046c  8b611150  fmac.f.rn r3, r2, r1
000470  0be14d20  mul.f.rn r2, r27, r4
000474  8be10158  neg.f r3, r3
000478  0f010100  exp.f.rn r2, r2
00047c  8be03020  mul.f.rn r1, r1, r3
000480  ab01803f  lui r3, 260096
000484  8be12050  fmac.f.rn r3, r1, r2
000488  37a00900  beq r19, zero, 8
00048c  8be10158  neg.f r3, r3
000490  2b02003f  lui r4, 258048
000494  2b03803f  lui r6, 260096
000498  e305bffe  loadli.w r11,  -168(r30)
00049c  9f042000  addli r9, zero, 16
0004a0  1f058fff  addli r10, r30, -64
0004a4  2b064000  lui r12, 1024
0004a8  ab09ffff  lui r19, 1048560
0004ac  8be04a20  mul.f.rn r1, r21, r4
0004b0  0b616a10  add.f.rn r2, r20, r6
0004b4  0be12020  mul.f.rn r2, r1, r2
0004b8  9702a101  and r5, r2, r26
0004bc  93005c04  setlt.u r1, r24, r5
0004c0  3bb00000  bneq r1, zero, 12
0004c4  9f000100  addli r1, r2, 0
0004c8  5b010000  j 8
0004cc  9710c100  or r1, r2, r12
0004d0  0b624b20  mul.f.rn r4, r22, r4
0004d4  8be16110  add.f.rn r3, r3, r6
0004d8  8b613220  mul.f.rn r3, r4, r3
0004dc  1783a101  and r6, r3, r26
0004e0  13026c04  setlt.u r4, r24, r6
0004e4  3b500200  bneq r4, zero, 20
0004e8  1f820100  addli r4, r3, 0
0004ec  93825b04  setlt.u r5, r23, r5
0004f0  37d00200  beq r5, zero, 20
0004f4  db040000  j 36
0004f8  1792c100  or r4, r3, r12
0004fc  93825b04  setlt.u r5, r23, r5
000500  3be00200  bneq r5, zero, 24
000504  9b400101  srli r1, r2, 16
000508  9b801000  andi r1, r1, 1
00050c  8b101110  add.s r1, r2, r1
000510  8b90b010  add.s r1, r1, r11
000514  97803001  and r1, r1, r19
000518  13816b04  setlt.u r2, r23, r6
00051c  bb6401fe  bneq r2, zero, -712
000520  1bc10101  srli r2, r3, 16
000524  1b011100  andi r2, r2, 1
000528  0b912110  add.s r2, r3, r2
00052c  0b11b110  add.s r2, r2, r11
000530  17023101  and r4, r2, r19
000534  5ba4ffff  j -736
000538  9f8e0e02  addli sp, sp, 256
00053c  00a00300  mfence { lm, sm, gm }
000540  00100000  exit
000544  9f8e7eff  addli sp, sp, -72
000548  9f406000  addli r1, zero, 52
00054c  2bf50f00  lui r10, 255
000550  abf7ffff  lui r15, 1048575
000554  ab040080  lui r9, 524288
000558  17232202  xor.d r[7:8], r[5:6], r[3:4]
00055c  e7c1ee01  storeli.w r30, 28(sp)
000560  67c43e01  storeli.w r19, 68(sp)
000564  67844e01  storeli.w r20, 64(sp)
000568  e7c35e01  storeli.w r21, 60(sp)
00056c  e7836e01  storeli.w r22, 56(sp)
000570  67c37e01  storeli.w r23, 52(sp)
000574  67838e01  storeli.w r24, 48(sp)
000578  e7c29e01  storeli.w r25, 44(sp)
00057c  e782ae01  storeli.w r26, 40(sp)
000580  67c2be01  storeli.w r27, 36(sp)
000584  6782ce01  storeli.w r28, 32(sp)
000588  e781fe01  storeli.w r31, 24(sp)
00058c  1f8f9e00  addli r30, sp, 72
000590  1f040000  addli r8, zero, 0
000594  97451102  srl.d r[12:13], r[3:4], r1
000598  17481202  srl.d r[17:18], r[5:6], r1
00059c  1b17f5ff  ori r14, r10, 4095
0005a0  9b96f7ff  ori r13, r15, 4095
0005a4  17038302  and.d r[7:8], r[7:8], r[9:10]
0005a8  9b80f57f  andi r1, r11, 2047
0005ac  1b05f87f  andi r10, r16, 2047
0005b0  9b982780  ori r17, r15, 2050
0005b4  1704d102  and.d r[9:10], r[3:4], r[14:15]
0005b8  9705d202  and.d r[12:13], r[5:6], r[14:15]
0005bc  1f9800f0  addli r16, r1, -2047
0005c0  13081805  setlt.u r16, r16, r17
0005c4  3b700800  bneq r16, zero, 28
0005c8  1f1805f0  addli r16, r10, -2047
0005cc  9b971780  ori r15, r15, 2049
0005d0  93870705  setlt.u r15, r15, r16
0005d4  37b00700  beq r15, zero, 12
0005d8  1f020000  addli r4, zero, 0
0005dc  5b0b0000  j 88
0005e0  abf7ff7f  lui r15, 524287
0005e4  2b09f07f  lui r18, 524032
0005e8  9f180000  addli r17, zero, 1
0005ec  1b97f7ff  ori r14, r15, 4095
0005f0  9707d102  and.d r[16:17], r[3:4], r[14:15]
0005f4  93a91705  setlt.ul r19, r[16:17], r[18:19]
0005f8  3be00900  bneq r19, zero, 24
0005fc  ab020800  lui r5, 128
000600  9f060000  addli r13, zero, 0
000604  1f020000  addli r4, zero, 0
000608  17114102  or.d r[3:4], r[3:4], r[5:6]
00060c  5b040000  j 32
000610  1701d202  and.d r[3:4], r[5:6], r[14:15]
000614  93261105  setlt.ul r13, r[3:4], r[18:19]
000618  3bf80600  bneq r13, zero, 540
00061c  ab010800  lui r3, 128
000620  9f060000  addli r13, zero, 0
000624  1f010000  addli r2, zero, 0
000628  17112202  or.d r[3:4], r[5:6], r[3:4]
00062c  1f020000  addli r4, zero, 0
000630  b7c90600  beq r13, zero, 624
000634  ab011000  lui r3, 256
000638  9f371000  addli r15, zero, 11
00063c  abf9ffff  lui r19, 1048575
000640  2bf90475  lui r18, 479311
000644  9f582000  addli r17, zero, 21
000648  73346ffc  store.d r[7:8], -56(r30)
00064c  9f723000  addli r5, zero, 31
000650  73308ffc  store.d r[9:10], -64(r30)
000654  8b90a018  sub.s r1, r1, r10
000658  1f010000  addli r2, zero, 0
00065c  97b7f502  sll.d r[16:17], r[12:13], r15
000660  9b1a3933  ori r21, r18, 819
000664  8b101210  add.s r1, r4, r1
000668  97162402  or.d r[14:15], r[9:10], r[3:4]
00066c  17912502  or.d r[3:4], r[12:13], r[3:4]
000670  9b950980  ori r11, r19, 2048
000674  733cdffa  store.d r[14:15], -72(r30)
000678  338c0528  zext_int2long r[25:26], r11
00067c  174b1103  srl.d r[23:24], r[3:4], r17
000680  9b95f9ff  ori r11, r19, 4095
000684  9b99e9ff  ori r19, r19, 4094
000688  b3880528  zext_int2long r[18:19], r11
00068c  8b9a6a19  sub.s r21, r21, r22
000690  97878703  and.d r[16:17], r[16:17], r[25:26]
000694  b3890928  zext_int2long r[20:21], r19
000698  170d1b03  and.d r[27:28], r[23:24], r[18:19]
00069c  b38a0a28  zext_int2long r[22:23], r21
0006a0  0b335d21  mul.sl r[7:8], r[27:28], r[22:23]
0006a4  0b930358  neg.s r6, r7
0006a8  33030328  zext_int2long r[7:8], r6
0006ac  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
0006b0  17435302  srl.d r[7:8], r[7:8], r5
0006b4  17031303  and.d r[7:8], r[7:8], r[18:19]
0006b8  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
0006bc  8b1a0b58  neg.s r21, r22
0006c0  b38a0a28  zext_int2long r[22:23], r21
0006c4  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
0006c8  17435302  srl.d r[7:8], r[7:8], r5
0006cc  17031303  and.d r[7:8], r[7:8], r[18:19]
0006d0  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
0006d4  8b1a0b58  neg.s r21, r22
0006d8  1f0b4000  addli r22, zero, 32
0006dc  33840a28  zext_int2long r[9:10], r21
0006e0  9f1a0000  addli r21, zero, 1
0006e4  0b338320  mul.sl r[7:8], r[7:8], r[9:10]
0006e8  33840a28  zext_int2long r[9:10], r21
0006ec  17435302  srl.d r[7:8], r[7:8], r5
0006f0  1f73f3ff  addli r6, r6, -1
0006f4  33030328  zext_int2long r[7:8], r6
0006f8  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
0006fc  8b3b6d20  mul.sl r[24:25], r[27:28], r[7:8]
000700  97c76703  srl.d r[16:17], r[16:17], r22
000704  8ba7fb10  add.ul r[16:17], r[24:25], r[16:17]
000708  0b34f418  sub.sl r[9:10], r[9:10], r[16:17]
00070c  97071403  and.d r[16:17], r[9:10], r[18:19]
000710  17446403  srl.d r[9:10], r[9:10], r22
000714  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
000718  97cb5702  srl.d r[24:25], r[16:17], r5
00071c  8b328320  mul.sl r[6:7], r[7:8], r[9:10]
000720  97b75603  sll.d r[16:17], r[14:15], r21
000724  abf41f00  lui r9, 511
000728  97b25203  sll.d r[6:7], r[6:7], r21
00072c  97cc6703  srl.d r[26:27], r[16:17], r22
000730  978d3703  and.d r[28:29], r[16:17], r[20:21]
000734  1b96f4ff  ori r12, r9, 4095
000738  8ba27211  add.ul r[6:7], r[6:7], r[24:25]
00073c  a7f232fe  addli.d r[6:7], r[6:7], 32543
000740  97831203  and.d r[8:9], r[6:7], r[18:19]
000744  97c26203  srl.d r[6:7], r[6:7], r22
000748  8bbbb321  mul.sl r[24:25], r[8:9], r[28:29]
00074c  8bb39321  mul.sl r[8:9], r[8:9], r[26:27]
000750  8bbdb221  mul.sl r[28:29], r[6:7], r[28:29]
000754  8bb29221  mul.sl r[6:7], r[6:7], r[26:27]
000758  97881303  and.d r[18:19], r[8:9], r[18:19]
00075c  97cb6b03  srl.d r[24:25], r[24:25], r22
000760  97cc6d03  srl.d r[26:27], r[28:29], r22
000764  97893d03  and.d r[20:21], r[28:29], r[20:21]
000768  97c36303  srl.d r[8:9], r[8:9], r22
00076c  8ba81b11  add.ul r[18:19], r[24:25], r[18:19]
000770  0ba25c10  add.ul r[5:6], r[26:27], r[6:7]
000774  8ba83811  add.ul r[18:19], r[18:19], r[20:21]
000778  0b227210  add.ul r[5:6], r[5:6], r[8:9]
00077c  17c36803  srl.d r[7:8], r[18:19], r22
000780  0b226210  add.ul r[5:6], r[5:6], r[7:8]
000784  13a34504  setlt.ul r6, r[12:13], r[5:6]
000788  3b710300  bneq r6, zero, 92
00078c  1f536000  addli r6, zero, 53
000790  eb540ffc  load.d r[10:11], -64(r30)
000794  8b332220  mul.sl r[8:9], r[5:6], r[3:4]
000798  9fe0f007  addli r1, r1, 1022
00079c  97b46402  sll.d r[10:11], r[10:11], r6
0007a0  0bb47418  sub.sl r[9:10], r[10:11], r[8:9]
0007a4  1f73f00f  addli r6, zero, 2047
0007a8  3fa06000  blt.s r1, r6, 8
0007ac  5b0c0000  j 96
0007b0  1f150000  addli r10, zero, 1
0007b4  bfb1a000  blt.s r1, r10, 108
0007b8  2bf30f00  lui r6, 255
0007bc  abf3ffff  lui r7, 1048575
0007c0  b3850028  zext_int2long r[12:13], r1
0007c4  9f406000  addli r1, zero, 52
0007c8  1734a402  sll.d r[9:10], r[9:10], r10
0007cc  1b17f3ff  ori r14, r6, 4095
0007d0  97b51502  sll.d r[12:13], r[12:13], r1
0007d4  9b96f3ff  ori r13, r7, 4095
0007d8  1702d202  and.d r[5:6], r[5:6], r[14:15]
0007dc  17924502  or.d r[5:6], r[12:13], r[5:6]
0007e0  db140000  j 164
0007e4  17425203  srl.d r[5:6], r[5:6], r21
0007e8  1f436000  addli r6, zero, 52
0007ec  eb530ffc  load.d r[8:9], -64(r30)
0007f0  9ff0f007  addli r1, r1, 1023
0007f4  eb578ffb  load.d r[16:17], -72(r30)
0007f8  17b36302  sll.d r[7:8], r[8:9], r6
0007fc  0b342220  mul.sl r[9:10], r[5:6], r[3:4]
000800  0b348318  sub.sl r[9:10], r[7:8], r[9:10]
000804  1f73f00f  addli r6, zero, 2047
000808  bfae60fe  blt.s r1, r6, -88
00080c  2b01f07f  lui r2, 524032
000810  eb518ffc  load.d r[4:5], -56(r30)
000814  9f000000  addli r1, zero, 0
000818  17911102  or.d r[3:4], r[4:5], r[2:3]
00081c  db100000  j 132
000820  2bf3ffff  lui r6, 1048575
000824  1b13b3fc  ori r6, r6, 4043
000828  bf701300  blt.s r6, r1, 60
00082c  6b518ffc  load.d r[3:4], -56(r30)
000830  5b0e0000  j 112
000834  ab02f07f  lui r5, 524032
000838  1f020000  addli r4, zero, 0
00083c  93a64702  setneq.d r13, r[16:17], r[5:6]
000840  3be20600  bneq r13, zero, 152
000844  1f020000  addli r4, zero, 0
000848  13214100  seteq.d r2, r[3:4], r[5:6]
00084c  b7060100  beq r2, zero, 416
000850  ab01f87f  lui r3, 524160
000854  9f060000  addli r13, zero, 0
000858  1f020000  addli r4, zero, 0
00085c  1f010000  addli r2, zero, 0
000860  5bbaffff  j -560
000864  9f130000  addli r7, zero, 1
000868  1fc36000  addli r6, r1, 52
00086c  8b901318  sub.s r1, r7, r1
000870  17b46702  sll.d r[9:10], r[16:17], r6
000874  17421202  srl.d r[5:6], r[5:6], r1
000878  0b354120  mul.sl r[11:12], r[3:4], r[5:6]
00087c  17337502  sll.d r[7:8], r[11:12], r7
000880  0b346418  sub.sl r[9:10], r[9:10], r[7:8]
000884  23031200  andi.d r[7:8], r[5:6], 1
000888  0b238310  add.ul r[7:8], r[7:8], r[9:10]
00088c  93206104  setlt.ul r1, r[3:4], r[7:8]
000890  b3800028  zext_int2long r[2:3], r1
000894  8b201210  add.ul r[2:3], r[5:6], r[2:3]
000898  eb518ffc  load.d r[4:5], -56(r30)
00089c  17913002  or.d r[3:4], r[2:3], r[4:5]
0008a0  e38f3e00  loadli.w r31,  24(sp)
0008a4  63cf3e00  loadli.w r30,  28(sp)
0008a8  638e4e00  loadli.w r28,  32(sp)
0008ac  e3cd4e00  loadli.w r27,  36(sp)
0008b0  638d5e00  loadli.w r26,  40(sp)
0008b4  e3cc5e00  loadli.w r25,  44(sp)
0008b8  638c6e00  loadli.w r24,  48(sp)
0008bc  e3cb6e00  loadli.w r23,  52(sp)
0008c0  638b7e00  loadli.w r22,  56(sp)
0008c4  e3ca7e00  loadli.w r21,  60(sp)
0008c8  638a8e00  loadli.w r20,  64(sp)
0008cc  e3c98e00  loadli.w r19,  68(sp)
0008d0  9f8e9e00  addli sp, sp, 72
0008d4  5f800f00  jr r31, 0
0008d8  1f020000  addli r4, zero, 0
0008dc  13224102  setneq.d r4, r[3:4], r[5:6]
0008e0  3b500200  bneq r4, zero, 20
0008e4  9f060000  addli r13, zero, 0
0008e8  1f020000  addli r4, zero, 0
0008ec  27010300  addli.d r[3:4], r[7:8], 0
0008f0  5ba8ffff  j -704
0008f4  33020028  zext_int2long r[5:6], zero
0008f8  13a24702  setneq.d r4, r[16:17], r[5:6]
0008fc  37240200  beq r4, zero, 264
000900  33020028  zext_int2long r[5:6], zero
000904  13224102  setneq.d r4, r[3:4], r[5:6]
000908  b7130200  beq r4, zero, 228
00090c  2bf20f00  lui r4, 255
000910  abf2ffff  lui r5, 1048575
000914  1b17f2ff  ori r14, r4, 4095
000918  9b96f2ff  ori r13, r5, 4095
00091c  13a2f604  setlt.ul r4, r[14:15], r[16:17]
000920  bb630200  bneq r4, zero, 248
000924  9f120000  addli r5, zero, 1
000928  9f270000  addli r15, zero, 2
00092c  1f420000  addli r4, zero, 4
000930  1f081000  addli r16, zero, 8
000934  97485402  srl.d r[18:19], r[9:10], r5
000938  97181403  or.d r[18:19], r[9:10], r[18:19]
00093c  97c9f802  srl.d r[20:21], r[18:19], r15
000940  97983803  or.d r[18:19], r[18:19], r[20:21]
000944  97c94802  srl.d r[20:21], r[18:19], r4
000948  97983803  or.d r[18:19], r[18:19], r[20:21]
00094c  9f092000  addli r19, zero, 16
000950  17ca0803  srl.d r[21:22], r[18:19], r16
000954  17984803  or.d r[17:18], r[18:19], r[21:22]
000958  1f094000  addli r18, zero, 32
00095c  97493803  srl.d r[20:21], r[17:18], r19
000960  17183803  or.d r[17:18], r[17:18], r[20:21]
000964  2b5a5555  lui r20, 349525
000968  17492803  srl.d r[19:20], r[17:18], r18
00096c  17182803  or.d r[17:18], r[17:18], r[19:20]
000970  33990628  sext_int2long r[19:20], r13
000974  17282803  xor.d r[17:18], r[17:18], r[19:20]
000978  1b195a55  ori r18, r20, 1365
00097c  174a5802  srl.d r[21:22], r[17:18], r5
000980  9f090900  addli r19, r18, 0
000984  ab323333  lui r5, 209715
000988  17092a03  and.d r[19:20], r[21:22], r[19:20]
00098c  1b9a3233  ori r20, r5, 819
000990  ab020f0f  lui r5, 61680
000994  0b382819  sub.sl r[17:18], r[17:18], r[19:20]
000998  9f0a0a00  addli r21, r20, 0
00099c  1749f802  srl.d r[19:20], r[17:18], r15
0009a0  97074803  and.d r[16:17], r[17:18], r[21:22]
0009a4  97084903  and.d r[18:19], r[19:20], r[21:22]
0009a8  ab090101  lui r19, 4112
0009ac  1f0a7000  addli r20, zero, 56
0009b0  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
0009b4  97c84702  srl.d r[18:19], r[16:17], r4
0009b8  1b92f2f0  ori r4, r5, 3855
0009bc  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
0009c0  9f020200  addli r5, r4, 0
0009c4  9f481000  addli r17, zero, 12
0009c8  17824702  and.d r[5:6], r[16:17], r[5:6]
0009cc  9b971910  ori r15, r19, 257
0009d0  1f880700  addli r16, r15, 0
0009d4  0b32f220  mul.sl r[5:6], r[5:6], r[16:17]
0009d8  17424203  srl.d r[5:6], r[5:6], r20
0009dc  9f57e2ff  addli r15, r4, -11
0009e0  0b924818  sub.s r4, r17, r4
0009e4  1734f402  sll.d r[9:10], r[9:10], r15
0009e8  db060000  j 52
0009ec  ab01f07f  lui r3, 524032
0009f0  9f060000  addli r13, zero, 0
0009f4  1f020000  addli r4, zero, 0
0009f8  1f010000  addli r2, zero, 0
0009fc  17112302  or.d r[3:4], r[7:8], r[3:4]
000a00  5b86ffff  j -976
000a04  33020028  zext_int2long r[5:6], zero
000a08  13214100  seteq.d r2, r[3:4], r[5:6]
000a0c  bb430100  bneq r2, zero, 240
000a10  27010300  addli.d r[3:4], r[7:8], 0
000a14  5b1e0000  j 240
000a18  1f020000  addli r4, zero, 0
000a1c  13a12604  setlt.ul r2, r[14:15], r[3:4]
000a20  3b530100  bneq r2, zero, 212
000a24  9f160000  addli r13, zero, 1
000a28  9f210000  addli r3, zero, 2
000a2c  1f410000  addli r2, zero, 4
000a30  9f021000  addli r5, zero, 8
000a34  1f072000  addli r14, zero, 16
000a38  97c7d502  srl.d r[16:17], r[12:13], r13
000a3c  9797f502  or.d r[16:17], r[12:13], r[16:17]
000a40  97c83702  srl.d r[18:19], r[16:17], r3
000a44  97971703  or.d r[16:17], r[16:17], r[18:19]
000a48  97c82702  srl.d r[18:19], r[16:17], r2
000a4c  97971703  or.d r[16:17], r[16:17], r[18:19]
000a50  97c85702  srl.d r[18:19], r[16:17], r5
000a54  9f024000  addli r5, zero, 32
000a58  97971703  or.d r[16:17], r[16:17], r[18:19]
000a5c  97c8e702  srl.d r[18:19], r[16:17], r14
000a60  2bf7ffff  lui r14, 1048575
000a64  97971703  or.d r[16:17], r[16:17], r[18:19]
000a68  1b17f7ff  ori r14, r14, 4095
000a6c  97c85702  srl.d r[18:19], r[16:17], r5
000a70  ab525555  lui r5, 349525
000a74  97971703  or.d r[16:17], r[16:17], r[18:19]
000a78  b3180728  sext_int2long r[18:19], r14
000a7c  9b995255  ori r19, r5, 1365
000a80  ab323333  lui r5, 209715
000a84  17a71703  xor.d r[15:16], r[16:17], r[18:19]
000a88  1f8a0900  addli r20, r19, 0
000a8c  1748d702  srl.d r[17:18], r[15:16], r13
000a90  17083803  and.d r[17:18], r[17:18], r[20:21]
000a94  1b993233  ori r18, r5, 819
000a98  ab020101  lui r5, 4112
000a9c  0b370719  sub.sl r[15:16], r[15:16], r[17:18]
000aa0  9f090900  addli r19, r18, 0
000aa4  17483702  srl.d r[17:18], r[15:16], r3
000aa8  17072703  and.d r[15:16], r[15:16], r[19:20]
000aac  ab010f0f  lui r3, 61680
000ab0  17082803  and.d r[17:18], r[17:18], r[19:20]
000ab4  1b99f1f0  ori r18, r3, 3855
000ab8  0b270711  add.ul r[15:16], r[15:16], r[17:18]
000abc  9f090900  addli r19, r18, 0
000ac0  17412702  srl.d r[3:4], r[15:16], r2
000ac4  0b212710  add.ul r[3:4], r[15:16], r[3:4]
000ac8  1b971210  ori r14, r5, 257
000acc  9f027000  addli r5, zero, 56
000ad0  17012103  and.d r[3:4], r[3:4], r[19:20]
000ad4  9f070700  addli r15, r14, 0
000ad8  0b31e120  mul.sl r[3:4], r[3:4], r[15:16]
000adc  17415102  srl.d r[3:4], r[3:4], r5
000ae0  9f52e1ff  addli r5, r2, -11
000ae4  0b114110  add.s r2, r2, r4
000ae8  97b55502  sll.d r[12:13], r[12:13], r5
000aec  1f42e1ff  addli r4, r2, -12
000af0  5b010000  j 8
000af4  9f160000  addli r13, zero, 1
000af8  5b67ffff  j -1224
000afc  ab01f87f  lui r3, 524160
000b00  1f010000  addli r2, zero, 0
000b04  9f060000  addli r13, zero, 0
000b08  db64ffff  j -1244
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
000d10  00100000  exit
000d14  00100000  exit
000d18  00100000  exit
000d1c  00100000  exit
000d20  00100000  exit
000d24  00100000  exit
000d28  00100000  exit
000d2c  00100000  exit
000d30  00100000  exit
000d34  00100000  exit
000d38  00100000  exit
000d3c  00100000  exit
000d40  00100000  exit
000d44  00100000  exit
000d48  00100000  exit
