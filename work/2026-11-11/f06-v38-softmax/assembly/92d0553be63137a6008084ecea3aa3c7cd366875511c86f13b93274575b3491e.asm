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
0000e8  ab040000  lui r9, 0
0000ec  00340002  core_id r8
0000f0  1f8f8e04  addli r30, sp, 576
0000f4  abf20000  lui r5, 15
0000f8  9b302400  slli r1, r8, 2
0000fc  9f840400  addli r9, r9, 0
000100  6302cf00  loadli.w r4,  96(r30)
000104  6341bf00  loadli.w r2,  92(r30)
000108  e341cf00  loadli.w r3,  100(r30)
00010c  9b92f2ff  ori r5, r5, 4095
000110  0b939010  add.s r6, r1, r9
000114  0b112220  mul.s r2, r4, r2
000118  9f032340  addli r7, r6, 8208
00011c  0b113120  mul.s r2, r2, r3
000120  e70f7ffa  storeli.w r7, -520(r30)
000124  73e00300  stores.w zero, 0(r7)
000128  00a00300  mfence { lm, sm, gm }
00012c  80a10204  csr_set csr3, r5
000130  00d00100  sync_group
000134  e74f6ffa  storeli.w r6, -516(r30)
000138  73600300  stores.w zero, 0(r6)
00013c  00530002  load_param_i r6, 0
000140  00a00300  mfence { lm, sm, gm }
000144  80a10204  csr_set csr3, r5
000148  00d00100  sync_group
00014c  674f2ffa  storeli.w r2, -524(r30)
000150  cb4c6102  ble.s r2, r6, 1840
000154  1b097400  andi r18, r8, 7
000158  63015f00  loadli.w r2,  40(r30)
00015c  eb560f03  load.d r[14:15], 48(r30)
000160  80d30002  load_param_i r7, 1
000164  1f068000  addli r12, zero, 64
000168  eb510f02  load.d r[4:5], 32(r30)
00016c  e34c1f00  loadli.w r25,  12(r30)
000170  1b443400  srli r8, r8, 3
000174  e3498f00  loadli.w r19,  68(r30)
000178  eb570f05  load.d r[16:17], 80(r30)
00017c  eb5d8f01  load.d r[28:29], 24(r30)
000180  9b386900  slli r17, r18, 6
000184  670f7ffa  storeli.w r7, -528(r30)
000188  9f130000  addli r7, zero, 1
00018c  0b111119  sub.s r2, r2, r17
000190  33850828  zext_int2long r[11:12], r17
000194  0b110148  max.s r2, r2, zero
000198  8bb6a620  mul.sl r[14:15], r[14:15], r[11:12]
00019c  0b11c140  min.s r2, r2, r12
0001a0  97b67602  sll.d r[14:15], r[14:15], r7
0001a4  1b311100  slli r2, r2, 1
0001a8  8ba1d110  add.ul r[4:5], r[4:5], r[14:15]
0001ac  8b961919  sub.s r13, r19, r17
0001b0  674e2ffa  storeli.w r2, -540(r30)
0001b4  2bf1ffff  lui r2, 1048575
0001b8  73343fde  store.d r[4:5], -536(r30)
0001bc  9b017400  andi r3, r8, 7
0001c0  0b941c19  sub.s r8, r25, r17
0001c4  1b1101fe  ori r2, r2, 4064
0001c8  0b140448  max.s r8, r8, zero
0001cc  670e3ffa  storeli.w r3, -544(r30)
0001d0  97802000  and r1, r1, r2
0001d4  33810128  zext_int2long r[3:4], r3
0001d8  733c2fdc  store.d r[3:4], -552(r30)
0001dc  0b11c440  min.s r2, r8, r12
0001e0  0b949010  add.s r8, r1, r9
0001e4  8b900648  max.s r1, r13, zero
0001e8  8bb1ad20  mul.sl r[4:5], r[28:29], r[11:12]
0001ec  0bb5a720  mul.sl r[11:12], r[16:17], r[11:12]
0001f0  9f060ffd  addli r13, r30, -384
0001f4  8b90c040  min.s r1, r1, r12
0001f8  1b311100  slli r2, r2, 1
0001fc  9f042440  addli r9, r8, 8208
000200  73383fdc  store.d r[4:5], -560(r30)
000204  1bb61000  slli r12, r1, 1
000208  e74c2ffa  storeli.w r2, -564(r30)
00020c  5b080000  j 64
000210  6b518f04  load.d r[3:4], 72(r30)
000214  2b0200f0  lui r4, 983040
000218  97904000  or r1, r1, r4
00021c  0b312720  mul.sl r[3:4], r[15:16], r[3:4]
000220  6b578f03  load.d r[15:16], 56(r30)
000224  0b21a110  add.ul r[3:4], r[3:4], r[11:12]
000228  17317102  sll.d r[3:4], r[3:4], r7
00022c  0b212710  add.ul r[3:4], r[15:16], r[3:4]
000230  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
000234  e300effb  loadli.w r1,  -528(r30)
000238  00a00000  mfence { lm }
00023c  0b131310  add.s r6, r6, r1
000240  e340effb  loadli.w r1,  -524(r30)
000244  3f201300  blt.s r6, r1, 8
000248  5bc70000  j 1592
00024c  e340cf00  loadli.w r1,  100(r30)
000250  6301cf00  loadli.w r2,  96(r30)
000254  2b0700f0  lui r14, 983040
000258  9f010ffc  addli r3, r30, -512
00025c  8b101330  div.s r1, r6, r1
000260  8b902030  div.s r1, r1, r2
000264  6341cffb  loadli.w r2,  -540(r30)
000268  9717e100  or r15, r2, r14
00026c  1bb73000  slli r14, r1, 3
000270  eb508fde  load.d r[2:3], -536(r30)
000274  ffa73000  l_gm2lm r15, r3, 0(r[2:3])
000278  e300cffb  loadli.w r1,  -544(r30)
00027c  00a00000  mfence { lm }
000280  63011f00  loadli.w r2,  8(r30)
000284  97181700  or r17, r14, r1
000288  e3409ffb  loadli.w r1,  -564(r30)
00028c  3fa02800  blt.s r17, r2, 8
000290  9f000000  addli r1, zero, 0
000294  6b518fdd  load.d r[3:4], -552(r30)
000298  33170728  sext_int2long r[15:16], r14
00029c  eb590fdd  load.d r[20:21], -560(r30)
0002a0  17172702  or.d r[15:16], r[15:16], r[3:4]
0002a4  6b510f01  load.d r[3:4], 16(r30)
0002a8  8b312720  mul.sl r[4:5], r[15:16], r[3:4]
0002ac  8ba13111  add.ul r[4:5], r[4:5], r[20:21]
0002b0  ab0900f0  lui r19, 983040
0002b4  97903001  or r1, r1, r19
0002b8  eb590f00  load.d r[20:21], 0(r30)
0002bc  97b17102  sll.d r[4:5], r[4:5], r7
0002c0  8ba13910  add.ul r[4:5], r[20:21], r[4:5]
0002c4  ffa0d100  l_gm2lm r1, r13, 0(r[4:5])
0002c8  00a00000  mfence { lm }
0002cc  42100fc3  vload_mask16.mz vr0{mr1}, 1664(r30)
0002d0  c2108fc3  vload_mask16.mz vr1{mr1}, 1728(r30)
0002d4  42110fc2  vload_mask16.mz vr2{mr1}, 1536(r30)
0002d8  c2118fc2  vload_mask16.mz vr3{mr1}, 1600(r30)
0002dc  06b20000  vfp162float_l.rn vr4, vr1
0002e0  86f20000  vfp162float_h.rn vr5, vr1
0002e4  06330000  vfp162float_l.rn vr6, vr0
0002e8  86730000  vfp162float_h.rn vr7, vr0
0002ec  06740100  vfp162float_h.rn vr8, vr2
0002f0  86f40100  vfp162float_h.rn vr9, vr3
0002f4  6341fffb  loadli.w r2,  -516(r30)
0002f8  86b00100  vfp162float_l.rn vr1, vr3
0002fc  06300100  vfp162float_l.rn vr0, vr2
000300  96110302  vadd.f.mz.rn vr3{mr1}, vr6, vr0
000304  16918302  vadd.f.mz.rn vr2{mr1}, vr7, vr8
000308  96101202  vadd.f.mz.rn vr1{mr1}, vr4, vr1
00030c  36922102  vmax.f.mz vr4{mr1}, vr3, vr2
000310  16909202  vadd.f.mz.rn vr0{mr1}, vr5, vr9
000314  36121202  vmax.f.mz vr4{mr1}, vr4, vr1
000318  36120202  vmax.f.mz vr4{mr1}, vr4, vr0
00031c  fa100240  vextracti.f r1, 0(vr4)
000320  fa111240  vextracti.f r3, 1(vr4)
000324  7a122240  vextracti.f r4, 2(vr4)
000328  fa193240  vextracti.f r19, 3(vr4)
00032c  8be03048  max.f r1, r1, r3
000330  fa114240  vextracti.f r3, 4(vr4)
000334  8be04048  max.f r1, r1, r4
000338  7a125240  vextracti.f r4, 5(vr4)
00033c  8be03049  max.f r1, r1, r19
000340  fa196240  vextracti.f r19, 6(vr4)
000344  8be03048  max.f r1, r1, r3
000348  fa117240  vextracti.f r3, 7(vr4)
00034c  8be04048  max.f r1, r1, r4
000350  7a128240  vextracti.f r4, 8(vr4)
000354  8be03049  max.f r1, r1, r19
000358  fa199240  vextracti.f r19, 9(vr4)
00035c  8be03048  max.f r1, r1, r3
000360  fa11a240  vextracti.f r3, 10(vr4)
000364  8be04048  max.f r1, r1, r4
000368  7a12b240  vextracti.f r4, 11(vr4)
00036c  8be03049  max.f r1, r1, r19
000370  fa19c240  vextracti.f r19, 12(vr4)
000374  8be03048  max.f r1, r1, r3
000378  fa11d240  vextracti.f r3, 13(vr4)
00037c  8be04048  max.f r1, r1, r4
000380  7a12e240  vextracti.f r4, 14(vr4)
000384  8be03049  max.f r1, r1, r19
000388  fa19f240  vextracti.f r19, 15(vr4)
00038c  8be03048  max.f r1, r1, r3
000390  8be04048  max.f r1, r1, r4
000394  8be03049  max.f r1, r1, r19
000398  73601100  stores.w r1, 0(r2)
00039c  00a00300  mfence { lm, sm, gm }
0003a0  80a10204  csr_set csr3, r5
0003a4  00d00100  sync_group
0003a8  3b110900  bneq r18, zero, 68
0003ac  ef400400  loads.w r1, 0(r8)
0003b0  ef414400  loads.w r3, 4(r8)
0003b4  6f428400  loads.w r4, 8(r8)
0003b8  ef49c400  loads.w r19, 12(r8)
0003bc  ef430401  loads.w r7, 16(r8)
0003c0  6f484401  loads.w r16, 20(r8)
0003c4  6f4a8401  loads.w r20, 24(r8)
0003c8  ef4ac401  loads.w r21, 28(r8)
0003cc  8be03048  max.f r1, r1, r3
0003d0  8be04048  max.f r1, r1, r4
0003d4  8be03049  max.f r1, r1, r19
0003d8  8be07048  max.f r1, r1, r7
0003dc  8be00049  max.f r1, r1, r16
0003e0  8be04049  max.f r1, r1, r20
0003e4  8be05049  max.f r1, r1, r21
0003e8  73601400  stores.w r1, 0(r8)
0003ec  00a00300  mfence { lm, sm, gm }
0003f0  80a10204  csr_set csr3, r5
0003f4  00d00100  sync_group
0003f8  ef400400  loads.w r1, 0(r8)
0003fc  2b010080  lui r2, 524288
000400  9f060ffe  addli r13, r30, -256
000404  97a02000  xor r1, r1, r2
000408  92913002  vadd.f.mz.rn vr3{mr1}, r1, vr3
00040c  12912002  vadd.f.mz.rn vr2{mr1}, r1, vr2
000410  46103fe2  vstore_mask16.mz vr3{mr1}, 1792(r30)
000414  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000418  46142fe2  vstore_mask16.mz vr2{mr1}, 1856(r30)
00041c  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000420  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
000424  461c0fe2  vstore_mask16.mz vr0{mr1}, 1984(r30)
000428  00a00000  mfence { lm }
00042c  e3800600  loadli.w r1,  0(r13)
000430  e3c10600  loadli.w r3,  4(r13)
000434  63821600  loadli.w r4,  8(r13)
000438  e3c31600  loadli.w r7,  12(r13)
00043c  63882600  loadli.w r16,  16(r13)
000440  e3c92600  loadli.w r19,  20(r13)
000444  638a3600  loadli.w r20,  24(r13)
000448  e3ca3600  loadli.w r21,  28(r13)
00044c  638b4600  loadli.w r22,  32(r13)
000450  e3cb4600  loadli.w r23,  36(r13)
000454  638c5600  loadli.w r24,  40(r13)
000458  e3cc5600  loadli.w r25,  44(r13)
00045c  638d6600  loadli.w r26,  48(r13)
000460  e3cd6600  loadli.w r27,  52(r13)
000464  638e7600  loadli.w r28,  56(r13)
000468  63c17600  loadli.w r2,  60(r13)
00046c  8f800000  exp.f.rn r1, r1
000470  8f810100  exp.f.rn r3, r3
000474  0f020200  exp.f.rn r4, r4
000478  8f830300  exp.f.rn r7, r7
00047c  0f080800  exp.f.rn r16, r16
000480  8f890900  exp.f.rn r19, r19
000484  0f0a0a00  exp.f.rn r20, r20
000488  8f8a0a00  exp.f.rn r21, r21
00048c  0f0b0b00  exp.f.rn r22, r22
000490  8f8b0b00  exp.f.rn r23, r23
000494  0f0c0c00  exp.f.rn r24, r24
000498  8f8c0c00  exp.f.rn r25, r25
00049c  0f0d0d00  exp.f.rn r26, r26
0004a0  8f8d0d00  exp.f.rn r27, r27
0004a4  0f0e0e00  exp.f.rn r28, r28
0004a8  0f010100  exp.f.rn r2, r2
0004ac  67801600  storeli.w r1, 0(r13)
0004b0  67c03600  storeli.w r3, 4(r13)
0004b4  e7804600  storeli.w r4, 8(r13)
0004b8  e7c07600  storeli.w r7, 12(r13)
0004bc  67810601  storeli.w r16, 16(r13)
0004c0  67c13601  storeli.w r19, 20(r13)
0004c4  e7814601  storeli.w r20, 24(r13)
0004c8  e7c15601  storeli.w r21, 28(r13)
0004cc  67826601  storeli.w r22, 32(r13)
0004d0  67c27601  storeli.w r23, 36(r13)
0004d4  e7828601  storeli.w r24, 40(r13)
0004d8  e7c29601  storeli.w r25, 44(r13)
0004dc  6783a601  storeli.w r26, 48(r13)
0004e0  67c3b601  storeli.w r27, 52(r13)
0004e4  e783c601  storeli.w r28, 56(r13)
0004e8  e7c32600  storeli.w r2, 60(r13)
0004ec  e3808600  loadli.w r1,  64(r13)
0004f0  e3c18600  loadli.w r3,  68(r13)
0004f4  63829600  loadli.w r4,  72(r13)
0004f8  e3c39600  loadli.w r7,  76(r13)
0004fc  6388a600  loadli.w r16,  80(r13)
000500  e3c9a600  loadli.w r19,  84(r13)
000504  638ab600  loadli.w r20,  88(r13)
000508  e3cab600  loadli.w r21,  92(r13)
00050c  638bc600  loadli.w r22,  96(r13)
000510  e3cbc600  loadli.w r23,  100(r13)
000514  638cd600  loadli.w r24,  104(r13)
000518  e3ccd600  loadli.w r25,  108(r13)
00051c  638de600  loadli.w r26,  112(r13)
000520  e3cde600  loadli.w r27,  116(r13)
000524  638ef600  loadli.w r28,  120(r13)
000528  63c1f600  loadli.w r2,  124(r13)
00052c  8f800000  exp.f.rn r1, r1
000530  8f810100  exp.f.rn r3, r3
000534  0f020200  exp.f.rn r4, r4
000538  8f830300  exp.f.rn r7, r7
00053c  0f080800  exp.f.rn r16, r16
000540  8f890900  exp.f.rn r19, r19
000544  0f0a0a00  exp.f.rn r20, r20
000548  8f8a0a00  exp.f.rn r21, r21
00054c  0f0b0b00  exp.f.rn r22, r22
000550  8f8b0b00  exp.f.rn r23, r23
000554  0f0c0c00  exp.f.rn r24, r24
000558  8f8c0c00  exp.f.rn r25, r25
00055c  0f0d0d00  exp.f.rn r26, r26
000560  8f8d0d00  exp.f.rn r27, r27
000564  0f0e0e00  exp.f.rn r28, r28
000568  0f010100  exp.f.rn r2, r2
00056c  67841600  storeli.w r1, 64(r13)
000570  67c43600  storeli.w r3, 68(r13)
000574  e7844600  storeli.w r4, 72(r13)
000578  e7c47600  storeli.w r7, 76(r13)
00057c  67850601  storeli.w r16, 80(r13)
000580  67c53601  storeli.w r19, 84(r13)
000584  e7854601  storeli.w r20, 88(r13)
000588  e7c55601  storeli.w r21, 92(r13)
00058c  67866601  storeli.w r22, 96(r13)
000590  67c67601  storeli.w r23, 100(r13)
000594  e7868601  storeli.w r24, 104(r13)
000598  e7c69601  storeli.w r25, 108(r13)
00059c  6787a601  storeli.w r26, 112(r13)
0005a0  67c7b601  storeli.w r27, 116(r13)
0005a4  e787c601  storeli.w r28, 120(r13)
0005a8  e7c72600  storeli.w r2, 124(r13)
0005ac  e3800601  loadli.w r1,  128(r13)
0005b0  e3c10601  loadli.w r3,  132(r13)
0005b4  63821601  loadli.w r4,  136(r13)
0005b8  e3c31601  loadli.w r7,  140(r13)
0005bc  63882601  loadli.w r16,  144(r13)
0005c0  e3c92601  loadli.w r19,  148(r13)
0005c4  638a3601  loadli.w r20,  152(r13)
0005c8  e3ca3601  loadli.w r21,  156(r13)
0005cc  638b4601  loadli.w r22,  160(r13)
0005d0  e3cb4601  loadli.w r23,  164(r13)
0005d4  638c5601  loadli.w r24,  168(r13)
0005d8  e3cc5601  loadli.w r25,  172(r13)
0005dc  638d6601  loadli.w r26,  176(r13)
0005e0  e3cd6601  loadli.w r27,  180(r13)
0005e4  638e7601  loadli.w r28,  184(r13)
0005e8  63c17601  loadli.w r2,  188(r13)
0005ec  8f800000  exp.f.rn r1, r1
0005f0  8f810100  exp.f.rn r3, r3
0005f4  0f020200  exp.f.rn r4, r4
0005f8  8f830300  exp.f.rn r7, r7
0005fc  0f080800  exp.f.rn r16, r16
000600  8f890900  exp.f.rn r19, r19
000604  0f0a0a00  exp.f.rn r20, r20
000608  8f8a0a00  exp.f.rn r21, r21
00060c  0f0b0b00  exp.f.rn r22, r22
000610  8f8b0b00  exp.f.rn r23, r23
000614  0f0c0c00  exp.f.rn r24, r24
000618  8f8c0c00  exp.f.rn r25, r25
00061c  0f0d0d00  exp.f.rn r26, r26
000620  8f8d0d00  exp.f.rn r27, r27
000624  0f0e0e00  exp.f.rn r28, r28
000628  0f010100  exp.f.rn r2, r2
00062c  67881600  storeli.w r1, 128(r13)
000630  67c83600  storeli.w r3, 132(r13)
000634  e7884600  storeli.w r4, 136(r13)
000638  e7c87600  storeli.w r7, 140(r13)
00063c  67890601  storeli.w r16, 144(r13)
000640  67c93601  storeli.w r19, 148(r13)
000644  e7894601  storeli.w r20, 152(r13)
000648  e7c95601  storeli.w r21, 156(r13)
00064c  678a6601  storeli.w r22, 160(r13)
000650  67ca7601  storeli.w r23, 164(r13)
000654  e78a8601  storeli.w r24, 168(r13)
000658  e7ca9601  storeli.w r25, 172(r13)
00065c  678ba601  storeli.w r26, 176(r13)
000660  67cbb601  storeli.w r27, 180(r13)
000664  e78bc601  storeli.w r28, 184(r13)
000668  e7cb2600  storeli.w r2, 188(r13)
00066c  e3808601  loadli.w r1,  192(r13)
000670  e3c18601  loadli.w r3,  196(r13)
000674  63829601  loadli.w r4,  200(r13)
000678  e3c39601  loadli.w r7,  204(r13)
00067c  6388a601  loadli.w r16,  208(r13)
000680  e3c9a601  loadli.w r19,  212(r13)
000684  638ab601  loadli.w r20,  216(r13)
000688  e3cab601  loadli.w r21,  220(r13)
00068c  638bc601  loadli.w r22,  224(r13)
000690  e3cbc601  loadli.w r23,  228(r13)
000694  638cd601  loadli.w r24,  232(r13)
000698  e3ccd601  loadli.w r25,  236(r13)
00069c  638de601  loadli.w r26,  240(r13)
0006a0  e3cde601  loadli.w r27,  244(r13)
0006a4  638ef601  loadli.w r28,  248(r13)
0006a8  63c1f601  loadli.w r2,  252(r13)
0006ac  8f800000  exp.f.rn r1, r1
0006b0  8f810100  exp.f.rn r3, r3
0006b4  0f020200  exp.f.rn r4, r4
0006b8  8f830300  exp.f.rn r7, r7
0006bc  0f080800  exp.f.rn r16, r16
0006c0  8f890900  exp.f.rn r19, r19
0006c4  0f0a0a00  exp.f.rn r20, r20
0006c8  8f8a0a00  exp.f.rn r21, r21
0006cc  0f0b0b00  exp.f.rn r22, r22
0006d0  8f8b0b00  exp.f.rn r23, r23
0006d4  0f0c0c00  exp.f.rn r24, r24
0006d8  8f8c0c00  exp.f.rn r25, r25
0006dc  0f0d0d00  exp.f.rn r26, r26
0006e0  8f8d0d00  exp.f.rn r27, r27
0006e4  0f0e0e00  exp.f.rn r28, r28
0006e8  0f010100  exp.f.rn r2, r2
0006ec  678c1600  storeli.w r1, 192(r13)
0006f0  67cc3600  storeli.w r3, 196(r13)
0006f4  e78c4600  storeli.w r4, 200(r13)
0006f8  e7cc7600  storeli.w r7, 204(r13)
0006fc  678d0601  storeli.w r16, 208(r13)
000700  67cd3601  storeli.w r19, 212(r13)
000704  e78d4601  storeli.w r20, 216(r13)
000708  e7cd5601  storeli.w r21, 220(r13)
00070c  678e6601  storeli.w r22, 224(r13)
000710  67ce7601  storeli.w r23, 228(r13)
000714  e78e8601  storeli.w r24, 232(r13)
000718  e7ce9601  storeli.w r25, 236(r13)
00071c  678fa601  storeli.w r26, 240(r13)
000720  67cfb601  storeli.w r27, 244(r13)
000724  e78fc601  storeli.w r28, 248(r13)
000728  e7cf2600  storeli.w r2, 252(r13)
00072c  00a00000  mfence { lm }
000730  c2100fe2  vload_mask16.mz vr1{mr1}, 1792(r30)
000734  42108fe2  vload_mask16.mz vr0{mr1}, 1856(r30)
000738  42110fe3  vload_mask16.mz vr2{mr1}, 1920(r30)
00073c  96910002  vadd.f.mz.rn vr3{mr1}, vr1, vr0
000740  16922102  vadd.f.mz.rn vr4{mr1}, vr3, vr2
000744  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
000748  16123202  vadd.f.mz.rn vr4{mr1}, vr4, vr3
00074c  fa100240  vextracti.f r1, 0(vr4)
000750  7a111240  vextracti.f r2, 1(vr4)
000754  8be02010  add.f.rn r1, r1, r2
000758  7a112240  vextracti.f r2, 2(vr4)
00075c  8b601110  add.f.rn r1, r2, r1
000760  7a113240  vextracti.f r2, 3(vr4)
000764  8b601110  add.f.rn r1, r2, r1
000768  7a114240  vextracti.f r2, 4(vr4)
00076c  8b601110  add.f.rn r1, r2, r1
000770  7a115240  vextracti.f r2, 5(vr4)
000774  8b601110  add.f.rn r1, r2, r1
000778  7a116240  vextracti.f r2, 6(vr4)
00077c  8b601110  add.f.rn r1, r2, r1
000780  7a117240  vextracti.f r2, 7(vr4)
000784  8b601110  add.f.rn r1, r2, r1
000788  7a118240  vextracti.f r2, 8(vr4)
00078c  8b601110  add.f.rn r1, r2, r1
000790  7a119240  vextracti.f r2, 9(vr4)
000794  8b601110  add.f.rn r1, r2, r1
000798  7a11a240  vextracti.f r2, 10(vr4)
00079c  8b601110  add.f.rn r1, r2, r1
0007a0  7a11b240  vextracti.f r2, 11(vr4)
0007a4  8b601110  add.f.rn r1, r2, r1
0007a8  7a11c240  vextracti.f r2, 12(vr4)
0007ac  8b601110  add.f.rn r1, r2, r1
0007b0  7a11d240  vextracti.f r2, 13(vr4)
0007b4  8b601110  add.f.rn r1, r2, r1
0007b8  7a11e240  vextracti.f r2, 14(vr4)
0007bc  8b601110  add.f.rn r1, r2, r1
0007c0  7a11f240  vextracti.f r2, 15(vr4)
0007c4  8b601110  add.f.rn r1, r2, r1
0007c8  6301fffb  loadli.w r2,  -520(r30)
0007cc  73601100  stores.w r1, 0(r2)
0007d0  00a00300  mfence { lm, sm, gm }
0007d4  80a10204  csr_set csr3, r5
0007d8  00d00100  sync_group
0007dc  3b110900  bneq r18, zero, 68
0007e0  efc00400  loads.w r1, 0(r9)
0007e4  6fc14400  loads.w r2, 4(r9)
0007e8  efc18400  loads.w r3, 8(r9)
0007ec  8be02010  add.f.rn r1, r1, r2
0007f0  6fc1c400  loads.w r2, 12(r9)
0007f4  8be03010  add.f.rn r1, r1, r3
0007f8  efc10401  loads.w r3, 16(r9)
0007fc  8be02010  add.f.rn r1, r1, r2
000800  6fc14401  loads.w r2, 20(r9)
000804  8be03010  add.f.rn r1, r1, r3
000808  efc18401  loads.w r3, 24(r9)
00080c  8be02010  add.f.rn r1, r1, r2
000810  6fc1c401  loads.w r2, 28(r9)
000814  8be03010  add.f.rn r1, r1, r3
000818  8be02010  add.f.rn r1, r1, r2
00081c  73e01400  stores.w r1, 0(r9)
000820  00a00300  mfence { lm, sm, gm }
000824  80a10204  csr_set csr3, r5
000828  00d00100  sync_group
00082c  efc00400  loads.w r1, 0(r9)
000830  2b01803f  lui r2, 260096
000834  9f130000  addli r7, zero, 1
000838  9f060ffd  addli r13, r30, -384
00083c  8f001118  div.f.rn r1, r2, r1
000840  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
000844  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
000848  06920000  vfloat2fp16_l.rn vr4, vr1
00084c  06520000  vfloat2fp16_h.rn vr4, vr0
000850  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
000854  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
000858  46184fc2  vstore_mask16.mz vr4{mr1}, 1664(r30)
00085c  06100100  vfloat2fp16_l.rn vr0, vr2
000860  06d00100  vfloat2fp16_h.rn vr0, vr3
000864  461c0fc2  vstore_mask16.mz vr0{mr1}, 1728(r30)
000868  9f000600  addli r1, r12, 0
00086c  00a00000  mfence { lm }
000870  63018f00  loadli.w r2,  64(r30)
000874  3ff628fc  blt.s r17, r2, -1636
000878  9f000000  addli r1, zero, 0
00087c  db32ffff  j -1644
000880  9f0e8ffb  addli sp, r30, -576
000884  9f8e8e04  addli sp, sp, 576
000888  00a00300  mfence { lm, sm, gm }
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
