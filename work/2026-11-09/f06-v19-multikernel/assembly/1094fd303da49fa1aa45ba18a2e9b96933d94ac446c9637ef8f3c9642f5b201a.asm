; SHA-256 1094fd303da49fa1aa45ba18a2e9b96933d94ac446c9637ef8f3c9642f5b201a
; P800 Cluster · XTDK LLVM 19 · 1666 / 1666 words decoded
; bound names: triton_per_fused_add_native_layer_norm_0
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
0000dc  9f8e0ef7  addli sp, sp, -1152
0000e0  ab010000  lui r3, 0
0000e4  00310002  core_id r2
0000e8  1f8f8e08  addli r30, sp, 1088
0000ec  abf40000  lui r9, 15
0000f0  1b322100  slli r4, r2, 2
0000f4  9f810100  addli r3, r3, 0
0000f8  63434f00  loadli.w r6,  36(r30)
0000fc  e3004f00  loadli.w r1,  32(r30)
000100  e3025f00  loadli.w r5,  40(r30)
000104  8b133210  add.s r7, r4, r3
000108  8b101320  mul.s r1, r6, r1
00010c  1f842320  addli r8, r7, 4112
000110  8b905020  mul.s r1, r1, r5
000114  670e8ff8  storeli.w r8, -800(r30)
000118  73600400  stores.w zero, 0(r8)
00011c  1b94f4ff  ori r8, r9, 4095
000120  80540002  load_param_i r9, 0
000124  00a00300  mfence { lm, sm, gm }
000128  80210404  csr_set csr3, r8
00012c  00d00100  sync_group
000130  674e7ff8  storeli.w r7, -796(r30)
000134  73e00300  stores.w zero, 0(r7)
000138  00a00300  mfence { lm, sm, gm }
00013c  e74f8ffa  storeli.w r8, -516(r30)
000140  80210404  csr_set csr3, r8
000144  00d00100  sync_group
000148  e74d1ff8  storeli.w r1, -804(r30)
00014c  cbc9900a  ble.s r1, r9, 5744
000150  9f002000  addli r1, zero, 16
000154  80d20002  load_param_i r5, 1
000158  1f2d0000  addli r26, zero, 2
00015c  eb538f00  load.d r[8:9], 8(r30)
000160  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000164  eeb01062  vxor.s.mz vr1{mr1}, vr1, vr1
000168  8b101130  div.s r1, r2, r1
00016c  670d5ff8  storeli.w r5, -816(r30)
000170  e70d1ff8  storeli.w r1, -808(r30)
000174  9bb04000  slli r1, r1, 4
000178  8b101118  sub.s r1, r2, r1
00017c  9bb06000  slli r1, r1, 6
000180  9b921000  ori r5, r1, 1
000184  1b950001  ori r10, r1, 16
000188  674d1ff8  storeli.w r1, -812(r30)
00018c  e74c5ff8  storeli.w r5, -820(r30)
000190  9b922000  ori r5, r1, 2
000194  6709aff8  storeli.w r10, -880(r30)
000198  1b951001  ori r10, r1, 17
00019c  e70c5ff8  storeli.w r5, -824(r30)
0001a0  9b923000  ori r5, r1, 3
0001a4  e748aff8  storeli.w r10, -884(r30)
0001a8  674c5ff8  storeli.w r5, -828(r30)
0001ac  9b924000  ori r5, r1, 4
0001b0  670c5ff8  storeli.w r5, -832(r30)
0001b4  9b925000  ori r5, r1, 5
0001b8  e74b5ff8  storeli.w r5, -836(r30)
0001bc  9b926000  ori r5, r1, 6
0001c0  e70b5ff8  storeli.w r5, -840(r30)
0001c4  9b927000  ori r5, r1, 7
0001c8  674b5ff8  storeli.w r5, -844(r30)
0001cc  9b928000  ori r5, r1, 8
0001d0  670b5ff8  storeli.w r5, -848(r30)
0001d4  9b929000  ori r5, r1, 9
0001d8  e74a5ff8  storeli.w r5, -852(r30)
0001dc  9b92a000  ori r5, r1, 10
0001e0  e70a5ff8  storeli.w r5, -856(r30)
0001e4  9b92b000  ori r5, r1, 11
0001e8  674a5ff8  storeli.w r5, -860(r30)
0001ec  9b92c000  ori r5, r1, 12
0001f0  670a5ff8  storeli.w r5, -864(r30)
0001f4  9b92d000  ori r5, r1, 13
0001f8  e7495ff8  storeli.w r5, -868(r30)
0001fc  9b92e000  ori r5, r1, 14
000200  e7095ff8  storeli.w r5, -872(r30)
000204  9b92f000  ori r5, r1, 15
000208  67495ff8  storeli.w r5, -876(r30)
00020c  b3920028  sext_int2long r[6:7], r1
000210  97b2a203  sll.d r[6:7], r[6:7], r26
000214  8ba25310  add.ul r[6:7], r[8:9], r[6:7]
000218  1b04f100  andi r8, r2, 15
00021c  2b11833a  lui r2, 239665
000220  9f030ffc  addli r7, r30, -512
000224  1b11f126  ori r2, r2, 623
000228  73305fc8  store.d r[6:7], -896(r30)
00022c  abf2ffff  lui r5, 1048575
000230  1b932001  ori r6, r1, 18
000234  67078ff8  storeli.w r8, -912(r30)
000238  e7462ff8  storeli.w r2, -916(r30)
00023c  1b915001  ori r2, r1, 21
000240  9b9202fc  ori r5, r5, 4032
000244  e7476ff8  storeli.w r6, -900(r30)
000248  1b933001  ori r6, r1, 19
00024c  e7062ff8  storeli.w r2, -920(r30)
000250  1b916001  ori r2, r1, 22
000254  17025200  and r4, r4, r5
000258  9b924001  ori r5, r1, 20
00025c  e7076ff8  storeli.w r6, -904(r30)
000260  67462ff8  storeli.w r2, -924(r30)
000264  1b917001  ori r2, r1, 23
000268  8b113210  add.s r3, r4, r3
00026c  67475ff8  storeli.w r5, -908(r30)
000270  67062ff8  storeli.w r2, -928(r30)
000274  1b918001  ori r2, r1, 24
000278  e74e3ff8  storeli.w r3, -788(r30)
00027c  e7452ff8  storeli.w r2, -932(r30)
000280  1b919001  ori r2, r1, 25
000284  e7052ff8  storeli.w r2, -936(r30)
000288  1b91a001  ori r2, r1, 26
00028c  67452ff8  storeli.w r2, -940(r30)
000290  1b91b001  ori r2, r1, 27
000294  67052ff8  storeli.w r2, -944(r30)
000298  1b91c001  ori r2, r1, 28
00029c  e7442ff8  storeli.w r2, -948(r30)
0002a0  1b91d001  ori r2, r1, 29
0002a4  e7042ff8  storeli.w r2, -952(r30)
0002a8  1b91e001  ori r2, r1, 30
0002ac  67442ff8  storeli.w r2, -956(r30)
0002b0  1b91f001  ori r2, r1, 31
0002b4  67042ff8  storeli.w r2, -960(r30)
0002b8  1b910002  ori r2, r1, 32
0002bc  e7432ff8  storeli.w r2, -964(r30)
0002c0  1b911002  ori r2, r1, 33
0002c4  e7032ff8  storeli.w r2, -968(r30)
0002c8  1b912002  ori r2, r1, 34
0002cc  67432ff8  storeli.w r2, -972(r30)
0002d0  1b913002  ori r2, r1, 35
0002d4  67032ff8  storeli.w r2, -976(r30)
0002d8  1b914002  ori r2, r1, 36
0002dc  e7422ff8  storeli.w r2, -980(r30)
0002e0  1b915002  ori r2, r1, 37
0002e4  e7022ff8  storeli.w r2, -984(r30)
0002e8  1b916002  ori r2, r1, 38
0002ec  67422ff8  storeli.w r2, -988(r30)
0002f0  1b917002  ori r2, r1, 39
0002f4  67022ff8  storeli.w r2, -992(r30)
0002f8  1b918002  ori r2, r1, 40
0002fc  e7412ff8  storeli.w r2, -996(r30)
000300  1b919002  ori r2, r1, 41
000304  e7012ff8  storeli.w r2, -1000(r30)
000308  1b91a002  ori r2, r1, 42
00030c  67412ff8  storeli.w r2, -1004(r30)
000310  1b91b002  ori r2, r1, 43
000314  67012ff8  storeli.w r2, -1008(r30)
000318  1b91c002  ori r2, r1, 44
00031c  e7402ff8  storeli.w r2, -1012(r30)
000320  1b91d002  ori r2, r1, 45
000324  e7002ff8  storeli.w r2, -1016(r30)
000328  1b91e002  ori r2, r1, 46
00032c  67402ff8  storeli.w r2, -1020(r30)
000330  1b91f002  ori r2, r1, 47
000334  67002ff8  storeli.w r2, -1024(r30)
000338  1b910003  ori r2, r1, 48
00033c  e74f2ff6  storeli.w r2, -1028(r30)
000340  1b911003  ori r2, r1, 49
000344  e70f2ff6  storeli.w r2, -1032(r30)
000348  1b912003  ori r2, r1, 50
00034c  674f2ff6  storeli.w r2, -1036(r30)
000350  1b913003  ori r2, r1, 51
000354  670f2ff6  storeli.w r2, -1040(r30)
000358  1b914003  ori r2, r1, 52
00035c  e74e2ff6  storeli.w r2, -1044(r30)
000360  1b915003  ori r2, r1, 53
000364  e70e2ff6  storeli.w r2, -1048(r30)
000368  1b916003  ori r2, r1, 54
00036c  674e2ff6  storeli.w r2, -1052(r30)
000370  1b917003  ori r2, r1, 55
000374  670e2ff6  storeli.w r2, -1056(r30)
000378  1b918003  ori r2, r1, 56
00037c  e74d2ff6  storeli.w r2, -1060(r30)
000380  1b919003  ori r2, r1, 57
000384  e70d2ff6  storeli.w r2, -1064(r30)
000388  1b91a003  ori r2, r1, 58
00038c  674d2ff6  storeli.w r2, -1068(r30)
000390  1b91b003  ori r2, r1, 59
000394  670d2ff6  storeli.w r2, -1072(r30)
000398  1b91c003  ori r2, r1, 60
00039c  e74c2ff6  storeli.w r2, -1076(r30)
0003a0  1b91d003  ori r2, r1, 61
0003a4  e70c2ff6  storeli.w r2, -1080(r30)
0003a8  1b91e003  ori r2, r1, 62
0003ac  9b90f003  ori r1, r1, 63
0003b0  670c1ff6  storeli.w r1, -1088(r30)
0003b4  9f802120  addli r1, r3, 4112
0003b8  674c2ff6  storeli.w r2, -1084(r30)
0003bc  e70e1ff8  storeli.w r1, -792(r30)
0003c0  5b120100  j 2192
0003c4  331a0d28  sext_int2long r[21:22], r26
0003c8  b3930328  sext_int2long r[8:9], r7
0003cc  331b0228  sext_int2long r[23:24], r4
0003d0  b3120128  sext_int2long r[6:7], r2
0003d4  33910128  sext_int2long r[3:4], r3
0003d8  1f2c0000  addli r24, zero, 2
0003dc  1f4e0000  addli r28, zero, 4
0003e0  33190528  sext_int2long r[19:20], r10
0003e4  33150628  sext_int2long r[11:12], r12
0003e8  33960628  sext_int2long r[13:14], r13
0003ec  33170728  sext_int2long r[15:16], r14
0003f0  33180828  sext_int2long r[17:18], r16
0003f4  733c4fcf  store.d r[21:22], -776(r30)
0003f8  339a0d28  sext_int2long r[21:22], r27
0003fc  73307fd0  store.d r[8:9], -768(r30)
000400  17bd8203  sll.d r[27:28], r[6:7], r24
000404  ab0200f0  lui r5, 983040
000408  1f040ffc  addli r8, r30, -512
00040c  17318103  sll.d r[3:4], r[3:4], r24
000410  73384fcf  store.d r[21:22], -784(r30)
000414  97125e00  or r5, r28, r5
000418  9f0c8401  addli r25, r8, 192
00041c  00a00300  mfence { lm, sm, gm }
000420  80a10404  csr_set csr3, r9
000424  00d00100  sync_group
000428  e300dff9  loadli.w r1,  -792(r30)
00042c  6b5a0f01  load.d r[21:22], 16(r30)
000430  9f440400  addli r9, r8, 4
000434  6fc20000  loads.w r4, 0(r1)
000438  ab00803a  lui r1, 239616
00043c  0b23aa11  add.ul r[7:8], r[21:22], r[27:28]
000440  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
000444  1f0d1400  addli r26, r8, 8
000448  0b621220  mul.f.rn r4, r4, r1
00044c  e340dff8  loadli.w r1,  -916(r30)
000450  0b621210  add.f.rn r4, r4, r1
000454  ab00803f  lui r1, 260096
000458  0f020208  sqrt.f.rn r4, r4
00045c  0f824018  div.f.rn r4, r1, r4
000460  0a115202  vmul.f.mz.rn vr2{mr1}, r4, vr5
000464  8a113202  vmul.f.mz.rn vr3{mr1}, r4, vr3
000468  0a124202  vmul.f.mz.rn vr4{mr1}, r4, vr4
00046c  8a126202  vmul.f.mz.rn vr5{mr1}, r4, vr6
000470  46102fc2  vstore_mask16.mz vr2{mr1}, 1536(r30)
000474  46143fc2  vstore_mask16.mz vr3{mr1}, 1600(r30)
000478  46184fc2  vstore_mask16.mz vr4{mr1}, 1664(r30)
00047c  461c5fc2  vstore_mask16.mz vr5{mr1}, 1728(r30)
000480  2b0200f0  lui r4, 983040
000484  00a00000  mfence { lm }
000488  ff32a101  s_lm2gm r5, r26, 0(r[3:4])
00048c  17318b03  sll.d r[3:4], r[23:24], r24
000490  17124e00  or r4, r28, r4
000494  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
000498  7f329300  s_lm2gm r4, r9, 0(r[7:8])
00049c  2b0300f0  lui r6, 983040
0004a0  9f441400  addli r9, r8, 12
0004a4  17328903  sll.d r[5:6], r[19:20], r24
0004a8  ab0300f0  lui r7, 983040
0004ac  1f092400  addli r18, r8, 16
0004b0  17136e00  or r6, r28, r6
0004b4  0b224a10  add.ul r[5:6], r[21:22], r[5:6]
0004b8  97137e00  or r7, r28, r7
0004bc  7f339100  s_lm2gm r6, r9, 0(r[3:4])
0004c0  17318503  sll.d r[3:4], r[11:12], r24
0004c4  2b0300f0  lui r6, 983040
0004c8  9f442400  addli r9, r8, 20
0004cc  ff332201  s_lm2gm r7, r18, 0(r[5:6])
0004d0  17328603  sll.d r[5:6], r[13:14], r24
0004d4  ab0300f0  lui r7, 983040
0004d8  1f093400  addli r18, r8, 24
0004dc  1f055400  addli r10, r8, 40
0004e0  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
0004e4  17136e00  or r6, r28, r6
0004e8  0b224a10  add.ul r[5:6], r[21:22], r[5:6]
0004ec  97137e00  or r7, r28, r7
0004f0  7f339100  s_lm2gm r6, r9, 0(r[3:4])
0004f4  17318703  sll.d r[3:4], r[15:16], r24
0004f8  2b0300f0  lui r6, 983040
0004fc  9f443400  addli r9, r8, 28
000500  ff332201  s_lm2gm r7, r18, 0(r[5:6])
000504  17328803  sll.d r[5:6], r[17:18], r24
000508  ab0300f0  lui r7, 983040
00050c  1f074400  addli r14, r8, 32
000510  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
000514  17136e00  or r6, r28, r6
000518  0b224a10  add.ul r[5:6], r[21:22], r[5:6]
00051c  97137e00  or r7, r28, r7
000520  7f339100  s_lm2gm r6, r9, 0(r[3:4])
000524  eb508fcf  load.d r[2:3], -776(r30)
000528  2b0300f0  lui r6, 983040
00052c  ff33e200  s_lm2gm r7, r14, 0(r[5:6])
000530  6b520fcf  load.d r[5:6], -784(r30)
000534  9f444400  addli r9, r8, 36
000538  ab0300f0  lui r7, 983040
00053c  17136e00  or r6, r28, r6
000540  97137e00  or r7, r28, r7
000544  17b18003  sll.d r[3:4], r[2:3], r24
000548  17328203  sll.d r[5:6], r[5:6], r24
00054c  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
000550  0b224a10  add.ul r[5:6], r[21:22], r[5:6]
000554  7f339100  s_lm2gm r6, r9, 0(r[3:4])
000558  eb500fd0  load.d r[2:3], -768(r30)
00055c  ff33a200  s_lm2gm r7, r10, 0(r[5:6])
000560  2b0200f0  lui r4, 983040
000564  9f425400  addli r5, r8, 44
000568  9f044401  addli r9, r8, 160
00056c  17124e00  or r4, r28, r4
000570  17b18003  sll.d r[3:4], r[2:3], r24
000574  e3001ffa  loadli.w r1,  -760(r30)
000578  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
00057c  33930028  sext_int2long r[7:8], r1
000580  e3401ffa  loadli.w r1,  -756(r30)
000584  7f325100  s_lm2gm r4, r5, 0(r[3:4])
000588  2b0200f0  lui r4, 983040
00058c  9f026400  addli r5, r8, 48
000590  17318303  sll.d r[3:4], r[7:8], r24
000594  33930028  sext_int2long r[7:8], r1
000598  17124e00  or r4, r28, r4
00059c  e3002ffa  loadli.w r1,  -752(r30)
0005a0  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
0005a4  7f325100  s_lm2gm r4, r5, 0(r[3:4])
0005a8  17318303  sll.d r[3:4], r[7:8], r24
0005ac  2b0200f0  lui r4, 983040
0005b0  33930028  sext_int2long r[7:8], r1
0005b4  9f426400  addli r5, r8, 52
0005b8  e3402ffa  loadli.w r1,  -748(r30)
0005bc  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
0005c0  17124e00  or r4, r28, r4
0005c4  7f325100  s_lm2gm r4, r5, 0(r[3:4])
0005c8  17318303  sll.d r[3:4], r[7:8], r24
0005cc  2b0200f0  lui r4, 983040
0005d0  33930028  sext_int2long r[7:8], r1
0005d4  9f027400  addli r5, r8, 56
0005d8  e3003ffa  loadli.w r1,  -744(r30)
0005dc  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
0005e0  17124e00  or r4, r28, r4
0005e4  7f325100  s_lm2gm r4, r5, 0(r[3:4])
0005e8  17318303  sll.d r[3:4], r[7:8], r24
0005ec  2b0200f0  lui r4, 983040
0005f0  33930028  sext_int2long r[7:8], r1
0005f4  9f427400  addli r5, r8, 60
0005f8  e3403ffa  loadli.w r1,  -740(r30)
0005fc  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
000600  17124e00  or r4, r28, r4
000604  7f325100  s_lm2gm r4, r5, 0(r[3:4])
000608  17318303  sll.d r[3:4], r[7:8], r24
00060c  2b0200f0  lui r4, 983040
000610  33930028  sext_int2long r[7:8], r1
000614  9f028400  addli r5, r8, 64
000618  e3004ffa  loadli.w r1,  -736(r30)
00061c  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
000620  17124e00  or r4, r28, r4
000624  7f325100  s_lm2gm r4, r5, 0(r[3:4])
000628  17318303  sll.d r[3:4], r[7:8], r24
00062c  2b0200f0  lui r4, 983040
000630  33930028  sext_int2long r[7:8], r1
000634  9f428400  addli r5, r8, 68
000638  e3404ffa  loadli.w r1,  -732(r30)
00063c  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
000640  17124e00  or r4, r28, r4
000644  7f325100  s_lm2gm r4, r5, 0(r[3:4])
000648  17318303  sll.d r[3:4], r[7:8], r24
00064c  2b0200f0  lui r4, 983040
000650  33930028  sext_int2long r[7:8], r1
000654  9f029400  addli r5, r8, 72
000658  e3005ffa  loadli.w r1,  -728(r30)
00065c  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
000660  17124e00  or r4, r28, r4
000664  7f325100  s_lm2gm r4, r5, 0(r[3:4])
000668  17318303  sll.d r[3:4], r[7:8], r24
00066c  2b0200f0  lui r4, 983040
000670  33930028  sext_int2long r[7:8], r1
000674  9f429400  addli r5, r8, 76
000678  e3405ffa  loadli.w r1,  -724(r30)
00067c  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
000680  17124e00  or r4, r28, r4
000684  7f325100  s_lm2gm r4, r5, 0(r[3:4])
000688  17318303  sll.d r[3:4], r[7:8], r24
00068c  2b0200f0  lui r4, 983040
000690  33930028  sext_int2long r[7:8], r1
000694  9f02a400  addli r5, r8, 80
000698  e3006ffa  loadli.w r1,  -720(r30)
00069c  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
0006a0  17124e00  or r4, r28, r4
0006a4  7f325100  s_lm2gm r4, r5, 0(r[3:4])
0006a8  17318303  sll.d r[3:4], r[7:8], r24
0006ac  2b0200f0  lui r4, 983040
0006b0  33930028  sext_int2long r[7:8], r1
0006b4  9f42a400  addli r5, r8, 84
0006b8  e3406ffa  loadli.w r1,  -716(r30)
0006bc  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
0006c0  17124e00  or r4, r28, r4
0006c4  7f325100  s_lm2gm r4, r5, 0(r[3:4])
0006c8  17318303  sll.d r[3:4], r[7:8], r24
0006cc  2b0200f0  lui r4, 983040
0006d0  33930028  sext_int2long r[7:8], r1
0006d4  9f02b400  addli r5, r8, 88
0006d8  e3007ffa  loadli.w r1,  -712(r30)
0006dc  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
0006e0  17124e00  or r4, r28, r4
0006e4  7f325100  s_lm2gm r4, r5, 0(r[3:4])
0006e8  17318303  sll.d r[3:4], r[7:8], r24
0006ec  2b0200f0  lui r4, 983040
0006f0  33930028  sext_int2long r[7:8], r1
0006f4  9f42b400  addli r5, r8, 92
0006f8  e3407ffa  loadli.w r1,  -708(r30)
0006fc  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
000700  17124e00  or r4, r28, r4
000704  7f325100  s_lm2gm r4, r5, 0(r[3:4])
000708  17318303  sll.d r[3:4], r[7:8], r24
00070c  2b0200f0  lui r4, 983040
000710  33930028  sext_int2long r[7:8], r1
000714  9f02c400  addli r5, r8, 96
000718  e3008ffa  loadli.w r1,  -704(r30)
00071c  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
000720  17124e00  or r4, r28, r4
000724  7f325100  s_lm2gm r4, r5, 0(r[3:4])
000728  17318303  sll.d r[3:4], r[7:8], r24
00072c  2b0200f0  lui r4, 983040
000730  33930028  sext_int2long r[7:8], r1
000734  9f42c400  addli r5, r8, 100
000738  e3408ffa  loadli.w r1,  -700(r30)
00073c  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
000740  17124e00  or r4, r28, r4
000744  7f325100  s_lm2gm r4, r5, 0(r[3:4])
000748  17318303  sll.d r[3:4], r[7:8], r24
00074c  2b0200f0  lui r4, 983040
000750  33930028  sext_int2long r[7:8], r1
000754  9f02d400  addli r5, r8, 104
000758  e3009ffa  loadli.w r1,  -696(r30)
00075c  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
000760  17124e00  or r4, r28, r4
000764  7f325100  s_lm2gm r4, r5, 0(r[3:4])
000768  17318303  sll.d r[3:4], r[7:8], r24
00076c  2b0200f0  lui r4, 983040
000770  33930028  sext_int2long r[7:8], r1
000774  9f42d400  addli r5, r8, 108
000778  e3409ffa  loadli.w r1,  -692(r30)
00077c  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
000780  17124e00  or r4, r28, r4
000784  7f325100  s_lm2gm r4, r5, 0(r[3:4])
000788  17318303  sll.d r[3:4], r[7:8], r24
00078c  2b0200f0  lui r4, 983040
000790  33930028  sext_int2long r[7:8], r1
000794  9f02e400  addli r5, r8, 112
000798  e300affa  loadli.w r1,  -688(r30)
00079c  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
0007a0  17124e00  or r4, r28, r4
0007a4  7f325100  s_lm2gm r4, r5, 0(r[3:4])
0007a8  17318303  sll.d r[3:4], r[7:8], r24
0007ac  2b0200f0  lui r4, 983040
0007b0  33930028  sext_int2long r[7:8], r1
0007b4  9f42e400  addli r5, r8, 116
0007b8  e340affa  loadli.w r1,  -684(r30)
0007bc  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
0007c0  17124e00  or r4, r28, r4
0007c4  7f325100  s_lm2gm r4, r5, 0(r[3:4])
0007c8  17318303  sll.d r[3:4], r[7:8], r24
0007cc  2b0200f0  lui r4, 983040
0007d0  33930028  sext_int2long r[7:8], r1
0007d4  9f02f400  addli r5, r8, 120
0007d8  e300bffa  loadli.w r1,  -680(r30)
0007dc  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
0007e0  17124e00  or r4, r28, r4
0007e4  7f325100  s_lm2gm r4, r5, 0(r[3:4])
0007e8  17318303  sll.d r[3:4], r[7:8], r24
0007ec  2b0200f0  lui r4, 983040
0007f0  33930028  sext_int2long r[7:8], r1
0007f4  9f42f400  addli r5, r8, 124
0007f8  e340bffa  loadli.w r1,  -676(r30)
0007fc  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
000800  17124e00  or r4, r28, r4
000804  7f325100  s_lm2gm r4, r5, 0(r[3:4])
000808  17318303  sll.d r[3:4], r[7:8], r24
00080c  2b0200f0  lui r4, 983040
000810  33930028  sext_int2long r[7:8], r1
000814  9f020401  addli r5, r8, 128
000818  e300cffa  loadli.w r1,  -672(r30)
00081c  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
000820  17124e00  or r4, r28, r4
000824  7f325100  s_lm2gm r4, r5, 0(r[3:4])
000828  17318303  sll.d r[3:4], r[7:8], r24
00082c  2b0200f0  lui r4, 983040
000830  33930028  sext_int2long r[7:8], r1
000834  9f420401  addli r5, r8, 132
000838  e340cffa  loadli.w r1,  -668(r30)
00083c  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
000840  17124e00  or r4, r28, r4
000844  7f325100  s_lm2gm r4, r5, 0(r[3:4])
000848  17318303  sll.d r[3:4], r[7:8], r24
00084c  2b0200f0  lui r4, 983040
000850  33930028  sext_int2long r[7:8], r1
000854  9f021401  addli r5, r8, 136
000858  e300dffa  loadli.w r1,  -664(r30)
00085c  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
000860  17124e00  or r4, r28, r4
000864  7f325100  s_lm2gm r4, r5, 0(r[3:4])
000868  17318303  sll.d r[3:4], r[7:8], r24
00086c  2b0200f0  lui r4, 983040
000870  33930028  sext_int2long r[7:8], r1
000874  9f421401  addli r5, r8, 140
000878  e340dffa  loadli.w r1,  -660(r30)
00087c  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
000880  17124e00  or r4, r28, r4
000884  7f325100  s_lm2gm r4, r5, 0(r[3:4])
000888  17318303  sll.d r[3:4], r[7:8], r24
00088c  2b0200f0  lui r4, 983040
000890  33930028  sext_int2long r[7:8], r1
000894  9f022401  addli r5, r8, 144
000898  e300effa  loadli.w r1,  -656(r30)
00089c  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
0008a0  17124e00  or r4, r28, r4
0008a4  7f325100  s_lm2gm r4, r5, 0(r[3:4])
0008a8  17318303  sll.d r[3:4], r[7:8], r24
0008ac  2b0200f0  lui r4, 983040
0008b0  b3920028  sext_int2long r[6:7], r1
0008b4  9f432401  addli r7, r8, 148
0008b8  e340effa  loadli.w r1,  -652(r30)
0008bc  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
0008c0  17124e00  or r4, r28, r4
0008c4  97b28203  sll.d r[6:7], r[6:7], r24
0008c8  7f327100  s_lm2gm r4, r7, 0(r[3:4])
0008cc  2b0200f0  lui r4, 983040
0008d0  0b215a10  add.ul r[3:4], r[21:22], r[6:7]
0008d4  b3920028  sext_int2long r[6:7], r1
0008d8  9f033401  addli r7, r8, 152
0008dc  e300fffa  loadli.w r1,  -648(r30)
0008e0  17124e00  or r4, r28, r4
0008e4  97b28203  sll.d r[6:7], r[6:7], r24
0008e8  7f327100  s_lm2gm r4, r7, 0(r[3:4])
0008ec  2b0200f0  lui r4, 983040
0008f0  0b215a10  add.ul r[3:4], r[21:22], r[6:7]
0008f4  9f423401  addli r5, r8, 156
0008f8  33930028  sext_int2long r[7:8], r1
0008fc  17124e00  or r4, r28, r4
000900  7f325100  s_lm2gm r4, r5, 0(r[3:4])
000904  eb500fdf  load.d r[2:3], -528(r30)
000908  97328303  sll.d r[6:7], r[7:8], r24
00090c  ab0300f0  lui r7, 983040
000910  8b225a10  add.ul r[6:7], r[21:22], r[6:7]
000914  97137e00  or r7, r28, r7
000918  8b211a10  add.ul r[4:5], r[21:22], r[2:3]
00091c  e340fffa  loadli.w r1,  -644(r30)
000920  ffb39200  s_lm2gm r7, r9, 0(r[6:7])
000924  ab0300f0  lui r7, 983040
000928  33950028  sext_int2long r[11:12], r1
00092c  e3000ffb  loadli.w r1,  -640(r30)
000930  97137e00  or r7, r28, r7
000934  97348503  sll.d r[10:11], r[11:12], r24
000938  9f454401  addli r11, r8, 164
00093c  b3920028  sext_int2long r[6:7], r1
000940  e3400ffb  loadli.w r1,  -636(r30)
000944  8b249a10  add.ul r[10:11], r[21:22], r[10:11]
000948  97b28203  sll.d r[6:7], r[6:7], r24
00094c  33960028  sext_int2long r[13:14], r1
000950  e3001ffb  loadli.w r1,  -632(r30)
000954  ffb3b400  s_lm2gm r7, r11, 0(r[10:11])
000958  ab0300f0  lui r7, 983040
00095c  8b225a10  add.ul r[6:7], r[21:22], r[6:7]
000960  97358603  sll.d r[12:13], r[13:14], r24
000964  9f065401  addli r13, r8, 168
000968  97137e00  or r7, r28, r7
00096c  b3940028  sext_int2long r[10:11], r1
000970  e3401ffb  loadli.w r1,  -628(r30)
000974  ffb3d200  s_lm2gm r7, r13, 0(r[6:7])
000978  8b25ba10  add.ul r[12:13], r[21:22], r[12:13]
00097c  ab0300f0  lui r7, 983040
000980  97b48403  sll.d r[10:11], r[10:11], r24
000984  33970028  sext_int2long r[15:16], r1
000988  e3002ffb  loadli.w r1,  -624(r30)
00098c  97137e00  or r7, r28, r7
000990  8b249a10  add.ul r[10:11], r[21:22], r[10:11]
000994  97368703  sll.d r[14:15], r[15:16], r24
000998  b3920028  sext_int2long r[6:7], r1
00099c  e3402ffb  loadli.w r1,  -620(r30)
0009a0  8b26da10  add.ul r[14:15], r[21:22], r[14:15]
0009a4  97b28203  sll.d r[6:7], r[6:7], r24
0009a8  b3980028  sext_int2long r[18:19], r1
0009ac  e3003ffb  loadli.w r1,  -616(r30)
0009b0  8b275a10  add.ul r[16:17], r[21:22], r[6:7]
0009b4  ab0200f0  lui r5, 983040
0009b8  1f435401  addli r6, r8, 172
0009bc  97125e00  or r5, r28, r5
0009c0  ffb26500  s_lm2gm r5, r6, 0(r[12:13])
0009c4  b3920028  sext_int2long r[6:7], r1
0009c8  e3403ffb  loadli.w r1,  -612(r30)
0009cc  97b58803  sll.d r[12:13], r[18:19], r24
0009d0  97b28203  sll.d r[6:7], r[6:7], r24
0009d4  8b28ba10  add.ul r[18:19], r[21:22], r[12:13]
0009d8  b3950028  sext_int2long r[12:13], r1
0009dc  e3004ffb  loadli.w r1,  -608(r30)
0009e0  0b2d5a10  add.ul r[27:28], r[21:22], r[6:7]
0009e4  ab0200f0  lui r5, 983040
0009e8  1f036401  addli r6, r8, 176
0009ec  97125e00  or r5, r28, r5
0009f0  ffb26400  s_lm2gm r5, r6, 0(r[10:11])
0009f4  97b48503  sll.d r[10:11], r[12:13], r24
0009f8  b3920028  sext_int2long r[6:7], r1
0009fc  8b209a10  add.ul r[2:3], r[21:22], r[10:11]
000a00  9f446401  addli r9, r8, 180
000a04  97b28203  sll.d r[6:7], r[6:7], r24
000a08  73301fda  store.d r[2:3], -608(r30)
000a0c  e3405ffb  loadli.w r1,  -596(r30)
000a10  ffb39600  s_lm2gm r7, r9, 0(r[14:15])
000a14  ab0300f0  lui r7, 983040
000a18  8b225a10  add.ul r[6:7], r[21:22], r[6:7]
000a1c  97137e00  or r7, r28, r7
000a20  33950028  sext_int2long r[11:12], r1
000a24  e3006ffb  loadli.w r1,  -592(r30)
000a28  97348503  sll.d r[10:11], r[11:12], r24
000a2c  33960028  sext_int2long r[13:14], r1
000a30  8b249a10  add.ul r[10:11], r[21:22], r[10:11]
000a34  97358603  sll.d r[12:13], r[13:14], r24
000a38  8b20ba10  add.ul r[2:3], r[21:22], r[12:13]
000a3c  9f057401  addli r11, r8, 184
000a40  6b560fda  load.d r[13:14], -608(r30)
000a44  73381fda  store.d r[2:3], -592(r30)
000a48  e3407ffb  loadli.w r1,  -580(r30)
000a4c  ffb3b700  s_lm2gm r7, r11, 0(r[16:17])
000a50  ab0300f0  lui r7, 983040
000a54  9f457401  addli r11, r8, 188
000a58  97137e00  or r7, r28, r7
000a5c  339b0028  sext_int2long r[23:24], r1
000a60  e3008ffb  loadli.w r1,  -576(r30)
000a64  ffb3b800  s_lm2gm r7, r11, 0(r[18:19])
000a68  ab0300f0  lui r7, 983040
000a6c  9f458401  addli r11, r8, 196
000a70  173b8b03  sll.d r[23:24], r[23:24], r24
000a74  33970028  sext_int2long r[15:16], r1
000a78  97137e00  or r7, r28, r7
000a7c  8b206a11  add.ul r[2:3], r[21:22], r[23:24]
000a80  ffb38100  s_lm2gm r7, r8, 0(r[4:5])
000a84  ab0100f0  lui r3, 983040
000a88  17378703  sll.d r[15:16], r[15:16], r24
000a8c  73301fdc  store.d r[2:3], -576(r30)
000a90  e3409ffb  loadli.w r1,  -564(r30)
000a94  97133e00  or r7, r28, r3
000a98  0b27ea10  add.ul r[15:16], r[21:22], r[15:16]
000a9c  339b0028  sext_int2long r[23:24], r1
000aa0  e340affb  loadli.w r1,  -556(r30)
000aa4  ff339d01  s_lm2gm r7, r25, 0(r[27:28])
000aa8  ab0300f0  lui r7, 983040
000aac  1f2d0000  addli r26, zero, 2
000ab0  97137e00  or r7, r28, r7
000ab4  173b8b03  sll.d r[23:24], r[23:24], r24
000ab8  33980028  sext_int2long r[17:18], r1
000abc  e300affb  loadli.w r1,  -560(r30)
000ac0  ff33b600  s_lm2gm r7, r11, 0(r[13:14])
000ac4  e343cffb  loadli.w r7,  -540(r30)
000ac8  9f059401  addli r11, r8, 200
000acc  0b2b6a11  add.ul r[23:24], r[21:22], r[23:24]
000ad0  17388803  sll.d r[17:18], r[17:18], r24
000ad4  33990028  sext_int2long r[19:20], r1
000ad8  e300bffb  loadli.w r1,  -552(r30)
000adc  0b280a11  add.ul r[17:18], r[21:22], r[17:18]
000ae0  17398903  sll.d r[19:20], r[19:20], r24
000ae4  b3900028  sext_int2long r[2:3], r1
000ae8  0b292a11  add.ul r[19:20], r[21:22], r[19:20]
000aec  97b08003  sll.d r[2:3], r[2:3], r24
000af0  8b201a10  add.ul r[2:3], r[21:22], r[2:3]
000af4  73381fde  store.d r[2:3], -528(r30)
000af8  e340bffb  loadli.w r1,  -548(r30)
000afc  b3900028  sext_int2long r[2:3], r1
000b00  97b08003  sll.d r[2:3], r[2:3], r24
000b04  339c0328  sext_int2long r[25:26], r7
000b08  ab0300f0  lui r7, 983040
000b0c  8b211a10  add.ul r[4:5], r[21:22], r[2:3]
000b10  e300cffb  loadli.w r1,  -544(r30)
000b14  97137e00  or r7, r28, r7
000b18  ffb3b200  s_lm2gm r7, r11, 0(r[6:7])
000b1c  e302dffb  loadli.w r5,  -536(r30)
000b20  ab0300f0  lui r7, 983040
000b24  9f45a401  addli r11, r8, 212
000b28  b3900028  sext_int2long r[2:3], r1
000b2c  97137e00  or r7, r28, r7
000b30  97b0a003  sll.d r[2:3], r[2:3], r26
000b34  b3920228  sext_int2long r[6:7], r5
000b38  0b261a10  add.ul r[13:14], r[21:22], r[2:3]
000b3c  9730ac03  sll.d r[2:3], r[25:26], r26
000b40  97b2a203  sll.d r[6:7], r[6:7], r26
000b44  0b2c1a10  add.ul r[25:26], r[21:22], r[2:3]
000b48  ab0000f0  lui r1, 983040
000b4c  1f419401  addli r2, r8, 204
000b50  97101e00  or r1, r28, r1
000b54  ffb02400  s_lm2gm r1, r2, 0(r[10:11])
000b58  e340dffb  loadli.w r1,  -532(r30)
000b5c  8b245a10  add.ul r[10:11], r[21:22], r[6:7]
000b60  b3900028  sext_int2long r[2:3], r1
000b64  97b0a003  sll.d r[2:3], r[2:3], r26
000b68  8b221a10  add.ul r[6:7], r[21:22], r[2:3]
000b6c  ab0000f0  lui r1, 983040
000b70  6b5a0fdb  load.d r[21:22], -592(r30)
000b74  1f01a401  addli r2, r8, 208
000b78  97101e00  or r1, r28, r1
000b7c  ff302a00  s_lm2gm r1, r2, 0(r[21:22])
000b80  eb500fdc  load.d r[2:3], -576(r30)
000b84  ffb3b000  s_lm2gm r7, r11, 0(r[2:3])
000b88  ab0000f0  lui r1, 983040
000b8c  ab0300f0  lui r7, 983040
000b90  1f01b401  addli r2, r8, 216
000b94  9f45b401  addli r11, r8, 220
000b98  97101e00  or r1, r28, r1
000b9c  97137e00  or r7, r28, r7
000ba0  ff302700  s_lm2gm r1, r2, 0(r[15:16])
000ba4  ff33bb00  s_lm2gm r7, r11, 0(r[23:24])
000ba8  ab0000f0  lui r1, 983040
000bac  ab0300f0  lui r7, 983040
000bb0  1f01c401  addli r2, r8, 224
000bb4  9f45c401  addli r11, r8, 228
000bb8  6b570fdf  load.d r[15:16], -528(r30)
000bbc  97101e00  or r1, r28, r1
000bc0  97137e00  or r7, r28, r7
000bc4  ff302800  s_lm2gm r1, r2, 0(r[17:18])
000bc8  ff33b900  s_lm2gm r7, r11, 0(r[19:20])
000bcc  ab0000f0  lui r1, 983040
000bd0  ab0300f0  lui r7, 983040
000bd4  1f01d401  addli r2, r8, 232
000bd8  9f45d401  addli r11, r8, 236
000bdc  97101e00  or r1, r28, r1
000be0  97137e00  or r7, r28, r7
000be4  ffb3b100  s_lm2gm r7, r11, 0(r[4:5])
000be8  ff302700  s_lm2gm r1, r2, 0(r[15:16])
000bec  9f030ffc  addli r7, r30, -512
000bf0  ab0000f0  lui r1, 983040
000bf4  ab0100f0  lui r3, 983040
000bf8  1f81e301  addli r2, r7, 240
000bfc  97101e00  or r1, r28, r1
000c00  1fc2e301  addli r4, r7, 244
000c04  97113e00  or r3, r28, r3
000c08  ff302600  s_lm2gm r1, r2, 0(r[13:14])
000c0c  ab0000f0  lui r1, 983040
000c10  ff314c00  s_lm2gm r3, r4, 0(r[25:26])
000c14  ab0100f0  lui r3, 983040
000c18  1f81f301  addli r2, r7, 248
000c1c  1fc2f301  addli r4, r7, 252
000c20  97101e00  or r1, r28, r1
000c24  97113e00  or r3, r28, r3
000c28  ffb02400  s_lm2gm r1, r2, 0(r[10:11])
000c2c  e304fffb  loadli.w r9,  -520(r30)
000c30  e300aff9  loadli.w r1,  -816(r30)
000c34  ffb14200  s_lm2gm r3, r4, 0(r[6:7])
000c38  00a00000  mfence { lm }
000c3c  6304eff8  loadli.w r8,  -912(r30)
000c40  8b941410  add.s r9, r9, r1
000c44  e340bff9  loadli.w r1,  -804(r30)
000c48  3fa01400  blt.s r9, r1, 8
000c4c  5b6e0100  j 2928
000c50  e3005f00  loadli.w r1,  40(r30)
000c54  e70f9ffa  storeli.w r9, -520(r30)
000c58  46100fc2  vstore_mask16.mz vr0{mr1}, 1536(r30)
000c5c  46140fc2  vstore_mask16.mz vr0{mr1}, 1600(r30)
000c60  ab0100f0  lui r3, 983040
000c64  2b0200f0  lui r4, 983040
000c68  92310002  vadd.s.mz vr3{mr1}, zero, vr0
000c6c  0b911430  div.s r2, r9, r1
000c70  e3404f00  loadli.w r1,  36(r30)
000c74  0b111130  div.s r2, r2, r1
000c78  e300bff9  loadli.w r1,  -808(r30)
000c7c  00a00000  mfence { lm }
000c80  46180fc2  vstore_mask16.mz vr0{mr1}, 1664(r30)
000c84  1b312100  slli r2, r2, 2
000c88  0b1e1110  add.s r28, r2, r1
000c8c  e340aff9  loadli.w r1,  -812(r30)
000c90  461c0fc2  vstore_mask16.mz vr0{mr1}, 1728(r30)
000c94  00a00000  mfence { lm }
000c98  9b3cae00  slli r25, r28, 10
000c9c  0b911c10  add.s r2, r25, r1
000ca0  9f000002  addli r1, zero, 256
000ca4  1f100000  addli zero, zero, 1
000ca8  b3120128  sext_int2long r[6:7], r2
000cac  17913000  or r2, r1, r3
000cb0  97914000  or r3, r1, r4
000cb4  1f020ffe  addli r4, r30, -256
000cb8  7e0100e0  vmmov mr2, zero
000cbc  17200000  xor zero, zero, zero
000cc0  97b4a203  sll.d r[10:11], r[6:7], r26
000cc4  eb520f00  load.d r[6:7], 0(r30)
000cc8  12310002  vadd.s.mz vr2{mr1}, zero, vr0
000ccc  12320002  vadd.s.mz vr4{mr1}, zero, vr0
000cd0  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000cd4  73389fde  store.d r[10:11], -528(r30)
000cd8  8ba29210  add.ul r[6:7], r[6:7], r[10:11]
000cdc  7fa17200  l_gm2lm r2, r7, 0(r[6:7])
000ce0  eb500fc8  load.d r[2:3], -896(r30)
000ce4  ffa14000  l_gm2lm r3, r4, 0(r[2:3])
000ce8  00a00000  mfence { lm }
000cec  e3002ffe  loadli.w r1,  -240(r30)
000cf0  63036fff  loadli.w r6,  -80(r30)
000cf4  e3090ffe  loadli.w r19,  -256(r30)
000cf8  e34a0ffe  loadli.w r21,  -252(r30)
000cfc  e30b1ffe  loadli.w r23,  -248(r30)
000d00  634d1ffe  loadli.w r26,  -244(r30)
000d04  e302cffe  loadli.w r5,  -160(r30)
000d08  6301dffe  loadli.w r2,  -152(r30)
000d0c  e341dffe  loadli.w r3,  -148(r30)
000d10  6302effe  loadli.w r4,  -144(r30)
000d14  e345effe  loadli.w r11,  -140(r30)
000d18  6305fffe  loadli.w r10,  -136(r30)
000d1c  e343fffe  loadli.w r7,  -132(r30)
000d20  e3040fff  loadli.w r9,  -128(r30)
000d24  63460fff  loadli.w r12,  -124(r30)
000d28  e3061fff  loadli.w r13,  -120(r30)
000d2c  63471fff  loadli.w r14,  -116(r30)
000d30  e3072fff  loadli.w r15,  -112(r30)
000d34  63482fff  loadli.w r16,  -108(r30)
000d38  e3083fff  loadli.w r17,  -104(r30)
000d3c  63493fff  loadli.w r18,  -100(r30)
000d40  630a4fff  loadli.w r20,  -96(r30)
000d44  634b4fff  loadli.w r22,  -92(r30)
000d48  630c5fff  loadli.w r24,  -88(r30)
000d4c  e34d5fff  loadli.w r27,  -84(r30)
000d50  e7431ffa  storeli.w r1, -708(r30)
000d54  e3402ffe  loadli.w r1,  -236(r30)
000d58  67046ffa  storeli.w r6, -704(r30)
000d5c  63436fff  loadli.w r6,  -76(r30)
000d60  67441ffa  storeli.w r1, -700(r30)
000d64  e3003ffe  loadli.w r1,  -232(r30)
000d68  e7046ffa  storeli.w r6, -696(r30)
000d6c  63037fff  loadli.w r6,  -72(r30)
000d70  e7441ffa  storeli.w r1, -692(r30)
000d74  e3403ffe  loadli.w r1,  -228(r30)
000d78  67056ffa  storeli.w r6, -688(r30)
000d7c  63437fff  loadli.w r6,  -68(r30)
000d80  67451ffa  storeli.w r1, -684(r30)
000d84  e3004ffe  loadli.w r1,  -224(r30)
000d88  e7056ffa  storeli.w r6, -680(r30)
000d8c  63038fff  loadli.w r6,  -64(r30)
000d90  e7451ffa  storeli.w r1, -676(r30)
000d94  e3404ffe  loadli.w r1,  -220(r30)
000d98  67066ffa  storeli.w r6, -672(r30)
000d9c  63438fff  loadli.w r6,  -60(r30)
000da0  67461ffa  storeli.w r1, -668(r30)
000da4  e3005ffe  loadli.w r1,  -216(r30)
000da8  e7066ffa  storeli.w r6, -664(r30)
000dac  63039fff  loadli.w r6,  -56(r30)
000db0  e7461ffa  storeli.w r1, -660(r30)
000db4  e3405ffe  loadli.w r1,  -212(r30)
000db8  67076ffa  storeli.w r6, -656(r30)
000dbc  63439fff  loadli.w r6,  -52(r30)
000dc0  67471ffa  storeli.w r1, -652(r30)
000dc4  e3006ffe  loadli.w r1,  -208(r30)
000dc8  e7076ffa  storeli.w r6, -648(r30)
000dcc  6303afff  loadli.w r6,  -48(r30)
000dd0  e7471ffa  storeli.w r1, -644(r30)
000dd4  e3406ffe  loadli.w r1,  -204(r30)
000dd8  67086ffa  storeli.w r6, -640(r30)
000ddc  6343afff  loadli.w r6,  -44(r30)
000de0  67481ffa  storeli.w r1, -636(r30)
000de4  e3007ffe  loadli.w r1,  -200(r30)
000de8  e7086ffa  storeli.w r6, -632(r30)
000dec  6303bfff  loadli.w r6,  -40(r30)
000df0  e7481ffa  storeli.w r1, -628(r30)
000df4  e3407ffe  loadli.w r1,  -196(r30)
000df8  67096ffa  storeli.w r6, -624(r30)
000dfc  6343bfff  loadli.w r6,  -36(r30)
000e00  67491ffa  storeli.w r1, -620(r30)
000e04  e3008ffe  loadli.w r1,  -192(r30)
000e08  e7096ffa  storeli.w r6, -616(r30)
000e0c  6303cfff  loadli.w r6,  -32(r30)
000e10  e7491ffa  storeli.w r1, -612(r30)
000e14  e3408ffe  loadli.w r1,  -188(r30)
000e18  670a6ffa  storeli.w r6, -608(r30)
000e1c  6343cfff  loadli.w r6,  -28(r30)
000e20  e74a1ffa  storeli.w r1, -596(r30)
000e24  e3009ffe  loadli.w r1,  -184(r30)
000e28  670b6ffa  storeli.w r6, -592(r30)
000e2c  6303dfff  loadli.w r6,  -24(r30)
000e30  e74b1ffa  storeli.w r1, -580(r30)
000e34  e3409ffe  loadli.w r1,  -180(r30)
000e38  670c6ffa  storeli.w r6, -576(r30)
000e3c  6343dfff  loadli.w r6,  -20(r30)
000e40  e74c1ffa  storeli.w r1, -564(r30)
000e44  e300affe  loadli.w r1,  -176(r30)
000e48  670d6ffa  storeli.w r6, -560(r30)
000e4c  6303efff  loadli.w r6,  -16(r30)
000e50  674d1ffa  storeli.w r1, -556(r30)
000e54  e340affe  loadli.w r1,  -172(r30)
000e58  e70d6ffa  storeli.w r6, -552(r30)
000e5c  6343efff  loadli.w r6,  -12(r30)
000e60  e74d1ffa  storeli.w r1, -548(r30)
000e64  e300bffe  loadli.w r1,  -168(r30)
000e68  670e6ffa  storeli.w r6, -544(r30)
000e6c  6303ffff  loadli.w r6,  -8(r30)
000e70  674e1ffa  storeli.w r1, -540(r30)
000e74  e340bffe  loadli.w r1,  -164(r30)
000e78  e70e6ffa  storeli.w r6, -536(r30)
000e7c  6343ffff  loadli.w r6,  -4(r30)
000e80  e74e1ffa  storeli.w r1, -532(r30)
000e84  e340cffe  loadli.w r1,  -156(r30)
000e88  eaa13934  vor.u.mh vr3{mr2}, r19, vr3
000e8c  9f290000  addli r19, zero, 2
000e90  fe8109e0  vmmov mr3, r19
000e94  9f490000  addli r19, zero, 4
000e98  eaa13a36  vor.u.mh vr3{mr3}, r21, vr3
000e9c  7e8009e0  vmmov mr0, r19
000ea0  9f091000  addli r19, zero, 8
000ea4  9f4a0000  addli r21, zero, 4
000ea8  eaa13b30  vor.u.mh vr3{mr0}, r23, vr3
000eac  7e8009e0  vmmov mr0, r19
000eb0  9f092000  addli r19, zero, 16
000eb4  ea213d30  vor.u.mh vr3{mr0}, r26, vr3
000eb8  7e8009e0  vmmov mr0, r19
000ebc  e3497ffa  loadli.w r19,  -708(r30)
000ec0  eaa13930  vor.u.mh vr3{mr0}, r19, vr3
000ec4  9f094000  addli r19, zero, 32
000ec8  7e8009e0  vmmov mr0, r19
000ecc  e3498ffa  loadli.w r19,  -700(r30)
000ed0  eaa13930  vor.u.mh vr3{mr0}, r19, vr3
000ed4  9f098000  addli r19, zero, 64
000ed8  7e8009e0  vmmov mr0, r19
000edc  e3499ffa  loadli.w r19,  -692(r30)
000ee0  eaa13930  vor.u.mh vr3{mr0}, r19, vr3
000ee4  9f090001  addli r19, zero, 128
000ee8  7e8009e0  vmmov mr0, r19
000eec  e349affa  loadli.w r19,  -684(r30)
000ef0  eaa13930  vor.u.mh vr3{mr0}, r19, vr3
000ef4  9f090002  addli r19, zero, 256
000ef8  7e8009e0  vmmov mr0, r19
000efc  e349bffa  loadli.w r19,  -676(r30)
000f00  eaa13930  vor.u.mh vr3{mr0}, r19, vr3
000f04  9f090004  addli r19, zero, 512
000f08  7e8009e0  vmmov mr0, r19
000f0c  e349cffa  loadli.w r19,  -668(r30)
000f10  eaa13930  vor.u.mh vr3{mr0}, r19, vr3
000f14  9f090008  addli r19, zero, 1024
000f18  7e8009e0  vmmov mr0, r19
000f1c  e349dffa  loadli.w r19,  -660(r30)
000f20  eaa13930  vor.u.mh vr3{mr0}, r19, vr3
000f24  9f090010  addli r19, zero, 2048
000f28  7e8009e0  vmmov mr0, r19
000f2c  e349effa  loadli.w r19,  -652(r30)
000f30  eaa13930  vor.u.mh vr3{mr0}, r19, vr3
000f34  9f090020  addli r19, zero, 4096
000f38  7e8009e0  vmmov mr0, r19
000f3c  e349fffa  loadli.w r19,  -644(r30)
000f40  eaa13930  vor.u.mh vr3{mr0}, r19, vr3
000f44  9f090040  addli r19, zero, 8192
000f48  7e8009e0  vmmov mr0, r19
000f4c  e3490ffb  loadli.w r19,  -636(r30)
000f50  eaa13930  vor.u.mh vr3{mr0}, r19, vr3
000f54  ab490000  lui r19, 4
000f58  7e8009e0  vmmov mr0, r19
000f5c  e3491ffb  loadli.w r19,  -628(r30)
000f60  eaa13930  vor.u.mh vr3{mr0}, r19, vr3
000f64  ab890000  lui r19, 8
000f68  7e8009e0  vmmov mr0, r19
000f6c  e3492ffb  loadli.w r19,  -620(r30)
000f70  eaa13930  vor.u.mh vr3{mr0}, r19, vr3
000f74  e3493ffb  loadli.w r19,  -612(r30)
000f78  7e800ae0  vmmov mr0, r21
000f7c  9f0a1000  addli r21, zero, 8
000f80  6aa12934  vor.u.mh vr2{mr2}, r19, vr2
000f84  e3495ffb  loadli.w r19,  -596(r30)
000f88  7e810ae0  vmmov mr2, r21
000f8c  9f0a2000  addli r21, zero, 16
000f90  6aa12936  vor.u.mh vr2{mr3}, r19, vr2
000f94  e3497ffb  loadli.w r19,  -580(r30)
000f98  fe810ae0  vmmov mr3, r21
000f9c  9f0a4000  addli r21, zero, 32
000fa0  6aa12930  vor.u.mh vr2{mr0}, r19, vr2
000fa4  e3499ffb  loadli.w r19,  -564(r30)
000fa8  7e800ae0  vmmov mr0, r21
000fac  9f0a8000  addli r21, zero, 64
000fb0  6aa12934  vor.u.mh vr2{mr2}, r19, vr2
000fb4  e349affb  loadli.w r19,  -556(r30)
000fb8  6aa12936  vor.u.mh vr2{mr3}, r19, vr2
000fbc  e349bffb  loadli.w r19,  -548(r30)
000fc0  6aa12930  vor.u.mh vr2{mr0}, r19, vr2
000fc4  e349cffb  loadli.w r19,  -540(r30)
000fc8  7e800ae0  vmmov mr0, r21
000fcc  9f0a0001  addli r21, zero, 128
000fd0  6aa12930  vor.u.mh vr2{mr0}, r19, vr2
000fd4  e349dffb  loadli.w r19,  -532(r30)
000fd8  7e800ae0  vmmov mr0, r21
000fdc  6aa12930  vor.u.mh vr2{mr0}, r19, vr2
000fe0  9f090002  addli r19, zero, 256
000fe4  7e8009e0  vmmov mr0, r19
000fe8  6aa12230  vor.u.mh vr2{mr0}, r5, vr2
000fec  9f020004  addli r5, zero, 512
000ff0  7e8002e0  vmmov mr0, r5
000ff4  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000ff8  9f000008  addli r1, zero, 1024
000ffc  7e8000e0  vmmov mr0, r1
001000  9f000010  addli r1, zero, 2048
001004  6a212130  vor.u.mh vr2{mr0}, r2, vr2
001008  7e8000e0  vmmov mr0, r1
00100c  9f000020  addli r1, zero, 4096
001010  1f010020  addli r2, zero, 4096
001014  6aa12130  vor.u.mh vr2{mr0}, r3, vr2
001018  7e8000e0  vmmov mr0, r1
00101c  9f000040  addli r1, zero, 8192
001020  6a212230  vor.u.mh vr2{mr0}, r4, vr2
001024  7e8000e0  vmmov mr0, r1
001028  ab400000  lui r1, 4
00102c  6aa12530  vor.u.mh vr2{mr0}, r11, vr2
001030  7e8000e0  vmmov mr0, r1
001034  ab800000  lui r1, 8
001038  6a212530  vor.u.mh vr2{mr0}, r10, vr2
00103c  7e8000e0  vmmov mr0, r1
001040  9f100000  addli r1, zero, 1
001044  6aa12330  vor.u.mh vr2{mr0}, r7, vr2
001048  7e8000e0  vmmov mr0, r1
00104c  9f200000  addli r1, zero, 2
001050  6aa24430  vor.u.mh vr4{mr0}, r9, vr4
001054  7e8000e0  vmmov mr0, r1
001058  9f400000  addli r1, zero, 4
00105c  6a224630  vor.u.mh vr4{mr0}, r12, vr4
001060  7e8000e0  vmmov mr0, r1
001064  9f004000  addli r1, zero, 32
001068  6aa24630  vor.u.mh vr4{mr0}, r13, vr4
00106c  7e8000e0  vmmov mr0, r1
001070  9f008000  addli r1, zero, 64
001074  6a224734  vor.u.mh vr4{mr2}, r14, vr4
001078  6aa24736  vor.u.mh vr4{mr3}, r15, vr4
00107c  6a224830  vor.u.mh vr4{mr0}, r16, vr4
001080  7e8000e0  vmmov mr0, r1
001084  9f000001  addli r1, zero, 128
001088  7e8100e0  vmmov mr2, r1
00108c  9f000002  addli r1, zero, 256
001090  6aa24830  vor.u.mh vr4{mr0}, r17, vr4
001094  fe8100e0  vmmov mr3, r1
001098  9f000004  addli r1, zero, 512
00109c  7e8000e0  vmmov mr0, r1
0010a0  9f000008  addli r1, zero, 1024
0010a4  6a224934  vor.u.mh vr4{mr2}, r18, vr4
0010a8  6a224a36  vor.u.mh vr4{mr3}, r20, vr4
0010ac  6a224b30  vor.u.mh vr4{mr0}, r22, vr4
0010b0  7e8000e0  vmmov mr0, r1
0010b4  9f000010  addli r1, zero, 2048
0010b8  6a224c30  vor.u.mh vr4{mr0}, r24, vr4
0010bc  7e8000e0  vmmov mr0, r1
0010c0  6aa24d30  vor.u.mh vr4{mr0}, r27, vr4
0010c4  e3008ffa  loadli.w r1,  -704(r30)
0010c8  7e0001e0  vmmov mr0, r2
0010cc  1f010040  addli r2, zero, 8192
0010d0  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0010d4  e3009ffa  loadli.w r1,  -696(r30)
0010d8  7e0001e0  vmmov mr0, r2
0010dc  2b410000  lui r2, 4
0010e0  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0010e4  e300affa  loadli.w r1,  -688(r30)
0010e8  7e0001e0  vmmov mr0, r2
0010ec  2b810000  lui r2, 8
0010f0  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0010f4  e300bffa  loadli.w r1,  -680(r30)
0010f8  7e0001e0  vmmov mr0, r2
0010fc  1f110000  addli r2, zero, 1
001100  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
001104  e300cffa  loadli.w r1,  -672(r30)
001108  7e0001e0  vmmov mr0, r2
00110c  1f210000  addli r2, zero, 2
001110  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001114  e300dffa  loadli.w r1,  -664(r30)
001118  7e0001e0  vmmov mr0, r2
00111c  1f410000  addli r2, zero, 4
001120  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001124  e300effa  loadli.w r1,  -656(r30)
001128  7e0001e0  vmmov mr0, r2
00112c  1f011000  addli r2, zero, 8
001130  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001134  e300fffa  loadli.w r1,  -648(r30)
001138  7e0001e0  vmmov mr0, r2
00113c  1f012000  addli r2, zero, 16
001140  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001144  e3000ffb  loadli.w r1,  -640(r30)
001148  7e0001e0  vmmov mr0, r2
00114c  1f014000  addli r2, zero, 32
001150  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001154  e3001ffb  loadli.w r1,  -632(r30)
001158  7e0001e0  vmmov mr0, r2
00115c  1f018000  addli r2, zero, 64
001160  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001164  e3002ffb  loadli.w r1,  -624(r30)
001168  7e0001e0  vmmov mr0, r2
00116c  1f010004  addli r2, zero, 512
001170  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001174  e3003ffb  loadli.w r1,  -616(r30)
001178  7e0001e0  vmmov mr0, r2
00117c  1f010008  addli r2, zero, 1024
001180  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
001184  e3004ffb  loadli.w r1,  -608(r30)
001188  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
00118c  e3006ffb  loadli.w r1,  -592(r30)
001190  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001194  e3008ffb  loadli.w r1,  -576(r30)
001198  7e0001e0  vmmov mr0, r2
00119c  1f010010  addli r2, zero, 2048
0011a0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0011a4  e300affb  loadli.w r1,  -560(r30)
0011a8  7e0001e0  vmmov mr0, r2
0011ac  1f010020  addli r2, zero, 4096
0011b0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0011b4  e300bffb  loadli.w r1,  -552(r30)
0011b8  7e0001e0  vmmov mr0, r2
0011bc  1f010040  addli r2, zero, 8192
0011c0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0011c4  e300cffb  loadli.w r1,  -544(r30)
0011c8  7e0001e0  vmmov mr0, r2
0011cc  2b410000  lui r2, 4
0011d0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0011d4  e300dffb  loadli.w r1,  -536(r30)
0011d8  7e0001e0  vmmov mr0, r2
0011dc  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0011e0  ab800000  lui r1, 8
0011e4  7e8000e0  vmmov mr0, r1
0011e8  9f000004  addli r1, zero, 512
0011ec  ea225330  vor.u.mh vr5{mr0}, r6, vr5
0011f0  6341fffb  loadli.w r2,  -516(r30)
0011f4  3f201e00  blt.s r28, r1, 8
0011f8  1f010000  addli r2, zero, 0
0011fc  42130fc2  vload_mask16.mz vr6{mr1}, 1536(r30)
001200  c2138fc2  vload_mask16.mz vr7{mr1}, 1600(r30)
001204  42140fc3  vload_mask16.mz vr8{mr1}, 1664(r30)
001208  12350002  vadd.s.mz vr10{mr1}, zero, vr0
00120c  c2148fc3  vload_mask16.mz vr9{mr1}, 1728(r30)
001210  7e0101e0  vmmov mr2, r2
001214  e340cff9  loadli.w r1,  -796(r30)
001218  16912302  vadd.f.mz.rn vr2{mr1}, vr7, vr2
00121c  96113302  vadd.f.mz.rn vr3{mr1}, vr6, vr3
001220  92330002  vadd.s.mz vr7{mr1}, zero, vr0
001224  16124402  vadd.f.mz.rn vr4{mr1}, vr8, vr4
001228  12340002  vadd.s.mz vr8{mr1}, zero, vr0
00122c  16935402  vadd.f.mz.rn vr6{mr1}, vr9, vr5
001230  6e952034  vor.f.mh vr10{mr2}, vr1, vr2
001234  ee933034  vor.f.mh vr7{mr2}, vr1, vr3
001238  6e944034  vor.f.mh vr8{mr2}, vr1, vr4
00123c  9692a302  vadd.f.mz.rn vr5{mr1}, vr7, vr10
001240  92330002  vadd.s.mz vr7{mr1}, zero, vr0
001244  ee936034  vor.f.mh vr7{mr2}, vr1, vr6
001248  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
00124c  96927202  vadd.f.mz.rn vr5{mr1}, vr5, vr7
001250  7a910240  vextracti.f r2, 0(vr5)
001254  fa911240  vextracti.f r3, 1(vr5)
001258  0b613110  add.f.rn r2, r2, r3
00125c  fa912240  vextracti.f r3, 2(vr5)
001260  0be12110  add.f.rn r2, r3, r2
001264  fa913240  vextracti.f r3, 3(vr5)
001268  0be12110  add.f.rn r2, r3, r2
00126c  fa914240  vextracti.f r3, 4(vr5)
001270  0be12110  add.f.rn r2, r3, r2
001274  fa915240  vextracti.f r3, 5(vr5)
001278  0be12110  add.f.rn r2, r3, r2
00127c  fa916240  vextracti.f r3, 6(vr5)
001280  0be12110  add.f.rn r2, r3, r2
001284  fa917240  vextracti.f r3, 7(vr5)
001288  0be12110  add.f.rn r2, r3, r2
00128c  fa918240  vextracti.f r3, 8(vr5)
001290  0be12110  add.f.rn r2, r3, r2
001294  fa919240  vextracti.f r3, 9(vr5)
001298  0be12110  add.f.rn r2, r3, r2
00129c  fa91a240  vextracti.f r3, 10(vr5)
0012a0  0be12110  add.f.rn r2, r3, r2
0012a4  fa91b240  vextracti.f r3, 11(vr5)
0012a8  0be12110  add.f.rn r2, r3, r2
0012ac  fa91c240  vextracti.f r3, 12(vr5)
0012b0  0be12110  add.f.rn r2, r3, r2
0012b4  fa91d240  vextracti.f r3, 13(vr5)
0012b8  0be12110  add.f.rn r2, r3, r2
0012bc  fa91e240  vextracti.f r3, 14(vr5)
0012c0  0be12110  add.f.rn r2, r3, r2
0012c4  fa91f240  vextracti.f r3, 15(vr5)
0012c8  0be12110  add.f.rn r2, r3, r2
0012cc  73e02000  stores.w r2, 0(r1)
0012d0  00a00300  mfence { lm, sm, gm }
0012d4  e340fffb  loadli.w r1,  -516(r30)
0012d8  80a10004  csr_set csr3, r1
0012dc  00d00100  sync_group
0012e0  3b220400  bneq r8, zero, 136
0012e4  e340dff9  loadli.w r1,  -788(r30)
0012e8  6fc10000  loads.w r2, 0(r1)
0012ec  efc14000  loads.w r3, 4(r1)
0012f0  6fc28000  loads.w r4, 8(r1)
0012f4  0b613110  add.f.rn r2, r2, r3
0012f8  efc1c000  loads.w r3, 12(r1)
0012fc  0b614110  add.f.rn r2, r2, r4
001300  6fc20001  loads.w r4, 16(r1)
001304  0b613110  add.f.rn r2, r2, r3
001308  efc14001  loads.w r3, 20(r1)
00130c  0b614110  add.f.rn r2, r2, r4
001310  6fc28001  loads.w r4, 24(r1)
001314  0b613110  add.f.rn r2, r2, r3
001318  efc1c001  loads.w r3, 28(r1)
00131c  0b614110  add.f.rn r2, r2, r4
001320  6fc20002  loads.w r4, 32(r1)
001324  0b613110  add.f.rn r2, r2, r3
001328  efc14002  loads.w r3, 36(r1)
00132c  0b614110  add.f.rn r2, r2, r4
001330  6fc28002  loads.w r4, 40(r1)
001334  0b613110  add.f.rn r2, r2, r3
001338  efc1c002  loads.w r3, 44(r1)
00133c  0b614110  add.f.rn r2, r2, r4
001340  6fc20003  loads.w r4, 48(r1)
001344  0b613110  add.f.rn r2, r2, r3
001348  efc14003  loads.w r3, 52(r1)
00134c  0b614110  add.f.rn r2, r2, r4
001350  6fc28003  loads.w r4, 56(r1)
001354  0b613110  add.f.rn r2, r2, r3
001358  efc1c003  loads.w r3, 60(r1)
00135c  0b614110  add.f.rn r2, r2, r4
001360  0b613110  add.f.rn r2, r2, r3
001364  73e02000  stores.w r2, 0(r1)
001368  abf00000  lui r1, 15
00136c  00a00300  mfence { lm, sm, gm }
001370  92330002  vadd.s.mz vr7{mr1}, zero, vr0
001374  12340002  vadd.s.mz vr8{mr1}, zero, vr0
001378  92340002  vadd.s.mz vr9{mr1}, zero, vr0
00137c  9b94f0ff  ori r9, r1, 4095
001380  80a10404  csr_set csr3, r9
001384  00d00100  sync_group
001388  e340dff9  loadli.w r1,  -788(r30)
00138c  6fc10000  loads.w r2, 0(r1)
001390  ab0080ba  lui r1, 763904
001394  0b611120  mul.f.rn r2, r2, r1
001398  92123102  vadd.f.mz.rn vr5{mr1}, r2, vr3
00139c  92112102  vadd.f.mz.rn vr3{mr1}, r2, vr2
0013a0  0e955202  vmul.f.mz.rn vr10{mr1}, vr5, vr5
0013a4  0e913102  vmul.f.mz.rn vr2{mr1}, vr3, vr3
0013a8  12124102  vadd.f.mz.rn vr4{mr1}, r2, vr4
0013ac  12136102  vadd.f.mz.rn vr6{mr1}, r2, vr6
0013b0  e3409ff9  loadli.w r1,  -820(r30)
0013b4  ee93a034  vor.f.mh vr7{mr2}, vr1, vr10
0013b8  6e942034  vor.f.mh vr8{mr2}, vr1, vr2
0013bc  0e154202  vmul.f.mz.rn vr10{mr1}, vr4, vr4
0013c0  0e116302  vmul.f.mz.rn vr2{mr1}, vr6, vr6
0013c4  96938302  vadd.f.mz.rn vr7{mr1}, vr7, vr8
0013c8  12340002  vadd.s.mz vr8{mr1}, zero, vr0
0013cc  ee94a034  vor.f.mh vr9{mr2}, vr1, vr10
0013d0  6e942034  vor.f.mh vr8{mr2}, vr1, vr2
0013d4  16919302  vadd.f.mz.rn vr2{mr1}, vr7, vr9
0013d8  16118102  vadd.f.mz.rn vr2{mr1}, vr2, vr8
0013dc  7a110140  vextracti.f r2, 0(vr2)
0013e0  fa111140  vextracti.f r3, 1(vr2)
0013e4  7a13b140  vextracti.f r6, 11(vr2)
0013e8  0b613110  add.f.rn r2, r2, r3
0013ec  fa112140  vextracti.f r3, 2(vr2)
0013f0  0be12110  add.f.rn r2, r3, r2
0013f4  fa113140  vextracti.f r3, 3(vr2)
0013f8  0be12110  add.f.rn r2, r3, r2
0013fc  fa114140  vextracti.f r3, 4(vr2)
001400  0be12110  add.f.rn r2, r3, r2
001404  fa115140  vextracti.f r3, 5(vr2)
001408  0be12110  add.f.rn r2, r3, r2
00140c  fa116140  vextracti.f r3, 6(vr2)
001410  0be12110  add.f.rn r2, r3, r2
001414  fa117140  vextracti.f r3, 7(vr2)
001418  0be12110  add.f.rn r2, r3, r2
00141c  fa118140  vextracti.f r3, 8(vr2)
001420  0be12110  add.f.rn r2, r3, r2
001424  fa119140  vextracti.f r3, 9(vr2)
001428  0be12110  add.f.rn r2, r3, r2
00142c  fa11a140  vextracti.f r3, 10(vr2)
001430  8be22110  add.f.rn r5, r3, r2
001434  0b919011  add.s r2, r1, r25
001438  e3009ff9  loadli.w r1,  -824(r30)
00143c  8b919011  add.s r3, r1, r25
001440  e3408ff9  loadli.w r1,  -828(r30)
001444  0b929011  add.s r4, r1, r25
001448  e3008ff9  loadli.w r1,  -832(r30)
00144c  8b625310  add.f.rn r5, r6, r5
001450  7a13c140  vextracti.f r6, 12(vr2)
001454  0b959011  add.s r10, r1, r25
001458  e3407ff9  loadli.w r1,  -836(r30)
00145c  0b969011  add.s r12, r1, r25
001460  e3007ff9  loadli.w r1,  -840(r30)
001464  8b625310  add.f.rn r5, r6, r5
001468  7a13d140  vextracti.f r6, 13(vr2)
00146c  8b969011  add.s r13, r1, r25
001470  e3406ff9  loadli.w r1,  -844(r30)
001474  0b979011  add.s r14, r1, r25
001478  e3006ff9  loadli.w r1,  -848(r30)
00147c  8b625310  add.f.rn r5, r6, r5
001480  7a13e140  vextracti.f r6, 14(vr2)
001484  0b989011  add.s r16, r1, r25
001488  e3405ff9  loadli.w r1,  -852(r30)
00148c  0b9d9011  add.s r26, r1, r25
001490  e3005ff9  loadli.w r1,  -856(r30)
001494  8b625310  add.f.rn r5, r6, r5
001498  7a13f140  vextracti.f r6, 15(vr2)
00149c  8b9d9011  add.s r27, r1, r25
0014a0  e3404ff9  loadli.w r1,  -860(r30)
0014a4  8b939011  add.s r7, r1, r25
0014a8  e3004ff9  loadli.w r1,  -864(r30)
0014ac  8b625310  add.f.rn r5, r6, r5
0014b0  8b909011  add.s r1, r1, r25
0014b4  e7001ffa  storeli.w r1, -760(r30)
0014b8  e3403ff9  loadli.w r1,  -868(r30)
0014bc  8b909011  add.s r1, r1, r25
0014c0  e7401ffa  storeli.w r1, -756(r30)
0014c4  e3003ff9  loadli.w r1,  -872(r30)
0014c8  8b909011  add.s r1, r1, r25
0014cc  67011ffa  storeli.w r1, -752(r30)
0014d0  e3402ff9  loadli.w r1,  -876(r30)
0014d4  8b909011  add.s r1, r1, r25
0014d8  67411ffa  storeli.w r1, -748(r30)
0014dc  e3002ff9  loadli.w r1,  -880(r30)
0014e0  8b909011  add.s r1, r1, r25
0014e4  e7011ffa  storeli.w r1, -744(r30)
0014e8  e3401ff9  loadli.w r1,  -884(r30)
0014ec  8b909011  add.s r1, r1, r25
0014f0  e7411ffa  storeli.w r1, -740(r30)
0014f4  e340fff8  loadli.w r1,  -900(r30)
0014f8  8b909011  add.s r1, r1, r25
0014fc  67021ffa  storeli.w r1, -736(r30)
001500  e300fff8  loadli.w r1,  -904(r30)
001504  8b909011  add.s r1, r1, r25
001508  67421ffa  storeli.w r1, -732(r30)
00150c  e340eff8  loadli.w r1,  -908(r30)
001510  8b909011  add.s r1, r1, r25
001514  e7021ffa  storeli.w r1, -728(r30)
001518  e300dff8  loadli.w r1,  -920(r30)
00151c  8b909011  add.s r1, r1, r25
001520  e7421ffa  storeli.w r1, -724(r30)
001524  e340cff8  loadli.w r1,  -924(r30)
001528  8b909011  add.s r1, r1, r25
00152c  67031ffa  storeli.w r1, -720(r30)
001530  e300cff8  loadli.w r1,  -928(r30)
001534  8b909011  add.s r1, r1, r25
001538  67431ffa  storeli.w r1, -716(r30)
00153c  e340bff8  loadli.w r1,  -932(r30)
001540  8b909011  add.s r1, r1, r25
001544  e7031ffa  storeli.w r1, -712(r30)
001548  e300bff8  loadli.w r1,  -936(r30)
00154c  8b909011  add.s r1, r1, r25
001550  e7431ffa  storeli.w r1, -708(r30)
001554  e300cff9  loadli.w r1,  -800(r30)
001558  73e05000  stores.w r5, 0(r1)
00155c  e340aff8  loadli.w r1,  -940(r30)
001560  8b909011  add.s r1, r1, r25
001564  67041ffa  storeli.w r1, -704(r30)
001568  e300aff8  loadli.w r1,  -944(r30)
00156c  8b909011  add.s r1, r1, r25
001570  67441ffa  storeli.w r1, -700(r30)
001574  e3409ff8  loadli.w r1,  -948(r30)
001578  8b909011  add.s r1, r1, r25
00157c  e7041ffa  storeli.w r1, -696(r30)
001580  e3009ff8  loadli.w r1,  -952(r30)
001584  8b909011  add.s r1, r1, r25
001588  e7441ffa  storeli.w r1, -692(r30)
00158c  e3408ff8  loadli.w r1,  -956(r30)
001590  8b909011  add.s r1, r1, r25
001594  67051ffa  storeli.w r1, -688(r30)
001598  e3008ff8  loadli.w r1,  -960(r30)
00159c  8b909011  add.s r1, r1, r25
0015a0  67451ffa  storeli.w r1, -684(r30)
0015a4  e3407ff8  loadli.w r1,  -964(r30)
0015a8  8b909011  add.s r1, r1, r25
0015ac  e7051ffa  storeli.w r1, -680(r30)
0015b0  e3007ff8  loadli.w r1,  -968(r30)
0015b4  8b909011  add.s r1, r1, r25
0015b8  e7451ffa  storeli.w r1, -676(r30)
0015bc  e3406ff8  loadli.w r1,  -972(r30)
0015c0  8b909011  add.s r1, r1, r25
0015c4  67061ffa  storeli.w r1, -672(r30)
0015c8  e3006ff8  loadli.w r1,  -976(r30)
0015cc  8b909011  add.s r1, r1, r25
0015d0  67461ffa  storeli.w r1, -668(r30)
0015d4  e3405ff8  loadli.w r1,  -980(r30)
0015d8  8b909011  add.s r1, r1, r25
0015dc  e7061ffa  storeli.w r1, -664(r30)
0015e0  e3005ff8  loadli.w r1,  -984(r30)
0015e4  8b909011  add.s r1, r1, r25
0015e8  e7461ffa  storeli.w r1, -660(r30)
0015ec  e3404ff8  loadli.w r1,  -988(r30)
0015f0  8b909011  add.s r1, r1, r25
0015f4  67071ffa  storeli.w r1, -656(r30)
0015f8  e3004ff8  loadli.w r1,  -992(r30)
0015fc  8b909011  add.s r1, r1, r25
001600  67471ffa  storeli.w r1, -652(r30)
001604  e3403ff8  loadli.w r1,  -996(r30)
001608  8b909011  add.s r1, r1, r25
00160c  e7071ffa  storeli.w r1, -648(r30)
001610  e3003ff8  loadli.w r1,  -1000(r30)
001614  8b909011  add.s r1, r1, r25
001618  e7471ffa  storeli.w r1, -644(r30)
00161c  e3402ff8  loadli.w r1,  -1004(r30)
001620  8b909011  add.s r1, r1, r25
001624  67081ffa  storeli.w r1, -640(r30)
001628  e3002ff8  loadli.w r1,  -1008(r30)
00162c  8b909011  add.s r1, r1, r25
001630  67481ffa  storeli.w r1, -636(r30)
001634  e3401ff8  loadli.w r1,  -1012(r30)
001638  8b909011  add.s r1, r1, r25
00163c  e7081ffa  storeli.w r1, -632(r30)
001640  e3001ff8  loadli.w r1,  -1016(r30)
001644  8b909011  add.s r1, r1, r25
001648  e7481ffa  storeli.w r1, -628(r30)
00164c  e3400ff8  loadli.w r1,  -1020(r30)
001650  8b909011  add.s r1, r1, r25
001654  67091ffa  storeli.w r1, -624(r30)
001658  e3000ff8  loadli.w r1,  -1024(r30)
00165c  8b909011  add.s r1, r1, r25
001660  67491ffa  storeli.w r1, -620(r30)
001664  e340fff7  loadli.w r1,  -1028(r30)
001668  8b909011  add.s r1, r1, r25
00166c  e7091ffa  storeli.w r1, -616(r30)
001670  e300fff7  loadli.w r1,  -1032(r30)
001674  8b909011  add.s r1, r1, r25
001678  e7491ffa  storeli.w r1, -612(r30)
00167c  e340eff7  loadli.w r1,  -1036(r30)
001680  8b909011  add.s r1, r1, r25
001684  670a1ffa  storeli.w r1, -608(r30)
001688  e300eff7  loadli.w r1,  -1040(r30)
00168c  8b909011  add.s r1, r1, r25
001690  e74a1ffa  storeli.w r1, -596(r30)
001694  e340dff7  loadli.w r1,  -1044(r30)
001698  8b909011  add.s r1, r1, r25
00169c  670b1ffa  storeli.w r1, -592(r30)
0016a0  e300dff7  loadli.w r1,  -1048(r30)
0016a4  8b909011  add.s r1, r1, r25
0016a8  e74b1ffa  storeli.w r1, -580(r30)
0016ac  e340cff7  loadli.w r1,  -1052(r30)
0016b0  8b909011  add.s r1, r1, r25
0016b4  670c1ffa  storeli.w r1, -576(r30)
0016b8  e300cff7  loadli.w r1,  -1056(r30)
0016bc  8b909011  add.s r1, r1, r25
0016c0  e74c1ffa  storeli.w r1, -564(r30)
0016c4  e340bff7  loadli.w r1,  -1060(r30)
0016c8  8b909011  add.s r1, r1, r25
0016cc  674d1ffa  storeli.w r1, -556(r30)
0016d0  e300bff7  loadli.w r1,  -1064(r30)
0016d4  8b909011  add.s r1, r1, r25
0016d8  670d1ffa  storeli.w r1, -560(r30)
0016dc  e340aff7  loadli.w r1,  -1068(r30)
0016e0  8b909011  add.s r1, r1, r25
0016e4  e70d1ffa  storeli.w r1, -552(r30)
0016e8  e300aff7  loadli.w r1,  -1072(r30)
0016ec  8b909011  add.s r1, r1, r25
0016f0  e74d1ffa  storeli.w r1, -548(r30)
0016f4  e3409ff7  loadli.w r1,  -1076(r30)
0016f8  8b909011  add.s r1, r1, r25
0016fc  670e1ffa  storeli.w r1, -544(r30)
001700  e3009ff7  loadli.w r1,  -1080(r30)
001704  8b909011  add.s r1, r1, r25
001708  674e1ffa  storeli.w r1, -540(r30)
00170c  e3408ff7  loadli.w r1,  -1084(r30)
001710  8b909011  add.s r1, r1, r25
001714  e70e1ffa  storeli.w r1, -536(r30)
001718  e3008ff7  loadli.w r1,  -1088(r30)
00171c  8b909011  add.s r1, r1, r25
001720  e74e1ffa  storeli.w r1, -532(r30)
001724  00a00300  mfence { lm, sm, gm }
001728  80a10404  csr_set csr3, r9
00172c  00d00100  sync_group
001730  3b5204f6  bneq r8, zero, -4972
001734  e300dff9  loadli.w r1,  -792(r30)
001738  efc20000  loads.w r5, 0(r1)
00173c  6fc34000  loads.w r6, 4(r1)
001740  efc58000  loads.w r11, 8(r1)
001744  8be26210  add.f.rn r5, r5, r6
001748  6fc3c000  loads.w r6, 12(r1)
00174c  8be2b210  add.f.rn r5, r5, r11
001750  efc50001  loads.w r11, 16(r1)
001754  8be26210  add.f.rn r5, r5, r6
001758  6fc34001  loads.w r6, 20(r1)
00175c  8be2b210  add.f.rn r5, r5, r11
001760  efc58001  loads.w r11, 24(r1)
001764  8be26210  add.f.rn r5, r5, r6
001768  6fc3c001  loads.w r6, 28(r1)
00176c  8be2b210  add.f.rn r5, r5, r11
001770  efc50002  loads.w r11, 32(r1)
001774  8be26210  add.f.rn r5, r5, r6
001778  6fc34002  loads.w r6, 36(r1)
00177c  8be2b210  add.f.rn r5, r5, r11
001780  efc58002  loads.w r11, 40(r1)
001784  8be26210  add.f.rn r5, r5, r6
001788  6fc3c002  loads.w r6, 44(r1)
00178c  8be2b210  add.f.rn r5, r5, r11
001790  efc50003  loads.w r11, 48(r1)
001794  8be26210  add.f.rn r5, r5, r6
001798  6fc34003  loads.w r6, 52(r1)
00179c  8be2b210  add.f.rn r5, r5, r11
0017a0  efc58003  loads.w r11, 56(r1)
0017a4  8be26210  add.f.rn r5, r5, r6
0017a8  6fc3c003  loads.w r6, 60(r1)
0017ac  8be2b210  add.f.rn r5, r5, r11
0017b0  8be26210  add.f.rn r5, r5, r6
0017b4  73e05000  stores.w r5, 0(r1)
0017b8  db81fdff  j -5108
0017bc  9f8e8e08  addli sp, sp, 1088
0017c0  00a00300  mfence { lm, sm, gm }
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
0019b0  00100000  exit
0019b4  00100000  exit
0019b8  00100000  exit
0019bc  00100000  exit
0019c0  00100000  exit
0019c4  00100000  exit
0019c8  00100000  exit
0019cc  00100000  exit
0019d0  00100000  exit
0019d4  00100000  exit
0019d8  00100000  exit
0019dc  00100000  exit
0019e0  00100000  exit
0019e4  00100000  exit
0019e8  00100000  exit
0019ec  00100000  exit
0019f0  00100000  exit
0019f4  00100000  exit
0019f8  00100000  exit
0019fc  00100000  exit
001a00  00100000  exit
001a04  00100000  exit
