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
0000dc  9f8e0efb  addli sp, sp, -640
0000e0  1f8f8e04  addli r30, sp, 576
0000e4  00520002  load_param_i r4, 0
0000e8  63014f00  loadli.w r2,  32(r30)
0000ec  e3403f00  loadli.w r1,  28(r30)
0000f0  e3414f00  loadli.w r3,  36(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  e74e1ffa  storeli.w r1, -532(r30)
000100  4bc0400a  ble.s r1, r4, 5136
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  9f048000  addli r9, zero, 64
000110  1f098ffe  addli r18, r30, -192
000114  2b0c807f  lui r24, 522240
000118  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00011c  46100fc2  vstore_mask16.mz vr0{mr1}, 1536(r30)
000120  9bb05000  slli r1, r1, 5
000124  e70e2ffa  storeli.w r2, -536(r30)
000128  2bf1ff7f  lui r2, 524287
00012c  674e1ffa  storeli.w r1, -540(r30)
000130  ab700000  lui r1, 7
000134  9b19f1ff  ori r19, r2, 4095
000138  2bb1a73e  lui r2, 256635
00013c  9b9bf0ff  ori r23, r1, 4095
000140  ab00353f  lui r1, 258896
000144  1b9b304f  ori r22, r1, 1267
000148  9b1051a0  ori r1, r2, 2565
00014c  ab01f03f  lui r3, 261888
000150  e74f7ffb  storeli.w r23, -516(r30)
000154  670e1ffc  storeli.w r1, -288(r30)
000158  ab00babf  lui r1, 785312
00015c  733c2fee  store.d r[3:4], -264(r30)
000160  2bf1b53f  lui r2, 260959
000164  e74d6ffd  storeli.w r22, -292(r30)
000168  9b9a300e  ori r21, r1, 227
00016c  abd0873f  lui r1, 260221
000170  9b9020c2  ori r1, r1, 3106
000174  674e5ffd  storeli.w r21, -284(r30)
000178  e70e1ffc  storeli.w r1, -280(r30)
00017c  9b10310e  ori r1, r2, 227
000180  2b71823e  lui r2, 256039
000184  674f1ffc  storeli.w r1, -268(r30)
000188  aba091be  lui r1, 780570
00018c  9b90e098  ori r1, r1, 2446
000190  670f1ffc  storeli.w r1, -272(r30)
000194  9b106190  ori r1, r2, 2310
000198  e74e1ffc  storeli.w r1, -276(r30)
00019c  db070000  j 60
0001a0  6b510f01  load.d r[3:4], 16(r30)
0001a4  6b520fdf  load.d r[5:6], -528(r30)
0001a8  ab0000f0  lui r1, 983040
0001ac  9f048000  addli r9, zero, 64
0001b0  97901400  or r1, r9, r1
0001b4  0b214110  add.ul r[3:4], r[3:4], r[5:6]
0001b8  6302fffb  loadli.w r4,  -520(r30)
0001bc  ff302101  s_lm2gm r1, r18, 0(r[3:4])
0001c0  e300dffb  loadli.w r1,  -536(r30)
0001c4  00a00000  mfence { lm }
0001c8  0b121210  add.s r4, r4, r1
0001cc  e340dffb  loadli.w r1,  -532(r30)
0001d0  3f201200  blt.s r4, r1, 8
0001d4  db670200  j 4924
0001d8  e3404f00  loadli.w r1,  36(r30)
0001dc  63014f00  loadli.w r2,  32(r30)
0001e0  e70f4ffa  storeli.w r4, -520(r30)
0001e4  9f130000  addli r7, zero, 1
0001e8  8b101230  div.s r1, r4, r1
0001ec  8b902030  div.s r1, r1, r2
0001f0  6341cffb  loadli.w r2,  -540(r30)
0001f4  9bb0b000  slli r1, r1, 11
0001f8  8b902010  add.s r1, r1, r2
0001fc  1f010010  addli r2, zero, 2048
000200  0b912038  mod.s r2, r1, r2
000204  b3910028  sext_int2long r[4:5], r1
000208  ab0000f0  lui r1, 983040
00020c  17b57102  sll.d r[11:12], r[4:5], r7
000210  97901400  or r1, r9, r1
000214  7338afde  store.d r[11:12], -528(r30)
000218  b3120128  sext_int2long r[6:7], r2
00021c  2b0100f0  lui r2, 983040
000220  97b17202  sll.d r[4:5], r[6:7], r7
000224  eb520f00  load.d r[6:7], 0(r30)
000228  eb538f00  load.d r[8:9], 8(r30)
00022c  17912400  or r2, r9, r2
000230  8ba13310  add.ul r[4:5], r[8:9], r[4:5]
000234  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
000238  9f030ffe  addli r7, r30, -256
00023c  ffa07200  l_gm2lm r1, r7, 0(r[6:7])
000240  7fa12101  l_gm2lm r2, r18, 0(r[4:5])
000244  9f110000  addli r3, zero, 1
000248  9f000000  addli r1, zero, 0
00024c  00a00000  mfence { lm }
000250  db060000  j 52
000254  1bc10001  srli r2, r1, 16
000258  1b011100  andi r2, r2, 1
00025c  8b902010  add.s r1, r1, r2
000260  8b907011  add.s r1, r1, r23
000264  6301bffd  loadli.w r2,  -296(r30)
000268  9bc00001  srli r1, r1, 16
00026c  9f010000  addli r3, zero, 0
000270  739f1c00  store.h r1, 30(r25)
000274  9f002000  addli r1, zero, 16
000278  1b011100  andi r2, r2, 1
00027c  00a00000  mfence { lm }
000280  b70c01fe  beq r2, zero, -224
000284  c2100fc2  vload_mask16.mz vr1{mr1}, 1536(r30)
000288  9bb01000  slli r1, r1, 1
00028c  1f010ffe  addli r2, r30, -256
000290  9f1a0000  addli r21, zero, 1
000294  e70d3ffc  storeli.w r3, -296(r30)
000298  2b0a4000  lui r20, 1024
00029c  0b111110  add.s r2, r2, r1
0002a0  7e810ae0  vmmov mr2, r21
0002a4  8b1c1910  add.s r25, r18, r1
0002a8  ab800000  lui r1, 8
0002ac  eb320100  load.hu r5, 0(r2)
0002b0  6b332100  load.hu r6, 2(r2)
0002b4  6b32a101  load.hu r4, 26(r2)
0002b8  eb31c101  load.hu r3, 28(r2)
0002bc  eb334100  load.hu r7, 4(r2)
0002c0  6b346100  load.hu r8, 6(r2)
0002c4  eb348100  load.hu r9, 8(r2)
0002c8  6b35a100  load.hu r10, 10(r2)
0002cc  eb35c100  load.hu r11, 12(r2)
0002d0  6b36e100  load.hu r12, 14(r2)
0002d4  eb360101  load.hu r13, 16(r2)
0002d8  6b372101  load.hu r14, 18(r2)
0002dc  eb374101  load.hu r15, 20(r2)
0002e0  6b386101  load.hu r16, 22(r2)
0002e4  eb388101  load.hu r17, 24(r2)
0002e8  6b31e101  load.hu r2, 30(r2)
0002ec  12301002  vadd.s.mz vr0{mr1}, zero, vr1
0002f0  b3920218  bfloat2float.rn r5, r5
0002f4  33120218  bfloat2float.rn r4, r4
0002f8  b3910118  bfloat2float.rn r3, r3
0002fc  33110118  bfloat2float.rn r2, r2
000300  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
000304  b3120318  bfloat2float.rn r5, r6
000308  1f230000  addli r6, zero, 2
00030c  fe0103e0  vmmov mr3, r6
000310  1f430000  addli r6, zero, 4
000314  6aa00236  vor.u.mh vr0{mr3}, r5, vr0
000318  b3920318  bfloat2float.rn r5, r7
00031c  7e0003e0  vmmov mr0, r6
000320  1f031000  addli r6, zero, 8
000324  6aa00230  vor.u.mh vr0{mr0}, r5, vr0
000328  b3120418  bfloat2float.rn r5, r8
00032c  7e0003e0  vmmov mr0, r6
000330  1f032000  addli r6, zero, 16
000334  6aa00230  vor.u.mh vr0{mr0}, r5, vr0
000338  b3920418  bfloat2float.rn r5, r9
00033c  7e0003e0  vmmov mr0, r6
000340  1f034000  addli r6, zero, 32
000344  6aa00230  vor.u.mh vr0{mr0}, r5, vr0
000348  b3120518  bfloat2float.rn r5, r10
00034c  7e0003e0  vmmov mr0, r6
000350  1f038000  addli r6, zero, 64
000354  6aa00230  vor.u.mh vr0{mr0}, r5, vr0
000358  b3920518  bfloat2float.rn r5, r11
00035c  7e0003e0  vmmov mr0, r6
000360  1f030001  addli r6, zero, 128
000364  6aa00230  vor.u.mh vr0{mr0}, r5, vr0
000368  b3120618  bfloat2float.rn r5, r12
00036c  7e0003e0  vmmov mr0, r6
000370  1f030002  addli r6, zero, 256
000374  6aa00230  vor.u.mh vr0{mr0}, r5, vr0
000378  b3920618  bfloat2float.rn r5, r13
00037c  7e0003e0  vmmov mr0, r6
000380  1f030004  addli r6, zero, 512
000384  6aa00230  vor.u.mh vr0{mr0}, r5, vr0
000388  b3120718  bfloat2float.rn r5, r14
00038c  7e0003e0  vmmov mr0, r6
000390  1f030008  addli r6, zero, 1024
000394  6aa00230  vor.u.mh vr0{mr0}, r5, vr0
000398  b3920718  bfloat2float.rn r5, r15
00039c  7e0003e0  vmmov mr0, r6
0003a0  1f030010  addli r6, zero, 2048
0003a4  6aa00230  vor.u.mh vr0{mr0}, r5, vr0
0003a8  b3120818  bfloat2float.rn r5, r16
0003ac  7e0003e0  vmmov mr0, r6
0003b0  1f030020  addli r6, zero, 4096
0003b4  6aa00230  vor.u.mh vr0{mr0}, r5, vr0
0003b8  b3920818  bfloat2float.rn r5, r17
0003bc  7e0003e0  vmmov mr0, r6
0003c0  6aa00230  vor.u.mh vr0{mr0}, r5, vr0
0003c4  9f020040  addli r5, zero, 8192
0003c8  7e8002e0  vmmov mr0, r5
0003cc  6a200230  vor.u.mh vr0{mr0}, r4, vr0
0003d0  2b420000  lui r4, 4
0003d4  7e0002e0  vmmov mr0, r4
0003d8  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0003dc  7e8000e0  vmmov mr0, r1
0003e0  6a200130  vor.u.mh vr0{mr0}, r2, vr0
0003e4  ebb00c00  load.hu r1, 0(r25)
0003e8  6bb12c00  load.hu r2, 2(r25)
0003ec  ebb14c00  load.hu r3, 4(r25)
0003f0  6bb26c00  load.hu r4, 6(r25)
0003f4  ebb28c00  load.hu r5, 8(r25)
0003f8  6bb3ac00  load.hu r6, 10(r25)
0003fc  ebb3cc00  load.hu r7, 12(r25)
000400  6bb4ec00  load.hu r8, 14(r25)
000404  ebb40c01  load.hu r9, 16(r25)
000408  6bb52c01  load.hu r10, 18(r25)
00040c  ebb54c01  load.hu r11, 20(r25)
000410  6bb66c01  load.hu r12, 22(r25)
000414  ebb68c01  load.hu r13, 24(r25)
000418  6bb7ac01  load.hu r14, 26(r25)
00041c  ebb7cc01  load.hu r15, 28(r25)
000420  6bb8ec01  load.hu r16, 30(r25)
000424  b3900018  bfloat2float.rn r1, r1
000428  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
00042c  b3100118  bfloat2float.rn r1, r2
000430  1f410000  addli r2, zero, 4
000434  7e0101e0  vmmov mr2, r2
000438  1f011000  addli r2, zero, 8
00043c  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
000440  b3900118  bfloat2float.rn r1, r3
000444  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000448  b3100218  bfloat2float.rn r1, r4
00044c  7e0101e0  vmmov mr2, r2
000450  1f012000  addli r2, zero, 16
000454  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000458  b3900218  bfloat2float.rn r1, r5
00045c  7e0101e0  vmmov mr2, r2
000460  1f014000  addli r2, zero, 32
000464  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000468  b3100318  bfloat2float.rn r1, r6
00046c  7e0101e0  vmmov mr2, r2
000470  1f018000  addli r2, zero, 64
000474  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000478  b3900318  bfloat2float.rn r1, r7
00047c  7e0101e0  vmmov mr2, r2
000480  1f010001  addli r2, zero, 128
000484  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000488  b3100418  bfloat2float.rn r1, r8
00048c  7e0101e0  vmmov mr2, r2
000490  1f010002  addli r2, zero, 256
000494  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000498  b3900418  bfloat2float.rn r1, r9
00049c  7e0101e0  vmmov mr2, r2
0004a0  1f010004  addli r2, zero, 512
0004a4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0004a8  b3100518  bfloat2float.rn r1, r10
0004ac  7e0101e0  vmmov mr2, r2
0004b0  1f010008  addli r2, zero, 1024
0004b4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0004b8  b3900518  bfloat2float.rn r1, r11
0004bc  7e0101e0  vmmov mr2, r2
0004c0  1f010010  addli r2, zero, 2048
0004c4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0004c8  b3100618  bfloat2float.rn r1, r12
0004cc  7e0101e0  vmmov mr2, r2
0004d0  1f010020  addli r2, zero, 4096
0004d4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0004d8  b3900618  bfloat2float.rn r1, r13
0004dc  7e0101e0  vmmov mr2, r2
0004e0  1f010040  addli r2, zero, 8192
0004e4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0004e8  b3100718  bfloat2float.rn r1, r14
0004ec  7e0101e0  vmmov mr2, r2
0004f0  2b410000  lui r2, 4
0004f4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0004f8  b3900718  bfloat2float.rn r1, r15
0004fc  7e0101e0  vmmov mr2, r2
000500  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000504  b3100818  bfloat2float.rn r1, r16
000508  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00050c  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
000510  46180fe2  vstore_mask16.mz vr0{mr1}, 1920(r30)
000514  00a00000  mfence { lm }
000518  e3000fff  loadli.w r1,  -128(r30)
00051c  63480fff  loadli.w r16,  -124(r30)
000520  e3071fff  loadli.w r15,  -120(r30)
000524  63471fff  loadli.w r14,  -116(r30)
000528  e3062fff  loadli.w r13,  -112(r30)
00052c  63462fff  loadli.w r12,  -108(r30)
000530  e3053fff  loadli.w r11,  -104(r30)
000534  63453fff  loadli.w r10,  -100(r30)
000538  e3044fff  loadli.w r9,  -96(r30)
00053c  63444fff  loadli.w r8,  -92(r30)
000540  e3035fff  loadli.w r7,  -88(r30)
000544  63435fff  loadli.w r6,  -84(r30)
000548  e3026fff  loadli.w r5,  -80(r30)
00054c  63426fff  loadli.w r4,  -76(r30)
000550  e3017fff  loadli.w r3,  -72(r30)
000554  17813001  and r2, r1, r19
000558  93082c04  setlt.u r17, r24, r2
00055c  63417fff  loadli.w r2,  -68(r30)
000560  3be00800  bneq r17, zero, 24
000564  9bc80001  srli r17, r1, 16
000568  9b881800  andi r17, r17, 1
00056c  8b901011  add.s r1, r1, r17
000570  8b907011  add.s r1, r1, r23
000574  5b010000  j 8
000578  97904001  or r1, r1, r20
00057c  97083801  and r17, r16, r19
000580  93081c05  setlt.u r17, r24, r17
000584  3bf00800  bneq r17, zero, 28
000588  9b480801  srli r17, r16, 16
00058c  9b881800  andi r17, r17, 1
000590  0b181811  add.s r16, r16, r17
000594  ab084000  lui r17, 1024
000598  0b1a7811  add.s r20, r16, r23
00059c  db010000  j 12
0005a0  ab084000  lui r17, 1024
0005a4  171a1801  or r20, r16, r17
0005a8  17883701  and r16, r15, r19
0005ac  13080c05  setlt.u r16, r24, r16
0005b0  3b600800  bneq r16, zero, 24
0005b4  1bc80701  srli r16, r15, 16
0005b8  1b081800  andi r16, r16, 1
0005bc  8b970711  add.s r15, r15, r16
0005c0  0b9e7711  add.s r28, r15, r23
0005c4  5b010000  j 8
0005c8  179e1701  or r28, r15, r17
0005cc  97073701  and r15, r14, r19
0005d0  9307fc04  setlt.u r15, r24, r15
0005d4  3be00700  bneq r15, zero, 24
0005d8  9b470701  srli r15, r14, 16
0005dc  9b871700  andi r15, r15, 1
0005e0  0b17f710  add.s r14, r14, r15
0005e4  0b1d7711  add.s r26, r14, r23
0005e8  5b010000  j 8
0005ec  171d1701  or r26, r14, r17
0005f0  17873601  and r14, r13, r19
0005f4  1307ec04  setlt.u r14, r24, r14
0005f8  3b600700  bneq r14, zero, 24
0005fc  1bc70601  srli r14, r13, 16
000600  1b071700  andi r14, r14, 1
000604  8b96e610  add.s r13, r13, r14
000608  8b967611  add.s r13, r13, r23
00060c  5b010000  j 8
000610  97961601  or r13, r13, r17
000614  e74adffc  storeli.w r13, -340(r30)
000618  97063601  and r13, r12, r19
00061c  9306dc04  setlt.u r13, r24, r13
000620  3be00600  bneq r13, zero, 24
000624  9b460601  srli r13, r12, 16
000628  9b861600  andi r13, r13, 1
00062c  0b16d610  add.s r12, r12, r13
000630  0b167611  add.s r12, r12, r23
000634  5b010000  j 8
000638  17161601  or r12, r12, r17
00063c  670acffc  storeli.w r12, -352(r30)
000640  17863501  and r12, r11, r19
000644  1306cc04  setlt.u r12, r24, r12
000648  3b600600  bneq r12, zero, 24
00064c  1bc60501  srli r12, r11, 16
000650  1b061600  andi r12, r12, 1
000654  8b95c510  add.s r11, r11, r12
000658  8b957511  add.s r11, r11, r23
00065c  5b010000  j 8
000660  97951501  or r11, r11, r17
000664  e709bffc  storeli.w r11, -360(r30)
000668  97053501  and r11, r10, r19
00066c  9305bc04  setlt.u r11, r24, r11
000670  3be00500  bneq r11, zero, 24
000674  9b450501  srli r11, r10, 16
000678  9b851500  andi r11, r11, 1
00067c  0b15b510  add.s r10, r10, r11
000680  0b157511  add.s r10, r10, r23
000684  5b010000  j 8
000688  17151501  or r10, r10, r17
00068c  e748affc  storeli.w r10, -372(r30)
000690  17853401  and r10, r9, r19
000694  1305ac04  setlt.u r10, r24, r10
000698  3b600500  bneq r10, zero, 24
00069c  1bc50401  srli r10, r9, 16
0006a0  1b051500  andi r10, r10, 1
0006a4  8b94a410  add.s r9, r9, r10
0006a8  8b947411  add.s r9, r9, r23
0006ac  5b010000  j 8
0006b0  97941401  or r9, r9, r17
0006b4  67089ffc  storeli.w r9, -384(r30)
0006b8  97043401  and r9, r8, r19
0006bc  93049c04  setlt.u r9, r24, r9
0006c0  3be00400  bneq r9, zero, 24
0006c4  9b440401  srli r9, r8, 16
0006c8  9b841400  andi r9, r9, 1
0006cc  0b149410  add.s r8, r8, r9
0006d0  0b147411  add.s r8, r8, r23
0006d4  5b010000  j 8
0006d8  17141401  or r8, r8, r17
0006dc  e7078ffc  storeli.w r8, -392(r30)
0006e0  17843301  and r8, r7, r19
0006e4  13048c04  setlt.u r8, r24, r8
0006e8  3b600400  bneq r8, zero, 24
0006ec  1bc40301  srli r8, r7, 16
0006f0  1b041400  andi r8, r8, 1
0006f4  8b938310  add.s r7, r7, r8
0006f8  8b937311  add.s r7, r7, r23
0006fc  5b010000  j 8
000700  97931301  or r7, r7, r17
000704  e7087ffc  storeli.w r7, -376(r30)
000708  97033301  and r7, r6, r19
00070c  93037c04  setlt.u r7, r24, r7
000710  3be00300  bneq r7, zero, 24
000714  9b430301  srli r7, r6, 16
000718  9b831300  andi r7, r7, 1
00071c  0b137310  add.s r6, r6, r7
000720  0b137311  add.s r6, r6, r23
000724  5b010000  j 8
000728  17131301  or r6, r6, r17
00072c  67496ffc  storeli.w r6, -364(r30)
000730  17833201  and r6, r5, r19
000734  13036c04  setlt.u r6, r24, r6
000738  3b600300  bneq r6, zero, 24
00073c  1bc30201  srli r6, r5, 16
000740  1b031300  andi r6, r6, 1
000744  8b926210  add.s r5, r5, r6
000748  8b927211  add.s r5, r5, r23
00074c  5b010000  j 8
000750  97921201  or r5, r5, r17
000754  674a5ffc  storeli.w r5, -348(r30)
000758  97023201  and r5, r4, r19
00075c  93025c04  setlt.u r5, r24, r5
000760  3be00200  bneq r5, zero, 24
000764  9b420201  srli r5, r4, 16
000768  9b821200  andi r5, r5, 1
00076c  0b125210  add.s r4, r4, r5
000770  0b127211  add.s r4, r4, r23
000774  5b010000  j 8
000778  17121201  or r4, r4, r17
00077c  670b4ffc  storeli.w r4, -336(r30)
000780  17823101  and r4, r3, r19
000784  13024c04  setlt.u r4, r24, r4
000788  3b600200  bneq r4, zero, 24
00078c  1bc20101  srli r4, r3, 16
000790  1b021200  andi r4, r4, 1
000794  8b914110  add.s r3, r3, r4
000798  8b917111  add.s r3, r3, r23
00079c  5b010000  j 8
0007a0  97911101  or r3, r3, r17
0007a4  e74b3ffc  storeli.w r3, -324(r30)
0007a8  97013101  and r3, r2, r19
0007ac  93013c04  setlt.u r3, r24, r3
0007b0  3be00100  bneq r3, zero, 24
0007b4  9b410101  srli r3, r2, 16
0007b8  9b811100  andi r3, r3, 1
0007bc  0b113110  add.s r2, r2, r3
0007c0  0b117111  add.s r2, r2, r23
0007c4  5b010000  j 8
0007c8  17111101  or r2, r2, r17
0007cc  2b0cffff  lui r24, 1048560
0007d0  e30bcffd  loadli.w r23,  -288(r30)
0007d4  e70c2ffc  storeli.w r2, -312(r30)
0007d8  6b518fef  load.d r[3:4], -264(r30)
0007dc  1f010000  addli r2, zero, 0
0007e0  97808001  and r1, r1, r24
0007e4  733c2fee  store.d r[3:4], -264(r30)
0007e8  674d1ffc  storeli.w r1, -300(r30)
0007ec  8be06021  mul.f.rn r1, r1, r22
0007f0  8bea0060  abs.f r21, r1
0007f4  0be27a21  mul.f.rn r4, r21, r23
0007f8  8f230208  .word 0x0802238f
0007fc  1bb29000  slli r4, r1, 9
000800  13030200  seteq r6, r4, zero
000804  0f922320  .word 0x2023920f
000808  9bc37001  srli r7, r1, 23
00080c  93e00004  setlt.f r1, r1, zero
000810  9b83f30f  andi r7, r7, 255
000814  9bf3f30f  setlti r7, r7, 255
000818  17936300  or r6, r7, r6
00081c  978d6000  and r27, r1, r6
000820  57a40200  jal 5408
000824  8f300110  .word 0x1001308f
000828  6341cffd  loadli.w r2,  -284(r30)
00082c  e301dffd  loadli.w r3,  -280(r30)
000830  0be20a58  neg.f r4, r21
000834  0be13050  fmac.f.rn r2, r1, r3
000838  e341effd  loadli.w r3,  -268(r30)
00083c  8b611150  fmac.f.rn r3, r2, r1
000840  6301effd  loadli.w r2,  -272(r30)
000844  0be11150  fmac.f.rn r2, r3, r1
000848  e341dffd  loadli.w r3,  -276(r30)
00084c  8b611150  fmac.f.rn r3, r2, r1
000850  0be14a20  mul.f.rn r2, r21, r4
000854  8be10158  neg.f r3, r3
000858  0f010100  exp.f.rn r2, r2
00085c  8be03020  mul.f.rn r1, r1, r3
000860  ab01803f  lui r3, 260096
000864  8be12050  fmac.f.rn r3, r1, r2
000868  37a00d00  beq r27, zero, 8
00086c  8be10158  neg.f r3, r3
000870  97008a01  and r1, r20, r24
000874  e74c3ffc  storeli.w r3, -308(r30)
000878  670d1ffc  storeli.w r1, -304(r30)
00087c  8be06021  mul.f.rn r1, r1, r22
000880  0bea0060  abs.f r20, r1
000884  1bb29000  slli r4, r1, 9
000888  0b617a21  mul.f.rn r2, r20, r23
00088c  13030200  seteq r6, r4, zero
000890  8f230108  .word 0x0801238f
000894  6b518fef  load.d r[3:4], -264(r30)
000898  0f922320  .word 0x2023920f
00089c  9bc37001  srli r7, r1, 23
0008a0  93e00004  setlt.f r1, r1, zero
0008a4  9b83f30f  andi r7, r7, 255
0008a8  9bf3f30f  setlti r7, r7, 255
0008ac  17936300  or r6, r7, r6
0008b0  978a6000  and r21, r1, r6
0008b4  57a40200  jal 5408
0008b8  8f300110  .word 0x1001308f
0008bc  6341cffd  loadli.w r2,  -284(r30)
0008c0  e30ddffd  loadli.w r27,  -280(r30)
0008c4  e341effd  loadli.w r3,  -268(r30)
0008c8  0b620a58  neg.f r4, r20
0008cc  0be1b051  fmac.f.rn r2, r1, r27
0008d0  8b611150  fmac.f.rn r3, r2, r1
0008d4  6301effd  loadli.w r2,  -272(r30)
0008d8  0be11150  fmac.f.rn r2, r3, r1
0008dc  e341dffd  loadli.w r3,  -276(r30)
0008e0  8b611150  fmac.f.rn r3, r2, r1
0008e4  0b614a20  mul.f.rn r2, r20, r4
0008e8  8be10158  neg.f r3, r3
0008ec  0f010100  exp.f.rn r2, r2
0008f0  8be03020  mul.f.rn r1, r1, r3
0008f4  ab01803f  lui r3, 260096
0008f8  8be12050  fmac.f.rn r3, r1, r2
0008fc  37a00a00  beq r21, zero, 8
000900  8be10158  neg.f r3, r3
000904  97008e01  and r1, r28, r24
000908  670c3ffc  storeli.w r3, -320(r30)
00090c  674c1ffc  storeli.w r1, -316(r30)
000910  8be06021  mul.f.rn r1, r1, r22
000914  0bea0060  abs.f r20, r1
000918  1bb29000  slli r4, r1, 9
00091c  0b617a21  mul.f.rn r2, r20, r23
000920  13030200  seteq r6, r4, zero
000924  8f230108  .word 0x0801238f
000928  6b518fef  load.d r[3:4], -264(r30)
00092c  0f922320  .word 0x2023920f
000930  9bc37001  srli r7, r1, 23
000934  93e00004  setlt.f r1, r1, zero
000938  9b83f30f  andi r7, r7, 255
00093c  9bf3f30f  setlti r7, r7, 255
000940  17936300  or r6, r7, r6
000944  978a6000  and r21, r1, r6
000948  57a40200  jal 5408
00094c  8f300110  .word 0x1001308f
000950  634ecffd  loadli.w r28,  -284(r30)
000954  e341effd  loadli.w r3,  -268(r30)
000958  0b620a58  neg.f r4, r20
00095c  1f010e00  addli r2, r28, 0
000960  0be1b051  fmac.f.rn r2, r1, r27
000964  8b611150  fmac.f.rn r3, r2, r1
000968  6301effd  loadli.w r2,  -272(r30)
00096c  0be11150  fmac.f.rn r2, r3, r1
000970  e341dffd  loadli.w r3,  -276(r30)
000974  8b611150  fmac.f.rn r3, r2, r1
000978  0b614a20  mul.f.rn r2, r20, r4
00097c  8be10158  neg.f r3, r3
000980  0f010100  exp.f.rn r2, r2
000984  8be03020  mul.f.rn r1, r1, r3
000988  ab01803f  lui r3, 260096
00098c  8be12050  fmac.f.rn r3, r1, r2
000990  37a00a00  beq r21, zero, 8
000994  8be10158  neg.f r3, r3
000998  97008d01  and r1, r26, r24
00099c  674b3ffc  storeli.w r3, -332(r30)
0009a0  e70b1ffc  storeli.w r1, -328(r30)
0009a4  8be06021  mul.f.rn r1, r1, r22
0009a8  0bea0060  abs.f r20, r1
0009ac  1bb29000  slli r4, r1, 9
0009b0  0b617a21  mul.f.rn r2, r20, r23
0009b4  13030200  seteq r6, r4, zero
0009b8  8f230108  .word 0x0801238f
0009bc  6b518fef  load.d r[3:4], -264(r30)
0009c0  0f922320  .word 0x2023920f
0009c4  9bc37001  srli r7, r1, 23
0009c8  93e00004  setlt.f r1, r1, zero
0009cc  9b83f30f  andi r7, r7, 255
0009d0  9bf3f30f  setlti r7, r7, 255
0009d4  17936300  or r6, r7, r6
0009d8  978a6000  and r21, r1, r6
0009dc  57a40200  jal 5408
0009e0  8f300110  .word 0x1001308f
0009e4  1f010e00  addli r2, r28, 0
0009e8  e341effd  loadli.w r3,  -268(r30)
0009ec  0b620a58  neg.f r4, r20
0009f0  0be1b051  fmac.f.rn r2, r1, r27
0009f4  8b611150  fmac.f.rn r3, r2, r1
0009f8  6301effd  loadli.w r2,  -272(r30)
0009fc  0be11150  fmac.f.rn r2, r3, r1
000a00  e341dffd  loadli.w r3,  -276(r30)
000a04  8b611150  fmac.f.rn r3, r2, r1
000a08  0b614a20  mul.f.rn r2, r20, r4
000a0c  8be10158  neg.f r3, r3
000a10  0f010100  exp.f.rn r2, r2
000a14  8be03020  mul.f.rn r1, r1, r3
000a18  ab01803f  lui r3, 260096
000a1c  8be12050  fmac.f.rn r3, r1, r2
000a20  37a00a00  beq r21, zero, 8
000a24  8be10158  neg.f r3, r3
000a28  e3405ffd  loadli.w r1,  -340(r30)
000a2c  e70a3ffc  storeli.w r3, -344(r30)
000a30  97808001  and r1, r1, r24
000a34  e74a1ffc  storeli.w r1, -340(r30)
000a38  8be06021  mul.f.rn r1, r1, r22
000a3c  0bea0060  abs.f r20, r1
000a40  1bb29000  slli r4, r1, 9
000a44  0b617a21  mul.f.rn r2, r20, r23
000a48  13030200  seteq r6, r4, zero
000a4c  8f230108  .word 0x0801238f
000a50  6b518fef  load.d r[3:4], -264(r30)
000a54  0f922320  .word 0x2023920f
000a58  9bc37001  srli r7, r1, 23
000a5c  93e00004  setlt.f r1, r1, zero
000a60  9b83f30f  andi r7, r7, 255
000a64  9bf3f30f  setlti r7, r7, 255
000a68  17936300  or r6, r7, r6
000a6c  978a6000  and r21, r1, r6
000a70  57a40200  jal 5408
000a74  8f300110  .word 0x1001308f
000a78  1f010e00  addli r2, r28, 0
000a7c  e341effd  loadli.w r3,  -268(r30)
000a80  0b620a58  neg.f r4, r20
000a84  0be1b051  fmac.f.rn r2, r1, r27
000a88  8b611150  fmac.f.rn r3, r2, r1
000a8c  6301effd  loadli.w r2,  -272(r30)
000a90  0be11150  fmac.f.rn r2, r3, r1
000a94  e341dffd  loadli.w r3,  -276(r30)
000a98  8b611150  fmac.f.rn r3, r2, r1
000a9c  0b614a20  mul.f.rn r2, r20, r4
000aa0  8be10158  neg.f r3, r3
000aa4  0f010100  exp.f.rn r2, r2
000aa8  8be03020  mul.f.rn r1, r1, r3
000aac  ab01803f  lui r3, 260096
000ab0  8be12050  fmac.f.rn r3, r1, r2
000ab4  37a00a00  beq r21, zero, 8
000ab8  8be10158  neg.f r3, r3
000abc  e3004ffd  loadli.w r1,  -352(r30)
000ac0  e7493ffc  storeli.w r3, -356(r30)
000ac4  97808001  and r1, r1, r24
000ac8  670a1ffc  storeli.w r1, -352(r30)
000acc  8be06021  mul.f.rn r1, r1, r22
000ad0  0bea0060  abs.f r20, r1
000ad4  1bb29000  slli r4, r1, 9
000ad8  0b617a21  mul.f.rn r2, r20, r23
000adc  13030200  seteq r6, r4, zero
000ae0  8f230108  .word 0x0801238f
000ae4  6b518fef  load.d r[3:4], -264(r30)
000ae8  0f922320  .word 0x2023920f
000aec  9bc37001  srli r7, r1, 23
000af0  93e00004  setlt.f r1, r1, zero
000af4  9b83f30f  andi r7, r7, 255
000af8  9bf3f30f  setlti r7, r7, 255
000afc  17936300  or r6, r7, r6
000b00  978a6000  and r21, r1, r6
000b04  57a40200  jal 5408
000b08  8f300110  .word 0x1001308f
000b0c  1f010e00  addli r2, r28, 0
000b10  e341effd  loadli.w r3,  -268(r30)
000b14  0b620a58  neg.f r4, r20
000b18  0be1b051  fmac.f.rn r2, r1, r27
000b1c  8b611150  fmac.f.rn r3, r2, r1
000b20  6301effd  loadli.w r2,  -272(r30)
000b24  0be11150  fmac.f.rn r2, r3, r1
000b28  e341dffd  loadli.w r3,  -276(r30)
000b2c  8b611150  fmac.f.rn r3, r2, r1
000b30  0b614a20  mul.f.rn r2, r20, r4
000b34  8be10158  neg.f r3, r3
000b38  0f010100  exp.f.rn r2, r2
000b3c  8be03020  mul.f.rn r1, r1, r3
000b40  ab01803f  lui r3, 260096
000b44  8be12050  fmac.f.rn r3, r1, r2
000b48  37a00a00  beq r21, zero, 8
000b4c  8be10158  neg.f r3, r3
000b50  e3003ffd  loadli.w r1,  -360(r30)
000b54  67093ffc  storeli.w r3, -368(r30)
000b58  97808001  and r1, r1, r24
000b5c  e7091ffc  storeli.w r1, -360(r30)
000b60  8be06021  mul.f.rn r1, r1, r22
000b64  0bea0060  abs.f r20, r1
000b68  1bb29000  slli r4, r1, 9
000b6c  0b617a21  mul.f.rn r2, r20, r23
000b70  13030200  seteq r6, r4, zero
000b74  8f230108  .word 0x0801238f
000b78  6b518fef  load.d r[3:4], -264(r30)
000b7c  0f922320  .word 0x2023920f
000b80  9bc37001  srli r7, r1, 23
000b84  93e00004  setlt.f r1, r1, zero
000b88  9b83f30f  andi r7, r7, 255
000b8c  9bf3f30f  setlti r7, r7, 255
000b90  17936300  or r6, r7, r6
000b94  978a6000  and r21, r1, r6
000b98  57a40200  jal 5408
000b9c  8f300110  .word 0x1001308f
000ba0  1f010e00  addli r2, r28, 0
000ba4  e341effd  loadli.w r3,  -268(r30)
000ba8  0b620a58  neg.f r4, r20
000bac  0be1b051  fmac.f.rn r2, r1, r27
000bb0  8b611150  fmac.f.rn r3, r2, r1
000bb4  6301effd  loadli.w r2,  -272(r30)
000bb8  0be11150  fmac.f.rn r2, r3, r1
000bbc  e341dffd  loadli.w r3,  -276(r30)
000bc0  8b611150  fmac.f.rn r3, r2, r1
000bc4  0b614a20  mul.f.rn r2, r20, r4
000bc8  8be10158  neg.f r3, r3
000bcc  0f010100  exp.f.rn r2, r2
000bd0  8be03020  mul.f.rn r1, r1, r3
000bd4  ab01803f  lui r3, 260096
000bd8  8be12050  fmac.f.rn r3, r1, r2
000bdc  37a00a00  beq r21, zero, 8
000be0  8be10158  neg.f r3, r3
000be4  e3401ffd  loadli.w r1,  -372(r30)
000be8  67483ffc  storeli.w r3, -380(r30)
000bec  97808001  and r1, r1, r24
000bf0  e7481ffc  storeli.w r1, -372(r30)
000bf4  8be06021  mul.f.rn r1, r1, r22
000bf8  0bea0060  abs.f r20, r1
000bfc  1bb29000  slli r4, r1, 9
000c00  0b617a21  mul.f.rn r2, r20, r23
000c04  13030200  seteq r6, r4, zero
000c08  8f230108  .word 0x0801238f
000c0c  6b518fef  load.d r[3:4], -264(r30)
000c10  0f922320  .word 0x2023920f
000c14  9bc37001  srli r7, r1, 23
000c18  93e00004  setlt.f r1, r1, zero
000c1c  9b83f30f  andi r7, r7, 255
000c20  9bf3f30f  setlti r7, r7, 255
000c24  17936300  or r6, r7, r6
000c28  978a6000  and r21, r1, r6
000c2c  57a40200  jal 5408
000c30  8f300110  .word 0x1001308f
000c34  1f010e00  addli r2, r28, 0
000c38  e341effd  loadli.w r3,  -268(r30)
000c3c  0b620a58  neg.f r4, r20
000c40  0be1b051  fmac.f.rn r2, r1, r27
000c44  8b611150  fmac.f.rn r3, r2, r1
000c48  6301effd  loadli.w r2,  -272(r30)
000c4c  0be11150  fmac.f.rn r2, r3, r1
000c50  e341dffd  loadli.w r3,  -276(r30)
000c54  8b611150  fmac.f.rn r3, r2, r1
000c58  0b614a20  mul.f.rn r2, r20, r4
000c5c  8be10158  neg.f r3, r3
000c60  0f010100  exp.f.rn r2, r2
000c64  8be03020  mul.f.rn r1, r1, r3
000c68  ab01803f  lui r3, 260096
000c6c  8be12050  fmac.f.rn r3, r1, r2
000c70  37a00a00  beq r21, zero, 8
000c74  8be10158  neg.f r3, r3
000c78  e3000ffd  loadli.w r1,  -384(r30)
000c7c  e7473ffc  storeli.w r3, -388(r30)
000c80  97808001  and r1, r1, r24
000c84  67081ffc  storeli.w r1, -384(r30)
000c88  8be06021  mul.f.rn r1, r1, r22
000c8c  0bea0060  abs.f r20, r1
000c90  1bb29000  slli r4, r1, 9
000c94  0b617a21  mul.f.rn r2, r20, r23
000c98  13030200  seteq r6, r4, zero
000c9c  8f230108  .word 0x0801238f
000ca0  6b518fef  load.d r[3:4], -264(r30)
000ca4  0f922320  .word 0x2023920f
000ca8  9bc37001  srli r7, r1, 23
000cac  93e00004  setlt.f r1, r1, zero
000cb0  9b83f30f  andi r7, r7, 255
000cb4  9bf3f30f  setlti r7, r7, 255
000cb8  17936300  or r6, r7, r6
000cbc  978a6000  and r21, r1, r6
000cc0  57a40200  jal 5408
000cc4  8f300110  .word 0x1001308f
000cc8  1f010e00  addli r2, r28, 0
000ccc  e341effd  loadli.w r3,  -268(r30)
000cd0  0b620a58  neg.f r4, r20
000cd4  0be1b051  fmac.f.rn r2, r1, r27
000cd8  8b611150  fmac.f.rn r3, r2, r1
000cdc  6301effd  loadli.w r2,  -272(r30)
000ce0  0be11150  fmac.f.rn r2, r3, r1
000ce4  e341dffd  loadli.w r3,  -276(r30)
000ce8  8b611150  fmac.f.rn r3, r2, r1
000cec  0b614a20  mul.f.rn r2, r20, r4
000cf0  8be10158  neg.f r3, r3
000cf4  0f010100  exp.f.rn r2, r2
000cf8  8be03020  mul.f.rn r1, r1, r3
000cfc  ab01803f  lui r3, 260096
000d00  8be12050  fmac.f.rn r3, r1, r2
000d04  37a00a00  beq r21, zero, 8
000d08  8be10158  neg.f r3, r3
000d0c  e300fffc  loadli.w r1,  -392(r30)
000d10  67473ffc  storeli.w r3, -396(r30)
000d14  97808001  and r1, r1, r24
000d18  e7071ffc  storeli.w r1, -392(r30)
000d1c  8be06021  mul.f.rn r1, r1, r22
000d20  0bea0060  abs.f r20, r1
000d24  1bb29000  slli r4, r1, 9
000d28  0b617a21  mul.f.rn r2, r20, r23
000d2c  13030200  seteq r6, r4, zero
000d30  8f230108  .word 0x0801238f
000d34  6b518fef  load.d r[3:4], -264(r30)
000d38  0f922320  .word 0x2023920f
000d3c  9bc37001  srli r7, r1, 23
000d40  93e00004  setlt.f r1, r1, zero
000d44  9b83f30f  andi r7, r7, 255
000d48  9bf3f30f  setlti r7, r7, 255
000d4c  17936300  or r6, r7, r6
000d50  978a6000  and r21, r1, r6
000d54  57a40200  jal 5408
000d58  8f300110  .word 0x1001308f
000d5c  1f010e00  addli r2, r28, 0
000d60  e341effd  loadli.w r3,  -268(r30)
000d64  0b620a58  neg.f r4, r20
000d68  0be1b051  fmac.f.rn r2, r1, r27
000d6c  8b611150  fmac.f.rn r3, r2, r1
000d70  6301effd  loadli.w r2,  -272(r30)
000d74  0be11150  fmac.f.rn r2, r3, r1
000d78  e341dffd  loadli.w r3,  -276(r30)
000d7c  8b611150  fmac.f.rn r3, r2, r1
000d80  0b614a20  mul.f.rn r2, r20, r4
000d84  8be10158  neg.f r3, r3
000d88  0f010100  exp.f.rn r2, r2
000d8c  8be03020  mul.f.rn r1, r1, r3
000d90  ab01803f  lui r3, 260096
000d94  8be12050  fmac.f.rn r3, r1, r2
000d98  37a00a00  beq r21, zero, 8
000d9c  8be10158  neg.f r3, r3
000da0  e3001ffd  loadli.w r1,  -376(r30)
000da4  67073ffc  storeli.w r3, -400(r30)
000da8  97808001  and r1, r1, r24
000dac  e7081ffc  storeli.w r1, -376(r30)
000db0  8be06021  mul.f.rn r1, r1, r22
000db4  0bea0060  abs.f r20, r1
000db8  1bb29000  slli r4, r1, 9
000dbc  0b617a21  mul.f.rn r2, r20, r23
000dc0  13030200  seteq r6, r4, zero
000dc4  8f230108  .word 0x0801238f
000dc8  6b518fef  load.d r[3:4], -264(r30)
000dcc  0f922320  .word 0x2023920f
000dd0  9bc37001  srli r7, r1, 23
000dd4  93e00004  setlt.f r1, r1, zero
000dd8  9b83f30f  andi r7, r7, 255
000ddc  9bf3f30f  setlti r7, r7, 255
000de0  17936300  or r6, r7, r6
000de4  978a6000  and r21, r1, r6
000de8  57a40200  jal 5408
000dec  8f300110  .word 0x1001308f
000df0  1f010e00  addli r2, r28, 0
000df4  e341effd  loadli.w r3,  -268(r30)
000df8  0b620a58  neg.f r4, r20
000dfc  0be1b051  fmac.f.rn r2, r1, r27
000e00  8b611150  fmac.f.rn r3, r2, r1
000e04  6301effd  loadli.w r2,  -272(r30)
000e08  0be11150  fmac.f.rn r2, r3, r1
000e0c  e341dffd  loadli.w r3,  -276(r30)
000e10  8b611150  fmac.f.rn r3, r2, r1
000e14  0b614a20  mul.f.rn r2, r20, r4
000e18  2b0a803f  lui r20, 260096
000e1c  8be10158  neg.f r3, r3
000e20  0f010100  exp.f.rn r2, r2
000e24  8be03020  mul.f.rn r1, r1, r3
000e28  0bea2050  fmac.f.rn r20, r1, r2
000e2c  37a00a00  beq r21, zero, 8
000e30  0b6a0a58  neg.f r20, r20
000e34  e3402ffd  loadli.w r1,  -364(r30)
000e38  97808001  and r1, r1, r24
000e3c  67491ffc  storeli.w r1, -364(r30)
000e40  8be06021  mul.f.rn r1, r1, r22
000e44  8bea0060  abs.f r21, r1
000e48  1bb29000  slli r4, r1, 9
000e4c  0be17a21  mul.f.rn r2, r21, r23
000e50  13030200  seteq r6, r4, zero
000e54  8f230108  .word 0x0801238f
000e58  6b518fef  load.d r[3:4], -264(r30)
000e5c  0f922320  .word 0x2023920f
000e60  9bc37001  srli r7, r1, 23
000e64  93e00004  setlt.f r1, r1, zero
000e68  9b83f30f  andi r7, r7, 255
000e6c  9bf3f30f  setlti r7, r7, 255
000e70  17936300  or r6, r7, r6
000e74  178d6000  and r26, r1, r6
000e78  57a40200  jal 5408
000e7c  8f300110  .word 0x1001308f
000e80  1f010e00  addli r2, r28, 0
000e84  e341effd  loadli.w r3,  -268(r30)
000e88  0be20a58  neg.f r4, r21
000e8c  0be1b051  fmac.f.rn r2, r1, r27
000e90  ab0d803f  lui r27, 260096
000e94  8b611150  fmac.f.rn r3, r2, r1
000e98  6301effd  loadli.w r2,  -272(r30)
000e9c  0be11150  fmac.f.rn r2, r3, r1
000ea0  e341dffd  loadli.w r3,  -276(r30)
000ea4  8b611150  fmac.f.rn r3, r2, r1
000ea8  0be14a20  mul.f.rn r2, r21, r4
000eac  8be10158  neg.f r3, r3
000eb0  0f010100  exp.f.rn r2, r2
000eb4  8be03020  mul.f.rn r1, r1, r3
000eb8  8bed2050  fmac.f.rn r27, r1, r2
000ebc  37200d00  beq r26, zero, 8
000ec0  8bed0d58  neg.f r27, r27
000ec4  e3404ffd  loadli.w r1,  -348(r30)
000ec8  97808001  and r1, r1, r24
000ecc  674a1ffc  storeli.w r1, -348(r30)
000ed0  8be06021  mul.f.rn r1, r1, r22
000ed4  8bea0060  abs.f r21, r1
000ed8  1bb29000  slli r4, r1, 9
000edc  0be17a21  mul.f.rn r2, r21, r23
000ee0  13030200  seteq r6, r4, zero
000ee4  8f230108  .word 0x0801238f
000ee8  6b518fef  load.d r[3:4], -264(r30)
000eec  0f922320  .word 0x2023920f
000ef0  9bc37001  srli r7, r1, 23
000ef4  93e00004  setlt.f r1, r1, zero
000ef8  9b83f30f  andi r7, r7, 255
000efc  9bf3f30f  setlti r7, r7, 255
000f00  17936300  or r6, r7, r6
000f04  178d6000  and r26, r1, r6
000f08  57a40200  jal 5408
000f0c  8f300110  .word 0x1001308f
000f10  e301dffd  loadli.w r3,  -280(r30)
000f14  1f010e00  addli r2, r28, 0
000f18  0be20a58  neg.f r4, r21
000f1c  0be13050  fmac.f.rn r2, r1, r3
000f20  e341effd  loadli.w r3,  -268(r30)
000f24  8b611150  fmac.f.rn r3, r2, r1
000f28  6301effd  loadli.w r2,  -272(r30)
000f2c  0be11150  fmac.f.rn r2, r3, r1
000f30  e341dffd  loadli.w r3,  -276(r30)
000f34  8b611150  fmac.f.rn r3, r2, r1
000f38  0be14a20  mul.f.rn r2, r21, r4
000f3c  ab0a803f  lui r21, 260096
000f40  8be10158  neg.f r3, r3
000f44  0f010100  exp.f.rn r2, r2
000f48  8be03020  mul.f.rn r1, r1, r3
000f4c  8bea2050  fmac.f.rn r21, r1, r2
000f50  37200d00  beq r26, zero, 8
000f54  8bea0a58  neg.f r21, r21
000f58  e3006ffd  loadli.w r1,  -336(r30)
000f5c  97808001  and r1, r1, r24
000f60  670b1ffc  storeli.w r1, -336(r30)
000f64  8be06021  mul.f.rn r1, r1, r22
000f68  0bed0060  abs.f r26, r1
000f6c  1bb29000  slli r4, r1, 9
000f70  0b617d21  mul.f.rn r2, r26, r23
000f74  13030200  seteq r6, r4, zero
000f78  8f230108  .word 0x0801238f
000f7c  6b518fef  load.d r[3:4], -264(r30)
000f80  0f922320  .word 0x2023920f
000f84  9bc37001  srli r7, r1, 23
000f88  93e00004  setlt.f r1, r1, zero
000f8c  9b83f30f  andi r7, r7, 255
000f90  9bf3f30f  setlti r7, r7, 255
000f94  17936300  or r6, r7, r6
000f98  978b6000  and r23, r1, r6
000f9c  57a40200  jal 5408
000fa0  8f300110  .word 0x1001308f
000fa4  e301dffd  loadli.w r3,  -280(r30)
000fa8  1f010e00  addli r2, r28, 0
000fac  0b620d58  neg.f r4, r26
000fb0  2b0e803f  lui r28, 260096
000fb4  0be13050  fmac.f.rn r2, r1, r3
000fb8  e341effd  loadli.w r3,  -268(r30)
000fbc  8b611150  fmac.f.rn r3, r2, r1
000fc0  6301effd  loadli.w r2,  -272(r30)
000fc4  0be11150  fmac.f.rn r2, r3, r1
000fc8  e341dffd  loadli.w r3,  -276(r30)
000fcc  8b611150  fmac.f.rn r3, r2, r1
000fd0  0b614d20  mul.f.rn r2, r26, r4
000fd4  8be10158  neg.f r3, r3
000fd8  0f010100  exp.f.rn r2, r2
000fdc  8be03020  mul.f.rn r1, r1, r3
000fe0  0bee2050  fmac.f.rn r28, r1, r2
000fe4  37a00b00  beq r23, zero, 8
000fe8  0b6e0e58  neg.f r28, r28
000fec  e3407ffd  loadli.w r1,  -324(r30)
000ff0  2b0bffff  lui r22, 1048560
000ff4  17818001  and r2, r1, r24
000ff8  e340bffd  loadli.w r1,  -292(r30)
000ffc  e74b2ffc  storeli.w r2, -324(r30)
001000  8b601120  mul.f.rn r1, r2, r1
001004  6301cffd  loadli.w r2,  -288(r30)
001008  8beb0060  abs.f r23, r1
00100c  1bb29000  slli r4, r1, 9
001010  0be12b20  mul.f.rn r2, r23, r2
001014  13030200  seteq r6, r4, zero
001018  8f230108  .word 0x0801238f
00101c  6b518fef  load.d r[3:4], -264(r30)
001020  0f922320  .word 0x2023920f
001024  9bc37001  srli r7, r1, 23
001028  93e00004  setlt.f r1, r1, zero
00102c  9b83f30f  andi r7, r7, 255
001030  9bf3f30f  setlti r7, r7, 255
001034  17936300  or r6, r7, r6
001038  178c6000  and r24, r1, r6
00103c  57a40200  jal 5408
001040  8f300110  .word 0x1001308f
001044  6341cffd  loadli.w r2,  -284(r30)
001048  e301dffd  loadli.w r3,  -280(r30)
00104c  0be20b58  neg.f r4, r23
001050  2b0d803f  lui r26, 260096
001054  0be13050  fmac.f.rn r2, r1, r3
001058  e341effd  loadli.w r3,  -268(r30)
00105c  8b611150  fmac.f.rn r3, r2, r1
001060  6301effd  loadli.w r2,  -272(r30)
001064  0be11150  fmac.f.rn r2, r3, r1
001068  e341dffd  loadli.w r3,  -276(r30)
00106c  8b611150  fmac.f.rn r3, r2, r1
001070  0be14b20  mul.f.rn r2, r23, r4
001074  8be10158  neg.f r3, r3
001078  0f010100  exp.f.rn r2, r2
00107c  8be03020  mul.f.rn r1, r1, r3
001080  0bed2050  fmac.f.rn r26, r1, r2
001084  37200c00  beq r24, zero, 8
001088  0b6d0d58  neg.f r26, r26
00108c  e3009ffd  loadli.w r1,  -312(r30)
001090  6301cffd  loadli.w r2,  -288(r30)
001094  97806001  and r1, r1, r22
001098  634bbffd  loadli.w r22,  -292(r30)
00109c  e70c1ffc  storeli.w r1, -312(r30)
0010a0  8be06021  mul.f.rn r1, r1, r22
0010a4  8beb0060  abs.f r23, r1
0010a8  1bb29000  slli r4, r1, 9
0010ac  0be12b20  mul.f.rn r2, r23, r2
0010b0  13030200  seteq r6, r4, zero
0010b4  8f230108  .word 0x0801238f
0010b8  6b518fef  load.d r[3:4], -264(r30)
0010bc  0f922320  .word 0x2023920f
0010c0  9bc37001  srli r7, r1, 23
0010c4  93e00004  setlt.f r1, r1, zero
0010c8  9b83f30f  andi r7, r7, 255
0010cc  9bf3f30f  setlti r7, r7, 255
0010d0  17936300  or r6, r7, r6
0010d4  178c6000  and r24, r1, r6
0010d8  57a40200  jal 5408
0010dc  8f300110  .word 0x1001308f
0010e0  6341cffd  loadli.w r2,  -284(r30)
0010e4  e301dffd  loadli.w r3,  -280(r30)
0010e8  0be20b58  neg.f r4, r23
0010ec  0be13050  fmac.f.rn r2, r1, r3
0010f0  e341effd  loadli.w r3,  -268(r30)
0010f4  8b611150  fmac.f.rn r3, r2, r1
0010f8  6301effd  loadli.w r2,  -272(r30)
0010fc  0be11150  fmac.f.rn r2, r3, r1
001100  e341dffd  loadli.w r3,  -276(r30)
001104  8b611150  fmac.f.rn r3, r2, r1
001108  0be14b20  mul.f.rn r2, r23, r4
00110c  8be10158  neg.f r3, r3
001110  0f010100  exp.f.rn r2, r2
001114  8be13020  mul.f.rn r3, r1, r3
001118  ab00803f  lui r1, 260096
00111c  8be02150  fmac.f.rn r1, r3, r2
001120  37200c00  beq r24, zero, 8
001124  8be00058  neg.f r1, r1
001128  e3419ffd  loadli.w r3,  -308(r30)
00112c  6341affd  loadli.w r2,  -300(r30)
001130  2b03003f  lui r6, 258048
001134  ab03803f  lui r7, 260096
001138  2b0c807f  lui r24, 522240
00113c  e34bfffb  loadli.w r23,  -516(r30)
001140  1f098ffe  addli r18, r30, -192
001144  ab024000  lui r5, 1024
001148  0b616120  mul.f.rn r2, r2, r6
00114c  8be17110  add.f.rn r3, r3, r7
001150  0b613120  mul.f.rn r2, r2, r3
001154  97013101  and r3, r2, r19
001158  93013c04  setlt.u r3, r24, r3
00115c  3be00100  bneq r3, zero, 24
001160  9b410101  srli r3, r2, 16
001164  9b811100  andi r3, r3, 1
001168  0b113110  add.s r2, r2, r3
00116c  0b117111  add.s r2, r2, r23
001170  5b010000  j 8
001174  17115100  or r2, r2, r5
001178  e301affd  loadli.w r3,  -304(r30)
00117c  63028ffd  loadli.w r4,  -320(r30)
001180  1b410101  srli r2, r2, 16
001184  73902c00  store.h r2, 0(r25)
001188  8be16120  mul.f.rn r3, r3, r6
00118c  0b627210  add.f.rn r4, r4, r7
001190  8be14120  mul.f.rn r3, r3, r4
001194  17823101  and r4, r3, r19
001198  13024c04  setlt.u r4, r24, r4
00119c  3b600200  bneq r4, zero, 24
0011a0  1bc10101  srli r2, r3, 16
0011a4  1b011100  andi r2, r2, 1
0011a8  0b912110  add.s r2, r3, r2
0011ac  0b117111  add.s r2, r2, r23
0011b0  5b010000  j 8
0011b4  17915100  or r2, r3, r5
0011b8  e3418ffd  loadli.w r3,  -316(r30)
0011bc  63426ffd  loadli.w r4,  -332(r30)
0011c0  1b410101  srli r2, r2, 16
0011c4  73912c00  store.h r2, 2(r25)
0011c8  8be16120  mul.f.rn r3, r3, r6
0011cc  0b627210  add.f.rn r4, r4, r7
0011d0  8be14120  mul.f.rn r3, r3, r4
0011d4  17823101  and r4, r3, r19
0011d8  13024c04  setlt.u r4, r24, r4
0011dc  3b600200  bneq r4, zero, 24
0011e0  1bc10101  srli r2, r3, 16
0011e4  1b011100  andi r2, r2, 1
0011e8  0b912110  add.s r2, r3, r2
0011ec  0b117111  add.s r2, r2, r23
0011f0  5b010000  j 8
0011f4  17915100  or r2, r3, r5
0011f8  e3017ffd  loadli.w r3,  -328(r30)
0011fc  63025ffd  loadli.w r4,  -344(r30)
001200  1b410101  srli r2, r2, 16
001204  73922c00  store.h r2, 4(r25)
001208  8be16120  mul.f.rn r3, r3, r6
00120c  0b627210  add.f.rn r4, r4, r7
001210  8be14120  mul.f.rn r3, r3, r4
001214  17823101  and r4, r3, r19
001218  13024c04  setlt.u r4, r24, r4
00121c  3b600200  bneq r4, zero, 24
001220  1bc10101  srli r2, r3, 16
001224  1b011100  andi r2, r2, 1
001228  0b912110  add.s r2, r3, r2
00122c  0b117111  add.s r2, r2, r23
001230  5b010000  j 8
001234  17915100  or r2, r3, r5
001238  e3415ffd  loadli.w r3,  -340(r30)
00123c  63423ffd  loadli.w r4,  -356(r30)
001240  1b410101  srli r2, r2, 16
001244  73932c00  store.h r2, 6(r25)
001248  8be16120  mul.f.rn r3, r3, r6
00124c  0b627210  add.f.rn r4, r4, r7
001250  8be14120  mul.f.rn r3, r3, r4
001254  17823101  and r4, r3, r19
001258  13024c04  setlt.u r4, r24, r4
00125c  3b600200  bneq r4, zero, 24
001260  1bc10101  srli r2, r3, 16
001264  1b011100  andi r2, r2, 1
001268  0b912110  add.s r2, r3, r2
00126c  0b117111  add.s r2, r2, r23
001270  5b010000  j 8
001274  17915100  or r2, r3, r5
001278  e3014ffd  loadli.w r3,  -352(r30)
00127c  63022ffd  loadli.w r4,  -368(r30)
001280  1b410101  srli r2, r2, 16
001284  73942c00  store.h r2, 8(r25)
001288  8be16120  mul.f.rn r3, r3, r6
00128c  0b627210  add.f.rn r4, r4, r7
001290  8be14120  mul.f.rn r3, r3, r4
001294  17823101  and r4, r3, r19
001298  13024c04  setlt.u r4, r24, r4
00129c  3b600200  bneq r4, zero, 24
0012a0  1bc10101  srli r2, r3, 16
0012a4  1b011100  andi r2, r2, 1
0012a8  0b912110  add.s r2, r3, r2
0012ac  0b117111  add.s r2, r2, r23
0012b0  5b010000  j 8
0012b4  17915100  or r2, r3, r5
0012b8  e3013ffd  loadli.w r3,  -360(r30)
0012bc  63420ffd  loadli.w r4,  -380(r30)
0012c0  1b410101  srli r2, r2, 16
0012c4  73952c00  store.h r2, 10(r25)
0012c8  8be16120  mul.f.rn r3, r3, r6
0012cc  0b627210  add.f.rn r4, r4, r7
0012d0  8be14120  mul.f.rn r3, r3, r4
0012d4  17823101  and r4, r3, r19
0012d8  13024c04  setlt.u r4, r24, r4
0012dc  3b600200  bneq r4, zero, 24
0012e0  1bc10101  srli r2, r3, 16
0012e4  1b011100  andi r2, r2, 1
0012e8  0b912110  add.s r2, r3, r2
0012ec  0b117111  add.s r2, r2, r23
0012f0  5b010000  j 8
0012f4  17915100  or r2, r3, r5
0012f8  e3411ffd  loadli.w r3,  -372(r30)
0012fc  6342fffc  loadli.w r4,  -388(r30)
001300  1b410101  srli r2, r2, 16
001304  73962c00  store.h r2, 12(r25)
001308  8be16120  mul.f.rn r3, r3, r6
00130c  0b627210  add.f.rn r4, r4, r7
001310  8be14120  mul.f.rn r3, r3, r4
001314  17823101  and r4, r3, r19
001318  13024c04  setlt.u r4, r24, r4
00131c  3b600200  bneq r4, zero, 24
001320  1bc10101  srli r2, r3, 16
001324  1b011100  andi r2, r2, 1
001328  0b912110  add.s r2, r3, r2
00132c  0b117111  add.s r2, r2, r23
001330  5b010000  j 8
001334  17915100  or r2, r3, r5
001338  e3010ffd  loadli.w r3,  -384(r30)
00133c  6342effc  loadli.w r4,  -396(r30)
001340  1b410101  srli r2, r2, 16
001344  73972c00  store.h r2, 14(r25)
001348  8be16120  mul.f.rn r3, r3, r6
00134c  0b627210  add.f.rn r4, r4, r7
001350  8be14120  mul.f.rn r3, r3, r4
001354  17823101  and r4, r3, r19
001358  13024c04  setlt.u r4, r24, r4
00135c  3b600200  bneq r4, zero, 24
001360  1bc10101  srli r2, r3, 16
001364  1b011100  andi r2, r2, 1
001368  0b912110  add.s r2, r3, r2
00136c  0b117111  add.s r2, r2, r23
001370  5b010000  j 8
001374  17915100  or r2, r3, r5
001378  e301fffc  loadli.w r3,  -392(r30)
00137c  6302effc  loadli.w r4,  -400(r30)
001380  1b410101  srli r2, r2, 16
001384  73982c00  store.h r2, 16(r25)
001388  8be16120  mul.f.rn r3, r3, r6
00138c  0b627210  add.f.rn r4, r4, r7
001390  8be14120  mul.f.rn r3, r3, r4
001394  17823101  and r4, r3, r19
001398  13024c04  setlt.u r4, r24, r4
00139c  3b600200  bneq r4, zero, 24
0013a0  1bc10101  srli r2, r3, 16
0013a4  1b011100  andi r2, r2, 1
0013a8  0b912110  add.s r2, r3, r2
0013ac  0b117111  add.s r2, r2, r23
0013b0  5b010000  j 8
0013b4  17915100  or r2, r3, r5
0013b8  e3011ffd  loadli.w r3,  -376(r30)
0013bc  0b627a10  add.f.rn r4, r20, r7
0013c0  1b410101  srli r2, r2, 16
0013c4  73992c00  store.h r2, 18(r25)
0013c8  8be16120  mul.f.rn r3, r3, r6
0013cc  8be14120  mul.f.rn r3, r3, r4
0013d0  17823101  and r4, r3, r19
0013d4  13024c04  setlt.u r4, r24, r4
0013d8  3b600200  bneq r4, zero, 24
0013dc  1bc10101  srli r2, r3, 16
0013e0  1b011100  andi r2, r2, 1
0013e4  0b912110  add.s r2, r3, r2
0013e8  0b117111  add.s r2, r2, r23
0013ec  5b010000  j 8
0013f0  17915100  or r2, r3, r5
0013f4  e3412ffd  loadli.w r3,  -364(r30)
0013f8  0be27d10  add.f.rn r4, r27, r7
0013fc  1b410101  srli r2, r2, 16
001400  739a2c00  store.h r2, 20(r25)
001404  8be16120  mul.f.rn r3, r3, r6
001408  8be14120  mul.f.rn r3, r3, r4
00140c  17823101  and r4, r3, r19
001410  13024c04  setlt.u r4, r24, r4
001414  3b600200  bneq r4, zero, 24
001418  1bc10101  srli r2, r3, 16
00141c  1b011100  andi r2, r2, 1
001420  0b912110  add.s r2, r3, r2
001424  0b117111  add.s r2, r2, r23
001428  5b010000  j 8
00142c  17915100  or r2, r3, r5
001430  e3414ffd  loadli.w r3,  -348(r30)
001434  0be27a10  add.f.rn r4, r21, r7
001438  1b410101  srli r2, r2, 16
00143c  739b2c00  store.h r2, 22(r25)
001440  8be16120  mul.f.rn r3, r3, r6
001444  8be14120  mul.f.rn r3, r3, r4
001448  17823101  and r4, r3, r19
00144c  13024c04  setlt.u r4, r24, r4
001450  3b600200  bneq r4, zero, 24
001454  1bc10101  srli r2, r3, 16
001458  1b011100  andi r2, r2, 1
00145c  0b912110  add.s r2, r3, r2
001460  0b117111  add.s r2, r2, r23
001464  5b010000  j 8
001468  17915100  or r2, r3, r5
00146c  e3016ffd  loadli.w r3,  -336(r30)
001470  0b627e10  add.f.rn r4, r28, r7
001474  1b410101  srli r2, r2, 16
001478  739c2c00  store.h r2, 24(r25)
00147c  8be16120  mul.f.rn r3, r3, r6
001480  8be14120  mul.f.rn r3, r3, r4
001484  17823101  and r4, r3, r19
001488  13024c04  setlt.u r4, r24, r4
00148c  3b600200  bneq r4, zero, 24
001490  1bc10101  srli r2, r3, 16
001494  1b011100  andi r2, r2, 1
001498  0b912110  add.s r2, r3, r2
00149c  0b117111  add.s r2, r2, r23
0014a0  5b010000  j 8
0014a4  17915100  or r2, r3, r5
0014a8  e3417ffd  loadli.w r3,  -324(r30)
0014ac  0b627d10  add.f.rn r4, r26, r7
0014b0  1b410101  srli r2, r2, 16
0014b4  739d2c00  store.h r2, 26(r25)
0014b8  8be16120  mul.f.rn r3, r3, r6
0014bc  8be14120  mul.f.rn r3, r3, r4
0014c0  17823101  and r4, r3, r19
0014c4  13024c04  setlt.u r4, r24, r4
0014c8  3b600200  bneq r4, zero, 24
0014cc  1bc10101  srli r2, r3, 16
0014d0  1b011100  andi r2, r2, 1
0014d4  0b912110  add.s r2, r3, r2
0014d8  0b117111  add.s r2, r2, r23
0014dc  5b010000  j 8
0014e0  17915100  or r2, r3, r5
0014e4  e3019ffd  loadli.w r3,  -312(r30)
0014e8  8be07010  add.f.rn r1, r1, r7
0014ec  1b410101  srli r2, r2, 16
0014f0  739e2c00  store.h r2, 28(r25)
0014f4  8be16120  mul.f.rn r3, r3, r6
0014f8  8be01120  mul.f.rn r1, r3, r1
0014fc  97813001  and r3, r1, r19
001500  93013c04  setlt.u r3, r24, r3
001504  37c501f6  beq r3, zero, -4784
001508  97905000  or r1, r1, r5
00150c  5babfdff  j -4776
001510  9f0e8ffb  addli sp, r30, -576
001514  9f8e8e04  addli sp, sp, 576
001518  00a00300  mfence { lm, sm, gm }
00151c  00100000  exit
001520  9f8e7eff  addli sp, sp, -72
001524  9f406000  addli r1, zero, 52
001528  2bf50f00  lui r10, 255
00152c  abf7ffff  lui r15, 1048575
001530  ab040080  lui r9, 524288
001534  17232202  xor.d r[7:8], r[5:6], r[3:4]
001538  e7c1ee01  storeli.w r30, 28(sp)
00153c  67c43e01  storeli.w r19, 68(sp)
001540  67844e01  storeli.w r20, 64(sp)
001544  e7c35e01  storeli.w r21, 60(sp)
001548  e7836e01  storeli.w r22, 56(sp)
00154c  67c37e01  storeli.w r23, 52(sp)
001550  67838e01  storeli.w r24, 48(sp)
001554  e7c29e01  storeli.w r25, 44(sp)
001558  e782ae01  storeli.w r26, 40(sp)
00155c  67c2be01  storeli.w r27, 36(sp)
001560  6782ce01  storeli.w r28, 32(sp)
001564  e781fe01  storeli.w r31, 24(sp)
001568  1f8f9e00  addli r30, sp, 72
00156c  1f040000  addli r8, zero, 0
001570  97451102  srl.d r[12:13], r[3:4], r1
001574  17481202  srl.d r[17:18], r[5:6], r1
001578  1b17f5ff  ori r14, r10, 4095
00157c  9b96f7ff  ori r13, r15, 4095
001580  17038302  and.d r[7:8], r[7:8], r[9:10]
001584  9b80f57f  andi r1, r11, 2047
001588  1b05f87f  andi r10, r16, 2047
00158c  9b982780  ori r17, r15, 2050
001590  1704d102  and.d r[9:10], r[3:4], r[14:15]
001594  9705d202  and.d r[12:13], r[5:6], r[14:15]
001598  1f9800f0  addli r16, r1, -2047
00159c  13081805  setlt.u r16, r16, r17
0015a0  3b700800  bneq r16, zero, 28
0015a4  1f1805f0  addli r16, r10, -2047
0015a8  9b971780  ori r15, r15, 2049
0015ac  93870705  setlt.u r15, r15, r16
0015b0  37b00700  beq r15, zero, 12
0015b4  1f020000  addli r4, zero, 0
0015b8  5b0b0000  j 88
0015bc  abf7ff7f  lui r15, 524287
0015c0  2b09f07f  lui r18, 524032
0015c4  9f180000  addli r17, zero, 1
0015c8  1b97f7ff  ori r14, r15, 4095
0015cc  9707d102  and.d r[16:17], r[3:4], r[14:15]
0015d0  93a91705  setlt.ul r19, r[16:17], r[18:19]
0015d4  3be00900  bneq r19, zero, 24
0015d8  ab020800  lui r5, 128
0015dc  9f060000  addli r13, zero, 0
0015e0  1f020000  addli r4, zero, 0
0015e4  17114102  or.d r[3:4], r[3:4], r[5:6]
0015e8  5b040000  j 32
0015ec  1701d202  and.d r[3:4], r[5:6], r[14:15]
0015f0  93261105  setlt.ul r13, r[3:4], r[18:19]
0015f4  3bf80600  bneq r13, zero, 540
0015f8  ab010800  lui r3, 128
0015fc  9f060000  addli r13, zero, 0
001600  1f010000  addli r2, zero, 0
001604  17112202  or.d r[3:4], r[5:6], r[3:4]
001608  1f020000  addli r4, zero, 0
00160c  b7c90600  beq r13, zero, 624
001610  ab011000  lui r3, 256
001614  9f371000  addli r15, zero, 11
001618  abf9ffff  lui r19, 1048575
00161c  2bf90475  lui r18, 479311
001620  9f582000  addli r17, zero, 21
001624  73346ffc  store.d r[7:8], -56(r30)
001628  9f723000  addli r5, zero, 31
00162c  73308ffc  store.d r[9:10], -64(r30)
001630  8b90a018  sub.s r1, r1, r10
001634  1f010000  addli r2, zero, 0
001638  97b7f502  sll.d r[16:17], r[12:13], r15
00163c  9b1a3933  ori r21, r18, 819
001640  8b101210  add.s r1, r4, r1
001644  97162402  or.d r[14:15], r[9:10], r[3:4]
001648  17912502  or.d r[3:4], r[12:13], r[3:4]
00164c  9b950980  ori r11, r19, 2048
001650  733cdffa  store.d r[14:15], -72(r30)
001654  338c0528  zext_int2long r[25:26], r11
001658  174b1103  srl.d r[23:24], r[3:4], r17
00165c  9b95f9ff  ori r11, r19, 4095
001660  9b99e9ff  ori r19, r19, 4094
001664  b3880528  zext_int2long r[18:19], r11
001668  8b9a6a19  sub.s r21, r21, r22
00166c  97878703  and.d r[16:17], r[16:17], r[25:26]
001670  b3890928  zext_int2long r[20:21], r19
001674  170d1b03  and.d r[27:28], r[23:24], r[18:19]
001678  b38a0a28  zext_int2long r[22:23], r21
00167c  0b335d21  mul.sl r[7:8], r[27:28], r[22:23]
001680  0b930358  neg.s r6, r7
001684  33030328  zext_int2long r[7:8], r6
001688  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
00168c  17435302  srl.d r[7:8], r[7:8], r5
001690  17031303  and.d r[7:8], r[7:8], r[18:19]
001694  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
001698  8b1a0b58  neg.s r21, r22
00169c  b38a0a28  zext_int2long r[22:23], r21
0016a0  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
0016a4  17435302  srl.d r[7:8], r[7:8], r5
0016a8  17031303  and.d r[7:8], r[7:8], r[18:19]
0016ac  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
0016b0  8b1a0b58  neg.s r21, r22
0016b4  1f0b4000  addli r22, zero, 32
0016b8  33840a28  zext_int2long r[9:10], r21
0016bc  9f1a0000  addli r21, zero, 1
0016c0  0b338320  mul.sl r[7:8], r[7:8], r[9:10]
0016c4  33840a28  zext_int2long r[9:10], r21
0016c8  17435302  srl.d r[7:8], r[7:8], r5
0016cc  1f73f3ff  addli r6, r6, -1
0016d0  33030328  zext_int2long r[7:8], r6
0016d4  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
0016d8  8b3b6d20  mul.sl r[24:25], r[27:28], r[7:8]
0016dc  97c76703  srl.d r[16:17], r[16:17], r22
0016e0  8ba7fb10  add.ul r[16:17], r[24:25], r[16:17]
0016e4  0b34f418  sub.sl r[9:10], r[9:10], r[16:17]
0016e8  97071403  and.d r[16:17], r[9:10], r[18:19]
0016ec  17446403  srl.d r[9:10], r[9:10], r22
0016f0  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
0016f4  97cb5702  srl.d r[24:25], r[16:17], r5
0016f8  8b328320  mul.sl r[6:7], r[7:8], r[9:10]
0016fc  97b75603  sll.d r[16:17], r[14:15], r21
001700  abf41f00  lui r9, 511
001704  97b25203  sll.d r[6:7], r[6:7], r21
001708  97cc6703  srl.d r[26:27], r[16:17], r22
00170c  978d3703  and.d r[28:29], r[16:17], r[20:21]
001710  1b96f4ff  ori r12, r9, 4095
001714  8ba27211  add.ul r[6:7], r[6:7], r[24:25]
001718  a7f232fe  addli.d r[6:7], r[6:7], 32543
00171c  97831203  and.d r[8:9], r[6:7], r[18:19]
001720  97c26203  srl.d r[6:7], r[6:7], r22
001724  8bbbb321  mul.sl r[24:25], r[8:9], r[28:29]
001728  8bb39321  mul.sl r[8:9], r[8:9], r[26:27]
00172c  8bbdb221  mul.sl r[28:29], r[6:7], r[28:29]
001730  8bb29221  mul.sl r[6:7], r[6:7], r[26:27]
001734  97881303  and.d r[18:19], r[8:9], r[18:19]
001738  97cb6b03  srl.d r[24:25], r[24:25], r22
00173c  97cc6d03  srl.d r[26:27], r[28:29], r22
001740  97893d03  and.d r[20:21], r[28:29], r[20:21]
001744  97c36303  srl.d r[8:9], r[8:9], r22
001748  8ba81b11  add.ul r[18:19], r[24:25], r[18:19]
00174c  0ba25c10  add.ul r[5:6], r[26:27], r[6:7]
001750  8ba83811  add.ul r[18:19], r[18:19], r[20:21]
001754  0b227210  add.ul r[5:6], r[5:6], r[8:9]
001758  17c36803  srl.d r[7:8], r[18:19], r22
00175c  0b226210  add.ul r[5:6], r[5:6], r[7:8]
001760  13a34504  setlt.ul r6, r[12:13], r[5:6]
001764  3b710300  bneq r6, zero, 92
001768  1f536000  addli r6, zero, 53
00176c  eb540ffc  load.d r[10:11], -64(r30)
001770  8b332220  mul.sl r[8:9], r[5:6], r[3:4]
001774  9fe0f007  addli r1, r1, 1022
001778  97b46402  sll.d r[10:11], r[10:11], r6
00177c  0bb47418  sub.sl r[9:10], r[10:11], r[8:9]
001780  1f73f00f  addli r6, zero, 2047
001784  3fa06000  blt.s r1, r6, 8
001788  5b0c0000  j 96
00178c  1f150000  addli r10, zero, 1
001790  bfb1a000  blt.s r1, r10, 108
001794  2bf30f00  lui r6, 255
001798  abf3ffff  lui r7, 1048575
00179c  b3850028  zext_int2long r[12:13], r1
0017a0  9f406000  addli r1, zero, 52
0017a4  1734a402  sll.d r[9:10], r[9:10], r10
0017a8  1b17f3ff  ori r14, r6, 4095
0017ac  97b51502  sll.d r[12:13], r[12:13], r1
0017b0  9b96f3ff  ori r13, r7, 4095
0017b4  1702d202  and.d r[5:6], r[5:6], r[14:15]
0017b8  17924502  or.d r[5:6], r[12:13], r[5:6]
0017bc  db140000  j 164
0017c0  17425203  srl.d r[5:6], r[5:6], r21
0017c4  1f436000  addli r6, zero, 52
0017c8  eb530ffc  load.d r[8:9], -64(r30)
0017cc  9ff0f007  addli r1, r1, 1023
0017d0  eb578ffb  load.d r[16:17], -72(r30)
0017d4  17b36302  sll.d r[7:8], r[8:9], r6
0017d8  0b342220  mul.sl r[9:10], r[5:6], r[3:4]
0017dc  0b348318  sub.sl r[9:10], r[7:8], r[9:10]
0017e0  1f73f00f  addli r6, zero, 2047
0017e4  bfae60fe  blt.s r1, r6, -88
0017e8  2b01f07f  lui r2, 524032
0017ec  eb518ffc  load.d r[4:5], -56(r30)
0017f0  9f000000  addli r1, zero, 0
0017f4  17911102  or.d r[3:4], r[4:5], r[2:3]
0017f8  db100000  j 132
0017fc  2bf3ffff  lui r6, 1048575
001800  1b13b3fc  ori r6, r6, 4043
001804  bf701300  blt.s r6, r1, 60
001808  6b518ffc  load.d r[3:4], -56(r30)
00180c  5b0e0000  j 112
001810  ab02f07f  lui r5, 524032
001814  1f020000  addli r4, zero, 0
001818  93a64702  setneq.d r13, r[16:17], r[5:6]
00181c  3be20600  bneq r13, zero, 152
001820  1f020000  addli r4, zero, 0
001824  13214100  seteq.d r2, r[3:4], r[5:6]
001828  b7060100  beq r2, zero, 416
00182c  ab01f87f  lui r3, 524160
001830  9f060000  addli r13, zero, 0
001834  1f020000  addli r4, zero, 0
001838  1f010000  addli r2, zero, 0
00183c  5bbaffff  j -560
001840  9f130000  addli r7, zero, 1
001844  1fc36000  addli r6, r1, 52
001848  8b901318  sub.s r1, r7, r1
00184c  17b46702  sll.d r[9:10], r[16:17], r6
001850  17421202  srl.d r[5:6], r[5:6], r1
001854  0b354120  mul.sl r[11:12], r[3:4], r[5:6]
001858  17337502  sll.d r[7:8], r[11:12], r7
00185c  0b346418  sub.sl r[9:10], r[9:10], r[7:8]
001860  23031200  andi.d r[7:8], r[5:6], 1
001864  0b238310  add.ul r[7:8], r[7:8], r[9:10]
001868  93206104  setlt.ul r1, r[3:4], r[7:8]
00186c  b3800028  zext_int2long r[2:3], r1
001870  8b201210  add.ul r[2:3], r[5:6], r[2:3]
001874  eb518ffc  load.d r[4:5], -56(r30)
001878  17913002  or.d r[3:4], r[2:3], r[4:5]
00187c  e38f3e00  loadli.w r31,  24(sp)
001880  63cf3e00  loadli.w r30,  28(sp)
001884  638e4e00  loadli.w r28,  32(sp)
001888  e3cd4e00  loadli.w r27,  36(sp)
00188c  638d5e00  loadli.w r26,  40(sp)
001890  e3cc5e00  loadli.w r25,  44(sp)
001894  638c6e00  loadli.w r24,  48(sp)
001898  e3cb6e00  loadli.w r23,  52(sp)
00189c  638b7e00  loadli.w r22,  56(sp)
0018a0  e3ca7e00  loadli.w r21,  60(sp)
0018a4  638a8e00  loadli.w r20,  64(sp)
0018a8  e3c98e00  loadli.w r19,  68(sp)
0018ac  9f8e9e00  addli sp, sp, 72
0018b0  5f800f00  jr r31, 0
0018b4  1f020000  addli r4, zero, 0
0018b8  13224102  setneq.d r4, r[3:4], r[5:6]
0018bc  3b500200  bneq r4, zero, 20
0018c0  9f060000  addli r13, zero, 0
0018c4  1f020000  addli r4, zero, 0
0018c8  27010300  addli.d r[3:4], r[7:8], 0
0018cc  5ba8ffff  j -704
0018d0  33020028  zext_int2long r[5:6], zero
0018d4  13a24702  setneq.d r4, r[16:17], r[5:6]
0018d8  37240200  beq r4, zero, 264
0018dc  33020028  zext_int2long r[5:6], zero
0018e0  13224102  setneq.d r4, r[3:4], r[5:6]
0018e4  b7130200  beq r4, zero, 228
0018e8  2bf20f00  lui r4, 255
0018ec  abf2ffff  lui r5, 1048575
0018f0  1b17f2ff  ori r14, r4, 4095
0018f4  9b96f2ff  ori r13, r5, 4095
0018f8  13a2f604  setlt.ul r4, r[14:15], r[16:17]
0018fc  bb630200  bneq r4, zero, 248
001900  9f120000  addli r5, zero, 1
001904  9f270000  addli r15, zero, 2
001908  1f420000  addli r4, zero, 4
00190c  1f081000  addli r16, zero, 8
001910  97485402  srl.d r[18:19], r[9:10], r5
001914  97181403  or.d r[18:19], r[9:10], r[18:19]
001918  97c9f802  srl.d r[20:21], r[18:19], r15
00191c  97983803  or.d r[18:19], r[18:19], r[20:21]
001920  97c94802  srl.d r[20:21], r[18:19], r4
001924  97983803  or.d r[18:19], r[18:19], r[20:21]
001928  9f092000  addli r19, zero, 16
00192c  17ca0803  srl.d r[21:22], r[18:19], r16
001930  17984803  or.d r[17:18], r[18:19], r[21:22]
001934  1f094000  addli r18, zero, 32
001938  97493803  srl.d r[20:21], r[17:18], r19
00193c  17183803  or.d r[17:18], r[17:18], r[20:21]
001940  2b5a5555  lui r20, 349525
001944  17492803  srl.d r[19:20], r[17:18], r18
001948  17182803  or.d r[17:18], r[17:18], r[19:20]
00194c  33990628  sext_int2long r[19:20], r13
001950  17282803  xor.d r[17:18], r[17:18], r[19:20]
001954  1b195a55  ori r18, r20, 1365
001958  174a5802  srl.d r[21:22], r[17:18], r5
00195c  9f090900  addli r19, r18, 0
001960  ab323333  lui r5, 209715
001964  17092a03  and.d r[19:20], r[21:22], r[19:20]
001968  1b9a3233  ori r20, r5, 819
00196c  ab020f0f  lui r5, 61680
001970  0b382819  sub.sl r[17:18], r[17:18], r[19:20]
001974  9f0a0a00  addli r21, r20, 0
001978  1749f802  srl.d r[19:20], r[17:18], r15
00197c  97074803  and.d r[16:17], r[17:18], r[21:22]
001980  97084903  and.d r[18:19], r[19:20], r[21:22]
001984  ab090101  lui r19, 4112
001988  1f0a7000  addli r20, zero, 56
00198c  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
001990  97c84702  srl.d r[18:19], r[16:17], r4
001994  1b92f2f0  ori r4, r5, 3855
001998  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
00199c  9f020200  addli r5, r4, 0
0019a0  9f481000  addli r17, zero, 12
0019a4  17824702  and.d r[5:6], r[16:17], r[5:6]
0019a8  9b971910  ori r15, r19, 257
0019ac  1f880700  addli r16, r15, 0
0019b0  0b32f220  mul.sl r[5:6], r[5:6], r[16:17]
0019b4  17424203  srl.d r[5:6], r[5:6], r20
0019b8  9f57e2ff  addli r15, r4, -11
0019bc  0b924818  sub.s r4, r17, r4
0019c0  1734f402  sll.d r[9:10], r[9:10], r15
0019c4  db060000  j 52
0019c8  ab01f07f  lui r3, 524032
0019cc  9f060000  addli r13, zero, 0
0019d0  1f020000  addli r4, zero, 0
0019d4  1f010000  addli r2, zero, 0
0019d8  17112302  or.d r[3:4], r[7:8], r[3:4]
0019dc  5b86ffff  j -976
0019e0  33020028  zext_int2long r[5:6], zero
0019e4  13214100  seteq.d r2, r[3:4], r[5:6]
0019e8  bb430100  bneq r2, zero, 240
0019ec  27010300  addli.d r[3:4], r[7:8], 0
0019f0  5b1e0000  j 240
0019f4  1f020000  addli r4, zero, 0
0019f8  13a12604  setlt.ul r2, r[14:15], r[3:4]
0019fc  3b530100  bneq r2, zero, 212
001a00  9f160000  addli r13, zero, 1
001a04  9f210000  addli r3, zero, 2
001a08  1f410000  addli r2, zero, 4
001a0c  9f021000  addli r5, zero, 8
001a10  1f072000  addli r14, zero, 16
001a14  97c7d502  srl.d r[16:17], r[12:13], r13
001a18  9797f502  or.d r[16:17], r[12:13], r[16:17]
001a1c  97c83702  srl.d r[18:19], r[16:17], r3
001a20  97971703  or.d r[16:17], r[16:17], r[18:19]
001a24  97c82702  srl.d r[18:19], r[16:17], r2
001a28  97971703  or.d r[16:17], r[16:17], r[18:19]
001a2c  97c85702  srl.d r[18:19], r[16:17], r5
001a30  9f024000  addli r5, zero, 32
001a34  97971703  or.d r[16:17], r[16:17], r[18:19]
001a38  97c8e702  srl.d r[18:19], r[16:17], r14
001a3c  2bf7ffff  lui r14, 1048575
001a40  97971703  or.d r[16:17], r[16:17], r[18:19]
001a44  1b17f7ff  ori r14, r14, 4095
001a48  97c85702  srl.d r[18:19], r[16:17], r5
001a4c  ab525555  lui r5, 349525
001a50  97971703  or.d r[16:17], r[16:17], r[18:19]
001a54  b3180728  sext_int2long r[18:19], r14
001a58  9b995255  ori r19, r5, 1365
001a5c  ab323333  lui r5, 209715
001a60  17a71703  xor.d r[15:16], r[16:17], r[18:19]
001a64  1f8a0900  addli r20, r19, 0
001a68  1748d702  srl.d r[17:18], r[15:16], r13
001a6c  17083803  and.d r[17:18], r[17:18], r[20:21]
001a70  1b993233  ori r18, r5, 819
001a74  ab020101  lui r5, 4112
001a78  0b370719  sub.sl r[15:16], r[15:16], r[17:18]
001a7c  9f090900  addli r19, r18, 0
001a80  17483702  srl.d r[17:18], r[15:16], r3
001a84  17072703  and.d r[15:16], r[15:16], r[19:20]
001a88  ab010f0f  lui r3, 61680
001a8c  17082803  and.d r[17:18], r[17:18], r[19:20]
001a90  1b99f1f0  ori r18, r3, 3855
001a94  0b270711  add.ul r[15:16], r[15:16], r[17:18]
001a98  9f090900  addli r19, r18, 0
001a9c  17412702  srl.d r[3:4], r[15:16], r2
001aa0  0b212710  add.ul r[3:4], r[15:16], r[3:4]
001aa4  1b971210  ori r14, r5, 257
001aa8  9f027000  addli r5, zero, 56
001aac  17012103  and.d r[3:4], r[3:4], r[19:20]
001ab0  9f070700  addli r15, r14, 0
001ab4  0b31e120  mul.sl r[3:4], r[3:4], r[15:16]
001ab8  17415102  srl.d r[3:4], r[3:4], r5
001abc  9f52e1ff  addli r5, r2, -11
001ac0  0b114110  add.s r2, r2, r4
001ac4  97b55502  sll.d r[12:13], r[12:13], r5
001ac8  1f42e1ff  addli r4, r2, -12
001acc  5b010000  j 8
001ad0  9f160000  addli r13, zero, 1
001ad4  5b67ffff  j -1224
001ad8  ab01f87f  lui r3, 524160
001adc  1f010000  addli r2, zero, 0
001ae0  9f060000  addli r13, zero, 0
001ae4  db64ffff  j -1244
001ae8  00100000  exit
001aec  00100000  exit
001af0  00100000  exit
001af4  00100000  exit
001af8  00100000  exit
001afc  00100000  exit
001b00  00100000  exit
001b04  00100000  exit
001b08  00100000  exit
001b0c  00100000  exit
001b10  00100000  exit
001b14  00100000  exit
001b18  00100000  exit
001b1c  00100000  exit
001b20  00100000  exit
001b24  00100000  exit
001b28  00100000  exit
001b2c  00100000  exit
001b30  00100000  exit
001b34  00100000  exit
001b38  00100000  exit
001b3c  00100000  exit
001b40  00100000  exit
001b44  00100000  exit
001b48  00100000  exit
001b4c  00100000  exit
001b50  00100000  exit
001b54  00100000  exit
001b58  00100000  exit
001b5c  00100000  exit
001b60  00100000  exit
001b64  00100000  exit
001b68  00100000  exit
001b6c  00100000  exit
001b70  00100000  exit
001b74  00100000  exit
001b78  00100000  exit
001b7c  00100000  exit
001b80  00100000  exit
001b84  00100000  exit
001b88  00100000  exit
001b8c  00100000  exit
001b90  00100000  exit
001b94  00100000  exit
001b98  00100000  exit
001b9c  00100000  exit
001ba0  00100000  exit
001ba4  00100000  exit
001ba8  00100000  exit
001bac  00100000  exit
001bb0  00100000  exit
001bb4  00100000  exit
001bb8  00100000  exit
001bbc  00100000  exit
001bc0  00100000  exit
001bc4  00100000  exit
001bc8  00100000  exit
001bcc  00100000  exit
001bd0  00100000  exit
001bd4  00100000  exit
001bd8  00100000  exit
001bdc  00100000  exit
001be0  00100000  exit
001be4  00100000  exit
001be8  00100000  exit
001bec  00100000  exit
001bf0  00100000  exit
001bf4  00100000  exit
001bf8  00100000  exit
001bfc  00100000  exit
001c00  00100000  exit
001c04  00100000  exit
001c08  00100000  exit
001c0c  00100000  exit
001c10  00100000  exit
001c14  00100000  exit
001c18  00100000  exit
001c1c  00100000  exit
001c20  00100000  exit
001c24  00100000  exit
001c28  00100000  exit
001c2c  00100000  exit
001c30  00100000  exit
001c34  00100000  exit
001c38  00100000  exit
001c3c  00100000  exit
001c40  00100000  exit
001c44  00100000  exit
001c48  00100000  exit
001c4c  00100000  exit
001c50  00100000  exit
001c54  00100000  exit
001c58  00100000  exit
001c5c  00100000  exit
001c60  00100000  exit
001c64  00100000  exit
001c68  00100000  exit
001c6c  00100000  exit
001c70  00100000  exit
001c74  00100000  exit
001c78  00100000  exit
001c7c  00100000  exit
001c80  00100000  exit
001c84  00100000  exit
001c88  00100000  exit
001c8c  00100000  exit
001c90  00100000  exit
001c94  00100000  exit
001c98  00100000  exit
001c9c  00100000  exit
001ca0  00100000  exit
001ca4  00100000  exit
001ca8  00100000  exit
001cac  00100000  exit
001cb0  00100000  exit
001cb4  00100000  exit
001cb8  00100000  exit
001cbc  00100000  exit
001cc0  00100000  exit
001cc4  00100000  exit
001cc8  00100000  exit
001ccc  00100000  exit
001cd0  00100000  exit
001cd4  00100000  exit
001cd8  00100000  exit
001cdc  00100000  exit
001ce0  00100000  exit
001ce4  00100000  exit
001ce8  00100000  exit
001cec  00100000  exit
001cf0  00100000  exit
001cf4  00100000  exit
001cf8  00100000  exit
001cfc  00100000  exit
001d00  00100000  exit
001d04  00100000  exit
001d08  00100000  exit
001d0c  00100000  exit
001d10  00100000  exit
001d14  00100000  exit
001d18  00100000  exit
001d1c  00100000  exit
001d20  00100000  exit
001d24  00100000  exit
