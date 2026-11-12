; SHA-256 a061375e2657381f23841d47b736b7e7cc341629e612a1f7d69fc372a7d0359f
; P800 Cluster · XTDK LLVM 19 · 2020 / 2020 words decoded
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
000108  9b98f2ff  ori r17, r5, 4095
00010c  0b942110  add.s r8, r3, r2
000110  0b924320  mul.s r4, r7, r4
000114  73680440  stores.w zero, 1040(r8)
000118  00a00300  mfence { lm, sm, gm }
00011c  80a10804  csr_set csr3, r17
000120  00d00100  sync_group
000124  67488ffa  storeli.w r8, -636(r30)
000128  73600400  stores.w zero, 0(r8)
00012c  0b126220  mul.s r4, r4, r6
000130  00a00300  mfence { lm, sm, gm }
000134  80a10804  csr_set csr3, r17
000138  00d00100  sync_group
00013c  67084ffa  storeli.w r4, -640(r30)
000140  4b00d20e  ble.s r4, r13, 7168
000144  1f028000  addli r4, zero, 64
000148  e3450ffb  loadli.w r11,  -636(r30)
00014c  eb548f00  load.d r[10:11], 8(r30)
000150  6b530f01  load.d r[7:8], 16(r30)
000154  ab0a807f  lui r21, 522240
000158  2b0b4000  lui r22, 1024
00015c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000160  e7471ffb  storeli.w r17, -644(r30)
000164  0b944030  div.s r8, r1, r4
000168  6b528f01  load.d r[5:6], 24(r30)
00016c  9f852508  addli r11, r11, 1040
000170  6747bffa  storeli.w r11, -652(r30)
000174  e7078ffa  storeli.w r8, -648(r30)
000178  1b346400  slli r8, r8, 6
00017c  0b948018  sub.s r8, r1, r8
000180  9b80f003  andi r1, r1, 63
000184  1b374400  slli r14, r8, 4
000188  00d40002  load_param_i r8, 1
00018c  e7071ffc  storeli.w r1, -392(r30)
000190  ab700000  lui r1, 7
000194  e7468ffa  storeli.w r8, -660(r30)
000198  1b141700  ori r8, r14, 1
00019c  b3150728  sext_int2long r[12:13], r14
0001a0  9b90f0ff  ori r1, r1, 4095
0001a4  9b17c700  ori r15, r14, 12
0001a8  6707effa  storeli.w r14, -656(r30)
0001ac  e7068ffa  storeli.w r8, -664(r30)
0001b0  1b142700  ori r8, r14, 2
0001b4  674b1ffc  storeli.w r1, -332(r30)
0001b8  abf07f7f  lui r1, 522239
0001bc  e743fffa  storeli.w r15, -708(r30)
0001c0  67468ffa  storeli.w r8, -668(r30)
0001c4  1b143700  ori r8, r14, 3
0001c8  9b90f0ff  ori r1, r1, 4095
0001cc  67068ffa  storeli.w r8, -672(r30)
0001d0  1b144700  ori r8, r14, 4
0001d4  e74b1ffc  storeli.w r1, -324(r30)
0001d8  e7458ffa  storeli.w r8, -676(r30)
0001dc  1b145700  ori r8, r14, 5
0001e0  e7058ffa  storeli.w r8, -680(r30)
0001e4  1b146700  ori r8, r14, 6
0001e8  67458ffa  storeli.w r8, -684(r30)
0001ec  1b147700  ori r8, r14, 7
0001f0  67058ffa  storeli.w r8, -688(r30)
0001f4  1b148700  ori r8, r14, 8
0001f8  e7448ffa  storeli.w r8, -692(r30)
0001fc  1b149700  ori r8, r14, 9
000200  e7048ffa  storeli.w r8, -696(r30)
000204  1b14a700  ori r8, r14, 10
000208  67448ffa  storeli.w r8, -700(r30)
00020c  1b14b700  ori r8, r14, 11
000210  67048ffa  storeli.w r8, -704(r30)
000214  1f140000  addli r8, zero, 1
000218  97b58502  sll.d r[12:13], r[12:13], r8
00021c  1b14d700  ori r8, r14, 13
000220  e7038ffa  storeli.w r8, -712(r30)
000224  0ba4b410  add.ul r[9:10], r[10:11], r[12:13]
000228  0b23b310  add.ul r[7:8], r[7:8], r[12:13]
00022c  0b22b210  add.ul r[5:6], r[5:6], r[12:13]
000230  1f050fff  addli r10, r30, -128
000234  73388fd2  store.d r[9:10], -720(r30)
000238  2bf4ffff  lui r8, 1048575
00023c  73346fd2  store.d r[7:8], -728(r30)
000240  9f044000  addli r9, zero, 32
000244  73304fd2  store.d r[5:6], -736(r30)
000248  1b1304f0  ori r6, r8, 3840
00024c  1f048ffd  addli r8, r30, -320
000250  97816100  and r3, r3, r6
000254  8b912110  add.s r3, r3, r2
000258  2bf1ff7f  lui r2, 524287
00025c  1b1df1ff  ori r26, r2, 4095
000260  2b11833a  lui r2, 239665
000264  e7483ffa  storeli.w r3, -628(r30)
000268  9b10f126  ori r1, r2, 623
00026c  e70baffd  storeli.w r26, -328(r30)
000270  e7411ffa  storeli.w r1, -740(r30)
000274  9b10e700  ori r1, r14, 14
000278  e7011ffa  storeli.w r1, -744(r30)
00027c  9b10f700  ori r1, r14, 15
000280  67411ffa  storeli.w r1, -748(r30)
000284  9f802108  addli r1, r3, 1040
000288  e7081ffa  storeli.w r1, -632(r30)
00028c  9f200000  addli r1, zero, 2
000290  fe8100e0  vmmov mr3, r1
000294  db420000  j 532
000298  e3006ffd  loadli.w r1,  -336(r30)
00029c  63415ffd  loadli.w r2,  -340(r30)
0002a0  9f230000  addli r7, zero, 2
0002a4  1f050fff  addli r10, r30, -128
0002a8  1f620500  addli r4, r10, 6
0002ac  b3900000  float2bfloat.rn r1, r1
0002b0  33110100  float2bfloat.rn r2, r2
0002b4  73101ff8  store.h r1, -128(r30)
0002b8  e3005ffd  loadli.w r1,  -344(r30)
0002bc  73112ff8  store.h r2, -126(r30)
0002c0  63414ffd  loadli.w r2,  -348(r30)
0002c4  b3900000  float2bfloat.rn r1, r1
0002c8  33110100  float2bfloat.rn r2, r2
0002cc  73121ff8  store.h r1, -124(r30)
0002d0  e3004ffd  loadli.w r1,  -352(r30)
0002d4  73132ff8  store.h r2, -122(r30)
0002d8  63413ffd  loadli.w r2,  -356(r30)
0002dc  b3900000  float2bfloat.rn r1, r1
0002e0  33110100  float2bfloat.rn r2, r2
0002e4  73141ff8  store.h r1, -120(r30)
0002e8  e3003ffd  loadli.w r1,  -360(r30)
0002ec  73152ff8  store.h r2, -118(r30)
0002f0  63412ffd  loadli.w r2,  -364(r30)
0002f4  b3900000  float2bfloat.rn r1, r1
0002f8  33110100  float2bfloat.rn r2, r2
0002fc  73161ff8  store.h r1, -116(r30)
000300  e3002ffd  loadli.w r1,  -368(r30)
000304  73172ff8  store.h r2, -114(r30)
000308  63411ffd  loadli.w r2,  -372(r30)
00030c  b3900000  float2bfloat.rn r1, r1
000310  33110100  float2bfloat.rn r2, r2
000314  73181ff8  store.h r1, -112(r30)
000318  e3001ffd  loadli.w r1,  -376(r30)
00031c  73192ff8  store.h r2, -110(r30)
000320  63410ffd  loadli.w r2,  -380(r30)
000324  b3900000  float2bfloat.rn r1, r1
000328  33110100  float2bfloat.rn r2, r2
00032c  731a1ff8  store.h r1, -108(r30)
000330  e3000ffd  loadli.w r1,  -384(r30)
000334  731b2ff8  store.h r2, -106(r30)
000338  6341fffc  loadli.w r2,  -388(r30)
00033c  b3900000  float2bfloat.rn r1, r1
000340  33110100  float2bfloat.rn r2, r2
000344  731c1ff8  store.h r1, -104(r30)
000348  731d2ff8  store.h r2, -102(r30)
00034c  33910100  float2bfloat.rn r2, r3
000350  b3100e00  float2bfloat.rn r1, r28
000354  9f210500  addli r3, r10, 2
000358  731e1ff8  store.h r1, -100(r30)
00035c  731f2ff8  store.h r2, -98(r30)
000360  ab0000f0  lui r1, 983040
000364  2b0100f0  lui r2, 983040
000368  00a00000  mfence { lm }
00036c  6b540fe3  load.d r[9:10], -464(r30)
000370  97901300  or r1, r7, r1
000374  17912300  or r2, r7, r2
000378  e346effc  loadli.w r13,  -396(r30)
00037c  ff30a400  s_lm2gm r1, r10, 0(r[9:10])
000380  6b548fe2  load.d r[9:10], -472(r30)
000384  9f400500  addli r1, r10, 4
000388  7f313400  s_lm2gm r2, r3, 0(r[9:10])
00038c  2b0100f0  lui r2, 983040
000390  6b540fe4  load.d r[9:10], -448(r30)
000394  ab0100f0  lui r3, 983040
000398  17912300  or r2, r7, r2
00039c  97913300  or r3, r7, r3
0003a0  7f311400  s_lm2gm r2, r1, 0(r[9:10])
0003a4  eb508fe3  load.d r[2:3], -456(r30)
0003a8  6b548fe4  load.d r[9:10], -440(r30)
0003ac  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0003b0  ab0100f0  lui r3, 983040
0003b4  9f001500  addli r1, r10, 8
0003b8  2b0200f0  lui r4, 983040
0003bc  1f211500  addli r2, r10, 10
0003c0  97913300  or r3, r7, r3
0003c4  17924300  or r4, r7, r4
0003c8  ff311400  s_lm2gm r3, r1, 0(r[9:10])
0003cc  ab0100f0  lui r3, 983040
0003d0  9f401500  addli r1, r10, 12
0003d4  7fb22800  s_lm2gm r4, r2, 0(r[18:19])
0003d8  2b0200f0  lui r4, 983040
0003dc  1f611500  addli r2, r10, 14
0003e0  1f048ffd  addli r8, r30, -320
0003e4  9f044000  addli r9, zero, 32
0003e8  97913300  or r3, r7, r3
0003ec  17924300  or r4, r7, r4
0003f0  ff311c00  s_lm2gm r3, r1, 0(r[25:26])
0003f4  ab0100f0  lui r3, 983040
0003f8  9f002500  addli r1, r10, 16
0003fc  7f322d00  s_lm2gm r4, r2, 0(r[27:28])
000400  2b0200f0  lui r4, 983040
000404  1f212500  addli r2, r10, 18
000408  97913300  or r3, r7, r3
00040c  17924300  or r4, r7, r4
000410  ff311700  s_lm2gm r3, r1, 0(r[15:16])
000414  ab0100f0  lui r3, 983040
000418  9f402500  addli r1, r10, 20
00041c  7fb22200  s_lm2gm r4, r2, 0(r[6:7])
000420  2b0200f0  lui r4, 983040
000424  1f612500  addli r2, r10, 22
000428  eb528fe6  load.d r[6:7], -408(r30)
00042c  97913300  or r3, r7, r3
000430  17924300  or r4, r7, r4
000434  ffb11900  s_lm2gm r3, r1, 0(r[20:21])
000438  ab0100f0  lui r3, 983040
00043c  9f003500  addli r1, r10, 24
000440  7fb22a00  s_lm2gm r4, r2, 0(r[22:23])
000444  2b0200f0  lui r4, 983040
000448  1f213500  addli r2, r10, 26
00044c  ab0a807f  lui r21, 522240
000450  2b0b4000  lui r22, 1024
000454  97913300  or r3, r7, r3
000458  17924300  or r4, r7, r4
00045c  ffb11200  s_lm2gm r3, r1, 0(r[6:7])
000460  eb520fe6  load.d r[6:7], -416(r30)
000464  ab0100f0  lui r3, 983040
000468  9f403500  addli r1, r10, 28
00046c  97913300  or r3, r7, r3
000470  7fb22200  s_lm2gm r4, r2, 0(r[6:7])
000474  2b0200f0  lui r4, 983040
000478  eb520fe5  load.d r[6:7], -432(r30)
00047c  1f613500  addli r2, r10, 30
000480  17924300  or r4, r7, r4
000484  ffb11200  s_lm2gm r3, r1, 0(r[6:7])
000488  e340dffa  loadli.w r1,  -660(r30)
00048c  7fb22500  s_lm2gm r4, r2, 0(r[12:13])
000490  00a00000  mfence { lm }
000494  8b961610  add.s r13, r13, r1
000498  e3000ffb  loadli.w r1,  -640(r30)
00049c  630d7ffd  loadli.w r26,  -328(r30)
0004a0  3fa01600  blt.s r13, r1, 8
0004a4  db130300  j 6300
0004a8  9f000000  addli r1, zero, 0
0004ac  0b111410  add.s r2, r8, r1
0004b0  9fc00000  addli r1, r1, 4
0004b4  73100100  store.h zero, 0(r2)
0004b8  73110100  store.h zero, 2(r2)
0004bc  00a00000  mfence { lm }
0004c0  bbbf90fe  bneq r1, r9, -20
0004c4  e3007f00  loadli.w r1,  56(r30)
0004c8  63416f00  loadli.w r2,  52(r30)
0004cc  6302fffa  loadli.w r4,  -648(r30)
0004d0  e302effa  loadli.w r5,  -656(r30)
0004d4  9f130000  addli r7, zero, 1
0004d8  ab0100f0  lui r3, 983040
0004dc  6747dffc  storeli.w r13, -396(r30)
0004e0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0004e4  9f180000  addli r17, zero, 1
0004e8  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0004ec  97913400  or r3, r9, r3
0004f0  7e8108e0  vmmov mr2, r17
0004f4  8b901630  div.s r1, r13, r1
0004f8  8b902030  div.s r1, r1, r2
0004fc  2b0100f0  lui r2, 983040
000500  17912400  or r2, r9, r2
000504  0b924010  add.s r4, r1, r4
000508  ab0000f0  lui r1, 983040
00050c  1b33a200  slli r6, r4, 10
000510  97901400  or r1, r9, r1
000514  674d4ffa  storeli.w r4, -556(r30)
000518  2b0200f0  lui r4, 983040
00051c  8b125310  add.s r5, r6, r5
000520  67066ffc  storeli.w r6, -416(r30)
000524  17924400  or r4, r9, r4
000528  b3920228  sext_int2long r[6:7], r5
00052c  97b57202  sll.d r[12:13], r[6:7], r7
000530  eb520f00  load.d r[6:7], 0(r30)
000534  7334bfe6  store.d r[12:13], -408(r30)
000538  8ba2b210  add.ul r[6:7], r[6:7], r[12:13]
00053c  7fa18200  l_gm2lm r2, r8, 0(r[6:7])
000540  eb520fd3  load.d r[6:7], -720(r30)
000544  1f010ffe  addli r2, r30, -256
000548  ffa12200  l_gm2lm r3, r2, 0(r[6:7])
00054c  6b518fd2  load.d r[3:4], -728(r30)
000550  9f028ffe  addli r5, r30, -192
000554  ff205100  l_gm2lm r1, r5, 0(r[3:4])
000558  eb500fd2  load.d r[2:3], -736(r30)
00055c  7fa2a000  l_gm2lm r4, r10, 0(r[2:3])
000560  00a00000  mfence { lm }
000564  eb310fec  load.hu r3, -320(r30)
000568  6b322fec  load.hu r4, -318(r30)
00056c  6b31afed  load.hu r2, -294(r30)
000570  eb30cfed  load.hu r1, -292(r30)
000574  eb324fec  load.hu r5, -316(r30)
000578  6b336fec  load.hu r6, -314(r30)
00057c  eb338fec  load.hu r7, -312(r30)
000580  6b34afec  load.hu r8, -310(r30)
000584  eb34cfec  load.hu r9, -308(r30)
000588  6b35efec  load.hu r10, -306(r30)
00058c  eb350fed  load.hu r11, -304(r30)
000590  6b362fed  load.hu r12, -302(r30)
000594  eb364fed  load.hu r13, -300(r30)
000598  6b376fed  load.hu r14, -298(r30)
00059c  eb378fed  load.hu r15, -296(r30)
0005a0  6b38efed  load.hu r16, -290(r30)
0005a4  b3910118  bfloat2float.rn r3, r3
0005a8  33110118  bfloat2float.rn r2, r2
0005ac  b3900018  bfloat2float.rn r1, r1
0005b0  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
0005b4  b3110218  bfloat2float.rn r3, r4
0005b8  1f420000  addli r4, zero, 4
0005bc  7e0002e0  vmmov mr0, r4
0005c0  1f021000  addli r4, zero, 8
0005c4  eaa01136  vor.u.mh vr1{mr3}, r3, vr1
0005c8  b3910218  bfloat2float.rn r3, r5
0005cc  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005d0  b3110318  bfloat2float.rn r3, r6
0005d4  7e0002e0  vmmov mr0, r4
0005d8  1f022000  addli r4, zero, 16
0005dc  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005e0  b3910318  bfloat2float.rn r3, r7
0005e4  7e0002e0  vmmov mr0, r4
0005e8  1f024000  addli r4, zero, 32
0005ec  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005f0  b3110418  bfloat2float.rn r3, r8
0005f4  7e0002e0  vmmov mr0, r4
0005f8  1f028000  addli r4, zero, 64
0005fc  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000600  b3910418  bfloat2float.rn r3, r9
000604  7e0002e0  vmmov mr0, r4
000608  1f020001  addli r4, zero, 128
00060c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000610  b3110518  bfloat2float.rn r3, r10
000614  7e0002e0  vmmov mr0, r4
000618  1f020002  addli r4, zero, 256
00061c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000620  b3910518  bfloat2float.rn r3, r11
000624  7e0002e0  vmmov mr0, r4
000628  1f020004  addli r4, zero, 512
00062c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000630  b3110618  bfloat2float.rn r3, r12
000634  7e0002e0  vmmov mr0, r4
000638  1f020008  addli r4, zero, 1024
00063c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000640  b3910618  bfloat2float.rn r3, r13
000644  7e0002e0  vmmov mr0, r4
000648  1f020010  addli r4, zero, 2048
00064c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000650  b3110718  bfloat2float.rn r3, r14
000654  7e0002e0  vmmov mr0, r4
000658  1f020020  addli r4, zero, 4096
00065c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000660  b3910718  bfloat2float.rn r3, r15
000664  7e0002e0  vmmov mr0, r4
000668  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
00066c  9f010040  addli r3, zero, 8192
000670  7e8001e0  vmmov mr0, r3
000674  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000678  2b410000  lui r2, 4
00067c  7e0001e0  vmmov mr0, r2
000680  2b810000  lui r2, 8
000684  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000688  b3100818  bfloat2float.rn r1, r16
00068c  7e0001e0  vmmov mr0, r2
000690  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000694  eb300ff0  load.hu r1, -256(r30)
000698  6b312ff0  load.hu r2, -254(r30)
00069c  eb314ff0  load.hu r3, -252(r30)
0006a0  6b326ff0  load.hu r4, -250(r30)
0006a4  eb328ff0  load.hu r5, -248(r30)
0006a8  6b33aff0  load.hu r6, -246(r30)
0006ac  eb33cff0  load.hu r7, -244(r30)
0006b0  6b34eff0  load.hu r8, -242(r30)
0006b4  eb340ff1  load.hu r9, -240(r30)
0006b8  6b352ff1  load.hu r10, -238(r30)
0006bc  eb354ff1  load.hu r11, -236(r30)
0006c0  6b366ff1  load.hu r12, -234(r30)
0006c4  eb368ff1  load.hu r13, -232(r30)
0006c8  6b37aff1  load.hu r14, -230(r30)
0006cc  eb37cff1  load.hu r15, -228(r30)
0006d0  6b38eff1  load.hu r16, -226(r30)
0006d4  b3900018  bfloat2float.rn r1, r1
0006d8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006dc  b3100118  bfloat2float.rn r1, r2
0006e0  1f410000  addli r2, zero, 4
0006e4  7e0101e0  vmmov mr2, r2
0006e8  1f011000  addli r2, zero, 8
0006ec  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0006f0  b3900118  bfloat2float.rn r1, r3
0006f4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006f8  b3100218  bfloat2float.rn r1, r4
0006fc  7e0101e0  vmmov mr2, r2
000700  1f012000  addli r2, zero, 16
000704  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000708  b3900218  bfloat2float.rn r1, r5
00070c  7e0101e0  vmmov mr2, r2
000710  1f014000  addli r2, zero, 32
000714  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000718  b3100318  bfloat2float.rn r1, r6
00071c  7e0101e0  vmmov mr2, r2
000720  1f018000  addli r2, zero, 64
000724  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000728  b3900318  bfloat2float.rn r1, r7
00072c  7e0101e0  vmmov mr2, r2
000730  1f010001  addli r2, zero, 128
000734  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000738  b3100418  bfloat2float.rn r1, r8
00073c  7e0101e0  vmmov mr2, r2
000740  1f010002  addli r2, zero, 256
000744  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000748  b3900418  bfloat2float.rn r1, r9
00074c  7e0101e0  vmmov mr2, r2
000750  1f010004  addli r2, zero, 512
000754  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000758  b3100518  bfloat2float.rn r1, r10
00075c  7e0101e0  vmmov mr2, r2
000760  1f010008  addli r2, zero, 1024
000764  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000768  b3900518  bfloat2float.rn r1, r11
00076c  7e0101e0  vmmov mr2, r2
000770  1f010010  addli r2, zero, 2048
000774  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000778  b3100618  bfloat2float.rn r1, r12
00077c  7e0101e0  vmmov mr2, r2
000780  1f010020  addli r2, zero, 4096
000784  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000788  b3900618  bfloat2float.rn r1, r13
00078c  7e0101e0  vmmov mr2, r2
000790  1f010040  addli r2, zero, 8192
000794  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000798  b3100718  bfloat2float.rn r1, r14
00079c  7e0101e0  vmmov mr2, r2
0007a0  2b410000  lui r2, 4
0007a4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0007a8  b3900718  bfloat2float.rn r1, r15
0007ac  7e0101e0  vmmov mr2, r2
0007b0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0007b4  b3100818  bfloat2float.rn r1, r16
0007b8  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0007bc  eb300ff4  load.hu r1, -192(r30)
0007c0  e74d1ffa  storeli.w r1, -548(r30)
0007c4  eb302ff4  load.hu r1, -190(r30)
0007c8  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0007cc  674e1ffa  storeli.w r1, -540(r30)
0007d0  eb304ff4  load.hu r1, -188(r30)
0007d4  e74e1ffa  storeli.w r1, -532(r30)
0007d8  eb306ff4  load.hu r1, -186(r30)
0007dc  674f1ffa  storeli.w r1, -524(r30)
0007e0  eb308ff4  load.hu r1, -184(r30)
0007e4  e74f1ffa  storeli.w r1, -516(r30)
0007e8  eb30aff4  load.hu r1, -182(r30)
0007ec  67401ffc  storeli.w r1, -508(r30)
0007f0  eb30cff4  load.hu r1, -180(r30)
0007f4  e7091ffc  storeli.w r1, -360(r30)
0007f8  eb30eff4  load.hu r1, -178(r30)
0007fc  67491ffc  storeli.w r1, -364(r30)
000800  eb300ff5  load.hu r1, -176(r30)
000804  67091ffc  storeli.w r1, -368(r30)
000808  eb302ff5  load.hu r1, -174(r30)
00080c  e7481ffc  storeli.w r1, -372(r30)
000810  eb304ff5  load.hu r1, -172(r30)
000814  e7081ffc  storeli.w r1, -376(r30)
000818  eb306ff5  load.hu r1, -170(r30)
00081c  67481ffc  storeli.w r1, -380(r30)
000820  eb308ff5  load.hu r1, -168(r30)
000824  67081ffc  storeli.w r1, -384(r30)
000828  eb30aff5  load.hu r1, -166(r30)
00082c  e7471ffc  storeli.w r1, -388(r30)
000830  eb30cff5  load.hu r1, -164(r30)
000834  67051ffc  storeli.w r1, -432(r30)
000838  eb30eff5  load.hu r1, -162(r30)
00083c  e7451ffc  storeli.w r1, -420(r30)
000840  eb300ff8  load.hu r1, -128(r30)
000844  e70d1ffa  storeli.w r1, -552(r30)
000848  eb302ff8  load.hu r1, -126(r30)
00084c  670e1ffa  storeli.w r1, -544(r30)
000850  eb304ff8  load.hu r1, -124(r30)
000854  e70e1ffa  storeli.w r1, -536(r30)
000858  eb306ff8  load.hu r1, -122(r30)
00085c  670f1ffa  storeli.w r1, -528(r30)
000860  eb308ff8  load.hu r1, -120(r30)
000864  e70f1ffa  storeli.w r1, -520(r30)
000868  eb30aff8  load.hu r1, -118(r30)
00086c  67001ffc  storeli.w r1, -512(r30)
000870  eb30cff8  load.hu r1, -116(r30)
000874  e7001ffc  storeli.w r1, -504(r30)
000878  eb30eff8  load.hu r1, -114(r30)
00087c  e7401ffc  storeli.w r1, -500(r30)
000880  eb300ff9  load.hu r1, -112(r30)
000884  67011ffc  storeli.w r1, -496(r30)
000888  eb302ff9  load.hu r1, -110(r30)
00088c  e7011ffc  storeli.w r1, -488(r30)
000890  eb304ff9  load.hu r1, -108(r30)
000894  67021ffc  storeli.w r1, -480(r30)
000898  eb306ff9  load.hu r1, -106(r30)
00089c  e7021ffc  storeli.w r1, -472(r30)
0008a0  eb308ff9  load.hu r1, -104(r30)
0008a4  67031ffc  storeli.w r1, -464(r30)
0008a8  eb30aff9  load.hu r1, -102(r30)
0008ac  e7031ffc  storeli.w r1, -456(r30)
0008b0  eb30cff9  load.hu r1, -100(r30)
0008b4  67041ffc  storeli.w r1, -448(r30)
0008b8  eb30eff9  load.hu r1, -98(r30)
0008bc  e7041ffc  storeli.w r1, -440(r30)
0008c0  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0008c4  00a00000  mfence { lm }
0008c8  e3038fff  loadli.w r7,  -64(r30)
0008cc  63468fff  loadli.w r12,  -60(r30)
0008d0  e3059fff  loadli.w r11,  -56(r30)
0008d4  e3419fff  loadli.w r3,  -52(r30)
0008d8  6303afff  loadli.w r6,  -48(r30)
0008dc  6344afff  loadli.w r8,  -44(r30)
0008e0  630ebfff  loadli.w r28,  -40(r30)
0008e4  6345bfff  loadli.w r10,  -36(r30)
0008e8  e30ccfff  loadli.w r25,  -32(r30)
0008ec  e346cfff  loadli.w r13,  -28(r30)
0008f0  e30ddfff  loadli.w r27,  -24(r30)
0008f4  634cdfff  loadli.w r24,  -20(r30)
0008f8  6308efff  loadli.w r16,  -16(r30)
0008fc  e347efff  loadli.w r15,  -12(r30)
000900  e302ffff  loadli.w r5,  -8(r30)
000904  6347ffff  loadli.w r14,  -4(r30)
000908  1782a301  and r4, r7, r26
00090c  93804a04  setlt.u r1, r21, r4
000910  3bb00000  bneq r1, zero, 12
000914  670a7ffc  storeli.w r7, -352(r30)
000918  db010000  j 12
00091c  97906301  or r1, r7, r22
000920  670a1ffc  storeli.w r1, -352(r30)
000924  970ba601  and r23, r12, r26
000928  93807a05  setlt.u r1, r21, r23
00092c  3bb00000  bneq r1, zero, 12
000930  674acffc  storeli.w r12, -348(r30)
000934  db010000  j 12
000938  97106601  or r1, r12, r22
00093c  674a1ffc  storeli.w r1, -348(r30)
000940  178aa501  and r20, r11, r26
000944  93804a05  setlt.u r1, r21, r20
000948  3bb00000  bneq r1, zero, 12
00094c  e70abffc  storeli.w r11, -344(r30)
000950  db010000  j 12
000954  97906501  or r1, r11, r22
000958  e70a1ffc  storeli.w r1, -344(r30)
00095c  1789a101  and r18, r3, r26
000960  93802a05  setlt.u r1, r21, r18
000964  3bb00000  bneq r1, zero, 12
000968  1f810100  addli r2, r3, 0
00096c  5b010000  j 8
000970  17916101  or r2, r3, r22
000974  9709a301  and r19, r6, r26
000978  93803a05  setlt.u r1, r21, r19
00097c  3bb00000  bneq r1, zero, 12
000980  670b6ffc  storeli.w r6, -336(r30)
000984  db010000  j 12
000988  97106301  or r1, r6, r22
00098c  670b1ffc  storeli.w r1, -336(r30)
000990  9704a401  and r9, r8, r26
000994  e7495ffc  storeli.w r5, -356(r30)
000998  e74a2ffc  storeli.w r2, -340(r30)
00099c  93809a04  setlt.u r1, r21, r9
0009a0  3bb00000  bneq r1, zero, 12
0009a4  e70b8ffa  storeli.w r8, -584(r30)
0009a8  db010000  j 12
0009ac  97106401  or r1, r8, r22
0009b0  e70b1ffa  storeli.w r1, -584(r30)
0009b4  9702ae01  and r5, r28, r26
0009b8  93805a04  setlt.u r1, r21, r5
0009bc  3bb00000  bneq r1, zero, 12
0009c0  e74bcffb  storeli.w r28, -580(r30)
0009c4  db010000  j 12
0009c8  97106e01  or r1, r28, r22
0009cc  e74b1ffa  storeli.w r1, -580(r30)
0009d0  1701a501  and r2, r10, r26
0009d4  6749affa  storeli.w r10, -620(r30)
0009d8  93802a04  setlt.u r1, r21, r2
0009dc  3bb00000  bneq r1, zero, 12
0009e0  670caffa  storeli.w r10, -576(r30)
0009e4  db010000  j 12
0009e8  97106501  or r1, r10, r22
0009ec  670c1ffa  storeli.w r1, -576(r30)
0009f0  1785ac01  and r10, r25, r26
0009f4  e7099ffb  storeli.w r25, -616(r30)
0009f8  9380aa04  setlt.u r1, r21, r10
0009fc  3bb00000  bneq r1, zero, 12
000a00  674c9ffb  storeli.w r25, -572(r30)
000a04  db010000  j 12
000a08  97906c01  or r1, r25, r22
000a0c  674c1ffa  storeli.w r1, -572(r30)
000a10  978ca601  and r25, r13, r26
000a14  e749dffa  storeli.w r13, -612(r30)
000a18  93809a05  setlt.u r1, r21, r25
000a1c  3bb00000  bneq r1, zero, 12
000a20  e70cdffa  storeli.w r13, -568(r30)
000a24  db010000  j 12
000a28  97906601  or r1, r13, r22
000a2c  e70c1ffa  storeli.w r1, -568(r30)
000a30  9780ad01  and r1, r27, r26
000a34  6709cffb  storeli.w r28, -624(r30)
000a38  2b0b4000  lui r22, 1024
000a3c  2b0e807f  lui r28, 522240
000a40  670abffb  storeli.w r27, -608(r30)
000a44  93861a04  setlt.u r13, r21, r1
000a48  3bb00600  bneq r13, zero, 12
000a4c  e74cbffb  storeli.w r27, -564(r30)
000a50  db010000  j 12
000a54  97966d01  or r13, r27, r22
000a58  e74cdffa  storeli.w r13, -564(r30)
000a5c  970dac01  and r27, r24, r26
000a60  674a8ffb  storeli.w r24, -604(r30)
000a64  9306be05  setlt.u r13, r28, r27
000a68  3bb00600  bneq r13, zero, 12
000a6c  670d8ffb  storeli.w r24, -560(r30)
000a70  db010000  j 12
000a74  97166c01  or r13, r24, r22
000a78  670ddffa  storeli.w r13, -560(r30)
000a7c  170ca801  and r24, r16, r26
000a80  e70a0ffb  storeli.w r16, -600(r30)
000a84  93068e05  setlt.u r13, r28, r24
000a88  37a00600  beq r13, zero, 8
000a8c  17186801  or r16, r16, r22
000a90  978aa701  and r21, r15, r26
000a94  e74afffa  storeli.w r15, -596(r30)
000a98  93065e05  setlt.u r13, r28, r21
000a9c  37a00600  beq r13, zero, 8
000aa0  97976701  or r15, r15, r22
000aa4  e3483ffd  loadli.w r17,  -356(r30)
000aa8  9786a801  and r13, r17, r26
000aac  674bdffa  storeli.w r13, -588(r30)
000ab0  9306de04  setlt.u r13, r28, r13
000ab4  37a00600  beq r13, zero, 8
000ab8  97986801  or r17, r17, r22
000abc  170da701  and r26, r14, r26
000ac0  670beffa  storeli.w r14, -592(r30)
000ac4  9306ae05  setlt.u r13, r28, r26
000ac8  2b0e4000  lui r28, 1024
000acc  37a00600  beq r13, zero, 8
000ad0  1717c701  or r14, r14, r28
000ad4  e3467ffd  loadli.w r13,  -324(r30)
000ad8  13824604  setlt.u r4, r13, r4
000adc  e3466ffd  loadli.w r13,  -332(r30)
000ae0  bb000200  bneq r4, zero, 32
000ae4  1bc20301  srli r4, r7, 16
000ae8  1b021200  andi r4, r4, 1
000aec  0b924310  add.s r4, r7, r4
000af0  ab03ffff  lui r7, 1048560
000af4  0b12d210  add.s r4, r4, r13
000af8  17027200  and r4, r4, r7
000afc  670a4ffc  storeli.w r4, -352(r30)
000b00  63427ffd  loadli.w r4,  -324(r30)
000b04  13027205  setlt.u r4, r4, r23
000b08  bb000200  bneq r4, zero, 32
000b0c  1b420601  srli r4, r12, 16
000b10  ab03ffff  lui r7, 1048560
000b14  1b021200  andi r4, r4, 1
000b18  0b124610  add.s r4, r12, r4
000b1c  0b12d210  add.s r4, r4, r13
000b20  17027200  and r4, r4, r7
000b24  674a4ffc  storeli.w r4, -348(r30)
000b28  e3437ffd  loadli.w r7,  -324(r30)
000b2c  e30b7ffb  loadli.w r23,  -584(r30)
000b30  13824305  setlt.u r4, r7, r20
000b34  bb000200  bneq r4, zero, 32
000b38  1bc20501  srli r4, r11, 16
000b3c  1b021200  andi r4, r4, 1
000b40  0b924510  add.s r4, r11, r4
000b44  ab05ffff  lui r11, 1048560
000b48  0b12d210  add.s r4, r4, r13
000b4c  1702b200  and r4, r4, r11
000b50  e70a4ffc  storeli.w r4, -344(r30)
000b54  13822305  setlt.u r4, r7, r18
000b58  63468ffb  loadli.w r12,  -572(r30)
000b5c  630a8ffb  loadli.w r20,  -576(r30)
000b60  ab05ffff  lui r11, 1048560
000b64  3b700200  bneq r4, zero, 28
000b68  1bc20101  srli r4, r3, 16
000b6c  1b021200  andi r4, r4, 1
000b70  8b914110  add.s r3, r3, r4
000b74  8b91d110  add.s r3, r3, r13
000b78  9781b100  and r3, r3, r11
000b7c  e74a3ffc  storeli.w r3, -340(r30)
000b80  93813305  setlt.u r3, r7, r19
000b84  63099ffb  loadli.w r18,  -568(r30)
000b88  3bf00100  bneq r3, zero, 28
000b8c  9b410301  srli r3, r6, 16
000b90  9b811100  andi r3, r3, 1
000b94  8b113310  add.s r3, r6, r3
000b98  8b91d110  add.s r3, r3, r13
000b9c  9781b100  and r3, r3, r11
000ba0  670b3ffc  storeli.w r3, -336(r30)
000ba4  93819304  setlt.u r3, r7, r9
000ba8  e3499ffb  loadli.w r19,  -564(r30)
000bac  3be00100  bneq r3, zero, 24
000bb0  9b410401  srli r3, r8, 16
000bb4  9b811100  andi r3, r3, 1
000bb8  8b113410  add.s r3, r8, r3
000bbc  8b91d110  add.s r3, r3, r13
000bc0  978bb100  and r23, r3, r11
000bc4  93815304  setlt.u r3, r7, r5
000bc8  63447ffb  loadli.w r8,  -580(r30)
000bcc  3bf00100  bneq r3, zero, 28
000bd0  63022ffb  loadli.w r4,  -624(r30)
000bd4  9b410201  srli r3, r4, 16
000bd8  9b811100  andi r3, r3, 1
000bdc  8b113210  add.s r3, r4, r3
000be0  8b91d110  add.s r3, r3, r13
000be4  1784b100  and r8, r3, r11
000be8  13812304  setlt.u r2, r7, r2
000bec  e3425ffd  loadli.w r5,  -340(r30)
000bf0  3b700100  bneq r2, zero, 28
000bf4  e3412ffb  loadli.w r3,  -620(r30)
000bf8  1bc10101  srli r2, r3, 16
000bfc  1b011100  andi r2, r2, 1
000c00  0b912110  add.s r2, r3, r2
000c04  0b11d110  add.s r2, r2, r13
000c08  170ab100  and r20, r2, r11
000c0c  1381a304  setlt.u r2, r7, r10
000c10  63036ffd  loadli.w r6,  -336(r30)
000c14  e3414ffd  loadli.w r3,  -348(r30)
000c18  3b700100  bneq r2, zero, 28
000c1c  63023ffb  loadli.w r4,  -616(r30)
000c20  1b410201  srli r2, r4, 16
000c24  1b011100  andi r2, r2, 1
000c28  0b112210  add.s r2, r4, r2
000c2c  0b11d110  add.s r2, r2, r13
000c30  1706b100  and r12, r2, r11
000c34  13819305  setlt.u r2, r7, r25
000c38  1f850800  addli r10, r17, 0
000c3c  3b700100  bneq r2, zero, 28
000c40  63423ffb  loadli.w r4,  -612(r30)
000c44  1b410201  srli r2, r4, 16
000c48  1b011100  andi r2, r2, 1
000c4c  0b112210  add.s r2, r4, r2
000c50  0b11d110  add.s r2, r2, r13
000c54  1709b100  and r18, r2, r11
000c58  93801304  setlt.u r1, r7, r1
000c5c  e308affb  loadli.w r17,  -560(r30)
000c60  3bf00000  bneq r1, zero, 28
000c64  63014ffb  loadli.w r2,  -608(r30)
000c68  9b400101  srli r1, r2, 16
000c6c  9b801000  andi r1, r1, 1
000c70  8b101110  add.s r1, r2, r1
000c74  8b90d010  add.s r1, r1, r13
000c78  9789b000  and r19, r1, r11
000c7c  9380b305  setlt.u r1, r7, r27
000c80  3bf00000  bneq r1, zero, 28
000c84  63414ffb  loadli.w r2,  -604(r30)
000c88  9b400101  srli r1, r2, 16
000c8c  9b801000  andi r1, r1, 1
000c90  8b101110  add.s r1, r2, r1
000c94  8b90d010  add.s r1, r1, r13
000c98  9788b000  and r17, r1, r11
000c9c  93808305  setlt.u r1, r7, r24
000ca0  ab04807f  lui r9, 522240
000ca4  3bf00000  bneq r1, zero, 28
000ca8  63015ffb  loadli.w r2,  -600(r30)
000cac  9b400101  srli r1, r2, 16
000cb0  9b801000  andi r1, r1, 1
000cb4  8b101110  add.s r1, r2, r1
000cb8  8b90d010  add.s r1, r1, r13
000cbc  1788b000  and r16, r1, r11
000cc0  93805305  setlt.u r1, r7, r21
000cc4  3bf00000  bneq r1, zero, 28
000cc8  63415ffb  loadli.w r2,  -596(r30)
000ccc  9b400101  srli r1, r2, 16
000cd0  9b801000  andi r1, r1, 1
000cd4  8b101110  add.s r1, r2, r1
000cd8  8b90d010  add.s r1, r1, r13
000cdc  9787b000  and r15, r1, r11
000ce0  e3406ffb  loadli.w r1,  -588(r30)
000ce4  93801304  setlt.u r1, r7, r1
000ce8  3bf00000  bneq r1, zero, 28
000cec  63413ffd  loadli.w r2,  -356(r30)
000cf0  9b400101  srli r1, r2, 16
000cf4  9b801000  andi r1, r1, 1
000cf8  8b101110  add.s r1, r2, r1
000cfc  8b90d010  add.s r1, r1, r13
000d00  1785b000  and r10, r1, r11
000d04  9380a305  setlt.u r1, r7, r26
000d08  3bf00000  bneq r1, zero, 28
000d0c  63016ffb  loadli.w r2,  -592(r30)
000d10  9b400101  srli r1, r2, 16
000d14  9b801000  andi r1, r1, 1
000d18  8b101110  add.s r1, r2, r1
000d1c  8b90d010  add.s r1, r1, r13
000d20  1787b000  and r14, r1, r11
000d24  630d7ffd  loadli.w r26,  -328(r30)
000d28  63014ffd  loadli.w r2,  -352(r30)
000d2c  9700a101  and r1, r2, r26
000d30  93801404  setlt.u r1, r9, r1
000d34  3be00000  bneq r1, zero, 24
000d38  9b400101  srli r1, r2, 16
000d3c  9b801000  andi r1, r1, 1
000d40  8b101110  add.s r1, r2, r1
000d44  0b91d010  add.s r2, r1, r13
000d48  5b010000  j 8
000d4c  1711c101  or r2, r2, r28
000d50  9780a101  and r1, r3, r26
000d54  63025ffd  loadli.w r4,  -344(r30)
000d58  93801404  setlt.u r1, r9, r1
000d5c  3be00000  bneq r1, zero, 24
000d60  9bc00101  srli r1, r3, 16
000d64  9b801000  andi r1, r1, 1
000d68  8b901110  add.s r1, r3, r1
000d6c  8b91d010  add.s r3, r1, r13
000d70  5b010000  j 8
000d74  9791c101  or r3, r3, r28
000d78  9700a201  and r1, r4, r26
000d7c  93801404  setlt.u r1, r9, r1
000d80  3be00000  bneq r1, zero, 24
000d84  9b400201  srli r1, r4, 16
000d88  9b801000  andi r1, r1, 1
000d8c  8b101210  add.s r1, r4, r1
000d90  0b92d010  add.s r4, r1, r13
000d94  5b010000  j 8
000d98  1712c201  or r4, r4, r28
000d9c  9780a201  and r1, r5, r26
000da0  93801404  setlt.u r1, r9, r1
000da4  3be00000  bneq r1, zero, 24
000da8  9bc00201  srli r1, r5, 16
000dac  9b801000  andi r1, r1, 1
000db0  8b901210  add.s r1, r5, r1
000db4  8b92d010  add.s r5, r1, r13
000db8  5b010000  j 8
000dbc  9792c201  or r5, r5, r28
000dc0  9700a301  and r1, r6, r26
000dc4  93801404  setlt.u r1, r9, r1
000dc8  3be00000  bneq r1, zero, 24
000dcc  9b400301  srli r1, r6, 16
000dd0  9b801000  andi r1, r1, 1
000dd4  8b101310  add.s r1, r6, r1
000dd8  0b93d010  add.s r6, r1, r13
000ddc  5b010000  j 8
000de0  1713c301  or r6, r6, r28
000de4  9780ab01  and r1, r23, r26
000de8  93801404  setlt.u r1, r9, r1
000dec  3be00000  bneq r1, zero, 24
000df0  9bc00b01  srli r1, r23, 16
000df4  9b801000  andi r1, r1, 1
000df8  8b901b10  add.s r1, r23, r1
000dfc  8b93d010  add.s r7, r1, r13
000e00  5b010000  j 8
000e04  9793cb01  or r7, r23, r28
000e08  9700a401  and r1, r8, r26
000e0c  93801404  setlt.u r1, r9, r1
000e10  3be00000  bneq r1, zero, 24
000e14  9b400401  srli r1, r8, 16
000e18  9b801000  andi r1, r1, 1
000e1c  8b101410  add.s r1, r8, r1
000e20  0b94d010  add.s r8, r1, r13
000e24  5b010000  j 8
000e28  1714c401  or r8, r8, r28
000e2c  9700aa01  and r1, r20, r26
000e30  93801404  setlt.u r1, r9, r1
000e34  3be00000  bneq r1, zero, 24
000e38  9b400a01  srli r1, r20, 16
000e3c  9b801000  andi r1, r1, 1
000e40  8b101a10  add.s r1, r20, r1
000e44  8b95d010  add.s r11, r1, r13
000e48  5b010000  j 8
000e4c  9715ca01  or r11, r20, r28
000e50  9700a601  and r1, r12, r26
000e54  93801404  setlt.u r1, r9, r1
000e58  3be00000  bneq r1, zero, 24
000e5c  9b400601  srli r1, r12, 16
000e60  9b801000  andi r1, r1, 1
000e64  8b101610  add.s r1, r12, r1
000e68  0b96d010  add.s r12, r1, r13
000e6c  5b010000  j 8
000e70  1716c601  or r12, r12, r28
000e74  9700a901  and r1, r18, r26
000e78  93801404  setlt.u r1, r9, r1
000e7c  3be00000  bneq r1, zero, 24
000e80  9b400901  srli r1, r18, 16
000e84  9b801000  andi r1, r1, 1
000e88  8b101910  add.s r1, r18, r1
000e8c  0b99d010  add.s r18, r1, r13
000e90  5b010000  j 8
000e94  1719c901  or r18, r18, r28
000e98  9780a901  and r1, r19, r26
000e9c  93801404  setlt.u r1, r9, r1
000ea0  3be00000  bneq r1, zero, 24
000ea4  9bc00901  srli r1, r19, 16
000ea8  9b801000  andi r1, r1, 1
000eac  8b901910  add.s r1, r19, r1
000eb0  0b9ad010  add.s r20, r1, r13
000eb4  5b010000  j 8
000eb8  179ac901  or r20, r19, r28
000ebc  9780a801  and r1, r17, r26
000ec0  93801404  setlt.u r1, r9, r1
000ec4  3be00000  bneq r1, zero, 24
000ec8  9bc00801  srli r1, r17, 16
000ecc  9b801000  andi r1, r1, 1
000ed0  8b901810  add.s r1, r17, r1
000ed4  8b9ad010  add.s r21, r1, r13
000ed8  5b010000  j 8
000edc  979ac801  or r21, r17, r28
000ee0  9700a801  and r1, r16, r26
000ee4  93801404  setlt.u r1, r9, r1
000ee8  3be00000  bneq r1, zero, 24
000eec  9b400801  srli r1, r16, 16
000ef0  9b801000  andi r1, r1, 1
000ef4  8b101810  add.s r1, r16, r1
000ef8  0b9bd010  add.s r22, r1, r13
000efc  5b010000  j 8
000f00  171bc801  or r22, r16, r28
000f04  9780a701  and r1, r15, r26
000f08  93801404  setlt.u r1, r9, r1
000f0c  3be00000  bneq r1, zero, 24
000f10  9bc00701  srli r1, r15, 16
000f14  9b801000  andi r1, r1, 1
000f18  8b901710  add.s r1, r15, r1
000f1c  8b9bd010  add.s r23, r1, r13
000f20  5b010000  j 8
000f24  979bc701  or r23, r15, r28
000f28  9700a501  and r1, r10, r26
000f2c  93801404  setlt.u r1, r9, r1
000f30  3be00000  bneq r1, zero, 24
000f34  9b400501  srli r1, r10, 16
000f38  9b801000  andi r1, r1, 1
000f3c  8b101510  add.s r1, r10, r1
000f40  8b96d010  add.s r13, r1, r13
000f44  5b010000  j 8
000f48  9716c501  or r13, r10, r28
000f4c  9700a701  and r1, r14, r26
000f50  93801404  setlt.u r1, r9, r1
000f54  3bf00000  bneq r1, zero, 28
000f58  9b400701  srli r1, r14, 16
000f5c  e3446ffd  loadli.w r9,  -332(r30)
000f60  9b801000  andi r1, r1, 1
000f64  8b101710  add.s r1, r14, r1
000f68  0b979010  add.s r14, r1, r9
000f6c  5b010000  j 8
000f70  1717c701  or r14, r14, r28
000f74  ab09ffff  lui r19, 1048560
000f78  97003101  and r1, r2, r19
000f7c  17813101  and r2, r3, r19
000f80  ab01ffff  lui r3, 1048560
000f84  17023201  and r4, r4, r19
000f88  97823201  and r5, r5, r19
000f8c  97043301  and r9, r6, r19
000f90  17853301  and r10, r7, r19
000f94  97073401  and r15, r8, r19
000f98  17883501  and r16, r11, r19
000f9c  97083601  and r17, r12, r19
000fa0  97093901  and r19, r18, r19
000fa4  978c3600  and r25, r13, r3
000fa8  e346affb  loadli.w r13,  -556(r30)
000fac  170a3a00  and r20, r20, r3
000fb0  978a3a00  and r21, r21, r3
000fb4  170b3b00  and r22, r22, r3
000fb8  178c3b00  and r24, r23, r3
000fbc  970d3700  and r27, r14, r3
000fc0  9f018000  addli r3, zero, 64
000fc4  3fb03600  blt.s r13, r3, 12
000fc8  9f010000  addli r3, zero, 0
000fcc  5b080000  j 64
000fd0  8be12010  add.f.rn r3, r1, r2
000fd4  8be14110  add.f.rn r3, r3, r4
000fd8  8be15110  add.f.rn r3, r3, r5
000fdc  8be19110  add.f.rn r3, r3, r9
000fe0  8be1a110  add.f.rn r3, r3, r10
000fe4  8be1f110  add.f.rn r3, r3, r15
000fe8  8be10111  add.f.rn r3, r3, r16
000fec  8be11111  add.f.rn r3, r3, r17
000ff0  8be13111  add.f.rn r3, r3, r19
000ff4  8be14111  add.f.rn r3, r3, r20
000ff8  8be15111  add.f.rn r3, r3, r21
000ffc  8be16111  add.f.rn r3, r3, r22
001000  8be18111  add.f.rn r3, r3, r24
001004  8be19111  add.f.rn r3, r3, r25
001008  8be1b111  add.f.rn r3, r3, r27
00100c  63430ffb  loadli.w r6,  -636(r30)
001010  6347fffa  loadli.w r14,  -644(r30)
001014  73603300  stores.w r3, 0(r6)
001018  00a00300  mfence { lm, sm, gm }
00101c  80210704  csr_set csr3, r14
001020  00d00100  sync_group
001024  e301fffc  loadli.w r3,  -392(r30)
001028  3ba80100  bneq r3, zero, 520
00102c  63441ffb  loadli.w r8,  -628(r30)
001030  ef410400  loads.w r3, 0(r8)
001034  ef434400  loads.w r7, 4(r8)
001038  6f438400  loads.w r6, 8(r8)
00103c  8be17110  add.f.rn r3, r3, r7
001040  ef43c400  loads.w r7, 12(r8)
001044  8be16110  add.f.rn r3, r3, r6
001048  6f430401  loads.w r6, 16(r8)
00104c  8be17110  add.f.rn r3, r3, r7
001050  ef434401  loads.w r7, 20(r8)
001054  8be16110  add.f.rn r3, r3, r6
001058  6f438401  loads.w r6, 24(r8)
00105c  8be17110  add.f.rn r3, r3, r7
001060  ef43c401  loads.w r7, 28(r8)
001064  8be16110  add.f.rn r3, r3, r6
001068  6f430402  loads.w r6, 32(r8)
00106c  8be17110  add.f.rn r3, r3, r7
001070  ef434402  loads.w r7, 36(r8)
001074  8be16110  add.f.rn r3, r3, r6
001078  6f438402  loads.w r6, 40(r8)
00107c  8be17110  add.f.rn r3, r3, r7
001080  ef43c402  loads.w r7, 44(r8)
001084  8be16110  add.f.rn r3, r3, r6
001088  6f430403  loads.w r6, 48(r8)
00108c  8be17110  add.f.rn r3, r3, r7
001090  ef434403  loads.w r7, 52(r8)
001094  8be16110  add.f.rn r3, r3, r6
001098  6f438403  loads.w r6, 56(r8)
00109c  8be17110  add.f.rn r3, r3, r7
0010a0  ef43c403  loads.w r7, 60(r8)
0010a4  8be16110  add.f.rn r3, r3, r6
0010a8  6f430404  loads.w r6, 64(r8)
0010ac  8be17110  add.f.rn r3, r3, r7
0010b0  ef434404  loads.w r7, 68(r8)
0010b4  8be16110  add.f.rn r3, r3, r6
0010b8  6f438404  loads.w r6, 72(r8)
0010bc  8be17110  add.f.rn r3, r3, r7
0010c0  ef43c404  loads.w r7, 76(r8)
0010c4  8be16110  add.f.rn r3, r3, r6
0010c8  6f430405  loads.w r6, 80(r8)
0010cc  8be17110  add.f.rn r3, r3, r7
0010d0  ef434405  loads.w r7, 84(r8)
0010d4  8be16110  add.f.rn r3, r3, r6
0010d8  6f438405  loads.w r6, 88(r8)
0010dc  8be17110  add.f.rn r3, r3, r7
0010e0  ef43c405  loads.w r7, 92(r8)
0010e4  8be16110  add.f.rn r3, r3, r6
0010e8  6f430406  loads.w r6, 96(r8)
0010ec  8be17110  add.f.rn r3, r3, r7
0010f0  ef434406  loads.w r7, 100(r8)
0010f4  8be16110  add.f.rn r3, r3, r6
0010f8  6f438406  loads.w r6, 104(r8)
0010fc  8be17110  add.f.rn r3, r3, r7
001100  ef43c406  loads.w r7, 108(r8)
001104  8be16110  add.f.rn r3, r3, r6
001108  6f430407  loads.w r6, 112(r8)
00110c  8be17110  add.f.rn r3, r3, r7
001110  ef434407  loads.w r7, 116(r8)
001114  8be16110  add.f.rn r3, r3, r6
001118  6f438407  loads.w r6, 120(r8)
00111c  8be17110  add.f.rn r3, r3, r7
001120  ef43c407  loads.w r7, 124(r8)
001124  8be16110  add.f.rn r3, r3, r6
001128  6f430408  loads.w r6, 128(r8)
00112c  8be17110  add.f.rn r3, r3, r7
001130  ef434408  loads.w r7, 132(r8)
001134  8be16110  add.f.rn r3, r3, r6
001138  6f438408  loads.w r6, 136(r8)
00113c  8be17110  add.f.rn r3, r3, r7
001140  ef43c408  loads.w r7, 140(r8)
001144  8be16110  add.f.rn r3, r3, r6
001148  6f430409  loads.w r6, 144(r8)
00114c  8be17110  add.f.rn r3, r3, r7
001150  ef434409  loads.w r7, 148(r8)
001154  8be16110  add.f.rn r3, r3, r6
001158  6f438409  loads.w r6, 152(r8)
00115c  8be17110  add.f.rn r3, r3, r7
001160  ef43c409  loads.w r7, 156(r8)
001164  8be16110  add.f.rn r3, r3, r6
001168  6f43040a  loads.w r6, 160(r8)
00116c  8be17110  add.f.rn r3, r3, r7
001170  ef43440a  loads.w r7, 164(r8)
001174  8be16110  add.f.rn r3, r3, r6
001178  6f43840a  loads.w r6, 168(r8)
00117c  8be17110  add.f.rn r3, r3, r7
001180  ef43c40a  loads.w r7, 172(r8)
001184  8be16110  add.f.rn r3, r3, r6
001188  6f43040b  loads.w r6, 176(r8)
00118c  8be17110  add.f.rn r3, r3, r7
001190  ef43440b  loads.w r7, 180(r8)
001194  8be16110  add.f.rn r3, r3, r6
001198  6f43840b  loads.w r6, 184(r8)
00119c  8be17110  add.f.rn r3, r3, r7
0011a0  ef43c40b  loads.w r7, 188(r8)
0011a4  8be16110  add.f.rn r3, r3, r6
0011a8  6f43040c  loads.w r6, 192(r8)
0011ac  8be17110  add.f.rn r3, r3, r7
0011b0  ef43440c  loads.w r7, 196(r8)
0011b4  8be16110  add.f.rn r3, r3, r6
0011b8  6f43840c  loads.w r6, 200(r8)
0011bc  8be17110  add.f.rn r3, r3, r7
0011c0  ef43c40c  loads.w r7, 204(r8)
0011c4  8be16110  add.f.rn r3, r3, r6
0011c8  6f43040d  loads.w r6, 208(r8)
0011cc  8be17110  add.f.rn r3, r3, r7
0011d0  ef43440d  loads.w r7, 212(r8)
0011d4  8be16110  add.f.rn r3, r3, r6
0011d8  6f43840d  loads.w r6, 216(r8)
0011dc  8be17110  add.f.rn r3, r3, r7
0011e0  ef43c40d  loads.w r7, 220(r8)
0011e4  8be16110  add.f.rn r3, r3, r6
0011e8  6f43040e  loads.w r6, 224(r8)
0011ec  8be17110  add.f.rn r3, r3, r7
0011f0  ef43440e  loads.w r7, 228(r8)
0011f4  8be16110  add.f.rn r3, r3, r6
0011f8  6f43840e  loads.w r6, 232(r8)
0011fc  8be17110  add.f.rn r3, r3, r7
001200  ef43c40e  loads.w r7, 236(r8)
001204  8be16110  add.f.rn r3, r3, r6
001208  6f43040f  loads.w r6, 240(r8)
00120c  8be17110  add.f.rn r3, r3, r7
001210  ef43440f  loads.w r7, 244(r8)
001214  8be16110  add.f.rn r3, r3, r6
001218  6f43840f  loads.w r6, 248(r8)
00121c  8be17110  add.f.rn r3, r3, r7
001220  ef43c40f  loads.w r7, 252(r8)
001224  8be16110  add.f.rn r3, r3, r6
001228  8be17110  add.f.rn r3, r3, r7
00122c  73603400  stores.w r3, 0(r8)
001230  00a00300  mfence { lm, sm, gm }
001234  80210704  csr_set csr3, r14
001238  00d00100  sync_group
00123c  e3411ffb  loadli.w r3,  -628(r30)
001240  2b03803a  lui r6, 239616
001244  efc10100  loads.w r3, 0(r3)
001248  8be36120  mul.f.rn r7, r3, r6
00124c  8b617118  sub.f.rn r3, r2, r7
001250  0b637218  sub.f.rn r6, r4, r7
001254  8be57418  sub.f.rn r11, r9, r7
001258  0b667518  sub.f.rn r12, r10, r7
00125c  0be27718  sub.f.rn r4, r15, r7
001260  8b6b7818  sub.f.rn r23, r16, r7
001264  8be47818  sub.f.rn r9, r17, r7
001268  0be57918  sub.f.rn r10, r19, r7
00126c  8b677a18  sub.f.rn r15, r20, r7
001270  8be07018  sub.f.rn r1, r1, r7
001274  0be47218  sub.f.rn r8, r5, r7
001278  0bea7a18  sub.f.rn r20, r21, r7
00127c  8b697b18  sub.f.rn r19, r22, r7
001280  0b697c18  sub.f.rn r18, r24, r7
001284  8be87c18  sub.f.rn r17, r25, r7
001288  0be87d18  sub.f.rn r16, r27, r7
00128c  1f018000  addli r2, zero, 64
001290  3fb02600  blt.s r13, r2, 12
001294  1f010000  addli r2, zero, 0
001298  5b100000  j 128
00129c  0be11020  mul.f.rn r2, r1, r1
0012a0  8be23120  mul.f.rn r5, r3, r3
0012a4  0b615110  add.f.rn r2, r2, r5
0012a8  8b626320  mul.f.rn r5, r6, r6
0012ac  0be12210  add.f.rn r2, r5, r2
0012b0  8b628420  mul.f.rn r5, r8, r8
0012b4  0be12210  add.f.rn r2, r5, r2
0012b8  8be2b520  mul.f.rn r5, r11, r11
0012bc  0be12210  add.f.rn r2, r5, r2
0012c0  8b62c620  mul.f.rn r5, r12, r12
0012c4  0be12210  add.f.rn r2, r5, r2
0012c8  8b624220  mul.f.rn r5, r4, r4
0012cc  0be12210  add.f.rn r2, r5, r2
0012d0  8be27b21  mul.f.rn r5, r23, r23
0012d4  0be12210  add.f.rn r2, r5, r2
0012d8  8be29420  mul.f.rn r5, r9, r9
0012dc  0be12210  add.f.rn r2, r5, r2
0012e0  8b62a520  mul.f.rn r5, r10, r10
0012e4  0be12210  add.f.rn r2, r5, r2
0012e8  8be2f720  mul.f.rn r5, r15, r15
0012ec  0be12210  add.f.rn r2, r5, r2
0012f0  8b624a21  mul.f.rn r5, r20, r20
0012f4  0be12210  add.f.rn r2, r5, r2
0012f8  8be23921  mul.f.rn r5, r19, r19
0012fc  0be12210  add.f.rn r2, r5, r2
001300  8b622921  mul.f.rn r5, r18, r18
001304  0be12210  add.f.rn r2, r5, r2
001308  8be21821  mul.f.rn r5, r17, r17
00130c  0be12210  add.f.rn r2, r5, r2
001310  8b620821  mul.f.rn r5, r16, r16
001314  0be12210  add.f.rn r2, r5, r2
001318  e342effa  loadli.w r5,  -652(r30)
00131c  ab0d807f  lui r27, 522240
001320  73e02200  stores.w r2, 0(r5)
001324  00a00300  mfence { lm, sm, gm }
001328  80210704  csr_set csr3, r14
00132c  00d00100  sync_group
001330  6301fffc  loadli.w r2,  -392(r30)
001334  3b280100  bneq r2, zero, 520
001338  e3061ffb  loadli.w r13,  -632(r30)
00133c  6fc10600  loads.w r2, 0(r13)
001340  efc34600  loads.w r7, 4(r13)
001344  efc28600  loads.w r5, 8(r13)
001348  0b617110  add.f.rn r2, r2, r7
00134c  efc3c600  loads.w r7, 12(r13)
001350  0b615110  add.f.rn r2, r2, r5
001354  efc20601  loads.w r5, 16(r13)
001358  0b617110  add.f.rn r2, r2, r7
00135c  efc34601  loads.w r7, 20(r13)
001360  0b615110  add.f.rn r2, r2, r5
001364  efc28601  loads.w r5, 24(r13)
001368  0b617110  add.f.rn r2, r2, r7
00136c  efc3c601  loads.w r7, 28(r13)
001370  0b615110  add.f.rn r2, r2, r5
001374  efc20602  loads.w r5, 32(r13)
001378  0b617110  add.f.rn r2, r2, r7
00137c  efc34602  loads.w r7, 36(r13)
001380  0b615110  add.f.rn r2, r2, r5
001384  efc28602  loads.w r5, 40(r13)
001388  0b617110  add.f.rn r2, r2, r7
00138c  efc3c602  loads.w r7, 44(r13)
001390  0b615110  add.f.rn r2, r2, r5
001394  efc20603  loads.w r5, 48(r13)
001398  0b617110  add.f.rn r2, r2, r7
00139c  efc34603  loads.w r7, 52(r13)
0013a0  0b615110  add.f.rn r2, r2, r5
0013a4  efc28603  loads.w r5, 56(r13)
0013a8  0b617110  add.f.rn r2, r2, r7
0013ac  efc3c603  loads.w r7, 60(r13)
0013b0  0b615110  add.f.rn r2, r2, r5
0013b4  efc20604  loads.w r5, 64(r13)
0013b8  0b617110  add.f.rn r2, r2, r7
0013bc  efc34604  loads.w r7, 68(r13)
0013c0  0b615110  add.f.rn r2, r2, r5
0013c4  efc28604  loads.w r5, 72(r13)
0013c8  0b617110  add.f.rn r2, r2, r7
0013cc  efc3c604  loads.w r7, 76(r13)
0013d0  0b615110  add.f.rn r2, r2, r5
0013d4  efc20605  loads.w r5, 80(r13)
0013d8  0b617110  add.f.rn r2, r2, r7
0013dc  efc34605  loads.w r7, 84(r13)
0013e0  0b615110  add.f.rn r2, r2, r5
0013e4  efc28605  loads.w r5, 88(r13)
0013e8  0b617110  add.f.rn r2, r2, r7
0013ec  efc3c605  loads.w r7, 92(r13)
0013f0  0b615110  add.f.rn r2, r2, r5
0013f4  efc20606  loads.w r5, 96(r13)
0013f8  0b617110  add.f.rn r2, r2, r7
0013fc  efc34606  loads.w r7, 100(r13)
001400  0b615110  add.f.rn r2, r2, r5
001404  efc28606  loads.w r5, 104(r13)
001408  0b617110  add.f.rn r2, r2, r7
00140c  efc3c606  loads.w r7, 108(r13)
001410  0b615110  add.f.rn r2, r2, r5
001414  efc20607  loads.w r5, 112(r13)
001418  0b617110  add.f.rn r2, r2, r7
00141c  efc34607  loads.w r7, 116(r13)
001420  0b615110  add.f.rn r2, r2, r5
001424  efc28607  loads.w r5, 120(r13)
001428  0b617110  add.f.rn r2, r2, r7
00142c  efc3c607  loads.w r7, 124(r13)
001430  0b615110  add.f.rn r2, r2, r5
001434  efc20608  loads.w r5, 128(r13)
001438  0b617110  add.f.rn r2, r2, r7
00143c  efc34608  loads.w r7, 132(r13)
001440  0b615110  add.f.rn r2, r2, r5
001444  efc28608  loads.w r5, 136(r13)
001448  0b617110  add.f.rn r2, r2, r7
00144c  efc3c608  loads.w r7, 140(r13)
001450  0b615110  add.f.rn r2, r2, r5
001454  efc20609  loads.w r5, 144(r13)
001458  0b617110  add.f.rn r2, r2, r7
00145c  efc34609  loads.w r7, 148(r13)
001460  0b615110  add.f.rn r2, r2, r5
001464  efc28609  loads.w r5, 152(r13)
001468  0b617110  add.f.rn r2, r2, r7
00146c  efc3c609  loads.w r7, 156(r13)
001470  0b615110  add.f.rn r2, r2, r5
001474  efc2060a  loads.w r5, 160(r13)
001478  0b617110  add.f.rn r2, r2, r7
00147c  efc3460a  loads.w r7, 164(r13)
001480  0b615110  add.f.rn r2, r2, r5
001484  efc2860a  loads.w r5, 168(r13)
001488  0b617110  add.f.rn r2, r2, r7
00148c  efc3c60a  loads.w r7, 172(r13)
001490  0b615110  add.f.rn r2, r2, r5
001494  efc2060b  loads.w r5, 176(r13)
001498  0b617110  add.f.rn r2, r2, r7
00149c  efc3460b  loads.w r7, 180(r13)
0014a0  0b615110  add.f.rn r2, r2, r5
0014a4  efc2860b  loads.w r5, 184(r13)
0014a8  0b617110  add.f.rn r2, r2, r7
0014ac  efc3c60b  loads.w r7, 188(r13)
0014b0  0b615110  add.f.rn r2, r2, r5
0014b4  efc2060c  loads.w r5, 192(r13)
0014b8  0b617110  add.f.rn r2, r2, r7
0014bc  efc3460c  loads.w r7, 196(r13)
0014c0  0b615110  add.f.rn r2, r2, r5
0014c4  efc2860c  loads.w r5, 200(r13)
0014c8  0b617110  add.f.rn r2, r2, r7
0014cc  efc3c60c  loads.w r7, 204(r13)
0014d0  0b615110  add.f.rn r2, r2, r5
0014d4  efc2060d  loads.w r5, 208(r13)
0014d8  0b617110  add.f.rn r2, r2, r7
0014dc  efc3460d  loads.w r7, 212(r13)
0014e0  0b615110  add.f.rn r2, r2, r5
0014e4  efc2860d  loads.w r5, 216(r13)
0014e8  0b617110  add.f.rn r2, r2, r7
0014ec  efc3c60d  loads.w r7, 220(r13)
0014f0  0b615110  add.f.rn r2, r2, r5
0014f4  efc2060e  loads.w r5, 224(r13)
0014f8  0b617110  add.f.rn r2, r2, r7
0014fc  efc3460e  loads.w r7, 228(r13)
001500  0b615110  add.f.rn r2, r2, r5
001504  efc2860e  loads.w r5, 232(r13)
001508  0b617110  add.f.rn r2, r2, r7
00150c  efc3c60e  loads.w r7, 236(r13)
001510  0b615110  add.f.rn r2, r2, r5
001514  efc2060f  loads.w r5, 240(r13)
001518  0b617110  add.f.rn r2, r2, r7
00151c  efc3460f  loads.w r7, 244(r13)
001520  0b615110  add.f.rn r2, r2, r5
001524  efc2860f  loads.w r5, 248(r13)
001528  0b617110  add.f.rn r2, r2, r7
00152c  efc3c60f  loads.w r7, 252(r13)
001530  0b615110  add.f.rn r2, r2, r5
001534  0b617110  add.f.rn r2, r2, r7
001538  73e02600  stores.w r2, 0(r13)
00153c  00a00300  mfence { lm, sm, gm }
001540  80210704  csr_set csr3, r14
001544  00d00100  sync_group
001548  63011ffb  loadli.w r2,  -632(r30)
00154c  ab02803a  lui r5, 239616
001550  6f410100  loads.w r2, 0(r2)
001554  0b615120  mul.f.rn r2, r2, r5
001558  e3423ffa  loadli.w r5,  -740(r30)
00155c  0b615110  add.f.rn r2, r2, r5
001560  ab02803f  lui r5, 260096
001564  0f010108  sqrt.f.rn r2, r2
001568  8f8a2218  div.f.rn r21, r5, r2
00156c  6341bffb  loadli.w r2,  -548(r30)
001570  33110118  bfloat2float.rn r2, r2
001574  8be05021  mul.f.rn r1, r1, r21
001578  8be02020  mul.f.rn r1, r1, r2
00157c  6301bffb  loadli.w r2,  -552(r30)
001580  33110118  bfloat2float.rn r2, r2
001584  8be02010  add.f.rn r1, r1, r2
001588  1781a001  and r2, r1, r26
00158c  e74d2ffa  storeli.w r2, -548(r30)
001590  13812d04  setlt.u r2, r27, r2
001594  3b300100  bneq r2, zero, 12
001598  670b1ffc  storeli.w r1, -336(r30)
00159c  db010000  j 12
0015a0  1791c001  or r2, r1, r28
0015a4  670b2ffc  storeli.w r2, -336(r30)
0015a8  0be15121  mul.f.rn r2, r3, r21
0015ac  e341cffb  loadli.w r3,  -540(r30)
0015b0  b3910118  bfloat2float.rn r3, r3
0015b4  0b613120  mul.f.rn r2, r2, r3
0015b8  e301cffb  loadli.w r3,  -544(r30)
0015bc  b3910118  bfloat2float.rn r3, r3
0015c0  0b6b3110  add.f.rn r22, r2, r3
0015c4  1701ab01  and r2, r22, r26
0015c8  674e2ffa  storeli.w r2, -540(r30)
0015cc  13812d04  setlt.u r2, r27, r2
0015d0  3b300100  bneq r2, zero, 12
0015d4  e74a6ffd  storeli.w r22, -340(r30)
0015d8  db010000  j 12
0015dc  1711cb01  or r2, r22, r28
0015e0  e74a2ffc  storeli.w r2, -340(r30)
0015e4  0b615321  mul.f.rn r2, r6, r21
0015e8  e341dffb  loadli.w r3,  -532(r30)
0015ec  b3910118  bfloat2float.rn r3, r3
0015f0  0b613120  mul.f.rn r2, r2, r3
0015f4  e301dffb  loadli.w r3,  -536(r30)
0015f8  b3910118  bfloat2float.rn r3, r3
0015fc  8b6c3110  add.f.rn r25, r2, r3
001600  1781ac01  and r2, r25, r26
001604  e74e2ffa  storeli.w r2, -532(r30)
001608  13812d04  setlt.u r2, r27, r2
00160c  3b300100  bneq r2, zero, 12
001610  e70a9ffd  storeli.w r25, -344(r30)
001614  db010000  j 12
001618  1791cc01  or r2, r25, r28
00161c  e70a2ffc  storeli.w r2, -344(r30)
001620  0b615421  mul.f.rn r2, r8, r21
001624  e341effb  loadli.w r3,  -524(r30)
001628  b3910118  bfloat2float.rn r3, r3
00162c  0b613120  mul.f.rn r2, r2, r3
001630  e301effb  loadli.w r3,  -528(r30)
001634  b3910118  bfloat2float.rn r3, r3
001638  0b643110  add.f.rn r8, r2, r3
00163c  1701a401  and r2, r8, r26
001640  674f2ffa  storeli.w r2, -524(r30)
001644  13812d04  setlt.u r2, r27, r2
001648  3b300100  bneq r2, zero, 12
00164c  674a8ffc  storeli.w r8, -348(r30)
001650  db010000  j 12
001654  1711c401  or r2, r8, r28
001658  674a2ffc  storeli.w r2, -348(r30)
00165c  0be15521  mul.f.rn r2, r11, r21
001660  e341fffb  loadli.w r3,  -516(r30)
001664  b3910118  bfloat2float.rn r3, r3
001668  0b613120  mul.f.rn r2, r2, r3
00166c  e301fffb  loadli.w r3,  -520(r30)
001670  b3910118  bfloat2float.rn r3, r3
001674  8b653110  add.f.rn r11, r2, r3
001678  1781a501  and r2, r11, r26
00167c  e74f2ffa  storeli.w r2, -516(r30)
001680  13812d04  setlt.u r2, r27, r2
001684  3b300100  bneq r2, zero, 12
001688  670abffc  storeli.w r11, -352(r30)
00168c  db010000  j 12
001690  1791c501  or r2, r11, r28
001694  670a2ffc  storeli.w r2, -352(r30)
001698  0b615621  mul.f.rn r2, r12, r21
00169c  e3410ffc  loadli.w r3,  -508(r30)
0016a0  b3910118  bfloat2float.rn r3, r3
0016a4  0b613120  mul.f.rn r2, r2, r3
0016a8  e3010ffc  loadli.w r3,  -512(r30)
0016ac  b3910118  bfloat2float.rn r3, r3
0016b0  0b663110  add.f.rn r12, r2, r3
0016b4  1701a601  and r2, r12, r26
0016b8  67402ffc  storeli.w r2, -508(r30)
0016bc  13812d04  setlt.u r2, r27, r2
0016c0  3b300100  bneq r2, zero, 12
0016c4  e749cffc  storeli.w r12, -356(r30)
0016c8  db010000  j 12
0016cc  1711c601  or r2, r12, r28
0016d0  e7492ffc  storeli.w r2, -356(r30)
0016d4  0b615221  mul.f.rn r2, r4, r21
0016d8  e3013ffd  loadli.w r3,  -360(r30)
0016dc  b3910118  bfloat2float.rn r3, r3
0016e0  0b613120  mul.f.rn r2, r2, r3
0016e4  e3011ffc  loadli.w r3,  -504(r30)
0016e8  b3910118  bfloat2float.rn r3, r3
0016ec  0b623110  add.f.rn r4, r2, r3
0016f0  1701a201  and r2, r4, r26
0016f4  e7002ffc  storeli.w r2, -504(r30)
0016f8  13812d04  setlt.u r2, r27, r2
0016fc  3b300100  bneq r2, zero, 12
001700  e7094ffc  storeli.w r4, -360(r30)
001704  db010000  j 12
001708  1711c201  or r2, r4, r28
00170c  e7092ffc  storeli.w r2, -360(r30)
001710  0be15b21  mul.f.rn r2, r23, r21
001714  e3412ffd  loadli.w r3,  -364(r30)
001718  b3910118  bfloat2float.rn r3, r3
00171c  0b613120  mul.f.rn r2, r2, r3
001720  e3411ffc  loadli.w r3,  -500(r30)
001724  b3910118  bfloat2float.rn r3, r3
001728  8b623110  add.f.rn r5, r2, r3
00172c  9f010800  addli r3, r16, 0
001730  1781a201  and r2, r5, r26
001734  e7402ffc  storeli.w r2, -500(r30)
001738  13812d04  setlt.u r2, r27, r2
00173c  3b300100  bneq r2, zero, 12
001740  67495ffc  storeli.w r5, -364(r30)
001744  db010000  j 12
001748  1791c201  or r2, r5, r28
00174c  67492ffc  storeli.w r2, -364(r30)
001750  0be15421  mul.f.rn r2, r9, r21
001754  63032ffd  loadli.w r6,  -368(r30)
001758  33130318  bfloat2float.rn r6, r6
00175c  0b616120  mul.f.rn r2, r2, r6
001760  63032ffc  loadli.w r6,  -496(r30)
001764  33130318  bfloat2float.rn r6, r6
001768  0b686110  add.f.rn r16, r2, r6
00176c  170ca801  and r24, r16, r26
001770  13818d05  setlt.u r2, r27, r24
001774  3b300100  bneq r2, zero, 12
001778  67090ffd  storeli.w r16, -368(r30)
00177c  db010000  j 12
001780  1711c801  or r2, r16, r28
001784  67092ffc  storeli.w r2, -368(r30)
001788  0b615521  mul.f.rn r2, r10, r21
00178c  63431ffd  loadli.w r6,  -372(r30)
001790  9f060a00  addli r13, r20, 0
001794  33130318  bfloat2float.rn r6, r6
001798  0b616120  mul.f.rn r2, r2, r6
00179c  63033ffc  loadli.w r6,  -488(r30)
0017a0  33130318  bfloat2float.rn r6, r6
0017a4  8b646110  add.f.rn r9, r2, r6
0017a8  1783a401  and r6, r9, r26
0017ac  13816d04  setlt.u r2, r27, r6
0017b0  3b300100  bneq r2, zero, 12
0017b4  e7489ffc  storeli.w r9, -372(r30)
0017b8  db010000  j 12
0017bc  1791c401  or r2, r9, r28
0017c0  e7482ffc  storeli.w r2, -372(r30)
0017c4  0be15721  mul.f.rn r2, r15, r21
0017c8  e3031ffd  loadli.w r7,  -376(r30)
0017cc  b3930318  bfloat2float.rn r7, r7
0017d0  0b617120  mul.f.rn r2, r2, r7
0017d4  e3034ffc  loadli.w r7,  -480(r30)
0017d8  b3930318  bfloat2float.rn r7, r7
0017dc  0b657110  add.f.rn r10, r2, r7
0017e0  170aa501  and r20, r10, r26
0017e4  13814d05  setlt.u r2, r27, r20
0017e8  3b300100  bneq r2, zero, 12
0017ec  e708affc  storeli.w r10, -376(r30)
0017f0  db010000  j 12
0017f4  1711c501  or r2, r10, r28
0017f8  e7082ffc  storeli.w r2, -376(r30)
0017fc  0be15621  mul.f.rn r2, r13, r21
001800  e3430ffd  loadli.w r7,  -380(r30)
001804  e3477ffd  loadli.w r15,  -324(r30)
001808  9f0b0900  addli r23, r18, 0
00180c  b3930318  bfloat2float.rn r7, r7
001810  0b617120  mul.f.rn r2, r2, r7
001814  e3035ffc  loadli.w r7,  -472(r30)
001818  b3930318  bfloat2float.rn r7, r7
00181c  0b617110  add.f.rn r2, r2, r7
001820  9703a101  and r7, r2, r26
001824  93867d04  setlt.u r13, r27, r7
001828  3bb00600  bneq r13, zero, 12
00182c  67482ffc  storeli.w r2, -380(r30)
001830  db010000  j 12
001834  9716c101  or r13, r2, r28
001838  6748dffc  storeli.w r13, -380(r30)
00183c  8be65921  mul.f.rn r13, r19, r21
001840  63070ffd  loadli.w r14,  -384(r30)
001844  2b094000  lui r18, 1024
001848  2b0e807f  lui r28, 522240
00184c  33170718  bfloat2float.rn r14, r14
001850  8be6e620  mul.f.rn r13, r13, r14
001854  63076ffc  loadli.w r14,  -464(r30)
001858  33170718  bfloat2float.rn r14, r14
00185c  8be9e610  add.f.rn r19, r13, r14
001860  178da901  and r26, r19, r26
001864  9386ad05  setlt.u r13, r27, r26
001868  3bb00600  bneq r13, zero, 12
00186c  67083ffd  storeli.w r19, -384(r30)
001870  db010000  j 12
001874  97962901  or r13, r19, r18
001878  6708dffc  storeli.w r13, -384(r30)
00187c  8be65b21  mul.f.rn r13, r23, r21
001880  6347fffc  loadli.w r14,  -388(r30)
001884  33170718  bfloat2float.rn r14, r14
001888  8be6e620  mul.f.rn r13, r13, r14
00188c  63077ffc  loadli.w r14,  -456(r30)
001890  33170718  bfloat2float.rn r14, r14
001894  8bede610  add.f.rn r27, r13, r14
001898  e3067ffd  loadli.w r13,  -328(r30)
00189c  978bdd00  and r23, r27, r13
0018a0  93067e05  setlt.u r13, r28, r23
0018a4  3bb00600  bneq r13, zero, 12
0018a8  e747bffd  storeli.w r27, -388(r30)
0018ac  db010000  j 12
0018b0  97962d01  or r13, r27, r18
0018b4  e747dffc  storeli.w r13, -388(r30)
0018b8  8be65821  mul.f.rn r13, r17, r21
0018bc  6307affc  loadli.w r14,  -432(r30)
0018c0  33170718  bfloat2float.rn r14, r14
0018c4  8be6e620  mul.f.rn r13, r13, r14
0018c8  63078ffc  loadli.w r14,  -448(r30)
0018cc  33170718  bfloat2float.rn r14, r14
0018d0  8be8e610  add.f.rn r17, r13, r14
0018d4  e3067ffd  loadli.w r13,  -328(r30)
0018d8  9786d800  and r13, r17, r13
0018dc  67031ffd  storeli.w r17, -464(r30)
0018e0  6704dffc  storeli.w r13, -448(r30)
0018e4  9306de04  setlt.u r13, r28, r13
0018e8  37a00600  beq r13, zero, 8
0018ec  97982801  or r17, r17, r18
0018f0  8be65121  mul.f.rn r13, r3, r21
0018f4  6347bffc  loadli.w r14,  -420(r30)
0018f8  33170718  bfloat2float.rn r14, r14
0018fc  8be6e620  mul.f.rn r13, r13, r14
001900  63079ffc  loadli.w r14,  -440(r30)
001904  33170718  bfloat2float.rn r14, r14
001908  8be1e610  add.f.rn r3, r13, r14
00190c  e3067ffd  loadli.w r13,  -328(r30)
001910  9786d100  and r13, r3, r13
001914  67003ffc  storeli.w r3, -512(r30)
001918  6705dffc  storeli.w r13, -432(r30)
00191c  9306de04  setlt.u r13, r28, r13
001920  37b00600  beq r13, zero, 12
001924  ab064000  lui r13, 1024
001928  9791d100  or r3, r3, r13
00192c  e346bffb  loadli.w r13,  -548(r30)
001930  2b0effff  lui r28, 1048560
001934  9386d704  setlt.u r13, r15, r13
001938  bb800600  bneq r13, zero, 32
00193c  9bc60001  srli r13, r1, 16
001940  9b861600  andi r13, r13, 1
001944  8b90d010  add.s r1, r1, r13
001948  e3466ffd  loadli.w r13,  -332(r30)
00194c  8b90d010  add.s r1, r1, r13
001950  9780c001  and r1, r1, r28
001954  670b1ffc  storeli.w r1, -336(r30)
001958  e340cffb  loadli.w r1,  -540(r30)
00195c  e3466ffd  loadli.w r13,  -332(r30)
001960  93801704  setlt.u r1, r15, r1
001964  3bf00000  bneq r1, zero, 28
001968  9b400b01  srli r1, r22, 16
00196c  9b801000  andi r1, r1, 1
001970  8b101b10  add.s r1, r22, r1
001974  8b90d010  add.s r1, r1, r13
001978  9780c001  and r1, r1, r28
00197c  e74a1ffc  storeli.w r1, -340(r30)
001980  e340dffb  loadli.w r1,  -532(r30)
001984  93801704  setlt.u r1, r15, r1
001988  3bf00000  bneq r1, zero, 28
00198c  9bc00c01  srli r1, r25, 16
001990  9b801000  andi r1, r1, 1
001994  8b901c10  add.s r1, r25, r1
001998  8b90d010  add.s r1, r1, r13
00199c  9780c001  and r1, r1, r28
0019a0  e70a1ffc  storeli.w r1, -344(r30)
0019a4  e340effb  loadli.w r1,  -524(r30)
0019a8  93801704  setlt.u r1, r15, r1
0019ac  3bf00000  bneq r1, zero, 28
0019b0  9b400401  srli r1, r8, 16
0019b4  9b801000  andi r1, r1, 1
0019b8  8b101410  add.s r1, r8, r1
0019bc  8b90d010  add.s r1, r1, r13
0019c0  9780c001  and r1, r1, r28
0019c4  674a1ffc  storeli.w r1, -348(r30)
0019c8  e340fffb  loadli.w r1,  -516(r30)
0019cc  93801704  setlt.u r1, r15, r1
0019d0  3bf00000  bneq r1, zero, 28
0019d4  9bc00501  srli r1, r11, 16
0019d8  9b801000  andi r1, r1, 1
0019dc  8b901510  add.s r1, r11, r1
0019e0  8b90d010  add.s r1, r1, r13
0019e4  9780c001  and r1, r1, r28
0019e8  670a1ffc  storeli.w r1, -352(r30)
0019ec  e3400ffc  loadli.w r1,  -508(r30)
0019f0  93801704  setlt.u r1, r15, r1
0019f4  3bf00000  bneq r1, zero, 28
0019f8  9b400601  srli r1, r12, 16
0019fc  9b801000  andi r1, r1, 1
001a00  8b101610  add.s r1, r12, r1
001a04  8b90d010  add.s r1, r1, r13
001a08  9780c001  and r1, r1, r28
001a0c  e7491ffc  storeli.w r1, -356(r30)
001a10  e3001ffc  loadli.w r1,  -504(r30)
001a14  93801704  setlt.u r1, r15, r1
001a18  3bf00000  bneq r1, zero, 28
001a1c  9b400201  srli r1, r4, 16
001a20  9b801000  andi r1, r1, 1
001a24  8b101210  add.s r1, r4, r1
001a28  8b90d010  add.s r1, r1, r13
001a2c  9780c001  and r1, r1, r28
001a30  e7091ffc  storeli.w r1, -360(r30)
001a34  e3401ffc  loadli.w r1,  -500(r30)
001a38  93801704  setlt.u r1, r15, r1
001a3c  378a0000  beq r1, zero, 640
001a40  93808705  setlt.u r1, r15, r24
001a44  37ea0000  beq r1, zero, 664
001a48  93806704  setlt.u r1, r15, r6
001a4c  b7ca0000  beq r1, zero, 688
001a50  93804705  setlt.u r1, r15, r20
001a54  37ab0000  beq r1, zero, 712
001a58  93807704  setlt.u r1, r15, r7
001a5c  3bf00000  bneq r1, zero, 28
001a60  9b400101  srli r1, r2, 16
001a64  9b801000  andi r1, r1, 1
001a68  8b101110  add.s r1, r2, r1
001a6c  8b90d010  add.s r1, r1, r13
001a70  9780c001  and r1, r1, r28
001a74  67481ffc  storeli.w r1, -380(r30)
001a78  9380a705  setlt.u r1, r15, r26
001a7c  e7453ffc  storeli.w r3, -420(r30)
001a80  3bf00000  bneq r1, zero, 28
001a84  9bc00901  srli r1, r19, 16
001a88  9b801000  andi r1, r1, 1
001a8c  8b901910  add.s r1, r19, r1
001a90  8b90d010  add.s r1, r1, r13
001a94  9780c001  and r1, r1, r28
001a98  67081ffc  storeli.w r1, -384(r30)
001a9c  e302cffc  loadli.w r5,  -416(r30)
001aa0  e301cffa  loadli.w r3,  -672(r30)
001aa4  63428ffa  loadli.w r4,  -700(r30)
001aa8  e300dffa  loadli.w r1,  -664(r30)
001aac  8b945110  add.s r9, r3, r5
001ab0  e341bffa  loadli.w r3,  -676(r30)
001ab4  0b1b5210  add.s r22, r4, r5
001ab8  63028ffa  loadli.w r4,  -704(r30)
001abc  0b915010  add.s r2, r1, r5
001ac0  e340cffa  loadli.w r1,  -668(r30)
001ac4  0b985110  add.s r16, r3, r5
001ac8  e301bffa  loadli.w r3,  -680(r30)
001acc  8b1a5210  add.s r21, r4, r5
001ad0  63427ffa  loadli.w r4,  -708(r30)
001ad4  8b905010  add.s r1, r1, r5
001ad8  8b975110  add.s r15, r3, r5
001adc  e341affa  loadli.w r3,  -684(r30)
001ae0  0b145210  add.s r8, r4, r5
001ae4  63027ffa  loadli.w r4,  -712(r30)
001ae8  0b975110  add.s r14, r3, r5
001aec  e301affa  loadli.w r3,  -688(r30)
001af0  0b155210  add.s r10, r4, r5
001af4  63023ffa  loadli.w r4,  -744(r30)
001af8  0b9a5110  add.s r20, r3, r5
001afc  e3419ffa  loadli.w r3,  -692(r30)
001b00  0b125210  add.s r4, r4, r5
001b04  e7044ffc  storeli.w r4, -440(r30)
001b08  63422ffa  loadli.w r4,  -748(r30)
001b0c  8b935110  add.s r7, r3, r5
001b10  e3019ffa  loadli.w r3,  -696(r30)
001b14  0b125210  add.s r4, r4, r5
001b18  0b935110  add.s r6, r3, r5
001b1c  e3417ffd  loadli.w r3,  -324(r30)
001b20  67064ffc  storeli.w r4, -416(r30)
001b24  93817105  setlt.u r3, r3, r23
001b28  3bf00100  bneq r3, zero, 28
001b2c  9bc10d01  srli r3, r27, 16
001b30  9b811100  andi r3, r3, 1
001b34  8b913d10  add.s r3, r27, r3
001b38  8b91d110  add.s r3, r3, r13
001b3c  9781c101  and r3, r3, r28
001b40  e7473ffc  storeli.w r3, -388(r30)
001b44  33110128  sext_int2long r[3:4], r2
001b48  9f120000  addli r5, zero, 1
001b4c  b3950028  sext_int2long r[12:13], r1
001b50  97305102  sll.d r[2:3], r[3:4], r5
001b54  97b15502  sll.d r[4:5], r[12:13], r5
001b58  733c1fe2  store.d r[2:3], -456(r30)
001b5c  b3900428  sext_int2long r[2:3], r9
001b60  73303fe2  store.d r[4:5], -480(r30)
001b64  b3910728  sext_int2long r[4:5], r15
001b68  97b05002  sll.d r[2:3], r[2:3], r5
001b6c  17b95102  sll.d r[19:20], r[4:5], r5
001b70  b3110a28  sext_int2long r[4:5], r20
001b74  733c1fe0  store.d r[2:3], -488(r30)
001b78  b3100828  sext_int2long r[2:3], r16
001b7c  17bd5102  sll.d r[27:28], r[4:5], r5
001b80  b3110328  sext_int2long r[4:5], r6
001b84  97b05002  sll.d r[2:3], r[2:3], r5
001b88  73381fe0  store.d r[2:3], -496(r30)
001b8c  b3100728  sext_int2long r[2:3], r14
001b90  17bc5002  sll.d r[25:26], r[2:3], r5
001b94  b3900328  sext_int2long r[2:3], r7
001b98  17b35102  sll.d r[7:8], r[4:5], r5
001b9c  b3910a28  sext_int2long r[4:5], r21
001ba0  17b75002  sll.d r[15:16], r[2:3], r5
001ba4  b3100b28  sext_int2long r[2:3], r22
001ba8  17bb5102  sll.d r[23:24], r[4:5], r5
001bac  e3417ffd  loadli.w r3,  -324(r30)
001bb0  63028ffc  loadli.w r4,  -448(r30)
001bb4  17ba5002  sll.d r[21:22], r[2:3], r5
001bb8  b3100428  sext_int2long r[2:3], r8
001bbc  63049ffc  loadli.w r8,  -440(r30)
001bc0  138e4104  setlt.u r28, r3, r4
001bc4  b3110528  sext_int2long r[4:5], r10
001bc8  6305cffc  loadli.w r10,  -416(r30)
001bcc  97b05002  sll.d r[2:3], r[2:3], r5
001bd0  33140428  sext_int2long r[9:10], r8
001bd4  97b15102  sll.d r[4:5], r[4:5], r5
001bd8  33150528  sext_int2long r[11:12], r10
001bdc  17345402  sll.d r[9:10], r[9:10], r5
001be0  17355502  sll.d r[11:12], r[11:12], r5
001be4  bb100e00  bneq r28, zero, 36
001be8  63066ffc  loadli.w r12,  -464(r30)
001bec  634e6ffd  loadli.w r28,  -332(r30)
001bf0  9b420601  srli r5, r12, 16
001bf4  9b821200  andi r5, r5, 1
001bf8  8b125610  add.s r5, r12, r5
001bfc  2b06ffff  lui r12, 1048560
001c00  8b92c211  add.s r5, r5, r28
001c04  9788c200  and r17, r5, r12
001c08  6b560f02  load.d r[13:14], 32(r30)
001c0c  1f8e0800  addli r28, r17, 0
001c10  6b588fe6  load.d r[17:18], -408(r30)
001c14  0b280611  add.ul r[17:18], r[13:14], r[17:18]
001c18  8b226610  add.ul r[6:7], r[13:14], r[7:8]
001c1c  e3437ffd  loadli.w r7,  -324(r30)
001c20  8b201610  add.ul r[2:3], r[13:14], r[2:3]
001c24  0b2c8611  add.ul r[25:26], r[13:14], r[25:26]
001c28  0b2da611  add.ul r[27:28], r[13:14], r[27:28]
001c2c  0b27e610  add.ul r[15:16], r[13:14], r[15:16]
001c30  73380fe3  store.d r[17:18], -464(r30)
001c34  6b588fe3  load.d r[17:18], -456(r30)
001c38  73341fe6  store.d r[2:3], -408(r30)
001c3c  8b203610  add.ul r[2:3], r[13:14], r[4:5]
001c40  e341bffc  loadli.w r3,  -420(r30)
001c44  73301fe6  store.d r[2:3], -416(r30)
001c48  8b208610  add.ul r[2:3], r[13:14], r[9:10]
001c4c  0b280611  add.ul r[17:18], r[13:14], r[17:18]
001c50  73340fe3  store.d r[17:18], -472(r30)
001c54  6b580fe2  load.d r[17:18], -480(r30)
001c58  0b280611  add.ul r[17:18], r[13:14], r[17:18]
001c5c  73300fe5  store.d r[17:18], -448(r30)
001c60  6b588fe1  load.d r[17:18], -488(r30)
001c64  0b280611  add.ul r[17:18], r[13:14], r[17:18]
001c68  733c0fe3  store.d r[17:18], -456(r30)
001c6c  6b580fe1  load.d r[17:18], -496(r30)
001c70  0b280611  add.ul r[17:18], r[13:14], r[17:18]
001c74  73340fe5  store.d r[17:18], -440(r30)
001c78  6308affc  loadli.w r16,  -432(r30)
001c7c  8b282611  add.ul r[18:19], r[13:14], r[19:20]
001c80  8b294611  add.ul r[20:21], r[13:14], r[21:22]
001c84  8b2a6611  add.ul r[22:23], r[13:14], r[23:24]
001c88  8b25a610  add.ul r[12:13], r[13:14], r[11:12]
001c8c  73381fe4  store.d r[2:3], -432(r30)
001c90  93830305  setlt.u r7, r7, r16
001c94  3b9803f2  bneq r7, zero, -6652
001c98  63010ffc  loadli.w r2,  -512(r30)
001c9c  9b400101  srli r1, r2, 16
001ca0  9b801000  andi r1, r1, 1
001ca4  8b101110  add.s r1, r2, r1
001ca8  63416ffd  loadli.w r2,  -332(r30)
001cac  8b902010  add.s r1, r1, r2
001cb0  2b01ffff  lui r2, 1048560
001cb4  97812000  and r3, r1, r2
001cb8  5bbcfcff  j -6688
001cbc  9bc00201  srli r1, r5, 16
001cc0  9b801000  andi r1, r1, 1
001cc4  8b901210  add.s r1, r5, r1
001cc8  8b90d010  add.s r1, r1, r13
001ccc  9780c001  and r1, r1, r28
001cd0  67491ffc  storeli.w r1, -364(r30)
001cd4  93808705  setlt.u r1, r15, r24
001cd8  bbc500fe  bneq r1, zero, -656
001cdc  9b400801  srli r1, r16, 16
001ce0  9b801000  andi r1, r1, 1
001ce4  8b101810  add.s r1, r16, r1
001ce8  8b90d010  add.s r1, r1, r13
001cec  9780c001  and r1, r1, r28
001cf0  67091ffc  storeli.w r1, -368(r30)
001cf4  93806704  setlt.u r1, r15, r6
001cf8  3be500fe  bneq r1, zero, -680
001cfc  9bc00401  srli r1, r9, 16
001d00  9b801000  andi r1, r1, 1
001d04  8b901410  add.s r1, r9, r1
001d08  8b90d010  add.s r1, r1, r13
001d0c  9780c001  and r1, r1, r28
001d10  e7481ffc  storeli.w r1, -372(r30)
001d14  93804705  setlt.u r1, r15, r20
001d18  3b8500fe  bneq r1, zero, -704
001d1c  9b400501  srli r1, r10, 16
001d20  9b801000  andi r1, r1, 1
001d24  8b101510  add.s r1, r10, r1
001d28  8b90d010  add.s r1, r1, r13
001d2c  9780c001  and r1, r1, r28
001d30  e7081ffc  storeli.w r1, -376(r30)
001d34  93807704  setlt.u r1, r15, r7
001d38  b7a400fe  beq r1, zero, -728
001d3c  dba7ffff  j -708
001d40  9f0e0ffa  addli sp, r30, -768
001d44  9f8e0e06  addli sp, sp, 768
001d48  00a00300  mfence { lm, sm, gm }
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
