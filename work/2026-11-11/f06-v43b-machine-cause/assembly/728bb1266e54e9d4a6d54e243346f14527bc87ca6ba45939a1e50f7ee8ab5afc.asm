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
0000dc  9f8eeefa  addli sp, sp, -656
0000e0  1f8fae04  addli r30, sp, 592
0000e4  2b010000  lui r2, 0
0000e8  80300002  core_id r1
0000ec  2bf30000  lui r6, 15
0000f0  e3435f00  loadli.w r7,  44(r30)
0000f4  63025f00  loadli.w r4,  40(r30)
0000f8  9bb22000  slli r5, r1, 2
0000fc  1f010100  addli r2, r2, 0
000100  63046f00  loadli.w r8,  48(r30)
000104  1b13f3ff  ori r6, r6, 4095
000108  8b912210  add.s r3, r5, r2
00010c  8b934320  mul.s r7, r7, r4
000110  00520002  load_param_i r4, 0
000114  73e80140  stores.w zero, 1040(r3)
000118  00a00300  mfence { lm, sm, gm }
00011c  80210304  csr_set csr3, r6
000120  00d00100  sync_group
000124  73e00100  stores.w zero, 0(r3)
000128  0b958320  mul.s r10, r7, r8
00012c  00a00300  mfence { lm, sm, gm }
000130  80210304  csr_set csr3, r6
000134  00d00100  sync_group
000138  cb124500  ble.s r10, r4, 164
00013c  1f038000  addli r6, zero, 64
000140  9f032000  addli r7, zero, 16
000144  80d50002  load_param_i r11, 1
000148  0b936030  div.s r6, r1, r6
00014c  e74b6ffa  storeli.w r6, -580(r30)
000150  1b336300  slli r6, r6, 6
000154  0b936018  sub.s r6, r1, r6
000158  3f207300  blt.s r6, r7, 8
00015c  5b0f0000  j 120
000160  9b387300  slli r17, r6, 7
000164  9f030010  addli r7, zero, 2048
000168  13030300  seteq r6, r6, zero
00016c  1f040001  addli r8, zero, 128
000170  abf4ffff  lui r9, 1048575
000174  1b8af003  andi r20, r1, 63
000178  9bf00004  setlti r1, r1, 64
00017c  1f892108  addli r18, r3, 1040
000180  1f7cf00f  addli r24, zero, 2047
000184  9f0c8ffb  addli r25, r30, -576
000188  1f0d0004  addli r26, zero, 512
00018c  ab0d0080  lui r27, 524288
000190  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000194  e70baffa  storeli.w r10, -584(r30)
000198  674bbffa  storeli.w r11, -588(r30)
00019c  8b931319  sub.s r7, r7, r17
0001a0  8b838340  min.u r7, r7, r8
0001a4  1b9404f0  ori r8, r9, 3840
0001a8  97828200  and r5, r5, r8
0001ac  9bb92300  slli r19, r7, 2
0001b0  1f040002  addli r8, zero, 256
0001b4  978b6000  and r23, r1, r6
0001b8  abf00000  lui r1, 15
0001bc  8b9a2210  add.s r21, r5, r2
0001c0  9f220000  addli r5, zero, 2
0001c4  1b9ef0ff  ori r28, r1, 4095
0001c8  ab00003a  lui r1, 237568
0001cc  1f8b2a08  addli r22, r21, 1040
0001d0  db050000  j 44
0001d4  0b12b210  add.s r4, r4, r11
0001d8  bf7fa2fe  blt.s r4, r10, -4
0001dc  9f8eae04  addli sp, sp, 592
0001e0  00a00300  mfence { lm, sm, gm }
0001e4  00100000  exit
0001e8  e3456ffb  loadli.w r11,  -588(r30)
0001ec  63057ffb  loadli.w r10,  -584(r30)
0001f0  0b12b210  add.s r4, r4, r11
0001f4  3f20a200  blt.s r4, r10, 8
0001f8  dbfcffff  j -28
0001fc  63016f00  loadli.w r2,  48(r30)
000200  63435f00  loadli.w r6,  44(r30)
000204  1f050000  addli r10, zero, 0
000208  0b112230  div.s r2, r4, r2
00020c  0b116130  div.s r2, r2, r6
000210  63437ffb  loadli.w r6,  -580(r30)
000214  1b318100  slli r2, r2, 8
000218  8b146110  add.s r9, r2, r6
00021c  db190000  j 204
000220  c2108fa3  vload_mask16.mz vr1{mr1}, 1472(r30)
000224  42110fc2  vload_mask16.mz vr2{mr1}, 1536(r30)
000228  c2118fc2  vload_mask16.mz vr3{mr1}, 1600(r30)
00022c  42120fc3  vload_mask16.mz vr4{mr1}, 1664(r30)
000230  c2128fc3  vload_mask16.mz vr5{mr1}, 1728(r30)
000234  42130fe2  vload_mask16.mz vr6{mr1}, 1792(r30)
000238  c2138fe2  vload_mask16.mz vr7{mr1}, 1856(r30)
00023c  42140fe3  vload_mask16.mz vr8{mr1}, 1920(r30)
000240  1721b101  xor r2, r2, r27
000244  6b538f00  load.d r[7:8], 8(r30)
000248  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
00024c  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
000250  92113102  vadd.f.mz.rn vr3{mr1}, r2, vr3
000254  12124102  vadd.f.mz.rn vr4{mr1}, r2, vr4
000258  92125102  vadd.f.mz.rn vr5{mr1}, r2, vr5
00025c  12136102  vadd.f.mz.rn vr6{mr1}, r2, vr6
000260  92137102  vadd.f.mz.rn vr7{mr1}, r2, vr7
000264  12148102  vadd.f.mz.rn vr8{mr1}, r2, vr8
000268  2b0100f0  lui r2, 983040
00026c  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
000270  0a112702  vmul.f.mz.rn vr2{mr1}, r14, vr2
000274  8a113702  vmul.f.mz.rn vr3{mr1}, r14, vr3
000278  0a124702  vmul.f.mz.rn vr4{mr1}, r14, vr4
00027c  8a125702  vmul.f.mz.rn vr5{mr1}, r14, vr5
000280  0a136702  vmul.f.mz.rn vr6{mr1}, r14, vr6
000284  8a137702  vmul.f.mz.rn vr7{mr1}, r14, vr7
000288  0a148702  vmul.f.mz.rn vr8{mr1}, r14, vr8
00028c  92101002  vadd.f.mz.rn vr1{mr1}, zero, vr1
000290  12112002  vadd.f.mz.rn vr2{mr1}, zero, vr2
000294  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
000298  12124002  vadd.f.mz.rn vr4{mr1}, zero, vr4
00029c  92125002  vadd.f.mz.rn vr5{mr1}, zero, vr5
0002a0  12136002  vadd.f.mz.rn vr6{mr1}, zero, vr6
0002a4  92137002  vadd.f.mz.rn vr7{mr1}, zero, vr7
0002a8  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
0002ac  0b23b310  add.ul r[7:8], r[7:8], r[12:13]
0002b0  17912900  or r2, r19, r2
0002b4  461c1fa2  vstore_mask16.mz vr1{mr1}, 1472(r30)
0002b8  46102fc2  vstore_mask16.mz vr2{mr1}, 1536(r30)
0002bc  46143fc2  vstore_mask16.mz vr3{mr1}, 1600(r30)
0002c0  46184fc2  vstore_mask16.mz vr4{mr1}, 1664(r30)
0002c4  461c5fc2  vstore_mask16.mz vr5{mr1}, 1728(r30)
0002c8  46106fe2  vstore_mask16.mz vr6{mr1}, 1792(r30)
0002cc  46147fe2  vstore_mask16.mz vr7{mr1}, 1856(r30)
0002d0  46188fe2  vstore_mask16.mz vr8{mr1}, 1920(r30)
0002d4  00a00000  mfence { lm }
0002d8  7f319301  s_lm2gm r2, r25, 0(r[7:8])
0002dc  00a00000  mfence { lm }
0002e0  1f150500  addli r10, r10, 1
0002e4  371c85fe  beq r10, r8, -252
0002e8  8b96a410  add.s r13, r9, r10
0002ec  bf5fdcfe  blt.s r24, r13, -12
0002f0  1f010000  addli r2, zero, 0
0002f4  0b932c10  add.s r6, r25, r2
0002f8  1f010101  addli r2, r2, 128
0002fc  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
000300  46140302  vstore_mask16.mz vr0{mr1}, 64(r6)
000304  00a00000  mfence { lm }
000308  bb3fa1ff  bneq r2, r26, -20
00030c  1bb1b600  slli r2, r13, 11
000310  6b530f00  load.d r[7:8], 0(r30)
000314  0b111111  add.s r2, r2, r17
000318  b3150128  sext_int2long r[12:13], r2
00031c  2b0100f0  lui r2, 983040
000320  97b55502  sll.d r[12:13], r[12:13], r5
000324  17912900  or r2, r19, r2
000328  0b27b310  add.ul r[15:16], r[7:8], r[12:13]
00032c  7f219701  l_gm2lm r2, r25, 0(r[15:16])
000330  00a00000  mfence { lm }
000334  42148fa3  vload_mask16.mz vr8{mr1}, 1472(r30)
000338  c2130fc2  vload_mask16.mz vr7{mr1}, 1536(r30)
00033c  c2108fc2  vload_mask16.mz vr1{mr1}, 1600(r30)
000340  42110fc3  vload_mask16.mz vr2{mr1}, 1664(r30)
000344  92117002  vadd.f.mz.rn vr3{mr1}, zero, vr7
000348  12128002  vadd.f.mz.rn vr4{mr1}, zero, vr8
00034c  92121002  vadd.f.mz.rn vr5{mr1}, zero, vr1
000350  12132002  vadd.f.mz.rn vr6{mr1}, zero, vr2
000354  16123202  vadd.f.mz.rn vr4{mr1}, vr4, vr3
000358  c2118fc3  vload_mask16.mz vr3{mr1}, 1728(r30)
00035c  96125202  vadd.f.mz.rn vr5{mr1}, vr4, vr5
000360  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
000364  92143002  vadd.f.mz.rn vr9{mr1}, zero, vr3
000368  16936202  vadd.f.mz.rn vr6{mr1}, vr5, vr6
00036c  c2128fe2  vload_mask16.mz vr5{mr1}, 1856(r30)
000370  12154002  vadd.f.mz.rn vr10{mr1}, zero, vr4
000374  16139302  vadd.f.mz.rn vr6{mr1}, vr6, vr9
000378  92145002  vadd.f.mz.rn vr9{mr1}, zero, vr5
00037c  1615a302  vadd.f.mz.rn vr10{mr1}, vr6, vr10
000380  42130fe3  vload_mask16.mz vr6{mr1}, 1920(r30)
000384  96149502  vadd.f.mz.rn vr9{mr1}, vr10, vr9
000388  12156002  vadd.f.mz.rn vr10{mr1}, zero, vr6
00038c  9694a402  vadd.f.mz.rn vr9{mr1}, vr9, vr10
000390  7a910440  vextracti.f r2, 0(vr9)
000394  7a971440  vextracti.f r14, 1(vr9)
000398  0b61e110  add.f.rn r2, r2, r14
00039c  7a972440  vextracti.f r14, 2(vr9)
0003a0  0b612710  add.f.rn r2, r14, r2
0003a4  7a973440  vextracti.f r14, 3(vr9)
0003a8  0b612710  add.f.rn r2, r14, r2
0003ac  7a974440  vextracti.f r14, 4(vr9)
0003b0  0b612710  add.f.rn r2, r14, r2
0003b4  7a975440  vextracti.f r14, 5(vr9)
0003b8  0b612710  add.f.rn r2, r14, r2
0003bc  7a976440  vextracti.f r14, 6(vr9)
0003c0  0b612710  add.f.rn r2, r14, r2
0003c4  7a977440  vextracti.f r14, 7(vr9)
0003c8  0b612710  add.f.rn r2, r14, r2
0003cc  7a978440  vextracti.f r14, 8(vr9)
0003d0  0b612710  add.f.rn r2, r14, r2
0003d4  7a979440  vextracti.f r14, 9(vr9)
0003d8  0b612710  add.f.rn r2, r14, r2
0003dc  7a97a440  vextracti.f r14, 10(vr9)
0003e0  0b612710  add.f.rn r2, r14, r2
0003e4  7a97b440  vextracti.f r14, 11(vr9)
0003e8  0b612710  add.f.rn r2, r14, r2
0003ec  7a97c440  vextracti.f r14, 12(vr9)
0003f0  0b612710  add.f.rn r2, r14, r2
0003f4  7a97d440  vextracti.f r14, 13(vr9)
0003f8  0b612710  add.f.rn r2, r14, r2
0003fc  7a97e440  vextracti.f r14, 14(vr9)
000400  0b612710  add.f.rn r2, r14, r2
000404  7a97f440  vextracti.f r14, 15(vr9)
000408  0b612710  add.f.rn r2, r14, r2
00040c  73e02100  stores.w r2, 0(r3)
000410  00a00300  mfence { lm, sm, gm }
000414  80210e04  csr_set csr3, r28
000418  00d00100  sync_group
00041c  3b180a00  bneq r20, zero, 516
000420  6fc70a00  loads.w r14, 0(r21)
000424  6fc84a00  loads.w r16, 4(r21)
000428  efc78a00  loads.w r15, 8(r21)
00042c  0b610711  add.f.rn r2, r14, r16
000430  6fc7ca00  loads.w r14, 12(r21)
000434  0b61f110  add.f.rn r2, r2, r15
000438  efc70a01  loads.w r15, 16(r21)
00043c  0b61e110  add.f.rn r2, r2, r14
000440  6fc74a01  loads.w r14, 20(r21)
000444  0b61f110  add.f.rn r2, r2, r15
000448  efc78a01  loads.w r15, 24(r21)
00044c  0b61e110  add.f.rn r2, r2, r14
000450  6fc7ca01  loads.w r14, 28(r21)
000454  0b61f110  add.f.rn r2, r2, r15
000458  efc70a02  loads.w r15, 32(r21)
00045c  0b61e110  add.f.rn r2, r2, r14
000460  6fc74a02  loads.w r14, 36(r21)
000464  0b61f110  add.f.rn r2, r2, r15
000468  efc78a02  loads.w r15, 40(r21)
00046c  0b61e110  add.f.rn r2, r2, r14
000470  6fc7ca02  loads.w r14, 44(r21)
000474  0b61f110  add.f.rn r2, r2, r15
000478  efc70a03  loads.w r15, 48(r21)
00047c  0b61e110  add.f.rn r2, r2, r14
000480  6fc74a03  loads.w r14, 52(r21)
000484  0b61f110  add.f.rn r2, r2, r15
000488  efc78a03  loads.w r15, 56(r21)
00048c  0b61e110  add.f.rn r2, r2, r14
000490  6fc7ca03  loads.w r14, 60(r21)
000494  0b61f110  add.f.rn r2, r2, r15
000498  efc70a04  loads.w r15, 64(r21)
00049c  0b61e110  add.f.rn r2, r2, r14
0004a0  6fc74a04  loads.w r14, 68(r21)
0004a4  0b61f110  add.f.rn r2, r2, r15
0004a8  efc78a04  loads.w r15, 72(r21)
0004ac  0b61e110  add.f.rn r2, r2, r14
0004b0  6fc7ca04  loads.w r14, 76(r21)
0004b4  0b61f110  add.f.rn r2, r2, r15
0004b8  efc70a05  loads.w r15, 80(r21)
0004bc  0b61e110  add.f.rn r2, r2, r14
0004c0  6fc74a05  loads.w r14, 84(r21)
0004c4  0b61f110  add.f.rn r2, r2, r15
0004c8  efc78a05  loads.w r15, 88(r21)
0004cc  0b61e110  add.f.rn r2, r2, r14
0004d0  6fc7ca05  loads.w r14, 92(r21)
0004d4  0b61f110  add.f.rn r2, r2, r15
0004d8  efc70a06  loads.w r15, 96(r21)
0004dc  0b61e110  add.f.rn r2, r2, r14
0004e0  6fc74a06  loads.w r14, 100(r21)
0004e4  0b61f110  add.f.rn r2, r2, r15
0004e8  efc78a06  loads.w r15, 104(r21)
0004ec  0b61e110  add.f.rn r2, r2, r14
0004f0  6fc7ca06  loads.w r14, 108(r21)
0004f4  0b61f110  add.f.rn r2, r2, r15
0004f8  efc70a07  loads.w r15, 112(r21)
0004fc  0b61e110  add.f.rn r2, r2, r14
000500  6fc74a07  loads.w r14, 116(r21)
000504  0b61f110  add.f.rn r2, r2, r15
000508  efc78a07  loads.w r15, 120(r21)
00050c  0b61e110  add.f.rn r2, r2, r14
000510  6fc7ca07  loads.w r14, 124(r21)
000514  0b61f110  add.f.rn r2, r2, r15
000518  efc70a08  loads.w r15, 128(r21)
00051c  0b61e110  add.f.rn r2, r2, r14
000520  6fc74a08  loads.w r14, 132(r21)
000524  0b61f110  add.f.rn r2, r2, r15
000528  efc78a08  loads.w r15, 136(r21)
00052c  0b61e110  add.f.rn r2, r2, r14
000530  6fc7ca08  loads.w r14, 140(r21)
000534  0b61f110  add.f.rn r2, r2, r15
000538  efc70a09  loads.w r15, 144(r21)
00053c  0b61e110  add.f.rn r2, r2, r14
000540  6fc74a09  loads.w r14, 148(r21)
000544  0b61f110  add.f.rn r2, r2, r15
000548  efc78a09  loads.w r15, 152(r21)
00054c  0b61e110  add.f.rn r2, r2, r14
000550  6fc7ca09  loads.w r14, 156(r21)
000554  0b61f110  add.f.rn r2, r2, r15
000558  efc70a0a  loads.w r15, 160(r21)
00055c  0b61e110  add.f.rn r2, r2, r14
000560  6fc74a0a  loads.w r14, 164(r21)
000564  0b61f110  add.f.rn r2, r2, r15
000568  efc78a0a  loads.w r15, 168(r21)
00056c  0b61e110  add.f.rn r2, r2, r14
000570  6fc7ca0a  loads.w r14, 172(r21)
000574  0b61f110  add.f.rn r2, r2, r15
000578  efc70a0b  loads.w r15, 176(r21)
00057c  0b61e110  add.f.rn r2, r2, r14
000580  6fc74a0b  loads.w r14, 180(r21)
000584  0b61f110  add.f.rn r2, r2, r15
000588  efc78a0b  loads.w r15, 184(r21)
00058c  0b61e110  add.f.rn r2, r2, r14
000590  6fc7ca0b  loads.w r14, 188(r21)
000594  0b61f110  add.f.rn r2, r2, r15
000598  efc70a0c  loads.w r15, 192(r21)
00059c  0b61e110  add.f.rn r2, r2, r14
0005a0  6fc74a0c  loads.w r14, 196(r21)
0005a4  0b61f110  add.f.rn r2, r2, r15
0005a8  efc78a0c  loads.w r15, 200(r21)
0005ac  0b61e110  add.f.rn r2, r2, r14
0005b0  6fc7ca0c  loads.w r14, 204(r21)
0005b4  0b61f110  add.f.rn r2, r2, r15
0005b8  efc70a0d  loads.w r15, 208(r21)
0005bc  0b61e110  add.f.rn r2, r2, r14
0005c0  6fc74a0d  loads.w r14, 212(r21)
0005c4  0b61f110  add.f.rn r2, r2, r15
0005c8  efc78a0d  loads.w r15, 216(r21)
0005cc  0b61e110  add.f.rn r2, r2, r14
0005d0  6fc7ca0d  loads.w r14, 220(r21)
0005d4  0b61f110  add.f.rn r2, r2, r15
0005d8  efc70a0e  loads.w r15, 224(r21)
0005dc  0b61e110  add.f.rn r2, r2, r14
0005e0  6fc74a0e  loads.w r14, 228(r21)
0005e4  0b61f110  add.f.rn r2, r2, r15
0005e8  efc78a0e  loads.w r15, 232(r21)
0005ec  0b61e110  add.f.rn r2, r2, r14
0005f0  6fc7ca0e  loads.w r14, 236(r21)
0005f4  0b61f110  add.f.rn r2, r2, r15
0005f8  efc70a0f  loads.w r15, 240(r21)
0005fc  0b61e110  add.f.rn r2, r2, r14
000600  6fc74a0f  loads.w r14, 244(r21)
000604  0b61f110  add.f.rn r2, r2, r15
000608  efc78a0f  loads.w r15, 248(r21)
00060c  0b61e110  add.f.rn r2, r2, r14
000610  6fc7ca0f  loads.w r14, 252(r21)
000614  0b61f110  add.f.rn r2, r2, r15
000618  0b61e110  add.f.rn r2, r2, r14
00061c  73e02a00  stores.w r2, 0(r21)
000620  92340002  vadd.s.mz vr9{mr1}, zero, vr0
000624  a6148402  vmac.f.mz.rn vr9{mr1}, vr8, vr8
000628  12340002  vadd.s.mz vr8{mr1}, zero, vr0
00062c  26947302  vmac.f.mz.rn vr8{mr1}, vr7, vr7
000630  96938402  vadd.f.mz.rn vr7{mr1}, vr9, vr8
000634  12340002  vadd.s.mz vr8{mr1}, zero, vr0
000638  26941002  vmac.f.mz.rn vr8{mr1}, vr1, vr1
00063c  96908302  vadd.f.mz.rn vr1{mr1}, vr7, vr8
000640  92330002  vadd.s.mz vr7{mr1}, zero, vr0
000644  a6132102  vmac.f.mz.rn vr7{mr1}, vr2, vr2
000648  12310002  vadd.s.mz vr2{mr1}, zero, vr0
00064c  26913102  vmac.f.mz.rn vr2{mr1}, vr3, vr3
000650  96907002  vadd.f.mz.rn vr1{mr1}, vr1, vr7
000654  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000658  12310002  vadd.s.mz vr2{mr1}, zero, vr0
00065c  26114202  vmac.f.mz.rn vr2{mr1}, vr4, vr4
000660  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000664  12310002  vadd.s.mz vr2{mr1}, zero, vr0
000668  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00066c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000670  12310002  vadd.s.mz vr2{mr1}, zero, vr0
000674  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000678  00a00300  mfence { lm, sm, gm }
00067c  80210e04  csr_set csr3, r28
000680  00d00100  sync_group
000684  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000688  7a910040  vextracti.f r2, 0(vr1)
00068c  7a971040  vextracti.f r14, 1(vr1)
000690  fa97f040  vextracti.f r15, 15(vr1)
000694  0b61e110  add.f.rn r2, r2, r14
000698  7a972040  vextracti.f r14, 2(vr1)
00069c  0b612710  add.f.rn r2, r14, r2
0006a0  7a973040  vextracti.f r14, 3(vr1)
0006a4  0b612710  add.f.rn r2, r14, r2
0006a8  7a974040  vextracti.f r14, 4(vr1)
0006ac  0b612710  add.f.rn r2, r14, r2
0006b0  7a975040  vextracti.f r14, 5(vr1)
0006b4  0b612710  add.f.rn r2, r14, r2
0006b8  7a976040  vextracti.f r14, 6(vr1)
0006bc  0b612710  add.f.rn r2, r14, r2
0006c0  7a977040  vextracti.f r14, 7(vr1)
0006c4  0b612710  add.f.rn r2, r14, r2
0006c8  7a978040  vextracti.f r14, 8(vr1)
0006cc  0b612710  add.f.rn r2, r14, r2
0006d0  7a979040  vextracti.f r14, 9(vr1)
0006d4  0b612710  add.f.rn r2, r14, r2
0006d8  7a97a040  vextracti.f r14, 10(vr1)
0006dc  0b612710  add.f.rn r2, r14, r2
0006e0  7a97b040  vextracti.f r14, 11(vr1)
0006e4  0b612710  add.f.rn r2, r14, r2
0006e8  7a97c040  vextracti.f r14, 12(vr1)
0006ec  0b612710  add.f.rn r2, r14, r2
0006f0  7a97d040  vextracti.f r14, 13(vr1)
0006f4  0b612710  add.f.rn r2, r14, r2
0006f8  7a97e040  vextracti.f r14, 14(vr1)
0006fc  0b612710  add.f.rn r2, r14, r2
000700  6fc70a00  loads.w r14, 0(r21)
000704  0be12710  add.f.rn r2, r15, r2
000708  73602900  stores.w r2, 0(r18)
00070c  00a00300  mfence { lm, sm, gm }
000710  80210e04  csr_set csr3, r28
000714  00d00100  sync_group
000718  3b180a00  bneq r20, zero, 516
00071c  ef470b00  loads.w r15, 0(r22)
000720  6f414b00  loads.w r2, 4(r22)
000724  6f488b00  loads.w r16, 8(r22)
000728  0be12710  add.f.rn r2, r15, r2
00072c  ef47cb00  loads.w r15, 12(r22)
000730  0b610111  add.f.rn r2, r2, r16
000734  6f480b01  loads.w r16, 16(r22)
000738  0b61f110  add.f.rn r2, r2, r15
00073c  ef474b01  loads.w r15, 20(r22)
000740  0b610111  add.f.rn r2, r2, r16
000744  6f488b01  loads.w r16, 24(r22)
000748  0b61f110  add.f.rn r2, r2, r15
00074c  ef47cb01  loads.w r15, 28(r22)
000750  0b610111  add.f.rn r2, r2, r16
000754  6f480b02  loads.w r16, 32(r22)
000758  0b61f110  add.f.rn r2, r2, r15
00075c  ef474b02  loads.w r15, 36(r22)
000760  0b610111  add.f.rn r2, r2, r16
000764  6f488b02  loads.w r16, 40(r22)
000768  0b61f110  add.f.rn r2, r2, r15
00076c  ef47cb02  loads.w r15, 44(r22)
000770  0b610111  add.f.rn r2, r2, r16
000774  6f480b03  loads.w r16, 48(r22)
000778  0b61f110  add.f.rn r2, r2, r15
00077c  ef474b03  loads.w r15, 52(r22)
000780  0b610111  add.f.rn r2, r2, r16
000784  6f488b03  loads.w r16, 56(r22)
000788  0b61f110  add.f.rn r2, r2, r15
00078c  ef47cb03  loads.w r15, 60(r22)
000790  0b610111  add.f.rn r2, r2, r16
000794  6f480b04  loads.w r16, 64(r22)
000798  0b61f110  add.f.rn r2, r2, r15
00079c  ef474b04  loads.w r15, 68(r22)
0007a0  0b610111  add.f.rn r2, r2, r16
0007a4  6f488b04  loads.w r16, 72(r22)
0007a8  0b61f110  add.f.rn r2, r2, r15
0007ac  ef47cb04  loads.w r15, 76(r22)
0007b0  0b610111  add.f.rn r2, r2, r16
0007b4  6f480b05  loads.w r16, 80(r22)
0007b8  0b61f110  add.f.rn r2, r2, r15
0007bc  ef474b05  loads.w r15, 84(r22)
0007c0  0b610111  add.f.rn r2, r2, r16
0007c4  6f488b05  loads.w r16, 88(r22)
0007c8  0b61f110  add.f.rn r2, r2, r15
0007cc  ef47cb05  loads.w r15, 92(r22)
0007d0  0b610111  add.f.rn r2, r2, r16
0007d4  6f480b06  loads.w r16, 96(r22)
0007d8  0b61f110  add.f.rn r2, r2, r15
0007dc  ef474b06  loads.w r15, 100(r22)
0007e0  0b610111  add.f.rn r2, r2, r16
0007e4  6f488b06  loads.w r16, 104(r22)
0007e8  0b61f110  add.f.rn r2, r2, r15
0007ec  ef47cb06  loads.w r15, 108(r22)
0007f0  0b610111  add.f.rn r2, r2, r16
0007f4  6f480b07  loads.w r16, 112(r22)
0007f8  0b61f110  add.f.rn r2, r2, r15
0007fc  ef474b07  loads.w r15, 116(r22)
000800  0b610111  add.f.rn r2, r2, r16
000804  6f488b07  loads.w r16, 120(r22)
000808  0b61f110  add.f.rn r2, r2, r15
00080c  ef47cb07  loads.w r15, 124(r22)
000810  0b610111  add.f.rn r2, r2, r16
000814  6f480b08  loads.w r16, 128(r22)
000818  0b61f110  add.f.rn r2, r2, r15
00081c  ef474b08  loads.w r15, 132(r22)
000820  0b610111  add.f.rn r2, r2, r16
000824  6f488b08  loads.w r16, 136(r22)
000828  0b61f110  add.f.rn r2, r2, r15
00082c  ef47cb08  loads.w r15, 140(r22)
000830  0b610111  add.f.rn r2, r2, r16
000834  6f480b09  loads.w r16, 144(r22)
000838  0b61f110  add.f.rn r2, r2, r15
00083c  ef474b09  loads.w r15, 148(r22)
000840  0b610111  add.f.rn r2, r2, r16
000844  6f488b09  loads.w r16, 152(r22)
000848  0b61f110  add.f.rn r2, r2, r15
00084c  ef47cb09  loads.w r15, 156(r22)
000850  0b610111  add.f.rn r2, r2, r16
000854  6f480b0a  loads.w r16, 160(r22)
000858  0b61f110  add.f.rn r2, r2, r15
00085c  ef474b0a  loads.w r15, 164(r22)
000860  0b610111  add.f.rn r2, r2, r16
000864  6f488b0a  loads.w r16, 168(r22)
000868  0b61f110  add.f.rn r2, r2, r15
00086c  ef47cb0a  loads.w r15, 172(r22)
000870  0b610111  add.f.rn r2, r2, r16
000874  6f480b0b  loads.w r16, 176(r22)
000878  0b61f110  add.f.rn r2, r2, r15
00087c  ef474b0b  loads.w r15, 180(r22)
000880  0b610111  add.f.rn r2, r2, r16
000884  6f488b0b  loads.w r16, 184(r22)
000888  0b61f110  add.f.rn r2, r2, r15
00088c  ef47cb0b  loads.w r15, 188(r22)
000890  0b610111  add.f.rn r2, r2, r16
000894  6f480b0c  loads.w r16, 192(r22)
000898  0b61f110  add.f.rn r2, r2, r15
00089c  ef474b0c  loads.w r15, 196(r22)
0008a0  0b610111  add.f.rn r2, r2, r16
0008a4  6f488b0c  loads.w r16, 200(r22)
0008a8  0b61f110  add.f.rn r2, r2, r15
0008ac  ef47cb0c  loads.w r15, 204(r22)
0008b0  0b610111  add.f.rn r2, r2, r16
0008b4  6f480b0d  loads.w r16, 208(r22)
0008b8  0b61f110  add.f.rn r2, r2, r15
0008bc  ef474b0d  loads.w r15, 212(r22)
0008c0  0b610111  add.f.rn r2, r2, r16
0008c4  6f488b0d  loads.w r16, 216(r22)
0008c8  0b61f110  add.f.rn r2, r2, r15
0008cc  ef47cb0d  loads.w r15, 220(r22)
0008d0  0b610111  add.f.rn r2, r2, r16
0008d4  6f480b0e  loads.w r16, 224(r22)
0008d8  0b61f110  add.f.rn r2, r2, r15
0008dc  ef474b0e  loads.w r15, 228(r22)
0008e0  0b610111  add.f.rn r2, r2, r16
0008e4  6f488b0e  loads.w r16, 232(r22)
0008e8  0b61f110  add.f.rn r2, r2, r15
0008ec  ef47cb0e  loads.w r15, 236(r22)
0008f0  0b610111  add.f.rn r2, r2, r16
0008f4  6f480b0f  loads.w r16, 240(r22)
0008f8  0b61f110  add.f.rn r2, r2, r15
0008fc  ef474b0f  loads.w r15, 244(r22)
000900  0b610111  add.f.rn r2, r2, r16
000904  6f488b0f  loads.w r16, 248(r22)
000908  0b61f110  add.f.rn r2, r2, r15
00090c  ef47cb0f  loads.w r15, 252(r22)
000910  0b610111  add.f.rn r2, r2, r16
000914  0b61f110  add.f.rn r2, r2, r15
000918  73602b00  stores.w r2, 0(r22)
00091c  00a00300  mfence { lm, sm, gm }
000920  80210e04  csr_set csr3, r28
000924  00d00100  sync_group
000928  ef470b00  loads.w r15, 0(r22)
00092c  0b611720  mul.f.rn r2, r14, r1
000930  63032f00  loadli.w r6,  16(r30)
000934  0be71720  mul.f.rn r14, r15, r1
000938  8b672120  mul.f.rn r15, r2, r2
00093c  0b67f718  sub.f.rn r14, r14, r15
000940  0b67e310  add.f.rn r14, r6, r14
000944  2b03803f  lui r6, 260096
000948  0f070708  sqrt.f.rn r14, r14
00094c  0f07e318  div.f.rn r14, r6, r14
000950  37c30bfc  beq r23, zero, -1840
000954  b3970628  sext_int2long r[16:17], r13
000958  6b538f01  load.d r[7:8], 24(r30)
00095c  ab0600f0  lui r13, 983040
000960  9f4d0000  addli r27, zero, 4
000964  670c2ffe  storeli.w r2, -64(r30)
000968  00a00000  mfence { lm }
00096c  97b75702  sll.d r[16:17], r[16:17], r5
000970  9796dd00  or r13, r27, r13
000974  9f028fff  addli r5, r30, -64
000978  0b23f310  add.ul r[7:8], r[7:8], r[16:17]
00097c  ff365300  s_lm2gm r13, r5, 0(r[7:8])
000980  ab0600f0  lui r13, 983040
000984  00a00000  mfence { lm }
000988  6b530f02  load.d r[7:8], 32(r30)
00098c  670ceffe  storeli.w r14, -64(r30)
000990  9796dd00  or r13, r27, r13
000994  00a00000  mfence { lm }
000998  ab0d0080  lui r27, 524288
00099c  0b23f310  add.ul r[7:8], r[7:8], r[16:17]
0009a0  ff365300  s_lm2gm r13, r5, 0(r[7:8])
0009a4  9f220000  addli r5, zero, 2
0009a8  00a00000  mfence { lm }
0009ac  db0effff  j -1932
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
000bd4  00100000  exit
000bd8  00100000  exit
000bdc  00100000  exit
000be0  00100000  exit
000be4  00100000  exit
000be8  00100000  exit
000bec  00100000  exit
