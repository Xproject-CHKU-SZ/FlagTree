; SHA-256 df91bc6c7ec3999404099f45cc051fff265f529a50c6e779221a52cdb9647f87
; P800 Cluster · XTDK LLVM 19 · 1857 / 1857 words decoded
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
000108  9b95f2ff  ori r11, r5, 4095
00010c  0b942110  add.s r8, r3, r2
000110  0b924320  mul.s r4, r7, r4
000114  73680440  stores.w zero, 1040(r8)
000118  00a00300  mfence { lm, sm, gm }
00011c  80a10504  csr_set csr3, r11
000120  00d00100  sync_group
000124  e7488ffc  storeli.w r8, -372(r30)
000128  73600400  stores.w zero, 0(r8)
00012c  0b126220  mul.s r4, r4, r6
000130  00a00300  mfence { lm, sm, gm }
000134  80a10504  csr_set csr3, r11
000138  00d00100  sync_group
00013c  e7084ffc  storeli.w r4, -376(r30)
000140  cb55920c  ble.s r4, r9, 6516
000144  1f028000  addli r4, zero, 64
000148  e3431ffd  loadli.w r7,  -372(r30)
00014c  1f150000  addli r10, zero, 1
000150  eb528f00  load.d r[6:7], 8(r30)
000154  9f070fff  addli r15, r30, -128
000158  2b09807f  lui r18, 522240
00015c  ab0b4000  lui r23, 1024
000160  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000164  6748bffc  storeli.w r11, -380(r30)
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
000190  674f1ffc  storeli.w r1, -268(r30)
000194  ab700000  lui r1, 7
000198  9b131200  ori r7, r4, 1
00019c  e7074ffc  storeli.w r4, -392(r30)
0001a0  67077ffc  storeli.w r7, -400(r30)
0001a4  9b132200  ori r7, r4, 2
0001a8  e7467ffc  storeli.w r7, -404(r30)
0001ac  9b133200  ori r7, r4, 3
0001b0  e7067ffc  storeli.w r7, -408(r30)
0001b4  9b134200  ori r7, r4, 4
0001b8  67467ffc  storeli.w r7, -412(r30)
0001bc  9b135200  ori r7, r4, 5
0001c0  67067ffc  storeli.w r7, -416(r30)
0001c4  9b136200  ori r7, r4, 6
0001c8  e7457ffc  storeli.w r7, -420(r30)
0001cc  9b137200  ori r7, r4, 7
0001d0  e7057ffc  storeli.w r7, -424(r30)
0001d4  9b138200  ori r7, r4, 8
0001d8  67457ffc  storeli.w r7, -428(r30)
0001dc  9b139200  ori r7, r4, 9
0001e0  67057ffc  storeli.w r7, -432(r30)
0001e4  9b13a200  ori r7, r4, 10
0001e8  e7447ffc  storeli.w r7, -436(r30)
0001ec  9b13b200  ori r7, r4, 11
0001f0  e7047ffc  storeli.w r7, -440(r30)
0001f4  9b13c200  ori r7, r4, 12
0001f8  67447ffc  storeli.w r7, -444(r30)
0001fc  9b13d200  ori r7, r4, 13
000200  67047ffc  storeli.w r7, -448(r30)
000204  9b13e200  ori r7, r4, 14
000208  e7437ffc  storeli.w r7, -452(r30)
00020c  9b13f200  ori r7, r4, 15
000210  e7037ffc  storeli.w r7, -456(r30)
000214  b3130228  sext_int2long r[8:9], r4
000218  2bf2ffff  lui r4, 1048575
00021c  1b1202f0  ori r4, r4, 3840
000220  97b3a302  sll.d r[8:9], r[8:9], r10
000224  97814100  and r3, r3, r4
000228  8ba27210  add.ul r[6:7], r[6:7], r[8:9]
00022c  9b93f0ff  ori r7, r1, 4095
000230  abf07f7f  lui r1, 522239
000234  1f044000  addli r8, zero, 32
000238  8b912110  add.s r3, r3, r2
00023c  2bf1ff7f  lui r2, 524287
000240  9b90f0ff  ori r1, r1, 4095
000244  73385fe2  store.d r[6:7], -464(r30)
000248  1f038ffe  addli r6, r30, -192
00024c  67437ffe  storeli.w r7, -204(r30)
000250  9b1af1ff  ori r21, r2, 4095
000254  2b11833a  lui r2, 239665
000258  e7031ffe  storeli.w r1, -200(r30)
00025c  67493ffc  storeli.w r3, -364(r30)
000260  9b10f126  ori r1, r2, 623
000264  e7435fff  storeli.w r21, -196(r30)
000268  e7421ffc  storeli.w r1, -468(r30)
00026c  9f802108  addli r1, r3, 1040
000270  67091ffc  storeli.w r1, -368(r30)
000274  9f200000  addli r1, zero, 2
000278  fe8100e0  vmmov mr3, r1
00027c  db420000  j 532
000280  e3006ffe  loadli.w r1,  -208(r30)
000284  63415ffe  loadli.w r2,  -212(r30)
000288  1f240000  addli r8, zero, 2
00028c  9f070fff  addli r15, r30, -128
000290  1fe30700  addli r6, r15, 6
000294  b3900000  float2bfloat.rn r1, r1
000298  33110100  float2bfloat.rn r2, r2
00029c  73101ff8  store.h r1, -128(r30)
0002a0  e3005ffe  loadli.w r1,  -216(r30)
0002a4  73112ff8  store.h r2, -126(r30)
0002a8  63414ffe  loadli.w r2,  -220(r30)
0002ac  b3900000  float2bfloat.rn r1, r1
0002b0  33110100  float2bfloat.rn r2, r2
0002b4  73121ff8  store.h r1, -124(r30)
0002b8  e3004ffe  loadli.w r1,  -224(r30)
0002bc  73132ff8  store.h r2, -122(r30)
0002c0  63413ffe  loadli.w r2,  -228(r30)
0002c4  b3900000  float2bfloat.rn r1, r1
0002c8  33110100  float2bfloat.rn r2, r2
0002cc  73141ff8  store.h r1, -120(r30)
0002d0  e3003ffe  loadli.w r1,  -232(r30)
0002d4  73152ff8  store.h r2, -118(r30)
0002d8  63412ffe  loadli.w r2,  -236(r30)
0002dc  b3900000  float2bfloat.rn r1, r1
0002e0  33110100  float2bfloat.rn r2, r2
0002e4  73161ff8  store.h r1, -116(r30)
0002e8  e3002ffe  loadli.w r1,  -240(r30)
0002ec  73172ff8  store.h r2, -114(r30)
0002f0  63411ffe  loadli.w r2,  -244(r30)
0002f4  b3900000  float2bfloat.rn r1, r1
0002f8  33110100  float2bfloat.rn r2, r2
0002fc  73181ff8  store.h r1, -112(r30)
000300  e3001ffe  loadli.w r1,  -248(r30)
000304  73192ff8  store.h r2, -110(r30)
000308  63410ffe  loadli.w r2,  -252(r30)
00030c  b3900000  float2bfloat.rn r1, r1
000310  33110100  float2bfloat.rn r2, r2
000314  731a1ff8  store.h r1, -108(r30)
000318  e3000ffe  loadli.w r1,  -256(r30)
00031c  731b2ff8  store.h r2, -106(r30)
000320  6341fffd  loadli.w r2,  -260(r30)
000324  b3900000  float2bfloat.rn r1, r1
000328  33110100  float2bfloat.rn r2, r2
00032c  731c1ff8  store.h r1, -104(r30)
000330  e300fffd  loadli.w r1,  -264(r30)
000334  731d2ff8  store.h r2, -102(r30)
000338  33910200  float2bfloat.rn r2, r5
00033c  9fa20700  addli r5, r15, 2
000340  731f2ff8  store.h r2, -98(r30)
000344  2b0100f0  lui r2, 983040
000348  b3900000  float2bfloat.rn r1, r1
00034c  17112400  or r2, r8, r2
000350  731e1ff8  store.h r1, -100(r30)
000354  ab0000f0  lui r1, 983040
000358  00a00000  mfence { lm }
00035c  eb5c8feb  load.d r[26:27], -328(r30)
000360  97101400  or r1, r8, r1
000364  ffb0fc00  s_lm2gm r1, r15, 0(r[26:27])
000368  eb5c0feb  load.d r[26:27], -336(r30)
00036c  9fc00700  addli r1, r15, 4
000370  7fb15c00  s_lm2gm r2, r5, 0(r[26:27])
000374  ab0200f0  lui r5, 983040
000378  2b0100f0  lui r2, 983040
00037c  eb5c0fec  load.d r[26:27], -320(r30)
000380  97125400  or r5, r8, r5
000384  17112400  or r2, r8, r2
000388  ffb26400  s_lm2gm r5, r6, 0(r[10:11])
00038c  2b0300f0  lui r6, 983040
000390  ab0200f0  lui r5, 983040
000394  7fb11c00  s_lm2gm r2, r1, 0(r[26:27])
000398  1fa11700  addli r2, r15, 10
00039c  9f801700  addli r1, r15, 8
0003a0  eb548fec  load.d r[10:11], -312(r30)
0003a4  17136400  or r6, r8, r6
0003a8  97125400  or r5, r8, r5
0003ac  7fb32600  s_lm2gm r6, r2, 0(r[14:15])
0003b0  2b0300f0  lui r6, 983040
0003b4  ffb21500  s_lm2gm r5, r1, 0(r[12:13])
0003b8  ab0200f0  lui r5, 983040
0003bc  1fe11700  addli r2, r15, 14
0003c0  9fc01700  addli r1, r15, 12
0003c4  17136400  or r6, r8, r6
0003c8  97125400  or r5, r8, r5
0003cc  7fb32a00  s_lm2gm r6, r2, 0(r[22:23])
0003d0  2b0300f0  lui r6, 983040
0003d4  ffb21400  s_lm2gm r5, r1, 0(r[10:11])
0003d8  ab0200f0  lui r5, 983040
0003dc  1fa12700  addli r2, r15, 18
0003e0  9f802700  addli r1, r15, 16
0003e4  eb540fee  load.d r[10:11], -288(r30)
0003e8  17136400  or r6, r8, r6
0003ec  97125400  or r5, r8, r5
0003f0  7fb32d00  s_lm2gm r6, r2, 0(r[28:29])
0003f4  2b0300f0  lui r6, 983040
0003f8  ffb21b00  s_lm2gm r5, r1, 0(r[24:25])
0003fc  ab0200f0  lui r5, 983040
000400  1fe12700  addli r2, r15, 22
000404  9fc02700  addli r1, r15, 20
000408  ab0b4000  lui r23, 1024
00040c  17136400  or r6, r8, r6
000410  97125400  or r5, r8, r5
000414  7fb32900  s_lm2gm r6, r2, 0(r[20:21])
000418  2b0300f0  lui r6, 983040
00041c  ffb21800  s_lm2gm r5, r1, 0(r[18:19])
000420  ab0200f0  lui r5, 983040
000424  1fa13700  addli r2, r15, 26
000428  9f803700  addli r1, r15, 24
00042c  2b09807f  lui r18, 522240
000430  17136400  or r6, r8, r6
000434  97125400  or r5, r8, r5
000438  7fb32100  s_lm2gm r6, r2, 0(r[4:5])
00043c  ab0100f0  lui r3, 983040
000440  ffb21400  s_lm2gm r5, r1, 0(r[10:11])
000444  eb520fed  load.d r[6:7], -304(r30)
000448  9fc03700  addli r1, r15, 28
00044c  2b0200f0  lui r4, 983040
000450  1fe13700  addli r2, r15, 30
000454  e304effd  loadli.w r9,  -272(r30)
000458  97113400  or r3, r8, r3
00045c  17124400  or r4, r8, r4
000460  1f044000  addli r8, zero, 32
000464  ffb11200  s_lm2gm r3, r1, 0(r[6:7])
000468  eb528fee  load.d r[6:7], -280(r30)
00046c  e340effc  loadli.w r1,  -396(r30)
000470  7fb22200  s_lm2gm r4, r2, 0(r[6:7])
000474  8b941410  add.s r9, r9, r1
000478  1f038ffe  addli r6, r30, -192
00047c  00a00000  mfence { lm }
000480  e3001ffd  loadli.w r1,  -376(r30)
000484  e34a7ffe  loadli.w r21,  -196(r30)
000488  3fa01400  blt.s r9, r1, 8
00048c  5bc50200  j 5672
000490  9f000000  addli r1, zero, 0
000494  0b111310  add.s r2, r6, r1
000498  9fc00000  addli r1, r1, 4
00049c  73100100  store.h zero, 0(r2)
0004a0  73110100  store.h zero, 2(r2)
0004a4  00a00000  mfence { lm }
0004a8  bbbf80fe  bneq r1, r8, -20
0004ac  e3005f00  loadli.w r1,  40(r30)
0004b0  63414f00  loadli.w r2,  36(r30)
0004b4  9f120000  addli r5, zero, 1
0004b8  670f9ffc  storeli.w r9, -272(r30)
0004bc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0004c0  9f180000  addli r17, zero, 1
0004c4  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0004c8  7e8108e0  vmmov mr2, r17
0004cc  8b901430  div.s r1, r9, r1
0004d0  8b902030  div.s r1, r1, r2
0004d4  63010ffd  loadli.w r2,  -384(r30)
0004d8  8b902010  add.s r1, r1, r2
0004dc  1bb1a000  slli r2, r1, 10
0004e0  e7011ffe  storeli.w r1, -232(r30)
0004e4  e300fffc  loadli.w r1,  -392(r30)
0004e8  670e2ffc  storeli.w r2, -288(r30)
0004ec  8b101110  add.s r1, r2, r1
0004f0  2b0100f0  lui r2, 983040
0004f4  b3910028  sext_int2long r[4:5], r1
0004f8  17112400  or r2, r8, r2
0004fc  ab0000f0  lui r1, 983040
000500  97b45102  sll.d r[10:11], r[4:5], r5
000504  eb510f00  load.d r[4:5], 0(r30)
000508  97101400  or r1, r8, r1
00050c  73349fee  store.d r[10:11], -280(r30)
000510  8ba19110  add.ul r[4:5], r[4:5], r[10:11]
000514  7fa16100  l_gm2lm r2, r6, 0(r[4:5])
000518  6b510fe3  load.d r[3:4], -464(r30)
00051c  ff20f100  l_gm2lm r1, r15, 0(r[3:4])
000520  00a00000  mfence { lm }
000524  eb310ff4  load.hu r3, -192(r30)
000528  6b322ff4  load.hu r4, -190(r30)
00052c  6b31aff5  load.hu r2, -166(r30)
000530  eb30cff5  load.hu r1, -164(r30)
000534  eb324ff4  load.hu r5, -188(r30)
000538  6b336ff4  load.hu r6, -186(r30)
00053c  eb338ff4  load.hu r7, -184(r30)
000540  6b34aff4  load.hu r8, -182(r30)
000544  eb34cff4  load.hu r9, -180(r30)
000548  6b35eff4  load.hu r10, -178(r30)
00054c  eb350ff5  load.hu r11, -176(r30)
000550  6b362ff5  load.hu r12, -174(r30)
000554  eb364ff5  load.hu r13, -172(r30)
000558  6b376ff5  load.hu r14, -170(r30)
00055c  eb378ff5  load.hu r15, -168(r30)
000560  6b38eff5  load.hu r16, -162(r30)
000564  b3910118  bfloat2float.rn r3, r3
000568  33110118  bfloat2float.rn r2, r2
00056c  b3900018  bfloat2float.rn r1, r1
000570  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
000574  b3110218  bfloat2float.rn r3, r4
000578  1f420000  addli r4, zero, 4
00057c  7e0002e0  vmmov mr0, r4
000580  1f021000  addli r4, zero, 8
000584  eaa01136  vor.u.mh vr1{mr3}, r3, vr1
000588  b3910218  bfloat2float.rn r3, r5
00058c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000590  b3110318  bfloat2float.rn r3, r6
000594  7e0002e0  vmmov mr0, r4
000598  1f022000  addli r4, zero, 16
00059c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005a0  b3910318  bfloat2float.rn r3, r7
0005a4  7e0002e0  vmmov mr0, r4
0005a8  1f024000  addli r4, zero, 32
0005ac  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005b0  b3110418  bfloat2float.rn r3, r8
0005b4  7e0002e0  vmmov mr0, r4
0005b8  1f028000  addli r4, zero, 64
0005bc  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005c0  b3910418  bfloat2float.rn r3, r9
0005c4  7e0002e0  vmmov mr0, r4
0005c8  1f020001  addli r4, zero, 128
0005cc  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005d0  b3110518  bfloat2float.rn r3, r10
0005d4  7e0002e0  vmmov mr0, r4
0005d8  1f020002  addli r4, zero, 256
0005dc  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005e0  b3910518  bfloat2float.rn r3, r11
0005e4  7e0002e0  vmmov mr0, r4
0005e8  1f020004  addli r4, zero, 512
0005ec  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005f0  b3110618  bfloat2float.rn r3, r12
0005f4  7e0002e0  vmmov mr0, r4
0005f8  1f020008  addli r4, zero, 1024
0005fc  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000600  b3910618  bfloat2float.rn r3, r13
000604  7e0002e0  vmmov mr0, r4
000608  1f020010  addli r4, zero, 2048
00060c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000610  b3110718  bfloat2float.rn r3, r14
000614  7e0002e0  vmmov mr0, r4
000618  1f020020  addli r4, zero, 4096
00061c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000620  b3910718  bfloat2float.rn r3, r15
000624  7e0002e0  vmmov mr0, r4
000628  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
00062c  9f010040  addli r3, zero, 8192
000630  7e8001e0  vmmov mr0, r3
000634  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000638  2b410000  lui r2, 4
00063c  7e0001e0  vmmov mr0, r2
000640  2b810000  lui r2, 8
000644  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000648  b3100818  bfloat2float.rn r1, r16
00064c  7e0001e0  vmmov mr0, r2
000650  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000654  eb300ff8  load.hu r1, -128(r30)
000658  6b312ff8  load.hu r2, -126(r30)
00065c  eb314ff8  load.hu r3, -124(r30)
000660  6b326ff8  load.hu r4, -122(r30)
000664  eb328ff8  load.hu r5, -120(r30)
000668  6b33aff8  load.hu r6, -118(r30)
00066c  eb33cff8  load.hu r7, -116(r30)
000670  6b34eff8  load.hu r8, -114(r30)
000674  eb340ff9  load.hu r9, -112(r30)
000678  6b352ff9  load.hu r10, -110(r30)
00067c  eb354ff9  load.hu r11, -108(r30)
000680  6b366ff9  load.hu r12, -106(r30)
000684  eb368ff9  load.hu r13, -104(r30)
000688  6b37aff9  load.hu r14, -102(r30)
00068c  eb37cff9  load.hu r15, -100(r30)
000690  6b38eff9  load.hu r16, -98(r30)
000694  b3900018  bfloat2float.rn r1, r1
000698  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00069c  b3100118  bfloat2float.rn r1, r2
0006a0  1f410000  addli r2, zero, 4
0006a4  7e0101e0  vmmov mr2, r2
0006a8  1f011000  addli r2, zero, 8
0006ac  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0006b0  b3900118  bfloat2float.rn r1, r3
0006b4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006b8  b3100218  bfloat2float.rn r1, r4
0006bc  7e0101e0  vmmov mr2, r2
0006c0  1f012000  addli r2, zero, 16
0006c4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006c8  b3900218  bfloat2float.rn r1, r5
0006cc  7e0101e0  vmmov mr2, r2
0006d0  1f014000  addli r2, zero, 32
0006d4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006d8  b3100318  bfloat2float.rn r1, r6
0006dc  7e0101e0  vmmov mr2, r2
0006e0  1f018000  addli r2, zero, 64
0006e4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006e8  b3900318  bfloat2float.rn r1, r7
0006ec  7e0101e0  vmmov mr2, r2
0006f0  1f010001  addli r2, zero, 128
0006f4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006f8  b3100418  bfloat2float.rn r1, r8
0006fc  7e0101e0  vmmov mr2, r2
000700  1f010002  addli r2, zero, 256
000704  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000708  b3900418  bfloat2float.rn r1, r9
00070c  7e0101e0  vmmov mr2, r2
000710  1f010004  addli r2, zero, 512
000714  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000718  b3100518  bfloat2float.rn r1, r10
00071c  7e0101e0  vmmov mr2, r2
000720  1f010008  addli r2, zero, 1024
000724  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000728  b3900518  bfloat2float.rn r1, r11
00072c  7e0101e0  vmmov mr2, r2
000730  1f010010  addli r2, zero, 2048
000734  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000738  b3100618  bfloat2float.rn r1, r12
00073c  7e0101e0  vmmov mr2, r2
000740  1f010020  addli r2, zero, 4096
000744  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000748  b3900618  bfloat2float.rn r1, r13
00074c  7e0101e0  vmmov mr2, r2
000750  1f010040  addli r2, zero, 8192
000754  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000758  b3100718  bfloat2float.rn r1, r14
00075c  7e0101e0  vmmov mr2, r2
000760  2b410000  lui r2, 4
000764  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000768  b3900718  bfloat2float.rn r1, r15
00076c  7e0101e0  vmmov mr2, r2
000770  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000774  b3100818  bfloat2float.rn r1, r16
000778  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
00077c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000780  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
000784  00a00000  mfence { lm }
000788  63078fff  loadli.w r14,  -64(r30)
00078c  634e8fff  loadli.w r28,  -60(r30)
000790  e30d9fff  loadli.w r27,  -56(r30)
000794  634d9fff  loadli.w r26,  -52(r30)
000798  e304afff  loadli.w r9,  -48(r30)
00079c  e340afff  loadli.w r1,  -44(r30)
0007a0  e302bfff  loadli.w r5,  -40(r30)
0007a4  e349bfff  loadli.w r19,  -36(r30)
0007a8  630bcfff  loadli.w r22,  -32(r30)
0007ac  e348cfff  loadli.w r17,  -28(r30)
0007b0  6305dfff  loadli.w r10,  -24(r30)
0007b4  e34cdfff  loadli.w r25,  -20(r30)
0007b8  e301efff  loadli.w r3,  -16(r30)
0007bc  97065701  and r13, r14, r21
0007c0  e7413ffe  storeli.w r3, -228(r30)
0007c4  6348efff  loadli.w r16,  -12(r30)
0007c8  e307ffff  loadli.w r15,  -8(r30)
0007cc  e343ffff  loadli.w r7,  -4(r30)
0007d0  1301d904  setlt.u r2, r18, r13
0007d4  3b300100  bneq r2, zero, 12
0007d8  6742effe  storeli.w r14, -220(r30)
0007dc  db010000  j 12
0007e0  17117701  or r2, r14, r23
0007e4  67422ffe  storeli.w r2, -220(r30)
0007e8  17025e01  and r4, r28, r21
0007ec  13014904  setlt.u r2, r18, r4
0007f0  3b300100  bneq r2, zero, 12
0007f4  9f010e00  addli r3, r28, 0
0007f8  5b010000  j 8
0007fc  97117e01  or r3, r28, r23
000800  17865d01  and r12, r27, r21
000804  1301c904  setlt.u r2, r18, r12
000808  3b300100  bneq r2, zero, 12
00080c  e742bfff  storeli.w r27, -212(r30)
000810  db010000  j 12
000814  17917d01  or r2, r27, r23
000818  e7422ffe  storeli.w r2, -212(r30)
00081c  97055d01  and r11, r26, r21
000820  e7023ffe  storeli.w r3, -216(r30)
000824  1301b904  setlt.u r2, r18, r11
000828  3b300100  bneq r2, zero, 12
00082c  9f010d00  addli r3, r26, 0
000830  5b010000  j 8
000834  97117d01  or r3, r26, r23
000838  17845401  and r8, r9, r21
00083c  13018904  setlt.u r2, r18, r8
000840  3b300100  bneq r2, zero, 12
000844  e70f9ffc  storeli.w r9, -264(r30)
000848  db010000  j 12
00084c  17917401  or r2, r9, r23
000850  e70f2ffc  storeli.w r2, -264(r30)
000854  17835001  and r6, r1, r21
000858  13016904  setlt.u r2, r18, r6
00085c  3b300100  bneq r2, zero, 12
000860  e74f1ffc  storeli.w r1, -260(r30)
000864  db010000  j 12
000868  17917001  or r2, r1, r23
00086c  e74f2ffc  storeli.w r2, -260(r30)
000870  67033ffe  storeli.w r3, -208(r30)
000874  97815201  and r3, r5, r21
000878  670a5ffc  storeli.w r5, -352(r30)
00087c  13013904  setlt.u r2, r18, r3
000880  37200100  beq r2, zero, 8
000884  97927201  or r5, r5, r23
000888  178a5901  and r20, r19, r21
00088c  e70a3ffd  storeli.w r19, -344(r30)
000890  13014905  setlt.u r2, r18, r20
000894  3b300100  bneq r2, zero, 12
000898  67403fff  storeli.w r19, -252(r30)
00089c  db010000  j 12
0008a0  17917901  or r2, r19, r23
0008a4  67402ffe  storeli.w r2, -252(r30)
0008a8  97095b01  and r19, r22, r21
0008ac  670b6ffd  storeli.w r22, -336(r30)
0008b0  13013905  setlt.u r2, r18, r19
0008b4  3b300100  bneq r2, zero, 12
0008b8  67006fff  storeli.w r22, -256(r30)
0008bc  db010000  j 12
0008c0  17117b01  or r2, r22, r23
0008c4  67002ffe  storeli.w r2, -256(r30)
0008c8  178b5801  and r22, r17, r21
0008cc  13016905  setlt.u r2, r18, r22
0008d0  3b300100  bneq r2, zero, 12
0008d4  e7001fff  storeli.w r17, -248(r30)
0008d8  db010000  j 12
0008dc  17917801  or r2, r17, r23
0008e0  e7002ffe  storeli.w r2, -248(r30)
0008e4  170c5501  and r24, r10, r21
0008e8  67027ffe  storeli.w r7, -224(r30)
0008ec  670caffc  storeli.w r10, -320(r30)
0008f0  e70b1ffd  storeli.w r17, -328(r30)
0008f4  13018905  setlt.u r2, r18, r24
0008f8  37200100  beq r2, zero, 8
0008fc  17157501  or r10, r10, r23
000900  978b5c01  and r23, r25, r21
000904  e3433ffe  loadli.w r7,  -228(r30)
000908  ab084000  lui r17, 1024
00090c  13017905  setlt.u r2, r18, r23
000910  1f890c00  addli r18, r25, 0
000914  ab0c807f  lui r25, 522240
000918  e70c2ffd  storeli.w r18, -312(r30)
00091c  3b300100  bneq r2, zero, 12
000920  e7402fff  storeli.w r18, -244(r30)
000924  db010000  j 12
000928  17111901  or r2, r18, r17
00092c  e7402ffe  storeli.w r2, -244(r30)
000930  17895301  and r18, r7, r21
000934  13812c05  setlt.u r2, r25, r18
000938  3b300100  bneq r2, zero, 12
00093c  67017ffe  storeli.w r7, -240(r30)
000940  db010000  j 12
000944  17911301  or r2, r7, r17
000948  67012ffe  storeli.w r2, -240(r30)
00094c  97035801  and r7, r16, r21
000950  670d0ffd  storeli.w r16, -304(r30)
000954  13817c04  setlt.u r2, r25, r7
000958  3b300100  bneq r2, zero, 12
00095c  67410fff  storeli.w r16, -236(r30)
000960  db010000  j 12
000964  17111801  or r2, r16, r17
000968  67412ffe  storeli.w r2, -236(r30)
00096c  17815701  and r2, r15, r21
000970  e74dfffc  storeli.w r15, -292(r30)
000974  13882c04  setlt.u r16, r25, r2
000978  37200800  beq r16, zero, 8
00097c  97971701  or r15, r15, r17
000980  e3084ffe  loadli.w r17,  -224(r30)
000984  978a5801  and r21, r17, r21
000988  13885c05  setlt.u r16, r25, r21
00098c  3b300800  bneq r16, zero, 12
000990  ab0c4000  lui r25, 1024
000994  db010000  j 12
000998  ab0c4000  lui r25, 1024
00099c  97989801  or r17, r17, r25
0009a0  63087ffe  loadli.w r16,  -200(r30)
0009a4  9306d804  setlt.u r13, r16, r13
0009a8  63486ffe  loadli.w r16,  -204(r30)
0009ac  bb800600  bneq r13, zero, 32
0009b0  9b460701  srli r13, r14, 16
0009b4  9b861600  andi r13, r13, 1
0009b8  8b16d710  add.s r13, r14, r13
0009bc  2b07ffff  lui r14, 1048560
0009c0  8b960611  add.s r13, r13, r16
0009c4  9786e600  and r13, r13, r14
0009c8  6742dffe  storeli.w r13, -220(r30)
0009cc  e3067ffe  loadli.w r13,  -200(r30)
0009d0  13824604  setlt.u r4, r13, r4
0009d4  bb000200  bneq r4, zero, 32
0009d8  1b420e01  srli r4, r28, 16
0009dc  2b07ffff  lui r14, 1048560
0009e0  1b021200  andi r4, r4, 1
0009e4  0b124e10  add.s r4, r28, r4
0009e8  0b120211  add.s r4, r4, r16
0009ec  1702e200  and r4, r4, r14
0009f0  e7024ffe  storeli.w r4, -216(r30)
0009f4  1382c604  setlt.u r4, r13, r12
0009f8  2b0effff  lui r28, 1048560
0009fc  3b700200  bneq r4, zero, 28
000a00  1bc20d01  srli r4, r27, 16
000a04  1b021200  andi r4, r4, 1
000a08  0b924d10  add.s r4, r27, r4
000a0c  0b120211  add.s r4, r4, r16
000a10  1702c201  and r4, r4, r28
000a14  e7424ffe  storeli.w r4, -212(r30)
000a18  1382b604  setlt.u r4, r13, r11
000a1c  63060ffe  loadli.w r12,  -256(r30)
000a20  1f070500  addli r14, r10, 0
000a24  3b700200  bneq r4, zero, 28
000a28  1b420d01  srli r4, r26, 16
000a2c  1b021200  andi r4, r4, 1
000a30  0b124d10  add.s r4, r26, r4
000a34  0b120211  add.s r4, r4, r16
000a38  1702c201  and r4, r4, r28
000a3c  67034ffe  storeli.w r4, -208(r30)
000a40  13828604  setlt.u r4, r13, r8
000a44  e3450ffe  loadli.w r11,  -252(r30)
000a48  e30dfffd  loadli.w r27,  -264(r30)
000a4c  1f850200  addli r10, r5, 0
000a50  3b600200  bneq r4, zero, 24
000a54  1bc20401  srli r4, r9, 16
000a58  1b021200  andi r4, r4, 1
000a5c  0b924410  add.s r4, r9, r4
000a60  0b120211  add.s r4, r4, r16
000a64  970dc201  and r27, r4, r28
000a68  13826604  setlt.u r4, r13, r6
000a6c  634dfffd  loadli.w r26,  -260(r30)
000a70  e3026ffe  loadli.w r5,  -208(r30)
000a74  3b600200  bneq r4, zero, 24
000a78  1bc20001  srli r4, r1, 16
000a7c  1b021200  andi r4, r4, 1
000a80  8b904010  add.s r1, r1, r4
000a84  8b900011  add.s r1, r1, r16
000a88  178dc001  and r26, r1, r28
000a8c  93803604  setlt.u r1, r13, r3
000a90  3bf00000  bneq r1, zero, 28
000a94  e3014ffd  loadli.w r3,  -352(r30)
000a98  9bc00101  srli r1, r3, 16
000a9c  9b801000  andi r1, r1, 1
000aa0  8b901110  add.s r1, r3, r1
000aa4  8b900011  add.s r1, r1, r16
000aa8  1785c001  and r10, r1, r28
000aac  93804605  setlt.u r1, r13, r20
000ab0  63425ffe  loadli.w r4,  -212(r30)
000ab4  e3015ffe  loadli.w r3,  -216(r30)
000ab8  3bf00000  bneq r1, zero, 28
000abc  63035ffd  loadli.w r6,  -344(r30)
000ac0  9b400301  srli r1, r6, 16
000ac4  9b801000  andi r1, r1, 1
000ac8  8b101310  add.s r1, r6, r1
000acc  8b900011  add.s r1, r1, r16
000ad0  9785c001  and r11, r1, r28
000ad4  93803605  setlt.u r1, r13, r19
000ad8  634a1ffe  loadli.w r20,  -244(r30)
000adc  3bf00000  bneq r1, zero, 28
000ae0  63036ffd  loadli.w r6,  -336(r30)
000ae4  9b400301  srli r1, r6, 16
000ae8  9b801000  andi r1, r1, 1
000aec  8b101310  add.s r1, r6, r1
000af0  8b900011  add.s r1, r1, r16
000af4  1786c001  and r12, r1, r28
000af8  93806605  setlt.u r1, r13, r22
000afc  e3492ffe  loadli.w r19,  -236(r30)
000b00  630b1ffe  loadli.w r22,  -248(r30)
000b04  b7830000  beq r1, zero, 224
000b08  93808605  setlt.u r1, r13, r24
000b0c  b7e30000  beq r1, zero, 248
000b10  93807605  setlt.u r1, r13, r23
000b14  3bf00000  bneq r1, zero, 28
000b18  63039ffd  loadli.w r6,  -312(r30)
000b1c  9b400301  srli r1, r6, 16
000b20  9b801000  andi r1, r1, 1
000b24  8b101310  add.s r1, r6, r1
000b28  8b900011  add.s r1, r1, r16
000b2c  178ac001  and r20, r1, r28
000b30  93802605  setlt.u r1, r13, r18
000b34  63092ffe  loadli.w r18,  -240(r30)
000b38  3bf00000  bneq r1, zero, 28
000b3c  63433ffe  loadli.w r6,  -228(r30)
000b40  9b400301  srli r1, r6, 16
000b44  9b801000  andi r1, r1, 1
000b48  8b101310  add.s r1, r6, r1
000b4c  8b900011  add.s r1, r1, r16
000b50  1789c001  and r18, r1, r28
000b54  93807604  setlt.u r1, r13, r7
000b58  ab04807f  lui r9, 522240
000b5c  3bf00000  bneq r1, zero, 28
000b60  6303affd  loadli.w r6,  -304(r30)
000b64  9b400301  srli r1, r6, 16
000b68  9b801000  andi r1, r1, 1
000b6c  8b101310  add.s r1, r6, r1
000b70  8b900011  add.s r1, r1, r16
000b74  9789c001  and r19, r1, r28
000b78  93802604  setlt.u r1, r13, r2
000b7c  3bf00000  bneq r1, zero, 28
000b80  6341bffd  loadli.w r2,  -292(r30)
000b84  9b400101  srli r1, r2, 16
000b88  9b801000  andi r1, r1, 1
000b8c  8b101110  add.s r1, r2, r1
000b90  8b900011  add.s r1, r1, r16
000b94  9787c001  and r15, r1, r28
000b98  93805605  setlt.u r1, r13, r21
000b9c  63414ffe  loadli.w r2,  -220(r30)
000ba0  9f8a0800  addli r21, r17, 0
000ba4  3bf00000  bneq r1, zero, 28
000ba8  63034ffe  loadli.w r6,  -224(r30)
000bac  9b400301  srli r1, r6, 16
000bb0  9b801000  andi r1, r1, 1
000bb4  8b101310  add.s r1, r6, r1
000bb8  8b900011  add.s r1, r1, r16
000bbc  978ac001  and r21, r1, r28
000bc0  63447ffe  loadli.w r8,  -196(r30)
000bc4  97008100  and r1, r2, r8
000bc8  93801404  setlt.u r1, r9, r1
000bcc  3bf10000  bneq r1, zero, 92
000bd0  9b400101  srli r1, r2, 16
000bd4  9b801000  andi r1, r1, 1
000bd8  8b101110  add.s r1, r2, r1
000bdc  8b900011  add.s r1, r1, r16
000be0  db090000  j 76
000be4  63037ffd  loadli.w r6,  -328(r30)
000be8  9b400301  srli r1, r6, 16
000bec  9b801000  andi r1, r1, 1
000bf0  8b101310  add.s r1, r6, r1
000bf4  8b900011  add.s r1, r1, r16
000bf8  178bc001  and r22, r1, r28
000bfc  93808605  setlt.u r1, r13, r24
000c00  3bcc00fe  bneq r1, zero, -240
000c04  63038ffd  loadli.w r6,  -320(r30)
000c08  9b400301  srli r1, r6, 16
000c0c  9b801000  andi r1, r1, 1
000c10  8b101310  add.s r1, r6, r1
000c14  8b900011  add.s r1, r1, r16
000c18  1787c001  and r14, r1, r28
000c1c  93807605  setlt.u r1, r13, r23
000c20  b7eb00fe  beq r1, zero, -264
000c24  dbe1ffff  j -244
000c28  97109101  or r1, r2, r25
000c2c  17818100  and r2, r3, r8
000c30  13812404  setlt.u r2, r9, r2
000c34  3b600100  bneq r2, zero, 24
000c38  1bc10101  srli r2, r3, 16
000c3c  1b011100  andi r2, r2, 1
000c40  0b912110  add.s r2, r3, r2
000c44  8b110111  add.s r3, r2, r16
000c48  5b010000  j 8
000c4c  97919101  or r3, r3, r25
000c50  17018200  and r2, r4, r8
000c54  13812404  setlt.u r2, r9, r2
000c58  3b600100  bneq r2, zero, 24
000c5c  1b410201  srli r2, r4, 16
000c60  1b011100  andi r2, r2, 1
000c64  0b112210  add.s r2, r4, r2
000c68  0b120111  add.s r4, r2, r16
000c6c  5b010000  j 8
000c70  17129201  or r4, r4, r25
000c74  17818200  and r2, r5, r8
000c78  13812404  setlt.u r2, r9, r2
000c7c  3b600100  bneq r2, zero, 24
000c80  1bc10201  srli r2, r5, 16
000c84  1b011100  andi r2, r2, 1
000c88  0b912210  add.s r2, r5, r2
000c8c  0b110111  add.s r2, r2, r16
000c90  5b010000  j 8
000c94  17919201  or r2, r5, r25
000c98  97828d00  and r5, r27, r8
000c9c  93825404  setlt.u r5, r9, r5
000ca0  3be00200  bneq r5, zero, 24
000ca4  9bc20d01  srli r5, r27, 16
000ca8  9b821200  andi r5, r5, 1
000cac  8b925d10  add.s r5, r27, r5
000cb0  0b930211  add.s r6, r5, r16
000cb4  5b010000  j 8
000cb8  17939d01  or r6, r27, r25
000cbc  97028d00  and r5, r26, r8
000cc0  93825404  setlt.u r5, r9, r5
000cc4  3be00200  bneq r5, zero, 24
000cc8  9b420d01  srli r5, r26, 16
000ccc  9b821200  andi r5, r5, 1
000cd0  8b125d10  add.s r5, r26, r5
000cd4  8b930211  add.s r7, r5, r16
000cd8  5b010000  j 8
000cdc  97139d01  or r7, r26, r25
000ce0  97028500  and r5, r10, r8
000ce4  93825404  setlt.u r5, r9, r5
000ce8  3be00200  bneq r5, zero, 24
000cec  9b420501  srli r5, r10, 16
000cf0  9b821200  andi r5, r5, 1
000cf4  8b125510  add.s r5, r10, r5
000cf8  0b950211  add.s r10, r5, r16
000cfc  5b010000  j 8
000d00  17159501  or r10, r10, r25
000d04  97828500  and r5, r11, r8
000d08  93825404  setlt.u r5, r9, r5
000d0c  3be00200  bneq r5, zero, 24
000d10  9bc20501  srli r5, r11, 16
000d14  9b821200  andi r5, r5, 1
000d18  8b925510  add.s r5, r11, r5
000d1c  8b950211  add.s r11, r5, r16
000d20  5b010000  j 8
000d24  97959501  or r11, r11, r25
000d28  97028600  and r5, r12, r8
000d2c  93825404  setlt.u r5, r9, r5
000d30  3be00200  bneq r5, zero, 24
000d34  9b420601  srli r5, r12, 16
000d38  9b821200  andi r5, r5, 1
000d3c  8b125610  add.s r5, r12, r5
000d40  0b960211  add.s r12, r5, r16
000d44  5b010000  j 8
000d48  17169601  or r12, r12, r25
000d4c  97028b00  and r5, r22, r8
000d50  93825404  setlt.u r5, r9, r5
000d54  3be00200  bneq r5, zero, 24
000d58  9b420b01  srli r5, r22, 16
000d5c  9b821200  andi r5, r5, 1
000d60  8b125b10  add.s r5, r22, r5
000d64  8b960211  add.s r13, r5, r16
000d68  5b010000  j 8
000d6c  97169b01  or r13, r22, r25
000d70  97028700  and r5, r14, r8
000d74  93825404  setlt.u r5, r9, r5
000d78  3be00200  bneq r5, zero, 24
000d7c  9b420701  srli r5, r14, 16
000d80  9b821200  andi r5, r5, 1
000d84  8b125710  add.s r5, r14, r5
000d88  0b970211  add.s r14, r5, r16
000d8c  5b010000  j 8
000d90  17179701  or r14, r14, r25
000d94  97028a00  and r5, r20, r8
000d98  93825404  setlt.u r5, r9, r5
000d9c  3be00200  bneq r5, zero, 24
000da0  9b420a01  srli r5, r20, 16
000da4  9b821200  andi r5, r5, 1
000da8  8b125a10  add.s r5, r20, r5
000dac  8b980211  add.s r17, r5, r16
000db0  5b010000  j 8
000db4  97189a01  or r17, r20, r25
000db8  97028900  and r5, r18, r8
000dbc  2b0a807f  lui r20, 522240
000dc0  93825404  setlt.u r5, r9, r5
000dc4  3be00200  bneq r5, zero, 24
000dc8  9b420901  srli r5, r18, 16
000dcc  9b821200  andi r5, r5, 1
000dd0  8b125910  add.s r5, r18, r5
000dd4  0b990211  add.s r18, r5, r16
000dd8  5b010000  j 8
000ddc  17199901  or r18, r18, r25
000de0  97828900  and r5, r19, r8
000de4  93025a04  setlt.u r5, r20, r5
000de8  3be00200  bneq r5, zero, 24
000dec  9bc20901  srli r5, r19, 16
000df0  9b821200  andi r5, r5, 1
000df4  8b925910  add.s r5, r19, r5
000df8  8b990211  add.s r19, r5, r16
000dfc  5b010000  j 8
000e00  97999901  or r19, r19, r25
000e04  97828700  and r5, r15, r8
000e08  93025a04  setlt.u r5, r20, r5
000e0c  3be00200  bneq r5, zero, 24
000e10  9bc20701  srli r5, r15, 16
000e14  9b821200  andi r5, r5, 1
000e18  8b925710  add.s r5, r15, r5
000e1c  8b970211  add.s r15, r5, r16
000e20  5b010000  j 8
000e24  97979701  or r15, r15, r25
000e28  97828a00  and r5, r21, r8
000e2c  93025a04  setlt.u r5, r20, r5
000e30  3be00200  bneq r5, zero, 24
000e34  9bc20a01  srli r5, r21, 16
000e38  9b821200  andi r5, r5, 1
000e3c  8b925a10  add.s r5, r21, r5
000e40  0b980211  add.s r16, r5, r16
000e44  5b010000  j 8
000e48  17989a01  or r16, r21, r25
000e4c  9702c101  and r5, r2, r28
000e50  2b01ffff  lui r2, 1048560
000e54  178bc601  and r22, r13, r28
000e58  9780c001  and r1, r1, r28
000e5c  9781c101  and r3, r3, r28
000e60  1702c201  and r4, r4, r28
000e64  1704c301  and r8, r6, r28
000e68  9784c301  and r9, r7, r28
000e6c  1705c501  and r10, r10, r28
000e70  9785c501  and r11, r11, r28
000e74  170ac601  and r20, r12, r28
000e78  170cc701  and r24, r14, r28
000e7c  9786c801  and r13, r17, r28
000e80  970dc901  and r27, r18, r28
000e84  178d2700  and r26, r15, r2
000e88  e3073ffe  loadli.w r15,  -232(r30)
000e8c  178e2900  and r28, r19, r2
000e90  970a2800  and r21, r16, r2
000e94  1f018000  addli r2, zero, 64
000e98  3fb02700  blt.s r15, r2, 12
000e9c  1f010000  addli r2, zero, 0
000ea0  5b080000  j 64
000ea4  0be13010  add.f.rn r2, r1, r3
000ea8  0b614110  add.f.rn r2, r2, r4
000eac  0b615110  add.f.rn r2, r2, r5
000eb0  0b618110  add.f.rn r2, r2, r8
000eb4  0b619110  add.f.rn r2, r2, r9
000eb8  0b61a110  add.f.rn r2, r2, r10
000ebc  0b61b110  add.f.rn r2, r2, r11
000ec0  0b614111  add.f.rn r2, r2, r20
000ec4  0b616111  add.f.rn r2, r2, r22
000ec8  0b618111  add.f.rn r2, r2, r24
000ecc  0b61d110  add.f.rn r2, r2, r13
000ed0  0b61b111  add.f.rn r2, r2, r27
000ed4  0b61c111  add.f.rn r2, r2, r28
000ed8  0b61a111  add.f.rn r2, r2, r26
000edc  0b615111  add.f.rn r2, r2, r21
000ee0  63431ffd  loadli.w r6,  -372(r30)
000ee4  63480ffd  loadli.w r16,  -380(r30)
000ee8  2b09807f  lui r18, 522240
000eec  73602300  stores.w r2, 0(r6)
000ef0  00a00300  mfence { lm, sm, gm }
000ef4  80210804  csr_set csr3, r16
000ef8  00d00100  sync_group
000efc  6341effd  loadli.w r2,  -268(r30)
000f00  3b280100  bneq r2, zero, 520
000f04  63462ffd  loadli.w r12,  -364(r30)
000f08  6f410600  loads.w r2, 0(r12)
000f0c  ef434600  loads.w r7, 4(r12)
000f10  6f438600  loads.w r6, 8(r12)
000f14  0b617110  add.f.rn r2, r2, r7
000f18  ef43c600  loads.w r7, 12(r12)
000f1c  0b616110  add.f.rn r2, r2, r6
000f20  6f430601  loads.w r6, 16(r12)
000f24  0b617110  add.f.rn r2, r2, r7
000f28  ef434601  loads.w r7, 20(r12)
000f2c  0b616110  add.f.rn r2, r2, r6
000f30  6f438601  loads.w r6, 24(r12)
000f34  0b617110  add.f.rn r2, r2, r7
000f38  ef43c601  loads.w r7, 28(r12)
000f3c  0b616110  add.f.rn r2, r2, r6
000f40  6f430602  loads.w r6, 32(r12)
000f44  0b617110  add.f.rn r2, r2, r7
000f48  ef434602  loads.w r7, 36(r12)
000f4c  0b616110  add.f.rn r2, r2, r6
000f50  6f438602  loads.w r6, 40(r12)
000f54  0b617110  add.f.rn r2, r2, r7
000f58  ef43c602  loads.w r7, 44(r12)
000f5c  0b616110  add.f.rn r2, r2, r6
000f60  6f430603  loads.w r6, 48(r12)
000f64  0b617110  add.f.rn r2, r2, r7
000f68  ef434603  loads.w r7, 52(r12)
000f6c  0b616110  add.f.rn r2, r2, r6
000f70  6f438603  loads.w r6, 56(r12)
000f74  0b617110  add.f.rn r2, r2, r7
000f78  ef43c603  loads.w r7, 60(r12)
000f7c  0b616110  add.f.rn r2, r2, r6
000f80  6f430604  loads.w r6, 64(r12)
000f84  0b617110  add.f.rn r2, r2, r7
000f88  ef434604  loads.w r7, 68(r12)
000f8c  0b616110  add.f.rn r2, r2, r6
000f90  6f438604  loads.w r6, 72(r12)
000f94  0b617110  add.f.rn r2, r2, r7
000f98  ef43c604  loads.w r7, 76(r12)
000f9c  0b616110  add.f.rn r2, r2, r6
000fa0  6f430605  loads.w r6, 80(r12)
000fa4  0b617110  add.f.rn r2, r2, r7
000fa8  ef434605  loads.w r7, 84(r12)
000fac  0b616110  add.f.rn r2, r2, r6
000fb0  6f438605  loads.w r6, 88(r12)
000fb4  0b617110  add.f.rn r2, r2, r7
000fb8  ef43c605  loads.w r7, 92(r12)
000fbc  0b616110  add.f.rn r2, r2, r6
000fc0  6f430606  loads.w r6, 96(r12)
000fc4  0b617110  add.f.rn r2, r2, r7
000fc8  ef434606  loads.w r7, 100(r12)
000fcc  0b616110  add.f.rn r2, r2, r6
000fd0  6f438606  loads.w r6, 104(r12)
000fd4  0b617110  add.f.rn r2, r2, r7
000fd8  ef43c606  loads.w r7, 108(r12)
000fdc  0b616110  add.f.rn r2, r2, r6
000fe0  6f430607  loads.w r6, 112(r12)
000fe4  0b617110  add.f.rn r2, r2, r7
000fe8  ef434607  loads.w r7, 116(r12)
000fec  0b616110  add.f.rn r2, r2, r6
000ff0  6f438607  loads.w r6, 120(r12)
000ff4  0b617110  add.f.rn r2, r2, r7
000ff8  ef43c607  loads.w r7, 124(r12)
000ffc  0b616110  add.f.rn r2, r2, r6
001000  6f430608  loads.w r6, 128(r12)
001004  0b617110  add.f.rn r2, r2, r7
001008  ef434608  loads.w r7, 132(r12)
00100c  0b616110  add.f.rn r2, r2, r6
001010  6f438608  loads.w r6, 136(r12)
001014  0b617110  add.f.rn r2, r2, r7
001018  ef43c608  loads.w r7, 140(r12)
00101c  0b616110  add.f.rn r2, r2, r6
001020  6f430609  loads.w r6, 144(r12)
001024  0b617110  add.f.rn r2, r2, r7
001028  ef434609  loads.w r7, 148(r12)
00102c  0b616110  add.f.rn r2, r2, r6
001030  6f438609  loads.w r6, 152(r12)
001034  0b617110  add.f.rn r2, r2, r7
001038  ef43c609  loads.w r7, 156(r12)
00103c  0b616110  add.f.rn r2, r2, r6
001040  6f43060a  loads.w r6, 160(r12)
001044  0b617110  add.f.rn r2, r2, r7
001048  ef43460a  loads.w r7, 164(r12)
00104c  0b616110  add.f.rn r2, r2, r6
001050  6f43860a  loads.w r6, 168(r12)
001054  0b617110  add.f.rn r2, r2, r7
001058  ef43c60a  loads.w r7, 172(r12)
00105c  0b616110  add.f.rn r2, r2, r6
001060  6f43060b  loads.w r6, 176(r12)
001064  0b617110  add.f.rn r2, r2, r7
001068  ef43460b  loads.w r7, 180(r12)
00106c  0b616110  add.f.rn r2, r2, r6
001070  6f43860b  loads.w r6, 184(r12)
001074  0b617110  add.f.rn r2, r2, r7
001078  ef43c60b  loads.w r7, 188(r12)
00107c  0b616110  add.f.rn r2, r2, r6
001080  6f43060c  loads.w r6, 192(r12)
001084  0b617110  add.f.rn r2, r2, r7
001088  ef43460c  loads.w r7, 196(r12)
00108c  0b616110  add.f.rn r2, r2, r6
001090  6f43860c  loads.w r6, 200(r12)
001094  0b617110  add.f.rn r2, r2, r7
001098  ef43c60c  loads.w r7, 204(r12)
00109c  0b616110  add.f.rn r2, r2, r6
0010a0  6f43060d  loads.w r6, 208(r12)
0010a4  0b617110  add.f.rn r2, r2, r7
0010a8  ef43460d  loads.w r7, 212(r12)
0010ac  0b616110  add.f.rn r2, r2, r6
0010b0  6f43860d  loads.w r6, 216(r12)
0010b4  0b617110  add.f.rn r2, r2, r7
0010b8  ef43c60d  loads.w r7, 220(r12)
0010bc  0b616110  add.f.rn r2, r2, r6
0010c0  6f43060e  loads.w r6, 224(r12)
0010c4  0b617110  add.f.rn r2, r2, r7
0010c8  ef43460e  loads.w r7, 228(r12)
0010cc  0b616110  add.f.rn r2, r2, r6
0010d0  6f43860e  loads.w r6, 232(r12)
0010d4  0b617110  add.f.rn r2, r2, r7
0010d8  ef43c60e  loads.w r7, 236(r12)
0010dc  0b616110  add.f.rn r2, r2, r6
0010e0  6f43060f  loads.w r6, 240(r12)
0010e4  0b617110  add.f.rn r2, r2, r7
0010e8  ef43460f  loads.w r7, 244(r12)
0010ec  0b616110  add.f.rn r2, r2, r6
0010f0  6f43860f  loads.w r6, 248(r12)
0010f4  0b617110  add.f.rn r2, r2, r7
0010f8  ef43c60f  loads.w r7, 252(r12)
0010fc  0b616110  add.f.rn r2, r2, r6
001100  0b617110  add.f.rn r2, r2, r7
001104  73602600  stores.w r2, 0(r12)
001108  00a00300  mfence { lm, sm, gm }
00110c  80210804  csr_set csr3, r16
001110  00d00100  sync_group
001114  63412ffd  loadli.w r2,  -364(r30)
001118  2b03803a  lui r6, 239616
00111c  6f410100  loads.w r2, 0(r2)
001120  0b616120  mul.f.rn r2, r2, r6
001124  0be72018  sub.f.rn r14, r1, r2
001128  8b682218  sub.f.rn r17, r4, r2
00112c  0be32218  sub.f.rn r6, r5, r2
001130  0b662418  sub.f.rn r12, r8, r2
001134  8be02418  sub.f.rn r1, r9, r2
001138  0b622518  sub.f.rn r4, r10, r2
00113c  8be42518  sub.f.rn r9, r11, r2
001140  8b622a18  sub.f.rn r5, r20, r2
001144  0be52618  sub.f.rn r10, r13, r2
001148  8be92118  sub.f.rn r19, r3, r2
00114c  8b6b2b18  sub.f.rn r23, r22, r2
001150  8b652c18  sub.f.rn r11, r24, r2
001154  0bea2d18  sub.f.rn r20, r27, r2
001158  8b662e18  sub.f.rn r13, r28, r2
00115c  0b642d18  sub.f.rn r8, r26, r2
001160  8be32a18  sub.f.rn r7, r21, r2
001164  1f018000  addli r2, zero, 64
001168  3fb02700  blt.s r15, r2, 12
00116c  1f010000  addli r2, zero, 0
001170  5b100000  j 128
001174  0b61e720  mul.f.rn r2, r14, r14
001178  8be13921  mul.f.rn r3, r19, r19
00117c  0b613110  add.f.rn r2, r2, r3
001180  8be11821  mul.f.rn r3, r17, r17
001184  0be12110  add.f.rn r2, r3, r2
001188  8b616320  mul.f.rn r3, r6, r6
00118c  0be12110  add.f.rn r2, r3, r2
001190  8b61c620  mul.f.rn r3, r12, r12
001194  0be12110  add.f.rn r2, r3, r2
001198  8be11020  mul.f.rn r3, r1, r1
00119c  0be12110  add.f.rn r2, r3, r2
0011a0  8b614220  mul.f.rn r3, r4, r4
0011a4  0be12110  add.f.rn r2, r3, r2
0011a8  8be19420  mul.f.rn r3, r9, r9
0011ac  0be12110  add.f.rn r2, r3, r2
0011b0  8be15220  mul.f.rn r3, r5, r5
0011b4  0be12110  add.f.rn r2, r3, r2
0011b8  8be17b21  mul.f.rn r3, r23, r23
0011bc  0be12110  add.f.rn r2, r3, r2
0011c0  8be1b520  mul.f.rn r3, r11, r11
0011c4  0be12110  add.f.rn r2, r3, r2
0011c8  8b61a520  mul.f.rn r3, r10, r10
0011cc  0be12110  add.f.rn r2, r3, r2
0011d0  8b614a21  mul.f.rn r3, r20, r20
0011d4  0be12110  add.f.rn r2, r3, r2
0011d8  8be1d620  mul.f.rn r3, r13, r13
0011dc  0be12110  add.f.rn r2, r3, r2
0011e0  8b618420  mul.f.rn r3, r8, r8
0011e4  0be12110  add.f.rn r2, r3, r2
0011e8  8be17320  mul.f.rn r3, r7, r7
0011ec  0be12110  add.f.rn r2, r3, r2
0011f0  e341fffc  loadli.w r3,  -388(r30)
0011f4  e74fdffc  storeli.w r13, -260(r30)
0011f8  e70f8ffc  storeli.w r8, -264(r30)
0011fc  e74d7ffc  storeli.w r7, -292(r30)
001200  e3477ffe  loadli.w r15,  -196(r30)
001204  73e02100  stores.w r2, 0(r3)
001208  00a00300  mfence { lm, sm, gm }
00120c  80210804  csr_set csr3, r16
001210  00d00100  sync_group
001214  6341effd  loadli.w r2,  -268(r30)
001218  3b280100  bneq r2, zero, 520
00121c  63042ffd  loadli.w r8,  -368(r30)
001220  6f410400  loads.w r2, 0(r8)
001224  ef434400  loads.w r7, 4(r8)
001228  ef418400  loads.w r3, 8(r8)
00122c  0b617110  add.f.rn r2, r2, r7
001230  ef43c400  loads.w r7, 12(r8)
001234  0b613110  add.f.rn r2, r2, r3
001238  ef410401  loads.w r3, 16(r8)
00123c  0b617110  add.f.rn r2, r2, r7
001240  ef434401  loads.w r7, 20(r8)
001244  0b613110  add.f.rn r2, r2, r3
001248  ef418401  loads.w r3, 24(r8)
00124c  0b617110  add.f.rn r2, r2, r7
001250  ef43c401  loads.w r7, 28(r8)
001254  0b613110  add.f.rn r2, r2, r3
001258  ef410402  loads.w r3, 32(r8)
00125c  0b617110  add.f.rn r2, r2, r7
001260  ef434402  loads.w r7, 36(r8)
001264  0b613110  add.f.rn r2, r2, r3
001268  ef418402  loads.w r3, 40(r8)
00126c  0b617110  add.f.rn r2, r2, r7
001270  ef43c402  loads.w r7, 44(r8)
001274  0b613110  add.f.rn r2, r2, r3
001278  ef410403  loads.w r3, 48(r8)
00127c  0b617110  add.f.rn r2, r2, r7
001280  ef434403  loads.w r7, 52(r8)
001284  0b613110  add.f.rn r2, r2, r3
001288  ef418403  loads.w r3, 56(r8)
00128c  0b617110  add.f.rn r2, r2, r7
001290  ef43c403  loads.w r7, 60(r8)
001294  0b613110  add.f.rn r2, r2, r3
001298  ef410404  loads.w r3, 64(r8)
00129c  0b617110  add.f.rn r2, r2, r7
0012a0  ef434404  loads.w r7, 68(r8)
0012a4  0b613110  add.f.rn r2, r2, r3
0012a8  ef418404  loads.w r3, 72(r8)
0012ac  0b617110  add.f.rn r2, r2, r7
0012b0  ef43c404  loads.w r7, 76(r8)
0012b4  0b613110  add.f.rn r2, r2, r3
0012b8  ef410405  loads.w r3, 80(r8)
0012bc  0b617110  add.f.rn r2, r2, r7
0012c0  ef434405  loads.w r7, 84(r8)
0012c4  0b613110  add.f.rn r2, r2, r3
0012c8  ef418405  loads.w r3, 88(r8)
0012cc  0b617110  add.f.rn r2, r2, r7
0012d0  ef43c405  loads.w r7, 92(r8)
0012d4  0b613110  add.f.rn r2, r2, r3
0012d8  ef410406  loads.w r3, 96(r8)
0012dc  0b617110  add.f.rn r2, r2, r7
0012e0  ef434406  loads.w r7, 100(r8)
0012e4  0b613110  add.f.rn r2, r2, r3
0012e8  ef418406  loads.w r3, 104(r8)
0012ec  0b617110  add.f.rn r2, r2, r7
0012f0  ef43c406  loads.w r7, 108(r8)
0012f4  0b613110  add.f.rn r2, r2, r3
0012f8  ef410407  loads.w r3, 112(r8)
0012fc  0b617110  add.f.rn r2, r2, r7
001300  ef434407  loads.w r7, 116(r8)
001304  0b613110  add.f.rn r2, r2, r3
001308  ef418407  loads.w r3, 120(r8)
00130c  0b617110  add.f.rn r2, r2, r7
001310  ef43c407  loads.w r7, 124(r8)
001314  0b613110  add.f.rn r2, r2, r3
001318  ef410408  loads.w r3, 128(r8)
00131c  0b617110  add.f.rn r2, r2, r7
001320  ef434408  loads.w r7, 132(r8)
001324  0b613110  add.f.rn r2, r2, r3
001328  ef418408  loads.w r3, 136(r8)
00132c  0b617110  add.f.rn r2, r2, r7
001330  ef43c408  loads.w r7, 140(r8)
001334  0b613110  add.f.rn r2, r2, r3
001338  ef410409  loads.w r3, 144(r8)
00133c  0b617110  add.f.rn r2, r2, r7
001340  ef434409  loads.w r7, 148(r8)
001344  0b613110  add.f.rn r2, r2, r3
001348  ef418409  loads.w r3, 152(r8)
00134c  0b617110  add.f.rn r2, r2, r7
001350  ef43c409  loads.w r7, 156(r8)
001354  0b613110  add.f.rn r2, r2, r3
001358  ef41040a  loads.w r3, 160(r8)
00135c  0b617110  add.f.rn r2, r2, r7
001360  ef43440a  loads.w r7, 164(r8)
001364  0b613110  add.f.rn r2, r2, r3
001368  ef41840a  loads.w r3, 168(r8)
00136c  0b617110  add.f.rn r2, r2, r7
001370  ef43c40a  loads.w r7, 172(r8)
001374  0b613110  add.f.rn r2, r2, r3
001378  ef41040b  loads.w r3, 176(r8)
00137c  0b617110  add.f.rn r2, r2, r7
001380  ef43440b  loads.w r7, 180(r8)
001384  0b613110  add.f.rn r2, r2, r3
001388  ef41840b  loads.w r3, 184(r8)
00138c  0b617110  add.f.rn r2, r2, r7
001390  ef43c40b  loads.w r7, 188(r8)
001394  0b613110  add.f.rn r2, r2, r3
001398  ef41040c  loads.w r3, 192(r8)
00139c  0b617110  add.f.rn r2, r2, r7
0013a0  ef43440c  loads.w r7, 196(r8)
0013a4  0b613110  add.f.rn r2, r2, r3
0013a8  ef41840c  loads.w r3, 200(r8)
0013ac  0b617110  add.f.rn r2, r2, r7
0013b0  ef43c40c  loads.w r7, 204(r8)
0013b4  0b613110  add.f.rn r2, r2, r3
0013b8  ef41040d  loads.w r3, 208(r8)
0013bc  0b617110  add.f.rn r2, r2, r7
0013c0  ef43440d  loads.w r7, 212(r8)
0013c4  0b613110  add.f.rn r2, r2, r3
0013c8  ef41840d  loads.w r3, 216(r8)
0013cc  0b617110  add.f.rn r2, r2, r7
0013d0  ef43c40d  loads.w r7, 220(r8)
0013d4  0b613110  add.f.rn r2, r2, r3
0013d8  ef41040e  loads.w r3, 224(r8)
0013dc  0b617110  add.f.rn r2, r2, r7
0013e0  ef43440e  loads.w r7, 228(r8)
0013e4  0b613110  add.f.rn r2, r2, r3
0013e8  ef41840e  loads.w r3, 232(r8)
0013ec  0b617110  add.f.rn r2, r2, r7
0013f0  ef43c40e  loads.w r7, 236(r8)
0013f4  0b613110  add.f.rn r2, r2, r3
0013f8  ef41040f  loads.w r3, 240(r8)
0013fc  0b617110  add.f.rn r2, r2, r7
001400  ef43440f  loads.w r7, 244(r8)
001404  0b613110  add.f.rn r2, r2, r3
001408  ef41840f  loads.w r3, 248(r8)
00140c  0b617110  add.f.rn r2, r2, r7
001410  ef43c40f  loads.w r7, 252(r8)
001414  0b613110  add.f.rn r2, r2, r3
001418  0b617110  add.f.rn r2, r2, r7
00141c  73602400  stores.w r2, 0(r8)
001420  00a00300  mfence { lm, sm, gm }
001424  80210804  csr_set csr3, r16
001428  00d00100  sync_group
00142c  63012ffd  loadli.w r2,  -368(r30)
001430  ab01803a  lui r3, 239616
001434  6f410100  loads.w r2, 0(r2)
001438  0b613120  mul.f.rn r2, r2, r3
00143c  e3415ffc  loadli.w r3,  -468(r30)
001440  0b613110  add.f.rn r2, r2, r3
001444  ab01803f  lui r3, 260096
001448  0f010108  sqrt.f.rn r2, r2
00144c  0f812118  div.f.rn r2, r3, r2
001450  8b662720  mul.f.rn r13, r14, r2
001454  1787f600  and r14, r13, r15
001458  9301e904  setlt.u r3, r18, r14
00145c  3bb00100  bneq r3, zero, 12
001460  6703dffe  storeli.w r13, -208(r30)
001464  db010000  j 12
001468  97919601  or r3, r13, r25
00146c  67033ffe  storeli.w r3, -208(r30)
001470  0bee2920  mul.f.rn r28, r19, r2
001474  9701fe00  and r3, r28, r15
001478  93033904  setlt.u r7, r18, r3
00147c  e70b3ffc  storeli.w r3, -328(r30)
001480  3bb00300  bneq r7, zero, 12
001484  e742cfff  storeli.w r28, -212(r30)
001488  db010000  j 12
00148c  97139e01  or r7, r28, r25
001490  e7427ffe  storeli.w r7, -212(r30)
001494  8be82820  mul.f.rn r17, r17, r2
001498  9f0a0a00  addli r21, r20, 0
00149c  1784f800  and r8, r17, r15
0014a0  93038904  setlt.u r7, r18, r8
0014a4  3bb00300  bneq r7, zero, 12
0014a8  e7021fff  storeli.w r17, -216(r30)
0014ac  db010000  j 12
0014b0  97939801  or r7, r17, r25
0014b4  e7027ffe  storeli.w r7, -216(r30)
0014b8  0b632320  mul.f.rn r6, r6, r2
0014bc  170af300  and r20, r6, r15
0014c0  93034905  setlt.u r7, r18, r20
0014c4  3bb00300  bneq r7, zero, 12
0014c8  67426ffe  storeli.w r6, -220(r30)
0014cc  db010000  j 12
0014d0  97139301  or r7, r6, r25
0014d4  67427ffe  storeli.w r7, -220(r30)
0014d8  0b662620  mul.f.rn r12, r12, r2
0014dc  170cf600  and r24, r12, r15
0014e0  93038905  setlt.u r7, r18, r24
0014e4  3bb00300  bneq r7, zero, 12
0014e8  6702cffe  storeli.w r12, -224(r30)
0014ec  db010000  j 12
0014f0  97139601  or r7, r12, r25
0014f4  67027ffe  storeli.w r7, -224(r30)
0014f8  8bed2020  mul.f.rn r27, r1, r2
0014fc  9783fd00  and r7, r27, r15
001500  93007904  setlt.u r1, r18, r7
001504  3bb00000  bneq r1, zero, 12
001508  e741bfff  storeli.w r27, -228(r30)
00150c  db010000  j 12
001510  97909d01  or r1, r27, r25
001514  e7411ffe  storeli.w r1, -228(r30)
001518  0b622220  mul.f.rn r4, r4, r2
00151c  170bf200  and r22, r4, r15
001520  93006905  setlt.u r1, r18, r22
001524  3bb00000  bneq r1, zero, 12
001528  e7014ffe  storeli.w r4, -232(r30)
00152c  db010000  j 12
001530  97109201  or r1, r4, r25
001534  e7011ffe  storeli.w r1, -232(r30)
001538  8be42420  mul.f.rn r9, r9, r2
00153c  2b084000  lui r16, 1024
001540  ab0c807f  lui r25, 522240
001544  9780f400  and r1, r9, r15
001548  670b1ffc  storeli.w r1, -336(r30)
00154c  93001904  setlt.u r1, r18, r1
001550  3bb00000  bneq r1, zero, 12
001554  67419ffe  storeli.w r9, -236(r30)
001558  db010000  j 12
00155c  97900401  or r1, r9, r16
001560  67411ffe  storeli.w r1, -236(r30)
001564  8be22220  mul.f.rn r5, r5, r2
001568  1789f200  and r18, r5, r15
00156c  93802c05  setlt.u r1, r25, r18
001570  3bb00000  bneq r1, zero, 12
001574  67015ffe  storeli.w r5, -240(r30)
001578  db010000  j 12
00157c  97900201  or r1, r5, r16
001580  67011ffe  storeli.w r1, -240(r30)
001584  0bed2b20  mul.f.rn r26, r23, r2
001588  970bfd00  and r23, r26, r15
00158c  93807c05  setlt.u r1, r25, r23
001590  3bb00000  bneq r1, zero, 12
001594  e740afff  storeli.w r26, -244(r30)
001598  db010000  j 12
00159c  97100d01  or r1, r26, r16
0015a0  e7401ffe  storeli.w r1, -244(r30)
0015a4  8be02520  mul.f.rn r1, r11, r2
0015a8  9789f000  and r19, r1, r15
0015ac  93853c05  setlt.u r11, r25, r19
0015b0  3bb00500  bneq r11, zero, 12
0015b4  e7001ffe  storeli.w r1, -248(r30)
0015b8  db010000  j 12
0015bc  97950001  or r11, r1, r16
0015c0  e700bffe  storeli.w r11, -248(r30)
0015c4  0b652520  mul.f.rn r10, r10, r2
0015c8  9701f500  and r3, r10, r15
0015cc  93853c04  setlt.u r11, r25, r3
0015d0  e70a3ffc  storeli.w r3, -344(r30)
0015d4  3bb00500  bneq r11, zero, 12
0015d8  6740affe  storeli.w r10, -252(r30)
0015dc  db010000  j 12
0015e0  97150501  or r11, r10, r16
0015e4  6740bffe  storeli.w r11, -252(r30)
0015e8  8bea2a20  mul.f.rn r21, r21, r2
0015ec  e3457ffe  loadli.w r11,  -196(r30)
0015f0  9781ba00  and r3, r21, r11
0015f4  93853c04  setlt.u r11, r25, r3
0015f8  670a3ffc  storeli.w r3, -352(r30)
0015fc  3bb00500  bneq r11, zero, 12
001600  67005fff  storeli.w r21, -256(r30)
001604  db010000  j 12
001608  97950a01  or r11, r21, r16
00160c  6700bffe  storeli.w r11, -256(r30)
001610  e345fffd  loadli.w r11,  -260(r30)
001614  e3477ffe  loadli.w r15,  -196(r30)
001618  8be52520  mul.f.rn r11, r11, r2
00161c  9781f500  and r3, r11, r15
001620  93873c04  setlt.u r15, r25, r3
001624  670c3ffc  storeli.w r3, -320(r30)
001628  3bb00700  bneq r15, zero, 12
00162c  e74fbffc  storeli.w r11, -260(r30)
001630  db010000  j 12
001634  97970501  or r15, r11, r16
001638  e74ffffc  storeli.w r15, -260(r30)
00163c  e307fffd  loadli.w r15,  -264(r30)
001640  8be12720  mul.f.rn r3, r15, r2
001644  e3477ffe  loadli.w r15,  -196(r30)
001648  9787f100  and r15, r3, r15
00164c  e7093ffc  storeli.w r3, -360(r30)
001650  e70cfffc  storeli.w r15, -312(r30)
001654  9387fc04  setlt.u r15, r25, r15
001658  3bb00700  bneq r15, zero, 12
00165c  e70f3ffc  storeli.w r3, -264(r30)
001660  db010000  j 12
001664  97970101  or r15, r3, r16
001668  e70ffffc  storeli.w r15, -264(r30)
00166c  e347bffd  loadli.w r15,  -292(r30)
001670  8be72720  mul.f.rn r15, r15, r2
001674  63417ffe  loadli.w r2,  -196(r30)
001678  17812700  and r2, r15, r2
00167c  e749fffc  storeli.w r15, -356(r30)
001680  670d2ffc  storeli.w r2, -304(r30)
001684  13812c04  setlt.u r2, r25, r2
001688  3b300100  bneq r2, zero, 12
00168c  e74dfffc  storeli.w r15, -292(r30)
001690  5b020000  j 16
001694  2b014000  lui r2, 1024
001698  17912700  or r2, r15, r2
00169c  e74d2ffc  storeli.w r2, -292(r30)
0016a0  e3077ffe  loadli.w r15,  -200(r30)
0016a4  e34c6ffe  loadli.w r25,  -204(r30)
0016a8  1381e704  setlt.u r2, r15, r14
0016ac  1f870700  addli r14, r15, 0
0016b0  bb000100  bneq r2, zero, 32
0016b4  1bc10601  srli r2, r13, 16
0016b8  1b011100  andi r2, r2, 1
0016bc  0b912610  add.s r2, r13, r2
0016c0  ab06ffff  lui r13, 1048560
0016c4  0b119111  add.s r2, r2, r25
0016c8  1701d100  and r2, r2, r13
0016cc  67032ffe  storeli.w r2, -208(r30)
0016d0  63017ffd  loadli.w r2,  -328(r30)
0016d4  13012704  setlt.u r2, r14, r2
0016d8  bb000100  bneq r2, zero, 32
0016dc  1b410e01  srli r2, r28, 16
0016e0  ab01ffff  lui r3, 1048560
0016e4  1b011100  andi r2, r2, 1
0016e8  0b112e10  add.s r2, r28, r2
0016ec  0b119111  add.s r2, r2, r25
0016f0  17013100  and r2, r2, r3
0016f4  e7422ffe  storeli.w r2, -212(r30)
0016f8  13018704  setlt.u r2, r14, r8
0016fc  2b0effff  lui r28, 1048560
001700  373b0100  beq r2, zero, 716
001704  13014705  setlt.u r2, r14, r20
001708  b71b0100  beq r2, zero, 740
00170c  13018705  setlt.u r2, r14, r24
001710  b77b0100  beq r2, zero, 764
001714  13017704  setlt.u r2, r14, r7
001718  375c0100  beq r2, zero, 788
00171c  13016705  setlt.u r2, r14, r22
001720  3b700100  bneq r2, zero, 28
001724  1b410201  srli r2, r4, 16
001728  1b011100  andi r2, r2, 1
00172c  0b112210  add.s r2, r4, r2
001730  0b119111  add.s r2, r2, r25
001734  1701c101  and r2, r2, r28
001738  e7012ffe  storeli.w r2, -232(r30)
00173c  63016ffd  loadli.w r2,  -336(r30)
001740  13012704  setlt.u r2, r14, r2
001744  373c0100  beq r2, zero, 780
001748  13012705  setlt.u r2, r14, r18
00174c  b71c0100  beq r2, zero, 804
001750  13017705  setlt.u r2, r14, r23
001754  b77c0100  beq r2, zero, 828
001758  13013705  setlt.u r2, r14, r19
00175c  3b700100  bneq r2, zero, 28
001760  1bc10001  srli r2, r1, 16
001764  1b011100  andi r2, r2, 1
001768  8b902010  add.s r1, r1, r2
00176c  8b909011  add.s r1, r1, r25
001770  9780c001  and r1, r1, r28
001774  e7001ffe  storeli.w r1, -248(r30)
001778  e3005ffd  loadli.w r1,  -344(r30)
00177c  93001704  setlt.u r1, r14, r1
001780  3bf00000  bneq r1, zero, 28
001784  9b400501  srli r1, r10, 16
001788  9b801000  andi r1, r1, 1
00178c  8b101510  add.s r1, r10, r1
001790  8b909011  add.s r1, r1, r25
001794  9780c001  and r1, r1, r28
001798  67401ffe  storeli.w r1, -252(r30)
00179c  e3004ffd  loadli.w r1,  -352(r30)
0017a0  93001704  setlt.u r1, r14, r1
0017a4  3bf00000  bneq r1, zero, 28
0017a8  9bc00a01  srli r1, r21, 16
0017ac  9b801000  andi r1, r1, 1
0017b0  8b901a10  add.s r1, r21, r1
0017b4  8b909011  add.s r1, r1, r25
0017b8  9780c001  and r1, r1, r28
0017bc  67001ffe  storeli.w r1, -256(r30)
0017c0  e300effc  loadli.w r1,  -400(r30)
0017c4  e304cffd  loadli.w r9,  -288(r30)
0017c8  63017ffc  loadli.w r2,  -456(r30)
0017cc  0b939010  add.s r6, r1, r9
0017d0  e340dffc  loadli.w r1,  -404(r30)
0017d4  0b119110  add.s r2, r2, r9
0017d8  8b929010  add.s r5, r1, r9
0017dc  e300dffc  loadli.w r1,  -408(r30)
0017e0  8b939010  add.s r7, r1, r9
0017e4  e340cffc  loadli.w r1,  -412(r30)
0017e8  8b969010  add.s r13, r1, r9
0017ec  e300cffc  loadli.w r1,  -416(r30)
0017f0  0b969010  add.s r12, r1, r9
0017f4  e340bffc  loadli.w r1,  -420(r30)
0017f8  8b979010  add.s r15, r1, r9
0017fc  e300bffc  loadli.w r1,  -424(r30)
001800  0b999010  add.s r18, r1, r9
001804  e340affc  loadli.w r1,  -428(r30)
001808  8b989010  add.s r17, r1, r9
00180c  e300affc  loadli.w r1,  -432(r30)
001810  0b929010  add.s r4, r1, r9
001814  e3008ffd  loadli.w r1,  -320(r30)
001818  13041704  setlt.u r8, r14, r1
00181c  e3409ffc  loadli.w r1,  -436(r30)
001820  0b9a9010  add.s r20, r1, r9
001824  e3009ffc  loadli.w r1,  -440(r30)
001828  8b999010  add.s r19, r1, r9
00182c  e3408ffc  loadli.w r1,  -444(r30)
001830  0b9d9010  add.s r26, r1, r9
001834  e3008ffc  loadli.w r1,  -448(r30)
001838  8b919010  add.s r3, r1, r9
00183c  e3407ffc  loadli.w r1,  -452(r30)
001840  8b909010  add.s r1, r1, r9
001844  3b700400  bneq r8, zero, 28
001848  1bc40501  srli r8, r11, 16
00184c  1b041400  andi r8, r8, 1
001850  0b948510  add.s r8, r11, r8
001854  0b149411  add.s r8, r8, r25
001858  1704c401  and r8, r8, r28
00185c  e74f8ffc  storeli.w r8, -260(r30)
001860  33140328  sext_int2long r[9:10], r6
001864  9f150000  addli r11, zero, 1
001868  b3920228  sext_int2long r[6:7], r5
00186c  1734b402  sll.d r[9:10], r[9:10], r11
001870  97b2b202  sll.d r[6:7], r[6:7], r11
001874  73308fee  store.d r[9:10], -288(r30)
001878  b3940328  sext_int2long r[10:11], r7
00187c  73305fec  store.d r[6:7], -320(r30)
001880  e3039ffd  loadli.w r7,  -312(r30)
001884  97b2b402  sll.d r[6:7], r[10:11], r11
001888  33140128  sext_int2long r[9:10], r2
00188c  73345fea  store.d r[6:7], -344(r30)
001890  b3920628  sext_int2long r[6:7], r13
001894  b3160628  sext_int2long r[14:15], r12
001898  97b2b202  sll.d r[6:7], r[6:7], r11
00189c  97b6b602  sll.d r[14:15], r[14:15], r11
0018a0  73305fea  store.d r[6:7], -352(r30)
0018a4  b3920728  sext_int2long r[6:7], r15
0018a8  b3170928  sext_int2long r[16:17], r18
0018ac  97bab202  sll.d r[22:23], r[6:7], r11
0018b0  b3920828  sext_int2long r[6:7], r17
0018b4  97bbb702  sll.d r[24:25], r[16:17], r11
0018b8  b3170228  sext_int2long r[16:17], r4
0018bc  97bdb202  sll.d r[28:29], r[6:7], r11
0018c0  63037ffe  loadli.w r6,  -200(r30)
0018c4  33120a28  sext_int2long r[5:6], r20
0018c8  b3990928  sext_int2long r[20:21], r19
0018cc  97b7b702  sll.d r[16:17], r[16:17], r11
0018d0  9738b202  sll.d r[18:19], r[5:6], r11
0018d4  33120d28  sext_int2long r[5:6], r26
0018d8  b39c0128  sext_int2long r[26:27], r3
0018dc  97b9b902  sll.d r[20:21], r[20:21], r11
0018e0  93037304  setlt.u r7, r6, r7
0018e4  9731b202  sll.d r[4:5], r[5:6], r11
0018e8  b3920028  sext_int2long r[6:7], r1
0018ec  97bcbc02  sll.d r[26:27], r[26:27], r11
0018f0  97b0b202  sll.d r[2:3], r[6:7], r11
0018f4  9732b402  sll.d r[6:7], r[9:10], r11
0018f8  bba00300  bneq r7, zero, 40
0018fc  63043ffd  loadli.w r8,  -360(r30)
001900  9b430401  srli r7, r8, 16
001904  9b831300  andi r7, r7, 1
001908  8b137410  add.s r7, r8, r7
00190c  63446ffe  loadli.w r8,  -204(r30)
001910  8b938310  add.s r7, r7, r8
001914  2b04ffff  lui r8, 1048560
001918  97838300  and r7, r7, r8
00191c  e70f7ffc  storeli.w r7, -264(r30)
001920  eb530f01  load.d r[8:9], 16(r30)
001924  eb548fee  load.d r[10:11], -280(r30)
001928  eb550fea  load.d r[12:13], -352(r30)
00192c  8ba49310  add.ul r[10:11], r[8:9], r[10:11]
001930  8baa5311  add.ul r[22:23], r[8:9], r[22:23]
001934  8ba13310  add.ul r[4:5], r[8:9], r[4:5]
001938  8ba01310  add.ul r[2:3], r[8:9], r[2:3]
00193c  8ba5b310  add.ul r[12:13], r[8:9], r[12:13]
001940  8ba6d310  add.ul r[14:15], r[8:9], r[14:15]
001944  8ba81311  add.ul r[18:19], r[8:9], r[18:19]
001948  8ba93311  add.ul r[20:21], r[8:9], r[20:21]
00194c  733c9fea  store.d r[10:11], -328(r30)
001950  eb540fee  load.d r[10:11], -288(r30)
001954  73345fed  store.d r[22:23], -312(r30)
001958  8baa7311  add.ul r[22:23], r[8:9], r[24:25]
00195c  8babb311  add.ul r[24:25], r[8:9], r[28:29]
001960  8badf310  add.ul r[28:29], r[8:9], r[16:17]
001964  6308affd  loadli.w r16,  -304(r30)
001968  e3077ffe  loadli.w r15,  -200(r30)
00196c  73303fee  store.d r[4:5], -288(r30)
001970  73381fec  store.d r[2:3], -304(r30)
001974  8ba05310  add.ul r[2:3], r[8:9], r[6:7]
001978  8ba19311  add.ul r[4:5], r[8:9], r[26:27]
00197c  e342bffd  loadli.w r5,  -292(r30)
001980  73341fee  store.d r[2:3], -280(r30)
001984  8ba49310  add.ul r[10:11], r[8:9], r[10:11]
001988  93870705  setlt.u r15, r15, r16
00198c  73389fea  store.d r[10:11], -336(r30)
001990  eb540fec  load.d r[10:11], -320(r30)
001994  8ba49310  add.ul r[10:11], r[8:9], r[10:11]
001998  73309fec  store.d r[10:11], -320(r30)
00199c  eb548fea  load.d r[10:11], -344(r30)
0019a0  8ba49310  add.ul r[10:11], r[8:9], r[10:11]
0019a4  e3436ffe  loadli.w r7,  -204(r30)
0019a8  3be307f4  bneq r15, zero, -5928
0019ac  63413ffd  loadli.w r2,  -356(r30)
0019b0  9b400101  srli r1, r2, 16
0019b4  9b801000  andi r1, r1, 1
0019b8  8b101110  add.s r1, r2, r1
0019bc  2b01ffff  lui r2, 1048560
0019c0  8b907010  add.s r1, r1, r7
0019c4  97822000  and r5, r1, r2
0019c8  5b17fdff  j -5960
0019cc  1bc10801  srli r2, r17, 16
0019d0  1b011100  andi r2, r2, 1
0019d4  0b912810  add.s r2, r17, r2
0019d8  0b119111  add.s r2, r2, r25
0019dc  1701c101  and r2, r2, r28
0019e0  e7022ffe  storeli.w r2, -216(r30)
0019e4  13014705  setlt.u r2, r14, r20
0019e8  bb1401fe  bneq r2, zero, -732
0019ec  1b410301  srli r2, r6, 16
0019f0  1b011100  andi r2, r2, 1
0019f4  0b112310  add.s r2, r6, r2
0019f8  0b119111  add.s r2, r2, r25
0019fc  1701c101  and r2, r2, r28
001a00  67422ffe  storeli.w r2, -220(r30)
001a04  13018705  setlt.u r2, r14, r24
001a08  3b3401fe  bneq r2, zero, -756
001a0c  1b410601  srli r2, r12, 16
001a10  1b011100  andi r2, r2, 1
001a14  0b112610  add.s r2, r12, r2
001a18  0b119111  add.s r2, r2, r25
001a1c  1701c101  and r2, r2, r28
001a20  67022ffe  storeli.w r2, -224(r30)
001a24  13017704  setlt.u r2, r14, r7
001a28  bb5301fe  bneq r2, zero, -780
001a2c  1bc10d01  srli r2, r27, 16
001a30  1b011100  andi r2, r2, 1
001a34  0b912d10  add.s r2, r27, r2
001a38  0b119111  add.s r2, r2, r25
001a3c  1701c101  and r2, r2, r28
001a40  e7412ffe  storeli.w r2, -228(r30)
001a44  13016705  setlt.u r2, r14, r22
001a48  377301fe  beq r2, zero, -804
001a4c  5b9effff  j -784
001a50  1bc10401  srli r2, r9, 16
001a54  1b011100  andi r2, r2, 1
001a58  0b912410  add.s r2, r9, r2
001a5c  0b119111  add.s r2, r2, r25
001a60  1701c101  and r2, r2, r28
001a64  67412ffe  storeli.w r2, -236(r30)
001a68  13012705  setlt.u r2, r14, r18
001a6c  bb1301fe  bneq r2, zero, -796
001a70  1bc10201  srli r2, r5, 16
001a74  1b011100  andi r2, r2, 1
001a78  0b912210  add.s r2, r5, r2
001a7c  0b119111  add.s r2, r2, r25
001a80  1701c101  and r2, r2, r28
001a84  67012ffe  storeli.w r2, -240(r30)
001a88  13017705  setlt.u r2, r14, r23
001a8c  3b3301fe  bneq r2, zero, -820
001a90  1b410d01  srli r2, r26, 16
001a94  1b011100  andi r2, r2, 1
001a98  0b112d10  add.s r2, r26, r2
001a9c  0b119111  add.s r2, r2, r25
001aa0  1701c101  and r2, r2, r28
001aa4  e7402ffe  storeli.w r2, -244(r30)
001aa8  13013705  setlt.u r2, r14, r19
001aac  b75201fe  beq r2, zero, -844
001ab0  5b99ffff  j -824
001ab4  9f0e0ffc  addli sp, r30, -512
001ab8  9f8e0e04  addli sp, sp, 512
001abc  00a00300  mfence { lm, sm, gm }
001ac0  00100000  exit
001ac4  00100000  exit
001ac8  00100000  exit
001acc  00100000  exit
001ad0  00100000  exit
001ad4  00100000  exit
001ad8  00100000  exit
001adc  00100000  exit
001ae0  00100000  exit
001ae4  00100000  exit
001ae8  00100000  exit
001aec  00100000  exit
001af0  00100000  exit
001af4  00100000  exit
001af8  00100000  exit
001afc  00100000  exit
001b00  00100000  exit
001b04  00100000  exit
001b08  00100000  exit
001b0c  00100000  exit
001b10  00100000  exit
001b14  00100000  exit
001b18  00100000  exit
001b1c  00100000  exit
001b20  00100000  exit
001b24  00100000  exit
001b28  00100000  exit
001b2c  00100000  exit
001b30  00100000  exit
001b34  00100000  exit
001b38  00100000  exit
001b3c  00100000  exit
001b40  00100000  exit
001b44  00100000  exit
001b48  00100000  exit
001b4c  00100000  exit
001b50  00100000  exit
001b54  00100000  exit
001b58  00100000  exit
001b5c  00100000  exit
001b60  00100000  exit
001b64  00100000  exit
001b68  00100000  exit
001b6c  00100000  exit
001b70  00100000  exit
001b74  00100000  exit
001b78  00100000  exit
001b7c  00100000  exit
001b80  00100000  exit
001b84  00100000  exit
001b88  00100000  exit
001b8c  00100000  exit
001b90  00100000  exit
001b94  00100000  exit
001b98  00100000  exit
001b9c  00100000  exit
001ba0  00100000  exit
001ba4  00100000  exit
001ba8  00100000  exit
001bac  00100000  exit
001bb0  00100000  exit
001bb4  00100000  exit
001bb8  00100000  exit
001bbc  00100000  exit
001bc0  00100000  exit
001bc4  00100000  exit
001bc8  00100000  exit
001bcc  00100000  exit
001bd0  00100000  exit
001bd4  00100000  exit
001bd8  00100000  exit
001bdc  00100000  exit
001be0  00100000  exit
001be4  00100000  exit
001be8  00100000  exit
001bec  00100000  exit
001bf0  00100000  exit
001bf4  00100000  exit
001bf8  00100000  exit
001bfc  00100000  exit
001c00  00100000  exit
001c04  00100000  exit
001c08  00100000  exit
001c0c  00100000  exit
001c10  00100000  exit
001c14  00100000  exit
001c18  00100000  exit
001c1c  00100000  exit
001c20  00100000  exit
001c24  00100000  exit
001c28  00100000  exit
001c2c  00100000  exit
001c30  00100000  exit
001c34  00100000  exit
001c38  00100000  exit
001c3c  00100000  exit
001c40  00100000  exit
001c44  00100000  exit
001c48  00100000  exit
001c4c  00100000  exit
001c50  00100000  exit
001c54  00100000  exit
001c58  00100000  exit
001c5c  00100000  exit
001c60  00100000  exit
001c64  00100000  exit
001c68  00100000  exit
001c6c  00100000  exit
001c70  00100000  exit
001c74  00100000  exit
001c78  00100000  exit
001c7c  00100000  exit
001c80  00100000  exit
001c84  00100000  exit
001c88  00100000  exit
001c8c  00100000  exit
001c90  00100000  exit
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
