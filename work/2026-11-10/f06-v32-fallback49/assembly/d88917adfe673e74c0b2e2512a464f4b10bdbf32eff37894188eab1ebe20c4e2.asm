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
0000dc  9f8e8efa  addli sp, sp, -704
0000e0  1f8f0e05  addli r30, sp, 640
0000e4  2b010000  lui r2, 0
0000e8  80300002  core_id r1
0000ec  abf20000  lui r5, 15
0000f0  00550002  load_param_i r10, 0
0000f4  e3434f00  loadli.w r7,  36(r30)
0000f8  63024f00  loadli.w r4,  32(r30)
0000fc  9bb12000  slli r3, r1, 2
000100  1f010100  addli r2, r2, 0
000104  9b94f2ff  ori r9, r5, 4095
000108  abf27fff  lui r5, 1046527
00010c  63035f00  loadli.w r6,  40(r30)
000110  0b942110  add.s r8, r3, r2
000114  9b92f2ff  ori r5, r5, 4095
000118  0b924320  mul.s r4, r7, r4
00011c  73680440  stores.w zero, 1040(r8)
000120  00a00300  mfence { lm, sm, gm }
000124  80a10404  csr_set csr3, r9
000128  00d00100  sync_group
00012c  e7088ffc  storeli.w r8, -376(r30)
000130  73605400  stores.w r5, 0(r8)
000134  0b126220  mul.s r4, r4, r6
000138  00a00300  mfence { lm, sm, gm }
00013c  67099ffc  storeli.w r9, -368(r30)
000140  80a10404  csr_set csr3, r9
000144  00d00100  sync_group
000148  67484ffc  storeli.w r4, -380(r30)
00014c  cb70a222  ble.s r4, r10, 17468
000150  1f028000  addli r4, zero, 64
000154  e3031ffd  loadli.w r7,  -376(r30)
000158  9f140000  addli r9, zero, 1
00015c  eb528f00  load.d r[6:7], 8(r30)
000160  ab084000  lui r17, 1024
000164  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000168  0b924030  div.s r4, r1, r4
00016c  9f832308  addli r7, r7, 1040
000170  e7477ffc  storeli.w r7, -388(r30)
000174  80d30002  load_param_i r7, 1
000178  67477ffc  storeli.w r7, -396(r30)
00017c  67084ffc  storeli.w r4, -384(r30)
000180  1b326200  slli r4, r4, 6
000184  0b924018  sub.s r4, r1, r4
000188  9b80f003  andi r1, r1, 63
00018c  1b324200  slli r4, r4, 4
000190  e74d1ffc  storeli.w r1, -292(r30)
000194  9b131200  ori r7, r4, 1
000198  e7074ffc  storeli.w r4, -392(r30)
00019c  67077ffc  storeli.w r7, -400(r30)
0001a0  9b132200  ori r7, r4, 2
0001a4  e7467ffc  storeli.w r7, -404(r30)
0001a8  9b133200  ori r7, r4, 3
0001ac  e7067ffc  storeli.w r7, -408(r30)
0001b0  9b134200  ori r7, r4, 4
0001b4  67467ffc  storeli.w r7, -412(r30)
0001b8  9b135200  ori r7, r4, 5
0001bc  67067ffc  storeli.w r7, -416(r30)
0001c0  9b136200  ori r7, r4, 6
0001c4  e7457ffc  storeli.w r7, -420(r30)
0001c8  9b137200  ori r7, r4, 7
0001cc  e7057ffc  storeli.w r7, -424(r30)
0001d0  9b138200  ori r7, r4, 8
0001d4  67457ffc  storeli.w r7, -428(r30)
0001d8  9b139200  ori r7, r4, 9
0001dc  67057ffc  storeli.w r7, -432(r30)
0001e0  9b13a200  ori r7, r4, 10
0001e4  e7447ffc  storeli.w r7, -436(r30)
0001e8  9b13b200  ori r7, r4, 11
0001ec  e7047ffc  storeli.w r7, -440(r30)
0001f0  9b13c200  ori r7, r4, 12
0001f4  67447ffc  storeli.w r7, -444(r30)
0001f8  9b13d200  ori r7, r4, 13
0001fc  67047ffc  storeli.w r7, -448(r30)
000200  9b13e200  ori r7, r4, 14
000204  e7437ffc  storeli.w r7, -452(r30)
000208  9b13f200  ori r7, r4, 15
00020c  e7037ffc  storeli.w r7, -456(r30)
000210  b3130228  sext_int2long r[8:9], r4
000214  2bf2ffff  lui r4, 1048575
000218  1b1202f0  ori r4, r4, 3840
00021c  97b39302  sll.d r[8:9], r[8:9], r9
000220  97814100  and r3, r3, r4
000224  0ba27210  add.ul r[5:6], r[6:7], r[8:9]
000228  1f038ffe  addli r6, r30, -192
00022c  9f034000  addli r7, zero, 32
000230  0b912110  add.s r2, r3, r2
000234  73384fe2  store.d r[5:6], -464(r30)
000238  9f002108  addli r1, r2, 1040
00023c  67032ffe  storeli.w r2, -208(r30)
000240  2bf17f7f  lui r2, 522239
000244  e7481ffc  storeli.w r1, -372(r30)
000248  ab700000  lui r1, 7
00024c  9b90f0ff  ori r1, r1, 4095
000250  67431ffe  storeli.w r1, -204(r30)
000254  abf0ff7f  lui r1, 524287
000258  9b9df0ff  ori r27, r1, 4095
00025c  9b10f1ff  ori r1, r2, 4095
000260  e7431ffe  storeli.w r1, -196(r30)
000264  9f200000  addli r1, zero, 2
000268  e703bfff  storeli.w r27, -200(r30)
00026c  fe8100e0  vmmov mr3, r1
000270  db2e0000  j 372
000274  9b400c01  srli r1, r24, 16
000278  63416ffe  loadli.w r2,  -204(r30)
00027c  9b801000  andi r1, r1, 1
000280  8b101c10  add.s r1, r24, r1
000284  8b902010  add.s r1, r1, r2
000288  9bc00001  srli r1, r1, 16
00028c  1f240000  addli r8, zero, 2
000290  9f020fff  addli r5, r30, -128
000294  2b0100f0  lui r2, 983040
000298  1f038ffe  addli r6, r30, -192
00029c  9f034000  addli r7, zero, 32
0002a0  731f1ff8  store.h r1, -98(r30)
0002a4  ab0000f0  lui r1, 983040
0002a8  17112400  or r2, r8, r2
0002ac  00a00000  mfence { lm }
0002b0  eb518fee  load.d r[4:5], -280(r30)
0002b4  97101400  or r1, r8, r1
0002b8  eb568fef  load.d r[14:15], -264(r30)
0002bc  ffb05100  s_lm2gm r1, r5, 0(r[4:5])
0002c0  e3401ffe  loadli.w r1,  -244(r30)
0002c4  eb510fee  load.d r[4:5], -288(r30)
0002c8  7fb11100  s_lm2gm r2, r1, 0(r[4:5])
0002cc  2b0100f0  lui r2, 983040
0002d0  9fc00200  addli r1, r5, 4
0002d4  ab0100f0  lui r3, 983040
0002d8  1fe20200  addli r4, r5, 6
0002dc  17112400  or r2, r8, r2
0002e0  97113400  or r3, r8, r3
0002e4  7fb11600  s_lm2gm r2, r1, 0(r[14:15])
0002e8  eb500fef  load.d r[2:3], -272(r30)
0002ec  eb560ff0  load.d r[14:15], -256(r30)
0002f0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0002f4  ab0100f0  lui r3, 983040
0002f8  2b0200f0  lui r4, 983040
0002fc  9f801200  addli r1, r5, 8
000300  1fa11200  addli r2, r5, 10
000304  97113400  or r3, r8, r3
000308  17124400  or r4, r8, r4
00030c  7fb22400  s_lm2gm r4, r2, 0(r[10:11])
000310  ffb11600  s_lm2gm r3, r1, 0(r[14:15])
000314  ab0100f0  lui r3, 983040
000318  2b0200f0  lui r4, 983040
00031c  9fc01200  addli r1, r5, 12
000320  1fe11200  addli r2, r5, 14
000324  eb540ff1  load.d r[10:11], -240(r30)
000328  97113400  or r3, r8, r3
00032c  17124400  or r4, r8, r4
000330  ffb11500  s_lm2gm r3, r1, 0(r[12:13])
000334  7fb22a00  s_lm2gm r4, r2, 0(r[22:23])
000338  ab0100f0  lui r3, 983040
00033c  2b0200f0  lui r4, 983040
000340  9f802200  addli r1, r5, 16
000344  1fa12200  addli r2, r5, 18
000348  97113400  or r3, r8, r3
00034c  17124400  or r4, r8, r4
000350  ffb11c00  s_lm2gm r3, r1, 0(r[26:27])
000354  7fb22900  s_lm2gm r4, r2, 0(r[20:21])
000358  ab0100f0  lui r3, 983040
00035c  2b0200f0  lui r4, 983040
000360  9fc02200  addli r1, r5, 20
000364  1fe12200  addli r2, r5, 22
000368  97113400  or r3, r8, r3
00036c  17124400  or r4, r8, r4
000370  ffb11800  s_lm2gm r3, r1, 0(r[18:19])
000374  7fb22700  s_lm2gm r4, r2, 0(r[16:17])
000378  ab0100f0  lui r3, 983040
00037c  2b0200f0  lui r4, 983040
000380  9f803200  addli r1, r5, 24
000384  1fa13200  addli r2, r5, 26
000388  ab084000  lui r17, 1024
00038c  97113400  or r3, r8, r3
000390  17124400  or r4, r8, r4
000394  7fb22400  s_lm2gm r4, r2, 0(r[10:11])
000398  ffb11d00  s_lm2gm r3, r1, 0(r[28:29])
00039c  ab0100f0  lui r3, 983040
0003a0  2b0200f0  lui r4, 983040
0003a4  9fc03200  addli r1, r5, 28
0003a8  1fe13200  addli r2, r5, 30
0003ac  6305bffd  loadli.w r10,  -296(r30)
0003b0  97113400  or r3, r8, r3
0003b4  17124400  or r4, r8, r4
0003b8  6b540ff2  load.d r[9:10], -224(r30)
0003bc  ff311400  s_lm2gm r3, r1, 0(r[9:10])
0003c0  6b548ff1  load.d r[9:10], -232(r30)
0003c4  e340effc  loadli.w r1,  -396(r30)
0003c8  7f322400  s_lm2gm r4, r2, 0(r[9:10])
0003cc  0b151510  add.s r10, r10, r1
0003d0  00a00000  mfence { lm }
0003d4  e3400ffd  loadli.w r1,  -380(r30)
0003d8  e30d7ffe  loadli.w r27,  -200(r30)
0003dc  3f201500  blt.s r10, r1, 8
0003e0  5b350800  j 16808
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
00040c  e70daffc  storeli.w r10, -296(r30)
000410  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000414  1f190000  addli r18, zero, 1
000418  12310002  vadd.s.mz vr2{mr1}, zero, vr0
00041c  7e0109e0  vmmov mr2, r18
000420  8b101530  div.s r1, r10, r1
000424  8b902030  div.s r1, r1, r2
000428  63010ffd  loadli.w r2,  -384(r30)
00042c  0b9b2010  add.s r22, r1, r2
000430  e300fffc  loadli.w r1,  -392(r30)
000434  1b31ab00  slli r2, r22, 10
000438  8b101110  add.s r1, r2, r1
00043c  e70c2ffc  storeli.w r2, -312(r30)
000440  2b0100f0  lui r2, 983040
000444  b3910028  sext_int2long r[4:5], r1
000448  17912300  or r2, r7, r2
00044c  ab0000f0  lui r1, 983040
000450  17b45102  sll.d r[9:10], r[4:5], r5
000454  eb510f00  load.d r[4:5], 0(r30)
000458  97901300  or r1, r7, r1
00045c  73388fec  store.d r[9:10], -304(r30)
000460  8ba18110  add.ul r[4:5], r[4:5], r[9:10]
000464  7fa16100  l_gm2lm r2, r6, 0(r[4:5])
000468  6b510fe3  load.d r[3:4], -464(r30)
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
0004b0  eb378ff5  load.hu r15, -168(r30)
0004b4  6b38eff5  load.hu r16, -162(r30)
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
000574  b3910718  bfloat2float.rn r3, r15
000578  7e0002e0  vmmov mr0, r4
00057c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000580  9f010040  addli r3, zero, 8192
000584  7e8001e0  vmmov mr0, r3
000588  ea201130  vor.u.mh vr1{mr0}, r2, vr1
00058c  2b410000  lui r2, 4
000590  7e0001e0  vmmov mr0, r2
000594  2b810000  lui r2, 8
000598  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00059c  b3100818  bfloat2float.rn r1, r16
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
0005e0  eb37cff9  load.hu r15, -100(r30)
0005e4  6b38eff9  load.hu r16, -98(r30)
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
000638  2b03807f  lui r6, 522240
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
0006bc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006c0  b3900718  bfloat2float.rn r1, r15
0006c4  7e0101e0  vmmov mr2, r2
0006c8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006cc  b3100818  bfloat2float.rn r1, r16
0006d0  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0006d4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0006d8  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0006dc  00a00000  mfence { lm }
0006e0  e30a8fff  loadli.w r21,  -64(r30)
0006e4  634a8fff  loadli.w r20,  -60(r30)
0006e8  e3099fff  loadli.w r19,  -56(r30)
0006ec  63499fff  loadli.w r18,  -52(r30)
0006f0  6307afff  loadli.w r14,  -48(r30)
0006f4  e346afff  loadli.w r13,  -44(r30)
0006f8  6306bfff  loadli.w r12,  -40(r30)
0006fc  e344bfff  loadli.w r9,  -36(r30)
000700  e300cfff  loadli.w r1,  -32(r30)
000704  9781ba01  and r3, r21, r27
000708  e70e1ffc  storeli.w r1, -280(r30)
00070c  e34ccfff  loadli.w r25,  -28(r30)
000710  e307dfff  loadli.w r15,  -24(r30)
000714  e345dfff  loadli.w r11,  -20(r30)
000718  e303efff  loadli.w r7,  -16(r30)
00071c  6348efff  loadli.w r16,  -12(r30)
000720  630effff  loadli.w r28,  -8(r30)
000724  6341ffff  loadli.w r2,  -4(r30)
000728  93003304  setlt.u r1, r6, r3
00072c  3bb00000  bneq r1, zero, 12
000730  67005fff  storeli.w r21, -256(r30)
000734  db010000  j 12
000738  97901a01  or r1, r21, r17
00073c  67001ffe  storeli.w r1, -256(r30)
000740  170dba01  and r26, r20, r27
000744  9300a305  setlt.u r1, r6, r26
000748  3bb00000  bneq r1, zero, 12
00074c  e7404fff  storeli.w r20, -244(r30)
000750  db010000  j 12
000754  97101a01  or r1, r20, r17
000758  e7401ffe  storeli.w r1, -244(r30)
00075c  1785b901  and r10, r19, r27
000760  9300a304  setlt.u r1, r6, r10
000764  3bb00000  bneq r1, zero, 12
000768  67013fff  storeli.w r19, -240(r30)
00076c  db010000  j 12
000770  97901901  or r1, r19, r17
000774  67011ffe  storeli.w r1, -240(r30)
000778  170cb901  and r24, r18, r27
00077c  670e6ffd  storeli.w r22, -288(r30)
000780  93008305  setlt.u r1, r6, r24
000784  3bb00000  bneq r1, zero, 12
000788  e7012fff  storeli.w r18, -232(r30)
00078c  db010000  j 12
000790  97101901  or r1, r18, r17
000794  e7011ffe  storeli.w r1, -232(r30)
000798  970bb701  and r23, r14, r27
00079c  93007305  setlt.u r1, r6, r23
0007a0  3bb00000  bneq r1, zero, 12
0007a4  6702effe  storeli.w r14, -224(r30)
0007a8  db010000  j 12
0007ac  97101701  or r1, r14, r17
0007b0  67021ffe  storeli.w r1, -224(r30)
0007b4  9782b601  and r5, r13, r27
0007b8  93005304  setlt.u r1, r6, r5
0007bc  3bb00000  bneq r1, zero, 12
0007c0  e742dffe  storeli.w r13, -212(r30)
0007c4  db010000  j 12
0007c8  97901601  or r1, r13, r17
0007cc  e7421ffe  storeli.w r1, -212(r30)
0007d0  1702b601  and r4, r12, r27
0007d4  e70f2ffc  storeli.w r2, -264(r30)
0007d8  93004304  setlt.u r1, r6, r4
0007dc  3bb00000  bneq r1, zero, 12
0007e0  670bcffc  storeli.w r12, -336(r30)
0007e4  db010000  j 12
0007e8  97101601  or r1, r12, r17
0007ec  670b1ffc  storeli.w r1, -336(r30)
0007f0  1781b401  and r2, r9, r27
0007f4  2b044000  lui r8, 1024
0007f8  67499ffc  storeli.w r9, -364(r30)
0007fc  93002304  setlt.u r1, r6, r2
000800  3bb00000  bneq r1, zero, 12
000804  674b9ffc  storeli.w r9, -332(r30)
000808  db010000  j 12
00080c  97901401  or r1, r9, r17
000810  674b1ffc  storeli.w r1, -332(r30)
000814  670f7ffc  storeli.w r7, -272(r30)
000818  e303dffd  loadli.w r7,  -280(r30)
00081c  ab04807f  lui r9, 522240
000820  9780b301  and r1, r7, r27
000824  13031304  setlt.u r6, r6, r1
000828  37200300  beq r6, zero, 8
00082c  97938300  or r7, r7, r8
000830  178bbc01  and r22, r25, r27
000834  e7099ffd  storeli.w r25, -360(r30)
000838  13836405  setlt.u r6, r9, r22
00083c  37200300  beq r6, zero, 8
000840  979c8c00  or r25, r25, r8
000844  9788b701  and r17, r15, r27
000848  e749fffc  storeli.w r15, -356(r30)
00084c  13831405  setlt.u r6, r9, r17
000850  3b300300  bneq r6, zero, 12
000854  670cfffc  storeli.w r15, -320(r30)
000858  db010000  j 12
00085c  17938700  or r6, r15, r8
000860  670c6ffc  storeli.w r6, -320(r30)
000864  9787b501  and r15, r11, r27
000868  e70b7ffc  storeli.w r7, -328(r30)
00086c  670abffc  storeli.w r11, -352(r30)
000870  1383f404  setlt.u r6, r9, r15
000874  3b300300  bneq r6, zero, 12
000878  e74abffc  storeli.w r11, -340(r30)
00087c  db010000  j 12
000880  17938500  or r6, r11, r8
000884  e74a6ffc  storeli.w r6, -340(r30)
000888  e303effd  loadli.w r7,  -272(r30)
00088c  9785b301  and r11, r7, r27
000890  1383b404  setlt.u r6, r9, r11
000894  3b300300  bneq r6, zero, 12
000898  e74b7ffc  storeli.w r7, -324(r30)
00089c  db010000  j 12
0008a0  17938300  or r6, r7, r8
0008a4  e74b6ffc  storeli.w r6, -324(r30)
0008a8  9703b801  and r7, r16, r27
0008ac  674a0ffd  storeli.w r16, -348(r30)
0008b0  13837404  setlt.u r6, r9, r7
0008b4  3b300300  bneq r6, zero, 12
0008b8  674c0ffd  storeli.w r16, -316(r30)
0008bc  db010000  j 12
0008c0  17138800  or r6, r16, r8
0008c4  674c6ffc  storeli.w r6, -316(r30)
0008c8  1708be01  and r16, r28, r27
0008cc  e70acffd  storeli.w r28, -344(r30)
0008d0  13830405  setlt.u r6, r9, r16
0008d4  3b300300  bneq r6, zero, 12
0008d8  1f040e00  addli r8, r28, 0
0008dc  5b010000  j 8
0008e0  17148e00  or r8, r28, r8
0008e4  630efffd  loadli.w r28,  -264(r30)
0008e8  1703be01  and r6, r28, r27
0008ec  938d6404  setlt.u r27, r9, r6
0008f0  37b00d00  beq r27, zero, 12
0008f4  ab0d4000  lui r27, 1024
0008f8  171ebe01  or r28, r28, r27
0008fc  e34d7ffe  loadli.w r27,  -196(r30)
000900  93813d04  setlt.u r3, r27, r3
000904  e30d7ffe  loadli.w r27,  -200(r30)
000908  bb900100  bneq r3, zero, 36
00090c  9bc10a01  srli r3, r21, 16
000910  9b811100  andi r3, r3, 1
000914  8b913a10  add.s r3, r21, r3
000918  e34a6ffe  loadli.w r21,  -204(r30)
00091c  8b915111  add.s r3, r3, r21
000920  ab0affff  lui r21, 1048560
000924  97815101  and r3, r3, r21
000928  67003ffe  storeli.w r3, -256(r30)
00092c  e3417ffe  loadli.w r3,  -196(r30)
000930  9381a105  setlt.u r3, r3, r26
000934  bb900100  bneq r3, zero, 36
000938  9b410a01  srli r3, r20, 16
00093c  9b811100  andi r3, r3, 1
000940  8b113a10  add.s r3, r20, r3
000944  634a6ffe  loadli.w r20,  -204(r30)
000948  8b914111  add.s r3, r3, r20
00094c  2b0affff  lui r20, 1048560
000950  97814101  and r3, r3, r20
000954  e7403ffe  storeli.w r3, -244(r30)
000958  e3417ffe  loadli.w r3,  -196(r30)
00095c  630d6ffd  loadli.w r26,  -336(r30)
000960  9381a104  setlt.u r3, r3, r10
000964  bb900100  bneq r3, zero, 36
000968  9bc10901  srli r3, r19, 16
00096c  9b811100  andi r3, r3, 1
000970  8b913910  add.s r3, r19, r3
000974  e3496ffe  loadli.w r19,  -204(r30)
000978  8b913111  add.s r3, r3, r19
00097c  ab09ffff  lui r19, 1048560
000980  97813101  and r3, r3, r19
000984  67013ffe  storeli.w r3, -240(r30)
000988  e3417ffe  loadli.w r3,  -196(r30)
00098c  63456ffd  loadli.w r10,  -332(r30)
000990  93818105  setlt.u r3, r3, r24
000994  2b0cffff  lui r24, 1048560
000998  bb800100  bneq r3, zero, 32
00099c  9b410901  srli r3, r18, 16
0009a0  9b811100  andi r3, r3, 1
0009a4  8b113910  add.s r3, r18, r3
0009a8  63496ffe  loadli.w r18,  -204(r30)
0009ac  8b912111  add.s r3, r3, r18
0009b0  97818101  and r3, r3, r24
0009b4  e7013ffe  storeli.w r3, -232(r30)
0009b8  e3417ffe  loadli.w r3,  -196(r30)
0009bc  630a0ffe  loadli.w r20,  -256(r30)
0009c0  93817105  setlt.u r3, r3, r23
0009c4  e34b6ffe  loadli.w r23,  -204(r30)
0009c8  3bf00100  bneq r3, zero, 28
0009cc  9b410701  srli r3, r14, 16
0009d0  9b811100  andi r3, r3, 1
0009d4  8b113710  add.s r3, r14, r3
0009d8  8b917111  add.s r3, r3, r23
0009dc  97818101  and r3, r3, r24
0009e0  67023ffe  storeli.w r3, -224(r30)
0009e4  e3417ffe  loadli.w r3,  -196(r30)
0009e8  e3491ffe  loadli.w r19,  -244(r30)
0009ec  93815104  setlt.u r3, r3, r5
0009f0  3bf00100  bneq r3, zero, 28
0009f4  9bc10601  srli r3, r13, 16
0009f8  9b811100  andi r3, r3, 1
0009fc  8b913610  add.s r3, r13, r3
000a00  8b917111  add.s r3, r3, r23
000a04  97818101  and r3, r3, r24
000a08  e7423ffe  storeli.w r3, -212(r30)
000a0c  e3417ffe  loadli.w r3,  -196(r30)
000a10  e3425ffd  loadli.w r5,  -340(r30)
000a14  63092ffe  loadli.w r18,  -240(r30)
000a18  93814104  setlt.u r3, r3, r4
000a1c  3be00100  bneq r3, zero, 24
000a20  9b410601  srli r3, r12, 16
000a24  9b811100  andi r3, r3, 1
000a28  8b113610  add.s r3, r12, r3
000a2c  8b917111  add.s r3, r3, r23
000a30  178d8101  and r26, r3, r24
000a34  e3417ffe  loadli.w r3,  -196(r30)
000a38  63427ffd  loadli.w r4,  -324(r30)
000a3c  e3047ffd  loadli.w r9,  -328(r30)
000a40  63073ffe  loadli.w r14,  -232(r30)
000a44  13812104  setlt.u r2, r3, r2
000a48  3b700100  bneq r2, zero, 28
000a4c  e3412ffd  loadli.w r3,  -364(r30)
000a50  1bc10101  srli r2, r3, 16
000a54  1b011100  andi r2, r2, 1
000a58  0b912110  add.s r2, r3, r2
000a5c  0b117111  add.s r2, r2, r23
000a60  17058101  and r10, r2, r24
000a64  63417ffe  loadli.w r2,  -196(r30)
000a68  e3418ffd  loadli.w r3,  -316(r30)
000a6c  e3064ffe  loadli.w r13,  -224(r30)
000a70  93001104  setlt.u r1, r2, r1
000a74  3bf00000  bneq r1, zero, 28
000a78  6301dffd  loadli.w r2,  -280(r30)
000a7c  9b400101  srli r1, r2, 16
000a80  9b801000  andi r1, r1, 1
000a84  8b101110  add.s r1, r2, r1
000a88  8b907011  add.s r1, r1, r23
000a8c  97848001  and r9, r1, r24
000a90  63417ffe  loadli.w r2,  -196(r30)
000a94  63465ffe  loadli.w r12,  -212(r30)
000a98  93006105  setlt.u r1, r2, r22
000a9c  3bf00000  bneq r1, zero, 28
000aa0  e30a3ffd  loadli.w r21,  -360(r30)
000aa4  9bc00a01  srli r1, r21, 16
000aa8  9b801000  andi r1, r1, 1
000aac  8b901a10  add.s r1, r21, r1
000ab0  8b907011  add.s r1, r1, r23
000ab4  978c8001  and r25, r1, r24
000ab8  93001105  setlt.u r1, r2, r17
000abc  e3088ffd  loadli.w r17,  -320(r30)
000ac0  3bf00000  bneq r1, zero, 28
000ac4  e3483ffd  loadli.w r17,  -356(r30)
000ac8  9bc00801  srli r1, r17, 16
000acc  9b801000  andi r1, r1, 1
000ad0  8b901810  add.s r1, r17, r1
000ad4  8b907011  add.s r1, r1, r23
000ad8  97888001  and r17, r1, r24
000adc  9300f104  setlt.u r1, r2, r15
000ae0  3bf00000  bneq r1, zero, 28
000ae4  e3024ffd  loadli.w r5,  -352(r30)
000ae8  9bc00201  srli r1, r5, 16
000aec  9b801000  andi r1, r1, 1
000af0  8b901210  add.s r1, r5, r1
000af4  8b907011  add.s r1, r1, r23
000af8  97828001  and r5, r1, r24
000afc  9300b104  setlt.u r1, r2, r11
000b00  630b2ffd  loadli.w r22,  -368(r30)
000b04  9f070400  addli r15, r8, 0
000b08  3bf00000  bneq r1, zero, 28
000b0c  6302effd  loadli.w r4,  -272(r30)
000b10  9b400201  srli r1, r4, 16
000b14  9b801000  andi r1, r1, 1
000b18  8b101210  add.s r1, r4, r1
000b1c  8b907011  add.s r1, r1, r23
000b20  17828001  and r4, r1, r24
000b24  93007104  setlt.u r1, r2, r7
000b28  9f050e00  addli r11, r28, 0
000b2c  3bf00000  bneq r1, zero, 28
000b30  e3414ffd  loadli.w r3,  -348(r30)
000b34  9bc00101  srli r1, r3, 16
000b38  9b801000  andi r1, r1, 1
000b3c  8b901110  add.s r1, r3, r1
000b40  8b907011  add.s r1, r1, r23
000b44  97818001  and r3, r1, r24
000b48  93000105  setlt.u r1, r2, r16
000b4c  2b0e4000  lui r28, 1024
000b50  3bf00000  bneq r1, zero, 28
000b54  e3035ffd  loadli.w r7,  -344(r30)
000b58  9bc00301  srli r1, r7, 16
000b5c  9b801000  andi r1, r1, 1
000b60  8b901310  add.s r1, r7, r1
000b64  8b907011  add.s r1, r1, r23
000b68  97878001  and r15, r1, r24
000b6c  93006104  setlt.u r1, r2, r6
000b70  3bf00000  bneq r1, zero, 28
000b74  6301fffd  loadli.w r2,  -264(r30)
000b78  9b400101  srli r1, r2, 16
000b7c  9b801000  andi r1, r1, 1
000b80  8b101110  add.s r1, r2, r1
000b84  8b907011  add.s r1, r1, r23
000b88  97858001  and r11, r1, r24
000b8c  9700ba01  and r1, r20, r27
000b90  2b01807f  lui r2, 522240
000b94  93001104  setlt.u r1, r2, r1
000b98  3be00000  bneq r1, zero, 24
000b9c  9b400a01  srli r1, r20, 16
000ba0  9b801000  andi r1, r1, 1
000ba4  8b101a10  add.s r1, r20, r1
000ba8  8b9a7011  add.s r21, r1, r23
000bac  5b010000  j 8
000bb0  971aca01  or r21, r20, r28
000bb4  9780b901  and r1, r19, r27
000bb8  93001104  setlt.u r1, r2, r1
000bbc  3be00000  bneq r1, zero, 24
000bc0  9bc00901  srli r1, r19, 16
000bc4  9b801000  andi r1, r1, 1
000bc8  8b901910  add.s r1, r19, r1
000bcc  0b9a7011  add.s r20, r1, r23
000bd0  5b010000  j 8
000bd4  179ac901  or r20, r19, r28
000bd8  9700b901  and r1, r18, r27
000bdc  93001104  setlt.u r1, r2, r1
000be0  3be00000  bneq r1, zero, 24
000be4  9b400901  srli r1, r18, 16
000be8  9b801000  andi r1, r1, 1
000bec  8b101910  add.s r1, r18, r1
000bf0  8b997011  add.s r19, r1, r23
000bf4  5b010000  j 8
000bf8  9719c901  or r19, r18, r28
000bfc  9700b701  and r1, r14, r27
000c00  93001104  setlt.u r1, r2, r1
000c04  3be00000  bneq r1, zero, 24
000c08  9b400701  srli r1, r14, 16
000c0c  9b801000  andi r1, r1, 1
000c10  8b101710  add.s r1, r14, r1
000c14  0b997011  add.s r18, r1, r23
000c18  5b010000  j 8
000c1c  1719c701  or r18, r14, r28
000c20  9780b601  and r1, r13, r27
000c24  93001104  setlt.u r1, r2, r1
000c28  3be00000  bneq r1, zero, 24
000c2c  9bc00601  srli r1, r13, 16
000c30  9b801000  andi r1, r1, 1
000c34  8b901610  add.s r1, r13, r1
000c38  0b977011  add.s r14, r1, r23
000c3c  5b010000  j 8
000c40  1797c601  or r14, r13, r28
000c44  9700b601  and r1, r12, r27
000c48  93001104  setlt.u r1, r2, r1
000c4c  3be00000  bneq r1, zero, 24
000c50  9b400601  srli r1, r12, 16
000c54  9b801000  andi r1, r1, 1
000c58  8b101610  add.s r1, r12, r1
000c5c  8b967011  add.s r13, r1, r23
000c60  5b010000  j 8
000c64  9716c601  or r13, r12, r28
000c68  9700bd01  and r1, r26, r27
000c6c  93001104  setlt.u r1, r2, r1
000c70  3be00000  bneq r1, zero, 24
000c74  9b400d01  srli r1, r26, 16
000c78  9b801000  andi r1, r1, 1
000c7c  8b101d10  add.s r1, r26, r1
000c80  0b967011  add.s r12, r1, r23
000c84  5b010000  j 8
000c88  1716cd01  or r12, r26, r28
000c8c  9700b501  and r1, r10, r27
000c90  93001104  setlt.u r1, r2, r1
000c94  3be00000  bneq r1, zero, 24
000c98  9b400501  srli r1, r10, 16
000c9c  9b801000  andi r1, r1, 1
000ca0  8b101510  add.s r1, r10, r1
000ca4  0b957011  add.s r10, r1, r23
000ca8  5b010000  j 8
000cac  1715c501  or r10, r10, r28
000cb0  9780b401  and r1, r9, r27
000cb4  93001104  setlt.u r1, r2, r1
000cb8  3be00000  bneq r1, zero, 24
000cbc  9bc00401  srli r1, r9, 16
000cc0  9b801000  andi r1, r1, 1
000cc4  8b901410  add.s r1, r9, r1
000cc8  8b947011  add.s r9, r1, r23
000ccc  5b010000  j 8
000cd0  9794c401  or r9, r9, r28
000cd4  9780bc01  and r1, r25, r27
000cd8  93001104  setlt.u r1, r2, r1
000cdc  3be00000  bneq r1, zero, 24
000ce0  9bc00c01  srli r1, r25, 16
000ce4  9b801000  andi r1, r1, 1
000ce8  8b901c10  add.s r1, r25, r1
000cec  0b947011  add.s r8, r1, r23
000cf0  5b010000  j 8
000cf4  1794cc01  or r8, r25, r28
000cf8  9780b801  and r1, r17, r27
000cfc  ab03807f  lui r7, 522240
000d00  93001104  setlt.u r1, r2, r1
000d04  3be00000  bneq r1, zero, 24
000d08  9bc00801  srli r1, r17, 16
000d0c  9b801000  andi r1, r1, 1
000d10  8b901810  add.s r1, r17, r1
000d14  0b937011  add.s r6, r1, r23
000d18  5b010000  j 8
000d1c  1793c801  or r6, r17, r28
000d20  9780b201  and r1, r5, r27
000d24  93801304  setlt.u r1, r7, r1
000d28  3be00000  bneq r1, zero, 24
000d2c  9bc00201  srli r1, r5, 16
000d30  9b801000  andi r1, r1, 1
000d34  8b901210  add.s r1, r5, r1
000d38  8b927011  add.s r5, r1, r23
000d3c  5b010000  j 8
000d40  9792c201  or r5, r5, r28
000d44  9700b201  and r1, r4, r27
000d48  93801304  setlt.u r1, r7, r1
000d4c  3be00000  bneq r1, zero, 24
000d50  9b400201  srli r1, r4, 16
000d54  9b801000  andi r1, r1, 1
000d58  8b101210  add.s r1, r4, r1
000d5c  0b927011  add.s r4, r1, r23
000d60  5b010000  j 8
000d64  1712c201  or r4, r4, r28
000d68  9780b101  and r1, r3, r27
000d6c  93801304  setlt.u r1, r7, r1
000d70  3be00000  bneq r1, zero, 24
000d74  9bc00101  srli r1, r3, 16
000d78  9b801000  andi r1, r1, 1
000d7c  8b901110  add.s r1, r3, r1
000d80  8b917011  add.s r3, r1, r23
000d84  5b010000  j 8
000d88  9791c101  or r3, r3, r28
000d8c  9780b701  and r1, r15, r27
000d90  93801304  setlt.u r1, r7, r1
000d94  3be00000  bneq r1, zero, 24
000d98  9bc00701  srli r1, r15, 16
000d9c  9b801000  andi r1, r1, 1
000da0  8b901710  add.s r1, r15, r1
000da4  0b917011  add.s r2, r1, r23
000da8  5b010000  j 8
000dac  1791c701  or r2, r15, r28
000db0  9780b501  and r1, r11, r27
000db4  93801304  setlt.u r1, r7, r1
000db8  3be00000  bneq r1, zero, 24
000dbc  9bc00501  srli r1, r11, 16
000dc0  9b801000  andi r1, r1, 1
000dc4  8b901510  add.s r1, r11, r1
000dc8  8b907011  add.s r1, r1, r23
000dcc  5b010000  j 8
000dd0  9790c501  or r1, r11, r28
000dd4  978c8a01  and r25, r21, r24
000dd8  170d8a01  and r26, r20, r24
000ddc  e30bcffd  loadli.w r23,  -288(r30)
000de0  93639d05  setlt.f r7, r26, r25
000de4  9f850c00  addli r11, r25, 0
000de8  3ba00300  bneq r7, zero, 8
000dec  9f050d00  addli r11, r26, 0
000df0  9bb39c00  slli r7, r25, 9
000df4  9b379d00  slli r15, r26, 9
000df8  1bc87a01  srli r16, r21, 23
000dfc  9b487a01  srli r17, r20, 23
000e00  93830300  seteq r7, r7, zero
000e04  93870700  seteq r15, r15, zero
000e08  1b08f80f  andi r16, r16, 255
000e0c  9b88f80f  andi r17, r17, 255
000e10  1b78f80f  setlti r16, r16, 255
000e14  9bf8f80f  setlti r17, r17, 255
000e18  97137800  or r7, r16, r7
000e1c  9797f800  or r15, r17, r15
000e20  9783f300  and r7, r7, r15
000e24  b7d40312  beq r7, zero, 9524
000e28  9f870c00  addli r15, r25, 0
000e2c  bbe40c12  bneq r25, zero, 9528
000e30  9f030d00  addli r7, r26, 0
000e34  37200d00  beq r26, zero, 8
000e38  9f830700  addli r7, r15, 0
000e3c  9367b006  setle.f r15, zero, r11
000e40  13e80506  setle.f r16, r11, zero
000e44  9707f800  and r15, r16, r15
000e48  3ba00700  bneq r15, zero, 8
000e4c  9f830500  addli r7, r11, 0
000e50  178a8901  and r20, r19, r24
000e54  9f870300  addli r15, r7, 0
000e58  93657a04  setlt.f r11, r20, r7
000e5c  3ba00500  bneq r11, zero, 8
000e60  9f070a00  addli r15, r20, 0
000e64  9b359a00  slli r11, r20, 9
000e68  1bb89300  slli r16, r7, 9
000e6c  9bc87901  srli r17, r19, 23
000e70  9bc97301  srli r19, r7, 23
000e74  93850500  seteq r11, r11, zero
000e78  13080800  seteq r16, r16, zero
000e7c  9b88f80f  andi r17, r17, 255
000e80  9b89f90f  andi r19, r19, 255
000e84  9bf8f80f  setlti r17, r17, 255
000e88  9bf9f90f  setlti r19, r19, 255
000e8c  9795b800  or r11, r17, r11
000e90  17980901  or r16, r19, r16
000e94  9705b800  and r11, r16, r11
000e98  37f30512  beq r11, zero, 9436
000e9c  bb830312  bneq r7, zero, 9440
000ea0  9f050a00  addli r11, r20, 0
000ea4  37200a00  beq r20, zero, 8
000ea8  9f850300  addli r11, r7, 0
000eac  9363f006  setle.f r7, zero, r15
000eb0  13e80706  setle.f r16, r15, zero
000eb4  97037800  and r7, r16, r7
000eb8  3ba00300  bneq r7, zero, 8
000ebc  9f850700  addli r11, r15, 0
000ec0  97098901  and r19, r18, r24
000ec4  9f870500  addli r15, r11, 0
000ec8  93e3b904  setlt.f r7, r19, r11
000ecc  3ba00300  bneq r7, zero, 8
000ed0  9f870900  addli r15, r19, 0
000ed4  9bb39900  slli r7, r19, 9
000ed8  1bb89500  slli r16, r11, 9
000edc  9b487901  srli r17, r18, 23
000ee0  1bc97501  srli r18, r11, 23
000ee4  93830300  seteq r7, r7, zero
000ee8  13080800  seteq r16, r16, zero
000eec  9b88f80f  andi r17, r17, 255
000ef0  1b09f90f  andi r18, r18, 255
000ef4  9bf8f80f  setlti r17, r17, 255
000ef8  1b79f90f  setlti r18, r18, 255
000efc  97937800  or r7, r17, r7
000f00  17180901  or r16, r18, r16
000f04  97037800  and r7, r16, r7
000f08  37920312  beq r7, zero, 9348
000f0c  3ba20512  bneq r11, zero, 9352
000f10  9f830900  addli r7, r19, 0
000f14  37a00900  beq r19, zero, 8
000f18  9f830500  addli r7, r11, 0
000f1c  9365f006  setle.f r11, zero, r15
000f20  13e80706  setle.f r16, r15, zero
000f24  9705b800  and r11, r16, r11
000f28  3ba00500  bneq r11, zero, 8
000f2c  9f830700  addli r7, r15, 0
000f30  17098701  and r18, r14, r24
000f34  9f870300  addli r15, r7, 0
000f38  93657904  setlt.f r11, r18, r7
000f3c  3ba00500  bneq r11, zero, 8
000f40  9f070900  addli r15, r18, 0
000f44  9b359900  slli r11, r18, 9
000f48  1bb89300  slli r16, r7, 9
000f4c  1b477701  srli r14, r14, 23
000f50  9bc87301  srli r17, r7, 23
000f54  93850500  seteq r11, r11, zero
000f58  13080800  seteq r16, r16, zero
000f5c  1b07f70f  andi r14, r14, 255
000f60  9b88f80f  andi r17, r17, 255
000f64  1b77f70f  setlti r14, r14, 255
000f68  9bf8f80f  setlti r17, r17, 255
000f6c  9715b700  or r11, r14, r11
000f70  17970801  or r14, r17, r16
000f74  9705b700  and r11, r14, r11
000f78  b7b00512  beq r11, zero, 9260
000f7c  bbc00312  bneq r7, zero, 9264
000f80  9f050900  addli r11, r18, 0
000f84  37200900  beq r18, zero, 8
000f88  9f850300  addli r11, r7, 0
000f8c  9363f006  setle.f r7, zero, r15
000f90  13e70706  setle.f r14, r15, zero
000f94  97037700  and r7, r14, r7
000f98  3ba00300  bneq r7, zero, 8
000f9c  9f850700  addli r11, r15, 0
000fa0  97888601  and r17, r13, r24
000fa4  1f870500  addli r14, r11, 0
000fa8  93e3b804  setlt.f r7, r17, r11
000fac  3ba00300  bneq r7, zero, 8
000fb0  1f870800  addli r14, r17, 0
000fb4  9bb39800  slli r7, r17, 9
000fb8  9bb79500  slli r15, r11, 9
000fbc  9bc67601  srli r13, r13, 23
000fc0  1bc87501  srli r16, r11, 23
000fc4  93830300  seteq r7, r7, zero
000fc8  93870700  seteq r15, r15, zero
000fcc  9b86f60f  andi r13, r13, 255
000fd0  1b08f80f  andi r16, r16, 255
000fd4  9bf6f60f  setlti r13, r13, 255
000fd8  1b78f80f  setlti r16, r16, 255
000fdc  97937600  or r7, r13, r7
000fe0  9716f800  or r13, r16, r15
000fe4  97837600  and r7, r13, r7
000fe8  37df0310  beq r7, zero, 9172
000fec  3bef0510  bneq r11, zero, 9176
000ff0  9f830800  addli r7, r17, 0
000ff4  37a00800  beq r17, zero, 8
000ff8  9f830500  addli r7, r11, 0
000ffc  9365e006  setle.f r11, zero, r14
001000  93660706  setle.f r13, r14, zero
001004  9785b600  and r11, r13, r11
001008  3ba00500  bneq r11, zero, 8
00100c  9f030700  addli r7, r14, 0
001010  17088601  and r16, r12, r24
001014  9f860300  addli r13, r7, 0
001018  93657804  setlt.f r11, r16, r7
00101c  3ba00500  bneq r11, zero, 8
001020  9f060800  addli r13, r16, 0
001024  9b359800  slli r11, r16, 9
001028  1bb79300  slli r14, r7, 9
00102c  1b467601  srli r12, r12, 23
001030  9bc77301  srli r15, r7, 23
001034  93850500  seteq r11, r11, zero
001038  13070700  seteq r14, r14, zero
00103c  1b06f60f  andi r12, r12, 255
001040  9b87f70f  andi r15, r15, 255
001044  1b76f60f  setlti r12, r12, 255
001048  9bf7f70f  setlti r15, r15, 255
00104c  9715b600  or r11, r12, r11
001050  1796e700  or r12, r15, r14
001054  9705b600  and r11, r12, r11
001058  b7fd0510  beq r11, zero, 9084
00105c  3b8e0310  bneq r7, zero, 9088
001060  9f050800  addli r11, r16, 0
001064  37200800  beq r16, zero, 8
001068  9f850300  addli r11, r7, 0
00106c  9363d006  setle.f r7, zero, r13
001070  13e60606  setle.f r12, r13, zero
001074  97037600  and r7, r12, r7
001078  3ba00300  bneq r7, zero, 8
00107c  9f850600  addli r11, r13, 0
001080  97078501  and r15, r10, r24
001084  1f860500  addli r12, r11, 0
001088  93e3b704  setlt.f r7, r15, r11
00108c  3ba00300  bneq r7, zero, 8
001090  1f860700  addli r12, r15, 0
001094  9bb39700  slli r7, r15, 9
001098  9bb69500  slli r13, r11, 9
00109c  1b457501  srli r10, r10, 23
0010a0  1bc77501  srli r14, r11, 23
0010a4  93830300  seteq r7, r7, zero
0010a8  93860600  seteq r13, r13, zero
0010ac  1b05f50f  andi r10, r10, 255
0010b0  1b07f70f  andi r14, r14, 255
0010b4  1b75f50f  setlti r10, r10, 255
0010b8  1b77f70f  setlti r14, r14, 255
0010bc  97137500  or r7, r10, r7
0010c0  1715d700  or r10, r14, r13
0010c4  97037500  and r7, r10, r7
0010c8  b79c0310  beq r7, zero, 8996
0010cc  bbac0510  bneq r11, zero, 9000
0010d0  9f830700  addli r7, r15, 0
0010d4  37a00700  beq r15, zero, 8
0010d8  9f830500  addli r7, r11, 0
0010dc  1365c006  setle.f r10, zero, r12
0010e0  93650606  setle.f r11, r12, zero
0010e4  1785a500  and r10, r11, r10
0010e8  3b200500  bneq r10, zero, 8
0010ec  9f030600  addli r7, r12, 0
0010f0  17878401  and r14, r9, r24
0010f4  1f850300  addli r10, r7, 0
0010f8  93657704  setlt.f r11, r14, r7
0010fc  3ba00500  bneq r11, zero, 8
001100  1f050700  addli r10, r14, 0
001104  9b359700  slli r11, r14, 9
001108  1bb69300  slli r12, r7, 9
00110c  9bc47401  srli r9, r9, 23
001110  9bc67301  srli r13, r7, 23
001114  93850500  seteq r11, r11, zero
001118  13060600  seteq r12, r12, zero
00111c  9b84f40f  andi r9, r9, 255
001120  9b86f60f  andi r13, r13, 255
001124  9bf4f40f  setlti r9, r9, 255
001128  9bf6f60f  setlti r13, r13, 255
00112c  9794b400  or r9, r9, r11
001130  9795c600  or r11, r13, r12
001134  97849500  and r9, r11, r9
001138  37bb0410  beq r9, zero, 8908
00113c  3bcb0310  bneq r7, zero, 8912
001140  9f040700  addli r9, r14, 0
001144  37200700  beq r14, zero, 8
001148  9f840300  addli r9, r7, 0
00114c  9363a006  setle.f r7, zero, r10
001150  93650506  setle.f r11, r10, zero
001154  97837500  and r7, r11, r7
001158  3ba00300  bneq r7, zero, 8
00115c  9f040500  addli r9, r10, 0
001160  97068401  and r13, r8, r24
001164  1f850400  addli r10, r9, 0
001168  93e39604  setlt.f r7, r13, r9
00116c  3ba00300  bneq r7, zero, 8
001170  1f850600  addli r10, r13, 0
001174  9bb39600  slli r7, r13, 9
001178  9bb59400  slli r11, r9, 9
00117c  1b447401  srli r8, r8, 23
001180  1bc67401  srli r12, r9, 23
001184  93830300  seteq r7, r7, zero
001188  93850500  seteq r11, r11, zero
00118c  1b04f40f  andi r8, r8, 255
001190  1b06f60f  andi r12, r12, 255
001194  1b74f40f  setlti r8, r8, 255
001198  1b76f60f  setlti r12, r12, 255
00119c  97137400  or r7, r8, r7
0011a0  1714b600  or r8, r12, r11
0011a4  97037400  and r7, r8, r7
0011a8  b7d90310  beq r7, zero, 8820
0011ac  bbe90410  bneq r9, zero, 8824
0011b0  9f830600  addli r7, r13, 0
0011b4  37a00600  beq r13, zero, 8
0011b8  9f830400  addli r7, r9, 0
0011bc  1364a006  setle.f r8, zero, r10
0011c0  93640506  setle.f r9, r10, zero
0011c4  17848400  and r8, r9, r8
0011c8  3b200400  bneq r8, zero, 8
0011cc  9f030500  addli r7, r10, 0
0011d0  970a8301  and r21, r6, r24
0011d4  1f840300  addli r8, r7, 0
0011d8  93e47a04  setlt.f r9, r21, r7
0011dc  3ba00400  bneq r9, zero, 8
0011e0  1f840a00  addli r8, r21, 0
0011e4  9bb49a00  slli r9, r21, 9
0011e8  1bb59300  slli r10, r7, 9
0011ec  1b437301  srli r6, r6, 23
0011f0  9bc57301  srli r11, r7, 23
0011f4  93840400  seteq r9, r9, zero
0011f8  13050500  seteq r10, r10, zero
0011fc  1b03f30f  andi r6, r6, 255
001200  9b85f50f  andi r11, r11, 255
001204  1b73f30f  setlti r6, r6, 255
001208  9bf5f50f  setlti r11, r11, 255
00120c  17139300  or r6, r6, r9
001210  9794a500  or r9, r11, r10
001214  17836400  and r6, r9, r6
001218  37780310  beq r6, zero, 8732
00121c  bb880310  bneq r7, zero, 8736
001220  1f830a00  addli r6, r21, 0
001224  37a00a00  beq r21, zero, 8
001228  1f830300  addli r6, r7, 0
00122c  93638006  setle.f r7, zero, r8
001230  93640406  setle.f r9, r8, zero
001234  97837400  and r7, r9, r7
001238  3ba00300  bneq r7, zero, 8
00123c  1f030400  addli r6, r8, 0
001240  97858201  and r11, r5, r24
001244  9f030300  addli r7, r6, 0
001248  13e46504  setlt.f r8, r11, r6
00124c  3b200400  bneq r8, zero, 8
001250  9f830500  addli r7, r11, 0
001254  1bb49500  slli r8, r11, 9
001258  9b349300  slli r9, r6, 9
00125c  9bc27201  srli r5, r5, 23
001260  1b457301  srli r10, r6, 23
001264  13040400  seteq r8, r8, zero
001268  93840400  seteq r9, r9, zero
00126c  9b82f20f  andi r5, r5, 255
001270  1b05f50f  andi r10, r10, 255
001274  9bf2f20f  setlti r5, r5, 255
001278  1b75f50f  setlti r10, r10, 255
00127c  97928200  or r5, r5, r8
001280  17149500  or r8, r10, r9
001284  97025400  and r5, r8, r5
001288  37970210  beq r5, zero, 8644
00128c  3b270310  bneq r6, zero, 8648
001290  9f820500  addli r5, r11, 0
001294  37a00500  beq r11, zero, 8
001298  9f020300  addli r5, r6, 0
00129c  13637006  setle.f r6, zero, r7
0012a0  13e40306  setle.f r8, r7, zero
0012a4  17036400  and r6, r8, r6
0012a8  3b200300  bneq r6, zero, 8
0012ac  9f820300  addli r5, r7, 0
0012b0  17058201  and r10, r4, r24
0012b4  1f830200  addli r6, r5, 0
0012b8  93635504  setlt.f r7, r10, r5
0012bc  3ba00300  bneq r7, zero, 8
0012c0  1f030500  addli r6, r10, 0
0012c4  9b339500  slli r7, r10, 9
0012c8  1bb49200  slli r8, r5, 9
0012cc  1b427201  srli r4, r4, 23
0012d0  9bc47201  srli r9, r5, 23
0012d4  93830300  seteq r7, r7, zero
0012d8  13040400  seteq r8, r8, zero
0012dc  1b02f20f  andi r4, r4, 255
0012e0  9b84f40f  andi r9, r9, 255
0012e4  1b72f20f  setlti r4, r4, 255
0012e8  9bf4f40f  setlti r9, r9, 255
0012ec  17127200  or r4, r4, r7
0012f0  97938400  or r7, r9, r8
0012f4  17824300  and r4, r7, r4
0012f8  b7350210  beq r4, zero, 8556
0012fc  bbc50210  bneq r5, zero, 8560
001300  1f020500  addli r4, r10, 0
001304  37200500  beq r10, zero, 8
001308  1f820200  addli r4, r5, 0
00130c  93626006  setle.f r5, zero, r6
001310  93630306  setle.f r7, r6, zero
001314  97825300  and r5, r7, r5
001318  3ba00200  bneq r5, zero, 8
00131c  1f020300  addli r4, r6, 0
001320  97848101  and r9, r3, r24
001324  9f020200  addli r5, r4, 0
001328  13e34404  setlt.f r6, r9, r4
00132c  3b200300  bneq r6, zero, 8
001330  9f820400  addli r5, r9, 0
001334  1bb39400  slli r6, r9, 9
001338  9b339200  slli r7, r4, 9
00133c  9bc17101  srli r3, r3, 23
001340  1b447201  srli r8, r4, 23
001344  13030300  seteq r6, r6, zero
001348  93830300  seteq r7, r7, zero
00134c  9b81f10f  andi r3, r3, 255
001350  1b04f40f  andi r8, r8, 255
001354  9bf1f10f  setlti r3, r3, 255
001358  1b74f40f  setlti r8, r8, 255
00135c  97916100  or r3, r3, r6
001360  17137400  or r6, r8, r7
001364  97013300  and r3, r6, r3
001368  37d40110  beq r3, zero, 8468
00136c  3b640210  bneq r4, zero, 8472
001370  9f810400  addli r3, r9, 0
001374  37a00400  beq r9, zero, 8
001378  9f010200  addli r3, r4, 0
00137c  13625006  setle.f r4, zero, r5
001380  13e30206  setle.f r6, r5, zero
001384  17024300  and r4, r6, r4
001388  3b200200  bneq r4, zero, 8
00138c  9f810200  addli r3, r5, 0
001390  17048101  and r8, r2, r24
001394  1f820100  addli r4, r3, 0
001398  93623404  setlt.f r5, r8, r3
00139c  3ba00200  bneq r5, zero, 8
0013a0  1f020400  addli r4, r8, 0
0013a4  9b329400  slli r5, r8, 9
0013a8  1bb39100  slli r6, r3, 9
0013ac  1b417101  srli r2, r2, 23
0013b0  9bc37101  srli r7, r3, 23
0013b4  93820200  seteq r5, r5, zero
0013b8  13030300  seteq r6, r6, zero
0013bc  1b01f10f  andi r2, r2, 255
0013c0  9b83f30f  andi r7, r7, 255
0013c4  1b71f10f  setlti r2, r2, 255
0013c8  9bf3f30f  setlti r7, r7, 255
0013cc  17115100  or r2, r2, r5
0013d0  97926300  or r5, r7, r6
0013d4  17812200  and r2, r5, r2
0013d8  b7720110  beq r2, zero, 8380
0013dc  3b830110  bneq r3, zero, 8384
0013e0  1f010400  addli r2, r8, 0
0013e4  37200400  beq r8, zero, 8
0013e8  1f810100  addli r2, r3, 0
0013ec  93614006  setle.f r3, zero, r4
0013f0  93620206  setle.f r5, r4, zero
0013f4  97813200  and r3, r5, r3
0013f8  3ba00100  bneq r3, zero, 8
0013fc  1f010200  addli r2, r4, 0
001400  178c8001  and r24, r1, r24
001404  9f010100  addli r3, r2, 0
001408  13622c04  setlt.f r4, r24, r2
00140c  3b200200  bneq r4, zero, 8
001410  9f010c00  addli r3, r24, 0
001414  1b329c00  slli r4, r24, 9
001418  9b329100  slli r5, r2, 9
00141c  9bc07001  srli r1, r1, 23
001420  1b437101  srli r6, r2, 23
001424  13020200  seteq r4, r4, zero
001428  93820200  seteq r5, r5, zero
00142c  9b80f00f  andi r1, r1, 255
001430  1b03f30f  andi r6, r6, 255
001434  9bf0f00f  setlti r1, r1, 255
001438  1b73f30f  setlti r6, r6, 255
00143c  97904000  or r1, r1, r4
001440  17125300  or r4, r6, r5
001444  97001200  and r1, r4, r1
001448  b7910010  beq r1, zero, 8292
00144c  bb210110  bneq r2, zero, 8296
001450  9f000c00  addli r1, r24, 0
001454  37200c00  beq r24, zero, 8
001458  9f000100  addli r1, r2, 0
00145c  13613006  setle.f r2, zero, r3
001460  13e20106  setle.f r4, r3, zero
001464  17012200  and r2, r4, r2
001468  3b200100  bneq r2, zero, 8
00146c  9f800100  addli r1, r3, 0
001470  1f018000  addli r2, zero, 64
001474  3fa02b00  blt.s r23, r2, 8
001478  ab0080ff  lui r1, 1046528
00147c  63011ffd  loadli.w r2,  -376(r30)
001480  e7018ffe  storeli.w r8, -232(r30)
001484  67029ffe  storeli.w r9, -224(r30)
001488  e742affe  storeli.w r10, -212(r30)
00148c  73601100  stores.w r1, 0(r2)
001490  00a00300  mfence { lm, sm, gm }
001494  80210b04  csr_set csr3, r22
001498  00d00100  sync_group
00149c  e340bffd  loadli.w r1,  -292(r30)
0014a0  3b88000e  bneq r1, zero, 7680
0014a4  e3006ffe  loadli.w r1,  -208(r30)
0014a8  efc10000  loads.w r3, 0(r1)
0014ac  efc04000  loads.w r1, 4(r1)
0014b0  13e23004  setlt.f r4, r1, r3
0014b4  1f810100  addli r2, r3, 0
0014b8  3b200200  bneq r4, zero, 8
0014bc  1f810000  addli r2, r1, 0
0014c0  1bb29100  slli r4, r3, 9
0014c4  9bb29000  slli r5, r1, 9
0014c8  1bc37101  srli r6, r3, 23
0014cc  9bc37001  srli r7, r1, 23
0014d0  13020200  seteq r4, r4, zero
0014d4  93820200  seteq r5, r5, zero
0014d8  1b03f30f  andi r6, r6, 255
0014dc  9b83f30f  andi r7, r7, 255
0014e0  1b73f30f  setlti r6, r6, 255
0014e4  9bf3f30f  setlti r7, r7, 255
0014e8  17124300  or r4, r6, r4
0014ec  97925300  or r5, r7, r5
0014f0  17025200  and r4, r4, r5
0014f4  b70e0214  beq r4, zero, 11168
0014f8  bb9e0114  bneq r3, zero, 11172
0014fc  37a00000  beq r1, zero, 8
001500  9f800100  addli r1, r3, 0
001504  93612006  setle.f r3, zero, r2
001508  13620106  setle.f r4, r2, zero
00150c  67410ffd  storeli.w r16, -492(r30)
001510  97013200  and r3, r4, r3
001514  3ba00100  bneq r3, zero, 8
001518  9f000100  addli r1, r2, 0
00151c  63016ffe  loadli.w r2,  -208(r30)
001520  6f488100  loads.w r16, 8(r2)
001524  1f810000  addli r2, r1, 0
001528  93611804  setlt.f r3, r16, r1
00152c  3ba00100  bneq r3, zero, 8
001530  1f010800  addli r2, r16, 0
001534  9b319800  slli r3, r16, 9
001538  1bb29000  slli r4, r1, 9
00153c  9b427801  srli r5, r16, 23
001540  1bc37001  srli r6, r1, 23
001544  93810100  seteq r3, r3, zero
001548  13020200  seteq r4, r4, zero
00154c  9b82f20f  andi r5, r5, 255
001550  1b03f30f  andi r6, r6, 255
001554  9bf2f20f  setlti r5, r5, 255
001558  1b73f30f  setlti r6, r6, 255
00155c  97913200  or r3, r5, r3
001560  17124300  or r4, r6, r4
001564  97013200  and r3, r4, r3
001568  378d0114  beq r3, zero, 11072
00156c  3b9d0014  bneq r1, zero, 11076
001570  67008ffd  storeli.w r24, -512(r30)
001574  37200800  beq r16, zero, 8
001578  1f880000  addli r16, r1, 0
00157c  93602006  setle.f r1, zero, r2
001580  93610106  setle.f r3, r2, zero
001584  6740bffc  storeli.w r11, -508(r30)
001588  670e5ffb  storeli.w r21, -544(r30)
00158c  e700dffc  storeli.w r13, -504(r30)
001590  e740effc  storeli.w r14, -500(r30)
001594  6701fffc  storeli.w r15, -496(r30)
001598  e7011ffd  storeli.w r17, -488(r30)
00159c  e7412ffd  storeli.w r18, -484(r30)
0015a0  67424ffd  storeli.w r20, -476(r30)
0015a4  e702affd  storeli.w r26, -472(r30)
0015a8  e7429ffd  storeli.w r25, -468(r30)
0015ac  97801100  and r1, r3, r1
0015b0  3ba00000  bneq r1, zero, 8
0015b4  1f080100  addli r16, r2, 0
0015b8  63096ffe  loadli.w r18,  -208(r30)
0015bc  67023ffd  storeli.w r19, -480(r30)
0015c0  1f0b0800  addli r22, r16, 0
0015c4  ef40c904  loads.w r1, 76(r18)
0015c8  ef49490d  loads.w r19, 212(r18)
0015cc  ef42c90c  loads.w r5, 204(r18)
0015d0  ef48c900  loads.w r17, 12(r18)
0015d4  ef470901  loads.w r15, 16(r18)
0015d8  ef454901  loads.w r11, 20(r18)
0015dc  ef438901  loads.w r7, 24(r18)
0015e0  6f4ac901  loads.w r20, 28(r18)
0015e4  6f470902  loads.w r14, 32(r18)
0015e8  6f444902  loads.w r8, 36(r18)
0015ec  6f438902  loads.w r6, 40(r18)
0015f0  ef41c902  loads.w r3, 44(r18)
0015f4  6f460903  loads.w r12, 48(r18)
0015f8  6f414903  loads.w r2, 52(r18)
0015fc  ef468903  loads.w r13, 56(r18)
001600  ef4cc903  loads.w r25, 60(r18)
001604  6f4d0904  loads.w r26, 64(r18)
001608  6f424904  loads.w r4, 68(r18)
00160c  6f4e8904  loads.w r28, 72(r18)
001610  ef444907  loads.w r9, 116(r18)
001614  6f45c908  loads.w r10, 140(r18)
001618  ef4a490b  loads.w r21, 180(r18)
00161c  6f4c890d  loads.w r24, 216(r18)
001620  e7491ffa  storeli.w r1, -612(r30)
001624  ef400905  loads.w r1, 80(r18)
001628  67003fff  storeli.w r19, -256(r30)
00162c  ef49c90d  loads.w r19, 220(r18)
001630  670f5ffc  storeli.w r5, -272(r30)
001634  ef42090d  loads.w r5, 208(r18)
001638  93ed0805  setlt.f r27, r17, r16
00163c  670a1ffa  storeli.w r1, -608(r30)
001640  ef404905  loads.w r1, 84(r18)
001644  e7403fff  storeli.w r19, -244(r30)
001648  ef49090e  loads.w r19, 224(r18)
00164c  674a1ffa  storeli.w r1, -604(r30)
001650  ef408905  loads.w r1, 88(r18)
001654  674e3ffb  storeli.w r19, -540(r30)
001658  ef49490e  loads.w r19, 228(r18)
00165c  e70a1ffa  storeli.w r1, -600(r30)
001660  ef40c905  loads.w r1, 92(r18)
001664  67013fff  storeli.w r19, -240(r30)
001668  ef49890e  loads.w r19, 232(r18)
00166c  e74a1ffa  storeli.w r1, -596(r30)
001670  ef400906  loads.w r1, 96(r18)
001674  e70e3ffb  storeli.w r19, -536(r30)
001678  ef49c90e  loads.w r19, 236(r18)
00167c  670b1ffa  storeli.w r1, -592(r30)
001680  ef404906  loads.w r1, 100(r18)
001684  e74e3ffb  storeli.w r19, -532(r30)
001688  ef49090f  loads.w r19, 240(r18)
00168c  67491ffc  storeli.w r1, -364(r30)
001690  ef408906  loads.w r1, 104(r18)
001694  670f3ffb  storeli.w r19, -528(r30)
001698  ef49490f  loads.w r19, 244(r18)
00169c  674b1ffa  storeli.w r1, -588(r30)
0016a0  ef40c906  loads.w r1, 108(r18)
0016a4  674f3ffb  storeli.w r19, -524(r30)
0016a8  ef49890f  loads.w r19, 248(r18)
0016ac  e7091ffc  storeli.w r1, -360(r30)
0016b0  ef400907  loads.w r1, 112(r18)
0016b4  e70f3ffb  storeli.w r19, -520(r30)
0016b8  e7491ffc  storeli.w r1, -356(r30)
0016bc  ef408907  loads.w r1, 120(r18)
0016c0  670a1ffc  storeli.w r1, -352(r30)
0016c4  ef40c907  loads.w r1, 124(r18)
0016c8  e74b1ffa  storeli.w r1, -580(r30)
0016cc  ef400908  loads.w r1, 128(r18)
0016d0  674a1ffc  storeli.w r1, -348(r30)
0016d4  ef404908  loads.w r1, 132(r18)
0016d8  670c1ffa  storeli.w r1, -576(r30)
0016dc  ef408908  loads.w r1, 136(r18)
0016e0  e70a1ffc  storeli.w r1, -344(r30)
0016e4  ef400909  loads.w r1, 144(r18)
0016e8  e74a1ffc  storeli.w r1, -340(r30)
0016ec  ef404909  loads.w r1, 148(r18)
0016f0  674c1ffa  storeli.w r1, -572(r30)
0016f4  ef408909  loads.w r1, 152(r18)
0016f8  670b1ffc  storeli.w r1, -336(r30)
0016fc  ef40c909  loads.w r1, 156(r18)
001700  e70c1ffa  storeli.w r1, -568(r30)
001704  ef40090a  loads.w r1, 160(r18)
001708  674b1ffc  storeli.w r1, -332(r30)
00170c  ef40490a  loads.w r1, 164(r18)
001710  e74c1ffa  storeli.w r1, -564(r30)
001714  ef40890a  loads.w r1, 168(r18)
001718  e70b1ffc  storeli.w r1, -328(r30)
00171c  ef40c90a  loads.w r1, 172(r18)
001720  670d1ffa  storeli.w r1, -560(r30)
001724  ef40090b  loads.w r1, 176(r18)
001728  e74b1ffc  storeli.w r1, -324(r30)
00172c  ef40890b  loads.w r1, 184(r18)
001730  670c1ffc  storeli.w r1, -320(r30)
001734  ef40c90b  loads.w r1, 188(r18)
001738  e70d1ffa  storeli.w r1, -552(r30)
00173c  ef40090c  loads.w r1, 192(r18)
001740  e74d1ffa  storeli.w r1, -548(r30)
001744  ef40490c  loads.w r1, 196(r18)
001748  e70e1ffc  storeli.w r1, -280(r30)
00174c  ef40890c  loads.w r1, 200(r18)
001750  6f49c90f  loads.w r18, 252(r18)
001754  e74f2ffb  storeli.w r18, -516(r30)
001758  3ba00d00  bneq r27, zero, 8
00175c  1f8b0800  addli r22, r17, 0
001760  9bbd9800  slli r27, r17, 9
001764  9b399800  slli r19, r16, 9
001768  1bc97801  srli r18, r17, 23
00176c  9b4b7801  srli r23, r16, 23
001770  938d0d00  seteq r27, r27, zero
001774  93890900  seteq r19, r19, zero
001778  1b09f90f  andi r18, r18, 255
00177c  9b8bfb0f  andi r23, r23, 255
001780  1b79f90f  setlti r18, r18, 255
001784  9bfbfb0f  setlti r23, r23, 255
001788  1719b901  or r18, r18, r27
00178c  97993b01  or r19, r23, r19
001790  17892901  and r18, r19, r18
001794  b7340914  beq r18, zero, 10540
001798  e30d7ffe  loadli.w r27,  -200(r30)
00179c  bb440814  bneq r16, zero, 10544
0017a0  37a00800  beq r17, zero, 8
0017a4  9f080800  addli r17, r16, 0
0017a8  13686007  setle.f r16, zero, r22
0017ac  13690b06  setle.f r18, r22, zero
0017b0  17080901  and r16, r18, r16
0017b4  3b200800  bneq r16, zero, 8
0017b8  9f080b00  addli r17, r22, 0
0017bc  13e91705  setlt.f r18, r15, r17
0017c0  1f880800  addli r16, r17, 0
0017c4  3b200900  bneq r18, zero, 8
0017c8  1f880700  addli r16, r15, 0
0017cc  1bb99700  slli r18, r15, 9
0017d0  9bb99800  slli r19, r17, 9
0017d4  1bcb7701  srli r22, r15, 23
0017d8  9bcb7801  srli r23, r17, 23
0017dc  13090900  seteq r18, r18, zero
0017e0  93890900  seteq r19, r19, zero
0017e4  1b0bfb0f  andi r22, r22, 255
0017e8  9b8bfb0f  andi r23, r23, 255
0017ec  1b7bfb0f  setlti r22, r22, 255
0017f0  9bfbfb0f  setlti r23, r23, 255
0017f4  17192b01  or r18, r22, r18
0017f8  97993b01  or r19, r23, r19
0017fc  17892901  and r18, r19, r18
001800  3b200900  bneq r18, zero, 8
001804  2b08c07f  lui r16, 523264
001808  674d5ffa  storeli.w r5, -556(r30)
00180c  9f820a00  addli r5, r21, 0
001810  9f8b0400  addli r23, r9, 0
001814  e70f8ffd  storeli.w r24, -264(r30)
001818  37a00800  beq r17, zero, 8
00181c  9f080800  addli r17, r16, 0
001820  630c6ffb  loadli.w r24,  -592(r30)
001824  e3443ffb  loadli.w r9,  -612(r30)
001828  9f0a0500  addli r21, r10, 0
00182c  37a00700  beq r15, zero, 8
001830  9f870800  addli r15, r17, 0
001834  93680007  setle.f r17, zero, r16
001838  13690806  setle.f r18, r16, zero
00183c  63054ffb  loadli.w r10,  -608(r30)
001840  97081901  and r17, r18, r17
001844  3ba00800  bneq r17, zero, 8
001848  9f070800  addli r15, r16, 0
00184c  93e8f504  setlt.f r17, r11, r15
001850  1f880700  addli r16, r15, 0
001854  e70b5ffa  storeli.w r5, -584(r30)
001858  3ba00800  bneq r17, zero, 8
00185c  1f880500  addli r16, r11, 0
001860  9bb89500  slli r17, r11, 9
001864  1bb99700  slli r18, r15, 9
001868  9bc97501  srli r19, r11, 23
00186c  1bcb7701  srli r22, r15, 23
001870  e3425ffb  loadli.w r5,  -596(r30)
001874  93880800  seteq r17, r17, zero
001878  13090900  seteq r18, r18, zero
00187c  9b89f90f  andi r19, r19, 255
001880  1b0bfb0f  andi r22, r22, 255
001884  9bf9f90f  setlti r19, r19, 255
001888  1b7bfb0f  setlti r22, r22, 255
00188c  97981901  or r17, r19, r17
001890  17192b01  or r18, r22, r18
001894  97081901  and r17, r18, r17
001898  3ba00800  bneq r17, zero, 8
00189c  2b08c07f  lui r16, 523264
0018a0  634b8ffb  loadli.w r22,  -572(r30)
0018a4  674c1ffc  storeli.w r1, -316(r30)
0018a8  37a00700  beq r15, zero, 8
0018ac  9f070800  addli r15, r16, 0
0018b0  37a00500  beq r11, zero, 8
0018b4  9f850700  addli r11, r15, 0
0018b8  93670007  setle.f r15, zero, r16
0018bc  93680806  setle.f r17, r16, zero
0018c0  9787f800  and r15, r17, r15
0018c4  3ba00700  bneq r15, zero, 8
0018c8  9f050800  addli r11, r16, 0
0018cc  13e8b304  setlt.f r16, r7, r11
0018d0  9f870500  addli r15, r11, 0
0018d4  3b200800  bneq r16, zero, 8
0018d8  9f870300  addli r15, r7, 0
0018dc  1bb89300  slli r16, r7, 9
0018e0  9bb89500  slli r17, r11, 9
0018e4  1bc97301  srli r18, r7, 23
0018e8  9bc97501  srli r19, r11, 23
0018ec  e3404ffb  loadli.w r1,  -604(r30)
0018f0  13080800  seteq r16, r16, zero
0018f4  93880800  seteq r17, r17, zero
0018f8  1b09f90f  andi r18, r18, 255
0018fc  9b89f90f  andi r19, r19, 255
001900  1b79f90f  setlti r18, r18, 255
001904  9bf9f90f  setlti r19, r19, 255
001908  17180901  or r16, r18, r16
00190c  97981901  or r17, r19, r17
001910  17880801  and r16, r17, r16
001914  371f0812  beq r16, zero, 10180
001918  e3499ffb  loadli.w r19,  -564(r30)
00191c  3baf0512  bneq r11, zero, 10184
001920  37a00300  beq r7, zero, 8
001924  9f830500  addli r7, r11, 0
001928  9365f006  setle.f r11, zero, r15
00192c  13e80706  setle.f r16, r15, zero
001930  9705b800  and r11, r16, r11
001934  3ba00500  bneq r11, zero, 8
001938  9f830700  addli r7, r15, 0
00193c  93677a04  setlt.f r15, r20, r7
001940  9f850300  addli r11, r7, 0
001944  3ba00700  bneq r15, zero, 8
001948  9f050a00  addli r11, r20, 0
00194c  9b379a00  slli r15, r20, 9
001950  1bb89300  slli r16, r7, 9
001954  9b487a01  srli r17, r20, 23
001958  1bc97301  srli r18, r7, 23
00195c  93870700  seteq r15, r15, zero
001960  13080800  seteq r16, r16, zero
001964  9b88f80f  andi r17, r17, 255
001968  1b09f90f  andi r18, r18, 255
00196c  9bf8f80f  setlti r17, r17, 255
001970  1b79f90f  setlti r18, r18, 255
001974  9797f800  or r15, r17, r15
001978  17180901  or r16, r18, r16
00197c  9707f800  and r15, r16, r15
001980  b7cd0712  beq r15, zero, 10096
001984  63095ffb  loadli.w r18,  -600(r30)
001988  bbdd0312  bneq r7, zero, 10100
00198c  37200a00  beq r20, zero, 8
001990  1f8a0300  addli r20, r7, 0
001994  9363b006  setle.f r7, zero, r11
001998  93e70506  setle.f r15, r11, zero
00199c  97837700  and r7, r15, r7
0019a0  3ba00300  bneq r7, zero, 8
0019a4  1f8a0500  addli r20, r11, 0
0019a8  93654705  setlt.f r11, r14, r20
0019ac  9f030a00  addli r7, r20, 0
0019b0  3ba00500  bneq r11, zero, 8
0019b4  9f030700  addli r7, r14, 0
0019b8  9b359700  slli r11, r14, 9
0019bc  9b379a00  slli r15, r20, 9
0019c0  1b487701  srli r16, r14, 23
0019c4  9b487a01  srli r17, r20, 23
0019c8  93850500  seteq r11, r11, zero
0019cc  93870700  seteq r15, r15, zero
0019d0  1b08f80f  andi r16, r16, 255
0019d4  9b88f80f  andi r17, r17, 255
0019d8  1b78f80f  setlti r16, r16, 255
0019dc  9bf8f80f  setlti r17, r17, 255
0019e0  9715b800  or r11, r16, r11
0019e4  9797f800  or r15, r17, r15
0019e8  9785b700  and r11, r15, r11
0019ec  37fc0512  beq r11, zero, 10012
0019f0  bb0c0a12  bneq r20, zero, 10016
0019f4  37200700  beq r14, zero, 8
0019f8  1f070a00  addli r14, r20, 0
0019fc  93657006  setle.f r11, zero, r7
001a00  93e70306  setle.f r15, r7, zero
001a04  9785b700  and r11, r15, r11
001a08  3ba00500  bneq r11, zero, 8
001a0c  1f870300  addli r14, r7, 0
001a10  9365e404  setlt.f r11, r8, r14
001a14  630a9ffb  loadli.w r20,  -568(r30)
001a18  9f030700  addli r7, r14, 0
001a1c  3ba00500  bneq r11, zero, 8
001a20  9f030400  addli r7, r8, 0
001a24  9b359400  slli r11, r8, 9
001a28  9b379700  slli r15, r14, 9
001a2c  1b487401  srli r16, r8, 23
001a30  9b487701  srli r17, r14, 23
001a34  93850500  seteq r11, r11, zero
001a38  93870700  seteq r15, r15, zero
001a3c  1b08f80f  andi r16, r16, 255
001a40  9b88f80f  andi r17, r17, 255
001a44  1b78f80f  setlti r16, r16, 255
001a48  9bf8f80f  setlti r17, r17, 255
001a4c  9715b800  or r11, r16, r11
001a50  9797f800  or r15, r17, r15
001a54  9785b700  and r11, r15, r11
001a58  379b0512  beq r11, zero, 9924
001a5c  e3088ffb  loadli.w r17,  -576(r30)
001a60  3b2b0712  bneq r14, zero, 9928
001a64  37200400  beq r8, zero, 8
001a68  1f040700  addli r8, r14, 0
001a6c  93657006  setle.f r11, zero, r7
001a70  13e70306  setle.f r14, r7, zero
001a74  9705b700  and r11, r14, r11
001a78  3ba00500  bneq r11, zero, 8
001a7c  1f840300  addli r8, r7, 0
001a80  93658304  setlt.f r11, r6, r8
001a84  9f030400  addli r7, r8, 0
001a88  3ba00500  bneq r11, zero, 8
001a8c  9f030300  addli r7, r6, 0
001a90  9b359300  slli r11, r6, 9
001a94  1b379400  slli r14, r8, 9
001a98  9b477301  srli r15, r6, 23
001a9c  1b487401  srli r16, r8, 23
001aa0  93850500  seteq r11, r11, zero
001aa4  13070700  seteq r14, r14, zero
001aa8  9b87f70f  andi r15, r15, 255
001aac  1b08f80f  andi r16, r16, 255
001ab0  9bf7f70f  setlti r15, r15, 255
001ab4  1b78f80f  setlti r16, r16, 255
001ab8  9795b700  or r11, r15, r11
001abc  1717e800  or r14, r16, r14
001ac0  9705b700  and r11, r14, r11
001ac4  b7c90512  beq r11, zero, 9840
001ac8  63486ffb  loadli.w r16,  -588(r30)
001acc  bb590412  bneq r8, zero, 9844
001ad0  37200300  beq r6, zero, 8
001ad4  1f030400  addli r6, r8, 0
001ad8  13647006  setle.f r8, zero, r7
001adc  93e50306  setle.f r11, r7, zero
001ae0  17848500  and r8, r11, r8
001ae4  3b200400  bneq r8, zero, 8
001ae8  1f830300  addli r6, r7, 0
001aec  13e46104  setlt.f r8, r3, r6
001af0  9f030300  addli r7, r6, 0
001af4  3b200400  bneq r8, zero, 8
001af8  9f830100  addli r7, r3, 0
001afc  1bb49100  slli r8, r3, 9
001b00  9b359300  slli r11, r6, 9
001b04  1bc77101  srli r14, r3, 23
001b08  9b477301  srli r15, r6, 23
001b0c  13040400  seteq r8, r8, zero
001b10  93850500  seteq r11, r11, zero
001b14  1b07f70f  andi r14, r14, 255
001b18  9b87f70f  andi r15, r15, 255
001b1c  1b77f70f  setlti r14, r14, 255
001b20  9bf7f70f  setlti r15, r15, 255
001b24  17148700  or r8, r14, r8
001b28  9795b700  or r11, r15, r11
001b2c  17848500  and r8, r11, r8
001b30  37780412  beq r8, zero, 9756
001b34  e3072ffc  loadli.w r15,  -496(r30)
001b38  bb080312  bneq r6, zero, 9760
001b3c  37a00100  beq r3, zero, 8
001b40  9f010300  addli r3, r6, 0
001b44  13637006  setle.f r6, zero, r7
001b48  13e40306  setle.f r8, r7, zero
001b4c  17036400  and r6, r8, r6
001b50  3b200300  bneq r6, zero, 8
001b54  9f810300  addli r3, r7, 0
001b58  93633604  setlt.f r7, r12, r3
001b5c  1f830100  addli r6, r3, 0
001b60  3ba00300  bneq r7, zero, 8
001b64  1f030600  addli r6, r12, 0
001b68  9b339600  slli r7, r12, 9
001b6c  1bb49100  slli r8, r3, 9
001b70  9b457601  srli r11, r12, 23
001b74  1bc77101  srli r14, r3, 23
001b78  93830300  seteq r7, r7, zero
001b7c  13040400  seteq r8, r8, zero
001b80  9b85f50f  andi r11, r11, 255
001b84  1b07f70f  andi r14, r14, 255
001b88  9bf5f50f  setlti r11, r11, 255
001b8c  1b77f70f  setlti r14, r14, 255
001b90  97937500  or r7, r11, r7
001b94  17148700  or r8, r14, r8
001b98  97037400  and r7, r8, r7
001b9c  37a70312  beq r7, zero, 9672
001ba0  63471ffc  loadli.w r14,  -500(r30)
001ba4  3bb70112  bneq r3, zero, 9676
001ba8  37200600  beq r12, zero, 8
001bac  1f860100  addli r12, r3, 0
001bb0  93616006  setle.f r3, zero, r6
001bb4  93630306  setle.f r7, r6, zero
001bb8  97813300  and r3, r7, r3
001bbc  3ba00100  bneq r3, zero, 8
001bc0  1f060300  addli r12, r6, 0
001bc4  1363c104  setlt.f r6, r2, r12
001bc8  9f010600  addli r3, r12, 0
001bcc  3b200300  bneq r6, zero, 8
001bd0  9f010100  addli r3, r2, 0
001bd4  1b339100  slli r6, r2, 9
001bd8  9b339600  slli r7, r12, 9
001bdc  1b447101  srli r8, r2, 23
001be0  9b457601  srli r11, r12, 23
001be4  13030300  seteq r6, r6, zero
001be8  93830300  seteq r7, r7, zero
001bec  1b04f40f  andi r8, r8, 255
001bf0  9b85f50f  andi r11, r11, 255
001bf4  1b74f40f  setlti r8, r8, 255
001bf8  9bf5f50f  setlti r11, r11, 255
001bfc  17136400  or r6, r8, r6
001c00  97937500  or r7, r11, r7
001c04  17836300  and r6, r7, r6
001c08  b7550312  beq r6, zero, 9588
001c0c  bb650612  bneq r12, zero, 9592
001c10  37200100  beq r2, zero, 8
001c14  1f010600  addli r2, r12, 0
001c18  13633006  setle.f r6, zero, r3
001c1c  93e30106  setle.f r7, r3, zero
001c20  17836300  and r6, r7, r6
001c24  3b200300  bneq r6, zero, 8
001c28  1f810100  addli r2, r3, 0
001c2c  13e32604  setlt.f r6, r13, r2
001c30  6306bffb  loadli.w r12,  -552(r30)
001c34  9f010100  addli r3, r2, 0
001c38  3b200300  bneq r6, zero, 8
001c3c  9f810600  addli r3, r13, 0
001c40  1bb39600  slli r6, r13, 9
001c44  9b339100  slli r7, r2, 9
001c48  1bc47601  srli r8, r13, 23
001c4c  9b457101  srli r11, r2, 23
001c50  13030300  seteq r6, r6, zero
001c54  93830300  seteq r7, r7, zero
001c58  1b04f40f  andi r8, r8, 255
001c5c  9b85f50f  andi r11, r11, 255
001c60  1b74f40f  setlti r8, r8, 255
001c64  9bf5f50f  setlti r11, r11, 255
001c68  17136400  or r6, r8, r6
001c6c  97937500  or r7, r11, r7
001c70  17836300  and r6, r7, r6
001c74  37740312  beq r6, zero, 9500
001c78  bb040112  bneq r2, zero, 9504
001c7c  37a00600  beq r13, zero, 8
001c80  9f060100  addli r13, r2, 0
001c84  13613006  setle.f r2, zero, r3
001c88  13e30106  setle.f r6, r3, zero
001c8c  17012300  and r2, r6, r2
001c90  3b200100  bneq r2, zero, 8
001c94  9f860100  addli r13, r3, 0
001c98  93e1dc04  setlt.f r3, r25, r13
001c9c  1f810600  addli r2, r13, 0
001ca0  3ba00100  bneq r3, zero, 8
001ca4  1f810c00  addli r2, r25, 0
001ca8  9bb19c00  slli r3, r25, 9
001cac  1bb39600  slli r6, r13, 9
001cb0  9bc37c01  srli r7, r25, 23
001cb4  1bc47601  srli r8, r13, 23
001cb8  93810100  seteq r3, r3, zero
001cbc  13030300  seteq r6, r6, zero
001cc0  9b83f30f  andi r7, r7, 255
001cc4  1b04f40f  andi r8, r8, 255
001cc8  9bf3f30f  setlti r7, r7, 255
001ccc  1b74f40f  setlti r8, r8, 255
001cd0  97913300  or r3, r7, r3
001cd4  17136400  or r6, r8, r6
001cd8  97013300  and r3, r6, r3
001cdc  37a30112  beq r3, zero, 9416
001ce0  3bb30612  bneq r13, zero, 9420
001ce4  37a00c00  beq r25, zero, 8
001ce8  9f8c0600  addli r25, r13, 0
001cec  93612006  setle.f r3, zero, r2
001cf0  13630106  setle.f r6, r2, zero
001cf4  97013300  and r3, r6, r3
001cf8  3ba00100  bneq r3, zero, 8
001cfc  9f0c0100  addli r25, r2, 0
001d00  93619d05  setlt.f r3, r26, r25
001d04  e3061ffc  loadli.w r13,  -504(r30)
001d08  1f810c00  addli r2, r25, 0
001d0c  3ba00100  bneq r3, zero, 8
001d10  1f010d00  addli r2, r26, 0
001d14  9b319d00  slli r3, r26, 9
001d18  1bb39c00  slli r6, r25, 9
001d1c  9b437d01  srli r7, r26, 23
001d20  1bc47c01  srli r8, r25, 23
001d24  93810100  seteq r3, r3, zero
001d28  13030300  seteq r6, r6, zero
001d2c  9b83f30f  andi r7, r7, 255
001d30  1b04f40f  andi r8, r8, 255
001d34  9bf3f30f  setlti r7, r7, 255
001d38  1b74f40f  setlti r8, r8, 255
001d3c  97913300  or r3, r7, r3
001d40  17136400  or r6, r8, r6
001d44  97013300  and r3, r6, r3
001d48  b7c10112  beq r3, zero, 9328
001d4c  bbd10c12  bneq r25, zero, 9332
001d50  37200d00  beq r26, zero, 8
001d54  1f8d0c00  addli r26, r25, 0
001d58  93612006  setle.f r3, zero, r2
001d5c  13630106  setle.f r6, r2, zero
001d60  97013300  and r3, r6, r3
001d64  3ba00100  bneq r3, zero, 8
001d68  1f0d0100  addli r26, r2, 0
001d6c  9361a205  setlt.f r3, r4, r26
001d70  e34c5ffc  loadli.w r25,  -468(r30)
001d74  1f010d00  addli r2, r26, 0
001d78  3ba00100  bneq r3, zero, 8
001d7c  1f010200  addli r2, r4, 0
001d80  9b319200  slli r3, r4, 9
001d84  1b339d00  slli r6, r26, 9
001d88  9b437201  srli r7, r4, 23
001d8c  1b447d01  srli r8, r26, 23
001d90  93810100  seteq r3, r3, zero
001d94  13030300  seteq r6, r6, zero
001d98  9b83f30f  andi r7, r7, 255
001d9c  1b04f40f  andi r8, r8, 255
001da0  9bf3f30f  setlti r7, r7, 255
001da4  1b74f40f  setlti r8, r8, 255
001da8  97913300  or r3, r7, r3
001dac  17136400  or r6, r8, r6
001db0  97013300  and r3, r6, r3
001db4  37e00112  beq r3, zero, 9240
001db8  3b700d12  bneq r26, zero, 9244
001dbc  37200200  beq r4, zero, 8
001dc0  1f020d00  addli r4, r26, 0
001dc4  93612006  setle.f r3, zero, r2
001dc8  13630106  setle.f r6, r2, zero
001dcc  97013300  and r3, r6, r3
001dd0  3ba00100  bneq r3, zero, 8
001dd4  1f020100  addli r4, r2, 0
001dd8  93614e04  setlt.f r3, r28, r4
001ddc  630d5ffc  loadli.w r26,  -472(r30)
001de0  1f010200  addli r2, r4, 0
001de4  3ba00100  bneq r3, zero, 8
001de8  1f010e00  addli r2, r28, 0
001dec  9b319e00  slli r3, r28, 9
001df0  1b339200  slli r6, r4, 9
001df4  9b437e01  srli r7, r28, 23
001df8  1b447201  srli r8, r4, 23
001dfc  93810100  seteq r3, r3, zero
001e00  13030300  seteq r6, r6, zero
001e04  9b83f30f  andi r7, r7, 255
001e08  1b04f40f  andi r8, r8, 255
001e0c  9bf3f30f  setlti r7, r7, 255
001e10  1b74f40f  setlti r8, r8, 255
001e14  97913300  or r3, r7, r3
001e18  17136400  or r6, r8, r6
001e1c  97013300  and r3, r6, r3
001e20  378f0110  beq r3, zero, 9152
001e24  63447ffb  loadli.w r8,  -580(r30)
001e28  3b1f0210  bneq r4, zero, 9156
001e2c  37200e00  beq r28, zero, 8
001e30  1f0e0200  addli r28, r4, 0
001e34  93612006  setle.f r3, zero, r2
001e38  13620106  setle.f r4, r2, zero
001e3c  97013200  and r3, r4, r3
001e40  3ba00100  bneq r3, zero, 8
001e44  1f0e0100  addli r28, r2, 0
001e48  93e1c405  setlt.f r3, r9, r28
001e4c  1f010e00  addli r2, r28, 0
001e50  3ba00100  bneq r3, zero, 8
001e54  1f810400  addli r2, r9, 0
001e58  9bb19400  slli r3, r9, 9
001e5c  1b329e00  slli r4, r28, 9
001e60  1bc37401  srli r6, r9, 23
001e64  9b437e01  srli r7, r28, 23
001e68  93810100  seteq r3, r3, zero
001e6c  13020200  seteq r4, r4, zero
001e70  1b03f30f  andi r6, r6, 255
001e74  9b83f30f  andi r7, r7, 255
001e78  1b73f30f  setlti r6, r6, 255
001e7c  9bf3f30f  setlti r7, r7, 255
001e80  97113300  or r3, r6, r3
001e84  17924300  or r4, r7, r4
001e88  97013200  and r3, r4, r3
001e8c  b7bd0110  beq r3, zero, 9068
001e90  bb4d0e10  bneq r28, zero, 9072
001e94  37a00400  beq r9, zero, 8
001e98  9f040e00  addli r9, r28, 0
001e9c  93612006  setle.f r3, zero, r2
001ea0  13620106  setle.f r4, r2, zero
001ea4  97013200  and r3, r4, r3
001ea8  3ba00100  bneq r3, zero, 8
001eac  9f040100  addli r9, r2, 0
001eb0  93619504  setlt.f r3, r10, r9
001eb4  1f810400  addli r2, r9, 0
001eb8  2b0e4000  lui r28, 1024
001ebc  3ba00100  bneq r3, zero, 8
001ec0  1f010500  addli r2, r10, 0
001ec4  9b319500  slli r3, r10, 9
001ec8  1bb29400  slli r4, r9, 9
001ecc  1b437501  srli r6, r10, 23
001ed0  9bc37401  srli r7, r9, 23
001ed4  93810100  seteq r3, r3, zero
001ed8  13020200  seteq r4, r4, zero
001edc  1b03f30f  andi r6, r6, 255
001ee0  9b83f30f  andi r7, r7, 255
001ee4  1b73f30f  setlti r6, r6, 255
001ee8  9bf3f30f  setlti r7, r7, 255
001eec  97113300  or r3, r6, r3
001ef0  17924300  or r4, r7, r4
001ef4  97013200  and r3, r4, r3
001ef8  37dc0110  beq r3, zero, 8980
001efc  3bec0410  bneq r9, zero, 8984
001f00  37200500  beq r10, zero, 8
001f04  1f850400  addli r10, r9, 0
001f08  93612006  setle.f r3, zero, r2
001f0c  13620106  setle.f r4, r2, zero
001f10  97013200  and r3, r4, r3
001f14  3ba00100  bneq r3, zero, 8
001f18  1f050100  addli r10, r2, 0
001f1c  93e1a004  setlt.f r3, r1, r10
001f20  e304effb  loadli.w r9,  -528(r30)
001f24  1f010500  addli r2, r10, 0
001f28  3ba00100  bneq r3, zero, 8
001f2c  1f810000  addli r2, r1, 0
001f30  9bb19000  slli r3, r1, 9
001f34  1b329500  slli r4, r10, 9
001f38  1bc37001  srli r6, r1, 23
001f3c  9b437501  srli r7, r10, 23
001f40  93810100  seteq r3, r3, zero
001f44  13020200  seteq r4, r4, zero
001f48  1b03f30f  andi r6, r6, 255
001f4c  9b83f30f  andi r7, r7, 255
001f50  1b73f30f  setlti r6, r6, 255
001f54  9bf3f30f  setlti r7, r7, 255
001f58  97113300  or r3, r6, r3
001f5c  17924300  or r4, r7, r4
001f60  97013200  and r3, r4, r3
001f64  b7fa0110  beq r3, zero, 8892
001f68  3b0b0510  bneq r10, zero, 8896
001f6c  37a00000  beq r1, zero, 8
001f70  9f000500  addli r1, r10, 0
001f74  93612006  setle.f r3, zero, r2
001f78  13620106  setle.f r4, r2, zero
001f7c  97013200  and r3, r4, r3
001f80  3ba00100  bneq r3, zero, 8
001f84  9f000100  addli r1, r2, 0
001f88  93611904  setlt.f r3, r18, r1
001f8c  6345dffb  loadli.w r10,  -532(r30)
001f90  1f810000  addli r2, r1, 0
001f94  3ba00100  bneq r3, zero, 8
001f98  1f010900  addli r2, r18, 0
001f9c  9b319900  slli r3, r18, 9
001fa0  1bb29000  slli r4, r1, 9
001fa4  1b437901  srli r6, r18, 23
001fa8  9bc37001  srli r7, r1, 23
001fac  93810100  seteq r3, r3, zero
001fb0  13020200  seteq r4, r4, zero
001fb4  1b03f30f  andi r6, r6, 255
001fb8  9b83f30f  andi r7, r7, 255
001fbc  1b73f30f  setlti r6, r6, 255
001fc0  9bf3f30f  setlti r7, r7, 255
001fc4  97113300  or r3, r6, r3
001fc8  17924300  or r4, r7, r4
001fcc  97013200  and r3, r4, r3
001fd0  b7990110  beq r3, zero, 8804
001fd4  e303fffb  loadli.w r7,  -520(r30)
001fd8  bba90010  bneq r1, zero, 8808
001fdc  37200900  beq r18, zero, 8
001fe0  1f890000  addli r18, r1, 0
001fe4  93602006  setle.f r1, zero, r2
001fe8  93610106  setle.f r3, r2, zero
001fec  97801100  and r1, r3, r1
001ff0  3ba00000  bneq r1, zero, 8
001ff4  1f090100  addli r18, r2, 0
001ff8  13e12205  setlt.f r2, r5, r18
001ffc  9f000900  addli r1, r18, 0
002000  3b200100  bneq r2, zero, 8
002004  9f800200  addli r1, r5, 0
002008  1bb19200  slli r2, r5, 9
00200c  9b319900  slli r3, r18, 9
002010  1bc27201  srli r4, r5, 23
002014  1b437901  srli r6, r18, 23
002018  13010100  seteq r2, r2, zero
00201c  93810100  seteq r3, r3, zero
002020  1b02f20f  andi r4, r4, 255
002024  1b03f30f  andi r6, r6, 255
002028  1b72f20f  setlti r4, r4, 255
00202c  1b73f30f  setlti r6, r6, 255
002030  17112200  or r2, r4, r2
002034  97113300  or r3, r6, r3
002038  17812100  and r2, r3, r2
00203c  37480110  beq r2, zero, 8720
002040  6343cffb  loadli.w r6,  -540(r30)
002044  3b580910  bneq r18, zero, 8724
002048  37a00200  beq r5, zero, 8
00204c  9f020900  addli r5, r18, 0
002050  13611006  setle.f r2, zero, r1
002054  93e10006  setle.f r3, r1, zero
002058  17812100  and r2, r3, r2
00205c  3b200100  bneq r2, zero, 8
002060  9f820000  addli r5, r1, 0
002064  13615c04  setlt.f r2, r24, r5
002068  9f800200  addli r1, r5, 0
00206c  3b200100  bneq r2, zero, 8
002070  9f000c00  addli r1, r24, 0
002074  1b319c00  slli r2, r24, 9
002078  9bb19200  slli r3, r5, 9
00207c  1b427c01  srli r4, r24, 23
002080  1f890200  addli r18, r5, 0
002084  9bc27201  srli r5, r5, 23
002088  13010100  seteq r2, r2, zero
00208c  93810100  seteq r3, r3, zero
002090  1b02f20f  andi r4, r4, 255
002094  9b82f20f  andi r5, r5, 255
002098  1b72f20f  setlti r4, r4, 255
00209c  9bf2f20f  setlti r5, r5, 255
0020a0  17112200  or r2, r4, r2
0020a4  97913200  or r3, r5, r3
0020a8  17812100  and r2, r3, r2
0020ac  b7660110  beq r2, zero, 8632
0020b0  63422ffd  loadli.w r4,  -364(r30)
0020b4  bb760910  bneq r18, zero, 8636
0020b8  37200c00  beq r24, zero, 8
0020bc  1f0c0900  addli r24, r18, 0
0020c0  13611006  setle.f r2, zero, r1
0020c4  93e10006  setle.f r3, r1, zero
0020c8  17812100  and r2, r3, r2
0020cc  3b200100  bneq r2, zero, 8
0020d0  1f8c0000  addli r24, r1, 0
0020d4  13618205  setlt.f r2, r4, r24
0020d8  9f000c00  addli r1, r24, 0
0020dc  3b200100  bneq r2, zero, 8
0020e0  9f000200  addli r1, r4, 0
0020e4  1b319200  slli r2, r4, 9
0020e8  9b319c00  slli r3, r24, 9
0020ec  1b427201  srli r4, r4, 23
0020f0  9b427c01  srli r5, r24, 23
0020f4  13010100  seteq r2, r2, zero
0020f8  93810100  seteq r3, r3, zero
0020fc  1b02f20f  andi r4, r4, 255
002100  9b82f20f  andi r5, r5, 255
002104  1b72f20f  setlti r4, r4, 255
002108  9bf2f20f  setlti r5, r5, 255
00210c  17112200  or r2, r4, r2
002110  97913200  or r3, r5, r3
002114  17812100  and r2, r3, r2
002118  b7150110  beq r2, zero, 8548
00211c  bb250c10  bneq r24, zero, 8552
002120  e3422ffd  loadli.w r5,  -364(r30)
002124  37a00200  beq r5, zero, 8
002128  9f020c00  addli r5, r24, 0
00212c  13611006  setle.f r2, zero, r1
002130  93e10006  setle.f r3, r1, zero
002134  17812100  and r2, r3, r2
002138  3b200100  bneq r2, zero, 8
00213c  9f820000  addli r5, r1, 0
002140  13615804  setlt.f r2, r16, r5
002144  9f800200  addli r1, r5, 0
002148  3b200100  bneq r2, zero, 8
00214c  9f000800  addli r1, r16, 0
002150  1b319800  slli r2, r16, 9
002154  9bb19200  slli r3, r5, 9
002158  1b427801  srli r4, r16, 23
00215c  1f8c0200  addli r24, r5, 0
002160  9bc27201  srli r5, r5, 23
002164  13010100  seteq r2, r2, zero
002168  93810100  seteq r3, r3, zero
00216c  1b02f20f  andi r4, r4, 255
002170  9b82f20f  andi r5, r5, 255
002174  1b72f20f  setlti r4, r4, 255
002178  9bf2f20f  setlti r5, r5, 255
00217c  17112200  or r2, r4, r2
002180  97913200  or r3, r5, r3
002184  17812100  and r2, r3, r2
002188  37340110  beq r2, zero, 8460
00218c  63023ffd  loadli.w r4,  -360(r30)
002190  3b440c10  bneq r24, zero, 8464
002194  37200800  beq r16, zero, 8
002198  1f080c00  addli r16, r24, 0
00219c  13611006  setle.f r2, zero, r1
0021a0  93e10006  setle.f r3, r1, zero
0021a4  17812100  and r2, r3, r2
0021a8  3b200100  bneq r2, zero, 8
0021ac  1f880000  addli r16, r1, 0
0021b0  13610205  setlt.f r2, r4, r16
0021b4  9f850600  addli r11, r13, 0
0021b8  9f000800  addli r1, r16, 0
0021bc  3b200100  bneq r2, zero, 8
0021c0  9f000200  addli r1, r4, 0
0021c4  1b319200  slli r2, r4, 9
0021c8  9b319800  slli r3, r16, 9
0021cc  1b427201  srli r4, r4, 23
0021d0  9b427801  srli r5, r16, 23
0021d4  e306affb  loadli.w r13,  -560(r30)
0021d8  13010100  seteq r2, r2, zero
0021dc  93810100  seteq r3, r3, zero
0021e0  1b02f20f  andi r4, r4, 255
0021e4  9b82f20f  andi r5, r5, 255
0021e8  1b72f20f  setlti r4, r4, 255
0021ec  9bf2f20f  setlti r5, r5, 255
0021f0  17112200  or r2, r4, r2
0021f4  97913200  or r3, r5, r3
0021f8  17812100  and r2, r3, r2
0021fc  3b200100  bneq r2, zero, 8
002200  ab00c07f  lui r1, 523264
002204  63423ffd  loadli.w r4,  -356(r30)
002208  1f090500  addli r18, r10, 0
00220c  37200800  beq r16, zero, 8
002210  1f880000  addli r16, r1, 0
002214  e3023ffd  loadli.w r5,  -360(r30)
002218  1f850c00  addli r10, r25, 0
00221c  37a00200  beq r5, zero, 8
002220  9f020800  addli r5, r16, 0
002224  13611006  setle.f r2, zero, r1
002228  93e10006  setle.f r3, r1, zero
00222c  9f0c0700  addli r25, r14, 0
002230  17812100  and r2, r3, r2
002234  3b200100  bneq r2, zero, 8
002238  9f820000  addli r5, r1, 0
00223c  13615204  setlt.f r2, r4, r5
002240  63070ffc  loadli.w r14,  -512(r30)
002244  9f800200  addli r1, r5, 0
002248  3b200100  bneq r2, zero, 8
00224c  9f000200  addli r1, r4, 0
002250  1b319200  slli r2, r4, 9
002254  9bb19200  slli r3, r5, 9
002258  1b427201  srli r4, r4, 23
00225c  1f880200  addli r16, r5, 0
002260  9bc27201  srli r5, r5, 23
002264  1f8c0400  addli r24, r9, 0
002268  13010100  seteq r2, r2, zero
00226c  93810100  seteq r3, r3, zero
002270  1b02f20f  andi r4, r4, 255
002274  9b82f20f  andi r5, r5, 255
002278  1b72f20f  setlti r4, r4, 255
00227c  9bf2f20f  setlti r5, r5, 255
002280  17112200  or r2, r4, r2
002284  97913200  or r3, r5, r3
002288  17812100  and r2, r3, r2
00228c  3b200100  bneq r2, zero, 8
002290  ab00c07f  lui r1, 523264
002294  9f040d00  addli r9, r26, 0
002298  37200800  beq r16, zero, 8
00229c  1f880000  addli r16, r1, 0
0022a0  e3423ffd  loadli.w r5,  -356(r30)
0022a4  1f8d0300  addli r26, r7, 0
0022a8  37a00200  beq r5, zero, 8
0022ac  9f020800  addli r5, r16, 0
0022b0  13611006  setle.f r2, zero, r1
0022b4  93e10006  setle.f r3, r1, zero
0022b8  9f830700  addli r7, r15, 0
0022bc  17812100  and r2, r3, r2
0022c0  3b200100  bneq r2, zero, 8
0022c4  9f820000  addli r5, r1, 0
0022c8  13e15b04  setlt.f r2, r23, r5
0022cc  e3472ffc  loadli.w r15,  -492(r30)
0022d0  9f800200  addli r1, r5, 0
0022d4  3b200100  bneq r2, zero, 8
0022d8  9f800b00  addli r1, r23, 0
0022dc  1bb19b00  slli r2, r23, 9
0022e0  9bb19200  slli r3, r5, 9
0022e4  1bc27b01  srli r4, r23, 23
0022e8  1f880200  addli r16, r5, 0
0022ec  9bc27201  srli r5, r5, 23
0022f0  13010100  seteq r2, r2, zero
0022f4  93810100  seteq r3, r3, zero
0022f8  1b02f20f  andi r4, r4, 255
0022fc  9b82f20f  andi r5, r5, 255
002300  1b72f20f  setlti r4, r4, 255
002304  9bf2f20f  setlti r5, r5, 255
002308  17112200  or r2, r4, r2
00230c  97913200  or r3, r5, r3
002310  17812100  and r2, r3, r2
002314  376e010e  beq r2, zero, 8088
002318  63024ffd  loadli.w r4,  -352(r30)
00231c  3b7e080e  bneq r16, zero, 8092
002320  37a00b00  beq r23, zero, 8
002324  9f0b0800  addli r23, r16, 0
002328  13611006  setle.f r2, zero, r1
00232c  93e10006  setle.f r3, r1, zero
002330  17812100  and r2, r3, r2
002334  3b200100  bneq r2, zero, 8
002338  9f8b0000  addli r23, r1, 0
00233c  13617205  setlt.f r2, r4, r23
002340  9f800b00  addli r1, r23, 0
002344  1f880700  addli r16, r15, 0
002348  3b200100  bneq r2, zero, 8
00234c  9f000200  addli r1, r4, 0
002350  1b319200  slli r2, r4, 9
002354  9bb19b00  slli r3, r23, 9
002358  1b427201  srli r4, r4, 23
00235c  9bc27b01  srli r5, r23, 23
002360  9f870300  addli r15, r7, 0
002364  13010100  seteq r2, r2, zero
002368  93810100  seteq r3, r3, zero
00236c  1b02f20f  andi r4, r4, 255
002370  9b82f20f  andi r5, r5, 255
002374  1b72f20f  setlti r4, r4, 255
002378  9bf2f20f  setlti r5, r5, 255
00237c  17112200  or r2, r4, r2
002380  97913200  or r3, r5, r3
002384  17812100  and r2, r3, r2
002388  3b200100  bneq r2, zero, 8
00238c  ab00c07f  lui r1, 523264
002390  9f030d00  addli r7, r26, 0
002394  37a00b00  beq r23, zero, 8
002398  9f8b0000  addli r23, r1, 0
00239c  e3024ffd  loadli.w r5,  -352(r30)
0023a0  1f8d0400  addli r26, r9, 0
0023a4  37a00200  beq r5, zero, 8
0023a8  9f820b00  addli r5, r23, 0
0023ac  13611006  setle.f r2, zero, r1
0023b0  93e10006  setle.f r3, r1, zero
0023b4  9f040c00  addli r9, r24, 0
0023b8  17812100  and r2, r3, r2
0023bc  3b200100  bneq r2, zero, 8
0023c0  9f820000  addli r5, r1, 0
0023c4  13615404  setlt.f r2, r8, r5
0023c8  9f800200  addli r1, r5, 0
0023cc  1f0c0700  addli r24, r14, 0
0023d0  3b200100  bneq r2, zero, 8
0023d4  9f000400  addli r1, r8, 0
0023d8  1b319400  slli r2, r8, 9
0023dc  9bb19200  slli r3, r5, 9
0023e0  1b427401  srli r4, r8, 23
0023e4  9f8b0200  addli r23, r5, 0
0023e8  9bc27201  srli r5, r5, 23
0023ec  1f870c00  addli r14, r25, 0
0023f0  13010100  seteq r2, r2, zero
0023f4  93810100  seteq r3, r3, zero
0023f8  1b02f20f  andi r4, r4, 255
0023fc  9b82f20f  andi r5, r5, 255
002400  1b72f20f  setlti r4, r4, 255
002404  9bf2f20f  setlti r5, r5, 255
002408  17112200  or r2, r4, r2
00240c  97913200  or r3, r5, r3
002410  17812100  and r2, r3, r2
002414  3b200100  bneq r2, zero, 8
002418  ab00c07f  lui r1, 523264
00241c  63424ffd  loadli.w r4,  -348(r30)
002420  9f0c0500  addli r25, r10, 0
002424  37a00b00  beq r23, zero, 8
002428  9f8b0000  addli r23, r1, 0
00242c  1f050900  addli r10, r18, 0
002430  37200400  beq r8, zero, 8
002434  1f840b00  addli r8, r23, 0
002438  13611006  setle.f r2, zero, r1
00243c  93e10006  setle.f r3, r1, zero
002440  1f890600  addli r18, r13, 0
002444  17812100  and r2, r3, r2
002448  3b200100  bneq r2, zero, 8
00244c  1f840000  addli r8, r1, 0
002450  13618204  setlt.f r2, r4, r8
002454  9f000400  addli r1, r8, 0
002458  9f860500  addli r13, r11, 0
00245c  3b200100  bneq r2, zero, 8
002460  9f000200  addli r1, r4, 0
002464  1b319200  slli r2, r4, 9
002468  9b319400  slli r3, r8, 9
00246c  1b427201  srli r4, r4, 23
002470  9b427401  srli r5, r8, 23
002474  e3450ffc  loadli.w r11,  -508(r30)
002478  13010100  seteq r2, r2, zero
00247c  93810100  seteq r3, r3, zero
002480  1b02f20f  andi r4, r4, 255
002484  9b82f20f  andi r5, r5, 255
002488  1b72f20f  setlti r4, r4, 255
00248c  9bf2f20f  setlti r5, r5, 255
002490  17112200  or r2, r4, r2
002494  97913200  or r3, r5, r3
002498  17812100  and r2, r3, r2
00249c  b728010e  beq r2, zero, 7720
0024a0  bb38040e  bneq r8, zero, 7724
0024a4  e3424ffd  loadli.w r5,  -348(r30)
0024a8  37a00200  beq r5, zero, 8
0024ac  9f020400  addli r5, r8, 0
0024b0  13611006  setle.f r2, zero, r1
0024b4  93e10006  setle.f r3, r1, zero
0024b8  17812100  and r2, r3, r2
0024bc  3b200100  bneq r2, zero, 8
0024c0  9f820000  addli r5, r1, 0
0024c4  13e15804  setlt.f r2, r17, r5
0024c8  9f800200  addli r1, r5, 0
0024cc  3b200100  bneq r2, zero, 8
0024d0  9f800800  addli r1, r17, 0
0024d4  1bb19800  slli r2, r17, 9
0024d8  9bb19200  slli r3, r5, 9
0024dc  1bc27801  srli r4, r17, 23
0024e0  1f840200  addli r8, r5, 0
0024e4  9bc27201  srli r5, r5, 23
0024e8  13010100  seteq r2, r2, zero
0024ec  93810100  seteq r3, r3, zero
0024f0  1b02f20f  andi r4, r4, 255
0024f4  9b82f20f  andi r5, r5, 255
0024f8  1b72f20f  setlti r4, r4, 255
0024fc  9bf2f20f  setlti r5, r5, 255
002500  17112200  or r2, r4, r2
002504  97913200  or r3, r5, r3
002508  17812100  and r2, r3, r2
00250c  3747010e  beq r2, zero, 7632
002510  63025ffd  loadli.w r4,  -344(r30)
002514  3b57040e  bneq r8, zero, 7636
002518  37a00800  beq r17, zero, 8
00251c  9f080400  addli r17, r8, 0
002520  13611006  setle.f r2, zero, r1
002524  93e10006  setle.f r3, r1, zero
002528  17812100  and r2, r3, r2
00252c  3b200100  bneq r2, zero, 8
002530  9f880000  addli r17, r1, 0
002534  13611205  setlt.f r2, r4, r17
002538  9f800800  addli r1, r17, 0
00253c  3b200100  bneq r2, zero, 8
002540  9f000200  addli r1, r4, 0
002544  1b319200  slli r2, r4, 9
002548  9bb19800  slli r3, r17, 9
00254c  1b427201  srli r4, r4, 23
002550  9bc27801  srli r5, r17, 23
002554  13010100  seteq r2, r2, zero
002558  93810100  seteq r3, r3, zero
00255c  1b02f20f  andi r4, r4, 255
002560  9b82f20f  andi r5, r5, 255
002564  1b72f20f  setlti r4, r4, 255
002568  9bf2f20f  setlti r5, r5, 255
00256c  17112200  or r2, r4, r2
002570  97913200  or r3, r5, r3
002574  17812100  and r2, r3, r2
002578  b775010e  beq r2, zero, 7548
00257c  3b86080e  bneq r17, zero, 7552
002580  e3025ffd  loadli.w r5,  -344(r30)
002584  37a00200  beq r5, zero, 8
002588  9f820800  addli r5, r17, 0
00258c  13611006  setle.f r2, zero, r1
002590  93e10006  setle.f r3, r1, zero
002594  17812100  and r2, r3, r2
002598  3b200100  bneq r2, zero, 8
00259c  9f820000  addli r5, r1, 0
0025a0  13e15a04  setlt.f r2, r21, r5
0025a4  9f800200  addli r1, r5, 0
0025a8  3b200100  bneq r2, zero, 8
0025ac  9f800a00  addli r1, r21, 0
0025b0  1bb19a00  slli r2, r21, 9
0025b4  9bb19200  slli r3, r5, 9
0025b8  1bc27a01  srli r4, r21, 23
0025bc  9f880200  addli r17, r5, 0
0025c0  9bc27201  srli r5, r5, 23
0025c4  13010100  seteq r2, r2, zero
0025c8  93810100  seteq r3, r3, zero
0025cc  1b02f20f  andi r4, r4, 255
0025d0  9b82f20f  andi r5, r5, 255
0025d4  1b72f20f  setlti r4, r4, 255
0025d8  9bf2f20f  setlti r5, r5, 255
0025dc  17112200  or r2, r4, r2
0025e0  97913200  or r3, r5, r3
0025e4  17812100  and r2, r3, r2
0025e8  b714010e  beq r2, zero, 7460
0025ec  63425ffd  loadli.w r4,  -340(r30)
0025f0  bba4080e  bneq r17, zero, 7464
0025f4  37a00a00  beq r21, zero, 8
0025f8  9f8a0800  addli r21, r17, 0
0025fc  13611006  setle.f r2, zero, r1
002600  93e10006  setle.f r3, r1, zero
002604  17812100  and r2, r3, r2
002608  3b200100  bneq r2, zero, 8
00260c  9f8a0000  addli r21, r1, 0
002610  13615205  setlt.f r2, r4, r21
002614  9f800a00  addli r1, r21, 0
002618  3b200100  bneq r2, zero, 8
00261c  9f000200  addli r1, r4, 0
002620  1b319200  slli r2, r4, 9
002624  9bb19a00  slli r3, r21, 9
002628  1b427201  srli r4, r4, 23
00262c  9bc27a01  srli r5, r21, 23
002630  13010100  seteq r2, r2, zero
002634  93810100  seteq r3, r3, zero
002638  1b02f20f  andi r4, r4, 255
00263c  9b82f20f  andi r5, r5, 255
002640  1b72f20f  setlti r4, r4, 255
002644  9bf2f20f  setlti r5, r5, 255
002648  17112200  or r2, r4, r2
00264c  97913200  or r3, r5, r3
002650  17812100  and r2, r3, r2
002654  3743010e  beq r2, zero, 7376
002658  3bd30a0e  bneq r21, zero, 7380
00265c  e3425ffd  loadli.w r5,  -340(r30)
002660  37a00200  beq r5, zero, 8
002664  9f820a00  addli r5, r21, 0
002668  13611006  setle.f r2, zero, r1
00266c  93e10006  setle.f r3, r1, zero
002670  17812100  and r2, r3, r2
002674  3b200100  bneq r2, zero, 8
002678  9f820000  addli r5, r1, 0
00267c  13615b04  setlt.f r2, r22, r5
002680  9f800200  addli r1, r5, 0
002684  3b200100  bneq r2, zero, 8
002688  9f000b00  addli r1, r22, 0
00268c  1b319b00  slli r2, r22, 9
002690  9bb19200  slli r3, r5, 9
002694  1b427b01  srli r4, r22, 23
002698  9f8a0200  addli r21, r5, 0
00269c  9bc27201  srli r5, r5, 23
0026a0  13010100  seteq r2, r2, zero
0026a4  93810100  seteq r3, r3, zero
0026a8  1b02f20f  andi r4, r4, 255
0026ac  9b82f20f  andi r5, r5, 255
0026b0  1b72f20f  setlti r4, r4, 255
0026b4  9bf2f20f  setlti r5, r5, 255
0026b8  17112200  or r2, r4, r2
0026bc  97913200  or r3, r5, r3
0026c0  17812100  and r2, r3, r2
0026c4  b761010e  beq r2, zero, 7288
0026c8  63026ffd  loadli.w r4,  -336(r30)
0026cc  bbf10a0e  bneq r21, zero, 7292
0026d0  37200b00  beq r22, zero, 8
0026d4  1f8b0a00  addli r22, r21, 0
0026d8  13611006  setle.f r2, zero, r1
0026dc  93e10006  setle.f r3, r1, zero
0026e0  17812100  and r2, r3, r2
0026e4  3b200100  bneq r2, zero, 8
0026e8  1f8b0000  addli r22, r1, 0
0026ec  13616205  setlt.f r2, r4, r22
0026f0  9f000b00  addli r1, r22, 0
0026f4  3b200100  bneq r2, zero, 8
0026f8  9f000200  addli r1, r4, 0
0026fc  1b319200  slli r2, r4, 9
002700  9b319b00  slli r3, r22, 9
002704  1b427201  srli r4, r4, 23
002708  9b427b01  srli r5, r22, 23
00270c  13010100  seteq r2, r2, zero
002710  93810100  seteq r3, r3, zero
002714  1b02f20f  andi r4, r4, 255
002718  9b82f20f  andi r5, r5, 255
00271c  1b72f20f  setlti r4, r4, 255
002720  9bf2f20f  setlti r5, r5, 255
002724  17112200  or r2, r4, r2
002728  97913200  or r3, r5, r3
00272c  17812100  and r2, r3, r2
002730  3b200100  bneq r2, zero, 8
002734  ab00c07f  lui r1, 523264
002738  37200b00  beq r22, zero, 8
00273c  1f8b0000  addli r22, r1, 0
002740  1f010b00  addli r2, r22, 0
002744  630bcffb  loadli.w r22,  -544(r30)
002748  e3026ffd  loadli.w r5,  -336(r30)
00274c  37a00200  beq r5, zero, 8
002750  9f020100  addli r5, r2, 0
002754  13611006  setle.f r2, zero, r1
002758  93e10006  setle.f r3, r1, zero
00275c  e30a3ffc  loadli.w r21,  -488(r30)
002760  17812100  and r2, r3, r2
002764  3b200100  bneq r2, zero, 8
002768  9f820000  addli r5, r1, 0
00276c  13615a04  setlt.f r2, r20, r5
002770  e348effb  loadli.w r17,  -524(r30)
002774  9f800200  addli r1, r5, 0
002778  3b200100  bneq r2, zero, 8
00277c  9f000a00  addli r1, r20, 0
002780  1b319a00  slli r2, r20, 9
002784  9bb19200  slli r3, r5, 9
002788  1b427a01  srli r4, r20, 23
00278c  1f840200  addli r8, r5, 0
002790  9bc27201  srli r5, r5, 23
002794  13010100  seteq r2, r2, zero
002798  93810100  seteq r3, r3, zero
00279c  1b02f20f  andi r4, r4, 255
0027a0  9b82f20f  andi r5, r5, 255
0027a4  1b72f20f  setlti r4, r4, 255
0027a8  9bf2f20f  setlti r5, r5, 255
0027ac  17112200  or r2, r4, r2
0027b0  97913200  or r3, r5, r3
0027b4  17812100  and r2, r3, r2
0027b8  377e010c  beq r2, zero, 7068
0027bc  63426ffd  loadli.w r4,  -332(r30)
0027c0  bb0e040c  bneq r8, zero, 7072
0027c4  37200a00  beq r20, zero, 8
0027c8  1f0a0400  addli r20, r8, 0
0027cc  13611006  setle.f r2, zero, r1
0027d0  93e10006  setle.f r3, r1, zero
0027d4  17812100  and r2, r3, r2
0027d8  3b200100  bneq r2, zero, 8
0027dc  1f8a0000  addli r20, r1, 0
0027e0  13614205  setlt.f r2, r4, r20
0027e4  9f000a00  addli r1, r20, 0
0027e8  1f840800  addli r8, r17, 0
0027ec  3b200100  bneq r2, zero, 8
0027f0  9f000200  addli r1, r4, 0
0027f4  1b319200  slli r2, r4, 9
0027f8  9b319a00  slli r3, r20, 9
0027fc  1b427201  srli r4, r4, 23
002800  9b427a01  srli r5, r20, 23
002804  9f880a00  addli r17, r21, 0
002808  13010100  seteq r2, r2, zero
00280c  93810100  seteq r3, r3, zero
002810  1b02f20f  andi r4, r4, 255
002814  9b82f20f  andi r5, r5, 255
002818  1b72f20f  setlti r4, r4, 255
00281c  9bf2f20f  setlti r5, r5, 255
002820  17112200  or r2, r4, r2
002824  97913200  or r3, r5, r3
002828  17812100  and r2, r3, r2
00282c  370d010c  beq r2, zero, 6976
002830  9f0a0b00  addli r21, r22, 0
002834  3b1d0a0c  bneq r20, zero, 6980
002838  e3426ffd  loadli.w r5,  -332(r30)
00283c  37a00200  beq r5, zero, 8
002840  9f020a00  addli r5, r20, 0
002844  13611006  setle.f r2, zero, r1
002848  93e10006  setle.f r3, r1, zero
00284c  17812100  and r2, r3, r2
002850  3b200100  bneq r2, zero, 8
002854  9f820000  addli r5, r1, 0
002858  13e15904  setlt.f r2, r19, r5
00285c  9f800200  addli r1, r5, 0
002860  3b200100  bneq r2, zero, 8
002864  9f800900  addli r1, r19, 0
002868  1bb19900  slli r2, r19, 9
00286c  9bb19200  slli r3, r5, 9
002870  1bc27901  srli r4, r19, 23
002874  1f8a0200  addli r20, r5, 0
002878  9bc27201  srli r5, r5, 23
00287c  13010100  seteq r2, r2, zero
002880  93810100  seteq r3, r3, zero
002884  1b02f20f  andi r4, r4, 255
002888  9b82f20f  andi r5, r5, 255
00288c  1b72f20f  setlti r4, r4, 255
002890  9bf2f20f  setlti r5, r5, 255
002894  17112200  or r2, r4, r2
002898  97913200  or r3, r5, r3
00289c  17812100  and r2, r3, r2
0028a0  b72b010c  beq r2, zero, 6888
0028a4  63027ffd  loadli.w r4,  -328(r30)
0028a8  bb3b0a0c  bneq r20, zero, 6892
0028ac  37a00900  beq r19, zero, 8
0028b0  9f090a00  addli r19, r20, 0
0028b4  13611006  setle.f r2, zero, r1
0028b8  93e10006  setle.f r3, r1, zero
0028bc  17812100  and r2, r3, r2
0028c0  3b200100  bneq r2, zero, 8
0028c4  9f890000  addli r19, r1, 0
0028c8  13613205  setlt.f r2, r4, r19
0028cc  9f800900  addli r1, r19, 0
0028d0  3b200100  bneq r2, zero, 8
0028d4  9f000200  addli r1, r4, 0
0028d8  1b319200  slli r2, r4, 9
0028dc  9bb19900  slli r3, r19, 9
0028e0  1b427201  srli r4, r4, 23
0028e4  9bc27901  srli r5, r19, 23
0028e8  13010100  seteq r2, r2, zero
0028ec  93810100  seteq r3, r3, zero
0028f0  1b02f20f  andi r4, r4, 255
0028f4  9b82f20f  andi r5, r5, 255
0028f8  1b72f20f  setlti r4, r4, 255
0028fc  9bf2f20f  setlti r5, r5, 255
002900  17112200  or r2, r4, r2
002904  97913200  or r3, r5, r3
002908  17812100  and r2, r3, r2
00290c  375a010c  beq r2, zero, 6804
002910  3bea090c  bneq r19, zero, 6808
002914  e3027ffd  loadli.w r5,  -328(r30)
002918  37a00200  beq r5, zero, 8
00291c  9f820900  addli r5, r19, 0
002920  13611006  setle.f r2, zero, r1
002924  93e10006  setle.f r3, r1, zero
002928  17812100  and r2, r3, r2
00292c  3b200100  bneq r2, zero, 8
002930  9f820000  addli r5, r1, 0
002934  13615904  setlt.f r2, r18, r5
002938  9f800200  addli r1, r5, 0
00293c  3b200100  bneq r2, zero, 8
002940  9f000900  addli r1, r18, 0
002944  1b319900  slli r2, r18, 9
002948  9bb19200  slli r3, r5, 9
00294c  1b427901  srli r4, r18, 23
002950  9f890200  addli r19, r5, 0
002954  9bc27201  srli r5, r5, 23
002958  13010100  seteq r2, r2, zero
00295c  93810100  seteq r3, r3, zero
002960  1b02f20f  andi r4, r4, 255
002964  9b82f20f  andi r5, r5, 255
002968  1b72f20f  setlti r4, r4, 255
00296c  9bf2f20f  setlti r5, r5, 255
002970  17112200  or r2, r4, r2
002974  97913200  or r3, r5, r3
002978  17812100  and r2, r3, r2
00297c  b778010c  beq r2, zero, 6716
002980  63427ffd  loadli.w r4,  -324(r30)
002984  3b89090c  bneq r19, zero, 6720
002988  37200900  beq r18, zero, 8
00298c  1f890900  addli r18, r19, 0
002990  13611006  setle.f r2, zero, r1
002994  93e10006  setle.f r3, r1, zero
002998  17812100  and r2, r3, r2
00299c  3b200100  bneq r2, zero, 8
0029a0  1f890000  addli r18, r1, 0
0029a4  13612205  setlt.f r2, r4, r18
0029a8  e3097ffb  loadli.w r19,  -584(r30)
0029ac  9f000900  addli r1, r18, 0
0029b0  3b200100  bneq r2, zero, 8
0029b4  9f000200  addli r1, r4, 0
0029b8  1b319200  slli r2, r4, 9
0029bc  9b319900  slli r3, r18, 9
0029c0  1b427201  srli r4, r4, 23
0029c4  9b427901  srli r5, r18, 23
0029c8  13010100  seteq r2, r2, zero
0029cc  93810100  seteq r3, r3, zero
0029d0  1b02f20f  andi r4, r4, 255
0029d4  9b82f20f  andi r5, r5, 255
0029d8  1b72f20f  setlti r4, r4, 255
0029dc  9bf2f20f  setlti r5, r5, 255
0029e0  17112200  or r2, r4, r2
0029e4  97913200  or r3, r5, r3
0029e8  17812100  and r2, r3, r2
0029ec  b717010c  beq r2, zero, 6628
0029f0  bb27090c  bneq r18, zero, 6632
0029f4  e3427ffd  loadli.w r5,  -324(r30)
0029f8  37a00200  beq r5, zero, 8
0029fc  9f020900  addli r5, r18, 0
002a00  13611006  setle.f r2, zero, r1
002a04  93e10006  setle.f r3, r1, zero
002a08  17812100  and r2, r3, r2
002a0c  3b200100  bneq r2, zero, 8
002a10  9f820000  addli r5, r1, 0
002a14  13e15904  setlt.f r2, r19, r5
002a18  9f800200  addli r1, r5, 0
002a1c  3b200100  bneq r2, zero, 8
002a20  9f800900  addli r1, r19, 0
002a24  1bb19900  slli r2, r19, 9
002a28  9bb19200  slli r3, r5, 9
002a2c  1bc27901  srli r4, r19, 23
002a30  1f890200  addli r18, r5, 0
002a34  9bc27201  srli r5, r5, 23
002a38  13010100  seteq r2, r2, zero
002a3c  93810100  seteq r3, r3, zero
002a40  1b02f20f  andi r4, r4, 255
002a44  9b82f20f  andi r5, r5, 255
002a48  1b72f20f  setlti r4, r4, 255
002a4c  9bf2f20f  setlti r5, r5, 255
002a50  17112200  or r2, r4, r2
002a54  97913200  or r3, r5, r3
002a58  17812100  and r2, r3, r2
002a5c  3736010c  beq r2, zero, 6540
002a60  63028ffd  loadli.w r4,  -320(r30)
002a64  3b46090c  bneq r18, zero, 6544
002a68  37a00900  beq r19, zero, 8
002a6c  9f090900  addli r19, r18, 0
002a70  13611006  setle.f r2, zero, r1
002a74  93e10006  setle.f r3, r1, zero
002a78  17812100  and r2, r3, r2
002a7c  3b200100  bneq r2, zero, 8
002a80  9f890000  addli r19, r1, 0
002a84  13613205  setlt.f r2, r4, r19
002a88  6349bffb  loadli.w r18,  -548(r30)
002a8c  9f800900  addli r1, r19, 0
002a90  3b200100  bneq r2, zero, 8
002a94  9f000200  addli r1, r4, 0
002a98  1b319200  slli r2, r4, 9
002a9c  9bb19900  slli r3, r19, 9
002aa0  1b427201  srli r4, r4, 23
002aa4  9bc27901  srli r5, r19, 23
002aa8  13010100  seteq r2, r2, zero
002aac  93810100  seteq r3, r3, zero
002ab0  1b02f20f  andi r4, r4, 255
002ab4  9b82f20f  andi r5, r5, 255
002ab8  1b72f20f  setlti r4, r4, 255
002abc  9bf2f20f  setlti r5, r5, 255
002ac0  17112200  or r2, r4, r2
002ac4  97913200  or r3, r5, r3
002ac8  17812100  and r2, r3, r2
002acc  b754010c  beq r2, zero, 6452
002ad0  bbe4090c  bneq r19, zero, 6456
002ad4  e3028ffd  loadli.w r5,  -320(r30)
002ad8  37a00200  beq r5, zero, 8
002adc  9f820900  addli r5, r19, 0
002ae0  13611006  setle.f r2, zero, r1
002ae4  93e10006  setle.f r3, r1, zero
002ae8  17812100  and r2, r3, r2
002aec  3b200100  bneq r2, zero, 8
002af0  9f820000  addli r5, r1, 0
002af4  13615604  setlt.f r2, r12, r5
002af8  9f800200  addli r1, r5, 0
002afc  3b200100  bneq r2, zero, 8
002b00  9f000600  addli r1, r12, 0
002b04  1b319600  slli r2, r12, 9
002b08  9bb19200  slli r3, r5, 9
002b0c  1b427601  srli r4, r12, 23
002b10  9f8b0200  addli r23, r5, 0
002b14  9bc27201  srli r5, r5, 23
002b18  13010100  seteq r2, r2, zero
002b1c  93810100  seteq r3, r3, zero
002b20  1b02f20f  andi r4, r4, 255
002b24  9b82f20f  andi r5, r5, 255
002b28  1b72f20f  setlti r4, r4, 255
002b2c  9bf2f20f  setlti r5, r5, 255
002b30  17112200  or r2, r4, r2
002b34  97913200  or r3, r5, r3
002b38  17812100  and r2, r3, r2
002b3c  3773010c  beq r2, zero, 6364
002b40  bb830b0c  bneq r23, zero, 6368
002b44  37200600  beq r12, zero, 8
002b48  1f860b00  addli r12, r23, 0
002b4c  13611006  setle.f r2, zero, r1
002b50  93e10006  setle.f r3, r1, zero
002b54  17812100  and r2, r3, r2
002b58  3b200100  bneq r2, zero, 8
002b5c  1f860000  addli r12, r1, 0
002b60  1361c904  setlt.f r2, r18, r12
002b64  9f000600  addli r1, r12, 0
002b68  3b200100  bneq r2, zero, 8
002b6c  9f000900  addli r1, r18, 0
002b70  1b319900  slli r2, r18, 9
002b74  9b319600  slli r3, r12, 9
002b78  1b427901  srli r4, r18, 23
002b7c  9b427601  srli r5, r12, 23
002b80  13010100  seteq r2, r2, zero
002b84  93810100  seteq r3, r3, zero
002b88  1b02f20f  andi r4, r4, 255
002b8c  9b82f20f  andi r5, r5, 255
002b90  1b72f20f  setlti r4, r4, 255
002b94  9bf2f20f  setlti r5, r5, 255
002b98  17112200  or r2, r4, r2
002b9c  97913200  or r3, r5, r3
002ba0  17812100  and r2, r3, r2
002ba4  3722010c  beq r2, zero, 6280
002ba8  6302dffd  loadli.w r4,  -280(r30)
002bac  3b32060c  bneq r12, zero, 6284
002bb0  37200900  beq r18, zero, 8
002bb4  1f090600  addli r18, r12, 0
002bb8  13611006  setle.f r2, zero, r1
002bbc  93e10006  setle.f r3, r1, zero
002bc0  17812100  and r2, r3, r2
002bc4  3b200100  bneq r2, zero, 8
002bc8  1f890000  addli r18, r1, 0
002bcc  13612205  setlt.f r2, r4, r18
002bd0  9f000900  addli r1, r18, 0
002bd4  3b200100  bneq r2, zero, 8
002bd8  9f000200  addli r1, r4, 0
002bdc  1b319200  slli r2, r4, 9
002be0  9b319900  slli r3, r18, 9
002be4  1b427201  srli r4, r4, 23
002be8  9b427901  srli r5, r18, 23
002bec  13010100  seteq r2, r2, zero
002bf0  93810100  seteq r3, r3, zero
002bf4  1b02f20f  andi r4, r4, 255
002bf8  9b82f20f  andi r5, r5, 255
002bfc  1b72f20f  setlti r4, r4, 255
002c00  9bf2f20f  setlti r5, r5, 255
002c04  17112200  or r2, r4, r2
002c08  97913200  or r3, r5, r3
002c0c  17812100  and r2, r3, r2
002c10  3b200100  bneq r2, zero, 8
002c14  ab00c07f  lui r1, 523264
002c18  37200900  beq r18, zero, 8
002c1c  1f890000  addli r18, r1, 0
002c20  634b4ffc  loadli.w r22,  -476(r30)
002c24  e302dffd  loadli.w r5,  -280(r30)
002c28  1f010900  addli r2, r18, 0
002c2c  37a00200  beq r5, zero, 8
002c30  9f020100  addli r5, r2, 0
002c34  13611006  setle.f r2, zero, r1
002c38  93e10006  setle.f r3, r1, zero
002c3c  630a4ffc  loadli.w r20,  -480(r30)
002c40  17812100  and r2, r3, r2
002c44  3b200100  bneq r2, zero, 8
002c48  9f820000  addli r5, r1, 0
002c4c  e3418ffd  loadli.w r3,  -316(r30)
002c50  e349affb  loadli.w r19,  -556(r30)
002c54  9f800200  addli r1, r5, 0
002c58  13e15104  setlt.f r2, r3, r5
002c5c  3b200100  bneq r2, zero, 8
002c60  9f800100  addli r1, r3, 0
002c64  1bb19100  slli r2, r3, 9
002c68  1f820100  addli r4, r3, 0
002c6c  9bb19200  slli r3, r5, 9
002c70  9f8b0200  addli r23, r5, 0
002c74  9bc27201  srli r5, r5, 23
002c78  13010100  seteq r2, r2, zero
002c7c  93810100  seteq r3, r3, zero
002c80  1b427201  srli r4, r4, 23
002c84  9b82f20f  andi r5, r5, 255
002c88  1b02f20f  andi r4, r4, 255
002c8c  9bf2f20f  setlti r5, r5, 255
002c90  1b72f20f  setlti r4, r4, 255
002c94  17112200  or r2, r4, r2
002c98  97913200  or r3, r5, r3
002c9c  17812100  and r2, r3, r2
002ca0  b71e010a  beq r2, zero, 6052
002ca4  6302effd  loadli.w r4,  -272(r30)
002ca8  bbae0b0a  bneq r23, zero, 6056
002cac  e3418ffd  loadli.w r3,  -316(r30)
002cb0  37a00100  beq r3, zero, 8
002cb4  9f810b00  addli r3, r23, 0
002cb8  9f820100  addli r5, r3, 0
002cbc  13611006  setle.f r2, zero, r1
002cc0  93e10006  setle.f r3, r1, zero
002cc4  17812100  and r2, r3, r2
002cc8  9f810200  addli r3, r5, 0
002ccc  3b200100  bneq r2, zero, 8
002cd0  9f810000  addli r3, r1, 0
002cd4  13613204  setlt.f r2, r4, r3
002cd8  63463ffc  loadli.w r12,  -484(r30)
002cdc  9f800100  addli r1, r3, 0
002ce0  9f8b0900  addli r23, r19, 0
002ce4  3b200100  bneq r2, zero, 8
002ce8  9f000200  addli r1, r4, 0
002cec  9f820100  addli r5, r3, 0
002cf0  1b319200  slli r2, r4, 9
002cf4  1b427201  srli r4, r4, 23
002cf8  9f090a00  addli r19, r20, 0
002cfc  9bb19200  slli r3, r5, 9
002d00  13010100  seteq r2, r2, zero
002d04  1f890200  addli r18, r5, 0
002d08  9bc27201  srli r5, r5, 23
002d0c  1b02f20f  andi r4, r4, 255
002d10  93810100  seteq r3, r3, zero
002d14  9b82f20f  andi r5, r5, 255
002d18  1b72f20f  setlti r4, r4, 255
002d1c  9bf2f20f  setlti r5, r5, 255
002d20  17112200  or r2, r4, r2
002d24  97913200  or r3, r5, r3
002d28  17812100  and r2, r3, r2
002d2c  b75c010a  beq r2, zero, 5940
002d30  1f0a0b00  addli r20, r22, 0
002d34  bb6c090a  bneq r18, zero, 5944
002d38  e302effd  loadli.w r5,  -272(r30)
002d3c  37a00200  beq r5, zero, 8
002d40  9f020900  addli r5, r18, 0
002d44  13611006  setle.f r2, zero, r1
002d48  93e10006  setle.f r3, r1, zero
002d4c  17812100  and r2, r3, r2
002d50  3b200100  bneq r2, zero, 8
002d54  9f820000  addli r5, r1, 0
002d58  13e15b04  setlt.f r2, r23, r5
002d5c  9f800200  addli r1, r5, 0
002d60  1f090600  addli r18, r12, 0
002d64  3b200100  bneq r2, zero, 8
002d68  9f800b00  addli r1, r23, 0
002d6c  1bb19b00  slli r2, r23, 9
002d70  9bb19200  slli r3, r5, 9
002d74  1bc27b01  srli r4, r23, 23
002d78  1f8b0200  addli r22, r5, 0
002d7c  9bc27201  srli r5, r5, 23
002d80  6306dffb  loadli.w r12,  -536(r30)
002d84  13010100  seteq r2, r2, zero
002d88  93810100  seteq r3, r3, zero
002d8c  1b02f20f  andi r4, r4, 255
002d90  9b82f20f  andi r5, r5, 255
002d94  1b72f20f  setlti r4, r4, 255
002d98  9bf2f20f  setlti r5, r5, 255
002d9c  17112200  or r2, r4, r2
002da0  97913200  or r3, r5, r3
002da4  17812100  and r2, r3, r2
002da8  375b010a  beq r2, zero, 5844
002dac  63020ffe  loadli.w r4,  -256(r30)
002db0  3b6b0b0a  bneq r22, zero, 5848
002db4  37a00b00  beq r23, zero, 8
002db8  9f0b0b00  addli r23, r22, 0
002dbc  13611006  setle.f r2, zero, r1
002dc0  93e10006  setle.f r3, r1, zero
002dc4  17812100  and r2, r3, r2
002dc8  3b200100  bneq r2, zero, 8
002dcc  9f8b0000  addli r23, r1, 0
002dd0  13617205  setlt.f r2, r4, r23
002dd4  9f800b00  addli r1, r23, 0
002dd8  3b200100  bneq r2, zero, 8
002ddc  9f000200  addli r1, r4, 0
002de0  1b319200  slli r2, r4, 9
002de4  9bb19b00  slli r3, r23, 9
002de8  1b427201  srli r4, r4, 23
002dec  9bc27b01  srli r5, r23, 23
002df0  13010100  seteq r2, r2, zero
002df4  93810100  seteq r3, r3, zero
002df8  1b02f20f  andi r4, r4, 255
002dfc  9b82f20f  andi r5, r5, 255
002e00  1b72f20f  setlti r4, r4, 255
002e04  9bf2f20f  setlti r5, r5, 255
002e08  17112200  or r2, r4, r2
002e0c  97913200  or r3, r5, r3
002e10  17812100  and r2, r3, r2
002e14  370a010a  beq r2, zero, 5760
002e18  3b9a0b0a  bneq r23, zero, 5764
002e1c  e3020ffe  loadli.w r5,  -256(r30)
002e20  37a00200  beq r5, zero, 8
002e24  9f820b00  addli r5, r23, 0
002e28  13611006  setle.f r2, zero, r1
002e2c  93e10006  setle.f r3, r1, zero
002e30  17812100  and r2, r3, r2
002e34  3b200100  bneq r2, zero, 8
002e38  9f820000  addli r5, r1, 0
002e3c  e301fffd  loadli.w r3,  -264(r30)
002e40  e30b2ffd  loadli.w r23,  -368(r30)
002e44  9f800200  addli r1, r5, 0
002e48  13e15104  setlt.f r2, r3, r5
002e4c  3b200100  bneq r2, zero, 8
002e50  9f800100  addli r1, r3, 0
002e54  1bb19100  slli r2, r3, 9
002e58  1f820100  addli r4, r3, 0
002e5c  9bb19200  slli r3, r5, 9
002e60  1f8b0200  addli r22, r5, 0
002e64  9bc27201  srli r5, r5, 23
002e68  13010100  seteq r2, r2, zero
002e6c  93810100  seteq r3, r3, zero
002e70  1b427201  srli r4, r4, 23
002e74  9b82f20f  andi r5, r5, 255
002e78  1b02f20f  andi r4, r4, 255
002e7c  9bf2f20f  setlti r5, r5, 255
002e80  1b72f20f  setlti r4, r4, 255
002e84  17112200  or r2, r4, r2
002e88  97913200  or r3, r5, r3
002e8c  17812100  and r2, r3, r2
002e90  3778010a  beq r2, zero, 5660
002e94  63421ffe  loadli.w r4,  -244(r30)
002e98  bb080b0a  bneq r22, zero, 5664
002e9c  e301fffd  loadli.w r3,  -264(r30)
002ea0  37a00100  beq r3, zero, 8
002ea4  9f010b00  addli r3, r22, 0
002ea8  9f820100  addli r5, r3, 0
002eac  13611006  setle.f r2, zero, r1
002eb0  93e10006  setle.f r3, r1, zero
002eb4  17812100  and r2, r3, r2
002eb8  9f810200  addli r3, r5, 0
002ebc  3b200100  bneq r2, zero, 8
002ec0  9f810000  addli r3, r1, 0
002ec4  13613204  setlt.f r2, r4, r3
002ec8  9f800100  addli r1, r3, 0
002ecc  1f8b0b00  addli r22, r23, 0
002ed0  3b200100  bneq r2, zero, 8
002ed4  9f000200  addli r1, r4, 0
002ed8  9f820100  addli r5, r3, 0
002edc  1b319200  slli r2, r4, 9
002ee0  1b427201  srli r4, r4, 23
002ee4  9bb19200  slli r3, r5, 9
002ee8  13010100  seteq r2, r2, zero
002eec  9f8b0200  addli r23, r5, 0
002ef0  9bc27201  srli r5, r5, 23
002ef4  1b02f20f  andi r4, r4, 255
002ef8  93810100  seteq r3, r3, zero
002efc  9b82f20f  andi r5, r5, 255
002f00  1b72f20f  setlti r4, r4, 255
002f04  9bf2f20f  setlti r5, r5, 255
002f08  17112200  or r2, r4, r2
002f0c  97913200  or r3, r5, r3
002f10  17812100  and r2, r3, r2
002f14  b756010a  beq r2, zero, 5556
002f18  bbe60b0a  bneq r23, zero, 5560
002f1c  e3421ffe  loadli.w r5,  -244(r30)
002f20  37a00200  beq r5, zero, 8
002f24  9f820b00  addli r5, r23, 0
002f28  13611006  setle.f r2, zero, r1
002f2c  93e10006  setle.f r3, r1, zero
002f30  17812100  and r2, r3, r2
002f34  3b200100  bneq r2, zero, 8
002f38  9f820000  addli r5, r1, 0
002f3c  13615304  setlt.f r2, r6, r5
002f40  9f800200  addli r1, r5, 0
002f44  3b200100  bneq r2, zero, 8
002f48  9f000300  addli r1, r6, 0
002f4c  1b319300  slli r2, r6, 9
002f50  9bb19200  slli r3, r5, 9
002f54  1b427301  srli r4, r6, 23
002f58  9f8b0200  addli r23, r5, 0
002f5c  9bc27201  srli r5, r5, 23
002f60  13010100  seteq r2, r2, zero
002f64  93810100  seteq r3, r3, zero
002f68  1b02f20f  andi r4, r4, 255
002f6c  9b82f20f  andi r5, r5, 255
002f70  1b72f20f  setlti r4, r4, 255
002f74  9bf2f20f  setlti r5, r5, 255
002f78  17112200  or r2, r4, r2
002f7c  97913200  or r3, r5, r3
002f80  17812100  and r2, r3, r2
002f84  3775010a  beq r2, zero, 5468
002f88  63022ffe  loadli.w r4,  -240(r30)
002f8c  bb850b0a  bneq r23, zero, 5472
002f90  37200300  beq r6, zero, 8
002f94  1f830b00  addli r6, r23, 0
002f98  13611006  setle.f r2, zero, r1
002f9c  93e10006  setle.f r3, r1, zero
002fa0  17812100  and r2, r3, r2
002fa4  3b200100  bneq r2, zero, 8
002fa8  1f830000  addli r6, r1, 0
002fac  13616204  setlt.f r2, r4, r6
002fb0  9f000300  addli r1, r6, 0
002fb4  3b200100  bneq r2, zero, 8
002fb8  9f000200  addli r1, r4, 0
002fbc  1b319200  slli r2, r4, 9
002fc0  9b319300  slli r3, r6, 9
002fc4  1b427201  srli r4, r4, 23
002fc8  9b427301  srli r5, r6, 23
002fcc  13010100  seteq r2, r2, zero
002fd0  93810100  seteq r3, r3, zero
002fd4  1b02f20f  andi r4, r4, 255
002fd8  9b82f20f  andi r5, r5, 255
002fdc  1b72f20f  setlti r4, r4, 255
002fe0  9bf2f20f  setlti r5, r5, 255
002fe4  17112200  or r2, r4, r2
002fe8  97913200  or r3, r5, r3
002fec  17812100  and r2, r3, r2
002ff0  3724010a  beq r2, zero, 5384
002ff4  3b34030a  bneq r6, zero, 5388
002ff8  e3022ffe  loadli.w r5,  -240(r30)
002ffc  37a00200  beq r5, zero, 8
003000  9f020300  addli r5, r6, 0
003004  13611006  setle.f r2, zero, r1
003008  93e10006  setle.f r3, r1, zero
00300c  17812100  and r2, r3, r2
003010  3b200100  bneq r2, zero, 8
003014  9f820000  addli r5, r1, 0
003018  13615604  setlt.f r2, r12, r5
00301c  6303cffd  loadli.w r6,  -288(r30)
003020  9f800200  addli r1, r5, 0
003024  3b200100  bneq r2, zero, 8
003028  9f000600  addli r1, r12, 0
00302c  1b319600  slli r2, r12, 9
003030  9bb19200  slli r3, r5, 9
003034  1b427601  srli r4, r12, 23
003038  9f8b0200  addli r23, r5, 0
00303c  9bc27201  srli r5, r5, 23
003040  13010100  seteq r2, r2, zero
003044  93810100  seteq r3, r3, zero
003048  1b02f20f  andi r4, r4, 255
00304c  9b82f20f  andi r5, r5, 255
003050  1b72f20f  setlti r4, r4, 255
003054  9bf2f20f  setlti r5, r5, 255
003058  17112200  or r2, r4, r2
00305c  97913200  or r3, r5, r3
003060  17812100  and r2, r3, r2
003064  b732010a  beq r2, zero, 5292
003068  bbc20b0a  bneq r23, zero, 5296
00306c  37200600  beq r12, zero, 8
003070  1f860b00  addli r12, r23, 0
003074  13611006  setle.f r2, zero, r1
003078  93e10006  setle.f r3, r1, zero
00307c  17812100  and r2, r3, r2
003080  3b200100  bneq r2, zero, 8
003084  1f860000  addli r12, r1, 0
003088  1361c504  setlt.f r2, r10, r12
00308c  9f000600  addli r1, r12, 0
003090  9f0b0300  addli r23, r6, 0
003094  3b200100  bneq r2, zero, 8
003098  9f000500  addli r1, r10, 0
00309c  1b319500  slli r2, r10, 9
0030a0  9b319600  slli r3, r12, 9
0030a4  1b427501  srli r4, r10, 23
0030a8  9b427601  srli r5, r12, 23
0030ac  6343fffb  loadli.w r6,  -516(r30)
0030b0  13010100  seteq r2, r2, zero
0030b4  93810100  seteq r3, r3, zero
0030b8  1b02f20f  andi r4, r4, 255
0030bc  9b82f20f  andi r5, r5, 255
0030c0  1b72f20f  setlti r4, r4, 255
0030c4  9bf2f20f  setlti r5, r5, 255
0030c8  17112200  or r2, r4, r2
0030cc  97913200  or r3, r5, r3
0030d0  17812100  and r2, r3, r2
0030d4  3741010a  beq r2, zero, 5200
0030d8  3b51060a  bneq r12, zero, 5204
0030dc  37200500  beq r10, zero, 8
0030e0  1f050600  addli r10, r12, 0
0030e4  13611006  setle.f r2, zero, r1
0030e8  93e10006  setle.f r3, r1, zero
0030ec  17812100  and r2, r3, r2
0030f0  3b200100  bneq r2, zero, 8
0030f4  1f850000  addli r10, r1, 0
0030f8  13e1a404  setlt.f r2, r9, r10
0030fc  9f000500  addli r1, r10, 0
003100  3b200100  bneq r2, zero, 8
003104  9f800400  addli r1, r9, 0
003108  1bb19400  slli r2, r9, 9
00310c  9b319500  slli r3, r10, 9
003110  1bc27401  srli r4, r9, 23
003114  9b427501  srli r5, r10, 23
003118  13010100  seteq r2, r2, zero
00311c  93810100  seteq r3, r3, zero
003120  1b02f20f  andi r4, r4, 255
003124  9b82f20f  andi r5, r5, 255
003128  1b72f20f  setlti r4, r4, 255
00312c  9bf2f20f  setlti r5, r5, 255
003130  17112200  or r2, r4, r2
003134  97913200  or r3, r5, r3
003138  17812100  and r2, r3, r2
00313c  b77f0108  beq r2, zero, 5116
003140  3b00050a  bneq r10, zero, 5120
003144  37a00400  beq r9, zero, 8
003148  9f040500  addli r9, r10, 0
00314c  13611006  setle.f r2, zero, r1
003150  93e10006  setle.f r3, r1, zero
003154  17812100  and r2, r3, r2
003158  3b200100  bneq r2, zero, 8
00315c  9f840000  addli r9, r1, 0
003160  13619404  setlt.f r2, r8, r9
003164  9f800400  addli r1, r9, 0
003168  3b200100  bneq r2, zero, 8
00316c  9f000400  addli r1, r8, 0
003170  1b319400  slli r2, r8, 9
003174  9bb19400  slli r3, r9, 9
003178  1b427401  srli r4, r8, 23
00317c  9bc27401  srli r5, r9, 23
003180  13010100  seteq r2, r2, zero
003184  93810100  seteq r3, r3, zero
003188  1b02f20f  andi r4, r4, 255
00318c  9b82f20f  andi r5, r5, 255
003190  1b72f20f  setlti r4, r4, 255
003194  9bf2f20f  setlti r5, r5, 255
003198  17112200  or r2, r4, r2
00319c  97913200  or r3, r5, r3
0031a0  17812100  and r2, r3, r2
0031a4  b72e0108  beq r2, zero, 5032
0031a8  bbbe0408  bneq r9, zero, 5036
0031ac  37200400  beq r8, zero, 8
0031b0  1f840400  addli r8, r9, 0
0031b4  13611006  setle.f r2, zero, r1
0031b8  93e10006  setle.f r3, r1, zero
0031bc  17812100  and r2, r3, r2
0031c0  3b200100  bneq r2, zero, 8
0031c4  1f840000  addli r8, r1, 0
0031c8  13e18304  setlt.f r2, r7, r8
0031cc  9f000400  addli r1, r8, 0
0031d0  3b200100  bneq r2, zero, 8
0031d4  9f800300  addli r1, r7, 0
0031d8  1bb19300  slli r2, r7, 9
0031dc  9b319400  slli r3, r8, 9
0031e0  1bc27301  srli r4, r7, 23
0031e4  9b427401  srli r5, r8, 23
0031e8  13010100  seteq r2, r2, zero
0031ec  93810100  seteq r3, r3, zero
0031f0  1b02f20f  andi r4, r4, 255
0031f4  9b82f20f  andi r5, r5, 255
0031f8  1b72f20f  setlti r4, r4, 255
0031fc  9bf2f20f  setlti r5, r5, 255
003200  17112200  or r2, r4, r2
003204  97913200  or r3, r5, r3
003208  17812100  and r2, r3, r2
00320c  375d0108  beq r2, zero, 4948
003210  3b6d0408  bneq r8, zero, 4952
003214  37a00300  beq r7, zero, 8
003218  9f030400  addli r7, r8, 0
00321c  13611006  setle.f r2, zero, r1
003220  93e10006  setle.f r3, r1, zero
003224  17812100  and r2, r3, r2
003228  3b200100  bneq r2, zero, 8
00322c  9f830000  addli r7, r1, 0
003230  13617304  setlt.f r2, r6, r7
003234  9f800300  addli r1, r7, 0
003238  3b200100  bneq r2, zero, 8
00323c  9f000300  addli r1, r6, 0
003240  1b319300  slli r2, r6, 9
003244  9bb19300  slli r3, r7, 9
003248  1b427301  srli r4, r6, 23
00324c  9bc27301  srli r5, r7, 23
003250  13010100  seteq r2, r2, zero
003254  93810100  seteq r3, r3, zero
003258  1b02f20f  andi r4, r4, 255
00325c  9b82f20f  andi r5, r5, 255
003260  1b72f20f  setlti r4, r4, 255
003264  9bf2f20f  setlti r5, r5, 255
003268  17112200  or r2, r4, r2
00326c  97913200  or r3, r5, r3
003270  17812100  and r2, r3, r2
003274  370c0108  beq r2, zero, 4864
003278  3b9c0308  bneq r7, zero, 4868
00327c  37200300  beq r6, zero, 8
003280  1f830300  addli r6, r7, 0
003284  13611006  setle.f r2, zero, r1
003288  93e10006  setle.f r3, r1, zero
00328c  17812100  and r2, r3, r2
003290  3b200100  bneq r2, zero, 8
003294  1f830000  addli r6, r1, 0
003298  e3006ffe  loadli.w r1,  -208(r30)
00329c  73e06000  stores.w r6, 0(r1)
0032a0  00a00300  mfence { lm, sm, gm }
0032a4  80210b04  csr_set csr3, r22
0032a8  00d00100  sync_group
0032ac  e3006ffe  loadli.w r1,  -208(r30)
0032b0  efc00000  loads.w r1, 0(r1)
0032b4  0b631918  sub.f.rn r6, r18, r1
0032b8  0be91518  sub.f.rn r18, r11, r1
0032bc  e3455ffe  loadli.w r11,  -212(r30)
0032c0  8be21918  sub.f.rn r5, r19, r1
0032c4  0b621a18  sub.f.rn r4, r20, r1
0032c8  8be31818  sub.f.rn r7, r17, r1
0032cc  0be11c18  sub.f.rn r2, r25, r1
0032d0  0b641818  sub.f.rn r8, r16, r1
0032d4  0be81a18  sub.f.rn r16, r21, r1
0032d8  8be41718  sub.f.rn r9, r15, r1
0032dc  8b611d18  sub.f.rn r3, r26, r1
0032e0  0b651718  sub.f.rn r10, r14, r1
0032e4  0be61618  sub.f.rn r12, r13, r1
0032e8  8be91518  sub.f.rn r19, r11, r1
0032ec  e3054ffe  loadli.w r11,  -224(r30)
0032f0  0bea1518  sub.f.rn r20, r11, r1
0032f4  e3053ffe  loadli.w r11,  -232(r30)
0032f8  8f080100  exp.f.rn r17, r2
0032fc  8f870100  exp.f.rn r15, r3
003300  0f070200  exp.f.rn r14, r4
003304  8f860200  exp.f.rn r13, r5
003308  8f830300  exp.f.rn r7, r7
00330c  8f8c0400  exp.f.rn r25, r9
003310  0f0d0500  exp.f.rn r26, r10
003314  0f010600  exp.f.rn r2, r12
003318  0f080800  exp.f.rn r16, r16
00331c  8f020900  exp.f.rn r5, r18
003320  8bea1518  sub.f.rn r21, r11, r1
003324  8b601c18  sub.f.rn r1, r24, r1
003328  8f050300  exp.f.rn r11, r6
00332c  0f0c0400  exp.f.rn r24, r8
003330  0f820900  exp.f.rn r4, r19
003334  8f010a00  exp.f.rn r3, r20
003338  0f830000  exp.f.rn r6, r1
00333c  0f840a00  exp.f.rn r8, r21
003340  9f008000  addli r1, zero, 64
003344  e7426ffe  storeli.w r6, -212(r30)
003348  67028ffe  storeli.w r8, -224(r30)
00334c  bfe51b00  blt.s r23, r1, 376
003350  9f000000  addli r1, zero, 0
003354  db350000  j 428
003358  ab05c07f  lui r11, 523264
00335c  9f870c00  addli r15, r25, 0
003360  37cb0cec  beq r25, zero, -9520
003364  9f870500  addli r15, r11, 0
003368  9f030d00  addli r7, r26, 0
00336c  3b3b0dec  bneq r26, zero, -9524
003370  db59fbff  j -9524
003374  ab07c07f  lui r15, 523264
003378  b7ac03ec  beq r7, zero, -9432
00337c  9f830700  addli r7, r15, 0
003380  9f050a00  addli r11, r20, 0
003384  bb1c0aec  bneq r20, zero, -9436
003388  db64fbff  j -9436
00338c  ab07c07f  lui r15, 523264
003390  378e05ec  beq r11, zero, -9344
003394  9f850700  addli r11, r15, 0
003398  9f830900  addli r7, r19, 0
00339c  bbfd09ec  bneq r19, zero, -9348
0033a0  db6ffbff  j -9348
0033a4  ab07c07f  lui r15, 523264
0033a8  37ef03ec  beq r7, zero, -9256
0033ac  9f830700  addli r7, r15, 0
0033b0  9f050900  addli r11, r18, 0
0033b4  3b5f09ec  bneq r18, zero, -9260
0033b8  db7afbff  j -9260
0033bc  2b07c07f  lui r14, 523264
0033c0  b7c005ee  beq r11, zero, -9168
0033c4  9f050700  addli r11, r14, 0
0033c8  9f830800  addli r7, r17, 0
0033cc  bbb008ee  bneq r17, zero, -9172
0033d0  db85fbff  j -9172
0033d4  ab06c07f  lui r13, 523264
0033d8  37a203ee  beq r7, zero, -9080
0033dc  9f830600  addli r7, r13, 0
0033e0  9f050800  addli r11, r16, 0
0033e4  3b1208ee  bneq r16, zero, -9084
0033e8  db90fbff  j -9084
0033ec  2b06c07f  lui r12, 523264
0033f0  b78305ee  beq r11, zero, -8992
0033f4  9f050600  addli r11, r12, 0
0033f8  9f830700  addli r7, r15, 0
0033fc  3bf307ee  bneq r15, zero, -8996
003400  db9bfbff  j -8996
003404  2b05c07f  lui r10, 523264
003408  b7e403ee  beq r7, zero, -8904
00340c  9f030500  addli r7, r10, 0
003410  9f040700  addli r9, r14, 0
003414  bb5407ee  bneq r14, zero, -8908
003418  dba6fbff  j -8908
00341c  2b05c07f  lui r10, 523264
003420  37c604ee  beq r9, zero, -8816
003424  9f040500  addli r9, r10, 0
003428  9f830600  addli r7, r13, 0
00342c  3bb606ee  bneq r13, zero, -8820
003430  dbb1fbff  j -8820
003434  2b04c07f  lui r8, 523264
003438  b7a703ee  beq r7, zero, -8728
00343c  9f030400  addli r7, r8, 0
003440  1f830a00  addli r6, r21, 0
003444  bb970aee  bneq r21, zero, -8732
003448  dbbcfbff  j -8732
00344c  ab03c07f  lui r7, 523264
003450  370903ee  beq r6, zero, -8640
003454  1f830300  addli r6, r7, 0
003458  9f820500  addli r5, r11, 0
00345c  bbf805ee  bneq r11, zero, -8644
003460  dbc7fbff  j -8644
003464  2b03c07f  lui r6, 523264
003468  37ea02ee  beq r5, zero, -8552
00346c  9f020300  addli r5, r6, 0
003470  1f020500  addli r4, r10, 0
003474  3b5a05ee  bneq r10, zero, -8556
003478  dbd2fbff  j -8556
00347c  ab02c07f  lui r5, 523264
003480  b74b02ee  beq r4, zero, -8464
003484  1f820200  addli r4, r5, 0
003488  9f810400  addli r3, r9, 0
00348c  bbbb04ee  bneq r9, zero, -8468
003490  dbddfbff  j -8468
003494  2b02c07f  lui r4, 523264
003498  37ad01ee  beq r3, zero, -8376
00349c  9f010200  addli r3, r4, 0
0034a0  1f010400  addli r2, r8, 0
0034a4  3b1d04ee  bneq r8, zero, -8380
0034a8  dbe8fbff  j -8380
0034ac  ab01c07f  lui r3, 523264
0034b0  b70e01ee  beq r2, zero, -8288
0034b4  1f810100  addli r2, r3, 0
0034b8  9f000c00  addli r1, r24, 0
0034bc  3b7e0cee  bneq r24, zero, -8292
0034c0  dbf3fbff  j -8292
0034c4  8be0f810  add.f.rn r1, r17, r15
0034c8  8b601710  add.f.rn r1, r14, r1
0034cc  8be01610  add.f.rn r1, r13, r1
0034d0  8be01510  add.f.rn r1, r11, r1
0034d4  8be01310  add.f.rn r1, r7, r1
0034d8  8b601c10  add.f.rn r1, r24, r1
0034dc  8be01c10  add.f.rn r1, r25, r1
0034e0  8b601d10  add.f.rn r1, r26, r1
0034e4  8b601110  add.f.rn r1, r2, r1
0034e8  8b601810  add.f.rn r1, r16, r1
0034ec  8be01210  add.f.rn r1, r5, r1
0034f0  8b601210  add.f.rn r1, r4, r1
0034f4  8be01110  add.f.rn r1, r3, r1
0034f8  8b601410  add.f.rn r1, r8, r1
0034fc  8b601310  add.f.rn r1, r6, r1
003500  6343fffc  loadli.w r6,  -388(r30)
003504  73601300  stores.w r1, 0(r6)
003508  00a00300  mfence { lm, sm, gm }
00350c  80210b04  csr_set csr3, r22
003510  00d00100  sync_group
003514  e340bffd  loadli.w r1,  -292(r30)
003518  3ba80000  bneq r1, zero, 520
00351c  e3441ffd  loadli.w r9,  -372(r30)
003520  efc00400  loads.w r1, 0(r9)
003524  6fc44400  loads.w r8, 4(r9)
003528  6fc38400  loads.w r6, 8(r9)
00352c  8be08010  add.f.rn r1, r1, r8
003530  6fc4c400  loads.w r8, 12(r9)
003534  8be06010  add.f.rn r1, r1, r6
003538  6fc30401  loads.w r6, 16(r9)
00353c  8be08010  add.f.rn r1, r1, r8
003540  6fc44401  loads.w r8, 20(r9)
003544  8be06010  add.f.rn r1, r1, r6
003548  6fc38401  loads.w r6, 24(r9)
00354c  8be08010  add.f.rn r1, r1, r8
003550  6fc4c401  loads.w r8, 28(r9)
003554  8be06010  add.f.rn r1, r1, r6
003558  6fc30402  loads.w r6, 32(r9)
00355c  8be08010  add.f.rn r1, r1, r8
003560  6fc44402  loads.w r8, 36(r9)
003564  8be06010  add.f.rn r1, r1, r6
003568  6fc38402  loads.w r6, 40(r9)
00356c  8be08010  add.f.rn r1, r1, r8
003570  6fc4c402  loads.w r8, 44(r9)
003574  8be06010  add.f.rn r1, r1, r6
003578  6fc30403  loads.w r6, 48(r9)
00357c  8be08010  add.f.rn r1, r1, r8
003580  6fc44403  loads.w r8, 52(r9)
003584  8be06010  add.f.rn r1, r1, r6
003588  6fc38403  loads.w r6, 56(r9)
00358c  8be08010  add.f.rn r1, r1, r8
003590  6fc4c403  loads.w r8, 60(r9)
003594  8be06010  add.f.rn r1, r1, r6
003598  6fc30404  loads.w r6, 64(r9)
00359c  8be08010  add.f.rn r1, r1, r8
0035a0  6fc44404  loads.w r8, 68(r9)
0035a4  8be06010  add.f.rn r1, r1, r6
0035a8  6fc38404  loads.w r6, 72(r9)
0035ac  8be08010  add.f.rn r1, r1, r8
0035b0  6fc4c404  loads.w r8, 76(r9)
0035b4  8be06010  add.f.rn r1, r1, r6
0035b8  6fc30405  loads.w r6, 80(r9)
0035bc  8be08010  add.f.rn r1, r1, r8
0035c0  6fc44405  loads.w r8, 84(r9)
0035c4  8be06010  add.f.rn r1, r1, r6
0035c8  6fc38405  loads.w r6, 88(r9)
0035cc  8be08010  add.f.rn r1, r1, r8
0035d0  6fc4c405  loads.w r8, 92(r9)
0035d4  8be06010  add.f.rn r1, r1, r6
0035d8  6fc30406  loads.w r6, 96(r9)
0035dc  8be08010  add.f.rn r1, r1, r8
0035e0  6fc44406  loads.w r8, 100(r9)
0035e4  8be06010  add.f.rn r1, r1, r6
0035e8  6fc38406  loads.w r6, 104(r9)
0035ec  8be08010  add.f.rn r1, r1, r8
0035f0  6fc4c406  loads.w r8, 108(r9)
0035f4  8be06010  add.f.rn r1, r1, r6
0035f8  6fc30407  loads.w r6, 112(r9)
0035fc  8be08010  add.f.rn r1, r1, r8
003600  6fc44407  loads.w r8, 116(r9)
003604  8be06010  add.f.rn r1, r1, r6
003608  6fc38407  loads.w r6, 120(r9)
00360c  8be08010  add.f.rn r1, r1, r8
003610  6fc4c407  loads.w r8, 124(r9)
003614  8be06010  add.f.rn r1, r1, r6
003618  6fc30408  loads.w r6, 128(r9)
00361c  8be08010  add.f.rn r1, r1, r8
003620  6fc44408  loads.w r8, 132(r9)
003624  8be06010  add.f.rn r1, r1, r6
003628  6fc38408  loads.w r6, 136(r9)
00362c  8be08010  add.f.rn r1, r1, r8
003630  6fc4c408  loads.w r8, 140(r9)
003634  8be06010  add.f.rn r1, r1, r6
003638  6fc30409  loads.w r6, 144(r9)
00363c  8be08010  add.f.rn r1, r1, r8
003640  6fc44409  loads.w r8, 148(r9)
003644  8be06010  add.f.rn r1, r1, r6
003648  6fc38409  loads.w r6, 152(r9)
00364c  8be08010  add.f.rn r1, r1, r8
003650  6fc4c409  loads.w r8, 156(r9)
003654  8be06010  add.f.rn r1, r1, r6
003658  6fc3040a  loads.w r6, 160(r9)
00365c  8be08010  add.f.rn r1, r1, r8
003660  6fc4440a  loads.w r8, 164(r9)
003664  8be06010  add.f.rn r1, r1, r6
003668  6fc3840a  loads.w r6, 168(r9)
00366c  8be08010  add.f.rn r1, r1, r8
003670  6fc4c40a  loads.w r8, 172(r9)
003674  8be06010  add.f.rn r1, r1, r6
003678  6fc3040b  loads.w r6, 176(r9)
00367c  8be08010  add.f.rn r1, r1, r8
003680  6fc4440b  loads.w r8, 180(r9)
003684  8be06010  add.f.rn r1, r1, r6
003688  6fc3840b  loads.w r6, 184(r9)
00368c  8be08010  add.f.rn r1, r1, r8
003690  6fc4c40b  loads.w r8, 188(r9)
003694  8be06010  add.f.rn r1, r1, r6
003698  6fc3040c  loads.w r6, 192(r9)
00369c  8be08010  add.f.rn r1, r1, r8
0036a0  6fc4440c  loads.w r8, 196(r9)
0036a4  8be06010  add.f.rn r1, r1, r6
0036a8  6fc3840c  loads.w r6, 200(r9)
0036ac  8be08010  add.f.rn r1, r1, r8
0036b0  6fc4c40c  loads.w r8, 204(r9)
0036b4  8be06010  add.f.rn r1, r1, r6
0036b8  6fc3040d  loads.w r6, 208(r9)
0036bc  8be08010  add.f.rn r1, r1, r8
0036c0  6fc4440d  loads.w r8, 212(r9)
0036c4  8be06010  add.f.rn r1, r1, r6
0036c8  6fc3840d  loads.w r6, 216(r9)
0036cc  8be08010  add.f.rn r1, r1, r8
0036d0  6fc4c40d  loads.w r8, 220(r9)
0036d4  8be06010  add.f.rn r1, r1, r6
0036d8  6fc3040e  loads.w r6, 224(r9)
0036dc  8be08010  add.f.rn r1, r1, r8
0036e0  6fc4440e  loads.w r8, 228(r9)
0036e4  8be06010  add.f.rn r1, r1, r6
0036e8  6fc3840e  loads.w r6, 232(r9)
0036ec  8be08010  add.f.rn r1, r1, r8
0036f0  6fc4c40e  loads.w r8, 236(r9)
0036f4  8be06010  add.f.rn r1, r1, r6
0036f8  6fc3040f  loads.w r6, 240(r9)
0036fc  8be08010  add.f.rn r1, r1, r8
003700  6fc4440f  loads.w r8, 244(r9)
003704  8be06010  add.f.rn r1, r1, r6
003708  6fc3840f  loads.w r6, 248(r9)
00370c  8be08010  add.f.rn r1, r1, r8
003710  6fc4c40f  loads.w r8, 252(r9)
003714  8be06010  add.f.rn r1, r1, r6
003718  8be08010  add.f.rn r1, r1, r8
00371c  73e01400  stores.w r1, 0(r9)
003720  00a00300  mfence { lm, sm, gm }
003724  80210b04  csr_set csr3, r22
003728  00d00100  sync_group
00372c  e3401ffd  loadli.w r1,  -372(r30)
003730  2b03803f  lui r6, 260096
003734  efc00000  loads.w r1, 0(r1)
003738  8f001318  div.f.rn r1, r6, r1
00373c  2b03807f  lui r6, 522240
003740  8be81820  mul.f.rn r17, r17, r1
003744  1784b801  and r8, r17, r27
003748  e74b8ffc  storeli.w r8, -324(r30)
00374c  13048304  setlt.u r8, r6, r8
003750  3b300400  bneq r8, zero, 12
003754  e70f1ffd  storeli.w r17, -264(r30)
003758  db010000  j 12
00375c  1794c801  or r8, r17, r28
003760  e70f8ffc  storeli.w r8, -264(r30)
003764  8be71720  mul.f.rn r15, r15, r1
003768  1784b701  and r8, r15, r27
00376c  93048304  setlt.u r9, r6, r8
003770  e70b8ffc  storeli.w r8, -328(r30)
003774  3bb00400  bneq r9, zero, 12
003778  6700fffe  storeli.w r15, -256(r30)
00377c  db010000  j 12
003780  1794c701  or r8, r15, r28
003784  67008ffe  storeli.w r8, -256(r30)
003788  0b6b1720  mul.f.rn r22, r14, r1
00378c  1704bb01  and r8, r22, r27
003790  13058304  setlt.u r10, r6, r8
003794  674b8ffc  storeli.w r8, -332(r30)
003798  3b300500  bneq r10, zero, 12
00379c  e7406fff  storeli.w r22, -244(r30)
0037a0  db010000  j 12
0037a4  1714cb01  or r8, r22, r28
0037a8  e7408ffe  storeli.w r8, -244(r30)
0037ac  8beb1620  mul.f.rn r23, r13, r1
0037b0  1784bb01  and r8, r23, r27
0037b4  13068304  setlt.u r12, r6, r8
0037b8  670b8ffc  storeli.w r8, -336(r30)
0037bc  3b300600  bneq r12, zero, 12
0037c0  67017fff  storeli.w r23, -240(r30)
0037c4  db010000  j 12
0037c8  1794cb01  or r8, r23, r28
0037cc  67018ffe  storeli.w r8, -240(r30)
0037d0  8be51520  mul.f.rn r11, r11, r1
0037d4  1784b501  and r8, r11, r27
0037d8  93068304  setlt.u r13, r6, r8
0037dc  e74a8ffc  storeli.w r8, -340(r30)
0037e0  3bb00600  bneq r13, zero, 12
0037e4  e701bffe  storeli.w r11, -232(r30)
0037e8  db010000  j 12
0037ec  1794c501  or r8, r11, r28
0037f0  e7018ffe  storeli.w r8, -232(r30)
0037f4  8be31320  mul.f.rn r7, r7, r1
0037f8  1784b301  and r8, r7, r27
0037fc  13078304  setlt.u r14, r6, r8
003800  e70a8ffc  storeli.w r8, -344(r30)
003804  3b300700  bneq r14, zero, 12
003808  670c7ffc  storeli.w r7, -320(r30)
00380c  db010000  j 12
003810  1794c301  or r8, r7, r28
003814  670c8ffc  storeli.w r8, -320(r30)
003818  0b6c1c20  mul.f.rn r24, r24, r1
00381c  1704bc01  and r8, r24, r27
003820  13098304  setlt.u r18, r6, r8
003824  674a8ffc  storeli.w r8, -348(r30)
003828  3b300900  bneq r18, zero, 12
00382c  674c8ffd  storeli.w r24, -316(r30)
003830  db010000  j 12
003834  1714cc01  or r8, r24, r28
003838  674c8ffc  storeli.w r8, -316(r30)
00383c  8bec1c20  mul.f.rn r25, r25, r1
003840  1789bc01  and r18, r25, r27
003844  93092305  setlt.u r19, r6, r18
003848  3bb00900  bneq r19, zero, 12
00384c  670e9ffd  storeli.w r25, -288(r30)
003850  db010000  j 12
003854  1794cc01  or r8, r25, r28
003858  670e8ffc  storeli.w r8, -288(r30)
00385c  0b6d1d20  mul.f.rn r26, r26, r1
003860  9709bd01  and r19, r26, r27
003864  130a3305  setlt.u r20, r6, r19
003868  3b300a00  bneq r20, zero, 12
00386c  9f060d00  addli r13, r26, 0
003870  5b010000  j 8
003874  9716cd01  or r13, r26, r28
003878  8b6d1120  mul.f.rn r27, r2, r1
00387c  63017ffe  loadli.w r2,  -200(r30)
003880  ab044000  lui r9, 1024
003884  178a2d00  and r20, r27, r2
003888  13014305  setlt.u r2, r6, r20
00388c  3b300100  bneq r2, zero, 12
003890  1f860d00  addli r12, r27, 0
003894  5b010000  j 8
003898  1796cd01  or r12, r27, r28
00389c  0b6e1820  mul.f.rn r28, r16, r1
0038a0  63017ffe  loadli.w r2,  -200(r30)
0038a4  970a2e00  and r21, r28, r2
0038a8  13015305  setlt.u r2, r6, r21
0038ac  3b300100  bneq r2, zero, 12
0038b0  e70ecffd  storeli.w r28, -280(r30)
0038b4  db010000  j 12
0038b8  17119e00  or r2, r28, r9
0038bc  e70e2ffc  storeli.w r2, -280(r30)
0038c0  8be21220  mul.f.rn r5, r5, r1
0038c4  63017ffe  loadli.w r2,  -200(r30)
0038c8  17882200  and r16, r5, r2
0038cc  13010305  setlt.u r2, r6, r16
0038d0  3b300100  bneq r2, zero, 12
0038d4  670f5ffc  storeli.w r5, -272(r30)
0038d8  db010000  j 12
0038dc  17919200  or r2, r5, r9
0038e0  670f2ffc  storeli.w r2, -272(r30)
0038e4  0b621220  mul.f.rn r4, r4, r1
0038e8  63017ffe  loadli.w r2,  -200(r30)
0038ec  17012200  and r2, r4, r2
0038f0  670a2ffc  storeli.w r2, -352(r30)
0038f4  13012304  setlt.u r2, r6, r2
0038f8  3b300100  bneq r2, zero, 12
0038fc  1f050200  addli r10, r4, 0
003900  5b010000  j 8
003904  17159200  or r10, r4, r9
003908  8be11120  mul.f.rn r3, r3, r1
00390c  63017ffe  loadli.w r2,  -200(r30)
003910  2b04807f  lui r8, 522240
003914  17812100  and r2, r3, r2
003918  e7492ffc  storeli.w r2, -356(r30)
00391c  13012304  setlt.u r2, r6, r2
003920  3b300100  bneq r2, zero, 12
003924  1f870100  addli r14, r3, 0
003928  5b010000  j 8
00392c  17979100  or r14, r3, r9
003930  63014ffe  loadli.w r2,  -224(r30)
003934  63037ffe  loadli.w r6,  -200(r30)
003938  0b611120  mul.f.rn r2, r2, r1
00393c  17036100  and r6, r2, r6
003940  e7096ffc  storeli.w r6, -360(r30)
003944  13036404  setlt.u r6, r8, r6
003948  3b300300  bneq r6, zero, 12
00394c  67022ffe  storeli.w r2, -224(r30)
003950  db010000  j 12
003954  17139100  or r6, r2, r9
003958  67026ffe  storeli.w r6, -224(r30)
00395c  63435ffe  loadli.w r6,  -212(r30)
003960  8b601320  mul.f.rn r1, r6, r1
003964  63037ffe  loadli.w r6,  -200(r30)
003968  17836000  and r6, r1, r6
00396c  67496ffc  storeli.w r6, -364(r30)
003970  13036404  setlt.u r6, r8, r6
003974  3b300300  bneq r6, zero, 12
003978  1f830000  addli r6, r1, 0
00397c  5b010000  j 8
003980  17939000  or r6, r1, r9
003984  e7426ffe  storeli.w r6, -212(r30)
003988  63437ffe  loadli.w r6,  -196(r30)
00398c  63447ffd  loadli.w r8,  -324(r30)
003990  13038304  setlt.u r6, r6, r8
003994  bb100300  bneq r6, zero, 36
003998  1bc30801  srli r6, r17, 16
00399c  1b031300  andi r6, r6, 1
0039a0  0b936810  add.s r6, r17, r6
0039a4  e3486ffe  loadli.w r17,  -204(r30)
0039a8  0b131311  add.s r6, r6, r17
0039ac  ab08ffff  lui r17, 1048560
0039b0  17031301  and r6, r6, r17
0039b4  e70f6ffc  storeli.w r6, -264(r30)
0039b8  63437ffe  loadli.w r6,  -196(r30)
0039bc  63047ffd  loadli.w r8,  -328(r30)
0039c0  13038304  setlt.u r6, r6, r8
0039c4  bb100300  bneq r6, zero, 36
0039c8  1bc30701  srli r6, r15, 16
0039cc  63446ffe  loadli.w r8,  -204(r30)
0039d0  1b031300  andi r6, r6, 1
0039d4  0b936710  add.s r6, r15, r6
0039d8  0b138310  add.s r6, r6, r8
0039dc  2b04ffff  lui r8, 1048560
0039e0  17038300  and r6, r6, r8
0039e4  67006ffe  storeli.w r6, -256(r30)
0039e8  63447ffe  loadli.w r8,  -196(r30)
0039ec  63436ffd  loadli.w r6,  -332(r30)
0039f0  9f880600  addli r17, r13, 0
0039f4  13036404  setlt.u r6, r8, r6
0039f8  9f040400  addli r9, r8, 0
0039fc  bb100300  bneq r6, zero, 36
003a00  1b430b01  srli r6, r22, 16
003a04  63446ffe  loadli.w r8,  -204(r30)
003a08  1b031300  andi r6, r6, 1
003a0c  0b136b10  add.s r6, r22, r6
003a10  0b138310  add.s r6, r6, r8
003a14  2b04ffff  lui r8, 1048560
003a18  17038300  and r6, r6, r8
003a1c  e7406ffe  storeli.w r6, -244(r30)
003a20  63036ffd  loadli.w r6,  -336(r30)
003a24  9f070600  addli r15, r12, 0
003a28  13836404  setlt.u r6, r9, r6
003a2c  bb100300  bneq r6, zero, 36
003a30  1bc30b01  srli r6, r23, 16
003a34  63446ffe  loadli.w r8,  -204(r30)
003a38  1b031300  andi r6, r6, 1
003a3c  0b936b10  add.s r6, r23, r6
003a40  0b138310  add.s r6, r6, r8
003a44  2b04ffff  lui r8, 1048560
003a48  17038300  and r6, r6, r8
003a4c  67016ffe  storeli.w r6, -240(r30)
003a50  63435ffd  loadli.w r6,  -340(r30)
003a54  63466ffe  loadli.w r12,  -204(r30)
003a58  634b8ffd  loadli.w r22,  -316(r30)
003a5c  13836404  setlt.u r6, r9, r6
003a60  bb000300  bneq r6, zero, 32
003a64  1bc30501  srli r6, r11, 16
003a68  2b04ffff  lui r8, 1048560
003a6c  1b031300  andi r6, r6, 1
003a70  0b936510  add.s r6, r11, r6
003a74  0b13c310  add.s r6, r6, r12
003a78  17038300  and r6, r6, r8
003a7c  e7016ffe  storeli.w r6, -232(r30)
003a80  63035ffd  loadli.w r6,  -344(r30)
003a84  e30b8ffd  loadli.w r23,  -320(r30)
003a88  13836404  setlt.u r6, r9, r6
003a8c  3b700300  bneq r6, zero, 28
003a90  1bc30301  srli r6, r7, 16
003a94  1b031300  andi r6, r6, 1
003a98  0b936310  add.s r6, r7, r6
003a9c  ab03ffff  lui r7, 1048560
003aa0  0b13c310  add.s r6, r6, r12
003aa4  970b7300  and r23, r6, r7
003aa8  63434ffd  loadli.w r6,  -348(r30)
003aac  e305effd  loadli.w r11,  -272(r30)
003ab0  e306dffd  loadli.w r13,  -280(r30)
003ab4  13836404  setlt.u r6, r9, r6
003ab8  3b700300  bneq r6, zero, 28
003abc  1b430c01  srli r6, r24, 16
003ac0  ab03ffff  lui r7, 1048560
003ac4  1b031300  andi r6, r6, 1
003ac8  0b136c10  add.s r6, r24, r6
003acc  0b13c310  add.s r6, r6, r12
003ad0  170b7300  and r22, r6, r7
003ad4  13832405  setlt.u r6, r9, r18
003ad8  6309cffd  loadli.w r18,  -288(r30)
003adc  ab03ffff  lui r7, 1048560
003ae0  37340300  beq r6, zero, 268
003ae4  13833405  setlt.u r6, r9, r19
003ae8  b7040300  beq r6, zero, 288
003aec  13834405  setlt.u r6, r9, r20
003af0  b7540300  beq r6, zero, 308
003af4  13835405  setlt.u r6, r9, r21
003af8  3b600300  bneq r6, zero, 24
003afc  1b430e01  srli r6, r28, 16
003b00  1b031300  andi r6, r6, 1
003b04  0b136e10  add.s r6, r28, r6
003b08  0b13c310  add.s r6, r6, r12
003b0c  97067300  and r13, r6, r7
003b10  13830405  setlt.u r6, r9, r16
003b14  63047ffe  loadli.w r8,  -200(r30)
003b18  3b600300  bneq r6, zero, 24
003b1c  1bc30201  srli r6, r5, 16
003b20  1b031300  andi r6, r6, 1
003b24  8b926210  add.s r5, r5, r6
003b28  8b92c210  add.s r5, r5, r12
003b2c  97857200  and r11, r5, r7
003b30  e3024ffd  loadli.w r5,  -352(r30)
003b34  2b034000  lui r6, 1024
003b38  93825404  setlt.u r5, r9, r5
003b3c  3be00200  bneq r5, zero, 24
003b40  9b420201  srli r5, r4, 16
003b44  9b821200  andi r5, r5, 1
003b48  0b125210  add.s r4, r4, r5
003b4c  0b12c210  add.s r4, r4, r12
003b50  17057200  and r10, r4, r7
003b54  63423ffd  loadli.w r4,  -356(r30)
003b58  ab02807f  lui r5, 522240
003b5c  13824404  setlt.u r4, r9, r4
003b60  3b600200  bneq r4, zero, 24
003b64  1bc20101  srli r4, r3, 16
003b68  1b021200  andi r4, r4, 1
003b6c  8b914110  add.s r3, r3, r4
003b70  8b91c110  add.s r3, r3, r12
003b74  17877100  and r14, r3, r7
003b78  e3013ffd  loadli.w r3,  -360(r30)
003b7c  93813404  setlt.u r3, r9, r3
003b80  3bf00100  bneq r3, zero, 28
003b84  9b410101  srli r3, r2, 16
003b88  9b811100  andi r3, r3, 1
003b8c  0b113110  add.s r2, r2, r3
003b90  0b11c110  add.s r2, r2, r12
003b94  17017100  and r2, r2, r7
003b98  67022ffe  storeli.w r2, -224(r30)
003b9c  63412ffd  loadli.w r2,  -364(r30)
003ba0  63022ffe  loadli.w r4,  -240(r30)
003ba4  13812404  setlt.u r2, r9, r2
003ba8  3b700100  bneq r2, zero, 28
003bac  1bc10001  srli r2, r1, 16
003bb0  1b011100  andi r2, r2, 1
003bb4  8b902010  add.s r1, r1, r2
003bb8  8b90c010  add.s r1, r1, r12
003bbc  97807000  and r1, r1, r7
003bc0  e7421ffe  storeli.w r1, -212(r30)
003bc4  6301fffd  loadli.w r2,  -264(r30)
003bc8  e3010ffe  loadli.w r3,  -256(r30)
003bcc  97008100  and r1, r2, r8
003bd0  93801204  setlt.u r1, r5, r1
003bd4  bbc10000  bneq r1, zero, 112
003bd8  9b400101  srli r1, r2, 16
003bdc  9b801000  andi r1, r1, 1
003be0  8b101110  add.s r1, r2, r1
003be4  8b90c010  add.s r1, r1, r12
003be8  5b0c0000  j 96
003bec  1bc30c01  srli r6, r25, 16
003bf0  1b031300  andi r6, r6, 1
003bf4  0b936c10  add.s r6, r25, r6
003bf8  0b13c310  add.s r6, r6, r12
003bfc  17097300  and r18, r6, r7
003c00  13833405  setlt.u r6, r9, r19
003c04  bb2b03fe  bneq r6, zero, -280
003c08  1b430d01  srli r6, r26, 16
003c0c  1b031300  andi r6, r6, 1
003c10  0b136d10  add.s r6, r26, r6
003c14  0b13c310  add.s r6, r6, r12
003c18  97087300  and r17, r6, r7
003c1c  13834405  setlt.u r6, r9, r20
003c20  3b5b03fe  bneq r6, zero, -300
003c24  1bc30d01  srli r6, r27, 16
003c28  1b031300  andi r6, r6, 1
003c2c  0b936d10  add.s r6, r27, r6
003c30  0b13c310  add.s r6, r6, r12
003c34  97077300  and r15, r6, r7
003c38  13835405  setlt.u r6, r9, r21
003c3c  370b03fe  beq r6, zero, -320
003c40  5bdaffff  j -304
003c44  97106100  or r1, r2, r6
003c48  17818100  and r2, r3, r8
003c4c  e3431ffe  loadli.w r7,  -244(r30)
003c50  9bc00001  srli r1, r1, 16
003c54  13812204  setlt.u r2, r5, r2
003c58  73101ff8  store.h r1, -128(r30)
003c5c  3b600100  bneq r2, zero, 24
003c60  9bc00101  srli r1, r3, 16
003c64  9b801000  andi r1, r1, 1
003c68  8b901110  add.s r1, r3, r1
003c6c  8b90c010  add.s r1, r1, r12
003c70  5b010000  j 8
003c74  97906100  or r1, r3, r6
003c78  17818300  and r2, r7, r8
003c7c  9f010fff  addli r3, r30, -128
003c80  9bc00001  srli r1, r1, 16
003c84  13812204  setlt.u r2, r5, r2
003c88  9b912100  ori r3, r3, 2
003c8c  e7403ffe  storeli.w r3, -244(r30)
003c90  73901100  store.h r1, 0(r3)
003c94  3b600100  bneq r2, zero, 24
003c98  9bc00301  srli r1, r7, 16
003c9c  9b801000  andi r1, r1, 1
003ca0  8b901310  add.s r1, r7, r1
003ca4  8b90c010  add.s r1, r1, r12
003ca8  5b010000  j 8
003cac  97906300  or r1, r7, r6
003cb0  17018200  and r2, r4, r8
003cb4  e3013ffe  loadli.w r3,  -232(r30)
003cb8  9bc00001  srli r1, r1, 16
003cbc  13812204  setlt.u r2, r5, r2
003cc0  73121ff8  store.h r1, -124(r30)
003cc4  3b600100  bneq r2, zero, 24
003cc8  9b400201  srli r1, r4, 16
003ccc  9b801000  andi r1, r1, 1
003cd0  8b101210  add.s r1, r4, r1
003cd4  8b90c010  add.s r1, r1, r12
003cd8  5b010000  j 8
003cdc  97106200  or r1, r4, r6
003ce0  17818100  and r2, r3, r8
003ce4  9bc00001  srli r1, r1, 16
003ce8  13812204  setlt.u r2, r5, r2
003cec  73131ff8  store.h r1, -122(r30)
003cf0  3b600100  bneq r2, zero, 24
003cf4  9bc00101  srli r1, r3, 16
003cf8  9b801000  andi r1, r1, 1
003cfc  8b901110  add.s r1, r3, r1
003d00  8b90c010  add.s r1, r1, r12
003d04  5b010000  j 8
003d08  97906100  or r1, r3, r6
003d0c  17818b00  and r2, r23, r8
003d10  9bc00001  srli r1, r1, 16
003d14  13812204  setlt.u r2, r5, r2
003d18  73141ff8  store.h r1, -120(r30)
003d1c  3b600100  bneq r2, zero, 24
003d20  9bc00b01  srli r1, r23, 16
003d24  9b801000  andi r1, r1, 1
003d28  8b901b10  add.s r1, r23, r1
003d2c  8b90c010  add.s r1, r1, r12
003d30  5b010000  j 8
003d34  97906b00  or r1, r23, r6
003d38  17018b00  and r2, r22, r8
003d3c  9bc00001  srli r1, r1, 16
003d40  13812204  setlt.u r2, r5, r2
003d44  73151ff8  store.h r1, -118(r30)
003d48  3b600100  bneq r2, zero, 24
003d4c  9b400b01  srli r1, r22, 16
003d50  9b801000  andi r1, r1, 1
003d54  8b101b10  add.s r1, r22, r1
003d58  8b90c010  add.s r1, r1, r12
003d5c  5b010000  j 8
003d60  97106b00  or r1, r22, r6
003d64  17018900  and r2, r18, r8
003d68  9bc00001  srli r1, r1, 16
003d6c  13812204  setlt.u r2, r5, r2
003d70  73161ff8  store.h r1, -116(r30)
003d74  3b600100  bneq r2, zero, 24
003d78  9b400901  srli r1, r18, 16
003d7c  9b801000  andi r1, r1, 1
003d80  8b101910  add.s r1, r18, r1
003d84  8b90c010  add.s r1, r1, r12
003d88  5b010000  j 8
003d8c  97106900  or r1, r18, r6
003d90  17818800  and r2, r17, r8
003d94  9bc00001  srli r1, r1, 16
003d98  13812204  setlt.u r2, r5, r2
003d9c  73171ff8  store.h r1, -114(r30)
003da0  3b600100  bneq r2, zero, 24
003da4  9bc00801  srli r1, r17, 16
003da8  9b801000  andi r1, r1, 1
003dac  8b901810  add.s r1, r17, r1
003db0  8b90c010  add.s r1, r1, r12
003db4  5b010000  j 8
003db8  97906800  or r1, r17, r6
003dbc  17818700  and r2, r15, r8
003dc0  9bc00001  srli r1, r1, 16
003dc4  13812204  setlt.u r2, r5, r2
003dc8  73181ff8  store.h r1, -112(r30)
003dcc  3b600100  bneq r2, zero, 24
003dd0  9bc00701  srli r1, r15, 16
003dd4  9b801000  andi r1, r1, 1
003dd8  8b901710  add.s r1, r15, r1
003ddc  8b90c010  add.s r1, r1, r12
003de0  5b010000  j 8
003de4  97906700  or r1, r15, r6
003de8  17818600  and r2, r13, r8
003dec  9bc00001  srli r1, r1, 16
003df0  13812204  setlt.u r2, r5, r2
003df4  73191ff8  store.h r1, -110(r30)
003df8  3b600100  bneq r2, zero, 24
003dfc  9bc00601  srli r1, r13, 16
003e00  9b801000  andi r1, r1, 1
003e04  8b901610  add.s r1, r13, r1
003e08  8b90c010  add.s r1, r1, r12
003e0c  5b010000  j 8
003e10  97906600  or r1, r13, r6
003e14  17818500  and r2, r11, r8
003e18  9bc00001  srli r1, r1, 16
003e1c  13812204  setlt.u r2, r5, r2
003e20  731a1ff8  store.h r1, -108(r30)
003e24  3b600100  bneq r2, zero, 24
003e28  9bc00501  srli r1, r11, 16
003e2c  9b801000  andi r1, r1, 1
003e30  8b901510  add.s r1, r11, r1
003e34  8b90c010  add.s r1, r1, r12
003e38  5b010000  j 8
003e3c  97906500  or r1, r11, r6
003e40  17018500  and r2, r10, r8
003e44  9bc00001  srli r1, r1, 16
003e48  13812204  setlt.u r2, r5, r2
003e4c  731b1ff8  store.h r1, -106(r30)
003e50  3b600100  bneq r2, zero, 24
003e54  9b400501  srli r1, r10, 16
003e58  9b801000  andi r1, r1, 1
003e5c  8b101510  add.s r1, r10, r1
003e60  8b93c010  add.s r7, r1, r12
003e64  5b010000  j 8
003e68  97136500  or r7, r10, r6
003e6c  e300effc  loadli.w r1,  -400(r30)
003e70  e3069ffd  loadli.w r13,  -312(r30)
003e74  63419ffc  loadli.w r2,  -436(r30)
003e78  e3427ffc  loadli.w r5,  -452(r30)
003e7c  e3047ffc  loadli.w r9,  -456(r30)
003e80  9bc30301  srli r7, r7, 16
003e84  731c7ff8  store.h r7, -104(r30)
003e88  0b92d010  add.s r4, r1, r13
003e8c  e340dffc  loadli.w r1,  -404(r30)
003e90  0b1ed110  add.s r28, r2, r13
003e94  2b01807f  lui r2, 522240
003e98  8b94d410  add.s r9, r9, r13
003e9c  8b92d210  add.s r5, r5, r13
003ea0  e7019ffe  storeli.w r9, -232(r30)
003ea4  8b91d010  add.s r3, r1, r13
003ea8  e300dffc  loadli.w r1,  -408(r30)
003eac  0b93d010  add.s r6, r1, r13
003eb0  e340cffc  loadli.w r1,  -412(r30)
003eb4  8b95d010  add.s r11, r1, r13
003eb8  e300cffc  loadli.w r1,  -416(r30)
003ebc  0b95d010  add.s r10, r1, r13
003ec0  e340bffc  loadli.w r1,  -420(r30)
003ec4  0b99d010  add.s r18, r1, r13
003ec8  e300bffc  loadli.w r1,  -424(r30)
003ecc  8b98d010  add.s r17, r1, r13
003ed0  e340affc  loadli.w r1,  -428(r30)
003ed4  0b98d010  add.s r16, r1, r13
003ed8  e300affc  loadli.w r1,  -432(r30)
003edc  8b97d010  add.s r15, r1, r13
003ee0  97008700  and r1, r14, r8
003ee4  13041104  setlt.u r8, r2, r1
003ee8  63418ffc  loadli.w r2,  -444(r30)
003eec  e3009ffc  loadli.w r1,  -440(r30)
003ef0  8b1dd110  add.s r27, r2, r13
003ef4  63018ffc  loadli.w r2,  -448(r30)
003ef8  8b90d010  add.s r1, r1, r13
003efc  0b11d110  add.s r2, r2, r13
003f00  3b600400  bneq r8, zero, 24
003f04  9b430701  srli r7, r14, 16
003f08  9b831300  andi r7, r7, 1
003f0c  8b137710  add.s r7, r14, r7
003f10  0b97c310  add.s r14, r7, r12
003f14  db010000  j 12
003f18  ab034000  lui r7, 1024
003f1c  17177700  or r14, r14, r7
003f20  b3130228  sext_int2long r[8:9], r4
003f24  9f140000  addli r9, zero, 1
003f28  b3910128  sext_int2long r[4:5], r3
003f2c  1b470701  srli r14, r14, 16
003f30  97b39302  sll.d r[8:9], r[8:9], r9
003f34  97b19102  sll.d r[4:5], r[4:5], r9
003f38  731deff8  store.h r14, -102(r30)
003f3c  73387ff0  store.d r[8:9], -240(r30)
003f40  33130328  sext_int2long r[7:8], r6
003f44  73303ff0  store.d r[4:5], -256(r30)
003f48  63044ffe  loadli.w r8,  -224(r30)
003f4c  97319302  sll.d r[4:5], r[7:8], r9
003f50  33130528  sext_int2long r[7:8], r10
003f54  73383fee  store.d r[4:5], -272(r30)
003f58  b3910528  sext_int2long r[4:5], r11
003f5c  17369302  sll.d r[13:14], r[7:8], r9
003f60  33930828  sext_int2long r[7:8], r17
003f64  17b59102  sll.d r[11:12], r[4:5], r9
003f68  b3110928  sext_int2long r[4:5], r18
003f6c  973b9302  sll.d r[24:25], r[7:8], r9
003f70  33930728  sext_int2long r[7:8], r15
003f74  97ba9102  sll.d r[22:23], r[4:5], r9
003f78  b3110828  sext_int2long r[4:5], r16
003f7c  97399302  sll.d r[20:21], r[7:8], r9
003f80  33930028  sext_int2long r[7:8], r1
003f84  e3007ffe  loadli.w r1,  -200(r30)
003f88  97bc9102  sll.d r[26:27], r[4:5], r9
003f8c  b3110e28  sext_int2long r[4:5], r28
003f90  97001400  and r1, r8, r1
003f94  97b89102  sll.d r[18:19], r[4:5], r9
003f98  97319302  sll.d r[4:5], r[7:8], r9
003f9c  73343fec  store.d r[4:5], -312(r30)
003fa0  b3910d28  sext_int2long r[4:5], r27
003fa4  97bd9102  sll.d r[28:29], r[4:5], r9
003fa8  ab01807f  lui r3, 522240
003fac  93831104  setlt.u r7, r3, r1
003fb0  b3910228  sext_int2long r[4:5], r5
003fb4  e3023ffe  loadli.w r5,  -232(r30)
003fb8  b3100128  sext_int2long r[2:3], r2
003fbc  97b09002  sll.d r[2:3], r[2:3], r9
003fc0  97b19102  sll.d r[4:5], r[4:5], r9
003fc4  b3920228  sext_int2long r[6:7], r5
003fc8  97b29202  sll.d r[6:7], r[6:7], r9
003fcc  3bf00300  bneq r7, zero, 28
003fd0  9b430401  srli r7, r8, 16
003fd4  9b831300  andi r7, r7, 1
003fd8  8b137410  add.s r7, r8, r7
003fdc  63446ffe  loadli.w r8,  -204(r30)
003fe0  0b978310  add.s r14, r7, r8
003fe4  db010000  j 12
003fe8  ab034000  lui r7, 1024
003fec  17177400  or r14, r8, r7
003ff0  eb530f01  load.d r[8:9], 16(r30)
003ff4  eb570fed  load.d r[16:17], -304(r30)
003ff8  8ba7f310  add.ul r[16:17], r[8:9], r[16:17]
003ffc  8ba4a310  add.ul r[10:11], r[8:9], r[11:12]
004000  8ba01310  add.ul r[2:3], r[8:9], r[2:3]
004004  8bac9311  add.ul r[26:27], r[8:9], r[26:27]
004008  8ba93311  add.ul r[20:21], r[8:9], r[20:21]
00400c  8ba81311  add.ul r[18:19], r[8:9], r[18:19]
004010  8badb311  add.ul r[28:29], r[8:9], r[28:29]
004014  7334ffee  store.d r[16:17], -280(r30)
004018  eb570ff1  load.d r[16:17], -240(r30)
00401c  73381ff0  store.d r[2:3], -240(r30)
004020  8ba03310  add.ul r[2:3], r[8:9], r[4:5]
004024  73301ff2  store.d r[2:3], -224(r30)
004028  9b400701  srli r1, r14, 16
00402c  0ba15310  add.ul r[3:4], r[8:9], r[6:7]
004030  8ba7f310  add.ul r[16:17], r[8:9], r[16:17]
004034  733c2ff0  store.d r[3:4], -232(r30)
004038  731e1ff8  store.h r1, -100(r30)
00403c  7330ffee  store.d r[16:17], -288(r30)
004040  eb570ff0  load.d r[16:17], -256(r30)
004044  73309ff0  store.d r[10:11], -256(r30)
004048  8ba4c310  add.ul r[10:11], r[8:9], r[13:14]
00404c  8ba55311  add.ul r[12:13], r[8:9], r[22:23]
004050  8baa7311  add.ul r[22:23], r[8:9], r[24:25]
004054  e3067ffe  loadli.w r13,  -200(r30)
004058  634c5ffe  loadli.w r24,  -212(r30)
00405c  ab0b807f  lui r23, 522240
004060  8ba7f310  add.ul r[16:17], r[8:9], r[16:17]
004064  9706dc00  and r13, r24, r13
004068  733cffee  store.d r[16:17], -264(r30)
00406c  eb570fef  load.d r[16:17], -272(r30)
004070  9386db04  setlt.u r13, r23, r13
004074  8ba7f310  add.ul r[16:17], r[8:9], r[16:17]
004078  7338ffee  store.d r[16:17], -272(r30)
00407c  eb578fec  load.d r[16:17], -312(r30)
004080  8ba7f310  add.ul r[16:17], r[8:9], r[16:17]
004084  b7c706e0  beq r13, zero, -15888
004088  ab004000  lui r1, 1024
00408c  97101c00  or r1, r24, r1
004090  5b3ff8ff  j -15880
004094  2b01c07f  lui r2, 523264
004098  b79101ea  beq r3, zero, -11164
00409c  9f010100  addli r3, r2, 0
0040a0  bb8100ea  bneq r1, zero, -11168
0040a4  5b8cfaff  j -11168
0040a8  2b01c07f  lui r2, 523264
0040ac  379300ea  beq r1, zero, -11068
0040b0  9f000100  addli r1, r2, 0
0040b4  67008ffd  storeli.w r24, -512(r30)
0040b8  3b0308ea  bneq r16, zero, -11072
0040bc  5b98faff  j -11072
0040c0  2b0bc07f  lui r22, 523264
0040c4  e30d7ffe  loadli.w r27,  -200(r30)
0040c8  376b08ea  beq r16, zero, -10536
0040cc  1f080b00  addli r16, r22, 0
0040d0  3bdb08ea  bneq r17, zero, -10540
0040d4  dbdafaff  j -10540
0040d8  ab07c07f  lui r15, 523264
0040dc  e3499ffb  loadli.w r19,  -564(r30)
0040e0  378105ec  beq r11, zero, -10176
0040e4  9f850700  addli r11, r15, 0
0040e8  bbf003ec  bneq r7, zero, -10180
0040ec  db07fbff  j -10180
0040f0  ab05c07f  lui r11, 523264
0040f4  63095ffb  loadli.w r18,  -600(r30)
0040f8  37d203ec  beq r7, zero, -10092
0040fc  9f830500  addli r7, r11, 0
004100  3b420aec  bneq r20, zero, -10096
004104  5b12fbff  j -10096
004108  ab03c07f  lui r7, 523264
00410c  b7230aec  beq r20, zero, -10008
004110  1f8a0300  addli r20, r7, 0
004114  bb1307ec  bneq r14, zero, -10012
004118  db1cfbff  j -10012
00411c  ab03c07f  lui r7, 523264
004120  e3088ffb  loadli.w r17,  -576(r30)
004124  370507ec  beq r14, zero, -9920
004128  1f870300  addli r14, r7, 0
00412c  bb7404ec  bneq r8, zero, -9924
004130  db27fbff  j -9924
004134  ab03c07f  lui r7, 523264
004138  63486ffb  loadli.w r16,  -588(r30)
00413c  375604ec  beq r8, zero, -9836
004140  1f840300  addli r8, r7, 0
004144  3b4603ec  bneq r6, zero, -9840
004148  5b32fbff  j -9840
00414c  ab03c07f  lui r7, 523264
004150  e3072ffc  loadli.w r15,  -496(r30)
004154  b72703ec  beq r6, zero, -9752
004158  1f830300  addli r6, r7, 0
00415c  bb9701ec  bneq r3, zero, -9756
004160  db3cfbff  j -9756
004164  2b03c07f  lui r6, 523264
004168  63471ffc  loadli.w r14,  -500(r30)
00416c  b7f801ec  beq r3, zero, -9668
004170  9f010300  addli r3, r6, 0
004174  bb6806ec  bneq r12, zero, -9672
004178  5b47fbff  j -9672
00417c  ab01c07f  lui r3, 523264
004180  374a06ec  beq r12, zero, -9584
004184  1f860100  addli r12, r3, 0
004188  3b3a01ec  bneq r2, zero, -9588
00418c  db51fbff  j -9588
004190  ab01c07f  lui r3, 523264
004194  b72b01ec  beq r2, zero, -9496
004198  1f810100  addli r2, r3, 0
00419c  bb9b06ec  bneq r13, zero, -9500
0041a0  db5cfbff  j -9500
0041a4  2b01c07f  lui r2, 523264
0041a8  b7fc06ec  beq r13, zero, -9412
0041ac  9f060100  addli r13, r2, 0
0041b0  bbec0cec  bneq r25, zero, -9416
0041b4  5b67fbff  j -9416
0041b8  2b01c07f  lui r2, 523264
0041bc  37de0cec  beq r25, zero, -9324
0041c0  9f0c0100  addli r25, r2, 0
0041c4  3b4e0dec  bneq r26, zero, -9328
0041c8  5b72fbff  j -9328
0041cc  2b01c07f  lui r2, 523264
0041d0  b73f0dec  beq r26, zero, -9236
0041d4  1f0d0100  addli r26, r2, 0
0041d8  bb2f02ec  bneq r4, zero, -9240
0041dc  5b7dfbff  j -9240
0041e0  2b01c07f  lui r2, 523264
0041e4  63447ffb  loadli.w r8,  -580(r30)
0041e8  371102ee  beq r4, zero, -9148
0041ec  1f020100  addli r4, r2, 0
0041f0  3b010eee  bneq r28, zero, -9152
0041f4  5b88fbff  j -9152
0041f8  2b01c07f  lui r2, 523264
0041fc  37620eee  beq r28, zero, -9064
004200  1f0e0100  addli r28, r2, 0
004204  3bd204ee  bneq r9, zero, -9068
004208  db92fbff  j -9068
00420c  2b01c07f  lui r2, 523264
004210  b7c304ee  beq r9, zero, -8976
004214  9f040100  addli r9, r2, 0
004218  bb3305ee  bneq r10, zero, -8980
00421c  db9dfbff  j -8980
004220  2b01c07f  lui r2, 523264
004224  372505ee  beq r10, zero, -8888
004228  1f050100  addli r10, r2, 0
00422c  3b9500ee  bneq r1, zero, -8892
004230  dba8fbff  j -8892
004234  2b01c07f  lui r2, 523264
004238  e303fffb  loadli.w r7,  -520(r30)
00423c  b78600ee  beq r1, zero, -8800
004240  9f000100  addli r1, r2, 0
004244  3b7609ee  bneq r18, zero, -8804
004248  dbb3fbff  j -8804
00424c  ab00c07f  lui r1, 523264
004250  6343cffb  loadli.w r6,  -540(r30)
004254  b75709ee  beq r18, zero, -8716
004258  1f890000  addli r18, r1, 0
00425c  bbc702ee  bneq r5, zero, -8720
004260  5bbefbff  j -8720
004264  ab00c07f  lui r1, 523264
004268  63422ffd  loadli.w r4,  -364(r30)
00426c  373909ee  beq r18, zero, -8628
004270  1f890000  addli r18, r1, 0
004274  3b290cee  bneq r24, zero, -8632
004278  5bc9fbff  j -8632
00427c  ab00c07f  lui r1, 523264
004280  b70a0cee  beq r24, zero, -8544
004284  1f8c0000  addli r24, r1, 0
004288  e3422ffd  loadli.w r5,  -364(r30)
00428c  3bfa02ee  bneq r5, zero, -8548
004290  dbd3fbff  j -8548
004294  ab00c07f  lui r1, 523264
004298  63023ffd  loadli.w r4,  -360(r30)
00429c  b76b0cee  beq r24, zero, -8456
0042a0  1f8c0000  addli r24, r1, 0
0042a4  bb5b08ee  bneq r16, zero, -8460
0042a8  dbdefbff  j -8460
0042ac  ab00c07f  lui r1, 523264
0042b0  63024ffd  loadli.w r4,  -352(r30)
0042b4  b73108f0  beq r16, zero, -8084
0042b8  1f880000  addli r16, r1, 0
0042bc  bba10bf0  bneq r23, zero, -8088
0042c0  5b0dfcff  j -8088
0042c4  ab00c07f  lui r1, 523264
0042c8  377704f0  beq r8, zero, -7716
0042cc  1f840000  addli r8, r1, 0
0042d0  e3424ffd  loadli.w r5,  -348(r30)
0042d4  3be702f0  bneq r5, zero, -7720
0042d8  5b3bfcff  j -7720
0042dc  ab00c07f  lui r1, 523264
0042e0  63025ffd  loadli.w r4,  -344(r30)
0042e4  b75804f0  beq r8, zero, -7628
0042e8  1f840000  addli r8, r1, 0
0042ec  bbc808f0  bneq r17, zero, -7632
0042f0  5b46fcff  j -7632
0042f4  ab00c07f  lui r1, 523264
0042f8  37aa08f0  beq r17, zero, -7544
0042fc  9f880000  addli r17, r1, 0
004300  e3025ffd  loadli.w r5,  -344(r30)
004304  3b9a02f0  bneq r5, zero, -7548
004308  db50fcff  j -7548
00430c  ab00c07f  lui r1, 523264
004310  63425ffd  loadli.w r4,  -340(r30)
004314  b78b08f0  beq r17, zero, -7456
004318  9f880000  addli r17, r1, 0
00431c  3bfb0af0  bneq r21, zero, -7460
004320  db5bfcff  j -7460
004324  ab00c07f  lui r1, 523264
004328  b7dc0af0  beq r21, zero, -7372
00432c  9f8a0000  addli r21, r1, 0
004330  e3425ffd  loadli.w r5,  -340(r30)
004334  bbcc02f0  bneq r5, zero, -7376
004338  5b66fcff  j -7376
00433c  ab00c07f  lui r1, 523264
004340  63026ffd  loadli.w r4,  -336(r30)
004344  37be0af0  beq r21, zero, -7284
004348  9f8a0000  addli r21, r1, 0
00434c  3b2e0bf0  bneq r22, zero, -7288
004350  5b71fcff  j -7288
004354  ab00c07f  lui r1, 523264
004358  63426ffd  loadli.w r4,  -332(r30)
00435c  b72104f2  beq r8, zero, -7064
004360  1f840000  addli r8, r1, 0
004364  bb110af2  bneq r20, zero, -7068
004368  db8cfcff  j -7068
00436c  ab00c07f  lui r1, 523264
004370  9f0a0b00  addli r21, r22, 0
004374  37130af2  beq r20, zero, -6972
004378  1f8a0000  addli r20, r1, 0
00437c  e3426ffd  loadli.w r5,  -332(r30)
004380  3b8302f2  bneq r5, zero, -6976
004384  5b98fcff  j -6976
004388  ab00c07f  lui r1, 523264
00438c  63027ffd  loadli.w r4,  -328(r30)
004390  37740af2  beq r20, zero, -6884
004394  1f8a0000  addli r20, r1, 0
004398  3be409f2  bneq r19, zero, -6888
00439c  5ba3fcff  j -6888
0043a0  ab00c07f  lui r1, 523264
0043a4  b7c509f2  beq r19, zero, -6800
0043a8  9f890000  addli r19, r1, 0
0043ac  e3027ffd  loadli.w r5,  -328(r30)
0043b0  bbb502f2  bneq r5, zero, -6804
0043b4  dbadfcff  j -6804
0043b8  ab00c07f  lui r1, 523264
0043bc  63427ffd  loadli.w r4,  -324(r30)
0043c0  37a709f2  beq r19, zero, -6712
0043c4  9f890000  addli r19, r1, 0
0043c8  3b1709f2  bneq r18, zero, -6716
0043cc  dbb8fcff  j -6716
0043d0  ab00c07f  lui r1, 523264
0043d4  b70809f2  beq r18, zero, -6624
0043d8  1f890000  addli r18, r1, 0
0043dc  e3427ffd  loadli.w r5,  -324(r30)
0043e0  3bf802f2  bneq r5, zero, -6628
0043e4  dbc3fcff  j -6628
0043e8  ab00c07f  lui r1, 523264
0043ec  63028ffd  loadli.w r4,  -320(r30)
0043f0  b76909f2  beq r18, zero, -6536
0043f4  1f890000  addli r18, r1, 0
0043f8  bbd909f2  bneq r19, zero, -6540
0043fc  dbcefcff  j -6540
004400  ab00c07f  lui r1, 523264
004404  37cb09f2  beq r19, zero, -6448
004408  9f890000  addli r19, r1, 0
00440c  e3028ffd  loadli.w r5,  -320(r30)
004410  3bbb02f2  bneq r5, zero, -6452
004414  dbd9fcff  j -6452
004418  ab00c07f  lui r1, 523264
00441c  b7ac0bf2  beq r23, zero, -6360
004420  9f8b0000  addli r23, r1, 0
004424  bb1c06f2  bneq r12, zero, -6364
004428  dbe4fcff  j -6364
00442c  ab00c07f  lui r1, 523264
004430  6302dffd  loadli.w r4,  -280(r30)
004434  b77d06f2  beq r12, zero, -6276
004438  1f860000  addli r12, r1, 0
00443c  bb6d09f2  bneq r18, zero, -6280
004440  5beffcff  j -6280
004444  ab00c07f  lui r1, 523264
004448  6302effd  loadli.w r4,  -272(r30)
00444c  b7810bf4  beq r23, zero, -6048
004450  9f8b0000  addli r23, r1, 0
004454  e3418ffd  loadli.w r3,  -316(r30)
004458  3bf101f4  bneq r3, zero, -6052
00445c  db0bfdff  j -6052
004460  ab00c07f  lui r1, 523264
004464  1f0a0b00  addli r20, r22, 0
004468  374309f4  beq r18, zero, -5936
00446c  1f890000  addli r18, r1, 0
004470  e302effd  loadli.w r5,  -272(r30)
004474  3bb302f4  bneq r5, zero, -5940
004478  db19fdff  j -5940
00447c  ab00c07f  lui r1, 523264
004480  63020ffe  loadli.w r4,  -256(r30)
004484  b7440bf4  beq r22, zero, -5840
004488  1f8b0000  addli r22, r1, 0
00448c  bbb40bf4  bneq r23, zero, -5844
004490  db25fdff  j -5844
004494  ab00c07f  lui r1, 523264
004498  37960bf4  beq r23, zero, -5756
00449c  9f8b0000  addli r23, r1, 0
0044a0  e3020ffe  loadli.w r5,  -256(r30)
0044a4  3b8602f4  bneq r5, zero, -5760
0044a8  5b30fdff  j -5760
0044ac  ab00c07f  lui r1, 523264
0044b0  63421ffe  loadli.w r4,  -244(r30)
0044b4  b7270bf4  beq r22, zero, -5656
0044b8  1f8b0000  addli r22, r1, 0
0044bc  e301fffd  loadli.w r3,  -264(r30)
0044c0  bb9701f4  bneq r3, zero, -5660
0044c4  db3cfdff  j -5660
0044c8  ab00c07f  lui r1, 523264
0044cc  37c90bf4  beq r23, zero, -5552
0044d0  9f8b0000  addli r23, r1, 0
0044d4  e3421ffe  loadli.w r5,  -244(r30)
0044d8  3bb902f4  bneq r5, zero, -5556
0044dc  db49fdff  j -5556
0044e0  ab00c07f  lui r1, 523264
0044e4  63022ffe  loadli.w r4,  -240(r30)
0044e8  b7aa0bf4  beq r23, zero, -5464
0044ec  9f8b0000  addli r23, r1, 0
0044f0  bb1a03f4  bneq r6, zero, -5468
0044f4  db54fdff  j -5468
0044f8  ab00c07f  lui r1, 523264
0044fc  b77b03f4  beq r6, zero, -5380
004500  1f830000  addli r6, r1, 0
004504  e3022ffe  loadli.w r5,  -240(r30)
004508  bbeb02f4  bneq r5, zero, -5384
00450c  5b5ffdff  j -5384
004510  ab00c07f  lui r1, 523264
004514  37ed0bf4  beq r23, zero, -5288
004518  9f8b0000  addli r23, r1, 0
00451c  3b5d06f4  bneq r12, zero, -5292
004520  db6afdff  j -5292
004524  ab00c07f  lui r1, 523264
004528  b75e06f4  beq r12, zero, -5196
00452c  1f860000  addli r12, r1, 0
004530  bb4e05f4  bneq r10, zero, -5200
004534  5b76fdff  j -5200
004538  ab00c07f  lui r1, 523264
00453c  372005f6  beq r10, zero, -5112
004540  1f850000  addli r10, r1, 0
004544  3b9004f6  bneq r9, zero, -5116
004548  db80fdff  j -5116
00454c  ab00c07f  lui r1, 523264
004550  37f104f6  beq r9, zero, -5028
004554  9f840000  addli r9, r1, 0
004558  3b6104f6  bneq r8, zero, -5032
00455c  5b8bfdff  j -5032
004560  ab00c07f  lui r1, 523264
004564  b74204f6  beq r8, zero, -4944
004568  1f840000  addli r8, r1, 0
00456c  bbb203f6  bneq r7, zero, -4948
004570  db95fdff  j -4948
004574  ab00c07f  lui r1, 523264
004578  379403f6  beq r7, zero, -4860
00457c  9f830000  addli r7, r1, 0
004580  3b0403f6  bneq r6, zero, -4864
004584  5ba0fdff  j -4864
004588  9f0e0ffb  addli sp, r30, -640
00458c  9f8e0e05  addli sp, sp, 640
004590  00a00300  mfence { lm, sm, gm }
004594  00100000  exit
004598  00100000  exit
00459c  00100000  exit
0045a0  00100000  exit
0045a4  00100000  exit
0045a8  00100000  exit
0045ac  00100000  exit
0045b0  00100000  exit
0045b4  00100000  exit
0045b8  00100000  exit
0045bc  00100000  exit
0045c0  00100000  exit
0045c4  00100000  exit
0045c8  00100000  exit
0045cc  00100000  exit
0045d0  00100000  exit
0045d4  00100000  exit
0045d8  00100000  exit
0045dc  00100000  exit
0045e0  00100000  exit
0045e4  00100000  exit
0045e8  00100000  exit
0045ec  00100000  exit
0045f0  00100000  exit
0045f4  00100000  exit
0045f8  00100000  exit
0045fc  00100000  exit
004600  00100000  exit
004604  00100000  exit
004608  00100000  exit
00460c  00100000  exit
004610  00100000  exit
004614  00100000  exit
004618  00100000  exit
00461c  00100000  exit
004620  00100000  exit
004624  00100000  exit
004628  00100000  exit
00462c  00100000  exit
004630  00100000  exit
004634  00100000  exit
004638  00100000  exit
00463c  00100000  exit
004640  00100000  exit
004644  00100000  exit
004648  00100000  exit
00464c  00100000  exit
004650  00100000  exit
004654  00100000  exit
004658  00100000  exit
00465c  00100000  exit
004660  00100000  exit
004664  00100000  exit
004668  00100000  exit
00466c  00100000  exit
004670  00100000  exit
004674  00100000  exit
004678  00100000  exit
00467c  00100000  exit
004680  00100000  exit
004684  00100000  exit
004688  00100000  exit
00468c  00100000  exit
004690  00100000  exit
004694  00100000  exit
004698  00100000  exit
00469c  00100000  exit
0046a0  00100000  exit
0046a4  00100000  exit
0046a8  00100000  exit
0046ac  00100000  exit
0046b0  00100000  exit
0046b4  00100000  exit
0046b8  00100000  exit
0046bc  00100000  exit
0046c0  00100000  exit
0046c4  00100000  exit
0046c8  00100000  exit
0046cc  00100000  exit
0046d0  00100000  exit
0046d4  00100000  exit
0046d8  00100000  exit
0046dc  00100000  exit
0046e0  00100000  exit
0046e4  00100000  exit
0046e8  00100000  exit
0046ec  00100000  exit
0046f0  00100000  exit
0046f4  00100000  exit
0046f8  00100000  exit
0046fc  00100000  exit
004700  00100000  exit
004704  00100000  exit
004708  00100000  exit
00470c  00100000  exit
004710  00100000  exit
004714  00100000  exit
004718  00100000  exit
00471c  00100000  exit
004720  00100000  exit
004724  00100000  exit
004728  00100000  exit
00472c  00100000  exit
004730  00100000  exit
004734  00100000  exit
004738  00100000  exit
00473c  00100000  exit
004740  00100000  exit
004744  00100000  exit
004748  00100000  exit
00474c  00100000  exit
004750  00100000  exit
004754  00100000  exit
004758  00100000  exit
00475c  00100000  exit
004760  00100000  exit
004764  00100000  exit
004768  00100000  exit
00476c  00100000  exit
004770  00100000  exit
004774  00100000  exit
004778  00100000  exit
00477c  00100000  exit
004780  00100000  exit
004784  00100000  exit
004788  00100000  exit
00478c  00100000  exit
004790  00100000  exit
004794  00100000  exit
004798  00100000  exit
00479c  00100000  exit
0047a0  00100000  exit
0047a4  00100000  exit
0047a8  00100000  exit
0047ac  00100000  exit
0047b0  00100000  exit
0047b4  00100000  exit
0047b8  00100000  exit
0047bc  00100000  exit
0047c0  00100000  exit
0047c4  00100000  exit
0047c8  00100000  exit
0047cc  00100000  exit
0047d0  00100000  exit
0047d4  00100000  exit
