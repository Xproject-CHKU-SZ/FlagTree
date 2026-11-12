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
000168  9f004fdf  addli r1, r30, -4192
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
0001cc  9f140000  addli r9, zero, 1
0001d0  9f002fdf  addli r1, r30, -4208
0001d4  1f030008  addli r6, zero, 1024
0001d8  17329202  sll.d r[5:6], r[5:6], r9
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
00020c  cbd28302  ble.s r7, r8, 1204
000210  9f008fdf  addli r1, r30, -4160
000214  1f050000  addli r10, zero, 0
000218  ab060080  lui r13, 524288
00021c  2b07803f  lui r14, 260096
000220  e7497fde  storeli.w r7, -4196(r30)
000224  9f808000  addli r1, r1, 64
000228  e7091fde  storeli.w r1, -4200(r30)
00022c  5b0a0000  j 80
000230  e3407fdf  loadli.w r1,  -4164(r30)
000234  1f044fdf  addli r8, r30, -4192
000238  9b311900  slli r3, r18, 1
00023c  2b0200f0  lui r4, 983040
000240  eb520400  load.d r[6:7], 0(r8)
000244  97914100  or r3, r3, r4
000248  00a00000  mfence { lm }
00024c  b3900028  sext_int2long r[2:3], r1
000250  97b09002  sll.d r[2:3], r[2:3], r9
000254  8ba01210  add.ul r[2:3], r[6:7], r[2:3]
000258  ffb17000  s_lm2gm r3, r7, 0(r[2:3])
00025c  00a00200  mfence { lm, gm }
000260  63057fdf  loadli.w r10,  -4168(r30)
000264  e3406fdf  loadli.w r1,  -4172(r30)
000268  e3433fdf  loadli.w r7,  -4196(r30)
00026c  1b251500  xori r10, r10, 1
000270  1f840000  addli r8, r1, 0
000274  3fa07000  blt.s r1, r7, 8
000278  5b890000  j 1096
00027c  9f050404  addli r11, r8, 512
000280  4b91b300  ble.s r7, r11, 68
000284  1f062fdf  addli r12, r30, -4208
000288  b3900528  sext_int2long r[2:3], r11
00028c  0b92b318  sub.s r4, r7, r11
000290  9b211500  xori r3, r10, 1
000294  eb520600  load.d r[6:7], 0(r12)
000298  97b09002  sll.d r[2:3], r[2:3], r9
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
0002cc  9b30a500  slli r1, r10, 10
0002d0  e74b8fde  storeli.w r8, -4164(r30)
0002d4  e70bafde  storeli.w r10, -4168(r30)
0002d8  674bbfde  storeli.w r11, -4172(r30)
0002dc  0b192240  min.s r18, r4, r2
0002e0  1f018fef  addli r2, r30, -2112
0002e4  e74a4fde  storeli.w r4, -4180(r30)
0002e8  8b111110  add.s r3, r2, r1
0002ec  670b3fde  storeli.w r3, -4176(r30)
0002f0  3f0e9200  blt.s r4, r9, 896
0002f4  2b030000  lui r6, 0
0002f8  9f000000  addli r1, zero, 0
0002fc  1f018fdf  addli r2, r30, -4160
000300  9f020010  addli r5, zero, 2048
000304  1f030300  addli r6, r6, 0
000308  0b121410  add.s r4, r8, r1
00030c  c2800102  vload.mz vr1{mr1}, 0(r3)
000310  9f804000  addli r1, r1, 32
000314  9f818100  addli r3, r3, 64
000318  0b125238  mod.s r4, r4, r5
00031c  06b10000  vfp162float_l.rn vr2, vr1
000320  86f00000  vfp162float_h.rn vr1, vr1
000324  1b321200  slli r4, r4, 1
000328  0b126210  add.s r4, r4, r6
00032c  4a000202  vloads.mz vr0{mr1}, 0(r4)
000330  1f028100  addli r4, r2, 64
000334  86310000  vfp162float_l.rn vr3, vr0
000338  06700000  vfp162float_h.rn vr0, vr0
00033c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000340  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
000344  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
000348  1f010101  addli r2, r2, 128
00034c  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
000350  bfee20ff  blt.s r1, r18, -72
000354  00a00000  mfence { lm }
000358  1f0a0000  addli r20, zero, 0
00035c  e30a3fdf  loadli.w r21,  -4200(r30)
000360  63c18aff  loadli.w r2,  -60(r21)
000364  e3808aff  loadli.w r1,  -64(r21)
000368  e38c9aff  loadli.w r25,  -56(r21)
00036c  63ce9aff  loadli.w r28,  -52(r21)
000370  63c5aaff  loadli.w r10,  -44(r21)
000374  e3c8baff  loadli.w r17,  -36(r21)
000378  e383caff  loadli.w r7,  -32(r21)
00037c  63c3caff  loadli.w r6,  -28(r21)
000380  e3cdeaff  loadli.w r27,  -12(r21)
000384  638bfaff  loadli.w r22,  -8(r21)
000388  e3cbfaff  loadli.w r23,  -4(r21)
00038c  638c0a00  loadli.w r24,  0(r21)
000390  63cd0a00  loadli.w r26,  4(r21)
000394  1f0a4a00  addli r20, r20, 32
000398  1722d100  xor r4, r2, r13
00039c  97a1d000  xor r3, r1, r13
0003a0  97a2dc00  xor r5, r25, r13
0003a4  0f020200  exp.f.rn r4, r4
0003a8  8f810100  exp.f.rn r3, r3
0003ac  0b62e210  add.f.rn r4, r4, r14
0003b0  8be1e110  add.f.rn r3, r3, r14
0003b4  8f094118  div.f.rn r19, r2, r4
0003b8  8f853018  div.f.rn r11, r1, r3
0003bc  8f800200  exp.f.rn r1, r5
0003c0  0be8e010  add.f.rn r16, r1, r14
0003c4  1721de00  xor r2, r28, r13
0003c8  e381aaff  loadli.w r3,  -48(r21)
0003cc  e382daff  loadli.w r5,  -24(r21)
0003d0  6382eaff  loadli.w r4,  -16(r21)
0003d4  8f000100  exp.f.rn r1, r2
0003d8  8be4e010  add.f.rn r9, r1, r14
0003dc  63c1daff  loadli.w r2,  -20(r21)
0003e0  e380baff  loadli.w r1,  -40(r21)
0003e4  0f880c19  div.f.rn r16, r25, r16
0003e8  972cd500  xor r25, r10, r13
0003ec  67cc3aff  storeli.w r19, -60(r21)
0003f0  97a9d100  xor r19, r3, r13
0003f4  8f049e18  div.f.rn r9, r28, r9
0003f8  8f8c0c00  exp.f.rn r25, r25
0003fc  0be6ec10  add.f.rn r12, r25, r14
000400  678cbafe  storeli.w r11, -64(r21)
000404  e3851a00  loadli.w r11,  8(r21)
000408  63ce1a00  loadli.w r28,  12(r21)
00040c  8f890900  exp.f.rn r19, r19
000410  e38c2a00  loadli.w r25,  16(r21)
000414  8be9e910  add.f.rn r19, r19, r14
000418  0f06c518  div.f.rn r12, r10, r12
00041c  e78c0aff  storeli.w r16, -56(r21)
000420  17a5d800  xor r10, r17, r13
000424  e7cc9afe  storeli.w r9, -52(r21)
000428  8f843119  div.f.rn r9, r3, r19
00042c  97a1d000  xor r3, r1, r13
000430  8f810100  exp.f.rn r3, r3
000434  0be8e110  add.f.rn r16, r3, r14
000438  8f010500  exp.f.rn r3, r10
00043c  8be9e110  add.f.rn r19, r3, r14
000440  63853a00  loadli.w r10,  24(r21)
000444  e3c12a00  loadli.w r3,  20(r21)
000448  67cdcafe  storeli.w r12, -44(r21)
00044c  678d9afe  storeli.w r9, -48(r21)
000450  8f840019  div.f.rn r9, r1, r16
000454  97a0d300  xor r1, r7, r13
000458  1728d300  xor r16, r6, r13
00045c  0f863819  div.f.rn r12, r17, r19
000460  8f800000  exp.f.rn r1, r1
000464  8be9e010  add.f.rn r19, r1, r14
000468  e3884a00  loadli.w r17,  32(r21)
00046c  8f000800  exp.f.rn r1, r16
000470  0be8e010  add.f.rn r16, r1, r14
000474  e3c03a00  loadli.w r1,  28(r21)
000478  e78d9afe  storeli.w r9, -40(r21)
00047c  97a4d200  xor r9, r5, r13
000480  8f833319  div.f.rn r7, r7, r19
000484  e7cdcafe  storeli.w r12, -36(r21)
000488  0f060319  div.f.rn r12, r6, r16
00048c  0f830400  exp.f.rn r6, r9
000490  9724d100  xor r9, r2, r13
000494  0b68e310  add.f.rn r16, r6, r14
000498  0f830400  exp.f.rn r6, r9
00049c  9724d200  xor r9, r4, r13
0004a0  8b69e310  add.f.rn r19, r6, r14
0004a4  0f830400  exp.f.rn r6, r9
0004a8  8b64e310  add.f.rn r9, r6, r14
0004ac  63c34a00  loadli.w r6,  36(r21)
0004b0  678e7afe  storeli.w r7, -32(r21)
0004b4  8f830219  div.f.rn r7, r5, r16
0004b8  e3825a00  loadli.w r5,  40(r21)
0004bc  67cecafe  storeli.w r12, -28(r21)
0004c0  0f063119  div.f.rn r12, r2, r19
0004c4  63c15a00  loadli.w r2,  44(r21)
0004c8  8f049218  div.f.rn r9, r4, r9
0004cc  17a2dd00  xor r4, r27, r13
0004d0  0f020200  exp.f.rn r4, r4
0004d4  0b68e210  add.f.rn r16, r4, r14
0004d8  63826a00  loadli.w r4,  48(r21)
0004dc  e78e7afe  storeli.w r7, -24(r21)
0004e0  e3c36a00  loadli.w r7,  52(r21)
0004e4  e7cecafe  storeli.w r12, -20(r21)
0004e8  678f9afe  storeli.w r9, -16(r21)
0004ec  9724db00  xor r9, r22, r13
0004f0  0f860d19  div.f.rn r12, r27, r16
0004f4  17a8db00  xor r16, r23, r13
0004f8  8f840400  exp.f.rn r9, r9
0004fc  8be9e410  add.f.rn r19, r9, r14
000500  8f040800  exp.f.rn r9, r16
000504  1728dc00  xor r16, r24, r13
000508  8bede410  add.f.rn r27, r9, r14
00050c  8f040800  exp.f.rn r9, r16
000510  8be7e410  add.f.rn r15, r9, r14
000514  1728dd00  xor r16, r26, r13
000518  8f040800  exp.f.rn r9, r16
00051c  0be4e410  add.f.rn r8, r9, r14
000520  17a8d500  xor r16, r11, r13
000524  8f040800  exp.f.rn r9, r16
000528  0be8e410  add.f.rn r16, r9, r14
00052c  e3847a00  loadli.w r9,  56(r21)
000530  67cfcafe  storeli.w r12, -12(r21)
000534  0f063b19  div.f.rn r12, r22, r19
000538  172bde00  xor r22, r28, r13
00053c  8f89bb19  div.f.rn r19, r23, r27
000540  8f07fc18  div.f.rn r15, r24, r15
000544  0f048d18  div.f.rn r8, r26, r8
000548  0f880519  div.f.rn r16, r11, r16
00054c  e3c57a00  loadli.w r11,  60(r21)
000550  e78fcafe  storeli.w r12, -8(r21)
000554  0f060b00  exp.f.rn r12, r22
000558  17abd800  xor r22, r17, r13
00055c  0b66e610  add.f.rn r12, r12, r14
000560  e7cf3aff  storeli.w r19, -4(r21)
000564  97a9d000  xor r19, r1, r13
000568  0f0b0b00  exp.f.rn r22, r22
00056c  6780fa00  storeli.w r15, 0(r21)
000570  97a7d100  xor r15, r3, r13
000574  8f890900  exp.f.rn r19, r19
000578  0b6beb10  add.f.rn r22, r22, r14
00057c  67c08a00  storeli.w r8, 4(r21)
000580  17a4dc00  xor r8, r25, r13
000584  8f870700  exp.f.rn r15, r15
000588  8be9e910  add.f.rn r19, r19, r14
00058c  0f040400  exp.f.rn r8, r8
000590  e7800a01  storeli.w r16, 8(r21)
000594  1728d500  xor r16, r10, r13
000598  8be7e710  add.f.rn r15, r15, r14
00059c  0b64e410  add.f.rn r8, r8, r14
0005a0  0f080800  exp.f.rn r16, r16
0005a4  0b68e810  add.f.rn r16, r16, r14
0005a8  0f06ce18  div.f.rn r12, r28, r12
0005ac  8f803019  div.f.rn r1, r1, r19
0005b0  8f81f118  div.f.rn r3, r3, r15
0005b4  9727d300  xor r15, r6, r13
0005b8  0f848c18  div.f.rn r8, r25, r8
0005bc  0f050519  div.f.rn r10, r10, r16
0005c0  e7c0ca00  storeli.w r12, 12(r21)
0005c4  0f866819  div.f.rn r12, r17, r22
0005c8  e7c11a00  storeli.w r1, 28(r21)
0005cc  97a0d200  xor r1, r5, r13
0005d0  67c13a00  storeli.w r3, 20(r21)
0005d4  8f800000  exp.f.rn r1, r1
0005d8  67818a00  storeli.w r8, 16(r21)
0005dc  0f840700  exp.f.rn r8, r15
0005e0  97a7d500  xor r15, r11, r13
0005e4  8be0e010  add.f.rn r1, r1, r14
0005e8  0b64e410  add.f.rn r8, r8, r14
0005ec  e781aa00  storeli.w r10, 24(r21)
0005f0  17a5d300  xor r10, r7, r13
0005f4  8f870700  exp.f.rn r15, r15
0005f8  0f050500  exp.f.rn r10, r10
0005fc  8be7e710  add.f.rn r15, r15, r14
000600  6782ca00  storeli.w r12, 32(r21)
000604  17a6d400  xor r12, r9, r13
000608  0b65e510  add.f.rn r10, r10, r14
00060c  0f060600  exp.f.rn r12, r12
000610  0b66e610  add.f.rn r12, r12, r14
000614  8f801218  div.f.rn r1, r5, r1
000618  8f018318  div.f.rn r3, r6, r8
00061c  1723d100  xor r6, r2, r13
000620  1724d200  xor r8, r4, r13
000624  0f030300  exp.f.rn r6, r6
000628  0f040400  exp.f.rn r8, r8
00062c  0b63e310  add.f.rn r6, r6, r14
000630  0b64e410  add.f.rn r8, r8, r14
000634  8f82a318  div.f.rn r5, r7, r10
000638  8f83f518  div.f.rn r7, r11, r15
00063c  e7821a00  storeli.w r1, 40(r21)
000640  67c23a00  storeli.w r3, 36(r21)
000644  0f016118  div.f.rn r2, r2, r6
000648  0f028218  div.f.rn r4, r4, r8
00064c  0f83c418  div.f.rn r6, r9, r12
000650  67c35a00  storeli.w r5, 52(r21)
000654  e7c37a00  storeli.w r7, 60(r21)
000658  e7c22a00  storeli.w r2, 44(r21)
00065c  67834a00  storeli.w r4, 48(r21)
000660  e7836a00  storeli.w r6, 56(r21)
000664  9f8a0a01  addli r21, r21, 128
000668  bf632aff  blt.s r20, r18, -776
00066c  5b010000  j 8
000670  00a00000  mfence { lm }
000674  00a00000  mfence { lm }
000678  9f140000  addli r9, zero, 1
00067c  e3036fdf  loadli.w r7,  -4176(r30)
000680  e3405fdf  loadli.w r1,  -4180(r30)
000684  bfbe90fc  blt.s r1, r9, -1108
000688  9f000000  addli r1, zero, 0
00068c  1f018fdf  addli r2, r30, -4160
000690  9f810300  addli r3, r7, 0
000694  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
000698  1f028100  addli r4, r2, 64
00069c  9f804000  addli r1, r1, 32
0006a0  1f010101  addli r2, r2, 128
0006a4  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
0006a8  06100000  vfloat2fp16_l.rn vr0, vr0
0006ac  06d00000  vfloat2fp16_h.rn vr0, vr1
0006b0  46800102  vstore.mz vr0{mr1}, 0(r3)
0006b4  9f818100  addli r3, r3, 64
0006b8  3fff20ff  blt.s r1, r18, -36
0006bc  db6effff  j -1164
0006c0  9f0e0fdf  addli sp, r30, -4224
0006c4  e38fae20  loadli.w r31,  4176(sp)
0006c8  63cfae20  loadli.w r30,  4180(sp)
0006cc  638ebe20  loadli.w r28,  4184(sp)
0006d0  e3cdbe20  loadli.w r27,  4188(sp)
0006d4  638dce20  loadli.w r26,  4192(sp)
0006d8  e3ccce20  loadli.w r25,  4196(sp)
0006dc  638cde20  loadli.w r24,  4200(sp)
0006e0  e3cbde20  loadli.w r23,  4204(sp)
0006e4  638bee20  loadli.w r22,  4208(sp)
0006e8  e3caee20  loadli.w r21,  4212(sp)
0006ec  638afe20  loadli.w r20,  4216(sp)
0006f0  e3c9fe20  loadli.w r19,  4220(sp)
0006f4  9f8e0e21  addli sp, sp, 4224
0006f8  5f800f00  jr r31, 0
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
