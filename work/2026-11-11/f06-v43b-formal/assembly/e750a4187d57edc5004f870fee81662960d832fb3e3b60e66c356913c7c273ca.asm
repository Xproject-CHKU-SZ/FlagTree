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
0000dc  9f8e0efc  addli sp, sp, -512
0000e0  1f8f8e03  addli r30, sp, 448
0000e4  e3403f00  loadli.w r1,  28(r30)
0000e8  e3013f00  loadli.w r3,  24(r30)
0000ec  63014f00  loadli.w r2,  32(r30)
0000f0  0b923020  mul.s r4, r1, r3
0000f4  80510002  load_param_i r3, 0
0000f8  0b122220  mul.s r4, r4, r2
0000fc  cb2a3200  ble.s r4, r3, 680
000100  80d00002  load_param_i r1, 1
000104  80320002  core_id r5
000108  2bd3873f  lui r6, 260221
00010c  9f078000  addli r15, zero, 64
000110  9f088ffd  addli r17, r30, -320
000114  2b09003f  lui r18, 258048
000118  1f0a8ffe  addli r20, r30, -192
00011c  ab0a803f  lui r21, 260096
000120  2b0b80bf  lui r22, 784384
000124  9f0b0ffe  addli r23, r30, -256
000128  9f030fff  addli r7, r30, -128
00012c  e7071ffc  storeli.w r1, -392(r30)
000130  9bb05200  slli r1, r5, 5
000134  ab02353f  lui r5, 258896
000138  9b1c23c2  ori r25, r6, 3106
00013c  2bf3b53f  lui r6, 260959
000140  9b99324f  ori r19, r5, 1267
000144  abb2a73e  lui r5, 256635
000148  9b1d330e  ori r27, r6, 227
00014c  2b73823e  lui r6, 256039
000150  67471ffc  storeli.w r1, -396(r30)
000154  1b9c52a0  ori r24, r5, 2565
000158  ab02babf  lui r5, 785312
00015c  1b9d320e  ori r26, r5, 227
000160  aba291be  lui r5, 780570
000164  1b9ee298  ori r28, r5, 2446
000168  9b126390  ori r5, r6, 2310
00016c  1f038fff  addli r6, r30, -64
000170  e3004f00  loadli.w r1,  32(r30)
000174  9f150000  addli r11, zero, 1
000178  0b941130  div.s r8, r3, r1
00017c  e3403f00  loadli.w r1,  28(r30)
000180  0b141430  div.s r8, r8, r1
000184  e340effc  loadli.w r1,  -396(r30)
000188  1b34b400  slli r8, r8, 11
00018c  0b141410  add.s r8, r8, r1
000190  9f000008  addli r1, zero, 1024
000194  8b141438  mod.s r9, r8, r1
000198  b3100428  sext_int2long r[2:3], r8
00019c  2b0400f0  lui r8, 983040
0001a0  17958700  or r10, r15, r8
0001a4  b3960428  sext_int2long r[14:15], r9
0001a8  ab0400f0  lui r9, 983040
0001ac  17989700  or r16, r15, r9
0001b0  17b4b002  sll.d r[9:10], r[2:3], r11
0001b4  97b0b602  sll.d r[2:3], r[14:15], r11
0001b8  eb550f00  load.d r[12:13], 0(r30)
0001bc  8ba68510  add.ul r[14:15], r[12:13], r[9:10]
0001c0  eb558f00  load.d r[12:13], 8(r30)
0001c4  8ba01510  add.ul r[2:3], r[12:13], r[2:3]
0001c8  9f050ffd  addli r11, r30, -384
0001cc  7fa5b600  l_gm2lm r10, r11, 0(r[14:15])
0001d0  7fa81001  l_gm2lm r16, r17, 0(r[2:3])
0001d4  00a00000  mfence { lm }
0001d8  42100fc3  vload_mask16.mz vr0{mr1}, 1664(r30)
0001dc  c2108fc3  vload_mask16.mz vr1{mr1}, 1728(r30)
0001e0  06310000  vfp162float_l.rn vr2, vr0
0001e4  86b10000  vfp162float_l.rn vr3, vr1
0001e8  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0001ec  86710000  vfp162float_h.rn vr3, vr0
0001f0  06f00000  vfp162float_h.rn vr0, vr1
0001f4  8a902902  vmul.f.mz.rn vr1{mr1}, r19, vr2
0001f8  72101042  vlt.f.mz mr0{mr1}, zero, vr1
0001fc  0e931002  vmul.f.mz.rn vr6{mr1}, vr1, vr1
000200  7e010040  vmnot mr2, mr0
000204  0a921a00  vmul.f.mz.rn vr4{mr0}, r21, vr1
000208  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
00020c  0a102902  vmul.f.mz.rn vr0{mr1}, r18, vr2
000210  0a913902  vmul.f.mz.rn vr2{mr1}, r19, vr3
000214  8a121b04  vmul.f.mz.rn vr5{mr2}, r22, vr1
000218  7e0001a0  vmmov zero, mr2
00021c  8a103902  vmul.f.mz.rn vr1{mr1}, r18, vr3
000220  e7470ffc  storeli.w zero, -388(r30)
000224  17200000  xor zero, zero, zero
000228  46106a02  vstore_mask16.mz vr6{mr1}, 0(r20)
00022c  1f050000  addli r10, zero, 0
000230  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000234  46904b02  vstore_mask16.mz vr4{mr1}, 0(r23)
000238  00a00000  mfence { lm }
00023c  8b90ab10  add.s r1, r23, r10
000240  2b07803f  lui r14, 260096
000244  0b11aa10  add.s r2, r20, r10
000248  1f450500  addli r10, r10, 4
00024c  e3860000  loadli.w r13,  0(r1)
000250  63080100  loadli.w r16,  0(r2)
000254  0be78651  fmac.f.rn r14, r13, r24
000258  8b660858  neg.f r13, r16
00025c  8f860600  exp.f.rn r13, r13
000260  0f87ea18  div.f.rn r14, r21, r14
000264  6700d100  storeli.w r13, 0(r2)
000268  6780e000  storeli.w r14, 0(r1)
00026c  3b4ff5fe  bneq r10, r15, -48
000270  00a00000  mfence { lm }
000274  f2112042  vlt.f.mz mr3{mr1}, zero, vr2
000278  8e132102  vmul.f.mz.rn vr7{mr1}, vr2, vr2
00027c  c2910b02  vload_mask16.mz vr3{mr1}, 0(r23)
000280  c2120a02  vload_mask16.mz vr5{mr1}, 0(r20)
000284  6340fffc  loadli.w zero,  -388(r30)
000288  7e810140  vmnot mr2, mr3
00028c  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
000290  0a923c02  vmul.f.mz.rn vr4{mr1}, r25, vr3
000294  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
000298  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00029c  12924d02  vadd.f.mz.rn vr4{mr1}, r27, vr4
0002a0  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0002a4  12124e02  vadd.f.mz.rn vr4{mr1}, r28, vr4
0002a8  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0002ac  12924202  vadd.f.mz.rn vr4{mr1}, r5, vr4
0002b0  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
0002b4  0a922a06  vmul.f.mz.rn vr4{mr3}, r21, vr2
0002b8  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0002bc  8a122b04  vmul.f.mz.rn vr5{mr2}, r22, vr2
0002c0  9a913a02  vsub.f.mz.rn vr3{mr1}, r21, vr3
0002c4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0002c8  0a933a00  vmul.f.mz.rn vr6{mr0}, r21, vr3
0002cc  7e0000e0  vmmov mr0, zero
0002d0  17200000  xor zero, zero, zero
0002d4  46904302  vstore_mask16.mz vr4{mr1}, 0(r7)
0002d8  8a113b00  vmul.f.mz.rn vr3{mr0}, r22, vr3
0002dc  00a00000  mfence { lm }
0002e0  1f050000  addli r10, zero, 0
0002e4  16113302  vadd.f.mz.rn vr2{mr1}, vr6, vr3
0002e8  8b90a310  add.s r1, r7, r10
0002ec  2b07803f  lui r14, 260096
0002f0  0b11a310  add.s r2, r6, r10
0002f4  1f450500  addli r10, r10, 4
0002f8  e3860000  loadli.w r13,  0(r1)
0002fc  63080100  loadli.w r16,  0(r2)
000300  0be78651  fmac.f.rn r14, r13, r24
000304  8b660858  neg.f r13, r16
000308  8f860600  exp.f.rn r13, r13
00030c  0f87ea18  div.f.rn r14, r21, r14
000310  6700d100  storeli.w r13, 0(r2)
000314  6780e000  storeli.w r14, 0(r1)
000318  3b4ff5fe  bneq r10, r15, -48
00031c  00a00000  mfence { lm }
000320  eb500f01  load.d r[2:3], 16(r30)
000324  12912a02  vadd.f.mz.rn vr2{mr1}, r21, vr2
000328  0e102002  vmul.f.mz.rn vr0{mr1}, vr0, vr2
00032c  c2910302  vload_mask16.mz vr3{mr1}, 0(r7)
000330  c2120302  vload_mask16.mz vr5{mr1}, 0(r6)
000334  8ba08010  add.ul r[2:3], r[2:3], r[9:10]
000338  2b0400f0  lui r8, 983040
00033c  17948700  or r8, r15, r8
000340  0a923c02  vmul.f.mz.rn vr4{mr1}, r25, vr3
000344  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
000348  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00034c  12924d02  vadd.f.mz.rn vr4{mr1}, r27, vr4
000350  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000354  12124e02  vadd.f.mz.rn vr4{mr1}, r28, vr4
000358  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00035c  12924202  vadd.f.mz.rn vr4{mr1}, r5, vr4
000360  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000364  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000368  9a913a02  vsub.f.mz.rn vr3{mr1}, r21, vr3
00036c  0a923a06  vmul.f.mz.rn vr4{mr3}, r21, vr3
000370  8a113b04  vmul.f.mz.rn vr3{mr2}, r22, vr3
000374  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
000378  12913a02  vadd.f.mz.rn vr2{mr1}, r21, vr3
00037c  8e902002  vmul.f.mz.rn vr1{mr1}, vr1, vr2
000380  06110000  vfloat2fp16_l.rn vr2, vr0
000384  06d10000  vfloat2fp16_h.rn vr2, vr1
000388  461c2fc2  vstore_mask16.mz vr2{mr1}, 1728(r30)
00038c  00a00000  mfence { lm }
000390  7fb41001  s_lm2gm r8, r17, 0(r[2:3])
000394  e300fffc  loadli.w r1,  -392(r30)
000398  00a00000  mfence { lm }
00039c  8b911110  add.s r3, r3, r1
0003a0  3fc741fe  blt.s r3, r4, -560
0003a4  9f0e8ffc  addli sp, r30, -448
0003a8  9f8e8e03  addli sp, sp, 448
0003ac  00a00300  mfence { lm, sm, gm }
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
0005ec  00100000  exit
0005f0  00100000  exit
