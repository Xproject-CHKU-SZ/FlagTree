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
0000dc  9f8e0efd  addli sp, sp, -384
0000e0  1f8f8e02  addli r30, sp, 320
0000e4  e30a4f00  loadli.w r21,  32(r30)
0000e8  e3413f00  loadli.w r3,  28(r30)
0000ec  634b4f00  loadli.w r22,  36(r30)
0000f0  0b923a20  mul.s r4, r21, r3
0000f4  80510002  load_param_i r3, 0
0000f8  0b126221  mul.s r4, r4, r22
0000fc  4b323202  ble.s r4, r3, 1164
000100  00360002  core_id r12
000104  9f200000  addli r1, zero, 2
000108  80d50002  load_param_i r11, 1
00010c  1f170000  addli r14, zero, 1
000110  1f084000  addli r16, zero, 32
000114  ab09803f  lui r19, 260096
000118  9f0b8000  addli r23, zero, 64
00011c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000120  1b364600  slli r12, r12, 4
000124  fe8100e0  vmmov mr3, r1
000128  0b9c6131  div.s r24, r3, r22
00012c  9f000008  addli r1, zero, 1024
000130  ab0c00f0  lui r25, 983040
000134  ab0d00f0  lui r27, 983040
000138  92300002  vadd.s.mz vr1{mr1}, zero, vr0
00013c  1f100000  addli zero, zero, 1
000140  8b91b110  add.s r3, r3, r11
000144  171e9801  or r28, r16, r25
000148  971db801  or r27, r16, r27
00014c  7e0100e0  vmmov mr2, zero
000150  17200000  xor zero, zero, zero
000154  12310002  vadd.s.mz vr2{mr1}, zero, vr0
000158  0b1c5c31  div.s r24, r24, r21
00015c  1b3cac00  slli r24, r24, 10
000160  0b1ccc10  add.s r24, r24, r12
000164  0b1d1c38  mod.s r26, r24, r1
000168  331c0c28  sext_int2long r[25:26], r24
00016c  eb500f00  load.d r[2:3], 0(r30)
000170  9733ec02  sll.d r[8:9], r[25:26], r14
000174  8ba37010  add.ul r[8:9], r[2:3], r[8:9]
000178  eb508f00  load.d r[2:3], 8(r30)
00017c  b3120d28  sext_int2long r[6:7], r26
000180  97b2e202  sll.d r[6:7], r[6:7], r14
000184  8ba25010  add.ul r[6:7], r[2:3], r[6:7]
000188  9f008ffd  addli r1, r30, -320
00018c  7fae1300  l_gm2lm r28, r1, 0(r[8:9])
000190  9f000ffe  addli r1, r30, -256
000194  ffad1200  l_gm2lm r27, r1, 0(r[6:7])
000198  00a00000  mfence { lm }
00019c  eb320fec  load.hu r5, -320(r30)
0001a0  6b332fec  load.hu r6, -318(r30)
0001a4  eb308fed  load.hu r1, -296(r30)
0001a8  eb334fec  load.hu r7, -316(r30)
0001ac  6b346fec  load.hu r8, -314(r30)
0001b0  6b3d8fec  load.hu r26, -312(r30)
0001b4  eb3dafec  load.hu r27, -310(r30)
0001b8  6b3ecfec  load.hu r28, -308(r30)
0001bc  eb34efec  load.hu r9, -306(r30)
0001c0  6b350fed  load.hu r10, -304(r30)
0001c4  eb362fed  load.hu r13, -302(r30)
0001c8  eb374fed  load.hu r15, -300(r30)
0001cc  eb386fed  load.hu r17, -298(r30)
0001d0  6b31afed  load.hu r2, -294(r30)
0001d4  6b39cfed  load.hu r18, -292(r30)
0001d8  6b3aefed  load.hu r20, -290(r30)
0001dc  b3920218  bfloat2float.rn r5, r5
0001e0  b3900018  bfloat2float.rn r1, r1
0001e4  eaa01234  vor.u.mh vr1{mr2}, r5, vr1
0001e8  b3120318  bfloat2float.rn r5, r6
0001ec  1f430000  addli r6, zero, 4
0001f0  7e0003e0  vmmov mr0, r6
0001f4  1f031000  addli r6, zero, 8
0001f8  eaa01236  vor.u.mh vr1{mr3}, r5, vr1
0001fc  b3920318  bfloat2float.rn r5, r7
000200  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000204  b3120418  bfloat2float.rn r5, r8
000208  7e0003e0  vmmov mr0, r6
00020c  1f032000  addli r6, zero, 16
000210  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000214  b3120d18  bfloat2float.rn r5, r26
000218  7e0003e0  vmmov mr0, r6
00021c  1f034000  addli r6, zero, 32
000220  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000224  b3920d18  bfloat2float.rn r5, r27
000228  7e0003e0  vmmov mr0, r6
00022c  1f038000  addli r6, zero, 64
000230  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000234  b3120e18  bfloat2float.rn r5, r28
000238  7e0003e0  vmmov mr0, r6
00023c  1f030001  addli r6, zero, 128
000240  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000244  b3920418  bfloat2float.rn r5, r9
000248  7e0003e0  vmmov mr0, r6
00024c  1f030002  addli r6, zero, 256
000250  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000254  b3120518  bfloat2float.rn r5, r10
000258  7e0003e0  vmmov mr0, r6
00025c  1f030004  addli r6, zero, 512
000260  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000264  b3920618  bfloat2float.rn r5, r13
000268  7e0003e0  vmmov mr0, r6
00026c  1f030008  addli r6, zero, 1024
000270  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000274  b3920718  bfloat2float.rn r5, r15
000278  7e0003e0  vmmov mr0, r6
00027c  1f030010  addli r6, zero, 2048
000280  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000284  b3920818  bfloat2float.rn r5, r17
000288  7e0003e0  vmmov mr0, r6
00028c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000290  9f020020  addli r5, zero, 4096
000294  7e8002e0  vmmov mr0, r5
000298  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00029c  b3100118  bfloat2float.rn r1, r2
0002a0  1f010040  addli r2, zero, 8192
0002a4  7e0001e0  vmmov mr0, r2
0002a8  2b410000  lui r2, 4
0002ac  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0002b0  b3100918  bfloat2float.rn r1, r18
0002b4  7e0001e0  vmmov mr0, r2
0002b8  2b810000  lui r2, 8
0002bc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0002c0  b3100a18  bfloat2float.rn r1, r20
0002c4  7e0001e0  vmmov mr0, r2
0002c8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0002cc  eb300ff0  load.hu r1, -256(r30)
0002d0  6b312ff0  load.hu r2, -254(r30)
0002d4  eb324ff0  load.hu r5, -252(r30)
0002d8  6b336ff0  load.hu r6, -250(r30)
0002dc  eb338ff0  load.hu r7, -248(r30)
0002e0  6b34aff0  load.hu r8, -246(r30)
0002e4  eb34cff0  load.hu r9, -244(r30)
0002e8  6b35eff0  load.hu r10, -242(r30)
0002ec  eb360ff1  load.hu r13, -240(r30)
0002f0  eb372ff1  load.hu r15, -238(r30)
0002f4  eb384ff1  load.hu r17, -236(r30)
0002f8  6b396ff1  load.hu r18, -234(r30)
0002fc  6b3a8ff1  load.hu r20, -232(r30)
000300  6b3daff1  load.hu r26, -230(r30)
000304  eb3dcff1  load.hu r27, -228(r30)
000308  6b3eeff1  load.hu r28, -226(r30)
00030c  b3900018  bfloat2float.rn r1, r1
000310  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000314  b3100118  bfloat2float.rn r1, r2
000318  1f410000  addli r2, zero, 4
00031c  7e0101e0  vmmov mr2, r2
000320  1f011000  addli r2, zero, 8
000324  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
000328  b3900218  bfloat2float.rn r1, r5
00032c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000330  b3100318  bfloat2float.rn r1, r6
000334  7e0101e0  vmmov mr2, r2
000338  1f012000  addli r2, zero, 16
00033c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000340  b3900318  bfloat2float.rn r1, r7
000344  7e0101e0  vmmov mr2, r2
000348  1f014000  addli r2, zero, 32
00034c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000350  b3100418  bfloat2float.rn r1, r8
000354  7e0101e0  vmmov mr2, r2
000358  1f018000  addli r2, zero, 64
00035c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000360  b3900418  bfloat2float.rn r1, r9
000364  7e0101e0  vmmov mr2, r2
000368  1f010001  addli r2, zero, 128
00036c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000370  b3100518  bfloat2float.rn r1, r10
000374  7e0101e0  vmmov mr2, r2
000378  1f010002  addli r2, zero, 256
00037c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000380  b3900618  bfloat2float.rn r1, r13
000384  7e0101e0  vmmov mr2, r2
000388  1f010004  addli r2, zero, 512
00038c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000390  b3900718  bfloat2float.rn r1, r15
000394  7e0101e0  vmmov mr2, r2
000398  1f010008  addli r2, zero, 1024
00039c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003a0  b3900818  bfloat2float.rn r1, r17
0003a4  7e0101e0  vmmov mr2, r2
0003a8  1f010010  addli r2, zero, 2048
0003ac  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003b0  b3100918  bfloat2float.rn r1, r18
0003b4  7e0101e0  vmmov mr2, r2
0003b8  1f010020  addli r2, zero, 4096
0003bc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003c0  b3100a18  bfloat2float.rn r1, r20
0003c4  7e0101e0  vmmov mr2, r2
0003c8  1f010040  addli r2, zero, 8192
0003cc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003d0  b3100d18  bfloat2float.rn r1, r26
0003d4  7e0101e0  vmmov mr2, r2
0003d8  2b410000  lui r2, 4
0003dc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003e0  b3900d18  bfloat2float.rn r1, r27
0003e4  7e0101e0  vmmov mr2, r2
0003e8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003ec  b3100e18  bfloat2float.rn r1, r28
0003f0  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0003f4  9f008fff  addli r1, r30, -64
0003f8  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0003fc  1a111002  vsub.f.mz.rn vr2{mr1}, zero, vr1
000400  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000404  00a00000  mfence { lm }
000408  e3008fff  loadli.w r1,  -64(r30)
00040c  63418fff  loadli.w r2,  -60(r30)
000410  e302afff  loadli.w r5,  -48(r30)
000414  6343afff  loadli.w r6,  -44(r30)
000418  e303bfff  loadli.w r7,  -40(r30)
00041c  6344bfff  loadli.w r8,  -36(r30)
000420  e304cfff  loadli.w r9,  -32(r30)
000424  630d9fff  loadli.w r26,  -56(r30)
000428  e34d9fff  loadli.w r27,  -52(r30)
00042c  6345cfff  loadli.w r10,  -28(r30)
000430  e306dfff  loadli.w r13,  -24(r30)
000434  e347dfff  loadli.w r15,  -20(r30)
000438  e308efff  loadli.w r17,  -16(r30)
00043c  6349efff  loadli.w r18,  -12(r30)
000440  630affff  loadli.w r20,  -8(r30)
000444  634effff  loadli.w r28,  -4(r30)
000448  8f800000  exp.f.rn r1, r1
00044c  0f010100  exp.f.rn r2, r2
000450  8f820200  exp.f.rn r5, r5
000454  0f030300  exp.f.rn r6, r6
000458  8f830300  exp.f.rn r7, r7
00045c  0f040400  exp.f.rn r8, r8
000460  8f840400  exp.f.rn r9, r9
000464  8be03011  add.f.rn r1, r1, r19
000468  0b613111  add.f.rn r2, r2, r19
00046c  8be23211  add.f.rn r5, r5, r19
000470  0b633311  add.f.rn r6, r6, r19
000474  8be33311  add.f.rn r7, r7, r19
000478  0b643411  add.f.rn r8, r8, r19
00047c  8be43411  add.f.rn r9, r9, r19
000480  8f801918  div.f.rn r1, r19, r1
000484  0f812918  div.f.rn r2, r19, r2
000488  8f825918  div.f.rn r5, r19, r5
00048c  0f836918  div.f.rn r6, r19, r6
000490  8f837918  div.f.rn r7, r19, r7
000494  0f848918  div.f.rn r8, r19, r8
000498  8f849918  div.f.rn r9, r19, r9
00049c  67081ffe  storeli.w r1, -128(r30)
0004a0  8f000d00  exp.f.rn r1, r26
0004a4  67482ffe  storeli.w r2, -124(r30)
0004a8  0f810d00  exp.f.rn r2, r27
0004ac  67095ffe  storeli.w r5, -112(r30)
0004b0  8f820700  exp.f.rn r5, r15
0004b4  67496ffe  storeli.w r6, -108(r30)
0004b8  0f830800  exp.f.rn r6, r17
0004bc  e7097ffe  storeli.w r7, -104(r30)
0004c0  8f030900  exp.f.rn r7, r18
0004c4  e7498ffe  storeli.w r8, -100(r30)
0004c8  0f040a00  exp.f.rn r8, r20
0004cc  670a9ffe  storeli.w r9, -96(r30)
0004d0  8f040e00  exp.f.rn r9, r28
0004d4  8be03011  add.f.rn r1, r1, r19
0004d8  0b613111  add.f.rn r2, r2, r19
0004dc  8be23211  add.f.rn r5, r5, r19
0004e0  0b633311  add.f.rn r6, r6, r19
0004e4  8be33311  add.f.rn r7, r7, r19
0004e8  0b643411  add.f.rn r8, r8, r19
0004ec  8be43411  add.f.rn r9, r9, r19
0004f0  8f801918  div.f.rn r1, r19, r1
0004f4  0f812918  div.f.rn r2, r19, r2
0004f8  8f825918  div.f.rn r5, r19, r5
0004fc  0f836918  div.f.rn r6, r19, r6
000500  8f837918  div.f.rn r7, r19, r7
000504  0f848918  div.f.rn r8, r19, r8
000508  8f849918  div.f.rn r9, r19, r9
00050c  e7081ffe  storeli.w r1, -120(r30)
000510  8f000500  exp.f.rn r1, r10
000514  e7482ffe  storeli.w r2, -116(r30)
000518  0f810600  exp.f.rn r2, r13
00051c  e74a5ffe  storeli.w r5, -84(r30)
000520  670b6ffe  storeli.w r6, -80(r30)
000524  674b7ffe  storeli.w r7, -76(r30)
000528  e70b8ffe  storeli.w r8, -72(r30)
00052c  e74b9ffe  storeli.w r9, -68(r30)
000530  ab0200f0  lui r5, 983040
000534  97925b00  or r5, r23, r5
000538  8be03011  add.f.rn r1, r1, r19
00053c  0b613111  add.f.rn r2, r2, r19
000540  8f801918  div.f.rn r1, r19, r1
000544  0f812918  div.f.rn r2, r19, r2
000548  674a1ffe  storeli.w r1, -92(r30)
00054c  e70a2ffe  storeli.w r2, -88(r30)
000550  9f000fff  addli r1, r30, -128
000554  00a00000  mfence { lm }
000558  6b530f01  load.d r[7:8], 16(r30)
00055c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000560  9f200000  addli r1, zero, 2
000564  97301c02  sll.d r[2:3], r[25:26], r1
000568  8b201310  add.ul r[2:3], r[7:8], r[2:3]
00056c  1f038ffe  addli r6, r30, -192
000570  8e902002  vmul.f.mz.rn vr1{mr1}, vr1, vr2
000574  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
000578  00a00000  mfence { lm }
00057c  ffb26000  s_lm2gm r5, r6, 0(r[2:3])
000580  00a00000  mfence { lm }
000584  bf9e41fc  blt.s r3, r4, -1116
000588  9f0e8ffd  addli sp, r30, -320
00058c  9f8e8e02  addli sp, sp, 320
000590  00a00300  mfence { lm, sm, gm }
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
0007a0  00100000  exit
0007a4  00100000  exit
0007a8  00100000  exit
0007ac  00100000  exit
0007b0  00100000  exit
0007b4  00100000  exit
0007b8  00100000  exit
0007bc  00100000  exit
0007c0  00100000  exit
0007c4  00100000  exit
0007c8  00100000  exit
0007cc  00100000  exit
0007d0  00100000  exit
0007d4  00100000  exit
