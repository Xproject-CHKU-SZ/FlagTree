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
000144  cb0d920c  ble.s r4, r9, 7008
000148  1f028000  addli r4, zero, 64
00014c  e3030ffd  loadli.w r7,  -384(r30)
000150  1f150000  addli r10, zero, 1
000154  eb528f00  load.d r[6:7], 8(r30)
000158  ab094000  lui r19, 1024
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
000188  67411ffe  storeli.w r1, -236(r30)
00018c  9b131200  ori r7, r4, 1
000190  e7464ffc  storeli.w r4, -404(r30)
000194  67467ffc  storeli.w r7, -412(r30)
000198  9b132200  ori r7, r4, 2
00019c  67067ffc  storeli.w r7, -416(r30)
0001a0  9b133200  ori r7, r4, 3
0001a4  e7457ffc  storeli.w r7, -420(r30)
0001a8  9b134200  ori r7, r4, 4
0001ac  e7057ffc  storeli.w r7, -424(r30)
0001b0  9b135200  ori r7, r4, 5
0001b4  67457ffc  storeli.w r7, -428(r30)
0001b8  9b136200  ori r7, r4, 6
0001bc  67057ffc  storeli.w r7, -432(r30)
0001c0  9b137200  ori r7, r4, 7
0001c4  e7447ffc  storeli.w r7, -436(r30)
0001c8  9b138200  ori r7, r4, 8
0001cc  e7047ffc  storeli.w r7, -440(r30)
0001d0  9b139200  ori r7, r4, 9
0001d4  67447ffc  storeli.w r7, -444(r30)
0001d8  9b13a200  ori r7, r4, 10
0001dc  67047ffc  storeli.w r7, -448(r30)
0001e0  9b13b200  ori r7, r4, 11
0001e4  e7437ffc  storeli.w r7, -452(r30)
0001e8  9b13c200  ori r7, r4, 12
0001ec  e7037ffc  storeli.w r7, -456(r30)
0001f0  9b13d200  ori r7, r4, 13
0001f4  67437ffc  storeli.w r7, -460(r30)
0001f8  9b13e200  ori r7, r4, 14
0001fc  67037ffc  storeli.w r7, -464(r30)
000200  9b13f200  ori r7, r4, 15
000204  e7427ffc  storeli.w r7, -468(r30)
000208  b3130228  sext_int2long r[8:9], r4
00020c  2bf2ffff  lui r4, 1048575
000210  1b1202f0  ori r4, r4, 3840
000214  97b3a302  sll.d r[8:9], r[8:9], r10
000218  97814100  and r3, r3, r4
00021c  0ba27210  add.ul r[5:6], r[6:7], r[8:9]
000220  1f038ffe  addli r6, r30, -192
000224  9f034000  addli r7, zero, 32
000228  0b912110  add.s r2, r3, r2
00022c  73304fe2  store.d r[5:6], -480(r30)
000230  9f002108  addli r1, r2, 1040
000234  e7082ffc  storeli.w r2, -376(r30)
000238  2bf1ff7f  lui r2, 524287
00023c  67481ffc  storeli.w r1, -380(r30)
000240  ab700000  lui r1, 7
000244  9b17f1ff  ori r15, r2, 4095
000248  2b11833a  lui r2, 239665
00024c  1b9bf0ff  ori r22, r1, 4095
000250  abf07f7f  lui r1, 522239
000254  9b92f0ff  ori r5, r1, 4095
000258  9b10f126  ori r1, r2, 623
00025c  e7036fff  storeli.w r22, -200(r30)
000260  e7411ffc  storeli.w r1, -484(r30)
000264  9f200000  addli r1, zero, 2
000268  67015ffe  storeli.w r5, -240(r30)
00026c  fe8100e0  vmmov mr3, r1
000270  db2e0000  j 372
000274  9b400801  srli r1, r16, 16
000278  63017ffe  loadli.w r2,  -200(r30)
00027c  9b801000  andi r1, r1, 1
000280  8b101810  add.s r1, r16, r1
000284  8b902010  add.s r1, r1, r2
000288  9bc00001  srli r1, r1, 16
00028c  e3441ffe  loadli.w r9,  -244(r30)
000290  1f250000  addli r10, zero, 2
000294  1f030fff  addli r6, r30, -128
000298  2b0100f0  lui r2, 983040
00029c  731f1ff8  store.h r1, -98(r30)
0002a0  ab0000f0  lui r1, 983040
0002a4  17112500  or r2, r10, r2
0002a8  00a00000  mfence { lm }
0002ac  eb518fee  load.d r[4:5], -280(r30)
0002b0  97101500  or r1, r10, r1
0002b4  eb5b8fef  load.d r[24:25], -264(r30)
0002b8  ffb06100  s_lm2gm r1, r6, 0(r[4:5])
0002bc  e3405ffe  loadli.w r1,  -212(r30)
0002c0  eb510fee  load.d r[4:5], -288(r30)
0002c4  7fb11100  s_lm2gm r2, r1, 0(r[4:5])
0002c8  2b0100f0  lui r2, 983040
0002cc  9f400300  addli r1, r6, 4
0002d0  ab0100f0  lui r3, 983040
0002d4  1f620300  addli r4, r6, 6
0002d8  17112500  or r2, r10, r2
0002dc  97113500  or r3, r10, r3
0002e0  7fb11b00  s_lm2gm r2, r1, 0(r[24:25])
0002e4  eb500fef  load.d r[2:3], -272(r30)
0002e8  eb5b0ff0  load.d r[24:25], -256(r30)
0002ec  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0002f0  ab0100f0  lui r3, 983040
0002f4  2b0200f0  lui r4, 983040
0002f8  9f001300  addli r1, r6, 8
0002fc  1f211300  addli r2, r6, 10
000300  97113500  or r3, r10, r3
000304  17124500  or r4, r10, r4
000308  ffb11b00  s_lm2gm r3, r1, 0(r[24:25])
00030c  ab0100f0  lui r3, 983040
000310  7fb22600  s_lm2gm r4, r2, 0(r[14:15])
000314  2b0200f0  lui r4, 983040
000318  9f401300  addli r1, r6, 12
00031c  1f611300  addli r2, r6, 14
000320  eb568ff1  load.d r[14:15], -232(r30)
000324  97113500  or r3, r10, r3
000328  17124500  or r4, r10, r4
00032c  ffb11c00  s_lm2gm r3, r1, 0(r[26:27])
000330  ab0100f0  lui r3, 983040
000334  7fb22d00  s_lm2gm r4, r2, 0(r[28:29])
000338  2b0200f0  lui r4, 983040
00033c  9f002300  addli r1, r6, 16
000340  1f212300  addli r2, r6, 18
000344  97113500  or r3, r10, r3
000348  17124500  or r4, r10, r4
00034c  ffb11a00  s_lm2gm r3, r1, 0(r[22:23])
000350  ab0100f0  lui r3, 983040
000354  7fb22600  s_lm2gm r4, r2, 0(r[14:15])
000358  2b0200f0  lui r4, 983040
00035c  9f402300  addli r1, r6, 20
000360  1f612300  addli r2, r6, 22
000364  97113500  or r3, r10, r3
000368  17124500  or r4, r10, r4
00036c  ffb11900  s_lm2gm r3, r1, 0(r[20:21])
000370  ab0100f0  lui r3, 983040
000374  7fb22300  s_lm2gm r4, r2, 0(r[8:9])
000378  eb530ff3  load.d r[8:9], -208(r30)
00037c  9f003300  addli r1, r6, 24
000380  2b0200f0  lui r4, 983040
000384  1f213300  addli r2, r6, 26
000388  ab094000  lui r19, 1024
00038c  97113500  or r3, r10, r3
000390  17124500  or r4, r10, r4
000394  ffb11300  s_lm2gm r3, r1, 0(r[8:9])
000398  eb530ff2  load.d r[8:9], -224(r30)
00039c  ab0100f0  lui r3, 983040
0003a0  9f403300  addli r1, r6, 28
0003a4  97113500  or r3, r10, r3
0003a8  7fb22300  s_lm2gm r4, r2, 0(r[8:9])
0003ac  2b0200f0  lui r4, 983040
0003b0  1f613300  addli r2, r6, 30
0003b4  1f038ffe  addli r6, r30, -192
0003b8  9f034000  addli r7, zero, 32
0003bc  ffb11800  s_lm2gm r3, r1, 0(r[18:19])
0003c0  e300dffc  loadli.w r1,  -408(r30)
0003c4  17124500  or r4, r10, r4
0003c8  7fb22500  s_lm2gm r4, r2, 0(r[12:13])
0003cc  8b941410  add.s r9, r9, r1
0003d0  00a00000  mfence { lm }
0003d4  e300fffc  loadli.w r1,  -392(r30)
0003d8  630b7ffe  loadli.w r22,  -200(r30)
0003dc  3fa01400  blt.s r9, r1, 8
0003e0  db180300  j 6340
0003e4  9f000000  addli r1, zero, 0
0003e8  0b111310  add.s r2, r6, r1
0003ec  9fc00000  addli r1, r1, 4
0003f0  73100100  store.h zero, 0(r2)
0003f4  73110100  store.h zero, 2(r2)
0003f8  00a00000  mfence { lm }
0003fc  bbbf70fe  bneq r1, r7, -20
000400  e3005f00  loadli.w r1,  40(r30)
000404  63414f00  loadli.w r2,  36(r30)
000408  9f120000  addli r5, zero, 1
00040c  e7409ffe  storeli.w r9, -244(r30)
000410  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000414  1f190000  addli r18, zero, 1
000418  12310002  vadd.s.mz vr2{mr1}, zero, vr0
00041c  7e0109e0  vmmov mr2, r18
000420  8b901430  div.s r1, r9, r1
000424  8b902030  div.s r1, r1, r2
000428  6341effc  loadli.w r2,  -396(r30)
00042c  8b902010  add.s r1, r1, r2
000430  1bb1a000  slli r2, r1, 10
000434  e7011ffe  storeli.w r1, -232(r30)
000438  e340dffc  loadli.w r1,  -404(r30)
00043c  e70f2ffc  storeli.w r2, -264(r30)
000440  8b101110  add.s r1, r2, r1
000444  2b0100f0  lui r2, 983040
000448  b3910028  sext_int2long r[4:5], r1
00044c  17912300  or r2, r7, r2
000450  ab0000f0  lui r1, 983040
000454  17b45102  sll.d r[9:10], r[4:5], r5
000458  eb510f00  load.d r[4:5], 0(r30)
00045c  97901300  or r1, r7, r1
000460  73308ff0  store.d r[9:10], -256(r30)
000464  8ba18110  add.ul r[4:5], r[4:5], r[9:10]
000468  7fa16100  l_gm2lm r2, r6, 0(r[4:5])
00046c  6b510fe2  load.d r[3:4], -480(r30)
000470  1f020fff  addli r4, r30, -128
000474  ff204100  l_gm2lm r1, r4, 0(r[3:4])
000478  00a00000  mfence { lm }
00047c  eb310ff4  load.hu r3, -192(r30)
000480  6b322ff4  load.hu r4, -190(r30)
000484  6b31aff5  load.hu r2, -166(r30)
000488  eb30cff5  load.hu r1, -164(r30)
00048c  eb324ff4  load.hu r5, -188(r30)
000490  6b336ff4  load.hu r6, -186(r30)
000494  eb338ff4  load.hu r7, -184(r30)
000498  6b34aff4  load.hu r8, -182(r30)
00049c  eb34cff4  load.hu r9, -180(r30)
0004a0  6b35eff4  load.hu r10, -178(r30)
0004a4  eb350ff5  load.hu r11, -176(r30)
0004a8  6b362ff5  load.hu r12, -174(r30)
0004ac  eb364ff5  load.hu r13, -172(r30)
0004b0  6b376ff5  load.hu r14, -170(r30)
0004b4  6b388ff5  load.hu r16, -168(r30)
0004b8  eb38eff5  load.hu r17, -162(r30)
0004bc  b3910118  bfloat2float.rn r3, r3
0004c0  33110118  bfloat2float.rn r2, r2
0004c4  b3900018  bfloat2float.rn r1, r1
0004c8  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
0004cc  b3110218  bfloat2float.rn r3, r4
0004d0  1f420000  addli r4, zero, 4
0004d4  7e0002e0  vmmov mr0, r4
0004d8  1f021000  addli r4, zero, 8
0004dc  eaa01136  vor.u.mh vr1{mr3}, r3, vr1
0004e0  b3910218  bfloat2float.rn r3, r5
0004e4  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0004e8  b3110318  bfloat2float.rn r3, r6
0004ec  7e0002e0  vmmov mr0, r4
0004f0  1f022000  addli r4, zero, 16
0004f4  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0004f8  b3910318  bfloat2float.rn r3, r7
0004fc  7e0002e0  vmmov mr0, r4
000500  1f024000  addli r4, zero, 32
000504  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000508  b3110418  bfloat2float.rn r3, r8
00050c  7e0002e0  vmmov mr0, r4
000510  1f028000  addli r4, zero, 64
000514  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000518  b3910418  bfloat2float.rn r3, r9
00051c  7e0002e0  vmmov mr0, r4
000520  1f020001  addli r4, zero, 128
000524  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000528  b3110518  bfloat2float.rn r3, r10
00052c  7e0002e0  vmmov mr0, r4
000530  1f020002  addli r4, zero, 256
000534  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000538  b3910518  bfloat2float.rn r3, r11
00053c  7e0002e0  vmmov mr0, r4
000540  1f020004  addli r4, zero, 512
000544  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000548  b3110618  bfloat2float.rn r3, r12
00054c  7e0002e0  vmmov mr0, r4
000550  1f020008  addli r4, zero, 1024
000554  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000558  b3910618  bfloat2float.rn r3, r13
00055c  7e0002e0  vmmov mr0, r4
000560  1f020010  addli r4, zero, 2048
000564  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000568  b3110718  bfloat2float.rn r3, r14
00056c  7e0002e0  vmmov mr0, r4
000570  1f020020  addli r4, zero, 4096
000574  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000578  b3110818  bfloat2float.rn r3, r16
00057c  7e0002e0  vmmov mr0, r4
000580  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000584  9f010040  addli r3, zero, 8192
000588  7e8001e0  vmmov mr0, r3
00058c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000590  2b410000  lui r2, 4
000594  7e0001e0  vmmov mr0, r2
000598  2b810000  lui r2, 8
00059c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0005a0  b3900818  bfloat2float.rn r1, r17
0005a4  7e0001e0  vmmov mr0, r2
0005a8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0005ac  eb300ff8  load.hu r1, -128(r30)
0005b0  6b312ff8  load.hu r2, -126(r30)
0005b4  eb314ff8  load.hu r3, -124(r30)
0005b8  6b326ff8  load.hu r4, -122(r30)
0005bc  eb328ff8  load.hu r5, -120(r30)
0005c0  6b33aff8  load.hu r6, -118(r30)
0005c4  eb33cff8  load.hu r7, -116(r30)
0005c8  6b34eff8  load.hu r8, -114(r30)
0005cc  eb340ff9  load.hu r9, -112(r30)
0005d0  6b352ff9  load.hu r10, -110(r30)
0005d4  eb354ff9  load.hu r11, -108(r30)
0005d8  6b366ff9  load.hu r12, -106(r30)
0005dc  eb368ff9  load.hu r13, -104(r30)
0005e0  6b37aff9  load.hu r14, -102(r30)
0005e4  6b38cff9  load.hu r16, -100(r30)
0005e8  eb38eff9  load.hu r17, -98(r30)
0005ec  b3900018  bfloat2float.rn r1, r1
0005f0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0005f4  b3100118  bfloat2float.rn r1, r2
0005f8  1f410000  addli r2, zero, 4
0005fc  7e0101e0  vmmov mr2, r2
000600  1f011000  addli r2, zero, 8
000604  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
000608  b3900118  bfloat2float.rn r1, r3
00060c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000610  b3100218  bfloat2float.rn r1, r4
000614  7e0101e0  vmmov mr2, r2
000618  1f012000  addli r2, zero, 16
00061c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000620  b3900218  bfloat2float.rn r1, r5
000624  7e0101e0  vmmov mr2, r2
000628  1f014000  addli r2, zero, 32
00062c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000630  b3100318  bfloat2float.rn r1, r6
000634  7e0101e0  vmmov mr2, r2
000638  1f018000  addli r2, zero, 64
00063c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000640  b3900318  bfloat2float.rn r1, r7
000644  7e0101e0  vmmov mr2, r2
000648  1f010001  addli r2, zero, 128
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
0006bc  2b07807f  lui r14, 522240
0006c0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006c4  b3100818  bfloat2float.rn r1, r16
0006c8  7e0101e0  vmmov mr2, r2
0006cc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006d0  b3900818  bfloat2float.rn r1, r17
0006d4  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0006d8  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0006dc  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0006e0  00a00000  mfence { lm }
0006e4  630e8fff  loadli.w r28,  -64(r30)
0006e8  634d8fff  loadli.w r26,  -60(r30)
0006ec  e30c9fff  loadli.w r25,  -56(r30)
0006f0  e3469fff  loadli.w r13,  -52(r30)
0006f4  e308afff  loadli.w r17,  -48(r30)
0006f8  6346afff  loadli.w r12,  -44(r30)
0006fc  6305bfff  loadli.w r10,  -40(r30)
000700  6349bfff  loadli.w r18,  -36(r30)
000704  e30bcfff  loadli.w r23,  -32(r30)
000708  e34acfff  loadli.w r21,  -28(r30)
00070c  630cdfff  loadli.w r24,  -24(r30)
000710  e341dfff  loadli.w r3,  -20(r30)
000714  1701fe00  and r2, r28, r15
000718  67023ffe  storeli.w r3, -224(r30)
00071c  e304efff  loadli.w r9,  -16(r30)
000720  634aefff  loadli.w r20,  -12(r30)
000724  e301ffff  loadli.w r3,  -8(r30)
000728  e34dffff  loadli.w r27,  -4(r30)
00072c  93002704  setlt.u r1, r14, r2
000730  3bb00000  bneq r1, zero, 12
000734  e743cfff  storeli.w r28, -196(r30)
000738  db010000  j 12
00073c  97103e01  or r1, r28, r19
000740  e7431ffe  storeli.w r1, -196(r30)
000744  1704fd00  and r8, r26, r15
000748  63082ffe  loadli.w r16,  -240(r30)
00074c  67033ffe  storeli.w r3, -208(r30)
000750  93008704  setlt.u r1, r14, r8
000754  3bb00000  bneq r1, zero, 12
000758  670baffd  storeli.w r26, -336(r30)
00075c  db010000  j 12
000760  97103d01  or r1, r26, r19
000764  670b1ffc  storeli.w r1, -336(r30)
000768  9782fc00  and r5, r25, r15
00076c  93005704  setlt.u r1, r14, r5
000770  3bb00000  bneq r1, zero, 12
000774  674b9ffd  storeli.w r25, -332(r30)
000778  db010000  j 12
00077c  97903c01  or r1, r25, r19
000780  674b1ffc  storeli.w r1, -332(r30)
000784  9783f600  and r7, r13, r15
000788  93007704  setlt.u r1, r14, r7
00078c  3bb00000  bneq r1, zero, 12
000790  e70bdffc  storeli.w r13, -328(r30)
000794  db010000  j 12
000798  97903601  or r1, r13, r19
00079c  e70b1ffc  storeli.w r1, -328(r30)
0007a0  1783f800  and r6, r17, r15
0007a4  93006704  setlt.u r1, r14, r6
0007a8  3bb00000  bneq r1, zero, 12
0007ac  e74b1ffd  storeli.w r17, -324(r30)
0007b0  db010000  j 12
0007b4  97903801  or r1, r17, r19
0007b8  e74b1ffc  storeli.w r1, -324(r30)
0007bc  1702f600  and r4, r12, r15
0007c0  93004704  setlt.u r1, r14, r4
0007c4  3bb00000  bneq r1, zero, 12
0007c8  670ccffc  storeli.w r12, -320(r30)
0007cc  db010000  j 12
0007d0  97103601  or r1, r12, r19
0007d4  670c1ffc  storeli.w r1, -320(r30)
0007d8  9701f500  and r3, r10, r15
0007dc  e748cffc  storeli.w r12, -372(r30)
0007e0  1f060500  addli r12, r10, 0
0007e4  93003704  setlt.u r1, r14, r3
0007e8  3bb00000  bneq r1, zero, 12
0007ec  674caffc  storeli.w r10, -316(r30)
0007f0  db010000  j 12
0007f4  97103501  or r1, r10, r19
0007f8  674c1ffc  storeli.w r1, -316(r30)
0007fc  9700f900  and r1, r18, r15
000800  e7429ffe  storeli.w r9, -212(r30)
000804  67092ffd  storeli.w r18, -368(r30)
000808  13051704  setlt.u r10, r14, r1
00080c  3b300500  bneq r10, zero, 12
000810  e70c2ffd  storeli.w r18, -312(r30)
000814  db010000  j 12
000818  97143901  or r9, r18, r19
00081c  e70c9ffc  storeli.w r9, -312(r30)
000820  1789fb00  and r18, r23, r15
000824  67497ffd  storeli.w r23, -364(r30)
000828  13052705  setlt.u r10, r14, r18
00082c  3b300500  bneq r10, zero, 12
000830  e74c7ffd  storeli.w r23, -308(r30)
000834  db010000  j 12
000838  97943b01  or r9, r23, r19
00083c  e74c9ffc  storeli.w r9, -308(r30)
000840  978bfa00  and r23, r21, r15
000844  e7095ffd  storeli.w r21, -360(r30)
000848  13057705  setlt.u r10, r14, r23
00084c  3b300500  bneq r10, zero, 12
000850  670d5ffd  storeli.w r21, -304(r30)
000854  db010000  j 12
000858  97943a01  or r9, r21, r19
00085c  670d9ffc  storeli.w r9, -304(r30)
000860  970afc00  and r21, r24, r15
000864  e7498ffd  storeli.w r24, -356(r30)
000868  13055705  setlt.u r10, r14, r21
00086c  3b300500  bneq r10, zero, 12
000870  e70d8ffd  storeli.w r24, -296(r30)
000874  db010000  j 12
000878  97143c01  or r9, r24, r19
00087c  e70d9ffc  storeli.w r9, -296(r30)
000880  e3044ffe  loadli.w r9,  -224(r30)
000884  ab054000  lui r11, 1024
000888  178cf400  and r24, r9, r15
00088c  13058705  setlt.u r10, r14, r24
000890  37200500  beq r10, zero, 8
000894  97943401  or r9, r9, r19
000898  670e9ffc  storeli.w r9, -288(r30)
00089c  e3445ffe  loadli.w r9,  -212(r30)
0008a0  1785f400  and r10, r9, r15
0008a4  674aaffc  storeli.w r10, -348(r30)
0008a8  1305a704  setlt.u r10, r14, r10
0008ac  37200500  beq r10, zero, 8
0008b0  9794b400  or r9, r9, r11
0008b4  e70e9ffc  storeli.w r9, -280(r30)
0008b8  9704fa00  and r9, r20, r15
0008bc  670a4ffd  storeli.w r20, -352(r30)
0008c0  13059704  setlt.u r10, r14, r9
0008c4  e70a9ffc  storeli.w r9, -344(r30)
0008c8  37200500  beq r10, zero, 8
0008cc  171aba00  or r20, r20, r11
0008d0  63056ffe  loadli.w r10,  -208(r30)
0008d4  ab04807f  lui r9, 522240
0008d8  9709f500  and r19, r10, r15
0008dc  13073705  setlt.u r14, r14, r19
0008e0  e74a3ffd  storeli.w r19, -340(r30)
0008e4  3b300700  bneq r14, zero, 12
0008e8  670faffc  storeli.w r10, -272(r30)
0008ec  db010000  j 12
0008f0  1717b500  or r14, r10, r11
0008f4  670feffc  storeli.w r14, -272(r30)
0008f8  1785fd00  and r10, r27, r15
0008fc  1387a404  setlt.u r14, r9, r10
000900  3b300700  bneq r14, zero, 12
000904  9f840d00  addli r9, r27, 0
000908  5b010000  j 8
00090c  9794bd00  or r9, r27, r11
000910  13012804  setlt.u r2, r16, r2
000914  2b07ffff  lui r14, 1048560
000918  3b700100  bneq r2, zero, 28
00091c  1b410e01  srli r2, r28, 16
000920  1b011100  andi r2, r2, 1
000924  0b112e10  add.s r2, r28, r2
000928  0b116111  add.s r2, r2, r22
00092c  1701e100  and r2, r2, r14
000930  e7432ffe  storeli.w r2, -196(r30)
000934  13018804  setlt.u r2, r16, r8
000938  630e6ffd  loadli.w r28,  -336(r30)
00093c  3b600100  bneq r2, zero, 24
000940  1b410d01  srli r2, r26, 16
000944  1b011100  andi r2, r2, 1
000948  0b112d10  add.s r2, r26, r2
00094c  0b116111  add.s r2, r2, r22
000950  170ee100  and r28, r2, r14
000954  13015804  setlt.u r2, r16, r5
000958  63448ffd  loadli.w r8,  -316(r30)
00095c  634d6ffd  loadli.w r26,  -332(r30)
000960  3b600100  bneq r2, zero, 24
000964  1bc10c01  srli r2, r25, 16
000968  1b011100  andi r2, r2, 1
00096c  0b912c10  add.s r2, r25, r2
000970  0b116111  add.s r2, r2, r22
000974  170de100  and r26, r2, r14
000978  13017804  setlt.u r2, r16, r7
00097c  e3027ffd  loadli.w r5,  -328(r30)
000980  3b600100  bneq r2, zero, 24
000984  1bc10601  srli r2, r13, 16
000988  1b011100  andi r2, r2, 1
00098c  0b912610  add.s r2, r13, r2
000990  0b116111  add.s r2, r2, r22
000994  9702e100  and r5, r2, r14
000998  13016804  setlt.u r2, r16, r6
00099c  e30c9ffd  loadli.w r25,  -312(r30)
0009a0  e3038ffd  loadli.w r7,  -320(r30)
0009a4  63437ffd  loadli.w r6,  -324(r30)
0009a8  3b600100  bneq r2, zero, 24
0009ac  1bc10801  srli r2, r17, 16
0009b0  1b011100  andi r2, r2, 1
0009b4  0b912810  add.s r2, r17, r2
0009b8  0b116111  add.s r2, r2, r22
0009bc  1703e100  and r6, r2, r14
0009c0  13014804  setlt.u r2, r16, r4
0009c4  e306affd  loadli.w r13,  -304(r30)
0009c8  3b700100  bneq r2, zero, 28
0009cc  63421ffd  loadli.w r4,  -372(r30)
0009d0  1b410201  srli r2, r4, 16
0009d4  1b011100  andi r2, r2, 1
0009d8  0b112210  add.s r2, r4, r2
0009dc  0b116111  add.s r2, r2, r22
0009e0  9703e100  and r7, r2, r14
0009e4  13013804  setlt.u r2, r16, r3
0009e8  3b600100  bneq r2, zero, 24
0009ec  1b410601  srli r2, r12, 16
0009f0  1b011100  andi r2, r2, 1
0009f4  0b112610  add.s r2, r12, r2
0009f8  0b116111  add.s r2, r2, r22
0009fc  1704e100  and r8, r2, r14
000a00  93001804  setlt.u r1, r16, r1
000a04  6306bffd  loadli.w r12,  -296(r30)
000a08  3bf00000  bneq r1, zero, 28
000a0c  63012ffd  loadli.w r2,  -368(r30)
000a10  9b400101  srli r1, r2, 16
000a14  9b801000  andi r1, r1, 1
000a18  8b101110  add.s r1, r2, r1
000a1c  8b906011  add.s r1, r1, r22
000a20  978ce000  and r25, r1, r14
000a24  93002805  setlt.u r1, r16, r18
000a28  63499ffd  loadli.w r18,  -308(r30)
000a2c  63417ffe  loadli.w r2,  -196(r30)
000a30  3bf00000  bneq r1, zero, 28
000a34  e3412ffd  loadli.w r3,  -364(r30)
000a38  9bc00101  srli r1, r3, 16
000a3c  9b801000  andi r1, r1, 1
000a40  8b901110  add.s r1, r3, r1
000a44  8b906011  add.s r1, r1, r22
000a48  1789e000  and r18, r1, r14
000a4c  93007805  setlt.u r1, r16, r23
000a50  3bf00000  bneq r1, zero, 28
000a54  e3013ffd  loadli.w r3,  -360(r30)
000a58  9bc00101  srli r1, r3, 16
000a5c  9b801000  andi r1, r1, 1
000a60  8b901110  add.s r1, r3, r1
000a64  8b906011  add.s r1, r1, r22
000a68  9786e000  and r13, r1, r14
000a6c  93005805  setlt.u r1, r16, r21
000a70  e30bdffd  loadli.w r23,  -280(r30)
000a74  3bf00000  bneq r1, zero, 28
000a78  e3413ffd  loadli.w r3,  -356(r30)
000a7c  9bc00101  srli r1, r3, 16
000a80  9b801000  andi r1, r1, 1
000a84  8b901110  add.s r1, r3, r1
000a88  8b906011  add.s r1, r1, r22
000a8c  1786e000  and r12, r1, r14
000a90  93008805  setlt.u r1, r16, r24
000a94  e30aeffd  loadli.w r21,  -272(r30)
000a98  630ccffd  loadli.w r24,  -288(r30)
000a9c  3bf00000  bneq r1, zero, 28
000aa0  e3014ffe  loadli.w r3,  -224(r30)
000aa4  9bc00101  srli r1, r3, 16
000aa8  9b801000  andi r1, r1, 1
000aac  8b901110  add.s r1, r3, r1
000ab0  8b906011  add.s r1, r1, r22
000ab4  178ce000  and r24, r1, r14
000ab8  e3404ffd  loadli.w r1,  -348(r30)
000abc  93001804  setlt.u r1, r16, r1
000ac0  3bf00000  bneq r1, zero, 28
000ac4  e3415ffe  loadli.w r3,  -212(r30)
000ac8  9bc00101  srli r1, r3, 16
000acc  9b801000  andi r1, r1, 1
000ad0  8b901110  add.s r1, r3, r1
000ad4  8b906011  add.s r1, r1, r22
000ad8  978be000  and r23, r1, r14
000adc  e3005ffd  loadli.w r1,  -344(r30)
000ae0  ab084000  lui r17, 1024
000ae4  93001804  setlt.u r1, r16, r1
000ae8  3bf00000  bneq r1, zero, 28
000aec  e3014ffd  loadli.w r3,  -352(r30)
000af0  9bc00101  srli r1, r3, 16
000af4  9b801000  andi r1, r1, 1
000af8  8b901110  add.s r1, r3, r1
000afc  8b906011  add.s r1, r1, r22
000b00  178ae000  and r20, r1, r14
000b04  e3405ffd  loadli.w r1,  -340(r30)
000b08  93001804  setlt.u r1, r16, r1
000b0c  3bf00000  bneq r1, zero, 28
000b10  e3016ffe  loadli.w r3,  -208(r30)
000b14  9bc00101  srli r1, r3, 16
000b18  9b801000  andi r1, r1, 1
000b1c  8b901110  add.s r1, r3, r1
000b20  8b906011  add.s r1, r1, r22
000b24  978ae000  and r21, r1, r14
000b28  9300a804  setlt.u r1, r16, r10
000b2c  3be00000  bneq r1, zero, 24
000b30  9bc00d01  srli r1, r27, 16
000b34  9b801000  andi r1, r1, 1
000b38  8b901d10  add.s r1, r27, r1
000b3c  8b906011  add.s r1, r1, r22
000b40  9784e000  and r9, r1, r14
000b44  9700f100  and r1, r2, r15
000b48  ab05807f  lui r11, 522240
000b4c  1f880400  addli r16, r9, 0
000b50  93801504  setlt.u r1, r11, r1
000b54  3be00000  bneq r1, zero, 24
000b58  9b400101  srli r1, r2, 16
000b5c  9b801000  andi r1, r1, 1
000b60  8b101110  add.s r1, r2, r1
000b64  8b906011  add.s r1, r1, r22
000b68  5b010000  j 8
000b6c  97101101  or r1, r2, r17
000b70  1701fe00  and r2, r28, r15
000b74  13812504  setlt.u r2, r11, r2
000b78  3b600100  bneq r2, zero, 24
000b7c  1b410e01  srli r2, r28, 16
000b80  1b011100  andi r2, r2, 1
000b84  0b112e10  add.s r2, r28, r2
000b88  0b116111  add.s r2, r2, r22
000b8c  5b010000  j 8
000b90  17111e01  or r2, r28, r17
000b94  9701fd00  and r3, r26, r15
000b98  93813504  setlt.u r3, r11, r3
000b9c  3be00100  bneq r3, zero, 24
000ba0  9b410d01  srli r3, r26, 16
000ba4  9b811100  andi r3, r3, 1
000ba8  8b113d10  add.s r3, r26, r3
000bac  8b916111  add.s r3, r3, r22
000bb0  5b010000  j 8
000bb4  97111d01  or r3, r26, r17
000bb8  1782f200  and r4, r5, r15
000bbc  13824504  setlt.u r4, r11, r4
000bc0  3b600200  bneq r4, zero, 24
000bc4  1bc20201  srli r4, r5, 16
000bc8  1b021200  andi r4, r4, 1
000bcc  0b924210  add.s r4, r5, r4
000bd0  0b126211  add.s r4, r4, r22
000bd4  5b010000  j 8
000bd8  17921201  or r4, r5, r17
000bdc  9702f300  and r5, r6, r15
000be0  93825504  setlt.u r5, r11, r5
000be4  3be00200  bneq r5, zero, 24
000be8  9b420301  srli r5, r6, 16
000bec  9b821200  andi r5, r5, 1
000bf0  8b125310  add.s r5, r6, r5
000bf4  8b926211  add.s r5, r5, r22
000bf8  5b010000  j 8
000bfc  97121301  or r5, r6, r17
000c00  1783f300  and r6, r7, r15
000c04  13836504  setlt.u r6, r11, r6
000c08  3b600300  bneq r6, zero, 24
000c0c  1bc30301  srli r6, r7, 16
000c10  1b031300  andi r6, r6, 1
000c14  0b936310  add.s r6, r7, r6
000c18  8b136311  add.s r7, r6, r22
000c1c  5b010000  j 8
000c20  97931301  or r7, r7, r17
000c24  1703f400  and r6, r8, r15
000c28  13836504  setlt.u r6, r11, r6
000c2c  3b600300  bneq r6, zero, 24
000c30  1b430401  srli r6, r8, 16
000c34  1b031300  andi r6, r6, 1
000c38  0b136410  add.s r6, r8, r6
000c3c  0b146311  add.s r8, r6, r22
000c40  5b010000  j 8
000c44  17141401  or r8, r8, r17
000c48  1783fc00  and r6, r25, r15
000c4c  13836504  setlt.u r6, r11, r6
000c50  3b600300  bneq r6, zero, 24
000c54  1bc30c01  srli r6, r25, 16
000c58  1b031300  andi r6, r6, 1
000c5c  0b936c10  add.s r6, r25, r6
000c60  8b146311  add.s r9, r6, r22
000c64  5b010000  j 8
000c68  97941c01  or r9, r25, r17
000c6c  1703f900  and r6, r18, r15
000c70  13836504  setlt.u r6, r11, r6
000c74  3b600300  bneq r6, zero, 24
000c78  1b430901  srli r6, r18, 16
000c7c  1b031300  andi r6, r6, 1
000c80  0b136910  add.s r6, r18, r6
000c84  0b156311  add.s r10, r6, r22
000c88  5b010000  j 8
000c8c  17151901  or r10, r18, r17
000c90  1783f600  and r6, r13, r15
000c94  13836504  setlt.u r6, r11, r6
000c98  3b600300  bneq r6, zero, 24
000c9c  1bc30601  srli r6, r13, 16
000ca0  1b031300  andi r6, r6, 1
000ca4  0b936610  add.s r6, r13, r6
000ca8  8b166311  add.s r13, r6, r22
000cac  5b010000  j 8
000cb0  97961601  or r13, r13, r17
000cb4  1703f600  and r6, r12, r15
000cb8  13836504  setlt.u r6, r11, r6
000cbc  3b600300  bneq r6, zero, 24
000cc0  1b430601  srli r6, r12, 16
000cc4  1b031300  andi r6, r6, 1
000cc8  0b136610  add.s r6, r12, r6
000ccc  0b196311  add.s r18, r6, r22
000cd0  5b010000  j 8
000cd4  17191601  or r18, r12, r17
000cd8  1703fc00  and r6, r24, r15
000cdc  2b06807f  lui r12, 522240
000ce0  13836504  setlt.u r6, r11, r6
000ce4  3b600300  bneq r6, zero, 24
000ce8  1b430c01  srli r6, r24, 16
000cec  1b031300  andi r6, r6, 1
000cf0  0b136c10  add.s r6, r24, r6
000cf4  0b176311  add.s r14, r6, r22
000cf8  5b010000  j 8
000cfc  17171c01  or r14, r24, r17
000d00  1783fb00  and r6, r23, r15
000d04  9f050800  addli r11, r16, 0
000d08  13036604  setlt.u r6, r12, r6
000d0c  3b600300  bneq r6, zero, 24
000d10  1bc30b01  srli r6, r23, 16
000d14  1b031300  andi r6, r6, 1
000d18  0b936b10  add.s r6, r23, r6
000d1c  8b196311  add.s r19, r6, r22
000d20  5b010000  j 8
000d24  97991b01  or r19, r23, r17
000d28  1703fa00  and r6, r20, r15
000d2c  13036604  setlt.u r6, r12, r6
000d30  3b600300  bneq r6, zero, 24
000d34  1b430a01  srli r6, r20, 16
000d38  1b031300  andi r6, r6, 1
000d3c  0b136a10  add.s r6, r20, r6
000d40  0b1a6311  add.s r20, r6, r22
000d44  5b010000  j 8
000d48  171a1a01  or r20, r20, r17
000d4c  1783fa00  and r6, r21, r15
000d50  13036604  setlt.u r6, r12, r6
000d54  3b600300  bneq r6, zero, 24
000d58  1bc30a01  srli r6, r21, 16
000d5c  1b031300  andi r6, r6, 1
000d60  0b936a10  add.s r6, r21, r6
000d64  0b186311  add.s r16, r6, r22
000d68  5b010000  j 8
000d6c  17981a01  or r16, r21, r17
000d70  1783f500  and r6, r11, r15
000d74  13036604  setlt.u r6, r12, r6
000d78  3b600300  bneq r6, zero, 24
000d7c  1bc30501  srli r6, r11, 16
000d80  1b031300  andi r6, r6, 1
000d84  0b936510  add.s r6, r11, r6
000d88  0b1b6311  add.s r22, r6, r22
000d8c  5b010000  j 8
000d90  179b1501  or r22, r11, r17
000d94  2b0cffff  lui r24, 1048560
000d98  17838201  and r6, r5, r24
000d9c  ab02ffff  lui r5, 1048560
000da0  17868401  and r12, r9, r24
000da4  e3043ffe  loadli.w r9,  -232(r30)
000da8  97808001  and r1, r1, r24
000dac  17018101  and r2, r2, r24
000db0  97818101  and r3, r3, r24
000db4  17028201  and r4, r4, r24
000db8  97838301  and r7, r7, r24
000dbc  97058401  and r11, r8, r24
000dc0  97088501  and r17, r10, r24
000dc4  978a8601  and r21, r13, r24
000dc8  970b8901  and r23, r18, r24
000dcc  170c8701  and r24, r14, r24
000dd0  978c5900  and r25, r19, r5
000dd4  170d5a00  and r26, r20, r5
000dd8  970d5800  and r27, r16, r5
000ddc  170e5b00  and r28, r22, r5
000de0  9f020004  addli r5, zero, 512
000de4  3fb05400  blt.s r9, r5, 12
000de8  9f020000  addli r5, zero, 0
000dec  5b080000  j 64
000df0  8be22010  add.f.rn r5, r1, r2
000df4  8be23210  add.f.rn r5, r5, r3
000df8  8be24210  add.f.rn r5, r5, r4
000dfc  8be26210  add.f.rn r5, r5, r6
000e00  8be27210  add.f.rn r5, r5, r7
000e04  8be2b210  add.f.rn r5, r5, r11
000e08  8be2c210  add.f.rn r5, r5, r12
000e0c  8be21211  add.f.rn r5, r5, r17
000e10  8be25211  add.f.rn r5, r5, r21
000e14  8be27211  add.f.rn r5, r5, r23
000e18  8be28211  add.f.rn r5, r5, r24
000e1c  8be29211  add.f.rn r5, r5, r25
000e20  8be2a211  add.f.rn r5, r5, r26
000e24  8be2b211  add.f.rn r5, r5, r27
000e28  8be2c211  add.f.rn r5, r5, r28
000e2c  63040ffd  loadli.w r8,  -384(r30)
000e30  e346fffc  loadli.w r13,  -388(r30)
000e34  63082ffe  loadli.w r16,  -240(r30)
000e38  2b07807f  lui r14, 522240
000e3c  73605400  stores.w r5, 0(r8)
000e40  00a00300  mfence { lm, sm, gm }
000e44  80a10604  csr_set csr3, r13
000e48  00d00100  sync_group
000e4c  e3422ffe  loadli.w r5,  -236(r30)
000e50  3bb80200  bneq r5, zero, 524
000e54  63051ffd  loadli.w r10,  -376(r30)
000e58  ef420500  loads.w r5, 0(r10)
000e5c  ef444500  loads.w r9, 4(r10)
000e60  6f448500  loads.w r8, 8(r10)
000e64  8be29210  add.f.rn r5, r5, r9
000e68  ef44c500  loads.w r9, 12(r10)
000e6c  8be28210  add.f.rn r5, r5, r8
000e70  6f440501  loads.w r8, 16(r10)
000e74  8be29210  add.f.rn r5, r5, r9
000e78  ef444501  loads.w r9, 20(r10)
000e7c  8be28210  add.f.rn r5, r5, r8
000e80  6f448501  loads.w r8, 24(r10)
000e84  8be29210  add.f.rn r5, r5, r9
000e88  ef44c501  loads.w r9, 28(r10)
000e8c  8be28210  add.f.rn r5, r5, r8
000e90  6f440502  loads.w r8, 32(r10)
000e94  8be29210  add.f.rn r5, r5, r9
000e98  ef444502  loads.w r9, 36(r10)
000e9c  8be28210  add.f.rn r5, r5, r8
000ea0  6f448502  loads.w r8, 40(r10)
000ea4  8be29210  add.f.rn r5, r5, r9
000ea8  ef44c502  loads.w r9, 44(r10)
000eac  8be28210  add.f.rn r5, r5, r8
000eb0  6f440503  loads.w r8, 48(r10)
000eb4  8be29210  add.f.rn r5, r5, r9
000eb8  ef444503  loads.w r9, 52(r10)
000ebc  8be28210  add.f.rn r5, r5, r8
000ec0  6f448503  loads.w r8, 56(r10)
000ec4  8be29210  add.f.rn r5, r5, r9
000ec8  ef44c503  loads.w r9, 60(r10)
000ecc  8be28210  add.f.rn r5, r5, r8
000ed0  6f440504  loads.w r8, 64(r10)
000ed4  8be29210  add.f.rn r5, r5, r9
000ed8  ef444504  loads.w r9, 68(r10)
000edc  8be28210  add.f.rn r5, r5, r8
000ee0  6f448504  loads.w r8, 72(r10)
000ee4  8be29210  add.f.rn r5, r5, r9
000ee8  ef44c504  loads.w r9, 76(r10)
000eec  8be28210  add.f.rn r5, r5, r8
000ef0  6f440505  loads.w r8, 80(r10)
000ef4  8be29210  add.f.rn r5, r5, r9
000ef8  ef444505  loads.w r9, 84(r10)
000efc  8be28210  add.f.rn r5, r5, r8
000f00  6f448505  loads.w r8, 88(r10)
000f04  8be29210  add.f.rn r5, r5, r9
000f08  ef44c505  loads.w r9, 92(r10)
000f0c  8be28210  add.f.rn r5, r5, r8
000f10  6f440506  loads.w r8, 96(r10)
000f14  8be29210  add.f.rn r5, r5, r9
000f18  ef444506  loads.w r9, 100(r10)
000f1c  8be28210  add.f.rn r5, r5, r8
000f20  6f448506  loads.w r8, 104(r10)
000f24  8be29210  add.f.rn r5, r5, r9
000f28  ef44c506  loads.w r9, 108(r10)
000f2c  8be28210  add.f.rn r5, r5, r8
000f30  6f440507  loads.w r8, 112(r10)
000f34  8be29210  add.f.rn r5, r5, r9
000f38  ef444507  loads.w r9, 116(r10)
000f3c  8be28210  add.f.rn r5, r5, r8
000f40  6f448507  loads.w r8, 120(r10)
000f44  8be29210  add.f.rn r5, r5, r9
000f48  ef44c507  loads.w r9, 124(r10)
000f4c  8be28210  add.f.rn r5, r5, r8
000f50  6f440508  loads.w r8, 128(r10)
000f54  8be29210  add.f.rn r5, r5, r9
000f58  ef444508  loads.w r9, 132(r10)
000f5c  8be28210  add.f.rn r5, r5, r8
000f60  6f448508  loads.w r8, 136(r10)
000f64  8be29210  add.f.rn r5, r5, r9
000f68  ef44c508  loads.w r9, 140(r10)
000f6c  8be28210  add.f.rn r5, r5, r8
000f70  6f440509  loads.w r8, 144(r10)
000f74  8be29210  add.f.rn r5, r5, r9
000f78  ef444509  loads.w r9, 148(r10)
000f7c  8be28210  add.f.rn r5, r5, r8
000f80  6f448509  loads.w r8, 152(r10)
000f84  8be29210  add.f.rn r5, r5, r9
000f88  ef44c509  loads.w r9, 156(r10)
000f8c  8be28210  add.f.rn r5, r5, r8
000f90  6f44050a  loads.w r8, 160(r10)
000f94  8be29210  add.f.rn r5, r5, r9
000f98  ef44450a  loads.w r9, 164(r10)
000f9c  8be28210  add.f.rn r5, r5, r8
000fa0  6f44850a  loads.w r8, 168(r10)
000fa4  8be29210  add.f.rn r5, r5, r9
000fa8  ef44c50a  loads.w r9, 172(r10)
000fac  8be28210  add.f.rn r5, r5, r8
000fb0  6f44050b  loads.w r8, 176(r10)
000fb4  8be29210  add.f.rn r5, r5, r9
000fb8  ef44450b  loads.w r9, 180(r10)
000fbc  8be28210  add.f.rn r5, r5, r8
000fc0  6f44850b  loads.w r8, 184(r10)
000fc4  8be29210  add.f.rn r5, r5, r9
000fc8  ef44c50b  loads.w r9, 188(r10)
000fcc  8be28210  add.f.rn r5, r5, r8
000fd0  6f44050c  loads.w r8, 192(r10)
000fd4  8be29210  add.f.rn r5, r5, r9
000fd8  ef44450c  loads.w r9, 196(r10)
000fdc  8be28210  add.f.rn r5, r5, r8
000fe0  6f44850c  loads.w r8, 200(r10)
000fe4  8be29210  add.f.rn r5, r5, r9
000fe8  ef44c50c  loads.w r9, 204(r10)
000fec  8be28210  add.f.rn r5, r5, r8
000ff0  6f44050d  loads.w r8, 208(r10)
000ff4  8be29210  add.f.rn r5, r5, r9
000ff8  ef44450d  loads.w r9, 212(r10)
000ffc  8be28210  add.f.rn r5, r5, r8
001000  6f44850d  loads.w r8, 216(r10)
001004  8be29210  add.f.rn r5, r5, r9
001008  ef44c50d  loads.w r9, 220(r10)
00100c  8be28210  add.f.rn r5, r5, r8
001010  6f44050e  loads.w r8, 224(r10)
001014  8be29210  add.f.rn r5, r5, r9
001018  ef44450e  loads.w r9, 228(r10)
00101c  8be28210  add.f.rn r5, r5, r8
001020  6f44850e  loads.w r8, 232(r10)
001024  8be29210  add.f.rn r5, r5, r9
001028  ef44c50e  loads.w r9, 236(r10)
00102c  8be28210  add.f.rn r5, r5, r8
001030  6f44050f  loads.w r8, 240(r10)
001034  8be29210  add.f.rn r5, r5, r9
001038  ef44450f  loads.w r9, 244(r10)
00103c  8be28210  add.f.rn r5, r5, r8
001040  6f44850f  loads.w r8, 248(r10)
001044  8be29210  add.f.rn r5, r5, r9
001048  ef44c50f  loads.w r9, 252(r10)
00104c  8be28210  add.f.rn r5, r5, r8
001050  8be29210  add.f.rn r5, r5, r9
001054  e3043ffe  loadli.w r9,  -232(r30)
001058  73605500  stores.w r5, 0(r10)
00105c  00a00300  mfence { lm, sm, gm }
001060  80a10604  csr_set csr3, r13
001064  00d00100  sync_group
001068  e3021ffd  loadli.w r5,  -376(r30)
00106c  2b04803a  lui r8, 239616
001070  efc20200  loads.w r5, 0(r5)
001074  8be28220  mul.f.rn r5, r5, r8
001078  0bea5018  sub.f.rn r20, r1, r5
00107c  8b695118  sub.f.rn r19, r2, r5
001080  0be95118  sub.f.rn r18, r3, r5
001084  8b615218  sub.f.rn r3, r4, r5
001088  0be45318  sub.f.rn r8, r7, r5
00108c  0be25518  sub.f.rn r4, r11, r5
001090  0b615618  sub.f.rn r2, r12, r5
001094  8be05818  sub.f.rn r1, r17, r5
001098  8be55a18  sub.f.rn r11, r21, r5
00109c  8b685d18  sub.f.rn r17, r26, r5
0010a0  0be65d18  sub.f.rn r12, r27, r5
0010a4  0b655e18  sub.f.rn r10, r28, r5
0010a8  0b635318  sub.f.rn r6, r6, r5
0010ac  8be35b18  sub.f.rn r7, r23, r5
0010b0  8b6a5c18  sub.f.rn r21, r24, r5
0010b4  0beb5c18  sub.f.rn r22, r25, r5
0010b8  9f020004  addli r5, zero, 512
0010bc  e743affe  storeli.w r10, -196(r30)
0010c0  670dcffc  storeli.w r12, -304(r30)
0010c4  e70c1ffd  storeli.w r17, -312(r30)
0010c8  3fb05400  blt.s r9, r5, 12
0010cc  9f020000  addli r5, zero, 0
0010d0  5b100000  j 128
0010d4  8b624a21  mul.f.rn r5, r20, r20
0010d8  8be43921  mul.f.rn r9, r19, r19
0010dc  8be29210  add.f.rn r5, r5, r9
0010e0  8b642921  mul.f.rn r9, r18, r18
0010e4  8be25410  add.f.rn r5, r9, r5
0010e8  8be43120  mul.f.rn r9, r3, r3
0010ec  8be25410  add.f.rn r5, r9, r5
0010f0  8b646320  mul.f.rn r9, r6, r6
0010f4  8be25410  add.f.rn r5, r9, r5
0010f8  8b648420  mul.f.rn r9, r8, r8
0010fc  8be25410  add.f.rn r5, r9, r5
001100  8b644220  mul.f.rn r9, r4, r4
001104  8be25410  add.f.rn r5, r9, r5
001108  8b642120  mul.f.rn r9, r2, r2
00110c  8be25410  add.f.rn r5, r9, r5
001110  8be41020  mul.f.rn r9, r1, r1
001114  8be25410  add.f.rn r5, r9, r5
001118  8be4b520  mul.f.rn r9, r11, r11
00111c  8be25410  add.f.rn r5, r9, r5
001120  8be47320  mul.f.rn r9, r7, r7
001124  8be25410  add.f.rn r5, r9, r5
001128  8be45a21  mul.f.rn r9, r21, r21
00112c  8be25410  add.f.rn r5, r9, r5
001130  8b646b21  mul.f.rn r9, r22, r22
001134  8be25410  add.f.rn r5, r9, r5
001138  8be41821  mul.f.rn r9, r17, r17
00113c  8be25410  add.f.rn r5, r9, r5
001140  8b64c620  mul.f.rn r9, r12, r12
001144  8be25410  add.f.rn r5, r9, r5
001148  8b64a520  mul.f.rn r9, r10, r10
00114c  8be25410  add.f.rn r5, r9, r5
001150  e304effc  loadli.w r9,  -400(r30)
001154  e7015fff  storeli.w r21, -232(r30)
001158  ab084000  lui r17, 1024
00115c  73e05400  stores.w r5, 0(r9)
001160  00a00300  mfence { lm, sm, gm }
001164  80a10604  csr_set csr3, r13
001168  00d00100  sync_group
00116c  e3422ffe  loadli.w r5,  -236(r30)
001170  3ba80200  bneq r5, zero, 520
001174  63460ffd  loadli.w r12,  -380(r30)
001178  ef420600  loads.w r5, 0(r12)
00117c  6f454600  loads.w r10, 4(r12)
001180  ef448600  loads.w r9, 8(r12)
001184  8be2a210  add.f.rn r5, r5, r10
001188  6f45c600  loads.w r10, 12(r12)
00118c  8be29210  add.f.rn r5, r5, r9
001190  ef440601  loads.w r9, 16(r12)
001194  8be2a210  add.f.rn r5, r5, r10
001198  6f454601  loads.w r10, 20(r12)
00119c  8be29210  add.f.rn r5, r5, r9
0011a0  ef448601  loads.w r9, 24(r12)
0011a4  8be2a210  add.f.rn r5, r5, r10
0011a8  6f45c601  loads.w r10, 28(r12)
0011ac  8be29210  add.f.rn r5, r5, r9
0011b0  ef440602  loads.w r9, 32(r12)
0011b4  8be2a210  add.f.rn r5, r5, r10
0011b8  6f454602  loads.w r10, 36(r12)
0011bc  8be29210  add.f.rn r5, r5, r9
0011c0  ef448602  loads.w r9, 40(r12)
0011c4  8be2a210  add.f.rn r5, r5, r10
0011c8  6f45c602  loads.w r10, 44(r12)
0011cc  8be29210  add.f.rn r5, r5, r9
0011d0  ef440603  loads.w r9, 48(r12)
0011d4  8be2a210  add.f.rn r5, r5, r10
0011d8  6f454603  loads.w r10, 52(r12)
0011dc  8be29210  add.f.rn r5, r5, r9
0011e0  ef448603  loads.w r9, 56(r12)
0011e4  8be2a210  add.f.rn r5, r5, r10
0011e8  6f45c603  loads.w r10, 60(r12)
0011ec  8be29210  add.f.rn r5, r5, r9
0011f0  ef440604  loads.w r9, 64(r12)
0011f4  8be2a210  add.f.rn r5, r5, r10
0011f8  6f454604  loads.w r10, 68(r12)
0011fc  8be29210  add.f.rn r5, r5, r9
001200  ef448604  loads.w r9, 72(r12)
001204  8be2a210  add.f.rn r5, r5, r10
001208  6f45c604  loads.w r10, 76(r12)
00120c  8be29210  add.f.rn r5, r5, r9
001210  ef440605  loads.w r9, 80(r12)
001214  8be2a210  add.f.rn r5, r5, r10
001218  6f454605  loads.w r10, 84(r12)
00121c  8be29210  add.f.rn r5, r5, r9
001220  ef448605  loads.w r9, 88(r12)
001224  8be2a210  add.f.rn r5, r5, r10
001228  6f45c605  loads.w r10, 92(r12)
00122c  8be29210  add.f.rn r5, r5, r9
001230  ef440606  loads.w r9, 96(r12)
001234  8be2a210  add.f.rn r5, r5, r10
001238  6f454606  loads.w r10, 100(r12)
00123c  8be29210  add.f.rn r5, r5, r9
001240  ef448606  loads.w r9, 104(r12)
001244  8be2a210  add.f.rn r5, r5, r10
001248  6f45c606  loads.w r10, 108(r12)
00124c  8be29210  add.f.rn r5, r5, r9
001250  ef440607  loads.w r9, 112(r12)
001254  8be2a210  add.f.rn r5, r5, r10
001258  6f454607  loads.w r10, 116(r12)
00125c  8be29210  add.f.rn r5, r5, r9
001260  ef448607  loads.w r9, 120(r12)
001264  8be2a210  add.f.rn r5, r5, r10
001268  6f45c607  loads.w r10, 124(r12)
00126c  8be29210  add.f.rn r5, r5, r9
001270  ef440608  loads.w r9, 128(r12)
001274  8be2a210  add.f.rn r5, r5, r10
001278  6f454608  loads.w r10, 132(r12)
00127c  8be29210  add.f.rn r5, r5, r9
001280  ef448608  loads.w r9, 136(r12)
001284  8be2a210  add.f.rn r5, r5, r10
001288  6f45c608  loads.w r10, 140(r12)
00128c  8be29210  add.f.rn r5, r5, r9
001290  ef440609  loads.w r9, 144(r12)
001294  8be2a210  add.f.rn r5, r5, r10
001298  6f454609  loads.w r10, 148(r12)
00129c  8be29210  add.f.rn r5, r5, r9
0012a0  ef448609  loads.w r9, 152(r12)
0012a4  8be2a210  add.f.rn r5, r5, r10
0012a8  6f45c609  loads.w r10, 156(r12)
0012ac  8be29210  add.f.rn r5, r5, r9
0012b0  ef44060a  loads.w r9, 160(r12)
0012b4  8be2a210  add.f.rn r5, r5, r10
0012b8  6f45460a  loads.w r10, 164(r12)
0012bc  8be29210  add.f.rn r5, r5, r9
0012c0  ef44860a  loads.w r9, 168(r12)
0012c4  8be2a210  add.f.rn r5, r5, r10
0012c8  6f45c60a  loads.w r10, 172(r12)
0012cc  8be29210  add.f.rn r5, r5, r9
0012d0  ef44060b  loads.w r9, 176(r12)
0012d4  8be2a210  add.f.rn r5, r5, r10
0012d8  6f45460b  loads.w r10, 180(r12)
0012dc  8be29210  add.f.rn r5, r5, r9
0012e0  ef44860b  loads.w r9, 184(r12)
0012e4  8be2a210  add.f.rn r5, r5, r10
0012e8  6f45c60b  loads.w r10, 188(r12)
0012ec  8be29210  add.f.rn r5, r5, r9
0012f0  ef44060c  loads.w r9, 192(r12)
0012f4  8be2a210  add.f.rn r5, r5, r10
0012f8  6f45460c  loads.w r10, 196(r12)
0012fc  8be29210  add.f.rn r5, r5, r9
001300  ef44860c  loads.w r9, 200(r12)
001304  8be2a210  add.f.rn r5, r5, r10
001308  6f45c60c  loads.w r10, 204(r12)
00130c  8be29210  add.f.rn r5, r5, r9
001310  ef44060d  loads.w r9, 208(r12)
001314  8be2a210  add.f.rn r5, r5, r10
001318  6f45460d  loads.w r10, 212(r12)
00131c  8be29210  add.f.rn r5, r5, r9
001320  ef44860d  loads.w r9, 216(r12)
001324  8be2a210  add.f.rn r5, r5, r10
001328  6f45c60d  loads.w r10, 220(r12)
00132c  8be29210  add.f.rn r5, r5, r9
001330  ef44060e  loads.w r9, 224(r12)
001334  8be2a210  add.f.rn r5, r5, r10
001338  6f45460e  loads.w r10, 228(r12)
00133c  8be29210  add.f.rn r5, r5, r9
001340  ef44860e  loads.w r9, 232(r12)
001344  8be2a210  add.f.rn r5, r5, r10
001348  6f45c60e  loads.w r10, 236(r12)
00134c  8be29210  add.f.rn r5, r5, r9
001350  ef44060f  loads.w r9, 240(r12)
001354  8be2a210  add.f.rn r5, r5, r10
001358  6f45460f  loads.w r10, 244(r12)
00135c  8be29210  add.f.rn r5, r5, r9
001360  ef44860f  loads.w r9, 248(r12)
001364  8be2a210  add.f.rn r5, r5, r10
001368  6f45c60f  loads.w r10, 252(r12)
00136c  8be29210  add.f.rn r5, r5, r9
001370  8be2a210  add.f.rn r5, r5, r10
001374  73605600  stores.w r5, 0(r12)
001378  00a00300  mfence { lm, sm, gm }
00137c  80a10604  csr_set csr3, r13
001380  00d00100  sync_group
001384  e3420ffd  loadli.w r5,  -380(r30)
001388  ab04803a  lui r9, 239616
00138c  efc20200  loads.w r5, 0(r5)
001390  8be29220  mul.f.rn r5, r5, r9
001394  e3443ffc  loadli.w r9,  -484(r30)
001398  8be29210  add.f.rn r5, r5, r9
00139c  ab04803f  lui r9, 260096
0013a0  8f820208  sqrt.f.rn r5, r5
0013a4  8f8c5418  div.f.rn r25, r9, r5
0013a8  8b6a9a21  mul.f.rn r21, r20, r25
0013ac  9782fa00  and r5, r21, r15
0013b0  e74b5ffc  storeli.w r5, -324(r30)
0013b4  93025704  setlt.u r5, r14, r5
0013b8  3bb00200  bneq r5, zero, 12
0013bc  67025fff  storeli.w r21, -224(r30)
0013c0  db010000  j 12
0013c4  97921a01  or r5, r21, r17
0013c8  67025ffe  storeli.w r5, -224(r30)
0013cc  8be99921  mul.f.rn r19, r19, r25
0013d0  9782f900  and r5, r19, r15
0013d4  e70b5ffc  storeli.w r5, -328(r30)
0013d8  93025704  setlt.u r5, r14, r5
0013dc  3bb00200  bneq r5, zero, 12
0013e0  e7423fff  storeli.w r19, -212(r30)
0013e4  db010000  j 12
0013e8  97921901  or r5, r19, r17
0013ec  e7425ffe  storeli.w r5, -212(r30)
0013f0  0b699921  mul.f.rn r18, r18, r25
0013f4  9702f900  and r5, r18, r15
0013f8  13055704  setlt.u r10, r14, r5
0013fc  674b5ffc  storeli.w r5, -332(r30)
001400  3b300500  bneq r10, zero, 12
001404  67032fff  storeli.w r18, -208(r30)
001408  db010000  j 12
00140c  97121901  or r5, r18, r17
001410  67035ffe  storeli.w r5, -208(r30)
001414  8beb9121  mul.f.rn r23, r3, r25
001418  ab044000  lui r9, 1024
00141c  178efb00  and r28, r23, r15
001420  9301c705  setlt.u r3, r14, r28
001424  3bb00100  bneq r3, zero, 12
001428  670c7ffd  storeli.w r23, -320(r30)
00142c  db010000  j 12
001430  97911b01  or r3, r23, r17
001434  670c3ffc  storeli.w r3, -320(r30)
001438  8b6d9321  mul.f.rn r27, r6, r25
00143c  9781fd00  and r3, r27, r15
001440  670b3ffc  storeli.w r3, -336(r30)
001444  93013704  setlt.u r3, r14, r3
001448  3bb00100  bneq r3, zero, 12
00144c  9f810d00  addli r3, r27, 0
001450  5b010000  j 8
001454  97919d00  or r3, r27, r9
001458  0b649421  mul.f.rn r8, r8, r25
00145c  674c3ffc  storeli.w r3, -316(r30)
001460  9701f400  and r3, r8, r15
001464  e74a3ffc  storeli.w r3, -340(r30)
001468  93013704  setlt.u r3, r14, r3
00146c  3bb00100  bneq r3, zero, 12
001470  1f0d0400  addli r26, r8, 0
001474  5b010000  j 8
001478  171d9400  or r26, r8, r9
00147c  0b629221  mul.f.rn r4, r4, r25
001480  9701f200  and r3, r4, r15
001484  e70a3ffc  storeli.w r3, -344(r30)
001488  93013704  setlt.u r3, r14, r3
00148c  3bb00100  bneq r3, zero, 12
001490  e74c4ffc  storeli.w r4, -308(r30)
001494  db010000  j 12
001498  97119200  or r3, r4, r9
00149c  e74c3ffc  storeli.w r3, -308(r30)
0014a0  0b619121  mul.f.rn r2, r2, r25
0014a4  9701f100  and r3, r2, r15
0014a8  674a3ffc  storeli.w r3, -348(r30)
0014ac  93013704  setlt.u r3, r14, r3
0014b0  3bb00100  bneq r3, zero, 12
0014b4  1f050100  addli r10, r2, 0
0014b8  5b010000  j 8
0014bc  17159100  or r10, r2, r9
0014c0  8be09021  mul.f.rn r1, r1, r25
0014c4  9781f000  and r3, r1, r15
0014c8  670a3ffc  storeli.w r3, -352(r30)
0014cc  93013704  setlt.u r3, r14, r3
0014d0  3bb00100  bneq r3, zero, 12
0014d4  670e1ffc  storeli.w r1, -288(r30)
0014d8  db010000  j 12
0014dc  97919000  or r3, r1, r9
0014e0  670e3ffc  storeli.w r3, -288(r30)
0014e4  8be59521  mul.f.rn r11, r11, r25
0014e8  9781f500  and r3, r11, r15
0014ec  e7493ffc  storeli.w r3, -356(r30)
0014f0  93013704  setlt.u r3, r14, r3
0014f4  3bb00100  bneq r3, zero, 12
0014f8  e70ebffc  storeli.w r11, -280(r30)
0014fc  db010000  j 12
001500  97919500  or r3, r11, r9
001504  e70e3ffc  storeli.w r3, -280(r30)
001508  8be19321  mul.f.rn r3, r7, r25
00150c  9782f100  and r5, r3, r15
001510  13035704  setlt.u r6, r14, r5
001514  e7095ffc  storeli.w r5, -360(r30)
001518  3b300300  bneq r6, zero, 12
00151c  1f8c0100  addli r24, r3, 0
001520  5b010000  j 8
001524  179c9100  or r24, r3, r9
001528  e3023ffe  loadli.w r5,  -232(r30)
00152c  0be39221  mul.f.rn r6, r5, r25
001530  9702f300  and r5, r6, r15
001534  93035704  setlt.u r7, r14, r5
001538  67495ffc  storeli.w r5, -364(r30)
00153c  3bb00300  bneq r7, zero, 12
001540  670f6ffc  storeli.w r6, -272(r30)
001544  db010000  j 12
001548  97129300  or r5, r6, r9
00154c  670f5ffc  storeli.w r5, -272(r30)
001550  8b689b21  mul.f.rn r17, r22, r25
001554  9782f800  and r5, r17, r15
001558  93035704  setlt.u r7, r14, r5
00155c  67095ffc  storeli.w r5, -368(r30)
001560  3bb00300  bneq r7, zero, 12
001564  9f820800  addli r5, r17, 0
001568  5b010000  j 8
00156c  97929800  or r5, r17, r9
001570  e3039ffd  loadli.w r7,  -312(r30)
001574  e70daffc  storeli.w r10, -296(r30)
001578  630b7ffe  loadli.w r22,  -200(r30)
00157c  e7015ffe  storeli.w r5, -232(r30)
001580  8be39321  mul.f.rn r7, r7, r25
001584  1785f300  and r10, r7, r15
001588  1306a704  setlt.u r12, r14, r10
00158c  e70caffc  storeli.w r10, -312(r30)
001590  2b05ffff  lui r10, 1048560
001594  3b300600  bneq r12, zero, 12
001598  1f8a0300  addli r20, r7, 0
00159c  5b010000  j 8
0015a0  179a9300  or r20, r7, r9
0015a4  e302affd  loadli.w r5,  -304(r30)
0015a8  8be69221  mul.f.rn r13, r5, r25
0015ac  ab02807f  lui r5, 522240
0015b0  1786f600  and r12, r13, r15
0015b4  1307c704  setlt.u r14, r14, r12
0015b8  670dcffc  storeli.w r12, -304(r30)
0015bc  3b300700  bneq r14, zero, 12
0015c0  1f860600  addli r12, r13, 0
0015c4  5b010000  j 8
0015c8  17969600  or r12, r13, r9
0015cc  63477ffe  loadli.w r14,  -196(r30)
0015d0  8b6c9721  mul.f.rn r25, r14, r25
0015d4  1787fc00  and r14, r25, r15
0015d8  e748effc  storeli.w r14, -372(r30)
0015dc  1387e204  setlt.u r14, r5, r14
0015e0  3b300700  bneq r14, zero, 12
0015e4  e7439fff  storeli.w r25, -196(r30)
0015e8  db010000  j 12
0015ec  97929c00  or r5, r25, r9
0015f0  e7435ffe  storeli.w r5, -196(r30)
0015f4  e3427ffd  loadli.w r5,  -324(r30)
0015f8  13075804  setlt.u r14, r16, r5
0015fc  3b700700  bneq r14, zero, 28
001600  1bc70a01  srli r14, r21, 16
001604  1b071700  andi r14, r14, 1
001608  0b97ea10  add.s r14, r21, r14
00160c  0b176711  add.s r14, r14, r22
001610  9702a700  and r5, r14, r10
001614  67025ffe  storeli.w r5, -224(r30)
001618  e3027ffd  loadli.w r5,  -328(r30)
00161c  2b07ffff  lui r14, 1048560
001620  93045804  setlt.u r9, r16, r5
001624  3bf00400  bneq r9, zero, 28
001628  9bc40901  srli r9, r19, 16
00162c  9b841400  andi r9, r9, 1
001630  8b949910  add.s r9, r19, r9
001634  8b946411  add.s r9, r9, r22
001638  9782e400  and r5, r9, r14
00163c  e7425ffe  storeli.w r5, -212(r30)
001640  e3426ffd  loadli.w r5,  -332(r30)
001644  1f050c00  addli r10, r24, 0
001648  93025804  setlt.u r5, r16, r5
00164c  3bf00200  bneq r5, zero, 28
001650  9b420901  srli r5, r18, 16
001654  9b821200  andi r5, r5, 1
001658  8b125910  add.s r5, r18, r5
00165c  8b926211  add.s r5, r5, r22
001660  9782e200  and r5, r5, r14
001664  67035ffe  storeli.w r5, -208(r30)
001668  9302c805  setlt.u r5, r16, r28
00166c  e309cffd  loadli.w r19,  -288(r30)
001670  630e8ffd  loadli.w r28,  -320(r30)
001674  1f0c0d00  addli r24, r26, 0
001678  3be00200  bneq r5, zero, 24
00167c  9bc20b01  srli r5, r23, 16
001680  9b821200  andi r5, r5, 1
001684  8b925b10  add.s r5, r23, r5
001688  8b926211  add.s r5, r5, r22
00168c  178ee200  and r28, r5, r14
001690  e3026ffd  loadli.w r5,  -336(r30)
001694  6309dffd  loadli.w r18,  -280(r30)
001698  634d8ffd  loadli.w r26,  -316(r30)
00169c  93025804  setlt.u r5, r16, r5
0016a0  3be00200  bneq r5, zero, 24
0016a4  9bc20d01  srli r5, r27, 16
0016a8  9b821200  andi r5, r5, 1
0016ac  8b925d10  add.s r5, r27, r5
0016b0  8b926211  add.s r5, r5, r22
0016b4  178de200  and r26, r5, r14
0016b8  e3425ffd  loadli.w r5,  -340(r30)
0016bc  e34b9ffd  loadli.w r23,  -308(r30)
0016c0  9f040600  addli r9, r12, 0
0016c4  93025804  setlt.u r5, r16, r5
0016c8  3be00200  bneq r5, zero, 24
0016cc  9b420401  srli r5, r8, 16
0016d0  9b821200  andi r5, r5, 1
0016d4  8b125410  add.s r5, r8, r5
0016d8  8b926211  add.s r5, r5, r22
0016dc  178ce200  and r24, r5, r14
0016e0  e3025ffd  loadli.w r5,  -344(r30)
0016e4  ab0a4000  lui r21, 1024
0016e8  1f060a00  addli r12, r20, 0
0016ec  93025804  setlt.u r5, r16, r5
0016f0  3be00200  bneq r5, zero, 24
0016f4  9b420201  srli r5, r4, 16
0016f8  9b821200  andi r5, r5, 1
0016fc  0b125210  add.s r4, r4, r5
001700  0b126211  add.s r4, r4, r22
001704  970be200  and r23, r4, r14
001708  63424ffd  loadli.w r4,  -348(r30)
00170c  6304effd  loadli.w r8,  -272(r30)
001710  630abffd  loadli.w r20,  -296(r30)
001714  13024804  setlt.u r4, r16, r4
001718  3b600200  bneq r4, zero, 24
00171c  1b420101  srli r4, r2, 16
001720  1b021200  andi r4, r4, 1
001724  0b114110  add.s r2, r2, r4
001728  0b116111  add.s r2, r2, r22
00172c  170ae100  and r20, r2, r14
001730  63014ffd  loadli.w r2,  -352(r30)
001734  e3023ffe  loadli.w r5,  -232(r30)
001738  13012804  setlt.u r2, r16, r2
00173c  3b600100  bneq r2, zero, 24
001740  1bc10001  srli r2, r1, 16
001744  1b011100  andi r2, r2, 1
001748  8b902010  add.s r1, r1, r2
00174c  8b906011  add.s r1, r1, r22
001750  9789e000  and r19, r1, r14
001754  e3403ffd  loadli.w r1,  -356(r30)
001758  93001804  setlt.u r1, r16, r1
00175c  3be00000  bneq r1, zero, 24
001760  9bc00501  srli r1, r11, 16
001764  9b801000  andi r1, r1, 1
001768  8b901510  add.s r1, r11, r1
00176c  8b906011  add.s r1, r1, r22
001770  1789e000  and r18, r1, r14
001774  e3003ffd  loadli.w r1,  -360(r30)
001778  63417ffe  loadli.w r2,  -196(r30)
00177c  93001804  setlt.u r1, r16, r1
001780  3be00000  bneq r1, zero, 24
001784  9bc00101  srli r1, r3, 16
001788  9b801000  andi r1, r1, 1
00178c  8b901110  add.s r1, r3, r1
001790  8b906011  add.s r1, r1, r22
001794  1785e000  and r10, r1, r14
001798  e3402ffd  loadli.w r1,  -364(r30)
00179c  93001804  setlt.u r1, r16, r1
0017a0  3be00000  bneq r1, zero, 24
0017a4  9b400301  srli r1, r6, 16
0017a8  9b801000  andi r1, r1, 1
0017ac  8b101310  add.s r1, r6, r1
0017b0  8b906011  add.s r1, r1, r22
0017b4  1784e000  and r8, r1, r14
0017b8  e3002ffd  loadli.w r1,  -368(r30)
0017bc  e3415ffe  loadli.w r3,  -212(r30)
0017c0  93001804  setlt.u r1, r16, r1
0017c4  3be00000  bneq r1, zero, 24
0017c8  9bc00801  srli r1, r17, 16
0017cc  9b801000  andi r1, r1, 1
0017d0  8b901810  add.s r1, r17, r1
0017d4  8b906011  add.s r1, r1, r22
0017d8  9782e000  and r5, r1, r14
0017dc  e3009ffd  loadli.w r1,  -312(r30)
0017e0  63036ffe  loadli.w r6,  -208(r30)
0017e4  93001804  setlt.u r1, r16, r1
0017e8  3be00000  bneq r1, zero, 24
0017ec  9bc00301  srli r1, r7, 16
0017f0  9b801000  andi r1, r1, 1
0017f4  8b901310  add.s r1, r7, r1
0017f8  8b906011  add.s r1, r1, r22
0017fc  1786e000  and r12, r1, r14
001800  e300affd  loadli.w r1,  -304(r30)
001804  93001804  setlt.u r1, r16, r1
001808  3be00000  bneq r1, zero, 24
00180c  9bc00601  srli r1, r13, 16
001810  9b801000  andi r1, r1, 1
001814  8b901610  add.s r1, r13, r1
001818  8b906011  add.s r1, r1, r22
00181c  9784e000  and r9, r1, r14
001820  e3401ffd  loadli.w r1,  -372(r30)
001824  e3034ffe  loadli.w r7,  -224(r30)
001828  93001804  setlt.u r1, r16, r1
00182c  3be00000  bneq r1, zero, 24
001830  9bc00c01  srli r1, r25, 16
001834  9b801000  andi r1, r1, 1
001838  8b901c10  add.s r1, r25, r1
00183c  8b906011  add.s r1, r1, r22
001840  1781e000  and r2, r1, r14
001844  9780f300  and r1, r7, r15
001848  2b02807f  lui r4, 522240
00184c  e7432ffe  storeli.w r2, -196(r30)
001850  93001204  setlt.u r1, r4, r1
001854  3be00000  bneq r1, zero, 24
001858  9bc00301  srli r1, r7, 16
00185c  9b801000  andi r1, r1, 1
001860  8b901310  add.s r1, r7, r1
001864  8b906011  add.s r1, r1, r22
001868  5b010000  j 8
00186c  97905301  or r1, r7, r21
001870  1781f100  and r2, r3, r15
001874  9bc00001  srli r1, r1, 16
001878  13012204  setlt.u r2, r4, r2
00187c  73101ff8  store.h r1, -128(r30)
001880  3b600100  bneq r2, zero, 24
001884  9bc00101  srli r1, r3, 16
001888  9b801000  andi r1, r1, 1
00188c  8b901110  add.s r1, r3, r1
001890  8b906011  add.s r1, r1, r22
001894  5b010000  j 8
001898  97905101  or r1, r3, r21
00189c  1701f300  and r2, r6, r15
0018a0  9f010fff  addli r3, r30, -128
0018a4  9bc00001  srli r1, r1, 16
0018a8  13012204  setlt.u r2, r4, r2
0018ac  9b912100  ori r3, r3, 2
0018b0  e7423ffe  storeli.w r3, -212(r30)
0018b4  73901100  store.h r1, 0(r3)
0018b8  3b600100  bneq r2, zero, 24
0018bc  9b400301  srli r1, r6, 16
0018c0  9b801000  andi r1, r1, 1
0018c4  8b101310  add.s r1, r6, r1
0018c8  8b906011  add.s r1, r1, r22
0018cc  5b010000  j 8
0018d0  97105301  or r1, r6, r21
0018d4  1701fe00  and r2, r28, r15
0018d8  9bc00001  srli r1, r1, 16
0018dc  13012204  setlt.u r2, r4, r2
0018e0  73121ff8  store.h r1, -124(r30)
0018e4  3b600100  bneq r2, zero, 24
0018e8  9b400e01  srli r1, r28, 16
0018ec  9b801000  andi r1, r1, 1
0018f0  8b101e10  add.s r1, r28, r1
0018f4  8b906011  add.s r1, r1, r22
0018f8  5b010000  j 8
0018fc  97105e01  or r1, r28, r21
001900  1701fd00  and r2, r26, r15
001904  9bc00001  srli r1, r1, 16
001908  13012204  setlt.u r2, r4, r2
00190c  73131ff8  store.h r1, -122(r30)
001910  3b600100  bneq r2, zero, 24
001914  9b400d01  srli r1, r26, 16
001918  9b801000  andi r1, r1, 1
00191c  8b101d10  add.s r1, r26, r1
001920  8b906011  add.s r1, r1, r22
001924  5b010000  j 8
001928  97105d01  or r1, r26, r21
00192c  1701fc00  and r2, r24, r15
001930  9bc00001  srli r1, r1, 16
001934  13012204  setlt.u r2, r4, r2
001938  73141ff8  store.h r1, -120(r30)
00193c  3b600100  bneq r2, zero, 24
001940  9b400c01  srli r1, r24, 16
001944  9b801000  andi r1, r1, 1
001948  8b101c10  add.s r1, r24, r1
00194c  8b906011  add.s r1, r1, r22
001950  5b010000  j 8
001954  97105c01  or r1, r24, r21
001958  1781fb00  and r2, r23, r15
00195c  9bc00001  srli r1, r1, 16
001960  13012204  setlt.u r2, r4, r2
001964  73151ff8  store.h r1, -118(r30)
001968  3b600100  bneq r2, zero, 24
00196c  9bc00b01  srli r1, r23, 16
001970  9b801000  andi r1, r1, 1
001974  8b901b10  add.s r1, r23, r1
001978  8b906011  add.s r1, r1, r22
00197c  5b010000  j 8
001980  97905b01  or r1, r23, r21
001984  1701fa00  and r2, r20, r15
001988  9bc00001  srli r1, r1, 16
00198c  13012204  setlt.u r2, r4, r2
001990  73161ff8  store.h r1, -116(r30)
001994  3b600100  bneq r2, zero, 24
001998  9b400a01  srli r1, r20, 16
00199c  9b801000  andi r1, r1, 1
0019a0  8b101a10  add.s r1, r20, r1
0019a4  8b906011  add.s r1, r1, r22
0019a8  5b010000  j 8
0019ac  97105a01  or r1, r20, r21
0019b0  1781f900  and r2, r19, r15
0019b4  9bc00001  srli r1, r1, 16
0019b8  13012204  setlt.u r2, r4, r2
0019bc  73171ff8  store.h r1, -114(r30)
0019c0  3b600100  bneq r2, zero, 24
0019c4  9bc00901  srli r1, r19, 16
0019c8  9b801000  andi r1, r1, 1
0019cc  8b901910  add.s r1, r19, r1
0019d0  8b906011  add.s r1, r1, r22
0019d4  5b010000  j 8
0019d8  97905901  or r1, r19, r21
0019dc  1701f900  and r2, r18, r15
0019e0  9bc00001  srli r1, r1, 16
0019e4  13012204  setlt.u r2, r4, r2
0019e8  73181ff8  store.h r1, -112(r30)
0019ec  3b600100  bneq r2, zero, 24
0019f0  9b400901  srli r1, r18, 16
0019f4  9b801000  andi r1, r1, 1
0019f8  8b101910  add.s r1, r18, r1
0019fc  8b906011  add.s r1, r1, r22
001a00  5b010000  j 8
001a04  97105901  or r1, r18, r21
001a08  1701f500  and r2, r10, r15
001a0c  9bc00001  srli r1, r1, 16
001a10  13012204  setlt.u r2, r4, r2
001a14  73191ff8  store.h r1, -110(r30)
001a18  3b600100  bneq r2, zero, 24
001a1c  9b400501  srli r1, r10, 16
001a20  9b801000  andi r1, r1, 1
001a24  8b101510  add.s r1, r10, r1
001a28  8b906011  add.s r1, r1, r22
001a2c  5b010000  j 8
001a30  97105501  or r1, r10, r21
001a34  1701f400  and r2, r8, r15
001a38  9bc00001  srli r1, r1, 16
001a3c  13012204  setlt.u r2, r4, r2
001a40  731a1ff8  store.h r1, -108(r30)
001a44  3b600100  bneq r2, zero, 24
001a48  9b400401  srli r1, r8, 16
001a4c  9b801000  andi r1, r1, 1
001a50  8b101410  add.s r1, r8, r1
001a54  8b906011  add.s r1, r1, r22
001a58  5b010000  j 8
001a5c  97105401  or r1, r8, r21
001a60  1781f200  and r2, r5, r15
001a64  9bc00001  srli r1, r1, 16
001a68  2b09807f  lui r18, 522240
001a6c  e7019ffe  storeli.w r9, -232(r30)
001a70  13012204  setlt.u r2, r4, r2
001a74  731b1ff8  store.h r1, -106(r30)
001a78  3b600100  bneq r2, zero, 24
001a7c  9bc00201  srli r1, r5, 16
001a80  9b801000  andi r1, r1, 1
001a84  8b901210  add.s r1, r5, r1
001a88  8b916011  add.s r3, r1, r22
001a8c  5b010000  j 8
001a90  97915201  or r3, r5, r21
001a94  e305fffd  loadli.w r11,  -264(r30)
001a98  6302bffc  loadli.w r4,  -424(r30)
001a9c  e340cffc  loadli.w r1,  -412(r30)
001aa0  e3028ffc  loadli.w r5,  -448(r30)
001aa4  1bc50101  srli r10, r3, 16
001aa8  e3415ffc  loadli.w r3,  -468(r30)
001aac  731caff8  store.h r10, -104(r30)
001ab0  0b17b210  add.s r14, r4, r11
001ab4  6342affc  loadli.w r4,  -428(r30)
001ab8  8b94b010  add.s r9, r1, r11
001abc  e300cffc  loadli.w r1,  -416(r30)
001ac0  8b9bb210  add.s r23, r5, r11
001ac4  e3026ffc  loadli.w r5,  -464(r30)
001ac8  8b91b110  add.s r3, r3, r11
001acc  8b16b210  add.s r13, r4, r11
001ad0  6302affc  loadli.w r4,  -432(r30)
001ad4  0b91b010  add.s r2, r1, r11
001ad8  e340bffc  loadli.w r1,  -420(r30)
001adc  8b92b210  add.s r5, r5, r11
001ae0  0b1ab210  add.s r20, r4, r11
001ae4  63429ffc  loadli.w r4,  -436(r30)
001ae8  8b90b010  add.s r1, r1, r11
001aec  8b19b210  add.s r19, r4, r11
001af0  63029ffc  loadli.w r4,  -440(r30)
001af4  0b14b210  add.s r8, r4, r11
001af8  63428ffc  loadli.w r4,  -444(r30)
001afc  8b13b210  add.s r7, r4, r11
001b00  1702f600  and r4, r12, r15
001b04  13034904  setlt.u r6, r18, r4
001b08  63427ffc  loadli.w r4,  -452(r30)
001b0c  0b1cb210  add.s r24, r4, r11
001b10  63027ffc  loadli.w r4,  -456(r30)
001b14  0b18b210  add.s r16, r4, r11
001b18  63426ffc  loadli.w r4,  -460(r30)
001b1c  0b12b210  add.s r4, r4, r11
001b20  3b600300  bneq r6, zero, 24
001b24  1b430601  srli r6, r12, 16
001b28  1b031300  andi r6, r6, 1
001b2c  0b136610  add.s r6, r12, r6
001b30  0b136311  add.s r6, r6, r22
001b34  5b010000  j 8
001b38  17135601  or r6, r12, r21
001b3c  b3940428  sext_int2long r[10:11], r9
001b40  9f180000  addli r17, zero, 1
001b44  b3150128  sext_int2long r[12:13], r2
001b48  b3900028  sext_int2long r[2:3], r1
001b4c  97b41403  sll.d r[10:11], r[10:11], r17
001b50  97b01003  sll.d r[2:3], r[2:3], r17
001b54  73389ff2  store.d r[10:11], -208(r30)
001b58  97b41503  sll.d r[10:11], r[12:13], r17
001b5c  73381fee  store.d r[2:3], -272(r30)
001b60  b3100728  sext_int2long r[2:3], r14
001b64  b3950228  sext_int2long r[12:13], r5
001b68  73309ff2  store.d r[10:11], -224(r30)
001b6c  b3940628  sext_int2long r[10:11], r13
001b70  97b61003  sll.d r[14:15], r[2:3], r17
001b74  97b01403  sll.d r[2:3], r[10:11], r17
001b78  b3940928  sext_int2long r[10:11], r19
001b7c  73381fec  store.d r[2:3], -304(r30)
001b80  b3100a28  sext_int2long r[2:3], r20
001b84  97bd1403  sll.d r[28:29], r[10:11], r17
001b88  b3140c28  sext_int2long r[10:11], r24
001b8c  97bc1003  sll.d r[26:27], r[2:3], r17
001b90  b3100428  sext_int2long r[2:3], r8
001b94  b3930328  sext_int2long r[8:9], r7
001b98  97ba1003  sll.d r[22:23], r[2:3], r17
001b9c  b3900b28  sext_int2long r[2:3], r23
001ba0  e30b3ffe  loadli.w r23,  -232(r30)
001ba4  97b31303  sll.d r[8:9], r[8:9], r17
001ba8  97b91003  sll.d r[20:21], r[2:3], r17
001bac  97b01403  sll.d r[2:3], r[10:11], r17
001bb0  9784fb00  and r9, r23, r15
001bb4  733c1fec  store.d r[2:3], -296(r30)
001bb8  b3100828  sext_int2long r[2:3], r16
001bbc  13089904  setlt.u r16, r18, r9
001bc0  b3140228  sext_int2long r[10:11], r4
001bc4  97b01003  sll.d r[2:3], r[2:3], r17
001bc8  17b21403  sll.d r[5:6], r[10:11], r17
001bcc  97b41503  sll.d r[10:11], r[12:13], r17
001bd0  b3950128  sext_int2long r[12:13], r3
001bd4  9b410301  srli r3, r6, 16
001bd8  97b51503  sll.d r[12:13], r[12:13], r17
001bdc  731d3ff8  store.h r3, -102(r30)
001be0  3b700800  bneq r16, zero, 28
001be4  9bc10b01  srli r3, r23, 16
001be8  63037ffe  loadli.w r6,  -200(r30)
001bec  9b811100  andi r3, r3, 1
001bf0  8b913b10  add.s r3, r23, r3
001bf4  8b916110  add.s r3, r3, r6
001bf8  db010000  j 12
001bfc  ab014000  lui r3, 1024
001c00  97913b00  or r3, r23, r3
001c04  eb5b0f01  load.d r[24:25], 16(r30)
001c08  6b580ff0  load.d r[17:18], -256(r30)
001c0c  0ba80b11  add.ul r[17:18], r[24:25], r[17:18]
001c10  0ba37b10  add.ul r[7:8], r[24:25], r[8:9]
001c14  8ba6db10  add.ul r[14:15], r[24:25], r[14:15]
001c18  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001c1c  8bac9b11  add.ul r[26:27], r[24:25], r[26:27]
001c20  8badbb11  add.ul r[28:29], r[24:25], r[28:29]
001c24  8baa5b11  add.ul r[22:23], r[24:25], r[22:23]
001c28  8ba93b11  add.ul r[20:21], r[24:25], r[20:21]
001c2c  8ba5bb10  add.ul r[12:13], r[24:25], r[12:13]
001c30  73340fef  store.d r[17:18], -280(r30)
001c34  6b580ff3  load.d r[17:18], -208(r30)
001c38  733c6ff0  store.d r[7:8], -232(r30)
001c3c  eb538fed  load.d r[8:9], -296(r30)
001c40  7330dff0  store.d r[14:15], -256(r30)
001c44  eb560fed  load.d r[14:15], -304(r30)
001c48  73381ff2  store.d r[2:3], -208(r30)
001c4c  8ba04b10  add.ul r[2:3], r[24:25], r[5:6]
001c50  0ba80b11  add.ul r[17:18], r[24:25], r[17:18]
001c54  8ba6db10  add.ul r[14:15], r[24:25], r[14:15]
001c58  8ba37b10  add.ul r[8:9], r[24:25], r[8:9]
001c5c  73300fef  store.d r[17:18], -288(r30)
001c60  6b580ff2  load.d r[17:18], -224(r30)
001c64  73301ff2  store.d r[2:3], -224(r30)
001c68  9bc00101  srli r1, r3, 16
001c6c  731e1ff8  store.h r1, -100(r30)
001c70  0ba80b11  add.ul r[17:18], r[24:25], r[17:18]
001c74  733c0fef  store.d r[17:18], -264(r30)
001c78  6b580fef  load.d r[17:18], -272(r30)
001c7c  0ba80b11  add.ul r[17:18], r[24:25], r[17:18]
001c80  73380fef  store.d r[17:18], -272(r30)
001c84  63487ffe  loadli.w r16,  -196(r30)
001c88  1703f800  and r6, r16, r15
001c8c  13036904  setlt.u r6, r18, r6
001c90  8ba89b10  add.ul r[18:19], r[24:25], r[10:11]
001c94  b70703f2  beq r6, zero, -6688
001c98  ab004000  lui r1, 1024
001c9c  97101800  or r1, r16, r1
001ca0  5bbdfcff  j -6680
001ca4  9f0e0ffc  addli sp, r30, -512
001ca8  9f8e0e04  addli sp, sp, 512
001cac  00a00300  mfence { lm, sm, gm }
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
001ed8  00100000  exit
001edc  00100000  exit
001ee0  00100000  exit
001ee4  00100000  exit
001ee8  00100000  exit
001eec  00100000  exit
001ef0  00100000  exit
