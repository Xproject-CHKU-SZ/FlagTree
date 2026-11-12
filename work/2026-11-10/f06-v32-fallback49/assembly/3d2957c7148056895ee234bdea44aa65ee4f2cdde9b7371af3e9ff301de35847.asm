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
000078  9f497000  addli r19, zero, 60
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
0000dc  9f8e8ef9  addli sp, sp, -832
0000e0  1f8f0e06  addli r30, sp, 768
0000e4  2b010000  lui r2, 0
0000e8  80300002  core_id r1
0000ec  abf20000  lui r5, 15
0000f0  00570002  load_param_i r14, 0
0000f4  e3436f00  loadli.w r7,  52(r30)
0000f8  63026f00  loadli.w r4,  48(r30)
0000fc  9bb12000  slli r3, r1, 2
000100  1f010100  addli r2, r2, 0
000104  63037f00  loadli.w r6,  56(r30)
000108  1b9af2ff  ori r20, r5, 4095
00010c  0b942110  add.s r8, r3, r2
000110  0b924320  mul.s r4, r7, r4
000114  73680440  stores.w zero, 1040(r8)
000118  00a00300  mfence { lm, sm, gm }
00011c  80210a04  csr_set csr3, r20
000120  00d00100  sync_group
000124  e7478ffa  storeli.w r8, -644(r30)
000128  73600400  stores.w zero, 0(r8)
00012c  0b126220  mul.s r4, r4, r6
000130  00a00300  mfence { lm, sm, gm }
000134  80210a04  csr_set csr3, r20
000138  00d00100  sync_group
00013c  e7074ffa  storeli.w r4, -648(r30)
000140  4b79e20e  ble.s r4, r14, 7772
000144  1f028000  addli r4, zero, 64
000148  e345fffa  loadli.w r11,  -644(r30)
00014c  eb548f00  load.d r[10:11], 8(r30)
000150  6b530f01  load.d r[7:8], 16(r30)
000154  9f1c0000  addli r25, zero, 1
000158  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00015c  67474ffb  storeli.w r20, -652(r30)
000160  0b944030  div.s r8, r1, r4
000164  6b528f01  load.d r[5:6], 24(r30)
000168  9f852508  addli r11, r11, 1040
00016c  e746bffa  storeli.w r11, -660(r30)
000170  67078ffa  storeli.w r8, -656(r30)
000174  1b346400  slli r8, r8, 6
000178  0b948018  sub.s r8, r1, r8
00017c  9b80f003  andi r1, r1, 63
000180  9b374400  slli r15, r8, 4
000184  00d40002  load_param_i r8, 1
000188  67481ffc  storeli.w r1, -380(r30)
00018c  ab700000  lui r1, 7
000190  67468ffa  storeli.w r8, -668(r30)
000194  1b941700  ori r8, r15, 1
000198  b3950728  sext_int2long r[12:13], r15
00019c  9b96d700  ori r13, r15, 13
0001a0  9b90f0ff  ori r1, r1, 4095
0001a4  e706fffa  storeli.w r15, -664(r30)
0001a8  67068ffa  storeli.w r8, -672(r30)
0001ac  1b942700  ori r8, r15, 2
0001b0  e70b1ffc  storeli.w r1, -328(r30)
0001b4  6703dffa  storeli.w r13, -720(r30)
0001b8  abf07f7f  lui r1, 522239
0001bc  e7458ffa  storeli.w r8, -676(r30)
0001c0  1b943700  ori r8, r15, 3
0001c4  e7058ffa  storeli.w r8, -680(r30)
0001c8  1b944700  ori r8, r15, 4
0001cc  67458ffa  storeli.w r8, -684(r30)
0001d0  1b945700  ori r8, r15, 5
0001d4  67058ffa  storeli.w r8, -688(r30)
0001d8  1b946700  ori r8, r15, 6
0001dc  e7448ffa  storeli.w r8, -692(r30)
0001e0  1b947700  ori r8, r15, 7
0001e4  e7048ffa  storeli.w r8, -696(r30)
0001e8  1b948700  ori r8, r15, 8
0001ec  67448ffa  storeli.w r8, -700(r30)
0001f0  1b949700  ori r8, r15, 9
0001f4  67048ffa  storeli.w r8, -704(r30)
0001f8  1b94a700  ori r8, r15, 10
0001fc  e7438ffa  storeli.w r8, -708(r30)
000200  1b94b700  ori r8, r15, 11
000204  e7038ffa  storeli.w r8, -712(r30)
000208  1b94c700  ori r8, r15, 12
00020c  67438ffa  storeli.w r8, -716(r30)
000210  1f140000  addli r8, zero, 1
000214  97b58502  sll.d r[12:13], r[12:13], r8
000218  1b94e700  ori r8, r15, 14
00021c  e7428ffa  storeli.w r8, -724(r30)
000220  0ba4b410  add.ul r[9:10], r[10:11], r[12:13]
000224  0b23b310  add.ul r[7:8], r[7:8], r[12:13]
000228  0b22b210  add.ul r[5:6], r[5:6], r[12:13]
00022c  73308fd2  store.d r[9:10], -736(r30)
000230  2bf4ffff  lui r8, 1048575
000234  733c6fd0  store.d r[7:8], -744(r30)
000238  9b94f0ff  ori r9, r1, 4095
00023c  9f038ffd  addli r7, r30, -320
000240  73384fd0  store.d r[5:6], -752(r30)
000244  1b1304f0  ori r6, r8, 3840
000248  1f044000  addli r8, zero, 32
00024c  e74b9ffc  storeli.w r9, -324(r30)
000250  97816100  and r3, r3, r6
000254  8b912110  add.s r3, r3, r2
000258  2bf1ff7f  lui r2, 524287
00025c  9b16f1ff  ori r13, r2, 4095
000260  2b11833a  lui r2, 239665
000264  67483ffa  storeli.w r3, -636(r30)
000268  9b10f126  ori r1, r2, 623
00026c  e7401ffa  storeli.w r1, -756(r30)
000270  9b90f700  ori r1, r15, 15
000274  e7001ffa  storeli.w r1, -760(r30)
000278  9f802108  addli r1, r3, 1040
00027c  67081ffa  storeli.w r1, -640(r30)
000280  9f200000  addli r1, zero, 2
000284  fe8100e0  vmmov mr3, r1
000288  db2e0000  j 372
00028c  9bc10401  srli r3, r9, 16
000290  63027ffd  loadli.w r4,  -328(r30)
000294  9b811100  andi r3, r3, 1
000298  8b913410  add.s r3, r9, r3
00029c  8b914110  add.s r3, r3, r4
0002a0  9bc10101  srli r3, r3, 16
0002a4  63070ffd  loadli.w r14,  -384(r30)
0002a8  9f250000  addli r11, zero, 2
0002ac  1f050fff  addli r10, r30, -128
0002b0  2b0200f0  lui r4, 983040
0002b4  731f3ff8  store.h r3, -98(r30)
0002b8  ab0100f0  lui r3, 983040
0002bc  17924500  or r4, r11, r4
0002c0  00a00000  mfence { lm }
0002c4  eb528fe5  load.d r[6:7], -424(r30)
0002c8  97913500  or r3, r11, r3
0002cc  eb578fe6  load.d r[16:17], -408(r30)
0002d0  ffb1a200  s_lm2gm r3, r10, 0(r[6:7])
0002d4  e3412ffd  loadli.w r3,  -364(r30)
0002d8  eb520fe5  load.d r[6:7], -432(r30)
0002dc  7fb23200  s_lm2gm r4, r3, 0(r[6:7])
0002e0  2b0200f0  lui r4, 983040
0002e4  9f410500  addli r3, r10, 4
0002e8  ab0200f0  lui r5, 983040
0002ec  1f630500  addli r6, r10, 6
0002f0  17924500  or r4, r11, r4
0002f4  97925500  or r5, r11, r5
0002f8  7fb23700  s_lm2gm r4, r3, 0(r[16:17])
0002fc  eb510fe6  load.d r[4:5], -416(r30)
000300  eb570fe7  load.d r[16:17], -400(r30)
000304  ffb26100  s_lm2gm r5, r6, 0(r[4:5])
000308  ab0200f0  lui r5, 983040
00030c  2b0300f0  lui r6, 983040
000310  9f011500  addli r3, r10, 8
000314  1f221500  addli r4, r10, 10
000318  97925500  or r5, r11, r5
00031c  17936500  or r6, r11, r6
000320  ffb23700  s_lm2gm r5, r3, 0(r[16:17])
000324  ab0200f0  lui r5, 983040
000328  7f334900  s_lm2gm r6, r4, 0(r[19:20])
00032c  2b0300f0  lui r6, 983040
000330  eb588fe7  load.d r[18:19], -392(r30)
000334  9f411500  addli r3, r10, 12
000338  1f621500  addli r4, r10, 14
00033c  97925500  or r5, r11, r5
000340  17936500  or r6, r11, r6
000344  ffb23800  s_lm2gm r5, r3, 0(r[18:19])
000348  ab0200f0  lui r5, 983040
00034c  7f334d00  s_lm2gm r6, r4, 0(r[27:28])
000350  2b0300f0  lui r6, 983040
000354  eb588fe8  load.d r[18:19], -376(r30)
000358  9f012500  addli r3, r10, 16
00035c  1f222500  addli r4, r10, 18
000360  97925500  or r5, r11, r5
000364  17936500  or r6, r11, r6
000368  ffb23800  s_lm2gm r5, r3, 0(r[18:19])
00036c  ab0200f0  lui r5, 983040
000370  7fb34300  s_lm2gm r6, r4, 0(r[8:9])
000374  2b0300f0  lui r6, 983040
000378  9f412500  addli r3, r10, 20
00037c  1f622500  addli r4, r10, 22
000380  9f038ffd  addli r7, r30, -320
000384  1f044000  addli r8, zero, 32
000388  97925500  or r5, r11, r5
00038c  17936500  or r6, r11, r6
000390  ffb23b00  s_lm2gm r5, r3, 0(r[24:25])
000394  ab0100f0  lui r3, 983040
000398  7fb34000  s_lm2gm r6, r4, 0(r[2:3])
00039c  eb520fea  load.d r[6:7], -352(r30)
0003a0  9f003500  addli r1, r10, 24
0003a4  2b0200f0  lui r4, 983040
0003a8  1f213500  addli r2, r10, 26
0003ac  97913500  or r3, r11, r3
0003b0  17924500  or r4, r11, r4
0003b4  ffb11200  s_lm2gm r3, r1, 0(r[6:7])
0003b8  eb528fe9  load.d r[6:7], -360(r30)
0003bc  ab0100f0  lui r3, 983040
0003c0  9f403500  addli r1, r10, 28
0003c4  97913500  or r3, r11, r3
0003c8  7fb22200  s_lm2gm r4, r2, 0(r[6:7])
0003cc  2b0200f0  lui r4, 983040
0003d0  eb528fea  load.d r[6:7], -344(r30)
0003d4  1f613500  addli r2, r10, 30
0003d8  ffb11a00  s_lm2gm r3, r1, 0(r[22:23])
0003dc  e340cffa  loadli.w r1,  -668(r30)
0003e0  17924500  or r4, r11, r4
0003e4  7fb22200  s_lm2gm r4, r2, 0(r[6:7])
0003e8  0b171710  add.s r14, r14, r1
0003ec  00a00000  mfence { lm }
0003f0  e300fffa  loadli.w r1,  -648(r30)
0003f4  3f201700  blt.s r14, r1, 8
0003f8  db740300  j 7076
0003fc  9f000000  addli r1, zero, 0
000400  0b911310  add.s r2, r7, r1
000404  9fc00000  addli r1, r1, 4
000408  73100100  store.h zero, 0(r2)
00040c  73110100  store.h zero, 2(r2)
000410  00a00000  mfence { lm }
000414  bbbf80fe  bneq r1, r8, -20
000418  e3007f00  loadli.w r1,  56(r30)
00041c  63416f00  loadli.w r2,  52(r30)
000420  6302effa  loadli.w r4,  -656(r30)
000424  e302dffa  loadli.w r5,  -664(r30)
000428  ab0100f0  lui r3, 983040
00042c  6708effc  storeli.w r14, -384(r30)
000430  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000434  1f190000  addli r18, zero, 1
000438  12310002  vadd.s.mz vr2{mr1}, zero, vr0
00043c  97113400  or r3, r8, r3
000440  7e0109e0  vmmov mr2, r18
000444  8b101730  div.s r1, r14, r1
000448  8b902030  div.s r1, r1, r2
00044c  2b0100f0  lui r2, 983040
000450  17112400  or r2, r8, r2
000454  0b924010  add.s r4, r1, r4
000458  ab0000f0  lui r1, 983040
00045c  1b33a200  slli r6, r4, 10
000460  97101400  or r1, r8, r1
000464  674b4ffc  storeli.w r4, -332(r30)
000468  2b0200f0  lui r4, 983040
00046c  8b125310  add.s r5, r6, r5
000470  67076ffc  storeli.w r6, -400(r30)
000474  17124400  or r4, r8, r4
000478  b3920228  sext_int2long r[6:7], r5
00047c  97b49203  sll.d r[10:11], r[6:7], r25
000480  eb520f00  load.d r[6:7], 0(r30)
000484  733c9fe6  store.d r[10:11], -392(r30)
000488  8ba29210  add.ul r[6:7], r[6:7], r[10:11]
00048c  7fa17200  l_gm2lm r2, r7, 0(r[6:7])
000490  eb520fd2  load.d r[6:7], -736(r30)
000494  1f010ffe  addli r2, r30, -256
000498  ffa12200  l_gm2lm r3, r2, 0(r[6:7])
00049c  6b518fd1  load.d r[3:4], -744(r30)
0004a0  9f028ffe  addli r5, r30, -192
0004a4  ff205100  l_gm2lm r1, r5, 0(r[3:4])
0004a8  eb500fd1  load.d r[2:3], -752(r30)
0004ac  9f010fff  addli r3, r30, -128
0004b0  7fa23000  l_gm2lm r4, r3, 0(r[2:3])
0004b4  00a00000  mfence { lm }
0004b8  eb310fec  load.hu r3, -320(r30)
0004bc  6b322fec  load.hu r4, -318(r30)
0004c0  6b31afed  load.hu r2, -294(r30)
0004c4  eb30cfed  load.hu r1, -292(r30)
0004c8  eb324fec  load.hu r5, -316(r30)
0004cc  6b336fec  load.hu r6, -314(r30)
0004d0  eb338fec  load.hu r7, -312(r30)
0004d4  6b34afec  load.hu r8, -310(r30)
0004d8  eb34cfec  load.hu r9, -308(r30)
0004dc  6b35efec  load.hu r10, -306(r30)
0004e0  eb350fed  load.hu r11, -304(r30)
0004e4  6b362fed  load.hu r12, -302(r30)
0004e8  6b374fed  load.hu r14, -300(r30)
0004ec  eb376fed  load.hu r15, -298(r30)
0004f0  6b388fed  load.hu r16, -296(r30)
0004f4  eb38efed  load.hu r17, -290(r30)
0004f8  b3910118  bfloat2float.rn r3, r3
0004fc  33110118  bfloat2float.rn r2, r2
000500  b3900018  bfloat2float.rn r1, r1
000504  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
000508  b3110218  bfloat2float.rn r3, r4
00050c  1f420000  addli r4, zero, 4
000510  7e0002e0  vmmov mr0, r4
000514  1f021000  addli r4, zero, 8
000518  eaa01136  vor.u.mh vr1{mr3}, r3, vr1
00051c  b3910218  bfloat2float.rn r3, r5
000520  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000524  b3110318  bfloat2float.rn r3, r6
000528  7e0002e0  vmmov mr0, r4
00052c  1f022000  addli r4, zero, 16
000530  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000534  b3910318  bfloat2float.rn r3, r7
000538  7e0002e0  vmmov mr0, r4
00053c  1f024000  addli r4, zero, 32
000540  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000544  b3110418  bfloat2float.rn r3, r8
000548  7e0002e0  vmmov mr0, r4
00054c  1f028000  addli r4, zero, 64
000550  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000554  b3910418  bfloat2float.rn r3, r9
000558  7e0002e0  vmmov mr0, r4
00055c  1f020001  addli r4, zero, 128
000560  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000564  b3110518  bfloat2float.rn r3, r10
000568  7e0002e0  vmmov mr0, r4
00056c  1f020002  addli r4, zero, 256
000570  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000574  b3910518  bfloat2float.rn r3, r11
000578  7e0002e0  vmmov mr0, r4
00057c  1f020004  addli r4, zero, 512
000580  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000584  b3110618  bfloat2float.rn r3, r12
000588  7e0002e0  vmmov mr0, r4
00058c  1f020008  addli r4, zero, 1024
000590  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000594  b3110718  bfloat2float.rn r3, r14
000598  7e0002e0  vmmov mr0, r4
00059c  1f020010  addli r4, zero, 2048
0005a0  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005a4  b3910718  bfloat2float.rn r3, r15
0005a8  7e0002e0  vmmov mr0, r4
0005ac  1f020020  addli r4, zero, 4096
0005b0  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005b4  b3110818  bfloat2float.rn r3, r16
0005b8  7e0002e0  vmmov mr0, r4
0005bc  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005c0  9f010040  addli r3, zero, 8192
0005c4  7e8001e0  vmmov mr0, r3
0005c8  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0005cc  2b410000  lui r2, 4
0005d0  7e0001e0  vmmov mr0, r2
0005d4  2b810000  lui r2, 8
0005d8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0005dc  b3900818  bfloat2float.rn r1, r17
0005e0  7e0001e0  vmmov mr0, r2
0005e4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0005e8  eb300ff0  load.hu r1, -256(r30)
0005ec  6b312ff0  load.hu r2, -254(r30)
0005f0  eb314ff0  load.hu r3, -252(r30)
0005f4  6b326ff0  load.hu r4, -250(r30)
0005f8  eb328ff0  load.hu r5, -248(r30)
0005fc  6b33aff0  load.hu r6, -246(r30)
000600  eb33cff0  load.hu r7, -244(r30)
000604  6b34eff0  load.hu r8, -242(r30)
000608  eb340ff1  load.hu r9, -240(r30)
00060c  6b352ff1  load.hu r10, -238(r30)
000610  eb354ff1  load.hu r11, -236(r30)
000614  6b366ff1  load.hu r12, -234(r30)
000618  6b378ff1  load.hu r14, -232(r30)
00061c  eb37aff1  load.hu r15, -230(r30)
000620  6b38cff1  load.hu r16, -228(r30)
000624  eb38eff1  load.hu r17, -226(r30)
000628  b3900018  bfloat2float.rn r1, r1
00062c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000630  b3100118  bfloat2float.rn r1, r2
000634  1f410000  addli r2, zero, 4
000638  7e0101e0  vmmov mr2, r2
00063c  1f011000  addli r2, zero, 8
000640  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
000644  b3900118  bfloat2float.rn r1, r3
000648  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00064c  b3100218  bfloat2float.rn r1, r4
000650  7e0101e0  vmmov mr2, r2
000654  1f012000  addli r2, zero, 16
000658  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00065c  b3900218  bfloat2float.rn r1, r5
000660  7e0101e0  vmmov mr2, r2
000664  1f014000  addli r2, zero, 32
000668  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00066c  b3100318  bfloat2float.rn r1, r6
000670  7e0101e0  vmmov mr2, r2
000674  1f018000  addli r2, zero, 64
000678  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00067c  b3900318  bfloat2float.rn r1, r7
000680  7e0101e0  vmmov mr2, r2
000684  1f010001  addli r2, zero, 128
000688  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00068c  b3100418  bfloat2float.rn r1, r8
000690  7e0101e0  vmmov mr2, r2
000694  1f010002  addli r2, zero, 256
000698  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00069c  b3900418  bfloat2float.rn r1, r9
0006a0  7e0101e0  vmmov mr2, r2
0006a4  1f010004  addli r2, zero, 512
0006a8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006ac  b3100518  bfloat2float.rn r1, r10
0006b0  7e0101e0  vmmov mr2, r2
0006b4  1f010008  addli r2, zero, 1024
0006b8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006bc  b3900518  bfloat2float.rn r1, r11
0006c0  7e0101e0  vmmov mr2, r2
0006c4  1f010010  addli r2, zero, 2048
0006c8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006cc  b3100618  bfloat2float.rn r1, r12
0006d0  7e0101e0  vmmov mr2, r2
0006d4  1f010020  addli r2, zero, 4096
0006d8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006dc  b3100718  bfloat2float.rn r1, r14
0006e0  7e0101e0  vmmov mr2, r2
0006e4  1f010040  addli r2, zero, 8192
0006e8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006ec  b3900718  bfloat2float.rn r1, r15
0006f0  7e0101e0  vmmov mr2, r2
0006f4  2b410000  lui r2, 4
0006f8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006fc  b3100818  bfloat2float.rn r1, r16
000700  7e0101e0  vmmov mr2, r2
000704  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000708  b3900818  bfloat2float.rn r1, r17
00070c  ab08807f  lui r17, 522240
000710  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000714  eb300ff4  load.hu r1, -192(r30)
000718  e7081ffc  storeli.w r1, -376(r30)
00071c  eb302ff4  load.hu r1, -190(r30)
000720  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000724  674e1ffa  storeli.w r1, -540(r30)
000728  eb304ff4  load.hu r1, -188(r30)
00072c  e74e1ffa  storeli.w r1, -532(r30)
000730  eb306ff4  load.hu r1, -186(r30)
000734  674f1ffa  storeli.w r1, -524(r30)
000738  eb308ff4  load.hu r1, -184(r30)
00073c  e74f1ffa  storeli.w r1, -516(r30)
000740  eb30aff4  load.hu r1, -182(r30)
000744  67401ffc  storeli.w r1, -508(r30)
000748  eb30cff4  load.hu r1, -180(r30)
00074c  e7401ffc  storeli.w r1, -500(r30)
000750  eb30eff4  load.hu r1, -178(r30)
000754  67411ffc  storeli.w r1, -492(r30)
000758  eb300ff5  load.hu r1, -176(r30)
00075c  e7411ffc  storeli.w r1, -484(r30)
000760  eb302ff5  load.hu r1, -174(r30)
000764  e7021ffc  storeli.w r1, -472(r30)
000768  eb304ff5  load.hu r1, -172(r30)
00076c  67031ffc  storeli.w r1, -464(r30)
000770  eb306ff5  load.hu r1, -170(r30)
000774  e7031ffc  storeli.w r1, -456(r30)
000778  eb308ff5  load.hu r1, -168(r30)
00077c  67041ffc  storeli.w r1, -448(r30)
000780  eb30aff5  load.hu r1, -166(r30)
000784  67051ffc  storeli.w r1, -432(r30)
000788  eb30cff5  load.hu r1, -164(r30)
00078c  67061ffc  storeli.w r1, -416(r30)
000790  eb30eff5  load.hu r1, -162(r30)
000794  e7061ffc  storeli.w r1, -408(r30)
000798  eb300ff8  load.hu r1, -128(r30)
00079c  e74d1ffa  storeli.w r1, -548(r30)
0007a0  eb302ff8  load.hu r1, -126(r30)
0007a4  670e1ffa  storeli.w r1, -544(r30)
0007a8  eb304ff8  load.hu r1, -124(r30)
0007ac  e70e1ffa  storeli.w r1, -536(r30)
0007b0  eb306ff8  load.hu r1, -122(r30)
0007b4  670f1ffa  storeli.w r1, -528(r30)
0007b8  eb308ff8  load.hu r1, -120(r30)
0007bc  e70f1ffa  storeli.w r1, -520(r30)
0007c0  eb30aff8  load.hu r1, -118(r30)
0007c4  67001ffc  storeli.w r1, -512(r30)
0007c8  eb30cff8  load.hu r1, -116(r30)
0007cc  e7001ffc  storeli.w r1, -504(r30)
0007d0  eb30eff8  load.hu r1, -114(r30)
0007d4  67011ffc  storeli.w r1, -496(r30)
0007d8  eb300ff9  load.hu r1, -112(r30)
0007dc  e7011ffc  storeli.w r1, -488(r30)
0007e0  eb302ff9  load.hu r1, -110(r30)
0007e4  67021ffc  storeli.w r1, -480(r30)
0007e8  eb304ff9  load.hu r1, -108(r30)
0007ec  67421ffc  storeli.w r1, -476(r30)
0007f0  eb306ff9  load.hu r1, -106(r30)
0007f4  e7421ffc  storeli.w r1, -468(r30)
0007f8  eb308ff9  load.hu r1, -104(r30)
0007fc  67431ffc  storeli.w r1, -460(r30)
000800  eb30aff9  load.hu r1, -102(r30)
000804  e7431ffc  storeli.w r1, -452(r30)
000808  eb30cff9  load.hu r1, -100(r30)
00080c  e7041ffc  storeli.w r1, -440(r30)
000810  eb30eff9  load.hu r1, -98(r30)
000814  e7051ffc  storeli.w r1, -424(r30)
000818  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
00081c  00a00000  mfence { lm }
000820  63048fff  loadli.w r8,  -64(r30)
000824  63418fff  loadli.w r2,  -60(r30)
000828  630a9fff  loadli.w r20,  -56(r30)
00082c  e3429fff  loadli.w r5,  -52(r30)
000830  e30bafff  loadli.w r23,  -48(r30)
000834  6343afff  loadli.w r6,  -44(r30)
000838  6306bfff  loadli.w r12,  -40(r30)
00083c  e345bfff  loadli.w r11,  -36(r30)
000840  630dcfff  loadli.w r26,  -32(r30)
000844  634ecfff  loadli.w r28,  -28(r30)
000848  e307dfff  loadli.w r15,  -24(r30)
00084c  e34ddfff  loadli.w r27,  -20(r30)
000850  e30aefff  loadli.w r21,  -16(r30)
000854  634befff  loadli.w r22,  -12(r30)
000858  6302ffff  loadli.w r4,  -8(r30)
00085c  9701d400  and r3, r8, r13
000860  67494ffc  storeli.w r4, -364(r30)
000864  e349ffff  loadli.w r19,  -4(r30)
000868  93803804  setlt.u r1, r17, r3
00086c  3bd00000  bneq r1, zero, 20
000870  63077ffd  loadli.w r14,  -328(r30)
000874  ab0c4000  lui r25, 1024
000878  e7098ffc  storeli.w r8, -360(r30)
00087c  db020000  j 20
000880  ab0c4000  lui r25, 1024
000884  63077ffd  loadli.w r14,  -328(r30)
000888  97109401  or r1, r8, r25
00088c  e7091ffc  storeli.w r1, -360(r30)
000890  1702d100  and r4, r2, r13
000894  93804804  setlt.u r1, r17, r4
000898  3bb00000  bneq r1, zero, 12
00089c  670a2ffc  storeli.w r2, -352(r30)
0008a0  db010000  j 12
0008a4  97109101  or r1, r2, r25
0008a8  670a1ffc  storeli.w r1, -352(r30)
0008ac  1709da00  and r18, r20, r13
0008b0  93802805  setlt.u r1, r17, r18
0008b4  3bb00000  bneq r1, zero, 12
0008b8  674b4ffb  storeli.w r20, -588(r30)
0008bc  db010000  j 12
0008c0  97109a01  or r1, r20, r25
0008c4  674b1ffa  storeli.w r1, -588(r30)
0008c8  1785d200  and r10, r5, r13
0008cc  9380a804  setlt.u r1, r17, r10
0008d0  3bb00000  bneq r1, zero, 12
0008d4  e70a5ffc  storeli.w r5, -344(r30)
0008d8  db010000  j 12
0008dc  97909201  or r1, r5, r25
0008e0  e70a1ffc  storeli.w r1, -344(r30)
0008e4  9784db00  and r9, r23, r13
0008e8  93809804  setlt.u r1, r17, r9
0008ec  3bb00000  bneq r1, zero, 12
0008f0  e70b7ffb  storeli.w r23, -584(r30)
0008f4  db010000  j 12
0008f8  97909b01  or r1, r23, r25
0008fc  e70b1ffa  storeli.w r1, -584(r30)
000900  9703d300  and r7, r6, r13
000904  e7086ffa  storeli.w r6, -632(r30)
000908  93807804  setlt.u r1, r17, r7
00090c  3bb00000  bneq r1, zero, 12
000910  e74b6ffa  storeli.w r6, -580(r30)
000914  db010000  j 12
000918  97109301  or r1, r6, r25
00091c  e74b1ffa  storeli.w r1, -580(r30)
000920  1703d600  and r6, r12, r13
000924  e748cffa  storeli.w r12, -628(r30)
000928  93806804  setlt.u r1, r17, r6
00092c  3bb00000  bneq r1, zero, 12
000930  670ccffa  storeli.w r12, -576(r30)
000934  db010000  j 12
000938  97109601  or r1, r12, r25
00093c  670c1ffa  storeli.w r1, -576(r30)
000940  9780d500  and r1, r11, r13
000944  6709bffa  storeli.w r11, -624(r30)
000948  13861804  setlt.u r12, r17, r1
00094c  37200600  beq r12, zero, 8
000950  97959501  or r11, r11, r25
000954  1708dd00  and r16, r26, r13
000958  674cbffa  storeli.w r11, -572(r30)
00095c  6749affb  storeli.w r26, -620(r30)
000960  13860805  setlt.u r12, r17, r16
000964  3b300600  bneq r12, zero, 12
000968  e70caffb  storeli.w r26, -568(r30)
00096c  db010000  j 12
000970  97159d01  or r11, r26, r25
000974  e70cbffa  storeli.w r11, -568(r30)
000978  170dde00  and r26, r28, r13
00097c  1386a805  setlt.u r12, r17, r26
000980  3b300600  bneq r12, zero, 12
000984  9f050e00  addli r11, r28, 0
000988  5b010000  j 8
00098c  97159e01  or r11, r28, r25
000990  1786d700  and r12, r15, r13
000994  670acffa  storeli.w r12, -608(r30)
000998  1386c804  setlt.u r12, r17, r12
00099c  3b300600  bneq r12, zero, 12
0009a0  e74cfffa  storeli.w r15, -564(r30)
0009a4  db010000  j 12
0009a8  17969701  or r12, r15, r25
0009ac  e74ccffa  storeli.w r12, -564(r30)
0009b0  1786dd00  and r12, r27, r13
0009b4  674acffa  storeli.w r12, -604(r30)
0009b8  1386c804  setlt.u r12, r17, r12
0009bc  3b300600  bneq r12, zero, 12
0009c0  670dbffb  storeli.w r27, -560(r30)
0009c4  db010000  j 12
0009c8  17969d01  or r12, r27, r25
0009cc  670dcffa  storeli.w r12, -560(r30)
0009d0  1786da00  and r12, r21, r13
0009d4  1f8c0700  addli r24, r15, 0
0009d8  e70acffa  storeli.w r12, -600(r30)
0009dc  1386c804  setlt.u r12, r17, r12
0009e0  3b300600  bneq r12, zero, 12
0009e4  674d5ffb  storeli.w r21, -556(r30)
0009e8  db010000  j 12
0009ec  17969a01  or r12, r21, r25
0009f0  674dcffa  storeli.w r12, -556(r30)
0009f4  1706db00  and r12, r22, r13
0009f8  9f870d00  addli r15, r27, 0
0009fc  9f8d0a00  addli r27, r21, 0
000a00  e7096ffb  storeli.w r22, -616(r30)
000a04  e74acffa  storeli.w r12, -596(r30)
000a08  1386c804  setlt.u r12, r17, r12
000a0c  37200600  beq r12, zero, 8
000a10  171b9b01  or r22, r22, r25
000a14  e34a2ffd  loadli.w r21,  -364(r30)
000a18  1786da00  and r12, r21, r13
000a1c  670bcffa  storeli.w r12, -592(r30)
000a20  1386c804  setlt.u r12, r17, r12
000a24  3b400600  bneq r12, zero, 16
000a28  2b06807f  lui r12, 522240
000a2c  e70d5ffb  storeli.w r21, -552(r30)
000a30  5b020000  j 16
000a34  97989a01  or r17, r21, r25
000a38  2b06807f  lui r12, 522240
000a3c  e70d1ffb  storeli.w r17, -552(r30)
000a40  9788d900  and r17, r19, r13
000a44  9f8a0d00  addli r21, r27, 0
000a48  e7493ffb  storeli.w r19, -612(r30)
000a4c  13061605  setlt.u r12, r12, r17
000a50  37200600  beq r12, zero, 8
000a54  97999901  or r19, r19, r25
000a58  63467ffd  loadli.w r12,  -324(r30)
000a5c  9f8d0700  addli r27, r15, 0
000a60  9f070c00  addli r15, r24, 0
000a64  93013604  setlt.u r3, r12, r3
000a68  bb800100  bneq r3, zero, 32
000a6c  9b410401  srli r3, r8, 16
000a70  9b811100  andi r3, r3, 1
000a74  8b113410  add.s r3, r8, r3
000a78  2b04ffff  lui r8, 1048560
000a7c  8b91e110  add.s r3, r3, r14
000a80  97818100  and r3, r3, r8
000a84  e7093ffc  storeli.w r3, -360(r30)
000a88  93014604  setlt.u r3, r12, r4
000a8c  bb800100  bneq r3, zero, 32
000a90  9b410101  srli r3, r2, 16
000a94  9b811100  andi r3, r3, 1
000a98  0b113110  add.s r2, r2, r3
000a9c  ab01ffff  lui r3, 1048560
000aa0  0b11e110  add.s r2, r2, r14
000aa4  17013100  and r2, r2, r3
000aa8  670a2ffc  storeli.w r2, -352(r30)
000aac  13012605  setlt.u r2, r12, r18
000ab0  63048ffb  loadli.w r8,  -576(r30)
000ab4  63426ffb  loadli.w r4,  -588(r30)
000ab8  3b700100  bneq r2, zero, 28
000abc  1b410a01  srli r2, r20, 16
000ac0  ab01ffff  lui r3, 1048560
000ac4  1b011100  andi r2, r2, 1
000ac8  0b112a10  add.s r2, r20, r2
000acc  0b11e110  add.s r2, r2, r14
000ad0  17023100  and r4, r2, r3
000ad4  1301a604  setlt.u r2, r12, r10
000ad8  63097ffb  loadli.w r18,  -584(r30)
000adc  2b0affff  lui r20, 1048560
000ae0  3b700100  bneq r2, zero, 28
000ae4  1bc10201  srli r2, r5, 16
000ae8  1b011100  andi r2, r2, 1
000aec  0b912210  add.s r2, r5, r2
000af0  0b11e110  add.s r2, r2, r14
000af4  17014101  and r2, r2, r20
000af8  e70a2ffc  storeli.w r2, -344(r30)
000afc  13019604  setlt.u r2, r12, r9
000b00  63059ffb  loadli.w r10,  -568(r30)
000b04  3b600100  bneq r2, zero, 24
000b08  1bc10b01  srli r2, r23, 16
000b0c  1b011100  andi r2, r2, 1
000b10  0b912b10  add.s r2, r23, r2
000b14  0b11e110  add.s r2, r2, r14
000b18  17094101  and r18, r2, r20
000b1c  13017604  setlt.u r2, r12, r7
000b20  e3448ffb  loadli.w r9,  -572(r30)
000b24  e3437ffb  loadli.w r7,  -580(r30)
000b28  e3014ffd  loadli.w r3,  -352(r30)
000b2c  3b700100  bneq r2, zero, 28
000b30  e3021ffb  loadli.w r5,  -632(r30)
000b34  1bc10201  srli r2, r5, 16
000b38  1b011100  andi r2, r2, 1
000b3c  0b912210  add.s r2, r5, r2
000b40  0b11e110  add.s r2, r2, r14
000b44  97034101  and r7, r2, r20
000b48  13016604  setlt.u r2, r12, r6
000b4c  3b700100  bneq r2, zero, 28
000b50  e3421ffb  loadli.w r5,  -628(r30)
000b54  1bc10201  srli r2, r5, 16
000b58  1b011100  andi r2, r2, 1
000b5c  0b912210  add.s r2, r5, r2
000b60  0b11e110  add.s r2, r2, r14
000b64  17044101  and r8, r2, r20
000b68  93001604  setlt.u r1, r12, r1
000b6c  e34beffa  loadli.w r23,  -652(r30)
000b70  e3025ffd  loadli.w r5,  -344(r30)
000b74  3bf00000  bneq r1, zero, 28
000b78  63012ffb  loadli.w r2,  -624(r30)
000b7c  9b400101  srli r1, r2, 16
000b80  9b801000  andi r1, r1, 1
000b84  8b101110  add.s r1, r2, r1
000b88  8b90e010  add.s r1, r1, r14
000b8c  97844001  and r9, r1, r20
000b90  93000605  setlt.u r1, r12, r16
000b94  63013ffd  loadli.w r2,  -360(r30)
000b98  3bf00000  bneq r1, zero, 28
000b9c  63432ffb  loadli.w r6,  -620(r30)
000ba0  9b400301  srli r1, r6, 16
000ba4  9b801000  andi r1, r1, 1
000ba8  8b101310  add.s r1, r6, r1
000bac  8b90e010  add.s r1, r1, r14
000bb0  17854001  and r10, r1, r20
000bb4  9300a605  setlt.u r1, r12, r26
000bb8  6348affb  loadli.w r16,  -556(r30)
000bbc  3be00000  bneq r1, zero, 24
000bc0  9b400e01  srli r1, r28, 16
000bc4  9b801000  andi r1, r1, 1
000bc8  8b101e10  add.s r1, r28, r1
000bcc  8b90e010  add.s r1, r1, r14
000bd0  97854001  and r11, r1, r20
000bd4  e3004ffb  loadli.w r1,  -608(r30)
000bd8  634d9ffb  loadli.w r26,  -564(r30)
000bdc  93001604  setlt.u r1, r12, r1
000be0  3be00000  bneq r1, zero, 24
000be4  9bc00701  srli r1, r15, 16
000be8  9b801000  andi r1, r1, 1
000bec  8b901710  add.s r1, r15, r1
000bf0  8b90e010  add.s r1, r1, r14
000bf4  178d4001  and r26, r1, r20
000bf8  e3404ffb  loadli.w r1,  -604(r30)
000bfc  630caffb  loadli.w r24,  -560(r30)
000c00  93001604  setlt.u r1, r12, r1
000c04  3be00000  bneq r1, zero, 24
000c08  9bc00d01  srli r1, r27, 16
000c0c  9b801000  andi r1, r1, 1
000c10  8b901d10  add.s r1, r27, r1
000c14  8b90e010  add.s r1, r1, r14
000c18  178c4001  and r24, r1, r20
000c1c  e3005ffb  loadli.w r1,  -600(r30)
000c20  93001604  setlt.u r1, r12, r1
000c24  3be00000  bneq r1, zero, 24
000c28  9bc00a01  srli r1, r21, 16
000c2c  9b801000  andi r1, r1, 1
000c30  8b901a10  add.s r1, r21, r1
000c34  8b90e010  add.s r1, r1, r14
000c38  17884001  and r16, r1, r20
000c3c  e3405ffb  loadli.w r1,  -596(r30)
000c40  93001604  setlt.u r1, r12, r1
000c44  3bf00000  bneq r1, zero, 28
000c48  63033ffb  loadli.w r6,  -616(r30)
000c4c  9b400301  srli r1, r6, 16
000c50  9b801000  andi r1, r1, 1
000c54  8b101310  add.s r1, r6, r1
000c58  8b90e010  add.s r1, r1, r14
000c5c  178b4001  and r22, r1, r20
000c60  e3006ffb  loadli.w r1,  -592(r30)
000c64  e30abffb  loadli.w r21,  -552(r30)
000c68  93001604  setlt.u r1, r12, r1
000c6c  3bf00000  bneq r1, zero, 28
000c70  63432ffd  loadli.w r6,  -364(r30)
000c74  9b400301  srli r1, r6, 16
000c78  9b801000  andi r1, r1, 1
000c7c  8b101310  add.s r1, r6, r1
000c80  8b90e010  add.s r1, r1, r14
000c84  978a4001  and r21, r1, r20
000c88  93001605  setlt.u r1, r12, r17
000c8c  3bf00000  bneq r1, zero, 28
000c90  63433ffb  loadli.w r6,  -612(r30)
000c94  9b400301  srli r1, r6, 16
000c98  9b801000  andi r1, r1, 1
000c9c  8b101310  add.s r1, r6, r1
000ca0  8b90e010  add.s r1, r1, r14
000ca4  97894001  and r19, r1, r20
000ca8  9700d100  and r1, r2, r13
000cac  ab08807f  lui r17, 522240
000cb0  93801804  setlt.u r1, r17, r1
000cb4  3be00000  bneq r1, zero, 24
000cb8  9b400101  srli r1, r2, 16
000cbc  9b801000  andi r1, r1, 1
000cc0  8b101110  add.s r1, r2, r1
000cc4  8b90e010  add.s r1, r1, r14
000cc8  5b010000  j 8
000ccc  97109101  or r1, r2, r25
000cd0  1781d100  and r2, r3, r13
000cd4  13812804  setlt.u r2, r17, r2
000cd8  3b600100  bneq r2, zero, 24
000cdc  1bc10101  srli r2, r3, 16
000ce0  1b011100  andi r2, r2, 1
000ce4  0b912110  add.s r2, r3, r2
000ce8  0b11e110  add.s r2, r2, r14
000cec  5b010000  j 8
000cf0  17919101  or r2, r3, r25
000cf4  9701d200  and r3, r4, r13
000cf8  93813804  setlt.u r3, r17, r3
000cfc  3be00100  bneq r3, zero, 24
000d00  9b410201  srli r3, r4, 16
000d04  9b811100  andi r3, r3, 1
000d08  8b113210  add.s r3, r4, r3
000d0c  8b91e110  add.s r3, r3, r14
000d10  5b010000  j 8
000d14  97119201  or r3, r4, r25
000d18  1782d200  and r4, r5, r13
000d1c  13824804  setlt.u r4, r17, r4
000d20  3b600200  bneq r4, zero, 24
000d24  1bc20201  srli r4, r5, 16
000d28  1b021200  andi r4, r4, 1
000d2c  0b924210  add.s r4, r5, r4
000d30  0b12e210  add.s r4, r4, r14
000d34  5b010000  j 8
000d38  17929201  or r4, r5, r25
000d3c  9702d900  and r5, r18, r13
000d40  93825804  setlt.u r5, r17, r5
000d44  3be00200  bneq r5, zero, 24
000d48  9b420901  srli r5, r18, 16
000d4c  9b821200  andi r5, r5, 1
000d50  8b125910  add.s r5, r18, r5
000d54  8b92e210  add.s r5, r5, r14
000d58  5b010000  j 8
000d5c  97129901  or r5, r18, r25
000d60  1783d300  and r6, r7, r13
000d64  13836804  setlt.u r6, r17, r6
000d68  3b600300  bneq r6, zero, 24
000d6c  1bc30301  srli r6, r7, 16
000d70  1b031300  andi r6, r6, 1
000d74  0b936310  add.s r6, r7, r6
000d78  0b13e310  add.s r6, r6, r14
000d7c  5b010000  j 8
000d80  17939301  or r6, r7, r25
000d84  9703d400  and r7, r8, r13
000d88  93837804  setlt.u r7, r17, r7
000d8c  3be00300  bneq r7, zero, 24
000d90  9b430401  srli r7, r8, 16
000d94  9b831300  andi r7, r7, 1
000d98  8b137410  add.s r7, r8, r7
000d9c  8b93e310  add.s r7, r7, r14
000da0  5b010000  j 8
000da4  97139401  or r7, r8, r25
000da8  1784d400  and r8, r9, r13
000dac  13848804  setlt.u r8, r17, r8
000db0  3b600400  bneq r8, zero, 24
000db4  1bc40401  srli r8, r9, 16
000db8  1b041400  andi r8, r8, 1
000dbc  0b948410  add.s r8, r9, r8
000dc0  0b14e410  add.s r8, r8, r14
000dc4  5b010000  j 8
000dc8  17949401  or r8, r9, r25
000dcc  9704d500  and r9, r10, r13
000dd0  93849804  setlt.u r9, r17, r9
000dd4  3be00400  bneq r9, zero, 24
000dd8  9b440501  srli r9, r10, 16
000ddc  9b841400  andi r9, r9, 1
000de0  8b149510  add.s r9, r10, r9
000de4  0b95e410  add.s r10, r9, r14
000de8  5b010000  j 8
000dec  17159501  or r10, r10, r25
000df0  9784d500  and r9, r11, r13
000df4  93849804  setlt.u r9, r17, r9
000df8  3be00400  bneq r9, zero, 24
000dfc  9bc40501  srli r9, r11, 16
000e00  9b841400  andi r9, r9, 1
000e04  8b949510  add.s r9, r11, r9
000e08  8b95e410  add.s r11, r9, r14
000e0c  5b010000  j 8
000e10  97959501  or r11, r11, r25
000e14  9704dd00  and r9, r26, r13
000e18  93849804  setlt.u r9, r17, r9
000e1c  3be00400  bneq r9, zero, 24
000e20  9b440d01  srli r9, r26, 16
000e24  9b841400  andi r9, r9, 1
000e28  8b149d10  add.s r9, r26, r9
000e2c  8b97e410  add.s r15, r9, r14
000e30  5b010000  j 8
000e34  97179d01  or r15, r26, r25
000e38  9704dc00  and r9, r24, r13
000e3c  93849804  setlt.u r9, r17, r9
000e40  3be00400  bneq r9, zero, 24
000e44  9b440c01  srli r9, r24, 16
000e48  9b841400  andi r9, r9, 1
000e4c  8b149c10  add.s r9, r24, r9
000e50  0b96e410  add.s r12, r9, r14
000e54  5b010000  j 8
000e58  17169c01  or r12, r24, r25
000e5c  9704d800  and r9, r16, r13
000e60  93849804  setlt.u r9, r17, r9
000e64  3be00400  bneq r9, zero, 24
000e68  9b440801  srli r9, r16, 16
000e6c  9b841400  andi r9, r9, 1
000e70  8b149810  add.s r9, r16, r9
000e74  0b98e410  add.s r16, r9, r14
000e78  5b010000  j 8
000e7c  17189801  or r16, r16, r25
000e80  9704db00  and r9, r22, r13
000e84  93849804  setlt.u r9, r17, r9
000e88  3be00400  bneq r9, zero, 24
000e8c  9b440b01  srli r9, r22, 16
000e90  9b841400  andi r9, r9, 1
000e94  8b149b10  add.s r9, r22, r9
000e98  0b97e410  add.s r14, r9, r14
000e9c  5b010000  j 8
000ea0  17179b01  or r14, r22, r25
000ea4  9784da00  and r9, r21, r13
000ea8  2b09807f  lui r18, 522240
000eac  93849804  setlt.u r9, r17, r9
000eb0  3bf00400  bneq r9, zero, 28
000eb4  9bc40a01  srli r9, r21, 16
000eb8  e3087ffd  loadli.w r17,  -328(r30)
000ebc  9b841400  andi r9, r9, 1
000ec0  8b949a10  add.s r9, r21, r9
000ec4  8b981411  add.s r17, r9, r17
000ec8  5b010000  j 8
000ecc  97989a01  or r17, r21, r25
000ed0  9784d900  and r9, r19, r13
000ed4  93049904  setlt.u r9, r18, r9
000ed8  3bf00400  bneq r9, zero, 28
000edc  9bc40901  srli r9, r19, 16
000ee0  63097ffd  loadli.w r18,  -328(r30)
000ee4  9b841400  andi r9, r9, 1
000ee8  8b949910  add.s r9, r19, r9
000eec  0b992411  add.s r18, r9, r18
000ef0  5b010000  j 8
000ef4  17999901  or r18, r19, r25
000ef8  97044401  and r9, r8, r20
000efc  2b04ffff  lui r8, 1048560
000f00  97804001  and r1, r1, r20
000f04  17014101  and r2, r2, r20
000f08  97814101  and r3, r3, r20
000f0c  17024201  and r4, r4, r20
000f10  97824201  and r5, r5, r20
000f14  17034301  and r6, r6, r20
000f18  97834301  and r7, r7, r20
000f1c  17054501  and r10, r10, r20
000f20  97854501  and r11, r11, r20
000f24  970a8600  and r21, r12, r8
000f28  63466ffd  loadli.w r12,  -332(r30)
000f2c  178a8700  and r20, r15, r8
000f30  170e8800  and r28, r16, r8
000f34  170c8700  and r24, r14, r8
000f38  178d8800  and r26, r17, r8
000f3c  970d8900  and r27, r18, r8
000f40  1f040004  addli r8, zero, 512
000f44  3f308600  blt.s r12, r8, 12
000f48  1f040000  addli r8, zero, 0
000f4c  5b080000  j 64
000f50  0be42010  add.f.rn r8, r1, r2
000f54  0b643410  add.f.rn r8, r8, r3
000f58  0b644410  add.f.rn r8, r8, r4
000f5c  0b645410  add.f.rn r8, r8, r5
000f60  0b646410  add.f.rn r8, r8, r6
000f64  0b647410  add.f.rn r8, r8, r7
000f68  0b649410  add.f.rn r8, r8, r9
000f6c  0b64a410  add.f.rn r8, r8, r10
000f70  0b64b410  add.f.rn r8, r8, r11
000f74  0b644411  add.f.rn r8, r8, r20
000f78  0b645411  add.f.rn r8, r8, r21
000f7c  0b64c411  add.f.rn r8, r8, r28
000f80  0b648411  add.f.rn r8, r8, r24
000f84  0b64a411  add.f.rn r8, r8, r26
000f88  0b64b411  add.f.rn r8, r8, r27
000f8c  6346fffa  loadli.w r12,  -644(r30)
000f90  63077ffd  loadli.w r14,  -328(r30)
000f94  ab08807f  lui r17, 522240
000f98  73608600  stores.w r8, 0(r12)
000f9c  00a00300  mfence { lm, sm, gm }
000fa0  80a10b04  csr_set csr3, r23
000fa4  00d00100  sync_group
000fa8  63440ffd  loadli.w r8,  -380(r30)
000fac  3b380400  bneq r8, zero, 524
000fb0  63480ffb  loadli.w r16,  -636(r30)
000fb4  6f440800  loads.w r8, 0(r16)
000fb8  ef474800  loads.w r15, 4(r16)
000fbc  6f468800  loads.w r12, 8(r16)
000fc0  6f47c800  loads.w r14, 12(r16)
000fc4  0b64f410  add.f.rn r8, r8, r15
000fc8  0b64c410  add.f.rn r8, r8, r12
000fcc  6f460801  loads.w r12, 16(r16)
000fd0  0b64e410  add.f.rn r8, r8, r14
000fd4  6f474801  loads.w r14, 20(r16)
000fd8  0b64c410  add.f.rn r8, r8, r12
000fdc  6f468801  loads.w r12, 24(r16)
000fe0  0b64e410  add.f.rn r8, r8, r14
000fe4  6f47c801  loads.w r14, 28(r16)
000fe8  0b64c410  add.f.rn r8, r8, r12
000fec  6f460802  loads.w r12, 32(r16)
000ff0  0b64e410  add.f.rn r8, r8, r14
000ff4  6f474802  loads.w r14, 36(r16)
000ff8  0b64c410  add.f.rn r8, r8, r12
000ffc  6f468802  loads.w r12, 40(r16)
001000  0b64e410  add.f.rn r8, r8, r14
001004  6f47c802  loads.w r14, 44(r16)
001008  0b64c410  add.f.rn r8, r8, r12
00100c  6f460803  loads.w r12, 48(r16)
001010  0b64e410  add.f.rn r8, r8, r14
001014  6f474803  loads.w r14, 52(r16)
001018  0b64c410  add.f.rn r8, r8, r12
00101c  6f468803  loads.w r12, 56(r16)
001020  0b64e410  add.f.rn r8, r8, r14
001024  6f47c803  loads.w r14, 60(r16)
001028  0b64c410  add.f.rn r8, r8, r12
00102c  6f460804  loads.w r12, 64(r16)
001030  0b64e410  add.f.rn r8, r8, r14
001034  6f474804  loads.w r14, 68(r16)
001038  0b64c410  add.f.rn r8, r8, r12
00103c  6f468804  loads.w r12, 72(r16)
001040  0b64e410  add.f.rn r8, r8, r14
001044  6f47c804  loads.w r14, 76(r16)
001048  0b64c410  add.f.rn r8, r8, r12
00104c  6f460805  loads.w r12, 80(r16)
001050  0b64e410  add.f.rn r8, r8, r14
001054  6f474805  loads.w r14, 84(r16)
001058  0b64c410  add.f.rn r8, r8, r12
00105c  6f468805  loads.w r12, 88(r16)
001060  0b64e410  add.f.rn r8, r8, r14
001064  6f47c805  loads.w r14, 92(r16)
001068  0b64c410  add.f.rn r8, r8, r12
00106c  6f460806  loads.w r12, 96(r16)
001070  0b64e410  add.f.rn r8, r8, r14
001074  6f474806  loads.w r14, 100(r16)
001078  0b64c410  add.f.rn r8, r8, r12
00107c  6f468806  loads.w r12, 104(r16)
001080  0b64e410  add.f.rn r8, r8, r14
001084  6f47c806  loads.w r14, 108(r16)
001088  0b64c410  add.f.rn r8, r8, r12
00108c  6f460807  loads.w r12, 112(r16)
001090  0b64e410  add.f.rn r8, r8, r14
001094  6f474807  loads.w r14, 116(r16)
001098  0b64c410  add.f.rn r8, r8, r12
00109c  6f468807  loads.w r12, 120(r16)
0010a0  0b64e410  add.f.rn r8, r8, r14
0010a4  6f47c807  loads.w r14, 124(r16)
0010a8  0b64c410  add.f.rn r8, r8, r12
0010ac  6f460808  loads.w r12, 128(r16)
0010b0  0b64e410  add.f.rn r8, r8, r14
0010b4  6f474808  loads.w r14, 132(r16)
0010b8  0b64c410  add.f.rn r8, r8, r12
0010bc  6f468808  loads.w r12, 136(r16)
0010c0  0b64e410  add.f.rn r8, r8, r14
0010c4  6f47c808  loads.w r14, 140(r16)
0010c8  0b64c410  add.f.rn r8, r8, r12
0010cc  6f460809  loads.w r12, 144(r16)
0010d0  0b64e410  add.f.rn r8, r8, r14
0010d4  6f474809  loads.w r14, 148(r16)
0010d8  0b64c410  add.f.rn r8, r8, r12
0010dc  6f468809  loads.w r12, 152(r16)
0010e0  0b64e410  add.f.rn r8, r8, r14
0010e4  6f47c809  loads.w r14, 156(r16)
0010e8  0b64c410  add.f.rn r8, r8, r12
0010ec  6f46080a  loads.w r12, 160(r16)
0010f0  0b64e410  add.f.rn r8, r8, r14
0010f4  6f47480a  loads.w r14, 164(r16)
0010f8  0b64c410  add.f.rn r8, r8, r12
0010fc  6f46880a  loads.w r12, 168(r16)
001100  0b64e410  add.f.rn r8, r8, r14
001104  6f47c80a  loads.w r14, 172(r16)
001108  0b64c410  add.f.rn r8, r8, r12
00110c  6f46080b  loads.w r12, 176(r16)
001110  0b64e410  add.f.rn r8, r8, r14
001114  6f47480b  loads.w r14, 180(r16)
001118  0b64c410  add.f.rn r8, r8, r12
00111c  6f46880b  loads.w r12, 184(r16)
001120  0b64e410  add.f.rn r8, r8, r14
001124  6f47c80b  loads.w r14, 188(r16)
001128  0b64c410  add.f.rn r8, r8, r12
00112c  6f46080c  loads.w r12, 192(r16)
001130  0b64e410  add.f.rn r8, r8, r14
001134  6f47480c  loads.w r14, 196(r16)
001138  0b64c410  add.f.rn r8, r8, r12
00113c  6f46880c  loads.w r12, 200(r16)
001140  0b64e410  add.f.rn r8, r8, r14
001144  6f47c80c  loads.w r14, 204(r16)
001148  0b64c410  add.f.rn r8, r8, r12
00114c  6f46080d  loads.w r12, 208(r16)
001150  0b64e410  add.f.rn r8, r8, r14
001154  6f47480d  loads.w r14, 212(r16)
001158  0b64c410  add.f.rn r8, r8, r12
00115c  6f46880d  loads.w r12, 216(r16)
001160  0b64e410  add.f.rn r8, r8, r14
001164  6f47c80d  loads.w r14, 220(r16)
001168  0b64c410  add.f.rn r8, r8, r12
00116c  6f46080e  loads.w r12, 224(r16)
001170  0b64e410  add.f.rn r8, r8, r14
001174  6f47480e  loads.w r14, 228(r16)
001178  0b64c410  add.f.rn r8, r8, r12
00117c  6f46880e  loads.w r12, 232(r16)
001180  0b64e410  add.f.rn r8, r8, r14
001184  6f47c80e  loads.w r14, 236(r16)
001188  0b64c410  add.f.rn r8, r8, r12
00118c  6f46080f  loads.w r12, 240(r16)
001190  0b64e410  add.f.rn r8, r8, r14
001194  6f47480f  loads.w r14, 244(r16)
001198  0b64c410  add.f.rn r8, r8, r12
00119c  6f46880f  loads.w r12, 248(r16)
0011a0  0b64e410  add.f.rn r8, r8, r14
0011a4  6f47c80f  loads.w r14, 252(r16)
0011a8  0b64c410  add.f.rn r8, r8, r12
0011ac  0b64e410  add.f.rn r8, r8, r14
0011b0  63077ffd  loadli.w r14,  -328(r30)
0011b4  73608800  stores.w r8, 0(r16)
0011b8  1f840b00  addli r8, r23, 0
0011bc  00a00300  mfence { lm, sm, gm }
0011c0  2b06803a  lui r12, 239616
0011c4  80210404  csr_set csr3, r8
0011c8  00d00100  sync_group
0011cc  63440ffb  loadli.w r8,  -636(r30)
0011d0  6f440400  loads.w r8, 0(r8)
0011d4  0b64c420  mul.f.rn r8, r8, r12
0011d8  0be88018  sub.f.rn r16, r1, r8
0011dc  0b698118  sub.f.rn r18, r2, r8
0011e0  0be18118  sub.f.rn r2, r3, r8
0011e4  8b698218  sub.f.rn r19, r4, r8
0011e8  8be78218  sub.f.rn r15, r5, r8
0011ec  0b668318  sub.f.rn r12, r6, r8
0011f0  8be28318  sub.f.rn r5, r7, r8
0011f4  0be28418  sub.f.rn r4, r9, r8
0011f8  0b6b8518  sub.f.rn r22, r10, r8
0011fc  0be58518  sub.f.rn r10, r11, r8
001200  8b638a18  sub.f.rn r7, r20, r8
001204  0be38d18  sub.f.rn r6, r27, r8
001208  0bea8a18  sub.f.rn r20, r21, r8
00120c  0b6e8e18  sub.f.rn r28, r28, r8
001210  8b658c18  sub.f.rn r11, r24, r8
001214  8b648d18  sub.f.rn r9, r26, r8
001218  e3416ffd  loadli.w r3,  -332(r30)
00121c  9f000004  addli r1, zero, 512
001220  e70d6ffa  storeli.w r6, -552(r30)
001224  3fb01100  blt.s r3, r1, 12
001228  9f000000  addli r1, zero, 0
00122c  5b100000  j 128
001230  8b600821  mul.f.rn r1, r16, r16
001234  8b612921  mul.f.rn r3, r18, r18
001238  8be03010  add.f.rn r1, r1, r3
00123c  8b612120  mul.f.rn r3, r2, r2
001240  8be01110  add.f.rn r1, r3, r1
001244  8be13921  mul.f.rn r3, r19, r19
001248  8be01110  add.f.rn r1, r3, r1
00124c  8be1f720  mul.f.rn r3, r15, r15
001250  8be01110  add.f.rn r1, r3, r1
001254  8b61c620  mul.f.rn r3, r12, r12
001258  8be01110  add.f.rn r1, r3, r1
00125c  8be15220  mul.f.rn r3, r5, r5
001260  8be01110  add.f.rn r1, r3, r1
001264  8b614220  mul.f.rn r3, r4, r4
001268  8be01110  add.f.rn r1, r3, r1
00126c  8b616b21  mul.f.rn r3, r22, r22
001270  8be01110  add.f.rn r1, r3, r1
001274  8b61a520  mul.f.rn r3, r10, r10
001278  8be01110  add.f.rn r1, r3, r1
00127c  8be17320  mul.f.rn r3, r7, r7
001280  8be01110  add.f.rn r1, r3, r1
001284  8b614a21  mul.f.rn r3, r20, r20
001288  8be01110  add.f.rn r1, r3, r1
00128c  8b61ce21  mul.f.rn r3, r28, r28
001290  8be01110  add.f.rn r1, r3, r1
001294  8be1b520  mul.f.rn r3, r11, r11
001298  8be01110  add.f.rn r1, r3, r1
00129c  8be19420  mul.f.rn r3, r9, r9
0012a0  8be01110  add.f.rn r1, r3, r1
0012a4  8b616320  mul.f.rn r3, r6, r6
0012a8  8be01110  add.f.rn r1, r3, r1
0012ac  e341dffa  loadli.w r3,  -660(r30)
0012b0  1f840300  addli r8, r7, 0
0012b4  73e01100  stores.w r1, 0(r3)
0012b8  00a00300  mfence { lm, sm, gm }
0012bc  80a10b04  csr_set csr3, r23
0012c0  00d00100  sync_group
0012c4  e3400ffd  loadli.w r1,  -380(r30)
0012c8  3ba80000  bneq r1, zero, 520
0012cc  e3030ffb  loadli.w r7,  -640(r30)
0012d0  efc00300  loads.w r1, 0(r7)
0012d4  6fc34300  loads.w r6, 4(r7)
0012d8  efc18300  loads.w r3, 8(r7)
0012dc  8be06010  add.f.rn r1, r1, r6
0012e0  6fc3c300  loads.w r6, 12(r7)
0012e4  8be03010  add.f.rn r1, r1, r3
0012e8  efc10301  loads.w r3, 16(r7)
0012ec  8be06010  add.f.rn r1, r1, r6
0012f0  6fc34301  loads.w r6, 20(r7)
0012f4  8be03010  add.f.rn r1, r1, r3
0012f8  efc18301  loads.w r3, 24(r7)
0012fc  8be06010  add.f.rn r1, r1, r6
001300  6fc3c301  loads.w r6, 28(r7)
001304  8be03010  add.f.rn r1, r1, r3
001308  efc10302  loads.w r3, 32(r7)
00130c  8be06010  add.f.rn r1, r1, r6
001310  6fc34302  loads.w r6, 36(r7)
001314  8be03010  add.f.rn r1, r1, r3
001318  efc18302  loads.w r3, 40(r7)
00131c  8be06010  add.f.rn r1, r1, r6
001320  6fc3c302  loads.w r6, 44(r7)
001324  8be03010  add.f.rn r1, r1, r3
001328  efc10303  loads.w r3, 48(r7)
00132c  8be06010  add.f.rn r1, r1, r6
001330  6fc34303  loads.w r6, 52(r7)
001334  8be03010  add.f.rn r1, r1, r3
001338  efc18303  loads.w r3, 56(r7)
00133c  8be06010  add.f.rn r1, r1, r6
001340  6fc3c303  loads.w r6, 60(r7)
001344  8be03010  add.f.rn r1, r1, r3
001348  efc10304  loads.w r3, 64(r7)
00134c  8be06010  add.f.rn r1, r1, r6
001350  6fc34304  loads.w r6, 68(r7)
001354  8be03010  add.f.rn r1, r1, r3
001358  efc18304  loads.w r3, 72(r7)
00135c  8be06010  add.f.rn r1, r1, r6
001360  6fc3c304  loads.w r6, 76(r7)
001364  8be03010  add.f.rn r1, r1, r3
001368  efc10305  loads.w r3, 80(r7)
00136c  8be06010  add.f.rn r1, r1, r6
001370  6fc34305  loads.w r6, 84(r7)
001374  8be03010  add.f.rn r1, r1, r3
001378  efc18305  loads.w r3, 88(r7)
00137c  8be06010  add.f.rn r1, r1, r6
001380  6fc3c305  loads.w r6, 92(r7)
001384  8be03010  add.f.rn r1, r1, r3
001388  efc10306  loads.w r3, 96(r7)
00138c  8be06010  add.f.rn r1, r1, r6
001390  6fc34306  loads.w r6, 100(r7)
001394  8be03010  add.f.rn r1, r1, r3
001398  efc18306  loads.w r3, 104(r7)
00139c  8be06010  add.f.rn r1, r1, r6
0013a0  6fc3c306  loads.w r6, 108(r7)
0013a4  8be03010  add.f.rn r1, r1, r3
0013a8  efc10307  loads.w r3, 112(r7)
0013ac  8be06010  add.f.rn r1, r1, r6
0013b0  6fc34307  loads.w r6, 116(r7)
0013b4  8be03010  add.f.rn r1, r1, r3
0013b8  efc18307  loads.w r3, 120(r7)
0013bc  8be06010  add.f.rn r1, r1, r6
0013c0  6fc3c307  loads.w r6, 124(r7)
0013c4  8be03010  add.f.rn r1, r1, r3
0013c8  efc10308  loads.w r3, 128(r7)
0013cc  8be06010  add.f.rn r1, r1, r6
0013d0  6fc34308  loads.w r6, 132(r7)
0013d4  8be03010  add.f.rn r1, r1, r3
0013d8  efc18308  loads.w r3, 136(r7)
0013dc  8be06010  add.f.rn r1, r1, r6
0013e0  6fc3c308  loads.w r6, 140(r7)
0013e4  8be03010  add.f.rn r1, r1, r3
0013e8  efc10309  loads.w r3, 144(r7)
0013ec  8be06010  add.f.rn r1, r1, r6
0013f0  6fc34309  loads.w r6, 148(r7)
0013f4  8be03010  add.f.rn r1, r1, r3
0013f8  efc18309  loads.w r3, 152(r7)
0013fc  8be06010  add.f.rn r1, r1, r6
001400  6fc3c309  loads.w r6, 156(r7)
001404  8be03010  add.f.rn r1, r1, r3
001408  efc1030a  loads.w r3, 160(r7)
00140c  8be06010  add.f.rn r1, r1, r6
001410  6fc3430a  loads.w r6, 164(r7)
001414  8be03010  add.f.rn r1, r1, r3
001418  efc1830a  loads.w r3, 168(r7)
00141c  8be06010  add.f.rn r1, r1, r6
001420  6fc3c30a  loads.w r6, 172(r7)
001424  8be03010  add.f.rn r1, r1, r3
001428  efc1030b  loads.w r3, 176(r7)
00142c  8be06010  add.f.rn r1, r1, r6
001430  6fc3430b  loads.w r6, 180(r7)
001434  8be03010  add.f.rn r1, r1, r3
001438  efc1830b  loads.w r3, 184(r7)
00143c  8be06010  add.f.rn r1, r1, r6
001440  6fc3c30b  loads.w r6, 188(r7)
001444  8be03010  add.f.rn r1, r1, r3
001448  efc1030c  loads.w r3, 192(r7)
00144c  8be06010  add.f.rn r1, r1, r6
001450  6fc3430c  loads.w r6, 196(r7)
001454  8be03010  add.f.rn r1, r1, r3
001458  efc1830c  loads.w r3, 200(r7)
00145c  8be06010  add.f.rn r1, r1, r6
001460  6fc3c30c  loads.w r6, 204(r7)
001464  8be03010  add.f.rn r1, r1, r3
001468  efc1030d  loads.w r3, 208(r7)
00146c  8be06010  add.f.rn r1, r1, r6
001470  6fc3430d  loads.w r6, 212(r7)
001474  8be03010  add.f.rn r1, r1, r3
001478  efc1830d  loads.w r3, 216(r7)
00147c  8be06010  add.f.rn r1, r1, r6
001480  6fc3c30d  loads.w r6, 220(r7)
001484  8be03010  add.f.rn r1, r1, r3
001488  efc1030e  loads.w r3, 224(r7)
00148c  8be06010  add.f.rn r1, r1, r6
001490  6fc3430e  loads.w r6, 228(r7)
001494  8be03010  add.f.rn r1, r1, r3
001498  efc1830e  loads.w r3, 232(r7)
00149c  8be06010  add.f.rn r1, r1, r6
0014a0  6fc3c30e  loads.w r6, 236(r7)
0014a4  8be03010  add.f.rn r1, r1, r3
0014a8  efc1030f  loads.w r3, 240(r7)
0014ac  8be06010  add.f.rn r1, r1, r6
0014b0  6fc3430f  loads.w r6, 244(r7)
0014b4  8be03010  add.f.rn r1, r1, r3
0014b8  efc1830f  loads.w r3, 248(r7)
0014bc  8be06010  add.f.rn r1, r1, r6
0014c0  6fc3c30f  loads.w r6, 252(r7)
0014c4  8be03010  add.f.rn r1, r1, r3
0014c8  8be06010  add.f.rn r1, r1, r6
0014cc  73e01300  stores.w r1, 0(r7)
0014d0  00a00300  mfence { lm, sm, gm }
0014d4  80a10b04  csr_set csr3, r23
0014d8  00d00100  sync_group
0014dc  e3000ffb  loadli.w r1,  -640(r30)
0014e0  ab01803a  lui r3, 239616
0014e4  63031ffd  loadli.w r6,  -376(r30)
0014e8  efc00000  loads.w r1, 0(r1)
0014ec  33130318  bfloat2float.rn r6, r6
0014f0  8be03020  mul.f.rn r1, r1, r3
0014f4  e3411ffa  loadli.w r3,  -756(r30)
0014f8  8be03010  add.f.rn r1, r1, r3
0014fc  ab01803f  lui r3, 260096
001500  8f800008  sqrt.f.rn r1, r1
001504  8f801118  div.f.rn r1, r3, r1
001508  8b611820  mul.f.rn r3, r16, r1
00150c  8be16120  mul.f.rn r3, r3, r6
001510  6343bffb  loadli.w r6,  -548(r30)
001514  33130318  bfloat2float.rn r6, r6
001518  8bea6110  add.f.rn r21, r3, r6
00151c  9781da00  and r3, r21, r13
001520  e74d3ffa  storeli.w r3, -548(r30)
001524  93813804  setlt.u r3, r17, r3
001528  3bb00100  bneq r3, zero, 12
00152c  e7085ffd  storeli.w r21, -376(r30)
001530  db010000  j 12
001534  97919a01  or r3, r21, r25
001538  e7083ffc  storeli.w r3, -376(r30)
00153c  8b611920  mul.f.rn r3, r18, r1
001540  6343cffb  loadli.w r6,  -540(r30)
001544  33130318  bfloat2float.rn r6, r6
001548  8be16120  mul.f.rn r3, r3, r6
00154c  6303cffb  loadli.w r6,  -544(r30)
001550  33130318  bfloat2float.rn r6, r6
001554  0be96110  add.f.rn r18, r3, r6
001558  9701d900  and r3, r18, r13
00155c  674e3ffa  storeli.w r3, -540(r30)
001560  93813804  setlt.u r3, r17, r3
001564  3bb00100  bneq r3, zero, 12
001568  67492ffd  storeli.w r18, -364(r30)
00156c  db010000  j 12
001570  97119901  or r3, r18, r25
001574  67493ffc  storeli.w r3, -364(r30)
001578  0b611120  mul.f.rn r2, r2, r1
00157c  e341dffb  loadli.w r3,  -532(r30)
001580  b3910118  bfloat2float.rn r3, r3
001584  0b613120  mul.f.rn r2, r2, r3
001588  e301dffb  loadli.w r3,  -536(r30)
00158c  b3910118  bfloat2float.rn r3, r3
001590  0b6d3110  add.f.rn r26, r2, r3
001594  1701dd00  and r2, r26, r13
001598  e74e2ffa  storeli.w r2, -532(r30)
00159c  13812804  setlt.u r2, r17, r2
0015a0  3b300100  bneq r2, zero, 12
0015a4  9f030d00  addli r7, r26, 0
0015a8  5b010000  j 8
0015ac  97139d01  or r7, r26, r25
0015b0  0be11920  mul.f.rn r2, r19, r1
0015b4  e341effb  loadli.w r3,  -524(r30)
0015b8  b3910118  bfloat2float.rn r3, r3
0015bc  0b613120  mul.f.rn r2, r2, r3
0015c0  e301effb  loadli.w r3,  -528(r30)
0015c4  b3910118  bfloat2float.rn r3, r3
0015c8  8b6d3110  add.f.rn r27, r2, r3
0015cc  1781dd00  and r2, r27, r13
0015d0  674f2ffa  storeli.w r2, -524(r30)
0015d4  13812804  setlt.u r2, r17, r2
0015d8  3b300100  bneq r2, zero, 12
0015dc  1f830d00  addli r6, r27, 0
0015e0  5b010000  j 8
0015e4  17939d01  or r6, r27, r25
0015e8  0be11720  mul.f.rn r2, r15, r1
0015ec  e341fffb  loadli.w r3,  -516(r30)
0015f0  b3910118  bfloat2float.rn r3, r3
0015f4  0b613120  mul.f.rn r2, r2, r3
0015f8  e301fffb  loadli.w r3,  -520(r30)
0015fc  b3910118  bfloat2float.rn r3, r3
001600  0b683110  add.f.rn r16, r2, r3
001604  1701d800  and r2, r16, r13
001608  e74f2ffa  storeli.w r2, -516(r30)
00160c  13812804  setlt.u r2, r17, r2
001610  3b300100  bneq r2, zero, 12
001614  e70a0ffd  storeli.w r16, -344(r30)
001618  db010000  j 12
00161c  17119801  or r2, r16, r25
001620  e70a2ffc  storeli.w r2, -344(r30)
001624  0b611620  mul.f.rn r2, r12, r1
001628  e3410ffc  loadli.w r3,  -508(r30)
00162c  b3910118  bfloat2float.rn r3, r3
001630  0b613120  mul.f.rn r2, r2, r3
001634  e3010ffc  loadli.w r3,  -512(r30)
001638  b3910118  bfloat2float.rn r3, r3
00163c  8b6b3110  add.f.rn r23, r2, r3
001640  1781db00  and r2, r23, r13
001644  67002ffc  storeli.w r2, -512(r30)
001648  13812804  setlt.u r2, r17, r2
00164c  3b300100  bneq r2, zero, 12
001650  67407ffd  storeli.w r23, -508(r30)
001654  db010000  j 12
001658  17919b01  or r2, r23, r25
00165c  67402ffc  storeli.w r2, -508(r30)
001660  0be11220  mul.f.rn r2, r5, r1
001664  e3411ffc  loadli.w r3,  -500(r30)
001668  b3910118  bfloat2float.rn r3, r3
00166c  0b613120  mul.f.rn r2, r2, r3
001670  e3011ffc  loadli.w r3,  -504(r30)
001674  b3910118  bfloat2float.rn r3, r3
001678  8b623110  add.f.rn r5, r2, r3
00167c  1781d200  and r2, r5, r13
001680  e7002ffc  storeli.w r2, -504(r30)
001684  13812804  setlt.u r2, r17, r2
001688  3b300100  bneq r2, zero, 12
00168c  e7405ffc  storeli.w r5, -500(r30)
001690  db010000  j 12
001694  17919201  or r2, r5, r25
001698  e7402ffc  storeli.w r2, -500(r30)
00169c  0b611220  mul.f.rn r2, r4, r1
0016a0  e3412ffc  loadli.w r3,  -492(r30)
0016a4  9f070500  addli r15, r10, 0
0016a8  b3910118  bfloat2float.rn r3, r3
0016ac  0b613120  mul.f.rn r2, r2, r3
0016b0  e3012ffc  loadli.w r3,  -496(r30)
0016b4  b3910118  bfloat2float.rn r3, r3
0016b8  0b623110  add.f.rn r4, r2, r3
0016bc  1701d200  and r2, r4, r13
0016c0  67012ffc  storeli.w r2, -496(r30)
0016c4  13812804  setlt.u r2, r17, r2
0016c8  3b300100  bneq r2, zero, 12
0016cc  67414ffc  storeli.w r4, -492(r30)
0016d0  db010000  j 12
0016d4  17119201  or r2, r4, r25
0016d8  67412ffc  storeli.w r2, -492(r30)
0016dc  0b611b20  mul.f.rn r2, r22, r1
0016e0  e3413ffc  loadli.w r3,  -484(r30)
0016e4  670a6ffc  storeli.w r6, -352(r30)
0016e8  b3910118  bfloat2float.rn r3, r3
0016ec  0b613120  mul.f.rn r2, r2, r3
0016f0  e3013ffc  loadli.w r3,  -488(r30)
0016f4  b3910118  bfloat2float.rn r3, r3
0016f8  0b653110  add.f.rn r10, r2, r3
0016fc  1701d500  and r2, r10, r13
001700  93812804  setlt.u r3, r17, r2
001704  e7012ffc  storeli.w r2, -488(r30)
001708  3bb00100  bneq r3, zero, 12
00170c  e741affc  storeli.w r10, -484(r30)
001710  db010000  j 12
001714  97119501  or r3, r10, r25
001718  e7413ffc  storeli.w r3, -484(r30)
00171c  8be11720  mul.f.rn r3, r15, r1
001720  63035ffc  loadli.w r6,  -472(r30)
001724  e7097ffc  storeli.w r7, -360(r30)
001728  33130318  bfloat2float.rn r6, r6
00172c  8be16120  mul.f.rn r3, r3, r6
001730  63034ffc  loadli.w r6,  -480(r30)
001734  33130318  bfloat2float.rn r6, r6
001738  8be16110  add.f.rn r3, r3, r6
00173c  1781d100  and r2, r3, r13
001740  13832804  setlt.u r6, r17, r2
001744  67022ffc  storeli.w r2, -480(r30)
001748  3b300300  bneq r6, zero, 12
00174c  e7023ffc  storeli.w r3, -472(r30)
001750  db010000  j 12
001754  17939101  or r6, r3, r25
001758  e7026ffc  storeli.w r6, -472(r30)
00175c  0b631420  mul.f.rn r6, r8, r1
001760  e3036ffc  loadli.w r7,  -464(r30)
001764  b3930318  bfloat2float.rn r7, r7
001768  0b637320  mul.f.rn r6, r6, r7
00176c  e3434ffc  loadli.w r7,  -476(r30)
001770  b3930318  bfloat2float.rn r7, r7
001774  0b6b7310  add.f.rn r22, r6, r7
001778  1701db00  and r2, r22, r13
00177c  13832804  setlt.u r6, r17, r2
001780  67422ffc  storeli.w r2, -476(r30)
001784  3b300300  bneq r6, zero, 12
001788  67036ffd  storeli.w r22, -464(r30)
00178c  db010000  j 12
001790  17139b01  or r6, r22, r25
001794  67036ffc  storeli.w r6, -464(r30)
001798  0b631a20  mul.f.rn r6, r20, r1
00179c  e3037ffc  loadli.w r7,  -456(r30)
0017a0  9f870400  addli r15, r9, 0
0017a4  b3930318  bfloat2float.rn r7, r7
0017a8  0b637320  mul.f.rn r6, r6, r7
0017ac  e3435ffc  loadli.w r7,  -468(r30)
0017b0  b3930318  bfloat2float.rn r7, r7
0017b4  0b6c7310  add.f.rn r24, r6, r7
0017b8  1704dc00  and r8, r24, r13
0017bc  13838804  setlt.u r6, r17, r8
0017c0  3b300300  bneq r6, zero, 12
0017c4  e7038ffd  storeli.w r24, -456(r30)
0017c8  db010000  j 12
0017cc  17139c01  or r6, r24, r25
0017d0  e7036ffc  storeli.w r6, -456(r30)
0017d4  0b631e20  mul.f.rn r6, r28, r1
0017d8  e3038ffc  loadli.w r7,  -448(r30)
0017dc  2b06807f  lui r12, 522240
0017e0  b3930318  bfloat2float.rn r7, r7
0017e4  0b637320  mul.f.rn r6, r6, r7
0017e8  e3436ffc  loadli.w r7,  -460(r30)
0017ec  b3930318  bfloat2float.rn r7, r7
0017f0  0b637310  add.f.rn r6, r6, r7
0017f4  9704d300  and r9, r6, r13
0017f8  93839804  setlt.u r7, r17, r9
0017fc  3bb00300  bneq r7, zero, 12
001800  67046ffc  storeli.w r6, -448(r30)
001804  db010000  j 12
001808  97139301  or r7, r6, r25
00180c  67047ffc  storeli.w r7, -448(r30)
001810  8be31520  mul.f.rn r7, r11, r1
001814  e305affc  loadli.w r11,  -432(r30)
001818  b3950518  bfloat2float.rn r11, r11
00181c  8be3b320  mul.f.rn r7, r7, r11
001820  e3457ffc  loadli.w r11,  -452(r30)
001824  b3950518  bfloat2float.rn r11, r11
001828  8be8b310  add.f.rn r17, r7, r11
00182c  178ed800  and r28, r17, r13
001830  9303c605  setlt.u r7, r12, r28
001834  3bb00300  bneq r7, zero, 12
001838  1f8a0800  addli r20, r17, 0
00183c  5b010000  j 8
001840  179a9801  or r20, r17, r25
001844  8be31720  mul.f.rn r7, r15, r1
001848  e305cffc  loadli.w r11,  -416(r30)
00184c  b3950518  bfloat2float.rn r11, r11
001850  8be3b320  mul.f.rn r7, r7, r11
001854  e3059ffc  loadli.w r11,  -440(r30)
001858  b3950518  bfloat2float.rn r11, r11
00185c  8be5b310  add.f.rn r11, r7, r11
001860  9787d500  and r15, r11, r13
001864  9303f604  setlt.u r7, r12, r15
001868  3bb00300  bneq r7, zero, 12
00186c  9f890500  addli r19, r11, 0
001870  5b010000  j 8
001874  97999501  or r19, r11, r25
001878  e303bffb  loadli.w r7,  -552(r30)
00187c  8be01320  mul.f.rn r1, r7, r1
001880  e303dffc  loadli.w r7,  -408(r30)
001884  b3930318  bfloat2float.rn r7, r7
001888  8be07020  mul.f.rn r1, r1, r7
00188c  e303bffc  loadli.w r7,  -424(r30)
001890  b3930318  bfloat2float.rn r7, r7
001894  8be07010  add.f.rn r1, r1, r7
001898  9783d000  and r7, r1, r13
00189c  13067604  setlt.u r12, r12, r7
0018a0  3b300600  bneq r12, zero, 12
0018a4  674b1ffc  storeli.w r1, -332(r30)
0018a8  db010000  j 12
0018ac  17969001  or r12, r1, r25
0018b0  674bcffc  storeli.w r12, -332(r30)
0018b4  63467ffd  loadli.w r12,  -324(r30)
0018b8  6341bffb  loadli.w r2,  -548(r30)
0018bc  13062604  setlt.u r12, r12, r2
0018c0  bb000600  bneq r12, zero, 32
0018c4  1bc60a01  srli r12, r21, 16
0018c8  1b061600  andi r12, r12, 1
0018cc  0b96ca10  add.s r12, r21, r12
0018d0  ab0affff  lui r21, 1048560
0018d4  0b16e610  add.s r12, r12, r14
0018d8  17065601  and r12, r12, r21
0018dc  e708cffc  storeli.w r12, -376(r30)
0018e0  63467ffd  loadli.w r12,  -324(r30)
0018e4  6341cffb  loadli.w r2,  -540(r30)
0018e8  13062604  setlt.u r12, r12, r2
0018ec  bb000600  bneq r12, zero, 32
0018f0  1b460901  srli r12, r18, 16
0018f4  1b061600  andi r12, r12, 1
0018f8  0b16c910  add.s r12, r18, r12
0018fc  2b09ffff  lui r18, 1048560
001900  0b16e610  add.s r12, r12, r14
001904  17062601  and r12, r12, r18
001908  6749cffc  storeli.w r12, -364(r30)
00190c  63467ffd  loadli.w r12,  -324(r30)
001910  6341dffb  loadli.w r2,  -532(r30)
001914  e34a3ffc  loadli.w r21,  -484(r30)
001918  13062604  setlt.u r12, r12, r2
00191c  bb000600  bneq r12, zero, 32
001920  1b460d01  srli r12, r26, 16
001924  2b09ffff  lui r18, 1048560
001928  1b061600  andi r12, r12, 1
00192c  0b16cd10  add.s r12, r26, r12
001930  0b16e610  add.s r12, r12, r14
001934  17062601  and r12, r12, r18
001938  e709cffc  storeli.w r12, -360(r30)
00193c  63467ffd  loadli.w r12,  -324(r30)
001940  6341effb  loadli.w r2,  -524(r30)
001944  13062604  setlt.u r12, r12, r2
001948  bb000600  bneq r12, zero, 32
00194c  1bc60d01  srli r12, r27, 16
001950  2b09ffff  lui r18, 1048560
001954  1b061600  andi r12, r12, 1
001958  0b96cd10  add.s r12, r27, r12
00195c  0b16e610  add.s r12, r12, r14
001960  17062601  and r12, r12, r18
001964  670acffc  storeli.w r12, -352(r30)
001968  63467ffd  loadli.w r12,  -324(r30)
00196c  6341fffb  loadli.w r2,  -516(r30)
001970  634d1ffc  loadli.w r26,  -500(r30)
001974  2b09ffff  lui r18, 1048560
001978  13062604  setlt.u r12, r12, r2
00197c  3b700600  bneq r12, zero, 28
001980  1b460801  srli r12, r16, 16
001984  1b061600  andi r12, r12, 1
001988  0b16c810  add.s r12, r16, r12
00198c  0b16e610  add.s r12, r12, r14
001990  17062601  and r12, r12, r18
001994  e70acffc  storeli.w r12, -344(r30)
001998  63467ffd  loadli.w r12,  -324(r30)
00199c  63010ffc  loadli.w r2,  -512(r30)
0019a0  e34d0ffc  loadli.w r27,  -508(r30)
0019a4  13062604  setlt.u r12, r12, r2
0019a8  3b600600  bneq r12, zero, 24
0019ac  1bc60b01  srli r12, r23, 16
0019b0  1b061600  andi r12, r12, 1
0019b4  0b96cb10  add.s r12, r23, r12
0019b8  0b16e610  add.s r12, r12, r14
0019bc  970d2601  and r27, r12, r18
0019c0  63467ffd  loadli.w r12,  -324(r30)
0019c4  63011ffc  loadli.w r2,  -504(r30)
0019c8  63085ffc  loadli.w r16,  -472(r30)
0019cc  13062604  setlt.u r12, r12, r2
0019d0  3b600600  bneq r12, zero, 24
0019d4  1bc60201  srli r12, r5, 16
0019d8  1b061600  andi r12, r12, 1
0019dc  8b92c210  add.s r5, r5, r12
0019e0  8b92e210  add.s r5, r5, r14
0019e4  178d2201  and r26, r5, r18
0019e8  63467ffd  loadli.w r12,  -324(r30)
0019ec  63012ffc  loadli.w r2,  -496(r30)
0019f0  e34b2ffc  loadli.w r23,  -492(r30)
0019f4  93022604  setlt.u r5, r12, r2
0019f8  3be00200  bneq r5, zero, 24
0019fc  9b420201  srli r5, r4, 16
001a00  9b821200  andi r5, r5, 1
001a04  0b125210  add.s r4, r4, r5
001a08  0b12e210  add.s r4, r4, r14
001a0c  970b2201  and r23, r4, r18
001a10  63013ffc  loadli.w r2,  -488(r30)
001a14  13012604  setlt.u r2, r12, r2
001a18  3b600100  bneq r2, zero, 24
001a1c  1b410501  srli r2, r10, 16
001a20  1b011100  andi r2, r2, 1
001a24  0b112510  add.s r2, r10, r2
001a28  0b11e110  add.s r2, r2, r14
001a2c  970a2101  and r21, r2, r18
001a30  63014ffc  loadli.w r2,  -480(r30)
001a34  e3028ffc  loadli.w r5,  -448(r30)
001a38  13012604  setlt.u r2, r12, r2
001a3c  3b600100  bneq r2, zero, 24
001a40  1bc10101  srli r2, r3, 16
001a44  1b011100  andi r2, r2, 1
001a48  0b912110  add.s r2, r3, r2
001a4c  0b11e110  add.s r2, r2, r14
001a50  17082101  and r16, r2, r18
001a54  63414ffc  loadli.w r2,  -476(r30)
001a58  63056ffc  loadli.w r10,  -464(r30)
001a5c  13012604  setlt.u r2, r12, r2
001a60  3b600100  bneq r2, zero, 24
001a64  1b410b01  srli r2, r22, 16
001a68  1b011100  andi r2, r2, 1
001a6c  0b112b10  add.s r2, r22, r2
001a70  0b11e110  add.s r2, r2, r14
001a74  17052101  and r10, r2, r18
001a78  13018604  setlt.u r2, r12, r8
001a7c  63047ffc  loadli.w r8,  -456(r30)
001a80  3b600100  bneq r2, zero, 24
001a84  1b410c01  srli r2, r24, 16
001a88  1b011100  andi r2, r2, 1
001a8c  0b112c10  add.s r2, r24, r2
001a90  0b11e110  add.s r2, r2, r14
001a94  17042101  and r8, r2, r18
001a98  13019604  setlt.u r2, r12, r9
001a9c  3b600100  bneq r2, zero, 24
001aa0  1b410301  srli r2, r6, 16
001aa4  1b011100  andi r2, r2, 1
001aa8  0b112310  add.s r2, r6, r2
001aac  0b11e110  add.s r2, r2, r14
001ab0  97022101  and r5, r2, r18
001ab4  1301c605  setlt.u r2, r12, r28
001ab8  63426ffd  loadli.w r4,  -332(r30)
001abc  3b600100  bneq r2, zero, 24
001ac0  1bc10801  srli r2, r17, 16
001ac4  1b011100  andi r2, r2, 1
001ac8  0b912810  add.s r2, r17, r2
001acc  0b11e110  add.s r2, r2, r14
001ad0  170a2101  and r20, r2, r18
001ad4  1301f604  setlt.u r2, r12, r15
001ad8  63034ffd  loadli.w r6,  -352(r30)
001adc  3b600100  bneq r2, zero, 24
001ae0  1bc10501  srli r2, r11, 16
001ae4  1b011100  andi r2, r2, 1
001ae8  0b912510  add.s r2, r11, r2
001aec  0b11e110  add.s r2, r2, r14
001af0  97092101  and r19, r2, r18
001af4  13017604  setlt.u r2, r12, r7
001af8  ab07807f  lui r15, 522240
001afc  3b600100  bneq r2, zero, 24
001b00  1bc10001  srli r2, r1, 16
001b04  1b011100  andi r2, r2, 1
001b08  8b902010  add.s r1, r1, r2
001b0c  8b90e010  add.s r1, r1, r14
001b10  17822001  and r4, r1, r18
001b14  63011ffd  loadli.w r2,  -376(r30)
001b18  e3033ffd  loadli.w r7,  -360(r30)
001b1c  9700d100  and r1, r2, r13
001b20  93801704  setlt.u r1, r15, r1
001b24  3be00000  bneq r1, zero, 24
001b28  9b400101  srli r1, r2, 16
001b2c  9b801000  andi r1, r1, 1
001b30  8b101110  add.s r1, r2, r1
001b34  8b90e010  add.s r1, r1, r14
001b38  5b010000  j 8
001b3c  97109101  or r1, r2, r25
001b40  e3412ffd  loadli.w r3,  -364(r30)
001b44  9bc00001  srli r1, r1, 16
001b48  73101ff8  store.h r1, -128(r30)
001b4c  1781d100  and r2, r3, r13
001b50  13812704  setlt.u r2, r15, r2
001b54  3b600100  bneq r2, zero, 24
001b58  9bc00101  srli r1, r3, 16
001b5c  9b801000  andi r1, r1, 1
001b60  8b901110  add.s r1, r3, r1
001b64  8b90e010  add.s r1, r1, r14
001b68  5b010000  j 8
001b6c  97909101  or r1, r3, r25
001b70  1781d300  and r2, r7, r13
001b74  9f010fff  addli r3, r30, -128
001b78  9bc00001  srli r1, r1, 16
001b7c  13812704  setlt.u r2, r15, r2
001b80  9b912100  ori r3, r3, 2
001b84  67493ffc  storeli.w r3, -364(r30)
001b88  73901100  store.h r1, 0(r3)
001b8c  3b600100  bneq r2, zero, 24
001b90  9bc00301  srli r1, r7, 16
001b94  9b801000  andi r1, r1, 1
001b98  8b901310  add.s r1, r7, r1
001b9c  8b90e010  add.s r1, r1, r14
001ba0  5b010000  j 8
001ba4  97909301  or r1, r7, r25
001ba8  1701d300  and r2, r6, r13
001bac  e3015ffd  loadli.w r3,  -344(r30)
001bb0  9bc00001  srli r1, r1, 16
001bb4  13812704  setlt.u r2, r15, r2
001bb8  73121ff8  store.h r1, -124(r30)
001bbc  3b600100  bneq r2, zero, 24
001bc0  9b400301  srli r1, r6, 16
001bc4  9b801000  andi r1, r1, 1
001bc8  8b101310  add.s r1, r6, r1
001bcc  8b90e010  add.s r1, r1, r14
001bd0  5b010000  j 8
001bd4  97109301  or r1, r6, r25
001bd8  1781d100  and r2, r3, r13
001bdc  9bc00001  srli r1, r1, 16
001be0  13812704  setlt.u r2, r15, r2
001be4  73131ff8  store.h r1, -122(r30)
001be8  3b600100  bneq r2, zero, 24
001bec  9bc00101  srli r1, r3, 16
001bf0  9b801000  andi r1, r1, 1
001bf4  8b901110  add.s r1, r3, r1
001bf8  8b90e010  add.s r1, r1, r14
001bfc  5b010000  j 8
001c00  97909101  or r1, r3, r25
001c04  1781dd00  and r2, r27, r13
001c08  9bc00001  srli r1, r1, 16
001c0c  13812704  setlt.u r2, r15, r2
001c10  73141ff8  store.h r1, -120(r30)
001c14  3b600100  bneq r2, zero, 24
001c18  9bc00d01  srli r1, r27, 16
001c1c  9b801000  andi r1, r1, 1
001c20  8b901d10  add.s r1, r27, r1
001c24  8b90e010  add.s r1, r1, r14
001c28  5b010000  j 8
001c2c  97909d01  or r1, r27, r25
001c30  1701dd00  and r2, r26, r13
001c34  9bc00001  srli r1, r1, 16
001c38  13812704  setlt.u r2, r15, r2
001c3c  73151ff8  store.h r1, -118(r30)
001c40  3b600100  bneq r2, zero, 24
001c44  9b400d01  srli r1, r26, 16
001c48  9b801000  andi r1, r1, 1
001c4c  8b101d10  add.s r1, r26, r1
001c50  8b90e010  add.s r1, r1, r14
001c54  5b010000  j 8
001c58  97109d01  or r1, r26, r25
001c5c  1781db00  and r2, r23, r13
001c60  9bc00001  srli r1, r1, 16
001c64  13812704  setlt.u r2, r15, r2
001c68  73161ff8  store.h r1, -116(r30)
001c6c  3b600100  bneq r2, zero, 24
001c70  9bc00b01  srli r1, r23, 16
001c74  9b801000  andi r1, r1, 1
001c78  8b901b10  add.s r1, r23, r1
001c7c  8b90e010  add.s r1, r1, r14
001c80  5b010000  j 8
001c84  97909b01  or r1, r23, r25
001c88  1781da00  and r2, r21, r13
001c8c  9bc00001  srli r1, r1, 16
001c90  13812704  setlt.u r2, r15, r2
001c94  73171ff8  store.h r1, -114(r30)
001c98  3b600100  bneq r2, zero, 24
001c9c  9bc00a01  srli r1, r21, 16
001ca0  9b801000  andi r1, r1, 1
001ca4  8b901a10  add.s r1, r21, r1
001ca8  8b90e010  add.s r1, r1, r14
001cac  5b010000  j 8
001cb0  97909a01  or r1, r21, r25
001cb4  1701d800  and r2, r16, r13
001cb8  9bc00001  srli r1, r1, 16
001cbc  13812704  setlt.u r2, r15, r2
001cc0  73181ff8  store.h r1, -112(r30)
001cc4  3b600100  bneq r2, zero, 24
001cc8  9b400801  srli r1, r16, 16
001ccc  9b801000  andi r1, r1, 1
001cd0  8b101810  add.s r1, r16, r1
001cd4  8b90e010  add.s r1, r1, r14
001cd8  5b010000  j 8
001cdc  97109801  or r1, r16, r25
001ce0  1701d500  and r2, r10, r13
001ce4  9bc00001  srli r1, r1, 16
001ce8  13812704  setlt.u r2, r15, r2
001cec  73191ff8  store.h r1, -110(r30)
001cf0  3b600100  bneq r2, zero, 24
001cf4  9b400501  srli r1, r10, 16
001cf8  9b801000  andi r1, r1, 1
001cfc  8b101510  add.s r1, r10, r1
001d00  8b90e010  add.s r1, r1, r14
001d04  5b010000  j 8
001d08  97109501  or r1, r10, r25
001d0c  1701d400  and r2, r8, r13
001d10  9bc00001  srli r1, r1, 16
001d14  13812704  setlt.u r2, r15, r2
001d18  731a1ff8  store.h r1, -108(r30)
001d1c  3b600100  bneq r2, zero, 24
001d20  9b400401  srli r1, r8, 16
001d24  9b801000  andi r1, r1, 1
001d28  8b101410  add.s r1, r8, r1
001d2c  8b90e010  add.s r1, r1, r14
001d30  5b010000  j 8
001d34  97109401  or r1, r8, r25
001d38  1781d200  and r2, r5, r13
001d3c  9bc00001  srli r1, r1, 16
001d40  674b4ffc  storeli.w r4, -332(r30)
001d44  13812704  setlt.u r2, r15, r2
001d48  731b1ff8  store.h r1, -106(r30)
001d4c  3b600100  bneq r2, zero, 24
001d50  9bc00201  srli r1, r5, 16
001d54  9b801000  andi r1, r1, 1
001d58  8b901210  add.s r1, r5, r1
001d5c  0b93e010  add.s r6, r1, r14
001d60  5b010000  j 8
001d64  17939201  or r6, r5, r25
001d68  6308effc  loadli.w r16,  -400(r30)
001d6c  e3029ffa  loadli.w r5,  -696(r30)
001d70  e300cffa  loadli.w r1,  -672(r30)
001d74  63467ffa  loadli.w r12,  -708(r30)
001d78  1b430301  srli r6, r6, 16
001d7c  2b0e807f  lui r28, 522240
001d80  731c6ff8  store.h r6, -104(r30)
001d84  0b940211  add.s r8, r5, r16
001d88  e3428ffa  loadli.w r5,  -700(r30)
001d8c  8b950011  add.s r11, r1, r16
001d90  e340bffa  loadli.w r1,  -676(r30)
001d94  8b1a0611  add.s r21, r12, r16
001d98  63061ffa  loadli.w r12,  -760(r30)
001d9c  0b950211  add.s r10, r5, r16
001da0  e3028ffa  loadli.w r5,  -704(r30)
001da4  8b940011  add.s r9, r1, r16
001da8  e300bffa  loadli.w r1,  -680(r30)
001dac  0b160611  add.s r12, r12, r16
001db0  8b930211  add.s r7, r5, r16
001db4  9702da00  and r5, r20, r13
001db8  0b920011  add.s r4, r1, r16
001dbc  e340affa  loadli.w r1,  -684(r30)
001dc0  13875704  setlt.u r14, r15, r5
001dc4  e3027ffa  loadli.w r5,  -712(r30)
001dc8  8b910011  add.s r3, r1, r16
001dcc  e300affa  loadli.w r1,  -688(r30)
001dd0  0b9b0211  add.s r22, r5, r16
001dd4  e3426ffa  loadli.w r5,  -716(r30)
001dd8  0b910011  add.s r2, r1, r16
001ddc  e3409ffa  loadli.w r1,  -692(r30)
001de0  8b9c0211  add.s r25, r5, r16
001de4  e3026ffa  loadli.w r5,  -720(r30)
001de8  8b900011  add.s r1, r1, r16
001dec  8b920211  add.s r5, r5, r16
001df0  670a5ffc  storeli.w r5, -352(r30)
001df4  e3425ffa  loadli.w r5,  -724(r30)
001df8  8b920211  add.s r5, r5, r16
001dfc  3b700700  bneq r14, zero, 28
001e00  1b430a01  srli r6, r20, 16
001e04  63077ffd  loadli.w r14,  -328(r30)
001e08  1b031300  andi r6, r6, 1
001e0c  0b136a10  add.s r6, r20, r6
001e10  0b13e310  add.s r6, r6, r14
001e14  db010000  j 12
001e18  2b034000  lui r6, 1024
001e1c  17136a00  or r6, r20, r6
001e20  33970528  sext_int2long r[15:16], r11
001e24  1f190000  addli r18, zero, 1
001e28  33980428  sext_int2long r[17:18], r9
001e2c  17372703  sll.d r[15:16], r[15:16], r18
001e30  17382803  sll.d r[17:18], r[17:18], r18
001e34  7334efea  store.d r[15:16], -344(r30)
001e38  33170228  sext_int2long r[15:16], r4
001e3c  b3910128  sext_int2long r[4:5], r3
001e40  733c0fe9  store.d r[17:18], -360(r30)
001e44  33180628  sext_int2long r[17:18], r12
001e48  1b460301  srli r12, r6, 16
001e4c  17372703  sll.d r[15:16], r[15:16], r18
001e50  731dcff8  store.h r12, -102(r30)
001e54  7334efe8  store.d r[15:16], -376(r30)
001e58  33170128  sext_int2long r[15:16], r2
001e5c  17b12103  sll.d r[3:4], r[4:5], r18
001e60  73382fe6  store.d r[3:4], -400(r30)
001e64  17312703  sll.d r[3:4], r[15:16], r18
001e68  33170b28  sext_int2long r[15:16], r22
001e6c  73302fe4  store.d r[3:4], -448(r30)
001e70  b3110428  sext_int2long r[4:5], r8
001e74  b3900028  sext_int2long r[2:3], r1
001e78  17bd2003  sll.d r[27:28], r[2:3], r18
001e7c  b3100528  sext_int2long r[2:3], r10
001e80  33950a28  sext_int2long r[11:12], r21
001e84  17b42103  sll.d r[9:10], r[4:5], r18
001e88  b3910328  sext_int2long r[4:5], r7
001e8c  9783d900  and r7, r19, r13
001e90  b39a0228  sext_int2long r[22:23], r5
001e94  97322803  sll.d r[6:7], r[17:18], r18
001e98  973b2503  sll.d r[24:25], r[11:12], r18
001e9c  17352703  sll.d r[11:12], r[15:16], r18
001ea0  63074ffd  loadli.w r14,  -352(r30)
001ea4  93037e04  setlt.u r7, r28, r7
001ea8  97b02003  sll.d r[2:3], r[2:3], r18
001eac  97b12103  sll.d r[4:5], r[4:5], r18
001eb0  97ba2a03  sll.d r[22:23], r[22:23], r18
001eb4  7334afe4  store.d r[11:12], -440(r30)
001eb8  33950c28  sext_int2long r[11:12], r25
001ebc  9f1c0000  addli r25, zero, 1
001ec0  33170728  sext_int2long r[15:16], r14
001ec4  17352503  sll.d r[11:12], r[11:12], r18
001ec8  17372703  sll.d r[15:16], r[15:16], r18
001ecc  3bf00300  bneq r7, zero, 28
001ed0  9bc30901  srli r7, r19, 16
001ed4  63067ffd  loadli.w r12,  -328(r30)
001ed8  9b831300  andi r7, r7, 1
001edc  8b937910  add.s r7, r19, r7
001ee0  0b96c310  add.s r12, r7, r12
001ee4  db010000  j 12
001ee8  ab034000  lui r7, 1024
001eec  17967900  or r12, r19, r7
001ef0  6b580f02  load.d r[17:18], 32(r30)
001ef4  6b598fe7  load.d r[19:20], -392(r30)
001ef8  0b292811  add.ul r[19:20], r[17:18], r[19:20]
001efc  0b2da811  add.ul r[27:28], r[17:18], r[27:28]
001f00  8b201810  add.ul r[2:3], r[17:18], r[2:3]
001f04  0b25a810  add.ul r[11:12], r[17:18], r[11:12]
001f08  8b2b7811  add.ul r[24:25], r[17:18], r[24:25]
001f0c  8b2a5811  add.ul r[22:23], r[17:18], r[22:23]
001f10  8b225810  add.ul r[6:7], r[17:18], r[6:7]
001f14  733c2fe5  store.d r[19:20], -424(r30)
001f18  6b598fea  load.d r[19:20], -344(r30)
001f1c  733cafe7  store.d r[27:28], -392(r30)
001f20  0b2d8810  add.ul r[27:28], r[17:18], r[9:10]
001f24  e3446ffd  loadli.w r9,  -332(r30)
001f28  8b233810  add.ul r[8:9], r[17:18], r[4:5]
001f2c  7330afea  store.d r[11:12], -352(r30)
001f30  1b420601  srli r4, r12, 16
001f34  0b25e810  add.ul r[11:12], r[17:18], r[15:16]
001f38  73345fea  store.d r[6:7], -344(r30)
001f3c  731e4ff8  store.h r4, -100(r30)
001f40  0b292811  add.ul r[19:20], r[17:18], r[19:20]
001f44  73382fe5  store.d r[19:20], -432(r30)
001f48  6b598fe9  load.d r[19:20], -360(r30)
001f4c  733cafe8  store.d r[11:12], -360(r30)
001f50  0b292811  add.ul r[19:20], r[17:18], r[19:20]
001f54  73342fe7  store.d r[19:20], -408(r30)
001f58  6b598fe8  load.d r[19:20], -376(r30)
001f5c  73341fe8  store.d r[2:3], -376(r30)
001f60  9780d400  and r1, r9, r13
001f64  93011e04  setlt.u r3, r28, r1
001f68  eb508fe4  load.d r[2:3], -440(r30)
001f6c  0b292811  add.ul r[19:20], r[17:18], r[19:20]
001f70  73302fe7  store.d r[19:20], -416(r30)
001f74  6b590fe7  load.d r[19:20], -400(r30)
001f78  8b201810  add.ul r[2:3], r[17:18], r[2:3]
001f7c  0b292811  add.ul r[19:20], r[17:18], r[19:20]
001f80  73382fe7  store.d r[19:20], -400(r30)
001f84  6b590fe4  load.d r[19:20], -448(r30)
001f88  0b292811  add.ul r[19:20], r[17:18], r[19:20]
001f8c  378c01f0  beq r3, zero, -7424
001f90  ab014000  lui r3, 1024
001f94  97913400  or r3, r9, r3
001f98  5b61fcff  j -7416
001f9c  9f0e0ffa  addli sp, r30, -768
001fa0  9f8e0e06  addli sp, sp, 768
001fa4  00a00300  mfence { lm, sm, gm }
001fa8  00100000  exit
001fac  00100000  exit
001fb0  00100000  exit
001fb4  00100000  exit
001fb8  00100000  exit
001fbc  00100000  exit
001fc0  00100000  exit
001fc4  00100000  exit
001fc8  00100000  exit
001fcc  00100000  exit
001fd0  00100000  exit
001fd4  00100000  exit
001fd8  00100000  exit
001fdc  00100000  exit
001fe0  00100000  exit
001fe4  00100000  exit
001fe8  00100000  exit
001fec  00100000  exit
001ff0  00100000  exit
001ff4  00100000  exit
001ff8  00100000  exit
001ffc  00100000  exit
002000  00100000  exit
002004  00100000  exit
002008  00100000  exit
00200c  00100000  exit
002010  00100000  exit
002014  00100000  exit
002018  00100000  exit
00201c  00100000  exit
002020  00100000  exit
002024  00100000  exit
002028  00100000  exit
00202c  00100000  exit
002030  00100000  exit
002034  00100000  exit
002038  00100000  exit
00203c  00100000  exit
002040  00100000  exit
002044  00100000  exit
002048  00100000  exit
00204c  00100000  exit
002050  00100000  exit
002054  00100000  exit
002058  00100000  exit
00205c  00100000  exit
002060  00100000  exit
002064  00100000  exit
002068  00100000  exit
00206c  00100000  exit
002070  00100000  exit
002074  00100000  exit
002078  00100000  exit
00207c  00100000  exit
002080  00100000  exit
002084  00100000  exit
002088  00100000  exit
00208c  00100000  exit
002090  00100000  exit
002094  00100000  exit
002098  00100000  exit
00209c  00100000  exit
0020a0  00100000  exit
0020a4  00100000  exit
0020a8  00100000  exit
0020ac  00100000  exit
0020b0  00100000  exit
0020b4  00100000  exit
0020b8  00100000  exit
0020bc  00100000  exit
0020c0  00100000  exit
0020c4  00100000  exit
0020c8  00100000  exit
0020cc  00100000  exit
0020d0  00100000  exit
0020d4  00100000  exit
0020d8  00100000  exit
0020dc  00100000  exit
0020e0  00100000  exit
0020e4  00100000  exit
0020e8  00100000  exit
0020ec  00100000  exit
0020f0  00100000  exit
0020f4  00100000  exit
0020f8  00100000  exit
0020fc  00100000  exit
002100  00100000  exit
002104  00100000  exit
002108  00100000  exit
00210c  00100000  exit
002110  00100000  exit
002114  00100000  exit
002118  00100000  exit
00211c  00100000  exit
002120  00100000  exit
002124  00100000  exit
002128  00100000  exit
00212c  00100000  exit
002130  00100000  exit
002134  00100000  exit
002138  00100000  exit
00213c  00100000  exit
002140  00100000  exit
002144  00100000  exit
002148  00100000  exit
00214c  00100000  exit
002150  00100000  exit
002154  00100000  exit
002158  00100000  exit
00215c  00100000  exit
002160  00100000  exit
002164  00100000  exit
002168  00100000  exit
00216c  00100000  exit
002170  00100000  exit
002174  00100000  exit
002178  00100000  exit
00217c  00100000  exit
002180  00100000  exit
002184  00100000  exit
002188  00100000  exit
00218c  00100000  exit
002190  00100000  exit
002194  00100000  exit
002198  00100000  exit
00219c  00100000  exit
0021a0  00100000  exit
0021a4  00100000  exit
0021a8  00100000  exit
0021ac  00100000  exit
0021b0  00100000  exit
0021b4  00100000  exit
0021b8  00100000  exit
0021bc  00100000  exit
0021c0  00100000  exit
0021c4  00100000  exit
0021c8  00100000  exit
0021cc  00100000  exit
0021d0  00100000  exit
0021d4  00100000  exit
0021d8  00100000  exit
0021dc  00100000  exit
0021e0  00100000  exit
0021e4  00100000  exit
0021e8  00100000  exit
