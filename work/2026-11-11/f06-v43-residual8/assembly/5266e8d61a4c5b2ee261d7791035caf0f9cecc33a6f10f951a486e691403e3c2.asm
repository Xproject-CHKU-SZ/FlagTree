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
0000dc  9f8e8eff  addli sp, sp, -64
0000e0  1f8f0e00  addli r30, sp, 0
0000e4  805a0002  load_param_i r21, 0
0000e8  e3493f00  loadli.w r19,  28(r30)
0000ec  e3003f00  loadli.w r1,  24(r30)
0000f0  630a4f00  loadli.w r20,  32(r30)
0000f4  8b901920  mul.s r1, r19, r1
0000f8  0b9b4021  mul.s r22, r1, r20
0000fc  cb205b01  ble.s r22, r21, 40
000100  80db0002  load_param_i r23, 1
000104  8b904a31  div.s r1, r21, r20
000108  6b510f00  load.d r[3:4], 0(r30)
00010c  6b528f00  load.d r[5:6], 8(r30)
000110  6b530f01  load.d r[7:8], 16(r30)
000114  0b943031  div.s r8, r1, r19
000118  d7250000  jal 300
00011c  8b9a7a11  add.s r21, r21, r23
000120  bf9f6aff  blt.s r21, r22, -28
000124  00a00300  mfence { lm, sm, gm }
000128  00100000  exit
00012c  9f8e0edf  addli sp, sp, -4224
000130  67c5ee21  storeli.w r30, 4180(sp)
000134  1f8f0e21  addli r30, sp, 4224
000138  00350002  core_id r10
00013c  e7c73e21  storeli.w r19, 4220(sp)
000140  e7874e21  storeli.w r20, 4216(sp)
000144  67c75e21  storeli.w r21, 4212(sp)
000148  67876e21  storeli.w r22, 4208(sp)
00014c  e7c67e21  storeli.w r23, 4204(sp)
000150  e7868e21  storeli.w r24, 4200(sp)
000154  67c69e21  storeli.w r25, 4196(sp)
000158  6786ae21  storeli.w r26, 4192(sp)
00015c  e7c5be21  storeli.w r27, 4188(sp)
000160  e785ce21  storeli.w r28, 4184(sp)
000164  6785fe21  storeli.w r31, 4176(sp)
000168  9f006fdf  addli r1, r30, -4176
00016c  73b06000  store.d r[7:8], 0(r1)
000170  80500102  load_param_i r1, 2
000174  1f431000  addli r6, zero, 12
000178  ab030200  lui r7, 32
00017c  0b936020  mul.s r6, r1, r6
000180  0b958050  fmac.s r10, r1, r8
000184  8b846338  mod.u r9, r7, r6
000188  8b806330  div.u r1, r7, r6
00018c  13139504  setlt.s r6, r10, r9
000190  8b139540  min.s r7, r10, r9
000194  8b131550  fmac.s r7, r10, r1
000198  1bb45300  slli r8, r7, 5
00019c  8b906010  add.s r1, r1, r6
0001a0  00330002  core_id r6
0001a4  8b907010  add.s r1, r1, r7
0001a8  9bb35000  slli r7, r1, 5
0001ac  3b700300  bneq r6, zero, 28
0001b0  9f000020  addli r1, zero, 4096
0001b4  2b0300f0  lui r6, 983040
0001b8  97906000  or r1, r1, r6
0001bc  2b030000  lui r6, 0
0001c0  1f030300  addli r6, r6, 0
0001c4  ff006200  l_gm2sm r1, r6, 0(r[5:6])
0001c8  33120428  sext_int2long r[5:6], r8
0001cc  1f150000  addli r10, zero, 1
0001d0  9f004fdf  addli r1, r30, -4192
0001d4  1f030008  addli r6, zero, 1024
0001d8  1732a202  sll.d r[5:6], r[5:6], r10
0001dc  73b02000  store.d r[3:4], 0(r1)
0001e0  8b204110  add.ul r[2:3], r[3:4], r[5:6]
0001e4  2b0200f0  lui r4, 983040
0001e8  9f028fef  addli r5, r30, -2112
0001ec  97114300  or r3, r6, r4
0001f0  ffa15000  l_gm2lm r3, r5, 0(r[2:3])
0001f4  abf00000  lui r1, 15
0001f8  00a00200  mfence { lm, gm }
0001fc  9b90f0ff  ori r1, r1, 4095
000200  00200300  mfence { sm, gm }
000204  80a10004  csr_set csr3, r1
000208  00d00100  sync_group
00020c  4bfc8300  ble.s r7, r8, 796
000210  9f008fdf  addli r1, r30, -4160
000214  ab070000  lui r15, 0
000218  9f040000  addli r9, zero, 0
00021c  1f060010  addli r12, zero, 2048
000220  ab060080  lui r13, 524288
000224  2b07803f  lui r14, 260096
000228  e74a7fde  storeli.w r7, -4180(r30)
00022c  9b900002  ori r1, r1, 32
000230  9f870700  addli r15, r15, 0
000234  e70a1fde  storeli.w r1, -4184(r30)
000238  db080000  j 68
00023c  b3100428  sext_int2long r[2:3], r8
000240  1f046fdf  addli r8, r30, -4176
000244  9b311900  slli r3, r18, 1
000248  2b0200f0  lui r4, 983040
00024c  9ba41400  xori r9, r9, 1
000250  eb520400  load.d r[6:7], 0(r8)
000254  97b0a002  sll.d r[2:3], r[2:3], r10
000258  97914100  or r3, r3, r4
00025c  00a00000  mfence { lm }
000260  1f040800  addli r8, r16, 0
000264  8ba01210  add.ul r[2:3], r[6:7], r[2:3]
000268  ffb17000  s_lm2gm r3, r7, 0(r[2:3])
00026c  00a00200  mfence { lm, gm }
000270  e3435fdf  loadli.w r7,  -4180(r30)
000274  3f207800  blt.s r16, r7, 8
000278  5b560000  j 688
00027c  1f080404  addli r16, r8, 512
000280  4b910301  ble.s r7, r16, 68
000284  9f054fdf  addli r11, r30, -4192
000288  b3100828  sext_int2long r[2:3], r16
00028c  0b920319  sub.s r4, r7, r16
000290  9ba11400  xori r3, r9, 1
000294  ebd20500  load.d r[6:7], 0(r11)
000298  97b0a002  sll.d r[2:3], r[2:3], r10
00029c  9bb1a100  slli r3, r3, 10
0002a0  8ba01210  add.ul r[2:3], r[6:7], r[2:3]
0002a4  9f020004  addli r5, zero, 512
0002a8  1f038fef  addli r6, r30, -2112
0002ac  0b125240  min.s r4, r4, r5
0002b0  ab0200f0  lui r5, 983040
0002b4  8b113310  add.s r3, r6, r3
0002b8  1b321200  slli r4, r4, 1
0002bc  17125200  or r4, r4, r5
0002c0  7fa23000  l_gm2lm r4, r3, 0(r[2:3])
0002c4  0b928318  sub.s r4, r7, r8
0002c8  1f010004  addli r2, zero, 512
0002cc  9bb0a400  slli r1, r9, 10
0002d0  0b192240  min.s r18, r4, r2
0002d4  1f018fef  addli r2, r30, -2112
0002d8  e70b4fde  storeli.w r4, -4168(r30)
0002dc  8b111110  add.s r3, r2, r1
0002e0  e74b3fde  storeli.w r3, -4164(r30)
0002e4  bf57a200  blt.s r4, r10, 500
0002e8  9f000000  addli r1, zero, 0
0002ec  1f018fdf  addli r2, r30, -4160
0002f0  0b121410  add.s r4, r8, r1
0002f4  c2800102  vload.mz vr1{mr1}, 0(r3)
0002f8  9f804000  addli r1, r1, 32
0002fc  9f818100  addli r3, r3, 64
000300  0b12c238  mod.s r4, r4, r12
000304  06b10000  vfp162float_l.rn vr2, vr1
000308  86f00000  vfp162float_h.rn vr1, vr1
00030c  1b321200  slli r4, r4, 1
000310  0b12f210  add.s r4, r4, r15
000314  4a000202  vloads.mz vr0{mr1}, 0(r4)
000318  1f028100  addli r4, r2, 64
00031c  86310000  vfp162float_l.rn vr3, vr0
000320  06700000  vfp162float_h.rn vr0, vr0
000324  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000328  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
00032c  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
000330  1f010101  addli r2, r2, 128
000334  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
000338  bfee20ff  blt.s r1, r18, -72
00033c  00a00000  mfence { lm }
000340  1f0a0000  addli r20, zero, 0
000344  e30a5fdf  loadli.w r21,  -4184(r30)
000348  e381daff  loadli.w r3,  -24(r21)
00034c  e380caff  loadli.w r1,  -32(r21)
000350  63c1caff  loadli.w r2,  -28(r21)
000354  e3ccdaff  loadli.w r25,  -20(r21)
000358  638beaff  loadli.w r22,  -16(r21)
00035c  63cceaff  loadli.w r24,  -12(r21)
000360  e38dfaff  loadli.w r27,  -8(r21)
000364  e38b1a00  loadli.w r23,  8(r21)
000368  63cd1a00  loadli.w r26,  12(r21)
00036c  63852a00  loadli.w r10,  16(r21)
000370  e3c32a00  loadli.w r7,  20(r21)
000374  e3c83a00  loadli.w r17,  28(r21)
000378  1f0a2a00  addli r20, r20, 16
00037c  17a3d100  xor r6, r3, r13
000380  17a2d000  xor r4, r1, r13
000384  9722d100  xor r5, r2, r13
000388  0f030300  exp.f.rn r6, r6
00038c  0f020200  exp.f.rn r4, r4
000390  8f820200  exp.f.rn r5, r5
000394  0b63e310  add.f.rn r6, r6, r14
000398  0b62e210  add.f.rn r4, r4, r14
00039c  8be2e210  add.f.rn r5, r5, r14
0003a0  8f816118  div.f.rn r3, r3, r6
0003a4  0f8e4018  div.f.rn r28, r1, r4
0003a8  8f055118  div.f.rn r11, r2, r5
0003ac  97a0dc00  xor r1, r25, r13
0003b0  63830a00  loadli.w r6,  0(r21)
0003b4  e3c2faff  loadli.w r5,  -4(r21)
0003b8  63c20a00  loadli.w r4,  4(r21)
0003bc  8f800000  exp.f.rn r1, r1
0003c0  0be1e010  add.f.rn r2, r1, r14
0003c4  e3803a00  loadli.w r1,  24(r21)
0003c8  9729d300  xor r19, r6, r13
0003cc  8f890900  exp.f.rn r19, r19
0003d0  8be9e910  add.f.rn r19, r19, r14
0003d4  e78e3afe  storeli.w r3, -24(r21)
0003d8  9721db00  xor r3, r22, r13
0003dc  0f812c18  div.f.rn r2, r25, r2
0003e0  97acdd00  xor r25, r27, r13
0003e4  678ecaff  storeli.w r28, -32(r21)
0003e8  17aed200  xor r28, r5, r13
0003ec  67cebafe  storeli.w r11, -28(r21)
0003f0  9725dc00  xor r11, r24, r13
0003f4  8f810100  exp.f.rn r3, r3
0003f8  8f850500  exp.f.rn r11, r11
0003fc  8f8c0c00  exp.f.rn r25, r25
000400  0f0e0e00  exp.f.rn r28, r28
000404  8be1e110  add.f.rn r3, r3, r14
000408  0b6eee10  add.f.rn r28, r28, r14
00040c  8be5e510  add.f.rn r11, r11, r14
000410  8becec10  add.f.rn r25, r25, r14
000414  0f033319  div.f.rn r6, r6, r19
000418  9729d200  xor r19, r4, r13
00041c  e7ce2afe  storeli.w r2, -20(r21)
000420  8f013b18  div.f.rn r3, r22, r3
000424  0f01bc18  div.f.rn r2, r24, r11
000428  8f859d19  div.f.rn r11, r27, r25
00042c  8f82c219  div.f.rn r5, r5, r28
000430  67806a00  storeli.w r6, 0(r21)
000434  17a3d300  xor r6, r7, r13
000438  0f030300  exp.f.rn r6, r6
00043c  0b63e310  add.f.rn r6, r6, r14
000440  678f3afe  storeli.w r3, -16(r21)
000444  8f810900  exp.f.rn r3, r19
000448  97a9d800  xor r19, r17, r13
00044c  67cf2afe  storeli.w r2, -12(r21)
000450  17a1db00  xor r2, r23, r13
000454  e78fbafe  storeli.w r11, -8(r21)
000458  97a5d000  xor r11, r1, r13
00045c  e7cf5afe  storeli.w r5, -4(r21)
000460  9722d500  xor r5, r10, r13
000464  8be1e110  add.f.rn r3, r3, r14
000468  0f010100  exp.f.rn r2, r2
00046c  8f820200  exp.f.rn r5, r5
000470  8f850500  exp.f.rn r11, r11
000474  8f890900  exp.f.rn r19, r19
000478  0b61e110  add.f.rn r2, r2, r14
00047c  8be2e210  add.f.rn r5, r5, r14
000480  8be5e510  add.f.rn r11, r11, r14
000484  8be9e910  add.f.rn r19, r19, r14
000488  0f836318  div.f.rn r6, r7, r6
00048c  8f013218  div.f.rn r3, r4, r3
000490  1722dd00  xor r4, r26, r13
000494  0f020200  exp.f.rn r4, r4
000498  0f812b18  div.f.rn r2, r23, r2
00049c  8f025518  div.f.rn r5, r10, r5
0004a0  8f80b018  div.f.rn r1, r1, r11
0004a4  8f833819  div.f.rn r7, r17, r19
0004a8  0b62e210  add.f.rn r4, r4, r14
0004ac  67c16a00  storeli.w r6, 20(r21)
0004b0  67c03a00  storeli.w r3, 4(r21)
0004b4  0f024d18  div.f.rn r4, r26, r4
0004b8  e7802a00  storeli.w r2, 8(r21)
0004bc  67815a00  storeli.w r5, 16(r21)
0004c0  e7811a00  storeli.w r1, 24(r21)
0004c4  e7c17a00  storeli.w r7, 28(r21)
0004c8  e7c04a00  storeli.w r4, 12(r21)
0004cc  9f8a8a00  addli r21, r21, 64
0004d0  bf692aff  blt.s r20, r18, -392
0004d4  5b010000  j 8
0004d8  00a00000  mfence { lm }
0004dc  00a00000  mfence { lm }
0004e0  1f150000  addli r10, zero, 1
0004e4  e3437fdf  loadli.w r7,  -4164(r30)
0004e8  e3007fdf  loadli.w r1,  -4168(r30)
0004ec  3fc5a0fe  blt.s r1, r10, -688
0004f0  9f000000  addli r1, zero, 0
0004f4  1f018fdf  addli r2, r30, -4160
0004f8  9f810300  addli r3, r7, 0
0004fc  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
000500  1f028100  addli r4, r2, 64
000504  9f804000  addli r1, r1, 32
000508  1f010101  addli r2, r2, 128
00050c  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
000510  06100000  vfloat2fp16_l.rn vr0, vr0
000514  06d00000  vfloat2fp16_h.rn vr0, vr1
000518  46800102  vstore.mz vr0{mr1}, 0(r3)
00051c  9f818100  addli r3, r3, 64
000520  3fff20ff  blt.s r1, r18, -36
000524  5ba3ffff  j -744
000528  9f0e0fdf  addli sp, r30, -4224
00052c  e38fae20  loadli.w r31,  4176(sp)
000530  63cfae20  loadli.w r30,  4180(sp)
000534  638ebe20  loadli.w r28,  4184(sp)
000538  e3cdbe20  loadli.w r27,  4188(sp)
00053c  638dce20  loadli.w r26,  4192(sp)
000540  e3ccce20  loadli.w r25,  4196(sp)
000544  638cde20  loadli.w r24,  4200(sp)
000548  e3cbde20  loadli.w r23,  4204(sp)
00054c  638bee20  loadli.w r22,  4208(sp)
000550  e3caee20  loadli.w r21,  4212(sp)
000554  638afe20  loadli.w r20,  4216(sp)
000558  e3c9fe20  loadli.w r19,  4220(sp)
00055c  9f8e0e21  addli sp, sp, 4224
000560  5f800f00  jr r31, 0
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
000790  00100000  exit
000794  00100000  exit
000798  00100000  exit
00079c  00100000  exit
0007a0  00100000  exit
