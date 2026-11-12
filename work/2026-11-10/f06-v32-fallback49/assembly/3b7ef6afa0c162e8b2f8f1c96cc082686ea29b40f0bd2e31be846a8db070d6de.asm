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
0000fc  e74b1ffc  storeli.w r1, -324(r30)
000100  cbf0400a  ble.s r1, r4, 5180
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  9f024000  addli r5, zero, 32
000110  9f040fff  addli r9, r30, -128
000114  2b0b807f  lui r22, 522240
000118  2b0c4000  lui r24, 1024
00011c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000120  9bb04000  slli r1, r1, 4
000124  e70b2ffc  storeli.w r2, -328(r30)
000128  2bf17f7f  lui r2, 522239
00012c  674b1ffc  storeli.w r1, -332(r30)
000130  ab700000  lui r1, 7
000134  9b1af1ff  ori r21, r2, 4095
000138  1b99f0ff  ori r18, r1, 4095
00013c  abf0ff7f  lui r1, 524287
000140  1b9af0ff  ori r20, r1, 4095
000144  9f200000  addli r1, zero, 2
000148  fe8100e0  vmmov mr3, r1
00014c  db0a0000  j 84
000150  9b400501  srli r1, r10, 16
000154  9b801000  andi r1, r1, 1
000158  8b101510  add.s r1, r10, r1
00015c  8b902011  add.s r1, r1, r18
000160  6b510f01  load.d r[3:4], 16(r30)
000164  6b530ff1  load.d r[7:8], -240(r30)
000168  9bc00001  srli r1, r1, 16
00016c  2b0200f0  lui r4, 983040
000170  731f1ff8  store.h r1, -98(r30)
000174  97904200  or r1, r5, r4
000178  0b216110  add.ul r[3:4], r[3:4], r[7:8]
00017c  00a00000  mfence { lm }
000180  63423ffe  loadli.w r4,  -228(r30)
000184  ff309100  s_lm2gm r1, r9, 0(r[3:4])
000188  e3007ffd  loadli.w r1,  -328(r30)
00018c  00a00000  mfence { lm }
000190  0b121210  add.s r4, r4, r1
000194  e3407ffd  loadli.w r1,  -324(r30)
000198  3f201200  blt.s r4, r1, 8
00019c  5b740200  j 5024
0001a0  e3404f00  loadli.w r1,  36(r30)
0001a4  63014f00  loadli.w r2,  32(r30)
0001a8  ab0100f0  lui r3, 983040
0001ac  e7414ffe  storeli.w r4, -228(r30)
0001b0  9f130000  addli r7, zero, 1
0001b4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0001b8  9f180000  addli r17, zero, 1
0001bc  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0001c0  97913200  or r3, r5, r3
0001c4  7e8108e0  vmmov mr2, r17
0001c8  8b101230  div.s r1, r4, r1
0001cc  2b0200f0  lui r4, 983040
0001d0  17924200  or r4, r5, r4
0001d4  8b902030  div.s r1, r1, r2
0001d8  63416ffd  loadli.w r2,  -332(r30)
0001dc  9bb0a000  slli r1, r1, 10
0001e0  8b902010  add.s r1, r1, r2
0001e4  1f010010  addli r2, zero, 2048
0001e8  0b912038  mod.s r2, r1, r2
0001ec  b3920028  sext_int2long r[6:7], r1
0001f0  17b57202  sll.d r[11:12], r[6:7], r7
0001f4  eb520f00  load.d r[6:7], 0(r30)
0001f8  7338aff0  store.d r[11:12], -240(r30)
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
000484  63088fff  loadli.w r16,  -64(r30)
000488  e3478fff  loadli.w r15,  -60(r30)
00048c  63079fff  loadli.w r14,  -56(r30)
000490  e3469fff  loadli.w r13,  -52(r30)
000494  6306afff  loadli.w r12,  -48(r30)
000498  e348afff  loadli.w r17,  -44(r30)
00049c  e305bfff  loadli.w r11,  -40(r30)
0004a0  6344bfff  loadli.w r8,  -36(r30)
0004a4  e303cfff  loadli.w r7,  -32(r30)
0004a8  e349cfff  loadli.w r19,  -28(r30)
0004ac  e304dfff  loadli.w r9,  -24(r30)
0004b0  6343dfff  loadli.w r6,  -20(r30)
0004b4  e302efff  loadli.w r5,  -16(r30)
0004b8  e341efff  loadli.w r3,  -12(r30)
0004bc  17014801  and r2, r16, r20
0004c0  67033ffe  storeli.w r3, -208(r30)
0004c4  e301ffff  loadli.w r3,  -8(r30)
0004c8  93002b04  setlt.u r1, r22, r2
0004cc  67433ffe  storeli.w r3, -204(r30)
0004d0  e341ffff  loadli.w r3,  -4(r30)
0004d4  3bb00000  bneq r1, zero, 12
0004d8  1f050800  addli r10, r16, 0
0004dc  5b010000  j 8
0004e0  17158801  or r10, r16, r24
0004e4  178e4701  and r28, r15, r20
0004e8  9300cb05  setlt.u r1, r22, r28
0004ec  3bb00000  bneq r1, zero, 12
0004f0  e74efffc  storeli.w r15, -276(r30)
0004f4  db010000  j 12
0004f8  97908701  or r1, r15, r24
0004fc  e74e1ffc  storeli.w r1, -276(r30)
000500  970d4701  and r27, r14, r20
000504  9300bb05  setlt.u r1, r22, r27
000508  3bb00000  bneq r1, zero, 12
00050c  670feffc  storeli.w r14, -272(r30)
000510  db010000  j 12
000514  97108701  or r1, r14, r24
000518  670f1ffc  storeli.w r1, -272(r30)
00051c  178d4601  and r26, r13, r20
000520  9300ab05  setlt.u r1, r22, r26
000524  3bb00000  bneq r1, zero, 12
000528  674fdffc  storeli.w r13, -268(r30)
00052c  db010000  j 12
000530  97908601  or r1, r13, r24
000534  674f1ffc  storeli.w r1, -268(r30)
000538  970c4601  and r25, r12, r20
00053c  2b024000  lui r4, 1024
000540  93009b05  setlt.u r1, r22, r25
000544  3bb00000  bneq r1, zero, 12
000548  e70fcffc  storeli.w r12, -264(r30)
00054c  db010000  j 12
000550  97108601  or r1, r12, r24
000554  e70f1ffc  storeli.w r1, -264(r30)
000558  178c4801  and r24, r17, r20
00055c  93008b05  setlt.u r1, r22, r24
000560  3bb00000  bneq r1, zero, 12
000564  e74f1ffd  storeli.w r17, -260(r30)
000568  db010000  j 12
00056c  97904800  or r1, r17, r4
000570  e74f1ffc  storeli.w r1, -260(r30)
000574  978b4501  and r23, r11, r20
000578  e70cbffc  storeli.w r11, -312(r30)
00057c  674c1ffd  storeli.w r17, -316(r30)
000580  93007b05  setlt.u r1, r22, r23
000584  3bb00000  bneq r1, zero, 12
000588  6700bffe  storeli.w r11, -256(r30)
00058c  db010000  j 12
000590  97904500  or r1, r11, r4
000594  67001ffe  storeli.w r1, -256(r30)
000598  97084401  and r17, r8, r20
00059c  e74c8ffc  storeli.w r8, -308(r30)
0005a0  93001b05  setlt.u r1, r22, r17
0005a4  3bb00000  bneq r1, zero, 12
0005a8  67408ffe  storeli.w r8, -252(r30)
0005ac  db010000  j 12
0005b0  97104400  or r1, r8, r4
0005b4  67401ffe  storeli.w r1, -252(r30)
0005b8  17844301  and r8, r7, r20
0005bc  e7033ffe  storeli.w r3, -200(r30)
0005c0  93008b04  setlt.u r1, r22, r8
0005c4  3bb00000  bneq r1, zero, 12
0005c8  e7007ffe  storeli.w r7, -248(r30)
0005cc  db010000  j 12
0005d0  97904300  or r1, r7, r4
0005d4  e7001ffe  storeli.w r1, -248(r30)
0005d8  97814901  and r3, r19, r20
0005dc  670d3ffd  storeli.w r19, -304(r30)
0005e0  93003b04  setlt.u r1, r22, r3
0005e4  37a00000  beq r1, zero, 8
0005e8  97994900  or r19, r19, r4
0005ec  97804401  and r1, r9, r20
0005f0  674d9ffc  storeli.w r9, -300(r30)
0005f4  e70d1ffc  storeli.w r1, -296(r30)
0005f8  93001b04  setlt.u r1, r22, r1
0005fc  37a00000  beq r1, zero, 8
000600  97944400  or r9, r9, r4
000604  97004301  and r1, r6, r20
000608  9f850300  addli r11, r7, 0
00060c  e74d1ffc  storeli.w r1, -292(r30)
000610  93001b04  setlt.u r1, r22, r1
000614  3bb00000  bneq r1, zero, 12
000618  67026ffe  storeli.w r6, -224(r30)
00061c  db010000  j 12
000620  97104300  or r1, r6, r4
000624  67021ffe  storeli.w r1, -224(r30)
000628  97804201  and r1, r5, r20
00062c  9f030300  addli r7, r6, 0
000630  1f830200  addli r6, r5, 0
000634  e743affe  storeli.w r10, -196(r30)
000638  670e1ffc  storeli.w r1, -288(r30)
00063c  93001b04  setlt.u r1, r22, r1
000640  3bb00000  bneq r1, zero, 12
000644  67425ffe  storeli.w r5, -220(r30)
000648  db010000  j 12
00064c  97904200  or r1, r5, r4
000650  67421ffe  storeli.w r1, -220(r30)
000654  e3026ffe  loadli.w r5,  -208(r30)
000658  63456ffe  loadli.w r10,  -204(r30)
00065c  97804201  and r1, r5, r20
000660  674e1ffc  storeli.w r1, -284(r30)
000664  93001b04  setlt.u r1, r22, r1
000668  3bb00000  bneq r1, zero, 12
00066c  e7025ffe  storeli.w r5, -216(r30)
000670  db010000  j 12
000674  97904200  or r1, r5, r4
000678  e7021ffe  storeli.w r1, -216(r30)
00067c  97004501  and r1, r10, r20
000680  9f020300  addli r5, r6, 0
000684  e7409ffe  storeli.w r9, -244(r30)
000688  e70e1ffc  storeli.w r1, -280(r30)
00068c  93001b04  setlt.u r1, r22, r1
000690  3bb00000  bneq r1, zero, 12
000694  e742affe  storeli.w r10, -212(r30)
000698  db010000  j 12
00069c  97104500  or r1, r10, r4
0006a0  e7421ffe  storeli.w r1, -212(r30)
0006a4  63057ffe  loadli.w r10,  -200(r30)
0006a8  1f830300  addli r6, r7, 0
0006ac  97004501  and r1, r10, r20
0006b0  93041b04  setlt.u r9, r22, r1
0006b4  37a00400  beq r9, zero, 8
0006b8  17154500  or r10, r10, r4
0006bc  93842a04  setlt.u r9, r21, r2
0006c0  bb800400  bneq r9, zero, 32
0006c4  9b440801  srli r9, r16, 16
0006c8  9b841400  andi r9, r9, 1
0006cc  8b149810  add.s r9, r16, r9
0006d0  2b08ffff  lui r16, 1048560
0006d4  8b942411  add.s r9, r9, r18
0006d8  17810401  and r2, r9, r16
0006dc  e7432ffe  storeli.w r2, -196(r30)
0006e0  9384ca05  setlt.u r9, r21, r28
0006e4  6348dffd  loadli.w r16,  -276(r30)
0006e8  2b0effff  lui r28, 1048560
0006ec  3be00400  bneq r9, zero, 24
0006f0  9bc40701  srli r9, r15, 16
0006f4  9b841400  andi r9, r9, 1
0006f8  8b949710  add.s r9, r15, r9
0006fc  8b942411  add.s r9, r9, r18
000700  1788c401  and r16, r9, r28
000704  9384ba05  setlt.u r9, r21, r27
000708  e307effd  loadli.w r15,  -272(r30)
00070c  3be00400  bneq r9, zero, 24
000710  9b440701  srli r9, r14, 16
000714  9b841400  andi r9, r9, 1
000718  8b149710  add.s r9, r14, r9
00071c  8b942411  add.s r9, r9, r18
000720  9787c401  and r15, r9, r28
000724  9384aa05  setlt.u r9, r21, r26
000728  6347effd  loadli.w r14,  -268(r30)
00072c  3be00400  bneq r9, zero, 24
000730  9bc40601  srli r9, r13, 16
000734  9b841400  andi r9, r9, 1
000738  8b949610  add.s r9, r13, r9
00073c  8b942411  add.s r9, r9, r18
000740  1787c401  and r14, r9, r28
000744  93849a05  setlt.u r9, r21, r25
000748  634dfffd  loadli.w r26,  -260(r30)
00074c  e306fffd  loadli.w r13,  -264(r30)
000750  3be00400  bneq r9, zero, 24
000754  9b440601  srli r9, r12, 16
000758  9b841400  andi r9, r9, 1
00075c  8b149610  add.s r9, r12, r9
000760  8b942411  add.s r9, r9, r18
000764  9786c401  and r13, r9, r28
000768  93848a05  setlt.u r9, r21, r24
00076c  e30c0ffe  loadli.w r25,  -256(r30)
000770  3bf00400  bneq r9, zero, 28
000774  63418ffd  loadli.w r2,  -316(r30)
000778  9b440101  srli r9, r2, 16
00077c  9b841400  andi r9, r9, 1
000780  8b149110  add.s r9, r2, r9
000784  8b942411  add.s r9, r9, r18
000788  178dc401  and r26, r9, r28
00078c  93847a05  setlt.u r9, r21, r23
000790  63460ffe  loadli.w r12,  -252(r30)
000794  2b0c4000  lui r24, 1024
000798  3bf00400  bneq r9, zero, 28
00079c  63019ffd  loadli.w r2,  -312(r30)
0007a0  9b440101  srli r9, r2, 16
0007a4  9b841400  andi r9, r9, 1
0007a8  8b149110  add.s r9, r2, r9
0007ac  8b942411  add.s r9, r9, r18
0007b0  978cc401  and r25, r9, r28
0007b4  93841a05  setlt.u r9, r21, r17
0007b8  e30b1ffe  loadli.w r23,  -248(r30)
0007bc  3bf00400  bneq r9, zero, 28
0007c0  63419ffd  loadli.w r2,  -308(r30)
0007c4  9b440101  srli r9, r2, 16
0007c8  9b841400  andi r9, r9, 1
0007cc  8b149110  add.s r9, r2, r9
0007d0  8b942411  add.s r9, r9, r18
0007d4  1786c401  and r12, r9, r28
0007d8  13848a04  setlt.u r8, r21, r8
0007dc  3b600400  bneq r8, zero, 24
0007e0  1bc40501  srli r8, r11, 16
0007e4  1b041400  andi r8, r8, 1
0007e8  0b948510  add.s r8, r11, r8
0007ec  0b142411  add.s r8, r8, r18
0007f0  970bc401  and r23, r8, r28
0007f4  93813a04  setlt.u r3, r21, r3
0007f8  e3441ffe  loadli.w r9,  -244(r30)
0007fc  3bf00100  bneq r3, zero, 28
000800  6301affd  loadli.w r2,  -304(r30)
000804  9b410101  srli r3, r2, 16
000808  9b811100  andi r3, r3, 1
00080c  8b113110  add.s r3, r2, r3
000810  8b912111  add.s r3, r3, r18
000814  9789c101  and r19, r3, r28
000818  6301bffd  loadli.w r2,  -296(r30)
00081c  63044ffe  loadli.w r8,  -224(r30)
000820  93812a04  setlt.u r3, r21, r2
000824  3bf00100  bneq r3, zero, 28
000828  6341affd  loadli.w r2,  -300(r30)
00082c  9b410101  srli r3, r2, 16
000830  9b811100  andi r3, r3, 1
000834  8b113110  add.s r3, r2, r3
000838  8b912111  add.s r3, r3, r18
00083c  9784c101  and r9, r3, r28
000840  6341bffd  loadli.w r2,  -292(r30)
000844  e3035ffe  loadli.w r7,  -216(r30)
000848  93812a04  setlt.u r3, r21, r2
00084c  3be00100  bneq r3, zero, 24
000850  9b410301  srli r3, r6, 16
000854  9b811100  andi r3, r3, 1
000858  8b113310  add.s r3, r6, r3
00085c  8b912111  add.s r3, r3, r18
000860  1784c101  and r8, r3, r28
000864  6301cffd  loadli.w r2,  -288(r30)
000868  63434ffe  loadli.w r6,  -220(r30)
00086c  93812a04  setlt.u r3, r21, r2
000870  3be00100  bneq r3, zero, 24
000874  9bc10201  srli r3, r5, 16
000878  9b811100  andi r3, r3, 1
00087c  8b913210  add.s r3, r5, r3
000880  8b912111  add.s r3, r3, r18
000884  1783c101  and r6, r3, r28
000888  6341cffd  loadli.w r2,  -284(r30)
00088c  e3425ffe  loadli.w r5,  -212(r30)
000890  93812a04  setlt.u r3, r21, r2
000894  3bf00100  bneq r3, zero, 28
000898  63016ffe  loadli.w r2,  -208(r30)
00089c  9b410101  srli r3, r2, 16
0008a0  9b811100  andi r3, r3, 1
0008a4  8b113110  add.s r3, r2, r3
0008a8  8b912111  add.s r3, r3, r18
0008ac  9783c101  and r7, r3, r28
0008b0  6301dffd  loadli.w r2,  -280(r30)
0008b4  63427ffe  loadli.w r4,  -196(r30)
0008b8  13812a04  setlt.u r2, r21, r2
0008bc  3b700100  bneq r2, zero, 28
0008c0  e3416ffe  loadli.w r3,  -204(r30)
0008c4  1bc10101  srli r2, r3, 16
0008c8  1b011100  andi r2, r2, 1
0008cc  0b912110  add.s r2, r3, r2
0008d0  0b112111  add.s r2, r2, r18
0008d4  9702c101  and r5, r2, r28
0008d8  93801a04  setlt.u r1, r21, r1
0008dc  9f010500  addli r3, r10, 0
0008e0  3bf00000  bneq r1, zero, 28
0008e4  63017ffe  loadli.w r2,  -200(r30)
0008e8  9b400101  srli r1, r2, 16
0008ec  9b801000  andi r1, r1, 1
0008f0  8b101110  add.s r1, r2, r1
0008f4  8b902011  add.s r1, r1, r18
0008f8  9781c001  and r3, r1, r28
0008fc  97004201  and r1, r4, r20
000900  93001b04  setlt.u r1, r22, r1
000904  3be00000  bneq r1, zero, 24
000908  9b400201  srli r1, r4, 16
00090c  9b801000  andi r1, r1, 1
000910  8b101210  add.s r1, r4, r1
000914  8b982011  add.s r17, r1, r18
000918  5b010000  j 8
00091c  97188201  or r17, r4, r24
000920  97004801  and r1, r16, r20
000924  93001b04  setlt.u r1, r22, r1
000928  3be00000  bneq r1, zero, 24
00092c  9b400801  srli r1, r16, 16
000930  9b801000  andi r1, r1, 1
000934  8b101810  add.s r1, r16, r1
000938  0b982011  add.s r16, r1, r18
00093c  5b010000  j 8
000940  17188801  or r16, r16, r24
000944  97804701  and r1, r15, r20
000948  93001b04  setlt.u r1, r22, r1
00094c  3be00000  bneq r1, zero, 24
000950  9bc00701  srli r1, r15, 16
000954  9b801000  andi r1, r1, 1
000958  8b901710  add.s r1, r15, r1
00095c  8b972011  add.s r15, r1, r18
000960  5b010000  j 8
000964  97978701  or r15, r15, r24
000968  97004701  and r1, r14, r20
00096c  93001b04  setlt.u r1, r22, r1
000970  3be00000  bneq r1, zero, 24
000974  9b400701  srli r1, r14, 16
000978  9b801000  andi r1, r1, 1
00097c  8b101710  add.s r1, r14, r1
000980  0b972011  add.s r14, r1, r18
000984  5b010000  j 8
000988  17178701  or r14, r14, r24
00098c  97804601  and r1, r13, r20
000990  93001b04  setlt.u r1, r22, r1
000994  3be00000  bneq r1, zero, 24
000998  9bc00601  srli r1, r13, 16
00099c  9b801000  andi r1, r1, 1
0009a0  8b901610  add.s r1, r13, r1
0009a4  8b962011  add.s r13, r1, r18
0009a8  5b010000  j 8
0009ac  97968601  or r13, r13, r24
0009b0  97004d01  and r1, r26, r20
0009b4  93001b04  setlt.u r1, r22, r1
0009b8  3be00000  bneq r1, zero, 24
0009bc  9b400d01  srli r1, r26, 16
0009c0  9b801000  andi r1, r1, 1
0009c4  8b101d10  add.s r1, r26, r1
0009c8  8b952011  add.s r11, r1, r18
0009cc  5b010000  j 8
0009d0  97158d01  or r11, r26, r24
0009d4  97804c01  and r1, r25, r20
0009d8  93001b04  setlt.u r1, r22, r1
0009dc  3be00000  bneq r1, zero, 24
0009e0  9bc00c01  srli r1, r25, 16
0009e4  9b801000  andi r1, r1, 1
0009e8  8b901c10  add.s r1, r25, r1
0009ec  0b922011  add.s r4, r1, r18
0009f0  5b010000  j 8
0009f4  17928c01  or r4, r25, r24
0009f8  97004601  and r1, r12, r20
0009fc  93001b04  setlt.u r1, r22, r1
000a00  3be00000  bneq r1, zero, 24
000a04  9b400601  srli r1, r12, 16
000a08  9b801000  andi r1, r1, 1
000a0c  8b101610  add.s r1, r12, r1
000a10  0b962011  add.s r12, r1, r18
000a14  5b010000  j 8
000a18  17168601  or r12, r12, r24
000a1c  97804b01  and r1, r23, r20
000a20  93001b04  setlt.u r1, r22, r1
000a24  3be00000  bneq r1, zero, 24
000a28  9bc00b01  srli r1, r23, 16
000a2c  9b801000  andi r1, r1, 1
000a30  8b901b10  add.s r1, r23, r1
000a34  0b952011  add.s r10, r1, r18
000a38  5b010000  j 8
000a3c  17958b01  or r10, r23, r24
000a40  97804901  and r1, r19, r20
000a44  93001b04  setlt.u r1, r22, r1
000a48  3be00000  bneq r1, zero, 24
000a4c  9bc00901  srli r1, r19, 16
000a50  9b801000  andi r1, r1, 1
000a54  8b901910  add.s r1, r19, r1
000a58  8b902011  add.s r1, r1, r18
000a5c  5b010000  j 8
000a60  97908901  or r1, r19, r24
000a64  17814401  and r2, r9, r20
000a68  13012b04  setlt.u r2, r22, r2
000a6c  3b600100  bneq r2, zero, 24
000a70  1bc10401  srli r2, r9, 16
000a74  1b011100  andi r2, r2, 1
000a78  0b912410  add.s r2, r9, r2
000a7c  8b142111  add.s r9, r2, r18
000a80  5b010000  j 8
000a84  97948401  or r9, r9, r24
000a88  17014401  and r2, r8, r20
000a8c  13012b04  setlt.u r2, r22, r2
000a90  3b600100  bneq r2, zero, 24
000a94  1b410401  srli r2, r8, 16
000a98  1b011100  andi r2, r2, 1
000a9c  0b112410  add.s r2, r8, r2
000aa0  0b142111  add.s r8, r2, r18
000aa4  5b010000  j 8
000aa8  17148401  or r8, r8, r24
000aac  17014301  and r2, r6, r20
000ab0  13012b04  setlt.u r2, r22, r2
000ab4  3b600100  bneq r2, zero, 24
000ab8  1b410301  srli r2, r6, 16
000abc  1b011100  andi r2, r2, 1
000ac0  0b112310  add.s r2, r6, r2
000ac4  0b132111  add.s r6, r2, r18
000ac8  5b010000  j 8
000acc  17138301  or r6, r6, r24
000ad0  17814301  and r2, r7, r20
000ad4  13012b04  setlt.u r2, r22, r2
000ad8  3b600100  bneq r2, zero, 24
000adc  1bc10301  srli r2, r7, 16
000ae0  1b011100  andi r2, r2, 1
000ae4  0b912310  add.s r2, r7, r2
000ae8  8b132111  add.s r7, r2, r18
000aec  5b010000  j 8
000af0  97938301  or r7, r7, r24
000af4  17814201  and r2, r5, r20
000af8  13012b04  setlt.u r2, r22, r2
000afc  3b600100  bneq r2, zero, 24
000b00  1bc10201  srli r2, r5, 16
000b04  1b011100  andi r2, r2, 1
000b08  0b912210  add.s r2, r5, r2
000b0c  8b122111  add.s r5, r2, r18
000b10  5b010000  j 8
000b14  97928201  or r5, r5, r24
000b18  17814101  and r2, r3, r20
000b1c  13012b04  setlt.u r2, r22, r2
000b20  3b600100  bneq r2, zero, 24
000b24  1bc10101  srli r2, r3, 16
000b28  1b011100  andi r2, r2, 1
000b2c  0b912110  add.s r2, r3, r2
000b30  8b112111  add.s r3, r2, r18
000b34  5b010000  j 8
000b38  97918101  or r3, r3, r24
000b3c  1781c801  and r2, r17, r28
000b40  9bc87801  srli r17, r17, 23
000b44  9f0c0000  addli r25, zero, 0
000b48  9b399100  slli r19, r2, 9
000b4c  936b0104  setlt.f r23, r2, zero
000b50  9b88f80f  andi r17, r17, 255
000b54  93890900  seteq r19, r19, zero
000b58  9bf8f80f  setlti r17, r17, 255
000b5c  97983801  or r17, r17, r19
000b60  97881b01  and r17, r23, r17
000b64  3ba00800  bneq r17, zero, 8
000b68  9f0c0100  addli r25, r2, 0
000b6c  1701c801  and r2, r16, r28
000b70  1b487801  srli r16, r16, 23
000b74  9b389100  slli r17, r2, 9
000b78  93690104  setlt.f r19, r2, zero
000b7c  1b08f80f  andi r16, r16, 255
000b80  93880800  seteq r17, r17, zero
000b84  1b78f80f  setlti r16, r16, 255
000b88  17181801  or r16, r16, r17
000b8c  17880901  and r16, r19, r16
000b90  9f090000  addli r19, zero, 0
000b94  3b200800  bneq r16, zero, 8
000b98  9f090100  addli r19, r2, 0
000b9c  1781c701  and r2, r15, r28
000ba0  9bc77701  srli r15, r15, 23
000ba4  1b389100  slli r16, r2, 9
000ba8  93680104  setlt.f r17, r2, zero
000bac  9b87f70f  andi r15, r15, 255
000bb0  13080800  seteq r16, r16, zero
000bb4  9bf7f70f  setlti r15, r15, 255
000bb8  97970701  or r15, r15, r16
000bbc  9787f800  and r15, r17, r15
000bc0  9f080000  addli r17, zero, 0
000bc4  3ba00700  bneq r15, zero, 8
000bc8  9f080100  addli r17, r2, 0
000bcc  1701c701  and r2, r14, r28
000bd0  1b477701  srli r14, r14, 23
000bd4  9b379100  slli r15, r2, 9
000bd8  13680104  setlt.f r16, r2, zero
000bdc  1b07f70f  andi r14, r14, 255
000be0  93870700  seteq r15, r15, zero
000be4  1b77f70f  setlti r14, r14, 255
000be8  1717f700  or r14, r14, r15
000bec  1707e800  and r14, r16, r14
000bf0  1f080000  addli r16, zero, 0
000bf4  3b200700  bneq r14, zero, 8
000bf8  1f080100  addli r16, r2, 0
000bfc  1781c601  and r2, r13, r28
000c00  9bc67601  srli r13, r13, 23
000c04  1b379100  slli r14, r2, 9
000c08  93670104  setlt.f r15, r2, zero
000c0c  9b86f60f  andi r13, r13, 255
000c10  13070700  seteq r14, r14, zero
000c14  9bf6f60f  setlti r13, r13, 255
000c18  9796e600  or r13, r13, r14
000c1c  9786d700  and r13, r15, r13
000c20  9f070000  addli r15, zero, 0
000c24  3ba00600  bneq r13, zero, 8
000c28  9f070100  addli r15, r2, 0
000c2c  1781c501  and r2, r11, r28
000c30  9bc57501  srli r11, r11, 23
000c34  1f0d0000  addli r26, zero, 0
000c38  9b369100  slli r13, r2, 9
000c3c  13670104  setlt.f r14, r2, zero
000c40  9b85f50f  andi r11, r11, 255
000c44  93860600  seteq r13, r13, zero
000c48  9bf5f50f  setlti r11, r11, 255
000c4c  9795d500  or r11, r11, r13
000c50  9705b700  and r11, r14, r11
000c54  3ba00500  bneq r11, zero, 8
000c58  1f0d0100  addli r26, r2, 0
000c5c  1701c201  and r2, r4, r28
000c60  1b427201  srli r4, r4, 23
000c64  9f0d0000  addli r27, zero, 0
000c68  2b07ff7f  lui r14, 524272
000c6c  9b359100  slli r11, r2, 9
000c70  93660104  setlt.f r13, r2, zero
000c74  1b02f20f  andi r4, r4, 255
000c78  93850500  seteq r11, r11, zero
000c7c  1b72f20f  setlti r4, r4, 255
000c80  1712b200  or r4, r4, r11
000c84  17824600  and r4, r13, r4
000c88  3b200200  bneq r4, zero, 8
000c8c  9f0d0100  addli r27, r2, 0
000c90  1701c601  and r2, r12, r28
000c94  9b457601  srli r11, r12, 23
000c98  1b329100  slli r4, r2, 9
000c9c  13660104  setlt.f r12, r2, zero
000ca0  9b85f50f  andi r11, r11, 255
000ca4  13020200  seteq r4, r4, zero
000ca8  9bf5f50f  setlti r11, r11, 255
000cac  17924500  or r4, r11, r4
000cb0  17024600  and r4, r12, r4
000cb4  1f060000  addli r12, zero, 0
000cb8  3b200200  bneq r4, zero, 8
000cbc  1f060100  addli r12, r2, 0
000cc0  1701c501  and r2, r10, r28
000cc4  1b457501  srli r10, r10, 23
000cc8  1b329100  slli r4, r2, 9
000ccc  93650104  setlt.f r11, r2, zero
000cd0  1b05f50f  andi r10, r10, 255
000cd4  13020200  seteq r4, r4, zero
000cd8  1b75f50f  setlti r10, r10, 255
000cdc  17124500  or r4, r10, r4
000ce0  17824500  and r4, r11, r4
000ce4  9f050000  addli r11, zero, 0
000ce8  3b200200  bneq r4, zero, 8
000cec  9f050100  addli r11, r2, 0
000cf0  1781c001  and r2, r1, r28
000cf4  9bc07001  srli r1, r1, 23
000cf8  1b329100  slli r4, r2, 9
000cfc  13650104  setlt.f r10, r2, zero
000d00  9b80f00f  andi r1, r1, 255
000d04  13020200  seteq r4, r4, zero
000d08  9bf0f00f  setlti r1, r1, 255
000d0c  97904000  or r1, r1, r4
000d10  17021500  and r4, r10, r1
000d14  9f000000  addli r1, zero, 0
000d18  3b200200  bneq r4, zero, 8
000d1c  9f000100  addli r1, r2, 0
000d20  1781c401  and r2, r9, r28
000d24  9bc47401  srli r9, r9, 23
000d28  67431ffe  storeli.w r1, -204(r30)
000d2c  1b329100  slli r4, r2, 9
000d30  13650104  setlt.f r10, r2, zero
000d34  9b84f40f  andi r9, r9, 255
000d38  13020200  seteq r4, r4, zero
000d3c  9bf4f40f  setlti r9, r9, 255
000d40  17924400  or r4, r9, r4
000d44  17024500  and r4, r10, r4
000d48  1f050000  addli r10, zero, 0
000d4c  3b200200  bneq r4, zero, 8
000d50  1f050100  addli r10, r2, 0
000d54  1701c401  and r2, r8, r28
000d58  1b447401  srli r8, r8, 23
000d5c  9f000000  addli r1, zero, 0
000d60  1b329100  slli r4, r2, 9
000d64  93640104  setlt.f r9, r2, zero
000d68  1b04f40f  andi r8, r8, 255
000d6c  13020200  seteq r4, r4, zero
000d70  1b74f40f  setlti r8, r8, 255
000d74  17124400  or r4, r8, r4
000d78  17824400  and r4, r9, r4
000d7c  3b200200  bneq r4, zero, 8
000d80  9f000100  addli r1, r2, 0
000d84  1701c301  and r2, r6, r28
000d88  1b437301  srli r6, r6, 23
000d8c  63446ffe  loadli.w r8,  -204(r30)
000d90  67031ffe  storeli.w r1, -208(r30)
000d94  e7430ffe  storeli.w zero, -196(r30)
000d98  1b329100  slli r4, r2, 9
000d9c  93640104  setlt.f r9, r2, zero
000da0  1b03f30f  andi r6, r6, 255
000da4  13020200  seteq r4, r4, zero
000da8  1b73f30f  setlti r6, r6, 255
000dac  17124300  or r4, r6, r4
000db0  17824400  and r4, r9, r4
000db4  3b200200  bneq r4, zero, 8
000db8  e7432ffe  storeli.w r2, -196(r30)
000dbc  1781c301  and r2, r7, r28
000dc0  9bc37301  srli r7, r7, 23
000dc4  e7030ffe  storeli.w zero, -200(r30)
000dc8  1b329100  slli r4, r2, 9
000dcc  93640104  setlt.f r9, r2, zero
000dd0  9b83f30f  andi r7, r7, 255
000dd4  13020200  seteq r4, r4, zero
000dd8  9bf3f30f  setlti r7, r7, 255
000ddc  17924300  or r4, r7, r4
000de0  17824400  and r4, r9, r4
000de4  3b200200  bneq r4, zero, 8
000de8  e7032ffe  storeli.w r2, -200(r30)
000dec  1781c201  and r2, r5, r28
000df0  9bc27201  srli r5, r5, 23
000df4  9f000000  addli r1, zero, 0
000df8  1b329100  slli r4, r2, 9
000dfc  93630104  setlt.f r7, r2, zero
000e00  9b82f20f  andi r5, r5, 255
000e04  13020200  seteq r4, r4, zero
000e08  9bf2f20f  setlti r5, r5, 255
000e0c  17924200  or r4, r5, r4
000e10  17824300  and r4, r7, r4
000e14  3b200200  bneq r4, zero, 8
000e18  9f000100  addli r1, r2, 0
000e1c  1781c101  and r2, r3, r28
000e20  9bc17101  srli r3, r3, 23
000e24  e7021ffe  storeli.w r1, -216(r30)
000e28  1b329100  slli r4, r2, 9
000e2c  93620104  setlt.f r5, r2, zero
000e30  9b81f10f  andi r3, r3, 255
000e34  13020200  seteq r4, r4, zero
000e38  9bf1f10f  setlti r3, r3, 255
000e3c  97914100  or r3, r3, r4
000e40  17823200  and r4, r5, r3
000e44  9f010000  addli r3, zero, 0
000e48  3b200200  bneq r4, zero, 8
000e4c  9f010100  addli r3, r2, 0
000e50  9783ec00  and r7, r25, r14
000e54  13017b04  setlt.u r2, r22, r7
000e58  3b300100  bneq r2, zero, 12
000e5c  67029fff  storeli.w r25, -224(r30)
000e60  db010000  j 12
000e64  97908c01  or r1, r25, r24
000e68  67021ffe  storeli.w r1, -224(r30)
000e6c  978be900  and r23, r19, r14
000e70  13017b05  setlt.u r2, r22, r23
000e74  3b300100  bneq r2, zero, 12
000e78  e74e3ffd  storeli.w r19, -276(r30)
000e7c  db010000  j 12
000e80  97908901  or r1, r19, r24
000e84  e74e1ffc  storeli.w r1, -276(r30)
000e88  1782e800  and r4, r17, r14
000e8c  13014b04  setlt.u r2, r22, r4
000e90  3b300100  bneq r2, zero, 12
000e94  e7421fff  storeli.w r17, -212(r30)
000e98  db010000  j 12
000e9c  97908801  or r1, r17, r24
000ea0  e7421ffe  storeli.w r1, -212(r30)
000ea4  9704e800  and r9, r16, r14
000ea8  13019b04  setlt.u r2, r22, r9
000eac  3b300100  bneq r2, zero, 12
000eb0  670f0ffd  storeli.w r16, -272(r30)
000eb4  db010000  j 12
000eb8  97108801  or r1, r16, r24
000ebc  670f1ffc  storeli.w r1, -272(r30)
000ec0  1783e700  and r6, r15, r14
000ec4  67423ffe  storeli.w r3, -220(r30)
000ec8  13016b04  setlt.u r2, r22, r6
000ecc  3b300100  bneq r2, zero, 12
000ed0  674ffffc  storeli.w r15, -268(r30)
000ed4  db010000  j 12
000ed8  97908701  or r1, r15, r24
000edc  674f1ffc  storeli.w r1, -268(r30)
000ee0  1701ed00  and r2, r26, r14
000ee4  93022b04  setlt.u r5, r22, r2
000ee8  3bb00200  bneq r5, zero, 12
000eec  e70faffd  storeli.w r26, -264(r30)
000ef0  db010000  j 12
000ef4  97108d01  or r1, r26, r24
000ef8  e70f1ffc  storeli.w r1, -264(r30)
000efc  9786ed00  and r13, r27, r14
000f00  674dfffc  storeli.w r15, -300(r30)
000f04  9302db04  setlt.u r5, r22, r13
000f08  3bb00200  bneq r5, zero, 12
000f0c  e74fbffd  storeli.w r27, -260(r30)
000f10  db010000  j 12
000f14  97908d01  or r1, r27, r24
000f18  e74f1ffc  storeli.w r1, -260(r30)
000f1c  9707e600  and r15, r12, r14
000f20  e70d0ffd  storeli.w r16, -296(r30)
000f24  9302fb04  setlt.u r5, r22, r15
000f28  3bb00200  bneq r5, zero, 12
000f2c  6700cffe  storeli.w r12, -256(r30)
000f30  db010000  j 12
000f34  97108601  or r1, r12, r24
000f38  67001ffe  storeli.w r1, -256(r30)
000f3c  9782e500  and r5, r11, r14
000f40  ab00ffff  lui r1, 1048560
000f44  13085b04  setlt.u r16, r22, r5
000f48  3b300800  bneq r16, zero, 12
000f4c  6740bffe  storeli.w r11, -252(r30)
000f50  db010000  j 12
000f54  97918501  or r3, r11, r24
000f58  67403ffe  storeli.w r3, -252(r30)
000f5c  170ee400  and r28, r8, r14
000f60  670daffd  storeli.w r26, -304(r30)
000f64  e74cbffd  storeli.w r27, -308(r30)
000f68  1308cb05  setlt.u r16, r22, r28
000f6c  3b300800  bneq r16, zero, 12
000f70  1f0d0400  addli r26, r8, 0
000f74  5b010000  j 8
000f78  171d8401  or r26, r8, r24
000f7c  970de500  and r27, r10, r14
000f80  63046ffe  loadli.w r8,  -208(r30)
000f84  9f010500  addli r3, r10, 0
000f88  1308bb05  setlt.u r16, r22, r27
000f8c  670c3ffc  storeli.w r3, -320(r30)
000f90  37300800  beq r16, zero, 12
000f94  2b054000  lui r10, 1024
000f98  9791a100  or r3, r3, r10
000f9c  e7003ffe  storeli.w r3, -248(r30)
000fa0  9701e400  and r3, r8, r14
000fa4  e70ccffc  storeli.w r12, -312(r30)
000fa8  13083b04  setlt.u r16, r22, r3
000fac  e74d3ffc  storeli.w r3, -292(r30)
000fb0  3b300800  bneq r16, zero, 12
000fb4  1f060400  addli r12, r8, 0
000fb8  5b010000  j 8
000fbc  17168401  or r12, r8, r24
000fc0  674cbffc  storeli.w r11, -316(r30)
000fc4  e3457ffe  loadli.w r11,  -196(r30)
000fc8  9781e500  and r3, r11, r14
000fcc  13083b04  setlt.u r16, r22, r3
000fd0  670e3ffc  storeli.w r3, -288(r30)
000fd4  37200800  beq r16, zero, 8
000fd8  97958501  or r11, r11, r24
000fdc  9f810900  addli r3, r19, 0
000fe0  e3097ffe  loadli.w r19,  -200(r30)
000fe4  1784e900  and r8, r19, r14
000fe8  13088b04  setlt.u r16, r22, r8
000fec  674e8ffc  storeli.w r8, -284(r30)
000ff0  37200800  beq r16, zero, 8
000ff4  97998901  or r19, r19, r24
000ff8  63045ffe  loadli.w r8,  -216(r30)
000ffc  1705e400  and r10, r8, r14
001000  1308ab04  setlt.u r16, r22, r10
001004  e70eaffc  storeli.w r10, -280(r30)
001008  3b300800  bneq r16, zero, 12
00100c  e7408ffe  storeli.w r8, -244(r30)
001010  db010000  j 12
001014  17188401  or r16, r8, r24
001018  e7400fff  storeli.w r16, -244(r30)
00101c  63454ffe  loadli.w r10,  -220(r30)
001020  6344dffd  loadli.w r8,  -276(r30)
001024  1708e500  and r16, r10, r14
001028  13070b05  setlt.u r14, r22, r16
00102c  37200700  beq r14, zero, 8
001030  17158501  or r10, r10, r24
001034  93837a04  setlt.u r7, r21, r7
001038  1f070d00  addli r14, r26, 0
00103c  3bf00300  bneq r7, zero, 28
001040  9bc30c01  srli r7, r25, 16
001044  9b831300  andi r7, r7, 1
001048  97937c00  or r7, r25, r7
00104c  8b932311  add.s r7, r7, r18
001050  97831300  and r7, r7, r1
001054  67027ffe  storeli.w r7, -224(r30)
001058  93837a05  setlt.u r7, r21, r23
00105c  630deffd  loadli.w r26,  -272(r30)
001060  3be00300  bneq r7, zero, 24
001064  9bc30101  srli r7, r3, 16
001068  9b831300  andi r7, r7, 1
00106c  97937100  or r7, r3, r7
001070  8b932311  add.s r7, r7, r18
001074  17841300  and r8, r7, r1
001078  13824a04  setlt.u r4, r21, r4
00107c  e30bfffd  loadli.w r23,  -264(r30)
001080  e34ceffd  loadli.w r25,  -268(r30)
001084  3b700200  bneq r4, zero, 28
001088  1bc20801  srli r4, r17, 16
00108c  1b021200  andi r4, r4, 1
001090  17924800  or r4, r17, r4
001094  0b122211  add.s r4, r4, r18
001098  97011200  and r3, r4, r1
00109c  e7423ffe  storeli.w r3, -212(r30)
0010a0  13829a04  setlt.u r4, r21, r9
0010a4  9f830900  addli r7, r19, 0
0010a8  3b700200  bneq r4, zero, 28
0010ac  e301bffd  loadli.w r3,  -296(r30)
0010b0  1bc20101  srli r4, r3, 16
0010b4  1b021200  andi r4, r4, 1
0010b8  17924100  or r4, r3, r4
0010bc  0b122211  add.s r4, r4, r18
0010c0  170d1200  and r26, r4, r1
0010c4  13826a04  setlt.u r4, r21, r6
0010c8  e3080ffe  loadli.w r17,  -256(r30)
0010cc  e349fffd  loadli.w r19,  -260(r30)
0010d0  9f040fff  addli r9, r30, -128
0010d4  37560200  beq r4, zero, 404
0010d8  13812a04  setlt.u r2, r21, r2
0010dc  b7360100  beq r2, zero, 428
0010e0  1381da04  setlt.u r2, r21, r13
0010e4  3b700100  bneq r2, zero, 28
0010e8  e3419ffd  loadli.w r3,  -308(r30)
0010ec  1bc10101  srli r2, r3, 16
0010f0  1b011100  andi r2, r2, 1
0010f4  17912100  or r2, r3, r2
0010f8  0b112111  add.s r2, r2, r18
0010fc  97091100  and r19, r2, r1
001100  1381fa04  setlt.u r2, r21, r15
001104  e3061ffe  loadli.w r13,  -248(r30)
001108  3b700100  bneq r2, zero, 28
00110c  e3019ffd  loadli.w r3,  -312(r30)
001110  1bc10101  srli r2, r3, 16
001114  1b011100  andi r2, r2, 1
001118  17912100  or r2, r3, r2
00111c  0b112111  add.s r2, r2, r18
001120  97081100  and r17, r2, r1
001124  13815a04  setlt.u r2, r21, r5
001128  e3470ffe  loadli.w r15,  -252(r30)
00112c  3b700100  bneq r2, zero, 28
001130  e3418ffd  loadli.w r3,  -316(r30)
001134  1bc10101  srli r2, r3, 16
001138  1b011100  andi r2, r2, 1
00113c  17912100  or r2, r3, r2
001140  0b112111  add.s r2, r2, r18
001144  97071100  and r15, r2, r1
001148  1381ca05  setlt.u r2, r21, r28
00114c  9f024000  addli r5, zero, 32
001150  2b02ffff  lui r4, 1048560
001154  3b700100  bneq r2, zero, 28
001158  e3406ffe  loadli.w r1,  -204(r30)
00115c  1bc10001  srli r2, r1, 16
001160  1b011100  andi r2, r2, 1
001164  97902000  or r1, r1, r2
001168  8b902011  add.s r1, r1, r18
00116c  17874000  and r14, r1, r4
001170  9380ba05  setlt.u r1, r21, r27
001174  3bf00000  bneq r1, zero, 28
001178  63018ffd  loadli.w r2,  -320(r30)
00117c  9b400101  srli r1, r2, 16
001180  9b801000  andi r1, r1, 1
001184  97101100  or r1, r2, r1
001188  8b902011  add.s r1, r1, r18
00118c  97864000  and r13, r1, r4
001190  e340bffd  loadli.w r1,  -292(r30)
001194  93801a04  setlt.u r1, r21, r1
001198  3bf00000  bneq r1, zero, 28
00119c  63016ffe  loadli.w r2,  -208(r30)
0011a0  9b400101  srli r1, r2, 16
0011a4  9b801000  andi r1, r1, 1
0011a8  97101100  or r1, r2, r1
0011ac  8b902011  add.s r1, r1, r18
0011b0  17864000  and r12, r1, r4
0011b4  e300cffd  loadli.w r1,  -288(r30)
0011b8  93801a04  setlt.u r1, r21, r1
0011bc  3bf00000  bneq r1, zero, 28
0011c0  63417ffe  loadli.w r2,  -196(r30)
0011c4  9b400101  srli r1, r2, 16
0011c8  9b801000  andi r1, r1, 1
0011cc  97101100  or r1, r2, r1
0011d0  8b902011  add.s r1, r1, r18
0011d4  97854000  and r11, r1, r4
0011d8  e340cffd  loadli.w r1,  -284(r30)
0011dc  93801a04  setlt.u r1, r21, r1
0011e0  3bf00000  bneq r1, zero, 28
0011e4  63017ffe  loadli.w r2,  -200(r30)
0011e8  9b400101  srli r1, r2, 16
0011ec  9b801000  andi r1, r1, 1
0011f0  97101100  or r1, r2, r1
0011f4  8b902011  add.s r1, r1, r18
0011f8  97834000  and r7, r1, r4
0011fc  e300dffd  loadli.w r1,  -280(r30)
001200  63431ffe  loadli.w r6,  -244(r30)
001204  93801a04  setlt.u r1, r21, r1
001208  3bf00000  bneq r1, zero, 28
00120c  63015ffe  loadli.w r2,  -216(r30)
001210  9b400101  srli r1, r2, 16
001214  9b801000  andi r1, r1, 1
001218  97101100  or r1, r2, r1
00121c  8b902011  add.s r1, r1, r18
001220  17834000  and r6, r1, r4
001224  93800a05  setlt.u r1, r21, r16
001228  3bf00000  bneq r1, zero, 28
00122c  63414ffe  loadli.w r2,  -220(r30)
001230  9b400101  srli r1, r2, 16
001234  9b801000  andi r1, r1, 1
001238  97101100  or r1, r2, r1
00123c  8b902011  add.s r1, r1, r18
001240  17854000  and r10, r1, r4
001244  63014ffe  loadli.w r2,  -224(r30)
001248  97004101  and r1, r2, r20
00124c  93001b04  setlt.u r1, r22, r1
001250  3bf10000  bneq r1, zero, 92
001254  9b400101  srli r1, r2, 16
001258  9b801000  andi r1, r1, 1
00125c  8b101110  add.s r1, r2, r1
001260  8b902011  add.s r1, r1, r18
001264  db090000  j 76
001268  e341affd  loadli.w r3,  -300(r30)
00126c  1bc20101  srli r4, r3, 16
001270  1b021200  andi r4, r4, 1
001274  17924100  or r4, r3, r4
001278  0b122211  add.s r4, r4, r18
00127c  970c1200  and r25, r4, r1
001280  13812a04  setlt.u r2, r21, r2
001284  3b7901fe  bneq r2, zero, -420
001288  e301affd  loadli.w r3,  -304(r30)
00128c  1bc10101  srli r2, r3, 16
001290  1b011100  andi r2, r2, 1
001294  17912100  or r2, r3, r2
001298  0b112111  add.s r2, r2, r18
00129c  970b1100  and r23, r2, r1
0012a0  1381da04  setlt.u r2, r21, r13
0012a4  371901fe  beq r2, zero, -444
0012a8  5bcbffff  j -424
0012ac  97108101  or r1, r2, r24
0012b0  17014401  and r2, r8, r20
0012b4  63425ffe  loadli.w r4,  -212(r30)
0012b8  9bc00001  srli r1, r1, 16
0012bc  13012b04  setlt.u r2, r22, r2
0012c0  73101ff8  store.h r1, -128(r30)
0012c4  3b600100  bneq r2, zero, 24
0012c8  9b400401  srli r1, r8, 16
0012cc  9b801000  andi r1, r1, 1
0012d0  8b101410  add.s r1, r8, r1
0012d4  8b902011  add.s r1, r1, r18
0012d8  5b010000  j 8
0012dc  97108401  or r1, r8, r24
0012e0  17014201  and r2, r4, r20
0012e4  9bc00001  srli r1, r1, 16
0012e8  9b912400  ori r3, r9, 2
0012ec  13012b04  setlt.u r2, r22, r2
0012f0  73901100  store.h r1, 0(r3)
0012f4  3b600100  bneq r2, zero, 24
0012f8  9b400201  srli r1, r4, 16
0012fc  9b801000  andi r1, r1, 1
001300  8b101210  add.s r1, r4, r1
001304  8b902011  add.s r1, r1, r18
001308  5b010000  j 8
00130c  97108201  or r1, r4, r24
001310  17014d01  and r2, r26, r20
001314  9bc00001  srli r1, r1, 16
001318  13012b04  setlt.u r2, r22, r2
00131c  73121ff8  store.h r1, -124(r30)
001320  3b600100  bneq r2, zero, 24
001324  9b400d01  srli r1, r26, 16
001328  9b801000  andi r1, r1, 1
00132c  8b101d10  add.s r1, r26, r1
001330  8b902011  add.s r1, r1, r18
001334  5b010000  j 8
001338  97108d01  or r1, r26, r24
00133c  17814c01  and r2, r25, r20
001340  9bc00001  srli r1, r1, 16
001344  13012b04  setlt.u r2, r22, r2
001348  73131ff8  store.h r1, -122(r30)
00134c  3b600100  bneq r2, zero, 24
001350  9bc00c01  srli r1, r25, 16
001354  9b801000  andi r1, r1, 1
001358  8b901c10  add.s r1, r25, r1
00135c  8b902011  add.s r1, r1, r18
001360  5b010000  j 8
001364  97908c01  or r1, r25, r24
001368  17814b01  and r2, r23, r20
00136c  9bc00001  srli r1, r1, 16
001370  13012b04  setlt.u r2, r22, r2
001374  73141ff8  store.h r1, -120(r30)
001378  3b600100  bneq r2, zero, 24
00137c  9bc00b01  srli r1, r23, 16
001380  9b801000  andi r1, r1, 1
001384  8b901b10  add.s r1, r23, r1
001388  8b902011  add.s r1, r1, r18
00138c  5b010000  j 8
001390  97908b01  or r1, r23, r24
001394  17814901  and r2, r19, r20
001398  9bc00001  srli r1, r1, 16
00139c  13012b04  setlt.u r2, r22, r2
0013a0  73151ff8  store.h r1, -118(r30)
0013a4  3b600100  bneq r2, zero, 24
0013a8  9bc00901  srli r1, r19, 16
0013ac  9b801000  andi r1, r1, 1
0013b0  8b901910  add.s r1, r19, r1
0013b4  8b902011  add.s r1, r1, r18
0013b8  5b010000  j 8
0013bc  97908901  or r1, r19, r24
0013c0  17814801  and r2, r17, r20
0013c4  9bc00001  srli r1, r1, 16
0013c8  13012b04  setlt.u r2, r22, r2
0013cc  73161ff8  store.h r1, -116(r30)
0013d0  3b600100  bneq r2, zero, 24
0013d4  9bc00801  srli r1, r17, 16
0013d8  9b801000  andi r1, r1, 1
0013dc  8b901810  add.s r1, r17, r1
0013e0  8b902011  add.s r1, r1, r18
0013e4  5b010000  j 8
0013e8  97908801  or r1, r17, r24
0013ec  17814701  and r2, r15, r20
0013f0  9bc00001  srli r1, r1, 16
0013f4  13012b04  setlt.u r2, r22, r2
0013f8  73171ff8  store.h r1, -114(r30)
0013fc  3b600100  bneq r2, zero, 24
001400  9bc00701  srli r1, r15, 16
001404  9b801000  andi r1, r1, 1
001408  8b901710  add.s r1, r15, r1
00140c  8b902011  add.s r1, r1, r18
001410  5b010000  j 8
001414  97908701  or r1, r15, r24
001418  17014701  and r2, r14, r20
00141c  9bc00001  srli r1, r1, 16
001420  13012b04  setlt.u r2, r22, r2
001424  73181ff8  store.h r1, -112(r30)
001428  3b600100  bneq r2, zero, 24
00142c  9b400701  srli r1, r14, 16
001430  9b801000  andi r1, r1, 1
001434  8b101710  add.s r1, r14, r1
001438  8b902011  add.s r1, r1, r18
00143c  5b010000  j 8
001440  97108701  or r1, r14, r24
001444  17814601  and r2, r13, r20
001448  9bc00001  srli r1, r1, 16
00144c  13012b04  setlt.u r2, r22, r2
001450  73191ff8  store.h r1, -110(r30)
001454  3b600100  bneq r2, zero, 24
001458  9bc00601  srli r1, r13, 16
00145c  9b801000  andi r1, r1, 1
001460  8b901610  add.s r1, r13, r1
001464  8b902011  add.s r1, r1, r18
001468  5b010000  j 8
00146c  97908601  or r1, r13, r24
001470  17014601  and r2, r12, r20
001474  9bc00001  srli r1, r1, 16
001478  13012b04  setlt.u r2, r22, r2
00147c  731a1ff8  store.h r1, -108(r30)
001480  3b600100  bneq r2, zero, 24
001484  9b400601  srli r1, r12, 16
001488  9b801000  andi r1, r1, 1
00148c  8b101610  add.s r1, r12, r1
001490  8b902011  add.s r1, r1, r18
001494  5b010000  j 8
001498  97108601  or r1, r12, r24
00149c  17814501  and r2, r11, r20
0014a0  9bc00001  srli r1, r1, 16
0014a4  13012b04  setlt.u r2, r22, r2
0014a8  731b1ff8  store.h r1, -106(r30)
0014ac  3b600100  bneq r2, zero, 24
0014b0  9bc00501  srli r1, r11, 16
0014b4  9b801000  andi r1, r1, 1
0014b8  8b901510  add.s r1, r11, r1
0014bc  8b902011  add.s r1, r1, r18
0014c0  5b010000  j 8
0014c4  97908501  or r1, r11, r24
0014c8  17814301  and r2, r7, r20
0014cc  9bc00001  srli r1, r1, 16
0014d0  13012b04  setlt.u r2, r22, r2
0014d4  731c1ff8  store.h r1, -104(r30)
0014d8  3b600100  bneq r2, zero, 24
0014dc  9bc00301  srli r1, r7, 16
0014e0  9b801000  andi r1, r1, 1
0014e4  8b901310  add.s r1, r7, r1
0014e8  8b902011  add.s r1, r1, r18
0014ec  5b010000  j 8
0014f0  97908301  or r1, r7, r24
0014f4  17014301  and r2, r6, r20
0014f8  9bc00001  srli r1, r1, 16
0014fc  13012b04  setlt.u r2, r22, r2
001500  731d1ff8  store.h r1, -102(r30)
001504  3b600100  bneq r2, zero, 24
001508  9b400301  srli r1, r6, 16
00150c  9b801000  andi r1, r1, 1
001510  8b101310  add.s r1, r6, r1
001514  8b902011  add.s r1, r1, r18
001518  5b010000  j 8
00151c  97108301  or r1, r6, r24
001520  17014501  and r2, r10, r20
001524  9bc00001  srli r1, r1, 16
001528  13012b04  setlt.u r2, r22, r2
00152c  731e1ff8  store.h r1, -100(r30)
001530  b70001f6  beq r2, zero, -5088
001534  97108501  or r1, r10, r24
001538  5b85fdff  j -5080
00153c  9f0e0ffd  addli sp, r30, -384
001540  9f8e0e03  addli sp, sp, 384
001544  00a00300  mfence { lm, sm, gm }
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
001608  00100000  exit
00160c  00100000  exit
001610  00100000  exit
001614  00100000  exit
001618  00100000  exit
00161c  00100000  exit
001620  00100000  exit
001624  00100000  exit
001628  00100000  exit
00162c  00100000  exit
001630  00100000  exit
001634  00100000  exit
001638  00100000  exit
00163c  00100000  exit
001640  00100000  exit
001644  00100000  exit
001648  00100000  exit
00164c  00100000  exit
001650  00100000  exit
001654  00100000  exit
001658  00100000  exit
00165c  00100000  exit
001660  00100000  exit
001664  00100000  exit
001668  00100000  exit
00166c  00100000  exit
001670  00100000  exit
001674  00100000  exit
001678  00100000  exit
00167c  00100000  exit
001680  00100000  exit
001684  00100000  exit
001688  00100000  exit
00168c  00100000  exit
001690  00100000  exit
001694  00100000  exit
001698  00100000  exit
00169c  00100000  exit
0016a0  00100000  exit
0016a4  00100000  exit
0016a8  00100000  exit
0016ac  00100000  exit
0016b0  00100000  exit
0016b4  00100000  exit
0016b8  00100000  exit
0016bc  00100000  exit
0016c0  00100000  exit
0016c4  00100000  exit
0016c8  00100000  exit
0016cc  00100000  exit
0016d0  00100000  exit
0016d4  00100000  exit
0016d8  00100000  exit
0016dc  00100000  exit
0016e0  00100000  exit
0016e4  00100000  exit
0016e8  00100000  exit
0016ec  00100000  exit
0016f0  00100000  exit
0016f4  00100000  exit
0016f8  00100000  exit
0016fc  00100000  exit
001700  00100000  exit
001704  00100000  exit
001708  00100000  exit
00170c  00100000  exit
001710  00100000  exit
001714  00100000  exit
001718  00100000  exit
00171c  00100000  exit
001720  00100000  exit
001724  00100000  exit
001728  00100000  exit
00172c  00100000  exit
001730  00100000  exit
001734  00100000  exit
001738  00100000  exit
00173c  00100000  exit
001740  00100000  exit
001744  00100000  exit
001748  00100000  exit
00174c  00100000  exit
001750  00100000  exit
001754  00100000  exit
001758  00100000  exit
00175c  00100000  exit
001760  00100000  exit
001764  00100000  exit
001768  00100000  exit
00176c  00100000  exit
001770  00100000  exit
001774  00100000  exit
001778  00100000  exit
00177c  00100000  exit
001780  00100000  exit
001784  00100000  exit
001788  00100000  exit
