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
000108  1b9bf2ff  ori r22, r5, 4095
00010c  0b942110  add.s r8, r3, r2
000110  0b924320  mul.s r4, r7, r4
000114  73680440  stores.w zero, 1040(r8)
000118  00a00300  mfence { lm, sm, gm }
00011c  80210b04  csr_set csr3, r22
000120  00d00100  sync_group
000124  e7488ffa  storeli.w r8, -628(r30)
000128  73600400  stores.w zero, 0(r8)
00012c  0b126220  mul.s r4, r4, r6
000130  00a00300  mfence { lm, sm, gm }
000134  80210b04  csr_set csr3, r22
000138  00d00100  sync_group
00013c  e7084ffa  storeli.w r4, -632(r30)
000140  cb78e20e  ble.s r4, r14, 7740
000144  1f028000  addli r4, zero, 64
000148  e3451ffb  loadli.w r11,  -628(r30)
00014c  eb548f00  load.d r[10:11], 8(r30)
000150  6b530f01  load.d r[7:8], 16(r30)
000154  2b0e807f  lui r28, 522240
000158  ab0a4000  lui r21, 1024
00015c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000160  67486ffb  storeli.w r22, -636(r30)
000164  0b944030  div.s r8, r1, r4
000168  6b528f01  load.d r[5:6], 24(r30)
00016c  9f852508  addli r11, r11, 1040
000170  e747bffa  storeli.w r11, -644(r30)
000174  67088ffa  storeli.w r8, -640(r30)
000178  1b346400  slli r8, r8, 6
00017c  0b948018  sub.s r8, r1, r8
000180  9b80f003  andi r1, r1, 63
000184  9b374400  slli r15, r8, 4
000188  00d40002  load_param_i r8, 1
00018c  67481ffc  storeli.w r1, -380(r30)
000190  ab700000  lui r1, 7
000194  67478ffa  storeli.w r8, -652(r30)
000198  1b941700  ori r8, r15, 1
00019c  b3950728  sext_int2long r[12:13], r15
0001a0  9b90f0ff  ori r1, r1, 4095
0001a4  9b96c700  ori r13, r15, 12
0001a8  e707fffa  storeli.w r15, -648(r30)
0001ac  67078ffa  storeli.w r8, -656(r30)
0001b0  1b942700  ori r8, r15, 2
0001b4  e74b1ffc  storeli.w r1, -324(r30)
0001b8  abf07f7f  lui r1, 522239
0001bc  6744dffa  storeli.w r13, -700(r30)
0001c0  e7468ffa  storeli.w r8, -660(r30)
0001c4  1b943700  ori r8, r15, 3
0001c8  9b90f0ff  ori r1, r1, 4095
0001cc  e7068ffa  storeli.w r8, -664(r30)
0001d0  1b944700  ori r8, r15, 4
0001d4  e70b1ffc  storeli.w r1, -328(r30)
0001d8  67468ffa  storeli.w r8, -668(r30)
0001dc  1b945700  ori r8, r15, 5
0001e0  67068ffa  storeli.w r8, -672(r30)
0001e4  1b946700  ori r8, r15, 6
0001e8  e7458ffa  storeli.w r8, -676(r30)
0001ec  1b947700  ori r8, r15, 7
0001f0  e7058ffa  storeli.w r8, -680(r30)
0001f4  1b948700  ori r8, r15, 8
0001f8  67458ffa  storeli.w r8, -684(r30)
0001fc  1b949700  ori r8, r15, 9
000200  67058ffa  storeli.w r8, -688(r30)
000204  1b94a700  ori r8, r15, 10
000208  e7448ffa  storeli.w r8, -692(r30)
00020c  1b94b700  ori r8, r15, 11
000210  e7048ffa  storeli.w r8, -696(r30)
000214  1f140000  addli r8, zero, 1
000218  97b58502  sll.d r[12:13], r[12:13], r8
00021c  1b94d700  ori r8, r15, 13
000220  67048ffa  storeli.w r8, -704(r30)
000224  0ba4b410  add.ul r[9:10], r[10:11], r[12:13]
000228  0b23b310  add.ul r[7:8], r[7:8], r[12:13]
00022c  0b22b210  add.ul r[5:6], r[5:6], r[12:13]
000230  733c8fd2  store.d r[9:10], -712(r30)
000234  2bf4ffff  lui r8, 1048575
000238  73386fd2  store.d r[7:8], -720(r30)
00023c  9f044000  addli r9, zero, 32
000240  73344fd2  store.d r[5:6], -728(r30)
000244  1b1304f0  ori r6, r8, 3840
000248  1f048ffd  addli r8, r30, -320
00024c  97816100  and r3, r3, r6
000250  8b912110  add.s r3, r3, r2
000254  2bf1ff7f  lui r2, 524287
000258  9b16f1ff  ori r13, r2, 4095
00025c  2b11833a  lui r2, 239665
000260  67493ffa  storeli.w r3, -620(r30)
000264  9b10f126  ori r1, r2, 623
000268  67421ffa  storeli.w r1, -732(r30)
00026c  9b90e700  ori r1, r15, 14
000270  67021ffa  storeli.w r1, -736(r30)
000274  9b90f700  ori r1, r15, 15
000278  e7411ffa  storeli.w r1, -740(r30)
00027c  9f802108  addli r1, r3, 1040
000280  67091ffa  storeli.w r1, -624(r30)
000284  9f200000  addli r1, zero, 2
000288  fe8100e0  vmmov mr3, r1
00028c  db2e0000  j 372
000290  9b400901  srli r1, r18, 16
000294  63417ffd  loadli.w r2,  -324(r30)
000298  9b801000  andi r1, r1, 1
00029c  8b101910  add.s r1, r18, r1
0002a0  8b902010  add.s r1, r1, r2
0002a4  9bc00001  srli r1, r1, 16
0002a8  63070ffd  loadli.w r14,  -384(r30)
0002ac  1f250000  addli r10, zero, 2
0002b0  9f020fff  addli r5, r30, -128
0002b4  2b0100f0  lui r2, 983040
0002b8  731f1ff8  store.h r1, -98(r30)
0002bc  ab0000f0  lui r1, 983040
0002c0  17112500  or r2, r10, r2
0002c4  00a00000  mfence { lm }
0002c8  eb510fe7  load.d r[4:5], -400(r30)
0002cc  97101500  or r1, r10, r1
0002d0  eb558fe8  load.d r[12:13], -376(r30)
0002d4  ffb05100  s_lm2gm r1, r5, 0(r[4:5])
0002d8  e3404ffd  loadli.w r1,  -348(r30)
0002dc  eb518fe6  load.d r[4:5], -408(r30)
0002e0  7fb11100  s_lm2gm r2, r1, 0(r[4:5])
0002e4  2b0100f0  lui r2, 983040
0002e8  9fc00200  addli r1, r5, 4
0002ec  ab0100f0  lui r3, 983040
0002f0  1fe20200  addli r4, r5, 6
0002f4  17112500  or r2, r10, r2
0002f8  97113500  or r3, r10, r3
0002fc  7fb11500  s_lm2gm r2, r1, 0(r[12:13])
000300  eb508fe7  load.d r[2:3], -392(r30)
000304  eb558fe9  load.d r[12:13], -360(r30)
000308  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00030c  ab0100f0  lui r3, 983040
000310  2b0200f0  lui r4, 983040
000314  9f801200  addli r1, r5, 8
000318  1fa11200  addli r2, r5, 10
00031c  97113500  or r3, r10, r3
000320  17124500  or r4, r10, r4
000324  ffb11500  s_lm2gm r3, r1, 0(r[12:13])
000328  ab0100f0  lui r3, 983040
00032c  7f322800  s_lm2gm r4, r2, 0(r[17:18])
000330  2b0200f0  lui r4, 983040
000334  eb578fea  load.d r[16:17], -344(r30)
000338  9fc01200  addli r1, r5, 12
00033c  1fe11200  addli r2, r5, 14
000340  97113500  or r3, r10, r3
000344  17124500  or r4, r10, r4
000348  ffb11700  s_lm2gm r3, r1, 0(r[16:17])
00034c  ab0100f0  lui r3, 983040
000350  7fb22d00  s_lm2gm r4, r2, 0(r[28:29])
000354  2b0200f0  lui r4, 983040
000358  9f802200  addli r1, r5, 16
00035c  1fa12200  addli r2, r5, 18
000360  2b0e807f  lui r28, 522240
000364  97113500  or r3, r10, r3
000368  17124500  or r4, r10, r4
00036c  ffb11c00  s_lm2gm r3, r1, 0(r[26:27])
000370  ab0100f0  lui r3, 983040
000374  7f322300  s_lm2gm r4, r2, 0(r[7:8])
000378  2b0200f0  lui r4, 983040
00037c  9fc02200  addli r1, r5, 20
000380  1fe12200  addli r2, r5, 22
000384  6b530feb  load.d r[7:8], -336(r30)
000388  97113500  or r3, r10, r3
00038c  17124500  or r4, r10, r4
000390  ff311400  s_lm2gm r3, r1, 0(r[9:10])
000394  ab0100f0  lui r3, 983040
000398  7fb22a00  s_lm2gm r4, r2, 0(r[22:23])
00039c  2b0200f0  lui r4, 983040
0003a0  9f803200  addli r1, r5, 24
0003a4  1fa13200  addli r2, r5, 26
0003a8  1f048ffd  addli r8, r30, -320
0003ac  9f044000  addli r9, zero, 32
0003b0  ab0a4000  lui r21, 1024
0003b4  97113500  or r3, r10, r3
0003b8  17124500  or r4, r10, r4
0003bc  ff311300  s_lm2gm r3, r1, 0(r[7:8])
0003c0  ab0100f0  lui r3, 983040
0003c4  7fb22b00  s_lm2gm r4, r2, 0(r[24:25])
0003c8  2b0200f0  lui r4, 983040
0003cc  9fc03200  addli r1, r5, 28
0003d0  1fe13200  addli r2, r5, 30
0003d4  eb520fe9  load.d r[6:7], -368(r30)
0003d8  97113500  or r3, r10, r3
0003dc  17124500  or r4, r10, r4
0003e0  ffb11200  s_lm2gm r3, r1, 0(r[6:7])
0003e4  e340effa  loadli.w r1,  -652(r30)
0003e8  7fb22900  s_lm2gm r4, r2, 0(r[20:21])
0003ec  00a00000  mfence { lm }
0003f0  0b171710  add.s r14, r14, r1
0003f4  e3001ffb  loadli.w r1,  -632(r30)
0003f8  3f201700  blt.s r14, r1, 8
0003fc  5b700300  j 7040
000400  9f000000  addli r1, zero, 0
000404  0b111410  add.s r2, r8, r1
000408  9fc00000  addli r1, r1, 4
00040c  73100100  store.h zero, 0(r2)
000410  73110100  store.h zero, 2(r2)
000414  00a00000  mfence { lm }
000418  bbbf90fe  bneq r1, r9, -20
00041c  e3007f00  loadli.w r1,  56(r30)
000420  63416f00  loadli.w r2,  52(r30)
000424  63020ffb  loadli.w r4,  -640(r30)
000428  e302fffa  loadli.w r5,  -648(r30)
00042c  9f130000  addli r7, zero, 1
000430  ab0100f0  lui r3, 983040
000434  6708effc  storeli.w r14, -384(r30)
000438  92300002  vadd.s.mz vr1{mr1}, zero, vr0
00043c  1f190000  addli r18, zero, 1
000440  12310002  vadd.s.mz vr2{mr1}, zero, vr0
000444  97913400  or r3, r9, r3
000448  7e0109e0  vmmov mr2, r18
00044c  8b101730  div.s r1, r14, r1
000450  8b902030  div.s r1, r1, r2
000454  2b0100f0  lui r2, 983040
000458  17912400  or r2, r9, r2
00045c  0b9d4010  add.s r26, r1, r4
000460  ab0000f0  lui r1, 983040
000464  2b0200f0  lui r4, 983040
000468  1b33ad00  slli r6, r26, 10
00046c  97901400  or r1, r9, r1
000470  17924400  or r4, r9, r4
000474  8b125310  add.s r5, r6, r5
000478  67076ffc  storeli.w r6, -400(r30)
00047c  b3920228  sext_int2long r[6:7], r5
000480  17b57202  sll.d r[11:12], r[6:7], r7
000484  eb520f00  load.d r[6:7], 0(r30)
000488  733cafe6  store.d r[11:12], -392(r30)
00048c  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
000490  7fa18200  l_gm2lm r2, r8, 0(r[6:7])
000494  eb528fd3  load.d r[6:7], -712(r30)
000498  1f010ffe  addli r2, r30, -256
00049c  ffa12200  l_gm2lm r3, r2, 0(r[6:7])
0004a0  6b510fd3  load.d r[3:4], -720(r30)
0004a4  9f028ffe  addli r5, r30, -192
0004a8  ff205100  l_gm2lm r1, r5, 0(r[3:4])
0004ac  eb508fd2  load.d r[2:3], -728(r30)
0004b0  9f010fff  addli r3, r30, -128
0004b4  7fa23000  l_gm2lm r4, r3, 0(r[2:3])
0004b8  00a00000  mfence { lm }
0004bc  eb310fec  load.hu r3, -320(r30)
0004c0  6b322fec  load.hu r4, -318(r30)
0004c4  6b31afed  load.hu r2, -294(r30)
0004c8  eb30cfed  load.hu r1, -292(r30)
0004cc  eb324fec  load.hu r5, -316(r30)
0004d0  6b336fec  load.hu r6, -314(r30)
0004d4  eb338fec  load.hu r7, -312(r30)
0004d8  6b34afec  load.hu r8, -310(r30)
0004dc  eb34cfec  load.hu r9, -308(r30)
0004e0  6b35efec  load.hu r10, -306(r30)
0004e4  eb350fed  load.hu r11, -304(r30)
0004e8  6b362fed  load.hu r12, -302(r30)
0004ec  6b374fed  load.hu r14, -300(r30)
0004f0  eb376fed  load.hu r15, -298(r30)
0004f4  6b388fed  load.hu r16, -296(r30)
0004f8  eb38efed  load.hu r17, -290(r30)
0004fc  b3910118  bfloat2float.rn r3, r3
000500  33110118  bfloat2float.rn r2, r2
000504  b3900018  bfloat2float.rn r1, r1
000508  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
00050c  b3110218  bfloat2float.rn r3, r4
000510  1f420000  addli r4, zero, 4
000514  7e0002e0  vmmov mr0, r4
000518  1f021000  addli r4, zero, 8
00051c  eaa01136  vor.u.mh vr1{mr3}, r3, vr1
000520  b3910218  bfloat2float.rn r3, r5
000524  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000528  b3110318  bfloat2float.rn r3, r6
00052c  7e0002e0  vmmov mr0, r4
000530  1f022000  addli r4, zero, 16
000534  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000538  b3910318  bfloat2float.rn r3, r7
00053c  7e0002e0  vmmov mr0, r4
000540  1f024000  addli r4, zero, 32
000544  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000548  b3110418  bfloat2float.rn r3, r8
00054c  7e0002e0  vmmov mr0, r4
000550  1f028000  addli r4, zero, 64
000554  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000558  b3910418  bfloat2float.rn r3, r9
00055c  7e0002e0  vmmov mr0, r4
000560  1f020001  addli r4, zero, 128
000564  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000568  b3110518  bfloat2float.rn r3, r10
00056c  7e0002e0  vmmov mr0, r4
000570  1f020002  addli r4, zero, 256
000574  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000578  b3910518  bfloat2float.rn r3, r11
00057c  7e0002e0  vmmov mr0, r4
000580  1f020004  addli r4, zero, 512
000584  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000588  b3110618  bfloat2float.rn r3, r12
00058c  7e0002e0  vmmov mr0, r4
000590  1f020008  addli r4, zero, 1024
000594  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000598  b3110718  bfloat2float.rn r3, r14
00059c  7e0002e0  vmmov mr0, r4
0005a0  1f020010  addli r4, zero, 2048
0005a4  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005a8  b3910718  bfloat2float.rn r3, r15
0005ac  7e0002e0  vmmov mr0, r4
0005b0  1f020020  addli r4, zero, 4096
0005b4  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005b8  b3110818  bfloat2float.rn r3, r16
0005bc  7e0002e0  vmmov mr0, r4
0005c0  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005c4  9f010040  addli r3, zero, 8192
0005c8  7e8001e0  vmmov mr0, r3
0005cc  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0005d0  2b410000  lui r2, 4
0005d4  7e0001e0  vmmov mr0, r2
0005d8  2b810000  lui r2, 8
0005dc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0005e0  b3900818  bfloat2float.rn r1, r17
0005e4  7e0001e0  vmmov mr0, r2
0005e8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0005ec  eb300ff0  load.hu r1, -256(r30)
0005f0  6b312ff0  load.hu r2, -254(r30)
0005f4  eb314ff0  load.hu r3, -252(r30)
0005f8  6b326ff0  load.hu r4, -250(r30)
0005fc  eb328ff0  load.hu r5, -248(r30)
000600  6b33aff0  load.hu r6, -246(r30)
000604  eb33cff0  load.hu r7, -244(r30)
000608  6b34eff0  load.hu r8, -242(r30)
00060c  eb340ff1  load.hu r9, -240(r30)
000610  6b352ff1  load.hu r10, -238(r30)
000614  eb354ff1  load.hu r11, -236(r30)
000618  6b366ff1  load.hu r12, -234(r30)
00061c  6b378ff1  load.hu r14, -232(r30)
000620  eb37aff1  load.hu r15, -230(r30)
000624  6b38cff1  load.hu r16, -228(r30)
000628  eb38eff1  load.hu r17, -226(r30)
00062c  b3900018  bfloat2float.rn r1, r1
000630  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000634  b3100118  bfloat2float.rn r1, r2
000638  1f410000  addli r2, zero, 4
00063c  7e0101e0  vmmov mr2, r2
000640  1f011000  addli r2, zero, 8
000644  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
000648  b3900118  bfloat2float.rn r1, r3
00064c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000650  b3100218  bfloat2float.rn r1, r4
000654  7e0101e0  vmmov mr2, r2
000658  1f012000  addli r2, zero, 16
00065c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000660  b3900218  bfloat2float.rn r1, r5
000664  7e0101e0  vmmov mr2, r2
000668  1f014000  addli r2, zero, 32
00066c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000670  b3100318  bfloat2float.rn r1, r6
000674  7e0101e0  vmmov mr2, r2
000678  1f018000  addli r2, zero, 64
00067c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000680  b3900318  bfloat2float.rn r1, r7
000684  7e0101e0  vmmov mr2, r2
000688  1f010001  addli r2, zero, 128
00068c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000690  b3100418  bfloat2float.rn r1, r8
000694  7e0101e0  vmmov mr2, r2
000698  1f010002  addli r2, zero, 256
00069c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006a0  b3900418  bfloat2float.rn r1, r9
0006a4  7e0101e0  vmmov mr2, r2
0006a8  1f010004  addli r2, zero, 512
0006ac  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006b0  b3100518  bfloat2float.rn r1, r10
0006b4  7e0101e0  vmmov mr2, r2
0006b8  1f010008  addli r2, zero, 1024
0006bc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006c0  b3900518  bfloat2float.rn r1, r11
0006c4  7e0101e0  vmmov mr2, r2
0006c8  1f010010  addli r2, zero, 2048
0006cc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006d0  b3100618  bfloat2float.rn r1, r12
0006d4  7e0101e0  vmmov mr2, r2
0006d8  1f010020  addli r2, zero, 4096
0006dc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006e0  b3100718  bfloat2float.rn r1, r14
0006e4  7e0101e0  vmmov mr2, r2
0006e8  1f010040  addli r2, zero, 8192
0006ec  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006f0  b3900718  bfloat2float.rn r1, r15
0006f4  7e0101e0  vmmov mr2, r2
0006f8  2b410000  lui r2, 4
0006fc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000700  b3100818  bfloat2float.rn r1, r16
000704  7e0101e0  vmmov mr2, r2
000708  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00070c  b3900818  bfloat2float.rn r1, r17
000710  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000714  eb300ff4  load.hu r1, -192(r30)
000718  e70e1ffa  storeli.w r1, -536(r30)
00071c  eb302ff4  load.hu r1, -190(r30)
000720  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000724  670f1ffa  storeli.w r1, -528(r30)
000728  eb304ff4  load.hu r1, -188(r30)
00072c  e70f1ffa  storeli.w r1, -520(r30)
000730  eb306ff4  load.hu r1, -186(r30)
000734  67001ffc  storeli.w r1, -512(r30)
000738  eb308ff4  load.hu r1, -184(r30)
00073c  e7001ffc  storeli.w r1, -504(r30)
000740  eb30aff4  load.hu r1, -182(r30)
000744  67011ffc  storeli.w r1, -496(r30)
000748  eb30cff4  load.hu r1, -180(r30)
00074c  e7011ffc  storeli.w r1, -488(r30)
000750  eb30eff4  load.hu r1, -178(r30)
000754  67021ffc  storeli.w r1, -480(r30)
000758  eb300ff5  load.hu r1, -176(r30)
00075c  e7021ffc  storeli.w r1, -472(r30)
000760  eb302ff5  load.hu r1, -174(r30)
000764  67431ffc  storeli.w r1, -460(r30)
000768  eb304ff5  load.hu r1, -172(r30)
00076c  e7431ffc  storeli.w r1, -452(r30)
000770  eb306ff5  load.hu r1, -170(r30)
000774  67441ffc  storeli.w r1, -444(r30)
000778  eb308ff5  load.hu r1, -168(r30)
00077c  e7441ffc  storeli.w r1, -436(r30)
000780  eb30aff5  load.hu r1, -166(r30)
000784  67451ffc  storeli.w r1, -428(r30)
000788  eb30cff5  load.hu r1, -164(r30)
00078c  67061ffc  storeli.w r1, -416(r30)
000790  eb30eff5  load.hu r1, -162(r30)
000794  e7061ffc  storeli.w r1, -408(r30)
000798  eb300ff8  load.hu r1, -128(r30)
00079c  674e1ffa  storeli.w r1, -540(r30)
0007a0  eb302ff8  load.hu r1, -126(r30)
0007a4  e74e1ffa  storeli.w r1, -532(r30)
0007a8  eb304ff8  load.hu r1, -124(r30)
0007ac  674f1ffa  storeli.w r1, -524(r30)
0007b0  eb306ff8  load.hu r1, -122(r30)
0007b4  e74f1ffa  storeli.w r1, -516(r30)
0007b8  eb308ff8  load.hu r1, -120(r30)
0007bc  67401ffc  storeli.w r1, -508(r30)
0007c0  eb30aff8  load.hu r1, -118(r30)
0007c4  e7401ffc  storeli.w r1, -500(r30)
0007c8  eb30cff8  load.hu r1, -116(r30)
0007cc  67411ffc  storeli.w r1, -492(r30)
0007d0  eb30eff8  load.hu r1, -114(r30)
0007d4  e7411ffc  storeli.w r1, -484(r30)
0007d8  eb300ff9  load.hu r1, -112(r30)
0007dc  67421ffc  storeli.w r1, -476(r30)
0007e0  eb302ff9  load.hu r1, -110(r30)
0007e4  e7421ffc  storeli.w r1, -468(r30)
0007e8  eb304ff9  load.hu r1, -108(r30)
0007ec  67031ffc  storeli.w r1, -464(r30)
0007f0  eb306ff9  load.hu r1, -106(r30)
0007f4  e7031ffc  storeli.w r1, -456(r30)
0007f8  eb308ff9  load.hu r1, -104(r30)
0007fc  67041ffc  storeli.w r1, -448(r30)
000800  eb30aff9  load.hu r1, -102(r30)
000804  e7041ffc  storeli.w r1, -440(r30)
000808  eb30cff9  load.hu r1, -100(r30)
00080c  67051ffc  storeli.w r1, -432(r30)
000810  eb30eff9  load.hu r1, -98(r30)
000814  e7051ffc  storeli.w r1, -424(r30)
000818  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
00081c  00a00000  mfence { lm }
000820  63098fff  loadli.w r18,  -64(r30)
000824  e3498fff  loadli.w r19,  -60(r30)
000828  e3029fff  loadli.w r5,  -56(r30)
00082c  63419fff  loadli.w r2,  -52(r30)
000830  6302afff  loadli.w r4,  -48(r30)
000834  e344afff  loadli.w r9,  -44(r30)
000838  e30dbfff  loadli.w r27,  -40(r30)
00083c  e34bbfff  loadli.w r23,  -36(r30)
000840  e30ccfff  loadli.w r25,  -32(r30)
000844  634ccfff  loadli.w r24,  -28(r30)
000848  6308dfff  loadli.w r16,  -24(r30)
00084c  e341dfff  loadli.w r3,  -20(r30)
000850  1703d900  and r6, r18, r13
000854  e7083ffc  storeli.w r3, -376(r30)
000858  e303efff  loadli.w r7,  -16(r30)
00085c  e341efff  loadli.w r3,  -12(r30)
000860  93006e04  setlt.u r1, r28, r6
000864  67093ffc  storeli.w r3, -368(r30)
000868  e308ffff  loadli.w r17,  -8(r30)
00086c  634affff  loadli.w r20,  -4(r30)
000870  3bb00000  bneq r1, zero, 12
000874  e7092ffd  storeli.w r18, -360(r30)
000878  db010000  j 12
00087c  97105901  or r1, r18, r21
000880  e7091ffc  storeli.w r1, -360(r30)
000884  9787d900  and r15, r19, r13
000888  63477ffd  loadli.w r14,  -324(r30)
00088c  9300fe04  setlt.u r1, r28, r15
000890  3bb00000  bneq r1, zero, 12
000894  9f810900  addli r3, r19, 0
000898  5b010000  j 8
00089c  97915901  or r3, r19, r21
0008a0  1786d200  and r12, r5, r13
0008a4  9300ce04  setlt.u r1, r28, r12
0008a8  3bb00000  bneq r1, zero, 12
0008ac  e70a5ffc  storeli.w r5, -344(r30)
0008b0  db010000  j 12
0008b4  97905201  or r1, r5, r21
0008b8  e70a1ffc  storeli.w r1, -344(r30)
0008bc  9705d100  and r11, r2, r13
0008c0  9300be04  setlt.u r1, r28, r11
0008c4  3bb00000  bneq r1, zero, 12
0008c8  670b2ffc  storeli.w r2, -336(r30)
0008cc  db010000  j 12
0008d0  97105101  or r1, r2, r21
0008d4  670b1ffc  storeli.w r1, -336(r30)
0008d8  1705d200  and r10, r4, r13
0008dc  9300ae04  setlt.u r1, r28, r10
0008e0  3bb00000  bneq r1, zero, 12
0008e4  e74c4ffa  storeli.w r4, -564(r30)
0008e8  db010000  j 12
0008ec  97105201  or r1, r4, r21
0008f0  e74c1ffa  storeli.w r1, -564(r30)
0008f4  1784d400  and r8, r9, r13
0008f8  e7099ffa  storeli.w r9, -616(r30)
0008fc  93008e04  setlt.u r1, r28, r8
000900  3bb00000  bneq r1, zero, 12
000904  670d9ffa  storeli.w r9, -560(r30)
000908  db010000  j 12
00090c  97905401  or r1, r9, r21
000910  670d1ffa  storeli.w r1, -560(r30)
000914  9784dd00  and r9, r27, r13
000918  674a3ffc  storeli.w r3, -348(r30)
00091c  93009e04  setlt.u r1, r28, r9
000920  3bb00000  bneq r1, zero, 12
000924  674dbffb  storeli.w r27, -556(r30)
000928  db010000  j 12
00092c  97905d01  or r1, r27, r21
000930  674d1ffa  storeli.w r1, -556(r30)
000934  9781db00  and r3, r23, r13
000938  670a7ffb  storeli.w r23, -608(r30)
00093c  93003e04  setlt.u r1, r28, r3
000940  3bb00000  bneq r1, zero, 12
000944  e70d7ffb  storeli.w r23, -552(r30)
000948  db010000  j 12
00094c  97905b01  or r1, r23, r21
000950  e70d1ffa  storeli.w r1, -552(r30)
000954  978bdc00  and r23, r25, r13
000958  674a9ffb  storeli.w r25, -604(r30)
00095c  e749bffb  storeli.w r27, -612(r30)
000960  93007e05  setlt.u r1, r28, r23
000964  3bb00000  bneq r1, zero, 12
000968  e74d9ffb  storeli.w r25, -548(r30)
00096c  db010000  j 12
000970  97905c01  or r1, r25, r21
000974  e74d1ffa  storeli.w r1, -548(r30)
000978  970ddc00  and r27, r24, r13
00097c  9300be05  setlt.u r1, r28, r27
000980  3bb00000  bneq r1, zero, 12
000984  9f0c0c00  addli r25, r24, 0
000988  5b010000  j 8
00098c  971c5c01  or r25, r24, r21
000990  9700d800  and r1, r16, r13
000994  630b1ffd  loadli.w r22,  -376(r30)
000998  e70a8ffb  storeli.w r24, -600(r30)
00099c  1f0c0800  addli r24, r16, 0
0009a0  e70b1ffa  storeli.w r1, -584(r30)
0009a4  93001e04  setlt.u r1, r28, r1
0009a8  37a00000  beq r1, zero, 8
0009ac  17185801  or r16, r16, r21
0009b0  9700db00  and r1, r22, r13
0009b4  e74b1ffa  storeli.w r1, -580(r30)
0009b8  93001e04  setlt.u r1, r28, r1
0009bc  3bb00000  bneq r1, zero, 12
0009c0  670e6ffb  storeli.w r22, -544(r30)
0009c4  db010000  j 12
0009c8  97105b01  or r1, r22, r21
0009cc  670e1ffa  storeli.w r1, -544(r30)
0009d0  1f0b0d00  addli r22, r26, 0
0009d4  178dd300  and r26, r7, r13
0009d8  9f800300  addli r1, r7, 0
0009dc  9303ae05  setlt.u r7, r28, r26
0009e0  670caffb  storeli.w r26, -576(r30)
0009e4  2b0d4000  lui r26, 1024
0009e8  e74a1ffa  storeli.w r1, -596(r30)
0009ec  37a00300  beq r7, zero, 8
0009f0  97905001  or r1, r1, r21
0009f4  e30a2ffd  loadli.w r21,  -368(r30)
0009f8  9783da00  and r7, r21, r13
0009fc  674c7ffa  storeli.w r7, -572(r30)
000a00  93037e04  setlt.u r7, r28, r7
000a04  37a00300  beq r7, zero, 8
000a08  979aaa01  or r21, r21, r26
000a0c  9783d800  and r7, r17, r13
000a10  670b1ffb  storeli.w r17, -592(r30)
000a14  e70c7ffa  storeli.w r7, -568(r30)
000a18  93037e04  setlt.u r7, r28, r7
000a1c  3bb00300  bneq r7, zero, 12
000a20  ab03807f  lui r7, 522240
000a24  db010000  j 12
000a28  ab03807f  lui r7, 522240
000a2c  9798a801  or r17, r17, r26
000a30  170eda00  and r28, r20, r13
000a34  674b4ffb  storeli.w r20, -588(r30)
000a38  9383c305  setlt.u r7, r7, r28
000a3c  37a00300  beq r7, zero, 8
000a40  171aaa01  or r20, r20, r26
000a44  e3037ffd  loadli.w r7,  -328(r30)
000a48  1f0d0b00  addli r26, r22, 0
000a4c  1f8b0c00  addli r22, r25, 0
000a50  13836304  setlt.u r6, r7, r6
000a54  bb000300  bneq r6, zero, 32
000a58  1b430901  srli r6, r18, 16
000a5c  1b031300  andi r6, r6, 1
000a60  0b136910  add.s r6, r18, r6
000a64  2b09ffff  lui r18, 1048560
000a68  0b13e310  add.s r6, r6, r14
000a6c  17032301  and r6, r6, r18
000a70  e7096ffc  storeli.w r6, -360(r30)
000a74  1383f304  setlt.u r6, r7, r15
000a78  bb000300  bneq r6, zero, 32
000a7c  1bc30901  srli r6, r19, 16
000a80  ab07ffff  lui r15, 1048560
000a84  1b031300  andi r6, r6, 1
000a88  0b936910  add.s r6, r19, r6
000a8c  0b13e310  add.s r6, r6, r14
000a90  1703f300  and r6, r6, r15
000a94  674a6ffc  storeli.w r6, -348(r30)
000a98  1383c304  setlt.u r6, r7, r12
000a9c  2b06ffff  lui r12, 1048560
000aa0  1f890a00  addli r18, r21, 0
000aa4  3b700300  bneq r6, zero, 28
000aa8  1bc30201  srli r6, r5, 16
000aac  1b031300  andi r6, r6, 1
000ab0  8b926210  add.s r5, r5, r6
000ab4  8b92e210  add.s r5, r5, r14
000ab8  9782c200  and r5, r5, r12
000abc  e70a5ffc  storeli.w r5, -344(r30)
000ac0  9382b304  setlt.u r5, r7, r11
000ac4  9f8a0000  addli r21, r1, 0
000ac8  9f070800  addli r15, r16, 0
000acc  3bf00200  bneq r5, zero, 28
000ad0  9b420101  srli r5, r2, 16
000ad4  9b821200  andi r5, r5, 1
000ad8  0b115110  add.s r2, r2, r5
000adc  0b11e110  add.s r2, r2, r14
000ae0  9700c100  and r1, r2, r12
000ae4  670b1ffc  storeli.w r1, -336(r30)
000ae8  1381a304  setlt.u r2, r7, r10
000aec  e345bffb  loadli.w r11,  -548(r30)
000af0  63439ffb  loadli.w r6,  -564(r30)
000af4  3b600100  bneq r2, zero, 24
000af8  1b410201  srli r2, r4, 16
000afc  1b011100  andi r2, r2, 1
000b00  0b112210  add.s r2, r4, r2
000b04  0b11e110  add.s r2, r2, r14
000b08  1703c100  and r6, r2, r12
000b0c  13818304  setlt.u r2, r7, r8
000b10  6305bffb  loadli.w r10,  -552(r30)
000b14  6304affb  loadli.w r8,  -560(r30)
000b18  3b700100  bneq r2, zero, 28
000b1c  e3003ffb  loadli.w r1,  -616(r30)
000b20  1bc10001  srli r2, r1, 16
000b24  1b011100  andi r2, r2, 1
000b28  0b912010  add.s r2, r1, r2
000b2c  0b11e110  add.s r2, r2, r14
000b30  1704c100  and r8, r2, r12
000b34  13819304  setlt.u r2, r7, r9
000b38  e344affb  loadli.w r9,  -556(r30)
000b3c  63025ffd  loadli.w r4,  -344(r30)
000b40  3b700100  bneq r2, zero, 28
000b44  e3403ffb  loadli.w r1,  -612(r30)
000b48  1bc10001  srli r2, r1, 16
000b4c  1b011100  andi r2, r2, 1
000b50  0b912010  add.s r2, r1, r2
000b54  0b11e110  add.s r2, r2, r14
000b58  9704c100  and r9, r2, r12
000b5c  13813304  setlt.u r2, r7, r3
000b60  e3026ffd  loadli.w r5,  -336(r30)
000b64  3b700100  bneq r2, zero, 28
000b68  e3004ffb  loadli.w r1,  -608(r30)
000b6c  1bc10001  srli r2, r1, 16
000b70  1b011100  andi r2, r2, 1
000b74  0b912010  add.s r2, r1, r2
000b78  0b11e110  add.s r2, r2, r14
000b7c  1705c100  and r10, r2, r12
000b80  13817305  setlt.u r2, r7, r23
000b84  e3414ffd  loadli.w r3,  -348(r30)
000b88  3b700100  bneq r2, zero, 28
000b8c  e3404ffb  loadli.w r1,  -604(r30)
000b90  1bc10001  srli r2, r1, 16
000b94  1b011100  andi r2, r2, 1
000b98  0b912010  add.s r2, r1, r2
000b9c  0b11e110  add.s r2, r2, r14
000ba0  9705c100  and r11, r2, r12
000ba4  1381b305  setlt.u r2, r7, r27
000ba8  3b700100  bneq r2, zero, 28
000bac  e3005ffb  loadli.w r1,  -600(r30)
000bb0  1bc10001  srli r2, r1, 16
000bb4  1b011100  andi r2, r2, 1
000bb8  0b912010  add.s r2, r1, r2
000bbc  0b11e110  add.s r2, r2, r14
000bc0  170bc100  and r22, r2, r12
000bc4  e3007ffb  loadli.w r1,  -584(r30)
000bc8  13811304  setlt.u r2, r7, r1
000bcc  3b600100  bneq r2, zero, 24
000bd0  1b410c01  srli r2, r24, 16
000bd4  1b011100  andi r2, r2, 1
000bd8  0b112c10  add.s r2, r24, r2
000bdc  0b11e110  add.s r2, r2, r14
000be0  9707c100  and r15, r2, r12
000be4  e3407ffb  loadli.w r1,  -580(r30)
000be8  e34c0ffb  loadli.w r25,  -636(r30)
000bec  6308cffb  loadli.w r16,  -544(r30)
000bf0  13811304  setlt.u r2, r7, r1
000bf4  3b700100  bneq r2, zero, 28
000bf8  e3001ffd  loadli.w r1,  -376(r30)
000bfc  1bc10001  srli r2, r1, 16
000c00  1b011100  andi r2, r2, 1
000c04  0b912010  add.s r2, r1, r2
000c08  0b11e110  add.s r2, r2, r14
000c0c  1708c100  and r16, r2, r12
000c10  e3008ffb  loadli.w r1,  -576(r30)
000c14  93801304  setlt.u r1, r7, r1
000c18  3bf00000  bneq r1, zero, 28
000c1c  63415ffb  loadli.w r2,  -596(r30)
000c20  9b400101  srli r1, r2, 16
000c24  9b801000  andi r1, r1, 1
000c28  8b101110  add.s r1, r2, r1
000c2c  8b90e010  add.s r1, r1, r14
000c30  978ac000  and r21, r1, r12
000c34  e3408ffb  loadli.w r1,  -572(r30)
000c38  63013ffd  loadli.w r2,  -360(r30)
000c3c  93801304  setlt.u r1, r7, r1
000c40  3bf00000  bneq r1, zero, 28
000c44  63092ffd  loadli.w r18,  -368(r30)
000c48  9b400901  srli r1, r18, 16
000c4c  9b801000  andi r1, r1, 1
000c50  8b101910  add.s r1, r18, r1
000c54  8b90e010  add.s r1, r1, r14
000c58  1789c000  and r18, r1, r12
000c5c  e3009ffb  loadli.w r1,  -568(r30)
000c60  ab094000  lui r19, 1024
000c64  93801304  setlt.u r1, r7, r1
000c68  3bf00000  bneq r1, zero, 28
000c6c  e3086ffb  loadli.w r17,  -592(r30)
000c70  9bc00801  srli r1, r17, 16
000c74  9b801000  andi r1, r1, 1
000c78  8b901810  add.s r1, r17, r1
000c7c  8b90e010  add.s r1, r1, r14
000c80  9788c000  and r17, r1, r12
000c84  9380c305  setlt.u r1, r7, r28
000c88  3bf00000  bneq r1, zero, 28
000c8c  e3436ffb  loadli.w r7,  -588(r30)
000c90  9bc00301  srli r1, r7, 16
000c94  9b801000  andi r1, r1, 1
000c98  8b901310  add.s r1, r7, r1
000c9c  8b90e010  add.s r1, r1, r14
000ca0  178ac000  and r20, r1, r12
000ca4  9700d100  and r1, r2, r13
000ca8  2b0e807f  lui r28, 522240
000cac  93001e04  setlt.u r1, r28, r1
000cb0  3be00000  bneq r1, zero, 24
000cb4  9b400101  srli r1, r2, 16
000cb8  9b801000  andi r1, r1, 1
000cbc  8b101110  add.s r1, r2, r1
000cc0  0b91e010  add.s r2, r1, r14
000cc4  5b010000  j 8
000cc8  17113101  or r2, r2, r19
000ccc  9780d100  and r1, r3, r13
000cd0  93001e04  setlt.u r1, r28, r1
000cd4  3be00000  bneq r1, zero, 24
000cd8  9bc00101  srli r1, r3, 16
000cdc  9b801000  andi r1, r1, 1
000ce0  8b901110  add.s r1, r3, r1
000ce4  8b91e010  add.s r3, r1, r14
000ce8  5b010000  j 8
000cec  97913101  or r3, r3, r19
000cf0  9700d200  and r1, r4, r13
000cf4  93001e04  setlt.u r1, r28, r1
000cf8  3be00000  bneq r1, zero, 24
000cfc  9b400201  srli r1, r4, 16
000d00  9b801000  andi r1, r1, 1
000d04  8b101210  add.s r1, r4, r1
000d08  0b92e010  add.s r4, r1, r14
000d0c  5b010000  j 8
000d10  17123201  or r4, r4, r19
000d14  9780d200  and r1, r5, r13
000d18  93001e04  setlt.u r1, r28, r1
000d1c  3be00000  bneq r1, zero, 24
000d20  9bc00201  srli r1, r5, 16
000d24  9b801000  andi r1, r1, 1
000d28  8b901210  add.s r1, r5, r1
000d2c  8b92e010  add.s r5, r1, r14
000d30  5b010000  j 8
000d34  97923201  or r5, r5, r19
000d38  9700d300  and r1, r6, r13
000d3c  93001e04  setlt.u r1, r28, r1
000d40  3be00000  bneq r1, zero, 24
000d44  9b400301  srli r1, r6, 16
000d48  9b801000  andi r1, r1, 1
000d4c  8b101310  add.s r1, r6, r1
000d50  0b93e010  add.s r6, r1, r14
000d54  5b010000  j 8
000d58  17133301  or r6, r6, r19
000d5c  9700d400  and r1, r8, r13
000d60  93001e04  setlt.u r1, r28, r1
000d64  3be00000  bneq r1, zero, 24
000d68  9b400401  srli r1, r8, 16
000d6c  9b801000  andi r1, r1, 1
000d70  8b101410  add.s r1, r8, r1
000d74  0b94e010  add.s r8, r1, r14
000d78  5b010000  j 8
000d7c  17143401  or r8, r8, r19
000d80  9780d400  and r1, r9, r13
000d84  93001e04  setlt.u r1, r28, r1
000d88  3be00000  bneq r1, zero, 24
000d8c  9bc00401  srli r1, r9, 16
000d90  9b801000  andi r1, r1, 1
000d94  8b901410  add.s r1, r9, r1
000d98  8b94e010  add.s r9, r1, r14
000d9c  5b010000  j 8
000da0  97943401  or r9, r9, r19
000da4  9700d500  and r1, r10, r13
000da8  93001e04  setlt.u r1, r28, r1
000dac  3be00000  bneq r1, zero, 24
000db0  9b400501  srli r1, r10, 16
000db4  9b801000  andi r1, r1, 1
000db8  8b101510  add.s r1, r10, r1
000dbc  0b95e010  add.s r10, r1, r14
000dc0  5b010000  j 8
000dc4  17153501  or r10, r10, r19
000dc8  9780d500  and r1, r11, r13
000dcc  93001e04  setlt.u r1, r28, r1
000dd0  3be00000  bneq r1, zero, 24
000dd4  9bc00501  srli r1, r11, 16
000dd8  9b801000  andi r1, r1, 1
000ddc  8b901510  add.s r1, r11, r1
000de0  8b95e010  add.s r11, r1, r14
000de4  5b010000  j 8
000de8  97953501  or r11, r11, r19
000dec  9700db00  and r1, r22, r13
000df0  93001e04  setlt.u r1, r28, r1
000df4  3be00000  bneq r1, zero, 24
000df8  9b400b01  srli r1, r22, 16
000dfc  9b801000  andi r1, r1, 1
000e00  8b101b10  add.s r1, r22, r1
000e04  0b96e010  add.s r12, r1, r14
000e08  5b010000  j 8
000e0c  17163b01  or r12, r22, r19
000e10  9780d700  and r1, r15, r13
000e14  93001e04  setlt.u r1, r28, r1
000e18  3be00000  bneq r1, zero, 24
000e1c  9bc00701  srli r1, r15, 16
000e20  9b801000  andi r1, r1, 1
000e24  8b901710  add.s r1, r15, r1
000e28  8b97e010  add.s r15, r1, r14
000e2c  5b010000  j 8
000e30  97973701  or r15, r15, r19
000e34  9700d800  and r1, r16, r13
000e38  93001e04  setlt.u r1, r28, r1
000e3c  3be00000  bneq r1, zero, 24
000e40  9b400801  srli r1, r16, 16
000e44  9b801000  andi r1, r1, 1
000e48  8b101810  add.s r1, r16, r1
000e4c  0b98e010  add.s r16, r1, r14
000e50  5b010000  j 8
000e54  17183801  or r16, r16, r19
000e58  9780da00  and r1, r21, r13
000e5c  93001e04  setlt.u r1, r28, r1
000e60  3be00000  bneq r1, zero, 24
000e64  9bc00a01  srli r1, r21, 16
000e68  9b801000  andi r1, r1, 1
000e6c  8b901a10  add.s r1, r21, r1
000e70  8b93e010  add.s r7, r1, r14
000e74  5b010000  j 8
000e78  97933a01  or r7, r21, r19
000e7c  9700d900  and r1, r18, r13
000e80  93001e04  setlt.u r1, r28, r1
000e84  3be00000  bneq r1, zero, 24
000e88  9b400901  srli r1, r18, 16
000e8c  9b801000  andi r1, r1, 1
000e90  8b101910  add.s r1, r18, r1
000e94  0b97e010  add.s r14, r1, r14
000e98  5b010000  j 8
000e9c  17173901  or r14, r18, r19
000ea0  9780d800  and r1, r17, r13
000ea4  93001e04  setlt.u r1, r28, r1
000ea8  3bf00000  bneq r1, zero, 28
000eac  9bc00801  srli r1, r17, 16
000eb0  9b801000  andi r1, r1, 1
000eb4  8b901810  add.s r1, r17, r1
000eb8  e3487ffd  loadli.w r17,  -324(r30)
000ebc  0b991011  add.s r18, r1, r17
000ec0  5b010000  j 8
000ec4  17993801  or r18, r17, r19
000ec8  9700da00  and r1, r20, r13
000ecc  93001e04  setlt.u r1, r28, r1
000ed0  3bf00000  bneq r1, zero, 28
000ed4  9b400a01  srli r1, r20, 16
000ed8  e3487ffd  loadli.w r17,  -324(r30)
000edc  9b801000  andi r1, r1, 1
000ee0  8b101a10  add.s r1, r20, r1
000ee4  8b991011  add.s r19, r1, r17
000ee8  5b010000  j 8
000eec  97193a01  or r19, r20, r19
000ef0  2b0affff  lui r20, 1048560
000ef4  97004101  and r1, r2, r20
000ef8  97814101  and r3, r3, r20
000efc  17024201  and r4, r4, r20
000f00  97824201  and r5, r5, r20
000f04  17034301  and r6, r6, r20
000f08  17044401  and r8, r8, r20
000f0c  97844401  and r9, r9, r20
000f10  17054501  and r10, r10, r20
000f14  97854501  and r11, r11, r20
000f18  17064601  and r12, r12, r20
000f1c  97874701  and r15, r15, r20
000f20  97084801  and r17, r16, r20
000f24  978a4301  and r21, r7, r20
000f28  170b4701  and r22, r14, r20
000f2c  970b4901  and r23, r18, r20
000f30  178c4901  and r24, r19, r20
000f34  1f018000  addli r2, zero, 64
000f38  3f302d00  blt.s r26, r2, 12
000f3c  1f010000  addli r2, zero, 0
000f40  5b080000  j 64
000f44  0be13010  add.f.rn r2, r1, r3
000f48  0b614110  add.f.rn r2, r2, r4
000f4c  0b615110  add.f.rn r2, r2, r5
000f50  0b616110  add.f.rn r2, r2, r6
000f54  0b618110  add.f.rn r2, r2, r8
000f58  0b619110  add.f.rn r2, r2, r9
000f5c  0b61a110  add.f.rn r2, r2, r10
000f60  0b61b110  add.f.rn r2, r2, r11
000f64  0b61c110  add.f.rn r2, r2, r12
000f68  0b61f110  add.f.rn r2, r2, r15
000f6c  0b611111  add.f.rn r2, r2, r17
000f70  0b615111  add.f.rn r2, r2, r21
000f74  0b616111  add.f.rn r2, r2, r22
000f78  0b617111  add.f.rn r2, r2, r23
000f7c  0b618111  add.f.rn r2, r2, r24
000f80  e3431ffb  loadli.w r7,  -628(r30)
000f84  63477ffd  loadli.w r14,  -324(r30)
000f88  73e02300  stores.w r2, 0(r7)
000f8c  00a00300  mfence { lm, sm, gm }
000f90  80a10c04  csr_set csr3, r25
000f94  00d00100  sync_group
000f98  63410ffd  loadli.w r2,  -380(r30)
000f9c  3b380100  bneq r2, zero, 524
000fa0  63492ffb  loadli.w r18,  -620(r30)
000fa4  6f410900  loads.w r2, 0(r18)
000fa8  ef434900  loads.w r7, 4(r18)
000fac  6f488900  loads.w r16, 8(r18)
000fb0  6f470901  loads.w r14, 16(r18)
000fb4  0b617110  add.f.rn r2, r2, r7
000fb8  ef43c900  loads.w r7, 12(r18)
000fbc  0b610111  add.f.rn r2, r2, r16
000fc0  0b617110  add.f.rn r2, r2, r7
000fc4  ef434901  loads.w r7, 20(r18)
000fc8  0b61e110  add.f.rn r2, r2, r14
000fcc  6f478901  loads.w r14, 24(r18)
000fd0  0b617110  add.f.rn r2, r2, r7
000fd4  ef43c901  loads.w r7, 28(r18)
000fd8  0b61e110  add.f.rn r2, r2, r14
000fdc  6f470902  loads.w r14, 32(r18)
000fe0  0b617110  add.f.rn r2, r2, r7
000fe4  ef434902  loads.w r7, 36(r18)
000fe8  0b61e110  add.f.rn r2, r2, r14
000fec  6f478902  loads.w r14, 40(r18)
000ff0  0b617110  add.f.rn r2, r2, r7
000ff4  ef43c902  loads.w r7, 44(r18)
000ff8  0b61e110  add.f.rn r2, r2, r14
000ffc  6f470903  loads.w r14, 48(r18)
001000  0b617110  add.f.rn r2, r2, r7
001004  ef434903  loads.w r7, 52(r18)
001008  0b61e110  add.f.rn r2, r2, r14
00100c  6f478903  loads.w r14, 56(r18)
001010  0b617110  add.f.rn r2, r2, r7
001014  ef43c903  loads.w r7, 60(r18)
001018  0b61e110  add.f.rn r2, r2, r14
00101c  6f470904  loads.w r14, 64(r18)
001020  0b617110  add.f.rn r2, r2, r7
001024  ef434904  loads.w r7, 68(r18)
001028  0b61e110  add.f.rn r2, r2, r14
00102c  6f478904  loads.w r14, 72(r18)
001030  0b617110  add.f.rn r2, r2, r7
001034  ef43c904  loads.w r7, 76(r18)
001038  0b61e110  add.f.rn r2, r2, r14
00103c  6f470905  loads.w r14, 80(r18)
001040  0b617110  add.f.rn r2, r2, r7
001044  ef434905  loads.w r7, 84(r18)
001048  0b61e110  add.f.rn r2, r2, r14
00104c  6f478905  loads.w r14, 88(r18)
001050  0b617110  add.f.rn r2, r2, r7
001054  ef43c905  loads.w r7, 92(r18)
001058  0b61e110  add.f.rn r2, r2, r14
00105c  6f470906  loads.w r14, 96(r18)
001060  0b617110  add.f.rn r2, r2, r7
001064  ef434906  loads.w r7, 100(r18)
001068  0b61e110  add.f.rn r2, r2, r14
00106c  6f478906  loads.w r14, 104(r18)
001070  0b617110  add.f.rn r2, r2, r7
001074  ef43c906  loads.w r7, 108(r18)
001078  0b61e110  add.f.rn r2, r2, r14
00107c  6f470907  loads.w r14, 112(r18)
001080  0b617110  add.f.rn r2, r2, r7
001084  ef434907  loads.w r7, 116(r18)
001088  0b61e110  add.f.rn r2, r2, r14
00108c  6f478907  loads.w r14, 120(r18)
001090  0b617110  add.f.rn r2, r2, r7
001094  ef43c907  loads.w r7, 124(r18)
001098  0b61e110  add.f.rn r2, r2, r14
00109c  6f470908  loads.w r14, 128(r18)
0010a0  0b617110  add.f.rn r2, r2, r7
0010a4  ef434908  loads.w r7, 132(r18)
0010a8  0b61e110  add.f.rn r2, r2, r14
0010ac  6f478908  loads.w r14, 136(r18)
0010b0  0b617110  add.f.rn r2, r2, r7
0010b4  ef43c908  loads.w r7, 140(r18)
0010b8  0b61e110  add.f.rn r2, r2, r14
0010bc  6f470909  loads.w r14, 144(r18)
0010c0  0b617110  add.f.rn r2, r2, r7
0010c4  ef434909  loads.w r7, 148(r18)
0010c8  0b61e110  add.f.rn r2, r2, r14
0010cc  6f478909  loads.w r14, 152(r18)
0010d0  0b617110  add.f.rn r2, r2, r7
0010d4  ef43c909  loads.w r7, 156(r18)
0010d8  0b61e110  add.f.rn r2, r2, r14
0010dc  6f47090a  loads.w r14, 160(r18)
0010e0  0b617110  add.f.rn r2, r2, r7
0010e4  ef43490a  loads.w r7, 164(r18)
0010e8  0b61e110  add.f.rn r2, r2, r14
0010ec  6f47890a  loads.w r14, 168(r18)
0010f0  0b617110  add.f.rn r2, r2, r7
0010f4  ef43c90a  loads.w r7, 172(r18)
0010f8  0b61e110  add.f.rn r2, r2, r14
0010fc  6f47090b  loads.w r14, 176(r18)
001100  0b617110  add.f.rn r2, r2, r7
001104  ef43490b  loads.w r7, 180(r18)
001108  0b61e110  add.f.rn r2, r2, r14
00110c  6f47890b  loads.w r14, 184(r18)
001110  0b617110  add.f.rn r2, r2, r7
001114  ef43c90b  loads.w r7, 188(r18)
001118  0b61e110  add.f.rn r2, r2, r14
00111c  6f47090c  loads.w r14, 192(r18)
001120  0b617110  add.f.rn r2, r2, r7
001124  ef43490c  loads.w r7, 196(r18)
001128  0b61e110  add.f.rn r2, r2, r14
00112c  6f47890c  loads.w r14, 200(r18)
001130  0b617110  add.f.rn r2, r2, r7
001134  ef43c90c  loads.w r7, 204(r18)
001138  0b61e110  add.f.rn r2, r2, r14
00113c  6f47090d  loads.w r14, 208(r18)
001140  0b617110  add.f.rn r2, r2, r7
001144  ef43490d  loads.w r7, 212(r18)
001148  0b61e110  add.f.rn r2, r2, r14
00114c  6f47890d  loads.w r14, 216(r18)
001150  0b617110  add.f.rn r2, r2, r7
001154  ef43c90d  loads.w r7, 220(r18)
001158  0b61e110  add.f.rn r2, r2, r14
00115c  6f47090e  loads.w r14, 224(r18)
001160  0b617110  add.f.rn r2, r2, r7
001164  ef43490e  loads.w r7, 228(r18)
001168  0b61e110  add.f.rn r2, r2, r14
00116c  6f47890e  loads.w r14, 232(r18)
001170  0b617110  add.f.rn r2, r2, r7
001174  ef43c90e  loads.w r7, 236(r18)
001178  0b61e110  add.f.rn r2, r2, r14
00117c  6f47090f  loads.w r14, 240(r18)
001180  0b617110  add.f.rn r2, r2, r7
001184  ef43490f  loads.w r7, 244(r18)
001188  0b61e110  add.f.rn r2, r2, r14
00118c  6f47890f  loads.w r14, 248(r18)
001190  0b617110  add.f.rn r2, r2, r7
001194  ef43c90f  loads.w r7, 252(r18)
001198  0b61e110  add.f.rn r2, r2, r14
00119c  63477ffd  loadli.w r14,  -324(r30)
0011a0  0b617110  add.f.rn r2, r2, r7
0011a4  73602900  stores.w r2, 0(r18)
0011a8  00a00300  mfence { lm, sm, gm }
0011ac  80a10c04  csr_set csr3, r25
0011b0  00d00100  sync_group
0011b4  63412ffb  loadli.w r2,  -620(r30)
0011b8  ab03803a  lui r7, 239616
0011bc  6f410100  loads.w r2, 0(r2)
0011c0  8b637120  mul.f.rn r7, r2, r7
0011c4  0be17018  sub.f.rn r2, r1, r7
0011c8  8be07118  sub.f.rn r1, r3, r7
0011cc  0b6a7218  sub.f.rn r20, r4, r7
0011d0  8be97218  sub.f.rn r19, r5, r7
0011d4  8b627418  sub.f.rn r5, r8, r7
0011d8  0be27418  sub.f.rn r4, r9, r7
0011dc  8b6d7518  sub.f.rn r27, r10, r7
0011e0  0be57518  sub.f.rn r10, r11, r7
0011e4  8b647618  sub.f.rn r9, r12, r7
0011e8  0be47718  sub.f.rn r8, r15, r7
0011ec  0b687318  sub.f.rn r16, r6, r7
0011f0  0be97818  sub.f.rn r18, r17, r7
0011f4  8be77a18  sub.f.rn r15, r21, r7
0011f8  0b667b18  sub.f.rn r12, r22, r7
0011fc  8be57b18  sub.f.rn r11, r23, r7
001200  8b637c18  sub.f.rn r7, r24, r7
001204  9f018000  addli r3, zero, 64
001208  670e7ffa  storeli.w r7, -544(r30)
00120c  3f503d00  blt.s r26, r3, 20
001210  1f8d0400  addli r26, r9, 0
001214  1f0b0400  addli r22, r8, 0
001218  9f010000  addli r3, zero, 0
00121c  5b110000  j 136
001220  8b612120  mul.f.rn r3, r2, r2
001224  0be31020  mul.f.rn r6, r1, r1
001228  1f8d0400  addli r26, r9, 0
00122c  1f0b0400  addli r22, r8, 0
001230  8be16110  add.f.rn r3, r3, r6
001234  0b634a21  mul.f.rn r6, r20, r20
001238  8b613310  add.f.rn r3, r6, r3
00123c  0be33921  mul.f.rn r6, r19, r19
001240  8b613310  add.f.rn r3, r6, r3
001244  0b630821  mul.f.rn r6, r16, r16
001248  8b613310  add.f.rn r3, r6, r3
00124c  0be35220  mul.f.rn r6, r5, r5
001250  8b613310  add.f.rn r3, r6, r3
001254  0b634220  mul.f.rn r6, r4, r4
001258  8b613310  add.f.rn r3, r6, r3
00125c  0be3bd21  mul.f.rn r6, r27, r27
001260  8b613310  add.f.rn r3, r6, r3
001264  0b63a520  mul.f.rn r6, r10, r10
001268  8b613310  add.f.rn r3, r6, r3
00126c  0be39420  mul.f.rn r6, r9, r9
001270  8b613310  add.f.rn r3, r6, r3
001274  0b638420  mul.f.rn r6, r8, r8
001278  8b613310  add.f.rn r3, r6, r3
00127c  0b632921  mul.f.rn r6, r18, r18
001280  8b613310  add.f.rn r3, r6, r3
001284  0be3f720  mul.f.rn r6, r15, r15
001288  8b613310  add.f.rn r3, r6, r3
00128c  0b63c620  mul.f.rn r6, r12, r12
001290  8b613310  add.f.rn r3, r6, r3
001294  0be3b520  mul.f.rn r6, r11, r11
001298  8b613310  add.f.rn r3, r6, r3
00129c  0be37320  mul.f.rn r6, r7, r7
0012a0  8b613310  add.f.rn r3, r6, r3
0012a4  6343fffa  loadli.w r6,  -644(r30)
0012a8  ab044000  lui r9, 1024
0012ac  73603300  stores.w r3, 0(r6)
0012b0  00a00300  mfence { lm, sm, gm }
0012b4  80a10c04  csr_set csr3, r25
0012b8  00d00100  sync_group
0012bc  e3410ffd  loadli.w r3,  -380(r30)
0012c0  3ba80100  bneq r3, zero, 520
0012c4  63042ffb  loadli.w r8,  -624(r30)
0012c8  ef410400  loads.w r3, 0(r8)
0012cc  ef434400  loads.w r7, 4(r8)
0012d0  6f438400  loads.w r6, 8(r8)
0012d4  8be17110  add.f.rn r3, r3, r7
0012d8  ef43c400  loads.w r7, 12(r8)
0012dc  8be16110  add.f.rn r3, r3, r6
0012e0  6f430401  loads.w r6, 16(r8)
0012e4  8be17110  add.f.rn r3, r3, r7
0012e8  ef434401  loads.w r7, 20(r8)
0012ec  8be16110  add.f.rn r3, r3, r6
0012f0  6f438401  loads.w r6, 24(r8)
0012f4  8be17110  add.f.rn r3, r3, r7
0012f8  ef43c401  loads.w r7, 28(r8)
0012fc  8be16110  add.f.rn r3, r3, r6
001300  6f430402  loads.w r6, 32(r8)
001304  8be17110  add.f.rn r3, r3, r7
001308  ef434402  loads.w r7, 36(r8)
00130c  8be16110  add.f.rn r3, r3, r6
001310  6f438402  loads.w r6, 40(r8)
001314  8be17110  add.f.rn r3, r3, r7
001318  ef43c402  loads.w r7, 44(r8)
00131c  8be16110  add.f.rn r3, r3, r6
001320  6f430403  loads.w r6, 48(r8)
001324  8be17110  add.f.rn r3, r3, r7
001328  ef434403  loads.w r7, 52(r8)
00132c  8be16110  add.f.rn r3, r3, r6
001330  6f438403  loads.w r6, 56(r8)
001334  8be17110  add.f.rn r3, r3, r7
001338  ef43c403  loads.w r7, 60(r8)
00133c  8be16110  add.f.rn r3, r3, r6
001340  6f430404  loads.w r6, 64(r8)
001344  8be17110  add.f.rn r3, r3, r7
001348  ef434404  loads.w r7, 68(r8)
00134c  8be16110  add.f.rn r3, r3, r6
001350  6f438404  loads.w r6, 72(r8)
001354  8be17110  add.f.rn r3, r3, r7
001358  ef43c404  loads.w r7, 76(r8)
00135c  8be16110  add.f.rn r3, r3, r6
001360  6f430405  loads.w r6, 80(r8)
001364  8be17110  add.f.rn r3, r3, r7
001368  ef434405  loads.w r7, 84(r8)
00136c  8be16110  add.f.rn r3, r3, r6
001370  6f438405  loads.w r6, 88(r8)
001374  8be17110  add.f.rn r3, r3, r7
001378  ef43c405  loads.w r7, 92(r8)
00137c  8be16110  add.f.rn r3, r3, r6
001380  6f430406  loads.w r6, 96(r8)
001384  8be17110  add.f.rn r3, r3, r7
001388  ef434406  loads.w r7, 100(r8)
00138c  8be16110  add.f.rn r3, r3, r6
001390  6f438406  loads.w r6, 104(r8)
001394  8be17110  add.f.rn r3, r3, r7
001398  ef43c406  loads.w r7, 108(r8)
00139c  8be16110  add.f.rn r3, r3, r6
0013a0  6f430407  loads.w r6, 112(r8)
0013a4  8be17110  add.f.rn r3, r3, r7
0013a8  ef434407  loads.w r7, 116(r8)
0013ac  8be16110  add.f.rn r3, r3, r6
0013b0  6f438407  loads.w r6, 120(r8)
0013b4  8be17110  add.f.rn r3, r3, r7
0013b8  ef43c407  loads.w r7, 124(r8)
0013bc  8be16110  add.f.rn r3, r3, r6
0013c0  6f430408  loads.w r6, 128(r8)
0013c4  8be17110  add.f.rn r3, r3, r7
0013c8  ef434408  loads.w r7, 132(r8)
0013cc  8be16110  add.f.rn r3, r3, r6
0013d0  6f438408  loads.w r6, 136(r8)
0013d4  8be17110  add.f.rn r3, r3, r7
0013d8  ef43c408  loads.w r7, 140(r8)
0013dc  8be16110  add.f.rn r3, r3, r6
0013e0  6f430409  loads.w r6, 144(r8)
0013e4  8be17110  add.f.rn r3, r3, r7
0013e8  ef434409  loads.w r7, 148(r8)
0013ec  8be16110  add.f.rn r3, r3, r6
0013f0  6f438409  loads.w r6, 152(r8)
0013f4  8be17110  add.f.rn r3, r3, r7
0013f8  ef43c409  loads.w r7, 156(r8)
0013fc  8be16110  add.f.rn r3, r3, r6
001400  6f43040a  loads.w r6, 160(r8)
001404  8be17110  add.f.rn r3, r3, r7
001408  ef43440a  loads.w r7, 164(r8)
00140c  8be16110  add.f.rn r3, r3, r6
001410  6f43840a  loads.w r6, 168(r8)
001414  8be17110  add.f.rn r3, r3, r7
001418  ef43c40a  loads.w r7, 172(r8)
00141c  8be16110  add.f.rn r3, r3, r6
001420  6f43040b  loads.w r6, 176(r8)
001424  8be17110  add.f.rn r3, r3, r7
001428  ef43440b  loads.w r7, 180(r8)
00142c  8be16110  add.f.rn r3, r3, r6
001430  6f43840b  loads.w r6, 184(r8)
001434  8be17110  add.f.rn r3, r3, r7
001438  ef43c40b  loads.w r7, 188(r8)
00143c  8be16110  add.f.rn r3, r3, r6
001440  6f43040c  loads.w r6, 192(r8)
001444  8be17110  add.f.rn r3, r3, r7
001448  ef43440c  loads.w r7, 196(r8)
00144c  8be16110  add.f.rn r3, r3, r6
001450  6f43840c  loads.w r6, 200(r8)
001454  8be17110  add.f.rn r3, r3, r7
001458  ef43c40c  loads.w r7, 204(r8)
00145c  8be16110  add.f.rn r3, r3, r6
001460  6f43040d  loads.w r6, 208(r8)
001464  8be17110  add.f.rn r3, r3, r7
001468  ef43440d  loads.w r7, 212(r8)
00146c  8be16110  add.f.rn r3, r3, r6
001470  6f43840d  loads.w r6, 216(r8)
001474  8be17110  add.f.rn r3, r3, r7
001478  ef43c40d  loads.w r7, 220(r8)
00147c  8be16110  add.f.rn r3, r3, r6
001480  6f43040e  loads.w r6, 224(r8)
001484  8be17110  add.f.rn r3, r3, r7
001488  ef43440e  loads.w r7, 228(r8)
00148c  8be16110  add.f.rn r3, r3, r6
001490  6f43840e  loads.w r6, 232(r8)
001494  8be17110  add.f.rn r3, r3, r7
001498  ef43c40e  loads.w r7, 236(r8)
00149c  8be16110  add.f.rn r3, r3, r6
0014a0  6f43040f  loads.w r6, 240(r8)
0014a4  8be17110  add.f.rn r3, r3, r7
0014a8  ef43440f  loads.w r7, 244(r8)
0014ac  8be16110  add.f.rn r3, r3, r6
0014b0  6f43840f  loads.w r6, 248(r8)
0014b4  8be17110  add.f.rn r3, r3, r7
0014b8  ef43c40f  loads.w r7, 252(r8)
0014bc  8be16110  add.f.rn r3, r3, r6
0014c0  8be17110  add.f.rn r3, r3, r7
0014c4  73603400  stores.w r3, 0(r8)
0014c8  00a00300  mfence { lm, sm, gm }
0014cc  80a10c04  csr_set csr3, r25
0014d0  00d00100  sync_group
0014d4  e3012ffb  loadli.w r3,  -624(r30)
0014d8  2b03803a  lui r6, 239616
0014dc  efc10100  loads.w r3, 0(r3)
0014e0  8be16120  mul.f.rn r3, r3, r6
0014e4  63434ffa  loadli.w r6,  -732(r30)
0014e8  8be16110  add.f.rn r3, r3, r6
0014ec  2b03803f  lui r6, 260096
0014f0  8f810108  sqrt.f.rn r3, r3
0014f4  8f083318  div.f.rn r17, r6, r3
0014f8  e301dffb  loadli.w r3,  -536(r30)
0014fc  b3910118  bfloat2float.rn r3, r3
001500  0b611121  mul.f.rn r2, r2, r17
001504  0b613120  mul.f.rn r2, r2, r3
001508  e341cffb  loadli.w r3,  -540(r30)
00150c  b3910118  bfloat2float.rn r3, r3
001510  8b6a3110  add.f.rn r21, r2, r3
001514  1781da00  and r2, r21, r13
001518  e70e2ffa  storeli.w r2, -536(r30)
00151c  13012e04  setlt.u r2, r28, r2
001520  3b300100  bneq r2, zero, 12
001524  e7085ffd  storeli.w r21, -376(r30)
001528  db010000  j 12
00152c  17919a00  or r2, r21, r9
001530  e7082ffc  storeli.w r2, -376(r30)
001534  8be01021  mul.f.rn r1, r1, r17
001538  6301effb  loadli.w r2,  -528(r30)
00153c  33110118  bfloat2float.rn r2, r2
001540  8be02020  mul.f.rn r1, r1, r2
001544  6341dffb  loadli.w r2,  -532(r30)
001548  33110118  bfloat2float.rn r2, r2
00154c  8be02010  add.f.rn r1, r1, r2
001550  1781d000  and r2, r1, r13
001554  670f2ffa  storeli.w r2, -528(r30)
001558  13012e04  setlt.u r2, r28, r2
00155c  3b300100  bneq r2, zero, 12
001560  67091ffc  storeli.w r1, -368(r30)
001564  db010000  j 12
001568  17919000  or r2, r1, r9
00156c  67092ffc  storeli.w r2, -368(r30)
001570  0b611a21  mul.f.rn r2, r20, r17
001574  e301fffb  loadli.w r3,  -520(r30)
001578  b3910118  bfloat2float.rn r3, r3
00157c  0b613120  mul.f.rn r2, r2, r3
001580  e341effb  loadli.w r3,  -524(r30)
001584  b3910118  bfloat2float.rn r3, r3
001588  0b6c3110  add.f.rn r24, r2, r3
00158c  1701dc00  and r2, r24, r13
001590  e70f2ffa  storeli.w r2, -520(r30)
001594  13012e04  setlt.u r2, r28, r2
001598  3b300100  bneq r2, zero, 12
00159c  1f040c00  addli r8, r24, 0
0015a0  5b010000  j 8
0015a4  17149c00  or r8, r24, r9
0015a8  0be11921  mul.f.rn r2, r19, r17
0015ac  e3010ffc  loadli.w r3,  -512(r30)
0015b0  b3910118  bfloat2float.rn r3, r3
0015b4  0b613120  mul.f.rn r2, r2, r3
0015b8  e341fffb  loadli.w r3,  -516(r30)
0015bc  b3910118  bfloat2float.rn r3, r3
0015c0  8b693110  add.f.rn r19, r2, r3
0015c4  1781d900  and r2, r19, r13
0015c8  67002ffc  storeli.w r2, -512(r30)
0015cc  13012e04  setlt.u r2, r28, r2
0015d0  3b300100  bneq r2, zero, 12
0015d4  674a3ffd  storeli.w r19, -348(r30)
0015d8  db010000  j 12
0015dc  17919900  or r2, r19, r9
0015e0  674a2ffc  storeli.w r2, -348(r30)
0015e4  0b611821  mul.f.rn r2, r16, r17
0015e8  e3011ffc  loadli.w r3,  -504(r30)
0015ec  b3910118  bfloat2float.rn r3, r3
0015f0  0b613120  mul.f.rn r2, r2, r3
0015f4  e3410ffc  loadli.w r3,  -508(r30)
0015f8  b3910118  bfloat2float.rn r3, r3
0015fc  8b6b3110  add.f.rn r23, r2, r3
001600  1781db00  and r2, r23, r13
001604  e7002ffc  storeli.w r2, -504(r30)
001608  13012e04  setlt.u r2, r28, r2
00160c  3b300100  bneq r2, zero, 12
001610  1f830b00  addli r6, r23, 0
001614  5b010000  j 8
001618  17939b00  or r6, r23, r9
00161c  0be11221  mul.f.rn r2, r5, r17
001620  e3012ffc  loadli.w r3,  -496(r30)
001624  b3910118  bfloat2float.rn r3, r3
001628  0b613120  mul.f.rn r2, r2, r3
00162c  e3411ffc  loadli.w r3,  -500(r30)
001630  b3910118  bfloat2float.rn r3, r3
001634  8b623110  add.f.rn r5, r2, r3
001638  1781d200  and r2, r5, r13
00163c  67012ffc  storeli.w r2, -496(r30)
001640  13012e04  setlt.u r2, r28, r2
001644  3b300100  bneq r2, zero, 12
001648  670b5ffc  storeli.w r5, -336(r30)
00164c  db010000  j 12
001650  17919200  or r2, r5, r9
001654  670b2ffc  storeli.w r2, -336(r30)
001658  0b611221  mul.f.rn r2, r4, r17
00165c  e3013ffc  loadli.w r3,  -488(r30)
001660  b3910118  bfloat2float.rn r3, r3
001664  0b613120  mul.f.rn r2, r2, r3
001668  e3412ffc  loadli.w r3,  -492(r30)
00166c  b3910118  bfloat2float.rn r3, r3
001670  0b623110  add.f.rn r4, r2, r3
001674  1701d200  and r2, r4, r13
001678  67412ffc  storeli.w r2, -492(r30)
00167c  13012e04  setlt.u r2, r28, r2
001680  3b300100  bneq r2, zero, 12
001684  e7014ffc  storeli.w r4, -488(r30)
001688  db010000  j 12
00168c  17119200  or r2, r4, r9
001690  e7012ffc  storeli.w r2, -488(r30)
001694  0be11d21  mul.f.rn r2, r27, r17
001698  e3014ffc  loadli.w r3,  -480(r30)
00169c  b3910118  bfloat2float.rn r3, r3
0016a0  0b613120  mul.f.rn r2, r2, r3
0016a4  e3413ffc  loadli.w r3,  -484(r30)
0016a8  b3910118  bfloat2float.rn r3, r3
0016ac  0b683110  add.f.rn r16, r2, r3
0016b0  1701d800  and r2, r16, r13
0016b4  e7412ffc  storeli.w r2, -484(r30)
0016b8  13012e04  setlt.u r2, r28, r2
0016bc  3b300100  bneq r2, zero, 12
0016c0  1f010800  addli r2, r16, 0
0016c4  5b010000  j 8
0016c8  17119800  or r2, r16, r9
0016cc  67022ffc  storeli.w r2, -480(r30)
0016d0  0b611521  mul.f.rn r2, r10, r17
0016d4  e3015ffc  loadli.w r3,  -472(r30)
0016d8  b3910118  bfloat2float.rn r3, r3
0016dc  0b613120  mul.f.rn r2, r2, r3
0016e0  e3414ffc  loadli.w r3,  -476(r30)
0016e4  b3910118  bfloat2float.rn r3, r3
0016e8  0b653110  add.f.rn r10, r2, r3
0016ec  1701d500  and r2, r10, r13
0016f0  e7022ffc  storeli.w r2, -472(r30)
0016f4  13012e04  setlt.u r2, r28, r2
0016f8  3b300100  bneq r2, zero, 12
0016fc  9f0d0500  addli r27, r10, 0
001700  5b010000  j 8
001704  971d9500  or r27, r10, r9
001708  0b611d21  mul.f.rn r2, r26, r17
00170c  e3416ffc  loadli.w r3,  -460(r30)
001710  e70a6ffc  storeli.w r6, -344(r30)
001714  b3910118  bfloat2float.rn r3, r3
001718  0b613120  mul.f.rn r2, r2, r3
00171c  e3415ffc  loadli.w r3,  -468(r30)
001720  b3910118  bfloat2float.rn r3, r3
001724  8b613110  add.f.rn r3, r2, r3
001728  1781d100  and r2, r3, r13
00172c  e7422ffc  storeli.w r2, -468(r30)
001730  13012e04  setlt.u r2, r28, r2
001734  3b300100  bneq r2, zero, 12
001738  67433ffc  storeli.w r3, -460(r30)
00173c  db010000  j 12
001740  17919100  or r2, r3, r9
001744  67432ffc  storeli.w r2, -460(r30)
001748  0b611b21  mul.f.rn r2, r22, r17
00174c  63437ffc  loadli.w r6,  -452(r30)
001750  33130318  bfloat2float.rn r6, r6
001754  0b616120  mul.f.rn r2, r2, r6
001758  63036ffc  loadli.w r6,  -464(r30)
00175c  33130318  bfloat2float.rn r6, r6
001760  0b616110  add.f.rn r2, r2, r6
001764  1703d100  and r6, r2, r13
001768  e7436ffc  storeli.w r6, -452(r30)
00176c  13036e04  setlt.u r6, r28, r6
001770  3b500300  bneq r6, zero, 20
001774  2b0a4000  lui r20, 1024
001778  2b0d807f  lui r26, 522240
00177c  1f0e0100  addli r28, r2, 0
001780  5b020000  j 16
001784  2b0d807f  lui r26, 522240
001788  2b0a4000  lui r20, 1024
00178c  171e9100  or r28, r2, r9
001790  0b631921  mul.f.rn r6, r18, r17
001794  e3438ffc  loadli.w r7,  -444(r30)
001798  b3930318  bfloat2float.rn r7, r7
00179c  0b637320  mul.f.rn r6, r6, r7
0017a0  e3037ffc  loadli.w r7,  -456(r30)
0017a4  b3930318  bfloat2float.rn r7, r7
0017a8  0b6b7310  add.f.rn r22, r6, r7
0017ac  1703db00  and r6, r22, r13
0017b0  e7036ffc  storeli.w r6, -456(r30)
0017b4  13036d04  setlt.u r6, r26, r6
0017b8  3b300300  bneq r6, zero, 12
0017bc  67446ffd  storeli.w r22, -444(r30)
0017c0  db010000  j 12
0017c4  17134b01  or r6, r22, r20
0017c8  67446ffc  storeli.w r6, -444(r30)
0017cc  0be31721  mul.f.rn r6, r15, r17
0017d0  e3439ffc  loadli.w r7,  -436(r30)
0017d4  e7098ffc  storeli.w r8, -360(r30)
0017d8  b3930318  bfloat2float.rn r7, r7
0017dc  0b637320  mul.f.rn r6, r6, r7
0017e0  e3038ffc  loadli.w r7,  -448(r30)
0017e4  b3930318  bfloat2float.rn r7, r7
0017e8  0b637310  add.f.rn r6, r6, r7
0017ec  9704d300  and r9, r6, r13
0017f0  93039d04  setlt.u r7, r26, r9
0017f4  3bb00300  bneq r7, zero, 12
0017f8  e7446ffc  storeli.w r6, -436(r30)
0017fc  db010000  j 12
001800  97134301  or r7, r6, r20
001804  e7447ffc  storeli.w r7, -436(r30)
001808  8b631621  mul.f.rn r7, r12, r17
00180c  6344affc  loadli.w r8,  -428(r30)
001810  33140418  bfloat2float.rn r8, r8
001814  8be38320  mul.f.rn r7, r7, r8
001818  63049ffc  loadli.w r8,  -440(r30)
00181c  33140418  bfloat2float.rn r8, r8
001820  0be98310  add.f.rn r18, r7, r8
001824  9707d900  and r15, r18, r13
001828  9303fd04  setlt.u r7, r26, r15
00182c  3bb00300  bneq r7, zero, 12
001830  9f0c0900  addli r25, r18, 0
001834  5b010000  j 8
001838  971c4901  or r25, r18, r20
00183c  8be31521  mul.f.rn r7, r11, r17
001840  6304cffc  loadli.w r8,  -416(r30)
001844  33140418  bfloat2float.rn r8, r8
001848  8be38320  mul.f.rn r7, r7, r8
00184c  6304affc  loadli.w r8,  -432(r30)
001850  33140418  bfloat2float.rn r8, r8
001854  8be58310  add.f.rn r11, r7, r8
001858  1786d500  and r12, r11, r13
00185c  9303cd04  setlt.u r7, r26, r12
001860  3bb00300  bneq r7, zero, 12
001864  6706bffc  storeli.w r11, -416(r30)
001868  db010000  j 12
00186c  97934501  or r7, r11, r20
001870  67067ffc  storeli.w r7, -416(r30)
001874  e303cffb  loadli.w r7,  -544(r30)
001878  6304dffc  loadli.w r8,  -408(r30)
00187c  8be31321  mul.f.rn r7, r7, r17
001880  33140418  bfloat2float.rn r8, r8
001884  8be38320  mul.f.rn r7, r7, r8
001888  6304bffc  loadli.w r8,  -424(r30)
00188c  33140418  bfloat2float.rn r8, r8
001890  8be88310  add.f.rn r17, r7, r8
001894  1784d800  and r8, r17, r13
001898  93038d04  setlt.u r7, r26, r8
00189c  3bb00300  bneq r7, zero, 12
0018a0  1f8a0800  addli r20, r17, 0
0018a4  5b010000  j 8
0018a8  179a4801  or r20, r17, r20
0018ac  1f8d0d00  addli r26, r27, 0
0018b0  e3037ffd  loadli.w r7,  -328(r30)
0018b4  e30ddffb  loadli.w r27,  -536(r30)
0018b8  9383b305  setlt.u r7, r7, r27
0018bc  e30d4ffc  loadli.w r27,  -480(r30)
0018c0  bb800300  bneq r7, zero, 32
0018c4  9bc30a01  srli r7, r21, 16
0018c8  9b831300  andi r7, r7, 1
0018cc  8b937a10  add.s r7, r21, r7
0018d0  ab0affff  lui r21, 1048560
0018d4  8b93e310  add.s r7, r7, r14
0018d8  97835301  and r7, r7, r21
0018dc  e7087ffc  storeli.w r7, -376(r30)
0018e0  e3037ffd  loadli.w r7,  -328(r30)
0018e4  e30aeffb  loadli.w r21,  -528(r30)
0018e8  93835305  setlt.u r7, r7, r21
0018ec  bb800300  bneq r7, zero, 32
0018f0  9bc30001  srli r7, r1, 16
0018f4  9b831300  andi r7, r7, 1
0018f8  8b907010  add.s r1, r1, r7
0018fc  ab03ffff  lui r7, 1048560
001900  8b90e010  add.s r1, r1, r14
001904  97807000  and r1, r1, r7
001908  67091ffc  storeli.w r1, -368(r30)
00190c  e3037ffd  loadli.w r7,  -328(r30)
001910  e300fffb  loadli.w r1,  -520(r30)
001914  93801304  setlt.u r1, r7, r1
001918  bb800000  bneq r1, zero, 32
00191c  9b400c01  srli r1, r24, 16
001920  ab0affff  lui r21, 1048560
001924  9b801000  andi r1, r1, 1
001928  8b101c10  add.s r1, r24, r1
00192c  8b90e010  add.s r1, r1, r14
001930  97805001  and r1, r1, r21
001934  e7091ffc  storeli.w r1, -360(r30)
001938  e3000ffc  loadli.w r1,  -512(r30)
00193c  9f0a0e00  addli r21, r28, 0
001940  93801304  setlt.u r1, r7, r1
001944  bb800000  bneq r1, zero, 32
001948  9bc00901  srli r1, r19, 16
00194c  9b801000  andi r1, r1, 1
001950  8b901910  add.s r1, r19, r1
001954  ab09ffff  lui r19, 1048560
001958  8b90e010  add.s r1, r1, r14
00195c  97803001  and r1, r1, r19
001960  674a1ffc  storeli.w r1, -348(r30)
001964  e3001ffc  loadli.w r1,  -504(r30)
001968  630e3ffc  loadli.w r28,  -488(r30)
00196c  ab09ffff  lui r19, 1048560
001970  93801304  setlt.u r1, r7, r1
001974  3bf00000  bneq r1, zero, 28
001978  9bc00b01  srli r1, r23, 16
00197c  9b801000  andi r1, r1, 1
001980  8b901b10  add.s r1, r23, r1
001984  8b90e010  add.s r1, r1, r14
001988  97803001  and r1, r1, r19
00198c  e70a1ffc  storeli.w r1, -344(r30)
001990  e3002ffc  loadli.w r1,  -496(r30)
001994  93801304  setlt.u r1, r7, r1
001998  3bf00000  bneq r1, zero, 28
00199c  9bc00201  srli r1, r5, 16
0019a0  9b801000  andi r1, r1, 1
0019a4  8b901210  add.s r1, r5, r1
0019a8  8b90e010  add.s r1, r1, r14
0019ac  97803001  and r1, r1, r19
0019b0  670b1ffc  storeli.w r1, -336(r30)
0019b4  e3402ffc  loadli.w r1,  -492(r30)
0019b8  e34b6ffc  loadli.w r23,  -460(r30)
0019bc  93801304  setlt.u r1, r7, r1
0019c0  3be00000  bneq r1, zero, 24
0019c4  9b400201  srli r1, r4, 16
0019c8  9b801000  andi r1, r1, 1
0019cc  8b101210  add.s r1, r4, r1
0019d0  8b90e010  add.s r1, r1, r14
0019d4  178e3001  and r28, r1, r19
0019d8  e3403ffc  loadli.w r1,  -484(r30)
0019dc  93801304  setlt.u r1, r7, r1
0019e0  3be00000  bneq r1, zero, 24
0019e4  9b400801  srli r1, r16, 16
0019e8  9b801000  andi r1, r1, 1
0019ec  8b101810  add.s r1, r16, r1
0019f0  8b90e010  add.s r1, r1, r14
0019f4  978d3001  and r27, r1, r19
0019f8  e3005ffc  loadli.w r1,  -472(r30)
0019fc  93801304  setlt.u r1, r7, r1
001a00  3be00000  bneq r1, zero, 24
001a04  9b400501  srli r1, r10, 16
001a08  9b801000  andi r1, r1, 1
001a0c  8b101510  add.s r1, r10, r1
001a10  8b90e010  add.s r1, r1, r14
001a14  178d3001  and r26, r1, r19
001a18  e3405ffc  loadli.w r1,  -468(r30)
001a1c  93801304  setlt.u r1, r7, r1
001a20  3be00000  bneq r1, zero, 24
001a24  9bc00101  srli r1, r3, 16
001a28  9b801000  andi r1, r1, 1
001a2c  8b901110  add.s r1, r3, r1
001a30  8b90e010  add.s r1, r1, r14
001a34  978b3001  and r23, r1, r19
001a38  e3407ffc  loadli.w r1,  -452(r30)
001a3c  630ccffc  loadli.w r24,  -416(r30)
001a40  63458ffc  loadli.w r10,  -444(r30)
001a44  93801304  setlt.u r1, r7, r1
001a48  3be00000  bneq r1, zero, 24
001a4c  9b400101  srli r1, r2, 16
001a50  9b801000  andi r1, r1, 1
001a54  8b101110  add.s r1, r2, r1
001a58  8b90e010  add.s r1, r1, r14
001a5c  978a3001  and r21, r1, r19
001a60  e3007ffc  loadli.w r1,  -456(r30)
001a64  e3012ffd  loadli.w r3,  -368(r30)
001a68  93801304  setlt.u r1, r7, r1
001a6c  3be00000  bneq r1, zero, 24
001a70  9b400b01  srli r1, r22, 16
001a74  9b801000  andi r1, r1, 1
001a78  8b101b10  add.s r1, r22, r1
001a7c  8b90e010  add.s r1, r1, r14
001a80  17853001  and r10, r1, r19
001a84  93809304  setlt.u r1, r7, r9
001a88  e3449ffc  loadli.w r9,  -436(r30)
001a8c  63011ffd  loadli.w r2,  -376(r30)
001a90  2b08807f  lui r16, 522240
001a94  3be00000  bneq r1, zero, 24
001a98  9b400301  srli r1, r6, 16
001a9c  9b801000  andi r1, r1, 1
001aa0  8b101310  add.s r1, r6, r1
001aa4  8b90e010  add.s r1, r1, r14
001aa8  97843001  and r9, r1, r19
001aac  9380f304  setlt.u r1, r7, r15
001ab0  2b024000  lui r4, 1024
001ab4  3be00000  bneq r1, zero, 24
001ab8  9b400901  srli r1, r18, 16
001abc  9b801000  andi r1, r1, 1
001ac0  8b101910  add.s r1, r18, r1
001ac4  8b90e010  add.s r1, r1, r14
001ac8  978c3001  and r25, r1, r19
001acc  9380c304  setlt.u r1, r7, r12
001ad0  63035ffd  loadli.w r6,  -344(r30)
001ad4  3be00000  bneq r1, zero, 24
001ad8  9bc00501  srli r1, r11, 16
001adc  9b801000  andi r1, r1, 1
001ae0  8b901510  add.s r1, r11, r1
001ae4  8b90e010  add.s r1, r1, r14
001ae8  178c3001  and r24, r1, r19
001aec  93808304  setlt.u r1, r7, r8
001af0  9f020a00  addli r5, r20, 0
001af4  3be00000  bneq r1, zero, 24
001af8  9bc00801  srli r1, r17, 16
001afc  9b801000  andi r1, r1, 1
001b00  8b901810  add.s r1, r17, r1
001b04  8b90e010  add.s r1, r1, r14
001b08  97823001  and r5, r1, r19
001b0c  9700d100  and r1, r2, r13
001b10  63043ffd  loadli.w r8,  -360(r30)
001b14  93001804  setlt.u r1, r16, r1
001b18  3be00000  bneq r1, zero, 24
001b1c  9b400101  srli r1, r2, 16
001b20  9b801000  andi r1, r1, 1
001b24  8b101110  add.s r1, r2, r1
001b28  8b90e010  add.s r1, r1, r14
001b2c  5b010000  j 8
001b30  97104100  or r1, r2, r4
001b34  1781d100  and r2, r3, r13
001b38  e3434ffd  loadli.w r7,  -348(r30)
001b3c  9bc00001  srli r1, r1, 16
001b40  13012804  setlt.u r2, r16, r2
001b44  73101ff8  store.h r1, -128(r30)
001b48  3b600100  bneq r2, zero, 24
001b4c  9bc00101  srli r1, r3, 16
001b50  9b801000  andi r1, r1, 1
001b54  8b901110  add.s r1, r3, r1
001b58  8b90e010  add.s r1, r1, r14
001b5c  5b010000  j 8
001b60  97904100  or r1, r3, r4
001b64  1701d400  and r2, r8, r13
001b68  9f010fff  addli r3, r30, -128
001b6c  9bc00001  srli r1, r1, 16
001b70  13012804  setlt.u r2, r16, r2
001b74  9b912100  ori r3, r3, 2
001b78  674a3ffc  storeli.w r3, -348(r30)
001b7c  73901100  store.h r1, 0(r3)
001b80  3b600100  bneq r2, zero, 24
001b84  9b400401  srli r1, r8, 16
001b88  9b801000  andi r1, r1, 1
001b8c  8b101410  add.s r1, r8, r1
001b90  8b90e010  add.s r1, r1, r14
001b94  5b010000  j 8
001b98  97104400  or r1, r8, r4
001b9c  1781d300  and r2, r7, r13
001ba0  e3016ffd  loadli.w r3,  -336(r30)
001ba4  9bc00001  srli r1, r1, 16
001ba8  13012804  setlt.u r2, r16, r2
001bac  73121ff8  store.h r1, -124(r30)
001bb0  3b600100  bneq r2, zero, 24
001bb4  9bc00301  srli r1, r7, 16
001bb8  9b801000  andi r1, r1, 1
001bbc  8b901310  add.s r1, r7, r1
001bc0  8b90e010  add.s r1, r1, r14
001bc4  5b010000  j 8
001bc8  97904300  or r1, r7, r4
001bcc  1701d300  and r2, r6, r13
001bd0  9bc00001  srli r1, r1, 16
001bd4  13012804  setlt.u r2, r16, r2
001bd8  73131ff8  store.h r1, -122(r30)
001bdc  3b600100  bneq r2, zero, 24
001be0  9b400301  srli r1, r6, 16
001be4  9b801000  andi r1, r1, 1
001be8  8b101310  add.s r1, r6, r1
001bec  8b90e010  add.s r1, r1, r14
001bf0  5b010000  j 8
001bf4  97104300  or r1, r6, r4
001bf8  1781d100  and r2, r3, r13
001bfc  9bc00001  srli r1, r1, 16
001c00  13012804  setlt.u r2, r16, r2
001c04  73141ff8  store.h r1, -120(r30)
001c08  3b600100  bneq r2, zero, 24
001c0c  9bc00101  srli r1, r3, 16
001c10  9b801000  andi r1, r1, 1
001c14  8b901110  add.s r1, r3, r1
001c18  8b90e010  add.s r1, r1, r14
001c1c  5b010000  j 8
001c20  97904100  or r1, r3, r4
001c24  1701de00  and r2, r28, r13
001c28  9bc00001  srli r1, r1, 16
001c2c  13012804  setlt.u r2, r16, r2
001c30  73151ff8  store.h r1, -118(r30)
001c34  3b600100  bneq r2, zero, 24
001c38  9b400e01  srli r1, r28, 16
001c3c  9b801000  andi r1, r1, 1
001c40  8b101e10  add.s r1, r28, r1
001c44  8b90e010  add.s r1, r1, r14
001c48  5b010000  j 8
001c4c  97104e00  or r1, r28, r4
001c50  1781dd00  and r2, r27, r13
001c54  9bc00001  srli r1, r1, 16
001c58  13012804  setlt.u r2, r16, r2
001c5c  73161ff8  store.h r1, -116(r30)
001c60  3b600100  bneq r2, zero, 24
001c64  9bc00d01  srli r1, r27, 16
001c68  9b801000  andi r1, r1, 1
001c6c  8b901d10  add.s r1, r27, r1
001c70  8b90e010  add.s r1, r1, r14
001c74  5b010000  j 8
001c78  97904d00  or r1, r27, r4
001c7c  1701dd00  and r2, r26, r13
001c80  9bc00001  srli r1, r1, 16
001c84  13012804  setlt.u r2, r16, r2
001c88  73171ff8  store.h r1, -114(r30)
001c8c  3b600100  bneq r2, zero, 24
001c90  9b400d01  srli r1, r26, 16
001c94  9b801000  andi r1, r1, 1
001c98  8b101d10  add.s r1, r26, r1
001c9c  8b90e010  add.s r1, r1, r14
001ca0  5b010000  j 8
001ca4  97104d00  or r1, r26, r4
001ca8  1781db00  and r2, r23, r13
001cac  9bc00001  srli r1, r1, 16
001cb0  13012804  setlt.u r2, r16, r2
001cb4  73181ff8  store.h r1, -112(r30)
001cb8  3b600100  bneq r2, zero, 24
001cbc  9bc00b01  srli r1, r23, 16
001cc0  9b801000  andi r1, r1, 1
001cc4  8b901b10  add.s r1, r23, r1
001cc8  8b90e010  add.s r1, r1, r14
001ccc  5b010000  j 8
001cd0  97904b00  or r1, r23, r4
001cd4  1781da00  and r2, r21, r13
001cd8  9bc00001  srli r1, r1, 16
001cdc  13012804  setlt.u r2, r16, r2
001ce0  73191ff8  store.h r1, -110(r30)
001ce4  3b600100  bneq r2, zero, 24
001ce8  9bc00a01  srli r1, r21, 16
001cec  9b801000  andi r1, r1, 1
001cf0  8b901a10  add.s r1, r21, r1
001cf4  8b90e010  add.s r1, r1, r14
001cf8  5b010000  j 8
001cfc  97904a00  or r1, r21, r4
001d00  1701d500  and r2, r10, r13
001d04  9bc00001  srli r1, r1, 16
001d08  13012804  setlt.u r2, r16, r2
001d0c  731a1ff8  store.h r1, -108(r30)
001d10  3b600100  bneq r2, zero, 24
001d14  9b400501  srli r1, r10, 16
001d18  9b801000  andi r1, r1, 1
001d1c  8b101510  add.s r1, r10, r1
001d20  8b90e010  add.s r1, r1, r14
001d24  5b010000  j 8
001d28  97104500  or r1, r10, r4
001d2c  1781d400  and r2, r9, r13
001d30  9bc00001  srli r1, r1, 16
001d34  1f8a0200  addli r20, r5, 0
001d38  13012804  setlt.u r2, r16, r2
001d3c  731b1ff8  store.h r1, -106(r30)
001d40  3b600100  bneq r2, zero, 24
001d44  9bc00401  srli r1, r9, 16
001d48  9b801000  andi r1, r1, 1
001d4c  8b901410  add.s r1, r9, r1
001d50  8b91e010  add.s r3, r1, r14
001d54  5b010000  j 8
001d58  97914400  or r3, r9, r4
001d5c  e307effc  loadli.w r15,  -400(r30)
001d60  6342cffa  loadli.w r4,  -668(r30)
001d64  e300effa  loadli.w r1,  -656(r30)
001d68  e3429ffa  loadli.w r5,  -692(r30)
001d6c  1bc60101  srli r12, r3, 16
001d70  e3413ffa  loadli.w r3,  -740(r30)
001d74  ab0b807f  lui r23, 522240
001d78  731ccff8  store.h r12, -104(r30)
001d7c  0b19f210  add.s r18, r4, r15
001d80  6302cffa  loadli.w r4,  -672(r30)
001d84  8b95f010  add.s r11, r1, r15
001d88  e340dffa  loadli.w r1,  -660(r30)
001d8c  8b9af210  add.s r21, r5, r15
001d90  e3024ffa  loadli.w r5,  -736(r30)
001d94  8b91f110  add.s r3, r3, r15
001d98  8b18f210  add.s r17, r4, r15
001d9c  6342bffa  loadli.w r4,  -676(r30)
001da0  0b91f010  add.s r2, r1, r15
001da4  e300dffa  loadli.w r1,  -664(r30)
001da8  8b92f210  add.s r5, r5, r15
001dac  0b15f210  add.s r10, r4, r15
001db0  6302bffa  loadli.w r4,  -680(r30)
001db4  8b90f010  add.s r1, r1, r15
001db8  8b14f210  add.s r9, r4, r15
001dbc  6342affa  loadli.w r4,  -684(r30)
001dc0  0b14f210  add.s r8, r4, r15
001dc4  6302affa  loadli.w r4,  -688(r30)
001dc8  8b13f210  add.s r7, r4, r15
001dcc  1782dc00  and r4, r25, r13
001dd0  13034804  setlt.u r6, r16, r4
001dd4  63029ffa  loadli.w r4,  -696(r30)
001dd8  0b1bf210  add.s r22, r4, r15
001ddc  63428ffa  loadli.w r4,  -700(r30)
001de0  0b17f210  add.s r14, r4, r15
001de4  63028ffa  loadli.w r4,  -704(r30)
001de8  0b12f210  add.s r4, r4, r15
001dec  3b700300  bneq r6, zero, 28
001df0  1bc30c01  srli r6, r25, 16
001df4  63467ffd  loadli.w r12,  -324(r30)
001df8  1b031300  andi r6, r6, 1
001dfc  0b936c10  add.s r6, r25, r6
001e00  0b13c310  add.s r6, r6, r12
001e04  db010000  j 12
001e08  2b034000  lui r6, 1024
001e0c  17936c00  or r6, r25, r6
001e10  b3170128  sext_int2long r[16:17], r2
001e14  b3950528  sext_int2long r[12:13], r11
001e18  9f190000  addli r19, zero, 1
001e1c  b3900028  sext_int2long r[2:3], r1
001e20  97b53503  sll.d r[12:13], r[12:13], r19
001e24  97b03003  sll.d r[2:3], r[2:3], r19
001e28  7338bfea  store.d r[12:13], -336(r30)
001e2c  97b53703  sll.d r[12:13], r[16:17], r19
001e30  733c1fe8  store.d r[2:3], -360(r30)
001e34  b3100928  sext_int2long r[2:3], r18
001e38  7334bfea  store.d r[12:13], -344(r30)
001e3c  97b03003  sll.d r[2:3], r[2:3], r19
001e40  b3950828  sext_int2long r[12:13], r17
001e44  73301fe6  store.d r[2:3], -416(r30)
001e48  97b03503  sll.d r[2:3], r[12:13], r19
001e4c  b3150b28  sext_int2long r[12:13], r22
001e50  733c1fe4  store.d r[2:3], -424(r30)
001e54  b3100528  sext_int2long r[2:3], r10
001e58  b3940428  sext_int2long r[10:11], r9
001e5c  97bd3003  sll.d r[28:29], r[2:3], r19
001e60  b3100428  sext_int2long r[2:3], r8
001e64  97bc3403  sll.d r[26:27], r[10:11], r19
001e68  b3940328  sext_int2long r[10:11], r7
001e6c  97b33003  sll.d r[8:9], r[2:3], r19
001e70  b3900a28  sext_int2long r[2:3], r21
001e74  97b43403  sll.d r[10:11], r[10:11], r19
001e78  97ba3003  sll.d r[22:23], r[2:3], r19
001e7c  97b03503  sll.d r[2:3], r[12:13], r19
001e80  9705dc00  and r11, r24, r13
001e84  1388bb04  setlt.u r16, r23, r11
001e88  73381fe8  store.d r[2:3], -368(r30)
001e8c  b3100728  sext_int2long r[2:3], r14
001e90  b3150228  sext_int2long r[12:13], r4
001e94  33970228  sext_int2long r[15:16], r5
001e98  17b23503  sll.d r[5:6], r[12:13], r19
001e9c  97353703  sll.d r[12:13], r[15:16], r19
001ea0  33970128  sext_int2long r[15:16], r3
001ea4  9b410301  srli r3, r6, 16
001ea8  97b03003  sll.d r[2:3], r[2:3], r19
001eac  17373703  sll.d r[15:16], r[15:16], r19
001eb0  731d3ff8  store.h r3, -102(r30)
001eb4  3b700800  bneq r16, zero, 28
001eb8  9b410c01  srli r3, r24, 16
001ebc  63437ffd  loadli.w r6,  -324(r30)
001ec0  9b811100  andi r3, r3, 1
001ec4  8b113c10  add.s r3, r24, r3
001ec8  8b916110  add.s r3, r3, r6
001ecc  db010000  j 12
001ed0  ab014000  lui r3, 1024
001ed4  97113c00  or r3, r24, r3
001ed8  1f090a00  addli r18, r20, 0
001edc  eb590f02  load.d r[20:21], 32(r30)
001ee0  6b588fe7  load.d r[17:18], -392(r30)
001ee4  0ba80911  add.ul r[17:18], r[20:21], r[17:18]
001ee8  8badb911  add.ul r[28:29], r[20:21], r[28:29]
001eec  8ba01910  add.ul r[2:3], r[20:21], r[2:3]
001ef0  73380fe7  store.d r[17:18], -400(r30)
001ef4  6b580feb  load.d r[17:18], -336(r30)
001ef8  73381fea  store.d r[2:3], -336(r30)
001efc  8ba0b910  add.ul r[2:3], r[20:21], r[12:13]
001f00  0ba80911  add.ul r[17:18], r[20:21], r[17:18]
001f04  73340fe7  store.d r[17:18], -408(r30)
001f08  6b588fea  load.d r[17:18], -344(r30)
001f0c  7334bfeb  store.d r[28:29], -344(r30)
001f10  8bad9911  add.ul r[28:29], r[20:21], r[26:27]
001f14  8bac7910  add.ul r[26:27], r[20:21], r[8:9]
001f18  0ba39910  add.ul r[7:8], r[20:21], r[10:11]
001f1c  1705d900  and r10, r18, r13
001f20  0ba45911  add.ul r[9:10], r[20:21], r[22:23]
001f24  eb5a0fe9  load.d r[22:23], -368(r30)
001f28  73381fe8  store.d r[2:3], -368(r30)
001f2c  9bc00101  srli r1, r3, 16
001f30  1385ab04  setlt.u r10, r23, r10
001f34  8bab4910  add.ul r[24:25], r[20:21], r[5:6]
001f38  731e1ff8  store.h r1, -100(r30)
001f3c  0ba80911  add.ul r[17:18], r[20:21], r[17:18]
001f40  8baa5911  add.ul r[22:23], r[20:21], r[22:23]
001f44  73340fe9  store.d r[17:18], -376(r30)
001f48  6b588fe9  load.d r[17:18], -360(r30)
001f4c  0ba80911  add.ul r[17:18], r[20:21], r[17:18]
001f50  733c0fe7  store.d r[17:18], -392(r30)
001f54  6b580fe6  load.d r[17:18], -416(r30)
001f58  0ba80911  add.ul r[17:18], r[20:21], r[17:18]
001f5c  733c0fe9  store.d r[17:18], -360(r30)
001f60  6b588fe5  load.d r[17:18], -424(r30)
001f64  0ba80911  add.ul r[17:18], r[20:21], r[17:18]
001f68  8ba9e910  add.ul r[20:21], r[20:21], r[15:16]
001f6c  b71c05f0  beq r10, zero, -7388
001f70  ab004000  lui r1, 1024
001f74  97101900  or r1, r18, r1
001f78  db65fcff  j -7380
001f7c  9f0e0ffa  addli sp, r30, -768
001f80  9f8e0e06  addli sp, sp, 768
001f84  00a00300  mfence { lm, sm, gm }
001f88  00100000  exit
001f8c  00100000  exit
001f90  00100000  exit
001f94  00100000  exit
001f98  00100000  exit
001f9c  00100000  exit
001fa0  00100000  exit
001fa4  00100000  exit
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
