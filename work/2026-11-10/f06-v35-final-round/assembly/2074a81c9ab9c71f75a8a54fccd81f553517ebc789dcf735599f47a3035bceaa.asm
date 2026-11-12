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
000078  9f095000  addli r19, zero, 40
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
0000dc  9f8e8efc  addli sp, sp, -448
0000e0  1f8f0e03  addli r30, sp, 384
0000e4  e3004f00  loadli.w r1,  32(r30)
0000e8  e3413f00  loadli.w r3,  28(r30)
0000ec  63414f00  loadli.w r2,  36(r30)
0000f0  0b923020  mul.s r4, r1, r3
0000f4  80510002  load_param_i r3, 0
0000f8  8b102220  mul.s r1, r4, r2
0000fc  e74b1ffc  storeli.w r1, -324(r30)
000100  4bc13002  ble.s r1, r3, 1104
000104  80d00002  load_param_i r1, 1
000108  80320002  core_id r5
00010c  2bf3b53f  lui r6, 260959
000110  1f0a8fff  addli r20, r30, -64
000114  ab0a803f  lui r21, 260096
000118  9f0b0fff  addli r23, r30, -128
00011c  9f0c8000  addli r25, zero, 64
000120  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000124  e70b1ffc  storeli.w r1, -328(r30)
000128  9bb04200  slli r1, r5, 4
00012c  ab02353f  lui r5, 258896
000130  1b1e330e  ori r28, r6, 227
000134  2b73823e  lui r6, 256039
000138  674b1ffc  storeli.w r1, -332(r30)
00013c  9b90324f  ori r1, r5, 1267
000140  abb2a73e  lui r5, 256635
000144  1b136390  ori r6, r6, 2310
000148  1b9c52a0  ori r24, r5, 2565
00014c  abd2873f  lui r5, 260221
000150  670b1ffc  storeli.w r1, -336(r30)
000154  9b9022c2  ori r1, r5, 3106
000158  ab02babf  lui r5, 785312
00015c  9b9d320e  ori r27, r5, 227
000160  aba291be  lui r5, 780570
000164  e74a1ffc  storeli.w r1, -340(r30)
000168  9b92e298  ori r5, r5, 2446
00016c  e3404f00  loadli.w r1,  36(r30)
000170  2b0500f0  lui r10, 983040
000174  1f120000  addli r4, zero, 1
000178  ab0700f0  lui r15, 983040
00017c  eb550f00  load.d r[12:13], 0(r30)
000180  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000184  8b941130  div.s r9, r3, r1
000188  e3004f00  loadli.w r1,  32(r30)
00018c  8b941430  div.s r9, r9, r1
000190  e3406ffd  loadli.w r1,  -332(r30)
000194  9bb4a400  slli r9, r9, 10
000198  8b941410  add.s r9, r9, r1
00019c  9f000008  addli r1, zero, 1024
0001a0  8b961438  mod.s r13, r9, r1
0001a4  9f004000  addli r1, zero, 32
0001a8  1f100000  addli zero, zero, 1
0001ac  9798a000  or r17, r1, r10
0001b0  b3940428  sext_int2long r[10:11], r9
0001b4  9797f000  or r15, r1, r15
0001b8  7e0100e0  vmmov mr2, zero
0001bc  17200000  xor zero, zero, zero
0001c0  97b34402  sll.d r[8:9], r[10:11], r4
0001c4  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0001c8  b3900628  sext_int2long r[2:3], r13
0001cc  8ba37510  add.ul r[8:9], r[12:13], r[8:9]
0001d0  eb558f00  load.d r[12:13], 8(r30)
0001d4  97b04002  sll.d r[2:3], r[2:3], r4
0001d8  1f028ffd  addli r4, r30, -320
0001dc  ffa84300  l_gm2lm r17, r4, 0(r[8:9])
0001e0  8ba01510  add.ul r[2:3], r[12:13], r[2:3]
0001e4  1f020ffe  addli r4, r30, -256
0001e8  ffa74000  l_gm2lm r15, r4, 0(r[2:3])
0001ec  00a00000  mfence { lm }
0001f0  eb300fec  load.hu r1, -320(r30)
0001f4  6b312fec  load.hu r2, -318(r30)
0001f8  eb334fec  load.hu r7, -316(r30)
0001fc  6b346fec  load.hu r8, -314(r30)
000200  eb368fec  load.hu r13, -312(r30)
000204  eb37afec  load.hu r15, -310(r30)
000208  eb38cfec  load.hu r17, -308(r30)
00020c  6b39efec  load.hu r18, -306(r30)
000210  6b370fed  load.hu r14, -304(r30)
000214  6b382fed  load.hu r16, -302(r30)
000218  eb354fed  load.hu r11, -300(r30)
00021c  6b366fed  load.hu r12, -298(r30)
000220  6b328fed  load.hu r4, -296(r30)
000224  6b3bafed  load.hu r22, -294(r30)
000228  eb39cfed  load.hu r19, -292(r30)
00022c  6b3defed  load.hu r26, -290(r30)
000230  b3900018  bfloat2float.rn r1, r1
000234  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000238  b3100118  bfloat2float.rn r1, r2
00023c  1f210000  addli r2, zero, 2
000240  fe0101e0  vmmov mr3, r2
000244  1f410000  addli r2, zero, 4
000248  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
00024c  b3900318  bfloat2float.rn r1, r7
000250  7e0001e0  vmmov mr0, r2
000254  1f011000  addli r2, zero, 8
000258  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00025c  b3100418  bfloat2float.rn r1, r8
000260  7e0001e0  vmmov mr0, r2
000264  1f012000  addli r2, zero, 16
000268  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00026c  b3900618  bfloat2float.rn r1, r13
000270  7e0001e0  vmmov mr0, r2
000274  1f014000  addli r2, zero, 32
000278  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00027c  b3900718  bfloat2float.rn r1, r15
000280  7e0001e0  vmmov mr0, r2
000284  1f018000  addli r2, zero, 64
000288  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00028c  b3900818  bfloat2float.rn r1, r17
000290  7e0001e0  vmmov mr0, r2
000294  1f010001  addli r2, zero, 128
000298  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00029c  b3100918  bfloat2float.rn r1, r18
0002a0  7e0001e0  vmmov mr0, r2
0002a4  1f010002  addli r2, zero, 256
0002a8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0002ac  b3100718  bfloat2float.rn r1, r14
0002b0  7e0001e0  vmmov mr0, r2
0002b4  1f010004  addli r2, zero, 512
0002b8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0002bc  b3100818  bfloat2float.rn r1, r16
0002c0  7e0001e0  vmmov mr0, r2
0002c4  1f010008  addli r2, zero, 1024
0002c8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0002cc  b3900518  bfloat2float.rn r1, r11
0002d0  7e0001e0  vmmov mr0, r2
0002d4  1f010010  addli r2, zero, 2048
0002d8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0002dc  b3100618  bfloat2float.rn r1, r12
0002e0  7e0001e0  vmmov mr0, r2
0002e4  1f010020  addli r2, zero, 4096
0002e8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0002ec  b3100218  bfloat2float.rn r1, r4
0002f0  7e0001e0  vmmov mr0, r2
0002f4  1f010040  addli r2, zero, 8192
0002f8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0002fc  b3100b18  bfloat2float.rn r1, r22
000300  7e0001e0  vmmov mr0, r2
000304  2b410000  lui r2, 4
000308  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00030c  b3900918  bfloat2float.rn r1, r19
000310  7e0001e0  vmmov mr0, r2
000314  2b810000  lui r2, 8
000318  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00031c  b3100d18  bfloat2float.rn r1, r26
000320  7e0001e0  vmmov mr0, r2
000324  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000328  eb300ff0  load.hu r1, -256(r30)
00032c  6b312ff0  load.hu r2, -254(r30)
000330  6b324ff0  load.hu r4, -252(r30)
000334  eb336ff0  load.hu r7, -250(r30)
000338  6b348ff0  load.hu r8, -248(r30)
00033c  eb35aff0  load.hu r11, -246(r30)
000340  6b36cff0  load.hu r12, -244(r30)
000344  eb36eff0  load.hu r13, -242(r30)
000348  6b370ff1  load.hu r14, -240(r30)
00034c  eb372ff1  load.hu r15, -238(r30)
000350  6b384ff1  load.hu r16, -236(r30)
000354  eb386ff1  load.hu r17, -234(r30)
000358  6b398ff1  load.hu r18, -232(r30)
00035c  eb39aff1  load.hu r19, -230(r30)
000360  6b3bcff1  load.hu r22, -228(r30)
000364  6b3deff1  load.hu r26, -226(r30)
000368  b3900018  bfloat2float.rn r1, r1
00036c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000370  b3100118  bfloat2float.rn r1, r2
000374  1f410000  addli r2, zero, 4
000378  7e0101e0  vmmov mr2, r2
00037c  1f011000  addli r2, zero, 8
000380  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
000384  b3100218  bfloat2float.rn r1, r4
000388  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00038c  b3900318  bfloat2float.rn r1, r7
000390  7e0101e0  vmmov mr2, r2
000394  1f012000  addli r2, zero, 16
000398  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00039c  b3100418  bfloat2float.rn r1, r8
0003a0  7e0101e0  vmmov mr2, r2
0003a4  1f014000  addli r2, zero, 32
0003a8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003ac  b3900518  bfloat2float.rn r1, r11
0003b0  7e0101e0  vmmov mr2, r2
0003b4  1f018000  addli r2, zero, 64
0003b8  ab0580bf  lui r11, 784384
0003bc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003c0  b3100618  bfloat2float.rn r1, r12
0003c4  7e0101e0  vmmov mr2, r2
0003c8  1f010001  addli r2, zero, 128
0003cc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003d0  b3900618  bfloat2float.rn r1, r13
0003d4  7e0101e0  vmmov mr2, r2
0003d8  1f010002  addli r2, zero, 256
0003dc  9f060000  addli r13, zero, 0
0003e0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003e4  b3100718  bfloat2float.rn r1, r14
0003e8  7e0101e0  vmmov mr2, r2
0003ec  1f010004  addli r2, zero, 512
0003f0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003f4  b3900718  bfloat2float.rn r1, r15
0003f8  7e0101e0  vmmov mr2, r2
0003fc  1f010008  addli r2, zero, 1024
000400  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000404  b3100818  bfloat2float.rn r1, r16
000408  7e0101e0  vmmov mr2, r2
00040c  1f010010  addli r2, zero, 2048
000410  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000414  b3900818  bfloat2float.rn r1, r17
000418  7e0101e0  vmmov mr2, r2
00041c  1f010020  addli r2, zero, 4096
000420  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000424  b3100918  bfloat2float.rn r1, r18
000428  7e0101e0  vmmov mr2, r2
00042c  1f010040  addli r2, zero, 8192
000430  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000434  b3900918  bfloat2float.rn r1, r19
000438  7e0101e0  vmmov mr2, r2
00043c  2b410000  lui r2, 4
000440  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000444  b3100b18  bfloat2float.rn r1, r22
000448  7e0101e0  vmmov mr2, r2
00044c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000450  b3100d18  bfloat2float.rn r1, r26
000454  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000458  e3006ffd  loadli.w r1,  -336(r30)
00045c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000460  0a911002  vmul.f.mz.rn vr2{mr1}, r1, vr1
000464  72112042  vlt.f.mz mr2{mr1}, zero, vr2
000468  ab00003f  lui r1, 258048
00046c  fe010140  vmnot mr3, mr2
000470  8a912a04  vmul.f.mz.rn vr3{mr2}, r21, vr2
000474  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
000478  0a922506  vmul.f.mz.rn vr4{mr3}, r11, vr2
00047c  0e112102  vmul.f.mz.rn vr2{mr1}, vr2, vr2
000480  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
000484  46102a02  vstore_mask16.mz vr2{mr1}, 0(r20)
000488  46903b02  vstore_mask16.mz vr3{mr1}, 0(r23)
00048c  00a00000  mfence { lm }
000490  8b90db10  add.s r1, r23, r13
000494  ab03803f  lui r7, 260096
000498  0b11da10  add.s r2, r20, r13
00049c  9fc60600  addli r13, r13, 4
0004a0  63820000  loadli.w r4,  0(r1)
0004a4  63040100  loadli.w r8,  0(r2)
0004a8  8b638251  fmac.f.rn r7, r4, r24
0004ac  0b620458  neg.f r4, r8
0004b0  0f020200  exp.f.rn r4, r4
0004b4  8f837a18  div.f.rn r7, r21, r7
0004b8  67004100  storeli.w r4, 0(r2)
0004bc  67807000  storeli.w r7, 0(r1)
0004c0  3bcf96ff  bneq r13, r25, -48
0004c4  00a00000  mfence { lm }
0004c8  eb530f01  load.d r[8:9], 16(r30)
0004cc  2b0200f0  lui r4, 983040
0004d0  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
0004d4  e3405ffd  loadli.w r1,  -340(r30)
0004d8  42120a02  vload_mask16.mz vr4{mr1}, 0(r20)
0004dc  17924c00  or r4, r25, r4
0004e0  8a912002  vmul.f.mz.rn vr3{mr1}, r1, vr2
0004e4  9f200000  addli r1, zero, 2
0004e8  97b01402  sll.d r[2:3], r[10:11], r1
0004ec  92913d02  vadd.f.mz.rn vr3{mr1}, r27, vr3
0004f0  8ba01310  add.ul r[2:3], r[8:9], r[2:3]
0004f4  9f038ffe  addli r7, r30, -192
0004f8  8e912102  vmul.f.mz.rn vr3{mr1}, vr3, vr2
0004fc  92113e02  vadd.f.mz.rn vr3{mr1}, r28, vr3
000500  8e912102  vmul.f.mz.rn vr3{mr1}, vr3, vr2
000504  92913202  vadd.f.mz.rn vr3{mr1}, r5, vr3
000508  8e912102  vmul.f.mz.rn vr3{mr1}, vr3, vr2
00050c  92113302  vadd.f.mz.rn vr3{mr1}, r6, vr3
000510  0e912102  vmul.f.mz.rn vr2{mr1}, vr3, vr2
000514  0e112202  vmul.f.mz.rn vr2{mr1}, vr4, vr2
000518  1a912a02  vsub.f.mz.rn vr2{mr1}, r21, vr2
00051c  8a912a04  vmul.f.mz.rn vr3{mr2}, r21, vr2
000520  0a912506  vmul.f.mz.rn vr2{mr3}, r11, vr2
000524  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
000528  12912a02  vadd.f.mz.rn vr2{mr1}, r21, vr2
00052c  8e902002  vmul.f.mz.rn vr1{mr1}, vr1, vr2
000530  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
000534  00a00000  mfence { lm }
000538  7fb27000  s_lm2gm r4, r7, 0(r[2:3])
00053c  e3007ffd  loadli.w r1,  -328(r30)
000540  00a00000  mfence { lm }
000544  8b911110  add.s r3, r3, r1
000548  e3407ffd  loadli.w r1,  -324(r30)
00054c  bf8011fe  blt.s r3, r1, -992
000550  9f0e0ffd  addli sp, r30, -384
000554  9f8e0e03  addli sp, sp, 384
000558  00a00300  mfence { lm, sm, gm }
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
00066c  00100000  exit
000670  00100000  exit
000674  00100000  exit
000678  00100000  exit
00067c  00100000  exit
000680  00100000  exit
000684  00100000  exit
000688  00100000  exit
00068c  00100000  exit
000690  00100000  exit
000694  00100000  exit
000698  00100000  exit
00069c  00100000  exit
0006a0  00100000  exit
0006a4  00100000  exit
0006a8  00100000  exit
0006ac  00100000  exit
0006b0  00100000  exit
0006b4  00100000  exit
0006b8  00100000  exit
0006bc  00100000  exit
0006c0  00100000  exit
0006c4  00100000  exit
0006c8  00100000  exit
0006cc  00100000  exit
0006d0  00100000  exit
0006d4  00100000  exit
0006d8  00100000  exit
0006dc  00100000  exit
0006e0  00100000  exit
0006e4  00100000  exit
0006e8  00100000  exit
0006ec  00100000  exit
0006f0  00100000  exit
0006f4  00100000  exit
0006f8  00100000  exit
0006fc  00100000  exit
000700  00100000  exit
000704  00100000  exit
000708  00100000  exit
00070c  00100000  exit
000710  00100000  exit
000714  00100000  exit
000718  00100000  exit
00071c  00100000  exit
000720  00100000  exit
000724  00100000  exit
000728  00100000  exit
00072c  00100000  exit
000730  00100000  exit
000734  00100000  exit
000738  00100000  exit
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
