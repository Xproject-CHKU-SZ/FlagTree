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
00012c  9f8e8ee6  addli sp, sp, -3264
000130  67c9ee19  storeli.w r30, 3220(sp)
000134  1f8f8e19  addli r30, sp, 3264
000138  e7cb3e19  storeli.w r19, 3260(sp)
00013c  e78b4e19  storeli.w r20, 3256(sp)
000140  67cb5e19  storeli.w r21, 3252(sp)
000144  678b6e19  storeli.w r22, 3248(sp)
000148  e7ca7e19  storeli.w r23, 3244(sp)
00014c  e78a8e19  storeli.w r24, 3240(sp)
000150  67ca9e19  storeli.w r25, 3236(sp)
000154  678aae19  storeli.w r26, 3232(sp)
000158  e7c9be19  storeli.w r27, 3228(sp)
00015c  e789ce19  storeli.w r28, 3224(sp)
000160  6789fe19  storeli.w r31, 3216(sp)
000164  9f00cfe6  addli r1, r30, -3232
000168  73b06000  store.d r[7:8], 0(r1)
00016c  00330002  core_id r6
000170  3b700300  bneq r6, zero, 28
000174  9f000020  addli r1, zero, 4096
000178  ab0300f0  lui r7, 983040
00017c  97907000  or r1, r1, r7
000180  ab030000  lui r7, 0
000184  9f830300  addli r7, r7, 0
000188  ff007200  l_gm2sm r1, r7, 0(r[5:6])
00018c  00520102  load_param_i r4, 2
000190  9f140000  addli r9, zero, 1
000194  9f050008  addli r11, zero, 1024
000198  ab0200f0  lui r5, 983040
00019c  1f058fef  addli r10, r30, -2112
0001a0  0b138250  fmac.s r6, r4, r8
0001a4  97925500  or r5, r11, r5
0001a8  9b309300  slli r1, r6, 9
0001ac  b3930028  sext_int2long r[8:9], r1
0001b0  97b39302  sll.d r[8:9], r[8:9], r9
0001b4  8b237110  add.ul r[8:9], r[3:4], r[8:9]
0001b8  ffa2a300  l_gm2lm r5, r10, 0(r[8:9])
0001bc  abf20000  lui r5, 15
0001c0  9f73f03f  addli r7, zero, 8191
0001c4  00a00200  mfence { lm, gm }
0001c8  9b92f2ff  ori r5, r5, 4095
0001cc  00200300  mfence { sm, gm }
0001d0  80a10204  csr_set csr3, r5
0001d4  00d00100  sync_group
0001d8  bfa46302  blt.s r7, r6, 1320
0001dc  9f020030  addli r5, zero, 6144
0001e0  1f130000  addli r6, zero, 1
0001e4  9f038fe7  addli r7, r30, -3136
0001e8  1f050000  addli r10, zero, 0
0001ec  0b125220  mul.s r4, r4, r5
0001f0  1f868300  addli r12, r7, 64
0001f4  9f860301  addli r13, r7, 128
0001f8  1f878301  addli r14, r7, 192
0001fc  9f870302  addli r15, r7, 256
000200  1f888302  addli r16, r7, 320
000204  9f880303  addli r17, r7, 384
000208  1f898303  addli r18, r7, 448
00020c  9f890304  addli r19, r7, 512
000210  1f8a8304  addli r20, r7, 576
000214  9f8a0305  addli r21, r7, 640
000218  1f8b8305  addli r22, r7, 704
00021c  9f8b0306  addli r23, r7, 768
000220  1f8c8306  addli r24, r7, 832
000224  9f8c0307  addli r25, r7, 896
000228  1f8d8307  addli r26, r7, 960
00022c  e7454fe6  storeli.w r4, -3236(r30)
000230  33020228  zext_int2long r[5:6], r4
000234  e70adfe6  storeli.w r13, -3160(r30)
000238  674acfe6  storeli.w r12, -3164(r30)
00023c  670aefe6  storeli.w r14, -3168(r30)
000240  e7490fe7  storeli.w r16, -3172(r30)
000244  e709ffe6  storeli.w r15, -3176(r30)
000248  67494fe7  storeli.w r20, -3180(r30)
00024c  67093fe7  storeli.w r19, -3184(r30)
000250  e7482fe7  storeli.w r18, -3188(r30)
000254  e7081fe7  storeli.w r17, -3192(r30)
000258  67485fe7  storeli.w r21, -3196(r30)
00025c  17326202  sll.d r[5:6], r[5:6], r6
000260  0b214110  add.ul r[3:4], r[3:4], r[5:6]
000264  1f02afe6  addli r4, r30, -3248
000268  9f02f001  addli r5, zero, 248
00026c  73302200  store.d r[3:4], 0(r4)
000270  2bf13f00  lui r2, 1023
000274  9b910301  ori r3, r7, 16
000278  2b02803f  lui r4, 260096
00027c  1b11f1ff  ori r2, r2, 4095
000280  67083fe6  storeli.w r3, -3200(r30)
000284  e7052fe6  storeli.w r2, -3240(r30)
000288  2bf1ffff  lui r2, 1048575
00028c  1b1181ff  ori r2, r2, 4088
000290  e7472fe6  storeli.w r2, -3204(r30)
000294  2b010080  lui r2, 524288
000298  e341bfe6  loadli.w r3,  -3236(r30)
00029c  b39d0028  sext_int2long r[28:29], r1
0002a0  0b933010  add.s r6, r1, r3
0002a4  e301bfe6  loadli.w r3,  -3240(r30)
0002a8  67476fe6  storeli.w r6, -3212(r30)
0002ac  bfe06100  blt.s r3, r6, 56
0002b0  9f05afe6  addli r11, r30, -3248
0002b4  9f110000  addli r3, zero, 1
0002b8  6bd40500  load.d r[9:10], 0(r11)
0002bc  17b33d02  sll.d r[7:8], r[28:29], r3
0002c0  9b211500  xori r3, r10, 1
0002c4  9bb1a100  slli r3, r3, 10
0002c8  0b236410  add.ul r[7:8], r[9:10], r[7:8]
0002cc  9f048fef  addli r9, r30, -2112
0002d0  2b0400f0  lui r8, 983040
0002d4  8b913410  add.s r3, r9, r3
0002d8  9f040008  addli r9, zero, 1024
0002dc  17948400  or r8, r9, r8
0002e0  7f243300  l_gm2lm r8, r3, 0(r[7:8])
0002e4  9f01dfe6  addli r3, r30, -3224
0002e8  1f038fef  addli r6, r30, -2112
0002ec  e707afe6  storeli.w r10, -3208(r30)
0002f0  73b0b101  store.d r[28:29], 0(r3)
0002f4  9f010010  addli r3, zero, 2048
0002f8  8b903038  mod.s r1, r1, r3
0002fc  9b31a500  slli r3, r10, 10
000300  8b113310  add.s r3, r6, r3
000304  670b3fe6  storeli.w r3, -3152(r30)
000308  ab010000  lui r3, 0
00030c  9bb01000  slli r1, r1, 1
000310  9f810100  addli r3, r3, 0
000314  8b903010  add.s r1, r1, r3
000318  9f110000  addli r3, zero, 1
00031c  e74a1fe6  storeli.w r1, -3156(r30)
000320  9f000000  addli r1, zero, 0
000324  e74b3fe6  storeli.w r3, -3140(r30)
000328  e3415fe7  loadli.w r3,  -3156(r30)
00032c  9bb01000  slli r1, r1, 1
000330  63036fe7  loadli.w r6,  -3152(r30)
000334  1f040c00  addli r8, r24, 0
000338  8b911110  add.s r3, r3, r1
00033c  8b131310  add.s r7, r6, r1
000340  1f030b00  addli r6, r22, 0
000344  4a800102  vloads.mz vr0{mr1}, 0(r3)
000348  9f808100  addli r1, r3, 64
00034c  42810302  vload.mz vr2{mr1}, 0(r7)
000350  9f840101  addli r9, r3, 128
000354  1f850102  addli r10, r3, 256
000358  9f850302  addli r11, r7, 256
00035c  9f8d8302  addli r27, r7, 320
000360  1f8e0303  addli r28, r7, 384
000364  ca810002  vloads.mz vr3{mr1}, 0(r1)
000368  9f808300  addli r1, r7, 64
00036c  ca800402  vloads.mz vr1{mr1}, 0(r9)
000370  9f048fe7  addli r9, r30, -3136
000374  42820002  vload.mz vr4{mr1}, 0(r1)
000378  e70b1fe6  storeli.w r1, -3144(r30)
00037c  9f800301  addli r1, r7, 128
000380  86320100  vfp162float_l.rn vr5, vr2
000384  06710100  vfp162float_h.rn vr2, vr2
000388  674b1fe6  storeli.w r1, -3148(r30)
00038c  86330200  vfp162float_l.rn vr7, vr4
000390  06720200  vfp162float_h.rn vr4, vr4
000394  06330000  vfp162float_l.rn vr6, vr0
000398  06700000  vfp162float_h.rn vr0, vr0
00039c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
0003a0  16100102  vadd.f.mz.rn vr0{mr1}, vr2, vr0
0003a4  42810002  vload.mz vr2{mr1}, 0(r1)
0003a8  06b30100  vfp162float_l.rn vr6, vr3
0003ac  86f10100  vfp162float_h.rn vr3, vr3
0003b0  46905402  vstore_mask16.mz vr5{mr1}, 0(r9)
0003b4  9f848101  addli r9, r3, 192
0003b8  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
0003bc  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
0003c0  16936302  vadd.f.mz.rn vr6{mr1}, vr7, vr6
0003c4  86b20000  vfp162float_l.rn vr5, vr1
0003c8  86f00000  vfp162float_h.rn vr1, vr1
0003cc  c2830502  vload.mz vr7{mr1}, 0(r11)
0003d0  1f060d00  addli r12, r26, 0
0003d4  1f8d0b00  addli r26, r23, 0
0003d8  06720100  vfp162float_h.rn vr4, vr2
0003dc  06300100  vfp162float_l.rn vr0, vr2
0003e0  4a810402  vloads.mz vr2{mr1}, 0(r9)
0003e4  9f848301  addli r9, r7, 192
0003e8  9f000600  addli r1, r12, 0
0003ec  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
0003f0  46103702  vstore_mask16.mz vr3{mr1}, 0(r14)
0003f4  42830402  vload.mz vr6{mr1}, 0(r9)
0003f8  96115002  vadd.f.mz.rn vr3{mr1}, vr0, vr5
0003fc  4a000502  vloads.mz vr0{mr1}, 0(r10)
000400  96101202  vadd.f.mz.rn vr1{mr1}, vr4, vr1
000404  1f858102  addli r10, r3, 320
000408  06320300  vfp162float_l.rn vr4, vr6
00040c  86720300  vfp162float_h.rn vr5, vr6
000410  46903702  vstore_mask16.mz vr3{mr1}, 0(r15)
000414  46101802  vstore_mask16.mz vr1{mr1}, 0(r16)
000418  86b10300  vfp162float_l.rn vr3, vr7
00041c  06330100  vfp162float_l.rn vr6, vr2
000420  06710100  vfp162float_h.rn vr2, vr2
000424  16912202  vadd.f.mz.rn vr2{mr1}, vr5, vr2
000428  ca020502  vloads.mz vr5{mr1}, 0(r10)
00042c  96106202  vadd.f.mz.rn vr1{mr1}, vr4, vr6
000430  06320000  vfp162float_l.rn vr4, vr0
000434  06f30300  vfp162float_h.rn vr6, vr7
000438  06700000  vfp162float_h.rn vr0, vr0
00043c  1f850103  addli r10, r3, 384
000440  9f818103  addli r3, r3, 448
000444  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
000448  42820d02  vload.mz vr4{mr1}, 0(r27)
00044c  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
000450  46901802  vstore_mask16.mz vr1{mr1}, 0(r17)
000454  46102902  vstore_mask16.mz vr2{mr1}, 0(r18)
000458  46100a02  vstore_mask16.mz vr0{mr1}, 0(r20)
00045c  46903902  vstore_mask16.mz vr3{mr1}, 0(r19)
000460  86300200  vfp162float_l.rn vr1, vr4
000464  06700200  vfp162float_h.rn vr0, vr4
000468  4a020502  vloads.mz vr4{mr1}, 0(r10)
00046c  1f850c00  addli r10, r25, 0
000470  06b10200  vfp162float_l.rn vr2, vr5
000474  86f10200  vfp162float_h.rn vr3, vr5
000478  c2020e02  vload.mz vr5{mr1}, 0(r28)
00047c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000480  4a810102  vloads.mz vr2{mr1}, 0(r3)
000484  9f818303  addli r3, r7, 448
000488  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
00048c  86f10200  vfp162float_h.rn vr3, vr5
000490  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
000494  c2800102  vload.mz vr1{mr1}, 0(r3)
000498  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
00049c  06b00200  vfp162float_l.rn vr0, vr5
0004a0  86320200  vfp162float_l.rn vr5, vr4
0004a4  06720200  vfp162float_h.rn vr4, vr4
0004a8  06b30000  vfp162float_l.rn vr6, vr1
0004ac  86f00000  vfp162float_h.rn vr1, vr1
0004b0  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
0004b4  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
0004b8  86330100  vfp162float_l.rn vr7, vr2
0004bc  06710100  vfp162float_h.rn vr2, vr2
0004c0  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
0004c4  46103c02  vstore_mask16.mz vr3{mr1}, 0(r24)
0004c8  16127302  vadd.f.mz.rn vr4{mr1}, vr6, vr7
0004cc  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0004d0  46104502  vstore_mask16.mz vr4{mr1}, 0(r10)
0004d4  46101602  vstore_mask16.mz vr1{mr1}, 0(r12)
0004d8  00a00000  mfence { lm }
0004dc  63050fe7  loadli.w r10,  -3200(r30)
0004e0  6346ffe6  loadli.w r12,  -3204(r30)
0004e4  6347e5ff  loadli.w r14,  -12(r10)
0004e8  e306e5ff  loadli.w r13,  -16(r10)
0004ec  e308f5ff  loadli.w r17,  -8(r10)
0004f0  e34a1500  loadli.w r21,  12(r10)
0004f4  6349f5ff  loadli.w r18,  -4(r10)
0004f8  e3090500  loadli.w r19,  0(r10)
0004fc  1f061600  addli r12, r12, 8
000500  17282700  xor r16, r14, r2
000504  97a72600  xor r15, r13, r2
000508  17aa2800  xor r20, r17, r2
00050c  17ac2a00  xor r24, r21, r2
000510  0f080800  exp.f.rn r16, r16
000514  8f870700  exp.f.rn r15, r15
000518  0f0a0a00  exp.f.rn r20, r20
00051c  0f0c0c00  exp.f.rn r24, r24
000520  0b684810  add.f.rn r16, r16, r4
000524  8be74710  add.f.rn r15, r15, r4
000528  0b6c4c10  add.f.rn r24, r24, r4
00052c  0f070719  div.f.rn r14, r14, r16
000530  8f86f618  div.f.rn r13, r13, r15
000534  e3470500  loadli.w r15,  4(r10)
000538  63081500  loadli.w r16,  8(r10)
00053c  17ab2700  xor r22, r15, r2
000540  972b2800  xor r23, r16, r2
000544  0f0b0b00  exp.f.rn r22, r22
000548  8f8b0b00  exp.f.rn r23, r23
00054c  0b6b4b10  add.f.rn r22, r22, r4
000550  8beb4b10  add.f.rn r23, r23, r4
000554  674fe5fe  storeli.w r14, -12(r10)
000558  0b674a10  add.f.rn r14, r20, r4
00055c  17aa2900  xor r20, r19, r2
000560  670fd5fe  storeli.w r13, -16(r10)
000564  97262900  xor r13, r18, r2
000568  8f860600  exp.f.rn r13, r13
00056c  0f0a0a00  exp.f.rn r20, r20
000570  8be64610  add.f.rn r13, r13, r4
000574  0b6a4a10  add.f.rn r20, r20, r4
000578  8f876719  div.f.rn r15, r15, r22
00057c  0f087819  div.f.rn r16, r16, r23
000580  0f87e818  div.f.rn r14, r17, r14
000584  8f06d918  div.f.rn r13, r18, r13
000588  8f884919  div.f.rn r17, r19, r20
00058c  0f898a19  div.f.rn r18, r21, r24
000590  6740f500  storeli.w r15, 4(r10)
000594  e7000501  storeli.w r16, 8(r10)
000598  e70fe5fe  storeli.w r14, -8(r10)
00059c  13075604  setlt.u r14, r12, r5
0005a0  e74fd5fe  storeli.w r13, -4(r10)
0005a4  67001501  storeli.w r17, 0(r10)
0005a8  e7402501  storeli.w r18, 12(r10)
0005ac  1f054500  addli r10, r10, 32
0005b0  bb5c07fe  bneq r14, zero, -204
0005b4  1f058fe7  addli r10, r30, -3136
0005b8  00a00000  mfence { lm }
0005bc  1f0b0300  addli r22, r6, 0
0005c0  9f0b0d00  addli r23, r26, 0
0005c4  1f0c0400  addli r24, r8, 0
0005c8  1f8d0000  addli r26, r1, 0
0005cc  63464fe7  loadli.w r12,  -3164(r30)
0005d0  e3065fe7  loadli.w r13,  -3160(r30)
0005d4  63483fe7  loadli.w r16,  -3172(r30)
0005d8  63074fe7  loadli.w r14,  -3168(r30)
0005dc  e3073fe7  loadli.w r15,  -3176(r30)
0005e0  e3081fe7  loadli.w r17,  -3192(r30)
0005e4  63491fe7  loadli.w r18,  -3188(r30)
0005e8  e3092fe7  loadli.w r19,  -3184(r30)
0005ec  634a2fe7  loadli.w r20,  -3180(r30)
0005f0  e34a0fe7  loadli.w r21,  -3196(r30)
0005f4  e3407fe7  loadli.w r1,  -3140(r30)
0005f8  42100502  vload_mask16.mz vr0{mr1}, 0(r10)
0005fc  c2100602  vload_mask16.mz vr1{mr1}, 0(r12)
000600  42910602  vload_mask16.mz vr2{mr1}, 0(r13)
000604  c2110702  vload_mask16.mz vr3{mr1}, 0(r14)
000608  42920702  vload_mask16.mz vr4{mr1}, 0(r15)
00060c  c2920902  vload_mask16.mz vr5{mr1}, 0(r19)
000610  42130a02  vload_mask16.mz vr6{mr1}, 0(r20)
000614  06100000  vfloat2fp16_l.rn vr0, vr0
000618  06d00000  vfloat2fp16_h.rn vr0, vr1
00061c  86100100  vfloat2fp16_l.rn vr1, vr2
000620  42910802  vload_mask16.mz vr2{mr1}, 0(r17)
000624  46800302  vstore.mz vr0{mr1}, 0(r7)
000628  42100802  vload_mask16.mz vr0{mr1}, 0(r16)
00062c  86d00100  vfloat2fp16_h.rn vr1, vr3
000630  e3037fe7  loadli.w r7,  -3144(r30)
000634  c2110902  vload_mask16.mz vr3{mr1}, 0(r18)
000638  46801302  vstore.mz vr1{mr1}, 0(r7)
00063c  e3436fe7  loadli.w r7,  -3148(r30)
000640  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
000644  06500000  vfloat2fp16_h.rn vr0, vr0
000648  06100200  vfloat2fp16_l.rn vr0, vr4
00064c  42120c02  vload_mask16.mz vr4{mr1}, 0(r24)
000650  46800302  vstore.mz vr0{mr1}, 0(r7)
000654  06100100  vfloat2fp16_l.rn vr0, vr2
000658  42110b02  vload_mask16.mz vr2{mr1}, 0(r22)
00065c  9b831000  andi r7, r1, 1
000660  9f000002  addli r1, zero, 256
000664  06d00100  vfloat2fp16_h.rn vr0, vr3
000668  c2910b02  vload_mask16.mz vr3{mr1}, 0(r23)
00066c  46800402  vstore.mz vr0{mr1}, 0(r9)
000670  06900200  vfloat2fp16_l.rn vr0, vr5
000674  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
000678  06500300  vfloat2fp16_h.rn vr0, vr6
00067c  42130d02  vload_mask16.mz vr6{mr1}, 0(r26)
000680  46800502  vstore.mz vr0{mr1}, 0(r11)
000684  06900000  vfloat2fp16_l.rn vr0, vr1
000688  06500100  vfloat2fp16_h.rn vr0, vr2
00068c  46800d02  vstore.mz vr0{mr1}, 0(r27)
000690  06900100  vfloat2fp16_l.rn vr0, vr3
000694  06500200  vfloat2fp16_h.rn vr0, vr4
000698  46000e02  vstore.mz vr0{mr1}, 0(r28)
00069c  06900200  vfloat2fp16_l.rn vr0, vr5
0006a0  06500300  vfloat2fp16_h.rn vr0, vr6
0006a4  46800102  vstore.mz vr0{mr1}, 0(r3)
0006a8  9f010000  addli r3, zero, 0
0006ac  bbe103fe  bneq r7, zero, -904
0006b0  9f01dfe6  addli r3, r30, -3224
0006b4  9f100000  addli r1, zero, 1
0006b8  6bd30100  load.d r[7:8], 0(r3)
0006bc  9f01cfe6  addli r3, r30, -3232
0006c0  6bd40100  load.d r[9:10], 0(r3)
0006c4  9f010008  addli r3, zero, 1024
0006c8  00a00000  mfence { lm }
0006cc  17331302  sll.d r[7:8], r[7:8], r1
0006d0  ab0000f0  lui r1, 983040
0006d4  97901100  or r1, r3, r1
0006d8  e3016fe7  loadli.w r3,  -3152(r30)
0006dc  0b236410  add.ul r[7:8], r[9:10], r[7:8]
0006e0  ff303300  s_lm2gm r1, r3, 0(r[7:8])
0006e4  ab014000  lui r3, 1024
0006e8  00a00200  mfence { lm, gm }
0006ec  6305ffe6  loadli.w r10,  -3208(r30)
0006f0  6343efe6  loadli.w r6,  -3212(r30)
0006f4  1b251500  xori r10, r10, 1
0006f8  9f000300  addli r1, r6, 0
0006fc  3f7e33fc  blt.s r6, r3, -1124
000700  9f0e8fe6  addli sp, r30, -3264
000704  e38f2e19  loadli.w r31,  3216(sp)
000708  63cf2e19  loadli.w r30,  3220(sp)
00070c  638e3e19  loadli.w r28,  3224(sp)
000710  e3cd3e19  loadli.w r27,  3228(sp)
000714  638d4e19  loadli.w r26,  3232(sp)
000718  e3cc4e19  loadli.w r25,  3236(sp)
00071c  638c5e19  loadli.w r24,  3240(sp)
000720  e3cb5e19  loadli.w r23,  3244(sp)
000724  638b6e19  loadli.w r22,  3248(sp)
000728  e3ca6e19  loadli.w r21,  3252(sp)
00072c  638a7e19  loadli.w r20,  3256(sp)
000730  e3c97e19  loadli.w r19,  3260(sp)
000734  9f8e8e19  addli sp, sp, 3264
000738  5f800f00  jr r31, 0
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
