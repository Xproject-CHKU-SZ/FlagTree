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
0000dc  9f8e0efb  addli sp, sp, -640
0000e0  1f8f8e04  addli r30, sp, 576
0000e4  e3403f00  loadli.w r1,  28(r30)
0000e8  e3013f00  loadli.w r3,  24(r30)
0000ec  63014f00  loadli.w r2,  32(r30)
0000f0  0b923020  mul.s r4, r1, r3
0000f4  80510002  load_param_i r3, 0
0000f8  0b122220  mul.s r4, r4, r2
0000fc  cb0a3200  ble.s r4, r3, 672
000100  80d00002  load_param_i r1, 1
000104  80320002  core_id r5
000108  2bf3b53f  lui r6, 260959
00010c  9f070001  addli r15, zero, 128
000110  1f060ffd  addli r12, r30, -384
000114  1f0a8ffe  addli r20, r30, -192
000118  ab0a803f  lui r21, 260096
00011c  2b0b80bf  lui r22, 784384
000120  9f0b0ffe  addli r23, r30, -256
000124  9f0c8000  addli r25, zero, 64
000128  9f038fff  addli r7, r30, -64
00012c  1f040fff  addli r8, r30, -128
000130  e70f1ffa  storeli.w r1, -520(r30)
000134  9bb05200  slli r1, r5, 5
000138  ab02353f  lui r5, 258896
00013c  1b1e330e  ori r28, r6, 227
000140  2b73823e  lui r6, 256039
000144  9b99324f  ori r19, r5, 1267
000148  abb2a73e  lui r5, 256635
00014c  1b136390  ori r6, r6, 2310
000150  674f1ffa  storeli.w r1, -524(r30)
000154  1b9c52a0  ori r24, r5, 2565
000158  abd2873f  lui r5, 260221
00015c  1b9d22c2  ori r26, r5, 3106
000160  ab02babf  lui r5, 785312
000164  9b9d320e  ori r27, r5, 227
000168  aba291be  lui r5, 780570
00016c  9b92e298  ori r5, r5, 2446
000170  e3004f00  loadli.w r1,  32(r30)
000174  9f280000  addli r17, zero, 2
000178  8b941130  div.s r9, r3, r1
00017c  e3403f00  loadli.w r1,  28(r30)
000180  8b941430  div.s r9, r9, r1
000184  e340effb  loadli.w r1,  -524(r30)
000188  9bb4b400  slli r9, r9, 11
00018c  8b941410  add.s r9, r9, r1
000190  9f000008  addli r1, zero, 1024
000194  0b951438  mod.s r10, r9, r1
000198  b3900428  sext_int2long r[2:3], r9
00019c  ab0400f0  lui r9, 983040
0001a0  17989700  or r16, r15, r9
0001a4  b3160528  sext_int2long r[14:15], r10
0001a8  2b0500f0  lui r10, 983040
0001ac  9795a700  or r11, r15, r10
0001b0  97b41003  sll.d r[10:11], r[2:3], r17
0001b4  97b01603  sll.d r[2:3], r[14:15], r17
0001b8  eb560f00  load.d r[14:15], 0(r30)
0001bc  eb588f00  load.d r[18:19], 8(r30)
0001c0  8ba01810  add.ul r[2:3], r[18:19], r[2:3]
0001c4  8ba69610  add.ul r[14:15], r[14:15], r[10:11]
0001c8  9f080ffc  addli r17, r30, -512
0001cc  7fa81601  l_gm2lm r16, r17, 0(r[14:15])
0001d0  ffa5c000  l_gm2lm r11, r12, 0(r[2:3])
0001d4  ab00003f  lui r1, 258048
0001d8  00a00000  mfence { lm }
0001dc  42100fc2  vload_mask16.mz vr0{mr1}, 1536(r30)
0001e0  c2100fc3  vload_mask16.mz vr1{mr1}, 1664(r30)
0001e4  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0001e8  8a910902  vmul.f.mz.rn vr3{mr1}, r19, vr0
0001ec  72103042  vlt.f.mz mr0{mr1}, zero, vr3
0001f0  c2108fc2  vload_mask16.mz vr1{mr1}, 1600(r30)
0001f4  42118fc3  vload_mask16.mz vr2{mr1}, 1728(r30)
0001f8  7e010040  vmnot mr2, mr0
0001fc  0a923a00  vmul.f.mz.rn vr4{mr0}, r21, vr3
000200  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
000204  8a123b04  vmul.f.mz.rn vr5{mr2}, r22, vr3
000208  8e913102  vmul.f.mz.rn vr3{mr1}, vr3, vr3
00020c  7e0001a0  vmmov zero, mr2
000210  e74f0ffa  storeli.w zero, -516(r30)
000214  17200000  xor zero, zero, zero
000218  1f070000  addli r14, zero, 0
00021c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000220  16912002  vadd.f.mz.rn vr2{mr1}, vr1, vr2
000224  46103a02  vstore_mask16.mz vr3{mr1}, 0(r20)
000228  8a902002  vmul.f.mz.rn vr1{mr1}, r1, vr2
00022c  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
000230  46904b02  vstore_mask16.mz vr4{mr1}, 0(r23)
000234  00a00000  mfence { lm }
000238  8b90eb10  add.s r1, r23, r14
00023c  ab06803f  lui r13, 260096
000240  0b11ea10  add.s r2, r20, r14
000244  1f470700  addli r14, r14, 4
000248  e3850000  loadli.w r11,  0(r1)
00024c  63080100  loadli.w r16,  0(r2)
000250  8be68551  fmac.f.rn r13, r11, r24
000254  8b650858  neg.f r11, r16
000258  8f850500  exp.f.rn r11, r11
00025c  8f86da18  div.f.rn r13, r21, r13
000260  6700b100  storeli.w r11, 0(r2)
000264  6780d000  storeli.w r13, 0(r1)
000268  3b4f97ff  bneq r14, r25, -48
00026c  00a00000  mfence { lm }
000270  f2112042  vlt.f.mz mr3{mr1}, zero, vr2
000274  8e132102  vmul.f.mz.rn vr7{mr1}, vr2, vr2
000278  c2910b02  vload_mask16.mz vr3{mr1}, 0(r23)
00027c  c2120a02  vload_mask16.mz vr5{mr1}, 0(r20)
000280  6340fffb  loadli.w zero,  -516(r30)
000284  7e810140  vmnot mr2, mr3
000288  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
00028c  0a123d02  vmul.f.mz.rn vr4{mr1}, r26, vr3
000290  12924d02  vadd.f.mz.rn vr4{mr1}, r27, vr4
000294  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000298  12124e02  vadd.f.mz.rn vr4{mr1}, r28, vr4
00029c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0002a0  12924202  vadd.f.mz.rn vr4{mr1}, r5, vr4
0002a4  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0002a8  12124302  vadd.f.mz.rn vr4{mr1}, r6, vr4
0002ac  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
0002b0  0a922a06  vmul.f.mz.rn vr4{mr3}, r21, vr2
0002b4  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0002b8  8a122b04  vmul.f.mz.rn vr5{mr2}, r22, vr2
0002bc  9a913a02  vsub.f.mz.rn vr3{mr1}, r21, vr3
0002c0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0002c4  0a933a00  vmul.f.mz.rn vr6{mr0}, r21, vr3
0002c8  7e0000e0  vmmov mr0, zero
0002cc  17200000  xor zero, zero, zero
0002d0  46104402  vstore_mask16.mz vr4{mr1}, 0(r8)
0002d4  8a113b00  vmul.f.mz.rn vr3{mr0}, r22, vr3
0002d8  00a00000  mfence { lm }
0002dc  1f070000  addli r14, zero, 0
0002e0  16113302  vadd.f.mz.rn vr2{mr1}, vr6, vr3
0002e4  8b10e410  add.s r1, r8, r14
0002e8  ab06803f  lui r13, 260096
0002ec  0b91e310  add.s r2, r7, r14
0002f0  1f470700  addli r14, r14, 4
0002f4  e3850000  loadli.w r11,  0(r1)
0002f8  63080100  loadli.w r16,  0(r2)
0002fc  8be68551  fmac.f.rn r13, r11, r24
000300  8b650858  neg.f r11, r16
000304  8f850500  exp.f.rn r11, r11
000308  8f86da18  div.f.rn r13, r21, r13
00030c  6700b100  storeli.w r11, 0(r2)
000310  6780d000  storeli.w r13, 0(r1)
000314  3b4f97ff  bneq r14, r25, -48
000318  00a00000  mfence { lm }
00031c  eb500f01  load.d r[2:3], 16(r30)
000320  12912a02  vadd.f.mz.rn vr2{mr1}, r21, vr2
000324  0e102002  vmul.f.mz.rn vr0{mr1}, vr0, vr2
000328  c2110402  vload_mask16.mz vr3{mr1}, 0(r8)
00032c  c2920302  vload_mask16.mz vr5{mr1}, 0(r7)
000330  8ba09010  add.ul r[2:3], r[2:3], r[10:11]
000334  ab0400f0  lui r9, 983040
000338  46180fc2  vstore_mask16.mz vr0{mr1}, 1664(r30)
00033c  97949700  or r9, r15, r9
000340  0a123d02  vmul.f.mz.rn vr4{mr1}, r26, vr3
000344  12924d02  vadd.f.mz.rn vr4{mr1}, r27, vr4
000348  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00034c  12124e02  vadd.f.mz.rn vr4{mr1}, r28, vr4
000350  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000354  12924202  vadd.f.mz.rn vr4{mr1}, r5, vr4
000358  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00035c  12124302  vadd.f.mz.rn vr4{mr1}, r6, vr4
000360  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000364  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000368  9a913a02  vsub.f.mz.rn vr3{mr1}, r21, vr3
00036c  0a923a06  vmul.f.mz.rn vr4{mr3}, r21, vr3
000370  8a113b04  vmul.f.mz.rn vr3{mr2}, r22, vr3
000374  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
000378  12913a02  vadd.f.mz.rn vr2{mr1}, r21, vr3
00037c  8e902002  vmul.f.mz.rn vr1{mr1}, vr1, vr2
000380  461c1fc2  vstore_mask16.mz vr1{mr1}, 1728(r30)
000384  00a00000  mfence { lm }
000388  ffb4c000  s_lm2gm r9, r12, 0(r[2:3])
00038c  e300fffb  loadli.w r1,  -520(r30)
000390  00a00000  mfence { lm }
000394  8b911110  add.s r3, r3, r1
000398  3fe741fe  blt.s r3, r4, -552
00039c  9f0e8ffb  addli sp, r30, -576
0003a0  9f8e8e04  addli sp, sp, 576
0003a4  00a00300  mfence { lm, sm, gm }
0003a8  00100000  exit
0003ac  00100000  exit
0003b0  00100000  exit
0003b4  00100000  exit
0003b8  00100000  exit
0003bc  00100000  exit
0003c0  00100000  exit
0003c4  00100000  exit
0003c8  00100000  exit
0003cc  00100000  exit
0003d0  00100000  exit
0003d4  00100000  exit
0003d8  00100000  exit
0003dc  00100000  exit
0003e0  00100000  exit
0003e4  00100000  exit
0003e8  00100000  exit
0003ec  00100000  exit
0003f0  00100000  exit
0003f4  00100000  exit
0003f8  00100000  exit
0003fc  00100000  exit
000400  00100000  exit
000404  00100000  exit
000408  00100000  exit
00040c  00100000  exit
000410  00100000  exit
000414  00100000  exit
000418  00100000  exit
00041c  00100000  exit
000420  00100000  exit
000424  00100000  exit
000428  00100000  exit
00042c  00100000  exit
000430  00100000  exit
000434  00100000  exit
000438  00100000  exit
00043c  00100000  exit
000440  00100000  exit
000444  00100000  exit
000448  00100000  exit
00044c  00100000  exit
000450  00100000  exit
000454  00100000  exit
000458  00100000  exit
00045c  00100000  exit
000460  00100000  exit
000464  00100000  exit
000468  00100000  exit
00046c  00100000  exit
000470  00100000  exit
000474  00100000  exit
000478  00100000  exit
00047c  00100000  exit
000480  00100000  exit
000484  00100000  exit
000488  00100000  exit
00048c  00100000  exit
000490  00100000  exit
000494  00100000  exit
000498  00100000  exit
00049c  00100000  exit
0004a0  00100000  exit
0004a4  00100000  exit
0004a8  00100000  exit
0004ac  00100000  exit
0004b0  00100000  exit
0004b4  00100000  exit
0004b8  00100000  exit
0004bc  00100000  exit
0004c0  00100000  exit
0004c4  00100000  exit
0004c8  00100000  exit
0004cc  00100000  exit
0004d0  00100000  exit
0004d4  00100000  exit
0004d8  00100000  exit
0004dc  00100000  exit
0004e0  00100000  exit
0004e4  00100000  exit
0004e8  00100000  exit
0004ec  00100000  exit
0004f0  00100000  exit
0004f4  00100000  exit
0004f8  00100000  exit
0004fc  00100000  exit
000500  00100000  exit
000504  00100000  exit
000508  00100000  exit
00050c  00100000  exit
000510  00100000  exit
000514  00100000  exit
000518  00100000  exit
00051c  00100000  exit
000520  00100000  exit
000524  00100000  exit
000528  00100000  exit
00052c  00100000  exit
000530  00100000  exit
000534  00100000  exit
000538  00100000  exit
00053c  00100000  exit
000540  00100000  exit
000544  00100000  exit
000548  00100000  exit
00054c  00100000  exit
000550  00100000  exit
000554  00100000  exit
000558  00100000  exit
00055c  00100000  exit
000560  00100000  exit
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
