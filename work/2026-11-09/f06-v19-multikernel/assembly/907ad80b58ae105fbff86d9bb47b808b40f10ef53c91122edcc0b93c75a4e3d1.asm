; SHA-256 907ad80b58ae105fbff86d9bb47b808b40f10ef53c91122edcc0b93c75a4e3d1
; P800 SDNN · XTDK LLVM 15 · 5706 / 5706 words decoded
; bound names: _ZN10xblas_xpu39fc_km_nmkI27ArgsJL1_5321856422865063095EEvN4gemm5algo510MMArgsBaseIT_EENS3_15GlobalBlockArgsIS5_EENS3_12FragmentArgsIS5_EENS3_11UnisramArgsIS5_EENS3_8L1inArgsIS5_EE
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
000028  0b864138  mod.u r12, r3, r4
00002c  9f450000  addli r11, zero, 4
000030  8b86b030  div.u r13, r1, r11
000034  1f160600  addli r12, r12, 1
000038  8b00d620  mul.u r1, r12, r13
00003c  8b805010  add.u r1, r1, r5
000040  9f8e0000  addli sp, r1, 0
000044  1bba6700  slli r20, r15, 6
000048  978e4e01  and sp, sp, r20
00004c  cb003200  ble.s r4, r3, 32
000050  80520202  load_param_i r5, 4
000054  00d20102  load_param_i r4, 3
000058  ab0900f0  lui r19, 983040
00005c  9f097003  addli r19, zero, 440
000060  1f8a8efc  addli r20, sp, -448
000064  ff494201  bl_gm2lm r19, r20, 0(r[4:5])
000068  00a00200  mfence { lm, gm }
00006c  abfa0000  lui r21, 15
000070  9b9afaff  ori r21, r21, 4095
000074  80a10a04  csr_set csr3, r21
000078  00d00100  sync_group
00007c  fe8007e0  vmmov mr1, r15
000080  fe900720  vmmovh mr1, r15
000084  d7110000  jal 140
000088  00400000  trap
00008c  9f8e2ec8  addli sp, sp, -7152
000090  1f8f6e34  addli r30, sp, 6704
000094  b3013028  zext_int2long r[3:4], zero
000098  eb500f04  load.d r[1:2], 64(r30)
00009c  93a13000  seteq.d r3, r[1:2], r[3:4]
0000a0  bbc00100  bneq r3, zero, 48
0000a4  00a00000  mfence { lm }
0000a8  9f410000  addli r3, zero, 4
0000ac  2b0200f0  lui r4, 983040
0000b0  9f024fe2  addli r5, r30, -3808
0000b4  97914100  or r3, r3, r4
0000b8  ffa15000  l_gm2lm r3, r5, 0(r[1:2])
0000bc  00a00200  mfence { lm, gm }
0000c0  63014fe2  loadli.w r2,  -3808(r30)
0000c4  9f100000  addli r1, zero, 1
0000c8  3b501100  bneq r2, r1, 20
0000cc  5b090b00  j 22600
0000d0  1f010000  addli r2, zero, 0
0000d4  9f100000  addli r1, zero, 1
0000d8  b770112c  beq r2, r1, 22588
0000dc  63414f03  loadli.w r2,  420(r30)
0000e0  e3019f02  loadli.w r3,  328(r30)
0000e4  674b3fce  storeli.w r3, -6220(r30)
0000e8  7dc00000  xsignal_mode_cfg r1
0000ec  67012fd0  storeli.w r2, -6128(r30)
0000f0  bf101100  blt.s r2, r1, 36
0000f4  63012fd0  loadli.w r2,  -6128(r30)
0000f8  9f004fe2  addli r1, r30, -3808
0000fc  abf10000  lui r3, 15
000100  1f71f1ff  addli r2, r2, -1
000104  9b91f1ff  ori r3, r3, 4095
000108  73903000  store.h r3, 0(r1)
00010c  9fa00000  addli r1, r1, 2
000110  bb3f01fe  bneq r2, zero, -20
000114  e3404f03  loadli.w r1,  420(r30)
000118  63029f02  loadli.w r4,  328(r30)
00011c  1f110000  addli r2, zero, 1
000120  9bb11000  slli r3, r1, 1
000124  9f004fe2  addli r1, r30, -3808
000128  67404fce  storeli.w r4, -6396(r30)
00012c  8b913010  add.s r3, r1, r3
000130  e70f3fcc  storeli.w r3, -6408(r30)
000134  bf102200  blt.s r4, r2, 36
000138  e301ffcd  loadli.w r3,  -6408(r30)
00013c  63420fce  loadli.w r4,  -6396(r30)
000140  abf20000  lui r5, 15
000144  1f72f2ff  addli r4, r4, -1
000148  9b92f2ff  ori r5, r5, 4095
00014c  73905100  store.h r5, 0(r3)
000150  9fa10100  addli r3, r3, 2
000154  bb3f02fe  bneq r4, zero, -20
000158  e3019f02  loadli.w r3,  328(r30)
00015c  63424f03  loadli.w r4,  420(r30)
000160  8b143210  add.s r9, r4, r3
000164  6302df02  loadli.w r4,  360(r30)
000168  9bb11400  slli r3, r9, 1
00016c  67004fd0  storeli.w r4, -6144(r30)
000170  8b903010  add.s r1, r1, r3
000174  e7001fce  storeli.w r1, -6392(r30)
000178  bf102200  blt.s r4, r2, 36
00017c  e3001fce  loadli.w r1,  -6392(r30)
000180  63010fd0  loadli.w r2,  -6144(r30)
000184  abf10000  lui r3, 15
000188  1f71f1ff  addli r2, r2, -1
00018c  9b91f1ff  ori r3, r3, 4095
000190  73903000  store.h r3, 0(r1)
000194  9fa00000  addli r1, r1, 2
000198  bb3f01fe  bneq r2, zero, -20
00019c  e3403f03  loadli.w r1,  412(r30)
0001a0  9f02ffd0  addli r5, r30, -6024
0001a4  6306df02  loadli.w r12,  360(r30)
0001a8  1f036fd1  addli r6, r30, -5968
0001ac  6305bf02  loadli.w r10,  344(r30)
0001b0  e305ff02  loadli.w r11,  376(r30)
0001b4  9f064fd1  addli r13, r30, -5984
0001b8  eb518f06  load.d r[3:4], 104(r30)
0001bc  eb538f05  load.d r[7:8], 88(r30)
0001c0  eb5a8f04  load.d r[21:22], 72(r30)
0001c4  e7091fd0  storeli.w r1, -5992(r30)
0001c8  e3402f02  loadli.w r1,  276(r30)
0001cc  8b94c410  add.s r9, r9, r12
0001d0  1bb61400  slli r12, r9, 1
0001d4  9f140000  addli r9, zero, 1
0001d8  674d1fce  storeli.w r1, -6188(r30)
0001dc  e3001f02  loadli.w r1,  264(r30)
0001e0  67031fcc  storeli.w r1, -6608(r30)
0001e4  e3000f02  loadli.w r1,  256(r30)
0001e8  e7491fcc  storeli.w r1, -6500(r30)
0001ec  e340df01  loadli.w r1,  236(r30)
0001f0  67441fcc  storeli.w r1, -6588(r30)
0001f4  e300af01  loadli.w r1,  208(r30)
0001f8  e70c1fd0  storeli.w r1, -5944(r30)
0001fc  eb500f08  load.d r[1:2], 128(r30)
000200  73b01200  store.d r[1:2], 0(r5)
000204  eb500f07  load.d r[1:2], 112(r30)
000208  73301300  store.d r[1:2], 0(r6)
00020c  eb500f06  load.d r[1:2], 96(r30)
000210  73b01600  store.d r[1:2], 0(r13)
000214  8b10b548  max.s r1, r10, r11
000218  1f054fe2  addli r10, r30, -3808
00021c  0b11c510  add.s r2, r10, r12
000220  e74c1fce  storeli.w r1, -6196(r30)
000224  67492fcc  storeli.w r2, -6508(r30)
000228  bf909000  blt.s r1, r9, 36
00022c  63452fcd  loadli.w r10,  -6508(r30)
000230  e3459fcf  loadli.w r11,  -6196(r30)
000234  2bf60000  lui r12, 15
000238  9ff5f5ff  addli r11, r11, -1
00023c  1b16f6ff  ori r12, r12, 4095
000240  7310c500  store.h r12, 0(r10)
000244  1f250500  addli r10, r10, 2
000248  bbbf05fe  bneq r11, zero, -20
00024c  e300af01  loadli.w r1,  208(r30)
000250  6301df01  loadli.w r2,  232(r30)
000254  e306bf01  loadli.w r13,  216(r30)
000258  80520002  load_param_i r5, 0
00025c  6308cf01  loadli.w r16,  224(r30)
000260  63066f01  loadli.w r12,  176(r30)
000264  e348cf01  loadli.w r17,  228(r30)
000268  e3456f01  loadli.w r11,  180(r30)
00026c  6349df01  loadli.w r18,  236(r30)
000270  e309ef01  loadli.w r19,  240(r30)
000274  e34b2f02  loadli.w r23,  276(r30)
000278  630a0f02  loadli.w r20,  256(r30)
00027c  63056f02  loadli.w r10,  304(r30)
000280  634c6f02  loadli.w r24,  308(r30)
000284  e34c3f03  loadli.w r25,  412(r30)
000288  634e4f03  loadli.w r28,  420(r30)
00028c  e30d9f02  loadli.w r27,  328(r30)
000290  630ddf02  loadli.w r26,  360(r30)
000294  63471f02  loadli.w r14,  268(r30)
000298  67445fce  storeli.w r5, -6332(r30)
00029c  e74d1fd0  storeli.w r1, -5924(r30)
0002a0  e300ff01  loadli.w r1,  248(r30)
0002a4  670e2fca  storeli.w r2, -6688(r30)
0002a8  63011f01  loadli.w r2,  136(r30)
0002ac  674f1fca  storeli.w r1, -6668(r30)
0002b0  e3001f02  loadli.w r1,  264(r30)
0002b4  67412fd0  storeli.w r2, -6124(r30)
0002b8  0b91d230  div.s r2, r5, r13
0002bc  67041fd0  storeli.w r1, -6080(r30)
0002c0  8b90d238  mod.s r1, r5, r13
0002c4  e3064f03  loadli.w r13,  416(r30)
0002c8  9f020fcd  addli r5, r30, -6528
0002cc  6709dfd0  storeli.w r13, -6000(r30)
0002d0  e3063f03  loadli.w r13,  408(r30)
0002d4  0b111121  mul.s r2, r2, r17
0002d8  8b952518  sub.s r11, r11, r2
0002dc  e748dfd0  storeli.w r13, -6004(r30)
0002e0  8b960021  mul.s r13, r1, r16
0002e4  e300af02  loadli.w r1,  336(r30)
0002e8  6743dfcc  storeli.w r13, -6604(r30)
0002ec  e7421fcc  storeli.w r1, -6612(r30)
0002f0  8b10d618  sub.s r1, r12, r13
0002f4  8b101840  min.s r1, r16, r1
0002f8  8b960048  max.s r13, r1, zero
0002fc  8b90b840  min.s r1, r17, r11
000300  8b15d910  add.s r11, r18, r13
000304  6704dfcc  storeli.w r13, -6592(r30)
000308  8b960048  max.s r13, r1, zero
00030c  9ff0f5ff  addli r1, r11, -1
000310  8b95d910  add.s r11, r19, r13
000314  8b902031  div.s r1, r1, r18
000318  674e1fca  storeli.w r1, -6684(r30)
00031c  9ff0f5ff  addli r1, r11, -1
000320  e3459f02  loadli.w r11,  332(r30)
000324  8b983031  div.s r17, r1, r19
000328  e3408f02  loadli.w r1,  324(r30)
00032c  e3495f02  loadli.w r19,  300(r30)
000330  670bbfce  storeli.w r11, -6224(r30)
000334  e74a1fce  storeli.w r1, -6228(r30)
000338  8b107131  div.s r1, r2, r23
00033c  e7481fcc  storeli.w r1, -6516(r30)
000340  8b107a31  div.s r1, r20, r23
000344  e7081fcc  storeli.w r1, -6520(r30)
000348  8b108531  div.s r1, r10, r24
00034c  63459fcf  loadli.w r10,  -6196(r30)
000350  e7051fd0  storeli.w r1, -6056(r30)
000354  e3005f02  loadli.w r1,  296(r30)
000358  67491fd0  storeli.w r1, -5996(r30)
00035c  eb500f02  load.d r[1:2], 32(r30)
000360  73b01200  store.d r[1:2], 0(r5)
000364  8b909c48  max.s r1, r25, r9
000368  00310002  core_id r2
00036c  e7081fd0  storeli.w r1, -6008(r30)
000370  8b109e48  max.s r1, r28, r9
000374  e7401fd0  storeli.w r1, -6132(r30)
000378  8b909d48  max.s r1, r27, r9
00037c  e7401fce  storeli.w r1, -6388(r30)
000380  8b109d48  max.s r1, r26, r9
000384  8b149548  max.s r9, r10, r9
000388  67001fce  storeli.w r1, -6400(r30)
00038c  e3400f02  loadli.w r1,  260(r30)
000390  67099fcc  storeli.w r9, -6512(r30)
000394  e7001fd0  storeli.w r1, -6136(r30)
000398  e340ff01  loadli.w r1,  252(r30)
00039c  67011fce  storeli.w r1, -6384(r30)
0003a0  e340ef01  loadli.w r1,  244(r30)
0003a4  670f1fca  storeli.w r1, -6672(r30)
0003a8  9f200000  addli r1, zero, 2
0003ac  3f932008  blt.s r1, r2, 4292
0003b0  63417f02  loadli.w r2,  316(r30)
0003b4  e300df01  loadli.w r1,  232(r30)
0003b8  e3058f02  loadli.w r11,  320(r30)
0003bc  630d4f02  loadli.w r26,  288(r30)
0003c0  630c3f02  loadli.w r24,  280(r30)
0003c4  eb548f07  load.d r[9:10], 120(r30)
0003c8  674c2fd0  storeli.w r2, -5948(r30)
0003cc  63012f03  loadli.w r2,  400(r30)
0003d0  e70e1fca  storeli.w r1, -6680(r30)
0003d4  e3406f02  loadli.w r1,  308(r30)
0003d8  670cbfd0  storeli.w r11, -5952(r30)
0003dc  e3057f02  loadli.w r11,  312(r30)
0003e0  e749afd1  storeli.w r26, -5988(r30)
0003e4  e7048fd1  storeli.w r24, -6072(r30)
0003e8  674c2fce  storeli.w r2, -6204(r30)
0003ec  63414f02  loadli.w r2,  292(r30)
0003f0  e70bbfd0  storeli.w r11, -5960(r30)
0003f4  8b101130  div.s r1, r2, r1
0003f8  00310002  core_id r2
0003fc  67441fd0  storeli.w r1, -6076(r30)
000400  e3403f02  loadli.w r1,  284(r30)
000404  e74a1fd0  storeli.w r1, -5972(r30)
000408  3701010e  beq r2, zero, 7232
00040c  6b570f05  load.d r[14:15], 80(r30)
000410  1f180000  addli r16, zero, 1
000414  3704011b  beq r2, r16, 13568
000418  9f200000  addli r1, zero, 2
00041c  3b63112a  bneq r2, r1, 21720
000420  b3001028  zext_int2long r[1:2], zero
000424  670e0fd0  storeli.w zero, -5920(r30)
000428  e7410fe2  storeli.w zero, -3812(r30)
00042c  e7010fe2  storeli.w zero, -3816(r30)
000430  93a01a00  seteq.d r1, r[21:22], r[1:2]
000434  bb800000  bneq r1, zero, 32
000438  00a00000  mfence { lm }
00043c  9f400000  addli r1, zero, 4
000440  2b0100f0  lui r2, 983040
000444  9f050fda  addli r11, r30, -4864
000448  97902000  or r1, r1, r2
00044c  ffa0ba00  l_gm2lm r1, r11, 0(r[21:22])
000450  00a00200  mfence { lm, gm }
000454  b3001028  zext_int2long r[1:2], zero
000458  93201700  seteq.d r1, r[14:15], r[1:2]
00045c  1f014fd1  addli r2, r30, -5984
000460  eb520100  load.d r[5:6], 0(r2)
000464  bb800000  bneq r1, zero, 32
000468  00a00000  mfence { lm }
00046c  9f400000  addli r1, zero, 4
000470  2b0100f0  lui r2, 983040
000474  9f050fda  addli r11, r30, -4864
000478  97902000  or r1, r1, r2
00047c  ff20b700  l_gm2lm r1, r11, 0(r[14:15])
000480  00a00200  mfence { lm, gm }
000484  e3004f01  loadli.w r1,  160(r30)
000488  bbb00000  bneq r1, zero, 44
00048c  b3001028  zext_int2long r[1:2], zero
000490  93a01300  seteq.d r1, r[7:8], r[1:2]
000494  bb800000  bneq r1, zero, 32
000498  00a00000  mfence { lm }
00049c  9f400000  addli r1, zero, 4
0004a0  2b0100f0  lui r2, 983040
0004a4  9f050fda  addli r11, r30, -4864
0004a8  97902000  or r1, r1, r2
0004ac  ffa0b300  l_gm2lm r1, r11, 0(r[7:8])
0004b0  00a00200  mfence { lm, gm }
0004b4  e3404f01  loadli.w r1,  164(r30)
0004b8  bbb00000  bneq r1, zero, 44
0004bc  b3001028  zext_int2long r[1:2], zero
0004c0  93a01200  seteq.d r1, r[5:6], r[1:2]
0004c4  bb800000  bneq r1, zero, 32
0004c8  00a00000  mfence { lm }
0004cc  9f400000  addli r1, zero, 4
0004d0  2b0100f0  lui r2, 983040
0004d4  9f030fda  addli r7, r30, -4864
0004d8  97902000  or r1, r1, r2
0004dc  ffa07200  l_gm2lm r1, r7, 0(r[5:6])
0004e0  00a00200  mfence { lm, gm }
0004e4  e3005f01  loadli.w r1,  168(r30)
0004e8  37920000  beq r1, zero, 132
0004ec  b3001028  zext_int2long r[1:2], zero
0004f0  93a01100  seteq.d r1, r[3:4], r[1:2]
0004f4  bb800000  bneq r1, zero, 32
0004f8  00a00000  mfence { lm }
0004fc  9f400000  addli r1, zero, 4
000500  2b0100f0  lui r2, 983040
000504  9f020fda  addli r5, r30, -4864
000508  97902000  or r1, r1, r2
00050c  ffa05100  l_gm2lm r1, r5, 0(r[3:4])
000510  00a00200  mfence { lm, gm }
000514  9f016fd1  addli r3, r30, -5968
000518  b3001028  zext_int2long r[1:2], zero
00051c  6bd20100  load.d r[4:5], 0(r3)
000520  93201200  seteq.d r1, r[4:5], r[1:2]
000524  bb800000  bneq r1, zero, 32
000528  00a00000  mfence { lm }
00052c  9f400000  addli r1, zero, 4
000530  2b0100f0  lui r2, 983040
000534  9f010fda  addli r3, r30, -4864
000538  97902000  or r1, r1, r2
00053c  ff203200  l_gm2lm r1, r3, 0(r[4:5])
000540  00a00200  mfence { lm, gm }
000544  b3001028  zext_int2long r[1:2], zero
000548  93a01400  seteq.d r1, r[9:10], r[1:2]
00054c  bb800000  bneq r1, zero, 32
000550  00a00000  mfence { lm }
000554  9f400000  addli r1, zero, 4
000558  2b0100f0  lui r2, 983040
00055c  9f010fda  addli r3, r30, -4864
000560  97902000  or r1, r1, r2
000564  ffa03400  l_gm2lm r1, r3, 0(r[9:10])
000568  00a00200  mfence { lm, gm }
00056c  6341efcb  loadli.w r2,  -6668(r30)
000570  9f100000  addli r1, zero, 1
000574  3f0e1128  blt.s r2, r1, 21376
000578  6302ef01  loadli.w r4,  240(r30)
00057c  9f8c0600  addli r25, r13, 0
000580  e301af02  loadli.w r3,  336(r30)
000584  e3099f02  loadli.w r19,  328(r30)
000588  63030f02  loadli.w r6,  256(r30)
00058c  e3474f03  loadli.w r15,  420(r30)
000590  63012f02  loadli.w r2,  272(r30)
000594  e3031f02  loadli.w r7,  264(r30)
000598  e3441f02  loadli.w r9,  268(r30)
00059c  e3465f03  loadli.w r13,  428(r30)
0005a0  e302ff01  loadli.w r5,  248(r30)
0005a4  63085f03  loadli.w r16,  424(r30)
0005a8  63463f03  loadli.w r12,  412(r30)
0005ac  e305df02  loadli.w r11,  360(r30)
0005b0  1f070000  addli r14, zero, 0
0005b4  1f090000  addli r18, zero, 0
0005b8  9f0a0000  addli r21, zero, 0
0005bc  1f0b0000  addli r22, zero, 0
0005c0  9f0b0000  addli r23, zero, 0
0005c4  1f050000  addli r10, zero, 0
0005c8  1f0a0000  addli r20, zero, 0
0005cc  9f0d0000  addli r27, zero, 0
0005d0  1f040000  addli r8, zero, 0
0005d4  e74f0fce  storeli.w zero, -6148(r30)
0005d8  e70e0fce  storeli.w zero, -6168(r30)
0005dc  67460fd0  storeli.w zero, -6044(r30)
0005e0  670a0fd0  storeli.w zero, -5984(r30)
0005e4  0b129241  min.s r4, r4, r25
0005e8  8b913940  min.s r3, r19, r3
0005ec  9bf51500  setlti r11, r11, 1
0005f0  67410fcf  storeli.w r16, -6380(r30)
0005f4  670fdfcc  storeli.w r13, -6416(r30)
0005f8  9f0c2000  addli r25, zero, 16
0005fc  0b120248  max.s r4, r4, zero
000600  e7013fd0  storeli.w r3, -6120(r30)
000604  6703bfce  storeli.w r11, -6352(r30)
000608  8b114310  add.s r3, r6, r4
00060c  67054fce  storeli.w r4, -6320(r30)
000610  1bf21900  setlti r4, r19, 1
000614  9ff1f1ff  addli r3, r3, -1
000618  e7024fce  storeli.w r4, -6360(r30)
00061c  1bf21700  setlti r4, r15, 1
000620  9f271000  addli r15, zero, 10
000624  8b916130  div.s r3, r3, r6
000628  67424fce  storeli.w r4, -6364(r30)
00062c  0b129120  mul.s r4, r2, r9
000630  0b939320  mul.s r6, r7, r9
000634  9f050200  addli r11, r4, 0
000638  670d3fce  storeli.w r3, -6192(r30)
00063c  8b912320  mul.s r3, r7, r2
000640  1b311100  slli r2, r2, 1
000644  0b11d140  min.s r2, r2, r13
000648  e74d3fd0  storeli.w r3, -5924(r30)
00064c  8b110641  min.s r3, r12, r16
000650  9f260000  addli r13, zero, 2
000654  1f681000  addli r16, zero, 14
000658  67402fd0  storeli.w r2, -6140(r30)
00065c  1ff1f2ff  addli r2, r5, -1
000660  e74d3fce  storeli.w r3, -6180(r30)
000664  e3410f02  loadli.w r3,  260(r30)
000668  9f120000  addli r5, zero, 1
00066c  674f2fce  storeli.w r2, -6156(r30)
000670  0b914820  mul.s r2, r17, r4
000674  63023f02  loadli.w r4,  280(r30)
000678  e74e2fcc  storeli.w r2, -6420(r30)
00067c  0b916820  mul.s r2, r17, r6
000680  e74f2fcc  storeli.w r2, -6404(r30)
000684  6341ff01  loadli.w r2,  252(r30)
000688  1f71f1ff  addli r2, r2, -1
00068c  67022fce  storeli.w r2, -6368(r30)
000690  1ff1f1ff  addli r2, r3, -1
000694  e3413f02  loadli.w r3,  284(r30)
000698  e70e2fcc  storeli.w r2, -6424(r30)
00069c  1f71f2ff  addli r2, r4, -1
0006a0  63024f02  loadli.w r4,  288(r30)
0006a4  9bb96100  slli r19, r3, 6
0006a8  9f110000  addli r3, zero, 1
0006ac  e7472fce  storeli.w r2, -6276(r30)
0006b0  63015f02  loadli.w r2,  296(r30)
0006b4  e7033fce  storeli.w r3, -6344(r30)
0006b8  9f110000  addli r3, zero, 1
0006bc  1b3e6200  slli r28, r4, 6
0006c0  e7433fd0  storeli.w r3, -6084(r30)
0006c4  9f110000  addli r3, zero, 1
0006c8  1f71f1ff  addli r2, r2, -1
0006cc  67073fce  storeli.w r3, -6288(r30)
0006d0  9f110000  addli r3, zero, 1
0006d4  e74c2fd0  storeli.w r2, -5940(r30)
0006d8  63416f03  loadli.w r2,  436(r30)
0006dc  67023fd0  storeli.w r3, -6112(r30)
0006e0  9f110000  addli r3, zero, 1
0006e4  e70c2fce  storeli.w r2, -6200(r30)
0006e8  63016f03  loadli.w r2,  432(r30)
0006ec  67053fd0  storeli.w r3, -6064(r30)
0006f0  9f110000  addli r3, zero, 1
0006f4  e7093fce  storeli.w r3, -6248(r30)
0006f8  9f110000  addli r3, zero, 1
0006fc  670c2fce  storeli.w r2, -6208(r30)
000700  1f411000  addli r2, zero, 12
000704  e74a3fce  storeli.w r3, -6228(r30)
000708  e341cfcb  loadli.w r3,  -6684(r30)
00070c  67433fce  storeli.w r3, -6348(r30)
000710  5b0d0000  j 104
000714  6302afd0  loadli.w r4,  -6064(r30)
000718  e3017fce  loadli.w r3,  -6344(r30)
00071c  6346ffcf  loadli.w r12,  -6148(r30)
000720  e303dfcb  loadli.w r7,  -6680(r30)
000724  8b9a4a18  sub.s r21, r21, r4
000728  0b120258  neg.s r4, r4
00072c  0b173718  sub.s r14, r14, r3
000730  8b910158  neg.s r3, r3
000734  1f160600  addli r12, r12, 1
000738  67054fd0  storeli.w r4, -6064(r30)
00073c  63425fcf  loadli.w r4,  -6228(r30)
000740  e7033fce  storeli.w r3, -6344(r30)
000744  e341efcb  loadli.w r3,  -6668(r30)
000748  e74fcfce  storeli.w r12, -6148(r30)
00074c  8b9b4b18  sub.s r23, r23, r4
000750  0b120258  neg.s r4, r4
000754  e74a4fce  storeli.w r4, -6228(r30)
000758  63023fcf  loadli.w r4,  -6248(r30)
00075c  0b1b4b18  sub.s r22, r22, r4
000760  0b120258  neg.s r4, r4
000764  e7094fce  storeli.w r4, -6248(r30)
000768  6302efcb  loadli.w r4,  -6672(r30)
00076c  8b934318  sub.s r7, r7, r4
000770  e70e7fca  storeli.w r7, -6680(r30)
000774  37063628  beq r12, r3, 20864
000778  e3416fce  loadli.w r3,  -6348(r30)
00077c  3b303700  bneq r14, r3, 12
000780  63064fd1  loadli.w r12,  -5984(r30)
000784  5b990100  j 3272
000788  e303efcb  loadli.w r7,  -6672(r30)
00078c  6346ffcf  loadli.w r12,  -6148(r30)
000790  6302cfcb  loadli.w r4,  -6688(r30)
000794  e746efce  storeli.w r14, -6292(r30)
000798  e3088fd0  loadli.w r17,  -6080(r30)
00079c  670d6fd0  storeli.w r6, -5936(r30)
0007a0  8b117620  mul.s r3, r12, r7
0007a4  8b113218  sub.s r3, r4, r3
0007a8  8b913340  min.s r3, r7, r3
0007ac  0b920148  max.s r4, r3, zero
0007b0  e301dfcd  loadli.w r3,  -6424(r30)
0007b4  e70f4fce  storeli.w r4, -6152(r30)
0007b8  8b914110  add.s r3, r3, r4
0007bc  63021fd0  loadli.w r4,  -6136(r30)
0007c0  0b974130  div.s r14, r3, r4
0007c4  e301dfcb  loadli.w r3,  -6680(r30)
0007c8  6342dfcd  loadli.w r4,  -6420(r30)
0007cc  8b913340  min.s r3, r7, r3
0007d0  0b12c220  mul.s r4, r4, r12
0007d4  63064fd1  loadli.w r12,  -5984(r30)
0007d8  e7454fce  storeli.w r4, -6308(r30)
0007dc  6302afcf  loadli.w r4,  -6192(r30)
0007e0  8b910148  max.s r3, r3, zero
0007e4  e748efce  storeli.w r14, -6260(r30)
0007e8  67083fce  storeli.w r3, -6272(r30)
0007ec  9f71f7ff  addli r3, r14, -1
0007f0  9f73f2ff  addli r7, r4, -1
0007f4  8b144720  mul.s r9, r14, r4
0007f8  6302efcd  loadli.w r4,  -6416(r30)
0007fc  674f3fcc  storeli.w r3, -6412(r30)
000800  9b311700  slli r3, r14, 1
000804  e7417fce  storeli.w r7, -6372(r30)
000808  9f830500  addli r7, r11, 0
00080c  e7449fce  storeli.w r9, -6324(r30)
000810  8b914140  min.s r3, r3, r4
000814  e7013fce  storeli.w r3, -6376(r30)
000818  db0f0000  j 124
00081c  e341dfce  loadli.w r3,  -6292(r30)
000820  6302efce  loadli.w r4,  -6288(r30)
000824  6347cfce  loadli.w r14,  -6300(r30)
000828  e3449fce  loadli.w r9,  -6324(r30)
00082c  e743bfd0  storeli.w r11, -6084(r30)
000830  63039fce  loadli.w r6,  -6328(r30)
000834  e3458fce  loadli.w r11,  -6332(r30)
000838  0b120258  neg.s r4, r4
00083c  9f080700  addli r17, r14, 0
000840  9f830400  addli r7, r9, 0
000844  670d6fd0  storeli.w r6, -5936(r30)
000848  e74dbfd0  storeli.w r11, -5924(r30)
00084c  67074fce  storeli.w r4, -6288(r30)
000850  63027fce  loadli.w r4,  -6344(r30)
000854  8b914110  add.s r3, r3, r4
000858  63024fd0  loadli.w r4,  -6112(r30)
00085c  e7463fce  storeli.w r3, -6292(r30)
000860  0b194918  sub.s r18, r18, r4
000864  0b120258  neg.s r4, r4
000868  67024fd0  storeli.w r4, -6112(r30)
00086c  6302afd0  loadli.w r4,  -6064(r30)
000870  8b9a4a18  sub.s r21, r21, r4
000874  0b120258  neg.s r4, r4
000878  67054fd0  storeli.w r4, -6064(r30)
00087c  63425fcf  loadli.w r4,  -6228(r30)
000880  8b9b4b18  sub.s r23, r23, r4
000884  0b120258  neg.s r4, r4
000888  e74a4fce  storeli.w r4, -6228(r30)
00088c  63426fce  loadli.w r4,  -6348(r30)
000890  b7be4104  beq r3, r4, 2988
000894  93819300  seteq r3, r7, r9
000898  63424fce  loadli.w r4,  -6364(r30)
00089c  1f830300  addli r6, r7, 0
0008a0  97914100  or r3, r3, r4
0008a4  bb900100  bneq r3, zero, 36
0008a8  63022fd0  loadli.w r4,  -6128(r30)
0008ac  9f014fe2  addli r3, r30, -3808
0008b0  abf30000  lui r7, 15
0008b4  1f72f2ff  addli r4, r4, -1
0008b8  9b93f3ff  ori r7, r7, 4095
0008bc  73907100  store.h r7, 0(r3)
0008c0  9fa10100  addli r3, r3, 2
0008c4  bb3f02fe  bneq r4, zero, -20
0008c8  63428fcc  loadli.w r4,  -6588(r30)
0008cc  e341dfce  loadli.w r3,  -6292(r30)
0008d0  e3038fcc  loadli.w r7,  -6592(r30)
0008d4  e304afd1  loadli.w r9,  -5936(r30)
0008d8  8b914120  mul.s r3, r3, r4
0008dc  8b913318  sub.s r3, r7, r3
0008e0  8b113240  min.s r3, r4, r3
0008e4  0b920148  max.s r4, r3, zero
0008e8  e3014fce  loadli.w r3,  -6368(r30)
0008ec  e7084fce  storeli.w r4, -6264(r30)
0008f0  8b914110  add.s r3, r3, r4
0008f4  63022fce  loadli.w r4,  -6384(r30)
0008f8  0b924130  div.s r4, r3, r4
0008fc  e301afcf  loadli.w r3,  -6192(r30)
000900  0b974120  mul.s r14, r3, r4
000904  67464fce  storeli.w r4, -6300(r30)
000908  63025fce  loadli.w r4,  -6360(r30)
00090c  9381e400  seteq r3, r9, r14
000910  97914100  or r3, r3, r4
000914  bb900100  bneq r3, zero, 36
000918  e301ffcd  loadli.w r3,  -6408(r30)
00091c  63420fce  loadli.w r4,  -6396(r30)
000920  abf30000  lui r7, 15
000924  1f72f2ff  addli r4, r4, -1
000928  9b93f3ff  ori r7, r7, 4095
00092c  73907100  store.h r7, 0(r3)
000930  9fa10100  addli r3, r3, 2
000934  bb3f02fe  bneq r4, zero, -20
000938  e341cfce  loadli.w r3,  -6300(r30)
00093c  63026fce  loadli.w r4,  -6352(r30)
000940  93813800  seteq r3, r17, r3
000944  97914100  or r3, r3, r4
000948  bb900100  bneq r3, zero, 36
00094c  e3011fce  loadli.w r3,  -6392(r30)
000950  63020fd0  loadli.w r4,  -6144(r30)
000954  abf30000  lui r7, 15
000958  1f72f2ff  addli r4, r4, -1
00095c  9b93f3ff  ori r7, r7, 4095
000960  73907100  store.h r7, 0(r3)
000964  9fa10100  addli r3, r3, 2
000968  bb3f02fe  bneq r4, zero, -20
00096c  e3411fcf  loadli.w r3,  -6260(r30)
000970  6342cfce  loadli.w r4,  -6300(r30)
000974  8b934120  mul.s r7, r3, r4
000978  e341bfd1  loadli.w r3,  -5924(r30)
00097c  3bb07100  bneq r3, r7, 12
000980  e301dfcf  loadli.w r3,  -6168(r30)
000984  5b050000  j 40
000988  e341cfd0  loadli.w r3,  -6044(r30)
00098c  6302dfcf  loadli.w r4,  -6168(r30)
000990  67460fd0  storeli.w zero, -6044(r30)
000994  8b113210  add.s r3, r4, r3
000998  63422fce  loadli.w r4,  -6380(r30)
00099c  0b9a4111  add.s r20, r3, r20
0009a0  9f010000  addli r3, zero, 0
0009a4  0b924340  min.s r4, r7, r4
0009a8  e74d4fce  storeli.w r4, -6180(r30)
0009ac  63429fce  loadli.w r4,  -6324(r30)
0009b0  e3457fd0  loadli.w r11,  -6084(r30)
0009b4  e70e3fce  storeli.w r3, -6168(r30)
0009b8  37704300  beq r6, r4, 28
0009bc  8b118610  add.s r3, r12, r8
0009c0  1f060000  addli r12, zero, 0
0009c4  0b94b111  add.s r8, r3, r27
0009c8  e3013fce  loadli.w r3,  -6376(r30)
0009cc  9f0d0000  addli r27, zero, 0
0009d0  67403fd0  storeli.w r3, -6140(r30)
0009d4  b7c0e400  beq r9, r14, 48
0009d8  e301cfd1  loadli.w r3,  -5920(r30)
0009dc  63423fe2  loadli.w r4,  -3812(r30)
0009e0  63033fe2  loadli.w r6,  -3816(r30)
0009e4  670e0fd0  storeli.w zero, -5920(r30)
0009e8  e7410fe2  storeli.w zero, -3812(r30)
0009ec  8b113210  add.s r3, r4, r3
0009f0  63425fcc  loadli.w r4,  -6612(r30)
0009f4  8b916110  add.s r3, r3, r6
0009f8  0b124740  min.s r4, r14, r4
0009fc  e7013fe2  storeli.w r3, -3816(r30)
000a00  e7014fd0  storeli.w r4, -6120(r30)
000a04  abf1ffff  lui r3, 1048575
000a08  e304afcf  loadli.w r9,  -6192(r30)
000a0c  6302efce  loadli.w r4,  -6288(r30)
000a10  1f030000  addli r6, zero, 0
000a14  3f304000  blt.s zero, r4, 12
000a18  63433fce  loadli.w r6,  -6372(r30)
000a1c  9b94f1ff  ori r9, r3, 4095
000a20  e7456fd0  storeli.w r6, -6052(r30)
000a24  e704efce  storeli.w r14, -6328(r30)
000a28  67447fce  storeli.w r7, -6332(r30)
000a2c  b74793fe  beq r6, r9, -528
000a30  e7069fce  storeli.w r9, -6296(r30)
000a34  abf1ffff  lui r3, 1048575
000a38  6342cfce  loadli.w r4,  -6300(r30)
000a3c  9f080000  addli r17, zero, 0
000a40  9b91f1ff  ori r3, r3, 4095
000a44  9f040200  addli r9, r4, 0
000a48  3fa05800  blt.s r17, r5, 8
000a4c  9f840100  addli r9, r3, 0
000a50  63431fcf  loadli.w r6,  -6260(r30)
000a54  67456fd0  storeli.w r6, -6060(r30)
000a58  3fa7b804  blt.s r17, r11, 2504
000a5c  67453fd0  storeli.w r3, -6060(r30)
000a60  e74b1fcf  storeli.w r17, -6212(r30)
000a64  3fa05800  blt.s r17, r5, 8
000a68  5b380100  j 2496
000a6c  67041fd1  storeli.w r17, -6080(r30)
000a70  3fb0b800  blt.s r17, r11, 12
000a74  e341efcd  loadli.w r3,  -6412(r30)
000a78  67043fd0  storeli.w r3, -6080(r30)
000a7c  e301afcf  loadli.w r3,  -6192(r30)
000a80  6302efce  loadli.w r4,  -6288(r30)
000a84  6343ffcd  loadli.w r6,  -6404(r30)
000a88  e3437fcf  loadli.w r7,  -6212(r30)
000a8c  63078fd0  loadli.w r14,  -6080(r30)
000a90  670b5fce  storeli.w r5, -6224(r30)
000a94  8b914120  mul.s r3, r3, r4
000a98  6342dfce  loadli.w r4,  -6292(r30)
000a9c  0b134320  mul.s r6, r6, r4
000aa0  67066fce  storeli.w r6, -6304(r30)
000aa4  6303dfce  loadli.w r6,  -6296(r30)
000aa8  8b113318  sub.s r3, r6, r3
000aac  670b3fd0  storeli.w r3, -5968(r30)
000ab0  e3016fcc  loadli.w r3,  -6608(r30)
000ab4  8b113220  mul.s r3, r4, r3
000ab8  67483fce  storeli.w r3, -6268(r30)
000abc  db0c0000  j 100
000ac0  63026fcf  loadli.w r4,  -6224(r30)
000ac4  6343bfd0  loadli.w r6,  -6052(r30)
000ac8  8b120258  neg.s r5, r4
000acc  8b934418  sub.s r7, r9, r4
000ad0  6302efce  loadli.w r4,  -6288(r30)
000ad4  9f840100  addli r9, r3, 0
000ad8  e341dfce  loadli.w r3,  -6292(r30)
000adc  670b5fce  storeli.w r5, -6224(r30)
000ae0  0b134310  add.s r6, r6, r4
000ae4  63024fd0  loadli.w r4,  -6112(r30)
000ae8  e7456fd0  storeli.w r6, -6052(r30)
000aec  0b194918  sub.s r18, r18, r4
000af0  0b120258  neg.s r4, r4
000af4  67024fd0  storeli.w r4, -6112(r30)
000af8  6302afd0  loadli.w r4,  -6064(r30)
000afc  8b9a4a18  sub.s r21, r21, r4
000b00  0b120258  neg.s r4, r4
000b04  67054fd0  storeli.w r4, -6064(r30)
000b08  63425fcf  loadli.w r4,  -6228(r30)
000b0c  8b9b4b18  sub.s r23, r23, r4
000b10  0b120258  neg.s r4, r4
000b14  e74a4fce  storeli.w r4, -6228(r30)
000b18  6302dfce  loadli.w r4,  -6296(r30)
000b1c  371443fe  beq r6, r4, -764
000b20  3bf09300  bneq r7, r9, 28
000b24  abf1ffff  lui r3, 1048575
000b28  63026fcf  loadli.w r4,  -6224(r30)
000b2c  9b91f1ff  ori r3, r3, 4095
000b30  3fce41fe  blt.s r3, r4, -112
000b34  e341cfce  loadli.w r3,  -6300(r30)
000b38  5bf1ffff  j -120
000b3c  6343bfd0  loadli.w r6,  -6052(r30)
000b40  e3026fd1  loadli.w r5,  -5968(r30)
000b44  63423fcd  loadli.w r4,  -6500(r30)
000b48  9f080700  addli r17, r14, 0
000b4c  670a9fce  storeli.w r9, -6240(r30)
000b50  93025302  setneq r5, r6, r5
000b54  8b114320  mul.s r3, r6, r4
000b58  e70d5fce  storeli.w r5, -6184(r30)
000b5c  e302afce  loadli.w r5,  -6320(r30)
000b60  8b913218  sub.s r3, r5, r3
000b64  e302cfce  loadli.w r5,  -6304(r30)
000b68  8b113240  min.s r3, r4, r3
000b6c  6342bfce  loadli.w r4,  -6308(r30)
000b70  8b125310  add.s r5, r6, r5
000b74  8b910148  max.s r3, r3, zero
000b78  0b124310  add.s r4, r6, r4
000b7c  67495fce  storeli.w r5, -6252(r30)
000b80  67093fce  storeli.w r3, -6256(r30)
000b84  e74c4fce  storeli.w r4, -6196(r30)
000b88  db090000  j 76
000b8c  e3016fcf  loadli.w r3,  -6224(r30)
000b90  e3437fcf  loadli.w r7,  -6212(r30)
000b94  630b7fcf  loadli.w r22,  -6216(r30)
000b98  63078fd0  loadli.w r14,  -6080(r30)
000b9c  e34b6fcf  loadli.w r23,  -6220(r30)
000ba0  e3044fcf  loadli.w r9,  -6240(r30)
000ba4  8b950558  neg.s r11, r11
000ba8  8b933310  add.s r7, r7, r3
000bac  e301afd0  loadli.w r3,  -6064(r30)
000bb0  9f080700  addli r17, r14, 0
000bb4  8b9a3a18  sub.s r21, r21, r3
000bb8  8b910158  neg.s r3, r3
000bbc  67053fd0  storeli.w r3, -6064(r30)
000bc0  e3013fcf  loadli.w r3,  -6248(r30)
000bc4  0b1b3b10  add.s r22, r22, r3
000bc8  e3415fcf  loadli.w r3,  -6228(r30)
000bcc  8b9b3b10  add.s r23, r23, r3
000bd0  37dd93fe  beq r7, r9, -172
000bd4  63421fce  loadli.w r4,  -6388(r30)
000bd8  e7440fd0  storeli.w zero, -6068(r30)
000bdc  8b114b38  mod.s r3, r22, r4
000be0  8b914110  add.s r3, r3, r4
000be4  8b914138  mod.s r3, r3, r4
000be8  3f810100  blt.s r3, zero, 64
000bec  63420fce  loadli.w r4,  -6396(r30)
000bf0  cb603200  ble.s r4, r3, 56
000bf4  6302ffcd  loadli.w r4,  -6408(r30)
000bf8  9bb11100  slli r3, r3, 1
000bfc  6303afcf  loadli.w r6,  -6192(r30)
000c00  8b113210  add.s r3, r4, r3
000c04  63422fcf  loadli.w r4,  -6252(r30)
000c08  ebb20100  load.hu r5, 0(r3)
000c0c  0b926350  fmac.s r4, r7, r6
000c10  3b305200  bneq r4, r5, 12
000c14  e7440fd0  storeli.w zero, -6068(r30)
000c18  5b020000  j 16
000c1c  9f120000  addli r5, zero, 1
000c20  73904100  store.h r4, 0(r3)
000c24  e7445fd0  storeli.w r5, -6068(r30)
000c28  e341afd0  loadli.w r3,  -6060(r30)
000c2c  e70b6fcf  storeli.w r22, -6216(r30)
000c30  674b7fcf  storeli.w r23, -6220(r30)
000c34  e74b7fce  storeli.w r7, -6212(r30)
000c38  0b92b118  sub.s r4, r3, r11
000c3c  67044fd0  storeli.w r4, -6080(r30)
000c40  bb803800  bneq r17, r3, 32
000c44  abf1ffff  lui r3, 1048575
000c48  9b91f1ff  ori r3, r3, 4095
000c4c  67453fd0  storeli.w r3, -6060(r30)
000c50  bffcb1fe  blt.s r3, r11, -196
000c54  e3411fcf  loadli.w r3,  -6260(r30)
000c58  67453fd0  storeli.w r3, -6060(r30)
000c5c  5be6ffff  j -208
000c60  63420fcf  loadli.w r4,  -6268(r30)
000c64  63030fce  loadli.w r6,  -6400(r30)
000c68  e3022fcf  loadli.w r5,  -6256(r30)
000c6c  1f070a00  addli r14, r20, 0
000c70  e743bfd0  storeli.w r11, -6084(r30)
000c74  0b924310  add.s r4, r7, r4
000c78  8b916b38  mod.s r3, r23, r6
000c7c  670e4fce  storeli.w r4, -6176(r30)
000c80  6342afcf  loadli.w r4,  -6188(r30)
000c84  8b944230  div.s r9, r5, r4
000c88  e3022fce  loadli.w r5,  -6384(r30)
000c8c  8b916110  add.s r3, r3, r6
000c90  0b925320  mul.s r4, r7, r5
000c94  e3031fcf  loadli.w r7,  -6264(r30)
000c98  0b924318  sub.s r4, r7, r4
000c9c  8b936138  mod.s r7, r3, r6
000ca0  63031fd0  loadli.w r6,  -6136(r30)
000ca4  670d9fd0  storeli.w r9, -5936(r30)
000ca8  0b924240  min.s r4, r5, r4
000cac  e3020fcf  loadli.w r5,  -6272(r30)
000cb0  8b111321  mul.s r3, r6, r17
000cb4  8b913218  sub.s r3, r5, r3
000cb8  8b120248  max.s r5, r4, zero
000cbc  6342ffce  loadli.w r4,  -6276(r30)
000cc0  67067fd0  storeli.w r7, -6048(r30)
000cc4  e70c3fd0  storeli.w r3, -5944(r30)
000cc8  9ff1f4ff  addli r3, r9, -1
000ccc  e74d5fd0  storeli.w r5, -5924(r30)
000cd0  0b125210  add.s r4, r4, r5
000cd4  e7033fd0  storeli.w r3, -6088(r30)
000cd8  9bb11300  slli r3, r7, 1
000cdc  67434fd0  storeli.w r4, -6092(r30)
000ce0  63021fce  loadli.w r4,  -6392(r30)
000ce4  0b1b3210  add.s r22, r4, r3
000ce8  8b11b320  mul.s r3, r6, r11
000cec  1f030400  addli r6, r8, 0
000cf0  e7023fd0  storeli.w r3, -6104(r30)
000cf4  67036fd1  storeli.w r22, -6096(r30)
000cf8  db0c0000  j 100
000cfc  63490fd1  loadli.w r18,  -6012(r30)
000d00  e3014fd0  loadli.w r3,  -6112(r30)
000d04  e30affd0  loadli.w r21,  -6024(r30)
000d08  63025fd0  loadli.w r4,  -6104(r30)
000d0c  e3457fd0  loadli.w r11,  -6084(r30)
000d10  e308dfd0  loadli.w r17,  -6040(r30)
000d14  634d3fd1  loadli.w r26,  -5988(r30)
000d18  630c9fd0  loadli.w r24,  -6072(r30)
000d1c  e30defd0  loadli.w r27,  -6032(r30)
000d20  63064fd1  loadli.w r12,  -5984(r30)
000d24  630b6fd0  loadli.w r22,  -6096(r30)
000d28  1f070000  addli r14, zero, 0
000d2c  1f030000  addli r6, zero, 0
000d30  1f040000  addli r8, zero, 0
000d34  1f0a0000  addli r20, zero, 0
000d38  0b193910  add.s r18, r18, r3
000d3c  e301afd0  loadli.w r3,  -6064(r30)
000d40  8b98b810  add.s r17, r17, r11
000d44  8b9a3a10  add.s r21, r21, r3
000d48  e3019fd1  loadli.w r3,  -5944(r30)
000d4c  8b914118  sub.s r3, r3, r4
000d50  e70c3fd0  storeli.w r3, -5944(r30)
000d54  e341afd0  loadli.w r3,  -6060(r30)
000d58  b7bb38fe  beq r17, r3, -276
000d5c  63421fd0  loadli.w r4,  -6132(r30)
000d60  9f0b0000  addli r23, zero, 0
000d64  8b914a38  mod.s r3, r21, r4
000d68  8b914110  add.s r3, r3, r4
000d6c  0b944138  mod.s r8, r3, r4
000d70  bf600400  blt.s r8, zero, 56
000d74  e3012fd0  loadli.w r3,  -6128(r30)
000d78  e344bfd0  loadli.w r9,  -6052(r30)
000d7c  cbf08100  ble.s r3, r8, 60
000d80  9b311400  slli r3, r8, 1
000d84  1f024fe2  addli r4, r30, -3808
000d88  e302afcf  loadli.w r5,  -6192(r30)
000d8c  8b113210  add.s r3, r4, r3
000d90  63429fcf  loadli.w r4,  -6196(r30)
000d94  ebb30100  load.hu r7, 0(r3)
000d98  0b925850  fmac.s r4, r17, r5
000d9c  3b507200  bneq r4, r7, 20
000da0  9f0b0000  addli r23, zero, 0
000da4  db020000  j 20
000da8  e344bfd0  loadli.w r9,  -6052(r30)
000dac  db010000  j 12
000db0  9f1b0000  addli r23, zero, 1
000db4  73904100  store.h r4, 0(r3)
000db8  e341ffcf  loadli.w r3,  -6148(r30)
000dbc  6342efcf  loadli.w r4,  -6156(r30)
000dc0  bbd04100  bneq r3, r4, 52
000dc4  e3018fd0  loadli.w r3,  -6080(r30)
000dc8  bbb03800  bneq r17, r3, 44
000dcc  e301cfd0  loadli.w r3,  -6048(r30)
000dd0  bf900100  blt.s r3, zero, 36
000dd4  e3010fd0  loadli.w r3,  -6144(r30)
000dd8  6302cfd0  loadli.w r4,  -6048(r30)
000ddc  4be04100  ble.s r3, r4, 24
000de0  eb310b00  load.hu r3, 0(r22)
000de4  6302cfcf  loadli.w r4,  -6176(r30)
000de8  37203200  beq r4, r3, 8
000dec  e301cfcf  loadli.w r3,  -6176(r30)
000df0  73103b00  store.h r3, 0(r22)
000df4  e3016fd1  loadli.w r3,  -5968(r30)
000df8  3b893400  bneq r9, r3, 576
000dfc  e341cfd0  loadli.w r3,  -6044(r30)
000e00  6342bfcf  loadli.w r4,  -6180(r30)
000e04  93013206  setle.u r3, r4, r3
000e08  bbc80100  bneq r3, zero, 560
000e0c  e341cfd0  loadli.w r3,  -6044(r30)
000e10  9f910100  addli r3, r3, 1
000e14  67463fd0  storeli.w r3, -6044(r30)
000e18  9f511000  addli r3, zero, 13
000e1c  3f401700  blt.s r14, r1, 16
000e20  7d900100  xwait r3, 0
000e24  1f77f7ff  addli r14, r14, -1
000e28  bb6f07fe  bneq r14, zero, -8
000e2c  e3410fd0  loadli.w r3,  -6140(r30)
000e30  1ba21b00  xori r4, r23, 1
000e34  9381b107  setle.u r3, r3, r27
000e38  97914100  or r3, r3, r4
000e3c  bb880100  bneq r3, zero, 544
000e40  9f9d0d00  addli r27, r27, 1
000e44  9f711000  addli r3, zero, 15
000e48  3f401300  blt.s r6, r1, 16
000e4c  7d900100  xwait r3, 0
000e50  1f73f3ff  addli r6, r6, -1
000e54  bb6f03fe  bneq r6, zero, -8
000e58  e301cfd1  loadli.w r3,  -5920(r30)
000e5c  63023fd0  loadli.w r4,  -6120(r30)
000e60  e3429fd0  loadli.w r5,  -6068(r30)
000e64  13824104  setlt.u r4, r3, r4
000e68  17834200  and r6, r5, r4
000e6c  1f02cfd1  addli r4, r30, -5920
000e70  bb100300  bneq r6, zero, 36
000e74  e3413fe2  loadli.w r3,  -3812(r30)
000e78  63428fcf  loadli.w r4,  -6204(r30)
000e7c  13033204  setlt.u r6, r4, r3
000e80  37200300  beq r6, zero, 8
000e84  e3013fe2  loadli.w r3,  -3816(r30)
000e88  1f023fe2  addli r4, r30, -3816
000e8c  3b200300  bneq r6, zero, 8
000e90  1f423fe2  addli r4, r30, -3812
000e94  e3021fd1  loadli.w r5,  -6008(r30)
000e98  e3041fd0  loadli.w r9,  -6136(r30)
000e9c  e7061fd1  storeli.w r17, -6040(r30)
000ea0  670acfd0  storeli.w r12, -5984(r30)
000ea4  63478fd0  loadli.w r14,  -6076(r30)
000ea8  63067fd0  loadli.w r12,  -6088(r30)
000eac  e7075fd1  storeli.w r21, -6024(r30)
000eb0  63436fd0  loadli.w r6,  -6092(r30)
000eb4  9f910100  addli r3, r3, 1
000eb8  6707bfd1  storeli.w r27, -6032(r30)
000ebc  67482fd1  storeli.w r18, -6012(r30)
000ec0  67003200  storeli.w r3, 0(r4)
000ec4  63422fd0  loadli.w r4,  -6124(r30)
000ec8  9f810b00  addli r3, r23, 0
000ecc  8b135938  mod.s r7, r18, r5
000ed0  8b959820  mul.s r11, r17, r9
000ed4  e308ffcf  loadli.w r17,  -6152(r30)
000ed8  0b16e610  add.s r12, r12, r14
000edc  0b138331  div.s r6, r6, r24
000ee0  8b95b818  sub.s r11, r17, r11
000ee4  8b95b440  min.s r11, r9, r11
000ee8  e3042fd0  loadli.w r9,  -6128(r30)
000eec  8b935310  add.s r7, r7, r5
000ef0  8b9a0548  max.s r21, r11, zero
000ef4  8b935338  mod.s r7, r7, r5
000ef8  e3023fd1  loadli.w r5,  -5992(r30)
000efc  8b189438  mod.s r17, r8, r9
000f00  e3445fd1  loadli.w r9,  -5972(r30)
000f04  0b14e630  div.s r8, r12, r14
000f08  9ff5faff  addli r11, r21, -1
000f0c  0b969510  add.s r12, r11, r9
000f10  8b95a511  add.s r11, r11, r26
000f14  0b1b9630  div.s r22, r12, r9
000f18  8b95a531  div.s r11, r11, r26
000f1c  8b935338  mod.s r7, r7, r5
000f20  e3421fd1  loadli.w r5,  -6004(r30)
000f24  8b9d5320  mul.s r27, r7, r5
000f28  e3022fd1  loadli.w r5,  -6000(r30)
000f2c  0b9a5820  mul.s r20, r17, r5
000f30  37701200  beq r4, r1, 28
000f34  e3412fd0  loadli.w r3,  -6124(r30)
000f38  1f320000  addli r4, zero, 3
000f3c  b7994100  beq r3, r4, 612
000f40  bbd9d100  bneq r3, r13, 628
000f44  e301bfcf  loadli.w r3,  -6184(r30)
000f48  97813b00  and r3, r23, r3
000f4c  b7a90100  beq r3, zero, 616
000f50  e341bfd0  loadli.w r3,  -6052(r30)
000f54  63026fd1  loadli.w r4,  -5968(r30)
000f58  bb844100  bneq r3, r4, 288
000f5c  3f741300  blt.s r6, r1, 284
000f60  9ff11a00  addli r3, r21, 15
000f64  e3031fd0  loadli.w r7,  -6136(r30)
000f68  e3029fd1  loadli.w r5,  -5944(r30)
000f6c  0b929139  mod.s r4, r3, r25
000f70  8b935340  min.s r7, r7, r5
000f74  0b960348  max.s r12, r7, zero
000f78  8b134618  sub.s r7, r12, r4
000f7c  8b9b4118  sub.s r23, r3, r4
000f80  9f010000  addli r3, zero, 0
000f84  9bb36300  slli r7, r7, 6
000f88  1f8d8307  addli r26, r7, 960
000f8c  db010000  j 12
000f90  9f910100  addli r3, r3, 1
000f94  b7936100  beq r3, r6, 228
000f98  bf6f1bfe  blt.s r22, r1, -8
000f9c  63079fd0  loadli.w r14,  -6072(r30)
000fa0  e342bfd1  loadli.w r5,  -5924(r30)
000fa4  1f0c0b00  addli r24, r22, 0
000fa8  0b92e120  mul.s r4, r3, r14
000fac  8b139231  div.s r7, r4, r25
000fb0  0b994218  sub.s r18, r5, r4
000fb4  9bb84300  slli r17, r7, 4
000fb8  0b121219  sub.s r4, r4, r17
000fbc  9f880d00  addli r17, r27, 0
000fc0  8b187d50  fmac.s r17, r26, r7
000fc4  9b332200  slli r7, r4, 2
000fc8  0b122741  min.s r4, r14, r18
000fcc  8b937810  add.s r7, r17, r7
000fd0  9f080600  addli r17, r12, 0
000fd4  db020000  j 20
000fd8  1f7cfcff  addli r24, r24, -1
000fdc  8b933311  add.s r7, r7, r19
000fe0  8b989818  sub.s r17, r17, r9
000fe4  b73e0cfe  beq r24, zero, -84
000fe8  bf4f12fe  blt.s r4, r1, -16
000fec  e3448fd1  loadli.w r9,  -5948(r30)
000ff0  63077fd1  loadli.w r14,  -5960(r30)
000ff4  0b199538  mod.s r18, r10, r9
000ff8  e3445fd1  loadli.w r9,  -5972(r30)
000ffc  7d100100  xwait r2, 0
001000  1d000000  lock zero, zero
001004  81060000  ds_cfg r13, zero, 0
001008  1f150500  addli r10, r10, 1
00100c  8b941441  min.s r9, r9, r17
001010  81040002  ds_cfg r9, zero, 1
001014  e3028fd1  loadli.w r5,  -5952(r30)
001018  810b001c  ds_cfg r23, zero, 14
00101c  0102001a  ds_cfg r4, zero, 13
001020  0b175950  fmac.s r14, r18, r5
001024  a1139702  shuffle_batch r7, r14, r9, 1
001028  e3445fd1  loadli.w r9,  -5972(r30)
00102c  1d100000  unlock zero
001030  7d800700  xsignal r15, 0
001034  dbf4ffff  j -92
001038  6302dfcf  loadli.w r4,  -6168(r30)
00103c  e3016fd1  loadli.w r3,  -5968(r30)
001040  3b9e3400  bneq r9, r3, 900
001044  8b11e210  add.s r3, r4, r14
001048  e70e0fce  storeli.w zero, -6168(r30)
00104c  1f970100  addli r14, r3, 1
001050  9f511000  addli r3, zero, 13
001054  3f6717fe  blt.s r14, r1, -552
001058  5bb9ffff  j -568
00105c  379e0b00  beq r23, zero, 900
001060  8b11c310  add.s r3, r6, r12
001064  1f060000  addli r12, zero, 0
001068  1f930100  addli r6, r3, 1
00106c  9f711000  addli r3, zero, 15
001070  bf2713fe  blt.s r6, r1, -536
001074  5bbbffff  j -552
001078  3f1214fe  blt.s r8, r1, -892
00107c  9ff11a00  addli r3, r21, 15
001080  63031fd0  loadli.w r6,  -6136(r30)
001084  e3029fd1  loadli.w r5,  -5944(r30)
001088  9f0d0000  addli r27, zero, 0
00108c  1f7bf4ff  addli r22, r8, -1
001090  1f060000  addli r12, zero, 0
001094  0b929139  mod.s r4, r3, r25
001098  0b135340  min.s r6, r6, r5
00109c  0b130348  max.s r6, r6, zero
0010a0  0b974118  sub.s r14, r3, r4
0010a4  8b114318  sub.s r3, r6, r4
0010a8  6302bfd0  loadli.w r4,  -6056(r30)
0010ac  9bb16100  slli r3, r3, 6
0010b0  9f7bf2ff  addli r23, r4, -1
0010b4  1f8d8107  addli r26, r3, 960
0010b8  db010000  j 12
0010bc  1f160600  addli r12, r12, 1
0010c0  b77086fe  beq r12, r8, -964
0010c4  e3438fd0  loadli.w r7,  -6076(r30)
0010c8  6302afd1  loadli.w r4,  -5936(r30)
0010cc  8b117620  mul.s r3, r12, r7
0010d0  0b123218  sub.s r4, r4, r3
0010d4  0b924340  min.s r4, r7, r4
0010d8  3fb21500  blt.s r11, r1, 140
0010dc  8b939131  div.s r7, r3, r25
0010e0  9f080a00  addli r17, r20, 0
0010e4  1f8c0500  addli r24, r11, 0
0010e8  9bb44300  slli r9, r7, 4
0010ec  8b187d50  fmac.s r17, r26, r7
0010f0  8b949118  sub.s r9, r3, r9
0010f4  9bb32400  slli r7, r9, 2
0010f8  e3443fd1  loadli.w r9,  -5988(r30)
0010fc  8b937810  add.s r7, r17, r7
001100  9f080300  addli r17, r6, 0
001104  5b030000  j 24
001108  e3443fd1  loadli.w r9,  -5988(r30)
00110c  1f7cfcff  addli r24, r24, -1
001110  8b93c311  add.s r7, r7, r28
001114  8b989818  sub.s r17, r17, r9
001118  37310c00  beq r24, zero, 76
00111c  0b991441  min.s r18, r9, r17
001120  bf2f19fe  blt.s r18, r1, -24
001124  e3448fd1  loadli.w r9,  -5948(r30)
001128  e30a7fd1  loadli.w r21,  -5960(r30)
00112c  7d100100  xwait r2, 0
001130  1d000000  lock zero, zero
001134  81060000  ds_cfg r13, zero, 0
001138  01020002  ds_cfg r4, zero, 1
00113c  0107001c  ds_cfg r14, zero, 14
001140  e3028fd1  loadli.w r5,  -5952(r30)
001144  0102001a  ds_cfg r4, zero, 13
001148  8b149538  mod.s r9, r10, r9
00114c  1f150500  addli r10, r10, 1
001150  8b9a5450  fmac.s r21, r9, r5
001154  c1832a05  shuffle_coa r7, r21, r18, 2
001158  1d100000  unlock zero
00115c  7d800700  xsignal r15, 0
001160  5bf5ffff  j -88
001164  9f830b00  addli r7, r23, 0
001168  37206601  beq r12, r22, 8
00116c  9f030000  addli r7, zero, 0
001170  8b913310  add.s r3, r7, r3
001174  8b914110  add.s r3, r3, r4
001178  6302bfd0  loadli.w r4,  -6056(r30)
00117c  8b914130  div.s r3, r3, r4
001180  cbfcb1ff  ble.s r3, r27, -196
001184  0b92b119  sub.s r4, r3, r27
001188  7d000800  xsignal r16, 0
00118c  7d800c00  xsignal r25, 0
001190  1f72f2ff  addli r4, r4, -1
001194  bb5f02fe  bneq r4, zero, -12
001198  9f8d0100  addli r27, r3, 0
00119c  5be4ffff  j -224
0011a0  e341bfd0  loadli.w r3,  -6052(r30)
0011a4  63026fd1  loadli.w r4,  -5968(r30)
0011a8  93814100  seteq r3, r3, r4
0011ac  97817101  and r3, r3, r23
0011b0  bb8601fe  bneq r3, zero, -608
0011b4  93118004  setlt.s r3, zero, r8
0011b8  63021fd0  loadli.w r4,  -6136(r30)
0011bc  e3029fd1  loadli.w r5,  -5944(r30)
0011c0  8b125240  min.s r5, r4, r5
0011c4  67425fd0  storeli.w r5, -6108(r30)
0011c8  97813b00  and r3, r23, r3
0011cc  3bc31100  bneq r3, r1, 208
0011d0  9ff11a00  addli r3, r21, 15
0011d4  0b9c0248  max.s r24, r5, zero
0011d8  0b929139  mod.s r4, r3, r25
0011dc  8b134c18  sub.s r7, r24, r4
0011e0  0b9d4118  sub.s r26, r3, r4
0011e4  1f020000  addli r4, zero, 0
0011e8  9bb36300  slli r7, r7, 6
0011ec  9f818307  addli r3, r7, 960
0011f0  db010000  j 12
0011f4  1f120200  addli r4, r4, 1
0011f8  b7128200  beq r4, r8, 164
0011fc  bfef15fe  blt.s r11, r1, -8
001200  e3488fd0  loadli.w r17,  -6076(r30)
001204  e302afd1  loadli.w r5,  -5936(r30)
001208  9f0b0c00  addli r23, r24, 0
00120c  1f890500  addli r18, r11, 0
001210  8b131221  mul.s r7, r4, r17
001214  8b949331  div.s r9, r7, r25
001218  0b977218  sub.s r14, r5, r7
00121c  1bb64400  slli r12, r9, 4
001220  8b93c318  sub.s r7, r7, r12
001224  1f060a00  addli r12, r20, 0
001228  0b969150  fmac.s r12, r3, r9
00122c  9bb42300  slli r9, r7, 2
001230  8b93e840  min.s r7, r17, r14
001234  8b189610  add.s r17, r12, r9
001238  e3443fd1  loadli.w r9,  -5988(r30)
00123c  5b030000  j 24
001240  e3443fd1  loadli.w r9,  -5988(r30)
001244  1f79f9ff  addli r18, r18, -1
001248  8b98c811  add.s r17, r17, r28
00124c  8b9b9b18  sub.s r23, r23, r9
001250  b71e09fe  beq r18, zero, -92
001254  0b967441  min.s r12, r9, r23
001258  bf2f16fe  blt.s r12, r1, -24
00125c  e3448fd1  loadli.w r9,  -5948(r30)
001260  63077fd1  loadli.w r14,  -5960(r30)
001264  7d100100  xwait r2, 0
001268  1d000000  lock zero, zero
00126c  81060000  ds_cfg r13, zero, 0
001270  81030002  ds_cfg r7, zero, 1
001274  010d001c  ds_cfg r26, zero, 14
001278  e3028fd1  loadli.w r5,  -5952(r30)
00127c  8103001a  ds_cfg r7, zero, 13
001280  8b149538  mod.s r9, r10, r9
001284  1f150500  addli r10, r10, 1
001288  0b975450  fmac.s r14, r9, r5
00128c  c108c704  shuffle_coa r17, r14, r12, 2
001290  1d100000  unlock zero
001294  7d800700  xsignal r15, 0
001298  5bf5ffff  j -88
00129c  bf0913fc  blt.s r6, r1, -1440
0012a0  9ff11a00  addli r3, r21, 15
0012a4  e3424fd0  loadli.w r5,  -6108(r30)
0012a8  9b731b00  setlti r7, r22, 1
0012ac  1f0d0000  addli r26, zero, 0
0012b0  1f79f3ff  addli r18, r6, -1
0012b4  1f060000  addli r12, zero, 0
0012b8  0b929139  mod.s r4, r3, r25
0012bc  0b940248  max.s r8, r5, zero
0012c0  0b974118  sub.s r14, r3, r4
0012c4  8b114418  sub.s r3, r8, r4
0012c8  6302bfcf  loadli.w r4,  -6184(r30)
0012cc  9bb16100  slli r3, r3, 6
0012d0  171a7200  or r20, r4, r7
0012d4  9f8b8107  addli r23, r3, 960
0012d8  db010000  j 12
0012dc  1f160600  addli r12, r12, 1
0012e0  377866fc  beq r12, r6, -1508
0012e4  e3039fd0  loadli.w r7,  -6072(r30)
0012e8  6342bfd1  loadli.w r4,  -5924(r30)
0012ec  8b117620  mul.s r3, r12, r7
0012f0  0b123218  sub.s r4, r4, r3
0012f4  0b924340  min.s r4, r7, r4
0012f8  37010a00  beq r20, zero, 64
0012fc  e3439fd1  loadli.w r7,  -5940(r30)
001300  37202601  beq r12, r18, 8
001304  9f030000  addli r7, zero, 0
001308  8b913310  add.s r3, r7, r3
00130c  8b914110  add.s r3, r3, r4
001310  63422fd1  loadli.w r4,  -5996(r30)
001314  8b914130  div.s r3, r3, r4
001318  4b9fa1ff  ble.s r3, r26, -60
00131c  0b92a119  sub.s r4, r3, r26
001320  7d000800  xsignal r16, 0
001324  7d800c00  xsignal r25, 0
001328  1f72f2ff  addli r4, r4, -1
00132c  bb5f02fe  bneq r4, zero, -12
001330  1f8d0100  addli r26, r3, 0
001334  5bf5ffff  j -88
001338  8b939131  div.s r7, r3, r25
00133c  9f850d00  addli r11, r27, 0
001340  9f080400  addli r17, r8, 0
001344  9bb44300  slli r9, r7, 4
001348  8b957b50  fmac.s r11, r23, r7
00134c  8b949118  sub.s r9, r3, r9
001350  9bb32400  slli r7, r9, 2
001354  e3445fd1  loadli.w r9,  -5972(r30)
001358  8b937510  add.s r7, r11, r7
00135c  9f050b00  addli r11, r22, 0
001360  db020000  j 20
001364  9ff5f5ff  addli r11, r11, -1
001368  8b933311  add.s r7, r7, r19
00136c  8b989818  sub.s r17, r17, r9
001370  37be05fe  beq r11, zero, -116
001374  bf4f12fe  blt.s r4, r1, -16
001378  e3448fd1  loadli.w r9,  -5948(r30)
00137c  e34a5fd1  loadli.w r21,  -5972(r30)
001380  630c7fd1  loadli.w r24,  -5960(r30)
001384  7d100100  xwait r2, 0
001388  1d000000  lock zero, zero
00138c  81060000  ds_cfg r13, zero, 0
001390  8b149538  mod.s r9, r10, r9
001394  8b9a1a41  min.s r21, r21, r17
001398  810a0002  ds_cfg r21, zero, 1
00139c  e3028fd1  loadli.w r5,  -5952(r30)
0013a0  1f150500  addli r10, r10, 1
0013a4  0b9c5450  fmac.s r24, r9, r5
0013a8  e3445fd1  loadli.w r9,  -5972(r30)
0013ac  0107001c  ds_cfg r14, zero, 14
0013b0  0102001a  ds_cfg r4, zero, 13
0013b4  a1135c03  shuffle_batch r7, r24, r21, 1
0013b8  1d100000  unlock zero
0013bc  7d800700  xsignal r15, 0
0013c0  dbf4ffff  j -92
0013c4  e3018fcf  loadli.w r3,  -6208(r30)
0013c8  93013206  setle.u r3, r4, r3
0013cc  bbc00100  bneq r3, zero, 48
0013d0  1f170700  addli r14, r14, 1
0013d4  9f511000  addli r3, zero, 13
0013d8  3f5917fc  blt.s r14, r1, -1452
0013dc  db48ffff  j -1468
0013e0  e3019fcf  loadli.w r3,  -6200(r30)
0013e4  93013606  setle.u r3, r12, r3
0013e8  bba00100  bneq r3, zero, 40
0013ec  1f130300  addli r6, r6, 1
0013f0  9f711000  addli r3, zero, 15
0013f4  bf1913fc  blt.s r6, r1, -1436
0013f8  db4affff  j -1452
0013fc  1f120200  addli r4, r4, 1
001400  e70e4fce  storeli.w r4, -6168(r30)
001404  9f511000  addli r3, zero, 13
001408  bf1817fc  blt.s r14, r1, -1500
00140c  db42ffff  j -1516
001410  1f160600  addli r12, r12, 1
001414  9f711000  addli r3, zero, 15
001418  3f0913fc  blt.s r6, r1, -1472
00141c  5b46ffff  j -1488
001420  e74b1fcf  storeli.w r17, -6212(r30)
001424  3fa958fa  blt.s r17, r5, -2488
001428  9f71f2ff  addli r3, r4, -1
00142c  e74b3fce  storeli.w r3, -6212(r30)
001430  67041fd1  storeli.w r17, -6080(r30)
001434  3fa9b8fa  blt.s r17, r11, -2488
001438  dbc7feff  j -2500
00143c  6704efd0  storeli.w r14, -6080(r30)
001440  63476fce  loadli.w r14,  -6348(r30)
001444  e74dbfd0  storeli.w r11, -5924(r30)
001448  9f850400  addli r11, r9, 0
00144c  670acfd0  storeli.w r12, -5984(r30)
001450  abf1ffff  lui r3, 1048575
001454  1b92f1ff  ori r4, r3, 4095
001458  e3017fce  loadli.w r3,  -6344(r30)
00145c  67434fce  storeli.w r4, -6348(r30)
001460  bf5a32f8  blt.s r4, r3, -3404
001464  e341cfcb  loadli.w r3,  -6684(r30)
001468  67433fce  storeli.w r3, -6348(r30)
00146c  5b55feff  j -3416
001470  9f300000  addli r1, zero, 3
001474  b7041112  beq r2, r1, 9504
001478  e3001f03  loadli.w r1,  392(r30)
00147c  670d1fd0  storeli.w r1, -5936(r30)
001480  e3401f03  loadli.w r1,  396(r30)
001484  e74c1fd0  storeli.w r1, -5940(r30)
001488  e3400f03  loadli.w r1,  388(r30)
00148c  674c1fd0  storeli.w r1, -5948(r30)
001490  9f400000  addli r1, zero, 4
001494  37191116  beq r2, r1, 11844
001498  9f700000  addli r1, zero, 7
00149c  3b611122  bneq r2, r1, 17496
0014a0  e3005f01  loadli.w r1,  168(r30)
0014a4  2b01803f  lui r2, 260096
0014a8  670c2fd0  storeli.w r2, -5952(r30)
0014ac  3bf20000  bneq r1, zero, 156
0014b0  9f01ffd0  addli r3, r30, -6024
0014b4  b3001028  zext_int2long r[1:2], zero
0014b8  6bd20100  load.d r[4:5], 0(r3)
0014bc  13211200  seteq.d r2, r[4:5], r[1:2]
0014c0  ab00803f  lui r1, 260096
0014c4  bb710100  bneq r2, zero, 124
0014c8  00a00000  mfence { lm }
0014cc  9f006000  addli r1, zero, 48
0014d0  2b0100f0  lui r2, 983040
0014d4  9f010fda  addli r3, r30, -4864
0014d8  97902000  or r1, r1, r2
0014dc  ff203200  l_gm2lm r1, r3, 0(r[4:5])
0014e0  00a00200  mfence { lm, gm }
0014e4  e3000fda  loadli.w r1,  -4864(r30)
0014e8  63410fda  loadli.w r2,  -4860(r30)
0014ec  e3011fda  loadli.w r3,  -4856(r30)
0014f0  63421fda  loadli.w r4,  -4852(r30)
0014f4  e3022fda  loadli.w r5,  -4848(r30)
0014f8  63432fda  loadli.w r6,  -4844(r30)
0014fc  e3434fda  loadli.w r7,  -4828(r30)
001500  63045fda  loadli.w r8,  -4824(r30)
001504  e3445fda  loadli.w r9,  -4820(r30)
001508  8be02048  max.f r1, r1, r2
00150c  0be14148  max.f r2, r3, r4
001510  8be16248  max.f r3, r5, r6
001514  63023fda  loadli.w r4,  -4840(r30)
001518  e3423fda  loadli.w r5,  -4836(r30)
00151c  63034fda  loadli.w r6,  -4832(r30)
001520  0b613148  max.f r2, r2, r3
001524  0b625248  max.f r4, r4, r5
001528  8b627348  max.f r5, r6, r7
00152c  0b639448  max.f r6, r8, r9
001530  8be02048  max.f r1, r1, r2
001534  8be16248  max.f r3, r5, r6
001538  0b613248  max.f r2, r4, r3
00153c  8be02048  max.f r1, r1, r2
001540  8f801018  div.f.rn r1, r1, r1
001544  670c1fd0  storeli.w r1, -5952(r30)
001548  e340efcb  loadli.w r1,  -6668(r30)
00154c  9f1b0000  addli r23, zero, 1
001550  bf9e7021  blt.s r1, r23, 17316
001554  6305ff01  loadli.w r10,  248(r30)
001558  63022f02  loadli.w r4,  272(r30)
00155c  63461f02  loadli.w r12,  268(r30)
001560  e304ef01  loadli.w r9,  240(r30)
001564  1f880600  addli r16, r13, 0
001568  e340ff01  loadli.w r1,  252(r30)
00156c  e3474f03  loadli.w r15,  420(r30)
001570  e3050f02  loadli.w r11,  256(r30)
001574  6b5a8f01  load.d r[20:21], 24(r30)
001578  1f013fcf  addli r2, r30, -6248
00157c  e3410f02  loadli.w r3,  260(r30)
001580  e7060fce  storeli.w zero, -6296(r30)
001584  63079f02  loadli.w r14,  328(r30)
001588  e3069f01  loadli.w r13,  200(r30)
00158c  6303af01  loadli.w r6,  208(r30)
001590  e3425f02  loadli.w r5,  300(r30)
001594  1f090000  addli r18, zero, 0
001598  9f030000  addli r7, zero, 0
00159c  1f040000  addli r8, zero, 0
0015a0  8b940441  min.s r9, r9, r16
0015a4  0b12c220  mul.s r4, r4, r12
0015a8  1f75f5ff  addli r10, r10, -1
0015ac  9bf71700  setlti r15, r15, 1
0015b0  9ff0f0ff  addli r1, r1, -1
0015b4  73304101  store.d r[20:21], 0(r2)
0015b8  9ff1f1ff  addli r3, r3, -1
0015bc  1f580000  addli r16, zero, 5
0015c0  1f160000  addli r12, zero, 1
0015c4  e745afce  storeli.w r10, -6308(r30)
0015c8  0b954820  mul.s r10, r17, r4
0015cc  8b940448  max.s r9, r9, zero
0015d0  e746ffce  storeli.w r15, -6292(r30)
0015d4  67051fce  storeli.w r1, -6320(r30)
0015d8  9f07efd0  addli r15, r30, -6032
0015dc  9f080001  addli r17, zero, 128
0015e0  8b909510  add.s r1, r11, r9
0015e4  e704afce  storeli.w r10, -6328(r30)
0015e8  67499fce  storeli.w r9, -6252(r30)
0015ec  abf4ffff  lui r9, 1048575
0015f0  67443fce  storeli.w r3, -6332(r30)
0015f4  e74adfd0  storeli.w r13, -5972(r30)
0015f8  9b94f4ff  ori r9, r9, 4095
0015fc  9ff0f0ff  addli r1, r1, -1
001600  97219700  xor r3, r14, r9
001604  8b90b030  div.s r1, r1, r11
001608  b314932c  sext_int2long r[9:10], r6
00160c  1b332300  slli r6, r6, 2
001610  9f350000  addli r11, zero, 3
001614  1f170000  addli r14, zero, 1
001618  67093fce  storeli.w r3, -6256(r30)
00161c  9bb12600  slli r3, r13, 2
001620  73b09700  store.d r[9:10], 0(r15)
001624  e7096fd0  storeli.w r6, -5992(r30)
001628  1f150000  addli r10, zero, 1
00162c  9f140000  addli r9, zero, 1
001630  e7493fd0  storeli.w r3, -5988(r30)
001634  8b910158  neg.s r3, r3
001638  67493fd0  storeli.w r3, -5996(r30)
00163c  8b110358  neg.s r3, r6
001640  e7431fd0  storeli.w r1, -6084(r30)
001644  e340cfcb  loadli.w r1,  -6684(r30)
001648  67093fd0  storeli.w r3, -6000(r30)
00164c  9ff1f2ff  addli r3, r5, -1
001650  b392562a  sext_int2long r[5:6], r13
001654  9f06dfd0  addli r13, r30, -6040
001658  67481fce  storeli.w r1, -6268(r30)
00165c  e70c3fce  storeli.w r3, -6200(r30)
001660  9f110000  addli r3, zero, 1
001664  73b05600  store.d r[5:6], 0(r13)
001668  5b050000  j 40
00166c  e302dfce  loadli.w r5,  -6296(r30)
001670  6349cfce  loadli.w r18,  -6300(r30)
001674  e340efcb  loadli.w r1,  -6668(r30)
001678  0b14e418  sub.s r8, r8, r14
00167c  0b150558  neg.s r10, r10
001680  0b170758  neg.s r14, r14
001684  9f920200  addli r5, r5, 1
001688  e7065fce  storeli.w r5, -6296(r30)
00168c  b7a91220  beq r5, r1, 17000
001690  e3420fcf  loadli.w r5,  -6268(r30)
001694  8b90a218  sub.s r1, r5, r10
001698  67461fce  storeli.w r1, -6300(r30)
00169c  37465904  beq r18, r5, 2448
0016a0  9f860400  addli r13, r9, 0
0016a4  6303efcb  loadli.w r6,  -6672(r30)
0016a8  e304dfce  loadli.w r9,  -6296(r30)
0016ac  e302cfcb  loadli.w r5,  -6688(r30)
0016b0  6708afce  storeli.w r10, -6272(r30)
0016b4  8b906420  mul.s r1, r9, r6
0016b8  8b901218  sub.s r1, r5, r1
0016bc  e3428fce  loadli.w r5,  -6332(r30)
0016c0  8b101340  min.s r1, r6, r1
0016c4  8b900048  max.s r1, r1, zero
0016c8  8b901210  add.s r1, r5, r1
0016cc  e3021fd0  loadli.w r5,  -6136(r30)
0016d0  8b975030  div.s r15, r1, r5
0016d4  e3009fce  loadli.w r1,  -6328(r30)
0016d8  e3428fcc  loadli.w r5,  -6588(r30)
0016dc  8b909020  mul.s r1, r1, r9
0016e0  e3447fd0  loadli.w r9,  -6084(r30)
0016e4  670a1fce  storeli.w r1, -6240(r30)
0016e8  8b902221  mul.s r1, r5, r18
0016ec  1ff3f4ff  addli r6, r9, -1
0016f0  e70dffce  storeli.w r15, -6184(r30)
0016f4  67066fce  storeli.w r6, -6304(r30)
0016f8  63038fcc  loadli.w r6,  -6592(r30)
0016fc  8b101318  sub.s r1, r6, r1
001700  0b939720  mul.s r6, r15, r9
001704  9f840600  addli r9, r13, 0
001708  e7481fce  storeli.w r1, -6260(r30)
00170c  9ff0f7ff  addli r1, r15, -1
001710  e7476fce  storeli.w r6, -6276(r30)
001714  e7441fce  storeli.w r1, -6324(r30)
001718  8b90a220  mul.s r1, r5, r10
00171c  67071fce  storeli.w r1, -6288(r30)
001720  db070000  j 60
001724  e3401fcf  loadli.w r1,  -6260(r30)
001728  6302efce  loadli.w r4,  -6288(r30)
00172c  63091fcf  loadli.w r18,  -6264(r30)
001730  63050fcf  loadli.w r10,  -6272(r30)
001734  6343ffce  loadli.w r6,  -6276(r30)
001738  0b14e418  sub.s r8, r8, r14
00173c  8b940458  neg.s r9, r9
001740  0b170758  neg.s r14, r14
001744  8b904018  sub.s r1, r1, r4
001748  0b19a910  add.s r18, r18, r10
00174c  1f020300  addli r4, r6, 0
001750  e7481fce  storeli.w r1, -6260(r30)
001754  e3400fcf  loadli.w r1,  -6268(r30)
001758  37431904  beq r18, r1, 2256
00175c  93006200  seteq r1, r4, r6
001760  6342dfce  loadli.w r4,  -6292(r30)
001764  97904000  or r1, r1, r4
001768  bb900000  bneq r1, zero, 36
00176c  63022fd0  loadli.w r4,  -6128(r30)
001770  9f004fe2  addli r1, r30, -3808
001774  abf20000  lui r5, 15
001778  1f72f2ff  addli r4, r4, -1
00177c  9b92f2ff  ori r5, r5, 4095
001780  73905000  store.h r5, 0(r1)
001784  9fa00000  addli r1, r1, 2
001788  bb3f02fe  bneq r4, zero, -20
00178c  abf0ffff  lui r1, 1048575
001790  63427fd0  loadli.w r4,  -6084(r30)
001794  1f050000  addli r10, zero, 0
001798  3f309000  blt.s zero, r9, 12
00179c  6305cfce  loadli.w r10,  -6304(r30)
0017a0  1b92f0ff  ori r4, r1, 4095
0017a4  e7082fcf  storeli.w r18, -6264(r30)
0017a8  b77d45fe  beq r10, r4, -132
0017ac  670c4fce  storeli.w r4, -6208(r30)
0017b0  63428fcc  loadli.w r4,  -6588(r30)
0017b4  e3028fcc  loadli.w r5,  -6592(r30)
0017b8  8b104920  mul.s r1, r18, r4
0017bc  8b901218  sub.s r1, r5, r1
0017c0  8b101240  min.s r1, r4, r1
0017c4  0b920048  max.s r4, r1, zero
0017c8  e300afce  loadli.w r1,  -6320(r30)
0017cc  670d4fce  storeli.w r4, -6192(r30)
0017d0  8b904010  add.s r1, r1, r4
0017d4  63022fce  loadli.w r4,  -6384(r30)
0017d8  0b924030  div.s r4, r1, r4
0017dc  abf0ffff  lui r1, 1048575
0017e0  9b90f0ff  ori r1, r1, 4095
0017e4  9f070200  addli r15, r4, 0
0017e8  674c4fce  storeli.w r4, -6204(r30)
0017ec  bf403000  blt.s zero, r3, 48
0017f0  9f870000  addli r15, r1, 0
0017f4  630abfcf  loadli.w r20,  -6184(r30)
0017f8  3f20c000  blt.s zero, r12, 8
0017fc  5b050000  j 40
001800  9f060000  addli r13, zero, 0
001804  bf403000  blt.s zero, r3, 48
001808  e3408fcf  loadli.w r1,  -6204(r30)
00180c  9ff6f0ff  addli r13, r1, -1
001810  1f010000  addli r2, zero, 0
001814  bf30c000  blt.s zero, r12, 44
001818  db040000  j 36
00181c  630abfcf  loadli.w r20,  -6184(r30)
001820  bf0fc0fe  blt.s zero, r12, -32
001824  1f8a0000  addli r20, r1, 0
001828  9f060000  addli r13, zero, 0
00182c  3f203000  blt.s zero, r3, 8
001830  5bfbffff  j -40
001834  1f010000  addli r2, zero, 0
001838  3f20c000  blt.s zero, r12, 8
00183c  63419fce  loadli.w r2,  -6324(r30)
001840  e300dfce  loadli.w r1,  -6296(r30)
001844  6342bfce  loadli.w r4,  -6308(r30)
001848  e3428fcc  loadli.w r5,  -6588(r30)
00184c  63031fcf  loadli.w r6,  -6264(r30)
001850  1f890100  addli r18, r3, 0
001854  e74b9fce  storeli.w r9, -6212(r30)
001858  138b4000  seteq r22, r1, r4
00185c  e3401fcf  loadli.w r1,  -6260(r30)
001860  6342cfce  loadli.w r4,  -6300(r30)
001864  8b901240  min.s r1, r5, r1
001868  13024302  setneq r4, r6, r4
00186c  8b900048  max.s r1, r1, zero
001870  e70b1fce  storeli.w r1, -6216(r30)
001874  e3406fcc  loadli.w r1,  -6604(r30)
001878  e7036fd1  storeli.w r22, -6088(r30)
00187c  8b105350  fmac.s r1, r6, r5
001880  e3028fcf  loadli.w r5,  -6208(r30)
001884  e74c1fce  storeli.w r1, -6196(r30)
001888  e3407fd0  loadli.w r1,  -6084(r30)
00188c  0b939218  sub.s r6, r5, r9
001890  8b909020  mul.s r1, r1, r9
001894  670b6fce  storeli.w r6, -6224(r30)
001898  8b901218  sub.s r1, r5, r1
00189c  67421fd0  storeli.w r1, -6108(r30)
0018a0  97104b00  or r1, r22, r4
0018a4  1f020500  addli r4, r10, 0
0018a8  e74a1fce  storeli.w r1, -6228(r30)
0018ac  5b040000  j 32
0018b0  8b110958  neg.s r3, r18
0018b4  8b962619  sub.s r13, r13, r18
0018b8  0b14e418  sub.s r8, r8, r14
0018bc  0b129210  add.s r4, r4, r9
0018c0  0b170758  neg.s r14, r14
0018c4  1f890100  addli r18, r3, 0
0018c8  377952fe  beq r4, r5, -420
0018cc  37adf602  beq r13, r15, 1864
0018d0  e3416fcf  loadli.w r3,  -6220(r30)
0018d4  e3428fcf  loadli.w r5,  -6204(r30)
0018d8  e3006fcf  loadli.w r1,  -6224(r30)
0018dc  63032fcf  loadli.w r6,  -6256(r30)
0018e0  1f050200  addli r10, r4, 0
0018e4  e3443fcd  loadli.w r9,  -6500(r30)
0018e8  9f0a3fcf  addli r21, r30, -6248
0018ec  1f0ddfcf  addli r26, r30, -6168
0018f0  9f1c0000  addli r25, zero, 1
0018f4  6700ffd0  storeli.w r15, -6144(r30)
0018f8  e74f2fcf  storeli.w r18, -6148(r30)
0018fc  e702afd0  storeli.w r10, -6104(r30)
001900  93915104  setlt.s r3, r3, r5
001904  e3424fd0  loadli.w r5,  -6108(r30)
001908  93001202  setneq r1, r4, r1
00190c  0b932751  fmac.s r6, r15, r18
001910  e70f6fce  storeli.w r6, -6152(r30)
001914  63435fcf  loadli.w r6,  -6228(r30)
001918  93025202  setneq r5, r4, r5
00191c  63024fcf  loadli.w r4,  -6240(r30)
001920  0b124510  add.s r4, r10, r4
001924  97101300  or r1, r6, r1
001928  63031fcd  loadli.w r6,  -6520(r30)
00192c  e7044fd0  storeli.w r4, -6072(r30)
001930  0b129520  mul.s r4, r10, r9
001934  67025fd0  storeli.w r5, -6112(r30)
001938  e3421fcd  loadli.w r5,  -6516(r30)
00193c  8b126550  fmac.s r5, r10, r6
001940  17931100  or r6, r3, r1
001944  9ba01000  xori r1, r1, 1
001948  97801100  and r1, r3, r1
00194c  1b2c1300  xori r24, r6, 1
001950  674f1fce  storeli.w r1, -6156(r30)
001954  e3402fcf  loadli.w r1,  -6252(r30)
001958  67448fd1  storeli.w r24, -6076(r30)
00195c  8b904018  sub.s r1, r1, r4
001960  b391322a  sext_int2long r[3:4], r5
001964  9f220000  addli r5, zero, 2
001968  97b15102  sll.d r[3:4], r[3:4], r5
00196c  ebd20a00  load.d r[5:6], 0(r21)
001970  8b901440  min.s r1, r9, r1
001974  8b900048  max.s r1, r1, zero
001978  8ba23210  add.ul r[5:6], r[5:6], r[3:4]
00197c  67041fd0  storeli.w r1, -6080(r30)
001980  73305d00  store.d r[5:6], 0(r26)
001984  1f030fcd  addli r6, r30, -6528
001988  e3022fce  loadli.w r5,  -6384(r30)
00198c  eb540300  load.d r[9:10], 0(r6)
001990  8b90d220  mul.s r1, r5, r13
001994  8ba13410  add.ul r[3:4], r[9:10], r[3:4]
001998  9f04cfcf  addli r9, r30, -6176
00199c  73b03400  store.d r[3:4], 0(r9)
0019a0  e3017fcf  loadli.w r3,  -6216(r30)
0019a4  0b922221  mul.s r4, r5, r18
0019a8  e74d4fce  storeli.w r4, -6180(r30)
0019ac  8b911118  sub.s r3, r3, r1
0019b0  5b040000  j 32
0019b4  0b14e418  sub.s r8, r8, r14
0019b8  0b160658  neg.s r12, r12
0019bc  8b962611  add.s r13, r13, r18
0019c0  0b170758  neg.s r14, r14
0019c4  8b914118  sub.s r3, r3, r4
0019c8  9f0c0000  addli r25, zero, 0
0019cc  b7e8f602  beq r13, r15, 1592
0019d0  3b304101  bneq r2, r20, 12
0019d4  0b11c118  sub.s r2, r2, r12
0019d8  5bc30000  j 1560
0019dc  63032fce  loadli.w r6,  -6384(r30)
0019e0  6302ffcf  loadli.w r4,  -6152(r30)
0019e4  8b902621  mul.s r1, r13, r18
0019e8  67403fd0  storeli.w r3, -6140(r30)
0019ec  e304afcf  loadli.w r9,  -6192(r30)
0019f0  e3429fcf  loadli.w r5,  -6196(r30)
0019f4  1f09dfd0  addli r18, r30, -6040
0019f8  1f0defd0  addli r26, r30, -6032
0019fc  e701dfd0  storeli.w r13, -6120(r30)
001a00  9f0ddfcf  addli r27, r30, -6168
001a04  8b17ca18  sub.s r15, r20, r12
001a08  6746cfd0  storeli.w r12, -6044(r30)
001a0c  6706efd0  storeli.w r14, -6048(r30)
001a10  e7454fd1  storeli.w r20, -6052(r30)
001a14  67459fd1  storeli.w r25, -6060(r30)
001a18  6705ffd0  storeli.w r15, -6064(r30)
001a1c  8b113340  min.s r3, r6, r3
001a20  93804000  seteq r1, r1, r4
001a24  0b926620  mul.s r4, r13, r6
001a28  8b926650  fmac.s r5, r13, r6
001a2c  8b910148  max.s r3, r3, zero
001a30  0b924418  sub.s r4, r9, r4
001a34  eb540d00  load.d r[9:10], 0(r26)
001a38  e7483fd0  storeli.w r3, -6004(r30)
001a3c  e341efcf  loadli.w r3,  -6156(r30)
001a40  0b134340  min.s r6, r6, r4
001a44  67036fd0  storeli.w r6, -6096(r30)
001a48  8b1a0348  max.s r21, r6, zero
001a4c  97861100  and r13, r3, r1
001a50  b391322a  sext_int2long r[3:4], r5
001a54  eb520900  load.d r[5:6], 0(r18)
001a58  9f200000  addli r1, zero, 2
001a5c  e744dfd0  storeli.w r13, -6068(r30)
001a60  8bb25120  mul.sl r[5:6], r[3:4], r[5:6]
001a64  8bb19120  mul.sl r[3:4], r[3:4], r[9:10]
001a68  ebd40d00  load.d r[9:10], 0(r27)
001a6c  97b21202  sll.d r[5:6], r[5:6], r1
001a70  97b11102  sll.d r[3:4], r[3:4], r1
001a74  9bb07a00  slli r1, r21, 7
001a78  8ba25410  add.ul r[5:6], r[9:10], r[5:6]
001a7c  9f047fd1  addli r9, r30, -5960
001a80  1f05cfcf  addli r10, r30, -6176
001a84  670a1fd0  storeli.w r1, -5984(r30)
001a88  e3009fcf  loadli.w r1,  -6200(r30)
001a8c  73b05400  store.d r[5:6], 0(r9)
001a90  eb520500  load.d r[5:6], 0(r10)
001a94  8b905011  add.s r1, r1, r21
001a98  8ba13210  add.ul r[3:4], r[5:6], r[3:4]
001a9c  9f026fd1  addli r5, r30, -5968
001aa0  67431fd0  storeli.w r1, -6092(r30)
001aa4  73b03200  store.d r[3:4], 0(r5)
001aa8  1f120000  addli r4, zero, 1
001aac  db020000  j 20
001ab0  0b11c110  add.s r2, r2, r12
001ab4  0b14e410  add.s r8, r8, r14
001ab8  1f020000  addli r4, zero, 0
001abc  37744103  beq r2, r20, 1308
001ac0  e3411fd0  loadli.w r3,  -6132(r30)
001ac4  8b103438  mod.s r1, r8, r3
001ac8  8b903010  add.s r1, r1, r3
001acc  8b903038  mod.s r1, r1, r3
001ad0  9f010000  addli r3, zero, 0
001ad4  bff00000  blt.s r1, zero, 60
001ad8  e3022fd0  loadli.w r5,  -6128(r30)
001adc  cbd01200  ble.s r5, r1, 52
001ae0  9bb01000  slli r1, r1, 1
001ae4  9f014fe2  addli r3, r30, -3808
001ae8  e3029fd0  loadli.w r5,  -6072(r30)
001aec  63437fd0  loadli.w r6,  -6084(r30)
001af0  8b901110  add.s r1, r3, r1
001af4  8b126150  fmac.s r5, r2, r6
001af8  ebb10000  load.hu r3, 0(r1)
001afc  3bb03200  bneq r5, r3, 12
001b00  9f010000  addli r3, zero, 0
001b04  db010000  j 12
001b08  9f110000  addli r3, zero, 1
001b0c  73905000  store.h r5, 0(r1)
001b10  97804c00  and r1, r25, r4
001b14  97808001  and r1, r1, r24
001b18  3ba07001  bneq r1, r23, 8
001b1c  7d800500  xsignal r11, 0
001b20  9300f100  seteq r1, r2, r15
001b24  97021b00  and r5, r22, r1
001b28  1ba91200  xori r18, r5, 1
001b2c  17822001  and r4, r1, r18
001b30  3ba00200  bneq r5, zero, 8
001b34  37520202  beq r4, zero, 1172
001b38  e342afcf  loadli.w r5,  -6188(r30)
001b3c  63038fd0  loadli.w r6,  -6080(r30)
001b40  e7071fd0  storeli.w r1, -6024(r30)
001b44  9f00dfd0  addli r1, r30, -6040
001b48  9f240000  addli r9, zero, 2
001b4c  1f05efd0  addli r10, r30, -6032
001b50  e7088fd0  storeli.w r8, -6008(r30)
001b54  67482fd0  storeli.w r2, -6012(r30)
001b58  0b1b5330  div.s r22, r6, r5
001b5c  ebd20000  load.d r[5:6], 0(r1)
001b60  17bc9202  sll.d r[24:25], r[5:6], r9
001b64  eb520500  load.d r[5:6], 0(r10)
001b68  97b29202  sll.d r[5:6], r[5:6], r9
001b6c  e3442fd0  loadli.w r9,  -6124(r30)
001b70  37e07401  beq r9, r23, 24
001b74  37e8b400  beq r9, r11, 536
001b78  1f240000  addli r8, zero, 2
001b7c  bb988400  bneq r9, r8, 548
001b80  63044fd0  loadli.w r8,  -6112(r30)
001b84  97818100  and r3, r3, r8
001b88  37e80100  beq r3, zero, 536
001b8c  e304bfd0  loadli.w r9,  -6056(r30)
001b90  8b119b10  add.s r3, r22, r9
001b94  9ff1f1ff  addli r3, r3, -1
001b98  8b919130  div.s r3, r3, r9
001b9c  bfcf7101  blt.s r3, r23, 1008
001ba0  63046fd0  loadli.w r8,  -6096(r30)
001ba4  1b251200  xori r10, r4, 1
001ba8  9b741400  setlti r9, r8, 1
001bac  17129900  or r4, r18, r9
001bb0  97149500  or r9, r10, r9
001bb4  1f050000  addli r10, zero, 0
001bb8  5b080000  j 64
001bbc  15060004  dma_cfg r12, zero, zero, 2
001bc0  95051a07  dma_cfg r11, r20, r17, 3
001bc4  63043fd1  loadli.w r8,  -5992(r30)
001bc8  1584580b  dma_cfg r8, r17, r21, 5
001bcc  e3004fd1  loadli.w r1,  -5984(r30)
001bd0  9588d008  dma_cfg r17, r1, r13, 4
001bd4  35000000  dma_run zero
001bd8  1500700b  dma_cfg zero, zero, r23, 5
001bdc  15000010  dma_cfg zero, zero, zero, 8
001be0  1d100800  unlock r16
001be4  1f044000  addli r8, zero, 32
001be8  7d000400  xsignal r8, 0
001bec  9f930300  addli r7, r7, 1
001bf0  1f150500  addli r10, r10, 1
001bf4  376e3500  beq r10, r3, 920
001bf8  6306bfd0  loadli.w r12,  -6056(r30)
001bfc  0b19c520  mul.s r18, r10, r12
001c00  8b152b19  sub.s r11, r22, r18
001c04  8b15b640  min.s r11, r12, r11
001c08  3b730200  bneq r4, zero, 220
001c0c  1f144000  addli r8, zero, 33
001c10  7d100400  xwait r8, 0
001c14  3f937501  blt.s r11, r23, 196
001c18  6306afd1  loadli.w r12,  -5936(r30)
001c1c  634a8fd1  loadli.w r20,  -5948(r30)
001c20  63489fd1  loadli.w r16,  -5940(r30)
001c24  3317e92c  sext_int2long r[14:15], r18
001c28  1f240000  addli r8, zero, 2
001c2c  9ff63500  addli r13, r11, 31
001c30  9f007fd1  addli r1, r30, -5960
001c34  173d8702  sll.d r[26:27], r[14:15], r8
001c38  1f044000  addli r8, zero, 32
001c3c  0b96c338  mod.s r12, r7, r12
001c40  0b978630  div.s r14, r13, r8
001c44  0b1a0651  fmac.s r20, r12, r16
001c48  1bb62500  slli r12, r11, 2
001c4c  1f580000  addli r16, zero, 5
001c50  1d000800  lock zero, r16
001c54  15000012  dma_cfg zero, zero, zero, 9
001c58  e3068fd1  loadli.w r13,  -5952(r30)
001c5c  1500d000  dma_cfg zero, zero, r13, 0
001c60  1b06c607  andi r12, r12, 124
001c64  1500c010  dma_cfg zero, zero, r12, 8
001c68  15800b02  dma_cfg zero, r23, zero, 1
001c6c  e3475fd1  loadli.w r15,  -5972(r30)
001c70  6bd60000  load.d r[12:13], 0(r1)
001c74  0b26a611  add.ul r[12:13], r[12:13], r[26:27]
001c78  bf907701  blt.s r15, r23, 36
001c7c  95060004  dma_cfg r13, zero, zero, 2
001c80  15061a07  dma_cfg r12, r20, r17, 3
001c84  63443fd1  loadli.w r8,  -5988(r30)
001c88  1584580b  dma_cfg r8, r17, r21, 5
001c8c  e3004fd1  loadli.w r1,  -5984(r30)
001c90  9588e008  dma_cfg r17, r1, r14, 4
001c94  35000000  dma_run zero
001c98  db060000  j 52
001c9c  63442fd1  loadli.w r8,  -5996(r30)
001ca0  1584780b  dma_cfg r8, r17, r23, 5
001ca4  e3004fd1  loadli.w r1,  -5984(r30)
001ca8  9588e008  dma_cfg r17, r1, r14, 4
001cac  63471fd1  loadli.w r14,  -6004(r30)
001cb0  95060004  dma_cfg r13, zero, zero, 2
001cb4  15061a07  dma_cfg r12, r20, r17, 3
001cb8  0b268611  add.ul r[12:13], r[12:13], r[24:25]
001cbc  1f77f7ff  addli r14, r14, -1
001cc0  1f0a0a01  addli r20, r20, 128
001cc4  35000000  dma_run zero
001cc8  bb2f07fe  bneq r14, zero, -24
001ccc  1500700b  dma_cfg zero, zero, r23, 5
001cd0  15000010  dma_cfg zero, zero, zero, 8
001cd4  1d100800  unlock r16
001cd8  1f044000  addli r8, zero, 32
001cdc  7d000400  xsignal r8, 0
001ce0  9f930300  addli r7, r7, 1
001ce4  3bbc04fe  bneq r9, zero, -244
001ce8  1f144000  addli r8, zero, 33
001cec  7d100400  xwait r8, 0
001cf0  bfdb75ff  blt.s r11, r23, -268
001cf4  6306afd1  loadli.w r12,  -5936(r30)
001cf8  634a8fd1  loadli.w r20,  -5948(r30)
001cfc  63479fd1  loadli.w r14,  -5940(r30)
001d00  1f240000  addli r8, zero, 2
001d04  9ff63500  addli r13, r11, 31
001d08  9bb52500  slli r11, r11, 2
001d0c  1d000800  lock zero, r16
001d10  15000012  dma_cfg zero, zero, zero, 9
001d14  9b85c507  andi r11, r11, 124
001d18  0b96c338  mod.s r12, r7, r12
001d1c  0b1ae650  fmac.s r20, r12, r14
001d20  3317e92c  sext_int2long r[14:15], r18
001d24  63068fd1  loadli.w r12,  -5952(r30)
001d28  1500c000  dma_cfg zero, zero, r12, 0
001d2c  1500b010  dma_cfg zero, zero, r11, 8
001d30  15800b02  dma_cfg zero, r23, zero, 1
001d34  17378702  sll.d r[14:15], r[14:15], r8
001d38  1f044000  addli r8, zero, 32
001d3c  8b968630  div.s r13, r13, r8
001d40  1f046fd1  addli r8, r30, -5968
001d44  eb500400  load.d r[1:2], 0(r8)
001d48  8ba5e010  add.ul r[11:12], r[1:2], r[14:15]
001d4c  6347bfd1  loadli.w r14,  -5924(r30)
001d50  3f207701  blt.s r14, r23, 8
001d54  5bcdffff  j -408
001d58  63042fd1  loadli.w r8,  -6000(r30)
001d5c  1584780b  dma_cfg r8, r17, r23, 5
001d60  e3004fd1  loadli.w r1,  -5984(r30)
001d64  9588d008  dma_cfg r17, r1, r13, 4
001d68  e3461fd1  loadli.w r13,  -6004(r30)
001d6c  15060004  dma_cfg r12, zero, zero, 2
001d70  95051a07  dma_cfg r11, r20, r17, 3
001d74  8ba55510  add.ul r[11:12], r[11:12], r[5:6]
001d78  9ff6f6ff  addli r13, r13, -1
001d7c  1f0a0a01  addli r20, r20, 128
001d80  35000000  dma_run zero
001d84  bbaf06fe  bneq r13, zero, -24
001d88  5bcaffff  j -432
001d8c  63045fd0  loadli.w r8,  -6104(r30)
001d90  e3444fd0  loadli.w r9,  -6108(r30)
001d94  93049400  seteq r9, r8, r9
001d98  97813400  and r3, r9, r3
001d9c  bbc701fe  bneq r3, zero, -528
001da0  e3406fd0  loadli.w r1,  -6092(r30)
001da4  0b9d3031  div.s r26, r1, r19
001da8  bf177d01  blt.s r26, r23, 484
001dac  9f743b00  addli r9, r22, 31
001db0  1f044000  addli r8, zero, 32
001db4  1b251200  xori r10, r4, 1
001db8  63421fd1  loadli.w r4,  -6004(r30)
001dbc  9f010000  addli r3, zero, 0
001dc0  0b9a8430  div.s r20, r9, r8
001dc4  9b342b00  slli r9, r22, 2
001dc8  9b84c407  andi r9, r9, 124
001dcc  db080000  j 68
001dd0  95060004  dma_cfg r13, zero, zero, 2
001dd4  15861707  dma_cfg r12, r15, r17, 3
001dd8  63043fd1  loadli.w r8,  -5992(r30)
001ddc  1584b80a  dma_cfg r8, r17, r11, 5
001de0  95084709  dma_cfg r17, r14, r20, 4
001de4  35000000  dma_run zero
001de8  1500700b  dma_cfg zero, zero, r23, 5
001dec  15000010  dma_cfg zero, zero, zero, 8
001df0  1f580000  addli r16, zero, 5
001df4  1d100800  unlock r16
001df8  1f044000  addli r8, zero, 32
001dfc  7d000400  xsignal r8, 0
001e00  9f930300  addli r7, r7, 1
001e04  9f910100  addli r3, r3, 1
001e08  0b123219  sub.s r4, r4, r19
001e0c  3786a101  beq r3, r26, 384
001e10  8b9d3121  mul.s r27, r3, r19
001e14  8b95ba19  sub.s r11, r21, r27
001e18  8b95b940  min.s r11, r19, r11
001e1c  1bfe1500  setlti r28, r11, 1
001e20  1716c901  or r12, r18, r28
001e24  3b230600  bneq r12, zero, 200
001e28  1f144000  addli r8, zero, 33
001e2c  7d100400  xwait r8, 0
001e30  bf427b01  blt.s r22, r23, 176
001e34  63445fd1  loadli.w r8,  -5972(r30)
001e38  6306afd1  loadli.w r12,  -5936(r30)
001e3c  e3478fd1  loadli.w r15,  -5948(r30)
001e40  1d000800  lock zero, r16
001e44  1f280000  addli r16, zero, 2
001e48  8b968d20  mul.s r13, r27, r8
001e4c  0b96c338  mod.s r12, r7, r12
001e50  b396d62a  sext_int2long r[13:14], r13
001e54  97b60603  sll.d r[13:14], r[13:14], r16
001e58  63489fd1  loadli.w r16,  -5940(r30)
001e5c  8b170651  fmac.s r15, r12, r16
001e60  1f087fd1  addli r16, r30, -5960
001e64  eb500800  load.d r[1:2], 0(r16)
001e68  15000012  dma_cfg zero, zero, zero, 9
001e6c  0ba6d010  add.ul r[12:13], r[1:2], r[13:14]
001e70  63078fd1  loadli.w r14,  -5952(r30)
001e74  1500e000  dma_cfg zero, zero, r14, 0
001e78  15009010  dma_cfg zero, zero, r9, 8
001e7c  15800b02  dma_cfg zero, r23, zero, 1
001e80  1bb77500  slli r14, r11, 7
001e84  bf007401  blt.s r8, r23, 32
001e88  95060004  dma_cfg r13, zero, zero, 2
001e8c  15861707  dma_cfg r12, r15, r17, 3
001e90  63443fd1  loadli.w r8,  -5988(r30)
001e94  1584b80a  dma_cfg r8, r17, r11, 5
001e98  95084709  dma_cfg r17, r14, r20, 4
001e9c  35000000  dma_run zero
001ea0  5b060000  j 48
001ea4  63442fd1  loadli.w r8,  -5996(r30)
001ea8  1584780b  dma_cfg r8, r17, r23, 5
001eac  95084709  dma_cfg r17, r14, r20, 4
001eb0  0b974940  min.s r14, r19, r4
001eb4  95060004  dma_cfg r13, zero, zero, 2
001eb8  15861707  dma_cfg r12, r15, r17, 3
001ebc  0b268611  add.ul r[12:13], r[12:13], r[24:25]
001ec0  1f77f7ff  addli r14, r14, -1
001ec4  9f870701  addli r15, r15, 128
001ec8  35000000  dma_run zero
001ecc  bb2f07fe  bneq r14, zero, -24
001ed0  1500700b  dma_cfg zero, zero, r23, 5
001ed4  15000010  dma_cfg zero, zero, zero, 8
001ed8  1f580000  addli r16, zero, 5
001edc  1d100800  unlock r16
001ee0  1f044000  addli r8, zero, 32
001ee4  7d000400  xsignal r8, 0
001ee8  9f930300  addli r7, r7, 1
001eec  1716c501  or r12, r10, r28
001ef0  3b5c06fe  bneq r12, zero, -236
001ef4  1f144000  addli r8, zero, 33
001ef8  7d100400  xwait r8, 0
001efc  bf7b7bff  blt.s r22, r23, -260
001f00  e3069fd1  loadli.w r13,  -5944(r30)
001f04  6306afd1  loadli.w r12,  -5936(r30)
001f08  1f240000  addli r8, zero, 2
001f0c  e3478fd1  loadli.w r15,  -5948(r30)
001f10  1d000800  lock zero, r16
001f14  63489fd1  loadli.w r16,  -5940(r30)
001f18  8b96dd20  mul.s r13, r27, r13
001f1c  0b96c338  mod.s r12, r7, r12
001f20  b396d62a  sext_int2long r[13:14], r13
001f24  97b68602  sll.d r[13:14], r[13:14], r8
001f28  1f046fd1  addli r8, r30, -5968
001f2c  eb500400  load.d r[1:2], 0(r8)
001f30  8b170651  fmac.s r15, r12, r16
001f34  15000012  dma_cfg zero, zero, zero, 9
001f38  0ba6d010  add.ul r[12:13], r[1:2], r[13:14]
001f3c  63078fd1  loadli.w r14,  -5952(r30)
001f40  1500e000  dma_cfg zero, zero, r14, 0
001f44  15009010  dma_cfg zero, zero, r9, 8
001f48  15800b02  dma_cfg zero, r23, zero, 1
001f4c  e34dbfd1  loadli.w r27,  -5924(r30)
001f50  1bb77500  slli r14, r11, 7
001f54  3fa07d01  blt.s r27, r23, 8
001f58  5bcfffff  j -392
001f5c  63042fd1  loadli.w r8,  -6000(r30)
001f60  1584780b  dma_cfg r8, r17, r23, 5
001f64  95084709  dma_cfg r17, r14, r20, 4
001f68  8b954940  min.s r11, r19, r4
001f6c  95060004  dma_cfg r13, zero, zero, 2
001f70  15861707  dma_cfg r12, r15, r17, 3
001f74  0b265610  add.ul r[12:13], r[12:13], r[5:6]
001f78  9ff5f5ff  addli r11, r11, -1
001f7c  9f870701  addli r15, r15, 128
001f80  35000000  dma_run zero
001f84  bbaf05fe  bneq r11, zero, -24
001f88  5bccffff  j -416
001f8c  9f417000  addli r3, zero, 60
001f90  7d800100  xsignal r3, 0
001f94  7d900100  xwait r3, 0
001f98  63041fd1  loadli.w r8,  -6008(r30)
001f9c  6346cfd0  loadli.w r12,  -6044(r30)
001fa0  6307cfd0  loadli.w r14,  -6048(r30)
001fa4  634abfd0  loadli.w r20,  -6052(r30)
001fa8  630b7fd0  loadli.w r22,  -6088(r30)
001fac  634c8fd0  loadli.w r24,  -6076(r30)
001fb0  e34cafd0  loadli.w r25,  -6060(r30)
001fb4  e307afd0  loadli.w r15,  -6064(r30)
001fb8  e3469fd0  loadli.w r13,  -6068(r30)
001fbc  63410fd1  loadli.w r2,  -6012(r30)
001fc0  e300ffd0  loadli.w r1,  -6024(r30)
001fc4  9f350000  addli r11, zero, 3
001fc8  97801600  and r1, r13, r1
001fcc  bb9b70fd  bneq r1, r23, -1308
001fd0  7d800500  xsignal r11, 0
001fd4  db5bffff  j -1316
001fd8  1f810700  addli r2, r15, 0
001fdc  e3063fd0  loadli.w r13,  -6120(r30)
001fe0  e3070fd0  loadli.w r15,  -6144(r30)
001fe4  6349ffcf  loadli.w r18,  -6148(r30)
001fe8  e3410fd0  loadli.w r3,  -6140(r30)
001fec  6342bfcf  loadli.w r4,  -6180(r30)
001ff0  abf0ffff  lui r1, 1048575
001ff4  1b9af0ff  ori r20, r1, 4095
001ff8  bf76cafc  blt.s r20, r12, -1604
001ffc  630abfcf  loadli.w r20,  -6184(r30)
002000  db36ffff  j -1612
002004  e3447fcf  loadli.w r9,  -6212(r30)
002008  63025fd0  loadli.w r4,  -6104(r30)
00200c  e3028fcf  loadli.w r5,  -6208(r30)
002010  9f860700  addli r13, r15, 0
002014  abf0ffff  lui r1, 1048575
002018  9b97f0ff  ori r15, r1, 4095
00201c  3fd227fd  blt.s r15, r18, -1900
002020  e3478fcf  loadli.w r15,  -6204(r30)
002024  db11ffff  j -1908
002028  1f020300  addli r4, r6, 0
00202c  abf0ffff  lui r1, 1048575
002030  9b90f0ff  ori r1, r1, 4095
002034  67481fce  storeli.w r1, -6268(r30)
002038  bfd8a0fa  blt.s r1, r10, -2508
00203c  e340cfcb  loadli.w r1,  -6684(r30)
002040  67481fce  storeli.w r1, -6268(r30)
002044  5bc5feff  j -2520
002048  670d1fd1  storeli.w r17, -5936(r30)
00204c  e3005f01  loadli.w r1,  168(r30)
002050  670e0fd0  storeli.w zero, -5920(r30)
002054  e7410fe2  storeli.w zero, -3812(r30)
002058  e7010fe2  storeli.w zero, -3816(r30)
00205c  2b01803f  lui r2, 260096
002060  e3088fd0  loadli.w r17,  -6080(r30)
002064  67482fd0  storeli.w r2, -6012(r30)
002068  e7062fd0  storeli.w r2, -6040(r30)
00206c  e74c2fd0  storeli.w r2, -5940(r30)
002070  bbb70000  bneq r1, zero, 492
002074  b3001028  zext_int2long r[1:2], zero
002078  ab02803f  lui r5, 260096
00207c  93a01100  seteq.d r1, r[3:4], r[1:2]
002080  bbf10000  bneq r1, zero, 124
002084  00a00000  mfence { lm }
002088  9f006000  addli r1, zero, 48
00208c  2b0100f0  lui r2, 983040
002090  9f020fda  addli r5, r30, -4864
002094  97902000  or r1, r1, r2
002098  ffa05100  l_gm2lm r1, r5, 0(r[3:4])
00209c  00a00200  mfence { lm, gm }
0020a0  e3000fda  loadli.w r1,  -4864(r30)
0020a4  63410fda  loadli.w r2,  -4860(r30)
0020a8  e3031fda  loadli.w r7,  -4856(r30)
0020ac  63441fda  loadli.w r8,  -4852(r30)
0020b0  e3022fda  loadli.w r5,  -4848(r30)
0020b4  63432fda  loadli.w r6,  -4844(r30)
0020b8  e3073fda  loadli.w r15,  -4840(r30)
0020bc  e3455fda  loadli.w r11,  -4820(r30)
0020c0  0be66248  max.f r12, r5, r6
0020c4  8be02048  max.f r1, r1, r2
0020c8  0be18348  max.f r2, r7, r8
0020cc  e3423fda  loadli.w r5,  -4836(r30)
0020d0  63034fda  loadli.w r6,  -4832(r30)
0020d4  e3434fda  loadli.w r7,  -4828(r30)
0020d8  63045fda  loadli.w r8,  -4824(r30)
0020dc  0b61c148  max.f r2, r2, r12
0020e0  8be75748  max.f r15, r15, r5
0020e4  8b627348  max.f r5, r6, r7
0020e8  0b63b448  max.f r6, r8, r11
0020ec  8be02048  max.f r1, r1, r2
0020f0  8be26248  max.f r5, r5, r6
0020f4  0be15748  max.f r2, r15, r5
0020f8  8be22048  max.f r5, r1, r2
0020fc  9f016fd1  addli r3, r30, -5968
002100  b3001028  zext_int2long r[1:2], zero
002104  6bd30100  load.d r[6:7], 0(r3)
002108  2b06803f  lui r12, 260096
00210c  93201300  seteq.d r1, r[6:7], r[1:2]
002110  bbf10000  bneq r1, zero, 124
002114  00a00000  mfence { lm }
002118  9f006000  addli r1, zero, 48
00211c  2b0100f0  lui r2, 983040
002120  1f040fda  addli r8, r30, -4864
002124  97902000  or r1, r1, r2
002128  ff208300  l_gm2lm r1, r8, 0(r[6:7])
00212c  00a00200  mfence { lm, gm }
002130  e3000fda  loadli.w r1,  -4864(r30)
002134  63410fda  loadli.w r2,  -4860(r30)
002138  63041fda  loadli.w r8,  -4856(r30)
00213c  e3451fda  loadli.w r11,  -4852(r30)
002140  63032fda  loadli.w r6,  -4848(r30)
002144  e3432fda  loadli.w r7,  -4844(r30)
002148  63083fda  loadli.w r16,  -4840(r30)
00214c  63465fda  loadli.w r12,  -4820(r30)
002150  8b677348  max.f r15, r6, r7
002154  8be02048  max.f r1, r1, r2
002158  0b61b448  max.f r2, r8, r11
00215c  63433fda  loadli.w r6,  -4836(r30)
002160  e3034fda  loadli.w r7,  -4832(r30)
002164  63444fda  loadli.w r8,  -4828(r30)
002168  e3055fda  loadli.w r11,  -4824(r30)
00216c  0b61f148  max.f r2, r2, r15
002170  0b686848  max.f r16, r16, r6
002174  0be38348  max.f r6, r7, r8
002178  8be3c548  max.f r7, r11, r12
00217c  8be02048  max.f r1, r1, r2
002180  0b637348  max.f r6, r6, r7
002184  0b616848  max.f r2, r16, r6
002188  0be62048  max.f r12, r1, r2
00218c  b3001028  zext_int2long r[1:2], zero
002190  93a01400  seteq.d r1, r[9:10], r[1:2]
002194  bb800000  bneq r1, zero, 32
002198  00a00000  mfence { lm }
00219c  9f006000  addli r1, zero, 48
0021a0  2b0100f0  lui r2, 983040
0021a4  1f030fda  addli r6, r30, -4864
0021a8  97902000  or r1, r1, r2
0021ac  ffa06400  l_gm2lm r1, r6, 0(r[9:10])
0021b0  00a00200  mfence { lm, gm }
0021b4  9f01ffd0  addli r3, r30, -6024
0021b8  b3001028  zext_int2long r[1:2], zero
0021bc  6bd30100  load.d r[6:7], 0(r3)
0021c0  13211300  seteq.d r2, r[6:7], r[1:2]
0021c4  ab00803f  lui r1, 260096
0021c8  bb710100  bneq r2, zero, 124
0021cc  00a00000  mfence { lm }
0021d0  9f006000  addli r1, zero, 48
0021d4  2b0100f0  lui r2, 983040
0021d8  1f020fda  addli r4, r30, -4864
0021dc  97902000  or r1, r1, r2
0021e0  ff204300  l_gm2lm r1, r4, 0(r[6:7])
0021e4  00a00200  mfence { lm, gm }
0021e8  e3000fda  loadli.w r1,  -4864(r30)
0021ec  63410fda  loadli.w r2,  -4860(r30)
0021f0  63021fda  loadli.w r4,  -4856(r30)
0021f4  63431fda  loadli.w r6,  -4852(r30)
0021f8  e3032fda  loadli.w r7,  -4848(r30)
0021fc  63442fda  loadli.w r8,  -4844(r30)
002200  e3444fda  loadli.w r9,  -4828(r30)
002204  63055fda  loadli.w r10,  -4824(r30)
002208  e3455fda  loadli.w r11,  -4820(r30)
00220c  8be02048  max.f r1, r1, r2
002210  0b616248  max.f r2, r4, r6
002214  0be28348  max.f r4, r7, r8
002218  63033fda  loadli.w r6,  -4840(r30)
00221c  e3433fda  loadli.w r7,  -4836(r30)
002220  63044fda  loadli.w r8,  -4832(r30)
002224  0b614148  max.f r2, r2, r4
002228  0b637348  max.f r6, r6, r7
00222c  8b639448  max.f r7, r8, r9
002230  0b64b548  max.f r8, r10, r11
002234  8be02048  max.f r1, r1, r2
002238  0be28348  max.f r4, r7, r8
00223c  0b614348  max.f r2, r6, r4
002240  8be02048  max.f r1, r1, r2
002244  0f815218  div.f.rn r2, r5, r5
002248  8f801018  div.f.rn r1, r1, r1
00224c  e7062fd0  storeli.w r2, -6040(r30)
002250  0f01c618  div.f.rn r2, r12, r12
002254  e74c1fd0  storeli.w r1, -5940(r30)
002258  67482fd0  storeli.w r2, -6012(r30)
00225c  e340efcb  loadli.w r1,  -6668(r30)
002260  9f1b0000  addli r23, zero, 1
002264  3fca701b  blt.s r1, r23, 13968
002268  e3003f02  loadli.w r1,  280(r30)
00226c  e307cf02  loadli.w r15,  352(r30)
002270  6308df02  loadli.w r16,  360(r30)
002274  e301ef01  loadli.w r3,  240(r30)
002278  63099f02  loadli.w r18,  328(r30)
00227c  63414f03  loadli.w r2,  420(r30)
002280  e3051f02  loadli.w r11,  264(r30)
002284  63461f02  loadli.w r12,  268(r30)
002288  6303af02  loadli.w r6,  336(r30)
00228c  e3040f02  loadli.w r9,  256(r30)
002290  63022f02  loadli.w r4,  272(r30)
002294  e3420f02  loadli.w r5,  260(r30)
002298  e303af01  loadli.w r7,  208(r30)
00229c  6304ff01  loadli.w r8,  248(r30)
0022a0  e7030fd0  storeli.w zero, -6088(r30)
0022a4  1f0e0000  addli r28, zero, 0
0022a8  1f0a0000  addli r20, zero, 0
0022ac  9f0a0000  addli r21, zero, 0
0022b0  1f0b0000  addli r22, zero, 0
0022b4  9f0c0000  addli r25, zero, 0
0022b8  1f050000  addli r10, zero, 0
0022bc  9f0d0000  addli r27, zero, 0
0022c0  67440fce  storeli.w zero, -6332(r30)
0022c4  670d0fce  storeli.w zero, -6192(r30)
0022c8  e70f0fce  storeli.w zero, -6152(r30)
0022cc  670b1fd0  storeli.w r1, -5968(r30)
0022d0  e340ff01  loadli.w r1,  252(r30)
0022d4  0b136940  min.s r6, r18, r6
0022d8  1f74f4ff  addli r8, r8, -1
0022dc  e7446fce  storeli.w r6, -6324(r30)
0022e0  67038fce  storeli.w r8, -6352(r30)
0022e4  670a1fd0  storeli.w r1, -5984(r30)
0022e8  9f800600  addli r1, r13, 0
0022ec  e3060f03  loadli.w r13,  384(r30)
0022f0  8b96d748  max.s r13, r15, r13
0022f4  9b771800  setlti r15, r16, 1
0022f8  1f083fcf  addli r16, r30, -6248
0022fc  e701ffcc  storeli.w r15, -6632(r30)
002300  8b971140  min.s r15, r3, r1
002304  9b701900  setlti r1, r18, 1
002308  e301afd1  loadli.w r3,  -5936(r30)
00230c  e74ddfca  storeli.w r13, -6692(r30)
002310  67411fcc  storeli.w r1, -6636(r30)
002314  9b701100  setlti r1, r2, 1
002318  0b11c220  mul.s r2, r4, r12
00231c  67011fcc  storeli.w r1, -6640(r30)
002320  8b90c520  mul.s r1, r11, r12
002324  8b950748  max.s r11, r15, zero
002328  1f069fcc  addli r12, r30, -6584
00232c  9f074fcd  addli r15, r30, -6496
002330  e705bfcc  storeli.w r11, -6568(r30)
002334  8b95b410  add.s r11, r9, r11
002338  1ff3f5ff  addli r6, r11, -1
00233c  9f054fcf  addli r11, r30, -6240
002340  0b139330  div.s r6, r6, r9
002344  6b540f00  load.d r[8:9], 0(r30)
002348  73b08700  store.d r[8:9], 0(r15)
00234c  e7016fce  storeli.w r6, -6376(r30)
002350  0b932120  mul.s r6, r3, r2
002354  e70d6fca  storeli.w r6, -6696(r30)
002358  0b931120  mul.s r6, r3, r1
00235c  e3014fd1  loadli.w r3,  -5984(r30)
002360  e70f6fca  storeli.w r6, -6664(r30)
002364  1bb32300  slli r6, r7, 2
002368  1ff2f1ff  addli r4, r3, -1
00236c  e3016fd1  loadli.w r3,  -5968(r30)
002370  670a6fd0  storeli.w r6, -5984(r30)
002374  63038f01  loadli.w r6,  192(r30)
002378  e7404fcc  storeli.w r4, -6644(r30)
00237c  1ff2f2ff  addli r4, r5, -1
002380  e302dfcb  loadli.w r5,  -6680(r30)
002384  9ff1f1ff  addli r3, r3, -1
002388  674d4fca  storeli.w r4, -6700(r30)
00238c  1f120900  addli r4, r18, 1
002390  1f095fce  addli r18, r30, -6360
002394  e7076fd0  storeli.w r6, -6024(r30)
002398  e70a3fcc  storeli.w r3, -6488(r30)
00239c  67454fcc  storeli.w r4, -6572(r30)
0023a0  b391332e  sext_int2long r[3:4], r7
0023a4  e3037fd0  loadli.w r7,  -6088(r30)
0023a8  73b03500  store.d r[3:4], 0(r11)
0023ac  e3015f02  loadli.w r3,  296(r30)
0023b0  63425f02  loadli.w r4,  300(r30)
0023b4  9f150000  addli r11, zero, 1
0023b8  9ff1f1ff  addli r3, r3, -1
0023bc  67023fd0  storeli.w r3, -6112(r30)
0023c0  9f71f2ff  addli r3, r4, -1
0023c4  e7083fd0  storeli.w r3, -6008(r30)
0023c8  eb518f00  load.d r[3:4], 8(r30)
0023cc  73303600  store.d r[3:4], 0(r12)
0023d0  63427f01  loadli.w r4,  188(r30)
0023d4  e3417f02  loadli.w r3,  316(r30)
0023d8  1f060001  addli r12, zero, 128
0023dc  33148228  sext_int2long r[8:9], r4
0023e0  670b3fd0  storeli.w r3, -5968(r30)
0023e4  e3419fcf  loadli.w r3,  -6196(r30)
0023e8  67074fd0  storeli.w r4, -6032(r30)
0023ec  73308800  store.d r[8:9], 0(r16)
0023f0  3314832c  sext_int2long r[8:9], r6
0023f4  73308900  store.d r[8:9], 0(r18)
0023f8  1bf41100  setlti r8, r3, 1
0023fc  8b91d140  min.s r3, r3, r13
002400  9f140000  addli r9, zero, 1
002404  e7043fce  storeli.w r3, -6328(r30)
002408  9b312200  slli r3, r4, 2
00240c  1b322300  slli r4, r6, 2
002410  e7008fcc  storeli.w r8, -6648(r30)
002414  e7453fd0  storeli.w r3, -6052(r30)
002418  8b910158  neg.s r3, r3
00241c  67064fd0  storeli.w r4, -6048(r30)
002420  e7443fd0  storeli.w r3, -6068(r30)
002424  8b110258  neg.s r3, r4
002428  67453fd0  storeli.w r3, -6060(r30)
00242c  9f110000  addli r3, zero, 1
002430  e7023fcc  storeli.w r3, -6616(r30)
002434  9f110000  addli r3, zero, 1
002438  67473fcc  storeli.w r3, -6540(r30)
00243c  9f110000  addli r3, zero, 1
002440  67403fcc  storeli.w r3, -6652(r30)
002444  9f110000  addli r3, zero, 1
002448  e74b3fce  storeli.w r3, -6212(r30)
00244c  9f110000  addli r3, zero, 1
002450  674f3fcc  storeli.w r3, -6412(r30)
002454  9f110000  addli r3, zero, 1
002458  e74f3fcc  storeli.w r3, -6404(r30)
00245c  9f110000  addli r3, zero, 1
002460  e7093fcc  storeli.w r3, -6504(r30)
002464  e341cfcb  loadli.w r3,  -6684(r30)
002468  67423fcc  storeli.w r3, -6620(r30)
00246c  db0c0000  j 100
002470  63427fcf  loadli.w r4,  -6212(r30)
002474  e3015fcc  loadli.w r3,  -6616(r30)
002478  63438fce  loadli.w r6,  -6332(r30)
00247c  67400fcc  storeli.w zero, -6652(r30)
002480  0b1a4a18  sub.s r20, r20, r4
002484  0b120258  neg.s r4, r4
002488  0b1e3e18  sub.s r28, r28, r3
00248c  8b910158  neg.s r3, r3
002490  1f130300  addli r6, r6, 1
002494  e74b4fce  storeli.w r4, -6212(r30)
002498  6342ffcd  loadli.w r4,  -6404(r30)
00249c  e7023fcc  storeli.w r3, -6616(r30)
0024a0  e341efcb  loadli.w r3,  -6668(r30)
0024a4  67446fce  storeli.w r6, -6332(r30)
0024a8  0b1b4b18  sub.s r22, r22, r4
0024ac  0b120258  neg.s r4, r4
0024b0  e74f4fcc  storeli.w r4, -6404(r30)
0024b4  6342efcd  loadli.w r4,  -6412(r30)
0024b8  8b9a4a18  sub.s r21, r21, r4
0024bc  0b120258  neg.s r4, r4
0024c0  674f4fcc  storeli.w r4, -6412(r30)
0024c4  6302efcb  loadli.w r4,  -6672(r30)
0024c8  8b924218  sub.s r5, r5, r4
0024cc  b720331a  beq r6, r3, 13352
0024d0  e3414fcc  loadli.w r3,  -6620(r30)
0024d4  b7003e0a  beq r28, r3, 5152
0024d8  6302efcb  loadli.w r4,  -6672(r30)
0024dc  63438fce  loadli.w r6,  -6332(r30)
0024e0  e301cfcb  loadli.w r3,  -6688(r30)
0024e4  e70e5fca  storeli.w r5, -6680(r30)
0024e8  0b144320  mul.s r8, r6, r4
0024ec  8b918118  sub.s r3, r3, r8
0024f0  e7038fce  storeli.w r8, -6344(r30)
0024f4  63043fce  loadli.w r8,  -6376(r30)
0024f8  8b113240  min.s r3, r4, r3
0024fc  0b125240  min.s r4, r4, r5
002500  8b920148  max.s r5, r3, zero
002504  e301bfcb  loadli.w r3,  -6696(r30)
002508  0b120248  max.s r4, r4, zero
00250c  67435fce  storeli.w r5, -6348(r30)
002510  e74a4fcc  storeli.w r4, -6484(r30)
002514  63028fcc  loadli.w r4,  -6592(r30)
002518  8b916120  mul.s r3, r3, r6
00251c  1f030e00  addli r6, r28, 0
002520  e7453fcc  storeli.w r3, -6564(r30)
002524  e341afcb  loadli.w r3,  -6700(r30)
002528  8b915110  add.s r3, r3, r5
00252c  9f72f4ff  addli r5, r8, -1
002530  67005fcc  storeli.w r5, -6656(r30)
002534  e3021fd0  loadli.w r5,  -6136(r30)
002538  8b965130  div.s r13, r3, r5
00253c  e341bfcb  loadli.w r3,  -6692(r30)
002540  e3428fcc  loadli.w r5,  -6588(r30)
002544  8b113440  min.s r3, r8, r3
002548  e74f3fca  storeli.w r3, -6660(r30)
00254c  e3410fcc  loadli.w r3,  -6652(r30)
002550  e74bdfcc  storeli.w r13, -6468(r30)
002554  9ba11100  xori r3, r3, 1
002558  670b3fcc  storeli.w r3, -6480(r30)
00255c  8b916220  mul.s r3, r5, r6
002560  8b113218  sub.s r3, r4, r3
002564  0b928620  mul.s r4, r13, r8
002568  e7033fcc  storeli.w r3, -6600(r30)
00256c  9ff1f6ff  addli r3, r13, -1
002570  e74e3fca  storeli.w r3, -6676(r30)
002574  e3015fcc  loadli.w r3,  -6616(r30)
002578  8b913220  mul.s r3, r5, r3
00257c  9f020200  addli r5, r4, 0
002580  e7413fcc  storeli.w r3, -6628(r30)
002584  9f010000  addli r3, zero, 0
002588  67025fcc  storeli.w r5, -6624(r30)
00258c  db0f0000  j 124
002590  e3005fcc  loadli.w r1,  -6616(r30)
002594  8b920258  neg.s r5, r5
002598  63413fcc  loadli.w r2,  -6628(r30)
00259c  e3467fcc  loadli.w r13,  -6596(r30)
0025a0  9f080200  addli r17, r4, 0
0025a4  1f040200  addli r8, r4, 0
0025a8  63073fce  loadli.w r14,  -6376(r30)
0025ac  63424fcc  loadli.w r4,  -6620(r30)
0025b0  9f110000  addli r3, zero, 1
0025b4  67475fcc  storeli.w r5, -6540(r30)
0025b8  e3024fcc  loadli.w r5,  -6624(r30)
0025bc  0b131310  add.s r6, r6, r1
0025c0  e3407fcf  loadli.w r1,  -6212(r30)
0025c4  0b1a1a18  sub.s r20, r20, r1
0025c8  8b900058  neg.s r1, r1
0025cc  e74b1fce  storeli.w r1, -6212(r30)
0025d0  e340ffcd  loadli.w r1,  -6404(r30)
0025d4  0b1b1b18  sub.s r22, r22, r1
0025d8  8b900058  neg.s r1, r1
0025dc  e74f1fcc  storeli.w r1, -6404(r30)
0025e0  e3003fcd  loadli.w r1,  -6504(r30)
0025e4  8b9c1c18  sub.s r25, r25, r1
0025e8  8b900058  neg.s r1, r1
0025ec  e7091fcc  storeli.w r1, -6504(r30)
0025f0  e3007fcc  loadli.w r1,  -6600(r30)
0025f4  8b902018  sub.s r1, r1, r2
0025f8  1f810200  addli r2, r5, 0
0025fc  e7031fcc  storeli.w r1, -6600(r30)
002600  9f800600  addli r1, r13, 0
002604  376b4308  beq r6, r4, 4824
002608  13015100  seteq r2, r2, r5
00260c  63022fcc  loadli.w r4,  -6640(r30)
002610  17114100  or r2, r2, r4
002614  bb100100  bneq r2, zero, 36
002618  63022fd0  loadli.w r4,  -6128(r30)
00261c  1f014fe2  addli r2, r30, -3808
002620  abf20000  lui r5, 15
002624  1f72f2ff  addli r4, r4, -1
002628  9b92f2ff  ori r5, r5, 4095
00262c  73105100  store.h r5, 0(r2)
002630  1f210100  addli r2, r2, 2
002634  bb3f02fe  bneq r4, zero, -20
002638  e3428fcc  loadli.w r5,  -6588(r30)
00263c  63028fcc  loadli.w r4,  -6592(r30)
002640  67076fcc  storeli.w r6, -6544(r30)
002644  0b115320  mul.s r2, r6, r5
002648  0b122218  sub.s r4, r4, r2
00264c  0b924240  min.s r4, r5, r4
002650  8b120248  max.s r5, r4, zero
002654  63421fcc  loadli.w r4,  -6644(r30)
002658  670c5fcc  storeli.w r5, -6464(r30)
00265c  0b125210  add.s r4, r4, r5
002660  e3022fce  loadli.w r5,  -6384(r30)
002664  8b125230  div.s r5, r4, r5
002668  63023fce  loadli.w r4,  -6376(r30)
00266c  0b125220  mul.s r4, r4, r5
002670  e7075fcc  storeli.w r5, -6536(r30)
002674  e3422fcc  loadli.w r5,  -6636(r30)
002678  e7434fcc  storeli.w r4, -6596(r30)
00267c  13824000  seteq r4, r1, r4
002680  17125200  or r4, r4, r5
002684  bb100200  bneq r4, zero, 36
002688  6302ffcd  loadli.w r4,  -6408(r30)
00268c  e3420fce  loadli.w r5,  -6396(r30)
002690  2bf30000  lui r6, 15
002694  9ff2f2ff  addli r5, r5, -1
002698  1b13f3ff  ori r6, r6, 4095
00269c  73106200  store.h r6, 0(r4)
0026a0  1f220200  addli r4, r4, 2
0026a4  bbbf02fe  bneq r5, zero, -20
0026a8  6302ffcc  loadli.w r4,  -6536(r30)
0026ac  e3023fcc  loadli.w r5,  -6632(r30)
0026b0  13824800  seteq r4, r17, r4
0026b4  17125200  or r4, r4, r5
0026b8  bb100200  bneq r4, zero, 36
0026bc  63021fce  loadli.w r4,  -6392(r30)
0026c0  e3020fd0  loadli.w r5,  -6144(r30)
0026c4  2bf30000  lui r6, 15
0026c8  9ff2f2ff  addli r5, r5, -1
0026cc  1b13f3ff  ori r6, r6, 4095
0026d0  73106200  store.h r6, 0(r4)
0026d4  1f220200  addli r4, r4, 2
0026d8  bbbf02fe  bneq r5, zero, -20
0026dc  63023fce  loadli.w r4,  -6376(r30)
0026e0  e3021fcc  loadli.w r5,  -6648(r30)
0026e4  13024700  seteq r4, r14, r4
0026e8  17125200  or r4, r4, r5
0026ec  bb100200  bneq r4, zero, 36
0026f0  63422fcd  loadli.w r4,  -6508(r30)
0026f4  e3429fcf  loadli.w r5,  -6196(r30)
0026f8  2bf30000  lui r6, 15
0026fc  9ff2f2ff  addli r5, r5, -1
002700  1b13f3ff  ori r6, r6, 4095
002704  73106200  store.h r6, 0(r4)
002708  1f220200  addli r4, r4, 2
00270c  bbbf02fe  bneq r5, zero, -20
002710  e3427fcc  loadli.w r5,  -6596(r30)
002714  b7a05000  beq r1, r5, 40
002718  e300ffcf  loadli.w r1,  -6152(r30)
00271c  6302afcf  loadli.w r4,  -6192(r30)
002720  e70f0fce  storeli.w zero, -6152(r30)
002724  670d0fce  storeli.w zero, -6192(r30)
002728  8b101210  add.s r1, r4, r1
00272c  63425fcc  loadli.w r4,  -6612(r30)
002730  8b9db011  add.s r27, r1, r27
002734  0b924240  min.s r4, r5, r4
002738  e7444fce  storeli.w r4, -6324(r30)
00273c  6303efcc  loadli.w r6,  -6544(r30)
002740  e342efcc  loadli.w r5,  -6540(r30)
002744  6302ffcc  loadli.w r4,  -6536(r30)
002748  e3003fce  loadli.w r1,  -6376(r30)
00274c  b7501700  beq r14, r1, 52
002750  e300cfd1  loadli.w r1,  -5920(r30)
002754  63423fe2  loadli.w r4,  -3812(r30)
002758  e3023fe2  loadli.w r5,  -3816(r30)
00275c  670e0fd0  storeli.w zero, -5920(r30)
002760  e7410fe2  storeli.w zero, -3812(r30)
002764  8b101210  add.s r1, r4, r1
002768  6302ffcc  loadli.w r4,  -6536(r30)
00276c  8b905010  add.s r1, r1, r5
002770  e342efcc  loadli.w r5,  -6540(r30)
002774  e7011fe2  storeli.w r1, -3816(r30)
002778  e340ffcb  loadli.w r1,  -6660(r30)
00277c  e7041fce  storeli.w r1, -6328(r30)
002780  abf0ffff  lui r1, 1048575
002784  e3063fce  loadli.w r13,  -6376(r30)
002788  1f040000  addli r8, zero, 0
00278c  3f305000  blt.s zero, r5, 12
002790  63040fcc  loadli.w r8,  -6656(r30)
002794  9b96f0ff  ori r13, r1, 4095
002798  e70c8fce  storeli.w r8, -6200(r30)
00279c  e746dfcc  storeli.w r13, -6548(r30)
0027a0  b747d4fe  beq r8, r13, -528
0027a4  abf0ffff  lui r1, 1048575
0027a8  670e4fcc  storeli.w r4, -6432(r30)
0027ac  9b90f0ff  ori r1, r1, 4095
0027b0  3f209000  blt.s zero, r9, 8
0027b4  670e1fcc  storeli.w r1, -6432(r30)
0027b8  63447fcd  loadli.w r8,  -6468(r30)
0027bc  670c8fce  storeli.w r8, -6208(r30)
0027c0  6344dfcc  loadli.w r8,  -6548(r30)
0027c4  3f04b008  blt.s zero, r11, 4352
0027c8  670c1fce  storeli.w r1, -6208(r30)
0027cc  9f060000  addli r13, zero, 0
0027d0  3f209000  blt.s zero, r9, 8
0027d4  5b1f0200  j 4344
0027d8  9f070000  addli r15, zero, 0
0027dc  3f20b000  blt.s zero, r11, 8
0027e0  e347dfcb  loadli.w r15,  -6676(r30)
0027e4  e3408fcc  loadli.w r1,  -6588(r30)
0027e8  63027fcc  loadli.w r4,  -6600(r30)
0027ec  8b904040  min.s r1, r1, r4
0027f0  63426fcc  loadli.w r4,  -6604(r30)
0027f4  8b900048  max.s r1, r1, zero
0027f8  0b114110  add.s r2, r2, r4
0027fc  6302ffcc  loadli.w r4,  -6536(r30)
002800  e7061fcc  storeli.w r1, -6552(r30)
002804  e3003fce  loadli.w r1,  -6376(r30)
002808  e70b2fcc  storeli.w r2, -6472(r30)
00280c  6301ffcb  loadli.w r2,  -6664(r30)
002810  8b905020  mul.s r1, r1, r5
002814  0b116120  mul.s r2, r2, r6
002818  8b101418  sub.s r1, r8, r1
00281c  67462fcc  storeli.w r2, -6556(r30)
002820  e7411fce  storeli.w r1, -6372(r30)
002824  e3006fcc  loadli.w r1,  -6608(r30)
002828  8b101320  mul.s r1, r6, r1
00282c  674b1fcc  storeli.w r1, -6476(r30)
002830  e3400fcc  loadli.w r1,  -6652(r30)
002834  97903000  or r1, r1, r3
002838  67061fcc  storeli.w r1, -6560(r30)
00283c  9f000000  addli r1, zero, 0
002840  5b080000  j 64
002844  e3407fcf  loadli.w r1,  -6212(r30)
002848  0b115110  add.s r2, r2, r5
00284c  8b940458  neg.s r9, r9
002850  e70c2fce  storeli.w r2, -6200(r30)
002854  0b1a1a18  sub.s r20, r20, r1
002858  8b900058  neg.s r1, r1
00285c  e74b1fce  storeli.w r1, -6212(r30)
002860  e340ffcd  loadli.w r1,  -6404(r30)
002864  0b1b1b18  sub.s r22, r22, r1
002868  8b900058  neg.s r1, r1
00286c  e74f1fcc  storeli.w r1, -6404(r30)
002870  e3003fcd  loadli.w r1,  -6504(r30)
002874  8b9c1c10  add.s r25, r25, r1
002878  9f100000  addli r1, zero, 1
00287c  375481fe  beq r2, r8, -748
002880  6308cfcd  loadli.w r16,  -6432(r30)
002884  8b189818  sub.s r17, r16, r9
002888  3bb00601  bneq r13, r16, 12
00288c  63019fcf  loadli.w r2,  -6200(r30)
002890  5b030200  j 4120
002894  63032fcd  loadli.w r6,  -6512(r30)
002898  63049fcf  loadli.w r8,  -6200(r30)
00289c  e3423fce  loadli.w r5,  -6372(r30)
0028a0  e3416fcf  loadli.w r3,  -6220(r30)
0028a4  6307cfcc  loadli.w r14,  -6560(r30)
0028a8  1f090fcd  addli r18, r30, -6528
0028ac  e7479fcd  storeli.w r25, -6532(r30)
0028b0  1f0e9fcc  addli r28, r30, -6584
0028b4  e74d9fcc  storeli.w r9, -6436(r30)
0028b8  e70d1fcd  storeli.w r17, -6440(r30)
0028bc  0b916c38  mod.s r2, r25, r6
0028c0  93025402  setneq r5, r8, r5
0028c4  93914104  setlt.s r3, r3, r4
0028c8  97101700  or r1, r14, r1
0028cc  9f0c9fcd  addli r25, r30, -6456
0028d0  0b116110  add.s r2, r2, r6
0028d4  67025fce  storeli.w r5, -6368(r30)
0028d8  e342cfcc  loadli.w r5,  -6556(r30)
0028dc  0b136138  mod.s r6, r2, r6
0028e0  6341bfcc  loadli.w r2,  -6564(r30)
0028e4  8b125410  add.s r5, r8, r5
0028e8  0b112410  add.s r2, r8, r2
0028ec  674d5fcc  storeli.w r5, -6444(r30)
0028f0  9f020200  addli r5, r4, 0
0028f4  6342afcc  loadli.w r4,  -6572(r30)
0028f8  67412fce  storeli.w r2, -6380(r30)
0028fc  1ba11000  xori r2, r1, 1
002900  97901100  or r1, r3, r1
002904  8b929210  add.s r5, r5, r9
002908  e74d6fce  storeli.w r6, -6180(r30)
00290c  9ba01000  xori r1, r1, 1
002910  17812100  and r2, r3, r2
002914  0b120211  add.s r4, r4, r16
002918  e3011fcd  loadli.w r3,  -6520(r30)
00291c  670d1fcc  storeli.w r1, -6448(r30)
002920  e3402fcd  loadli.w r1,  -6508(r30)
002924  67462fce  storeli.w r2, -6300(r30)
002928  1b311300  slli r2, r6, 1
00292c  0b125218  sub.s r4, r4, r5
002930  e7064fce  storeli.w r4, -6296(r30)
002934  63423fcd  loadli.w r4,  -6500(r30)
002938  0b972010  add.s r14, r1, r2
00293c  63411fcd  loadli.w r2,  -6516(r30)
002940  8b104420  mul.s r1, r8, r4
002944  6706efce  storeli.w r14, -6304(r30)
002948  0b113450  fmac.s r2, r8, r3
00294c  e301bfcc  loadli.w r3,  -6568(r30)
002950  8b901118  sub.s r1, r3, r1
002954  3311212c  sext_int2long r[2:3], r2
002958  8b101240  min.s r1, r4, r1
00295c  1f220000  addli r4, zero, 2
002960  17314102  sll.d r[2:3], r[2:3], r4
002964  6b520900  load.d r[4:5], 0(r18)
002968  8b900048  max.s r1, r1, zero
00296c  e7451fce  storeli.w r1, -6308(r30)
002970  0b222210  add.ul r[4:5], r[4:5], r[2:3]
002974  73b04c00  store.d r[4:5], 0(r25)
002978  eb520e00  load.d r[5:6], 0(r28)
00297c  63022fce  loadli.w r4,  -6384(r30)
002980  0ba12210  add.ul r[2:3], r[5:6], r[2:3]
002984  9f02afce  addli r5, r30, -6320
002988  8b10d220  mul.s r1, r4, r13
00298c  0b149220  mul.s r8, r4, r9
002990  73b02200  store.d r[2:3], 0(r5)
002994  6301dfcc  loadli.w r2,  -6552(r30)
002998  9f020800  addli r5, r16, 0
00299c  674c8fcc  storeli.w r8, -6460(r30)
0029a0  0b131118  sub.s r6, r2, r1
0029a4  db060000  j 52
0029a8  e3407fcf  loadli.w r1,  -6212(r30)
0029ac  8b950558  neg.s r11, r11
0029b0  8b969610  add.s r13, r13, r9
0029b4  0b138318  sub.s r6, r6, r8
0029b8  0b1a1a18  sub.s r20, r20, r1
0029bc  8b900058  neg.s r1, r1
0029c0  e74b1fce  storeli.w r1, -6212(r30)
0029c4  e340efcd  loadli.w r1,  -6412(r30)
0029c8  8b9a1a10  add.s r21, r21, r1
0029cc  e340ffcd  loadli.w r1,  -6404(r30)
0029d0  0b1b1b10  add.s r22, r22, r1
0029d4  b7fa5606  beq r13, r5, 3772
0029d8  63411fce  loadli.w r2,  -6388(r30)
0029dc  e70b0fce  storeli.w zero, -6216(r30)
0029e0  8b902a38  mod.s r1, r21, r2
0029e4  8b902010  add.s r1, r1, r2
0029e8  0b982038  mod.s r16, r1, r2
0029ec  3f010800  blt.s r16, zero, 64
0029f0  e3400fce  loadli.w r1,  -6396(r30)
0029f4  cbe00001  ble.s r1, r16, 56
0029f8  6301ffcd  loadli.w r2,  -6408(r30)
0029fc  9b301800  slli r1, r16, 1
002a00  63023fce  loadli.w r4,  -6376(r30)
002a04  8b101110  add.s r1, r2, r1
002a08  6341afcd  loadli.w r2,  -6444(r30)
002a0c  ebb10000  load.hu r3, 0(r1)
002a10  0b914650  fmac.s r2, r13, r4
002a14  3b303100  bneq r2, r3, 12
002a18  e70b0fce  storeli.w zero, -6216(r30)
002a1c  5b020000  j 16
002a20  9f110000  addli r3, zero, 1
002a24  73902000  store.h r2, 0(r1)
002a28  e70b3fce  storeli.w r3, -6216(r30)
002a2c  e3008fcf  loadli.w r1,  -6208(r30)
002a30  0b9eb018  sub.s r28, r1, r11
002a34  3bb01700  bneq r15, r1, 12
002a38  9f070e00  addli r15, r28, 0
002a3c  5bc70100  j 3640
002a40  63040fce  loadli.w r8,  -6400(r30)
002a44  0b919620  mul.s r2, r13, r9
002a48  9f840300  addli r9, r7, 0
002a4c  e3032fce  loadli.w r7,  -6384(r30)
002a50  13821601  seteq r4, r13, r17
002a54  e3027fcf  loadli.w r5,  -6216(r30)
002a58  674e6fcc  storeli.w r6, -6428(r30)
002a5c  e70edfcc  storeli.w r13, -6424(r30)
002a60  9f083fcf  addli r17, r30, -6248
002a64  1f094fcf  addli r18, r30, -6240
002a68  670f5fcd  storeli.w r21, -6416(r30)
002a6c  9f0a4fcd  addli r21, r30, -6496
002a70  e74fbfcf  storeli.w r27, -6148(r30)
002a74  e74e6fcd  storeli.w r22, -6420(r30)
002a78  6749bfce  storeli.w r11, -6252(r30)
002a7c  67090fcf  storeli.w r16, -6256(r30)
002a80  e748cfcf  storeli.w r28, -6260(r30)
002a84  e7082fce  storeli.w r2, -6264(r30)
002a88  63416fcd  loadli.w r2,  -6476(r30)
002a8c  8b108b38  mod.s r1, r22, r8
002a90  8b916340  min.s r3, r7, r6
002a94  63037fcd  loadli.w r6,  -6472(r30)
002a98  0b912610  add.s r2, r13, r2
002a9c  8b910148  max.s r3, r3, zero
002aa0  0b937650  fmac.s r6, r13, r7
002aa4  67422fce  storeli.w r2, -6364(r30)
002aa8  63016fcd  loadli.w r2,  -6480(r30)
002aac  67033fd0  storeli.w r3, -6096(r30)
002ab0  e301afcd  loadli.w r3,  -6448(r30)
002ab4  8b908010  add.s r1, r1, r8
002ab8  17812200  and r2, r5, r2
002abc  8b927620  mul.s r5, r13, r7
002ac0  97814100  and r3, r3, r4
002ac4  0b948038  mod.s r8, r1, r8
002ac8  e3008fcd  loadli.w r1,  -6464(r30)
002acc  67483fce  storeli.w r3, -6268(r30)
002ad0  e3011fce  loadli.w r3,  -6392(r30)
002ad4  8b905018  sub.s r1, r1, r5
002ad8  8b901340  min.s r1, r7, r1
002adc  9f830400  addli r7, r9, 0
002ae0  e70d8fce  storeli.w r8, -6184(r30)
002ae4  8b960048  max.s r13, r1, zero
002ae8  67051fd0  storeli.w r1, -6064(r30)
002aec  9b301400  slli r1, r8, 1
002af0  6b540900  load.d r[8:9], 0(r18)
002af4  8b901110  add.s r1, r3, r1
002af8  b311332c  sext_int2long r[3:4], r6
002afc  ebd20800  load.d r[5:6], 0(r17)
002b00  9bbc7600  slli r25, r13, 7
002b04  e748dfd0  storeli.w r13, -6004(r30)
002b08  67081fce  storeli.w r1, -6272(r30)
002b0c  e3005fcd  loadli.w r1,  -6488(r30)
002b10  8bb25120  mul.sl r[5:6], r[3:4], r[5:6]
002b14  8bb18120  mul.sl r[3:4], r[3:4], r[8:9]
002b18  6bd40a00  load.d r[8:9], 0(r21)
002b1c  8b90d010  add.s r1, r1, r13
002b20  e7471fce  storeli.w r1, -6276(r30)
002b24  9f200000  addli r1, zero, 2
002b28  97b21202  sll.d r[5:6], r[5:6], r1
002b2c  97b11102  sll.d r[3:4], r[3:4], r1
002b30  9bb05600  slli r1, r13, 5
002b34  8b225410  add.ul r[5:6], r[8:9], r[5:6]
002b38  1f04efce  addli r8, r30, -6288
002b3c  9f049fcd  addli r9, r30, -6456
002b40  67041fd0  storeli.w r1, -6080(r30)
002b44  73305400  store.d r[5:6], 0(r8)
002b48  ebd20400  load.d r[5:6], 0(r9)
002b4c  8ba13210  add.ul r[3:4], r[5:6], r[3:4]
002b50  9f02afd1  addli r5, r30, -5936
002b54  73b03200  store.d r[3:4], 0(r5)
002b58  e3011fd0  loadli.w r3,  -6136(r30)
002b5c  63425fcd  loadli.w r4,  -6484(r30)
002b60  8b90f120  mul.s r1, r3, r15
002b64  8b101218  sub.s r1, r4, r1
002b68  67401fd0  storeli.w r1, -6140(r30)
002b6c  8b90b120  mul.s r1, r3, r11
002b70  e7461fce  storeli.w r1, -6292(r30)
002b74  9f100000  addli r1, zero, 1
002b78  db060000  j 52
002b7c  e3407fcf  loadli.w r1,  -6212(r30)
002b80  e341dfce  loadli.w r3,  -6292(r30)
002b84  1f010000  addli r2, zero, 0
002b88  8b97b710  add.s r15, r15, r11
002b8c  e74f2fce  storeli.w r2, -6148(r30)
002b90  0b1a1a10  add.s r20, r20, r1
002b94  e3400fd0  loadli.w r1,  -6140(r30)
002b98  8b903018  sub.s r1, r1, r3
002b9c  e3018fcf  loadli.w r3,  -6208(r30)
002ba0  67401fd0  storeli.w r1, -6140(r30)
002ba4  9f000100  addli r1, r2, 0
002ba8  b7923706  beq r15, r3, 3236
002bac  63421fd0  loadli.w r4,  -6132(r30)
002bb0  1f090000  addli r18, zero, 0
002bb4  8b114a38  mod.s r3, r20, r4
002bb8  8b914110  add.s r3, r3, r4
002bbc  8b914138  mod.s r3, r3, r4
002bc0  bfe00100  blt.s r3, zero, 56
002bc4  63022fd0  loadli.w r4,  -6128(r30)
002bc8  63040fcf  loadli.w r8,  -6272(r30)
002bcc  cb703200  ble.s r4, r3, 60
002bd0  9bb11100  slli r3, r3, 1
002bd4  1f024fe2  addli r4, r30, -3808
002bd8  63033fce  loadli.w r6,  -6376(r30)
002bdc  8b113210  add.s r3, r4, r3
002be0  63422fce  loadli.w r4,  -6380(r30)
002be4  ebb20100  load.hu r5, 0(r3)
002be8  0b926750  fmac.s r4, r15, r6
002bec  3b505200  bneq r4, r5, 20
002bf0  1f090000  addli r18, zero, 0
002bf4  db020000  j 20
002bf8  63040fcf  loadli.w r8,  -6272(r30)
002bfc  db010000  j 12
002c00  1f190000  addli r18, zero, 1
002c04  73904100  store.h r4, 0(r3)
002c08  e3418fce  loadli.w r3,  -6332(r30)
002c0c  63026fce  loadli.w r4,  -6352(r30)
002c10  93814102  setneq r3, r3, r4
002c14  1382c703  setneq r4, r15, r28
002c18  97914100  or r3, r3, r4
002c1c  bbb00100  bneq r3, zero, 44
002c20  6302bfcf  loadli.w r4,  -6184(r30)
002c24  bf100200  blt.s r4, zero, 36
002c28  63020fd0  loadli.w r4,  -6144(r30)
002c2c  e302bfcf  loadli.w r5,  -6184(r30)
002c30  4b605200  ble.s r4, r5, 24
002c34  6b320400  load.hu r4, 0(r8)
002c38  e3424fce  loadli.w r5,  -6364(r30)
002c3c  37a04200  beq r5, r4, 8
002c40  63424fce  loadli.w r4,  -6364(r30)
002c44  73104400  store.h r4, 0(r8)
002c48  6342bfcf  loadli.w r4,  -6180(r30)
002c4c  1b720200  setlti r4, r4, 0
002c50  97914100  or r3, r3, r4
002c54  bb900100  bneq r3, zero, 36
002c58  e3419fcf  loadli.w r3,  -6196(r30)
002c5c  6342bfcf  loadli.w r4,  -6180(r30)
002c60  4be04100  ble.s r3, r4, 24
002c64  eb310700  load.hu r3, 0(r14)
002c68  63029fcf  loadli.w r4,  -6200(r30)
002c6c  37203200  beq r4, r3, 8
002c70  e3019fcf  loadli.w r3,  -6200(r30)
002c74  73103700  store.h r3, 0(r14)
002c78  e301dfce  loadli.w r3,  -6296(r30)
002c7c  63021fcf  loadli.w r4,  -6264(r30)
002c80  93013200  seteq r3, r4, r3
002c84  97801100  and r1, r3, r1
002c88  e341cfce  loadli.w r3,  -6300(r30)
002c8c  97801100  and r1, r3, r1
002c90  3bb07001  bneq r1, r23, 12
002c94  9f300000  addli r1, zero, 3
002c98  7d900000  xwait r1, 0
002c9c  e301cfd1  loadli.w r3,  -5920(r30)
002ca0  e3009fce  loadli.w r1,  -6328(r30)
002ca4  9f880300  addli r17, r7, 0
002ca8  13821104  setlt.u r4, r3, r1
002cac  9f00cfd1  addli r1, r30, -5920
002cb0  bb100200  bneq r4, zero, 36
002cb4  e3413fe2  loadli.w r3,  -3812(r30)
002cb8  e3408fcf  loadli.w r1,  -6204(r30)
002cbc  13823004  setlt.u r4, r1, r3
002cc0  37200200  beq r4, zero, 8
002cc4  e3013fe2  loadli.w r3,  -3816(r30)
002cc8  9f003fe2  addli r1, r30, -3816
002ccc  3b200200  bneq r4, zero, 8
002cd0  9f403fe2  addli r1, r30, -3812
002cd4  e342afcf  loadli.w r5,  -6188(r30)
002cd8  e343bfce  loadli.w r7,  -6308(r30)
002cdc  63031fd0  loadli.w r6,  -6136(r30)
002ce0  e3448fd0  loadli.w r9,  -6076(r30)
002ce4  e3455fd1  loadli.w r11,  -5972(r30)
002ce8  1f0eefce  addli r28, r30, -6288
002cec  e70effce  storeli.w r15, -6168(r30)
002cf0  e3465fcf  loadli.w r13,  -6228(r30)
002cf4  674f4fcf  storeli.w r20, -6156(r30)
002cf8  0b975330  div.s r14, r7, r5
002cfc  e3436fce  loadli.w r7,  -6348(r30)
002d00  0b926720  mul.s r4, r15, r6
002d04  e3027fce  loadli.w r5,  -6344(r30)
002d08  0b924318  sub.s r4, r7, r4
002d0c  9f930100  addli r7, r3, 1
002d10  8b926750  fmac.s r5, r15, r6
002d14  8b114340  min.s r3, r6, r4
002d18  67807000  storeli.w r7, 0(r1)
002d1c  9f000900  addli r1, r18, 0
002d20  9f830800  addli r7, r17, 0
002d24  0b930148  max.s r6, r3, zero
002d28  b391322a  sext_int2long r[3:4], r5
002d2c  e342ffce  loadli.w r5,  -6276(r30)
002d30  e7096fd0  storeli.w r6, -5992(r30)
002d34  1f73f3ff  addli r6, r6, -1
002d38  8b928231  div.s r5, r5, r24
002d3c  0b14b310  add.s r8, r6, r11
002d40  67435fd0  storeli.w r5, -6092(r30)
002d44  8b129710  add.s r5, r14, r9
002d48  9ff2f2ff  addli r5, r5, -1
002d4c  0b9b9230  div.s r22, r5, r9
002d50  8b12b430  div.s r5, r8, r11
002d54  9f250000  addli r11, zero, 2
002d58  9f045fce  addli r9, r30, -6360
002d5c  6bda0400  load.d r[20:21], 0(r9)
002d60  67095fd0  storeli.w r5, -6000(r30)
002d64  8b12a311  add.s r5, r6, r26
002d68  63436fcf  loadli.w r6,  -6220(r30)
002d6c  8b9da231  div.s r27, r5, r26
002d70  0b146838  mod.s r8, r16, r6
002d74  eb520e00  load.d r[5:6], 0(r28)
002d78  97b7b102  sll.d r[15:16], r[3:4], r11
002d7c  8bb14121  mul.sl r[3:4], r[3:4], r[20:21]
002d80  1b0e1100  andi r28, r2, 1
002d84  97b1b102  sll.d r[3:4], r[3:4], r11
002d88  8ba2f210  add.ul r[5:6], r[5:6], r[15:16]
002d8c  9f073fd0  addli r15, r30, -6120
002d90  1f08afce  addli r16, r30, -6320
002d94  73b05700  store.d r[5:6], 0(r15)
002d98  e3026fcf  loadli.w r5,  -6224(r30)
002d9c  63439fce  loadli.w r6,  -6324(r30)
002da0  8b165450  fmac.s r13, r8, r5
002da4  e302ffcf  loadli.w r5,  -6152(r30)
002da8  93025306  setle.u r5, r6, r5
002dac  670e5fce  storeli.w r5, -6176(r30)
002db0  eb520800  load.d r[5:6], 0(r16)
002db4  8ba13210  add.ul r[3:4], r[5:6], r[3:4]
002db8  1f035fd0  addli r6, r30, -6104
002dbc  73303300  store.d r[3:4], 0(r6)
002dc0  1f024fcf  addli r4, r30, -6240
002dc4  6b510200  load.d r[2:3], 0(r4)
002dc8  1734b102  sll.d r[8:9], r[2:3], r11
002dcc  1731ba02  sll.d r[2:3], r[20:21], r11
002dd0  1f0a3fcf  addli r20, r30, -6248
002dd4  9f8a0d00  addli r21, r27, 0
002dd8  6b520a00  load.d r[4:5], 0(r20)
002ddc  67465fd1  storeli.w r21, -6044(r30)
002de0  9737b202  sll.d r[15:16], r[4:5], r11
002de4  63422fd0  loadli.w r4,  -6124(r30)
002de8  9f020b00  addli r5, r22, 0
002dec  e7035fd0  storeli.w r5, -6088(r30)
002df0  b7007201  beq r4, r23, 32
002df4  e3402fd0  loadli.w r1,  -6124(r30)
002df8  1f320000  addli r4, zero, 3
002dfc  37824002  beq r1, r4, 1152
002e00  1f220000  addli r4, zero, 2
002e04  3bb24002  bneq r1, r4, 1164
002e08  e3004fce  loadli.w r1,  -6368(r30)
002e0c  97001900  and r1, r18, r1
002e10  37820002  beq r1, zero, 1152
002e14  e3009fcf  loadli.w r1,  -6200(r30)
002e18  63423fce  loadli.w r4,  -6372(r30)
002e1c  bba54000  bneq r1, r4, 360
002e20  e3406fd0  loadli.w r1,  -6092(r30)
002e24  bf857001  blt.s r1, r23, 352
002e28  e3026fd0  loadli.w r5,  -6096(r30)
002e2c  1f090000  addli r18, zero, 0
002e30  db030000  j 28
002e34  630c9fd0  loadli.w r24,  -6072(r30)
002e38  e3427fd0  loadli.w r5,  -6084(r30)
002e3c  e3406fd0  loadli.w r1,  -6092(r30)
002e40  1f190900  addli r18, r18, 1
002e44  8b928219  sub.s r5, r5, r24
002e48  b7741900  beq r18, r1, 316
002e4c  e3002fd1  loadli.w r1,  -6000(r30)
002e50  e7435fd0  storeli.w r5, -6084(r30)
002e54  bf8f70ff  blt.s r1, r23, -32
002e58  6302efd0  loadli.w r4,  -6032(r30)
002e5c  8b108921  mul.s r1, r18, r24
002e60  63431fd1  loadli.w r6,  -6004(r30)
002e64  8b155c40  min.s r11, r24, r5
002e68  9f080000  addli r17, zero, 0
002e6c  0b924020  mul.s r4, r1, r4
002e70  8b101318  sub.s r1, r6, r1
002e74  1f230000  addli r6, zero, 2
002e78  33124228  sext_int2long r[4:5], r4
002e7c  8b101c40  min.s r1, r24, r1
002e80  17326202  sll.d r[4:5], r[4:5], r6
002e84  1f033fd0  addli r6, r30, -6120
002e88  6b5a0300  load.d r[20:21], 0(r6)
002e8c  0b2d4a10  add.ul r[26:27], r[20:21], r[4:5]
002e90  e34acfd0  loadli.w r21,  -6044(r30)
002e94  db020000  j 20
002e98  9f030a00  addli r7, r20, 0
002e9c  63022fd1  loadli.w r4,  -6000(r30)
002ea0  9f980800  addli r17, r17, 1
002ea4  37ce48fe  beq r17, r4, -112
002ea8  1f8a0300  addli r20, r7, 0
002eac  1b82f30f  andi r4, r7, 255
002eb0  37300200  beq r4, zero, 12
002eb4  1f221000  addli r4, zero, 10
002eb8  7d100200  xwait r4, 0
002ebc  bfa27001  blt.s r1, r23, 168
002ec0  63435fd1  loadli.w r6,  -5972(r30)
002ec4  e3023fd1  loadli.w r5,  -5992(r30)
002ec8  0b926820  mul.s r4, r17, r6
002ecc  8b924218  sub.s r5, r5, r4
002ed0  8b135340  min.s r7, r6, r5
002ed4  3fc27301  blt.s r7, r23, 144
002ed8  e3428fd1  loadli.w r5,  -5948(r30)
002edc  1f430000  addli r6, zero, 4
002ee0  630b7fd1  loadli.w r22,  -5960(r30)
002ee4  1d000300  lock zero, r6
002ee8  1f230000  addli r6, zero, 2
002eec  0b1c5538  mod.s r24, r10, r5
002ef0  33124228  sext_int2long r[4:5], r4
002ef4  17326202  sll.d r[4:5], r[4:5], r6
002ef8  6303dfd0  loadli.w r6,  -6040(r30)
002efc  15006000  dma_cfg zero, zero, r6, 0
002f00  63038fd1  loadli.w r6,  -5952(r30)
002f04  950b0002  dma_cfg r23, zero, zero, 1
002f08  0b224d10  add.ul r[4:5], r[26:27], r[4:5]
002f0c  0b1b6c50  fmac.s r22, r24, r6
002f10  6303efd0  loadli.w r6,  -6032(r30)
002f14  1bbc2300  slli r24, r7, 2
002f18  3f707301  blt.s r6, r23, 28
002f1c  15800204  dma_cfg zero, r5, zero, 2
002f20  150b8207  dma_cfg r22, r4, r24, 3
002f24  6342bfd0  loadli.w r4,  -6052(r30)
002f28  150c1208  dma_cfg r24, r4, r1, 4
002f2c  35000000  dma_run zero
002f30  db050000  j 44
002f34  63439fd0  loadli.w r6,  -6068(r30)
002f38  150c7309  dma_cfg r24, r6, r23, 4
002f3c  9f830500  addli r7, r11, 0
002f40  15800204  dma_cfg zero, r5, zero, 2
002f44  150b8207  dma_cfg r22, r4, r24, 3
002f48  0b22f210  add.ul r[4:5], r[4:5], r[15:16]
002f4c  9ff3f3ff  addli r7, r7, -1
002f50  0b1b8b11  add.s r22, r22, r24
002f54  35000000  dma_run zero
002f58  bbaf03fe  bneq r7, zero, -24
002f5c  1f420000  addli r4, zero, 4
002f60  1d100200  unlock r4
002f64  1f321000  addli r4, zero, 11
002f68  7d000200  xsignal r4, 0
002f6c  1f150500  addli r10, r10, 1
002f70  63026fd1  loadli.w r4,  -5968(r30)
002f74  bb1c45fe  bneq r10, r4, -220
002f78  9f130000  addli r7, zero, 1
002f7c  1f050000  addli r10, zero, 0
002f80  dbe3ffff  j -228
002f84  e3007fcf  loadli.w r1,  -6216(r30)
002f88  6302cfcf  loadli.w r4,  -6176(r30)
002f8c  9ba01000  xori r1, r1, 1
002f90  97904000  or r1, r1, r4
002f94  3bb30002  bneq r1, zero, 1228
002f98  e300ffcf  loadli.w r1,  -6152(r30)
002f9c  634d3fd1  loadli.w r26,  -5988(r30)
002fa0  6342ffcf  loadli.w r4,  -6148(r30)
002fa4  63037fd0  loadli.w r6,  -6088(r30)
002fa8  9f900000  addli r1, r1, 1
002fac  e70f1fce  storeli.w r1, -6152(r30)
002fb0  9f102000  addli r1, zero, 17
002fb4  3f407201  blt.s r4, r23, 16
002fb8  7d900000  xwait r1, 0
002fbc  1f72f2ff  addli r4, r4, -1
002fc0  bb6f02fe  bneq r4, zero, -8
002fc4  bf4a7301  blt.s r6, r23, 688
002fc8  63021fd0  loadli.w r4,  -6136(r30)
002fcc  e3420fd0  loadli.w r5,  -6140(r30)
002fd0  9f000000  addli r1, zero, 0
002fd4  1f0b0000  addli r22, zero, 0
002fd8  0b125240  min.s r4, r4, r5
002fdc  9f72f3ff  addli r5, r6, -1
002fe0  0b120248  max.s r4, r4, zero
002fe4  67435fd0  storeli.w r5, -6092(r30)
002fe8  e7014fd0  storeli.w r4, -6120(r30)
002fec  6302bfd0  loadli.w r4,  -6056(r30)
002ff0  1f72f2ff  addli r4, r4, -1
002ff4  67424fd0  storeli.w r4, -6108(r30)
002ff8  db020000  j 20
002ffc  9f800500  addli r1, r11, 0
003000  63027fd0  loadli.w r4,  -6088(r30)
003004  1f1b0b00  addli r22, r22, 1
003008  b7394b00  beq r22, r4, 620
00300c  e3428fd0  loadli.w r5,  -6076(r30)
003010  67096fd1  storeli.w r22, -6000(r30)
003014  0b135b20  mul.s r6, r22, r5
003018  0b126718  sub.s r4, r14, r6
00301c  e7436fd0  storeli.w r6, -6084(r30)
003020  0b994240  min.s r18, r5, r4
003024  3ff47a01  blt.s r21, r23, 284
003028  3312432c  sext_int2long r[4:5], r6
00302c  1f230000  addli r6, zero, 2
003030  e3083fd0  loadli.w r17,  -6120(r30)
003034  9f050000  addli r11, zero, 0
003038  1b3b2900  slli r22, r18, 2
00303c  17326202  sll.d r[4:5], r[4:5], r6
003040  1f035fd0  addli r6, r30, -6104
003044  eb570300  load.d r[15:16], 0(r6)
003048  8ba74710  add.ul r[15:16], r[15:16], r[4:5]
00304c  5b020000  j 16
003050  9f950500  addli r11, r11, 1
003054  8b98a819  sub.s r17, r17, r26
003058  b7a35501  beq r11, r21, 232
00305c  1b82f30f  andi r4, r7, 255
003060  37300200  beq r4, zero, 12
003064  1f221000  addli r4, zero, 10
003068  7d100200  xwait r4, 0
00306c  bf527901  blt.s r18, r23, 180
003070  e3023fd1  loadli.w r5,  -5992(r30)
003074  0b92a521  mul.s r4, r11, r26
003078  8b924218  sub.s r5, r5, r4
00307c  0b1c5d40  min.s r24, r26, r5
003080  bf027c01  blt.s r24, r23, 160
003084  e30dffd0  loadli.w r27,  -6024(r30)
003088  e3428fd1  loadli.w r5,  -5948(r30)
00308c  1f430000  addli r6, zero, 4
003090  630d7fd1  loadli.w r26,  -5960(r30)
003094  1f8a0300  addli r20, r7, 0
003098  1d000300  lock zero, r6
00309c  0b12b221  mul.s r4, r4, r27
0030a0  8b125538  mod.s r5, r10, r5
0030a4  33136228  sext_int2long r[6:7], r4
0030a8  63420fd1  loadli.w r4,  -6012(r30)
0030ac  15004000  dma_cfg zero, zero, r4, 0
0030b0  1f220000  addli r4, zero, 2
0030b4  17334302  sll.d r[6:7], r[6:7], r4
0030b8  63028fd1  loadli.w r4,  -5952(r30)
0030bc  950b0002  dma_cfg r23, zero, zero, 1
0030c0  0b9d4250  fmac.s r26, r5, r4
0030c4  0ba26710  add.ul r[4:5], r[15:16], r[6:7]
0030c8  3ff07d01  blt.s r27, r23, 28
0030cc  15800204  dma_cfg zero, r5, zero, 2
0030d0  150d6207  dma_cfg r26, r4, r22, 3
0030d4  6302cfd0  loadli.w r4,  -6048(r30)
0030d8  150b8209  dma_cfg r22, r4, r24, 4
0030dc  35000000  dma_run zero
0030e0  5b060000  j 48
0030e4  6343afd0  loadli.w r6,  -6060(r30)
0030e8  150b7309  dma_cfg r22, r6, r23, 4
0030ec  63433fd1  loadli.w r6,  -5988(r30)
0030f0  8b131341  min.s r7, r6, r17
0030f4  15800204  dma_cfg zero, r5, zero, 2
0030f8  150d6207  dma_cfg r26, r4, r22, 3
0030fc  0b222210  add.ul r[4:5], r[4:5], r[2:3]
003100  9ff3f3ff  addli r7, r7, -1
003104  0b1d6d11  add.s r26, r26, r22
003108  35000000  dma_run zero
00310c  bbaf03fe  bneq r7, zero, -24
003110  1f420000  addli r4, zero, 4
003114  1d100200  unlock r4
003118  634d3fd1  loadli.w r26,  -5988(r30)
00311c  9f030a00  addli r7, r20, 0
003120  1f321000  addli r4, zero, 11
003124  7d000200  xsignal r4, 0
003128  1f150500  addli r10, r10, 1
00312c  63026fd1  loadli.w r4,  -5968(r30)
003130  bb0c45fe  bneq r10, r4, -224
003134  9f130000  addli r7, zero, 1
003138  1f050000  addli r10, zero, 0
00313c  dbe2ffff  j -236
003140  63424fd0  loadli.w r4,  -6108(r30)
003144  e3426fd0  loadli.w r5,  -6092(r30)
003148  630b2fd1  loadli.w r22,  -6000(r30)
00314c  37205b00  beq r22, r5, 8
003150  1f020000  addli r4, zero, 0
003154  e3427fd0  loadli.w r5,  -6084(r30)
003158  0b125210  add.s r4, r4, r5
00315c  e302bfd0  loadli.w r5,  -6056(r30)
003160  0b122211  add.s r4, r4, r18
003164  8b155230  div.s r11, r4, r5
003168  4bea15fe  ble.s r11, r1, -360
00316c  db090000  j 76
003170  15800204  dma_cfg zero, r5, zero, 2
003174  9507c206  dma_cfg r15, r4, r12, 3
003178  63024fd1  loadli.w r4,  -5984(r30)
00317c  e3421fd1  loadli.w r5,  -6004(r30)
003180  1506520a  dma_cfg r12, r4, r5, 5
003184  950c0609  dma_cfg r25, r12, r16, 4
003188  15007010  dma_cfg zero, zero, r7, 8
00318c  35000000  dma_run zero
003190  e34acfd0  loadli.w r21,  -6044(r30)
003194  1500700b  dma_cfg zero, zero, r23, 5
003198  15000010  dma_cfg zero, zero, zero, 8
00319c  9f030a00  addli r7, r20, 0
0031a0  1f420000  addli r4, zero, 4
0031a4  1d100200  unlock r4
0031a8  1f222000  addli r4, zero, 18
0031ac  7d000200  xsignal r4, 0
0031b0  9f900000  addli r1, r1, 1
0031b4  37a9b0fe  beq r1, r11, -440
0031b8  b74f0efe  beq r28, zero, -16
0031bc  6302afd0  loadli.w r4,  -6064(r30)
0031c0  bf2f72ff  blt.s r4, r23, -24
0031c4  6303bfd0  loadli.w r6,  -6056(r30)
0031c8  8b926020  mul.s r5, r1, r6
0031cc  0b125718  sub.s r4, r14, r5
0031d0  0b124340  min.s r4, r6, r4
0031d4  3f5f72ff  blt.s r4, r23, -44
0031d8  9f0a4000  addli r21, zero, 32
0031dc  1f8a0300  addli r20, r7, 0
0031e0  b397f22a  sext_int2long r[15:16], r5
0031e4  0b935231  div.s r6, r5, r21
0031e8  9b335300  slli r7, r6, 5
0031ec  8b937218  sub.s r7, r5, r7
0031f0  e3028fd0  loadli.w r5,  -6080(r30)
0031f4  8b936250  fmac.s r7, r5, r6
0031f8  9f723200  addli r5, r4, 31
0031fc  1b332200  slli r6, r4, 2
003200  1f420000  addli r4, zero, 4
003204  1d000200  lock zero, r4
003208  63429fd1  loadli.w r4,  -5940(r30)
00320c  15004000  dma_cfg zero, zero, r4, 0
003210  950b0002  dma_cfg r23, zero, zero, 1
003214  1f220000  addli r4, zero, 2
003218  9bb32300  slli r7, r7, 2
00321c  97b84702  sll.d r[17:18], r[15:16], r4
003220  0b985231  div.s r16, r5, r21
003224  9f0aafd1  addli r21, r30, -5936
003228  8b97d310  add.s r15, r7, r13
00322c  9b03c307  andi r7, r6, 124
003230  6343bfd1  loadli.w r6,  -5924(r30)
003234  6bd20a00  load.d r[4:5], 0(r21)
003238  0b221211  add.ul r[4:5], r[4:5], r[17:18]
00323c  3f207301  blt.s r6, r23, 8
003240  5be6ffff  j -208
003244  950c0609  dma_cfg r25, r12, r16, 4
003248  15007010  dma_cfg zero, zero, r7, 8
00324c  e3036fd0  loadli.w r7,  -6096(r30)
003250  e34acfd0  loadli.w r21,  -6044(r30)
003254  15800204  dma_cfg zero, r5, zero, 2
003258  9507c206  dma_cfg r15, r4, r12, 3
00325c  9f870701  addli r15, r15, 128
003260  9ff3f3ff  addli r7, r7, -1
003264  0b228210  add.ul r[4:5], r[4:5], r[8:9]
003268  35000000  dma_run zero
00326c  bbaf03fe  bneq r7, zero, -24
003270  dbe4ffff  j -220
003274  630c9fd0  loadli.w r24,  -6072(r30)
003278  5bb10000  j 1416
00327c  e3009fcf  loadli.w r1,  -6200(r30)
003280  63423fce  loadli.w r4,  -6372(r30)
003284  93804000  seteq r1, r1, r4
003288  97802001  and r1, r1, r18
00328c  3bae00fc  bneq r1, zero, -1144
003290  93105004  setlt.s r1, zero, r5
003294  97001900  and r1, r18, r1
003298  bbc57001  bneq r1, r23, 368
00329c  e3001fd0  loadli.w r1,  -6136(r30)
0032a0  63420fd0  loadli.w r4,  -6140(r30)
0032a4  8b904040  min.s r1, r1, r4
0032a8  1f020000  addli r4, zero, 0
0032ac  8b900048  max.s r1, r1, zero
0032b0  67421fd0  storeli.w r1, -6108(r30)
0032b4  5b030000  j 24
0032b8  63427fd0  loadli.w r4,  -6084(r30)
0032bc  630c9fd0  loadli.w r24,  -6072(r30)
0032c0  e3007fd0  loadli.w r1,  -6088(r30)
0032c4  1f120200  addli r4, r4, 1
0032c8  37051200  beq r4, r1, 320
0032cc  e7434fd0  storeli.w r4, -6084(r30)
0032d0  bfaf7aff  blt.s r21, r23, -24
0032d4  9f880300  addli r17, r7, 0
0032d8  e3438fd0  loadli.w r7,  -6076(r30)
0032dc  9f050000  addli r11, zero, 0
0032e0  8b107220  mul.s r1, r4, r7
0032e4  0b121718  sub.s r4, r14, r1
0032e8  b392502a  sext_int2long r[5:6], r1
0032ec  9f200000  addli r1, zero, 2
0032f0  0b9b4340  min.s r22, r7, r4
0032f4  17b21202  sll.d r[4:5], r[5:6], r1
0032f8  1f035fd0  addli r6, r30, -6104
0032fc  9f830800  addli r7, r17, 0
003300  e3404fd0  loadli.w r1,  -6108(r30)
003304  eb580300  load.d r[17:18], 0(r6)
003308  9b3d2b00  slli r27, r22, 2
00330c  8ba84810  add.ul r[17:18], r[17:18], r[4:5]
003310  5b020000  j 16
003314  9f950500  addli r11, r11, 1
003318  8b90a019  sub.s r1, r1, r26
00331c  37fe55ff  beq r11, r21, -100
003320  1b82f30f  andi r4, r7, 255
003324  37300200  beq r4, zero, 12
003328  1f221000  addli r4, zero, 10
00332c  7d100200  xwait r4, 0
003330  bf627b01  blt.s r22, r23, 184
003334  e3023fd1  loadli.w r5,  -5992(r30)
003338  0b92a521  mul.s r4, r11, r26
00333c  8b924218  sub.s r5, r5, r4
003340  0b1c5d40  min.s r24, r26, r5
003344  bf127c01  blt.s r24, r23, 164
003348  e30affd0  loadli.w r21,  -6024(r30)
00334c  e3428fd1  loadli.w r5,  -5948(r30)
003350  1f430000  addli r6, zero, 4
003354  630d7fd1  loadli.w r26,  -5960(r30)
003358  1f8a0300  addli r20, r7, 0
00335c  1d000300  lock zero, r6
003360  0b125221  mul.s r4, r4, r21
003364  8b125538  mod.s r5, r10, r5
003368  33136228  sext_int2long r[6:7], r4
00336c  63420fd1  loadli.w r4,  -6012(r30)
003370  15004000  dma_cfg zero, zero, r4, 0
003374  1f220000  addli r4, zero, 2
003378  17334302  sll.d r[6:7], r[6:7], r4
00337c  63028fd1  loadli.w r4,  -5952(r30)
003380  950b0002  dma_cfg r23, zero, zero, 1
003384  0b9d4250  fmac.s r26, r5, r4
003388  0ba26810  add.ul r[4:5], r[17:18], r[6:7]
00338c  3ff07a01  blt.s r21, r23, 28
003390  15800204  dma_cfg zero, r5, zero, 2
003394  150db207  dma_cfg r26, r4, r27, 3
003398  6302cfd0  loadli.w r4,  -6048(r30)
00339c  950d8209  dma_cfg r27, r4, r24, 4
0033a0  35000000  dma_run zero
0033a4  5b060000  j 48
0033a8  6343afd0  loadli.w r6,  -6060(r30)
0033ac  950d7309  dma_cfg r27, r6, r23, 4
0033b0  63433fd1  loadli.w r6,  -5988(r30)
0033b4  8b131340  min.s r7, r6, r1
0033b8  15800204  dma_cfg zero, r5, zero, 2
0033bc  150db207  dma_cfg r26, r4, r27, 3
0033c0  0b222210  add.ul r[4:5], r[4:5], r[2:3]
0033c4  9ff3f3ff  addli r7, r7, -1
0033c8  0b1dbd11  add.s r26, r26, r27
0033cc  35000000  dma_run zero
0033d0  bbaf03fe  bneq r7, zero, -24
0033d4  1f420000  addli r4, zero, 4
0033d8  1d100200  unlock r4
0033dc  634d3fd1  loadli.w r26,  -5988(r30)
0033e0  e34acfd0  loadli.w r21,  -6044(r30)
0033e4  9f030a00  addli r7, r20, 0
0033e8  1f321000  addli r4, zero, 11
0033ec  7d000200  xsignal r4, 0
0033f0  1f150500  addli r10, r10, 1
0033f4  63026fd1  loadli.w r4,  -5968(r30)
0033f8  3b7c45fe  bneq r10, r4, -228
0033fc  9f130000  addli r7, zero, 1
003400  1f050000  addli r10, zero, 0
003404  5be2ffff  j -240
003408  e3007fcf  loadli.w r1,  -6216(r30)
00340c  6301cfcf  loadli.w r2,  -6176(r30)
003410  9ba01000  xori r1, r1, 1
003414  97902000  or r1, r1, r2
003418  bb900000  bneq r1, zero, 36
00341c  e300ffcf  loadli.w r1,  -6152(r30)
003420  6301afcf  loadli.w r2,  -6192(r30)
003424  e341ffcf  loadli.w r3,  -6148(r30)
003428  9f900000  addli r1, r1, 1
00342c  e70f1fce  storeli.w r1, -6152(r30)
003430  9f102000  addli r1, zero, 17
003434  bfc27101  blt.s r3, r23, 176
003438  5b140000  j 160
00343c  6301afcf  loadli.w r2,  -6192(r30)
003440  e341ffcf  loadli.w r3,  -6148(r30)
003444  37210e00  beq r28, zero, 72
003448  8b103110  add.s r1, r2, r3
00344c  1f010000  addli r2, zero, 0
003450  9f910000  addli r3, r1, 1
003454  9f102000  addli r1, zero, 17
003458  3fb27101  blt.s r3, r23, 140
00345c  db0f0000  j 124
003460  634d3fd1  loadli.w r26,  -5988(r30)
003464  63037fd0  loadli.w r6,  -6088(r30)
003468  37010e00  beq r28, zero, 64
00346c  e300afcf  loadli.w r1,  -6192(r30)
003470  6342ffcf  loadli.w r4,  -6148(r30)
003474  670d0fce  storeli.w zero, -6192(r30)
003478  8b904010  add.s r1, r1, r4
00347c  1f920000  addli r4, r1, 1
003480  9f102000  addli r1, zero, 17
003484  3f0d72fd  blt.s r4, r23, -1216
003488  5b66ffff  j -1232
00348c  e3408fcf  loadli.w r1,  -6204(r30)
003490  93001106  setle.u r1, r2, r1
003494  bbe00000  bneq r1, zero, 56
003498  9f910100  addli r3, r3, 1
00349c  9f102000  addli r1, zero, 17
0034a0  3f917101  blt.s r3, r23, 68
0034a4  db060000  j 52
0034a8  e3408fcf  loadli.w r1,  -6204(r30)
0034ac  6302afcf  loadli.w r4,  -6192(r30)
0034b0  93001206  setle.u r1, r4, r1
0034b4  3b8e0000  bneq r1, zero, 896
0034b8  6342ffcf  loadli.w r4,  -6148(r30)
0034bc  1f120200  addli r4, r4, 1
0034c0  9f102000  addli r1, zero, 17
0034c4  3f0c72fd  blt.s r4, r23, -1280
0034c8  5b5effff  j -1296
0034cc  1f110100  addli r2, r2, 1
0034d0  9f102000  addli r1, zero, 17
0034d4  3fc07101  blt.s r3, r23, 16
0034d8  7d900000  xwait r1, 0
0034dc  9ff1f1ff  addli r3, r3, -1
0034e0  bbef01fe  bneq r3, zero, -8
0034e4  e3406fd0  loadli.w r1,  -6092(r30)
0034e8  670d2fce  storeli.w r2, -6192(r30)
0034ec  3fdc7001  blt.s r1, r23, 788
0034f0  9f820000  addli r5, r1, 0
0034f4  9f703700  addli r1, r14, 31
0034f8  1f024000  addli r4, zero, 32
0034fc  63012fd1  loadli.w r2,  -6000(r30)
003500  630a6fd0  loadli.w r20,  -6096(r30)
003504  9f010000  addli r3, zero, 0
003508  9f080000  addli r17, zero, 0
00350c  0b934030  div.s r6, r1, r4
003510  9b302700  slli r1, r14, 2
003514  1ff2f2ff  addli r4, r5, -1
003518  1b711100  setlti r2, r2, 1
00351c  1b89c007  andi r18, r1, 124
003520  e3004fce  loadli.w r1,  -6368(r30)
003524  e7024fd0  storeli.w r4, -6104(r30)
003528  97902000  or r1, r1, r2
00352c  67421fd0  storeli.w r1, -6108(r30)
003530  5b040000  j 32
003534  634d3fd1  loadli.w r26,  -5988(r30)
003538  630c9fd0  loadli.w r24,  -6072(r30)
00353c  e3406fd0  loadli.w r1,  -6092(r30)
003540  634a7fd0  loadli.w r20,  -6084(r30)
003544  9f980800  addli r17, r17, 1
003548  0b1a8a19  sub.s r20, r20, r24
00354c  b7da1800  beq r17, r1, 692
003550  e3401fd1  loadli.w r1,  -6004(r30)
003554  0b918821  mul.s r2, r17, r24
003558  67461fd1  storeli.w r17, -6044(r30)
00355c  e7434fd1  storeli.w r20, -6084(r30)
003560  e7032fd0  storeli.w r2, -6088(r30)
003564  8b902018  sub.s r1, r1, r2
003568  8b151c40  min.s r11, r24, r1
00356c  e3404fd0  loadli.w r1,  -6108(r30)
003570  37f50000  beq r1, zero, 348
003574  e3004fd0  loadli.w r1,  -6112(r30)
003578  e348cfd0  loadli.w r17,  -6044(r30)
00357c  63015fd0  loadli.w r2,  -6104(r30)
003580  37a02800  beq r17, r2, 8
003584  9f000000  addli r1, zero, 0
003588  63017fd0  loadli.w r2,  -6088(r30)
00358c  63422fd1  loadli.w r4,  -5996(r30)
003590  8b902010  add.s r1, r1, r2
003594  8b90b010  add.s r1, r1, r11
003598  8b954030  div.s r11, r1, r4
00359c  4bee35fe  ble.s r11, r3, -104
0035a0  63016fd0  loadli.w r2,  -6096(r30)
0035a4  8b103220  mul.s r1, r4, r3
0035a8  e7037fd0  storeli.w r7, -6088(r30)
0035ac  0b1b1118  sub.s r22, r2, r1
0035b0  db030000  j 28
0035b4  9f202000  addli r1, zero, 18
0035b8  7d800000  xsignal r1, 0
0035bc  63422fd1  loadli.w r4,  -5996(r30)
0035c0  9f910100  addli r3, r3, 1
0035c4  0b1b4b18  sub.s r22, r22, r4
0035c8  37f8b100  beq r3, r11, 540
0035cc  63411fd1  loadli.w r2,  -6004(r30)
0035d0  8b904120  mul.s r1, r3, r4
0035d4  0b111118  sub.s r2, r2, r1
0035d8  8b182240  min.s r17, r4, r2
0035dc  63011fd1  loadli.w r2,  -6008(r30)
0035e0  0b111111  add.s r2, r2, r17
0035e4  0b1d3131  div.s r26, r2, r19
0035e8  3f3f7dff  blt.s r26, r23, -52
0035ec  63412fd1  loadli.w r2,  -5996(r30)
0035f0  8b1d6141  min.s r27, r2, r22
0035f4  1f010000  addli r2, zero, 0
0035f8  db070000  j 60
0035fc  15800204  dma_cfg zero, r5, zero, 2
003600  150cc206  dma_cfg r24, r4, r12, 3
003604  63024fd1  loadli.w r4,  -5984(r30)
003608  1506720a  dma_cfg r12, r4, r7, 5
00360c  950c6608  dma_cfg r25, r12, r6, 4
003610  15002011  dma_cfg zero, zero, r18, 8
003614  35000000  dma_run zero
003618  1500700b  dma_cfg zero, zero, r23, 5
00361c  15000010  dma_cfg zero, zero, zero, 8
003620  1f420000  addli r4, zero, 4
003624  1d100200  unlock r4
003628  1f110100  addli r2, r2, 1
00362c  8b9d3d19  sub.s r27, r27, r19
003630  371ea1ff  beq r2, r26, -124
003634  b75f0efe  beq r28, zero, -12
003638  bf4f77ff  blt.s r14, r23, -16
00363c  0b123121  mul.s r4, r2, r19
003640  8b924818  sub.s r5, r17, r4
003644  8b935940  min.s r7, r19, r5
003648  bf8f73ff  blt.s r7, r23, -32
00364c  9f420000  addli r5, zero, 4
003650  1d800200  lock zero, r5
003654  0b121210  add.s r4, r4, r1
003658  e3029fd1  loadli.w r5,  -5944(r30)
00365c  8b125220  mul.s r5, r4, r5
003660  1b327200  slli r4, r4, 7
003664  0b1cd210  add.s r24, r4, r13
003668  339a422b  sext_int2long r[20:21], r5
00366c  1f220000  addli r4, zero, 2
003670  17324a02  sll.d r[4:5], r[20:21], r4
003674  634a9fd1  loadli.w r20,  -5940(r30)
003678  15004001  dma_cfg zero, zero, r20, 0
00367c  950b0002  dma_cfg r23, zero, zero, 1
003680  1f00afd1  addli zero, r30, -5936
003684  6b5a0000  load.d r[20:21], 0(zero)
003688  17200000  xor zero, zero, zero
00368c  0b224a10  add.ul r[4:5], r[20:21], r[4:5]
003690  634abfd1  loadli.w r20,  -5924(r30)
003694  3f207a01  blt.s r20, r23, 8
003698  dbecffff  j -156
00369c  8b93b941  min.s r7, r19, r27
0036a0  950c6608  dma_cfg r25, r12, r6, 4
0036a4  15002011  dma_cfg zero, zero, r18, 8
0036a8  8b930358  neg.s r7, r7
0036ac  15800204  dma_cfg zero, r5, zero, 2
0036b0  150cc206  dma_cfg r24, r4, r12, 3
0036b4  1f0c0c01  addli r24, r24, 128
0036b8  9f930300  addli r7, r7, 1
0036bc  0b228210  add.ul r[4:5], r[4:5], r[8:9]
0036c0  35000000  dma_run zero
0036c4  bbaf03fe  bneq r7, zero, -24
0036c8  5beaffff  j -176
0036cc  e300efd0  loadli.w r1,  -6032(r30)
0036d0  1f220000  addli r4, zero, 2
0036d4  9f080000  addli r17, zero, 0
0036d8  8b101120  mul.s r1, r2, r1
0036dc  b390102a  sext_int2long r[1:2], r1
0036e0  17b24002  sll.d r[4:5], r[1:2], r4
0036e4  1f013fd0  addli r2, r30, -6120
0036e8  8b104c41  min.s r1, r24, r20
0036ec  6b5a0100  load.d r[20:21], 0(r2)
0036f0  0b2d4a10  add.ul r[26:27], r[20:21], r[4:5]
0036f4  db020000  j 20
0036f8  9f030c00  addli r7, r24, 0
0036fc  63012fd1  loadli.w r2,  -6000(r30)
003700  9f980800  addli r17, r17, 1
003704  b7c928fe  beq r17, r2, -400
003708  1f8c0300  addli r24, r7, 0
00370c  1b81f30f  andi r2, r7, 255
003710  37300100  beq r2, zero, 12
003714  1f211000  addli r2, zero, 10
003718  7d100100  xwait r2, 0
00371c  bfa27501  blt.s r11, r23, 168
003720  e3425fd1  loadli.w r5,  -5972(r30)
003724  63013fd1  loadli.w r2,  -5992(r30)
003728  0b925820  mul.s r4, r17, r5
00372c  0b114118  sub.s r2, r2, r4
003730  8b932240  min.s r7, r5, r2
003734  3fc27301  blt.s r7, r23, 144
003738  63418fd1  loadli.w r2,  -5948(r30)
00373c  1f4a0000  addli r20, zero, 4
003740  33124228  sext_int2long r[4:5], r4
003744  1bbb2300  slli r22, r7, 2
003748  8b1a2538  mod.s r21, r10, r2
00374c  63017fd1  loadli.w r2,  -5960(r30)
003750  1d000a00  lock zero, r20
003754  1f2a0000  addli r20, zero, 2
003758  17324203  sll.d r[4:5], r[4:5], r20
00375c  630adfd0  loadli.w r20,  -6040(r30)
003760  15004001  dma_cfg zero, zero, r20, 0
003764  630a8fd1  loadli.w r20,  -5952(r30)
003768  950b0002  dma_cfg r23, zero, zero, 1
00376c  e303efd0  loadli.w r7,  -6032(r30)
003770  0b224d10  add.ul r[4:5], r[26:27], r[4:5]
003774  0b914a51  fmac.s r2, r21, r20
003778  3ff07301  blt.s r7, r23, 28
00377c  15800204  dma_cfg zero, r5, zero, 2
003780  15016207  dma_cfg r2, r4, r22, 3
003784  6341bfd0  loadli.w r2,  -6052(r30)
003788  150bb108  dma_cfg r22, r2, r11, 4
00378c  35000000  dma_run zero
003790  db050000  j 44
003794  e3439fd0  loadli.w r7,  -6068(r30)
003798  158b7309  dma_cfg r22, r7, r23, 4
00379c  9f830000  addli r7, r1, 0
0037a0  15800204  dma_cfg zero, r5, zero, 2
0037a4  15016207  dma_cfg r2, r4, r22, 3
0037a8  0b22f210  add.ul r[4:5], r[4:5], r[15:16]
0037ac  9ff3f3ff  addli r7, r7, -1
0037b0  0b116111  add.s r2, r2, r22
0037b4  35000000  dma_run zero
0037b8  bbaf03fe  bneq r7, zero, -24
0037bc  1f410000  addli r2, zero, 4
0037c0  1d100100  unlock r2
0037c4  1f311000  addli r2, zero, 11
0037c8  7d000100  xsignal r2, 0
0037cc  1f150500  addli r10, r10, 1
0037d0  63016fd1  loadli.w r2,  -5968(r30)
0037d4  bb1c25fe  bneq r10, r2, -220
0037d8  9f130000  addli r7, zero, 1
0037dc  1f050000  addli r10, zero, 0
0037e0  dbe3ffff  j -228
0037e4  634d3fd1  loadli.w r26,  -5988(r30)
0037e8  630c9fd0  loadli.w r24,  -6072(r30)
0037ec  e3037fd0  loadli.w r7,  -6088(r30)
0037f0  e3406fd0  loadli.w r1,  -6092(r30)
0037f4  e348cfd0  loadli.w r17,  -6044(r30)
0037f8  9f810500  addli r3, r11, 0
0037fc  dba8ffff  j -700
003800  e307dfcf  loadli.w r15,  -6168(r30)
003804  634e1fcf  loadli.w r28,  -6260(r30)
003808  63410fcf  loadli.w r2,  -6268(r30)
00380c  634aefcf  loadli.w r20,  -6156(r30)
003810  e3452fcf  loadli.w r11,  -6252(r30)
003814  6307cfce  loadli.w r14,  -6304(r30)
003818  63082fcf  loadli.w r16,  -6256(r30)
00381c  9380c701  seteq r1, r15, r28
003820  97001100  and r1, r2, r1
003824  3bed70f9  bneq r1, r23, -3240
003828  9f300000  addli r1, zero, 3
00382c  7d900000  xwait r1, 0
003830  db69feff  j -3252
003834  1f120200  addli r4, r4, 1
003838  670d4fce  storeli.w r4, -6192(r30)
00383c  6342ffcf  loadli.w r4,  -6148(r30)
003840  9f102000  addli r1, zero, 17
003844  3f0e72fb  blt.s r4, r23, -2176
003848  5beefeff  j -2192
00384c  e30aefcd  loadli.w r21,  -6416(r30)
003850  634bdfcd  loadli.w r22,  -6420(r30)
003854  e344bfcd  loadli.w r9,  -6436(r30)
003858  e306dfcd  loadli.w r13,  -6424(r30)
00385c  e302cfcd  loadli.w r5,  -6432(r30)
003860  e308bfcd  loadli.w r17,  -6440(r30)
003864  6343cfcd  loadli.w r6,  -6428(r30)
003868  63448fcd  loadli.w r8,  -6460(r30)
00386c  9f070e00  addli r15, r28, 0
003870  9f0d0100  addli r27, r2, 0
003874  abf0ffff  lui r1, 1048575
003878  9b90f0ff  ori r1, r1, 4095
00387c  670c1fce  storeli.w r1, -6208(r30)
003880  bfa4b0f8  blt.s r1, r11, -3800
003884  e3407fcd  loadli.w r1,  -6468(r30)
003888  670c1fce  storeli.w r1, -6208(r30)
00388c  db23feff  j -3812
003890  e34cffcc  loadli.w r25,  -6532(r30)
003894  6303efcc  loadli.w r6,  -6544(r30)
003898  e342efcc  loadli.w r5,  -6540(r30)
00389c  6302ffcc  loadli.w r4,  -6536(r30)
0038a0  63019fcf  loadli.w r2,  -6200(r30)
0038a4  6344dfcc  loadli.w r8,  -6548(r30)
0038a8  9f860800  addli r13, r17, 0
0038ac  abf0ffff  lui r1, 1048575
0038b0  9b90f0ff  ori r1, r1, 4095
0038b4  670e1fcc  storeli.w r1, -6432(r30)
0038b8  3fbe90f6  blt.s r1, r9, -4212
0038bc  670e4fcc  storeli.w r4, -6432(r30)
0038c0  dbf0fdff  j -4220
0038c4  9f060000  addli r13, zero, 0
0038c8  3f4c90f6  blt.s zero, r9, -4336
0038cc  9f76f2ff  addli r13, r4, -1
0038d0  9f070000  addli r15, zero, 0
0038d4  3f4cb0f6  blt.s zero, r11, -4336
0038d8  5be1fdff  j -4344
0038dc  1f810200  addli r2, r5, 0
0038e0  63073fce  loadli.w r14,  -6376(r30)
0038e4  634e4fcc  loadli.w r28,  -6620(r30)
0038e8  e302dfcb  loadli.w r5,  -6680(r30)
0038ec  9f080400  addli r17, r8, 0
0038f0  9f800600  addli r1, r13, 0
0038f4  abf1ffff  lui r3, 1048575
0038f8  1b92f1ff  ori r4, r3, 4095
0038fc  e3015fcc  loadli.w r3,  -6616(r30)
003900  67424fcc  storeli.w r4, -6620(r30)
003904  bf3d32f4  blt.s r4, r3, -5268
003908  e341cfcb  loadli.w r3,  -6684(r30)
00390c  67423fcc  storeli.w r3, -6620(r30)
003910  5b6cfdff  j -5280
003914  9f050000  addli r11, zero, 0
003918  b380152e  zext_int2long r[1:2], r11
00391c  13a91300  seteq.d r18, r[7:8], r[1:2]
003920  e3004f01  loadli.w r1,  160(r30)
003924  37a0b000  beq r1, r11, 8
003928  1f080600  addli r16, r12, 0
00392c  3b200900  bneq r18, zero, 8
003930  9f050800  addli r11, r16, 0
003934  9f001fda  addli r1, r30, -4856
003938  73b07000  store.d r[7:8], 0(r1)
00393c  3b470904  bneq r18, zero, 2512
003940  e3004f01  loadli.w r1,  160(r30)
003944  1f110000  addli r2, zero, 1
003948  3b972004  bneq r1, r2, 2500
00394c  37870504  beq r11, zero, 2496
003950  9f000002  addli r1, zero, 256
003954  6700bfda  storeli.w r11, -4864(r30)
003958  9f021fda  addli r5, r30, -4856
00395c  1f010fda  addli r2, r30, -4864
003960  1f032fe2  addli r6, r30, -3824
003964  00a00000  mfence { lm }
003968  8b901540  min.s r1, r11, r1
00396c  ebd50200  load.d r[11:12], 0(r5)
003970  2b0800f0  lui r16, 983040
003974  1f012100  addli r2, r2, 16
003978  9bb02000  slli r1, r1, 2
00397c  97900001  or r1, r1, r16
003980  ffa02500  l_gm2lm r1, r2, 0(r[11:12])
003984  b3001028  zext_int2long r[1:2], zero
003988  00a00200  mfence { lm, gm }
00398c  73301300  store.d r[1:2], 0(r6)
003990  5b300100  j 2432
003994  e3005f01  loadli.w r1,  168(r30)
003998  670e0fd0  storeli.w zero, -5920(r30)
00399c  e7410fe2  storeli.w zero, -3812(r30)
0039a0  bb910000  bneq r1, zero, 100
0039a4  b3001028  zext_int2long r[1:2], zero
0039a8  93a01100  seteq.d r1, r[3:4], r[1:2]
0039ac  bb800000  bneq r1, zero, 32
0039b0  00a00000  mfence { lm }
0039b4  9f006000  addli r1, zero, 48
0039b8  2b0100f0  lui r2, 983040
0039bc  9f020fda  addli r5, r30, -4864
0039c0  97902000  or r1, r1, r2
0039c4  ffa05100  l_gm2lm r1, r5, 0(r[3:4])
0039c8  00a00200  mfence { lm, gm }
0039cc  9f026fd1  addli r5, r30, -5968
0039d0  b3001028  zext_int2long r[1:2], zero
0039d4  ebd10200  load.d r[3:4], 0(r5)
0039d8  93a01100  seteq.d r1, r[3:4], r[1:2]
0039dc  bba00000  bneq r1, zero, 40
0039e0  00a00000  mfence { lm }
0039e4  9f006000  addli r1, zero, 48
0039e8  2b0100f0  lui r2, 983040
0039ec  9f010fda  addli r3, r30, -4864
0039f0  97902000  or r1, r1, r2
0039f4  1f016fd1  addli r2, r30, -5968
0039f8  6b520100  load.d r[4:5], 0(r2)
0039fc  ff203200  l_gm2lm r1, r3, 0(r[4:5])
003a00  00a00200  mfence { lm, gm }
003a04  6341efcb  loadli.w r2,  -6668(r30)
003a08  9f100000  addli r1, zero, 1
003a0c  bf2b110e  blt.s r2, r1, 7912
003a10  6303af02  loadli.w r6,  336(r30)
003a14  63069f02  loadli.w r12,  328(r30)
003a18  e3454f03  loadli.w r11,  420(r30)
003a1c  e303ef01  loadli.w r7,  240(r30)
003a20  63051f02  loadli.w r10,  264(r30)
003a24  63471f02  loadli.w r14,  268(r30)
003a28  63022f02  loadli.w r4,  272(r30)
003a2c  e3025f02  loadli.w r5,  296(r30)
003a30  e3410f02  loadli.w r3,  260(r30)
003a34  6341ff01  loadli.w r2,  252(r30)
003a38  e3040f02  loadli.w r9,  256(r30)
003a3c  63445f02  loadli.w r8,  300(r30)
003a40  1f090000  addli r18, zero, 0
003a44  1f0b0000  addli r22, zero, 0
003a48  1f080000  addli r16, zero, 0
003a4c  9f0b0000  addli r23, zero, 0
003a50  9f070000  addli r15, zero, 0
003a54  1f0c8000  addli r24, zero, 64
003a58  9f7d3000  addli r27, zero, 31
003a5c  1f4e2000  addli r28, zero, 20
003a60  674c0fce  storeli.w zero, -6204(r30)
003a64  e7020fd0  storeli.w zero, -6104(r30)
003a68  0b136640  min.s r6, r12, r6
003a6c  9bf51500  setlti r11, r11, 1
003a70  9ff1f1ff  addli r3, r3, -1
003a74  1f71f1ff  addli r2, r2, -1
003a78  1f060900  addli r12, r18, 0
003a7c  e7496fd0  storeli.w r6, -5988(r30)
003a80  0b13e520  mul.s r6, r10, r14
003a84  0b95d340  min.s r10, r7, r13
003a88  8b13e220  mul.s r7, r4, r14
003a8c  e70dbfce  storeli.w r11, -6184(r30)
003a90  1ff21200  addli r4, r5, 15
003a94  e74b3fce  storeli.w r3, -6212(r30)
003a98  9ff1f2ff  addli r3, r5, -1
003a9c  670d2fce  storeli.w r2, -6192(r30)
003aa0  1f673000  addli r14, zero, 30
003aa4  8b150548  max.s r11, r10, zero
003aa8  1f052000  addli r10, zero, 16
003aac  67423fd0  storeli.w r3, -6108(r30)
003ab0  8b967820  mul.s r13, r17, r7
003ab4  0b15a238  mod.s r10, r4, r10
003ab8  e74fbfce  storeli.w r11, -6148(r30)
003abc  8b95b410  add.s r11, r9, r11
003ac0  670cdfce  storeli.w r13, -6208(r30)
003ac4  1ff1f5ff  addli r2, r11, -1
003ac8  0b119130  div.s r2, r2, r9
003acc  8b11a218  sub.s r3, r4, r10
003ad0  67063fd0  storeli.w r3, -6048(r30)
003ad4  9bb17200  slli r3, r5, 7
003ad8  9f120000  addli r5, zero, 1
003adc  e74d3fd0  storeli.w r3, -5924(r30)
003ae0  9f71f4ff  addli r3, r8, -1
003ae4  e7062fd0  storeli.w r2, -6040(r30)
003ae8  1f110000  addli r2, zero, 1
003aec  670d3fd0  storeli.w r3, -5936(r30)
003af0  9f110000  addli r3, zero, 1
003af4  e70e2fce  storeli.w r2, -6168(r30)
003af8  1f110000  addli r2, zero, 1
003afc  67023fd0  storeli.w r3, -6112(r30)
003b00  9f110000  addli r3, zero, 1
003b04  670a3fd0  storeli.w r3, -5984(r30)
003b08  9f110000  addli r3, zero, 1
003b0c  670b3fd0  storeli.w r3, -5968(r30)
003b10  9f110000  addli r3, zero, 1
003b14  e7433fd0  storeli.w r3, -6084(r30)
003b18  e341cfcb  loadli.w r3,  -6684(r30)
003b1c  670e3fce  storeli.w r3, -6176(r30)
003b20  5b0a0000  j 80
003b24  63046fd1  loadli.w r8,  -5968(r30)
003b28  e301dfcf  loadli.w r3,  -6168(r30)
003b2c  63428fcf  loadli.w r4,  -6204(r30)
003b30  8b9b8b18  sub.s r23, r23, r8
003b34  0b140458  neg.s r8, r8
003b38  0b163618  sub.s r12, r12, r3
003b3c  8b910158  neg.s r3, r3
003b40  1f120200  addli r4, r4, 1
003b44  670b8fd0  storeli.w r8, -5968(r30)
003b48  63447fd0  loadli.w r8,  -6084(r30)
003b4c  e70e3fce  storeli.w r3, -6168(r30)
003b50  e341efcb  loadli.w r3,  -6668(r30)
003b54  674c4fce  storeli.w r4, -6204(r30)
003b58  8b978718  sub.s r15, r15, r8
003b5c  0b140458  neg.s r8, r8
003b60  e7438fd0  storeli.w r8, -6084(r30)
003b64  1f140000  addli r8, zero, 1
003b68  e7028fd0  storeli.w r8, -6104(r30)
003b6c  3726320e  beq r4, r3, 7560
003b70  e301cfcf  loadli.w r3,  -6176(r30)
003b74  371d3602  beq r12, r3, 1860
003b78  6304efcb  loadli.w r8,  -6672(r30)
003b7c  e3448fcf  loadli.w r9,  -6204(r30)
003b80  6302cfcb  loadli.w r4,  -6688(r30)
003b84  8b918420  mul.s r3, r9, r8
003b88  8b113218  sub.s r3, r4, r3
003b8c  8b113440  min.s r3, r8, r3
003b90  0b920148  max.s r4, r3, zero
003b94  e3417fcf  loadli.w r3,  -6212(r30)
003b98  67484fd0  storeli.w r4, -6012(r30)
003b9c  8b914110  add.s r3, r3, r4
003ba0  63021fd0  loadli.w r4,  -6136(r30)
003ba4  0b924130  div.s r4, r3, r4
003ba8  e3018fcf  loadli.w r3,  -6208(r30)
003bac  8b919120  mul.s r3, r3, r9
003bb0  67003fd0  storeli.w r3, -6144(r30)
003bb4  e301dfd0  loadli.w r3,  -6040(r30)
003bb8  67034fd0  storeli.w r4, -6096(r30)
003bbc  1ff4f1ff  addli r8, r3, -1
003bc0  e74c8fce  storeli.w r8, -6196(r30)
003bc4  1f74f2ff  addli r8, r4, -1
003bc8  0b123220  mul.s r4, r4, r3
003bcc  e70c8fce  storeli.w r8, -6200(r30)
003bd0  e74d4fce  storeli.w r4, -6180(r30)
003bd4  db0a0000  j 84
003bd8  e3014fd0  loadli.w r3,  -6112(r30)
003bdc  6306ffcf  loadli.w r12,  -6152(r30)
003be0  6344efcf  loadli.w r8,  -6156(r30)
003be4  6342bfcf  loadli.w r4,  -6180(r30)
003be8  8b910158  neg.s r3, r3
003bec  1f030400  addli r6, r8, 0
003bf0  9f030200  addli r7, r4, 0
003bf4  67023fd0  storeli.w r3, -6112(r30)
003bf8  e301dfcf  loadli.w r3,  -6168(r30)
003bfc  0b163610  add.s r12, r12, r3
003c00  e3014fd1  loadli.w r3,  -5984(r30)
003c04  0b183818  sub.s r16, r16, r3
003c08  8b910158  neg.s r3, r3
003c0c  670a3fd0  storeli.w r3, -5984(r30)
003c10  e3016fd1  loadli.w r3,  -5968(r30)
003c14  8b9b3b18  sub.s r23, r23, r3
003c18  8b910158  neg.s r3, r3
003c1c  670b3fd0  storeli.w r3, -5968(r30)
003c20  e301cfcf  loadli.w r3,  -6176(r30)
003c24  372a3602  beq r12, r3, 1672
003c28  93814300  seteq r3, r7, r4
003c2c  6302bfcf  loadli.w r4,  -6184(r30)
003c30  97914100  or r3, r3, r4
003c34  bb900100  bneq r3, zero, 36
003c38  63022fd0  loadli.w r4,  -6128(r30)
003c3c  9f014fe2  addli r3, r30, -3808
003c40  abf30000  lui r7, 15
003c44  1f72f2ff  addli r4, r4, -1
003c48  9b93f3ff  ori r7, r7, 4095
003c4c  73907100  store.h r7, 0(r3)
003c50  9fa10100  addli r3, r3, 2
003c54  bb3f02fe  bneq r4, zero, -20
003c58  63428fcc  loadli.w r4,  -6588(r30)
003c5c  e3038fcc  loadli.w r7,  -6592(r30)
003c60  8b114620  mul.s r3, r12, r4
003c64  8b913318  sub.s r3, r7, r3
003c68  8b113240  min.s r3, r4, r3
003c6c  0b920148  max.s r4, r3, zero
003c70  e301afcf  loadli.w r3,  -6192(r30)
003c74  67434fd0  storeli.w r4, -6092(r30)
003c78  8b914110  add.s r3, r3, r4
003c7c  63022fce  loadli.w r4,  -6384(r30)
003c80  0b924130  div.s r4, r3, r4
003c84  e301dfd0  loadli.w r3,  -6040(r30)
003c88  67404fd0  storeli.w r4, -6140(r30)
003c8c  0b924120  mul.s r4, r3, r4
003c90  674f4fce  storeli.w r4, -6156(r30)
003c94  b7004300  beq r6, r4, 32
003c98  e301cfd1  loadli.w r3,  -5920(r30)
003c9c  670e0fd0  storeli.w zero, -5920(r30)
003ca0  0b1b3b10  add.s r22, r22, r3
003ca4  e3415fcc  loadli.w r3,  -6612(r30)
003ca8  e7416fe3  storeli.w r22, -3812(r30)
003cac  8b113240  min.s r3, r4, r3
003cb0  e7493fd0  storeli.w r3, -5988(r30)
003cb4  e70fcfce  storeli.w r12, -6152(r30)
003cb8  abf1ffff  lui r3, 1048575
003cbc  e303dfd0  loadli.w r7,  -6040(r30)
003cc0  63024fd0  loadli.w r4,  -6112(r30)
003cc4  1f030000  addli r6, zero, 0
003cc8  3f304000  blt.s zero, r4, 12
003ccc  63439fcf  loadli.w r6,  -6196(r30)
003cd0  9b93f1ff  ori r7, r3, 4095
003cd4  371c73fe  beq r6, r7, -252
003cd8  e7456fd0  storeli.w r6, -6052(r30)
003cdc  abf1ffff  lui r3, 1048575
003ce0  63440fd0  loadli.w r8,  -6140(r30)
003ce4  1f060000  addli r12, zero, 0
003ce8  1b92f1ff  ori r4, r3, 4095
003cec  bf305600  blt.s r12, r5, 44
003cf0  1f040200  addli r8, r4, 0
003cf4  e3016fd0  loadli.w r3,  -6096(r30)
003cf8  3f202600  blt.s r12, r2, 8
003cfc  db040000  j 36
003d00  9f040600  addli r9, r12, 0
003d04  bf305600  blt.s r12, r5, 44
003d08  63420fd0  loadli.w r4,  -6140(r30)
003d0c  9f74f2ff  addli r9, r4, -1
003d10  bf202600  blt.s r12, r2, 40
003d14  5b040000  j 32
003d18  e3016fd0  loadli.w r3,  -6096(r30)
003d1c  bf1f26fe  blt.s r12, r2, -28
003d20  9f010200  addli r3, r4, 0
003d24  9f040600  addli r9, r12, 0
003d28  3f205600  blt.s r12, r5, 8
003d2c  dbfbffff  j -36
003d30  3f202600  blt.s r12, r2, 8
003d34  63069fcf  loadli.w r12,  -6200(r30)
003d38  6302dfd0  loadli.w r4,  -6040(r30)
003d3c  63034fd0  loadli.w r6,  -6112(r30)
003d40  e7017fd0  storeli.w r7, -6120(r30)
003d44  67445fd0  storeli.w r5, -6076(r30)
003d48  0b126220  mul.s r4, r4, r6
003d4c  0b924318  sub.s r4, r7, r4
003d50  67454fd0  storeli.w r4, -6060(r30)
003d54  5b0a0000  j 80
003d58  63438fd0  loadli.w r6,  -6076(r30)
003d5c  e343bfd0  loadli.w r7,  -6052(r30)
003d60  8b120358  neg.s r5, r6
003d64  8b146418  sub.s r9, r8, r6
003d68  63034fd0  loadli.w r6,  -6112(r30)
003d6c  1f040200  addli r8, r4, 0
003d70  63023fd0  loadli.w r4,  -6120(r30)
003d74  67445fd0  storeli.w r5, -6076(r30)
003d78  8b936310  add.s r7, r7, r6
003d7c  63034fd1  loadli.w r6,  -5984(r30)
003d80  e7457fd0  storeli.w r7, -6052(r30)
003d84  0b186818  sub.s r16, r16, r6
003d88  0b130358  neg.s r6, r6
003d8c  670a6fd0  storeli.w r6, -5984(r30)
003d90  63036fd1  loadli.w r6,  -5968(r30)
003d94  8b9b6b18  sub.s r23, r23, r6
003d98  0b130358  neg.s r6, r6
003d9c  670b6fd0  storeli.w r6, -5968(r30)
003da0  b7e843fe  beq r7, r4, -456
003da4  3bf08400  bneq r9, r8, 28
003da8  2bf2ffff  lui r4, 1048575
003dac  e3428fd0  loadli.w r5,  -6076(r30)
003db0  1b12f2ff  ori r4, r4, 4095
003db4  bf1e52fe  blt.s r4, r5, -92
003db8  63420fd0  loadli.w r4,  -6140(r30)
003dbc  dbf3ffff  j -100
003dc0  e343bfd0  loadli.w r7,  -6052(r30)
003dc4  6343afd0  loadli.w r6,  -6060(r30)
003dc8  e3423fcd  loadli.w r5,  -6500(r30)
003dcc  1f850100  addli r10, r3, 0
003dd0  e70b2fd0  storeli.w r2, -5960(r30)
003dd4  67048fd0  storeli.w r8, -6080(r30)
003dd8  13836302  setneq r6, r7, r6
003ddc  0b925320  mul.s r4, r7, r5
003de0  67056fd0  storeli.w r6, -6064(r30)
003de4  6343ffcf  loadli.w r6,  -6148(r30)
003de8  0b124318  sub.s r4, r6, r4
003dec  0b924240  min.s r4, r5, r4
003df0  e3020fd0  loadli.w r5,  -6144(r30)
003df4  0b120248  max.s r4, r4, zero
003df8  8b925310  add.s r5, r7, r5
003dfc  e7034fd0  storeli.w r4, -6088(r30)
003e00  67075fd0  storeli.w r5, -6032(r30)
003e04  5b090000  j 72
003e08  63027fd1  loadli.w r4,  -5960(r30)
003e0c  e3049fd0  loadli.w r9,  -6072(r30)
003e10  e3479fd0  loadli.w r15,  -6068(r30)
003e14  63048fd0  loadli.w r8,  -6080(r30)
003e18  0b110258  neg.s r2, r4
003e1c  0b164518  sub.s r12, r10, r4
003e20  63428fd0  loadli.w r4,  -6076(r30)
003e24  1f850100  addli r10, r3, 0
003e28  e70b2fd0  storeli.w r2, -5960(r30)
003e2c  8b944410  add.s r9, r9, r4
003e30  63026fd1  loadli.w r4,  -5968(r30)
003e34  8b9b4b18  sub.s r23, r23, r4
003e38  0b120258  neg.s r4, r4
003e3c  670b4fd0  storeli.w r4, -5968(r30)
003e40  63427fd0  loadli.w r4,  -6084(r30)
003e44  8b974710  add.s r15, r15, r4
003e48  b78d84fe  beq r9, r8, -160
003e4c  e744ffd0  storeli.w r15, -6068(r30)
003e50  e7049fd0  storeli.w r9, -6072(r30)
003e54  3b70a600  bneq r12, r10, 28
003e58  2bf1ffff  lui r2, 1048575
003e5c  9b11f1ff  ori r3, r2, 4095
003e60  63017fd1  loadli.w r2,  -5960(r30)
003e64  bf9e21fe  blt.s r3, r2, -92
003e68  e3016fd0  loadli.w r3,  -6096(r30)
003e6c  dbf3ffff  j -100
003e70  63431fce  loadli.w r6,  -6388(r30)
003e74  6342afcf  loadli.w r4,  -6188(r30)
003e78  e3037fd0  loadli.w r7,  -6088(r30)
003e7c  e3022fce  loadli.w r5,  -6384(r30)
003e80  e74aafd0  storeli.w r10, -5972(r30)
003e84  0b916738  mod.s r2, r15, r6
003e88  0b9a4330  div.s r20, r7, r4
003e8c  8b915420  mul.s r3, r9, r5
003e90  9f030b00  addli r7, r22, 0
003e94  0b116110  add.s r2, r2, r6
003e98  9b04fa03  andi r9, r20, 63
003e9c  0b126138  mod.s r4, r2, r6
003ea0  63416fd0  loadli.w r2,  -6092(r30)
003ea4  63435fcf  loadli.w r6,  -6228(r30)
003ea8  0b113118  sub.s r2, r2, r3
003eac  e3416fcf  loadli.w r3,  -6220(r30)
003eb0  0b912240  min.s r2, r5, r2
003eb4  8b113238  mod.s r3, r4, r3
003eb8  1f72faff  addli r4, r20, -1
003ebc  8b120148  max.s r5, r2, zero
003ec0  67464fd0  storeli.w r4, -6044(r30)
003ec4  1f620000  addli r4, zero, 6
003ec8  9bb78200  slli r15, r5, 8
003ecc  17594a00  sra r18, r20, r4
003ed0  1bb25200  slli r4, r5, 5
003ed4  e70c4fd0  storeli.w r4, -5944(r30)
003ed8  63424fd0  loadli.w r4,  -6108(r30)
003edc  0b125210  add.s r4, r4, r5
003ee0  e7074fd0  storeli.w r4, -6024(r30)
003ee4  63026fcf  loadli.w r4,  -6224(r30)
003ee8  0b934150  fmac.s r6, r3, r4
003eec  e3015fd0  loadli.w r3,  -6104(r30)
003ef0  e74c6fd0  storeli.w r6, -5940(r30)
003ef4  db090000  j 76
003ef8  9f511000  addli r3, zero, 13
003efc  7d800100  xsignal r3, 0
003f00  9f030000  addli r7, zero, 0
003f04  1f0b0000  addli r22, zero, 0
003f08  1f673000  addli r14, zero, 30
003f0c  9f711000  addli r3, zero, 15
003f10  7d800100  xsignal r3, 0
003f14  63488fd1  loadli.w r16,  -5948(r30)
003f18  e30b8fd1  loadli.w r23,  -5952(r30)
003f1c  63455fd1  loadli.w r10,  -5972(r30)
003f20  e3017fd1  loadli.w r3,  -5960(r30)
003f24  0b163610  add.s r12, r12, r3
003f28  e3014fd1  loadli.w r3,  -5984(r30)
003f2c  0b183810  add.s r16, r16, r3
003f30  e3016fd1  loadli.w r3,  -5968(r30)
003f34  8b9b3b10  add.s r23, r23, r3
003f38  9f110000  addli r3, zero, 1
003f3c  377ca6fe  beq r12, r10, -228
003f40  63431fd0  loadli.w r6,  -6132(r30)
003f44  0b926b38  mod.s r4, r23, r6
003f48  0b126210  add.s r4, r4, r6
003f4c  0b136238  mod.s r6, r4, r6
003f50  1f020000  addli r4, zero, 0
003f54  bf600300  blt.s r6, zero, 56
003f58  63042fd0  loadli.w r8,  -6128(r30)
003f5c  e3452fd0  loadli.w r11,  -6124(r30)
003f60  cb706400  ble.s r8, r6, 60
003f64  1b321300  slli r4, r6, 1
003f68  1f044fe2  addli r8, r30, -3808
003f6c  6305efd0  loadli.w r10,  -6032(r30)
003f70  e306dfd0  loadli.w r13,  -6040(r30)
003f74  0b144410  add.s r8, r8, r4
003f78  0b15d650  fmac.s r10, r12, r13
003f7c  6b320400  load.hu r4, 0(r8)
003f80  3b504500  bneq r10, r4, 20
003f84  1f020000  addli r4, zero, 0
003f88  db020000  j 20
003f8c  e3452fd0  loadli.w r11,  -6124(r30)
003f90  db010000  j 12
003f94  1f120000  addli r4, zero, 1
003f98  7310a400  store.h r10, 0(r8)
003f9c  6304cfd1  loadli.w r8,  -5920(r30)
003fa0  63453fd1  loadli.w r10,  -5988(r30)
003fa4  1305a404  setlt.u r10, r8, r10
003fa8  3b200500  bneq r10, zero, 8
003fac  1f840300  addli r8, r7, 0
003fb0  9f03cfd1  addli r7, r30, -5920
003fb4  3b200500  bneq r10, zero, 8
003fb8  9f433fe2  addli r7, r30, -3812
003fbc  1f140400  addli r8, r8, 1
003fc0  67808300  storeli.w r8, 0(r7)
003fc4  e3433fe2  loadli.w r7,  -3812(r30)
003fc8  3fc01300  blt.s r7, r1, 16
003fcc  7d100700  xwait r14, 0
003fd0  9ff3f3ff  addli r7, r7, -1
003fd4  bbef03fe  bneq r7, zero, -8
003fd8  63041fd1  loadli.w r8,  -6008(r30)
003fdc  63052fd0  loadli.w r10,  -6128(r30)
003fe0  e3061fd0  loadli.w r13,  -6136(r30)
003fe4  9b8a1100  andi r21, r3, 1
003fe8  e7410fe2  storeli.w zero, -3812(r30)
003fec  674c0fd1  storeli.w r16, -5948(r30)
003ff0  670c7fd1  storeli.w r23, -5952(r30)
003ff4  8b138838  mod.s r7, r16, r8
003ff8  0b13a338  mod.s r6, r6, r10
003ffc  63450fd1  loadli.w r10,  -6012(r30)
004000  8b938310  add.s r7, r7, r8
004004  8b938338  mod.s r7, r7, r8
004008  0b14d620  mul.s r8, r12, r13
00400c  0b148518  sub.s r8, r10, r8
004010  63053fd1  loadli.w r10,  -5992(r30)
004014  0b948640  min.s r8, r13, r8
004018  0b1b0448  max.s r22, r8, zero
00401c  63042fd1  loadli.w r8,  -6000(r30)
004020  8b93a338  mod.s r7, r7, r10
004024  8b188320  mul.s r17, r6, r8
004028  63431fd1  loadli.w r6,  -6004(r30)
00402c  8b966320  mul.s r13, r7, r6
004030  37f01500  beq r11, r1, 28
004034  9f310000  addli r3, zero, 3
004038  b7f43500  beq r11, r3, 316
00403c  9f210000  addli r3, zero, 2
004040  3ba53500  bneq r11, r3, 328
004044  e301afd0  loadli.w r3,  -6064(r30)
004048  17023200  and r4, r4, r3
00404c  b7740200  beq r4, zero, 316
004050  6302bfd0  loadli.w r4,  -6056(r30)
004054  e341cfd0  loadli.w r3,  -6044(r30)
004058  8b914110  add.s r3, r3, r4
00405c  8b914130  div.s r3, r3, r4
004060  3fea11fe  blt.s r3, r1, -360
004064  6303bfd0  loadli.w r6,  -6056(r30)
004068  1b322b00  slli r4, r22, 2
00406c  9f032000  addli r7, zero, 16
004070  1f727200  addli r4, r4, 63
004074  1f731300  addli r6, r6, 15
004078  0b148239  mod.s r8, r4, r24
00407c  8b137338  mod.s r7, r6, r7
004080  0b137318  sub.s r6, r6, r7
004084  8b138218  sub.s r7, r4, r8
004088  0b127320  mul.s r4, r6, r7
00408c  1bb36300  slli r6, r7, 6
004090  9f030000  addli r7, zero, 0
004094  db030000  j 28
004098  1d900000  unlock r1
00409c  7d800d00  xsignal r27, 0
0040a0  7d000e00  xsignal r28, 0
0040a4  9f930300  addli r7, r7, 1
0040a8  8b984810  add.s r17, r17, r4
0040ac  37b933fe  beq r7, r3, -436
0040b0  1f641000  addli r8, zero, 14
0040b4  7d100400  xwait r8, 0
0040b8  1f042000  addli r8, zero, 16
0040bc  7d100400  xwait r8, 0
0040c0  1f342000  addli r8, zero, 19
0040c4  7d100400  xwait r8, 0
0040c8  3f5f11fe  blt.s r2, r1, -44
0040cc  6307bfd0  loadli.w r14,  -6056(r30)
0040d0  1f054000  addli r10, zero, 32
0040d4  1d800000  lock zero, r1
0040d8  09805004  mm_cfg zero, r1, r5, 2
0040dc  090c5b00  mm_cfg r24, r22, r5, 0
0040e0  63089fd1  loadli.w r16,  -5944(r30)
0040e4  0b94e320  mul.s r8, r7, r14
0040e8  0b15a430  div.s r10, r8, r10
0040ec  9b355500  slli r11, r10, 5
0040f0  8b15b418  sub.s r11, r8, r11
0040f4  0b148a18  sub.s r8, r20, r8
0040f8  8b15a850  fmac.s r11, r16, r10
0040fc  0b148740  min.s r8, r14, r8
004100  1bb52500  slli r10, r11, 2
004104  9f650000  addli r11, zero, 6
004108  1758b400  sra r16, r8, r11
00410c  e3459fd1  loadli.w r11,  -5940(r30)
004110  0b15b510  add.s r10, r10, r11
004114  9b05f403  andi r11, r8, 63
004118  b7c00a00  beq r21, zero, 48
00411c  1f870800  addli r14, r17, 0
004120  3f608401  blt.s r8, r24, 24
004124  2995e610  mm_acc r10, r13, r14, 8
004128  0b176710  add.s r14, r14, r6
00412c  1f78f8ff  addli r16, r16, -1
004130  0b15f510  add.s r10, r10, r15
004134  bb4f08fe  bneq r16, zero, -16
004138  b78d05fe  beq r11, zero, -160
00413c  89055b00  mm_cfg r11, r22, r5, 0
004140  2995e610  mm_acc r10, r13, r14, 8
004144  dbeaffff  j -172
004148  9f8b0800  addli r23, r17, 0
00414c  3f608401  blt.s r8, r24, 24
004150  29857611  mm r10, r13, r23, 8
004154  8b9b6b10  add.s r23, r23, r6
004158  1f78f8ff  addli r16, r16, -1
00415c  0b15f510  add.s r10, r10, r15
004160  bb4f08fe  bneq r16, zero, -16
004164  b7dc05fe  beq r11, zero, -204
004168  89055b00  mm_cfg r11, r22, r5, 0
00416c  29857611  mm r10, r13, r23, 8
004170  5be5ffff  j -216
004174  e341bfd0  loadli.w r3,  -6052(r30)
004178  6343afd0  loadli.w r6,  -6060(r30)
00417c  93816100  seteq r3, r3, r6
004180  17824100  and r4, r3, r4
004184  3b3b02fe  bneq r4, zero, -308
004188  e3412fd1  loadli.w r3,  -5996(r30)
00418c  6302ffd0  loadli.w r4,  -6024(r30)
004190  8b153230  div.s r11, r4, r3
004194  bf9515fe  blt.s r11, r1, -668
004198  9b312b00  slli r3, r22, 2
00419c  e34b9fd1  loadli.w r23,  -5940(r30)
0041a0  1f050000  addli r10, zero, 0
0041a4  1f080000  addli r16, zero, 0
0041a8  1ff3f5ff  addli r6, r11, -1
0041ac  9ff17100  addli r3, r3, 63
0041b0  0b928139  mod.s r4, r3, r24
0041b4  0b924118  sub.s r4, r3, r4
0041b8  e301cfd0  loadli.w r3,  -6048(r30)
0041bc  8b113220  mul.s r3, r4, r3
0041c0  1b326200  slli r4, r4, 6
0041c4  5b030000  j 24
0041c8  e343bfd1  loadli.w r7,  -5924(r30)
0041cc  8b963610  add.s r13, r13, r3
0041d0  1f180800  addli r16, r16, 1
0041d4  8b9b7b10  add.s r23, r23, r7
0041d8  b704b8fe  beq r16, r11, -736
0041dc  63442fd1  loadli.w r8,  -5996(r30)
0041e0  9f631000  addli r7, zero, 14
0041e4  7d900300  xwait r7, 0
0041e8  1f072000  addli r14, zero, 16
0041ec  7d100700  xwait r14, 0
0041f0  8b1c8820  mul.s r25, r16, r8
0041f4  8b939219  sub.s r7, r5, r25
0041f8  0b1d7440  min.s r26, r8, r7
0041fc  9f332000  addli r7, zero, 19
004200  7d900300  xwait r7, 0
004204  bf411d00  blt.s r26, r1, 112
004208  1d800000  lock zero, r1
00420c  09805004  mm_cfg zero, r1, r5, 2
004210  090cab01  mm_cfg r24, r22, r26, 0
004214  9f830b00  addli r7, r23, 0
004218  1f870800  addli r14, r17, 0
00421c  1f040900  addli r8, r18, 0
004220  b7b00a00  beq r21, zero, 44
004224  3f608a01  blt.s r20, r24, 24
004228  a993e610  mm_acc r7, r13, r14, 8
00422c  0b174710  add.s r14, r14, r4
004230  1f74f4ff  addli r8, r8, -1
004234  8b93f310  add.s r7, r7, r15
004238  bb4f04fe  bneq r8, zero, -16
00423c  b7d00400  beq r9, zero, 52
004240  8904ab01  mm_cfg r9, r22, r26, 0
004244  a993e610  mm_acc r7, r13, r14, 8
004248  5b050000  j 40
00424c  3f608a01  blt.s r20, r24, 24
004250  a983e610  mm r7, r13, r14, 8
004254  0b174710  add.s r14, r14, r4
004258  1f74f4ff  addli r8, r8, -1
00425c  8b93f310  add.s r7, r7, r15
004260  bb4f04fe  bneq r8, zero, -16
004264  37b00400  beq r9, zero, 12
004268  8904ab01  mm_cfg r9, r22, r26, 0
00426c  a983e610  mm r7, r13, r14, 8
004270  1d900000  unlock r1
004274  e303afd1  loadli.w r7,  -5936(r30)
004278  37206800  beq r16, r6, 8
00427c  9f030000  addli r7, zero, 0
004280  8b939311  add.s r7, r7, r25
004284  8b93a311  add.s r7, r7, r26
004288  8b933331  div.s r7, r7, r19
00428c  cbfca3fe  ble.s r7, r10, -196
004290  0b94a318  sub.s r8, r7, r10
004294  7d800d00  xsignal r27, 0
004298  7d000e00  xsignal r28, 0
00429c  1f74f4ff  addli r8, r8, -1
0042a0  bb5f04fe  bneq r8, zero, -12
0042a4  1f850300  addli r10, r7, 0
0042a8  5be4ffff  j -224
0042ac  6306cfcf  loadli.w r12,  -6176(r30)
0042b0  9f030200  addli r7, r4, 0
0042b4  1f030400  addli r6, r8, 0
0042b8  abf1ffff  lui r3, 1048575
0042bc  1b92f1ff  ori r4, r3, 4095
0042c0  e301dfcf  loadli.w r3,  -6168(r30)
0042c4  670e4fce  storeli.w r4, -6176(r30)
0042c8  3f7132fc  blt.s r4, r3, -1956
0042cc  e341cfcb  loadli.w r3,  -6684(r30)
0042d0  670e3fce  storeli.w r3, -6176(r30)
0042d4  5b0affff  j -1968
0042d8  b3001028  zext_int2long r[1:2], zero
0042dc  1f8d0600  addli r26, r13, 0
0042e0  93a01a00  seteq.d r1, r[21:22], r[1:2]
0042e4  bbfd0002  bneq r1, zero, 1916
0042e8  00a00000  mfence { lm }
0042ec  9f400000  addli r1, zero, 4
0042f0  2b0100f0  lui r2, 983040
0042f4  9f040fda  addli r9, r30, -4864
0042f8  97902000  or r1, r1, r2
0042fc  ffa09a00  l_gm2lm r1, r9, 0(r[21:22])
004300  00a00200  mfence { lm, gm }
004304  e3000fda  loadli.w r1,  -4864(r30)
004308  dbeb0000  j 1884
00430c  67000fda  storeli.w zero, -4864(r30)
004310  1f014fd1  addli r2, r30, -5984
004314  e3004f01  loadli.w r1,  160(r30)
004318  eb520100  load.d r[5:6], 0(r2)
00431c  bbb00000  bneq r1, zero, 44
004320  b3001028  zext_int2long r[1:2], zero
004324  93a01300  seteq.d r1, r[7:8], r[1:2]
004328  bb800000  bneq r1, zero, 32
00432c  00a00000  mfence { lm }
004330  9f400000  addli r1, zero, 4
004334  2b0100f0  lui r2, 983040
004338  9f05cfd1  addli r11, r30, -5920
00433c  97902000  or r1, r1, r2
004340  ffa0b300  l_gm2lm r1, r11, 0(r[7:8])
004344  00a00200  mfence { lm, gm }
004348  e3404f01  loadli.w r1,  164(r30)
00434c  bbb00000  bneq r1, zero, 44
004350  b3001028  zext_int2long r[1:2], zero
004354  93a01200  seteq.d r1, r[5:6], r[1:2]
004358  bb800000  bneq r1, zero, 32
00435c  00a00000  mfence { lm }
004360  9f400000  addli r1, zero, 4
004364  2b0100f0  lui r2, 983040
004368  9f03cfd1  addli r7, r30, -5920
00436c  97902000  or r1, r1, r2
004370  ffa07200  l_gm2lm r1, r7, 0(r[5:6])
004374  00a00200  mfence { lm, gm }
004378  b3001028  zext_int2long r[1:2], zero
00437c  93201700  seteq.d r1, r[14:15], r[1:2]
004380  bb800000  bneq r1, zero, 32
004384  00a00000  mfence { lm }
004388  9f400000  addli r1, zero, 4
00438c  2b0100f0  lui r2, 983040
004390  9f02cfd1  addli r5, r30, -5920
004394  97902000  or r1, r1, r2
004398  ff205700  l_gm2lm r1, r5, 0(r[14:15])
00439c  00a00200  mfence { lm, gm }
0043a0  b3001028  zext_int2long r[1:2], zero
0043a4  93a01a00  seteq.d r1, r[21:22], r[1:2]
0043a8  bb800000  bneq r1, zero, 32
0043ac  00a00000  mfence { lm }
0043b0  9f400000  addli r1, zero, 4
0043b4  2b0100f0  lui r2, 983040
0043b8  9f02cfd1  addli r5, r30, -5920
0043bc  97902000  or r1, r1, r2
0043c0  ffa05a00  l_gm2lm r1, r5, 0(r[21:22])
0043c4  00a00200  mfence { lm, gm }
0043c8  e3005f01  loadli.w r1,  168(r30)
0043cc  37920000  beq r1, zero, 132
0043d0  b3001028  zext_int2long r[1:2], zero
0043d4  93a01100  seteq.d r1, r[3:4], r[1:2]
0043d8  bb800000  bneq r1, zero, 32
0043dc  00a00000  mfence { lm }
0043e0  9f400000  addli r1, zero, 4
0043e4  2b0100f0  lui r2, 983040
0043e8  9f02cfd1  addli r5, r30, -5920
0043ec  97902000  or r1, r1, r2
0043f0  ffa05100  l_gm2lm r1, r5, 0(r[3:4])
0043f4  00a00200  mfence { lm, gm }
0043f8  9f016fd1  addli r3, r30, -5968
0043fc  b3001028  zext_int2long r[1:2], zero
004400  6bd20100  load.d r[4:5], 0(r3)
004404  93201200  seteq.d r1, r[4:5], r[1:2]
004408  bb800000  bneq r1, zero, 32
00440c  00a00000  mfence { lm }
004410  9f400000  addli r1, zero, 4
004414  2b0100f0  lui r2, 983040
004418  9f01cfd1  addli r3, r30, -5920
00441c  97902000  or r1, r1, r2
004420  ff203200  l_gm2lm r1, r3, 0(r[4:5])
004424  00a00200  mfence { lm, gm }
004428  b3001028  zext_int2long r[1:2], zero
00442c  93a01400  seteq.d r1, r[9:10], r[1:2]
004430  bb800000  bneq r1, zero, 32
004434  00a00000  mfence { lm }
004438  9f400000  addli r1, zero, 4
00443c  2b0100f0  lui r2, 983040
004440  9f01cfd1  addli r3, r30, -5920
004444  97902000  or r1, r1, r2
004448  ffa03400  l_gm2lm r1, r3, 0(r[9:10])
00444c  00a00200  mfence { lm, gm }
004450  6341efcb  loadli.w r2,  -6668(r30)
004454  9f100000  addli r1, zero, 1
004458  3f72110a  blt.s r2, r1, 5276
00445c  6304ef01  loadli.w r8,  240(r30)
004460  e342ff01  loadli.w r5,  252(r30)
004464  63050f02  loadli.w r10,  256(r30)
004468  63013f02  loadli.w r2,  280(r30)
00446c  e3444f03  loadli.w r9,  420(r30)
004470  63022f02  loadli.w r4,  272(r30)
004474  e3451f02  loadli.w r11,  268(r30)
004478  63430f02  loadli.w r6,  260(r30)
00447c  e3035f02  loadli.w r7,  296(r30)
004480  1f090000  addli r18, zero, 0
004484  1f060000  addli r12, zero, 0
004488  9f010000  addli r3, zero, 0
00448c  1f371000  addli r14, zero, 11
004490  9f471000  addli r15, zero, 12
004494  1f282000  addli r16, zero, 18
004498  1f1b0000  addli r22, zero, 1
00449c  0b14d440  min.s r8, r8, r13
0044a0  9ff2f2ff  addli r5, r5, -1
0044a4  1f71f1ff  addli r2, r2, -1
0044a8  9bf41400  setlti r9, r9, 1
0044ac  0b12b220  mul.s r4, r4, r11
0044b0  1f73f3ff  addli r6, r6, -1
0044b4  9ff5f3ff  addli r11, r7, -1
0044b8  0b140448  max.s r8, r8, zero
0044bc  e7445fd0  storeli.w r5, -6068(r30)
0044c0  67092fd0  storeli.w r2, -6000(r30)
0044c4  67459fd0  storeli.w r9, -6060(r30)
0044c8  8b944820  mul.s r9, r17, r4
0044cc  9f382000  addli r17, zero, 19
0044d0  67436fd0  storeli.w r6, -6092(r30)
0044d4  67078fd0  storeli.w r8, -6032(r30)
0044d8  0b148510  add.s r8, r10, r8
0044dc  e7039fd0  storeli.w r9, -6088(r30)
0044e0  9f72f4ff  addli r5, r8, -1
0044e4  0b91a230  div.s r2, r5, r10
0044e8  9f120000  addli r5, zero, 1
0044ec  1f150000  addli r10, zero, 1
0044f0  e7485fd0  storeli.w r5, -6004(r30)
0044f4  e342cfcb  loadli.w r5,  -6684(r30)
0044f8  67065fd0  storeli.w r5, -6048(r30)
0044fc  e74d2fd0  storeli.w r2, -5924(r30)
004500  1f110000  addli r2, zero, 1
004504  67462fd0  storeli.w r2, -6044(r30)
004508  1f110000  addli r2, zero, 1
00450c  5b050000  j 40
004510  e342cfd0  loadli.w r5,  -6044(r30)
004514  8b916119  sub.s r3, r3, r22
004518  1f160600  addli r12, r12, 1
00451c  0b1b0b58  neg.s r22, r22
004520  0b195918  sub.s r18, r18, r5
004524  8b920258  neg.s r5, r5
004528  67465fd0  storeli.w r5, -6044(r30)
00452c  e342efcb  loadli.w r5,  -6668(r30)
004530  371f5608  beq r12, r5, 5060
004534  e302cfd0  loadli.w r5,  -6048(r30)
004538  37245902  beq r18, r5, 1288
00453c  e303efcb  loadli.w r7,  -6672(r30)
004540  6303cfcb  loadli.w r6,  -6688(r30)
004544  e743cfd0  storeli.w r12, -6084(r30)
004548  8b127620  mul.s r5, r12, r7
00454c  8b125318  sub.s r5, r6, r5
004550  63031fd0  loadli.w r6,  -6136(r30)
004554  8b925340  min.s r5, r7, r5
004558  0b9c0248  max.s r24, r5, zero
00455c  e3426fd0  loadli.w r5,  -6092(r30)
004560  8b928211  add.s r5, r5, r24
004564  0b936230  div.s r6, r5, r6
004568  e3027fd0  loadli.w r5,  -6088(r30)
00456c  8b92c220  mul.s r5, r5, r12
004570  e7075fd0  storeli.w r5, -6024(r30)
004574  e342bfd1  loadli.w r5,  -5924(r30)
004578  670a6fd0  storeli.w r6, -5984(r30)
00457c  9ff3f2ff  addli r7, r5, -1
004580  67057fd0  storeli.w r7, -6064(r30)
004584  9f73f3ff  addli r7, r6, -1
004588  0b135320  mul.s r6, r6, r5
00458c  67047fd0  storeli.w r7, -6080(r30)
004590  e7456fd0  storeli.w r6, -6052(r30)
004594  db060000  j 52
004598  63421fd1  loadli.w r4,  -6004(r30)
00459c  6309dfd0  loadli.w r18,  -6040(r30)
0045a0  6343bfd0  loadli.w r6,  -6052(r30)
0045a4  e302cfd0  loadli.w r5,  -6048(r30)
0045a8  8b916119  sub.s r3, r3, r22
0045ac  0b1b0b58  neg.s r22, r22
0045b0  0b120258  neg.s r4, r4
0045b4  e7484fd0  storeli.w r4, -6004(r30)
0045b8  6342cfd0  loadli.w r4,  -6044(r30)
0045bc  0b194910  add.s r18, r18, r4
0045c0  1f020300  addli r4, r6, 0
0045c4  b7415902  beq r18, r5, 1136
0045c8  13026200  seteq r4, r4, r6
0045cc  e342afd0  loadli.w r5,  -6060(r30)
0045d0  17125200  or r4, r4, r5
0045d4  bb100200  bneq r4, zero, 36
0045d8  e3022fd0  loadli.w r5,  -6128(r30)
0045dc  1f024fe2  addli r4, r30, -3808
0045e0  2bf30000  lui r6, 15
0045e4  9ff2f2ff  addli r5, r5, -1
0045e8  1b13f3ff  ori r6, r6, 4095
0045ec  73106200  store.h r6, 0(r4)
0045f0  1f220200  addli r4, r4, 2
0045f4  bbbf02fe  bneq r5, zero, -20
0045f8  2bf2ffff  lui r4, 1048575
0045fc  e343bfd1  loadli.w r7,  -5924(r30)
004600  e3421fd1  loadli.w r5,  -6004(r30)
004604  1f040000  addli r8, zero, 0
004608  3f305000  blt.s zero, r5, 12
00460c  6304afd0  loadli.w r8,  -6064(r30)
004610  9b13f2ff  ori r7, r4, 4095
004614  e7062fd1  storeli.w r18, -6040(r30)
004618  370e74fe  beq r8, r7, -128
00461c  e3428fcc  loadli.w r5,  -6588(r30)
004620  63038fcc  loadli.w r6,  -6592(r30)
004624  9f0b0000  addli r23, zero, 0
004628  0b125920  mul.s r4, r18, r5
00462c  0b124318  sub.s r4, r6, r4
004630  0b924240  min.s r4, r5, r4
004634  8b127249  max.s r5, r4, r23
004638  63429fd0  loadli.w r4,  -6068(r30)
00463c  e7095fd0  storeli.w r5, -5992(r30)
004640  0b125210  add.s r4, r4, r5
004644  e3022fce  loadli.w r5,  -6384(r30)
004648  8b125230  div.s r5, r4, r5
00464c  2bf2ffff  lui r4, 1048575
004650  1b12f2ff  ori r4, r4, 4095
004654  9f840200  addli r9, r5, 0
004658  67485fd0  storeli.w r5, -6012(r30)
00465c  bfb02b00  blt.s r23, r2, 44
004660  9f040200  addli r9, r4, 0
004664  e3024fd1  loadli.w r5,  -5984(r30)
004668  3fa0ab00  blt.s r23, r10, 8
00466c  db040000  j 36
004670  1f860b00  addli r12, r23, 0
004674  bfb02b00  blt.s r23, r2, 44
004678  63420fd1  loadli.w r4,  -6012(r30)
00467c  1f76f2ff  addli r12, r4, -1
004680  bfa0ab00  blt.s r23, r10, 40
004684  5b040000  j 32
004688  e3024fd1  loadli.w r5,  -5984(r30)
00468c  bf9fabfe  blt.s r23, r10, -28
004690  9f020200  addli r5, r4, 0
004694  1f860b00  addli r12, r23, 0
004698  3fa02b00  blt.s r23, r2, 8
00469c  dbfbffff  j -36
0046a0  3fa0ab00  blt.s r23, r10, 8
0046a4  e30b8fd0  loadli.w r23,  -6080(r30)
0046a8  6342bfd1  loadli.w r4,  -5924(r30)
0046ac  63431fd1  loadli.w r6,  -6004(r30)
0046b0  e70c2fd0  storeli.w r2, -5944(r30)
0046b4  e7087fd0  storeli.w r7, -6008(r30)
0046b8  0b136220  mul.s r6, r4, r6
0046bc  0b926318  sub.s r4, r7, r6
0046c0  e70b4fd0  storeli.w r4, -5960(r30)
0046c4  db060000  j 52
0046c8  63029fd1  loadli.w r4,  -5944(r30)
0046cc  63048fd1  loadli.w r8,  -5952(r30)
0046d0  e3031fd1  loadli.w r7,  -6008(r30)
0046d4  8b916119  sub.s r3, r3, r22
0046d8  0b1b0b58  neg.s r22, r22
0046dc  0b110258  neg.s r2, r4
0046e0  0b964418  sub.s r12, r9, r4
0046e4  63421fd1  loadli.w r4,  -6004(r30)
0046e8  9f040300  addli r9, r6, 0
0046ec  e70c2fd0  storeli.w r2, -5944(r30)
0046f0  0b144410  add.s r8, r8, r4
0046f4  b71a74fe  beq r8, r7, -348
0046f8  670c8fd0  storeli.w r8, -5952(r30)
0046fc  3b709600  bneq r12, r9, 28
004700  2bf1ffff  lui r2, 1048575
004704  1b13f1ff  ori r6, r2, 4095
004708  63019fd1  loadli.w r2,  -5944(r30)
00470c  bf7e23fe  blt.s r6, r2, -68
004710  63430fd1  loadli.w r6,  -6012(r30)
004714  dbf6ffff  j -76
004718  63027fd1  loadli.w r4,  -5960(r30)
00471c  e3433fcd  loadli.w r7,  -6500(r30)
004720  1f0a0500  addli r20, r10, 0
004724  674c9fd0  storeli.w r9, -5948(r30)
004728  13034402  setneq r6, r8, r4
00472c  6302efd0  loadli.w r4,  -6032(r30)
004730  0b117420  mul.s r2, r8, r7
004734  0b112218  sub.s r2, r4, r2
004738  6302ffd0  loadli.w r4,  -6024(r30)
00473c  0b912340  min.s r2, r7, r2
004740  8b1d4410  add.s r27, r8, r4
004744  0b110148  max.s r2, r2, zero
004748  670b2fd0  storeli.w r2, -5968(r30)
00474c  1f810200  addli r2, r5, 0
004750  5b060000  j 48
004754  8b1b4119  sub.s r23, r2, r20
004758  63019fd1  loadli.w r2,  -5944(r30)
00475c  63469fd1  loadli.w r12,  -5940(r30)
004760  0b150a58  neg.s r10, r20
004764  e3448fd1  loadli.w r9,  -5948(r30)
004768  8b916119  sub.s r3, r3, r22
00476c  0b1b0b58  neg.s r22, r22
004770  1f0a0500  addli r20, r10, 0
004774  0b162610  add.s r12, r12, r2
004778  1f810200  addli r2, r5, 0
00477c  371e96fe  beq r12, r9, -124
004780  e74ccfd0  storeli.w r12, -5940(r30)
004784  3be02b00  bneq r23, r2, 24
004788  abf2ffff  lui r5, 1048575
00478c  9b92f2ff  ori r5, r5, 4095
004790  3f9f42ff  blt.s r5, r20, -60
004794  e3024fd1  loadli.w r5,  -5984(r30)
004798  dbf7ffff  j -68
00479c  e3032fce  loadli.w r7,  -6384(r30)
0047a0  63023fd1  loadli.w r4,  -5992(r30)
0047a4  e3047fd1  loadli.w r9,  -5960(r30)
0047a8  8b127620  mul.s r5, r12, r7
0047ac  8b125218  sub.s r5, r4, r5
0047b0  63026fd1  loadli.w r4,  -5968(r30)
0047b4  8b925340  min.s r5, r7, r5
0047b8  e343afcf  loadli.w r7,  -6188(r30)
0047bc  8b9c0248  max.s r25, r5, zero
0047c0  0b157230  div.s r10, r4, r7
0047c4  63022fd1  loadli.w r4,  -6000(r30)
0047c8  e3438fd0  loadli.w r7,  -6076(r30)
0047cc  8b129211  add.s r5, r4, r25
0047d0  63029fd0  loadli.w r4,  -6072(r30)
0047d4  0b944230  div.s r8, r5, r4
0047d8  8b127510  add.s r5, r10, r7
0047dc  63028fd1  loadli.w r4,  -5952(r30)
0047e0  9ff2f2ff  addli r5, r5, -1
0047e4  13029200  seteq r4, r4, r9
0047e8  8b927230  div.s r5, r5, r7
0047ec  93138004  setlt.s r7, zero, r8
0047f0  1ffef2ff  addli r28, r5, -1
0047f4  670d4fd0  storeli.w r4, -5936(r30)
0047f8  97047200  and r9, r4, r7
0047fc  9f73f4ff  addli r7, r8, -1
004800  db020000  j 20
004804  634d3fd1  loadli.w r26,  -5988(r30)
004808  8b9b4b11  add.s r23, r23, r20
00480c  8b916111  add.s r3, r3, r22
004810  b7ed2bfe  beq r23, r2, -136
004814  e3461fd0  loadli.w r13,  -6132(r30)
004818  1f090000  addli r18, zero, 0
00481c  0b96d138  mod.s r12, r3, r13
004820  0b16d610  add.s r12, r12, r13
004824  0b16d638  mod.s r12, r12, r13
004828  bf700600  blt.s r12, zero, 60
00482c  e3062fd0  loadli.w r13,  -6128(r30)
004830  cbd0c600  ble.s r13, r12, 52
004834  1b361600  slli r12, r12, 1
004838  1f024fe2  addli r4, r30, -3808
00483c  9f860d00  addli r13, r27, 0
004840  0b16c210  add.s r12, r4, r12
004844  6342bfd1  loadli.w r4,  -5924(r30)
004848  6b390600  load.hu r18, 0(r12)
00484c  8b964b50  fmac.s r13, r23, r4
004850  3bb02601  bneq r13, r18, 12
004854  1f090000  addli r18, zero, 0
004858  db010000  j 12
00485c  1f190000  addli r18, zero, 1
004860  7310d600  store.h r13, 0(r12)
004864  e3061fd0  loadli.w r13,  -6136(r30)
004868  63425fd1  loadli.w r4,  -5972(r30)
00486c  e34a2fd0  loadli.w r21,  -6124(r30)
004870  0b96db20  mul.s r12, r23, r13
004874  0b16cc18  sub.s r12, r24, r12
004878  0b96c640  min.s r12, r13, r12
00487c  0b160648  max.s r12, r12, zero
004880  1f76f6ff  addli r12, r12, -1
004884  8b164610  add.s r13, r12, r4
004888  0b16a611  add.s r12, r12, r26
00488c  8b19a631  div.s r19, r12, r26
004890  8b964630  div.s r13, r13, r4
004894  1f060900  addli r12, r18, 0
004898  37f01a00  beq r21, r1, 28
00489c  63462fd0  loadli.w r12,  -6124(r30)
0048a0  1f320000  addli r4, zero, 3
0048a4  37234600  beq r12, r4, 200
0048a8  1f220000  addli r4, zero, 2
0048ac  3b334600  bneq r12, r4, 204
0048b0  17066900  and r12, r18, r6
0048b4  37130600  beq r12, zero, 196
0048b8  b7c00400  beq r9, zero, 48
0048bc  1f090000  addli r18, zero, 0
0048c0  db010000  j 12
0048c4  1f190900  addli r18, r18, 1
0048c8  b7008900  beq r18, r8, 32
0048cc  1f860600  addli r12, r13, 0
0048d0  bfdf16fe  blt.s r13, r1, -12
0048d4  7d100700  xwait r14, 0
0048d8  7d800700  xsignal r15, 0
0048dc  1f76f6ff  addli r12, r12, -1
0048e0  bb5f06fe  bneq r12, zero, -12
0048e4  5bfcffff  j -32
0048e8  3ffc12fe  blt.s r5, r1, -228
0048ec  e306bfd0  loadli.w r13,  -6056(r30)
0048f0  1f060000  addli r12, zero, 0
0048f4  1f0d0000  addli r26, zero, 0
0048f8  9ff6f6ff  addli r13, r13, -1
0048fc  db010000  j 12
004900  1f1d0d00  addli r26, r26, 1
004904  370c5dfe  beq r26, r5, -256
004908  1f890900  addli r18, r19, 0
00490c  3fd01900  blt.s r19, r1, 20
004910  7d100700  xwait r14, 0
004914  7d800700  xsignal r15, 0
004918  1f79f9ff  addli r18, r18, -1
00491c  bb5f09fe  bneq r18, zero, -12
004920  1f890600  addli r18, r13, 0
004924  3720cd01  beq r26, r28, 8
004928  1f090000  addli r18, zero, 0
00492c  63428fd0  loadli.w r4,  -6076(r30)
004930  8b1a4d20  mul.s r21, r26, r4
004934  0b194d50  fmac.s r18, r26, r4
004938  8b1a5519  sub.s r21, r10, r21
00493c  8b1a5241  min.s r21, r4, r21
004940  0b195911  add.s r18, r18, r21
004944  e30abfd0  loadli.w r21,  -6056(r30)
004948  0b195931  div.s r18, r18, r21
00494c  cb5ec9fe  ble.s r18, r12, -76
004950  0b16c918  sub.s r12, r18, r12
004954  7d100800  xwait r16, 0
004958  7d800800  xsignal r17, 0
00495c  1f76f6ff  addli r12, r12, -1
004960  bb5f06fe  bneq r12, zero, -12
004964  1f060900  addli r12, r18, 0
004968  5bf3ffff  j -104
00496c  6302afd1  loadli.w r4,  -5936(r30)
004970  17062201  and r12, r4, r18
004974  3b1d06fe  bneq r12, zero, -188
004978  13165004  setlt.s r12, zero, r5
00497c  1706c900  and r12, r18, r12
004980  bb401600  bneq r12, r1, 48
004984  1f090000  addli r18, zero, 0
004988  db010000  j 12
00498c  1f190900  addli r18, r18, 1
004990  b7005900  beq r18, r5, 32
004994  1f860900  addli r12, r19, 0
004998  bfdf19fe  blt.s r19, r1, -12
00499c  7d100700  xwait r14, 0
0049a0  7d800700  xsignal r15, 0
0049a4  1f76f6ff  addli r12, r12, -1
0049a8  bb5f06fe  bneq r12, zero, -12
0049ac  5bfcffff  j -32
0049b0  3f5914fe  blt.s r8, r1, -428
0049b4  1bf61600  setlti r12, r13, 1
0049b8  1f090000  addli r18, zero, 0
0049bc  1f0d0000  addli r26, zero, 0
0049c0  9719c300  or r19, r6, r12
0049c4  db010000  j 12
0049c8  1f1d0d00  addli r26, r26, 1
0049cc  b7688dfe  beq r26, r8, -456
0049d0  3be00900  bneq r19, zero, 24
0049d4  1f860600  addli r12, r13, 0
0049d8  7d100700  xwait r14, 0
0049dc  7d800700  xsignal r15, 0
0049e0  1f76f6ff  addli r12, r12, -1
0049e4  bb5f06fe  bneq r12, zero, -12
0049e8  1f860500  addli r12, r11, 0
0049ec  37207d00  beq r26, r7, 8
0049f0  1f060000  addli r12, zero, 0
0049f4  63029fd0  loadli.w r4,  -6072(r30)
0049f8  8b1a4d20  mul.s r21, r26, r4
0049fc  0b164d50  fmac.s r12, r26, r4
004a00  8b9a5c19  sub.s r21, r25, r21
004a04  8b1a5241  min.s r21, r4, r21
004a08  0b165611  add.s r12, r12, r21
004a0c  e34a2fd1  loadli.w r21,  -5996(r30)
004a10  0b165631  div.s r12, r12, r21
004a14  cb5e26ff  ble.s r12, r18, -76
004a18  0b192619  sub.s r18, r12, r18
004a1c  7d100800  xwait r16, 0
004a20  7d800800  xsignal r17, 0
004a24  1f79f9ff  addli r18, r18, -1
004a28  bb5f09fe  bneq r18, zero, -12
004a2c  1f090600  addli r18, r12, 0
004a30  5bf3ffff  j -104
004a34  6309cfd0  loadli.w r18,  -6048(r30)
004a38  63467fd0  loadli.w r12,  -6084(r30)
004a3c  1f020300  addli r4, r6, 0
004a40  abf2ffff  lui r5, 1048575
004a44  1b93f2ff  ori r6, r5, 4095
004a48  e342cfd0  loadli.w r5,  -6044(r30)
004a4c  67066fd0  storeli.w r6, -6048(r30)
004a50  3f0b53fc  blt.s r6, r5, -1344
004a54  e342cfcb  loadli.w r5,  -6684(r30)
004a58  67065fd0  storeli.w r5, -6048(r30)
004a5c  db56ffff  j -1356
004a60  e3402f01  loadli.w r1,  148(r30)
004a64  e70b1fd0  storeli.w r1, -5960(r30)
004a68  e3068fd0  loadli.w r13,  -6080(r30)
004a6c  e3005f01  loadli.w r1,  168(r30)
004a70  9f0c0700  addli r25, r14, 0
004a74  b7f10000  beq r1, zero, 124
004a78  b3001028  zext_int2long r[1:2], zero
004a7c  ab04803f  lui r9, 260096
004a80  93a01100  seteq.d r1, r[3:4], r[1:2]
004a84  bb900000  bneq r1, zero, 36
004a88  00a00000  mfence { lm }
004a8c  9f400000  addli r1, zero, 4
004a90  2b0100f0  lui r2, 983040
004a94  9f040fda  addli r9, r30, -4864
004a98  97902000  or r1, r1, r2
004a9c  ffa09100  l_gm2lm r1, r9, 0(r[3:4])
004aa0  00a00200  mfence { lm, gm }
004aa4  e3040fda  loadli.w r9,  -4864(r30)
004aa8  1f036fd1  addli r6, r30, -5968
004aac  b3001028  zext_int2long r[1:2], zero
004ab0  6b520300  load.d r[4:5], 0(r6)
004ab4  ab01803f  lui r3, 260096
004ab8  93201200  seteq.d r1, r[4:5], r[1:2]
004abc  bb900000  bneq r1, zero, 36
004ac0  00a00000  mfence { lm }
004ac4  9f400000  addli r1, zero, 4
004ac8  2b0100f0  lui r2, 983040
004acc  9f010fda  addli r3, r30, -4864
004ad0  97902000  or r1, r1, r2
004ad4  ff203200  l_gm2lm r1, r3, 0(r[4:5])
004ad8  00a00200  mfence { lm, gm }
004adc  e3010fda  loadli.w r3,  -4864(r30)
004ae0  e3007fd1  loadli.w r1,  -5960(r30)
004ae4  8be09020  mul.f.rn r1, r1, r9
004ae8  8be03020  mul.f.rn r1, r1, r3
004aec  e70b1fd0  storeli.w r1, -5960(r30)
004af0  e3004f01  loadli.w r1,  160(r30)
004af4  3b810000  bneq r1, zero, 64
004af8  b3001028  zext_int2long r[1:2], zero
004afc  13a11300  seteq.d r2, r[7:8], r[1:2]
004b00  ab00803f  lui r1, 260096
004b04  bb100100  bneq r2, zero, 36
004b08  00a00000  mfence { lm }
004b0c  9f400000  addli r1, zero, 4
004b10  2b0100f0  lui r2, 983040
004b14  9f010fda  addli r3, r30, -4864
004b18  97902000  or r1, r1, r2
004b1c  ffa03300  l_gm2lm r1, r3, 0(r[7:8])
004b20  00a00200  mfence { lm, gm }
004b24  e3000fda  loadli.w r1,  -4864(r30)
004b28  63017fd1  loadli.w r2,  -5960(r30)
004b2c  0b611120  mul.f.rn r2, r2, r1
004b30  e70b2fd0  storeli.w r2, -5960(r30)
004b34  e3404f01  loadli.w r1,  164(r30)
004b38  3ba10000  bneq r1, zero, 72
004b3c  9f014fd1  addli r3, r30, -5984
004b40  b3001028  zext_int2long r[1:2], zero
004b44  6bd20100  load.d r[4:5], 0(r3)
004b48  13211200  seteq.d r2, r[4:5], r[1:2]
004b4c  ab00803f  lui r1, 260096
004b50  bb100100  bneq r2, zero, 36
004b54  00a00000  mfence { lm }
004b58  9f400000  addli r1, zero, 4
004b5c  2b0100f0  lui r2, 983040
004b60  9f010fda  addli r3, r30, -4864
004b64  97902000  or r1, r1, r2
004b68  ff203200  l_gm2lm r1, r3, 0(r[4:5])
004b6c  00a00200  mfence { lm, gm }
004b70  e3000fda  loadli.w r1,  -4864(r30)
004b74  63017fd1  loadli.w r2,  -5960(r30)
004b78  0b611120  mul.f.rn r2, r2, r1
004b7c  e70b2fd0  storeli.w r2, -5960(r30)
004b80  b3001028  zext_int2long r[1:2], zero
004b84  e3014f01  loadli.w r3,  160(r30)
004b88  13a21300  seteq.d r4, r[7:8], r[1:2]
004b8c  1f210000  addli r2, zero, 2
004b90  1d000100  lock zero, r2
004b94  0d000022  ew_cfg zero, zero, zero, 17
004b98  9f100000  addli r1, zero, 1
004b9c  1d100100  unlock r2
004ba0  37a00100  beq r3, zero, 8
004ba4  9f000600  addli r1, r12, 0
004ba8  9f010000  addli r3, zero, 0
004bac  3b200200  bneq r4, zero, 8
004bb0  9f810000  addli r3, r1, 0
004bb4  eb508f02  load.d r[1:2], 40(r30)
004bb8  9f021fda  addli r5, r30, -4856
004bbc  73b07200  store.d r[7:8], 0(r5)
004bc0  3b610200  bneq r4, zero, 88
004bc4  63024f01  loadli.w r4,  160(r30)
004bc8  9f120000  addli r5, zero, 1
004bcc  3b315200  bneq r4, r5, 76
004bd0  37a10100  beq r3, zero, 72
004bd4  1f020002  addli r4, zero, 256
004bd8  67003fda  storeli.w r3, -4864(r30)
004bdc  1f041fda  addli r8, r30, -4856
004be0  1f030fda  addli r6, r30, -4864
004be4  00a00000  mfence { lm }
004be8  8b914140  min.s r3, r3, r4
004bec  6b520400  load.d r[4:5], 0(r8)
004bf0  ab0300f0  lui r7, 983040
004bf4  1f032300  addli r6, r6, 16
004bf8  9bb12100  slli r3, r3, 2
004bfc  97917100  or r3, r3, r7
004c00  ff216200  l_gm2lm r3, r6, 0(r[4:5])
004c04  b3013028  zext_int2long r[3:4], zero
004c08  9f022fe2  addli r5, r30, -3824
004c0c  00a00200  mfence { lm, gm }
004c10  73b03200  store.d r[3:4], 0(r5)
004c14  5b010000  j 8
004c18  67000fda  storeli.w zero, -4864(r30)
004c1c  eb510f03  load.d r[3:4], 48(r30)
004c20  9f027fce  addli r5, r30, -6344
004c24  9f130000  addli r7, zero, 1
004c28  670e0fd0  storeli.w zero, -5920(r30)
004c2c  73b03200  store.d r[3:4], 0(r5)
004c30  9f01dfd1  addli r3, r30, -5912
004c34  73b01100  store.d r[1:2], 0(r3)
004c38  e340efcb  loadli.w r1,  -6668(r30)
004c3c  3f917006  blt.s r1, r7, 3140
004c40  e302ef01  loadli.w r5,  240(r30)
004c44  e3410f02  loadli.w r3,  260(r30)
004c48  e340ff01  loadli.w r1,  252(r30)
004c4c  63040f02  loadli.w r8,  256(r30)
004c50  63425f02  loadli.w r4,  300(r30)
004c54  63459fcf  loadli.w r10,  -6196(r30)
004c58  e305df02  loadli.w r11,  360(r30)
004c5c  63464f03  loadli.w r12,  420(r30)
004c60  6303ff01  loadli.w r6,  248(r30)
004c64  63012f02  loadli.w r2,  272(r30)
004c68  e3441f02  loadli.w r9,  268(r30)
004c6c  63493f01  loadli.w r18,  156(r30)
004c70  63071f03  loadli.w r14,  392(r30)
004c74  9f8a0800  addli r21, r17, 0
004c78  1f0c0000  addli r24, zero, 0
004c7c  1f080000  addli r16, zero, 0
004c80  9f070000  addli r15, zero, 0
004c84  9f080000  addli r17, zero, 0
004c88  1f0a0000  addli r20, zero, 0
004c8c  1f0b0000  addli r22, zero, 0
004c90  9f0b0000  addli r23, zero, 0
004c94  67480fd0  storeli.w zero, -6012(r30)
004c98  8b92a241  min.s r5, r5, r26
004c9c  9ff1f1ff  addli r3, r3, -1
004ca0  9ff0f0ff  addli r1, r1, -1
004ca4  1b751500  setlti r10, r10, 1
004ca8  0b119120  mul.s r2, r2, r9
004cac  1f73f3ff  addli r6, r6, -1
004cb0  1f7d3000  addli r26, zero, 31
004cb4  9f140000  addli r9, zero, 1
004cb8  8b920248  max.s r5, r5, zero
004cbc  e7043fce  storeli.w r3, -6328(r30)
004cc0  9f010fda  addli r3, r30, -4864
004cc4  67061fce  storeli.w r1, -6304(r30)
004cc8  e746afce  storeli.w r10, -6292(r30)
004ccc  1bf51500  setlti r10, r11, 1
004cd0  e7076fd0  storeli.w r6, -6024(r30)
004cd4  0b932a20  mul.s r6, r21, r2
004cd8  9f4a2000  addli r21, zero, 20
004cdc  67095fce  storeli.w r5, -6256(r30)
004ce0  8b125410  add.s r5, r8, r5
004ce4  9f812100  addli r3, r3, 16
004ce8  e706afce  storeli.w r10, -6296(r30)
004cec  1b751600  setlti r10, r12, 1
004cf0  1f160000  addli r12, zero, 1
004cf4  e7446fce  storeli.w r6, -6324(r30)
004cf8  9ff0f2ff  addli r1, r5, -1
004cfc  9f02cfd1  addli r5, r30, -5920
004d00  67073fd0  storeli.w r3, -6032(r30)
004d04  6746afce  storeli.w r10, -6300(r30)
004d08  1b05f900  andi r10, r18, 15
004d0c  1f090700  addli r18, r14, 0
004d10  1f270000  addli r14, zero, 2
004d14  9f812200  addli r3, r5, 16
004d18  8b908030  div.s r1, r1, r8
004d1c  670bafd0  storeli.w r10, -5968(r30)
004d20  1f150000  addli r10, zero, 1
004d24  e7492fd1  storeli.w r18, -5988(r30)
004d28  e7063fd0  storeli.w r3, -6040(r30)
004d2c  9f71f2ff  addli r3, r4, -1
004d30  670d3fce  storeli.w r3, -6192(r30)
004d34  9b317200  slli r3, r4, 7
004d38  e74d3fd0  storeli.w r3, -5924(r30)
004d3c  9f110000  addli r3, zero, 1
004d40  67441fd0  storeli.w r1, -6076(r30)
004d44  9f100000  addli r1, zero, 1
004d48  674c3fce  storeli.w r3, -6204(r30)
004d4c  9f110000  addli r3, zero, 1
004d50  67481fce  storeli.w r1, -6268(r30)
004d54  9f100000  addli r1, zero, 1
004d58  67493fd0  storeli.w r3, -5996(r30)
004d5c  9f110000  addli r3, zero, 1
004d60  670c3fce  storeli.w r3, -6208(r30)
004d64  e341cfcb  loadli.w r3,  -6684(r30)
004d68  67083fce  storeli.w r3, -6272(r30)
004d6c  e3017fd1  loadli.w r3,  -5960(r30)
004d70  e70b3fd0  storeli.w r3, -5960(r30)
004d74  5b090000  j 72
004d78  e3410fcf  loadli.w r3,  -6268(r30)
004d7c  63420fd1  loadli.w r4,  -6012(r30)
004d80  e3422fd1  loadli.w r5,  -5996(r30)
004d84  0b1bab18  sub.s r22, r22, r10
004d88  0b1a9a18  sub.s r20, r20, r9
004d8c  0b150558  neg.s r10, r10
004d90  8b940458  neg.s r9, r9
004d94  0b1c3c18  sub.s r24, r24, r3
004d98  8b910158  neg.s r3, r3
004d9c  1f120200  addli r4, r4, 1
004da0  8b985818  sub.s r17, r17, r5
004da4  8b920258  neg.s r5, r5
004da8  67483fce  storeli.w r3, -6268(r30)
004dac  e341efcb  loadli.w r3,  -6668(r30)
004db0  67495fd0  storeli.w r5, -5996(r30)
004db4  67484fd0  storeli.w r4, -6012(r30)
004db8  372b3204  beq r4, r3, 2760
004dbc  e3010fcf  loadli.w r3,  -6272(r30)
004dc0  b70a3c04  beq r24, r3, 2720
004dc4  e302efcb  loadli.w r5,  -6672(r30)
004dc8  63430fd1  loadli.w r6,  -6012(r30)
004dcc  e301cfcb  loadli.w r3,  -6688(r30)
004dd0  e3456fcc  loadli.w r11,  -6604(r30)
004dd4  e7488fcf  storeli.w r24, -6260(r30)
004dd8  e70d9fce  storeli.w r9, -6184(r30)
004ddc  0b125320  mul.s r4, r6, r5
004de0  0b924118  sub.s r4, r3, r4
004de4  e3019fce  loadli.w r3,  -6328(r30)
004de8  0b924240  min.s r4, r5, r4
004dec  e3428fd0  loadli.w r5,  -6076(r30)
004df0  0b120248  max.s r4, r4, zero
004df4  0b924110  add.s r4, r3, r4
004df8  e3011fd0  loadli.w r3,  -6136(r30)
004dfc  0b143230  div.s r8, r4, r3
004e00  e3419fce  loadli.w r3,  -6324(r30)
004e04  8b916120  mul.s r3, r3, r6
004e08  63430fcf  loadli.w r6,  -6268(r30)
004e0c  67493fce  storeli.w r3, -6252(r30)
004e10  9ff1f2ff  addli r3, r5, -1
004e14  8b125420  mul.s r5, r8, r5
004e18  e70e8fce  storeli.w r8, -6168(r30)
004e1c  e7453fce  storeli.w r3, -6308(r30)
004e20  e3418fcc  loadli.w r3,  -6588(r30)
004e24  e7475fce  storeli.w r5, -6276(r30)
004e28  0b936120  mul.s r6, r3, r6
004e2c  8b958151  fmac.s r11, r3, r24
004e30  0b928121  mul.s r4, r3, r24
004e34  9f71f4ff  addli r3, r8, -1
004e38  67053fce  storeli.w r3, -6320(r30)
004e3c  e3018fcc  loadli.w r3,  -6592(r30)
004e40  67076fce  storeli.w r6, -6288(r30)
004e44  e70bbfce  storeli.w r11, -6216(r30)
004e48  8b914118  sub.s r3, r3, r4
004e4c  e7083fce  storeli.w r3, -6264(r30)
004e50  5b100000  j 128
004e54  63418fcf  loadli.w r2,  -6204(r30)
004e58  e3411fcf  loadli.w r3,  -6260(r30)
004e5c  6302efce  loadli.w r4,  -6288(r30)
004e60  63034fcf  loadli.w r6,  -6240(r30)
004e64  e342ffce  loadli.w r5,  -6276(r30)
004e68  e34c8fd0  loadli.w r25,  -6076(r30)
004e6c  0b1bab18  sub.s r22, r22, r10
004e70  0b150558  neg.s r10, r10
004e74  0b110158  neg.s r2, r2
004e78  9f060300  addli r13, r6, 0
004e7c  674c2fce  storeli.w r2, -6204(r30)
004e80  63410fcf  loadli.w r2,  -6268(r30)
004e84  8b912110  add.s r3, r3, r2
004e88  63412fd1  loadli.w r2,  -5996(r30)
004e8c  e7483fce  storeli.w r3, -6260(r30)
004e90  8b982818  sub.s r17, r17, r2
004e94  0b110158  neg.s r2, r2
004e98  67492fd0  storeli.w r2, -5996(r30)
004e9c  63018fcf  loadli.w r2,  -6208(r30)
004ea0  8b9b2b18  sub.s r23, r23, r2
004ea4  0b110158  neg.s r2, r2
004ea8  670c2fce  storeli.w r2, -6208(r30)
004eac  63017fcf  loadli.w r2,  -6216(r30)
004eb0  0b114110  add.s r2, r2, r4
004eb4  e70b2fce  storeli.w r2, -6216(r30)
004eb8  63011fcf  loadli.w r2,  -6264(r30)
004ebc  0b114118  sub.s r2, r2, r4
004ec0  63020fcf  loadli.w r4,  -6272(r30)
004ec4  e7082fce  storeli.w r2, -6264(r30)
004ec8  1f810200  addli r2, r5, 0
004ecc  37964104  beq r3, r4, 2436
004ed0  13015100  seteq r2, r2, r5
004ed4  e341cfce  loadli.w r3,  -6300(r30)
004ed8  1f840b00  addli r8, r23, 0
004edc  17113100  or r2, r2, r3
004ee0  bb100100  bneq r2, zero, 36
004ee4  63022fd0  loadli.w r4,  -6128(r30)
004ee8  1f014fe2  addli r2, r30, -3808
004eec  abf20000  lui r5, 15
004ef0  1f72f2ff  addli r4, r4, -1
004ef4  9b92f2ff  ori r5, r5, 4095
004ef8  73105100  store.h r5, 0(r2)
004efc  1f210100  addli r2, r2, 2
004f00  bb3f02fe  bneq r4, zero, -20
004f04  e3418fcc  loadli.w r3,  -6588(r30)
004f08  63411fcf  loadli.w r2,  -6260(r30)
004f0c  63028fcc  loadli.w r4,  -6592(r30)
004f10  0b113120  mul.s r2, r2, r3
004f14  0b122218  sub.s r4, r4, r2
004f18  0b924140  min.s r4, r3, r4
004f1c  e301cfce  loadli.w r3,  -6304(r30)
004f20  0b120248  max.s r4, r4, zero
004f24  674f4fce  storeli.w r4, -6156(r30)
004f28  0b924110  add.s r4, r3, r4
004f2c  e3012fce  loadli.w r3,  -6384(r30)
004f30  8b113230  div.s r3, r4, r3
004f34  13823600  seteq r4, r13, r3
004f38  9f860100  addli r13, r3, 0
004f3c  e301dfce  loadli.w r3,  -6296(r30)
004f40  17123200  or r4, r4, r3
004f44  bb100200  bneq r4, zero, 36
004f48  63021fce  loadli.w r4,  -6392(r30)
004f4c  e3020fd0  loadli.w r5,  -6144(r30)
004f50  2bf30000  lui r6, 15
004f54  9ff2f2ff  addli r5, r5, -1
004f58  1b13f3ff  ori r6, r6, 4095
004f5c  73106200  store.h r6, 0(r4)
004f60  1f220200  addli r4, r4, 2
004f64  bbbf02fe  bneq r5, zero, -20
004f68  e3418fd0  loadli.w r3,  -6076(r30)
004f6c  13823c00  seteq r4, r25, r3
004f70  e341dfce  loadli.w r3,  -6292(r30)
004f74  17123200  or r4, r4, r3
004f78  bb100200  bneq r4, zero, 36
004f7c  63422fcd  loadli.w r4,  -6508(r30)
004f80  e3429fcf  loadli.w r5,  -6196(r30)
004f84  2bf30000  lui r6, 15
004f88  9ff2f2ff  addli r5, r5, -1
004f8c  1b13f3ff  ori r6, r6, 4095
004f90  73106200  store.h r6, 0(r4)
004f94  1f220200  addli r4, r4, 2
004f98  bbbf02fe  bneq r5, zero, -20
004f9c  2bf2ffff  lui r4, 1048575
004fa0  63438fd0  loadli.w r6,  -6076(r30)
004fa4  e3418fcf  loadli.w r3,  -6204(r30)
004fa8  9f020000  addli r5, zero, 0
004fac  9f0b0400  addli r23, r8, 0
004fb0  3f303000  blt.s zero, r3, 12
004fb4  e342bfce  loadli.w r5,  -6308(r30)
004fb8  1b13f2ff  ori r6, r4, 4095
004fbc  9f850200  addli r11, r5, 0
004fc0  9f010300  addli r3, r6, 0
004fc4  670adfce  storeli.w r13, -6240(r30)
004fc8  37ba32fe  beq r5, r3, -372
004fcc  2bf2ffff  lui r4, 1048575
004fd0  1f8c0600  addli r24, r13, 0
004fd4  1b12f2ff  ori r4, r4, 4095
004fd8  3f201000  blt.s zero, r1, 8
004fdc  1f0c0200  addli r24, r4, 0
004fe0  e302dfcf  loadli.w r5,  -6168(r30)
004fe4  63431fcf  loadli.w r6,  -6260(r30)
004fe8  e7095fd0  storeli.w r5, -5992(r30)
004fec  3f20c000  blt.s zero, r12, 8
004ff0  e7094fd0  storeli.w r4, -5992(r30)
004ff4  9f0c0000  addli r25, zero, 0
004ff8  3f201000  blt.s zero, r1, 8
004ffc  9ffcf6ff  addli r25, r13, -1
005000  9f060000  addli r13, zero, 0
005004  e74b3fce  storeli.w r3, -6212(r30)
005008  3f20c000  blt.s zero, r12, 8
00500c  e306afce  loadli.w r13,  -6320(r30)
005010  e3418fcc  loadli.w r3,  -6588(r30)
005014  63021fcf  loadli.w r4,  -6264(r30)
005018  e3428fcf  loadli.w r5,  -6204(r30)
00501c  9f0b0400  addli r23, r8, 0
005020  0b924140  min.s r4, r3, r4
005024  e3418fd0  loadli.w r3,  -6076(r30)
005028  8b925120  mul.s r5, r3, r5
00502c  8b110248  max.s r3, r4, zero
005030  e7093fce  storeli.w r3, -6248(r30)
005034  e3416fcc  loadli.w r3,  -6604(r30)
005038  0b113110  add.s r2, r2, r3
00503c  670e2fce  storeli.w r2, -6176(r30)
005040  63417fcf  loadli.w r2,  -6212(r30)
005044  0b115118  sub.s r2, r2, r5
005048  e7432fd0  storeli.w r2, -6084(r30)
00504c  63016fcc  loadli.w r2,  -6608(r30)
005050  0b112320  mul.s r2, r6, r2
005054  1f830000  addli r6, r1, 0
005058  e74d2fce  storeli.w r2, -6180(r30)
00505c  db090000  j 76
005060  e3418fcf  loadli.w r3,  -6204(r30)
005064  e305cfd0  loadli.w r11,  -6048(r30)
005068  e30b9fcf  loadli.w r23,  -6200(r30)
00506c  8b100358  neg.s r1, r6
005070  8b1c6c18  sub.s r25, r24, r6
005074  1f0c0100  addli r24, r2, 0
005078  63417fcf  loadli.w r2,  -6212(r30)
00507c  0b1bab18  sub.s r22, r22, r10
005080  0b150558  neg.s r10, r10
005084  1f830000  addli r6, r1, 0
005088  8b953510  add.s r11, r11, r3
00508c  e3412fd1  loadli.w r3,  -5996(r30)
005090  8b983818  sub.s r17, r17, r3
005094  8b910158  neg.s r3, r3
005098  67493fd0  storeli.w r3, -5996(r30)
00509c  e3018fcf  loadli.w r3,  -6208(r30)
0050a0  8b9b3b10  add.s r23, r23, r3
0050a4  b7c625fe  beq r11, r2, -592
0050a8  6706bfd0  storeli.w r11, -6048(r30)
0050ac  e70c7fcf  storeli.w r23, -6200(r30)
0050b0  3be08c01  bneq r25, r24, 24
0050b4  abf0ffff  lui r1, 1048575
0050b8  1b91f0ff  ori r2, r1, 4095
0050bc  bf1e61fe  blt.s r2, r6, -92
0050c0  63014fcf  loadli.w r2,  -6240(r30)
0050c4  dbf3ffff  j -100
0050c8  63417fd0  loadli.w r2,  -6084(r30)
0050cc  63022fcd  loadli.w r4,  -6512(r30)
0050d0  e3413fcd  loadli.w r3,  -6500(r30)
0050d4  e3022fcf  loadli.w r5,  -6256(r30)
0050d8  6702afd0  storeli.w r10, -6112(r30)
0050dc  e7018fd1  storeli.w r24, -6120(r30)
0050e0  67406fd0  storeli.w r6, -6140(r30)
0050e4  13812502  setneq r2, r11, r2
0050e8  8b904b38  mod.s r1, r23, r4
0050ec  8b904010  add.s r1, r1, r4
0050f0  e7032fd0  storeli.w r2, -6088(r30)
0050f4  63412fcf  loadli.w r2,  -6252(r30)
0050f8  0b944038  mod.s r8, r1, r4
0050fc  63022fce  loadli.w r4,  -6384(r30)
005100  0b912510  add.s r2, r11, r2
005104  8b1b6220  mul.s r23, r4, r6
005108  8b109221  mul.s r1, r4, r25
00510c  e7442fd0  storeli.w r2, -6068(r30)
005110  0b913520  mul.s r2, r11, r3
005114  e3057fcf  loadli.w r11,  -6216(r30)
005118  e74f7fcf  storeli.w r23, -6148(r30)
00511c  0b912218  sub.s r2, r5, r2
005120  e74a8fd0  storeli.w r8, -5972(r30)
005124  8b159251  fmac.s r11, r4, r25
005128  1b321400  slli r4, r8, 1
00512c  0b912140  min.s r2, r3, r2
005130  6705bfd0  storeli.w r11, -6064(r30)
005134  0b110148  max.s r2, r2, zero
005138  e70f2fce  storeli.w r2, -6152(r30)
00513c  63412fcd  loadli.w r2,  -6508(r30)
005140  8b114110  add.s r3, r2, r4
005144  63013fcf  loadli.w r2,  -6248(r30)
005148  e7043fd0  storeli.w r3, -6072(r30)
00514c  0b111118  sub.s r2, r2, r1
005150  5b070000  j 56
005154  e3402fd1  loadli.w r1,  -5996(r30)
005158  0b160658  neg.s r12, r12
00515c  8b9c6c10  add.s r25, r25, r6
005160  0b1a9a10  add.s r20, r20, r9
005164  0b1bab10  add.s r22, r22, r10
005168  0b117119  sub.s r2, r2, r23
00516c  8b981818  sub.s r17, r17, r1
005170  8b900058  neg.s r1, r1
005174  67491fd0  storeli.w r1, -5996(r30)
005178  e300afd0  loadli.w r1,  -6064(r30)
00517c  8b907011  add.s r1, r1, r23
005180  67051fd0  storeli.w r1, -6064(r30)
005184  b7cc8cff  beq r25, r24, -208
005188  e3003fd1  loadli.w r1,  -5992(r30)
00518c  0b9ec018  sub.s r28, r1, r12
005190  b78a1602  beq r13, r1, 1696
005194  63451fce  loadli.w r10,  -6388(r30)
005198  e341bfcf  loadli.w r3,  -6180(r30)
00519c  e3050fce  loadli.w r11,  -6400(r30)
0051a0  e3042fce  loadli.w r9,  -6384(r30)
0051a4  6302ffcf  loadli.w r4,  -6152(r30)
0051a8  67422fd0  storeli.w r2, -6108(r30)
0051ac  67434fd1  storeli.w r20, -6092(r30)
0051b0  e3425fcf  loadli.w r5,  -6228(r30)
0051b4  67036fd1  storeli.w r22, -6096(r30)
0051b8  e7029fd1  storeli.w r25, -6104(r30)
0051bc  6709cfd0  storeli.w r12, -6000(r30)
0051c0  e748cfd1  storeli.w r28, -6004(r30)
0051c4  8b10aa38  mod.s r1, r20, r10
0051c8  0b13bb38  mod.s r6, r22, r11
0051cc  8b913c10  add.s r3, r25, r3
0051d0  0b912440  min.s r2, r9, r2
0051d4  0b949c20  mul.s r8, r25, r9
0051d8  67463fd0  storeli.w r3, -6044(r30)
0051dc  e341afcf  loadli.w r3,  -6188(r30)
0051e0  0b110148  max.s r2, r2, zero
0051e4  67042fd0  storeli.w r2, -6080(r30)
0051e8  63416fcf  loadli.w r2,  -6220(r30)
0051ec  0b1a3230  div.s r20, r4, r3
0051f0  e341efcf  loadli.w r3,  -6156(r30)
0051f4  6302cfcf  loadli.w r4,  -6176(r30)
0051f8  8b90a010  add.s r1, r1, r10
0051fc  0b13b310  add.s r6, r6, r11
005200  8b90a038  mod.s r1, r1, r10
005204  0b948118  sub.s r8, r3, r8
005208  8b11b338  mod.s r3, r6, r11
00520c  0b929c50  fmac.s r4, r25, r9
005210  8b9b8440  min.s r23, r9, r8
005214  670c4fd1  storeli.w r20, -5952(r30)
005218  0b932038  mod.s r6, r1, r2
00521c  9f000002  addli r1, zero, 256
005220  1f71faff  addli r2, r20, -1
005224  9bb41100  slli r9, r3, 1
005228  670a3fd0  storeli.w r3, -5984(r30)
00522c  0b141230  div.s r8, r4, r1
005230  e70c2fd0  storeli.w r2, -5944(r30)
005234  63011fce  loadli.w r2,  -6392(r30)
005238  8b900b48  max.s r1, r23, zero
00523c  9bbd5000  slli r27, r1, 5
005240  0b159110  add.s r10, r2, r9
005244  63016fcf  loadli.w r2,  -6224(r30)
005248  e708afd0  storeli.w r10, -6008(r30)
00524c  8b122350  fmac.s r5, r6, r2
005250  1b318400  slli r2, r8, 8
005254  67452fd0  storeli.w r2, -6060(r30)
005258  6301afcf  loadli.w r2,  -6192(r30)
00525c  0b111110  add.s r2, r2, r1
005260  e7452fd0  storeli.w r2, -6052(r30)
005264  db060000  j 52
005268  1f112000  addli r2, zero, 17
00526c  7d000100  xsignal r2, 0
005270  1f613000  addli r2, zero, 30
005274  7d000100  xsignal r2, 0
005278  63062fd1  loadli.w r12,  -6000(r30)
00527c  634e1fd1  loadli.w r28,  -6004(r30)
005280  63051fd1  loadli.w r10,  -6008(r30)
005284  63412fd1  loadli.w r2,  -5996(r30)
005288  8b96c610  add.s r13, r13, r12
00528c  8b982810  add.s r17, r17, r2
005290  63013fd1  loadli.w r2,  -5992(r30)
005294  b7e52602  beq r13, r2, 1400
005298  63411fd0  loadli.w r2,  -6132(r30)
00529c  0b932838  mod.s r6, r17, r2
0052a0  0b132310  add.s r6, r6, r2
0052a4  0b142338  mod.s r8, r6, r2
0052a8  1f030000  addli r6, zero, 0
0052ac  bf700400  blt.s r8, zero, 60
0052b0  63012fd0  loadli.w r2,  -6128(r30)
0052b4  cb508100  ble.s r2, r8, 52
0052b8  1b331400  slli r6, r8, 1
0052bc  1f014fe2  addli r2, r30, -3808
0052c0  e3449fd0  loadli.w r9,  -6068(r30)
0052c4  0b146110  add.s r8, r2, r6
0052c8  63418fd0  loadli.w r2,  -6076(r30)
0052cc  6b330400  load.hu r6, 0(r8)
0052d0  8b942650  fmac.s r9, r13, r2
0052d4  3bb06400  bneq r9, r6, 12
0052d8  1f030000  addli r6, zero, 0
0052dc  db010000  j 12
0052e0  1f130000  addli r6, zero, 1
0052e4  73109400  store.h r9, 0(r8)
0052e8  63410fd1  loadli.w r2,  -6012(r30)
0052ec  e301ffd0  loadli.w r3,  -6024(r30)
0052f0  1384c601  seteq r8, r13, r28
0052f4  93043100  seteq r9, r2, r3
0052f8  178e8400  and r28, r9, r8
0052fc  9b241e00  xori r9, r28, 1
005300  bbb00400  bneq r9, zero, 44
005304  63014fd1  loadli.w r2,  -5984(r30)
005308  bf100100  blt.s r2, zero, 36
00530c  63010fd0  loadli.w r2,  -6144(r30)
005310  e3014fd1  loadli.w r3,  -5984(r30)
005314  4b603100  ble.s r2, r3, 24
005318  6b360500  load.hu r12, 0(r10)
00531c  6341cfd0  loadli.w r2,  -6044(r30)
005320  3720c100  beq r2, r12, 8
005324  6346cfd0  loadli.w r12,  -6044(r30)
005328  7310c500  store.h r12, 0(r10)
00532c  63415fd1  loadli.w r2,  -5972(r30)
005330  9b750100  setlti r11, r2, 0
005334  9795b400  or r11, r9, r11
005338  bba00500  bneq r11, zero, 40
00533c  63419fcf  loadli.w r2,  -6196(r30)
005340  e3415fd1  loadli.w r3,  -5972(r30)
005344  4b703100  ble.s r2, r3, 28
005348  e3019fd0  loadli.w r3,  -6072(r30)
00534c  6301cfd0  loadli.w r2,  -6048(r30)
005350  6bb60100  load.hu r12, 0(r3)
005354  3720c100  beq r2, r12, 8
005358  1f060100  addli r12, r2, 0
00535c  7390c100  store.h r12, 0(r3)
005360  63412fd0  loadli.w r2,  -6124(r30)
005364  97049400  and r9, r8, r9
005368  37607100  beq r2, r7, 24
00536c  9f310000  addli r3, zero, 3
005370  37493100  beq r2, r3, 592
005374  bb09e100  bneq r2, r14, 608
005378  63017fd0  loadli.w r2,  -6088(r30)
00537c  17032300  and r6, r6, r2
005380  37590300  beq r6, zero, 596
005384  6301bfd0  loadli.w r2,  -6056(r30)
005388  e3019fd1  loadli.w r3,  -5944(r30)
00538c  0b932110  add.s r6, r3, r2
005390  0b132330  div.s r6, r6, r2
005394  3f5b73fe  blt.s r6, r7, -300
005398  630b8fd1  loadli.w r22,  -5952(r30)
00539c  1f040000  addli r8, zero, 0
0053a0  17169e00  or r12, r28, r9
0053a4  5b040000  j 32
0053a8  9f170000  addli r15, zero, 1
0053ac  1f080000  addli r16, zero, 0
0053b0  6301bfd0  loadli.w r2,  -6056(r30)
0053b4  1f73f3ff  addli r6, r6, -1
0053b8  0b1b2b18  sub.s r22, r22, r2
0053bc  0b142410  add.s r8, r8, r2
0053c0  b72a03fe  beq r6, zero, -344
0053c4  7d900a00  xwait r21, 0
0053c8  7d100d00  xwait r26, 0
0053cc  b71f06fe  beq r12, zero, -28
0053d0  1f014000  addli r2, zero, 32
0053d4  8b142430  div.s r9, r8, r2
0053d8  6301bfd0  loadli.w r2,  -6056(r30)
0053dc  0b1a6141  min.s r20, r2, r22
0053e0  9bb55400  slli r11, r9, 5
0053e4  8b15b418  sub.s r11, r8, r11
0053e8  8b959d50  fmac.s r11, r27, r9
0053ec  9bb42500  slli r9, r11, 2
0053f0  8b945410  add.s r9, r9, r5
0053f4  37650e00  beq r28, zero, 344
0053f8  bfee7bfe  blt.s r23, r7, -72
0053fc  9b85f70f  andi r11, r15, 255
005400  37b00500  beq r11, zero, 12
005404  1f014000  addli r2, zero, 32
005408  7d100100  xwait r2, 0
00540c  e30c0fda  loadli.w r25,  -4864(r30)
005410  b7910c00  beq r25, zero, 100
005414  bf814c00  blt.s r25, r4, 96
005418  e3052fe2  loadli.w r11,  -3824(r30)
00541c  3f30b200  blt.s r4, r11, 12
005420  9f850502  addli r11, r11, 256
005424  3f41b200  blt.s r4, r11, 80
005428  6341afd0  loadli.w r2,  -6060(r30)
00542c  1f052fe2  addli r10, r30, -3824
005430  1f091fda  addli r18, r30, -4856
005434  67012fe2  storeli.w r2, -3824(r30)
005438  8b952c18  sub.s r11, r25, r2
00543c  1f010002  addli r2, zero, 256
005440  00a00000  mfence { lm }
005444  6b6c0500  loadext.w r[24:25], 0(r10)
005448  8b952540  min.s r11, r11, r2
00544c  6b510900  load.d r[2:3], 0(r18)
005450  2b0900f0  lui r18, 983040
005454  6305efd0  loadli.w r10,  -6032(r30)
005458  9bb52500  slli r11, r11, 2
00545c  173cec02  sll.d r[24:25], r[24:25], r14
005460  97952501  or r11, r11, r18
005464  63493fd1  loadli.w r18,  -5988(r30)
005468  0b218111  add.ul r[2:3], r[2:3], r[24:25]
00546c  ff25a100  l_gm2lm r11, r10, 0(r[2:3])
005470  00a00200  mfence { lm, gm }
005474  e30ccfd1  loadli.w r25,  -5920(r30)
005478  b7810c00  beq r25, zero, 96
00547c  3ff14c00  blt.s r25, r4, 92
005480  e305efd9  loadli.w r11,  -4880(r30)
005484  3f30b200  blt.s r4, r11, 12
005488  1f810502  addli r2, r11, 256
00548c  3f312200  blt.s r4, r2, 76
005490  6341afd0  loadli.w r2,  -6060(r30)
005494  1f05efd9  addli r10, r30, -4880
005498  9f010002  addli r3, zero, 256
00549c  670f2fd8  storeli.w r2, -4880(r30)
0054a0  0b912c18  sub.s r2, r25, r2
0054a4  00a00000  mfence { lm }
0054a8  0b113140  min.s r2, r2, r3
0054ac  6b6c0500  loadext.w r[24:25], 0(r10)
0054b0  9f01dfd1  addli r3, r30, -5912
0054b4  6bd50100  load.d r[10:11], 0(r3)
0054b8  1b312100  slli r2, r2, 2
0054bc  ab0100f0  lui r3, 983040
0054c0  173cec02  sll.d r[24:25], r[24:25], r14
0054c4  17113100  or r2, r2, r3
0054c8  e301dfd0  loadli.w r3,  -6040(r30)
0054cc  0b258511  add.ul r[10:11], r[10:11], r[24:25]
0054d0  7f213500  l_gm2lm r2, r3, 0(r[10:11])
0054d4  00a00200  mfence { lm, gm }
0054d8  1d000700  lock zero, r14
0054dc  8d030020  ew_cfg r7, zero, zero, 16
0054e0  0d000002  ew_cfg zero, zero, zero, 1
0054e4  3f217a00  blt.s r20, r7, 72
0054e8  6301afd1  loadli.w r2,  -5936(r30)
0054ec  9f71faff  addli r3, r20, -1
0054f0  63458fd1  loadli.w r10,  -5948(r30)
0054f4  0d800104  ew_cfg zero, r3, zero, 2
0054f8  8d030006  ew_cfg r7, zero, zero, 3
0054fc  8d030000  ew_cfg r7, zero, zero, 0
005500  e3016fd1  loadli.w r3,  -5968(r30)
005504  8d010014  ew_cfg r3, zero, zero, 10
005508  e3419fd1  loadli.w r3,  -5940(r30)
00550c  0b112838  mod.s r2, r16, r2
005510  0b153150  fmac.s r10, r2, r3
005514  63017fd1  loadli.w r2,  -5960(r30)
005518  0d110000  ewcoeff_cfg r2, zero, zero, 0
00551c  8d000006  ew_cfg r1, zero, zero, 3
005520  8d801026  ew_cfg r1, r1, r1, 19
005524  2d859400  dsmadd r10, r9, r9, 0
005528  0d000000  ew_cfg zero, zero, zero, 0
00552c  0d000026  ew_cfg zero, zero, zero, 19
005530  0d000020  ew_cfg zero, zero, zero, 16
005534  1d100700  unlock r14
005538  1f114000  addli r2, zero, 33
00553c  7d000100  xsignal r2, 0
005540  1f180800  addli r16, r16, 1
005544  bb3928ff  bneq r16, r18, -404
005548  5bccffff  j -416
00554c  bf997bfe  blt.s r23, r7, -412
005550  1b81f70f  andi r2, r15, 255
005554  37300100  beq r2, zero, 12
005558  1f014000  addli r2, zero, 32
00555c  7d100100  xwait r2, 0
005560  6301afd1  loadli.w r2,  -5936(r30)
005564  e3418fd1  loadli.w r3,  -5948(r30)
005568  1d000700  lock zero, r14
00556c  8d030020  ew_cfg r7, zero, zero, 16
005570  0d000002  ew_cfg zero, zero, zero, 1
005574  0d000014  ew_cfg zero, zero, zero, 10
005578  2b05803f  lui r10, 260096
00557c  e3459fd1  loadli.w r11,  -5940(r30)
005580  0d150000  ewcoeff_cfg r10, zero, zero, 0
005584  8d000006  ew_cfg r1, zero, zero, 3
005588  0b112838  mod.s r2, r16, r2
00558c  8b11b150  fmac.s r3, r2, r11
005590  1f71faff  addli r2, r20, -1
005594  0d000104  ew_cfg zero, r2, zero, 2
005598  8d801026  ew_cfg r1, r1, r1, 19
00559c  cdd10400  hp_ssmul r3, r9, zero, 0
0055a0  0d000026  ew_cfg zero, zero, zero, 19
0055a4  0d000020  ew_cfg zero, zero, zero, 16
0055a8  1d100700  unlock r14
0055ac  1f114000  addli r2, zero, 33
0055b0  7d000100  xsignal r2, 0
0055b4  1f180800  addli r16, r16, 1
0055b8  bb6728ff  bneq r16, r18, -520
0055bc  dbbdffff  j -532
0055c0  6301cfd0  loadli.w r2,  -6048(r30)
0055c4  e3417fd0  loadli.w r3,  -6084(r30)
0055c8  13043100  seteq r8, r2, r3
0055cc  17036400  and r6, r8, r6
0055d0  bb5603fe  bneq r6, zero, -588
0055d4  6341bfd0  loadli.w r2,  -6052(r30)
0055d8  0b133131  div.s r6, r2, r19
0055dc  3f3273fe  blt.s r6, r7, -884
0055e0  630b8fd0  loadli.w r22,  -6080(r30)
0055e4  e30cafd0  loadli.w r25,  -6064(r30)
0055e8  17149e00  or r8, r28, r9
0055ec  1f860200  addli r12, r5, 0
0055f0  1f8c0800  addli r24, r17, 0
0055f4  db040000  j 36
0055f8  9f170000  addli r15, zero, 1
0055fc  1f080000  addli r16, zero, 0
005600  6341bfd1  loadli.w r2,  -5924(r30)
005604  0b162610  add.s r12, r12, r2
005608  8b9c3c11  add.s r25, r25, r19
00560c  1f73f3ff  addli r6, r6, -1
005610  0b1b3b19  sub.s r22, r22, r19
005614  375103fe  beq r6, zero, -940
005618  7d900a00  xwait r21, 0
00561c  7d100d00  xwait r26, 0
005620  b72f04fe  beq r8, zero, -24
005624  8b946941  min.s r9, r19, r22
005628  b7450e00  beq r28, zero, 368
00562c  3fdf74fe  blt.s r9, r7, -44
005630  1b81f70f  andi r2, r15, 255
005634  37300100  beq r2, zero, 12
005638  1f014000  addli r2, zero, 32
00563c  7d100100  xwait r2, 0
005640  630a0fda  loadli.w r20,  -4864(r30)
005644  b7310a00  beq r20, zero, 108
005648  bf219a01  blt.s r20, r25, 104
00564c  e3052fe2  loadli.w r11,  -3824(r30)
005650  3fb0bc00  blt.s r25, r11, 12
005654  1f810502  addli r2, r11, 256
005658  3fe12c00  blt.s r25, r2, 88
00565c  9f010002  addli r3, zero, 256
005660  0b913c30  div.s r2, r25, r3
005664  1b318100  slli r2, r2, 8
005668  67012fe2  storeli.w r2, -3824(r30)
00566c  0b112a18  sub.s r2, r20, r2
005670  1f0a2fe2  addli r20, r30, -3824
005674  00a00000  mfence { lm }
005678  0b113140  min.s r2, r2, r3
00567c  6b650a00  loadext.w r[10:11], 0(r20)
005680  9f011fda  addli r3, r30, -4856
005684  ebd80100  load.d r[17:18], 0(r3)
005688  ab0100f0  lui r3, 983040
00568c  1b312100  slli r2, r2, 2
005690  1735e502  sll.d r[10:11], r[10:11], r14
005694  17113100  or r2, r2, r3
005698  e301efd0  loadli.w r3,  -6032(r30)
00569c  0ba5a810  add.ul r[10:11], r[17:18], r[10:11]
0056a0  63493fd1  loadli.w r18,  -5988(r30)
0056a4  9f080c00  addli r17, r24, 0
0056a8  7f213500  l_gm2lm r2, r3, 0(r[10:11])
0056ac  00a00200  mfence { lm, gm }
0056b0  630acfd1  loadli.w r20,  -5920(r30)
0056b4  b7310a00  beq r20, zero, 108
0056b8  bf219a01  blt.s r20, r25, 104
0056bc  e305efd9  loadli.w r11,  -4880(r30)
0056c0  3fb0bc00  blt.s r25, r11, 12
0056c4  1f810502  addli r2, r11, 256
0056c8  3fe12c00  blt.s r25, r2, 88
0056cc  9f010002  addli r3, zero, 256
0056d0  0b913c30  div.s r2, r25, r3
0056d4  1b318100  slli r2, r2, 8
0056d8  670f2fd8  storeli.w r2, -4880(r30)
0056dc  0b112a18  sub.s r2, r20, r2
0056e0  1f0aefd9  addli r20, r30, -4880
0056e4  00a00000  mfence { lm }
0056e8  0b113140  min.s r2, r2, r3
0056ec  6b650a00  loadext.w r[10:11], 0(r20)
0056f0  9f01dfd1  addli r3, r30, -5912
0056f4  ebd80100  load.d r[17:18], 0(r3)
0056f8  ab0100f0  lui r3, 983040
0056fc  1b312100  slli r2, r2, 2
005700  1735e502  sll.d r[10:11], r[10:11], r14
005704  17113100  or r2, r2, r3
005708  e301dfd0  loadli.w r3,  -6040(r30)
00570c  0ba5a810  add.ul r[10:11], r[17:18], r[10:11]
005710  63493fd1  loadli.w r18,  -5988(r30)
005714  9f080c00  addli r17, r24, 0
005718  7f213500  l_gm2lm r2, r3, 0(r[10:11])
00571c  00a00200  mfence { lm, gm }
005720  1d000700  lock zero, r14
005724  8d030020  ew_cfg r7, zero, zero, 16
005728  0d000002  ew_cfg zero, zero, zero, 1
00572c  63018fd1  loadli.w r2,  -5952(r30)
005730  3f217100  blt.s r2, r7, 72
005734  6301afd1  loadli.w r2,  -5936(r30)
005738  63059fd1  loadli.w r10,  -5944(r30)
00573c  e3418fd1  loadli.w r3,  -5948(r30)
005740  0d000504  ew_cfg zero, r10, zero, 2
005744  8d030006  ew_cfg r7, zero, zero, 3
005748  8d030000  ew_cfg r7, zero, zero, 0
00574c  63056fd1  loadli.w r10,  -5968(r30)
005750  0d050014  ew_cfg r10, zero, zero, 10
005754  63057fd1  loadli.w r10,  -5960(r30)
005758  0d150000  ewcoeff_cfg r10, zero, zero, 0
00575c  0b112838  mod.s r2, r16, r2
005760  63459fd1  loadli.w r10,  -5940(r30)
005764  8d040006  ew_cfg r9, zero, zero, 3
005768  8d841026  ew_cfg r9, r1, r1, 19
00576c  8b11a150  fmac.s r3, r2, r10
005770  ad01c600  dsmadd r3, r12, r12, 0
005774  0d000000  ew_cfg zero, zero, zero, 0
005778  0d000026  ew_cfg zero, zero, zero, 19
00577c  0d000020  ew_cfg zero, zero, zero, 16
005780  1d100700  unlock r14
005784  1f114000  addli r2, zero, 33
005788  7d000100  xsignal r2, 0
00578c  1f180800  addli r16, r16, 1
005790  bb4928ff  bneq r16, r18, -400
005794  dbccffff  j -412
005798  bfa974fe  blt.s r9, r7, -408
00579c  1b81f70f  andi r2, r15, 255
0057a0  37300100  beq r2, zero, 12
0057a4  1f014000  addli r2, zero, 32
0057a8  7d100100  xwait r2, 0
0057ac  6301afd1  loadli.w r2,  -5936(r30)
0057b0  e3418fd1  loadli.w r3,  -5948(r30)
0057b4  1d000700  lock zero, r14
0057b8  8d030020  ew_cfg r7, zero, zero, 16
0057bc  0d000002  ew_cfg zero, zero, zero, 1
0057c0  0d000014  ew_cfg zero, zero, zero, 10
0057c4  2b05803f  lui r10, 260096
0057c8  e3459fd1  loadli.w r11,  -5940(r30)
0057cc  0d150000  ewcoeff_cfg r10, zero, zero, 0
0057d0  8d040006  ew_cfg r9, zero, zero, 3
0057d4  0b112838  mod.s r2, r16, r2
0057d8  8b11b150  fmac.s r3, r2, r11
0057dc  63019fd1  loadli.w r2,  -5944(r30)
0057e0  0d000104  ew_cfg zero, r2, zero, 2
0057e4  8d841026  ew_cfg r9, r1, r1, 19
0057e8  cd510600  hp_ssmul r3, r12, zero, 0
0057ec  0d000026  ew_cfg zero, zero, zero, 19
0057f0  0d000020  ew_cfg zero, zero, zero, 16
0057f4  1d100700  unlock r14
0057f8  1f114000  addli r2, zero, 33
0057fc  7d000100  xsignal r2, 0
005800  1f180800  addli r16, r16, 1
005804  bb7728ff  bneq r16, r18, -516
005808  5bbeffff  j -528
00580c  634a6fd0  loadli.w r20,  -6092(r30)
005810  630b6fd0  loadli.w r22,  -6096(r30)
005814  e304bfcf  loadli.w r9,  -6184(r30)
005818  63054fd0  loadli.w r10,  -6112(r30)
00581c  630c3fd0  loadli.w r24,  -6120(r30)
005820  63430fd0  loadli.w r6,  -6140(r30)
005824  e30c5fd0  loadli.w r25,  -6104(r30)
005828  e34bffcf  loadli.w r23,  -6148(r30)
00582c  63414fd0  loadli.w r2,  -6108(r30)
005830  9f060e00  addli r13, r28, 0
005834  abf0ffff  lui r1, 1048575
005838  9b90f0ff  ori r1, r1, 4095
00583c  e7091fd0  storeli.w r1, -5992(r30)
005840  3fd4c0fc  blt.s r1, r12, -1772
005844  e300dfcf  loadli.w r1,  -6168(r30)
005848  e7091fd0  storeli.w r1, -5992(r30)
00584c  5b21ffff  j -1784
005850  e34c8fd0  loadli.w r25,  -6076(r30)
005854  630c0fcf  loadli.w r24,  -6272(r30)
005858  1f810200  addli r2, r5, 0
00585c  9f060300  addli r13, r6, 0
005860  abf1ffff  lui r3, 1048575
005864  1b92f1ff  ori r4, r3, 4095
005868  e3410fcf  loadli.w r3,  -6268(r30)
00586c  67084fce  storeli.w r4, -6272(r30)
005870  3f2432fa  blt.s r4, r3, -2808
005874  e341cfcb  loadli.w r3,  -6684(r30)
005878  67083fce  storeli.w r3, -6272(r30)
00587c  db9ffeff  j -2820
005880  9f017fce  addli r3, r30, -6344
005884  b3001028  zext_int2long r[1:2], zero
005888  ebd50100  load.d r[11:12], 0(r3)
00588c  93a01500  seteq.d r1, r[11:12], r[1:2]
005890  bb910000  bneq r1, zero, 100
005894  63458fce  loadli.w r10,  -6332(r30)
005898  1f311000  addli r2, zero, 11
00589c  9f200000  addli r1, zero, 2
0058a0  1d800000  lock zero, r1
0058a4  dd810000  ld_sd_rdout r3, r1, zero, 0
0058a8  67003fda  storeli.w r3, -4864(r30)
0058ac  1d900000  unlock r1
0058b0  00a00000  mfence { lm }
0058b4  1301a104  setlt.u r2, r2, r10
0058b8  bb700100  bneq r2, zero, 60
0058bc  1f010fda  addli r2, r30, -4864
0058c0  9f410000  addli r3, zero, 4
0058c4  00d20002  load_param_i r4, 1
0058c8  9f421000  addli r5, zero, 12
0058cc  3303652c  zext_int2long r[6:7], r10
0058d0  0b15a210  add.s r10, r4, r10
0058d4  2b0400f0  lui r8, 983040
0058d8  17331302  sll.d r[6:7], r[6:7], r1
0058dc  93045504  setlt.u r9, r10, r5
0058e0  17948100  or r8, r3, r8
0058e4  0ba36510  add.ul r[6:7], r[11:12], r[6:7]
0058e8  7f342300  s_lm2gm r8, r2, 0(r[6:7])
0058ec  00a00200  mfence { lm, gm }
0058f0  3bff04fe  bneq r9, zero, -36
0058f4  7d000000  xsignal zero, 0
0058f8  80300002  core_id r1
0058fc  3be00000  bneq r1, zero, 24
005900  80500102  load_param_i r1, 2
005904  7d100000  xwait zero, 0
005908  9ff0f0ff  addli r1, r1, -1
00590c  bbef00fe  bneq r1, zero, -8
005910  7d400000  xsignal_mode_cfg zero
005914  9f0eafcb  addli sp, r30, -6704
005918  9f8e6e34  addli sp, sp, 6704
00591c  00a00300  mfence { lm, sm, gm }
005920  00100000  exit
005924  00000000  nop
