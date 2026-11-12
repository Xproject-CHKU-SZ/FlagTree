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
00012c  9f8e8eee  addli sp, sp, -2240
000130  67c9ee11  storeli.w r30, 2196(sp)
000134  1f8f8e11  addli r30, sp, 2240
000138  e7cb3e11  storeli.w r19, 2236(sp)
00013c  e78b4e11  storeli.w r20, 2232(sp)
000140  67cb5e11  storeli.w r21, 2228(sp)
000144  678b6e11  storeli.w r22, 2224(sp)
000148  e7ca7e11  storeli.w r23, 2220(sp)
00014c  e78a8e11  storeli.w r24, 2216(sp)
000150  67ca9e11  storeli.w r25, 2212(sp)
000154  678aae11  storeli.w r26, 2208(sp)
000158  e7c9be11  storeli.w r27, 2204(sp)
00015c  e789ce11  storeli.w r28, 2200(sp)
000160  6789fe11  storeli.w r31, 2192(sp)
000164  9f002fef  addli r1, r30, -2160
000168  73b06000  store.d r[7:8], 0(r1)
00016c  80500102  load_param_i r1, 2
000170  00330002  core_id r6
000174  80330002  core_id r7
000178  0b938050  fmac.s r6, r1, r8
00017c  1b348300  slli r8, r6, 8
000180  3bf00300  bneq r7, zero, 28
000184  9f030020  addli r7, zero, 4096
000188  ab0400f0  lui r9, 983040
00018c  97939300  or r7, r7, r9
000190  ab040000  lui r9, 0
000194  9f840400  addli r9, r9, 0
000198  ff039200  l_gm2sm r7, r9, 0(r[5:6])
00019c  33120428  sext_int2long r[5:6], r8
0001a0  9f130000  addli r7, zero, 1
0001a4  17327202  sll.d r[5:6], r[5:6], r7
0001a8  9f030004  addli r7, zero, 512
0001ac  8b244110  add.ul r[10:11], r[3:4], r[5:6]
0001b0  2b0200f0  lui r4, 983040
0001b4  9f028ff7  addli r5, r30, -1088
0001b8  17924300  or r4, r7, r4
0001bc  7fa25400  l_gm2lm r4, r5, 0(r[10:11])
0001c0  2bf20000  lui r4, 15
0001c4  9f72f07f  addli r5, zero, 16383
0001c8  00a00200  mfence { lm, gm }
0001cc  1b12f2ff  ori r4, r4, 4095
0001d0  00200300  mfence { sm, gm }
0001d4  80210204  csr_set csr3, r4
0001d8  00d00100  sync_group
0001dc  bffd6202  blt.s r5, r6, 1916
0001e0  1f020018  addli r4, zero, 3072
0001e4  9f028fef  addli r5, r30, -2112
0001e8  1f050000  addli r10, zero, 0
0001ec  2b060080  lui r12, 524288
0001f0  8b904020  mul.s r1, r1, r4
0001f4  9f868200  addli r13, r5, 64
0001f8  9f850201  addli r11, r5, 128
0001fc  1f878201  addli r14, r5, 192
000200  9f870202  addli r15, r5, 256
000204  1f888202  addli r16, r5, 320
000208  9f880203  addli r17, r5, 384
00020c  1f898203  addli r18, r5, 448
000210  9f890204  addli r19, r5, 512
000214  1f8a8204  addli r20, r5, 576
000218  9f8a0205  addli r21, r5, 640
00021c  1f8b8205  addli r22, r5, 704
000220  1f8c8206  addli r24, r5, 832
000224  9f8c0207  addli r25, r5, 896
000228  1f8d8207  addli r26, r5, 960
00022c  1f021fef  addli r4, r30, -2168
000230  9f8b0206  addli r23, r5, 768
000234  67481fee  storeli.w r1, -2172(r30)
000238  abf03f00  lui r1, 1023
00023c  73302200  store.d r[3:4], 0(r4)
000240  6708dfee  storeli.w r13, -2176(r30)
000244  e747bfee  storeli.w r11, -2180(r30)
000248  e707efee  storeli.w r14, -2184(r30)
00024c  6747ffee  storeli.w r15, -2188(r30)
000250  67071fef  storeli.w r17, -2192(r30)
000254  e7462fef  storeli.w r18, -2196(r30)
000258  e7060fef  storeli.w r16, -2200(r30)
00025c  67463fef  storeli.w r19, -2204(r30)
000260  67064fef  storeli.w r20, -2208(r30)
000264  e7455fef  storeli.w r21, -2212(r30)
000268  e7056fef  storeli.w r22, -2216(r30)
00026c  67458fef  storeli.w r24, -2220(r30)
000270  67059fef  storeli.w r25, -2224(r30)
000274  e744afef  storeli.w r26, -2228(r30)
000278  9b90f0ff  ori r1, r1, 4095
00027c  e7041fee  storeli.w r1, -2232(r30)
000280  abf0ffff  lui r1, 1048575
000284  9b9000fe  ori r1, r1, 4064
000288  67441fee  storeli.w r1, -2236(r30)
00028c  ab00803f  lui r1, 260096
000290  63420fef  loadli.w r4,  -2172(r30)
000294  8b1d4410  add.s r27, r8, r4
000298  63029fee  loadli.w r4,  -2232(r30)
00029c  bf50b201  blt.s r4, r27, 52
0002a0  1b231500  xori r6, r10, 1
0002a4  33920d28  sext_int2long r[5:6], r27
0002a8  9f130000  addli r7, zero, 1
0002ac  9f048ff7  addli r9, r30, -1088
0002b0  1b339300  slli r6, r6, 9
0002b4  17327202  sll.d r[5:6], r[5:6], r7
0002b8  ab0300f0  lui r7, 983040
0002bc  0b936410  add.s r6, r9, r6
0002c0  9f040004  addli r9, zero, 512
0002c4  0b224110  add.ul r[5:6], r[3:4], r[5:6]
0002c8  97937400  or r7, r9, r7
0002cc  ff236200  l_gm2lm r7, r6, 0(r[5:6])
0002d0  9f040010  addli r9, zero, 2048
0002d4  1b339500  slli r6, r10, 9
0002d8  1f018ff7  addli r2, r30, -1088
0002dc  9b120402  ori r5, r8, 32
0002e0  9b130404  ori r7, r8, 64
0002e4  e70bbfef  storeli.w r27, -2120(r30)
0002e8  e74bafee  storeli.w r10, -2116(r30)
0002ec  0b129438  mod.s r4, r8, r9
0002f0  0b116110  add.s r2, r2, r6
0002f4  2b030000  lui r6, 0
0002f8  8b929238  mod.s r5, r5, r9
0002fc  1f030300  addli r6, r6, 0
000300  42000102  vload.mz vr0{mr1}, 0(r2)
000304  9f018100  addli r3, r2, 64
000308  c2800102  vload.mz vr1{mr1}, 0(r3)
00030c  670b3fee  storeli.w r3, -2128(r30)
000310  9f010101  addli r3, r2, 128
000314  1b321200  slli r4, r4, 1
000318  9bb21200  slli r5, r5, 1
00031c  674b3fee  storeli.w r3, -2124(r30)
000320  0b126210  add.s r4, r4, r6
000324  06320000  vfp162float_l.rn vr4, vr0
000328  06700000  vfp162float_h.rn vr0, vr0
00032c  4a010202  vloads.mz vr2{mr1}, 0(r4)
000330  0b926210  add.s r4, r5, r6
000334  8b929338  mod.s r5, r7, r9
000338  86b20000  vfp162float_l.rn vr5, vr1
00033c  86f00000  vfp162float_h.rn vr1, vr1
000340  ca010202  vloads.mz vr3{mr1}, 0(r4)
000344  1bb21200  slli r4, r5, 1
000348  9b120406  ori r5, r8, 96
00034c  0b126210  add.s r4, r4, r6
000350  06330100  vfp162float_l.rn vr6, vr2
000354  06710100  vfp162float_h.rn vr2, vr2
000358  86b30100  vfp162float_l.rn vr7, vr3
00035c  86f10100  vfp162float_h.rn vr3, vr3
000360  16112002  vadd.f.mz.rn vr2{mr1}, vr0, vr2
000364  4a000202  vloads.mz vr0{mr1}, 0(r4)
000368  0b929238  mod.s r4, r5, r9
00036c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
000370  42830102  vload.mz vr6{mr1}, 0(r3)
000374  9f018fef  addli r3, r30, -2112
000378  9b12040e  ori r5, r8, 224
00037c  96927202  vadd.f.mz.rn vr5{mr1}, vr5, vr7
000380  8b929238  mod.s r5, r5, r9
000384  46902602  vstore_mask16.mz vr2{mr1}, 0(r13)
000388  16913002  vadd.f.mz.rn vr2{mr1}, vr1, vr3
00038c  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
000390  9f018101  addli r3, r2, 192
000394  1b321200  slli r4, r4, 1
000398  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
00039c  86310300  vfp162float_l.rn vr3, vr6
0003a0  06720300  vfp162float_h.rn vr4, vr6
0003a4  42830102  vload.mz vr6{mr1}, 0(r3)
0003a8  e74a3fee  storeli.w r3, -2132(r30)
0003ac  9f010102  addli r3, r2, 256
0003b0  0b126210  add.s r4, r4, r6
0003b4  46102702  vstore_mask16.mz vr2{mr1}, 0(r14)
0003b8  e70a3fee  storeli.w r3, -2136(r30)
0003bc  ca000202  vloads.mz vr1{mr1}, 0(r4)
0003c0  1b120408  ori r4, r8, 128
0003c4  0b129238  mod.s r4, r4, r9
0003c8  86320000  vfp162float_l.rn vr5, vr0
0003cc  06700000  vfp162float_h.rn vr0, vr0
0003d0  16915102  vadd.f.mz.rn vr2{mr1}, vr3, vr5
0003d4  96110202  vadd.f.mz.rn vr3{mr1}, vr4, vr0
0003d8  06320300  vfp162float_l.rn vr4, vr6
0003dc  86720300  vfp162float_h.rn vr5, vr6
0003e0  1b321200  slli r4, r4, 1
0003e4  0b126210  add.s r4, r4, r6
0003e8  46902702  vstore_mask16.mz vr2{mr1}, 0(r15)
0003ec  46103802  vstore_mask16.mz vr3{mr1}, 0(r16)
0003f0  4a000202  vloads.mz vr0{mr1}, 0(r4)
0003f4  1b12040a  ori r4, r8, 160
0003f8  06b30000  vfp162float_l.rn vr6, vr1
0003fc  86f00000  vfp162float_h.rn vr1, vr1
000400  0b129238  mod.s r4, r4, r9
000404  16116202  vadd.f.mz.rn vr2{mr1}, vr4, vr6
000408  42820102  vload.mz vr4{mr1}, 0(r3)
00040c  96901202  vadd.f.mz.rn vr1{mr1}, vr5, vr1
000410  9f018102  addli r3, r2, 320
000414  674a3fee  storeli.w r3, -2140(r30)
000418  1b321200  slli r4, r4, 1
00041c  46902802  vstore_mask16.mz vr2{mr1}, 0(r17)
000420  46101902  vstore_mask16.mz vr1{mr1}, 0(r18)
000424  0b126210  add.s r4, r4, r6
000428  86300200  vfp162float_l.rn vr1, vr4
00042c  06710200  vfp162float_h.rn vr2, vr4
000430  86310000  vfp162float_l.rn vr3, vr0
000434  06720000  vfp162float_h.rn vr4, vr0
000438  4a000202  vloads.mz vr0{mr1}, 0(r4)
00043c  1b12040c  ori r4, r8, 192
000440  0b129238  mod.s r4, r4, r9
000444  96913002  vadd.f.mz.rn vr3{mr1}, vr1, vr3
000448  c2800102  vload.mz vr1{mr1}, 0(r3)
00044c  16114102  vadd.f.mz.rn vr2{mr1}, vr2, vr4
000450  9f010103  addli r3, r2, 384
000454  e7493fee  storeli.w r3, -2148(r30)
000458  c2820102  vload.mz vr5{mr1}, 0(r3)
00045c  9f018103  addli r3, r2, 448
000460  1b321200  slli r4, r4, 1
000464  46903902  vstore_mask16.mz vr3{mr1}, 0(r19)
000468  46102a02  vstore_mask16.mz vr2{mr1}, 0(r20)
00046c  670a3fee  storeli.w r3, -2144(r30)
000470  0b126210  add.s r4, r4, r6
000474  06b10000  vfp162float_l.rn vr2, vr1
000478  86f00000  vfp162float_h.rn vr1, vr1
00047c  4a020202  vloads.mz vr4{mr1}, 0(r4)
000480  1bb21200  slli r4, r5, 1
000484  86310000  vfp162float_l.rn vr3, vr0
000488  06700000  vfp162float_h.rn vr0, vr0
00048c  0b126210  add.s r4, r4, r6
000490  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000494  ca010202  vloads.mz vr3{mr1}, 0(r4)
000498  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
00049c  c2800102  vload.mz vr1{mr1}, 0(r3)
0004a0  9f810b00  addli r3, r23, 0
0004a4  46902a02  vstore_mask16.mz vr2{mr1}, 0(r21)
0004a8  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
0004ac  06b00200  vfp162float_l.rn vr0, vr5
0004b0  06f10200  vfp162float_h.rn vr2, vr5
0004b4  06b30000  vfp162float_l.rn vr6, vr1
0004b8  86f00000  vfp162float_h.rn vr1, vr1
0004bc  86320200  vfp162float_l.rn vr5, vr4
0004c0  06720200  vfp162float_h.rn vr4, vr4
0004c4  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
0004c8  16114102  vadd.f.mz.rn vr2{mr1}, vr2, vr4
0004cc  86b30100  vfp162float_l.rn vr7, vr3
0004d0  86f10100  vfp162float_h.rn vr3, vr3
0004d4  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
0004d8  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
0004dc  16127302  vadd.f.mz.rn vr4{mr1}, vr6, vr7
0004e0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0004e4  46904c02  vstore_mask16.mz vr4{mr1}, 0(r25)
0004e8  46101d02  vstore_mask16.mz vr1{mr1}, 0(r26)
0004ec  00a00000  mfence { lm }
0004f0  63498fee  loadli.w r18,  -2236(r30)
0004f4  e3c286ff  loadli.w r5,  -60(r13)
0004f8  638286ff  loadli.w r4,  -64(r13)
0004fc  638c96ff  loadli.w r24,  -56(r13)
000500  e3cd96ff  loadli.w r27,  -52(r13)
000504  e3c8a6ff  loadli.w r17,  -44(r13)
000508  e385b6ff  loadli.w r11,  -40(r13)
00050c  63c7b6ff  loadli.w r14,  -36(r13)
000510  63ced6ff  loadli.w r28,  -20(r13)
000514  e38ce6ff  loadli.w r25,  -16(r13)
000518  63cde6ff  loadli.w r26,  -12(r13)
00051c  e38af6ff  loadli.w r21,  -8(r13)
000520  e3cbf6ff  loadli.w r23,  -4(r13)
000524  e3890600  loadli.w r19,  0(r13)
000528  63ca0600  loadli.w r20,  4(r13)
00052c  1f094900  addli r18, r18, 32
000530  97a3c200  xor r7, r5, r12
000534  1723c200  xor r6, r4, r12
000538  1725cc00  xor r10, r24, r12
00053c  8f830300  exp.f.rn r7, r7
000540  0f030300  exp.f.rn r6, r6
000544  8be31310  add.f.rn r7, r7, r1
000548  0b631310  add.f.rn r6, r6, r1
00054c  8f877218  div.f.rn r15, r5, r7
000550  0f0b6218  div.f.rn r22, r4, r6
000554  0f020500  exp.f.rn r4, r10
000558  97a2cd00  xor r5, r27, r12
00055c  0b681210  add.f.rn r16, r4, r1
000560  6383a6ff  loadli.w r6,  -48(r13)
000564  6385c6ff  loadli.w r10,  -32(r13)
000568  e383d6ff  loadli.w r7,  -24(r13)
00056c  0f820200  exp.f.rn r4, r5
000570  8b621210  add.f.rn r5, r4, r1
000574  63c2c6ff  loadli.w r4,  -28(r13)
000578  67ccf6fe  storeli.w r15, -60(r13)
00057c  8f070c19  div.f.rn r15, r24, r16
000580  1728c300  xor r16, r6, r12
000584  17acc800  xor r24, r17, r12
000588  8f825d18  div.f.rn r5, r27, r5
00058c  678c66ff  storeli.w r22, -64(r13)
000590  638b1600  loadli.w r22,  8(r13)
000594  e38d2600  loadli.w r27,  16(r13)
000598  0f080800  exp.f.rn r16, r16
00059c  0f0c0c00  exp.f.rn r24, r24
0005a0  8b641c10  add.f.rn r9, r24, r1
0005a4  0b681810  add.f.rn r16, r16, r1
0005a8  63cc1600  loadli.w r24,  12(r13)
0005ac  8f849818  div.f.rn r9, r17, r9
0005b0  e7cc56fe  storeli.w r5, -52(r13)
0005b4  e78cf6fe  storeli.w r15, -56(r13)
0005b8  9727c700  xor r15, r14, r12
0005bc  e3c82600  loadli.w r17,  20(r13)
0005c0  8f020319  div.f.rn r5, r6, r16
0005c4  17a3c500  xor r6, r11, r12
0005c8  0f030300  exp.f.rn r6, r6
0005cc  0b681310  add.f.rn r16, r6, r1
0005d0  0f830700  exp.f.rn r6, r15
0005d4  8b671310  add.f.rn r15, r6, r1
0005d8  63833600  loadli.w r6,  24(r13)
0005dc  67cd96fe  storeli.w r9, -44(r13)
0005e0  9724c500  xor r9, r10, r12
0005e4  8f840400  exp.f.rn r9, r9
0005e8  678d56fe  storeli.w r5, -48(r13)
0005ec  8f820519  div.f.rn r5, r11, r16
0005f0  9725c200  xor r11, r4, r12
0005f4  8f07f718  div.f.rn r15, r14, r15
0005f8  8be41410  add.f.rn r9, r9, r1
0005fc  8f850500  exp.f.rn r11, r11
000600  0be81510  add.f.rn r16, r11, r1
000604  63874600  loadli.w r14,  32(r13)
000608  e3c53600  loadli.w r11,  28(r13)
00060c  e78d56fe  storeli.w r5, -40(r13)
000610  8f029518  div.f.rn r5, r10, r9
000614  97a4c300  xor r9, r7, r12
000618  63c54600  loadli.w r10,  36(r13)
00061c  e7cdf6fe  storeli.w r15, -36(r13)
000620  8f070219  div.f.rn r15, r4, r16
000624  0f820400  exp.f.rn r4, r9
000628  9724ce00  xor r9, r28, r12
00062c  0b681210  add.f.rn r16, r4, r1
000630  0f820400  exp.f.rn r4, r9
000634  8b641210  add.f.rn r9, r4, r1
000638  63825600  loadli.w r4,  40(r13)
00063c  678e56fe  storeli.w r5, -32(r13)
000640  8f820319  div.f.rn r5, r7, r16
000644  97a3cc00  xor r7, r25, r12
000648  8f049e18  div.f.rn r9, r28, r9
00064c  67cef6fe  storeli.w r15, -28(r13)
000650  8f830300  exp.f.rn r7, r7
000654  9727cd00  xor r15, r26, r12
000658  0be81310  add.f.rn r16, r7, r1
00065c  638e6600  loadli.w r28,  48(r13)
000660  8f830700  exp.f.rn r7, r15
000664  8be71310  add.f.rn r15, r7, r1
000668  e3c35600  loadli.w r7,  44(r13)
00066c  e78e56fe  storeli.w r5, -24(r13)
000670  97a2ca00  xor r5, r21, r12
000674  e7ce96fe  storeli.w r9, -20(r13)
000678  8f840c19  div.f.rn r9, r25, r16
00067c  0f08fd18  div.f.rn r16, r26, r15
000680  8f820200  exp.f.rn r5, r5
000684  97a7cb00  xor r15, r23, r12
000688  8bec1210  add.f.rn r25, r5, r1
00068c  8f820700  exp.f.rn r5, r15
000690  0bed1210  add.f.rn r26, r5, r1
000694  e3877600  loadli.w r15,  56(r13)
000698  e3c26600  loadli.w r5,  52(r13)
00069c  67cf06ff  storeli.w r16, -12(r13)
0006a0  17a8c900  xor r16, r19, r12
0006a4  678f96fe  storeli.w r9, -16(r13)
0006a8  8f849a19  div.f.rn r9, r21, r25
0006ac  8f8aab19  div.f.rn r21, r23, r26
0006b0  972bca00  xor r23, r20, r12
0006b4  0f080800  exp.f.rn r16, r16
0006b8  8b6c1810  add.f.rn r25, r16, r1
0006bc  0f880b00  exp.f.rn r16, r23
0006c0  972bcb00  xor r23, r22, r12
0006c4  0b6d1810  add.f.rn r26, r16, r1
0006c8  0f880b00  exp.f.rn r16, r23
0006cc  8b6b1810  add.f.rn r23, r16, r1
0006d0  63c87600  loadli.w r16,  60(r13)
0006d4  e7cf56ff  storeli.w r21, -4(r13)
0006d8  e78f96fe  storeli.w r9, -8(r13)
0006dc  8f849919  div.f.rn r9, r19, r25
0006e0  9f0cc001  addli r25, zero, 224
0006e4  8f09aa19  div.f.rn r19, r20, r26
0006e8  172acc00  xor r20, r24, r12
0006ec  8f0a7b19  div.f.rn r21, r22, r23
0006f0  17abcd00  xor r22, r27, r12
0006f4  0f0a0a00  exp.f.rn r20, r20
0006f8  972bc700  xor r23, r14, r12
0006fc  0f0b0b00  exp.f.rn r22, r22
000700  0b6a1a10  add.f.rn r20, r20, r1
000704  8f8b0b00  exp.f.rn r23, r23
000708  0b6b1b10  add.f.rn r22, r22, r1
00070c  8beb1b10  add.f.rn r23, r23, r1
000710  67809600  storeli.w r9, 0(r13)
000714  67c03601  storeli.w r19, 4(r13)
000718  97a9c800  xor r19, r17, r12
00071c  e7805601  storeli.w r21, 8(r13)
000720  972ac300  xor r21, r6, r12
000724  8f044c19  div.f.rn r9, r24, r20
000728  172cc500  xor r24, r10, r12
00072c  8f890900  exp.f.rn r19, r19
000730  8f8a0a00  exp.f.rn r21, r21
000734  0f8a6d19  div.f.rn r20, r27, r22
000738  17abc500  xor r22, r11, r12
00073c  0f0c0c00  exp.f.rn r24, r24
000740  8be91910  add.f.rn r19, r19, r1
000744  0f077719  div.f.rn r14, r14, r23
000748  8bea1a10  add.f.rn r21, r21, r1
00074c  0f0b0b00  exp.f.rn r22, r22
000750  0b6c1c10  add.f.rn r24, r24, r1
000754  0b6b1b10  add.f.rn r22, r22, r1
000758  8f883819  div.f.rn r17, r17, r19
00075c  e7c09600  storeli.w r9, 12(r13)
000760  0f035319  div.f.rn r6, r6, r21
000764  8f048519  div.f.rn r9, r10, r24
000768  1725ce00  xor r10, r28, r12
00076c  6782e600  storeli.w r14, 32(r13)
000770  17a7c700  xor r14, r15, r12
000774  67814601  storeli.w r20, 16(r13)
000778  8f856519  div.f.rn r11, r11, r22
00077c  0f050500  exp.f.rn r10, r10
000780  0f070700  exp.f.rn r14, r14
000784  0b651510  add.f.rn r10, r10, r1
000788  0b671710  add.f.rn r14, r14, r1
00078c  67c11601  storeli.w r17, 20(r13)
000790  9728c800  xor r17, r16, r12
000794  e7816600  storeli.w r6, 24(r13)
000798  1723c200  xor r6, r4, r12
00079c  67c29600  storeli.w r9, 36(r13)
0007a0  97a4c300  xor r9, r7, r12
0007a4  8f880800  exp.f.rn r17, r17
0007a8  0f030300  exp.f.rn r6, r6
0007ac  e7c1b600  storeli.w r11, 28(r13)
0007b0  97a5c200  xor r11, r5, r12
0007b4  8f840400  exp.f.rn r9, r9
0007b8  8be81810  add.f.rn r17, r17, r1
0007bc  0b631310  add.f.rn r6, r6, r1
0007c0  8f850500  exp.f.rn r11, r11
0007c4  8be41410  add.f.rn r9, r9, r1
0007c8  8be51510  add.f.rn r11, r11, r1
0007cc  0f026218  div.f.rn r4, r4, r6
0007d0  0f839318  div.f.rn r6, r7, r9
0007d4  8f03ae18  div.f.rn r7, r28, r10
0007d8  8f84e718  div.f.rn r9, r15, r14
0007dc  0f051819  div.f.rn r10, r16, r17
0007e0  8f82b218  div.f.rn r5, r5, r11
0007e4  e7824600  storeli.w r4, 40(r13)
0007e8  13029905  setlt.u r4, r18, r25
0007ec  e7c26600  storeli.w r6, 44(r13)
0007f0  67837600  storeli.w r7, 48(r13)
0007f4  e7839600  storeli.w r9, 56(r13)
0007f8  e7c3a600  storeli.w r10, 60(r13)
0007fc  67c35600  storeli.w r5, 52(r13)
000800  9f860601  addli r13, r13, 128
000804  bb4302fe  bneq r4, zero, -784
000808  00a00000  mfence { lm }
00080c  9f8b0100  addli r23, r3, 0
000810  2b0300f0  lui r6, 983040
000814  e345ffee  loadli.w r11,  -2180(r30)
000818  6307ffee  loadli.w r14,  -2184(r30)
00081c  e347efee  loadli.w r15,  -2188(r30)
000820  63026fef  loadli.w r4,  -2128(r30)
000824  e308efee  loadli.w r17,  -2192(r30)
000828  6308dfee  loadli.w r16,  -2200(r30)
00082c  6349dfee  loadli.w r18,  -2196(r30)
000830  e349cfee  loadli.w r19,  -2204(r30)
000834  630acfee  loadli.w r20,  -2208(r30)
000838  e34abfee  loadli.w r21,  -2212(r30)
00083c  630bbfee  loadli.w r22,  -2216(r30)
000840  e3414fef  loadli.w r3,  -2140(r30)
000844  e3060fef  loadli.w r13,  -2176(r30)
000848  e30cafee  loadli.w r25,  -2224(r30)
00084c  634cafee  loadli.w r24,  -2220(r30)
000850  634d9fee  loadli.w r26,  -2228(r30)
000854  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
000858  c2100702  vload_mask16.mz vr1{mr1}, 0(r14)
00085c  42910702  vload_mask16.mz vr2{mr1}, 0(r15)
000860  c2110802  vload_mask16.mz vr3{mr1}, 0(r16)
000864  42120a02  vload_mask16.mz vr4{mr1}, 0(r20)
000868  c2920a02  vload_mask16.mz vr5{mr1}, 0(r21)
00086c  42130b02  vload_mask16.mz vr6{mr1}, 0(r22)
000870  06100000  vfloat2fp16_l.rn vr0, vr0
000874  06d00000  vfloat2fp16_h.rn vr0, vr1
000878  86100100  vfloat2fp16_l.rn vr1, vr2
00087c  42110902  vload_mask16.mz vr2{mr1}, 0(r18)
000880  46000202  vstore.mz vr0{mr1}, 0(r4)
000884  42900802  vload_mask16.mz vr0{mr1}, 0(r17)
000888  86d00100  vfloat2fp16_h.rn vr1, vr3
00088c  63426fef  loadli.w r4,  -2124(r30)
000890  c2910902  vload_mask16.mz vr3{mr1}, 0(r19)
000894  46001202  vstore.mz vr1{mr1}, 0(r4)
000898  63425fef  loadli.w r4,  -2132(r30)
00089c  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
0008a0  06100000  vfloat2fp16_l.rn vr0, vr0
0008a4  06500100  vfloat2fp16_h.rn vr0, vr2
0008a8  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
0008ac  86900000  vfloat2fp16_l.rn vr1, vr1
0008b0  46000202  vstore.mz vr0{mr1}, 0(r4)
0008b4  06900100  vfloat2fp16_l.rn vr0, vr3
0008b8  63025fef  loadli.w r4,  -2136(r30)
0008bc  c2910602  vload_mask16.mz vr3{mr1}, 0(r13)
0008c0  86500100  vfloat2fp16_h.rn vr1, vr2
0008c4  06500200  vfloat2fp16_h.rn vr0, vr4
0008c8  42920c02  vload_mask16.mz vr4{mr1}, 0(r25)
0008cc  46000202  vstore.mz vr0{mr1}, 0(r4)
0008d0  06900200  vfloat2fp16_l.rn vr0, vr5
0008d4  c2120d02  vload_mask16.mz vr5{mr1}, 0(r26)
0008d8  33120428  sext_int2long r[5:6], r8
0008dc  06500300  vfloat2fp16_h.rn vr0, vr6
0008e0  46800102  vstore.mz vr0{mr1}, 0(r3)
0008e4  9f018fef  addli r3, r30, -2112
0008e8  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0008ec  e3413fef  loadli.w r3,  -2148(r30)
0008f0  46801102  vstore.mz vr1{mr1}, 0(r3)
0008f4  e3014fef  loadli.w r3,  -2144(r30)
0008f8  06100000  vfloat2fp16_l.rn vr0, vr0
0008fc  06d00100  vfloat2fp16_h.rn vr0, vr3
000900  46000102  vstore.mz vr0{mr1}, 0(r2)
000904  06100200  vfloat2fp16_l.rn vr0, vr4
000908  06d00200  vfloat2fp16_h.rn vr0, vr5
00090c  46800102  vstore.mz vr0{mr1}, 0(r3)
000910  9f110000  addli r3, zero, 1
000914  17323202  sll.d r[5:6], r[5:6], r3
000918  9f012fef  addli r3, r30, -2160
00091c  ebd30100  load.d r[8:9], 0(r3)
000920  9f010004  addli r3, zero, 512
000924  00a00000  mfence { lm }
000928  17936100  or r6, r3, r6
00092c  0ba24310  add.ul r[5:6], r[8:9], r[5:6]
000930  7f332200  s_lm2gm r6, r2, 0(r[5:6])
000934  1f021fef  addli r4, r30, -2168
000938  00a00200  mfence { lm, gm }
00093c  63457fef  loadli.w r10,  -2116(r30)
000940  e3027fef  loadli.w r5,  -2120(r30)
000944  6b510200  load.d r[3:4], 0(r4)
000948  2b024000  lui r4, 1024
00094c  1b251500  xori r10, r10, 1
000950  1f840200  addli r8, r5, 0
000954  bff442fc  blt.s r5, r4, -1732
000958  9f0e8fee  addli sp, r30, -2240
00095c  e38f2e11  loadli.w r31,  2192(sp)
000960  63cf2e11  loadli.w r30,  2196(sp)
000964  638e3e11  loadli.w r28,  2200(sp)
000968  e3cd3e11  loadli.w r27,  2204(sp)
00096c  638d4e11  loadli.w r26,  2208(sp)
000970  e3cc4e11  loadli.w r25,  2212(sp)
000974  638c5e11  loadli.w r24,  2216(sp)
000978  e3cb5e11  loadli.w r23,  2220(sp)
00097c  638b6e11  loadli.w r22,  2224(sp)
000980  e3ca6e11  loadli.w r21,  2228(sp)
000984  638a7e11  loadli.w r20,  2232(sp)
000988  e3c97e11  loadli.w r19,  2236(sp)
00098c  9f8e8e11  addli sp, sp, 2240
000990  5f800f00  jr r31, 0
000994  00100000  exit
000998  00100000  exit
00099c  00100000  exit
0009a0  00100000  exit
0009a4  00100000  exit
0009a8  00100000  exit
0009ac  00100000  exit
0009b0  00100000  exit
0009b4  00100000  exit
0009b8  00100000  exit
0009bc  00100000  exit
0009c0  00100000  exit
0009c4  00100000  exit
0009c8  00100000  exit
0009cc  00100000  exit
0009d0  00100000  exit
0009d4  00100000  exit
0009d8  00100000  exit
0009dc  00100000  exit
0009e0  00100000  exit
0009e4  00100000  exit
0009e8  00100000  exit
0009ec  00100000  exit
0009f0  00100000  exit
0009f4  00100000  exit
0009f8  00100000  exit
0009fc  00100000  exit
000a00  00100000  exit
000a04  00100000  exit
000a08  00100000  exit
000a0c  00100000  exit
000a10  00100000  exit
000a14  00100000  exit
000a18  00100000  exit
000a1c  00100000  exit
000a20  00100000  exit
000a24  00100000  exit
000a28  00100000  exit
000a2c  00100000  exit
000a30  00100000  exit
000a34  00100000  exit
000a38  00100000  exit
000a3c  00100000  exit
000a40  00100000  exit
000a44  00100000  exit
000a48  00100000  exit
000a4c  00100000  exit
000a50  00100000  exit
000a54  00100000  exit
000a58  00100000  exit
000a5c  00100000  exit
000a60  00100000  exit
000a64  00100000  exit
000a68  00100000  exit
000a6c  00100000  exit
000a70  00100000  exit
000a74  00100000  exit
000a78  00100000  exit
000a7c  00100000  exit
000a80  00100000  exit
000a84  00100000  exit
000a88  00100000  exit
000a8c  00100000  exit
000a90  00100000  exit
000a94  00100000  exit
000a98  00100000  exit
000a9c  00100000  exit
000aa0  00100000  exit
000aa4  00100000  exit
000aa8  00100000  exit
000aac  00100000  exit
000ab0  00100000  exit
000ab4  00100000  exit
000ab8  00100000  exit
000abc  00100000  exit
000ac0  00100000  exit
000ac4  00100000  exit
000ac8  00100000  exit
000acc  00100000  exit
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
