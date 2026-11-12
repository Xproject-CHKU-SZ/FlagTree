; SHA-256 44a18cc79d84f2e1c970e2a3bdf546c8db88d55bab77e27f5d4292f1855b6307
; P800 Cluster · XTDK LLVM 19 · 2033 / 2033 words decoded
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
0000f0  80560002  load_param_i r13, 0
0000f4  e3436f00  loadli.w r7,  52(r30)
0000f8  63026f00  loadli.w r4,  48(r30)
0000fc  9bb12000  slli r3, r1, 2
000100  1f010100  addli r2, r2, 0
000104  63037f00  loadli.w r6,  56(r30)
000108  9b92f2ff  ori r5, r5, 4095
00010c  0b942110  add.s r8, r3, r2
000110  0b924320  mul.s r4, r7, r4
000114  73680440  stores.w zero, 1040(r8)
000118  00a00300  mfence { lm, sm, gm }
00011c  80a10204  csr_set csr3, r5
000120  00d00100  sync_group
000124  67488ffa  storeli.w r8, -636(r30)
000128  73600400  stores.w zero, 0(r8)
00012c  0b126220  mul.s r4, r4, r6
000130  00a00300  mfence { lm, sm, gm }
000134  67085ffa  storeli.w r5, -640(r30)
000138  80a10204  csr_set csr3, r5
00013c  00d00100  sync_group
000140  e7474ffa  storeli.w r4, -644(r30)
000144  cb40d20e  ble.s r4, r13, 7216
000148  1f028000  addli r4, zero, 64
00014c  e3450ffb  loadli.w r11,  -636(r30)
000150  eb548f00  load.d r[10:11], 8(r30)
000154  6b530f01  load.d r[7:8], 16(r30)
000158  2b094000  lui r18, 1024
00015c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000160  0b944030  div.s r8, r1, r4
000164  6b528f01  load.d r[5:6], 24(r30)
000168  9f852508  addli r11, r11, 1040
00016c  6747bffa  storeli.w r11, -652(r30)
000170  e7078ffa  storeli.w r8, -648(r30)
000174  1b346400  slli r8, r8, 6
000178  0b948018  sub.s r8, r1, r8
00017c  9b80f003  andi r1, r1, 63
000180  1b374400  slli r14, r8, 4
000184  00d40002  load_param_i r8, 1
000188  e7471ffc  storeli.w r1, -388(r30)
00018c  ab700000  lui r1, 7
000190  e7468ffa  storeli.w r8, -660(r30)
000194  1b141700  ori r8, r14, 1
000198  b3150728  sext_int2long r[12:13], r14
00019c  9b90f0ff  ori r1, r1, 4095
0001a0  9b17d700  ori r15, r14, 13
0001a4  6707effa  storeli.w r14, -656(r30)
0001a8  e7068ffa  storeli.w r8, -664(r30)
0001ac  1b142700  ori r8, r14, 2
0001b0  e70b1ffc  storeli.w r1, -328(r30)
0001b4  abf07f7f  lui r1, 522239
0001b8  e703fffa  storeli.w r15, -712(r30)
0001bc  67468ffa  storeli.w r8, -668(r30)
0001c0  1b143700  ori r8, r14, 3
0001c4  9b90f0ff  ori r1, r1, 4095
0001c8  67068ffa  storeli.w r8, -672(r30)
0001cc  1b144700  ori r8, r14, 4
0001d0  e74b1ffc  storeli.w r1, -324(r30)
0001d4  e7458ffa  storeli.w r8, -676(r30)
0001d8  1b145700  ori r8, r14, 5
0001dc  e7058ffa  storeli.w r8, -680(r30)
0001e0  1b146700  ori r8, r14, 6
0001e4  67458ffa  storeli.w r8, -684(r30)
0001e8  1b147700  ori r8, r14, 7
0001ec  67058ffa  storeli.w r8, -688(r30)
0001f0  1b148700  ori r8, r14, 8
0001f4  e7448ffa  storeli.w r8, -692(r30)
0001f8  1b149700  ori r8, r14, 9
0001fc  e7048ffa  storeli.w r8, -696(r30)
000200  1b14a700  ori r8, r14, 10
000204  67448ffa  storeli.w r8, -700(r30)
000208  1b14b700  ori r8, r14, 11
00020c  67048ffa  storeli.w r8, -704(r30)
000210  1b14c700  ori r8, r14, 12
000214  e7438ffa  storeli.w r8, -708(r30)
000218  1f140000  addli r8, zero, 1
00021c  97b58502  sll.d r[12:13], r[12:13], r8
000220  1b14e700  ori r8, r14, 14
000224  67438ffa  storeli.w r8, -716(r30)
000228  0ba4b410  add.ul r[9:10], r[10:11], r[12:13]
00022c  0b23b310  add.ul r[7:8], r[7:8], r[12:13]
000230  0b22b210  add.ul r[5:6], r[5:6], r[12:13]
000234  1f050fff  addli r10, r30, -128
000238  73348fd2  store.d r[9:10], -728(r30)
00023c  2bf4ffff  lui r8, 1048575
000240  73306fd2  store.d r[7:8], -736(r30)
000244  9f044000  addli r9, zero, 32
000248  733c4fd0  store.d r[5:6], -744(r30)
00024c  1b1304f0  ori r6, r8, 3840
000250  1f048ffd  addli r8, r30, -320
000254  97816100  and r3, r3, r6
000258  8b912110  add.s r3, r3, r2
00025c  2bf1ff7f  lui r2, 524287
000260  9b1cf1ff  ori r25, r2, 4095
000264  2b11833a  lui r2, 239665
000268  e7483ffa  storeli.w r3, -628(r30)
00026c  9b10f126  ori r1, r2, 623
000270  e7079ffd  storeli.w r25, -392(r30)
000274  67411ffa  storeli.w r1, -748(r30)
000278  9b10f700  ori r1, r14, 15
00027c  67011ffa  storeli.w r1, -752(r30)
000280  9f802108  addli r1, r3, 1040
000284  e7081ffa  storeli.w r1, -632(r30)
000288  9f200000  addli r1, zero, 2
00028c  fe8100e0  vmmov mr3, r1
000290  5b410000  j 520
000294  e3406ffd  loadli.w r1,  -332(r30)
000298  63016ffd  loadli.w r2,  -336(r30)
00029c  9f230000  addli r7, zero, 2
0002a0  1f050fff  addli r10, r30, -128
0002a4  1f620500  addli r4, r10, 6
0002a8  b3900000  float2bfloat.rn r1, r1
0002ac  33110100  float2bfloat.rn r2, r2
0002b0  73101ff8  store.h r1, -128(r30)
0002b4  e3405ffd  loadli.w r1,  -340(r30)
0002b8  73112ff8  store.h r2, -126(r30)
0002bc  63015ffd  loadli.w r2,  -344(r30)
0002c0  b3900000  float2bfloat.rn r1, r1
0002c4  33110100  float2bfloat.rn r2, r2
0002c8  73121ff8  store.h r1, -124(r30)
0002cc  e3404ffd  loadli.w r1,  -348(r30)
0002d0  73132ff8  store.h r2, -122(r30)
0002d4  63014ffd  loadli.w r2,  -352(r30)
0002d8  b3900000  float2bfloat.rn r1, r1
0002dc  33110100  float2bfloat.rn r2, r2
0002e0  73141ff8  store.h r1, -120(r30)
0002e4  e3403ffd  loadli.w r1,  -356(r30)
0002e8  73152ff8  store.h r2, -118(r30)
0002ec  63013ffd  loadli.w r2,  -360(r30)
0002f0  b3900000  float2bfloat.rn r1, r1
0002f4  33110100  float2bfloat.rn r2, r2
0002f8  73161ff8  store.h r1, -116(r30)
0002fc  e3402ffd  loadli.w r1,  -364(r30)
000300  73172ff8  store.h r2, -114(r30)
000304  63012ffd  loadli.w r2,  -368(r30)
000308  b3900000  float2bfloat.rn r1, r1
00030c  33110100  float2bfloat.rn r2, r2
000310  73181ff8  store.h r1, -112(r30)
000314  e3401ffd  loadli.w r1,  -372(r30)
000318  73192ff8  store.h r2, -110(r30)
00031c  63011ffd  loadli.w r2,  -376(r30)
000320  b3900000  float2bfloat.rn r1, r1
000324  33110100  float2bfloat.rn r2, r2
000328  731a1ff8  store.h r1, -108(r30)
00032c  e3400ffd  loadli.w r1,  -380(r30)
000330  731b2ff8  store.h r2, -106(r30)
000334  63010ffd  loadli.w r2,  -384(r30)
000338  b3900000  float2bfloat.rn r1, r1
00033c  33110100  float2bfloat.rn r2, r2
000340  731c1ff8  store.h r1, -104(r30)
000344  731d2ff8  store.h r2, -102(r30)
000348  33910100  float2bfloat.rn r2, r3
00034c  b3100600  float2bfloat.rn r1, r12
000350  9f210500  addli r3, r10, 2
000354  731e1ff8  store.h r1, -100(r30)
000358  731f2ff8  store.h r2, -98(r30)
00035c  ab0000f0  lui r1, 983040
000360  2b0100f0  lui r2, 983040
000364  00a00000  mfence { lm }
000368  eb558fe3  load.d r[12:13], -456(r30)
00036c  97901300  or r1, r7, r1
000370  17912300  or r2, r7, r2
000374  ffb0a500  s_lm2gm r1, r10, 0(r[12:13])
000378  eb550fe3  load.d r[12:13], -464(r30)
00037c  9f400500  addli r1, r10, 4
000380  7fb13500  s_lm2gm r2, r3, 0(r[12:13])
000384  2b0100f0  lui r2, 983040
000388  eb550fe5  load.d r[12:13], -432(r30)
00038c  ab0100f0  lui r3, 983040
000390  17912300  or r2, r7, r2
000394  97913300  or r3, r7, r3
000398  7fb11500  s_lm2gm r2, r1, 0(r[12:13])
00039c  eb500fe4  load.d r[2:3], -448(r30)
0003a0  eb550fe6  load.d r[12:13], -416(r30)
0003a4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0003a8  ab0100f0  lui r3, 983040
0003ac  2b0200f0  lui r4, 983040
0003b0  9f001500  addli r1, r10, 8
0003b4  1f211500  addli r2, r10, 10
0003b8  97913300  or r3, r7, r3
0003bc  17924300  or r4, r7, r4
0003c0  ffb11700  s_lm2gm r3, r1, 0(r[16:17])
0003c4  ab0100f0  lui r3, 983040
0003c8  7fb22800  s_lm2gm r4, r2, 0(r[18:19])
0003cc  2b0200f0  lui r4, 983040
0003d0  9f401500  addli r1, r10, 12
0003d4  1f611500  addli r2, r10, 14
0003d8  2b094000  lui r18, 1024
0003dc  97913300  or r3, r7, r3
0003e0  17924300  or r4, r7, r4
0003e4  ffb11b00  s_lm2gm r3, r1, 0(r[24:25])
0003e8  ab0100f0  lui r3, 983040
0003ec  7fb22c00  s_lm2gm r4, r2, 0(r[26:27])
0003f0  2b0200f0  lui r4, 983040
0003f4  9f002500  addli r1, r10, 16
0003f8  1f212500  addli r2, r10, 18
0003fc  97913300  or r3, r7, r3
000400  17924300  or r4, r7, r4
000404  ffb11d00  s_lm2gm r3, r1, 0(r[28:29])
000408  ab0100f0  lui r3, 983040
00040c  7fb22500  s_lm2gm r4, r2, 0(r[12:13])
000410  2b0200f0  lui r4, 983040
000414  9f402500  addli r1, r10, 20
000418  1f612500  addli r2, r10, 22
00041c  eb558fe6  load.d r[12:13], -408(r30)
000420  97913300  or r3, r7, r3
000424  17924300  or r4, r7, r4
000428  ffb11900  s_lm2gm r3, r1, 0(r[20:21])
00042c  ab0100f0  lui r3, 983040
000430  7fb22a00  s_lm2gm r4, r2, 0(r[22:23])
000434  2b0200f0  lui r4, 983040
000438  9f003500  addli r1, r10, 24
00043c  1f213500  addli r2, r10, 26
000440  97913300  or r3, r7, r3
000444  17924300  or r4, r7, r4
000448  ffb11600  s_lm2gm r3, r1, 0(r[14:15])
00044c  ab0100f0  lui r3, 983040
000450  7fb22500  s_lm2gm r4, r2, 0(r[12:13])
000454  2b0200f0  lui r4, 983040
000458  9f403500  addli r1, r10, 28
00045c  1f613500  addli r2, r10, 30
000460  e346effc  loadli.w r13,  -396(r30)
000464  97913300  or r3, r7, r3
000468  17924300  or r4, r7, r4
00046c  ffb11200  s_lm2gm r3, r1, 0(r[6:7])
000470  e340dffa  loadli.w r1,  -660(r30)
000474  7f322400  s_lm2gm r4, r2, 0(r[9:10])
000478  1f048ffd  addli r8, r30, -320
00047c  9f044000  addli r9, zero, 32
000480  00a00000  mfence { lm }
000484  e30cfffc  loadli.w r25,  -392(r30)
000488  8b961610  add.s r13, r13, r1
00048c  e340fffa  loadli.w r1,  -644(r30)
000490  3fa01600  blt.s r13, r1, 8
000494  5b1c0300  j 6368
000498  9f000000  addli r1, zero, 0
00049c  0b111410  add.s r2, r8, r1
0004a0  9fc00000  addli r1, r1, 4
0004a4  73100100  store.h zero, 0(r2)
0004a8  73110100  store.h zero, 2(r2)
0004ac  00a00000  mfence { lm }
0004b0  bbbf90fe  bneq r1, r9, -20
0004b4  e3007f00  loadli.w r1,  56(r30)
0004b8  63416f00  loadli.w r2,  52(r30)
0004bc  6302fffa  loadli.w r4,  -648(r30)
0004c0  e302effa  loadli.w r5,  -656(r30)
0004c4  9f130000  addli r7, zero, 1
0004c8  ab0100f0  lui r3, 983040
0004cc  6747dffc  storeli.w r13, -396(r30)
0004d0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0004d4  9f180000  addli r17, zero, 1
0004d8  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0004dc  97913400  or r3, r9, r3
0004e0  7e8108e0  vmmov mr2, r17
0004e4  8b901630  div.s r1, r13, r1
0004e8  8b902030  div.s r1, r1, r2
0004ec  2b0100f0  lui r2, 983040
0004f0  17912400  or r2, r9, r2
0004f4  0b924010  add.s r4, r1, r4
0004f8  ab0000f0  lui r1, 983040
0004fc  1b33a200  slli r6, r4, 10
000500  97901400  or r1, r9, r1
000504  674d4ffa  storeli.w r4, -556(r30)
000508  2b0200f0  lui r4, 983040
00050c  8b125310  add.s r5, r6, r5
000510  67066ffc  storeli.w r6, -416(r30)
000514  17924400  or r4, r9, r4
000518  b3920228  sext_int2long r[6:7], r5
00051c  97b57202  sll.d r[12:13], r[6:7], r7
000520  eb520f00  load.d r[6:7], 0(r30)
000524  7334bfe6  store.d r[12:13], -408(r30)
000528  8ba2b210  add.ul r[6:7], r[6:7], r[12:13]
00052c  7fa18200  l_gm2lm r2, r8, 0(r[6:7])
000530  eb528fd2  load.d r[6:7], -728(r30)
000534  1f010ffe  addli r2, r30, -256
000538  ffa12200  l_gm2lm r3, r2, 0(r[6:7])
00053c  6b510fd2  load.d r[3:4], -736(r30)
000540  9f028ffe  addli r5, r30, -192
000544  ff205100  l_gm2lm r1, r5, 0(r[3:4])
000548  eb508fd1  load.d r[2:3], -744(r30)
00054c  7fa2a000  l_gm2lm r4, r10, 0(r[2:3])
000550  00a00000  mfence { lm }
000554  eb310fec  load.hu r3, -320(r30)
000558  6b322fec  load.hu r4, -318(r30)
00055c  6b31afed  load.hu r2, -294(r30)
000560  eb30cfed  load.hu r1, -292(r30)
000564  eb324fec  load.hu r5, -316(r30)
000568  6b336fec  load.hu r6, -314(r30)
00056c  eb338fec  load.hu r7, -312(r30)
000570  6b34afec  load.hu r8, -310(r30)
000574  eb34cfec  load.hu r9, -308(r30)
000578  6b35efec  load.hu r10, -306(r30)
00057c  eb350fed  load.hu r11, -304(r30)
000580  6b362fed  load.hu r12, -302(r30)
000584  eb364fed  load.hu r13, -300(r30)
000588  6b376fed  load.hu r14, -298(r30)
00058c  eb378fed  load.hu r15, -296(r30)
000590  6b38efed  load.hu r16, -290(r30)
000594  b3910118  bfloat2float.rn r3, r3
000598  33110118  bfloat2float.rn r2, r2
00059c  b3900018  bfloat2float.rn r1, r1
0005a0  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
0005a4  b3110218  bfloat2float.rn r3, r4
0005a8  1f420000  addli r4, zero, 4
0005ac  7e0002e0  vmmov mr0, r4
0005b0  1f021000  addli r4, zero, 8
0005b4  eaa01136  vor.u.mh vr1{mr3}, r3, vr1
0005b8  b3910218  bfloat2float.rn r3, r5
0005bc  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005c0  b3110318  bfloat2float.rn r3, r6
0005c4  7e0002e0  vmmov mr0, r4
0005c8  1f022000  addli r4, zero, 16
0005cc  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005d0  b3910318  bfloat2float.rn r3, r7
0005d4  7e0002e0  vmmov mr0, r4
0005d8  1f024000  addli r4, zero, 32
0005dc  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005e0  b3110418  bfloat2float.rn r3, r8
0005e4  7e0002e0  vmmov mr0, r4
0005e8  1f028000  addli r4, zero, 64
0005ec  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005f0  b3910418  bfloat2float.rn r3, r9
0005f4  7e0002e0  vmmov mr0, r4
0005f8  1f020001  addli r4, zero, 128
0005fc  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000600  b3110518  bfloat2float.rn r3, r10
000604  7e0002e0  vmmov mr0, r4
000608  1f020002  addli r4, zero, 256
00060c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000610  b3910518  bfloat2float.rn r3, r11
000614  7e0002e0  vmmov mr0, r4
000618  1f020004  addli r4, zero, 512
00061c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000620  b3110618  bfloat2float.rn r3, r12
000624  7e0002e0  vmmov mr0, r4
000628  1f020008  addli r4, zero, 1024
00062c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000630  b3910618  bfloat2float.rn r3, r13
000634  7e0002e0  vmmov mr0, r4
000638  1f020010  addli r4, zero, 2048
00063c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000640  b3110718  bfloat2float.rn r3, r14
000644  7e0002e0  vmmov mr0, r4
000648  1f020020  addli r4, zero, 4096
00064c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000650  b3910718  bfloat2float.rn r3, r15
000654  7e0002e0  vmmov mr0, r4
000658  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
00065c  9f010040  addli r3, zero, 8192
000660  7e8001e0  vmmov mr0, r3
000664  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000668  2b410000  lui r2, 4
00066c  7e0001e0  vmmov mr0, r2
000670  2b810000  lui r2, 8
000674  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000678  b3100818  bfloat2float.rn r1, r16
00067c  7e0001e0  vmmov mr0, r2
000680  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000684  eb300ff0  load.hu r1, -256(r30)
000688  6b312ff0  load.hu r2, -254(r30)
00068c  eb314ff0  load.hu r3, -252(r30)
000690  6b326ff0  load.hu r4, -250(r30)
000694  eb328ff0  load.hu r5, -248(r30)
000698  6b33aff0  load.hu r6, -246(r30)
00069c  eb33cff0  load.hu r7, -244(r30)
0006a0  6b34eff0  load.hu r8, -242(r30)
0006a4  eb340ff1  load.hu r9, -240(r30)
0006a8  6b352ff1  load.hu r10, -238(r30)
0006ac  eb354ff1  load.hu r11, -236(r30)
0006b0  6b366ff1  load.hu r12, -234(r30)
0006b4  eb368ff1  load.hu r13, -232(r30)
0006b8  6b37aff1  load.hu r14, -230(r30)
0006bc  eb37cff1  load.hu r15, -228(r30)
0006c0  6b38eff1  load.hu r16, -226(r30)
0006c4  b3900018  bfloat2float.rn r1, r1
0006c8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006cc  b3100118  bfloat2float.rn r1, r2
0006d0  1f410000  addli r2, zero, 4
0006d4  7e0101e0  vmmov mr2, r2
0006d8  1f011000  addli r2, zero, 8
0006dc  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0006e0  b3900118  bfloat2float.rn r1, r3
0006e4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006e8  b3100218  bfloat2float.rn r1, r4
0006ec  7e0101e0  vmmov mr2, r2
0006f0  1f012000  addli r2, zero, 16
0006f4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006f8  b3900218  bfloat2float.rn r1, r5
0006fc  7e0101e0  vmmov mr2, r2
000700  1f014000  addli r2, zero, 32
000704  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000708  b3100318  bfloat2float.rn r1, r6
00070c  7e0101e0  vmmov mr2, r2
000710  1f018000  addli r2, zero, 64
000714  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000718  b3900318  bfloat2float.rn r1, r7
00071c  7e0101e0  vmmov mr2, r2
000720  1f010001  addli r2, zero, 128
000724  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000728  b3100418  bfloat2float.rn r1, r8
00072c  7e0101e0  vmmov mr2, r2
000730  1f010002  addli r2, zero, 256
000734  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000738  b3900418  bfloat2float.rn r1, r9
00073c  7e0101e0  vmmov mr2, r2
000740  1f010004  addli r2, zero, 512
000744  ab04807f  lui r9, 522240
000748  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00074c  b3100518  bfloat2float.rn r1, r10
000750  7e0101e0  vmmov mr2, r2
000754  1f010008  addli r2, zero, 1024
000758  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00075c  b3900518  bfloat2float.rn r1, r11
000760  7e0101e0  vmmov mr2, r2
000764  1f010010  addli r2, zero, 2048
000768  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00076c  b3100618  bfloat2float.rn r1, r12
000770  7e0101e0  vmmov mr2, r2
000774  1f010020  addli r2, zero, 4096
000778  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00077c  b3900618  bfloat2float.rn r1, r13
000780  7e0101e0  vmmov mr2, r2
000784  1f010040  addli r2, zero, 8192
000788  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00078c  b3100718  bfloat2float.rn r1, r14
000790  7e0101e0  vmmov mr2, r2
000794  2b410000  lui r2, 4
000798  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00079c  b3900718  bfloat2float.rn r1, r15
0007a0  7e0101e0  vmmov mr2, r2
0007a4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0007a8  b3100818  bfloat2float.rn r1, r16
0007ac  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0007b0  eb300ff4  load.hu r1, -192(r30)
0007b4  e74d1ffa  storeli.w r1, -548(r30)
0007b8  eb302ff4  load.hu r1, -190(r30)
0007bc  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0007c0  674e1ffa  storeli.w r1, -540(r30)
0007c4  eb304ff4  load.hu r1, -188(r30)
0007c8  e74e1ffa  storeli.w r1, -532(r30)
0007cc  eb306ff4  load.hu r1, -186(r30)
0007d0  674f1ffa  storeli.w r1, -524(r30)
0007d4  eb308ff4  load.hu r1, -184(r30)
0007d8  e74f1ffa  storeli.w r1, -516(r30)
0007dc  eb30aff4  load.hu r1, -182(r30)
0007e0  67401ffc  storeli.w r1, -508(r30)
0007e4  eb30cff4  load.hu r1, -180(r30)
0007e8  e7401ffc  storeli.w r1, -500(r30)
0007ec  eb30eff4  load.hu r1, -178(r30)
0007f0  e7091ffc  storeli.w r1, -360(r30)
0007f4  eb300ff5  load.hu r1, -176(r30)
0007f8  67491ffc  storeli.w r1, -364(r30)
0007fc  eb302ff5  load.hu r1, -174(r30)
000800  67091ffc  storeli.w r1, -368(r30)
000804  eb304ff5  load.hu r1, -172(r30)
000808  e7481ffc  storeli.w r1, -372(r30)
00080c  eb306ff5  load.hu r1, -170(r30)
000810  e7081ffc  storeli.w r1, -376(r30)
000814  eb308ff5  load.hu r1, -168(r30)
000818  67481ffc  storeli.w r1, -380(r30)
00081c  eb30aff5  load.hu r1, -166(r30)
000820  67081ffc  storeli.w r1, -384(r30)
000824  eb30cff5  load.hu r1, -164(r30)
000828  67051ffc  storeli.w r1, -432(r30)
00082c  eb30eff5  load.hu r1, -162(r30)
000830  e7451ffc  storeli.w r1, -420(r30)
000834  eb300ff8  load.hu r1, -128(r30)
000838  e70d1ffa  storeli.w r1, -552(r30)
00083c  eb302ff8  load.hu r1, -126(r30)
000840  670e1ffa  storeli.w r1, -544(r30)
000844  eb304ff8  load.hu r1, -124(r30)
000848  e70e1ffa  storeli.w r1, -536(r30)
00084c  eb306ff8  load.hu r1, -122(r30)
000850  670f1ffa  storeli.w r1, -528(r30)
000854  eb308ff8  load.hu r1, -120(r30)
000858  e70f1ffa  storeli.w r1, -520(r30)
00085c  eb30aff8  load.hu r1, -118(r30)
000860  67001ffc  storeli.w r1, -512(r30)
000864  eb30cff8  load.hu r1, -116(r30)
000868  e7001ffc  storeli.w r1, -504(r30)
00086c  eb30eff8  load.hu r1, -114(r30)
000870  67011ffc  storeli.w r1, -496(r30)
000874  eb300ff9  load.hu r1, -112(r30)
000878  67411ffc  storeli.w r1, -492(r30)
00087c  eb302ff9  load.hu r1, -110(r30)
000880  e7011ffc  storeli.w r1, -488(r30)
000884  eb304ff9  load.hu r1, -108(r30)
000888  67021ffc  storeli.w r1, -480(r30)
00088c  eb306ff9  load.hu r1, -106(r30)
000890  e7021ffc  storeli.w r1, -472(r30)
000894  eb308ff9  load.hu r1, -104(r30)
000898  67031ffc  storeli.w r1, -464(r30)
00089c  eb30aff9  load.hu r1, -102(r30)
0008a0  e7031ffc  storeli.w r1, -456(r30)
0008a4  eb30cff9  load.hu r1, -100(r30)
0008a8  67041ffc  storeli.w r1, -448(r30)
0008ac  eb30eff9  load.hu r1, -98(r30)
0008b0  e7441ffc  storeli.w r1, -436(r30)
0008b4  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0008b8  00a00000  mfence { lm }
0008bc  63068fff  loadli.w r12,  -64(r30)
0008c0  634e8fff  loadli.w r28,  -60(r30)
0008c4  63059fff  loadli.w r10,  -56(r30)
0008c8  e3419fff  loadli.w r3,  -52(r30)
0008cc  6303afff  loadli.w r6,  -48(r30)
0008d0  e340afff  loadli.w r1,  -44(r30)
0008d4  630abfff  loadli.w r20,  -40(r30)
0008d8  e349bfff  loadli.w r19,  -36(r30)
0008dc  e30acfff  loadli.w r21,  -32(r30)
0008e0  e34dcfff  loadli.w r27,  -28(r30)
0008e4  630ddfff  loadli.w r26,  -24(r30)
0008e8  e34bdfff  loadli.w r23,  -20(r30)
0008ec  e305efff  loadli.w r11,  -16(r30)
0008f0  634befff  loadli.w r22,  -12(r30)
0008f4  e302ffff  loadli.w r5,  -8(r30)
0008f8  e346ffff  loadli.w r13,  -4(r30)
0008fc  17029601  and r4, r12, r25
000900  13814404  setlt.u r2, r9, r4
000904  3b300100  bneq r2, zero, 12
000908  e70acffc  storeli.w r12, -344(r30)
00090c  db010000  j 12
000910  17112601  or r2, r12, r18
000914  e70a2ffc  storeli.w r2, -344(r30)
000918  17089e01  and r16, r28, r25
00091c  63077ffd  loadli.w r14,  -328(r30)
000920  13810405  setlt.u r2, r9, r16
000924  3b300100  bneq r2, zero, 12
000928  e74acffd  storeli.w r28, -340(r30)
00092c  db010000  j 12
000930  17112e01  or r2, r28, r18
000934  e74a2ffc  storeli.w r2, -340(r30)
000938  97079501  and r15, r10, r25
00093c  1381f404  setlt.u r2, r9, r15
000940  3b300100  bneq r2, zero, 12
000944  670baffc  storeli.w r10, -336(r30)
000948  db010000  j 12
00094c  17112501  or r2, r10, r18
000950  670b2ffc  storeli.w r2, -336(r30)
000954  97889101  and r17, r3, r25
000958  670a5ffc  storeli.w r5, -352(r30)
00095c  13811405  setlt.u r2, r9, r17
000960  3b300100  bneq r2, zero, 12
000964  9f820100  addli r5, r3, 0
000968  5b010000  j 8
00096c  97922101  or r5, r3, r18
000970  17049301  and r8, r6, r25
000974  13818404  setlt.u r2, r9, r8
000978  3b300100  bneq r2, zero, 12
00097c  e70b6ffa  storeli.w r6, -584(r30)
000980  db010000  j 12
000984  17112301  or r2, r6, r18
000988  e70b2ffa  storeli.w r2, -584(r30)
00098c  97839001  and r7, r1, r25
000990  674b5ffc  storeli.w r5, -332(r30)
000994  13817404  setlt.u r2, r9, r7
000998  3b300100  bneq r2, zero, 12
00099c  e74b1ffa  storeli.w r1, -580(r30)
0009a0  db010000  j 12
0009a4  17912001  or r2, r1, r18
0009a8  e74b2ffa  storeli.w r2, -580(r30)
0009ac  97029a01  and r5, r20, r25
0009b0  e749bffc  storeli.w r11, -356(r30)
0009b4  13815404  setlt.u r2, r9, r5
0009b8  3b300100  bneq r2, zero, 12
0009bc  9f050a00  addli r11, r20, 0
0009c0  5b010000  j 8
0009c4  97152a01  or r11, r20, r18
0009c8  17819901  and r2, r19, r25
0009cc  67094ffb  storeli.w r20, -624(r30)
0009d0  2b0a4000  lui r20, 1024
0009d4  674adffc  storeli.w r13, -348(r30)
0009d8  67493ffb  storeli.w r19, -620(r30)
0009dc  93842404  setlt.u r9, r9, r2
0009e0  3bb00400  bneq r9, zero, 12
0009e4  674c3ffb  storeli.w r19, -572(r30)
0009e8  db010000  j 12
0009ec  97942901  or r9, r19, r18
0009f0  674c9ffa  storeli.w r9, -572(r30)
0009f4  97849a01  and r9, r21, r25
0009f8  ab06807f  lui r13, 522240
0009fc  ab09807f  lui r19, 522240
000a00  670cbffa  storeli.w r11, -576(r30)
000a04  e7095ffb  storeli.w r21, -616(r30)
000a08  93869604  setlt.u r13, r13, r9
000a0c  37a00600  beq r13, zero, 8
000a10  979a4a01  or r21, r21, r20
000a14  178c9d01  and r24, r27, r25
000a18  e749bffb  storeli.w r27, -612(r30)
000a1c  93868905  setlt.u r13, r19, r24
000a20  3bb00600  bneq r13, zero, 12
000a24  e70cbffb  storeli.w r27, -568(r30)
000a28  db010000  j 12
000a2c  97954d01  or r11, r27, r20
000a30  e70cbffa  storeli.w r11, -568(r30)
000a34  970d9d01  and r27, r26, r25
000a38  e3453ffd  loadli.w r11,  -356(r30)
000a3c  670aaffb  storeli.w r26, -608(r30)
000a40  9386b905  setlt.u r13, r19, r27
000a44  3bb00600  bneq r13, zero, 12
000a48  1f090d00  addli r18, r26, 0
000a4c  5b010000  j 8
000a50  17194d01  or r18, r26, r20
000a54  178d9b01  and r26, r23, r25
000a58  674a7ffb  storeli.w r23, -604(r30)
000a5c  9386a905  setlt.u r13, r19, r26
000a60  37a00600  beq r13, zero, 8
000a64  979b4b01  or r23, r23, r20
000a68  97869501  and r13, r11, r25
000a6c  e74adffa  storeli.w r13, -596(r30)
000a70  9386d904  setlt.u r13, r19, r13
000a74  37a00600  beq r13, zero, 8
000a78  97954501  or r11, r11, r20
000a7c  e74cbffa  storeli.w r11, -564(r30)
000a80  97059b01  and r11, r22, r25
000a84  e70a6ffb  storeli.w r22, -600(r30)
000a88  9386b904  setlt.u r13, r19, r11
000a8c  670bbffa  storeli.w r11, -592(r30)
000a90  3bb00600  bneq r13, zero, 12
000a94  9f050b00  addli r11, r22, 0
000a98  5b010000  j 8
000a9c  97154b01  or r11, r22, r20
000aa0  630b4ffd  loadli.w r22,  -352(r30)
000aa4  97069b01  and r13, r22, r25
000aa8  674bdffa  storeli.w r13, -588(r30)
000aac  9386d904  setlt.u r13, r19, r13
000ab0  3bb00600  bneq r13, zero, 12
000ab4  670d6ffb  storeli.w r22, -560(r30)
000ab8  db010000  j 12
000abc  97164b01  or r13, r22, r20
000ac0  670ddffa  storeli.w r13, -560(r30)
000ac4  634a4ffd  loadli.w r20,  -348(r30)
000ac8  970c9a01  and r25, r20, r25
000acc  93869905  setlt.u r13, r19, r25
000ad0  3bb00600  bneq r13, zero, 12
000ad4  ab094000  lui r19, 1024
000ad8  db010000  j 12
000adc  ab094000  lui r19, 1024
000ae0  171a3a01  or r20, r20, r19
000ae4  e3467ffd  loadli.w r13,  -324(r30)
000ae8  13824604  setlt.u r4, r13, r4
000aec  bb000200  bneq r4, zero, 32
000af0  1b420601  srli r4, r12, 16
000af4  1b021200  andi r4, r4, 1
000af8  0b124610  add.s r4, r12, r4
000afc  2b06ffff  lui r12, 1048560
000b00  0b12e210  add.s r4, r4, r14
000b04  1702c200  and r4, r4, r12
000b08  e70a4ffc  storeli.w r4, -344(r30)
000b0c  13820605  setlt.u r4, r13, r16
000b10  2b08ffff  lui r16, 1048560
000b14  3b700200  bneq r4, zero, 28
000b18  1b420e01  srli r4, r28, 16
000b1c  1b021200  andi r4, r4, 1
000b20  0b124e10  add.s r4, r28, r4
000b24  0b12e210  add.s r4, r4, r14
000b28  17020201  and r4, r4, r16
000b2c  e74a4ffc  storeli.w r4, -340(r30)
000b30  1382f604  setlt.u r4, r13, r15
000b34  1f860a00  addli r12, r21, 0
000b38  3b700200  bneq r4, zero, 28
000b3c  1b420501  srli r4, r10, 16
000b40  1b021200  andi r4, r4, 1
000b44  0b124510  add.s r4, r10, r4
000b48  0b12e210  add.s r4, r4, r14
000b4c  17020201  and r4, r4, r16
000b50  670b4ffc  storeli.w r4, -336(r30)
000b54  13821605  setlt.u r4, r13, r17
000b58  e30a8ffb  loadli.w r21,  -576(r30)
000b5c  630e7ffb  loadli.w r28,  -584(r30)
000b60  9f070a00  addli r15, r20, 0
000b64  3b700200  bneq r4, zero, 28
000b68  1bc20101  srli r4, r3, 16
000b6c  1b021200  andi r4, r4, 1
000b70  8b914110  add.s r3, r3, r4
000b74  8b91e110  add.s r3, r3, r14
000b78  97810101  and r3, r3, r16
000b7c  674b3ffc  storeli.w r3, -332(r30)
000b80  93818604  setlt.u r3, r13, r8
000b84  e3089ffb  loadli.w r17,  -568(r30)
000b88  63458ffb  loadli.w r10,  -572(r30)
000b8c  1f0a0900  addli r20, r18, 0
000b90  3be00100  bneq r3, zero, 24
000b94  9b410301  srli r3, r6, 16
000b98  9b811100  andi r3, r3, 1
000b9c  8b113310  add.s r3, r6, r3
000ba0  8b91e110  add.s r3, r3, r14
000ba4  178e0101  and r28, r3, r16
000ba8  93817604  setlt.u r3, r13, r7
000bac  63447ffb  loadli.w r8,  -580(r30)
000bb0  63026ffd  loadli.w r4,  -336(r30)
000bb4  3be00100  bneq r3, zero, 24
000bb8  9bc10001  srli r3, r1, 16
000bbc  9b811100  andi r3, r3, 1
000bc0  8b903010  add.s r1, r1, r3
000bc4  8b90e010  add.s r1, r1, r14
000bc8  17840001  and r8, r1, r16
000bcc  93805604  setlt.u r1, r13, r5
000bd0  3bf00000  bneq r1, zero, 28
000bd4  e3012ffb  loadli.w r3,  -624(r30)
000bd8  9bc00101  srli r1, r3, 16
000bdc  9b801000  andi r1, r1, 1
000be0  8b901110  add.s r1, r3, r1
000be4  8b90e010  add.s r1, r1, r14
000be8  978a0001  and r21, r1, r16
000bec  93802604  setlt.u r1, r13, r2
000bf0  e3426ffd  loadli.w r5,  -332(r30)
000bf4  e3415ffd  loadli.w r3,  -340(r30)
000bf8  3bf00000  bneq r1, zero, 28
000bfc  63412ffb  loadli.w r2,  -620(r30)
000c00  9b400101  srli r1, r2, 16
000c04  9b801000  andi r1, r1, 1
000c08  8b101110  add.s r1, r2, r1
000c0c  8b90e010  add.s r1, r1, r14
000c10  17850001  and r10, r1, r16
000c14  93809604  setlt.u r1, r13, r9
000c18  63015ffd  loadli.w r2,  -344(r30)
000c1c  b7c30000  beq r1, zero, 240
000c20  93808605  setlt.u r1, r13, r24
000c24  37a40000  beq r1, zero, 264
000c28  9380b605  setlt.u r1, r13, r27
000c2c  b7840000  beq r1, zero, 288
000c30  9380a605  setlt.u r1, r13, r26
000c34  3bf00000  bneq r1, zero, 28
000c38  63434ffb  loadli.w r6,  -604(r30)
000c3c  9b400301  srli r1, r6, 16
000c40  9b801000  andi r1, r1, 1
000c44  8b101310  add.s r1, r6, r1
000c48  8b90e010  add.s r1, r1, r14
000c4c  978b0001  and r23, r1, r16
000c50  e3405ffb  loadli.w r1,  -596(r30)
000c54  634b9ffb  loadli.w r22,  -564(r30)
000c58  93801604  setlt.u r1, r13, r1
000c5c  3bf00000  bneq r1, zero, 28
000c60  63433ffd  loadli.w r6,  -356(r30)
000c64  9b400301  srli r1, r6, 16
000c68  9b801000  andi r1, r1, 1
000c6c  8b101310  add.s r1, r6, r1
000c70  8b90e010  add.s r1, r1, r14
000c74  178b0001  and r22, r1, r16
000c78  e3006ffb  loadli.w r1,  -592(r30)
000c7c  93801604  setlt.u r1, r13, r1
000c80  3bf00000  bneq r1, zero, 28
000c84  63035ffb  loadli.w r6,  -600(r30)
000c88  9b400301  srli r1, r6, 16
000c8c  9b801000  andi r1, r1, 1
000c90  8b101310  add.s r1, r6, r1
000c94  8b90e010  add.s r1, r1, r14
000c98  97850001  and r11, r1, r16
000c9c  e3406ffb  loadli.w r1,  -588(r30)
000ca0  6309affb  loadli.w r18,  -560(r30)
000ca4  93801604  setlt.u r1, r13, r1
000ca8  3bf00000  bneq r1, zero, 28
000cac  63034ffd  loadli.w r6,  -352(r30)
000cb0  9b400301  srli r1, r6, 16
000cb4  9b801000  andi r1, r1, 1
000cb8  8b101310  add.s r1, r6, r1
000cbc  8b90e010  add.s r1, r1, r14
000cc0  17890001  and r18, r1, r16
000cc4  93809605  setlt.u r1, r13, r25
000cc8  3bf00000  bneq r1, zero, 28
000ccc  63434ffd  loadli.w r6,  -348(r30)
000cd0  9b400301  srli r1, r6, 16
000cd4  9b801000  andi r1, r1, 1
000cd8  8b101310  add.s r1, r6, r1
000cdc  8b90e010  add.s r1, r1, r14
000ce0  97870001  and r15, r1, r16
000ce4  e30cfffc  loadli.w r25,  -392(r30)
000ce8  ab03807f  lui r7, 522240
000cec  97009101  and r1, r2, r25
000cf0  93801304  setlt.u r1, r7, r1
000cf4  bbf10000  bneq r1, zero, 124
000cf8  9b400101  srli r1, r2, 16
000cfc  9b801000  andi r1, r1, 1
000d00  8b101110  add.s r1, r2, r1
000d04  8b90e010  add.s r1, r1, r14
000d08  db0d0000  j 108
000d0c  63033ffb  loadli.w r6,  -616(r30)
000d10  9b400301  srli r1, r6, 16
000d14  9b801000  andi r1, r1, 1
000d18  8b101310  add.s r1, r6, r1
000d1c  8b90e010  add.s r1, r1, r14
000d20  17860001  and r12, r1, r16
000d24  93808605  setlt.u r1, r13, r24
000d28  3b8c00fe  bneq r1, zero, -256
000d2c  63433ffb  loadli.w r6,  -612(r30)
000d30  9b400301  srli r1, r6, 16
000d34  9b801000  andi r1, r1, 1
000d38  8b101310  add.s r1, r6, r1
000d3c  8b90e010  add.s r1, r1, r14
000d40  97880001  and r17, r1, r16
000d44  9380b605  setlt.u r1, r13, r27
000d48  bbab00fe  bneq r1, zero, -280
000d4c  63034ffb  loadli.w r6,  -608(r30)
000d50  9b400301  srli r1, r6, 16
000d54  9b801000  andi r1, r1, 1
000d58  8b101310  add.s r1, r6, r1
000d5c  8b90e010  add.s r1, r1, r14
000d60  178a0001  and r20, r1, r16
000d64  9380a605  setlt.u r1, r13, r26
000d68  37cb00fe  beq r1, zero, -304
000d6c  dbdcffff  j -284
000d70  97103101  or r1, r2, r19
000d74  17819101  and r2, r3, r25
000d78  13812304  setlt.u r2, r7, r2
000d7c  3b600100  bneq r2, zero, 24
000d80  1bc10101  srli r2, r3, 16
000d84  1b011100  andi r2, r2, 1
000d88  0b912110  add.s r2, r3, r2
000d8c  0b11e110  add.s r2, r2, r14
000d90  5b010000  j 8
000d94  17913101  or r2, r3, r19
000d98  97019201  and r3, r4, r25
000d9c  93813304  setlt.u r3, r7, r3
000da0  3be00100  bneq r3, zero, 24
000da4  9b410201  srli r3, r4, 16
000da8  9b811100  andi r3, r3, 1
000dac  8b113210  add.s r3, r4, r3
000db0  8b91e110  add.s r3, r3, r14
000db4  5b010000  j 8
000db8  97113201  or r3, r4, r19
000dbc  17829201  and r4, r5, r25
000dc0  13824304  setlt.u r4, r7, r4
000dc4  3b600200  bneq r4, zero, 24
000dc8  1bc20201  srli r4, r5, 16
000dcc  1b021200  andi r4, r4, 1
000dd0  0b924210  add.s r4, r5, r4
000dd4  8b12e210  add.s r5, r4, r14
000dd8  5b010000  j 8
000ddc  97923201  or r5, r5, r19
000de0  17029e01  and r4, r28, r25
000de4  13824304  setlt.u r4, r7, r4
000de8  3b600200  bneq r4, zero, 24
000dec  1b420e01  srli r4, r28, 16
000df0  1b021200  andi r4, r4, 1
000df4  0b124e10  add.s r4, r28, r4
000df8  0b13e210  add.s r6, r4, r14
000dfc  5b010000  j 8
000e00  17133e01  or r6, r28, r19
000e04  17029401  and r4, r8, r25
000e08  13824304  setlt.u r4, r7, r4
000e0c  3b600200  bneq r4, zero, 24
000e10  1b420401  srli r4, r8, 16
000e14  1b021200  andi r4, r4, 1
000e18  0b124410  add.s r4, r8, r4
000e1c  0b14e210  add.s r8, r4, r14
000e20  5b010000  j 8
000e24  17143401  or r8, r8, r19
000e28  17829a01  and r4, r21, r25
000e2c  13824304  setlt.u r4, r7, r4
000e30  3b600200  bneq r4, zero, 24
000e34  1bc20a01  srli r4, r21, 16
000e38  1b021200  andi r4, r4, 1
000e3c  0b924a10  add.s r4, r21, r4
000e40  8b14e210  add.s r9, r4, r14
000e44  5b010000  j 8
000e48  97943a01  or r9, r21, r19
000e4c  17029501  and r4, r10, r25
000e50  13824304  setlt.u r4, r7, r4
000e54  3b600200  bneq r4, zero, 24
000e58  1b420501  srli r4, r10, 16
000e5c  1b021200  andi r4, r4, 1
000e60  0b124510  add.s r4, r10, r4
000e64  0b15e210  add.s r10, r4, r14
000e68  5b010000  j 8
000e6c  17153501  or r10, r10, r19
000e70  17029601  and r4, r12, r25
000e74  13824304  setlt.u r4, r7, r4
000e78  3b600200  bneq r4, zero, 24
000e7c  1b420601  srli r4, r12, 16
000e80  1b021200  andi r4, r4, 1
000e84  0b124610  add.s r4, r12, r4
000e88  0b16e210  add.s r12, r4, r14
000e8c  5b010000  j 8
000e90  17163601  or r12, r12, r19
000e94  17829801  and r4, r17, r25
000e98  13824304  setlt.u r4, r7, r4
000e9c  3b600200  bneq r4, zero, 24
000ea0  1bc20801  srli r4, r17, 16
000ea4  1b021200  andi r4, r4, 1
000ea8  0b924810  add.s r4, r17, r4
000eac  8b18e210  add.s r17, r4, r14
000eb0  5b010000  j 8
000eb4  97983801  or r17, r17, r19
000eb8  17029a01  and r4, r20, r25
000ebc  13824304  setlt.u r4, r7, r4
000ec0  3b600200  bneq r4, zero, 24
000ec4  1b420a01  srli r4, r20, 16
000ec8  1b021200  andi r4, r4, 1
000ecc  0b124a10  add.s r4, r20, r4
000ed0  0b1ae210  add.s r20, r4, r14
000ed4  5b010000  j 8
000ed8  171a3a01  or r20, r20, r19
000edc  17829b01  and r4, r23, r25
000ee0  13824304  setlt.u r4, r7, r4
000ee4  3b600200  bneq r4, zero, 24
000ee8  1bc20b01  srli r4, r23, 16
000eec  1b021200  andi r4, r4, 1
000ef0  0b924b10  add.s r4, r23, r4
000ef4  8b1ae210  add.s r21, r4, r14
000ef8  5b010000  j 8
000efc  979a3b01  or r21, r23, r19
000f00  17029b01  and r4, r22, r25
000f04  13824304  setlt.u r4, r7, r4
000f08  3b600200  bneq r4, zero, 24
000f0c  1b420b01  srli r4, r22, 16
000f10  1b021200  andi r4, r4, 1
000f14  0b124b10  add.s r4, r22, r4
000f18  0b1be210  add.s r22, r4, r14
000f1c  5b010000  j 8
000f20  171b3b01  or r22, r22, r19
000f24  17829501  and r4, r11, r25
000f28  13824304  setlt.u r4, r7, r4
000f2c  3b600200  bneq r4, zero, 24
000f30  1bc20501  srli r4, r11, 16
000f34  1b021200  andi r4, r4, 1
000f38  0b924510  add.s r4, r11, r4
000f3c  8b1be210  add.s r23, r4, r14
000f40  5b010000  j 8
000f44  979b3501  or r23, r11, r19
000f48  17029901  and r4, r18, r25
000f4c  ab05807f  lui r11, 522240
000f50  13824304  setlt.u r4, r7, r4
000f54  3b600200  bneq r4, zero, 24
000f58  1b420901  srli r4, r18, 16
000f5c  1b021200  andi r4, r4, 1
000f60  0b124910  add.s r4, r18, r4
000f64  8b16e210  add.s r13, r4, r14
000f68  5b010000  j 8
000f6c  97163901  or r13, r18, r19
000f70  17829701  and r4, r15, r25
000f74  13824504  setlt.u r4, r11, r4
000f78  3b600200  bneq r4, zero, 24
000f7c  1bc20701  srli r4, r15, 16
000f80  1b021200  andi r4, r4, 1
000f84  0b924710  add.s r4, r15, r4
000f88  0b17e210  add.s r14, r4, r14
000f8c  5b010000  j 8
000f90  17973701  or r14, r15, r19
000f94  17820101  and r4, r3, r16
000f98  ab01ffff  lui r3, 1048560
000f9c  97800001  and r1, r1, r16
000fa0  17010101  and r2, r2, r16
000fa4  97820201  and r5, r5, r16
000fa8  97030301  and r7, r6, r16
000fac  97050401  and r11, r8, r16
000fb0  97870401  and r15, r9, r16
000fb4  170c3b00  and r24, r22, r3
000fb8  170b3700  and r22, r14, r3
000fbc  6347affb  loadli.w r14,  -556(r30)
000fc0  17083500  and r16, r10, r3
000fc4  17093600  and r18, r12, r3
000fc8  97893800  and r19, r17, r3
000fcc  170a3a00  and r20, r20, r3
000fd0  978a3a00  and r21, r21, r3
000fd4  178d3b00  and r26, r23, r3
000fd8  978d3600  and r27, r13, r3
000fdc  9f010004  addli r3, zero, 512
000fe0  3f303700  blt.s r14, r3, 12
000fe4  9f010000  addli r3, zero, 0
000fe8  5b080000  j 64
000fec  8be12010  add.f.rn r3, r1, r2
000ff0  8be14110  add.f.rn r3, r3, r4
000ff4  8be15110  add.f.rn r3, r3, r5
000ff8  8be17110  add.f.rn r3, r3, r7
000ffc  8be1b110  add.f.rn r3, r3, r11
001000  8be1f110  add.f.rn r3, r3, r15
001004  8be10111  add.f.rn r3, r3, r16
001008  8be12111  add.f.rn r3, r3, r18
00100c  8be13111  add.f.rn r3, r3, r19
001010  8be14111  add.f.rn r3, r3, r20
001014  8be15111  add.f.rn r3, r3, r21
001018  8be18111  add.f.rn r3, r3, r24
00101c  8be1a111  add.f.rn r3, r3, r26
001020  8be1b111  add.f.rn r3, r3, r27
001024  8be16111  add.f.rn r3, r3, r22
001028  63430ffb  loadli.w r6,  -636(r30)
00102c  63060ffb  loadli.w r12,  -640(r30)
001030  ab06807f  lui r13, 522240
001034  73603300  stores.w r3, 0(r6)
001038  00a00300  mfence { lm, sm, gm }
00103c  80210604  csr_set csr3, r12
001040  00d00100  sync_group
001044  e341fffc  loadli.w r3,  -388(r30)
001048  3ba80100  bneq r3, zero, 520
00104c  e3441ffb  loadli.w r9,  -628(r30)
001050  efc10400  loads.w r3, 0(r9)
001054  6fc44400  loads.w r8, 4(r9)
001058  6fc38400  loads.w r6, 8(r9)
00105c  8be18110  add.f.rn r3, r3, r8
001060  6fc4c400  loads.w r8, 12(r9)
001064  8be16110  add.f.rn r3, r3, r6
001068  6fc30401  loads.w r6, 16(r9)
00106c  8be18110  add.f.rn r3, r3, r8
001070  6fc44401  loads.w r8, 20(r9)
001074  8be16110  add.f.rn r3, r3, r6
001078  6fc38401  loads.w r6, 24(r9)
00107c  8be18110  add.f.rn r3, r3, r8
001080  6fc4c401  loads.w r8, 28(r9)
001084  8be16110  add.f.rn r3, r3, r6
001088  6fc30402  loads.w r6, 32(r9)
00108c  8be18110  add.f.rn r3, r3, r8
001090  6fc44402  loads.w r8, 36(r9)
001094  8be16110  add.f.rn r3, r3, r6
001098  6fc38402  loads.w r6, 40(r9)
00109c  8be18110  add.f.rn r3, r3, r8
0010a0  6fc4c402  loads.w r8, 44(r9)
0010a4  8be16110  add.f.rn r3, r3, r6
0010a8  6fc30403  loads.w r6, 48(r9)
0010ac  8be18110  add.f.rn r3, r3, r8
0010b0  6fc44403  loads.w r8, 52(r9)
0010b4  8be16110  add.f.rn r3, r3, r6
0010b8  6fc38403  loads.w r6, 56(r9)
0010bc  8be18110  add.f.rn r3, r3, r8
0010c0  6fc4c403  loads.w r8, 60(r9)
0010c4  8be16110  add.f.rn r3, r3, r6
0010c8  6fc30404  loads.w r6, 64(r9)
0010cc  8be18110  add.f.rn r3, r3, r8
0010d0  6fc44404  loads.w r8, 68(r9)
0010d4  8be16110  add.f.rn r3, r3, r6
0010d8  6fc38404  loads.w r6, 72(r9)
0010dc  8be18110  add.f.rn r3, r3, r8
0010e0  6fc4c404  loads.w r8, 76(r9)
0010e4  8be16110  add.f.rn r3, r3, r6
0010e8  6fc30405  loads.w r6, 80(r9)
0010ec  8be18110  add.f.rn r3, r3, r8
0010f0  6fc44405  loads.w r8, 84(r9)
0010f4  8be16110  add.f.rn r3, r3, r6
0010f8  6fc38405  loads.w r6, 88(r9)
0010fc  8be18110  add.f.rn r3, r3, r8
001100  6fc4c405  loads.w r8, 92(r9)
001104  8be16110  add.f.rn r3, r3, r6
001108  6fc30406  loads.w r6, 96(r9)
00110c  8be18110  add.f.rn r3, r3, r8
001110  6fc44406  loads.w r8, 100(r9)
001114  8be16110  add.f.rn r3, r3, r6
001118  6fc38406  loads.w r6, 104(r9)
00111c  8be18110  add.f.rn r3, r3, r8
001120  6fc4c406  loads.w r8, 108(r9)
001124  8be16110  add.f.rn r3, r3, r6
001128  6fc30407  loads.w r6, 112(r9)
00112c  8be18110  add.f.rn r3, r3, r8
001130  6fc44407  loads.w r8, 116(r9)
001134  8be16110  add.f.rn r3, r3, r6
001138  6fc38407  loads.w r6, 120(r9)
00113c  8be18110  add.f.rn r3, r3, r8
001140  6fc4c407  loads.w r8, 124(r9)
001144  8be16110  add.f.rn r3, r3, r6
001148  6fc30408  loads.w r6, 128(r9)
00114c  8be18110  add.f.rn r3, r3, r8
001150  6fc44408  loads.w r8, 132(r9)
001154  8be16110  add.f.rn r3, r3, r6
001158  6fc38408  loads.w r6, 136(r9)
00115c  8be18110  add.f.rn r3, r3, r8
001160  6fc4c408  loads.w r8, 140(r9)
001164  8be16110  add.f.rn r3, r3, r6
001168  6fc30409  loads.w r6, 144(r9)
00116c  8be18110  add.f.rn r3, r3, r8
001170  6fc44409  loads.w r8, 148(r9)
001174  8be16110  add.f.rn r3, r3, r6
001178  6fc38409  loads.w r6, 152(r9)
00117c  8be18110  add.f.rn r3, r3, r8
001180  6fc4c409  loads.w r8, 156(r9)
001184  8be16110  add.f.rn r3, r3, r6
001188  6fc3040a  loads.w r6, 160(r9)
00118c  8be18110  add.f.rn r3, r3, r8
001190  6fc4440a  loads.w r8, 164(r9)
001194  8be16110  add.f.rn r3, r3, r6
001198  6fc3840a  loads.w r6, 168(r9)
00119c  8be18110  add.f.rn r3, r3, r8
0011a0  6fc4c40a  loads.w r8, 172(r9)
0011a4  8be16110  add.f.rn r3, r3, r6
0011a8  6fc3040b  loads.w r6, 176(r9)
0011ac  8be18110  add.f.rn r3, r3, r8
0011b0  6fc4440b  loads.w r8, 180(r9)
0011b4  8be16110  add.f.rn r3, r3, r6
0011b8  6fc3840b  loads.w r6, 184(r9)
0011bc  8be18110  add.f.rn r3, r3, r8
0011c0  6fc4c40b  loads.w r8, 188(r9)
0011c4  8be16110  add.f.rn r3, r3, r6
0011c8  6fc3040c  loads.w r6, 192(r9)
0011cc  8be18110  add.f.rn r3, r3, r8
0011d0  6fc4440c  loads.w r8, 196(r9)
0011d4  8be16110  add.f.rn r3, r3, r6
0011d8  6fc3840c  loads.w r6, 200(r9)
0011dc  8be18110  add.f.rn r3, r3, r8
0011e0  6fc4c40c  loads.w r8, 204(r9)
0011e4  8be16110  add.f.rn r3, r3, r6
0011e8  6fc3040d  loads.w r6, 208(r9)
0011ec  8be18110  add.f.rn r3, r3, r8
0011f0  6fc4440d  loads.w r8, 212(r9)
0011f4  8be16110  add.f.rn r3, r3, r6
0011f8  6fc3840d  loads.w r6, 216(r9)
0011fc  8be18110  add.f.rn r3, r3, r8
001200  6fc4c40d  loads.w r8, 220(r9)
001204  8be16110  add.f.rn r3, r3, r6
001208  6fc3040e  loads.w r6, 224(r9)
00120c  8be18110  add.f.rn r3, r3, r8
001210  6fc4440e  loads.w r8, 228(r9)
001214  8be16110  add.f.rn r3, r3, r6
001218  6fc3840e  loads.w r6, 232(r9)
00121c  8be18110  add.f.rn r3, r3, r8
001220  6fc4c40e  loads.w r8, 236(r9)
001224  8be16110  add.f.rn r3, r3, r6
001228  6fc3040f  loads.w r6, 240(r9)
00122c  8be18110  add.f.rn r3, r3, r8
001230  6fc4440f  loads.w r8, 244(r9)
001234  8be16110  add.f.rn r3, r3, r6
001238  6fc3840f  loads.w r6, 248(r9)
00123c  8be18110  add.f.rn r3, r3, r8
001240  6fc4c40f  loads.w r8, 252(r9)
001244  8be16110  add.f.rn r3, r3, r6
001248  8be18110  add.f.rn r3, r3, r8
00124c  73e03400  stores.w r3, 0(r9)
001250  00a00300  mfence { lm, sm, gm }
001254  80210604  csr_set csr3, r12
001258  00d00100  sync_group
00125c  e3411ffb  loadli.w r3,  -628(r30)
001260  2b03803a  lui r6, 239616
001264  efc10100  loads.w r3, 0(r3)
001268  0be46120  mul.f.rn r8, r3, r6
00126c  8be48018  sub.f.rn r9, r1, r8
001270  8b618118  sub.f.rn r3, r2, r8
001274  0b638218  sub.f.rn r6, r4, r8
001278  0be58318  sub.f.rn r10, r7, r8
00127c  0be28718  sub.f.rn r4, r15, r8
001280  8b6b8818  sub.f.rn r23, r16, r8
001284  0b6e8918  sub.f.rn r28, r18, r8
001288  8be38918  sub.f.rn r7, r19, r8
00128c  8b688d18  sub.f.rn r17, r26, r8
001290  8be08218  sub.f.rn r1, r5, r8
001294  8be58518  sub.f.rn r11, r11, r8
001298  0b6a8a18  sub.f.rn r20, r20, r8
00129c  0be98a18  sub.f.rn r18, r21, r8
0012a0  8b698c18  sub.f.rn r19, r24, r8
0012a4  0be88d18  sub.f.rn r16, r27, r8
0012a8  8b678b18  sub.f.rn r15, r22, r8
0012ac  1f010004  addli r2, zero, 512
0012b0  670d1ffb  storeli.w r17, -560(r30)
0012b4  3f302700  blt.s r14, r2, 12
0012b8  1f010000  addli r2, zero, 0
0012bc  5b100000  j 128
0012c0  0be19420  mul.f.rn r2, r9, r9
0012c4  8be23120  mul.f.rn r5, r3, r3
0012c8  0b615110  add.f.rn r2, r2, r5
0012cc  8b626320  mul.f.rn r5, r6, r6
0012d0  0be12210  add.f.rn r2, r5, r2
0012d4  8be21020  mul.f.rn r5, r1, r1
0012d8  0be12210  add.f.rn r2, r5, r2
0012dc  8b62a520  mul.f.rn r5, r10, r10
0012e0  0be12210  add.f.rn r2, r5, r2
0012e4  8be2b520  mul.f.rn r5, r11, r11
0012e8  0be12210  add.f.rn r2, r5, r2
0012ec  8b624220  mul.f.rn r5, r4, r4
0012f0  0be12210  add.f.rn r2, r5, r2
0012f4  8be27b21  mul.f.rn r5, r23, r23
0012f8  0be12210  add.f.rn r2, r5, r2
0012fc  8b62ce21  mul.f.rn r5, r28, r28
001300  0be12210  add.f.rn r2, r5, r2
001304  8be27320  mul.f.rn r5, r7, r7
001308  0be12210  add.f.rn r2, r5, r2
00130c  8b624a21  mul.f.rn r5, r20, r20
001310  0be12210  add.f.rn r2, r5, r2
001314  8b622921  mul.f.rn r5, r18, r18
001318  0be12210  add.f.rn r2, r5, r2
00131c  8be23921  mul.f.rn r5, r19, r19
001320  0be12210  add.f.rn r2, r5, r2
001324  8be21821  mul.f.rn r5, r17, r17
001328  0be12210  add.f.rn r2, r5, r2
00132c  8b620821  mul.f.rn r5, r16, r16
001330  0be12210  add.f.rn r2, r5, r2
001334  8be2f720  mul.f.rn r5, r15, r15
001338  0be12210  add.f.rn r2, r5, r2
00133c  e342effa  loadli.w r5,  -652(r30)
001340  ab084000  lui r17, 1024
001344  1f070900  addli r14, r18, 0
001348  73e02200  stores.w r2, 0(r5)
00134c  00a00300  mfence { lm, sm, gm }
001350  80210604  csr_set csr3, r12
001354  00d00100  sync_group
001358  6341fffc  loadli.w r2,  -388(r30)
00135c  3b380100  bneq r2, zero, 524
001360  e3061ffb  loadli.w r13,  -632(r30)
001364  6fc10600  loads.w r2, 0(r13)
001368  6fc44600  loads.w r8, 4(r13)
00136c  efc28600  loads.w r5, 8(r13)
001370  0b618110  add.f.rn r2, r2, r8
001374  6fc4c600  loads.w r8, 12(r13)
001378  0b615110  add.f.rn r2, r2, r5
00137c  efc20601  loads.w r5, 16(r13)
001380  0b618110  add.f.rn r2, r2, r8
001384  6fc44601  loads.w r8, 20(r13)
001388  0b615110  add.f.rn r2, r2, r5
00138c  efc28601  loads.w r5, 24(r13)
001390  0b618110  add.f.rn r2, r2, r8
001394  6fc4c601  loads.w r8, 28(r13)
001398  0b615110  add.f.rn r2, r2, r5
00139c  efc20602  loads.w r5, 32(r13)
0013a0  0b618110  add.f.rn r2, r2, r8
0013a4  6fc44602  loads.w r8, 36(r13)
0013a8  0b615110  add.f.rn r2, r2, r5
0013ac  efc28602  loads.w r5, 40(r13)
0013b0  0b618110  add.f.rn r2, r2, r8
0013b4  6fc4c602  loads.w r8, 44(r13)
0013b8  0b615110  add.f.rn r2, r2, r5
0013bc  efc20603  loads.w r5, 48(r13)
0013c0  0b618110  add.f.rn r2, r2, r8
0013c4  6fc44603  loads.w r8, 52(r13)
0013c8  0b615110  add.f.rn r2, r2, r5
0013cc  efc28603  loads.w r5, 56(r13)
0013d0  0b618110  add.f.rn r2, r2, r8
0013d4  6fc4c603  loads.w r8, 60(r13)
0013d8  0b615110  add.f.rn r2, r2, r5
0013dc  efc20604  loads.w r5, 64(r13)
0013e0  0b618110  add.f.rn r2, r2, r8
0013e4  6fc44604  loads.w r8, 68(r13)
0013e8  0b615110  add.f.rn r2, r2, r5
0013ec  efc28604  loads.w r5, 72(r13)
0013f0  0b618110  add.f.rn r2, r2, r8
0013f4  6fc4c604  loads.w r8, 76(r13)
0013f8  0b615110  add.f.rn r2, r2, r5
0013fc  efc20605  loads.w r5, 80(r13)
001400  0b618110  add.f.rn r2, r2, r8
001404  6fc44605  loads.w r8, 84(r13)
001408  0b615110  add.f.rn r2, r2, r5
00140c  efc28605  loads.w r5, 88(r13)
001410  0b618110  add.f.rn r2, r2, r8
001414  6fc4c605  loads.w r8, 92(r13)
001418  0b615110  add.f.rn r2, r2, r5
00141c  efc20606  loads.w r5, 96(r13)
001420  0b618110  add.f.rn r2, r2, r8
001424  6fc44606  loads.w r8, 100(r13)
001428  0b615110  add.f.rn r2, r2, r5
00142c  efc28606  loads.w r5, 104(r13)
001430  0b618110  add.f.rn r2, r2, r8
001434  6fc4c606  loads.w r8, 108(r13)
001438  0b615110  add.f.rn r2, r2, r5
00143c  efc20607  loads.w r5, 112(r13)
001440  0b618110  add.f.rn r2, r2, r8
001444  6fc44607  loads.w r8, 116(r13)
001448  0b615110  add.f.rn r2, r2, r5
00144c  efc28607  loads.w r5, 120(r13)
001450  0b618110  add.f.rn r2, r2, r8
001454  6fc4c607  loads.w r8, 124(r13)
001458  0b615110  add.f.rn r2, r2, r5
00145c  efc20608  loads.w r5, 128(r13)
001460  0b618110  add.f.rn r2, r2, r8
001464  6fc44608  loads.w r8, 132(r13)
001468  0b615110  add.f.rn r2, r2, r5
00146c  efc28608  loads.w r5, 136(r13)
001470  0b618110  add.f.rn r2, r2, r8
001474  6fc4c608  loads.w r8, 140(r13)
001478  0b615110  add.f.rn r2, r2, r5
00147c  efc20609  loads.w r5, 144(r13)
001480  0b618110  add.f.rn r2, r2, r8
001484  6fc44609  loads.w r8, 148(r13)
001488  0b615110  add.f.rn r2, r2, r5
00148c  efc28609  loads.w r5, 152(r13)
001490  0b618110  add.f.rn r2, r2, r8
001494  6fc4c609  loads.w r8, 156(r13)
001498  0b615110  add.f.rn r2, r2, r5
00149c  efc2060a  loads.w r5, 160(r13)
0014a0  0b618110  add.f.rn r2, r2, r8
0014a4  6fc4460a  loads.w r8, 164(r13)
0014a8  0b615110  add.f.rn r2, r2, r5
0014ac  efc2860a  loads.w r5, 168(r13)
0014b0  0b618110  add.f.rn r2, r2, r8
0014b4  6fc4c60a  loads.w r8, 172(r13)
0014b8  0b615110  add.f.rn r2, r2, r5
0014bc  efc2060b  loads.w r5, 176(r13)
0014c0  0b618110  add.f.rn r2, r2, r8
0014c4  6fc4460b  loads.w r8, 180(r13)
0014c8  0b615110  add.f.rn r2, r2, r5
0014cc  efc2860b  loads.w r5, 184(r13)
0014d0  0b618110  add.f.rn r2, r2, r8
0014d4  6fc4c60b  loads.w r8, 188(r13)
0014d8  0b615110  add.f.rn r2, r2, r5
0014dc  efc2060c  loads.w r5, 192(r13)
0014e0  0b618110  add.f.rn r2, r2, r8
0014e4  6fc4460c  loads.w r8, 196(r13)
0014e8  0b615110  add.f.rn r2, r2, r5
0014ec  efc2860c  loads.w r5, 200(r13)
0014f0  0b618110  add.f.rn r2, r2, r8
0014f4  6fc4c60c  loads.w r8, 204(r13)
0014f8  0b615110  add.f.rn r2, r2, r5
0014fc  efc2060d  loads.w r5, 208(r13)
001500  0b618110  add.f.rn r2, r2, r8
001504  6fc4460d  loads.w r8, 212(r13)
001508  0b615110  add.f.rn r2, r2, r5
00150c  efc2860d  loads.w r5, 216(r13)
001510  0b618110  add.f.rn r2, r2, r8
001514  6fc4c60d  loads.w r8, 220(r13)
001518  0b615110  add.f.rn r2, r2, r5
00151c  efc2060e  loads.w r5, 224(r13)
001520  0b618110  add.f.rn r2, r2, r8
001524  6fc4460e  loads.w r8, 228(r13)
001528  0b615110  add.f.rn r2, r2, r5
00152c  efc2860e  loads.w r5, 232(r13)
001530  0b618110  add.f.rn r2, r2, r8
001534  6fc4c60e  loads.w r8, 236(r13)
001538  0b615110  add.f.rn r2, r2, r5
00153c  efc2060f  loads.w r5, 240(r13)
001540  0b618110  add.f.rn r2, r2, r8
001544  6fc4460f  loads.w r8, 244(r13)
001548  0b615110  add.f.rn r2, r2, r5
00154c  efc2860f  loads.w r5, 248(r13)
001550  0b618110  add.f.rn r2, r2, r8
001554  6fc4c60f  loads.w r8, 252(r13)
001558  0b615110  add.f.rn r2, r2, r5
00155c  0b618110  add.f.rn r2, r2, r8
001560  73e02600  stores.w r2, 0(r13)
001564  ab06807f  lui r13, 522240
001568  00a00300  mfence { lm, sm, gm }
00156c  80210604  csr_set csr3, r12
001570  00d00100  sync_group
001574  63011ffb  loadli.w r2,  -632(r30)
001578  ab02803a  lui r5, 239616
00157c  6f410100  loads.w r2, 0(r2)
001580  0b615120  mul.f.rn r2, r2, r5
001584  e3422ffa  loadli.w r5,  -748(r30)
001588  0b615110  add.f.rn r2, r2, r5
00158c  ab02803f  lui r5, 260096
001590  0f010108  sqrt.f.rn r2, r2
001594  8f8a2218  div.f.rn r21, r5, r2
001598  e342bffb  loadli.w r5,  -548(r30)
00159c  b3920218  bfloat2float.rn r5, r5
0015a0  0be15421  mul.f.rn r2, r9, r21
0015a4  0b615120  mul.f.rn r2, r2, r5
0015a8  e302bffb  loadli.w r5,  -552(r30)
0015ac  b3920218  bfloat2float.rn r5, r5
0015b0  0b695110  add.f.rn r18, r2, r5
0015b4  17019901  and r2, r18, r25
0015b8  e74d2ffa  storeli.w r2, -548(r30)
0015bc  13812604  setlt.u r2, r13, r2
0015c0  3b300100  bneq r2, zero, 12
0015c4  674b2ffd  storeli.w r18, -332(r30)
0015c8  db010000  j 12
0015cc  17111901  or r2, r18, r17
0015d0  674b2ffc  storeli.w r2, -332(r30)
0015d4  0be15121  mul.f.rn r2, r3, r21
0015d8  e341cffb  loadli.w r3,  -540(r30)
0015dc  b3910118  bfloat2float.rn r3, r3
0015e0  0b613120  mul.f.rn r2, r2, r3
0015e4  e301cffb  loadli.w r3,  -544(r30)
0015e8  b3910118  bfloat2float.rn r3, r3
0015ec  0b6c3110  add.f.rn r24, r2, r3
0015f0  17019c01  and r2, r24, r25
0015f4  674e2ffa  storeli.w r2, -540(r30)
0015f8  13812604  setlt.u r2, r13, r2
0015fc  3b300100  bneq r2, zero, 12
001600  670b8ffd  storeli.w r24, -336(r30)
001604  db010000  j 12
001608  17111c01  or r2, r24, r17
00160c  670b2ffc  storeli.w r2, -336(r30)
001610  0b615321  mul.f.rn r2, r6, r21
001614  e341dffb  loadli.w r3,  -532(r30)
001618  b3910118  bfloat2float.rn r3, r3
00161c  0b613120  mul.f.rn r2, r2, r3
001620  e301dffb  loadli.w r3,  -536(r30)
001624  b3910118  bfloat2float.rn r3, r3
001628  8b6d3110  add.f.rn r27, r2, r3
00162c  17819d01  and r2, r27, r25
001630  e74e2ffa  storeli.w r2, -532(r30)
001634  13812604  setlt.u r2, r13, r2
001638  3b300100  bneq r2, zero, 12
00163c  e74abffd  storeli.w r27, -340(r30)
001640  db010000  j 12
001644  17911d01  or r2, r27, r17
001648  e74a2ffc  storeli.w r2, -340(r30)
00164c  8be05021  mul.f.rn r1, r1, r21
001650  6341effb  loadli.w r2,  -524(r30)
001654  33110118  bfloat2float.rn r2, r2
001658  8be02020  mul.f.rn r1, r1, r2
00165c  6301effb  loadli.w r2,  -528(r30)
001660  33110118  bfloat2float.rn r2, r2
001664  8be02010  add.f.rn r1, r1, r2
001668  17819001  and r2, r1, r25
00166c  674f2ffa  storeli.w r2, -524(r30)
001670  13812604  setlt.u r2, r13, r2
001674  3b300100  bneq r2, zero, 12
001678  e70a1ffc  storeli.w r1, -344(r30)
00167c  db010000  j 12
001680  17911001  or r2, r1, r17
001684  e70a2ffc  storeli.w r2, -344(r30)
001688  0b615521  mul.f.rn r2, r10, r21
00168c  e341fffb  loadli.w r3,  -516(r30)
001690  b3910118  bfloat2float.rn r3, r3
001694  0b613120  mul.f.rn r2, r2, r3
001698  e301fffb  loadli.w r3,  -520(r30)
00169c  b3910118  bfloat2float.rn r3, r3
0016a0  0b653110  add.f.rn r10, r2, r3
0016a4  17019501  and r2, r10, r25
0016a8  e74f2ffa  storeli.w r2, -516(r30)
0016ac  13812604  setlt.u r2, r13, r2
0016b0  3b300100  bneq r2, zero, 12
0016b4  674aaffc  storeli.w r10, -348(r30)
0016b8  db010000  j 12
0016bc  17111501  or r2, r10, r17
0016c0  674a2ffc  storeli.w r2, -348(r30)
0016c4  0be15521  mul.f.rn r2, r11, r21
0016c8  e3410ffc  loadli.w r3,  -508(r30)
0016cc  b3910118  bfloat2float.rn r3, r3
0016d0  0b613120  mul.f.rn r2, r2, r3
0016d4  e3010ffc  loadli.w r3,  -512(r30)
0016d8  b3910118  bfloat2float.rn r3, r3
0016dc  8b653110  add.f.rn r11, r2, r3
0016e0  17819501  and r2, r11, r25
0016e4  67402ffc  storeli.w r2, -508(r30)
0016e8  13812604  setlt.u r2, r13, r2
0016ec  3b300100  bneq r2, zero, 12
0016f0  670abffc  storeli.w r11, -352(r30)
0016f4  db010000  j 12
0016f8  17911501  or r2, r11, r17
0016fc  670a2ffc  storeli.w r2, -352(r30)
001700  0b615221  mul.f.rn r2, r4, r21
001704  e3411ffc  loadli.w r3,  -500(r30)
001708  b3910118  bfloat2float.rn r3, r3
00170c  0b613120  mul.f.rn r2, r2, r3
001710  e3011ffc  loadli.w r3,  -504(r30)
001714  b3910118  bfloat2float.rn r3, r3
001718  0b623110  add.f.rn r4, r2, r3
00171c  17019201  and r2, r4, r25
001720  e7402ffc  storeli.w r2, -500(r30)
001724  13812604  setlt.u r2, r13, r2
001728  3b300100  bneq r2, zero, 12
00172c  e7494ffc  storeli.w r4, -356(r30)
001730  db010000  j 12
001734  17111201  or r2, r4, r17
001738  e7492ffc  storeli.w r2, -356(r30)
00173c  0be15b21  mul.f.rn r2, r23, r21
001740  e3013ffd  loadli.w r3,  -360(r30)
001744  b3910118  bfloat2float.rn r3, r3
001748  0b613120  mul.f.rn r2, r2, r3
00174c  e3012ffc  loadli.w r3,  -496(r30)
001750  b3910118  bfloat2float.rn r3, r3
001754  8b623110  add.f.rn r5, r2, r3
001758  9f810700  addli r3, r15, 0
00175c  17819201  and r2, r5, r25
001760  67012ffc  storeli.w r2, -496(r30)
001764  13812604  setlt.u r2, r13, r2
001768  3b300100  bneq r2, zero, 12
00176c  e7095ffc  storeli.w r5, -360(r30)
001770  db010000  j 12
001774  17911201  or r2, r5, r17
001778  e7092ffc  storeli.w r2, -360(r30)
00177c  0b615e21  mul.f.rn r2, r28, r21
001780  63432ffd  loadli.w r6,  -364(r30)
001784  33130318  bfloat2float.rn r6, r6
001788  0b616120  mul.f.rn r2, r2, r6
00178c  63432ffc  loadli.w r6,  -492(r30)
001790  33130318  bfloat2float.rn r6, r6
001794  8b676110  add.f.rn r15, r2, r6
001798  178d9701  and r26, r15, r25
00179c  1381a605  setlt.u r2, r13, r26
0017a0  3b300100  bneq r2, zero, 12
0017a4  6749fffc  storeli.w r15, -364(r30)
0017a8  db010000  j 12
0017ac  17911701  or r2, r15, r17
0017b0  67492ffc  storeli.w r2, -364(r30)
0017b4  0be15321  mul.f.rn r2, r7, r21
0017b8  63032ffd  loadli.w r6,  -368(r30)
0017bc  33130318  bfloat2float.rn r6, r6
0017c0  0b616120  mul.f.rn r2, r2, r6
0017c4  63033ffc  loadli.w r6,  -488(r30)
0017c8  33130318  bfloat2float.rn r6, r6
0017cc  0b6b6110  add.f.rn r22, r2, r6
0017d0  17039b01  and r6, r22, r25
0017d4  13816604  setlt.u r2, r13, r6
0017d8  3b300100  bneq r2, zero, 12
0017dc  67096ffd  storeli.w r22, -368(r30)
0017e0  db010000  j 12
0017e4  17111b01  or r2, r22, r17
0017e8  67092ffc  storeli.w r2, -368(r30)
0017ec  0b615a21  mul.f.rn r2, r20, r21
0017f0  e3431ffd  loadli.w r7,  -372(r30)
0017f4  b3930318  bfloat2float.rn r7, r7
0017f8  0b617120  mul.f.rn r2, r2, r7
0017fc  e3034ffc  loadli.w r7,  -480(r30)
001800  b3930318  bfloat2float.rn r7, r7
001804  0b6e7110  add.f.rn r28, r2, r7
001808  170a9e01  and r20, r28, r25
00180c  13814605  setlt.u r2, r13, r20
001810  3b300100  bneq r2, zero, 12
001814  e748cffd  storeli.w r28, -372(r30)
001818  db010000  j 12
00181c  17111e01  or r2, r28, r17
001820  e7482ffc  storeli.w r2, -372(r30)
001824  0b615721  mul.f.rn r2, r14, r21
001828  e3031ffd  loadli.w r7,  -376(r30)
00182c  2b074000  lui r14, 1024
001830  b3930318  bfloat2float.rn r7, r7
001834  0b617120  mul.f.rn r2, r2, r7
001838  e3035ffc  loadli.w r7,  -472(r30)
00183c  b3930318  bfloat2float.rn r7, r7
001840  0b617110  add.f.rn r2, r2, r7
001844  17069101  and r12, r2, r25
001848  9383c604  setlt.u r7, r13, r12
00184c  3bb00300  bneq r7, zero, 12
001850  e7082ffc  storeli.w r2, -376(r30)
001854  db010000  j 12
001858  97131101  or r7, r2, r17
00185c  e7087ffc  storeli.w r7, -376(r30)
001860  8be35921  mul.f.rn r7, r19, r21
001864  63440ffd  loadli.w r8,  -380(r30)
001868  33140418  bfloat2float.rn r8, r8
00186c  8be38320  mul.f.rn r7, r7, r8
001870  63046ffc  loadli.w r8,  -464(r30)
001874  33140418  bfloat2float.rn r8, r8
001878  8be98310  add.f.rn r19, r7, r8
00187c  97889901  and r17, r19, r25
001880  93831605  setlt.u r7, r13, r17
001884  3bb00300  bneq r7, zero, 12
001888  67483ffd  storeli.w r19, -380(r30)
00188c  db010000  j 12
001890  9793e900  or r7, r19, r14
001894  67487ffc  storeli.w r7, -380(r30)
001898  e303affb  loadli.w r7,  -560(r30)
00189c  63040ffd  loadli.w r8,  -384(r30)
0018a0  8be35321  mul.f.rn r7, r7, r21
0018a4  33140418  bfloat2float.rn r8, r8
0018a8  8be38320  mul.f.rn r7, r7, r8
0018ac  63047ffc  loadli.w r8,  -456(r30)
0018b0  33140418  bfloat2float.rn r8, r8
0018b4  8be48310  add.f.rn r9, r7, r8
0018b8  17849401  and r8, r9, r25
0018bc  93838604  setlt.u r7, r13, r8
0018c0  3bb00300  bneq r7, zero, 12
0018c4  67089ffc  storeli.w r9, -384(r30)
0018c8  db010000  j 12
0018cc  9793e400  or r7, r9, r14
0018d0  67087ffc  storeli.w r7, -384(r30)
0018d4  8b635821  mul.f.rn r7, r16, r21
0018d8  e306affc  loadli.w r13,  -432(r30)
0018dc  ab0b807f  lui r23, 522240
0018e0  b3960618  bfloat2float.rn r13, r13
0018e4  8be3d320  mul.f.rn r7, r7, r13
0018e8  e3068ffc  loadli.w r13,  -448(r30)
0018ec  b3960618  bfloat2float.rn r13, r13
0018f0  8be6d310  add.f.rn r13, r7, r13
0018f4  ab03807f  lui r7, 522240
0018f8  17889601  and r16, r13, r25
0018fc  e700dffc  storeli.w r13, -504(r30)
001900  93830305  setlt.u r7, r7, r16
001904  67040ffd  storeli.w r16, -448(r30)
001908  3bb00300  bneq r7, zero, 12
00190c  6705dffc  storeli.w r13, -432(r30)
001910  db010000  j 12
001914  9793e600  or r7, r13, r14
001918  67057ffc  storeli.w r7, -432(r30)
00191c  8be35121  mul.f.rn r7, r3, r21
001920  e346bffc  loadli.w r13,  -420(r30)
001924  b3960618  bfloat2float.rn r13, r13
001928  8be3d320  mul.f.rn r7, r7, r13
00192c  e3469ffc  loadli.w r13,  -436(r30)
001930  b3960618  bfloat2float.rn r13, r13
001934  8be1d310  add.f.rn r3, r7, r13
001938  97839101  and r7, r3, r25
00193c  67413ffc  storeli.w r3, -492(r30)
001940  e7447ffc  storeli.w r7, -436(r30)
001944  93837b04  setlt.u r7, r23, r7
001948  37a00300  beq r7, zero, 8
00194c  9791e100  or r3, r3, r14
001950  e3467ffd  loadli.w r13,  -324(r30)
001954  e343bffb  loadli.w r7,  -548(r30)
001958  63077ffd  loadli.w r14,  -328(r30)
00195c  93837604  setlt.u r7, r13, r7
001960  bb800300  bneq r7, zero, 32
001964  9b430901  srli r7, r18, 16
001968  9b831300  andi r7, r7, 1
00196c  8b137910  add.s r7, r18, r7
001970  2b09ffff  lui r18, 1048560
001974  8b93e310  add.s r7, r7, r14
001978  97832301  and r7, r7, r18
00197c  674b7ffc  storeli.w r7, -332(r30)
001980  e343cffb  loadli.w r7,  -540(r30)
001984  93837604  setlt.u r7, r13, r7
001988  bb800300  bneq r7, zero, 32
00198c  9b430c01  srli r7, r24, 16
001990  2b09ffff  lui r18, 1048560
001994  9b831300  andi r7, r7, 1
001998  8b137c10  add.s r7, r24, r7
00199c  8b93e310  add.s r7, r7, r14
0019a0  97832301  and r7, r7, r18
0019a4  670b7ffc  storeli.w r7, -336(r30)
0019a8  e343dffb  loadli.w r7,  -532(r30)
0019ac  93837604  setlt.u r7, r13, r7
0019b0  bb800300  bneq r7, zero, 32
0019b4  9bc30d01  srli r7, r27, 16
0019b8  2b09ffff  lui r18, 1048560
0019bc  9b831300  andi r7, r7, 1
0019c0  8b937d10  add.s r7, r27, r7
0019c4  8b93e310  add.s r7, r7, r14
0019c8  97832301  and r7, r7, r18
0019cc  e74a7ffc  storeli.w r7, -340(r30)
0019d0  e343effb  loadli.w r7,  -524(r30)
0019d4  93837604  setlt.u r7, r13, r7
0019d8  bb800300  bneq r7, zero, 32
0019dc  9bc30001  srli r7, r1, 16
0019e0  9b831300  andi r7, r7, 1
0019e4  8b907010  add.s r1, r1, r7
0019e8  ab03ffff  lui r7, 1048560
0019ec  8b90e010  add.s r1, r1, r14
0019f0  97807000  and r1, r1, r7
0019f4  e70a1ffc  storeli.w r1, -344(r30)
0019f8  e340fffb  loadli.w r1,  -516(r30)
0019fc  93801604  setlt.u r1, r13, r1
001a00  bb800000  bneq r1, zero, 32
001a04  9b400501  srli r1, r10, 16
001a08  ab03ffff  lui r7, 1048560
001a0c  9b801000  andi r1, r1, 1
001a10  8b101510  add.s r1, r10, r1
001a14  8b90e010  add.s r1, r1, r14
001a18  97807000  and r1, r1, r7
001a1c  674a1ffc  storeli.w r1, -348(r30)
001a20  e3400ffc  loadli.w r1,  -508(r30)
001a24  93801604  setlt.u r1, r13, r1
001a28  bb800000  bneq r1, zero, 32
001a2c  9bc00501  srli r1, r11, 16
001a30  ab03ffff  lui r7, 1048560
001a34  9b801000  andi r1, r1, 1
001a38  8b901510  add.s r1, r11, r1
001a3c  8b90e010  add.s r1, r1, r14
001a40  97807000  and r1, r1, r7
001a44  670a1ffc  storeli.w r1, -352(r30)
001a48  e3401ffc  loadli.w r1,  -500(r30)
001a4c  ab03ffff  lui r7, 1048560
001a50  93801604  setlt.u r1, r13, r1
001a54  3bf00000  bneq r1, zero, 28
001a58  9b400201  srli r1, r4, 16
001a5c  9b801000  andi r1, r1, 1
001a60  8b101210  add.s r1, r4, r1
001a64  8b90e010  add.s r1, r1, r14
001a68  97807000  and r1, r1, r7
001a6c  e7491ffc  storeli.w r1, -356(r30)
001a70  e3002ffc  loadli.w r1,  -496(r30)
001a74  93801604  setlt.u r1, r13, r1
001a78  b7e90000  beq r1, zero, 632
001a7c  9380a605  setlt.u r1, r13, r26
001a80  37ca0000  beq r1, zero, 656
001a84  93806604  setlt.u r1, r13, r6
001a88  b7aa0000  beq r1, zero, 680
001a8c  93804605  setlt.u r1, r13, r20
001a90  378b0000  beq r1, zero, 704
001a94  9380c604  setlt.u r1, r13, r12
001a98  3bf00000  bneq r1, zero, 28
001a9c  9b400101  srli r1, r2, 16
001aa0  9b801000  andi r1, r1, 1
001aa4  8b101110  add.s r1, r2, r1
001aa8  8b90e010  add.s r1, r1, r14
001aac  97807000  and r1, r1, r7
001ab0  e7081ffc  storeli.w r1, -376(r30)
001ab4  93801605  setlt.u r1, r13, r17
001ab8  e7453ffc  storeli.w r3, -420(r30)
001abc  3bf00000  bneq r1, zero, 28
001ac0  9bc00901  srli r1, r19, 16
001ac4  9b801000  andi r1, r1, 1
001ac8  8b901910  add.s r1, r19, r1
001acc  8b90e010  add.s r1, r1, r14
001ad0  97807000  and r1, r1, r7
001ad4  67481ffc  storeli.w r1, -380(r30)
001ad8  e302cffc  loadli.w r5,  -416(r30)
001adc  e301cffa  loadli.w r3,  -672(r30)
001ae0  63428ffa  loadli.w r4,  -700(r30)
001ae4  e300dffa  loadli.w r1,  -664(r30)
001ae8  0b955110  add.s r10, r3, r5
001aec  e341bffa  loadli.w r3,  -676(r30)
001af0  0b1b5210  add.s r22, r4, r5
001af4  63028ffa  loadli.w r4,  -704(r30)
001af8  0b915010  add.s r2, r1, r5
001afc  e340cffa  loadli.w r1,  -668(r30)
001b00  0b985110  add.s r16, r3, r5
001b04  e301bffa  loadli.w r3,  -680(r30)
001b08  8b1a5210  add.s r21, r4, r5
001b0c  63427ffa  loadli.w r4,  -708(r30)
001b10  8b905010  add.s r1, r1, r5
001b14  8b975110  add.s r15, r3, r5
001b18  e341affa  loadli.w r3,  -684(r30)
001b1c  8b935110  add.s r7, r3, r5
001b20  e301affa  loadli.w r3,  -688(r30)
001b24  0b9a5110  add.s r20, r3, r5
001b28  e3419ffa  loadli.w r3,  -692(r30)
001b2c  8b995110  add.s r19, r3, r5
001b30  e3019ffa  loadli.w r3,  -696(r30)
001b34  0b935110  add.s r6, r3, r5
001b38  93818604  setlt.u r3, r13, r8
001b3c  0b145210  add.s r8, r4, r5
001b40  63027ffa  loadli.w r4,  -712(r30)
001b44  8b165210  add.s r13, r4, r5
001b48  63426ffa  loadli.w r4,  -716(r30)
001b4c  0b125210  add.s r4, r4, r5
001b50  e7034ffc  storeli.w r4, -456(r30)
001b54  63022ffa  loadli.w r4,  -752(r30)
001b58  0b125210  add.s r4, r4, r5
001b5c  67064ffc  storeli.w r4, -416(r30)
001b60  bb800100  bneq r3, zero, 32
001b64  9bc10401  srli r3, r9, 16
001b68  2b02ffff  lui r4, 1048560
001b6c  9b811100  andi r3, r3, 1
001b70  8b913410  add.s r3, r9, r3
001b74  8b91e110  add.s r3, r3, r14
001b78  97814100  and r3, r3, r4
001b7c  67083ffc  storeli.w r3, -384(r30)
001b80  33110128  sext_int2long r[3:4], r2
001b84  9f120000  addli r5, zero, 1
001b88  b3950028  sext_int2long r[12:13], r1
001b8c  97305102  sll.d r[2:3], r[3:4], r5
001b90  97b15502  sll.d r[4:5], r[12:13], r5
001b94  6306affc  loadli.w r12,  -432(r30)
001b98  73381fe2  store.d r[2:3], -464(r30)
001b9c  b3100528  sext_int2long r[2:3], r10
001ba0  73343fe2  store.d r[4:5], -472(r30)
001ba4  b3910728  sext_int2long r[4:5], r15
001ba8  97b05002  sll.d r[2:3], r[2:3], r5
001bac  97b85102  sll.d r[18:19], r[4:5], r5
001bb0  b3110a28  sext_int2long r[4:5], r20
001bb4  73301fe2  store.d r[2:3], -480(r30)
001bb8  b3100828  sext_int2long r[2:3], r16
001bbc  97bc5102  sll.d r[26:27], r[4:5], r5
001bc0  b3110328  sext_int2long r[4:5], r6
001bc4  97b05002  sll.d r[2:3], r[2:3], r5
001bc8  733c1fe0  store.d r[2:3], -488(r30)
001bcc  b3900328  sext_int2long r[2:3], r7
001bd0  17b35102  sll.d r[7:8], r[4:5], r5
001bd4  b3910a28  sext_int2long r[4:5], r21
001bd8  97bb5002  sll.d r[24:25], r[2:3], r5
001bdc  b3900928  sext_int2long r[2:3], r19
001be0  97bd5002  sll.d r[28:29], r[2:3], r5
001be4  b3100b28  sext_int2long r[2:3], r22
001be8  97ba5102  sll.d r[22:23], r[4:5], r5
001bec  e3417ffd  loadli.w r3,  -324(r30)
001bf0  63028ffc  loadli.w r4,  -448(r30)
001bf4  97b95002  sll.d r[20:21], r[2:3], r5
001bf8  b3100428  sext_int2long r[2:3], r8
001bfc  6304cffc  loadli.w r8,  -416(r30)
001c00  13854104  setlt.u r10, r3, r4
001c04  b3910628  sext_int2long r[4:5], r13
001c08  97b65002  sll.d r[14:15], r[2:3], r5
001c0c  97b05102  sll.d r[2:3], r[4:5], r5
001c10  e3017ffc  loadli.w r3,  -456(r30)
001c14  33140428  sext_int2long r[9:10], r8
001c18  17345402  sll.d r[9:10], r[9:10], r5
001c1c  b3910128  sext_int2long r[4:5], r3
001c20  97b15102  sll.d r[4:5], r[4:5], r5
001c24  bb100500  bneq r10, zero, 36
001c28  63051ffc  loadli.w r10,  -504(r30)
001c2c  9b420501  srli r5, r10, 16
001c30  9b821200  andi r5, r5, 1
001c34  8b125510  add.s r5, r10, r5
001c38  63057ffd  loadli.w r10,  -328(r30)
001c3c  8b92a210  add.s r5, r5, r10
001c40  2b05ffff  lui r10, 1048560
001c44  1786a200  and r12, r5, r10
001c48  6b550f02  load.d r[11:12], 32(r30)
001c4c  eb578fe6  load.d r[16:17], -408(r30)
001c50  8b27f510  add.ul r[16:17], r[11:12], r[16:17]
001c54  8b226510  add.ul r[6:7], r[11:12], r[7:8]
001c58  e3437ffd  loadli.w r7,  -324(r30)
001c5c  8b201510  add.ul r[2:3], r[11:12], r[2:3]
001c60  8b281511  add.ul r[18:19], r[11:12], r[18:19]
001c64  8b2b7511  add.ul r[24:25], r[11:12], r[24:25]
001c68  8b2c9511  add.ul r[26:27], r[11:12], r[26:27]
001c6c  8b2db511  add.ul r[28:29], r[11:12], r[28:29]
001c70  8b293511  add.ul r[20:21], r[11:12], r[20:21]
001c74  8b2a5511  add.ul r[22:23], r[11:12], r[22:23]
001c78  8b26d510  add.ul r[14:15], r[11:12], r[14:15]
001c7c  0b248510  add.ul r[9:10], r[11:12], r[9:10]
001c80  733cffe2  store.d r[16:17], -456(r30)
001c84  eb570fe3  load.d r[16:17], -464(r30)
001c88  73305fe6  store.d r[6:7], -416(r30)
001c8c  e3429ffc  loadli.w r5,  -436(r30)
001c90  73341fe6  store.d r[2:3], -408(r30)
001c94  8b27f510  add.ul r[16:17], r[11:12], r[16:17]
001c98  93835304  setlt.u r7, r7, r5
001c9c  8b223510  add.ul r[6:7], r[11:12], r[4:5]
001ca0  e341bffc  loadli.w r3,  -420(r30)
001ca4  7338ffe2  store.d r[16:17], -464(r30)
001ca8  eb578fe2  load.d r[16:17], -472(r30)
001cac  8b27f510  add.ul r[16:17], r[11:12], r[16:17]
001cb0  7338ffe4  store.d r[16:17], -432(r30)
001cb4  eb570fe2  load.d r[16:17], -480(r30)
001cb8  8b27f510  add.ul r[16:17], r[11:12], r[16:17]
001cbc  7330ffe4  store.d r[16:17], -448(r30)
001cc0  eb578fe1  load.d r[16:17], -488(r30)
001cc4  8b27f510  add.ul r[16:17], r[11:12], r[16:17]
001cc8  3bb703f2  bneq r7, zero, -6708
001ccc  63412ffc  loadli.w r2,  -492(r30)
001cd0  9b400101  srli r1, r2, 16
001cd4  9b801000  andi r1, r1, 1
001cd8  8b101110  add.s r1, r2, r1
001cdc  63017ffd  loadli.w r2,  -328(r30)
001ce0  8b902010  add.s r1, r1, r2
001ce4  2b01ffff  lui r2, 1048560
001ce8  97812000  and r3, r1, r2
001cec  5bb5fcff  j -6744
001cf0  9bc00201  srli r1, r5, 16
001cf4  9b801000  andi r1, r1, 1
001cf8  8b901210  add.s r1, r5, r1
001cfc  8b90e010  add.s r1, r1, r14
001d00  97807000  and r1, r1, r7
001d04  e7091ffc  storeli.w r1, -360(r30)
001d08  9380a605  setlt.u r1, r13, r26
001d0c  bbe500fe  bneq r1, zero, -648
001d10  9bc00701  srli r1, r15, 16
001d14  9b801000  andi r1, r1, 1
001d18  8b901710  add.s r1, r15, r1
001d1c  8b90e010  add.s r1, r1, r14
001d20  97807000  and r1, r1, r7
001d24  67491ffc  storeli.w r1, -364(r30)
001d28  93806604  setlt.u r1, r13, r6
001d2c  bb8500fe  bneq r1, zero, -672
001d30  9b400b01  srli r1, r22, 16
001d34  9b801000  andi r1, r1, 1
001d38  8b101b10  add.s r1, r22, r1
001d3c  8b90e010  add.s r1, r1, r14
001d40  97807000  and r1, r1, r7
001d44  67091ffc  storeli.w r1, -368(r30)
001d48  93804605  setlt.u r1, r13, r20
001d4c  3ba500fe  bneq r1, zero, -696
001d50  9b400e01  srli r1, r28, 16
001d54  9b801000  andi r1, r1, 1
001d58  8b101e10  add.s r1, r28, r1
001d5c  8b90e010  add.s r1, r1, r14
001d60  97807000  and r1, r1, r7
001d64  e7481ffc  storeli.w r1, -372(r30)
001d68  9380c604  setlt.u r1, r13, r12
001d6c  b7c400fe  beq r1, zero, -720
001d70  dba8ffff  j -700
001d74  9f0e0ffa  addli sp, r30, -768
001d78  9f8e0e06  addli sp, sp, 768
001d7c  00a00300  mfence { lm, sm, gm }
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
001ef4  00100000  exit
001ef8  00100000  exit
001efc  00100000  exit
001f00  00100000  exit
001f04  00100000  exit
001f08  00100000  exit
001f0c  00100000  exit
001f10  00100000  exit
001f14  00100000  exit
001f18  00100000  exit
001f1c  00100000  exit
001f20  00100000  exit
001f24  00100000  exit
001f28  00100000  exit
001f2c  00100000  exit
001f30  00100000  exit
001f34  00100000  exit
001f38  00100000  exit
001f3c  00100000  exit
001f40  00100000  exit
001f44  00100000  exit
001f48  00100000  exit
001f4c  00100000  exit
001f50  00100000  exit
001f54  00100000  exit
001f58  00100000  exit
001f5c  00100000  exit
001f60  00100000  exit
001f64  00100000  exit
001f68  00100000  exit
001f6c  00100000  exit
001f70  00100000  exit
001f74  00100000  exit
001f78  00100000  exit
001f7c  00100000  exit
001f80  00100000  exit
001f84  00100000  exit
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
