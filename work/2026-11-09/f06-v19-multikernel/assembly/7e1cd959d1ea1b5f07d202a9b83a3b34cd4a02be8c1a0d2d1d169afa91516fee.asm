; SHA-256 7e1cd959d1ea1b5f07d202a9b83a3b34cd4a02be8c1a0d2d1d169afa91516fee
; P800 Cluster · XTDK LLVM 19 · 4427 / 4427 words decoded
; bound names: triton_unk_fused_0
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
00014c  4b46a220  ble.s r4, r10, 16784
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
00018c  670f1ffc  storeli.w r1, -272(r30)
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
00022c  1f040fff  addli r8, r30, -128
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
000258  9b9af0ff  ori r21, r1, 4095
00025c  9b10f1ff  ori r1, r2, 4095
000260  e7031ffe  storeli.w r1, -200(r30)
000264  9f200000  addli r1, zero, 2
000268  e7435fff  storeli.w r21, -196(r30)
00026c  fe8100e0  vmmov mr3, r1
000270  5b410000  j 520
000274  e3415ffe  loadli.w r3,  -212(r30)
000278  63025ffe  loadli.w r4,  -216(r30)
00027c  9f230000  addli r7, zero, 2
000280  1f040fff  addli r8, r30, -128
000284  1f630400  addli r6, r8, 6
000288  b3910100  float2bfloat.rn r3, r3
00028c  33120200  float2bfloat.rn r4, r4
000290  73103ff8  store.h r3, -128(r30)
000294  e3414ffe  loadli.w r3,  -220(r30)
000298  73114ff8  store.h r4, -126(r30)
00029c  63024ffe  loadli.w r4,  -224(r30)
0002a0  b3910100  float2bfloat.rn r3, r3
0002a4  33120200  float2bfloat.rn r4, r4
0002a8  73123ff8  store.h r3, -124(r30)
0002ac  e3413ffe  loadli.w r3,  -228(r30)
0002b0  73134ff8  store.h r4, -122(r30)
0002b4  63023ffe  loadli.w r4,  -232(r30)
0002b8  b3910100  float2bfloat.rn r3, r3
0002bc  33120200  float2bfloat.rn r4, r4
0002c0  73143ff8  store.h r3, -120(r30)
0002c4  e3412ffe  loadli.w r3,  -236(r30)
0002c8  73154ff8  store.h r4, -118(r30)
0002cc  63022ffe  loadli.w r4,  -240(r30)
0002d0  b3910100  float2bfloat.rn r3, r3
0002d4  33120200  float2bfloat.rn r4, r4
0002d8  73163ff8  store.h r3, -116(r30)
0002dc  e3411ffe  loadli.w r3,  -244(r30)
0002e0  73174ff8  store.h r4, -114(r30)
0002e4  63021ffe  loadli.w r4,  -248(r30)
0002e8  b3910100  float2bfloat.rn r3, r3
0002ec  33120200  float2bfloat.rn r4, r4
0002f0  73183ff8  store.h r3, -112(r30)
0002f4  e3410ffe  loadli.w r3,  -252(r30)
0002f8  73194ff8  store.h r4, -110(r30)
0002fc  63020ffe  loadli.w r4,  -256(r30)
000300  b3910100  float2bfloat.rn r3, r3
000304  33120200  float2bfloat.rn r4, r4
000308  731a3ff8  store.h r3, -108(r30)
00030c  e341fffd  loadli.w r3,  -260(r30)
000310  731b4ff8  store.h r4, -106(r30)
000314  6302fffd  loadli.w r4,  -264(r30)
000318  b3910100  float2bfloat.rn r3, r3
00031c  33120200  float2bfloat.rn r4, r4
000320  731c3ff8  store.h r3, -104(r30)
000324  e341effd  loadli.w r3,  -268(r30)
000328  731d4ff8  store.h r4, -102(r30)
00032c  33920200  float2bfloat.rn r4, r5
000330  9f220400  addli r5, r8, 2
000334  731f4ff8  store.h r4, -98(r30)
000338  2b0200f0  lui r4, 983040
00033c  b3910100  float2bfloat.rn r3, r3
000340  17924300  or r4, r7, r4
000344  731e3ff8  store.h r3, -100(r30)
000348  ab0100f0  lui r3, 983040
00034c  00a00000  mfence { lm }
000350  eb5b8feb  load.d r[24:25], -328(r30)
000354  97913300  or r3, r7, r3
000358  ffb18b00  s_lm2gm r3, r8, 0(r[24:25])
00035c  eb5b0feb  load.d r[24:25], -336(r30)
000360  9f410400  addli r3, r8, 4
000364  7fb25b00  s_lm2gm r4, r5, 0(r[24:25])
000368  2b0200f0  lui r4, 983040
00036c  eb5b8fec  load.d r[24:25], -312(r30)
000370  ab0200f0  lui r5, 983040
000374  17924300  or r4, r7, r4
000378  97925300  or r5, r7, r5
00037c  7fb23b00  s_lm2gm r4, r3, 0(r[24:25])
000380  eb510fec  load.d r[4:5], -320(r30)
000384  eb5b8fed  load.d r[24:25], -296(r30)
000388  ffb26100  s_lm2gm r5, r6, 0(r[4:5])
00038c  ab0200f0  lui r5, 983040
000390  2b0300f0  lui r6, 983040
000394  9f011400  addli r3, r8, 8
000398  1f221400  addli r4, r8, 10
00039c  97925300  or r5, r7, r5
0003a0  17936300  or r6, r7, r6
0003a4  ffb23b00  s_lm2gm r5, r3, 0(r[24:25])
0003a8  7fb34500  s_lm2gm r6, r4, 0(r[12:13])
0003ac  ab0200f0  lui r5, 983040
0003b0  2b0300f0  lui r6, 983040
0003b4  9f411400  addli r3, r8, 12
0003b8  1f621400  addli r4, r8, 14
0003bc  97925300  or r5, r7, r5
0003c0  17936300  or r6, r7, r6
0003c4  ffb23600  s_lm2gm r5, r3, 0(r[14:15])
0003c8  7fb34900  s_lm2gm r6, r4, 0(r[20:21])
0003cc  ab0200f0  lui r5, 983040
0003d0  2b0300f0  lui r6, 983040
0003d4  9f012400  addli r3, r8, 16
0003d8  1f222400  addli r4, r8, 18
0003dc  97925300  or r5, r7, r5
0003e0  17936300  or r6, r7, r6
0003e4  ffb23a00  s_lm2gm r5, r3, 0(r[22:23])
0003e8  7fb34c00  s_lm2gm r6, r4, 0(r[26:27])
0003ec  ab0200f0  lui r5, 983040
0003f0  2b0300f0  lui r6, 983040
0003f4  9f412400  addli r3, r8, 20
0003f8  1f622400  addli r4, r8, 22
0003fc  97925300  or r5, r7, r5
000400  17936300  or r6, r7, r6
000404  ffb23d00  s_lm2gm r5, r3, 0(r[28:29])
000408  7fb34700  s_lm2gm r6, r4, 0(r[16:17])
00040c  ab0200f0  lui r5, 983040
000410  2b0300f0  lui r6, 983040
000414  9f013400  addli r3, r8, 24
000418  1f223400  addli r4, r8, 26
00041c  97925300  or r5, r7, r5
000420  17936300  or r6, r7, r6
000424  ffb23000  s_lm2gm r5, r3, 0(r[2:3])
000428  7fb34800  s_lm2gm r6, r4, 0(r[18:19])
00042c  ab0100f0  lui r3, 983040
000430  2b0200f0  lui r4, 983040
000434  eb520fee  load.d r[6:7], -288(r30)
000438  9f403400  addli r1, r8, 28
00043c  1f613400  addli r2, r8, 30
000440  97913300  or r3, r7, r3
000444  17924300  or r4, r7, r4
000448  9f034000  addli r7, zero, 32
00044c  ffb11200  s_lm2gm r3, r1, 0(r[6:7])
000450  7fb22400  s_lm2gm r4, r2, 0(r[10:11])
000454  6345dffd  loadli.w r10,  -276(r30)
000458  e340effc  loadli.w r1,  -396(r30)
00045c  1f038ffe  addli r6, r30, -192
000460  00a00000  mfence { lm }
000464  e34a7ffe  loadli.w r21,  -196(r30)
000468  0b151510  add.s r10, r10, r1
00046c  e3400ffd  loadli.w r1,  -380(r30)
000470  3f201500  blt.s r10, r1, 8
000474  5bcd0700  j 15976
000478  9f000000  addli r1, zero, 0
00047c  0b111310  add.s r2, r6, r1
000480  9fc00000  addli r1, r1, 4
000484  73100100  store.h zero, 0(r2)
000488  73110100  store.h zero, 2(r2)
00048c  00a00000  mfence { lm }
000490  bbbf70fe  bneq r1, r7, -20
000494  e3005f00  loadli.w r1,  40(r30)
000498  63414f00  loadli.w r2,  36(r30)
00049c  9f120000  addli r5, zero, 1
0004a0  e74eaffc  storeli.w r10, -276(r30)
0004a4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0004a8  1f190000  addli r18, zero, 1
0004ac  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0004b0  7e0109e0  vmmov mr2, r18
0004b4  8b101530  div.s r1, r10, r1
0004b8  8b902030  div.s r1, r1, r2
0004bc  63010ffd  loadli.w r2,  -384(r30)
0004c0  8b982010  add.s r17, r1, r2
0004c4  e300fffc  loadli.w r1,  -392(r30)
0004c8  1bb1a800  slli r2, r17, 10
0004cc  8b101110  add.s r1, r2, r1
0004d0  e70d2ffc  storeli.w r2, -296(r30)
0004d4  2b0100f0  lui r2, 983040
0004d8  b3910028  sext_int2long r[4:5], r1
0004dc  17912300  or r2, r7, r2
0004e0  ab0000f0  lui r1, 983040
0004e4  97b45102  sll.d r[10:11], r[4:5], r5
0004e8  eb510f00  load.d r[4:5], 0(r30)
0004ec  97901300  or r1, r7, r1
0004f0  73309fee  store.d r[10:11], -288(r30)
0004f4  8ba19110  add.ul r[4:5], r[4:5], r[10:11]
0004f8  7fa16100  l_gm2lm r2, r6, 0(r[4:5])
0004fc  6b510fe3  load.d r[3:4], -464(r30)
000500  ff208100  l_gm2lm r1, r8, 0(r[3:4])
000504  00a00000  mfence { lm }
000508  eb310ff4  load.hu r3, -192(r30)
00050c  6b322ff4  load.hu r4, -190(r30)
000510  6b31aff5  load.hu r2, -166(r30)
000514  eb30cff5  load.hu r1, -164(r30)
000518  eb324ff4  load.hu r5, -188(r30)
00051c  6b336ff4  load.hu r6, -186(r30)
000520  eb338ff4  load.hu r7, -184(r30)
000524  6b34aff4  load.hu r8, -182(r30)
000528  eb34cff4  load.hu r9, -180(r30)
00052c  6b35eff4  load.hu r10, -178(r30)
000530  eb350ff5  load.hu r11, -176(r30)
000534  6b362ff5  load.hu r12, -174(r30)
000538  eb364ff5  load.hu r13, -172(r30)
00053c  6b376ff5  load.hu r14, -170(r30)
000540  eb378ff5  load.hu r15, -168(r30)
000544  6b38eff5  load.hu r16, -162(r30)
000548  b3910118  bfloat2float.rn r3, r3
00054c  33110118  bfloat2float.rn r2, r2
000550  b3900018  bfloat2float.rn r1, r1
000554  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
000558  b3110218  bfloat2float.rn r3, r4
00055c  1f420000  addli r4, zero, 4
000560  7e0002e0  vmmov mr0, r4
000564  1f021000  addli r4, zero, 8
000568  eaa01136  vor.u.mh vr1{mr3}, r3, vr1
00056c  b3910218  bfloat2float.rn r3, r5
000570  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000574  b3110318  bfloat2float.rn r3, r6
000578  7e0002e0  vmmov mr0, r4
00057c  1f022000  addli r4, zero, 16
000580  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000584  b3910318  bfloat2float.rn r3, r7
000588  7e0002e0  vmmov mr0, r4
00058c  1f024000  addli r4, zero, 32
000590  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000594  b3110418  bfloat2float.rn r3, r8
000598  7e0002e0  vmmov mr0, r4
00059c  1f028000  addli r4, zero, 64
0005a0  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005a4  b3910418  bfloat2float.rn r3, r9
0005a8  7e0002e0  vmmov mr0, r4
0005ac  1f020001  addli r4, zero, 128
0005b0  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005b4  b3110518  bfloat2float.rn r3, r10
0005b8  7e0002e0  vmmov mr0, r4
0005bc  1f020002  addli r4, zero, 256
0005c0  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005c4  b3910518  bfloat2float.rn r3, r11
0005c8  7e0002e0  vmmov mr0, r4
0005cc  1f020004  addli r4, zero, 512
0005d0  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005d4  b3110618  bfloat2float.rn r3, r12
0005d8  7e0002e0  vmmov mr0, r4
0005dc  1f020008  addli r4, zero, 1024
0005e0  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005e4  b3910618  bfloat2float.rn r3, r13
0005e8  7e0002e0  vmmov mr0, r4
0005ec  1f020010  addli r4, zero, 2048
0005f0  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005f4  b3110718  bfloat2float.rn r3, r14
0005f8  7e0002e0  vmmov mr0, r4
0005fc  1f020020  addli r4, zero, 4096
000600  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000604  b3910718  bfloat2float.rn r3, r15
000608  7e0002e0  vmmov mr0, r4
00060c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000610  9f010040  addli r3, zero, 8192
000614  7e8001e0  vmmov mr0, r3
000618  ea201130  vor.u.mh vr1{mr0}, r2, vr1
00061c  2b410000  lui r2, 4
000620  7e0001e0  vmmov mr0, r2
000624  2b810000  lui r2, 8
000628  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00062c  b3100818  bfloat2float.rn r1, r16
000630  7e0001e0  vmmov mr0, r2
000634  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000638  eb300ff8  load.hu r1, -128(r30)
00063c  6b312ff8  load.hu r2, -126(r30)
000640  eb314ff8  load.hu r3, -124(r30)
000644  6b326ff8  load.hu r4, -122(r30)
000648  eb328ff8  load.hu r5, -120(r30)
00064c  6b33aff8  load.hu r6, -118(r30)
000650  eb33cff8  load.hu r7, -116(r30)
000654  6b34eff8  load.hu r8, -114(r30)
000658  eb340ff9  load.hu r9, -112(r30)
00065c  6b352ff9  load.hu r10, -110(r30)
000660  eb354ff9  load.hu r11, -108(r30)
000664  6b366ff9  load.hu r12, -106(r30)
000668  eb368ff9  load.hu r13, -104(r30)
00066c  6b37aff9  load.hu r14, -102(r30)
000670  eb37cff9  load.hu r15, -100(r30)
000674  6b38eff9  load.hu r16, -98(r30)
000678  b3900018  bfloat2float.rn r1, r1
00067c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000680  b3100118  bfloat2float.rn r1, r2
000684  1f410000  addli r2, zero, 4
000688  7e0101e0  vmmov mr2, r2
00068c  1f011000  addli r2, zero, 8
000690  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
000694  b3900118  bfloat2float.rn r1, r3
000698  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00069c  b3100218  bfloat2float.rn r1, r4
0006a0  7e0101e0  vmmov mr2, r2
0006a4  1f012000  addli r2, zero, 16
0006a8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006ac  b3900218  bfloat2float.rn r1, r5
0006b0  7e0101e0  vmmov mr2, r2
0006b4  1f014000  addli r2, zero, 32
0006b8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006bc  b3100318  bfloat2float.rn r1, r6
0006c0  7e0101e0  vmmov mr2, r2
0006c4  1f018000  addli r2, zero, 64
0006c8  2b03807f  lui r6, 522240
0006cc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006d0  b3900318  bfloat2float.rn r1, r7
0006d4  7e0101e0  vmmov mr2, r2
0006d8  1f010001  addli r2, zero, 128
0006dc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006e0  b3100418  bfloat2float.rn r1, r8
0006e4  7e0101e0  vmmov mr2, r2
0006e8  1f010002  addli r2, zero, 256
0006ec  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006f0  b3900418  bfloat2float.rn r1, r9
0006f4  7e0101e0  vmmov mr2, r2
0006f8  1f010004  addli r2, zero, 512
0006fc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000700  b3100518  bfloat2float.rn r1, r10
000704  7e0101e0  vmmov mr2, r2
000708  1f010008  addli r2, zero, 1024
00070c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000710  b3900518  bfloat2float.rn r1, r11
000714  7e0101e0  vmmov mr2, r2
000718  1f010010  addli r2, zero, 2048
00071c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000720  b3100618  bfloat2float.rn r1, r12
000724  7e0101e0  vmmov mr2, r2
000728  1f010020  addli r2, zero, 4096
00072c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000730  b3900618  bfloat2float.rn r1, r13
000734  7e0101e0  vmmov mr2, r2
000738  1f010040  addli r2, zero, 8192
00073c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000740  b3100718  bfloat2float.rn r1, r14
000744  7e0101e0  vmmov mr2, r2
000748  2b410000  lui r2, 4
00074c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000750  b3900718  bfloat2float.rn r1, r15
000754  7e0101e0  vmmov mr2, r2
000758  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00075c  b3100818  bfloat2float.rn r1, r16
000760  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000764  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000768  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
00076c  00a00000  mfence { lm }
000770  630b8fff  loadli.w r22,  -64(r30)
000774  634a8fff  loadli.w r20,  -60(r30)
000778  e3099fff  loadli.w r19,  -56(r30)
00077c  63499fff  loadli.w r18,  -52(r30)
000780  6307afff  loadli.w r14,  -48(r30)
000784  6346afff  loadli.w r12,  -44(r30)
000788  e307bfff  loadli.w r15,  -40(r30)
00078c  6348bfff  loadli.w r16,  -36(r30)
000790  e300cfff  loadli.w r1,  -32(r30)
000794  17015b01  and r2, r22, r21
000798  67011ffe  storeli.w r1, -240(r30)
00079c  e343cfff  loadli.w r7,  -28(r30)
0007a0  e305dfff  loadli.w r11,  -24(r30)
0007a4  e34ddfff  loadli.w r27,  -20(r30)
0007a8  6302efff  loadli.w r4,  -16(r30)
0007ac  e341efff  loadli.w r3,  -12(r30)
0007b0  93002304  setlt.u r1, r6, r2
0007b4  67413ffe  storeli.w r3, -236(r30)
0007b8  630effff  loadli.w r28,  -8(r30)
0007bc  e341ffff  loadli.w r3,  -4(r30)
0007c0  3bc00000  bneq r1, zero, 16
0007c4  2b054000  lui r10, 1024
0007c8  e7416fff  storeli.w r22, -228(r30)
0007cc  5b020000  j 16
0007d0  2b054000  lui r10, 1024
0007d4  9710ab00  or r1, r22, r10
0007d8  e7411ffe  storeli.w r1, -228(r30)
0007dc  170d5a01  and r26, r20, r21
0007e0  9300a305  setlt.u r1, r6, r26
0007e4  3bb00000  bneq r1, zero, 12
0007e8  67024fff  storeli.w r20, -224(r30)
0007ec  db010000  j 12
0007f0  9710aa00  or r1, r20, r10
0007f4  67021ffe  storeli.w r1, -224(r30)
0007f8  978c5901  and r25, r19, r21
0007fc  93009305  setlt.u r1, r6, r25
000800  3bb00000  bneq r1, zero, 12
000804  67423fff  storeli.w r19, -220(r30)
000808  db010000  j 12
00080c  9790a900  or r1, r19, r10
000810  67421ffe  storeli.w r1, -220(r30)
000814  170c5901  and r24, r18, r21
000818  e7401fff  storeli.w r17, -244(r30)
00081c  93008305  setlt.u r1, r6, r24
000820  3bb00000  bneq r1, zero, 12
000824  e7022fff  storeli.w r18, -216(r30)
000828  db010000  j 12
00082c  9710a900  or r1, r18, r10
000830  e7021ffe  storeli.w r1, -216(r30)
000834  970b5701  and r23, r14, r21
000838  93007305  setlt.u r1, r6, r23
00083c  3bb00000  bneq r1, zero, 12
000840  e742effe  storeli.w r14, -212(r30)
000844  db010000  j 12
000848  9710a700  or r1, r14, r10
00084c  e7421ffe  storeli.w r1, -212(r30)
000850  97045601  and r9, r12, r21
000854  93009304  setlt.u r1, r6, r9
000858  3bb00000  bneq r1, zero, 12
00085c  9f000600  addli r1, r12, 0
000860  5b010000  j 8
000864  9710a600  or r1, r12, r10
000868  17845701  and r8, r15, r21
00086c  e70f1ffc  storeli.w r1, -264(r30)
000870  670afffc  storeli.w r15, -352(r30)
000874  93008304  setlt.u r1, r6, r8
000878  37a00000  beq r1, zero, 8
00087c  9797a700  or r15, r15, r10
000880  97005801  and r1, r16, r21
000884  ab064000  lui r13, 1024
000888  e7013ffe  storeli.w r3, -232(r30)
00088c  e70a0ffd  storeli.w r16, -344(r30)
000890  93021304  setlt.u r5, r6, r1
000894  3bb00200  bneq r5, zero, 12
000898  e74f0ffd  storeli.w r16, -260(r30)
00089c  db010000  j 12
0008a0  9711a800  or r3, r16, r10
0008a4  e74f3ffc  storeli.w r3, -260(r30)
0008a8  e3012ffe  loadli.w r3,  -240(r30)
0008ac  17885101  and r16, r3, r21
0008b0  93020305  setlt.u r5, r6, r16
0008b4  37a00200  beq r5, zero, 8
0008b8  9791d100  or r3, r3, r13
0008bc  97885301  and r17, r7, r21
0008c0  67003ffe  storeli.w r3, -256(r30)
0008c4  670b7ffc  storeli.w r7, -336(r30)
0008c8  93021305  setlt.u r5, r6, r17
0008cc  37a00200  beq r5, zero, 8
0008d0  9793d300  or r7, r7, r13
0008d4  17855501  and r10, r11, r21
0008d8  e70bbffc  storeli.w r11, -328(r30)
0008dc  9302a304  setlt.u r5, r6, r10
0008e0  37a00200  beq r5, zero, 8
0008e4  9795d500  or r11, r11, r13
0008e8  97815d01  and r3, r27, r21
0008ec  93023304  setlt.u r5, r6, r3
0008f0  674d3ffc  storeli.w r3, -300(r30)
0008f4  3bb00200  bneq r5, zero, 12
0008f8  e700bfff  storeli.w r27, -248(r30)
0008fc  db010000  j 12
000900  9791dd00  or r3, r27, r13
000904  e7003ffe  storeli.w r3, -248(r30)
000908  970a5201  and r21, r4, r21
00090c  e3412ffe  loadli.w r3,  -236(r30)
000910  670cbffd  storeli.w r27, -320(r30)
000914  ab0d807f  lui r27, 522240
000918  e70c4ffc  storeli.w r4, -312(r30)
00091c  93025305  setlt.u r5, r6, r21
000920  37a00200  beq r5, zero, 8
000924  1712d200  or r4, r4, r13
000928  e3427ffe  loadli.w r5,  -196(r30)
00092c  17835100  and r6, r3, r5
000930  93826d04  setlt.u r5, r27, r6
000934  37a00200  beq r5, zero, 8
000938  9791d100  or r3, r3, r13
00093c  e3427ffe  loadli.w r5,  -196(r30)
000940  67407ffe  storeli.w r7, -252(r30)
000944  670dcffd  storeli.w r28, -304(r30)
000948  97025e00  and r5, r28, r5
00094c  674f5ffc  storeli.w r5, -268(r30)
000950  93825d04  setlt.u r5, r27, r5
000954  3bb00200  bneq r5, zero, 12
000958  9f030e00  addli r7, r28, 0
00095c  5b010000  j 8
000960  9713de00  or r7, r28, r13
000964  e3427ffe  loadli.w r5,  -196(r30)
000968  630e3ffe  loadli.w r28,  -232(r30)
00096c  97025e00  and r5, r28, r5
000970  938d5d04  setlt.u r27, r27, r5
000974  37a00d00  beq r27, zero, 8
000978  171ede00  or r28, r28, r13
00097c  e30d7ffe  loadli.w r27,  -200(r30)
000980  13812d04  setlt.u r2, r27, r2
000984  bb100100  bneq r2, zero, 36
000988  1b410b01  srli r2, r22, 16
00098c  1b011100  andi r2, r2, 1
000990  0b112b10  add.s r2, r22, r2
000994  634b6ffe  loadli.w r22,  -204(r30)
000998  0b116111  add.s r2, r2, r22
00099c  2b0bffff  lui r22, 1048560
0009a0  17016101  and r2, r2, r22
0009a4  e7412ffe  storeli.w r2, -228(r30)
0009a8  63017ffe  loadli.w r2,  -200(r30)
0009ac  9f8d0500  addli r27, r11, 0
0009b0  1301a105  setlt.u r2, r2, r26
0009b4  2b0dffff  lui r26, 1048560
0009b8  bb000100  bneq r2, zero, 32
0009bc  1b410a01  srli r2, r20, 16
0009c0  1b011100  andi r2, r2, 1
0009c4  0b112a10  add.s r2, r20, r2
0009c8  634a6ffe  loadli.w r20,  -204(r30)
0009cc  0b114111  add.s r2, r2, r20
0009d0  1701a101  and r2, r2, r26
0009d4  67022ffe  storeli.w r2, -224(r30)
0009d8  63017ffe  loadli.w r2,  -200(r30)
0009dc  9f850700  addli r11, r15, 0
0009e0  13019105  setlt.u r2, r2, r25
0009e4  e34c6ffe  loadli.w r25,  -204(r30)
0009e8  3b700100  bneq r2, zero, 28
0009ec  1bc10901  srli r2, r19, 16
0009f0  1b011100  andi r2, r2, 1
0009f4  0b912910  add.s r2, r19, r2
0009f8  0b119111  add.s r2, r2, r25
0009fc  1701a101  and r2, r2, r26
000a00  67422ffe  storeli.w r2, -220(r30)
000a04  63017ffe  loadli.w r2,  -200(r30)
000a08  e307fffd  loadli.w r15,  -264(r30)
000a0c  13018105  setlt.u r2, r2, r24
000a10  3b700100  bneq r2, zero, 28
000a14  1b410901  srli r2, r18, 16
000a18  1b011100  andi r2, r2, 1
000a1c  0b112910  add.s r2, r18, r2
000a20  0b119111  add.s r2, r2, r25
000a24  1701a101  and r2, r2, r26
000a28  e7022ffe  storeli.w r2, -216(r30)
000a2c  63097ffe  loadli.w r18,  -200(r30)
000a30  634a3ffe  loadli.w r20,  -228(r30)
000a34  13017905  setlt.u r2, r18, r23
000a38  3b700100  bneq r2, zero, 28
000a3c  1b410701  srli r2, r14, 16
000a40  1b011100  andi r2, r2, 1
000a44  0b112710  add.s r2, r14, r2
000a48  0b119111  add.s r2, r2, r25
000a4c  1701a101  and r2, r2, r26
000a50  e7422ffe  storeli.w r2, -212(r30)
000a54  13019904  setlt.u r2, r18, r9
000a58  e34b1ffe  loadli.w r23,  -244(r30)
000a5c  e3094ffe  loadli.w r19,  -224(r30)
000a60  3b600100  bneq r2, zero, 24
000a64  1b410601  srli r2, r12, 16
000a68  1b011100  andi r2, r2, 1
000a6c  0b112610  add.s r2, r12, r2
000a70  0b119111  add.s r2, r2, r25
000a74  9707a101  and r15, r2, r26
000a78  13018904  setlt.u r2, r18, r8
000a7c  e344fffd  loadli.w r9,  -260(r30)
000a80  63474ffe  loadli.w r14,  -220(r30)
000a84  3b700100  bneq r2, zero, 28
000a88  63044ffd  loadli.w r8,  -352(r30)
000a8c  1b410401  srli r2, r8, 16
000a90  1b011100  andi r2, r2, 1
000a94  0b112410  add.s r2, r8, r2
000a98  0b119111  add.s r2, r2, r25
000a9c  9705a101  and r11, r2, r26
000aa0  93001904  setlt.u r1, r18, r1
000aa4  63040ffe  loadli.w r8,  -256(r30)
000aa8  3bf00000  bneq r1, zero, 28
000aac  63015ffd  loadli.w r2,  -344(r30)
000ab0  9b400101  srli r1, r2, 16
000ab4  9b801000  andi r1, r1, 1
000ab8  8b101110  add.s r1, r2, r1
000abc  8b909011  add.s r1, r1, r25
000ac0  9784a001  and r9, r1, r26
000ac4  93000905  setlt.u r1, r18, r16
000ac8  63465ffe  loadli.w r12,  -212(r30)
000acc  1f810300  addli r2, r7, 0
000ad0  3bf00000  bneq r1, zero, 28
000ad4  e3032ffe  loadli.w r7,  -240(r30)
000ad8  9bc00301  srli r1, r7, 16
000adc  9b801000  andi r1, r1, 1
000ae0  8b901310  add.s r1, r7, r1
000ae4  8b909011  add.s r1, r1, r25
000ae8  1784a001  and r8, r1, r26
000aec  93001905  setlt.u r1, r18, r17
000af0  e3430ffe  loadli.w r7,  -252(r30)
000af4  2b084000  lui r16, 1024
000af8  3bf00000  bneq r1, zero, 28
000afc  e3036ffd  loadli.w r7,  -336(r30)
000b00  9bc00301  srli r1, r7, 16
000b04  9b801000  andi r1, r1, 1
000b08  8b901310  add.s r1, r7, r1
000b0c  8b909011  add.s r1, r1, r25
000b10  9783a001  and r7, r1, r26
000b14  9300a904  setlt.u r1, r18, r10
000b18  e3081ffe  loadli.w r17,  -248(r30)
000b1c  3bf00000  bneq r1, zero, 28
000b20  63057ffd  loadli.w r10,  -328(r30)
000b24  9b400501  srli r1, r10, 16
000b28  9b801000  andi r1, r1, 1
000b2c  8b101510  add.s r1, r10, r1
000b30  8b909011  add.s r1, r1, r25
000b34  978da001  and r27, r1, r26
000b38  e340affd  loadli.w r1,  -300(r30)
000b3c  93001904  setlt.u r1, r18, r1
000b40  3bf00000  bneq r1, zero, 28
000b44  63058ffd  loadli.w r10,  -320(r30)
000b48  9b400501  srli r1, r10, 16
000b4c  9b801000  andi r1, r1, 1
000b50  8b101510  add.s r1, r10, r1
000b54  8b909011  add.s r1, r1, r25
000b58  9788a001  and r17, r1, r26
000b5c  93005905  setlt.u r1, r18, r21
000b60  630c2ffd  loadli.w r24,  -368(r30)
000b64  3bf00000  bneq r1, zero, 28
000b68  63029ffd  loadli.w r4,  -312(r30)
000b6c  9b400201  srli r1, r4, 16
000b70  9b801000  andi r1, r1, 1
000b74  8b101210  add.s r1, r4, r1
000b78  8b909011  add.s r1, r1, r25
000b7c  1782a001  and r4, r1, r26
000b80  93006904  setlt.u r1, r18, r6
000b84  63457ffe  loadli.w r10,  -196(r30)
000b88  3bf00000  bneq r1, zero, 28
000b8c  e3412ffe  loadli.w r3,  -236(r30)
000b90  9bc00101  srli r1, r3, 16
000b94  9b801000  andi r1, r1, 1
000b98  8b901110  add.s r1, r3, r1
000b9c  8b909011  add.s r1, r1, r25
000ba0  9781a001  and r3, r1, r26
000ba4  e340effd  loadli.w r1,  -268(r30)
000ba8  ab06807f  lui r13, 522240
000bac  93001904  setlt.u r1, r18, r1
000bb0  3bf00000  bneq r1, zero, 28
000bb4  6301affd  loadli.w r2,  -304(r30)
000bb8  9b400101  srli r1, r2, 16
000bbc  9b801000  andi r1, r1, 1
000bc0  8b101110  add.s r1, r2, r1
000bc4  8b909011  add.s r1, r1, r25
000bc8  1781a001  and r2, r1, r26
000bcc  93005904  setlt.u r1, r18, r5
000bd0  3bf00000  bneq r1, zero, 28
000bd4  e3023ffe  loadli.w r5,  -232(r30)
000bd8  9bc00201  srli r1, r5, 16
000bdc  9b801000  andi r1, r1, 1
000be0  8b901210  add.s r1, r5, r1
000be4  8b909011  add.s r1, r1, r25
000be8  178ea001  and r28, r1, r26
000bec  9700aa00  and r1, r20, r10
000bf0  e3025ffe  loadli.w r5,  -216(r30)
000bf4  93801604  setlt.u r1, r13, r1
000bf8  3be00000  bneq r1, zero, 24
000bfc  9b400a01  srli r1, r20, 16
000c00  9b801000  andi r1, r1, 1
000c04  8b101a10  add.s r1, r20, r1
000c08  0b9b9011  add.s r22, r1, r25
000c0c  5b010000  j 8
000c10  171b0a01  or r22, r20, r16
000c14  9780a900  and r1, r19, r10
000c18  93801604  setlt.u r1, r13, r1
000c1c  3be00000  bneq r1, zero, 24
000c20  9bc00901  srli r1, r19, 16
000c24  9b801000  andi r1, r1, 1
000c28  8b901910  add.s r1, r19, r1
000c2c  0b9a9011  add.s r20, r1, r25
000c30  5b010000  j 8
000c34  179a0901  or r20, r19, r16
000c38  9700a700  and r1, r14, r10
000c3c  93801604  setlt.u r1, r13, r1
000c40  3be00000  bneq r1, zero, 24
000c44  9b400701  srli r1, r14, 16
000c48  9b801000  andi r1, r1, 1
000c4c  8b101710  add.s r1, r14, r1
000c50  8b999011  add.s r19, r1, r25
000c54  5b010000  j 8
000c58  97190701  or r19, r14, r16
000c5c  9780a200  and r1, r5, r10
000c60  93801604  setlt.u r1, r13, r1
000c64  3be00000  bneq r1, zero, 24
000c68  9bc00201  srli r1, r5, 16
000c6c  9b801000  andi r1, r1, 1
000c70  8b901210  add.s r1, r5, r1
000c74  0b999011  add.s r18, r1, r25
000c78  5b010000  j 8
000c7c  17990201  or r18, r5, r16
000c80  9700a600  and r1, r12, r10
000c84  93801604  setlt.u r1, r13, r1
000c88  3be00000  bneq r1, zero, 24
000c8c  9b400601  srli r1, r12, 16
000c90  9b801000  andi r1, r1, 1
000c94  8b101610  add.s r1, r12, r1
000c98  0b979011  add.s r14, r1, r25
000c9c  5b010000  j 8
000ca0  17170601  or r14, r12, r16
000ca4  9780a700  and r1, r15, r10
000ca8  93801604  setlt.u r1, r13, r1
000cac  3be00000  bneq r1, zero, 24
000cb0  9bc00701  srli r1, r15, 16
000cb4  9b801000  andi r1, r1, 1
000cb8  8b901710  add.s r1, r15, r1
000cbc  0b969011  add.s r12, r1, r25
000cc0  5b010000  j 8
000cc4  17960701  or r12, r15, r16
000cc8  9780a500  and r1, r11, r10
000ccc  93801604  setlt.u r1, r13, r1
000cd0  3be00000  bneq r1, zero, 24
000cd4  9bc00501  srli r1, r11, 16
000cd8  9b801000  andi r1, r1, 1
000cdc  8b901510  add.s r1, r11, r1
000ce0  8b959011  add.s r11, r1, r25
000ce4  5b010000  j 8
000ce8  97950501  or r11, r11, r16
000cec  9780a400  and r1, r9, r10
000cf0  93801604  setlt.u r1, r13, r1
000cf4  3be00000  bneq r1, zero, 24
000cf8  9bc00401  srli r1, r9, 16
000cfc  9b801000  andi r1, r1, 1
000d00  8b901410  add.s r1, r9, r1
000d04  8b949011  add.s r9, r1, r25
000d08  5b010000  j 8
000d0c  97940401  or r9, r9, r16
000d10  9700a400  and r1, r8, r10
000d14  93801604  setlt.u r1, r13, r1
000d18  3be00000  bneq r1, zero, 24
000d1c  9b400401  srli r1, r8, 16
000d20  9b801000  andi r1, r1, 1
000d24  8b101410  add.s r1, r8, r1
000d28  0b949011  add.s r8, r1, r25
000d2c  5b010000  j 8
000d30  17140401  or r8, r8, r16
000d34  9780a300  and r1, r7, r10
000d38  93801604  setlt.u r1, r13, r1
000d3c  3be00000  bneq r1, zero, 24
000d40  9bc00301  srli r1, r7, 16
000d44  9b801000  andi r1, r1, 1
000d48  8b901310  add.s r1, r7, r1
000d4c  8b939011  add.s r7, r1, r25
000d50  5b010000  j 8
000d54  97930301  or r7, r7, r16
000d58  9780ad00  and r1, r27, r10
000d5c  93801604  setlt.u r1, r13, r1
000d60  3be00000  bneq r1, zero, 24
000d64  9bc00d01  srli r1, r27, 16
000d68  9b801000  andi r1, r1, 1
000d6c  8b901d10  add.s r1, r27, r1
000d70  0b939011  add.s r6, r1, r25
000d74  5b010000  j 8
000d78  17930d01  or r6, r27, r16
000d7c  9780a800  and r1, r17, r10
000d80  93801604  setlt.u r1, r13, r1
000d84  3be00000  bneq r1, zero, 24
000d88  9bc00801  srli r1, r17, 16
000d8c  9b801000  andi r1, r1, 1
000d90  8b901810  add.s r1, r17, r1
000d94  8b929011  add.s r5, r1, r25
000d98  5b010000  j 8
000d9c  97920801  or r5, r17, r16
000da0  9700a200  and r1, r4, r10
000da4  93801604  setlt.u r1, r13, r1
000da8  3be00000  bneq r1, zero, 24
000dac  9b400201  srli r1, r4, 16
000db0  9b801000  andi r1, r1, 1
000db4  8b101210  add.s r1, r4, r1
000db8  0b929011  add.s r4, r1, r25
000dbc  5b010000  j 8
000dc0  17120201  or r4, r4, r16
000dc4  9780a100  and r1, r3, r10
000dc8  93801604  setlt.u r1, r13, r1
000dcc  3be00000  bneq r1, zero, 24
000dd0  9bc00101  srli r1, r3, 16
000dd4  9b801000  andi r1, r1, 1
000dd8  8b901110  add.s r1, r3, r1
000ddc  8b919011  add.s r3, r1, r25
000de0  5b010000  j 8
000de4  97910101  or r3, r3, r16
000de8  9700a100  and r1, r2, r10
000dec  93801604  setlt.u r1, r13, r1
000df0  3be00000  bneq r1, zero, 24
000df4  9b400101  srli r1, r2, 16
000df8  9b801000  andi r1, r1, 1
000dfc  8b101110  add.s r1, r2, r1
000e00  0b919011  add.s r2, r1, r25
000e04  5b010000  j 8
000e08  17110101  or r2, r2, r16
000e0c  9700ae00  and r1, r28, r10
000e10  93801604  setlt.u r1, r13, r1
000e14  3be00000  bneq r1, zero, 24
000e18  9b400e01  srli r1, r28, 16
000e1c  9b801000  andi r1, r1, 1
000e20  8b101e10  add.s r1, r28, r1
000e24  8b909011  add.s r1, r1, r25
000e28  5b010000  j 8
000e2c  97100e01  or r1, r28, r16
000e30  970aab01  and r21, r22, r26
000e34  970caa01  and r25, r20, r26
000e38  13e55c05  setlt.f r10, r25, r21
000e3c  9f860a00  addli r13, r21, 0
000e40  3b200500  bneq r10, zero, 8
000e44  9f860c00  addli r13, r25, 0
000e48  1bb59a00  slli r10, r21, 9
000e4c  9bb79c00  slli r15, r25, 9
000e50  1b487b01  srli r16, r22, 23
000e54  9b487a01  srli r17, r20, 23
000e58  13050500  seteq r10, r10, zero
000e5c  93870700  seteq r15, r15, zero
000e60  1b08f80f  andi r16, r16, 255
000e64  9b88f80f  andi r17, r17, 255
000e68  1b78f80f  setlti r16, r16, 255
000e6c  9bf8f80f  setlti r17, r17, 255
000e70  1715a800  or r10, r16, r10
000e74  9797f800  or r15, r17, r15
000e78  1705f500  and r10, r10, r15
000e7c  b7130512  beq r10, zero, 9444
000e80  9f870a00  addli r15, r21, 0
000e84  bba30a12  bneq r21, zero, 9448
000e88  1f850c00  addli r10, r25, 0
000e8c  37a00c00  beq r25, zero, 8
000e90  1f850700  addli r10, r15, 0
000e94  9367d006  setle.f r15, zero, r13
000e98  13e80606  setle.f r16, r13, zero
000e9c  9707f800  and r15, r16, r15
000ea0  3ba00700  bneq r15, zero, 8
000ea4  1f850600  addli r10, r13, 0
000ea8  178aa901  and r20, r19, r26
000eac  9f070500  addli r15, r10, 0
000eb0  9366aa04  setlt.f r13, r20, r10
000eb4  3ba00600  bneq r13, zero, 8
000eb8  9f070a00  addli r15, r20, 0
000ebc  9b369a00  slli r13, r20, 9
000ec0  1b389500  slli r16, r10, 9
000ec4  9bc87901  srli r17, r19, 23
000ec8  9b497501  srli r19, r10, 23
000ecc  93860600  seteq r13, r13, zero
000ed0  13080800  seteq r16, r16, zero
000ed4  9b88f80f  andi r17, r17, 255
000ed8  9b89f90f  andi r19, r19, 255
000edc  9bf8f80f  setlti r17, r17, 255
000ee0  9bf9f90f  setlti r19, r19, 255
000ee4  9796d800  or r13, r17, r13
000ee8  17980901  or r16, r19, r16
000eec  9706d800  and r13, r16, r13
000ef0  37b20612  beq r13, zero, 9356
000ef4  3b420512  bneq r10, zero, 9360
000ef8  9f060a00  addli r13, r20, 0
000efc  37200a00  beq r20, zero, 8
000f00  9f060500  addli r13, r10, 0
000f04  1365f006  setle.f r10, zero, r15
000f08  13e80706  setle.f r16, r15, zero
000f0c  1705a800  and r10, r16, r10
000f10  3b200500  bneq r10, zero, 8
000f14  9f860700  addli r13, r15, 0
000f18  9709a901  and r19, r18, r26
000f1c  9f870600  addli r15, r13, 0
000f20  13e5d904  setlt.f r10, r19, r13
000f24  3b200500  bneq r10, zero, 8
000f28  9f870900  addli r15, r19, 0
000f2c  1bb59900  slli r10, r19, 9
000f30  1bb89600  slli r16, r13, 9
000f34  9b487901  srli r17, r18, 23
000f38  1bc97601  srli r18, r13, 23
000f3c  13050500  seteq r10, r10, zero
000f40  13080800  seteq r16, r16, zero
000f44  9b88f80f  andi r17, r17, 255
000f48  1b09f90f  andi r18, r18, 255
000f4c  9bf8f80f  setlti r17, r17, 255
000f50  1b79f90f  setlti r18, r18, 255
000f54  1795a800  or r10, r17, r10
000f58  17180901  or r16, r18, r16
000f5c  1705a800  and r10, r16, r10
000f60  b7500512  beq r10, zero, 9268
000f64  bbe00612  bneq r13, zero, 9272
000f68  1f850900  addli r10, r19, 0
000f6c  37a00900  beq r19, zero, 8
000f70  1f850600  addli r10, r13, 0
000f74  9366f006  setle.f r13, zero, r15
000f78  13e80706  setle.f r16, r15, zero
000f7c  9706d800  and r13, r16, r13
000f80  3ba00600  bneq r13, zero, 8
000f84  1f850700  addli r10, r15, 0
000f88  1709a701  and r18, r14, r26
000f8c  9f070500  addli r15, r10, 0
000f90  9366a904  setlt.f r13, r18, r10
000f94  3ba00600  bneq r13, zero, 8
000f98  9f070900  addli r15, r18, 0
000f9c  9b369900  slli r13, r18, 9
000fa0  1b389500  slli r16, r10, 9
000fa4  1b477701  srli r14, r14, 23
000fa8  9b487501  srli r17, r10, 23
000fac  93860600  seteq r13, r13, zero
000fb0  13080800  seteq r16, r16, zero
000fb4  1b07f70f  andi r14, r14, 255
000fb8  9b88f80f  andi r17, r17, 255
000fbc  1b77f70f  setlti r14, r14, 255
000fc0  9bf8f80f  setlti r17, r17, 255
000fc4  9716d700  or r13, r14, r13
000fc8  17970801  or r14, r17, r16
000fcc  9706d700  and r13, r14, r13
000fd0  37ff0610  beq r13, zero, 9180
000fd4  bb0f0510  bneq r10, zero, 9184
000fd8  9f060900  addli r13, r18, 0
000fdc  37200900  beq r18, zero, 8
000fe0  9f060500  addli r13, r10, 0
000fe4  1365f006  setle.f r10, zero, r15
000fe8  13e70706  setle.f r14, r15, zero
000fec  1705a700  and r10, r14, r10
000ff0  3b200500  bneq r10, zero, 8
000ff4  9f860700  addli r13, r15, 0
000ff8  9708a601  and r17, r12, r26
000ffc  1f870600  addli r14, r13, 0
001000  13e5d804  setlt.f r10, r17, r13
001004  3b200500  bneq r10, zero, 8
001008  1f870800  addli r14, r17, 0
00100c  1bb59800  slli r10, r17, 9
001010  9bb79600  slli r15, r13, 9
001014  1b467601  srli r12, r12, 23
001018  1bc87601  srli r16, r13, 23
00101c  13050500  seteq r10, r10, zero
001020  93870700  seteq r15, r15, zero
001024  1b06f60f  andi r12, r12, 255
001028  1b08f80f  andi r16, r16, 255
00102c  1b76f60f  setlti r12, r12, 255
001030  1b78f80f  setlti r16, r16, 255
001034  1715a600  or r10, r12, r10
001038  1716f800  or r12, r16, r15
00103c  1705a600  and r10, r12, r10
001040  371e0510  beq r10, zero, 9092
001044  3bae0610  bneq r13, zero, 9096
001048  1f850800  addli r10, r17, 0
00104c  37a00800  beq r17, zero, 8
001050  1f850600  addli r10, r13, 0
001054  1366e006  setle.f r12, zero, r14
001058  93660706  setle.f r13, r14, zero
00105c  1786c600  and r12, r13, r12
001060  3b200600  bneq r12, zero, 8
001064  1f050700  addli r10, r14, 0
001068  1788a501  and r16, r11, r26
00106c  1f060500  addli r12, r10, 0
001070  9366a804  setlt.f r13, r16, r10
001074  3ba00600  bneq r13, zero, 8
001078  1f060800  addli r12, r16, 0
00107c  9b369800  slli r13, r16, 9
001080  1b379500  slli r14, r10, 9
001084  9bc57501  srli r11, r11, 23
001088  9b477501  srli r15, r10, 23
00108c  93860600  seteq r13, r13, zero
001090  13070700  seteq r14, r14, zero
001094  9b85f50f  andi r11, r11, 255
001098  9b87f70f  andi r15, r15, 255
00109c  9bf5f50f  setlti r11, r11, 255
0010a0  9bf7f70f  setlti r15, r15, 255
0010a4  9795d500  or r11, r11, r13
0010a8  9796e700  or r13, r15, r14
0010ac  9785b600  and r11, r13, r11
0010b0  b7bc0510  beq r11, zero, 9004
0010b4  bb4c0510  bneq r10, zero, 9008
0010b8  9f050800  addli r11, r16, 0
0010bc  37200800  beq r16, zero, 8
0010c0  9f050500  addli r11, r10, 0
0010c4  1365c006  setle.f r10, zero, r12
0010c8  93660606  setle.f r13, r12, zero
0010cc  1785a600  and r10, r13, r10
0010d0  3b200500  bneq r10, zero, 8
0010d4  9f050600  addli r11, r12, 0
0010d8  9787a401  and r15, r9, r26
0010dc  1f850500  addli r10, r11, 0
0010e0  13e6b704  setlt.f r12, r15, r11
0010e4  3b200600  bneq r12, zero, 8
0010e8  1f850700  addli r10, r15, 0
0010ec  1bb69700  slli r12, r15, 9
0010f0  9bb69500  slli r13, r11, 9
0010f4  9bc47401  srli r9, r9, 23
0010f8  1bc77501  srli r14, r11, 23
0010fc  13060600  seteq r12, r12, zero
001100  93860600  seteq r13, r13, zero
001104  9b84f40f  andi r9, r9, 255
001108  1b07f70f  andi r14, r14, 255
00110c  9bf4f40f  setlti r9, r9, 255
001110  1b77f70f  setlti r14, r14, 255
001114  9794c400  or r9, r9, r12
001118  1716d700  or r12, r14, r13
00111c  97049600  and r9, r12, r9
001120  37db0410  beq r9, zero, 8916
001124  3beb0510  bneq r11, zero, 8920
001128  9f840700  addli r9, r15, 0
00112c  37a00700  beq r15, zero, 8
001130  9f840500  addli r9, r11, 0
001134  9365a006  setle.f r11, zero, r10
001138  13660506  setle.f r12, r10, zero
00113c  9705b600  and r11, r12, r11
001140  3ba00500  bneq r11, zero, 8
001144  9f040500  addli r9, r10, 0
001148  1707a401  and r14, r8, r26
00114c  1f850400  addli r10, r9, 0
001150  93659704  setlt.f r11, r14, r9
001154  3ba00500  bneq r11, zero, 8
001158  1f050700  addli r10, r14, 0
00115c  9b359700  slli r11, r14, 9
001160  1bb69400  slli r12, r9, 9
001164  1b447401  srli r8, r8, 23
001168  9bc67401  srli r13, r9, 23
00116c  93850500  seteq r11, r11, zero
001170  13060600  seteq r12, r12, zero
001174  1b04f40f  andi r8, r8, 255
001178  9b86f60f  andi r13, r13, 255
00117c  1b74f40f  setlti r8, r8, 255
001180  9bf6f60f  setlti r13, r13, 255
001184  1714b400  or r8, r8, r11
001188  9795c600  or r11, r13, r12
00118c  17848500  and r8, r11, r8
001190  b7790410  beq r8, zero, 8828
001194  3b8a0410  bneq r9, zero, 8832
001198  1f040700  addli r8, r14, 0
00119c  37200700  beq r14, zero, 8
0011a0  1f840400  addli r8, r9, 0
0011a4  9364a006  setle.f r9, zero, r10
0011a8  93650506  setle.f r11, r10, zero
0011ac  97849500  and r9, r11, r9
0011b0  3ba00400  bneq r9, zero, 8
0011b4  1f040500  addli r8, r10, 0
0011b8  9786a301  and r13, r7, r26
0011bc  9f040400  addli r9, r8, 0
0011c0  13e58604  setlt.f r10, r13, r8
0011c4  3b200500  bneq r10, zero, 8
0011c8  9f840600  addli r9, r13, 0
0011cc  1bb59600  slli r10, r13, 9
0011d0  9b359400  slli r11, r8, 9
0011d4  9bc37301  srli r7, r7, 23
0011d8  1b467401  srli r12, r8, 23
0011dc  13050500  seteq r10, r10, zero
0011e0  93850500  seteq r11, r11, zero
0011e4  9b83f30f  andi r7, r7, 255
0011e8  1b06f60f  andi r12, r12, 255
0011ec  9bf3f30f  setlti r7, r7, 255
0011f0  1b76f60f  setlti r12, r12, 255
0011f4  9793a300  or r7, r7, r10
0011f8  1715b600  or r10, r12, r11
0011fc  97037500  and r7, r10, r7
001200  b7980310  beq r7, zero, 8740
001204  bb280410  bneq r8, zero, 8744
001208  9f830600  addli r7, r13, 0
00120c  37a00600  beq r13, zero, 8
001210  9f030400  addli r7, r8, 0
001214  13649006  setle.f r8, zero, r9
001218  13e50406  setle.f r10, r9, zero
00121c  17048500  and r8, r10, r8
001220  3b200400  bneq r8, zero, 8
001224  9f830400  addli r7, r9, 0
001228  1706a301  and r12, r6, r26
00122c  1f840300  addli r8, r7, 0
001230  93647604  setlt.f r9, r12, r7
001234  3ba00400  bneq r9, zero, 8
001238  1f040600  addli r8, r12, 0
00123c  9b349600  slli r9, r12, 9
001240  1bb59300  slli r10, r7, 9
001244  1b437301  srli r6, r6, 23
001248  9bc57301  srli r11, r7, 23
00124c  93840400  seteq r9, r9, zero
001250  13050500  seteq r10, r10, zero
001254  1b03f30f  andi r6, r6, 255
001258  9b85f50f  andi r11, r11, 255
00125c  1b73f30f  setlti r6, r6, 255
001260  9bf5f50f  setlti r11, r11, 255
001264  17139300  or r6, r6, r9
001268  9794a500  or r9, r11, r10
00126c  17836400  and r6, r9, r6
001270  37370310  beq r6, zero, 8652
001274  3bc70310  bneq r7, zero, 8656
001278  1f030600  addli r6, r12, 0
00127c  37200600  beq r12, zero, 8
001280  1f830300  addli r6, r7, 0
001284  93638006  setle.f r7, zero, r8
001288  93640406  setle.f r9, r8, zero
00128c  97837400  and r7, r9, r7
001290  3ba00300  bneq r7, zero, 8
001294  1f030400  addli r6, r8, 0
001298  178ba201  and r22, r5, r26
00129c  9f030300  addli r7, r6, 0
0012a0  13646b04  setlt.f r8, r22, r6
0012a4  3b200400  bneq r8, zero, 8
0012a8  9f030b00  addli r7, r22, 0
0012ac  1b349b00  slli r8, r22, 9
0012b0  9b349300  slli r9, r6, 9
0012b4  9bc27201  srli r5, r5, 23
0012b8  1b457301  srli r10, r6, 23
0012bc  13040400  seteq r8, r8, zero
0012c0  93840400  seteq r9, r9, zero
0012c4  9b82f20f  andi r5, r5, 255
0012c8  1b05f50f  andi r10, r10, 255
0012cc  9bf2f20f  setlti r5, r5, 255
0012d0  1b75f50f  setlti r10, r10, 255
0012d4  97928200  or r5, r5, r8
0012d8  17149500  or r8, r10, r9
0012dc  97025400  and r5, r8, r5
0012e0  b7d50210  beq r5, zero, 8564
0012e4  bb650310  bneq r6, zero, 8568
0012e8  9f020b00  addli r5, r22, 0
0012ec  37200b00  beq r22, zero, 8
0012f0  9f020300  addli r5, r6, 0
0012f4  13637006  setle.f r6, zero, r7
0012f8  13e40306  setle.f r8, r7, zero
0012fc  17036400  and r6, r8, r6
001300  3b200300  bneq r6, zero, 8
001304  9f820300  addli r5, r7, 0
001308  970da201  and r27, r4, r26
00130c  1f830200  addli r6, r5, 0
001310  93e35d04  setlt.f r7, r27, r5
001314  3ba00300  bneq r7, zero, 8
001318  1f830d00  addli r6, r27, 0
00131c  9bb39d00  slli r7, r27, 9
001320  1bb49200  slli r8, r5, 9
001324  1b427201  srli r4, r4, 23
001328  9bc47201  srli r9, r5, 23
00132c  93830300  seteq r7, r7, zero
001330  13040400  seteq r8, r8, zero
001334  1b02f20f  andi r4, r4, 255
001338  9b84f40f  andi r9, r9, 255
00133c  1b72f20f  setlti r4, r4, 255
001340  9bf4f40f  setlti r9, r9, 255
001344  17127200  or r4, r4, r7
001348  97938400  or r7, r9, r8
00134c  17824300  and r4, r7, r4
001350  37740210  beq r4, zero, 8476
001354  bb840210  bneq r5, zero, 8480
001358  1f820d00  addli r4, r27, 0
00135c  37a00d00  beq r27, zero, 8
001360  1f820200  addli r4, r5, 0
001364  93626006  setle.f r5, zero, r6
001368  93630306  setle.f r7, r6, zero
00136c  97825300  and r5, r7, r5
001370  3ba00200  bneq r5, zero, 8
001374  1f020300  addli r4, r6, 0
001378  178ea101  and r28, r3, r26
00137c  9f020200  addli r5, r4, 0
001380  13634e04  setlt.f r6, r28, r4
001384  3b200300  bneq r6, zero, 8
001388  9f020e00  addli r5, r28, 0
00138c  1b339e00  slli r6, r28, 9
001390  9b339200  slli r7, r4, 9
001394  9bc17101  srli r3, r3, 23
001398  1b447201  srli r8, r4, 23
00139c  13030300  seteq r6, r6, zero
0013a0  93830300  seteq r7, r7, zero
0013a4  9b81f10f  andi r3, r3, 255
0013a8  1b04f40f  andi r8, r8, 255
0013ac  9bf1f10f  setlti r3, r3, 255
0013b0  1b74f40f  setlti r8, r8, 255
0013b4  97916100  or r3, r3, r6
0013b8  17137400  or r6, r8, r7
0013bc  97013300  and r3, r6, r3
0013c0  37930110  beq r3, zero, 8388
0013c4  3b230210  bneq r4, zero, 8392
0013c8  9f010e00  addli r3, r28, 0
0013cc  37200e00  beq r28, zero, 8
0013d0  9f010200  addli r3, r4, 0
0013d4  13625006  setle.f r4, zero, r5
0013d8  13e30206  setle.f r6, r5, zero
0013dc  17024300  and r4, r6, r4
0013e0  3b200200  bneq r4, zero, 8
0013e4  9f810200  addli r3, r5, 0
0013e8  1704a101  and r8, r2, r26
0013ec  1f820100  addli r4, r3, 0
0013f0  93623404  setlt.f r5, r8, r3
0013f4  3ba00200  bneq r5, zero, 8
0013f8  1f020400  addli r4, r8, 0
0013fc  9b329400  slli r5, r8, 9
001400  1bb39100  slli r6, r3, 9
001404  1b417101  srli r2, r2, 23
001408  9bc37101  srli r7, r3, 23
00140c  93820200  seteq r5, r5, zero
001410  13030300  seteq r6, r6, zero
001414  1b01f10f  andi r2, r2, 255
001418  9b83f30f  andi r7, r7, 255
00141c  1b71f10f  setlti r2, r2, 255
001420  9bf3f30f  setlti r7, r7, 255
001424  17115100  or r2, r2, r5
001428  97926300  or r5, r7, r6
00142c  17812200  and r2, r5, r2
001430  b7310110  beq r2, zero, 8300
001434  bbc10110  bneq r3, zero, 8304
001438  1f010400  addli r2, r8, 0
00143c  37200400  beq r8, zero, 8
001440  1f810100  addli r2, r3, 0
001444  93614006  setle.f r3, zero, r4
001448  93620206  setle.f r5, r4, zero
00144c  97813200  and r3, r5, r3
001450  3ba00100  bneq r3, zero, 8
001454  1f010200  addli r2, r4, 0
001458  178da001  and r26, r1, r26
00145c  9f010100  addli r3, r2, 0
001460  13622d04  setlt.f r4, r26, r2
001464  3b200200  bneq r4, zero, 8
001468  9f010d00  addli r3, r26, 0
00146c  1b329d00  slli r4, r26, 9
001470  9b329100  slli r5, r2, 9
001474  9bc07001  srli r1, r1, 23
001478  1b437101  srli r6, r2, 23
00147c  13020200  seteq r4, r4, zero
001480  93820200  seteq r5, r5, zero
001484  9b80f00f  andi r1, r1, 255
001488  1b03f30f  andi r6, r6, 255
00148c  9bf0f00f  setlti r1, r1, 255
001490  1b73f30f  setlti r6, r6, 255
001494  97904000  or r1, r1, r4
001498  17125300  or r4, r6, r5
00149c  97001200  and r1, r4, r1
0014a0  37d00010  beq r1, zero, 8212
0014a4  3b600110  bneq r2, zero, 8216
0014a8  9f000d00  addli r1, r26, 0
0014ac  37200d00  beq r26, zero, 8
0014b0  9f000100  addli r1, r2, 0
0014b4  13613006  setle.f r2, zero, r3
0014b8  13e20106  setle.f r4, r3, zero
0014bc  17012200  and r2, r4, r2
0014c0  3b200100  bneq r2, zero, 8
0014c4  9f800100  addli r1, r3, 0
0014c8  1f010004  addli r2, zero, 512
0014cc  3fa02b00  blt.s r23, r2, 8
0014d0  ab0080ff  lui r1, 1046528
0014d4  63011ffd  loadli.w r2,  -376(r30)
0014d8  e7428ffe  storeli.w r8, -212(r30)
0014dc  73601100  stores.w r1, 0(r2)
0014e0  00a00300  mfence { lm, sm, gm }
0014e4  80210c04  csr_set csr3, r24
0014e8  00d00100  sync_group
0014ec  e300effd  loadli.w r1,  -272(r30)
0014f0  3b87000e  bneq r1, zero, 7616
0014f4  e3006ffe  loadli.w r1,  -208(r30)
0014f8  efc10000  loads.w r3, 0(r1)
0014fc  efc04000  loads.w r1, 4(r1)
001500  13e23004  setlt.f r4, r1, r3
001504  1f810100  addli r2, r3, 0
001508  3b200200  bneq r4, zero, 8
00150c  1f810000  addli r2, r1, 0
001510  1bb29100  slli r4, r3, 9
001514  9bb29000  slli r5, r1, 9
001518  1bc37101  srli r6, r3, 23
00151c  9bc37001  srli r7, r1, 23
001520  13020200  seteq r4, r4, zero
001524  93820200  seteq r5, r5, zero
001528  1b03f30f  andi r6, r6, 255
00152c  9b83f30f  andi r7, r7, 255
001530  1b73f30f  setlti r6, r6, 255
001534  9bf3f30f  setlti r7, r7, 255
001538  17124300  or r4, r6, r4
00153c  97925300  or r5, r7, r5
001540  17025200  and r4, r4, r5
001544  b7610214  beq r4, zero, 10360
001548  bbf10114  bneq r3, zero, 10364
00154c  37a00000  beq r1, zero, 8
001550  9f800100  addli r1, r3, 0
001554  93612006  setle.f r3, zero, r2
001558  13620106  setle.f r4, r2, zero
00155c  e7420ffd  storeli.w r16, -468(r30)
001560  97013200  and r3, r4, r3
001564  3ba00100  bneq r3, zero, 8
001568  9f000100  addli r1, r2, 0
00156c  63016ffe  loadli.w r2,  -208(r30)
001570  6f488100  loads.w r16, 8(r2)
001574  1f810000  addli r2, r1, 0
001578  93611804  setlt.f r3, r16, r1
00157c  3ba00100  bneq r3, zero, 8
001580  1f010800  addli r2, r16, 0
001584  9b319800  slli r3, r16, 9
001588  1bb29000  slli r4, r1, 9
00158c  9b427801  srli r5, r16, 23
001590  1bc37001  srli r6, r1, 23
001594  93810100  seteq r3, r3, zero
001598  13020200  seteq r4, r4, zero
00159c  9b82f20f  andi r5, r5, 255
0015a0  1b03f30f  andi r6, r6, 255
0015a4  9bf2f20f  setlti r5, r5, 255
0015a8  1b73f30f  setlti r6, r6, 255
0015ac  97913200  or r3, r5, r3
0015b0  17124300  or r4, r6, r4
0015b4  97013200  and r3, r4, r3
0015b8  37e00114  beq r3, zero, 10264
0015bc  3bf00014  bneq r1, zero, 10268
0015c0  e7016ffd  storeli.w r22, -488(r30)
0015c4  37200800  beq r16, zero, 8
0015c8  1f880000  addli r16, r1, 0
0015cc  93602006  setle.f r1, zero, r2
0015d0  93610106  setle.f r3, r2, zero
0015d4  9f020d00  addli r5, r26, 0
0015d8  6701cffd  storeli.w r28, -496(r30)
0015dc  6741bffd  storeli.w r27, -492(r30)
0015e0  e741cffc  storeli.w r12, -484(r30)
0015e4  6702dffc  storeli.w r13, -480(r30)
0015e8  6742effc  storeli.w r14, -476(r30)
0015ec  e702fffc  storeli.w r15, -472(r30)
0015f0  67491ffd  storeli.w r17, -364(r30)
0015f4  670a3ffd  storeli.w r19, -352(r30)
0015f8  670b9ffd  storeli.w r25, -336(r30)
0015fc  670f5ffb  storeli.w r21, -528(r30)
001600  97801100  and r1, r3, r1
001604  3ba00000  bneq r1, zero, 8
001608  1f080100  addli r16, r2, 0
00160c  63076ffe  loadli.w r14,  -208(r30)
001610  e7092ffd  storeli.w r18, -360(r30)
001614  9f0a0800  addli r21, r16, 0
001618  e70a4ffd  storeli.w r20, -344(r30)
00161c  6f49c708  loads.w r18, 140(r14)
001620  6f44c704  loads.w r8, 76(r14)
001624  ef48c700  loads.w r17, 12(r14)
001628  ef460701  loads.w r13, 16(r14)
00162c  6f454701  loads.w r10, 20(r14)
001630  ef478701  loads.w r15, 24(r14)
001634  ef49c701  loads.w r19, 28(r14)
001638  6f410702  loads.w r2, 32(r14)
00163c  ef434702  loads.w r7, 36(r14)
001640  6f438702  loads.w r6, 40(r14)
001644  ef41c702  loads.w r3, 44(r14)
001648  ef450703  loads.w r11, 48(r14)
00164c  6f464703  loads.w r12, 52(r14)
001650  ef408703  loads.w r1, 56(r14)
001654  6f4cc703  loads.w r24, 60(r14)
001658  ef4c0704  loads.w r25, 64(r14)
00165c  ef444704  loads.w r9, 68(r14)
001660  6f428704  loads.w r4, 72(r14)
001664  ef4d0708  loads.w r27, 128(r14)
001668  6f4e070b  loads.w r28, 176(r14)
00166c  6f4b070d  loads.w r22, 208(r14)
001670  ef4b870d  loads.w r23, 216(r14)
001674  674a2ffb  storeli.w r18, -604(r30)
001678  6f490709  loads.w r18, 144(r14)
00167c  e70b8ffc  storeli.w r8, -328(r30)
001680  6f440705  loads.w r8, 80(r14)
001684  13ed0805  setlt.f r26, r17, r16
001688  e70f2ffd  storeli.w r18, -264(r30)
00168c  6f494709  loads.w r18, 148(r14)
001690  e70a8ffa  storeli.w r8, -600(r30)
001694  6f444705  loads.w r8, 84(r14)
001698  e74f2ffd  storeli.w r18, -260(r30)
00169c  6f498709  loads.w r18, 152(r14)
0016a0  e74a8ffa  storeli.w r8, -596(r30)
0016a4  6f448705  loads.w r8, 88(r14)
0016a8  670d2ffb  storeli.w r18, -560(r30)
0016ac  6f49c709  loads.w r18, 156(r14)
0016b0  670b8ffa  storeli.w r8, -592(r30)
0016b4  6f44c705  loads.w r8, 92(r14)
0016b8  67002fff  storeli.w r18, -256(r30)
0016bc  6f49070a  loads.w r18, 160(r14)
0016c0  674b8ffa  storeli.w r8, -588(r30)
0016c4  6f440706  loads.w r8, 96(r14)
0016c8  674d2ffb  storeli.w r18, -556(r30)
0016cc  6f49470a  loads.w r18, 164(r14)
0016d0  e70b8ffa  storeli.w r8, -584(r30)
0016d4  6f444706  loads.w r8, 100(r14)
0016d8  67402fff  storeli.w r18, -252(r30)
0016dc  6f49870a  loads.w r18, 168(r14)
0016e0  670c8ffc  storeli.w r8, -320(r30)
0016e4  6f448706  loads.w r8, 104(r14)
0016e8  e70d2ffb  storeli.w r18, -552(r30)
0016ec  6f49c70a  loads.w r18, 172(r14)
0016f0  e74b8ffa  storeli.w r8, -580(r30)
0016f4  6f44c706  loads.w r8, 108(r14)
0016f8  e7002fff  storeli.w r18, -248(r30)
0016fc  6f49470b  loads.w r18, 180(r14)
001700  e70c8ffc  storeli.w r8, -312(r30)
001704  6f440707  loads.w r8, 112(r14)
001708  67012fff  storeli.w r18, -240(r30)
00170c  6f49870b  loads.w r18, 184(r14)
001710  670c8ffa  storeli.w r8, -576(r30)
001714  6f444707  loads.w r8, 116(r14)
001718  e74d2ffb  storeli.w r18, -548(r30)
00171c  6f49c70b  loads.w r18, 188(r14)
001720  670d8ffc  storeli.w r8, -304(r30)
001724  6f448707  loads.w r8, 120(r14)
001728  670e2ffb  storeli.w r18, -544(r30)
00172c  6f49070c  loads.w r18, 192(r14)
001730  674c8ffa  storeli.w r8, -572(r30)
001734  6f44c707  loads.w r8, 124(r14)
001738  e70e2ffb  storeli.w r18, -536(r30)
00173c  6f49470c  loads.w r18, 196(r14)
001740  674d8ffc  storeli.w r8, -300(r30)
001744  6f444708  loads.w r8, 132(r14)
001748  67412fff  storeli.w r18, -236(r30)
00174c  6f49870c  loads.w r18, 200(r14)
001750  674f8ffc  storeli.w r8, -268(r30)
001754  6f448708  loads.w r8, 136(r14)
001758  e74e2ffb  storeli.w r18, -532(r30)
00175c  6f49c70c  loads.w r18, 204(r14)
001760  e7012fff  storeli.w r18, -232(r30)
001764  6f49470d  loads.w r18, 212(r14)
001768  67022fff  storeli.w r18, -224(r30)
00176c  6f49c70d  loads.w r18, 220(r14)
001770  67422fff  storeli.w r18, -220(r30)
001774  6f49070e  loads.w r18, 224(r14)
001778  674f2ffb  storeli.w r18, -524(r30)
00177c  6f49470e  loads.w r18, 228(r14)
001780  e7022fff  storeli.w r18, -216(r30)
001784  6f49870e  loads.w r18, 232(r14)
001788  e70f2ffb  storeli.w r18, -520(r30)
00178c  6f49c70e  loads.w r18, 236(r14)
001790  e74f2ffb  storeli.w r18, -516(r30)
001794  6f49070f  loads.w r18, 240(r14)
001798  67002ffd  storeli.w r18, -512(r30)
00179c  6f49470f  loads.w r18, 244(r14)
0017a0  67402ffd  storeli.w r18, -508(r30)
0017a4  6f49870f  loads.w r18, 248(r14)
0017a8  6f47c70f  loads.w r14, 252(r14)
0017ac  e7002ffd  storeli.w r18, -504(r30)
0017b0  e740effc  storeli.w r14, -500(r30)
0017b4  3b200d00  bneq r26, zero, 8
0017b8  9f8a0800  addli r21, r17, 0
0017bc  1bbd9800  slli r26, r17, 9
0017c0  1b399800  slli r18, r16, 9
0017c4  1bc77801  srli r14, r17, 23
0017c8  1b4a7801  srli r20, r16, 23
0017cc  130d0d00  seteq r26, r26, zero
0017d0  13090900  seteq r18, r18, zero
0017d4  1b07f70f  andi r14, r14, 255
0017d8  1b0afa0f  andi r20, r20, 255
0017dc  1b77f70f  setlti r14, r14, 255
0017e0  1b7afa0f  setlti r20, r20, 255
0017e4  1717a701  or r14, r14, r26
0017e8  17192a01  or r18, r20, r18
0017ec  1707e900  and r14, r18, r14
0017f0  3b200700  bneq r14, zero, 8
0017f4  ab0ac07f  lui r21, 523264
0017f8  1f8d0d00  addli r26, r27, 0
0017fc  e70c5ffa  storeli.w r5, -568(r30)
001800  37200800  beq r16, zero, 8
001804  1f880a00  addli r16, r21, 0
001808  9f0d0200  addli r27, r4, 0
00180c  e7417fff  storeli.w r23, -228(r30)
001810  37a00800  beq r17, zero, 8
001814  9f080800  addli r17, r16, 0
001818  13675007  setle.f r14, zero, r21
00181c  13e80a06  setle.f r16, r21, zero
001820  1f820400  addli r4, r9, 0
001824  674e6ffb  storeli.w r22, -540(r30)
001828  1707e800  and r14, r16, r14
00182c  3b200700  bneq r14, zero, 8
001830  9f880a00  addli r17, r21, 0
001834  13e71605  setlt.f r14, r13, r17
001838  1f880800  addli r16, r17, 0
00183c  1f0b0400  addli r22, r8, 0
001840  3b200700  bneq r14, zero, 8
001844  1f880600  addli r16, r13, 0
001848  1bb79600  slli r14, r13, 9
00184c  1bb99800  slli r18, r17, 9
001850  1bca7601  srli r20, r13, 23
001854  9bca7801  srli r21, r17, 23
001858  63046ffb  loadli.w r8,  -592(r30)
00185c  13070700  seteq r14, r14, zero
001860  13090900  seteq r18, r18, zero
001864  1b0afa0f  andi r20, r20, 255
001868  9b8afa0f  andi r21, r21, 255
00186c  1b7afa0f  setlti r20, r20, 255
001870  9bfafa0f  setlti r21, r21, 255
001874  1717ea00  or r14, r20, r14
001878  17992a01  or r18, r21, r18
00187c  1707e900  and r14, r18, r14
001880  b7250712  beq r14, zero, 9576
001884  e34a4ffb  loadli.w r21,  -604(r30)
001888  bbb50812  bneq r17, zero, 9580
00188c  e3045ffb  loadli.w r9,  -600(r30)
001890  37a00600  beq r13, zero, 8
001894  9f860800  addli r13, r17, 0
001898  13670007  setle.f r14, zero, r16
00189c  93680806  setle.f r17, r16, zero
0018a0  1787e800  and r14, r17, r14
0018a4  3b200700  bneq r14, zero, 8
0018a8  9f060800  addli r13, r16, 0
0018ac  1367d504  setlt.f r14, r10, r13
0018b0  1f880600  addli r16, r13, 0
0018b4  e74ccffb  storeli.w r28, -564(r30)
0018b8  3b200700  bneq r14, zero, 8
0018bc  1f080500  addli r16, r10, 0
0018c0  1b379500  slli r14, r10, 9
0018c4  9bb89600  slli r17, r13, 9
0018c8  1b497501  srli r18, r10, 23
0018cc  1bca7601  srli r20, r13, 23
0018d0  634e5ffb  loadli.w r28,  -596(r30)
0018d4  13070700  seteq r14, r14, zero
0018d8  93880800  seteq r17, r17, zero
0018dc  1b09f90f  andi r18, r18, 255
0018e0  1b0afa0f  andi r20, r20, 255
0018e4  1b79f90f  setlti r18, r18, 255
0018e8  1b7afa0f  setlti r20, r20, 255
0018ec  1717e900  or r14, r18, r14
0018f0  97181a01  or r17, r20, r17
0018f4  1787e800  and r14, r17, r14
0018f8  37340712  beq r14, zero, 9484
0018fc  630abffb  loadli.w r20,  -552(r30)
001900  3bc40612  bneq r13, zero, 9488
001904  37200500  beq r10, zero, 8
001908  1f850600  addli r10, r13, 0
00190c  93660007  setle.f r13, zero, r16
001910  13670806  setle.f r14, r16, zero
001914  9706d700  and r13, r14, r13
001918  3ba00600  bneq r13, zero, 8
00191c  1f050800  addli r10, r16, 0
001920  13e7a704  setlt.f r14, r15, r10
001924  9f060500  addli r13, r10, 0
001928  3b200700  bneq r14, zero, 8
00192c  9f860700  addli r13, r15, 0
001930  1bb79700  slli r14, r15, 9
001934  1b389500  slli r16, r10, 9
001938  9bc87701  srli r17, r15, 23
00193c  1b497501  srli r18, r10, 23
001940  13070700  seteq r14, r14, zero
001944  13080800  seteq r16, r16, zero
001948  9b88f80f  andi r17, r17, 255
00194c  1b09f90f  andi r18, r18, 255
001950  9bf8f80f  setlti r17, r17, 255
001954  1b79f90f  setlti r18, r18, 255
001958  1797e800  or r14, r17, r14
00195c  17180901  or r16, r18, r16
001960  1707e800  and r14, r16, r14
001964  b7620712  beq r14, zero, 9400
001968  6349affb  loadli.w r18,  -556(r30)
00196c  bb720512  bneq r10, zero, 9404
001970  37a00700  beq r15, zero, 8
001974  9f070500  addli r15, r10, 0
001978  1365d006  setle.f r10, zero, r13
00197c  13e70606  setle.f r14, r13, zero
001980  1705a700  and r10, r14, r10
001984  3b200500  bneq r10, zero, 8
001988  9f870600  addli r15, r13, 0
00198c  93e6f904  setlt.f r13, r19, r15
001990  1f850700  addli r10, r15, 0
001994  3ba00600  bneq r13, zero, 8
001998  1f850900  addli r10, r19, 0
00199c  9bb69900  slli r13, r19, 9
0019a0  1bb79700  slli r14, r15, 9
0019a4  1bc87901  srli r16, r19, 23
0019a8  9bc87701  srli r17, r15, 23
0019ac  93860600  seteq r13, r13, zero
0019b0  13070700  seteq r14, r14, zero
0019b4  1b08f80f  andi r16, r16, 255
0019b8  9b88f80f  andi r17, r17, 255
0019bc  1b78f80f  setlti r16, r16, 255
0019c0  9bf8f80f  setlti r17, r17, 255
0019c4  9716d800  or r13, r16, r13
0019c8  1797e800  or r14, r17, r14
0019cc  9706d700  and r13, r14, r13
0019d0  b7910612  beq r13, zero, 9316
0019d4  e3488ffb  loadli.w r17,  -572(r30)
0019d8  bba10712  bneq r15, zero, 9320
0019dc  37a00900  beq r19, zero, 8
0019e0  9f890700  addli r19, r15, 0
0019e4  9366a006  setle.f r13, zero, r10
0019e8  13670506  setle.f r14, r10, zero
0019ec  9706d700  and r13, r14, r13
0019f0  3ba00600  bneq r13, zero, 8
0019f4  9f090500  addli r19, r10, 0
0019f8  93663105  setlt.f r13, r2, r19
0019fc  1f850900  addli r10, r19, 0
001a00  3ba00600  bneq r13, zero, 8
001a04  1f050100  addli r10, r2, 0
001a08  9b369100  slli r13, r2, 9
001a0c  1bb79900  slli r14, r19, 9
001a10  9b477101  srli r15, r2, 23
001a14  1bc87901  srli r16, r19, 23
001a18  93860600  seteq r13, r13, zero
001a1c  13070700  seteq r14, r14, zero
001a20  9b87f70f  andi r15, r15, 255
001a24  1b08f80f  andi r16, r16, 255
001a28  9bf7f70f  setlti r15, r15, 255
001a2c  1b78f80f  setlti r16, r16, 255
001a30  9796d700  or r13, r15, r13
001a34  1717e800  or r14, r16, r14
001a38  9706d700  and r13, r14, r13
001a3c  37c00612  beq r13, zero, 9232
001a40  3bd00912  bneq r19, zero, 9236
001a44  37200100  beq r2, zero, 8
001a48  1f810900  addli r2, r19, 0
001a4c  9366a006  setle.f r13, zero, r10
001a50  13670506  setle.f r14, r10, zero
001a54  9706d700  and r13, r14, r13
001a58  3ba00600  bneq r13, zero, 8
001a5c  1f010500  addli r2, r10, 0
001a60  93e62304  setlt.f r13, r7, r2
001a64  e309affb  loadli.w r19,  -560(r30)
001a68  1f050100  addli r10, r2, 0
001a6c  3ba00600  bneq r13, zero, 8
001a70  1f850300  addli r10, r7, 0
001a74  9bb69300  slli r13, r7, 9
001a78  1b379100  slli r14, r2, 9
001a7c  9bc77301  srli r15, r7, 23
001a80  1b487101  srli r16, r2, 23
001a84  93860600  seteq r13, r13, zero
001a88  13070700  seteq r14, r14, zero
001a8c  9b87f70f  andi r15, r15, 255
001a90  1b08f80f  andi r16, r16, 255
001a94  9bf7f70f  setlti r15, r15, 255
001a98  1b78f80f  setlti r16, r16, 255
001a9c  9796d700  or r13, r15, r13
001aa0  1717e800  or r14, r16, r14
001aa4  9706d700  and r13, r14, r13
001aa8  b7ee0610  beq r13, zero, 9144
001aac  63088ffb  loadli.w r16,  -576(r30)
001ab0  bb7e0110  bneq r2, zero, 9148
001ab4  37a00300  beq r7, zero, 8
001ab8  9f030100  addli r7, r2, 0
001abc  1361a006  setle.f r2, zero, r10
001ac0  93660506  setle.f r13, r10, zero
001ac4  17812600  and r2, r13, r2
001ac8  3b200100  bneq r2, zero, 8
001acc  9f030500  addli r7, r10, 0
001ad0  13657304  setlt.f r10, r6, r7
001ad4  1f810300  addli r2, r7, 0
001ad8  3b200500  bneq r10, zero, 8
001adc  1f010300  addli r2, r6, 0
001ae0  1b359300  slli r10, r6, 9
001ae4  9bb69300  slli r13, r7, 9
001ae8  1b477301  srli r14, r6, 23
001aec  9bc77301  srli r15, r7, 23
001af0  13050500  seteq r10, r10, zero
001af4  93860600  seteq r13, r13, zero
001af8  1b07f70f  andi r14, r14, 255
001afc  9b87f70f  andi r15, r15, 255
001b00  1b77f70f  setlti r14, r14, 255
001b04  9bf7f70f  setlti r15, r15, 255
001b08  1715a700  or r10, r14, r10
001b0c  9796d700  or r13, r15, r13
001b10  1785a600  and r10, r13, r10
001b14  b71d0510  beq r10, zero, 9060
001b18  e3477ffb  loadli.w r15,  -580(r30)
001b1c  bbad0310  bneq r7, zero, 9064
001b20  37200300  beq r6, zero, 8
001b24  1f830300  addli r6, r7, 0
001b28  93632006  setle.f r7, zero, r2
001b2c  13650106  setle.f r10, r2, zero
001b30  97037500  and r7, r10, r7
001b34  3ba00300  bneq r7, zero, 8
001b38  1f030100  addli r6, r2, 0
001b3c  93e36104  setlt.f r7, r3, r6
001b40  1f010300  addli r2, r6, 0
001b44  3ba00300  bneq r7, zero, 8
001b48  1f810100  addli r2, r3, 0
001b4c  9bb39100  slli r7, r3, 9
001b50  1b359300  slli r10, r6, 9
001b54  9bc67101  srli r13, r3, 23
001b58  1b477301  srli r14, r6, 23
001b5c  93830300  seteq r7, r7, zero
001b60  13050500  seteq r10, r10, zero
001b64  9b86f60f  andi r13, r13, 255
001b68  1b07f70f  andi r14, r14, 255
001b6c  9bf6f60f  setlti r13, r13, 255
001b70  1b77f70f  setlti r14, r14, 255
001b74  97937600  or r7, r13, r7
001b78  1715a700  or r10, r14, r10
001b7c  97037500  and r7, r10, r7
001b80  37cc0310  beq r7, zero, 8976
001b84  63474ffc  loadli.w r14,  -476(r30)
001b88  3b5c0310  bneq r6, zero, 8980
001b8c  37a00100  beq r3, zero, 8
001b90  9f010300  addli r3, r6, 0
001b94  13632006  setle.f r6, zero, r2
001b98  93630106  setle.f r7, r2, zero
001b9c  17836300  and r6, r7, r6
001ba0  3b200300  bneq r6, zero, 8
001ba4  9f010100  addli r3, r2, 0
001ba8  13e33504  setlt.f r6, r11, r3
001bac  1f810100  addli r2, r3, 0
001bb0  3b200300  bneq r6, zero, 8
001bb4  1f810500  addli r2, r11, 0
001bb8  1bb39500  slli r6, r11, 9
001bbc  9bb39100  slli r7, r3, 9
001bc0  1bc57501  srli r10, r11, 23
001bc4  9bc67101  srli r13, r3, 23
001bc8  13030300  seteq r6, r6, zero
001bcc  93830300  seteq r7, r7, zero
001bd0  1b05f50f  andi r10, r10, 255
001bd4  9b86f60f  andi r13, r13, 255
001bd8  1b75f50f  setlti r10, r10, 255
001bdc  9bf6f60f  setlti r13, r13, 255
001be0  17136500  or r6, r10, r6
001be4  97937600  or r7, r13, r7
001be8  17836300  and r6, r7, r6
001bec  b77a0310  beq r6, zero, 8892
001bf0  e30b4ffc  loadli.w r23,  -480(r30)
001bf4  3b8b0110  bneq r3, zero, 8896
001bf8  37a00500  beq r11, zero, 8
001bfc  9f850100  addli r11, r3, 0
001c00  93612006  setle.f r3, zero, r2
001c04  13630106  setle.f r6, r2, zero
001c08  97013300  and r3, r6, r3
001c0c  3ba00100  bneq r3, zero, 8
001c10  9f050100  addli r11, r2, 0
001c14  9361b604  setlt.f r3, r12, r11
001c18  1f810500  addli r2, r11, 0
001c1c  3ba00100  bneq r3, zero, 8
001c20  1f010600  addli r2, r12, 0
001c24  9b319600  slli r3, r12, 9
001c28  1bb39500  slli r6, r11, 9
001c2c  9b437601  srli r7, r12, 23
001c30  1bc57501  srli r10, r11, 23
001c34  93810100  seteq r3, r3, zero
001c38  13030300  seteq r6, r6, zero
001c3c  9b83f30f  andi r7, r7, 255
001c40  1b05f50f  andi r10, r10, 255
001c44  9bf3f30f  setlti r7, r7, 255
001c48  1b75f50f  setlti r10, r10, 255
001c4c  97913300  or r3, r7, r3
001c50  17136500  or r6, r10, r6
001c54  97013300  and r3, r6, r3
001c58  b7a90110  beq r3, zero, 8808
001c5c  bbb90510  bneq r11, zero, 8812
001c60  37200600  beq r12, zero, 8
001c64  1f860500  addli r12, r11, 0
001c68  93612006  setle.f r3, zero, r2
001c6c  13630106  setle.f r6, r2, zero
001c70  97013300  and r3, r6, r3
001c74  3ba00100  bneq r3, zero, 8
001c78  1f060100  addli r12, r2, 0
001c7c  93e1c004  setlt.f r3, r1, r12
001c80  e345bffb  loadli.w r11,  -548(r30)
001c84  1f010600  addli r2, r12, 0
001c88  3ba00100  bneq r3, zero, 8
001c8c  1f810000  addli r2, r1, 0
001c90  9bb19000  slli r3, r1, 9
001c94  1b339600  slli r6, r12, 9
001c98  9bc37001  srli r7, r1, 23
001c9c  1b457601  srli r10, r12, 23
001ca0  93810100  seteq r3, r3, zero
001ca4  13030300  seteq r6, r6, zero
001ca8  9b83f30f  andi r7, r7, 255
001cac  1b05f50f  andi r10, r10, 255
001cb0  9bf3f30f  setlti r7, r7, 255
001cb4  1b75f50f  setlti r10, r10, 255
001cb8  97913300  or r3, r7, r3
001cbc  17136500  or r6, r10, r6
001cc0  97013300  and r3, r6, r3
001cc4  37c80110  beq r3, zero, 8720
001cc8  3b580610  bneq r12, zero, 8724
001ccc  37a00000  beq r1, zero, 8
001cd0  9f000600  addli r1, r12, 0
001cd4  93612006  setle.f r3, zero, r2
001cd8  13630106  setle.f r6, r2, zero
001cdc  97013300  and r3, r6, r3
001ce0  3ba00100  bneq r3, zero, 8
001ce4  9f000100  addli r1, r2, 0
001ce8  93611c04  setlt.f r3, r24, r1
001cec  63463ffc  loadli.w r12,  -484(r30)
001cf0  1f810000  addli r2, r1, 0
001cf4  3ba00100  bneq r3, zero, 8
001cf8  1f010c00  addli r2, r24, 0
001cfc  9b319c00  slli r3, r24, 9
001d00  1bb39000  slli r6, r1, 9
001d04  9b437c01  srli r7, r24, 23
001d08  1bc57001  srli r10, r1, 23
001d0c  93810100  seteq r3, r3, zero
001d10  13030300  seteq r6, r6, zero
001d14  9b83f30f  andi r7, r7, 255
001d18  1b05f50f  andi r10, r10, 255
001d1c  9bf3f30f  setlti r7, r7, 255
001d20  1b75f50f  setlti r10, r10, 255
001d24  97913300  or r3, r7, r3
001d28  17136500  or r6, r10, r6
001d2c  97013300  and r3, r6, r3
001d30  b7e60110  beq r3, zero, 8632
001d34  63057ffb  loadli.w r10,  -584(r30)
001d38  bbf60010  bneq r1, zero, 8636
001d3c  37200c00  beq r24, zero, 8
001d40  1f8c0000  addli r24, r1, 0
001d44  93602006  setle.f r1, zero, r2
001d48  93610106  setle.f r3, r2, zero
001d4c  97801100  and r1, r3, r1
001d50  3ba00000  bneq r1, zero, 8
001d54  1f0c0100  addli r24, r2, 0
001d58  13e18c05  setlt.f r2, r25, r24
001d5c  9f000c00  addli r1, r24, 0
001d60  3b200100  bneq r2, zero, 8
001d64  9f800c00  addli r1, r25, 0
001d68  1bb19c00  slli r2, r25, 9
001d6c  9b319c00  slli r3, r24, 9
001d70  1bc37c01  srli r6, r25, 23
001d74  9b437c01  srli r7, r24, 23
001d78  13010100  seteq r2, r2, zero
001d7c  93810100  seteq r3, r3, zero
001d80  1b03f30f  andi r6, r6, 255
001d84  9b83f30f  andi r7, r7, 255
001d88  1b73f30f  setlti r6, r6, 255
001d8c  9bf3f30f  setlti r7, r7, 255
001d90  17112300  or r2, r6, r2
001d94  97913300  or r3, r7, r3
001d98  17812100  and r2, r3, r2
001d9c  b7150110  beq r2, zero, 8548
001da0  bb250c10  bneq r24, zero, 8552
001da4  37a00c00  beq r25, zero, 8
001da8  9f0c0c00  addli r25, r24, 0
001dac  13611006  setle.f r2, zero, r1
001db0  93e10006  setle.f r3, r1, zero
001db4  17812100  and r2, r3, r2
001db8  3b200100  bneq r2, zero, 8
001dbc  9f8c0000  addli r25, r1, 0
001dc0  13619205  setlt.f r2, r4, r25
001dc4  634cdffb  loadli.w r24,  -532(r30)
001dc8  9f800c00  addli r1, r25, 0
001dcc  3b200100  bneq r2, zero, 8
001dd0  9f000200  addli r1, r4, 0
001dd4  1b319200  slli r2, r4, 9
001dd8  9bb19c00  slli r3, r25, 9
001ddc  1b437201  srli r6, r4, 23
001de0  9bc37c01  srli r7, r25, 23
001de4  13010100  seteq r2, r2, zero
001de8  93810100  seteq r3, r3, zero
001dec  1b03f30f  andi r6, r6, 255
001df0  9b83f30f  andi r7, r7, 255
001df4  1b73f30f  setlti r6, r6, 255
001df8  9bf3f30f  setlti r7, r7, 255
001dfc  17112300  or r2, r6, r2
001e00  97913300  or r3, r7, r3
001e04  17812100  and r2, r3, r2
001e08  37340110  beq r2, zero, 8460
001e0c  3bc40c10  bneq r25, zero, 8464
001e10  37200200  beq r4, zero, 8
001e14  1f820c00  addli r4, r25, 0
001e18  13611006  setle.f r2, zero, r1
001e1c  93e10006  setle.f r3, r1, zero
001e20  17812100  and r2, r3, r2
001e24  3b200100  bneq r2, zero, 8
001e28  1f820000  addli r4, r1, 0
001e2c  13e14d04  setlt.f r2, r27, r4
001e30  e30c6ffd  loadli.w r25,  -336(r30)
001e34  9f000200  addli r1, r4, 0
001e38  3b200100  bneq r2, zero, 8
001e3c  9f800d00  addli r1, r27, 0
001e40  1bb19d00  slli r2, r27, 9
001e44  9b319200  slli r3, r4, 9
001e48  1bc37d01  srli r6, r27, 23
001e4c  9b437201  srli r7, r4, 23
001e50  13010100  seteq r2, r2, zero
001e54  93810100  seteq r3, r3, zero
001e58  1b03f30f  andi r6, r6, 255
001e5c  9b83f30f  andi r7, r7, 255
001e60  1b73f30f  setlti r6, r6, 255
001e64  9bf3f30f  setlti r7, r7, 255
001e68  17112300  or r2, r6, r2
001e6c  97913300  or r3, r7, r3
001e70  17812100  and r2, r3, r2
001e74  3b200100  bneq r2, zero, 8
001e78  ab00c07f  lui r1, 523264
001e7c  e303cffb  loadli.w r7,  -544(r30)
001e80  63037ffd  loadli.w r6,  -328(r30)
001e84  37200200  beq r4, zero, 8
001e88  1f820000  addli r4, r1, 0
001e8c  37a00d00  beq r27, zero, 8
001e90  9f0d0200  addli r27, r4, 0
001e94  13611006  setle.f r2, zero, r1
001e98  93e10006  setle.f r3, r1, zero
001e9c  17812100  and r2, r3, r2
001ea0  3b200100  bneq r2, zero, 8
001ea4  9f8d0000  addli r27, r1, 0
001ea8  1361b305  setlt.f r2, r6, r27
001eac  9f800d00  addli r1, r27, 0
001eb0  3b200100  bneq r2, zero, 8
001eb4  9f000300  addli r1, r6, 0
001eb8  1b319300  slli r2, r6, 9
001ebc  9bb19d00  slli r3, r27, 9
001ec0  1b427301  srli r4, r6, 23
001ec4  1bc37d01  srli r6, r27, 23
001ec8  e3426ffb  loadli.w r5,  -588(r30)
001ecc  13010100  seteq r2, r2, zero
001ed0  93810100  seteq r3, r3, zero
001ed4  1b02f20f  andi r4, r4, 255
001ed8  1b03f30f  andi r6, r6, 255
001edc  1b72f20f  setlti r4, r4, 255
001ee0  1b73f30f  setlti r6, r6, 255
001ee4  17112200  or r2, r4, r2
001ee8  97113300  or r3, r6, r3
001eec  17812100  and r2, r3, r2
001ef0  b7600110  beq r2, zero, 8248
001ef4  bbf00d10  bneq r27, zero, 8252
001ef8  63037ffd  loadli.w r6,  -328(r30)
001efc  37200300  beq r6, zero, 8
001f00  1f830d00  addli r6, r27, 0
001f04  13611006  setle.f r2, zero, r1
001f08  93e10006  setle.f r3, r1, zero
001f0c  9f060700  addli r13, r14, 0
001f10  17812100  and r2, r3, r2
001f14  3b200100  bneq r2, zero, 8
001f18  1f830000  addli r6, r1, 0
001f1c  13e16404  setlt.f r2, r9, r6
001f20  e34d2ffc  loadli.w r27,  -492(r30)
001f24  1f870c00  addli r14, r25, 0
001f28  9f000300  addli r1, r6, 0
001f2c  3b200100  bneq r2, zero, 8
001f30  9f800400  addli r1, r9, 0
001f34  1bb19400  slli r2, r9, 9
001f38  9b319300  slli r3, r6, 9
001f3c  1bc27401  srli r4, r9, 23
001f40  9f0c0300  addli r25, r6, 0
001f44  1b437301  srli r6, r6, 23
001f48  13010100  seteq r2, r2, zero
001f4c  93810100  seteq r3, r3, zero
001f50  1b02f20f  andi r4, r4, 255
001f54  1b03f30f  andi r6, r6, 255
001f58  1b72f20f  setlti r4, r4, 255
001f5c  1b73f30f  setlti r6, r6, 255
001f60  17112200  or r2, r4, r2
001f64  97113300  or r3, r6, r3
001f68  17812100  and r2, r3, r2
001f6c  375f010e  beq r2, zero, 8148
001f70  3bef0c0e  bneq r25, zero, 8152
001f74  37a00400  beq r9, zero, 8
001f78  9f840c00  addli r9, r25, 0
001f7c  13611006  setle.f r2, zero, r1
001f80  93e10006  setle.f r3, r1, zero
001f84  17812100  and r2, r3, r2
001f88  3b200100  bneq r2, zero, 8
001f8c  9f840000  addli r9, r1, 0
001f90  13619e04  setlt.f r2, r28, r9
001f94  9f800400  addli r1, r9, 0
001f98  9f0c0700  addli r25, r14, 0
001f9c  3b200100  bneq r2, zero, 8
001fa0  9f000e00  addli r1, r28, 0
001fa4  1b319e00  slli r2, r28, 9
001fa8  9bb19400  slli r3, r9, 9
001fac  1b427e01  srli r4, r28, 23
001fb0  1bc37401  srli r6, r9, 23
001fb4  1f870600  addli r14, r13, 0
001fb8  13010100  seteq r2, r2, zero
001fbc  93810100  seteq r3, r3, zero
001fc0  1b02f20f  andi r4, r4, 255
001fc4  1b03f30f  andi r6, r6, 255
001fc8  1b72f20f  setlti r4, r4, 255
001fcc  1b73f30f  setlti r6, r6, 255
001fd0  17112200  or r2, r4, r2
001fd4  97113300  or r3, r6, r3
001fd8  17812100  and r2, r3, r2
001fdc  b76d010e  beq r2, zero, 8056
001fe0  9f860b00  addli r13, r23, 0
001fe4  bbfd040e  bneq r9, zero, 8060
001fe8  37200e00  beq r28, zero, 8
001fec  1f8e0400  addli r28, r9, 0
001ff0  13611006  setle.f r2, zero, r1
001ff4  93e10006  setle.f r3, r1, zero
001ff8  17812100  and r2, r3, r2
001ffc  3b200100  bneq r2, zero, 8
002000  1f8e0000  addli r28, r1, 0
002004  1361c405  setlt.f r2, r8, r28
002008  e3040ffc  loadli.w r9,  -512(r30)
00200c  9f000e00  addli r1, r28, 0
002010  3b200100  bneq r2, zero, 8
002014  9f000400  addli r1, r8, 0
002018  1b319400  slli r2, r8, 9
00201c  9b319e00  slli r3, r28, 9
002020  1b427401  srli r4, r8, 23
002024  1b437e01  srli r6, r28, 23
002028  13010100  seteq r2, r2, zero
00202c  93810100  seteq r3, r3, zero
002030  1b02f20f  andi r4, r4, 255
002034  1b03f30f  andi r6, r6, 255
002038  1b72f20f  setlti r4, r4, 255
00203c  1b73f30f  setlti r6, r6, 255
002040  17112200  or r2, r4, r2
002044  97113300  or r3, r6, r3
002048  17812100  and r2, r3, r2
00204c  b70c010e  beq r2, zero, 7968
002050  bb1c0e0e  bneq r28, zero, 7972
002054  37200400  beq r8, zero, 8
002058  1f040e00  addli r8, r28, 0
00205c  13611006  setle.f r2, zero, r1
002060  93e10006  setle.f r3, r1, zero
002064  17812100  and r2, r3, r2
002068  3b200100  bneq r2, zero, 8
00206c  1f840000  addli r8, r1, 0
002070  13e18204  setlt.f r2, r5, r8
002074  630e2ffc  loadli.w r28,  -496(r30)
002078  9f000400  addli r1, r8, 0
00207c  3b200100  bneq r2, zero, 8
002080  9f800200  addli r1, r5, 0
002084  1bb19200  slli r2, r5, 9
002088  9b319400  slli r3, r8, 9
00208c  1bc27201  srli r4, r5, 23
002090  1b437401  srli r6, r8, 23
002094  13010100  seteq r2, r2, zero
002098  93810100  seteq r3, r3, zero
00209c  1b02f20f  andi r4, r4, 255
0020a0  1b03f30f  andi r6, r6, 255
0020a4  1b72f20f  setlti r4, r4, 255
0020a8  1b73f30f  setlti r6, r6, 255
0020ac  17112200  or r2, r4, r2
0020b0  97113300  or r3, r6, r3
0020b4  17812100  and r2, r3, r2
0020b8  372b010e  beq r2, zero, 7880
0020bc  6343effb  loadli.w r6,  -524(r30)
0020c0  3b3b040e  bneq r8, zero, 7884
0020c4  37a00200  beq r5, zero, 8
0020c8  9f020400  addli r5, r8, 0
0020cc  13611006  setle.f r2, zero, r1
0020d0  93e10006  setle.f r3, r1, zero
0020d4  17812100  and r2, r3, r2
0020d8  3b200100  bneq r2, zero, 8
0020dc  9f820000  addli r5, r1, 0
0020e0  13615504  setlt.f r2, r10, r5
0020e4  9f800200  addli r1, r5, 0
0020e8  3b200100  bneq r2, zero, 8
0020ec  9f000500  addli r1, r10, 0
0020f0  1b319500  slli r2, r10, 9
0020f4  9bb19200  slli r3, r5, 9
0020f8  1b427501  srli r4, r10, 23
0020fc  1f840200  addli r8, r5, 0
002100  9bc27201  srli r5, r5, 23
002104  13010100  seteq r2, r2, zero
002108  93810100  seteq r3, r3, zero
00210c  1b02f20f  andi r4, r4, 255
002110  9b82f20f  andi r5, r5, 255
002114  1b72f20f  setlti r4, r4, 255
002118  9bf2f20f  setlti r5, r5, 255
00211c  17112200  or r2, r4, r2
002120  97913200  or r3, r5, r3
002124  17812100  and r2, r3, r2
002128  b749010e  beq r2, zero, 7792
00212c  63028ffd  loadli.w r4,  -320(r30)
002130  bb59040e  bneq r8, zero, 7796
002134  37200500  beq r10, zero, 8
002138  1f050400  addli r10, r8, 0
00213c  13611006  setle.f r2, zero, r1
002140  93e10006  setle.f r3, r1, zero
002144  17812100  and r2, r3, r2
002148  3b200100  bneq r2, zero, 8
00214c  1f850000  addli r10, r1, 0
002150  1361a204  setlt.f r2, r4, r10
002154  9f000500  addli r1, r10, 0
002158  3b200100  bneq r2, zero, 8
00215c  9f000200  addli r1, r4, 0
002160  1b319200  slli r2, r4, 9
002164  9b319500  slli r3, r10, 9
002168  1b427201  srli r4, r4, 23
00216c  9b427501  srli r5, r10, 23
002170  13010100  seteq r2, r2, zero
002174  93810100  seteq r3, r3, zero
002178  1b02f20f  andi r4, r4, 255
00217c  9b82f20f  andi r5, r5, 255
002180  1b72f20f  setlti r4, r4, 255
002184  9bf2f20f  setlti r5, r5, 255
002188  17112200  or r2, r4, r2
00218c  97913200  or r3, r5, r3
002190  17812100  and r2, r3, r2
002194  3778010e  beq r2, zero, 7708
002198  bb08050e  bneq r10, zero, 7712
00219c  e3028ffd  loadli.w r5,  -320(r30)
0021a0  37a00200  beq r5, zero, 8
0021a4  9f020500  addli r5, r10, 0
0021a8  13611006  setle.f r2, zero, r1
0021ac  93e10006  setle.f r3, r1, zero
0021b0  17812100  and r2, r3, r2
0021b4  3b200100  bneq r2, zero, 8
0021b8  9f820000  addli r5, r1, 0
0021bc  13e15704  setlt.f r2, r15, r5
0021c0  9f800200  addli r1, r5, 0
0021c4  3b200100  bneq r2, zero, 8
0021c8  9f800700  addli r1, r15, 0
0021cc  1bb19700  slli r2, r15, 9
0021d0  9bb19200  slli r3, r5, 9
0021d4  1bc27701  srli r4, r15, 23
0021d8  1f850200  addli r10, r5, 0
0021dc  9bc27201  srli r5, r5, 23
0021e0  13010100  seteq r2, r2, zero
0021e4  93810100  seteq r3, r3, zero
0021e8  1b02f20f  andi r4, r4, 255
0021ec  9b82f20f  andi r5, r5, 255
0021f0  1b72f20f  setlti r4, r4, 255
0021f4  9bf2f20f  setlti r5, r5, 255
0021f8  17112200  or r2, r4, r2
0021fc  97913200  or r3, r5, r3
002200  17812100  and r2, r3, r2
002204  3717010e  beq r2, zero, 7620
002208  63029ffd  loadli.w r4,  -312(r30)
00220c  3b27050e  bneq r10, zero, 7624
002210  37a00700  beq r15, zero, 8
002214  9f070500  addli r15, r10, 0
002218  13611006  setle.f r2, zero, r1
00221c  93e10006  setle.f r3, r1, zero
002220  17812100  and r2, r3, r2
002224  3b200100  bneq r2, zero, 8
002228  9f870000  addli r15, r1, 0
00222c  1361f204  setlt.f r2, r4, r15
002230  9f800700  addli r1, r15, 0
002234  3b200100  bneq r2, zero, 8
002238  9f000200  addli r1, r4, 0
00223c  1b319200  slli r2, r4, 9
002240  9bb19700  slli r3, r15, 9
002244  1b427201  srli r4, r4, 23
002248  9bc27701  srli r5, r15, 23
00224c  13010100  seteq r2, r2, zero
002250  93810100  seteq r3, r3, zero
002254  1b02f20f  andi r4, r4, 255
002258  9b82f20f  andi r5, r5, 255
00225c  1b72f20f  setlti r4, r4, 255
002260  9bf2f20f  setlti r5, r5, 255
002264  17112200  or r2, r4, r2
002268  97913200  or r3, r5, r3
00226c  17812100  and r2, r3, r2
002270  b745010e  beq r2, zero, 7536
002274  bbd5070e  bneq r15, zero, 7540
002278  e3029ffd  loadli.w r5,  -312(r30)
00227c  37a00200  beq r5, zero, 8
002280  9f820700  addli r5, r15, 0
002284  13611006  setle.f r2, zero, r1
002288  93e10006  setle.f r3, r1, zero
00228c  17812100  and r2, r3, r2
002290  3b200100  bneq r2, zero, 8
002294  9f820000  addli r5, r1, 0
002298  13615804  setlt.f r2, r16, r5
00229c  9f800200  addli r1, r5, 0
0022a0  3b200100  bneq r2, zero, 8
0022a4  9f000800  addli r1, r16, 0
0022a8  1b319800  slli r2, r16, 9
0022ac  9bb19200  slli r3, r5, 9
0022b0  1b427801  srli r4, r16, 23
0022b4  9f870200  addli r15, r5, 0
0022b8  9bc27201  srli r5, r5, 23
0022bc  13010100  seteq r2, r2, zero
0022c0  93810100  seteq r3, r3, zero
0022c4  1b02f20f  andi r4, r4, 255
0022c8  9b82f20f  andi r5, r5, 255
0022cc  1b72f20f  setlti r4, r4, 255
0022d0  9bf2f20f  setlti r5, r5, 255
0022d4  17112200  or r2, r4, r2
0022d8  97913200  or r3, r5, r3
0022dc  17812100  and r2, r3, r2
0022e0  3764010e  beq r2, zero, 7448
0022e4  6302affd  loadli.w r4,  -304(r30)
0022e8  3bf4070e  bneq r15, zero, 7452
0022ec  37200800  beq r16, zero, 8
0022f0  1f880700  addli r16, r15, 0
0022f4  13611006  setle.f r2, zero, r1
0022f8  93e10006  setle.f r3, r1, zero
0022fc  17812100  and r2, r3, r2
002300  3b200100  bneq r2, zero, 8
002304  1f880000  addli r16, r1, 0
002308  13610205  setlt.f r2, r4, r16
00230c  9f000800  addli r1, r16, 0
002310  3b200100  bneq r2, zero, 8
002314  9f000200  addli r1, r4, 0
002318  1b319200  slli r2, r4, 9
00231c  9b319800  slli r3, r16, 9
002320  1b427201  srli r4, r4, 23
002324  9b427801  srli r5, r16, 23
002328  13010100  seteq r2, r2, zero
00232c  93810100  seteq r3, r3, zero
002330  1b02f20f  andi r4, r4, 255
002334  9b82f20f  andi r5, r5, 255
002338  1b72f20f  setlti r4, r4, 255
00233c  9bf2f20f  setlti r5, r5, 255
002340  17112200  or r2, r4, r2
002344  97913200  or r3, r5, r3
002348  17812100  and r2, r3, r2
00234c  3713010e  beq r2, zero, 7364
002350  3b23080e  bneq r16, zero, 7368
002354  e302affd  loadli.w r5,  -304(r30)
002358  37a00200  beq r5, zero, 8
00235c  9f020800  addli r5, r16, 0
002360  13611006  setle.f r2, zero, r1
002364  93e10006  setle.f r3, r1, zero
002368  17812100  and r2, r3, r2
00236c  3b200100  bneq r2, zero, 8
002370  9f820000  addli r5, r1, 0
002374  13e15804  setlt.f r2, r17, r5
002378  9f800200  addli r1, r5, 0
00237c  3b200100  bneq r2, zero, 8
002380  9f800800  addli r1, r17, 0
002384  1bb19800  slli r2, r17, 9
002388  9bb19200  slli r3, r5, 9
00238c  1bc27801  srli r4, r17, 23
002390  1f880200  addli r16, r5, 0
002394  9bc27201  srli r5, r5, 23
002398  13010100  seteq r2, r2, zero
00239c  93810100  seteq r3, r3, zero
0023a0  1b02f20f  andi r4, r4, 255
0023a4  9b82f20f  andi r5, r5, 255
0023a8  1b72f20f  setlti r4, r4, 255
0023ac  9bf2f20f  setlti r5, r5, 255
0023b0  17112200  or r2, r4, r2
0023b4  97913200  or r3, r5, r3
0023b8  17812100  and r2, r3, r2
0023bc  b731010e  beq r2, zero, 7276
0023c0  6342affd  loadli.w r4,  -300(r30)
0023c4  bb41080e  bneq r16, zero, 7280
0023c8  37a00800  beq r17, zero, 8
0023cc  9f080800  addli r17, r16, 0
0023d0  13611006  setle.f r2, zero, r1
0023d4  93e10006  setle.f r3, r1, zero
0023d8  17812100  and r2, r3, r2
0023dc  3b200100  bneq r2, zero, 8
0023e0  9f880000  addli r17, r1, 0
0023e4  13611205  setlt.f r2, r4, r17
0023e8  9f800800  addli r1, r17, 0
0023ec  3b200100  bneq r2, zero, 8
0023f0  9f000200  addli r1, r4, 0
0023f4  1b319200  slli r2, r4, 9
0023f8  9bb19800  slli r3, r17, 9
0023fc  1b427201  srli r4, r4, 23
002400  9bc27801  srli r5, r17, 23
002404  13010100  seteq r2, r2, zero
002408  93810100  seteq r3, r3, zero
00240c  1b02f20f  andi r4, r4, 255
002410  9b82f20f  andi r5, r5, 255
002414  1b72f20f  setlti r4, r4, 255
002418  9bf2f20f  setlti r5, r5, 255
00241c  17112200  or r2, r4, r2
002420  97913200  or r3, r5, r3
002424  17812100  and r2, r3, r2
002428  3760010e  beq r2, zero, 7192
00242c  3bf0080e  bneq r17, zero, 7196
002430  e342affd  loadli.w r5,  -300(r30)
002434  37a00200  beq r5, zero, 8
002438  9f820800  addli r5, r17, 0
00243c  13611006  setle.f r2, zero, r1
002440  93e10006  setle.f r3, r1, zero
002444  17812100  and r2, r3, r2
002448  3b200100  bneq r2, zero, 8
00244c  9f820000  addli r5, r1, 0
002450  13615d04  setlt.f r2, r26, r5
002454  9f800200  addli r1, r5, 0
002458  3b200100  bneq r2, zero, 8
00245c  9f000d00  addli r1, r26, 0
002460  1b319d00  slli r2, r26, 9
002464  9bb19200  slli r3, r5, 9
002468  1b427d01  srli r4, r26, 23
00246c  9f880200  addli r17, r5, 0
002470  9bc27201  srli r5, r5, 23
002474  13010100  seteq r2, r2, zero
002478  93810100  seteq r3, r3, zero
00247c  1b02f20f  andi r4, r4, 255
002480  9b82f20f  andi r5, r5, 255
002484  1b72f20f  setlti r4, r4, 255
002488  9bf2f20f  setlti r5, r5, 255
00248c  17112200  or r2, r4, r2
002490  97913200  or r3, r5, r3
002494  17812100  and r2, r3, r2
002498  370f010c  beq r2, zero, 7104
00249c  6342effd  loadli.w r4,  -268(r30)
0024a0  3b9f080c  bneq r17, zero, 7108
0024a4  37200d00  beq r26, zero, 8
0024a8  1f8d0800  addli r26, r17, 0
0024ac  13611006  setle.f r2, zero, r1
0024b0  93e10006  setle.f r3, r1, zero
0024b4  17812100  and r2, r3, r2
0024b8  3b200100  bneq r2, zero, 8
0024bc  1f8d0000  addli r26, r1, 0
0024c0  1361a205  setlt.f r2, r4, r26
0024c4  9f000d00  addli r1, r26, 0
0024c8  3b200100  bneq r2, zero, 8
0024cc  9f000200  addli r1, r4, 0
0024d0  1b319200  slli r2, r4, 9
0024d4  9b319d00  slli r3, r26, 9
0024d8  1b427201  srli r4, r4, 23
0024dc  9b427d01  srli r5, r26, 23
0024e0  13010100  seteq r2, r2, zero
0024e4  93810100  seteq r3, r3, zero
0024e8  1b02f20f  andi r4, r4, 255
0024ec  9b82f20f  andi r5, r5, 255
0024f0  1b72f20f  setlti r4, r4, 255
0024f4  9bf2f20f  setlti r5, r5, 255
0024f8  17112200  or r2, r4, r2
0024fc  97913200  or r3, r5, r3
002500  17812100  and r2, r3, r2
002504  b73d010c  beq r2, zero, 7020
002508  bb4d0d0c  bneq r26, zero, 7024
00250c  e342effd  loadli.w r5,  -268(r30)
002510  37a00200  beq r5, zero, 8
002514  9f020d00  addli r5, r26, 0
002518  13611006  setle.f r2, zero, r1
00251c  93e10006  setle.f r3, r1, zero
002520  17812100  and r2, r3, r2
002524  3b200100  bneq r2, zero, 8
002528  9f820000  addli r5, r1, 0
00252c  13615b04  setlt.f r2, r22, r5
002530  9f800200  addli r1, r5, 0
002534  3b200100  bneq r2, zero, 8
002538  9f000b00  addli r1, r22, 0
00253c  1b319b00  slli r2, r22, 9
002540  9bb19200  slli r3, r5, 9
002544  1b427b01  srli r4, r22, 23
002548  1f8d0200  addli r26, r5, 0
00254c  9bc27201  srli r5, r5, 23
002550  13010100  seteq r2, r2, zero
002554  93810100  seteq r3, r3, zero
002558  1b02f20f  andi r4, r4, 255
00255c  9b82f20f  andi r5, r5, 255
002560  1b72f20f  setlti r4, r4, 255
002564  9bf2f20f  setlti r5, r5, 255
002568  17112200  or r2, r4, r2
00256c  97913200  or r3, r5, r3
002570  17812100  and r2, r3, r2
002574  375c010c  beq r2, zero, 6932
002578  3b6c0d0c  bneq r26, zero, 6936
00257c  37200b00  beq r22, zero, 8
002580  1f0b0d00  addli r22, r26, 0
002584  13611006  setle.f r2, zero, r1
002588  93e10006  setle.f r3, r1, zero
00258c  17812100  and r2, r3, r2
002590  3b200100  bneq r2, zero, 8
002594  1f8b0000  addli r22, r1, 0
002598  13e16a05  setlt.f r2, r21, r22
00259c  9f000b00  addli r1, r22, 0
0025a0  3b200100  bneq r2, zero, 8
0025a4  9f800a00  addli r1, r21, 0
0025a8  1bb19a00  slli r2, r21, 9
0025ac  9b319b00  slli r3, r22, 9
0025b0  1bc27a01  srli r4, r21, 23
0025b4  9b427b01  srli r5, r22, 23
0025b8  13010100  seteq r2, r2, zero
0025bc  93810100  seteq r3, r3, zero
0025c0  1b02f20f  andi r4, r4, 255
0025c4  9b82f20f  andi r5, r5, 255
0025c8  1b72f20f  setlti r4, r4, 255
0025cc  9bf2f20f  setlti r5, r5, 255
0025d0  17112200  or r2, r4, r2
0025d4  97913200  or r3, r5, r3
0025d8  17812100  and r2, r3, r2
0025dc  370b010c  beq r2, zero, 6848
0025e0  6302fffd  loadli.w r4,  -264(r30)
0025e4  3b1b0b0c  bneq r22, zero, 6852
0025e8  37a00a00  beq r21, zero, 8
0025ec  9f0a0b00  addli r21, r22, 0
0025f0  13611006  setle.f r2, zero, r1
0025f4  93e10006  setle.f r3, r1, zero
0025f8  17812100  and r2, r3, r2
0025fc  3b200100  bneq r2, zero, 8
002600  9f8a0000  addli r21, r1, 0
002604  13615205  setlt.f r2, r4, r21
002608  9f800a00  addli r1, r21, 0
00260c  3b200100  bneq r2, zero, 8
002610  9f000200  addli r1, r4, 0
002614  1b319200  slli r2, r4, 9
002618  9bb19a00  slli r3, r21, 9
00261c  1b427201  srli r4, r4, 23
002620  9bc27a01  srli r5, r21, 23
002624  13010100  seteq r2, r2, zero
002628  93810100  seteq r3, r3, zero
00262c  1b02f20f  andi r4, r4, 255
002630  9b82f20f  andi r5, r5, 255
002634  1b72f20f  setlti r4, r4, 255
002638  9bf2f20f  setlti r5, r5, 255
00263c  17112200  or r2, r4, r2
002640  97913200  or r3, r5, r3
002644  17812100  and r2, r3, r2
002648  b739010c  beq r2, zero, 6764
00264c  6342fffd  loadli.w r4,  -260(r30)
002650  bbc90a0c  bneq r21, zero, 6768
002654  e302fffd  loadli.w r5,  -264(r30)
002658  37a00200  beq r5, zero, 8
00265c  9f820a00  addli r5, r21, 0
002660  13611006  setle.f r2, zero, r1
002664  93e10006  setle.f r3, r1, zero
002668  e30a9ffb  loadli.w r21,  -568(r30)
00266c  17812100  and r2, r3, r2
002670  3b200100  bneq r2, zero, 8
002674  9f820000  addli r5, r1, 0
002678  13615204  setlt.f r2, r4, r5
00267c  634d0ffc  loadli.w r26,  -508(r30)
002680  9f800200  addli r1, r5, 0
002684  3b200100  bneq r2, zero, 8
002688  9f000200  addli r1, r4, 0
00268c  1b319200  slli r2, r4, 9
002690  9bb19200  slli r3, r5, 9
002694  1b427201  srli r4, r4, 23
002698  1f8b0200  addli r22, r5, 0
00269c  9bc27201  srli r5, r5, 23
0026a0  63045ffc  loadli.w r8,  -472(r30)
0026a4  13010100  seteq r2, r2, zero
0026a8  93810100  seteq r3, r3, zero
0026ac  1b02f20f  andi r4, r4, 255
0026b0  9b82f20f  andi r5, r5, 255
0026b4  1b72f20f  setlti r4, r4, 255
0026b8  9bf2f20f  setlti r5, r5, 255
0026bc  17112200  or r2, r4, r2
0026c0  97913200  or r3, r5, r3
0026c4  17812100  and r2, r3, r2
0026c8  3b200100  bneq r2, zero, 8
0026cc  ab00c07f  lui r1, 523264
0026d0  e3475ffc  loadli.w r15,  -468(r30)
0026d4  37200b00  beq r22, zero, 8
0026d8  1f8b0000  addli r22, r1, 0
0026dc  63083ffc  loadli.w r16,  -488(r30)
0026e0  e342fffd  loadli.w r5,  -260(r30)
0026e4  37a00200  beq r5, zero, 8
0026e8  9f020b00  addli r5, r22, 0
0026ec  13611006  setle.f r2, zero, r1
0026f0  93e10006  setle.f r3, r1, zero
0026f4  634b2ffd  loadli.w r22,  -364(r30)
0026f8  17812100  and r2, r3, r2
0026fc  3b200100  bneq r2, zero, 8
002700  9f820000  addli r5, r1, 0
002704  13e15904  setlt.f r2, r19, r5
002708  e348fffb  loadli.w r17,  -516(r30)
00270c  9f800200  addli r1, r5, 0
002710  3b200100  bneq r2, zero, 8
002714  9f800900  addli r1, r19, 0
002718  1bb19900  slli r2, r19, 9
00271c  9bb19200  slli r3, r5, 9
002720  1bc27901  srli r4, r19, 23
002724  1f850200  addli r10, r5, 0
002728  9bc27201  srli r5, r5, 23
00272c  13010100  seteq r2, r2, zero
002730  93810100  seteq r3, r3, zero
002734  1b02f20f  andi r4, r4, 255
002738  9b82f20f  andi r5, r5, 255
00273c  1b72f20f  setlti r4, r4, 255
002740  9bf2f20f  setlti r5, r5, 255
002744  17112200  or r2, r4, r2
002748  97913200  or r3, r5, r3
00274c  17812100  and r2, r3, r2
002750  3706010c  beq r2, zero, 6528
002754  63020ffe  loadli.w r4,  -256(r30)
002758  3b16050c  bneq r10, zero, 6532
00275c  37a00900  beq r19, zero, 8
002760  9f090500  addli r19, r10, 0
002764  13611006  setle.f r2, zero, r1
002768  93e10006  setle.f r3, r1, zero
00276c  17812100  and r2, r3, r2
002770  3b200100  bneq r2, zero, 8
002774  9f890000  addli r19, r1, 0
002778  13613205  setlt.f r2, r4, r19
00277c  9f800900  addli r1, r19, 0
002780  1f850800  addli r10, r17, 0
002784  3b200100  bneq r2, zero, 8
002788  9f000200  addli r1, r4, 0
00278c  1b319200  slli r2, r4, 9
002790  9bb19900  slli r3, r19, 9
002794  1b427201  srli r4, r4, 23
002798  9bc27901  srli r5, r19, 23
00279c  9f080b00  addli r17, r22, 0
0027a0  13010100  seteq r2, r2, zero
0027a4  93810100  seteq r3, r3, zero
0027a8  1b02f20f  andi r4, r4, 255
0027ac  9b82f20f  andi r5, r5, 255
0027b0  1b72f20f  setlti r4, r4, 255
0027b4  9bf2f20f  setlti r5, r5, 255
0027b8  17112200  or r2, r4, r2
0027bc  97913200  or r3, r5, r3
0027c0  17812100  and r2, r3, r2
0027c4  3b200100  bneq r2, zero, 8
0027c8  ab00c07f  lui r1, 523264
0027cc  1f0b0800  addli r22, r16, 0
0027d0  37a00900  beq r19, zero, 8
0027d4  9f890000  addli r19, r1, 0
0027d8  e3020ffe  loadli.w r5,  -256(r30)
0027dc  1f880700  addli r16, r15, 0
0027e0  37a00200  beq r5, zero, 8
0027e4  9f820900  addli r5, r19, 0
0027e8  13611006  setle.f r2, zero, r1
0027ec  93e10006  setle.f r3, r1, zero
0027f0  9f070400  addli r15, r8, 0
0027f4  17812100  and r2, r3, r2
0027f8  3b200100  bneq r2, zero, 8
0027fc  9f820000  addli r5, r1, 0
002800  13615904  setlt.f r2, r18, r5
002804  9f800200  addli r1, r5, 0
002808  1f040d00  addli r8, r26, 0
00280c  3b200100  bneq r2, zero, 8
002810  9f000900  addli r1, r18, 0
002814  1b319900  slli r2, r18, 9
002818  9bb19200  slli r3, r5, 9
00281c  1b427901  srli r4, r18, 23
002820  9f890200  addli r19, r5, 0
002824  9bc27201  srli r5, r5, 23
002828  1f8d0a00  addli r26, r21, 0
00282c  13010100  seteq r2, r2, zero
002830  93810100  seteq r3, r3, zero
002834  1b02f20f  andi r4, r4, 255
002838  9b82f20f  andi r5, r5, 255
00283c  1b72f20f  setlti r4, r4, 255
002840  9bf2f20f  setlti r5, r5, 255
002844  17112200  or r2, r4, r2
002848  97913200  or r3, r5, r3
00284c  17812100  and r2, r3, r2
002850  3762010c  beq r2, zero, 6296
002854  63420ffe  loadli.w r4,  -252(r30)
002858  3bf2090c  bneq r19, zero, 6300
00285c  37200900  beq r18, zero, 8
002860  1f890900  addli r18, r19, 0
002864  13611006  setle.f r2, zero, r1
002868  93e10006  setle.f r3, r1, zero
00286c  17812100  and r2, r3, r2
002870  3b200100  bneq r2, zero, 8
002874  1f890000  addli r18, r1, 0
002878  13612205  setlt.f r2, r4, r18
00287c  9f000900  addli r1, r18, 0
002880  3b200100  bneq r2, zero, 8
002884  9f000200  addli r1, r4, 0
002888  1b319200  slli r2, r4, 9
00288c  9b319900  slli r3, r18, 9
002890  1b427201  srli r4, r4, 23
002894  9b427901  srli r5, r18, 23
002898  13010100  seteq r2, r2, zero
00289c  93810100  seteq r3, r3, zero
0028a0  1b02f20f  andi r4, r4, 255
0028a4  9b82f20f  andi r5, r5, 255
0028a8  1b72f20f  setlti r4, r4, 255
0028ac  9bf2f20f  setlti r5, r5, 255
0028b0  17112200  or r2, r4, r2
0028b4  97913200  or r3, r5, r3
0028b8  17812100  and r2, r3, r2
0028bc  3711010c  beq r2, zero, 6212
0028c0  3b21090c  bneq r18, zero, 6216
0028c4  e3420ffe  loadli.w r5,  -252(r30)
0028c8  37a00200  beq r5, zero, 8
0028cc  9f020900  addli r5, r18, 0
0028d0  13611006  setle.f r2, zero, r1
0028d4  93e10006  setle.f r3, r1, zero
0028d8  17812100  and r2, r3, r2
0028dc  3b200100  bneq r2, zero, 8
0028e0  9f820000  addli r5, r1, 0
0028e4  13615a04  setlt.f r2, r20, r5
0028e8  9f800200  addli r1, r5, 0
0028ec  3b200100  bneq r2, zero, 8
0028f0  9f000a00  addli r1, r20, 0
0028f4  1b319a00  slli r2, r20, 9
0028f8  9bb19200  slli r3, r5, 9
0028fc  1b427a01  srli r4, r20, 23
002900  1f890200  addli r18, r5, 0
002904  9bc27201  srli r5, r5, 23
002908  13010100  seteq r2, r2, zero
00290c  93810100  seteq r3, r3, zero
002910  1b02f20f  andi r4, r4, 255
002914  9b82f20f  andi r5, r5, 255
002918  1b72f20f  setlti r4, r4, 255
00291c  9bf2f20f  setlti r5, r5, 255
002920  17112200  or r2, r4, r2
002924  97913200  or r3, r5, r3
002928  17812100  and r2, r3, r2
00292c  b73f010a  beq r2, zero, 6124
002930  63021ffe  loadli.w r4,  -248(r30)
002934  bb4f090a  bneq r18, zero, 6128
002938  37200a00  beq r20, zero, 8
00293c  1f0a0900  addli r20, r18, 0
002940  13611006  setle.f r2, zero, r1
002944  93e10006  setle.f r3, r1, zero
002948  17812100  and r2, r3, r2
00294c  3b200100  bneq r2, zero, 8
002950  1f8a0000  addli r20, r1, 0
002954  13614205  setlt.f r2, r4, r20
002958  63499ffb  loadli.w r18,  -564(r30)
00295c  9f000a00  addli r1, r20, 0
002960  3b200100  bneq r2, zero, 8
002964  9f000200  addli r1, r4, 0
002968  1b319200  slli r2, r4, 9
00296c  9b319a00  slli r3, r20, 9
002970  1b427201  srli r4, r4, 23
002974  9b427a01  srli r5, r20, 23
002978  13010100  seteq r2, r2, zero
00297c  93810100  seteq r3, r3, zero
002980  1b02f20f  andi r4, r4, 255
002984  9b82f20f  andi r5, r5, 255
002988  1b72f20f  setlti r4, r4, 255
00298c  9bf2f20f  setlti r5, r5, 255
002990  17112200  or r2, r4, r2
002994  97913200  or r3, r5, r3
002998  17812100  and r2, r3, r2
00299c  375e010a  beq r2, zero, 6036
0029a0  3b6e0a0a  bneq r20, zero, 6040
0029a4  e3021ffe  loadli.w r5,  -248(r30)
0029a8  37a00200  beq r5, zero, 8
0029ac  9f020a00  addli r5, r20, 0
0029b0  13611006  setle.f r2, zero, r1
0029b4  93e10006  setle.f r3, r1, zero
0029b8  17812100  and r2, r3, r2
0029bc  3b200100  bneq r2, zero, 8
0029c0  9f820000  addli r5, r1, 0
0029c4  13615904  setlt.f r2, r18, r5
0029c8  9f800200  addli r1, r5, 0
0029cc  3b200100  bneq r2, zero, 8
0029d0  9f000900  addli r1, r18, 0
0029d4  1b319900  slli r2, r18, 9
0029d8  9bb19200  slli r3, r5, 9
0029dc  1b427901  srli r4, r18, 23
0029e0  1f8a0200  addli r20, r5, 0
0029e4  9bc27201  srli r5, r5, 23
0029e8  13010100  seteq r2, r2, zero
0029ec  93810100  seteq r3, r3, zero
0029f0  1b02f20f  andi r4, r4, 255
0029f4  9b82f20f  andi r5, r5, 255
0029f8  1b72f20f  setlti r4, r4, 255
0029fc  9bf2f20f  setlti r5, r5, 255
002a00  17112200  or r2, r4, r2
002a04  97913200  or r3, r5, r3
002a08  17812100  and r2, r3, r2
002a0c  b77c010a  beq r2, zero, 5948
002a10  63022ffe  loadli.w r4,  -240(r30)
002a14  3b0d0a0a  bneq r20, zero, 5952
002a18  37200900  beq r18, zero, 8
002a1c  1f090a00  addli r18, r20, 0
002a20  13611006  setle.f r2, zero, r1
002a24  93e10006  setle.f r3, r1, zero
002a28  17812100  and r2, r3, r2
002a2c  3b200100  bneq r2, zero, 8
002a30  1f890000  addli r18, r1, 0
002a34  13612205  setlt.f r2, r4, r18
002a38  9f000900  addli r1, r18, 0
002a3c  3b200100  bneq r2, zero, 8
002a40  9f000200  addli r1, r4, 0
002a44  1b319200  slli r2, r4, 9
002a48  9b319900  slli r3, r18, 9
002a4c  1b427201  srli r4, r4, 23
002a50  9b427901  srli r5, r18, 23
002a54  13010100  seteq r2, r2, zero
002a58  93810100  seteq r3, r3, zero
002a5c  1b02f20f  andi r4, r4, 255
002a60  9b82f20f  andi r5, r5, 255
002a64  1b72f20f  setlti r4, r4, 255
002a68  9bf2f20f  setlti r5, r5, 255
002a6c  17112200  or r2, r4, r2
002a70  97913200  or r3, r5, r3
002a74  17812100  and r2, r3, r2
002a78  b72b010a  beq r2, zero, 5864
002a7c  bb3b090a  bneq r18, zero, 5868
002a80  e3022ffe  loadli.w r5,  -240(r30)
002a84  37a00200  beq r5, zero, 8
002a88  9f020900  addli r5, r18, 0
002a8c  13611006  setle.f r2, zero, r1
002a90  93e10006  setle.f r3, r1, zero
002a94  17812100  and r2, r3, r2
002a98  3b200100  bneq r2, zero, 8
002a9c  9f820000  addli r5, r1, 0
002aa0  13e15504  setlt.f r2, r11, r5
002aa4  6309dffb  loadli.w r18,  -536(r30)
002aa8  9f800200  addli r1, r5, 0
002aac  3b200100  bneq r2, zero, 8
002ab0  9f800500  addli r1, r11, 0
002ab4  1bb19500  slli r2, r11, 9
002ab8  9bb19200  slli r3, r5, 9
002abc  1bc27501  srli r4, r11, 23
002ac0  9f8a0200  addli r21, r5, 0
002ac4  9bc27201  srli r5, r5, 23
002ac8  13010100  seteq r2, r2, zero
002acc  93810100  seteq r3, r3, zero
002ad0  1b02f20f  andi r4, r4, 255
002ad4  9b82f20f  andi r5, r5, 255
002ad8  1b72f20f  setlti r4, r4, 255
002adc  9bf2f20f  setlti r5, r5, 255
002ae0  17112200  or r2, r4, r2
002ae4  97913200  or r3, r5, r3
002ae8  17812100  and r2, r3, r2
002aec  373a010a  beq r2, zero, 5772
002af0  3bca0a0a  bneq r21, zero, 5776
002af4  37a00500  beq r11, zero, 8
002af8  9f850a00  addli r11, r21, 0
002afc  13611006  setle.f r2, zero, r1
002b00  93e10006  setle.f r3, r1, zero
002b04  17812100  and r2, r3, r2
002b08  3b200100  bneq r2, zero, 8
002b0c  9f850000  addli r11, r1, 0
002b10  13e1b304  setlt.f r2, r7, r11
002b14  9f800500  addli r1, r11, 0
002b18  3b200100  bneq r2, zero, 8
002b1c  9f800300  addli r1, r7, 0
002b20  1bb19300  slli r2, r7, 9
002b24  9bb19500  slli r3, r11, 9
002b28  1bc27301  srli r4, r7, 23
002b2c  9bc27501  srli r5, r11, 23
002b30  13010100  seteq r2, r2, zero
002b34  93810100  seteq r3, r3, zero
002b38  1b02f20f  andi r4, r4, 255
002b3c  9b82f20f  andi r5, r5, 255
002b40  1b72f20f  setlti r4, r4, 255
002b44  9bf2f20f  setlti r5, r5, 255
002b48  17112200  or r2, r4, r2
002b4c  97913200  or r3, r5, r3
002b50  17812100  and r2, r3, r2
002b54  b768010a  beq r2, zero, 5688
002b58  bbf8050a  bneq r11, zero, 5692
002b5c  37a00300  beq r7, zero, 8
002b60  9f830500  addli r7, r11, 0
002b64  13611006  setle.f r2, zero, r1
002b68  93e10006  setle.f r3, r1, zero
002b6c  17812100  and r2, r3, r2
002b70  3b200100  bneq r2, zero, 8
002b74  9f830000  addli r7, r1, 0
002b78  13617904  setlt.f r2, r18, r7
002b7c  9f800300  addli r1, r7, 0
002b80  3b200100  bneq r2, zero, 8
002b84  9f000900  addli r1, r18, 0
002b88  1b319900  slli r2, r18, 9
002b8c  9bb19300  slli r3, r7, 9
002b90  1b427901  srli r4, r18, 23
002b94  9bc27301  srli r5, r7, 23
002b98  13010100  seteq r2, r2, zero
002b9c  93810100  seteq r3, r3, zero
002ba0  1b02f20f  andi r4, r4, 255
002ba4  9b82f20f  andi r5, r5, 255
002ba8  1b72f20f  setlti r4, r4, 255
002bac  9bf2f20f  setlti r5, r5, 255
002bb0  17112200  or r2, r4, r2
002bb4  97913200  or r3, r5, r3
002bb8  17812100  and r2, r3, r2
002bbc  b717010a  beq r2, zero, 5604
002bc0  63422ffe  loadli.w r4,  -236(r30)
002bc4  bba7030a  bneq r7, zero, 5608
002bc8  37200900  beq r18, zero, 8
002bcc  1f890300  addli r18, r7, 0
002bd0  13611006  setle.f r2, zero, r1
002bd4  93e10006  setle.f r3, r1, zero
002bd8  17812100  and r2, r3, r2
002bdc  3b200100  bneq r2, zero, 8
002be0  1f890000  addli r18, r1, 0
002be4  13612205  setlt.f r2, r4, r18
002be8  9f000900  addli r1, r18, 0
002bec  3b200100  bneq r2, zero, 8
002bf0  9f000200  addli r1, r4, 0
002bf4  1b319200  slli r2, r4, 9
002bf8  9b319900  slli r3, r18, 9
002bfc  1b427201  srli r4, r4, 23
002c00  9b427901  srli r5, r18, 23
002c04  e3034ffd  loadli.w r7,  -352(r30)
002c08  9f050900  addli r11, r18, 0
002c0c  13010100  seteq r2, r2, zero
002c10  93810100  seteq r3, r3, zero
002c14  1b02f20f  andi r4, r4, 255
002c18  9b82f20f  andi r5, r5, 255
002c1c  1b72f20f  setlti r4, r4, 255
002c20  9bf2f20f  setlti r5, r5, 255
002c24  17112200  or r2, r4, r2
002c28  97913200  or r3, r5, r3
002c2c  17812100  and r2, r3, r2
002c30  3b200100  bneq r2, zero, 8
002c34  ab00c07f  lui r1, 523264
002c38  e309effb  loadli.w r19,  -528(r30)
002c3c  37a00500  beq r11, zero, 8
002c40  9f850000  addli r11, r1, 0
002c44  e30a3ffd  loadli.w r21,  -360(r30)
002c48  e3422ffe  loadli.w r5,  -236(r30)
002c4c  37a00200  beq r5, zero, 8
002c50  9f820500  addli r5, r11, 0
002c54  13611006  setle.f r2, zero, r1
002c58  93e10006  setle.f r3, r1, zero
002c5c  63095ffd  loadli.w r18,  -344(r30)
002c60  17812100  and r2, r3, r2
002c64  3b200100  bneq r2, zero, 8
002c68  9f820000  addli r5, r1, 0
002c6c  13615c04  setlt.f r2, r24, r5
002c70  634acffb  loadli.w r20,  -540(r30)
002c74  9f800200  addli r1, r5, 0
002c78  3b200100  bneq r2, zero, 8
002c7c  9f000c00  addli r1, r24, 0
002c80  1b319c00  slli r2, r24, 9
002c84  9bb19200  slli r3, r5, 9
002c88  1b427c01  srli r4, r24, 23
002c8c  9f8b0200  addli r23, r5, 0
002c90  9bc27201  srli r5, r5, 23
002c94  13010100  seteq r2, r2, zero
002c98  93810100  seteq r3, r3, zero
002c9c  1b02f20f  andi r4, r4, 255
002ca0  9b82f20f  andi r5, r5, 255
002ca4  1b72f20f  setlti r4, r4, 255
002ca8  9bf2f20f  setlti r5, r5, 255
002cac  17112200  or r2, r4, r2
002cb0  97913200  or r3, r5, r3
002cb4  17812100  and r2, r3, r2
002cb8  3704010a  beq r2, zero, 5376
002cbc  63023ffe  loadli.w r4,  -232(r30)
002cc0  3b940b0a  bneq r23, zero, 5380
002cc4  37200c00  beq r24, zero, 8
002cc8  1f8c0b00  addli r24, r23, 0
002ccc  13611006  setle.f r2, zero, r1
002cd0  93e10006  setle.f r3, r1, zero
002cd4  17812100  and r2, r3, r2
002cd8  3b200100  bneq r2, zero, 8
002cdc  1f8c0000  addli r24, r1, 0
002ce0  13618205  setlt.f r2, r4, r24
002ce4  9f000c00  addli r1, r24, 0
002ce8  9f0b0a00  addli r23, r20, 0
002cec  3b200100  bneq r2, zero, 8
002cf0  9f000200  addli r1, r4, 0
002cf4  1b319200  slli r2, r4, 9
002cf8  9b319c00  slli r3, r24, 9
002cfc  1b427201  srli r4, r4, 23
002d00  9b427c01  srli r5, r24, 23
002d04  1f0a0900  addli r20, r18, 0
002d08  13010100  seteq r2, r2, zero
002d0c  93810100  seteq r3, r3, zero
002d10  1b02f20f  andi r4, r4, 255
002d14  9b82f20f  andi r5, r5, 255
002d18  1b72f20f  setlti r4, r4, 255
002d1c  9bf2f20f  setlti r5, r5, 255
002d20  17112200  or r2, r4, r2
002d24  97913200  or r3, r5, r3
002d28  17812100  and r2, r3, r2
002d2c  3b200100  bneq r2, zero, 8
002d30  ab00c07f  lui r1, 523264
002d34  1f890a00  addli r18, r21, 0
002d38  37200c00  beq r24, zero, 8
002d3c  1f8c0000  addli r24, r1, 0
002d40  e3023ffe  loadli.w r5,  -232(r30)
002d44  9f8a0900  addli r21, r19, 0
002d48  37a00200  beq r5, zero, 8
002d4c  9f020c00  addli r5, r24, 0
002d50  13611006  setle.f r2, zero, r1
002d54  93e10006  setle.f r3, r1, zero
002d58  9f890300  addli r19, r7, 0
002d5c  17812100  and r2, r3, r2
002d60  3b200100  bneq r2, zero, 8
002d64  9f820000  addli r5, r1, 0
002d68  13e15b04  setlt.f r2, r23, r5
002d6c  e303fffb  loadli.w r7,  -520(r30)
002d70  9f800200  addli r1, r5, 0
002d74  3b200100  bneq r2, zero, 8
002d78  9f800b00  addli r1, r23, 0
002d7c  1bb19b00  slli r2, r23, 9
002d80  9bb19200  slli r3, r5, 9
002d84  1bc27b01  srli r4, r23, 23
002d88  1f8c0200  addli r24, r5, 0
002d8c  9bc27201  srli r5, r5, 23
002d90  13010100  seteq r2, r2, zero
002d94  93810100  seteq r3, r3, zero
002d98  1b02f20f  andi r4, r4, 255
002d9c  9b82f20f  andi r5, r5, 255
002da0  1b72f20f  setlti r4, r4, 255
002da4  9bf2f20f  setlti r5, r5, 255
002da8  17112200  or r2, r4, r2
002dac  97913200  or r3, r5, r3
002db0  17812100  and r2, r3, r2
002db4  3770010a  beq r2, zero, 5148
002db8  63024ffe  loadli.w r4,  -224(r30)
002dbc  bb000c0a  bneq r24, zero, 5152
002dc0  37a00b00  beq r23, zero, 8
002dc4  9f0b0c00  addli r23, r24, 0
002dc8  13611006  setle.f r2, zero, r1
002dcc  93e10006  setle.f r3, r1, zero
002dd0  17812100  and r2, r3, r2
002dd4  3b200100  bneq r2, zero, 8
002dd8  9f8b0000  addli r23, r1, 0
002ddc  13617205  setlt.f r2, r4, r23
002de0  9f800b00  addli r1, r23, 0
002de4  3b200100  bneq r2, zero, 8
002de8  9f000200  addli r1, r4, 0
002dec  1b319200  slli r2, r4, 9
002df0  9bb19b00  slli r3, r23, 9
002df4  1b427201  srli r4, r4, 23
002df8  9bc27b01  srli r5, r23, 23
002dfc  13010100  seteq r2, r2, zero
002e00  93810100  seteq r3, r3, zero
002e04  1b02f20f  andi r4, r4, 255
002e08  9b82f20f  andi r5, r5, 255
002e0c  1b72f20f  setlti r4, r4, 255
002e10  9bf2f20f  setlti r5, r5, 255
002e14  17112200  or r2, r4, r2
002e18  97913200  or r3, r5, r3
002e1c  17812100  and r2, r3, r2
002e20  372f0108  beq r2, zero, 5064
002e24  3bbf0b08  bneq r23, zero, 5068
002e28  e3024ffe  loadli.w r5,  -224(r30)
002e2c  37a00200  beq r5, zero, 8
002e30  9f820b00  addli r5, r23, 0
002e34  13611006  setle.f r2, zero, r1
002e38  93e10006  setle.f r3, r1, zero
002e3c  17812100  and r2, r3, r2
002e40  3b200100  bneq r2, zero, 8
002e44  9f820000  addli r5, r1, 0
002e48  e3413ffe  loadli.w r3,  -228(r30)
002e4c  e30b2ffd  loadli.w r23,  -368(r30)
002e50  9f800200  addli r1, r5, 0
002e54  13e15104  setlt.f r2, r3, r5
002e58  3b200100  bneq r2, zero, 8
002e5c  9f800100  addli r1, r3, 0
002e60  1bb19100  slli r2, r3, 9
002e64  1f820100  addli r4, r3, 0
002e68  9bb19200  slli r3, r5, 9
002e6c  1f8c0200  addli r24, r5, 0
002e70  9bc27201  srli r5, r5, 23
002e74  13010100  seteq r2, r2, zero
002e78  93810100  seteq r3, r3, zero
002e7c  1b427201  srli r4, r4, 23
002e80  9b82f20f  andi r5, r5, 255
002e84  1b02f20f  andi r4, r4, 255
002e88  9bf2f20f  setlti r5, r5, 255
002e8c  1b72f20f  setlti r4, r4, 255
002e90  17112200  or r2, r4, r2
002e94  97913200  or r3, r5, r3
002e98  17812100  and r2, r3, r2
002e9c  b71d0108  beq r2, zero, 4964
002ea0  63424ffe  loadli.w r4,  -220(r30)
002ea4  bb2d0c08  bneq r24, zero, 4968
002ea8  e3413ffe  loadli.w r3,  -228(r30)
002eac  37a00100  beq r3, zero, 8
002eb0  9f010c00  addli r3, r24, 0
002eb4  9f820100  addli r5, r3, 0
002eb8  13611006  setle.f r2, zero, r1
002ebc  93e10006  setle.f r3, r1, zero
002ec0  17812100  and r2, r3, r2
002ec4  9f810200  addli r3, r5, 0
002ec8  3b200100  bneq r2, zero, 8
002ecc  9f810000  addli r3, r1, 0
002ed0  13613204  setlt.f r2, r4, r3
002ed4  9f800100  addli r1, r3, 0
002ed8  1f8c0b00  addli r24, r23, 0
002edc  3b200100  bneq r2, zero, 8
002ee0  9f000200  addli r1, r4, 0
002ee4  9f820100  addli r5, r3, 0
002ee8  1b319200  slli r2, r4, 9
002eec  1b427201  srli r4, r4, 23
002ef0  9bb19200  slli r3, r5, 9
002ef4  13010100  seteq r2, r2, zero
002ef8  9f8b0200  addli r23, r5, 0
002efc  9bc27201  srli r5, r5, 23
002f00  1b02f20f  andi r4, r4, 255
002f04  93810100  seteq r3, r3, zero
002f08  9b82f20f  andi r5, r5, 255
002f0c  1b72f20f  setlti r4, r4, 255
002f10  9bf2f20f  setlti r5, r5, 255
002f14  17112200  or r2, r4, r2
002f18  97913200  or r3, r5, r3
002f1c  17812100  and r2, r3, r2
002f20  b77b0108  beq r2, zero, 4860
002f24  3b8c0b08  bneq r23, zero, 4864
002f28  e3424ffe  loadli.w r5,  -220(r30)
002f2c  37a00200  beq r5, zero, 8
002f30  9f820b00  addli r5, r23, 0
002f34  13611006  setle.f r2, zero, r1
002f38  93e10006  setle.f r3, r1, zero
002f3c  17812100  and r2, r3, r2
002f40  3b200100  bneq r2, zero, 8
002f44  9f820000  addli r5, r1, 0
002f48  13615304  setlt.f r2, r6, r5
002f4c  9f800200  addli r1, r5, 0
002f50  3b200100  bneq r2, zero, 8
002f54  9f000300  addli r1, r6, 0
002f58  1b319300  slli r2, r6, 9
002f5c  9bb19200  slli r3, r5, 9
002f60  1b427301  srli r4, r6, 23
002f64  9f8b0200  addli r23, r5, 0
002f68  9bc27201  srli r5, r5, 23
002f6c  13010100  seteq r2, r2, zero
002f70  93810100  seteq r3, r3, zero
002f74  1b02f20f  andi r4, r4, 255
002f78  9b82f20f  andi r5, r5, 255
002f7c  1b72f20f  setlti r4, r4, 255
002f80  9bf2f20f  setlti r5, r5, 255
002f84  17112200  or r2, r4, r2
002f88  97913200  or r3, r5, r3
002f8c  17812100  and r2, r3, r2
002f90  b71a0108  beq r2, zero, 4772
002f94  63025ffe  loadli.w r4,  -216(r30)
002f98  bbaa0b08  bneq r23, zero, 4776
002f9c  37200300  beq r6, zero, 8
002fa0  1f830b00  addli r6, r23, 0
002fa4  13611006  setle.f r2, zero, r1
002fa8  93e10006  setle.f r3, r1, zero
002fac  17812100  and r2, r3, r2
002fb0  3b200100  bneq r2, zero, 8
002fb4  1f830000  addli r6, r1, 0
002fb8  13616204  setlt.f r2, r4, r6
002fbc  9f000300  addli r1, r6, 0
002fc0  3b200100  bneq r2, zero, 8
002fc4  9f000200  addli r1, r4, 0
002fc8  1b319200  slli r2, r4, 9
002fcc  9b319300  slli r3, r6, 9
002fd0  1b427201  srli r4, r4, 23
002fd4  9b427301  srli r5, r6, 23
002fd8  13010100  seteq r2, r2, zero
002fdc  93810100  seteq r3, r3, zero
002fe0  1b02f20f  andi r4, r4, 255
002fe4  9b82f20f  andi r5, r5, 255
002fe8  1b72f20f  setlti r4, r4, 255
002fec  9bf2f20f  setlti r5, r5, 255
002ff0  17112200  or r2, r4, r2
002ff4  97913200  or r3, r5, r3
002ff8  17812100  and r2, r3, r2
002ffc  37490108  beq r2, zero, 4688
003000  3b590308  bneq r6, zero, 4692
003004  e3025ffe  loadli.w r5,  -216(r30)
003008  37a00200  beq r5, zero, 8
00300c  9f020300  addli r5, r6, 0
003010  13611006  setle.f r2, zero, r1
003014  93e10006  setle.f r3, r1, zero
003018  17812100  and r2, r3, r2
00301c  3b200100  bneq r2, zero, 8
003020  9f820000  addli r5, r1, 0
003024  13e15304  setlt.f r2, r7, r5
003028  63431ffe  loadli.w r6,  -244(r30)
00302c  9f800200  addli r1, r5, 0
003030  3b200100  bneq r2, zero, 8
003034  9f800300  addli r1, r7, 0
003038  1bb19300  slli r2, r7, 9
00303c  9bb19200  slli r3, r5, 9
003040  1bc27301  srli r4, r7, 23
003044  9f8b0200  addli r23, r5, 0
003048  9bc27201  srli r5, r5, 23
00304c  13010100  seteq r2, r2, zero
003050  93810100  seteq r3, r3, zero
003054  1b02f20f  andi r4, r4, 255
003058  9b82f20f  andi r5, r5, 255
00305c  1b72f20f  setlti r4, r4, 255
003060  9bf2f20f  setlti r5, r5, 255
003064  17112200  or r2, r4, r2
003068  97913200  or r3, r5, r3
00306c  17812100  and r2, r3, r2
003070  b7570108  beq r2, zero, 4596
003074  bbe70b08  bneq r23, zero, 4600
003078  37a00300  beq r7, zero, 8
00307c  9f830b00  addli r7, r23, 0
003080  13611006  setle.f r2, zero, r1
003084  93e10006  setle.f r3, r1, zero
003088  17812100  and r2, r3, r2
00308c  3b200100  bneq r2, zero, 8
003090  9f830000  addli r7, r1, 0
003094  13617504  setlt.f r2, r10, r7
003098  9f800300  addli r1, r7, 0
00309c  9f0b0300  addli r23, r6, 0
0030a0  3b200100  bneq r2, zero, 8
0030a4  9f000500  addli r1, r10, 0
0030a8  1b319500  slli r2, r10, 9
0030ac  9bb19300  slli r3, r7, 9
0030b0  1b427501  srli r4, r10, 23
0030b4  9bc27301  srli r5, r7, 23
0030b8  63031ffc  loadli.w r6,  -504(r30)
0030bc  13010100  seteq r2, r2, zero
0030c0  93810100  seteq r3, r3, zero
0030c4  1b02f20f  andi r4, r4, 255
0030c8  9b82f20f  andi r5, r5, 255
0030cc  1b72f20f  setlti r4, r4, 255
0030d0  9bf2f20f  setlti r5, r5, 255
0030d4  17112200  or r2, r4, r2
0030d8  97913200  or r3, r5, r3
0030dc  17812100  and r2, r3, r2
0030e0  37660108  beq r2, zero, 4504
0030e4  3bf60308  bneq r7, zero, 4508
0030e8  37200500  beq r10, zero, 8
0030ec  1f850300  addli r10, r7, 0
0030f0  13611006  setle.f r2, zero, r1
0030f4  93e10006  setle.f r3, r1, zero
0030f8  17812100  and r2, r3, r2
0030fc  3b200100  bneq r2, zero, 8
003100  1f850000  addli r10, r1, 0
003104  13e1a404  setlt.f r2, r9, r10
003108  e3431ffc  loadli.w r7,  -500(r30)
00310c  9f000500  addli r1, r10, 0
003110  3b200100  bneq r2, zero, 8
003114  9f800400  addli r1, r9, 0
003118  1bb19400  slli r2, r9, 9
00311c  9b319500  slli r3, r10, 9
003120  1bc27401  srli r4, r9, 23
003124  9b427501  srli r5, r10, 23
003128  13010100  seteq r2, r2, zero
00312c  93810100  seteq r3, r3, zero
003130  1b02f20f  andi r4, r4, 255
003134  9b82f20f  andi r5, r5, 255
003138  1b72f20f  setlti r4, r4, 255
00313c  9bf2f20f  setlti r5, r5, 255
003140  17112200  or r2, r4, r2
003144  97913200  or r3, r5, r3
003148  17812100  and r2, r3, r2
00314c  37050108  beq r2, zero, 4416
003150  3b150508  bneq r10, zero, 4420
003154  37a00400  beq r9, zero, 8
003158  9f040500  addli r9, r10, 0
00315c  13611006  setle.f r2, zero, r1
003160  93e10006  setle.f r3, r1, zero
003164  17812100  and r2, r3, r2
003168  3b200100  bneq r2, zero, 8
00316c  9f840000  addli r9, r1, 0
003170  13619404  setlt.f r2, r8, r9
003174  9f800400  addli r1, r9, 0
003178  3b200100  bneq r2, zero, 8
00317c  9f000400  addli r1, r8, 0
003180  1b319400  slli r2, r8, 9
003184  9bb19400  slli r3, r9, 9
003188  1b427401  srli r4, r8, 23
00318c  9bc27401  srli r5, r9, 23
003190  13010100  seteq r2, r2, zero
003194  93810100  seteq r3, r3, zero
003198  1b02f20f  andi r4, r4, 255
00319c  9b82f20f  andi r5, r5, 255
0031a0  1b72f20f  setlti r4, r4, 255
0031a4  9bf2f20f  setlti r5, r5, 255
0031a8  17112200  or r2, r4, r2
0031ac  97913200  or r3, r5, r3
0031b0  17812100  and r2, r3, r2
0031b4  b7330108  beq r2, zero, 4332
0031b8  bbc30408  bneq r9, zero, 4336
0031bc  37200400  beq r8, zero, 8
0031c0  1f840400  addli r8, r9, 0
0031c4  13611006  setle.f r2, zero, r1
0031c8  93e10006  setle.f r3, r1, zero
0031cc  17812100  and r2, r3, r2
0031d0  3b200100  bneq r2, zero, 8
0031d4  1f840000  addli r8, r1, 0
0031d8  13618304  setlt.f r2, r6, r8
0031dc  9f000400  addli r1, r8, 0
0031e0  3b200100  bneq r2, zero, 8
0031e4  9f000300  addli r1, r6, 0
0031e8  1b319300  slli r2, r6, 9
0031ec  9b319400  slli r3, r8, 9
0031f0  1b427301  srli r4, r6, 23
0031f4  9b427401  srli r5, r8, 23
0031f8  13010100  seteq r2, r2, zero
0031fc  93810100  seteq r3, r3, zero
003200  1b02f20f  andi r4, r4, 255
003204  9b82f20f  andi r5, r5, 255
003208  1b72f20f  setlti r4, r4, 255
00320c  9bf2f20f  setlti r5, r5, 255
003210  17112200  or r2, r4, r2
003214  97913200  or r3, r5, r3
003218  17812100  and r2, r3, r2
00321c  37620108  beq r2, zero, 4248
003220  3b720408  bneq r8, zero, 4252
003224  37200300  beq r6, zero, 8
003228  1f030400  addli r6, r8, 0
00322c  13611006  setle.f r2, zero, r1
003230  93e10006  setle.f r3, r1, zero
003234  17812100  and r2, r3, r2
003238  3b200100  bneq r2, zero, 8
00323c  1f830000  addli r6, r1, 0
003240  13e16304  setlt.f r2, r7, r6
003244  9f000300  addli r1, r6, 0
003248  3b200100  bneq r2, zero, 8
00324c  9f800300  addli r1, r7, 0
003250  1bb19300  slli r2, r7, 9
003254  9b319300  slli r3, r6, 9
003258  1bc27301  srli r4, r7, 23
00325c  9b427301  srli r5, r6, 23
003260  13010100  seteq r2, r2, zero
003264  93810100  seteq r3, r3, zero
003268  1b02f20f  andi r4, r4, 255
00326c  9b82f20f  andi r5, r5, 255
003270  1b72f20f  setlti r4, r4, 255
003274  9bf2f20f  setlti r5, r5, 255
003278  17112200  or r2, r4, r2
00327c  97913200  or r3, r5, r3
003280  17812100  and r2, r3, r2
003284  37110108  beq r2, zero, 4164
003288  3b210308  bneq r6, zero, 4168
00328c  37a00300  beq r7, zero, 8
003290  9f030300  addli r7, r6, 0
003294  13611006  setle.f r2, zero, r1
003298  93e10006  setle.f r3, r1, zero
00329c  17812100  and r2, r3, r2
0032a0  3b200100  bneq r2, zero, 8
0032a4  9f830000  addli r7, r1, 0
0032a8  e3006ffe  loadli.w r1,  -208(r30)
0032ac  73e07000  stores.w r7, 0(r1)
0032b0  00a00300  mfence { lm, sm, gm }
0032b4  80210c04  csr_set csr3, r24
0032b8  00d00100  sync_group
0032bc  e3006ffe  loadli.w r1,  -208(r30)
0032c0  e3435ffe  loadli.w r7,  -212(r30)
0032c4  efc00000  loads.w r1, 0(r1)
0032c8  0be11a18  sub.f.rn r2, r21, r1
0032cc  0be41818  sub.f.rn r8, r17, r1
0032d0  8b641818  sub.f.rn r9, r16, r1
0032d4  0be51718  sub.f.rn r10, r15, r1
0032d8  8b671b18  sub.f.rn r15, r22, r1
0032dc  8b651718  sub.f.rn r11, r14, r1
0032e0  0b671618  sub.f.rn r14, r12, r1
0032e4  0b621a18  sub.f.rn r4, r20, r1
0032e8  8bea1318  sub.f.rn r21, r7, r1
0032ec  8be11c18  sub.f.rn r3, r25, r1
0032f0  8be21918  sub.f.rn r5, r19, r1
0032f4  0be81d18  sub.f.rn r16, r27, r1
0032f8  0b631918  sub.f.rn r6, r18, r1
0032fc  8be61618  sub.f.rn r13, r13, r1
003300  8b681e18  sub.f.rn r17, r28, r1
003304  8b601d18  sub.f.rn r1, r26, r1
003308  8f030100  exp.f.rn r7, r2
00330c  0f810100  exp.f.rn r2, r3
003310  8f010200  exp.f.rn r3, r4
003314  0f820200  exp.f.rn r4, r5
003318  8f020300  exp.f.rn r5, r6
00331c  0f030400  exp.f.rn r6, r8
003320  0f840400  exp.f.rn r8, r9
003324  8f040500  exp.f.rn r9, r10
003328  0f860500  exp.f.rn r12, r11
00332c  8f850000  exp.f.rn r11, r1
003330  0f890600  exp.f.rn r18, r13
003334  8f860a00  exp.f.rn r13, r21
003338  0f0a0700  exp.f.rn r20, r14
00333c  0f8b0700  exp.f.rn r22, r15
003340  8f090800  exp.f.rn r19, r16
003344  0f850800  exp.f.rn r10, r17
003348  9f000004  addli r1, zero, 512
00334c  674dbffc  storeli.w r11, -300(r30)
003350  674fdffc  storeli.w r13, -268(r30)
003354  bfe51b00  blt.s r23, r1, 376
003358  9f000000  addli r1, zero, 0
00335c  db350000  j 428
003360  ab06c07f  lui r13, 523264
003364  9f870a00  addli r15, r21, 0
003368  b78c0aec  beq r21, zero, -9440
00336c  9f870600  addli r15, r13, 0
003370  1f850c00  addli r10, r25, 0
003374  3bfc0cec  bneq r25, zero, -9444
003378  db63fbff  j -9444
00337c  ab07c07f  lui r15, 523264
003380  b76d05ec  beq r10, zero, -9352
003384  1f850700  addli r10, r15, 0
003388  9f060a00  addli r13, r20, 0
00338c  bb5d0aec  bneq r20, zero, -9356
003390  db6efbff  j -9356
003394  ab07c07f  lui r15, 523264
003398  37cf06ec  beq r13, zero, -9264
00339c  9f860700  addli r13, r15, 0
0033a0  1f850900  addli r10, r19, 0
0033a4  3bbf09ec  bneq r19, zero, -9268
0033a8  db79fbff  j -9268
0033ac  ab07c07f  lui r15, 523264
0033b0  b72005ee  beq r10, zero, -9176
0033b4  1f850700  addli r10, r15, 0
0033b8  9f060900  addli r13, r18, 0
0033bc  bb1009ee  bneq r18, zero, -9180
0033c0  db84fbff  j -9180
0033c4  2b07c07f  lui r14, 523264
0033c8  378206ee  beq r13, zero, -9088
0033cc  9f060700  addli r13, r14, 0
0033d0  1f850800  addli r10, r17, 0
0033d4  bbf108ee  bneq r17, zero, -9092
0033d8  db8ffbff  j -9092
0033dc  2b06c07f  lui r12, 523264
0033e0  376305ee  beq r10, zero, -9000
0033e4  1f050600  addli r10, r12, 0
0033e8  9f050800  addli r11, r16, 0
0033ec  3b5308ee  bneq r16, zero, -9004
0033f0  db9afbff  j -9004
0033f4  2b05c07f  lui r10, 523264
0033f8  b7c405ee  beq r11, zero, -8912
0033fc  9f050500  addli r11, r10, 0
003400  9f840700  addli r9, r15, 0
003404  bbb407ee  bneq r15, zero, -8916
003408  dba5fbff  j -8916
00340c  2b05c07f  lui r10, 523264
003410  37a604ee  beq r9, zero, -8824
003414  9f040500  addli r9, r10, 0
003418  1f040700  addli r8, r14, 0
00341c  3b1607ee  bneq r14, zero, -8828
003420  dbb0fbff  j -8828
003424  ab04c07f  lui r9, 523264
003428  b70704ee  beq r8, zero, -8736
00342c  1f840400  addli r8, r9, 0
003430  9f830600  addli r7, r13, 0
003434  3bf706ee  bneq r13, zero, -8740
003438  dbbbfbff  j -8740
00343c  2b04c07f  lui r8, 523264
003440  b7e803ee  beq r7, zero, -8648
003444  9f030400  addli r7, r8, 0
003448  1f030600  addli r6, r12, 0
00344c  bb5806ee  bneq r12, zero, -8652
003450  dbc6fbff  j -8652
003454  ab03c07f  lui r7, 523264
003458  374a03ee  beq r6, zero, -8560
00345c  1f830300  addli r6, r7, 0
003460  9f020b00  addli r5, r22, 0
003464  3b3a0bee  bneq r22, zero, -8564
003468  dbd1fbff  j -8564
00346c  2b03c07f  lui r6, 523264
003470  b7ab02ee  beq r5, zero, -8472
003474  9f020300  addli r5, r6, 0
003478  1f820d00  addli r4, r27, 0
00347c  bb9b0dee  bneq r27, zero, -8476
003480  dbdcfbff  j -8476
003484  ab02c07f  lui r5, 523264
003488  370d02ee  beq r4, zero, -8384
00348c  1f820200  addli r4, r5, 0
003490  9f010e00  addli r3, r28, 0
003494  bb7c0eee  bneq r28, zero, -8388
003498  dbe7fbff  j -8388
00349c  2b02c07f  lui r4, 523264
0034a0  37ee01ee  beq r3, zero, -8296
0034a4  9f010200  addli r3, r4, 0
0034a8  1f010400  addli r2, r8, 0
0034ac  3b5e04ee  bneq r8, zero, -8300
0034b0  dbf2fbff  j -8300
0034b4  ab01c07f  lui r3, 523264
0034b8  b74f01ee  beq r2, zero, -8208
0034bc  1f810100  addli r2, r3, 0
0034c0  9f000d00  addli r1, r26, 0
0034c4  bb3f0dee  bneq r26, zero, -8212
0034c8  dbfdfbff  j -8212
0034cc  8be02310  add.f.rn r1, r7, r2
0034d0  8be01110  add.f.rn r1, r3, r1
0034d4  8b601210  add.f.rn r1, r4, r1
0034d8  8be01210  add.f.rn r1, r5, r1
0034dc  8b601310  add.f.rn r1, r6, r1
0034e0  8b601410  add.f.rn r1, r8, r1
0034e4  8be01410  add.f.rn r1, r9, r1
0034e8  8b601610  add.f.rn r1, r12, r1
0034ec  8b601910  add.f.rn r1, r18, r1
0034f0  8b601a10  add.f.rn r1, r20, r1
0034f4  8b601b10  add.f.rn r1, r22, r1
0034f8  8be01910  add.f.rn r1, r19, r1
0034fc  8b601510  add.f.rn r1, r10, r1
003500  8be01610  add.f.rn r1, r13, r1
003504  8be01510  add.f.rn r1, r11, r1
003508  e345fffc  loadli.w r11,  -388(r30)
00350c  e3487ffe  loadli.w r17,  -196(r30)
003510  ab07807f  lui r15, 522240
003514  2b084000  lui r16, 1024
003518  73e01500  stores.w r1, 0(r11)
00351c  00a00300  mfence { lm, sm, gm }
003520  80210c04  csr_set csr3, r24
003524  00d00100  sync_group
003528  e300effd  loadli.w r1,  -272(r30)
00352c  3ba80000  bneq r1, zero, 520
003530  63471ffd  loadli.w r14,  -372(r30)
003534  ef400700  loads.w r1, 0(r14)
003538  ef464700  loads.w r13, 4(r14)
00353c  ef458700  loads.w r11, 8(r14)
003540  8be0d010  add.f.rn r1, r1, r13
003544  ef46c700  loads.w r13, 12(r14)
003548  8be0b010  add.f.rn r1, r1, r11
00354c  ef450701  loads.w r11, 16(r14)
003550  8be0d010  add.f.rn r1, r1, r13
003554  ef464701  loads.w r13, 20(r14)
003558  8be0b010  add.f.rn r1, r1, r11
00355c  ef458701  loads.w r11, 24(r14)
003560  8be0d010  add.f.rn r1, r1, r13
003564  ef46c701  loads.w r13, 28(r14)
003568  8be0b010  add.f.rn r1, r1, r11
00356c  ef450702  loads.w r11, 32(r14)
003570  8be0d010  add.f.rn r1, r1, r13
003574  ef464702  loads.w r13, 36(r14)
003578  8be0b010  add.f.rn r1, r1, r11
00357c  ef458702  loads.w r11, 40(r14)
003580  8be0d010  add.f.rn r1, r1, r13
003584  ef46c702  loads.w r13, 44(r14)
003588  8be0b010  add.f.rn r1, r1, r11
00358c  ef450703  loads.w r11, 48(r14)
003590  8be0d010  add.f.rn r1, r1, r13
003594  ef464703  loads.w r13, 52(r14)
003598  8be0b010  add.f.rn r1, r1, r11
00359c  ef458703  loads.w r11, 56(r14)
0035a0  8be0d010  add.f.rn r1, r1, r13
0035a4  ef46c703  loads.w r13, 60(r14)
0035a8  8be0b010  add.f.rn r1, r1, r11
0035ac  ef450704  loads.w r11, 64(r14)
0035b0  8be0d010  add.f.rn r1, r1, r13
0035b4  ef464704  loads.w r13, 68(r14)
0035b8  8be0b010  add.f.rn r1, r1, r11
0035bc  ef458704  loads.w r11, 72(r14)
0035c0  8be0d010  add.f.rn r1, r1, r13
0035c4  ef46c704  loads.w r13, 76(r14)
0035c8  8be0b010  add.f.rn r1, r1, r11
0035cc  ef450705  loads.w r11, 80(r14)
0035d0  8be0d010  add.f.rn r1, r1, r13
0035d4  ef464705  loads.w r13, 84(r14)
0035d8  8be0b010  add.f.rn r1, r1, r11
0035dc  ef458705  loads.w r11, 88(r14)
0035e0  8be0d010  add.f.rn r1, r1, r13
0035e4  ef46c705  loads.w r13, 92(r14)
0035e8  8be0b010  add.f.rn r1, r1, r11
0035ec  ef450706  loads.w r11, 96(r14)
0035f0  8be0d010  add.f.rn r1, r1, r13
0035f4  ef464706  loads.w r13, 100(r14)
0035f8  8be0b010  add.f.rn r1, r1, r11
0035fc  ef458706  loads.w r11, 104(r14)
003600  8be0d010  add.f.rn r1, r1, r13
003604  ef46c706  loads.w r13, 108(r14)
003608  8be0b010  add.f.rn r1, r1, r11
00360c  ef450707  loads.w r11, 112(r14)
003610  8be0d010  add.f.rn r1, r1, r13
003614  ef464707  loads.w r13, 116(r14)
003618  8be0b010  add.f.rn r1, r1, r11
00361c  ef458707  loads.w r11, 120(r14)
003620  8be0d010  add.f.rn r1, r1, r13
003624  ef46c707  loads.w r13, 124(r14)
003628  8be0b010  add.f.rn r1, r1, r11
00362c  ef450708  loads.w r11, 128(r14)
003630  8be0d010  add.f.rn r1, r1, r13
003634  ef464708  loads.w r13, 132(r14)
003638  8be0b010  add.f.rn r1, r1, r11
00363c  ef458708  loads.w r11, 136(r14)
003640  8be0d010  add.f.rn r1, r1, r13
003644  ef46c708  loads.w r13, 140(r14)
003648  8be0b010  add.f.rn r1, r1, r11
00364c  ef450709  loads.w r11, 144(r14)
003650  8be0d010  add.f.rn r1, r1, r13
003654  ef464709  loads.w r13, 148(r14)
003658  8be0b010  add.f.rn r1, r1, r11
00365c  ef458709  loads.w r11, 152(r14)
003660  8be0d010  add.f.rn r1, r1, r13
003664  ef46c709  loads.w r13, 156(r14)
003668  8be0b010  add.f.rn r1, r1, r11
00366c  ef45070a  loads.w r11, 160(r14)
003670  8be0d010  add.f.rn r1, r1, r13
003674  ef46470a  loads.w r13, 164(r14)
003678  8be0b010  add.f.rn r1, r1, r11
00367c  ef45870a  loads.w r11, 168(r14)
003680  8be0d010  add.f.rn r1, r1, r13
003684  ef46c70a  loads.w r13, 172(r14)
003688  8be0b010  add.f.rn r1, r1, r11
00368c  ef45070b  loads.w r11, 176(r14)
003690  8be0d010  add.f.rn r1, r1, r13
003694  ef46470b  loads.w r13, 180(r14)
003698  8be0b010  add.f.rn r1, r1, r11
00369c  ef45870b  loads.w r11, 184(r14)
0036a0  8be0d010  add.f.rn r1, r1, r13
0036a4  ef46c70b  loads.w r13, 188(r14)
0036a8  8be0b010  add.f.rn r1, r1, r11
0036ac  ef45070c  loads.w r11, 192(r14)
0036b0  8be0d010  add.f.rn r1, r1, r13
0036b4  ef46470c  loads.w r13, 196(r14)
0036b8  8be0b010  add.f.rn r1, r1, r11
0036bc  ef45870c  loads.w r11, 200(r14)
0036c0  8be0d010  add.f.rn r1, r1, r13
0036c4  ef46c70c  loads.w r13, 204(r14)
0036c8  8be0b010  add.f.rn r1, r1, r11
0036cc  ef45070d  loads.w r11, 208(r14)
0036d0  8be0d010  add.f.rn r1, r1, r13
0036d4  ef46470d  loads.w r13, 212(r14)
0036d8  8be0b010  add.f.rn r1, r1, r11
0036dc  ef45870d  loads.w r11, 216(r14)
0036e0  8be0d010  add.f.rn r1, r1, r13
0036e4  ef46c70d  loads.w r13, 220(r14)
0036e8  8be0b010  add.f.rn r1, r1, r11
0036ec  ef45070e  loads.w r11, 224(r14)
0036f0  8be0d010  add.f.rn r1, r1, r13
0036f4  ef46470e  loads.w r13, 228(r14)
0036f8  8be0b010  add.f.rn r1, r1, r11
0036fc  ef45870e  loads.w r11, 232(r14)
003700  8be0d010  add.f.rn r1, r1, r13
003704  ef46c70e  loads.w r13, 236(r14)
003708  8be0b010  add.f.rn r1, r1, r11
00370c  ef45070f  loads.w r11, 240(r14)
003710  8be0d010  add.f.rn r1, r1, r13
003714  ef46470f  loads.w r13, 244(r14)
003718  8be0b010  add.f.rn r1, r1, r11
00371c  ef45870f  loads.w r11, 248(r14)
003720  8be0d010  add.f.rn r1, r1, r13
003724  ef46c70f  loads.w r13, 252(r14)
003728  8be0b010  add.f.rn r1, r1, r11
00372c  8be0d010  add.f.rn r1, r1, r13
003730  73601700  stores.w r1, 0(r14)
003734  00a00300  mfence { lm, sm, gm }
003738  80210c04  csr_set csr3, r24
00373c  00d00100  sync_group
003740  e3401ffd  loadli.w r1,  -372(r30)
003744  ab05803f  lui r11, 260096
003748  efc00000  loads.w r1, 0(r1)
00374c  8f801518  div.f.rn r1, r11, r1
003750  8beb1320  mul.f.rn r23, r7, r1
003754  97831b01  and r7, r23, r17
003758  e70b7ffc  storeli.w r7, -328(r30)
00375c  93837704  setlt.u r7, r15, r7
003760  3bb00300  bneq r7, zero, 12
003764  e7427fff  storeli.w r23, -212(r30)
003768  db010000  j 12
00376c  97930b01  or r7, r23, r16
003770  e7427ffe  storeli.w r7, -212(r30)
003774  0b6c1120  mul.f.rn r24, r2, r1
003778  17011c01  and r2, r24, r17
00377c  93832704  setlt.u r7, r15, r2
003780  670b2ffc  storeli.w r2, -336(r30)
003784  3bb00300  bneq r7, zero, 12
003788  e7028fff  storeli.w r24, -216(r30)
00378c  db010000  j 12
003790  17110c01  or r2, r24, r16
003794  e7022ffe  storeli.w r2, -216(r30)
003798  8bec1120  mul.f.rn r25, r3, r1
00379c  17811c01  and r2, r25, r17
0037a0  93832704  setlt.u r7, r15, r2
0037a4  e70a2ffc  storeli.w r2, -344(r30)
0037a8  3bb00300  bneq r7, zero, 12
0037ac  67429fff  storeli.w r25, -220(r30)
0037b0  db010000  j 12
0037b4  17910c01  or r2, r25, r16
0037b8  67422ffe  storeli.w r2, -220(r30)
0037bc  0b6d1220  mul.f.rn r26, r4, r1
0037c0  17011d01  and r2, r26, r17
0037c4  93832704  setlt.u r7, r15, r2
0037c8  670a2ffc  storeli.w r2, -352(r30)
0037cc  3bb00300  bneq r7, zero, 12
0037d0  6702afff  storeli.w r26, -224(r30)
0037d4  db010000  j 12
0037d8  17110d01  or r2, r26, r16
0037dc  67022ffe  storeli.w r2, -224(r30)
0037e0  8bed1220  mul.f.rn r27, r5, r1
0037e4  97821d01  and r5, r27, r17
0037e8  93835704  setlt.u r7, r15, r5
0037ec  3bb00300  bneq r7, zero, 12
0037f0  e741bfff  storeli.w r27, -228(r30)
0037f4  db010000  j 12
0037f8  17910d01  or r2, r27, r16
0037fc  e7412ffe  storeli.w r2, -228(r30)
003800  0b6e1320  mul.f.rn r28, r6, r1
003804  17031e01  and r6, r28, r17
003808  93836704  setlt.u r7, r15, r6
00380c  3bb00300  bneq r7, zero, 12
003810  e701cfff  storeli.w r28, -232(r30)
003814  db010000  j 12
003818  17110e01  or r2, r28, r16
00381c  e7012ffe  storeli.w r2, -232(r30)
003820  0b641420  mul.f.rn r8, r8, r1
003824  17011401  and r2, r8, r17
003828  93832704  setlt.u r7, r15, r2
00382c  e7092ffc  storeli.w r2, -360(r30)
003830  3bb00300  bneq r7, zero, 12
003834  67418ffe  storeli.w r8, -236(r30)
003838  db010000  j 12
00383c  17110401  or r2, r8, r16
003840  67412ffe  storeli.w r2, -236(r30)
003844  8be41420  mul.f.rn r9, r9, r1
003848  97851401  and r11, r9, r17
00384c  9383b704  setlt.u r7, r15, r11
003850  3bb00300  bneq r7, zero, 12
003854  67019ffe  storeli.w r9, -240(r30)
003858  db010000  j 12
00385c  17910401  or r2, r9, r16
003860  67012ffe  storeli.w r2, -240(r30)
003864  0b661620  mul.f.rn r12, r12, r1
003868  97031601  and r7, r12, r17
00386c  93867704  setlt.u r13, r15, r7
003870  3bb00600  bneq r13, zero, 12
003874  e740cffe  storeli.w r12, -244(r30)
003878  db010000  j 12
00387c  17110601  or r2, r12, r16
003880  e7402ffe  storeli.w r2, -244(r30)
003884  0b691920  mul.f.rn r18, r18, r1
003888  2b01807f  lui r2, 522240
00388c  ab014000  lui r3, 1024
003890  97061901  and r13, r18, r17
003894  9387d704  setlt.u r15, r15, r13
003898  3bb00700  bneq r15, zero, 12
00389c  e7002fff  storeli.w r18, -248(r30)
0038a0  db010000  j 12
0038a4  97170901  or r15, r18, r16
0038a8  e700fffe  storeli.w r15, -248(r30)
0038ac  0b6a1a20  mul.f.rn r20, r20, r1
0038b0  17081a01  and r16, r20, r17
0038b4  93070105  setlt.u r15, r2, r16
0038b8  3bb00700  bneq r15, zero, 12
0038bc  67404fff  storeli.w r20, -252(r30)
0038c0  db010000  j 12
0038c4  97173a00  or r15, r20, r3
0038c8  6740fffe  storeli.w r15, -252(r30)
0038cc  0b6b1b20  mul.f.rn r22, r22, r1
0038d0  970a1b01  and r21, r22, r17
0038d4  93075105  setlt.u r15, r2, r21
0038d8  3bb00700  bneq r15, zero, 12
0038dc  67006fff  storeli.w r22, -256(r30)
0038e0  db010000  j 12
0038e4  97173b00  or r15, r22, r3
0038e8  6700fffe  storeli.w r15, -256(r30)
0038ec  8be91920  mul.f.rn r19, r19, r1
0038f0  e3477ffe  loadli.w r15,  -196(r30)
0038f4  9787f900  and r15, r19, r15
0038f8  9308f104  setlt.u r17, r2, r15
0038fc  3bb00800  bneq r17, zero, 12
003900  e74f3ffd  storeli.w r19, -260(r30)
003904  db010000  j 12
003908  97983900  or r17, r19, r3
00390c  e74f1ffd  storeli.w r17, -260(r30)
003910  8b681520  mul.f.rn r17, r10, r1
003914  63457ffe  loadli.w r10,  -196(r30)
003918  1782a800  and r4, r17, r10
00391c  13054104  setlt.u r10, r2, r4
003920  670c4ffc  storeli.w r4, -320(r30)
003924  3b300500  bneq r10, zero, 12
003928  e70f1ffd  storeli.w r17, -264(r30)
00392c  db010000  j 12
003930  17953800  or r10, r17, r3
003934  e70faffc  storeli.w r10, -264(r30)
003938  6345effd  loadli.w r10,  -268(r30)
00393c  0b671520  mul.f.rn r14, r10, r1
003940  63457ffe  loadli.w r10,  -196(r30)
003944  1702a700  and r4, r14, r10
003948  13054104  setlt.u r10, r2, r4
00394c  e70c4ffc  storeli.w r4, -312(r30)
003950  3b400500  bneq r10, zero, 16
003954  1f020700  addli r4, r14, 0
003958  674feffc  storeli.w r14, -268(r30)
00395c  5b020000  j 16
003960  17153700  or r10, r14, r3
003964  1f020700  addli r4, r14, 0
003968  674faffc  storeli.w r10, -268(r30)
00396c  6345affd  loadli.w r10,  -300(r30)
003970  0b651520  mul.f.rn r10, r10, r1
003974  e3407ffe  loadli.w r1,  -196(r30)
003978  97001500  and r1, r10, r1
00397c  6749affc  storeli.w r10, -364(r30)
003980  670d1ffc  storeli.w r1, -304(r30)
003984  93001104  setlt.u r1, r2, r1
003988  3bb00000  bneq r1, zero, 12
00398c  674daffc  storeli.w r10, -300(r30)
003990  db010000  j 12
003994  97103500  or r1, r10, r3
003998  674d1ffc  storeli.w r1, -300(r30)
00399c  e3007ffe  loadli.w r1,  -200(r30)
0039a0  63017ffd  loadli.w r2,  -328(r30)
0039a4  93802004  setlt.u r1, r1, r2
0039a8  bb900000  bneq r1, zero, 36
0039ac  9bc00b01  srli r1, r23, 16
0039b0  63456ffe  loadli.w r10,  -204(r30)
0039b4  9b801000  andi r1, r1, 1
0039b8  8b901b10  add.s r1, r23, r1
0039bc  8b90a010  add.s r1, r1, r10
0039c0  2b05ffff  lui r10, 1048560
0039c4  9780a000  and r1, r1, r10
0039c8  e7421ffe  storeli.w r1, -212(r30)
0039cc  63057ffe  loadli.w r10,  -200(r30)
0039d0  e3006ffd  loadli.w r1,  -336(r30)
0039d4  93001504  setlt.u r1, r10, r1
0039d8  bb900000  bneq r1, zero, 36
0039dc  9b400c01  srli r1, r24, 16
0039e0  63416ffe  loadli.w r2,  -204(r30)
0039e4  9b801000  andi r1, r1, 1
0039e8  8b101c10  add.s r1, r24, r1
0039ec  8b902010  add.s r1, r1, r2
0039f0  2b01ffff  lui r2, 1048560
0039f4  97802000  and r1, r1, r2
0039f8  e7021ffe  storeli.w r1, -216(r30)
0039fc  e3005ffd  loadli.w r1,  -344(r30)
003a00  93001504  setlt.u r1, r10, r1
003a04  bb900000  bneq r1, zero, 36
003a08  9bc00c01  srli r1, r25, 16
003a0c  63416ffe  loadli.w r2,  -204(r30)
003a10  9b801000  andi r1, r1, 1
003a14  8b901c10  add.s r1, r25, r1
003a18  8b902010  add.s r1, r1, r2
003a1c  2b01ffff  lui r2, 1048560
003a20  97802000  and r1, r1, r2
003a24  67421ffe  storeli.w r1, -220(r30)
003a28  e3004ffd  loadli.w r1,  -352(r30)
003a2c  634c6ffe  loadli.w r24,  -204(r30)
003a30  93001504  setlt.u r1, r10, r1
003a34  bb800000  bneq r1, zero, 32
003a38  9b400d01  srli r1, r26, 16
003a3c  2b01ffff  lui r2, 1048560
003a40  9b801000  andi r1, r1, 1
003a44  8b101d10  add.s r1, r26, r1
003a48  8b908011  add.s r1, r1, r24
003a4c  97802000  and r1, r1, r2
003a50  67021ffe  storeli.w r1, -224(r30)
003a54  93005504  setlt.u r1, r10, r5
003a58  ab0cffff  lui r25, 1048560
003a5c  3bf00000  bneq r1, zero, 28
003a60  9bc00d01  srli r1, r27, 16
003a64  9b801000  andi r1, r1, 1
003a68  8b901d10  add.s r1, r27, r1
003a6c  8b908011  add.s r1, r1, r24
003a70  97809001  and r1, r1, r25
003a74  e7411ffe  storeli.w r1, -228(r30)
003a78  93006504  setlt.u r1, r10, r6
003a7c  3bf00000  bneq r1, zero, 28
003a80  9b400e01  srli r1, r28, 16
003a84  9b801000  andi r1, r1, 1
003a88  8b101e10  add.s r1, r28, r1
003a8c  8b908011  add.s r1, r1, r24
003a90  97809001  and r1, r1, r25
003a94  e7011ffe  storeli.w r1, -232(r30)
003a98  e3003ffd  loadli.w r1,  -360(r30)
003a9c  93001504  setlt.u r1, r10, r1
003aa0  3bf00000  bneq r1, zero, 28
003aa4  9b400401  srli r1, r8, 16
003aa8  9b801000  andi r1, r1, 1
003aac  8b101410  add.s r1, r8, r1
003ab0  8b908011  add.s r1, r1, r24
003ab4  97809001  and r1, r1, r25
003ab8  67411ffe  storeli.w r1, -236(r30)
003abc  9300b504  setlt.u r1, r10, r11
003ac0  1f070200  addli r14, r4, 0
003ac4  37d90000  beq r1, zero, 596
003ac8  93007504  setlt.u r1, r10, r7
003acc  b7b90000  beq r1, zero, 620
003ad0  9300d504  setlt.u r1, r10, r13
003ad4  379a0000  beq r1, zero, 644
003ad8  93000505  setlt.u r1, r10, r16
003adc  37fa0000  beq r1, zero, 668
003ae0  93005505  setlt.u r1, r10, r21
003ae4  b7da0000  beq r1, zero, 692
003ae8  9300f504  setlt.u r1, r10, r15
003aec  3bf00000  bneq r1, zero, 28
003af0  9bc00901  srli r1, r19, 16
003af4  9b801000  andi r1, r1, 1
003af8  8b901910  add.s r1, r19, r1
003afc  8b908011  add.s r1, r1, r24
003b00  97809001  and r1, r1, r25
003b04  e74f1ffc  storeli.w r1, -260(r30)
003b08  e303bffd  loadli.w r7,  -296(r30)
003b0c  e301dffc  loadli.w r3,  -408(r30)
003b10  63429ffc  loadli.w r4,  -436(r30)
003b14  e300effc  loadli.w r1,  -400(r30)
003b18  0b937110  add.s r6, r3, r7
003b1c  e341cffc  loadli.w r3,  -412(r30)
003b20  0b917010  add.s r2, r1, r7
003b24  e340dffc  loadli.w r1,  -404(r30)
003b28  0b967110  add.s r12, r3, r7
003b2c  e301cffc  loadli.w r3,  -416(r30)
003b30  8b907010  add.s r1, r1, r7
003b34  8b957110  add.s r11, r3, r7
003b38  e341bffc  loadli.w r3,  -420(r30)
003b3c  8b997110  add.s r19, r3, r7
003b40  e301bffc  loadli.w r3,  -424(r30)
003b44  0b997110  add.s r18, r3, r7
003b48  e341affc  loadli.w r3,  -428(r30)
003b4c  0b987110  add.s r16, r3, r7
003b50  e301affc  loadli.w r3,  -432(r30)
003b54  8b977110  add.s r15, r3, r7
003b58  e3018ffd  loadli.w r3,  -320(r30)
003b5c  93013504  setlt.u r3, r10, r3
003b60  0b157210  add.s r10, r4, r7
003b64  63029ffc  loadli.w r4,  -440(r30)
003b68  0b1e7210  add.s r28, r4, r7
003b6c  63428ffc  loadli.w r4,  -444(r30)
003b70  8b1b7210  add.s r23, r4, r7
003b74  63028ffc  loadli.w r4,  -448(r30)
003b78  8b127210  add.s r5, r4, r7
003b7c  63427ffc  loadli.w r4,  -452(r30)
003b80  0b127210  add.s r4, r4, r7
003b84  670c4ffc  storeli.w r4, -320(r30)
003b88  63027ffc  loadli.w r4,  -456(r30)
003b8c  0b127210  add.s r4, r4, r7
003b90  e70d4ffc  storeli.w r4, -296(r30)
003b94  3bf00100  bneq r3, zero, 28
003b98  9bc10801  srli r3, r17, 16
003b9c  9b811100  andi r3, r3, 1
003ba0  8b913810  add.s r3, r17, r3
003ba4  8b918111  add.s r3, r3, r24
003ba8  97819101  and r3, r3, r25
003bac  e70f3ffc  storeli.w r3, -264(r30)
003bb0  33110128  sext_int2long r[3:4], r2
003bb4  9f160000  addli r13, zero, 1
003bb8  b3930028  sext_int2long r[8:9], r1
003bbc  9730d102  sll.d r[2:3], r[3:4], r13
003bc0  97b1d302  sll.d r[4:5], r[8:9], r13
003bc4  e303bffd  loadli.w r7,  -296(r30)
003bc8  73381fea  store.d r[2:3], -336(r30)
003bcc  b3100328  sext_int2long r[2:3], r6
003bd0  73343fea  store.d r[4:5], -344(r30)
003bd4  b3910528  sext_int2long r[4:5], r11
003bd8  b3930328  sext_int2long r[8:9], r7
003bdc  97b0d002  sll.d r[2:3], r[2:3], r13
003be0  97b3d302  sll.d r[8:9], r[8:9], r13
003be4  73301fea  store.d r[2:3], -352(r30)
003be8  b3100628  sext_int2long r[2:3], r12
003bec  97b5d002  sll.d r[12:13], r[2:3], r13
003bf0  97b0d102  sll.d r[2:3], r[4:5], r13
003bf4  b3110928  sext_int2long r[4:5], r18
003bf8  733c1fe8  store.d r[2:3], -360(r30)
003bfc  b3900928  sext_int2long r[2:3], r19
003c00  97bad102  sll.d r[22:23], r[4:5], r13
003c04  b3910728  sext_int2long r[4:5], r15
003c08  97b9d002  sll.d r[20:21], r[2:3], r13
003c0c  b3100828  sext_int2long r[2:3], r16
003c10  17bdd102  sll.d r[27:28], r[4:5], r13
003c14  b3110e28  sext_int2long r[4:5], r28
003c18  17bcd002  sll.d r[25:26], r[2:3], r13
003c1c  b3100528  sext_int2long r[2:3], r10
003c20  97b8d102  sll.d r[18:19], r[4:5], r13
003c24  e3019ffd  loadli.w r3,  -312(r30)
003c28  97b7d002  sll.d r[16:17], r[2:3], r13
003c2c  b3900b28  sext_int2long r[2:3], r23
003c30  e30b7ffe  loadli.w r23,  -200(r30)
003c34  97b0d002  sll.d r[2:3], r[2:3], r13
003c38  93843b04  setlt.u r9, r23, r3
003c3c  b3910228  sext_int2long r[4:5], r5
003c40  e3028ffd  loadli.w r5,  -320(r30)
003c44  97b1d102  sll.d r[4:5], r[4:5], r13
003c48  b3920228  sext_int2long r[6:7], r5
003c4c  97b2d202  sll.d r[6:7], r[6:7], r13
003c50  bb900400  bneq r9, zero, 36
003c54  9b440701  srli r9, r14, 16
003c58  63456ffe  loadli.w r10,  -204(r30)
003c5c  9b841400  andi r9, r9, 1
003c60  8b149710  add.s r9, r14, r9
003c64  8b94a410  add.s r9, r9, r10
003c68  2b05ffff  lui r10, 1048560
003c6c  9784a400  and r9, r9, r10
003c70  674f9ffc  storeli.w r9, -268(r30)
003c74  eb540f01  load.d r[10:11], 16(r30)
003c78  eb560fee  load.d r[14:15], -288(r30)
003c7c  8ba6d410  add.ul r[14:15], r[10:11], r[14:15]
003c80  8ba5b410  add.ul r[12:13], r[10:11], r[12:13]
003c84  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
003c88  733cdfea  store.d r[14:15], -328(r30)
003c8c  eb560feb  load.d r[14:15], -336(r30)
003c90  733cbfec  store.d r[12:13], -296(r30)
003c94  eb558fe9  load.d r[12:13], -360(r30)
003c98  8ba6d410  add.ul r[14:15], r[10:11], r[14:15]
003c9c  8ba5b410  add.ul r[12:13], r[10:11], r[12:13]
003ca0  7338dfea  store.d r[14:15], -336(r30)
003ca4  eb568fea  load.d r[14:15], -344(r30)
003ca8  8ba6d410  add.ul r[14:15], r[10:11], r[14:15]
003cac  7334dfec  store.d r[14:15], -312(r30)
003cb0  eb560fea  load.d r[14:15], -352(r30)
003cb4  8ba6d410  add.ul r[14:15], r[10:11], r[14:15]
003cb8  7330dfec  store.d r[14:15], -320(r30)
003cbc  8ba63411  add.ul r[14:15], r[10:11], r[20:21]
003cc0  8ba95411  add.ul r[20:21], r[10:11], r[22:23]
003cc4  8baa8411  add.ul r[22:23], r[10:11], r[25:26]
003cc8  630caffd  loadli.w r24,  -304(r30)
003ccc  8baca411  add.ul r[26:27], r[10:11], r[27:28]
003cd0  8badf410  add.ul r[28:29], r[10:11], r[16:17]
003cd4  8ba71411  add.ul r[16:17], r[10:11], r[18:19]
003cd8  8ba83410  add.ul r[18:19], r[10:11], r[4:5]
003cdc  8ba15410  add.ul r[4:5], r[10:11], r[6:7]
003ce0  e342affd  loadli.w r5,  -300(r30)
003ce4  8ba47410  add.ul r[10:11], r[10:11], r[8:9]
003ce8  73303fee  store.d r[4:5], -288(r30)
003cec  938b8b05  setlt.u r23, r23, r24
003cf0  3b960be2  bneq r23, zero, -14972
003cf4  63422ffd  loadli.w r4,  -364(r30)
003cf8  9b410201  srli r3, r4, 16
003cfc  9b811100  andi r3, r3, 1
003d00  8b113210  add.s r3, r4, r3
003d04  63426ffe  loadli.w r4,  -204(r30)
003d08  8b914110  add.s r3, r3, r4
003d0c  2b02ffff  lui r4, 1048560
003d10  97824100  and r5, r3, r4
003d14  5bacf8ff  j -15008
003d18  9bc00401  srli r1, r9, 16
003d1c  9b801000  andi r1, r1, 1
003d20  8b901410  add.s r1, r9, r1
003d24  8b908011  add.s r1, r1, r24
003d28  97809001  and r1, r1, r25
003d2c  67011ffe  storeli.w r1, -240(r30)
003d30  93007504  setlt.u r1, r10, r7
003d34  3bf600fe  bneq r1, zero, -612
003d38  9b400601  srli r1, r12, 16
003d3c  9b801000  andi r1, r1, 1
003d40  8b101610  add.s r1, r12, r1
003d44  8b908011  add.s r1, r1, r24
003d48  97809001  and r1, r1, r25
003d4c  e7401ffe  storeli.w r1, -244(r30)
003d50  9300d504  setlt.u r1, r10, r13
003d54  3b9600fe  bneq r1, zero, -636
003d58  9b400901  srli r1, r18, 16
003d5c  9b801000  andi r1, r1, 1
003d60  8b101910  add.s r1, r18, r1
003d64  8b908011  add.s r1, r1, r24
003d68  97809001  and r1, r1, r25
003d6c  e7001ffe  storeli.w r1, -248(r30)
003d70  93000505  setlt.u r1, r10, r16
003d74  bbb500fe  bneq r1, zero, -660
003d78  9b400a01  srli r1, r20, 16
003d7c  9b801000  andi r1, r1, 1
003d80  8b101a10  add.s r1, r20, r1
003d84  8b908011  add.s r1, r1, r24
003d88  97809001  and r1, r1, r25
003d8c  67401ffe  storeli.w r1, -252(r30)
003d90  93005505  setlt.u r1, r10, r21
003d94  3bd500fe  bneq r1, zero, -684
003d98  9b400b01  srli r1, r22, 16
003d9c  9b801000  andi r1, r1, 1
003da0  8b101b10  add.s r1, r22, r1
003da4  8b908011  add.s r1, r1, r24
003da8  97809001  and r1, r1, r25
003dac  67001ffe  storeli.w r1, -256(r30)
003db0  9300f504  setlt.u r1, r10, r15
003db4  b7f400fe  beq r1, zero, -708
003db8  5baaffff  j -688
003dbc  2b01c07f  lui r2, 523264
003dc0  37be01ea  beq r3, zero, -10356
003dc4  9f010100  addli r3, r2, 0
003dc8  3bae00ea  bneq r1, zero, -10360
003dcc  5bf1faff  j -10360
003dd0  2b01c07f  lui r2, 523264
003dd4  b7bf00ea  beq r1, zero, -10260
003dd8  9f000100  addli r1, r2, 0
003ddc  e7016ffd  storeli.w r22, -488(r30)
003de0  bb2f08ea  bneq r16, zero, -10264
003de4  5bfdfaff  j -10264
003de8  2b08c07f  lui r16, 523264
003dec  e34a4ffb  loadli.w r21,  -604(r30)
003df0  37fa08ec  beq r17, zero, -9572
003df4  9f080800  addli r17, r16, 0
003df8  e3045ffb  loadli.w r9,  -600(r30)
003dfc  3bea06ec  bneq r13, zero, -9576
003e00  5b53fbff  j -9576
003e04  2b08c07f  lui r16, 523264
003e08  630abffb  loadli.w r20,  -552(r30)
003e0c  b7eb06ec  beq r13, zero, -9480
003e10  9f060800  addli r13, r16, 0
003e14  bb5b05ec  bneq r10, zero, -9484
003e18  db5efbff  j -9484
003e1c  ab06c07f  lui r13, 523264
003e20  6349affb  loadli.w r18,  -556(r30)
003e24  373d05ec  beq r10, zero, -9396
003e28  1f850600  addli r10, r13, 0
003e2c  3bad07ec  bneq r15, zero, -9400
003e30  5b69fbff  j -9400
003e34  2b05c07f  lui r10, 523264
003e38  e3488ffb  loadli.w r17,  -572(r30)
003e3c  b78e07ec  beq r15, zero, -9312
003e40  9f070500  addli r15, r10, 0
003e44  3bfe09ec  bneq r19, zero, -9316
003e48  db73fbff  j -9316
003e4c  2b05c07f  lui r10, 523264
003e50  b7df09ec  beq r19, zero, -9228
003e54  9f090500  addli r19, r10, 0
003e58  bb4f01ec  bneq r2, zero, -9232
003e5c  5b7efbff  j -9232
003e60  2b05c07f  lui r10, 523264
003e64  63088ffb  loadli.w r16,  -576(r30)
003e68  373101ee  beq r2, zero, -9140
003e6c  1f010500  addli r2, r10, 0
003e70  3ba103ee  bneq r7, zero, -9144
003e74  5b89fbff  j -9144
003e78  2b01c07f  lui r2, 523264
003e7c  e3477ffb  loadli.w r15,  -580(r30)
003e80  b78203ee  beq r7, zero, -9056
003e84  9f030100  addli r7, r2, 0
003e88  3b7203ee  bneq r6, zero, -9060
003e8c  db93fbff  j -9060
003e90  2b01c07f  lui r2, 523264
003e94  63474ffc  loadli.w r14,  -476(r30)
003e98  b75303ee  beq r6, zero, -8972
003e9c  1f030100  addli r6, r2, 0
003ea0  bbc301ee  bneq r3, zero, -8976
003ea4  5b9efbff  j -8976
003ea8  2b01c07f  lui r2, 523264
003eac  e30b4ffc  loadli.w r23,  -480(r30)
003eb0  37a501ee  beq r3, zero, -8888
003eb4  9f010100  addli r3, r2, 0
003eb8  3b9505ee  bneq r11, zero, -8892
003ebc  dba8fbff  j -8892
003ec0  2b01c07f  lui r2, 523264
003ec4  37f605ee  beq r11, zero, -8804
003ec8  9f050100  addli r11, r2, 0
003ecc  3b6606ee  bneq r12, zero, -8808
003ed0  5bb3fbff  j -8808
003ed4  2b01c07f  lui r2, 523264
003ed8  b75706ee  beq r12, zero, -8716
003edc  1f060100  addli r12, r2, 0
003ee0  bbc700ee  bneq r1, zero, -8720
003ee4  5bbefbff  j -8720
003ee8  2b01c07f  lui r2, 523264
003eec  63057ffb  loadli.w r10,  -584(r30)
003ef0  37b900ee  beq r1, zero, -8628
003ef4  9f000100  addli r1, r2, 0
003ef8  3b290cee  bneq r24, zero, -8632
003efc  5bc9fbff  j -8632
003f00  ab00c07f  lui r1, 523264
003f04  b70a0cee  beq r24, zero, -8544
003f08  1f8c0000  addli r24, r1, 0
003f0c  3bfa0cee  bneq r25, zero, -8548
003f10  dbd3fbff  j -8548
003f14  ab00c07f  lui r1, 523264
003f18  b7eb0cee  beq r25, zero, -8456
003f1c  9f8c0000  addli r25, r1, 0
003f20  bb5b02ee  bneq r4, zero, -8460
003f24  dbdefbff  j -8460
003f28  ab00c07f  lui r1, 523264
003f2c  37bf0dee  beq r27, zero, -8244
003f30  9f8d0000  addli r27, r1, 0
003f34  63037ffd  loadli.w r6,  -328(r30)
003f38  3b2f03ee  bneq r6, zero, -8248
003f3c  5bf9fbff  j -8248
003f40  ab00c07f  lui r1, 523264
003f44  b7c00cf0  beq r25, zero, -8144
003f48  9f8c0000  addli r25, r1, 0
003f4c  bbb004f0  bneq r9, zero, -8148
003f50  db05fcff  j -8148
003f54  ab00c07f  lui r1, 523264
003f58  9f860b00  addli r13, r23, 0
003f5c  37b204f0  beq r9, zero, -8052
003f60  9f840000  addli r9, r1, 0
003f64  3b220ef0  bneq r28, zero, -8056
003f68  5b11fcff  j -8056
003f6c  ab00c07f  lui r1, 523264
003f70  b7130ef0  beq r28, zero, -7964
003f74  1f8e0000  addli r28, r1, 0
003f78  bb0304f0  bneq r8, zero, -7968
003f7c  5b1cfcff  j -7968
003f80  ab00c07f  lui r1, 523264
003f84  6343effb  loadli.w r6,  -524(r30)
003f88  b77404f0  beq r8, zero, -7876
003f8c  1f840000  addli r8, r1, 0
003f90  bbe402f0  bneq r5, zero, -7880
003f94  5b27fcff  j -7880
003f98  ab00c07f  lui r1, 523264
003f9c  63028ffd  loadli.w r4,  -320(r30)
003fa0  375604f0  beq r8, zero, -7788
003fa4  1f840000  addli r8, r1, 0
003fa8  3b4605f0  bneq r10, zero, -7792
003fac  5b32fcff  j -7792
003fb0  ab00c07f  lui r1, 523264
003fb4  b72705f0  beq r10, zero, -7704
003fb8  1f850000  addli r10, r1, 0
003fbc  e3028ffd  loadli.w r5,  -320(r30)
003fc0  bb9702f0  bneq r5, zero, -7708
003fc4  db3cfcff  j -7708
003fc8  ab00c07f  lui r1, 523264
003fcc  63029ffd  loadli.w r4,  -312(r30)
003fd0  370905f0  beq r10, zero, -7616
003fd4  1f850000  addli r10, r1, 0
003fd8  bbf807f0  bneq r15, zero, -7620
003fdc  db47fcff  j -7620
003fe0  ab00c07f  lui r1, 523264
003fe4  37da07f0  beq r15, zero, -7532
003fe8  9f870000  addli r15, r1, 0
003fec  e3029ffd  loadli.w r5,  -312(r30)
003ff0  3bca02f0  bneq r5, zero, -7536
003ff4  5b52fcff  j -7536
003ff8  ab00c07f  lui r1, 523264
003ffc  6302affd  loadli.w r4,  -304(r30)
004000  b7bb07f0  beq r15, zero, -7444
004004  9f870000  addli r15, r1, 0
004008  bb2b08f0  bneq r16, zero, -7448
00400c  5b5dfcff  j -7448
004010  ab00c07f  lui r1, 523264
004014  370d08f0  beq r16, zero, -7360
004018  1f880000  addli r16, r1, 0
00401c  e302affd  loadli.w r5,  -304(r30)
004020  bbfc02f0  bneq r5, zero, -7364
004024  db67fcff  j -7364
004028  ab00c07f  lui r1, 523264
00402c  6342affd  loadli.w r4,  -300(r30)
004030  376e08f0  beq r16, zero, -7272
004034  1f880000  addli r16, r1, 0
004038  3bde08f0  bneq r17, zero, -7276
00403c  db72fcff  j -7276
004040  ab00c07f  lui r1, 523264
004044  b7bf08f0  beq r17, zero, -7188
004048  9f880000  addli r17, r1, 0
00404c  e342affd  loadli.w r5,  -300(r30)
004050  bbaf02f0  bneq r5, zero, -7192
004054  5b7dfcff  j -7192
004058  ab00c07f  lui r1, 523264
00405c  6342effd  loadli.w r4,  -268(r30)
004060  379108f2  beq r17, zero, -7100
004064  9f880000  addli r17, r1, 0
004068  3b010df2  bneq r26, zero, -7104
00406c  5b88fcff  j -7104
004070  ab00c07f  lui r1, 523264
004074  37620df2  beq r26, zero, -7016
004078  1f8d0000  addli r26, r1, 0
00407c  e342effd  loadli.w r5,  -268(r30)
004080  3bd202f2  bneq r5, zero, -7020
004084  db92fcff  j -7020
004088  ab00c07f  lui r1, 523264
00408c  b7430df2  beq r26, zero, -6928
004090  1f8d0000  addli r26, r1, 0
004094  bb330bf2  bneq r22, zero, -6932
004098  db9dfcff  j -6932
00409c  ab00c07f  lui r1, 523264
0040a0  6302fffd  loadli.w r4,  -264(r30)
0040a4  37150bf2  beq r22, zero, -6844
0040a8  1f8b0000  addli r22, r1, 0
0040ac  3b850af2  bneq r21, zero, -6848
0040b0  5ba8fcff  j -6848
0040b4  ab00c07f  lui r1, 523264
0040b8  6342fffd  loadli.w r4,  -260(r30)
0040bc  37e60af2  beq r21, zero, -6760
0040c0  9f8a0000  addli r21, r1, 0
0040c4  e302fffd  loadli.w r5,  -264(r30)
0040c8  3bd602f2  bneq r5, zero, -6764
0040cc  dbb2fcff  j -6764
0040d0  ab00c07f  lui r1, 523264
0040d4  63020ffe  loadli.w r4,  -256(r30)
0040d8  371a05f2  beq r10, zero, -6524
0040dc  1f850000  addli r10, r1, 0
0040e0  3b8a09f2  bneq r19, zero, -6528
0040e4  5bd0fcff  j -6528
0040e8  ab00c07f  lui r1, 523264
0040ec  63420ffe  loadli.w r4,  -252(r30)
0040f0  b7bd09f2  beq r19, zero, -6292
0040f4  9f890000  addli r19, r1, 0
0040f8  bb2d09f2  bneq r18, zero, -6296
0040fc  5bedfcff  j -6296
004100  ab00c07f  lui r1, 523264
004104  370f09f2  beq r18, zero, -6208
004108  1f890000  addli r18, r1, 0
00410c  e3420ffe  loadli.w r5,  -252(r30)
004110  bbfe02f2  bneq r5, zero, -6212
004114  dbf7fcff  j -6212
004118  ab00c07f  lui r1, 523264
00411c  63021ffe  loadli.w r4,  -248(r30)
004120  376009f4  beq r18, zero, -6120
004124  1f890000  addli r18, r1, 0
004128  3b500af4  bneq r20, zero, -6124
00412c  db02fdff  j -6124
004130  ab00c07f  lui r1, 523264
004134  b7410af4  beq r20, zero, -6032
004138  1f8a0000  addli r20, r1, 0
00413c  e3021ffe  loadli.w r5,  -248(r30)
004140  bbb102f4  bneq r5, zero, -6036
004144  db0dfdff  j -6036
004148  ab00c07f  lui r1, 523264
00414c  63022ffe  loadli.w r4,  -240(r30)
004150  37230af4  beq r20, zero, -5944
004154  1f8a0000  addli r20, r1, 0
004158  3b1309f4  bneq r18, zero, -5948
00415c  db18fdff  j -5948
004160  ab00c07f  lui r1, 523264
004164  377409f4  beq r18, zero, -5860
004168  1f890000  addli r18, r1, 0
00416c  e3022ffe  loadli.w r5,  -240(r30)
004170  3be402f4  bneq r5, zero, -5864
004174  5b23fdff  j -5864
004178  ab00c07f  lui r1, 523264
00417c  b7e50af4  beq r21, zero, -5768
004180  9f8a0000  addli r21, r1, 0
004184  bbd505f4  bneq r11, zero, -5772
004188  db2efdff  j -5772
00418c  ab00c07f  lui r1, 523264
004190  37b705f4  beq r11, zero, -5684
004194  9f850000  addli r11, r1, 0
004198  3ba703f4  bneq r7, zero, -5688
00419c  5b39fdff  j -5688
0041a0  ab00c07f  lui r1, 523264
0041a4  63422ffe  loadli.w r4,  -236(r30)
0041a8  b78803f4  beq r7, zero, -5600
0041ac  9f830000  addli r7, r1, 0
0041b0  3b7809f4  bneq r18, zero, -5604
0041b4  db43fdff  j -5604
0041b8  ab00c07f  lui r1, 523264
0041bc  63023ffe  loadli.w r4,  -232(r30)
0041c0  379c0bf4  beq r23, zero, -5372
0041c4  9f8b0000  addli r23, r1, 0
0041c8  3b0c0cf4  bneq r24, zero, -5376
0041cc  5b60fdff  j -5376
0041d0  ab00c07f  lui r1, 523264
0041d4  63024ffe  loadli.w r4,  -224(r30)
0041d8  b72f0cf4  beq r24, zero, -5144
0041dc  1f8c0000  addli r24, r1, 0
0041e0  bb9f0bf4  bneq r23, zero, -5148
0041e4  db7cfdff  j -5148
0041e8  ab00c07f  lui r1, 523264
0041ec  b7f00bf6  beq r23, zero, -5060
0041f0  9f8b0000  addli r23, r1, 0
0041f4  e3024ffe  loadli.w r5,  -224(r30)
0041f8  bbe002f6  bneq r5, zero, -5064
0041fc  5b87fdff  j -5064
004200  ab00c07f  lui r1, 523264
004204  63424ffe  loadli.w r4,  -220(r30)
004208  b7020cf6  beq r24, zero, -4960
00420c  1f8c0000  addli r24, r1, 0
004210  e3413ffe  loadli.w r3,  -228(r30)
004214  3bf201f6  bneq r3, zero, -4964
004218  db93fdff  j -4964
00421c  ab00c07f  lui r1, 523264
004220  37a40bf6  beq r23, zero, -4856
004224  9f8b0000  addli r23, r1, 0
004228  e3424ffe  loadli.w r5,  -220(r30)
00422c  3b9402f6  bneq r5, zero, -4860
004230  dba0fdff  j -4860
004234  ab00c07f  lui r1, 523264
004238  63025ffe  loadli.w r4,  -216(r30)
00423c  b7850bf6  beq r23, zero, -4768
004240  9f8b0000  addli r23, r1, 0
004244  3b7503f6  bneq r6, zero, -4772
004248  dbabfdff  j -4772
00424c  ab00c07f  lui r1, 523264
004250  b75603f6  beq r6, zero, -4684
004254  1f830000  addli r6, r1, 0
004258  e3025ffe  loadli.w r5,  -216(r30)
00425c  bbc602f6  bneq r5, zero, -4688
004260  5bb6fdff  j -4688
004264  ab00c07f  lui r1, 523264
004268  37c80bf6  beq r23, zero, -4592
00426c  9f8b0000  addli r23, r1, 0
004270  3bb803f6  bneq r7, zero, -4596
004274  dbc1fdff  j -4596
004278  ab00c07f  lui r1, 523264
00427c  b7b903f6  beq r7, zero, -4500
004280  9f830000  addli r7, r1, 0
004284  bb2905f6  bneq r10, zero, -4504
004288  5bcdfdff  j -4504
00428c  ab00c07f  lui r1, 523264
004290  371b05f6  beq r10, zero, -4412
004294  1f850000  addli r10, r1, 0
004298  3b8b04f6  bneq r9, zero, -4416
00429c  5bd8fdff  j -4416
0042a0  ab00c07f  lui r1, 523264
0042a4  37ec04f6  beq r9, zero, -4328
0042a8  9f840000  addli r9, r1, 0
0042ac  3b5c04f6  bneq r8, zero, -4332
0042b0  dbe2fdff  j -4332
0042b4  ab00c07f  lui r1, 523264
0042b8  b73d04f6  beq r8, zero, -4244
0042bc  1f840000  addli r8, r1, 0
0042c0  bb2d03f6  bneq r6, zero, -4248
0042c4  5bedfdff  j -4248
0042c8  ab00c07f  lui r1, 523264
0042cc  370f03f6  beq r6, zero, -4160
0042d0  1f830000  addli r6, r1, 0
0042d4  bbfe03f6  bneq r7, zero, -4164
0042d8  dbf7fdff  j -4164
0042dc  9f0e0ffb  addli sp, r30, -640
0042e0  9f8e0e05  addli sp, sp, 640
0042e4  00a00300  mfence { lm, sm, gm }
0042e8  00100000  exit
0042ec  00100000  exit
0042f0  00100000  exit
0042f4  00100000  exit
0042f8  00100000  exit
0042fc  00100000  exit
004300  00100000  exit
004304  00100000  exit
004308  00100000  exit
00430c  00100000  exit
004310  00100000  exit
004314  00100000  exit
004318  00100000  exit
00431c  00100000  exit
004320  00100000  exit
004324  00100000  exit
004328  00100000  exit
00432c  00100000  exit
004330  00100000  exit
004334  00100000  exit
004338  00100000  exit
00433c  00100000  exit
004340  00100000  exit
004344  00100000  exit
004348  00100000  exit
00434c  00100000  exit
004350  00100000  exit
004354  00100000  exit
004358  00100000  exit
00435c  00100000  exit
004360  00100000  exit
004364  00100000  exit
004368  00100000  exit
00436c  00100000  exit
004370  00100000  exit
004374  00100000  exit
004378  00100000  exit
00437c  00100000  exit
004380  00100000  exit
004384  00100000  exit
004388  00100000  exit
00438c  00100000  exit
004390  00100000  exit
004394  00100000  exit
004398  00100000  exit
00439c  00100000  exit
0043a0  00100000  exit
0043a4  00100000  exit
0043a8  00100000  exit
0043ac  00100000  exit
0043b0  00100000  exit
0043b4  00100000  exit
0043b8  00100000  exit
0043bc  00100000  exit
0043c0  00100000  exit
0043c4  00100000  exit
0043c8  00100000  exit
0043cc  00100000  exit
0043d0  00100000  exit
0043d4  00100000  exit
0043d8  00100000  exit
0043dc  00100000  exit
0043e0  00100000  exit
0043e4  00100000  exit
0043e8  00100000  exit
0043ec  00100000  exit
0043f0  00100000  exit
0043f4  00100000  exit
0043f8  00100000  exit
0043fc  00100000  exit
004400  00100000  exit
004404  00100000  exit
004408  00100000  exit
00440c  00100000  exit
004410  00100000  exit
004414  00100000  exit
004418  00100000  exit
00441c  00100000  exit
004420  00100000  exit
004424  00100000  exit
004428  00100000  exit
00442c  00100000  exit
004430  00100000  exit
004434  00100000  exit
004438  00100000  exit
00443c  00100000  exit
004440  00100000  exit
004444  00100000  exit
004448  00100000  exit
00444c  00100000  exit
004450  00100000  exit
004454  00100000  exit
004458  00100000  exit
00445c  00100000  exit
004460  00100000  exit
004464  00100000  exit
004468  00100000  exit
00446c  00100000  exit
004470  00100000  exit
004474  00100000  exit
004478  00100000  exit
00447c  00100000  exit
004480  00100000  exit
004484  00100000  exit
004488  00100000  exit
00448c  00100000  exit
004490  00100000  exit
004494  00100000  exit
004498  00100000  exit
00449c  00100000  exit
0044a0  00100000  exit
0044a4  00100000  exit
0044a8  00100000  exit
0044ac  00100000  exit
0044b0  00100000  exit
0044b4  00100000  exit
0044b8  00100000  exit
0044bc  00100000  exit
0044c0  00100000  exit
0044c4  00100000  exit
0044c8  00100000  exit
0044cc  00100000  exit
0044d0  00100000  exit
0044d4  00100000  exit
0044d8  00100000  exit
0044dc  00100000  exit
0044e0  00100000  exit
0044e4  00100000  exit
0044e8  00100000  exit
0044ec  00100000  exit
0044f0  00100000  exit
0044f4  00100000  exit
0044f8  00100000  exit
0044fc  00100000  exit
004500  00100000  exit
004504  00100000  exit
004508  00100000  exit
00450c  00100000  exit
004510  00100000  exit
004514  00100000  exit
004518  00100000  exit
00451c  00100000  exit
004520  00100000  exit
004524  00100000  exit
004528  00100000  exit
