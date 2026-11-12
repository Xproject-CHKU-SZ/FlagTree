; SHA-256 493df8cda6abf642c91619ad0db49ec433648ccf3aaf7d8c6639ef8f0c137c07
; P800 Cluster · XTDK LLVM 19 · 4423 / 4423 words decoded
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
00012c  67478ffc  storeli.w r8, -396(r30)
000130  73605400  stores.w r5, 0(r8)
000134  0b126220  mul.s r4, r4, r6
000138  00a00300  mfence { lm, sm, gm }
00013c  80a10404  csr_set csr3, r9
000140  00d00100  sync_group
000144  67074ffc  storeli.w r4, -400(r30)
000148  4b16a220  ble.s r4, r10, 16772
00014c  1f028000  addli r4, zero, 64
000150  e343effc  loadli.w r7,  -396(r30)
000154  9f150000  addli r11, zero, 1
000158  eb528f00  load.d r[6:7], 8(r30)
00015c  ab0d4000  lui r27, 1024
000160  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000164  e7479ffc  storeli.w r9, -388(r30)
000168  0b924030  div.s r4, r1, r4
00016c  9f832308  addli r7, r7, 1040
000170  e7067ffc  storeli.w r7, -408(r30)
000174  80d30002  load_param_i r7, 1
000178  67067ffc  storeli.w r7, -416(r30)
00017c  e7464ffc  storeli.w r4, -404(r30)
000180  1b326200  slli r4, r4, 6
000184  0b924018  sub.s r4, r1, r4
000188  9b80f003  andi r1, r1, 63
00018c  1b324200  slli r4, r4, 4
000190  670f1ffc  storeli.w r1, -272(r30)
000194  9b131200  ori r7, r4, 1
000198  67464ffc  storeli.w r4, -412(r30)
00019c  e7457ffc  storeli.w r7, -420(r30)
0001a0  9b132200  ori r7, r4, 2
0001a4  e7057ffc  storeli.w r7, -424(r30)
0001a8  9b133200  ori r7, r4, 3
0001ac  67457ffc  storeli.w r7, -428(r30)
0001b0  9b134200  ori r7, r4, 4
0001b4  67057ffc  storeli.w r7, -432(r30)
0001b8  9b135200  ori r7, r4, 5
0001bc  e7447ffc  storeli.w r7, -436(r30)
0001c0  9b136200  ori r7, r4, 6
0001c4  e7047ffc  storeli.w r7, -440(r30)
0001c8  9b137200  ori r7, r4, 7
0001cc  67447ffc  storeli.w r7, -444(r30)
0001d0  9b138200  ori r7, r4, 8
0001d4  67047ffc  storeli.w r7, -448(r30)
0001d8  9b139200  ori r7, r4, 9
0001dc  e7437ffc  storeli.w r7, -452(r30)
0001e0  9b13a200  ori r7, r4, 10
0001e4  e7037ffc  storeli.w r7, -456(r30)
0001e8  9b13b200  ori r7, r4, 11
0001ec  67437ffc  storeli.w r7, -460(r30)
0001f0  9b13c200  ori r7, r4, 12
0001f4  67037ffc  storeli.w r7, -464(r30)
0001f8  9b13d200  ori r7, r4, 13
0001fc  e7427ffc  storeli.w r7, -468(r30)
000200  9b13e200  ori r7, r4, 14
000204  e7027ffc  storeli.w r7, -472(r30)
000208  9b13f200  ori r7, r4, 15
00020c  67427ffc  storeli.w r7, -476(r30)
000210  b3130228  sext_int2long r[8:9], r4
000214  2bf2ffff  lui r4, 1048575
000218  1b1202f0  ori r4, r4, 3840
00021c  97b3b302  sll.d r[8:9], r[8:9], r11
000220  97814100  and r3, r3, r4
000224  0ba27210  add.ul r[5:6], r[6:7], r[8:9]
000228  1f038ffe  addli r6, r30, -192
00022c  9f034000  addli r7, zero, 32
000230  1f040fff  addli r8, r30, -128
000234  0b912110  add.s r2, r3, r2
000238  733c4fe0  store.d r[5:6], -488(r30)
00023c  9f002108  addli r1, r2, 1040
000240  67032ffe  storeli.w r2, -208(r30)
000244  2bf17f7f  lui r2, 522239
000248  e7071ffc  storeli.w r1, -392(r30)
00024c  ab700000  lui r1, 7
000250  9b90f0ff  ori r1, r1, 4095
000254  67431ffe  storeli.w r1, -204(r30)
000258  abf0ff7f  lui r1, 524287
00025c  1b9bf0ff  ori r22, r1, 4095
000260  9b10f1ff  ori r1, r2, 4095
000264  e7031ffe  storeli.w r1, -200(r30)
000268  9f200000  addli r1, zero, 2
00026c  e7436fff  storeli.w r22, -196(r30)
000270  fe8100e0  vmmov mr3, r1
000274  db420000  j 532
000278  e3405ffe  loadli.w r1,  -212(r30)
00027c  63015ffe  loadli.w r2,  -216(r30)
000280  9f220000  addli r5, zero, 2
000284  1f040fff  addli r8, r30, -128
000288  1f620400  addli r4, r8, 6
00028c  b3900000  float2bfloat.rn r1, r1
000290  33110100  float2bfloat.rn r2, r2
000294  73101ff8  store.h r1, -128(r30)
000298  e3404ffe  loadli.w r1,  -220(r30)
00029c  73112ff8  store.h r2, -126(r30)
0002a0  63014ffe  loadli.w r2,  -224(r30)
0002a4  b3900000  float2bfloat.rn r1, r1
0002a8  33110100  float2bfloat.rn r2, r2
0002ac  73121ff8  store.h r1, -124(r30)
0002b0  e3403ffe  loadli.w r1,  -228(r30)
0002b4  73132ff8  store.h r2, -122(r30)
0002b8  63013ffe  loadli.w r2,  -232(r30)
0002bc  b3900000  float2bfloat.rn r1, r1
0002c0  33110100  float2bfloat.rn r2, r2
0002c4  73141ff8  store.h r1, -120(r30)
0002c8  e3402ffe  loadli.w r1,  -236(r30)
0002cc  73152ff8  store.h r2, -118(r30)
0002d0  63012ffe  loadli.w r2,  -240(r30)
0002d4  b3900000  float2bfloat.rn r1, r1
0002d8  33110100  float2bfloat.rn r2, r2
0002dc  73161ff8  store.h r1, -116(r30)
0002e0  e3401ffe  loadli.w r1,  -244(r30)
0002e4  73172ff8  store.h r2, -114(r30)
0002e8  63011ffe  loadli.w r2,  -248(r30)
0002ec  b3900000  float2bfloat.rn r1, r1
0002f0  33110100  float2bfloat.rn r2, r2
0002f4  73181ff8  store.h r1, -112(r30)
0002f8  e3400ffe  loadli.w r1,  -252(r30)
0002fc  73192ff8  store.h r2, -110(r30)
000300  63010ffe  loadli.w r2,  -256(r30)
000304  b3900000  float2bfloat.rn r1, r1
000308  33110100  float2bfloat.rn r2, r2
00030c  731a1ff8  store.h r1, -108(r30)
000310  e340fffd  loadli.w r1,  -260(r30)
000314  731b2ff8  store.h r2, -106(r30)
000318  6301fffd  loadli.w r2,  -264(r30)
00031c  b3900000  float2bfloat.rn r1, r1
000320  33110100  float2bfloat.rn r2, r2
000324  731c1ff8  store.h r1, -104(r30)
000328  e340effd  loadli.w r1,  -268(r30)
00032c  731d2ff8  store.h r2, -102(r30)
000330  33910100  float2bfloat.rn r2, r3
000334  9f210400  addli r3, r8, 2
000338  731f2ff8  store.h r2, -98(r30)
00033c  2b0100f0  lui r2, 983040
000340  b3900000  float2bfloat.rn r1, r1
000344  17912200  or r2, r5, r2
000348  731e1ff8  store.h r1, -100(r30)
00034c  ab0000f0  lui r1, 983040
000350  00a00000  mfence { lm }
000354  6b538fea  load.d r[7:8], -344(r30)
000358  97901200  or r1, r5, r1
00035c  ff308300  s_lm2gm r1, r8, 0(r[7:8])
000360  6b530fea  load.d r[7:8], -352(r30)
000364  9f400400  addli r1, r8, 4
000368  7f313300  s_lm2gm r2, r3, 0(r[7:8])
00036c  2b0100f0  lui r2, 983040
000370  6b538feb  load.d r[7:8], -328(r30)
000374  ab0100f0  lui r3, 983040
000378  17912200  or r2, r5, r2
00037c  97913200  or r3, r5, r3
000380  7f311300  s_lm2gm r2, r1, 0(r[7:8])
000384  eb500feb  load.d r[2:3], -336(r30)
000388  6b530fec  load.d r[7:8], -320(r30)
00038c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000390  ab0100f0  lui r3, 983040
000394  2b0200f0  lui r4, 983040
000398  9f001400  addli r1, r8, 8
00039c  1f211400  addli r2, r8, 10
0003a0  97913200  or r3, r5, r3
0003a4  17924200  or r4, r5, r4
0003a8  ff311300  s_lm2gm r3, r1, 0(r[7:8])
0003ac  7f322600  s_lm2gm r4, r2, 0(r[13:14])
0003b0  ab0100f0  lui r3, 983040
0003b4  2b0200f0  lui r4, 983040
0003b8  9f401400  addli r1, r8, 12
0003bc  1f611400  addli r2, r8, 14
0003c0  eb558fed  load.d r[12:13], -296(r30)
0003c4  9f034000  addli r7, zero, 32
0003c8  97913200  or r3, r5, r3
0003cc  17924200  or r4, r5, r4
0003d0  ff311700  s_lm2gm r3, r1, 0(r[15:16])
0003d4  7f322a00  s_lm2gm r4, r2, 0(r[21:22])
0003d8  ab0100f0  lui r3, 983040
0003dc  2b0200f0  lui r4, 983040
0003e0  9f002400  addli r1, r8, 16
0003e4  1f212400  addli r2, r8, 18
0003e8  97913200  or r3, r5, r3
0003ec  17924200  or r4, r5, r4
0003f0  ffb11500  s_lm2gm r3, r1, 0(r[12:13])
0003f4  7fb22b00  s_lm2gm r4, r2, 0(r[24:25])
0003f8  ab0100f0  lui r3, 983040
0003fc  2b0200f0  lui r4, 983040
000400  9f402400  addli r1, r8, 20
000404  1f612400  addli r2, r8, 22
000408  97913200  or r3, r5, r3
00040c  17924200  or r4, r5, r4
000410  ffb11400  s_lm2gm r3, r1, 0(r[10:11])
000414  7fb22c00  s_lm2gm r4, r2, 0(r[26:27])
000418  ab0100f0  lui r3, 983040
00041c  2b0200f0  lui r4, 983040
000420  eb540fee  load.d r[10:11], -288(r30)
000424  9f003400  addli r1, r8, 24
000428  1f213400  addli r2, r8, 26
00042c  97913200  or r3, r5, r3
000430  17924200  or r4, r5, r4
000434  ffb11400  s_lm2gm r3, r1, 0(r[10:11])
000438  7fb22800  s_lm2gm r4, r2, 0(r[18:19])
00043c  ab0100f0  lui r3, 983040
000440  2b0200f0  lui r4, 983040
000444  9f403400  addli r1, r8, 28
000448  1f613400  addli r2, r8, 30
00044c  6345dffd  loadli.w r10,  -276(r30)
000450  97913200  or r3, r5, r3
000454  17924200  or r4, r5, r4
000458  eb528fec  load.d r[6:7], -312(r30)
00045c  ffb11d00  s_lm2gm r3, r1, 0(r[28:29])
000460  e300cffc  loadli.w r1,  -416(r30)
000464  ab0d4000  lui r27, 1024
000468  7fb22200  s_lm2gm r4, r2, 0(r[6:7])
00046c  1f038ffe  addli r6, r30, -192
000470  00a00000  mfence { lm }
000474  0b151510  add.s r10, r10, r1
000478  e300effc  loadli.w r1,  -400(r30)
00047c  634b7ffe  loadli.w r22,  -196(r30)
000480  3f201500  blt.s r10, r1, 8
000484  5bc90700  j 15944
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
0004b0  e74eaffc  storeli.w r10, -276(r30)
0004b4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0004b8  1f190000  addli r18, zero, 1
0004bc  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0004c0  7e0109e0  vmmov mr2, r18
0004c4  8b101530  div.s r1, r10, r1
0004c8  8b902030  div.s r1, r1, r2
0004cc  6341dffc  loadli.w r2,  -404(r30)
0004d0  8b982010  add.s r17, r1, r2
0004d4  e340cffc  loadli.w r1,  -412(r30)
0004d8  1bb1a800  slli r2, r17, 10
0004dc  8b101110  add.s r1, r2, r1
0004e0  e70d2ffc  storeli.w r2, -296(r30)
0004e4  2b0100f0  lui r2, 983040
0004e8  b3910028  sext_int2long r[4:5], r1
0004ec  17912300  or r2, r7, r2
0004f0  ab0000f0  lui r1, 983040
0004f4  97b45102  sll.d r[10:11], r[4:5], r5
0004f8  eb510f00  load.d r[4:5], 0(r30)
0004fc  97901300  or r1, r7, r1
000500  73309fee  store.d r[10:11], -288(r30)
000504  8ba19110  add.ul r[4:5], r[4:5], r[10:11]
000508  7fa16100  l_gm2lm r2, r6, 0(r[4:5])
00050c  6b518fe1  load.d r[3:4], -488(r30)
000510  ff208100  l_gm2lm r1, r8, 0(r[3:4])
000514  00a00000  mfence { lm }
000518  eb310ff4  load.hu r3, -192(r30)
00051c  6b322ff4  load.hu r4, -190(r30)
000520  6b31aff5  load.hu r2, -166(r30)
000524  eb30cff5  load.hu r1, -164(r30)
000528  eb324ff4  load.hu r5, -188(r30)
00052c  6b336ff4  load.hu r6, -186(r30)
000530  eb338ff4  load.hu r7, -184(r30)
000534  6b34aff4  load.hu r8, -182(r30)
000538  eb34cff4  load.hu r9, -180(r30)
00053c  6b35eff4  load.hu r10, -178(r30)
000540  eb350ff5  load.hu r11, -176(r30)
000544  6b362ff5  load.hu r12, -174(r30)
000548  eb364ff5  load.hu r13, -172(r30)
00054c  6b376ff5  load.hu r14, -170(r30)
000550  eb378ff5  load.hu r15, -168(r30)
000554  6b38eff5  load.hu r16, -162(r30)
000558  b3910118  bfloat2float.rn r3, r3
00055c  33110118  bfloat2float.rn r2, r2
000560  b3900018  bfloat2float.rn r1, r1
000564  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
000568  b3110218  bfloat2float.rn r3, r4
00056c  1f420000  addli r4, zero, 4
000570  7e0002e0  vmmov mr0, r4
000574  1f021000  addli r4, zero, 8
000578  eaa01136  vor.u.mh vr1{mr3}, r3, vr1
00057c  b3910218  bfloat2float.rn r3, r5
000580  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000584  b3110318  bfloat2float.rn r3, r6
000588  7e0002e0  vmmov mr0, r4
00058c  1f022000  addli r4, zero, 16
000590  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000594  b3910318  bfloat2float.rn r3, r7
000598  7e0002e0  vmmov mr0, r4
00059c  1f024000  addli r4, zero, 32
0005a0  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005a4  b3110418  bfloat2float.rn r3, r8
0005a8  7e0002e0  vmmov mr0, r4
0005ac  1f028000  addli r4, zero, 64
0005b0  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005b4  b3910418  bfloat2float.rn r3, r9
0005b8  7e0002e0  vmmov mr0, r4
0005bc  1f020001  addli r4, zero, 128
0005c0  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005c4  b3110518  bfloat2float.rn r3, r10
0005c8  7e0002e0  vmmov mr0, r4
0005cc  1f020002  addli r4, zero, 256
0005d0  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005d4  b3910518  bfloat2float.rn r3, r11
0005d8  7e0002e0  vmmov mr0, r4
0005dc  1f020004  addli r4, zero, 512
0005e0  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005e4  b3110618  bfloat2float.rn r3, r12
0005e8  7e0002e0  vmmov mr0, r4
0005ec  1f020008  addli r4, zero, 1024
0005f0  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005f4  b3910618  bfloat2float.rn r3, r13
0005f8  7e0002e0  vmmov mr0, r4
0005fc  1f020010  addli r4, zero, 2048
000600  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000604  b3110718  bfloat2float.rn r3, r14
000608  7e0002e0  vmmov mr0, r4
00060c  1f020020  addli r4, zero, 4096
000610  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000614  b3910718  bfloat2float.rn r3, r15
000618  7e0002e0  vmmov mr0, r4
00061c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000620  9f010040  addli r3, zero, 8192
000624  7e8001e0  vmmov mr0, r3
000628  ea201130  vor.u.mh vr1{mr0}, r2, vr1
00062c  2b410000  lui r2, 4
000630  7e0001e0  vmmov mr0, r2
000634  2b810000  lui r2, 8
000638  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00063c  b3100818  bfloat2float.rn r1, r16
000640  7e0001e0  vmmov mr0, r2
000644  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000648  eb300ff8  load.hu r1, -128(r30)
00064c  6b312ff8  load.hu r2, -126(r30)
000650  eb314ff8  load.hu r3, -124(r30)
000654  6b326ff8  load.hu r4, -122(r30)
000658  eb328ff8  load.hu r5, -120(r30)
00065c  6b33aff8  load.hu r6, -118(r30)
000660  eb33cff8  load.hu r7, -116(r30)
000664  6b34eff8  load.hu r8, -114(r30)
000668  eb340ff9  load.hu r9, -112(r30)
00066c  6b352ff9  load.hu r10, -110(r30)
000670  eb354ff9  load.hu r11, -108(r30)
000674  6b366ff9  load.hu r12, -106(r30)
000678  eb368ff9  load.hu r13, -104(r30)
00067c  6b37aff9  load.hu r14, -102(r30)
000680  eb37cff9  load.hu r15, -100(r30)
000684  6b38eff9  load.hu r16, -98(r30)
000688  b3900018  bfloat2float.rn r1, r1
00068c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000690  b3100118  bfloat2float.rn r1, r2
000694  1f410000  addli r2, zero, 4
000698  7e0101e0  vmmov mr2, r2
00069c  1f011000  addli r2, zero, 8
0006a0  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0006a4  b3900118  bfloat2float.rn r1, r3
0006a8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006ac  b3100218  bfloat2float.rn r1, r4
0006b0  7e0101e0  vmmov mr2, r2
0006b4  1f012000  addli r2, zero, 16
0006b8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006bc  b3900218  bfloat2float.rn r1, r5
0006c0  7e0101e0  vmmov mr2, r2
0006c4  1f014000  addli r2, zero, 32
0006c8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006cc  b3100318  bfloat2float.rn r1, r6
0006d0  7e0101e0  vmmov mr2, r2
0006d4  1f018000  addli r2, zero, 64
0006d8  2b03807f  lui r6, 522240
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
000780  e30a8fff  loadli.w r21,  -64(r30)
000784  634a8fff  loadli.w r20,  -60(r30)
000788  e3099fff  loadli.w r19,  -56(r30)
00078c  63499fff  loadli.w r18,  -52(r30)
000790  6307afff  loadli.w r14,  -48(r30)
000794  e346afff  loadli.w r13,  -44(r30)
000798  e302bfff  loadli.w r5,  -40(r30)
00079c  6348bfff  loadli.w r16,  -36(r30)
0007a0  e305cfff  loadli.w r11,  -32(r30)
0007a4  6344cfff  loadli.w r8,  -28(r30)
0007a8  e303dfff  loadli.w r7,  -24(r30)
0007ac  6346dfff  loadli.w r12,  -20(r30)
0007b0  e307efff  loadli.w r15,  -16(r30)
0007b4  e341efff  loadli.w r3,  -12(r30)
0007b8  630effff  loadli.w r28,  -8(r30)
0007bc  6342ffff  loadli.w r4,  -4(r30)
0007c0  17816a01  and r2, r21, r22
0007c4  93002304  setlt.u r1, r6, r2
0007c8  3bb00000  bneq r1, zero, 12
0007cc  67415fff  storeli.w r21, -236(r30)
0007d0  db010000  j 12
0007d4  9790ba01  or r1, r21, r27
0007d8  67411ffe  storeli.w r1, -236(r30)
0007dc  170d6a01  and r26, r20, r22
0007e0  9300a305  setlt.u r1, r6, r26
0007e4  3bb00000  bneq r1, zero, 12
0007e8  e7014fff  storeli.w r20, -232(r30)
0007ec  db010000  j 12
0007f0  9710ba01  or r1, r20, r27
0007f4  e7011ffe  storeli.w r1, -232(r30)
0007f8  978c6901  and r25, r19, r22
0007fc  e7001fff  storeli.w r17, -248(r30)
000800  93009305  setlt.u r1, r6, r25
000804  3bb00000  bneq r1, zero, 12
000808  e7413fff  storeli.w r19, -228(r30)
00080c  db010000  j 12
000810  9790b901  or r1, r19, r27
000814  e7411ffe  storeli.w r1, -228(r30)
000818  170c6901  and r24, r18, r22
00081c  93008305  setlt.u r1, r6, r24
000820  3bb00000  bneq r1, zero, 12
000824  67022fff  storeli.w r18, -224(r30)
000828  db010000  j 12
00082c  9710b901  or r1, r18, r27
000830  67021ffe  storeli.w r1, -224(r30)
000834  970b6701  and r23, r14, r22
000838  93007305  setlt.u r1, r6, r23
00083c  3bb00000  bneq r1, zero, 12
000840  6742effe  storeli.w r14, -220(r30)
000844  db010000  j 12
000848  9710b701  or r1, r14, r27
00084c  67421ffe  storeli.w r1, -220(r30)
000850  17856601  and r10, r13, r22
000854  9300a304  setlt.u r1, r6, r10
000858  3bb00000  bneq r1, zero, 12
00085c  e702dffe  storeli.w r13, -216(r30)
000860  db010000  j 12
000864  9790b601  or r1, r13, r27
000868  e7021ffe  storeli.w r1, -216(r30)
00086c  97846201  and r9, r5, r22
000870  e7095ffc  storeli.w r5, -360(r30)
000874  93009304  setlt.u r1, r6, r9
000878  3bb00000  bneq r1, zero, 12
00087c  e7425ffe  storeli.w r5, -212(r30)
000880  db010000  j 12
000884  9790b201  or r1, r5, r27
000888  e7421ffe  storeli.w r1, -212(r30)
00088c  97006801  and r1, r16, r22
000890  e7403ffe  storeli.w r3, -244(r30)
000894  670a0ffd  storeli.w r16, -352(r30)
000898  93021304  setlt.u r5, r6, r1
00089c  3bb00200  bneq r5, zero, 12
0008a0  674f0ffd  storeli.w r16, -268(r30)
0008a4  db010000  j 12
0008a8  9711b801  or r3, r16, r27
0008ac  674f3ffc  storeli.w r3, -268(r30)
0008b0  17886501  and r16, r11, r22
0008b4  93020305  setlt.u r5, r6, r16
0008b8  3bb00200  bneq r5, zero, 12
0008bc  e70fbffc  storeli.w r11, -264(r30)
0008c0  db010000  j 12
0008c4  9791b501  or r3, r11, r27
0008c8  e70f3ffc  storeli.w r3, -264(r30)
0008cc  97086401  and r17, r8, r22
0008d0  670b8ffc  storeli.w r8, -336(r30)
0008d4  e70abffc  storeli.w r11, -344(r30)
0008d8  93021305  setlt.u r5, r6, r17
0008dc  37a00200  beq r5, zero, 8
0008e0  1714b401  or r8, r8, r27
0008e4  97856301  and r11, r7, r22
0008e8  e70b7ffc  storeli.w r7, -328(r30)
0008ec  9302b304  setlt.u r5, r6, r11
0008f0  3bb00200  bneq r5, zero, 12
0008f4  67007ffe  storeli.w r7, -256(r30)
0008f8  db010000  j 12
0008fc  9791b301  or r3, r7, r27
000900  67003ffe  storeli.w r3, -256(r30)
000904  97036601  and r7, r12, r22
000908  67014ffe  storeli.w r4, -240(r30)
00090c  670ccffc  storeli.w r12, -320(r30)
000910  93027304  setlt.u r5, r6, r7
000914  3bb00200  bneq r5, zero, 12
000918  6740cffe  storeli.w r12, -252(r30)
00091c  db010000  j 12
000920  9711b601  or r3, r12, r27
000924  67403ffe  storeli.w r3, -252(r30)
000928  178b6701  and r22, r15, r22
00092c  e3411ffe  loadli.w r3,  -244(r30)
000930  2b064000  lui r12, 1024
000934  ab0d807f  lui r27, 522240
000938  e70cfffc  storeli.w r15, -312(r30)
00093c  93026305  setlt.u r5, r6, r22
000940  3bb00200  bneq r5, zero, 12
000944  1f820700  addli r4, r15, 0
000948  5b010000  j 8
00094c  1792c700  or r4, r15, r12
000950  e3427ffe  loadli.w r5,  -196(r30)
000954  97875100  and r15, r3, r5
000958  9382fd04  setlt.u r5, r27, r15
00095c  37a00200  beq r5, zero, 8
000960  9791c100  or r3, r3, r12
000964  e3427ffe  loadli.w r5,  -196(r30)
000968  e74f8ffc  storeli.w r8, -260(r30)
00096c  674dcffd  storeli.w r28, -300(r30)
000970  17035e00  and r6, r28, r5
000974  93826d04  setlt.u r5, r27, r6
000978  3bb00200  bneq r5, zero, 12
00097c  1f040e00  addli r8, r28, 0
000980  5b010000  j 8
000984  1714ce00  or r8, r28, r12
000988  e3427ffe  loadli.w r5,  -196(r30)
00098c  630e2ffe  loadli.w r28,  -240(r30)
000990  97025e00  and r5, r28, r5
000994  938d5d04  setlt.u r27, r27, r5
000998  37a00d00  beq r27, zero, 8
00099c  171ece00  or r28, r28, r12
0009a0  e30d7ffe  loadli.w r27,  -200(r30)
0009a4  13812d04  setlt.u r2, r27, r2
0009a8  bb100100  bneq r2, zero, 36
0009ac  1bc10a01  srli r2, r21, 16
0009b0  1b011100  andi r2, r2, 1
0009b4  0b912a10  add.s r2, r21, r2
0009b8  e34a6ffe  loadli.w r21,  -204(r30)
0009bc  0b115111  add.s r2, r2, r21
0009c0  ab0affff  lui r21, 1048560
0009c4  17015101  and r2, r2, r21
0009c8  67412ffe  storeli.w r2, -236(r30)
0009cc  63017ffe  loadli.w r2,  -200(r30)
0009d0  1301a105  setlt.u r2, r2, r26
0009d4  2b0dffff  lui r26, 1048560
0009d8  bb000100  bneq r2, zero, 32
0009dc  1b410a01  srli r2, r20, 16
0009e0  1b011100  andi r2, r2, 1
0009e4  0b112a10  add.s r2, r20, r2
0009e8  634a6ffe  loadli.w r20,  -204(r30)
0009ec  0b114111  add.s r2, r2, r20
0009f0  1701a101  and r2, r2, r26
0009f4  e7012ffe  storeli.w r2, -232(r30)
0009f8  63017ffe  loadli.w r2,  -200(r30)
0009fc  ab0d4000  lui r27, 1024
000a00  13019105  setlt.u r2, r2, r25
000a04  e34c6ffe  loadli.w r25,  -204(r30)
000a08  3b700100  bneq r2, zero, 28
000a0c  1bc10901  srli r2, r19, 16
000a10  1b011100  andi r2, r2, 1
000a14  0b912910  add.s r2, r19, r2
000a18  0b119111  add.s r2, r2, r25
000a1c  1701a101  and r2, r2, r26
000a20  e7412ffe  storeli.w r2, -228(r30)
000a24  e3097ffe  loadli.w r19,  -200(r30)
000a28  13818905  setlt.u r2, r19, r24
000a2c  3b700100  bneq r2, zero, 28
000a30  1b410901  srli r2, r18, 16
000a34  1b011100  andi r2, r2, 1
000a38  0b112910  add.s r2, r18, r2
000a3c  0b119111  add.s r2, r2, r25
000a40  1701a101  and r2, r2, r26
000a44  67022ffe  storeli.w r2, -224(r30)
000a48  13817905  setlt.u r2, r19, r23
000a4c  630c1ffe  loadli.w r24,  -248(r30)
000a50  e34a2ffe  loadli.w r21,  -236(r30)
000a54  3b700100  bneq r2, zero, 28
000a58  1b410701  srli r2, r14, 16
000a5c  1b011100  andi r2, r2, 1
000a60  0b112710  add.s r2, r14, r2
000a64  0b119111  add.s r2, r2, r25
000a68  1701a101  and r2, r2, r26
000a6c  67422ffe  storeli.w r2, -220(r30)
000a70  1381a904  setlt.u r2, r19, r10
000a74  e34bfffc  loadli.w r23,  -388(r30)
000a78  630a3ffe  loadli.w r20,  -232(r30)
000a7c  3b700100  bneq r2, zero, 28
000a80  1bc10601  srli r2, r13, 16
000a84  1b011100  andi r2, r2, 1
000a88  0b912610  add.s r2, r13, r2
000a8c  0b119111  add.s r2, r2, r25
000a90  1701a101  and r2, r2, r26
000a94  e7022ffe  storeli.w r2, -216(r30)
000a98  13819904  setlt.u r2, r19, r9
000a9c  6345effd  loadli.w r10,  -268(r30)
000aa0  bb000100  bneq r2, zero, 32
000aa4  e3043ffd  loadli.w r9,  -360(r30)
000aa8  1bc10401  srli r2, r9, 16
000aac  1b011100  andi r2, r2, 1
000ab0  0b912410  add.s r2, r9, r2
000ab4  0b119111  add.s r2, r2, r25
000ab8  1701a101  and r2, r2, r26
000abc  e7422ffe  storeli.w r2, -212(r30)
000ac0  93801904  setlt.u r1, r19, r1
000ac4  e304fffd  loadli.w r9,  -264(r30)
000ac8  63094ffe  loadli.w r18,  -224(r30)
000acc  3bf00000  bneq r1, zero, 28
000ad0  63014ffd  loadli.w r2,  -352(r30)
000ad4  9b400101  srli r1, r2, 16
000ad8  9b801000  andi r1, r1, 1
000adc  8b101110  add.s r1, r2, r1
000ae0  8b909011  add.s r1, r1, r25
000ae4  1785a001  and r10, r1, r26
000ae8  93800905  setlt.u r1, r19, r16
000aec  63474ffe  loadli.w r14,  -220(r30)
000af0  1f010400  addli r2, r8, 0
000af4  3bf00000  bneq r1, zero, 28
000af8  63045ffd  loadli.w r8,  -344(r30)
000afc  9b400401  srli r1, r8, 16
000b00  9b801000  andi r1, r1, 1
000b04  8b101410  add.s r1, r8, r1
000b08  8b909011  add.s r1, r1, r25
000b0c  9784a001  and r9, r1, r26
000b10  93801905  setlt.u r1, r19, r17
000b14  63480ffe  loadli.w r16,  -252(r30)
000b18  6344fffd  loadli.w r8,  -260(r30)
000b1c  e3065ffe  loadli.w r13,  -216(r30)
000b20  3bf00000  bneq r1, zero, 28
000b24  63046ffd  loadli.w r8,  -336(r30)
000b28  9b400401  srli r1, r8, 16
000b2c  9b801000  andi r1, r1, 1
000b30  8b101410  add.s r1, r8, r1
000b34  8b909011  add.s r1, r1, r25
000b38  1784a001  and r8, r1, r26
000b3c  9380b904  setlt.u r1, r19, r11
000b40  e3080ffe  loadli.w r17,  -256(r30)
000b44  63465ffe  loadli.w r12,  -212(r30)
000b48  b7e20000  beq r1, zero, 184
000b4c  93807904  setlt.u r1, r19, r7
000b50  37c30000  beq r1, zero, 208
000b54  93806905  setlt.u r1, r19, r22
000b58  3bf00000  bneq r1, zero, 28
000b5c  63029ffd  loadli.w r4,  -312(r30)
000b60  9b400201  srli r1, r4, 16
000b64  9b801000  andi r1, r1, 1
000b68  8b101210  add.s r1, r4, r1
000b6c  8b909011  add.s r1, r1, r25
000b70  1782a001  and r4, r1, r26
000b74  9380f904  setlt.u r1, r19, r15
000b78  e3437ffe  loadli.w r7,  -196(r30)
000b7c  3bf00000  bneq r1, zero, 28
000b80  e3411ffe  loadli.w r3,  -244(r30)
000b84  9bc00101  srli r1, r3, 16
000b88  9b801000  andi r1, r1, 1
000b8c  8b901110  add.s r1, r3, r1
000b90  8b909011  add.s r1, r1, r25
000b94  9781a001  and r3, r1, r26
000b98  93806904  setlt.u r1, r19, r6
000b9c  ab05807f  lui r11, 522240
000ba0  3bf00000  bneq r1, zero, 28
000ba4  6341affd  loadli.w r2,  -300(r30)
000ba8  9b400101  srli r1, r2, 16
000bac  9b801000  andi r1, r1, 1
000bb0  8b101110  add.s r1, r2, r1
000bb4  8b909011  add.s r1, r1, r25
000bb8  1781a001  and r2, r1, r26
000bbc  93805904  setlt.u r1, r19, r5
000bc0  3bf00000  bneq r1, zero, 28
000bc4  e3022ffe  loadli.w r5,  -240(r30)
000bc8  9bc00201  srli r1, r5, 16
000bcc  9b801000  andi r1, r1, 1
000bd0  8b901210  add.s r1, r5, r1
000bd4  8b909011  add.s r1, r1, r25
000bd8  178ea001  and r28, r1, r26
000bdc  97807a00  and r1, r21, r7
000be0  e3423ffe  loadli.w r5,  -228(r30)
000be4  93801504  setlt.u r1, r11, r1
000be8  3bf10000  bneq r1, zero, 92
000bec  9bc00a01  srli r1, r21, 16
000bf0  9b801000  andi r1, r1, 1
000bf4  8b901a10  add.s r1, r21, r1
000bf8  8b9a9011  add.s r21, r1, r25
000bfc  db090000  j 76
000c00  e3057ffd  loadli.w r11,  -328(r30)
000c04  9bc00501  srli r1, r11, 16
000c08  9b801000  andi r1, r1, 1
000c0c  8b901510  add.s r1, r11, r1
000c10  8b909011  add.s r1, r1, r25
000c14  9788a001  and r17, r1, r26
000c18  93807904  setlt.u r1, r19, r7
000c1c  bbec00fe  bneq r1, zero, -200
000c20  e3038ffd  loadli.w r7,  -320(r30)
000c24  9bc00301  srli r1, r7, 16
000c28  9b801000  andi r1, r1, 1
000c2c  8b901310  add.s r1, r7, r1
000c30  8b909011  add.s r1, r1, r25
000c34  1788a001  and r16, r1, r26
000c38  93806905  setlt.u r1, r19, r22
000c3c  b78c00fe  beq r1, zero, -224
000c40  dbe6ffff  j -204
000c44  979aba01  or r21, r21, r27
000c48  97007a00  and r1, r20, r7
000c4c  93801504  setlt.u r1, r11, r1
000c50  3be00000  bneq r1, zero, 24
000c54  9b400a01  srli r1, r20, 16
000c58  9b801000  andi r1, r1, 1
000c5c  8b101a10  add.s r1, r20, r1
000c60  0b9a9011  add.s r20, r1, r25
000c64  5b010000  j 8
000c68  171aba01  or r20, r20, r27
000c6c  97807200  and r1, r5, r7
000c70  93801504  setlt.u r1, r11, r1
000c74  3be00000  bneq r1, zero, 24
000c78  9bc00201  srli r1, r5, 16
000c7c  9b801000  andi r1, r1, 1
000c80  8b901210  add.s r1, r5, r1
000c84  8b999011  add.s r19, r1, r25
000c88  5b010000  j 8
000c8c  9799b201  or r19, r5, r27
000c90  97007900  and r1, r18, r7
000c94  93801504  setlt.u r1, r11, r1
000c98  3be00000  bneq r1, zero, 24
000c9c  9b400901  srli r1, r18, 16
000ca0  9b801000  andi r1, r1, 1
000ca4  8b101910  add.s r1, r18, r1
000ca8  0b999011  add.s r18, r1, r25
000cac  5b010000  j 8
000cb0  1719b901  or r18, r18, r27
000cb4  97007700  and r1, r14, r7
000cb8  93801504  setlt.u r1, r11, r1
000cbc  3be00000  bneq r1, zero, 24
000cc0  9b400701  srli r1, r14, 16
000cc4  9b801000  andi r1, r1, 1
000cc8  8b101710  add.s r1, r14, r1
000ccc  0b979011  add.s r14, r1, r25
000cd0  5b010000  j 8
000cd4  1717b701  or r14, r14, r27
000cd8  97807600  and r1, r13, r7
000cdc  93801504  setlt.u r1, r11, r1
000ce0  3be00000  bneq r1, zero, 24
000ce4  9bc00601  srli r1, r13, 16
000ce8  9b801000  andi r1, r1, 1
000cec  8b901610  add.s r1, r13, r1
000cf0  8b969011  add.s r13, r1, r25
000cf4  5b010000  j 8
000cf8  9796b601  or r13, r13, r27
000cfc  97007600  and r1, r12, r7
000d00  93801504  setlt.u r1, r11, r1
000d04  3be00000  bneq r1, zero, 24
000d08  9b400601  srli r1, r12, 16
000d0c  9b801000  andi r1, r1, 1
000d10  8b101610  add.s r1, r12, r1
000d14  0b969011  add.s r12, r1, r25
000d18  5b010000  j 8
000d1c  1716b601  or r12, r12, r27
000d20  97007500  and r1, r10, r7
000d24  93801504  setlt.u r1, r11, r1
000d28  3be00000  bneq r1, zero, 24
000d2c  9b400501  srli r1, r10, 16
000d30  9b801000  andi r1, r1, 1
000d34  8b101510  add.s r1, r10, r1
000d38  0b959011  add.s r10, r1, r25
000d3c  5b010000  j 8
000d40  1715b501  or r10, r10, r27
000d44  97807400  and r1, r9, r7
000d48  93801504  setlt.u r1, r11, r1
000d4c  3be00000  bneq r1, zero, 24
000d50  9bc00401  srli r1, r9, 16
000d54  9b801000  andi r1, r1, 1
000d58  8b901410  add.s r1, r9, r1
000d5c  8b949011  add.s r9, r1, r25
000d60  5b010000  j 8
000d64  9794b401  or r9, r9, r27
000d68  97007400  and r1, r8, r7
000d6c  93801504  setlt.u r1, r11, r1
000d70  3be00000  bneq r1, zero, 24
000d74  9b400401  srli r1, r8, 16
000d78  9b801000  andi r1, r1, 1
000d7c  8b101410  add.s r1, r8, r1
000d80  0b949011  add.s r8, r1, r25
000d84  5b010000  j 8
000d88  1714b401  or r8, r8, r27
000d8c  97807800  and r1, r17, r7
000d90  93801504  setlt.u r1, r11, r1
000d94  3be00000  bneq r1, zero, 24
000d98  9bc00801  srli r1, r17, 16
000d9c  9b801000  andi r1, r1, 1
000da0  8b901810  add.s r1, r17, r1
000da4  0b939011  add.s r6, r1, r25
000da8  5b010000  j 8
000dac  1793b801  or r6, r17, r27
000db0  97007800  and r1, r16, r7
000db4  93801504  setlt.u r1, r11, r1
000db8  3be00000  bneq r1, zero, 24
000dbc  9b400801  srli r1, r16, 16
000dc0  9b801000  andi r1, r1, 1
000dc4  8b101810  add.s r1, r16, r1
000dc8  8b929011  add.s r5, r1, r25
000dcc  5b010000  j 8
000dd0  9712b801  or r5, r16, r27
000dd4  97007200  and r1, r4, r7
000dd8  93801504  setlt.u r1, r11, r1
000ddc  3be00000  bneq r1, zero, 24
000de0  9b400201  srli r1, r4, 16
000de4  9b801000  andi r1, r1, 1
000de8  8b101210  add.s r1, r4, r1
000dec  0b929011  add.s r4, r1, r25
000df0  5b010000  j 8
000df4  1712b201  or r4, r4, r27
000df8  97807100  and r1, r3, r7
000dfc  93801504  setlt.u r1, r11, r1
000e00  3be00000  bneq r1, zero, 24
000e04  9bc00101  srli r1, r3, 16
000e08  9b801000  andi r1, r1, 1
000e0c  8b901110  add.s r1, r3, r1
000e10  8b919011  add.s r3, r1, r25
000e14  5b010000  j 8
000e18  9791b101  or r3, r3, r27
000e1c  97007100  and r1, r2, r7
000e20  93801504  setlt.u r1, r11, r1
000e24  3be00000  bneq r1, zero, 24
000e28  9b400101  srli r1, r2, 16
000e2c  9b801000  andi r1, r1, 1
000e30  8b101110  add.s r1, r2, r1
000e34  0b919011  add.s r2, r1, r25
000e38  5b010000  j 8
000e3c  1711b101  or r2, r2, r27
000e40  97007e00  and r1, r28, r7
000e44  93801504  setlt.u r1, r11, r1
000e48  3be00000  bneq r1, zero, 24
000e4c  9b400e01  srli r1, r28, 16
000e50  9b801000  andi r1, r1, 1
000e54  8b101e10  add.s r1, r28, r1
000e58  8b909011  add.s r1, r1, r25
000e5c  5b010000  j 8
000e60  9710be01  or r1, r28, r27
000e64  178baa01  and r22, r21, r26
000e68  970caa01  and r25, r20, r26
000e6c  93e36c05  setlt.f r7, r25, r22
000e70  9f050b00  addli r11, r22, 0
000e74  3ba00300  bneq r7, zero, 8
000e78  9f850c00  addli r11, r25, 0
000e7c  9b339b00  slli r7, r22, 9
000e80  9bb79c00  slli r15, r25, 9
000e84  1bc87a01  srli r16, r21, 23
000e88  9b487a01  srli r17, r20, 23
000e8c  93830300  seteq r7, r7, zero
000e90  93870700  seteq r15, r15, zero
000e94  1b08f80f  andi r16, r16, 255
000e98  9b88f80f  andi r17, r17, 255
000e9c  1b78f80f  setlti r16, r16, 255
000ea0  9bf8f80f  setlti r17, r17, 255
000ea4  97137800  or r7, r16, r7
000ea8  9797f800  or r15, r17, r15
000eac  9783f300  and r7, r7, r15
000eb0  37830312  beq r7, zero, 9408
000eb4  9f070b00  addli r15, r22, 0
000eb8  3b130b12  bneq r22, zero, 9412
000ebc  9f830c00  addli r7, r25, 0
000ec0  37a00c00  beq r25, zero, 8
000ec4  9f830700  addli r7, r15, 0
000ec8  9367b006  setle.f r15, zero, r11
000ecc  13e80506  setle.f r16, r11, zero
000ed0  9707f800  and r15, r16, r15
000ed4  3ba00700  bneq r15, zero, 8
000ed8  9f830500  addli r7, r11, 0
000edc  178aa901  and r20, r19, r26
000ee0  9f870300  addli r15, r7, 0
000ee4  93657a04  setlt.f r11, r20, r7
000ee8  3ba00500  bneq r11, zero, 8
000eec  9f070a00  addli r15, r20, 0
000ef0  9b359a00  slli r11, r20, 9
000ef4  1bb89300  slli r16, r7, 9
000ef8  9bc87901  srli r17, r19, 23
000efc  9bc97301  srli r19, r7, 23
000f00  93850500  seteq r11, r11, zero
000f04  13080800  seteq r16, r16, zero
000f08  9b88f80f  andi r17, r17, 255
000f0c  9b89f90f  andi r19, r19, 255
000f10  9bf8f80f  setlti r17, r17, 255
000f14  9bf9f90f  setlti r19, r19, 255
000f18  9795b800  or r11, r17, r11
000f1c  17980901  or r16, r19, r16
000f20  9705b800  and r11, r16, r11
000f24  b7a10512  beq r11, zero, 9320
000f28  bbb10312  bneq r7, zero, 9324
000f2c  9f050a00  addli r11, r20, 0
000f30  37200a00  beq r20, zero, 8
000f34  9f850300  addli r11, r7, 0
000f38  9363f006  setle.f r7, zero, r15
000f3c  13e80706  setle.f r16, r15, zero
000f40  97037800  and r7, r16, r7
000f44  3ba00300  bneq r7, zero, 8
000f48  9f850700  addli r11, r15, 0
000f4c  9709a901  and r19, r18, r26
000f50  9f870500  addli r15, r11, 0
000f54  93e3b904  setlt.f r7, r19, r11
000f58  3ba00300  bneq r7, zero, 8
000f5c  9f870900  addli r15, r19, 0
000f60  9bb39900  slli r7, r19, 9
000f64  1bb89500  slli r16, r11, 9
000f68  9b487901  srli r17, r18, 23
000f6c  1bc97501  srli r18, r11, 23
000f70  93830300  seteq r7, r7, zero
000f74  13080800  seteq r16, r16, zero
000f78  9b88f80f  andi r17, r17, 255
000f7c  1b09f90f  andi r18, r18, 255
000f80  9bf8f80f  setlti r17, r17, 255
000f84  1b79f90f  setlti r18, r18, 255
000f88  97937800  or r7, r17, r7
000f8c  17180901  or r16, r18, r16
000f90  97037800  and r7, r16, r7
000f94  37c00312  beq r7, zero, 9232
000f98  3bd00512  bneq r11, zero, 9236
000f9c  9f830900  addli r7, r19, 0
000fa0  37a00900  beq r19, zero, 8
000fa4  9f830500  addli r7, r11, 0
000fa8  9365f006  setle.f r11, zero, r15
000fac  13e80706  setle.f r16, r15, zero
000fb0  9705b800  and r11, r16, r11
000fb4  3ba00500  bneq r11, zero, 8
000fb8  9f830700  addli r7, r15, 0
000fbc  1709a701  and r18, r14, r26
000fc0  9f870300  addli r15, r7, 0
000fc4  93657904  setlt.f r11, r18, r7
000fc8  3ba00500  bneq r11, zero, 8
000fcc  9f070900  addli r15, r18, 0
000fd0  9b359900  slli r11, r18, 9
000fd4  1bb89300  slli r16, r7, 9
000fd8  1b477701  srli r14, r14, 23
000fdc  9bc87301  srli r17, r7, 23
000fe0  93850500  seteq r11, r11, zero
000fe4  13080800  seteq r16, r16, zero
000fe8  1b07f70f  andi r14, r14, 255
000fec  9b88f80f  andi r17, r17, 255
000ff0  1b77f70f  setlti r14, r14, 255
000ff4  9bf8f80f  setlti r17, r17, 255
000ff8  9715b700  or r11, r14, r11
000ffc  17970801  or r14, r17, r16
001000  9705b700  and r11, r14, r11
001004  b7ee0510  beq r11, zero, 9144
001008  bbfe0310  bneq r7, zero, 9148
00100c  9f050900  addli r11, r18, 0
001010  37200900  beq r18, zero, 8
001014  9f850300  addli r11, r7, 0
001018  9363f006  setle.f r7, zero, r15
00101c  13e70706  setle.f r14, r15, zero
001020  97037700  and r7, r14, r7
001024  3ba00300  bneq r7, zero, 8
001028  9f850700  addli r11, r15, 0
00102c  9788a601  and r17, r13, r26
001030  1f870500  addli r14, r11, 0
001034  93e3b804  setlt.f r7, r17, r11
001038  3ba00300  bneq r7, zero, 8
00103c  1f870800  addli r14, r17, 0
001040  9bb39800  slli r7, r17, 9
001044  9bb79500  slli r15, r11, 9
001048  9bc67601  srli r13, r13, 23
00104c  1bc87501  srli r16, r11, 23
001050  93830300  seteq r7, r7, zero
001054  93870700  seteq r15, r15, zero
001058  9b86f60f  andi r13, r13, 255
00105c  1b08f80f  andi r16, r16, 255
001060  9bf6f60f  setlti r13, r13, 255
001064  1b78f80f  setlti r16, r16, 255
001068  97937600  or r7, r13, r7
00106c  9716f800  or r13, r16, r15
001070  97837600  and r7, r13, r7
001074  b78d0310  beq r7, zero, 9056
001078  bb9d0510  bneq r11, zero, 9060
00107c  9f830800  addli r7, r17, 0
001080  37a00800  beq r17, zero, 8
001084  9f830500  addli r7, r11, 0
001088  9365e006  setle.f r11, zero, r14
00108c  93660706  setle.f r13, r14, zero
001090  9785b600  and r11, r13, r11
001094  3ba00500  bneq r11, zero, 8
001098  9f030700  addli r7, r14, 0
00109c  1708a601  and r16, r12, r26
0010a0  9f860300  addli r13, r7, 0
0010a4  93657804  setlt.f r11, r16, r7
0010a8  3ba00500  bneq r11, zero, 8
0010ac  9f060800  addli r13, r16, 0
0010b0  9b359800  slli r11, r16, 9
0010b4  1bb79300  slli r14, r7, 9
0010b8  1b467601  srli r12, r12, 23
0010bc  9bc77301  srli r15, r7, 23
0010c0  93850500  seteq r11, r11, zero
0010c4  13070700  seteq r14, r14, zero
0010c8  1b06f60f  andi r12, r12, 255
0010cc  9b87f70f  andi r15, r15, 255
0010d0  1b76f60f  setlti r12, r12, 255
0010d4  9bf7f70f  setlti r15, r15, 255
0010d8  9715b600  or r11, r12, r11
0010dc  1796e700  or r12, r15, r14
0010e0  9705b600  and r11, r12, r11
0010e4  37ac0510  beq r11, zero, 8968
0010e8  3bbc0310  bneq r7, zero, 8972
0010ec  9f050800  addli r11, r16, 0
0010f0  37200800  beq r16, zero, 8
0010f4  9f850300  addli r11, r7, 0
0010f8  9363d006  setle.f r7, zero, r13
0010fc  13e60606  setle.f r12, r13, zero
001100  97037600  and r7, r12, r7
001104  3ba00300  bneq r7, zero, 8
001108  9f850600  addli r11, r13, 0
00110c  9707a501  and r15, r10, r26
001110  1f860500  addli r12, r11, 0
001114  93e3b704  setlt.f r7, r15, r11
001118  3ba00300  bneq r7, zero, 8
00111c  1f860700  addli r12, r15, 0
001120  9bb39700  slli r7, r15, 9
001124  9bb69500  slli r13, r11, 9
001128  1b457501  srli r10, r10, 23
00112c  1bc77501  srli r14, r11, 23
001130  93830300  seteq r7, r7, zero
001134  93860600  seteq r13, r13, zero
001138  1b05f50f  andi r10, r10, 255
00113c  1b07f70f  andi r14, r14, 255
001140  1b75f50f  setlti r10, r10, 255
001144  1b77f70f  setlti r14, r14, 255
001148  97137500  or r7, r10, r7
00114c  1715d700  or r10, r14, r13
001150  97037500  and r7, r10, r7
001154  b7ca0310  beq r7, zero, 8880
001158  bbda0510  bneq r11, zero, 8884
00115c  9f830700  addli r7, r15, 0
001160  37a00700  beq r15, zero, 8
001164  9f830500  addli r7, r11, 0
001168  1365c006  setle.f r10, zero, r12
00116c  93650606  setle.f r11, r12, zero
001170  1785a500  and r10, r11, r10
001174  3b200500  bneq r10, zero, 8
001178  9f030600  addli r7, r12, 0
00117c  1787a401  and r14, r9, r26
001180  1f850300  addli r10, r7, 0
001184  93657704  setlt.f r11, r14, r7
001188  3ba00500  bneq r11, zero, 8
00118c  1f050700  addli r10, r14, 0
001190  9b359700  slli r11, r14, 9
001194  1bb69300  slli r12, r7, 9
001198  9bc47401  srli r9, r9, 23
00119c  9bc67301  srli r13, r7, 23
0011a0  93850500  seteq r11, r11, zero
0011a4  13060600  seteq r12, r12, zero
0011a8  9b84f40f  andi r9, r9, 255
0011ac  9b86f60f  andi r13, r13, 255
0011b0  9bf4f40f  setlti r9, r9, 255
0011b4  9bf6f60f  setlti r13, r13, 255
0011b8  9794b400  or r9, r9, r11
0011bc  9795c600  or r11, r13, r12
0011c0  97849500  and r9, r11, r9
0011c4  37e90410  beq r9, zero, 8792
0011c8  3bf90310  bneq r7, zero, 8796
0011cc  9f040700  addli r9, r14, 0
0011d0  37200700  beq r14, zero, 8
0011d4  9f840300  addli r9, r7, 0
0011d8  9363a006  setle.f r7, zero, r10
0011dc  93650506  setle.f r11, r10, zero
0011e0  97837500  and r7, r11, r7
0011e4  3ba00300  bneq r7, zero, 8
0011e8  9f040500  addli r9, r10, 0
0011ec  9706a401  and r13, r8, r26
0011f0  1f850400  addli r10, r9, 0
0011f4  93e39604  setlt.f r7, r13, r9
0011f8  3ba00300  bneq r7, zero, 8
0011fc  1f850600  addli r10, r13, 0
001200  9bb39600  slli r7, r13, 9
001204  9bb59400  slli r11, r9, 9
001208  1b447401  srli r8, r8, 23
00120c  1bc67401  srli r12, r9, 23
001210  93830300  seteq r7, r7, zero
001214  93850500  seteq r11, r11, zero
001218  1b04f40f  andi r8, r8, 255
00121c  1b06f60f  andi r12, r12, 255
001220  1b74f40f  setlti r8, r8, 255
001224  1b76f60f  setlti r12, r12, 255
001228  97137400  or r7, r8, r7
00122c  1714b600  or r8, r12, r11
001230  97037400  and r7, r8, r7
001234  37880310  beq r7, zero, 8704
001238  3b980410  bneq r9, zero, 8708
00123c  9f830600  addli r7, r13, 0
001240  37a00600  beq r13, zero, 8
001244  9f830400  addli r7, r9, 0
001248  1364a006  setle.f r8, zero, r10
00124c  93640506  setle.f r9, r10, zero
001250  17848400  and r8, r9, r8
001254  3b200400  bneq r8, zero, 8
001258  9f030500  addli r7, r10, 0
00125c  970aa301  and r21, r6, r26
001260  1f840300  addli r8, r7, 0
001264  93e47a04  setlt.f r9, r21, r7
001268  3ba00400  bneq r9, zero, 8
00126c  1f840a00  addli r8, r21, 0
001270  9bb49a00  slli r9, r21, 9
001274  1bb59300  slli r10, r7, 9
001278  1b437301  srli r6, r6, 23
00127c  9bc57301  srli r11, r7, 23
001280  93840400  seteq r9, r9, zero
001284  13050500  seteq r10, r10, zero
001288  1b03f30f  andi r6, r6, 255
00128c  9b85f50f  andi r11, r11, 255
001290  1b73f30f  setlti r6, r6, 255
001294  9bf5f50f  setlti r11, r11, 255
001298  17139300  or r6, r6, r9
00129c  9794a500  or r9, r11, r10
0012a0  17836400  and r6, r9, r6
0012a4  b7260310  beq r6, zero, 8616
0012a8  bbb60310  bneq r7, zero, 8620
0012ac  1f830a00  addli r6, r21, 0
0012b0  37a00a00  beq r21, zero, 8
0012b4  1f830300  addli r6, r7, 0
0012b8  93638006  setle.f r7, zero, r8
0012bc  93640406  setle.f r9, r8, zero
0012c0  97837400  and r7, r9, r7
0012c4  3ba00300  bneq r7, zero, 8
0012c8  1f030400  addli r6, r8, 0
0012cc  178ea201  and r28, r5, r26
0012d0  9f030300  addli r7, r6, 0
0012d4  13646e04  setlt.f r8, r28, r6
0012d8  3b200400  bneq r8, zero, 8
0012dc  9f030e00  addli r7, r28, 0
0012e0  1b349e00  slli r8, r28, 9
0012e4  9b349300  slli r9, r6, 9
0012e8  9bc27201  srli r5, r5, 23
0012ec  1b457301  srli r10, r6, 23
0012f0  13040400  seteq r8, r8, zero
0012f4  93840400  seteq r9, r9, zero
0012f8  9b82f20f  andi r5, r5, 255
0012fc  1b05f50f  andi r10, r10, 255
001300  9bf2f20f  setlti r5, r5, 255
001304  1b75f50f  setlti r10, r10, 255
001308  97928200  or r5, r5, r8
00130c  17149500  or r8, r10, r9
001310  97025400  and r5, r8, r5
001314  37c50210  beq r5, zero, 8528
001318  3b550310  bneq r6, zero, 8532
00131c  9f020e00  addli r5, r28, 0
001320  37200e00  beq r28, zero, 8
001324  9f020300  addli r5, r6, 0
001328  13637006  setle.f r6, zero, r7
00132c  13e40306  setle.f r8, r7, zero
001330  17036400  and r6, r8, r6
001334  3b200300  bneq r6, zero, 8
001338  9f820300  addli r5, r7, 0
00133c  1705a201  and r10, r4, r26
001340  1f830200  addli r6, r5, 0
001344  93635504  setlt.f r7, r10, r5
001348  3ba00300  bneq r7, zero, 8
00134c  1f030500  addli r6, r10, 0
001350  9b339500  slli r7, r10, 9
001354  1bb49200  slli r8, r5, 9
001358  1b427201  srli r4, r4, 23
00135c  9bc47201  srli r9, r5, 23
001360  93830300  seteq r7, r7, zero
001364  13040400  seteq r8, r8, zero
001368  1b02f20f  andi r4, r4, 255
00136c  9b84f40f  andi r9, r9, 255
001370  1b72f20f  setlti r4, r4, 255
001374  9bf4f40f  setlti r9, r9, 255
001378  17127200  or r4, r4, r7
00137c  97938400  or r7, r9, r8
001380  17824300  and r4, r7, r4
001384  b7630210  beq r4, zero, 8440
001388  bbf30210  bneq r5, zero, 8444
00138c  1f020500  addli r4, r10, 0
001390  37200500  beq r10, zero, 8
001394  1f820200  addli r4, r5, 0
001398  93626006  setle.f r5, zero, r6
00139c  93630306  setle.f r7, r6, zero
0013a0  97825300  and r5, r7, r5
0013a4  3ba00200  bneq r5, zero, 8
0013a8  1f020300  addli r4, r6, 0
0013ac  9784a101  and r9, r3, r26
0013b0  9f020200  addli r5, r4, 0
0013b4  13e34404  setlt.f r6, r9, r4
0013b8  3b200300  bneq r6, zero, 8
0013bc  9f820400  addli r5, r9, 0
0013c0  1bb39400  slli r6, r9, 9
0013c4  9b339200  slli r7, r4, 9
0013c8  9bc17101  srli r3, r3, 23
0013cc  1b447201  srli r8, r4, 23
0013d0  13030300  seteq r6, r6, zero
0013d4  93830300  seteq r7, r7, zero
0013d8  9b81f10f  andi r3, r3, 255
0013dc  1b04f40f  andi r8, r8, 255
0013e0  9bf1f10f  setlti r3, r3, 255
0013e4  1b74f40f  setlti r8, r8, 255
0013e8  97916100  or r3, r3, r6
0013ec  17137400  or r6, r8, r7
0013f0  97013300  and r3, r6, r3
0013f4  b7820110  beq r3, zero, 8352
0013f8  bb120210  bneq r4, zero, 8356
0013fc  9f810400  addli r3, r9, 0
001400  37a00400  beq r9, zero, 8
001404  9f010200  addli r3, r4, 0
001408  13625006  setle.f r4, zero, r5
00140c  13e30206  setle.f r6, r5, zero
001410  17024300  and r4, r6, r4
001414  3b200200  bneq r4, zero, 8
001418  9f810200  addli r3, r5, 0
00141c  1704a101  and r8, r2, r26
001420  1f820100  addli r4, r3, 0
001424  93623404  setlt.f r5, r8, r3
001428  3ba00200  bneq r5, zero, 8
00142c  1f020400  addli r4, r8, 0
001430  9b329400  slli r5, r8, 9
001434  1bb39100  slli r6, r3, 9
001438  1b417101  srli r2, r2, 23
00143c  9bc37101  srli r7, r3, 23
001440  93820200  seteq r5, r5, zero
001444  13030300  seteq r6, r6, zero
001448  1b01f10f  andi r2, r2, 255
00144c  9b83f30f  andi r7, r7, 255
001450  1b71f10f  setlti r2, r2, 255
001454  9bf3f30f  setlti r7, r7, 255
001458  17115100  or r2, r2, r5
00145c  97926300  or r5, r7, r6
001460  17812200  and r2, r5, r2
001464  37210110  beq r2, zero, 8264
001468  3bb10110  bneq r3, zero, 8268
00146c  1f010400  addli r2, r8, 0
001470  37200400  beq r8, zero, 8
001474  1f810100  addli r2, r3, 0
001478  93614006  setle.f r3, zero, r4
00147c  93620206  setle.f r5, r4, zero
001480  97813200  and r3, r5, r3
001484  3ba00100  bneq r3, zero, 8
001488  1f010200  addli r2, r4, 0
00148c  178da001  and r26, r1, r26
001490  9f010100  addli r3, r2, 0
001494  13622d04  setlt.f r4, r26, r2
001498  3b200200  bneq r4, zero, 8
00149c  9f010d00  addli r3, r26, 0
0014a0  1b329d00  slli r4, r26, 9
0014a4  9b329100  slli r5, r2, 9
0014a8  9bc07001  srli r1, r1, 23
0014ac  1b437101  srli r6, r2, 23
0014b0  13020200  seteq r4, r4, zero
0014b4  93820200  seteq r5, r5, zero
0014b8  9b80f00f  andi r1, r1, 255
0014bc  1b03f30f  andi r6, r6, 255
0014c0  9bf0f00f  setlti r1, r1, 255
0014c4  1b73f30f  setlti r6, r6, 255
0014c8  97904000  or r1, r1, r4
0014cc  17125300  or r4, r6, r5
0014d0  97001200  and r1, r4, r1
0014d4  b7cf000e  beq r1, zero, 8176
0014d8  bb5f010e  bneq r2, zero, 8180
0014dc  9f000d00  addli r1, r26, 0
0014e0  37200d00  beq r26, zero, 8
0014e4  9f000100  addli r1, r2, 0
0014e8  13613006  setle.f r2, zero, r3
0014ec  13e20106  setle.f r4, r3, zero
0014f0  17012200  and r2, r4, r2
0014f4  3b200100  bneq r2, zero, 8
0014f8  9f800100  addli r1, r3, 0
0014fc  1f018000  addli r2, zero, 64
001500  3f202c00  blt.s r24, r2, 8
001504  ab0080ff  lui r1, 1046528
001508  6341effc  loadli.w r2,  -396(r30)
00150c  67428ffe  storeli.w r8, -220(r30)
001510  e7029ffe  storeli.w r9, -216(r30)
001514  e742affe  storeli.w r10, -212(r30)
001518  73601100  stores.w r1, 0(r2)
00151c  00a00300  mfence { lm, sm, gm }
001520  80a10b04  csr_set csr3, r23
001524  00d00100  sync_group
001528  e300effd  loadli.w r1,  -272(r30)
00152c  3bc6000e  bneq r1, zero, 7568
001530  e3006ffe  loadli.w r1,  -208(r30)
001534  efc10000  loads.w r3, 0(r1)
001538  efc04000  loads.w r1, 4(r1)
00153c  13e23004  setlt.f r4, r1, r3
001540  1f810100  addli r2, r3, 0
001544  3b200200  bneq r4, zero, 8
001548  1f810000  addli r2, r1, 0
00154c  1bb29100  slli r4, r3, 9
001550  9bb29000  slli r5, r1, 9
001554  1bc37101  srli r6, r3, 23
001558  9bc37001  srli r7, r1, 23
00155c  13020200  seteq r4, r4, zero
001560  93820200  seteq r5, r5, zero
001564  1b03f30f  andi r6, r6, 255
001568  9b83f30f  andi r7, r7, 255
00156c  1b73f30f  setlti r6, r6, 255
001570  9bf3f30f  setlti r7, r7, 255
001574  17124300  or r4, r6, r4
001578  97925300  or r5, r7, r5
00157c  17025200  and r4, r4, r5
001580  37310214  beq r4, zero, 10316
001584  3bc10114  bneq r3, zero, 10320
001588  37a00000  beq r1, zero, 8
00158c  9f800100  addli r1, r3, 0
001590  93612006  setle.f r3, zero, r2
001594  13620106  setle.f r4, r2, zero
001598  67080ffd  storeli.w r16, -384(r30)
00159c  97013200  and r3, r4, r3
0015a0  3ba00100  bneq r3, zero, 8
0015a4  9f000100  addli r1, r2, 0
0015a8  63016ffe  loadli.w r2,  -208(r30)
0015ac  6f488100  loads.w r16, 8(r2)
0015b0  1f810000  addli r2, r1, 0
0015b4  93611804  setlt.f r3, r16, r1
0015b8  3ba00100  bneq r3, zero, 8
0015bc  1f010800  addli r2, r16, 0
0015c0  9b319800  slli r3, r16, 9
0015c4  1bb29000  slli r4, r1, 9
0015c8  9b427801  srli r5, r16, 23
0015cc  1bc37001  srli r6, r1, 23
0015d0  93810100  seteq r3, r3, zero
0015d4  13020200  seteq r4, r4, zero
0015d8  9b82f20f  andi r5, r5, 255
0015dc  1b03f30f  andi r6, r6, 255
0015e0  9bf2f20f  setlti r5, r5, 255
0015e4  1b73f30f  setlti r6, r6, 255
0015e8  97913200  or r3, r5, r3
0015ec  17124300  or r4, r6, r4
0015f0  97013200  and r3, r4, r3
0015f4  b7bf0112  beq r3, zero, 10220
0015f8  bbcf0012  bneq r1, zero, 10224
0015fc  37200800  beq r16, zero, 8
001600  1f880000  addli r16, r1, 0
001604  93602006  setle.f r1, zero, r2
001608  93610106  setle.f r3, r2, zero
00160c  6700affd  storeli.w r26, -512(r30)
001610  6740cffd  storeli.w r28, -508(r30)
001614  e740dffc  storeli.w r13, -500(r30)
001618  6701effc  storeli.w r14, -496(r30)
00161c  6741fffc  storeli.w r15, -492(r30)
001620  67481ffd  storeli.w r17, -380(r30)
001624  e7082ffd  storeli.w r18, -376(r30)
001628  e7094ffd  storeli.w r20, -360(r30)
00162c  670a9ffd  storeli.w r25, -352(r30)
001630  674d6ffb  storeli.w r22, -556(r30)
001634  97801100  and r1, r3, r1
001638  3ba00000  bneq r1, zero, 8
00163c  1f080100  addli r16, r2, 0
001640  63096ffe  loadli.w r18,  -208(r30)
001644  67093ffd  storeli.w r19, -368(r30)
001648  1f0b0800  addli r22, r16, 0
00164c  e7005ffd  storeli.w r21, -504(r30)
001650  ef49090a  loads.w r19, 160(r18)
001654  ef420906  loads.w r5, 96(r18)
001658  ef400905  loads.w r1, 80(r18)
00165c  ef48c900  loads.w r17, 12(r18)
001660  ef450901  loads.w r11, 16(r18)
001664  ef434901  loads.w r7, 20(r18)
001668  ef478901  loads.w r15, 24(r18)
00166c  6f4ac901  loads.w r20, 28(r18)
001670  6f470902  loads.w r14, 32(r18)
001674  6f444902  loads.w r8, 36(r18)
001678  6f438902  loads.w r6, 40(r18)
00167c  ef41c902  loads.w r3, 44(r18)
001680  6f460903  loads.w r12, 48(r18)
001684  6f414903  loads.w r2, 52(r18)
001688  ef468903  loads.w r13, 56(r18)
00168c  ef4cc903  loads.w r25, 60(r18)
001690  6f4d0904  loads.w r26, 64(r18)
001694  6f424904  loads.w r4, 68(r18)
001698  6f4e8904  loads.w r28, 72(r18)
00169c  ef44c904  loads.w r9, 76(r18)
0016a0  6f458905  loads.w r10, 88(r18)
0016a4  ef4b490a  loads.w r23, 164(r18)
0016a8  6f4c490c  loads.w r24, 196(r18)
0016ac  e74f3ffd  storeli.w r19, -260(r30)
0016b0  ef49890a  loads.w r19, 168(r18)
0016b4  e70a5ffa  storeli.w r5, -600(r30)
0016b8  ef424906  loads.w r5, 100(r18)
0016bc  670a1ffa  storeli.w r1, -608(r30)
0016c0  ef404905  loads.w r1, 84(r18)
0016c4  93ed0805  setlt.f r27, r17, r16
0016c8  67003fff  storeli.w r19, -256(r30)
0016cc  ef49c90a  loads.w r19, 172(r18)
0016d0  e70a5ffc  storeli.w r5, -344(r30)
0016d4  ef428906  loads.w r5, 104(r18)
0016d8  674a1ffa  storeli.w r1, -604(r30)
0016dc  ef40c905  loads.w r1, 92(r18)
0016e0  e70c3ffb  storeli.w r19, -568(r30)
0016e4  ef49090b  loads.w r19, 176(r18)
0016e8  e74a5ffa  storeli.w r5, -596(r30)
0016ec  ef42c906  loads.w r5, 108(r18)
0016f0  67403fff  storeli.w r19, -252(r30)
0016f4  ef49490b  loads.w r19, 180(r18)
0016f8  670b5ffc  storeli.w r5, -336(r30)
0016fc  ef420907  loads.w r5, 112(r18)
001700  e74c3ffb  storeli.w r19, -564(r30)
001704  ef49890b  loads.w r19, 184(r18)
001708  670b5ffa  storeli.w r5, -592(r30)
00170c  ef424907  loads.w r5, 116(r18)
001710  e7403fff  storeli.w r19, -244(r30)
001714  ef49c90b  loads.w r19, 188(r18)
001718  e70b5ffc  storeli.w r5, -328(r30)
00171c  ef428907  loads.w r5, 120(r18)
001720  670d3ffb  storeli.w r19, -560(r30)
001724  ef49090c  loads.w r19, 192(r18)
001728  674b5ffa  storeli.w r5, -588(r30)
00172c  ef42c907  loads.w r5, 124(r18)
001730  67013fff  storeli.w r19, -240(r30)
001734  ef49890c  loads.w r19, 200(r18)
001738  670c5ffc  storeli.w r5, -320(r30)
00173c  ef420908  loads.w r5, 128(r18)
001740  e70d3ffb  storeli.w r19, -552(r30)
001744  ef49c90c  loads.w r19, 204(r18)
001748  e70b5ffa  storeli.w r5, -584(r30)
00174c  ef424908  loads.w r5, 132(r18)
001750  67413fff  storeli.w r19, -236(r30)
001754  ef49090d  loads.w r19, 208(r18)
001758  e70c5ffc  storeli.w r5, -312(r30)
00175c  ef428908  loads.w r5, 136(r18)
001760  e7013fff  storeli.w r19, -232(r30)
001764  ef49490d  loads.w r19, 212(r18)
001768  e74b5ffa  storeli.w r5, -580(r30)
00176c  ef42c908  loads.w r5, 140(r18)
001770  e74d3ffb  storeli.w r19, -548(r30)
001774  ef49890d  loads.w r19, 216(r18)
001778  674d5ffc  storeli.w r5, -300(r30)
00177c  ef420909  loads.w r5, 144(r18)
001780  e7413fff  storeli.w r19, -228(r30)
001784  ef49c90d  loads.w r19, 220(r18)
001788  670c5ffa  storeli.w r5, -576(r30)
00178c  ef424909  loads.w r5, 148(r18)
001790  670e3ffb  storeli.w r19, -544(r30)
001794  ef49090e  loads.w r19, 224(r18)
001798  674f5ffc  storeli.w r5, -268(r30)
00179c  ef428909  loads.w r5, 152(r18)
0017a0  67023fff  storeli.w r19, -224(r30)
0017a4  ef49490e  loads.w r19, 228(r18)
0017a8  e70f5ffc  storeli.w r5, -264(r30)
0017ac  ef42c909  loads.w r5, 156(r18)
0017b0  674e3ffb  storeli.w r19, -540(r30)
0017b4  ef49890e  loads.w r19, 232(r18)
0017b8  e70e3ffb  storeli.w r19, -536(r30)
0017bc  ef49c90e  loads.w r19, 236(r18)
0017c0  e74e3ffb  storeli.w r19, -532(r30)
0017c4  ef49090f  loads.w r19, 240(r18)
0017c8  670f3ffb  storeli.w r19, -528(r30)
0017cc  ef49490f  loads.w r19, 244(r18)
0017d0  674f3ffb  storeli.w r19, -524(r30)
0017d4  ef49890f  loads.w r19, 248(r18)
0017d8  6f49c90f  loads.w r18, 252(r18)
0017dc  e70f3ffb  storeli.w r19, -520(r30)
0017e0  e74f2ffb  storeli.w r18, -516(r30)
0017e4  3ba00d00  bneq r27, zero, 8
0017e8  1f8b0800  addli r22, r17, 0
0017ec  9bbd9800  slli r27, r17, 9
0017f0  9b399800  slli r19, r16, 9
0017f4  1bc97801  srli r18, r17, 23
0017f8  9b4a7801  srli r21, r16, 23
0017fc  938d0d00  seteq r27, r27, zero
001800  93890900  seteq r19, r19, zero
001804  1b09f90f  andi r18, r18, 255
001808  9b8afa0f  andi r21, r21, 255
00180c  1b79f90f  setlti r18, r18, 255
001810  9bfafa0f  setlti r21, r21, 255
001814  1719b901  or r18, r18, r27
001818  97993a01  or r19, r21, r19
00181c  17892901  and r18, r19, r18
001820  37570912  beq r18, zero, 9684
001824  ab0d4000  lui r27, 1024
001828  3b670812  bneq r16, zero, 9688
00182c  37a00800  beq r17, zero, 8
001830  9f080800  addli r17, r16, 0
001834  13686007  setle.f r16, zero, r22
001838  13690b06  setle.f r18, r22, zero
00183c  17080901  and r16, r18, r16
001840  3b200800  bneq r16, zero, 8
001844  9f080b00  addli r17, r22, 0
001848  13e91505  setlt.f r18, r11, r17
00184c  1f880800  addli r16, r17, 0
001850  3b200900  bneq r18, zero, 8
001854  1f880500  addli r16, r11, 0
001858  1bb99500  slli r18, r11, 9
00185c  9bb99800  slli r19, r17, 9
001860  9bca7501  srli r21, r11, 23
001864  1bcb7801  srli r22, r17, 23
001868  13090900  seteq r18, r18, zero
00186c  93890900  seteq r19, r19, zero
001870  9b8afa0f  andi r21, r21, 255
001874  1b0bfb0f  andi r22, r22, 255
001878  9bfafa0f  setlti r21, r21, 255
00187c  1b7bfb0f  setlti r22, r22, 255
001880  17992a01  or r18, r21, r18
001884  97193b01  or r19, r22, r19
001888  17892901  and r18, r19, r18
00188c  3b200900  bneq r18, zero, 8
001890  2b08c07f  lui r16, 523264
001894  1f8b0200  addli r22, r5, 0
001898  37a00800  beq r17, zero, 8
00189c  9f080800  addli r17, r16, 0
0018a0  9f020500  addli r5, r10, 0
0018a4  674c8ffb  storeli.w r24, -572(r30)
0018a8  37a00500  beq r11, zero, 8
0018ac  9f850800  addli r11, r17, 0
0018b0  93680007  setle.f r17, zero, r16
0018b4  13690806  setle.f r18, r16, zero
0018b8  63054ffb  loadli.w r10,  -608(r30)
0018bc  1f8c0000  addli r24, r1, 0
0018c0  97081901  and r17, r18, r17
0018c4  3ba00800  bneq r17, zero, 8
0018c8  9f050800  addli r11, r16, 0
0018cc  93e8b304  setlt.f r17, r7, r11
0018d0  e3404ffb  loadli.w r1,  -604(r30)
0018d4  1f880500  addli r16, r11, 0
0018d8  3ba00800  bneq r17, zero, 8
0018dc  1f880300  addli r16, r7, 0
0018e0  9bb89300  slli r17, r7, 9
0018e4  1bb99500  slli r18, r11, 9
0018e8  9bc97301  srli r19, r7, 23
0018ec  9bca7501  srli r21, r11, 23
0018f0  93880800  seteq r17, r17, zero
0018f4  13090900  seteq r18, r18, zero
0018f8  9b89f90f  andi r19, r19, 255
0018fc  9b8afa0f  andi r21, r21, 255
001900  9bf9f90f  setlti r19, r19, 255
001904  9bfafa0f  setlti r21, r21, 255
001908  97981901  or r17, r19, r17
00190c  17992a01  or r18, r21, r18
001910  97081901  and r17, r18, r17
001914  b7e30812  beq r17, zero, 9464
001918  e30a8ffb  loadli.w r21,  -576(r30)
00191c  bbf30512  bneq r11, zero, 9468
001920  37a00300  beq r7, zero, 8
001924  9f830500  addli r7, r11, 0
001928  93650007  setle.f r11, zero, r16
00192c  93680806  setle.f r17, r16, zero
001930  9785b800  and r11, r17, r11
001934  3ba00500  bneq r11, zero, 8
001938  9f030800  addli r7, r16, 0
00193c  13e87704  setlt.f r16, r15, r7
001940  9f850300  addli r11, r7, 0
001944  3b200800  bneq r16, zero, 8
001948  9f850700  addli r11, r15, 0
00194c  1bb89700  slli r16, r15, 9
001950  9bb89300  slli r17, r7, 9
001954  1bc97701  srli r18, r15, 23
001958  9bc97301  srli r19, r7, 23
00195c  13080800  seteq r16, r16, zero
001960  93880800  seteq r17, r17, zero
001964  1b09f90f  andi r18, r18, 255
001968  9b89f90f  andi r19, r19, 255
00196c  1b79f90f  setlti r18, r18, 255
001970  9bf9f90f  setlti r19, r19, 255
001974  17180901  or r16, r18, r16
001978  97981901  or r17, r19, r17
00197c  17880801  and r16, r17, r16
001980  b7120812  beq r16, zero, 9380
001984  e3497ffb  loadli.w r19,  -580(r30)
001988  bba20312  bneq r7, zero, 9384
00198c  37a00700  beq r15, zero, 8
001990  9f870300  addli r15, r7, 0
001994  9363b006  setle.f r7, zero, r11
001998  13e80506  setle.f r16, r11, zero
00199c  97037800  and r7, r16, r7
0019a0  3ba00300  bneq r7, zero, 8
0019a4  9f870500  addli r15, r11, 0
0019a8  9365fa04  setlt.f r11, r20, r15
0019ac  9f830700  addli r7, r15, 0
0019b0  3ba00500  bneq r11, zero, 8
0019b4  9f030a00  addli r7, r20, 0
0019b8  9b359a00  slli r11, r20, 9
0019bc  1bb89700  slli r16, r15, 9
0019c0  9b487a01  srli r17, r20, 23
0019c4  1bc97701  srli r18, r15, 23
0019c8  93850500  seteq r11, r11, zero
0019cc  13080800  seteq r16, r16, zero
0019d0  9b88f80f  andi r17, r17, 255
0019d4  1b09f90f  andi r18, r18, 255
0019d8  9bf8f80f  setlti r17, r17, 255
0019dc  1b79f90f  setlti r18, r18, 255
0019e0  9795b800  or r11, r17, r11
0019e4  17180901  or r16, r18, r16
0019e8  9705b800  and r11, r16, r11
0019ec  37c10512  beq r11, zero, 9296
0019f0  63097ffb  loadli.w r18,  -584(r30)
0019f4  3bd10712  bneq r15, zero, 9300
0019f8  37200a00  beq r20, zero, 8
0019fc  1f8a0700  addli r20, r15, 0
001a00  93657006  setle.f r11, zero, r7
001a04  93e70306  setle.f r15, r7, zero
001a08  9785b700  and r11, r15, r11
001a0c  3ba00500  bneq r11, zero, 8
001a10  1f8a0300  addli r20, r7, 0
001a14  93654705  setlt.f r11, r14, r20
001a18  9f030a00  addli r7, r20, 0
001a1c  3ba00500  bneq r11, zero, 8
001a20  9f030700  addli r7, r14, 0
001a24  9b359700  slli r11, r14, 9
001a28  9b379a00  slli r15, r20, 9
001a2c  1b487701  srli r16, r14, 23
001a30  9b487a01  srli r17, r20, 23
001a34  93850500  seteq r11, r11, zero
001a38  93870700  seteq r15, r15, zero
001a3c  1b08f80f  andi r16, r16, 255
001a40  9b88f80f  andi r17, r17, 255
001a44  1b78f80f  setlti r16, r16, 255
001a48  9bf8f80f  setlti r17, r17, 255
001a4c  9715b800  or r11, r16, r11
001a50  9797f800  or r15, r17, r15
001a54  9785b700  and r11, r15, r11
001a58  b7ff0510  beq r11, zero, 9212
001a5c  3b000a12  bneq r20, zero, 9216
001a60  37200700  beq r14, zero, 8
001a64  1f070a00  addli r14, r20, 0
001a68  93657006  setle.f r11, zero, r7
001a6c  93e70306  setle.f r15, r7, zero
001a70  9785b700  and r11, r15, r11
001a74  3ba00500  bneq r11, zero, 8
001a78  1f870300  addli r14, r7, 0
001a7c  9365e404  setlt.f r11, r8, r14
001a80  630a9ffb  loadli.w r20,  -568(r30)
001a84  9f030700  addli r7, r14, 0
001a88  3ba00500  bneq r11, zero, 8
001a8c  9f030400  addli r7, r8, 0
001a90  9b359400  slli r11, r8, 9
001a94  9b379700  slli r15, r14, 9
001a98  1b487401  srli r16, r8, 23
001a9c  9b487701  srli r17, r14, 23
001aa0  93850500  seteq r11, r11, zero
001aa4  93870700  seteq r15, r15, zero
001aa8  1b08f80f  andi r16, r16, 255
001aac  9b88f80f  andi r17, r17, 255
001ab0  1b78f80f  setlti r16, r16, 255
001ab4  9bf8f80f  setlti r17, r17, 255
001ab8  9715b800  or r11, r16, r11
001abc  9797f800  or r15, r17, r15
001ac0  9785b700  and r11, r15, r11
001ac4  b79e0510  beq r11, zero, 9124
001ac8  e3486ffb  loadli.w r17,  -588(r30)
001acc  bb2e0710  bneq r14, zero, 9128
001ad0  37200400  beq r8, zero, 8
001ad4  1f040700  addli r8, r14, 0
001ad8  93657006  setle.f r11, zero, r7
001adc  13e70306  setle.f r14, r7, zero
001ae0  9705b700  and r11, r14, r11
001ae4  3ba00500  bneq r11, zero, 8
001ae8  1f840300  addli r8, r7, 0
001aec  93658304  setlt.f r11, r6, r8
001af0  9f030400  addli r7, r8, 0
001af4  3ba00500  bneq r11, zero, 8
001af8  9f030300  addli r7, r6, 0
001afc  9b359300  slli r11, r6, 9
001b00  1b379400  slli r14, r8, 9
001b04  9b477301  srli r15, r6, 23
001b08  1b487401  srli r16, r8, 23
001b0c  93850500  seteq r11, r11, zero
001b10  13070700  seteq r14, r14, zero
001b14  9b87f70f  andi r15, r15, 255
001b18  1b08f80f  andi r16, r16, 255
001b1c  9bf7f70f  setlti r15, r15, 255
001b20  1b78f80f  setlti r16, r16, 255
001b24  9795b700  or r11, r15, r11
001b28  1717e800  or r14, r16, r14
001b2c  9705b700  and r11, r14, r11
001b30  37cd0510  beq r11, zero, 9040
001b34  63086ffb  loadli.w r16,  -592(r30)
001b38  3b5d0410  bneq r8, zero, 9044
001b3c  37200300  beq r6, zero, 8
001b40  1f030400  addli r6, r8, 0
001b44  13647006  setle.f r8, zero, r7
001b48  93e50306  setle.f r11, r7, zero
001b4c  17848500  and r8, r11, r8
001b50  3b200400  bneq r8, zero, 8
001b54  1f830300  addli r6, r7, 0
001b58  13e46104  setlt.f r8, r3, r6
001b5c  9f030300  addli r7, r6, 0
001b60  3b200400  bneq r8, zero, 8
001b64  9f830100  addli r7, r3, 0
001b68  1bb49100  slli r8, r3, 9
001b6c  9b359300  slli r11, r6, 9
001b70  1bc77101  srli r14, r3, 23
001b74  9b477301  srli r15, r6, 23
001b78  13040400  seteq r8, r8, zero
001b7c  93850500  seteq r11, r11, zero
001b80  1b07f70f  andi r14, r14, 255
001b84  9b87f70f  andi r15, r15, 255
001b88  1b77f70f  setlti r14, r14, 255
001b8c  9bf7f70f  setlti r15, r15, 255
001b90  17148700  or r8, r14, r8
001b94  9795b700  or r11, r15, r11
001b98  17848500  and r8, r11, r8
001b9c  b77b0410  beq r8, zero, 8956
001ba0  e3475ffb  loadli.w r15,  -596(r30)
001ba4  3b0c0310  bneq r6, zero, 8960
001ba8  37a00100  beq r3, zero, 8
001bac  9f010300  addli r3, r6, 0
001bb0  13637006  setle.f r6, zero, r7
001bb4  13e40306  setle.f r8, r7, zero
001bb8  17036400  and r6, r8, r6
001bbc  3b200300  bneq r6, zero, 8
001bc0  9f810300  addli r3, r7, 0
001bc4  93633604  setlt.f r7, r12, r3
001bc8  1f830100  addli r6, r3, 0
001bcc  3ba00300  bneq r7, zero, 8
001bd0  1f030600  addli r6, r12, 0
001bd4  9b339600  slli r7, r12, 9
001bd8  1bb49100  slli r8, r3, 9
001bdc  9b457601  srli r11, r12, 23
001be0  1bc77101  srli r14, r3, 23
001be4  93830300  seteq r7, r7, zero
001be8  13040400  seteq r8, r8, zero
001bec  9b85f50f  andi r11, r11, 255
001bf0  1b07f70f  andi r14, r14, 255
001bf4  9bf5f50f  setlti r11, r11, 255
001bf8  1b77f70f  setlti r14, r14, 255
001bfc  97937500  or r7, r11, r7
001c00  17148700  or r8, r14, r8
001c04  97037400  and r7, r8, r7
001c08  b7aa0310  beq r7, zero, 8872
001c0c  63072ffc  loadli.w r14,  -496(r30)
001c10  bbba0110  bneq r3, zero, 8876
001c14  37200600  beq r12, zero, 8
001c18  1f860100  addli r12, r3, 0
001c1c  93616006  setle.f r3, zero, r6
001c20  93630306  setle.f r7, r6, zero
001c24  97813300  and r3, r7, r3
001c28  3ba00100  bneq r3, zero, 8
001c2c  1f060300  addli r12, r6, 0
001c30  1363c104  setlt.f r6, r2, r12
001c34  9f010600  addli r3, r12, 0
001c38  3b200300  bneq r6, zero, 8
001c3c  9f010100  addli r3, r2, 0
001c40  1b339100  slli r6, r2, 9
001c44  9b339600  slli r7, r12, 9
001c48  1b447101  srli r8, r2, 23
001c4c  9b457601  srli r11, r12, 23
001c50  13030300  seteq r6, r6, zero
001c54  93830300  seteq r7, r7, zero
001c58  1b04f40f  andi r8, r8, 255
001c5c  9b85f50f  andi r11, r11, 255
001c60  1b74f40f  setlti r8, r8, 255
001c64  9bf5f50f  setlti r11, r11, 255
001c68  17136400  or r6, r8, r6
001c6c  97937500  or r7, r11, r7
001c70  17836300  and r6, r7, r6
001c74  37590310  beq r6, zero, 8788
001c78  3b690610  bneq r12, zero, 8792
001c7c  37200100  beq r2, zero, 8
001c80  1f010600  addli r2, r12, 0
001c84  13633006  setle.f r6, zero, r3
001c88  93e30106  setle.f r7, r3, zero
001c8c  17836300  and r6, r7, r6
001c90  3b200300  bneq r6, zero, 8
001c94  1f810100  addli r2, r3, 0
001c98  13e32604  setlt.f r6, r13, r2
001c9c  63065ffb  loadli.w r12,  -600(r30)
001ca0  9f010100  addli r3, r2, 0
001ca4  3b200300  bneq r6, zero, 8
001ca8  9f810600  addli r3, r13, 0
001cac  1bb39600  slli r6, r13, 9
001cb0  9b339100  slli r7, r2, 9
001cb4  1bc47601  srli r8, r13, 23
001cb8  9b457101  srli r11, r2, 23
001cbc  13030300  seteq r6, r6, zero
001cc0  93830300  seteq r7, r7, zero
001cc4  1b04f40f  andi r8, r8, 255
001cc8  9b85f50f  andi r11, r11, 255
001ccc  1b74f40f  setlti r8, r8, 255
001cd0  9bf5f50f  setlti r11, r11, 255
001cd4  17136400  or r6, r8, r6
001cd8  97937500  or r7, r11, r7
001cdc  17836300  and r6, r7, r6
001ce0  b7770310  beq r6, zero, 8700
001ce4  e305bffb  loadli.w r11,  -552(r30)
001ce8  3b080110  bneq r2, zero, 8704
001cec  37a00600  beq r13, zero, 8
001cf0  9f060100  addli r13, r2, 0
001cf4  13613006  setle.f r2, zero, r3
001cf8  13e30106  setle.f r6, r3, zero
001cfc  17012300  and r2, r6, r2
001d00  3b200100  bneq r2, zero, 8
001d04  9f860100  addli r13, r3, 0
001d08  93e1dc04  setlt.f r3, r25, r13
001d0c  1f810600  addli r2, r13, 0
001d10  3ba00100  bneq r3, zero, 8
001d14  1f810c00  addli r2, r25, 0
001d18  9bb19c00  slli r3, r25, 9
001d1c  1bb39600  slli r6, r13, 9
001d20  9bc37c01  srli r7, r25, 23
001d24  1bc47601  srli r8, r13, 23
001d28  93810100  seteq r3, r3, zero
001d2c  13030300  seteq r6, r6, zero
001d30  9b83f30f  andi r7, r7, 255
001d34  1b04f40f  andi r8, r8, 255
001d38  9bf3f30f  setlti r7, r7, 255
001d3c  1b74f40f  setlti r8, r8, 255
001d40  97913300  or r3, r7, r3
001d44  17136400  or r6, r8, r6
001d48  97013300  and r3, r6, r3
001d4c  b7a60110  beq r3, zero, 8616
001d50  bbb60610  bneq r13, zero, 8620
001d54  37a00c00  beq r25, zero, 8
001d58  9f8c0600  addli r25, r13, 0
001d5c  93612006  setle.f r3, zero, r2
001d60  13630106  setle.f r6, r2, zero
001d64  97013300  and r3, r6, r3
001d68  3ba00100  bneq r3, zero, 8
001d6c  9f0c0100  addli r25, r2, 0
001d70  93619d05  setlt.f r3, r26, r25
001d74  e3461ffc  loadli.w r13,  -500(r30)
001d78  1f810c00  addli r2, r25, 0
001d7c  3ba00100  bneq r3, zero, 8
001d80  1f010d00  addli r2, r26, 0
001d84  9b319d00  slli r3, r26, 9
001d88  1bb39c00  slli r6, r25, 9
001d8c  9b437d01  srli r7, r26, 23
001d90  1bc47c01  srli r8, r25, 23
001d94  93810100  seteq r3, r3, zero
001d98  13030300  seteq r6, r6, zero
001d9c  9b83f30f  andi r7, r7, 255
001da0  1b04f40f  andi r8, r8, 255
001da4  9bf3f30f  setlti r7, r7, 255
001da8  1b74f40f  setlti r8, r8, 255
001dac  97913300  or r3, r7, r3
001db0  17136400  or r6, r8, r6
001db4  97013300  and r3, r6, r3
001db8  37c50110  beq r3, zero, 8528
001dbc  3bd50c10  bneq r25, zero, 8532
001dc0  37200d00  beq r26, zero, 8
001dc4  1f8d0c00  addli r26, r25, 0
001dc8  93612006  setle.f r3, zero, r2
001dcc  13630106  setle.f r6, r2, zero
001dd0  97013300  and r3, r6, r3
001dd4  3ba00100  bneq r3, zero, 8
001dd8  1f0d0100  addli r26, r2, 0
001ddc  9361a205  setlt.f r3, r4, r26
001de0  e30c4ffd  loadli.w r25,  -352(r30)
001de4  1f010d00  addli r2, r26, 0
001de8  3ba00100  bneq r3, zero, 8
001dec  1f010200  addli r2, r4, 0
001df0  9b319200  slli r3, r4, 9
001df4  1b339d00  slli r6, r26, 9
001df8  9b437201  srli r7, r4, 23
001dfc  1b447d01  srli r8, r26, 23
001e00  93810100  seteq r3, r3, zero
001e04  13030300  seteq r6, r6, zero
001e08  9b83f30f  andi r7, r7, 255
001e0c  1b04f40f  andi r8, r8, 255
001e10  9bf3f30f  setlti r7, r7, 255
001e14  1b74f40f  setlti r8, r8, 255
001e18  97913300  or r3, r7, r3
001e1c  17136400  or r6, r8, r6
001e20  97013300  and r3, r6, r3
001e24  b7e30110  beq r3, zero, 8440
001e28  bb730d10  bneq r26, zero, 8444
001e2c  37200200  beq r4, zero, 8
001e30  1f020d00  addli r4, r26, 0
001e34  93612006  setle.f r3, zero, r2
001e38  13630106  setle.f r6, r2, zero
001e3c  97013300  and r3, r6, r3
001e40  3ba00100  bneq r3, zero, 8
001e44  1f020100  addli r4, r2, 0
001e48  93614e04  setlt.f r3, r28, r4
001e4c  630d0ffc  loadli.w r26,  -512(r30)
001e50  1f010200  addli r2, r4, 0
001e54  3ba00100  bneq r3, zero, 8
001e58  1f010e00  addli r2, r28, 0
001e5c  9b319e00  slli r3, r28, 9
001e60  1b339200  slli r6, r4, 9
001e64  9b437e01  srli r7, r28, 23
001e68  1b447201  srli r8, r4, 23
001e6c  93810100  seteq r3, r3, zero
001e70  13030300  seteq r6, r6, zero
001e74  9b83f30f  andi r7, r7, 255
001e78  1b04f40f  andi r8, r8, 255
001e7c  9bf3f30f  setlti r7, r7, 255
001e80  1b74f40f  setlti r8, r8, 255
001e84  97913300  or r3, r7, r3
001e88  17136400  or r6, r8, r6
001e8c  97013300  and r3, r6, r3
001e90  b7820110  beq r3, zero, 8352
001e94  6344effb  loadli.w r8,  -524(r30)
001e98  bb120210  bneq r4, zero, 8356
001e9c  37200e00  beq r28, zero, 8
001ea0  1f0e0200  addli r28, r4, 0
001ea4  93612006  setle.f r3, zero, r2
001ea8  13620106  setle.f r4, r2, zero
001eac  97013200  and r3, r4, r3
001eb0  3ba00100  bneq r3, zero, 8
001eb4  1f0e0100  addli r28, r2, 0
001eb8  93e1c405  setlt.f r3, r9, r28
001ebc  1f010e00  addli r2, r28, 0
001ec0  3ba00100  bneq r3, zero, 8
001ec4  1f810400  addli r2, r9, 0
001ec8  9bb19400  slli r3, r9, 9
001ecc  1b329e00  slli r4, r28, 9
001ed0  1bc37401  srli r6, r9, 23
001ed4  9b437e01  srli r7, r28, 23
001ed8  93810100  seteq r3, r3, zero
001edc  13020200  seteq r4, r4, zero
001ee0  1b03f30f  andi r6, r6, 255
001ee4  9b83f30f  andi r7, r7, 255
001ee8  1b73f30f  setlti r6, r6, 255
001eec  9bf3f30f  setlti r7, r7, 255
001ef0  97113300  or r3, r6, r3
001ef4  17924300  or r4, r7, r4
001ef8  97013200  and r3, r4, r3
001efc  37b10110  beq r3, zero, 8268
001f00  3b410e10  bneq r28, zero, 8272
001f04  37a00400  beq r9, zero, 8
001f08  9f040e00  addli r9, r28, 0
001f0c  93612006  setle.f r3, zero, r2
001f10  13620106  setle.f r4, r2, zero
001f14  97013200  and r3, r4, r3
001f18  3ba00100  bneq r3, zero, 8
001f1c  9f040100  addli r9, r2, 0
001f20  93619504  setlt.f r3, r10, r9
001f24  634e0ffc  loadli.w r28,  -508(r30)
001f28  1f810400  addli r2, r9, 0
001f2c  3ba00100  bneq r3, zero, 8
001f30  1f010500  addli r2, r10, 0
001f34  9b319500  slli r3, r10, 9
001f38  1bb29400  slli r4, r9, 9
001f3c  1b437501  srli r6, r10, 23
001f40  9bc37401  srli r7, r9, 23
001f44  93810100  seteq r3, r3, zero
001f48  13020200  seteq r4, r4, zero
001f4c  1b03f30f  andi r6, r6, 255
001f50  9b83f30f  andi r7, r7, 255
001f54  1b73f30f  setlti r6, r6, 255
001f58  9bf3f30f  setlti r7, r7, 255
001f5c  97113300  or r3, r6, r3
001f60  17924300  or r4, r7, r4
001f64  97013200  and r3, r4, r3
001f68  b7df010e  beq r3, zero, 8180
001f6c  bbef040e  bneq r9, zero, 8184
001f70  37200500  beq r10, zero, 8
001f74  1f850400  addli r10, r9, 0
001f78  93612006  setle.f r3, zero, r2
001f7c  13620106  setle.f r4, r2, zero
001f80  97013200  and r3, r4, r3
001f84  3ba00100  bneq r3, zero, 8
001f88  1f050100  addli r10, r2, 0
001f8c  93e1a004  setlt.f r3, r1, r10
001f90  e304effb  loadli.w r9,  -528(r30)
001f94  1f010500  addli r2, r10, 0
001f98  3ba00100  bneq r3, zero, 8
001f9c  1f810000  addli r2, r1, 0
001fa0  9bb19000  slli r3, r1, 9
001fa4  1b329500  slli r4, r10, 9
001fa8  1bc37001  srli r6, r1, 23
001fac  9b437501  srli r7, r10, 23
001fb0  93810100  seteq r3, r3, zero
001fb4  13020200  seteq r4, r4, zero
001fb8  1b03f30f  andi r6, r6, 255
001fbc  9b83f30f  andi r7, r7, 255
001fc0  1b73f30f  setlti r6, r6, 255
001fc4  9bf3f30f  setlti r7, r7, 255
001fc8  97113300  or r3, r6, r3
001fcc  17924300  or r4, r7, r4
001fd0  97013200  and r3, r4, r3
001fd4  37fe010e  beq r3, zero, 8092
001fd8  bb0e050e  bneq r10, zero, 8096
001fdc  37a00000  beq r1, zero, 8
001fe0  9f000500  addli r1, r10, 0
001fe4  93612006  setle.f r3, zero, r2
001fe8  13620106  setle.f r4, r2, zero
001fec  97013200  and r3, r4, r3
001ff0  3ba00100  bneq r3, zero, 8
001ff4  9f000100  addli r1, r2, 0
001ff8  93e11204  setlt.f r3, r5, r1
001ffc  1f810000  addli r2, r1, 0
002000  3ba00100  bneq r3, zero, 8
002004  1f810200  addli r2, r5, 0
002008  9bb19200  slli r3, r5, 9
00200c  1bb29000  slli r4, r1, 9
002010  1bc37201  srli r6, r5, 23
002014  9bc37001  srli r7, r1, 23
002018  93810100  seteq r3, r3, zero
00201c  13020200  seteq r4, r4, zero
002020  1b03f30f  andi r6, r6, 255
002024  9b83f30f  andi r7, r7, 255
002028  1b73f30f  setlti r6, r6, 255
00202c  9bf3f30f  setlti r7, r7, 255
002030  97113300  or r3, r6, r3
002034  17924300  or r4, r7, r4
002038  97013200  and r3, r4, r3
00203c  37ad010e  beq r3, zero, 8008
002040  e303fffb  loadli.w r7,  -520(r30)
002044  3bbd000e  bneq r1, zero, 8012
002048  37a00200  beq r5, zero, 8
00204c  9f820000  addli r5, r1, 0
002050  93602006  setle.f r1, zero, r2
002054  93610106  setle.f r3, r2, zero
002058  97801100  and r1, r3, r1
00205c  3ba00000  bneq r1, zero, 8
002060  9f020100  addli r5, r2, 0
002064  13615c04  setlt.f r2, r24, r5
002068  9f800200  addli r1, r5, 0
00206c  3b200100  bneq r2, zero, 8
002070  9f000c00  addli r1, r24, 0
002074  1b319c00  slli r2, r24, 9
002078  9bb19200  slli r3, r5, 9
00207c  1b427c01  srli r4, r24, 23
002080  1bc37201  srli r6, r5, 23
002084  13010100  seteq r2, r2, zero
002088  93810100  seteq r3, r3, zero
00208c  1b02f20f  andi r4, r4, 255
002090  1b03f30f  andi r6, r6, 255
002094  1b72f20f  setlti r4, r4, 255
002098  1b73f30f  setlti r6, r6, 255
00209c  17112200  or r2, r4, r2
0020a0  97113300  or r3, r6, r3
0020a4  17812100  and r2, r3, r2
0020a8  b75b010e  beq r2, zero, 7924
0020ac  6303cffb  loadli.w r6,  -544(r30)
0020b0  bbeb020e  bneq r5, zero, 7928
0020b4  37200c00  beq r24, zero, 8
0020b8  1f8c0200  addli r24, r5, 0
0020bc  13611006  setle.f r2, zero, r1
0020c0  93e10006  setle.f r3, r1, zero
0020c4  17812100  and r2, r3, r2
0020c8  3b200100  bneq r2, zero, 8
0020cc  1f8c0000  addli r24, r1, 0
0020d0  13618605  setlt.f r2, r12, r24
0020d4  9f000c00  addli r1, r24, 0
0020d8  3b200100  bneq r2, zero, 8
0020dc  9f000600  addli r1, r12, 0
0020e0  1b319600  slli r2, r12, 9
0020e4  9b319c00  slli r3, r24, 9
0020e8  1b427601  srli r4, r12, 23
0020ec  9b427c01  srli r5, r24, 23
0020f0  13010100  seteq r2, r2, zero
0020f4  93810100  seteq r3, r3, zero
0020f8  1b02f20f  andi r4, r4, 255
0020fc  9b82f20f  andi r5, r5, 255
002100  1b72f20f  setlti r4, r4, 255
002104  9bf2f20f  setlti r5, r5, 255
002108  17112200  or r2, r4, r2
00210c  97913200  or r3, r5, r3
002110  17812100  and r2, r3, r2
002114  b70a010e  beq r2, zero, 7840
002118  63025ffd  loadli.w r4,  -344(r30)
00211c  bb1a0c0e  bneq r24, zero, 7844
002120  37200600  beq r12, zero, 8
002124  1f060c00  addli r12, r24, 0
002128  13611006  setle.f r2, zero, r1
00212c  93e10006  setle.f r3, r1, zero
002130  17812100  and r2, r3, r2
002134  3b200100  bneq r2, zero, 8
002138  1f860000  addli r12, r1, 0
00213c  1361c204  setlt.f r2, r4, r12
002140  634cbffb  loadli.w r24,  -548(r30)
002144  9f000600  addli r1, r12, 0
002148  3b200100  bneq r2, zero, 8
00214c  9f000200  addli r1, r4, 0
002150  1b319200  slli r2, r4, 9
002154  9b319600  slli r3, r12, 9
002158  1b427201  srli r4, r4, 23
00215c  9b427601  srli r5, r12, 23
002160  13010100  seteq r2, r2, zero
002164  93810100  seteq r3, r3, zero
002168  1b02f20f  andi r4, r4, 255
00216c  9b82f20f  andi r5, r5, 255
002170  1b72f20f  setlti r4, r4, 255
002174  9bf2f20f  setlti r5, r5, 255
002178  17112200  or r2, r4, r2
00217c  97913200  or r3, r5, r3
002180  17812100  and r2, r3, r2
002184  3729010e  beq r2, zero, 7752
002188  3b39060e  bneq r12, zero, 7756
00218c  e3025ffd  loadli.w r5,  -344(r30)
002190  37a00200  beq r5, zero, 8
002194  9f020600  addli r5, r12, 0
002198  13611006  setle.f r2, zero, r1
00219c  93e10006  setle.f r3, r1, zero
0021a0  17812100  and r2, r3, r2
0021a4  3b200100  bneq r2, zero, 8
0021a8  9f820000  addli r5, r1, 0
0021ac  13e15704  setlt.f r2, r15, r5
0021b0  9f800200  addli r1, r5, 0
0021b4  3b200100  bneq r2, zero, 8
0021b8  9f800700  addli r1, r15, 0
0021bc  1bb19700  slli r2, r15, 9
0021c0  9bb19200  slli r3, r5, 9
0021c4  1bc27701  srli r4, r15, 23
0021c8  1f860200  addli r12, r5, 0
0021cc  9bc27201  srli r5, r5, 23
0021d0  13010100  seteq r2, r2, zero
0021d4  93810100  seteq r3, r3, zero
0021d8  1b02f20f  andi r4, r4, 255
0021dc  9b82f20f  andi r5, r5, 255
0021e0  1b72f20f  setlti r4, r4, 255
0021e4  9bf2f20f  setlti r5, r5, 255
0021e8  17112200  or r2, r4, r2
0021ec  97913200  or r3, r5, r3
0021f0  17812100  and r2, r3, r2
0021f4  b747010e  beq r2, zero, 7664
0021f8  63026ffd  loadli.w r4,  -336(r30)
0021fc  bb57060e  bneq r12, zero, 7668
002200  37a00700  beq r15, zero, 8
002204  9f070600  addli r15, r12, 0
002208  13611006  setle.f r2, zero, r1
00220c  93e10006  setle.f r3, r1, zero
002210  17812100  and r2, r3, r2
002214  3b200100  bneq r2, zero, 8
002218  9f870000  addli r15, r1, 0
00221c  1361f204  setlt.f r2, r4, r15
002220  9f800700  addli r1, r15, 0
002224  3b200100  bneq r2, zero, 8
002228  9f000200  addli r1, r4, 0
00222c  1b319200  slli r2, r4, 9
002230  9bb19700  slli r3, r15, 9
002234  1b427201  srli r4, r4, 23
002238  9bc27701  srli r5, r15, 23
00223c  13010100  seteq r2, r2, zero
002240  93810100  seteq r3, r3, zero
002244  1b02f20f  andi r4, r4, 255
002248  9b82f20f  andi r5, r5, 255
00224c  1b72f20f  setlti r4, r4, 255
002250  9bf2f20f  setlti r5, r5, 255
002254  17112200  or r2, r4, r2
002258  97913200  or r3, r5, r3
00225c  17812100  and r2, r3, r2
002260  3776010e  beq r2, zero, 7580
002264  bb86070e  bneq r15, zero, 7584
002268  e3026ffd  loadli.w r5,  -336(r30)
00226c  37a00200  beq r5, zero, 8
002270  9f820700  addli r5, r15, 0
002274  13611006  setle.f r2, zero, r1
002278  93e10006  setle.f r3, r1, zero
00227c  17812100  and r2, r3, r2
002280  3b200100  bneq r2, zero, 8
002284  9f820000  addli r5, r1, 0
002288  13615804  setlt.f r2, r16, r5
00228c  9f800200  addli r1, r5, 0
002290  3b200100  bneq r2, zero, 8
002294  9f000800  addli r1, r16, 0
002298  1b319800  slli r2, r16, 9
00229c  9bb19200  slli r3, r5, 9
0022a0  1b427801  srli r4, r16, 23
0022a4  9f870200  addli r15, r5, 0
0022a8  9bc27201  srli r5, r5, 23
0022ac  13010100  seteq r2, r2, zero
0022b0  93810100  seteq r3, r3, zero
0022b4  1b02f20f  andi r4, r4, 255
0022b8  9b82f20f  andi r5, r5, 255
0022bc  1b72f20f  setlti r4, r4, 255
0022c0  9bf2f20f  setlti r5, r5, 255
0022c4  17112200  or r2, r4, r2
0022c8  97913200  or r3, r5, r3
0022cc  17812100  and r2, r3, r2
0022d0  3715010e  beq r2, zero, 7492
0022d4  63027ffd  loadli.w r4,  -328(r30)
0022d8  3ba5070e  bneq r15, zero, 7496
0022dc  37200800  beq r16, zero, 8
0022e0  1f880700  addli r16, r15, 0
0022e4  13611006  setle.f r2, zero, r1
0022e8  93e10006  setle.f r3, r1, zero
0022ec  17812100  and r2, r3, r2
0022f0  3b200100  bneq r2, zero, 8
0022f4  1f880000  addli r16, r1, 0
0022f8  13610205  setlt.f r2, r4, r16
0022fc  9f000800  addli r1, r16, 0
002300  3b200100  bneq r2, zero, 8
002304  9f000200  addli r1, r4, 0
002308  1b319200  slli r2, r4, 9
00230c  9b319800  slli r3, r16, 9
002310  1b427201  srli r4, r4, 23
002314  9b427801  srli r5, r16, 23
002318  13010100  seteq r2, r2, zero
00231c  93810100  seteq r3, r3, zero
002320  1b02f20f  andi r4, r4, 255
002324  9b82f20f  andi r5, r5, 255
002328  1b72f20f  setlti r4, r4, 255
00232c  9bf2f20f  setlti r5, r5, 255
002330  17112200  or r2, r4, r2
002334  97913200  or r3, r5, r3
002338  17812100  and r2, r3, r2
00233c  b743010e  beq r2, zero, 7408
002340  bb53080e  bneq r16, zero, 7412
002344  e3027ffd  loadli.w r5,  -328(r30)
002348  37a00200  beq r5, zero, 8
00234c  9f020800  addli r5, r16, 0
002350  13611006  setle.f r2, zero, r1
002354  93e10006  setle.f r3, r1, zero
002358  17812100  and r2, r3, r2
00235c  3b200100  bneq r2, zero, 8
002360  9f820000  addli r5, r1, 0
002364  13e15804  setlt.f r2, r17, r5
002368  9f800200  addli r1, r5, 0
00236c  3b200100  bneq r2, zero, 8
002370  9f800800  addli r1, r17, 0
002374  1bb19800  slli r2, r17, 9
002378  9bb19200  slli r3, r5, 9
00237c  1bc27801  srli r4, r17, 23
002380  1f880200  addli r16, r5, 0
002384  9bc27201  srli r5, r5, 23
002388  13010100  seteq r2, r2, zero
00238c  93810100  seteq r3, r3, zero
002390  1b02f20f  andi r4, r4, 255
002394  9b82f20f  andi r5, r5, 255
002398  1b72f20f  setlti r4, r4, 255
00239c  9bf2f20f  setlti r5, r5, 255
0023a0  17112200  or r2, r4, r2
0023a4  97913200  or r3, r5, r3
0023a8  17812100  and r2, r3, r2
0023ac  3762010e  beq r2, zero, 7320
0023b0  63028ffd  loadli.w r4,  -320(r30)
0023b4  3b72080e  bneq r16, zero, 7324
0023b8  37a00800  beq r17, zero, 8
0023bc  9f080800  addli r17, r16, 0
0023c0  13611006  setle.f r2, zero, r1
0023c4  93e10006  setle.f r3, r1, zero
0023c8  17812100  and r2, r3, r2
0023cc  3b200100  bneq r2, zero, 8
0023d0  9f880000  addli r17, r1, 0
0023d4  13611205  setlt.f r2, r4, r17
0023d8  9f800800  addli r1, r17, 0
0023dc  3b200100  bneq r2, zero, 8
0023e0  9f000200  addli r1, r4, 0
0023e4  1b319200  slli r2, r4, 9
0023e8  9bb19800  slli r3, r17, 9
0023ec  1b427201  srli r4, r4, 23
0023f0  9bc27801  srli r5, r17, 23
0023f4  13010100  seteq r2, r2, zero
0023f8  93810100  seteq r3, r3, zero
0023fc  1b02f20f  andi r4, r4, 255
002400  9b82f20f  andi r5, r5, 255
002404  1b72f20f  setlti r4, r4, 255
002408  9bf2f20f  setlti r5, r5, 255
00240c  17112200  or r2, r4, r2
002410  97913200  or r3, r5, r3
002414  17812100  and r2, r3, r2
002418  3711010e  beq r2, zero, 7236
00241c  3ba1080e  bneq r17, zero, 7240
002420  e3028ffd  loadli.w r5,  -320(r30)
002424  37a00200  beq r5, zero, 8
002428  9f820800  addli r5, r17, 0
00242c  13611006  setle.f r2, zero, r1
002430  93e10006  setle.f r3, r1, zero
002434  17812100  and r2, r3, r2
002438  3b200100  bneq r2, zero, 8
00243c  9f820000  addli r5, r1, 0
002440  13615904  setlt.f r2, r18, r5
002444  9f800200  addli r1, r5, 0
002448  3b200100  bneq r2, zero, 8
00244c  9f000900  addli r1, r18, 0
002450  1b319900  slli r2, r18, 9
002454  9bb19200  slli r3, r5, 9
002458  1b427901  srli r4, r18, 23
00245c  9f880200  addli r17, r5, 0
002460  9bc27201  srli r5, r5, 23
002464  13010100  seteq r2, r2, zero
002468  93810100  seteq r3, r3, zero
00246c  1b02f20f  andi r4, r4, 255
002470  9b82f20f  andi r5, r5, 255
002474  1b72f20f  setlti r4, r4, 255
002478  9bf2f20f  setlti r5, r5, 255
00247c  17112200  or r2, r4, r2
002480  97913200  or r3, r5, r3
002484  17812100  and r2, r3, r2
002488  b73f010c  beq r2, zero, 7148
00248c  63029ffd  loadli.w r4,  -312(r30)
002490  bbcf080c  bneq r17, zero, 7152
002494  37200900  beq r18, zero, 8
002498  1f890800  addli r18, r17, 0
00249c  13611006  setle.f r2, zero, r1
0024a0  93e10006  setle.f r3, r1, zero
0024a4  17812100  and r2, r3, r2
0024a8  3b200100  bneq r2, zero, 8
0024ac  1f890000  addli r18, r1, 0
0024b0  13612205  setlt.f r2, r4, r18
0024b4  9f000900  addli r1, r18, 0
0024b8  3b200100  bneq r2, zero, 8
0024bc  9f000200  addli r1, r4, 0
0024c0  1b319200  slli r2, r4, 9
0024c4  9b319900  slli r3, r18, 9
0024c8  1b427201  srli r4, r4, 23
0024cc  9b427901  srli r5, r18, 23
0024d0  13010100  seteq r2, r2, zero
0024d4  93810100  seteq r3, r3, zero
0024d8  1b02f20f  andi r4, r4, 255
0024dc  9b82f20f  andi r5, r5, 255
0024e0  1b72f20f  setlti r4, r4, 255
0024e4  9bf2f20f  setlti r5, r5, 255
0024e8  17112200  or r2, r4, r2
0024ec  97913200  or r3, r5, r3
0024f0  17812100  and r2, r3, r2
0024f4  376e010c  beq r2, zero, 7064
0024f8  3b7e090c  bneq r18, zero, 7068
0024fc  e3029ffd  loadli.w r5,  -312(r30)
002500  37a00200  beq r5, zero, 8
002504  9f020900  addli r5, r18, 0
002508  13611006  setle.f r2, zero, r1
00250c  93e10006  setle.f r3, r1, zero
002510  17812100  and r2, r3, r2
002514  3b200100  bneq r2, zero, 8
002518  9f820000  addli r5, r1, 0
00251c  13e15904  setlt.f r2, r19, r5
002520  9f800200  addli r1, r5, 0
002524  3b200100  bneq r2, zero, 8
002528  9f800900  addli r1, r19, 0
00252c  1bb19900  slli r2, r19, 9
002530  9bb19200  slli r3, r5, 9
002534  1bc27901  srli r4, r19, 23
002538  1f890200  addli r18, r5, 0
00253c  9bc27201  srli r5, r5, 23
002540  13010100  seteq r2, r2, zero
002544  93810100  seteq r3, r3, zero
002548  1b02f20f  andi r4, r4, 255
00254c  9b82f20f  andi r5, r5, 255
002550  1b72f20f  setlti r4, r4, 255
002554  9bf2f20f  setlti r5, r5, 255
002558  17112200  or r2, r4, r2
00255c  97913200  or r3, r5, r3
002560  17812100  and r2, r3, r2
002564  370d010c  beq r2, zero, 6976
002568  6342affd  loadli.w r4,  -300(r30)
00256c  3b1d090c  bneq r18, zero, 6980
002570  37a00900  beq r19, zero, 8
002574  9f090900  addli r19, r18, 0
002578  13611006  setle.f r2, zero, r1
00257c  93e10006  setle.f r3, r1, zero
002580  17812100  and r2, r3, r2
002584  3b200100  bneq r2, zero, 8
002588  9f890000  addli r19, r1, 0
00258c  13613205  setlt.f r2, r4, r19
002590  9f800900  addli r1, r19, 0
002594  3b200100  bneq r2, zero, 8
002598  9f000200  addli r1, r4, 0
00259c  1b319200  slli r2, r4, 9
0025a0  9bb19900  slli r3, r19, 9
0025a4  1b427201  srli r4, r4, 23
0025a8  9bc27901  srli r5, r19, 23
0025ac  13010100  seteq r2, r2, zero
0025b0  93810100  seteq r3, r3, zero
0025b4  1b02f20f  andi r4, r4, 255
0025b8  9b82f20f  andi r5, r5, 255
0025bc  1b72f20f  setlti r4, r4, 255
0025c0  9bf2f20f  setlti r5, r5, 255
0025c4  17112200  or r2, r4, r2
0025c8  97913200  or r3, r5, r3
0025cc  17812100  and r2, r3, r2
0025d0  b73b010c  beq r2, zero, 6892
0025d4  bbcb090c  bneq r19, zero, 6896
0025d8  e342affd  loadli.w r5,  -300(r30)
0025dc  37a00200  beq r5, zero, 8
0025e0  9f820900  addli r5, r19, 0
0025e4  13611006  setle.f r2, zero, r1
0025e8  93e10006  setle.f r3, r1, zero
0025ec  17812100  and r2, r3, r2
0025f0  3b200100  bneq r2, zero, 8
0025f4  9f820000  addli r5, r1, 0
0025f8  13e15a04  setlt.f r2, r21, r5
0025fc  9f800200  addli r1, r5, 0
002600  3b200100  bneq r2, zero, 8
002604  9f800a00  addli r1, r21, 0
002608  1bb19a00  slli r2, r21, 9
00260c  9bb19200  slli r3, r5, 9
002610  1bc27a01  srli r4, r21, 23
002614  9f890200  addli r19, r5, 0
002618  9bc27201  srli r5, r5, 23
00261c  13010100  seteq r2, r2, zero
002620  93810100  seteq r3, r3, zero
002624  1b02f20f  andi r4, r4, 255
002628  9b82f20f  andi r5, r5, 255
00262c  1b72f20f  setlti r4, r4, 255
002630  9bf2f20f  setlti r5, r5, 255
002634  17112200  or r2, r4, r2
002638  97913200  or r3, r5, r3
00263c  17812100  and r2, r3, r2
002640  375a010c  beq r2, zero, 6804
002644  6342effd  loadli.w r4,  -268(r30)
002648  3bea090c  bneq r19, zero, 6808
00264c  37a00a00  beq r21, zero, 8
002650  9f8a0900  addli r21, r19, 0
002654  13611006  setle.f r2, zero, r1
002658  93e10006  setle.f r3, r1, zero
00265c  63459ffb  loadli.w r10,  -564(r30)
002660  17812100  and r2, r3, r2
002664  3b200100  bneq r2, zero, 8
002668  9f8a0000  addli r21, r1, 0
00266c  13615205  setlt.f r2, r4, r21
002670  1f090700  addli r18, r14, 0
002674  9f800a00  addli r1, r21, 0
002678  3b200100  bneq r2, zero, 8
00267c  9f000200  addli r1, r4, 0
002680  1b319200  slli r2, r4, 9
002684  9bb19a00  slli r3, r21, 9
002688  1b427201  srli r4, r4, 23
00268c  9bc27a01  srli r5, r21, 23
002690  1f870400  addli r14, r9, 0
002694  13010100  seteq r2, r2, zero
002698  93810100  seteq r3, r3, zero
00269c  1b02f20f  andi r4, r4, 255
0026a0  9b82f20f  andi r5, r5, 255
0026a4  1b72f20f  setlti r4, r4, 255
0026a8  9bf2f20f  setlti r5, r5, 255
0026ac  17112200  or r2, r4, r2
0026b0  97913200  or r3, r5, r3
0026b4  17812100  and r2, r3, r2
0026b8  3b200100  bneq r2, zero, 8
0026bc  ab00c07f  lui r1, 523264
0026c0  6302fffd  loadli.w r4,  -264(r30)
0026c4  9f840300  addli r9, r7, 0
0026c8  37a00a00  beq r21, zero, 8
0026cc  9f8a0000  addli r21, r1, 0
0026d0  e3432ffc  loadli.w r7,  -492(r30)
0026d4  e342effd  loadli.w r5,  -268(r30)
0026d8  37a00200  beq r5, zero, 8
0026dc  9f820a00  addli r5, r21, 0
0026e0  13611006  setle.f r2, zero, r1
0026e4  93e10006  setle.f r3, r1, zero
0026e8  9f870c00  addli r15, r25, 0
0026ec  17812100  and r2, r3, r2
0026f0  3b200100  bneq r2, zero, 8
0026f4  9f820000  addli r5, r1, 0
0026f8  13615204  setlt.f r2, r4, r5
0026fc  e30c0ffd  loadli.w r25,  -384(r30)
002700  9f800200  addli r1, r5, 0
002704  3b200100  bneq r2, zero, 8
002708  9f000200  addli r1, r4, 0
00270c  1b319200  slli r2, r4, 9
002710  9bb19200  slli r3, r5, 9
002714  1b427201  srli r4, r4, 23
002718  9f8a0200  addli r21, r5, 0
00271c  9bc27201  srli r5, r5, 23
002720  6308affb  loadli.w r16,  -560(r30)
002724  13010100  seteq r2, r2, zero
002728  93810100  seteq r3, r3, zero
00272c  1b02f20f  andi r4, r4, 255
002730  9b82f20f  andi r5, r5, 255
002734  1b72f20f  setlti r4, r4, 255
002738  9bf2f20f  setlti r5, r5, 255
00273c  17112200  or r2, r4, r2
002740  97913200  or r3, r5, r3
002744  17812100  and r2, r3, r2
002748  3b200100  bneq r2, zero, 8
00274c  ab00c07f  lui r1, 523264
002750  e3091ffc  loadli.w r19,  -504(r30)
002754  37a00a00  beq r21, zero, 8
002758  9f8a0000  addli r21, r1, 0
00275c  1f810a00  addli r2, r21, 0
002760  e34a0ffd  loadli.w r21,  -380(r30)
002764  e302fffd  loadli.w r5,  -264(r30)
002768  37a00200  beq r5, zero, 8
00276c  9f020100  addli r5, r2, 0
002770  13611006  setle.f r2, zero, r1
002774  93e10006  setle.f r3, r1, zero
002778  9f080400  addli r17, r8, 0
00277c  17812100  and r2, r3, r2
002780  3b200100  bneq r2, zero, 8
002784  9f820000  addli r5, r1, 0
002788  13615b04  setlt.f r2, r22, r5
00278c  6344cffb  loadli.w r8,  -540(r30)
002790  9f800200  addli r1, r5, 0
002794  3b200100  bneq r2, zero, 8
002798  9f000b00  addli r1, r22, 0
00279c  1b319b00  slli r2, r22, 9
0027a0  9bb19200  slli r3, r5, 9
0027a4  1b427b01  srli r4, r22, 23
0027a8  1f860200  addli r12, r5, 0
0027ac  9bc27201  srli r5, r5, 23
0027b0  13010100  seteq r2, r2, zero
0027b4  93810100  seteq r3, r3, zero
0027b8  1b02f20f  andi r4, r4, 255
0027bc  9b82f20f  andi r5, r5, 255
0027c0  1b72f20f  setlti r4, r4, 255
0027c4  9bf2f20f  setlti r5, r5, 255
0027c8  17112200  or r2, r4, r2
0027cc  97913200  or r3, r5, r3
0027d0  17812100  and r2, r3, r2
0027d4  3764010c  beq r2, zero, 6424
0027d8  6342fffd  loadli.w r4,  -260(r30)
0027dc  3b74060c  bneq r12, zero, 6428
0027e0  37200b00  beq r22, zero, 8
0027e4  1f0b0600  addli r22, r12, 0
0027e8  13611006  setle.f r2, zero, r1
0027ec  93e10006  setle.f r3, r1, zero
0027f0  17812100  and r2, r3, r2
0027f4  3b200100  bneq r2, zero, 8
0027f8  1f8b0000  addli r22, r1, 0
0027fc  13616205  setlt.f r2, r4, r22
002800  9f000b00  addli r1, r22, 0
002804  1f060400  addli r12, r8, 0
002808  3b200100  bneq r2, zero, 8
00280c  9f000200  addli r1, r4, 0
002810  1b319200  slli r2, r4, 9
002814  9b319b00  slli r3, r22, 9
002818  1b427201  srli r4, r4, 23
00281c  9b427b01  srli r5, r22, 23
002820  1f840800  addli r8, r17, 0
002824  13010100  seteq r2, r2, zero
002828  93810100  seteq r3, r3, zero
00282c  1b02f20f  andi r4, r4, 255
002830  9b82f20f  andi r5, r5, 255
002834  1b72f20f  setlti r4, r4, 255
002838  9bf2f20f  setlti r5, r5, 255
00283c  17112200  or r2, r4, r2
002840  97913200  or r3, r5, r3
002844  17812100  and r2, r3, r2
002848  3b200100  bneq r2, zero, 8
00284c  ab00c07f  lui r1, 523264
002850  9f880a00  addli r17, r21, 0
002854  37200b00  beq r22, zero, 8
002858  1f8b0000  addli r22, r1, 0
00285c  e342fffd  loadli.w r5,  -260(r30)
002860  9f8a0900  addli r21, r19, 0
002864  37a00200  beq r5, zero, 8
002868  9f020b00  addli r5, r22, 0
00286c  13611006  setle.f r2, zero, r1
002870  93e10006  setle.f r3, r1, zero
002874  9f090800  addli r19, r16, 0
002878  17812100  and r2, r3, r2
00287c  3b200100  bneq r2, zero, 8
002880  9f820000  addli r5, r1, 0
002884  13e15b04  setlt.f r2, r23, r5
002888  9f800200  addli r1, r5, 0
00288c  1f880c00  addli r16, r25, 0
002890  3b200100  bneq r2, zero, 8
002894  9f800b00  addli r1, r23, 0
002898  1bb19b00  slli r2, r23, 9
00289c  9bb19200  slli r3, r5, 9
0028a0  1bc27b01  srli r4, r23, 23
0028a4  1f8b0200  addli r22, r5, 0
0028a8  9bc27201  srli r5, r5, 23
0028ac  9f8c0700  addli r25, r15, 0
0028b0  13010100  seteq r2, r2, zero
0028b4  93810100  seteq r3, r3, zero
0028b8  1b02f20f  andi r4, r4, 255
0028bc  9b82f20f  andi r5, r5, 255
0028c0  1b72f20f  setlti r4, r4, 255
0028c4  9bf2f20f  setlti r5, r5, 255
0028c8  17112200  or r2, r4, r2
0028cc  97913200  or r3, r5, r3
0028d0  17812100  and r2, r3, r2
0028d4  3b200100  bneq r2, zero, 8
0028d8  ab00c07f  lui r1, 523264
0028dc  63020ffe  loadli.w r4,  -256(r30)
0028e0  9f870300  addli r15, r7, 0
0028e4  37200b00  beq r22, zero, 8
0028e8  1f8b0000  addli r22, r1, 0
0028ec  9f830400  addli r7, r9, 0
0028f0  37a00b00  beq r23, zero, 8
0028f4  9f0b0b00  addli r23, r22, 0
0028f8  13611006  setle.f r2, zero, r1
0028fc  93e10006  setle.f r3, r1, zero
002900  9f040700  addli r9, r14, 0
002904  17812100  and r2, r3, r2
002908  3b200100  bneq r2, zero, 8
00290c  9f8b0000  addli r23, r1, 0
002910  13617205  setlt.f r2, r4, r23
002914  9f800b00  addli r1, r23, 0
002918  1f070900  addli r14, r18, 0
00291c  3b200100  bneq r2, zero, 8
002920  9f000200  addli r1, r4, 0
002924  1b319200  slli r2, r4, 9
002928  9bb19b00  slli r3, r23, 9
00292c  1b427201  srli r4, r4, 23
002930  9bc27b01  srli r5, r23, 23
002934  1f090500  addli r18, r10, 0
002938  13010100  seteq r2, r2, zero
00293c  93810100  seteq r3, r3, zero
002940  1b02f20f  andi r4, r4, 255
002944  9b82f20f  andi r5, r5, 255
002948  1b72f20f  setlti r4, r4, 255
00294c  9bf2f20f  setlti r5, r5, 255
002950  17112200  or r2, r4, r2
002954  97913200  or r3, r5, r3
002958  17812100  and r2, r3, r2
00295c  b72e010a  beq r2, zero, 6056
002960  6345dffb  loadli.w r10,  -532(r30)
002964  bbbe0b0a  bneq r23, zero, 6060
002968  e3020ffe  loadli.w r5,  -256(r30)
00296c  37a00200  beq r5, zero, 8
002970  9f820b00  addli r5, r23, 0
002974  13611006  setle.f r2, zero, r1
002978  93e10006  setle.f r3, r1, zero
00297c  17812100  and r2, r3, r2
002980  3b200100  bneq r2, zero, 8
002984  9f820000  addli r5, r1, 0
002988  13615a04  setlt.f r2, r20, r5
00298c  9f800200  addli r1, r5, 0
002990  3b200100  bneq r2, zero, 8
002994  9f000a00  addli r1, r20, 0
002998  1b319a00  slli r2, r20, 9
00299c  9bb19200  slli r3, r5, 9
0029a0  1b427a01  srli r4, r20, 23
0029a4  9f8b0200  addli r23, r5, 0
0029a8  9bc27201  srli r5, r5, 23
0029ac  13010100  seteq r2, r2, zero
0029b0  93810100  seteq r3, r3, zero
0029b4  1b02f20f  andi r4, r4, 255
0029b8  9b82f20f  andi r5, r5, 255
0029bc  1b72f20f  setlti r4, r4, 255
0029c0  9bf2f20f  setlti r5, r5, 255
0029c4  17112200  or r2, r4, r2
0029c8  97913200  or r3, r5, r3
0029cc  17812100  and r2, r3, r2
0029d0  374d010a  beq r2, zero, 5968
0029d4  63420ffe  loadli.w r4,  -252(r30)
0029d8  3bdd0b0a  bneq r23, zero, 5972
0029dc  37200a00  beq r20, zero, 8
0029e0  1f8a0b00  addli r20, r23, 0
0029e4  13611006  setle.f r2, zero, r1
0029e8  93e10006  setle.f r3, r1, zero
0029ec  17812100  and r2, r3, r2
0029f0  3b200100  bneq r2, zero, 8
0029f4  1f8a0000  addli r20, r1, 0
0029f8  13614205  setlt.f r2, r4, r20
0029fc  9f000a00  addli r1, r20, 0
002a00  3b200100  bneq r2, zero, 8
002a04  9f000200  addli r1, r4, 0
002a08  1b319200  slli r2, r4, 9
002a0c  9b319a00  slli r3, r20, 9
002a10  1b427201  srli r4, r4, 23
002a14  9b427a01  srli r5, r20, 23
002a18  13010100  seteq r2, r2, zero
002a1c  93810100  seteq r3, r3, zero
002a20  1b02f20f  andi r4, r4, 255
002a24  9b82f20f  andi r5, r5, 255
002a28  1b72f20f  setlti r4, r4, 255
002a2c  9bf2f20f  setlti r5, r5, 255
002a30  17112200  or r2, r4, r2
002a34  97913200  or r3, r5, r3
002a38  17812100  and r2, r3, r2
002a3c  b77b010a  beq r2, zero, 5884
002a40  3b0c0a0a  bneq r20, zero, 5888
002a44  e3420ffe  loadli.w r5,  -252(r30)
002a48  37a00200  beq r5, zero, 8
002a4c  9f020a00  addli r5, r20, 0
002a50  13611006  setle.f r2, zero, r1
002a54  93e10006  setle.f r3, r1, zero
002a58  17812100  and r2, r3, r2
002a5c  3b200100  bneq r2, zero, 8
002a60  9f820000  addli r5, r1, 0
002a64  13615904  setlt.f r2, r18, r5
002a68  9f800200  addli r1, r5, 0
002a6c  3b200100  bneq r2, zero, 8
002a70  9f000900  addli r1, r18, 0
002a74  1b319900  slli r2, r18, 9
002a78  9bb19200  slli r3, r5, 9
002a7c  1b427901  srli r4, r18, 23
002a80  1f8a0200  addli r20, r5, 0
002a84  9bc27201  srli r5, r5, 23
002a88  13010100  seteq r2, r2, zero
002a8c  93810100  seteq r3, r3, zero
002a90  1b02f20f  andi r4, r4, 255
002a94  9b82f20f  andi r5, r5, 255
002a98  1b72f20f  setlti r4, r4, 255
002a9c  9bf2f20f  setlti r5, r5, 255
002aa0  17112200  or r2, r4, r2
002aa4  97913200  or r3, r5, r3
002aa8  17812100  and r2, r3, r2
002aac  b71a010a  beq r2, zero, 5796
002ab0  63421ffe  loadli.w r4,  -244(r30)
002ab4  bb2a0a0a  bneq r20, zero, 5800
002ab8  37200900  beq r18, zero, 8
002abc  1f090a00  addli r18, r20, 0
002ac0  13611006  setle.f r2, zero, r1
002ac4  93e10006  setle.f r3, r1, zero
002ac8  17812100  and r2, r3, r2
002acc  3b200100  bneq r2, zero, 8
002ad0  1f890000  addli r18, r1, 0
002ad4  13612205  setlt.f r2, r4, r18
002ad8  9f000900  addli r1, r18, 0
002adc  3b200100  bneq r2, zero, 8
002ae0  9f000200  addli r1, r4, 0
002ae4  1b319200  slli r2, r4, 9
002ae8  9b319900  slli r3, r18, 9
002aec  1b427201  srli r4, r4, 23
002af0  9b427901  srli r5, r18, 23
002af4  13010100  seteq r2, r2, zero
002af8  93810100  seteq r3, r3, zero
002afc  1b02f20f  andi r4, r4, 255
002b00  9b82f20f  andi r5, r5, 255
002b04  1b72f20f  setlti r4, r4, 255
002b08  9bf2f20f  setlti r5, r5, 255
002b0c  17112200  or r2, r4, r2
002b10  97913200  or r3, r5, r3
002b14  17812100  and r2, r3, r2
002b18  3749010a  beq r2, zero, 5712
002b1c  3b59090a  bneq r18, zero, 5716
002b20  e3421ffe  loadli.w r5,  -244(r30)
002b24  37a00200  beq r5, zero, 8
002b28  9f020900  addli r5, r18, 0
002b2c  13611006  setle.f r2, zero, r1
002b30  93e10006  setle.f r3, r1, zero
002b34  17812100  and r2, r3, r2
002b38  3b200100  bneq r2, zero, 8
002b3c  9f820000  addli r5, r1, 0
002b40  13e15904  setlt.f r2, r19, r5
002b44  9f800200  addli r1, r5, 0
002b48  3b200100  bneq r2, zero, 8
002b4c  9f800900  addli r1, r19, 0
002b50  1bb19900  slli r2, r19, 9
002b54  9bb19200  slli r3, r5, 9
002b58  1bc27901  srli r4, r19, 23
002b5c  1f890200  addli r18, r5, 0
002b60  9bc27201  srli r5, r5, 23
002b64  13010100  seteq r2, r2, zero
002b68  93810100  seteq r3, r3, zero
002b6c  1b02f20f  andi r4, r4, 255
002b70  9b82f20f  andi r5, r5, 255
002b74  1b72f20f  setlti r4, r4, 255
002b78  9bf2f20f  setlti r5, r5, 255
002b7c  17112200  or r2, r4, r2
002b80  97913200  or r3, r5, r3
002b84  17812100  and r2, r3, r2
002b88  b767010a  beq r2, zero, 5624
002b8c  63022ffe  loadli.w r4,  -240(r30)
002b90  bb77090a  bneq r18, zero, 5628
002b94  37a00900  beq r19, zero, 8
002b98  9f090900  addli r19, r18, 0
002b9c  13611006  setle.f r2, zero, r1
002ba0  93e10006  setle.f r3, r1, zero
002ba4  17812100  and r2, r3, r2
002ba8  3b200100  bneq r2, zero, 8
002bac  9f890000  addli r19, r1, 0
002bb0  13613205  setlt.f r2, r4, r19
002bb4  63498ffb  loadli.w r18,  -572(r30)
002bb8  9f800900  addli r1, r19, 0
002bbc  3b200100  bneq r2, zero, 8
002bc0  9f000200  addli r1, r4, 0
002bc4  1b319200  slli r2, r4, 9
002bc8  9bb19900  slli r3, r19, 9
002bcc  1b427201  srli r4, r4, 23
002bd0  9bc27901  srli r5, r19, 23
002bd4  13010100  seteq r2, r2, zero
002bd8  93810100  seteq r3, r3, zero
002bdc  1b02f20f  andi r4, r4, 255
002be0  9b82f20f  andi r5, r5, 255
002be4  1b72f20f  setlti r4, r4, 255
002be8  9bf2f20f  setlti r5, r5, 255
002bec  17112200  or r2, r4, r2
002bf0  97913200  or r3, r5, r3
002bf4  17812100  and r2, r3, r2
002bf8  b706010a  beq r2, zero, 5536
002bfc  bb96090a  bneq r19, zero, 5540
002c00  e3022ffe  loadli.w r5,  -240(r30)
002c04  37a00200  beq r5, zero, 8
002c08  9f820900  addli r5, r19, 0
002c0c  13611006  setle.f r2, zero, r1
002c10  93e10006  setle.f r3, r1, zero
002c14  17812100  and r2, r3, r2
002c18  3b200100  bneq r2, zero, 8
002c1c  9f820000  addli r5, r1, 0
002c20  13615904  setlt.f r2, r18, r5
002c24  9f800200  addli r1, r5, 0
002c28  3b200100  bneq r2, zero, 8
002c2c  9f000900  addli r1, r18, 0
002c30  1b319900  slli r2, r18, 9
002c34  9bb19200  slli r3, r5, 9
002c38  1b427901  srli r4, r18, 23
002c3c  9f890200  addli r19, r5, 0
002c40  9bc27201  srli r5, r5, 23
002c44  13010100  seteq r2, r2, zero
002c48  93810100  seteq r3, r3, zero
002c4c  1b02f20f  andi r4, r4, 255
002c50  9b82f20f  andi r5, r5, 255
002c54  1b72f20f  setlti r4, r4, 255
002c58  9bf2f20f  setlti r5, r5, 255
002c5c  17112200  or r2, r4, r2
002c60  97913200  or r3, r5, r3
002c64  17812100  and r2, r3, r2
002c68  3725010a  beq r2, zero, 5448
002c6c  3bb5090a  bneq r19, zero, 5452
002c70  37200900  beq r18, zero, 8
002c74  1f890900  addli r18, r19, 0
002c78  13611006  setle.f r2, zero, r1
002c7c  93e10006  setle.f r3, r1, zero
002c80  17812100  and r2, r3, r2
002c84  3b200100  bneq r2, zero, 8
002c88  1f890000  addli r18, r1, 0
002c8c  13e12505  setlt.f r2, r11, r18
002c90  9f000900  addli r1, r18, 0
002c94  3b200100  bneq r2, zero, 8
002c98  9f800500  addli r1, r11, 0
002c9c  1bb19500  slli r2, r11, 9
002ca0  9b319900  slli r3, r18, 9
002ca4  1bc27501  srli r4, r11, 23
002ca8  9b427901  srli r5, r18, 23
002cac  13010100  seteq r2, r2, zero
002cb0  93810100  seteq r3, r3, zero
002cb4  1b02f20f  andi r4, r4, 255
002cb8  9b82f20f  andi r5, r5, 255
002cbc  1b72f20f  setlti r4, r4, 255
002cc0  9bf2f20f  setlti r5, r5, 255
002cc4  17112200  or r2, r4, r2
002cc8  97913200  or r3, r5, r3
002ccc  17812100  and r2, r3, r2
002cd0  b753010a  beq r2, zero, 5364
002cd4  63422ffe  loadli.w r4,  -236(r30)
002cd8  bb63090a  bneq r18, zero, 5368
002cdc  37a00500  beq r11, zero, 8
002ce0  9f050900  addli r11, r18, 0
002ce4  13611006  setle.f r2, zero, r1
002ce8  93e10006  setle.f r3, r1, zero
002cec  17812100  and r2, r3, r2
002cf0  3b200100  bneq r2, zero, 8
002cf4  9f850000  addli r11, r1, 0
002cf8  1361b204  setlt.f r2, r4, r11
002cfc  9f800500  addli r1, r11, 0
002d00  3b200100  bneq r2, zero, 8
002d04  9f000200  addli r1, r4, 0
002d08  1b319200  slli r2, r4, 9
002d0c  9bb19500  slli r3, r11, 9
002d10  1b427201  srli r4, r4, 23
002d14  9bc27501  srli r5, r11, 23
002d18  13010100  seteq r2, r2, zero
002d1c  93810100  seteq r3, r3, zero
002d20  1b02f20f  andi r4, r4, 255
002d24  9b82f20f  andi r5, r5, 255
002d28  1b72f20f  setlti r4, r4, 255
002d2c  9bf2f20f  setlti r5, r5, 255
002d30  17112200  or r2, r4, r2
002d34  97913200  or r3, r5, r3
002d38  17812100  and r2, r3, r2
002d3c  b702010a  beq r2, zero, 5280
002d40  63023ffe  loadli.w r4,  -232(r30)
002d44  bb92050a  bneq r11, zero, 5284
002d48  e3422ffe  loadli.w r5,  -236(r30)
002d4c  37a00200  beq r5, zero, 8
002d50  9f820500  addli r5, r11, 0
002d54  13611006  setle.f r2, zero, r1
002d58  93e10006  setle.f r3, r1, zero
002d5c  17812100  and r2, r3, r2
002d60  3b200100  bneq r2, zero, 8
002d64  9f820000  addli r5, r1, 0
002d68  13615204  setlt.f r2, r4, r5
002d6c  9f800200  addli r1, r5, 0
002d70  3b200100  bneq r2, zero, 8
002d74  9f000200  addli r1, r4, 0
002d78  1b319200  slli r2, r4, 9
002d7c  9bb19200  slli r3, r5, 9
002d80  1b427201  srli r4, r4, 23
002d84  1f8b0200  addli r22, r5, 0
002d88  9bc27201  srli r5, r5, 23
002d8c  e3051ffd  loadli.w r11,  -376(r30)
002d90  13010100  seteq r2, r2, zero
002d94  93810100  seteq r3, r3, zero
002d98  1b02f20f  andi r4, r4, 255
002d9c  9b82f20f  andi r5, r5, 255
002da0  1b72f20f  setlti r4, r4, 255
002da4  9bf2f20f  setlti r5, r5, 255
002da8  17112200  or r2, r4, r2
002dac  97913200  or r3, r5, r3
002db0  17812100  and r2, r3, r2
002db4  3b200100  bneq r2, zero, 8
002db8  ab00c07f  lui r1, 523264
002dbc  63093ffd  loadli.w r18,  -360(r30)
002dc0  37200b00  beq r22, zero, 8
002dc4  1f8b0000  addli r22, r1, 0
002dc8  634aaffb  loadli.w r20,  -556(r30)
002dcc  e3023ffe  loadli.w r5,  -232(r30)
002dd0  37a00200  beq r5, zero, 8
002dd4  9f020b00  addli r5, r22, 0
002dd8  13611006  setle.f r2, zero, r1
002ddc  93e10006  setle.f r3, r1, zero
002de0  630b2ffd  loadli.w r22,  -368(r30)
002de4  17812100  and r2, r3, r2
002de8  3b200100  bneq r2, zero, 8
002dec  9f820000  addli r5, r1, 0
002df0  13615c04  setlt.f r2, r24, r5
002df4  e349fffc  loadli.w r19,  -388(r30)
002df8  9f800200  addli r1, r5, 0
002dfc  3b200100  bneq r2, zero, 8
002e00  9f000c00  addli r1, r24, 0
002e04  1b319c00  slli r2, r24, 9
002e08  9bb19200  slli r3, r5, 9
002e0c  1b427c01  srli r4, r24, 23
002e10  9f8b0200  addli r23, r5, 0
002e14  9bc27201  srli r5, r5, 23
002e18  13010100  seteq r2, r2, zero
002e1c  93810100  seteq r3, r3, zero
002e20  1b02f20f  andi r4, r4, 255
002e24  9b82f20f  andi r5, r5, 255
002e28  1b72f20f  setlti r4, r4, 255
002e2c  9bf2f20f  setlti r5, r5, 255
002e30  17112200  or r2, r4, r2
002e34  97913200  or r3, r5, r3
002e38  17812100  and r2, r3, r2
002e3c  b77e0108  beq r2, zero, 5052
002e40  63423ffe  loadli.w r4,  -228(r30)
002e44  3b8f0b08  bneq r23, zero, 5056
002e48  37200c00  beq r24, zero, 8
002e4c  1f8c0b00  addli r24, r23, 0
002e50  13611006  setle.f r2, zero, r1
002e54  93e10006  setle.f r3, r1, zero
002e58  17812100  and r2, r3, r2
002e5c  3b200100  bneq r2, zero, 8
002e60  1f8c0000  addli r24, r1, 0
002e64  13618205  setlt.f r2, r4, r24
002e68  9f000c00  addli r1, r24, 0
002e6c  9f8b0900  addli r23, r19, 0
002e70  3b200100  bneq r2, zero, 8
002e74  9f000200  addli r1, r4, 0
002e78  1b319200  slli r2, r4, 9
002e7c  9b319c00  slli r3, r24, 9
002e80  1b427201  srli r4, r4, 23
002e84  9b427c01  srli r5, r24, 23
002e88  9f090b00  addli r19, r22, 0
002e8c  13010100  seteq r2, r2, zero
002e90  93810100  seteq r3, r3, zero
002e94  1b02f20f  andi r4, r4, 255
002e98  9b82f20f  andi r5, r5, 255
002e9c  1b72f20f  setlti r4, r4, 255
002ea0  9bf2f20f  setlti r5, r5, 255
002ea4  17112200  or r2, r4, r2
002ea8  97913200  or r3, r5, r3
002eac  17812100  and r2, r3, r2
002eb0  3b200100  bneq r2, zero, 8
002eb4  ab00c07f  lui r1, 523264
002eb8  1f0b0a00  addli r22, r20, 0
002ebc  37200c00  beq r24, zero, 8
002ec0  1f8c0000  addli r24, r1, 0
002ec4  e3423ffe  loadli.w r5,  -228(r30)
002ec8  1f0a0900  addli r20, r18, 0
002ecc  37a00200  beq r5, zero, 8
002ed0  9f020c00  addli r5, r24, 0
002ed4  13611006  setle.f r2, zero, r1
002ed8  93e10006  setle.f r3, r1, zero
002edc  1f890500  addli r18, r11, 0
002ee0  17812100  and r2, r3, r2
002ee4  3b200100  bneq r2, zero, 8
002ee8  9f820000  addli r5, r1, 0
002eec  13615304  setlt.f r2, r6, r5
002ef0  e305dffb  loadli.w r11,  -536(r30)
002ef4  9f800200  addli r1, r5, 0
002ef8  3b200100  bneq r2, zero, 8
002efc  9f000300  addli r1, r6, 0
002f00  1b319300  slli r2, r6, 9
002f04  9bb19200  slli r3, r5, 9
002f08  1b427301  srli r4, r6, 23
002f0c  1f8c0200  addli r24, r5, 0
002f10  9bc27201  srli r5, r5, 23
002f14  13010100  seteq r2, r2, zero
002f18  93810100  seteq r3, r3, zero
002f1c  1b02f20f  andi r4, r4, 255
002f20  9b82f20f  andi r5, r5, 255
002f24  1b72f20f  setlti r4, r4, 255
002f28  9bf2f20f  setlti r5, r5, 255
002f2c  17112200  or r2, r4, r2
002f30  97913200  or r3, r5, r3
002f34  17812100  and r2, r3, r2
002f38  376b0108  beq r2, zero, 4824
002f3c  63024ffe  loadli.w r4,  -224(r30)
002f40  3b7b0c08  bneq r24, zero, 4828
002f44  37200300  beq r6, zero, 8
002f48  1f030c00  addli r6, r24, 0
002f4c  13611006  setle.f r2, zero, r1
002f50  93e10006  setle.f r3, r1, zero
002f54  17812100  and r2, r3, r2
002f58  3b200100  bneq r2, zero, 8
002f5c  1f830000  addli r6, r1, 0
002f60  13616204  setlt.f r2, r4, r6
002f64  9f000300  addli r1, r6, 0
002f68  3b200100  bneq r2, zero, 8
002f6c  9f000200  addli r1, r4, 0
002f70  1b319200  slli r2, r4, 9
002f74  9b319300  slli r3, r6, 9
002f78  1b427201  srli r4, r4, 23
002f7c  9b427301  srli r5, r6, 23
002f80  13010100  seteq r2, r2, zero
002f84  93810100  seteq r3, r3, zero
002f88  1b02f20f  andi r4, r4, 255
002f8c  9b82f20f  andi r5, r5, 255
002f90  1b72f20f  setlti r4, r4, 255
002f94  9bf2f20f  setlti r5, r5, 255
002f98  17112200  or r2, r4, r2
002f9c  97913200  or r3, r5, r3
002fa0  17812100  and r2, r3, r2
002fa4  371a0108  beq r2, zero, 4740
002fa8  3b2a0308  bneq r6, zero, 4744
002fac  e3024ffe  loadli.w r5,  -224(r30)
002fb0  37a00200  beq r5, zero, 8
002fb4  9f020300  addli r5, r6, 0
002fb8  13611006  setle.f r2, zero, r1
002fbc  93e10006  setle.f r3, r1, zero
002fc0  17812100  and r2, r3, r2
002fc4  3b200100  bneq r2, zero, 8
002fc8  9f820000  addli r5, r1, 0
002fcc  13615604  setlt.f r2, r12, r5
002fd0  63031ffe  loadli.w r6,  -248(r30)
002fd4  9f800200  addli r1, r5, 0
002fd8  3b200100  bneq r2, zero, 8
002fdc  9f000600  addli r1, r12, 0
002fe0  1b319600  slli r2, r12, 9
002fe4  9bb19200  slli r3, r5, 9
002fe8  1b427601  srli r4, r12, 23
002fec  1f8c0200  addli r24, r5, 0
002ff0  9bc27201  srli r5, r5, 23
002ff4  13010100  seteq r2, r2, zero
002ff8  93810100  seteq r3, r3, zero
002ffc  1b02f20f  andi r4, r4, 255
003000  9b82f20f  andi r5, r5, 255
003004  1b72f20f  setlti r4, r4, 255
003008  9bf2f20f  setlti r5, r5, 255
00300c  17112200  or r2, r4, r2
003010  97913200  or r3, r5, r3
003014  17812100  and r2, r3, r2
003018  b7280108  beq r2, zero, 4648
00301c  bb380c08  bneq r24, zero, 4652
003020  37200600  beq r12, zero, 8
003024  1f060c00  addli r12, r24, 0
003028  13611006  setle.f r2, zero, r1
00302c  93e10006  setle.f r3, r1, zero
003030  17812100  and r2, r3, r2
003034  3b200100  bneq r2, zero, 8
003038  1f860000  addli r12, r1, 0
00303c  13e1c504  setlt.f r2, r11, r12
003040  9f000600  addli r1, r12, 0
003044  1f0c0300  addli r24, r6, 0
003048  3b200100  bneq r2, zero, 8
00304c  9f800500  addli r1, r11, 0
003050  1bb19500  slli r2, r11, 9
003054  9b319600  slli r3, r12, 9
003058  1bc27501  srli r4, r11, 23
00305c  9b427601  srli r5, r12, 23
003060  6343fffb  loadli.w r6,  -516(r30)
003064  13010100  seteq r2, r2, zero
003068  93810100  seteq r3, r3, zero
00306c  1b02f20f  andi r4, r4, 255
003070  9b82f20f  andi r5, r5, 255
003074  1b72f20f  setlti r4, r4, 255
003078  9bf2f20f  setlti r5, r5, 255
00307c  17112200  or r2, r4, r2
003080  97913200  or r3, r5, r3
003084  17812100  and r2, r3, r2
003088  37370108  beq r2, zero, 4556
00308c  3b470608  bneq r12, zero, 4560
003090  37a00500  beq r11, zero, 8
003094  9f050600  addli r11, r12, 0
003098  13611006  setle.f r2, zero, r1
00309c  93e10006  setle.f r3, r1, zero
0030a0  17812100  and r2, r3, r2
0030a4  3b200100  bneq r2, zero, 8
0030a8  9f850000  addli r11, r1, 0
0030ac  1361b504  setlt.f r2, r10, r11
0030b0  9f800500  addli r1, r11, 0
0030b4  3b200100  bneq r2, zero, 8
0030b8  9f000500  addli r1, r10, 0
0030bc  1b319500  slli r2, r10, 9
0030c0  9bb19500  slli r3, r11, 9
0030c4  1b427501  srli r4, r10, 23
0030c8  9bc27501  srli r5, r11, 23
0030cc  13010100  seteq r2, r2, zero
0030d0  93810100  seteq r3, r3, zero
0030d4  1b02f20f  andi r4, r4, 255
0030d8  9b82f20f  andi r5, r5, 255
0030dc  1b72f20f  setlti r4, r4, 255
0030e0  9bf2f20f  setlti r5, r5, 255
0030e4  17112200  or r2, r4, r2
0030e8  97913200  or r3, r5, r3
0030ec  17812100  and r2, r3, r2
0030f0  b7650108  beq r2, zero, 4472
0030f4  bbf50508  bneq r11, zero, 4476
0030f8  37200500  beq r10, zero, 8
0030fc  1f850500  addli r10, r11, 0
003100  13611006  setle.f r2, zero, r1
003104  93e10006  setle.f r3, r1, zero
003108  17812100  and r2, r3, r2
00310c  3b200100  bneq r2, zero, 8
003110  1f850000  addli r10, r1, 0
003114  13e1a404  setlt.f r2, r9, r10
003118  9f000500  addli r1, r10, 0
00311c  3b200100  bneq r2, zero, 8
003120  9f800400  addli r1, r9, 0
003124  1bb19400  slli r2, r9, 9
003128  9b319500  slli r3, r10, 9
00312c  1bc27401  srli r4, r9, 23
003130  9b427501  srli r5, r10, 23
003134  13010100  seteq r2, r2, zero
003138  93810100  seteq r3, r3, zero
00313c  1b02f20f  andi r4, r4, 255
003140  9b82f20f  andi r5, r5, 255
003144  1b72f20f  setlti r4, r4, 255
003148  9bf2f20f  setlti r5, r5, 255
00314c  17112200  or r2, r4, r2
003150  97913200  or r3, r5, r3
003154  17812100  and r2, r3, r2
003158  b7140108  beq r2, zero, 4388
00315c  bb240508  bneq r10, zero, 4392
003160  37a00400  beq r9, zero, 8
003164  9f040500  addli r9, r10, 0
003168  13611006  setle.f r2, zero, r1
00316c  93e10006  setle.f r3, r1, zero
003170  17812100  and r2, r3, r2
003174  3b200100  bneq r2, zero, 8
003178  9f840000  addli r9, r1, 0
00317c  13619404  setlt.f r2, r8, r9
003180  9f800400  addli r1, r9, 0
003184  3b200100  bneq r2, zero, 8
003188  9f000400  addli r1, r8, 0
00318c  1b319400  slli r2, r8, 9
003190  9bb19400  slli r3, r9, 9
003194  1b427401  srli r4, r8, 23
003198  9bc27401  srli r5, r9, 23
00319c  13010100  seteq r2, r2, zero
0031a0  93810100  seteq r3, r3, zero
0031a4  1b02f20f  andi r4, r4, 255
0031a8  9b82f20f  andi r5, r5, 255
0031ac  1b72f20f  setlti r4, r4, 255
0031b0  9bf2f20f  setlti r5, r5, 255
0031b4  17112200  or r2, r4, r2
0031b8  97913200  or r3, r5, r3
0031bc  17812100  and r2, r3, r2
0031c0  37430108  beq r2, zero, 4304
0031c4  3bd30408  bneq r9, zero, 4308
0031c8  37200400  beq r8, zero, 8
0031cc  1f840400  addli r8, r9, 0
0031d0  13611006  setle.f r2, zero, r1
0031d4  93e10006  setle.f r3, r1, zero
0031d8  17812100  and r2, r3, r2
0031dc  3b200100  bneq r2, zero, 8
0031e0  1f840000  addli r8, r1, 0
0031e4  13e18304  setlt.f r2, r7, r8
0031e8  9f000400  addli r1, r8, 0
0031ec  3b200100  bneq r2, zero, 8
0031f0  9f800300  addli r1, r7, 0
0031f4  1bb19300  slli r2, r7, 9
0031f8  9b319400  slli r3, r8, 9
0031fc  1bc27301  srli r4, r7, 23
003200  9b427401  srli r5, r8, 23
003204  13010100  seteq r2, r2, zero
003208  93810100  seteq r3, r3, zero
00320c  1b02f20f  andi r4, r4, 255
003210  9b82f20f  andi r5, r5, 255
003214  1b72f20f  setlti r4, r4, 255
003218  9bf2f20f  setlti r5, r5, 255
00321c  17112200  or r2, r4, r2
003220  97913200  or r3, r5, r3
003224  17812100  and r2, r3, r2
003228  b7710108  beq r2, zero, 4220
00322c  3b020408  bneq r8, zero, 4224
003230  37a00300  beq r7, zero, 8
003234  9f030400  addli r7, r8, 0
003238  13611006  setle.f r2, zero, r1
00323c  93e10006  setle.f r3, r1, zero
003240  17812100  and r2, r3, r2
003244  3b200100  bneq r2, zero, 8
003248  9f830000  addli r7, r1, 0
00324c  13617304  setlt.f r2, r6, r7
003250  9f800300  addli r1, r7, 0
003254  3b200100  bneq r2, zero, 8
003258  9f000300  addli r1, r6, 0
00325c  1b319300  slli r2, r6, 9
003260  9bb19300  slli r3, r7, 9
003264  1b427301  srli r4, r6, 23
003268  9bc27301  srli r5, r7, 23
00326c  13010100  seteq r2, r2, zero
003270  93810100  seteq r3, r3, zero
003274  1b02f20f  andi r4, r4, 255
003278  9b82f20f  andi r5, r5, 255
00327c  1b72f20f  setlti r4, r4, 255
003280  9bf2f20f  setlti r5, r5, 255
003284  17112200  or r2, r4, r2
003288  97913200  or r3, r5, r3
00328c  17812100  and r2, r3, r2
003290  b7200108  beq r2, zero, 4136
003294  bbb00308  bneq r7, zero, 4140
003298  37200300  beq r6, zero, 8
00329c  1f830300  addli r6, r7, 0
0032a0  13611006  setle.f r2, zero, r1
0032a4  93e10006  setle.f r3, r1, zero
0032a8  17812100  and r2, r3, r2
0032ac  3b200100  bneq r2, zero, 8
0032b0  1f830000  addli r6, r1, 0
0032b4  e3006ffe  loadli.w r1,  -208(r30)
0032b8  73e06000  stores.w r6, 0(r1)
0032bc  00a00300  mfence { lm, sm, gm }
0032c0  80a10b04  csr_set csr3, r23
0032c4  00d00100  sync_group
0032c8  e3006ffe  loadli.w r1,  -208(r30)
0032cc  e3435ffe  loadli.w r7,  -212(r30)
0032d0  efc00000  loads.w r1, 0(r1)
0032d4  8b641818  sub.f.rn r9, r16, r1
0032d8  0be81318  sub.f.rn r16, r7, r1
0032dc  e3035ffe  loadli.w r7,  -216(r30)
0032e0  0be41818  sub.f.rn r8, r17, r1
0032e4  0be51718  sub.f.rn r10, r15, r1
0032e8  8be21918  sub.f.rn r5, r19, r1
0032ec  8b651718  sub.f.rn r11, r14, r1
0032f0  0be61618  sub.f.rn r12, r13, r1
0032f4  0b631918  sub.f.rn r6, r18, r1
0032f8  0b611b18  sub.f.rn r2, r22, r1
0032fc  8be11c18  sub.f.rn r3, r25, r1
003300  0b621a18  sub.f.rn r4, r20, r1
003304  0be71a18  sub.f.rn r14, r21, r1
003308  8b671e18  sub.f.rn r15, r28, r1
00330c  8be81318  sub.f.rn r17, r7, r1
003310  e3434ffe  loadli.w r7,  -220(r30)
003314  0beb1318  sub.f.rn r22, r7, r1
003318  8b601d18  sub.f.rn r1, r26, r1
00331c  8f030100  exp.f.rn r7, r2
003320  0f810100  exp.f.rn r2, r3
003324  8f010200  exp.f.rn r3, r4
003328  0f820200  exp.f.rn r4, r5
00332c  8f020300  exp.f.rn r5, r6
003330  0f030400  exp.f.rn r6, r8
003334  0f0a0700  exp.f.rn r20, r14
003338  8f840400  exp.f.rn r9, r9
00333c  0f050500  exp.f.rn r10, r10
003340  8f860500  exp.f.rn r13, r11
003344  0f090600  exp.f.rn r18, r12
003348  8f8a0700  exp.f.rn r21, r15
00334c  8f090800  exp.f.rn r19, r16
003350  8f880800  exp.f.rn r17, r17
003354  0f840000  exp.f.rn r8, r1
003358  0f070b00  exp.f.rn r14, r22
00335c  9f008000  addli r1, zero, 64
003360  674d8ffc  storeli.w r8, -300(r30)
003364  bf651c00  blt.s r24, r1, 376
003368  9f000000  addli r1, zero, 0
00336c  db350000  j 428
003370  ab05c07f  lui r11, 523264
003374  9f070b00  addli r15, r22, 0
003378  371d0bec  beq r22, zero, -9404
00337c  9f870500  addli r15, r11, 0
003380  9f830c00  addli r7, r25, 0
003384  3b8d0cec  bneq r25, zero, -9408
003388  5b68fbff  j -9408
00338c  ab07c07f  lui r15, 523264
003390  37fe03ec  beq r7, zero, -9316
003394  9f830700  addli r7, r15, 0
003398  9f050a00  addli r11, r20, 0
00339c  3b6e0aec  bneq r20, zero, -9320
0033a0  5b73fbff  j -9320
0033a4  ab07c07f  lui r15, 523264
0033a8  b7df05ec  beq r11, zero, -9228
0033ac  9f850700  addli r11, r15, 0
0033b0  9f830900  addli r7, r19, 0
0033b4  bbcf09ec  bneq r19, zero, -9232
0033b8  5b7efbff  j -9232
0033bc  ab07c07f  lui r15, 523264
0033c0  37b103ee  beq r7, zero, -9140
0033c4  9f830700  addli r7, r15, 0
0033c8  9f050900  addli r11, r18, 0
0033cc  3b2109ee  bneq r18, zero, -9144
0033d0  5b89fbff  j -9144
0033d4  2b07c07f  lui r14, 523264
0033d8  b79205ee  beq r11, zero, -9052
0033dc  9f050700  addli r11, r14, 0
0033e0  9f830800  addli r7, r17, 0
0033e4  bb8208ee  bneq r17, zero, -9056
0033e8  5b94fbff  j -9056
0033ec  ab06c07f  lui r13, 523264
0033f0  b7f303ee  beq r7, zero, -8964
0033f4  9f830600  addli r7, r13, 0
0033f8  9f050800  addli r11, r16, 0
0033fc  bb6308ee  bneq r16, zero, -8968
003400  5b9ffbff  j -8968
003404  2b06c07f  lui r12, 523264
003408  37d505ee  beq r11, zero, -8876
00340c  9f050600  addli r11, r12, 0
003410  9f830700  addli r7, r15, 0
003414  3bc507ee  bneq r15, zero, -8880
003418  5baafbff  j -8880
00341c  2b05c07f  lui r10, 523264
003420  b7b603ee  beq r7, zero, -8788
003424  9f030500  addli r7, r10, 0
003428  9f040700  addli r9, r14, 0
00342c  bb2607ee  bneq r14, zero, -8792
003430  5bb5fbff  j -8792
003434  2b05c07f  lui r10, 523264
003438  379804ee  beq r9, zero, -8700
00343c  9f040500  addli r9, r10, 0
003440  9f830600  addli r7, r13, 0
003444  3b8806ee  bneq r13, zero, -8704
003448  5bc0fbff  j -8704
00344c  2b04c07f  lui r8, 523264
003450  37f903ee  beq r7, zero, -8612
003454  9f030400  addli r7, r8, 0
003458  1f830a00  addli r6, r21, 0
00345c  3be90aee  bneq r21, zero, -8616
003460  5bcbfbff  j -8616
003464  ab03c07f  lui r7, 523264
003468  b75a03ee  beq r6, zero, -8524
00346c  1f830300  addli r6, r7, 0
003470  9f020e00  addli r5, r28, 0
003474  bb4a0eee  bneq r28, zero, -8528
003478  5bd6fbff  j -8528
00347c  2b03c07f  lui r6, 523264
003480  37bc02ee  beq r5, zero, -8436
003484  9f020300  addli r5, r6, 0
003488  1f020500  addli r4, r10, 0
00348c  3b2c05ee  bneq r10, zero, -8440
003490  5be1fbff  j -8440
003494  ab02c07f  lui r5, 523264
003498  b71d02ee  beq r4, zero, -8348
00349c  1f820200  addli r4, r5, 0
0034a0  9f810400  addli r3, r9, 0
0034a4  bb8d04ee  bneq r9, zero, -8352
0034a8  5becfbff  j -8352
0034ac  2b02c07f  lui r4, 523264
0034b0  b7fe01ee  beq r3, zero, -8260
0034b4  9f010200  addli r3, r4, 0
0034b8  1f010400  addli r2, r8, 0
0034bc  bb6e04ee  bneq r8, zero, -8264
0034c0  5bf7fbff  j -8264
0034c4  ab01c07f  lui r3, 523264
0034c8  375001f0  beq r2, zero, -8172
0034cc  1f810100  addli r2, r3, 0
0034d0  9f000d00  addli r1, r26, 0
0034d4  3b400df0  bneq r26, zero, -8176
0034d8  5b02fcff  j -8176
0034dc  8be02310  add.f.rn r1, r7, r2
0034e0  8be01110  add.f.rn r1, r3, r1
0034e4  8b601210  add.f.rn r1, r4, r1
0034e8  8be01210  add.f.rn r1, r5, r1
0034ec  8b601310  add.f.rn r1, r6, r1
0034f0  8be01410  add.f.rn r1, r9, r1
0034f4  8b601510  add.f.rn r1, r10, r1
0034f8  8be01610  add.f.rn r1, r13, r1
0034fc  8b601910  add.f.rn r1, r18, r1
003500  8b601a10  add.f.rn r1, r20, r1
003504  8be01a10  add.f.rn r1, r21, r1
003508  8be01910  add.f.rn r1, r19, r1
00350c  8be01810  add.f.rn r1, r17, r1
003510  8b601710  add.f.rn r1, r14, r1
003514  8b601410  add.f.rn r1, r8, r1
003518  6304dffc  loadli.w r8,  -408(r30)
00351c  634b7ffe  loadli.w r22,  -196(r30)
003520  ab07807f  lui r15, 522240
003524  73601400  stores.w r1, 0(r8)
003528  00a00300  mfence { lm, sm, gm }
00352c  80a10b04  csr_set csr3, r23
003530  00d00100  sync_group
003534  e300effd  loadli.w r1,  -272(r30)
003538  3ba80000  bneq r1, zero, 520
00353c  e305fffc  loadli.w r11,  -392(r30)
003540  efc00500  loads.w r1, 0(r11)
003544  6fc64500  loads.w r12, 4(r11)
003548  6fc48500  loads.w r8, 8(r11)
00354c  8be0c010  add.f.rn r1, r1, r12
003550  6fc6c500  loads.w r12, 12(r11)
003554  8be08010  add.f.rn r1, r1, r8
003558  6fc40501  loads.w r8, 16(r11)
00355c  8be0c010  add.f.rn r1, r1, r12
003560  6fc64501  loads.w r12, 20(r11)
003564  8be08010  add.f.rn r1, r1, r8
003568  6fc48501  loads.w r8, 24(r11)
00356c  8be0c010  add.f.rn r1, r1, r12
003570  6fc6c501  loads.w r12, 28(r11)
003574  8be08010  add.f.rn r1, r1, r8
003578  6fc40502  loads.w r8, 32(r11)
00357c  8be0c010  add.f.rn r1, r1, r12
003580  6fc64502  loads.w r12, 36(r11)
003584  8be08010  add.f.rn r1, r1, r8
003588  6fc48502  loads.w r8, 40(r11)
00358c  8be0c010  add.f.rn r1, r1, r12
003590  6fc6c502  loads.w r12, 44(r11)
003594  8be08010  add.f.rn r1, r1, r8
003598  6fc40503  loads.w r8, 48(r11)
00359c  8be0c010  add.f.rn r1, r1, r12
0035a0  6fc64503  loads.w r12, 52(r11)
0035a4  8be08010  add.f.rn r1, r1, r8
0035a8  6fc48503  loads.w r8, 56(r11)
0035ac  8be0c010  add.f.rn r1, r1, r12
0035b0  6fc6c503  loads.w r12, 60(r11)
0035b4  8be08010  add.f.rn r1, r1, r8
0035b8  6fc40504  loads.w r8, 64(r11)
0035bc  8be0c010  add.f.rn r1, r1, r12
0035c0  6fc64504  loads.w r12, 68(r11)
0035c4  8be08010  add.f.rn r1, r1, r8
0035c8  6fc48504  loads.w r8, 72(r11)
0035cc  8be0c010  add.f.rn r1, r1, r12
0035d0  6fc6c504  loads.w r12, 76(r11)
0035d4  8be08010  add.f.rn r1, r1, r8
0035d8  6fc40505  loads.w r8, 80(r11)
0035dc  8be0c010  add.f.rn r1, r1, r12
0035e0  6fc64505  loads.w r12, 84(r11)
0035e4  8be08010  add.f.rn r1, r1, r8
0035e8  6fc48505  loads.w r8, 88(r11)
0035ec  8be0c010  add.f.rn r1, r1, r12
0035f0  6fc6c505  loads.w r12, 92(r11)
0035f4  8be08010  add.f.rn r1, r1, r8
0035f8  6fc40506  loads.w r8, 96(r11)
0035fc  8be0c010  add.f.rn r1, r1, r12
003600  6fc64506  loads.w r12, 100(r11)
003604  8be08010  add.f.rn r1, r1, r8
003608  6fc48506  loads.w r8, 104(r11)
00360c  8be0c010  add.f.rn r1, r1, r12
003610  6fc6c506  loads.w r12, 108(r11)
003614  8be08010  add.f.rn r1, r1, r8
003618  6fc40507  loads.w r8, 112(r11)
00361c  8be0c010  add.f.rn r1, r1, r12
003620  6fc64507  loads.w r12, 116(r11)
003624  8be08010  add.f.rn r1, r1, r8
003628  6fc48507  loads.w r8, 120(r11)
00362c  8be0c010  add.f.rn r1, r1, r12
003630  6fc6c507  loads.w r12, 124(r11)
003634  8be08010  add.f.rn r1, r1, r8
003638  6fc40508  loads.w r8, 128(r11)
00363c  8be0c010  add.f.rn r1, r1, r12
003640  6fc64508  loads.w r12, 132(r11)
003644  8be08010  add.f.rn r1, r1, r8
003648  6fc48508  loads.w r8, 136(r11)
00364c  8be0c010  add.f.rn r1, r1, r12
003650  6fc6c508  loads.w r12, 140(r11)
003654  8be08010  add.f.rn r1, r1, r8
003658  6fc40509  loads.w r8, 144(r11)
00365c  8be0c010  add.f.rn r1, r1, r12
003660  6fc64509  loads.w r12, 148(r11)
003664  8be08010  add.f.rn r1, r1, r8
003668  6fc48509  loads.w r8, 152(r11)
00366c  8be0c010  add.f.rn r1, r1, r12
003670  6fc6c509  loads.w r12, 156(r11)
003674  8be08010  add.f.rn r1, r1, r8
003678  6fc4050a  loads.w r8, 160(r11)
00367c  8be0c010  add.f.rn r1, r1, r12
003680  6fc6450a  loads.w r12, 164(r11)
003684  8be08010  add.f.rn r1, r1, r8
003688  6fc4850a  loads.w r8, 168(r11)
00368c  8be0c010  add.f.rn r1, r1, r12
003690  6fc6c50a  loads.w r12, 172(r11)
003694  8be08010  add.f.rn r1, r1, r8
003698  6fc4050b  loads.w r8, 176(r11)
00369c  8be0c010  add.f.rn r1, r1, r12
0036a0  6fc6450b  loads.w r12, 180(r11)
0036a4  8be08010  add.f.rn r1, r1, r8
0036a8  6fc4850b  loads.w r8, 184(r11)
0036ac  8be0c010  add.f.rn r1, r1, r12
0036b0  6fc6c50b  loads.w r12, 188(r11)
0036b4  8be08010  add.f.rn r1, r1, r8
0036b8  6fc4050c  loads.w r8, 192(r11)
0036bc  8be0c010  add.f.rn r1, r1, r12
0036c0  6fc6450c  loads.w r12, 196(r11)
0036c4  8be08010  add.f.rn r1, r1, r8
0036c8  6fc4850c  loads.w r8, 200(r11)
0036cc  8be0c010  add.f.rn r1, r1, r12
0036d0  6fc6c50c  loads.w r12, 204(r11)
0036d4  8be08010  add.f.rn r1, r1, r8
0036d8  6fc4050d  loads.w r8, 208(r11)
0036dc  8be0c010  add.f.rn r1, r1, r12
0036e0  6fc6450d  loads.w r12, 212(r11)
0036e4  8be08010  add.f.rn r1, r1, r8
0036e8  6fc4850d  loads.w r8, 216(r11)
0036ec  8be0c010  add.f.rn r1, r1, r12
0036f0  6fc6c50d  loads.w r12, 220(r11)
0036f4  8be08010  add.f.rn r1, r1, r8
0036f8  6fc4050e  loads.w r8, 224(r11)
0036fc  8be0c010  add.f.rn r1, r1, r12
003700  6fc6450e  loads.w r12, 228(r11)
003704  8be08010  add.f.rn r1, r1, r8
003708  6fc4850e  loads.w r8, 232(r11)
00370c  8be0c010  add.f.rn r1, r1, r12
003710  6fc6c50e  loads.w r12, 236(r11)
003714  8be08010  add.f.rn r1, r1, r8
003718  6fc4050f  loads.w r8, 240(r11)
00371c  8be0c010  add.f.rn r1, r1, r12
003720  6fc6450f  loads.w r12, 244(r11)
003724  8be08010  add.f.rn r1, r1, r8
003728  6fc4850f  loads.w r8, 248(r11)
00372c  8be0c010  add.f.rn r1, r1, r12
003730  6fc6c50f  loads.w r12, 252(r11)
003734  8be08010  add.f.rn r1, r1, r8
003738  8be0c010  add.f.rn r1, r1, r12
00373c  73e01500  stores.w r1, 0(r11)
003740  00a00300  mfence { lm, sm, gm }
003744  80a10b04  csr_set csr3, r23
003748  00d00100  sync_group
00374c  e300fffc  loadli.w r1,  -392(r30)
003750  2b04803f  lui r8, 260096
003754  efc00000  loads.w r1, 0(r1)
003758  8f001418  div.f.rn r1, r8, r1
00375c  8beb1320  mul.f.rn r23, r7, r1
003760  97836b01  and r7, r23, r22
003764  670b7ffc  storeli.w r7, -336(r30)
003768  93837704  setlt.u r7, r15, r7
00376c  3bb00300  bneq r7, zero, 12
003770  e7427fff  storeli.w r23, -212(r30)
003774  db010000  j 12
003778  9793bb01  or r7, r23, r27
00377c  e7427ffe  storeli.w r7, -212(r30)
003780  0b6c1120  mul.f.rn r24, r2, r1
003784  17016c01  and r2, r24, r22
003788  93832704  setlt.u r7, r15, r2
00378c  e70a2ffc  storeli.w r2, -344(r30)
003790  3bb00300  bneq r7, zero, 12
003794  e7028fff  storeli.w r24, -216(r30)
003798  db010000  j 12
00379c  1711bc01  or r2, r24, r27
0037a0  e7022ffe  storeli.w r2, -216(r30)
0037a4  8bec1120  mul.f.rn r25, r3, r1
0037a8  17816c01  and r2, r25, r22
0037ac  93832704  setlt.u r7, r15, r2
0037b0  670a2ffc  storeli.w r2, -352(r30)
0037b4  3bb00300  bneq r7, zero, 12
0037b8  67429fff  storeli.w r25, -220(r30)
0037bc  db010000  j 12
0037c0  1791bc01  or r2, r25, r27
0037c4  67422ffe  storeli.w r2, -220(r30)
0037c8  0b6d1220  mul.f.rn r26, r4, r1
0037cc  ab014000  lui r3, 1024
0037d0  17026d01  and r4, r26, r22
0037d4  93834704  setlt.u r7, r15, r4
0037d8  3bb00300  bneq r7, zero, 12
0037dc  6702afff  storeli.w r26, -224(r30)
0037e0  db010000  j 12
0037e4  1711bd01  or r2, r26, r27
0037e8  67022ffe  storeli.w r2, -224(r30)
0037ec  8bed1220  mul.f.rn r27, r5, r1
0037f0  97826d01  and r5, r27, r22
0037f4  93835704  setlt.u r7, r15, r5
0037f8  3bb00300  bneq r7, zero, 12
0037fc  e741bfff  storeli.w r27, -228(r30)
003800  db010000  j 12
003804  17913d00  or r2, r27, r3
003808  e7412ffe  storeli.w r2, -228(r30)
00380c  0b6e1320  mul.f.rn r28, r6, r1
003810  17036e01  and r6, r28, r22
003814  93836704  setlt.u r7, r15, r6
003818  3bb00300  bneq r7, zero, 12
00381c  e701cfff  storeli.w r28, -232(r30)
003820  db010000  j 12
003824  17113e00  or r2, r28, r3
003828  e7012ffe  storeli.w r2, -232(r30)
00382c  8be41420  mul.f.rn r9, r9, r1
003830  17816401  and r2, r9, r22
003834  93832704  setlt.u r7, r15, r2
003838  e7092ffc  storeli.w r2, -360(r30)
00383c  3bb00300  bneq r7, zero, 12
003840  67419ffe  storeli.w r9, -236(r30)
003844  db010000  j 12
003848  17913400  or r2, r9, r3
00384c  67412ffe  storeli.w r2, -236(r30)
003850  0b651520  mul.f.rn r10, r10, r1
003854  17066501  and r12, r10, r22
003858  9383c704  setlt.u r7, r15, r12
00385c  3bb00300  bneq r7, zero, 12
003860  6701affe  storeli.w r10, -240(r30)
003864  db010000  j 12
003868  17113500  or r2, r10, r3
00386c  67012ffe  storeli.w r2, -240(r30)
003870  8be61620  mul.f.rn r13, r13, r1
003874  17846601  and r8, r13, r22
003878  93838704  setlt.u r7, r15, r8
00387c  3bb00300  bneq r7, zero, 12
003880  e740dffe  storeli.w r13, -244(r30)
003884  db010000  j 12
003888  17913600  or r2, r13, r3
00388c  e7402ffe  storeli.w r2, -244(r30)
003890  0b691920  mul.f.rn r18, r18, r1
003894  ab05807f  lui r11, 522240
003898  2b01807f  lui r2, 522240
00389c  97036901  and r7, r18, r22
0038a0  93877504  setlt.u r15, r11, r7
0038a4  3bb00700  bneq r15, zero, 12
0038a8  e7002fff  storeli.w r18, -248(r30)
0038ac  db010000  j 12
0038b0  97153900  or r11, r18, r3
0038b4  e700bffe  storeli.w r11, -248(r30)
0038b8  0b6a1a20  mul.f.rn r20, r20, r1
0038bc  17086a01  and r16, r20, r22
0038c0  93070105  setlt.u r15, r2, r16
0038c4  3bb00700  bneq r15, zero, 12
0038c8  67404fff  storeli.w r20, -252(r30)
0038cc  db010000  j 12
0038d0  97153a00  or r11, r20, r3
0038d4  6740bffe  storeli.w r11, -252(r30)
0038d8  8bea1a20  mul.f.rn r21, r21, r1
0038dc  178b6a01  and r22, r21, r22
0038e0  93076105  setlt.u r15, r2, r22
0038e4  3bb00700  bneq r15, zero, 12
0038e8  67005fff  storeli.w r21, -256(r30)
0038ec  db010000  j 12
0038f0  97953a00  or r11, r21, r3
0038f4  6700bffe  storeli.w r11, -256(r30)
0038f8  8be91920  mul.f.rn r19, r19, r1
0038fc  e3457ffe  loadli.w r11,  -196(r30)
003900  9787b900  and r15, r19, r11
003904  9305f104  setlt.u r11, r2, r15
003908  3bb00500  bneq r11, zero, 12
00390c  e74f3ffd  storeli.w r19, -260(r30)
003910  db010000  j 12
003914  97953900  or r11, r19, r3
003918  e74fbffc  storeli.w r11, -260(r30)
00391c  8be81820  mul.f.rn r17, r17, r1
003920  e3457ffe  loadli.w r11,  -196(r30)
003924  9785b800  and r11, r17, r11
003928  e70bbffc  storeli.w r11, -328(r30)
00392c  9305b104  setlt.u r11, r2, r11
003930  3bb00500  bneq r11, zero, 12
003934  e70f1ffd  storeli.w r17, -264(r30)
003938  db010000  j 12
00393c  97953800  or r11, r17, r3
003940  e70fbffc  storeli.w r11, -264(r30)
003944  0b671720  mul.f.rn r14, r14, r1
003948  e3457ffe  loadli.w r11,  -196(r30)
00394c  9705b700  and r11, r14, r11
003950  6708effc  storeli.w r14, -384(r30)
003954  670cbffc  storeli.w r11, -320(r30)
003958  9305b104  setlt.u r11, r2, r11
00395c  3bb00500  bneq r11, zero, 12
003960  674feffc  storeli.w r14, -268(r30)
003964  db010000  j 12
003968  97153700  or r11, r14, r3
00396c  674fbffc  storeli.w r11, -268(r30)
003970  e345affd  loadli.w r11,  -300(r30)
003974  0be71520  mul.f.rn r14, r11, r1
003978  e3407ffe  loadli.w r1,  -196(r30)
00397c  97001700  and r1, r14, r1
003980  e70c1ffc  storeli.w r1, -312(r30)
003984  93001104  setlt.u r1, r2, r1
003988  3bb00000  bneq r1, zero, 12
00398c  9f010700  addli r3, r14, 0
003990  5b010000  j 8
003994  97113700  or r3, r14, r3
003998  e3007ffe  loadli.w r1,  -200(r30)
00399c  63016ffd  loadli.w r2,  -336(r30)
0039a0  93802004  setlt.u r1, r1, r2
0039a4  bb900000  bneq r1, zero, 36
0039a8  9bc00b01  srli r1, r23, 16
0039ac  e3456ffe  loadli.w r11,  -204(r30)
0039b0  9b801000  andi r1, r1, 1
0039b4  8b901b10  add.s r1, r23, r1
0039b8  8b90b010  add.s r1, r1, r11
0039bc  ab05ffff  lui r11, 1048560
0039c0  9780b000  and r1, r1, r11
0039c4  e7421ffe  storeli.w r1, -212(r30)
0039c8  e3007ffe  loadli.w r1,  -200(r30)
0039cc  63015ffd  loadli.w r2,  -344(r30)
0039d0  93802004  setlt.u r1, r1, r2
0039d4  bb900000  bneq r1, zero, 36
0039d8  9b400c01  srli r1, r24, 16
0039dc  63416ffe  loadli.w r2,  -204(r30)
0039e0  9b801000  andi r1, r1, 1
0039e4  8b101c10  add.s r1, r24, r1
0039e8  8b902010  add.s r1, r1, r2
0039ec  2b01ffff  lui r2, 1048560
0039f0  97802000  and r1, r1, r2
0039f4  e7021ffe  storeli.w r1, -216(r30)
0039f8  630c7ffe  loadli.w r24,  -200(r30)
0039fc  e3004ffd  loadli.w r1,  -352(r30)
003a00  93001c04  setlt.u r1, r24, r1
003a04  bb900000  bneq r1, zero, 36
003a08  9bc00c01  srli r1, r25, 16
003a0c  63416ffe  loadli.w r2,  -204(r30)
003a10  9b801000  andi r1, r1, 1
003a14  8b901c10  add.s r1, r25, r1
003a18  8b902010  add.s r1, r1, r2
003a1c  2b01ffff  lui r2, 1048560
003a20  97802000  and r1, r1, r2
003a24  67421ffe  storeli.w r1, -220(r30)
003a28  93004c04  setlt.u r1, r24, r4
003a2c  e34b6ffe  loadli.w r23,  -204(r30)
003a30  bb800000  bneq r1, zero, 32
003a34  9b400d01  srli r1, r26, 16
003a38  2b01ffff  lui r2, 1048560
003a3c  9b801000  andi r1, r1, 1
003a40  8b101d10  add.s r1, r26, r1
003a44  8b907011  add.s r1, r1, r23
003a48  97802000  and r1, r1, r2
003a4c  67021ffe  storeli.w r1, -224(r30)
003a50  93005c04  setlt.u r1, r24, r5
003a54  ab0cffff  lui r25, 1048560
003a58  3bf00000  bneq r1, zero, 28
003a5c  9bc00d01  srli r1, r27, 16
003a60  9b801000  andi r1, r1, 1
003a64  8b901d10  add.s r1, r27, r1
003a68  8b907011  add.s r1, r1, r23
003a6c  97809001  and r1, r1, r25
003a70  e7411ffe  storeli.w r1, -228(r30)
003a74  93006c04  setlt.u r1, r24, r6
003a78  3bf00000  bneq r1, zero, 28
003a7c  9b400e01  srli r1, r28, 16
003a80  9b801000  andi r1, r1, 1
003a84  8b101e10  add.s r1, r28, r1
003a88  8b907011  add.s r1, r1, r23
003a8c  97809001  and r1, r1, r25
003a90  e7011ffe  storeli.w r1, -232(r30)
003a94  e3003ffd  loadli.w r1,  -360(r30)
003a98  93001c04  setlt.u r1, r24, r1
003a9c  37ba0000  beq r1, zero, 652
003aa0  9300cc04  setlt.u r1, r24, r12
003aa4  b79a0000  beq r1, zero, 676
003aa8  93008c04  setlt.u r1, r24, r8
003aac  b7fa0000  beq r1, zero, 700
003ab0  93007c04  setlt.u r1, r24, r7
003ab4  37db0000  beq r1, zero, 724
003ab8  93000c05  setlt.u r1, r24, r16
003abc  b7bb0000  beq r1, zero, 748
003ac0  93006c05  setlt.u r1, r24, r22
003ac4  3bf00000  bneq r1, zero, 28
003ac8  9bc00a01  srli r1, r21, 16
003acc  9b801000  andi r1, r1, 1
003ad0  8b901a10  add.s r1, r21, r1
003ad4  8b907011  add.s r1, r1, r23
003ad8  97809001  and r1, r1, r25
003adc  67001ffe  storeli.w r1, -256(r30)
003ae0  9300fc04  setlt.u r1, r24, r15
003ae4  674d3ffc  storeli.w r3, -300(r30)
003ae8  3bf00000  bneq r1, zero, 28
003aec  9bc00901  srli r1, r19, 16
003af0  9b801000  andi r1, r1, 1
003af4  8b901910  add.s r1, r19, r1
003af8  8b907011  add.s r1, r1, r23
003afc  97809001  and r1, r1, r25
003b00  e74f1ffc  storeli.w r1, -260(r30)
003b04  e303bffd  loadli.w r7,  -296(r30)
003b08  e341affc  loadli.w r3,  -428(r30)
003b0c  63027ffc  loadli.w r4,  -456(r30)
003b10  e340bffc  loadli.w r1,  -420(r30)
003b14  6748effc  storeli.w r14, -380(r30)
003b18  0b937110  add.s r6, r3, r7
003b1c  e301affc  loadli.w r3,  -432(r30)
003b20  8b1d7210  add.s r27, r4, r7
003b24  63426ffc  loadli.w r4,  -460(r30)
003b28  0b917010  add.s r2, r1, r7
003b2c  e300bffc  loadli.w r1,  -424(r30)
003b30  8b967110  add.s r13, r3, r7
003b34  e3419ffc  loadli.w r3,  -436(r30)
003b38  8b197210  add.s r19, r4, r7
003b3c  63026ffc  loadli.w r4,  -464(r30)
003b40  8b907010  add.s r1, r1, r7
003b44  0b967110  add.s r12, r3, r7
003b48  e3019ffc  loadli.w r3,  -440(r30)
003b4c  8b957110  add.s r11, r3, r7
003b50  e3418ffc  loadli.w r3,  -444(r30)
003b54  0b997110  add.s r18, r3, r7
003b58  e3018ffc  loadli.w r3,  -448(r30)
003b5c  0b987110  add.s r16, r3, r7
003b60  e3417ffc  loadli.w r3,  -452(r30)
003b64  0b957110  add.s r10, r3, r7
003b68  e3017ffd  loadli.w r3,  -328(r30)
003b6c  93013c04  setlt.u r3, r24, r3
003b70  0b1c7210  add.s r24, r4, r7
003b74  63425ffc  loadli.w r4,  -468(r30)
003b78  8b127210  add.s r5, r4, r7
003b7c  63025ffc  loadli.w r4,  -472(r30)
003b80  0b127210  add.s r4, r4, r7
003b84  e70b4ffc  storeli.w r4, -328(r30)
003b88  63424ffc  loadli.w r4,  -476(r30)
003b8c  0b127210  add.s r4, r4, r7
003b90  e70d4ffc  storeli.w r4, -296(r30)
003b94  3bf00100  bneq r3, zero, 28
003b98  9bc10801  srli r3, r17, 16
003b9c  9b811100  andi r3, r3, 1
003ba0  8b913810  add.s r3, r17, r3
003ba4  8b917111  add.s r3, r3, r23
003ba8  97819101  and r3, r3, r25
003bac  e70f3ffc  storeli.w r3, -264(r30)
003bb0  33110128  sext_int2long r[3:4], r2
003bb4  9f140000  addli r9, zero, 1
003bb8  b3930028  sext_int2long r[8:9], r1
003bbc  97309102  sll.d r[2:3], r[3:4], r9
003bc0  97b19302  sll.d r[4:5], r[8:9], r9
003bc4  73381fea  store.d r[2:3], -336(r30)
003bc8  b3100328  sext_int2long r[2:3], r6
003bcc  733c3fe8  store.d r[4:5], -360(r30)
003bd0  b3110628  sext_int2long r[4:5], r12
003bd4  97b09002  sll.d r[2:3], r[2:3], r9
003bd8  17b79102  sll.d r[15:16], r[4:5], r9
003bdc  b3110928  sext_int2long r[4:5], r18
003be0  73381fe8  store.d r[2:3], -368(r30)
003be4  b3900628  sext_int2long r[2:3], r13
003be8  17bb9102  sll.d r[23:24], r[4:5], r9
003bec  b3110528  sext_int2long r[4:5], r10
003bf0  97b09002  sll.d r[2:3], r[2:3], r9
003bf4  97bc9102  sll.d r[26:27], r[4:5], r9
003bf8  b3910928  sext_int2long r[4:5], r19
003bfc  73341fe8  store.d r[2:3], -376(r30)
003c00  b3900528  sext_int2long r[2:3], r11
003c04  17b99102  sll.d r[19:20], r[4:5], r9
003c08  e3017ffe  loadli.w r3,  -200(r30)
003c0c  63028ffd  loadli.w r4,  -320(r30)
003c10  17ba9002  sll.d r[21:22], r[2:3], r9
003c14  b3100828  sext_int2long r[2:3], r16
003c18  93834104  setlt.u r7, r3, r4
003c1c  b3910228  sext_int2long r[4:5], r5
003c20  e302bffd  loadli.w r5,  -296(r30)
003c24  17b59002  sll.d r[11:12], r[2:3], r9
003c28  b3900d28  sext_int2long r[2:3], r27
003c2c  17b89002  sll.d r[17:18], r[2:3], r9
003c30  b3100c28  sext_int2long r[2:3], r24
003c34  b3920228  sext_int2long r[6:7], r5
003c38  97bd9002  sll.d r[28:29], r[2:3], r9
003c3c  97b09102  sll.d r[2:3], r[4:5], r9
003c40  e3017ffd  loadli.w r3,  -328(r30)
003c44  97b29202  sll.d r[6:7], r[6:7], r9
003c48  b3910128  sext_int2long r[4:5], r3
003c4c  97b19102  sll.d r[4:5], r[4:5], r9
003c50  bba00300  bneq r7, zero, 40
003c54  63040ffd  loadli.w r8,  -384(r30)
003c58  9b430401  srli r7, r8, 16
003c5c  9b831300  andi r7, r7, 1
003c60  8b137410  add.s r7, r8, r7
003c64  63446ffe  loadli.w r8,  -204(r30)
003c68  8b938310  add.s r7, r7, r8
003c6c  2b04ffff  lui r8, 1048560
003c70  97838300  and r7, r7, r8
003c74  674f7ffc  storeli.w r7, -268(r30)
003c78  eb530f01  load.d r[8:9], 16(r30)
003c7c  6b560fee  load.d r[13:14], -288(r30)
003c80  0ba6c310  add.ul r[13:14], r[8:9], r[13:14]
003c84  8ba4a310  add.ul r[10:11], r[8:9], r[11:12]
003c88  7334cfea  store.d r[13:14], -344(r30)
003c8c  6b560feb  load.d r[13:14], -336(r30)
003c90  733c9fec  store.d r[10:11], -296(r30)
003c94  e3047ffe  loadli.w r9,  -200(r30)
003c98  63059ffd  loadli.w r10,  -312(r30)
003c9c  0ba6c310  add.ul r[13:14], r[8:9], r[13:14]
003ca0  9385a404  setlt.u r11, r9, r10
003ca4  8ba40311  add.ul r[10:11], r[8:9], r[17:18]
003ca8  0ba8b311  add.ul r[17:18], r[8:9], r[28:29]
003cac  8bad3310  add.ul r[28:29], r[8:9], r[4:5]
003cb0  e341affd  loadli.w r3,  -300(r30)
003cb4  7330cfea  store.d r[13:14], -352(r30)
003cb8  6b568fe9  load.d r[13:14], -360(r30)
003cbc  73300fef  store.d r[17:18], -288(r30)
003cc0  0ba6c310  add.ul r[13:14], r[8:9], r[13:14]
003cc4  733ccfea  store.d r[13:14], -328(r30)
003cc8  6b560fe9  load.d r[13:14], -368(r30)
003ccc  0ba6c310  add.ul r[13:14], r[8:9], r[13:14]
003cd0  7338cfea  store.d r[13:14], -336(r30)
003cd4  6b568fe8  load.d r[13:14], -376(r30)
003cd8  0ba6c310  add.ul r[13:14], r[8:9], r[13:14]
003cdc  7330cfec  store.d r[13:14], -320(r30)
003ce0  0ba6e310  add.ul r[13:14], r[8:9], r[15:16]
003ce4  0ba74311  add.ul r[15:16], r[8:9], r[21:22]
003ce8  0baa6311  add.ul r[21:22], r[8:9], r[23:24]
003cec  8bab9311  add.ul r[24:25], r[8:9], r[26:27]
003cf0  8bac2311  add.ul r[26:27], r[8:9], r[19:20]
003cf4  8ba81310  add.ul r[18:19], r[8:9], r[2:3]
003cf8  8ba05310  add.ul r[2:3], r[8:9], r[6:7]
003cfc  73341fec  store.d r[2:3], -312(r30)
003d00  bbe505e2  bneq r11, zero, -14984
003d04  63410ffd  loadli.w r2,  -380(r30)
003d08  9b400101  srli r1, r2, 16
003d0c  9b801000  andi r1, r1, 1
003d10  8b101110  add.s r1, r2, r1
003d14  63416ffe  loadli.w r2,  -204(r30)
003d18  8b902010  add.s r1, r1, r2
003d1c  2b01ffff  lui r2, 1048560
003d20  97812000  and r3, r1, r2
003d24  dbaaf8ff  j -15020
003d28  9bc00401  srli r1, r9, 16
003d2c  9b801000  andi r1, r1, 1
003d30  8b901410  add.s r1, r9, r1
003d34  8b907011  add.s r1, r1, r23
003d38  97809001  and r1, r1, r25
003d3c  67411ffe  storeli.w r1, -236(r30)
003d40  9300cc04  setlt.u r1, r24, r12
003d44  bb9500fe  bneq r1, zero, -668
003d48  9b400501  srli r1, r10, 16
003d4c  9b801000  andi r1, r1, 1
003d50  8b101510  add.s r1, r10, r1
003d54  8b907011  add.s r1, r1, r23
003d58  97809001  and r1, r1, r25
003d5c  67011ffe  storeli.w r1, -240(r30)
003d60  93008c04  setlt.u r1, r24, r8
003d64  3bb500fe  bneq r1, zero, -692
003d68  9bc00601  srli r1, r13, 16
003d6c  9b801000  andi r1, r1, 1
003d70  8b901610  add.s r1, r13, r1
003d74  8b907011  add.s r1, r1, r23
003d78  97809001  and r1, r1, r25
003d7c  e7401ffe  storeli.w r1, -244(r30)
003d80  93007c04  setlt.u r1, r24, r7
003d84  bbd400fe  bneq r1, zero, -716
003d88  9b400901  srli r1, r18, 16
003d8c  9b801000  andi r1, r1, 1
003d90  8b101910  add.s r1, r18, r1
003d94  8b907011  add.s r1, r1, r23
003d98  97809001  and r1, r1, r25
003d9c  e7001ffe  storeli.w r1, -248(r30)
003da0  93000c05  setlt.u r1, r24, r16
003da4  3bf400fe  bneq r1, zero, -740
003da8  9b400a01  srli r1, r20, 16
003dac  9b801000  andi r1, r1, 1
003db0  8b101a10  add.s r1, r20, r1
003db4  8b907011  add.s r1, r1, r23
003db8  97809001  and r1, r1, r25
003dbc  67401ffe  storeli.w r1, -252(r30)
003dc0  93006c05  setlt.u r1, r24, r22
003dc4  379400fe  beq r1, zero, -764
003dc8  5ba3ffff  j -744
003dcc  2b01c07f  lui r2, 523264
003dd0  b7ee01ea  beq r3, zero, -10312
003dd4  9f010100  addli r3, r2, 0
003dd8  bbde00ea  bneq r1, zero, -10316
003ddc  dbf6faff  j -10316
003de0  2b01c07f  lui r2, 523264
003de4  37e000ec  beq r1, zero, -10216
003de8  9f000100  addli r1, r2, 0
003dec  3b5008ec  bneq r16, zero, -10220
003df0  db02fbff  j -10220
003df4  2b0bc07f  lui r22, 523264
003df8  ab0d4000  lui r27, 1024
003dfc  b74808ec  beq r16, zero, -9680
003e00  1f080b00  addli r16, r22, 0
003e04  bbb808ec  bneq r17, zero, -9684
003e08  db45fbff  j -9684
003e0c  2b08c07f  lui r16, 523264
003e10  e30a8ffb  loadli.w r21,  -576(r30)
003e14  37bc05ec  beq r11, zero, -9460
003e18  9f050800  addli r11, r16, 0
003e1c  3bac03ec  bneq r7, zero, -9464
003e20  5b61fbff  j -9464
003e24  ab05c07f  lui r11, 523264
003e28  e3497ffb  loadli.w r19,  -580(r30)
003e2c  b78d03ec  beq r7, zero, -9376
003e30  9f830500  addli r7, r11, 0
003e34  3bfd07ec  bneq r15, zero, -9380
003e38  db6bfbff  j -9380
003e3c  ab03c07f  lui r7, 523264
003e40  63097ffb  loadli.w r18,  -584(r30)
003e44  b7de07ec  beq r15, zero, -9292
003e48  9f870300  addli r15, r7, 0
003e4c  bb4e0aec  bneq r20, zero, -9296
003e50  5b76fbff  j -9296
003e54  ab03c07f  lui r7, 523264
003e58  37200aee  beq r20, zero, -9208
003e5c  1f8a0300  addli r20, r7, 0
003e60  3b1007ee  bneq r14, zero, -9212
003e64  db80fbff  j -9212
003e68  ab03c07f  lui r7, 523264
003e6c  e3486ffb  loadli.w r17,  -588(r30)
003e70  b70107ee  beq r14, zero, -9120
003e74  1f870300  addli r14, r7, 0
003e78  3b7104ee  bneq r8, zero, -9124
003e7c  db8bfbff  j -9124
003e80  ab03c07f  lui r7, 523264
003e84  63086ffb  loadli.w r16,  -592(r30)
003e88  b75204ee  beq r8, zero, -9036
003e8c  1f840300  addli r8, r7, 0
003e90  bb4203ee  bneq r6, zero, -9040
003e94  5b96fbff  j -9040
003e98  ab03c07f  lui r7, 523264
003e9c  e3475ffb  loadli.w r15,  -596(r30)
003ea0  372403ee  beq r6, zero, -8952
003ea4  1f830300  addli r6, r7, 0
003ea8  3b9401ee  bneq r3, zero, -8956
003eac  dba0fbff  j -8956
003eb0  2b03c07f  lui r6, 523264
003eb4  63072ffc  loadli.w r14,  -496(r30)
003eb8  37f501ee  beq r3, zero, -8868
003ebc  9f010300  addli r3, r6, 0
003ec0  3b6506ee  bneq r12, zero, -8872
003ec4  5babfbff  j -8872
003ec8  ab01c07f  lui r3, 523264
003ecc  b74606ee  beq r12, zero, -8784
003ed0  1f860100  addli r12, r3, 0
003ed4  bb3601ee  bneq r2, zero, -8788
003ed8  dbb5fbff  j -8788
003edc  ab01c07f  lui r3, 523264
003ee0  e305bffb  loadli.w r11,  -552(r30)
003ee4  372801ee  beq r2, zero, -8696
003ee8  1f810100  addli r2, r3, 0
003eec  3b9806ee  bneq r13, zero, -8700
003ef0  dbc0fbff  j -8700
003ef4  2b01c07f  lui r2, 523264
003ef8  37f906ee  beq r13, zero, -8612
003efc  9f060100  addli r13, r2, 0
003f00  3be90cee  bneq r25, zero, -8616
003f04  5bcbfbff  j -8616
003f08  2b01c07f  lui r2, 523264
003f0c  b7da0cee  beq r25, zero, -8524
003f10  9f0c0100  addli r25, r2, 0
003f14  bb4a0dee  bneq r26, zero, -8528
003f18  5bd6fbff  j -8528
003f1c  2b01c07f  lui r2, 523264
003f20  373c0dee  beq r26, zero, -8436
003f24  1f0d0100  addli r26, r2, 0
003f28  3b2c02ee  bneq r4, zero, -8440
003f2c  5be1fbff  j -8440
003f30  2b01c07f  lui r2, 523264
003f34  6344effb  loadli.w r8,  -524(r30)
003f38  b71d02ee  beq r4, zero, -8348
003f3c  1f020100  addli r4, r2, 0
003f40  bb0d0eee  bneq r28, zero, -8352
003f44  5becfbff  j -8352
003f48  2b01c07f  lui r2, 523264
003f4c  b76e0eee  beq r28, zero, -8264
003f50  1f0e0100  addli r28, r2, 0
003f54  bbde04ee  bneq r9, zero, -8268
003f58  dbf6fbff  j -8268
003f5c  2b01c07f  lui r2, 523264
003f60  37c004f0  beq r9, zero, -8176
003f64  9f040100  addli r9, r2, 0
003f68  3b3005f0  bneq r10, zero, -8180
003f6c  db01fcff  j -8180
003f70  2b01c07f  lui r2, 523264
003f74  b72105f0  beq r10, zero, -8088
003f78  1f050100  addli r10, r2, 0
003f7c  bb9100f0  bneq r1, zero, -8092
003f80  db0cfcff  j -8092
003f84  2b01c07f  lui r2, 523264
003f88  e303fffb  loadli.w r7,  -520(r30)
003f8c  b7f200f0  beq r1, zero, -8004
003f90  9f000100  addli r1, r2, 0
003f94  bbe202f0  bneq r5, zero, -8008
003f98  5b17fcff  j -8008
003f9c  ab00c07f  lui r1, 523264
003fa0  6303cffb  loadli.w r6,  -544(r30)
003fa4  37c402f0  beq r5, zero, -7920
003fa8  9f820000  addli r5, r1, 0
003fac  3b340cf0  bneq r24, zero, -7924
003fb0  db21fcff  j -7924
003fb4  ab00c07f  lui r1, 523264
003fb8  63025ffd  loadli.w r4,  -344(r30)
003fbc  b7150cf0  beq r24, zero, -7836
003fc0  1f8c0000  addli r24, r1, 0
003fc4  bb0506f0  bneq r12, zero, -7840
003fc8  5b2cfcff  j -7840
003fcc  ab00c07f  lui r1, 523264
003fd0  b77606f0  beq r12, zero, -7748
003fd4  1f860000  addli r12, r1, 0
003fd8  e3025ffd  loadli.w r5,  -344(r30)
003fdc  bbe602f0  bneq r5, zero, -7752
003fe0  5b37fcff  j -7752
003fe4  ab00c07f  lui r1, 523264
003fe8  63026ffd  loadli.w r4,  -336(r30)
003fec  375806f0  beq r12, zero, -7660
003ff0  1f860000  addli r12, r1, 0
003ff4  3bc807f0  bneq r15, zero, -7664
003ff8  5b42fcff  j -7664
003ffc  ab00c07f  lui r1, 523264
004000  b7a907f0  beq r15, zero, -7576
004004  9f870000  addli r15, r1, 0
004008  e3026ffd  loadli.w r5,  -336(r30)
00400c  bb9902f0  bneq r5, zero, -7580
004010  db4cfcff  j -7580
004014  ab00c07f  lui r1, 523264
004018  63027ffd  loadli.w r4,  -328(r30)
00401c  378b07f0  beq r15, zero, -7488
004020  9f870000  addli r15, r1, 0
004024  bb7a08f0  bneq r16, zero, -7492
004028  db57fcff  j -7492
00402c  ab00c07f  lui r1, 523264
004030  375c08f0  beq r16, zero, -7404
004034  1f880000  addli r16, r1, 0
004038  e3027ffd  loadli.w r5,  -328(r30)
00403c  3bcc02f0  bneq r5, zero, -7408
004040  5b62fcff  j -7408
004044  ab00c07f  lui r1, 523264
004048  63028ffd  loadli.w r4,  -320(r30)
00404c  b73d08f0  beq r16, zero, -7316
004050  1f880000  addli r16, r1, 0
004054  bbad08f0  bneq r17, zero, -7320
004058  5b6dfcff  j -7320
00405c  ab00c07f  lui r1, 523264
004060  378f08f0  beq r17, zero, -7232
004064  9f880000  addli r17, r1, 0
004068  e3028ffd  loadli.w r5,  -320(r30)
00406c  bbfe02f0  bneq r5, zero, -7236
004070  db77fcff  j -7236
004074  ab00c07f  lui r1, 523264
004078  63029ffd  loadli.w r4,  -312(r30)
00407c  37e008f2  beq r17, zero, -7144
004080  9f880000  addli r17, r1, 0
004084  3b5009f2  bneq r18, zero, -7148
004088  db82fcff  j -7148
00408c  ab00c07f  lui r1, 523264
004090  b73109f2  beq r18, zero, -7060
004094  1f890000  addli r18, r1, 0
004098  e3029ffd  loadli.w r5,  -312(r30)
00409c  bba102f2  bneq r5, zero, -7064
0040a0  5b8dfcff  j -7064
0040a4  ab00c07f  lui r1, 523264
0040a8  6342affd  loadli.w r4,  -300(r30)
0040ac  371309f2  beq r18, zero, -6972
0040b0  1f890000  addli r18, r1, 0
0040b4  3b8309f2  bneq r19, zero, -6976
0040b8  5b98fcff  j -6976
0040bc  ab00c07f  lui r1, 523264
0040c0  37e409f2  beq r19, zero, -6888
0040c4  9f890000  addli r19, r1, 0
0040c8  e342affd  loadli.w r5,  -300(r30)
0040cc  3bd402f2  bneq r5, zero, -6892
0040d0  dba2fcff  j -6892
0040d4  ab00c07f  lui r1, 523264
0040d8  6342effd  loadli.w r4,  -268(r30)
0040dc  b7c509f2  beq r19, zero, -6800
0040e0  9f890000  addli r19, r1, 0
0040e4  bbb50af2  bneq r21, zero, -6804
0040e8  dbadfcff  j -6804
0040ec  ab00c07f  lui r1, 523264
0040f0  6342fffd  loadli.w r4,  -260(r30)
0040f4  b73b06f2  beq r12, zero, -6420
0040f8  1f860000  addli r12, r1, 0
0040fc  bb2b0bf2  bneq r22, zero, -6424
004100  5bddfcff  j -6424
004104  ab00c07f  lui r1, 523264
004108  6345dffb  loadli.w r10,  -532(r30)
00410c  37f10bf4  beq r23, zero, -6052
004110  9f8b0000  addli r23, r1, 0
004114  e3020ffe  loadli.w r5,  -256(r30)
004118  3be102f4  bneq r5, zero, -6056
00411c  5b0bfdff  j -6056
004120  ab00c07f  lui r1, 523264
004124  63420ffe  loadli.w r4,  -252(r30)
004128  b7d20bf4  beq r23, zero, -5964
00412c  9f8b0000  addli r23, r1, 0
004130  bb420af4  bneq r20, zero, -5968
004134  5b16fdff  j -5968
004138  ab00c07f  lui r1, 523264
00413c  37240af4  beq r20, zero, -5880
004140  1f8a0000  addli r20, r1, 0
004144  e3420ffe  loadli.w r5,  -252(r30)
004148  3b9402f4  bneq r5, zero, -5884
00414c  db20fdff  j -5884
004150  ab00c07f  lui r1, 523264
004154  63421ffe  loadli.w r4,  -244(r30)
004158  b7050af4  beq r20, zero, -5792
00415c  1f8a0000  addli r20, r1, 0
004160  3b7509f4  bneq r18, zero, -5796
004164  db2bfdff  j -5796
004168  ab00c07f  lui r1, 523264
00416c  b75609f4  beq r18, zero, -5708
004170  1f890000  addli r18, r1, 0
004174  e3421ffe  loadli.w r5,  -244(r30)
004178  bbc602f4  bneq r5, zero, -5712
00417c  5b36fdff  j -5712
004180  ab00c07f  lui r1, 523264
004184  63022ffe  loadli.w r4,  -240(r30)
004188  373809f4  beq r18, zero, -5620
00418c  1f890000  addli r18, r1, 0
004190  3ba809f4  bneq r19, zero, -5624
004194  5b41fdff  j -5624
004198  ab00c07f  lui r1, 523264
00419c  b79909f4  beq r19, zero, -5532
0041a0  9f890000  addli r19, r1, 0
0041a4  e3022ffe  loadli.w r5,  -240(r30)
0041a8  bb8902f4  bneq r5, zero, -5536
0041ac  5b4cfdff  j -5536
0041b0  ab00c07f  lui r1, 523264
0041b4  b7fa09f4  beq r19, zero, -5444
0041b8  9f890000  addli r19, r1, 0
0041bc  bb6a09f4  bneq r18, zero, -5448
0041c0  5b57fdff  j -5448
0041c4  ab00c07f  lui r1, 523264
0041c8  63422ffe  loadli.w r4,  -236(r30)
0041cc  374c09f4  beq r18, zero, -5360
0041d0  1f890000  addli r18, r1, 0
0041d4  3bbc05f4  bneq r11, zero, -5364
0041d8  db61fdff  j -5364
0041dc  ab00c07f  lui r1, 523264
0041e0  63023ffe  loadli.w r4,  -232(r30)
0041e4  b79d05f4  beq r11, zero, -5276
0041e8  9f850000  addli r11, r1, 0
0041ec  e3422ffe  loadli.w r5,  -236(r30)
0041f0  bb8d02f4  bneq r5, zero, -5280
0041f4  5b6cfdff  j -5280
0041f8  ab00c07f  lui r1, 523264
0041fc  63423ffe  loadli.w r4,  -228(r30)
004200  37a10bf6  beq r23, zero, -5048
004204  9f8b0000  addli r23, r1, 0
004208  3b110cf6  bneq r24, zero, -5052
00420c  db88fdff  j -5052
004210  ab00c07f  lui r1, 523264
004214  63024ffe  loadli.w r4,  -224(r30)
004218  b7340cf6  beq r24, zero, -4820
00421c  1f8c0000  addli r24, r1, 0
004220  bb2403f6  bneq r6, zero, -4824
004224  5ba5fdff  j -4824
004228  ab00c07f  lui r1, 523264
00422c  370603f6  beq r6, zero, -4736
004230  1f830000  addli r6, r1, 0
004234  e3024ffe  loadli.w r5,  -224(r30)
004238  bbf502f6  bneq r5, zero, -4740
00423c  dbaffdff  j -4740
004240  ab00c07f  lui r1, 523264
004244  37770cf6  beq r24, zero, -4644
004248  1f8c0000  addli r24, r1, 0
00424c  3b6706f6  bneq r12, zero, -4648
004250  5bbbfdff  j -4648
004254  ab00c07f  lui r1, 523264
004258  b76806f6  beq r12, zero, -4552
00425c  1f860000  addli r12, r1, 0
004260  bbd805f6  bneq r11, zero, -4556
004264  dbc6fdff  j -4556
004268  ab00c07f  lui r1, 523264
00426c  37ba05f6  beq r11, zero, -4468
004270  9f850000  addli r11, r1, 0
004274  3b2a05f6  bneq r10, zero, -4472
004278  5bd1fdff  j -4472
00427c  ab00c07f  lui r1, 523264
004280  b70b05f6  beq r10, zero, -4384
004284  1f850000  addli r10, r1, 0
004288  3bfb04f6  bneq r9, zero, -4388
00428c  dbdbfdff  j -4388
004290  ab00c07f  lui r1, 523264
004294  b7dc04f6  beq r9, zero, -4300
004298  9f840000  addli r9, r1, 0
00429c  bb4c04f6  bneq r8, zero, -4304
0042a0  5be6fdff  j -4304
0042a4  ab00c07f  lui r1, 523264
0042a8  372e04f6  beq r8, zero, -4216
0042ac  1f840000  addli r8, r1, 0
0042b0  3b9e03f6  bneq r7, zero, -4220
0042b4  dbf0fdff  j -4220
0042b8  ab00c07f  lui r1, 523264
0042bc  37ff03f6  beq r7, zero, -4132
0042c0  9f830000  addli r7, r1, 0
0042c4  3b6f03f6  bneq r6, zero, -4136
0042c8  5bfbfdff  j -4136
0042cc  9f0e0ffb  addli sp, r30, -640
0042d0  9f8e0e05  addli sp, sp, 640
0042d4  00a00300  mfence { lm, sm, gm }
0042d8  00100000  exit
0042dc  00100000  exit
0042e0  00100000  exit
0042e4  00100000  exit
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
