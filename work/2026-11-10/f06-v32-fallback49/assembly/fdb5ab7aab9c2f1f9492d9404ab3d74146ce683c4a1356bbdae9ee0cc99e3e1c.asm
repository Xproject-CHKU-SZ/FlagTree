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
000078  9f495000  addli r19, zero, 44
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
0000dc  9f8e8efb  addli sp, sp, -576
0000e0  1f8f0e04  addli r30, sp, 512
0000e4  2b010000  lui r2, 0
0000e8  80300002  core_id r1
0000ec  abf20000  lui r5, 15
0000f0  80540002  load_param_i r9, 0
0000f4  e3434f00  loadli.w r7,  36(r30)
0000f8  63024f00  loadli.w r4,  32(r30)
0000fc  9bb12000  slli r3, r1, 2
000100  1f010100  addli r2, r2, 0
000104  63035f00  loadli.w r6,  40(r30)
000108  9b92f2ff  ori r5, r5, 4095
00010c  0b942110  add.s r8, r3, r2
000110  0b924320  mul.s r4, r7, r4
000114  73680440  stores.w zero, 1040(r8)
000118  00a00300  mfence { lm, sm, gm }
00011c  80a10204  csr_set csr3, r5
000120  00d00100  sync_group
000124  67088ffc  storeli.w r8, -384(r30)
000128  73600400  stores.w zero, 0(r8)
00012c  0b126220  mul.s r4, r4, r6
000130  00a00300  mfence { lm, sm, gm }
000134  e7475ffc  storeli.w r5, -388(r30)
000138  80a10204  csr_set csr3, r5
00013c  00d00100  sync_group
000140  e7074ffc  storeli.w r4, -392(r30)
000144  4b1d920c  ble.s r4, r9, 6980
000148  1f028000  addli r4, zero, 64
00014c  e3030ffd  loadli.w r7,  -384(r30)
000150  1f150000  addli r10, zero, 1
000154  eb528f00  load.d r[6:7], 8(r30)
000158  2b0a4000  lui r20, 1024
00015c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000160  0b924030  div.s r4, r1, r4
000164  9f832308  addli r7, r7, 1040
000168  67077ffc  storeli.w r7, -400(r30)
00016c  80d30002  load_param_i r7, 1
000170  e7067ffc  storeli.w r7, -408(r30)
000174  67474ffc  storeli.w r4, -396(r30)
000178  1b326200  slli r4, r4, 6
00017c  0b924018  sub.s r4, r1, r4
000180  9b80f003  andi r1, r1, 63
000184  1b324200  slli r4, r4, 4
000188  e7401ffe  storeli.w r1, -244(r30)
00018c  ab700000  lui r1, 7
000190  9b131200  ori r7, r4, 1
000194  e7464ffc  storeli.w r4, -404(r30)
000198  9b9bf0ff  ori r23, r1, 4095
00019c  abf07f7f  lui r1, 522239
0001a0  67467ffc  storeli.w r7, -412(r30)
0001a4  9b132200  ori r7, r4, 2
0001a8  9b90f0ff  ori r1, r1, 4095
0001ac  e7037fff  storeli.w r23, -200(r30)
0001b0  67067ffc  storeli.w r7, -416(r30)
0001b4  9b133200  ori r7, r4, 3
0001b8  e7431ffe  storeli.w r1, -196(r30)
0001bc  e7457ffc  storeli.w r7, -420(r30)
0001c0  9b134200  ori r7, r4, 4
0001c4  e7057ffc  storeli.w r7, -424(r30)
0001c8  9b135200  ori r7, r4, 5
0001cc  67457ffc  storeli.w r7, -428(r30)
0001d0  9b136200  ori r7, r4, 6
0001d4  67057ffc  storeli.w r7, -432(r30)
0001d8  9b137200  ori r7, r4, 7
0001dc  e7447ffc  storeli.w r7, -436(r30)
0001e0  9b138200  ori r7, r4, 8
0001e4  e7047ffc  storeli.w r7, -440(r30)
0001e8  9b139200  ori r7, r4, 9
0001ec  67447ffc  storeli.w r7, -444(r30)
0001f0  9b13a200  ori r7, r4, 10
0001f4  67047ffc  storeli.w r7, -448(r30)
0001f8  9b13b200  ori r7, r4, 11
0001fc  e7437ffc  storeli.w r7, -452(r30)
000200  9b13c200  ori r7, r4, 12
000204  e7037ffc  storeli.w r7, -456(r30)
000208  9b13d200  ori r7, r4, 13
00020c  67437ffc  storeli.w r7, -460(r30)
000210  9b13e200  ori r7, r4, 14
000214  67037ffc  storeli.w r7, -464(r30)
000218  9b13f200  ori r7, r4, 15
00021c  e7427ffc  storeli.w r7, -468(r30)
000220  b3130228  sext_int2long r[8:9], r4
000224  2bf2ffff  lui r4, 1048575
000228  1b1202f0  ori r4, r4, 3840
00022c  97b3a302  sll.d r[8:9], r[8:9], r10
000230  97814100  and r3, r3, r4
000234  8ba27210  add.ul r[6:7], r[6:7], r[8:9]
000238  9f034000  addli r7, zero, 32
00023c  8b912110  add.s r3, r3, r2
000240  2bf1ff7f  lui r2, 524287
000244  73305fe2  store.d r[6:7], -480(r30)
000248  1f038ffe  addli r6, r30, -192
00024c  9b17f1ff  ori r15, r2, 4095
000250  2b11833a  lui r2, 239665
000254  e7083ffc  storeli.w r3, -376(r30)
000258  9b10f126  ori r1, r2, 623
00025c  e7411ffc  storeli.w r1, -484(r30)
000260  9f802108  addli r1, r3, 1040
000264  67481ffc  storeli.w r1, -380(r30)
000268  9f200000  addli r1, zero, 2
00026c  fe8100e0  vmmov mr3, r1
000270  5b2e0000  j 368
000274  9b400901  srli r1, r18, 16
000278  e30b7ffe  loadli.w r23,  -200(r30)
00027c  e3041ffe  loadli.w r9,  -248(r30)
000280  9b801000  andi r1, r1, 1
000284  8b101910  add.s r1, r18, r1
000288  8b907011  add.s r1, r1, r23
00028c  9bc00001  srli r1, r1, 16
000290  1f250000  addli r10, zero, 2
000294  9f020fff  addli r5, r30, -128
000298  2b0100f0  lui r2, 983040
00029c  1f038ffe  addli r6, r30, -192
0002a0  731f1ff8  store.h r1, -98(r30)
0002a4  ab0000f0  lui r1, 983040
0002a8  17112500  or r2, r10, r2
0002ac  00a00000  mfence { lm }
0002b0  eb518fee  load.d r[4:5], -280(r30)
0002b4  97101500  or r1, r10, r1
0002b8  6b598fef  load.d r[19:20], -264(r30)
0002bc  ffb05100  s_lm2gm r1, r5, 0(r[4:5])
0002c0  e3406ffe  loadli.w r1,  -204(r30)
0002c4  eb510fee  load.d r[4:5], -288(r30)
0002c8  7fb11100  s_lm2gm r2, r1, 0(r[4:5])
0002cc  2b0100f0  lui r2, 983040
0002d0  9fc00200  addli r1, r5, 4
0002d4  ab0100f0  lui r3, 983040
0002d8  1fe20200  addli r4, r5, 6
0002dc  17112500  or r2, r10, r2
0002e0  97113500  or r3, r10, r3
0002e4  7f311900  s_lm2gm r2, r1, 0(r[19:20])
0002e8  eb500fef  load.d r[2:3], -272(r30)
0002ec  6b590ff0  load.d r[19:20], -256(r30)
0002f0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0002f4  ab0100f0  lui r3, 983040
0002f8  9f801200  addli r1, r5, 8
0002fc  2b0200f0  lui r4, 983040
000300  1fa11200  addli r2, r5, 10
000304  97113500  or r3, r10, r3
000308  17124500  or r4, r10, r4
00030c  ff311900  s_lm2gm r3, r1, 0(r[19:20])
000310  ab0100f0  lui r3, 983040
000314  9fc01200  addli r1, r5, 12
000318  7f322c00  s_lm2gm r4, r2, 0(r[25:26])
00031c  2b0200f0  lui r4, 983040
000320  1fe11200  addli r2, r5, 14
000324  97113500  or r3, r10, r3
000328  17124500  or r4, r10, r4
00032c  ffb11500  s_lm2gm r3, r1, 0(r[12:13])
000330  ab0100f0  lui r3, 983040
000334  eb558ff1  load.d r[12:13], -232(r30)
000338  9f802200  addli r1, r5, 16
00033c  7fb22600  s_lm2gm r4, r2, 0(r[14:15])
000340  2b0200f0  lui r4, 983040
000344  1fa12200  addli r2, r5, 18
000348  97113500  or r3, r10, r3
00034c  17124500  or r4, r10, r4
000350  ffb11500  s_lm2gm r3, r1, 0(r[12:13])
000354  eb550ff1  load.d r[12:13], -240(r30)
000358  ab0100f0  lui r3, 983040
00035c  9fc02200  addli r1, r5, 20
000360  97113500  or r3, r10, r3
000364  7fb22500  s_lm2gm r4, r2, 0(r[12:13])
000368  2b0200f0  lui r4, 983040
00036c  1fe12200  addli r2, r5, 22
000370  ff311d00  s_lm2gm r3, r1, 0(r[27:28])
000374  ab0100f0  lui r3, 983040
000378  9f803200  addli r1, r5, 24
00037c  17124500  or r4, r10, r4
000380  97113500  or r3, r10, r3
000384  7fb22300  s_lm2gm r4, r2, 0(r[8:9])
000388  eb538ff2  load.d r[8:9], -216(r30)
00038c  2b0200f0  lui r4, 983040
000390  1fa13200  addli r2, r5, 26
000394  17124500  or r4, r10, r4
000398  ffb11300  s_lm2gm r3, r1, 0(r[8:9])
00039c  eb530ff2  load.d r[8:9], -224(r30)
0003a0  ab0100f0  lui r3, 983040
0003a4  9fc03200  addli r1, r5, 28
0003a8  97113500  or r3, r10, r3
0003ac  7fb22300  s_lm2gm r4, r2, 0(r[8:9])
0003b0  2b0200f0  lui r4, 983040
0003b4  1fe13200  addli r2, r5, 30
0003b8  9f034000  addli r7, zero, 32
0003bc  ff311800  s_lm2gm r3, r1, 0(r[17:18])
0003c0  e300dffc  loadli.w r1,  -408(r30)
0003c4  17124500  or r4, r10, r4
0003c8  7fb22a00  s_lm2gm r4, r2, 0(r[22:23])
0003cc  8b941410  add.s r9, r9, r1
0003d0  00a00000  mfence { lm }
0003d4  e300fffc  loadli.w r1,  -392(r30)
0003d8  3fa01400  blt.s r9, r1, 8
0003dc  db150300  j 6316
0003e0  9f000000  addli r1, zero, 0
0003e4  0b111310  add.s r2, r6, r1
0003e8  9fc00000  addli r1, r1, 4
0003ec  73100100  store.h zero, 0(r2)
0003f0  73110100  store.h zero, 2(r2)
0003f4  00a00000  mfence { lm }
0003f8  bbbf70fe  bneq r1, r7, -20
0003fc  e3005f00  loadli.w r1,  40(r30)
000400  63414f00  loadli.w r2,  36(r30)
000404  9f120000  addli r5, zero, 1
000408  e7009ffe  storeli.w r9, -248(r30)
00040c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000410  1f190000  addli r18, zero, 1
000414  12310002  vadd.s.mz vr2{mr1}, zero, vr0
000418  7e0109e0  vmmov mr2, r18
00041c  8b901430  div.s r1, r9, r1
000420  8b902030  div.s r1, r1, r2
000424  6341effc  loadli.w r2,  -396(r30)
000428  8b902010  add.s r1, r1, r2
00042c  1bb1a000  slli r2, r1, 10
000430  67011ffe  storeli.w r1, -240(r30)
000434  e340dffc  loadli.w r1,  -404(r30)
000438  e70f2ffc  storeli.w r2, -264(r30)
00043c  8b101110  add.s r1, r2, r1
000440  2b0100f0  lui r2, 983040
000444  b3910028  sext_int2long r[4:5], r1
000448  17912300  or r2, r7, r2
00044c  ab0000f0  lui r1, 983040
000450  17b45102  sll.d r[9:10], r[4:5], r5
000454  eb510f00  load.d r[4:5], 0(r30)
000458  97901300  or r1, r7, r1
00045c  73308ff0  store.d r[9:10], -256(r30)
000460  8ba18110  add.ul r[4:5], r[4:5], r[9:10]
000464  7fa16100  l_gm2lm r2, r6, 0(r[4:5])
000468  6b510fe2  load.d r[3:4], -480(r30)
00046c  1f020fff  addli r4, r30, -128
000470  ff204100  l_gm2lm r1, r4, 0(r[3:4])
000474  00a00000  mfence { lm }
000478  eb310ff4  load.hu r3, -192(r30)
00047c  6b322ff4  load.hu r4, -190(r30)
000480  6b31aff5  load.hu r2, -166(r30)
000484  eb30cff5  load.hu r1, -164(r30)
000488  eb324ff4  load.hu r5, -188(r30)
00048c  6b336ff4  load.hu r6, -186(r30)
000490  eb338ff4  load.hu r7, -184(r30)
000494  6b34aff4  load.hu r8, -182(r30)
000498  eb34cff4  load.hu r9, -180(r30)
00049c  6b35eff4  load.hu r10, -178(r30)
0004a0  eb350ff5  load.hu r11, -176(r30)
0004a4  6b362ff5  load.hu r12, -174(r30)
0004a8  eb364ff5  load.hu r13, -172(r30)
0004ac  6b376ff5  load.hu r14, -170(r30)
0004b0  6b388ff5  load.hu r16, -168(r30)
0004b4  eb38eff5  load.hu r17, -162(r30)
0004b8  b3910118  bfloat2float.rn r3, r3
0004bc  33110118  bfloat2float.rn r2, r2
0004c0  b3900018  bfloat2float.rn r1, r1
0004c4  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
0004c8  b3110218  bfloat2float.rn r3, r4
0004cc  1f420000  addli r4, zero, 4
0004d0  7e0002e0  vmmov mr0, r4
0004d4  1f021000  addli r4, zero, 8
0004d8  eaa01136  vor.u.mh vr1{mr3}, r3, vr1
0004dc  b3910218  bfloat2float.rn r3, r5
0004e0  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0004e4  b3110318  bfloat2float.rn r3, r6
0004e8  7e0002e0  vmmov mr0, r4
0004ec  1f022000  addli r4, zero, 16
0004f0  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0004f4  b3910318  bfloat2float.rn r3, r7
0004f8  7e0002e0  vmmov mr0, r4
0004fc  1f024000  addli r4, zero, 32
000500  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000504  b3110418  bfloat2float.rn r3, r8
000508  7e0002e0  vmmov mr0, r4
00050c  1f028000  addli r4, zero, 64
000510  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000514  b3910418  bfloat2float.rn r3, r9
000518  7e0002e0  vmmov mr0, r4
00051c  1f020001  addli r4, zero, 128
000520  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000524  b3110518  bfloat2float.rn r3, r10
000528  7e0002e0  vmmov mr0, r4
00052c  1f020002  addli r4, zero, 256
000530  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000534  b3910518  bfloat2float.rn r3, r11
000538  7e0002e0  vmmov mr0, r4
00053c  1f020004  addli r4, zero, 512
000540  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000544  b3110618  bfloat2float.rn r3, r12
000548  7e0002e0  vmmov mr0, r4
00054c  1f020008  addli r4, zero, 1024
000550  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000554  b3910618  bfloat2float.rn r3, r13
000558  7e0002e0  vmmov mr0, r4
00055c  1f020010  addli r4, zero, 2048
000560  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000564  b3110718  bfloat2float.rn r3, r14
000568  7e0002e0  vmmov mr0, r4
00056c  1f020020  addli r4, zero, 4096
000570  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000574  b3110818  bfloat2float.rn r3, r16
000578  7e0002e0  vmmov mr0, r4
00057c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000580  9f010040  addli r3, zero, 8192
000584  7e8001e0  vmmov mr0, r3
000588  ea201130  vor.u.mh vr1{mr0}, r2, vr1
00058c  2b410000  lui r2, 4
000590  7e0001e0  vmmov mr0, r2
000594  2b810000  lui r2, 8
000598  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00059c  b3900818  bfloat2float.rn r1, r17
0005a0  7e0001e0  vmmov mr0, r2
0005a4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0005a8  eb300ff8  load.hu r1, -128(r30)
0005ac  6b312ff8  load.hu r2, -126(r30)
0005b0  eb314ff8  load.hu r3, -124(r30)
0005b4  6b326ff8  load.hu r4, -122(r30)
0005b8  eb328ff8  load.hu r5, -120(r30)
0005bc  6b33aff8  load.hu r6, -118(r30)
0005c0  eb33cff8  load.hu r7, -116(r30)
0005c4  6b34eff8  load.hu r8, -114(r30)
0005c8  eb340ff9  load.hu r9, -112(r30)
0005cc  6b352ff9  load.hu r10, -110(r30)
0005d0  eb354ff9  load.hu r11, -108(r30)
0005d4  6b366ff9  load.hu r12, -106(r30)
0005d8  eb368ff9  load.hu r13, -104(r30)
0005dc  6b37aff9  load.hu r14, -102(r30)
0005e0  6b38cff9  load.hu r16, -100(r30)
0005e4  eb38eff9  load.hu r17, -98(r30)
0005e8  b3900018  bfloat2float.rn r1, r1
0005ec  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0005f0  b3100118  bfloat2float.rn r1, r2
0005f4  1f410000  addli r2, zero, 4
0005f8  7e0101e0  vmmov mr2, r2
0005fc  1f011000  addli r2, zero, 8
000600  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
000604  b3900118  bfloat2float.rn r1, r3
000608  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00060c  b3100218  bfloat2float.rn r1, r4
000610  7e0101e0  vmmov mr2, r2
000614  1f012000  addli r2, zero, 16
000618  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00061c  b3900218  bfloat2float.rn r1, r5
000620  7e0101e0  vmmov mr2, r2
000624  1f014000  addli r2, zero, 32
000628  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00062c  b3100318  bfloat2float.rn r1, r6
000630  7e0101e0  vmmov mr2, r2
000634  1f018000  addli r2, zero, 64
000638  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00063c  b3900318  bfloat2float.rn r1, r7
000640  7e0101e0  vmmov mr2, r2
000644  1f010001  addli r2, zero, 128
000648  ab03807f  lui r7, 522240
00064c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000650  b3100418  bfloat2float.rn r1, r8
000654  7e0101e0  vmmov mr2, r2
000658  1f010002  addli r2, zero, 256
00065c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000660  b3900418  bfloat2float.rn r1, r9
000664  7e0101e0  vmmov mr2, r2
000668  1f010004  addli r2, zero, 512
00066c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000670  b3100518  bfloat2float.rn r1, r10
000674  7e0101e0  vmmov mr2, r2
000678  1f010008  addli r2, zero, 1024
00067c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000680  b3900518  bfloat2float.rn r1, r11
000684  7e0101e0  vmmov mr2, r2
000688  1f010010  addli r2, zero, 2048
00068c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000690  b3100618  bfloat2float.rn r1, r12
000694  7e0101e0  vmmov mr2, r2
000698  1f010020  addli r2, zero, 4096
00069c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006a0  b3900618  bfloat2float.rn r1, r13
0006a4  7e0101e0  vmmov mr2, r2
0006a8  1f010040  addli r2, zero, 8192
0006ac  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006b0  b3100718  bfloat2float.rn r1, r14
0006b4  7e0101e0  vmmov mr2, r2
0006b8  2b410000  lui r2, 4
0006bc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006c0  b3100818  bfloat2float.rn r1, r16
0006c4  7e0101e0  vmmov mr2, r2
0006c8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006cc  b3900818  bfloat2float.rn r1, r17
0006d0  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0006d4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0006d8  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0006dc  00a00000  mfence { lm }
0006e0  630e8fff  loadli.w r28,  -64(r30)
0006e4  e34d8fff  loadli.w r27,  -60(r30)
0006e8  630d9fff  loadli.w r26,  -56(r30)
0006ec  63469fff  loadli.w r12,  -52(r30)
0006f0  e30cafff  loadli.w r25,  -48(r30)
0006f4  e348afff  loadli.w r17,  -44(r30)
0006f8  630cbfff  loadli.w r24,  -40(r30)
0006fc  e349bfff  loadli.w r19,  -36(r30)
000700  e306cfff  loadli.w r13,  -32(r30)
000704  634bcfff  loadli.w r22,  -28(r30)
000708  6307dfff  loadli.w r14,  -24(r30)
00070c  6349dfff  loadli.w r18,  -20(r30)
000710  e300efff  loadli.w r1,  -16(r30)
000714  1702fe00  and r4, r28, r15
000718  e7011ffe  storeli.w r1, -232(r30)
00071c  6348efff  loadli.w r16,  -12(r30)
000720  e30affff  loadli.w r21,  -8(r30)
000724  e341ffff  loadli.w r3,  -4(r30)
000728  13814304  setlt.u r2, r7, r4
00072c  3b300100  bneq r2, zero, 12
000730  e702cfff  storeli.w r28, -216(r30)
000734  db010000  j 12
000738  97104e01  or r1, r28, r20
00073c  e7021ffe  storeli.w r1, -216(r30)
000740  9785fd00  and r11, r27, r15
000744  67023ffe  storeli.w r3, -224(r30)
000748  1381b304  setlt.u r2, r7, r11
00074c  3b300100  bneq r2, zero, 12
000750  9f810d00  addli r3, r27, 0
000754  5b010000  j 8
000758  97914d01  or r3, r27, r20
00075c  9702fd00  and r5, r26, r15
000760  13815304  setlt.u r2, r7, r5
000764  3b300100  bneq r2, zero, 12
000768  e70baffd  storeli.w r26, -328(r30)
00076c  db010000  j 12
000770  97104d01  or r1, r26, r20
000774  e70b1ffc  storeli.w r1, -328(r30)
000778  1705f600  and r10, r12, r15
00077c  1381a304  setlt.u r2, r7, r10
000780  3b300100  bneq r2, zero, 12
000784  e74bcffc  storeli.w r12, -324(r30)
000788  db010000  j 12
00078c  97104601  or r1, r12, r20
000790  e74b1ffc  storeli.w r1, -324(r30)
000794  9784fc00  and r9, r25, r15
000798  13819304  setlt.u r2, r7, r9
00079c  3b300100  bneq r2, zero, 12
0007a0  670c9ffd  storeli.w r25, -320(r30)
0007a4  db010000  j 12
0007a8  97904c01  or r1, r25, r20
0007ac  670c1ffc  storeli.w r1, -320(r30)
0007b0  1784f800  and r8, r17, r15
0007b4  13818304  setlt.u r2, r7, r8
0007b8  3b300100  bneq r2, zero, 12
0007bc  674c1ffd  storeli.w r17, -316(r30)
0007c0  db010000  j 12
0007c4  97904801  or r1, r17, r20
0007c8  674c1ffc  storeli.w r1, -316(r30)
0007cc  1703fc00  and r6, r24, r15
0007d0  67433ffe  storeli.w r3, -204(r30)
0007d4  13816304  setlt.u r2, r7, r6
0007d8  3b300100  bneq r2, zero, 12
0007dc  e70c8ffd  storeli.w r24, -312(r30)
0007e0  db010000  j 12
0007e4  97104c01  or r1, r24, r20
0007e8  e70c1ffc  storeli.w r1, -312(r30)
0007ec  9781f900  and r3, r19, r15
0007f0  67093ffd  storeli.w r19, -368(r30)
0007f4  13813304  setlt.u r2, r7, r3
0007f8  3b300100  bneq r2, zero, 12
0007fc  670d3ffd  storeli.w r19, -304(r30)
000800  db010000  j 12
000804  97904901  or r1, r19, r20
000808  670d1ffc  storeli.w r1, -304(r30)
00080c  9789f600  and r19, r13, r15
000810  6749dffc  storeli.w r13, -364(r30)
000814  e7488ffd  storeli.w r24, -372(r30)
000818  13813305  setlt.u r2, r7, r19
00081c  37200100  beq r2, zero, 8
000820  97964601  or r13, r13, r20
000824  170cfb00  and r24, r22, r15
000828  e7096ffd  storeli.w r22, -360(r30)
00082c  13818305  setlt.u r2, r7, r24
000830  3b300100  bneq r2, zero, 12
000834  670e6ffd  storeli.w r22, -288(r30)
000838  db010000  j 12
00083c  97104b01  or r1, r22, r20
000840  670e1ffc  storeli.w r1, -288(r30)
000844  170bf700  and r22, r14, r15
000848  e3003ffe  loadli.w r1,  -232(r30)
00084c  e70ddffc  storeli.w r13, -296(r30)
000850  e749effc  storeli.w r14, -356(r30)
000854  13816305  setlt.u r2, r7, r22
000858  3b300100  bneq r2, zero, 12
00085c  9f060700  addli r13, r14, 0
000860  5b010000  j 8
000864  97164701  or r13, r14, r20
000868  1707f900  and r14, r18, r15
00086c  670a2ffd  storeli.w r18, -352(r30)
000870  1381e304  setlt.u r2, r7, r14
000874  37200100  beq r2, zero, 8
000878  17194901  or r18, r18, r20
00087c  1781f000  and r2, r1, r15
000880  e74a2ffc  storeli.w r2, -340(r30)
000884  13812304  setlt.u r2, r7, r2
000888  37200100  beq r2, zero, 8
00088c  97904001  or r1, r1, r20
000890  e70e1ffc  storeli.w r1, -280(r30)
000894  9700f800  and r1, r16, r15
000898  674a0ffd  storeli.w r16, -348(r30)
00089c  13811304  setlt.u r2, r7, r1
0008a0  670b1ffc  storeli.w r1, -336(r30)
0008a4  3b300100  bneq r2, zero, 12
0008a8  670f0ffd  storeli.w r16, -272(r30)
0008ac  db010000  j 12
0008b0  97104801  or r1, r16, r20
0008b4  670f1ffc  storeli.w r1, -272(r30)
0008b8  9780fa00  and r1, r21, r15
0008bc  2b08807f  lui r16, 522240
0008c0  2b014000  lui r2, 1024
0008c4  e70a5ffd  storeli.w r21, -344(r30)
0008c8  93831304  setlt.u r7, r7, r1
0008cc  674b1ffc  storeli.w r1, -332(r30)
0008d0  37a00300  beq r7, zero, 8
0008d4  979a4a01  or r21, r21, r20
0008d8  e3004ffe  loadli.w r1,  -224(r30)
0008dc  178af000  and r20, r1, r15
0008e0  93034805  setlt.u r7, r16, r20
0008e4  37a00300  beq r7, zero, 8
0008e8  97902000  or r1, r1, r2
0008ec  e3437ffe  loadli.w r7,  -196(r30)
0008f0  13824304  setlt.u r4, r7, r4
0008f4  bb000200  bneq r4, zero, 32
0008f8  1b420e01  srli r4, r28, 16
0008fc  2b08ffff  lui r16, 1048560
000900  1b021200  andi r4, r4, 1
000904  0b124e10  add.s r4, r28, r4
000908  0b127211  add.s r4, r4, r23
00090c  17020201  and r4, r4, r16
000910  e7024ffe  storeli.w r4, -216(r30)
000914  1382b304  setlt.u r4, r7, r11
000918  bb000200  bneq r4, zero, 32
00091c  1bc20d01  srli r4, r27, 16
000920  ab05ffff  lui r11, 1048560
000924  1b021200  andi r4, r4, 1
000928  0b924d10  add.s r4, r27, r4
00092c  0b127211  add.s r4, r4, r23
000930  1702b200  and r4, r4, r11
000934  67434ffe  storeli.w r4, -204(r30)
000938  13825304  setlt.u r4, r7, r5
00093c  630e7ffd  loadli.w r28,  -328(r30)
000940  ab02ffff  lui r5, 1048560
000944  3b600200  bneq r4, zero, 24
000948  1b420d01  srli r4, r26, 16
00094c  1b021200  andi r4, r4, 1
000950  0b124d10  add.s r4, r26, r4
000954  0b127211  add.s r4, r4, r23
000958  170e5200  and r28, r4, r5
00095c  1382a304  setlt.u r4, r7, r10
000960  e34d7ffd  loadli.w r27,  -324(r30)
000964  9f050900  addli r11, r18, 0
000968  3b600200  bneq r4, zero, 24
00096c  1b420601  srli r4, r12, 16
000970  1b021200  andi r4, r4, 1
000974  0b124610  add.s r4, r12, r4
000978  0b127211  add.s r4, r4, r23
00097c  970d5200  and r27, r4, r5
000980  13829304  setlt.u r4, r7, r9
000984  6305affd  loadli.w r10,  -304(r30)
000988  630d8ffd  loadli.w r26,  -320(r30)
00098c  1f890600  addli r18, r13, 0
000990  3b600200  bneq r4, zero, 24
000994  1bc20c01  srli r4, r25, 16
000998  1b021200  andi r4, r4, 1
00099c  0b924c10  add.s r4, r25, r4
0009a0  0b127211  add.s r4, r4, r23
0009a4  170d5200  and r26, r4, r5
0009a8  13828304  setlt.u r4, r7, r8
0009ac  e306bffd  loadli.w r13,  -296(r30)
0009b0  e3049ffd  loadli.w r9,  -312(r30)
0009b4  63448ffd  loadli.w r8,  -316(r30)
0009b8  3b600200  bneq r4, zero, 24
0009bc  1bc20801  srli r4, r17, 16
0009c0  1b021200  andi r4, r4, 1
0009c4  0b924810  add.s r4, r17, r4
0009c8  0b127211  add.s r4, r4, r23
0009cc  17045200  and r8, r4, r5
0009d0  13826304  setlt.u r4, r7, r6
0009d4  3b700200  bneq r4, zero, 28
0009d8  63411ffd  loadli.w r2,  -372(r30)
0009dc  1b420101  srli r4, r2, 16
0009e0  1b021200  andi r4, r4, 1
0009e4  0b124110  add.s r4, r2, r4
0009e8  0b127211  add.s r4, r4, r23
0009ec  97045200  and r9, r4, r5
0009f0  93813304  setlt.u r3, r7, r3
0009f4  9f880000  addli r17, r1, 0
0009f8  3bf00100  bneq r3, zero, 28
0009fc  e3002ffd  loadli.w r1,  -368(r30)
000a00  9bc10001  srli r3, r1, 16
000a04  9b811100  andi r3, r3, 1
000a08  8b903010  add.s r1, r1, r3
000a0c  8b907011  add.s r1, r1, r23
000a10  17855000  and r10, r1, r5
000a14  93803305  setlt.u r1, r7, r19
000a18  3bf00000  bneq r1, zero, 28
000a1c  63412ffd  loadli.w r2,  -364(r30)
000a20  9b400101  srli r1, r2, 16
000a24  9b801000  andi r1, r1, 1
000a28  8b101110  add.s r1, r2, r1
000a2c  8b907011  add.s r1, r1, r23
000a30  97865000  and r13, r1, r5
000a34  93808305  setlt.u r1, r7, r24
000a38  e309cffd  loadli.w r19,  -288(r30)
000a3c  e3416ffe  loadli.w r3,  -204(r30)
000a40  3bf00000  bneq r1, zero, 28
000a44  63013ffd  loadli.w r2,  -360(r30)
000a48  9b400101  srli r1, r2, 16
000a4c  9b801000  andi r1, r1, 1
000a50  8b101110  add.s r1, r2, r1
000a54  8b907011  add.s r1, r1, r23
000a58  97895000  and r19, r1, r5
000a5c  93806305  setlt.u r1, r7, r22
000a60  3bf00000  bneq r1, zero, 28
000a64  63413ffd  loadli.w r2,  -356(r30)
000a68  9b400101  srli r1, r2, 16
000a6c  9b801000  andi r1, r1, 1
000a70  8b101110  add.s r1, r2, r1
000a74  8b907011  add.s r1, r1, r23
000a78  17895000  and r18, r1, r5
000a7c  9380e304  setlt.u r1, r7, r14
000a80  6308effd  loadli.w r16,  -272(r30)
000a84  630bdffd  loadli.w r22,  -280(r30)
000a88  3bf00000  bneq r1, zero, 28
000a8c  63014ffd  loadli.w r2,  -352(r30)
000a90  9b400101  srli r1, r2, 16
000a94  9b801000  andi r1, r1, 1
000a98  8b101110  add.s r1, r2, r1
000a9c  8b907011  add.s r1, r1, r23
000aa0  97855000  and r11, r1, r5
000aa4  e3405ffd  loadli.w r1,  -340(r30)
000aa8  93801304  setlt.u r1, r7, r1
000aac  3bf00000  bneq r1, zero, 28
000ab0  63013ffe  loadli.w r2,  -232(r30)
000ab4  9b400101  srli r1, r2, 16
000ab8  9b801000  andi r1, r1, 1
000abc  8b101110  add.s r1, r2, r1
000ac0  8b907011  add.s r1, r1, r23
000ac4  178b5000  and r22, r1, r5
000ac8  e3006ffd  loadli.w r1,  -336(r30)
000acc  93801304  setlt.u r1, r7, r1
000ad0  3bf00000  bneq r1, zero, 28
000ad4  63414ffd  loadli.w r2,  -348(r30)
000ad8  9b400101  srli r1, r2, 16
000adc  9b801000  andi r1, r1, 1
000ae0  8b101110  add.s r1, r2, r1
000ae4  8b907011  add.s r1, r1, r23
000ae8  17885000  and r16, r1, r5
000aec  e3406ffd  loadli.w r1,  -332(r30)
000af0  93801304  setlt.u r1, r7, r1
000af4  3bf00000  bneq r1, zero, 28
000af8  63015ffd  loadli.w r2,  -344(r30)
000afc  9b400101  srli r1, r2, 16
000b00  9b801000  andi r1, r1, 1
000b04  8b101110  add.s r1, r2, r1
000b08  8b907011  add.s r1, r1, r23
000b0c  978a5000  and r21, r1, r5
000b10  93804305  setlt.u r1, r7, r20
000b14  63015ffe  loadli.w r2,  -216(r30)
000b18  3bf00000  bneq r1, zero, 28
000b1c  63024ffe  loadli.w r4,  -224(r30)
000b20  9b400201  srli r1, r4, 16
000b24  9b801000  andi r1, r1, 1
000b28  8b101210  add.s r1, r4, r1
000b2c  8b907011  add.s r1, r1, r23
000b30  97885000  and r17, r1, r5
000b34  9700f100  and r1, r2, r15
000b38  ab03807f  lui r7, 522240
000b3c  2b064000  lui r12, 1024
000b40  93801304  setlt.u r1, r7, r1
000b44  3be00000  bneq r1, zero, 24
000b48  9b400101  srli r1, r2, 16
000b4c  9b801000  andi r1, r1, 1
000b50  8b101110  add.s r1, r2, r1
000b54  8b907011  add.s r1, r1, r23
000b58  5b010000  j 8
000b5c  9710c100  or r1, r2, r12
000b60  1781f100  and r2, r3, r15
000b64  13812304  setlt.u r2, r7, r2
000b68  3b600100  bneq r2, zero, 24
000b6c  1bc10101  srli r2, r3, 16
000b70  1b011100  andi r2, r2, 1
000b74  0b912110  add.s r2, r3, r2
000b78  8b117111  add.s r3, r2, r23
000b7c  5b010000  j 8
000b80  9791c100  or r3, r3, r12
000b84  1701fe00  and r2, r28, r15
000b88  13812304  setlt.u r2, r7, r2
000b8c  3b600100  bneq r2, zero, 24
000b90  1b410e01  srli r2, r28, 16
000b94  1b011100  andi r2, r2, 1
000b98  0b112e10  add.s r2, r28, r2
000b9c  0b127111  add.s r4, r2, r23
000ba0  5b010000  j 8
000ba4  1712ce00  or r4, r28, r12
000ba8  1781fd00  and r2, r27, r15
000bac  13812304  setlt.u r2, r7, r2
000bb0  3b600100  bneq r2, zero, 24
000bb4  1bc10d01  srli r2, r27, 16
000bb8  1b011100  andi r2, r2, 1
000bbc  0b912d10  add.s r2, r27, r2
000bc0  0b117111  add.s r2, r2, r23
000bc4  5b010000  j 8
000bc8  1791cd00  or r2, r27, r12
000bcc  9702fd00  and r5, r26, r15
000bd0  93825304  setlt.u r5, r7, r5
000bd4  3be00200  bneq r5, zero, 24
000bd8  9b420d01  srli r5, r26, 16
000bdc  9b821200  andi r5, r5, 1
000be0  8b125d10  add.s r5, r26, r5
000be4  0b937211  add.s r6, r5, r23
000be8  5b010000  j 8
000bec  1713cd00  or r6, r26, r12
000bf0  9702f400  and r5, r8, r15
000bf4  93825304  setlt.u r5, r7, r5
000bf8  3be00200  bneq r5, zero, 24
000bfc  9b420401  srli r5, r8, 16
000c00  9b821200  andi r5, r5, 1
000c04  8b125410  add.s r5, r8, r5
000c08  0b947211  add.s r8, r5, r23
000c0c  5b010000  j 8
000c10  1714c400  or r8, r8, r12
000c14  9782f400  and r5, r9, r15
000c18  93825304  setlt.u r5, r7, r5
000c1c  3be00200  bneq r5, zero, 24
000c20  9bc20401  srli r5, r9, 16
000c24  9b821200  andi r5, r5, 1
000c28  8b925410  add.s r5, r9, r5
000c2c  8b947211  add.s r9, r5, r23
000c30  5b010000  j 8
000c34  9794c400  or r9, r9, r12
000c38  9702f500  and r5, r10, r15
000c3c  93825304  setlt.u r5, r7, r5
000c40  3be00200  bneq r5, zero, 24
000c44  9b420501  srli r5, r10, 16
000c48  9b821200  andi r5, r5, 1
000c4c  8b125510  add.s r5, r10, r5
000c50  0b957211  add.s r10, r5, r23
000c54  5b010000  j 8
000c58  1715c500  or r10, r10, r12
000c5c  9782f600  and r5, r13, r15
000c60  93825304  setlt.u r5, r7, r5
000c64  3be00200  bneq r5, zero, 24
000c68  9bc20601  srli r5, r13, 16
000c6c  9b821200  andi r5, r5, 1
000c70  8b925610  add.s r5, r13, r5
000c74  8b967211  add.s r13, r5, r23
000c78  5b010000  j 8
000c7c  9796c600  or r13, r13, r12
000c80  9782f900  and r5, r19, r15
000c84  93825304  setlt.u r5, r7, r5
000c88  3be00200  bneq r5, zero, 24
000c8c  9bc20901  srli r5, r19, 16
000c90  9b821200  andi r5, r5, 1
000c94  8b925910  add.s r5, r19, r5
000c98  0b977211  add.s r14, r5, r23
000c9c  5b010000  j 8
000ca0  1797c900  or r14, r19, r12
000ca4  9702f900  and r5, r18, r15
000ca8  93825304  setlt.u r5, r7, r5
000cac  3be00200  bneq r5, zero, 24
000cb0  9b420901  srli r5, r18, 16
000cb4  9b821200  andi r5, r5, 1
000cb8  8b125910  add.s r5, r18, r5
000cbc  0b997211  add.s r18, r5, r23
000cc0  5b010000  j 8
000cc4  1719c900  or r18, r18, r12
000cc8  9782f500  and r5, r11, r15
000ccc  93825304  setlt.u r5, r7, r5
000cd0  3be00200  bneq r5, zero, 24
000cd4  9bc20501  srli r5, r11, 16
000cd8  9b821200  andi r5, r5, 1
000cdc  8b925510  add.s r5, r11, r5
000ce0  8b997211  add.s r19, r5, r23
000ce4  5b010000  j 8
000ce8  9799c500  or r19, r11, r12
000cec  9702fb00  and r5, r22, r15
000cf0  ab05807f  lui r11, 522240
000cf4  93825304  setlt.u r5, r7, r5
000cf8  3be00200  bneq r5, zero, 24
000cfc  9b420b01  srli r5, r22, 16
000d00  9b821200  andi r5, r5, 1
000d04  8b125b10  add.s r5, r22, r5
000d08  8b937211  add.s r7, r5, r23
000d0c  5b010000  j 8
000d10  9713cb00  or r7, r22, r12
000d14  9702f800  and r5, r16, r15
000d18  93825504  setlt.u r5, r11, r5
000d1c  3be00200  bneq r5, zero, 24
000d20  9b420801  srli r5, r16, 16
000d24  9b821200  andi r5, r5, 1
000d28  8b125810  add.s r5, r16, r5
000d2c  0b987211  add.s r16, r5, r23
000d30  5b010000  j 8
000d34  1718c800  or r16, r16, r12
000d38  9782fa00  and r5, r21, r15
000d3c  93825504  setlt.u r5, r11, r5
000d40  3be00200  bneq r5, zero, 24
000d44  9bc20a01  srli r5, r21, 16
000d48  9b821200  andi r5, r5, 1
000d4c  8b925a10  add.s r5, r21, r5
000d50  8b9b7211  add.s r23, r5, r23
000d54  5b010000  j 8
000d58  979bca00  or r23, r21, r12
000d5c  9782f800  and r5, r17, r15
000d60  93825504  setlt.u r5, r11, r5
000d64  3bf00200  bneq r5, zero, 28
000d68  9bc20801  srli r5, r17, 16
000d6c  e3057ffe  loadli.w r11,  -200(r30)
000d70  9b821200  andi r5, r5, 1
000d74  8b925810  add.s r5, r17, r5
000d78  8b9db210  add.s r27, r5, r11
000d7c  5b010000  j 8
000d80  979dc800  or r27, r17, r12
000d84  2b0effff  lui r28, 1048560
000d88  ab02ffff  lui r5, 1048560
000d8c  170ac701  and r20, r14, r28
000d90  63072ffe  loadli.w r14,  -240(r30)
000d94  97805000  and r1, r1, r5
000d98  97815100  and r3, r3, r5
000d9c  17025200  and r4, r4, r5
000da0  9702c101  and r5, r2, r28
000da4  1703c301  and r6, r6, r28
000da8  1704c401  and r8, r8, r28
000dac  9785c401  and r11, r9, r28
000db0  1706c501  and r12, r10, r28
000db4  9788c601  and r17, r13, r28
000db8  970ac901  and r21, r18, r28
000dbc  178bc901  and r22, r19, r28
000dc0  178cc301  and r24, r7, r28
000dc4  970cc801  and r25, r16, r28
000dc8  178dcb01  and r26, r23, r28
000dcc  178ecd01  and r28, r27, r28
000dd0  1f018000  addli r2, zero, 64
000dd4  3f302700  blt.s r14, r2, 12
000dd8  1f010000  addli r2, zero, 0
000ddc  5b080000  j 64
000de0  0be13010  add.f.rn r2, r1, r3
000de4  0b614110  add.f.rn r2, r2, r4
000de8  0b615110  add.f.rn r2, r2, r5
000dec  0b616110  add.f.rn r2, r2, r6
000df0  0b618110  add.f.rn r2, r2, r8
000df4  0b61b110  add.f.rn r2, r2, r11
000df8  0b61c110  add.f.rn r2, r2, r12
000dfc  0b611111  add.f.rn r2, r2, r17
000e00  0b614111  add.f.rn r2, r2, r20
000e04  0b615111  add.f.rn r2, r2, r21
000e08  0b616111  add.f.rn r2, r2, r22
000e0c  0b618111  add.f.rn r2, r2, r24
000e10  0b619111  add.f.rn r2, r2, r25
000e14  0b61a111  add.f.rn r2, r2, r26
000e18  0b61c111  add.f.rn r2, r2, r28
000e1c  e3030ffd  loadli.w r7,  -384(r30)
000e20  6345fffc  loadli.w r10,  -388(r30)
000e24  73e02300  stores.w r2, 0(r7)
000e28  00a00300  mfence { lm, sm, gm }
000e2c  80210504  csr_set csr3, r10
000e30  00d00100  sync_group
000e34  63411ffe  loadli.w r2,  -244(r30)
000e38  3b280100  bneq r2, zero, 520
000e3c  e3061ffd  loadli.w r13,  -376(r30)
000e40  6fc10600  loads.w r2, 0(r13)
000e44  efc34600  loads.w r7, 4(r13)
000e48  efc48600  loads.w r9, 8(r13)
000e4c  0b617110  add.f.rn r2, r2, r7
000e50  efc3c600  loads.w r7, 12(r13)
000e54  0b619110  add.f.rn r2, r2, r9
000e58  efc40601  loads.w r9, 16(r13)
000e5c  0b617110  add.f.rn r2, r2, r7
000e60  efc34601  loads.w r7, 20(r13)
000e64  0b619110  add.f.rn r2, r2, r9
000e68  efc48601  loads.w r9, 24(r13)
000e6c  0b617110  add.f.rn r2, r2, r7
000e70  efc3c601  loads.w r7, 28(r13)
000e74  0b619110  add.f.rn r2, r2, r9
000e78  efc40602  loads.w r9, 32(r13)
000e7c  0b617110  add.f.rn r2, r2, r7
000e80  efc34602  loads.w r7, 36(r13)
000e84  0b619110  add.f.rn r2, r2, r9
000e88  efc48602  loads.w r9, 40(r13)
000e8c  0b617110  add.f.rn r2, r2, r7
000e90  efc3c602  loads.w r7, 44(r13)
000e94  0b619110  add.f.rn r2, r2, r9
000e98  efc40603  loads.w r9, 48(r13)
000e9c  0b617110  add.f.rn r2, r2, r7
000ea0  efc34603  loads.w r7, 52(r13)
000ea4  0b619110  add.f.rn r2, r2, r9
000ea8  efc48603  loads.w r9, 56(r13)
000eac  0b617110  add.f.rn r2, r2, r7
000eb0  efc3c603  loads.w r7, 60(r13)
000eb4  0b619110  add.f.rn r2, r2, r9
000eb8  efc40604  loads.w r9, 64(r13)
000ebc  0b617110  add.f.rn r2, r2, r7
000ec0  efc34604  loads.w r7, 68(r13)
000ec4  0b619110  add.f.rn r2, r2, r9
000ec8  efc48604  loads.w r9, 72(r13)
000ecc  0b617110  add.f.rn r2, r2, r7
000ed0  efc3c604  loads.w r7, 76(r13)
000ed4  0b619110  add.f.rn r2, r2, r9
000ed8  efc40605  loads.w r9, 80(r13)
000edc  0b617110  add.f.rn r2, r2, r7
000ee0  efc34605  loads.w r7, 84(r13)
000ee4  0b619110  add.f.rn r2, r2, r9
000ee8  efc48605  loads.w r9, 88(r13)
000eec  0b617110  add.f.rn r2, r2, r7
000ef0  efc3c605  loads.w r7, 92(r13)
000ef4  0b619110  add.f.rn r2, r2, r9
000ef8  efc40606  loads.w r9, 96(r13)
000efc  0b617110  add.f.rn r2, r2, r7
000f00  efc34606  loads.w r7, 100(r13)
000f04  0b619110  add.f.rn r2, r2, r9
000f08  efc48606  loads.w r9, 104(r13)
000f0c  0b617110  add.f.rn r2, r2, r7
000f10  efc3c606  loads.w r7, 108(r13)
000f14  0b619110  add.f.rn r2, r2, r9
000f18  efc40607  loads.w r9, 112(r13)
000f1c  0b617110  add.f.rn r2, r2, r7
000f20  efc34607  loads.w r7, 116(r13)
000f24  0b619110  add.f.rn r2, r2, r9
000f28  efc48607  loads.w r9, 120(r13)
000f2c  0b617110  add.f.rn r2, r2, r7
000f30  efc3c607  loads.w r7, 124(r13)
000f34  0b619110  add.f.rn r2, r2, r9
000f38  efc40608  loads.w r9, 128(r13)
000f3c  0b617110  add.f.rn r2, r2, r7
000f40  efc34608  loads.w r7, 132(r13)
000f44  0b619110  add.f.rn r2, r2, r9
000f48  efc48608  loads.w r9, 136(r13)
000f4c  0b617110  add.f.rn r2, r2, r7
000f50  efc3c608  loads.w r7, 140(r13)
000f54  0b619110  add.f.rn r2, r2, r9
000f58  efc40609  loads.w r9, 144(r13)
000f5c  0b617110  add.f.rn r2, r2, r7
000f60  efc34609  loads.w r7, 148(r13)
000f64  0b619110  add.f.rn r2, r2, r9
000f68  efc48609  loads.w r9, 152(r13)
000f6c  0b617110  add.f.rn r2, r2, r7
000f70  efc3c609  loads.w r7, 156(r13)
000f74  0b619110  add.f.rn r2, r2, r9
000f78  efc4060a  loads.w r9, 160(r13)
000f7c  0b617110  add.f.rn r2, r2, r7
000f80  efc3460a  loads.w r7, 164(r13)
000f84  0b619110  add.f.rn r2, r2, r9
000f88  efc4860a  loads.w r9, 168(r13)
000f8c  0b617110  add.f.rn r2, r2, r7
000f90  efc3c60a  loads.w r7, 172(r13)
000f94  0b619110  add.f.rn r2, r2, r9
000f98  efc4060b  loads.w r9, 176(r13)
000f9c  0b617110  add.f.rn r2, r2, r7
000fa0  efc3460b  loads.w r7, 180(r13)
000fa4  0b619110  add.f.rn r2, r2, r9
000fa8  efc4860b  loads.w r9, 184(r13)
000fac  0b617110  add.f.rn r2, r2, r7
000fb0  efc3c60b  loads.w r7, 188(r13)
000fb4  0b619110  add.f.rn r2, r2, r9
000fb8  efc4060c  loads.w r9, 192(r13)
000fbc  0b617110  add.f.rn r2, r2, r7
000fc0  efc3460c  loads.w r7, 196(r13)
000fc4  0b619110  add.f.rn r2, r2, r9
000fc8  efc4860c  loads.w r9, 200(r13)
000fcc  0b617110  add.f.rn r2, r2, r7
000fd0  efc3c60c  loads.w r7, 204(r13)
000fd4  0b619110  add.f.rn r2, r2, r9
000fd8  efc4060d  loads.w r9, 208(r13)
000fdc  0b617110  add.f.rn r2, r2, r7
000fe0  efc3460d  loads.w r7, 212(r13)
000fe4  0b619110  add.f.rn r2, r2, r9
000fe8  efc4860d  loads.w r9, 216(r13)
000fec  0b617110  add.f.rn r2, r2, r7
000ff0  efc3c60d  loads.w r7, 220(r13)
000ff4  0b619110  add.f.rn r2, r2, r9
000ff8  efc4060e  loads.w r9, 224(r13)
000ffc  0b617110  add.f.rn r2, r2, r7
001000  efc3460e  loads.w r7, 228(r13)
001004  0b619110  add.f.rn r2, r2, r9
001008  efc4860e  loads.w r9, 232(r13)
00100c  0b617110  add.f.rn r2, r2, r7
001010  efc3c60e  loads.w r7, 236(r13)
001014  0b619110  add.f.rn r2, r2, r9
001018  efc4060f  loads.w r9, 240(r13)
00101c  0b617110  add.f.rn r2, r2, r7
001020  efc3460f  loads.w r7, 244(r13)
001024  0b619110  add.f.rn r2, r2, r9
001028  efc4860f  loads.w r9, 248(r13)
00102c  0b617110  add.f.rn r2, r2, r7
001030  efc3c60f  loads.w r7, 252(r13)
001034  0b619110  add.f.rn r2, r2, r9
001038  0b617110  add.f.rn r2, r2, r7
00103c  73e02600  stores.w r2, 0(r13)
001040  00a00300  mfence { lm, sm, gm }
001044  80210504  csr_set csr3, r10
001048  00d00100  sync_group
00104c  63011ffd  loadli.w r2,  -376(r30)
001050  ab03803a  lui r7, 239616
001054  6f410100  loads.w r2, 0(r2)
001058  0b617120  mul.f.rn r2, r2, r7
00105c  8be92018  sub.f.rn r19, r1, r2
001060  8be62118  sub.f.rn r13, r3, r2
001064  8b602218  sub.f.rn r1, r4, r2
001068  8b642418  sub.f.rn r9, r8, r2
00106c  0be22518  sub.f.rn r4, r11, r2
001070  8b652618  sub.f.rn r11, r12, r2
001074  8bed2818  sub.f.rn r27, r17, r2
001078  0b662a18  sub.f.rn r12, r20, r2
00107c  8b682d18  sub.f.rn r17, r26, r2
001080  8b632e18  sub.f.rn r7, r28, r2
001084  8be12218  sub.f.rn r3, r5, r2
001088  0b632318  sub.f.rn r6, r6, r2
00108c  0be42a18  sub.f.rn r8, r21, r2
001090  8b6b2b18  sub.f.rn r23, r22, r2
001094  0b6a2c18  sub.f.rn r20, r24, r2
001098  0be92c18  sub.f.rn r18, r25, r2
00109c  1f018000  addli r2, zero, 64
0010a0  670d7ffc  storeli.w r7, -304(r30)
0010a4  67431fff  storeli.w r17, -204(r30)
0010a8  3f302700  blt.s r14, r2, 12
0010ac  1f010000  addli r2, zero, 0
0010b0  5b100000  j 128
0010b4  0be13921  mul.f.rn r2, r19, r19
0010b8  8be2d620  mul.f.rn r5, r13, r13
0010bc  0b615110  add.f.rn r2, r2, r5
0010c0  8be21020  mul.f.rn r5, r1, r1
0010c4  0be12210  add.f.rn r2, r5, r2
0010c8  8be23120  mul.f.rn r5, r3, r3
0010cc  0be12210  add.f.rn r2, r5, r2
0010d0  8b626320  mul.f.rn r5, r6, r6
0010d4  0be12210  add.f.rn r2, r5, r2
0010d8  8be29420  mul.f.rn r5, r9, r9
0010dc  0be12210  add.f.rn r2, r5, r2
0010e0  8b624220  mul.f.rn r5, r4, r4
0010e4  0be12210  add.f.rn r2, r5, r2
0010e8  8be2b520  mul.f.rn r5, r11, r11
0010ec  0be12210  add.f.rn r2, r5, r2
0010f0  8be2bd21  mul.f.rn r5, r27, r27
0010f4  0be12210  add.f.rn r2, r5, r2
0010f8  8b62c620  mul.f.rn r5, r12, r12
0010fc  0be12210  add.f.rn r2, r5, r2
001100  8b628420  mul.f.rn r5, r8, r8
001104  0be12210  add.f.rn r2, r5, r2
001108  8be27b21  mul.f.rn r5, r23, r23
00110c  0be12210  add.f.rn r2, r5, r2
001110  8b624a21  mul.f.rn r5, r20, r20
001114  0be12210  add.f.rn r2, r5, r2
001118  8b622921  mul.f.rn r5, r18, r18
00111c  0be12210  add.f.rn r2, r5, r2
001120  8be21821  mul.f.rn r5, r17, r17
001124  0be12210  add.f.rn r2, r5, r2
001128  8be27320  mul.f.rn r5, r7, r7
00112c  0be12210  add.f.rn r2, r5, r2
001130  e302effc  loadli.w r5,  -400(r30)
001134  ab03807f  lui r7, 522240
001138  ab084000  lui r17, 1024
00113c  73e02200  stores.w r2, 0(r5)
001140  00a00300  mfence { lm, sm, gm }
001144  80210504  csr_set csr3, r10
001148  00d00100  sync_group
00114c  63411ffe  loadli.w r2,  -244(r30)
001150  3b380100  bneq r2, zero, 524
001154  63470ffd  loadli.w r14,  -380(r30)
001158  6f410700  loads.w r2, 0(r14)
00115c  ef434700  loads.w r7, 4(r14)
001160  ef428700  loads.w r5, 8(r14)
001164  0b617110  add.f.rn r2, r2, r7
001168  ef43c700  loads.w r7, 12(r14)
00116c  0b615110  add.f.rn r2, r2, r5
001170  ef420701  loads.w r5, 16(r14)
001174  0b617110  add.f.rn r2, r2, r7
001178  ef434701  loads.w r7, 20(r14)
00117c  0b615110  add.f.rn r2, r2, r5
001180  ef428701  loads.w r5, 24(r14)
001184  0b617110  add.f.rn r2, r2, r7
001188  ef43c701  loads.w r7, 28(r14)
00118c  0b615110  add.f.rn r2, r2, r5
001190  ef420702  loads.w r5, 32(r14)
001194  0b617110  add.f.rn r2, r2, r7
001198  ef434702  loads.w r7, 36(r14)
00119c  0b615110  add.f.rn r2, r2, r5
0011a0  ef428702  loads.w r5, 40(r14)
0011a4  0b617110  add.f.rn r2, r2, r7
0011a8  ef43c702  loads.w r7, 44(r14)
0011ac  0b615110  add.f.rn r2, r2, r5
0011b0  ef420703  loads.w r5, 48(r14)
0011b4  0b617110  add.f.rn r2, r2, r7
0011b8  ef434703  loads.w r7, 52(r14)
0011bc  0b615110  add.f.rn r2, r2, r5
0011c0  ef428703  loads.w r5, 56(r14)
0011c4  0b617110  add.f.rn r2, r2, r7
0011c8  ef43c703  loads.w r7, 60(r14)
0011cc  0b615110  add.f.rn r2, r2, r5
0011d0  ef420704  loads.w r5, 64(r14)
0011d4  0b617110  add.f.rn r2, r2, r7
0011d8  ef434704  loads.w r7, 68(r14)
0011dc  0b615110  add.f.rn r2, r2, r5
0011e0  ef428704  loads.w r5, 72(r14)
0011e4  0b617110  add.f.rn r2, r2, r7
0011e8  ef43c704  loads.w r7, 76(r14)
0011ec  0b615110  add.f.rn r2, r2, r5
0011f0  ef420705  loads.w r5, 80(r14)
0011f4  0b617110  add.f.rn r2, r2, r7
0011f8  ef434705  loads.w r7, 84(r14)
0011fc  0b615110  add.f.rn r2, r2, r5
001200  ef428705  loads.w r5, 88(r14)
001204  0b617110  add.f.rn r2, r2, r7
001208  ef43c705  loads.w r7, 92(r14)
00120c  0b615110  add.f.rn r2, r2, r5
001210  ef420706  loads.w r5, 96(r14)
001214  0b617110  add.f.rn r2, r2, r7
001218  ef434706  loads.w r7, 100(r14)
00121c  0b615110  add.f.rn r2, r2, r5
001220  ef428706  loads.w r5, 104(r14)
001224  0b617110  add.f.rn r2, r2, r7
001228  ef43c706  loads.w r7, 108(r14)
00122c  0b615110  add.f.rn r2, r2, r5
001230  ef420707  loads.w r5, 112(r14)
001234  0b617110  add.f.rn r2, r2, r7
001238  ef434707  loads.w r7, 116(r14)
00123c  0b615110  add.f.rn r2, r2, r5
001240  ef428707  loads.w r5, 120(r14)
001244  0b617110  add.f.rn r2, r2, r7
001248  ef43c707  loads.w r7, 124(r14)
00124c  0b615110  add.f.rn r2, r2, r5
001250  ef420708  loads.w r5, 128(r14)
001254  0b617110  add.f.rn r2, r2, r7
001258  ef434708  loads.w r7, 132(r14)
00125c  0b615110  add.f.rn r2, r2, r5
001260  ef428708  loads.w r5, 136(r14)
001264  0b617110  add.f.rn r2, r2, r7
001268  ef43c708  loads.w r7, 140(r14)
00126c  0b615110  add.f.rn r2, r2, r5
001270  ef420709  loads.w r5, 144(r14)
001274  0b617110  add.f.rn r2, r2, r7
001278  ef434709  loads.w r7, 148(r14)
00127c  0b615110  add.f.rn r2, r2, r5
001280  ef428709  loads.w r5, 152(r14)
001284  0b617110  add.f.rn r2, r2, r7
001288  ef43c709  loads.w r7, 156(r14)
00128c  0b615110  add.f.rn r2, r2, r5
001290  ef42070a  loads.w r5, 160(r14)
001294  0b617110  add.f.rn r2, r2, r7
001298  ef43470a  loads.w r7, 164(r14)
00129c  0b615110  add.f.rn r2, r2, r5
0012a0  ef42870a  loads.w r5, 168(r14)
0012a4  0b617110  add.f.rn r2, r2, r7
0012a8  ef43c70a  loads.w r7, 172(r14)
0012ac  0b615110  add.f.rn r2, r2, r5
0012b0  ef42070b  loads.w r5, 176(r14)
0012b4  0b617110  add.f.rn r2, r2, r7
0012b8  ef43470b  loads.w r7, 180(r14)
0012bc  0b615110  add.f.rn r2, r2, r5
0012c0  ef42870b  loads.w r5, 184(r14)
0012c4  0b617110  add.f.rn r2, r2, r7
0012c8  ef43c70b  loads.w r7, 188(r14)
0012cc  0b615110  add.f.rn r2, r2, r5
0012d0  ef42070c  loads.w r5, 192(r14)
0012d4  0b617110  add.f.rn r2, r2, r7
0012d8  ef43470c  loads.w r7, 196(r14)
0012dc  0b615110  add.f.rn r2, r2, r5
0012e0  ef42870c  loads.w r5, 200(r14)
0012e4  0b617110  add.f.rn r2, r2, r7
0012e8  ef43c70c  loads.w r7, 204(r14)
0012ec  0b615110  add.f.rn r2, r2, r5
0012f0  ef42070d  loads.w r5, 208(r14)
0012f4  0b617110  add.f.rn r2, r2, r7
0012f8  ef43470d  loads.w r7, 212(r14)
0012fc  0b615110  add.f.rn r2, r2, r5
001300  ef42870d  loads.w r5, 216(r14)
001304  0b617110  add.f.rn r2, r2, r7
001308  ef43c70d  loads.w r7, 220(r14)
00130c  0b615110  add.f.rn r2, r2, r5
001310  ef42070e  loads.w r5, 224(r14)
001314  0b617110  add.f.rn r2, r2, r7
001318  ef43470e  loads.w r7, 228(r14)
00131c  0b615110  add.f.rn r2, r2, r5
001320  ef42870e  loads.w r5, 232(r14)
001324  0b617110  add.f.rn r2, r2, r7
001328  ef43c70e  loads.w r7, 236(r14)
00132c  0b615110  add.f.rn r2, r2, r5
001330  ef42070f  loads.w r5, 240(r14)
001334  0b617110  add.f.rn r2, r2, r7
001338  ef43470f  loads.w r7, 244(r14)
00133c  0b615110  add.f.rn r2, r2, r5
001340  ef42870f  loads.w r5, 248(r14)
001344  0b617110  add.f.rn r2, r2, r7
001348  ef43c70f  loads.w r7, 252(r14)
00134c  0b615110  add.f.rn r2, r2, r5
001350  0b617110  add.f.rn r2, r2, r7
001354  ab03807f  lui r7, 522240
001358  73602700  stores.w r2, 0(r14)
00135c  00a00300  mfence { lm, sm, gm }
001360  80210504  csr_set csr3, r10
001364  00d00100  sync_group
001368  63410ffd  loadli.w r2,  -380(r30)
00136c  ab02803a  lui r5, 239616
001370  6f410100  loads.w r2, 0(r2)
001374  0b615120  mul.f.rn r2, r2, r5
001378  e3423ffc  loadli.w r5,  -484(r30)
00137c  0b615110  add.f.rn r2, r2, r5
001380  ab02803f  lui r5, 260096
001384  0f010108  sqrt.f.rn r2, r2
001388  8f8c2218  div.f.rn r25, r5, r2
00138c  8be99921  mul.f.rn r19, r19, r25
001390  1787f900  and r14, r19, r15
001394  1381e304  setlt.u r2, r7, r14
001398  3b300100  bneq r2, zero, 12
00139c  67013fff  storeli.w r19, -240(r30)
0013a0  db010000  j 12
0013a4  17911901  or r2, r19, r17
0013a8  67012ffe  storeli.w r2, -240(r30)
0013ac  8be69621  mul.f.rn r13, r13, r25
0013b0  1f0e0a00  addli r28, r20, 0
0013b4  2b084000  lui r16, 1024
0013b8  1785f600  and r10, r13, r15
0013bc  1381a304  setlt.u r2, r7, r10
0013c0  3b300100  bneq r2, zero, 12
0013c4  e701dffe  storeli.w r13, -232(r30)
0013c8  db010000  j 12
0013cc  17911601  or r2, r13, r17
0013d0  e7012ffe  storeli.w r2, -232(r30)
0013d4  0bea9021  mul.f.rn r20, r1, r25
0013d8  9702fa00  and r5, r20, r15
0013dc  93805304  setlt.u r1, r7, r5
0013e0  3bb00000  bneq r1, zero, 12
0013e4  67024fff  storeli.w r20, -224(r30)
0013e8  db010000  j 12
0013ec  97100a01  or r1, r20, r16
0013f0  67021ffe  storeli.w r1, -224(r30)
0013f4  0beb9121  mul.f.rn r22, r3, r25
0013f8  9700fb00  and r1, r22, r15
0013fc  13811304  setlt.u r2, r7, r1
001400  3b300100  bneq r2, zero, 12
001404  9f010b00  addli r3, r22, 0
001408  5b010000  j 8
00140c  97110b01  or r3, r22, r16
001410  0b6c9321  mul.f.rn r24, r6, r25
001414  170dfc00  and r26, r24, r15
001418  1381a305  setlt.u r2, r7, r26
00141c  3b300100  bneq r2, zero, 12
001420  e70b8ffd  storeli.w r24, -328(r30)
001424  db010000  j 12
001428  17110c01  or r2, r24, r16
00142c  e70b2ffc  storeli.w r2, -328(r30)
001430  8be49421  mul.f.rn r9, r9, r25
001434  e7023ffe  storeli.w r3, -216(r30)
001438  978af400  and r21, r9, r15
00143c  13815305  setlt.u r2, r7, r21
001440  3b300100  bneq r2, zero, 12
001444  e74b9ffc  storeli.w r9, -324(r30)
001448  db010000  j 12
00144c  17910401  or r2, r9, r16
001450  e74b2ffc  storeli.w r2, -324(r30)
001454  0b629221  mul.f.rn r4, r4, r25
001458  1701f200  and r2, r4, r15
00145c  93812304  setlt.u r3, r7, r2
001460  674b2ffc  storeli.w r2, -332(r30)
001464  3bb00100  bneq r3, zero, 12
001468  670c4ffc  storeli.w r4, -320(r30)
00146c  db010000  j 12
001470  17110201  or r2, r4, r16
001474  670c2ffc  storeli.w r2, -320(r30)
001478  8be59521  mul.f.rn r11, r11, r25
00147c  1781f500  and r2, r11, r15
001480  93812304  setlt.u r3, r7, r2
001484  670b2ffc  storeli.w r2, -336(r30)
001488  3bb00100  bneq r3, zero, 12
00148c  674cbffc  storeli.w r11, -316(r30)
001490  db010000  j 12
001494  17910501  or r2, r11, r16
001498  674c2ffc  storeli.w r2, -316(r30)
00149c  8bed9d21  mul.f.rn r27, r27, r25
0014a0  1781fd00  and r2, r27, r15
0014a4  93812304  setlt.u r3, r7, r2
0014a8  e74a2ffc  storeli.w r2, -340(r30)
0014ac  3bb00100  bneq r3, zero, 12
0014b0  e70cbffd  storeli.w r27, -312(r30)
0014b4  db010000  j 12
0014b8  17910d01  or r2, r27, r16
0014bc  e70c2ffc  storeli.w r2, -312(r30)
0014c0  0b669621  mul.f.rn r12, r12, r25
0014c4  1701f600  and r2, r12, r15
0014c8  93812304  setlt.u r3, r7, r2
0014cc  e70a2ffc  storeli.w r2, -344(r30)
0014d0  3bb00100  bneq r3, zero, 12
0014d4  e70dcffc  storeli.w r12, -296(r30)
0014d8  db010000  j 12
0014dc  17110601  or r2, r12, r16
0014e0  e70d2ffc  storeli.w r2, -296(r30)
0014e4  8b619421  mul.f.rn r3, r8, r25
0014e8  1781f100  and r2, r3, r15
0014ec  13832304  setlt.u r6, r7, r2
0014f0  674a2ffc  storeli.w r2, -348(r30)
0014f4  3b300300  bneq r6, zero, 12
0014f8  1f810100  addli r2, r3, 0
0014fc  5b010000  j 8
001500  17910101  or r2, r3, r16
001504  0be39b21  mul.f.rn r6, r23, r25
001508  ab0b807f  lui r23, 522240
00150c  1704f300  and r8, r6, r15
001510  93838304  setlt.u r7, r7, r8
001514  670a8ffc  storeli.w r8, -352(r30)
001518  3bb00300  bneq r7, zero, 12
00151c  670e6ffc  storeli.w r6, -288(r30)
001520  db010000  j 12
001524  97130301  or r7, r6, r16
001528  670e7ffc  storeli.w r7, -288(r30)
00152c  8b689e21  mul.f.rn r17, r28, r25
001530  9783f800  and r7, r17, r15
001534  e7497ffc  storeli.w r7, -356(r30)
001538  93837b04  setlt.u r7, r23, r7
00153c  3bb00300  bneq r7, zero, 12
001540  e70e1ffd  storeli.w r17, -280(r30)
001544  db010000  j 12
001548  97930801  or r7, r17, r16
00154c  e70e7ffc  storeli.w r7, -280(r30)
001550  0b649921  mul.f.rn r8, r18, r25
001554  9703f400  and r7, r8, r15
001558  1f890300  addli r18, r7, 0
00155c  93837b04  setlt.u r7, r23, r7
001560  3bb00300  bneq r7, zero, 12
001564  670f8ffc  storeli.w r8, -272(r30)
001568  db010000  j 12
00156c  97130401  or r7, r8, r16
001570  670f7ffc  storeli.w r7, -272(r30)
001574  e3436ffe  loadli.w r7,  -204(r30)
001578  0bee9321  mul.f.rn r28, r7, r25
00157c  9703fe00  and r7, r28, r15
001580  e7097ffc  storeli.w r7, -360(r30)
001584  93837b04  setlt.u r7, r23, r7
001588  3bb00300  bneq r7, zero, 12
00158c  6743cfff  storeli.w r28, -204(r30)
001590  db010000  j 12
001594  97130e01  or r7, r28, r16
001598  67437ffe  storeli.w r7, -204(r30)
00159c  e303affd  loadli.w r7,  -304(r30)
0015a0  8bec9321  mul.f.rn r25, r7, r25
0015a4  9783fc00  and r7, r25, r15
0015a8  670d7ffc  storeli.w r7, -304(r30)
0015ac  93837b04  setlt.u r7, r23, r7
0015b0  3bb00300  bneq r7, zero, 12
0015b4  9f8b0c00  addli r23, r25, 0
0015b8  5b010000  j 8
0015bc  979b0c01  or r23, r25, r16
0015c0  e3437ffe  loadli.w r7,  -196(r30)
0015c4  63087ffe  loadli.w r16,  -200(r30)
0015c8  9383e304  setlt.u r7, r7, r14
0015cc  bb800300  bneq r7, zero, 32
0015d0  9bc30901  srli r7, r19, 16
0015d4  2b07ffff  lui r14, 1048560
0015d8  9b831300  andi r7, r7, 1
0015dc  8b937910  add.s r7, r19, r7
0015e0  8b930311  add.s r7, r7, r16
0015e4  9783e300  and r7, r7, r14
0015e8  67017ffe  storeli.w r7, -240(r30)
0015ec  e3437ffe  loadli.w r7,  -196(r30)
0015f0  9383a304  setlt.u r7, r7, r10
0015f4  bb800300  bneq r7, zero, 32
0015f8  9bc30601  srli r7, r13, 16
0015fc  2b05ffff  lui r10, 1048560
001600  9b831300  andi r7, r7, 1
001604  8b937610  add.s r7, r13, r7
001608  8b930311  add.s r7, r7, r16
00160c  9783a300  and r7, r7, r10
001610  e7017ffe  storeli.w r7, -232(r30)
001614  e3437ffe  loadli.w r7,  -196(r30)
001618  63478ffd  loadli.w r14,  -316(r30)
00161c  e3098ffd  loadli.w r19,  -320(r30)
001620  93825304  setlt.u r5, r7, r5
001624  bb800200  bneq r5, zero, 32
001628  9b420a01  srli r5, r20, 16
00162c  2b05ffff  lui r10, 1048560
001630  9b821200  andi r5, r5, 1
001634  8b125a10  add.s r5, r20, r5
001638  8b920211  add.s r5, r5, r16
00163c  9782a200  and r5, r5, r10
001640  67025ffe  storeli.w r5, -224(r30)
001644  93801304  setlt.u r1, r7, r1
001648  e3069ffd  loadli.w r13,  -312(r30)
00164c  ab02ffff  lui r5, 1048560
001650  3bf00000  bneq r1, zero, 28
001654  9b400b01  srli r1, r22, 16
001658  9b801000  andi r1, r1, 1
00165c  8b101b10  add.s r1, r22, r1
001660  8b900011  add.s r1, r1, r16
001664  97805000  and r1, r1, r5
001668  e7021ffe  storeli.w r1, -216(r30)
00166c  9380a305  setlt.u r1, r7, r26
001670  630b7ffd  loadli.w r22,  -328(r30)
001674  2b0a4000  lui r20, 1024
001678  1f050100  addli r10, r2, 0
00167c  3be00000  bneq r1, zero, 24
001680  9b400c01  srli r1, r24, 16
001684  9b801000  andi r1, r1, 1
001688  8b101c10  add.s r1, r24, r1
00168c  8b900011  add.s r1, r1, r16
001690  178b5000  and r22, r1, r5
001694  93805305  setlt.u r1, r7, r21
001698  e34a7ffd  loadli.w r21,  -324(r30)
00169c  63012ffe  loadli.w r2,  -240(r30)
0016a0  3be00000  bneq r1, zero, 24
0016a4  9bc00401  srli r1, r9, 16
0016a8  9b801000  andi r1, r1, 1
0016ac  8b901410  add.s r1, r9, r1
0016b0  8b900011  add.s r1, r1, r16
0016b4  978a5000  and r21, r1, r5
0016b8  e3406ffd  loadli.w r1,  -332(r30)
0016bc  93801304  setlt.u r1, r7, r1
0016c0  3be00000  bneq r1, zero, 24
0016c4  9b400201  srli r1, r4, 16
0016c8  9b801000  andi r1, r1, 1
0016cc  8b101210  add.s r1, r4, r1
0016d0  8b900011  add.s r1, r1, r16
0016d4  97895000  and r19, r1, r5
0016d8  e3006ffd  loadli.w r1,  -336(r30)
0016dc  e304cffd  loadli.w r9,  -288(r30)
0016e0  93801304  setlt.u r1, r7, r1
0016e4  3be00000  bneq r1, zero, 24
0016e8  9bc00501  srli r1, r11, 16
0016ec  9b801000  andi r1, r1, 1
0016f0  8b901510  add.s r1, r11, r1
0016f4  8b900011  add.s r1, r1, r16
0016f8  17875000  and r14, r1, r5
0016fc  e3405ffd  loadli.w r1,  -340(r30)
001700  1f8c0b00  addli r24, r23, 0
001704  93801304  setlt.u r1, r7, r1
001708  3be00000  bneq r1, zero, 24
00170c  9bc00d01  srli r1, r27, 16
001710  9b801000  andi r1, r1, 1
001714  8b901d10  add.s r1, r27, r1
001718  8b900011  add.s r1, r1, r16
00171c  97865000  and r13, r1, r5
001720  e3005ffd  loadli.w r1,  -344(r30)
001724  e305bffd  loadli.w r11,  -296(r30)
001728  93801304  setlt.u r1, r7, r1
00172c  3be00000  bneq r1, zero, 24
001730  9b400601  srli r1, r12, 16
001734  9b801000  andi r1, r1, 1
001738  8b101610  add.s r1, r12, r1
00173c  8b900011  add.s r1, r1, r16
001740  97855000  and r11, r1, r5
001744  e3404ffd  loadli.w r1,  -348(r30)
001748  93801304  setlt.u r1, r7, r1
00174c  3be00000  bneq r1, zero, 24
001750  9bc00101  srli r1, r3, 16
001754  9b801000  andi r1, r1, 1
001758  8b901110  add.s r1, r3, r1
00175c  8b900011  add.s r1, r1, r16
001760  17855000  and r10, r1, r5
001764  e3004ffd  loadli.w r1,  -352(r30)
001768  93801304  setlt.u r1, r7, r1
00176c  3be00000  bneq r1, zero, 24
001770  9b400301  srli r1, r6, 16
001774  9b801000  andi r1, r1, 1
001778  8b101310  add.s r1, r6, r1
00177c  8b900011  add.s r1, r1, r16
001780  97845000  and r9, r1, r5
001784  e3403ffd  loadli.w r1,  -356(r30)
001788  6303dffd  loadli.w r6,  -280(r30)
00178c  e3013ffe  loadli.w r3,  -232(r30)
001790  93801304  setlt.u r1, r7, r1
001794  3be00000  bneq r1, zero, 24
001798  9bc00801  srli r1, r17, 16
00179c  9b801000  andi r1, r1, 1
0017a0  8b901810  add.s r1, r17, r1
0017a4  8b900011  add.s r1, r1, r16
0017a8  17835000  and r6, r1, r5
0017ac  93802305  setlt.u r1, r7, r18
0017b0  e308effd  loadli.w r17,  -272(r30)
0017b4  3be00000  bneq r1, zero, 24
0017b8  9b400401  srli r1, r8, 16
0017bc  9b801000  andi r1, r1, 1
0017c0  8b101410  add.s r1, r8, r1
0017c4  8b900011  add.s r1, r1, r16
0017c8  97885000  and r17, r1, r5
0017cc  e3003ffd  loadli.w r1,  -360(r30)
0017d0  93801304  setlt.u r1, r7, r1
0017d4  3bf00000  bneq r1, zero, 28
0017d8  9b400e01  srli r1, r28, 16
0017dc  9b801000  andi r1, r1, 1
0017e0  8b101e10  add.s r1, r28, r1
0017e4  8b900011  add.s r1, r1, r16
0017e8  97805000  and r1, r1, r5
0017ec  67431ffe  storeli.w r1, -204(r30)
0017f0  e300affd  loadli.w r1,  -304(r30)
0017f4  93801304  setlt.u r1, r7, r1
0017f8  3be00000  bneq r1, zero, 24
0017fc  9bc00c01  srli r1, r25, 16
001800  9b801000  andi r1, r1, 1
001804  8b901c10  add.s r1, r25, r1
001808  8b900011  add.s r1, r1, r16
00180c  178c5000  and r24, r1, r5
001810  9700f100  and r1, r2, r15
001814  2b02807f  lui r4, 522240
001818  93001204  setlt.u r1, r4, r1
00181c  3be00000  bneq r1, zero, 24
001820  9b400101  srli r1, r2, 16
001824  9b801000  andi r1, r1, 1
001828  8b101110  add.s r1, r2, r1
00182c  8b900011  add.s r1, r1, r16
001830  5b010000  j 8
001834  97104101  or r1, r2, r20
001838  1781f100  and r2, r3, r15
00183c  e34c6ffe  loadli.w r25,  -204(r30)
001840  e3024ffe  loadli.w r5,  -224(r30)
001844  9bc00001  srli r1, r1, 16
001848  13012204  setlt.u r2, r4, r2
00184c  73101ff8  store.h r1, -128(r30)
001850  3b600100  bneq r2, zero, 24
001854  9bc00101  srli r1, r3, 16
001858  9b801000  andi r1, r1, 1
00185c  8b901110  add.s r1, r3, r1
001860  8b900011  add.s r1, r1, r16
001864  5b010000  j 8
001868  97904101  or r1, r3, r20
00186c  1781f200  and r2, r5, r15
001870  9f010fff  addli r3, r30, -128
001874  9bc00001  srli r1, r1, 16
001878  13012204  setlt.u r2, r4, r2
00187c  9b912100  ori r3, r3, 2
001880  67433ffe  storeli.w r3, -204(r30)
001884  73901100  store.h r1, 0(r3)
001888  3b600100  bneq r2, zero, 24
00188c  9bc00201  srli r1, r5, 16
001890  9b801000  andi r1, r1, 1
001894  8b901210  add.s r1, r5, r1
001898  8b900011  add.s r1, r1, r16
00189c  5b010000  j 8
0018a0  97904201  or r1, r5, r20
0018a4  e3015ffe  loadli.w r3,  -216(r30)
0018a8  9bc00001  srli r1, r1, 16
0018ac  73121ff8  store.h r1, -124(r30)
0018b0  1781f100  and r2, r3, r15
0018b4  13012204  setlt.u r2, r4, r2
0018b8  3b600100  bneq r2, zero, 24
0018bc  9bc00101  srli r1, r3, 16
0018c0  9b801000  andi r1, r1, 1
0018c4  8b901110  add.s r1, r3, r1
0018c8  8b900011  add.s r1, r1, r16
0018cc  5b010000  j 8
0018d0  97904101  or r1, r3, r20
0018d4  1701fb00  and r2, r22, r15
0018d8  9bc00001  srli r1, r1, 16
0018dc  13012204  setlt.u r2, r4, r2
0018e0  73131ff8  store.h r1, -122(r30)
0018e4  3b600100  bneq r2, zero, 24
0018e8  9b400b01  srli r1, r22, 16
0018ec  9b801000  andi r1, r1, 1
0018f0  8b101b10  add.s r1, r22, r1
0018f4  8b900011  add.s r1, r1, r16
0018f8  5b010000  j 8
0018fc  97104b01  or r1, r22, r20
001900  1781fa00  and r2, r21, r15
001904  9bc00001  srli r1, r1, 16
001908  13012204  setlt.u r2, r4, r2
00190c  73141ff8  store.h r1, -120(r30)
001910  3b600100  bneq r2, zero, 24
001914  9bc00a01  srli r1, r21, 16
001918  9b801000  andi r1, r1, 1
00191c  8b901a10  add.s r1, r21, r1
001920  8b900011  add.s r1, r1, r16
001924  5b010000  j 8
001928  97904a01  or r1, r21, r20
00192c  1781f900  and r2, r19, r15
001930  9bc00001  srli r1, r1, 16
001934  13012204  setlt.u r2, r4, r2
001938  73151ff8  store.h r1, -118(r30)
00193c  3b600100  bneq r2, zero, 24
001940  9bc00901  srli r1, r19, 16
001944  9b801000  andi r1, r1, 1
001948  8b901910  add.s r1, r19, r1
00194c  8b900011  add.s r1, r1, r16
001950  5b010000  j 8
001954  97904901  or r1, r19, r20
001958  1701f700  and r2, r14, r15
00195c  9bc00001  srli r1, r1, 16
001960  13012204  setlt.u r2, r4, r2
001964  73161ff8  store.h r1, -116(r30)
001968  3b600100  bneq r2, zero, 24
00196c  9b400701  srli r1, r14, 16
001970  9b801000  andi r1, r1, 1
001974  8b101710  add.s r1, r14, r1
001978  8b900011  add.s r1, r1, r16
00197c  5b010000  j 8
001980  97104701  or r1, r14, r20
001984  1781f600  and r2, r13, r15
001988  9bc00001  srli r1, r1, 16
00198c  13012204  setlt.u r2, r4, r2
001990  73171ff8  store.h r1, -114(r30)
001994  3b600100  bneq r2, zero, 24
001998  9bc00601  srli r1, r13, 16
00199c  9b801000  andi r1, r1, 1
0019a0  8b901610  add.s r1, r13, r1
0019a4  8b900011  add.s r1, r1, r16
0019a8  5b010000  j 8
0019ac  97904601  or r1, r13, r20
0019b0  1781f500  and r2, r11, r15
0019b4  9bc00001  srli r1, r1, 16
0019b8  13012204  setlt.u r2, r4, r2
0019bc  73181ff8  store.h r1, -112(r30)
0019c0  3b600100  bneq r2, zero, 24
0019c4  9bc00501  srli r1, r11, 16
0019c8  9b801000  andi r1, r1, 1
0019cc  8b901510  add.s r1, r11, r1
0019d0  8b900011  add.s r1, r1, r16
0019d4  5b010000  j 8
0019d8  97904501  or r1, r11, r20
0019dc  1701f500  and r2, r10, r15
0019e0  9bc00001  srli r1, r1, 16
0019e4  13012204  setlt.u r2, r4, r2
0019e8  73191ff8  store.h r1, -110(r30)
0019ec  3b600100  bneq r2, zero, 24
0019f0  9b400501  srli r1, r10, 16
0019f4  9b801000  andi r1, r1, 1
0019f8  8b101510  add.s r1, r10, r1
0019fc  8b900011  add.s r1, r1, r16
001a00  5b010000  j 8
001a04  97104501  or r1, r10, r20
001a08  1781f400  and r2, r9, r15
001a0c  9bc00001  srli r1, r1, 16
001a10  13012204  setlt.u r2, r4, r2
001a14  731a1ff8  store.h r1, -108(r30)
001a18  3b600100  bneq r2, zero, 24
001a1c  9bc00401  srli r1, r9, 16
001a20  9b801000  andi r1, r1, 1
001a24  8b901410  add.s r1, r9, r1
001a28  8b900011  add.s r1, r1, r16
001a2c  5b010000  j 8
001a30  97904401  or r1, r9, r20
001a34  1701f300  and r2, r6, r15
001a38  9bc00001  srli r1, r1, 16
001a3c  ab09807f  lui r19, 522240
001a40  13012204  setlt.u r2, r4, r2
001a44  731b1ff8  store.h r1, -106(r30)
001a48  3b600100  bneq r2, zero, 24
001a4c  9b400301  srli r1, r6, 16
001a50  9b801000  andi r1, r1, 1
001a54  8b101310  add.s r1, r6, r1
001a58  0b930011  add.s r6, r1, r16
001a5c  5b010000  j 8
001a60  17134301  or r6, r6, r20
001a64  6307fffd  loadli.w r14,  -264(r30)
001a68  e3429ffc  loadli.w r5,  -436(r30)
001a6c  e340cffc  loadli.w r1,  -412(r30)
001a70  63058ffc  loadli.w r10,  -448(r30)
001a74  e3465ffc  loadli.w r13,  -468(r30)
001a78  1b430301  srli r6, r6, 16
001a7c  731c6ff8  store.h r6, -104(r30)
001a80  8b95e210  add.s r11, r5, r14
001a84  e3029ffc  loadli.w r5,  -440(r30)
001a88  8b94e010  add.s r9, r1, r14
001a8c  e300cffc  loadli.w r1,  -416(r30)
001a90  8b1ae510  add.s r21, r10, r14
001a94  8b96e610  add.s r13, r13, r14
001a98  e702dffe  storeli.w r13, -216(r30)
001a9c  0b94e210  add.s r8, r5, r14
001aa0  e3428ffc  loadli.w r5,  -444(r30)
001aa4  0b92e010  add.s r4, r1, r14
001aa8  e340bffc  loadli.w r1,  -420(r30)
001aac  8b93e210  add.s r7, r5, r14
001ab0  9782f800  and r5, r17, r15
001ab4  8b91e010  add.s r3, r1, r14
001ab8  e300bffc  loadli.w r1,  -424(r30)
001abc  13855904  setlt.u r10, r19, r5
001ac0  e3427ffc  loadli.w r5,  -452(r30)
001ac4  0b96e010  add.s r12, r1, r14
001ac8  e340affc  loadli.w r1,  -428(r30)
001acc  0b9be210  add.s r22, r5, r14
001ad0  e3027ffc  loadli.w r5,  -456(r30)
001ad4  0b91e010  add.s r2, r1, r14
001ad8  e300affc  loadli.w r1,  -432(r30)
001adc  0b98e210  add.s r16, r5, r14
001ae0  e3426ffc  loadli.w r5,  -460(r30)
001ae4  8b90e010  add.s r1, r1, r14
001ae8  8b9be210  add.s r23, r5, r14
001aec  e3026ffc  loadli.w r5,  -464(r30)
001af0  8b92e210  add.s r5, r5, r14
001af4  3b700500  bneq r10, zero, 28
001af8  1bc30801  srli r6, r17, 16
001afc  63057ffe  loadli.w r10,  -200(r30)
001b00  1b031300  andi r6, r6, 1
001b04  0b936810  add.s r6, r17, r6
001b08  0b13a310  add.s r6, r6, r10
001b0c  5b010000  j 8
001b10  17934801  or r6, r17, r20
001b14  b3160228  sext_int2long r[14:15], r4
001b18  b3940428  sext_int2long r[10:11], r9
001b1c  1f1e0000  addli r28, zero, 1
001b20  b3910128  sext_int2long r[4:5], r3
001b24  97b4c403  sll.d r[10:11], r[10:11], r28
001b28  97b1c103  sll.d r[4:5], r[4:5], r28
001b2c  73309ff2  store.d r[10:11], -224(r30)
001b30  97b4c603  sll.d r[10:11], r[14:15], r28
001b34  73383ff0  store.d r[4:5], -240(r30)
001b38  b3110628  sext_int2long r[4:5], r12
001b3c  733c9ff0  store.d r[10:11], -232(r30)
001b40  b3140128  sext_int2long r[10:11], r2
001b44  17b1c103  sll.d r[3:4], r[4:5], r28
001b48  73382fec  store.d r[3:4], -304(r30)
001b4c  17b1c403  sll.d r[3:4], r[10:11], r28
001b50  b3140b28  sext_int2long r[10:11], r22
001b54  73342fec  store.d r[3:4], -312(r30)
001b58  b3910528  sext_int2long r[4:5], r11
001b5c  b3900028  sext_int2long r[2:3], r1
001b60  97b5c003  sll.d r[12:13], r[2:3], r28
001b64  97b6c103  sll.d r[14:15], r[4:5], r28
001b68  b3100428  sext_int2long r[2:3], r8
001b6c  b3910328  sext_int2long r[4:5], r7
001b70  97b3c003  sll.d r[8:9], r[2:3], r28
001b74  97b0c103  sll.d r[2:3], r[4:5], r28
001b78  b3910a28  sext_int2long r[4:5], r21
001b7c  17bdc103  sll.d r[27:28], r[4:5], r28
001b80  97b1c403  sll.d r[4:5], r[10:11], r28
001b84  9784fc00  and r9, r25, r15
001b88  733c3fec  store.d r[4:5], -296(r30)
001b8c  b3110828  sext_int2long r[4:5], r16
001b90  33980228  sext_int2long r[17:18], r5
001b94  13899904  setlt.u r18, r19, r9
001b98  e3025ffe  loadli.w r5,  -216(r30)
001b9c  b3940b28  sext_int2long r[10:11], r23
001ba0  9b4b0301  srli r23, r6, 16
001ba4  97b1c103  sll.d r[4:5], r[4:5], r28
001ba8  97b4c403  sll.d r[10:11], r[10:11], r28
001bac  1738c803  sll.d r[17:18], r[17:18], r28
001bb0  731d7ff9  store.h r23, -102(r30)
001bb4  b39a0228  sext_int2long r[22:23], r5
001bb8  97b2ca03  sll.d r[6:7], r[22:23], r28
001bbc  3b700900  bneq r18, zero, 28
001bc0  1bc90c01  srli r18, r25, 16
001bc4  e30a7ffe  loadli.w r21,  -200(r30)
001bc8  1b091900  andi r18, r18, 1
001bcc  0b992c11  add.s r18, r25, r18
001bd0  8b1b5911  add.s r23, r18, r21
001bd4  5b010000  j 8
001bd8  979b4c01  or r23, r25, r20
001bdc  eb5a0f01  load.d r[22:23], 16(r30)
001be0  1f090c00  addli r18, r24, 0
001be4  6b5c0ff0  load.d r[25:26], -256(r30)
001be8  0bac8a11  add.ul r[25:26], r[22:23], r[25:26]
001bec  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001bf0  8ba37a10  add.ul r[8:9], r[22:23], r[8:9]
001bf4  8ba5ba10  add.ul r[12:13], r[22:23], r[12:13]
001bf8  8ba6da10  add.ul r[14:15], r[22:23], r[14:15]
001bfc  0badaa11  add.ul r[27:28], r[22:23], r[27:28]
001c00  0ba80a11  add.ul r[17:18], r[22:23], r[17:18]
001c04  73348fef  store.d r[25:26], -280(r30)
001c08  6b5c0ff2  load.d r[25:26], -224(r30)
001c0c  0bac8a11  add.ul r[25:26], r[22:23], r[25:26]
001c10  73308fef  store.d r[25:26], -288(r30)
001c14  6b5c8ff1  load.d r[25:26], -232(r30)
001c18  733c7ff0  store.d r[8:9], -232(r30)
001c1c  eb538fed  load.d r[8:9], -296(r30)
001c20  0bac8a11  add.ul r[25:26], r[22:23], r[25:26]
001c24  8ba37a10  add.ul r[8:9], r[22:23], r[8:9]
001c28  733c8fef  store.d r[25:26], -264(r30)
001c2c  6b5c0ff1  load.d r[25:26], -240(r30)
001c30  73381ff0  store.d r[2:3], -240(r30)
001c34  9700f900  and r1, r18, r15
001c38  0ba13a10  add.ul r[3:4], r[22:23], r[4:5]
001c3c  93801904  setlt.u r1, r19, r1
001c40  73342ff2  store.d r[3:4], -216(r30)
001c44  0ba19a10  add.ul r[3:4], r[22:23], r[10:11]
001c48  0bac8a11  add.ul r[25:26], r[22:23], r[25:26]
001c4c  73302ff2  store.d r[3:4], -224(r30)
001c50  1bc10b01  srli r2, r23, 16
001c54  73388fef  store.d r[25:26], -272(r30)
001c58  6b5c0fed  load.d r[25:26], -304(r30)
001c5c  731e2ff8  store.h r2, -100(r30)
001c60  0bac8a11  add.ul r[25:26], r[22:23], r[25:26]
001c64  73308ff1  store.d r[25:26], -256(r30)
001c68  6b5c8fec  load.d r[25:26], -312(r30)
001c6c  0bac8a11  add.ul r[25:26], r[22:23], r[25:26]
001c70  8baa5a10  add.ul r[22:23], r[22:23], r[6:7]
001c74  378800f2  beq r1, zero, -6656
001c78  e3041ffe  loadli.w r9,  -248(r30)
001c7c  e30b7ffe  loadli.w r23,  -200(r30)
001c80  97104901  or r1, r18, r20
001c84  5bc1fcff  j -6648
001c88  9f0e0ffc  addli sp, r30, -512
001c8c  9f8e0e04  addli sp, sp, 512
001c90  00a00300  mfence { lm, sm, gm }
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
001d28  00100000  exit
001d2c  00100000  exit
001d30  00100000  exit
001d34  00100000  exit
001d38  00100000  exit
001d3c  00100000  exit
001d40  00100000  exit
001d44  00100000  exit
001d48  00100000  exit
001d4c  00100000  exit
001d50  00100000  exit
001d54  00100000  exit
001d58  00100000  exit
001d5c  00100000  exit
001d60  00100000  exit
001d64  00100000  exit
001d68  00100000  exit
001d6c  00100000  exit
001d70  00100000  exit
001d74  00100000  exit
001d78  00100000  exit
001d7c  00100000  exit
001d80  00100000  exit
001d84  00100000  exit
001d88  00100000  exit
001d8c  00100000  exit
001d90  00100000  exit
001d94  00100000  exit
001d98  00100000  exit
001d9c  00100000  exit
001da0  00100000  exit
001da4  00100000  exit
001da8  00100000  exit
001dac  00100000  exit
001db0  00100000  exit
001db4  00100000  exit
001db8  00100000  exit
001dbc  00100000  exit
001dc0  00100000  exit
001dc4  00100000  exit
001dc8  00100000  exit
001dcc  00100000  exit
001dd0  00100000  exit
001dd4  00100000  exit
001dd8  00100000  exit
001ddc  00100000  exit
001de0  00100000  exit
001de4  00100000  exit
001de8  00100000  exit
001dec  00100000  exit
001df0  00100000  exit
001df4  00100000  exit
001df8  00100000  exit
001dfc  00100000  exit
001e00  00100000  exit
001e04  00100000  exit
001e08  00100000  exit
001e0c  00100000  exit
001e10  00100000  exit
001e14  00100000  exit
001e18  00100000  exit
001e1c  00100000  exit
001e20  00100000  exit
001e24  00100000  exit
001e28  00100000  exit
001e2c  00100000  exit
001e30  00100000  exit
001e34  00100000  exit
001e38  00100000  exit
001e3c  00100000  exit
001e40  00100000  exit
001e44  00100000  exit
001e48  00100000  exit
001e4c  00100000  exit
001e50  00100000  exit
001e54  00100000  exit
001e58  00100000  exit
001e5c  00100000  exit
001e60  00100000  exit
001e64  00100000  exit
001e68  00100000  exit
001e6c  00100000  exit
001e70  00100000  exit
001e74  00100000  exit
001e78  00100000  exit
001e7c  00100000  exit
001e80  00100000  exit
001e84  00100000  exit
001e88  00100000  exit
001e8c  00100000  exit
001e90  00100000  exit
001e94  00100000  exit
001e98  00100000  exit
001e9c  00100000  exit
001ea0  00100000  exit
001ea4  00100000  exit
001ea8  00100000  exit
001eac  00100000  exit
001eb0  00100000  exit
001eb4  00100000  exit
001eb8  00100000  exit
001ebc  00100000  exit
001ec0  00100000  exit
001ec4  00100000  exit
001ec8  00100000  exit
001ecc  00100000  exit
001ed0  00100000  exit
001ed4  00100000  exit
