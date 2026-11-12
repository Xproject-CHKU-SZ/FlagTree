; SHA-256 93aaee9ce1fe2a5f8c0bf364e044f3c0e01604584b32061172ea0c6f9eb725a4
; P800 Cluster · XTDK LLVM 19 · 375 / 375 words decoded
; bound names: triton_poi_fused_add_gelu_1
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
000078  9f094000  addli r19, zero, 32
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
0000e4  e3003f00  loadli.w r1,  24(r30)
0000e8  e3412f00  loadli.w r3,  20(r30)
0000ec  63413f00  loadli.w r2,  28(r30)
0000f0  0b923020  mul.s r4, r1, r3
0000f4  80510002  load_param_i r3, 0
0000f8  0b122220  mul.s r4, r4, r2
0000fc  4b4a3200  ble.s r4, r3, 656
000100  80320002  core_id r5
000104  2bf3b53f  lui r6, 260959
000108  80d00002  load_param_i r1, 1
00010c  1f070001  addli r14, zero, 128
000110  9f070ffd  addli r15, r30, -384
000114  2b08003f  lui r16, 258048
000118  1f098ffe  addli r18, r30, -192
00011c  ab09803f  lui r19, 260096
000120  2b0a80bf  lui r20, 784384
000124  9f0a0ffe  addli r21, r30, -256
000128  9f0b8000  addli r23, zero, 64
00012c  1bb55200  slli r10, r5, 5
000130  ab02353f  lui r5, 258896
000134  1b1d330e  ori r26, r6, 227
000138  2b73823e  lui r6, 256039
00013c  e70f1ffa  storeli.w r1, -520(r30)
000140  9b98324f  ori r17, r5, 1267
000144  abb2a73e  lui r5, 256635
000148  1b1e6390  ori r28, r6, 2310
00014c  1f030fff  addli r6, r30, -128
000150  1b9b52a0  ori r22, r5, 2565
000154  abd2873f  lui r5, 260221
000158  1b9c22c2  ori r24, r5, 3106
00015c  ab02babf  lui r5, 785312
000160  9b9c320e  ori r25, r5, 227
000164  aba291be  lui r5, 780570
000168  9b9de298  ori r27, r5, 2446
00016c  9f028fff  addli r5, r30, -64
000170  e3403f00  loadli.w r1,  28(r30)
000174  8b931130  div.s r7, r3, r1
000178  e3003f00  loadli.w r1,  24(r30)
00017c  8b931330  div.s r7, r7, r1
000180  9f000008  addli r1, zero, 1024
000184  9bb3b300  slli r7, r7, 11
000188  8b93a310  add.s r7, r7, r10
00018c  0b941338  mod.s r8, r7, r1
000190  b3900328  sext_int2long r[2:3], r7
000194  ab0300f0  lui r7, 983040
000198  97167700  or r13, r14, r7
00019c  9f230000  addli r7, zero, 2
0001a0  97b07002  sll.d r[2:3], r[2:3], r7
0001a4  b3150428  sext_int2long r[12:13], r8
0001a8  2b0400f0  lui r8, 983040
0001ac  97148700  or r9, r14, r8
0001b0  97b57502  sll.d r[12:13], r[12:13], r7
0001b4  eb530f00  load.d r[8:9], 0(r30)
0001b8  8ba31310  add.ul r[8:9], r[8:9], r[2:3]
0001bc  eb508f00  load.d r[2:3], 8(r30)
0001c0  8ba0b010  add.ul r[2:3], r[2:3], r[12:13]
0001c4  9f050ffc  addli r11, r30, -512
0001c8  ffa6b300  l_gm2lm r13, r11, 0(r[8:9])
0001cc  ffa4f000  l_gm2lm r9, r15, 0(r[2:3])
0001d0  00a00000  mfence { lm }
0001d4  42100fc2  vload_mask16.mz vr0{mr1}, 1536(r30)
0001d8  c2100fc3  vload_mask16.mz vr1{mr1}, 1664(r30)
0001dc  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0001e0  8a910802  vmul.f.mz.rn vr3{mr1}, r17, vr0
0001e4  72103042  vlt.f.mz mr0{mr1}, zero, vr3
0001e8  c2108fc2  vload_mask16.mz vr1{mr1}, 1600(r30)
0001ec  42118fc3  vload_mask16.mz vr2{mr1}, 1728(r30)
0001f0  7e010040  vmnot mr2, mr0
0001f4  0a923900  vmul.f.mz.rn vr4{mr0}, r19, vr3
0001f8  0a100802  vmul.f.mz.rn vr0{mr1}, r16, vr0
0001fc  8a123a04  vmul.f.mz.rn vr5{mr2}, r20, vr3
000200  8e913102  vmul.f.mz.rn vr3{mr1}, vr3, vr3
000204  7e0001a0  vmmov zero, mr2
000208  e74f0ffa  storeli.w zero, -516(r30)
00020c  17200000  xor zero, zero, zero
000210  9f050000  addli r11, zero, 0
000214  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000218  16912002  vadd.f.mz.rn vr2{mr1}, vr1, vr2
00021c  46103902  vstore_mask16.mz vr3{mr1}, 0(r18)
000220  8a102802  vmul.f.mz.rn vr1{mr1}, r16, vr2
000224  0a912802  vmul.f.mz.rn vr2{mr1}, r17, vr2
000228  46904a02  vstore_mask16.mz vr4{mr1}, 0(r21)
00022c  00a00000  mfence { lm }
000230  8b90ba10  add.s r1, r21, r11
000234  2b06803f  lui r12, 260096
000238  0b11b910  add.s r2, r18, r11
00023c  9fc50500  addli r11, r11, 4
000240  e3840000  loadli.w r9,  0(r1)
000244  e3060100  loadli.w r13,  0(r2)
000248  0be66451  fmac.f.rn r12, r9, r22
00024c  8be40658  neg.f r9, r13
000250  8f840400  exp.f.rn r9, r9
000254  0f86c918  div.f.rn r12, r19, r12
000258  67009100  storeli.w r9, 0(r2)
00025c  6780c000  storeli.w r12, 0(r1)
000260  3bcf75ff  bneq r11, r23, -48
000264  00a00000  mfence { lm }
000268  f2112042  vlt.f.mz mr3{mr1}, zero, vr2
00026c  8e132102  vmul.f.mz.rn vr7{mr1}, vr2, vr2
000270  c2910a02  vload_mask16.mz vr3{mr1}, 0(r21)
000274  c2120902  vload_mask16.mz vr5{mr1}, 0(r18)
000278  6340fffb  loadli.w zero,  -516(r30)
00027c  7e810140  vmnot mr2, mr3
000280  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
000284  0a123c02  vmul.f.mz.rn vr4{mr1}, r24, vr3
000288  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
00028c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000290  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
000294  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000298  12924d02  vadd.f.mz.rn vr4{mr1}, r27, vr4
00029c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0002a0  12124e02  vadd.f.mz.rn vr4{mr1}, r28, vr4
0002a4  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
0002a8  0a922906  vmul.f.mz.rn vr4{mr3}, r19, vr2
0002ac  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0002b0  8a122a04  vmul.f.mz.rn vr5{mr2}, r20, vr2
0002b4  9a913902  vsub.f.mz.rn vr3{mr1}, r19, vr3
0002b8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0002bc  0a933900  vmul.f.mz.rn vr6{mr0}, r19, vr3
0002c0  7e0000e0  vmmov mr0, zero
0002c4  17200000  xor zero, zero, zero
0002c8  46104302  vstore_mask16.mz vr4{mr1}, 0(r6)
0002cc  8a113a00  vmul.f.mz.rn vr3{mr0}, r20, vr3
0002d0  00a00000  mfence { lm }
0002d4  9f050000  addli r11, zero, 0
0002d8  16113302  vadd.f.mz.rn vr2{mr1}, vr6, vr3
0002dc  8b10b310  add.s r1, r6, r11
0002e0  2b06803f  lui r12, 260096
0002e4  0b91b210  add.s r2, r5, r11
0002e8  9fc50500  addli r11, r11, 4
0002ec  e3840000  loadli.w r9,  0(r1)
0002f0  e3060100  loadli.w r13,  0(r2)
0002f4  0be66451  fmac.f.rn r12, r9, r22
0002f8  8be40658  neg.f r9, r13
0002fc  8f840400  exp.f.rn r9, r9
000300  0f86c918  div.f.rn r12, r19, r12
000304  67009100  storeli.w r9, 0(r2)
000308  6780c000  storeli.w r12, 0(r1)
00030c  3bcf75ff  bneq r11, r23, -48
000310  00a00000  mfence { lm }
000314  12912902  vadd.f.mz.rn vr2{mr1}, r19, vr2
000318  0e102002  vmul.f.mz.rn vr0{mr1}, vr0, vr2
00031c  ab0000f0  lui r1, 983040
000320  c2110302  vload_mask16.mz vr3{mr1}, 0(r6)
000324  c2920202  vload_mask16.mz vr5{mr1}, 0(r5)
000328  97101700  or r1, r14, r1
00032c  46180fc2  vstore_mask16.mz vr0{mr1}, 1664(r30)
000330  0a123c02  vmul.f.mz.rn vr4{mr1}, r24, vr3
000334  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
000338  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00033c  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
000340  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000344  12924d02  vadd.f.mz.rn vr4{mr1}, r27, vr4
000348  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00034c  12124e02  vadd.f.mz.rn vr4{mr1}, r28, vr4
000350  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000354  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000358  9a913902  vsub.f.mz.rn vr3{mr1}, r19, vr3
00035c  0a923906  vmul.f.mz.rn vr4{mr3}, r19, vr3
000360  8a113a04  vmul.f.mz.rn vr3{mr2}, r20, vr3
000364  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
000368  12913902  vadd.f.mz.rn vr2{mr1}, r19, vr3
00036c  8e902002  vmul.f.mz.rn vr1{mr1}, vr1, vr2
000370  461c1fc2  vstore_mask16.mz vr1{mr1}, 1728(r30)
000374  00a00000  mfence { lm }
000378  ffb0f300  s_lm2gm r1, r15, 0(r[8:9])
00037c  e300fffb  loadli.w r1,  -520(r30)
000380  00a00000  mfence { lm }
000384  8b911110  add.s r3, r3, r1
000388  bfa741fe  blt.s r3, r4, -536
00038c  9f0e8ffb  addli sp, r30, -576
000390  9f8e8e04  addli sp, sp, 576
000394  00a00300  mfence { lm, sm, gm }
000398  00100000  exit
00039c  00100000  exit
0003a0  00100000  exit
0003a4  00100000  exit
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
