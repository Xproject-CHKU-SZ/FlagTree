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
00014c  cb50a222  ble.s r4, r10, 17460
000150  1f028000  addli r4, zero, 64
000154  e3031ffd  loadli.w r7,  -376(r30)
000158  9f140000  addli r9, zero, 1
00015c  eb528f00  load.d r[6:7], 8(r30)
000160  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000164  0b924030  div.s r4, r1, r4
000168  9f832308  addli r7, r7, 1040
00016c  e7477ffc  storeli.w r7, -388(r30)
000170  80d30002  load_param_i r7, 1
000174  67477ffc  storeli.w r7, -396(r30)
000178  67084ffc  storeli.w r4, -384(r30)
00017c  1b326200  slli r4, r4, 6
000180  0b924018  sub.s r4, r1, r4
000184  9b80f003  andi r1, r1, 63
000188  1b324200  slli r4, r4, 4
00018c  e74d1ffc  storeli.w r1, -292(r30)
000190  9b131200  ori r7, r4, 1
000194  e7074ffc  storeli.w r4, -392(r30)
000198  67077ffc  storeli.w r7, -400(r30)
00019c  9b132200  ori r7, r4, 2
0001a0  e7467ffc  storeli.w r7, -404(r30)
0001a4  9b133200  ori r7, r4, 3
0001a8  e7067ffc  storeli.w r7, -408(r30)
0001ac  9b134200  ori r7, r4, 4
0001b0  67467ffc  storeli.w r7, -412(r30)
0001b4  9b135200  ori r7, r4, 5
0001b8  67067ffc  storeli.w r7, -416(r30)
0001bc  9b136200  ori r7, r4, 6
0001c0  e7457ffc  storeli.w r7, -420(r30)
0001c4  9b137200  ori r7, r4, 7
0001c8  e7057ffc  storeli.w r7, -424(r30)
0001cc  9b138200  ori r7, r4, 8
0001d0  67457ffc  storeli.w r7, -428(r30)
0001d4  9b139200  ori r7, r4, 9
0001d8  67057ffc  storeli.w r7, -432(r30)
0001dc  9b13a200  ori r7, r4, 10
0001e0  e7447ffc  storeli.w r7, -436(r30)
0001e4  9b13b200  ori r7, r4, 11
0001e8  e7047ffc  storeli.w r7, -440(r30)
0001ec  9b13c200  ori r7, r4, 12
0001f0  67447ffc  storeli.w r7, -444(r30)
0001f4  9b13d200  ori r7, r4, 13
0001f8  67047ffc  storeli.w r7, -448(r30)
0001fc  9b13e200  ori r7, r4, 14
000200  e7437ffc  storeli.w r7, -452(r30)
000204  9b13f200  ori r7, r4, 15
000208  e7037ffc  storeli.w r7, -456(r30)
00020c  b3130228  sext_int2long r[8:9], r4
000210  2bf2ffff  lui r4, 1048575
000214  1b1202f0  ori r4, r4, 3840
000218  97b39302  sll.d r[8:9], r[8:9], r9
00021c  97814100  and r3, r3, r4
000220  0ba27210  add.ul r[5:6], r[6:7], r[8:9]
000224  1f038ffe  addli r6, r30, -192
000228  9f034000  addli r7, zero, 32
00022c  0b912110  add.s r2, r3, r2
000230  73384fe2  store.d r[5:6], -464(r30)
000234  9f002108  addli r1, r2, 1040
000238  67032ffe  storeli.w r2, -208(r30)
00023c  2bf17f7f  lui r2, 522239
000240  e7481ffc  storeli.w r1, -372(r30)
000244  ab700000  lui r1, 7
000248  9b90f0ff  ori r1, r1, 4095
00024c  67431ffe  storeli.w r1, -204(r30)
000250  abf0ff7f  lui r1, 524287
000254  9b90f0ff  ori r1, r1, 4095
000258  e7431ffe  storeli.w r1, -196(r30)
00025c  9b10f1ff  ori r1, r2, 4095
000260  e7031ffe  storeli.w r1, -200(r30)
000264  9f200000  addli r1, zero, 2
000268  fe8100e0  vmmov mr3, r1
00026c  db2d0000  j 364
000270  9b400c01  srli r1, r24, 16
000274  63416ffe  loadli.w r2,  -204(r30)
000278  9b801000  andi r1, r1, 1
00027c  8b101c10  add.s r1, r24, r1
000280  8b902010  add.s r1, r1, r2
000284  9bc00001  srli r1, r1, 16
000288  1f240000  addli r8, zero, 2
00028c  9f020fff  addli r5, r30, -128
000290  2b0100f0  lui r2, 983040
000294  1f038ffe  addli r6, r30, -192
000298  9f034000  addli r7, zero, 32
00029c  731f1ff8  store.h r1, -98(r30)
0002a0  ab0000f0  lui r1, 983040
0002a4  17112400  or r2, r8, r2
0002a8  00a00000  mfence { lm }
0002ac  eb518fee  load.d r[4:5], -280(r30)
0002b0  97101400  or r1, r8, r1
0002b4  eb560ff0  load.d r[14:15], -256(r30)
0002b8  ffb05100  s_lm2gm r1, r5, 0(r[4:5])
0002bc  e340fffd  loadli.w r1,  -260(r30)
0002c0  eb510fee  load.d r[4:5], -288(r30)
0002c4  7fb11100  s_lm2gm r2, r1, 0(r[4:5])
0002c8  2b0100f0  lui r2, 983040
0002cc  9fc00200  addli r1, r5, 4
0002d0  ab0100f0  lui r3, 983040
0002d4  1fe20200  addli r4, r5, 6
0002d8  17112400  or r2, r8, r2
0002dc  97113400  or r3, r8, r3
0002e0  7fb11600  s_lm2gm r2, r1, 0(r[14:15])
0002e4  eb500fef  load.d r[2:3], -272(r30)
0002e8  eb568ff0  load.d r[14:15], -248(r30)
0002ec  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0002f0  ab0100f0  lui r3, 983040
0002f4  2b0200f0  lui r4, 983040
0002f8  9f801200  addli r1, r5, 8
0002fc  1fa11200  addli r2, r5, 10
000300  97113400  or r3, r8, r3
000304  17124400  or r4, r8, r4
000308  7fb22400  s_lm2gm r4, r2, 0(r[10:11])
00030c  ffb11600  s_lm2gm r3, r1, 0(r[14:15])
000310  ab0100f0  lui r3, 983040
000314  2b0200f0  lui r4, 983040
000318  9fc01200  addli r1, r5, 12
00031c  1fe11200  addli r2, r5, 14
000320  eb540ff1  load.d r[10:11], -240(r30)
000324  97113400  or r3, r8, r3
000328  17124400  or r4, r8, r4
00032c  ffb11500  s_lm2gm r3, r1, 0(r[12:13])
000330  7fb22a00  s_lm2gm r4, r2, 0(r[22:23])
000334  ab0100f0  lui r3, 983040
000338  2b0200f0  lui r4, 983040
00033c  9f802200  addli r1, r5, 16
000340  1fa12200  addli r2, r5, 18
000344  97113400  or r3, r8, r3
000348  17124400  or r4, r8, r4
00034c  ffb11c00  s_lm2gm r3, r1, 0(r[26:27])
000350  7fb22900  s_lm2gm r4, r2, 0(r[20:21])
000354  ab0100f0  lui r3, 983040
000358  2b0200f0  lui r4, 983040
00035c  9fc02200  addli r1, r5, 20
000360  1fe12200  addli r2, r5, 22
000364  97113400  or r3, r8, r3
000368  17124400  or r4, r8, r4
00036c  ffb11800  s_lm2gm r3, r1, 0(r[18:19])
000370  7fb22700  s_lm2gm r4, r2, 0(r[16:17])
000374  ab0100f0  lui r3, 983040
000378  2b0200f0  lui r4, 983040
00037c  9f803200  addli r1, r5, 24
000380  1fa13200  addli r2, r5, 26
000384  97113400  or r3, r8, r3
000388  17124400  or r4, r8, r4
00038c  7fb22400  s_lm2gm r4, r2, 0(r[10:11])
000390  ffb11d00  s_lm2gm r3, r1, 0(r[28:29])
000394  ab0100f0  lui r3, 983040
000398  2b0200f0  lui r4, 983040
00039c  9fc03200  addli r1, r5, 28
0003a0  1fe13200  addli r2, r5, 30
0003a4  6305bffd  loadli.w r10,  -296(r30)
0003a8  97113400  or r3, r8, r3
0003ac  17124400  or r4, r8, r4
0003b0  6b540ff2  load.d r[9:10], -224(r30)
0003b4  ff311400  s_lm2gm r3, r1, 0(r[9:10])
0003b8  6b548ff1  load.d r[9:10], -232(r30)
0003bc  e340effc  loadli.w r1,  -396(r30)
0003c0  7f322400  s_lm2gm r4, r2, 0(r[9:10])
0003c4  0b151510  add.s r10, r10, r1
0003c8  00a00000  mfence { lm }
0003cc  e3400ffd  loadli.w r1,  -380(r30)
0003d0  3f201500  blt.s r10, r1, 8
0003d4  db350800  j 16812
0003d8  9f000000  addli r1, zero, 0
0003dc  0b111310  add.s r2, r6, r1
0003e0  9fc00000  addli r1, r1, 4
0003e4  73100100  store.h zero, 0(r2)
0003e8  73110100  store.h zero, 2(r2)
0003ec  00a00000  mfence { lm }
0003f0  bbbf70fe  bneq r1, r7, -20
0003f4  e3005f00  loadli.w r1,  40(r30)
0003f8  63414f00  loadli.w r2,  36(r30)
0003fc  9f120000  addli r5, zero, 1
000400  e70daffc  storeli.w r10, -296(r30)
000404  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000408  1f190000  addli r18, zero, 1
00040c  12310002  vadd.s.mz vr2{mr1}, zero, vr0
000410  7e0109e0  vmmov mr2, r18
000414  8b101530  div.s r1, r10, r1
000418  8b902030  div.s r1, r1, r2
00041c  63010ffd  loadli.w r2,  -384(r30)
000420  8b982010  add.s r17, r1, r2
000424  e300fffc  loadli.w r1,  -392(r30)
000428  1bb1a800  slli r2, r17, 10
00042c  8b101110  add.s r1, r2, r1
000430  e70c2ffc  storeli.w r2, -312(r30)
000434  2b0100f0  lui r2, 983040
000438  b3910028  sext_int2long r[4:5], r1
00043c  17912300  or r2, r7, r2
000440  ab0000f0  lui r1, 983040
000444  17b45102  sll.d r[9:10], r[4:5], r5
000448  eb510f00  load.d r[4:5], 0(r30)
00044c  97901300  or r1, r7, r1
000450  73388fec  store.d r[9:10], -304(r30)
000454  8ba18110  add.ul r[4:5], r[4:5], r[9:10]
000458  7fa16100  l_gm2lm r2, r6, 0(r[4:5])
00045c  6b510fe3  load.d r[3:4], -464(r30)
000460  1f020fff  addli r4, r30, -128
000464  ff204100  l_gm2lm r1, r4, 0(r[3:4])
000468  00a00000  mfence { lm }
00046c  eb310ff4  load.hu r3, -192(r30)
000470  6b322ff4  load.hu r4, -190(r30)
000474  6b31aff5  load.hu r2, -166(r30)
000478  eb30cff5  load.hu r1, -164(r30)
00047c  eb324ff4  load.hu r5, -188(r30)
000480  6b336ff4  load.hu r6, -186(r30)
000484  eb338ff4  load.hu r7, -184(r30)
000488  6b34aff4  load.hu r8, -182(r30)
00048c  eb34cff4  load.hu r9, -180(r30)
000490  6b35eff4  load.hu r10, -178(r30)
000494  eb350ff5  load.hu r11, -176(r30)
000498  6b362ff5  load.hu r12, -174(r30)
00049c  eb364ff5  load.hu r13, -172(r30)
0004a0  6b376ff5  load.hu r14, -170(r30)
0004a4  eb378ff5  load.hu r15, -168(r30)
0004a8  6b38eff5  load.hu r16, -162(r30)
0004ac  b3910118  bfloat2float.rn r3, r3
0004b0  33110118  bfloat2float.rn r2, r2
0004b4  b3900018  bfloat2float.rn r1, r1
0004b8  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
0004bc  b3110218  bfloat2float.rn r3, r4
0004c0  1f420000  addli r4, zero, 4
0004c4  7e0002e0  vmmov mr0, r4
0004c8  1f021000  addli r4, zero, 8
0004cc  eaa01136  vor.u.mh vr1{mr3}, r3, vr1
0004d0  b3910218  bfloat2float.rn r3, r5
0004d4  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0004d8  b3110318  bfloat2float.rn r3, r6
0004dc  7e0002e0  vmmov mr0, r4
0004e0  1f022000  addli r4, zero, 16
0004e4  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0004e8  b3910318  bfloat2float.rn r3, r7
0004ec  7e0002e0  vmmov mr0, r4
0004f0  1f024000  addli r4, zero, 32
0004f4  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0004f8  b3110418  bfloat2float.rn r3, r8
0004fc  7e0002e0  vmmov mr0, r4
000500  1f028000  addli r4, zero, 64
000504  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000508  b3910418  bfloat2float.rn r3, r9
00050c  7e0002e0  vmmov mr0, r4
000510  1f020001  addli r4, zero, 128
000514  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000518  b3110518  bfloat2float.rn r3, r10
00051c  7e0002e0  vmmov mr0, r4
000520  1f020002  addli r4, zero, 256
000524  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000528  b3910518  bfloat2float.rn r3, r11
00052c  7e0002e0  vmmov mr0, r4
000530  1f020004  addli r4, zero, 512
000534  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000538  b3110618  bfloat2float.rn r3, r12
00053c  7e0002e0  vmmov mr0, r4
000540  1f020008  addli r4, zero, 1024
000544  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000548  b3910618  bfloat2float.rn r3, r13
00054c  7e0002e0  vmmov mr0, r4
000550  1f020010  addli r4, zero, 2048
000554  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000558  b3110718  bfloat2float.rn r3, r14
00055c  7e0002e0  vmmov mr0, r4
000560  1f020020  addli r4, zero, 4096
000564  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000568  b3910718  bfloat2float.rn r3, r15
00056c  7e0002e0  vmmov mr0, r4
000570  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000574  9f010040  addli r3, zero, 8192
000578  7e8001e0  vmmov mr0, r3
00057c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000580  2b410000  lui r2, 4
000584  7e0001e0  vmmov mr0, r2
000588  2b810000  lui r2, 8
00058c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000590  b3100818  bfloat2float.rn r1, r16
000594  7e0001e0  vmmov mr0, r2
000598  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00059c  eb300ff8  load.hu r1, -128(r30)
0005a0  6b312ff8  load.hu r2, -126(r30)
0005a4  eb314ff8  load.hu r3, -124(r30)
0005a8  6b326ff8  load.hu r4, -122(r30)
0005ac  eb328ff8  load.hu r5, -120(r30)
0005b0  6b33aff8  load.hu r6, -118(r30)
0005b4  eb33cff8  load.hu r7, -116(r30)
0005b8  6b34eff8  load.hu r8, -114(r30)
0005bc  eb340ff9  load.hu r9, -112(r30)
0005c0  6b352ff9  load.hu r10, -110(r30)
0005c4  eb354ff9  load.hu r11, -108(r30)
0005c8  6b366ff9  load.hu r12, -106(r30)
0005cc  eb368ff9  load.hu r13, -104(r30)
0005d0  6b37aff9  load.hu r14, -102(r30)
0005d4  eb37cff9  load.hu r15, -100(r30)
0005d8  6b38eff9  load.hu r16, -98(r30)
0005dc  b3900018  bfloat2float.rn r1, r1
0005e0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0005e4  b3100118  bfloat2float.rn r1, r2
0005e8  1f410000  addli r2, zero, 4
0005ec  7e0101e0  vmmov mr2, r2
0005f0  1f011000  addli r2, zero, 8
0005f4  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0005f8  b3900118  bfloat2float.rn r1, r3
0005fc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000600  b3100218  bfloat2float.rn r1, r4
000604  7e0101e0  vmmov mr2, r2
000608  1f012000  addli r2, zero, 16
00060c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000610  b3900218  bfloat2float.rn r1, r5
000614  7e0101e0  vmmov mr2, r2
000618  1f014000  addli r2, zero, 32
00061c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000620  b3100318  bfloat2float.rn r1, r6
000624  7e0101e0  vmmov mr2, r2
000628  1f018000  addli r2, zero, 64
00062c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000630  b3900318  bfloat2float.rn r1, r7
000634  7e0101e0  vmmov mr2, r2
000638  1f010001  addli r2, zero, 128
00063c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000640  b3100418  bfloat2float.rn r1, r8
000644  7e0101e0  vmmov mr2, r2
000648  1f010002  addli r2, zero, 256
00064c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000650  b3900418  bfloat2float.rn r1, r9
000654  7e0101e0  vmmov mr2, r2
000658  1f010004  addli r2, zero, 512
00065c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000660  b3100518  bfloat2float.rn r1, r10
000664  7e0101e0  vmmov mr2, r2
000668  1f010008  addli r2, zero, 1024
00066c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000670  b3900518  bfloat2float.rn r1, r11
000674  7e0101e0  vmmov mr2, r2
000678  1f010010  addli r2, zero, 2048
00067c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000680  b3100618  bfloat2float.rn r1, r12
000684  7e0101e0  vmmov mr2, r2
000688  1f010020  addli r2, zero, 4096
00068c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000690  b3900618  bfloat2float.rn r1, r13
000694  7e0101e0  vmmov mr2, r2
000698  1f010040  addli r2, zero, 8192
00069c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006a0  b3100718  bfloat2float.rn r1, r14
0006a4  7e0101e0  vmmov mr2, r2
0006a8  2b410000  lui r2, 4
0006ac  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006b0  b3900718  bfloat2float.rn r1, r15
0006b4  7e0101e0  vmmov mr2, r2
0006b8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006bc  b3100818  bfloat2float.rn r1, r16
0006c0  2b08807f  lui r16, 522240
0006c4  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0006c8  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0006cc  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0006d0  00a00000  mfence { lm }
0006d4  630b8fff  loadli.w r22,  -64(r30)
0006d8  634a8fff  loadli.w r20,  -60(r30)
0006dc  e3099fff  loadli.w r19,  -56(r30)
0006e0  63499fff  loadli.w r18,  -52(r30)
0006e4  6307afff  loadli.w r14,  -48(r30)
0006e8  6346afff  loadli.w r12,  -44(r30)
0006ec  e305bfff  loadli.w r11,  -40(r30)
0006f0  e344bfff  loadli.w r9,  -36(r30)
0006f4  6304cfff  loadli.w r8,  -32(r30)
0006f8  e340cfff  loadli.w r1,  -28(r30)
0006fc  63437ffe  loadli.w r6,  -196(r30)
000700  97016b00  and r3, r22, r6
000704  e70e1ffc  storeli.w r1, -280(r30)
000708  e307dfff  loadli.w r15,  -24(r30)
00070c  6341dfff  loadli.w r2,  -20(r30)
000710  e30defff  loadli.w r27,  -16(r30)
000714  e343efff  loadli.w r7,  -12(r30)
000718  630effff  loadli.w r28,  -8(r30)
00071c  6345ffff  loadli.w r10,  -4(r30)
000720  93003804  setlt.u r1, r16, r3
000724  3bc00000  bneq r1, zero, 16
000728  ab064000  lui r13, 1024
00072c  e7006fff  storeli.w r22, -248(r30)
000730  5b020000  j 16
000734  ab064000  lui r13, 1024
000738  9710db00  or r1, r22, r13
00073c  e7001ffe  storeli.w r1, -248(r30)
000740  170d6a00  and r26, r20, r6
000744  9300a805  setlt.u r1, r16, r26
000748  3bb00000  bneq r1, zero, 12
00074c  67014fff  storeli.w r20, -240(r30)
000750  db010000  j 12
000754  9710da00  or r1, r20, r13
000758  67011ffe  storeli.w r1, -240(r30)
00075c  978c6900  and r25, r19, r6
000760  93009805  setlt.u r1, r16, r25
000764  3bb00000  bneq r1, zero, 12
000768  e7013fff  storeli.w r19, -232(r30)
00076c  db010000  j 12
000770  9790d900  or r1, r19, r13
000774  e7011ffe  storeli.w r1, -232(r30)
000778  170c6900  and r24, r18, r6
00077c  670e1ffd  storeli.w r17, -288(r30)
000780  93008805  setlt.u r1, r16, r24
000784  3bb00000  bneq r1, zero, 12
000788  67022fff  storeli.w r18, -224(r30)
00078c  db010000  j 12
000790  9710d900  or r1, r18, r13
000794  67021ffe  storeli.w r1, -224(r30)
000798  970b6700  and r23, r14, r6
00079c  93007805  setlt.u r1, r16, r23
0007a0  3bb00000  bneq r1, zero, 12
0007a4  e742effe  storeli.w r14, -212(r30)
0007a8  db010000  j 12
0007ac  9710d700  or r1, r14, r13
0007b0  e7421ffe  storeli.w r1, -212(r30)
0007b4  97026600  and r5, r12, r6
0007b8  93005804  setlt.u r1, r16, r5
0007bc  3bb00000  bneq r1, zero, 12
0007c0  e74acffc  storeli.w r12, -340(r30)
0007c4  db010000  j 12
0007c8  9710d600  or r1, r12, r13
0007cc  e74a1ffc  storeli.w r1, -340(r30)
0007d0  17826500  and r4, r11, r6
0007d4  93004804  setlt.u r1, r16, r4
0007d8  3bb00000  bneq r1, zero, 12
0007dc  670bbffc  storeli.w r11, -336(r30)
0007e0  db010000  j 12
0007e4  9790d500  or r1, r11, r13
0007e8  670b1ffc  storeli.w r1, -336(r30)
0007ec  670f2ffc  storeli.w r2, -272(r30)
0007f0  17816400  and r2, r9, r6
0007f4  67499ffc  storeli.w r9, -364(r30)
0007f8  93002804  setlt.u r1, r16, r2
0007fc  37a00000  beq r1, zero, 8
000800  9794d400  or r9, r9, r13
000804  97006400  and r1, r8, r6
000808  e7098ffc  storeli.w r8, -360(r30)
00080c  13031804  setlt.u r6, r16, r1
000810  37200300  beq r6, zero, 8
000814  1714d400  or r8, r8, r13
000818  e74f7ffc  storeli.w r7, -260(r30)
00081c  63437ffe  loadli.w r6,  -196(r30)
000820  e303dffd  loadli.w r7,  -280(r30)
000824  978a6300  and r21, r7, r6
000828  13035805  setlt.u r6, r16, r21
00082c  37200300  beq r6, zero, 8
000830  9793d300  or r7, r7, r13
000834  63437ffe  loadli.w r6,  -196(r30)
000838  e749fffc  storeli.w r15, -356(r30)
00083c  97886700  and r17, r15, r6
000840  13031805  setlt.u r6, r16, r17
000844  3b300300  bneq r6, zero, 12
000848  670cfffc  storeli.w r15, -320(r30)
00084c  db010000  j 12
000850  1793d700  or r6, r15, r13
000854  670c6ffc  storeli.w r6, -320(r30)
000858  674b9ffc  storeli.w r9, -332(r30)
00085c  63437ffe  loadli.w r6,  -196(r30)
000860  e304effd  loadli.w r9,  -272(r30)
000864  97876400  and r15, r9, r6
000868  1303f804  setlt.u r6, r16, r15
00086c  37200300  beq r6, zero, 8
000870  9794d400  or r9, r9, r13
000874  63437ffe  loadli.w r6,  -196(r30)
000878  6700affe  storeli.w r10, -256(r30)
00087c  e70b8ffc  storeli.w r8, -328(r30)
000880  2b044000  lui r8, 1024
000884  17856d00  and r10, r27, r6
000888  1303a804  setlt.u r6, r16, r10
00088c  3b300300  bneq r6, zero, 12
000890  e70abffd  storeli.w r27, -344(r30)
000894  db010000  j 12
000898  1793dd00  or r6, r27, r13
00089c  e70a6ffc  storeli.w r6, -344(r30)
0008a0  e74b7ffc  storeli.w r7, -324(r30)
0008a4  63437ffe  loadli.w r6,  -196(r30)
0008a8  e343fffd  loadli.w r7,  -260(r30)
0008ac  670abffd  storeli.w r27, -352(r30)
0008b0  ab0d807f  lui r27, 522240
0008b4  97866300  and r13, r7, r6
0008b8  1303d804  setlt.u r6, r16, r13
0008bc  37200300  beq r6, zero, 8
0008c0  97938300  or r7, r7, r8
0008c4  63437ffe  loadli.w r6,  -196(r30)
0008c8  674acffd  storeli.w r28, -348(r30)
0008cc  17086e00  and r16, r28, r6
0008d0  13830d05  setlt.u r6, r27, r16
0008d4  3b300300  bneq r6, zero, 12
0008d8  674ccffd  storeli.w r28, -316(r30)
0008dc  db010000  j 12
0008e0  17138e00  or r6, r28, r8
0008e4  674c6ffc  storeli.w r6, -316(r30)
0008e8  63437ffe  loadli.w r6,  -196(r30)
0008ec  630e0ffe  loadli.w r28,  -256(r30)
0008f0  17036e00  and r6, r28, r6
0008f4  938d6d04  setlt.u r27, r27, r6
0008f8  37a00d00  beq r27, zero, 8
0008fc  171e8e00  or r28, r28, r8
000900  e30d7ffe  loadli.w r27,  -200(r30)
000904  93813d04  setlt.u r3, r27, r3
000908  bb900100  bneq r3, zero, 36
00090c  9b410b01  srli r3, r22, 16
000910  9b811100  andi r3, r3, 1
000914  8b113b10  add.s r3, r22, r3
000918  634b6ffe  loadli.w r22,  -204(r30)
00091c  8b916111  add.s r3, r3, r22
000920  2b0bffff  lui r22, 1048560
000924  97816101  and r3, r3, r22
000928  e7003ffe  storeli.w r3, -248(r30)
00092c  e3017ffe  loadli.w r3,  -200(r30)
000930  9381a105  setlt.u r3, r3, r26
000934  bb900100  bneq r3, zero, 36
000938  9b410a01  srli r3, r20, 16
00093c  9b811100  andi r3, r3, 1
000940  8b113a10  add.s r3, r20, r3
000944  634a6ffe  loadli.w r20,  -204(r30)
000948  8b914111  add.s r3, r3, r20
00094c  2b0affff  lui r20, 1048560
000950  97814101  and r3, r3, r20
000954  67013ffe  storeli.w r3, -240(r30)
000958  e3017ffe  loadli.w r3,  -200(r30)
00095c  634d5ffd  loadli.w r26,  -340(r30)
000960  93819105  setlt.u r3, r3, r25
000964  bb900100  bneq r3, zero, 36
000968  9bc10901  srli r3, r19, 16
00096c  9b811100  andi r3, r3, 1
000970  8b913910  add.s r3, r19, r3
000974  e3496ffe  loadli.w r19,  -204(r30)
000978  8b913111  add.s r3, r3, r19
00097c  ab09ffff  lui r19, 1048560
000980  97813101  and r3, r3, r19
000984  e7013ffe  storeli.w r3, -232(r30)
000988  e3017ffe  loadli.w r3,  -200(r30)
00098c  e30c6ffd  loadli.w r25,  -336(r30)
000990  93818105  setlt.u r3, r3, r24
000994  2b0cffff  lui r24, 1048560
000998  bb800100  bneq r3, zero, 32
00099c  9b410901  srli r3, r18, 16
0009a0  9b811100  andi r3, r3, 1
0009a4  8b113910  add.s r3, r18, r3
0009a8  63496ffe  loadli.w r18,  -204(r30)
0009ac  8b912111  add.s r3, r3, r18
0009b0  97818101  and r3, r3, r24
0009b4  67023ffe  storeli.w r3, -224(r30)
0009b8  e3017ffe  loadli.w r3,  -200(r30)
0009bc  e3091ffe  loadli.w r19,  -248(r30)
0009c0  93817105  setlt.u r3, r3, r23
0009c4  e34b6ffe  loadli.w r23,  -204(r30)
0009c8  3bf00100  bneq r3, zero, 28
0009cc  9b410701  srli r3, r14, 16
0009d0  9b811100  andi r3, r3, 1
0009d4  8b113710  add.s r3, r14, r3
0009d8  8b917111  add.s r3, r3, r23
0009dc  97818101  and r3, r3, r24
0009e0  e7423ffe  storeli.w r3, -212(r30)
0009e4  e3017ffe  loadli.w r3,  -200(r30)
0009e8  63092ffe  loadli.w r18,  -240(r30)
0009ec  93815104  setlt.u r3, r3, r5
0009f0  3be00100  bneq r3, zero, 24
0009f4  9b410601  srli r3, r12, 16
0009f8  9b811100  andi r3, r3, 1
0009fc  8b113610  add.s r3, r12, r3
000a00  8b917111  add.s r3, r3, r23
000a04  178d8101  and r26, r3, r24
000a08  e3017ffe  loadli.w r3,  -200(r30)
000a0c  63073ffe  loadli.w r14,  -232(r30)
000a10  9f820400  addli r5, r9, 0
000a14  93814104  setlt.u r3, r3, r4
000a18  3be00100  bneq r3, zero, 24
000a1c  9bc10501  srli r3, r11, 16
000a20  9b811100  andi r3, r3, 1
000a24  8b913510  add.s r3, r11, r3
000a28  8b917111  add.s r3, r3, r23
000a2c  978c8101  and r25, r3, r24
000a30  e3017ffe  loadli.w r3,  -200(r30)
000a34  63025ffd  loadli.w r4,  -344(r30)
000a38  e3446ffd  loadli.w r9,  -332(r30)
000a3c  63064ffe  loadli.w r12,  -224(r30)
000a40  13812104  setlt.u r2, r3, r2
000a44  3b700100  bneq r2, zero, 28
000a48  e3412ffd  loadli.w r3,  -364(r30)
000a4c  1bc10101  srli r2, r3, 16
000a50  1b011100  andi r2, r2, 1
000a54  0b912110  add.s r2, r3, r2
000a58  0b117111  add.s r2, r2, r23
000a5c  97048101  and r9, r2, r24
000a60  63017ffe  loadli.w r2,  -200(r30)
000a64  63047ffd  loadli.w r8,  -328(r30)
000a68  e3455ffe  loadli.w r11,  -212(r30)
000a6c  9f810300  addli r3, r7, 0
000a70  93001104  setlt.u r1, r2, r1
000a74  3bf00000  bneq r1, zero, 28
000a78  e3033ffd  loadli.w r7,  -360(r30)
000a7c  9bc00301  srli r1, r7, 16
000a80  9b801000  andi r1, r1, 1
000a84  8b901310  add.s r1, r7, r1
000a88  8b907011  add.s r1, r1, r23
000a8c  17848001  and r8, r1, r24
000a90  93005105  setlt.u r1, r2, r21
000a94  e3437ffd  loadli.w r7,  -324(r30)
000a98  3bf00000  bneq r1, zero, 28
000a9c  e303dffd  loadli.w r7,  -280(r30)
000aa0  9bc00301  srli r1, r7, 16
000aa4  9b801000  andi r1, r1, 1
000aa8  8b901310  add.s r1, r7, r1
000aac  8b907011  add.s r1, r1, r23
000ab0  97838001  and r7, r1, r24
000ab4  93001105  setlt.u r1, r2, r17
000ab8  e3088ffd  loadli.w r17,  -320(r30)
000abc  3bf00000  bneq r1, zero, 28
000ac0  e3483ffd  loadli.w r17,  -356(r30)
000ac4  9bc00801  srli r1, r17, 16
000ac8  9b801000  andi r1, r1, 1
000acc  8b901810  add.s r1, r17, r1
000ad0  8b907011  add.s r1, r1, r23
000ad4  97888001  and r17, r1, r24
000ad8  9300f104  setlt.u r1, r2, r15
000adc  3bf00000  bneq r1, zero, 28
000ae0  e302effd  loadli.w r5,  -272(r30)
000ae4  9bc00201  srli r1, r5, 16
000ae8  9b801000  andi r1, r1, 1
000aec  8b901210  add.s r1, r5, r1
000af0  8b907011  add.s r1, r1, r23
000af4  97828001  and r5, r1, r24
000af8  9300a104  setlt.u r1, r2, r10
000afc  e30d2ffd  loadli.w r27,  -368(r30)
000b00  e3478ffd  loadli.w r15,  -316(r30)
000b04  3bf00000  bneq r1, zero, 28
000b08  63024ffd  loadli.w r4,  -352(r30)
000b0c  9b400201  srli r1, r4, 16
000b10  9b801000  andi r1, r1, 1
000b14  8b101210  add.s r1, r4, r1
000b18  8b907011  add.s r1, r1, r23
000b1c  17828001  and r4, r1, r24
000b20  9300d104  setlt.u r1, r2, r13
000b24  3bf00000  bneq r1, zero, 28
000b28  e341fffd  loadli.w r3,  -260(r30)
000b2c  9bc00101  srli r1, r3, 16
000b30  9b801000  andi r1, r1, 1
000b34  8b901110  add.s r1, r3, r1
000b38  8b907011  add.s r1, r1, r23
000b3c  97818001  and r3, r1, r24
000b40  93000105  setlt.u r1, r2, r16
000b44  ab064000  lui r13, 1024
000b48  3bf00000  bneq r1, zero, 28
000b4c  63454ffd  loadli.w r10,  -348(r30)
000b50  9b400501  srli r1, r10, 16
000b54  9b801000  andi r1, r1, 1
000b58  8b101510  add.s r1, r10, r1
000b5c  8b907011  add.s r1, r1, r23
000b60  97878001  and r15, r1, r24
000b64  93006104  setlt.u r1, r2, r6
000b68  2b05807f  lui r10, 522240
000b6c  3bf00000  bneq r1, zero, 28
000b70  63010ffe  loadli.w r2,  -256(r30)
000b74  9b400101  srli r1, r2, 16
000b78  9b801000  andi r1, r1, 1
000b7c  8b101110  add.s r1, r2, r1
000b80  8b907011  add.s r1, r1, r23
000b84  178e8001  and r28, r1, r24
000b88  63417ffe  loadli.w r2,  -196(r30)
000b8c  97802900  and r1, r19, r2
000b90  93001504  setlt.u r1, r10, r1
000b94  3be00000  bneq r1, zero, 24
000b98  9bc00901  srli r1, r19, 16
000b9c  9b801000  andi r1, r1, 1
000ba0  8b901910  add.s r1, r19, r1
000ba4  0b9b7011  add.s r22, r1, r23
000ba8  5b010000  j 8
000bac  179bd900  or r22, r19, r13
000bb0  97002900  and r1, r18, r2
000bb4  93001504  setlt.u r1, r10, r1
000bb8  3be00000  bneq r1, zero, 24
000bbc  9b400901  srli r1, r18, 16
000bc0  9b801000  andi r1, r1, 1
000bc4  8b101910  add.s r1, r18, r1
000bc8  0b9a7011  add.s r20, r1, r23
000bcc  5b010000  j 8
000bd0  171ad900  or r20, r18, r13
000bd4  97002700  and r1, r14, r2
000bd8  93001504  setlt.u r1, r10, r1
000bdc  3be00000  bneq r1, zero, 24
000be0  9b400701  srli r1, r14, 16
000be4  9b801000  andi r1, r1, 1
000be8  8b101710  add.s r1, r14, r1
000bec  8b997011  add.s r19, r1, r23
000bf0  5b010000  j 8
000bf4  9719d700  or r19, r14, r13
000bf8  97002600  and r1, r12, r2
000bfc  93001504  setlt.u r1, r10, r1
000c00  3be00000  bneq r1, zero, 24
000c04  9b400601  srli r1, r12, 16
000c08  9b801000  andi r1, r1, 1
000c0c  8b101610  add.s r1, r12, r1
000c10  0b997011  add.s r18, r1, r23
000c14  5b010000  j 8
000c18  1719d600  or r18, r12, r13
000c1c  97802500  and r1, r11, r2
000c20  93001504  setlt.u r1, r10, r1
000c24  3be00000  bneq r1, zero, 24
000c28  9bc00501  srli r1, r11, 16
000c2c  9b801000  andi r1, r1, 1
000c30  8b901510  add.s r1, r11, r1
000c34  0b977011  add.s r14, r1, r23
000c38  5b010000  j 8
000c3c  1797d500  or r14, r11, r13
000c40  97002d00  and r1, r26, r2
000c44  93001504  setlt.u r1, r10, r1
000c48  3be00000  bneq r1, zero, 24
000c4c  9b400d01  srli r1, r26, 16
000c50  9b801000  andi r1, r1, 1
000c54  8b101d10  add.s r1, r26, r1
000c58  0b967011  add.s r12, r1, r23
000c5c  5b010000  j 8
000c60  1716dd00  or r12, r26, r13
000c64  97802c00  and r1, r25, r2
000c68  93001504  setlt.u r1, r10, r1
000c6c  3be00000  bneq r1, zero, 24
000c70  9bc00c01  srli r1, r25, 16
000c74  9b801000  andi r1, r1, 1
000c78  8b901c10  add.s r1, r25, r1
000c7c  8b957011  add.s r11, r1, r23
000c80  5b010000  j 8
000c84  9795dc00  or r11, r25, r13
000c88  97802400  and r1, r9, r2
000c8c  93001504  setlt.u r1, r10, r1
000c90  3be00000  bneq r1, zero, 24
000c94  9bc00401  srli r1, r9, 16
000c98  9b801000  andi r1, r1, 1
000c9c  8b901410  add.s r1, r9, r1
000ca0  8b947011  add.s r9, r1, r23
000ca4  5b010000  j 8
000ca8  9794d400  or r9, r9, r13
000cac  97002400  and r1, r8, r2
000cb0  93001504  setlt.u r1, r10, r1
000cb4  3be00000  bneq r1, zero, 24
000cb8  9b400401  srli r1, r8, 16
000cbc  9b801000  andi r1, r1, 1
000cc0  8b101410  add.s r1, r8, r1
000cc4  0b947011  add.s r8, r1, r23
000cc8  5b010000  j 8
000ccc  1714d400  or r8, r8, r13
000cd0  97802300  and r1, r7, r2
000cd4  93001504  setlt.u r1, r10, r1
000cd8  3be00000  bneq r1, zero, 24
000cdc  9bc00301  srli r1, r7, 16
000ce0  9b801000  andi r1, r1, 1
000ce4  8b901310  add.s r1, r7, r1
000ce8  8b937011  add.s r7, r1, r23
000cec  5b010000  j 8
000cf0  9793d300  or r7, r7, r13
000cf4  97802800  and r1, r17, r2
000cf8  93001504  setlt.u r1, r10, r1
000cfc  3be00000  bneq r1, zero, 24
000d00  9bc00801  srli r1, r17, 16
000d04  9b801000  andi r1, r1, 1
000d08  8b901810  add.s r1, r17, r1
000d0c  0b937011  add.s r6, r1, r23
000d10  5b010000  j 8
000d14  1793d800  or r6, r17, r13
000d18  e3407ffe  loadli.w r1,  -196(r30)
000d1c  97801200  and r1, r5, r1
000d20  93001504  setlt.u r1, r10, r1
000d24  3be00000  bneq r1, zero, 24
000d28  9bc00201  srli r1, r5, 16
000d2c  9b801000  andi r1, r1, 1
000d30  8b901210  add.s r1, r5, r1
000d34  8b927011  add.s r5, r1, r23
000d38  5b010000  j 8
000d3c  9792d200  or r5, r5, r13
000d40  e3407ffe  loadli.w r1,  -196(r30)
000d44  97001200  and r1, r4, r1
000d48  93001504  setlt.u r1, r10, r1
000d4c  3be00000  bneq r1, zero, 24
000d50  9b400201  srli r1, r4, 16
000d54  9b801000  andi r1, r1, 1
000d58  8b101210  add.s r1, r4, r1
000d5c  0b927011  add.s r4, r1, r23
000d60  5b010000  j 8
000d64  1712d200  or r4, r4, r13
000d68  e3407ffe  loadli.w r1,  -196(r30)
000d6c  97801100  and r1, r3, r1
000d70  93001504  setlt.u r1, r10, r1
000d74  3be00000  bneq r1, zero, 24
000d78  9bc00101  srli r1, r3, 16
000d7c  9b801000  andi r1, r1, 1
000d80  8b901110  add.s r1, r3, r1
000d84  8b917011  add.s r3, r1, r23
000d88  5b010000  j 8
000d8c  9791d100  or r3, r3, r13
000d90  e3407ffe  loadli.w r1,  -196(r30)
000d94  97801700  and r1, r15, r1
000d98  93001504  setlt.u r1, r10, r1
000d9c  3be00000  bneq r1, zero, 24
000da0  9bc00701  srli r1, r15, 16
000da4  9b801000  andi r1, r1, 1
000da8  8b901710  add.s r1, r15, r1
000dac  0b917011  add.s r2, r1, r23
000db0  5b010000  j 8
000db4  1791d700  or r2, r15, r13
000db8  e3407ffe  loadli.w r1,  -196(r30)
000dbc  97001e00  and r1, r28, r1
000dc0  93001504  setlt.u r1, r10, r1
000dc4  3be00000  bneq r1, zero, 24
000dc8  9b400e01  srli r1, r28, 16
000dcc  9b801000  andi r1, r1, 1
000dd0  8b101e10  add.s r1, r28, r1
000dd4  8b907011  add.s r1, r1, r23
000dd8  5b010000  j 8
000ddc  9710de00  or r1, r28, r13
000de0  970a8b01  and r21, r22, r24
000de4  970c8a01  and r25, r20, r24
000de8  630ecffd  loadli.w r28,  -288(r30)
000dec  13e55c05  setlt.f r10, r25, r21
000df0  9f860a00  addli r13, r21, 0
000df4  3b200500  bneq r10, zero, 8
000df8  9f860c00  addli r13, r25, 0
000dfc  1bb59a00  slli r10, r21, 9
000e00  9bb79c00  slli r15, r25, 9
000e04  1b487b01  srli r16, r22, 23
000e08  9b487a01  srli r17, r20, 23
000e0c  13050500  seteq r10, r10, zero
000e10  93870700  seteq r15, r15, zero
000e14  1b08f80f  andi r16, r16, 255
000e18  9b88f80f  andi r17, r17, 255
000e1c  1b78f80f  setlti r16, r16, 255
000e20  9bf8f80f  setlti r17, r17, 255
000e24  1715a800  or r10, r16, r10
000e28  9797f800  or r15, r17, r15
000e2c  1705f500  and r10, r10, r15
000e30  37430512  beq r10, zero, 9424
000e34  9f870a00  addli r15, r21, 0
000e38  3bd30a12  bneq r21, zero, 9428
000e3c  1f850c00  addli r10, r25, 0
000e40  37a00c00  beq r25, zero, 8
000e44  1f850700  addli r10, r15, 0
000e48  9367d006  setle.f r15, zero, r13
000e4c  13e80606  setle.f r16, r13, zero
000e50  9707f800  and r15, r16, r15
000e54  3ba00700  bneq r15, zero, 8
000e58  1f850600  addli r10, r13, 0
000e5c  178a8901  and r20, r19, r24
000e60  9f070500  addli r15, r10, 0
000e64  9366aa04  setlt.f r13, r20, r10
000e68  3ba00600  bneq r13, zero, 8
000e6c  9f070a00  addli r15, r20, 0
000e70  9b369a00  slli r13, r20, 9
000e74  1b389500  slli r16, r10, 9
000e78  9bc87901  srli r17, r19, 23
000e7c  9b497501  srli r19, r10, 23
000e80  93860600  seteq r13, r13, zero
000e84  13080800  seteq r16, r16, zero
000e88  9b88f80f  andi r17, r17, 255
000e8c  9b89f90f  andi r19, r19, 255
000e90  9bf8f80f  setlti r17, r17, 255
000e94  9bf9f90f  setlti r19, r19, 255
000e98  9796d800  or r13, r17, r13
000e9c  17980901  or r16, r19, r16
000ea0  9706d800  and r13, r16, r13
000ea4  b7e10612  beq r13, zero, 9336
000ea8  bb710512  bneq r10, zero, 9340
000eac  9f060a00  addli r13, r20, 0
000eb0  37200a00  beq r20, zero, 8
000eb4  9f060500  addli r13, r10, 0
000eb8  1365f006  setle.f r10, zero, r15
000ebc  13e80706  setle.f r16, r15, zero
000ec0  1705a800  and r10, r16, r10
000ec4  3b200500  bneq r10, zero, 8
000ec8  9f860700  addli r13, r15, 0
000ecc  97098901  and r19, r18, r24
000ed0  9f870600  addli r15, r13, 0
000ed4  13e5d904  setlt.f r10, r19, r13
000ed8  3b200500  bneq r10, zero, 8
000edc  9f870900  addli r15, r19, 0
000ee0  1bb59900  slli r10, r19, 9
000ee4  1bb89600  slli r16, r13, 9
000ee8  9b487901  srli r17, r18, 23
000eec  1bc97601  srli r18, r13, 23
000ef0  13050500  seteq r10, r10, zero
000ef4  13080800  seteq r16, r16, zero
000ef8  9b88f80f  andi r17, r17, 255
000efc  1b09f90f  andi r18, r18, 255
000f00  9bf8f80f  setlti r17, r17, 255
000f04  1b79f90f  setlti r18, r18, 255
000f08  1795a800  or r10, r17, r10
000f0c  17180901  or r16, r18, r16
000f10  1705a800  and r10, r16, r10
000f14  b7000512  beq r10, zero, 9248
000f18  bb900612  bneq r13, zero, 9252
000f1c  1f850900  addli r10, r19, 0
000f20  37a00900  beq r19, zero, 8
000f24  1f850600  addli r10, r13, 0
000f28  9366f006  setle.f r13, zero, r15
000f2c  13e80706  setle.f r16, r15, zero
000f30  9706d800  and r13, r16, r13
000f34  3ba00600  bneq r13, zero, 8
000f38  1f850700  addli r10, r15, 0
000f3c  17098701  and r18, r14, r24
000f40  9f070500  addli r15, r10, 0
000f44  9366a904  setlt.f r13, r18, r10
000f48  3ba00600  bneq r13, zero, 8
000f4c  9f070900  addli r15, r18, 0
000f50  9b369900  slli r13, r18, 9
000f54  1b389500  slli r16, r10, 9
000f58  1b477701  srli r14, r14, 23
000f5c  9b487501  srli r17, r10, 23
000f60  93860600  seteq r13, r13, zero
000f64  13080800  seteq r16, r16, zero
000f68  1b07f70f  andi r14, r14, 255
000f6c  9b88f80f  andi r17, r17, 255
000f70  1b77f70f  setlti r14, r14, 255
000f74  9bf8f80f  setlti r17, r17, 255
000f78  9716d700  or r13, r14, r13
000f7c  17970801  or r14, r17, r16
000f80  9706d700  and r13, r14, r13
000f84  37af0610  beq r13, zero, 9160
000f88  3b3f0510  bneq r10, zero, 9164
000f8c  9f060900  addli r13, r18, 0
000f90  37200900  beq r18, zero, 8
000f94  9f060500  addli r13, r10, 0
000f98  1365f006  setle.f r10, zero, r15
000f9c  13e70706  setle.f r14, r15, zero
000fa0  1705a700  and r10, r14, r10
000fa4  3b200500  bneq r10, zero, 8
000fa8  9f860700  addli r13, r15, 0
000fac  97088601  and r17, r12, r24
000fb0  1f870600  addli r14, r13, 0
000fb4  13e5d804  setlt.f r10, r17, r13
000fb8  3b200500  bneq r10, zero, 8
000fbc  1f870800  addli r14, r17, 0
000fc0  1bb59800  slli r10, r17, 9
000fc4  9bb79600  slli r15, r13, 9
000fc8  1b467601  srli r12, r12, 23
000fcc  1bc87601  srli r16, r13, 23
000fd0  13050500  seteq r10, r10, zero
000fd4  93870700  seteq r15, r15, zero
000fd8  1b06f60f  andi r12, r12, 255
000fdc  1b08f80f  andi r16, r16, 255
000fe0  1b76f60f  setlti r12, r12, 255
000fe4  1b78f80f  setlti r16, r16, 255
000fe8  1715a600  or r10, r12, r10
000fec  1716f800  or r12, r16, r15
000ff0  1705a600  and r10, r12, r10
000ff4  b74d0510  beq r10, zero, 9072
000ff8  bbdd0610  bneq r13, zero, 9076
000ffc  1f850800  addli r10, r17, 0
001000  37a00800  beq r17, zero, 8
001004  1f850600  addli r10, r13, 0
001008  1366e006  setle.f r12, zero, r14
00100c  93660706  setle.f r13, r14, zero
001010  1786c600  and r12, r13, r12
001014  3b200600  bneq r12, zero, 8
001018  1f050700  addli r10, r14, 0
00101c  17888501  and r16, r11, r24
001020  1f060500  addli r12, r10, 0
001024  9366a804  setlt.f r13, r16, r10
001028  3ba00600  bneq r13, zero, 8
00102c  1f060800  addli r12, r16, 0
001030  9b369800  slli r13, r16, 9
001034  1b379500  slli r14, r10, 9
001038  9bc57501  srli r11, r11, 23
00103c  9b477501  srli r15, r10, 23
001040  93860600  seteq r13, r13, zero
001044  13070700  seteq r14, r14, zero
001048  9b85f50f  andi r11, r11, 255
00104c  9b87f70f  andi r15, r15, 255
001050  9bf5f50f  setlti r11, r11, 255
001054  9bf7f70f  setlti r15, r15, 255
001058  9795d500  or r11, r11, r13
00105c  9796e700  or r13, r15, r14
001060  9785b600  and r11, r13, r11
001064  37ec0510  beq r11, zero, 8984
001068  3b7c0510  bneq r10, zero, 8988
00106c  9f050800  addli r11, r16, 0
001070  37200800  beq r16, zero, 8
001074  9f050500  addli r11, r10, 0
001078  1365c006  setle.f r10, zero, r12
00107c  93660606  setle.f r13, r12, zero
001080  1785a600  and r10, r13, r10
001084  3b200500  bneq r10, zero, 8
001088  9f050600  addli r11, r12, 0
00108c  97878401  and r15, r9, r24
001090  1f850500  addli r10, r11, 0
001094  13e6b704  setlt.f r12, r15, r11
001098  3b200600  bneq r12, zero, 8
00109c  1f850700  addli r10, r15, 0
0010a0  1bb69700  slli r12, r15, 9
0010a4  9bb69500  slli r13, r11, 9
0010a8  9bc47401  srli r9, r9, 23
0010ac  1bc77501  srli r14, r11, 23
0010b0  13060600  seteq r12, r12, zero
0010b4  93860600  seteq r13, r13, zero
0010b8  9b84f40f  andi r9, r9, 255
0010bc  1b07f70f  andi r14, r14, 255
0010c0  9bf4f40f  setlti r9, r9, 255
0010c4  1b77f70f  setlti r14, r14, 255
0010c8  9794c400  or r9, r9, r12
0010cc  1716d700  or r12, r14, r13
0010d0  97049600  and r9, r12, r9
0010d4  378b0410  beq r9, zero, 8896
0010d8  3b9b0510  bneq r11, zero, 8900
0010dc  9f840700  addli r9, r15, 0
0010e0  37a00700  beq r15, zero, 8
0010e4  9f840500  addli r9, r11, 0
0010e8  9365a006  setle.f r11, zero, r10
0010ec  13660506  setle.f r12, r10, zero
0010f0  9705b600  and r11, r12, r11
0010f4  3ba00500  bneq r11, zero, 8
0010f8  9f040500  addli r9, r10, 0
0010fc  17078401  and r14, r8, r24
001100  1f850400  addli r10, r9, 0
001104  93659704  setlt.f r11, r14, r9
001108  3ba00500  bneq r11, zero, 8
00110c  1f050700  addli r10, r14, 0
001110  9b359700  slli r11, r14, 9
001114  1bb69400  slli r12, r9, 9
001118  1b447401  srli r8, r8, 23
00111c  9bc67401  srli r13, r9, 23
001120  93850500  seteq r11, r11, zero
001124  13060600  seteq r12, r12, zero
001128  1b04f40f  andi r8, r8, 255
00112c  9b86f60f  andi r13, r13, 255
001130  1b74f40f  setlti r8, r8, 255
001134  9bf6f60f  setlti r13, r13, 255
001138  1714b400  or r8, r8, r11
00113c  9795c600  or r11, r13, r12
001140  17848500  and r8, r11, r8
001144  b7290410  beq r8, zero, 8808
001148  bbb90410  bneq r9, zero, 8812
00114c  1f040700  addli r8, r14, 0
001150  37200700  beq r14, zero, 8
001154  1f840400  addli r8, r9, 0
001158  9364a006  setle.f r9, zero, r10
00115c  93650506  setle.f r11, r10, zero
001160  97849500  and r9, r11, r9
001164  3ba00400  bneq r9, zero, 8
001168  1f040500  addli r8, r10, 0
00116c  97868301  and r13, r7, r24
001170  9f040400  addli r9, r8, 0
001174  13e58604  setlt.f r10, r13, r8
001178  3b200500  bneq r10, zero, 8
00117c  9f840600  addli r9, r13, 0
001180  1bb59600  slli r10, r13, 9
001184  9b359400  slli r11, r8, 9
001188  9bc37301  srli r7, r7, 23
00118c  1b467401  srli r12, r8, 23
001190  13050500  seteq r10, r10, zero
001194  93850500  seteq r11, r11, zero
001198  9b83f30f  andi r7, r7, 255
00119c  1b06f60f  andi r12, r12, 255
0011a0  9bf3f30f  setlti r7, r7, 255
0011a4  1b76f60f  setlti r12, r12, 255
0011a8  9793a300  or r7, r7, r10
0011ac  1715b600  or r10, r12, r11
0011b0  97037500  and r7, r10, r7
0011b4  37c80310  beq r7, zero, 8720
0011b8  3b580410  bneq r8, zero, 8724
0011bc  9f830600  addli r7, r13, 0
0011c0  37a00600  beq r13, zero, 8
0011c4  9f030400  addli r7, r8, 0
0011c8  13649006  setle.f r8, zero, r9
0011cc  13e50406  setle.f r10, r9, zero
0011d0  17048500  and r8, r10, r8
0011d4  3b200400  bneq r8, zero, 8
0011d8  9f830400  addli r7, r9, 0
0011dc  17068301  and r12, r6, r24
0011e0  1f840300  addli r8, r7, 0
0011e4  93647604  setlt.f r9, r12, r7
0011e8  3ba00400  bneq r9, zero, 8
0011ec  1f040600  addli r8, r12, 0
0011f0  9b349600  slli r9, r12, 9
0011f4  1bb59300  slli r10, r7, 9
0011f8  1b437301  srli r6, r6, 23
0011fc  9bc57301  srli r11, r7, 23
001200  93840400  seteq r9, r9, zero
001204  13050500  seteq r10, r10, zero
001208  1b03f30f  andi r6, r6, 255
00120c  9b85f50f  andi r11, r11, 255
001210  1b73f30f  setlti r6, r6, 255
001214  9bf5f50f  setlti r11, r11, 255
001218  17139300  or r6, r6, r9
00121c  9794a500  or r9, r11, r10
001220  17836400  and r6, r9, r6
001224  b7660310  beq r6, zero, 8632
001228  bbf60310  bneq r7, zero, 8636
00122c  1f030600  addli r6, r12, 0
001230  37200600  beq r12, zero, 8
001234  1f830300  addli r6, r7, 0
001238  93638006  setle.f r7, zero, r8
00123c  93640406  setle.f r9, r8, zero
001240  97837400  and r7, r9, r7
001244  3ba00300  bneq r7, zero, 8
001248  1f030400  addli r6, r8, 0
00124c  178b8201  and r22, r5, r24
001250  9f030300  addli r7, r6, 0
001254  13646b04  setlt.f r8, r22, r6
001258  3b200400  bneq r8, zero, 8
00125c  9f030b00  addli r7, r22, 0
001260  1b349b00  slli r8, r22, 9
001264  9b349300  slli r9, r6, 9
001268  9bc27201  srli r5, r5, 23
00126c  1b457301  srli r10, r6, 23
001270  13040400  seteq r8, r8, zero
001274  93840400  seteq r9, r9, zero
001278  9b82f20f  andi r5, r5, 255
00127c  1b05f50f  andi r10, r10, 255
001280  9bf2f20f  setlti r5, r5, 255
001284  1b75f50f  setlti r10, r10, 255
001288  97928200  or r5, r5, r8
00128c  17149500  or r8, r10, r9
001290  97025400  and r5, r8, r5
001294  b7850210  beq r5, zero, 8544
001298  bb150310  bneq r6, zero, 8548
00129c  9f020b00  addli r5, r22, 0
0012a0  37200b00  beq r22, zero, 8
0012a4  9f020300  addli r5, r6, 0
0012a8  13637006  setle.f r6, zero, r7
0012ac  13e40306  setle.f r8, r7, zero
0012b0  17036400  and r6, r8, r6
0012b4  3b200300  bneq r6, zero, 8
0012b8  9f820300  addli r5, r7, 0
0012bc  17058201  and r10, r4, r24
0012c0  1f830200  addli r6, r5, 0
0012c4  93635504  setlt.f r7, r10, r5
0012c8  3ba00300  bneq r7, zero, 8
0012cc  1f030500  addli r6, r10, 0
0012d0  9b339500  slli r7, r10, 9
0012d4  1bb49200  slli r8, r5, 9
0012d8  1b427201  srli r4, r4, 23
0012dc  9bc47201  srli r9, r5, 23
0012e0  93830300  seteq r7, r7, zero
0012e4  13040400  seteq r8, r8, zero
0012e8  1b02f20f  andi r4, r4, 255
0012ec  9b84f40f  andi r9, r9, 255
0012f0  1b72f20f  setlti r4, r4, 255
0012f4  9bf4f40f  setlti r9, r9, 255
0012f8  17127200  or r4, r4, r7
0012fc  97938400  or r7, r9, r8
001300  17824300  and r4, r7, r4
001304  37240210  beq r4, zero, 8456
001308  3bb40210  bneq r5, zero, 8460
00130c  1f020500  addli r4, r10, 0
001310  37200500  beq r10, zero, 8
001314  1f820200  addli r4, r5, 0
001318  93626006  setle.f r5, zero, r6
00131c  93630306  setle.f r7, r6, zero
001320  97825300  and r5, r7, r5
001324  3ba00200  bneq r5, zero, 8
001328  1f020300  addli r4, r6, 0
00132c  178d8101  and r26, r3, r24
001330  9f020200  addli r5, r4, 0
001334  13634d04  setlt.f r6, r26, r4
001338  3b200300  bneq r6, zero, 8
00133c  9f020d00  addli r5, r26, 0
001340  1b339d00  slli r6, r26, 9
001344  9b339200  slli r7, r4, 9
001348  9bc17101  srli r3, r3, 23
00134c  1b447201  srli r8, r4, 23
001350  13030300  seteq r6, r6, zero
001354  93830300  seteq r7, r7, zero
001358  9b81f10f  andi r3, r3, 255
00135c  1b04f40f  andi r8, r8, 255
001360  9bf1f10f  setlti r3, r3, 255
001364  1b74f40f  setlti r8, r8, 255
001368  97916100  or r3, r3, r6
00136c  17137400  or r6, r8, r7
001370  97013300  and r3, r6, r3
001374  b7c20110  beq r3, zero, 8368
001378  bb520210  bneq r4, zero, 8372
00137c  9f010d00  addli r3, r26, 0
001380  37200d00  beq r26, zero, 8
001384  9f010200  addli r3, r4, 0
001388  13625006  setle.f r4, zero, r5
00138c  13e30206  setle.f r6, r5, zero
001390  17024300  and r4, r6, r4
001394  3b200200  bneq r4, zero, 8
001398  9f810200  addli r3, r5, 0
00139c  970b8101  and r23, r2, r24
0013a0  1f820100  addli r4, r3, 0
0013a4  93e23b04  setlt.f r5, r23, r3
0013a8  3ba00200  bneq r5, zero, 8
0013ac  1f820b00  addli r4, r23, 0
0013b0  9bb29b00  slli r5, r23, 9
0013b4  1bb39100  slli r6, r3, 9
0013b8  1b417101  srli r2, r2, 23
0013bc  9bc37101  srli r7, r3, 23
0013c0  93820200  seteq r5, r5, zero
0013c4  13030300  seteq r6, r6, zero
0013c8  1b01f10f  andi r2, r2, 255
0013cc  9b83f30f  andi r7, r7, 255
0013d0  1b71f10f  setlti r2, r2, 255
0013d4  9bf3f30f  setlti r7, r7, 255
0013d8  17115100  or r2, r2, r5
0013dc  97926300  or r5, r7, r6
0013e0  17812200  and r2, r5, r2
0013e4  37610110  beq r2, zero, 8280
0013e8  3bf10110  bneq r3, zero, 8284
0013ec  1f810b00  addli r2, r23, 0
0013f0  37a00b00  beq r23, zero, 8
0013f4  1f810100  addli r2, r3, 0
0013f8  93614006  setle.f r3, zero, r4
0013fc  93620206  setle.f r5, r4, zero
001400  97813200  and r3, r5, r3
001404  3ba00100  bneq r3, zero, 8
001408  1f010200  addli r2, r4, 0
00140c  178c8001  and r24, r1, r24
001410  9f010100  addli r3, r2, 0
001414  13622c04  setlt.f r4, r24, r2
001418  3b200200  bneq r4, zero, 8
00141c  9f010c00  addli r3, r24, 0
001420  1b329c00  slli r4, r24, 9
001424  9b329100  slli r5, r2, 9
001428  9bc07001  srli r1, r1, 23
00142c  1b437101  srli r6, r2, 23
001430  13020200  seteq r4, r4, zero
001434  93820200  seteq r5, r5, zero
001438  9b80f00f  andi r1, r1, 255
00143c  1b03f30f  andi r6, r6, 255
001440  9bf0f00f  setlti r1, r1, 255
001444  1b73f30f  setlti r6, r6, 255
001448  97904000  or r1, r1, r4
00144c  17125300  or r4, r6, r5
001450  97001200  and r1, r4, r1
001454  37800010  beq r1, zero, 8192
001458  3b100110  bneq r2, zero, 8196
00145c  9f000c00  addli r1, r24, 0
001460  37200c00  beq r24, zero, 8
001464  9f000100  addli r1, r2, 0
001468  13613006  setle.f r2, zero, r3
00146c  13e20106  setle.f r4, r3, zero
001470  17012200  and r2, r4, r2
001474  3b200100  bneq r2, zero, 8
001478  9f800100  addli r1, r3, 0
00147c  1f010004  addli r2, zero, 512
001480  3f202e00  blt.s r28, r2, 8
001484  ab0080ff  lui r1, 1046528
001488  63011ffd  loadli.w r2,  -376(r30)
00148c  73601100  stores.w r1, 0(r2)
001490  00a00300  mfence { lm, sm, gm }
001494  80a10d04  csr_set csr3, r27
001498  00d00100  sync_group
00149c  e340bffd  loadli.w r1,  -292(r30)
0014a0  bbd6000e  bneq r1, zero, 7604
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
0014f4  373e0214  beq r4, zero, 11148
0014f8  3bce0114  bneq r3, zero, 11152
0014fc  37a00000  beq r1, zero, 8
001500  9f800100  addli r1, r3, 0
001504  93612006  setle.f r3, zero, r2
001508  13620106  setle.f r4, r2, zero
00150c  e7020ffd  storeli.w r16, -472(r30)
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
001568  b7bc0114  beq r3, zero, 11052
00156c  bbcc0014  bneq r1, zero, 11056
001570  674c7ffb  storeli.w r23, -572(r30)
001574  37200800  beq r16, zero, 8
001578  1f880000  addli r16, r1, 0
00157c  93602006  setle.f r1, zero, r2
001580  93610106  setle.f r3, r2, zero
001584  9f020d00  addli r5, r26, 0
001588  67018ffd  storeli.w r24, -496(r30)
00158c  6741affc  storeli.w r10, -492(r30)
001590  e701cffc  storeli.w r12, -488(r30)
001594  e741dffc  storeli.w r13, -484(r30)
001598  6702effc  storeli.w r14, -480(r30)
00159c  6742fffc  storeli.w r15, -476(r30)
0015a0  e7421ffd  storeli.w r17, -468(r30)
0015a4  e7093ffd  storeli.w r19, -360(r30)
0015a8  e7494ffd  storeli.w r20, -356(r30)
0015ac  670a9ffd  storeli.w r25, -352(r30)
0015b0  674a5ffd  storeli.w r21, -348(r30)
0015b4  97801100  and r1, r3, r1
0015b8  3ba00000  bneq r1, zero, 8
0015bc  1f080100  addli r16, r2, 0
0015c0  63076ffe  loadli.w r14,  -208(r30)
0015c4  67492ffd  storeli.w r18, -364(r30)
0015c8  9f0a0800  addli r21, r16, 0
0015cc  674d6ffb  storeli.w r22, -556(r30)
0015d0  6f494706  loads.w r18, 100(r14)
0015d4  6f444705  loads.w r8, 84(r14)
0015d8  6f420704  loads.w r4, 64(r14)
0015dc  ef48c700  loads.w r17, 12(r14)
0015e0  ef470701  loads.w r15, 16(r14)
0015e4  6f454701  loads.w r10, 20(r14)
0015e8  ef468701  loads.w r13, 24(r14)
0015ec  ef49c701  loads.w r19, 28(r14)
0015f0  6f410702  loads.w r2, 32(r14)
0015f4  ef434702  loads.w r7, 36(r14)
0015f8  6f438702  loads.w r6, 40(r14)
0015fc  ef41c702  loads.w r3, 44(r14)
001600  ef450703  loads.w r11, 48(r14)
001604  6f464703  loads.w r12, 52(r14)
001608  ef408703  loads.w r1, 56(r14)
00160c  6f4cc703  loads.w r24, 60(r14)
001610  ef4c4704  loads.w r25, 68(r14)
001614  ef4d8704  loads.w r27, 72(r14)
001618  ef440705  loads.w r9, 80(r14)
00161c  ef4bc707  loads.w r23, 124(r14)
001620  6f4a8708  loads.w r20, 136(r14)
001624  6f4ec709  loads.w r28, 156(r14)
001628  e70b2ffb  storeli.w r18, -584(r30)
00162c  6f498706  loads.w r18, 104(r14)
001630  e74a8ffa  storeli.w r8, -596(r30)
001634  6f448705  loads.w r8, 88(r14)
001638  e70a4ffa  storeli.w r4, -600(r30)
00163c  6f42c704  loads.w r4, 76(r14)
001640  13ed0805  setlt.f r26, r17, r16
001644  e70a2ffd  storeli.w r18, -344(r30)
001648  6f49c706  loads.w r18, 108(r14)
00164c  670b8ffa  storeli.w r8, -592(r30)
001650  6f44c705  loads.w r8, 92(r14)
001654  e74b2ffb  storeli.w r18, -580(r30)
001658  6f490707  loads.w r18, 112(r14)
00165c  674b8ffa  storeli.w r8, -588(r30)
001660  6f440706  loads.w r8, 96(r14)
001664  e74a2ffd  storeli.w r18, -340(r30)
001668  6f494707  loads.w r18, 116(r14)
00166c  670c2ffb  storeli.w r18, -576(r30)
001670  6f498707  loads.w r18, 120(r14)
001674  670b2ffd  storeli.w r18, -336(r30)
001678  6f490708  loads.w r18, 128(r14)
00167c  674b2ffd  storeli.w r18, -332(r30)
001680  6f494708  loads.w r18, 132(r14)
001684  e70c2ffb  storeli.w r18, -568(r30)
001688  6f49c708  loads.w r18, 140(r14)
00168c  e70b2ffd  storeli.w r18, -328(r30)
001690  6f490709  loads.w r18, 144(r14)
001694  e74b2ffd  storeli.w r18, -324(r30)
001698  6f494709  loads.w r18, 148(r14)
00169c  670d2ffb  storeli.w r18, -560(r30)
0016a0  6f498709  loads.w r18, 152(r14)
0016a4  670c2ffd  storeli.w r18, -320(r30)
0016a8  6f49070a  loads.w r18, 160(r14)
0016ac  674c2ffd  storeli.w r18, -316(r30)
0016b0  6f49470a  loads.w r18, 164(r14)
0016b4  e70d2ffb  storeli.w r18, -552(r30)
0016b8  6f49870a  loads.w r18, 168(r14)
0016bc  e70e2ffd  storeli.w r18, -280(r30)
0016c0  6f49c70a  loads.w r18, 172(r14)
0016c4  e74d2ffb  storeli.w r18, -548(r30)
0016c8  6f49070b  loads.w r18, 176(r14)
0016cc  670f2ffd  storeli.w r18, -272(r30)
0016d0  6f49470b  loads.w r18, 180(r14)
0016d4  670e2ffb  storeli.w r18, -544(r30)
0016d8  6f49870b  loads.w r18, 184(r14)
0016dc  e74f2ffd  storeli.w r18, -260(r30)
0016e0  6f49c70b  loads.w r18, 188(r14)
0016e4  674e2ffb  storeli.w r18, -540(r30)
0016e8  6f49070c  loads.w r18, 192(r14)
0016ec  67002fff  storeli.w r18, -256(r30)
0016f0  6f49470c  loads.w r18, 196(r14)
0016f4  e70e2ffb  storeli.w r18, -536(r30)
0016f8  6f49870c  loads.w r18, 200(r14)
0016fc  e7002fff  storeli.w r18, -248(r30)
001700  6f49c70c  loads.w r18, 204(r14)
001704  e74e2ffb  storeli.w r18, -532(r30)
001708  6f49070d  loads.w r18, 208(r14)
00170c  67012fff  storeli.w r18, -240(r30)
001710  6f49470d  loads.w r18, 212(r14)
001714  670f2ffb  storeli.w r18, -528(r30)
001718  6f49870d  loads.w r18, 216(r14)
00171c  e7012fff  storeli.w r18, -232(r30)
001720  6f49c70d  loads.w r18, 220(r14)
001724  674f2ffb  storeli.w r18, -524(r30)
001728  6f49070e  loads.w r18, 224(r14)
00172c  67022fff  storeli.w r18, -224(r30)
001730  6f49470e  loads.w r18, 228(r14)
001734  e70f2ffb  storeli.w r18, -520(r30)
001738  6f49870e  loads.w r18, 232(r14)
00173c  e7422fff  storeli.w r18, -212(r30)
001740  6f49c70e  loads.w r18, 236(r14)
001744  e74f2ffb  storeli.w r18, -516(r30)
001748  6f49070f  loads.w r18, 240(r14)
00174c  67002ffd  storeli.w r18, -512(r30)
001750  6f49470f  loads.w r18, 244(r14)
001754  67402ffd  storeli.w r18, -508(r30)
001758  6f49870f  loads.w r18, 248(r14)
00175c  6f47c70f  loads.w r14, 252(r14)
001760  e7002ffd  storeli.w r18, -504(r30)
001764  e740effc  storeli.w r14, -500(r30)
001768  3b200d00  bneq r26, zero, 8
00176c  9f8a0800  addli r21, r17, 0
001770  1bbd9800  slli r26, r17, 9
001774  1b399800  slli r18, r16, 9
001778  1bc77801  srli r14, r17, 23
00177c  1b4b7801  srli r22, r16, 23
001780  130d0d00  seteq r26, r26, zero
001784  13090900  seteq r18, r18, zero
001788  1b07f70f  andi r14, r14, 255
00178c  1b0bfb0f  andi r22, r22, 255
001790  1b77f70f  setlti r14, r14, 255
001794  1b7bfb0f  setlti r22, r22, 255
001798  1717a701  or r14, r14, r26
00179c  17192b01  or r18, r22, r18
0017a0  1707e900  and r14, r18, r14
0017a4  3b200700  bneq r14, zero, 8
0017a8  ab0ac07f  lui r21, 523264
0017ac  1f0d0a00  addli r26, r20, 0
0017b0  e74c5ffa  storeli.w r5, -564(r30)
0017b4  37200800  beq r16, zero, 8
0017b8  1f880a00  addli r16, r21, 0
0017bc  1f0a0400  addli r20, r8, 0
0017c0  37a00800  beq r17, zero, 8
0017c4  9f080800  addli r17, r16, 0
0017c8  13675007  setle.f r14, zero, r21
0017cc  13e80a06  setle.f r16, r21, zero
0017d0  1f040200  addli r8, r4, 0
0017d4  1707e800  and r14, r16, r14
0017d8  3b200700  bneq r14, zero, 8
0017dc  9f880a00  addli r17, r21, 0
0017e0  13e71705  setlt.f r14, r15, r17
0017e4  1f880800  addli r16, r17, 0
0017e8  1f820c00  addli r4, r25, 0
0017ec  3b200700  bneq r14, zero, 8
0017f0  1f880700  addli r16, r15, 0
0017f4  1bb79700  slli r14, r15, 9
0017f8  1bb99800  slli r18, r17, 9
0017fc  9bca7701  srli r21, r15, 23
001800  1bcb7801  srli r22, r17, 23
001804  13070700  seteq r14, r14, zero
001808  13090900  seteq r18, r18, zero
00180c  9b8afa0f  andi r21, r21, 255
001810  1b0bfb0f  andi r22, r22, 255
001814  9bfafa0f  setlti r21, r21, 255
001818  1b7bfb0f  setlti r22, r22, 255
00181c  1797ea00  or r14, r21, r14
001820  17192b01  or r18, r22, r18
001824  1707e900  and r14, r18, r14
001828  37120714  beq r14, zero, 10372
00182c  1f0b0e00  addli r22, r28, 0
001830  3ba20814  bneq r17, zero, 10376
001834  634e5ffb  loadli.w r28,  -596(r30)
001838  37a00700  beq r15, zero, 8
00183c  9f870800  addli r15, r17, 0
001840  13670007  setle.f r14, zero, r16
001844  93680806  setle.f r17, r16, zero
001848  1787e800  and r14, r17, r14
00184c  3b200700  bneq r14, zero, 8
001850  9f070800  addli r15, r16, 0
001854  1367f504  setlt.f r14, r10, r15
001858  1f880700  addli r16, r15, 0
00185c  3b200700  bneq r14, zero, 8
001860  1f080500  addli r16, r10, 0
001864  1b379500  slli r14, r10, 9
001868  9bb89700  slli r17, r15, 9
00186c  1b497501  srli r18, r10, 23
001870  9bca7701  srli r21, r15, 23
001874  13070700  seteq r14, r14, zero
001878  93880800  seteq r17, r17, zero
00187c  1b09f90f  andi r18, r18, 255
001880  9b8afa0f  andi r21, r21, 255
001884  1b79f90f  setlti r18, r18, 255
001888  9bfafa0f  setlti r21, r21, 255
00188c  1717e900  or r14, r18, r14
001890  97981a01  or r17, r21, r17
001894  1787e800  and r14, r17, r14
001898  b7400714  beq r14, zero, 10288
00189c  e30a9ffb  loadli.w r21,  -568(r30)
0018a0  bbd00714  bneq r15, zero, 10292
0018a4  37200500  beq r10, zero, 8
0018a8  1f850700  addli r10, r15, 0
0018ac  13670007  setle.f r14, zero, r16
0018b0  93670806  setle.f r15, r16, zero
0018b4  1787e700  and r14, r15, r14
0018b8  3b200700  bneq r14, zero, 8
0018bc  1f050800  addli r10, r16, 0
0018c0  13e7a604  setlt.f r14, r13, r10
0018c4  9f070500  addli r15, r10, 0
0018c8  3b200700  bneq r14, zero, 8
0018cc  9f870600  addli r15, r13, 0
0018d0  1bb79600  slli r14, r13, 9
0018d4  1b389500  slli r16, r10, 9
0018d8  9bc87601  srli r17, r13, 23
0018dc  1b497501  srli r18, r10, 23
0018e0  e3025ffb  loadli.w r5,  -600(r30)
0018e4  13070700  seteq r14, r14, zero
0018e8  13080800  seteq r16, r16, zero
0018ec  9b88f80f  andi r17, r17, 255
0018f0  1b09f90f  andi r18, r18, 255
0018f4  9bf8f80f  setlti r17, r17, 255
0018f8  1b79f90f  setlti r18, r18, 255
0018fc  1797e800  or r14, r17, r14
001900  17180901  or r16, r18, r16
001904  1707e800  and r14, r16, r14
001908  376f0712  beq r14, zero, 10200
00190c  63098ffb  loadli.w r18,  -576(r30)
001910  3b7f0512  bneq r10, zero, 10204
001914  37a00600  beq r13, zero, 8
001918  9f060500  addli r13, r10, 0
00191c  1365f006  setle.f r10, zero, r15
001920  13e70706  setle.f r14, r15, zero
001924  1705a700  and r10, r14, r10
001928  3b200500  bneq r10, zero, 8
00192c  9f860700  addli r13, r15, 0
001930  13e7d904  setlt.f r14, r19, r13
001934  1f850600  addli r10, r13, 0
001938  3b200700  bneq r14, zero, 8
00193c  1f850900  addli r10, r19, 0
001940  1bb79900  slli r14, r19, 9
001944  9bb79600  slli r15, r13, 9
001948  1bc87901  srli r16, r19, 23
00194c  9bc87601  srli r17, r13, 23
001950  13070700  seteq r14, r14, zero
001954  93870700  seteq r15, r15, zero
001958  1b08f80f  andi r16, r16, 255
00195c  9b88f80f  andi r17, r17, 255
001960  1b78f80f  setlti r16, r16, 255
001964  9bf8f80f  setlti r17, r17, 255
001968  1717e800  or r14, r16, r14
00196c  9797f800  or r15, r17, r15
001970  1787e700  and r14, r15, r14
001974  371e0712  beq r14, zero, 10116
001978  e308affb  loadli.w r17,  -560(r30)
00197c  3bae0612  bneq r13, zero, 10120
001980  37a00900  beq r19, zero, 8
001984  9f890600  addli r19, r13, 0
001988  9366a006  setle.f r13, zero, r10
00198c  13670506  setle.f r14, r10, zero
001990  9706d700  and r13, r14, r13
001994  3ba00600  bneq r13, zero, 8
001998  9f090500  addli r19, r10, 0
00199c  93663105  setlt.f r13, r2, r19
0019a0  1f850900  addli r10, r19, 0
0019a4  3ba00600  bneq r13, zero, 8
0019a8  1f050100  addli r10, r2, 0
0019ac  9b369100  slli r13, r2, 9
0019b0  1bb79900  slli r14, r19, 9
0019b4  9b477101  srli r15, r2, 23
0019b8  1bc87901  srli r16, r19, 23
0019bc  93860600  seteq r13, r13, zero
0019c0  13070700  seteq r14, r14, zero
0019c4  9b87f70f  andi r15, r15, 255
0019c8  1b08f80f  andi r16, r16, 255
0019cc  9bf7f70f  setlti r15, r15, 255
0019d0  1b78f80f  setlti r16, r16, 255
0019d4  9796d700  or r13, r15, r13
0019d8  1717e800  or r14, r16, r14
0019dc  9706d700  and r13, r14, r13
0019e0  b7cc0612  beq r13, zero, 10032
0019e4  bbdc0912  bneq r19, zero, 10036
0019e8  37200100  beq r2, zero, 8
0019ec  1f810900  addli r2, r19, 0
0019f0  9366a006  setle.f r13, zero, r10
0019f4  13670506  setle.f r14, r10, zero
0019f8  9706d700  and r13, r14, r13
0019fc  3ba00600  bneq r13, zero, 8
001a00  1f010500  addli r2, r10, 0
001a04  93e62304  setlt.f r13, r7, r2
001a08  e349bffb  loadli.w r19,  -548(r30)
001a0c  1f050100  addli r10, r2, 0
001a10  3ba00600  bneq r13, zero, 8
001a14  1f850300  addli r10, r7, 0
001a18  9bb69300  slli r13, r7, 9
001a1c  1b379100  slli r14, r2, 9
001a20  9bc77301  srli r15, r7, 23
001a24  1b487101  srli r16, r2, 23
001a28  93860600  seteq r13, r13, zero
001a2c  13070700  seteq r14, r14, zero
001a30  9b87f70f  andi r15, r15, 255
001a34  1b08f80f  andi r16, r16, 255
001a38  9bf7f70f  setlti r15, r15, 255
001a3c  1b78f80f  setlti r16, r16, 255
001a40  9796d700  or r13, r15, r13
001a44  1717e800  or r14, r16, r14
001a48  9706d700  and r13, r14, r13
001a4c  37eb0612  beq r13, zero, 9944
001a50  63487ffb  loadli.w r16,  -580(r30)
001a54  3b7b0112  bneq r2, zero, 9948
001a58  37a00300  beq r7, zero, 8
001a5c  9f030100  addli r7, r2, 0
001a60  1361a006  setle.f r2, zero, r10
001a64  93660506  setle.f r13, r10, zero
001a68  17812600  and r2, r13, r2
001a6c  3b200100  bneq r2, zero, 8
001a70  9f030500  addli r7, r10, 0
001a74  13657304  setlt.f r10, r6, r7
001a78  1f810300  addli r2, r7, 0
001a7c  3b200500  bneq r10, zero, 8
001a80  1f010300  addli r2, r6, 0
001a84  1b359300  slli r10, r6, 9
001a88  9bb69300  slli r13, r7, 9
001a8c  1b477301  srli r14, r6, 23
001a90  9bc77301  srli r15, r7, 23
001a94  13050500  seteq r10, r10, zero
001a98  93860600  seteq r13, r13, zero
001a9c  1b07f70f  andi r14, r14, 255
001aa0  9b87f70f  andi r15, r15, 255
001aa4  1b77f70f  setlti r14, r14, 255
001aa8  9bf7f70f  setlti r15, r15, 255
001aac  1715a700  or r10, r14, r10
001ab0  9796d700  or r13, r15, r13
001ab4  1785a600  and r10, r13, r10
001ab8  371a0512  beq r10, zero, 9860
001abc  e3077ffb  loadli.w r15,  -584(r30)
001ac0  3baa0312  bneq r7, zero, 9864
001ac4  37200300  beq r6, zero, 8
001ac8  1f830300  addli r6, r7, 0
001acc  93632006  setle.f r7, zero, r2
001ad0  13650106  setle.f r10, r2, zero
001ad4  97037500  and r7, r10, r7
001ad8  3ba00300  bneq r7, zero, 8
001adc  1f030100  addli r6, r2, 0
001ae0  93e36104  setlt.f r7, r3, r6
001ae4  1f010300  addli r2, r6, 0
001ae8  3ba00300  bneq r7, zero, 8
001aec  1f810100  addli r2, r3, 0
001af0  9bb39100  slli r7, r3, 9
001af4  1b359300  slli r10, r6, 9
001af8  9bc67101  srli r13, r3, 23
001afc  1b477301  srli r14, r6, 23
001b00  93830300  seteq r7, r7, zero
001b04  13050500  seteq r10, r10, zero
001b08  9b86f60f  andi r13, r13, 255
001b0c  1b07f70f  andi r14, r14, 255
001b10  9bf6f60f  setlti r13, r13, 255
001b14  1b77f70f  setlti r14, r14, 255
001b18  97937600  or r7, r13, r7
001b1c  1715a700  or r10, r14, r10
001b20  97037500  and r7, r10, r7
001b24  b7c80312  beq r7, zero, 9776
001b28  63076ffb  loadli.w r14,  -592(r30)
001b2c  bb580312  bneq r6, zero, 9780
001b30  37a00100  beq r3, zero, 8
001b34  9f010300  addli r3, r6, 0
001b38  13632006  setle.f r6, zero, r2
001b3c  93630106  setle.f r7, r2, zero
001b40  17836300  and r6, r7, r6
001b44  3b200300  bneq r6, zero, 8
001b48  9f010100  addli r3, r2, 0
001b4c  13e33504  setlt.f r6, r11, r3
001b50  1f810100  addli r2, r3, 0
001b54  3b200300  bneq r6, zero, 8
001b58  1f810500  addli r2, r11, 0
001b5c  1bb39500  slli r6, r11, 9
001b60  9bb39100  slli r7, r3, 9
001b64  1bc57501  srli r10, r11, 23
001b68  9bc67101  srli r13, r3, 23
001b6c  13030300  seteq r6, r6, zero
001b70  93830300  seteq r7, r7, zero
001b74  1b05f50f  andi r10, r10, 255
001b78  9b86f60f  andi r13, r13, 255
001b7c  1b75f50f  setlti r10, r10, 255
001b80  9bf6f60f  setlti r13, r13, 255
001b84  17136500  or r6, r10, r6
001b88  97937600  or r7, r13, r7
001b8c  17836300  and r6, r7, r6
001b90  37770312  beq r6, zero, 9692
001b94  e3463ffc  loadli.w r13,  -484(r30)
001b98  bb870112  bneq r3, zero, 9696
001b9c  37a00500  beq r11, zero, 8
001ba0  9f850100  addli r11, r3, 0
001ba4  93612006  setle.f r3, zero, r2
001ba8  13630106  setle.f r6, r2, zero
001bac  97013300  and r3, r6, r3
001bb0  3ba00100  bneq r3, zero, 8
001bb4  9f050100  addli r11, r2, 0
001bb8  9361b604  setlt.f r3, r12, r11
001bbc  1f810500  addli r2, r11, 0
001bc0  3ba00100  bneq r3, zero, 8
001bc4  1f010600  addli r2, r12, 0
001bc8  9b319600  slli r3, r12, 9
001bcc  1bb39500  slli r6, r11, 9
001bd0  9b437601  srli r7, r12, 23
001bd4  1bc57501  srli r10, r11, 23
001bd8  93810100  seteq r3, r3, zero
001bdc  13030300  seteq r6, r6, zero
001be0  9b83f30f  andi r7, r7, 255
001be4  1b05f50f  andi r10, r10, 255
001be8  9bf3f30f  setlti r7, r7, 255
001bec  1b75f50f  setlti r10, r10, 255
001bf0  97913300  or r3, r7, r3
001bf4  17136500  or r6, r10, r6
001bf8  97013300  and r3, r6, r3
001bfc  37a60112  beq r3, zero, 9608
001c00  3bb60512  bneq r11, zero, 9612
001c04  37200600  beq r12, zero, 8
001c08  1f860500  addli r12, r11, 0
001c0c  93612006  setle.f r3, zero, r2
001c10  13630106  setle.f r6, r2, zero
001c14  97013300  and r3, r6, r3
001c18  3ba00100  bneq r3, zero, 8
001c1c  1f060100  addli r12, r2, 0
001c20  93e1c004  setlt.f r3, r1, r12
001c24  e305effb  loadli.w r11,  -528(r30)
001c28  1f010600  addli r2, r12, 0
001c2c  3ba00100  bneq r3, zero, 8
001c30  1f810000  addli r2, r1, 0
001c34  9bb19000  slli r3, r1, 9
001c38  1b339600  slli r6, r12, 9
001c3c  9bc37001  srli r7, r1, 23
001c40  1b457601  srli r10, r12, 23
001c44  93810100  seteq r3, r3, zero
001c48  13030300  seteq r6, r6, zero
001c4c  9b83f30f  andi r7, r7, 255
001c50  1b05f50f  andi r10, r10, 255
001c54  9bf3f30f  setlti r7, r7, 255
001c58  1b75f50f  setlti r10, r10, 255
001c5c  97913300  or r3, r7, r3
001c60  17136500  or r6, r10, r6
001c64  97013300  and r3, r6, r3
001c68  b7c40112  beq r3, zero, 9520
001c6c  bb540612  bneq r12, zero, 9524
001c70  37a00000  beq r1, zero, 8
001c74  9f000600  addli r1, r12, 0
001c78  93612006  setle.f r3, zero, r2
001c7c  13630106  setle.f r6, r2, zero
001c80  97013300  and r3, r6, r3
001c84  3ba00100  bneq r3, zero, 8
001c88  9f000100  addli r1, r2, 0
001c8c  93611c04  setlt.f r3, r24, r1
001c90  63063ffc  loadli.w r12,  -488(r30)
001c94  1f810000  addli r2, r1, 0
001c98  3ba00100  bneq r3, zero, 8
001c9c  1f010c00  addli r2, r24, 0
001ca0  9b319c00  slli r3, r24, 9
001ca4  1bb39000  slli r6, r1, 9
001ca8  9b437c01  srli r7, r24, 23
001cac  1bc57001  srli r10, r1, 23
001cb0  93810100  seteq r3, r3, zero
001cb4  13030300  seteq r6, r6, zero
001cb8  9b83f30f  andi r7, r7, 255
001cbc  1b05f50f  andi r10, r10, 255
001cc0  9bf3f30f  setlti r7, r7, 255
001cc4  1b75f50f  setlti r10, r10, 255
001cc8  97913300  or r3, r7, r3
001ccc  17136500  or r6, r10, r6
001cd0  97013300  and r3, r6, r3
001cd4  37e30112  beq r3, zero, 9432
001cd8  63452ffc  loadli.w r10,  -492(r30)
001cdc  3bf30012  bneq r1, zero, 9436
001ce0  37200c00  beq r24, zero, 8
001ce4  1f8c0000  addli r24, r1, 0
001ce8  93602006  setle.f r1, zero, r2
001cec  93610106  setle.f r3, r2, zero
001cf0  97801100  and r1, r3, r1
001cf4  3ba00000  bneq r1, zero, 8
001cf8  1f0c0100  addli r24, r2, 0
001cfc  13e18205  setlt.f r2, r5, r24
001d00  9f000c00  addli r1, r24, 0
001d04  3b200100  bneq r2, zero, 8
001d08  9f800200  addli r1, r5, 0
001d0c  1bb19200  slli r2, r5, 9
001d10  9b319c00  slli r3, r24, 9
001d14  1bc37201  srli r6, r5, 23
001d18  9b437c01  srli r7, r24, 23
001d1c  13010100  seteq r2, r2, zero
001d20  93810100  seteq r3, r3, zero
001d24  1b03f30f  andi r6, r6, 255
001d28  9b83f30f  andi r7, r7, 255
001d2c  1b73f30f  setlti r6, r6, 255
001d30  9bf3f30f  setlti r7, r7, 255
001d34  17112300  or r2, r6, r2
001d38  97913300  or r3, r7, r3
001d3c  17812100  and r2, r3, r2
001d40  37120112  beq r2, zero, 9348
001d44  3b220c12  bneq r24, zero, 9352
001d48  37a00200  beq r5, zero, 8
001d4c  9f020c00  addli r5, r24, 0
001d50  13611006  setle.f r2, zero, r1
001d54  93e10006  setle.f r3, r1, zero
001d58  17812100  and r2, r3, r2
001d5c  3b200100  bneq r2, zero, 8
001d60  9f820000  addli r5, r1, 0
001d64  13615204  setlt.f r2, r4, r5
001d68  630c2ffc  loadli.w r24,  -496(r30)
001d6c  9f800200  addli r1, r5, 0
001d70  3b200100  bneq r2, zero, 8
001d74  9f000200  addli r1, r4, 0
001d78  1b319200  slli r2, r4, 9
001d7c  9bb19200  slli r3, r5, 9
001d80  1b437201  srli r6, r4, 23
001d84  9bc37201  srli r7, r5, 23
001d88  13010100  seteq r2, r2, zero
001d8c  93810100  seteq r3, r3, zero
001d90  1b03f30f  andi r6, r6, 255
001d94  9b83f30f  andi r7, r7, 255
001d98  1b73f30f  setlti r6, r6, 255
001d9c  9bf3f30f  setlti r7, r7, 255
001da0  17112300  or r2, r6, r2
001da4  97913300  or r3, r7, r3
001da8  17812100  and r2, r3, r2
001dac  b7300112  beq r2, zero, 9260
001db0  bbc00212  bneq r5, zero, 9264
001db4  37200200  beq r4, zero, 8
001db8  1f820200  addli r4, r5, 0
001dbc  13611006  setle.f r2, zero, r1
001dc0  93e10006  setle.f r3, r1, zero
001dc4  17812100  and r2, r3, r2
001dc8  3b200100  bneq r2, zero, 8
001dcc  1f820000  addli r4, r1, 0
001dd0  13e14d04  setlt.f r2, r27, r4
001dd4  e30c4ffd  loadli.w r25,  -352(r30)
001dd8  9f000200  addli r1, r4, 0
001ddc  3b200100  bneq r2, zero, 8
001de0  9f800d00  addli r1, r27, 0
001de4  1bb19d00  slli r2, r27, 9
001de8  9b319200  slli r3, r4, 9
001dec  1bc37d01  srli r6, r27, 23
001df0  9b437201  srli r7, r4, 23
001df4  13010100  seteq r2, r2, zero
001df8  93810100  seteq r3, r3, zero
001dfc  1b03f30f  andi r6, r6, 255
001e00  9b83f30f  andi r7, r7, 255
001e04  1b73f30f  setlti r6, r6, 255
001e08  9bf3f30f  setlti r7, r7, 255
001e0c  17112300  or r2, r6, r2
001e10  97913300  or r3, r7, r3
001e14  17812100  and r2, r3, r2
001e18  375f0110  beq r2, zero, 9172
001e1c  e303dffb  loadli.w r7,  -536(r30)
001e20  3b6f0210  bneq r4, zero, 9176
001e24  37a00d00  beq r27, zero, 8
001e28  9f0d0200  addli r27, r4, 0
001e2c  13611006  setle.f r2, zero, r1
001e30  93e10006  setle.f r3, r1, zero
001e34  17812100  and r2, r3, r2
001e38  3b200100  bneq r2, zero, 8
001e3c  9f8d0000  addli r27, r1, 0
001e40  1361b405  setlt.f r2, r8, r27
001e44  9f800d00  addli r1, r27, 0
001e48  3b200100  bneq r2, zero, 8
001e4c  9f000400  addli r1, r8, 0
001e50  1b319400  slli r2, r8, 9
001e54  9bb19d00  slli r3, r27, 9
001e58  1b427401  srli r4, r8, 23
001e5c  1bc37d01  srli r6, r27, 23
001e60  e3426ffb  loadli.w r5,  -588(r30)
001e64  13010100  seteq r2, r2, zero
001e68  93810100  seteq r3, r3, zero
001e6c  1b02f20f  andi r4, r4, 255
001e70  1b03f30f  andi r6, r6, 255
001e74  1b72f20f  setlti r4, r4, 255
001e78  1b73f30f  setlti r6, r6, 255
001e7c  17112200  or r2, r4, r2
001e80  97113300  or r3, r6, r3
001e84  17812100  and r2, r3, r2
001e88  b77d0110  beq r2, zero, 9084
001e8c  3b8e0d10  bneq r27, zero, 9088
001e90  37200400  beq r8, zero, 8
001e94  1f840d00  addli r8, r27, 0
001e98  13611006  setle.f r2, zero, r1
001e9c  93e10006  setle.f r3, r1, zero
001ea0  17812100  and r2, r3, r2
001ea4  3b200100  bneq r2, zero, 8
001ea8  1f840000  addli r8, r1, 0
001eac  13e18404  setlt.f r2, r9, r8
001eb0  e34ddffb  loadli.w r27,  -532(r30)
001eb4  9f000400  addli r1, r8, 0
001eb8  3b200100  bneq r2, zero, 8
001ebc  9f800400  addli r1, r9, 0
001ec0  1bb19400  slli r2, r9, 9
001ec4  9b319400  slli r3, r8, 9
001ec8  1bc27401  srli r4, r9, 23
001ecc  1b437401  srli r6, r8, 23
001ed0  13010100  seteq r2, r2, zero
001ed4  93810100  seteq r3, r3, zero
001ed8  1b02f20f  andi r4, r4, 255
001edc  1b03f30f  andi r6, r6, 255
001ee0  1b72f20f  setlti r4, r4, 255
001ee4  1b73f30f  setlti r6, r6, 255
001ee8  17112200  or r2, r4, r2
001eec  97113300  or r3, r6, r3
001ef0  17812100  and r2, r3, r2
001ef4  b71c0110  beq r2, zero, 8996
001ef8  bb2c0410  bneq r8, zero, 9000
001efc  37a00400  beq r9, zero, 8
001f00  9f040400  addli r9, r8, 0
001f04  13611006  setle.f r2, zero, r1
001f08  93e10006  setle.f r3, r1, zero
001f0c  17812100  and r2, r3, r2
001f10  3b200100  bneq r2, zero, 8
001f14  9f840000  addli r9, r1, 0
001f18  13619e04  setlt.f r2, r28, r9
001f1c  63440ffc  loadli.w r8,  -508(r30)
001f20  9f800400  addli r1, r9, 0
001f24  3b200100  bneq r2, zero, 8
001f28  9f000e00  addli r1, r28, 0
001f2c  1b319e00  slli r2, r28, 9
001f30  9bb19400  slli r3, r9, 9
001f34  1b427e01  srli r4, r28, 23
001f38  1bc37401  srli r6, r9, 23
001f3c  13010100  seteq r2, r2, zero
001f40  93810100  seteq r3, r3, zero
001f44  1b02f20f  andi r4, r4, 255
001f48  1b03f30f  andi r6, r6, 255
001f4c  1b72f20f  setlti r4, r4, 255
001f50  1b73f30f  setlti r6, r6, 255
001f54  17112200  or r2, r4, r2
001f58  97113300  or r3, r6, r3
001f5c  17812100  and r2, r3, r2
001f60  373b0110  beq r2, zero, 8908
001f64  3bcb0410  bneq r9, zero, 8912
001f68  37200e00  beq r28, zero, 8
001f6c  1f8e0400  addli r28, r9, 0
001f70  13611006  setle.f r2, zero, r1
001f74  93e10006  setle.f r3, r1, zero
001f78  17812100  and r2, r3, r2
001f7c  3b200100  bneq r2, zero, 8
001f80  1f8e0000  addli r28, r1, 0
001f84  1361c705  setlt.f r2, r14, r28
001f88  e3040ffc  loadli.w r9,  -512(r30)
001f8c  9f000e00  addli r1, r28, 0
001f90  3b200100  bneq r2, zero, 8
001f94  9f000700  addli r1, r14, 0
001f98  1b319700  slli r2, r14, 9
001f9c  9b319e00  slli r3, r28, 9
001fa0  1b427701  srli r4, r14, 23
001fa4  1b437e01  srli r6, r28, 23
001fa8  13010100  seteq r2, r2, zero
001fac  93810100  seteq r3, r3, zero
001fb0  1b02f20f  andi r4, r4, 255
001fb4  1b03f30f  andi r6, r6, 255
001fb8  1b72f20f  setlti r4, r4, 255
001fbc  1b73f30f  setlti r6, r6, 255
001fc0  17112200  or r2, r4, r2
001fc4  97113300  or r3, r6, r3
001fc8  17812100  and r2, r3, r2
001fcc  b7590110  beq r2, zero, 8820
001fd0  bb690e10  bneq r28, zero, 8824
001fd4  37200700  beq r14, zero, 8
001fd8  1f070e00  addli r14, r28, 0
001fdc  13611006  setle.f r2, zero, r1
001fe0  93e10006  setle.f r3, r1, zero
001fe4  17812100  and r2, r3, r2
001fe8  3b200100  bneq r2, zero, 8
001fec  1f870000  addli r14, r1, 0
001ff0  13e1e204  setlt.f r2, r5, r14
001ff4  634eeffb  loadli.w r28,  -524(r30)
001ff8  9f000700  addli r1, r14, 0
001ffc  3b200100  bneq r2, zero, 8
002000  9f800200  addli r1, r5, 0
002004  1bb19200  slli r2, r5, 9
002008  9b319700  slli r3, r14, 9
00200c  1bc27201  srli r4, r5, 23
002010  1b437701  srli r6, r14, 23
002014  13010100  seteq r2, r2, zero
002018  93810100  seteq r3, r3, zero
00201c  1b02f20f  andi r4, r4, 255
002020  1b03f30f  andi r6, r6, 255
002024  1b72f20f  setlti r4, r4, 255
002028  1b73f30f  setlti r6, r6, 255
00202c  17112200  or r2, r4, r2
002030  97113300  or r3, r6, r3
002034  17812100  and r2, r3, r2
002038  37780110  beq r2, zero, 8732
00203c  6303fffb  loadli.w r6,  -520(r30)
002040  bb080710  bneq r14, zero, 8736
002044  37a00200  beq r5, zero, 8
002048  9f020700  addli r5, r14, 0
00204c  13611006  setle.f r2, zero, r1
002050  93e10006  setle.f r3, r1, zero
002054  17812100  and r2, r3, r2
002058  3b200100  bneq r2, zero, 8
00205c  9f820000  addli r5, r1, 0
002060  13615a04  setlt.f r2, r20, r5
002064  9f800200  addli r1, r5, 0
002068  3b200100  bneq r2, zero, 8
00206c  9f000a00  addli r1, r20, 0
002070  1b319a00  slli r2, r20, 9
002074  9bb19200  slli r3, r5, 9
002078  1b427a01  srli r4, r20, 23
00207c  1f870200  addli r14, r5, 0
002080  9bc27201  srli r5, r5, 23
002084  13010100  seteq r2, r2, zero
002088  93810100  seteq r3, r3, zero
00208c  1b02f20f  andi r4, r4, 255
002090  9b82f20f  andi r5, r5, 255
002094  1b72f20f  setlti r4, r4, 255
002098  9bf2f20f  setlti r5, r5, 255
00209c  17112200  or r2, r4, r2
0020a0  97913200  or r3, r5, r3
0020a4  17812100  and r2, r3, r2
0020a8  37170110  beq r2, zero, 8644
0020ac  3b270710  bneq r14, zero, 8648
0020b0  37200a00  beq r20, zero, 8
0020b4  1f0a0700  addli r20, r14, 0
0020b8  13611006  setle.f r2, zero, r1
0020bc  93e10006  setle.f r3, r1, zero
0020c0  17812100  and r2, r3, r2
0020c4  3b200100  bneq r2, zero, 8
0020c8  1f8a0000  addli r20, r1, 0
0020cc  13e14705  setlt.f r2, r15, r20
0020d0  9f000a00  addli r1, r20, 0
0020d4  3b200100  bneq r2, zero, 8
0020d8  9f800700  addli r1, r15, 0
0020dc  1bb19700  slli r2, r15, 9
0020e0  9b319a00  slli r3, r20, 9
0020e4  1bc27701  srli r4, r15, 23
0020e8  9b427a01  srli r5, r20, 23
0020ec  13010100  seteq r2, r2, zero
0020f0  93810100  seteq r3, r3, zero
0020f4  1b02f20f  andi r4, r4, 255
0020f8  9b82f20f  andi r5, r5, 255
0020fc  1b72f20f  setlti r4, r4, 255
002100  9bf2f20f  setlti r5, r5, 255
002104  17112200  or r2, r4, r2
002108  97913200  or r3, r5, r3
00210c  17812100  and r2, r3, r2
002110  b7450110  beq r2, zero, 8560
002114  63025ffd  loadli.w r4,  -344(r30)
002118  bb550a10  bneq r20, zero, 8564
00211c  37a00700  beq r15, zero, 8
002120  9f070a00  addli r15, r20, 0
002124  13611006  setle.f r2, zero, r1
002128  93e10006  setle.f r3, r1, zero
00212c  17812100  and r2, r3, r2
002130  3b200100  bneq r2, zero, 8
002134  9f870000  addli r15, r1, 0
002138  1361f204  setlt.f r2, r4, r15
00213c  634a3ffd  loadli.w r20,  -356(r30)
002140  9f800700  addli r1, r15, 0
002144  3b200100  bneq r2, zero, 8
002148  9f000200  addli r1, r4, 0
00214c  1b319200  slli r2, r4, 9
002150  9bb19700  slli r3, r15, 9
002154  1b427201  srli r4, r4, 23
002158  9bc27701  srli r5, r15, 23
00215c  13010100  seteq r2, r2, zero
002160  93810100  seteq r3, r3, zero
002164  1b02f20f  andi r4, r4, 255
002168  9b82f20f  andi r5, r5, 255
00216c  1b72f20f  setlti r4, r4, 255
002170  9bf2f20f  setlti r5, r5, 255
002174  17112200  or r2, r4, r2
002178  97913200  or r3, r5, r3
00217c  17812100  and r2, r3, r2
002180  37640110  beq r2, zero, 8472
002184  3bf40710  bneq r15, zero, 8476
002188  e3025ffd  loadli.w r5,  -344(r30)
00218c  37a00200  beq r5, zero, 8
002190  9f820700  addli r5, r15, 0
002194  13611006  setle.f r2, zero, r1
002198  93e10006  setle.f r3, r1, zero
00219c  17812100  and r2, r3, r2
0021a0  3b200100  bneq r2, zero, 8
0021a4  9f820000  addli r5, r1, 0
0021a8  13615804  setlt.f r2, r16, r5
0021ac  9f800200  addli r1, r5, 0
0021b0  3b200100  bneq r2, zero, 8
0021b4  9f000800  addli r1, r16, 0
0021b8  1b319800  slli r2, r16, 9
0021bc  9bb19200  slli r3, r5, 9
0021c0  1b427801  srli r4, r16, 23
0021c4  9f870200  addli r15, r5, 0
0021c8  9bc27201  srli r5, r5, 23
0021cc  13010100  seteq r2, r2, zero
0021d0  93810100  seteq r3, r3, zero
0021d4  1b02f20f  andi r4, r4, 255
0021d8  9b82f20f  andi r5, r5, 255
0021dc  1b72f20f  setlti r4, r4, 255
0021e0  9bf2f20f  setlti r5, r5, 255
0021e4  17112200  or r2, r4, r2
0021e8  97913200  or r3, r5, r3
0021ec  17812100  and r2, r3, r2
0021f0  37030110  beq r2, zero, 8384
0021f4  63425ffd  loadli.w r4,  -340(r30)
0021f8  3b930710  bneq r15, zero, 8388
0021fc  37200800  beq r16, zero, 8
002200  1f880700  addli r16, r15, 0
002204  13611006  setle.f r2, zero, r1
002208  93e10006  setle.f r3, r1, zero
00220c  17812100  and r2, r3, r2
002210  3b200100  bneq r2, zero, 8
002214  1f880000  addli r16, r1, 0
002218  13610205  setlt.f r2, r4, r16
00221c  9f000800  addli r1, r16, 0
002220  3b200100  bneq r2, zero, 8
002224  9f000200  addli r1, r4, 0
002228  1b319200  slli r2, r4, 9
00222c  9b319800  slli r3, r16, 9
002230  1b427201  srli r4, r4, 23
002234  9b427801  srli r5, r16, 23
002238  13010100  seteq r2, r2, zero
00223c  93810100  seteq r3, r3, zero
002240  1b02f20f  andi r4, r4, 255
002244  9b82f20f  andi r5, r5, 255
002248  1b72f20f  setlti r4, r4, 255
00224c  9bf2f20f  setlti r5, r5, 255
002250  17112200  or r2, r4, r2
002254  97913200  or r3, r5, r3
002258  17812100  and r2, r3, r2
00225c  b7310110  beq r2, zero, 8300
002260  bb410810  bneq r16, zero, 8304
002264  e3425ffd  loadli.w r5,  -340(r30)
002268  37a00200  beq r5, zero, 8
00226c  9f020800  addli r5, r16, 0
002270  13611006  setle.f r2, zero, r1
002274  93e10006  setle.f r3, r1, zero
002278  17812100  and r2, r3, r2
00227c  3b200100  bneq r2, zero, 8
002280  9f820000  addli r5, r1, 0
002284  13615904  setlt.f r2, r18, r5
002288  9f800200  addli r1, r5, 0
00228c  3b200100  bneq r2, zero, 8
002290  9f000900  addli r1, r18, 0
002294  1b319900  slli r2, r18, 9
002298  9bb19200  slli r3, r5, 9
00229c  1b427901  srli r4, r18, 23
0022a0  1f880200  addli r16, r5, 0
0022a4  9bc27201  srli r5, r5, 23
0022a8  13010100  seteq r2, r2, zero
0022ac  93810100  seteq r3, r3, zero
0022b0  1b02f20f  andi r4, r4, 255
0022b4  9b82f20f  andi r5, r5, 255
0022b8  1b72f20f  setlti r4, r4, 255
0022bc  9bf2f20f  setlti r5, r5, 255
0022c0  17112200  or r2, r4, r2
0022c4  97913200  or r3, r5, r3
0022c8  17812100  and r2, r3, r2
0022cc  37500110  beq r2, zero, 8212
0022d0  63026ffd  loadli.w r4,  -336(r30)
0022d4  3b600810  bneq r16, zero, 8216
0022d8  37200900  beq r18, zero, 8
0022dc  1f090800  addli r18, r16, 0
0022e0  13611006  setle.f r2, zero, r1
0022e4  93e10006  setle.f r3, r1, zero
0022e8  17812100  and r2, r3, r2
0022ec  3b200100  bneq r2, zero, 8
0022f0  1f890000  addli r18, r1, 0
0022f4  13612205  setlt.f r2, r4, r18
0022f8  9f000900  addli r1, r18, 0
0022fc  3b200100  bneq r2, zero, 8
002300  9f000200  addli r1, r4, 0
002304  1b319200  slli r2, r4, 9
002308  9b319900  slli r3, r18, 9
00230c  1b427201  srli r4, r4, 23
002310  9b427901  srli r5, r18, 23
002314  13010100  seteq r2, r2, zero
002318  93810100  seteq r3, r3, zero
00231c  1b02f20f  andi r4, r4, 255
002320  9b82f20f  andi r5, r5, 255
002324  1b72f20f  setlti r4, r4, 255
002328  9bf2f20f  setlti r5, r5, 255
00232c  17112200  or r2, r4, r2
002330  97913200  or r3, r5, r3
002334  17812100  and r2, r3, r2
002338  370f010e  beq r2, zero, 8128
00233c  3b1f090e  bneq r18, zero, 8132
002340  e3026ffd  loadli.w r5,  -336(r30)
002344  37a00200  beq r5, zero, 8
002348  9f020900  addli r5, r18, 0
00234c  13611006  setle.f r2, zero, r1
002350  93e10006  setle.f r3, r1, zero
002354  17812100  and r2, r3, r2
002358  3b200100  bneq r2, zero, 8
00235c  9f820000  addli r5, r1, 0
002360  13e15b04  setlt.f r2, r23, r5
002364  9f800200  addli r1, r5, 0
002368  3b200100  bneq r2, zero, 8
00236c  9f800b00  addli r1, r23, 0
002370  1bb19b00  slli r2, r23, 9
002374  9bb19200  slli r3, r5, 9
002378  1bc27b01  srli r4, r23, 23
00237c  1f890200  addli r18, r5, 0
002380  9bc27201  srli r5, r5, 23
002384  13010100  seteq r2, r2, zero
002388  93810100  seteq r3, r3, zero
00238c  1b02f20f  andi r4, r4, 255
002390  9b82f20f  andi r5, r5, 255
002394  1b72f20f  setlti r4, r4, 255
002398  9bf2f20f  setlti r5, r5, 255
00239c  17112200  or r2, r4, r2
0023a0  97913200  or r3, r5, r3
0023a4  17812100  and r2, r3, r2
0023a8  b72d010e  beq r2, zero, 8040
0023ac  63426ffd  loadli.w r4,  -332(r30)
0023b0  bb3d090e  bneq r18, zero, 8044
0023b4  37a00b00  beq r23, zero, 8
0023b8  9f0b0900  addli r23, r18, 0
0023bc  13611006  setle.f r2, zero, r1
0023c0  93e10006  setle.f r3, r1, zero
0023c4  17812100  and r2, r3, r2
0023c8  3b200100  bneq r2, zero, 8
0023cc  9f8b0000  addli r23, r1, 0
0023d0  13617205  setlt.f r2, r4, r23
0023d4  9f800b00  addli r1, r23, 0
0023d8  3b200100  bneq r2, zero, 8
0023dc  9f000200  addli r1, r4, 0
0023e0  1b319200  slli r2, r4, 9
0023e4  9bb19b00  slli r3, r23, 9
0023e8  1b427201  srli r4, r4, 23
0023ec  9bc27b01  srli r5, r23, 23
0023f0  13010100  seteq r2, r2, zero
0023f4  93810100  seteq r3, r3, zero
0023f8  1b02f20f  andi r4, r4, 255
0023fc  9b82f20f  andi r5, r5, 255
002400  1b72f20f  setlti r4, r4, 255
002404  9bf2f20f  setlti r5, r5, 255
002408  17112200  or r2, r4, r2
00240c  97913200  or r3, r5, r3
002410  17812100  and r2, r3, r2
002414  375c010e  beq r2, zero, 7956
002418  3bec0b0e  bneq r23, zero, 7960
00241c  e3426ffd  loadli.w r5,  -332(r30)
002420  37a00200  beq r5, zero, 8
002424  9f820b00  addli r5, r23, 0
002428  13611006  setle.f r2, zero, r1
00242c  93e10006  setle.f r3, r1, zero
002430  17812100  and r2, r3, r2
002434  3b200100  bneq r2, zero, 8
002438  9f820000  addli r5, r1, 0
00243c  13e15a04  setlt.f r2, r21, r5
002440  9f800200  addli r1, r5, 0
002444  3b200100  bneq r2, zero, 8
002448  9f800a00  addli r1, r21, 0
00244c  1bb19a00  slli r2, r21, 9
002450  9bb19200  slli r3, r5, 9
002454  1bc27a01  srli r4, r21, 23
002458  9f8b0200  addli r23, r5, 0
00245c  9bc27201  srli r5, r5, 23
002460  13010100  seteq r2, r2, zero
002464  93810100  seteq r3, r3, zero
002468  1b02f20f  andi r4, r4, 255
00246c  9b82f20f  andi r5, r5, 255
002470  1b72f20f  setlti r4, r4, 255
002474  9bf2f20f  setlti r5, r5, 255
002478  17112200  or r2, r4, r2
00247c  97913200  or r3, r5, r3
002480  17812100  and r2, r3, r2
002484  b77a010e  beq r2, zero, 7868
002488  3b8b0b0e  bneq r23, zero, 7872
00248c  37a00a00  beq r21, zero, 8
002490  9f8a0b00  addli r21, r23, 0
002494  13611006  setle.f r2, zero, r1
002498  93e10006  setle.f r3, r1, zero
00249c  17812100  and r2, r3, r2
0024a0  3b200100  bneq r2, zero, 8
0024a4  9f8a0000  addli r21, r1, 0
0024a8  13615d05  setlt.f r2, r26, r21
0024ac  9f800a00  addli r1, r21, 0
0024b0  3b200100  bneq r2, zero, 8
0024b4  9f000d00  addli r1, r26, 0
0024b8  1b319d00  slli r2, r26, 9
0024bc  9bb19a00  slli r3, r21, 9
0024c0  1b427d01  srli r4, r26, 23
0024c4  9bc27a01  srli r5, r21, 23
0024c8  13010100  seteq r2, r2, zero
0024cc  93810100  seteq r3, r3, zero
0024d0  1b02f20f  andi r4, r4, 255
0024d4  9b82f20f  andi r5, r5, 255
0024d8  1b72f20f  setlti r4, r4, 255
0024dc  9bf2f20f  setlti r5, r5, 255
0024e0  17112200  or r2, r4, r2
0024e4  97913200  or r3, r5, r3
0024e8  17812100  and r2, r3, r2
0024ec  b729010e  beq r2, zero, 7784
0024f0  63027ffd  loadli.w r4,  -328(r30)
0024f4  bbb90a0e  bneq r21, zero, 7788
0024f8  37200d00  beq r26, zero, 8
0024fc  1f8d0a00  addli r26, r21, 0
002500  13611006  setle.f r2, zero, r1
002504  93e10006  setle.f r3, r1, zero
002508  17812100  and r2, r3, r2
00250c  3b200100  bneq r2, zero, 8
002510  1f8d0000  addli r26, r1, 0
002514  1361a205  setlt.f r2, r4, r26
002518  9f8a0600  addli r21, r13, 0
00251c  9f000d00  addli r1, r26, 0
002520  3b200100  bneq r2, zero, 8
002524  9f000200  addli r1, r4, 0
002528  1b319200  slli r2, r4, 9
00252c  9b319d00  slli r3, r26, 9
002530  1b427201  srli r4, r4, 23
002534  9b427d01  srli r5, r26, 23
002538  9f860400  addli r13, r9, 0
00253c  13010100  seteq r2, r2, zero
002540  93810100  seteq r3, r3, zero
002544  1b02f20f  andi r4, r4, 255
002548  9b82f20f  andi r5, r5, 255
00254c  1b72f20f  setlti r4, r4, 255
002550  9bf2f20f  setlti r5, r5, 255
002554  17112200  or r2, r4, r2
002558  97913200  or r3, r5, r3
00255c  17812100  and r2, r3, r2
002560  3b200100  bneq r2, zero, 8
002564  ab00c07f  lui r1, 523264
002568  e304cffb  loadli.w r9,  -544(r30)
00256c  63427ffd  loadli.w r4,  -324(r30)
002570  37200d00  beq r26, zero, 8
002574  1f8d0000  addli r26, r1, 0
002578  63094ffc  loadli.w r18,  -480(r30)
00257c  e3027ffd  loadli.w r5,  -328(r30)
002580  37a00200  beq r5, zero, 8
002584  9f020d00  addli r5, r26, 0
002588  13611006  setle.f r2, zero, r1
00258c  93e10006  setle.f r3, r1, zero
002590  1f870500  addli r14, r11, 0
002594  17812100  and r2, r3, r2
002598  3b200100  bneq r2, zero, 8
00259c  9f820000  addli r5, r1, 0
0025a0  13615204  setlt.f r2, r4, r5
0025a4  9f850c00  addli r11, r25, 0
0025a8  9f800200  addli r1, r5, 0
0025ac  3b200100  bneq r2, zero, 8
0025b0  9f000200  addli r1, r4, 0
0025b4  1b319200  slli r2, r4, 9
0025b8  9bb19200  slli r3, r5, 9
0025bc  1b427201  srli r4, r4, 23
0025c0  1f8d0200  addli r26, r5, 0
0025c4  9bc27201  srli r5, r5, 23
0025c8  9f0c0400  addli r25, r8, 0
0025cc  13010100  seteq r2, r2, zero
0025d0  93810100  seteq r3, r3, zero
0025d4  1b02f20f  andi r4, r4, 255
0025d8  9b82f20f  andi r5, r5, 255
0025dc  1b72f20f  setlti r4, r4, 255
0025e0  9bf2f20f  setlti r5, r5, 255
0025e4  17112200  or r2, r4, r2
0025e8  97913200  or r3, r5, r3
0025ec  17812100  and r2, r3, r2
0025f0  3b200100  bneq r2, zero, 8
0025f4  ab00c07f  lui r1, 523264
0025f8  63448ffb  loadli.w r8,  -572(r30)
0025fc  37200d00  beq r26, zero, 8
002600  1f8d0000  addli r26, r1, 0
002604  e34b4ffc  loadli.w r23,  -476(r30)
002608  e3427ffd  loadli.w r5,  -324(r30)
00260c  37a00200  beq r5, zero, 8
002610  9f020d00  addli r5, r26, 0
002614  13611006  setle.f r2, zero, r1
002618  93e10006  setle.f r3, r1, zero
00261c  e3075ffc  loadli.w r15,  -472(r30)
002620  17812100  and r2, r3, r2
002624  3b200100  bneq r2, zero, 8
002628  9f820000  addli r5, r1, 0
00262c  13e15804  setlt.f r2, r17, r5
002630  63489ffb  loadli.w r16,  -564(r30)
002634  9f800200  addli r1, r5, 0
002638  3b200100  bneq r2, zero, 8
00263c  9f800800  addli r1, r17, 0
002640  1bb19800  slli r2, r17, 9
002644  9bb19200  slli r3, r5, 9
002648  1bc27801  srli r4, r17, 23
00264c  1f8d0200  addli r26, r5, 0
002650  9bc27201  srli r5, r5, 23
002654  13010100  seteq r2, r2, zero
002658  93810100  seteq r3, r3, zero
00265c  1b02f20f  andi r4, r4, 255
002660  9b82f20f  andi r5, r5, 255
002664  1b72f20f  setlti r4, r4, 255
002668  9bf2f20f  setlti r5, r5, 255
00266c  17112200  or r2, r4, r2
002670  97913200  or r3, r5, r3
002674  17812100  and r2, r3, r2
002678  b753010e  beq r2, zero, 7412
00267c  63028ffd  loadli.w r4,  -320(r30)
002680  bb630d0e  bneq r26, zero, 7416
002684  37a00800  beq r17, zero, 8
002688  9f080d00  addli r17, r26, 0
00268c  13611006  setle.f r2, zero, r1
002690  93e10006  setle.f r3, r1, zero
002694  17812100  and r2, r3, r2
002698  3b200100  bneq r2, zero, 8
00269c  9f880000  addli r17, r1, 0
0026a0  13611205  setlt.f r2, r4, r17
0026a4  9f800800  addli r1, r17, 0
0026a8  1f0d0800  addli r26, r16, 0
0026ac  3b200100  bneq r2, zero, 8
0026b0  9f000200  addli r1, r4, 0
0026b4  1b319200  slli r2, r4, 9
0026b8  9bb19800  slli r3, r17, 9
0026bc  1b427201  srli r4, r4, 23
0026c0  9bc27801  srli r5, r17, 23
0026c4  1f880700  addli r16, r15, 0
0026c8  13010100  seteq r2, r2, zero
0026cc  93810100  seteq r3, r3, zero
0026d0  1b02f20f  andi r4, r4, 255
0026d4  9b82f20f  andi r5, r5, 255
0026d8  1b72f20f  setlti r4, r4, 255
0026dc  9bf2f20f  setlti r5, r5, 255
0026e0  17112200  or r2, r4, r2
0026e4  97913200  or r3, r5, r3
0026e8  17812100  and r2, r3, r2
0026ec  3b200100  bneq r2, zero, 8
0026f0  ab00c07f  lui r1, 523264
0026f4  9f870b00  addli r15, r23, 0
0026f8  37a00800  beq r17, zero, 8
0026fc  9f880000  addli r17, r1, 0
002700  e3028ffd  loadli.w r5,  -320(r30)
002704  9f0b0400  addli r23, r8, 0
002708  37a00200  beq r5, zero, 8
00270c  9f820800  addli r5, r17, 0
002710  13611006  setle.f r2, zero, r1
002714  93e10006  setle.f r3, r1, zero
002718  1f840c00  addli r8, r25, 0
00271c  17812100  and r2, r3, r2
002720  3b200100  bneq r2, zero, 8
002724  9f820000  addli r5, r1, 0
002728  13615b04  setlt.f r2, r22, r5
00272c  9f800200  addli r1, r5, 0
002730  9f8c0500  addli r25, r11, 0
002734  3b200100  bneq r2, zero, 8
002738  9f000b00  addli r1, r22, 0
00273c  1b319b00  slli r2, r22, 9
002740  9bb19200  slli r3, r5, 9
002744  1b427b01  srli r4, r22, 23
002748  9f880200  addli r17, r5, 0
00274c  9bc27201  srli r5, r5, 23
002750  9f050700  addli r11, r14, 0
002754  13010100  seteq r2, r2, zero
002758  93810100  seteq r3, r3, zero
00275c  1b02f20f  andi r4, r4, 255
002760  9b82f20f  andi r5, r5, 255
002764  1b72f20f  setlti r4, r4, 255
002768  9bf2f20f  setlti r5, r5, 255
00276c  17112200  or r2, r4, r2
002770  97913200  or r3, r5, r3
002774  17812100  and r2, r3, r2
002778  3b200100  bneq r2, zero, 8
00277c  ab00c07f  lui r1, 523264
002780  63428ffd  loadli.w r4,  -316(r30)
002784  1f070900  addli r14, r18, 0
002788  37a00800  beq r17, zero, 8
00278c  9f880000  addli r17, r1, 0
002790  1f890400  addli r18, r9, 0
002794  37200b00  beq r22, zero, 8
002798  1f8b0800  addli r22, r17, 0
00279c  13611006  setle.f r2, zero, r1
0027a0  93e10006  setle.f r3, r1, zero
0027a4  9f840600  addli r9, r13, 0
0027a8  17812100  and r2, r3, r2
0027ac  3b200100  bneq r2, zero, 8
0027b0  1f8b0000  addli r22, r1, 0
0027b4  13616205  setlt.f r2, r4, r22
0027b8  e308bffb  loadli.w r17,  -552(r30)
0027bc  9f000b00  addli r1, r22, 0
0027c0  9f860a00  addli r13, r21, 0
0027c4  3b200100  bneq r2, zero, 8
0027c8  9f000200  addli r1, r4, 0
0027cc  1b319200  slli r2, r4, 9
0027d0  9b319b00  slli r3, r22, 9
0027d4  1b427201  srli r4, r4, 23
0027d8  9b427b01  srli r5, r22, 23
0027dc  13010100  seteq r2, r2, zero
0027e0  93810100  seteq r3, r3, zero
0027e4  1b02f20f  andi r4, r4, 255
0027e8  9b82f20f  andi r5, r5, 255
0027ec  1b72f20f  setlti r4, r4, 255
0027f0  9bf2f20f  setlti r5, r5, 255
0027f4  17112200  or r2, r4, r2
0027f8  97913200  or r3, r5, r3
0027fc  17812100  and r2, r3, r2
002800  371e010c  beq r2, zero, 7044
002804  3b2e0b0c  bneq r22, zero, 7048
002808  e3428ffd  loadli.w r5,  -316(r30)
00280c  37a00200  beq r5, zero, 8
002810  9f020b00  addli r5, r22, 0
002814  13611006  setle.f r2, zero, r1
002818  93e10006  setle.f r3, r1, zero
00281c  17812100  and r2, r3, r2
002820  3b200100  bneq r2, zero, 8
002824  9f820000  addli r5, r1, 0
002828  13e15804  setlt.f r2, r17, r5
00282c  9f800200  addli r1, r5, 0
002830  3b200100  bneq r2, zero, 8
002834  9f800800  addli r1, r17, 0
002838  1bb19800  slli r2, r17, 9
00283c  9bb19200  slli r3, r5, 9
002840  1bc27801  srli r4, r17, 23
002844  1f8b0200  addli r22, r5, 0
002848  9bc27201  srli r5, r5, 23
00284c  13010100  seteq r2, r2, zero
002850  93810100  seteq r3, r3, zero
002854  1b02f20f  andi r4, r4, 255
002858  9b82f20f  andi r5, r5, 255
00285c  1b72f20f  setlti r4, r4, 255
002860  9bf2f20f  setlti r5, r5, 255
002864  17112200  or r2, r4, r2
002868  97913200  or r3, r5, r3
00286c  17812100  and r2, r3, r2
002870  b73c010c  beq r2, zero, 6956
002874  6302dffd  loadli.w r4,  -280(r30)
002878  bb4c0b0c  bneq r22, zero, 6960
00287c  37a00800  beq r17, zero, 8
002880  9f080b00  addli r17, r22, 0
002884  13611006  setle.f r2, zero, r1
002888  93e10006  setle.f r3, r1, zero
00288c  17812100  and r2, r3, r2
002890  3b200100  bneq r2, zero, 8
002894  9f880000  addli r17, r1, 0
002898  13611205  setlt.f r2, r4, r17
00289c  9f800800  addli r1, r17, 0
0028a0  3b200100  bneq r2, zero, 8
0028a4  9f000200  addli r1, r4, 0
0028a8  1b319200  slli r2, r4, 9
0028ac  9bb19800  slli r3, r17, 9
0028b0  1b427201  srli r4, r4, 23
0028b4  9bc27801  srli r5, r17, 23
0028b8  13010100  seteq r2, r2, zero
0028bc  93810100  seteq r3, r3, zero
0028c0  1b02f20f  andi r4, r4, 255
0028c4  9b82f20f  andi r5, r5, 255
0028c8  1b72f20f  setlti r4, r4, 255
0028cc  9bf2f20f  setlti r5, r5, 255
0028d0  17112200  or r2, r4, r2
0028d4  97913200  or r3, r5, r3
0028d8  17812100  and r2, r3, r2
0028dc  376b010c  beq r2, zero, 6872
0028e0  3bfb080c  bneq r17, zero, 6876
0028e4  e302dffd  loadli.w r5,  -280(r30)
0028e8  37a00200  beq r5, zero, 8
0028ec  9f820800  addli r5, r17, 0
0028f0  13611006  setle.f r2, zero, r1
0028f4  93e10006  setle.f r3, r1, zero
0028f8  e34aaffb  loadli.w r21,  -556(r30)
0028fc  17812100  and r2, r3, r2
002900  3b200100  bneq r2, zero, 8
002904  9f820000  addli r5, r1, 0
002908  13e15904  setlt.f r2, r19, r5
00290c  634b5ffc  loadli.w r22,  -468(r30)
002910  9f800200  addli r1, r5, 0
002914  3b200100  bneq r2, zero, 8
002918  9f800900  addli r1, r19, 0
00291c  1bb19900  slli r2, r19, 9
002920  9bb19200  slli r3, r5, 9
002924  1bc27901  srli r4, r19, 23
002928  9f880200  addli r17, r5, 0
00292c  9bc27201  srli r5, r5, 23
002930  13010100  seteq r2, r2, zero
002934  93810100  seteq r3, r3, zero
002938  1b02f20f  andi r4, r4, 255
00293c  9b82f20f  andi r5, r5, 255
002940  1b72f20f  setlti r4, r4, 255
002944  9bf2f20f  setlti r5, r5, 255
002948  17112200  or r2, r4, r2
00294c  97913200  or r3, r5, r3
002950  17812100  and r2, r3, r2
002954  b769010c  beq r2, zero, 6776
002958  6302effd  loadli.w r4,  -272(r30)
00295c  bbf9080c  bneq r17, zero, 6780
002960  37a00900  beq r19, zero, 8
002964  9f890800  addli r19, r17, 0
002968  13611006  setle.f r2, zero, r1
00296c  93e10006  setle.f r3, r1, zero
002970  17812100  and r2, r3, r2
002974  3b200100  bneq r2, zero, 8
002978  9f890000  addli r19, r1, 0
00297c  13613205  setlt.f r2, r4, r19
002980  9f800900  addli r1, r19, 0
002984  9f080b00  addli r17, r22, 0
002988  3b200100  bneq r2, zero, 8
00298c  9f000200  addli r1, r4, 0
002990  1b319200  slli r2, r4, 9
002994  9bb19900  slli r3, r19, 9
002998  1b427201  srli r4, r4, 23
00299c  9bc27901  srli r5, r19, 23
0029a0  1f8b0a00  addli r22, r21, 0
0029a4  13010100  seteq r2, r2, zero
0029a8  93810100  seteq r3, r3, zero
0029ac  1b02f20f  andi r4, r4, 255
0029b0  9b82f20f  andi r5, r5, 255
0029b4  1b72f20f  setlti r4, r4, 255
0029b8  9bf2f20f  setlti r5, r5, 255
0029bc  17112200  or r2, r4, r2
0029c0  97913200  or r3, r5, r3
0029c4  17812100  and r2, r3, r2
0029c8  3778010c  beq r2, zero, 6684
0029cc  bb88090c  bneq r19, zero, 6688
0029d0  e302effd  loadli.w r5,  -272(r30)
0029d4  37a00200  beq r5, zero, 8
0029d8  9f820900  addli r5, r19, 0
0029dc  13611006  setle.f r2, zero, r1
0029e0  93e10006  setle.f r3, r1, zero
0029e4  17812100  and r2, r3, r2
0029e8  3b200100  bneq r2, zero, 8
0029ec  9f820000  addli r5, r1, 0
0029f0  13615904  setlt.f r2, r18, r5
0029f4  9f800200  addli r1, r5, 0
0029f8  3b200100  bneq r2, zero, 8
0029fc  9f000900  addli r1, r18, 0
002a00  1b319900  slli r2, r18, 9
002a04  9bb19200  slli r3, r5, 9
002a08  1b427901  srli r4, r18, 23
002a0c  9f890200  addli r19, r5, 0
002a10  9bc27201  srli r5, r5, 23
002a14  13010100  seteq r2, r2, zero
002a18  93810100  seteq r3, r3, zero
002a1c  1b02f20f  andi r4, r4, 255
002a20  9b82f20f  andi r5, r5, 255
002a24  1b72f20f  setlti r4, r4, 255
002a28  9bf2f20f  setlti r5, r5, 255
002a2c  17112200  or r2, r4, r2
002a30  97913200  or r3, r5, r3
002a34  17812100  and r2, r3, r2
002a38  3717010c  beq r2, zero, 6596
002a3c  6342fffd  loadli.w r4,  -260(r30)
002a40  3ba7090c  bneq r19, zero, 6600
002a44  37200900  beq r18, zero, 8
002a48  1f890900  addli r18, r19, 0
002a4c  13611006  setle.f r2, zero, r1
002a50  93e10006  setle.f r3, r1, zero
002a54  17812100  and r2, r3, r2
002a58  3b200100  bneq r2, zero, 8
002a5c  1f890000  addli r18, r1, 0
002a60  13612205  setlt.f r2, r4, r18
002a64  e349cffb  loadli.w r19,  -540(r30)
002a68  9f000900  addli r1, r18, 0
002a6c  3b200100  bneq r2, zero, 8
002a70  9f000200  addli r1, r4, 0
002a74  1b319200  slli r2, r4, 9
002a78  9b319900  slli r3, r18, 9
002a7c  1b427201  srli r4, r4, 23
002a80  9b427901  srli r5, r18, 23
002a84  13010100  seteq r2, r2, zero
002a88  93810100  seteq r3, r3, zero
002a8c  1b02f20f  andi r4, r4, 255
002a90  9b82f20f  andi r5, r5, 255
002a94  1b72f20f  setlti r4, r4, 255
002a98  9bf2f20f  setlti r5, r5, 255
002a9c  17112200  or r2, r4, r2
002aa0  97913200  or r3, r5, r3
002aa4  17812100  and r2, r3, r2
002aa8  b735010c  beq r2, zero, 6508
002aac  bb45090c  bneq r18, zero, 6512
002ab0  e342fffd  loadli.w r5,  -260(r30)
002ab4  37a00200  beq r5, zero, 8
002ab8  9f020900  addli r5, r18, 0
002abc  13611006  setle.f r2, zero, r1
002ac0  93e10006  setle.f r3, r1, zero
002ac4  17812100  and r2, r3, r2
002ac8  3b200100  bneq r2, zero, 8
002acc  9f820000  addli r5, r1, 0
002ad0  13e15904  setlt.f r2, r19, r5
002ad4  9f800200  addli r1, r5, 0
002ad8  3b200100  bneq r2, zero, 8
002adc  9f800900  addli r1, r19, 0
002ae0  1bb19900  slli r2, r19, 9
002ae4  9bb19200  slli r3, r5, 9
002ae8  1bc27901  srli r4, r19, 23
002aec  1f890200  addli r18, r5, 0
002af0  9bc27201  srli r5, r5, 23
002af4  13010100  seteq r2, r2, zero
002af8  93810100  seteq r3, r3, zero
002afc  1b02f20f  andi r4, r4, 255
002b00  9b82f20f  andi r5, r5, 255
002b04  1b72f20f  setlti r4, r4, 255
002b08  9bf2f20f  setlti r5, r5, 255
002b0c  17112200  or r2, r4, r2
002b10  97913200  or r3, r5, r3
002b14  17812100  and r2, r3, r2
002b18  3754010c  beq r2, zero, 6420
002b1c  63020ffe  loadli.w r4,  -256(r30)
002b20  3b64090c  bneq r18, zero, 6424
002b24  37a00900  beq r19, zero, 8
002b28  9f090900  addli r19, r18, 0
002b2c  13611006  setle.f r2, zero, r1
002b30  93e10006  setle.f r3, r1, zero
002b34  17812100  and r2, r3, r2
002b38  3b200100  bneq r2, zero, 8
002b3c  9f890000  addli r19, r1, 0
002b40  13613205  setlt.f r2, r4, r19
002b44  9f800900  addli r1, r19, 0
002b48  3b200100  bneq r2, zero, 8
002b4c  9f000200  addli r1, r4, 0
002b50  1b319200  slli r2, r4, 9
002b54  9bb19900  slli r3, r19, 9
002b58  1b427201  srli r4, r4, 23
002b5c  9bc27901  srli r5, r19, 23
002b60  13010100  seteq r2, r2, zero
002b64  93810100  seteq r3, r3, zero
002b68  1b02f20f  andi r4, r4, 255
002b6c  9b82f20f  andi r5, r5, 255
002b70  1b72f20f  setlti r4, r4, 255
002b74  9bf2f20f  setlti r5, r5, 255
002b78  17112200  or r2, r4, r2
002b7c  97913200  or r3, r5, r3
002b80  17812100  and r2, r3, r2
002b84  3703010c  beq r2, zero, 6336
002b88  3b93090c  bneq r19, zero, 6340
002b8c  e3020ffe  loadli.w r5,  -256(r30)
002b90  37a00200  beq r5, zero, 8
002b94  9f820900  addli r5, r19, 0
002b98  13611006  setle.f r2, zero, r1
002b9c  93e10006  setle.f r3, r1, zero
002ba0  17812100  and r2, r3, r2
002ba4  3b200100  bneq r2, zero, 8
002ba8  9f820000  addli r5, r1, 0
002bac  13e15304  setlt.f r2, r7, r5
002bb0  9f800200  addli r1, r5, 0
002bb4  3b200100  bneq r2, zero, 8
002bb8  9f800300  addli r1, r7, 0
002bbc  1bb19300  slli r2, r7, 9
002bc0  9bb19200  slli r3, r5, 9
002bc4  1bc27301  srli r4, r7, 23
002bc8  9f8a0200  addli r21, r5, 0
002bcc  9bc27201  srli r5, r5, 23
002bd0  13010100  seteq r2, r2, zero
002bd4  93810100  seteq r3, r3, zero
002bd8  1b02f20f  andi r4, r4, 255
002bdc  9b82f20f  andi r5, r5, 255
002be0  1b72f20f  setlti r4, r4, 255
002be4  9bf2f20f  setlti r5, r5, 255
002be8  17112200  or r2, r4, r2
002bec  97913200  or r3, r5, r3
002bf0  17812100  and r2, r3, r2
002bf4  b721010c  beq r2, zero, 6248
002bf8  63021ffe  loadli.w r4,  -248(r30)
002bfc  bbb10a0c  bneq r21, zero, 6252
002c00  37a00300  beq r7, zero, 8
002c04  9f830a00  addli r7, r21, 0
002c08  13611006  setle.f r2, zero, r1
002c0c  93e10006  setle.f r3, r1, zero
002c10  17812100  and r2, r3, r2
002c14  3b200100  bneq r2, zero, 8
002c18  9f830000  addli r7, r1, 0
002c1c  13617204  setlt.f r2, r4, r7
002c20  9f800300  addli r1, r7, 0
002c24  3b200100  bneq r2, zero, 8
002c28  9f000200  addli r1, r4, 0
002c2c  1b319200  slli r2, r4, 9
002c30  9bb19300  slli r3, r7, 9
002c34  1b427201  srli r4, r4, 23
002c38  9bc27301  srli r5, r7, 23
002c3c  13010100  seteq r2, r2, zero
002c40  93810100  seteq r3, r3, zero
002c44  1b02f20f  andi r4, r4, 255
002c48  9b82f20f  andi r5, r5, 255
002c4c  1b72f20f  setlti r4, r4, 255
002c50  9bf2f20f  setlti r5, r5, 255
002c54  17112200  or r2, r4, r2
002c58  97913200  or r3, r5, r3
002c5c  17812100  and r2, r3, r2
002c60  3b200100  bneq r2, zero, 8
002c64  ab00c07f  lui r1, 523264
002c68  37a00300  beq r7, zero, 8
002c6c  9f830000  addli r7, r1, 0
002c70  1f810300  addli r2, r7, 0
002c74  e3033ffd  loadli.w r7,  -360(r30)
002c78  e3021ffe  loadli.w r5,  -248(r30)
002c7c  37a00200  beq r5, zero, 8
002c80  9f020100  addli r5, r2, 0
002c84  13611006  setle.f r2, zero, r1
002c88  93e10006  setle.f r3, r1, zero
002c8c  e3494ffd  loadli.w r19,  -348(r30)
002c90  17812100  and r2, r3, r2
002c94  3b200100  bneq r2, zero, 8
002c98  9f820000  addli r5, r1, 0
002c9c  13e15d04  setlt.f r2, r27, r5
002ca0  e34a2ffd  loadli.w r21,  -364(r30)
002ca4  9f800200  addli r1, r5, 0
002ca8  3b200100  bneq r2, zero, 8
002cac  9f800d00  addli r1, r27, 0
002cb0  1bb19d00  slli r2, r27, 9
002cb4  9bb19200  slli r3, r5, 9
002cb8  1bc27d01  srli r4, r27, 23
002cbc  1f890200  addli r18, r5, 0
002cc0  9bc27201  srli r5, r5, 23
002cc4  13010100  seteq r2, r2, zero
002cc8  93810100  seteq r3, r3, zero
002ccc  1b02f20f  andi r4, r4, 255
002cd0  9b82f20f  andi r5, r5, 255
002cd4  1b72f20f  setlti r4, r4, 255
002cd8  9bf2f20f  setlti r5, r5, 255
002cdc  17112200  or r2, r4, r2
002ce0  97913200  or r3, r5, r3
002ce4  17812100  and r2, r3, r2
002ce8  373e010a  beq r2, zero, 6028
002cec  63022ffe  loadli.w r4,  -240(r30)
002cf0  3b4e090a  bneq r18, zero, 6032
002cf4  37a00d00  beq r27, zero, 8
002cf8  9f0d0900  addli r27, r18, 0
002cfc  13611006  setle.f r2, zero, r1
002d00  93e10006  setle.f r3, r1, zero
002d04  17812100  and r2, r3, r2
002d08  3b200100  bneq r2, zero, 8
002d0c  9f8d0000  addli r27, r1, 0
002d10  1361b205  setlt.f r2, r4, r27
002d14  9f800d00  addli r1, r27, 0
002d18  1f890a00  addli r18, r21, 0
002d1c  3b200100  bneq r2, zero, 8
002d20  9f000200  addli r1, r4, 0
002d24  1b319200  slli r2, r4, 9
002d28  9bb19d00  slli r3, r27, 9
002d2c  1b427201  srli r4, r4, 23
002d30  9bc27d01  srli r5, r27, 23
002d34  9f8a0900  addli r21, r19, 0
002d38  13010100  seteq r2, r2, zero
002d3c  93810100  seteq r3, r3, zero
002d40  1b02f20f  andi r4, r4, 255
002d44  9b82f20f  andi r5, r5, 255
002d48  1b72f20f  setlti r4, r4, 255
002d4c  9bf2f20f  setlti r5, r5, 255
002d50  17112200  or r2, r4, r2
002d54  97913200  or r3, r5, r3
002d58  17812100  and r2, r3, r2
002d5c  3b200100  bneq r2, zero, 8
002d60  ab00c07f  lui r1, 523264
002d64  9f890300  addli r19, r7, 0
002d68  37a00d00  beq r27, zero, 8
002d6c  9f8d0000  addli r27, r1, 0
002d70  e3022ffe  loadli.w r5,  -240(r30)
002d74  e343fffb  loadli.w r7,  -516(r30)
002d78  37a00200  beq r5, zero, 8
002d7c  9f820d00  addli r5, r27, 0
002d80  13611006  setle.f r2, zero, r1
002d84  93e10006  setle.f r3, r1, zero
002d88  17812100  and r2, r3, r2
002d8c  3b200100  bneq r2, zero, 8
002d90  9f820000  addli r5, r1, 0
002d94  13e15504  setlt.f r2, r11, r5
002d98  9f800200  addli r1, r5, 0
002d9c  3b200100  bneq r2, zero, 8
002da0  9f800500  addli r1, r11, 0
002da4  1bb19500  slli r2, r11, 9
002da8  9bb19200  slli r3, r5, 9
002dac  1bc27501  srli r4, r11, 23
002db0  9f8d0200  addli r27, r5, 0
002db4  9bc27201  srli r5, r5, 23
002db8  13010100  seteq r2, r2, zero
002dbc  93810100  seteq r3, r3, zero
002dc0  1b02f20f  andi r4, r4, 255
002dc4  9b82f20f  andi r5, r5, 255
002dc8  1b72f20f  setlti r4, r4, 255
002dcc  9bf2f20f  setlti r5, r5, 255
002dd0  17112200  or r2, r4, r2
002dd4  97913200  or r3, r5, r3
002dd8  17812100  and r2, r3, r2
002ddc  b74a010a  beq r2, zero, 5808
002de0  63023ffe  loadli.w r4,  -232(r30)
002de4  bbda0d0a  bneq r27, zero, 5812
002de8  37a00500  beq r11, zero, 8
002dec  9f850d00  addli r11, r27, 0
002df0  13611006  setle.f r2, zero, r1
002df4  93e10006  setle.f r3, r1, zero
002df8  17812100  and r2, r3, r2
002dfc  3b200100  bneq r2, zero, 8
002e00  9f850000  addli r11, r1, 0
002e04  1361b204  setlt.f r2, r4, r11
002e08  9f800500  addli r1, r11, 0
002e0c  3b200100  bneq r2, zero, 8
002e10  9f000200  addli r1, r4, 0
002e14  1b319200  slli r2, r4, 9
002e18  9bb19500  slli r3, r11, 9
002e1c  1b427201  srli r4, r4, 23
002e20  9bc27501  srli r5, r11, 23
002e24  13010100  seteq r2, r2, zero
002e28  93810100  seteq r3, r3, zero
002e2c  1b02f20f  andi r4, r4, 255
002e30  9b82f20f  andi r5, r5, 255
002e34  1b72f20f  setlti r4, r4, 255
002e38  9bf2f20f  setlti r5, r5, 255
002e3c  17112200  or r2, r4, r2
002e40  97913200  or r3, r5, r3
002e44  17812100  and r2, r3, r2
002e48  3779010a  beq r2, zero, 5724
002e4c  bb89050a  bneq r11, zero, 5728
002e50  e3023ffe  loadli.w r5,  -232(r30)
002e54  37a00200  beq r5, zero, 8
002e58  9f820500  addli r5, r11, 0
002e5c  13611006  setle.f r2, zero, r1
002e60  93e10006  setle.f r3, r1, zero
002e64  17812100  and r2, r3, r2
002e68  3b200100  bneq r2, zero, 8
002e6c  9f820000  addli r5, r1, 0
002e70  13615e04  setlt.f r2, r28, r5
002e74  e3052ffd  loadli.w r11,  -368(r30)
002e78  9f800200  addli r1, r5, 0
002e7c  3b200100  bneq r2, zero, 8
002e80  9f000e00  addli r1, r28, 0
002e84  1b319e00  slli r2, r28, 9
002e88  9bb19200  slli r3, r5, 9
002e8c  1b427e01  srli r4, r28, 23
002e90  9f8d0200  addli r27, r5, 0
002e94  9bc27201  srli r5, r5, 23
002e98  13010100  seteq r2, r2, zero
002e9c  93810100  seteq r3, r3, zero
002ea0  1b02f20f  andi r4, r4, 255
002ea4  9b82f20f  andi r5, r5, 255
002ea8  1b72f20f  setlti r4, r4, 255
002eac  9bf2f20f  setlti r5, r5, 255
002eb0  17112200  or r2, r4, r2
002eb4  97913200  or r3, r5, r3
002eb8  17812100  and r2, r3, r2
002ebc  3708010a  beq r2, zero, 5632
002ec0  63024ffe  loadli.w r4,  -224(r30)
002ec4  3b980d0a  bneq r27, zero, 5636
002ec8  37200e00  beq r28, zero, 8
002ecc  1f8e0d00  addli r28, r27, 0
002ed0  13611006  setle.f r2, zero, r1
002ed4  93e10006  setle.f r3, r1, zero
002ed8  17812100  and r2, r3, r2
002edc  3b200100  bneq r2, zero, 8
002ee0  1f8e0000  addli r28, r1, 0
002ee4  1361c205  setlt.f r2, r4, r28
002ee8  9f000e00  addli r1, r28, 0
002eec  9f8d0500  addli r27, r11, 0
002ef0  3b200100  bneq r2, zero, 8
002ef4  9f000200  addli r1, r4, 0
002ef8  1b319200  slli r2, r4, 9
002efc  9b319e00  slli r3, r28, 9
002f00  1b427201  srli r4, r4, 23
002f04  9b427e01  srli r5, r28, 23
002f08  13010100  seteq r2, r2, zero
002f0c  93810100  seteq r3, r3, zero
002f10  1b02f20f  andi r4, r4, 255
002f14  9b82f20f  andi r5, r5, 255
002f18  1b72f20f  setlti r4, r4, 255
002f1c  9bf2f20f  setlti r5, r5, 255
002f20  17112200  or r2, r4, r2
002f24  97913200  or r3, r5, r3
002f28  17812100  and r2, r3, r2
002f2c  b726010a  beq r2, zero, 5544
002f30  bb360e0a  bneq r28, zero, 5548
002f34  e3024ffe  loadli.w r5,  -224(r30)
002f38  37a00200  beq r5, zero, 8
002f3c  9f020e00  addli r5, r28, 0
002f40  13611006  setle.f r2, zero, r1
002f44  93e10006  setle.f r3, r1, zero
002f48  17812100  and r2, r3, r2
002f4c  3b200100  bneq r2, zero, 8
002f50  9f820000  addli r5, r1, 0
002f54  13615304  setlt.f r2, r6, r5
002f58  9f800200  addli r1, r5, 0
002f5c  3b200100  bneq r2, zero, 8
002f60  9f000300  addli r1, r6, 0
002f64  1b319300  slli r2, r6, 9
002f68  9bb19200  slli r3, r5, 9
002f6c  1b427301  srli r4, r6, 23
002f70  1f8e0200  addli r28, r5, 0
002f74  9bc27201  srli r5, r5, 23
002f78  13010100  seteq r2, r2, zero
002f7c  93810100  seteq r3, r3, zero
002f80  1b02f20f  andi r4, r4, 255
002f84  9b82f20f  andi r5, r5, 255
002f88  1b72f20f  setlti r4, r4, 255
002f8c  9bf2f20f  setlti r5, r5, 255
002f90  17112200  or r2, r4, r2
002f94  97913200  or r3, r5, r3
002f98  17812100  and r2, r3, r2
002f9c  3745010a  beq r2, zero, 5456
002fa0  63425ffe  loadli.w r4,  -212(r30)
002fa4  3b550e0a  bneq r28, zero, 5460
002fa8  37200300  beq r6, zero, 8
002fac  1f030e00  addli r6, r28, 0
002fb0  13611006  setle.f r2, zero, r1
002fb4  93e10006  setle.f r3, r1, zero
002fb8  17812100  and r2, r3, r2
002fbc  3b200100  bneq r2, zero, 8
002fc0  1f830000  addli r6, r1, 0
002fc4  13616204  setlt.f r2, r4, r6
002fc8  9f000300  addli r1, r6, 0
002fcc  3b200100  bneq r2, zero, 8
002fd0  9f000200  addli r1, r4, 0
002fd4  1b319200  slli r2, r4, 9
002fd8  9b319300  slli r3, r6, 9
002fdc  1b427201  srli r4, r4, 23
002fe0  9b427301  srli r5, r6, 23
002fe4  13010100  seteq r2, r2, zero
002fe8  93810100  seteq r3, r3, zero
002fec  1b02f20f  andi r4, r4, 255
002ff0  9b82f20f  andi r5, r5, 255
002ff4  1b72f20f  setlti r4, r4, 255
002ff8  9bf2f20f  setlti r5, r5, 255
002ffc  17112200  or r2, r4, r2
003000  97913200  or r3, r5, r3
003004  17812100  and r2, r3, r2
003008  b773010a  beq r2, zero, 5372
00300c  3b04030a  bneq r6, zero, 5376
003010  e3425ffe  loadli.w r5,  -212(r30)
003014  37a00200  beq r5, zero, 8
003018  9f020300  addli r5, r6, 0
00301c  13611006  setle.f r2, zero, r1
003020  93e10006  setle.f r3, r1, zero
003024  17812100  and r2, r3, r2
003028  3b200100  bneq r2, zero, 8
00302c  9f820000  addli r5, r1, 0
003030  13e15304  setlt.f r2, r7, r5
003034  6303cffd  loadli.w r6,  -288(r30)
003038  9f800200  addli r1, r5, 0
00303c  3b200100  bneq r2, zero, 8
003040  9f800300  addli r1, r7, 0
003044  1bb19300  slli r2, r7, 9
003048  9bb19200  slli r3, r5, 9
00304c  1bc27301  srli r4, r7, 23
003050  1f8e0200  addli r28, r5, 0
003054  9bc27201  srli r5, r5, 23
003058  13010100  seteq r2, r2, zero
00305c  93810100  seteq r3, r3, zero
003060  1b02f20f  andi r4, r4, 255
003064  9b82f20f  andi r5, r5, 255
003068  1b72f20f  setlti r4, r4, 255
00306c  9bf2f20f  setlti r5, r5, 255
003070  17112200  or r2, r4, r2
003074  97913200  or r3, r5, r3
003078  17812100  and r2, r3, r2
00307c  b702010a  beq r2, zero, 5280
003080  bb120e0a  bneq r28, zero, 5284
003084  37a00300  beq r7, zero, 8
003088  9f030e00  addli r7, r28, 0
00308c  13611006  setle.f r2, zero, r1
003090  93e10006  setle.f r3, r1, zero
003094  17812100  and r2, r3, r2
003098  3b200100  bneq r2, zero, 8
00309c  9f830000  addli r7, r1, 0
0030a0  13e17404  setlt.f r2, r9, r7
0030a4  9f800300  addli r1, r7, 0
0030a8  1f0e0300  addli r28, r6, 0
0030ac  3b200100  bneq r2, zero, 8
0030b0  9f800400  addli r1, r9, 0
0030b4  1bb19400  slli r2, r9, 9
0030b8  9bb19300  slli r3, r7, 9
0030bc  1bc27401  srli r4, r9, 23
0030c0  9bc27301  srli r5, r7, 23
0030c4  63031ffc  loadli.w r6,  -504(r30)
0030c8  13010100  seteq r2, r2, zero
0030cc  93810100  seteq r3, r3, zero
0030d0  1b02f20f  andi r4, r4, 255
0030d4  9b82f20f  andi r5, r5, 255
0030d8  1b72f20f  setlti r4, r4, 255
0030dc  9bf2f20f  setlti r5, r5, 255
0030e0  17112200  or r2, r4, r2
0030e4  97913200  or r3, r5, r3
0030e8  17812100  and r2, r3, r2
0030ec  3711010a  beq r2, zero, 5188
0030f0  3ba1030a  bneq r7, zero, 5192
0030f4  37a00400  beq r9, zero, 8
0030f8  9f840300  addli r9, r7, 0
0030fc  13611006  setle.f r2, zero, r1
003100  93e10006  setle.f r3, r1, zero
003104  17812100  and r2, r3, r2
003108  3b200100  bneq r2, zero, 8
00310c  9f840000  addli r9, r1, 0
003110  13619404  setlt.f r2, r8, r9
003114  e3431ffc  loadli.w r7,  -500(r30)
003118  9f800400  addli r1, r9, 0
00311c  3b200100  bneq r2, zero, 8
003120  9f000400  addli r1, r8, 0
003124  1b319400  slli r2, r8, 9
003128  9bb19400  slli r3, r9, 9
00312c  1b427401  srli r4, r8, 23
003130  9bc27401  srli r5, r9, 23
003134  13010100  seteq r2, r2, zero
003138  93810100  seteq r3, r3, zero
00313c  1b02f20f  andi r4, r4, 255
003140  9b82f20f  andi r5, r5, 255
003144  1b72f20f  setlti r4, r4, 255
003148  9bf2f20f  setlti r5, r5, 255
00314c  17112200  or r2, r4, r2
003150  97913200  or r3, r5, r3
003154  17812100  and r2, r3, r2
003158  b73f0108  beq r2, zero, 5100
00315c  bbcf0408  bneq r9, zero, 5104
003160  37200400  beq r8, zero, 8
003164  1f840400  addli r8, r9, 0
003168  13611006  setle.f r2, zero, r1
00316c  93e10006  setle.f r3, r1, zero
003170  17812100  and r2, r3, r2
003174  3b200100  bneq r2, zero, 8
003178  1f840000  addli r8, r1, 0
00317c  13618304  setlt.f r2, r6, r8
003180  9f000400  addli r1, r8, 0
003184  3b200100  bneq r2, zero, 8
003188  9f000300  addli r1, r6, 0
00318c  1b319300  slli r2, r6, 9
003190  9b319400  slli r3, r8, 9
003194  1b427301  srli r4, r6, 23
003198  9b427401  srli r5, r8, 23
00319c  13010100  seteq r2, r2, zero
0031a0  93810100  seteq r3, r3, zero
0031a4  1b02f20f  andi r4, r4, 255
0031a8  9b82f20f  andi r5, r5, 255
0031ac  1b72f20f  setlti r4, r4, 255
0031b0  9bf2f20f  setlti r5, r5, 255
0031b4  17112200  or r2, r4, r2
0031b8  97913200  or r3, r5, r3
0031bc  17812100  and r2, r3, r2
0031c0  376e0108  beq r2, zero, 5016
0031c4  3b7e0408  bneq r8, zero, 5020
0031c8  37200300  beq r6, zero, 8
0031cc  1f030400  addli r6, r8, 0
0031d0  13611006  setle.f r2, zero, r1
0031d4  93e10006  setle.f r3, r1, zero
0031d8  17812100  and r2, r3, r2
0031dc  3b200100  bneq r2, zero, 8
0031e0  1f830000  addli r6, r1, 0
0031e4  13e16304  setlt.f r2, r7, r6
0031e8  9f000300  addli r1, r6, 0
0031ec  3b200100  bneq r2, zero, 8
0031f0  9f800300  addli r1, r7, 0
0031f4  1bb19300  slli r2, r7, 9
0031f8  9b319300  slli r3, r6, 9
0031fc  1bc27301  srli r4, r7, 23
003200  9b427301  srli r5, r6, 23
003204  13010100  seteq r2, r2, zero
003208  93810100  seteq r3, r3, zero
00320c  1b02f20f  andi r4, r4, 255
003210  9b82f20f  andi r5, r5, 255
003214  1b72f20f  setlti r4, r4, 255
003218  9bf2f20f  setlti r5, r5, 255
00321c  17112200  or r2, r4, r2
003220  97913200  or r3, r5, r3
003224  17812100  and r2, r3, r2
003228  371d0108  beq r2, zero, 4932
00322c  3b2d0308  bneq r6, zero, 4936
003230  37a00300  beq r7, zero, 8
003234  9f030300  addli r7, r6, 0
003238  13611006  setle.f r2, zero, r1
00323c  93e10006  setle.f r3, r1, zero
003240  17812100  and r2, r3, r2
003244  3b200100  bneq r2, zero, 8
003248  9f830000  addli r7, r1, 0
00324c  e3006ffe  loadli.w r1,  -208(r30)
003250  73e07000  stores.w r7, 0(r1)
003254  00a00300  mfence { lm, sm, gm }
003258  80a10d04  csr_set csr3, r27
00325c  00d00100  sync_group
003260  e3006ffe  loadli.w r1,  -208(r30)
003264  efc00000  loads.w r1, 0(r1)
003268  0be11a18  sub.f.rn r2, r21, r1
00326c  0b621a18  sub.f.rn r4, r20, r1
003270  8be21918  sub.f.rn r5, r19, r1
003274  0b631918  sub.f.rn r6, r18, r1
003278  8be31818  sub.f.rn r7, r17, r1
00327c  0b641818  sub.f.rn r8, r16, r1
003280  8b651718  sub.f.rn r11, r14, r1
003284  0be81618  sub.f.rn r16, r13, r1
003288  0b691618  sub.f.rn r18, r12, r1
00328c  8b691b18  sub.f.rn r19, r22, r1
003290  0b6a1518  sub.f.rn r20, r10, r1
003294  8b6a1d18  sub.f.rn r21, r26, r1
003298  8be11c18  sub.f.rn r3, r25, r1
00329c  8be41718  sub.f.rn r9, r15, r1
0032a0  0beb1b18  sub.f.rn r22, r23, r1
0032a4  8b601c18  sub.f.rn r1, r24, r1
0032a8  8f080100  exp.f.rn r17, r2
0032ac  8f870100  exp.f.rn r15, r3
0032b0  0f070200  exp.f.rn r14, r4
0032b4  8f860200  exp.f.rn r13, r5
0032b8  0f050300  exp.f.rn r10, r6
0032bc  0f830000  exp.f.rn r6, r1
0032c0  0f860300  exp.f.rn r12, r7
0032c4  0f010800  exp.f.rn r2, r16
0032c8  8f030b00  exp.f.rn r7, r22
0032cc  0f0c0400  exp.f.rn r24, r8
0032d0  8f8c0400  exp.f.rn r25, r9
0032d4  0f8d0500  exp.f.rn r26, r11
0032d8  0f080900  exp.f.rn r16, r18
0032dc  8f820900  exp.f.rn r5, r19
0032e0  0f020a00  exp.f.rn r4, r20
0032e4  8f810a00  exp.f.rn r3, r21
0032e8  9f000004  addli r1, zero, 512
0032ec  e7426ffe  storeli.w r6, -212(r30)
0032f0  67027ffe  storeli.w r7, -224(r30)
0032f4  bf651e00  blt.s r28, r1, 376
0032f8  9f000000  addli r1, zero, 0
0032fc  db350000  j 428
003300  ab06c07f  lui r13, 523264
003304  9f870a00  addli r15, r21, 0
003308  b7dc0aec  beq r21, zero, -9420
00330c  9f870600  addli r15, r13, 0
003310  1f850c00  addli r10, r25, 0
003314  bbcc0cec  bneq r25, zero, -9424
003318  5b66fbff  j -9424
00331c  ab07c07f  lui r15, 523264
003320  373e05ec  beq r10, zero, -9332
003324  1f850700  addli r10, r15, 0
003328  9f060a00  addli r13, r20, 0
00332c  3b2e0aec  bneq r20, zero, -9336
003330  5b71fbff  j -9336
003334  ab07c07f  lui r15, 523264
003338  b79f06ec  beq r13, zero, -9244
00333c  9f860700  addli r13, r15, 0
003340  1f850900  addli r10, r19, 0
003344  bb8f09ec  bneq r19, zero, -9248
003348  5b7cfbff  j -9248
00334c  ab07c07f  lui r15, 523264
003350  b77005ee  beq r10, zero, -9156
003354  1f850700  addli r10, r15, 0
003358  9f060900  addli r13, r18, 0
00335c  bb6009ee  bneq r18, zero, -9160
003360  5b87fbff  j -9160
003364  2b07c07f  lui r14, 523264
003368  37d206ee  beq r13, zero, -9068
00336c  9f060700  addli r13, r14, 0
003370  1f850800  addli r10, r17, 0
003374  3bc208ee  bneq r17, zero, -9072
003378  5b92fbff  j -9072
00337c  2b06c07f  lui r12, 523264
003380  b73305ee  beq r10, zero, -8980
003384  1f050600  addli r10, r12, 0
003388  9f050800  addli r11, r16, 0
00338c  bb2308ee  bneq r16, zero, -8984
003390  5b9dfbff  j -8984
003394  2b05c07f  lui r10, 523264
003398  379505ee  beq r11, zero, -8892
00339c  9f050500  addli r11, r10, 0
0033a0  9f840700  addli r9, r15, 0
0033a4  3b8507ee  bneq r15, zero, -8896
0033a8  5ba8fbff  j -8896
0033ac  2b05c07f  lui r10, 523264
0033b0  37f604ee  beq r9, zero, -8804
0033b4  9f040500  addli r9, r10, 0
0033b8  1f040700  addli r8, r14, 0
0033bc  3b6607ee  bneq r14, zero, -8808
0033c0  5bb3fbff  j -8808
0033c4  ab04c07f  lui r9, 523264
0033c8  b75704ee  beq r8, zero, -8716
0033cc  1f840400  addli r8, r9, 0
0033d0  9f830600  addli r7, r13, 0
0033d4  bbc706ee  bneq r13, zero, -8720
0033d8  5bbefbff  j -8720
0033dc  2b04c07f  lui r8, 523264
0033e0  37b903ee  beq r7, zero, -8628
0033e4  9f030400  addli r7, r8, 0
0033e8  1f030600  addli r6, r12, 0
0033ec  3b2906ee  bneq r12, zero, -8632
0033f0  5bc9fbff  j -8632
0033f4  ab03c07f  lui r7, 523264
0033f8  b71a03ee  beq r6, zero, -8540
0033fc  1f830300  addli r6, r7, 0
003400  9f020b00  addli r5, r22, 0
003404  bb0a0bee  bneq r22, zero, -8544
003408  5bd4fbff  j -8544
00340c  2b03c07f  lui r6, 523264
003410  b7fb02ee  beq r5, zero, -8452
003414  9f020300  addli r5, r6, 0
003418  1f020500  addli r4, r10, 0
00341c  bb6b05ee  bneq r10, zero, -8456
003420  5bdffbff  j -8456
003424  ab02c07f  lui r5, 523264
003428  375d02ee  beq r4, zero, -8364
00342c  1f820200  addli r4, r5, 0
003430  9f010d00  addli r3, r26, 0
003434  3b4d0dee  bneq r26, zero, -8368
003438  5beafbff  j -8368
00343c  2b02c07f  lui r4, 523264
003440  b7be01ee  beq r3, zero, -8276
003444  9f010200  addli r3, r4, 0
003448  1f810b00  addli r2, r23, 0
00344c  bbae0bee  bneq r23, zero, -8280
003450  5bf5fbff  j -8280
003454  ab01c07f  lui r3, 523264
003458  371001f0  beq r2, zero, -8188
00345c  1f810100  addli r2, r3, 0
003460  9f000c00  addli r1, r24, 0
003464  3b000cf0  bneq r24, zero, -8192
003468  5b00fcff  j -8192
00346c  8be0f810  add.f.rn r1, r17, r15
003470  8b601710  add.f.rn r1, r14, r1
003474  8be01610  add.f.rn r1, r13, r1
003478  8b601510  add.f.rn r1, r10, r1
00347c  8b601610  add.f.rn r1, r12, r1
003480  8b601c10  add.f.rn r1, r24, r1
003484  8be01c10  add.f.rn r1, r25, r1
003488  8b601d10  add.f.rn r1, r26, r1
00348c  8b601110  add.f.rn r1, r2, r1
003490  8b601810  add.f.rn r1, r16, r1
003494  8be01210  add.f.rn r1, r5, r1
003498  8b601210  add.f.rn r1, r4, r1
00349c  8be01110  add.f.rn r1, r3, r1
0034a0  8be01310  add.f.rn r1, r7, r1
0034a4  8b601310  add.f.rn r1, r6, r1
0034a8  6343fffc  loadli.w r6,  -388(r30)
0034ac  73601300  stores.w r1, 0(r6)
0034b0  00a00300  mfence { lm, sm, gm }
0034b4  80a10d04  csr_set csr3, r27
0034b8  00d00100  sync_group
0034bc  e340bffd  loadli.w r1,  -292(r30)
0034c0  3ba80000  bneq r1, zero, 520
0034c4  63441ffd  loadli.w r8,  -372(r30)
0034c8  ef400400  loads.w r1, 0(r8)
0034cc  ef434400  loads.w r7, 4(r8)
0034d0  6f438400  loads.w r6, 8(r8)
0034d4  8be07010  add.f.rn r1, r1, r7
0034d8  ef43c400  loads.w r7, 12(r8)
0034dc  8be06010  add.f.rn r1, r1, r6
0034e0  6f430401  loads.w r6, 16(r8)
0034e4  8be07010  add.f.rn r1, r1, r7
0034e8  ef434401  loads.w r7, 20(r8)
0034ec  8be06010  add.f.rn r1, r1, r6
0034f0  6f438401  loads.w r6, 24(r8)
0034f4  8be07010  add.f.rn r1, r1, r7
0034f8  ef43c401  loads.w r7, 28(r8)
0034fc  8be06010  add.f.rn r1, r1, r6
003500  6f430402  loads.w r6, 32(r8)
003504  8be07010  add.f.rn r1, r1, r7
003508  ef434402  loads.w r7, 36(r8)
00350c  8be06010  add.f.rn r1, r1, r6
003510  6f438402  loads.w r6, 40(r8)
003514  8be07010  add.f.rn r1, r1, r7
003518  ef43c402  loads.w r7, 44(r8)
00351c  8be06010  add.f.rn r1, r1, r6
003520  6f430403  loads.w r6, 48(r8)
003524  8be07010  add.f.rn r1, r1, r7
003528  ef434403  loads.w r7, 52(r8)
00352c  8be06010  add.f.rn r1, r1, r6
003530  6f438403  loads.w r6, 56(r8)
003534  8be07010  add.f.rn r1, r1, r7
003538  ef43c403  loads.w r7, 60(r8)
00353c  8be06010  add.f.rn r1, r1, r6
003540  6f430404  loads.w r6, 64(r8)
003544  8be07010  add.f.rn r1, r1, r7
003548  ef434404  loads.w r7, 68(r8)
00354c  8be06010  add.f.rn r1, r1, r6
003550  6f438404  loads.w r6, 72(r8)
003554  8be07010  add.f.rn r1, r1, r7
003558  ef43c404  loads.w r7, 76(r8)
00355c  8be06010  add.f.rn r1, r1, r6
003560  6f430405  loads.w r6, 80(r8)
003564  8be07010  add.f.rn r1, r1, r7
003568  ef434405  loads.w r7, 84(r8)
00356c  8be06010  add.f.rn r1, r1, r6
003570  6f438405  loads.w r6, 88(r8)
003574  8be07010  add.f.rn r1, r1, r7
003578  ef43c405  loads.w r7, 92(r8)
00357c  8be06010  add.f.rn r1, r1, r6
003580  6f430406  loads.w r6, 96(r8)
003584  8be07010  add.f.rn r1, r1, r7
003588  ef434406  loads.w r7, 100(r8)
00358c  8be06010  add.f.rn r1, r1, r6
003590  6f438406  loads.w r6, 104(r8)
003594  8be07010  add.f.rn r1, r1, r7
003598  ef43c406  loads.w r7, 108(r8)
00359c  8be06010  add.f.rn r1, r1, r6
0035a0  6f430407  loads.w r6, 112(r8)
0035a4  8be07010  add.f.rn r1, r1, r7
0035a8  ef434407  loads.w r7, 116(r8)
0035ac  8be06010  add.f.rn r1, r1, r6
0035b0  6f438407  loads.w r6, 120(r8)
0035b4  8be07010  add.f.rn r1, r1, r7
0035b8  ef43c407  loads.w r7, 124(r8)
0035bc  8be06010  add.f.rn r1, r1, r6
0035c0  6f430408  loads.w r6, 128(r8)
0035c4  8be07010  add.f.rn r1, r1, r7
0035c8  ef434408  loads.w r7, 132(r8)
0035cc  8be06010  add.f.rn r1, r1, r6
0035d0  6f438408  loads.w r6, 136(r8)
0035d4  8be07010  add.f.rn r1, r1, r7
0035d8  ef43c408  loads.w r7, 140(r8)
0035dc  8be06010  add.f.rn r1, r1, r6
0035e0  6f430409  loads.w r6, 144(r8)
0035e4  8be07010  add.f.rn r1, r1, r7
0035e8  ef434409  loads.w r7, 148(r8)
0035ec  8be06010  add.f.rn r1, r1, r6
0035f0  6f438409  loads.w r6, 152(r8)
0035f4  8be07010  add.f.rn r1, r1, r7
0035f8  ef43c409  loads.w r7, 156(r8)
0035fc  8be06010  add.f.rn r1, r1, r6
003600  6f43040a  loads.w r6, 160(r8)
003604  8be07010  add.f.rn r1, r1, r7
003608  ef43440a  loads.w r7, 164(r8)
00360c  8be06010  add.f.rn r1, r1, r6
003610  6f43840a  loads.w r6, 168(r8)
003614  8be07010  add.f.rn r1, r1, r7
003618  ef43c40a  loads.w r7, 172(r8)
00361c  8be06010  add.f.rn r1, r1, r6
003620  6f43040b  loads.w r6, 176(r8)
003624  8be07010  add.f.rn r1, r1, r7
003628  ef43440b  loads.w r7, 180(r8)
00362c  8be06010  add.f.rn r1, r1, r6
003630  6f43840b  loads.w r6, 184(r8)
003634  8be07010  add.f.rn r1, r1, r7
003638  ef43c40b  loads.w r7, 188(r8)
00363c  8be06010  add.f.rn r1, r1, r6
003640  6f43040c  loads.w r6, 192(r8)
003644  8be07010  add.f.rn r1, r1, r7
003648  ef43440c  loads.w r7, 196(r8)
00364c  8be06010  add.f.rn r1, r1, r6
003650  6f43840c  loads.w r6, 200(r8)
003654  8be07010  add.f.rn r1, r1, r7
003658  ef43c40c  loads.w r7, 204(r8)
00365c  8be06010  add.f.rn r1, r1, r6
003660  6f43040d  loads.w r6, 208(r8)
003664  8be07010  add.f.rn r1, r1, r7
003668  ef43440d  loads.w r7, 212(r8)
00366c  8be06010  add.f.rn r1, r1, r6
003670  6f43840d  loads.w r6, 216(r8)
003674  8be07010  add.f.rn r1, r1, r7
003678  ef43c40d  loads.w r7, 220(r8)
00367c  8be06010  add.f.rn r1, r1, r6
003680  6f43040e  loads.w r6, 224(r8)
003684  8be07010  add.f.rn r1, r1, r7
003688  ef43440e  loads.w r7, 228(r8)
00368c  8be06010  add.f.rn r1, r1, r6
003690  6f43840e  loads.w r6, 232(r8)
003694  8be07010  add.f.rn r1, r1, r7
003698  ef43c40e  loads.w r7, 236(r8)
00369c  8be06010  add.f.rn r1, r1, r6
0036a0  6f43040f  loads.w r6, 240(r8)
0036a4  8be07010  add.f.rn r1, r1, r7
0036a8  ef43440f  loads.w r7, 244(r8)
0036ac  8be06010  add.f.rn r1, r1, r6
0036b0  6f43840f  loads.w r6, 248(r8)
0036b4  8be07010  add.f.rn r1, r1, r7
0036b8  ef43c40f  loads.w r7, 252(r8)
0036bc  8be06010  add.f.rn r1, r1, r6
0036c0  8be07010  add.f.rn r1, r1, r7
0036c4  73601400  stores.w r1, 0(r8)
0036c8  00a00300  mfence { lm, sm, gm }
0036cc  80a10d04  csr_set csr3, r27
0036d0  00d00100  sync_group
0036d4  e3401ffd  loadli.w r1,  -372(r30)
0036d8  2b03803f  lui r6, 260096
0036dc  ab03807f  lui r7, 522240
0036e0  efc00000  loads.w r1, 0(r1)
0036e4  8f001318  div.f.rn r1, r6, r1
0036e8  63437ffe  loadli.w r6,  -196(r30)
0036ec  8be81820  mul.f.rn r17, r17, r1
0036f0  17846800  and r8, r17, r6
0036f4  93838304  setlt.u r7, r7, r8
0036f8  670b8ffc  storeli.w r8, -336(r30)
0036fc  3bb00300  bneq r7, zero, 12
003700  670f1ffd  storeli.w r17, -272(r30)
003704  5b020000  j 16
003708  ab034000  lui r7, 1024
00370c  97937800  or r7, r17, r7
003710  670f7ffc  storeli.w r7, -272(r30)
003714  8be71720  mul.f.rn r15, r15, r1
003718  ab03807f  lui r7, 522240
00371c  17846700  and r8, r15, r6
003720  e74a8ffc  storeli.w r8, -340(r30)
003724  13848304  setlt.u r8, r7, r8
003728  3b300400  bneq r8, zero, 12
00372c  e74ffffc  storeli.w r15, -260(r30)
003730  5b020000  j 16
003734  ab034000  lui r7, 1024
003738  97937700  or r7, r15, r7
00373c  e74f7ffc  storeli.w r7, -260(r30)
003740  8b6a1720  mul.f.rn r21, r14, r1
003744  ab03807f  lui r7, 522240
003748  17846a00  and r8, r21, r6
00374c  93848304  setlt.u r9, r7, r8
003750  3bb00400  bneq r9, zero, 12
003754  67005fff  storeli.w r21, -256(r30)
003758  5b020000  j 16
00375c  ab034000  lui r7, 1024
003760  97937a00  or r7, r21, r7
003764  67007ffe  storeli.w r7, -256(r30)
003768  8be61620  mul.f.rn r13, r13, r1
00376c  ab03807f  lui r7, 522240
003770  97846600  and r9, r13, r6
003774  93859304  setlt.u r11, r7, r9
003778  e70a9ffc  storeli.w r9, -344(r30)
00377c  3bb00500  bneq r11, zero, 12
003780  e700dffe  storeli.w r13, -248(r30)
003784  5b020000  j 16
003788  ab034000  lui r7, 1024
00378c  97937600  or r7, r13, r7
003790  e7007ffe  storeli.w r7, -248(r30)
003794  0b651520  mul.f.rn r10, r10, r1
003798  ab03807f  lui r7, 522240
00379c  97056500  and r11, r10, r6
0037a0  1387b304  setlt.u r14, r7, r11
0037a4  3b300700  bneq r14, zero, 12
0037a8  6701affe  storeli.w r10, -240(r30)
0037ac  5b020000  j 16
0037b0  ab034000  lui r7, 1024
0037b4  97137500  or r7, r10, r7
0037b8  67017ffe  storeli.w r7, -240(r30)
0037bc  8b6b1620  mul.f.rn r23, r12, r1
0037c0  ab03807f  lui r7, 522240
0037c4  17866b00  and r12, r23, r6
0037c8  1387c304  setlt.u r14, r7, r12
0037cc  3b300700  bneq r14, zero, 12
0037d0  e7017fff  storeli.w r23, -232(r30)
0037d4  5b020000  j 16
0037d8  ab034000  lui r7, 1024
0037dc  97937b00  or r7, r23, r7
0037e0  e7017ffe  storeli.w r7, -232(r30)
0037e4  0b6c1c20  mul.f.rn r24, r24, r1
0037e8  ab03807f  lui r7, 522240
0037ec  17076c00  and r14, r24, r6
0037f0  1389e304  setlt.u r18, r7, r14
0037f4  3b300900  bneq r18, zero, 12
0037f8  674b8ffd  storeli.w r24, -332(r30)
0037fc  5b020000  j 16
003800  ab034000  lui r7, 1024
003804  97137c00  or r7, r24, r7
003808  674b7ffc  storeli.w r7, -332(r30)
00380c  8bec1c20  mul.f.rn r25, r25, r1
003810  ab03807f  lui r7, 522240
003814  17896c00  and r18, r25, r6
003818  93892305  setlt.u r19, r7, r18
00381c  3bb00900  bneq r19, zero, 12
003820  e70b9ffd  storeli.w r25, -328(r30)
003824  5b020000  j 16
003828  ab034000  lui r7, 1024
00382c  97937c00  or r7, r25, r7
003830  e70b7ffc  storeli.w r7, -328(r30)
003834  0b6d1d20  mul.f.rn r26, r26, r1
003838  ab03807f  lui r7, 522240
00383c  97096d00  and r19, r26, r6
003840  138a3305  setlt.u r20, r7, r19
003844  3b300a00  bneq r20, zero, 12
003848  e74baffd  storeli.w r26, -324(r30)
00384c  5b020000  j 16
003850  ab034000  lui r7, 1024
003854  97137d00  or r7, r26, r7
003858  e74b7ffc  storeli.w r7, -324(r30)
00385c  8b6d1120  mul.f.rn r27, r2, r1
003860  2b01807f  lui r2, 522240
003864  178a6d00  and r20, r27, r6
003868  13014105  setlt.u r2, r2, r20
00386c  3b300100  bneq r2, zero, 12
003870  670cbffd  storeli.w r27, -320(r30)
003874  5b020000  j 16
003878  2b014000  lui r2, 1024
00387c  17912d00  or r2, r27, r2
003880  670c2ffc  storeli.w r2, -320(r30)
003884  0b6e1820  mul.f.rn r28, r16, r1
003888  2b01807f  lui r2, 522240
00388c  ab03807f  lui r7, 522240
003890  170b6e00  and r22, r28, r6
003894  13016105  setlt.u r2, r2, r22
003898  3b300100  bneq r2, zero, 12
00389c  674ccffd  storeli.w r28, -316(r30)
0038a0  5b020000  j 16
0038a4  2b014000  lui r2, 1024
0038a8  17112e00  or r2, r28, r2
0038ac  674c2ffc  storeli.w r2, -316(r30)
0038b0  8be21220  mul.f.rn r5, r5, r1
0038b4  17886200  and r16, r5, r6
0038b8  13810305  setlt.u r2, r7, r16
0038bc  3b300100  bneq r2, zero, 12
0038c0  670e5ffc  storeli.w r5, -288(r30)
0038c4  5b020000  j 16
0038c8  2b014000  lui r2, 1024
0038cc  17912200  or r2, r5, r2
0038d0  670e2ffc  storeli.w r2, -288(r30)
0038d4  0b621220  mul.f.rn r4, r4, r1
0038d8  17016200  and r2, r4, r6
0038dc  674a2ffc  storeli.w r2, -348(r30)
0038e0  13812304  setlt.u r2, r7, r2
0038e4  3b300100  bneq r2, zero, 12
0038e8  9f040200  addli r9, r4, 0
0038ec  db010000  j 12
0038f0  2b014000  lui r2, 1024
0038f4  97142200  or r9, r4, r2
0038f8  8be11120  mul.f.rn r3, r3, r1
0038fc  17816100  and r2, r3, r6
003900  670a2ffc  storeli.w r2, -352(r30)
003904  13812304  setlt.u r2, r7, r2
003908  3b300100  bneq r2, zero, 12
00390c  e70e3ffc  storeli.w r3, -280(r30)
003910  5b020000  j 16
003914  2b014000  lui r2, 1024
003918  17912100  or r2, r3, r2
00391c  e70e2ffc  storeli.w r2, -280(r30)
003920  63014ffe  loadli.w r2,  -224(r30)
003924  0b611120  mul.f.rn r2, r2, r1
003928  17036100  and r6, r2, r6
00392c  e7496ffc  storeli.w r6, -356(r30)
003930  13836304  setlt.u r6, r7, r6
003934  3b300300  bneq r6, zero, 12
003938  67022ffe  storeli.w r2, -224(r30)
00393c  5b020000  j 16
003940  2b034000  lui r6, 1024
003944  17136100  or r6, r2, r6
003948  67026ffe  storeli.w r6, -224(r30)
00394c  63435ffe  loadli.w r6,  -212(r30)
003950  8b601320  mul.f.rn r1, r6, r1
003954  63437ffe  loadli.w r6,  -196(r30)
003958  17836000  and r6, r1, r6
00395c  e7096ffc  storeli.w r6, -360(r30)
003960  13836304  setlt.u r6, r7, r6
003964  3b300300  bneq r6, zero, 12
003968  1f830000  addli r6, r1, 0
00396c  db010000  j 12
003970  2b034000  lui r6, 1024
003974  17936000  or r6, r1, r6
003978  e7426ffe  storeli.w r6, -212(r30)
00397c  63037ffe  loadli.w r6,  -200(r30)
003980  e3036ffd  loadli.w r7,  -336(r30)
003984  13037304  setlt.u r6, r6, r7
003988  bb100300  bneq r6, zero, 36
00398c  1bc30801  srli r6, r17, 16
003990  1b031300  andi r6, r6, 1
003994  0b936810  add.s r6, r17, r6
003998  e3486ffe  loadli.w r17,  -204(r30)
00399c  0b131311  add.s r6, r6, r17
0039a0  ab08ffff  lui r17, 1048560
0039a4  17031301  and r6, r6, r17
0039a8  670f6ffc  storeli.w r6, -272(r30)
0039ac  63037ffe  loadli.w r6,  -200(r30)
0039b0  e3435ffd  loadli.w r7,  -340(r30)
0039b4  13037304  setlt.u r6, r6, r7
0039b8  bb100300  bneq r6, zero, 36
0039bc  1bc30701  srli r6, r15, 16
0039c0  e3436ffe  loadli.w r7,  -204(r30)
0039c4  1b031300  andi r6, r6, 1
0039c8  0b936710  add.s r6, r15, r6
0039cc  0b137310  add.s r6, r6, r7
0039d0  ab03ffff  lui r7, 1048560
0039d4  17037300  and r6, r6, r7
0039d8  e74f6ffc  storeli.w r6, -260(r30)
0039dc  63037ffe  loadli.w r6,  -200(r30)
0039e0  e3087ffd  loadli.w r17,  -328(r30)
0039e4  13038304  setlt.u r6, r6, r8
0039e8  bb100300  bneq r6, zero, 36
0039ec  1bc30a01  srli r6, r21, 16
0039f0  e3436ffe  loadli.w r7,  -204(r30)
0039f4  1b031300  andi r6, r6, 1
0039f8  0b936a10  add.s r6, r21, r6
0039fc  0b137310  add.s r6, r6, r7
003a00  ab03ffff  lui r7, 1048560
003a04  17037300  and r6, r6, r7
003a08  67006ffe  storeli.w r6, -256(r30)
003a0c  63047ffe  loadli.w r8,  -200(r30)
003a10  63035ffd  loadli.w r6,  -344(r30)
003a14  e3477ffd  loadli.w r15,  -324(r30)
003a18  13036404  setlt.u r6, r8, r6
003a1c  bb100300  bneq r6, zero, 36
003a20  1bc30601  srli r6, r13, 16
003a24  e3436ffe  loadli.w r7,  -204(r30)
003a28  1b031300  andi r6, r6, 1
003a2c  0b936610  add.s r6, r13, r6
003a30  0b137310  add.s r6, r6, r7
003a34  ab03ffff  lui r7, 1048560
003a38  17037300  and r6, r6, r7
003a3c  e7006ffe  storeli.w r6, -248(r30)
003a40  1303b404  setlt.u r6, r8, r11
003a44  e34a6ffd  loadli.w r21,  -332(r30)
003a48  bb100300  bneq r6, zero, 36
003a4c  1b430501  srli r6, r10, 16
003a50  e3436ffe  loadli.w r7,  -204(r30)
003a54  1b031300  andi r6, r6, 1
003a58  0b136510  add.s r6, r10, r6
003a5c  0b137310  add.s r6, r6, r7
003a60  ab03ffff  lui r7, 1048560
003a64  17037300  and r6, r6, r7
003a68  67016ffe  storeli.w r6, -240(r30)
003a6c  1303c404  setlt.u r6, r8, r12
003a70  e3458ffd  loadli.w r11,  -316(r30)
003a74  ab064000  lui r13, 1024
003a78  bb100300  bneq r6, zero, 36
003a7c  1bc30b01  srli r6, r23, 16
003a80  e3436ffe  loadli.w r7,  -204(r30)
003a84  1b031300  andi r6, r6, 1
003a88  0b936b10  add.s r6, r23, r6
003a8c  0b137310  add.s r6, r6, r7
003a90  ab03ffff  lui r7, 1048560
003a94  17037300  and r6, r6, r7
003a98  e7016ffe  storeli.w r6, -232(r30)
003a9c  1303e404  setlt.u r6, r8, r14
003aa0  63466ffe  loadli.w r12,  -204(r30)
003aa4  6305cffd  loadli.w r10,  -288(r30)
003aa8  3b700300  bneq r6, zero, 28
003aac  1b430c01  srli r6, r24, 16
003ab0  ab03ffff  lui r7, 1048560
003ab4  1b031300  andi r6, r6, 1
003ab8  0b136c10  add.s r6, r24, r6
003abc  0b13c310  add.s r6, r6, r12
003ac0  970a7300  and r21, r6, r7
003ac4  13032405  setlt.u r6, r8, r18
003ac8  63078ffd  loadli.w r14,  -320(r30)
003acc  ab03ffff  lui r7, 1048560
003ad0  3b600300  bneq r6, zero, 24
003ad4  1bc30c01  srli r6, r25, 16
003ad8  1b031300  andi r6, r6, 1
003adc  0b936c10  add.s r6, r25, r6
003ae0  0b13c310  add.s r6, r6, r12
003ae4  97087300  and r17, r6, r7
003ae8  13033405  setlt.u r6, r8, r19
003aec  3b600300  bneq r6, zero, 24
003af0  1b430d01  srli r6, r26, 16
003af4  1b031300  andi r6, r6, 1
003af8  0b136d10  add.s r6, r26, r6
003afc  0b13c310  add.s r6, r6, r12
003b00  97077300  and r15, r6, r7
003b04  13034405  setlt.u r6, r8, r20
003b08  e309dffd  loadli.w r19,  -280(r30)
003b0c  63093ffe  loadli.w r18,  -232(r30)
003b10  b7230300  beq r6, zero, 232
003b14  13036405  setlt.u r6, r8, r22
003b18  b7730300  beq r6, zero, 252
003b1c  13030405  setlt.u r6, r8, r16
003b20  3b600300  bneq r6, zero, 24
003b24  1bc30201  srli r6, r5, 16
003b28  1b031300  andi r6, r6, 1
003b2c  8b926210  add.s r5, r5, r6
003b30  8b92c210  add.s r5, r5, r12
003b34  17857200  and r10, r5, r7
003b38  e3424ffd  loadli.w r5,  -348(r30)
003b3c  2b03807f  lui r6, 522240
003b40  93025404  setlt.u r5, r8, r5
003b44  3be00200  bneq r5, zero, 24
003b48  9b420201  srli r5, r4, 16
003b4c  9b821200  andi r5, r5, 1
003b50  0b125210  add.s r4, r4, r5
003b54  0b12c210  add.s r4, r4, r12
003b58  97047200  and r9, r4, r7
003b5c  63024ffd  loadli.w r4,  -352(r30)
003b60  e3427ffe  loadli.w r5,  -196(r30)
003b64  13024404  setlt.u r4, r8, r4
003b68  3b600200  bneq r4, zero, 24
003b6c  1bc20101  srli r4, r3, 16
003b70  1b021200  andi r4, r4, 1
003b74  8b914110  add.s r3, r3, r4
003b78  8b91c110  add.s r3, r3, r12
003b7c  97897100  and r19, r3, r7
003b80  e3413ffd  loadli.w r3,  -356(r30)
003b84  93013404  setlt.u r3, r8, r3
003b88  3bf00100  bneq r3, zero, 28
003b8c  9b410101  srli r3, r2, 16
003b90  9b811100  andi r3, r3, 1
003b94  0b113110  add.s r2, r2, r3
003b98  0b11c110  add.s r2, r2, r12
003b9c  17017100  and r2, r2, r7
003ba0  67022ffe  storeli.w r2, -224(r30)
003ba4  63013ffd  loadli.w r2,  -360(r30)
003ba8  63021ffe  loadli.w r4,  -248(r30)
003bac  13012404  setlt.u r2, r8, r2
003bb0  3b700100  bneq r2, zero, 28
003bb4  1bc10001  srli r2, r1, 16
003bb8  1b011100  andi r2, r2, 1
003bbc  8b902010  add.s r1, r1, r2
003bc0  8b90c010  add.s r1, r1, r12
003bc4  97807000  and r1, r1, r7
003bc8  e7421ffe  storeli.w r1, -212(r30)
003bcc  6301effd  loadli.w r2,  -272(r30)
003bd0  e3030ffe  loadli.w r7,  -256(r30)
003bd4  e341fffd  loadli.w r3,  -260(r30)
003bd8  97005100  and r1, r2, r5
003bdc  93001304  setlt.u r1, r6, r1
003be0  3bd10000  bneq r1, zero, 84
003be4  9b400101  srli r1, r2, 16
003be8  9b801000  andi r1, r1, 1
003bec  8b101110  add.s r1, r2, r1
003bf0  8b90c010  add.s r1, r1, r12
003bf4  db080000  j 68
003bf8  1bc30d01  srli r6, r27, 16
003bfc  1b031300  andi r6, r6, 1
003c00  0b936d10  add.s r6, r27, r6
003c04  0b13c310  add.s r6, r6, r12
003c08  17077300  and r14, r6, r7
003c0c  13036405  setlt.u r6, r8, r22
003c10  3b3c03fe  bneq r6, zero, -244
003c14  1b430e01  srli r6, r28, 16
003c18  1b031300  andi r6, r6, 1
003c1c  0b136e10  add.s r6, r28, r6
003c20  0b13c310  add.s r6, r6, r12
003c24  97057300  and r11, r6, r7
003c28  13030405  setlt.u r6, r8, r16
003c2c  b76b03fe  beq r6, zero, -264
003c30  5be1ffff  j -248
003c34  9710d100  or r1, r2, r13
003c38  17815100  and r2, r3, r5
003c3c  9bc00001  srli r1, r1, 16
003c40  13012304  setlt.u r2, r6, r2
003c44  73101ff8  store.h r1, -128(r30)
003c48  3b600100  bneq r2, zero, 24
003c4c  9bc00101  srli r1, r3, 16
003c50  9b801000  andi r1, r1, 1
003c54  8b901110  add.s r1, r3, r1
003c58  8b90c010  add.s r1, r1, r12
003c5c  5b010000  j 8
003c60  9790d100  or r1, r3, r13
003c64  17815300  and r2, r7, r5
003c68  9f010fff  addli r3, r30, -128
003c6c  9bc00001  srli r1, r1, 16
003c70  13012304  setlt.u r2, r6, r2
003c74  9b912100  ori r3, r3, 2
003c78  e74f3ffc  storeli.w r3, -260(r30)
003c7c  73901100  store.h r1, 0(r3)
003c80  3b600100  bneq r2, zero, 24
003c84  9bc00301  srli r1, r7, 16
003c88  9b801000  andi r1, r1, 1
003c8c  8b901310  add.s r1, r7, r1
003c90  8b90c010  add.s r1, r1, r12
003c94  5b010000  j 8
003c98  9790d300  or r1, r7, r13
003c9c  17015200  and r2, r4, r5
003ca0  e3012ffe  loadli.w r3,  -240(r30)
003ca4  9bc00001  srli r1, r1, 16
003ca8  13012304  setlt.u r2, r6, r2
003cac  73121ff8  store.h r1, -124(r30)
003cb0  3b600100  bneq r2, zero, 24
003cb4  9b400201  srli r1, r4, 16
003cb8  9b801000  andi r1, r1, 1
003cbc  8b101210  add.s r1, r4, r1
003cc0  8b90c010  add.s r1, r1, r12
003cc4  5b010000  j 8
003cc8  9710d200  or r1, r4, r13
003ccc  17815100  and r2, r3, r5
003cd0  9bc00001  srli r1, r1, 16
003cd4  13012304  setlt.u r2, r6, r2
003cd8  73131ff8  store.h r1, -122(r30)
003cdc  3b600100  bneq r2, zero, 24
003ce0  9bc00101  srli r1, r3, 16
003ce4  9b801000  andi r1, r1, 1
003ce8  8b901110  add.s r1, r3, r1
003cec  8b90c010  add.s r1, r1, r12
003cf0  5b010000  j 8
003cf4  9790d100  or r1, r3, r13
003cf8  17015900  and r2, r18, r5
003cfc  9bc00001  srli r1, r1, 16
003d00  13012304  setlt.u r2, r6, r2
003d04  73141ff8  store.h r1, -120(r30)
003d08  3b600100  bneq r2, zero, 24
003d0c  9b400901  srli r1, r18, 16
003d10  9b801000  andi r1, r1, 1
003d14  8b101910  add.s r1, r18, r1
003d18  8b90c010  add.s r1, r1, r12
003d1c  5b010000  j 8
003d20  9710d900  or r1, r18, r13
003d24  17815a00  and r2, r21, r5
003d28  9bc00001  srli r1, r1, 16
003d2c  13012304  setlt.u r2, r6, r2
003d30  73151ff8  store.h r1, -118(r30)
003d34  3b600100  bneq r2, zero, 24
003d38  9bc00a01  srli r1, r21, 16
003d3c  9b801000  andi r1, r1, 1
003d40  8b901a10  add.s r1, r21, r1
003d44  8b90c010  add.s r1, r1, r12
003d48  5b010000  j 8
003d4c  9790da00  or r1, r21, r13
003d50  17815800  and r2, r17, r5
003d54  9bc00001  srli r1, r1, 16
003d58  13012304  setlt.u r2, r6, r2
003d5c  73161ff8  store.h r1, -116(r30)
003d60  3b600100  bneq r2, zero, 24
003d64  9bc00801  srli r1, r17, 16
003d68  9b801000  andi r1, r1, 1
003d6c  8b901810  add.s r1, r17, r1
003d70  8b90c010  add.s r1, r1, r12
003d74  5b010000  j 8
003d78  9790d800  or r1, r17, r13
003d7c  17815700  and r2, r15, r5
003d80  9bc00001  srli r1, r1, 16
003d84  13012304  setlt.u r2, r6, r2
003d88  73171ff8  store.h r1, -114(r30)
003d8c  3b600100  bneq r2, zero, 24
003d90  9bc00701  srli r1, r15, 16
003d94  9b801000  andi r1, r1, 1
003d98  8b901710  add.s r1, r15, r1
003d9c  8b90c010  add.s r1, r1, r12
003da0  5b010000  j 8
003da4  9790d700  or r1, r15, r13
003da8  17015700  and r2, r14, r5
003dac  9bc00001  srli r1, r1, 16
003db0  13012304  setlt.u r2, r6, r2
003db4  73181ff8  store.h r1, -112(r30)
003db8  3b600100  bneq r2, zero, 24
003dbc  9b400701  srli r1, r14, 16
003dc0  9b801000  andi r1, r1, 1
003dc4  8b101710  add.s r1, r14, r1
003dc8  8b90c010  add.s r1, r1, r12
003dcc  5b010000  j 8
003dd0  9710d700  or r1, r14, r13
003dd4  17815500  and r2, r11, r5
003dd8  9bc00001  srli r1, r1, 16
003ddc  13012304  setlt.u r2, r6, r2
003de0  73191ff8  store.h r1, -110(r30)
003de4  3b600100  bneq r2, zero, 24
003de8  9bc00501  srli r1, r11, 16
003dec  9b801000  andi r1, r1, 1
003df0  8b901510  add.s r1, r11, r1
003df4  8b90c010  add.s r1, r1, r12
003df8  5b010000  j 8
003dfc  9790d500  or r1, r11, r13
003e00  17015500  and r2, r10, r5
003e04  9bc00001  srli r1, r1, 16
003e08  13012304  setlt.u r2, r6, r2
003e0c  731a1ff8  store.h r1, -108(r30)
003e10  3b600100  bneq r2, zero, 24
003e14  9b400501  srli r1, r10, 16
003e18  9b801000  andi r1, r1, 1
003e1c  8b101510  add.s r1, r10, r1
003e20  8b90c010  add.s r1, r1, r12
003e24  5b010000  j 8
003e28  9710d500  or r1, r10, r13
003e2c  17815400  and r2, r9, r5
003e30  9bc00001  srli r1, r1, 16
003e34  13012304  setlt.u r2, r6, r2
003e38  731b1ff8  store.h r1, -106(r30)
003e3c  3b600100  bneq r2, zero, 24
003e40  9bc00401  srli r1, r9, 16
003e44  9b801000  andi r1, r1, 1
003e48  8b901410  add.s r1, r9, r1
003e4c  8b93c010  add.s r7, r1, r12
003e50  5b010000  j 8
003e54  9793d400  or r7, r9, r13
003e58  e300effc  loadli.w r1,  -400(r30)
003e5c  63079ffd  loadli.w r14,  -312(r30)
003e60  63419ffc  loadli.w r2,  -436(r30)
003e64  e3427ffc  loadli.w r5,  -452(r30)
003e68  e3047ffc  loadli.w r9,  -456(r30)
003e6c  9bc30301  srli r7, r7, 16
003e70  731c7ff8  store.h r7, -104(r30)
003e74  0b92e010  add.s r4, r1, r14
003e78  e340dffc  loadli.w r1,  -404(r30)
003e7c  0b1ee110  add.s r28, r2, r14
003e80  2b01807f  lui r2, 522240
003e84  8b94e410  add.s r9, r9, r14
003e88  8b92e210  add.s r5, r5, r14
003e8c  e7019ffe  storeli.w r9, -232(r30)
003e90  8b91e010  add.s r3, r1, r14
003e94  e300dffc  loadli.w r1,  -408(r30)
003e98  0b93e010  add.s r6, r1, r14
003e9c  e340cffc  loadli.w r1,  -412(r30)
003ea0  8b95e010  add.s r11, r1, r14
003ea4  e300cffc  loadli.w r1,  -416(r30)
003ea8  0b95e010  add.s r10, r1, r14
003eac  e340bffc  loadli.w r1,  -420(r30)
003eb0  0b99e010  add.s r18, r1, r14
003eb4  e300bffc  loadli.w r1,  -424(r30)
003eb8  8b98e010  add.s r17, r1, r14
003ebc  e340affc  loadli.w r1,  -428(r30)
003ec0  0b98e010  add.s r16, r1, r14
003ec4  e300affc  loadli.w r1,  -432(r30)
003ec8  8b97e010  add.s r15, r1, r14
003ecc  e3407ffe  loadli.w r1,  -196(r30)
003ed0  97801900  and r1, r19, r1
003ed4  13041104  setlt.u r8, r2, r1
003ed8  63418ffc  loadli.w r2,  -444(r30)
003edc  e3009ffc  loadli.w r1,  -440(r30)
003ee0  8b1de110  add.s r27, r2, r14
003ee4  63018ffc  loadli.w r2,  -448(r30)
003ee8  8b90e010  add.s r1, r1, r14
003eec  0b11e110  add.s r2, r2, r14
003ef0  3b600400  bneq r8, zero, 24
003ef4  9bc30901  srli r7, r19, 16
003ef8  9b831300  andi r7, r7, 1
003efc  8b937910  add.s r7, r19, r7
003f00  0b97c310  add.s r14, r7, r12
003f04  5b010000  j 8
003f08  1797d900  or r14, r19, r13
003f0c  b3130228  sext_int2long r[8:9], r4
003f10  9f140000  addli r9, zero, 1
003f14  b3910128  sext_int2long r[4:5], r3
003f18  1b470701  srli r14, r14, 16
003f1c  97b39302  sll.d r[8:9], r[8:9], r9
003f20  97b19102  sll.d r[4:5], r[4:5], r9
003f24  731deff8  store.h r14, -102(r30)
003f28  73387ff0  store.d r[8:9], -240(r30)
003f2c  33130328  sext_int2long r[7:8], r6
003f30  73343ff0  store.d r[4:5], -248(r30)
003f34  63044ffe  loadli.w r8,  -224(r30)
003f38  97319302  sll.d r[4:5], r[7:8], r9
003f3c  33130528  sext_int2long r[7:8], r10
003f40  73383fee  store.d r[4:5], -272(r30)
003f44  b3910528  sext_int2long r[4:5], r11
003f48  17369302  sll.d r[13:14], r[7:8], r9
003f4c  33930828  sext_int2long r[7:8], r17
003f50  17b59102  sll.d r[11:12], r[4:5], r9
003f54  b3110928  sext_int2long r[4:5], r18
003f58  973b9302  sll.d r[24:25], r[7:8], r9
003f5c  33930728  sext_int2long r[7:8], r15
003f60  97ba9102  sll.d r[22:23], r[4:5], r9
003f64  b3110828  sext_int2long r[4:5], r16
003f68  97399302  sll.d r[20:21], r[7:8], r9
003f6c  33930028  sext_int2long r[7:8], r1
003f70  e3407ffe  loadli.w r1,  -196(r30)
003f74  97bc9102  sll.d r[26:27], r[4:5], r9
003f78  b3110e28  sext_int2long r[4:5], r28
003f7c  97001400  and r1, r8, r1
003f80  97b89102  sll.d r[18:19], r[4:5], r9
003f84  97319302  sll.d r[4:5], r[7:8], r9
003f88  73343fec  store.d r[4:5], -312(r30)
003f8c  b3910d28  sext_int2long r[4:5], r27
003f90  97bd9102  sll.d r[28:29], r[4:5], r9
003f94  ab01807f  lui r3, 522240
003f98  93831104  setlt.u r7, r3, r1
003f9c  b3910228  sext_int2long r[4:5], r5
003fa0  e3023ffe  loadli.w r5,  -232(r30)
003fa4  b3100128  sext_int2long r[2:3], r2
003fa8  97b09002  sll.d r[2:3], r[2:3], r9
003fac  97b19102  sll.d r[4:5], r[4:5], r9
003fb0  b3920228  sext_int2long r[6:7], r5
003fb4  97b29202  sll.d r[6:7], r[6:7], r9
003fb8  3bf00300  bneq r7, zero, 28
003fbc  9b430401  srli r7, r8, 16
003fc0  9b831300  andi r7, r7, 1
003fc4  8b137410  add.s r7, r8, r7
003fc8  63446ffe  loadli.w r8,  -204(r30)
003fcc  0b978310  add.s r14, r7, r8
003fd0  db010000  j 12
003fd4  ab034000  lui r7, 1024
003fd8  17177400  or r14, r8, r7
003fdc  eb530f01  load.d r[8:9], 16(r30)
003fe0  eb570fed  load.d r[16:17], -304(r30)
003fe4  8ba7f310  add.ul r[16:17], r[8:9], r[16:17]
003fe8  8ba4a310  add.ul r[10:11], r[8:9], r[11:12]
003fec  8ba01310  add.ul r[2:3], r[8:9], r[2:3]
003ff0  8bac9311  add.ul r[26:27], r[8:9], r[26:27]
003ff4  8ba93311  add.ul r[20:21], r[8:9], r[20:21]
003ff8  8ba81311  add.ul r[18:19], r[8:9], r[18:19]
003ffc  8badb311  add.ul r[28:29], r[8:9], r[28:29]
004000  7334ffee  store.d r[16:17], -280(r30)
004004  eb570ff1  load.d r[16:17], -240(r30)
004008  73381ff0  store.d r[2:3], -240(r30)
00400c  8ba03310  add.ul r[2:3], r[8:9], r[4:5]
004010  73301ff2  store.d r[2:3], -224(r30)
004014  9b400701  srli r1, r14, 16
004018  0ba15310  add.ul r[3:4], r[8:9], r[6:7]
00401c  8ba7f310  add.ul r[16:17], r[8:9], r[16:17]
004020  733c2ff0  store.d r[3:4], -232(r30)
004024  731e1ff8  store.h r1, -100(r30)
004028  7330ffee  store.d r[16:17], -288(r30)
00402c  eb578ff0  load.d r[16:17], -248(r30)
004030  73349ff0  store.d r[10:11], -248(r30)
004034  8ba4c310  add.ul r[10:11], r[8:9], r[13:14]
004038  8ba55311  add.ul r[12:13], r[8:9], r[22:23]
00403c  8baa7311  add.ul r[22:23], r[8:9], r[24:25]
004040  e3467ffe  loadli.w r13,  -196(r30)
004044  634c5ffe  loadli.w r24,  -212(r30)
004048  ab0b807f  lui r23, 522240
00404c  8ba7f310  add.ul r[16:17], r[8:9], r[16:17]
004050  9706dc00  and r13, r24, r13
004054  7330fff0  store.d r[16:17], -256(r30)
004058  eb570fef  load.d r[16:17], -272(r30)
00405c  9386db04  setlt.u r13, r23, r13
004060  8ba7f310  add.ul r[16:17], r[8:9], r[16:17]
004064  7338ffee  store.d r[16:17], -272(r30)
004068  eb578fec  load.d r[16:17], -312(r30)
00406c  8ba7f310  add.ul r[16:17], r[8:9], r[16:17]
004070  378806e0  beq r13, zero, -15872
004074  ab004000  lui r1, 1024
004078  97101c00  or r1, r24, r1
00407c  5b41f8ff  j -15864
004080  2b01c07f  lui r2, 523264
004084  b7e101ea  beq r3, zero, -11144
004088  9f010100  addli r3, r2, 0
00408c  bbd100ea  bneq r1, zero, -11148
004090  db8efaff  j -11148
004094  2b01c07f  lui r2, 523264
004098  37e300ea  beq r1, zero, -11048
00409c  9f000100  addli r1, r2, 0
0040a0  674c7ffb  storeli.w r23, -572(r30)
0040a4  3b5308ea  bneq r16, zero, -11052
0040a8  db9afaff  j -11052
0040ac  2b08c07f  lui r16, 523264
0040b0  1f0b0e00  addli r22, r28, 0
0040b4  378e08ea  beq r17, zero, -10368
0040b8  9f080800  addli r17, r16, 0
0040bc  634e5ffb  loadli.w r28,  -596(r30)
0040c0  bbfd07ea  bneq r15, zero, -10372
0040c4  dbeffaff  j -10372
0040c8  2b08c07f  lui r16, 523264
0040cc  e30a9ffb  loadli.w r21,  -568(r30)
0040d0  37df07ea  beq r15, zero, -10284
0040d4  9f070800  addli r15, r16, 0
0040d8  3b4f05ea  bneq r10, zero, -10288
0040dc  5bfafaff  j -10288
0040e0  ab07c07f  lui r15, 523264
0040e4  63098ffb  loadli.w r18,  -576(r30)
0040e8  b73005ec  beq r10, zero, -10196
0040ec  1f850700  addli r10, r15, 0
0040f0  bba006ec  bneq r13, zero, -10200
0040f4  5b05fbff  j -10200
0040f8  2b05c07f  lui r10, 523264
0040fc  e308affb  loadli.w r17,  -560(r30)
004100  378206ec  beq r13, zero, -10112
004104  9f060500  addli r13, r10, 0
004108  bbf109ec  bneq r19, zero, -10116
00410c  db0ffbff  j -10116
004110  2b05c07f  lui r10, 523264
004114  37d309ec  beq r19, zero, -10028
004118  9f090500  addli r19, r10, 0
00411c  3b4301ec  bneq r2, zero, -10032
004120  5b1afbff  j -10032
004124  2b05c07f  lui r10, 523264
004128  63487ffb  loadli.w r16,  -580(r30)
00412c  b73401ec  beq r2, zero, -9940
004130  1f010500  addli r2, r10, 0
004134  bba403ec  bneq r7, zero, -9944
004138  5b25fbff  j -9944
00413c  2b01c07f  lui r2, 523264
004140  e3077ffb  loadli.w r15,  -584(r30)
004144  378603ec  beq r7, zero, -9856
004148  9f030100  addli r7, r2, 0
00414c  bb7503ec  bneq r6, zero, -9860
004150  db2ffbff  j -9860
004154  2b01c07f  lui r2, 523264
004158  63076ffb  loadli.w r14,  -592(r30)
00415c  375703ec  beq r6, zero, -9772
004160  1f030100  addli r6, r2, 0
004164  3bc701ec  bneq r3, zero, -9776
004168  5b3afbff  j -9776
00416c  2b01c07f  lui r2, 523264
004170  e3463ffc  loadli.w r13,  -484(r30)
004174  b7a801ec  beq r3, zero, -9688
004178  9f010100  addli r3, r2, 0
00417c  bb9805ec  bneq r11, zero, -9692
004180  db44fbff  j -9692
004184  2b01c07f  lui r2, 523264
004188  b7f905ec  beq r11, zero, -9604
00418c  9f050100  addli r11, r2, 0
004190  bb6906ec  bneq r12, zero, -9608
004194  5b4ffbff  j -9608
004198  2b01c07f  lui r2, 523264
00419c  375b06ec  beq r12, zero, -9516
0041a0  1f060100  addli r12, r2, 0
0041a4  3bcb00ec  bneq r1, zero, -9520
0041a8  5b5afbff  j -9520
0041ac  2b01c07f  lui r2, 523264
0041b0  63452ffc  loadli.w r10,  -492(r30)
0041b4  b7bc00ec  beq r1, zero, -9428
0041b8  9f000100  addli r1, r2, 0
0041bc  bb2c0cec  bneq r24, zero, -9432
0041c0  5b65fbff  j -9432
0041c4  ab00c07f  lui r1, 523264
0041c8  370e0cec  beq r24, zero, -9344
0041cc  1f8c0000  addli r24, r1, 0
0041d0  bbfd02ec  bneq r5, zero, -9348
0041d4  db6ffbff  j -9348
0041d8  ab00c07f  lui r1, 523264
0041dc  37ef02ec  beq r5, zero, -9256
0041e0  9f820000  addli r5, r1, 0
0041e4  3b5f02ec  bneq r4, zero, -9260
0041e8  db7afbff  j -9260
0041ec  ab00c07f  lui r1, 523264
0041f0  e303dffb  loadli.w r7,  -536(r30)
0041f4  b74002ee  beq r4, zero, -9168
0041f8  1f820000  addli r4, r1, 0
0041fc  bbb00dee  bneq r27, zero, -9172
004200  db85fbff  j -9172
004204  ab00c07f  lui r1, 523264
004208  37a20dee  beq r27, zero, -9080
00420c  9f8d0000  addli r27, r1, 0
004210  3b1204ee  bneq r8, zero, -9084
004214  db90fbff  j -9084
004218  ab00c07f  lui r1, 523264
00421c  b70304ee  beq r8, zero, -8992
004220  1f840000  addli r8, r1, 0
004224  3bf304ee  bneq r9, zero, -8996
004228  db9bfbff  j -8996
00422c  ab00c07f  lui r1, 523264
004230  b7e404ee  beq r9, zero, -8904
004234  9f840000  addli r9, r1, 0
004238  bb540eee  bneq r28, zero, -8908
00423c  dba6fbff  j -8908
004240  ab00c07f  lui r1, 523264
004244  37460eee  beq r28, zero, -8816
004248  1f8e0000  addli r28, r1, 0
00424c  3b3607ee  bneq r14, zero, -8820
004250  dbb1fbff  j -8820
004254  ab00c07f  lui r1, 523264
004258  6303fffb  loadli.w r6,  -520(r30)
00425c  b72707ee  beq r14, zero, -8728
004260  1f870000  addli r14, r1, 0
004264  bb9702ee  bneq r5, zero, -8732
004268  dbbcfbff  j -8732
00426c  ab00c07f  lui r1, 523264
004270  370907ee  beq r14, zero, -8640
004274  1f870000  addli r14, r1, 0
004278  bb780aee  bneq r20, zero, -8644
00427c  dbc7fbff  j -8644
004280  ab00c07f  lui r1, 523264
004284  63025ffd  loadli.w r4,  -344(r30)
004288  375a0aee  beq r20, zero, -8556
00428c  1f8a0000  addli r20, r1, 0
004290  3bca07ee  bneq r15, zero, -8560
004294  5bd2fbff  j -8560
004298  ab00c07f  lui r1, 523264
00429c  b7bb07ee  beq r15, zero, -8468
0042a0  9f870000  addli r15, r1, 0
0042a4  e3025ffd  loadli.w r5,  -344(r30)
0042a8  bbab02ee  bneq r5, zero, -8472
0042ac  5bddfbff  j -8472
0042b0  ab00c07f  lui r1, 523264
0042b4  63425ffd  loadli.w r4,  -340(r30)
0042b8  379d07ee  beq r15, zero, -8380
0042bc  9f870000  addli r15, r1, 0
0042c0  3b0d08ee  bneq r16, zero, -8384
0042c4  5be8fbff  j -8384
0042c8  ab00c07f  lui r1, 523264
0042cc  376e08ee  beq r16, zero, -8296
0042d0  1f880000  addli r16, r1, 0
0042d4  e3425ffd  loadli.w r5,  -340(r30)
0042d8  3bde02ee  bneq r5, zero, -8300
0042dc  dbf2fbff  j -8300
0042e0  ab00c07f  lui r1, 523264
0042e4  63026ffd  loadli.w r4,  -336(r30)
0042e8  b74f08ee  beq r16, zero, -8208
0042ec  1f880000  addli r16, r1, 0
0042f0  bb3f09ee  bneq r18, zero, -8212
0042f4  dbfdfbff  j -8212
0042f8  ab00c07f  lui r1, 523264
0042fc  371109f0  beq r18, zero, -8124
004300  1f890000  addli r18, r1, 0
004304  e3026ffd  loadli.w r5,  -336(r30)
004308  3b8102f0  bneq r5, zero, -8128
00430c  5b08fcff  j -8128
004310  ab00c07f  lui r1, 523264
004314  63426ffd  loadli.w r4,  -332(r30)
004318  377209f0  beq r18, zero, -8036
00431c  1f890000  addli r18, r1, 0
004320  3be20bf0  bneq r23, zero, -8040
004324  5b13fcff  j -8040
004328  ab00c07f  lui r1, 523264
00432c  b7c30bf0  beq r23, zero, -7952
004330  9f8b0000  addli r23, r1, 0
004334  e3426ffd  loadli.w r5,  -332(r30)
004338  bbb302f0  bneq r5, zero, -7956
00433c  db1dfcff  j -7956
004340  ab00c07f  lui r1, 523264
004344  37a50bf0  beq r23, zero, -7864
004348  9f8b0000  addli r23, r1, 0
00434c  3b950af0  bneq r21, zero, -7868
004350  db28fcff  j -7868
004354  ab00c07f  lui r1, 523264
004358  63027ffd  loadli.w r4,  -328(r30)
00435c  37f60af0  beq r21, zero, -7780
004360  9f8a0000  addli r21, r1, 0
004364  3b660df0  bneq r26, zero, -7784
004368  5b33fcff  j -7784
00436c  ab00c07f  lui r1, 523264
004370  63028ffd  loadli.w r4,  -320(r30)
004374  374c0df0  beq r26, zero, -7408
004378  1f8d0000  addli r26, r1, 0
00437c  3bbc08f0  bneq r17, zero, -7412
004380  db61fcff  j -7412
004384  ab00c07f  lui r1, 523264
004388  37020bf2  beq r22, zero, -7040
00438c  1f8b0000  addli r22, r1, 0
004390  e3428ffd  loadli.w r5,  -316(r30)
004394  bbf102f2  bneq r5, zero, -7044
004398  db8ffcff  j -7044
00439c  ab00c07f  lui r1, 523264
0043a0  6302dffd  loadli.w r4,  -280(r30)
0043a4  37630bf2  beq r22, zero, -6952
0043a8  1f8b0000  addli r22, r1, 0
0043ac  3bd308f2  bneq r17, zero, -6956
0043b0  db9afcff  j -6956
0043b4  ab00c07f  lui r1, 523264
0043b8  b7b408f2  beq r17, zero, -6868
0043bc  9f880000  addli r17, r1, 0
0043c0  e302dffd  loadli.w r5,  -280(r30)
0043c4  bba402f2  bneq r5, zero, -6872
0043c8  5ba5fcff  j -6872
0043cc  ab00c07f  lui r1, 523264
0043d0  6302effd  loadli.w r4,  -272(r30)
0043d4  37b608f2  beq r17, zero, -6772
0043d8  9f880000  addli r17, r1, 0
0043dc  3ba609f2  bneq r19, zero, -6776
0043e0  5bb1fcff  j -6776
0043e4  ab00c07f  lui r1, 523264
0043e8  b7a709f2  beq r19, zero, -6680
0043ec  9f890000  addli r19, r1, 0
0043f0  e302effd  loadli.w r5,  -272(r30)
0043f4  bb9702f2  bneq r5, zero, -6684
0043f8  dbbcfcff  j -6684
0043fc  ab00c07f  lui r1, 523264
004400  6342fffd  loadli.w r4,  -260(r30)
004404  378909f2  beq r19, zero, -6592
004408  9f890000  addli r19, r1, 0
00440c  bb7809f2  bneq r18, zero, -6596
004410  dbc7fcff  j -6596
004414  ab00c07f  lui r1, 523264
004418  376a09f2  beq r18, zero, -6504
00441c  1f890000  addli r18, r1, 0
004420  e342fffd  loadli.w r5,  -260(r30)
004424  3bda02f2  bneq r5, zero, -6508
004428  dbd2fcff  j -6508
00442c  ab00c07f  lui r1, 523264
004430  63020ffe  loadli.w r4,  -256(r30)
004434  b74b09f2  beq r18, zero, -6416
004438  1f890000  addli r18, r1, 0
00443c  bbbb09f2  bneq r19, zero, -6420
004440  dbddfcff  j -6420
004444  ab00c07f  lui r1, 523264
004448  379d09f2  beq r19, zero, -6332
00444c  9f890000  addli r19, r1, 0
004450  e3020ffe  loadli.w r5,  -256(r30)
004454  3b8d02f2  bneq r5, zero, -6336
004458  5be8fcff  j -6336
00445c  ab00c07f  lui r1, 523264
004460  63021ffe  loadli.w r4,  -248(r30)
004464  37fe0af2  beq r21, zero, -6244
004468  9f8a0000  addli r21, r1, 0
00446c  3bee03f2  bneq r7, zero, -6248
004470  5bf3fcff  j -6248
004474  ab00c07f  lui r1, 523264
004478  63022ffe  loadli.w r4,  -240(r30)
00447c  b76109f4  beq r18, zero, -6024
004480  1f890000  addli r18, r1, 0
004484  bbd10df4  bneq r27, zero, -6028
004488  db0efdff  j -6028
00448c  ab00c07f  lui r1, 523264
004490  63023ffe  loadli.w r4,  -232(r30)
004494  37d50df4  beq r27, zero, -5804
004498  9f8d0000  addli r27, r1, 0
00449c  3bc505f4  bneq r11, zero, -5808
0044a0  5b2afdff  j -5808
0044a4  ab00c07f  lui r1, 523264
0044a8  b7a605f4  beq r11, zero, -5720
0044ac  9f850000  addli r11, r1, 0
0044b0  e3023ffe  loadli.w r5,  -232(r30)
0044b4  bb9602f4  bneq r5, zero, -5724
0044b8  db34fdff  j -5724
0044bc  ab00c07f  lui r1, 523264
0044c0  63024ffe  loadli.w r4,  -224(r30)
0044c4  37980df4  beq r27, zero, -5628
0044c8  9f8d0000  addli r27, r1, 0
0044cc  3b080ef4  bneq r28, zero, -5632
0044d0  5b40fdff  j -5632
0044d4  ab00c07f  lui r1, 523264
0044d8  37790ef4  beq r28, zero, -5540
0044dc  1f8e0000  addli r28, r1, 0
0044e0  e3024ffe  loadli.w r5,  -224(r30)
0044e4  3be902f4  bneq r5, zero, -5544
0044e8  5b4bfdff  j -5544
0044ec  ab00c07f  lui r1, 523264
0044f0  63425ffe  loadli.w r4,  -212(r30)
0044f4  b75a0ef4  beq r28, zero, -5452
0044f8  1f8e0000  addli r28, r1, 0
0044fc  bb4a03f4  bneq r6, zero, -5456
004500  5b56fdff  j -5456
004504  ab00c07f  lui r1, 523264
004508  372c03f4  beq r6, zero, -5368
00450c  1f830000  addli r6, r1, 0
004510  e3425ffe  loadli.w r5,  -212(r30)
004514  3b9c02f4  bneq r5, zero, -5372
004518  db60fdff  j -5372
00451c  ab00c07f  lui r1, 523264
004520  b71d0ef4  beq r28, zero, -5276
004524  1f8e0000  addli r28, r1, 0
004528  bb8d03f4  bneq r7, zero, -5280
00452c  5b6cfdff  j -5280
004530  ab00c07f  lui r1, 523264
004534  378f03f4  beq r7, zero, -5184
004538  9f830000  addli r7, r1, 0
00453c  bbfe04f4  bneq r9, zero, -5188
004540  db77fdff  j -5188
004544  ab00c07f  lui r1, 523264
004548  37e004f6  beq r9, zero, -5096
00454c  9f840000  addli r9, r1, 0
004550  3b5004f6  bneq r8, zero, -5100
004554  db82fdff  j -5100
004558  ab00c07f  lui r1, 523264
00455c  b73104f6  beq r8, zero, -5012
004560  1f840000  addli r8, r1, 0
004564  bb2103f6  bneq r6, zero, -5016
004568  5b8dfdff  j -5016
00456c  ab00c07f  lui r1, 523264
004570  370303f6  beq r6, zero, -4928
004574  1f830000  addli r6, r1, 0
004578  bbf203f6  bneq r7, zero, -4932
00457c  db97fdff  j -4932
004580  9f0e0ffb  addli sp, r30, -640
004584  9f8e0e05  addli sp, sp, 640
004588  00a00300  mfence { lm, sm, gm }
00458c  00100000  exit
004590  00100000  exit
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
