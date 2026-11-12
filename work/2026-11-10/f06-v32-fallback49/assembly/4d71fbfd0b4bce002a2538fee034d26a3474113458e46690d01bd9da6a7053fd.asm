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
0000e4  00520002  load_param_i r4, 0
0000e8  63013f00  loadli.w r2,  24(r30)
0000ec  e3402f00  loadli.w r1,  20(r30)
0000f0  e3413f00  loadli.w r3,  28(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  e74e1ffa  storeli.w r1, -532(r30)
000100  4b90400a  ble.s r1, r4, 5124
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
00019c  db060000  j 52
0001a0  ab0000f0  lui r1, 983040
0001a4  9f048000  addli r9, zero, 64
0001a8  6b510fdf  load.d r[3:4], -528(r30)
0001ac  6302fffb  loadli.w r4,  -520(r30)
0001b0  97901400  or r1, r9, r1
0001b4  ff302101  s_lm2gm r1, r18, 0(r[3:4])
0001b8  e300dffb  loadli.w r1,  -536(r30)
0001bc  00a00000  mfence { lm }
0001c0  0b121210  add.s r4, r4, r1
0001c4  e340dffb  loadli.w r1,  -532(r30)
0001c8  3f201200  blt.s r4, r1, 8
0001cc  5b670200  j 4920
0001d0  e3403f00  loadli.w r1,  28(r30)
0001d4  63013f00  loadli.w r2,  24(r30)
0001d8  e70f4ffa  storeli.w r4, -520(r30)
0001dc  1f150000  addli r10, zero, 1
0001e0  eb530f00  load.d r[8:9], 0(r30)
0001e4  8b101230  div.s r1, r4, r1
0001e8  8b902030  div.s r1, r1, r2
0001ec  6341cffb  loadli.w r2,  -540(r30)
0001f0  9bb0b000  slli r1, r1, 11
0001f4  8b902010  add.s r1, r1, r2
0001f8  1f010010  addli r2, zero, 2048
0001fc  0b912038  mod.s r2, r1, r2
000200  b3910028  sext_int2long r[4:5], r1
000204  ab0000f0  lui r1, 983040
000208  97b1a102  sll.d r[4:5], r[4:5], r10
00020c  97901400  or r1, r9, r1
000210  8ba33310  add.ul r[8:9], r[8:9], r[4:5]
000214  eb518f00  load.d r[4:5], 8(r30)
000218  b3120128  sext_int2long r[6:7], r2
00021c  2b0100f0  lui r2, 983040
000220  73387fde  store.d r[8:9], -528(r30)
000224  97b2a202  sll.d r[6:7], r[6:7], r10
000228  17912400  or r2, r9, r2
00022c  8ba15110  add.ul r[4:5], r[4:5], r[6:7]
000230  9f020ffe  addli r5, r30, -256
000234  ffa05300  l_gm2lm r1, r5, 0(r[8:9])
000238  7fa12101  l_gm2lm r2, r18, 0(r[4:5])
00023c  9f000000  addli r1, zero, 0
000240  00a00000  mfence { lm }
000244  5b060000  j 48
000248  1bc10001  srli r2, r1, 16
00024c  1b011100  andi r2, r2, 1
000250  8b902010  add.s r1, r1, r2
000254  8b907011  add.s r1, r1, r23
000258  9bc00001  srli r1, r1, 16
00025c  1b011400  andi r2, r8, 1
000260  1f050000  addli r10, zero, 0
000264  739f1c00  store.h r1, 30(r25)
000268  9f002000  addli r1, zero, 16
00026c  00a00000  mfence { lm }
000270  b74c01fe  beq r2, zero, -208
000274  c2100fc2  vload_mask16.mz vr1{mr1}, 1536(r30)
000278  9bb01000  slli r1, r1, 1
00027c  1f010ffe  addli r2, r30, -256
000280  9f1a0000  addli r21, zero, 1
000284  e70daffc  storeli.w r10, -296(r30)
000288  2b0a4000  lui r20, 1024
00028c  0b111110  add.s r2, r2, r1
000290  7e810ae0  vmmov mr2, r21
000294  8b1c1910  add.s r25, r18, r1
000298  ab800000  lui r1, 8
00029c  eb320100  load.hu r5, 0(r2)
0002a0  6b332100  load.hu r6, 2(r2)
0002a4  6b32a101  load.hu r4, 26(r2)
0002a8  eb31c101  load.hu r3, 28(r2)
0002ac  eb334100  load.hu r7, 4(r2)
0002b0  6b346100  load.hu r8, 6(r2)
0002b4  eb348100  load.hu r9, 8(r2)
0002b8  6b35a100  load.hu r10, 10(r2)
0002bc  eb35c100  load.hu r11, 12(r2)
0002c0  6b36e100  load.hu r12, 14(r2)
0002c4  eb360101  load.hu r13, 16(r2)
0002c8  6b372101  load.hu r14, 18(r2)
0002cc  eb374101  load.hu r15, 20(r2)
0002d0  6b386101  load.hu r16, 22(r2)
0002d4  eb388101  load.hu r17, 24(r2)
0002d8  6b31e101  load.hu r2, 30(r2)
0002dc  12301002  vadd.s.mz vr0{mr1}, zero, vr1
0002e0  b3920218  bfloat2float.rn r5, r5
0002e4  33120218  bfloat2float.rn r4, r4
0002e8  b3910118  bfloat2float.rn r3, r3
0002ec  33110118  bfloat2float.rn r2, r2
0002f0  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
0002f4  b3120318  bfloat2float.rn r5, r6
0002f8  1f230000  addli r6, zero, 2
0002fc  fe0103e0  vmmov mr3, r6
000300  1f430000  addli r6, zero, 4
000304  6aa00236  vor.u.mh vr0{mr3}, r5, vr0
000308  b3920318  bfloat2float.rn r5, r7
00030c  7e0003e0  vmmov mr0, r6
000310  1f031000  addli r6, zero, 8
000314  6aa00230  vor.u.mh vr0{mr0}, r5, vr0
000318  b3120418  bfloat2float.rn r5, r8
00031c  7e0003e0  vmmov mr0, r6
000320  1f032000  addli r6, zero, 16
000324  6aa00230  vor.u.mh vr0{mr0}, r5, vr0
000328  b3920418  bfloat2float.rn r5, r9
00032c  7e0003e0  vmmov mr0, r6
000330  1f034000  addli r6, zero, 32
000334  6aa00230  vor.u.mh vr0{mr0}, r5, vr0
000338  b3120518  bfloat2float.rn r5, r10
00033c  7e0003e0  vmmov mr0, r6
000340  1f038000  addli r6, zero, 64
000344  6aa00230  vor.u.mh vr0{mr0}, r5, vr0
000348  b3920518  bfloat2float.rn r5, r11
00034c  7e0003e0  vmmov mr0, r6
000350  1f030001  addli r6, zero, 128
000354  6aa00230  vor.u.mh vr0{mr0}, r5, vr0
000358  b3120618  bfloat2float.rn r5, r12
00035c  7e0003e0  vmmov mr0, r6
000360  1f030002  addli r6, zero, 256
000364  6aa00230  vor.u.mh vr0{mr0}, r5, vr0
000368  b3920618  bfloat2float.rn r5, r13
00036c  7e0003e0  vmmov mr0, r6
000370  1f030004  addli r6, zero, 512
000374  6aa00230  vor.u.mh vr0{mr0}, r5, vr0
000378  b3120718  bfloat2float.rn r5, r14
00037c  7e0003e0  vmmov mr0, r6
000380  1f030008  addli r6, zero, 1024
000384  6aa00230  vor.u.mh vr0{mr0}, r5, vr0
000388  b3920718  bfloat2float.rn r5, r15
00038c  7e0003e0  vmmov mr0, r6
000390  1f030010  addli r6, zero, 2048
000394  6aa00230  vor.u.mh vr0{mr0}, r5, vr0
000398  b3120818  bfloat2float.rn r5, r16
00039c  7e0003e0  vmmov mr0, r6
0003a0  1f030020  addli r6, zero, 4096
0003a4  6aa00230  vor.u.mh vr0{mr0}, r5, vr0
0003a8  b3920818  bfloat2float.rn r5, r17
0003ac  7e0003e0  vmmov mr0, r6
0003b0  6aa00230  vor.u.mh vr0{mr0}, r5, vr0
0003b4  9f020040  addli r5, zero, 8192
0003b8  7e8002e0  vmmov mr0, r5
0003bc  6a200230  vor.u.mh vr0{mr0}, r4, vr0
0003c0  2b420000  lui r4, 4
0003c4  7e0002e0  vmmov mr0, r4
0003c8  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0003cc  7e8000e0  vmmov mr0, r1
0003d0  6a200130  vor.u.mh vr0{mr0}, r2, vr0
0003d4  ebb00c00  load.hu r1, 0(r25)
0003d8  6bb12c00  load.hu r2, 2(r25)
0003dc  ebb14c00  load.hu r3, 4(r25)
0003e0  6bb26c00  load.hu r4, 6(r25)
0003e4  ebb28c00  load.hu r5, 8(r25)
0003e8  6bb3ac00  load.hu r6, 10(r25)
0003ec  ebb3cc00  load.hu r7, 12(r25)
0003f0  6bb4ec00  load.hu r8, 14(r25)
0003f4  ebb40c01  load.hu r9, 16(r25)
0003f8  6bb52c01  load.hu r10, 18(r25)
0003fc  ebb54c01  load.hu r11, 20(r25)
000400  6bb66c01  load.hu r12, 22(r25)
000404  ebb68c01  load.hu r13, 24(r25)
000408  6bb7ac01  load.hu r14, 26(r25)
00040c  ebb7cc01  load.hu r15, 28(r25)
000410  6bb8ec01  load.hu r16, 30(r25)
000414  b3900018  bfloat2float.rn r1, r1
000418  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
00041c  b3100118  bfloat2float.rn r1, r2
000420  1f410000  addli r2, zero, 4
000424  7e0101e0  vmmov mr2, r2
000428  1f011000  addli r2, zero, 8
00042c  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
000430  b3900118  bfloat2float.rn r1, r3
000434  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000438  b3100218  bfloat2float.rn r1, r4
00043c  7e0101e0  vmmov mr2, r2
000440  1f012000  addli r2, zero, 16
000444  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000448  b3900218  bfloat2float.rn r1, r5
00044c  7e0101e0  vmmov mr2, r2
000450  1f014000  addli r2, zero, 32
000454  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000458  b3100318  bfloat2float.rn r1, r6
00045c  7e0101e0  vmmov mr2, r2
000460  1f018000  addli r2, zero, 64
000464  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000468  b3900318  bfloat2float.rn r1, r7
00046c  7e0101e0  vmmov mr2, r2
000470  1f010001  addli r2, zero, 128
000474  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000478  b3100418  bfloat2float.rn r1, r8
00047c  7e0101e0  vmmov mr2, r2
000480  1f010002  addli r2, zero, 256
000484  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000488  b3900418  bfloat2float.rn r1, r9
00048c  7e0101e0  vmmov mr2, r2
000490  1f010004  addli r2, zero, 512
000494  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000498  b3100518  bfloat2float.rn r1, r10
00049c  7e0101e0  vmmov mr2, r2
0004a0  1f010008  addli r2, zero, 1024
0004a4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0004a8  b3900518  bfloat2float.rn r1, r11
0004ac  7e0101e0  vmmov mr2, r2
0004b0  1f010010  addli r2, zero, 2048
0004b4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0004b8  b3100618  bfloat2float.rn r1, r12
0004bc  7e0101e0  vmmov mr2, r2
0004c0  1f010020  addli r2, zero, 4096
0004c4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0004c8  b3900618  bfloat2float.rn r1, r13
0004cc  7e0101e0  vmmov mr2, r2
0004d0  1f010040  addli r2, zero, 8192
0004d4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0004d8  b3100718  bfloat2float.rn r1, r14
0004dc  7e0101e0  vmmov mr2, r2
0004e0  2b410000  lui r2, 4
0004e4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0004e8  b3900718  bfloat2float.rn r1, r15
0004ec  7e0101e0  vmmov mr2, r2
0004f0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0004f4  b3100818  bfloat2float.rn r1, r16
0004f8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0004fc  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
000500  46180fe2  vstore_mask16.mz vr0{mr1}, 1920(r30)
000504  00a00000  mfence { lm }
000508  e3000fff  loadli.w r1,  -128(r30)
00050c  63480fff  loadli.w r16,  -124(r30)
000510  e3071fff  loadli.w r15,  -120(r30)
000514  63471fff  loadli.w r14,  -116(r30)
000518  e3062fff  loadli.w r13,  -112(r30)
00051c  63462fff  loadli.w r12,  -108(r30)
000520  e3053fff  loadli.w r11,  -104(r30)
000524  63453fff  loadli.w r10,  -100(r30)
000528  e3044fff  loadli.w r9,  -96(r30)
00052c  63444fff  loadli.w r8,  -92(r30)
000530  e3035fff  loadli.w r7,  -88(r30)
000534  63435fff  loadli.w r6,  -84(r30)
000538  e3026fff  loadli.w r5,  -80(r30)
00053c  63426fff  loadli.w r4,  -76(r30)
000540  e3017fff  loadli.w r3,  -72(r30)
000544  17813001  and r2, r1, r19
000548  93082c04  setlt.u r17, r24, r2
00054c  63417fff  loadli.w r2,  -68(r30)
000550  3be00800  bneq r17, zero, 24
000554  9bc80001  srli r17, r1, 16
000558  9b881800  andi r17, r17, 1
00055c  8b901011  add.s r1, r1, r17
000560  8b907011  add.s r1, r1, r23
000564  5b010000  j 8
000568  97904001  or r1, r1, r20
00056c  97083801  and r17, r16, r19
000570  93081c05  setlt.u r17, r24, r17
000574  3bf00800  bneq r17, zero, 28
000578  9b480801  srli r17, r16, 16
00057c  9b881800  andi r17, r17, 1
000580  0b181811  add.s r16, r16, r17
000584  ab084000  lui r17, 1024
000588  0b1a7811  add.s r20, r16, r23
00058c  db010000  j 12
000590  ab084000  lui r17, 1024
000594  171a1801  or r20, r16, r17
000598  17883701  and r16, r15, r19
00059c  13080c05  setlt.u r16, r24, r16
0005a0  3b600800  bneq r16, zero, 24
0005a4  1bc80701  srli r16, r15, 16
0005a8  1b081800  andi r16, r16, 1
0005ac  8b970711  add.s r15, r15, r16
0005b0  0b9e7711  add.s r28, r15, r23
0005b4  5b010000  j 8
0005b8  179e1701  or r28, r15, r17
0005bc  97073701  and r15, r14, r19
0005c0  9307fc04  setlt.u r15, r24, r15
0005c4  3be00700  bneq r15, zero, 24
0005c8  9b470701  srli r15, r14, 16
0005cc  9b871700  andi r15, r15, 1
0005d0  0b17f710  add.s r14, r14, r15
0005d4  0b1d7711  add.s r26, r14, r23
0005d8  5b010000  j 8
0005dc  171d1701  or r26, r14, r17
0005e0  17873601  and r14, r13, r19
0005e4  1307ec04  setlt.u r14, r24, r14
0005e8  3b600700  bneq r14, zero, 24
0005ec  1bc70601  srli r14, r13, 16
0005f0  1b071700  andi r14, r14, 1
0005f4  8b96e610  add.s r13, r13, r14
0005f8  8b967611  add.s r13, r13, r23
0005fc  5b010000  j 8
000600  97961601  or r13, r13, r17
000604  e74adffc  storeli.w r13, -340(r30)
000608  97063601  and r13, r12, r19
00060c  9306dc04  setlt.u r13, r24, r13
000610  3be00600  bneq r13, zero, 24
000614  9b460601  srli r13, r12, 16
000618  9b861600  andi r13, r13, 1
00061c  0b16d610  add.s r12, r12, r13
000620  0b167611  add.s r12, r12, r23
000624  5b010000  j 8
000628  17161601  or r12, r12, r17
00062c  670acffc  storeli.w r12, -352(r30)
000630  17863501  and r12, r11, r19
000634  1306cc04  setlt.u r12, r24, r12
000638  3b600600  bneq r12, zero, 24
00063c  1bc60501  srli r12, r11, 16
000640  1b061600  andi r12, r12, 1
000644  8b95c510  add.s r11, r11, r12
000648  8b957511  add.s r11, r11, r23
00064c  5b010000  j 8
000650  97951501  or r11, r11, r17
000654  e709bffc  storeli.w r11, -360(r30)
000658  97053501  and r11, r10, r19
00065c  9305bc04  setlt.u r11, r24, r11
000660  3be00500  bneq r11, zero, 24
000664  9b450501  srli r11, r10, 16
000668  9b851500  andi r11, r11, 1
00066c  0b15b510  add.s r10, r10, r11
000670  0b157511  add.s r10, r10, r23
000674  5b010000  j 8
000678  17151501  or r10, r10, r17
00067c  e748affc  storeli.w r10, -372(r30)
000680  17853401  and r10, r9, r19
000684  1305ac04  setlt.u r10, r24, r10
000688  3b600500  bneq r10, zero, 24
00068c  1bc50401  srli r10, r9, 16
000690  1b051500  andi r10, r10, 1
000694  8b94a410  add.s r9, r9, r10
000698  8b947411  add.s r9, r9, r23
00069c  5b010000  j 8
0006a0  97941401  or r9, r9, r17
0006a4  67089ffc  storeli.w r9, -384(r30)
0006a8  97043401  and r9, r8, r19
0006ac  93049c04  setlt.u r9, r24, r9
0006b0  3be00400  bneq r9, zero, 24
0006b4  9b440401  srli r9, r8, 16
0006b8  9b841400  andi r9, r9, 1
0006bc  0b149410  add.s r8, r8, r9
0006c0  0b147411  add.s r8, r8, r23
0006c4  5b010000  j 8
0006c8  17141401  or r8, r8, r17
0006cc  e7078ffc  storeli.w r8, -392(r30)
0006d0  17843301  and r8, r7, r19
0006d4  13048c04  setlt.u r8, r24, r8
0006d8  3b600400  bneq r8, zero, 24
0006dc  1bc40301  srli r8, r7, 16
0006e0  1b041400  andi r8, r8, 1
0006e4  8b938310  add.s r7, r7, r8
0006e8  8b937311  add.s r7, r7, r23
0006ec  5b010000  j 8
0006f0  97931301  or r7, r7, r17
0006f4  e7087ffc  storeli.w r7, -376(r30)
0006f8  97033301  and r7, r6, r19
0006fc  93037c04  setlt.u r7, r24, r7
000700  3be00300  bneq r7, zero, 24
000704  9b430301  srli r7, r6, 16
000708  9b831300  andi r7, r7, 1
00070c  0b137310  add.s r6, r6, r7
000710  0b137311  add.s r6, r6, r23
000714  5b010000  j 8
000718  17131301  or r6, r6, r17
00071c  67496ffc  storeli.w r6, -364(r30)
000720  17833201  and r6, r5, r19
000724  13036c04  setlt.u r6, r24, r6
000728  3b600300  bneq r6, zero, 24
00072c  1bc30201  srli r6, r5, 16
000730  1b031300  andi r6, r6, 1
000734  8b926210  add.s r5, r5, r6
000738  8b927211  add.s r5, r5, r23
00073c  5b010000  j 8
000740  97921201  or r5, r5, r17
000744  674a5ffc  storeli.w r5, -348(r30)
000748  97023201  and r5, r4, r19
00074c  93025c04  setlt.u r5, r24, r5
000750  3be00200  bneq r5, zero, 24
000754  9b420201  srli r5, r4, 16
000758  9b821200  andi r5, r5, 1
00075c  0b125210  add.s r4, r4, r5
000760  0b127211  add.s r4, r4, r23
000764  5b010000  j 8
000768  17121201  or r4, r4, r17
00076c  670b4ffc  storeli.w r4, -336(r30)
000770  17823101  and r4, r3, r19
000774  13024c04  setlt.u r4, r24, r4
000778  3b600200  bneq r4, zero, 24
00077c  1bc20101  srli r4, r3, 16
000780  1b021200  andi r4, r4, 1
000784  8b914110  add.s r3, r3, r4
000788  8b917111  add.s r3, r3, r23
00078c  5b010000  j 8
000790  97911101  or r3, r3, r17
000794  e74b3ffc  storeli.w r3, -324(r30)
000798  97013101  and r3, r2, r19
00079c  93013c04  setlt.u r3, r24, r3
0007a0  3be00100  bneq r3, zero, 24
0007a4  9b410101  srli r3, r2, 16
0007a8  9b811100  andi r3, r3, 1
0007ac  0b113110  add.s r2, r2, r3
0007b0  0b117111  add.s r2, r2, r23
0007b4  5b010000  j 8
0007b8  17111101  or r2, r2, r17
0007bc  2b0cffff  lui r24, 1048560
0007c0  e30bcffd  loadli.w r23,  -288(r30)
0007c4  e70c2ffc  storeli.w r2, -312(r30)
0007c8  6b518fef  load.d r[3:4], -264(r30)
0007cc  1f010000  addli r2, zero, 0
0007d0  97808001  and r1, r1, r24
0007d4  733c2fee  store.d r[3:4], -264(r30)
0007d8  674d1ffc  storeli.w r1, -300(r30)
0007dc  8be06021  mul.f.rn r1, r1, r22
0007e0  8bea0060  abs.f r21, r1
0007e4  0be27a21  mul.f.rn r4, r21, r23
0007e8  8f230208  .word 0x0802238f
0007ec  1bb29000  slli r4, r1, 9
0007f0  13030200  seteq r6, r4, zero
0007f4  0f922320  .word 0x2023920f
0007f8  9bc37001  srli r7, r1, 23
0007fc  93e00004  setlt.f r1, r1, zero
000800  9b83f30f  andi r7, r7, 255
000804  9bf3f30f  setlti r7, r7, 255
000808  17936300  or r6, r7, r6
00080c  978d6000  and r27, r1, r6
000810  d7a20200  jal 5396
000814  8f300110  .word 0x1001308f
000818  6341cffd  loadli.w r2,  -284(r30)
00081c  e301dffd  loadli.w r3,  -280(r30)
000820  0be20a58  neg.f r4, r21
000824  0be13050  fmac.f.rn r2, r1, r3
000828  e341effd  loadli.w r3,  -268(r30)
00082c  8b611150  fmac.f.rn r3, r2, r1
000830  6301effd  loadli.w r2,  -272(r30)
000834  0be11150  fmac.f.rn r2, r3, r1
000838  e341dffd  loadli.w r3,  -276(r30)
00083c  8b611150  fmac.f.rn r3, r2, r1
000840  0be14a20  mul.f.rn r2, r21, r4
000844  8be10158  neg.f r3, r3
000848  0f010100  exp.f.rn r2, r2
00084c  8be03020  mul.f.rn r1, r1, r3
000850  ab01803f  lui r3, 260096
000854  8be12050  fmac.f.rn r3, r1, r2
000858  37a00d00  beq r27, zero, 8
00085c  8be10158  neg.f r3, r3
000860  97008a01  and r1, r20, r24
000864  e74c3ffc  storeli.w r3, -308(r30)
000868  670d1ffc  storeli.w r1, -304(r30)
00086c  8be06021  mul.f.rn r1, r1, r22
000870  0bea0060  abs.f r20, r1
000874  1bb29000  slli r4, r1, 9
000878  0b617a21  mul.f.rn r2, r20, r23
00087c  13030200  seteq r6, r4, zero
000880  8f230108  .word 0x0801238f
000884  6b518fef  load.d r[3:4], -264(r30)
000888  0f922320  .word 0x2023920f
00088c  9bc37001  srli r7, r1, 23
000890  93e00004  setlt.f r1, r1, zero
000894  9b83f30f  andi r7, r7, 255
000898  9bf3f30f  setlti r7, r7, 255
00089c  17936300  or r6, r7, r6
0008a0  978a6000  and r21, r1, r6
0008a4  d7a20200  jal 5396
0008a8  8f300110  .word 0x1001308f
0008ac  6341cffd  loadli.w r2,  -284(r30)
0008b0  e30ddffd  loadli.w r27,  -280(r30)
0008b4  e341effd  loadli.w r3,  -268(r30)
0008b8  0b620a58  neg.f r4, r20
0008bc  0be1b051  fmac.f.rn r2, r1, r27
0008c0  8b611150  fmac.f.rn r3, r2, r1
0008c4  6301effd  loadli.w r2,  -272(r30)
0008c8  0be11150  fmac.f.rn r2, r3, r1
0008cc  e341dffd  loadli.w r3,  -276(r30)
0008d0  8b611150  fmac.f.rn r3, r2, r1
0008d4  0b614a20  mul.f.rn r2, r20, r4
0008d8  8be10158  neg.f r3, r3
0008dc  0f010100  exp.f.rn r2, r2
0008e0  8be03020  mul.f.rn r1, r1, r3
0008e4  ab01803f  lui r3, 260096
0008e8  8be12050  fmac.f.rn r3, r1, r2
0008ec  37a00a00  beq r21, zero, 8
0008f0  8be10158  neg.f r3, r3
0008f4  97008e01  and r1, r28, r24
0008f8  670c3ffc  storeli.w r3, -320(r30)
0008fc  674c1ffc  storeli.w r1, -316(r30)
000900  8be06021  mul.f.rn r1, r1, r22
000904  0bea0060  abs.f r20, r1
000908  1bb29000  slli r4, r1, 9
00090c  0b617a21  mul.f.rn r2, r20, r23
000910  13030200  seteq r6, r4, zero
000914  8f230108  .word 0x0801238f
000918  6b518fef  load.d r[3:4], -264(r30)
00091c  0f922320  .word 0x2023920f
000920  9bc37001  srli r7, r1, 23
000924  93e00004  setlt.f r1, r1, zero
000928  9b83f30f  andi r7, r7, 255
00092c  9bf3f30f  setlti r7, r7, 255
000930  17936300  or r6, r7, r6
000934  978a6000  and r21, r1, r6
000938  d7a20200  jal 5396
00093c  8f300110  .word 0x1001308f
000940  634ecffd  loadli.w r28,  -284(r30)
000944  e341effd  loadli.w r3,  -268(r30)
000948  0b620a58  neg.f r4, r20
00094c  1f010e00  addli r2, r28, 0
000950  0be1b051  fmac.f.rn r2, r1, r27
000954  8b611150  fmac.f.rn r3, r2, r1
000958  6301effd  loadli.w r2,  -272(r30)
00095c  0be11150  fmac.f.rn r2, r3, r1
000960  e341dffd  loadli.w r3,  -276(r30)
000964  8b611150  fmac.f.rn r3, r2, r1
000968  0b614a20  mul.f.rn r2, r20, r4
00096c  8be10158  neg.f r3, r3
000970  0f010100  exp.f.rn r2, r2
000974  8be03020  mul.f.rn r1, r1, r3
000978  ab01803f  lui r3, 260096
00097c  8be12050  fmac.f.rn r3, r1, r2
000980  37a00a00  beq r21, zero, 8
000984  8be10158  neg.f r3, r3
000988  97008d01  and r1, r26, r24
00098c  674b3ffc  storeli.w r3, -332(r30)
000990  e70b1ffc  storeli.w r1, -328(r30)
000994  8be06021  mul.f.rn r1, r1, r22
000998  0bea0060  abs.f r20, r1
00099c  1bb29000  slli r4, r1, 9
0009a0  0b617a21  mul.f.rn r2, r20, r23
0009a4  13030200  seteq r6, r4, zero
0009a8  8f230108  .word 0x0801238f
0009ac  6b518fef  load.d r[3:4], -264(r30)
0009b0  0f922320  .word 0x2023920f
0009b4  9bc37001  srli r7, r1, 23
0009b8  93e00004  setlt.f r1, r1, zero
0009bc  9b83f30f  andi r7, r7, 255
0009c0  9bf3f30f  setlti r7, r7, 255
0009c4  17936300  or r6, r7, r6
0009c8  978a6000  and r21, r1, r6
0009cc  d7a20200  jal 5396
0009d0  8f300110  .word 0x1001308f
0009d4  1f010e00  addli r2, r28, 0
0009d8  e341effd  loadli.w r3,  -268(r30)
0009dc  0b620a58  neg.f r4, r20
0009e0  0be1b051  fmac.f.rn r2, r1, r27
0009e4  8b611150  fmac.f.rn r3, r2, r1
0009e8  6301effd  loadli.w r2,  -272(r30)
0009ec  0be11150  fmac.f.rn r2, r3, r1
0009f0  e341dffd  loadli.w r3,  -276(r30)
0009f4  8b611150  fmac.f.rn r3, r2, r1
0009f8  0b614a20  mul.f.rn r2, r20, r4
0009fc  8be10158  neg.f r3, r3
000a00  0f010100  exp.f.rn r2, r2
000a04  8be03020  mul.f.rn r1, r1, r3
000a08  ab01803f  lui r3, 260096
000a0c  8be12050  fmac.f.rn r3, r1, r2
000a10  37a00a00  beq r21, zero, 8
000a14  8be10158  neg.f r3, r3
000a18  e3405ffd  loadli.w r1,  -340(r30)
000a1c  e70a3ffc  storeli.w r3, -344(r30)
000a20  97808001  and r1, r1, r24
000a24  e74a1ffc  storeli.w r1, -340(r30)
000a28  8be06021  mul.f.rn r1, r1, r22
000a2c  0bea0060  abs.f r20, r1
000a30  1bb29000  slli r4, r1, 9
000a34  0b617a21  mul.f.rn r2, r20, r23
000a38  13030200  seteq r6, r4, zero
000a3c  8f230108  .word 0x0801238f
000a40  6b518fef  load.d r[3:4], -264(r30)
000a44  0f922320  .word 0x2023920f
000a48  9bc37001  srli r7, r1, 23
000a4c  93e00004  setlt.f r1, r1, zero
000a50  9b83f30f  andi r7, r7, 255
000a54  9bf3f30f  setlti r7, r7, 255
000a58  17936300  or r6, r7, r6
000a5c  978a6000  and r21, r1, r6
000a60  d7a20200  jal 5396
000a64  8f300110  .word 0x1001308f
000a68  1f010e00  addli r2, r28, 0
000a6c  e341effd  loadli.w r3,  -268(r30)
000a70  0b620a58  neg.f r4, r20
000a74  0be1b051  fmac.f.rn r2, r1, r27
000a78  8b611150  fmac.f.rn r3, r2, r1
000a7c  6301effd  loadli.w r2,  -272(r30)
000a80  0be11150  fmac.f.rn r2, r3, r1
000a84  e341dffd  loadli.w r3,  -276(r30)
000a88  8b611150  fmac.f.rn r3, r2, r1
000a8c  0b614a20  mul.f.rn r2, r20, r4
000a90  8be10158  neg.f r3, r3
000a94  0f010100  exp.f.rn r2, r2
000a98  8be03020  mul.f.rn r1, r1, r3
000a9c  ab01803f  lui r3, 260096
000aa0  8be12050  fmac.f.rn r3, r1, r2
000aa4  37a00a00  beq r21, zero, 8
000aa8  8be10158  neg.f r3, r3
000aac  e3004ffd  loadli.w r1,  -352(r30)
000ab0  e7493ffc  storeli.w r3, -356(r30)
000ab4  97808001  and r1, r1, r24
000ab8  670a1ffc  storeli.w r1, -352(r30)
000abc  8be06021  mul.f.rn r1, r1, r22
000ac0  0bea0060  abs.f r20, r1
000ac4  1bb29000  slli r4, r1, 9
000ac8  0b617a21  mul.f.rn r2, r20, r23
000acc  13030200  seteq r6, r4, zero
000ad0  8f230108  .word 0x0801238f
000ad4  6b518fef  load.d r[3:4], -264(r30)
000ad8  0f922320  .word 0x2023920f
000adc  9bc37001  srli r7, r1, 23
000ae0  93e00004  setlt.f r1, r1, zero
000ae4  9b83f30f  andi r7, r7, 255
000ae8  9bf3f30f  setlti r7, r7, 255
000aec  17936300  or r6, r7, r6
000af0  978a6000  and r21, r1, r6
000af4  d7a20200  jal 5396
000af8  8f300110  .word 0x1001308f
000afc  1f010e00  addli r2, r28, 0
000b00  e341effd  loadli.w r3,  -268(r30)
000b04  0b620a58  neg.f r4, r20
000b08  0be1b051  fmac.f.rn r2, r1, r27
000b0c  8b611150  fmac.f.rn r3, r2, r1
000b10  6301effd  loadli.w r2,  -272(r30)
000b14  0be11150  fmac.f.rn r2, r3, r1
000b18  e341dffd  loadli.w r3,  -276(r30)
000b1c  8b611150  fmac.f.rn r3, r2, r1
000b20  0b614a20  mul.f.rn r2, r20, r4
000b24  8be10158  neg.f r3, r3
000b28  0f010100  exp.f.rn r2, r2
000b2c  8be03020  mul.f.rn r1, r1, r3
000b30  ab01803f  lui r3, 260096
000b34  8be12050  fmac.f.rn r3, r1, r2
000b38  37a00a00  beq r21, zero, 8
000b3c  8be10158  neg.f r3, r3
000b40  e3003ffd  loadli.w r1,  -360(r30)
000b44  67093ffc  storeli.w r3, -368(r30)
000b48  97808001  and r1, r1, r24
000b4c  e7091ffc  storeli.w r1, -360(r30)
000b50  8be06021  mul.f.rn r1, r1, r22
000b54  0bea0060  abs.f r20, r1
000b58  1bb29000  slli r4, r1, 9
000b5c  0b617a21  mul.f.rn r2, r20, r23
000b60  13030200  seteq r6, r4, zero
000b64  8f230108  .word 0x0801238f
000b68  6b518fef  load.d r[3:4], -264(r30)
000b6c  0f922320  .word 0x2023920f
000b70  9bc37001  srli r7, r1, 23
000b74  93e00004  setlt.f r1, r1, zero
000b78  9b83f30f  andi r7, r7, 255
000b7c  9bf3f30f  setlti r7, r7, 255
000b80  17936300  or r6, r7, r6
000b84  978a6000  and r21, r1, r6
000b88  d7a20200  jal 5396
000b8c  8f300110  .word 0x1001308f
000b90  1f010e00  addli r2, r28, 0
000b94  e341effd  loadli.w r3,  -268(r30)
000b98  0b620a58  neg.f r4, r20
000b9c  0be1b051  fmac.f.rn r2, r1, r27
000ba0  8b611150  fmac.f.rn r3, r2, r1
000ba4  6301effd  loadli.w r2,  -272(r30)
000ba8  0be11150  fmac.f.rn r2, r3, r1
000bac  e341dffd  loadli.w r3,  -276(r30)
000bb0  8b611150  fmac.f.rn r3, r2, r1
000bb4  0b614a20  mul.f.rn r2, r20, r4
000bb8  8be10158  neg.f r3, r3
000bbc  0f010100  exp.f.rn r2, r2
000bc0  8be03020  mul.f.rn r1, r1, r3
000bc4  ab01803f  lui r3, 260096
000bc8  8be12050  fmac.f.rn r3, r1, r2
000bcc  37a00a00  beq r21, zero, 8
000bd0  8be10158  neg.f r3, r3
000bd4  e3401ffd  loadli.w r1,  -372(r30)
000bd8  67483ffc  storeli.w r3, -380(r30)
000bdc  97808001  and r1, r1, r24
000be0  e7481ffc  storeli.w r1, -372(r30)
000be4  8be06021  mul.f.rn r1, r1, r22
000be8  0bea0060  abs.f r20, r1
000bec  1bb29000  slli r4, r1, 9
000bf0  0b617a21  mul.f.rn r2, r20, r23
000bf4  13030200  seteq r6, r4, zero
000bf8  8f230108  .word 0x0801238f
000bfc  6b518fef  load.d r[3:4], -264(r30)
000c00  0f922320  .word 0x2023920f
000c04  9bc37001  srli r7, r1, 23
000c08  93e00004  setlt.f r1, r1, zero
000c0c  9b83f30f  andi r7, r7, 255
000c10  9bf3f30f  setlti r7, r7, 255
000c14  17936300  or r6, r7, r6
000c18  978a6000  and r21, r1, r6
000c1c  d7a20200  jal 5396
000c20  8f300110  .word 0x1001308f
000c24  1f010e00  addli r2, r28, 0
000c28  e341effd  loadli.w r3,  -268(r30)
000c2c  0b620a58  neg.f r4, r20
000c30  0be1b051  fmac.f.rn r2, r1, r27
000c34  8b611150  fmac.f.rn r3, r2, r1
000c38  6301effd  loadli.w r2,  -272(r30)
000c3c  0be11150  fmac.f.rn r2, r3, r1
000c40  e341dffd  loadli.w r3,  -276(r30)
000c44  8b611150  fmac.f.rn r3, r2, r1
000c48  0b614a20  mul.f.rn r2, r20, r4
000c4c  8be10158  neg.f r3, r3
000c50  0f010100  exp.f.rn r2, r2
000c54  8be03020  mul.f.rn r1, r1, r3
000c58  ab01803f  lui r3, 260096
000c5c  8be12050  fmac.f.rn r3, r1, r2
000c60  37a00a00  beq r21, zero, 8
000c64  8be10158  neg.f r3, r3
000c68  e3000ffd  loadli.w r1,  -384(r30)
000c6c  e7473ffc  storeli.w r3, -388(r30)
000c70  97808001  and r1, r1, r24
000c74  67081ffc  storeli.w r1, -384(r30)
000c78  8be06021  mul.f.rn r1, r1, r22
000c7c  0bea0060  abs.f r20, r1
000c80  1bb29000  slli r4, r1, 9
000c84  0b617a21  mul.f.rn r2, r20, r23
000c88  13030200  seteq r6, r4, zero
000c8c  8f230108  .word 0x0801238f
000c90  6b518fef  load.d r[3:4], -264(r30)
000c94  0f922320  .word 0x2023920f
000c98  9bc37001  srli r7, r1, 23
000c9c  93e00004  setlt.f r1, r1, zero
000ca0  9b83f30f  andi r7, r7, 255
000ca4  9bf3f30f  setlti r7, r7, 255
000ca8  17936300  or r6, r7, r6
000cac  978a6000  and r21, r1, r6
000cb0  d7a20200  jal 5396
000cb4  8f300110  .word 0x1001308f
000cb8  1f010e00  addli r2, r28, 0
000cbc  e341effd  loadli.w r3,  -268(r30)
000cc0  0b620a58  neg.f r4, r20
000cc4  0be1b051  fmac.f.rn r2, r1, r27
000cc8  8b611150  fmac.f.rn r3, r2, r1
000ccc  6301effd  loadli.w r2,  -272(r30)
000cd0  0be11150  fmac.f.rn r2, r3, r1
000cd4  e341dffd  loadli.w r3,  -276(r30)
000cd8  8b611150  fmac.f.rn r3, r2, r1
000cdc  0b614a20  mul.f.rn r2, r20, r4
000ce0  8be10158  neg.f r3, r3
000ce4  0f010100  exp.f.rn r2, r2
000ce8  8be03020  mul.f.rn r1, r1, r3
000cec  ab01803f  lui r3, 260096
000cf0  8be12050  fmac.f.rn r3, r1, r2
000cf4  37a00a00  beq r21, zero, 8
000cf8  8be10158  neg.f r3, r3
000cfc  e300fffc  loadli.w r1,  -392(r30)
000d00  67473ffc  storeli.w r3, -396(r30)
000d04  97808001  and r1, r1, r24
000d08  e7071ffc  storeli.w r1, -392(r30)
000d0c  8be06021  mul.f.rn r1, r1, r22
000d10  0bea0060  abs.f r20, r1
000d14  1bb29000  slli r4, r1, 9
000d18  0b617a21  mul.f.rn r2, r20, r23
000d1c  13030200  seteq r6, r4, zero
000d20  8f230108  .word 0x0801238f
000d24  6b518fef  load.d r[3:4], -264(r30)
000d28  0f922320  .word 0x2023920f
000d2c  9bc37001  srli r7, r1, 23
000d30  93e00004  setlt.f r1, r1, zero
000d34  9b83f30f  andi r7, r7, 255
000d38  9bf3f30f  setlti r7, r7, 255
000d3c  17936300  or r6, r7, r6
000d40  978a6000  and r21, r1, r6
000d44  d7a20200  jal 5396
000d48  8f300110  .word 0x1001308f
000d4c  1f010e00  addli r2, r28, 0
000d50  e341effd  loadli.w r3,  -268(r30)
000d54  0b620a58  neg.f r4, r20
000d58  0be1b051  fmac.f.rn r2, r1, r27
000d5c  8b611150  fmac.f.rn r3, r2, r1
000d60  6301effd  loadli.w r2,  -272(r30)
000d64  0be11150  fmac.f.rn r2, r3, r1
000d68  e341dffd  loadli.w r3,  -276(r30)
000d6c  8b611150  fmac.f.rn r3, r2, r1
000d70  0b614a20  mul.f.rn r2, r20, r4
000d74  8be10158  neg.f r3, r3
000d78  0f010100  exp.f.rn r2, r2
000d7c  8be03020  mul.f.rn r1, r1, r3
000d80  ab01803f  lui r3, 260096
000d84  8be12050  fmac.f.rn r3, r1, r2
000d88  37a00a00  beq r21, zero, 8
000d8c  8be10158  neg.f r3, r3
000d90  e3001ffd  loadli.w r1,  -376(r30)
000d94  67073ffc  storeli.w r3, -400(r30)
000d98  97808001  and r1, r1, r24
000d9c  e7081ffc  storeli.w r1, -376(r30)
000da0  8be06021  mul.f.rn r1, r1, r22
000da4  0bea0060  abs.f r20, r1
000da8  1bb29000  slli r4, r1, 9
000dac  0b617a21  mul.f.rn r2, r20, r23
000db0  13030200  seteq r6, r4, zero
000db4  8f230108  .word 0x0801238f
000db8  6b518fef  load.d r[3:4], -264(r30)
000dbc  0f922320  .word 0x2023920f
000dc0  9bc37001  srli r7, r1, 23
000dc4  93e00004  setlt.f r1, r1, zero
000dc8  9b83f30f  andi r7, r7, 255
000dcc  9bf3f30f  setlti r7, r7, 255
000dd0  17936300  or r6, r7, r6
000dd4  978a6000  and r21, r1, r6
000dd8  d7a20200  jal 5396
000ddc  8f300110  .word 0x1001308f
000de0  1f010e00  addli r2, r28, 0
000de4  e341effd  loadli.w r3,  -268(r30)
000de8  0b620a58  neg.f r4, r20
000dec  0be1b051  fmac.f.rn r2, r1, r27
000df0  8b611150  fmac.f.rn r3, r2, r1
000df4  6301effd  loadli.w r2,  -272(r30)
000df8  0be11150  fmac.f.rn r2, r3, r1
000dfc  e341dffd  loadli.w r3,  -276(r30)
000e00  8b611150  fmac.f.rn r3, r2, r1
000e04  0b614a20  mul.f.rn r2, r20, r4
000e08  2b0a803f  lui r20, 260096
000e0c  8be10158  neg.f r3, r3
000e10  0f010100  exp.f.rn r2, r2
000e14  8be03020  mul.f.rn r1, r1, r3
000e18  0bea2050  fmac.f.rn r20, r1, r2
000e1c  37a00a00  beq r21, zero, 8
000e20  0b6a0a58  neg.f r20, r20
000e24  e3402ffd  loadli.w r1,  -364(r30)
000e28  97808001  and r1, r1, r24
000e2c  67491ffc  storeli.w r1, -364(r30)
000e30  8be06021  mul.f.rn r1, r1, r22
000e34  8bea0060  abs.f r21, r1
000e38  1bb29000  slli r4, r1, 9
000e3c  0be17a21  mul.f.rn r2, r21, r23
000e40  13030200  seteq r6, r4, zero
000e44  8f230108  .word 0x0801238f
000e48  6b518fef  load.d r[3:4], -264(r30)
000e4c  0f922320  .word 0x2023920f
000e50  9bc37001  srli r7, r1, 23
000e54  93e00004  setlt.f r1, r1, zero
000e58  9b83f30f  andi r7, r7, 255
000e5c  9bf3f30f  setlti r7, r7, 255
000e60  17936300  or r6, r7, r6
000e64  178d6000  and r26, r1, r6
000e68  d7a20200  jal 5396
000e6c  8f300110  .word 0x1001308f
000e70  1f010e00  addli r2, r28, 0
000e74  e341effd  loadli.w r3,  -268(r30)
000e78  0be20a58  neg.f r4, r21
000e7c  0be1b051  fmac.f.rn r2, r1, r27
000e80  ab0d803f  lui r27, 260096
000e84  8b611150  fmac.f.rn r3, r2, r1
000e88  6301effd  loadli.w r2,  -272(r30)
000e8c  0be11150  fmac.f.rn r2, r3, r1
000e90  e341dffd  loadli.w r3,  -276(r30)
000e94  8b611150  fmac.f.rn r3, r2, r1
000e98  0be14a20  mul.f.rn r2, r21, r4
000e9c  8be10158  neg.f r3, r3
000ea0  0f010100  exp.f.rn r2, r2
000ea4  8be03020  mul.f.rn r1, r1, r3
000ea8  8bed2050  fmac.f.rn r27, r1, r2
000eac  37200d00  beq r26, zero, 8
000eb0  8bed0d58  neg.f r27, r27
000eb4  e3404ffd  loadli.w r1,  -348(r30)
000eb8  97808001  and r1, r1, r24
000ebc  674a1ffc  storeli.w r1, -348(r30)
000ec0  8be06021  mul.f.rn r1, r1, r22
000ec4  8bea0060  abs.f r21, r1
000ec8  1bb29000  slli r4, r1, 9
000ecc  0be17a21  mul.f.rn r2, r21, r23
000ed0  13030200  seteq r6, r4, zero
000ed4  8f230108  .word 0x0801238f
000ed8  6b518fef  load.d r[3:4], -264(r30)
000edc  0f922320  .word 0x2023920f
000ee0  9bc37001  srli r7, r1, 23
000ee4  93e00004  setlt.f r1, r1, zero
000ee8  9b83f30f  andi r7, r7, 255
000eec  9bf3f30f  setlti r7, r7, 255
000ef0  17936300  or r6, r7, r6
000ef4  178d6000  and r26, r1, r6
000ef8  d7a20200  jal 5396
000efc  8f300110  .word 0x1001308f
000f00  e301dffd  loadli.w r3,  -280(r30)
000f04  1f010e00  addli r2, r28, 0
000f08  0be20a58  neg.f r4, r21
000f0c  0be13050  fmac.f.rn r2, r1, r3
000f10  e341effd  loadli.w r3,  -268(r30)
000f14  8b611150  fmac.f.rn r3, r2, r1
000f18  6301effd  loadli.w r2,  -272(r30)
000f1c  0be11150  fmac.f.rn r2, r3, r1
000f20  e341dffd  loadli.w r3,  -276(r30)
000f24  8b611150  fmac.f.rn r3, r2, r1
000f28  0be14a20  mul.f.rn r2, r21, r4
000f2c  ab0a803f  lui r21, 260096
000f30  8be10158  neg.f r3, r3
000f34  0f010100  exp.f.rn r2, r2
000f38  8be03020  mul.f.rn r1, r1, r3
000f3c  8bea2050  fmac.f.rn r21, r1, r2
000f40  37200d00  beq r26, zero, 8
000f44  8bea0a58  neg.f r21, r21
000f48  e3006ffd  loadli.w r1,  -336(r30)
000f4c  97808001  and r1, r1, r24
000f50  670b1ffc  storeli.w r1, -336(r30)
000f54  8be06021  mul.f.rn r1, r1, r22
000f58  0bed0060  abs.f r26, r1
000f5c  1bb29000  slli r4, r1, 9
000f60  0b617d21  mul.f.rn r2, r26, r23
000f64  13030200  seteq r6, r4, zero
000f68  8f230108  .word 0x0801238f
000f6c  6b518fef  load.d r[3:4], -264(r30)
000f70  0f922320  .word 0x2023920f
000f74  9bc37001  srli r7, r1, 23
000f78  93e00004  setlt.f r1, r1, zero
000f7c  9b83f30f  andi r7, r7, 255
000f80  9bf3f30f  setlti r7, r7, 255
000f84  17936300  or r6, r7, r6
000f88  978b6000  and r23, r1, r6
000f8c  d7a20200  jal 5396
000f90  8f300110  .word 0x1001308f
000f94  e301dffd  loadli.w r3,  -280(r30)
000f98  1f010e00  addli r2, r28, 0
000f9c  0b620d58  neg.f r4, r26
000fa0  2b0e803f  lui r28, 260096
000fa4  0be13050  fmac.f.rn r2, r1, r3
000fa8  e341effd  loadli.w r3,  -268(r30)
000fac  8b611150  fmac.f.rn r3, r2, r1
000fb0  6301effd  loadli.w r2,  -272(r30)
000fb4  0be11150  fmac.f.rn r2, r3, r1
000fb8  e341dffd  loadli.w r3,  -276(r30)
000fbc  8b611150  fmac.f.rn r3, r2, r1
000fc0  0b614d20  mul.f.rn r2, r26, r4
000fc4  8be10158  neg.f r3, r3
000fc8  0f010100  exp.f.rn r2, r2
000fcc  8be03020  mul.f.rn r1, r1, r3
000fd0  0bee2050  fmac.f.rn r28, r1, r2
000fd4  37a00b00  beq r23, zero, 8
000fd8  0b6e0e58  neg.f r28, r28
000fdc  e3407ffd  loadli.w r1,  -324(r30)
000fe0  2b0bffff  lui r22, 1048560
000fe4  17818001  and r2, r1, r24
000fe8  e340bffd  loadli.w r1,  -292(r30)
000fec  e74b2ffc  storeli.w r2, -324(r30)
000ff0  8b601120  mul.f.rn r1, r2, r1
000ff4  6301cffd  loadli.w r2,  -288(r30)
000ff8  8beb0060  abs.f r23, r1
000ffc  1bb29000  slli r4, r1, 9
001000  0be12b20  mul.f.rn r2, r23, r2
001004  13030200  seteq r6, r4, zero
001008  8f230108  .word 0x0801238f
00100c  6b518fef  load.d r[3:4], -264(r30)
001010  0f922320  .word 0x2023920f
001014  9bc37001  srli r7, r1, 23
001018  93e00004  setlt.f r1, r1, zero
00101c  9b83f30f  andi r7, r7, 255
001020  9bf3f30f  setlti r7, r7, 255
001024  17936300  or r6, r7, r6
001028  178c6000  and r24, r1, r6
00102c  d7a20200  jal 5396
001030  8f300110  .word 0x1001308f
001034  6341cffd  loadli.w r2,  -284(r30)
001038  e301dffd  loadli.w r3,  -280(r30)
00103c  0be20b58  neg.f r4, r23
001040  2b0d803f  lui r26, 260096
001044  0be13050  fmac.f.rn r2, r1, r3
001048  e341effd  loadli.w r3,  -268(r30)
00104c  8b611150  fmac.f.rn r3, r2, r1
001050  6301effd  loadli.w r2,  -272(r30)
001054  0be11150  fmac.f.rn r2, r3, r1
001058  e341dffd  loadli.w r3,  -276(r30)
00105c  8b611150  fmac.f.rn r3, r2, r1
001060  0be14b20  mul.f.rn r2, r23, r4
001064  8be10158  neg.f r3, r3
001068  0f010100  exp.f.rn r2, r2
00106c  8be03020  mul.f.rn r1, r1, r3
001070  0bed2050  fmac.f.rn r26, r1, r2
001074  37200c00  beq r24, zero, 8
001078  0b6d0d58  neg.f r26, r26
00107c  e3009ffd  loadli.w r1,  -312(r30)
001080  6301cffd  loadli.w r2,  -288(r30)
001084  97806001  and r1, r1, r22
001088  634bbffd  loadli.w r22,  -292(r30)
00108c  e70c1ffc  storeli.w r1, -312(r30)
001090  8be06021  mul.f.rn r1, r1, r22
001094  8beb0060  abs.f r23, r1
001098  1bb29000  slli r4, r1, 9
00109c  0be12b20  mul.f.rn r2, r23, r2
0010a0  13030200  seteq r6, r4, zero
0010a4  8f230108  .word 0x0801238f
0010a8  6b518fef  load.d r[3:4], -264(r30)
0010ac  0f922320  .word 0x2023920f
0010b0  9bc37001  srli r7, r1, 23
0010b4  93e00004  setlt.f r1, r1, zero
0010b8  9b83f30f  andi r7, r7, 255
0010bc  9bf3f30f  setlti r7, r7, 255
0010c0  17936300  or r6, r7, r6
0010c4  178c6000  and r24, r1, r6
0010c8  d7a20200  jal 5396
0010cc  8f300110  .word 0x1001308f
0010d0  6341cffd  loadli.w r2,  -284(r30)
0010d4  e301dffd  loadli.w r3,  -280(r30)
0010d8  0be20b58  neg.f r4, r23
0010dc  0be13050  fmac.f.rn r2, r1, r3
0010e0  e341effd  loadli.w r3,  -268(r30)
0010e4  8b611150  fmac.f.rn r3, r2, r1
0010e8  6301effd  loadli.w r2,  -272(r30)
0010ec  0be11150  fmac.f.rn r2, r3, r1
0010f0  e341dffd  loadli.w r3,  -276(r30)
0010f4  8b611150  fmac.f.rn r3, r2, r1
0010f8  0be14b20  mul.f.rn r2, r23, r4
0010fc  8be10158  neg.f r3, r3
001100  0f010100  exp.f.rn r2, r2
001104  8be13020  mul.f.rn r3, r1, r3
001108  ab00803f  lui r1, 260096
00110c  8be02150  fmac.f.rn r1, r3, r2
001110  37200c00  beq r24, zero, 8
001114  8be00058  neg.f r1, r1
001118  e3419ffd  loadli.w r3,  -308(r30)
00111c  6341affd  loadli.w r2,  -300(r30)
001120  2b03003f  lui r6, 258048
001124  ab03803f  lui r7, 260096
001128  2b0c807f  lui r24, 522240
00112c  e34bfffb  loadli.w r23,  -516(r30)
001130  6304bffd  loadli.w r8,  -296(r30)
001134  1f098ffe  addli r18, r30, -192
001138  ab024000  lui r5, 1024
00113c  0b616120  mul.f.rn r2, r2, r6
001140  8be17110  add.f.rn r3, r3, r7
001144  0b613120  mul.f.rn r2, r2, r3
001148  97013101  and r3, r2, r19
00114c  93013c04  setlt.u r3, r24, r3
001150  3be00100  bneq r3, zero, 24
001154  9b410101  srli r3, r2, 16
001158  9b811100  andi r3, r3, 1
00115c  0b113110  add.s r2, r2, r3
001160  0b117111  add.s r2, r2, r23
001164  5b010000  j 8
001168  17115100  or r2, r2, r5
00116c  e301affd  loadli.w r3,  -304(r30)
001170  63028ffd  loadli.w r4,  -320(r30)
001174  1b410101  srli r2, r2, 16
001178  73902c00  store.h r2, 0(r25)
00117c  8be16120  mul.f.rn r3, r3, r6
001180  0b627210  add.f.rn r4, r4, r7
001184  8be14120  mul.f.rn r3, r3, r4
001188  17823101  and r4, r3, r19
00118c  13024c04  setlt.u r4, r24, r4
001190  3b600200  bneq r4, zero, 24
001194  1bc10101  srli r2, r3, 16
001198  1b011100  andi r2, r2, 1
00119c  0b912110  add.s r2, r3, r2
0011a0  0b117111  add.s r2, r2, r23
0011a4  5b010000  j 8
0011a8  17915100  or r2, r3, r5
0011ac  e3418ffd  loadli.w r3,  -316(r30)
0011b0  63426ffd  loadli.w r4,  -332(r30)
0011b4  1b410101  srli r2, r2, 16
0011b8  73912c00  store.h r2, 2(r25)
0011bc  8be16120  mul.f.rn r3, r3, r6
0011c0  0b627210  add.f.rn r4, r4, r7
0011c4  8be14120  mul.f.rn r3, r3, r4
0011c8  17823101  and r4, r3, r19
0011cc  13024c04  setlt.u r4, r24, r4
0011d0  3b600200  bneq r4, zero, 24
0011d4  1bc10101  srli r2, r3, 16
0011d8  1b011100  andi r2, r2, 1
0011dc  0b912110  add.s r2, r3, r2
0011e0  0b117111  add.s r2, r2, r23
0011e4  5b010000  j 8
0011e8  17915100  or r2, r3, r5
0011ec  e3017ffd  loadli.w r3,  -328(r30)
0011f0  63025ffd  loadli.w r4,  -344(r30)
0011f4  1b410101  srli r2, r2, 16
0011f8  73922c00  store.h r2, 4(r25)
0011fc  8be16120  mul.f.rn r3, r3, r6
001200  0b627210  add.f.rn r4, r4, r7
001204  8be14120  mul.f.rn r3, r3, r4
001208  17823101  and r4, r3, r19
00120c  13024c04  setlt.u r4, r24, r4
001210  3b600200  bneq r4, zero, 24
001214  1bc10101  srli r2, r3, 16
001218  1b011100  andi r2, r2, 1
00121c  0b912110  add.s r2, r3, r2
001220  0b117111  add.s r2, r2, r23
001224  5b010000  j 8
001228  17915100  or r2, r3, r5
00122c  e3415ffd  loadli.w r3,  -340(r30)
001230  63423ffd  loadli.w r4,  -356(r30)
001234  1b410101  srli r2, r2, 16
001238  73932c00  store.h r2, 6(r25)
00123c  8be16120  mul.f.rn r3, r3, r6
001240  0b627210  add.f.rn r4, r4, r7
001244  8be14120  mul.f.rn r3, r3, r4
001248  17823101  and r4, r3, r19
00124c  13024c04  setlt.u r4, r24, r4
001250  3b600200  bneq r4, zero, 24
001254  1bc10101  srli r2, r3, 16
001258  1b011100  andi r2, r2, 1
00125c  0b912110  add.s r2, r3, r2
001260  0b117111  add.s r2, r2, r23
001264  5b010000  j 8
001268  17915100  or r2, r3, r5
00126c  e3014ffd  loadli.w r3,  -352(r30)
001270  63022ffd  loadli.w r4,  -368(r30)
001274  1b410101  srli r2, r2, 16
001278  73942c00  store.h r2, 8(r25)
00127c  8be16120  mul.f.rn r3, r3, r6
001280  0b627210  add.f.rn r4, r4, r7
001284  8be14120  mul.f.rn r3, r3, r4
001288  17823101  and r4, r3, r19
00128c  13024c04  setlt.u r4, r24, r4
001290  3b600200  bneq r4, zero, 24
001294  1bc10101  srli r2, r3, 16
001298  1b011100  andi r2, r2, 1
00129c  0b912110  add.s r2, r3, r2
0012a0  0b117111  add.s r2, r2, r23
0012a4  5b010000  j 8
0012a8  17915100  or r2, r3, r5
0012ac  e3013ffd  loadli.w r3,  -360(r30)
0012b0  63420ffd  loadli.w r4,  -380(r30)
0012b4  1b410101  srli r2, r2, 16
0012b8  73952c00  store.h r2, 10(r25)
0012bc  8be16120  mul.f.rn r3, r3, r6
0012c0  0b627210  add.f.rn r4, r4, r7
0012c4  8be14120  mul.f.rn r3, r3, r4
0012c8  17823101  and r4, r3, r19
0012cc  13024c04  setlt.u r4, r24, r4
0012d0  3b600200  bneq r4, zero, 24
0012d4  1bc10101  srli r2, r3, 16
0012d8  1b011100  andi r2, r2, 1
0012dc  0b912110  add.s r2, r3, r2
0012e0  0b117111  add.s r2, r2, r23
0012e4  5b010000  j 8
0012e8  17915100  or r2, r3, r5
0012ec  e3411ffd  loadli.w r3,  -372(r30)
0012f0  6342fffc  loadli.w r4,  -388(r30)
0012f4  1b410101  srli r2, r2, 16
0012f8  73962c00  store.h r2, 12(r25)
0012fc  8be16120  mul.f.rn r3, r3, r6
001300  0b627210  add.f.rn r4, r4, r7
001304  8be14120  mul.f.rn r3, r3, r4
001308  17823101  and r4, r3, r19
00130c  13024c04  setlt.u r4, r24, r4
001310  3b600200  bneq r4, zero, 24
001314  1bc10101  srli r2, r3, 16
001318  1b011100  andi r2, r2, 1
00131c  0b912110  add.s r2, r3, r2
001320  0b117111  add.s r2, r2, r23
001324  5b010000  j 8
001328  17915100  or r2, r3, r5
00132c  e3010ffd  loadli.w r3,  -384(r30)
001330  6342effc  loadli.w r4,  -396(r30)
001334  1b410101  srli r2, r2, 16
001338  73972c00  store.h r2, 14(r25)
00133c  8be16120  mul.f.rn r3, r3, r6
001340  0b627210  add.f.rn r4, r4, r7
001344  8be14120  mul.f.rn r3, r3, r4
001348  17823101  and r4, r3, r19
00134c  13024c04  setlt.u r4, r24, r4
001350  3b600200  bneq r4, zero, 24
001354  1bc10101  srli r2, r3, 16
001358  1b011100  andi r2, r2, 1
00135c  0b912110  add.s r2, r3, r2
001360  0b117111  add.s r2, r2, r23
001364  5b010000  j 8
001368  17915100  or r2, r3, r5
00136c  e301fffc  loadli.w r3,  -392(r30)
001370  6302effc  loadli.w r4,  -400(r30)
001374  1b410101  srli r2, r2, 16
001378  73982c00  store.h r2, 16(r25)
00137c  8be16120  mul.f.rn r3, r3, r6
001380  0b627210  add.f.rn r4, r4, r7
001384  8be14120  mul.f.rn r3, r3, r4
001388  17823101  and r4, r3, r19
00138c  13024c04  setlt.u r4, r24, r4
001390  3b600200  bneq r4, zero, 24
001394  1bc10101  srli r2, r3, 16
001398  1b011100  andi r2, r2, 1
00139c  0b912110  add.s r2, r3, r2
0013a0  0b117111  add.s r2, r2, r23
0013a4  5b010000  j 8
0013a8  17915100  or r2, r3, r5
0013ac  e3011ffd  loadli.w r3,  -376(r30)
0013b0  0b627a10  add.f.rn r4, r20, r7
0013b4  1b410101  srli r2, r2, 16
0013b8  73992c00  store.h r2, 18(r25)
0013bc  8be16120  mul.f.rn r3, r3, r6
0013c0  8be14120  mul.f.rn r3, r3, r4
0013c4  17823101  and r4, r3, r19
0013c8  13024c04  setlt.u r4, r24, r4
0013cc  3b600200  bneq r4, zero, 24
0013d0  1bc10101  srli r2, r3, 16
0013d4  1b011100  andi r2, r2, 1
0013d8  0b912110  add.s r2, r3, r2
0013dc  0b117111  add.s r2, r2, r23
0013e0  5b010000  j 8
0013e4  17915100  or r2, r3, r5
0013e8  e3412ffd  loadli.w r3,  -364(r30)
0013ec  0be27d10  add.f.rn r4, r27, r7
0013f0  1b410101  srli r2, r2, 16
0013f4  739a2c00  store.h r2, 20(r25)
0013f8  8be16120  mul.f.rn r3, r3, r6
0013fc  8be14120  mul.f.rn r3, r3, r4
001400  17823101  and r4, r3, r19
001404  13024c04  setlt.u r4, r24, r4
001408  3b600200  bneq r4, zero, 24
00140c  1bc10101  srli r2, r3, 16
001410  1b011100  andi r2, r2, 1
001414  0b912110  add.s r2, r3, r2
001418  0b117111  add.s r2, r2, r23
00141c  5b010000  j 8
001420  17915100  or r2, r3, r5
001424  e3414ffd  loadli.w r3,  -348(r30)
001428  0be27a10  add.f.rn r4, r21, r7
00142c  1b410101  srli r2, r2, 16
001430  739b2c00  store.h r2, 22(r25)
001434  8be16120  mul.f.rn r3, r3, r6
001438  8be14120  mul.f.rn r3, r3, r4
00143c  17823101  and r4, r3, r19
001440  13024c04  setlt.u r4, r24, r4
001444  3b600200  bneq r4, zero, 24
001448  1bc10101  srli r2, r3, 16
00144c  1b011100  andi r2, r2, 1
001450  0b912110  add.s r2, r3, r2
001454  0b117111  add.s r2, r2, r23
001458  5b010000  j 8
00145c  17915100  or r2, r3, r5
001460  e3016ffd  loadli.w r3,  -336(r30)
001464  0b627e10  add.f.rn r4, r28, r7
001468  1b410101  srli r2, r2, 16
00146c  739c2c00  store.h r2, 24(r25)
001470  8be16120  mul.f.rn r3, r3, r6
001474  8be14120  mul.f.rn r3, r3, r4
001478  17823101  and r4, r3, r19
00147c  13024c04  setlt.u r4, r24, r4
001480  3b600200  bneq r4, zero, 24
001484  1bc10101  srli r2, r3, 16
001488  1b011100  andi r2, r2, 1
00148c  0b912110  add.s r2, r3, r2
001490  0b117111  add.s r2, r2, r23
001494  5b010000  j 8
001498  17915100  or r2, r3, r5
00149c  e3417ffd  loadli.w r3,  -324(r30)
0014a0  0b627d10  add.f.rn r4, r26, r7
0014a4  1b410101  srli r2, r2, 16
0014a8  739d2c00  store.h r2, 26(r25)
0014ac  8be16120  mul.f.rn r3, r3, r6
0014b0  8be14120  mul.f.rn r3, r3, r4
0014b4  17823101  and r4, r3, r19
0014b8  13024c04  setlt.u r4, r24, r4
0014bc  3b600200  bneq r4, zero, 24
0014c0  1bc10101  srli r2, r3, 16
0014c4  1b011100  andi r2, r2, 1
0014c8  0b912110  add.s r2, r3, r2
0014cc  0b117111  add.s r2, r2, r23
0014d0  5b010000  j 8
0014d4  17915100  or r2, r3, r5
0014d8  e3019ffd  loadli.w r3,  -312(r30)
0014dc  8be07010  add.f.rn r1, r1, r7
0014e0  1b410101  srli r2, r2, 16
0014e4  739e2c00  store.h r2, 28(r25)
0014e8  8be16120  mul.f.rn r3, r3, r6
0014ec  8be01120  mul.f.rn r1, r3, r1
0014f0  97813001  and r3, r1, r19
0014f4  93013c04  setlt.u r3, r24, r3
0014f8  37c501f6  beq r3, zero, -4784
0014fc  97905000  or r1, r1, r5
001500  5babfdff  j -4776
001504  9f0e8ffb  addli sp, r30, -576
001508  9f8e8e04  addli sp, sp, 576
00150c  00a00300  mfence { lm, sm, gm }
001510  00100000  exit
001514  9f8e7eff  addli sp, sp, -72
001518  9f406000  addli r1, zero, 52
00151c  2bf50f00  lui r10, 255
001520  abf7ffff  lui r15, 1048575
001524  ab040080  lui r9, 524288
001528  17232202  xor.d r[7:8], r[5:6], r[3:4]
00152c  e7c1ee01  storeli.w r30, 28(sp)
001530  67c43e01  storeli.w r19, 68(sp)
001534  67844e01  storeli.w r20, 64(sp)
001538  e7c35e01  storeli.w r21, 60(sp)
00153c  e7836e01  storeli.w r22, 56(sp)
001540  67c37e01  storeli.w r23, 52(sp)
001544  67838e01  storeli.w r24, 48(sp)
001548  e7c29e01  storeli.w r25, 44(sp)
00154c  e782ae01  storeli.w r26, 40(sp)
001550  67c2be01  storeli.w r27, 36(sp)
001554  6782ce01  storeli.w r28, 32(sp)
001558  e781fe01  storeli.w r31, 24(sp)
00155c  1f8f9e00  addli r30, sp, 72
001560  1f040000  addli r8, zero, 0
001564  97451102  srl.d r[12:13], r[3:4], r1
001568  17481202  srl.d r[17:18], r[5:6], r1
00156c  1b17f5ff  ori r14, r10, 4095
001570  9b96f7ff  ori r13, r15, 4095
001574  17038302  and.d r[7:8], r[7:8], r[9:10]
001578  9b80f57f  andi r1, r11, 2047
00157c  1b05f87f  andi r10, r16, 2047
001580  9b982780  ori r17, r15, 2050
001584  1704d102  and.d r[9:10], r[3:4], r[14:15]
001588  9705d202  and.d r[12:13], r[5:6], r[14:15]
00158c  1f9800f0  addli r16, r1, -2047
001590  13081805  setlt.u r16, r16, r17
001594  3b700800  bneq r16, zero, 28
001598  1f1805f0  addli r16, r10, -2047
00159c  9b971780  ori r15, r15, 2049
0015a0  93870705  setlt.u r15, r15, r16
0015a4  37b00700  beq r15, zero, 12
0015a8  1f020000  addli r4, zero, 0
0015ac  5b0b0000  j 88
0015b0  abf7ff7f  lui r15, 524287
0015b4  2b09f07f  lui r18, 524032
0015b8  9f180000  addli r17, zero, 1
0015bc  1b97f7ff  ori r14, r15, 4095
0015c0  9707d102  and.d r[16:17], r[3:4], r[14:15]
0015c4  93a91705  setlt.ul r19, r[16:17], r[18:19]
0015c8  3be00900  bneq r19, zero, 24
0015cc  ab020800  lui r5, 128
0015d0  9f060000  addli r13, zero, 0
0015d4  1f020000  addli r4, zero, 0
0015d8  17114102  or.d r[3:4], r[3:4], r[5:6]
0015dc  5b040000  j 32
0015e0  1701d202  and.d r[3:4], r[5:6], r[14:15]
0015e4  93261105  setlt.ul r13, r[3:4], r[18:19]
0015e8  3bf80600  bneq r13, zero, 540
0015ec  ab010800  lui r3, 128
0015f0  9f060000  addli r13, zero, 0
0015f4  1f010000  addli r2, zero, 0
0015f8  17112202  or.d r[3:4], r[5:6], r[3:4]
0015fc  1f020000  addli r4, zero, 0
001600  b7c90600  beq r13, zero, 624
001604  ab011000  lui r3, 256
001608  9f371000  addli r15, zero, 11
00160c  abf9ffff  lui r19, 1048575
001610  2bf90475  lui r18, 479311
001614  9f582000  addli r17, zero, 21
001618  73346ffc  store.d r[7:8], -56(r30)
00161c  9f723000  addli r5, zero, 31
001620  73308ffc  store.d r[9:10], -64(r30)
001624  8b90a018  sub.s r1, r1, r10
001628  1f010000  addli r2, zero, 0
00162c  97b7f502  sll.d r[16:17], r[12:13], r15
001630  9b1a3933  ori r21, r18, 819
001634  8b101210  add.s r1, r4, r1
001638  97162402  or.d r[14:15], r[9:10], r[3:4]
00163c  17912502  or.d r[3:4], r[12:13], r[3:4]
001640  9b950980  ori r11, r19, 2048
001644  733cdffa  store.d r[14:15], -72(r30)
001648  338c0528  zext_int2long r[25:26], r11
00164c  174b1103  srl.d r[23:24], r[3:4], r17
001650  9b95f9ff  ori r11, r19, 4095
001654  9b99e9ff  ori r19, r19, 4094
001658  b3880528  zext_int2long r[18:19], r11
00165c  8b9a6a19  sub.s r21, r21, r22
001660  97878703  and.d r[16:17], r[16:17], r[25:26]
001664  b3890928  zext_int2long r[20:21], r19
001668  170d1b03  and.d r[27:28], r[23:24], r[18:19]
00166c  b38a0a28  zext_int2long r[22:23], r21
001670  0b335d21  mul.sl r[7:8], r[27:28], r[22:23]
001674  0b930358  neg.s r6, r7
001678  33030328  zext_int2long r[7:8], r6
00167c  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
001680  17435302  srl.d r[7:8], r[7:8], r5
001684  17031303  and.d r[7:8], r[7:8], r[18:19]
001688  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
00168c  8b1a0b58  neg.s r21, r22
001690  b38a0a28  zext_int2long r[22:23], r21
001694  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
001698  17435302  srl.d r[7:8], r[7:8], r5
00169c  17031303  and.d r[7:8], r[7:8], r[18:19]
0016a0  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
0016a4  8b1a0b58  neg.s r21, r22
0016a8  1f0b4000  addli r22, zero, 32
0016ac  33840a28  zext_int2long r[9:10], r21
0016b0  9f1a0000  addli r21, zero, 1
0016b4  0b338320  mul.sl r[7:8], r[7:8], r[9:10]
0016b8  33840a28  zext_int2long r[9:10], r21
0016bc  17435302  srl.d r[7:8], r[7:8], r5
0016c0  1f73f3ff  addli r6, r6, -1
0016c4  33030328  zext_int2long r[7:8], r6
0016c8  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
0016cc  8b3b6d20  mul.sl r[24:25], r[27:28], r[7:8]
0016d0  97c76703  srl.d r[16:17], r[16:17], r22
0016d4  8ba7fb10  add.ul r[16:17], r[24:25], r[16:17]
0016d8  0b34f418  sub.sl r[9:10], r[9:10], r[16:17]
0016dc  97071403  and.d r[16:17], r[9:10], r[18:19]
0016e0  17446403  srl.d r[9:10], r[9:10], r22
0016e4  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
0016e8  97cb5702  srl.d r[24:25], r[16:17], r5
0016ec  8b328320  mul.sl r[6:7], r[7:8], r[9:10]
0016f0  97b75603  sll.d r[16:17], r[14:15], r21
0016f4  abf41f00  lui r9, 511
0016f8  97b25203  sll.d r[6:7], r[6:7], r21
0016fc  97cc6703  srl.d r[26:27], r[16:17], r22
001700  978d3703  and.d r[28:29], r[16:17], r[20:21]
001704  1b96f4ff  ori r12, r9, 4095
001708  8ba27211  add.ul r[6:7], r[6:7], r[24:25]
00170c  a7f232fe  addli.d r[6:7], r[6:7], 32543
001710  97831203  and.d r[8:9], r[6:7], r[18:19]
001714  97c26203  srl.d r[6:7], r[6:7], r22
001718  8bbbb321  mul.sl r[24:25], r[8:9], r[28:29]
00171c  8bb39321  mul.sl r[8:9], r[8:9], r[26:27]
001720  8bbdb221  mul.sl r[28:29], r[6:7], r[28:29]
001724  8bb29221  mul.sl r[6:7], r[6:7], r[26:27]
001728  97881303  and.d r[18:19], r[8:9], r[18:19]
00172c  97cb6b03  srl.d r[24:25], r[24:25], r22
001730  97cc6d03  srl.d r[26:27], r[28:29], r22
001734  97893d03  and.d r[20:21], r[28:29], r[20:21]
001738  97c36303  srl.d r[8:9], r[8:9], r22
00173c  8ba81b11  add.ul r[18:19], r[24:25], r[18:19]
001740  0ba25c10  add.ul r[5:6], r[26:27], r[6:7]
001744  8ba83811  add.ul r[18:19], r[18:19], r[20:21]
001748  0b227210  add.ul r[5:6], r[5:6], r[8:9]
00174c  17c36803  srl.d r[7:8], r[18:19], r22
001750  0b226210  add.ul r[5:6], r[5:6], r[7:8]
001754  13a34504  setlt.ul r6, r[12:13], r[5:6]
001758  3b710300  bneq r6, zero, 92
00175c  1f536000  addli r6, zero, 53
001760  eb540ffc  load.d r[10:11], -64(r30)
001764  8b332220  mul.sl r[8:9], r[5:6], r[3:4]
001768  9fe0f007  addli r1, r1, 1022
00176c  97b46402  sll.d r[10:11], r[10:11], r6
001770  0bb47418  sub.sl r[9:10], r[10:11], r[8:9]
001774  1f73f00f  addli r6, zero, 2047
001778  3fa06000  blt.s r1, r6, 8
00177c  5b0c0000  j 96
001780  1f150000  addli r10, zero, 1
001784  bfb1a000  blt.s r1, r10, 108
001788  2bf30f00  lui r6, 255
00178c  abf3ffff  lui r7, 1048575
001790  b3850028  zext_int2long r[12:13], r1
001794  9f406000  addli r1, zero, 52
001798  1734a402  sll.d r[9:10], r[9:10], r10
00179c  1b17f3ff  ori r14, r6, 4095
0017a0  97b51502  sll.d r[12:13], r[12:13], r1
0017a4  9b96f3ff  ori r13, r7, 4095
0017a8  1702d202  and.d r[5:6], r[5:6], r[14:15]
0017ac  17924502  or.d r[5:6], r[12:13], r[5:6]
0017b0  db140000  j 164
0017b4  17425203  srl.d r[5:6], r[5:6], r21
0017b8  1f436000  addli r6, zero, 52
0017bc  eb530ffc  load.d r[8:9], -64(r30)
0017c0  9ff0f007  addli r1, r1, 1023
0017c4  eb578ffb  load.d r[16:17], -72(r30)
0017c8  17b36302  sll.d r[7:8], r[8:9], r6
0017cc  0b342220  mul.sl r[9:10], r[5:6], r[3:4]
0017d0  0b348318  sub.sl r[9:10], r[7:8], r[9:10]
0017d4  1f73f00f  addli r6, zero, 2047
0017d8  bfae60fe  blt.s r1, r6, -88
0017dc  2b01f07f  lui r2, 524032
0017e0  eb518ffc  load.d r[4:5], -56(r30)
0017e4  9f000000  addli r1, zero, 0
0017e8  17911102  or.d r[3:4], r[4:5], r[2:3]
0017ec  db100000  j 132
0017f0  2bf3ffff  lui r6, 1048575
0017f4  1b13b3fc  ori r6, r6, 4043
0017f8  bf701300  blt.s r6, r1, 60
0017fc  6b518ffc  load.d r[3:4], -56(r30)
001800  5b0e0000  j 112
001804  ab02f07f  lui r5, 524032
001808  1f020000  addli r4, zero, 0
00180c  93a64702  setneq.d r13, r[16:17], r[5:6]
001810  3be20600  bneq r13, zero, 152
001814  1f020000  addli r4, zero, 0
001818  13214100  seteq.d r2, r[3:4], r[5:6]
00181c  b7060100  beq r2, zero, 416
001820  ab01f87f  lui r3, 524160
001824  9f060000  addli r13, zero, 0
001828  1f020000  addli r4, zero, 0
00182c  1f010000  addli r2, zero, 0
001830  5bbaffff  j -560
001834  9f130000  addli r7, zero, 1
001838  1fc36000  addli r6, r1, 52
00183c  8b901318  sub.s r1, r7, r1
001840  17b46702  sll.d r[9:10], r[16:17], r6
001844  17421202  srl.d r[5:6], r[5:6], r1
001848  0b354120  mul.sl r[11:12], r[3:4], r[5:6]
00184c  17337502  sll.d r[7:8], r[11:12], r7
001850  0b346418  sub.sl r[9:10], r[9:10], r[7:8]
001854  23031200  andi.d r[7:8], r[5:6], 1
001858  0b238310  add.ul r[7:8], r[7:8], r[9:10]
00185c  93206104  setlt.ul r1, r[3:4], r[7:8]
001860  b3800028  zext_int2long r[2:3], r1
001864  8b201210  add.ul r[2:3], r[5:6], r[2:3]
001868  eb518ffc  load.d r[4:5], -56(r30)
00186c  17913002  or.d r[3:4], r[2:3], r[4:5]
001870  e38f3e00  loadli.w r31,  24(sp)
001874  63cf3e00  loadli.w r30,  28(sp)
001878  638e4e00  loadli.w r28,  32(sp)
00187c  e3cd4e00  loadli.w r27,  36(sp)
001880  638d5e00  loadli.w r26,  40(sp)
001884  e3cc5e00  loadli.w r25,  44(sp)
001888  638c6e00  loadli.w r24,  48(sp)
00188c  e3cb6e00  loadli.w r23,  52(sp)
001890  638b7e00  loadli.w r22,  56(sp)
001894  e3ca7e00  loadli.w r21,  60(sp)
001898  638a8e00  loadli.w r20,  64(sp)
00189c  e3c98e00  loadli.w r19,  68(sp)
0018a0  9f8e9e00  addli sp, sp, 72
0018a4  5f800f00  jr r31, 0
0018a8  1f020000  addli r4, zero, 0
0018ac  13224102  setneq.d r4, r[3:4], r[5:6]
0018b0  3b500200  bneq r4, zero, 20
0018b4  9f060000  addli r13, zero, 0
0018b8  1f020000  addli r4, zero, 0
0018bc  27010300  addli.d r[3:4], r[7:8], 0
0018c0  5ba8ffff  j -704
0018c4  33020028  zext_int2long r[5:6], zero
0018c8  13a24702  setneq.d r4, r[16:17], r[5:6]
0018cc  37240200  beq r4, zero, 264
0018d0  33020028  zext_int2long r[5:6], zero
0018d4  13224102  setneq.d r4, r[3:4], r[5:6]
0018d8  b7130200  beq r4, zero, 228
0018dc  2bf20f00  lui r4, 255
0018e0  abf2ffff  lui r5, 1048575
0018e4  1b17f2ff  ori r14, r4, 4095
0018e8  9b96f2ff  ori r13, r5, 4095
0018ec  13a2f604  setlt.ul r4, r[14:15], r[16:17]
0018f0  bb630200  bneq r4, zero, 248
0018f4  9f120000  addli r5, zero, 1
0018f8  9f270000  addli r15, zero, 2
0018fc  1f420000  addli r4, zero, 4
001900  1f081000  addli r16, zero, 8
001904  97485402  srl.d r[18:19], r[9:10], r5
001908  97181403  or.d r[18:19], r[9:10], r[18:19]
00190c  97c9f802  srl.d r[20:21], r[18:19], r15
001910  97983803  or.d r[18:19], r[18:19], r[20:21]
001914  97c94802  srl.d r[20:21], r[18:19], r4
001918  97983803  or.d r[18:19], r[18:19], r[20:21]
00191c  9f092000  addli r19, zero, 16
001920  17ca0803  srl.d r[21:22], r[18:19], r16
001924  17984803  or.d r[17:18], r[18:19], r[21:22]
001928  1f094000  addli r18, zero, 32
00192c  97493803  srl.d r[20:21], r[17:18], r19
001930  17183803  or.d r[17:18], r[17:18], r[20:21]
001934  2b5a5555  lui r20, 349525
001938  17492803  srl.d r[19:20], r[17:18], r18
00193c  17182803  or.d r[17:18], r[17:18], r[19:20]
001940  33990628  sext_int2long r[19:20], r13
001944  17282803  xor.d r[17:18], r[17:18], r[19:20]
001948  1b195a55  ori r18, r20, 1365
00194c  174a5802  srl.d r[21:22], r[17:18], r5
001950  9f090900  addli r19, r18, 0
001954  ab323333  lui r5, 209715
001958  17092a03  and.d r[19:20], r[21:22], r[19:20]
00195c  1b9a3233  ori r20, r5, 819
001960  ab020f0f  lui r5, 61680
001964  0b382819  sub.sl r[17:18], r[17:18], r[19:20]
001968  9f0a0a00  addli r21, r20, 0
00196c  1749f802  srl.d r[19:20], r[17:18], r15
001970  97074803  and.d r[16:17], r[17:18], r[21:22]
001974  97084903  and.d r[18:19], r[19:20], r[21:22]
001978  ab090101  lui r19, 4112
00197c  1f0a7000  addli r20, zero, 56
001980  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
001984  97c84702  srl.d r[18:19], r[16:17], r4
001988  1b92f2f0  ori r4, r5, 3855
00198c  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
001990  9f020200  addli r5, r4, 0
001994  9f481000  addli r17, zero, 12
001998  17824702  and.d r[5:6], r[16:17], r[5:6]
00199c  9b971910  ori r15, r19, 257
0019a0  1f880700  addli r16, r15, 0
0019a4  0b32f220  mul.sl r[5:6], r[5:6], r[16:17]
0019a8  17424203  srl.d r[5:6], r[5:6], r20
0019ac  9f57e2ff  addli r15, r4, -11
0019b0  0b924818  sub.s r4, r17, r4
0019b4  1734f402  sll.d r[9:10], r[9:10], r15
0019b8  db060000  j 52
0019bc  ab01f07f  lui r3, 524032
0019c0  9f060000  addli r13, zero, 0
0019c4  1f020000  addli r4, zero, 0
0019c8  1f010000  addli r2, zero, 0
0019cc  17112302  or.d r[3:4], r[7:8], r[3:4]
0019d0  5b86ffff  j -976
0019d4  33020028  zext_int2long r[5:6], zero
0019d8  13214100  seteq.d r2, r[3:4], r[5:6]
0019dc  bb430100  bneq r2, zero, 240
0019e0  27010300  addli.d r[3:4], r[7:8], 0
0019e4  5b1e0000  j 240
0019e8  1f020000  addli r4, zero, 0
0019ec  13a12604  setlt.ul r2, r[14:15], r[3:4]
0019f0  3b530100  bneq r2, zero, 212
0019f4  9f160000  addli r13, zero, 1
0019f8  9f210000  addli r3, zero, 2
0019fc  1f410000  addli r2, zero, 4
001a00  9f021000  addli r5, zero, 8
001a04  1f072000  addli r14, zero, 16
001a08  97c7d502  srl.d r[16:17], r[12:13], r13
001a0c  9797f502  or.d r[16:17], r[12:13], r[16:17]
001a10  97c83702  srl.d r[18:19], r[16:17], r3
001a14  97971703  or.d r[16:17], r[16:17], r[18:19]
001a18  97c82702  srl.d r[18:19], r[16:17], r2
001a1c  97971703  or.d r[16:17], r[16:17], r[18:19]
001a20  97c85702  srl.d r[18:19], r[16:17], r5
001a24  9f024000  addli r5, zero, 32
001a28  97971703  or.d r[16:17], r[16:17], r[18:19]
001a2c  97c8e702  srl.d r[18:19], r[16:17], r14
001a30  2bf7ffff  lui r14, 1048575
001a34  97971703  or.d r[16:17], r[16:17], r[18:19]
001a38  1b17f7ff  ori r14, r14, 4095
001a3c  97c85702  srl.d r[18:19], r[16:17], r5
001a40  ab525555  lui r5, 349525
001a44  97971703  or.d r[16:17], r[16:17], r[18:19]
001a48  b3180728  sext_int2long r[18:19], r14
001a4c  9b995255  ori r19, r5, 1365
001a50  ab323333  lui r5, 209715
001a54  17a71703  xor.d r[15:16], r[16:17], r[18:19]
001a58  1f8a0900  addli r20, r19, 0
001a5c  1748d702  srl.d r[17:18], r[15:16], r13
001a60  17083803  and.d r[17:18], r[17:18], r[20:21]
001a64  1b993233  ori r18, r5, 819
001a68  ab020101  lui r5, 4112
001a6c  0b370719  sub.sl r[15:16], r[15:16], r[17:18]
001a70  9f090900  addli r19, r18, 0
001a74  17483702  srl.d r[17:18], r[15:16], r3
001a78  17072703  and.d r[15:16], r[15:16], r[19:20]
001a7c  ab010f0f  lui r3, 61680
001a80  17082803  and.d r[17:18], r[17:18], r[19:20]
001a84  1b99f1f0  ori r18, r3, 3855
001a88  0b270711  add.ul r[15:16], r[15:16], r[17:18]
001a8c  9f090900  addli r19, r18, 0
001a90  17412702  srl.d r[3:4], r[15:16], r2
001a94  0b212710  add.ul r[3:4], r[15:16], r[3:4]
001a98  1b971210  ori r14, r5, 257
001a9c  9f027000  addli r5, zero, 56
001aa0  17012103  and.d r[3:4], r[3:4], r[19:20]
001aa4  9f070700  addli r15, r14, 0
001aa8  0b31e120  mul.sl r[3:4], r[3:4], r[15:16]
001aac  17415102  srl.d r[3:4], r[3:4], r5
001ab0  9f52e1ff  addli r5, r2, -11
001ab4  0b114110  add.s r2, r2, r4
001ab8  97b55502  sll.d r[12:13], r[12:13], r5
001abc  1f42e1ff  addli r4, r2, -12
001ac0  5b010000  j 8
001ac4  9f160000  addli r13, zero, 1
001ac8  5b67ffff  j -1224
001acc  ab01f87f  lui r3, 524160
001ad0  1f010000  addli r2, zero, 0
001ad4  9f060000  addli r13, zero, 0
001ad8  db64ffff  j -1244
001adc  00100000  exit
001ae0  00100000  exit
001ae4  00100000  exit
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
