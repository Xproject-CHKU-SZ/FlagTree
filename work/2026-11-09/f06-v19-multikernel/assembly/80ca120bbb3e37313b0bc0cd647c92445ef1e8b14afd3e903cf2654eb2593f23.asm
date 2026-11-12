; SHA-256 80ca120bbb3e37313b0bc0cd647c92445ef1e8b14afd3e903cf2654eb2593f23
; P800 Cluster · XTDK LLVM 19 · 1603 / 1603 words decoded
; bound names: _tle_row_softmax
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
000078  9f09d000  addli r19, zero, 104
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
0000ac  d71c0000  jal 228
0000b0  fe8007e0  vmmov mr1, r15
0000b4  fe900720  vmmovh mr1, r15
0000b8  1f8a0eff  addli r20, sp, -128
0000bc  4a100002  vloads_mask16.mz vr0{mr1}, 0(zero)
0000c0  ca108002  vloads_mask16.mz vr1{mr1}, 64(zero)
0000c4  46000a02  vstore.mz vr0{mr1}, 0(r20)
0000c8  46041a02  vstore.mz vr1{mr1}, 64(r20)
0000cc  00a00100  mfence { lm, sm }
0000d0  00d00100  sync_group
0000d4  97a01000  xor r1, r1, r1
0000d8  1f8f0e00  addli r30, sp, 0
0000dc  d71c0000  jal 228
0000e0  00400000  trap
0000e4  9f8e0ef5  addli sp, sp, -1408
0000e8  ab000000  lui r1, 0
0000ec  80320002  core_id r5
0000f0  1f8f0e0a  addli r30, sp, 1280
0000f4  2bf30000  lui r6, 15
0000f8  80590002  load_param_i r19, 0
0000fc  1bb12200  slli r2, r5, 2
000100  9f800000  addli r1, r1, 0
000104  6304cf00  loadli.w r8,  96(r30)
000108  6342bf00  loadli.w r4,  92(r30)
00010c  1b19f3ff  ori r18, r6, 4095
000110  e343cf00  loadli.w r7,  100(r30)
000114  8b912010  add.s r3, r1, r2
000118  9f842150  addli r9, r3, 10256
00011c  9f810110  addli r3, r3, 2048
000120  e7449ff6  storeli.w r9, -1204(r30)
000124  73e00400  stores.w zero, 0(r9)
000128  00a00300  mfence { lm, sm, gm }
00012c  80210904  csr_set csr3, r18
000130  00d00100  sync_group
000134  e7043ff6  storeli.w r3, -1208(r30)
000138  73e00100  stores.w zero, 0(r3)
00013c  8b114420  mul.s r3, r8, r4
000140  00a00300  mfence { lm, sm, gm }
000144  80210904  csr_set csr3, r18
000148  00d00100  sync_group
00014c  8b917120  mul.s r3, r3, r7
000150  67443ff6  storeli.w r3, -1212(r30)
000154  cba5310b  ble.s r3, r19, 5480
000158  1b8a7200  andi r20, r5, 7
00015c  80d70002  load_param_i r15, 1
000160  eb530f03  load.d r[8:9], 48(r30)
000164  9f1a0000  addli r21, zero, 1
000168  6b550f02  load.d r[11:12], 32(r30)
00016c  63471f00  loadli.w r14,  12(r30)
000170  9bc23200  srli r5, r5, 3
000174  1f0b0001  addli r22, zero, 128
000178  e3045f00  loadli.w r9,  40(r30)
00017c  63438f00  loadli.w r6,  68(r30)
000180  eb510f05  load.d r[4:5], 80(r30)
000184  6b568f01  load.d r[13:14], 24(r30)
000188  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00018c  e703fff6  storeli.w r15, -1224(r30)
000190  9b377a00  slli r15, r20, 7
000194  33880728  zext_int2long r[17:18], r15
000198  8b94f418  sub.s r9, r9, r15
00019c  8bb30321  mul.sl r[8:9], r[8:9], r[17:18]
0001a0  8b940448  max.s r9, r9, zero
0001a4  97b35303  sll.d r[8:9], r[8:9], r21
0001a8  8b946441  min.s r9, r9, r22
0001ac  8b237510  add.ul r[8:9], r[11:12], r[8:9]
0001b0  2bf5ffff  lui r10, 1048575
0001b4  9b857200  andi r11, r5, 7
0001b8  9bb41400  slli r9, r9, 1
0001bc  9b1205fe  ori r5, r10, 4064
0001c0  0b15f718  sub.s r10, r14, r15
0001c4  b38b0528  zext_int2long r[24:25], r11
0001c8  6743bff6  storeli.w r11, -1228(r30)
0001cc  17015100  and r2, r2, r5
0001d0  8b120548  max.s r5, r10, zero
0001d4  0b350621  mul.sl r[11:12], r[13:14], r[17:18]
0001d8  73347fb3  store.d r[24:25], -1240(r30)
0001dc  8b926241  min.s r5, r5, r22
0001e0  8b902010  add.s r1, r1, r2
0001e4  7330afb2  store.d r[11:12], -1248(r30)
0001e8  1bb11200  slli r2, r5, 1
0001ec  e7412ff6  storeli.w r2, -1252(r30)
0001f0  1f810010  addli r2, r1, 2048
0001f4  9f802050  addli r1, r1, 10256
0001f8  67452ff6  storeli.w r2, -1196(r30)
0001fc  0b11f318  sub.s r2, r6, r15
000200  67051ff6  storeli.w r1, -1200(r30)
000204  1f030ffa  addli r6, r30, -768
000208  8b100148  max.s r1, r2, zero
00020c  0bb10121  mul.sl r[3:4], r[4:5], r[17:18]
000210  73382fb0  store.d r[3:4], -1264(r30)
000214  2b0100f0  lui r2, 983040
000218  8b906041  min.s r1, r1, r22
00021c  9f010ffc  addli r3, r30, -512
000220  17912400  or r2, r9, r2
000224  9bb01000  slli r1, r1, 1
000228  7fa13300  l_gm2lm r2, r3, 0(r[8:9])
00022c  e7401ff6  storeli.w r1, -1268(r30)
000230  00a00000  mfence { lm }
000234  67042ff7  storeli.w r18, -1216(r30)
000238  e7434ff7  storeli.w r20, -1220(r30)
00023c  db090000  j 76
000240  6b518f04  load.d r[3:4], 72(r30)
000244  6b520fcf  load.d r[5:6], -784(r30)
000248  0b312220  mul.sl r[3:4], r[5:6], r[3:4]
00024c  6b520fb1  load.d r[5:6], -1264(r30)
000250  0b214110  add.ul r[3:4], r[3:4], r[5:6]
000254  eb528f03  load.d r[6:7], 56(r30)
000258  2b0200f0  lui r4, 983040
00025c  17315103  sll.d r[3:4], r[3:4], r21
000260  97904000  or r1, r1, r4
000264  0ba12210  add.ul r[3:4], r[6:7], r[3:4]
000268  1f030ffa  addli r6, r30, -768
00026c  ff306100  s_lm2gm r1, r6, 0(r[3:4])
000270  e3007ff6  loadli.w r1,  -1224(r30)
000274  00a00000  mfence { lm }
000278  8b991910  add.s r19, r19, r1
00027c  e3408ff6  loadli.w r1,  -1212(r30)
000280  3fa01900  blt.s r19, r1, 8
000284  5b870200  j 5176
000288  e340cf00  loadli.w r1,  100(r30)
00028c  6301cf00  loadli.w r2,  96(r30)
000290  6b528fb2  load.d r[5:6], -1240(r30)
000294  e74f3ff9  storeli.w r19, -772(r30)
000298  8b901930  div.s r1, r19, r1
00029c  8b902030  div.s r1, r1, r2
0002a0  9bb03000  slli r1, r1, 3
0002a4  33910028  sext_int2long r[3:4], r1
0002a8  17124102  or.d r[5:6], r[3:4], r[5:6]
0002ac  6b510f01  load.d r[3:4], 16(r30)
0002b0  73384fce  store.d r[5:6], -784(r30)
0002b4  0b312220  mul.sl r[3:4], r[5:6], r[3:4]
0002b8  6b520fb2  load.d r[5:6], -1248(r30)
0002bc  00a00000  mfence { lm }
0002c0  0b214110  add.ul r[3:4], r[3:4], r[5:6]
0002c4  63426ff6  loadli.w r4,  -1228(r30)
0002c8  17315103  sll.d r[3:4], r[3:4], r21
0002cc  97934000  or r7, r1, r4
0002d0  6b520f00  load.d r[5:6], 0(r30)
0002d4  e3001f00  loadli.w r1,  8(r30)
0002d8  e74e7ff8  storeli.w r7, -788(r30)
0002dc  8b212210  add.ul r[4:5], r[5:6], r[3:4]
0002e0  63413ff6  loadli.w r2,  -1252(r30)
0002e4  3fa01300  blt.s r7, r1, 8
0002e8  1f010000  addli r2, zero, 0
0002ec  6b3e8fe6  load.hu r28, -408(r30)
0002f0  eb300fe0  load.hu r1, -512(r30)
0002f4  ab0200f0  lui r5, 983040
0002f8  eb33efe3  load.hu r7, -450(r30)
0002fc  6b340fe4  load.hu r8, -448(r30)
000300  eb342fe4  load.hu r9, -446(r30)
000304  6b354fe4  load.hu r10, -444(r30)
000308  eb356fe4  load.hu r11, -442(r30)
00030c  6b368fe4  load.hu r12, -440(r30)
000310  eb36afe4  load.hu r13, -438(r30)
000314  6b37cfe4  load.hu r14, -436(r30)
000318  eb37efe4  load.hu r15, -434(r30)
00031c  6b380fe5  load.hu r16, -432(r30)
000320  eb382fe5  load.hu r17, -430(r30)
000324  6b394fe5  load.hu r18, -428(r30)
000328  eb396fe5  load.hu r19, -426(r30)
00032c  6b3a8fe5  load.hu r20, -424(r30)
000330  eb3aafe5  load.hu r21, -422(r30)
000334  6b3bcfe5  load.hu r22, -420(r30)
000338  eb3befe5  load.hu r23, -418(r30)
00033c  6b3c0fe6  load.hu r24, -416(r30)
000340  eb3c2fe6  load.hu r25, -414(r30)
000344  6b3d4fe6  load.hu r26, -412(r30)
000348  eb3d6fe6  load.hu r27, -410(r30)
00034c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000350  12330002  vadd.s.mz vr6{mr1}, zero, vr0
000354  92330002  vadd.s.mz vr7{mr1}, zero, vr0
000358  12340002  vadd.s.mz vr8{mr1}, zero, vr0
00035c  97125100  or r5, r2, r5
000360  6b314fe3  load.hu r2, -460(r30)
000364  e705cff7  storeli.w r28, -1192(r30)
000368  6b3eafe6  load.hu r28, -406(r30)
00036c  67431ff8  storeli.w r1, -972(r30)
000370  eb302fe0  load.hu r1, -510(r30)
000374  ffa26100  l_gm2lm r5, r6, 0(r[4:5])
000378  eb316fe3  load.hu r3, -458(r30)
00037c  6b328fe3  load.hu r4, -456(r30)
000380  eb32afe3  load.hu r5, -454(r30)
000384  6b33cfe3  load.hu r6, -452(r30)
000388  e745cff7  storeli.w r28, -1188(r30)
00038c  6b3ecfe6  load.hu r28, -404(r30)
000390  e7431ff8  storeli.w r1, -964(r30)
000394  eb304fe0  load.hu r1, -508(r30)
000398  6706cff7  storeli.w r28, -1184(r30)
00039c  6b3eefe6  load.hu r28, -402(r30)
0003a0  67441ff8  storeli.w r1, -956(r30)
0003a4  eb306fe0  load.hu r1, -506(r30)
0003a8  6746cff7  storeli.w r28, -1180(r30)
0003ac  6b3e0fe7  load.hu r28, -400(r30)
0003b0  e7441ff8  storeli.w r1, -948(r30)
0003b4  eb308fe0  load.hu r1, -504(r30)
0003b8  e706cff7  storeli.w r28, -1176(r30)
0003bc  6b3e2fe7  load.hu r28, -398(r30)
0003c0  67451ff8  storeli.w r1, -940(r30)
0003c4  eb30afe0  load.hu r1, -502(r30)
0003c8  e746cff7  storeli.w r28, -1172(r30)
0003cc  6b3e4fe7  load.hu r28, -396(r30)
0003d0  e7451ff8  storeli.w r1, -932(r30)
0003d4  eb30cfe0  load.hu r1, -500(r30)
0003d8  6707cff7  storeli.w r28, -1168(r30)
0003dc  6b3e6fe7  load.hu r28, -394(r30)
0003e0  67461ff8  storeli.w r1, -924(r30)
0003e4  eb30efe0  load.hu r1, -498(r30)
0003e8  6747cff7  storeli.w r28, -1164(r30)
0003ec  6b3e8fe7  load.hu r28, -392(r30)
0003f0  e7461ff8  storeli.w r1, -916(r30)
0003f4  eb300fe1  load.hu r1, -496(r30)
0003f8  e707cff7  storeli.w r28, -1160(r30)
0003fc  6b3eafe7  load.hu r28, -390(r30)
000400  67471ff8  storeli.w r1, -908(r30)
000404  eb302fe1  load.hu r1, -494(r30)
000408  e747cff7  storeli.w r28, -1156(r30)
00040c  6b3ecfe7  load.hu r28, -388(r30)
000410  e7471ff8  storeli.w r1, -900(r30)
000414  eb304fe1  load.hu r1, -492(r30)
000418  6708cff7  storeli.w r28, -1152(r30)
00041c  6b3eefe7  load.hu r28, -386(r30)
000420  67481ff8  storeli.w r1, -892(r30)
000424  eb306fe1  load.hu r1, -490(r30)
000428  6748cff7  storeli.w r28, -1148(r30)
00042c  6b3e0fe8  load.hu r28, -384(r30)
000430  e7481ff8  storeli.w r1, -884(r30)
000434  eb308fe1  load.hu r1, -488(r30)
000438  e708cff7  storeli.w r28, -1144(r30)
00043c  6b3e2fe8  load.hu r28, -382(r30)
000440  67491ff8  storeli.w r1, -876(r30)
000444  eb30afe1  load.hu r1, -486(r30)
000448  e748cff7  storeli.w r28, -1140(r30)
00044c  6b3e4fe8  load.hu r28, -380(r30)
000450  e7491ff8  storeli.w r1, -868(r30)
000454  eb30cfe1  load.hu r1, -484(r30)
000458  6709cff7  storeli.w r28, -1136(r30)
00045c  6b3e6fe8  load.hu r28, -378(r30)
000460  674a1ff8  storeli.w r1, -860(r30)
000464  eb30efe1  load.hu r1, -482(r30)
000468  6749cff7  storeli.w r28, -1132(r30)
00046c  6b3e8fe8  load.hu r28, -376(r30)
000470  e74a1ff8  storeli.w r1, -852(r30)
000474  eb300fe2  load.hu r1, -480(r30)
000478  e709cff7  storeli.w r28, -1128(r30)
00047c  6b3eafe8  load.hu r28, -374(r30)
000480  674b1ff8  storeli.w r1, -844(r30)
000484  eb302fe2  load.hu r1, -478(r30)
000488  e749cff7  storeli.w r28, -1124(r30)
00048c  6b3ecfe8  load.hu r28, -372(r30)
000490  e74b1ff8  storeli.w r1, -836(r30)
000494  eb304fe2  load.hu r1, -476(r30)
000498  670acff7  storeli.w r28, -1120(r30)
00049c  6b3eefe8  load.hu r28, -370(r30)
0004a0  674c1ff8  storeli.w r1, -828(r30)
0004a4  eb306fe2  load.hu r1, -474(r30)
0004a8  674acff7  storeli.w r28, -1116(r30)
0004ac  6b3e0fe9  load.hu r28, -368(r30)
0004b0  e74c1ff8  storeli.w r1, -820(r30)
0004b4  eb308fe2  load.hu r1, -472(r30)
0004b8  e70acff7  storeli.w r28, -1112(r30)
0004bc  6b3e2fe9  load.hu r28, -366(r30)
0004c0  670d1ff8  storeli.w r1, -816(r30)
0004c4  eb30afe2  load.hu r1, -470(r30)
0004c8  e74acff7  storeli.w r28, -1108(r30)
0004cc  6b3e4fe9  load.hu r28, -364(r30)
0004d0  674d1ff8  storeli.w r1, -812(r30)
0004d4  eb30cfe2  load.hu r1, -468(r30)
0004d8  670bcff7  storeli.w r28, -1104(r30)
0004dc  6b3e6fe9  load.hu r28, -362(r30)
0004e0  e70d1ff8  storeli.w r1, -808(r30)
0004e4  eb30efe2  load.hu r1, -466(r30)
0004e8  674bcff7  storeli.w r28, -1100(r30)
0004ec  6b3e8fe9  load.hu r28, -360(r30)
0004f0  e74d1ff8  storeli.w r1, -804(r30)
0004f4  eb300fe3  load.hu r1, -464(r30)
0004f8  e70bcff7  storeli.w r28, -1096(r30)
0004fc  6b3eafe9  load.hu r28, -358(r30)
000500  674e1ff8  storeli.w r1, -796(r30)
000504  eb302fe3  load.hu r1, -462(r30)
000508  e74bcff7  storeli.w r28, -1092(r30)
00050c  6b3ecfe9  load.hu r28, -356(r30)
000510  670ccff7  storeli.w r28, -1088(r30)
000514  6b3eefe9  load.hu r28, -354(r30)
000518  674ccff7  storeli.w r28, -1084(r30)
00051c  6b3e0fea  load.hu r28, -352(r30)
000520  e70ccff7  storeli.w r28, -1080(r30)
000524  6b3e2fea  load.hu r28, -350(r30)
000528  e74ccff7  storeli.w r28, -1076(r30)
00052c  6b3e4fea  load.hu r28, -348(r30)
000530  670dcff7  storeli.w r28, -1072(r30)
000534  6b3e6fea  load.hu r28, -346(r30)
000538  674dcff7  storeli.w r28, -1068(r30)
00053c  6b3e8fea  load.hu r28, -344(r30)
000540  e70dcff7  storeli.w r28, -1064(r30)
000544  6b3eafea  load.hu r28, -342(r30)
000548  e74dcff7  storeli.w r28, -1060(r30)
00054c  6b3ecfea  load.hu r28, -340(r30)
000550  670ecff7  storeli.w r28, -1056(r30)
000554  6b3eefea  load.hu r28, -338(r30)
000558  674ecff7  storeli.w r28, -1052(r30)
00055c  6b3e0feb  load.hu r28, -336(r30)
000560  e70ecff7  storeli.w r28, -1048(r30)
000564  6b3e2feb  load.hu r28, -334(r30)
000568  e74ecff7  storeli.w r28, -1044(r30)
00056c  6b3e4feb  load.hu r28, -332(r30)
000570  670fcff7  storeli.w r28, -1040(r30)
000574  6b3e6feb  load.hu r28, -330(r30)
000578  674fcff7  storeli.w r28, -1036(r30)
00057c  6b3e8feb  load.hu r28, -328(r30)
000580  e70fcff7  storeli.w r28, -1032(r30)
000584  6b3eafeb  load.hu r28, -326(r30)
000588  e74fcff7  storeli.w r28, -1028(r30)
00058c  6b3ecfeb  load.hu r28, -324(r30)
000590  6700cff9  storeli.w r28, -1024(r30)
000594  6b3eefeb  load.hu r28, -322(r30)
000598  6740cff9  storeli.w r28, -1020(r30)
00059c  6b3e0fec  load.hu r28, -320(r30)
0005a0  e700cff9  storeli.w r28, -1016(r30)
0005a4  6b3e2fec  load.hu r28, -318(r30)
0005a8  e740cff9  storeli.w r28, -1012(r30)
0005ac  6b3e4fec  load.hu r28, -316(r30)
0005b0  6701cff9  storeli.w r28, -1008(r30)
0005b4  6b3e6fec  load.hu r28, -314(r30)
0005b8  6741cff9  storeli.w r28, -1004(r30)
0005bc  6b3e8fec  load.hu r28, -312(r30)
0005c0  e701cff9  storeli.w r28, -1000(r30)
0005c4  6b3eafec  load.hu r28, -310(r30)
0005c8  e741cff9  storeli.w r28, -996(r30)
0005cc  6b3ecfec  load.hu r28, -308(r30)
0005d0  6702cff9  storeli.w r28, -992(r30)
0005d4  6b3eefec  load.hu r28, -306(r30)
0005d8  6742cff9  storeli.w r28, -988(r30)
0005dc  6b3e0fed  load.hu r28, -304(r30)
0005e0  e702cff9  storeli.w r28, -984(r30)
0005e4  6b3e2fed  load.hu r28, -302(r30)
0005e8  e742cff9  storeli.w r28, -980(r30)
0005ec  6b3e4fed  load.hu r28, -300(r30)
0005f0  6703cff9  storeli.w r28, -976(r30)
0005f4  6b3e6fed  load.hu r28, -298(r30)
0005f8  e703cff9  storeli.w r28, -968(r30)
0005fc  6b3e8fed  load.hu r28, -296(r30)
000600  6704cff9  storeli.w r28, -960(r30)
000604  6b3eafed  load.hu r28, -294(r30)
000608  e704cff9  storeli.w r28, -952(r30)
00060c  6b3ecfed  load.hu r28, -292(r30)
000610  6705cff9  storeli.w r28, -944(r30)
000614  6b3eefed  load.hu r28, -290(r30)
000618  e705cff9  storeli.w r28, -936(r30)
00061c  6b3e0fee  load.hu r28, -288(r30)
000620  6706cff9  storeli.w r28, -928(r30)
000624  6b3e2fee  load.hu r28, -286(r30)
000628  e706cff9  storeli.w r28, -920(r30)
00062c  6b3e4fee  load.hu r28, -284(r30)
000630  6707cff9  storeli.w r28, -912(r30)
000634  6b3e6fee  load.hu r28, -282(r30)
000638  e707cff9  storeli.w r28, -904(r30)
00063c  6b3e8fee  load.hu r28, -280(r30)
000640  6708cff9  storeli.w r28, -896(r30)
000644  6b3eafee  load.hu r28, -278(r30)
000648  e708cff9  storeli.w r28, -888(r30)
00064c  6b3ecfee  load.hu r28, -276(r30)
000650  6709cff9  storeli.w r28, -880(r30)
000654  6b3eefee  load.hu r28, -274(r30)
000658  e709cff9  storeli.w r28, -872(r30)
00065c  6b3e0fef  load.hu r28, -272(r30)
000660  670acff9  storeli.w r28, -864(r30)
000664  6b3e2fef  load.hu r28, -270(r30)
000668  e70acff9  storeli.w r28, -856(r30)
00066c  6b3e4fef  load.hu r28, -268(r30)
000670  670bcff9  storeli.w r28, -848(r30)
000674  6b3e6fef  load.hu r28, -266(r30)
000678  e70bcff9  storeli.w r28, -840(r30)
00067c  6b3e8fef  load.hu r28, -264(r30)
000680  670ccff9  storeli.w r28, -832(r30)
000684  6b3eafef  load.hu r28, -262(r30)
000688  e70ccff9  storeli.w r28, -824(r30)
00068c  6b3ecfef  load.hu r28, -260(r30)
000690  670ecff9  storeli.w r28, -800(r30)
000694  6b3eefef  load.hu r28, -258(r30)
000698  e70ecff9  storeli.w r28, -792(r30)
00069c  1f1e0000  addli r28, zero, 1
0006a0  00a00000  mfence { lm }
0006a4  42120fa2  vload_mask16.mz vr4{mr1}, 1280(r30)
0006a8  c2118fa2  vload_mask16.mz vr3{mr1}, 1344(r30)
0006ac  42110fa3  vload_mask16.mz vr2{mr1}, 1408(r30)
0006b0  c2108fa3  vload_mask16.mz vr1{mr1}, 1472(r30)
0006b4  fe010ee0  vmmov mr3, r28
0006b8  634e6ff8  loadli.w r28,  -972(r30)
0006bc  ea425e36  vor.hf.mh vr5{mr3}, r28, vr5
0006c0  1f2e0000  addli r28, zero, 2
0006c4  7e000ee0  vmmov mr0, r28
0006c8  634e7ff8  loadli.w r28,  -964(r30)
0006cc  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
0006d0  1f4e0000  addli r28, zero, 4
0006d4  7e010ee0  vmmov mr2, r28
0006d8  634e8ff8  loadli.w r28,  -956(r30)
0006dc  ea425e34  vor.hf.mh vr5{mr2}, r28, vr5
0006e0  1f0e1000  addli r28, zero, 8
0006e4  7e000ee0  vmmov mr0, r28
0006e8  634e9ff8  loadli.w r28,  -948(r30)
0006ec  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
0006f0  1f0e2000  addli r28, zero, 16
0006f4  7e000ee0  vmmov mr0, r28
0006f8  634eaff8  loadli.w r28,  -940(r30)
0006fc  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000700  1f0e4000  addli r28, zero, 32
000704  7e000ee0  vmmov mr0, r28
000708  634ebff8  loadli.w r28,  -932(r30)
00070c  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000710  1f0e8000  addli r28, zero, 64
000714  7e000ee0  vmmov mr0, r28
000718  634ecff8  loadli.w r28,  -924(r30)
00071c  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000720  1f0e0001  addli r28, zero, 128
000724  7e000ee0  vmmov mr0, r28
000728  634edff8  loadli.w r28,  -916(r30)
00072c  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000730  1f0e0002  addli r28, zero, 256
000734  7e000ee0  vmmov mr0, r28
000738  634eeff8  loadli.w r28,  -908(r30)
00073c  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000740  1f0e0004  addli r28, zero, 512
000744  7e000ee0  vmmov mr0, r28
000748  634efff8  loadli.w r28,  -900(r30)
00074c  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000750  1f0e0008  addli r28, zero, 1024
000754  7e000ee0  vmmov mr0, r28
000758  634e0ff9  loadli.w r28,  -892(r30)
00075c  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000760  1f0e0010  addli r28, zero, 2048
000764  7e000ee0  vmmov mr0, r28
000768  634e1ff9  loadli.w r28,  -884(r30)
00076c  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000770  1f0e0020  addli r28, zero, 4096
000774  7e000ee0  vmmov mr0, r28
000778  634e2ff9  loadli.w r28,  -876(r30)
00077c  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000780  1f0e0040  addli r28, zero, 8192
000784  7e000ee0  vmmov mr0, r28
000788  634e3ff9  loadli.w r28,  -868(r30)
00078c  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000790  2b4e0000  lui r28, 4
000794  7e000ee0  vmmov mr0, r28
000798  634e4ff9  loadli.w r28,  -860(r30)
00079c  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
0007a0  2b8e0000  lui r28, 8
0007a4  7e000ee0  vmmov mr0, r28
0007a8  634e5ff9  loadli.w r28,  -852(r30)
0007ac  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
0007b0  2b0e0100  lui r28, 16
0007b4  7e000ee0  vmmov mr0, r28
0007b8  634e6ff9  loadli.w r28,  -844(r30)
0007bc  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
0007c0  2b0e0200  lui r28, 32
0007c4  7e000ee0  vmmov mr0, r28
0007c8  634e7ff9  loadli.w r28,  -836(r30)
0007cc  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
0007d0  2b0e0400  lui r28, 64
0007d4  7e000ee0  vmmov mr0, r28
0007d8  634e8ff9  loadli.w r28,  -828(r30)
0007dc  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
0007e0  2b0e0800  lui r28, 128
0007e4  7e000ee0  vmmov mr0, r28
0007e8  634e9ff9  loadli.w r28,  -820(r30)
0007ec  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
0007f0  2b0e1000  lui r28, 256
0007f4  7e000ee0  vmmov mr0, r28
0007f8  630eaff9  loadli.w r28,  -816(r30)
0007fc  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000800  2b0e2000  lui r28, 512
000804  7e000ee0  vmmov mr0, r28
000808  634eaff9  loadli.w r28,  -812(r30)
00080c  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000810  2b0e4000  lui r28, 1024
000814  7e000ee0  vmmov mr0, r28
000818  630ebff9  loadli.w r28,  -808(r30)
00081c  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000820  2b0e8000  lui r28, 2048
000824  7e000ee0  vmmov mr0, r28
000828  634ebff9  loadli.w r28,  -804(r30)
00082c  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000830  2b0e0001  lui r28, 4096
000834  7e000ee0  vmmov mr0, r28
000838  634ecff9  loadli.w r28,  -796(r30)
00083c  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000840  2b0e0002  lui r28, 8192
000844  7e000ee0  vmmov mr0, r28
000848  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
00084c  ab000004  lui r1, 16384
000850  7e8000e0  vmmov mr0, r1
000854  ab000008  lui r1, 32768
000858  ea425130  vor.hf.mh vr5{mr0}, r2, vr5
00085c  7e8000e0  vmmov mr0, r1
000860  ab000010  lui r1, 65536
000864  2b011000  lui r2, 256
000868  eac25130  vor.hf.mh vr5{mr0}, r3, vr5
00086c  7e8000e0  vmmov mr0, r1
000870  ab000020  lui r1, 131072
000874  ea425230  vor.hf.mh vr5{mr0}, r4, vr5
000878  7e8000e0  vmmov mr0, r1
00087c  ab000040  lui r1, 262144
000880  eac25230  vor.hf.mh vr5{mr0}, r5, vr5
000884  7e8000e0  vmmov mr0, r1
000888  ab000080  lui r1, 524288
00088c  ea425330  vor.hf.mh vr5{mr0}, r6, vr5
000890  7e8000e0  vmmov mr0, r1
000894  9f200000  addli r1, zero, 2
000898  7e8100e0  vmmov mr2, r1
00089c  9f400000  addli r1, zero, 4
0008a0  eac25330  vor.hf.mh vr5{mr0}, r7, vr5
0008a4  6a436436  vor.hf.mh vr6{mr3}, r8, vr6
0008a8  fe8100e0  vmmov mr3, r1
0008ac  9f001000  addli r1, zero, 8
0008b0  7e8000e0  vmmov mr0, r1
0008b4  9f002000  addli r1, zero, 16
0008b8  6ac36434  vor.hf.mh vr6{mr2}, r9, vr6
0008bc  96c24202  vadd.hf.mz.rn vr5{mr1}, vr5, vr4
0008c0  06b20200  vfp162float_l.rn vr4, vr5
0008c4  6a436536  vor.hf.mh vr6{mr3}, r10, vr6
0008c8  6ac36530  vor.hf.mh vr6{mr0}, r11, vr6
0008cc  7e8000e0  vmmov mr0, r1
0008d0  9f004000  addli r1, zero, 32
0008d4  6a436630  vor.hf.mh vr6{mr0}, r12, vr6
0008d8  7e8000e0  vmmov mr0, r1
0008dc  9f008000  addli r1, zero, 64
0008e0  6ac36630  vor.hf.mh vr6{mr0}, r13, vr6
0008e4  7e8000e0  vmmov mr0, r1
0008e8  9f000001  addli r1, zero, 128
0008ec  6a436730  vor.hf.mh vr6{mr0}, r14, vr6
0008f0  7e8000e0  vmmov mr0, r1
0008f4  9f000002  addli r1, zero, 256
0008f8  6ac36730  vor.hf.mh vr6{mr0}, r15, vr6
0008fc  7e8000e0  vmmov mr0, r1
000900  9f000004  addli r1, zero, 512
000904  6a436830  vor.hf.mh vr6{mr0}, r16, vr6
000908  7e8000e0  vmmov mr0, r1
00090c  9f000008  addli r1, zero, 1024
000910  6ac36830  vor.hf.mh vr6{mr0}, r17, vr6
000914  7e8000e0  vmmov mr0, r1
000918  9f000010  addli r1, zero, 2048
00091c  6a436930  vor.hf.mh vr6{mr0}, r18, vr6
000920  7e8000e0  vmmov mr0, r1
000924  9f000020  addli r1, zero, 4096
000928  6ac36930  vor.hf.mh vr6{mr0}, r19, vr6
00092c  7e8000e0  vmmov mr0, r1
000930  9f000040  addli r1, zero, 8192
000934  9f090001  addli r19, zero, 128
000938  6a436a30  vor.hf.mh vr6{mr0}, r20, vr6
00093c  7e8000e0  vmmov mr0, r1
000940  ab400000  lui r1, 4
000944  6ac36a30  vor.hf.mh vr6{mr0}, r21, vr6
000948  7e8000e0  vmmov mr0, r1
00094c  ab800000  lui r1, 8
000950  9f0a0002  addli r21, zero, 256
000954  6a436b30  vor.hf.mh vr6{mr0}, r22, vr6
000958  7e8000e0  vmmov mr0, r1
00095c  ab000100  lui r1, 16
000960  1f0b8000  addli r22, zero, 64
000964  6ac36b30  vor.hf.mh vr6{mr0}, r23, vr6
000968  7e8000e0  vmmov mr0, r1
00096c  ab000200  lui r1, 32
000970  9f0b4000  addli r23, zero, 32
000974  6a436c30  vor.hf.mh vr6{mr0}, r24, vr6
000978  7e8000e0  vmmov mr0, r1
00097c  ab000400  lui r1, 64
000980  6ac36c30  vor.hf.mh vr6{mr0}, r25, vr6
000984  7e8000e0  vmmov mr0, r1
000988  ab000800  lui r1, 128
00098c  6a436d30  vor.hf.mh vr6{mr0}, r26, vr6
000990  7e8000e0  vmmov mr0, r1
000994  6ac36d30  vor.hf.mh vr6{mr0}, r27, vr6
000998  e300bff6  loadli.w r1,  -1192(r30)
00099c  7e0001e0  vmmov mr0, r2
0009a0  2b012000  lui r2, 512
0009a4  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
0009a8  e340bff6  loadli.w r1,  -1188(r30)
0009ac  7e0001e0  vmmov mr0, r2
0009b0  2b014000  lui r2, 1024
0009b4  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
0009b8  e300cff6  loadli.w r1,  -1184(r30)
0009bc  7e0001e0  vmmov mr0, r2
0009c0  2b018000  lui r2, 2048
0009c4  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
0009c8  e340cff6  loadli.w r1,  -1180(r30)
0009cc  7e0001e0  vmmov mr0, r2
0009d0  2b010001  lui r2, 4096
0009d4  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
0009d8  e300dff6  loadli.w r1,  -1176(r30)
0009dc  7e0001e0  vmmov mr0, r2
0009e0  2b010004  lui r2, 16384
0009e4  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
0009e8  ab000002  lui r1, 8192
0009ec  7e8000e0  vmmov mr0, r1
0009f0  e340dff6  loadli.w r1,  -1172(r30)
0009f4  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
0009f8  e300eff6  loadli.w r1,  -1168(r30)
0009fc  7e0001e0  vmmov mr0, r2
000a00  2b010008  lui r2, 32768
000a04  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
000a08  e340eff6  loadli.w r1,  -1164(r30)
000a0c  7e0001e0  vmmov mr0, r2
000a10  2b010010  lui r2, 65536
000a14  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
000a18  e300fff6  loadli.w r1,  -1160(r30)
000a1c  7e0001e0  vmmov mr0, r2
000a20  2b010020  lui r2, 131072
000a24  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
000a28  e340fff6  loadli.w r1,  -1156(r30)
000a2c  7e0001e0  vmmov mr0, r2
000a30  2b010040  lui r2, 262144
000a34  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
000a38  e3000ff7  loadli.w r1,  -1152(r30)
000a3c  7e0001e0  vmmov mr0, r2
000a40  2b010080  lui r2, 524288
000a44  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
000a48  e3400ff7  loadli.w r1,  -1148(r30)
000a4c  7e0001e0  vmmov mr0, r2
000a50  1f110000  addli r2, zero, 1
000a54  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
000a58  e3001ff7  loadli.w r1,  -1144(r30)
000a5c  7e0001e0  vmmov mr0, r2
000a60  1f011000  addli r2, zero, 8
000a64  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000a68  e3401ff7  loadli.w r1,  -1140(r30)
000a6c  7e0001e0  vmmov mr0, r2
000a70  1f012000  addli r2, zero, 16
000a74  96443302  vadd.hf.mz.rn vr9{mr1}, vr6, vr3
000a78  86f10200  vfp162float_h.rn vr3, vr5
000a7c  36153202  vmax.f.mz vr10{mr1}, vr4, vr3
000a80  06b30400  vfp162float_l.rn vr6, vr9
000a84  86f20400  vfp162float_h.rn vr5, vr9
000a88  eac37034  vor.hf.mh vr7{mr2}, r1, vr7
000a8c  e3002ff7  loadli.w r1,  -1136(r30)
000a90  eac37036  vor.hf.mh vr7{mr3}, r1, vr7
000a94  e3402ff7  loadli.w r1,  -1132(r30)
000a98  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000a9c  e3003ff7  loadli.w r1,  -1128(r30)
000aa0  7e0001e0  vmmov mr0, r2
000aa4  1f014000  addli r2, zero, 32
000aa8  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000aac  e3403ff7  loadli.w r1,  -1124(r30)
000ab0  7e0001e0  vmmov mr0, r2
000ab4  1f018000  addli r2, zero, 64
000ab8  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000abc  e3004ff7  loadli.w r1,  -1120(r30)
000ac0  7e0001e0  vmmov mr0, r2
000ac4  1f010001  addli r2, zero, 128
000ac8  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000acc  e3404ff7  loadli.w r1,  -1116(r30)
000ad0  7e0001e0  vmmov mr0, r2
000ad4  1f010002  addli r2, zero, 256
000ad8  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000adc  e3005ff7  loadli.w r1,  -1112(r30)
000ae0  7e0001e0  vmmov mr0, r2
000ae4  1f010004  addli r2, zero, 512
000ae8  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000aec  e3405ff7  loadli.w r1,  -1108(r30)
000af0  7e0001e0  vmmov mr0, r2
000af4  1f010008  addli r2, zero, 1024
000af8  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000afc  e3006ff7  loadli.w r1,  -1104(r30)
000b00  7e0001e0  vmmov mr0, r2
000b04  1f010010  addli r2, zero, 2048
000b08  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000b0c  e3406ff7  loadli.w r1,  -1100(r30)
000b10  7e0001e0  vmmov mr0, r2
000b14  1f010020  addli r2, zero, 4096
000b18  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000b1c  e3007ff7  loadli.w r1,  -1096(r30)
000b20  7e0001e0  vmmov mr0, r2
000b24  1f010040  addli r2, zero, 8192
000b28  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000b2c  e3407ff7  loadli.w r1,  -1092(r30)
000b30  7e0001e0  vmmov mr0, r2
000b34  2b410000  lui r2, 4
000b38  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000b3c  e3008ff7  loadli.w r1,  -1088(r30)
000b40  7e0001e0  vmmov mr0, r2
000b44  2b810000  lui r2, 8
000b48  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000b4c  e3408ff7  loadli.w r1,  -1084(r30)
000b50  7e0001e0  vmmov mr0, r2
000b54  2b010100  lui r2, 16
000b58  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000b5c  e3009ff7  loadli.w r1,  -1080(r30)
000b60  7e0001e0  vmmov mr0, r2
000b64  2b010200  lui r2, 32
000b68  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000b6c  e3409ff7  loadli.w r1,  -1076(r30)
000b70  7e0001e0  vmmov mr0, r2
000b74  2b010400  lui r2, 64
000b78  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000b7c  e300aff7  loadli.w r1,  -1072(r30)
000b80  7e0001e0  vmmov mr0, r2
000b84  2b010800  lui r2, 128
000b88  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000b8c  e340aff7  loadli.w r1,  -1068(r30)
000b90  7e0001e0  vmmov mr0, r2
000b94  2b011000  lui r2, 256
000b98  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000b9c  e300bff7  loadli.w r1,  -1064(r30)
000ba0  7e0001e0  vmmov mr0, r2
000ba4  2b012000  lui r2, 512
000ba8  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000bac  e340bff7  loadli.w r1,  -1060(r30)
000bb0  7e0001e0  vmmov mr0, r2
000bb4  2b014000  lui r2, 1024
000bb8  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000bbc  e300cff7  loadli.w r1,  -1056(r30)
000bc0  7e0001e0  vmmov mr0, r2
000bc4  2b018000  lui r2, 2048
000bc8  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000bcc  e340cff7  loadli.w r1,  -1052(r30)
000bd0  7e0001e0  vmmov mr0, r2
000bd4  2b010001  lui r2, 4096
000bd8  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000bdc  e300dff7  loadli.w r1,  -1048(r30)
000be0  7e0001e0  vmmov mr0, r2
000be4  2b010002  lui r2, 8192
000be8  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000bec  e340dff7  loadli.w r1,  -1044(r30)
000bf0  7e0001e0  vmmov mr0, r2
000bf4  2b010004  lui r2, 16384
000bf8  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000bfc  e300eff7  loadli.w r1,  -1040(r30)
000c00  7e0001e0  vmmov mr0, r2
000c04  2b010008  lui r2, 32768
000c08  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000c0c  e340eff7  loadli.w r1,  -1036(r30)
000c10  7e0001e0  vmmov mr0, r2
000c14  2b010010  lui r2, 65536
000c18  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000c1c  e300fff7  loadli.w r1,  -1032(r30)
000c20  7e0001e0  vmmov mr0, r2
000c24  2b010020  lui r2, 131072
000c28  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000c2c  e340fff7  loadli.w r1,  -1028(r30)
000c30  7e0001e0  vmmov mr0, r2
000c34  2b010040  lui r2, 262144
000c38  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000c3c  e3000ff8  loadli.w r1,  -1024(r30)
000c40  7e0001e0  vmmov mr0, r2
000c44  2b010080  lui r2, 524288
000c48  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000c4c  e3400ff8  loadli.w r1,  -1020(r30)
000c50  7e0001e0  vmmov mr0, r2
000c54  1f110000  addli r2, zero, 1
000c58  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000c5c  e3001ff8  loadli.w r1,  -1016(r30)
000c60  7e0001e0  vmmov mr0, r2
000c64  1f011000  addli r2, zero, 8
000c68  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000c6c  e3401ff8  loadli.w r1,  -1012(r30)
000c70  7e0001e0  vmmov mr0, r2
000c74  1f012000  addli r2, zero, 16
000c78  96c42302  vadd.hf.mz.rn vr9{mr1}, vr7, vr2
000c7c  36116502  vmax.f.mz vr2{mr1}, vr10, vr6
000c80  36155102  vmax.f.mz vr10{mr1}, vr2, vr5
000c84  86f30400  vfp162float_h.rn vr7, vr9
000c88  06b10400  vfp162float_l.rn vr2, vr9
000c8c  6ac48034  vor.hf.mh vr8{mr2}, r1, vr8
000c90  e3002ff8  loadli.w r1,  -1008(r30)
000c94  6ac48036  vor.hf.mh vr8{mr3}, r1, vr8
000c98  e3402ff8  loadli.w r1,  -1004(r30)
000c9c  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000ca0  e3003ff8  loadli.w r1,  -1000(r30)
000ca4  7e0001e0  vmmov mr0, r2
000ca8  1f014000  addli r2, zero, 32
000cac  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000cb0  e3403ff8  loadli.w r1,  -996(r30)
000cb4  7e0001e0  vmmov mr0, r2
000cb8  1f018000  addli r2, zero, 64
000cbc  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000cc0  e3004ff8  loadli.w r1,  -992(r30)
000cc4  7e0001e0  vmmov mr0, r2
000cc8  1f010001  addli r2, zero, 128
000ccc  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000cd0  e3404ff8  loadli.w r1,  -988(r30)
000cd4  7e0001e0  vmmov mr0, r2
000cd8  1f010002  addli r2, zero, 256
000cdc  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000ce0  e3005ff8  loadli.w r1,  -984(r30)
000ce4  7e0001e0  vmmov mr0, r2
000ce8  1f010004  addli r2, zero, 512
000cec  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000cf0  e3405ff8  loadli.w r1,  -980(r30)
000cf4  7e0001e0  vmmov mr0, r2
000cf8  1f010008  addli r2, zero, 1024
000cfc  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000d00  e3006ff8  loadli.w r1,  -976(r30)
000d04  7e0001e0  vmmov mr0, r2
000d08  1f010010  addli r2, zero, 2048
000d0c  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000d10  e3007ff8  loadli.w r1,  -968(r30)
000d14  7e0001e0  vmmov mr0, r2
000d18  1f010020  addli r2, zero, 4096
000d1c  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000d20  e3008ff8  loadli.w r1,  -960(r30)
000d24  7e0001e0  vmmov mr0, r2
000d28  1f010040  addli r2, zero, 8192
000d2c  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000d30  e3009ff8  loadli.w r1,  -952(r30)
000d34  7e0001e0  vmmov mr0, r2
000d38  2b410000  lui r2, 4
000d3c  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000d40  e300aff8  loadli.w r1,  -944(r30)
000d44  7e0001e0  vmmov mr0, r2
000d48  2b810000  lui r2, 8
000d4c  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000d50  e300bff8  loadli.w r1,  -936(r30)
000d54  7e0001e0  vmmov mr0, r2
000d58  2b010100  lui r2, 16
000d5c  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000d60  e300cff8  loadli.w r1,  -928(r30)
000d64  7e0001e0  vmmov mr0, r2
000d68  2b010200  lui r2, 32
000d6c  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000d70  e300dff8  loadli.w r1,  -920(r30)
000d74  7e0001e0  vmmov mr0, r2
000d78  2b010400  lui r2, 64
000d7c  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000d80  e300eff8  loadli.w r1,  -912(r30)
000d84  7e0001e0  vmmov mr0, r2
000d88  2b010800  lui r2, 128
000d8c  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000d90  e300fff8  loadli.w r1,  -904(r30)
000d94  7e0001e0  vmmov mr0, r2
000d98  2b011000  lui r2, 256
000d9c  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000da0  e3000ff9  loadli.w r1,  -896(r30)
000da4  7e0001e0  vmmov mr0, r2
000da8  2b012000  lui r2, 512
000dac  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000db0  e3001ff9  loadli.w r1,  -888(r30)
000db4  7e0001e0  vmmov mr0, r2
000db8  2b014000  lui r2, 1024
000dbc  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000dc0  e3002ff9  loadli.w r1,  -880(r30)
000dc4  7e0001e0  vmmov mr0, r2
000dc8  2b018000  lui r2, 2048
000dcc  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000dd0  e3003ff9  loadli.w r1,  -872(r30)
000dd4  7e0001e0  vmmov mr0, r2
000dd8  2b010001  lui r2, 4096
000ddc  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000de0  e3004ff9  loadli.w r1,  -864(r30)
000de4  7e0001e0  vmmov mr0, r2
000de8  2b010002  lui r2, 8192
000dec  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000df0  e3005ff9  loadli.w r1,  -856(r30)
000df4  7e0001e0  vmmov mr0, r2
000df8  2b010004  lui r2, 16384
000dfc  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000e00  e3006ff9  loadli.w r1,  -848(r30)
000e04  7e0001e0  vmmov mr0, r2
000e08  2b010008  lui r2, 32768
000e0c  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000e10  e3007ff9  loadli.w r1,  -840(r30)
000e14  7e0001e0  vmmov mr0, r2
000e18  2b010010  lui r2, 65536
000e1c  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000e20  e3008ff9  loadli.w r1,  -832(r30)
000e24  7e0001e0  vmmov mr0, r2
000e28  2b010020  lui r2, 131072
000e2c  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000e30  e3009ff9  loadli.w r1,  -824(r30)
000e34  7e0001e0  vmmov mr0, r2
000e38  2b010040  lui r2, 262144
000e3c  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000e40  e300cff9  loadli.w r1,  -800(r30)
000e44  7e0001e0  vmmov mr0, r2
000e48  2b010080  lui r2, 524288
000e4c  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000e50  e300dff9  loadli.w r1,  -792(r30)
000e54  7e0001e0  vmmov mr0, r2
000e58  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000e5c  63019ff6  loadli.w r2,  -1208(r30)
000e60  96451402  vadd.hf.mz.rn vr11{mr1}, vr8, vr1
000e64  b6102502  vmax.f.mz vr1{mr1}, vr10, vr2
000e68  b6947002  vmax.f.mz vr9{mr1}, vr1, vr7
000e6c  06b40500  vfp162float_l.rn vr8, vr11
000e70  b6948402  vmax.f.mz vr9{mr1}, vr9, vr8
000e74  86f00500  vfp162float_h.rn vr1, vr11
000e78  b6941402  vmax.f.mz vr9{mr1}, vr9, vr1
000e7c  6af59ac0  vsrl.p vr10, r21, vr9
000e80  b694a402  vmax.f.mz vr9{mr1}, vr9, vr10
000e84  6af599c0  vsrl.p vr10, r19, vr9
000e88  b694a402  vmax.f.mz vr9{mr1}, vr9, vr10
000e8c  6a759bc0  vsrl.p vr10, r22, vr9
000e90  b694a402  vmax.f.mz vr9{mr1}, vr9, vr10
000e94  6af59bc0  vsrl.p vr10, r23, vr9
000e98  b694a402  vmax.f.mz vr9{mr1}, vr9, vr10
000e9c  fa900440  vextracti.f r1, 0(vr9)
000ea0  73601100  stores.w r1, 0(r2)
000ea4  00a00300  mfence { lm, sm, gm }
000ea8  63098ff6  loadli.w r18,  -1216(r30)
000eac  80210904  csr_set csr3, r18
000eb0  00d00100  sync_group
000eb4  634a7ff6  loadli.w r20,  -1220(r30)
000eb8  3b210a00  bneq r20, zero, 72
000ebc  e344aff6  loadli.w r9,  -1196(r30)
000ec0  efc00400  loads.w r1, 0(r9)
000ec4  6fc14400  loads.w r2, 4(r9)
000ec8  efc18400  loads.w r3, 8(r9)
000ecc  6fc2c400  loads.w r4, 12(r9)
000ed0  efc20401  loads.w r5, 16(r9)
000ed4  6fc34401  loads.w r6, 20(r9)
000ed8  efc38401  loads.w r7, 24(r9)
000edc  6fc4c401  loads.w r8, 28(r9)
000ee0  8be02048  max.f r1, r1, r2
000ee4  8be03048  max.f r1, r1, r3
000ee8  8be04048  max.f r1, r1, r4
000eec  8be05048  max.f r1, r1, r5
000ef0  8be06048  max.f r1, r1, r6
000ef4  8be07048  max.f r1, r1, r7
000ef8  8be08048  max.f r1, r1, r8
000efc  73e01400  stores.w r1, 0(r9)
000f00  00a00300  mfence { lm, sm, gm }
000f04  80210904  csr_set csr3, r18
000f08  00d00100  sync_group
000f0c  e340aff6  loadli.w r1,  -1196(r30)
000f10  2b010080  lui r2, 524288
000f14  1f0c0ffe  addli r24, r30, -256
000f18  efc00000  loads.w r1, 0(r1)
000f1c  97a02000  xor r1, r1, r2
000f20  12924002  vadd.f.mz.rn vr4{mr1}, r1, vr4
000f24  92945002  vadd.f.mz.rn vr9{mr1}, r1, vr5
000f28  92913002  vadd.f.mz.rn vr3{mr1}, r1, vr3
000f2c  46104fe2  vstore_mask16.mz vr4{mr1}, 1792(r30)
000f30  12936002  vadd.f.mz.rn vr6{mr1}, r1, vr6
000f34  46143fe2  vstore_mask16.mz vr3{mr1}, 1856(r30)
000f38  46186fe2  vstore_mask16.mz vr6{mr1}, 1920(r30)
000f3c  461c9fe2  vstore_mask16.mz vr9{mr1}, 1984(r30)
000f40  12952002  vadd.f.mz.rn vr10{mr1}, r1, vr2
000f44  92927002  vadd.f.mz.rn vr5{mr1}, r1, vr7
000f48  92938002  vadd.f.mz.rn vr7{mr1}, r1, vr8
000f4c  00a00000  mfence { lm }
000f50  63010c00  loadli.w r2,  0(r24)
000f54  e3410c00  loadli.w r3,  4(r24)
000f58  63021c00  loadli.w r4,  8(r24)
000f5c  e3421c00  loadli.w r5,  12(r24)
000f60  63032c00  loadli.w r6,  16(r24)
000f64  e3432c00  loadli.w r7,  20(r24)
000f68  63043c00  loadli.w r8,  24(r24)
000f6c  e3443c00  loadli.w r9,  28(r24)
000f70  63054c00  loadli.w r10,  32(r24)
000f74  e3454c00  loadli.w r11,  36(r24)
000f78  63065c00  loadli.w r12,  40(r24)
000f7c  e3465c00  loadli.w r13,  44(r24)
000f80  63076c00  loadli.w r14,  48(r24)
000f84  e3476c00  loadli.w r15,  52(r24)
000f88  63087c00  loadli.w r16,  56(r24)
000f8c  e3487c00  loadli.w r17,  60(r24)
000f90  0f010100  exp.f.rn r2, r2
000f94  8f810100  exp.f.rn r3, r3
000f98  0f020200  exp.f.rn r4, r4
000f9c  8f820200  exp.f.rn r5, r5
000fa0  0f030300  exp.f.rn r6, r6
000fa4  8f830300  exp.f.rn r7, r7
000fa8  0f040400  exp.f.rn r8, r8
000fac  8f840400  exp.f.rn r9, r9
000fb0  0f050500  exp.f.rn r10, r10
000fb4  8f850500  exp.f.rn r11, r11
000fb8  0f060600  exp.f.rn r12, r12
000fbc  8f860600  exp.f.rn r13, r13
000fc0  0f070700  exp.f.rn r14, r14
000fc4  8f870700  exp.f.rn r15, r15
000fc8  0f080800  exp.f.rn r16, r16
000fcc  8f880800  exp.f.rn r17, r17
000fd0  67002c00  storeli.w r2, 0(r24)
000fd4  67403c00  storeli.w r3, 4(r24)
000fd8  e7004c00  storeli.w r4, 8(r24)
000fdc  e7405c00  storeli.w r5, 12(r24)
000fe0  67016c00  storeli.w r6, 16(r24)
000fe4  67417c00  storeli.w r7, 20(r24)
000fe8  e7018c00  storeli.w r8, 24(r24)
000fec  e7419c00  storeli.w r9, 28(r24)
000ff0  6702ac00  storeli.w r10, 32(r24)
000ff4  6742bc00  storeli.w r11, 36(r24)
000ff8  e702cc00  storeli.w r12, 40(r24)
000ffc  e742dc00  storeli.w r13, 44(r24)
001000  6703ec00  storeli.w r14, 48(r24)
001004  6743fc00  storeli.w r15, 52(r24)
001008  e7030c01  storeli.w r16, 56(r24)
00100c  e7431c01  storeli.w r17, 60(r24)
001010  63018c00  loadli.w r2,  64(r24)
001014  e3418c00  loadli.w r3,  68(r24)
001018  63029c00  loadli.w r4,  72(r24)
00101c  e3429c00  loadli.w r5,  76(r24)
001020  6303ac00  loadli.w r6,  80(r24)
001024  e343ac00  loadli.w r7,  84(r24)
001028  6304bc00  loadli.w r8,  88(r24)
00102c  e344bc00  loadli.w r9,  92(r24)
001030  6305cc00  loadli.w r10,  96(r24)
001034  e345cc00  loadli.w r11,  100(r24)
001038  6306dc00  loadli.w r12,  104(r24)
00103c  e346dc00  loadli.w r13,  108(r24)
001040  6307ec00  loadli.w r14,  112(r24)
001044  e347ec00  loadli.w r15,  116(r24)
001048  6308fc00  loadli.w r16,  120(r24)
00104c  e348fc00  loadli.w r17,  124(r24)
001050  0f010100  exp.f.rn r2, r2
001054  8f810100  exp.f.rn r3, r3
001058  0f020200  exp.f.rn r4, r4
00105c  8f820200  exp.f.rn r5, r5
001060  0f030300  exp.f.rn r6, r6
001064  8f830300  exp.f.rn r7, r7
001068  0f040400  exp.f.rn r8, r8
00106c  8f840400  exp.f.rn r9, r9
001070  0f050500  exp.f.rn r10, r10
001074  8f850500  exp.f.rn r11, r11
001078  0f060600  exp.f.rn r12, r12
00107c  8f860600  exp.f.rn r13, r13
001080  0f070700  exp.f.rn r14, r14
001084  8f870700  exp.f.rn r15, r15
001088  0f080800  exp.f.rn r16, r16
00108c  8f880800  exp.f.rn r17, r17
001090  67042c00  storeli.w r2, 64(r24)
001094  67443c00  storeli.w r3, 68(r24)
001098  e7044c00  storeli.w r4, 72(r24)
00109c  e7445c00  storeli.w r5, 76(r24)
0010a0  67056c00  storeli.w r6, 80(r24)
0010a4  67457c00  storeli.w r7, 84(r24)
0010a8  e7058c00  storeli.w r8, 88(r24)
0010ac  e7459c00  storeli.w r9, 92(r24)
0010b0  6706ac00  storeli.w r10, 96(r24)
0010b4  6746bc00  storeli.w r11, 100(r24)
0010b8  e706cc00  storeli.w r12, 104(r24)
0010bc  e746dc00  storeli.w r13, 108(r24)
0010c0  6707ec00  storeli.w r14, 112(r24)
0010c4  6747fc00  storeli.w r15, 116(r24)
0010c8  e7070c01  storeli.w r16, 120(r24)
0010cc  e7471c01  storeli.w r17, 124(r24)
0010d0  63010c01  loadli.w r2,  128(r24)
0010d4  e3410c01  loadli.w r3,  132(r24)
0010d8  63021c01  loadli.w r4,  136(r24)
0010dc  e3421c01  loadli.w r5,  140(r24)
0010e0  63032c01  loadli.w r6,  144(r24)
0010e4  e3432c01  loadli.w r7,  148(r24)
0010e8  63043c01  loadli.w r8,  152(r24)
0010ec  e3443c01  loadli.w r9,  156(r24)
0010f0  63054c01  loadli.w r10,  160(r24)
0010f4  e3454c01  loadli.w r11,  164(r24)
0010f8  63065c01  loadli.w r12,  168(r24)
0010fc  e3465c01  loadli.w r13,  172(r24)
001100  63076c01  loadli.w r14,  176(r24)
001104  e3476c01  loadli.w r15,  180(r24)
001108  63087c01  loadli.w r16,  184(r24)
00110c  e3487c01  loadli.w r17,  188(r24)
001110  0f010100  exp.f.rn r2, r2
001114  8f810100  exp.f.rn r3, r3
001118  0f020200  exp.f.rn r4, r4
00111c  8f820200  exp.f.rn r5, r5
001120  0f030300  exp.f.rn r6, r6
001124  8f830300  exp.f.rn r7, r7
001128  0f040400  exp.f.rn r8, r8
00112c  8f840400  exp.f.rn r9, r9
001130  0f050500  exp.f.rn r10, r10
001134  8f850500  exp.f.rn r11, r11
001138  0f060600  exp.f.rn r12, r12
00113c  8f860600  exp.f.rn r13, r13
001140  0f070700  exp.f.rn r14, r14
001144  8f870700  exp.f.rn r15, r15
001148  0f080800  exp.f.rn r16, r16
00114c  8f880800  exp.f.rn r17, r17
001150  67082c00  storeli.w r2, 128(r24)
001154  67483c00  storeli.w r3, 132(r24)
001158  e7084c00  storeli.w r4, 136(r24)
00115c  e7485c00  storeli.w r5, 140(r24)
001160  67096c00  storeli.w r6, 144(r24)
001164  67497c00  storeli.w r7, 148(r24)
001168  e7098c00  storeli.w r8, 152(r24)
00116c  e7499c00  storeli.w r9, 156(r24)
001170  670aac00  storeli.w r10, 160(r24)
001174  674abc00  storeli.w r11, 164(r24)
001178  e70acc00  storeli.w r12, 168(r24)
00117c  e74adc00  storeli.w r13, 172(r24)
001180  670bec00  storeli.w r14, 176(r24)
001184  674bfc00  storeli.w r15, 180(r24)
001188  e70b0c01  storeli.w r16, 184(r24)
00118c  e74b1c01  storeli.w r17, 188(r24)
001190  63018c01  loadli.w r2,  192(r24)
001194  e3418c01  loadli.w r3,  196(r24)
001198  63029c01  loadli.w r4,  200(r24)
00119c  e3429c01  loadli.w r5,  204(r24)
0011a0  6303ac01  loadli.w r6,  208(r24)
0011a4  e343ac01  loadli.w r7,  212(r24)
0011a8  6304bc01  loadli.w r8,  216(r24)
0011ac  e344bc01  loadli.w r9,  220(r24)
0011b0  6305cc01  loadli.w r10,  224(r24)
0011b4  e345cc01  loadli.w r11,  228(r24)
0011b8  6306dc01  loadli.w r12,  232(r24)
0011bc  e346dc01  loadli.w r13,  236(r24)
0011c0  6307ec01  loadli.w r14,  240(r24)
0011c4  e347ec01  loadli.w r15,  244(r24)
0011c8  6308fc01  loadli.w r16,  248(r24)
0011cc  e348fc01  loadli.w r17,  252(r24)
0011d0  0f010100  exp.f.rn r2, r2
0011d4  8f810100  exp.f.rn r3, r3
0011d8  0f020200  exp.f.rn r4, r4
0011dc  8f820200  exp.f.rn r5, r5
0011e0  0f030300  exp.f.rn r6, r6
0011e4  8f830300  exp.f.rn r7, r7
0011e8  0f040400  exp.f.rn r8, r8
0011ec  8f840400  exp.f.rn r9, r9
0011f0  0f050500  exp.f.rn r10, r10
0011f4  8f850500  exp.f.rn r11, r11
0011f8  0f060600  exp.f.rn r12, r12
0011fc  8f860600  exp.f.rn r13, r13
001200  0f070700  exp.f.rn r14, r14
001204  8f870700  exp.f.rn r15, r15
001208  0f080800  exp.f.rn r16, r16
00120c  8f880800  exp.f.rn r17, r17
001210  670c2c00  storeli.w r2, 192(r24)
001214  674c3c00  storeli.w r3, 196(r24)
001218  e70c4c00  storeli.w r4, 200(r24)
00121c  e74c5c00  storeli.w r5, 204(r24)
001220  670d6c00  storeli.w r6, 208(r24)
001224  674d7c00  storeli.w r7, 212(r24)
001228  e70d8c00  storeli.w r8, 216(r24)
00122c  e74d9c00  storeli.w r9, 220(r24)
001230  670eac00  storeli.w r10, 224(r24)
001234  674ebc00  storeli.w r11, 228(r24)
001238  e70ecc00  storeli.w r12, 232(r24)
00123c  e74edc00  storeli.w r13, 236(r24)
001240  670fec00  storeli.w r14, 240(r24)
001244  674ffc00  storeli.w r15, 244(r24)
001248  e70f0c01  storeli.w r16, 248(r24)
00124c  e74f1c01  storeli.w r17, 252(r24)
001250  00a00000  mfence { lm }
001254  12931002  vadd.f.mz.rn vr6{mr1}, r1, vr1
001258  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
00125c  c2118fe2  vload_mask16.mz vr3{mr1}, 1856(r30)
001260  42110fe3  vload_mask16.mz vr2{mr1}, 1920(r30)
001264  c2108fe3  vload_mask16.mz vr1{mr1}, 1984(r30)
001268  4610afe2  vstore_mask16.mz vr10{mr1}, 1792(r30)
00126c  46145fe2  vstore_mask16.mz vr5{mr1}, 1856(r30)
001270  46187fe2  vstore_mask16.mz vr7{mr1}, 1920(r30)
001274  461c6fe2  vstore_mask16.mz vr6{mr1}, 1984(r30)
001278  00a00000  mfence { lm }
00127c  e3000c00  loadli.w r1,  0(r24)
001280  63410c00  loadli.w r2,  4(r24)
001284  e3011c00  loadli.w r3,  8(r24)
001288  63421c00  loadli.w r4,  12(r24)
00128c  e3022c00  loadli.w r5,  16(r24)
001290  63432c00  loadli.w r6,  20(r24)
001294  e3033c00  loadli.w r7,  24(r24)
001298  63443c00  loadli.w r8,  28(r24)
00129c  e3044c00  loadli.w r9,  32(r24)
0012a0  63454c00  loadli.w r10,  36(r24)
0012a4  e3055c00  loadli.w r11,  40(r24)
0012a8  63465c00  loadli.w r12,  44(r24)
0012ac  e3066c00  loadli.w r13,  48(r24)
0012b0  63476c00  loadli.w r14,  52(r24)
0012b4  e3077c00  loadli.w r15,  56(r24)
0012b8  63487c00  loadli.w r16,  60(r24)
0012bc  8f800000  exp.f.rn r1, r1
0012c0  0f010100  exp.f.rn r2, r2
0012c4  8f810100  exp.f.rn r3, r3
0012c8  0f020200  exp.f.rn r4, r4
0012cc  8f820200  exp.f.rn r5, r5
0012d0  0f030300  exp.f.rn r6, r6
0012d4  8f830300  exp.f.rn r7, r7
0012d8  0f040400  exp.f.rn r8, r8
0012dc  8f840400  exp.f.rn r9, r9
0012e0  0f050500  exp.f.rn r10, r10
0012e4  8f850500  exp.f.rn r11, r11
0012e8  0f060600  exp.f.rn r12, r12
0012ec  8f860600  exp.f.rn r13, r13
0012f0  0f070700  exp.f.rn r14, r14
0012f4  8f870700  exp.f.rn r15, r15
0012f8  0f080800  exp.f.rn r16, r16
0012fc  67001c00  storeli.w r1, 0(r24)
001300  67402c00  storeli.w r2, 4(r24)
001304  e7003c00  storeli.w r3, 8(r24)
001308  e7404c00  storeli.w r4, 12(r24)
00130c  67015c00  storeli.w r5, 16(r24)
001310  67416c00  storeli.w r6, 20(r24)
001314  e7017c00  storeli.w r7, 24(r24)
001318  e7418c00  storeli.w r8, 28(r24)
00131c  67029c00  storeli.w r9, 32(r24)
001320  6742ac00  storeli.w r10, 36(r24)
001324  e702bc00  storeli.w r11, 40(r24)
001328  e742cc00  storeli.w r12, 44(r24)
00132c  6703dc00  storeli.w r13, 48(r24)
001330  6743ec00  storeli.w r14, 52(r24)
001334  e703fc00  storeli.w r15, 56(r24)
001338  e7430c01  storeli.w r16, 60(r24)
00133c  e3008c00  loadli.w r1,  64(r24)
001340  63418c00  loadli.w r2,  68(r24)
001344  e3019c00  loadli.w r3,  72(r24)
001348  63429c00  loadli.w r4,  76(r24)
00134c  e302ac00  loadli.w r5,  80(r24)
001350  6343ac00  loadli.w r6,  84(r24)
001354  e303bc00  loadli.w r7,  88(r24)
001358  6344bc00  loadli.w r8,  92(r24)
00135c  e304cc00  loadli.w r9,  96(r24)
001360  6345cc00  loadli.w r10,  100(r24)
001364  e305dc00  loadli.w r11,  104(r24)
001368  6346dc00  loadli.w r12,  108(r24)
00136c  e306ec00  loadli.w r13,  112(r24)
001370  6347ec00  loadli.w r14,  116(r24)
001374  e307fc00  loadli.w r15,  120(r24)
001378  6348fc00  loadli.w r16,  124(r24)
00137c  8f800000  exp.f.rn r1, r1
001380  0f010100  exp.f.rn r2, r2
001384  8f810100  exp.f.rn r3, r3
001388  0f020200  exp.f.rn r4, r4
00138c  8f820200  exp.f.rn r5, r5
001390  0f030300  exp.f.rn r6, r6
001394  8f830300  exp.f.rn r7, r7
001398  0f040400  exp.f.rn r8, r8
00139c  8f840400  exp.f.rn r9, r9
0013a0  0f050500  exp.f.rn r10, r10
0013a4  8f850500  exp.f.rn r11, r11
0013a8  0f060600  exp.f.rn r12, r12
0013ac  8f860600  exp.f.rn r13, r13
0013b0  0f070700  exp.f.rn r14, r14
0013b4  8f870700  exp.f.rn r15, r15
0013b8  0f080800  exp.f.rn r16, r16
0013bc  67041c00  storeli.w r1, 64(r24)
0013c0  67442c00  storeli.w r2, 68(r24)
0013c4  e7043c00  storeli.w r3, 72(r24)
0013c8  e7444c00  storeli.w r4, 76(r24)
0013cc  67055c00  storeli.w r5, 80(r24)
0013d0  67456c00  storeli.w r6, 84(r24)
0013d4  e7057c00  storeli.w r7, 88(r24)
0013d8  e7458c00  storeli.w r8, 92(r24)
0013dc  67069c00  storeli.w r9, 96(r24)
0013e0  6746ac00  storeli.w r10, 100(r24)
0013e4  e706bc00  storeli.w r11, 104(r24)
0013e8  e746cc00  storeli.w r12, 108(r24)
0013ec  6707dc00  storeli.w r13, 112(r24)
0013f0  6747ec00  storeli.w r14, 116(r24)
0013f4  e707fc00  storeli.w r15, 120(r24)
0013f8  e7470c01  storeli.w r16, 124(r24)
0013fc  e3000c01  loadli.w r1,  128(r24)
001400  63410c01  loadli.w r2,  132(r24)
001404  e3011c01  loadli.w r3,  136(r24)
001408  63421c01  loadli.w r4,  140(r24)
00140c  e3022c01  loadli.w r5,  144(r24)
001410  63432c01  loadli.w r6,  148(r24)
001414  e3033c01  loadli.w r7,  152(r24)
001418  63443c01  loadli.w r8,  156(r24)
00141c  e3044c01  loadli.w r9,  160(r24)
001420  63454c01  loadli.w r10,  164(r24)
001424  e3055c01  loadli.w r11,  168(r24)
001428  63465c01  loadli.w r12,  172(r24)
00142c  e3066c01  loadli.w r13,  176(r24)
001430  63476c01  loadli.w r14,  180(r24)
001434  e3077c01  loadli.w r15,  184(r24)
001438  63487c01  loadli.w r16,  188(r24)
00143c  8f800000  exp.f.rn r1, r1
001440  0f010100  exp.f.rn r2, r2
001444  8f810100  exp.f.rn r3, r3
001448  0f020200  exp.f.rn r4, r4
00144c  8f820200  exp.f.rn r5, r5
001450  0f030300  exp.f.rn r6, r6
001454  8f830300  exp.f.rn r7, r7
001458  0f040400  exp.f.rn r8, r8
00145c  8f840400  exp.f.rn r9, r9
001460  0f050500  exp.f.rn r10, r10
001464  8f850500  exp.f.rn r11, r11
001468  0f060600  exp.f.rn r12, r12
00146c  8f860600  exp.f.rn r13, r13
001470  0f070700  exp.f.rn r14, r14
001474  8f870700  exp.f.rn r15, r15
001478  0f080800  exp.f.rn r16, r16
00147c  67081c00  storeli.w r1, 128(r24)
001480  67482c00  storeli.w r2, 132(r24)
001484  e7083c00  storeli.w r3, 136(r24)
001488  e7484c00  storeli.w r4, 140(r24)
00148c  67095c00  storeli.w r5, 144(r24)
001490  67496c00  storeli.w r6, 148(r24)
001494  e7097c00  storeli.w r7, 152(r24)
001498  e7498c00  storeli.w r8, 156(r24)
00149c  670a9c00  storeli.w r9, 160(r24)
0014a0  674aac00  storeli.w r10, 164(r24)
0014a4  e70abc00  storeli.w r11, 168(r24)
0014a8  e74acc00  storeli.w r12, 172(r24)
0014ac  670bdc00  storeli.w r13, 176(r24)
0014b0  674bec00  storeli.w r14, 180(r24)
0014b4  e70bfc00  storeli.w r15, 184(r24)
0014b8  e74b0c01  storeli.w r16, 188(r24)
0014bc  e3008c01  loadli.w r1,  192(r24)
0014c0  63418c01  loadli.w r2,  196(r24)
0014c4  e3019c01  loadli.w r3,  200(r24)
0014c8  63429c01  loadli.w r4,  204(r24)
0014cc  e302ac01  loadli.w r5,  208(r24)
0014d0  6343ac01  loadli.w r6,  212(r24)
0014d4  e303bc01  loadli.w r7,  216(r24)
0014d8  6344bc01  loadli.w r8,  220(r24)
0014dc  e304cc01  loadli.w r9,  224(r24)
0014e0  6345cc01  loadli.w r10,  228(r24)
0014e4  e305dc01  loadli.w r11,  232(r24)
0014e8  6346dc01  loadli.w r12,  236(r24)
0014ec  e306ec01  loadli.w r13,  240(r24)
0014f0  6347ec01  loadli.w r14,  244(r24)
0014f4  e307fc01  loadli.w r15,  248(r24)
0014f8  6348fc01  loadli.w r16,  252(r24)
0014fc  8f800000  exp.f.rn r1, r1
001500  0f010100  exp.f.rn r2, r2
001504  8f810100  exp.f.rn r3, r3
001508  0f020200  exp.f.rn r4, r4
00150c  8f820200  exp.f.rn r5, r5
001510  0f030300  exp.f.rn r6, r6
001514  8f830300  exp.f.rn r7, r7
001518  0f040400  exp.f.rn r8, r8
00151c  8f840400  exp.f.rn r9, r9
001520  0f050500  exp.f.rn r10, r10
001524  8f850500  exp.f.rn r11, r11
001528  0f060600  exp.f.rn r12, r12
00152c  8f860600  exp.f.rn r13, r13
001530  0f070700  exp.f.rn r14, r14
001534  8f870700  exp.f.rn r15, r15
001538  0f080800  exp.f.rn r16, r16
00153c  670c1c00  storeli.w r1, 192(r24)
001540  674c2c00  storeli.w r2, 196(r24)
001544  e70c3c00  storeli.w r3, 200(r24)
001548  e74c4c00  storeli.w r4, 204(r24)
00154c  670d5c00  storeli.w r5, 208(r24)
001550  674d6c00  storeli.w r6, 212(r24)
001554  e70d7c00  storeli.w r7, 216(r24)
001558  e74d8c00  storeli.w r8, 220(r24)
00155c  670e9c00  storeli.w r9, 224(r24)
001560  674eac00  storeli.w r10, 228(r24)
001564  e70ebc00  storeli.w r11, 232(r24)
001568  e74ecc00  storeli.w r12, 236(r24)
00156c  670fdc00  storeli.w r13, 240(r24)
001570  674fec00  storeli.w r14, 244(r24)
001574  e70ffc00  storeli.w r15, 248(r24)
001578  e74f0c01  storeli.w r16, 252(r24)
00157c  00a00000  mfence { lm }
001580  c2120fe2  vload_mask16.mz vr5{mr1}, 1792(r30)
001584  16143202  vadd.f.mz.rn vr8{mr1}, vr4, vr3
001588  16132402  vadd.f.mz.rn vr6{mr1}, vr8, vr2
00158c  16131302  vadd.f.mz.rn vr6{mr1}, vr6, vr1
001590  96135302  vadd.f.mz.rn vr7{mr1}, vr6, vr5
001594  42138fe2  vload_mask16.mz vr6{mr1}, 1856(r30)
001598  16946302  vadd.f.mz.rn vr8{mr1}, vr7, vr6
00159c  c2130fe3  vload_mask16.mz vr7{mr1}, 1920(r30)
0015a0  96147402  vadd.f.mz.rn vr9{mr1}, vr8, vr7
0015a4  42148fe3  vload_mask16.mz vr8{mr1}, 1984(r30)
0015a8  63419ff6  loadli.w r2,  -1204(r30)
0015ac  96948402  vadd.f.mz.rn vr9{mr1}, vr9, vr8
0015b0  6af59ac0  vsrl.p vr10, r21, vr9
0015b4  9694a402  vadd.f.mz.rn vr9{mr1}, vr9, vr10
0015b8  6af599c0  vsrl.p vr10, r19, vr9
0015bc  9694a402  vadd.f.mz.rn vr9{mr1}, vr9, vr10
0015c0  6a759bc0  vsrl.p vr10, r22, vr9
0015c4  9694a402  vadd.f.mz.rn vr9{mr1}, vr9, vr10
0015c8  6af59bc0  vsrl.p vr10, r23, vr9
0015cc  9694a402  vadd.f.mz.rn vr9{mr1}, vr9, vr10
0015d0  fa900440  vextracti.f r1, 0(vr9)
0015d4  73601100  stores.w r1, 0(r2)
0015d8  00a00300  mfence { lm, sm, gm }
0015dc  80210904  csr_set csr3, r18
0015e0  00d00100  sync_group
0015e4  3b210a00  bneq r20, zero, 72
0015e8  6302aff6  loadli.w r4,  -1200(r30)
0015ec  ef400200  loads.w r1, 0(r4)
0015f0  6f414200  loads.w r2, 4(r4)
0015f4  ef418200  loads.w r3, 8(r4)
0015f8  8be02010  add.f.rn r1, r1, r2
0015fc  6f41c200  loads.w r2, 12(r4)
001600  8be03010  add.f.rn r1, r1, r3
001604  ef410201  loads.w r3, 16(r4)
001608  8be02010  add.f.rn r1, r1, r2
00160c  6f414201  loads.w r2, 20(r4)
001610  8be03010  add.f.rn r1, r1, r3
001614  ef418201  loads.w r3, 24(r4)
001618  8be02010  add.f.rn r1, r1, r2
00161c  6f41c201  loads.w r2, 28(r4)
001620  8be03010  add.f.rn r1, r1, r3
001624  8be02010  add.f.rn r1, r1, r2
001628  73601200  stores.w r1, 0(r4)
00162c  00a00300  mfence { lm, sm, gm }
001630  80210904  csr_set csr3, r18
001634  00d00100  sync_group
001638  e300aff6  loadli.w r1,  -1200(r30)
00163c  2b01803f  lui r2, 260096
001640  9f1a0000  addli r21, zero, 1
001644  efc00000  loads.w r1, 0(r1)
001648  8f001118  div.f.rn r1, r2, r1
00164c  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
001650  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
001654  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
001658  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
00165c  86140200  vfloat2fp16_l.rn vr9, vr4
001660  86d40100  vfloat2fp16_h.rn vr9, vr3
001664  8a925002  vmul.f.mz.rn vr5{mr1}, r1, vr5
001668  0a936002  vmul.f.mz.rn vr6{mr1}, r1, vr6
00166c  8a937002  vmul.f.mz.rn vr7{mr1}, r1, vr7
001670  0a948002  vmul.f.mz.rn vr8{mr1}, r1, vr8
001674  46109fa2  vstore_mask16.mz vr9{mr1}, 1280(r30)
001678  86110100  vfloat2fp16_l.rn vr3, vr2
00167c  86d10000  vfloat2fp16_h.rn vr3, vr1
001680  86900200  vfloat2fp16_l.rn vr1, vr5
001684  86500300  vfloat2fp16_h.rn vr1, vr6
001688  46143fa2  vstore_mask16.mz vr3{mr1}, 1344(r30)
00168c  06910300  vfloat2fp16_l.rn vr2, vr7
001690  06510400  vfloat2fp16_h.rn vr2, vr8
001694  46181fa2  vstore_mask16.mz vr1{mr1}, 1408(r30)
001698  461c2fa2  vstore_mask16.mz vr2{mr1}, 1472(r30)
00169c  00a00000  mfence { lm }
0016a0  63018f00  loadli.w r2,  64(r30)
0016a4  e3401ff6  loadli.w r1,  -1268(r30)
0016a8  e349fff9  loadli.w r19,  -772(r30)
0016ac  e341dff9  loadli.w r3,  -788(r30)
0016b0  3fce21f4  blt.s r3, r2, -5232
0016b4  9f000000  addli r1, zero, 0
0016b8  5b71fdff  j -5240
0016bc  9f0e0ff6  addli sp, r30, -1280
0016c0  9f8e0e0a  addli sp, sp, 1280
0016c4  00a00300  mfence { lm, sm, gm }
0016c8  00100000  exit
0016cc  00100000  exit
0016d0  00100000  exit
0016d4  00100000  exit
0016d8  00100000  exit
0016dc  00100000  exit
0016e0  00100000  exit
0016e4  00100000  exit
0016e8  00100000  exit
0016ec  00100000  exit
0016f0  00100000  exit
0016f4  00100000  exit
0016f8  00100000  exit
0016fc  00100000  exit
001700  00100000  exit
001704  00100000  exit
001708  00100000  exit
00170c  00100000  exit
001710  00100000  exit
001714  00100000  exit
001718  00100000  exit
00171c  00100000  exit
001720  00100000  exit
001724  00100000  exit
001728  00100000  exit
00172c  00100000  exit
001730  00100000  exit
001734  00100000  exit
001738  00100000  exit
00173c  00100000  exit
001740  00100000  exit
001744  00100000  exit
001748  00100000  exit
00174c  00100000  exit
001750  00100000  exit
001754  00100000  exit
001758  00100000  exit
00175c  00100000  exit
001760  00100000  exit
001764  00100000  exit
001768  00100000  exit
00176c  00100000  exit
001770  00100000  exit
001774  00100000  exit
001778  00100000  exit
00177c  00100000  exit
001780  00100000  exit
001784  00100000  exit
001788  00100000  exit
00178c  00100000  exit
001790  00100000  exit
001794  00100000  exit
001798  00100000  exit
00179c  00100000  exit
0017a0  00100000  exit
0017a4  00100000  exit
0017a8  00100000  exit
0017ac  00100000  exit
0017b0  00100000  exit
0017b4  00100000  exit
0017b8  00100000  exit
0017bc  00100000  exit
0017c0  00100000  exit
0017c4  00100000  exit
0017c8  00100000  exit
0017cc  00100000  exit
0017d0  00100000  exit
0017d4  00100000  exit
0017d8  00100000  exit
0017dc  00100000  exit
0017e0  00100000  exit
0017e4  00100000  exit
0017e8  00100000  exit
0017ec  00100000  exit
0017f0  00100000  exit
0017f4  00100000  exit
0017f8  00100000  exit
0017fc  00100000  exit
001800  00100000  exit
001804  00100000  exit
001808  00100000  exit
00180c  00100000  exit
001810  00100000  exit
001814  00100000  exit
001818  00100000  exit
00181c  00100000  exit
001820  00100000  exit
001824  00100000  exit
001828  00100000  exit
00182c  00100000  exit
001830  00100000  exit
001834  00100000  exit
001838  00100000  exit
00183c  00100000  exit
001840  00100000  exit
001844  00100000  exit
001848  00100000  exit
00184c  00100000  exit
001850  00100000  exit
001854  00100000  exit
001858  00100000  exit
00185c  00100000  exit
001860  00100000  exit
001864  00100000  exit
001868  00100000  exit
00186c  00100000  exit
001870  00100000  exit
001874  00100000  exit
001878  00100000  exit
00187c  00100000  exit
001880  00100000  exit
001884  00100000  exit
001888  00100000  exit
00188c  00100000  exit
001890  00100000  exit
001894  00100000  exit
001898  00100000  exit
00189c  00100000  exit
0018a0  00100000  exit
0018a4  00100000  exit
0018a8  00100000  exit
0018ac  00100000  exit
0018b0  00100000  exit
0018b4  00100000  exit
0018b8  00100000  exit
0018bc  00100000  exit
0018c0  00100000  exit
0018c4  00100000  exit
0018c8  00100000  exit
0018cc  00100000  exit
0018d0  00100000  exit
0018d4  00100000  exit
0018d8  00100000  exit
0018dc  00100000  exit
0018e0  00100000  exit
0018e4  00100000  exit
0018e8  00100000  exit
0018ec  00100000  exit
0018f0  00100000  exit
0018f4  00100000  exit
0018f8  00100000  exit
0018fc  00100000  exit
001900  00100000  exit
001904  00100000  exit
001908  00100000  exit
