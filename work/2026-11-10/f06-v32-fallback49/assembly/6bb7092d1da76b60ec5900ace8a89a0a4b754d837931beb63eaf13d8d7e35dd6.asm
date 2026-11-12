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
0000e4  00520002  load_param_i r4, 0
0000e8  63014f00  loadli.w r2,  32(r30)
0000ec  e3403f00  loadli.w r1,  28(r30)
0000f0  e3414f00  loadli.w r3,  36(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  670c1ffc  storeli.w r1, -320(r30)
000100  cbea4008  ble.s r1, r4, 4792
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  9f024000  addli r5, zero, 32
000110  9f040fff  addli r9, r30, -128
000114  2b0b807f  lui r22, 522240
000118  ab084000  lui r17, 1024
00011c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000120  9bb04000  slli r1, r1, 4
000124  e74b2ffc  storeli.w r2, -324(r30)
000128  2bf17f7f  lui r2, 522239
00012c  e70b1ffc  storeli.w r1, -328(r30)
000130  ab700000  lui r1, 7
000134  9b1af1ff  ori r21, r2, 4095
000138  1b99f0ff  ori r18, r1, 4095
00013c  abf0ff7f  lui r1, 524287
000140  1b9af0ff  ori r20, r1, 4095
000144  9f200000  addli r1, zero, 2
000148  fe8100e0  vmmov mr3, r1
00014c  db0a0000  j 84
000150  9b400201  srli r1, r4, 16
000154  9b801000  andi r1, r1, 1
000158  8b101210  add.s r1, r4, r1
00015c  8b902011  add.s r1, r1, r18
000160  6b510f01  load.d r[3:4], 16(r30)
000164  6b538ff1  load.d r[7:8], -232(r30)
000168  9bc00001  srli r1, r1, 16
00016c  2b0200f0  lui r4, 983040
000170  731f1ff8  store.h r1, -98(r30)
000174  97904200  or r1, r5, r4
000178  0b216110  add.ul r[3:4], r[3:4], r[7:8]
00017c  00a00000  mfence { lm }
000180  63024ffe  loadli.w r4,  -224(r30)
000184  ff309100  s_lm2gm r1, r9, 0(r[3:4])
000188  e3407ffd  loadli.w r1,  -324(r30)
00018c  00a00000  mfence { lm }
000190  0b121210  add.s r4, r4, r1
000194  e3008ffd  loadli.w r1,  -320(r30)
000198  3f201200  blt.s r4, r1, 8
00019c  db430200  j 4636
0001a0  e3404f00  loadli.w r1,  36(r30)
0001a4  63014f00  loadli.w r2,  32(r30)
0001a8  ab0100f0  lui r3, 983040
0001ac  67024ffe  storeli.w r4, -224(r30)
0001b0  9f130000  addli r7, zero, 1
0001b4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0001b8  9f190000  addli r19, zero, 1
0001bc  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0001c0  97913200  or r3, r5, r3
0001c4  7e8109e0  vmmov mr2, r19
0001c8  8b101230  div.s r1, r4, r1
0001cc  2b0200f0  lui r4, 983040
0001d0  17924200  or r4, r5, r4
0001d4  8b902030  div.s r1, r1, r2
0001d8  63017ffd  loadli.w r2,  -328(r30)
0001dc  9bb0a000  slli r1, r1, 10
0001e0  8b902010  add.s r1, r1, r2
0001e4  1f010008  addli r2, zero, 1024
0001e8  0b912038  mod.s r2, r1, r2
0001ec  b3920028  sext_int2long r[6:7], r1
0001f0  17b57202  sll.d r[11:12], r[6:7], r7
0001f4  eb520f00  load.d r[6:7], 0(r30)
0001f8  733caff0  store.d r[11:12], -232(r30)
0001fc  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
000200  b3100128  sext_int2long r[2:3], r2
000204  97b07002  sll.d r[2:3], r[2:3], r7
000208  eb538f00  load.d r[8:9], 8(r30)
00020c  8ba01310  add.ul r[2:3], r[8:9], r[2:3]
000210  9f038ffe  addli r7, r30, -192
000214  ffa17200  l_gm2lm r3, r7, 0(r[6:7])
000218  7fa29000  l_gm2lm r4, r9, 0(r[2:3])
00021c  00a00000  mfence { lm }
000220  eb300ff4  load.hu r1, -192(r30)
000224  6b312ff4  load.hu r2, -190(r30)
000228  eb314ff4  load.hu r3, -188(r30)
00022c  6b326ff4  load.hu r4, -186(r30)
000230  eb328ff4  load.hu r5, -184(r30)
000234  6b33aff4  load.hu r6, -182(r30)
000238  eb33cff4  load.hu r7, -180(r30)
00023c  6b34eff4  load.hu r8, -178(r30)
000240  eb340ff5  load.hu r9, -176(r30)
000244  6b352ff5  load.hu r10, -174(r30)
000248  eb354ff5  load.hu r11, -172(r30)
00024c  6b366ff5  load.hu r12, -170(r30)
000250  eb368ff5  load.hu r13, -168(r30)
000254  6b37aff5  load.hu r14, -166(r30)
000258  eb37cff5  load.hu r15, -164(r30)
00025c  6b38eff5  load.hu r16, -162(r30)
000260  b3900018  bfloat2float.rn r1, r1
000264  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000268  b3100118  bfloat2float.rn r1, r2
00026c  1f410000  addli r2, zero, 4
000270  7e0001e0  vmmov mr0, r2
000274  1f011000  addli r2, zero, 8
000278  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
00027c  b3900118  bfloat2float.rn r1, r3
000280  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000284  b3100218  bfloat2float.rn r1, r4
000288  7e0001e0  vmmov mr0, r2
00028c  1f012000  addli r2, zero, 16
000290  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000294  b3900218  bfloat2float.rn r1, r5
000298  7e0001e0  vmmov mr0, r2
00029c  1f014000  addli r2, zero, 32
0002a0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0002a4  b3100318  bfloat2float.rn r1, r6
0002a8  7e0001e0  vmmov mr0, r2
0002ac  1f018000  addli r2, zero, 64
0002b0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0002b4  b3900318  bfloat2float.rn r1, r7
0002b8  7e0001e0  vmmov mr0, r2
0002bc  1f010001  addli r2, zero, 128
0002c0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0002c4  b3100418  bfloat2float.rn r1, r8
0002c8  7e0001e0  vmmov mr0, r2
0002cc  1f010002  addli r2, zero, 256
0002d0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0002d4  b3900418  bfloat2float.rn r1, r9
0002d8  7e0001e0  vmmov mr0, r2
0002dc  1f010004  addli r2, zero, 512
0002e0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0002e4  b3100518  bfloat2float.rn r1, r10
0002e8  7e0001e0  vmmov mr0, r2
0002ec  1f010008  addli r2, zero, 1024
0002f0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0002f4  b3900518  bfloat2float.rn r1, r11
0002f8  7e0001e0  vmmov mr0, r2
0002fc  1f010010  addli r2, zero, 2048
000300  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000304  b3100618  bfloat2float.rn r1, r12
000308  7e0001e0  vmmov mr0, r2
00030c  1f010020  addli r2, zero, 4096
000310  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000314  b3900618  bfloat2float.rn r1, r13
000318  7e0001e0  vmmov mr0, r2
00031c  1f010040  addli r2, zero, 8192
000320  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000324  b3100718  bfloat2float.rn r1, r14
000328  7e0001e0  vmmov mr0, r2
00032c  2b410000  lui r2, 4
000330  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000334  b3900718  bfloat2float.rn r1, r15
000338  7e0001e0  vmmov mr0, r2
00033c  2b810000  lui r2, 8
000340  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000344  b3100818  bfloat2float.rn r1, r16
000348  7e0001e0  vmmov mr0, r2
00034c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000350  eb300ff8  load.hu r1, -128(r30)
000354  6b312ff8  load.hu r2, -126(r30)
000358  eb314ff8  load.hu r3, -124(r30)
00035c  6b326ff8  load.hu r4, -122(r30)
000360  eb328ff8  load.hu r5, -120(r30)
000364  6b33aff8  load.hu r6, -118(r30)
000368  eb33cff8  load.hu r7, -116(r30)
00036c  6b34eff8  load.hu r8, -114(r30)
000370  eb340ff9  load.hu r9, -112(r30)
000374  6b352ff9  load.hu r10, -110(r30)
000378  eb354ff9  load.hu r11, -108(r30)
00037c  6b366ff9  load.hu r12, -106(r30)
000380  eb368ff9  load.hu r13, -104(r30)
000384  6b37aff9  load.hu r14, -102(r30)
000388  eb37cff9  load.hu r15, -100(r30)
00038c  6b38eff9  load.hu r16, -98(r30)
000390  b3900018  bfloat2float.rn r1, r1
000394  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000398  b3100118  bfloat2float.rn r1, r2
00039c  1f410000  addli r2, zero, 4
0003a0  7e0101e0  vmmov mr2, r2
0003a4  1f011000  addli r2, zero, 8
0003a8  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0003ac  b3900118  bfloat2float.rn r1, r3
0003b0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003b4  b3100218  bfloat2float.rn r1, r4
0003b8  7e0101e0  vmmov mr2, r2
0003bc  1f012000  addli r2, zero, 16
0003c0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003c4  b3900218  bfloat2float.rn r1, r5
0003c8  7e0101e0  vmmov mr2, r2
0003cc  1f014000  addli r2, zero, 32
0003d0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003d4  b3100318  bfloat2float.rn r1, r6
0003d8  7e0101e0  vmmov mr2, r2
0003dc  1f018000  addli r2, zero, 64
0003e0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003e4  b3900318  bfloat2float.rn r1, r7
0003e8  7e0101e0  vmmov mr2, r2
0003ec  1f010001  addli r2, zero, 128
0003f0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003f4  b3100418  bfloat2float.rn r1, r8
0003f8  7e0101e0  vmmov mr2, r2
0003fc  1f010002  addli r2, zero, 256
000400  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000404  b3900418  bfloat2float.rn r1, r9
000408  7e0101e0  vmmov mr2, r2
00040c  1f010004  addli r2, zero, 512
000410  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000414  b3100518  bfloat2float.rn r1, r10
000418  7e0101e0  vmmov mr2, r2
00041c  1f010008  addli r2, zero, 1024
000420  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000424  b3900518  bfloat2float.rn r1, r11
000428  7e0101e0  vmmov mr2, r2
00042c  1f010010  addli r2, zero, 2048
000430  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000434  b3100618  bfloat2float.rn r1, r12
000438  7e0101e0  vmmov mr2, r2
00043c  1f010020  addli r2, zero, 4096
000440  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000444  b3900618  bfloat2float.rn r1, r13
000448  7e0101e0  vmmov mr2, r2
00044c  1f010040  addli r2, zero, 8192
000450  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000454  b3100718  bfloat2float.rn r1, r14
000458  7e0101e0  vmmov mr2, r2
00045c  2b410000  lui r2, 4
000460  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000464  b3900718  bfloat2float.rn r1, r15
000468  7e0101e0  vmmov mr2, r2
00046c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000470  b3100818  bfloat2float.rn r1, r16
000474  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000478  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00047c  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
000480  00a00000  mfence { lm }
000484  630e8fff  loadli.w r28,  -64(r30)
000488  e34d8fff  loadli.w r27,  -60(r30)
00048c  e3079fff  loadli.w r15,  -56(r30)
000490  e34b9fff  loadli.w r23,  -52(r30)
000494  e306afff  loadli.w r13,  -48(r30)
000498  634dafff  loadli.w r26,  -44(r30)
00049c  e30cbfff  loadli.w r25,  -40(r30)
0004a0  6348bfff  loadli.w r16,  -36(r30)
0004a4  e305cfff  loadli.w r11,  -32(r30)
0004a8  634ccfff  loadli.w r24,  -28(r30)
0004ac  e309dfff  loadli.w r19,  -24(r30)
0004b0  6347dfff  loadli.w r14,  -20(r30)
0004b4  e302efff  loadli.w r5,  -16(r30)
0004b8  6346efff  loadli.w r12,  -12(r30)
0004bc  e304ffff  loadli.w r9,  -8(r30)
0004c0  6345ffff  loadli.w r10,  -4(r30)
0004c4  17014e01  and r2, r28, r20
0004c8  93002b04  setlt.u r1, r22, r2
0004cc  3bb00000  bneq r1, zero, 12
0004d0  6743cfff  storeli.w r28, -204(r30)
0004d4  db010000  j 12
0004d8  97101e01  or r1, r28, r17
0004dc  67431ffe  storeli.w r1, -204(r30)
0004e0  17824d01  and r4, r27, r20
0004e4  93004b04  setlt.u r1, r22, r4
0004e8  3bb00000  bneq r1, zero, 12
0004ec  9f810d00  addli r3, r27, 0
0004f0  5b010000  j 8
0004f4  97911d01  or r3, r27, r17
0004f8  17844701  and r8, r15, r20
0004fc  93008b04  setlt.u r1, r22, r8
000500  3bb00000  bneq r1, zero, 12
000504  e743fffe  storeli.w r15, -196(r30)
000508  db010000  j 12
00050c  97901701  or r1, r15, r17
000510  e7431ffe  storeli.w r1, -196(r30)
000514  97834b01  and r7, r23, r20
000518  93007b04  setlt.u r1, r22, r7
00051c  3bb00000  bneq r1, zero, 12
000520  67017fff  storeli.w r23, -240(r30)
000524  db010000  j 12
000528  97901b01  or r1, r23, r17
00052c  67011ffe  storeli.w r1, -240(r30)
000530  17834601  and r6, r13, r20
000534  93006b04  setlt.u r1, r22, r6
000538  3bb00000  bneq r1, zero, 12
00053c  6741dffe  storeli.w r13, -236(r30)
000540  db010000  j 12
000544  97901601  or r1, r13, r17
000548  67411ffe  storeli.w r1, -236(r30)
00054c  97004d01  and r1, r26, r20
000550  674caffd  storeli.w r26, -316(r30)
000554  e74e1ffc  storeli.w r1, -276(r30)
000558  93001b04  setlt.u r1, r22, r1
00055c  3bb00000  bneq r1, zero, 12
000560  6742afff  storeli.w r26, -220(r30)
000564  db010000  j 12
000568  97101d01  or r1, r26, r17
00056c  67421ffe  storeli.w r1, -220(r30)
000570  97804c01  and r1, r25, r20
000574  e7033ffe  storeli.w r3, -200(r30)
000578  670f1ffc  storeli.w r1, -272(r30)
00057c  93001b04  setlt.u r1, r22, r1
000580  3bb00000  bneq r1, zero, 12
000584  e7029fff  storeli.w r25, -216(r30)
000588  db010000  j 12
00058c  97901c01  or r1, r25, r17
000590  e7021ffe  storeli.w r1, -216(r30)
000594  97004801  and r1, r16, r20
000598  93011b04  setlt.u r3, r22, r1
00059c  674f1ffc  storeli.w r1, -268(r30)
0005a0  3bb00100  bneq r3, zero, 12
0005a4  e7420fff  storeli.w r16, -212(r30)
0005a8  db010000  j 12
0005ac  97111801  or r3, r16, r17
0005b0  e7423ffe  storeli.w r3, -212(r30)
0005b4  97804501  and r1, r11, r20
0005b8  e70c9ffd  storeli.w r25, -312(r30)
0005bc  e74c0ffd  storeli.w r16, -308(r30)
0005c0  93011b04  setlt.u r3, r22, r1
0005c4  e70f1ffc  storeli.w r1, -264(r30)
0005c8  3bb00100  bneq r3, zero, 12
0005cc  9f8c0500  addli r25, r11, 0
0005d0  5b010000  j 8
0005d4  979c1501  or r25, r11, r17
0005d8  97004c01  and r1, r24, r20
0005dc  670dbffc  storeli.w r11, -304(r30)
0005e0  ab05ffff  lui r11, 1048560
0005e4  674d8ffd  storeli.w r24, -300(r30)
0005e8  93011b04  setlt.u r3, r22, r1
0005ec  e74f1ffc  storeli.w r1, -260(r30)
0005f0  37a00100  beq r3, zero, 8
0005f4  171c1c01  or r24, r24, r17
0005f8  97804901  and r1, r19, r20
0005fc  e70d3ffd  storeli.w r19, -296(r30)
000600  93011b04  setlt.u r3, r22, r1
000604  67001ffe  storeli.w r1, -256(r30)
000608  ab004000  lui r1, 1024
00060c  37a00100  beq r3, zero, 8
000610  97991901  or r19, r19, r17
000614  97084701  and r17, r14, r20
000618  93011b05  setlt.u r3, r22, r17
00061c  3bb00100  bneq r3, zero, 12
000620  6703effe  storeli.w r14, -208(r30)
000624  db010000  j 12
000628  97111700  or r3, r14, r1
00062c  67033ffe  storeli.w r3, -208(r30)
000630  97814201  and r3, r5, r20
000634  e74deffc  storeli.w r14, -292(r30)
000638  67403ffe  storeli.w r3, -252(r30)
00063c  93013b04  setlt.u r3, r22, r3
000640  3bb00100  bneq r3, zero, 12
000644  1f870200  addli r14, r5, 0
000648  5b010000  j 8
00064c  17971200  or r14, r5, r1
000650  97014601  and r3, r12, r20
000654  674ecffc  storeli.w r12, -284(r30)
000658  670e5ffc  storeli.w r5, -288(r30)
00065c  e7003ffe  storeli.w r3, -248(r30)
000660  93013b04  setlt.u r3, r22, r3
000664  37a00100  beq r3, zero, 8
000668  17161600  or r12, r12, r1
00066c  97814401  and r3, r9, r20
000670  e70e9ffc  storeli.w r9, -280(r30)
000674  93023b04  setlt.u r5, r22, r3
000678  37a00200  beq r5, zero, 8
00067c  97941400  or r9, r9, r1
000680  97024501  and r5, r10, r20
000684  1f080500  addli r16, r10, 0
000688  13055b04  setlt.u r10, r22, r5
00068c  3b500500  bneq r10, zero, 20
000690  e7400fff  storeli.w r16, -244(r30)
000694  13812a04  setlt.u r2, r21, r2
000698  37600100  beq r2, zero, 24
00069c  db050000  j 44
0006a0  97101800  or r1, r16, r1
0006a4  e7401ffe  storeli.w r1, -244(r30)
0006a8  13812a04  setlt.u r2, r21, r2
0006ac  3b700100  bneq r2, zero, 28
0006b0  1b410e01  srli r2, r28, 16
0006b4  1b011100  andi r2, r2, 1
0006b8  0b112e10  add.s r2, r28, r2
0006bc  0b112111  add.s r2, r2, r18
0006c0  1701b100  and r2, r2, r11
0006c4  67432ffe  storeli.w r2, -204(r30)
0006c8  13814a04  setlt.u r2, r21, r4
0006cc  3b700100  bneq r2, zero, 28
0006d0  1bc10d01  srli r2, r27, 16
0006d4  1b011100  andi r2, r2, 1
0006d8  0b912d10  add.s r2, r27, r2
0006dc  0b112111  add.s r2, r2, r18
0006e0  1701b100  and r2, r2, r11
0006e4  e7032ffe  storeli.w r2, -200(r30)
0006e8  13818a04  setlt.u r2, r21, r8
0006ec  630e2ffe  loadli.w r28,  -240(r30)
0006f0  63426ffe  loadli.w r4,  -204(r30)
0006f4  3b700100  bneq r2, zero, 28
0006f8  1bc10701  srli r2, r15, 16
0006fc  1b011100  andi r2, r2, 1
000700  0b912710  add.s r2, r15, r2
000704  0b112111  add.s r2, r2, r18
000708  1701b100  and r2, r2, r11
00070c  e7432ffe  storeli.w r2, -196(r30)
000710  13817a04  setlt.u r2, r21, r7
000714  e34d2ffe  loadli.w r27,  -236(r30)
000718  3b600100  bneq r2, zero, 24
00071c  1bc10b01  srli r2, r23, 16
000720  1b011100  andi r2, r2, 1
000724  0b912b10  add.s r2, r23, r2
000728  0b112111  add.s r2, r2, r18
00072c  170eb100  and r28, r2, r11
000730  13816a04  setlt.u r2, r21, r6
000734  e3075ffe  loadli.w r15,  -216(r30)
000738  3b600100  bneq r2, zero, 24
00073c  1bc10601  srli r2, r13, 16
000740  1b011100  andi r2, r2, 1
000744  0b912610  add.s r2, r13, r2
000748  0b112111  add.s r2, r2, r18
00074c  970db100  and r27, r2, r11
000750  e340dffd  loadli.w r1,  -276(r30)
000754  634d4ffe  loadli.w r26,  -220(r30)
000758  13811a04  setlt.u r2, r21, r1
00075c  3b700100  bneq r2, zero, 28
000760  e3408ffd  loadli.w r1,  -316(r30)
000764  1bc10001  srli r2, r1, 16
000768  1b011100  andi r2, r2, 1
00076c  0b912010  add.s r2, r1, r2
000770  0b112111  add.s r2, r2, r18
000774  170db100  and r26, r2, r11
000778  e300effd  loadli.w r1,  -272(r30)
00077c  e3465ffe  loadli.w r13,  -212(r30)
000780  13811a04  setlt.u r2, r21, r1
000784  3b700100  bneq r2, zero, 28
000788  e3009ffd  loadli.w r1,  -312(r30)
00078c  1bc10001  srli r2, r1, 16
000790  1b011100  andi r2, r2, 1
000794  0b912010  add.s r2, r1, r2
000798  0b112111  add.s r2, r2, r18
00079c  9707b100  and r15, r2, r11
0007a0  e340effd  loadli.w r1,  -268(r30)
0007a4  93801a04  setlt.u r1, r21, r1
0007a8  3bf00000  bneq r1, zero, 28
0007ac  63419ffd  loadli.w r2,  -308(r30)
0007b0  9b400101  srli r1, r2, 16
0007b4  9b801000  andi r1, r1, 1
0007b8  8b101110  add.s r1, r2, r1
0007bc  8b902011  add.s r1, r1, r18
0007c0  9786b000  and r13, r1, r11
0007c4  e300fffd  loadli.w r1,  -264(r30)
0007c8  63417ffe  loadli.w r2,  -196(r30)
0007cc  93801a04  setlt.u r1, r21, r1
0007d0  3bf00000  bneq r1, zero, 28
0007d4  6303affd  loadli.w r6,  -304(r30)
0007d8  9b400301  srli r1, r6, 16
0007dc  9b801000  andi r1, r1, 1
0007e0  8b101310  add.s r1, r6, r1
0007e4  8b902011  add.s r1, r1, r18
0007e8  978cb000  and r25, r1, r11
0007ec  e340fffd  loadli.w r1,  -260(r30)
0007f0  93801a04  setlt.u r1, r21, r1
0007f4  3bf00000  bneq r1, zero, 28
0007f8  e343affd  loadli.w r7,  -300(r30)
0007fc  9bc00301  srli r1, r7, 16
000800  9b801000  andi r1, r1, 1
000804  8b901310  add.s r1, r7, r1
000808  8b902011  add.s r1, r1, r18
00080c  178cb000  and r24, r1, r11
000810  e3000ffe  loadli.w r1,  -256(r30)
000814  2b05ffff  lui r10, 1048560
000818  93801a04  setlt.u r1, r21, r1
00081c  3bf00000  bneq r1, zero, 28
000820  e303bffd  loadli.w r7,  -296(r30)
000824  9bc00301  srli r1, r7, 16
000828  9b801000  andi r1, r1, 1
00082c  8b901310  add.s r1, r7, r1
000830  8b902011  add.s r1, r1, r18
000834  9789a000  and r19, r1, r10
000838  93801a05  setlt.u r1, r21, r17
00083c  e3086ffe  loadli.w r17,  -208(r30)
000840  ab0b803f  lui r23, 260096
000844  3bf00000  bneq r1, zero, 28
000848  e343bffd  loadli.w r7,  -292(r30)
00084c  9bc00301  srli r1, r7, 16
000850  9b801000  andi r1, r1, 1
000854  8b901310  add.s r1, r7, r1
000858  8b902011  add.s r1, r1, r18
00085c  9788a000  and r17, r1, r10
000860  e3400ffe  loadli.w r1,  -252(r30)
000864  ab054000  lui r11, 1024
000868  93801a04  setlt.u r1, r21, r1
00086c  3bf00000  bneq r1, zero, 28
000870  e303cffd  loadli.w r7,  -288(r30)
000874  9bc00301  srli r1, r7, 16
000878  9b801000  andi r1, r1, 1
00087c  8b901310  add.s r1, r7, r1
000880  8b902011  add.s r1, r1, r18
000884  1787a000  and r14, r1, r10
000888  e3001ffe  loadli.w r1,  -248(r30)
00088c  93801a04  setlt.u r1, r21, r1
000890  3bf00000  bneq r1, zero, 28
000894  e343cffd  loadli.w r7,  -284(r30)
000898  9bc00301  srli r1, r7, 16
00089c  9b801000  andi r1, r1, 1
0008a0  8b901310  add.s r1, r7, r1
0008a4  8b902011  add.s r1, r1, r18
0008a8  1786a000  and r12, r1, r10
0008ac  93803a04  setlt.u r1, r21, r3
0008b0  3bf00000  bneq r1, zero, 28
0008b4  e301dffd  loadli.w r3,  -280(r30)
0008b8  9bc00101  srli r1, r3, 16
0008bc  9b801000  andi r1, r1, 1
0008c0  8b901110  add.s r1, r3, r1
0008c4  8b902011  add.s r1, r1, r18
0008c8  9784a000  and r9, r1, r10
0008cc  93805a04  setlt.u r1, r21, r5
0008d0  e3017ffe  loadli.w r3,  -200(r30)
0008d4  e3421ffe  loadli.w r5,  -244(r30)
0008d8  3be00000  bneq r1, zero, 24
0008dc  9b400801  srli r1, r16, 16
0008e0  9b801000  andi r1, r1, 1
0008e4  8b101810  add.s r1, r16, r1
0008e8  8b902011  add.s r1, r1, r18
0008ec  9782a000  and r5, r1, r10
0008f0  97004201  and r1, r4, r20
0008f4  93001b04  setlt.u r1, r22, r1
0008f8  3be00000  bneq r1, zero, 24
0008fc  9b400201  srli r1, r4, 16
000900  9b801000  andi r1, r1, 1
000904  8b101210  add.s r1, r4, r1
000908  0b922011  add.s r4, r1, r18
00090c  5b010000  j 8
000910  1712b200  or r4, r4, r11
000914  97804101  and r1, r3, r20
000918  93001b04  setlt.u r1, r22, r1
00091c  3be00000  bneq r1, zero, 24
000920  9bc00101  srli r1, r3, 16
000924  9b801000  andi r1, r1, 1
000928  8b901110  add.s r1, r3, r1
00092c  0b942011  add.s r8, r1, r18
000930  5b010000  j 8
000934  1794b100  or r8, r3, r11
000938  97004101  and r1, r2, r20
00093c  93001b04  setlt.u r1, r22, r1
000940  3be00000  bneq r1, zero, 24
000944  9b400101  srli r1, r2, 16
000948  9b801000  andi r1, r1, 1
00094c  8b101110  add.s r1, r2, r1
000950  8b932011  add.s r7, r1, r18
000954  5b010000  j 8
000958  9713b100  or r7, r2, r11
00095c  97004e01  and r1, r28, r20
000960  93001b04  setlt.u r1, r22, r1
000964  3be00000  bneq r1, zero, 24
000968  9b400e01  srli r1, r28, 16
00096c  9b801000  andi r1, r1, 1
000970  8b101e10  add.s r1, r28, r1
000974  0b932011  add.s r6, r1, r18
000978  5b010000  j 8
00097c  1713be00  or r6, r28, r11
000980  97804d01  and r1, r27, r20
000984  93001b04  setlt.u r1, r22, r1
000988  3be00000  bneq r1, zero, 24
00098c  9bc00d01  srli r1, r27, 16
000990  9b801000  andi r1, r1, 1
000994  8b901d10  add.s r1, r27, r1
000998  0b912011  add.s r2, r1, r18
00099c  5b010000  j 8
0009a0  1791bd00  or r2, r27, r11
0009a4  97004d01  and r1, r26, r20
0009a8  93001b04  setlt.u r1, r22, r1
0009ac  3be00000  bneq r1, zero, 24
0009b0  9b400d01  srli r1, r26, 16
0009b4  9b801000  andi r1, r1, 1
0009b8  8b101d10  add.s r1, r26, r1
0009bc  8b902011  add.s r1, r1, r18
0009c0  5b010000  j 8
0009c4  9710bd00  or r1, r26, r11
0009c8  97814701  and r3, r15, r20
0009cc  93013b04  setlt.u r3, r22, r3
0009d0  3be00100  bneq r3, zero, 24
0009d4  9bc10701  srli r3, r15, 16
0009d8  9b811100  andi r3, r3, 1
0009dc  8b913710  add.s r3, r15, r3
0009e0  8b972111  add.s r15, r3, r18
0009e4  5b010000  j 8
0009e8  9797b700  or r15, r15, r11
0009ec  97814601  and r3, r13, r20
0009f0  93013b04  setlt.u r3, r22, r3
0009f4  3be00100  bneq r3, zero, 24
0009f8  9bc10601  srli r3, r13, 16
0009fc  9b811100  andi r3, r3, 1
000a00  8b913610  add.s r3, r13, r3
000a04  8b962111  add.s r13, r3, r18
000a08  5b010000  j 8
000a0c  9796b600  or r13, r13, r11
000a10  97814c01  and r3, r25, r20
000a14  93013b04  setlt.u r3, r22, r3
000a18  3be00100  bneq r3, zero, 24
000a1c  9bc10c01  srli r3, r25, 16
000a20  9b811100  andi r3, r3, 1
000a24  8b913c10  add.s r3, r25, r3
000a28  8b912111  add.s r3, r3, r18
000a2c  5b010000  j 8
000a30  9791bc00  or r3, r25, r11
000a34  67013ffe  storeli.w r3, -240(r30)
000a38  97014c01  and r3, r24, r20
000a3c  93013b04  setlt.u r3, r22, r3
000a40  3be00100  bneq r3, zero, 24
000a44  9b410c01  srli r3, r24, 16
000a48  9b811100  andi r3, r3, 1
000a4c  8b113c10  add.s r3, r24, r3
000a50  8b912111  add.s r3, r3, r18
000a54  5b010000  j 8
000a58  9711bc00  or r3, r24, r11
000a5c  67413ffe  storeli.w r3, -236(r30)
000a60  97814901  and r3, r19, r20
000a64  93013b04  setlt.u r3, r22, r3
000a68  3be00100  bneq r3, zero, 24
000a6c  9bc10901  srli r3, r19, 16
000a70  9b811100  andi r3, r3, 1
000a74  8b913910  add.s r3, r19, r3
000a78  8b9d2111  add.s r27, r3, r18
000a7c  5b010000  j 8
000a80  979db900  or r27, r19, r11
000a84  97814801  and r3, r17, r20
000a88  93013b04  setlt.u r3, r22, r3
000a8c  3be00100  bneq r3, zero, 24
000a90  9bc10801  srli r3, r17, 16
000a94  9b811100  andi r3, r3, 1
000a98  8b913810  add.s r3, r17, r3
000a9c  0b9e2111  add.s r28, r3, r18
000aa0  5b010000  j 8
000aa4  179eb800  or r28, r17, r11
000aa8  97014701  and r3, r14, r20
000aac  93013b04  setlt.u r3, r22, r3
000ab0  3be00100  bneq r3, zero, 24
000ab4  9b410701  srli r3, r14, 16
000ab8  9b811100  andi r3, r3, 1
000abc  8b113710  add.s r3, r14, r3
000ac0  0b9c2111  add.s r24, r3, r18
000ac4  5b010000  j 8
000ac8  171cb700  or r24, r14, r11
000acc  97014601  and r3, r12, r20
000ad0  93013b04  setlt.u r3, r22, r3
000ad4  3be00100  bneq r3, zero, 24
000ad8  9b410601  srli r3, r12, 16
000adc  9b811100  andi r3, r3, 1
000ae0  8b113610  add.s r3, r12, r3
000ae4  0b9d2111  add.s r26, r3, r18
000ae8  5b010000  j 8
000aec  171db600  or r26, r12, r11
000af0  97814401  and r3, r9, r20
000af4  93013b04  setlt.u r3, r22, r3
000af8  3be00100  bneq r3, zero, 24
000afc  9bc10401  srli r3, r9, 16
000b00  9b811100  andi r3, r3, 1
000b04  8b913410  add.s r3, r9, r3
000b08  8b992111  add.s r19, r3, r18
000b0c  5b010000  j 8
000b10  9799b400  or r19, r9, r11
000b14  97814201  and r3, r5, r20
000b18  93013b04  setlt.u r3, r22, r3
000b1c  3be00100  bneq r3, zero, 24
000b20  9bc10201  srli r3, r5, 16
000b24  9b811100  andi r3, r3, 1
000b28  8b913210  add.s r3, r5, r3
000b2c  8b912111  add.s r3, r3, r18
000b30  5b010000  j 8
000b34  9791b200  or r3, r5, r11
000b38  674f3ffc  storeli.w r3, -268(r30)
000b3c  9701a200  and r3, r4, r10
000b40  0be20158  neg.f r4, r3
000b44  0f020200  exp.f.rn r4, r4
000b48  0b627211  add.f.rn r4, r4, r23
000b4c  0f824b18  div.f.rn r4, r23, r4
000b50  8b613220  mul.f.rn r3, r4, r3
000b54  17824101  and r4, r3, r20
000b58  e70f4ffc  storeli.w r4, -264(r30)
000b5c  13024b04  setlt.u r4, r22, r4
000b60  3b300200  bneq r4, zero, 12
000b64  67423ffe  storeli.w r3, -220(r30)
000b68  db010000  j 12
000b6c  1792b100  or r4, r3, r11
000b70  67424ffe  storeli.w r4, -220(r30)
000b74  1702a400  and r4, r8, r10
000b78  8b620258  neg.f r5, r4
000b7c  8f820200  exp.f.rn r5, r5
000b80  8be27211  add.f.rn r5, r5, r23
000b84  8f825b18  div.f.rn r5, r23, r5
000b88  0be84220  mul.f.rn r16, r5, r4
000b8c  17024801  and r4, r16, r20
000b90  670f4ffc  storeli.w r4, -272(r30)
000b94  13024b04  setlt.u r4, r22, r4
000b98  3b300200  bneq r4, zero, 12
000b9c  e7020fff  storeli.w r16, -216(r30)
000ba0  db010000  j 12
000ba4  1712b800  or r4, r16, r11
000ba8  e7024ffe  storeli.w r4, -216(r30)
000bac  1782a300  and r4, r7, r10
000bb0  8b620258  neg.f r5, r4
000bb4  8f820200  exp.f.rn r5, r5
000bb8  8be27211  add.f.rn r5, r5, r23
000bbc  8f825b18  div.f.rn r5, r23, r5
000bc0  8bec4220  mul.f.rn r25, r5, r4
000bc4  17824c01  and r4, r25, r20
000bc8  e74e4ffc  storeli.w r4, -276(r30)
000bcc  13024b04  setlt.u r4, r22, r4
000bd0  3b300200  bneq r4, zero, 12
000bd4  9f880c00  addli r17, r25, 0
000bd8  5b010000  j 8
000bdc  9798bc00  or r17, r25, r11
000be0  1702a300  and r4, r6, r10
000be4  8b620258  neg.f r5, r4
000be8  8f820200  exp.f.rn r5, r5
000bec  8be27211  add.f.rn r5, r5, r23
000bf0  8f825b18  div.f.rn r5, r23, r5
000bf4  0be74220  mul.f.rn r14, r5, r4
000bf8  17024701  and r4, r14, r20
000bfc  e70e4ffc  storeli.w r4, -280(r30)
000c00  13024b04  setlt.u r4, r22, r4
000c04  3b300200  bneq r4, zero, 12
000c08  6703effe  storeli.w r14, -208(r30)
000c0c  db010000  j 12
000c10  1712b700  or r4, r14, r11
000c14  67034ffe  storeli.w r4, -208(r30)
000c18  1701a100  and r2, r2, r10
000c1c  0b620158  neg.f r4, r2
000c20  0f020200  exp.f.rn r4, r4
000c24  0b627211  add.f.rn r4, r4, r23
000c28  0f824b18  div.f.rn r4, r23, r4
000c2c  0b612220  mul.f.rn r2, r4, r2
000c30  17024101  and r4, r2, r20
000c34  674e4ffc  storeli.w r4, -284(r30)
000c38  13024b04  setlt.u r4, r22, r4
000c3c  3b300200  bneq r4, zero, 12
000c40  67432ffe  storeli.w r2, -204(r30)
000c44  db010000  j 12
000c48  1712b100  or r4, r2, r11
000c4c  67434ffe  storeli.w r4, -204(r30)
000c50  9780a000  and r1, r1, r10
000c54  0be20058  neg.f r4, r1
000c58  0f020200  exp.f.rn r4, r4
000c5c  0b627211  add.f.rn r4, r4, r23
000c60  0f824b18  div.f.rn r4, r23, r4
000c64  8b601220  mul.f.rn r1, r4, r1
000c68  17824001  and r4, r1, r20
000c6c  670e4ffc  storeli.w r4, -288(r30)
000c70  13024b04  setlt.u r4, r22, r4
000c74  3b300200  bneq r4, zero, 12
000c78  9f830000  addli r7, r1, 0
000c7c  5b010000  j 8
000c80  9793b000  or r7, r1, r11
000c84  1782a700  and r4, r15, r10
000c88  8b620258  neg.f r5, r4
000c8c  8f820200  exp.f.rn r5, r5
000c90  8be27211  add.f.rn r5, r5, r23
000c94  8f825b18  div.f.rn r5, r23, r5
000c98  8be74220  mul.f.rn r15, r5, r4
000c9c  17824701  and r4, r15, r20
000ca0  e74d4ffc  storeli.w r4, -292(r30)
000ca4  13024b04  setlt.u r4, r22, r4
000ca8  3b300200  bneq r4, zero, 12
000cac  1f830700  addli r6, r15, 0
000cb0  5b010000  j 8
000cb4  1793b700  or r6, r15, r11
000cb8  1782a600  and r4, r13, r10
000cbc  8b620258  neg.f r5, r4
000cc0  8f820200  exp.f.rn r5, r5
000cc4  8be27211  add.f.rn r5, r5, r23
000cc8  8f825b18  div.f.rn r5, r23, r5
000ccc  8be64220  mul.f.rn r13, r5, r4
000cd0  17824601  and r4, r13, r20
000cd4  e70d4ffc  storeli.w r4, -296(r30)
000cd8  13024b04  setlt.u r4, r22, r4
000cdc  3b300200  bneq r4, zero, 12
000ce0  e74fdffc  storeli.w r13, -260(r30)
000ce4  db010000  j 12
000ce8  1792b600  or r4, r13, r11
000cec  e74f4ffc  storeli.w r4, -260(r30)
000cf0  63022ffe  loadli.w r4,  -240(r30)
000cf4  1702a200  and r4, r4, r10
000cf8  8b620258  neg.f r5, r4
000cfc  8f820200  exp.f.rn r5, r5
000d00  8be27211  add.f.rn r5, r5, r23
000d04  8f825b18  div.f.rn r5, r23, r5
000d08  8be44220  mul.f.rn r9, r5, r4
000d0c  17824401  and r4, r9, r20
000d10  674d4ffc  storeli.w r4, -300(r30)
000d14  13024b04  setlt.u r4, r22, r4
000d18  3b300200  bneq r4, zero, 12
000d1c  67009ffe  storeli.w r9, -256(r30)
000d20  db010000  j 12
000d24  1792b400  or r4, r9, r11
000d28  67004ffe  storeli.w r4, -256(r30)
000d2c  63422ffe  loadli.w r4,  -236(r30)
000d30  e7436ffe  storeli.w r6, -196(r30)
000d34  1702a200  and r4, r4, r10
000d38  8b620258  neg.f r5, r4
000d3c  8f820200  exp.f.rn r5, r5
000d40  8be27211  add.f.rn r5, r5, r23
000d44  8f825b18  div.f.rn r5, r23, r5
000d48  8be24220  mul.f.rn r5, r5, r4
000d4c  17824201  and r4, r5, r20
000d50  670d4ffc  storeli.w r4, -304(r30)
000d54  13024b04  setlt.u r4, r22, r4
000d58  3b300200  bneq r4, zero, 12
000d5c  67405ffe  storeli.w r5, -252(r30)
000d60  db010000  j 12
000d64  1792b200  or r4, r5, r11
000d68  67404ffe  storeli.w r4, -252(r30)
000d6c  1782ad00  and r4, r27, r10
000d70  e7037ffe  storeli.w r7, -200(r30)
000d74  0b630258  neg.f r6, r4
000d78  0f030300  exp.f.rn r6, r6
000d7c  0b637311  add.f.rn r6, r6, r23
000d80  0f836b18  div.f.rn r6, r23, r6
000d84  8b6d4320  mul.f.rn r27, r6, r4
000d88  17824d01  and r4, r27, r20
000d8c  13034b04  setlt.u r6, r22, r4
000d90  e74c4ffc  storeli.w r4, -308(r30)
000d94  3b300300  bneq r6, zero, 12
000d98  e700bfff  storeli.w r27, -248(r30)
000d9c  db010000  j 12
000da0  1792bd00  or r4, r27, r11
000da4  e7004ffe  storeli.w r4, -248(r30)
000da8  1703ae00  and r6, r28, r10
000dac  8b630358  neg.f r7, r6
000db0  8f830300  exp.f.rn r7, r7
000db4  8be37311  add.f.rn r7, r7, r23
000db8  8f837b18  div.f.rn r7, r23, r7
000dbc  0be66320  mul.f.rn r12, r7, r6
000dc0  17024601  and r4, r12, r20
000dc4  13034b04  setlt.u r6, r22, r4
000dc8  e70c4ffc  storeli.w r4, -312(r30)
000dcc  3b300300  bneq r6, zero, 12
000dd0  e740cffe  storeli.w r12, -244(r30)
000dd4  db010000  j 12
000dd8  1712b600  or r4, r12, r11
000ddc  e7404ffe  storeli.w r4, -244(r30)
000de0  1703ac00  and r6, r24, r10
000de4  8b630358  neg.f r7, r6
000de8  8f830300  exp.f.rn r7, r7
000dec  8be37311  add.f.rn r7, r7, r23
000df0  8f837b18  div.f.rn r7, r23, r7
000df4  0bec6320  mul.f.rn r24, r7, r6
000df8  170e4c01  and r28, r24, r20
000dfc  1303cb05  setlt.u r6, r22, r28
000e00  3b300300  bneq r6, zero, 12
000e04  67018fff  storeli.w r24, -240(r30)
000e08  db010000  j 12
000e0c  1712bc00  or r4, r24, r11
000e10  67014ffe  storeli.w r4, -240(r30)
000e14  1703ad00  and r6, r26, r10
000e18  2b024000  lui r4, 1024
000e1c  e7421fff  storeli.w r17, -212(r30)
000e20  8b630358  neg.f r7, r6
000e24  8f830300  exp.f.rn r7, r7
000e28  8be37311  add.f.rn r7, r7, r23
000e2c  8f837b18  div.f.rn r7, r23, r7
000e30  0bed6320  mul.f.rn r26, r7, r6
000e34  17044d01  and r8, r26, r20
000e38  13038b04  setlt.u r6, r22, r8
000e3c  3b300300  bneq r6, zero, 12
000e40  9f050d00  addli r11, r26, 0
000e44  5b010000  j 8
000e48  9715bd00  or r11, r26, r11
000e4c  1783a900  and r6, r19, r10
000e50  8b630358  neg.f r7, r6
000e54  8f830300  exp.f.rn r7, r7
000e58  8be37311  add.f.rn r7, r7, r23
000e5c  8f837b18  div.f.rn r7, r23, r7
000e60  0be36320  mul.f.rn r6, r7, r6
000e64  97094301  and r19, r6, r20
000e68  93033b05  setlt.u r7, r22, r19
000e6c  3bb00300  bneq r7, zero, 12
000e70  67416ffe  storeli.w r6, -236(r30)
000e74  db010000  j 12
000e78  97134300  or r7, r6, r4
000e7c  67417ffe  storeli.w r7, -236(r30)
000e80  e343effd  loadli.w r7,  -268(r30)
000e84  ab08ffff  lui r17, 1048560
000e88  9783a300  and r7, r7, r10
000e8c  0be50358  neg.f r10, r7
000e90  0f050500  exp.f.rn r10, r10
000e94  0b657511  add.f.rn r10, r10, r23
000e98  0f85ab18  div.f.rn r10, r23, r10
000e9c  0b657520  mul.f.rn r10, r10, r7
000ea0  97034501  and r7, r10, r20
000ea4  930b7b04  setlt.u r23, r22, r7
000ea8  3bb00b00  bneq r23, zero, 12
000eac  1f020500  addli r4, r10, 0
000eb0  5b010000  j 8
000eb4  17124500  or r4, r10, r4
000eb8  e30bfffd  loadli.w r23,  -264(r30)
000ebc  938b7a05  setlt.u r23, r21, r23
000ec0  3bf00b00  bneq r23, zero, 28
000ec4  9bcb0101  srli r23, r3, 16
000ec8  9b8b1b00  andi r23, r23, 1
000ecc  8b917111  add.s r3, r3, r23
000ed0  8b912111  add.s r3, r3, r18
000ed4  97811101  and r3, r3, r17
000ed8  67423ffe  storeli.w r3, -220(r30)
000edc  e301effd  loadli.w r3,  -272(r30)
000ee0  ab0bffff  lui r23, 1048560
000ee4  93813a04  setlt.u r3, r21, r3
000ee8  3bf00100  bneq r3, zero, 28
000eec  9b410801  srli r3, r16, 16
000ef0  9b811100  andi r3, r3, 1
000ef4  8b113810  add.s r3, r16, r3
000ef8  8b912111  add.s r3, r3, r18
000efc  97817101  and r3, r3, r23
000f00  e7023ffe  storeli.w r3, -216(r30)
000f04  e341dffd  loadli.w r3,  -276(r30)
000f08  93813a04  setlt.u r3, r21, r3
000f0c  3bf00100  bneq r3, zero, 28
000f10  9bc10c01  srli r3, r25, 16
000f14  9b811100  andi r3, r3, 1
000f18  8b913c10  add.s r3, r25, r3
000f1c  8b912111  add.s r3, r3, r18
000f20  97817101  and r3, r3, r23
000f24  e7423ffe  storeli.w r3, -212(r30)
000f28  e301dffd  loadli.w r3,  -280(r30)
000f2c  63080ffe  loadli.w r16,  -256(r30)
000f30  93813a04  setlt.u r3, r21, r3
000f34  3bf00100  bneq r3, zero, 28
000f38  9b410701  srli r3, r14, 16
000f3c  9b811100  andi r3, r3, 1
000f40  8b113710  add.s r3, r14, r3
000f44  8b912111  add.s r3, r3, r18
000f48  97817101  and r3, r3, r23
000f4c  67033ffe  storeli.w r3, -208(r30)
000f50  e341cffd  loadli.w r3,  -284(r30)
000f54  e34cfffd  loadli.w r25,  -260(r30)
000f58  93813a04  setlt.u r3, r21, r3
000f5c  3bf00100  bneq r3, zero, 28
000f60  9b410101  srli r3, r2, 16
000f64  9b811100  andi r3, r3, 1
000f68  0b113110  add.s r2, r2, r3
000f6c  0b112111  add.s r2, r2, r18
000f70  17017101  and r2, r2, r23
000f74  67432ffe  storeli.w r2, -204(r30)
000f78  6301cffd  loadli.w r2,  -288(r30)
000f7c  63071ffe  loadli.w r14,  -248(r30)
000f80  13812a04  setlt.u r2, r21, r2
000f84  3b700100  bneq r2, zero, 28
000f88  1bc10001  srli r2, r1, 16
000f8c  1b011100  andi r2, r2, 1
000f90  8b902010  add.s r1, r1, r2
000f94  8b902011  add.s r1, r1, r18
000f98  97807001  and r1, r1, r23
000f9c  e7031ffe  storeli.w r1, -200(r30)
000fa0  e340bffd  loadli.w r1,  -292(r30)
000fa4  e3015ffe  loadli.w r3,  -216(r30)
000fa8  93801a04  setlt.u r1, r21, r1
000fac  3bf00000  bneq r1, zero, 28
000fb0  9bc00701  srli r1, r15, 16
000fb4  9b801000  andi r1, r1, 1
000fb8  8b901710  add.s r1, r15, r1
000fbc  8b902011  add.s r1, r1, r18
000fc0  97807001  and r1, r1, r23
000fc4  e7431ffe  storeli.w r1, -196(r30)
000fc8  e300bffd  loadli.w r1,  -296(r30)
000fcc  63414ffe  loadli.w r2,  -220(r30)
000fd0  93801a04  setlt.u r1, r21, r1
000fd4  3be00000  bneq r1, zero, 24
000fd8  9bc00601  srli r1, r13, 16
000fdc  9b801000  andi r1, r1, 1
000fe0  8b901610  add.s r1, r13, r1
000fe4  8b902011  add.s r1, r1, r18
000fe8  978c7001  and r25, r1, r23
000fec  e340affd  loadli.w r1,  -300(r30)
000ff0  e3470ffe  loadli.w r15,  -252(r30)
000ff4  93801a04  setlt.u r1, r21, r1
000ff8  3be00000  bneq r1, zero, 24
000ffc  9bc00401  srli r1, r9, 16
001000  9b801000  andi r1, r1, 1
001004  8b901410  add.s r1, r9, r1
001008  8b902011  add.s r1, r1, r18
00100c  17887001  and r16, r1, r23
001010  e300affd  loadli.w r1,  -304(r30)
001014  e3461ffe  loadli.w r13,  -244(r30)
001018  93801a04  setlt.u r1, r21, r1
00101c  3be00000  bneq r1, zero, 24
001020  9bc00201  srli r1, r5, 16
001024  9b801000  andi r1, r1, 1
001028  8b901210  add.s r1, r5, r1
00102c  8b902011  add.s r1, r1, r18
001030  97877001  and r15, r1, r23
001034  e3409ffd  loadli.w r1,  -308(r30)
001038  9f040fff  addli r9, r30, -128
00103c  93801a04  setlt.u r1, r21, r1
001040  3be00000  bneq r1, zero, 24
001044  9bc00d01  srli r1, r27, 16
001048  9b801000  andi r1, r1, 1
00104c  8b901d10  add.s r1, r27, r1
001050  8b902011  add.s r1, r1, r18
001054  17877001  and r14, r1, r23
001058  e3009ffd  loadli.w r1,  -312(r30)
00105c  9f024000  addli r5, zero, 32
001060  93801a04  setlt.u r1, r21, r1
001064  3be00000  bneq r1, zero, 24
001068  9b400601  srli r1, r12, 16
00106c  9b801000  andi r1, r1, 1
001070  8b101610  add.s r1, r12, r1
001074  8b902011  add.s r1, r1, r18
001078  97867001  and r13, r1, r23
00107c  9380ca05  setlt.u r1, r21, r28
001080  63062ffe  loadli.w r12,  -240(r30)
001084  3be00000  bneq r1, zero, 24
001088  9b400c01  srli r1, r24, 16
00108c  9b801000  andi r1, r1, 1
001090  8b101c10  add.s r1, r24, r1
001094  8b902011  add.s r1, r1, r18
001098  17867001  and r12, r1, r23
00109c  93808a04  setlt.u r1, r21, r8
0010a0  3be00000  bneq r1, zero, 24
0010a4  9b400d01  srli r1, r26, 16
0010a8  9b801000  andi r1, r1, 1
0010ac  8b101d10  add.s r1, r26, r1
0010b0  8b902011  add.s r1, r1, r18
0010b4  97857001  and r11, r1, r23
0010b8  93803a05  setlt.u r1, r21, r19
0010bc  63442ffe  loadli.w r8,  -236(r30)
0010c0  3be00000  bneq r1, zero, 24
0010c4  9b400301  srli r1, r6, 16
0010c8  9b801000  andi r1, r1, 1
0010cc  8b101310  add.s r1, r6, r1
0010d0  8b902011  add.s r1, r1, r18
0010d4  17847001  and r8, r1, r23
0010d8  93807a04  setlt.u r1, r21, r7
0010dc  e3495ffe  loadli.w r19,  -212(r30)
0010e0  ab084000  lui r17, 1024
0010e4  3be00000  bneq r1, zero, 24
0010e8  9b400501  srli r1, r10, 16
0010ec  9b801000  andi r1, r1, 1
0010f0  8b101510  add.s r1, r10, r1
0010f4  8b902011  add.s r1, r1, r18
0010f8  17827001  and r4, r1, r23
0010fc  97004101  and r1, r2, r20
001100  63437ffe  loadli.w r6,  -196(r30)
001104  e3037ffe  loadli.w r7,  -200(r30)
001108  93001b04  setlt.u r1, r22, r1
00110c  3be00000  bneq r1, zero, 24
001110  9b400101  srli r1, r2, 16
001114  9b801000  andi r1, r1, 1
001118  8b101110  add.s r1, r2, r1
00111c  8b902011  add.s r1, r1, r18
001120  5b010000  j 8
001124  97101101  or r1, r2, r17
001128  17814101  and r2, r3, r20
00112c  63056ffe  loadli.w r10,  -208(r30)
001130  9bc00001  srli r1, r1, 16
001134  13012b04  setlt.u r2, r22, r2
001138  73101ff8  store.h r1, -128(r30)
00113c  3b600100  bneq r2, zero, 24
001140  9bc00101  srli r1, r3, 16
001144  9b801000  andi r1, r1, 1
001148  8b901110  add.s r1, r3, r1
00114c  8b902011  add.s r1, r1, r18
001150  5b010000  j 8
001154  97901101  or r1, r3, r17
001158  17814901  and r2, r19, r20
00115c  9bc00001  srli r1, r1, 16
001160  9b912400  ori r3, r9, 2
001164  13012b04  setlt.u r2, r22, r2
001168  73901100  store.h r1, 0(r3)
00116c  3b600100  bneq r2, zero, 24
001170  9bc00901  srli r1, r19, 16
001174  9b801000  andi r1, r1, 1
001178  8b901910  add.s r1, r19, r1
00117c  8b902011  add.s r1, r1, r18
001180  5b010000  j 8
001184  97901901  or r1, r19, r17
001188  17014501  and r2, r10, r20
00118c  e3416ffe  loadli.w r3,  -204(r30)
001190  9bc00001  srli r1, r1, 16
001194  13012b04  setlt.u r2, r22, r2
001198  73121ff8  store.h r1, -124(r30)
00119c  3b600100  bneq r2, zero, 24
0011a0  9b400501  srli r1, r10, 16
0011a4  9b801000  andi r1, r1, 1
0011a8  8b101510  add.s r1, r10, r1
0011ac  8b902011  add.s r1, r1, r18
0011b0  5b010000  j 8
0011b4  97101501  or r1, r10, r17
0011b8  17814101  and r2, r3, r20
0011bc  9bc00001  srli r1, r1, 16
0011c0  13012b04  setlt.u r2, r22, r2
0011c4  73131ff8  store.h r1, -122(r30)
0011c8  3b600100  bneq r2, zero, 24
0011cc  9bc00101  srli r1, r3, 16
0011d0  9b801000  andi r1, r1, 1
0011d4  8b901110  add.s r1, r3, r1
0011d8  8b902011  add.s r1, r1, r18
0011dc  5b010000  j 8
0011e0  97901101  or r1, r3, r17
0011e4  17814301  and r2, r7, r20
0011e8  9bc00001  srli r1, r1, 16
0011ec  13012b04  setlt.u r2, r22, r2
0011f0  73141ff8  store.h r1, -120(r30)
0011f4  3b600100  bneq r2, zero, 24
0011f8  9bc00301  srli r1, r7, 16
0011fc  9b801000  andi r1, r1, 1
001200  8b901310  add.s r1, r7, r1
001204  8b902011  add.s r1, r1, r18
001208  5b010000  j 8
00120c  97901301  or r1, r7, r17
001210  17014301  and r2, r6, r20
001214  9bc00001  srli r1, r1, 16
001218  13012b04  setlt.u r2, r22, r2
00121c  73151ff8  store.h r1, -118(r30)
001220  3b600100  bneq r2, zero, 24
001224  9b400301  srli r1, r6, 16
001228  9b801000  andi r1, r1, 1
00122c  8b101310  add.s r1, r6, r1
001230  8b902011  add.s r1, r1, r18
001234  5b010000  j 8
001238  97101301  or r1, r6, r17
00123c  17814c01  and r2, r25, r20
001240  9bc00001  srli r1, r1, 16
001244  13012b04  setlt.u r2, r22, r2
001248  73161ff8  store.h r1, -116(r30)
00124c  3b600100  bneq r2, zero, 24
001250  9bc00c01  srli r1, r25, 16
001254  9b801000  andi r1, r1, 1
001258  8b901c10  add.s r1, r25, r1
00125c  8b902011  add.s r1, r1, r18
001260  5b010000  j 8
001264  97901c01  or r1, r25, r17
001268  17014801  and r2, r16, r20
00126c  9bc00001  srli r1, r1, 16
001270  13012b04  setlt.u r2, r22, r2
001274  73171ff8  store.h r1, -114(r30)
001278  3b600100  bneq r2, zero, 24
00127c  9b400801  srli r1, r16, 16
001280  9b801000  andi r1, r1, 1
001284  8b101810  add.s r1, r16, r1
001288  8b902011  add.s r1, r1, r18
00128c  5b010000  j 8
001290  97101801  or r1, r16, r17
001294  17814701  and r2, r15, r20
001298  9bc00001  srli r1, r1, 16
00129c  13012b04  setlt.u r2, r22, r2
0012a0  73181ff8  store.h r1, -112(r30)
0012a4  3b600100  bneq r2, zero, 24
0012a8  9bc00701  srli r1, r15, 16
0012ac  9b801000  andi r1, r1, 1
0012b0  8b901710  add.s r1, r15, r1
0012b4  8b902011  add.s r1, r1, r18
0012b8  5b010000  j 8
0012bc  97901701  or r1, r15, r17
0012c0  17014701  and r2, r14, r20
0012c4  9bc00001  srli r1, r1, 16
0012c8  13012b04  setlt.u r2, r22, r2
0012cc  73191ff8  store.h r1, -110(r30)
0012d0  3b600100  bneq r2, zero, 24
0012d4  9b400701  srli r1, r14, 16
0012d8  9b801000  andi r1, r1, 1
0012dc  8b101710  add.s r1, r14, r1
0012e0  8b902011  add.s r1, r1, r18
0012e4  5b010000  j 8
0012e8  97101701  or r1, r14, r17
0012ec  17814601  and r2, r13, r20
0012f0  9bc00001  srli r1, r1, 16
0012f4  13012b04  setlt.u r2, r22, r2
0012f8  731a1ff8  store.h r1, -108(r30)
0012fc  3b600100  bneq r2, zero, 24
001300  9bc00601  srli r1, r13, 16
001304  9b801000  andi r1, r1, 1
001308  8b901610  add.s r1, r13, r1
00130c  8b902011  add.s r1, r1, r18
001310  5b010000  j 8
001314  97901601  or r1, r13, r17
001318  17014601  and r2, r12, r20
00131c  9bc00001  srli r1, r1, 16
001320  13012b04  setlt.u r2, r22, r2
001324  731b1ff8  store.h r1, -106(r30)
001328  3b600100  bneq r2, zero, 24
00132c  9b400601  srli r1, r12, 16
001330  9b801000  andi r1, r1, 1
001334  8b101610  add.s r1, r12, r1
001338  8b902011  add.s r1, r1, r18
00133c  5b010000  j 8
001340  97101601  or r1, r12, r17
001344  17814501  and r2, r11, r20
001348  9bc00001  srli r1, r1, 16
00134c  13012b04  setlt.u r2, r22, r2
001350  731c1ff8  store.h r1, -104(r30)
001354  3b600100  bneq r2, zero, 24
001358  9bc00501  srli r1, r11, 16
00135c  9b801000  andi r1, r1, 1
001360  8b901510  add.s r1, r11, r1
001364  8b902011  add.s r1, r1, r18
001368  5b010000  j 8
00136c  97901501  or r1, r11, r17
001370  17014401  and r2, r8, r20
001374  9bc00001  srli r1, r1, 16
001378  13012b04  setlt.u r2, r22, r2
00137c  731d1ff8  store.h r1, -102(r30)
001380  3b600100  bneq r2, zero, 24
001384  9b400401  srli r1, r8, 16
001388  9b801000  andi r1, r1, 1
00138c  8b101410  add.s r1, r8, r1
001390  8b902011  add.s r1, r1, r18
001394  5b010000  j 8
001398  97101401  or r1, r8, r17
00139c  17014201  and r2, r4, r20
0013a0  9bc00001  srli r1, r1, 16
0013a4  13012b04  setlt.u r2, r22, r2
0013a8  731e1ff8  store.h r1, -100(r30)
0013ac  b71601f6  beq r2, zero, -4700
0013b0  97101201  or r1, r4, r17
0013b4  dbb5fdff  j -4692
0013b8  9f0e0ffd  addli sp, r30, -384
0013bc  9f8e0e03  addli sp, sp, 384
0013c0  00a00300  mfence { lm, sm, gm }
0013c4  00100000  exit
0013c8  00100000  exit
0013cc  00100000  exit
0013d0  00100000  exit
0013d4  00100000  exit
0013d8  00100000  exit
0013dc  00100000  exit
0013e0  00100000  exit
0013e4  00100000  exit
0013e8  00100000  exit
0013ec  00100000  exit
0013f0  00100000  exit
0013f4  00100000  exit
0013f8  00100000  exit
0013fc  00100000  exit
001400  00100000  exit
001404  00100000  exit
001408  00100000  exit
00140c  00100000  exit
001410  00100000  exit
001414  00100000  exit
001418  00100000  exit
00141c  00100000  exit
001420  00100000  exit
001424  00100000  exit
001428  00100000  exit
00142c  00100000  exit
001430  00100000  exit
001434  00100000  exit
001438  00100000  exit
00143c  00100000  exit
001440  00100000  exit
001444  00100000  exit
001448  00100000  exit
00144c  00100000  exit
001450  00100000  exit
001454  00100000  exit
001458  00100000  exit
00145c  00100000  exit
001460  00100000  exit
001464  00100000  exit
001468  00100000  exit
00146c  00100000  exit
001470  00100000  exit
001474  00100000  exit
001478  00100000  exit
00147c  00100000  exit
001480  00100000  exit
001484  00100000  exit
001488  00100000  exit
00148c  00100000  exit
001490  00100000  exit
001494  00100000  exit
001498  00100000  exit
00149c  00100000  exit
0014a0  00100000  exit
0014a4  00100000  exit
0014a8  00100000  exit
0014ac  00100000  exit
0014b0  00100000  exit
0014b4  00100000  exit
0014b8  00100000  exit
0014bc  00100000  exit
0014c0  00100000  exit
0014c4  00100000  exit
0014c8  00100000  exit
0014cc  00100000  exit
0014d0  00100000  exit
0014d4  00100000  exit
0014d8  00100000  exit
0014dc  00100000  exit
0014e0  00100000  exit
0014e4  00100000  exit
0014e8  00100000  exit
0014ec  00100000  exit
0014f0  00100000  exit
0014f4  00100000  exit
0014f8  00100000  exit
0014fc  00100000  exit
001500  00100000  exit
001504  00100000  exit
001508  00100000  exit
00150c  00100000  exit
001510  00100000  exit
001514  00100000  exit
001518  00100000  exit
00151c  00100000  exit
001520  00100000  exit
001524  00100000  exit
001528  00100000  exit
00152c  00100000  exit
001530  00100000  exit
001534  00100000  exit
001538  00100000  exit
00153c  00100000  exit
001540  00100000  exit
001544  00100000  exit
001548  00100000  exit
00154c  00100000  exit
001550  00100000  exit
001554  00100000  exit
001558  00100000  exit
00155c  00100000  exit
001560  00100000  exit
001564  00100000  exit
001568  00100000  exit
00156c  00100000  exit
001570  00100000  exit
001574  00100000  exit
001578  00100000  exit
00157c  00100000  exit
001580  00100000  exit
001584  00100000  exit
001588  00100000  exit
00158c  00100000  exit
001590  00100000  exit
001594  00100000  exit
001598  00100000  exit
00159c  00100000  exit
0015a0  00100000  exit
0015a4  00100000  exit
0015a8  00100000  exit
0015ac  00100000  exit
0015b0  00100000  exit
0015b4  00100000  exit
0015b8  00100000  exit
0015bc  00100000  exit
0015c0  00100000  exit
0015c4  00100000  exit
0015c8  00100000  exit
0015cc  00100000  exit
0015d0  00100000  exit
0015d4  00100000  exit
0015d8  00100000  exit
0015dc  00100000  exit
0015e0  00100000  exit
0015e4  00100000  exit
0015e8  00100000  exit
0015ec  00100000  exit
0015f0  00100000  exit
0015f4  00100000  exit
0015f8  00100000  exit
0015fc  00100000  exit
001600  00100000  exit
001604  00100000  exit
