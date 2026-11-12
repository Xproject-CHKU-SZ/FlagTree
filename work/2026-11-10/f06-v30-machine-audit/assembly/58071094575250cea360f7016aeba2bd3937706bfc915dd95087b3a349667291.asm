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
0000f8  005a0002  load_param_i r20, 0
0000fc  1bb12200  slli r2, r5, 2
000100  9f800000  addli r1, r1, 0
000104  6304cf00  loadli.w r8,  96(r30)
000108  6342bf00  loadli.w r4,  92(r30)
00010c  9b19f3ff  ori r19, r6, 4095
000110  e343cf00  loadli.w r7,  100(r30)
000114  8b912010  add.s r3, r1, r2
000118  9f842150  addli r9, r3, 10256
00011c  9f810110  addli r3, r3, 2048
000120  e7449ff6  storeli.w r9, -1204(r30)
000124  73e00400  stores.w zero, 0(r9)
000128  00a00300  mfence { lm, sm, gm }
00012c  80a10904  csr_set csr3, r19
000130  00d00100  sync_group
000134  e7043ff6  storeli.w r3, -1208(r30)
000138  73e00100  stores.w zero, 0(r3)
00013c  8b114420  mul.s r3, r8, r4
000140  00a00300  mfence { lm, sm, gm }
000144  80a10904  csr_set csr3, r19
000148  00d00100  sync_group
00014c  8b917120  mul.s r3, r3, r7
000150  67443ff6  storeli.w r3, -1212(r30)
000154  4bb8410b  ble.s r3, r20, 5644
000158  9b8a7200  andi r21, r5, 7
00015c  80d70002  load_param_i r15, 1
000160  eb530f03  load.d r[8:9], 48(r30)
000164  e3045f00  loadli.w r9,  40(r30)
000168  1f1b0000  addli r22, zero, 1
00016c  6b550f02  load.d r[11:12], 32(r30)
000170  1f090001  addli r18, zero, 128
000174  63471f00  loadli.w r14,  12(r30)
000178  9bc23200  srli r5, r5, 3
00017c  63438f00  loadli.w r6,  68(r30)
000180  6b568f01  load.d r[13:14], 24(r30)
000184  eb510f05  load.d r[4:5], 80(r30)
000188  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00018c  67043ff7  storeli.w r19, -1216(r30)
000190  e703fff6  storeli.w r15, -1224(r30)
000194  9bb77a00  slli r15, r21, 7
000198  e7435ff7  storeli.w r21, -1220(r30)
00019c  33880728  zext_int2long r[17:18], r15
0001a0  8b94f418  sub.s r9, r9, r15
0001a4  8bb30321  mul.sl r[8:9], r[8:9], r[17:18]
0001a8  8b940448  max.s r9, r9, zero
0001ac  97b36303  sll.d r[8:9], r[8:9], r22
0001b0  8b942441  min.s r9, r9, r18
0001b4  8b237510  add.ul r[8:9], r[11:12], r[8:9]
0001b8  73387fb2  store.d r[8:9], -1232(r30)
0001bc  9bb31400  slli r7, r9, 1
0001c0  1b847200  andi r8, r5, 7
0001c4  abf2ffff  lui r5, 1048575
0001c8  e7427ff6  storeli.w r7, -1236(r30)
0001cc  8b13f718  sub.s r7, r14, r15
0001d0  9b9202fe  ori r5, r5, 4064
0001d4  e7028ff6  storeli.w r8, -1240(r30)
0001d8  33040428  zext_int2long r[9:10], r8
0001dc  8b930348  max.s r7, r7, zero
0001e0  17015100  and r2, r2, r5
0001e4  73308fb2  store.d r[9:10], -1248(r30)
0001e8  8b922341  min.s r5, r7, r18
0001ec  8b902010  add.s r1, r1, r2
0001f0  0b11f318  sub.s r2, r6, r15
0001f4  8b330621  mul.sl r[8:9], r[13:14], r[17:18]
0001f8  9bb21200  slli r5, r5, 1
0001fc  0b110148  max.s r2, r2, zero
000200  733c7fb0  store.d r[8:9], -1256(r30)
000204  1f040ffc  addli r8, r30, -512
000208  67415ff6  storeli.w r5, -1260(r30)
00020c  9f820010  addli r5, r1, 2048
000210  9f802050  addli r1, r1, 10256
000214  67051ff6  storeli.w r1, -1200(r30)
000218  8b102141  min.s r1, r2, r18
00021c  0bb10121  mul.sl r[3:4], r[4:5], r[17:18]
000220  67455ff6  storeli.w r5, -1196(r30)
000224  9bb01000  slli r1, r1, 1
000228  73342fb0  store.d r[3:4], -1272(r30)
00022c  67401ff6  storeli.w r1, -1276(r30)
000230  9f100000  addli r1, zero, 1
000234  fe8100e0  vmmov mr3, r1
000238  5b090000  j 72
00023c  6b518f04  load.d r[3:4], 72(r30)
000240  6b520fcf  load.d r[5:6], -784(r30)
000244  0b312220  mul.sl r[3:4], r[5:6], r[3:4]
000248  6b528fb0  load.d r[5:6], -1272(r30)
00024c  0b214110  add.ul r[3:4], r[3:4], r[5:6]
000250  eb528f03  load.d r[6:7], 56(r30)
000254  2b0200f0  lui r4, 983040
000258  17316103  sll.d r[3:4], r[3:4], r22
00025c  97904000  or r1, r1, r4
000260  0ba12210  add.ul r[3:4], r[6:7], r[3:4]
000264  ff308100  s_lm2gm r1, r8, 0(r[3:4])
000268  e3007ff6  loadli.w r1,  -1224(r30)
00026c  00a00000  mfence { lm }
000270  0b1a1a10  add.s r20, r20, r1
000274  e3408ff6  loadli.w r1,  -1212(r30)
000278  3f201a00  blt.s r20, r1, 8
00027c  db9c0200  j 5348
000280  e340cf00  loadli.w r1,  100(r30)
000284  6301cf00  loadli.w r2,  96(r30)
000288  eb520fb2  load.d r[6:7], -1248(r30)
00028c  2b0200f0  lui r4, 983040
000290  9f030ffa  addli r7, r30, -768
000294  e74f4ff9  storeli.w r20, -772(r30)
000298  8b101a30  div.s r1, r20, r1
00029c  8b902030  div.s r1, r1, r2
0002a0  9bb03000  slli r1, r1, 3
0002a4  33910028  sext_int2long r[3:4], r1
0002a8  97125102  or.d r[6:7], r[3:4], r[6:7]
0002ac  63415ff6  loadli.w r2,  -1236(r30)
0002b0  73385fce  store.d r[6:7], -784(r30)
0002b4  17114100  or r2, r2, r4
0002b8  eb510f01  load.d r[4:5], 16(r30)
0002bc  8bb13220  mul.sl r[4:5], r[6:7], r[4:5]
0002c0  eb520fb3  load.d r[6:7], -1232(r30)
0002c4  7fa17200  l_gm2lm r2, r7, 0(r[6:7])
0002c8  eb528fb1  load.d r[6:7], -1256(r30)
0002cc  00a00000  mfence { lm }
0002d0  0ba15110  add.ul r[3:4], r[4:5], r[6:7]
0002d4  63025ff6  loadli.w r4,  -1240(r30)
0002d8  17316103  sll.d r[3:4], r[3:4], r22
0002dc  17934000  or r6, r1, r4
0002e0  6b520f00  load.d r[5:6], 0(r30)
0002e4  e3001f00  loadli.w r1,  8(r30)
0002e8  e74e6ff8  storeli.w r6, -788(r30)
0002ec  8b212210  add.ul r[4:5], r[5:6], r[3:4]
0002f0  63412ff6  loadli.w r2,  -1260(r30)
0002f4  3f201300  blt.s r6, r1, 8
0002f8  1f010000  addli r2, zero, 0
0002fc  6b3e8fd6  load.hu r28, -664(r30)
000300  eb300fd0  load.hu r1, -768(r30)
000304  ab0200f0  lui r5, 983040
000308  6b33cfd3  load.hu r6, -708(r30)
00030c  eb33efd3  load.hu r7, -706(r30)
000310  eb342fd4  load.hu r9, -702(r30)
000314  6b354fd4  load.hu r10, -700(r30)
000318  eb356fd4  load.hu r11, -698(r30)
00031c  6b368fd4  load.hu r12, -696(r30)
000320  eb36afd4  load.hu r13, -694(r30)
000324  6b37cfd4  load.hu r14, -692(r30)
000328  eb37efd4  load.hu r15, -690(r30)
00032c  6b380fd5  load.hu r16, -688(r30)
000330  eb382fd5  load.hu r17, -686(r30)
000334  6b394fd5  load.hu r18, -684(r30)
000338  eb396fd5  load.hu r19, -682(r30)
00033c  6b3a8fd5  load.hu r20, -680(r30)
000340  eb3aafd5  load.hu r21, -678(r30)
000344  6b3bcfd5  load.hu r22, -676(r30)
000348  eb3befd5  load.hu r23, -674(r30)
00034c  6b3c0fd6  load.hu r24, -672(r30)
000350  eb3c2fd6  load.hu r25, -670(r30)
000354  6b3d4fd6  load.hu r26, -668(r30)
000358  eb3d6fd6  load.hu r27, -666(r30)
00035c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000360  12330002  vadd.s.mz vr6{mr1}, zero, vr0
000364  92330002  vadd.s.mz vr7{mr1}, zero, vr0
000368  12340002  vadd.s.mz vr8{mr1}, zero, vr0
00036c  97125100  or r5, r2, r5
000370  6b314fd3  load.hu r2, -716(r30)
000374  e705cff7  storeli.w r28, -1192(r30)
000378  6b3eafd6  load.hu r28, -662(r30)
00037c  67431ff8  storeli.w r1, -972(r30)
000380  eb302fd0  load.hu r1, -766(r30)
000384  ffa28100  l_gm2lm r5, r8, 0(r[4:5])
000388  eb316fd3  load.hu r3, -714(r30)
00038c  6b328fd3  load.hu r4, -712(r30)
000390  eb32afd3  load.hu r5, -710(r30)
000394  6b340fd4  load.hu r8, -704(r30)
000398  e745cff7  storeli.w r28, -1188(r30)
00039c  6b3ecfd6  load.hu r28, -660(r30)
0003a0  e7431ff8  storeli.w r1, -964(r30)
0003a4  eb304fd0  load.hu r1, -764(r30)
0003a8  6706cff7  storeli.w r28, -1184(r30)
0003ac  6b3eefd6  load.hu r28, -658(r30)
0003b0  67441ff8  storeli.w r1, -956(r30)
0003b4  eb306fd0  load.hu r1, -762(r30)
0003b8  6746cff7  storeli.w r28, -1180(r30)
0003bc  6b3e0fd7  load.hu r28, -656(r30)
0003c0  e7441ff8  storeli.w r1, -948(r30)
0003c4  eb308fd0  load.hu r1, -760(r30)
0003c8  e706cff7  storeli.w r28, -1176(r30)
0003cc  6b3e2fd7  load.hu r28, -654(r30)
0003d0  67451ff8  storeli.w r1, -940(r30)
0003d4  eb30afd0  load.hu r1, -758(r30)
0003d8  e746cff7  storeli.w r28, -1172(r30)
0003dc  6b3e4fd7  load.hu r28, -652(r30)
0003e0  e7451ff8  storeli.w r1, -932(r30)
0003e4  eb30cfd0  load.hu r1, -756(r30)
0003e8  6707cff7  storeli.w r28, -1168(r30)
0003ec  6b3e6fd7  load.hu r28, -650(r30)
0003f0  67461ff8  storeli.w r1, -924(r30)
0003f4  eb30efd0  load.hu r1, -754(r30)
0003f8  6747cff7  storeli.w r28, -1164(r30)
0003fc  6b3e8fd7  load.hu r28, -648(r30)
000400  e7461ff8  storeli.w r1, -916(r30)
000404  eb300fd1  load.hu r1, -752(r30)
000408  e707cff7  storeli.w r28, -1160(r30)
00040c  6b3eafd7  load.hu r28, -646(r30)
000410  67471ff8  storeli.w r1, -908(r30)
000414  eb302fd1  load.hu r1, -750(r30)
000418  e747cff7  storeli.w r28, -1156(r30)
00041c  6b3ecfd7  load.hu r28, -644(r30)
000420  e7471ff8  storeli.w r1, -900(r30)
000424  eb304fd1  load.hu r1, -748(r30)
000428  6708cff7  storeli.w r28, -1152(r30)
00042c  6b3eefd7  load.hu r28, -642(r30)
000430  67481ff8  storeli.w r1, -892(r30)
000434  eb306fd1  load.hu r1, -746(r30)
000438  6748cff7  storeli.w r28, -1148(r30)
00043c  6b3e0fd8  load.hu r28, -640(r30)
000440  e7481ff8  storeli.w r1, -884(r30)
000444  eb308fd1  load.hu r1, -744(r30)
000448  e708cff7  storeli.w r28, -1144(r30)
00044c  6b3e2fd8  load.hu r28, -638(r30)
000450  67491ff8  storeli.w r1, -876(r30)
000454  eb30afd1  load.hu r1, -742(r30)
000458  e748cff7  storeli.w r28, -1140(r30)
00045c  6b3e4fd8  load.hu r28, -636(r30)
000460  e7491ff8  storeli.w r1, -868(r30)
000464  eb30cfd1  load.hu r1, -740(r30)
000468  6709cff7  storeli.w r28, -1136(r30)
00046c  6b3e6fd8  load.hu r28, -634(r30)
000470  674a1ff8  storeli.w r1, -860(r30)
000474  eb30efd1  load.hu r1, -738(r30)
000478  6749cff7  storeli.w r28, -1132(r30)
00047c  6b3e8fd8  load.hu r28, -632(r30)
000480  e74a1ff8  storeli.w r1, -852(r30)
000484  eb300fd2  load.hu r1, -736(r30)
000488  e709cff7  storeli.w r28, -1128(r30)
00048c  6b3eafd8  load.hu r28, -630(r30)
000490  674b1ff8  storeli.w r1, -844(r30)
000494  eb302fd2  load.hu r1, -734(r30)
000498  e749cff7  storeli.w r28, -1124(r30)
00049c  6b3ecfd8  load.hu r28, -628(r30)
0004a0  e74b1ff8  storeli.w r1, -836(r30)
0004a4  eb304fd2  load.hu r1, -732(r30)
0004a8  670acff7  storeli.w r28, -1120(r30)
0004ac  6b3eefd8  load.hu r28, -626(r30)
0004b0  670c1ff8  storeli.w r1, -832(r30)
0004b4  eb306fd2  load.hu r1, -730(r30)
0004b8  674acff7  storeli.w r28, -1116(r30)
0004bc  6b3e0fd9  load.hu r28, -624(r30)
0004c0  674c1ff8  storeli.w r1, -828(r30)
0004c4  eb308fd2  load.hu r1, -728(r30)
0004c8  e70acff7  storeli.w r28, -1112(r30)
0004cc  6b3e2fd9  load.hu r28, -622(r30)
0004d0  e70c1ff8  storeli.w r1, -824(r30)
0004d4  eb30afd2  load.hu r1, -726(r30)
0004d8  e74acff7  storeli.w r28, -1108(r30)
0004dc  6b3e4fd9  load.hu r28, -620(r30)
0004e0  e74c1ff8  storeli.w r1, -820(r30)
0004e4  eb30cfd2  load.hu r1, -724(r30)
0004e8  670bcff7  storeli.w r28, -1104(r30)
0004ec  6b3e6fd9  load.hu r28, -618(r30)
0004f0  670d1ff8  storeli.w r1, -816(r30)
0004f4  eb30efd2  load.hu r1, -722(r30)
0004f8  674bcff7  storeli.w r28, -1100(r30)
0004fc  6b3e8fd9  load.hu r28, -616(r30)
000500  674d1ff8  storeli.w r1, -812(r30)
000504  eb300fd3  load.hu r1, -720(r30)
000508  e70bcff7  storeli.w r28, -1096(r30)
00050c  6b3eafd9  load.hu r28, -614(r30)
000510  e70d1ff8  storeli.w r1, -808(r30)
000514  eb302fd3  load.hu r1, -718(r30)
000518  e74bcff7  storeli.w r28, -1092(r30)
00051c  6b3ecfd9  load.hu r28, -612(r30)
000520  670ccff7  storeli.w r28, -1088(r30)
000524  6b3eefd9  load.hu r28, -610(r30)
000528  674ccff7  storeli.w r28, -1084(r30)
00052c  6b3e0fda  load.hu r28, -608(r30)
000530  e70ccff7  storeli.w r28, -1080(r30)
000534  6b3e2fda  load.hu r28, -606(r30)
000538  e74ccff7  storeli.w r28, -1076(r30)
00053c  6b3e4fda  load.hu r28, -604(r30)
000540  670dcff7  storeli.w r28, -1072(r30)
000544  6b3e6fda  load.hu r28, -602(r30)
000548  674dcff7  storeli.w r28, -1068(r30)
00054c  6b3e8fda  load.hu r28, -600(r30)
000550  e70dcff7  storeli.w r28, -1064(r30)
000554  6b3eafda  load.hu r28, -598(r30)
000558  e74dcff7  storeli.w r28, -1060(r30)
00055c  6b3ecfda  load.hu r28, -596(r30)
000560  670ecff7  storeli.w r28, -1056(r30)
000564  6b3eefda  load.hu r28, -594(r30)
000568  674ecff7  storeli.w r28, -1052(r30)
00056c  6b3e0fdb  load.hu r28, -592(r30)
000570  e70ecff7  storeli.w r28, -1048(r30)
000574  6b3e2fdb  load.hu r28, -590(r30)
000578  e74ecff7  storeli.w r28, -1044(r30)
00057c  6b3e4fdb  load.hu r28, -588(r30)
000580  670fcff7  storeli.w r28, -1040(r30)
000584  6b3e6fdb  load.hu r28, -586(r30)
000588  674fcff7  storeli.w r28, -1036(r30)
00058c  6b3e8fdb  load.hu r28, -584(r30)
000590  e70fcff7  storeli.w r28, -1032(r30)
000594  6b3eafdb  load.hu r28, -582(r30)
000598  e74fcff7  storeli.w r28, -1028(r30)
00059c  6b3ecfdb  load.hu r28, -580(r30)
0005a0  6700cff9  storeli.w r28, -1024(r30)
0005a4  6b3eefdb  load.hu r28, -578(r30)
0005a8  6740cff9  storeli.w r28, -1020(r30)
0005ac  6b3e0fdc  load.hu r28, -576(r30)
0005b0  e700cff9  storeli.w r28, -1016(r30)
0005b4  6b3e2fdc  load.hu r28, -574(r30)
0005b8  e740cff9  storeli.w r28, -1012(r30)
0005bc  6b3e4fdc  load.hu r28, -572(r30)
0005c0  6701cff9  storeli.w r28, -1008(r30)
0005c4  6b3e6fdc  load.hu r28, -570(r30)
0005c8  6741cff9  storeli.w r28, -1004(r30)
0005cc  6b3e8fdc  load.hu r28, -568(r30)
0005d0  e701cff9  storeli.w r28, -1000(r30)
0005d4  6b3eafdc  load.hu r28, -566(r30)
0005d8  e741cff9  storeli.w r28, -996(r30)
0005dc  6b3ecfdc  load.hu r28, -564(r30)
0005e0  6702cff9  storeli.w r28, -992(r30)
0005e4  6b3eefdc  load.hu r28, -562(r30)
0005e8  6742cff9  storeli.w r28, -988(r30)
0005ec  6b3e0fdd  load.hu r28, -560(r30)
0005f0  e702cff9  storeli.w r28, -984(r30)
0005f4  6b3e2fdd  load.hu r28, -558(r30)
0005f8  e742cff9  storeli.w r28, -980(r30)
0005fc  6b3e4fdd  load.hu r28, -556(r30)
000600  6703cff9  storeli.w r28, -976(r30)
000604  6b3e6fdd  load.hu r28, -554(r30)
000608  e703cff9  storeli.w r28, -968(r30)
00060c  6b3e8fdd  load.hu r28, -552(r30)
000610  6704cff9  storeli.w r28, -960(r30)
000614  6b3eafdd  load.hu r28, -550(r30)
000618  e704cff9  storeli.w r28, -952(r30)
00061c  6b3ecfdd  load.hu r28, -548(r30)
000620  6705cff9  storeli.w r28, -944(r30)
000624  6b3eefdd  load.hu r28, -546(r30)
000628  e705cff9  storeli.w r28, -936(r30)
00062c  6b3e0fde  load.hu r28, -544(r30)
000630  6706cff9  storeli.w r28, -928(r30)
000634  6b3e2fde  load.hu r28, -542(r30)
000638  e706cff9  storeli.w r28, -920(r30)
00063c  6b3e4fde  load.hu r28, -540(r30)
000640  6707cff9  storeli.w r28, -912(r30)
000644  6b3e6fde  load.hu r28, -538(r30)
000648  e707cff9  storeli.w r28, -904(r30)
00064c  6b3e8fde  load.hu r28, -536(r30)
000650  6708cff9  storeli.w r28, -896(r30)
000654  6b3eafde  load.hu r28, -534(r30)
000658  e708cff9  storeli.w r28, -888(r30)
00065c  6b3ecfde  load.hu r28, -532(r30)
000660  6709cff9  storeli.w r28, -880(r30)
000664  6b3eefde  load.hu r28, -530(r30)
000668  e709cff9  storeli.w r28, -872(r30)
00066c  6b3e0fdf  load.hu r28, -528(r30)
000670  670acff9  storeli.w r28, -864(r30)
000674  6b3e2fdf  load.hu r28, -526(r30)
000678  e70acff9  storeli.w r28, -856(r30)
00067c  6b3e4fdf  load.hu r28, -524(r30)
000680  670bcff9  storeli.w r28, -848(r30)
000684  6b3e6fdf  load.hu r28, -522(r30)
000688  e70bcff9  storeli.w r28, -840(r30)
00068c  6b3e8fdf  load.hu r28, -520(r30)
000690  e74dcff9  storeli.w r28, -804(r30)
000694  6b3eafdf  load.hu r28, -518(r30)
000698  670ecff9  storeli.w r28, -800(r30)
00069c  6b3ecfdf  load.hu r28, -516(r30)
0006a0  674ecff9  storeli.w r28, -796(r30)
0006a4  6b3eefdf  load.hu r28, -514(r30)
0006a8  e70ecff9  storeli.w r28, -792(r30)
0006ac  00a00000  mfence { lm }
0006b0  42120fc2  vload_mask16.mz vr4{mr1}, 1536(r30)
0006b4  c2118fc2  vload_mask16.mz vr3{mr1}, 1600(r30)
0006b8  42110fc3  vload_mask16.mz vr2{mr1}, 1664(r30)
0006bc  c2108fc3  vload_mask16.mz vr1{mr1}, 1728(r30)
0006c0  634e6ff8  loadli.w r28,  -972(r30)
0006c4  ea425e36  vor.hf.mh vr5{mr3}, r28, vr5
0006c8  1f2e0000  addli r28, zero, 2
0006cc  7e000ee0  vmmov mr0, r28
0006d0  634e7ff8  loadli.w r28,  -964(r30)
0006d4  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
0006d8  1f4e0000  addli r28, zero, 4
0006dc  7e010ee0  vmmov mr2, r28
0006e0  634e8ff8  loadli.w r28,  -956(r30)
0006e4  ea425e34  vor.hf.mh vr5{mr2}, r28, vr5
0006e8  1f0e1000  addli r28, zero, 8
0006ec  7e000ee0  vmmov mr0, r28
0006f0  634e9ff8  loadli.w r28,  -948(r30)
0006f4  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
0006f8  1f0e2000  addli r28, zero, 16
0006fc  7e000ee0  vmmov mr0, r28
000700  634eaff8  loadli.w r28,  -940(r30)
000704  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000708  1f0e4000  addli r28, zero, 32
00070c  7e000ee0  vmmov mr0, r28
000710  634ebff8  loadli.w r28,  -932(r30)
000714  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000718  1f0e8000  addli r28, zero, 64
00071c  7e000ee0  vmmov mr0, r28
000720  634ecff8  loadli.w r28,  -924(r30)
000724  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000728  1f0e0001  addli r28, zero, 128
00072c  7e000ee0  vmmov mr0, r28
000730  634edff8  loadli.w r28,  -916(r30)
000734  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000738  1f0e0002  addli r28, zero, 256
00073c  7e000ee0  vmmov mr0, r28
000740  634eeff8  loadli.w r28,  -908(r30)
000744  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000748  1f0e0004  addli r28, zero, 512
00074c  7e000ee0  vmmov mr0, r28
000750  634efff8  loadli.w r28,  -900(r30)
000754  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000758  1f0e0008  addli r28, zero, 1024
00075c  7e000ee0  vmmov mr0, r28
000760  634e0ff9  loadli.w r28,  -892(r30)
000764  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000768  1f0e0010  addli r28, zero, 2048
00076c  7e000ee0  vmmov mr0, r28
000770  634e1ff9  loadli.w r28,  -884(r30)
000774  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000778  1f0e0020  addli r28, zero, 4096
00077c  7e000ee0  vmmov mr0, r28
000780  634e2ff9  loadli.w r28,  -876(r30)
000784  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000788  1f0e0040  addli r28, zero, 8192
00078c  7e000ee0  vmmov mr0, r28
000790  634e3ff9  loadli.w r28,  -868(r30)
000794  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000798  2b4e0000  lui r28, 4
00079c  7e000ee0  vmmov mr0, r28
0007a0  634e4ff9  loadli.w r28,  -860(r30)
0007a4  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
0007a8  2b8e0000  lui r28, 8
0007ac  7e000ee0  vmmov mr0, r28
0007b0  634e5ff9  loadli.w r28,  -852(r30)
0007b4  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
0007b8  2b0e0100  lui r28, 16
0007bc  7e000ee0  vmmov mr0, r28
0007c0  634e6ff9  loadli.w r28,  -844(r30)
0007c4  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
0007c8  2b0e0200  lui r28, 32
0007cc  7e000ee0  vmmov mr0, r28
0007d0  634e7ff9  loadli.w r28,  -836(r30)
0007d4  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
0007d8  2b0e0400  lui r28, 64
0007dc  7e000ee0  vmmov mr0, r28
0007e0  630e8ff9  loadli.w r28,  -832(r30)
0007e4  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
0007e8  2b0e0800  lui r28, 128
0007ec  7e000ee0  vmmov mr0, r28
0007f0  634e8ff9  loadli.w r28,  -828(r30)
0007f4  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
0007f8  2b0e1000  lui r28, 256
0007fc  7e000ee0  vmmov mr0, r28
000800  630e9ff9  loadli.w r28,  -824(r30)
000804  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000808  2b0e2000  lui r28, 512
00080c  7e000ee0  vmmov mr0, r28
000810  634e9ff9  loadli.w r28,  -820(r30)
000814  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000818  2b0e4000  lui r28, 1024
00081c  7e000ee0  vmmov mr0, r28
000820  630eaff9  loadli.w r28,  -816(r30)
000824  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000828  2b0e8000  lui r28, 2048
00082c  7e000ee0  vmmov mr0, r28
000830  634eaff9  loadli.w r28,  -812(r30)
000834  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000838  2b0e0001  lui r28, 4096
00083c  7e000ee0  vmmov mr0, r28
000840  630ebff9  loadli.w r28,  -808(r30)
000844  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
000848  2b0e0002  lui r28, 8192
00084c  7e000ee0  vmmov mr0, r28
000850  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
000854  ab000004  lui r1, 16384
000858  7e8000e0  vmmov mr0, r1
00085c  ab000008  lui r1, 32768
000860  ea425130  vor.hf.mh vr5{mr0}, r2, vr5
000864  7e8000e0  vmmov mr0, r1
000868  ab000010  lui r1, 65536
00086c  2b011000  lui r2, 256
000870  eac25130  vor.hf.mh vr5{mr0}, r3, vr5
000874  7e8000e0  vmmov mr0, r1
000878  ab000020  lui r1, 131072
00087c  ea425230  vor.hf.mh vr5{mr0}, r4, vr5
000880  7e8000e0  vmmov mr0, r1
000884  ab000040  lui r1, 262144
000888  eac25230  vor.hf.mh vr5{mr0}, r5, vr5
00088c  7e8000e0  vmmov mr0, r1
000890  ab000080  lui r1, 524288
000894  ea425330  vor.hf.mh vr5{mr0}, r6, vr5
000898  7e8000e0  vmmov mr0, r1
00089c  9f200000  addli r1, zero, 2
0008a0  eac25330  vor.hf.mh vr5{mr0}, r7, vr5
0008a4  6a436436  vor.hf.mh vr6{mr3}, r8, vr6
0008a8  7e8000e0  vmmov mr0, r1
0008ac  9f001000  addli r1, zero, 8
0008b0  6ac36430  vor.hf.mh vr6{mr0}, r9, vr6
0008b4  7e8000e0  vmmov mr0, r1
0008b8  9f002000  addli r1, zero, 16
0008bc  96c24202  vadd.hf.mz.rn vr5{mr1}, vr5, vr4
0008c0  06b20200  vfp162float_l.rn vr4, vr5
0008c4  6a436534  vor.hf.mh vr6{mr2}, r10, vr6
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
000934  6a436a30  vor.hf.mh vr6{mr0}, r20, vr6
000938  7e8000e0  vmmov mr0, r1
00093c  ab400000  lui r1, 4
000940  6ac36a30  vor.hf.mh vr6{mr0}, r21, vr6
000944  7e8000e0  vmmov mr0, r1
000948  ab800000  lui r1, 8
00094c  6a436b30  vor.hf.mh vr6{mr0}, r22, vr6
000950  7e8000e0  vmmov mr0, r1
000954  ab000100  lui r1, 16
000958  6ac36b30  vor.hf.mh vr6{mr0}, r23, vr6
00095c  7e8000e0  vmmov mr0, r1
000960  ab000200  lui r1, 32
000964  6a436c30  vor.hf.mh vr6{mr0}, r24, vr6
000968  7e8000e0  vmmov mr0, r1
00096c  ab000400  lui r1, 64
000970  6ac36c30  vor.hf.mh vr6{mr0}, r25, vr6
000974  7e8000e0  vmmov mr0, r1
000978  ab000800  lui r1, 128
00097c  6a436d30  vor.hf.mh vr6{mr0}, r26, vr6
000980  7e8000e0  vmmov mr0, r1
000984  6ac36d30  vor.hf.mh vr6{mr0}, r27, vr6
000988  e300bff6  loadli.w r1,  -1192(r30)
00098c  7e0001e0  vmmov mr0, r2
000990  2b012000  lui r2, 512
000994  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
000998  e340bff6  loadli.w r1,  -1188(r30)
00099c  7e0001e0  vmmov mr0, r2
0009a0  2b014000  lui r2, 1024
0009a4  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
0009a8  e300cff6  loadli.w r1,  -1184(r30)
0009ac  7e0001e0  vmmov mr0, r2
0009b0  2b018000  lui r2, 2048
0009b4  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
0009b8  e340cff6  loadli.w r1,  -1180(r30)
0009bc  7e0001e0  vmmov mr0, r2
0009c0  2b010001  lui r2, 4096
0009c4  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
0009c8  e300dff6  loadli.w r1,  -1176(r30)
0009cc  7e0001e0  vmmov mr0, r2
0009d0  2b010004  lui r2, 16384
0009d4  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
0009d8  ab000002  lui r1, 8192
0009dc  7e8000e0  vmmov mr0, r1
0009e0  e340dff6  loadli.w r1,  -1172(r30)
0009e4  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
0009e8  e300eff6  loadli.w r1,  -1168(r30)
0009ec  7e0001e0  vmmov mr0, r2
0009f0  2b010008  lui r2, 32768
0009f4  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
0009f8  e340eff6  loadli.w r1,  -1164(r30)
0009fc  7e0001e0  vmmov mr0, r2
000a00  2b010020  lui r2, 131072
000a04  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
000a08  ab000010  lui r1, 65536
000a0c  7e0001e0  vmmov mr0, r2
000a10  2b010080  lui r2, 524288
000a14  7e8100e0  vmmov mr2, r1
000a18  e300fff6  loadli.w r1,  -1160(r30)
000a1c  6ac36034  vor.hf.mh vr6{mr2}, r1, vr6
000a20  e340fff6  loadli.w r1,  -1156(r30)
000a24  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
000a28  ab000040  lui r1, 262144
000a2c  7e8000e0  vmmov mr0, r1
000a30  e3000ff7  loadli.w r1,  -1152(r30)
000a34  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
000a38  e3400ff7  loadli.w r1,  -1148(r30)
000a3c  7e0001e0  vmmov mr0, r2
000a40  1f210000  addli r2, zero, 2
000a44  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
000a48  e3001ff7  loadli.w r1,  -1144(r30)
000a4c  7e0001e0  vmmov mr0, r2
000a50  1f410000  addli r2, zero, 4
000a54  eac37036  vor.hf.mh vr7{mr3}, r1, vr7
000a58  e3401ff7  loadli.w r1,  -1140(r30)
000a5c  96443302  vadd.hf.mz.rn vr9{mr1}, vr6, vr3
000a60  86f10200  vfp162float_h.rn vr3, vr5
000a64  36153202  vmax.f.mz vr10{mr1}, vr4, vr3
000a68  06b30400  vfp162float_l.rn vr6, vr9
000a6c  86f20400  vfp162float_h.rn vr5, vr9
000a70  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000a74  e3002ff7  loadli.w r1,  -1136(r30)
000a78  7e0001e0  vmmov mr0, r2
000a7c  1f011000  addli r2, zero, 8
000a80  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000a84  e3402ff7  loadli.w r1,  -1132(r30)
000a88  7e0001e0  vmmov mr0, r2
000a8c  1f012000  addli r2, zero, 16
000a90  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000a94  e3003ff7  loadli.w r1,  -1128(r30)
000a98  7e0001e0  vmmov mr0, r2
000a9c  1f014000  addli r2, zero, 32
000aa0  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000aa4  e3403ff7  loadli.w r1,  -1124(r30)
000aa8  7e0001e0  vmmov mr0, r2
000aac  1f018000  addli r2, zero, 64
000ab0  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000ab4  e3004ff7  loadli.w r1,  -1120(r30)
000ab8  7e0001e0  vmmov mr0, r2
000abc  1f010001  addli r2, zero, 128
000ac0  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000ac4  e3404ff7  loadli.w r1,  -1116(r30)
000ac8  7e0001e0  vmmov mr0, r2
000acc  1f010002  addli r2, zero, 256
000ad0  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000ad4  e3005ff7  loadli.w r1,  -1112(r30)
000ad8  7e0001e0  vmmov mr0, r2
000adc  1f010004  addli r2, zero, 512
000ae0  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000ae4  e3405ff7  loadli.w r1,  -1108(r30)
000ae8  7e0001e0  vmmov mr0, r2
000aec  1f010008  addli r2, zero, 1024
000af0  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000af4  e3006ff7  loadli.w r1,  -1104(r30)
000af8  7e0001e0  vmmov mr0, r2
000afc  1f010010  addli r2, zero, 2048
000b00  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000b04  e3406ff7  loadli.w r1,  -1100(r30)
000b08  7e0001e0  vmmov mr0, r2
000b0c  1f010020  addli r2, zero, 4096
000b10  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000b14  e3007ff7  loadli.w r1,  -1096(r30)
000b18  7e0001e0  vmmov mr0, r2
000b1c  1f010040  addli r2, zero, 8192
000b20  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000b24  e3407ff7  loadli.w r1,  -1092(r30)
000b28  7e0001e0  vmmov mr0, r2
000b2c  2b410000  lui r2, 4
000b30  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000b34  e3008ff7  loadli.w r1,  -1088(r30)
000b38  7e0001e0  vmmov mr0, r2
000b3c  2b810000  lui r2, 8
000b40  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000b44  e3408ff7  loadli.w r1,  -1084(r30)
000b48  7e0001e0  vmmov mr0, r2
000b4c  2b010100  lui r2, 16
000b50  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000b54  e3009ff7  loadli.w r1,  -1080(r30)
000b58  7e0001e0  vmmov mr0, r2
000b5c  2b010200  lui r2, 32
000b60  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000b64  e3409ff7  loadli.w r1,  -1076(r30)
000b68  7e0001e0  vmmov mr0, r2
000b6c  2b010400  lui r2, 64
000b70  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000b74  e300aff7  loadli.w r1,  -1072(r30)
000b78  7e0001e0  vmmov mr0, r2
000b7c  2b010800  lui r2, 128
000b80  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000b84  e340aff7  loadli.w r1,  -1068(r30)
000b88  7e0001e0  vmmov mr0, r2
000b8c  2b011000  lui r2, 256
000b90  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000b94  e300bff7  loadli.w r1,  -1064(r30)
000b98  7e0001e0  vmmov mr0, r2
000b9c  2b012000  lui r2, 512
000ba0  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000ba4  e340bff7  loadli.w r1,  -1060(r30)
000ba8  7e0001e0  vmmov mr0, r2
000bac  2b014000  lui r2, 1024
000bb0  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000bb4  e300cff7  loadli.w r1,  -1056(r30)
000bb8  7e0001e0  vmmov mr0, r2
000bbc  2b018000  lui r2, 2048
000bc0  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000bc4  e340cff7  loadli.w r1,  -1052(r30)
000bc8  7e0001e0  vmmov mr0, r2
000bcc  2b010001  lui r2, 4096
000bd0  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000bd4  e300dff7  loadli.w r1,  -1048(r30)
000bd8  7e0001e0  vmmov mr0, r2
000bdc  2b010002  lui r2, 8192
000be0  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000be4  e340dff7  loadli.w r1,  -1044(r30)
000be8  7e0001e0  vmmov mr0, r2
000bec  2b010004  lui r2, 16384
000bf0  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000bf4  e300eff7  loadli.w r1,  -1040(r30)
000bf8  7e0001e0  vmmov mr0, r2
000bfc  2b010008  lui r2, 32768
000c00  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000c04  e340eff7  loadli.w r1,  -1036(r30)
000c08  7e0001e0  vmmov mr0, r2
000c0c  2b010020  lui r2, 131072
000c10  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000c14  e300fff7  loadli.w r1,  -1032(r30)
000c18  7e0001e0  vmmov mr0, r2
000c1c  2b010040  lui r2, 262144
000c20  eac37034  vor.hf.mh vr7{mr2}, r1, vr7
000c24  e340fff7  loadli.w r1,  -1028(r30)
000c28  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000c2c  e3000ff8  loadli.w r1,  -1024(r30)
000c30  7e0001e0  vmmov mr0, r2
000c34  2b010080  lui r2, 524288
000c38  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000c3c  e3400ff8  loadli.w r1,  -1020(r30)
000c40  7e0001e0  vmmov mr0, r2
000c44  1f210000  addli r2, zero, 2
000c48  eac37030  vor.hf.mh vr7{mr0}, r1, vr7
000c4c  e3001ff8  loadli.w r1,  -1016(r30)
000c50  7e0001e0  vmmov mr0, r2
000c54  1f410000  addli r2, zero, 4
000c58  6ac48036  vor.hf.mh vr8{mr3}, r1, vr8
000c5c  e3401ff8  loadli.w r1,  -1012(r30)
000c60  96c42302  vadd.hf.mz.rn vr9{mr1}, vr7, vr2
000c64  36116502  vmax.f.mz vr2{mr1}, vr10, vr6
000c68  36155102  vmax.f.mz vr10{mr1}, vr2, vr5
000c6c  86f30400  vfp162float_h.rn vr7, vr9
000c70  06b10400  vfp162float_l.rn vr2, vr9
000c74  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000c78  e3002ff8  loadli.w r1,  -1008(r30)
000c7c  7e0001e0  vmmov mr0, r2
000c80  1f011000  addli r2, zero, 8
000c84  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000c88  e3402ff8  loadli.w r1,  -1004(r30)
000c8c  7e0001e0  vmmov mr0, r2
000c90  1f012000  addli r2, zero, 16
000c94  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000c98  e3003ff8  loadli.w r1,  -1000(r30)
000c9c  7e0001e0  vmmov mr0, r2
000ca0  1f014000  addli r2, zero, 32
000ca4  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000ca8  e3403ff8  loadli.w r1,  -996(r30)
000cac  7e0001e0  vmmov mr0, r2
000cb0  1f018000  addli r2, zero, 64
000cb4  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000cb8  e3004ff8  loadli.w r1,  -992(r30)
000cbc  7e0001e0  vmmov mr0, r2
000cc0  1f010001  addli r2, zero, 128
000cc4  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000cc8  e3404ff8  loadli.w r1,  -988(r30)
000ccc  7e0001e0  vmmov mr0, r2
000cd0  1f010002  addli r2, zero, 256
000cd4  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000cd8  e3005ff8  loadli.w r1,  -984(r30)
000cdc  7e0001e0  vmmov mr0, r2
000ce0  1f010004  addli r2, zero, 512
000ce4  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000ce8  e3405ff8  loadli.w r1,  -980(r30)
000cec  7e0001e0  vmmov mr0, r2
000cf0  1f010008  addli r2, zero, 1024
000cf4  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000cf8  e3006ff8  loadli.w r1,  -976(r30)
000cfc  7e0001e0  vmmov mr0, r2
000d00  1f010010  addli r2, zero, 2048
000d04  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000d08  e3007ff8  loadli.w r1,  -968(r30)
000d0c  7e0001e0  vmmov mr0, r2
000d10  1f010020  addli r2, zero, 4096
000d14  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000d18  e3008ff8  loadli.w r1,  -960(r30)
000d1c  7e0001e0  vmmov mr0, r2
000d20  1f010040  addli r2, zero, 8192
000d24  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000d28  e3009ff8  loadli.w r1,  -952(r30)
000d2c  7e0001e0  vmmov mr0, r2
000d30  2b410000  lui r2, 4
000d34  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000d38  e300aff8  loadli.w r1,  -944(r30)
000d3c  7e0001e0  vmmov mr0, r2
000d40  2b810000  lui r2, 8
000d44  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000d48  e300bff8  loadli.w r1,  -936(r30)
000d4c  7e0001e0  vmmov mr0, r2
000d50  2b010100  lui r2, 16
000d54  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000d58  e300cff8  loadli.w r1,  -928(r30)
000d5c  7e0001e0  vmmov mr0, r2
000d60  2b010200  lui r2, 32
000d64  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000d68  e300dff8  loadli.w r1,  -920(r30)
000d6c  7e0001e0  vmmov mr0, r2
000d70  2b010400  lui r2, 64
000d74  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000d78  e300eff8  loadli.w r1,  -912(r30)
000d7c  7e0001e0  vmmov mr0, r2
000d80  2b010800  lui r2, 128
000d84  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000d88  e300fff8  loadli.w r1,  -904(r30)
000d8c  7e0001e0  vmmov mr0, r2
000d90  2b011000  lui r2, 256
000d94  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000d98  e3000ff9  loadli.w r1,  -896(r30)
000d9c  7e0001e0  vmmov mr0, r2
000da0  2b012000  lui r2, 512
000da4  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000da8  e3001ff9  loadli.w r1,  -888(r30)
000dac  7e0001e0  vmmov mr0, r2
000db0  2b014000  lui r2, 1024
000db4  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000db8  e3002ff9  loadli.w r1,  -880(r30)
000dbc  7e0001e0  vmmov mr0, r2
000dc0  2b018000  lui r2, 2048
000dc4  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000dc8  e3003ff9  loadli.w r1,  -872(r30)
000dcc  7e0001e0  vmmov mr0, r2
000dd0  2b010001  lui r2, 4096
000dd4  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000dd8  e3004ff9  loadli.w r1,  -864(r30)
000ddc  7e0001e0  vmmov mr0, r2
000de0  2b010002  lui r2, 8192
000de4  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000de8  e3005ff9  loadli.w r1,  -856(r30)
000dec  7e0001e0  vmmov mr0, r2
000df0  2b010004  lui r2, 16384
000df4  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000df8  e3006ff9  loadli.w r1,  -848(r30)
000dfc  7e0001e0  vmmov mr0, r2
000e00  2b010008  lui r2, 32768
000e04  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000e08  e3007ff9  loadli.w r1,  -840(r30)
000e0c  7e0001e0  vmmov mr0, r2
000e10  2b010020  lui r2, 131072
000e14  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000e18  e340bff9  loadli.w r1,  -804(r30)
000e1c  7e0001e0  vmmov mr0, r2
000e20  2b010040  lui r2, 262144
000e24  6ac48034  vor.hf.mh vr8{mr2}, r1, vr8
000e28  e300cff9  loadli.w r1,  -800(r30)
000e2c  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000e30  e340cff9  loadli.w r1,  -796(r30)
000e34  7e0001e0  vmmov mr0, r2
000e38  2b010080  lui r2, 524288
000e3c  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000e40  e300dff9  loadli.w r1,  -792(r30)
000e44  7e0001e0  vmmov mr0, r2
000e48  6ac48030  vor.hf.mh vr8{mr0}, r1, vr8
000e4c  96451402  vadd.hf.mz.rn vr11{mr1}, vr8, vr1
000e50  b6102502  vmax.f.mz vr1{mr1}, vr10, vr2
000e54  b6947002  vmax.f.mz vr9{mr1}, vr1, vr7
000e58  06b40500  vfp162float_l.rn vr8, vr11
000e5c  b6948402  vmax.f.mz vr9{mr1}, vr9, vr8
000e60  86f00500  vfp162float_h.rn vr1, vr11
000e64  b6941402  vmax.f.mz vr9{mr1}, vr9, vr1
000e68  fa900440  vextracti.f r1, 0(vr9)
000e6c  7a911440  vextracti.f r2, 1(vr9)
000e70  fa912440  vextracti.f r3, 2(vr9)
000e74  7a923440  vextracti.f r4, 3(vr9)
000e78  8be02048  max.f r1, r1, r2
000e7c  7a914440  vextracti.f r2, 4(vr9)
000e80  8be03048  max.f r1, r1, r3
000e84  fa915440  vextracti.f r3, 5(vr9)
000e88  8be04048  max.f r1, r1, r4
000e8c  7a926440  vextracti.f r4, 6(vr9)
000e90  8be02048  max.f r1, r1, r2
000e94  7a917440  vextracti.f r2, 7(vr9)
000e98  8be03048  max.f r1, r1, r3
000e9c  fa918440  vextracti.f r3, 8(vr9)
000ea0  8be04048  max.f r1, r1, r4
000ea4  7a929440  vextracti.f r4, 9(vr9)
000ea8  8be02048  max.f r1, r1, r2
000eac  7a91a440  vextracti.f r2, 10(vr9)
000eb0  8be03048  max.f r1, r1, r3
000eb4  fa91b440  vextracti.f r3, 11(vr9)
000eb8  8be04048  max.f r1, r1, r4
000ebc  7a92c440  vextracti.f r4, 12(vr9)
000ec0  8be02048  max.f r1, r1, r2
000ec4  7a91d440  vextracti.f r2, 13(vr9)
000ec8  8be03048  max.f r1, r1, r3
000ecc  fa91e440  vextracti.f r3, 14(vr9)
000ed0  8be04048  max.f r1, r1, r4
000ed4  7a92f440  vextracti.f r4, 15(vr9)
000ed8  8be02048  max.f r1, r1, r2
000edc  63019ff6  loadli.w r2,  -1208(r30)
000ee0  8be03048  max.f r1, r1, r3
000ee4  8be04048  max.f r1, r1, r4
000ee8  73601100  stores.w r1, 0(r2)
000eec  00a00300  mfence { lm, sm, gm }
000ef0  e3098ff6  loadli.w r19,  -1216(r30)
000ef4  80a10904  csr_set csr3, r19
000ef8  00d00100  sync_group
000efc  e34a7ff6  loadli.w r21,  -1220(r30)
000f00  3ba10a00  bneq r21, zero, 72
000f04  e344aff6  loadli.w r9,  -1196(r30)
000f08  efc00400  loads.w r1, 0(r9)
000f0c  6fc14400  loads.w r2, 4(r9)
000f10  efc18400  loads.w r3, 8(r9)
000f14  6fc2c400  loads.w r4, 12(r9)
000f18  efc20401  loads.w r5, 16(r9)
000f1c  6fc34401  loads.w r6, 20(r9)
000f20  efc38401  loads.w r7, 24(r9)
000f24  6fc4c401  loads.w r8, 28(r9)
000f28  8be02048  max.f r1, r1, r2
000f2c  8be03048  max.f r1, r1, r3
000f30  8be04048  max.f r1, r1, r4
000f34  8be05048  max.f r1, r1, r5
000f38  8be06048  max.f r1, r1, r6
000f3c  8be07048  max.f r1, r1, r7
000f40  8be08048  max.f r1, r1, r8
000f44  73e01400  stores.w r1, 0(r9)
000f48  00a00300  mfence { lm, sm, gm }
000f4c  80a10904  csr_set csr3, r19
000f50  00d00100  sync_group
000f54  e340aff6  loadli.w r1,  -1196(r30)
000f58  2b010080  lui r2, 524288
000f5c  1f090ffe  addli r18, r30, -256
000f60  efc00000  loads.w r1, 0(r1)
000f64  97a02000  xor r1, r1, r2
000f68  12924002  vadd.f.mz.rn vr4{mr1}, r1, vr4
000f6c  92945002  vadd.f.mz.rn vr9{mr1}, r1, vr5
000f70  92913002  vadd.f.mz.rn vr3{mr1}, r1, vr3
000f74  46104fe2  vstore_mask16.mz vr4{mr1}, 1792(r30)
000f78  12936002  vadd.f.mz.rn vr6{mr1}, r1, vr6
000f7c  46143fe2  vstore_mask16.mz vr3{mr1}, 1856(r30)
000f80  46186fe2  vstore_mask16.mz vr6{mr1}, 1920(r30)
000f84  461c9fe2  vstore_mask16.mz vr9{mr1}, 1984(r30)
000f88  12952002  vadd.f.mz.rn vr10{mr1}, r1, vr2
000f8c  92927002  vadd.f.mz.rn vr5{mr1}, r1, vr7
000f90  92938002  vadd.f.mz.rn vr7{mr1}, r1, vr8
000f94  00a00000  mfence { lm }
000f98  63010900  loadli.w r2,  0(r18)
000f9c  e3410900  loadli.w r3,  4(r18)
000fa0  63021900  loadli.w r4,  8(r18)
000fa4  e3421900  loadli.w r5,  12(r18)
000fa8  63032900  loadli.w r6,  16(r18)
000fac  e3432900  loadli.w r7,  20(r18)
000fb0  63043900  loadli.w r8,  24(r18)
000fb4  e3443900  loadli.w r9,  28(r18)
000fb8  63054900  loadli.w r10,  32(r18)
000fbc  e3454900  loadli.w r11,  36(r18)
000fc0  63065900  loadli.w r12,  40(r18)
000fc4  e3465900  loadli.w r13,  44(r18)
000fc8  63076900  loadli.w r14,  48(r18)
000fcc  e3476900  loadli.w r15,  52(r18)
000fd0  63087900  loadli.w r16,  56(r18)
000fd4  e3487900  loadli.w r17,  60(r18)
000fd8  0f010100  exp.f.rn r2, r2
000fdc  8f810100  exp.f.rn r3, r3
000fe0  0f020200  exp.f.rn r4, r4
000fe4  8f820200  exp.f.rn r5, r5
000fe8  0f030300  exp.f.rn r6, r6
000fec  8f830300  exp.f.rn r7, r7
000ff0  0f040400  exp.f.rn r8, r8
000ff4  8f840400  exp.f.rn r9, r9
000ff8  0f050500  exp.f.rn r10, r10
000ffc  8f850500  exp.f.rn r11, r11
001000  0f060600  exp.f.rn r12, r12
001004  8f860600  exp.f.rn r13, r13
001008  0f070700  exp.f.rn r14, r14
00100c  8f870700  exp.f.rn r15, r15
001010  0f080800  exp.f.rn r16, r16
001014  8f880800  exp.f.rn r17, r17
001018  67002900  storeli.w r2, 0(r18)
00101c  67403900  storeli.w r3, 4(r18)
001020  e7004900  storeli.w r4, 8(r18)
001024  e7405900  storeli.w r5, 12(r18)
001028  67016900  storeli.w r6, 16(r18)
00102c  67417900  storeli.w r7, 20(r18)
001030  e7018900  storeli.w r8, 24(r18)
001034  e7419900  storeli.w r9, 28(r18)
001038  6702a900  storeli.w r10, 32(r18)
00103c  6742b900  storeli.w r11, 36(r18)
001040  e702c900  storeli.w r12, 40(r18)
001044  e742d900  storeli.w r13, 44(r18)
001048  6703e900  storeli.w r14, 48(r18)
00104c  6743f900  storeli.w r15, 52(r18)
001050  e7030901  storeli.w r16, 56(r18)
001054  e7431901  storeli.w r17, 60(r18)
001058  63018900  loadli.w r2,  64(r18)
00105c  e3418900  loadli.w r3,  68(r18)
001060  63029900  loadli.w r4,  72(r18)
001064  e3429900  loadli.w r5,  76(r18)
001068  6303a900  loadli.w r6,  80(r18)
00106c  e343a900  loadli.w r7,  84(r18)
001070  6304b900  loadli.w r8,  88(r18)
001074  e344b900  loadli.w r9,  92(r18)
001078  6305c900  loadli.w r10,  96(r18)
00107c  e345c900  loadli.w r11,  100(r18)
001080  6306d900  loadli.w r12,  104(r18)
001084  e346d900  loadli.w r13,  108(r18)
001088  6307e900  loadli.w r14,  112(r18)
00108c  e347e900  loadli.w r15,  116(r18)
001090  6308f900  loadli.w r16,  120(r18)
001094  e348f900  loadli.w r17,  124(r18)
001098  0f010100  exp.f.rn r2, r2
00109c  8f810100  exp.f.rn r3, r3
0010a0  0f020200  exp.f.rn r4, r4
0010a4  8f820200  exp.f.rn r5, r5
0010a8  0f030300  exp.f.rn r6, r6
0010ac  8f830300  exp.f.rn r7, r7
0010b0  0f040400  exp.f.rn r8, r8
0010b4  8f840400  exp.f.rn r9, r9
0010b8  0f050500  exp.f.rn r10, r10
0010bc  8f850500  exp.f.rn r11, r11
0010c0  0f060600  exp.f.rn r12, r12
0010c4  8f860600  exp.f.rn r13, r13
0010c8  0f070700  exp.f.rn r14, r14
0010cc  8f870700  exp.f.rn r15, r15
0010d0  0f080800  exp.f.rn r16, r16
0010d4  8f880800  exp.f.rn r17, r17
0010d8  67042900  storeli.w r2, 64(r18)
0010dc  67443900  storeli.w r3, 68(r18)
0010e0  e7044900  storeli.w r4, 72(r18)
0010e4  e7445900  storeli.w r5, 76(r18)
0010e8  67056900  storeli.w r6, 80(r18)
0010ec  67457900  storeli.w r7, 84(r18)
0010f0  e7058900  storeli.w r8, 88(r18)
0010f4  e7459900  storeli.w r9, 92(r18)
0010f8  6706a900  storeli.w r10, 96(r18)
0010fc  6746b900  storeli.w r11, 100(r18)
001100  e706c900  storeli.w r12, 104(r18)
001104  e746d900  storeli.w r13, 108(r18)
001108  6707e900  storeli.w r14, 112(r18)
00110c  6747f900  storeli.w r15, 116(r18)
001110  e7070901  storeli.w r16, 120(r18)
001114  e7471901  storeli.w r17, 124(r18)
001118  63010901  loadli.w r2,  128(r18)
00111c  e3410901  loadli.w r3,  132(r18)
001120  63021901  loadli.w r4,  136(r18)
001124  e3421901  loadli.w r5,  140(r18)
001128  63032901  loadli.w r6,  144(r18)
00112c  e3432901  loadli.w r7,  148(r18)
001130  63043901  loadli.w r8,  152(r18)
001134  e3443901  loadli.w r9,  156(r18)
001138  63054901  loadli.w r10,  160(r18)
00113c  e3454901  loadli.w r11,  164(r18)
001140  63065901  loadli.w r12,  168(r18)
001144  e3465901  loadli.w r13,  172(r18)
001148  63076901  loadli.w r14,  176(r18)
00114c  e3476901  loadli.w r15,  180(r18)
001150  63087901  loadli.w r16,  184(r18)
001154  e3487901  loadli.w r17,  188(r18)
001158  0f010100  exp.f.rn r2, r2
00115c  8f810100  exp.f.rn r3, r3
001160  0f020200  exp.f.rn r4, r4
001164  8f820200  exp.f.rn r5, r5
001168  0f030300  exp.f.rn r6, r6
00116c  8f830300  exp.f.rn r7, r7
001170  0f040400  exp.f.rn r8, r8
001174  8f840400  exp.f.rn r9, r9
001178  0f050500  exp.f.rn r10, r10
00117c  8f850500  exp.f.rn r11, r11
001180  0f060600  exp.f.rn r12, r12
001184  8f860600  exp.f.rn r13, r13
001188  0f070700  exp.f.rn r14, r14
00118c  8f870700  exp.f.rn r15, r15
001190  0f080800  exp.f.rn r16, r16
001194  8f880800  exp.f.rn r17, r17
001198  67082900  storeli.w r2, 128(r18)
00119c  67483900  storeli.w r3, 132(r18)
0011a0  e7084900  storeli.w r4, 136(r18)
0011a4  e7485900  storeli.w r5, 140(r18)
0011a8  67096900  storeli.w r6, 144(r18)
0011ac  67497900  storeli.w r7, 148(r18)
0011b0  e7098900  storeli.w r8, 152(r18)
0011b4  e7499900  storeli.w r9, 156(r18)
0011b8  670aa900  storeli.w r10, 160(r18)
0011bc  674ab900  storeli.w r11, 164(r18)
0011c0  e70ac900  storeli.w r12, 168(r18)
0011c4  e74ad900  storeli.w r13, 172(r18)
0011c8  670be900  storeli.w r14, 176(r18)
0011cc  674bf900  storeli.w r15, 180(r18)
0011d0  e70b0901  storeli.w r16, 184(r18)
0011d4  e74b1901  storeli.w r17, 188(r18)
0011d8  63018901  loadli.w r2,  192(r18)
0011dc  e3418901  loadli.w r3,  196(r18)
0011e0  63029901  loadli.w r4,  200(r18)
0011e4  e3429901  loadli.w r5,  204(r18)
0011e8  6303a901  loadli.w r6,  208(r18)
0011ec  e343a901  loadli.w r7,  212(r18)
0011f0  6304b901  loadli.w r8,  216(r18)
0011f4  e344b901  loadli.w r9,  220(r18)
0011f8  6305c901  loadli.w r10,  224(r18)
0011fc  e345c901  loadli.w r11,  228(r18)
001200  6306d901  loadli.w r12,  232(r18)
001204  e346d901  loadli.w r13,  236(r18)
001208  6307e901  loadli.w r14,  240(r18)
00120c  e347e901  loadli.w r15,  244(r18)
001210  6308f901  loadli.w r16,  248(r18)
001214  e348f901  loadli.w r17,  252(r18)
001218  0f010100  exp.f.rn r2, r2
00121c  8f810100  exp.f.rn r3, r3
001220  0f020200  exp.f.rn r4, r4
001224  8f820200  exp.f.rn r5, r5
001228  0f030300  exp.f.rn r6, r6
00122c  8f830300  exp.f.rn r7, r7
001230  0f040400  exp.f.rn r8, r8
001234  8f840400  exp.f.rn r9, r9
001238  0f050500  exp.f.rn r10, r10
00123c  8f850500  exp.f.rn r11, r11
001240  0f060600  exp.f.rn r12, r12
001244  8f860600  exp.f.rn r13, r13
001248  0f070700  exp.f.rn r14, r14
00124c  8f870700  exp.f.rn r15, r15
001250  0f080800  exp.f.rn r16, r16
001254  8f880800  exp.f.rn r17, r17
001258  670c2900  storeli.w r2, 192(r18)
00125c  674c3900  storeli.w r3, 196(r18)
001260  e70c4900  storeli.w r4, 200(r18)
001264  e74c5900  storeli.w r5, 204(r18)
001268  670d6900  storeli.w r6, 208(r18)
00126c  674d7900  storeli.w r7, 212(r18)
001270  e70d8900  storeli.w r8, 216(r18)
001274  e74d9900  storeli.w r9, 220(r18)
001278  670ea900  storeli.w r10, 224(r18)
00127c  674eb900  storeli.w r11, 228(r18)
001280  e70ec900  storeli.w r12, 232(r18)
001284  e74ed900  storeli.w r13, 236(r18)
001288  670fe900  storeli.w r14, 240(r18)
00128c  674ff900  storeli.w r15, 244(r18)
001290  e70f0901  storeli.w r16, 248(r18)
001294  e74f1901  storeli.w r17, 252(r18)
001298  00a00000  mfence { lm }
00129c  12931002  vadd.f.mz.rn vr6{mr1}, r1, vr1
0012a0  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
0012a4  c2118fe2  vload_mask16.mz vr3{mr1}, 1856(r30)
0012a8  42110fe3  vload_mask16.mz vr2{mr1}, 1920(r30)
0012ac  c2108fe3  vload_mask16.mz vr1{mr1}, 1984(r30)
0012b0  4610afe2  vstore_mask16.mz vr10{mr1}, 1792(r30)
0012b4  46145fe2  vstore_mask16.mz vr5{mr1}, 1856(r30)
0012b8  46187fe2  vstore_mask16.mz vr7{mr1}, 1920(r30)
0012bc  461c6fe2  vstore_mask16.mz vr6{mr1}, 1984(r30)
0012c0  00a00000  mfence { lm }
0012c4  e3000900  loadli.w r1,  0(r18)
0012c8  63410900  loadli.w r2,  4(r18)
0012cc  e3011900  loadli.w r3,  8(r18)
0012d0  63421900  loadli.w r4,  12(r18)
0012d4  e3022900  loadli.w r5,  16(r18)
0012d8  63432900  loadli.w r6,  20(r18)
0012dc  e3033900  loadli.w r7,  24(r18)
0012e0  63443900  loadli.w r8,  28(r18)
0012e4  e3044900  loadli.w r9,  32(r18)
0012e8  63454900  loadli.w r10,  36(r18)
0012ec  e3055900  loadli.w r11,  40(r18)
0012f0  63465900  loadli.w r12,  44(r18)
0012f4  e3066900  loadli.w r13,  48(r18)
0012f8  63476900  loadli.w r14,  52(r18)
0012fc  e3077900  loadli.w r15,  56(r18)
001300  63487900  loadli.w r16,  60(r18)
001304  8f800000  exp.f.rn r1, r1
001308  0f010100  exp.f.rn r2, r2
00130c  8f810100  exp.f.rn r3, r3
001310  0f020200  exp.f.rn r4, r4
001314  8f820200  exp.f.rn r5, r5
001318  0f030300  exp.f.rn r6, r6
00131c  8f830300  exp.f.rn r7, r7
001320  0f040400  exp.f.rn r8, r8
001324  8f840400  exp.f.rn r9, r9
001328  0f050500  exp.f.rn r10, r10
00132c  8f850500  exp.f.rn r11, r11
001330  0f060600  exp.f.rn r12, r12
001334  8f860600  exp.f.rn r13, r13
001338  0f070700  exp.f.rn r14, r14
00133c  8f870700  exp.f.rn r15, r15
001340  0f080800  exp.f.rn r16, r16
001344  67001900  storeli.w r1, 0(r18)
001348  67402900  storeli.w r2, 4(r18)
00134c  e7003900  storeli.w r3, 8(r18)
001350  e7404900  storeli.w r4, 12(r18)
001354  67015900  storeli.w r5, 16(r18)
001358  67416900  storeli.w r6, 20(r18)
00135c  e7017900  storeli.w r7, 24(r18)
001360  e7418900  storeli.w r8, 28(r18)
001364  67029900  storeli.w r9, 32(r18)
001368  6742a900  storeli.w r10, 36(r18)
00136c  e702b900  storeli.w r11, 40(r18)
001370  e742c900  storeli.w r12, 44(r18)
001374  6703d900  storeli.w r13, 48(r18)
001378  6743e900  storeli.w r14, 52(r18)
00137c  e703f900  storeli.w r15, 56(r18)
001380  e7430901  storeli.w r16, 60(r18)
001384  e3008900  loadli.w r1,  64(r18)
001388  63418900  loadli.w r2,  68(r18)
00138c  e3019900  loadli.w r3,  72(r18)
001390  63429900  loadli.w r4,  76(r18)
001394  e302a900  loadli.w r5,  80(r18)
001398  6343a900  loadli.w r6,  84(r18)
00139c  e303b900  loadli.w r7,  88(r18)
0013a0  6344b900  loadli.w r8,  92(r18)
0013a4  e304c900  loadli.w r9,  96(r18)
0013a8  6345c900  loadli.w r10,  100(r18)
0013ac  e305d900  loadli.w r11,  104(r18)
0013b0  6346d900  loadli.w r12,  108(r18)
0013b4  e306e900  loadli.w r13,  112(r18)
0013b8  6347e900  loadli.w r14,  116(r18)
0013bc  e307f900  loadli.w r15,  120(r18)
0013c0  6348f900  loadli.w r16,  124(r18)
0013c4  8f800000  exp.f.rn r1, r1
0013c8  0f010100  exp.f.rn r2, r2
0013cc  8f810100  exp.f.rn r3, r3
0013d0  0f020200  exp.f.rn r4, r4
0013d4  8f820200  exp.f.rn r5, r5
0013d8  0f030300  exp.f.rn r6, r6
0013dc  8f830300  exp.f.rn r7, r7
0013e0  0f040400  exp.f.rn r8, r8
0013e4  8f840400  exp.f.rn r9, r9
0013e8  0f050500  exp.f.rn r10, r10
0013ec  8f850500  exp.f.rn r11, r11
0013f0  0f060600  exp.f.rn r12, r12
0013f4  8f860600  exp.f.rn r13, r13
0013f8  0f070700  exp.f.rn r14, r14
0013fc  8f870700  exp.f.rn r15, r15
001400  0f080800  exp.f.rn r16, r16
001404  67041900  storeli.w r1, 64(r18)
001408  67442900  storeli.w r2, 68(r18)
00140c  e7043900  storeli.w r3, 72(r18)
001410  e7444900  storeli.w r4, 76(r18)
001414  67055900  storeli.w r5, 80(r18)
001418  67456900  storeli.w r6, 84(r18)
00141c  e7057900  storeli.w r7, 88(r18)
001420  e7458900  storeli.w r8, 92(r18)
001424  67069900  storeli.w r9, 96(r18)
001428  6746a900  storeli.w r10, 100(r18)
00142c  e706b900  storeli.w r11, 104(r18)
001430  e746c900  storeli.w r12, 108(r18)
001434  6707d900  storeli.w r13, 112(r18)
001438  6747e900  storeli.w r14, 116(r18)
00143c  e707f900  storeli.w r15, 120(r18)
001440  e7470901  storeli.w r16, 124(r18)
001444  e3000901  loadli.w r1,  128(r18)
001448  63410901  loadli.w r2,  132(r18)
00144c  e3011901  loadli.w r3,  136(r18)
001450  63421901  loadli.w r4,  140(r18)
001454  e3022901  loadli.w r5,  144(r18)
001458  63432901  loadli.w r6,  148(r18)
00145c  e3033901  loadli.w r7,  152(r18)
001460  63443901  loadli.w r8,  156(r18)
001464  e3044901  loadli.w r9,  160(r18)
001468  63454901  loadli.w r10,  164(r18)
00146c  e3055901  loadli.w r11,  168(r18)
001470  63465901  loadli.w r12,  172(r18)
001474  e3066901  loadli.w r13,  176(r18)
001478  63476901  loadli.w r14,  180(r18)
00147c  e3077901  loadli.w r15,  184(r18)
001480  63487901  loadli.w r16,  188(r18)
001484  8f800000  exp.f.rn r1, r1
001488  0f010100  exp.f.rn r2, r2
00148c  8f810100  exp.f.rn r3, r3
001490  0f020200  exp.f.rn r4, r4
001494  8f820200  exp.f.rn r5, r5
001498  0f030300  exp.f.rn r6, r6
00149c  8f830300  exp.f.rn r7, r7
0014a0  0f040400  exp.f.rn r8, r8
0014a4  8f840400  exp.f.rn r9, r9
0014a8  0f050500  exp.f.rn r10, r10
0014ac  8f850500  exp.f.rn r11, r11
0014b0  0f060600  exp.f.rn r12, r12
0014b4  8f860600  exp.f.rn r13, r13
0014b8  0f070700  exp.f.rn r14, r14
0014bc  8f870700  exp.f.rn r15, r15
0014c0  0f080800  exp.f.rn r16, r16
0014c4  67081900  storeli.w r1, 128(r18)
0014c8  67482900  storeli.w r2, 132(r18)
0014cc  e7083900  storeli.w r3, 136(r18)
0014d0  e7484900  storeli.w r4, 140(r18)
0014d4  67095900  storeli.w r5, 144(r18)
0014d8  67496900  storeli.w r6, 148(r18)
0014dc  e7097900  storeli.w r7, 152(r18)
0014e0  e7498900  storeli.w r8, 156(r18)
0014e4  670a9900  storeli.w r9, 160(r18)
0014e8  674aa900  storeli.w r10, 164(r18)
0014ec  e70ab900  storeli.w r11, 168(r18)
0014f0  e74ac900  storeli.w r12, 172(r18)
0014f4  670bd900  storeli.w r13, 176(r18)
0014f8  674be900  storeli.w r14, 180(r18)
0014fc  e70bf900  storeli.w r15, 184(r18)
001500  e74b0901  storeli.w r16, 188(r18)
001504  e3008901  loadli.w r1,  192(r18)
001508  63418901  loadli.w r2,  196(r18)
00150c  e3019901  loadli.w r3,  200(r18)
001510  63429901  loadli.w r4,  204(r18)
001514  e302a901  loadli.w r5,  208(r18)
001518  6343a901  loadli.w r6,  212(r18)
00151c  e303b901  loadli.w r7,  216(r18)
001520  6344b901  loadli.w r8,  220(r18)
001524  e304c901  loadli.w r9,  224(r18)
001528  6345c901  loadli.w r10,  228(r18)
00152c  e305d901  loadli.w r11,  232(r18)
001530  6346d901  loadli.w r12,  236(r18)
001534  e306e901  loadli.w r13,  240(r18)
001538  6347e901  loadli.w r14,  244(r18)
00153c  e307f901  loadli.w r15,  248(r18)
001540  6348f901  loadli.w r16,  252(r18)
001544  8f800000  exp.f.rn r1, r1
001548  0f010100  exp.f.rn r2, r2
00154c  8f810100  exp.f.rn r3, r3
001550  0f020200  exp.f.rn r4, r4
001554  8f820200  exp.f.rn r5, r5
001558  0f030300  exp.f.rn r6, r6
00155c  8f830300  exp.f.rn r7, r7
001560  0f040400  exp.f.rn r8, r8
001564  8f840400  exp.f.rn r9, r9
001568  0f050500  exp.f.rn r10, r10
00156c  8f850500  exp.f.rn r11, r11
001570  0f060600  exp.f.rn r12, r12
001574  8f860600  exp.f.rn r13, r13
001578  0f070700  exp.f.rn r14, r14
00157c  8f870700  exp.f.rn r15, r15
001580  0f080800  exp.f.rn r16, r16
001584  670c1900  storeli.w r1, 192(r18)
001588  674c2900  storeli.w r2, 196(r18)
00158c  e70c3900  storeli.w r3, 200(r18)
001590  e74c4900  storeli.w r4, 204(r18)
001594  670d5900  storeli.w r5, 208(r18)
001598  674d6900  storeli.w r6, 212(r18)
00159c  e70d7900  storeli.w r7, 216(r18)
0015a0  e74d8900  storeli.w r8, 220(r18)
0015a4  670e9900  storeli.w r9, 224(r18)
0015a8  674ea900  storeli.w r10, 228(r18)
0015ac  e70eb900  storeli.w r11, 232(r18)
0015b0  e74ec900  storeli.w r12, 236(r18)
0015b4  670fd900  storeli.w r13, 240(r18)
0015b8  674fe900  storeli.w r14, 244(r18)
0015bc  e70ff900  storeli.w r15, 248(r18)
0015c0  e74f0901  storeli.w r16, 252(r18)
0015c4  00a00000  mfence { lm }
0015c8  c2120fe2  vload_mask16.mz vr5{mr1}, 1792(r30)
0015cc  16143202  vadd.f.mz.rn vr8{mr1}, vr4, vr3
0015d0  16132402  vadd.f.mz.rn vr6{mr1}, vr8, vr2
0015d4  16131302  vadd.f.mz.rn vr6{mr1}, vr6, vr1
0015d8  96135302  vadd.f.mz.rn vr7{mr1}, vr6, vr5
0015dc  42138fe2  vload_mask16.mz vr6{mr1}, 1856(r30)
0015e0  16946302  vadd.f.mz.rn vr8{mr1}, vr7, vr6
0015e4  c2130fe3  vload_mask16.mz vr7{mr1}, 1920(r30)
0015e8  96147402  vadd.f.mz.rn vr9{mr1}, vr8, vr7
0015ec  42148fe3  vload_mask16.mz vr8{mr1}, 1984(r30)
0015f0  96948402  vadd.f.mz.rn vr9{mr1}, vr9, vr8
0015f4  fa900440  vextracti.f r1, 0(vr9)
0015f8  7a911440  vextracti.f r2, 1(vr9)
0015fc  8be02010  add.f.rn r1, r1, r2
001600  7a912440  vextracti.f r2, 2(vr9)
001604  8b601110  add.f.rn r1, r2, r1
001608  7a913440  vextracti.f r2, 3(vr9)
00160c  8b601110  add.f.rn r1, r2, r1
001610  7a914440  vextracti.f r2, 4(vr9)
001614  8b601110  add.f.rn r1, r2, r1
001618  7a915440  vextracti.f r2, 5(vr9)
00161c  8b601110  add.f.rn r1, r2, r1
001620  7a916440  vextracti.f r2, 6(vr9)
001624  8b601110  add.f.rn r1, r2, r1
001628  7a917440  vextracti.f r2, 7(vr9)
00162c  8b601110  add.f.rn r1, r2, r1
001630  7a918440  vextracti.f r2, 8(vr9)
001634  8b601110  add.f.rn r1, r2, r1
001638  7a919440  vextracti.f r2, 9(vr9)
00163c  8b601110  add.f.rn r1, r2, r1
001640  7a91a440  vextracti.f r2, 10(vr9)
001644  8b601110  add.f.rn r1, r2, r1
001648  7a91b440  vextracti.f r2, 11(vr9)
00164c  8b601110  add.f.rn r1, r2, r1
001650  7a91c440  vextracti.f r2, 12(vr9)
001654  8b601110  add.f.rn r1, r2, r1
001658  7a91d440  vextracti.f r2, 13(vr9)
00165c  8b601110  add.f.rn r1, r2, r1
001660  7a91e440  vextracti.f r2, 14(vr9)
001664  8b601110  add.f.rn r1, r2, r1
001668  7a91f440  vextracti.f r2, 15(vr9)
00166c  8b601110  add.f.rn r1, r2, r1
001670  63419ff6  loadli.w r2,  -1204(r30)
001674  73601100  stores.w r1, 0(r2)
001678  00a00300  mfence { lm, sm, gm }
00167c  80a10904  csr_set csr3, r19
001680  00d00100  sync_group
001684  3ba10a00  bneq r21, zero, 72
001688  6302aff6  loadli.w r4,  -1200(r30)
00168c  ef400200  loads.w r1, 0(r4)
001690  6f414200  loads.w r2, 4(r4)
001694  ef418200  loads.w r3, 8(r4)
001698  8be02010  add.f.rn r1, r1, r2
00169c  6f41c200  loads.w r2, 12(r4)
0016a0  8be03010  add.f.rn r1, r1, r3
0016a4  ef410201  loads.w r3, 16(r4)
0016a8  8be02010  add.f.rn r1, r1, r2
0016ac  6f414201  loads.w r2, 20(r4)
0016b0  8be03010  add.f.rn r1, r1, r3
0016b4  ef418201  loads.w r3, 24(r4)
0016b8  8be02010  add.f.rn r1, r1, r2
0016bc  6f41c201  loads.w r2, 28(r4)
0016c0  8be03010  add.f.rn r1, r1, r3
0016c4  8be02010  add.f.rn r1, r1, r2
0016c8  73601200  stores.w r1, 0(r4)
0016cc  00a00300  mfence { lm, sm, gm }
0016d0  80a10904  csr_set csr3, r19
0016d4  00d00100  sync_group
0016d8  e300aff6  loadli.w r1,  -1200(r30)
0016dc  2b01803f  lui r2, 260096
0016e0  1f1b0000  addli r22, zero, 1
0016e4  1f040ffc  addli r8, r30, -512
0016e8  efc00000  loads.w r1, 0(r1)
0016ec  8f001118  div.f.rn r1, r2, r1
0016f0  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
0016f4  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
0016f8  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0016fc  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
001700  86140200  vfloat2fp16_l.rn vr9, vr4
001704  86d40100  vfloat2fp16_h.rn vr9, vr3
001708  8a925002  vmul.f.mz.rn vr5{mr1}, r1, vr5
00170c  0a936002  vmul.f.mz.rn vr6{mr1}, r1, vr6
001710  8a937002  vmul.f.mz.rn vr7{mr1}, r1, vr7
001714  0a948002  vmul.f.mz.rn vr8{mr1}, r1, vr8
001718  46109fc2  vstore_mask16.mz vr9{mr1}, 1536(r30)
00171c  86110100  vfloat2fp16_l.rn vr3, vr2
001720  86d10000  vfloat2fp16_h.rn vr3, vr1
001724  86900200  vfloat2fp16_l.rn vr1, vr5
001728  86500300  vfloat2fp16_h.rn vr1, vr6
00172c  46143fc2  vstore_mask16.mz vr3{mr1}, 1600(r30)
001730  06910300  vfloat2fp16_l.rn vr2, vr7
001734  06510400  vfloat2fp16_h.rn vr2, vr8
001738  46181fc2  vstore_mask16.mz vr1{mr1}, 1664(r30)
00173c  461c2fc2  vstore_mask16.mz vr2{mr1}, 1728(r30)
001740  00a00000  mfence { lm }
001744  63018f00  loadli.w r2,  64(r30)
001748  e3400ff6  loadli.w r1,  -1276(r30)
00174c  634afff9  loadli.w r20,  -772(r30)
001750  e341dff9  loadli.w r3,  -788(r30)
001754  bfab21f4  blt.s r3, r2, -5400
001758  9f000000  addli r1, zero, 0
00175c  5b5cfdff  j -5408
001760  9f0e0ff6  addli sp, r30, -1280
001764  9f8e0e0a  addli sp, sp, 1280
001768  00a00300  mfence { lm, sm, gm }
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
00190c  00100000  exit
001910  00100000  exit
001914  00100000  exit
001918  00100000  exit
00191c  00100000  exit
001920  00100000  exit
001924  00100000  exit
001928  00100000  exit
00192c  00100000  exit
001930  00100000  exit
001934  00100000  exit
001938  00100000  exit
00193c  00100000  exit
001940  00100000  exit
001944  00100000  exit
001948  00100000  exit
00194c  00100000  exit
001950  00100000  exit
001954  00100000  exit
001958  00100000  exit
00195c  00100000  exit
001960  00100000  exit
001964  00100000  exit
001968  00100000  exit
00196c  00100000  exit
001970  00100000  exit
001974  00100000  exit
001978  00100000  exit
00197c  00100000  exit
001980  00100000  exit
001984  00100000  exit
001988  00100000  exit
00198c  00100000  exit
001990  00100000  exit
001994  00100000  exit
001998  00100000  exit
00199c  00100000  exit
0019a0  00100000  exit
0019a4  00100000  exit
0019a8  00100000  exit
0019ac  00100000  exit
