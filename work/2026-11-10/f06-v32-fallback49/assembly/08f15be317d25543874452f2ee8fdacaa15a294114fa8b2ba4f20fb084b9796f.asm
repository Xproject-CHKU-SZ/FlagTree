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
0000fc  674c1ffc  storeli.w r1, -316(r30)
000100  4bfa4004  ble.s r1, r4, 2716
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  9f024000  addli r5, zero, 32
000110  9f040fff  addli r9, r30, -128
000114  2b0b807f  lui r22, 522240
000118  ab084000  lui r17, 1024
00011c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000120  9bb04000  slli r1, r1, 4
000124  670c2ffc  storeli.w r2, -320(r30)
000128  2bf17f7f  lui r2, 522239
00012c  e74b1ffc  storeli.w r1, -324(r30)
000130  ab700000  lui r1, 7
000134  9b1af1ff  ori r21, r2, 4095
000138  1b99f0ff  ori r18, r1, 4095
00013c  abf0ff7f  lui r1, 524287
000140  1b9af0ff  ori r20, r1, 4095
000144  9f200000  addli r1, zero, 2
000148  fe8100e0  vmmov mr3, r1
00014c  db0a0000  j 84
000150  9bc00601  srli r1, r13, 16
000154  9b801000  andi r1, r1, 1
000158  8b901610  add.s r1, r13, r1
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
000188  e3008ffd  loadli.w r1,  -320(r30)
00018c  00a00000  mfence { lm }
000190  0b121210  add.s r4, r4, r1
000194  e3408ffd  loadli.w r1,  -316(r30)
000198  3f201200  blt.s r4, r1, 8
00019c  5b400100  j 2560
0001a0  e3404f00  loadli.w r1,  36(r30)
0001a4  63014f00  loadli.w r2,  32(r30)
0001a8  ab0100f0  lui r3, 983040
0001ac  e7414ffe  storeli.w r4, -228(r30)
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
0001d8  63417ffd  loadli.w r2,  -324(r30)
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
000484  63068fff  loadli.w r12,  -64(r30)
000488  e3458fff  loadli.w r11,  -60(r30)
00048c  63079fff  loadli.w r14,  -56(r30)
000490  63419fff  loadli.w r2,  -52(r30)
000494  e300afff  loadli.w r1,  -48(r30)
000498  e341afff  loadli.w r3,  -44(r30)
00049c  970d4601  and r27, r12, r20
0004a0  e7433ffe  storeli.w r3, -196(r30)
0004a4  630ebfff  loadli.w r28,  -40(r30)
0004a8  634dbfff  loadli.w r26,  -36(r30)
0004ac  e307cfff  loadli.w r15,  -32(r30)
0004b0  e349cfff  loadli.w r19,  -28(r30)
0004b4  6308dfff  loadli.w r16,  -24(r30)
0004b8  634cdfff  loadli.w r24,  -20(r30)
0004bc  e30befff  loadli.w r23,  -16(r30)
0004c0  6343efff  loadli.w r6,  -12(r30)
0004c4  e302ffff  loadli.w r5,  -8(r30)
0004c8  6342ffff  loadli.w r4,  -4(r30)
0004cc  9301bb05  setlt.u r3, r22, r27
0004d0  3bb00100  bneq r3, zero, 12
0004d4  e742cffe  storeli.w r12, -212(r30)
0004d8  db010000  j 12
0004dc  97111601  or r3, r12, r17
0004e0  e7423ffe  storeli.w r3, -212(r30)
0004e4  97844501  and r9, r11, r20
0004e8  93019b04  setlt.u r3, r22, r9
0004ec  3bb00100  bneq r3, zero, 12
0004f0  6703bffe  storeli.w r11, -208(r30)
0004f4  db010000  j 12
0004f8  97911501  or r3, r11, r17
0004fc  67033ffe  storeli.w r3, -208(r30)
000500  17044701  and r8, r14, r20
000504  e7024ffe  storeli.w r4, -216(r30)
000508  93018b04  setlt.u r3, r22, r8
00050c  3bb00100  bneq r3, zero, 12
000510  9f060700  addli r13, r14, 0
000514  5b010000  j 8
000518  97161701  or r13, r14, r17
00051c  97034101  and r7, r2, r20
000520  63427ffe  loadli.w r4,  -196(r30)
000524  93017b04  setlt.u r3, r22, r7
000528  3bb00100  bneq r3, zero, 12
00052c  e7032ffe  storeli.w r2, -200(r30)
000530  db010000  j 12
000534  97111101  or r3, r2, r17
000538  e7033ffe  storeli.w r3, -200(r30)
00053c  978c4001  and r25, r1, r20
000540  67026ffe  storeli.w r6, -224(r30)
000544  67425ffe  storeli.w r5, -220(r30)
000548  93019b05  setlt.u r3, r22, r25
00054c  3bb00100  bneq r3, zero, 12
000550  1f850000  addli r10, r1, 0
000554  5b010000  j 8
000558  17951001  or r10, r1, r17
00055c  97024201  and r5, r4, r20
000560  93015b04  setlt.u r3, r22, r5
000564  3bb00100  bneq r3, zero, 12
000568  1f030200  addli r6, r4, 0
00056c  5b010000  j 8
000570  17131201  or r6, r4, r17
000574  1f020e00  addli r4, r28, 0
000578  170e4201  and r28, r4, r20
00057c  e70c4ffc  storeli.w r4, -312(r30)
000580  9301cb05  setlt.u r3, r22, r28
000584  37a00100  beq r3, zero, 8
000588  17121201  or r4, r4, r17
00058c  97014d01  and r3, r26, r20
000590  670e3ffc  storeli.w r3, -288(r30)
000594  93013b04  setlt.u r3, r22, r3
000598  3bb00100  bneq r3, zero, 12
00059c  6740afff  storeli.w r26, -252(r30)
0005a0  db010000  j 12
0005a4  97111d01  or r3, r26, r17
0005a8  67403ffe  storeli.w r3, -252(r30)
0005ac  97814701  and r3, r15, r20
0005b0  67004ffe  storeli.w r4, -256(r30)
0005b4  670dfffc  storeli.w r15, -304(r30)
0005b8  13023b04  setlt.u r4, r22, r3
0005bc  674e3ffc  storeli.w r3, -284(r30)
0005c0  37200200  beq r4, zero, 8
0005c4  97971701  or r15, r15, r17
0005c8  97814901  and r3, r19, r20
0005cc  e74f6ffc  storeli.w r6, -260(r30)
0005d0  674d3ffd  storeli.w r19, -300(r30)
0005d4  13033b04  setlt.u r6, r22, r3
0005d8  e70e3ffc  storeli.w r3, -280(r30)
0005dc  37200300  beq r6, zero, 8
0005e0  97991901  or r19, r19, r17
0005e4  97014801  and r3, r16, r20
0005e8  6743dffe  storeli.w r13, -204(r30)
0005ec  e70d0ffd  storeli.w r16, -296(r30)
0005f0  13033b04  setlt.u r6, r22, r3
0005f4  e74e3ffc  storeli.w r3, -276(r30)
0005f8  3b300300  bneq r6, zero, 12
0005fc  1f030800  addli r6, r16, 0
000600  5b010000  j 8
000604  17131801  or r6, r16, r17
000608  97014c01  and r3, r24, r20
00060c  1f020500  addli r4, r10, 0
000610  e74d8ffd  storeli.w r24, -292(r30)
000614  13083b04  setlt.u r16, r22, r3
000618  670f3ffc  storeli.w r3, -272(r30)
00061c  37200800  beq r16, zero, 8
000620  171c1c01  or r24, r24, r17
000624  97814b01  and r3, r23, r20
000628  63054ffe  loadli.w r10,  -224(r30)
00062c  e74caffd  storeli.w r26, -308(r30)
000630  1f8d0b00  addli r26, r23, 0
000634  13083b04  setlt.u r16, r22, r3
000638  674f3ffc  storeli.w r3, -268(r30)
00063c  37200800  beq r16, zero, 8
000640  979b1b01  or r23, r23, r17
000644  97014501  and r3, r10, r20
000648  13083b04  setlt.u r16, r22, r3
00064c  e70f3ffc  storeli.w r3, -264(r30)
000650  3b300800  bneq r16, zero, 12
000654  ab014000  lui r3, 1024
000658  db010000  j 12
00065c  ab014000  lui r3, 1024
000660  17151501  or r10, r10, r17
000664  e700affe  storeli.w r10, -248(r30)
000668  63454ffe  loadli.w r10,  -220(r30)
00066c  97084501  and r17, r10, r20
000670  13081b05  setlt.u r16, r22, r17
000674  37200800  beq r16, zero, 8
000678  17153500  or r10, r10, r3
00067c  e3065ffe  loadli.w r13,  -216(r30)
000680  e740affe  storeli.w r10, -244(r30)
000684  17884601  and r16, r13, r20
000688  13050b05  setlt.u r10, r22, r16
00068c  37200500  beq r10, zero, 8
000690  97963600  or r13, r13, r3
000694  1385ba05  setlt.u r10, r21, r27
000698  ab0dffff  lui r27, 1048560
00069c  3b700500  bneq r10, zero, 28
0006a0  1b450601  srli r10, r12, 16
0006a4  1b051500  andi r10, r10, 1
0006a8  0b15a610  add.s r10, r12, r10
0006ac  0b152511  add.s r10, r10, r18
0006b0  1705b501  and r10, r10, r27
0006b4  e742affe  storeli.w r10, -212(r30)
0006b8  93849a04  setlt.u r9, r21, r9
0006bc  3bf00400  bneq r9, zero, 28
0006c0  9bc40501  srli r9, r11, 16
0006c4  9b841400  andi r9, r9, 1
0006c8  8b949510  add.s r9, r11, r9
0006cc  8b942411  add.s r9, r9, r18
0006d0  9784b401  and r9, r9, r27
0006d4  67039ffe  storeli.w r9, -208(r30)
0006d8  13848a04  setlt.u r8, r21, r8
0006dc  1f050300  addli r10, r6, 0
0006e0  1f860700  addli r12, r15, 0
0006e4  3b700400  bneq r8, zero, 28
0006e8  1b440701  srli r8, r14, 16
0006ec  1b041400  andi r8, r8, 1
0006f0  0b148710  add.s r8, r14, r8
0006f4  0b142411  add.s r8, r8, r18
0006f8  1703b401  and r6, r8, r27
0006fc  67436ffe  storeli.w r6, -204(r30)
000700  93837a04  setlt.u r7, r21, r7
000704  e3070ffe  loadli.w r15,  -256(r30)
000708  9f040fff  addli r9, r30, -128
00070c  9f850900  addli r11, r19, 0
000710  3bf00300  bneq r7, zero, 28
000714  9b430101  srli r7, r2, 16
000718  9b831300  andi r7, r7, 1
00071c  0b117110  add.s r2, r2, r7
000720  0b112111  add.s r2, r2, r18
000724  1701b101  and r2, r2, r27
000728  e7032ffe  storeli.w r2, -200(r30)
00072c  13819a05  setlt.u r2, r21, r25
000730  63470ffe  loadli.w r14,  -252(r30)
000734  e349fffd  loadli.w r19,  -260(r30)
000738  1f040c00  addli r8, r24, 0
00073c  1f0c0200  addli r24, r4, 0
000740  3b600100  bneq r2, zero, 24
000744  1bc10001  srli r2, r1, 16
000748  1b011100  andi r2, r2, 1
00074c  8b902010  add.s r1, r1, r2
000750  8b902011  add.s r1, r1, r18
000754  178cb001  and r24, r1, r27
000758  93805a04  setlt.u r1, r21, r5
00075c  63417ffe  loadli.w r2,  -196(r30)
000760  3be00000  bneq r1, zero, 24
000764  9b400101  srli r1, r2, 16
000768  9b801000  andi r1, r1, 1
00076c  8b101110  add.s r1, r2, r1
000770  8b902011  add.s r1, r1, r18
000774  9789b001  and r19, r1, r27
000778  9380ca05  setlt.u r1, r21, r28
00077c  63415ffe  loadli.w r2,  -212(r30)
000780  9f024000  addli r5, zero, 32
000784  3bf00000  bneq r1, zero, 28
000788  e3019ffd  loadli.w r3,  -312(r30)
00078c  9bc00101  srli r1, r3, 16
000790  9b801000  andi r1, r1, 1
000794  8b901110  add.s r1, r3, r1
000798  8b902011  add.s r1, r1, r18
00079c  9787b001  and r15, r1, r27
0007a0  e300cffd  loadli.w r1,  -288(r30)
0007a4  93801a04  setlt.u r1, r21, r1
0007a8  3bf00000  bneq r1, zero, 28
0007ac  e3419ffd  loadli.w r3,  -308(r30)
0007b0  9bc00101  srli r1, r3, 16
0007b4  9b801000  andi r1, r1, 1
0007b8  8b901110  add.s r1, r3, r1
0007bc  8b902011  add.s r1, r1, r18
0007c0  1787b001  and r14, r1, r27
0007c4  e340cffd  loadli.w r1,  -284(r30)
0007c8  93801a04  setlt.u r1, r21, r1
0007cc  3bf00000  bneq r1, zero, 28
0007d0  e301affd  loadli.w r3,  -304(r30)
0007d4  9bc00101  srli r1, r3, 16
0007d8  9b801000  andi r1, r1, 1
0007dc  8b901110  add.s r1, r3, r1
0007e0  8b902011  add.s r1, r1, r18
0007e4  1786b001  and r12, r1, r27
0007e8  e300dffd  loadli.w r1,  -280(r30)
0007ec  e3016ffe  loadli.w r3,  -208(r30)
0007f0  93801a04  setlt.u r1, r21, r1
0007f4  3bf00000  bneq r1, zero, 28
0007f8  6342affd  loadli.w r4,  -300(r30)
0007fc  9b400201  srli r1, r4, 16
000800  9b801000  andi r1, r1, 1
000804  8b101210  add.s r1, r4, r1
000808  8b902011  add.s r1, r1, r18
00080c  9785b001  and r11, r1, r27
000810  e340dffd  loadli.w r1,  -276(r30)
000814  63421ffe  loadli.w r4,  -244(r30)
000818  93801a04  setlt.u r1, r21, r1
00081c  3bf00000  bneq r1, zero, 28
000820  6303bffd  loadli.w r6,  -296(r30)
000824  9b400301  srli r1, r6, 16
000828  9b801000  andi r1, r1, 1
00082c  8b101310  add.s r1, r6, r1
000830  8b902011  add.s r1, r1, r18
000834  1785b001  and r10, r1, r27
000838  e300effd  loadli.w r1,  -272(r30)
00083c  93801a04  setlt.u r1, r21, r1
000840  3bf00000  bneq r1, zero, 28
000844  6343bffd  loadli.w r6,  -292(r30)
000848  9b400301  srli r1, r6, 16
00084c  9b801000  andi r1, r1, 1
000850  8b101310  add.s r1, r6, r1
000854  8b902011  add.s r1, r1, r18
000858  1784b001  and r8, r1, r27
00085c  e340effd  loadli.w r1,  -268(r30)
000860  63031ffe  loadli.w r6,  -248(r30)
000864  93801a04  setlt.u r1, r21, r1
000868  3be00000  bneq r1, zero, 24
00086c  9b400d01  srli r1, r26, 16
000870  9b801000  andi r1, r1, 1
000874  8b101d10  add.s r1, r26, r1
000878  8b902011  add.s r1, r1, r18
00087c  978bb001  and r23, r1, r27
000880  e300fffd  loadli.w r1,  -264(r30)
000884  93801a04  setlt.u r1, r21, r1
000888  3bf00000  bneq r1, zero, 28
00088c  63034ffe  loadli.w r6,  -224(r30)
000890  9b400301  srli r1, r6, 16
000894  9b801000  andi r1, r1, 1
000898  8b101310  add.s r1, r6, r1
00089c  8b902011  add.s r1, r1, r18
0008a0  1783b001  and r6, r1, r27
0008a4  93801a05  setlt.u r1, r21, r17
0008a8  3bf00000  bneq r1, zero, 28
0008ac  63424ffe  loadli.w r4,  -220(r30)
0008b0  9b400201  srli r1, r4, 16
0008b4  9b801000  andi r1, r1, 1
0008b8  8b101210  add.s r1, r4, r1
0008bc  8b902011  add.s r1, r1, r18
0008c0  1782b001  and r4, r1, r27
0008c4  93800a05  setlt.u r1, r21, r16
0008c8  ab084000  lui r17, 1024
0008cc  3bf00000  bneq r1, zero, 28
0008d0  e3065ffe  loadli.w r13,  -216(r30)
0008d4  9bc00601  srli r1, r13, 16
0008d8  9b801000  andi r1, r1, 1
0008dc  8b901610  add.s r1, r13, r1
0008e0  8b902011  add.s r1, r1, r18
0008e4  9786b001  and r13, r1, r27
0008e8  97004101  and r1, r2, r20
0008ec  63486ffe  loadli.w r16,  -204(r30)
0008f0  93001b04  setlt.u r1, r22, r1
0008f4  3be00000  bneq r1, zero, 24
0008f8  9b400101  srli r1, r2, 16
0008fc  9b801000  andi r1, r1, 1
000900  8b101110  add.s r1, r2, r1
000904  8b902011  add.s r1, r1, r18
000908  5b010000  j 8
00090c  97101101  or r1, r2, r17
000910  17814101  and r2, r3, r20
000914  9bc00001  srli r1, r1, 16
000918  13012b04  setlt.u r2, r22, r2
00091c  73101ff8  store.h r1, -128(r30)
000920  3b600100  bneq r2, zero, 24
000924  9bc00101  srli r1, r3, 16
000928  9b801000  andi r1, r1, 1
00092c  8b901110  add.s r1, r3, r1
000930  8b902011  add.s r1, r1, r18
000934  5b010000  j 8
000938  97901101  or r1, r3, r17
00093c  17014801  and r2, r16, r20
000940  9bc00001  srli r1, r1, 16
000944  9b912400  ori r3, r9, 2
000948  13012b04  setlt.u r2, r22, r2
00094c  73901100  store.h r1, 0(r3)
000950  3b600100  bneq r2, zero, 24
000954  9b400801  srli r1, r16, 16
000958  9b801000  andi r1, r1, 1
00095c  8b101810  add.s r1, r16, r1
000960  8b902011  add.s r1, r1, r18
000964  5b010000  j 8
000968  97101801  or r1, r16, r17
00096c  e3017ffe  loadli.w r3,  -200(r30)
000970  9bc00001  srli r1, r1, 16
000974  73121ff8  store.h r1, -124(r30)
000978  17814101  and r2, r3, r20
00097c  13012b04  setlt.u r2, r22, r2
000980  3b600100  bneq r2, zero, 24
000984  9bc00101  srli r1, r3, 16
000988  9b801000  andi r1, r1, 1
00098c  8b901110  add.s r1, r3, r1
000990  8b902011  add.s r1, r1, r18
000994  5b010000  j 8
000998  97901101  or r1, r3, r17
00099c  17014c01  and r2, r24, r20
0009a0  9bc00001  srli r1, r1, 16
0009a4  13012b04  setlt.u r2, r22, r2
0009a8  73131ff8  store.h r1, -122(r30)
0009ac  3b600100  bneq r2, zero, 24
0009b0  9b400c01  srli r1, r24, 16
0009b4  9b801000  andi r1, r1, 1
0009b8  8b101c10  add.s r1, r24, r1
0009bc  8b902011  add.s r1, r1, r18
0009c0  5b010000  j 8
0009c4  97101c01  or r1, r24, r17
0009c8  17814901  and r2, r19, r20
0009cc  9bc00001  srli r1, r1, 16
0009d0  13012b04  setlt.u r2, r22, r2
0009d4  73141ff8  store.h r1, -120(r30)
0009d8  3b600100  bneq r2, zero, 24
0009dc  9bc00901  srli r1, r19, 16
0009e0  9b801000  andi r1, r1, 1
0009e4  8b901910  add.s r1, r19, r1
0009e8  8b902011  add.s r1, r1, r18
0009ec  5b010000  j 8
0009f0  97901901  or r1, r19, r17
0009f4  17814701  and r2, r15, r20
0009f8  9bc00001  srli r1, r1, 16
0009fc  13012b04  setlt.u r2, r22, r2
000a00  73151ff8  store.h r1, -118(r30)
000a04  3b600100  bneq r2, zero, 24
000a08  9bc00701  srli r1, r15, 16
000a0c  9b801000  andi r1, r1, 1
000a10  8b901710  add.s r1, r15, r1
000a14  8b902011  add.s r1, r1, r18
000a18  5b010000  j 8
000a1c  97901701  or r1, r15, r17
000a20  17014701  and r2, r14, r20
000a24  9bc00001  srli r1, r1, 16
000a28  13012b04  setlt.u r2, r22, r2
000a2c  73161ff8  store.h r1, -116(r30)
000a30  3b600100  bneq r2, zero, 24
000a34  9b400701  srli r1, r14, 16
000a38  9b801000  andi r1, r1, 1
000a3c  8b101710  add.s r1, r14, r1
000a40  8b902011  add.s r1, r1, r18
000a44  5b010000  j 8
000a48  97101701  or r1, r14, r17
000a4c  17014601  and r2, r12, r20
000a50  9bc00001  srli r1, r1, 16
000a54  13012b04  setlt.u r2, r22, r2
000a58  73171ff8  store.h r1, -114(r30)
000a5c  3b600100  bneq r2, zero, 24
000a60  9b400601  srli r1, r12, 16
000a64  9b801000  andi r1, r1, 1
000a68  8b101610  add.s r1, r12, r1
000a6c  8b902011  add.s r1, r1, r18
000a70  5b010000  j 8
000a74  97101601  or r1, r12, r17
000a78  17814501  and r2, r11, r20
000a7c  9bc00001  srli r1, r1, 16
000a80  13012b04  setlt.u r2, r22, r2
000a84  73181ff8  store.h r1, -112(r30)
000a88  3b600100  bneq r2, zero, 24
000a8c  9bc00501  srli r1, r11, 16
000a90  9b801000  andi r1, r1, 1
000a94  8b901510  add.s r1, r11, r1
000a98  8b902011  add.s r1, r1, r18
000a9c  5b010000  j 8
000aa0  97901501  or r1, r11, r17
000aa4  17014501  and r2, r10, r20
000aa8  9bc00001  srli r1, r1, 16
000aac  13012b04  setlt.u r2, r22, r2
000ab0  73191ff8  store.h r1, -110(r30)
000ab4  3b600100  bneq r2, zero, 24
000ab8  9b400501  srli r1, r10, 16
000abc  9b801000  andi r1, r1, 1
000ac0  8b101510  add.s r1, r10, r1
000ac4  8b902011  add.s r1, r1, r18
000ac8  5b010000  j 8
000acc  97101501  or r1, r10, r17
000ad0  17014401  and r2, r8, r20
000ad4  9bc00001  srli r1, r1, 16
000ad8  13012b04  setlt.u r2, r22, r2
000adc  731a1ff8  store.h r1, -108(r30)
000ae0  3b600100  bneq r2, zero, 24
000ae4  9b400401  srli r1, r8, 16
000ae8  9b801000  andi r1, r1, 1
000aec  8b101410  add.s r1, r8, r1
000af0  8b902011  add.s r1, r1, r18
000af4  5b010000  j 8
000af8  97101401  or r1, r8, r17
000afc  17814b01  and r2, r23, r20
000b00  9bc00001  srli r1, r1, 16
000b04  13012b04  setlt.u r2, r22, r2
000b08  731b1ff8  store.h r1, -106(r30)
000b0c  3b600100  bneq r2, zero, 24
000b10  9bc00b01  srli r1, r23, 16
000b14  9b801000  andi r1, r1, 1
000b18  8b901b10  add.s r1, r23, r1
000b1c  8b902011  add.s r1, r1, r18
000b20  5b010000  j 8
000b24  97901b01  or r1, r23, r17
000b28  17014301  and r2, r6, r20
000b2c  9bc00001  srli r1, r1, 16
000b30  13012b04  setlt.u r2, r22, r2
000b34  731c1ff8  store.h r1, -104(r30)
000b38  3b600100  bneq r2, zero, 24
000b3c  9b400301  srli r1, r6, 16
000b40  9b801000  andi r1, r1, 1
000b44  8b101310  add.s r1, r6, r1
000b48  8b902011  add.s r1, r1, r18
000b4c  5b010000  j 8
000b50  97101301  or r1, r6, r17
000b54  17014201  and r2, r4, r20
000b58  9bc00001  srli r1, r1, 16
000b5c  13012b04  setlt.u r2, r22, r2
000b60  731d1ff8  store.h r1, -102(r30)
000b64  3b600100  bneq r2, zero, 24
000b68  9b400201  srli r1, r4, 16
000b6c  9b801000  andi r1, r1, 1
000b70  8b101210  add.s r1, r4, r1
000b74  8b902011  add.s r1, r1, r18
000b78  5b010000  j 8
000b7c  97101201  or r1, r4, r17
000b80  17814601  and r2, r13, r20
000b84  9bc00001  srli r1, r1, 16
000b88  13012b04  setlt.u r2, r22, r2
000b8c  731e1ff8  store.h r1, -100(r30)
000b90  370701fa  beq r2, zero, -2624
000b94  97901601  or r1, r13, r17
000b98  5bb9feff  j -2616
000b9c  9f0e0ffd  addli sp, r30, -384
000ba0  9f8e0e03  addli sp, sp, 384
000ba4  00a00300  mfence { lm, sm, gm }
000ba8  00100000  exit
000bac  00100000  exit
000bb0  00100000  exit
000bb4  00100000  exit
000bb8  00100000  exit
000bbc  00100000  exit
000bc0  00100000  exit
000bc4  00100000  exit
000bc8  00100000  exit
000bcc  00100000  exit
000bd0  00100000  exit
000bd4  00100000  exit
000bd8  00100000  exit
000bdc  00100000  exit
000be0  00100000  exit
000be4  00100000  exit
000be8  00100000  exit
000bec  00100000  exit
000bf0  00100000  exit
000bf4  00100000  exit
000bf8  00100000  exit
000bfc  00100000  exit
000c00  00100000  exit
000c04  00100000  exit
000c08  00100000  exit
000c0c  00100000  exit
000c10  00100000  exit
000c14  00100000  exit
000c18  00100000  exit
000c1c  00100000  exit
000c20  00100000  exit
000c24  00100000  exit
000c28  00100000  exit
000c2c  00100000  exit
000c30  00100000  exit
000c34  00100000  exit
000c38  00100000  exit
000c3c  00100000  exit
000c40  00100000  exit
000c44  00100000  exit
000c48  00100000  exit
000c4c  00100000  exit
000c50  00100000  exit
000c54  00100000  exit
000c58  00100000  exit
000c5c  00100000  exit
000c60  00100000  exit
000c64  00100000  exit
000c68  00100000  exit
000c6c  00100000  exit
000c70  00100000  exit
000c74  00100000  exit
000c78  00100000  exit
000c7c  00100000  exit
000c80  00100000  exit
000c84  00100000  exit
000c88  00100000  exit
000c8c  00100000  exit
000c90  00100000  exit
000c94  00100000  exit
000c98  00100000  exit
000c9c  00100000  exit
000ca0  00100000  exit
000ca4  00100000  exit
000ca8  00100000  exit
000cac  00100000  exit
000cb0  00100000  exit
000cb4  00100000  exit
000cb8  00100000  exit
000cbc  00100000  exit
000cc0  00100000  exit
000cc4  00100000  exit
000cc8  00100000  exit
000ccc  00100000  exit
000cd0  00100000  exit
000cd4  00100000  exit
000cd8  00100000  exit
000cdc  00100000  exit
000ce0  00100000  exit
000ce4  00100000  exit
000ce8  00100000  exit
000cec  00100000  exit
000cf0  00100000  exit
000cf4  00100000  exit
000cf8  00100000  exit
000cfc  00100000  exit
000d00  00100000  exit
000d04  00100000  exit
000d08  00100000  exit
000d0c  00100000  exit
000d10  00100000  exit
000d14  00100000  exit
000d18  00100000  exit
000d1c  00100000  exit
000d20  00100000  exit
000d24  00100000  exit
000d28  00100000  exit
000d2c  00100000  exit
000d30  00100000  exit
000d34  00100000  exit
000d38  00100000  exit
000d3c  00100000  exit
000d40  00100000  exit
000d44  00100000  exit
000d48  00100000  exit
000d4c  00100000  exit
000d50  00100000  exit
000d54  00100000  exit
000d58  00100000  exit
000d5c  00100000  exit
000d60  00100000  exit
000d64  00100000  exit
000d68  00100000  exit
000d6c  00100000  exit
000d70  00100000  exit
000d74  00100000  exit
000d78  00100000  exit
000d7c  00100000  exit
000d80  00100000  exit
000d84  00100000  exit
000d88  00100000  exit
000d8c  00100000  exit
000d90  00100000  exit
000d94  00100000  exit
000d98  00100000  exit
000d9c  00100000  exit
000da0  00100000  exit
000da4  00100000  exit
000da8  00100000  exit
000dac  00100000  exit
000db0  00100000  exit
000db4  00100000  exit
000db8  00100000  exit
000dbc  00100000  exit
000dc0  00100000  exit
000dc4  00100000  exit
000dc8  00100000  exit
000dcc  00100000  exit
000dd0  00100000  exit
000dd4  00100000  exit
000dd8  00100000  exit
000ddc  00100000  exit
000de0  00100000  exit
000de4  00100000  exit
000de8  00100000  exit
