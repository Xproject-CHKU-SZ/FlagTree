; SHA-256 c2b51e0a0f919afdb36b3e776428d85fda1060802c3ec205fd5d2d7e52daa5aa
; P800 Cluster · XTDK LLVM 19 · 1860 / 1860 words decoded
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
000124  67098ffc  storeli.w r8, -368(r30)
000128  73600400  stores.w zero, 0(r8)
00012c  0b126220  mul.s r4, r4, r6
000130  00a00300  mfence { lm, sm, gm }
000134  80a10504  csr_set csr3, r11
000138  00d00100  sync_group
00013c  e7484ffc  storeli.w r4, -372(r30)
000140  4b06920c  ble.s r4, r9, 6528
000144  1f028000  addli r4, zero, 64
000148  e3032ffd  loadli.w r7,  -368(r30)
00014c  1f150000  addli r10, zero, 1
000150  eb528f00  load.d r[6:7], 8(r30)
000154  2b0a807f  lui r20, 522240
000158  2b0b4000  lui r22, 1024
00015c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000160  e708bffc  storeli.w r11, -376(r30)
000164  0b924030  div.s r4, r1, r4
000168  9f832308  addli r7, r7, 1040
00016c  67087ffc  storeli.w r7, -384(r30)
000170  80d30002  load_param_i r7, 1
000174  e7077ffc  storeli.w r7, -392(r30)
000178  67484ffc  storeli.w r4, -380(r30)
00017c  1b326200  slli r4, r4, 6
000180  0b924018  sub.s r4, r1, r4
000184  9b80f003  andi r1, r1, 63
000188  1b324200  slli r4, r4, 4
00018c  674f1ffc  storeli.w r1, -268(r30)
000190  9b131200  ori r7, r4, 1
000194  e7474ffc  storeli.w r4, -388(r30)
000198  67477ffc  storeli.w r7, -396(r30)
00019c  9b132200  ori r7, r4, 2
0001a0  67077ffc  storeli.w r7, -400(r30)
0001a4  9b133200  ori r7, r4, 3
0001a8  e7467ffc  storeli.w r7, -404(r30)
0001ac  9b134200  ori r7, r4, 4
0001b0  e7067ffc  storeli.w r7, -408(r30)
0001b4  9b135200  ori r7, r4, 5
0001b8  67467ffc  storeli.w r7, -412(r30)
0001bc  9b136200  ori r7, r4, 6
0001c0  67067ffc  storeli.w r7, -416(r30)
0001c4  9b137200  ori r7, r4, 7
0001c8  e7457ffc  storeli.w r7, -420(r30)
0001cc  9b138200  ori r7, r4, 8
0001d0  e7057ffc  storeli.w r7, -424(r30)
0001d4  9b139200  ori r7, r4, 9
0001d8  67457ffc  storeli.w r7, -428(r30)
0001dc  9b13a200  ori r7, r4, 10
0001e0  67057ffc  storeli.w r7, -432(r30)
0001e4  9b13b200  ori r7, r4, 11
0001e8  e7447ffc  storeli.w r7, -436(r30)
0001ec  9b13c200  ori r7, r4, 12
0001f0  e7047ffc  storeli.w r7, -440(r30)
0001f4  9b13d200  ori r7, r4, 13
0001f8  67447ffc  storeli.w r7, -444(r30)
0001fc  9b13e200  ori r7, r4, 14
000200  67047ffc  storeli.w r7, -448(r30)
000204  9b13f200  ori r7, r4, 15
000208  e7437ffc  storeli.w r7, -452(r30)
00020c  b3130228  sext_int2long r[8:9], r4
000210  2bf2ffff  lui r4, 1048575
000214  1b1202f0  ori r4, r4, 3840
000218  97b3a302  sll.d r[8:9], r[8:9], r10
00021c  97814100  and r3, r3, r4
000220  0ba27210  add.ul r[5:6], r[6:7], r[8:9]
000224  1f038ffe  addli r6, r30, -192
000228  9f034000  addli r7, zero, 32
00022c  1f040fff  addli r8, r30, -128
000230  0b912110  add.s r2, r3, r2
000234  73384fe2  store.d r[5:6], -464(r30)
000238  9f002108  addli r1, r2, 1040
00023c  e7092ffc  storeli.w r2, -360(r30)
000240  2bf1ff7f  lui r2, 524287
000244  67491ffc  storeli.w r1, -364(r30)
000248  ab700000  lui r1, 7
00024c  9b11f1ff  ori r3, r2, 4095
000250  2b11833a  lui r2, 239665
000254  9b90f0ff  ori r1, r1, 4095
000258  e7033ffe  storeli.w r3, -200(r30)
00025c  67031ffe  storeli.w r1, -208(r30)
000260  abf07f7f  lui r1, 522239
000264  9b90f0ff  ori r1, r1, 4095
000268  e7431ffe  storeli.w r1, -196(r30)
00026c  9b10f126  ori r1, r2, 623
000270  e7421ffc  storeli.w r1, -468(r30)
000274  9f200000  addli r1, zero, 2
000278  fe8100e0  vmmov mr3, r1
00027c  db410000  j 524
000280  e3405ffe  loadli.w r1,  -212(r30)
000284  63015ffe  loadli.w r2,  -216(r30)
000288  9f230000  addli r7, zero, 2
00028c  1f040fff  addli r8, r30, -128
000290  1f630400  addli r6, r8, 6
000294  b3900000  float2bfloat.rn r1, r1
000298  33110100  float2bfloat.rn r2, r2
00029c  73101ff8  store.h r1, -128(r30)
0002a0  e3404ffe  loadli.w r1,  -220(r30)
0002a4  73112ff8  store.h r2, -126(r30)
0002a8  63014ffe  loadli.w r2,  -224(r30)
0002ac  b3900000  float2bfloat.rn r1, r1
0002b0  33110100  float2bfloat.rn r2, r2
0002b4  73121ff8  store.h r1, -124(r30)
0002b8  e3403ffe  loadli.w r1,  -228(r30)
0002bc  73132ff8  store.h r2, -122(r30)
0002c0  63013ffe  loadli.w r2,  -232(r30)
0002c4  b3900000  float2bfloat.rn r1, r1
0002c8  33110100  float2bfloat.rn r2, r2
0002cc  73141ff8  store.h r1, -120(r30)
0002d0  e3402ffe  loadli.w r1,  -236(r30)
0002d4  73152ff8  store.h r2, -118(r30)
0002d8  63012ffe  loadli.w r2,  -240(r30)
0002dc  b3900000  float2bfloat.rn r1, r1
0002e0  33110100  float2bfloat.rn r2, r2
0002e4  73161ff8  store.h r1, -116(r30)
0002e8  e3401ffe  loadli.w r1,  -244(r30)
0002ec  73172ff8  store.h r2, -114(r30)
0002f0  63011ffe  loadli.w r2,  -248(r30)
0002f4  b3900000  float2bfloat.rn r1, r1
0002f8  33110100  float2bfloat.rn r2, r2
0002fc  73181ff8  store.h r1, -112(r30)
000300  e3400ffe  loadli.w r1,  -252(r30)
000304  73192ff8  store.h r2, -110(r30)
000308  63010ffe  loadli.w r2,  -256(r30)
00030c  b3900000  float2bfloat.rn r1, r1
000310  33110100  float2bfloat.rn r2, r2
000314  731a1ff8  store.h r1, -108(r30)
000318  e3406ffe  loadli.w r1,  -204(r30)
00031c  731b2ff8  store.h r2, -106(r30)
000320  6341fffd  loadli.w r2,  -260(r30)
000324  b3900000  float2bfloat.rn r1, r1
000328  33110100  float2bfloat.rn r2, r2
00032c  731c1ff8  store.h r1, -104(r30)
000330  e300fffd  loadli.w r1,  -264(r30)
000334  731d2ff8  store.h r2, -102(r30)
000338  33910200  float2bfloat.rn r2, r5
00033c  9f220400  addli r5, r8, 2
000340  731f2ff8  store.h r2, -98(r30)
000344  2b0100f0  lui r2, 983040
000348  b3900000  float2bfloat.rn r1, r1
00034c  17912300  or r2, r7, r2
000350  731e1ff8  store.h r1, -100(r30)
000354  ab0000f0  lui r1, 983040
000358  00a00000  mfence { lm }
00035c  eb570fec  load.d r[16:17], -320(r30)
000360  97901300  or r1, r7, r1
000364  ffb08700  s_lm2gm r1, r8, 0(r[16:17])
000368  eb578feb  load.d r[16:17], -328(r30)
00036c  9f400400  addli r1, r8, 4
000370  7fb15700  s_lm2gm r2, r5, 0(r[16:17])
000374  2b0100f0  lui r2, 983040
000378  eb570fed  load.d r[16:17], -304(r30)
00037c  ab0200f0  lui r5, 983040
000380  17912300  or r2, r7, r2
000384  97925300  or r5, r7, r5
000388  7fb11700  s_lm2gm r2, r1, 0(r[16:17])
00038c  eb508fec  load.d r[2:3], -312(r30)
000390  ffb26000  s_lm2gm r5, r6, 0(r[2:3])
000394  2b0300f0  lui r6, 983040
000398  ab0200f0  lui r5, 983040
00039c  1f211400  addli r2, r8, 10
0003a0  9f001400  addli r1, r8, 8
0003a4  17936300  or r6, r7, r6
0003a8  97925300  or r5, r7, r5
0003ac  7fb32600  s_lm2gm r6, r2, 0(r[14:15])
0003b0  2b0300f0  lui r6, 983040
0003b4  ffb21500  s_lm2gm r5, r1, 0(r[12:13])
0003b8  ab0200f0  lui r5, 983040
0003bc  1f611400  addli r2, r8, 14
0003c0  9f401400  addli r1, r8, 12
0003c4  eb550fee  load.d r[12:13], -288(r30)
0003c8  17936300  or r6, r7, r6
0003cc  97925300  or r5, r7, r5
0003d0  7fb32b00  s_lm2gm r6, r2, 0(r[24:25])
0003d4  2b0300f0  lui r6, 983040
0003d8  ffb21900  s_lm2gm r5, r1, 0(r[20:21])
0003dc  ab0200f0  lui r5, 983040
0003e0  1f212400  addli r2, r8, 18
0003e4  9f002400  addli r1, r8, 16
0003e8  2b0a807f  lui r20, 522240
0003ec  17936300  or r6, r7, r6
0003f0  97925300  or r5, r7, r5
0003f4  7fb32d00  s_lm2gm r6, r2, 0(r[28:29])
0003f8  2b0300f0  lui r6, 983040
0003fc  ffb21500  s_lm2gm r5, r1, 0(r[12:13])
000400  ab0200f0  lui r5, 983040
000404  1f612400  addli r2, r8, 22
000408  9f402400  addli r1, r8, 20
00040c  eb558fee  load.d r[12:13], -280(r30)
000410  17936300  or r6, r7, r6
000414  97925300  or r5, r7, r5
000418  7fb32a00  s_lm2gm r6, r2, 0(r[22:23])
00041c  2b0300f0  lui r6, 983040
000420  ffb21800  s_lm2gm r5, r1, 0(r[18:19])
000424  ab0200f0  lui r5, 983040
000428  1f213400  addli r2, r8, 26
00042c  9f003400  addli r1, r8, 24
000430  2b0b4000  lui r22, 1024
000434  17936300  or r6, r7, r6
000438  97925300  or r5, r7, r5
00043c  7fb32100  s_lm2gm r6, r2, 0(r[4:5])
000440  ab0100f0  lui r3, 983040
000444  2b0200f0  lui r4, 983040
000448  ffb21500  s_lm2gm r5, r1, 0(r[12:13])
00044c  9f403400  addli r1, r8, 28
000450  1f613400  addli r2, r8, 30
000454  1f038ffe  addli r6, r30, -192
000458  97913300  or r3, r7, r3
00045c  17924300  or r4, r7, r4
000460  9f034000  addli r7, zero, 32
000464  ffb11400  s_lm2gm r3, r1, 0(r[10:11])
000468  e304effd  loadli.w r9,  -272(r30)
00046c  e300fffc  loadli.w r1,  -392(r30)
000470  7fb22c00  s_lm2gm r4, r2, 0(r[26:27])
000474  00a00000  mfence { lm }
000478  8b941410  add.s r9, r9, r1
00047c  e3401ffd  loadli.w r1,  -372(r30)
000480  3fa01400  blt.s r9, r1, 8
000484  dbc70200  j 5692
000488  9f000000  addli r1, zero, 0
00048c  0b111310  add.s r2, r6, r1
000490  9fc00000  addli r1, r1, 4
000494  73100100  store.h zero, 0(r2)
000498  73110100  store.h zero, 2(r2)
00049c  00a00000  mfence { lm }
0004a0  bbbf70fe  bneq r1, r7, -20
0004a4  e3005f00  loadli.w r1,  40(r30)
0004a8  63414f00  loadli.w r2,  36(r30)
0004ac  9f120000  addli r5, zero, 1
0004b0  670f9ffc  storeli.w r9, -272(r30)
0004b4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0004b8  9f180000  addli r17, zero, 1
0004bc  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0004c0  7e8108e0  vmmov mr2, r17
0004c4  8b901430  div.s r1, r9, r1
0004c8  8b902030  div.s r1, r1, r2
0004cc  63410ffd  loadli.w r2,  -380(r30)
0004d0  8b902010  add.s r1, r1, r2
0004d4  1bb1a000  slli r2, r1, 10
0004d8  e7411ffe  storeli.w r1, -228(r30)
0004dc  e340fffc  loadli.w r1,  -388(r30)
0004e0  670e2ffc  storeli.w r2, -288(r30)
0004e4  8b101110  add.s r1, r2, r1
0004e8  2b0100f0  lui r2, 983040
0004ec  b3910028  sext_int2long r[4:5], r1
0004f0  17912300  or r2, r7, r2
0004f4  ab0000f0  lui r1, 983040
0004f8  97b45102  sll.d r[10:11], r[4:5], r5
0004fc  eb510f00  load.d r[4:5], 0(r30)
000500  97901300  or r1, r7, r1
000504  73349fee  store.d r[10:11], -280(r30)
000508  8ba19110  add.ul r[4:5], r[4:5], r[10:11]
00050c  7fa16100  l_gm2lm r2, r6, 0(r[4:5])
000510  6b510fe3  load.d r[3:4], -464(r30)
000514  ff208100  l_gm2lm r1, r8, 0(r[3:4])
000518  00a00000  mfence { lm }
00051c  eb310ff4  load.hu r3, -192(r30)
000520  6b322ff4  load.hu r4, -190(r30)
000524  6b31aff5  load.hu r2, -166(r30)
000528  eb30cff5  load.hu r1, -164(r30)
00052c  eb324ff4  load.hu r5, -188(r30)
000530  6b336ff4  load.hu r6, -186(r30)
000534  eb338ff4  load.hu r7, -184(r30)
000538  6b34aff4  load.hu r8, -182(r30)
00053c  eb34cff4  load.hu r9, -180(r30)
000540  6b35eff4  load.hu r10, -178(r30)
000544  eb350ff5  load.hu r11, -176(r30)
000548  6b362ff5  load.hu r12, -174(r30)
00054c  eb364ff5  load.hu r13, -172(r30)
000550  6b376ff5  load.hu r14, -170(r30)
000554  eb378ff5  load.hu r15, -168(r30)
000558  6b38eff5  load.hu r16, -162(r30)
00055c  b3910118  bfloat2float.rn r3, r3
000560  33110118  bfloat2float.rn r2, r2
000564  b3900018  bfloat2float.rn r1, r1
000568  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
00056c  b3110218  bfloat2float.rn r3, r4
000570  1f420000  addli r4, zero, 4
000574  7e0002e0  vmmov mr0, r4
000578  1f021000  addli r4, zero, 8
00057c  eaa01136  vor.u.mh vr1{mr3}, r3, vr1
000580  b3910218  bfloat2float.rn r3, r5
000584  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000588  b3110318  bfloat2float.rn r3, r6
00058c  7e0002e0  vmmov mr0, r4
000590  1f022000  addli r4, zero, 16
000594  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000598  b3910318  bfloat2float.rn r3, r7
00059c  7e0002e0  vmmov mr0, r4
0005a0  1f024000  addli r4, zero, 32
0005a4  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005a8  b3110418  bfloat2float.rn r3, r8
0005ac  7e0002e0  vmmov mr0, r4
0005b0  1f028000  addli r4, zero, 64
0005b4  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005b8  b3910418  bfloat2float.rn r3, r9
0005bc  7e0002e0  vmmov mr0, r4
0005c0  1f020001  addli r4, zero, 128
0005c4  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005c8  b3110518  bfloat2float.rn r3, r10
0005cc  7e0002e0  vmmov mr0, r4
0005d0  1f020002  addli r4, zero, 256
0005d4  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005d8  b3910518  bfloat2float.rn r3, r11
0005dc  7e0002e0  vmmov mr0, r4
0005e0  1f020004  addli r4, zero, 512
0005e4  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005e8  b3110618  bfloat2float.rn r3, r12
0005ec  7e0002e0  vmmov mr0, r4
0005f0  1f020008  addli r4, zero, 1024
0005f4  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005f8  b3910618  bfloat2float.rn r3, r13
0005fc  7e0002e0  vmmov mr0, r4
000600  1f020010  addli r4, zero, 2048
000604  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000608  b3110718  bfloat2float.rn r3, r14
00060c  7e0002e0  vmmov mr0, r4
000610  1f020020  addli r4, zero, 4096
000614  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000618  b3910718  bfloat2float.rn r3, r15
00061c  7e0002e0  vmmov mr0, r4
000620  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000624  9f010040  addli r3, zero, 8192
000628  7e8001e0  vmmov mr0, r3
00062c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000630  2b410000  lui r2, 4
000634  7e0001e0  vmmov mr0, r2
000638  2b810000  lui r2, 8
00063c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000640  b3100818  bfloat2float.rn r1, r16
000644  7e0001e0  vmmov mr0, r2
000648  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00064c  eb300ff8  load.hu r1, -128(r30)
000650  6b312ff8  load.hu r2, -126(r30)
000654  eb314ff8  load.hu r3, -124(r30)
000658  6b326ff8  load.hu r4, -122(r30)
00065c  eb328ff8  load.hu r5, -120(r30)
000660  6b33aff8  load.hu r6, -118(r30)
000664  eb33cff8  load.hu r7, -116(r30)
000668  6b34eff8  load.hu r8, -114(r30)
00066c  eb340ff9  load.hu r9, -112(r30)
000670  6b352ff9  load.hu r10, -110(r30)
000674  eb354ff9  load.hu r11, -108(r30)
000678  6b366ff9  load.hu r12, -106(r30)
00067c  eb368ff9  load.hu r13, -104(r30)
000680  6b37aff9  load.hu r14, -102(r30)
000684  eb37cff9  load.hu r15, -100(r30)
000688  6b38eff9  load.hu r16, -98(r30)
00068c  b3900018  bfloat2float.rn r1, r1
000690  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000694  b3100118  bfloat2float.rn r1, r2
000698  1f410000  addli r2, zero, 4
00069c  7e0101e0  vmmov mr2, r2
0006a0  1f011000  addli r2, zero, 8
0006a4  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0006a8  b3900118  bfloat2float.rn r1, r3
0006ac  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006b0  b3100218  bfloat2float.rn r1, r4
0006b4  7e0101e0  vmmov mr2, r2
0006b8  1f012000  addli r2, zero, 16
0006bc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006c0  b3900218  bfloat2float.rn r1, r5
0006c4  7e0101e0  vmmov mr2, r2
0006c8  1f014000  addli r2, zero, 32
0006cc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006d0  b3100318  bfloat2float.rn r1, r6
0006d4  7e0101e0  vmmov mr2, r2
0006d8  1f018000  addli r2, zero, 64
0006dc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006e0  b3900318  bfloat2float.rn r1, r7
0006e4  7e0101e0  vmmov mr2, r2
0006e8  1f010001  addli r2, zero, 128
0006ec  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006f0  b3100418  bfloat2float.rn r1, r8
0006f4  7e0101e0  vmmov mr2, r2
0006f8  1f010002  addli r2, zero, 256
0006fc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000700  b3900418  bfloat2float.rn r1, r9
000704  7e0101e0  vmmov mr2, r2
000708  1f010004  addli r2, zero, 512
00070c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000710  b3100518  bfloat2float.rn r1, r10
000714  7e0101e0  vmmov mr2, r2
000718  1f010008  addli r2, zero, 1024
00071c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000720  b3900518  bfloat2float.rn r1, r11
000724  7e0101e0  vmmov mr2, r2
000728  1f010010  addli r2, zero, 2048
00072c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000730  b3100618  bfloat2float.rn r1, r12
000734  7e0101e0  vmmov mr2, r2
000738  1f010020  addli r2, zero, 4096
00073c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000740  b3900618  bfloat2float.rn r1, r13
000744  7e0101e0  vmmov mr2, r2
000748  1f010040  addli r2, zero, 8192
00074c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000750  b3100718  bfloat2float.rn r1, r14
000754  7e0101e0  vmmov mr2, r2
000758  2b410000  lui r2, 4
00075c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000760  b3900718  bfloat2float.rn r1, r15
000764  7e0101e0  vmmov mr2, r2
000768  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00076c  b3100818  bfloat2float.rn r1, r16
000770  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000774  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000778  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
00077c  00a00000  mfence { lm }
000780  630c8fff  loadli.w r24,  -64(r30)
000784  634e8fff  loadli.w r28,  -60(r30)
000788  630d9fff  loadli.w r26,  -56(r30)
00078c  63449fff  loadli.w r8,  -52(r30)
000790  e308afff  loadli.w r17,  -48(r30)
000794  6346afff  loadli.w r12,  -44(r30)
000798  e309bfff  loadli.w r19,  -40(r30)
00079c  6349bfff  loadli.w r18,  -36(r30)
0007a0  e30acfff  loadli.w r21,  -32(r30)
0007a4  e34bcfff  loadli.w r23,  -28(r30)
0007a8  63087ffe  loadli.w r16,  -200(r30)
0007ac  e300dfff  loadli.w r1,  -24(r30)
0007b0  970d0c01  and r27, r24, r16
0007b4  67021ffe  storeli.w r1, -224(r30)
0007b8  6347dfff  loadli.w r14,  -20(r30)
0007bc  e304efff  loadli.w r9,  -16(r30)
0007c0  e346efff  loadli.w r13,  -12(r30)
0007c4  e307ffff  loadli.w r15,  -8(r30)
0007c8  e345ffff  loadli.w r11,  -4(r30)
0007cc  9300ba05  setlt.u r1, r20, r27
0007d0  3bb00000  bneq r1, zero, 12
0007d4  1f010c00  addli r2, r24, 0
0007d8  5b010000  j 8
0007dc  17116c01  or r2, r24, r22
0007e0  17020e01  and r4, r28, r16
0007e4  e7422ffe  storeli.w r2, -212(r30)
0007e8  93004a04  setlt.u r1, r20, r4
0007ec  3bb00000  bneq r1, zero, 12
0007f0  9f010e00  addli r3, r28, 0
0007f4  5b010000  j 8
0007f8  97116e01  or r3, r28, r22
0007fc  17010d01  and r2, r26, r16
000800  67433ffe  storeli.w r3, -204(r30)
000804  93002a04  setlt.u r1, r20, r2
000808  3bb00000  bneq r1, zero, 12
00080c  e74daffd  storeli.w r26, -292(r30)
000810  db010000  j 12
000814  97106d01  or r1, r26, r22
000818  e74d1ffc  storeli.w r1, -292(r30)
00081c  97000401  and r1, r8, r16
000820  93011a04  setlt.u r3, r20, r1
000824  3bb00100  bneq r3, zero, 12
000828  9f020400  addli r5, r8, 0
00082c  5b010000  j 8
000830  97126401  or r5, r8, r22
000834  97830801  and r7, r17, r16
000838  93017a04  setlt.u r3, r20, r7
00083c  3bb00100  bneq r3, zero, 12
000840  e74f1ffd  storeli.w r17, -260(r30)
000844  db010000  j 12
000848  97916801  or r3, r17, r22
00084c  e74f3ffc  storeli.w r3, -260(r30)
000850  17030601  and r6, r12, r16
000854  93016a04  setlt.u r3, r20, r6
000858  3bb00100  bneq r3, zero, 12
00085c  6700cffe  storeli.w r12, -256(r30)
000860  db010000  j 12
000864  97116601  or r3, r12, r22
000868  67003ffe  storeli.w r3, -256(r30)
00086c  97810901  and r3, r19, r16
000870  e70f5ffc  storeli.w r5, -264(r30)
000874  e70a3ffd  storeli.w r19, -344(r30)
000878  13053a04  setlt.u r10, r20, r3
00087c  3b300500  bneq r10, zero, 12
000880  67403fff  storeli.w r19, -252(r30)
000884  db010000  j 12
000888  97926901  or r5, r19, r22
00088c  67405ffe  storeli.w r5, -252(r30)
000890  97090901  and r19, r18, r16
000894  67429ffe  storeli.w r9, -220(r30)
000898  670b2ffd  storeli.w r18, -336(r30)
00089c  13053a05  setlt.u r10, r20, r19
0008a0  3b300500  bneq r10, zero, 12
0008a4  9f040900  addli r9, r18, 0
0008a8  5b010000  j 8
0008ac  97146901  or r9, r18, r22
0008b0  17890a01  and r18, r21, r16
0008b4  e70b5ffd  storeli.w r21, -328(r30)
0008b8  13052a05  setlt.u r10, r20, r18
0008bc  3b300500  bneq r10, zero, 12
0008c0  9f820a00  addli r5, r21, 0
0008c4  5b010000  j 8
0008c8  97926a01  or r5, r21, r22
0008cc  978a0b01  and r21, r23, r16
0008d0  e702bffe  storeli.w r11, -216(r30)
0008d4  e7009ffe  storeli.w r9, -248(r30)
0008d8  670c7ffd  storeli.w r23, -320(r30)
0008dc  13055a05  setlt.u r10, r20, r21
0008e0  3b300500  bneq r10, zero, 12
0008e4  e7407fff  storeli.w r23, -244(r30)
0008e8  db010000  j 12
0008ec  97946b01  or r9, r23, r22
0008f0  e7409ffe  storeli.w r9, -244(r30)
0008f4  e3044ffe  loadli.w r9,  -224(r30)
0008f8  ab054000  lui r11, 1024
0008fc  ab0c807f  lui r25, 522240
000900  978b0401  and r23, r9, r16
000904  13057a05  setlt.u r10, r20, r23
000908  37200500  beq r10, zero, 8
00090c  9794b400  or r9, r9, r11
000910  170b0701  and r22, r14, r16
000914  67019ffe  storeli.w r9, -240(r30)
000918  e70ceffc  storeli.w r14, -312(r30)
00091c  13856c05  setlt.u r10, r25, r22
000920  3b300500  bneq r10, zero, 12
000924  6741effe  storeli.w r14, -236(r30)
000928  db010000  j 12
00092c  9714b700  or r9, r14, r11
000930  67419ffe  storeli.w r9, -236(r30)
000934  e3444ffe  loadli.w r9,  -220(r30)
000938  17870401  and r14, r9, r16
00093c  1385ec04  setlt.u r10, r25, r14
000940  37200500  beq r10, zero, 8
000944  9794b400  or r9, r9, r11
000948  1f8a0600  addli r20, r13, 0
00094c  97060a01  and r13, r20, r16
000950  670d4ffd  storeli.w r20, -304(r30)
000954  1385dc04  setlt.u r10, r25, r13
000958  3b300500  bneq r10, zero, 12
00095c  e7014fff  storeli.w r20, -232(r30)
000960  db010000  j 12
000964  1715ba00  or r10, r20, r11
000968  e701affe  storeli.w r10, -232(r30)
00096c  17850701  and r10, r15, r16
000970  e70dfffc  storeli.w r15, -296(r30)
000974  1388ac04  setlt.u r16, r25, r10
000978  37200800  beq r16, zero, 8
00097c  9797b700  or r15, r15, r11
000980  63087ffe  loadli.w r16,  -200(r30)
000984  e3055ffe  loadli.w r11,  -216(r30)
000988  178a0501  and r20, r11, r16
00098c  13884c05  setlt.u r16, r25, r20
000990  3b300800  bneq r16, zero, 12
000994  ab0c4000  lui r25, 1024
000998  db010000  j 12
00099c  ab0c4000  lui r25, 1024
0009a0  97959501  or r11, r11, r25
0009a4  63487ffe  loadli.w r16,  -196(r30)
0009a8  1308b805  setlt.u r16, r16, r27
0009ac  e30d6ffe  loadli.w r27,  -208(r30)
0009b0  bb000800  bneq r16, zero, 32
0009b4  1b480c01  srli r16, r24, 16
0009b8  1b081800  andi r16, r16, 1
0009bc  0b180c11  add.s r16, r24, r16
0009c0  2b0cffff  lui r24, 1048560
0009c4  0b18b811  add.s r16, r16, r27
0009c8  17088801  and r16, r16, r24
0009cc  e7420fff  storeli.w r16, -212(r30)
0009d0  63487ffe  loadli.w r16,  -196(r30)
0009d4  13024804  setlt.u r4, r16, r4
0009d8  bb000200  bneq r4, zero, 32
0009dc  1b420e01  srli r4, r28, 16
0009e0  2b08ffff  lui r16, 1048560
0009e4  1b021200  andi r4, r4, 1
0009e8  0b124e10  add.s r4, r28, r4
0009ec  0b12b211  add.s r4, r4, r27
0009f0  17020201  and r4, r4, r16
0009f4  67434ffe  storeli.w r4, -204(r30)
0009f8  63427ffe  loadli.w r4,  -196(r30)
0009fc  63087ffe  loadli.w r16,  -200(r30)
000a00  634ebffd  loadli.w r28,  -292(r30)
000a04  1f8c0200  addli r24, r5, 0
000a08  13012204  setlt.u r2, r4, r2
000a0c  3b700100  bneq r2, zero, 28
000a10  1b410d01  srli r2, r26, 16
000a14  2b02ffff  lui r4, 1048560
000a18  1b011100  andi r2, r2, 1
000a1c  0b112d10  add.s r2, r26, r2
000a20  0b11b111  add.s r2, r2, r27
000a24  170e4100  and r28, r2, r4
000a28  63417ffe  loadli.w r2,  -196(r30)
000a2c  e302fffd  loadli.w r5,  -264(r30)
000a30  93001104  setlt.u r1, r2, r1
000a34  3bf00000  bneq r1, zero, 28
000a38  9b400401  srli r1, r8, 16
000a3c  2b01ffff  lui r2, 1048560
000a40  9b801000  andi r1, r1, 1
000a44  8b101410  add.s r1, r8, r1
000a48  8b90b011  add.s r1, r1, r27
000a4c  97822000  and r5, r1, r2
000a50  63417ffe  loadli.w r2,  -196(r30)
000a54  634dfffd  loadli.w r26,  -260(r30)
000a58  2b02ffff  lui r4, 1048560
000a5c  93007104  setlt.u r1, r2, r7
000a60  3be00000  bneq r1, zero, 24
000a64  9bc00801  srli r1, r17, 16
000a68  9b801000  andi r1, r1, 1
000a6c  8b901810  add.s r1, r17, r1
000a70  8b90b011  add.s r1, r1, r27
000a74  178d4000  and r26, r1, r4
000a78  93006104  setlt.u r1, r2, r6
000a7c  63440ffe  loadli.w r8,  -252(r30)
000a80  e3030ffe  loadli.w r7,  -256(r30)
000a84  3be00000  bneq r1, zero, 24
000a88  9b400601  srli r1, r12, 16
000a8c  9b801000  andi r1, r1, 1
000a90  8b101610  add.s r1, r12, r1
000a94  8b90b011  add.s r1, r1, r27
000a98  97834000  and r7, r1, r4
000a9c  93003104  setlt.u r1, r2, r3
000aa0  9f880400  addli r17, r9, 0
000aa4  3bf00000  bneq r1, zero, 28
000aa8  e3015ffd  loadli.w r3,  -344(r30)
000aac  9bc00101  srli r1, r3, 16
000ab0  9b801000  andi r1, r1, 1
000ab4  8b901110  add.s r1, r3, r1
000ab8  8b90b011  add.s r1, r1, r27
000abc  17844000  and r8, r1, r4
000ac0  93003105  setlt.u r1, r2, r19
000ac4  e3041ffe  loadli.w r9,  -248(r30)
000ac8  e3416ffe  loadli.w r3,  -204(r30)
000acc  1f860500  addli r12, r11, 0
000ad0  3bf00000  bneq r1, zero, 28
000ad4  63036ffd  loadli.w r6,  -336(r30)
000ad8  9b400301  srli r1, r6, 16
000adc  9b801000  andi r1, r1, 1
000ae0  8b101310  add.s r1, r6, r1
000ae4  8b90b011  add.s r1, r1, r27
000ae8  97844000  and r9, r1, r4
000aec  93002105  setlt.u r1, r2, r18
000af0  e3492ffe  loadli.w r19,  -236(r30)
000af4  e3451ffe  loadli.w r11,  -244(r30)
000af8  3bf00000  bneq r1, zero, 28
000afc  63037ffd  loadli.w r6,  -328(r30)
000b00  9b400301  srli r1, r6, 16
000b04  9b801000  andi r1, r1, 1
000b08  8b101310  add.s r1, r6, r1
000b0c  8b90b011  add.s r1, r1, r27
000b10  178c4000  and r24, r1, r4
000b14  93005105  setlt.u r1, r2, r21
000b18  63093ffe  loadli.w r18,  -232(r30)
000b1c  3bf00000  bneq r1, zero, 28
000b20  63038ffd  loadli.w r6,  -320(r30)
000b24  9b400301  srli r1, r6, 16
000b28  9b801000  andi r1, r1, 1
000b2c  8b101310  add.s r1, r6, r1
000b30  8b90b011  add.s r1, r1, r27
000b34  97854000  and r11, r1, r4
000b38  93007105  setlt.u r1, r2, r23
000b3c  e30a2ffe  loadli.w r21,  -240(r30)
000b40  3bf00000  bneq r1, zero, 28
000b44  63034ffe  loadli.w r6,  -224(r30)
000b48  9b400301  srli r1, r6, 16
000b4c  9b801000  andi r1, r1, 1
000b50  8b101310  add.s r1, r6, r1
000b54  8b90b011  add.s r1, r1, r27
000b58  978a4000  and r21, r1, r4
000b5c  93006105  setlt.u r1, r2, r22
000b60  3bf00000  bneq r1, zero, 28
000b64  63039ffd  loadli.w r6,  -312(r30)
000b68  9b400301  srli r1, r6, 16
000b6c  9b801000  andi r1, r1, 1
000b70  8b101310  add.s r1, r6, r1
000b74  8b90b011  add.s r1, r1, r27
000b78  97894000  and r19, r1, r4
000b7c  9300e104  setlt.u r1, r2, r14
000b80  2b0b807f  lui r22, 522240
000b84  37e10000  beq r1, zero, 88
000b88  9300d104  setlt.u r1, r2, r13
000b8c  b7c10000  beq r1, zero, 112
000b90  9300a104  setlt.u r1, r2, r10
000b94  37a20000  beq r1, zero, 136
000b98  93004105  setlt.u r1, r2, r20
000b9c  3bf00000  bneq r1, zero, 28
000ba0  63015ffe  loadli.w r2,  -216(r30)
000ba4  9b400101  srli r1, r2, 16
000ba8  9b801000  andi r1, r1, 1
000bac  8b101110  add.s r1, r2, r1
000bb0  8b90b011  add.s r1, r1, r27
000bb4  17864000  and r12, r1, r4
000bb8  63415ffe  loadli.w r2,  -212(r30)
000bbc  97000101  and r1, r2, r16
000bc0  93001b04  setlt.u r1, r22, r1
000bc4  bbf10000  bneq r1, zero, 124
000bc8  9b400101  srli r1, r2, 16
000bcc  9b801000  andi r1, r1, 1
000bd0  8b101110  add.s r1, r2, r1
000bd4  8b90b011  add.s r1, r1, r27
000bd8  db0d0000  j 108
000bdc  63434ffe  loadli.w r6,  -220(r30)
000be0  9b400301  srli r1, r6, 16
000be4  9b801000  andi r1, r1, 1
000be8  8b101310  add.s r1, r6, r1
000bec  8b90b011  add.s r1, r1, r27
000bf0  97884000  and r17, r1, r4
000bf4  9300d104  setlt.u r1, r2, r13
000bf8  3bee00fe  bneq r1, zero, -104
000bfc  6303affd  loadli.w r6,  -304(r30)
000c00  9b400301  srli r1, r6, 16
000c04  9b801000  andi r1, r1, 1
000c08  8b101310  add.s r1, r6, r1
000c0c  8b90b011  add.s r1, r1, r27
000c10  17894000  and r18, r1, r4
000c14  9300a104  setlt.u r1, r2, r10
000c18  3b8e00fe  bneq r1, zero, -128
000c1c  6303bffd  loadli.w r6,  -296(r30)
000c20  9b400301  srli r1, r6, 16
000c24  9b801000  andi r1, r1, 1
000c28  8b101310  add.s r1, r6, r1
000c2c  8b90b011  add.s r1, r1, r27
000c30  97874000  and r15, r1, r4
000c34  93004105  setlt.u r1, r2, r20
000c38  b7ad00fe  beq r1, zero, -152
000c3c  dbefffff  j -132
000c40  97109101  or r1, r2, r25
000c44  17810101  and r2, r3, r16
000c48  13012b04  setlt.u r2, r22, r2
000c4c  3b600100  bneq r2, zero, 24
000c50  1bc10101  srli r2, r3, 16
000c54  1b011100  andi r2, r2, 1
000c58  0b912110  add.s r2, r3, r2
000c5c  0b11b111  add.s r2, r2, r27
000c60  5b010000  j 8
000c64  17919101  or r2, r3, r25
000c68  97010e01  and r3, r28, r16
000c6c  93013b04  setlt.u r3, r22, r3
000c70  3be00100  bneq r3, zero, 24
000c74  9b410e01  srli r3, r28, 16
000c78  9b811100  andi r3, r3, 1
000c7c  8b113e10  add.s r3, r28, r3
000c80  8b91b111  add.s r3, r3, r27
000c84  5b010000  j 8
000c88  97119e01  or r3, r28, r25
000c8c  17820201  and r4, r5, r16
000c90  13024b04  setlt.u r4, r22, r4
000c94  3b600200  bneq r4, zero, 24
000c98  1bc20201  srli r4, r5, 16
000c9c  1b021200  andi r4, r4, 1
000ca0  0b924210  add.s r4, r5, r4
000ca4  0b12b211  add.s r4, r4, r27
000ca8  5b010000  j 8
000cac  17929201  or r4, r5, r25
000cb0  97020d01  and r5, r26, r16
000cb4  93025b04  setlt.u r5, r22, r5
000cb8  3be00200  bneq r5, zero, 24
000cbc  9b420d01  srli r5, r26, 16
000cc0  9b821200  andi r5, r5, 1
000cc4  8b125d10  add.s r5, r26, r5
000cc8  8b92b211  add.s r5, r5, r27
000ccc  5b010000  j 8
000cd0  97129d01  or r5, r26, r25
000cd4  17830301  and r6, r7, r16
000cd8  13036b04  setlt.u r6, r22, r6
000cdc  3b600300  bneq r6, zero, 24
000ce0  1bc30301  srli r6, r7, 16
000ce4  1b031300  andi r6, r6, 1
000ce8  0b936310  add.s r6, r7, r6
000cec  0b13b311  add.s r6, r6, r27
000cf0  5b010000  j 8
000cf4  17939301  or r6, r7, r25
000cf8  97030401  and r7, r8, r16
000cfc  93037b04  setlt.u r7, r22, r7
000d00  3be00300  bneq r7, zero, 24
000d04  9b430401  srli r7, r8, 16
000d08  9b831300  andi r7, r7, 1
000d0c  8b137410  add.s r7, r8, r7
000d10  0b94b311  add.s r8, r7, r27
000d14  5b010000  j 8
000d18  17149401  or r8, r8, r25
000d1c  97830401  and r7, r9, r16
000d20  93037b04  setlt.u r7, r22, r7
000d24  3be00300  bneq r7, zero, 24
000d28  9bc30401  srli r7, r9, 16
000d2c  9b831300  andi r7, r7, 1
000d30  8b937410  add.s r7, r9, r7
000d34  8b94b311  add.s r9, r7, r27
000d38  5b010000  j 8
000d3c  97949401  or r9, r9, r25
000d40  97030c01  and r7, r24, r16
000d44  93037b04  setlt.u r7, r22, r7
000d48  3be00300  bneq r7, zero, 24
000d4c  9b430c01  srli r7, r24, 16
000d50  9b831300  andi r7, r7, 1
000d54  8b137c10  add.s r7, r24, r7
000d58  0b95b311  add.s r10, r7, r27
000d5c  5b010000  j 8
000d60  17159c01  or r10, r24, r25
000d64  97830501  and r7, r11, r16
000d68  93037b04  setlt.u r7, r22, r7
000d6c  3be00300  bneq r7, zero, 24
000d70  9bc30501  srli r7, r11, 16
000d74  9b831300  andi r7, r7, 1
000d78  8b937510  add.s r7, r11, r7
000d7c  8b95b311  add.s r11, r7, r27
000d80  5b010000  j 8
000d84  97959501  or r11, r11, r25
000d88  97830a01  and r7, r21, r16
000d8c  93037b04  setlt.u r7, r22, r7
000d90  3be00300  bneq r7, zero, 24
000d94  9bc30a01  srli r7, r21, 16
000d98  9b831300  andi r7, r7, 1
000d9c  8b937a10  add.s r7, r21, r7
000da0  8b96b311  add.s r13, r7, r27
000da4  5b010000  j 8
000da8  97969a01  or r13, r21, r25
000dac  97830901  and r7, r19, r16
000db0  93037b04  setlt.u r7, r22, r7
000db4  3be00300  bneq r7, zero, 24
000db8  9bc30901  srli r7, r19, 16
000dbc  9b831300  andi r7, r7, 1
000dc0  8b937910  add.s r7, r19, r7
000dc4  0b97b311  add.s r14, r7, r27
000dc8  5b010000  j 8
000dcc  17979901  or r14, r19, r25
000dd0  97830801  and r7, r17, r16
000dd4  93037b04  setlt.u r7, r22, r7
000dd8  3be00300  bneq r7, zero, 24
000ddc  9bc30801  srli r7, r17, 16
000de0  9b831300  andi r7, r7, 1
000de4  8b937810  add.s r7, r17, r7
000de8  8b98b311  add.s r17, r7, r27
000dec  5b010000  j 8
000df0  97989801  or r17, r17, r25
000df4  97030901  and r7, r18, r16
000df8  93037b04  setlt.u r7, r22, r7
000dfc  3be00300  bneq r7, zero, 24
000e00  9b430901  srli r7, r18, 16
000e04  9b831300  andi r7, r7, 1
000e08  8b137910  add.s r7, r18, r7
000e0c  0b99b311  add.s r18, r7, r27
000e10  5b010000  j 8
000e14  17199901  or r18, r18, r25
000e18  97830701  and r7, r15, r16
000e1c  93037b04  setlt.u r7, r22, r7
000e20  3be00300  bneq r7, zero, 24
000e24  9bc30701  srli r7, r15, 16
000e28  9b831300  andi r7, r7, 1
000e2c  8b937710  add.s r7, r15, r7
000e30  8b97b311  add.s r15, r7, r27
000e34  5b010000  j 8
000e38  97979701  or r15, r15, r25
000e3c  97030601  and r7, r12, r16
000e40  93037b04  setlt.u r7, r22, r7
000e44  3be00300  bneq r7, zero, 24
000e48  9b430601  srli r7, r12, 16
000e4c  9b831300  andi r7, r7, 1
000e50  8b137610  add.s r7, r12, r7
000e54  0b98b311  add.s r16, r7, r27
000e58  5b010000  j 8
000e5c  17189601  or r16, r12, r25
000e60  ab09ffff  lui r19, 1048560
000e64  ab03ffff  lui r7, 1048560
000e68  e34d3ffe  loadli.w r27,  -228(r30)
000e6c  978a3601  and r21, r13, r19
000e70  97807000  and r1, r1, r7
000e74  17017100  and r2, r2, r7
000e78  97817100  and r3, r3, r7
000e7c  17027200  and r4, r4, r7
000e80  97827200  and r5, r5, r7
000e84  97033301  and r7, r6, r19
000e88  17043401  and r8, r8, r19
000e8c  97843401  and r9, r9, r19
000e90  17063501  and r12, r10, r19
000e94  178a3501  and r20, r11, r19
000e98  970b3701  and r23, r14, r19
000e9c  178c3801  and r24, r17, r19
000ea0  97063901  and r13, r18, r19
000ea4  178e3701  and r28, r15, r19
000ea8  170d3801  and r26, r16, r19
000eac  1f030004  addli r6, zero, 512
000eb0  3fb06d00  blt.s r27, r6, 12
000eb4  1f030000  addli r6, zero, 0
000eb8  5b080000  j 64
000ebc  0be32010  add.f.rn r6, r1, r2
000ec0  0b633310  add.f.rn r6, r6, r3
000ec4  0b634310  add.f.rn r6, r6, r4
000ec8  0b635310  add.f.rn r6, r6, r5
000ecc  0b637310  add.f.rn r6, r6, r7
000ed0  0b638310  add.f.rn r6, r6, r8
000ed4  0b639310  add.f.rn r6, r6, r9
000ed8  0b63c310  add.f.rn r6, r6, r12
000edc  0b634311  add.f.rn r6, r6, r20
000ee0  0b635311  add.f.rn r6, r6, r21
000ee4  0b637311  add.f.rn r6, r6, r23
000ee8  0b638311  add.f.rn r6, r6, r24
000eec  0b63d310  add.f.rn r6, r6, r13
000ef0  0b63c311  add.f.rn r6, r6, r28
000ef4  0b63a311  add.f.rn r6, r6, r26
000ef8  63052ffd  loadli.w r10,  -368(r30)
000efc  e3071ffd  loadli.w r15,  -376(r30)
000f00  63087ffe  loadli.w r16,  -200(r30)
000f04  73606500  stores.w r6, 0(r10)
000f08  00a00300  mfence { lm, sm, gm }
000f0c  80a10704  csr_set csr3, r15
000f10  00d00100  sync_group
000f14  6343effd  loadli.w r6,  -268(r30)
000f18  3b280300  bneq r6, zero, 520
000f1c  63073ffd  loadli.w r14,  -360(r30)
000f20  6f430700  loads.w r6, 0(r14)
000f24  ef454700  loads.w r11, 4(r14)
000f28  6f458700  loads.w r10, 8(r14)
000f2c  0b63b310  add.f.rn r6, r6, r11
000f30  ef45c700  loads.w r11, 12(r14)
000f34  0b63a310  add.f.rn r6, r6, r10
000f38  6f450701  loads.w r10, 16(r14)
000f3c  0b63b310  add.f.rn r6, r6, r11
000f40  ef454701  loads.w r11, 20(r14)
000f44  0b63a310  add.f.rn r6, r6, r10
000f48  6f458701  loads.w r10, 24(r14)
000f4c  0b63b310  add.f.rn r6, r6, r11
000f50  ef45c701  loads.w r11, 28(r14)
000f54  0b63a310  add.f.rn r6, r6, r10
000f58  6f450702  loads.w r10, 32(r14)
000f5c  0b63b310  add.f.rn r6, r6, r11
000f60  ef454702  loads.w r11, 36(r14)
000f64  0b63a310  add.f.rn r6, r6, r10
000f68  6f458702  loads.w r10, 40(r14)
000f6c  0b63b310  add.f.rn r6, r6, r11
000f70  ef45c702  loads.w r11, 44(r14)
000f74  0b63a310  add.f.rn r6, r6, r10
000f78  6f450703  loads.w r10, 48(r14)
000f7c  0b63b310  add.f.rn r6, r6, r11
000f80  ef454703  loads.w r11, 52(r14)
000f84  0b63a310  add.f.rn r6, r6, r10
000f88  6f458703  loads.w r10, 56(r14)
000f8c  0b63b310  add.f.rn r6, r6, r11
000f90  ef45c703  loads.w r11, 60(r14)
000f94  0b63a310  add.f.rn r6, r6, r10
000f98  6f450704  loads.w r10, 64(r14)
000f9c  0b63b310  add.f.rn r6, r6, r11
000fa0  ef454704  loads.w r11, 68(r14)
000fa4  0b63a310  add.f.rn r6, r6, r10
000fa8  6f458704  loads.w r10, 72(r14)
000fac  0b63b310  add.f.rn r6, r6, r11
000fb0  ef45c704  loads.w r11, 76(r14)
000fb4  0b63a310  add.f.rn r6, r6, r10
000fb8  6f450705  loads.w r10, 80(r14)
000fbc  0b63b310  add.f.rn r6, r6, r11
000fc0  ef454705  loads.w r11, 84(r14)
000fc4  0b63a310  add.f.rn r6, r6, r10
000fc8  6f458705  loads.w r10, 88(r14)
000fcc  0b63b310  add.f.rn r6, r6, r11
000fd0  ef45c705  loads.w r11, 92(r14)
000fd4  0b63a310  add.f.rn r6, r6, r10
000fd8  6f450706  loads.w r10, 96(r14)
000fdc  0b63b310  add.f.rn r6, r6, r11
000fe0  ef454706  loads.w r11, 100(r14)
000fe4  0b63a310  add.f.rn r6, r6, r10
000fe8  6f458706  loads.w r10, 104(r14)
000fec  0b63b310  add.f.rn r6, r6, r11
000ff0  ef45c706  loads.w r11, 108(r14)
000ff4  0b63a310  add.f.rn r6, r6, r10
000ff8  6f450707  loads.w r10, 112(r14)
000ffc  0b63b310  add.f.rn r6, r6, r11
001000  ef454707  loads.w r11, 116(r14)
001004  0b63a310  add.f.rn r6, r6, r10
001008  6f458707  loads.w r10, 120(r14)
00100c  0b63b310  add.f.rn r6, r6, r11
001010  ef45c707  loads.w r11, 124(r14)
001014  0b63a310  add.f.rn r6, r6, r10
001018  6f450708  loads.w r10, 128(r14)
00101c  0b63b310  add.f.rn r6, r6, r11
001020  ef454708  loads.w r11, 132(r14)
001024  0b63a310  add.f.rn r6, r6, r10
001028  6f458708  loads.w r10, 136(r14)
00102c  0b63b310  add.f.rn r6, r6, r11
001030  ef45c708  loads.w r11, 140(r14)
001034  0b63a310  add.f.rn r6, r6, r10
001038  6f450709  loads.w r10, 144(r14)
00103c  0b63b310  add.f.rn r6, r6, r11
001040  ef454709  loads.w r11, 148(r14)
001044  0b63a310  add.f.rn r6, r6, r10
001048  6f458709  loads.w r10, 152(r14)
00104c  0b63b310  add.f.rn r6, r6, r11
001050  ef45c709  loads.w r11, 156(r14)
001054  0b63a310  add.f.rn r6, r6, r10
001058  6f45070a  loads.w r10, 160(r14)
00105c  0b63b310  add.f.rn r6, r6, r11
001060  ef45470a  loads.w r11, 164(r14)
001064  0b63a310  add.f.rn r6, r6, r10
001068  6f45870a  loads.w r10, 168(r14)
00106c  0b63b310  add.f.rn r6, r6, r11
001070  ef45c70a  loads.w r11, 172(r14)
001074  0b63a310  add.f.rn r6, r6, r10
001078  6f45070b  loads.w r10, 176(r14)
00107c  0b63b310  add.f.rn r6, r6, r11
001080  ef45470b  loads.w r11, 180(r14)
001084  0b63a310  add.f.rn r6, r6, r10
001088  6f45870b  loads.w r10, 184(r14)
00108c  0b63b310  add.f.rn r6, r6, r11
001090  ef45c70b  loads.w r11, 188(r14)
001094  0b63a310  add.f.rn r6, r6, r10
001098  6f45070c  loads.w r10, 192(r14)
00109c  0b63b310  add.f.rn r6, r6, r11
0010a0  ef45470c  loads.w r11, 196(r14)
0010a4  0b63a310  add.f.rn r6, r6, r10
0010a8  6f45870c  loads.w r10, 200(r14)
0010ac  0b63b310  add.f.rn r6, r6, r11
0010b0  ef45c70c  loads.w r11, 204(r14)
0010b4  0b63a310  add.f.rn r6, r6, r10
0010b8  6f45070d  loads.w r10, 208(r14)
0010bc  0b63b310  add.f.rn r6, r6, r11
0010c0  ef45470d  loads.w r11, 212(r14)
0010c4  0b63a310  add.f.rn r6, r6, r10
0010c8  6f45870d  loads.w r10, 216(r14)
0010cc  0b63b310  add.f.rn r6, r6, r11
0010d0  ef45c70d  loads.w r11, 220(r14)
0010d4  0b63a310  add.f.rn r6, r6, r10
0010d8  6f45070e  loads.w r10, 224(r14)
0010dc  0b63b310  add.f.rn r6, r6, r11
0010e0  ef45470e  loads.w r11, 228(r14)
0010e4  0b63a310  add.f.rn r6, r6, r10
0010e8  6f45870e  loads.w r10, 232(r14)
0010ec  0b63b310  add.f.rn r6, r6, r11
0010f0  ef45c70e  loads.w r11, 236(r14)
0010f4  0b63a310  add.f.rn r6, r6, r10
0010f8  6f45070f  loads.w r10, 240(r14)
0010fc  0b63b310  add.f.rn r6, r6, r11
001100  ef45470f  loads.w r11, 244(r14)
001104  0b63a310  add.f.rn r6, r6, r10
001108  6f45870f  loads.w r10, 248(r14)
00110c  0b63b310  add.f.rn r6, r6, r11
001110  ef45c70f  loads.w r11, 252(r14)
001114  0b63a310  add.f.rn r6, r6, r10
001118  0b63b310  add.f.rn r6, r6, r11
00111c  73606700  stores.w r6, 0(r14)
001120  00a00300  mfence { lm, sm, gm }
001124  80a10704  csr_set csr3, r15
001128  00d00100  sync_group
00112c  63033ffd  loadli.w r6,  -360(r30)
001130  2b05803a  lui r10, 239616
001134  6f430300  loads.w r6, 0(r6)
001138  0b65a320  mul.f.rn r10, r6, r10
00113c  8be9a018  sub.f.rn r19, r1, r10
001140  0b69a118  sub.f.rn r18, r2, r10
001144  8be8a118  sub.f.rn r17, r3, r10
001148  0b63a218  sub.f.rn r6, r4, r10
00114c  8be5a218  sub.f.rn r11, r5, r10
001150  0b62a418  sub.f.rn r4, r8, r10
001154  0be4a418  sub.f.rn r8, r9, r10
001158  8b62a618  sub.f.rn r5, r12, r10
00115c  0b66aa18  sub.f.rn r12, r20, r10
001160  0be1aa18  sub.f.rn r2, r21, r10
001164  0beaa618  sub.f.rn r20, r13, r10
001168  8be0a318  sub.f.rn r1, r7, r10
00116c  8be4ab18  sub.f.rn r9, r23, r10
001170  8b6aac18  sub.f.rn r21, r24, r10
001174  8b66ae18  sub.f.rn r13, r28, r10
001178  0b67ad18  sub.f.rn r14, r26, r10
00117c  9f010004  addli r3, zero, 512
001180  3fb03d00  blt.s r27, r3, 12
001184  9f010000  addli r3, zero, 0
001188  5b100000  j 128
00118c  8be13921  mul.f.rn r3, r19, r19
001190  8b632921  mul.f.rn r7, r18, r18
001194  8be17110  add.f.rn r3, r3, r7
001198  8be31821  mul.f.rn r7, r17, r17
00119c  8be13310  add.f.rn r3, r7, r3
0011a0  8b636320  mul.f.rn r7, r6, r6
0011a4  8be13310  add.f.rn r3, r7, r3
0011a8  8be3b520  mul.f.rn r7, r11, r11
0011ac  8be13310  add.f.rn r3, r7, r3
0011b0  8be31020  mul.f.rn r7, r1, r1
0011b4  8be13310  add.f.rn r3, r7, r3
0011b8  8b634220  mul.f.rn r7, r4, r4
0011bc  8be13310  add.f.rn r3, r7, r3
0011c0  8b638420  mul.f.rn r7, r8, r8
0011c4  8be13310  add.f.rn r3, r7, r3
0011c8  8be35220  mul.f.rn r7, r5, r5
0011cc  8be13310  add.f.rn r3, r7, r3
0011d0  8b63c620  mul.f.rn r7, r12, r12
0011d4  8be13310  add.f.rn r3, r7, r3
0011d8  8b632120  mul.f.rn r7, r2, r2
0011dc  8be13310  add.f.rn r3, r7, r3
0011e0  8be39420  mul.f.rn r7, r9, r9
0011e4  8be13310  add.f.rn r3, r7, r3
0011e8  8be35a21  mul.f.rn r7, r21, r21
0011ec  8be13310  add.f.rn r3, r7, r3
0011f0  8b634a21  mul.f.rn r7, r20, r20
0011f4  8be13310  add.f.rn r3, r7, r3
0011f8  8be3d620  mul.f.rn r7, r13, r13
0011fc  8be13310  add.f.rn r3, r7, r3
001200  8b63e720  mul.f.rn r7, r14, r14
001204  8be13310  add.f.rn r3, r7, r3
001208  e3030ffd  loadli.w r7,  -384(r30)
00120c  e74f4ffd  storeli.w r20, -260(r30)
001210  e70fdffc  storeli.w r13, -264(r30)
001214  73e03300  stores.w r3, 0(r7)
001218  00a00300  mfence { lm, sm, gm }
00121c  80a10704  csr_set csr3, r15
001220  00d00100  sync_group
001224  e341effd  loadli.w r3,  -268(r30)
001228  3ba80100  bneq r3, zero, 520
00122c  e3462ffd  loadli.w r13,  -364(r30)
001230  efc10600  loads.w r3, 0(r13)
001234  6fc54600  loads.w r10, 4(r13)
001238  efc38600  loads.w r7, 8(r13)
00123c  8be1a110  add.f.rn r3, r3, r10
001240  6fc5c600  loads.w r10, 12(r13)
001244  8be17110  add.f.rn r3, r3, r7
001248  efc30601  loads.w r7, 16(r13)
00124c  8be1a110  add.f.rn r3, r3, r10
001250  6fc54601  loads.w r10, 20(r13)
001254  8be17110  add.f.rn r3, r3, r7
001258  efc38601  loads.w r7, 24(r13)
00125c  8be1a110  add.f.rn r3, r3, r10
001260  6fc5c601  loads.w r10, 28(r13)
001264  8be17110  add.f.rn r3, r3, r7
001268  efc30602  loads.w r7, 32(r13)
00126c  8be1a110  add.f.rn r3, r3, r10
001270  6fc54602  loads.w r10, 36(r13)
001274  8be17110  add.f.rn r3, r3, r7
001278  efc38602  loads.w r7, 40(r13)
00127c  8be1a110  add.f.rn r3, r3, r10
001280  6fc5c602  loads.w r10, 44(r13)
001284  8be17110  add.f.rn r3, r3, r7
001288  efc30603  loads.w r7, 48(r13)
00128c  8be1a110  add.f.rn r3, r3, r10
001290  6fc54603  loads.w r10, 52(r13)
001294  8be17110  add.f.rn r3, r3, r7
001298  efc38603  loads.w r7, 56(r13)
00129c  8be1a110  add.f.rn r3, r3, r10
0012a0  6fc5c603  loads.w r10, 60(r13)
0012a4  8be17110  add.f.rn r3, r3, r7
0012a8  efc30604  loads.w r7, 64(r13)
0012ac  8be1a110  add.f.rn r3, r3, r10
0012b0  6fc54604  loads.w r10, 68(r13)
0012b4  8be17110  add.f.rn r3, r3, r7
0012b8  efc38604  loads.w r7, 72(r13)
0012bc  8be1a110  add.f.rn r3, r3, r10
0012c0  6fc5c604  loads.w r10, 76(r13)
0012c4  8be17110  add.f.rn r3, r3, r7
0012c8  efc30605  loads.w r7, 80(r13)
0012cc  8be1a110  add.f.rn r3, r3, r10
0012d0  6fc54605  loads.w r10, 84(r13)
0012d4  8be17110  add.f.rn r3, r3, r7
0012d8  efc38605  loads.w r7, 88(r13)
0012dc  8be1a110  add.f.rn r3, r3, r10
0012e0  6fc5c605  loads.w r10, 92(r13)
0012e4  8be17110  add.f.rn r3, r3, r7
0012e8  efc30606  loads.w r7, 96(r13)
0012ec  8be1a110  add.f.rn r3, r3, r10
0012f0  6fc54606  loads.w r10, 100(r13)
0012f4  8be17110  add.f.rn r3, r3, r7
0012f8  efc38606  loads.w r7, 104(r13)
0012fc  8be1a110  add.f.rn r3, r3, r10
001300  6fc5c606  loads.w r10, 108(r13)
001304  8be17110  add.f.rn r3, r3, r7
001308  efc30607  loads.w r7, 112(r13)
00130c  8be1a110  add.f.rn r3, r3, r10
001310  6fc54607  loads.w r10, 116(r13)
001314  8be17110  add.f.rn r3, r3, r7
001318  efc38607  loads.w r7, 120(r13)
00131c  8be1a110  add.f.rn r3, r3, r10
001320  6fc5c607  loads.w r10, 124(r13)
001324  8be17110  add.f.rn r3, r3, r7
001328  efc30608  loads.w r7, 128(r13)
00132c  8be1a110  add.f.rn r3, r3, r10
001330  6fc54608  loads.w r10, 132(r13)
001334  8be17110  add.f.rn r3, r3, r7
001338  efc38608  loads.w r7, 136(r13)
00133c  8be1a110  add.f.rn r3, r3, r10
001340  6fc5c608  loads.w r10, 140(r13)
001344  8be17110  add.f.rn r3, r3, r7
001348  efc30609  loads.w r7, 144(r13)
00134c  8be1a110  add.f.rn r3, r3, r10
001350  6fc54609  loads.w r10, 148(r13)
001354  8be17110  add.f.rn r3, r3, r7
001358  efc38609  loads.w r7, 152(r13)
00135c  8be1a110  add.f.rn r3, r3, r10
001360  6fc5c609  loads.w r10, 156(r13)
001364  8be17110  add.f.rn r3, r3, r7
001368  efc3060a  loads.w r7, 160(r13)
00136c  8be1a110  add.f.rn r3, r3, r10
001370  6fc5460a  loads.w r10, 164(r13)
001374  8be17110  add.f.rn r3, r3, r7
001378  efc3860a  loads.w r7, 168(r13)
00137c  8be1a110  add.f.rn r3, r3, r10
001380  6fc5c60a  loads.w r10, 172(r13)
001384  8be17110  add.f.rn r3, r3, r7
001388  efc3060b  loads.w r7, 176(r13)
00138c  8be1a110  add.f.rn r3, r3, r10
001390  6fc5460b  loads.w r10, 180(r13)
001394  8be17110  add.f.rn r3, r3, r7
001398  efc3860b  loads.w r7, 184(r13)
00139c  8be1a110  add.f.rn r3, r3, r10
0013a0  6fc5c60b  loads.w r10, 188(r13)
0013a4  8be17110  add.f.rn r3, r3, r7
0013a8  efc3060c  loads.w r7, 192(r13)
0013ac  8be1a110  add.f.rn r3, r3, r10
0013b0  6fc5460c  loads.w r10, 196(r13)
0013b4  8be17110  add.f.rn r3, r3, r7
0013b8  efc3860c  loads.w r7, 200(r13)
0013bc  8be1a110  add.f.rn r3, r3, r10
0013c0  6fc5c60c  loads.w r10, 204(r13)
0013c4  8be17110  add.f.rn r3, r3, r7
0013c8  efc3060d  loads.w r7, 208(r13)
0013cc  8be1a110  add.f.rn r3, r3, r10
0013d0  6fc5460d  loads.w r10, 212(r13)
0013d4  8be17110  add.f.rn r3, r3, r7
0013d8  efc3860d  loads.w r7, 216(r13)
0013dc  8be1a110  add.f.rn r3, r3, r10
0013e0  6fc5c60d  loads.w r10, 220(r13)
0013e4  8be17110  add.f.rn r3, r3, r7
0013e8  efc3060e  loads.w r7, 224(r13)
0013ec  8be1a110  add.f.rn r3, r3, r10
0013f0  6fc5460e  loads.w r10, 228(r13)
0013f4  8be17110  add.f.rn r3, r3, r7
0013f8  efc3860e  loads.w r7, 232(r13)
0013fc  8be1a110  add.f.rn r3, r3, r10
001400  6fc5c60e  loads.w r10, 236(r13)
001404  8be17110  add.f.rn r3, r3, r7
001408  efc3060f  loads.w r7, 240(r13)
00140c  8be1a110  add.f.rn r3, r3, r10
001410  6fc5460f  loads.w r10, 244(r13)
001414  8be17110  add.f.rn r3, r3, r7
001418  efc3860f  loads.w r7, 248(r13)
00141c  8be1a110  add.f.rn r3, r3, r10
001420  6fc5c60f  loads.w r10, 252(r13)
001424  8be17110  add.f.rn r3, r3, r7
001428  8be1a110  add.f.rn r3, r3, r10
00142c  73e03600  stores.w r3, 0(r13)
001430  00a00300  mfence { lm, sm, gm }
001434  80a10704  csr_set csr3, r15
001438  00d00100  sync_group
00143c  e3412ffd  loadli.w r3,  -364(r30)
001440  ab03803a  lui r7, 239616
001444  efc10100  loads.w r3, 0(r3)
001448  8be17120  mul.f.rn r3, r3, r7
00144c  e3435ffc  loadli.w r7,  -468(r30)
001450  8be17110  add.f.rn r3, r3, r7
001454  ab03803f  lui r7, 260096
001458  8f810108  sqrt.f.rn r3, r3
00145c  8f813318  div.f.rn r3, r7, r3
001460  8bed3920  mul.f.rn r27, r19, r3
001464  178a0d01  and r20, r27, r16
001468  93034b05  setlt.u r7, r22, r20
00146c  3bb00300  bneq r7, zero, 12
001470  e742bfff  storeli.w r27, -212(r30)
001474  db010000  j 12
001478  97939d01  or r7, r27, r25
00147c  e7427ffe  storeli.w r7, -212(r30)
001480  8b6b3920  mul.f.rn r23, r18, r3
001484  97830b01  and r7, r23, r16
001488  670c7ffc  storeli.w r7, -320(r30)
00148c  93037b04  setlt.u r7, r22, r7
001490  3bb00300  bneq r7, zero, 12
001494  e7027fff  storeli.w r23, -216(r30)
001498  db010000  j 12
00149c  97939b01  or r7, r23, r25
0014a0  e7027ffe  storeli.w r7, -216(r30)
0014a4  8be83820  mul.f.rn r17, r17, r3
0014a8  97830801  and r7, r17, r16
0014ac  13057b04  setlt.u r10, r22, r7
0014b0  e70b7ffc  storeli.w r7, -328(r30)
0014b4  3b300500  bneq r10, zero, 12
0014b8  67421fff  storeli.w r17, -220(r30)
0014bc  db010000  j 12
0014c0  97939801  or r7, r17, r25
0014c4  67427ffe  storeli.w r7, -220(r30)
0014c8  0b633320  mul.f.rn r6, r6, r3
0014cc  97090301  and r19, r6, r16
0014d0  13053b05  setlt.u r10, r22, r19
0014d4  3b300500  bneq r10, zero, 12
0014d8  67026ffe  storeli.w r6, -224(r30)
0014dc  db010000  j 12
0014e0  97139301  or r7, r6, r25
0014e4  67027ffe  storeli.w r7, -224(r30)
0014e8  8be53520  mul.f.rn r11, r11, r3
0014ec  e74deffc  storeli.w r14, -292(r30)
0014f0  97830501  and r7, r11, r16
0014f4  13057b04  setlt.u r10, r22, r7
0014f8  670b7ffc  storeli.w r7, -336(r30)
0014fc  3b300500  bneq r10, zero, 12
001500  e741bffe  storeli.w r11, -228(r30)
001504  db010000  j 12
001508  97939501  or r7, r11, r25
00150c  e7417ffe  storeli.w r7, -228(r30)
001510  8be03020  mul.f.rn r1, r1, r3
001514  ab034000  lui r7, 1024
001518  ab0c807f  lui r25, 522240
00151c  17870001  and r14, r1, r16
001520  1305eb04  setlt.u r10, r22, r14
001524  3b300500  bneq r10, zero, 12
001528  e7011ffe  storeli.w r1, -232(r30)
00152c  db010000  j 12
001530  17957000  or r10, r1, r7
001534  e701affe  storeli.w r10, -232(r30)
001538  0b623220  mul.f.rn r4, r4, r3
00153c  170b0201  and r22, r4, r16
001540  13856c05  setlt.u r10, r25, r22
001544  3b300500  bneq r10, zero, 12
001548  67414ffe  storeli.w r4, -236(r30)
00154c  db010000  j 12
001550  17157200  or r10, r4, r7
001554  6741affe  storeli.w r10, -236(r30)
001558  0b643420  mul.f.rn r8, r8, r3
00155c  97060401  and r13, r8, r16
001560  1385dc04  setlt.u r10, r25, r13
001564  3b300500  bneq r10, zero, 12
001568  67018ffe  storeli.w r8, -240(r30)
00156c  db010000  j 12
001570  17157400  or r10, r8, r7
001574  6701affe  storeli.w r10, -240(r30)
001578  8be23220  mul.f.rn r5, r5, r3
00157c  17850201  and r10, r5, r16
001580  9387ac04  setlt.u r15, r25, r10
001584  3bb00700  bneq r15, zero, 12
001588  e7405ffe  storeli.w r5, -244(r30)
00158c  db010000  j 12
001590  97977200  or r15, r5, r7
001594  e740fffe  storeli.w r15, -244(r30)
001598  0b6d3620  mul.f.rn r26, r12, r3
00159c  170c0d01  and r24, r26, r16
0015a0  13868c05  setlt.u r12, r25, r24
0015a4  3b300600  bneq r12, zero, 12
0015a8  e700afff  storeli.w r26, -248(r30)
0015ac  db010000  j 12
0015b0  17167d00  or r12, r26, r7
0015b4  e700cffe  storeli.w r12, -248(r30)
0015b8  0b6e3120  mul.f.rn r28, r2, r3
0015bc  17090e01  and r18, r28, r16
0015c0  13812c05  setlt.u r2, r25, r18
0015c4  3b300100  bneq r2, zero, 12
0015c8  6740cfff  storeli.w r28, -252(r30)
0015cc  db010000  j 12
0015d0  17117e00  or r2, r28, r7
0015d4  67402ffe  storeli.w r2, -252(r30)
0015d8  8be43420  mul.f.rn r9, r9, r3
0015dc  17810401  and r2, r9, r16
0015e0  e70a2ffc  storeli.w r2, -344(r30)
0015e4  13812c04  setlt.u r2, r25, r2
0015e8  3b300100  bneq r2, zero, 12
0015ec  67009ffe  storeli.w r9, -256(r30)
0015f0  db010000  j 12
0015f4  17917400  or r2, r9, r7
0015f8  67002ffe  storeli.w r2, -256(r30)
0015fc  0be13a20  mul.f.rn r2, r21, r3
001600  17060101  and r12, r2, r16
001604  674acffc  storeli.w r12, -348(r30)
001608  1386cc04  setlt.u r12, r25, r12
00160c  3b300600  bneq r12, zero, 12
001610  67432ffe  storeli.w r2, -204(r30)
001614  db010000  j 12
001618  17167100  or r12, r2, r7
00161c  6743cffe  storeli.w r12, -204(r30)
001620  6346fffd  loadli.w r12,  -260(r30)
001624  0b663620  mul.f.rn r12, r12, r3
001628  97070601  and r15, r12, r16
00162c  e70cfffc  storeli.w r15, -312(r30)
001630  9387fc04  setlt.u r15, r25, r15
001634  3bb00700  bneq r15, zero, 12
001638  e74fcffc  storeli.w r12, -260(r30)
00163c  db010000  j 12
001640  97177600  or r15, r12, r7
001644  e74ffffc  storeli.w r15, -260(r30)
001648  e307fffd  loadli.w r15,  -264(r30)
00164c  8bea3720  mul.f.rn r21, r15, r3
001650  97870a01  and r15, r21, r16
001654  e7495ffd  storeli.w r21, -356(r30)
001658  670dfffc  storeli.w r15, -304(r30)
00165c  9387fc04  setlt.u r15, r25, r15
001660  3bb00700  bneq r15, zero, 12
001664  e70f5ffd  storeli.w r21, -264(r30)
001668  db010000  j 12
00166c  97937a00  or r7, r21, r7
001670  e70f7ffc  storeli.w r7, -264(r30)
001674  e343bffd  loadli.w r7,  -292(r30)
001678  e3477ffe  loadli.w r15,  -196(r30)
00167c  8be33320  mul.f.rn r7, r7, r3
001680  97810301  and r3, r7, r16
001684  e70d3ffc  storeli.w r3, -296(r30)
001688  93813c04  setlt.u r3, r25, r3
00168c  3bd00100  bneq r3, zero, 20
001690  e74d7ffc  storeli.w r7, -292(r30)
001694  93814705  setlt.u r3, r15, r20
001698  37f00100  beq r3, zero, 28
00169c  db070000  j 60
0016a0  ab014000  lui r3, 1024
0016a4  97913300  or r3, r7, r3
0016a8  e74d3ffc  storeli.w r3, -292(r30)
0016ac  93814705  setlt.u r3, r15, r20
0016b0  bba00100  bneq r3, zero, 40
0016b4  9bc10d01  srli r3, r27, 16
0016b8  e3076ffe  loadli.w r15,  -208(r30)
0016bc  2b08ffff  lui r16, 1048560
0016c0  9b811100  andi r3, r3, 1
0016c4  8b913d10  add.s r3, r27, r3
0016c8  8b91f110  add.s r3, r3, r15
0016cc  e3477ffe  loadli.w r15,  -196(r30)
0016d0  97810101  and r3, r3, r16
0016d4  e7423ffe  storeli.w r3, -212(r30)
0016d8  e3018ffd  loadli.w r3,  -320(r30)
0016dc  63086ffe  loadli.w r16,  -208(r30)
0016e0  670a7ffc  storeli.w r7, -352(r30)
0016e4  93813704  setlt.u r3, r15, r3
0016e8  bb800100  bneq r3, zero, 32
0016ec  9bc10b01  srli r3, r23, 16
0016f0  2b0affff  lui r20, 1048560
0016f4  9b811100  andi r3, r3, 1
0016f8  8b913b10  add.s r3, r23, r3
0016fc  8b910111  add.s r3, r3, r16
001700  97814101  and r3, r3, r20
001704  e7023ffe  storeli.w r3, -216(r30)
001708  e3017ffd  loadli.w r3,  -328(r30)
00170c  ab03ffff  lui r7, 1048560
001710  93813704  setlt.u r3, r15, r3
001714  3bf00100  bneq r3, zero, 28
001718  9bc10801  srli r3, r17, 16
00171c  9b811100  andi r3, r3, 1
001720  8b913810  add.s r3, r17, r3
001724  8b910111  add.s r3, r3, r16
001728  97817100  and r3, r3, r7
00172c  67423ffe  storeli.w r3, -220(r30)
001730  93813705  setlt.u r3, r15, r19
001734  3bf00100  bneq r3, zero, 28
001738  9b410301  srli r3, r6, 16
00173c  9b811100  andi r3, r3, 1
001740  8b113310  add.s r3, r6, r3
001744  8b910111  add.s r3, r3, r16
001748  97817100  and r3, r3, r7
00174c  67023ffe  storeli.w r3, -224(r30)
001750  e3016ffd  loadli.w r3,  -336(r30)
001754  93813704  setlt.u r3, r15, r3
001758  378b0100  beq r3, zero, 704
00175c  9381e704  setlt.u r3, r15, r14
001760  37eb0100  beq r3, zero, 728
001764  93806705  setlt.u r1, r15, r22
001768  3bf00000  bneq r1, zero, 28
00176c  9b400201  srli r1, r4, 16
001770  9b801000  andi r1, r1, 1
001774  8b101210  add.s r1, r4, r1
001778  8b900011  add.s r1, r1, r16
00177c  97807000  and r1, r1, r7
001780  67411ffe  storeli.w r1, -236(r30)
001784  9380d704  setlt.u r1, r15, r13
001788  e3416ffe  loadli.w r3,  -204(r30)
00178c  37cb0000  beq r1, zero, 720
001790  9380a704  setlt.u r1, r15, r10
001794  b7ab0000  beq r1, zero, 744
001798  93808705  setlt.u r1, r15, r24
00179c  378c0000  beq r1, zero, 768
0017a0  93802705  setlt.u r1, r15, r18
0017a4  3bf00000  bneq r1, zero, 28
0017a8  9b400e01  srli r1, r28, 16
0017ac  9b801000  andi r1, r1, 1
0017b0  8b101e10  add.s r1, r28, r1
0017b4  8b900011  add.s r1, r1, r16
0017b8  97807000  and r1, r1, r7
0017bc  67401ffe  storeli.w r1, -252(r30)
0017c0  e3005ffd  loadli.w r1,  -344(r30)
0017c4  93801704  setlt.u r1, r15, r1
0017c8  3bf00000  bneq r1, zero, 28
0017cc  9bc00401  srli r1, r9, 16
0017d0  9b801000  andi r1, r1, 1
0017d4  8b901410  add.s r1, r9, r1
0017d8  8b900011  add.s r1, r1, r16
0017dc  97807000  and r1, r1, r7
0017e0  67001ffe  storeli.w r1, -256(r30)
0017e4  e3404ffd  loadli.w r1,  -348(r30)
0017e8  93801704  setlt.u r1, r15, r1
0017ec  3be00000  bneq r1, zero, 24
0017f0  9b400101  srli r1, r2, 16
0017f4  9b801000  andi r1, r1, 1
0017f8  8b101110  add.s r1, r2, r1
0017fc  8b900011  add.s r1, r1, r16
001800  97817000  and r3, r1, r7
001804  e340effc  loadli.w r1,  -396(r30)
001808  e304cffd  loadli.w r9,  -288(r30)
00180c  63019ffd  loadli.w r2,  -312(r30)
001810  67433ffe  storeli.w r3, -204(r30)
001814  0b939010  add.s r6, r1, r9
001818  e300effc  loadli.w r1,  -400(r30)
00181c  8b929010  add.s r5, r1, r9
001820  e340dffc  loadli.w r1,  -404(r30)
001824  8b939010  add.s r7, r1, r9
001828  e300dffc  loadli.w r1,  -408(r30)
00182c  8b969010  add.s r13, r1, r9
001830  e340cffc  loadli.w r1,  -412(r30)
001834  8b959010  add.s r11, r1, r9
001838  e300cffc  loadli.w r1,  -416(r30)
00183c  8b979010  add.s r15, r1, r9
001840  e340bffc  loadli.w r1,  -420(r30)
001844  0b999010  add.s r18, r1, r9
001848  e300bffc  loadli.w r1,  -424(r30)
00184c  8b989010  add.s r17, r1, r9
001850  e340affc  loadli.w r1,  -428(r30)
001854  0b929010  add.s r4, r1, r9
001858  e3407ffe  loadli.w r1,  -196(r30)
00185c  13842004  setlt.u r8, r1, r2
001860  e300affc  loadli.w r1,  -432(r30)
001864  63417ffc  loadli.w r2,  -452(r30)
001868  0b9b9010  add.s r22, r1, r9
00186c  e3409ffc  loadli.w r1,  -436(r30)
001870  0b119110  add.s r2, r2, r9
001874  8b9a9010  add.s r21, r1, r9
001878  e3009ffc  loadli.w r1,  -440(r30)
00187c  0b9d9010  add.s r26, r1, r9
001880  e3408ffc  loadli.w r1,  -444(r30)
001884  8b919010  add.s r3, r1, r9
001888  e3008ffc  loadli.w r1,  -448(r30)
00188c  8b909010  add.s r1, r1, r9
001890  bb000400  bneq r8, zero, 32
001894  1b440601  srli r8, r12, 16
001898  ab04ffff  lui r9, 1048560
00189c  1b041400  andi r8, r8, 1
0018a0  0b148610  add.s r8, r12, r8
0018a4  0b140411  add.s r8, r8, r16
0018a8  17049400  and r8, r8, r9
0018ac  e74f8ffc  storeli.w r8, -260(r30)
0018b0  33140328  sext_int2long r[9:10], r6
0018b4  1f160000  addli r12, zero, 1
0018b8  b3920228  sext_int2long r[6:7], r5
0018bc  1734c402  sll.d r[9:10], r[9:10], r12
0018c0  97b2c202  sll.d r[6:7], r[6:7], r12
0018c4  73308fee  store.d r[9:10], -288(r30)
0018c8  b3940328  sext_int2long r[10:11], r7
0018cc  73345fec  store.d r[6:7], -312(r30)
0018d0  e303affd  loadli.w r7,  -304(r30)
0018d4  97b2c402  sll.d r[6:7], r[10:11], r12
0018d8  33140128  sext_int2long r[9:10], r2
0018dc  73385fea  store.d r[6:7], -336(r30)
0018e0  b3920628  sext_int2long r[6:7], r13
0018e4  b3960528  sext_int2long r[14:15], r11
0018e8  97b2c202  sll.d r[6:7], r[6:7], r12
0018ec  97b6c602  sll.d r[14:15], r[14:15], r12
0018f0  73345fea  store.d r[6:7], -344(r30)
0018f4  b3920728  sext_int2long r[6:7], r15
0018f8  b3170928  sext_int2long r[16:17], r18
0018fc  97b9c202  sll.d r[20:21], r[6:7], r12
001900  b3920828  sext_int2long r[6:7], r17
001904  97bbc702  sll.d r[24:25], r[16:17], r12
001908  b3170228  sext_int2long r[16:17], r4
00190c  97bdc202  sll.d r[28:29], r[6:7], r12
001910  63437ffe  loadli.w r6,  -196(r30)
001914  33120b28  sext_int2long r[5:6], r22
001918  b39a0a28  sext_int2long r[22:23], r21
00191c  97b7c702  sll.d r[16:17], r[16:17], r12
001920  9738c202  sll.d r[18:19], r[5:6], r12
001924  33120d28  sext_int2long r[5:6], r26
001928  b39c0128  sext_int2long r[26:27], r3
00192c  97baca02  sll.d r[22:23], r[22:23], r12
001930  93037304  setlt.u r7, r6, r7
001934  9731c202  sll.d r[4:5], r[5:6], r12
001938  b3920028  sext_int2long r[6:7], r1
00193c  97bccc02  sll.d r[26:27], r[26:27], r12
001940  97b0c202  sll.d r[2:3], r[6:7], r12
001944  9732c402  sll.d r[6:7], r[9:10], r12
001948  bba00300  bneq r7, zero, 40
00194c  63443ffd  loadli.w r8,  -356(r30)
001950  9b430401  srli r7, r8, 16
001954  9b831300  andi r7, r7, 1
001958  8b137410  add.s r7, r8, r7
00195c  63046ffe  loadli.w r8,  -208(r30)
001960  8b938310  add.s r7, r7, r8
001964  2b04ffff  lui r8, 1048560
001968  97838300  and r7, r7, r8
00196c  e70f7ffc  storeli.w r7, -264(r30)
001970  eb530f01  load.d r[8:9], 16(r30)
001974  eb548fee  load.d r[10:11], -280(r30)
001978  8ba49310  add.ul r[10:11], r[8:9], r[10:11]
00197c  8ba13310  add.ul r[4:5], r[8:9], r[4:5]
001980  8ba6d310  add.ul r[14:15], r[8:9], r[14:15]
001984  8ba93311  add.ul r[20:21], r[8:9], r[20:21]
001988  8bab7311  add.ul r[24:25], r[8:9], r[24:25]
00198c  8ba81311  add.ul r[18:19], r[8:9], r[18:19]
001990  8baa5311  add.ul r[22:23], r[8:9], r[22:23]
001994  73309fec  store.d r[10:11], -320(r30)
001998  eb540fee  load.d r[10:11], -288(r30)
00199c  73343fee  store.d r[4:5], -280(r30)
0019a0  8ba19311  add.ul r[4:5], r[8:9], r[26:27]
0019a4  8bac5310  add.ul r[26:27], r[8:9], r[6:7]
0019a8  e342bffd  loadli.w r5,  -292(r30)
0019ac  8ba49310  add.ul r[10:11], r[8:9], r[10:11]
0019b0  733c9fea  store.d r[10:11], -328(r30)
0019b4  eb548fec  load.d r[10:11], -312(r30)
0019b8  8ba49310  add.ul r[10:11], r[8:9], r[10:11]
0019bc  73389fec  store.d r[10:11], -304(r30)
0019c0  eb540feb  load.d r[10:11], -336(r30)
0019c4  8ba49310  add.ul r[10:11], r[8:9], r[10:11]
0019c8  73349fec  store.d r[10:11], -312(r30)
0019cc  eb548fea  load.d r[10:11], -344(r30)
0019d0  8ba59310  add.ul r[12:13], r[8:9], r[10:11]
0019d4  8ba4b311  add.ul r[10:11], r[8:9], r[28:29]
0019d8  8badf310  add.ul r[28:29], r[8:9], r[16:17]
0019dc  73309fee  store.d r[10:11], -288(r30)
0019e0  e3447ffe  loadli.w r9,  -196(r30)
0019e4  6305bffd  loadli.w r10,  -296(r30)
0019e8  9387a404  setlt.u r15, r9, r10
0019ec  8ba41310  add.ul r[10:11], r[8:9], r[2:3]
0019f0  3bc207f4  bneq r15, zero, -6000
0019f4  63014ffd  loadli.w r2,  -352(r30)
0019f8  9b400101  srli r1, r2, 16
0019fc  9b801000  andi r1, r1, 1
001a00  8b101110  add.s r1, r2, r1
001a04  63016ffe  loadli.w r2,  -208(r30)
001a08  8b902010  add.s r1, r1, r2
001a0c  2b01ffff  lui r2, 1048560
001a10  97822000  and r5, r1, r2
001a14  db0dfdff  j -6036
001a18  9bc10501  srli r3, r11, 16
001a1c  9b811100  andi r3, r3, 1
001a20  8b913510  add.s r3, r11, r3
001a24  8b910111  add.s r3, r3, r16
001a28  97817100  and r3, r3, r7
001a2c  e7413ffe  storeli.w r3, -228(r30)
001a30  9381e704  setlt.u r3, r15, r14
001a34  bbc401fe  bneq r3, zero, -720
001a38  9bc10001  srli r3, r1, 16
001a3c  9b811100  andi r3, r3, 1
001a40  8b903010  add.s r1, r1, r3
001a44  8b900011  add.s r1, r1, r16
001a48  97807000  and r1, r1, r7
001a4c  e7011ffe  storeli.w r1, -232(r30)
001a50  93806705  setlt.u r1, r15, r22
001a54  37e400fe  beq r1, zero, -744
001a58  dba5ffff  j -724
001a5c  9b400401  srli r1, r8, 16
001a60  9b801000  andi r1, r1, 1
001a64  8b101410  add.s r1, r8, r1
001a68  8b900011  add.s r1, r1, r16
001a6c  97807000  and r1, r1, r7
001a70  67011ffe  storeli.w r1, -240(r30)
001a74  9380a704  setlt.u r1, r15, r10
001a78  bb8400fe  bneq r1, zero, -736
001a7c  9bc00201  srli r1, r5, 16
001a80  9b801000  andi r1, r1, 1
001a84  8b901210  add.s r1, r5, r1
001a88  8b900011  add.s r1, r1, r16
001a8c  97807000  and r1, r1, r7
001a90  e7401ffe  storeli.w r1, -244(r30)
001a94  93808705  setlt.u r1, r15, r24
001a98  3ba400fe  bneq r1, zero, -760
001a9c  9b400d01  srli r1, r26, 16
001aa0  9b801000  andi r1, r1, 1
001aa4  8b101d10  add.s r1, r26, r1
001aa8  8b900011  add.s r1, r1, r16
001aac  97807000  and r1, r1, r7
001ab0  e7001ffe  storeli.w r1, -248(r30)
001ab4  93802705  setlt.u r1, r15, r18
001ab8  b7c300fe  beq r1, zero, -784
001abc  dba0ffff  j -764
001ac0  9f0e0ffc  addli sp, r30, -512
001ac4  9f8e0e04  addli sp, sp, 512
001ac8  00a00300  mfence { lm, sm, gm }
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
001d04  00100000  exit
001d08  00100000  exit
001d0c  00100000  exit
