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
000100  4b9f4004  ble.s r1, r4, 3012
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  1f070001  addli r14, zero, 128
000110  9f060ffd  addli r13, r30, -384
000114  2b09807f  lui r18, 522240
000118  ab094000  lui r19, 1024
00011c  2b0affff  lui r20, 1048560
000120  ab0aff7f  lui r21, 524272
000124  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000128  9bb06000  slli r1, r1, 6
00012c  e70e2ffa  storeli.w r2, -536(r30)
000130  2bf1ff7f  lui r2, 524287
000134  674e1ffa  storeli.w r1, -540(r30)
000138  ab700000  lui r1, 7
00013c  9b18f1ff  ori r17, r2, 4095
000140  1b98f0ff  ori r16, r1, 4095
000144  9f200000  addli r1, zero, 2
000148  fe8100e0  vmmov mr3, r1
00014c  5b060000  j 48
000150  ab0000f0  lui r1, 983040
000154  6b510fdf  load.d r[3:4], -528(r30)
000158  6342fffb  loadli.w r4,  -516(r30)
00015c  97101700  or r1, r14, r1
000160  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
000164  e300dffb  loadli.w r1,  -536(r30)
000168  00a00000  mfence { lm }
00016c  0b121210  add.s r4, r4, r1
000170  e340dffb  loadli.w r1,  -532(r30)
000174  3f201200  blt.s r4, r1, 8
000178  db690100  j 2892
00017c  e3403f00  loadli.w r1,  28(r30)
000180  63013f00  loadli.w r2,  24(r30)
000184  e74f4ffa  storeli.w r4, -516(r30)
000188  9f130000  addli r7, zero, 1
00018c  1f0c0000  addli r24, zero, 0
000190  8b101230  div.s r1, r4, r1
000194  8b902030  div.s r1, r1, r2
000198  6341cffb  loadli.w r2,  -540(r30)
00019c  9bb0c000  slli r1, r1, 12
0001a0  8b902010  add.s r1, r1, r2
0001a4  1f010010  addli r2, zero, 2048
0001a8  0b912038  mod.s r2, r1, r2
0001ac  b3910028  sext_int2long r[4:5], r1
0001b0  ab0000f0  lui r1, 983040
0001b4  97b17102  sll.d r[4:5], r[4:5], r7
0001b8  97101700  or r1, r14, r1
0001bc  b3120128  sext_int2long r[6:7], r2
0001c0  2b0100f0  lui r2, 983040
0001c4  97b27202  sll.d r[6:7], r[6:7], r7
0001c8  eb530f00  load.d r[8:9], 0(r30)
0001cc  17112700  or r2, r14, r2
0001d0  8ba33310  add.ul r[8:9], r[8:9], r[4:5]
0001d4  eb518f00  load.d r[4:5], 8(r30)
0001d8  73387fde  store.d r[8:9], -528(r30)
0001dc  8ba15110  add.ul r[4:5], r[4:5], r[6:7]
0001e0  9f020ffc  addli r5, r30, -512
0001e4  ffa05300  l_gm2lm r1, r5, 0(r[8:9])
0001e8  7fa1d100  l_gm2lm r2, r13, 0(r[4:5])
0001ec  00a00000  mfence { lm }
0001f0  5b050000  j 40
0001f4  9b400d01  srli r1, r26, 16
0001f8  9b801000  andi r1, r1, 1
0001fc  97101d00  or r1, r26, r1
000200  8b900011  add.s r1, r1, r16
000204  9bc00001  srli r1, r1, 16
000208  1f0c4c00  addli r24, r24, 32
00020c  739f1c00  store.h r1, 30(r25)
000210  00a00000  mfence { lm }
000214  b77cecfe  beq r24, r14, -196
000218  9f000ffc  addli r1, r30, -512
00021c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000220  9f170000  addli r15, zero, 1
000224  12310002  vadd.s.mz vr2{mr1}, zero, vr0
000228  8b918011  add.s r3, r1, r24
00022c  7e8107e0  vmmov mr2, r15
000230  6bb20100  load.hu r4, 0(r3)
000234  ebb22100  load.hu r5, 2(r3)
000238  6bb1a101  load.hu r2, 26(r3)
00023c  ebb0c101  load.hu r1, 28(r3)
000240  6bb34100  load.hu r6, 4(r3)
000244  ebb36100  load.hu r7, 6(r3)
000248  6bb48100  load.hu r8, 8(r3)
00024c  ebb4a100  load.hu r9, 10(r3)
000250  6bb5c100  load.hu r10, 12(r3)
000254  ebb5e100  load.hu r11, 14(r3)
000258  6bb60101  load.hu r12, 16(r3)
00025c  6bbb2101  load.hu r22, 18(r3)
000260  ebbb4101  load.hu r23, 20(r3)
000264  ebbc6101  load.hu r25, 22(r3)
000268  6bbd8101  load.hu r26, 24(r3)
00026c  ebb1e101  load.hu r3, 30(r3)
000270  33120218  bfloat2float.rn r4, r4
000274  33110118  bfloat2float.rn r2, r2
000278  b3900018  bfloat2float.rn r1, r1
00027c  ea201234  vor.u.mh vr1{mr2}, r4, vr1
000280  33920218  bfloat2float.rn r4, r5
000284  9f420000  addli r5, zero, 4
000288  7e8002e0  vmmov mr0, r5
00028c  9f021000  addli r5, zero, 8
000290  ea201236  vor.u.mh vr1{mr3}, r4, vr1
000294  33120318  bfloat2float.rn r4, r6
000298  ea201230  vor.u.mh vr1{mr0}, r4, vr1
00029c  33920318  bfloat2float.rn r4, r7
0002a0  7e8002e0  vmmov mr0, r5
0002a4  9f022000  addli r5, zero, 16
0002a8  ea201230  vor.u.mh vr1{mr0}, r4, vr1
0002ac  33120418  bfloat2float.rn r4, r8
0002b0  7e8002e0  vmmov mr0, r5
0002b4  9f024000  addli r5, zero, 32
0002b8  ea201230  vor.u.mh vr1{mr0}, r4, vr1
0002bc  33920418  bfloat2float.rn r4, r9
0002c0  7e8002e0  vmmov mr0, r5
0002c4  9f028000  addli r5, zero, 64
0002c8  ea201230  vor.u.mh vr1{mr0}, r4, vr1
0002cc  33120518  bfloat2float.rn r4, r10
0002d0  7e8002e0  vmmov mr0, r5
0002d4  9f020001  addli r5, zero, 128
0002d8  ea201230  vor.u.mh vr1{mr0}, r4, vr1
0002dc  33920518  bfloat2float.rn r4, r11
0002e0  7e8002e0  vmmov mr0, r5
0002e4  9f020002  addli r5, zero, 256
0002e8  ea201230  vor.u.mh vr1{mr0}, r4, vr1
0002ec  33120618  bfloat2float.rn r4, r12
0002f0  7e8002e0  vmmov mr0, r5
0002f4  9f020004  addli r5, zero, 512
0002f8  ea201230  vor.u.mh vr1{mr0}, r4, vr1
0002fc  33120b18  bfloat2float.rn r4, r22
000300  7e8002e0  vmmov mr0, r5
000304  9f020008  addli r5, zero, 1024
000308  ea201230  vor.u.mh vr1{mr0}, r4, vr1
00030c  33920b18  bfloat2float.rn r4, r23
000310  7e8002e0  vmmov mr0, r5
000314  9f020010  addli r5, zero, 2048
000318  ea201230  vor.u.mh vr1{mr0}, r4, vr1
00031c  33920c18  bfloat2float.rn r4, r25
000320  7e8002e0  vmmov mr0, r5
000324  9f020020  addli r5, zero, 4096
000328  8b9c8611  add.s r25, r13, r24
00032c  ea201230  vor.u.mh vr1{mr0}, r4, vr1
000330  33120d18  bfloat2float.rn r4, r26
000334  7e8002e0  vmmov mr0, r5
000338  ea201230  vor.u.mh vr1{mr0}, r4, vr1
00033c  1f020040  addli r4, zero, 8192
000340  7e0002e0  vmmov mr0, r4
000344  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000348  2b410000  lui r2, 4
00034c  7e0001e0  vmmov mr0, r2
000350  2b810000  lui r2, 8
000354  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000358  b3900118  bfloat2float.rn r1, r3
00035c  7e0001e0  vmmov mr0, r2
000360  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000364  ebb00c00  load.hu r1, 0(r25)
000368  6bb12c00  load.hu r2, 2(r25)
00036c  ebb14c00  load.hu r3, 4(r25)
000370  6bb26c00  load.hu r4, 6(r25)
000374  ebb28c00  load.hu r5, 8(r25)
000378  6bb3ac00  load.hu r6, 10(r25)
00037c  ebb3cc00  load.hu r7, 12(r25)
000380  6bb4ec00  load.hu r8, 14(r25)
000384  ebb40c01  load.hu r9, 16(r25)
000388  6bb52c01  load.hu r10, 18(r25)
00038c  ebb54c01  load.hu r11, 20(r25)
000390  6bb66c01  load.hu r12, 22(r25)
000394  6bbb8c01  load.hu r22, 24(r25)
000398  ebbbac01  load.hu r23, 26(r25)
00039c  6bbdcc01  load.hu r26, 28(r25)
0003a0  ebbdec01  load.hu r27, 30(r25)
0003a4  b3900018  bfloat2float.rn r1, r1
0003a8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003ac  b3100118  bfloat2float.rn r1, r2
0003b0  1f410000  addli r2, zero, 4
0003b4  7e0101e0  vmmov mr2, r2
0003b8  1f011000  addli r2, zero, 8
0003bc  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0003c0  b3900118  bfloat2float.rn r1, r3
0003c4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003c8  b3100218  bfloat2float.rn r1, r4
0003cc  7e0101e0  vmmov mr2, r2
0003d0  1f012000  addli r2, zero, 16
0003d4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003d8  b3900218  bfloat2float.rn r1, r5
0003dc  7e0101e0  vmmov mr2, r2
0003e0  1f014000  addli r2, zero, 32
0003e4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003e8  b3100318  bfloat2float.rn r1, r6
0003ec  7e0101e0  vmmov mr2, r2
0003f0  1f018000  addli r2, zero, 64
0003f4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003f8  b3900318  bfloat2float.rn r1, r7
0003fc  7e0101e0  vmmov mr2, r2
000400  1f010001  addli r2, zero, 128
000404  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000408  b3100418  bfloat2float.rn r1, r8
00040c  7e0101e0  vmmov mr2, r2
000410  1f010002  addli r2, zero, 256
000414  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000418  b3900418  bfloat2float.rn r1, r9
00041c  7e0101e0  vmmov mr2, r2
000420  1f010004  addli r2, zero, 512
000424  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000428  b3100518  bfloat2float.rn r1, r10
00042c  7e0101e0  vmmov mr2, r2
000430  1f010008  addli r2, zero, 1024
000434  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000438  b3900518  bfloat2float.rn r1, r11
00043c  7e0101e0  vmmov mr2, r2
000440  1f010010  addli r2, zero, 2048
000444  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000448  b3100618  bfloat2float.rn r1, r12
00044c  7e0101e0  vmmov mr2, r2
000450  1f010020  addli r2, zero, 4096
000454  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000458  b3100b18  bfloat2float.rn r1, r22
00045c  7e0101e0  vmmov mr2, r2
000460  1f010040  addli r2, zero, 8192
000464  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000468  b3900b18  bfloat2float.rn r1, r23
00046c  7e0101e0  vmmov mr2, r2
000470  2b410000  lui r2, 4
000474  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000478  b3100d18  bfloat2float.rn r1, r26
00047c  7e0101e0  vmmov mr2, r2
000480  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000484  b3900d18  bfloat2float.rn r1, r27
000488  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
00048c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000490  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
000494  00a00000  mfence { lm }
000498  e30b0ffe  loadli.w r23,  -256(r30)
00049c  634b0ffe  loadli.w r22,  -252(r30)
0004a0  63021ffe  loadli.w r4,  -248(r30)
0004a4  63451ffe  loadli.w r10,  -244(r30)
0004a8  e3042ffe  loadli.w r9,  -240(r30)
0004ac  63462ffe  loadli.w r12,  -236(r30)
0004b0  63013ffe  loadli.w r2,  -232(r30)
0004b4  e3403ffe  loadli.w r1,  -228(r30)
0004b8  e3054ffe  loadli.w r11,  -224(r30)
0004bc  63444ffe  loadli.w r8,  -220(r30)
0004c0  e3035ffe  loadli.w r7,  -216(r30)
0004c4  63435ffe  loadli.w r6,  -212(r30)
0004c8  e3026ffe  loadli.w r5,  -208(r30)
0004cc  634e6ffe  loadli.w r28,  -204(r30)
0004d0  e30d7ffe  loadli.w r27,  -200(r30)
0004d4  634d7ffe  loadli.w r26,  -196(r30)
0004d8  97811b01  and r3, r23, r17
0004dc  93013904  setlt.u r3, r18, r3
0004e0  3be00100  bneq r3, zero, 24
0004e4  9bc10b01  srli r3, r23, 16
0004e8  9b811100  andi r3, r3, 1
0004ec  8b913b10  add.s r3, r23, r3
0004f0  8b910111  add.s r3, r3, r16
0004f4  5b010000  j 8
0004f8  97913b01  or r3, r23, r19
0004fc  970b1b01  and r23, r22, r17
000500  930b7905  setlt.u r23, r18, r23
000504  3be00b00  bneq r23, zero, 24
000508  9b4b0b01  srli r23, r22, 16
00050c  9b8b1b00  andi r23, r23, 1
000510  0b1b7b11  add.s r22, r22, r23
000514  0b1b0b11  add.s r22, r22, r16
000518  5b010000  j 8
00051c  171b3b01  or r22, r22, r19
000520  970b1201  and r23, r4, r17
000524  930b7905  setlt.u r23, r18, r23
000528  3be00b00  bneq r23, zero, 24
00052c  9b4b0201  srli r23, r4, 16
000530  9b8b1b00  andi r23, r23, 1
000534  0b127211  add.s r4, r4, r23
000538  0b120211  add.s r4, r4, r16
00053c  5b010000  j 8
000540  17123201  or r4, r4, r19
000544  970b1501  and r23, r10, r17
000548  930b7905  setlt.u r23, r18, r23
00054c  3be00b00  bneq r23, zero, 24
000550  9b4b0501  srli r23, r10, 16
000554  9b8b1b00  andi r23, r23, 1
000558  0b157511  add.s r10, r10, r23
00055c  0b150511  add.s r10, r10, r16
000560  5b010000  j 8
000564  17153501  or r10, r10, r19
000568  978b1401  and r23, r9, r17
00056c  930b7905  setlt.u r23, r18, r23
000570  3be00b00  bneq r23, zero, 24
000574  9bcb0401  srli r23, r9, 16
000578  9b8b1b00  andi r23, r23, 1
00057c  8b947411  add.s r9, r9, r23
000580  8b940411  add.s r9, r9, r16
000584  5b010000  j 8
000588  97943401  or r9, r9, r19
00058c  970b1601  and r23, r12, r17
000590  930b7905  setlt.u r23, r18, r23
000594  3be00b00  bneq r23, zero, 24
000598  9b4b0601  srli r23, r12, 16
00059c  9b8b1b00  andi r23, r23, 1
0005a0  0b167611  add.s r12, r12, r23
0005a4  0b160611  add.s r12, r12, r16
0005a8  5b010000  j 8
0005ac  17163601  or r12, r12, r19
0005b0  970b1101  and r23, r2, r17
0005b4  930b7905  setlt.u r23, r18, r23
0005b8  3be00b00  bneq r23, zero, 24
0005bc  9b4b0101  srli r23, r2, 16
0005c0  9b8b1b00  andi r23, r23, 1
0005c4  0b117111  add.s r2, r2, r23
0005c8  0b110111  add.s r2, r2, r16
0005cc  5b010000  j 8
0005d0  17113101  or r2, r2, r19
0005d4  978b1001  and r23, r1, r17
0005d8  930b7905  setlt.u r23, r18, r23
0005dc  3be00b00  bneq r23, zero, 24
0005e0  9bcb0001  srli r23, r1, 16
0005e4  9b8b1b00  andi r23, r23, 1
0005e8  8b907011  add.s r1, r1, r23
0005ec  8b900011  add.s r1, r1, r16
0005f0  5b010000  j 8
0005f4  97903001  or r1, r1, r19
0005f8  978b1501  and r23, r11, r17
0005fc  930b7905  setlt.u r23, r18, r23
000600  3be00b00  bneq r23, zero, 24
000604  9bcb0501  srli r23, r11, 16
000608  9b8b1b00  andi r23, r23, 1
00060c  8b957511  add.s r11, r11, r23
000610  8b950511  add.s r11, r11, r16
000614  5b010000  j 8
000618  97953501  or r11, r11, r19
00061c  970b1401  and r23, r8, r17
000620  930b7905  setlt.u r23, r18, r23
000624  3be00b00  bneq r23, zero, 24
000628  9b4b0401  srli r23, r8, 16
00062c  9b8b1b00  andi r23, r23, 1
000630  0b147411  add.s r8, r8, r23
000634  0b140411  add.s r8, r8, r16
000638  5b010000  j 8
00063c  17143401  or r8, r8, r19
000640  978b1301  and r23, r7, r17
000644  930b7905  setlt.u r23, r18, r23
000648  3be00b00  bneq r23, zero, 24
00064c  9bcb0301  srli r23, r7, 16
000650  9b8b1b00  andi r23, r23, 1
000654  8b937311  add.s r7, r7, r23
000658  8b930311  add.s r7, r7, r16
00065c  5b010000  j 8
000660  97933301  or r7, r7, r19
000664  970b1301  and r23, r6, r17
000668  930b7905  setlt.u r23, r18, r23
00066c  3be00b00  bneq r23, zero, 24
000670  9b4b0301  srli r23, r6, 16
000674  9b8b1b00  andi r23, r23, 1
000678  0b137311  add.s r6, r6, r23
00067c  0b130311  add.s r6, r6, r16
000680  5b010000  j 8
000684  17133301  or r6, r6, r19
000688  978b1201  and r23, r5, r17
00068c  930b7905  setlt.u r23, r18, r23
000690  3be00b00  bneq r23, zero, 24
000694  9bcb0201  srli r23, r5, 16
000698  9b8b1b00  andi r23, r23, 1
00069c  8b927211  add.s r5, r5, r23
0006a0  8b920211  add.s r5, r5, r16
0006a4  5b010000  j 8
0006a8  97923201  or r5, r5, r19
0006ac  970b1e01  and r23, r28, r17
0006b0  930b7905  setlt.u r23, r18, r23
0006b4  3be00b00  bneq r23, zero, 24
0006b8  9b4b0e01  srli r23, r28, 16
0006bc  9b8b1b00  andi r23, r23, 1
0006c0  8b1b7e11  add.s r23, r28, r23
0006c4  0b9e0b11  add.s r28, r23, r16
0006c8  5b010000  j 8
0006cc  171e3e01  or r28, r28, r19
0006d0  978b1d01  and r23, r27, r17
0006d4  930b7905  setlt.u r23, r18, r23
0006d8  3be00b00  bneq r23, zero, 24
0006dc  9bcb0d01  srli r23, r27, 16
0006e0  9b8b1b00  andi r23, r23, 1
0006e4  8b9b7d11  add.s r23, r27, r23
0006e8  8b9d0b11  add.s r27, r23, r16
0006ec  5b010000  j 8
0006f0  979d3d01  or r27, r27, r19
0006f4  970b1d01  and r23, r26, r17
0006f8  930b7905  setlt.u r23, r18, r23
0006fc  3be00b00  bneq r23, zero, 24
000700  9b4b0d01  srli r23, r26, 16
000704  9b8b1b00  andi r23, r23, 1
000708  8b1b7d11  add.s r23, r26, r23
00070c  0b9d0b11  add.s r26, r23, r16
000710  5b010000  j 8
000714  171d3d01  or r26, r26, r19
000718  978b4101  and r23, r3, r20
00071c  9bc17101  srli r3, r3, 23
000720  9bb69b00  slli r13, r23, 9
000724  93e70b04  setlt.f r15, r23, zero
000728  9b81f10f  andi r3, r3, 255
00072c  93860600  seteq r13, r13, zero
000730  9bf1f10f  setlti r3, r3, 255
000734  9791d100  or r3, r3, r13
000738  97863700  and r13, r15, r3
00073c  9f010000  addli r3, zero, 0
000740  3ba00600  bneq r13, zero, 8
000744  9f810b00  addli r3, r23, 0
000748  970b4b01  and r23, r22, r20
00074c  9b477b01  srli r15, r22, 23
000750  9bb69b00  slli r13, r23, 9
000754  13eb0b04  setlt.f r22, r23, zero
000758  9b87f70f  andi r15, r15, 255
00075c  93860600  seteq r13, r13, zero
000760  9bf7f70f  setlti r15, r15, 255
000764  9796d700  or r13, r15, r13
000768  9706db00  and r13, r22, r13
00076c  1f0b0000  addli r22, zero, 0
000770  3ba00600  bneq r13, zero, 8
000774  1f8b0b00  addli r22, r23, 0
000778  970b4201  and r23, r4, r20
00077c  1b427201  srli r4, r4, 23
000780  9bb69b00  slli r13, r23, 9
000784  93e70b04  setlt.f r15, r23, zero
000788  1b02f20f  andi r4, r4, 255
00078c  93860600  seteq r13, r13, zero
000790  1b72f20f  setlti r4, r4, 255
000794  1712d200  or r4, r4, r13
000798  97864700  and r13, r15, r4
00079c  1f020000  addli r4, zero, 0
0007a0  3ba00600  bneq r13, zero, 8
0007a4  1f820b00  addli r4, r23, 0
0007a8  970b4501  and r23, r10, r20
0007ac  1b457501  srli r10, r10, 23
0007b0  9bb69b00  slli r13, r23, 9
0007b4  93e70b04  setlt.f r15, r23, zero
0007b8  1b05f50f  andi r10, r10, 255
0007bc  93860600  seteq r13, r13, zero
0007c0  1b75f50f  setlti r10, r10, 255
0007c4  1715d500  or r10, r10, r13
0007c8  9786a700  and r13, r15, r10
0007cc  1f050000  addli r10, zero, 0
0007d0  3ba00600  bneq r13, zero, 8
0007d4  1f850b00  addli r10, r23, 0
0007d8  978b4401  and r23, r9, r20
0007dc  9bc47401  srli r9, r9, 23
0007e0  9bb69b00  slli r13, r23, 9
0007e4  93e70b04  setlt.f r15, r23, zero
0007e8  9b84f40f  andi r9, r9, 255
0007ec  93860600  seteq r13, r13, zero
0007f0  9bf4f40f  setlti r9, r9, 255
0007f4  9794d400  or r9, r9, r13
0007f8  97869700  and r13, r15, r9
0007fc  9f040000  addli r9, zero, 0
000800  3ba00600  bneq r13, zero, 8
000804  9f840b00  addli r9, r23, 0
000808  970b4601  and r23, r12, r20
00080c  1b467601  srli r12, r12, 23
000810  9bb69b00  slli r13, r23, 9
000814  93e70b04  setlt.f r15, r23, zero
000818  1b06f60f  andi r12, r12, 255
00081c  93860600  seteq r13, r13, zero
000820  1b76f60f  setlti r12, r12, 255
000824  1716d600  or r12, r12, r13
000828  9786c700  and r13, r15, r12
00082c  1f060000  addli r12, zero, 0
000830  3ba00600  bneq r13, zero, 8
000834  1f860b00  addli r12, r23, 0
000838  970b4101  and r23, r2, r20
00083c  1b417101  srli r2, r2, 23
000840  9bb69b00  slli r13, r23, 9
000844  93e70b04  setlt.f r15, r23, zero
000848  1b01f10f  andi r2, r2, 255
00084c  93860600  seteq r13, r13, zero
000850  1b71f10f  setlti r2, r2, 255
000854  1711d100  or r2, r2, r13
000858  97862700  and r13, r15, r2
00085c  1f010000  addli r2, zero, 0
000860  3ba00600  bneq r13, zero, 8
000864  1f810b00  addli r2, r23, 0
000868  978b4001  and r23, r1, r20
00086c  9bc07001  srli r1, r1, 23
000870  9bb69b00  slli r13, r23, 9
000874  93e70b04  setlt.f r15, r23, zero
000878  9b80f00f  andi r1, r1, 255
00087c  93860600  seteq r13, r13, zero
000880  9bf0f00f  setlti r1, r1, 255
000884  9790d000  or r1, r1, r13
000888  97861700  and r13, r15, r1
00088c  9f000000  addli r1, zero, 0
000890  3ba00600  bneq r13, zero, 8
000894  9f800b00  addli r1, r23, 0
000898  978b4501  and r23, r11, r20
00089c  9bc57501  srli r11, r11, 23
0008a0  9bb69b00  slli r13, r23, 9
0008a4  93e70b04  setlt.f r15, r23, zero
0008a8  9b85f50f  andi r11, r11, 255
0008ac  93860600  seteq r13, r13, zero
0008b0  9bf5f50f  setlti r11, r11, 255
0008b4  9795d500  or r11, r11, r13
0008b8  9786b700  and r13, r15, r11
0008bc  9f050000  addli r11, zero, 0
0008c0  3ba00600  bneq r13, zero, 8
0008c4  9f850b00  addli r11, r23, 0
0008c8  970b4401  and r23, r8, r20
0008cc  1b447401  srli r8, r8, 23
0008d0  9bb69b00  slli r13, r23, 9
0008d4  93e70b04  setlt.f r15, r23, zero
0008d8  1b04f40f  andi r8, r8, 255
0008dc  93860600  seteq r13, r13, zero
0008e0  1b74f40f  setlti r8, r8, 255
0008e4  1714d400  or r8, r8, r13
0008e8  97868700  and r13, r15, r8
0008ec  1f040000  addli r8, zero, 0
0008f0  3ba00600  bneq r13, zero, 8
0008f4  1f840b00  addli r8, r23, 0
0008f8  978b4301  and r23, r7, r20
0008fc  9bc37301  srli r7, r7, 23
000900  9bb69b00  slli r13, r23, 9
000904  93e70b04  setlt.f r15, r23, zero
000908  9b83f30f  andi r7, r7, 255
00090c  93860600  seteq r13, r13, zero
000910  9bf3f30f  setlti r7, r7, 255
000914  9793d300  or r7, r7, r13
000918  97867700  and r13, r15, r7
00091c  9f030000  addli r7, zero, 0
000920  3ba00600  bneq r13, zero, 8
000924  9f830b00  addli r7, r23, 0
000928  970b4301  and r23, r6, r20
00092c  1b437301  srli r6, r6, 23
000930  9bb69b00  slli r13, r23, 9
000934  93e70b04  setlt.f r15, r23, zero
000938  1b03f30f  andi r6, r6, 255
00093c  93860600  seteq r13, r13, zero
000940  1b73f30f  setlti r6, r6, 255
000944  1713d300  or r6, r6, r13
000948  97866700  and r13, r15, r6
00094c  1f030000  addli r6, zero, 0
000950  3ba00600  bneq r13, zero, 8
000954  1f830b00  addli r6, r23, 0
000958  978b4201  and r23, r5, r20
00095c  9bc27201  srli r5, r5, 23
000960  9bb69b00  slli r13, r23, 9
000964  93e70b04  setlt.f r15, r23, zero
000968  9b82f20f  andi r5, r5, 255
00096c  93860600  seteq r13, r13, zero
000970  9bf2f20f  setlti r5, r5, 255
000974  9792d200  or r5, r5, r13
000978  97865700  and r13, r15, r5
00097c  9f020000  addli r5, zero, 0
000980  3ba00600  bneq r13, zero, 8
000984  9f820b00  addli r5, r23, 0
000988  970b4e01  and r23, r28, r20
00098c  9b477e01  srli r15, r28, 23
000990  9bb69b00  slli r13, r23, 9
000994  13ee0b04  setlt.f r28, r23, zero
000998  9b87f70f  andi r15, r15, 255
00099c  93860600  seteq r13, r13, zero
0009a0  9bf7f70f  setlti r15, r15, 255
0009a4  9796d700  or r13, r15, r13
0009a8  9706de00  and r13, r28, r13
0009ac  1f0e0000  addli r28, zero, 0
0009b0  3ba00600  bneq r13, zero, 8
0009b4  1f8e0b00  addli r28, r23, 0
0009b8  978b4d01  and r23, r27, r20
0009bc  9bc77d01  srli r15, r27, 23
0009c0  9bb69b00  slli r13, r23, 9
0009c4  93ed0b04  setlt.f r27, r23, zero
0009c8  9b87f70f  andi r15, r15, 255
0009cc  93860600  seteq r13, r13, zero
0009d0  9bf7f70f  setlti r15, r15, 255
0009d4  9796d700  or r13, r15, r13
0009d8  9786dd00  and r13, r27, r13
0009dc  9f0d0000  addli r27, zero, 0
0009e0  3ba00600  bneq r13, zero, 8
0009e4  9f8d0b00  addli r27, r23, 0
0009e8  970b4d01  and r23, r26, r20
0009ec  9b477d01  srli r15, r26, 23
0009f0  9bb69b00  slli r13, r23, 9
0009f4  13ed0b04  setlt.f r26, r23, zero
0009f8  9b87f70f  andi r15, r15, 255
0009fc  93860600  seteq r13, r13, zero
000a00  9bf7f70f  setlti r15, r15, 255
000a04  9796d700  or r13, r15, r13
000a08  9706dd00  and r13, r26, r13
000a0c  1f0d0000  addli r26, zero, 0
000a10  3ba00600  bneq r13, zero, 8
000a14  1f8d0b00  addli r26, r23, 0
000a18  97865101  and r13, r3, r21
000a1c  9306d904  setlt.u r13, r18, r13
000a20  3be00600  bneq r13, zero, 24
000a24  9bc60101  srli r13, r3, 16
000a28  9b861600  andi r13, r13, 1
000a2c  9791d100  or r3, r3, r13
000a30  8b910111  add.s r3, r3, r16
000a34  5b010000  j 8
000a38  97913101  or r3, r3, r19
000a3c  97065b01  and r13, r22, r21
000a40  9bc10101  srli r3, r3, 16
000a44  9306d904  setlt.u r13, r18, r13
000a48  73903c00  store.h r3, 0(r25)
000a4c  3be00600  bneq r13, zero, 24
000a50  9b410b01  srli r3, r22, 16
000a54  9b811100  andi r3, r3, 1
000a58  97113b00  or r3, r22, r3
000a5c  8b910111  add.s r3, r3, r16
000a60  5b010000  j 8
000a64  97113b01  or r3, r22, r19
000a68  97065201  and r13, r4, r21
000a6c  9bc10101  srli r3, r3, 16
000a70  9306d904  setlt.u r13, r18, r13
000a74  73913c00  store.h r3, 2(r25)
000a78  3be00600  bneq r13, zero, 24
000a7c  9b410201  srli r3, r4, 16
000a80  9b811100  andi r3, r3, 1
000a84  97113200  or r3, r4, r3
000a88  8b910111  add.s r3, r3, r16
000a8c  5b010000  j 8
000a90  97113201  or r3, r4, r19
000a94  17025501  and r4, r10, r21
000a98  9bc10101  srli r3, r3, 16
000a9c  9f060ffd  addli r13, r30, -384
000aa0  13024904  setlt.u r4, r18, r4
000aa4  73923c00  store.h r3, 4(r25)
000aa8  3b600200  bneq r4, zero, 24
000aac  9b410501  srli r3, r10, 16
000ab0  9b811100  andi r3, r3, 1
000ab4  97113500  or r3, r10, r3
000ab8  8b910111  add.s r3, r3, r16
000abc  5b010000  j 8
000ac0  97113501  or r3, r10, r19
000ac4  17825401  and r4, r9, r21
000ac8  9bc10101  srli r3, r3, 16
000acc  13024904  setlt.u r4, r18, r4
000ad0  73933c00  store.h r3, 6(r25)
000ad4  3b600200  bneq r4, zero, 24
000ad8  9bc10401  srli r3, r9, 16
000adc  9b811100  andi r3, r3, 1
000ae0  97913400  or r3, r9, r3
000ae4  8b910111  add.s r3, r3, r16
000ae8  5b010000  j 8
000aec  97913401  or r3, r9, r19
000af0  17025601  and r4, r12, r21
000af4  9bc10101  srli r3, r3, 16
000af8  13024904  setlt.u r4, r18, r4
000afc  73943c00  store.h r3, 8(r25)
000b00  3b600200  bneq r4, zero, 24
000b04  9b410601  srli r3, r12, 16
000b08  9b811100  andi r3, r3, 1
000b0c  97113600  or r3, r12, r3
000b10  8b910111  add.s r3, r3, r16
000b14  5b010000  j 8
000b18  97113601  or r3, r12, r19
000b1c  17025101  and r4, r2, r21
000b20  9bc10101  srli r3, r3, 16
000b24  13024904  setlt.u r4, r18, r4
000b28  73953c00  store.h r3, 10(r25)
000b2c  3b600200  bneq r4, zero, 24
000b30  9b410101  srli r3, r2, 16
000b34  9b811100  andi r3, r3, 1
000b38  17113100  or r2, r2, r3
000b3c  0b110111  add.s r2, r2, r16
000b40  5b010000  j 8
000b44  17113101  or r2, r2, r19
000b48  97815001  and r3, r1, r21
000b4c  1b410101  srli r2, r2, 16
000b50  93013904  setlt.u r3, r18, r3
000b54  73962c00  store.h r2, 12(r25)
000b58  3be00100  bneq r3, zero, 24
000b5c  1bc10001  srli r2, r1, 16
000b60  1b011100  andi r2, r2, 1
000b64  97902000  or r1, r1, r2
000b68  8b900011  add.s r1, r1, r16
000b6c  5b010000  j 8
000b70  97903001  or r1, r1, r19
000b74  17815501  and r2, r11, r21
000b78  9bc00001  srli r1, r1, 16
000b7c  13012904  setlt.u r2, r18, r2
000b80  73971c00  store.h r1, 14(r25)
000b84  3b600100  bneq r2, zero, 24
000b88  9bc00501  srli r1, r11, 16
000b8c  9b801000  andi r1, r1, 1
000b90  97901500  or r1, r11, r1
000b94  8b900011  add.s r1, r1, r16
000b98  5b010000  j 8
000b9c  97903501  or r1, r11, r19
000ba0  17015401  and r2, r8, r21
000ba4  9bc00001  srli r1, r1, 16
000ba8  13012904  setlt.u r2, r18, r2
000bac  73981c00  store.h r1, 16(r25)
000bb0  3b600100  bneq r2, zero, 24
000bb4  9b400401  srli r1, r8, 16
000bb8  9b801000  andi r1, r1, 1
000bbc  97101400  or r1, r8, r1
000bc0  8b900011  add.s r1, r1, r16
000bc4  5b010000  j 8
000bc8  97103401  or r1, r8, r19
000bcc  17815301  and r2, r7, r21
000bd0  9bc00001  srli r1, r1, 16
000bd4  13012904  setlt.u r2, r18, r2
000bd8  73991c00  store.h r1, 18(r25)
000bdc  3b600100  bneq r2, zero, 24
000be0  9bc00301  srli r1, r7, 16
000be4  9b801000  andi r1, r1, 1
000be8  97901300  or r1, r7, r1
000bec  8b900011  add.s r1, r1, r16
000bf0  5b010000  j 8
000bf4  97903301  or r1, r7, r19
000bf8  17015301  and r2, r6, r21
000bfc  9bc00001  srli r1, r1, 16
000c00  13012904  setlt.u r2, r18, r2
000c04  739a1c00  store.h r1, 20(r25)
000c08  3b600100  bneq r2, zero, 24
000c0c  9b400301  srli r1, r6, 16
000c10  9b801000  andi r1, r1, 1
000c14  97101300  or r1, r6, r1
000c18  8b900011  add.s r1, r1, r16
000c1c  5b010000  j 8
000c20  97103301  or r1, r6, r19
000c24  17815201  and r2, r5, r21
000c28  9bc00001  srli r1, r1, 16
000c2c  13012904  setlt.u r2, r18, r2
000c30  739b1c00  store.h r1, 22(r25)
000c34  3b600100  bneq r2, zero, 24
000c38  9bc00201  srli r1, r5, 16
000c3c  9b801000  andi r1, r1, 1
000c40  97901200  or r1, r5, r1
000c44  8b900011  add.s r1, r1, r16
000c48  5b010000  j 8
000c4c  97903201  or r1, r5, r19
000c50  17015e01  and r2, r28, r21
000c54  9bc00001  srli r1, r1, 16
000c58  13012904  setlt.u r2, r18, r2
000c5c  739c1c00  store.h r1, 24(r25)
000c60  3b600100  bneq r2, zero, 24
000c64  9b400e01  srli r1, r28, 16
000c68  9b801000  andi r1, r1, 1
000c6c  97101e00  or r1, r28, r1
000c70  8b900011  add.s r1, r1, r16
000c74  5b010000  j 8
000c78  97103e01  or r1, r28, r19
000c7c  17815d01  and r2, r27, r21
000c80  9bc00001  srli r1, r1, 16
000c84  13012904  setlt.u r2, r18, r2
000c88  739d1c00  store.h r1, 26(r25)
000c8c  3b600100  bneq r2, zero, 24
000c90  9bc00d01  srli r1, r27, 16
000c94  9b801000  andi r1, r1, 1
000c98  97901d00  or r1, r27, r1
000c9c  8b900011  add.s r1, r1, r16
000ca0  5b010000  j 8
000ca4  97903d01  or r1, r27, r19
000ca8  17015d01  and r2, r26, r21
000cac  9bc00001  srli r1, r1, 16
000cb0  13012904  setlt.u r2, r18, r2
000cb4  739e1c00  store.h r1, 28(r25)
000cb8  b77401fa  beq r2, zero, -2756
000cbc  97103d01  or r1, r26, r19
000cc0  dba8feff  j -2748
000cc4  9f0e8ffb  addli sp, r30, -576
000cc8  9f8e8e04  addli sp, sp, 576
000ccc  00a00300  mfence { lm, sm, gm }
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
000dec  00100000  exit
000df0  00100000  exit
000df4  00100000  exit
000df8  00100000  exit
000dfc  00100000  exit
000e00  00100000  exit
000e04  00100000  exit
000e08  00100000  exit
000e0c  00100000  exit
000e10  00100000  exit
000e14  00100000  exit
000e18  00100000  exit
000e1c  00100000  exit
000e20  00100000  exit
000e24  00100000  exit
000e28  00100000  exit
000e2c  00100000  exit
000e30  00100000  exit
000e34  00100000  exit
000e38  00100000  exit
000e3c  00100000  exit
000e40  00100000  exit
000e44  00100000  exit
000e48  00100000  exit
000e4c  00100000  exit
000e50  00100000  exit
000e54  00100000  exit
000e58  00100000  exit
000e5c  00100000  exit
000e60  00100000  exit
000e64  00100000  exit
000e68  00100000  exit
000e6c  00100000  exit
000e70  00100000  exit
000e74  00100000  exit
000e78  00100000  exit
000e7c  00100000  exit
000e80  00100000  exit
000e84  00100000  exit
000e88  00100000  exit
000e8c  00100000  exit
000e90  00100000  exit
000e94  00100000  exit
000e98  00100000  exit
000e9c  00100000  exit
000ea0  00100000  exit
000ea4  00100000  exit
000ea8  00100000  exit
000eac  00100000  exit
000eb0  00100000  exit
000eb4  00100000  exit
000eb8  00100000  exit
000ebc  00100000  exit
000ec0  00100000  exit
000ec4  00100000  exit
000ec8  00100000  exit
000ecc  00100000  exit
000ed0  00100000  exit
000ed4  00100000  exit
000ed8  00100000  exit
000edc  00100000  exit
000ee0  00100000  exit
000ee4  00100000  exit
000ee8  00100000  exit
000eec  00100000  exit
000ef0  00100000  exit
000ef4  00100000  exit
000ef8  00100000  exit
000efc  00100000  exit
000f00  00100000  exit
000f04  00100000  exit
000f08  00100000  exit
000f0c  00100000  exit
000f10  00100000  exit
