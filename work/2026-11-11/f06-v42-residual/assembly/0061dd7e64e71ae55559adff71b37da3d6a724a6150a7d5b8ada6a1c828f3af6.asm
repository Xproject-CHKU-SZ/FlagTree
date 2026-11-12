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
000078  9f495000  addli r19, zero, 44
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
0000dc  9f8e8ede  addli sp, sp, -4288
0000e0  1f8f0e21  addli r30, sp, 4224
0000e4  e3004f00  loadli.w r1,  32(r30)
0000e8  63414f00  loadli.w r2,  36(r30)
0000ec  e3015f00  loadli.w r3,  40(r30)
0000f0  0b111120  mul.s r2, r2, r1
0000f4  80500002  load_param_i r1, 0
0000f8  0b193120  mul.s r18, r2, r3
0000fc  cb131900  ble.s r18, r1, 228
000100  00310002  core_id r2
000104  80d90002  load_param_i r19, 1
000108  2b030800  lui r6, 128
00010c  33110128  sext_int2long r[3:4], r2
000110  33920928  sext_int2long r[5:6], r19
000114  33030328  zext_int2long r[7:8], r6
000118  0b314120  mul.sl r[3:4], r[3:4], r[5:6]
00011c  33920028  sext_int2long r[5:6], r1
000120  0b214110  add.ul r[3:4], r[3:4], r[5:6]
000124  1f221000  addli r4, zero, 10
000128  17324102  sll.d r[5:6], r[3:4], r4
00012c  13346204  setlt.sl r8, r[5:6], r[7:8]
000130  b7220400  beq r8, zero, 168
000134  0b324318  sub.sl r[5:6], r[7:8], r[5:6]
000138  33030028  zext_int2long r[7:8], zero
00013c  6b560f00  load.d r[13:14], 0(r30)
000140  eb548f01  load.d r[10:11], 24(r30)
000144  1f046fdf  addli r8, r30, -4176
000148  e3052f00  loadli.w r11,  16(r30)
00014c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000150  2b084000  lui r16, 1024
000154  9f080010  addli r17, zero, 2048
000158  e74b2fdf  storeli.w r18, -4164(r30)
00015c  e70b3fdf  storeli.w r19, -4168(r30)
000160  0b326248  max.sl r[5:6], r[5:6], r[7:8]
000164  1f030008  addli r6, zero, 1024
000168  9f331000  addli r7, zero, 11
00016c  33070328  zext_int2long r[15:16], r6
000170  17317102  sll.d r[3:4], r[3:4], r7
000174  0b232610  add.ul r[7:8], r[13:14], r[3:4]
000178  0b32e240  min.sl r[5:6], r[5:6], r[15:16]
00017c  0ba12410  add.ul r[3:4], r[10:11], r[3:4]
000180  9f062000  addli r13, zero, 16
000184  1f060ff0  addli r12, r30, -2048
000188  1f170000  addli r14, zero, 1
00018c  73306400  store.d r[7:8], 0(r8)
000190  1b341200  slli r8, r4, 1
000194  1f025fdf  addli r4, r30, -4184
000198  6aa10622  vor.u.mz vr2{mr1}, r13, vr0
00019c  73302200  store.d r[3:4], 0(r4)
0001a0  33810508  fix2float.rn r2, r11
0001a4  ab01807f  lui r3, 522240
0001a8  9f050fe0  addli r11, r30, -4096
0001ac  ea100122  vor.f.mz vr1{mr1}, r2, vr0
0001b0  2ba1aaaa  lui r2, 699050
0001b4  eaa10122  vor.u.mz vr3{mr1}, r3, vr0
0001b8  1f215115  addli r2, r2, 2730
0001bc  7e0001e0  vmmov mr0, r2
0001c0  2b515555  lui r2, 349525
0001c4  1f51a10a  addli r2, r2, 1365
0001c8  7e0101e0  vmmov mr2, r2
0001cc  2b710000  lui r2, 7
0001d0  9b17f1ff  ori r15, r2, 4095
0001d4  5b090000  j 72
0001d8  8b903011  add.s r1, r1, r19
0001dc  bfff20ff  blt.s r1, r18, -4
0001e0  9f0e0fdf  addli sp, r30, -4224
0001e4  9f8e0e21  addli sp, sp, 4224
0001e8  00a00300  mfence { lm, sm, gm }
0001ec  00100000  exit
0001f0  9f025fdf  addli r5, r30, -4184
0001f4  2b0100f0  lui r2, 983040
0001f8  e3097fdf  loadli.w r19,  -4168(r30)
0001fc  ebd10200  load.d r[4:5], 0(r5)
000200  17112400  or r2, r8, r2
000204  8b903011  add.s r1, r1, r19
000208  7fb1c100  s_lm2gm r2, r12, 0(r[4:5])
00020c  00a00000  mfence { lm }
000210  63497fdf  loadli.w r18,  -4164(r30)
000214  3fa02001  blt.s r1, r18, 8
000218  5bf9ffff  j -56
00021c  1f036fdf  addli r6, r30, -4176
000220  2b0100f0  lui r2, 983040
000224  ab0100f0  lui r3, 983040
000228  1f090000  addli r18, zero, 0
00022c  6b520300  load.d r[5:6], 0(r6)
000230  17112400  or r2, r8, r2
000234  97113400  or r3, r8, r3
000238  7f21b200  l_gm2lm r2, r11, 0(r[5:6])
00023c  6b528f00  load.d r[5:6], 8(r30)
000240  ff21c200  l_gm2lm r3, r12, 0(r[5:6])
000244  00a00000  mfence { lm }
000248  5b1c0000  j 224
00024c  fa3b0240  vextracti.s r23, 0(vr4)
000250  12320002  vadd.s.mz vr4{mr1}, zero, vr0
000254  1f1e0000  addli r28, zero, 1
000258  1f090901  addli r18, r18, 128
00025c  fe010ee0  vmmov mr3, r28
000260  6aa24b36  vor.u.mh vr4{mr3}, r23, vr4
000264  9f2b0000  addli r23, zero, 2
000268  fe810be0  vmmov mr3, r23
00026c  6a224136  vor.u.mh vr4{mr3}, r2, vr4
000270  1f410000  addli r2, zero, 4
000274  fe0101e0  vmmov mr3, r2
000278  1f011000  addli r2, zero, 8
00027c  6aa24136  vor.u.mh vr4{mr3}, r3, vr4
000280  fe0101e0  vmmov mr3, r2
000284  1f012000  addli r2, zero, 16
000288  6a224536  vor.u.mh vr4{mr3}, r10, vr4
00028c  fe0101e0  vmmov mr3, r2
000290  1f014000  addli r2, zero, 32
000294  6aa24436  vor.u.mh vr4{mr3}, r9, vr4
000298  fe0101e0  vmmov mr3, r2
00029c  1f018000  addli r2, zero, 64
0002a0  6aa24336  vor.u.mh vr4{mr3}, r7, vr4
0002a4  fe0101e0  vmmov mr3, r2
0002a8  1f010001  addli r2, zero, 128
0002ac  6a224336  vor.u.mh vr4{mr3}, r6, vr4
0002b0  fe0101e0  vmmov mr3, r2
0002b4  1f010002  addli r2, zero, 256
0002b8  6aa24236  vor.u.mh vr4{mr3}, r5, vr4
0002bc  fe0101e0  vmmov mr3, r2
0002c0  1f010004  addli r2, zero, 512
0002c4  6a224236  vor.u.mh vr4{mr3}, r4, vr4
0002c8  fe0101e0  vmmov mr3, r2
0002cc  1f010008  addli r2, zero, 1024
0002d0  6aa24d36  vor.u.mh vr4{mr3}, r27, vr4
0002d4  fe0101e0  vmmov mr3, r2
0002d8  1f010010  addli r2, zero, 2048
0002dc  6a224d36  vor.u.mh vr4{mr3}, r26, vr4
0002e0  fe0101e0  vmmov mr3, r2
0002e4  1f010020  addli r2, zero, 4096
0002e8  6aa24c36  vor.u.mh vr4{mr3}, r25, vr4
0002ec  fe0101e0  vmmov mr3, r2
0002f0  1f010040  addli r2, zero, 8192
0002f4  6a224c36  vor.u.mh vr4{mr3}, r24, vr4
0002f8  fe0101e0  vmmov mr3, r2
0002fc  2b410000  lui r2, 4
000300  6a224b36  vor.u.mh vr4{mr3}, r22, vr4
000304  fe0101e0  vmmov mr3, r2
000308  2b810000  lui r2, 8
00030c  6aa24a36  vor.u.mh vr4{mr3}, r21, vr4
000310  fe0101e0  vmmov mr3, r2
000314  6a224a36  vor.u.mh vr4{mr3}, r20, vr4
000318  6af246c0  vsrl.p vr4, r13, vr4
00031c  46804914  vstore.mh vr4{mr2}, 0(r19)
000320  00a00000  mfence { lm }
000324  373b19ff  beq r18, r17, -308
000328  0b912511  add.s r2, r11, r18
00032c  0b1a2611  add.s r20, r12, r18
000330  c2050100  vload.mz vr11{mr0}, 0(r2)
000334  42040104  vload.mz vr8{mr2}, 0(r2)
000338  1f018100  addli r2, r2, 64
00033c  42020a00  vload.mz vr4{mr0}, 0(r20)
000340  9f098a00  addli r19, r20, 64
000344  c2040a04  vload.mz vr9{mr2}, 0(r20)
000348  a6151202  vmac.f.mz.rn vr11{mr1}, vr4, vr1
00034c  ee32b1c2  vsrl.s.mz vr5{mr1}, vr2, vr11
000350  42020104  vload.mz vr4{mr2}, 0(r2)
000354  42030100  vload.mz vr6{mr0}, 0(r2)
000358  1f018fdf  addli r2, r30, -4160
00035c  c2830900  vload.mz vr7{mr0}, 0(r19)
000360  6a355702  vand.s.mz vr10{mr1}, r14, vr5
000364  c2820904  vload.mz vr5{mr2}, 0(r19)
000368  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
00036c  669205c0  vabs.f vr4, vr11
000370  16b5a502  vadd.s.mz vr10{mr1}, vr11, vr10
000374  ea35b822  vor.s.mz vr11{mr1}, r16, vr11
000378  f6a14142  vlt.u.mz mr3{mr1}, vr3, vr4
00037c  fe8c01a0  vmmov r25, mr3
000380  12b5a702  vadd.s.mz vr10{mr1}, r15, vr10
000384  1bc1fc00  srli r2, r25, 15
000388  1b011100  andi r2, r2, 1
00038c  3b300100  bneq r2, zero, 12
000390  fa3af540  vextracti.s r21, 15(vr10)
000394  5b010000  j 8
000398  fabaf540  vextracti.s r21, 15(vr11)
00039c  1bc1ec00  srli r2, r25, 14
0003a0  1b011100  andi r2, r2, 1
0003a4  3b300100  bneq r2, zero, 12
0003a8  7a3be540  vextracti.s r22, 14(vr10)
0003ac  5b010000  j 8
0003b0  7abbe540  vextracti.s r22, 14(vr11)
0003b4  1bc1dc00  srli r2, r25, 13
0003b8  1b011100  andi r2, r2, 1
0003bc  3b300100  bneq r2, zero, 12
0003c0  fa3bd540  vextracti.s r23, 13(vr10)
0003c4  5b010000  j 8
0003c8  fabbd540  vextracti.s r23, 13(vr11)
0003cc  1bc1cc00  srli r2, r25, 12
0003d0  1b011100  andi r2, r2, 1
0003d4  3b300100  bneq r2, zero, 12
0003d8  7a3cc540  vextracti.s r24, 12(vr10)
0003dc  5b010000  j 8
0003e0  7abcc540  vextracti.s r24, 12(vr11)
0003e4  1bc1bc00  srli r2, r25, 11
0003e8  1b011100  andi r2, r2, 1
0003ec  3b300100  bneq r2, zero, 12
0003f0  7a3db540  vextracti.s r26, 11(vr10)
0003f4  5b010000  j 8
0003f8  7abdb540  vextracti.s r26, 11(vr11)
0003fc  1bc1ac00  srli r2, r25, 10
000400  1b011100  andi r2, r2, 1
000404  3b300100  bneq r2, zero, 12
000408  fa3da540  vextracti.s r27, 10(vr10)
00040c  5b010000  j 8
000410  fabda540  vextracti.s r27, 10(vr11)
000414  1bc19c00  srli r2, r25, 9
000418  1b011100  andi r2, r2, 1
00041c  3b300100  bneq r2, zero, 12
000420  7a3e9540  vextracti.s r28, 9(vr10)
000424  5b010000  j 8
000428  7abe9540  vextracti.s r28, 9(vr11)
00042c  1bc18c00  srli r2, r25, 8
000430  1b011100  andi r2, r2, 1
000434  3b300100  bneq r2, zero, 12
000438  7a328540  vextracti.s r4, 8(vr10)
00043c  5b010000  j 8
000440  7ab28540  vextracti.s r4, 8(vr11)
000444  1bc17c00  srli r2, r25, 7
000448  1b011100  andi r2, r2, 1
00044c  3b300100  bneq r2, zero, 12
000450  fa327540  vextracti.s r5, 7(vr10)
000454  5b010000  j 8
000458  fab27540  vextracti.s r5, 7(vr11)
00045c  1bc16c00  srli r2, r25, 6
000460  1b011100  andi r2, r2, 1
000464  3b300100  bneq r2, zero, 12
000468  7a336540  vextracti.s r6, 6(vr10)
00046c  5b010000  j 8
000470  7ab36540  vextracti.s r6, 6(vr11)
000474  1bc15c00  srli r2, r25, 5
000478  1b011100  andi r2, r2, 1
00047c  3b300100  bneq r2, zero, 12
000480  fa335540  vextracti.s r7, 5(vr10)
000484  5b010000  j 8
000488  fab35540  vextracti.s r7, 5(vr11)
00048c  1bc14c00  srli r2, r25, 4
000490  1b011100  andi r2, r2, 1
000494  3b300100  bneq r2, zero, 12
000498  fa344540  vextracti.s r9, 4(vr10)
00049c  5b010000  j 8
0004a0  fab44540  vextracti.s r9, 4(vr11)
0004a4  1bc13c00  srli r2, r25, 3
0004a8  1b011100  andi r2, r2, 1
0004ac  3b300100  bneq r2, zero, 12
0004b0  7a353540  vextracti.s r10, 3(vr10)
0004b4  5b010000  j 8
0004b8  7ab53540  vextracti.s r10, 3(vr11)
0004bc  1bc12c00  srli r2, r25, 2
0004c0  1b011100  andi r2, r2, 1
0004c4  3b300100  bneq r2, zero, 12
0004c8  fa312540  vextracti.s r3, 2(vr10)
0004cc  5b010000  j 8
0004d0  fab12540  vextracti.s r3, 2(vr11)
0004d4  1bc11c00  srli r2, r25, 1
0004d8  1b011100  andi r2, r2, 1
0004dc  3b600100  bneq r2, zero, 24
0004e0  7a311540  vextracti.s r2, 1(vr10)
0004e4  9b8c1c00  andi r25, r25, 1
0004e8  37e00c00  beq r25, zero, 24
0004ec  fabc0540  vextracti.s r25, 0(vr11)
0004f0  db020000  j 20
0004f4  7ab11540  vextracti.s r2, 1(vr11)
0004f8  9b8c1c00  andi r25, r25, 1
0004fc  bbcf0cfe  bneq r25, zero, -16
000500  fa3c0540  vextracti.s r25, 0(vr10)
000504  12350002  vadd.s.mz vr10{mr1}, zero, vr0
000508  1f100000  addli zero, zero, 1
00050c  e6450400  vshuffle2.hf vr11, vr8
000510  66c20400  vshuffle2.hf vr4, vr9
000514  a6151202  vmac.f.mz.rn vr11{mr1}, vr4, vr1
000518  6e32b1c2  vsrl.s.mz vr4{mr1}, vr2, vr11
00051c  669405c0  vabs.f vr8, vr11
000520  ea34b822  vor.s.mz vr9{mr1}, r16, vr11
000524  fe0100e0  vmmov mr3, zero
000528  17200000  xor zero, zero, zero
00052c  6aa5ac36  vor.u.mh vr10{mr3}, r25, vr10
000530  9f2c0000  addli r25, zero, 2
000534  6a324702  vand.s.mz vr4{mr1}, r14, vr4
000538  fe810ce0  vmmov mr3, r25
00053c  6a25a136  vor.u.mh vr10{mr3}, r2, vr10
000540  1f410000  addli r2, zero, 4
000544  16b24502  vadd.s.mz vr4{mr1}, vr11, vr4
000548  fe0101e0  vmmov mr3, r2
00054c  1f011000  addli r2, zero, 8
000550  6aa5a136  vor.u.mh vr10{mr3}, r3, vr10
000554  fe0101e0  vmmov mr3, r2
000558  1f012000  addli r2, zero, 16
00055c  6a25a536  vor.u.mh vr10{mr3}, r10, vr10
000560  fe0101e0  vmmov mr3, r2
000564  1f014000  addli r2, zero, 32
000568  6aa5a436  vor.u.mh vr10{mr3}, r9, vr10
00056c  fe0101e0  vmmov mr3, r2
000570  1f018000  addli r2, zero, 64
000574  6aa5a336  vor.u.mh vr10{mr3}, r7, vr10
000578  fe0101e0  vmmov mr3, r2
00057c  1f010001  addli r2, zero, 128
000580  6a25a336  vor.u.mh vr10{mr3}, r6, vr10
000584  fe0101e0  vmmov mr3, r2
000588  1f010002  addli r2, zero, 256
00058c  6aa5a236  vor.u.mh vr10{mr3}, r5, vr10
000590  fe0101e0  vmmov mr3, r2
000594  1f010004  addli r2, zero, 512
000598  6a25a236  vor.u.mh vr10{mr3}, r4, vr10
00059c  fe0101e0  vmmov mr3, r2
0005a0  1f010008  addli r2, zero, 1024
0005a4  6a25ae36  vor.u.mh vr10{mr3}, r28, vr10
0005a8  fe0101e0  vmmov mr3, r2
0005ac  1f010010  addli r2, zero, 2048
0005b0  6aa5ad36  vor.u.mh vr10{mr3}, r27, vr10
0005b4  fe0101e0  vmmov mr3, r2
0005b8  1f010020  addli r2, zero, 4096
0005bc  6a25ad36  vor.u.mh vr10{mr3}, r26, vr10
0005c0  fe0101e0  vmmov mr3, r2
0005c4  1f010040  addli r2, zero, 8192
0005c8  6a25ac36  vor.u.mh vr10{mr3}, r24, vr10
0005cc  fe0101e0  vmmov mr3, r2
0005d0  2b410000  lui r2, 4
0005d4  6aa5ab36  vor.u.mh vr10{mr3}, r23, vr10
0005d8  fe0101e0  vmmov mr3, r2
0005dc  2b810000  lui r2, 8
0005e0  6a25ab36  vor.u.mh vr10{mr3}, r22, vr10
0005e4  f6a18142  vlt.u.mz mr3{mr1}, vr3, vr8
0005e8  12b44702  vadd.s.mz vr8{mr1}, r15, vr4
0005ec  7e8c01a0  vmmov r24, mr3
0005f0  fe0101e0  vmmov mr3, r2
0005f4  1b41fc00  srli r2, r24, 15
0005f8  6aa5aa36  vor.u.mh vr10{mr3}, r21, vr10
0005fc  1b011100  andi r2, r2, 1
000600  4600aa10  vstore.mh vr10{mr0}, 0(r20)
000604  3b300100  bneq r2, zero, 12
000608  fa3af440  vextracti.s r21, 15(vr8)
00060c  5b010000  j 8
000610  fabaf440  vextracti.s r21, 15(vr9)
000614  1b41ec00  srli r2, r24, 14
000618  1b011100  andi r2, r2, 1
00061c  3b300100  bneq r2, zero, 12
000620  7a3be440  vextracti.s r22, 14(vr8)
000624  5b010000  j 8
000628  7abbe440  vextracti.s r22, 14(vr9)
00062c  1b41dc00  srli r2, r24, 13
000630  1b011100  andi r2, r2, 1
000634  3b300100  bneq r2, zero, 12
000638  fa3bd440  vextracti.s r23, 13(vr8)
00063c  5b010000  j 8
000640  fabbd440  vextracti.s r23, 13(vr9)
000644  1b41cc00  srli r2, r24, 12
000648  1b011100  andi r2, r2, 1
00064c  3b300100  bneq r2, zero, 12
000650  fa3cc440  vextracti.s r25, 12(vr8)
000654  5b010000  j 8
000658  fabcc440  vextracti.s r25, 12(vr9)
00065c  1b41bc00  srli r2, r24, 11
000660  1b011100  andi r2, r2, 1
000664  3b300100  bneq r2, zero, 12
000668  7a3db440  vextracti.s r26, 11(vr8)
00066c  5b010000  j 8
000670  7abdb440  vextracti.s r26, 11(vr9)
000674  1b41ac00  srli r2, r24, 10
000678  1b011100  andi r2, r2, 1
00067c  3b300100  bneq r2, zero, 12
000680  fa3da440  vextracti.s r27, 10(vr8)
000684  5b010000  j 8
000688  fabda440  vextracti.s r27, 10(vr9)
00068c  1b419c00  srli r2, r24, 9
000690  1b011100  andi r2, r2, 1
000694  3b300100  bneq r2, zero, 12
000698  7a3e9440  vextracti.s r28, 9(vr8)
00069c  5b010000  j 8
0006a0  7abe9440  vextracti.s r28, 9(vr9)
0006a4  1b418c00  srli r2, r24, 8
0006a8  1b011100  andi r2, r2, 1
0006ac  3b300100  bneq r2, zero, 12
0006b0  7a328440  vextracti.s r4, 8(vr8)
0006b4  5b010000  j 8
0006b8  7ab28440  vextracti.s r4, 8(vr9)
0006bc  1b417c00  srli r2, r24, 7
0006c0  1b011100  andi r2, r2, 1
0006c4  3b300100  bneq r2, zero, 12
0006c8  fa327440  vextracti.s r5, 7(vr8)
0006cc  5b010000  j 8
0006d0  fab27440  vextracti.s r5, 7(vr9)
0006d4  1b416c00  srli r2, r24, 6
0006d8  1b011100  andi r2, r2, 1
0006dc  3b300100  bneq r2, zero, 12
0006e0  7a336440  vextracti.s r6, 6(vr8)
0006e4  5b010000  j 8
0006e8  7ab36440  vextracti.s r6, 6(vr9)
0006ec  1b415c00  srli r2, r24, 5
0006f0  1b011100  andi r2, r2, 1
0006f4  3b300100  bneq r2, zero, 12
0006f8  fa335440  vextracti.s r7, 5(vr8)
0006fc  5b010000  j 8
000700  fab35440  vextracti.s r7, 5(vr9)
000704  1b414c00  srli r2, r24, 4
000708  1b011100  andi r2, r2, 1
00070c  3b300100  bneq r2, zero, 12
000710  fa344440  vextracti.s r9, 4(vr8)
000714  5b010000  j 8
000718  fab44440  vextracti.s r9, 4(vr9)
00071c  1b413c00  srli r2, r24, 3
000720  1b011100  andi r2, r2, 1
000724  3b300100  bneq r2, zero, 12
000728  7a353440  vextracti.s r10, 3(vr8)
00072c  5b010000  j 8
000730  7ab53440  vextracti.s r10, 3(vr9)
000734  1b412c00  srli r2, r24, 2
000738  1b011100  andi r2, r2, 1
00073c  3b300100  bneq r2, zero, 12
000740  fa312440  vextracti.s r3, 2(vr8)
000744  5b010000  j 8
000748  fab12440  vextracti.s r3, 2(vr9)
00074c  1b411c00  srli r2, r24, 1
000750  1b011100  andi r2, r2, 1
000754  3b600100  bneq r2, zero, 24
000758  7a311440  vextracti.s r2, 1(vr8)
00075c  1b0c1c00  andi r24, r24, 1
000760  37600c00  beq r24, zero, 24
000764  7abc0440  vextracti.s r24, 0(vr9)
000768  db020000  j 20
00076c  7ab11440  vextracti.s r2, 1(vr9)
000770  1b0c1c00  andi r24, r24, 1
000774  bb4f0cfe  bneq r24, zero, -16
000778  7a3c0440  vextracti.s r24, 0(vr8)
00077c  12340002  vadd.s.mz vr8{mr1}, zero, vr0
000780  1f100000  addli zero, zero, 1
000784  26931302  vmac.f.mz.rn vr6{mr1}, vr7, vr1
000788  6e3261c2  vsrl.s.mz vr4{mr1}, vr2, vr6
00078c  e61303c0  vabs.f vr7, vr6
000790  fe0100e0  vmmov mr3, zero
000794  17200000  xor zero, zero, zero
000798  6a248c36  vor.u.mh vr8{mr3}, r24, vr8
00079c  1f2c0000  addli r24, zero, 2
0007a0  6a324702  vand.s.mz vr4{mr1}, r14, vr4
0007a4  fe010ce0  vmmov mr3, r24
0007a8  6a248136  vor.u.mh vr8{mr3}, r2, vr8
0007ac  1f410000  addli r2, zero, 4
0007b0  16324302  vadd.s.mz vr4{mr1}, vr6, vr4
0007b4  6a336822  vor.s.mz vr6{mr1}, r16, vr6
0007b8  fe0101e0  vmmov mr3, r2
0007bc  1f011000  addli r2, zero, 8
0007c0  6aa48136  vor.u.mh vr8{mr3}, r3, vr8
0007c4  fe0101e0  vmmov mr3, r2
0007c8  1f012000  addli r2, zero, 16
0007cc  6a248536  vor.u.mh vr8{mr3}, r10, vr8
0007d0  fe0101e0  vmmov mr3, r2
0007d4  1f014000  addli r2, zero, 32
0007d8  6aa48436  vor.u.mh vr8{mr3}, r9, vr8
0007dc  fe0101e0  vmmov mr3, r2
0007e0  1f018000  addli r2, zero, 64
0007e4  6aa48336  vor.u.mh vr8{mr3}, r7, vr8
0007e8  fe0101e0  vmmov mr3, r2
0007ec  1f010001  addli r2, zero, 128
0007f0  6a248336  vor.u.mh vr8{mr3}, r6, vr8
0007f4  fe0101e0  vmmov mr3, r2
0007f8  1f010002  addli r2, zero, 256
0007fc  6aa48236  vor.u.mh vr8{mr3}, r5, vr8
000800  fe0101e0  vmmov mr3, r2
000804  1f010004  addli r2, zero, 512
000808  6a248236  vor.u.mh vr8{mr3}, r4, vr8
00080c  fe0101e0  vmmov mr3, r2
000810  1f010008  addli r2, zero, 1024
000814  6a248e36  vor.u.mh vr8{mr3}, r28, vr8
000818  fe0101e0  vmmov mr3, r2
00081c  1f010010  addli r2, zero, 2048
000820  6aa48d36  vor.u.mh vr8{mr3}, r27, vr8
000824  fe0101e0  vmmov mr3, r2
000828  1f010020  addli r2, zero, 4096
00082c  6a248d36  vor.u.mh vr8{mr3}, r26, vr8
000830  fe0101e0  vmmov mr3, r2
000834  1f010040  addli r2, zero, 8192
000838  6aa48c36  vor.u.mh vr8{mr3}, r25, vr8
00083c  fe0101e0  vmmov mr3, r2
000840  2b410000  lui r2, 4
000844  6aa48b36  vor.u.mh vr8{mr3}, r23, vr8
000848  fe0101e0  vmmov mr3, r2
00084c  2b810000  lui r2, 8
000850  6a248b36  vor.u.mh vr8{mr3}, r22, vr8
000854  fe0101e0  vmmov mr3, r2
000858  6aa48a36  vor.u.mh vr8{mr3}, r21, vr8
00085c  f6a17142  vlt.u.mz mr3{mr1}, vr3, vr7
000860  92b34702  vadd.s.mz vr7{mr1}, r15, vr4
000864  7e8c01a0  vmmov r24, mr3
000868  1b41fc00  srli r2, r24, 15
00086c  6af286c0  vsrl.p vr4, r13, vr8
000870  1b011100  andi r2, r2, 1
000874  46004a14  vstore.mh vr4{mr2}, 0(r20)
000878  3b300100  bneq r2, zero, 12
00087c  7abaf340  vextracti.s r20, 15(vr7)
000880  5b010000  j 8
000884  7a3af340  vextracti.s r20, 15(vr6)
000888  1b41ec00  srli r2, r24, 14
00088c  1b011100  andi r2, r2, 1
000890  3b300100  bneq r2, zero, 12
000894  fabae340  vextracti.s r21, 14(vr7)
000898  5b010000  j 8
00089c  fa3ae340  vextracti.s r21, 14(vr6)
0008a0  1b41dc00  srli r2, r24, 13
0008a4  1b011100  andi r2, r2, 1
0008a8  3b300100  bneq r2, zero, 12
0008ac  7abbd340  vextracti.s r22, 13(vr7)
0008b0  5b010000  j 8
0008b4  7a3bd340  vextracti.s r22, 13(vr6)
0008b8  1b41cc00  srli r2, r24, 12
0008bc  1b011100  andi r2, r2, 1
0008c0  3b300100  bneq r2, zero, 12
0008c4  fabbc340  vextracti.s r23, 12(vr7)
0008c8  5b010000  j 8
0008cc  fa3bc340  vextracti.s r23, 12(vr6)
0008d0  1b41bc00  srli r2, r24, 11
0008d4  1b011100  andi r2, r2, 1
0008d8  3b300100  bneq r2, zero, 12
0008dc  fabcb340  vextracti.s r25, 11(vr7)
0008e0  5b010000  j 8
0008e4  fa3cb340  vextracti.s r25, 11(vr6)
0008e8  1b41ac00  srli r2, r24, 10
0008ec  1b011100  andi r2, r2, 1
0008f0  3b300100  bneq r2, zero, 12
0008f4  7abda340  vextracti.s r26, 10(vr7)
0008f8  5b010000  j 8
0008fc  7a3da340  vextracti.s r26, 10(vr6)
000900  1b419c00  srli r2, r24, 9
000904  1b011100  andi r2, r2, 1
000908  3b300100  bneq r2, zero, 12
00090c  fabd9340  vextracti.s r27, 9(vr7)
000910  5b010000  j 8
000914  fa3d9340  vextracti.s r27, 9(vr6)
000918  1b418c00  srli r2, r24, 8
00091c  1b011100  andi r2, r2, 1
000920  3b300100  bneq r2, zero, 12
000924  7ab28340  vextracti.s r4, 8(vr7)
000928  5b010000  j 8
00092c  7a328340  vextracti.s r4, 8(vr6)
000930  1b417c00  srli r2, r24, 7
000934  1b011100  andi r2, r2, 1
000938  3b300100  bneq r2, zero, 12
00093c  fab27340  vextracti.s r5, 7(vr7)
000940  5b010000  j 8
000944  fa327340  vextracti.s r5, 7(vr6)
000948  1b416c00  srli r2, r24, 6
00094c  1b011100  andi r2, r2, 1
000950  3b300100  bneq r2, zero, 12
000954  7ab36340  vextracti.s r6, 6(vr7)
000958  5b010000  j 8
00095c  7a336340  vextracti.s r6, 6(vr6)
000960  1b415c00  srli r2, r24, 5
000964  1b011100  andi r2, r2, 1
000968  3b300100  bneq r2, zero, 12
00096c  fab35340  vextracti.s r7, 5(vr7)
000970  5b010000  j 8
000974  fa335340  vextracti.s r7, 5(vr6)
000978  1b414c00  srli r2, r24, 4
00097c  1b011100  andi r2, r2, 1
000980  3b300100  bneq r2, zero, 12
000984  fab44340  vextracti.s r9, 4(vr7)
000988  5b010000  j 8
00098c  fa344340  vextracti.s r9, 4(vr6)
000990  1b413c00  srli r2, r24, 3
000994  1b011100  andi r2, r2, 1
000998  3b300100  bneq r2, zero, 12
00099c  7ab53340  vextracti.s r10, 3(vr7)
0009a0  5b010000  j 8
0009a4  7a353340  vextracti.s r10, 3(vr6)
0009a8  1b412c00  srli r2, r24, 2
0009ac  1b011100  andi r2, r2, 1
0009b0  3b300100  bneq r2, zero, 12
0009b4  fab12340  vextracti.s r3, 2(vr7)
0009b8  5b010000  j 8
0009bc  fa312340  vextracti.s r3, 2(vr6)
0009c0  1b411c00  srli r2, r24, 1
0009c4  1b011100  andi r2, r2, 1
0009c8  3b600100  bneq r2, zero, 24
0009cc  7ab11340  vextracti.s r2, 1(vr7)
0009d0  1b0c1c00  andi r24, r24, 1
0009d4  37600c00  beq r24, zero, 24
0009d8  7a3c0340  vextracti.s r24, 0(vr6)
0009dc  db020000  j 20
0009e0  7a311340  vextracti.s r2, 1(vr6)
0009e4  1b0c1c00  andi r24, r24, 1
0009e8  bb4f0cfe  bneq r24, zero, -16
0009ec  7abc0340  vextracti.s r24, 0(vr7)
0009f0  12330002  vadd.s.mz vr6{mr1}, zero, vr0
0009f4  1f1e0000  addli r28, zero, 1
0009f8  fe010ee0  vmmov mr3, r28
0009fc  6a236c36  vor.u.mh vr6{mr3}, r24, vr6
000a00  1f2c0000  addli r24, zero, 2
000a04  fe010ce0  vmmov mr3, r24
000a08  6a236136  vor.u.mh vr6{mr3}, r2, vr6
000a0c  1f410000  addli r2, zero, 4
000a10  fe0101e0  vmmov mr3, r2
000a14  1f011000  addli r2, zero, 8
000a18  6aa36136  vor.u.mh vr6{mr3}, r3, vr6
000a1c  fe0101e0  vmmov mr3, r2
000a20  1f012000  addli r2, zero, 16
000a24  6a236536  vor.u.mh vr6{mr3}, r10, vr6
000a28  fe0101e0  vmmov mr3, r2
000a2c  1f014000  addli r2, zero, 32
000a30  6aa36436  vor.u.mh vr6{mr3}, r9, vr6
000a34  fe0101e0  vmmov mr3, r2
000a38  1f018000  addli r2, zero, 64
000a3c  6aa36336  vor.u.mh vr6{mr3}, r7, vr6
000a40  fe0101e0  vmmov mr3, r2
000a44  1f010001  addli r2, zero, 128
000a48  6a236336  vor.u.mh vr6{mr3}, r6, vr6
000a4c  fe0101e0  vmmov mr3, r2
000a50  1f010002  addli r2, zero, 256
000a54  6aa36236  vor.u.mh vr6{mr3}, r5, vr6
000a58  fe0101e0  vmmov mr3, r2
000a5c  1f010004  addli r2, zero, 512
000a60  6a236236  vor.u.mh vr6{mr3}, r4, vr6
000a64  fe0101e0  vmmov mr3, r2
000a68  1f010008  addli r2, zero, 1024
000a6c  6aa36d36  vor.u.mh vr6{mr3}, r27, vr6
000a70  fe0101e0  vmmov mr3, r2
000a74  1f018fdf  addli r2, r30, -4160
000a78  6a236d36  vor.u.mh vr6{mr3}, r26, vr6
000a7c  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
000a80  1f010010  addli r2, zero, 2048
000a84  fe0101e0  vmmov mr3, r2
000a88  1f010020  addli r2, zero, 4096
000a8c  6aa36c36  vor.u.mh vr6{mr3}, r25, vr6
000a90  fe0101e0  vmmov mr3, r2
000a94  1f010040  addli r2, zero, 8192
000a98  e6430200  vshuffle2.hf vr7, vr4
000a9c  66c20200  vshuffle2.hf vr4, vr5
000aa0  a6131202  vmac.f.mz.rn vr7{mr1}, vr4, vr1
000aa4  6e3271c2  vsrl.s.mz vr4{mr1}, vr2, vr7
000aa8  e69203c0  vabs.f vr5, vr7
000aac  6aa36b36  vor.u.mh vr6{mr3}, r23, vr6
000ab0  fe0101e0  vmmov mr3, r2
000ab4  2b410000  lui r2, 4
000ab8  6a324702  vand.s.mz vr4{mr1}, r14, vr4
000abc  6a236b36  vor.u.mh vr6{mr3}, r22, vr6
000ac0  fe0101e0  vmmov mr3, r2
000ac4  2b810000  lui r2, 8
000ac8  16b24302  vadd.s.mz vr4{mr1}, vr7, vr4
000acc  6aa36a36  vor.u.mh vr6{mr3}, r21, vr6
000ad0  f6a15142  vlt.u.mz mr3{mr1}, vr3, vr5
000ad4  ea327822  vor.s.mz vr5{mr1}, r16, vr7
000ad8  fe8b01a0  vmmov r23, mr3
000adc  fe0101e0  vmmov mr3, r2
000ae0  1bc1fb00  srli r2, r23, 15
000ae4  12b24702  vadd.s.mz vr4{mr1}, r15, vr4
000ae8  6a236a36  vor.u.mh vr6{mr3}, r20, vr6
000aec  1b011100  andi r2, r2, 1
000af0  46806910  vstore.mh vr6{mr0}, 0(r19)
000af4  3b300100  bneq r2, zero, 12
000af8  7a3af240  vextracti.s r20, 15(vr4)
000afc  5b010000  j 8
000b00  7abaf240  vextracti.s r20, 15(vr5)
000b04  1bc1eb00  srli r2, r23, 14
000b08  1b011100  andi r2, r2, 1
000b0c  3b300100  bneq r2, zero, 12
000b10  fa3ae240  vextracti.s r21, 14(vr4)
000b14  5b010000  j 8
000b18  fabae240  vextracti.s r21, 14(vr5)
000b1c  1bc1db00  srli r2, r23, 13
000b20  1b011100  andi r2, r2, 1
000b24  3b300100  bneq r2, zero, 12
000b28  7a3bd240  vextracti.s r22, 13(vr4)
000b2c  5b010000  j 8
000b30  7abbd240  vextracti.s r22, 13(vr5)
000b34  1bc1cb00  srli r2, r23, 12
000b38  1b011100  andi r2, r2, 1
000b3c  3b300100  bneq r2, zero, 12
000b40  7a3cc240  vextracti.s r24, 12(vr4)
000b44  5b010000  j 8
000b48  7abcc240  vextracti.s r24, 12(vr5)
000b4c  1bc1bb00  srli r2, r23, 11
000b50  1b011100  andi r2, r2, 1
000b54  3b300100  bneq r2, zero, 12
000b58  fa3cb240  vextracti.s r25, 11(vr4)
000b5c  5b010000  j 8
000b60  fabcb240  vextracti.s r25, 11(vr5)
000b64  1bc1ab00  srli r2, r23, 10
000b68  1b011100  andi r2, r2, 1
000b6c  3b300100  bneq r2, zero, 12
000b70  7a3da240  vextracti.s r26, 10(vr4)
000b74  5b010000  j 8
000b78  7abda240  vextracti.s r26, 10(vr5)
000b7c  1bc19b00  srli r2, r23, 9
000b80  1b011100  andi r2, r2, 1
000b84  3b300100  bneq r2, zero, 12
000b88  fa3d9240  vextracti.s r27, 9(vr4)
000b8c  5b010000  j 8
000b90  fabd9240  vextracti.s r27, 9(vr5)
000b94  1bc18b00  srli r2, r23, 8
000b98  1b011100  andi r2, r2, 1
000b9c  3b300100  bneq r2, zero, 12
000ba0  7a328240  vextracti.s r4, 8(vr4)
000ba4  5b010000  j 8
000ba8  7ab28240  vextracti.s r4, 8(vr5)
000bac  1bc17b00  srli r2, r23, 7
000bb0  1b011100  andi r2, r2, 1
000bb4  3b300100  bneq r2, zero, 12
000bb8  fa327240  vextracti.s r5, 7(vr4)
000bbc  5b010000  j 8
000bc0  fab27240  vextracti.s r5, 7(vr5)
000bc4  1bc16b00  srli r2, r23, 6
000bc8  1b011100  andi r2, r2, 1
000bcc  3b300100  bneq r2, zero, 12
000bd0  7a336240  vextracti.s r6, 6(vr4)
000bd4  5b010000  j 8
000bd8  7ab36240  vextracti.s r6, 6(vr5)
000bdc  1bc15b00  srli r2, r23, 5
000be0  1b011100  andi r2, r2, 1
000be4  3b300100  bneq r2, zero, 12
000be8  fa335240  vextracti.s r7, 5(vr4)
000bec  5b010000  j 8
000bf0  fab35240  vextracti.s r7, 5(vr5)
000bf4  1bc14b00  srli r2, r23, 4
000bf8  1b011100  andi r2, r2, 1
000bfc  3b300100  bneq r2, zero, 12
000c00  fa344240  vextracti.s r9, 4(vr4)
000c04  5b010000  j 8
000c08  fab44240  vextracti.s r9, 4(vr5)
000c0c  1bc13b00  srli r2, r23, 3
000c10  1b011100  andi r2, r2, 1
000c14  3b300100  bneq r2, zero, 12
000c18  7a353240  vextracti.s r10, 3(vr4)
000c1c  5b010000  j 8
000c20  7ab53240  vextracti.s r10, 3(vr5)
000c24  1bc12b00  srli r2, r23, 2
000c28  1b011100  andi r2, r2, 1
000c2c  3b300100  bneq r2, zero, 12
000c30  fa312240  vextracti.s r3, 2(vr4)
000c34  5b010000  j 8
000c38  fab12240  vextracti.s r3, 2(vr5)
000c3c  1bc11b00  srli r2, r23, 1
000c40  1b011100  andi r2, r2, 1
000c44  3b500100  bneq r2, zero, 20
000c48  7a311240  vextracti.s r2, 1(vr4)
000c4c  9b8b1b00  andi r23, r23, 1
000c50  b7f70bfa  beq r23, zero, -2564
000c54  5b020000  j 16
000c58  7ab11240  vextracti.s r2, 1(vr5)
000c5c  9b8b1b00  andi r23, r23, 1
000c60  b7b70bfa  beq r23, zero, -2580
000c64  fabb0240  vextracti.s r23, 0(vr5)
000c68  5bbdfeff  j -2584
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
000d4c  00100000  exit
000d50  00100000  exit
000d54  00100000  exit
000d58  00100000  exit
000d5c  00100000  exit
000d60  00100000  exit
000d64  00100000  exit
000d68  00100000  exit
000d6c  00100000  exit
000d70  00100000  exit
000d74  00100000  exit
000d78  00100000  exit
000d7c  00100000  exit
000d80  00100000  exit
000d84  00100000  exit
000d88  00100000  exit
000d8c  00100000  exit
000d90  00100000  exit
000d94  00100000  exit
000d98  00100000  exit
000d9c  00100000  exit
000da0  00100000  exit
000da4  00100000  exit
000da8  00100000  exit
000dac  00100000  exit
000db0  00100000  exit
000db4  00100000  exit
000db8  00100000  exit
000dbc  00100000  exit
000dc0  00100000  exit
000dc4  00100000  exit
000dc8  00100000  exit
000dcc  00100000  exit
000dd0  00100000  exit
000dd4  00100000  exit
000dd8  00100000  exit
000ddc  00100000  exit
000de0  00100000  exit
000de4  00100000  exit
000de8  00100000  exit
000dec  00100000  exit
000df0  00100000  exit
000df4  00100000  exit
000df8  00100000  exit
000dfc  00100000  exit
000e00  00100000  exit
000e04  00100000  exit
000e08  00100000  exit
000e0c  00100000  exit
000e10  00100000  exit
000e14  00100000  exit
000e18  00100000  exit
000e1c  00100000  exit
000e20  00100000  exit
000e24  00100000  exit
000e28  00100000  exit
000e2c  00100000  exit
000e30  00100000  exit
000e34  00100000  exit
000e38  00100000  exit
000e3c  00100000  exit
000e40  00100000  exit
000e44  00100000  exit
000e48  00100000  exit
000e4c  00100000  exit
000e50  00100000  exit
000e54  00100000  exit
000e58  00100000  exit
000e5c  00100000  exit
000e60  00100000  exit
000e64  00100000  exit
000e68  00100000  exit
000e6c  00100000  exit
000e70  00100000  exit
000e74  00100000  exit
000e78  00100000  exit
000e7c  00100000  exit
000e80  00100000  exit
000e84  00100000  exit
000e88  00100000  exit
000e8c  00100000  exit
000e90  00100000  exit
000e94  00100000  exit
000e98  00100000  exit
000e9c  00100000  exit
000ea0  00100000  exit
000ea4  00100000  exit
000ea8  00100000  exit
