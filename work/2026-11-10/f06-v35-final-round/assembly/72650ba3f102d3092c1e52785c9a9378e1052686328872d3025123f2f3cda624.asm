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
0000dc  9f8e0efd  addli sp, sp, -384
0000e0  1f8f8e02  addli r30, sp, 320
0000e4  e3003f00  loadli.w r1,  24(r30)
0000e8  e3412f00  loadli.w r3,  20(r30)
0000ec  63413f00  loadli.w r2,  28(r30)
0000f0  0b923020  mul.s r4, r1, r3
0000f4  80510002  load_param_i r3, 0
0000f8  8b102220  mul.s r1, r4, r2
0000fc  e74f1ffc  storeli.w r1, -260(r30)
000100  4bfc3000  ble.s r1, r3, 796
000104  80d00002  load_param_i r1, 1
000108  80320002  core_id r5
00010c  2bd3873f  lui r6, 260221
000110  1f020ffe  addli r4, r30, -256
000114  1f078000  addli r14, zero, 64
000118  1f0a8fff  addli r20, r30, -64
00011c  ab0a803f  lui r21, 260096
000120  9f0b0fff  addli r23, r30, -128
000124  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000128  e70f1ffc  storeli.w r1, -264(r30)
00012c  9bb04200  slli r1, r5, 4
000130  ab02353f  lui r5, 258896
000134  674f1ffc  storeli.w r1, -268(r30)
000138  9b90324f  ori r1, r5, 1267
00013c  abb2a73e  lui r5, 256635
000140  670f1ffc  storeli.w r1, -272(r30)
000144  9b1023c2  ori r1, r6, 3106
000148  1b9c52a0  ori r24, r5, 2565
00014c  ab02babf  lui r5, 785312
000150  2bf3b53f  lui r6, 260959
000154  1b9d320e  ori r26, r5, 227
000158  9b1d330e  ori r27, r6, 227
00015c  aba291be  lui r5, 780570
000160  2b73823e  lui r6, 256039
000164  e74e1ffc  storeli.w r1, -276(r30)
000168  ab800000  lui r1, 8
00016c  1b9ee298  ori r28, r5, 2446
000170  9b126390  ori r5, r6, 2310
000174  7e8000e0  vmmov mr0, r1
000178  e3403f00  loadli.w r1,  28(r30)
00017c  ab0500f0  lui r11, 983040
000180  2b0400f0  lui r8, 983040
000184  eb548f00  load.d r[10:11], 8(r30)
000188  12310002  vadd.s.mz vr2{mr1}, zero, vr0
00018c  17148700  or r8, r14, r8
000190  0b931130  div.s r6, r3, r1
000194  e3003f00  loadli.w r1,  24(r30)
000198  0b131330  div.s r6, r6, r1
00019c  e340effd  loadli.w r1,  -268(r30)
0001a0  1b33a300  slli r6, r6, 10
0001a4  0b131310  add.s r6, r6, r1
0001a8  9f000008  addli r1, zero, 1024
0001ac  8b131338  mod.s r7, r6, r1
0001b0  9f004000  addli r1, zero, 32
0001b4  b3170328  sext_int2long r[16:17], r6
0001b8  9795b000  or r11, r1, r11
0001bc  9f200000  addli r1, zero, 2
0001c0  97b71702  sll.d r[16:17], r[16:17], r1
0001c4  9f100000  addli r1, zero, 1
0001c8  1f100000  addli zero, zero, 1
0001cc  33930328  sext_int2long r[7:8], r7
0001d0  7e0100e0  vmmov mr2, zero
0001d4  17200000  xor zero, zero, zero
0001d8  97301302  sll.d r[2:3], r[7:8], r1
0001dc  6b530f00  load.d r[7:8], 0(r30)
0001e0  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0001e4  0b23f310  add.ul r[7:8], r[7:8], r[16:17]
0001e8  7f244300  l_gm2lm r8, r4, 0(r[7:8])
0001ec  1f028ffe  addli r4, r30, -192
0001f0  ffa54000  l_gm2lm r11, r4, 0(r[2:3])
0001f4  00a00000  mfence { lm }
0001f8  eb300ff4  load.hu r1, -192(r30)
0001fc  6b312ff4  load.hu r2, -190(r30)
000200  c2100fe2  vload_mask16.mz vr1{mr1}, 1792(r30)
000204  eb374ff4  load.hu r15, -188(r30)
000208  6b386ff4  load.hu r16, -186(r30)
00020c  6b368ff4  load.hu r12, -184(r30)
000210  eb38aff4  load.hu r17, -182(r30)
000214  6b39cff4  load.hu r18, -180(r30)
000218  eb36eff4  load.hu r13, -178(r30)
00021c  eb340ff5  load.hu r9, -176(r30)
000220  6b352ff5  load.hu r10, -174(r30)
000224  6b324ff5  load.hu r4, -172(r30)
000228  eb396ff5  load.hu r19, -170(r30)
00022c  6b3b8ff5  load.hu r22, -168(r30)
000230  eb35aff5  load.hu r11, -166(r30)
000234  6b34cff5  load.hu r8, -164(r30)
000238  eb3ceff5  load.hu r25, -162(r30)
00023c  b3900018  bfloat2float.rn r1, r1
000240  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000244  b3100118  bfloat2float.rn r1, r2
000248  1f210000  addli r2, zero, 2
00024c  7e0101e0  vmmov mr2, r2
000250  1f410000  addli r2, zero, 4
000254  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000258  b3900718  bfloat2float.rn r1, r15
00025c  7e0101e0  vmmov mr2, r2
000260  1f011000  addli r2, zero, 8
000264  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000268  b3100818  bfloat2float.rn r1, r16
00026c  7e0101e0  vmmov mr2, r2
000270  1f012000  addli r2, zero, 16
000274  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000278  b3100618  bfloat2float.rn r1, r12
00027c  7e0101e0  vmmov mr2, r2
000280  1f014000  addli r2, zero, 32
000284  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000288  b3900818  bfloat2float.rn r1, r17
00028c  7e0101e0  vmmov mr2, r2
000290  1f018000  addli r2, zero, 64
000294  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000298  b3100918  bfloat2float.rn r1, r18
00029c  7e0101e0  vmmov mr2, r2
0002a0  1f010001  addli r2, zero, 128
0002a4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0002a8  b3900618  bfloat2float.rn r1, r13
0002ac  7e0101e0  vmmov mr2, r2
0002b0  1f010002  addli r2, zero, 256
0002b4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0002b8  b3900418  bfloat2float.rn r1, r9
0002bc  7e0101e0  vmmov mr2, r2
0002c0  1f010004  addli r2, zero, 512
0002c4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0002c8  b3100518  bfloat2float.rn r1, r10
0002cc  7e0101e0  vmmov mr2, r2
0002d0  1f010008  addli r2, zero, 1024
0002d4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0002d8  b3100218  bfloat2float.rn r1, r4
0002dc  7e0101e0  vmmov mr2, r2
0002e0  1f010010  addli r2, zero, 2048
0002e4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0002e8  b3900918  bfloat2float.rn r1, r19
0002ec  7e0101e0  vmmov mr2, r2
0002f0  1f010020  addli r2, zero, 4096
0002f4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0002f8  b3100b18  bfloat2float.rn r1, r22
0002fc  7e0101e0  vmmov mr2, r2
000300  1f010040  addli r2, zero, 8192
000304  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000308  b3900518  bfloat2float.rn r1, r11
00030c  7e0101e0  vmmov mr2, r2
000310  2b410000  lui r2, 4
000314  ab0580bf  lui r11, 784384
000318  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00031c  b3100418  bfloat2float.rn r1, r8
000320  7e0101e0  vmmov mr2, r2
000324  1f040000  addli r8, zero, 0
000328  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00032c  b3900c18  bfloat2float.rn r1, r25
000330  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000334  e300effd  loadli.w r1,  -272(r30)
000338  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00033c  0a911002  vmul.f.mz.rn vr2{mr1}, r1, vr1
000340  72112042  vlt.f.mz mr2{mr1}, zero, vr2
000344  ab00003f  lui r1, 258048
000348  fe010140  vmnot mr3, mr2
00034c  8a912a04  vmul.f.mz.rn vr3{mr2}, r21, vr2
000350  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
000354  0a922506  vmul.f.mz.rn vr4{mr3}, r11, vr2
000358  0e112102  vmul.f.mz.rn vr2{mr1}, vr2, vr2
00035c  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
000360  46102a02  vstore_mask16.mz vr2{mr1}, 0(r20)
000364  46903b02  vstore_mask16.mz vr3{mr1}, 0(r23)
000368  00a00000  mfence { lm }
00036c  8b908b10  add.s r1, r23, r8
000370  ab04803f  lui r9, 260096
000374  0b118a10  add.s r2, r20, r8
000378  1f440400  addli r8, r8, 4
00037c  63820000  loadli.w r4,  0(r1)
000380  63050100  loadli.w r10,  0(r2)
000384  8b648251  fmac.f.rn r9, r4, r24
000388  0b620558  neg.f r4, r10
00038c  0f020200  exp.f.rn r4, r4
000390  8f849a18  div.f.rn r9, r21, r9
000394  67004100  storeli.w r4, 0(r2)
000398  67809000  storeli.w r9, 0(r1)
00039c  3b4fe4fe  bneq r8, r14, -48
0003a0  00a00000  mfence { lm }
0003a4  1f020ffe  addli r4, r30, -256
0003a8  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
0003ac  e340dffd  loadli.w r1,  -276(r30)
0003b0  42120a02  vload_mask16.mz vr4{mr1}, 0(r20)
0003b4  8a912002  vmul.f.mz.rn vr3{mr1}, r1, vr2
0003b8  ab0000f0  lui r1, 983040
0003bc  97101700  or r1, r14, r1
0003c0  92113d02  vadd.f.mz.rn vr3{mr1}, r26, vr3
0003c4  8e912102  vmul.f.mz.rn vr3{mr1}, vr3, vr2
0003c8  92913d02  vadd.f.mz.rn vr3{mr1}, r27, vr3
0003cc  8e912102  vmul.f.mz.rn vr3{mr1}, vr3, vr2
0003d0  92113e02  vadd.f.mz.rn vr3{mr1}, r28, vr3
0003d4  8e912102  vmul.f.mz.rn vr3{mr1}, vr3, vr2
0003d8  92913202  vadd.f.mz.rn vr3{mr1}, r5, vr3
0003dc  0e912102  vmul.f.mz.rn vr2{mr1}, vr3, vr2
0003e0  0e112202  vmul.f.mz.rn vr2{mr1}, vr4, vr2
0003e4  1a912a02  vsub.f.mz.rn vr2{mr1}, r21, vr2
0003e8  8a912a04  vmul.f.mz.rn vr3{mr2}, r21, vr2
0003ec  0a912506  vmul.f.mz.rn vr2{mr3}, r11, vr2
0003f0  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
0003f4  12912a02  vadd.f.mz.rn vr2{mr1}, r21, vr2
0003f8  8e902002  vmul.f.mz.rn vr1{mr1}, vr1, vr2
0003fc  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
000400  00a00000  mfence { lm }
000404  ff304300  s_lm2gm r1, r4, 0(r[7:8])
000408  e300fffd  loadli.w r1,  -264(r30)
00040c  00a00000  mfence { lm }
000410  8b911110  add.s r3, r3, r1
000414  e340fffd  loadli.w r1,  -260(r30)
000418  bf8511fe  blt.s r3, r1, -672
00041c  9f0e8ffd  addli sp, r30, -320
000420  9f8e8e02  addli sp, sp, 320
000424  00a00300  mfence { lm, sm, gm }
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
0005f4  00100000  exit
0005f8  00100000  exit
0005fc  00100000  exit
000600  00100000  exit
000604  00100000  exit
000608  00100000  exit
00060c  00100000  exit
000610  00100000  exit
000614  00100000  exit
000618  00100000  exit
00061c  00100000  exit
000620  00100000  exit
000624  00100000  exit
000628  00100000  exit
00062c  00100000  exit
000630  00100000  exit
000634  00100000  exit
000638  00100000  exit
00063c  00100000  exit
000640  00100000  exit
000644  00100000  exit
000648  00100000  exit
00064c  00100000  exit
000650  00100000  exit
000654  00100000  exit
000658  00100000  exit
00065c  00100000  exit
000660  00100000  exit
000664  00100000  exit
000668  00100000  exit
