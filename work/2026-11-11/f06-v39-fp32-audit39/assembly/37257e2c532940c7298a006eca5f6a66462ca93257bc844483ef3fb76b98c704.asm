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
000078  9f09d000  addli r19, zero, 104
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
0000ac  d71c0000  jal 228
0000b0  fe8007e0  vmmov mr1, r15
0000b4  fe900720  vmmovh mr1, r15
0000b8  1f8a0eff  addli r20, sp, -128
0000bc  4a100002  vloads_mask16.mz vr0{mr1}, 0(zero)
0000c0  ca108002  vloads_mask16.mz vr1{mr1}, 64(zero)
0000c4  46000a02  vstore.mz vr0{mr1}, 0(r20)
0000c8  46041a02  vstore.mz vr1{mr1}, 64(r20)
0000cc  00a00100  mfence { lm, sm }
0000d0  00d00100  sync_group
0000d4  97a01000  xor r1, r1, r1
0000d8  1f8f0e00  addli r30, sp, 0
0000dc  d71c0000  jal 228
0000e0  00400000  trap
0000e4  9f8e8efa  addli sp, sp, -704
0000e8  ab000000  lui r1, 0
0000ec  00340002  core_id r8
0000f0  1f8f8e04  addli r30, sp, 576
0000f4  2bf20000  lui r4, 15
0000f8  1b312400  slli r2, r8, 2
0000fc  9f800000  addli r1, r1, 0
000100  e303cf00  loadli.w r7,  96(r30)
000104  6343bf00  loadli.w r6,  92(r30)
000108  e341cf00  loadli.w r3,  100(r30)
00010c  1b12f2ff  ori r4, r4, 4095
000110  8b922010  add.s r5, r1, r2
000114  8b936320  mul.s r7, r7, r6
000118  00530002  load_param_i r6, 0
00011c  9f842230  addli r9, r5, 6160
000120  9f820220  addli r5, r5, 4096
000124  8b913320  mul.s r3, r7, r3
000128  e74f9ffa  storeli.w r9, -516(r30)
00012c  73e00400  stores.w zero, 0(r9)
000130  00a00300  mfence { lm, sm, gm }
000134  80210204  csr_set csr3, r4
000138  00d00100  sync_group
00013c  e70f5ffa  storeli.w r5, -520(r30)
000140  73e00200  stores.w zero, 0(r5)
000144  00a00300  mfence { lm, sm, gm }
000148  80210204  csr_set csr3, r4
00014c  00d00100  sync_group
000150  674f3ffa  storeli.w r3, -524(r30)
000154  4bbb6102  ble.s r3, r6, 1740
000158  1b09f401  andi r18, r8, 31
00015c  63055f00  loadli.w r10,  40(r30)
000160  9f074000  addli r15, zero, 32
000164  80d10002  load_param_i r3, 1
000168  1b445400  srli r8, r8, 5
00016c  6b5a0f03  load.d r[21:22], 48(r30)
000170  e3448f00  loadli.w r9,  68(r30)
000174  e34c1f00  loadli.w r25,  12(r30)
000178  9f230000  addli r7, zero, 2
00017c  eb5b0f02  load.d r[24:25], 32(r30)
000180  eb550f05  load.d r[12:13], 80(r30)
000184  eb5d8f01  load.d r[28:29], 24(r30)
000188  9b385900  slli r17, r18, 5
00018c  670f3ffa  storeli.w r3, -528(r30)
000190  0b151519  sub.s r10, r10, r17
000194  b3860828  zext_int2long r[14:15], r17
000198  0b150548  max.s r10, r10, zero
00019c  8b3ada20  mul.sl r[22:23], r[21:22], r[14:15]
0001a0  8bb5d520  mul.sl r[12:13], r[12:13], r[14:15]
0001a4  0b15f540  min.s r10, r10, r15
0001a8  97ba7a02  sll.d r[22:23], r[22:23], r7
0001ac  9b312500  slli r3, r10, 2
0001b0  0b951c19  sub.s r10, r25, r17
0001b4  8ba95b11  add.ul r[20:21], r[24:25], r[22:23]
0001b8  674e3ffa  storeli.w r3, -540(r30)
0001bc  9b011400  andi r3, r8, 1
0001c0  2bf4ffff  lui r8, 1048575
0001c4  0b150548  max.s r10, r10, zero
0001c8  73343fdf  store.d r[20:21], -536(r30)
0001cc  1b1404f8  ori r8, r8, 3968
0001d0  b3890128  zext_int2long r[20:21], r3
0001d4  670e3ffa  storeli.w r3, -544(r30)
0001d8  17018100  and r2, r2, r8
0001dc  0b14f540  min.s r8, r10, r15
0001e0  733c3fdd  store.d r[20:21], -552(r30)
0001e4  8bb9dd20  mul.sl r[20:21], r[28:29], r[14:15]
0001e8  8b902010  add.s r1, r1, r2
0001ec  0b911419  sub.s r2, r9, r17
0001f0  9b312400  slli r3, r8, 2
0001f4  73383fdd  store.d r[20:21], -560(r30)
0001f8  0b110148  max.s r2, r2, zero
0001fc  9f840020  addli r9, r1, 4096
000200  1f852030  addli r10, r1, 6160
000204  e74c3ffa  storeli.w r3, -564(r30)
000208  8b10f140  min.s r1, r2, r15
00020c  9bb62000  slli r13, r1, 2
000210  9f000ffd  addli r1, r30, -384
000214  5b080000  j 64
000218  6b518f04  load.d r[3:4], 72(r30)
00021c  ab0200f0  lui r5, 983040
000220  97125400  or r5, r8, r5
000224  0b312720  mul.sl r[3:4], r[15:16], r[3:4]
000228  6b578f03  load.d r[15:16], 56(r30)
00022c  0b21b110  add.ul r[3:4], r[3:4], r[12:13]
000230  17317102  sll.d r[3:4], r[3:4], r7
000234  0b212710  add.ul r[3:4], r[15:16], r[3:4]
000238  ff321100  s_lm2gm r5, r1, 0(r[3:4])
00023c  6301effb  loadli.w r2,  -528(r30)
000240  00a00000  mfence { lm }
000244  0b132310  add.s r6, r6, r2
000248  6341effb  loadli.w r2,  -524(r30)
00024c  3f202300  blt.s r6, r2, 8
000250  5bba0000  j 1488
000254  6341cf00  loadli.w r2,  100(r30)
000258  e301cf00  loadli.w r3,  96(r30)
00025c  2b0400f0  lui r8, 983040
000260  9f020ffc  addli r5, r30, -512
000264  0b112330  div.s r2, r6, r2
000268  0b113130  div.s r2, r2, r3
00026c  e341cffb  loadli.w r3,  -540(r30)
000270  17948100  or r8, r3, r8
000274  1b371100  slli r14, r2, 1
000278  6b518fde  load.d r[3:4], -536(r30)
00027c  7f245100  l_gm2lm r8, r5, 0(r[3:4])
000280  6301cffb  loadli.w r2,  -544(r30)
000284  00a00000  mfence { lm }
000288  e3011f00  loadli.w r3,  8(r30)
00028c  63449ffb  loadli.w r8,  -564(r30)
000290  17112700  or r2, r14, r2
000294  3f203100  blt.s r2, r3, 8
000298  1f040000  addli r8, zero, 0
00029c  6b588fdd  load.d r[17:18], -552(r30)
0002a0  33170728  sext_int2long r[15:16], r14
0002a4  17170703  or.d r[15:16], r[15:16], r[17:18]
0002a8  6b580f01  load.d r[17:18], 16(r30)
0002ac  8b390721  mul.sl r[20:21], r[15:16], r[17:18]
0002b0  6b580fdd  load.d r[17:18], -560(r30)
0002b4  8ba90911  add.ul r[20:21], r[20:21], r[17:18]
0002b8  ab0800f0  lui r17, 983040
0002bc  17141401  or r8, r8, r17
0002c0  6b580f00  load.d r[17:18], 0(r30)
0002c4  97b97902  sll.d r[20:21], r[20:21], r7
0002c8  8b293811  add.ul r[20:21], r[17:18], r[20:21]
0002cc  7fa41900  l_gm2lm r8, r1, 0(r[20:21])
0002d0  00a00000  mfence { lm }
0002d4  c2100fc3  vload_mask16.mz vr1{mr1}, 1664(r30)
0002d8  42110fc2  vload_mask16.mz vr2{mr1}, 1536(r30)
0002dc  42108fc3  vload_mask16.mz vr0{mr1}, 1728(r30)
0002e0  c2118fc2  vload_mask16.mz vr3{mr1}, 1600(r30)
0002e4  e301fffb  loadli.w r3,  -520(r30)
0002e8  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0002ec  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0002f0  36910002  vmax.f.mz vr2{mr1}, vr1, vr0
0002f4  7a140140  vextracti.f r8, 0(vr2)
0002f8  fa181140  vextracti.f r17, 1(vr2)
0002fc  fa192140  vextracti.f r19, 2(vr2)
000300  7a1a3140  vextracti.f r20, 3(vr2)
000304  0b641449  max.f r8, r8, r17
000308  fa184140  vextracti.f r17, 4(vr2)
00030c  0b643449  max.f r8, r8, r19
000310  fa195140  vextracti.f r19, 5(vr2)
000314  0b644449  max.f r8, r8, r20
000318  7a1a6140  vextracti.f r20, 6(vr2)
00031c  0b641449  max.f r8, r8, r17
000320  fa187140  vextracti.f r17, 7(vr2)
000324  0b643449  max.f r8, r8, r19
000328  fa198140  vextracti.f r19, 8(vr2)
00032c  0b644449  max.f r8, r8, r20
000330  7a1a9140  vextracti.f r20, 9(vr2)
000334  0b641449  max.f r8, r8, r17
000338  fa18a140  vextracti.f r17, 10(vr2)
00033c  0b643449  max.f r8, r8, r19
000340  fa19b140  vextracti.f r19, 11(vr2)
000344  0b644449  max.f r8, r8, r20
000348  7a1ac140  vextracti.f r20, 12(vr2)
00034c  0b641449  max.f r8, r8, r17
000350  fa18d140  vextracti.f r17, 13(vr2)
000354  0b643449  max.f r8, r8, r19
000358  fa19e140  vextracti.f r19, 14(vr2)
00035c  0b644449  max.f r8, r8, r20
000360  7a1af140  vextracti.f r20, 15(vr2)
000364  0b641449  max.f r8, r8, r17
000368  0b643449  max.f r8, r8, r19
00036c  0b644449  max.f r8, r8, r20
000370  73e08100  stores.w r8, 0(r3)
000374  00a00300  mfence { lm, sm, gm }
000378  80210204  csr_set csr3, r4
00037c  00d00100  sync_group
000380  3b140900  bneq r18, zero, 260
000384  6fc40400  loads.w r8, 0(r9)
000388  efc84400  loads.w r17, 4(r9)
00038c  efc98400  loads.w r19, 8(r9)
000390  efc10401  loads.w r3, 16(r9)
000394  6fcac400  loads.w r20, 12(r9)
000398  efc24401  loads.w r5, 20(r9)
00039c  efca8401  loads.w r21, 24(r9)
0003a0  6fcbc401  loads.w r22, 28(r9)
0003a4  efcb0402  loads.w r23, 32(r9)
0003a8  efc34402  loads.w r7, 36(r9)
0003ac  efcc8402  loads.w r25, 40(r9)
0003b0  6fcd0405  loads.w r26, 80(r9)
0003b4  0b641449  max.f r8, r8, r17
0003b8  efc88403  loads.w r17, 56(r9)
0003bc  0b643449  max.f r8, r8, r19
0003c0  efc9c403  loads.w r19, 60(r9)
0003c4  0b644449  max.f r8, r8, r20
0003c8  8b613448  max.f r3, r8, r3
0003cc  6fca0404  loads.w r20, 64(r9)
0003d0  8be15148  max.f r3, r3, r5
0003d4  efc2c402  loads.w r5, 44(r9)
0003d8  6fc44403  loads.w r8, 52(r9)
0003dc  8be15149  max.f r3, r3, r21
0003e0  efca4404  loads.w r21, 68(r9)
0003e4  8be16149  max.f r3, r3, r22
0003e8  6fcb8404  loads.w r22, 72(r9)
0003ec  8be17149  max.f r3, r3, r23
0003f0  efcbc404  loads.w r23, 76(r9)
0003f4  8be17148  max.f r3, r3, r7
0003f8  efc30403  loads.w r7, 48(r9)
0003fc  8be19149  max.f r3, r3, r25
000400  efcc8407  loads.w r25, 120(r9)
000404  8be15148  max.f r3, r3, r5
000408  efc24405  loads.w r5, 84(r9)
00040c  8be17148  max.f r3, r3, r7
000410  efc38405  loads.w r7, 88(r9)
000414  8be18148  max.f r3, r3, r8
000418  6fc4c405  loads.w r8, 92(r9)
00041c  8be11149  max.f r3, r3, r17
000420  efc80406  loads.w r17, 96(r9)
000424  8be13149  max.f r3, r3, r19
000428  efc94406  loads.w r19, 100(r9)
00042c  8be14149  max.f r3, r3, r20
000430  6fca8406  loads.w r20, 104(r9)
000434  8be15149  max.f r3, r3, r21
000438  efcac406  loads.w r21, 108(r9)
00043c  8be16149  max.f r3, r3, r22
000440  6fcb0407  loads.w r22, 112(r9)
000444  8be17149  max.f r3, r3, r23
000448  efcb4407  loads.w r23, 116(r9)
00044c  8be1a149  max.f r3, r3, r26
000450  6fcdc407  loads.w r26, 124(r9)
000454  8be15148  max.f r3, r3, r5
000458  8be17148  max.f r3, r3, r7
00045c  8be18148  max.f r3, r3, r8
000460  8be11149  max.f r3, r3, r17
000464  8be13149  max.f r3, r3, r19
000468  8be14149  max.f r3, r3, r20
00046c  8be15149  max.f r3, r3, r21
000470  8be16149  max.f r3, r3, r22
000474  8be17149  max.f r3, r3, r23
000478  8be19149  max.f r3, r3, r25
00047c  8be1a149  max.f r3, r3, r26
000480  73e03400  stores.w r3, 0(r9)
000484  00a00300  mfence { lm, sm, gm }
000488  80210204  csr_set csr3, r4
00048c  00d00100  sync_group
000490  efc10400  loads.w r3, 0(r9)
000494  ab020080  lui r5, 524288
000498  9f000ffe  addli r1, r30, -256
00049c  97a15100  xor r3, r3, r5
0004a0  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
0004a4  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
0004a8  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
0004ac  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
0004b0  00a00000  mfence { lm }
0004b4  e3810000  loadli.w r3,  0(r1)
0004b8  e3c20000  loadli.w r5,  4(r1)
0004bc  e3831000  loadli.w r7,  8(r1)
0004c0  63c41000  loadli.w r8,  12(r1)
0004c4  e3882000  loadli.w r17,  16(r1)
0004c8  e3c92000  loadli.w r19,  20(r1)
0004cc  638a3000  loadli.w r20,  24(r1)
0004d0  e3ca3000  loadli.w r21,  28(r1)
0004d4  638b4000  loadli.w r22,  32(r1)
0004d8  e3cb4000  loadli.w r23,  36(r1)
0004dc  e38c5000  loadli.w r25,  40(r1)
0004e0  63cd5000  loadli.w r26,  44(r1)
0004e4  638c6000  loadli.w r24,  48(r1)
0004e8  e3cd6000  loadli.w r27,  52(r1)
0004ec  638e7000  loadli.w r28,  56(r1)
0004f0  63c87000  loadli.w r16,  60(r1)
0004f4  8f810100  exp.f.rn r3, r3
0004f8  8f820200  exp.f.rn r5, r5
0004fc  8f830300  exp.f.rn r7, r7
000500  0f040400  exp.f.rn r8, r8
000504  8f880800  exp.f.rn r17, r17
000508  8f890900  exp.f.rn r19, r19
00050c  0f0a0a00  exp.f.rn r20, r20
000510  8f8a0a00  exp.f.rn r21, r21
000514  0f0b0b00  exp.f.rn r22, r22
000518  8f8b0b00  exp.f.rn r23, r23
00051c  8f8c0c00  exp.f.rn r25, r25
000520  0f0d0d00  exp.f.rn r26, r26
000524  0f0c0c00  exp.f.rn r24, r24
000528  8f8d0d00  exp.f.rn r27, r27
00052c  0f0e0e00  exp.f.rn r28, r28
000530  0f080800  exp.f.rn r16, r16
000534  67803000  storeli.w r3, 0(r1)
000538  67c05000  storeli.w r5, 4(r1)
00053c  e7807000  storeli.w r7, 8(r1)
000540  e7c08000  storeli.w r8, 12(r1)
000544  67811001  storeli.w r17, 16(r1)
000548  67c13001  storeli.w r19, 20(r1)
00054c  e7814001  storeli.w r20, 24(r1)
000550  e7c15001  storeli.w r21, 28(r1)
000554  67826001  storeli.w r22, 32(r1)
000558  67c27001  storeli.w r23, 36(r1)
00055c  e7829001  storeli.w r25, 40(r1)
000560  e7c2a001  storeli.w r26, 44(r1)
000564  67838001  storeli.w r24, 48(r1)
000568  67c3b001  storeli.w r27, 52(r1)
00056c  e783c001  storeli.w r28, 56(r1)
000570  e7c30001  storeli.w r16, 60(r1)
000574  e3818000  loadli.w r3,  64(r1)
000578  e3c28000  loadli.w r5,  68(r1)
00057c  e3839000  loadli.w r7,  72(r1)
000580  63c49000  loadli.w r8,  76(r1)
000584  e388a000  loadli.w r17,  80(r1)
000588  e3c9a000  loadli.w r19,  84(r1)
00058c  638ab000  loadli.w r20,  88(r1)
000590  e3cab000  loadli.w r21,  92(r1)
000594  638bc000  loadli.w r22,  96(r1)
000598  e3cbc000  loadli.w r23,  100(r1)
00059c  e38cd000  loadli.w r25,  104(r1)
0005a0  63cdd000  loadli.w r26,  108(r1)
0005a4  638ce000  loadli.w r24,  112(r1)
0005a8  e3cde000  loadli.w r27,  116(r1)
0005ac  638ef000  loadli.w r28,  120(r1)
0005b0  63c8f000  loadli.w r16,  124(r1)
0005b4  8f810100  exp.f.rn r3, r3
0005b8  8f820200  exp.f.rn r5, r5
0005bc  8f830300  exp.f.rn r7, r7
0005c0  0f040400  exp.f.rn r8, r8
0005c4  8f880800  exp.f.rn r17, r17
0005c8  8f890900  exp.f.rn r19, r19
0005cc  0f0a0a00  exp.f.rn r20, r20
0005d0  8f8a0a00  exp.f.rn r21, r21
0005d4  0f0b0b00  exp.f.rn r22, r22
0005d8  8f8b0b00  exp.f.rn r23, r23
0005dc  8f8c0c00  exp.f.rn r25, r25
0005e0  0f0d0d00  exp.f.rn r26, r26
0005e4  0f0c0c00  exp.f.rn r24, r24
0005e8  8f8d0d00  exp.f.rn r27, r27
0005ec  0f0e0e00  exp.f.rn r28, r28
0005f0  0f080800  exp.f.rn r16, r16
0005f4  67843000  storeli.w r3, 64(r1)
0005f8  67c45000  storeli.w r5, 68(r1)
0005fc  e7847000  storeli.w r7, 72(r1)
000600  e7c48000  storeli.w r8, 76(r1)
000604  67851001  storeli.w r17, 80(r1)
000608  67c53001  storeli.w r19, 84(r1)
00060c  e7854001  storeli.w r20, 88(r1)
000610  e7c55001  storeli.w r21, 92(r1)
000614  67866001  storeli.w r22, 96(r1)
000618  67c67001  storeli.w r23, 100(r1)
00061c  e7869001  storeli.w r25, 104(r1)
000620  e7c6a001  storeli.w r26, 108(r1)
000624  67878001  storeli.w r24, 112(r1)
000628  67c7b001  storeli.w r27, 116(r1)
00062c  e787c001  storeli.w r28, 120(r1)
000630  e7c70001  storeli.w r16, 124(r1)
000634  00a00000  mfence { lm }
000638  c2100fe2  vload_mask16.mz vr1{mr1}, 1792(r30)
00063c  42108fe2  vload_mask16.mz vr0{mr1}, 1856(r30)
000640  16910002  vadd.f.mz.rn vr2{mr1}, vr1, vr0
000644  fa110140  vextracti.f r3, 0(vr2)
000648  fa121140  vextracti.f r5, 1(vr2)
00064c  8be15110  add.f.rn r3, r3, r5
000650  fa122140  vextracti.f r5, 2(vr2)
000654  8be13210  add.f.rn r3, r5, r3
000658  fa123140  vextracti.f r5, 3(vr2)
00065c  8be13210  add.f.rn r3, r5, r3
000660  fa124140  vextracti.f r5, 4(vr2)
000664  8be13210  add.f.rn r3, r5, r3
000668  fa125140  vextracti.f r5, 5(vr2)
00066c  8be13210  add.f.rn r3, r5, r3
000670  fa126140  vextracti.f r5, 6(vr2)
000674  8be13210  add.f.rn r3, r5, r3
000678  fa127140  vextracti.f r5, 7(vr2)
00067c  8be13210  add.f.rn r3, r5, r3
000680  fa128140  vextracti.f r5, 8(vr2)
000684  8be13210  add.f.rn r3, r5, r3
000688  fa129140  vextracti.f r5, 9(vr2)
00068c  8be13210  add.f.rn r3, r5, r3
000690  fa12a140  vextracti.f r5, 10(vr2)
000694  8be13210  add.f.rn r3, r5, r3
000698  fa12b140  vextracti.f r5, 11(vr2)
00069c  8be13210  add.f.rn r3, r5, r3
0006a0  fa12c140  vextracti.f r5, 12(vr2)
0006a4  8be13210  add.f.rn r3, r5, r3
0006a8  fa12d140  vextracti.f r5, 13(vr2)
0006ac  8be13210  add.f.rn r3, r5, r3
0006b0  fa12e140  vextracti.f r5, 14(vr2)
0006b4  8be13210  add.f.rn r3, r5, r3
0006b8  fa12f140  vextracti.f r5, 15(vr2)
0006bc  8be13210  add.f.rn r3, r5, r3
0006c0  e342fffb  loadli.w r5,  -516(r30)
0006c4  73e03200  stores.w r3, 0(r5)
0006c8  00a00300  mfence { lm, sm, gm }
0006cc  80210204  csr_set csr3, r4
0006d0  00d00100  sync_group
0006d4  3b140900  bneq r18, zero, 260
0006d8  ef410500  loads.w r3, 0(r10)
0006dc  ef424500  loads.w r5, 4(r10)
0006e0  ef438500  loads.w r7, 8(r10)
0006e4  8be15110  add.f.rn r3, r3, r5
0006e8  ef42c500  loads.w r5, 12(r10)
0006ec  8be17110  add.f.rn r3, r3, r7
0006f0  ef430501  loads.w r7, 16(r10)
0006f4  8be15110  add.f.rn r3, r3, r5
0006f8  ef424501  loads.w r5, 20(r10)
0006fc  8be17110  add.f.rn r3, r3, r7
000700  ef438501  loads.w r7, 24(r10)
000704  8be15110  add.f.rn r3, r3, r5
000708  ef42c501  loads.w r5, 28(r10)
00070c  8be17110  add.f.rn r3, r3, r7
000710  ef430502  loads.w r7, 32(r10)
000714  8be15110  add.f.rn r3, r3, r5
000718  ef424502  loads.w r5, 36(r10)
00071c  8be17110  add.f.rn r3, r3, r7
000720  ef438502  loads.w r7, 40(r10)
000724  8be15110  add.f.rn r3, r3, r5
000728  ef42c502  loads.w r5, 44(r10)
00072c  8be17110  add.f.rn r3, r3, r7
000730  ef430503  loads.w r7, 48(r10)
000734  8be15110  add.f.rn r3, r3, r5
000738  ef424503  loads.w r5, 52(r10)
00073c  8be17110  add.f.rn r3, r3, r7
000740  ef438503  loads.w r7, 56(r10)
000744  8be15110  add.f.rn r3, r3, r5
000748  ef42c503  loads.w r5, 60(r10)
00074c  8be17110  add.f.rn r3, r3, r7
000750  ef430504  loads.w r7, 64(r10)
000754  8be15110  add.f.rn r3, r3, r5
000758  ef424504  loads.w r5, 68(r10)
00075c  8be17110  add.f.rn r3, r3, r7
000760  ef438504  loads.w r7, 72(r10)
000764  8be15110  add.f.rn r3, r3, r5
000768  ef42c504  loads.w r5, 76(r10)
00076c  8be17110  add.f.rn r3, r3, r7
000770  ef430505  loads.w r7, 80(r10)
000774  8be15110  add.f.rn r3, r3, r5
000778  ef424505  loads.w r5, 84(r10)
00077c  8be17110  add.f.rn r3, r3, r7
000780  ef438505  loads.w r7, 88(r10)
000784  8be15110  add.f.rn r3, r3, r5
000788  ef42c505  loads.w r5, 92(r10)
00078c  8be17110  add.f.rn r3, r3, r7
000790  ef430506  loads.w r7, 96(r10)
000794  8be15110  add.f.rn r3, r3, r5
000798  ef424506  loads.w r5, 100(r10)
00079c  8be17110  add.f.rn r3, r3, r7
0007a0  ef438506  loads.w r7, 104(r10)
0007a4  8be15110  add.f.rn r3, r3, r5
0007a8  ef42c506  loads.w r5, 108(r10)
0007ac  8be17110  add.f.rn r3, r3, r7
0007b0  ef430507  loads.w r7, 112(r10)
0007b4  8be15110  add.f.rn r3, r3, r5
0007b8  ef424507  loads.w r5, 116(r10)
0007bc  8be17110  add.f.rn r3, r3, r7
0007c0  ef438507  loads.w r7, 120(r10)
0007c4  8be15110  add.f.rn r3, r3, r5
0007c8  ef42c507  loads.w r5, 124(r10)
0007cc  8be17110  add.f.rn r3, r3, r7
0007d0  8be15110  add.f.rn r3, r3, r5
0007d4  73603500  stores.w r3, 0(r10)
0007d8  00a00300  mfence { lm, sm, gm }
0007dc  80210204  csr_set csr3, r4
0007e0  00d00100  sync_group
0007e4  ef410500  loads.w r3, 0(r10)
0007e8  ab00803f  lui r1, 260096
0007ec  1f840600  addli r8, r13, 0
0007f0  9f230000  addli r7, zero, 2
0007f4  8f813018  div.f.rn r3, r1, r3
0007f8  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
0007fc  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
000800  46181fc2  vstore_mask16.mz vr1{mr1}, 1664(r30)
000804  461c0fc2  vstore_mask16.mz vr0{mr1}, 1728(r30)
000808  9f000ffd  addli r1, r30, -384
00080c  00a00000  mfence { lm }
000810  e3018f00  loadli.w r3,  64(r30)
000814  3f1831fc  blt.s r2, r3, -1532
000818  1f040000  addli r8, zero, 0
00081c  db3fffff  j -1540
000820  9f0e8ffb  addli sp, r30, -576
000824  9f8e8e04  addli sp, sp, 576
000828  00a00300  mfence { lm, sm, gm }
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
000980  00100000  exit
000984  00100000  exit
000988  00100000  exit
00098c  00100000  exit
000990  00100000  exit
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
