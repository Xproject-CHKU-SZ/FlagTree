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
000078  9f496000  addli r19, zero, 52
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
0000dc  9f8e8ef8  addli sp, sp, -960
0000e0  ab000000  lui r1, 0
0000e4  00320002  core_id r4
0000e8  1f8f0e07  addli r30, sp, 896
0000ec  2b410000  lui r2, 4
0000f0  2bf30000  lui r6, 15
0000f4  9b312200  slli r3, r4, 2
0000f8  9f800000  addli r1, r1, 0
0000fc  63445f00  loadli.w r8,  44(r30)
000100  e3025f00  loadli.w r5,  40(r30)
000104  1b110101  ori r2, r2, 16
000108  e3036f00  loadli.w r7,  48(r30)
00010c  1b13f3ff  ori r6, r6, 4095
000110  8b941110  add.s r9, r3, r1
000114  8b125420  mul.s r5, r8, r5
000118  00540002  load_param_i r8, 0
00011c  0b952410  add.s r10, r9, r2
000120  8b927220  mul.s r5, r5, r7
000124  e74baff8  storeli.w r10, -836(r30)
000128  73600500  stores.w zero, 0(r10)
00012c  00a00300  mfence { lm, sm, gm }
000130  80210304  csr_set csr3, r6
000134  00d00100  sync_group
000138  670c9ff8  storeli.w r9, -832(r30)
00013c  73e00400  stores.w zero, 0(r9)
000140  00a00300  mfence { lm, sm, gm }
000144  e70b6ff8  storeli.w r6, -840(r30)
000148  80210304  csr_set csr3, r6
00014c  00d00100  sync_group
000150  674b5ff8  storeli.w r5, -844(r30)
000154  cbbd8206  ble.s r5, r8, 3948
000158  9f420000  addli r5, zero, 4
00015c  00d30002  load_param_i r6, 1
000160  abf3ffff  lui r7, 1048575
000164  1f1a0000  addli r20, zero, 1
000168  eb548f00  load.d r[10:11], 8(r30)
00016c  eb550f00  load.d r[12:13], 0(r30)
000170  9f0a0ffd  addli r21, r30, -384
000174  1f0b0001  addli r22, zero, 128
000178  9f060ffe  addli r13, r30, -256
00017c  eea5b562  vxor.u.mz vr11{mr1}, vr11, vr11
000180  4618bfa2  vstore_mask16.mz vr11{mr1}, 1408(r30)
000184  8b125230  div.s r5, r4, r5
000188  670b6ff8  storeli.w r6, -848(r30)
00018c  1b033200  andi r6, r4, 3
000190  e74a6ff8  storeli.w r6, -852(r30)
000194  1bb32200  slli r6, r5, 2
000198  0b126218  sub.s r4, r4, r6
00019c  1b9303ff  ori r6, r7, 4080
0001a0  97816100  and r3, r3, r6
0001a4  1b326200  slli r4, r4, 6
0001a8  8b901110  add.s r1, r3, r1
0001ac  9bb1a200  slli r3, r5, 10
0001b0  33130228  sext_int2long r[7:8], r4
0001b4  e70c1ff8  storeli.w r1, -824(r30)
0001b8  8b902010  add.s r1, r1, r2
0001bc  17334303  sll.d r[7:8], r[7:8], r20
0001c0  e70a3ff8  storeli.w r3, -856(r30)
0001c4  674c1ff8  storeli.w r1, -828(r30)
0001c8  8b904110  add.s r1, r3, r4
0001cc  8ba46410  add.ul r[10:11], r[10:11], r[7:8]
0001d0  674a1ff8  storeli.w r1, -860(r30)
0001d4  ab10833a  lui r1, 239665
0001d8  733c9fde  store.d r[10:11], -520(r30)
0001dc  9b90f026  ori r1, r1, 623
0001e0  670a1ff8  storeli.w r1, -864(r30)
0001e4  63016f00  loadli.w r2,  48(r30)
0001e8  e3415f00  loadli.w r3,  44(r30)
0001ec  2b0200f0  lui r4, 983040
0001f0  9f230000  addli r7, zero, 2
0001f4  e74c8ff8  storeli.w r8, -820(r30)
0001f8  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
0001fc  9230b002  vadd.s.mz vr1{mr1}, zero, vr11
000200  1231b002  vadd.s.mz vr2{mr1}, zero, vr11
000204  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
000208  1232b002  vadd.s.mz vr4{mr1}, zero, vr11
00020c  9232b002  vadd.s.mz vr5{mr1}, zero, vr11
000210  1233b002  vadd.s.mz vr6{mr1}, zero, vr11
000214  9233b002  vadd.s.mz vr7{mr1}, zero, vr11
000218  9f000000  addli r1, zero, 0
00021c  17924300  or r4, r7, r4
000220  0b112430  div.s r2, r8, r2
000224  0b113130  div.s r2, r2, r3
000228  e3015ff9  loadli.w r3,  -856(r30)
00022c  1b31e100  slli r2, r2, 14
000230  8b113110  add.s r3, r2, r3
000234  b3920128  sext_int2long r[6:7], r3
000238  ab0100f0  lui r3, 983040
00023c  97b24203  sll.d r[6:7], r[6:7], r20
000240  97913300  or r3, r7, r3
000244  9f030ffc  addli r7, r30, -512
000248  8ba25510  add.ul r[6:7], r[12:13], r[6:7]
00024c  7fa27200  l_gm2lm r4, r7, 0(r[6:7])
000250  6b528f00  load.d r[5:6], 8(r30)
000254  1f038ffc  addli r6, r30, -448
000258  ff216200  l_gm2lm r3, r6, 0(r[5:6])
00025c  00a00000  mfence { lm }
000260  eb310fe4  load.hu r3, -448(r30)
000264  6b320fe0  load.hu r4, -512(r30)
000268  00a00000  mfence { lm }
00026c  00a00000  mfence { lm }
000270  8bd14110  add.hf.rn r3, r3, r4
000274  b3910120  hfloat2float.rn r3, r3
000278  0be20158  neg.f r4, r3
00027c  e3414ff9  loadli.w r3,  -860(r30)
000280  e7474ffa  storeli.w r4, -644(r30)
000284  8b9b2110  add.s r23, r3, r2
000288  e7077ffb  storeli.w r23, -648(r30)
00028c  0b911b10  add.s r2, r23, r1
000290  ab0100f0  lui r3, 983040
000294  33830028  zext_int2long r[7:8], r1
000298  1235b002  vadd.s.mz vr10{mr1}, zero, vr11
00029c  33120128  sext_int2long r[5:6], r2
0002a0  17113b00  or r2, r22, r3
0002a4  17324203  sll.d r[5:6], r[5:6], r20
0002a8  8ba14510  add.ul r[4:5], r[12:13], r[5:6]
0002ac  97324303  sll.d r[6:7], r[7:8], r20
0002b0  ab0300f0  lui r7, 983040
0002b4  8ba25410  add.ul r[6:7], r[10:11], r[6:7]
0002b8  97137b00  or r7, r22, r7
0002bc  7fa15101  l_gm2lm r2, r21, 0(r[4:5])
0002c0  ffa3d200  l_gm2lm r7, r13, 0(r[6:7])
0002c4  00a00000  mfence { lm }
0002c8  c2140fc3  vload_mask16.mz vr9{mr1}, 1664(r30)
0002cc  42148fc3  vload_mask16.mz vr8{mr1}, 1728(r30)
0002d0  00a00000  mfence { lm }
0002d4  eb3daff5  load.hu r27, -166(r30)
0002d8  6b310ff1  load.hu r2, -240(r30)
0002dc  6b370ff0  load.hu r14, -256(r30)
0002e0  6b382ff0  load.hu r16, -254(r30)
0002e4  6b394ff0  load.hu r18, -252(r30)
0002e8  6b3a6ff0  load.hu r20, -250(r30)
0002ec  6b3b8ff0  load.hu r22, -248(r30)
0002f0  6b3caff0  load.hu r24, -246(r30)
0002f4  6b3dcff0  load.hu r26, -244(r30)
0002f8  6b3eeff0  load.hu r28, -242(r30)
0002fc  eb318ff3  load.hu r3, -200(r30)
000300  6b32aff3  load.hu r4, -198(r30)
000304  eb32cff3  load.hu r5, -196(r30)
000308  6b33eff3  load.hu r6, -194(r30)
00030c  eb330ff4  load.hu r7, -192(r30)
000310  6b342ff4  load.hu r8, -190(r30)
000314  eb344ff4  load.hu r9, -188(r30)
000318  6b356ff4  load.hu r10, -186(r30)
00031c  eb358ff4  load.hu r11, -184(r30)
000320  6b36aff4  load.hu r12, -182(r30)
000324  eb36cff4  load.hu r13, -180(r30)
000328  eb37eff4  load.hu r15, -178(r30)
00032c  eb380ff5  load.hu r17, -176(r30)
000330  eb392ff5  load.hu r19, -174(r30)
000334  eb3a4ff5  load.hu r21, -172(r30)
000338  eb3b6ff5  load.hu r23, -170(r30)
00033c  eb3c8ff5  load.hu r25, -168(r30)
000340  e74dbff9  storeli.w r27, -804(r30)
000344  eb3dcff5  load.hu r27, -164(r30)
000348  674e2ff8  storeli.w r2, -796(r30)
00034c  6b312ff1  load.hu r2, -238(r30)
000350  670ebff9  storeli.w r27, -800(r30)
000354  eb3deff5  load.hu r27, -162(r30)
000358  e74e2ff8  storeli.w r2, -788(r30)
00035c  6b314ff1  load.hu r2, -236(r30)
000360  e70ebff9  storeli.w r27, -792(r30)
000364  eb3d0ff6  load.hu r27, -160(r30)
000368  674f2ff8  storeli.w r2, -780(r30)
00036c  6b316ff1  load.hu r2, -234(r30)
000370  670fbff9  storeli.w r27, -784(r30)
000374  eb3d2ff6  load.hu r27, -158(r30)
000378  e74f2ff8  storeli.w r2, -772(r30)
00037c  6b318ff1  load.hu r2, -232(r30)
000380  e70fbff9  storeli.w r27, -776(r30)
000384  eb3d4ff6  load.hu r27, -156(r30)
000388  67402ffa  storeli.w r2, -764(r30)
00038c  6b31aff1  load.hu r2, -230(r30)
000390  6700bffb  storeli.w r27, -768(r30)
000394  eb3d6ff6  load.hu r27, -154(r30)
000398  e7402ffa  storeli.w r2, -756(r30)
00039c  6b31cff1  load.hu r2, -228(r30)
0003a0  e700bffb  storeli.w r27, -760(r30)
0003a4  eb3d8ff6  load.hu r27, -152(r30)
0003a8  67412ffa  storeli.w r2, -748(r30)
0003ac  6b31eff1  load.hu r2, -226(r30)
0003b0  6701bffb  storeli.w r27, -752(r30)
0003b4  eb3daff6  load.hu r27, -150(r30)
0003b8  e7412ffa  storeli.w r2, -740(r30)
0003bc  6b310ff2  load.hu r2, -224(r30)
0003c0  e701bffb  storeli.w r27, -744(r30)
0003c4  eb3dcff6  load.hu r27, -148(r30)
0003c8  67422ffa  storeli.w r2, -732(r30)
0003cc  6b312ff2  load.hu r2, -222(r30)
0003d0  6702bffb  storeli.w r27, -736(r30)
0003d4  eb3deff6  load.hu r27, -146(r30)
0003d8  e7422ffa  storeli.w r2, -724(r30)
0003dc  6b314ff2  load.hu r2, -220(r30)
0003e0  e702bffb  storeli.w r27, -728(r30)
0003e4  eb3d0ff7  load.hu r27, -144(r30)
0003e8  67432ffa  storeli.w r2, -716(r30)
0003ec  6b316ff2  load.hu r2, -218(r30)
0003f0  6703bffb  storeli.w r27, -720(r30)
0003f4  eb3d2ff7  load.hu r27, -142(r30)
0003f8  e7432ffa  storeli.w r2, -708(r30)
0003fc  6b318ff2  load.hu r2, -216(r30)
000400  e703bffb  storeli.w r27, -712(r30)
000404  eb3d4ff7  load.hu r27, -140(r30)
000408  67442ffa  storeli.w r2, -700(r30)
00040c  6b31aff2  load.hu r2, -214(r30)
000410  6704bffb  storeli.w r27, -704(r30)
000414  eb3d6ff7  load.hu r27, -138(r30)
000418  e7442ffa  storeli.w r2, -692(r30)
00041c  6b31cff2  load.hu r2, -212(r30)
000420  e704bffb  storeli.w r27, -696(r30)
000424  eb3d8ff7  load.hu r27, -136(r30)
000428  67452ffa  storeli.w r2, -684(r30)
00042c  6b31eff2  load.hu r2, -210(r30)
000430  6705bffb  storeli.w r27, -688(r30)
000434  eb3daff7  load.hu r27, -134(r30)
000438  e7452ffa  storeli.w r2, -676(r30)
00043c  6b310ff3  load.hu r2, -208(r30)
000440  e705bffb  storeli.w r27, -680(r30)
000444  eb3dcff7  load.hu r27, -132(r30)
000448  67062ffa  storeli.w r2, -672(r30)
00044c  6b312ff3  load.hu r2, -206(r30)
000450  e746bffb  storeli.w r27, -660(r30)
000454  eb3deff7  load.hu r27, -130(r30)
000458  67462ffa  storeli.w r2, -668(r30)
00045c  6b314ff3  load.hu r2, -204(r30)
000460  6707bffb  storeli.w r27, -656(r30)
000464  9f1d0000  addli r27, zero, 1
000468  e7062ffa  storeli.w r2, -664(r30)
00046c  6b316ff3  load.hu r2, -202(r30)
000470  7e810de0  vmmov mr2, r27
000474  6a45a734  vor.hf.mh vr10{mr2}, r14, vr10
000478  1f270000  addli r14, zero, 2
00047c  fe0107e0  vmmov mr3, r14
000480  1f470000  addli r14, zero, 4
000484  6a45a836  vor.hf.mh vr10{mr3}, r16, vr10
000488  7e0007e0  vmmov mr0, r14
00048c  1f071000  addli r14, zero, 8
000490  6a45a930  vor.hf.mh vr10{mr0}, r18, vr10
000494  7e8001c0  vmmov mr0, mr3
000498  fe0101c0  vmmov mr3, mr2
00049c  7e0107e0  vmmov mr2, r14
0004a0  1f072000  addli r14, zero, 16
0004a4  6a45aa34  vor.hf.mh vr10{mr2}, r20, vr10
0004a8  7e0107e0  vmmov mr2, r14
0004ac  1f074000  addli r14, zero, 32
0004b0  1f1a0000  addli r20, zero, 1
0004b4  6a45ab34  vor.hf.mh vr10{mr2}, r22, vr10
0004b8  7e0107e0  vmmov mr2, r14
0004bc  1f078000  addli r14, zero, 64
0004c0  1f0b0001  addli r22, zero, 128
0004c4  6a45ac34  vor.hf.mh vr10{mr2}, r24, vr10
0004c8  7e0107e0  vmmov mr2, r14
0004cc  1f070001  addli r14, zero, 128
0004d0  6a45ad34  vor.hf.mh vr10{mr2}, r26, vr10
0004d4  7e0107e0  vmmov mr2, r14
0004d8  1f070002  addli r14, zero, 256
0004dc  6a45ae34  vor.hf.mh vr10{mr2}, r28, vr10
0004e0  7e0107e0  vmmov mr2, r14
0004e4  6347cff9  loadli.w r14,  -796(r30)
0004e8  6a45a734  vor.hf.mh vr10{mr2}, r14, vr10
0004ec  1f070004  addli r14, zero, 512
0004f0  7e0107e0  vmmov mr2, r14
0004f4  6347dff9  loadli.w r14,  -788(r30)
0004f8  6a45a734  vor.hf.mh vr10{mr2}, r14, vr10
0004fc  1f070008  addli r14, zero, 1024
000500  7e0107e0  vmmov mr2, r14
000504  6347eff9  loadli.w r14,  -780(r30)
000508  6a45a734  vor.hf.mh vr10{mr2}, r14, vr10
00050c  1f070010  addli r14, zero, 2048
000510  7e0107e0  vmmov mr2, r14
000514  6347fff9  loadli.w r14,  -772(r30)
000518  6a45a734  vor.hf.mh vr10{mr2}, r14, vr10
00051c  1f070020  addli r14, zero, 4096
000520  7e0107e0  vmmov mr2, r14
000524  63470ffa  loadli.w r14,  -764(r30)
000528  6a45a734  vor.hf.mh vr10{mr2}, r14, vr10
00052c  1f070040  addli r14, zero, 8192
000530  7e0107e0  vmmov mr2, r14
000534  63471ffa  loadli.w r14,  -756(r30)
000538  6a45a734  vor.hf.mh vr10{mr2}, r14, vr10
00053c  2b470000  lui r14, 4
000540  7e0107e0  vmmov mr2, r14
000544  63472ffa  loadli.w r14,  -748(r30)
000548  6a45a734  vor.hf.mh vr10{mr2}, r14, vr10
00054c  2b870000  lui r14, 8
000550  7e0107e0  vmmov mr2, r14
000554  63473ffa  loadli.w r14,  -740(r30)
000558  6a45a734  vor.hf.mh vr10{mr2}, r14, vr10
00055c  2b070100  lui r14, 16
000560  7e0107e0  vmmov mr2, r14
000564  63474ffa  loadli.w r14,  -732(r30)
000568  6a45a734  vor.hf.mh vr10{mr2}, r14, vr10
00056c  2b070200  lui r14, 32
000570  7e0107e0  vmmov mr2, r14
000574  63475ffa  loadli.w r14,  -724(r30)
000578  6a45a734  vor.hf.mh vr10{mr2}, r14, vr10
00057c  2b070400  lui r14, 64
000580  7e0107e0  vmmov mr2, r14
000584  63476ffa  loadli.w r14,  -716(r30)
000588  6a45a734  vor.hf.mh vr10{mr2}, r14, vr10
00058c  2b070800  lui r14, 128
000590  7e0107e0  vmmov mr2, r14
000594  63477ffa  loadli.w r14,  -708(r30)
000598  6a45a734  vor.hf.mh vr10{mr2}, r14, vr10
00059c  2b071000  lui r14, 256
0005a0  7e0107e0  vmmov mr2, r14
0005a4  63478ffa  loadli.w r14,  -700(r30)
0005a8  6a45a734  vor.hf.mh vr10{mr2}, r14, vr10
0005ac  2b072000  lui r14, 512
0005b0  7e0107e0  vmmov mr2, r14
0005b4  63479ffa  loadli.w r14,  -692(r30)
0005b8  6a45a734  vor.hf.mh vr10{mr2}, r14, vr10
0005bc  2b074000  lui r14, 1024
0005c0  7e0107e0  vmmov mr2, r14
0005c4  6347affa  loadli.w r14,  -684(r30)
0005c8  6a45a734  vor.hf.mh vr10{mr2}, r14, vr10
0005cc  2b078000  lui r14, 2048
0005d0  7e0107e0  vmmov mr2, r14
0005d4  6347bffa  loadli.w r14,  -676(r30)
0005d8  6a45a734  vor.hf.mh vr10{mr2}, r14, vr10
0005dc  2b070001  lui r14, 4096
0005e0  7e0107e0  vmmov mr2, r14
0005e4  6307cffa  loadli.w r14,  -672(r30)
0005e8  6a45a734  vor.hf.mh vr10{mr2}, r14, vr10
0005ec  2b070002  lui r14, 8192
0005f0  7e0107e0  vmmov mr2, r14
0005f4  6347cffa  loadli.w r14,  -668(r30)
0005f8  6a45a734  vor.hf.mh vr10{mr2}, r14, vr10
0005fc  2b070004  lui r14, 16384
000600  7e0107e0  vmmov mr2, r14
000604  6307dffa  loadli.w r14,  -664(r30)
000608  6a45a734  vor.hf.mh vr10{mr2}, r14, vr10
00060c  2b070008  lui r14, 32768
000610  7e0107e0  vmmov mr2, r14
000614  6a45a134  vor.hf.mh vr10{mr2}, r2, vr10
000618  2b010010  lui r2, 65536
00061c  7e0101e0  vmmov mr2, r2
000620  2b010020  lui r2, 131072
000624  6ac5a134  vor.hf.mh vr10{mr2}, r3, vr10
000628  7e0101e0  vmmov mr2, r2
00062c  2b010040  lui r2, 262144
000630  9f010020  addli r3, zero, 4096
000634  6a45a234  vor.hf.mh vr10{mr2}, r4, vr10
000638  7e0101e0  vmmov mr2, r2
00063c  2b010080  lui r2, 524288
000640  6ac5a234  vor.hf.mh vr10{mr2}, r5, vr10
000644  7e0101e0  vmmov mr2, r2
000648  1f410000  addli r2, zero, 4
00064c  9f020040  addli r5, zero, 8192
000650  6a45a334  vor.hf.mh vr10{mr2}, r6, vr10
000654  c2150fa3  vload_mask16.mz vr11{mr1}, 1408(r30)
000658  96c4a402  vadd.hf.mz.rn vr9{mr1}, vr9, vr10
00065c  06b50400  vfp162float_l.rn vr10, vr9
000660  eac5b336  vor.hf.mh vr11{mr3}, r7, vr11
000664  ea45b430  vor.hf.mh vr11{mr0}, r8, vr11
000668  7e0001e0  vmmov mr0, r2
00066c  1f011000  addli r2, zero, 8
000670  eac5b430  vor.hf.mh vr11{mr0}, r9, vr11
000674  7e0001e0  vmmov mr0, r2
000678  1f012000  addli r2, zero, 16
00067c  ea45b530  vor.hf.mh vr11{mr0}, r10, vr11
000680  7e0001e0  vmmov mr0, r2
000684  eb548fdf  load.d r[10:11], -520(r30)
000688  1f014000  addli r2, zero, 32
00068c  eac5b530  vor.hf.mh vr11{mr0}, r11, vr11
000690  7e0001e0  vmmov mr0, r2
000694  1f018000  addli r2, zero, 64
000698  ea45b630  vor.hf.mh vr11{mr0}, r12, vr11
00069c  7e0001e0  vmmov mr0, r2
0006a0  1f010001  addli r2, zero, 128
0006a4  eb550f00  load.d r[12:13], 0(r30)
0006a8  eac5b630  vor.hf.mh vr11{mr0}, r13, vr11
0006ac  7e0001e0  vmmov mr0, r2
0006b0  1f010002  addli r2, zero, 256
0006b4  9f060ffe  addli r13, r30, -256
0006b8  eac5b730  vor.hf.mh vr11{mr0}, r15, vr11
0006bc  7e0001e0  vmmov mr0, r2
0006c0  1f010004  addli r2, zero, 512
0006c4  eac5b830  vor.hf.mh vr11{mr0}, r17, vr11
0006c8  7e0001e0  vmmov mr0, r2
0006cc  1f010008  addli r2, zero, 1024
0006d0  eac5b930  vor.hf.mh vr11{mr0}, r19, vr11
0006d4  7e0001e0  vmmov mr0, r2
0006d8  1f010010  addli r2, zero, 2048
0006dc  eac5ba30  vor.hf.mh vr11{mr0}, r21, vr11
0006e0  7e0001e0  vmmov mr0, r2
0006e4  1f010006  addli r2, zero, 768
0006e8  9f0a0ffd  addli r21, r30, -384
0006ec  13812004  setlt.u r2, r1, r2
0006f0  9f800002  addli r1, r1, 256
0006f4  eac5bb30  vor.hf.mh vr11{mr0}, r23, vr11
0006f8  7e8001e0  vmmov mr0, r3
0006fc  6342fffa  loadli.w r4,  -644(r30)
000700  e30bfffa  loadli.w r23,  -648(r30)
000704  1215a202  vadd.f.mz.rn vr10{mr1}, r4, vr10
000708  1612a202  vadd.f.mz.rn vr4{mr1}, vr4, vr10
00070c  2610a502  vmac.f.mz.rn vr0{mr1}, vr10, vr10
000710  06f50400  vfp162float_h.rn vr10, vr9
000714  9214a202  vadd.f.mz.rn vr9{mr1}, r4, vr10
000718  96929202  vadd.f.mz.rn vr5{mr1}, vr5, vr9
00071c  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
000720  eac5bc30  vor.hf.mh vr11{mr0}, r25, vr11
000724  e341bff9  loadli.w r3,  -804(r30)
000728  7e8002e0  vmmov mr0, r5
00072c  ab420000  lui r5, 4
000730  eac5b130  vor.hf.mh vr11{mr0}, r3, vr11
000734  e301cff9  loadli.w r3,  -800(r30)
000738  7e8002e0  vmmov mr0, r5
00073c  ab820000  lui r5, 8
000740  eac5b130  vor.hf.mh vr11{mr0}, r3, vr11
000744  e301dff9  loadli.w r3,  -792(r30)
000748  7e8002e0  vmmov mr0, r5
00074c  ab020100  lui r5, 16
000750  eac5b130  vor.hf.mh vr11{mr0}, r3, vr11
000754  e301eff9  loadli.w r3,  -784(r30)
000758  7e8002e0  vmmov mr0, r5
00075c  ab020200  lui r5, 32
000760  eac5b130  vor.hf.mh vr11{mr0}, r3, vr11
000764  e301fff9  loadli.w r3,  -776(r30)
000768  7e8002e0  vmmov mr0, r5
00076c  ab020400  lui r5, 64
000770  eac5b130  vor.hf.mh vr11{mr0}, r3, vr11
000774  e3010ffa  loadli.w r3,  -768(r30)
000778  7e8002e0  vmmov mr0, r5
00077c  ab020800  lui r5, 128
000780  eac5b130  vor.hf.mh vr11{mr0}, r3, vr11
000784  e3011ffa  loadli.w r3,  -760(r30)
000788  7e8002e0  vmmov mr0, r5
00078c  ab021000  lui r5, 256
000790  eac5b130  vor.hf.mh vr11{mr0}, r3, vr11
000794  e3012ffa  loadli.w r3,  -752(r30)
000798  7e8002e0  vmmov mr0, r5
00079c  ab022000  lui r5, 512
0007a0  eac5b130  vor.hf.mh vr11{mr0}, r3, vr11
0007a4  e3013ffa  loadli.w r3,  -744(r30)
0007a8  7e8002e0  vmmov mr0, r5
0007ac  ab024000  lui r5, 1024
0007b0  eac5b130  vor.hf.mh vr11{mr0}, r3, vr11
0007b4  e3014ffa  loadli.w r3,  -736(r30)
0007b8  7e8002e0  vmmov mr0, r5
0007bc  ab028000  lui r5, 2048
0007c0  eac5b130  vor.hf.mh vr11{mr0}, r3, vr11
0007c4  e3015ffa  loadli.w r3,  -728(r30)
0007c8  7e8002e0  vmmov mr0, r5
0007cc  ab020001  lui r5, 4096
0007d0  eac5b130  vor.hf.mh vr11{mr0}, r3, vr11
0007d4  e3016ffa  loadli.w r3,  -720(r30)
0007d8  7e8002e0  vmmov mr0, r5
0007dc  ab020002  lui r5, 8192
0007e0  eac5b130  vor.hf.mh vr11{mr0}, r3, vr11
0007e4  e3017ffa  loadli.w r3,  -712(r30)
0007e8  7e8002e0  vmmov mr0, r5
0007ec  ab020004  lui r5, 16384
0007f0  eac5b130  vor.hf.mh vr11{mr0}, r3, vr11
0007f4  e3018ffa  loadli.w r3,  -704(r30)
0007f8  7e8002e0  vmmov mr0, r5
0007fc  ab020008  lui r5, 32768
000800  eac5b130  vor.hf.mh vr11{mr0}, r3, vr11
000804  e3019ffa  loadli.w r3,  -696(r30)
000808  7e8002e0  vmmov mr0, r5
00080c  ab020010  lui r5, 65536
000810  eac5b130  vor.hf.mh vr11{mr0}, r3, vr11
000814  e301affa  loadli.w r3,  -688(r30)
000818  7e8002e0  vmmov mr0, r5
00081c  ab020020  lui r5, 131072
000820  eac5b130  vor.hf.mh vr11{mr0}, r3, vr11
000824  e301bffa  loadli.w r3,  -680(r30)
000828  7e8002e0  vmmov mr0, r5
00082c  ab020040  lui r5, 262144
000830  eac5b130  vor.hf.mh vr11{mr0}, r3, vr11
000834  e341dffa  loadli.w r3,  -660(r30)
000838  7e8002e0  vmmov mr0, r5
00083c  eac5b130  vor.hf.mh vr11{mr0}, r3, vr11
000840  e301effa  loadli.w r3,  -656(r30)
000844  eac5b134  vor.hf.mh vr11{mr2}, r3, vr11
000848  1644b402  vadd.hf.mz.rn vr8{mr1}, vr8, vr11
00084c  86340400  vfp162float_l.rn vr9, vr8
000850  c2150fa3  vload_mask16.mz vr11{mr1}, 1408(r30)
000854  92149202  vadd.f.mz.rn vr9{mr1}, r4, vr9
000858  16139302  vadd.f.mz.rn vr6{mr1}, vr6, vr9
00085c  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
000860  86740400  vfp162float_h.rn vr9, vr8
000864  12149202  vadd.f.mz.rn vr8{mr1}, r4, vr9
000868  96938302  vadd.f.mz.rn vr7{mr1}, vr7, vr8
00086c  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
000870  00a00000  mfence { lm }
000874  00a00000  mfence { lm }
000878  3b5801fc  bneq r2, zero, -1516
00087c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000880  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
000884  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
000888  fa100240  vextracti.f r1, 0(vr4)
00088c  7a111240  vextracti.f r2, 1(vr4)
000890  8be02010  add.f.rn r1, r1, r2
000894  7a112240  vextracti.f r2, 2(vr4)
000898  8b601110  add.f.rn r1, r2, r1
00089c  7a113240  vextracti.f r2, 3(vr4)
0008a0  8b601110  add.f.rn r1, r2, r1
0008a4  7a114240  vextracti.f r2, 4(vr4)
0008a8  8b601110  add.f.rn r1, r2, r1
0008ac  7a115240  vextracti.f r2, 5(vr4)
0008b0  8b601110  add.f.rn r1, r2, r1
0008b4  7a116240  vextracti.f r2, 6(vr4)
0008b8  8b601110  add.f.rn r1, r2, r1
0008bc  7a117240  vextracti.f r2, 7(vr4)
0008c0  8b601110  add.f.rn r1, r2, r1
0008c4  7a118240  vextracti.f r2, 8(vr4)
0008c8  8b601110  add.f.rn r1, r2, r1
0008cc  7a119240  vextracti.f r2, 9(vr4)
0008d0  8b601110  add.f.rn r1, r2, r1
0008d4  7a11a240  vextracti.f r2, 10(vr4)
0008d8  8b601110  add.f.rn r1, r2, r1
0008dc  7a11b240  vextracti.f r2, 11(vr4)
0008e0  8b601110  add.f.rn r1, r2, r1
0008e4  7a11c240  vextracti.f r2, 12(vr4)
0008e8  8b601110  add.f.rn r1, r2, r1
0008ec  7a11d240  vextracti.f r2, 13(vr4)
0008f0  8b601110  add.f.rn r1, r2, r1
0008f4  7a11e240  vextracti.f r2, 14(vr4)
0008f8  8b601110  add.f.rn r1, r2, r1
0008fc  7a11f240  vextracti.f r2, 15(vr4)
000900  8b601110  add.f.rn r1, r2, r1
000904  63018ff9  loadli.w r2,  -832(r30)
000908  73601100  stores.w r1, 0(r2)
00090c  00a00300  mfence { lm, sm, gm }
000910  e3027ff9  loadli.w r5,  -840(r30)
000914  80a10204  csr_set csr3, r5
000918  00d00100  sync_group
00091c  63425ff9  loadli.w r4,  -852(r30)
000920  bb200200  bneq r4, zero, 40
000924  63039ff9  loadli.w r6,  -824(r30)
000928  ef400300  loads.w r1, 0(r6)
00092c  6f414300  loads.w r2, 4(r6)
000930  ef418300  loads.w r3, 8(r6)
000934  8be02010  add.f.rn r1, r1, r2
000938  6f41c300  loads.w r2, 12(r6)
00093c  8be03010  add.f.rn r1, r1, r3
000940  8be02010  add.f.rn r1, r1, r2
000944  73601300  stores.w r1, 0(r6)
000948  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
00094c  00a00300  mfence { lm, sm, gm }
000950  80a10204  csr_set csr3, r5
000954  00d00100  sync_group
000958  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00095c  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000960  fa100040  vextracti.f r1, 0(vr0)
000964  7a111040  vextracti.f r2, 1(vr0)
000968  fa11f040  vextracti.f r3, 15(vr0)
00096c  8be02010  add.f.rn r1, r1, r2
000970  7a112040  vextracti.f r2, 2(vr0)
000974  8b601110  add.f.rn r1, r2, r1
000978  7a113040  vextracti.f r2, 3(vr0)
00097c  8b601110  add.f.rn r1, r2, r1
000980  7a114040  vextracti.f r2, 4(vr0)
000984  8b601110  add.f.rn r1, r2, r1
000988  7a115040  vextracti.f r2, 5(vr0)
00098c  8b601110  add.f.rn r1, r2, r1
000990  7a116040  vextracti.f r2, 6(vr0)
000994  8b601110  add.f.rn r1, r2, r1
000998  7a117040  vextracti.f r2, 7(vr0)
00099c  8b601110  add.f.rn r1, r2, r1
0009a0  7a118040  vextracti.f r2, 8(vr0)
0009a4  8b601110  add.f.rn r1, r2, r1
0009a8  7a119040  vextracti.f r2, 9(vr0)
0009ac  8b601110  add.f.rn r1, r2, r1
0009b0  7a11a040  vextracti.f r2, 10(vr0)
0009b4  8b601110  add.f.rn r1, r2, r1
0009b8  7a11b040  vextracti.f r2, 11(vr0)
0009bc  8b601110  add.f.rn r1, r2, r1
0009c0  7a11c040  vextracti.f r2, 12(vr0)
0009c4  8b601110  add.f.rn r1, r2, r1
0009c8  7a11d040  vextracti.f r2, 13(vr0)
0009cc  8b601110  add.f.rn r1, r2, r1
0009d0  7a11e040  vextracti.f r2, 14(vr0)
0009d4  0b611110  add.f.rn r2, r2, r1
0009d8  e3009ff9  loadli.w r1,  -824(r30)
0009dc  efc00000  loads.w r1, 0(r1)
0009e0  0be12110  add.f.rn r2, r3, r2
0009e4  e3417ff9  loadli.w r3,  -836(r30)
0009e8  73e02100  stores.w r2, 0(r3)
0009ec  00a00300  mfence { lm, sm, gm }
0009f0  80a10204  csr_set csr3, r5
0009f4  00d00100  sync_group
0009f8  bb200200  bneq r4, zero, 40
0009fc  63438ff9  loadli.w r6,  -828(r30)
000a00  6f410300  loads.w r2, 0(r6)
000a04  ef414300  loads.w r3, 4(r6)
000a08  6f428300  loads.w r4, 8(r6)
000a0c  0b613110  add.f.rn r2, r2, r3
000a10  ef41c300  loads.w r3, 12(r6)
000a14  0b614110  add.f.rn r2, r2, r4
000a18  0b613110  add.f.rn r2, r2, r3
000a1c  73602300  stores.w r2, 0(r6)
000a20  00a00300  mfence { lm, sm, gm }
000a24  80a10204  csr_set csr3, r5
000a28  00d00100  sync_group
000a2c  63418ff9  loadli.w r2,  -828(r30)
000a30  ab01803a  lui r3, 239616
000a34  8be93020  mul.f.rn r19, r1, r3
000a38  6f410100  loads.w r2, 0(r2)
000a3c  8b603120  mul.f.rn r1, r2, r3
000a40  0be13921  mul.f.rn r2, r19, r19
000a44  9f010000  addli r3, zero, 0
000a48  0be12018  sub.f.rn r2, r1, r2
000a4c  571a0200  jal 4304
000a50  e3004ff9  loadli.w r1,  -864(r30)
000a54  9f010000  addli r3, zero, 0
000a58  1f040fff  addli r8, r30, -128
000a5c  8b601110  add.f.rn r1, r2, r1
000a60  2b01803f  lui r2, 260096
000a64  8f800008  sqrt.f.rn r1, r1
000a68  8f001118  div.f.rn r1, r2, r1
000a6c  674d1ff8  storeli.w r1, -812(r30)
000a70  8be00958  neg.f r1, r19
000a74  670d1ff8  storeli.w r1, -816(r30)
000a78  8b903b10  add.s r1, r23, r3
000a7c  33830128  zext_int2long r[7:8], r3
000a80  2b0100f0  lui r2, 983040
000a84  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
000a88  92312002  vadd.s.mz vr3{mr1}, zero, vr2
000a8c  33920028  sext_int2long r[5:6], r1
000a90  17334303  sll.d r[7:8], r[7:8], r20
000a94  97102b00  or r1, r22, r2
000a98  17112b00  or r2, r22, r2
000a9c  97344203  sll.d r[10:11], r[5:6], r20
000aa0  6b520f00  load.d r[5:6], 0(r30)
000aa4  73389fd6  store.d r[10:11], -656(r30)
000aa8  0b229210  add.ul r[5:6], r[5:6], r[10:11]
000aac  eb548fdf  load.d r[10:11], -520(r30)
000ab0  ff205201  l_gm2lm r1, r21, 0(r[5:6])
000ab4  0ba36410  add.ul r[7:8], r[10:11], r[7:8]
000ab8  7f218300  l_gm2lm r2, r8, 0(r[7:8])
000abc  00a00000  mfence { lm }
000ac0  c2100fc3  vload_mask16.mz vr1{mr1}, 1664(r30)
000ac4  42108fc3  vload_mask16.mz vr0{mr1}, 1728(r30)
000ac8  00a00000  mfence { lm }
000acc  eb30cff8  load.hu r1, -116(r30)
000ad0  6b3ecffd  load.hu r28, -36(r30)
000ad4  6b380ff8  load.hu r16, -128(r30)
000ad8  6b392ff8  load.hu r18, -126(r30)
000adc  6b3a4ff8  load.hu r20, -124(r30)
000ae0  6b3b6ff8  load.hu r22, -122(r30)
000ae4  6b3c8ff8  load.hu r24, -120(r30)
000ae8  6b3daff8  load.hu r26, -118(r30)
000aec  6b316ffb  load.hu r2, -74(r30)
000af0  6b328ffb  load.hu r4, -72(r30)
000af4  eb32affb  load.hu r5, -70(r30)
000af8  6b33cffb  load.hu r6, -68(r30)
000afc  eb33effb  load.hu r7, -66(r30)
000b00  6b340ffc  load.hu r8, -64(r30)
000b04  eb342ffc  load.hu r9, -62(r30)
000b08  6b354ffc  load.hu r10, -60(r30)
000b0c  eb356ffc  load.hu r11, -58(r30)
000b10  6b368ffc  load.hu r12, -56(r30)
000b14  eb36affc  load.hu r13, -54(r30)
000b18  6b37cffc  load.hu r14, -52(r30)
000b1c  eb37effc  load.hu r15, -50(r30)
000b20  eb380ffd  load.hu r17, -48(r30)
000b24  eb392ffd  load.hu r19, -46(r30)
000b28  eb3a4ffd  load.hu r21, -44(r30)
000b2c  eb3b6ffd  load.hu r23, -42(r30)
000b30  eb3c8ffd  load.hu r25, -40(r30)
000b34  eb3daffd  load.hu r27, -38(r30)
000b38  e70d1ff8  storeli.w r1, -808(r30)
000b3c  eb30eff8  load.hu r1, -114(r30)
000b40  e74dcff9  storeli.w r28, -804(r30)
000b44  6b3eeffd  load.hu r28, -34(r30)
000b48  674e1ff8  storeli.w r1, -796(r30)
000b4c  eb300ff9  load.hu r1, -112(r30)
000b50  670ecff9  storeli.w r28, -800(r30)
000b54  6b3e0ffe  load.hu r28, -32(r30)
000b58  e74e1ff8  storeli.w r1, -788(r30)
000b5c  eb302ff9  load.hu r1, -110(r30)
000b60  e70ecff9  storeli.w r28, -792(r30)
000b64  6b3e2ffe  load.hu r28, -30(r30)
000b68  674f1ff8  storeli.w r1, -780(r30)
000b6c  eb304ff9  load.hu r1, -108(r30)
000b70  670fcff9  storeli.w r28, -784(r30)
000b74  6b3e4ffe  load.hu r28, -28(r30)
000b78  e74f1ff8  storeli.w r1, -772(r30)
000b7c  eb306ff9  load.hu r1, -106(r30)
000b80  e70fcff9  storeli.w r28, -776(r30)
000b84  6b3e6ffe  load.hu r28, -26(r30)
000b88  67401ffa  storeli.w r1, -764(r30)
000b8c  eb308ff9  load.hu r1, -104(r30)
000b90  6700cffb  storeli.w r28, -768(r30)
000b94  6b3e8ffe  load.hu r28, -24(r30)
000b98  e7401ffa  storeli.w r1, -756(r30)
000b9c  eb30aff9  load.hu r1, -102(r30)
000ba0  e700cffb  storeli.w r28, -760(r30)
000ba4  6b3eaffe  load.hu r28, -22(r30)
000ba8  67411ffa  storeli.w r1, -748(r30)
000bac  eb30cff9  load.hu r1, -100(r30)
000bb0  6701cffb  storeli.w r28, -752(r30)
000bb4  6b3ecffe  load.hu r28, -20(r30)
000bb8  e7411ffa  storeli.w r1, -740(r30)
000bbc  eb30eff9  load.hu r1, -98(r30)
000bc0  e701cffb  storeli.w r28, -744(r30)
000bc4  6b3eeffe  load.hu r28, -18(r30)
000bc8  67421ffa  storeli.w r1, -732(r30)
000bcc  eb300ffa  load.hu r1, -96(r30)
000bd0  6702cffb  storeli.w r28, -736(r30)
000bd4  6b3e0fff  load.hu r28, -16(r30)
000bd8  e7421ffa  storeli.w r1, -724(r30)
000bdc  eb302ffa  load.hu r1, -94(r30)
000be0  e702cffb  storeli.w r28, -728(r30)
000be4  6b3e2fff  load.hu r28, -14(r30)
000be8  67431ffa  storeli.w r1, -716(r30)
000bec  eb304ffa  load.hu r1, -92(r30)
000bf0  6703cffb  storeli.w r28, -720(r30)
000bf4  6b3e4fff  load.hu r28, -12(r30)
000bf8  e7431ffa  storeli.w r1, -708(r30)
000bfc  eb306ffa  load.hu r1, -90(r30)
000c00  e703cffb  storeli.w r28, -712(r30)
000c04  6b3e6fff  load.hu r28, -10(r30)
000c08  67441ffa  storeli.w r1, -700(r30)
000c0c  eb308ffa  load.hu r1, -88(r30)
000c10  6704cffb  storeli.w r28, -704(r30)
000c14  6b3e8fff  load.hu r28, -8(r30)
000c18  e7441ffa  storeli.w r1, -692(r30)
000c1c  eb30affa  load.hu r1, -86(r30)
000c20  e704cffb  storeli.w r28, -696(r30)
000c24  6b3eafff  load.hu r28, -6(r30)
000c28  67451ffa  storeli.w r1, -684(r30)
000c2c  eb30cffa  load.hu r1, -84(r30)
000c30  6705cffb  storeli.w r28, -688(r30)
000c34  6b3ecfff  load.hu r28, -4(r30)
000c38  e7451ffa  storeli.w r1, -676(r30)
000c3c  eb30effa  load.hu r1, -82(r30)
000c40  e705cffb  storeli.w r28, -680(r30)
000c44  6b3eefff  load.hu r28, -2(r30)
000c48  67061ffa  storeli.w r1, -672(r30)
000c4c  eb300ffb  load.hu r1, -80(r30)
000c50  e746cffb  storeli.w r28, -660(r30)
000c54  1f1e0000  addli r28, zero, 1
000c58  7e010ee0  vmmov mr2, r28
000c5c  67461ffa  storeli.w r1, -668(r30)
000c60  eb302ffb  load.hu r1, -78(r30)
000c64  e7061ffa  storeli.w r1, -664(r30)
000c68  eb304ffb  load.hu r1, -76(r30)
000c6c  ea413834  vor.hf.mh vr3{mr2}, r16, vr3
000c70  1f280000  addli r16, zero, 2
000c74  7e0008e0  vmmov mr0, r16
000c78  1f480000  addli r16, zero, 4
000c7c  ea413930  vor.hf.mh vr3{mr0}, r18, vr3
000c80  7e0008e0  vmmov mr0, r16
000c84  1f081000  addli r16, zero, 8
000c88  fe0108e0  vmmov mr3, r16
000c8c  1f082000  addli r16, zero, 16
000c90  ea413a30  vor.hf.mh vr3{mr0}, r20, vr3
000c94  7e0008e0  vmmov mr0, r16
000c98  1f084000  addli r16, zero, 32
000c9c  1f1a0000  addli r20, zero, 1
000ca0  7e0108e0  vmmov mr2, r16
000ca4  1f088000  addli r16, zero, 64
000ca8  ea413b36  vor.hf.mh vr3{mr3}, r22, vr3
000cac  fe0108e0  vmmov mr3, r16
000cb0  1f0b0001  addli r22, zero, 128
000cb4  ea413c30  vor.hf.mh vr3{mr0}, r24, vr3
000cb8  ea413d34  vor.hf.mh vr3{mr2}, r26, vr3
000cbc  6308bff9  loadli.w r16,  -808(r30)
000cc0  ea413836  vor.hf.mh vr3{mr3}, r16, vr3
000cc4  1f080001  addli r16, zero, 128
000cc8  fe0108e0  vmmov mr3, r16
000ccc  6348cff9  loadli.w r16,  -796(r30)
000cd0  ea413836  vor.hf.mh vr3{mr3}, r16, vr3
000cd4  1f080002  addli r16, zero, 256
000cd8  fe0108e0  vmmov mr3, r16
000cdc  6348dff9  loadli.w r16,  -788(r30)
000ce0  ea413836  vor.hf.mh vr3{mr3}, r16, vr3
000ce4  1f080004  addli r16, zero, 512
000ce8  fe0108e0  vmmov mr3, r16
000cec  6348eff9  loadli.w r16,  -780(r30)
000cf0  ea413836  vor.hf.mh vr3{mr3}, r16, vr3
000cf4  1f080008  addli r16, zero, 1024
000cf8  fe0108e0  vmmov mr3, r16
000cfc  6348fff9  loadli.w r16,  -772(r30)
000d00  ea413836  vor.hf.mh vr3{mr3}, r16, vr3
000d04  1f080010  addli r16, zero, 2048
000d08  fe0108e0  vmmov mr3, r16
000d0c  63480ffa  loadli.w r16,  -764(r30)
000d10  ea413836  vor.hf.mh vr3{mr3}, r16, vr3
000d14  1f080020  addli r16, zero, 4096
000d18  fe0108e0  vmmov mr3, r16
000d1c  63481ffa  loadli.w r16,  -756(r30)
000d20  ea413836  vor.hf.mh vr3{mr3}, r16, vr3
000d24  1f080040  addli r16, zero, 8192
000d28  fe0108e0  vmmov mr3, r16
000d2c  63482ffa  loadli.w r16,  -748(r30)
000d30  ea413836  vor.hf.mh vr3{mr3}, r16, vr3
000d34  2b480000  lui r16, 4
000d38  fe0108e0  vmmov mr3, r16
000d3c  63483ffa  loadli.w r16,  -740(r30)
000d40  ea413836  vor.hf.mh vr3{mr3}, r16, vr3
000d44  2b880000  lui r16, 8
000d48  fe0108e0  vmmov mr3, r16
000d4c  63484ffa  loadli.w r16,  -732(r30)
000d50  ea413836  vor.hf.mh vr3{mr3}, r16, vr3
000d54  2b080100  lui r16, 16
000d58  fe0108e0  vmmov mr3, r16
000d5c  63485ffa  loadli.w r16,  -724(r30)
000d60  ea413836  vor.hf.mh vr3{mr3}, r16, vr3
000d64  2b080200  lui r16, 32
000d68  fe0108e0  vmmov mr3, r16
000d6c  63486ffa  loadli.w r16,  -716(r30)
000d70  ea413836  vor.hf.mh vr3{mr3}, r16, vr3
000d74  2b080400  lui r16, 64
000d78  fe0108e0  vmmov mr3, r16
000d7c  63487ffa  loadli.w r16,  -708(r30)
000d80  ea413836  vor.hf.mh vr3{mr3}, r16, vr3
000d84  2b080800  lui r16, 128
000d88  fe0108e0  vmmov mr3, r16
000d8c  63488ffa  loadli.w r16,  -700(r30)
000d90  ea413836  vor.hf.mh vr3{mr3}, r16, vr3
000d94  2b081000  lui r16, 256
000d98  fe0108e0  vmmov mr3, r16
000d9c  63489ffa  loadli.w r16,  -692(r30)
000da0  ea413836  vor.hf.mh vr3{mr3}, r16, vr3
000da4  2b082000  lui r16, 512
000da8  fe0108e0  vmmov mr3, r16
000dac  6348affa  loadli.w r16,  -684(r30)
000db0  ea413836  vor.hf.mh vr3{mr3}, r16, vr3
000db4  2b084000  lui r16, 1024
000db8  fe0108e0  vmmov mr3, r16
000dbc  6348bffa  loadli.w r16,  -676(r30)
000dc0  ea413836  vor.hf.mh vr3{mr3}, r16, vr3
000dc4  2b088000  lui r16, 2048
000dc8  fe0108e0  vmmov mr3, r16
000dcc  6308cffa  loadli.w r16,  -672(r30)
000dd0  ea413836  vor.hf.mh vr3{mr3}, r16, vr3
000dd4  2b080001  lui r16, 4096
000dd8  fe0108e0  vmmov mr3, r16
000ddc  6348cffa  loadli.w r16,  -668(r30)
000de0  ea413836  vor.hf.mh vr3{mr3}, r16, vr3
000de4  2b080002  lui r16, 8192
000de8  fe0108e0  vmmov mr3, r16
000dec  6308dffa  loadli.w r16,  -664(r30)
000df0  ea413836  vor.hf.mh vr3{mr3}, r16, vr3
000df4  2b080004  lui r16, 16384
000df8  fe0108e0  vmmov mr3, r16
000dfc  eac13036  vor.hf.mh vr3{mr3}, r1, vr3
000e00  ab000008  lui r1, 32768
000e04  fe8100e0  vmmov mr3, r1
000e08  ab000010  lui r1, 65536
000e0c  ea413136  vor.hf.mh vr3{mr3}, r2, vr3
000e10  fe8100e0  vmmov mr3, r1
000e14  ab000020  lui r1, 131072
000e18  1f010006  addli r2, zero, 768
000e1c  13812104  setlt.u r2, r3, r2
000e20  9f810102  addli r3, r3, 256
000e24  ea413236  vor.hf.mh vr3{mr3}, r4, vr3
000e28  fe8100e0  vmmov mr3, r1
000e2c  ab000040  lui r1, 262144
000e30  2b420000  lui r4, 4
000e34  eac13236  vor.hf.mh vr3{mr3}, r5, vr3
000e38  fe8100e0  vmmov mr3, r1
000e3c  ab000080  lui r1, 524288
000e40  ab020080  lui r5, 524288
000e44  ea413336  vor.hf.mh vr3{mr3}, r6, vr3
000e48  fe8100e0  vmmov mr3, r1
000e4c  9f100000  addli r1, zero, 1
000e50  eac13336  vor.hf.mh vr3{mr3}, r7, vr3
000e54  fe8100e0  vmmov mr3, r1
000e58  9f200000  addli r1, zero, 2
000e5c  6a412436  vor.hf.mh vr2{mr3}, r8, vr2
000e60  1f040fff  addli r8, r30, -128
000e64  fe8100e0  vmmov mr3, r1
000e68  9f400000  addli r1, zero, 4
000e6c  96c03002  vadd.hf.mz.rn vr1{mr1}, vr1, vr3
000e70  86b10000  vfp162float_l.rn vr3, vr1
000e74  06f20000  vfp162float_h.rn vr4, vr1
000e78  6ac12436  vor.hf.mh vr2{mr3}, r9, vr2
000e7c  fe8100e0  vmmov mr3, r1
000e80  9f001000  addli r1, zero, 8
000e84  6a412536  vor.hf.mh vr2{mr3}, r10, vr2
000e88  fe8100e0  vmmov mr3, r1
000e8c  9f008000  addli r1, zero, 64
000e90  6ac12536  vor.hf.mh vr2{mr3}, r11, vr2
000e94  6a412630  vor.hf.mh vr2{mr0}, r12, vr2
000e98  7e8000e0  vmmov mr0, r1
000e9c  9f000001  addli r1, zero, 128
000ea0  6ac12634  vor.hf.mh vr2{mr2}, r13, vr2
000ea4  6a412730  vor.hf.mh vr2{mr0}, r14, vr2
000ea8  7e8000e0  vmmov mr0, r1
000eac  9f000002  addli r1, zero, 256
000eb0  6ac12730  vor.hf.mh vr2{mr0}, r15, vr2
000eb4  7e8000e0  vmmov mr0, r1
000eb8  9f000004  addli r1, zero, 512
000ebc  6ac12830  vor.hf.mh vr2{mr0}, r17, vr2
000ec0  7e8000e0  vmmov mr0, r1
000ec4  9f000008  addli r1, zero, 1024
000ec8  6ac12930  vor.hf.mh vr2{mr0}, r19, vr2
000ecc  7e8000e0  vmmov mr0, r1
000ed0  9f000010  addli r1, zero, 2048
000ed4  6ac12a30  vor.hf.mh vr2{mr0}, r21, vr2
000ed8  7e8000e0  vmmov mr0, r1
000edc  9f000020  addli r1, zero, 4096
000ee0  9f0a0ffd  addli r21, r30, -384
000ee4  6ac12b30  vor.hf.mh vr2{mr0}, r23, vr2
000ee8  7e8000e0  vmmov mr0, r1
000eec  6343fffa  loadli.w r6,  -644(r30)
000ef0  e30bfffa  loadli.w r23,  -648(r30)
000ef4  9f000040  addli r1, zero, 8192
000ef8  92103302  vadd.f.mz.rn vr1{mr1}, r6, vr3
000efc  92114302  vadd.f.mz.rn vr3{mr1}, r6, vr4
000f00  6ac12c30  vor.hf.mh vr2{mr0}, r25, vr2
000f04  7e8000e0  vmmov mr0, r1
000f08  6ac12d30  vor.hf.mh vr2{mr0}, r27, vr2
000f0c  e340bff9  loadli.w r1,  -804(r30)
000f10  7e0002e0  vmmov mr0, r4
000f14  2b820000  lui r4, 8
000f18  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
000f1c  e300cff9  loadli.w r1,  -800(r30)
000f20  7e0002e0  vmmov mr0, r4
000f24  2b020100  lui r4, 16
000f28  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
000f2c  e300dff9  loadli.w r1,  -792(r30)
000f30  7e0002e0  vmmov mr0, r4
000f34  2b020200  lui r4, 32
000f38  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
000f3c  e300eff9  loadli.w r1,  -784(r30)
000f40  7e0002e0  vmmov mr0, r4
000f44  2b020400  lui r4, 64
000f48  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
000f4c  e300fff9  loadli.w r1,  -776(r30)
000f50  7e0002e0  vmmov mr0, r4
000f54  2b020800  lui r4, 128
000f58  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
000f5c  e3000ffa  loadli.w r1,  -768(r30)
000f60  7e0002e0  vmmov mr0, r4
000f64  2b021000  lui r4, 256
000f68  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
000f6c  e3001ffa  loadli.w r1,  -760(r30)
000f70  7e0002e0  vmmov mr0, r4
000f74  2b022000  lui r4, 512
000f78  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
000f7c  e3002ffa  loadli.w r1,  -752(r30)
000f80  7e0002e0  vmmov mr0, r4
000f84  2b024000  lui r4, 1024
000f88  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
000f8c  e3003ffa  loadli.w r1,  -744(r30)
000f90  7e0002e0  vmmov mr0, r4
000f94  2b028000  lui r4, 2048
000f98  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
000f9c  e3004ffa  loadli.w r1,  -736(r30)
000fa0  7e0002e0  vmmov mr0, r4
000fa4  2b020001  lui r4, 4096
000fa8  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
000fac  e3005ffa  loadli.w r1,  -728(r30)
000fb0  7e0002e0  vmmov mr0, r4
000fb4  2b020002  lui r4, 8192
000fb8  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
000fbc  e3006ffa  loadli.w r1,  -720(r30)
000fc0  7e0002e0  vmmov mr0, r4
000fc4  2b020004  lui r4, 16384
000fc8  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
000fcc  e3007ffa  loadli.w r1,  -712(r30)
000fd0  7e0002e0  vmmov mr0, r4
000fd4  2b020008  lui r4, 32768
000fd8  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
000fdc  e3008ffa  loadli.w r1,  -704(r30)
000fe0  7e0002e0  vmmov mr0, r4
000fe4  2b020010  lui r4, 65536
000fe8  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
000fec  e3009ffa  loadli.w r1,  -696(r30)
000ff0  7e0002e0  vmmov mr0, r4
000ff4  2b020020  lui r4, 131072
000ff8  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
000ffc  e300affa  loadli.w r1,  -688(r30)
001000  7e0002e0  vmmov mr0, r4
001004  2b020040  lui r4, 262144
001008  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
00100c  e300bffa  loadli.w r1,  -680(r30)
001010  7e0002e0  vmmov mr0, r4
001014  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
001018  6342dffa  loadli.w r4,  -660(r30)
00101c  7e8002e0  vmmov mr0, r5
001020  ab0000f0  lui r1, 983040
001024  97101b00  or r1, r22, r1
001028  6a412230  vor.hf.mh vr2{mr0}, r4, vr2
00102c  6b520f01  load.d r[5:6], 16(r30)
001030  eb540fd7  load.d r[10:11], -656(r30)
001034  e343aff9  loadli.w r7,  -812(r30)
001038  0b229210  add.ul r[5:6], r[5:6], r[10:11]
00103c  e304aff9  loadli.w r9,  -816(r30)
001040  92901402  vadd.f.mz.rn vr1{mr1}, r9, vr1
001044  92913402  vadd.f.mz.rn vr3{mr1}, r9, vr3
001048  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
00104c  16402002  vadd.hf.mz.rn vr0{mr1}, vr0, vr2
001050  0a913302  vmul.f.mz.rn vr2{mr1}, r7, vr3
001054  86910000  vfloat2fp16_l.rn vr3, vr1
001058  86510100  vfloat2fp16_h.rn vr3, vr2
00105c  46183fc2  vstore_mask16.mz vr3{mr1}, 1664(r30)
001060  86300000  vfp162float_l.rn vr1, vr0
001064  06710000  vfp162float_h.rn vr2, vr0
001068  12101302  vadd.f.mz.rn vr0{mr1}, r6, vr1
00106c  92102302  vadd.f.mz.rn vr1{mr1}, r6, vr2
001070  12900402  vadd.f.mz.rn vr0{mr1}, r9, vr0
001074  92901402  vadd.f.mz.rn vr1{mr1}, r9, vr1
001078  0a900302  vmul.f.mz.rn vr0{mr1}, r7, vr0
00107c  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
001080  06110000  vfloat2fp16_l.rn vr2, vr0
001084  06d10000  vfloat2fp16_h.rn vr2, vr1
001088  461c2fc2  vstore_mask16.mz vr2{mr1}, 1728(r30)
00108c  00a00000  mfence { lm }
001090  ff305201  s_lm2gm r1, r21, 0(r[5:6])
001094  00a00000  mfence { lm }
001098  bb0701fc  bneq r2, zero, -1568
00109c  63449ff9  loadli.w r8,  -820(r30)
0010a0  e3006ff9  loadli.w r1,  -848(r30)
0010a4  c2150fa3  vload_mask16.mz vr11{mr1}, 1408(r30)
0010a8  eb550f00  load.d r[12:13], 0(r30)
0010ac  eb548fdf  load.d r[10:11], -520(r30)
0010b0  9f060ffe  addli r13, r30, -256
0010b4  0b141410  add.s r8, r8, r1
0010b8  e3406ff9  loadli.w r1,  -844(r30)
0010bc  bf2414f8  blt.s r8, r1, -3800
0010c0  9f0e0ff9  addli sp, r30, -896
0010c4  9f8e0e07  addli sp, sp, 896
0010c8  00a00300  mfence { lm, sm, gm }
0010cc  00100000  exit
0010d0  9f8efeff  addli sp, sp, -8
0010d4  9f000100  addli r1, r2, 0
0010d8  2bf1ff7f  lui r2, 524287
0010dc  ab02807f  lui r5, 522240
0010e0  67c0ee01  storeli.w r30, 4(sp)
0010e4  6780fe01  storeli.w r31, 0(sp)
0010e8  1f8f1e00  addli r30, sp, 8
0010ec  1b12f1ff  ori r4, r2, 4095
0010f0  17814000  and r2, r1, r4
0010f4  13832204  setlt.u r6, r5, r2
0010f8  1f810100  addli r2, r3, 0
0010fc  bb210300  bneq r6, zero, 104
001100  97014100  and r3, r2, r4
001104  93813204  setlt.u r3, r5, r3
001108  3be10100  bneq r3, zero, 88
00110c  abf1ffff  lui r3, 1048575
001110  17221100  xor r4, r2, r1
001114  9b91f1ff  ori r3, r3, 4095
001118  3fa04100  blt.s r3, r4, 8
00111c  5b0b0000  j 88
001120  9b319100  slli r3, r2, 9
001124  9bb29000  slli r5, r1, 9
001128  1b427101  srli r4, r2, 23
00112c  1bc37001  srli r6, r1, 23
001130  93e32004  setlt.f r7, r1, r2
001134  93810100  seteq r3, r3, zero
001138  93820200  seteq r5, r5, zero
00113c  1b02f20f  andi r4, r4, 255
001140  1b03f30f  andi r6, r6, 255
001144  1b72f20f  setlti r4, r4, 255
001148  1b73f30f  setlti r6, r6, 255
00114c  97113200  or r3, r4, r3
001150  17125300  or r4, r6, r5
001154  97013200  and r3, r4, r3
001158  97813300  and r3, r7, r3
00115c  3ba00100  bneq r3, zero, 8
001160  1f810000  addli r2, r1, 0
001164  e38f0e00  loadli.w r31,  0(sp)
001168  63cf0e00  loadli.w r30,  4(sp)
00116c  9f8e1e00  addli sp, sp, 8
001170  5f800f00  jr r31, 0
001174  bfcf00fe  blt.s r1, zero, -16
001178  5bfdffff  j -24
00117c  00100000  exit
001180  00100000  exit
001184  00100000  exit
001188  00100000  exit
00118c  00100000  exit
001190  00100000  exit
001194  00100000  exit
001198  00100000  exit
00119c  00100000  exit
0011a0  00100000  exit
0011a4  00100000  exit
0011a8  00100000  exit
0011ac  00100000  exit
0011b0  00100000  exit
0011b4  00100000  exit
0011b8  00100000  exit
0011bc  00100000  exit
0011c0  00100000  exit
0011c4  00100000  exit
0011c8  00100000  exit
0011cc  00100000  exit
0011d0  00100000  exit
0011d4  00100000  exit
0011d8  00100000  exit
0011dc  00100000  exit
0011e0  00100000  exit
0011e4  00100000  exit
0011e8  00100000  exit
0011ec  00100000  exit
0011f0  00100000  exit
0011f4  00100000  exit
0011f8  00100000  exit
0011fc  00100000  exit
001200  00100000  exit
001204  00100000  exit
001208  00100000  exit
00120c  00100000  exit
001210  00100000  exit
001214  00100000  exit
001218  00100000  exit
00121c  00100000  exit
001220  00100000  exit
001224  00100000  exit
001228  00100000  exit
00122c  00100000  exit
001230  00100000  exit
001234  00100000  exit
001238  00100000  exit
00123c  00100000  exit
001240  00100000  exit
001244  00100000  exit
001248  00100000  exit
00124c  00100000  exit
001250  00100000  exit
001254  00100000  exit
001258  00100000  exit
00125c  00100000  exit
001260  00100000  exit
001264  00100000  exit
001268  00100000  exit
00126c  00100000  exit
001270  00100000  exit
001274  00100000  exit
001278  00100000  exit
00127c  00100000  exit
001280  00100000  exit
001284  00100000  exit
001288  00100000  exit
00128c  00100000  exit
001290  00100000  exit
001294  00100000  exit
001298  00100000  exit
00129c  00100000  exit
0012a0  00100000  exit
0012a4  00100000  exit
0012a8  00100000  exit
0012ac  00100000  exit
0012b0  00100000  exit
0012b4  00100000  exit
0012b8  00100000  exit
0012bc  00100000  exit
0012c0  00100000  exit
0012c4  00100000  exit
0012c8  00100000  exit
0012cc  00100000  exit
0012d0  00100000  exit
0012d4  00100000  exit
0012d8  00100000  exit
0012dc  00100000  exit
0012e0  00100000  exit
0012e4  00100000  exit
0012e8  00100000  exit
0012ec  00100000  exit
0012f0  00100000  exit
0012f4  00100000  exit
0012f8  00100000  exit
0012fc  00100000  exit
001300  00100000  exit
001304  00100000  exit
001308  00100000  exit
00130c  00100000  exit
001310  00100000  exit
001314  00100000  exit
001318  00100000  exit
00131c  00100000  exit
001320  00100000  exit
001324  00100000  exit
001328  00100000  exit
00132c  00100000  exit
001330  00100000  exit
001334  00100000  exit
001338  00100000  exit
00133c  00100000  exit
001340  00100000  exit
001344  00100000  exit
001348  00100000  exit
00134c  00100000  exit
001350  00100000  exit
001354  00100000  exit
001358  00100000  exit
00135c  00100000  exit
001360  00100000  exit
001364  00100000  exit
001368  00100000  exit
00136c  00100000  exit
001370  00100000  exit
001374  00100000  exit
001378  00100000  exit
00137c  00100000  exit
001380  00100000  exit
001384  00100000  exit
001388  00100000  exit
00138c  00100000  exit
001390  00100000  exit
001394  00100000  exit
001398  00100000  exit
00139c  00100000  exit
0013a0  00100000  exit
0013a4  00100000  exit
0013a8  00100000  exit
0013ac  00100000  exit
0013b0  00100000  exit
0013b4  00100000  exit
0013b8  00100000  exit
