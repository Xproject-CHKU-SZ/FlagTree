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
000064  ff494201  bl_gm2lm r19, r20, 0(r[5:6])
000068  00a00200  mfence { lm, gm }
00006c  abfa0000  lui r21, 15
000070  9b9afaff  ori r21, r21, 4095
000074  80a10a04  csr_set csr3, r21
000078  00d00100  sync_group
00007c  fe8007e0  vmmov mr1, r15
000080  fe900720  vmmovh mr1, r15
000084  d7110000  jal 140
000088  00400000  trap
00008c  9f8e0ec8  addli sp, sp, -7168
000090  1f8f8e34  addli r30, sp, 6720
000094  b3013028  .word 0x283001b3
000098  eb500f04  load.d r[2:3], 64(r30)
00009c  93a13000  seteq.d r3, r[2:3], r[4:5]
0000a0  bbc00100  bneq r3, zero, 48
0000a4  00a00000  mfence { lm }
0000a8  9f410000  addli r3, zero, 4
0000ac  2b0200f0  lui r4, 983040
0000b0  9f024fe2  addli r5, r30, -3808
0000b4  97914100  or r3, r3, r4
0000b8  ffa15000  l_gm2lm r3, r5, 0(r[2:3])
0000bc  00a00200  mfence { lm, gm }
0000c0  63014fe2  loadli.w r2,  -3808(r30)
0000c4  9f100000  addli r1, zero, 1
0000c8  3b501100  bneq r2, r1, 20
0000cc  db090b00  j 22604
0000d0  1f010000  addli r2, zero, 0
0000d4  9f100000  addli r1, zero, 1
0000d8  3701112c  beq r2, r1, 22592
0000dc  63414f03  loadli.w r2,  420(r30)
0000e0  e3019f02  loadli.w r3,  328(r30)
0000e4  e74a3fce  storeli.w r3, -6228(r30)
0000e8  7dc00000  xsignal_mode_cfg r1
0000ec  67402fd0  storeli.w r2, -6140(r30)
0000f0  bf101100  blt.s r2, r1, 36
0000f4  63410fd0  loadli.w r2,  -6140(r30)
0000f8  9f004fe2  addli r1, r30, -3808
0000fc  abf10000  lui r3, 15
000100  1f71f1ff  addli r2, r2, -1
000104  9b91f1ff  ori r3, r3, 4095
000108  73903000  store.h r3, 0(r1)
00010c  9fa00000  addli r1, r1, 2
000110  bb3f01fe  bneq r2, zero, -20
000114  e3404f03  loadli.w r1,  420(r30)
000118  1f014fe2  addli r2, r30, -3808
00011c  63029f02  loadli.w r4,  328(r30)
000120  9f110000  addli r3, zero, 1
000124  9bb01000  slli r1, r1, 1
000128  e74f4fcc  storeli.w r4, -6404(r30)
00012c  8b101110  add.s r1, r2, r1
000130  e70e1fcc  storeli.w r1, -6424(r30)
000134  bf103200  blt.s r4, r3, 36
000138  e300dfcd  loadli.w r1,  -6424(r30)
00013c  6342ffcd  loadli.w r4,  -6404(r30)
000140  abf20000  lui r5, 15
000144  1f72f2ff  addli r4, r4, -1
000148  9b92f2ff  ori r5, r5, 4095
00014c  73905000  store.h r5, 0(r1)
000150  9fa00000  addli r1, r1, 2
000154  bb3f02fe  bneq r4, zero, -20
000158  e3009f02  loadli.w r1,  328(r30)
00015c  63424f03  loadli.w r4,  420(r30)
000160  e302df02  loadli.w r5,  360(r30)
000164  8b101210  add.s r1, r4, r1
000168  674f5fce  storeli.w r5, -6156(r30)
00016c  1bb21000  slli r4, r1, 1
000170  0b114110  add.s r2, r2, r4
000174  67002fce  storeli.w r2, -6400(r30)
000178  bf903200  blt.s r5, r3, 36
00017c  63010fce  loadli.w r2,  -6400(r30)
000180  e341efcf  loadli.w r3,  -6156(r30)
000184  2bf20000  lui r4, 15
000188  9ff1f1ff  addli r3, r3, -1
00018c  1b12f2ff  ori r4, r4, 4095
000190  73104100  store.h r4, 0(r2)
000194  1f210100  addli r2, r2, 2
000198  bbbf01fe  bneq r3, zero, -20
00019c  e3423f03  loadli.w r5,  412(r30)
0001a0  6302df02  loadli.w r4,  360(r30)
0001a4  6301bf02  loadli.w r2,  344(r30)
0001a8  e301ff02  loadli.w r3,  376(r30)
0001ac  9f034fd1  addli r7, r30, -5984
0001b0  6b5b0f08  load.d r[23:24], 128(r30)
0001b4  6b558f06  load.d r[11:12], 104(r30)
0001b8  6b5a8f05  load.d r[21:22], 88(r30)
0001bc  6b5c8f04  load.d r[25:26], 72(r30)
0001c0  1f048fd1  addli r8, r30, -5952
0001c4  e7495fd0  storeli.w r5, -5988(r30)
0001c8  e3422f02  loadli.w r5,  276(r30)
0001cc  8b904010  add.s r1, r1, r4
0001d0  8b113148  max.s r3, r2, r3
0001d4  1f014fe2  addli r2, r30, -3808
0001d8  1bb21000  slli r4, r1, 1
0001dc  9f100000  addli r1, zero, 1
0001e0  e70c3fce  storeli.w r3, -6200(r30)
0001e4  e74c5fce  storeli.w r5, -6196(r30)
0001e8  e3021f02  loadli.w r5,  264(r30)
0001ec  0b114110  add.s r2, r2, r4
0001f0  67025fcc  storeli.w r5, -6624(r30)
0001f4  e3020f02  loadli.w r5,  256(r30)
0001f8  67482fcc  storeli.w r2, -6524(r30)
0001fc  e7485fcc  storeli.w r5, -6516(r30)
000200  e342df01  loadli.w r5,  236(r30)
000204  67435fcc  storeli.w r5, -6604(r30)
000208  e302af01  loadli.w r5,  208(r30)
00020c  e74b5fd0  storeli.w r5, -5956(r30)
000210  eb520f07  load.d r[6:7], 112(r30)
000214  73b05300  store.d r[6:7], 0(r7)
000218  eb520f06  load.d r[6:7], 96(r30)
00021c  73305400  store.d r[6:7], 0(r8)
000220  bf901100  blt.s r3, r1, 36
000224  63410fcd  loadli.w r2,  -6524(r30)
000228  e3019fcf  loadli.w r3,  -6200(r30)
00022c  2bf20000  lui r4, 15
000230  9ff1f1ff  addli r3, r3, -1
000234  1b12f2ff  ori r4, r4, 4095
000238  73104100  store.h r4, 0(r2)
00023c  1f210100  addli r2, r2, 2
000240  bbbf01fe  bneq r3, zero, -20
000244  e309df01  loadli.w r19,  232(r30)
000248  e302bf01  loadli.w r5,  216(r30)
00024c  80570002  load_param_i r15, 0
000250  6303cf01  loadli.w r6,  224(r30)
000254  63026f01  loadli.w r4,  176(r30)
000258  e344cf01  loadli.w r9,  228(r30)
00025c  e3416f01  loadli.w r3,  180(r30)
000260  6346df01  loadli.w r12,  236(r30)
000264  6301af01  loadli.w r2,  208(r30)
000268  e306ef01  loadli.w r13,  240(r30)
00026c  63492f02  loadli.w r18,  276(r30)
000270  634d6f02  loadli.w r26,  308(r30)
000274  63070f02  loadli.w r14,  256(r30)
000278  e34d3f03  loadli.w r27,  412(r30)
00027c  e3434f03  loadli.w r7,  420(r30)
000280  e3089f02  loadli.w r17,  328(r30)
000284  630edf02  loadli.w r28,  360(r30)
000288  e743ffce  storeli.w r15, -6340(r30)
00028c  670d3fcb  storeli.w r19, -6704(r30)
000290  e3091f01  loadli.w r19,  136(r30)
000294  0b945738  mod.s r8, r15, r5
000298  8b925730  div.s r5, r15, r5
00029c  e74d2fd0  storeli.w r2, -5924(r30)
0002a0  6301ff01  loadli.w r2,  248(r30)
0002a4  e7403fd1  storeli.w r19, -6132(r30)
0002a8  e3094f03  loadli.w r19,  416(r30)
0002ac  674e2fca  storeli.w r2, -6684(r30)
0002b0  63011f02  loadli.w r2,  264(r30)
0002b4  67493fd1  storeli.w r19, -5996(r30)
0002b8  e3093f03  loadli.w r19,  408(r30)
0002bc  8b929220  mul.s r5, r5, r9
0002c0  67082fd0  storeli.w r2, -6016(r30)
0002c4  63411f02  loadli.w r2,  268(r30)
0002c8  8b915118  sub.s r3, r3, r5
0002cc  e7083fd1  storeli.w r19, -6008(r30)
0002d0  8b196420  mul.s r19, r8, r6
0002d4  6304af02  loadli.w r8,  336(r30)
0002d8  e7042fd0  storeli.w r2, -6072(r30)
0002dc  63016f02  loadli.w r2,  304(r30)
0002e0  8b913440  min.s r3, r9, r3
0002e4  67423fcd  storeli.w r19, -6620(r30)
0002e8  e7418fcc  storeli.w r8, -6628(r30)
0002ec  0b143219  sub.s r8, r4, r19
0002f0  8b970148  max.s r15, r3, zero
0002f4  0b11a131  div.s r2, r2, r26
0002f8  e3495f02  loadli.w r19,  300(r30)
0002fc  0b138340  min.s r6, r6, r8
000300  0b130348  max.s r6, r6, zero
000304  67036fcc  storeli.w r6, -6608(r30)
000308  0b136610  add.s r6, r12, r6
00030c  e7052fd0  storeli.w r2, -6056(r30)
000310  63015f02  loadli.w r2,  296(r30)
000314  9f71f3ff  addli r3, r6, -1
000318  0b93f610  add.s r6, r13, r15
00031c  e7482fd0  storeli.w r2, -6004(r30)
000320  8b91c130  div.s r3, r3, r12
000324  674d3fca  storeli.w r3, -6700(r30)
000328  9f71f3ff  addli r3, r6, -1
00032c  63439f02  loadli.w r6,  332(r30)
000330  8b96d130  div.s r13, r3, r13
000334  e3418f02  loadli.w r3,  324(r30)
000338  e70a6fce  storeli.w r6, -6232(r30)
00033c  670a3fce  storeli.w r3, -6240(r30)
000340  8b912231  div.s r3, r5, r18
000344  9f02efcc  addli r5, r30, -6544
000348  e7473fcc  storeli.w r3, -6532(r30)
00034c  8b112731  div.s r3, r14, r18
000350  e7073fcc  storeli.w r3, -6536(r30)
000354  6b510f02  load.d r[3:4], 32(r30)
000358  73b02200  store.d r[3:4], 0(r5)
00035c  0b911d48  max.s r2, r27, r1
000360  e3019fcf  loadli.w r3,  -6200(r30)
000364  67482fd0  storeli.w r2, -6012(r30)
000368  0b911348  max.s r2, r7, r1
00036c  80330002  core_id r7
000370  67002fd0  storeli.w r2, -6144(r30)
000374  0b911848  max.s r2, r17, r1
000378  67402fce  storeli.w r2, -6396(r30)
00037c  0b111e48  max.s r2, r28, r1
000380  8b901148  max.s r1, r3, r1
000384  e70f2fcc  storeli.w r2, -6408(r30)
000388  63410f02  loadli.w r2,  260(r30)
00038c  67081fcc  storeli.w r1, -6528(r30)
000390  e74f2fce  storeli.w r2, -6148(r30)
000394  6341ff01  loadli.w r2,  252(r30)
000398  e7002fce  storeli.w r2, -6392(r30)
00039c  6341ef01  loadli.w r2,  244(r30)
0003a0  670e2fca  storeli.w r2, -6688(r30)
0003a4  1f210000  addli r2, zero, 2
0003a8  3f347108  blt.s r2, r7, 4364
0003ac  e3022f03  loadli.w r5,  400(r30)
0003b0  e3416f02  loadli.w r3,  308(r30)
0003b4  e300df01  loadli.w r1,  232(r30)
0003b8  63038f02  loadli.w r6,  320(r30)
0003bc  e74b5fce  storeli.w r5, -6212(r30)
0003c0  e3424f02  loadli.w r5,  292(r30)
0003c4  e70d1fca  storeli.w r1, -6696(r30)
0003c8  e3407f02  loadli.w r1,  316(r30)
0003cc  670b6fd0  storeli.w r6, -5968(r30)
0003d0  63037f02  loadli.w r6,  312(r30)
0003d4  8b913230  div.s r3, r5, r3
0003d8  e70b1fd0  storeli.w r1, -5960(r30)
0003dc  eb508f07  load.d r[2:3], 120(r30)
0003e0  e70a6fd0  storeli.w r6, -5976(r30)
0003e4  e7033fd0  storeli.w r3, -6088(r30)
0003e8  e3014f02  loadli.w r3,  288(r30)
0003ec  e7093fd0  storeli.w r3, -5992(r30)
0003f0  e3413f02  loadli.w r3,  284(r30)
0003f4  67093fd0  storeli.w r3, -6000(r30)
0003f8  e3013f02  loadli.w r3,  280(r30)
0003fc  e7433fd0  storeli.w r3, -6084(r30)
000400  37c2030e  beq r7, zero, 7312
000404  eb520f05  load.d r[6:7], 80(r30)
000408  9f140000  addli r9, zero, 1
00040c  b7d3931a  beq r7, r9, 13556
000410  63093fd1  loadli.w r18,  -5992(r30)
000414  9f210000  addli r3, zero, 2
000418  bb83332a  bneq r7, r3, 21728
00041c  b3013028  .word 0x283001b3
000420  670e0fd0  storeli.w zero, -5920(r30)
000424  e7410fe2  storeli.w zero, -3812(r30)
000428  e7010fe2  storeli.w zero, -3816(r30)
00042c  93213c00  seteq.d r3, r[25:26], r[4:5]
000430  bb800100  bneq r3, zero, 32
000434  00a00000  mfence { lm }
000438  9f410000  addli r3, zero, 4
00043c  2b0200f0  lui r4, 983040
000440  9f030fda  addli r7, r30, -4864
000444  97914100  or r3, r3, r4
000448  ff217c00  l_gm2lm r3, r7, 0(r[25:26])
00044c  00a00200  mfence { lm, gm }
000450  b3013028  .word 0x283001b3
000454  93a13200  seteq.d r3, r[6:7], r[4:5]
000458  bb800100  bneq r3, zero, 32
00045c  00a00000  mfence { lm }
000460  9f410000  addli r3, zero, 4
000464  2b0200f0  lui r4, 983040
000468  9f030fda  addli r7, r30, -4864
00046c  97914100  or r3, r3, r4
000470  ffa17200  l_gm2lm r3, r7, 0(r[6:7])
000474  00a00200  mfence { lm, gm }
000478  1f024fd1  addli r4, r30, -5984
00047c  e3014f01  loadli.w r3,  160(r30)
000480  630c2fd1  loadli.w r24,  -6000(r30)
000484  6b530200  load.d r[7:8], 0(r4)
000488  bbb00100  bneq r3, zero, 44
00048c  b3013028  .word 0x283001b3
000490  93213a00  seteq.d r3, r[21:22], r[4:5]
000494  bb800100  bneq r3, zero, 32
000498  00a00000  mfence { lm }
00049c  9f410000  addli r3, zero, 4
0004a0  2b0200f0  lui r4, 983040
0004a4  9f020fda  addli r5, r30, -4864
0004a8  97914100  or r3, r3, r4
0004ac  ff215a00  l_gm2lm r3, r5, 0(r[21:22])
0004b0  00a00200  mfence { lm, gm }
0004b4  1f028fd1  addli r4, r30, -5952
0004b8  e3414f01  loadli.w r3,  164(r30)
0004bc  6b540200  load.d r[9:10], 0(r4)
0004c0  bbb00100  bneq r3, zero, 44
0004c4  b3013028  .word 0x283001b3
0004c8  93213400  seteq.d r3, r[9:10], r[4:5]
0004cc  bb800100  bneq r3, zero, 32
0004d0  00a00000  mfence { lm }
0004d4  9f410000  addli r3, zero, 4
0004d8  2b0200f0  lui r4, 983040
0004dc  9f020fda  addli r5, r30, -4864
0004e0  97914100  or r3, r3, r4
0004e4  ff215400  l_gm2lm r3, r5, 0(r[9:10])
0004e8  00a00200  mfence { lm, gm }
0004ec  e3015f01  loadli.w r3,  168(r30)
0004f0  b7f10100  beq r3, zero, 124
0004f4  b3013028  .word 0x283001b3
0004f8  93213500  seteq.d r3, r[11:12], r[4:5]
0004fc  bb800100  bneq r3, zero, 32
000500  00a00000  mfence { lm }
000504  9f410000  addli r3, zero, 4
000508  2b0200f0  lui r4, 983040
00050c  9f020fda  addli r5, r30, -4864
000510  97914100  or r3, r3, r4
000514  ff215500  l_gm2lm r3, r5, 0(r[11:12])
000518  00a00200  mfence { lm, gm }
00051c  b3013028  .word 0x283001b3
000520  93213300  seteq.d r3, r[7:8], r[4:5]
000524  bb800100  bneq r3, zero, 32
000528  00a00000  mfence { lm }
00052c  9f410000  addli r3, zero, 4
000530  2b0200f0  lui r4, 983040
000534  9f020fda  addli r5, r30, -4864
000538  97914100  or r3, r3, r4
00053c  ff215300  l_gm2lm r3, r5, 0(r[7:8])
000540  00a00200  mfence { lm, gm }
000544  b3013028  .word 0x283001b3
000548  93a13000  seteq.d r3, r[2:3], r[4:5]
00054c  bb800100  bneq r3, zero, 32
000550  00a00000  mfence { lm }
000554  9f410000  addli r3, zero, 4
000558  2b0200f0  lui r4, 983040
00055c  9f020fda  addli r5, r30, -4864
000560  97914100  or r3, r3, r4
000564  ffa15000  l_gm2lm r3, r5, 0(r[2:3])
000568  00a00200  mfence { lm, gm }
00056c  6341cfcb  loadli.w r2,  -6684(r30)
000570  9f100000  addli r1, zero, 1
000574  3f1e1128  blt.s r2, r1, 21380
000578  6302ef01  loadli.w r4,  240(r30)
00057c  9f8c0700  addli r25, r15, 0
000580  e301af02  loadli.w r3,  336(r30)
000584  63079f02  loadli.w r14,  328(r30)
000588  63030f02  loadli.w r6,  256(r30)
00058c  e305df02  loadli.w r11,  360(r30)
000590  e3474f03  loadli.w r15,  420(r30)
000594  63012f02  loadli.w r2,  272(r30)
000598  e3031f02  loadli.w r7,  264(r30)
00059c  e3441f02  loadli.w r9,  268(r30)
0005a0  63485f03  loadli.w r16,  428(r30)
0005a4  e302ff01  loadli.w r5,  248(r30)
0005a8  e3095f03  loadli.w r19,  424(r30)
0005ac  63463f03  loadli.w r12,  412(r30)
0005b0  9f0d0000  addli r27, zero, 0
0005b4  9f0a0000  addli r21, zero, 0
0005b8  1f0d0000  addli r26, zero, 0
0005bc  9f080000  addli r17, zero, 0
0005c0  1f0b0000  addli r22, zero, 0
0005c4  1f050000  addli r10, zero, 0
0005c8  1f0a0000  addli r20, zero, 0
0005cc  9f0b0000  addli r23, zero, 0
0005d0  1f040000  addli r8, zero, 0
0005d4  e70f0fce  storeli.w zero, -6152(r30)
0005d8  670e0fce  storeli.w zero, -6176(r30)
0005dc  e7060fd0  storeli.w zero, -6040(r30)
0005e0  e7010fd0  storeli.w zero, -6120(r30)
0005e4  0b129241  min.s r4, r4, r25
0005e8  8b113740  min.s r3, r14, r3
0005ec  9bf51500  setlti r11, r11, 1
0005f0  67013fcf  storeli.w r19, -6384(r30)
0005f4  670f0fcd  storeli.w r16, -6416(r30)
0005f8  9f0c2000  addli r25, zero, 16
0005fc  0b120248  max.s r4, r4, zero
000600  67013fd0  storeli.w r3, -6128(r30)
000604  e742bfce  storeli.w r11, -6356(r30)
000608  8b952320  mul.s r11, r7, r2
00060c  8b114310  add.s r3, r6, r4
000610  67454fce  storeli.w r4, -6316(r30)
000614  1b721700  setlti r4, r14, 1
000618  e7024fce  storeli.w r4, -6360(r30)
00061c  1bf21700  setlti r4, r15, 1
000620  9ff1f1ff  addli r3, r3, -1
000624  9f271000  addli r15, zero, 10
000628  67024fce  storeli.w r4, -6368(r30)
00062c  0b129120  mul.s r4, r2, r9
000630  1b311100  slli r2, r2, 1
000634  8b916130  div.s r3, r3, r6
000638  0b939320  mul.s r6, r7, r9
00063c  0b110141  min.s r2, r2, r16
000640  670d4fd0  storeli.w r4, -5936(r30)
000644  1f681000  addli r16, zero, 14
000648  e7002fd0  storeli.w r2, -6136(r30)
00064c  1ff1f2ff  addli r2, r5, -1
000650  9f120000  addli r5, zero, 1
000654  e70e2fce  storeli.w r2, -6168(r30)
000658  0b914620  mul.s r2, r13, r4
00065c  670d3fce  storeli.w r3, -6192(r30)
000660  8b113641  min.s r3, r12, r19
000664  63023f02  loadli.w r4,  280(r30)
000668  63467fd0  loadli.w r12,  -6084(r30)
00066c  e74e2fcc  storeli.w r2, -6420(r30)
000670  0b916620  mul.s r2, r13, r6
000674  e70d3fce  storeli.w r3, -6184(r30)
000678  e3410f02  loadli.w r3,  260(r30)
00067c  9f360000  addli r13, zero, 3
000680  e7402fce  storeli.w r2, -6388(r30)
000684  6341ff01  loadli.w r2,  252(r30)
000688  1f71f1ff  addli r2, r2, -1
00068c  e7412fce  storeli.w r2, -6372(r30)
000690  1ff1f1ff  addli r2, r3, -1
000694  e3413f02  loadli.w r3,  284(r30)
000698  674e2fcc  storeli.w r2, -6428(r30)
00069c  1f71f2ff  addli r2, r4, -1
0006a0  63024f02  loadli.w r4,  288(r30)
0006a4  9bb95100  slli r19, r3, 5
0006a8  9f110000  addli r3, zero, 1
0006ac  67472fce  storeli.w r2, -6284(r30)
0006b0  63015f02  loadli.w r2,  296(r30)
0006b4  e7433fce  storeli.w r3, -6340(r30)
0006b8  9f110000  addli r3, zero, 1
0006bc  1b3e5200  slli r28, r4, 5
0006c0  67043fd0  storeli.w r3, -6080(r30)
0006c4  9f110000  addli r3, zero, 1
0006c8  1f71f1ff  addli r2, r2, -1
0006cc  67073fce  storeli.w r3, -6288(r30)
0006d0  9f110000  addli r3, zero, 1
0006d4  e74c2fd0  storeli.w r2, -5940(r30)
0006d8  63416f03  loadli.w r2,  436(r30)
0006dc  67423fd0  storeli.w r3, -6108(r30)
0006e0  9f110000  addli r3, zero, 1
0006e4  674c2fce  storeli.w r2, -6204(r30)
0006e8  63016f03  loadli.w r2,  432(r30)
0006ec  67453fd0  storeli.w r3, -6060(r30)
0006f0  9f110000  addli r3, zero, 1
0006f4  e7493fce  storeli.w r3, -6244(r30)
0006f8  9f110000  addli r3, zero, 1
0006fc  670c2fce  storeli.w r2, -6208(r30)
000700  1f411000  addli r2, zero, 12
000704  e70a3fce  storeli.w r3, -6232(r30)
000708  e341afcb  loadli.w r3,  -6700(r30)
00070c  67033fce  storeli.w r3, -6352(r30)
000710  db0d0000  j 108
000714  9f0d0200  addli r27, r4, 0
000718  6342afd0  loadli.w r4,  -6060(r30)
00071c  e3417fce  loadli.w r3,  -6340(r30)
000720  e304ffcf  loadli.w r9,  -6152(r30)
000724  e303bfcb  loadli.w r7,  -6696(r30)
000728  0b1d4d18  sub.s r26, r26, r4
00072c  0b120258  neg.s r4, r4
000730  8b9d3d18  sub.s r27, r27, r3
000734  8b910158  neg.s r3, r3
000738  9f940400  addli r9, r9, 1
00073c  67454fd0  storeli.w r4, -6060(r30)
000740  63025fcf  loadli.w r4,  -6232(r30)
000744  e7433fce  storeli.w r3, -6340(r30)
000748  e341cfcb  loadli.w r3,  -6684(r30)
00074c  e70f9fce  storeli.w r9, -6152(r30)
000750  0b1b4b18  sub.s r22, r22, r4
000754  0b120258  neg.s r4, r4
000758  e70a4fce  storeli.w r4, -6232(r30)
00075c  63423fcf  loadli.w r4,  -6244(r30)
000760  8b984818  sub.s r17, r17, r4
000764  0b120258  neg.s r4, r4
000768  e7494fce  storeli.w r4, -6244(r30)
00076c  6302cfcb  loadli.w r4,  -6688(r30)
000770  8b934318  sub.s r7, r7, r4
000774  e70d7fca  storeli.w r7, -6696(r30)
000778  37863428  beq r9, r3, 20864
00077c  e3016fce  loadli.w r3,  -6352(r30)
000780  1f820d00  addli r4, r27, 0
000784  37443206  beq r4, r3, 3344
000788  9f040300  addli r9, r6, 0
00078c  e74dbfd0  storeli.w r11, -5924(r30)
000790  e305cfcb  loadli.w r11,  -6688(r30)
000794  6303ffcf  loadli.w r6,  -6152(r30)
000798  e7064fce  storeli.w r4, -6296(r30)
00079c  6302afcb  loadli.w r4,  -6704(r30)
0007a0  8b11b320  mul.s r3, r6, r11
0007a4  8b113218  sub.s r3, r4, r3
0007a8  8b913540  min.s r3, r11, r3
0007ac  0b920148  max.s r4, r3, zero
0007b0  e341cfcd  loadli.w r3,  -6428(r30)
0007b4  670f4fce  storeli.w r4, -6160(r30)
0007b8  8b914110  add.s r3, r3, r4
0007bc  6342ffcf  loadli.w r4,  -6148(r30)
0007c0  8b934130  div.s r7, r3, r4
0007c4  6342dfcd  loadli.w r4,  -6420(r30)
0007c8  e301bfcb  loadli.w r3,  -6696(r30)
0007cc  0b126220  mul.s r4, r4, r6
0007d0  8b953540  min.s r11, r11, r3
0007d4  e7054fce  storeli.w r4, -6312(r30)
0007d8  6302afcf  loadli.w r4,  -6192(r30)
0007dc  67487fce  storeli.w r7, -6268(r30)
0007e0  9f71f2ff  addli r3, r4, -1
0007e4  8b9d4320  mul.s r27, r7, r4
0007e8  6302efcd  loadli.w r4,  -6416(r30)
0007ec  e7013fce  storeli.w r3, -6376(r30)
0007f0  8b910548  max.s r3, r11, zero
0007f4  e704bfcf  storeli.w r27, -6328(r30)
0007f8  e7073fce  storeli.w r3, -6280(r30)
0007fc  9ff1f3ff  addli r3, r7, -1
000800  674f3fcc  storeli.w r3, -6412(r30)
000804  9bb11300  slli r3, r7, 1
000808  e303afd1  loadli.w r7,  -5936(r30)
00080c  8b914140  min.s r3, r3, r4
000810  67413fce  storeli.w r3, -6380(r30)
000814  db0f0000  j 124
000818  e301dfce  loadli.w r3,  -6296(r30)
00081c  6302efce  loadli.w r4,  -6288(r30)
000820  63438fce  loadli.w r6,  -6332(r30)
000824  e30d9fce  loadli.w r27,  -6328(r30)
000828  6704bfd0  storeli.w r11, -6080(r30)
00082c  6307cfce  loadli.w r14,  -6304(r30)
000830  e3058fce  loadli.w r11,  -6336(r30)
000834  0b120258  neg.s r4, r4
000838  9f040300  addli r9, r6, 0
00083c  9f830d00  addli r7, r27, 0
000840  6708efd0  storeli.w r14, -6016(r30)
000844  e74dbfd0  storeli.w r11, -5924(r30)
000848  67074fce  storeli.w r4, -6288(r30)
00084c  63427fce  loadli.w r4,  -6340(r30)
000850  8b914110  add.s r3, r3, r4
000854  63424fd0  loadli.w r4,  -6108(r30)
000858  e7063fce  storeli.w r3, -6296(r30)
00085c  8b9a4a18  sub.s r21, r21, r4
000860  0b120258  neg.s r4, r4
000864  67424fd0  storeli.w r4, -6108(r30)
000868  6342afd0  loadli.w r4,  -6060(r30)
00086c  0b1d4d18  sub.s r26, r26, r4
000870  0b120258  neg.s r4, r4
000874  67454fd0  storeli.w r4, -6060(r30)
000878  63025fcf  loadli.w r4,  -6232(r30)
00087c  0b1b4b18  sub.s r22, r22, r4
000880  0b120258  neg.s r4, r4
000884  e70a4fce  storeli.w r4, -6232(r30)
000888  63026fce  loadli.w r4,  -6352(r30)
00088c  b7ff4104  beq r3, r4, 3068
000890  9381b301  seteq r3, r7, r27
000894  63024fce  loadli.w r4,  -6368(r30)
000898  1f830300  addli r6, r7, 0
00089c  97914100  or r3, r3, r4
0008a0  bb900100  bneq r3, zero, 36
0008a4  63420fd0  loadli.w r4,  -6140(r30)
0008a8  9f014fe2  addli r3, r30, -3808
0008ac  abf30000  lui r7, 15
0008b0  1f72f2ff  addli r4, r4, -1
0008b4  9b93f3ff  ori r7, r7, 4095
0008b8  73907100  store.h r7, 0(r3)
0008bc  9fa10100  addli r3, r3, 2
0008c0  bb3f02fe  bneq r4, zero, -20
0008c4  63426fcc  loadli.w r4,  -6604(r30)
0008c8  e301dfce  loadli.w r3,  -6296(r30)
0008cc  e3036fcc  loadli.w r7,  -6608(r30)
0008d0  e34dbfd1  loadli.w r27,  -5924(r30)
0008d4  8b914120  mul.s r3, r3, r4
0008d8  8b913318  sub.s r3, r7, r3
0008dc  8b113240  min.s r3, r4, r3
0008e0  0b920148  max.s r4, r3, zero
0008e4  e3413fce  loadli.w r3,  -6372(r30)
0008e8  67084fce  storeli.w r4, -6272(r30)
0008ec  8b914110  add.s r3, r3, r4
0008f0  63021fce  loadli.w r4,  -6392(r30)
0008f4  0b924130  div.s r4, r3, r4
0008f8  e301afcf  loadli.w r3,  -6192(r30)
0008fc  0b974120  mul.s r14, r3, r4
000900  67064fce  storeli.w r4, -6304(r30)
000904  63025fce  loadli.w r4,  -6360(r30)
000908  9381e400  seteq r3, r9, r14
00090c  97914100  or r3, r3, r4
000910  bb900100  bneq r3, zero, 36
000914  e301dfcd  loadli.w r3,  -6424(r30)
000918  6342ffcd  loadli.w r4,  -6404(r30)
00091c  abf30000  lui r7, 15
000920  1f72f2ff  addli r4, r4, -1
000924  9b93f3ff  ori r7, r7, 4095
000928  73907100  store.h r7, 0(r3)
00092c  9fa10100  addli r3, r3, 2
000930  bb3f02fe  bneq r4, zero, -20
000934  e3010fd1  loadli.w r3,  -6016(r30)
000938  6302cfce  loadli.w r4,  -6304(r30)
00093c  93814100  seteq r3, r3, r4
000940  63425fce  loadli.w r4,  -6356(r30)
000944  97914100  or r3, r3, r4
000948  bb900100  bneq r3, zero, 36
00094c  e3010fce  loadli.w r3,  -6400(r30)
000950  6342efcf  loadli.w r4,  -6156(r30)
000954  abf30000  lui r7, 15
000958  1f72f2ff  addli r4, r4, -1
00095c  9b93f3ff  ori r7, r7, 4095
000960  73907100  store.h r7, 0(r3)
000964  9fa10100  addli r3, r3, 2
000968  bb3f02fe  bneq r4, zero, -20
00096c  e3410fcf  loadli.w r3,  -6268(r30)
000970  6302cfce  loadli.w r4,  -6304(r30)
000974  8b934120  mul.s r7, r3, r4
000978  3bb07d00  bneq r27, r7, 12
00097c  e301cfcf  loadli.w r3,  -6176(r30)
000980  5b050000  j 40
000984  e301dfd0  loadli.w r3,  -6040(r30)
000988  6302cfcf  loadli.w r4,  -6176(r30)
00098c  e7060fd0  storeli.w zero, -6040(r30)
000990  8b113210  add.s r3, r4, r3
000994  63022fce  loadli.w r4,  -6384(r30)
000998  0b9a4111  add.s r20, r3, r20
00099c  9f010000  addli r3, zero, 0
0009a0  0b924340  min.s r4, r7, r4
0009a4  e70d4fce  storeli.w r4, -6184(r30)
0009a8  63029fce  loadli.w r4,  -6328(r30)
0009ac  e3058fd0  loadli.w r11,  -6080(r30)
0009b0  670e3fce  storeli.w r3, -6176(r30)
0009b4  b7004300  beq r6, r4, 32
0009b8  e3013fd0  loadli.w r3,  -6120(r30)
0009bc  e7010fd0  storeli.w zero, -6120(r30)
0009c0  8b918110  add.s r3, r3, r8
0009c4  0b947111  add.s r8, r3, r23
0009c8  e3412fce  loadli.w r3,  -6380(r30)
0009cc  9f0b0000  addli r23, zero, 0
0009d0  e7003fd0  storeli.w r3, -6136(r30)
0009d4  b7c0e400  beq r9, r14, 48
0009d8  e301cfd1  loadli.w r3,  -5920(r30)
0009dc  63423fe2  loadli.w r4,  -3812(r30)
0009e0  63033fe2  loadli.w r6,  -3816(r30)
0009e4  670e0fd0  storeli.w zero, -5920(r30)
0009e8  e7410fe2  storeli.w zero, -3812(r30)
0009ec  8b113210  add.s r3, r4, r3
0009f0  63423fcc  loadli.w r4,  -6628(r30)
0009f4  8b916110  add.s r3, r3, r6
0009f8  0b124740  min.s r4, r14, r4
0009fc  e7013fe2  storeli.w r3, -3816(r30)
000a00  67014fd0  storeli.w r4, -6128(r30)
000a04  abf1ffff  lui r3, 1048575
000a08  e304afcf  loadli.w r9,  -6192(r30)
000a0c  6302efce  loadli.w r4,  -6288(r30)
000a10  1f030000  addli r6, zero, 0
000a14  3f304000  blt.s zero, r4, 12
000a18  63033fce  loadli.w r6,  -6376(r30)
000a1c  9b94f1ff  ori r9, r3, 4095
000a20  67066fd0  storeli.w r6, -6048(r30)
000a24  6744efce  storeli.w r14, -6332(r30)
000a28  67047fce  storeli.w r7, -6336(r30)
000a2c  b73793fe  beq r6, r9, -532
000a30  67469fce  storeli.w r9, -6300(r30)
000a34  abf1ffff  lui r3, 1048575
000a38  6302cfce  loadli.w r4,  -6304(r30)
000a3c  9f040000  addli r9, zero, 0
000a40  9b91f1ff  ori r3, r3, 4095
000a44  670a4fce  storeli.w r4, -6240(r30)
000a48  3fa05400  blt.s r9, r5, 8
000a4c  670a3fce  storeli.w r3, -6240(r30)
000a50  63430fcf  loadli.w r6,  -6268(r30)
000a54  e7456fd0  storeli.w r6, -6052(r30)
000a58  3fd8b404  blt.s r9, r11, 2580
000a5c  e7453fd0  storeli.w r3, -6052(r30)
000a60  e70b9fce  storeli.w r9, -6216(r30)
000a64  3fa05400  blt.s r9, r5, 8
000a68  db410100  j 2572
000a6c  67449fd0  storeli.w r9, -6076(r30)
000a70  3fb0b400  blt.s r9, r11, 12
000a74  e341efcd  loadli.w r3,  -6412(r30)
000a78  67443fd0  storeli.w r3, -6076(r30)
000a7c  e301afcf  loadli.w r3,  -6192(r30)
000a80  6302efce  loadli.w r4,  -6288(r30)
000a84  63431fce  loadli.w r6,  -6388(r30)
000a88  e3044fcf  loadli.w r9,  -6240(r30)
000a8c  e3037fcf  loadli.w r7,  -6216(r30)
000a90  e34d8fd0  loadli.w r27,  -6076(r30)
000a94  e74a5fce  storeli.w r5, -6228(r30)
000a98  8b914120  mul.s r3, r3, r4
000a9c  6302dfce  loadli.w r4,  -6296(r30)
000aa0  0b134320  mul.s r6, r6, r4
000aa4  e7456fce  storeli.w r6, -6308(r30)
000aa8  6343cfce  loadli.w r6,  -6300(r30)
000aac  8b113318  sub.s r3, r6, r3
000ab0  e74b3fd0  storeli.w r3, -5956(r30)
000ab4  e3014fcc  loadli.w r3,  -6624(r30)
000ab8  8b113220  mul.s r3, r4, r3
000abc  e7473fce  storeli.w r3, -6276(r30)
000ac0  db0c0000  j 100
000ac4  63425fcf  loadli.w r4,  -6228(r30)
000ac8  6303cfd0  loadli.w r6,  -6048(r30)
000acc  8b120258  neg.s r5, r4
000ad0  8b934418  sub.s r7, r9, r4
000ad4  6302efce  loadli.w r4,  -6288(r30)
000ad8  9f840100  addli r9, r3, 0
000adc  e301dfce  loadli.w r3,  -6296(r30)
000ae0  e74a5fce  storeli.w r5, -6228(r30)
000ae4  0b134310  add.s r6, r6, r4
000ae8  63424fd0  loadli.w r4,  -6108(r30)
000aec  67066fd0  storeli.w r6, -6048(r30)
000af0  8b9a4a18  sub.s r21, r21, r4
000af4  0b120258  neg.s r4, r4
000af8  67424fd0  storeli.w r4, -6108(r30)
000afc  6342afd0  loadli.w r4,  -6060(r30)
000b00  0b1d4d18  sub.s r26, r26, r4
000b04  0b120258  neg.s r4, r4
000b08  67454fd0  storeli.w r4, -6060(r30)
000b0c  63025fcf  loadli.w r4,  -6232(r30)
000b10  0b1b4b18  sub.s r22, r22, r4
000b14  0b120258  neg.s r4, r4
000b18  e70a4fce  storeli.w r4, -6232(r30)
000b1c  6342cfce  loadli.w r4,  -6300(r30)
000b20  b77343fe  beq r6, r4, -772
000b24  bb909300  bneq r7, r9, 36
000b28  e3023fd0  loadli.w r5,  -6120(r30)
000b2c  e7015fd0  storeli.w r5, -6120(r30)
000b30  abf1ffff  lui r3, 1048575
000b34  63425fcf  loadli.w r4,  -6228(r30)
000b38  9b91f1ff  ori r3, r3, 4095
000b3c  3fae41fe  blt.s r3, r4, -120
000b40  e301cfce  loadli.w r3,  -6304(r30)
000b44  5bf0ffff  j -128
000b48  6303cfd0  loadli.w r6,  -6048(r30)
000b4c  e3427fd1  loadli.w r5,  -5956(r30)
000b50  63421fcd  loadli.w r4,  -6516(r30)
000b54  1f870d00  addli r14, r27, 0
000b58  670a9fce  storeli.w r9, -6240(r30)
000b5c  93025302  setneq r5, r6, r5
000b60  8b114320  mul.s r3, r6, r4
000b64  674d5fce  storeli.w r5, -6188(r30)
000b68  e342afce  loadli.w r5,  -6316(r30)
000b6c  8b913218  sub.s r3, r5, r3
000b70  e342bfce  loadli.w r5,  -6308(r30)
000b74  8b113240  min.s r3, r4, r3
000b78  6302bfce  loadli.w r4,  -6312(r30)
000b7c  8b125310  add.s r5, r6, r5
000b80  8b910148  max.s r3, r3, zero
000b84  67095fce  storeli.w r5, -6256(r30)
000b88  e3023fd0  loadli.w r5,  -6120(r30)
000b8c  0b124310  add.s r4, r6, r4
000b90  e7083fce  storeli.w r3, -6264(r30)
000b94  e70c4fce  storeli.w r4, -6200(r30)
000b98  5b0a0000  j 80
000b9c  e3415fcf  loadli.w r3,  -6228(r30)
000ba0  e3037fcf  loadli.w r7,  -6216(r30)
000ba4  e3486fcf  loadli.w r17,  -6220(r30)
000ba8  e34d8fd0  loadli.w r27,  -6076(r30)
000bac  630b6fcf  loadli.w r22,  -6224(r30)
000bb0  e3023fd0  loadli.w r5,  -6120(r30)
000bb4  e3044fcf  loadli.w r9,  -6240(r30)
000bb8  8b950558  neg.s r11, r11
000bbc  8b933310  add.s r7, r7, r3
000bc0  e341afd0  loadli.w r3,  -6060(r30)
000bc4  1f870d00  addli r14, r27, 0
000bc8  0b1d3d18  sub.s r26, r26, r3
000bcc  8b910158  neg.s r3, r3
000bd0  67453fd0  storeli.w r3, -6060(r30)
000bd4  e3413fcf  loadli.w r3,  -6244(r30)
000bd8  8b983810  add.s r17, r17, r3
000bdc  e3015fcf  loadli.w r3,  -6232(r30)
000be0  0b1b3b10  add.s r22, r22, r3
000be4  37ad93fe  beq r7, r9, -184
000be8  63420fce  loadli.w r4,  -6396(r30)
000bec  e7040fd0  storeli.w zero, -6072(r30)
000bf0  8b914838  mod.s r3, r17, r4
000bf4  8b914110  add.s r3, r3, r4
000bf8  8b914138  mod.s r3, r3, r4
000bfc  3fa10100  blt.s r3, zero, 72
000c00  6342ffcd  loadli.w r4,  -6404(r30)
000c04  4b013200  ble.s r4, r3, 64
000c08  6302dfcd  loadli.w r4,  -6424(r30)
000c0c  9bb11100  slli r3, r3, 1
000c10  6303afcf  loadli.w r6,  -6192(r30)
000c14  9f8d0200  addli r27, r5, 0
000c18  8b113210  add.s r3, r4, r3
000c1c  63022fcf  loadli.w r4,  -6256(r30)
000c20  ebb20100  load.hu r5, 0(r3)
000c24  0b926350  fmac.s r4, r7, r6
000c28  3b305200  bneq r4, r5, 12
000c2c  e7040fd0  storeli.w zero, -6072(r30)
000c30  5b020000  j 16
000c34  9f120000  addli r5, zero, 1
000c38  73904100  store.h r4, 0(r3)
000c3c  e7045fd0  storeli.w r5, -6072(r30)
000c40  9f820d00  addli r5, r27, 0
000c44  e341bfd0  loadli.w r3,  -6052(r30)
000c48  674b1fcf  storeli.w r17, -6220(r30)
000c4c  9f080700  addli r17, r14, 0
000c50  e7015fd0  storeli.w r5, -6120(r30)
000c54  670b6fcf  storeli.w r22, -6224(r30)
000c58  e70b7fce  storeli.w r7, -6216(r30)
000c5c  0b92b118  sub.s r4, r3, r11
000c60  67444fd0  storeli.w r4, -6076(r30)
000c64  bb803800  bneq r17, r3, 32
000c68  abf1ffff  lui r3, 1048575
000c6c  9b91f1ff  ori r3, r3, 4095
000c70  e7453fd0  storeli.w r3, -6052(r30)
000c74  bfacb1fe  blt.s r3, r11, -216
000c78  e3410fcf  loadli.w r3,  -6268(r30)
000c7c  e7453fd0  storeli.w r3, -6052(r30)
000c80  dbe3ffff  j -228
000c84  6342ffce  loadli.w r4,  -6276(r30)
000c88  6303ffcd  loadli.w r6,  -6408(r30)
000c8c  e3021fcf  loadli.w r5,  -6264(r30)
000c90  1f070a00  addli r14, r20, 0
000c94  6704bfd0  storeli.w r11, -6080(r30)
000c98  0b924310  add.s r4, r7, r4
000c9c  8b116b38  mod.s r3, r22, r6
000ca0  e74d4fce  storeli.w r4, -6180(r30)
000ca4  63429fcf  loadli.w r4,  -6196(r30)
000ca8  8b944230  div.s r9, r5, r4
000cac  e3021fce  loadli.w r5,  -6392(r30)
000cb0  8b916110  add.s r3, r3, r6
000cb4  0b925320  mul.s r4, r7, r5
000cb8  e3030fcf  loadli.w r7,  -6272(r30)
000cbc  0b924318  sub.s r4, r7, r4
000cc0  8b936138  mod.s r7, r3, r6
000cc4  6343ffcf  loadli.w r6,  -6148(r30)
000cc8  670d9fd0  storeli.w r9, -5936(r30)
000ccc  0b924240  min.s r4, r5, r4
000cd0  e302ffce  loadli.w r5,  -6280(r30)
000cd4  8b111321  mul.s r3, r6, r17
000cd8  8b913218  sub.s r3, r5, r3
000cdc  8b120248  max.s r5, r4, zero
000ce0  6342efce  loadli.w r4,  -6284(r30)
000ce4  67467fd0  storeli.w r7, -6044(r30)
000ce8  670c3fd0  storeli.w r3, -5952(r30)
000cec  9ff1f4ff  addli r3, r9, -1
000cf0  e74d5fd0  storeli.w r5, -5924(r30)
000cf4  0b125210  add.s r4, r4, r5
000cf8  67433fd0  storeli.w r3, -6092(r30)
000cfc  9bb11300  slli r3, r7, 1
000d00  67034fd0  storeli.w r4, -6096(r30)
000d04  63020fce  loadli.w r4,  -6400(r30)
000d08  0b1b3210  add.s r22, r4, r3
000d0c  8b11b320  mul.s r3, r6, r11
000d10  1f030400  addli r6, r8, 0
000d14  e7023fd0  storeli.w r3, -6104(r30)
000d18  e7426fd1  storeli.w r22, -6100(r30)
000d1c  db0c0000  j 100
000d20  630c2fd1  loadli.w r24,  -6000(r30)
000d24  e30a0fd1  loadli.w r21,  -6016(r30)
000d28  e3414fd0  loadli.w r3,  -6108(r30)
000d2c  630dffd0  loadli.w r26,  -6024(r30)
000d30  63025fd0  loadli.w r4,  -6104(r30)
000d34  e3058fd0  loadli.w r11,  -6080(r30)
000d38  e348dfd0  loadli.w r17,  -6036(r30)
000d3c  63093fd1  loadli.w r18,  -5992(r30)
000d40  63467fd0  loadli.w r12,  -6084(r30)
000d44  e30befd0  loadli.w r23,  -6032(r30)
000d48  634b5fd0  loadli.w r22,  -6100(r30)
000d4c  1f070000  addli r14, zero, 0
000d50  1f030000  addli r6, zero, 0
000d54  1f040000  addli r8, zero, 0
000d58  1f0a0000  addli r20, zero, 0
000d5c  8b9a3a10  add.s r21, r21, r3
000d60  e341afd0  loadli.w r3,  -6060(r30)
000d64  8b98b810  add.s r17, r17, r11
000d68  0b1d3d10  add.s r26, r26, r3
000d6c  e3018fd1  loadli.w r3,  -5952(r30)
000d70  8b914118  sub.s r3, r3, r4
000d74  670c3fd0  storeli.w r3, -5952(r30)
000d78  e341bfd0  loadli.w r3,  -6052(r30)
000d7c  b7bb38fe  beq r17, r3, -276
000d80  63020fd0  loadli.w r4,  -6144(r30)
000d84  9f0d0000  addli r27, zero, 0
000d88  8b114d38  mod.s r3, r26, r4
000d8c  8b914110  add.s r3, r3, r4
000d90  0b944138  mod.s r8, r3, r4
000d94  bf600400  blt.s r8, zero, 56
000d98  e3410fd0  loadli.w r3,  -6140(r30)
000d9c  e304cfd0  loadli.w r9,  -6048(r30)
000da0  cbf08100  ble.s r3, r8, 60
000da4  9b311400  slli r3, r8, 1
000da8  1f024fe2  addli r4, r30, -3808
000dac  e302afcf  loadli.w r5,  -6192(r30)
000db0  8b113210  add.s r3, r4, r3
000db4  63029fcf  loadli.w r4,  -6200(r30)
000db8  ebb30100  load.hu r7, 0(r3)
000dbc  0b925850  fmac.s r4, r17, r5
000dc0  3b507200  bneq r4, r7, 20
000dc4  9f0d0000  addli r27, zero, 0
000dc8  db020000  j 20
000dcc  e304cfd0  loadli.w r9,  -6048(r30)
000dd0  db010000  j 12
000dd4  9f1d0000  addli r27, zero, 1
000dd8  73904100  store.h r4, 0(r3)
000ddc  e301ffcf  loadli.w r3,  -6152(r30)
000de0  6302dfcf  loadli.w r4,  -6168(r30)
000de4  bbd04100  bneq r3, r4, 52
000de8  e3418fd0  loadli.w r3,  -6076(r30)
000dec  bbb03800  bneq r17, r3, 44
000df0  e341cfd0  loadli.w r3,  -6044(r30)
000df4  bf900100  blt.s r3, zero, 36
000df8  e341efcf  loadli.w r3,  -6156(r30)
000dfc  6342cfd0  loadli.w r4,  -6044(r30)
000e00  4be04100  ble.s r3, r4, 24
000e04  eb310b00  load.hu r3, 0(r22)
000e08  6342bfcf  loadli.w r4,  -6180(r30)
000e0c  37203200  beq r4, r3, 8
000e10  e341bfcf  loadli.w r3,  -6180(r30)
000e14  73103b00  store.h r3, 0(r22)
000e18  e3417fd1  loadli.w r3,  -5956(r30)
000e1c  3bb93400  bneq r9, r3, 588
000e20  e301dfd0  loadli.w r3,  -6040(r30)
000e24  6302bfcf  loadli.w r4,  -6184(r30)
000e28  93013206  setle.u r3, r4, r3
000e2c  bbf80100  bneq r3, zero, 572
000e30  e301dfd0  loadli.w r3,  -6040(r30)
000e34  9f910100  addli r3, r3, 1
000e38  e7063fd0  storeli.w r3, -6040(r30)
000e3c  9f511000  addli r3, zero, 13
000e40  3f401700  blt.s r14, r1, 16
000e44  7d900100  xwait r3, 0
000e48  1f77f7ff  addli r14, r14, -1
000e4c  bb6f07fe  bneq r14, zero, -8
000e50  e3011fd0  loadli.w r3,  -6136(r30)
000e54  1ba21d00  xori r4, r27, 1
000e58  93817107  setle.u r3, r3, r23
000e5c  97914100  or r3, r3, r4
000e60  bbb80100  bneq r3, zero, 556
000e64  9f9b0b00  addli r23, r23, 1
000e68  9f711000  addli r3, zero, 15
000e6c  3f401300  blt.s r6, r1, 16
000e70  7d900100  xwait r3, 0
000e74  1f73f3ff  addli r6, r6, -1
000e78  bb6f03fe  bneq r6, zero, -8
000e7c  e301cfd1  loadli.w r3,  -5920(r30)
000e80  63022fd0  loadli.w r4,  -6128(r30)
000e84  e3029fd0  loadli.w r5,  -6072(r30)
000e88  13824104  setlt.u r4, r3, r4
000e8c  17834200  and r6, r5, r4
000e90  1f02cfd1  addli r4, r30, -5920
000e94  bb100300  bneq r6, zero, 36
000e98  e3413fe2  loadli.w r3,  -3812(r30)
000e9c  63427fcf  loadli.w r4,  -6212(r30)
000ea0  13033204  setlt.u r6, r4, r3
000ea4  37200300  beq r6, zero, 8
000ea8  e3013fe2  loadli.w r3,  -3816(r30)
000eac  1f023fe2  addli r4, r30, -3816
000eb0  3b200300  bneq r6, zero, 8
000eb4  1f423fe2  addli r4, r30, -3812
000eb8  e3420fd1  loadli.w r5,  -6012(r30)
000ebc  e344ffcf  loadli.w r9,  -6148(r30)
000ec0  e7461fd1  storeli.w r17, -6036(r30)
000ec4  63036fd0  loadli.w r6,  -6096(r30)
000ec8  63077fd0  loadli.w r14,  -6088(r30)
000ecc  9f910100  addli r3, r3, 1
000ed0  67077fd1  storeli.w r23, -6032(r30)
000ed4  67085fd1  storeli.w r21, -6016(r30)
000ed8  e707afd1  storeli.w r26, -6024(r30)
000edc  67003200  storeli.w r3, 0(r4)
000ee0  63421fd0  loadli.w r4,  -6132(r30)
000ee4  9f810d00  addli r3, r27, 0
000ee8  8b935a38  mod.s r7, r21, r5
000eec  8b959820  mul.s r11, r17, r9
000ef0  e308efcf  loadli.w r17,  -6160(r30)
000ef4  0b13c330  div.s r6, r6, r12
000ef8  63466fd0  loadli.w r12,  -6092(r30)
000efc  8b95b818  sub.s r11, r17, r11
000f00  0b16e610  add.s r12, r12, r14
000f04  8b95b440  min.s r11, r9, r11
000f08  e3440fd0  loadli.w r9,  -6140(r30)
000f0c  8b935310  add.s r7, r7, r5
000f10  8b935338  mod.s r7, r7, r5
000f14  8b920548  max.s r5, r11, zero
000f18  8b189438  mod.s r17, r8, r9
000f1c  0b14e630  div.s r8, r12, r14
000f20  9ff5f2ff  addli r11, r5, -1
000f24  670a5fd0  storeli.w r5, -5984(r30)
000f28  e3423fd1  loadli.w r5,  -5988(r30)
000f2c  0b968511  add.s r12, r11, r24
000f30  8b952511  add.s r11, r11, r18
000f34  8b935338  mod.s r7, r7, r5
000f38  e3021fd1  loadli.w r5,  -6008(r30)
000f3c  0b1b8631  div.s r22, r12, r24
000f40  8b952531  div.s r11, r11, r18
000f44  8b9b5320  mul.s r23, r7, r5
000f48  e3422fd1  loadli.w r5,  -5996(r30)
000f4c  0b9a5820  mul.s r20, r17, r5
000f50  37701200  beq r4, r1, 28
000f54  e3411fd0  loadli.w r3,  -6132(r30)
000f58  37aad100  beq r3, r13, 648
000f5c  1f220000  addli r4, zero, 2
000f60  3bda4100  bneq r3, r4, 660
000f64  e341afcf  loadli.w r3,  -6188(r30)
000f68  97813d00  and r3, r27, r3
000f6c  37aa0100  beq r3, zero, 648
000f70  e301cfd0  loadli.w r3,  -6048(r30)
000f74  63427fd1  loadli.w r4,  -5956(r30)
000f78  bbd44100  bneq r3, r4, 308
000f7c  bf441300  blt.s r6, r1, 304
000f80  e3014fd1  loadli.w r3,  -5984(r30)
000f84  1f024000  addli r4, zero, 32
000f88  e343ffcf  loadli.w r7,  -6148(r30)
000f8c  e3028fd1  loadli.w r5,  -5952(r30)
000f90  9ff13100  addli r3, r3, 31
000f94  8b935340  min.s r7, r7, r5
000f98  0b924138  mod.s r4, r3, r4
000f9c  0b960348  max.s r12, r7, zero
000fa0  8b134618  sub.s r7, r12, r4
000fa4  0b994118  sub.s r18, r3, r4
000fa8  9f010000  addli r3, zero, 0
000fac  9bb35300  slli r7, r7, 5
000fb0  9f8dc307  addli r27, r7, 992
000fb4  5b020000  j 16
000fb8  630c2fd1  loadli.w r24,  -6000(r30)
000fbc  9f910100  addli r3, r3, 1
000fc0  b7b36100  beq r3, r6, 236
000fc4  bf5f1bfe  blt.s r22, r1, -12
000fc8  e3447fd0  loadli.w r9,  -6084(r30)
000fcc  e342bfd1  loadli.w r5,  -5924(r30)
000fd0  0b929120  mul.s r4, r3, r9
000fd4  8b139231  div.s r7, r4, r25
000fd8  0b9c4218  sub.s r24, r5, r4
000fdc  9bb84300  slli r17, r7, 4
000fe0  0b121219  sub.s r4, r4, r17
000fe4  9f880b00  addli r17, r23, 0
000fe8  8b987d50  fmac.s r17, r27, r7
000fec  9b331200  slli r7, r4, 1
000ff0  0b928441  min.s r4, r9, r24
000ff4  1f0c0b00  addli r24, r22, 0
000ff8  8b937810  add.s r7, r17, r7
000ffc  9f080600  addli r17, r12, 0
001000  5b0b0000  j 88
001004  e3047fd1  loadli.w r9,  -5960(r30)
001008  e30a2fd1  loadli.w r21,  -6000(r30)
00100c  63075fd1  loadli.w r14,  -5976(r30)
001010  7d100100  xwait r2, 0
001014  1d000000  lock zero, zero
001018  81060000  ds_cfg r13, zero, 0
00101c  0b1d9538  mod.s r26, r10, r9
001020  8b941a41  min.s r9, r21, r17
001024  81040002  ds_cfg r9, zero, 1
001028  e3026fd1  loadli.w r5,  -5968(r30)
00102c  0109001c  ds_cfg r18, zero, 14
001030  0102001a  ds_cfg r4, zero, 13
001034  1f150500  addli r10, r10, 1
001038  0b175d50  fmac.s r14, r26, r5
00103c  a1139702  shuffle_batch r7, r14, r9, 1
001040  1d100000  unlock zero
001044  7d800700  xsignal r15, 0
001048  1f7cfcff  addli r24, r24, -1
00104c  8b933311  add.s r7, r7, r19
001050  8b985819  sub.s r17, r17, r21
001054  b71d0cfe  beq r24, zero, -156
001058  3f201200  blt.s r4, r1, 8
00105c  5bf5ffff  j -88
001060  e30a2fd1  loadli.w r21,  -6000(r30)
001064  dbfcffff  j -28
001068  6302cfcf  loadli.w r4,  -6176(r30)
00106c  e3417fd1  loadli.w r3,  -5956(r30)
001070  3bee3400  bneq r9, r3, 920
001074  8b11e210  add.s r3, r4, r14
001078  670e0fce  storeli.w zero, -6176(r30)
00107c  1f970100  addli r14, r3, 1
001080  9f511000  addli r3, zero, 13
001084  3f3717fe  blt.s r14, r1, -564
001088  dbb7ffff  j -580
00108c  37ee0d00  beq r27, zero, 920
001090  e3013fd0  loadli.w r3,  -6120(r30)
001094  e7010fd0  storeli.w zero, -6120(r30)
001098  8b113310  add.s r3, r6, r3
00109c  1f930100  addli r6, r3, 1
0010a0  9f711000  addli r3, zero, 15
0010a4  3f6713fe  blt.s r6, r1, -552
0010a8  5bb9ffff  j -568
0010ac  bf6114fe  blt.s r8, r1, -904
0010b0  e3014fd1  loadli.w r3,  -5984(r30)
0010b4  1f024000  addli r4, zero, 32
0010b8  6343ffcf  loadli.w r6,  -6148(r30)
0010bc  e3028fd1  loadli.w r5,  -5952(r30)
0010c0  9f0d0000  addli r27, zero, 0
0010c4  1f7bf4ff  addli r22, r8, -1
0010c8  1f060000  addli r12, zero, 0
0010cc  9ff13100  addli r3, r3, 31
0010d0  0b135340  min.s r6, r6, r5
0010d4  0b924138  mod.s r4, r3, r4
0010d8  0b130348  max.s r6, r6, zero
0010dc  0b974118  sub.s r14, r3, r4
0010e0  8b114318  sub.s r3, r6, r4
0010e4  6302bfd0  loadli.w r4,  -6056(r30)
0010e8  9bb15100  slli r3, r3, 5
0010ec  1f79f2ff  addli r18, r4, -1
0010f0  9f8bc107  addli r23, r3, 992
0010f4  db010000  j 12
0010f8  1f160600  addli r12, r12, 1
0010fc  b72086fe  beq r12, r8, -984
001100  e3037fd0  loadli.w r7,  -6088(r30)
001104  6302afd1  loadli.w r4,  -5936(r30)
001108  8b117620  mul.s r3, r12, r7
00110c  0b123218  sub.s r4, r4, r3
001110  0b924340  min.s r4, r7, r4
001114  3fb21500  blt.s r11, r1, 140
001118  8b939131  div.s r7, r3, r25
00111c  9f080a00  addli r17, r20, 0
001120  1f8c0500  addli r24, r11, 0
001124  9bb44300  slli r9, r7, 4
001128  8b987b50  fmac.s r17, r23, r7
00112c  8b949118  sub.s r9, r3, r9
001130  9bb31400  slli r7, r9, 1
001134  e3043fd1  loadli.w r9,  -5992(r30)
001138  8b937810  add.s r7, r17, r7
00113c  9f080300  addli r17, r6, 0
001140  5b030000  j 24
001144  e3043fd1  loadli.w r9,  -5992(r30)
001148  1f7cfcff  addli r24, r24, -1
00114c  8b93c311  add.s r7, r7, r28
001150  8b989818  sub.s r17, r17, r9
001154  37310c00  beq r24, zero, 76
001158  0b9d1441  min.s r26, r9, r17
00115c  bf2f1dfe  blt.s r26, r1, -24
001160  e3047fd1  loadli.w r9,  -5960(r30)
001164  e30a5fd1  loadli.w r21,  -5976(r30)
001168  7d100100  xwait r2, 0
00116c  1d000000  lock zero, zero
001170  81060000  ds_cfg r13, zero, 0
001174  01020002  ds_cfg r4, zero, 1
001178  0107001c  ds_cfg r14, zero, 14
00117c  e3026fd1  loadli.w r5,  -5968(r30)
001180  0102001a  ds_cfg r4, zero, 13
001184  8b149538  mod.s r9, r10, r9
001188  1f150500  addli r10, r10, 1
00118c  8b9a5450  fmac.s r21, r9, r5
001190  c183aa05  shuffle_coa r7, r21, r26, 2
001194  1d100000  unlock zero
001198  7d800700  xsignal r15, 0
00119c  5bf5ffff  j -88
0011a0  9f030900  addli r7, r18, 0
0011a4  37206601  beq r12, r22, 8
0011a8  9f030000  addli r7, zero, 0
0011ac  8b913310  add.s r3, r7, r3
0011b0  630c2fd1  loadli.w r24,  -6000(r30)
0011b4  8b914110  add.s r3, r3, r4
0011b8  6302bfd0  loadli.w r4,  -6056(r30)
0011bc  8b914130  div.s r3, r3, r4
0011c0  cbecb1ff  ble.s r3, r27, -200
0011c4  0b92b119  sub.s r4, r3, r27
0011c8  7d000800  xsignal r16, 0
0011cc  7d800c00  xsignal r25, 0
0011d0  1f72f2ff  addli r4, r4, -1
0011d4  bb5f02fe  bneq r4, zero, -12
0011d8  9f8d0100  addli r27, r3, 0
0011dc  dbe3ffff  j -228
0011e0  e301cfd0  loadli.w r3,  -6048(r30)
0011e4  63427fd1  loadli.w r4,  -5956(r30)
0011e8  93814100  seteq r3, r3, r4
0011ec  9781b101  and r3, r3, r27
0011f0  3b8601fe  bneq r3, zero, -640
0011f4  93118004  setlt.s r3, zero, r8
0011f8  6342ffcf  loadli.w r4,  -6148(r30)
0011fc  e3028fd1  loadli.w r5,  -5952(r30)
001200  8b1a5240  min.s r21, r4, r5
001204  97813d00  and r3, r27, r3
001208  3be31100  bneq r3, r1, 216
00120c  e3014fd1  loadli.w r3,  -5984(r30)
001210  1f024000  addli r4, zero, 32
001214  0b9c0a48  max.s r24, r21, zero
001218  9ff13100  addli r3, r3, 31
00121c  0b924138  mod.s r4, r3, r4
001220  8b134c18  sub.s r7, r24, r4
001224  8b9d4118  sub.s r27, r3, r4
001228  1f020000  addli r4, zero, 0
00122c  9bb35300  slli r7, r7, 5
001230  9f81c307  addli r3, r7, 992
001234  db010000  j 12
001238  1f120200  addli r4, r4, 1
00123c  b7128200  beq r4, r8, 164
001240  bfef15fe  blt.s r11, r1, -8
001244  e3087fd0  loadli.w r17,  -6088(r30)
001248  e302afd1  loadli.w r5,  -5936(r30)
00124c  1f090c00  addli r18, r24, 0
001250  1f8d0500  addli r26, r11, 0
001254  8b131221  mul.s r7, r4, r17
001258  8b949331  div.s r9, r7, r25
00125c  0b977218  sub.s r14, r5, r7
001260  1bb64400  slli r12, r9, 4
001264  8b93c318  sub.s r7, r7, r12
001268  1f060a00  addli r12, r20, 0
00126c  0b969150  fmac.s r12, r3, r9
001270  9bb41300  slli r9, r7, 1
001274  8b93e840  min.s r7, r17, r14
001278  8b189610  add.s r17, r12, r9
00127c  e3043fd1  loadli.w r9,  -5992(r30)
001280  5b030000  j 24
001284  e3043fd1  loadli.w r9,  -5992(r30)
001288  1f7dfdff  addli r26, r26, -1
00128c  8b98c811  add.s r17, r17, r28
001290  0b199918  sub.s r18, r18, r9
001294  b71e0dfe  beq r26, zero, -92
001298  0b962441  min.s r12, r9, r18
00129c  bf2f16fe  blt.s r12, r1, -24
0012a0  e3047fd1  loadli.w r9,  -5960(r30)
0012a4  63075fd1  loadli.w r14,  -5976(r30)
0012a8  7d100100  xwait r2, 0
0012ac  1d000000  lock zero, zero
0012b0  81060000  ds_cfg r13, zero, 0
0012b4  81030002  ds_cfg r7, zero, 1
0012b8  810d001c  ds_cfg r27, zero, 14
0012bc  e3026fd1  loadli.w r5,  -5968(r30)
0012c0  8103001a  ds_cfg r7, zero, 13
0012c4  8b149538  mod.s r9, r10, r9
0012c8  1f150500  addli r10, r10, 1
0012cc  0b975450  fmac.s r14, r9, r5
0012d0  c108c704  shuffle_coa r17, r14, r12, 2
0012d4  1d100000  unlock zero
0012d8  7d800700  xsignal r15, 0
0012dc  5bf5ffff  j -88
0012e0  3f0913fc  blt.s r6, r1, -1472
0012e4  e3014fd1  loadli.w r3,  -5984(r30)
0012e8  1f024000  addli r4, zero, 32
0012ec  0b940a48  max.s r8, r21, zero
0012f0  9b731b00  setlti r7, r22, 1
0012f4  630c2fd1  loadli.w r24,  -6000(r30)
0012f8  9f0d0000  addli r27, zero, 0
0012fc  1f79f3ff  addli r18, r6, -1
001300  1f060000  addli r12, zero, 0
001304  9ff13100  addli r3, r3, 31
001308  0b924138  mod.s r4, r3, r4
00130c  0b974118  sub.s r14, r3, r4
001310  8b114418  sub.s r3, r8, r4
001314  6342afcf  loadli.w r4,  -6188(r30)
001318  9bb15100  slli r3, r3, 5
00131c  171a7200  or r20, r4, r7
001320  1f8dc107  addli r26, r3, 992
001324  db010000  j 12
001328  1f160600  addli r12, r12, 1
00132c  b76766fc  beq r12, r6, -1544
001330  e3437fd0  loadli.w r7,  -6084(r30)
001334  6342bfd1  loadli.w r4,  -5924(r30)
001338  8b117620  mul.s r3, r12, r7
00133c  0b123218  sub.s r4, r4, r3
001340  0b924340  min.s r4, r7, r4
001344  37010a00  beq r20, zero, 64
001348  e3439fd1  loadli.w r7,  -5940(r30)
00134c  37202601  beq r12, r18, 8
001350  9f030000  addli r7, zero, 0
001354  8b913310  add.s r3, r7, r3
001358  8b914110  add.s r3, r3, r4
00135c  63421fd1  loadli.w r4,  -6004(r30)
001360  8b914130  div.s r3, r3, r4
001364  4b9fb1ff  ble.s r3, r27, -60
001368  0b92b119  sub.s r4, r3, r27
00136c  7d000800  xsignal r16, 0
001370  7d800c00  xsignal r25, 0
001374  1f72f2ff  addli r4, r4, -1
001378  bb5f02fe  bneq r4, zero, -12
00137c  9f8d0100  addli r27, r3, 0
001380  5bf5ffff  j -88
001384  8b939131  div.s r7, r3, r25
001388  9f850b00  addli r11, r23, 0
00138c  9f080400  addli r17, r8, 0
001390  9bb44300  slli r9, r7, 4
001394  8b157d50  fmac.s r11, r26, r7
001398  8b949118  sub.s r9, r3, r9
00139c  9bb31400  slli r7, r9, 1
0013a0  8b937510  add.s r7, r11, r7
0013a4  9f050b00  addli r11, r22, 0
0013a8  db020000  j 20
0013ac  9ff5f5ff  addli r11, r11, -1
0013b0  8b933311  add.s r7, r7, r19
0013b4  8b988819  sub.s r17, r17, r24
0013b8  37ce05fe  beq r11, zero, -112
0013bc  bf4f12fe  blt.s r4, r1, -16
0013c0  e3047fd1  loadli.w r9,  -5960(r30)
0013c4  8b1a1c41  min.s r21, r24, r17
0013c8  630c5fd1  loadli.w r24,  -5976(r30)
0013cc  7d100100  xwait r2, 0
0013d0  1d000000  lock zero, zero
0013d4  81060000  ds_cfg r13, zero, 0
0013d8  810a0002  ds_cfg r21, zero, 1
0013dc  e3026fd1  loadli.w r5,  -5968(r30)
0013e0  0107001c  ds_cfg r14, zero, 14
0013e4  0102001a  ds_cfg r4, zero, 13
0013e8  8b149538  mod.s r9, r10, r9
0013ec  1f150500  addli r10, r10, 1
0013f0  0b9c5450  fmac.s r24, r9, r5
0013f4  a1135c03  shuffle_batch r7, r24, r21, 1
0013f8  630c2fd1  loadli.w r24,  -6000(r30)
0013fc  1d100000  unlock zero
001400  7d800700  xsignal r15, 0
001404  5bf5ffff  j -88
001408  e3018fcf  loadli.w r3,  -6208(r30)
00140c  93013206  setle.u r3, r4, r3
001410  bbd00100  bneq r3, zero, 52
001414  1f170700  addli r14, r14, 1
001418  9f511000  addli r3, zero, 13
00141c  bf5817fc  blt.s r14, r1, -1484
001420  db44ffff  j -1500
001424  63023fd0  loadli.w r4,  -6120(r30)
001428  e3418fcf  loadli.w r3,  -6204(r30)
00142c  93013206  setle.u r3, r4, r3
001430  bba00100  bneq r3, zero, 40
001434  1f130300  addli r6, r6, 1
001438  9f711000  addli r3, zero, 15
00143c  3f0913fc  blt.s r6, r1, -1472
001440  5b46ffff  j -1488
001444  1f120200  addli r4, r4, 1
001448  670e4fce  storeli.w r4, -6176(r30)
00144c  9f511000  addli r3, zero, 13
001450  3f0817fc  blt.s r14, r1, -1536
001454  5b3effff  j -1552
001458  1f120200  addli r4, r4, 1
00145c  e7014fd0  storeli.w r4, -6120(r30)
001460  9f711000  addli r3, zero, 15
001464  3f6813fc  blt.s r6, r1, -1512
001468  5b41ffff  j -1528
00146c  e70b9fce  storeli.w r9, -6216(r30)
001470  bff754fa  blt.s r9, r5, -2564
001474  9f71f2ff  addli r3, r4, -1
001478  e70b3fce  storeli.w r3, -6216(r30)
00147c  67449fd0  storeli.w r9, -6076(r30)
001480  bff7b4fa  blt.s r9, r11, -2564
001484  5bbefeff  j -2576
001488  63026fce  loadli.w r4,  -6352(r30)
00148c  670dbfd1  storeli.w r27, -5936(r30)
001490  6708efd0  storeli.w r14, -6016(r30)
001494  abf1ffff  lui r3, 1048575
001498  9b93f1ff  ori r7, r3, 4095
00149c  e3417fce  loadli.w r3,  -6340(r30)
0014a0  67037fce  storeli.w r7, -6352(r30)
0014a4  bfc933f8  blt.s r7, r3, -3472
0014a8  e341afcb  loadli.w r3,  -6700(r30)
0014ac  67033fce  storeli.w r3, -6352(r30)
0014b0  db4cfeff  j -3484
0014b4  9f300000  addli r1, zero, 3
0014b8  37a31312  beq r7, r1, 9416
0014bc  e3001f03  loadli.w r1,  392(r30)
0014c0  e70b1fd0  storeli.w r1, -5960(r30)
0014c4  e3401f03  loadli.w r1,  396(r30)
0014c8  670d1fd0  storeli.w r1, -5936(r30)
0014cc  e3400f03  loadli.w r1,  388(r30)
0014d0  e74c1fd0  storeli.w r1, -5940(r30)
0014d4  9f400000  addli r1, zero, 4
0014d8  b7a71316  beq r7, r1, 11752
0014dc  630c7fd1  loadli.w r24,  -5960(r30)
0014e0  9f700000  addli r1, zero, 7
0014e4  3bd01322  bneq r7, r1, 17428
0014e8  e3005f01  loadli.w r1,  168(r30)
0014ec  2b01803f  lui r2, 260096
0014f0  670c2fd0  storeli.w r2, -5952(r30)
0014f4  3bd20000  bneq r1, zero, 148
0014f8  b3001028  .word 0x281000b3
0014fc  13211b00  seteq.d r2, r[23:24], r[2:3]
001500  ab00803f  lui r1, 260096
001504  bb710100  bneq r2, zero, 124
001508  00a00000  mfence { lm }
00150c  9f006000  addli r1, zero, 48
001510  2b0100f0  lui r2, 983040
001514  9f010fda  addli r3, r30, -4864
001518  97902000  or r1, r1, r2
00151c  ff203b00  l_gm2lm r1, r3, 0(r[23:24])
001520  00a00200  mfence { lm, gm }
001524  e3000fda  loadli.w r1,  -4864(r30)
001528  63410fda  loadli.w r2,  -4860(r30)
00152c  e3011fda  loadli.w r3,  -4856(r30)
001530  63421fda  loadli.w r4,  -4852(r30)
001534  e3022fda  loadli.w r5,  -4848(r30)
001538  63432fda  loadli.w r6,  -4844(r30)
00153c  e3434fda  loadli.w r7,  -4828(r30)
001540  63045fda  loadli.w r8,  -4824(r30)
001544  e3445fda  loadli.w r9,  -4820(r30)
001548  8be02048  max.f r1, r1, r2
00154c  0be14148  max.f r2, r3, r4
001550  8be16248  max.f r3, r5, r6
001554  63023fda  loadli.w r4,  -4840(r30)
001558  e3423fda  loadli.w r5,  -4836(r30)
00155c  63034fda  loadli.w r6,  -4832(r30)
001560  0b613148  max.f r2, r2, r3
001564  0b625248  max.f r4, r4, r5
001568  8b627348  max.f r5, r6, r7
00156c  0b639448  max.f r6, r8, r9
001570  8be02048  max.f r1, r1, r2
001574  8be16248  max.f r3, r5, r6
001578  0b613248  max.f r2, r4, r3
00157c  8be02048  max.f r1, r1, r2
001580  8f801018  div.f.rn r1, r1, r1
001584  670c1fd0  storeli.w r1, -5952(r30)
001588  e340cfcb  loadli.w r1,  -6684(r30)
00158c  1f110000  addli r2, zero, 1
001590  bfad2020  blt.s r1, r2, 17256
001594  6305ff01  loadli.w r10,  248(r30)
001598  e3002f02  loadli.w r1,  272(r30)
00159c  63461f02  loadli.w r12,  268(r30)
0015a0  e304ef01  loadli.w r9,  240(r30)
0015a4  1f8a0700  addli r20, r15, 0
0015a8  e341ff01  loadli.w r3,  252(r30)
0015ac  e3474f03  loadli.w r15,  420(r30)
0015b0  e3050f02  loadli.w r11,  256(r30)
0015b4  eb588f01  load.d r[18:19], 24(r30)
0015b8  1f0b4fcf  addli r22, r30, -6240
0015bc  63440f02  loadli.w r8,  260(r30)
0015c0  e7060fce  storeli.w zero, -6296(r30)
0015c4  63079f02  loadli.w r14,  328(r30)
0015c8  6303af01  loadli.w r6,  208(r30)
0015cc  63089f01  loadli.w r16,  200(r30)
0015d0  e3425f02  loadli.w r5,  300(r30)
0015d4  9f0a0000  addli r21, zero, 0
0015d8  9f030000  addli r7, zero, 0
0015dc  1f020000  addli r4, zero, 0
0015e0  8b944441  min.s r9, r9, r20
0015e4  8b90c020  mul.s r1, r1, r12
0015e8  1f75f5ff  addli r10, r10, -1
0015ec  9bf71700  setlti r15, r15, 1
0015f0  9ff1f1ff  addli r3, r3, -1
0015f4  73301b01  store.d r[18:19], 0(r22)
0015f8  1f74f4ff  addli r8, r8, -1
0015fc  9ff2f2ff  addli r5, r5, -1
001600  1f060001  addli r12, zero, 128
001604  9f180000  addli r17, zero, 1
001608  e745afce  storeli.w r10, -6308(r30)
00160c  0b951620  mul.s r10, r13, r1
001610  8b940448  max.s r9, r9, zero
001614  6707ffce  storeli.w r15, -6288(r30)
001618  e7053fce  storeli.w r3, -6312(r30)
00161c  9f370000  addli r15, zero, 3
001620  9f06efd0  addli r13, r30, -6032
001624  8b919510  add.s r3, r11, r9
001628  e704afce  storeli.w r10, -6328(r30)
00162c  e7499fce  storeli.w r9, -6244(r30)
001630  abf4ffff  lui r9, 1048575
001634  67448fce  storeli.w r8, -6332(r30)
001638  1f05ffd0  addli r10, r30, -6024
00163c  e70c5fce  storeli.w r5, -6200(r30)
001640  670a0fd1  storeli.w r16, -5984(r30)
001644  9b94f4ff  ori r9, r9, 4095
001648  9ff1f1ff  addli r3, r3, -1
00164c  17249700  xor r8, r14, r9
001650  8b91b130  div.s r3, r3, r11
001654  9f150000  addli r11, zero, 1
001658  67098fce  storeli.w r8, -6256(r30)
00165c  3314832c  .word 0x2c831433
001660  1b331300  slli r6, r6, 1
001664  73308500  store.d r[9:10], 0(r10)
001668  1b341800  slli r8, r16, 1
00166c  67496fd0  storeli.w r6, -5996(r30)
001670  0b130358  neg.s r6, r6
001674  9f140000  addli r9, zero, 1
001678  e7098fd0  storeli.w r8, -5992(r30)
00167c  0b140458  neg.s r8, r8
001680  e7433fd0  storeli.w r3, -6084(r30)
001684  e341afcb  loadli.w r3,  -6700(r30)
001688  e7486fd0  storeli.w r6, -6004(r30)
00168c  b3125828  .word 0x285812b3
001690  1f180000  addli r16, zero, 1
001694  67098fd0  storeli.w r8, -6000(r30)
001698  1f140000  addli r8, zero, 1
00169c  73b05600  store.d r[6:7], 0(r13)
0016a0  67083fce  storeli.w r3, -6272(r30)
0016a4  5b050000  j 40
0016a8  e302dfce  loadli.w r5,  -6296(r30)
0016ac  e34acfce  loadli.w r21,  -6300(r30)
0016b0  e341cfcb  loadli.w r3,  -6684(r30)
0016b4  0b121219  sub.s r4, r4, r17
0016b8  8b940458  neg.s r9, r9
0016bc  8b980858  neg.s r17, r17
0016c0  9f920200  addli r5, r5, 1
0016c4  e7065fce  storeli.w r5, -6296(r30)
0016c8  b7c83220  beq r5, r3, 16944
0016cc  e3020fcf  loadli.w r5,  -6272(r30)
0016d0  8b919218  sub.s r3, r5, r9
0016d4  67463fce  storeli.w r3, -6300(r30)
0016d8  37f65a04  beq r21, r5, 2460
0016dc  1f050400  addli r10, r8, 0
0016e0  6303cfcb  loadli.w r6,  -6688(r30)
0016e4  6304dfce  loadli.w r8,  -6296(r30)
0016e8  e302afcb  loadli.w r5,  -6704(r30)
0016ec  e7479fce  storeli.w r9, -6276(r30)
0016f0  8b116420  mul.s r3, r8, r6
0016f4  8b913218  sub.s r3, r5, r3
0016f8  e3428fce  loadli.w r5,  -6332(r30)
0016fc  8b113340  min.s r3, r6, r3
001700  8b910148  max.s r3, r3, zero
001704  8b913210  add.s r3, r5, r3
001708  e342ffcf  loadli.w r5,  -6148(r30)
00170c  8b965130  div.s r13, r3, r5
001710  e3019fce  loadli.w r3,  -6328(r30)
001714  e3426fcc  loadli.w r5,  -6604(r30)
001718  8b918120  mul.s r3, r3, r8
00171c  63447fd0  loadli.w r8,  -6084(r30)
001720  e70a3fce  storeli.w r3, -6232(r30)
001724  8b915221  mul.s r3, r5, r21
001728  1f73f4ff  addli r6, r8, -1
00172c  e70ddfce  storeli.w r13, -6184(r30)
001730  67066fce  storeli.w r6, -6304(r30)
001734  63036fcc  loadli.w r6,  -6608(r30)
001738  8b113318  sub.s r3, r6, r3
00173c  0b938620  mul.s r6, r13, r8
001740  1f040500  addli r8, r10, 0
001744  e7083fce  storeli.w r3, -6264(r30)
001748  9ff1f6ff  addli r3, r13, -1
00174c  e7076fce  storeli.w r6, -6280(r30)
001750  67453fce  storeli.w r3, -6316(r30)
001754  8b919220  mul.s r3, r5, r9
001758  67473fce  storeli.w r3, -6284(r30)
00175c  db070000  j 60
001760  e3001fcf  loadli.w r1,  -6264(r30)
001764  e341efce  loadli.w r3,  -6284(r30)
001768  e34a0fcf  loadli.w r21,  -6268(r30)
00176c  e344ffce  loadli.w r9,  -6276(r30)
001770  6303ffce  loadli.w r6,  -6280(r30)
001774  0b121219  sub.s r4, r4, r17
001778  0b140458  neg.s r8, r8
00177c  8b980858  neg.s r17, r17
001780  8b903018  sub.s r1, r1, r3
001784  e3010fcf  loadli.w r3,  -6272(r30)
001788  8b9a9a10  add.s r21, r21, r9
00178c  e7081fce  storeli.w r1, -6264(r30)
001790  9f000300  addli r1, r6, 0
001794  37f33a04  beq r21, r3, 2268
001798  93806000  seteq r1, r1, r6
00179c  e301efce  loadli.w r3,  -6288(r30)
0017a0  97903000  or r1, r1, r3
0017a4  bb900000  bneq r1, zero, 36
0017a8  e3410fd0  loadli.w r3,  -6140(r30)
0017ac  9f004fe2  addli r1, r30, -3808
0017b0  abf20000  lui r5, 15
0017b4  9ff1f1ff  addli r3, r3, -1
0017b8  9b92f2ff  ori r5, r5, 4095
0017bc  73905000  store.h r5, 0(r1)
0017c0  9fa00000  addli r1, r1, 2
0017c4  bbbf01fe  bneq r3, zero, -20
0017c8  abf0ffff  lui r1, 1048575
0017cc  63457fd0  loadli.w r10,  -6084(r30)
0017d0  9f040000  addli r9, zero, 0
0017d4  3f308000  blt.s zero, r8, 12
0017d8  e304cfce  loadli.w r9,  -6304(r30)
0017dc  1b95f0ff  ori r10, r1, 4095
0017e0  67485fcf  storeli.w r21, -6268(r30)
0017e4  b7fda4fe  beq r9, r10, -132
0017e8  e3416fcc  loadli.w r3,  -6604(r30)
0017ec  e3026fcc  loadli.w r5,  -6608(r30)
0017f0  8b903a20  mul.s r1, r21, r3
0017f4  8b901218  sub.s r1, r5, r1
0017f8  8b901140  min.s r1, r3, r1
0017fc  8b910048  max.s r3, r1, zero
001800  e300bfce  loadli.w r1,  -6312(r30)
001804  674d3fce  storeli.w r3, -6188(r30)
001808  8b903010  add.s r1, r1, r3
00180c  e3011fce  loadli.w r3,  -6392(r30)
001810  8b913030  div.s r3, r1, r3
001814  abf0ffff  lui r1, 1048575
001818  9b90f0ff  ori r1, r1, 4095
00181c  1f870100  addli r14, r3, 0
001820  674c3fce  storeli.w r3, -6204(r30)
001824  bf40b000  blt.s zero, r11, 48
001828  1f870000  addli r14, r1, 0
00182c  6309bfcf  loadli.w r18,  -6184(r30)
001830  3f200001  blt.s zero, r16, 8
001834  5b050000  j 40
001838  9f060000  addli r13, zero, 0
00183c  bf40b000  blt.s zero, r11, 48
001840  e3408fcf  loadli.w r1,  -6204(r30)
001844  9ff6f0ff  addli r13, r1, -1
001848  1f0b0000  addli r22, zero, 0
00184c  bf300001  blt.s zero, r16, 44
001850  db040000  j 36
001854  6309bfcf  loadli.w r18,  -6184(r30)
001858  bf0f00ff  blt.s zero, r16, -32
00185c  1f890000  addli r18, r1, 0
001860  9f060000  addli r13, zero, 0
001864  3f20b000  blt.s zero, r11, 8
001868  5bfbffff  j -40
00186c  1f0b0000  addli r22, zero, 0
001870  3f200001  blt.s zero, r16, 8
001874  634bafce  loadli.w r22,  -6316(r30)
001878  e300dfce  loadli.w r1,  -6296(r30)
00187c  e341bfce  loadli.w r3,  -6308(r30)
001880  e3426fcc  loadli.w r5,  -6604(r30)
001884  63430fcf  loadli.w r6,  -6268(r30)
001888  1f8a0500  addli r20, r11, 0
00188c  670c8fce  storeli.w r8, -6208(r30)
001890  e74bafce  storeli.w r10, -6212(r30)
001894  938a3000  seteq r21, r1, r3
001898  e3001fcf  loadli.w r1,  -6264(r30)
00189c  e341cfce  loadli.w r3,  -6300(r30)
0018a0  8b901240  min.s r1, r5, r1
0018a4  93013302  setneq r3, r6, r3
0018a8  8b900048  max.s r1, r1, zero
0018ac  e70b1fce  storeli.w r1, -6216(r30)
0018b0  e3404fcc  loadli.w r1,  -6620(r30)
0018b4  e7035fd1  storeli.w r21, -6088(r30)
0018b8  8b105350  fmac.s r1, r6, r5
0018bc  8b128518  sub.s r5, r10, r8
0018c0  670d1fce  storeli.w r1, -6192(r30)
0018c4  e3407fd0  loadli.w r1,  -6084(r30)
0018c8  674b5fce  storeli.w r5, -6220(r30)
0018cc  8b908020  mul.s r1, r1, r8
0018d0  8b101518  sub.s r1, r10, r1
0018d4  e7021fd0  storeli.w r1, -6104(r30)
0018d8  97903a00  or r1, r21, r3
0018dc  9f810400  addli r3, r9, 0
0018e0  670b1fce  storeli.w r1, -6224(r30)
0018e4  5b040000  j 32
0018e8  8b150a58  neg.s r11, r20
0018ec  8b964619  sub.s r13, r13, r20
0018f0  0b121219  sub.s r4, r4, r17
0018f4  8b918110  add.s r3, r3, r8
0018f8  8b980858  neg.s r17, r17
0018fc  1f8a0500  addli r20, r11, 0
001900  b789a1fe  beq r3, r10, -416
001904  37ede602  beq r13, r14, 1880
001908  e3406fcf  loadli.w r1,  -6220(r30)
00190c  1f850100  addli r10, r3, 0
001910  e3428fcf  loadli.w r5,  -6204(r30)
001914  e3042fcf  loadli.w r9,  -6256(r30)
001918  6343ffcc  loadli.w r6,  -6532(r30)
00191c  63441fcd  loadli.w r8,  -6516(r30)
001920  9f1c0000  addli r25, zero, 1
001924  9f05dfcf  addli r11, r30, -6168
001928  1f0defcc  addli r26, r30, -6544
00192c  e700efd0  storeli.w r14, -6136(r30)
001930  e70f4fcf  storeli.w r20, -6152(r30)
001934  e742afd0  storeli.w r10, -6100(r30)
001938  93801102  setneq r1, r3, r1
00193c  e3415fcf  loadli.w r3,  -6228(r30)
001940  8b144751  fmac.s r9, r14, r20
001944  674f9fce  storeli.w r9, -6156(r30)
001948  e3046fcf  loadli.w r9,  -6224(r30)
00194c  93915104  setlt.s r3, r3, r5
001950  e3025fd0  loadli.w r5,  -6104(r30)
001954  93025502  setneq r5, r10, r5
001958  97901400  or r1, r9, r1
00195c  e304ffcc  loadli.w r9,  -6536(r30)
001960  0b139550  fmac.s r6, r10, r9
001964  97941100  or r9, r3, r1
001968  9ba01000  xori r1, r1, 1
00196c  97801100  and r1, r3, r1
001970  9bab1400  xori r23, r9, 1
001974  e3011fce  loadli.w r3,  -6392(r30)
001978  67425fd0  storeli.w r5, -6108(r30)
00197c  e3025fcf  loadli.w r5,  -6232(r30)
001980  670f1fce  storeli.w r1, -6160(r30)
001984  e3403fcf  loadli.w r1,  -6244(r30)
001988  67447fd1  storeli.w r23, -6076(r30)
00198c  8b125510  add.s r5, r10, r5
001990  e7045fd0  storeli.w r5, -6072(r30)
001994  8b128520  mul.s r5, r10, r8
001998  1f054fcf  addli r10, r30, -6240
00199c  8b905018  sub.s r1, r1, r5
0019a0  b312532c  .word 0x2c5312b3
0019a4  8b101440  min.s r1, r8, r1
0019a8  6b540500  load.d r[9:10], 0(r10)
0019ac  97b29203  sll.d r[6:7], r[6:7], r25
0019b0  8b900048  max.s r1, r1, zero
0019b4  0b245410  add.ul r[9:10], r[9:10], r[6:7]
0019b8  67041fd0  storeli.w r1, -6080(r30)
0019bc  8b90d120  mul.s r1, r3, r13
0019c0  8b914121  mul.s r3, r3, r20
0019c4  73b08500  store.d r[9:10], 0(r11)
0019c8  6b540d00  load.d r[9:10], 0(r26)
0019cc  e74d3fce  storeli.w r3, -6180(r30)
0019d0  8b225410  add.ul r[6:7], r[9:10], r[6:7]
0019d4  1f04cfcf  addli r8, r30, -6176
0019d8  73305400  store.d r[6:7], 0(r8)
0019dc  e3027fcf  loadli.w r5,  -6216(r30)
0019e0  8b921218  sub.s r5, r5, r1
0019e4  5b040000  j 32
0019e8  0b121219  sub.s r4, r4, r17
0019ec  0b180858  neg.s r16, r16
0019f0  8b964611  add.s r13, r13, r20
0019f4  8b980858  neg.s r17, r17
0019f8  8b923218  sub.s r5, r5, r3
0019fc  9f0c0000  addli r25, zero, 0
001a00  37b9e602  beq r13, r14, 1612
001a04  3b302b01  bneq r22, r18, 12
001a08  0b1b0b19  sub.s r22, r22, r16
001a0c  dbc50000  j 1580
001a10  63041fce  loadli.w r8,  -6392(r30)
001a14  67015fd0  storeli.w r5, -6128(r30)
001a18  8b904621  mul.s r1, r13, r20
001a1c  e344afcf  loadli.w r9,  -6188(r30)
001a20  6303afcf  loadli.w r6,  -6192(r30)
001a24  9f05efd0  addli r11, r30, -6032
001a28  1f0effd0  addli r28, r30, -6024
001a2c  e701dfd0  storeli.w r13, -6120(r30)
001a30  0b1d0919  sub.s r26, r18, r16
001a34  67462fd1  storeli.w r18, -6044(r30)
001a38  e7460fd1  storeli.w r16, -6036(r30)
001a3c  e7061fd1  storeli.w r17, -6040(r30)
001a40  67069fd1  storeli.w r25, -6048(r30)
001a44  e745afd1  storeli.w r26, -6052(r30)
001a48  8b115440  min.s r3, r8, r5
001a4c  e342efcf  loadli.w r5,  -6156(r30)
001a50  0b938650  fmac.s r6, r13, r8
001a54  8b910148  max.s r3, r3, zero
001a58  93805000  seteq r1, r1, r5
001a5c  8b928620  mul.s r5, r13, r8
001a60  eb560e00  load.d r[14:15], 0(r28)
001a64  e7083fd0  storeli.w r3, -6008(r30)
001a68  e301efcf  loadli.w r3,  -6160(r30)
001a6c  8b925418  sub.s r5, r9, r5
001a70  0b145440  min.s r8, r8, r5
001a74  b312532c  .word 0x2c5312b3
001a78  67038fd0  storeli.w r8, -6096(r30)
001a7c  0b1a0448  max.s r20, r8, zero
001a80  6bd40500  load.d r[9:10], 0(r11)
001a84  978d1100  and r27, r3, r1
001a88  9f00dfcf  addli r1, r30, -6168
001a8c  9f110000  addli r3, zero, 1
001a90  8bb48220  mul.sl r[10:11], r[6:7], r[9:10]
001a94  8bb2d220  mul.sl r[6:7], r[6:7], r[14:15]
001a98  ebd60000  load.d r[14:15], 0(r1)
001a9c  9b307a00  slli r1, r20, 7
001aa0  6745bfd1  storeli.w r27, -6060(r30)
001aa4  97b43402  sll.d r[10:11], r[10:11], r3
001aa8  e7491fd0  storeli.w r1, -5988(r30)
001aac  e3009fcf  loadli.w r1,  -6200(r30)
001ab0  97b23202  sll.d r[6:7], r[6:7], r3
001ab4  0ba49610  add.ul r[9:10], r[14:15], r[10:11]
001ab8  9f066fd1  addli r13, r30, -5968
001abc  1f07cfcf  addli r14, r30, -6176
001ac0  8b904011  add.s r1, r1, r20
001ac4  73b08600  store.d r[9:10], 0(r13)
001ac8  eb540700  load.d r[10:11], 0(r14)
001acc  63441fd0  loadli.w r8,  -6132(r30)
001ad0  67431fd0  storeli.w r1, -6092(r30)
001ad4  8ba25410  add.ul r[6:7], r[10:11], r[6:7]
001ad8  9f045fd1  addli r9, r30, -5976
001adc  73b05400  store.d r[6:7], 0(r9)
001ae0  db020000  j 20
001ae4  0b1b0b11  add.s r22, r22, r16
001ae8  0b121211  add.s r4, r4, r17
001aec  9f010000  addli r3, zero, 0
001af0  b7442b03  beq r22, r18, 1328
001af4  e3020fd0  loadli.w r5,  -6144(r30)
001af8  8b105238  mod.s r1, r4, r5
001afc  8b905010  add.s r1, r1, r5
001b00  8b925038  mod.s r5, r1, r5
001b04  9f000000  addli r1, zero, 0
001b08  bff00200  blt.s r5, zero, 60
001b0c  63430fd0  loadli.w r6,  -6140(r30)
001b10  cb505300  ble.s r6, r5, 52
001b14  9bb01200  slli r1, r5, 1
001b18  9f024fe2  addli r5, r30, -3808
001b1c  63039fd0  loadli.w r6,  -6072(r30)
001b20  e3447fd0  loadli.w r9,  -6084(r30)
001b24  8b921210  add.s r5, r5, r1
001b28  0b139b50  fmac.s r6, r22, r9
001b2c  ebb00200  load.hu r1, 0(r5)
001b30  3b301300  bneq r6, r1, 12
001b34  9f000000  addli r1, zero, 0
001b38  db010000  j 12
001b3c  9f100000  addli r1, zero, 1
001b40  73906200  store.h r6, 0(r5)
001b44  97813c00  and r3, r25, r3
001b48  97817101  and r3, r3, r23
001b4c  3ba02100  bneq r3, r2, 8
001b50  7d800700  xsignal r15, 0
001b54  1303ab01  seteq r6, r22, r26
001b58  97826a00  and r5, r21, r6
001b5c  9ba51200  xori r11, r5, 1
001b60  9701b300  and r3, r6, r11
001b64  3ba00200  bneq r5, zero, 8
001b68  b7a20102  beq r3, zero, 1192
001b6c  67086fd0  storeli.w r6, -6016(r30)
001b70  e3429fcf  loadli.w r5,  -6196(r30)
001b74  63038fd0  loadli.w r6,  -6080(r30)
001b78  9f04efd0  addli r9, r30, -6032
001b7c  1f05ffd0  addli r10, r30, -6024
001b80  67484fd0  storeli.w r4, -6012(r30)
001b84  8b1a5330  div.s r21, r6, r5
001b88  ebd20400  load.d r[6:7], 0(r9)
001b8c  97bc2202  sll.d r[26:27], r[6:7], r2
001b90  eb520500  load.d r[6:7], 0(r10)
001b94  17b82202  sll.d r[17:18], r[6:7], r2
001b98  37602400  beq r8, r2, 24
001b9c  b738f400  beq r8, r15, 556
001ba0  1f220000  addli r4, zero, 2
001ba4  bb684400  bneq r8, r4, 568
001ba8  63424fd0  loadli.w r4,  -6108(r30)
001bac  97804000  and r1, r1, r4
001bb0  b7b80000  beq r1, zero, 556
001bb4  e302bfd0  loadli.w r5,  -6056(r30)
001bb8  8b905a10  add.s r1, r21, r5
001bbc  9ff0f0ff  addli r1, r1, -1
001bc0  8b905030  div.s r1, r1, r5
001bc4  3fc02002  blt.s r1, r2, 1040
001bc8  63026fd0  loadli.w r4,  -6096(r30)
001bcc  9ba11100  xori r3, r3, 1
001bd0  1f050000  addli r10, zero, 0
001bd4  1b731200  setlti r6, r4, 1
001bd8  97926500  or r5, r11, r6
001bdc  97946100  or r9, r3, r6
001be0  db090000  j 76
001be4  95070004  dma_cfg r15, zero, zero, 2
001be8  1587c506  dma_cfg r14, r11, r12, 3
001bec  63422fd1  loadli.w r4,  -5996(r30)
001bf0  1502460b  dma_cfg r4, r12, r20, 5
001bf4  63433fd1  loadli.w r6,  -5988(r30)
001bf8  1f028000  addli r4, zero, 64
001bfc  15023308  dma_cfg r4, r6, r3, 4
001c00  35000000  dma_run zero
001c04  1500200a  dma_cfg zero, zero, r2, 5
001c08  15000010  dma_cfg zero, zero, zero, 8
001c0c  9f510000  addli r3, zero, 5
001c10  1d900100  unlock r3
001c14  630c7fd1  loadli.w r24,  -5960(r30)
001c18  9f014000  addli r3, zero, 32
001c1c  7d800100  xsignal r3, 0
001c20  9f930300  addli r7, r7, 1
001c24  1f150500  addli r10, r10, 1
001c28  b73e1500  beq r10, r1, 940
001c2c  6304bfd0  loadli.w r8,  -6056(r30)
001c30  0b138520  mul.s r6, r10, r8
001c34  8b916a18  sub.s r3, r21, r6
001c38  8b113440  min.s r3, r8, r3
001c3c  bb930200  bneq r5, zero, 228
001c40  1f124000  addli r4, zero, 33
001c44  7d100200  xwait r4, 0
001c48  3fb32100  blt.s r3, r2, 204
001c4c  0b978339  mod.s r14, r7, r24
001c50  e3459fd1  loadli.w r11,  -5940(r30)
001c54  6304afd1  loadli.w r8,  -5936(r30)
001c58  1f520000  addli r4, zero, 5
001c5c  1d000200  lock zero, r4
001c60  9ff73100  addli r15, r3, 31
001c64  b31b732d  .word 0x2d731bb3
001c68  15000012  dma_cfg zero, zero, zero, 9
001c6c  1f024000  addli r4, zero, 32
001c70  97bb2b02  sll.d r[24:25], r[24:25], r2
001c74  0b994730  div.s r18, r15, r4
001c78  1f026fd1  addli r4, r30, -5968
001c7c  8b158750  fmac.s r11, r14, r8
001c80  1bb72100  slli r14, r3, 2
001c84  63048fd1  loadli.w r8,  -5952(r30)
001c88  15018000  dma_cfg r2, zero, r8, 0
001c8c  1b07c707  andi r14, r14, 124
001c90  1500e010  dma_cfg zero, zero, r14, 8
001c94  15000102  dma_cfg zero, r2, zero, 1
001c98  63044fd1  loadli.w r8,  -5984(r30)
001c9c  eb560200  load.d r[14:15], 0(r4)
001ca0  0ba77611  add.ul r[15:16], r[14:15], r[24:25]
001ca4  bf202400  blt.s r8, r2, 40
001ca8  95070004  dma_cfg r15, zero, zero, 2
001cac  1587c506  dma_cfg r14, r11, r12, 3
001cb0  63023fd1  loadli.w r4,  -5992(r30)
001cb4  1502460b  dma_cfg r4, r12, r20, 5
001cb8  63443fd1  loadli.w r8,  -5988(r30)
001cbc  1f028000  addli r4, zero, 64
001cc0  15022409  dma_cfg r4, r8, r18, 4
001cc4  35000000  dma_run zero
001cc8  5b070000  j 56
001ccc  63022fd1  loadli.w r4,  -6000(r30)
001cd0  1502260a  dma_cfg r4, r12, r2, 5
001cd4  63443fd1  loadli.w r8,  -5988(r30)
001cd8  1f028000  addli r4, zero, 64
001cdc  15022409  dma_cfg r4, r8, r18, 4
001ce0  63091fd1  loadli.w r18,  -6008(r30)
001ce4  95070004  dma_cfg r15, zero, zero, 2
001ce8  1587c506  dma_cfg r14, r11, r12, 3
001cec  0b279711  add.ul r[15:16], r[15:16], r[26:27]
001cf0  1f79f9ff  addli r18, r18, -1
001cf4  9f850501  addli r11, r11, 128
001cf8  35000000  dma_run zero
001cfc  bb2f09fe  bneq r18, zero, -24
001d00  1500200a  dma_cfg zero, zero, r2, 5
001d04  15000010  dma_cfg zero, zero, zero, 8
001d08  1f520000  addli r4, zero, 5
001d0c  1d100200  unlock r4
001d10  630c7fd1  loadli.w r24,  -5960(r30)
001d14  1f024000  addli r4, zero, 32
001d18  7d000200  xsignal r4, 0
001d1c  9f930300  addli r7, r7, 1
001d20  3b9c04fe  bneq r9, zero, -252
001d24  1f124000  addli r4, zero, 33
001d28  7d100200  xwait r4, 0
001d2c  bfbb21fe  blt.s r3, r2, -276
001d30  0b978339  mod.s r14, r7, r24
001d34  9ff73100  addli r15, r3, 31
001d38  9bb12100  slli r3, r3, 2
001d3c  b31b732d  .word 0x2d731bb3
001d40  e3459fd1  loadli.w r11,  -5940(r30)
001d44  6304afd1  loadli.w r8,  -5936(r30)
001d48  1f025fd1  addli r4, r30, -5976
001d4c  1b83c107  andi r6, r3, 124
001d50  9f510000  addli r3, zero, 5
001d54  1d800100  lock zero, r3
001d58  15000012  dma_cfg zero, zero, zero, 9
001d5c  97bb2b02  sll.d r[24:25], r[24:25], r2
001d60  9f014000  addli r3, zero, 32
001d64  8b913730  div.s r3, r15, r3
001d68  8b158750  fmac.s r11, r14, r8
001d6c  63048fd1  loadli.w r8,  -5952(r30)
001d70  15018000  dma_cfg r2, zero, r8, 0
001d74  15006010  dma_cfg zero, zero, r6, 8
001d78  15000102  dma_cfg zero, r2, zero, 1
001d7c  eb560200  load.d r[14:15], 0(r4)
001d80  6343bfd1  loadli.w r6,  -5924(r30)
001d84  0ba77611  add.ul r[15:16], r[14:15], r[24:25]
001d88  3f202300  blt.s r6, r2, 8
001d8c  5bcbffff  j -424
001d90  63421fd1  loadli.w r4,  -6004(r30)
001d94  1502260a  dma_cfg r4, r12, r2, 5
001d98  63433fd1  loadli.w r6,  -5988(r30)
001d9c  1f028000  addli r4, zero, 64
001da0  15023308  dma_cfg r4, r6, r3, 4
001da4  e3011fd1  loadli.w r3,  -6008(r30)
001da8  95070004  dma_cfg r15, zero, zero, 2
001dac  1587c506  dma_cfg r14, r11, r12, 3
001db0  0b270711  add.ul r[15:16], r[15:16], r[17:18]
001db4  9ff1f1ff  addli r3, r3, -1
001db8  9f850501  addli r11, r11, 128
001dbc  35000000  dma_run zero
001dc0  bbaf01fe  bneq r3, zero, -24
001dc4  5bc8ffff  j -448
001dc8  63425fd0  loadli.w r4,  -6100(r30)
001dcc  e3025fd0  loadli.w r5,  -6104(r30)
001dd0  93025200  seteq r5, r4, r5
001dd4  97801200  and r1, r5, r1
001dd8  3bf700fe  bneq r1, zero, -548
001ddc  e3406fd0  loadli.w r1,  -6092(r30)
001de0  8b923031  div.s r5, r1, r19
001de4  bfc72200  blt.s r5, r2, 496
001de8  1ff33a00  addli r6, r21, 31
001dec  1f024000  addli r4, zero, 32
001df0  e30d1fd1  loadli.w r27,  -6008(r30)
001df4  9f000000  addli r1, zero, 0
001df8  1ba91100  xori r18, r3, 1
001dfc  8b164330  div.s r13, r6, r4
001e00  1bb32a00  slli r6, r21, 2
001e04  1b05c307  andi r10, r6, 124
001e08  5b090000  j 72
001e0c  95070004  dma_cfg r15, zero, zero, 2
001e10  1507c306  dma_cfg r14, r6, r12, 3
001e14  63422fd1  loadli.w r4,  -5996(r30)
001e18  1502360a  dma_cfg r4, r12, r3, 5
001e1c  9f018000  addli r3, zero, 64
001e20  9581db08  dma_cfg r3, r23, r13, 4
001e24  35000000  dma_run zero
001e28  1500200a  dma_cfg zero, zero, r2, 5
001e2c  15000010  dma_cfg zero, zero, zero, 8
001e30  9f510000  addli r3, zero, 5
001e34  1d900100  unlock r3
001e38  9f014000  addli r3, zero, 32
001e3c  7d800100  xsignal r3, 0
001e40  9f930300  addli r7, r7, 1
001e44  9f900000  addli r1, r1, 1
001e48  8b9d3d19  sub.s r27, r27, r19
001e4c  37a65000  beq r1, r5, 392
001e50  0b933021  mul.s r6, r1, r19
001e54  8b116a18  sub.s r3, r20, r6
001e58  8b913940  min.s r3, r19, r3
001e5c  1bfe1100  setlti r28, r3, 1
001e60  1797c501  or r14, r11, r28
001e64  3b430700  bneq r14, zero, 208
001e68  1f124000  addli r4, zero, 33
001e6c  7d100200  xwait r4, 0
001e70  bfe22a00  blt.s r21, r2, 184
001e74  63024fd1  loadli.w r4,  -5984(r30)
001e78  0b978339  mod.s r14, r7, r24
001e7c  e34b9fd1  loadli.w r23,  -5940(r30)
001e80  1f0c6fd1  addli r24, r30, -5968
001e84  8b174320  mul.s r15, r6, r4
001e88  3394872e  .word 0x2e879433
001e8c  9f570000  addli r15, zero, 5
001e90  1d800700  lock zero, r15
001e94  e307afd1  loadli.w r15,  -5936(r30)
001e98  17342402  sll.d r[9:10], r[9:10], r2
001e9c  8b1bf750  fmac.s r23, r14, r15
001ea0  6b570c00  load.d r[15:16], 0(r24)
001ea4  15000012  dma_cfg zero, zero, zero, 9
001ea8  1bbc7100  slli r24, r3, 7
001eac  0b278710  add.ul r[15:16], r[15:16], r[9:10]
001eb0  63048fd1  loadli.w r8,  -5952(r30)
001eb4  15018000  dma_cfg r2, zero, r8, 0
001eb8  1500a010  dma_cfg zero, zero, r10, 8
001ebc  15000102  dma_cfg zero, r2, zero, 1
001ec0  bf102200  blt.s r4, r2, 36
001ec4  95070004  dma_cfg r15, zero, zero, 2
001ec8  1587cb06  dma_cfg r14, r23, r12, 3
001ecc  63023fd1  loadli.w r4,  -5992(r30)
001ed0  1502360a  dma_cfg r4, r12, r3, 5
001ed4  1f028000  addli r4, zero, 64
001ed8  1502dc08  dma_cfg r4, r24, r13, 4
001edc  35000000  dma_run zero
001ee0  db060000  j 52
001ee4  63022fd1  loadli.w r4,  -6000(r30)
001ee8  1502260a  dma_cfg r4, r12, r2, 5
001eec  1f028000  addli r4, zero, 64
001ef0  1502dc08  dma_cfg r4, r24, r13, 4
001ef4  0b9cb941  min.s r24, r19, r27
001ef8  95070004  dma_cfg r15, zero, zero, 2
001efc  1587cb06  dma_cfg r14, r23, r12, 3
001f00  0b279711  add.ul r[15:16], r[15:16], r[26:27]
001f04  1f7cfcff  addli r24, r24, -1
001f08  9f8b0b01  addli r23, r23, 128
001f0c  35000000  dma_run zero
001f10  bb2f0cfe  bneq r24, zero, -24
001f14  1500200a  dma_cfg zero, zero, r2, 5
001f18  15000010  dma_cfg zero, zero, zero, 8
001f1c  1f520000  addli r4, zero, 5
001f20  1d100200  unlock r4
001f24  630c7fd1  loadli.w r24,  -5960(r30)
001f28  1f024000  addli r4, zero, 32
001f2c  7d000200  xsignal r4, 0
001f30  9f930300  addli r7, r7, 1
001f34  1714c901  or r8, r18, r28
001f38  3b3c04fe  bneq r8, zero, -244
001f3c  1f124000  addli r4, zero, 33
001f40  7d100200  xwait r4, 0
001f44  bfdb2afe  blt.s r21, r2, -268
001f48  e3447fd1  loadli.w r9,  -5956(r30)
001f4c  0b948339  mod.s r8, r7, r24
001f50  1f520000  addli r4, zero, 5
001f54  9bbb7100  slli r23, r3, 7
001f58  8b149320  mul.s r9, r6, r9
001f5c  63439fd1  loadli.w r6,  -5940(r30)
001f60  1d000200  lock zero, r4
001f64  1f025fd1  addli r4, r30, -5976
001f68  3397e42a  .word 0x2ae49733
001f6c  e304afd1  loadli.w r9,  -5936(r30)
001f70  17372702  sll.d r[15:16], r[15:16], r2
001f74  0b139450  fmac.s r6, r8, r9
001f78  6b540200  load.d r[9:10], 0(r4)
001f7c  15000012  dma_cfg zero, zero, zero, 9
001f80  0b27e410  add.ul r[15:16], r[9:10], r[15:16]
001f84  63048fd1  loadli.w r8,  -5952(r30)
001f88  15018000  dma_cfg r2, zero, r8, 0
001f8c  1500a010  dma_cfg zero, zero, r10, 8
001f90  15000102  dma_cfg zero, r2, zero, 1
001f94  6344bfd1  loadli.w r8,  -5924(r30)
001f98  3f202400  blt.s r8, r2, 8
001f9c  5bceffff  j -400
001fa0  e3411fd1  loadli.w r3,  -6004(r30)
001fa4  9501260a  dma_cfg r3, r12, r2, 5
001fa8  9f018000  addli r3, zero, 64
001fac  9581db08  dma_cfg r3, r23, r13, 4
001fb0  8b91b941  min.s r3, r19, r27
001fb4  95070004  dma_cfg r15, zero, zero, 2
001fb8  1507c306  dma_cfg r14, r6, r12, 3
001fbc  0b270711  add.ul r[15:16], r[15:16], r[17:18]
001fc0  9ff1f1ff  addli r3, r3, -1
001fc4  1f030301  addli r6, r6, 128
001fc8  35000000  dma_run zero
001fcc  bbaf01fe  bneq r3, zero, -24
001fd0  5bcbffff  j -424
001fd4  9f407000  addli r1, zero, 60
001fd8  7d800000  xsignal r1, 0
001fdc  7d900000  xwait r1, 0
001fe0  63441fd0  loadli.w r8,  -6132(r30)
001fe4  63420fd1  loadli.w r4,  -6012(r30)
001fe8  6348dfd0  loadli.w r16,  -6036(r30)
001fec  e308dfd0  loadli.w r17,  -6040(r30)
001ff0  6349cfd0  loadli.w r18,  -6044(r30)
001ff4  e30a7fd0  loadli.w r21,  -6088(r30)
001ff8  e34b8fd0  loadli.w r23,  -6076(r30)
001ffc  e30ccfd0  loadli.w r25,  -6048(r30)
002000  634dbfd0  loadli.w r26,  -6052(r30)
002004  e34dafd0  loadli.w r27,  -6060(r30)
002008  63030fd1  loadli.w r6,  -6016(r30)
00200c  9f370000  addli r15, zero, 3
002010  97806d00  and r1, r27, r6
002014  3bcb20fc  bneq r1, r2, -1328
002018  7d800700  xsignal r15, 0
00201c  5b59ffff  j -1336
002020  e3063fd0  loadli.w r13,  -6120(r30)
002024  63071fd0  loadli.w r14,  -6136(r30)
002028  630affcf  loadli.w r20,  -6152(r30)
00202c  e3022fd0  loadli.w r5,  -6128(r30)
002030  e341bfcf  loadli.w r3,  -6180(r30)
002034  1f0b0d00  addli r22, r26, 0
002038  abf0ffff  lui r1, 1048575
00203c  1b99f0ff  ori r18, r1, 4095
002040  bf2609fd  blt.s r18, r16, -1624
002044  6309bfcf  loadli.w r18,  -6184(r30)
002048  5b34ffff  j -1632
00204c  63048fcf  loadli.w r8,  -6208(r30)
002050  e3415fd0  loadli.w r3,  -6100(r30)
002054  63457fcf  loadli.w r10,  -6212(r30)
002058  9f060700  addli r13, r14, 0
00205c  abf0ffff  lui r1, 1048575
002060  1b97f0ff  ori r14, r1, 4095
002064  3f1247fd  blt.s r14, r20, -1916
002068  63478fcf  loadli.w r14,  -6204(r30)
00206c  db0fffff  j -1924
002070  9f000300  addli r1, r6, 0
002074  abf1ffff  lui r3, 1048575
002078  9b91f1ff  ori r3, r3, 4095
00207c  67083fce  storeli.w r3, -6272(r30)
002080  bfa891fa  blt.s r3, r9, -2520
002084  e341afcb  loadli.w r3,  -6700(r30)
002088  67083fce  storeli.w r3, -6272(r30)
00208c  dbc3feff  j -2532
002090  e3015f01  loadli.w r3,  168(r30)
002094  670e0fd0  storeli.w zero, -5920(r30)
002098  e7410fe2  storeli.w zero, -3812(r30)
00209c  e7010fe2  storeli.w zero, -3816(r30)
0020a0  2b02803f  lui r4, 260096
0020a4  67074fd0  storeli.w r4, -6032(r30)
0020a8  67464fd0  storeli.w r4, -6044(r30)
0020ac  670c4fd0  storeli.w r4, -5952(r30)
0020b0  bb970100  bneq r3, zero, 484
0020b4  b3013028  .word 0x283001b3
0020b8  13223500  seteq.d r4, r[11:12], r[4:5]
0020bc  ab01803f  lui r3, 260096
0020c0  bb710200  bneq r4, zero, 124
0020c4  00a00000  mfence { lm }
0020c8  9f016000  addli r3, zero, 48
0020cc  2b0200f0  lui r4, 983040
0020d0  9f020fda  addli r5, r30, -4864
0020d4  97914100  or r3, r3, r4
0020d8  ff215500  l_gm2lm r3, r5, 0(r[11:12])
0020dc  00a00200  mfence { lm, gm }
0020e0  e3010fda  loadli.w r3,  -4864(r30)
0020e4  63420fda  loadli.w r4,  -4860(r30)
0020e8  e3021fda  loadli.w r5,  -4856(r30)
0020ec  63431fda  loadli.w r6,  -4852(r30)
0020f0  e3032fda  loadli.w r7,  -4848(r30)
0020f4  63442fda  loadli.w r8,  -4844(r30)
0020f8  e3444fda  loadli.w r9,  -4828(r30)
0020fc  63055fda  loadli.w r10,  -4824(r30)
002100  e3455fda  loadli.w r11,  -4820(r30)
002104  8be14148  max.f r3, r3, r4
002108  0be26248  max.f r4, r5, r6
00210c  8be28348  max.f r5, r7, r8
002110  63033fda  loadli.w r6,  -4840(r30)
002114  e3433fda  loadli.w r7,  -4836(r30)
002118  63044fda  loadli.w r8,  -4832(r30)
00211c  0b625248  max.f r4, r4, r5
002120  0b637348  max.f r6, r6, r7
002124  8b639448  max.f r7, r8, r9
002128  0b64b548  max.f r8, r10, r11
00212c  8be14148  max.f r3, r3, r4
002130  8be28348  max.f r5, r7, r8
002134  0b625348  max.f r4, r6, r5
002138  8be14148  max.f r3, r3, r4
00213c  1f034fd1  addli r6, r30, -5984
002140  33024028  .word 0x28400233
002144  eb530300  load.d r[8:9], 0(r6)
002148  93a24300  seteq.d r5, r[8:9], r[5:6]
00214c  2b02803f  lui r4, 260096
002150  bbf10200  bneq r5, zero, 124
002154  00a00000  mfence { lm }
002158  1f026000  addli r4, zero, 48
00215c  ab0200f0  lui r5, 983040
002160  1f030fda  addli r6, r30, -4864
002164  17125200  or r4, r4, r5
002168  7fa26300  l_gm2lm r4, r6, 0(r[8:9])
00216c  00a00200  mfence { lm, gm }
002170  63020fda  loadli.w r4,  -4864(r30)
002174  e3420fda  loadli.w r5,  -4860(r30)
002178  63031fda  loadli.w r6,  -4856(r30)
00217c  e3431fda  loadli.w r7,  -4852(r30)
002180  63042fda  loadli.w r8,  -4848(r30)
002184  e3442fda  loadli.w r9,  -4844(r30)
002188  63454fda  loadli.w r10,  -4828(r30)
00218c  e3055fda  loadli.w r11,  -4824(r30)
002190  63465fda  loadli.w r12,  -4820(r30)
002194  0b625248  max.f r4, r4, r5
002198  8b627348  max.f r5, r6, r7
00219c  0b639448  max.f r6, r8, r9
0021a0  e3033fda  loadli.w r7,  -4840(r30)
0021a4  63443fda  loadli.w r8,  -4836(r30)
0021a8  e3044fda  loadli.w r9,  -4832(r30)
0021ac  8be26248  max.f r5, r5, r6
0021b0  8be38348  max.f r7, r7, r8
0021b4  0be4a448  max.f r8, r9, r10
0021b8  8be4c548  max.f r9, r11, r12
0021bc  0b625248  max.f r4, r4, r5
0021c0  0b639448  max.f r6, r8, r9
0021c4  8be26348  max.f r5, r7, r6
0021c8  0b625248  max.f r4, r4, r5
0021cc  b3025028  .word 0x285002b3
0021d0  93a25000  seteq.d r5, r[2:3], r[6:7]
0021d4  bb800200  bneq r5, zero, 32
0021d8  00a00000  mfence { lm }
0021dc  9f026000  addli r5, zero, 48
0021e0  2b0300f0  lui r6, 983040
0021e4  9f030fda  addli r7, r30, -4864
0021e8  97926200  or r5, r5, r6
0021ec  ffa27000  l_gm2lm r5, r7, 0(r[2:3])
0021f0  00a00200  mfence { lm, gm }
0021f4  b3001028  .word 0x281000b3
0021f8  13211b00  seteq.d r2, r[23:24], r[2:3]
0021fc  ab00803f  lui r1, 260096
002200  bb710100  bneq r2, zero, 124
002204  00a00000  mfence { lm }
002208  9f006000  addli r1, zero, 48
00220c  2b0100f0  lui r2, 983040
002210  9f020fda  addli r5, r30, -4864
002214  97902000  or r1, r1, r2
002218  ff205b00  l_gm2lm r1, r5, 0(r[23:24])
00221c  00a00200  mfence { lm, gm }
002220  e3000fda  loadli.w r1,  -4864(r30)
002224  63410fda  loadli.w r2,  -4860(r30)
002228  e3021fda  loadli.w r5,  -4856(r30)
00222c  63431fda  loadli.w r6,  -4852(r30)
002230  e3032fda  loadli.w r7,  -4848(r30)
002234  63442fda  loadli.w r8,  -4844(r30)
002238  e3444fda  loadli.w r9,  -4828(r30)
00223c  63055fda  loadli.w r10,  -4824(r30)
002240  e3455fda  loadli.w r11,  -4820(r30)
002244  8be02048  max.f r1, r1, r2
002248  0be16248  max.f r2, r5, r6
00224c  8be28348  max.f r5, r7, r8
002250  63033fda  loadli.w r6,  -4840(r30)
002254  e3433fda  loadli.w r7,  -4836(r30)
002258  63044fda  loadli.w r8,  -4832(r30)
00225c  0b615148  max.f r2, r2, r5
002260  0b637348  max.f r6, r6, r7
002264  8b639448  max.f r7, r8, r9
002268  0b64b548  max.f r8, r10, r11
00226c  8be02048  max.f r1, r1, r2
002270  8be28348  max.f r5, r7, r8
002274  0b615348  max.f r2, r6, r5
002278  8be02048  max.f r1, r1, r2
00227c  0f813118  div.f.rn r2, r3, r3
002280  8f801018  div.f.rn r1, r1, r1
002284  67462fd0  storeli.w r2, -6044(r30)
002288  0f014218  div.f.rn r2, r4, r4
00228c  670c1fd0  storeli.w r1, -5952(r30)
002290  67072fd0  storeli.w r2, -6032(r30)
002294  e340cfcb  loadli.w r1,  -6684(r30)
002298  630a3fd1  loadli.w r20,  -5992(r30)
00229c  9f1b0000  addli r23, zero, 1
0022a0  3fe9701b  blt.s r1, r23, 13912
0022a4  1f8e0700  addli r28, r15, 0
0022a8  63070f03  loadli.w r14,  384(r30)
0022ac  e307cf02  loadli.w r15,  352(r30)
0022b0  6308df02  loadli.w r16,  360(r30)
0022b4  e300ef01  loadli.w r1,  240(r30)
0022b8  e3089f02  loadli.w r17,  328(r30)
0022bc  6342ff01  loadli.w r4,  252(r30)
0022c0  e3420f02  loadli.w r5,  260(r30)
0022c4  e3051f02  loadli.w r11,  264(r30)
0022c8  63461f02  loadli.w r12,  268(r30)
0022cc  e3013f02  loadli.w r3,  280(r30)
0022d0  6303af02  loadli.w r6,  336(r30)
0022d4  e3040f02  loadli.w r9,  256(r30)
0022d8  e303af01  loadli.w r7,  208(r30)
0022dc  63012f02  loadli.w r2,  272(r30)
0022e0  6304ff01  loadli.w r8,  248(r30)
0022e4  1f090000  addli r18, zero, 0
0022e8  1f0d0000  addli r26, zero, 0
0022ec  9f0a0000  addli r21, zero, 0
0022f0  1f0b0000  addli r22, zero, 0
0022f4  1f0c0000  addli r24, zero, 0
0022f8  9f0c0000  addli r25, zero, 0
0022fc  1f050000  addli r10, zero, 0
002300  e7430fce  storeli.w zero, -6340(r30)
002304  670f0fce  storeli.w zero, -6160(r30)
002308  670c0fce  storeli.w zero, -6208(r30)
00230c  e70e0fce  storeli.w zero, -6168(r30)
002310  8b9de748  max.s r27, r15, r14
002314  9b771800  setlti r15, r16, 1
002318  63474f03  loadli.w r14,  420(r30)
00231c  1f72f2ff  addli r4, r4, -1
002320  0b936840  min.s r6, r17, r6
002324  9ff1f1ff  addli r3, r3, -1
002328  0b11c120  mul.s r2, r2, r12
00232c  1f74f4ff  addli r8, r8, -1
002330  1f082fcd  addli r16, r30, -6512
002334  e700ffcc  storeli.w r15, -6648(r30)
002338  8b97c041  min.s r15, r1, r28
00233c  9bf01800  setlti r1, r17, 1
002340  e74f4fca  storeli.w r4, -6660(r30)
002344  1ff2f2ff  addli r4, r5, -1
002348  67446fce  storeli.w r6, -6332(r30)
00234c  e7493fcc  storeli.w r3, -6500(r30)
002350  e7028fce  storeli.w r8, -6360(r30)
002354  e302bfcb  loadli.w r5,  -6696(r30)
002358  1f0e8000  addli r28, zero, 64
00235c  e74cbfcb  storeli.w r27, -6708(r30)
002360  67401fcc  storeli.w r1, -6652(r30)
002364  9b701700  setlti r1, r14, 1
002368  674c4fca  storeli.w r4, -6716(r30)
00236c  1f920800  addli r4, r17, 1
002370  9f081fcf  addli r17, r30, -6264
002374  63070fd1  loadli.w r14,  -6016(r30)
002378  67001fcc  storeli.w r1, -6656(r30)
00237c  8b90c520  mul.s r1, r11, r12
002380  8b950748  max.s r11, r15, zero
002384  67444fcc  storeli.w r4, -6588(r30)
002388  b391332e  .word 0x2e3391b3
00238c  63467fd0  loadli.w r12,  -6084(r30)
002390  e3079fd0  loadli.w r15,  -6072(r30)
002394  e704bfcc  storeli.w r11, -6584(r30)
002398  8b95b410  add.s r11, r9, r11
00239c  1ff3f5ff  addli r6, r11, -1
0023a0  9f052fcf  addli r11, r30, -6256
0023a4  73b03500  store.d r[4:5], 0(r11)
0023a8  0b139330  div.s r6, r6, r9
0023ac  e3015f02  loadli.w r3,  296(r30)
0023b0  63425f02  loadli.w r4,  300(r30)
0023b4  9f040900  addli r9, r18, 0
0023b8  1f094fce  addli r18, r30, -6368
0023bc  9f150000  addli r11, zero, 1
0023c0  9ff1f1ff  addli r3, r3, -1
0023c4  67423fd0  storeli.w r3, -6108(r30)
0023c8  9f71f2ff  addli r3, r4, -1
0023cc  67016fce  storeli.w r6, -6384(r30)
0023d0  0b932620  mul.s r6, r13, r2
0023d4  e7073fd0  storeli.w r3, -6024(r30)
0023d8  eb518f00  load.d r[4:5], 8(r30)
0023dc  e70c6fca  storeli.w r6, -6712(r30)
0023e0  0b931620  mul.s r6, r13, r1
0023e4  9f067fcc  addli r13, r30, -6600
0023e8  73b03600  store.d r[4:5], 0(r13)
0023ec  e70e6fca  storeli.w r6, -6680(r30)
0023f0  1bb31300  slli r6, r7, 1
0023f4  63427f01  loadli.w r4,  188(r30)
0023f8  eb530f00  load.d r[8:9], 0(r30)
0023fc  e3417f02  loadli.w r3,  316(r30)
002400  e7496fd0  storeli.w r6, -5988(r30)
002404  63038f01  loadli.w r6,  192(r30)
002408  73307800  store.d r[8:9], 0(r16)
00240c  b3137228  .word 0x287213b3
002410  670a3fd0  storeli.w r3, -5984(r30)
002414  e3019fcf  loadli.w r3,  -6200(r30)
002418  e7064fd0  storeli.w r4, -6040(r30)
00241c  73b07800  store.d r[8:9], 0(r17)
002420  b313732c  .word 0x2c7313b3
002424  e7466fd0  storeli.w r6, -6036(r30)
002428  73307900  store.d r[8:9], 0(r18)
00242c  9bf31100  setlti r7, r3, 1
002430  8b91b141  min.s r3, r3, r27
002434  67043fce  storeli.w r3, -6336(r30)
002438  9b311200  slli r3, r4, 1
00243c  1b321300  slli r4, r6, 1
002440  e70f7fca  storeli.w r7, -6664(r30)
002444  9f130000  addli r7, zero, 1
002448  e7453fd0  storeli.w r3, -6052(r30)
00244c  8b910158  neg.s r3, r3
002450  67064fd0  storeli.w r4, -6048(r30)
002454  67043fd0  storeli.w r3, -6080(r30)
002458  8b110258  neg.s r3, r4
00245c  67453fd0  storeli.w r3, -6060(r30)
002460  9f110000  addli r3, zero, 1
002464  e7013fcc  storeli.w r3, -6632(r30)
002468  9f110000  addli r3, zero, 1
00246c  67463fcc  storeli.w r3, -6556(r30)
002470  9f110000  addli r3, zero, 1
002474  674f3fca  storeli.w r3, -6668(r30)
002478  9f110000  addli r3, zero, 1
00247c  674b3fce  storeli.w r3, -6220(r30)
002480  9f110000  addli r3, zero, 1
002484  674e3fcc  storeli.w r3, -6428(r30)
002488  9f110000  addli r3, zero, 1
00248c  674f3fcc  storeli.w r3, -6412(r30)
002490  9f110000  addli r3, zero, 1
002494  e7083fcc  storeli.w r3, -6520(r30)
002498  e341afcb  loadli.w r3,  -6700(r30)
00249c  67413fcc  storeli.w r3, -6636(r30)
0024a0  db0c0000  j 100
0024a4  63426fcf  loadli.w r4,  -6220(r30)
0024a8  e3013fcc  loadli.w r3,  -6632(r30)
0024ac  63437fce  loadli.w r6,  -6340(r30)
0024b0  674f0fca  storeli.w zero, -6668(r30)
0024b4  8b944418  sub.s r9, r9, r4
0024b8  0b120258  neg.s r4, r4
0024bc  0b1d3d18  sub.s r26, r26, r3
0024c0  8b910158  neg.s r3, r3
0024c4  1f130300  addli r6, r6, 1
0024c8  674b4fce  storeli.w r4, -6220(r30)
0024cc  6342efcd  loadli.w r4,  -6412(r30)
0024d0  e7013fcc  storeli.w r3, -6632(r30)
0024d4  e341cfcb  loadli.w r3,  -6684(r30)
0024d8  e7436fce  storeli.w r6, -6340(r30)
0024dc  0b1b4b18  sub.s r22, r22, r4
0024e0  0b120258  neg.s r4, r4
0024e4  674f4fcc  storeli.w r4, -6412(r30)
0024e8  6342cfcd  loadli.w r4,  -6428(r30)
0024ec  8b9a4a18  sub.s r21, r21, r4
0024f0  0b120258  neg.s r4, r4
0024f4  674e4fcc  storeli.w r4, -6428(r30)
0024f8  6302cfcb  loadli.w r4,  -6688(r30)
0024fc  8b924218  sub.s r5, r5, r4
002500  b76f3318  beq r6, r3, 13304
002504  e3412fcc  loadli.w r3,  -6636(r30)
002508  376f3d08  beq r26, r3, 5080
00250c  6302cfcb  loadli.w r4,  -6688(r30)
002510  63437fce  loadli.w r6,  -6340(r30)
002514  e301afcb  loadli.w r3,  -6704(r30)
002518  e70d5fca  storeli.w r5, -6696(r30)
00251c  0b144320  mul.s r8, r6, r4
002520  8b918118  sub.s r3, r3, r8
002524  67038fce  storeli.w r8, -6352(r30)
002528  1f840300  addli r8, r7, 0
00252c  e3032fce  loadli.w r7,  -6384(r30)
002530  8b113240  min.s r3, r4, r3
002534  0b125240  min.s r4, r4, r5
002538  8b920148  max.s r5, r3, zero
00253c  e3019fcb  loadli.w r3,  -6712(r30)
002540  0b120248  max.s r4, r4, zero
002544  e7425fce  storeli.w r5, -6356(r30)
002548  670a4fcc  storeli.w r4, -6496(r30)
00254c  63026fcc  loadli.w r4,  -6608(r30)
002550  8b916120  mul.s r3, r3, r6
002554  1f030d00  addli r6, r26, 0
002558  e7443fcc  storeli.w r3, -6580(r30)
00255c  e3418fcb  loadli.w r3,  -6716(r30)
002560  8b915110  add.s r3, r3, r5
002564  9ff2f3ff  addli r5, r7, -1
002568  670f5fca  storeli.w r5, -6672(r30)
00256c  e342ffcf  loadli.w r5,  -6148(r30)
002570  8b965130  div.s r13, r3, r5
002574  e3419fcb  loadli.w r3,  -6708(r30)
002578  e3426fcc  loadli.w r5,  -6604(r30)
00257c  8b913340  min.s r3, r7, r3
002580  e74e3fca  storeli.w r3, -6676(r30)
002584  e341efcb  loadli.w r3,  -6668(r30)
002588  670bdfcc  storeli.w r13, -6480(r30)
00258c  9ba11100  xori r3, r3, 1
002590  674a3fcc  storeli.w r3, -6492(r30)
002594  8b916220  mul.s r3, r5, r6
002598  8b113218  sub.s r3, r4, r3
00259c  0b927620  mul.s r4, r13, r7
0025a0  9f030400  addli r7, r8, 0
0025a4  e7423fcc  storeli.w r3, -6612(r30)
0025a8  9ff1f6ff  addli r3, r13, -1
0025ac  e74d3fca  storeli.w r3, -6692(r30)
0025b0  e3013fcc  loadli.w r3,  -6632(r30)
0025b4  8b913220  mul.s r3, r5, r3
0025b8  9f020200  addli r5, r4, 0
0025bc  1f020000  addli r4, zero, 0
0025c0  e7403fcc  storeli.w r3, -6644(r30)
0025c4  67015fcc  storeli.w r5, -6640(r30)
0025c8  5b100000  j 128
0025cc  6302dfcc  loadli.w r4,  -6552(r30)
0025d0  e3003fcc  loadli.w r1,  -6632(r30)
0025d4  8b920258  neg.s r5, r5
0025d8  63411fcc  loadli.w r2,  -6644(r30)
0025dc  e3065fcc  loadli.w r13,  -6616(r30)
0025e0  1f040200  addli r8, r4, 0
0025e4  e3072fce  loadli.w r15,  -6384(r30)
0025e8  e3412fcc  loadli.w r3,  -6636(r30)
0025ec  1f120000  addli r4, zero, 1
0025f0  67465fcc  storeli.w r5, -6556(r30)
0025f4  e3022fcc  loadli.w r5,  -6640(r30)
0025f8  1f070400  addli r14, r8, 0
0025fc  0b131310  add.s r6, r6, r1
002600  e3406fcf  loadli.w r1,  -6220(r30)
002604  8b941418  sub.s r9, r9, r1
002608  8b900058  neg.s r1, r1
00260c  674b1fce  storeli.w r1, -6220(r30)
002610  e340efcd  loadli.w r1,  -6412(r30)
002614  0b1b1b18  sub.s r22, r22, r1
002618  8b900058  neg.s r1, r1
00261c  674f1fcc  storeli.w r1, -6412(r30)
002620  e3001fcd  loadli.w r1,  -6520(r30)
002624  0b1c1c18  sub.s r24, r24, r1
002628  8b900058  neg.s r1, r1
00262c  e7081fcc  storeli.w r1, -6520(r30)
002630  e3405fcc  loadli.w r1,  -6612(r30)
002634  8b902018  sub.s r1, r1, r2
002638  1f810200  addli r2, r5, 0
00263c  e7421fcc  storeli.w r1, -6612(r30)
002640  9f800600  addli r1, r13, 0
002644  371a3308  beq r6, r3, 4740
002648  13015100  seteq r2, r2, r5
00264c  e3010fcc  loadli.w r3,  -6656(r30)
002650  17113100  or r2, r2, r3
002654  bb100100  bneq r2, zero, 36
002658  e3410fd0  loadli.w r3,  -6140(r30)
00265c  1f014fe2  addli r2, r30, -3808
002660  abf20000  lui r5, 15
002664  9ff1f1ff  addli r3, r3, -1
002668  9b92f2ff  ori r5, r5, 4095
00266c  73105100  store.h r5, 0(r2)
002670  1f210100  addli r2, r2, 2
002674  bbbf01fe  bneq r3, zero, -20
002678  e3426fcc  loadli.w r5,  -6604(r30)
00267c  e3016fcc  loadli.w r3,  -6608(r30)
002680  67066fcc  storeli.w r6, -6560(r30)
002684  0b115320  mul.s r2, r6, r5
002688  8b912118  sub.s r3, r3, r2
00268c  8b913240  min.s r3, r5, r3
002690  8b920148  max.s r5, r3, zero
002694  e341ffcb  loadli.w r3,  -6660(r30)
002698  674b5fcc  storeli.w r5, -6476(r30)
00269c  8b915110  add.s r3, r3, r5
0026a0  e3021fce  loadli.w r5,  -6392(r30)
0026a4  8b925130  div.s r5, r3, r5
0026a8  e3012fce  loadli.w r3,  -6384(r30)
0026ac  0b945120  mul.s r8, r3, r5
0026b0  e7065fcc  storeli.w r5, -6552(r30)
0026b4  e3420fcc  loadli.w r5,  -6652(r30)
0026b8  93818000  seteq r3, r1, r8
0026bc  97915100  or r3, r3, r5
0026c0  bb900100  bneq r3, zero, 36
0026c4  e301dfcd  loadli.w r3,  -6424(r30)
0026c8  e342ffcd  loadli.w r5,  -6404(r30)
0026cc  2bf30000  lui r6, 15
0026d0  9ff2f2ff  addli r5, r5, -1
0026d4  1b13f3ff  ori r6, r6, 4095
0026d8  73906100  store.h r6, 0(r3)
0026dc  9fa10100  addli r3, r3, 2
0026e0  bbbf02fe  bneq r5, zero, -20
0026e4  e301dfcc  loadli.w r3,  -6552(r30)
0026e8  e3021fcc  loadli.w r5,  -6648(r30)
0026ec  93013700  seteq r3, r14, r3
0026f0  97915100  or r3, r3, r5
0026f4  bb900100  bneq r3, zero, 36
0026f8  e3010fce  loadli.w r3,  -6400(r30)
0026fc  e342efcf  loadli.w r5,  -6156(r30)
002700  2bf30000  lui r6, 15
002704  9ff2f2ff  addli r5, r5, -1
002708  1b13f3ff  ori r6, r6, 4095
00270c  73906100  store.h r6, 0(r3)
002710  9fa10100  addli r3, r3, 2
002714  bbbf02fe  bneq r5, zero, -20
002718  e3012fce  loadli.w r3,  -6384(r30)
00271c  e302ffcb  loadli.w r5,  -6664(r30)
002720  93813700  seteq r3, r15, r3
002724  97915100  or r3, r3, r5
002728  bb900100  bneq r3, zero, 36
00272c  e3410fcd  loadli.w r3,  -6524(r30)
002730  e3029fcf  loadli.w r5,  -6200(r30)
002734  2bf30000  lui r6, 15
002738  9ff2f2ff  addli r5, r5, -1
00273c  1b13f3ff  ori r6, r6, 4095
002740  73906100  store.h r6, 0(r3)
002744  9fa10100  addli r3, r3, 2
002748  bbbf02fe  bneq r5, zero, -20
00274c  b7c08000  beq r1, r8, 48
002750  e300dfcf  loadli.w r1,  -6168(r30)
002754  e3018fcf  loadli.w r3,  -6208(r30)
002758  e70e0fce  storeli.w zero, -6168(r30)
00275c  670c0fce  storeli.w zero, -6208(r30)
002760  8b901110  add.s r1, r3, r1
002764  e3413fcc  loadli.w r3,  -6628(r30)
002768  8b113440  min.s r3, r8, r3
00276c  67443fce  storeli.w r3, -6332(r30)
002770  e301efcf  loadli.w r3,  -6160(r30)
002774  8b913010  add.s r3, r1, r3
002778  670f3fce  storeli.w r3, -6160(r30)
00277c  6303cfcc  loadli.w r6,  -6560(r30)
002780  e342cfcc  loadli.w r5,  -6556(r30)
002784  e3002fce  loadli.w r1,  -6384(r30)
002788  b7c01700  beq r15, r1, 48
00278c  e300cfd1  loadli.w r1,  -5920(r30)
002790  e3413fe2  loadli.w r3,  -3812(r30)
002794  e3023fe2  loadli.w r5,  -3816(r30)
002798  670e0fd0  storeli.w zero, -5920(r30)
00279c  e7410fe2  storeli.w zero, -3812(r30)
0027a0  8b901110  add.s r1, r3, r1
0027a4  8b905010  add.s r1, r1, r5
0027a8  e342cfcc  loadli.w r5,  -6556(r30)
0027ac  e7011fe2  storeli.w r1, -3816(r30)
0027b0  e340dfcb  loadli.w r1,  -6676(r30)
0027b4  67041fce  storeli.w r1, -6336(r30)
0027b8  abf0ffff  lui r1, 1048575
0027bc  e3062fce  loadli.w r13,  -6384(r30)
0027c0  9f010000  addli r3, zero, 0
0027c4  3f305000  blt.s zero, r5, 12
0027c8  e301efcb  loadli.w r3,  -6672(r30)
0027cc  9b96f0ff  ori r13, r1, 4095
0027d0  e745dfcc  storeli.w r13, -6564(r30)
0027d4  e7028fcc  storeli.w r8, -6616(r30)
0027d8  b7d7d1fe  beq r3, r13, -524
0027dc  abf0ffff  lui r1, 1048575
0027e0  e306dfcc  loadli.w r13,  -6552(r30)
0027e4  9b90f0ff  ori r1, r1, 4095
0027e8  670fdfcc  storeli.w r13, -6416(r30)
0027ec  3f207000  blt.s zero, r7, 8
0027f0  670f1fcc  storeli.w r1, -6416(r30)
0027f4  e3066fcd  loadli.w r13,  -6480(r30)
0027f8  e70bdfce  storeli.w r13, -6216(r30)
0027fc  3f20b000  blt.s zero, r11, 8
002800  e70b1fce  storeli.w r1, -6216(r30)
002804  9f060000  addli r13, zero, 0
002808  3f307000  blt.s zero, r7, 12
00280c  e300dfcc  loadli.w r1,  -6552(r30)
002810  9ff6f0ff  addli r13, r1, -1
002814  9f070000  addli r15, zero, 0
002818  674c3fce  storeli.w r3, -6204(r30)
00281c  3f20b000  blt.s zero, r11, 8
002820  e347bfcb  loadli.w r15,  -6692(r30)
002824  e3406fcc  loadli.w r1,  -6604(r30)
002828  e3415fcc  loadli.w r3,  -6612(r30)
00282c  8b903040  min.s r1, r1, r3
002830  e3414fcc  loadli.w r3,  -6620(r30)
002834  8b900048  max.s r1, r1, zero
002838  0b113110  add.s r2, r2, r3
00283c  e341bfcc  loadli.w r3,  -6564(r30)
002840  e7051fcc  storeli.w r1, -6568(r30)
002844  e3002fce  loadli.w r1,  -6384(r30)
002848  e74a2fcc  storeli.w r2, -6484(r30)
00284c  6301dfcb  loadli.w r2,  -6680(r30)
002850  8b905020  mul.s r1, r1, r5
002854  0b116120  mul.s r2, r2, r6
002858  8b901118  sub.s r1, r3, r1
00285c  67452fcc  storeli.w r2, -6572(r30)
002860  67411fce  storeli.w r1, -6380(r30)
002864  e3004fcc  loadli.w r1,  -6624(r30)
002868  8b101320  mul.s r1, r6, r1
00286c  e70a1fcc  storeli.w r1, -6488(r30)
002870  e340efcb  loadli.w r1,  -6668(r30)
002874  97904000  or r1, r1, r4
002878  6302dfcc  loadli.w r4,  -6552(r30)
00287c  67051fcc  storeli.w r1, -6576(r30)
002880  9f000000  addli r1, zero, 0
002884  db080000  j 68
002888  670f1fcc  storeli.w r1, -6416(r30)
00288c  e3406fcf  loadli.w r1,  -6220(r30)
002890  0b115110  add.s r2, r2, r5
002894  8b930358  neg.s r7, r7
002898  674c2fce  storeli.w r2, -6204(r30)
00289c  8b941418  sub.s r9, r9, r1
0028a0  8b900058  neg.s r1, r1
0028a4  674b1fce  storeli.w r1, -6220(r30)
0028a8  e340efcd  loadli.w r1,  -6412(r30)
0028ac  0b1b1b18  sub.s r22, r22, r1
0028b0  8b900058  neg.s r1, r1
0028b4  674f1fcc  storeli.w r1, -6412(r30)
0028b8  e3001fcd  loadli.w r1,  -6520(r30)
0028bc  0b1c1c10  add.s r24, r24, r1
0028c0  9f100000  addli r1, zero, 1
0028c4  373431fe  beq r2, r3, -756
0028c8  6307efcd  loadli.w r14,  -6416(r30)
0028cc  0b117718  sub.s r2, r14, r7
0028d0  3bc0e600  bneq r13, r14, 16
0028d4  9f060100  addli r13, r2, 0
0028d8  63418fcf  loadli.w r2,  -6204(r30)
0028dc  5bfb0100  j 4056
0028e0  63448fcf  loadli.w r8,  -6204(r30)
0028e4  e3422fce  loadli.w r5,  -6380(r30)
0028e8  63030fcd  loadli.w r6,  -6528(r30)
0028ec  670d2fcc  storeli.w r2, -6448(r30)
0028f0  e3415fcf  loadli.w r3,  -6228(r30)
0028f4  1f087fcd  addli r16, r30, -6472
0028f8  9f087fcc  addli r17, r30, -6600
0028fc  1f099fce  addli r18, r30, -6328
002900  e7468fcd  storeli.w r24, -6548(r30)
002904  e74c7fcc  storeli.w r7, -6452(r30)
002908  93025402  setneq r5, r8, r5
00290c  0b116c38  mod.s r2, r24, r6
002910  93914104  setlt.s r3, r3, r4
002914  0b116110  add.s r2, r2, r6
002918  e7015fce  storeli.w r5, -6376(r30)
00291c  e342afcc  loadli.w r5,  -6572(r30)
002920  0b136138  mod.s r6, r2, r6
002924  63419fcc  loadli.w r2,  -6580(r30)
002928  8b125410  add.s r5, r8, r5
00292c  0b112410  add.s r2, r8, r2
002930  e70c5fcc  storeli.w r5, -6456(r30)
002934  9f020200  addli r5, r4, 0
002938  63428fcc  loadli.w r4,  -6588(r30)
00293c  e7402fce  storeli.w r2, -6388(r30)
002940  8b927210  add.s r5, r5, r7
002944  674d6fce  storeli.w r6, -6188(r30)
002948  0b12e210  add.s r4, r4, r14
00294c  6307afcc  loadli.w r14,  -6576(r30)
002950  0b125218  sub.s r4, r4, r5
002954  97101700  or r1, r14, r1
002958  67064fce  storeli.w r4, -6304(r30)
00295c  63421fcd  loadli.w r4,  -6516(r30)
002960  1ba11000  xori r2, r1, 1
002964  97901100  or r1, r3, r1
002968  9ba01000  xori r1, r1, 1
00296c  17812100  and r2, r3, r2
002970  e301ffcc  loadli.w r3,  -6536(r30)
002974  674c1fcc  storeli.w r1, -6460(r30)
002978  e3400fcd  loadli.w r1,  -6524(r30)
00297c  e7452fce  storeli.w r2, -6308(r30)
002980  1b311300  slli r2, r6, 1
002984  0b972010  add.s r14, r1, r2
002988  6341ffcc  loadli.w r2,  -6532(r30)
00298c  8b104420  mul.s r1, r8, r4
002990  e705efce  storeli.w r14, -6312(r30)
002994  0b113450  fmac.s r2, r8, r3
002998  e3019fcc  loadli.w r3,  -6584(r30)
00299c  1f04efcc  addli r8, r30, -6544
0029a0  8b901118  sub.s r1, r3, r1
0029a4  3311212c  .word 0x2c211133
0029a8  8b101240  min.s r1, r4, r1
0029ac  6b520400  load.d r[5:6], 0(r8)
0029b0  17317103  sll.d r[3:4], r[3:4], r23
0029b4  8b900048  max.s r1, r1, zero
0029b8  0b222210  add.ul r[5:6], r[5:6], r[3:4]
0029bc  67451fce  storeli.w r1, -6316(r30)
0029c0  73304800  store.d r[5:6], 0(r16)
0029c4  ebd20800  load.d r[6:7], 0(r17)
0029c8  63021fce  loadli.w r4,  -6392(r30)
0029cc  0ba12210  add.ul r[3:4], r[6:7], r[3:4]
0029d0  8b10d220  mul.s r1, r4, r13
0029d4  9f820600  addli r5, r13, 0
0029d8  73302900  store.d r[3:4], 0(r18)
0029dc  6301bfcc  loadli.w r2,  -6568(r30)
0029e0  0b131118  sub.s r6, r2, r1
0029e4  8b107220  mul.s r1, r4, r7
0029e8  e74e1fcc  storeli.w r1, -6420(r30)
0029ec  db070000  j 60
0029f0  e3406fcf  loadli.w r1,  -6220(r30)
0029f4  8b950558  neg.s r11, r11
0029f8  8b927210  add.s r5, r5, r7
0029fc  8b941418  sub.s r9, r9, r1
002a00  8b900058  neg.s r1, r1
002a04  674b1fce  storeli.w r1, -6220(r30)
002a08  e340cfcd  loadli.w r1,  -6428(r30)
002a0c  8b9a1a10  add.s r21, r21, r1
002a10  e340efcd  loadli.w r1,  -6412(r30)
002a14  0b1b1b10  add.s r22, r22, r1
002a18  e340dfcd  loadli.w r1,  -6420(r30)
002a1c  0b131318  sub.s r6, r6, r1
002a20  e300efcd  loadli.w r1,  -6416(r30)
002a24  b7d91206  beq r5, r1, 3700
002a28  63410fce  loadli.w r2,  -6396(r30)
002a2c  670b0fce  storeli.w zero, -6224(r30)
002a30  8b902a38  mod.s r1, r21, r2
002a34  8b902010  add.s r1, r1, r2
002a38  0b942038  mod.s r8, r1, r2
002a3c  3f110400  blt.s r8, zero, 68
002a40  e340ffcd  loadli.w r1,  -6404(r30)
002a44  6301efcf  loadli.w r2,  -6160(r30)
002a48  cbf08000  ble.s r1, r8, 60
002a4c  6301dfcd  loadli.w r2,  -6424(r30)
002a50  9b301400  slli r1, r8, 1
002a54  63022fce  loadli.w r4,  -6384(r30)
002a58  8b101110  add.s r1, r2, r1
002a5c  63019fcd  loadli.w r2,  -6456(r30)
002a60  ebb10000  load.hu r3, 0(r1)
002a64  0b914250  fmac.s r2, r5, r4
002a68  3b303100  bneq r2, r3, 12
002a6c  670b0fce  storeli.w zero, -6224(r30)
002a70  5b020000  j 16
002a74  9f110000  addli r3, zero, 1
002a78  73902000  store.h r2, 0(r1)
002a7c  670b3fce  storeli.w r3, -6224(r30)
002a80  6301efcf  loadli.w r2,  -6160(r30)
002a84  e3007fcf  loadli.w r1,  -6216(r30)
002a88  8b96b018  sub.s r13, r1, r11
002a8c  3bb01700  bneq r15, r1, 12
002a90  9f870600  addli r15, r13, 0
002a94  dbbc0100  j 3556
002a98  67088fce  storeli.w r8, -6272(r30)
002a9c  6304ffcd  loadli.w r8,  -6408(r30)
002aa0  8b907220  mul.s r1, r5, r7
002aa4  e3031fce  loadli.w r7,  -6392(r30)
002aa8  e749dfce  storeli.w r13, -6244(r30)
002aac  9f860200  addli r13, r5, 0
002ab0  674d6fcc  storeli.w r6, -6444(r30)
002ab4  9f081fcf  addli r17, r30, -6264
002ab8  1f092fcf  addli r18, r30, -6256
002abc  e74d6fcd  storeli.w r22, -6436(r30)
002ac0  670e5fcd  storeli.w r21, -6432(r30)
002ac4  9f8a0c00  addli r21, r25, 0
002ac8  6748bfce  storeli.w r11, -6268(r30)
002acc  e7471fce  storeli.w r1, -6276(r30)
002ad0  e300afcd  loadli.w r1,  -6448(r30)
002ad4  e70ddfcc  storeli.w r13, -6440(r30)
002ad8  0b118b38  mod.s r2, r22, r8
002adc  8b916340  min.s r3, r7, r6
002ae0  63036fcf  loadli.w r6,  -6224(r30)
002ae4  1f0b2fcd  addli r22, r30, -6512
002ae8  13821200  seteq r4, r5, r1
002aec  e3005fcd  loadli.w r1,  -6488(r30)
002af0  8b910148  max.s r3, r3, zero
002af4  e7023fd0  storeli.w r3, -6104(r30)
002af8  e3418fcd  loadli.w r3,  -6460(r30)
002afc  8b901210  add.s r1, r5, r1
002b00  8b927620  mul.s r5, r13, r7
002b04  0b118110  add.s r2, r2, r8
002b08  e7411fce  storeli.w r1, -6372(r30)
002b0c  e3404fcd  loadli.w r1,  -6492(r30)
002b10  0b148138  mod.s r8, r2, r8
002b14  63416fcd  loadli.w r2,  -6476(r30)
002b18  97814100  and r3, r3, r4
002b1c  97001300  and r1, r6, r1
002b20  63435fcd  loadli.w r6,  -6484(r30)
002b24  0b115118  sub.s r2, r2, r5
002b28  e7073fce  storeli.w r3, -6280(r30)
002b2c  e3010fce  loadli.w r3,  -6400(r30)
002b30  0b912340  min.s r2, r7, r2
002b34  0b937650  fmac.s r6, r13, r7
002b38  e3463fcf  loadli.w r13,  -6244(r30)
002b3c  670d8fce  storeli.w r8, -6192(r30)
002b40  0b180148  max.s r16, r2, zero
002b44  67442fd0  storeli.w r2, -6076(r30)
002b48  1b311400  slli r2, r8, 1
002b4c  eb530900  load.d r[8:9], 0(r18)
002b50  0b912110  add.s r2, r3, r2
002b54  b311332c  .word 0x2c3311b3
002b58  ebd20800  load.d r[6:7], 0(r17)
002b5c  67080fd1  storeli.w r16, -6016(r30)
002b60  67472fce  storeli.w r2, -6284(r30)
002b64  63413fcd  loadli.w r2,  -6500(r30)
002b68  8bb25120  mul.sl r[6:7], r[4:5], r[6:7]
002b6c  8bb17120  mul.sl r[4:5], r[4:5], r[8:9]
002b70  eb530b00  load.d r[8:9], 0(r22)
002b74  0b110111  add.s r2, r2, r16
002b78  67072fce  storeli.w r2, -6288(r30)
002b7c  1f110000  addli r2, zero, 1
002b80  97b22202  sll.d r[6:7], r[6:7], r2
002b84  97b12102  sll.d r[4:5], r[4:5], r2
002b88  8ba25310  add.ul r[6:7], r[8:9], r[6:7]
002b8c  9f03dfce  addli r7, r30, -6296
002b90  1f047fcd  addli r8, r30, -6472
002b94  73b05300  store.d r[6:7], 0(r7)
002b98  eb520400  load.d r[6:7], 0(r8)
002b9c  8ba13210  add.ul r[4:5], r[6:7], r[4:5]
002ba0  1f03afd1  addli r6, r30, -5936
002ba4  9b327800  slli r5, r16, 7
002ba8  73303300  store.d r[4:5], 0(r6)
002bac  6342ffcf  loadli.w r4,  -6148(r30)
002bb0  9b315800  slli r3, r16, 5
002bb4  e74c5fd0  storeli.w r5, -5940(r30)
002bb8  e3024fcd  loadli.w r5,  -6496(r30)
002bbc  67433fd0  storeli.w r3, -6092(r30)
002bc0  8b11f220  mul.s r3, r4, r15
002bc4  8b913218  sub.s r3, r5, r3
002bc8  e70f3fce  storeli.w r3, -6152(r30)
002bcc  8b11b220  mul.s r3, r4, r11
002bd0  67463fce  storeli.w r3, -6300(r30)
002bd4  db060000  j 52
002bd8  63416fcf  loadli.w r2,  -6220(r30)
002bdc  e341cfce  loadli.w r3,  -6300(r30)
002be0  9f000000  addli r1, zero, 0
002be4  8b97b710  add.s r15, r15, r11
002be8  670f1fce  storeli.w r1, -6160(r30)
002bec  8b942410  add.s r9, r9, r2
002bf0  6301ffcf  loadli.w r2,  -6152(r30)
002bf4  0b113118  sub.s r2, r2, r3
002bf8  e3017fcf  loadli.w r3,  -6216(r30)
002bfc  e70f2fce  storeli.w r2, -6152(r30)
002c00  1f810000  addli r2, r1, 0
002c04  37d13706  beq r15, r3, 3156
002c08  63020fd0  loadli.w r4,  -6144(r30)
002c0c  9f0d0000  addli r27, zero, 0
002c10  8b914438  mod.s r3, r9, r4
002c14  8b914110  add.s r3, r3, r4
002c18  8b914138  mod.s r3, r3, r4
002c1c  bfe00100  blt.s r3, zero, 56
002c20  63420fd0  loadli.w r4,  -6140(r30)
002c24  e343efce  loadli.w r7,  -6284(r30)
002c28  cb703200  ble.s r4, r3, 60
002c2c  9bb11100  slli r3, r3, 1
002c30  1f024fe2  addli r4, r30, -3808
002c34  63032fce  loadli.w r6,  -6384(r30)
002c38  8b113210  add.s r3, r4, r3
002c3c  63421fce  loadli.w r4,  -6388(r30)
002c40  ebb20100  load.hu r5, 0(r3)
002c44  0b926750  fmac.s r4, r15, r6
002c48  3b505200  bneq r4, r5, 20
002c4c  9f0d0000  addli r27, zero, 0
002c50  db020000  j 20
002c54  e343efce  loadli.w r7,  -6284(r30)
002c58  db010000  j 12
002c5c  9f1d0000  addli r27, zero, 1
002c60  73904100  store.h r4, 0(r3)
002c64  e3417fce  loadli.w r3,  -6340(r30)
002c68  63025fce  loadli.w r4,  -6360(r30)
002c6c  93814102  setneq r3, r3, r4
002c70  1382d702  setneq r4, r15, r13
002c74  97914100  or r3, r3, r4
002c78  bbb00100  bneq r3, zero, 44
002c7c  6302afcf  loadli.w r4,  -6192(r30)
002c80  bf100200  blt.s r4, zero, 36
002c84  6342efcf  loadli.w r4,  -6156(r30)
002c88  e302afcf  loadli.w r5,  -6192(r30)
002c8c  4b605200  ble.s r4, r5, 24
002c90  6bb20300  load.hu r4, 0(r7)
002c94  e3423fce  loadli.w r5,  -6372(r30)
002c98  37a04200  beq r5, r4, 8
002c9c  63423fce  loadli.w r4,  -6372(r30)
002ca0  73904300  store.h r4, 0(r7)
002ca4  6342afcf  loadli.w r4,  -6188(r30)
002ca8  1b720200  setlti r4, r4, 0
002cac  97914100  or r3, r3, r4
002cb0  bb900100  bneq r3, zero, 36
002cb4  e3019fcf  loadli.w r3,  -6200(r30)
002cb8  6342afcf  loadli.w r4,  -6188(r30)
002cbc  4be04100  ble.s r3, r4, 24
002cc0  eb310700  load.hu r3, 0(r14)
002cc4  63428fcf  loadli.w r4,  -6204(r30)
002cc8  37203200  beq r4, r3, 8
002ccc  e3418fcf  loadli.w r3,  -6204(r30)
002cd0  73103700  store.h r3, 0(r14)
002cd4  e301cfce  loadli.w r3,  -6304(r30)
002cd8  6342ffce  loadli.w r4,  -6276(r30)
002cdc  93013200  seteq r3, r4, r3
002ce0  17812100  and r2, r3, r2
002ce4  e341bfce  loadli.w r3,  -6308(r30)
002ce8  17812100  and r2, r3, r2
002cec  3b307101  bneq r2, r23, 12
002cf0  1f310000  addli r2, zero, 3
002cf4  7d100100  xwait r2, 0
002cf8  6301cfd1  loadli.w r2,  -5920(r30)
002cfc  e3018fce  loadli.w r3,  -6336(r30)
002d00  13023104  setlt.u r4, r2, r3
002d04  9f01cfd1  addli r3, r30, -5920
002d08  bb100200  bneq r4, zero, 36
002d0c  63413fe2  loadli.w r2,  -3812(r30)
002d10  e3417fcf  loadli.w r3,  -6212(r30)
002d14  13822104  setlt.u r4, r3, r2
002d18  37200200  beq r4, zero, 8
002d1c  63013fe2  loadli.w r2,  -3816(r30)
002d20  9f013fe2  addli r3, r30, -3816
002d24  3b200200  bneq r4, zero, 8
002d28  9f413fe2  addli r3, r30, -3812
002d2c  e3429fcf  loadli.w r5,  -6196(r30)
002d30  6343afce  loadli.w r6,  -6316(r30)
002d34  e343ffcf  loadli.w r7,  -6148(r30)
002d38  670e9fce  storeli.w r9, -6176(r30)
002d3c  e3047fd0  loadli.w r9,  -6088(r30)
002d40  e3052fd1  loadli.w r11,  -6000(r30)
002d44  e3064fcf  loadli.w r13,  -6240(r30)
002d48  1f0cdfce  addli r24, r30, -6296
002d4c  1f0b4fce  addli r22, r30, -6368
002d50  e74dffce  storeli.w r15, -6180(r30)
002d54  9f0c2fcf  addli r25, r30, -6256
002d58  1f0d1fcf  addli r26, r30, -6264
002d5c  eb580c00  load.d r[18:19], 0(r24)
002d60  0b175330  div.s r14, r6, r5
002d64  63435fce  loadli.w r6,  -6356(r30)
002d68  0b927720  mul.s r4, r15, r7
002d6c  e3026fce  loadli.w r5,  -6352(r30)
002d70  0b124318  sub.s r4, r6, r4
002d74  1f130100  addli r6, r2, 1
002d78  8b927750  fmac.s r5, r15, r7
002d7c  eb570b00  load.d r[16:17], 0(r22)
002d80  0b914340  min.s r2, r7, r4
002d84  3392422a  .word 0x2a429233
002d88  67806100  storeli.w r6, 0(r3)
002d8c  9f810d00  addli r3, r27, 0
002d90  8b130148  max.s r7, r2, zero
002d94  6301efce  loadli.w r2,  -6288(r30)
002d98  67497fd0  storeli.w r7, -5996(r30)
002d9c  9ff3f3ff  addli r7, r7, -1
002da0  0b11c130  div.s r2, r2, r12
002da4  0b94b310  add.s r8, r7, r11
002da8  67032fd0  storeli.w r2, -6096(r30)
002dac  0b119710  add.s r2, r14, r9
002db0  1f71f1ff  addli r2, r2, -1
002db4  0b119130  div.s r2, r2, r9
002db8  e7422fd0  storeli.w r2, -6100(r30)
002dbc  0b11b430  div.s r2, r8, r11
002dc0  63040fcf  loadli.w r8,  -6272(r30)
002dc4  9b851000  andi r11, r1, 1
002dc8  67482fd0  storeli.w r2, -6012(r30)
002dcc  0b914311  add.s r2, r7, r20
002dd0  e3435fcf  loadli.w r7,  -6228(r30)
002dd4  0b114131  div.s r2, r2, r20
002dd8  8b137438  mod.s r7, r8, r7
002ddc  17347203  sll.d r[9:10], r[5:6], r23
002de0  0b32f220  mul.sl r[5:6], r[5:6], r[16:17]
002de4  0ba48810  add.ul r[9:10], r[18:19], r[9:10]
002de8  9f082fd0  addli r17, r30, -6128
002dec  1f099fce  addli r18, r30, -6328
002df0  17327203  sll.d r[5:6], r[5:6], r23
002df4  73b08800  store.d r[9:10], 0(r17)
002df8  e7082fd0  storeli.w r2, -6008(r30)
002dfc  63015fcf  loadli.w r2,  -6232(r30)
002e00  8b962350  fmac.s r13, r7, r2
002e04  6301dfcf  loadli.w r2,  -6168(r30)
002e08  e3438fce  loadli.w r7,  -6332(r30)
002e0c  13812306  setle.u r2, r7, r2
002e10  eb530900  load.d r[8:9], 0(r18)
002e14  0ba24310  add.ul r[5:6], r[8:9], r[5:6]
002e18  9f033fd0  addli r7, r30, -6120
002e1c  73b04300  store.d r[5:6], 0(r7)
002e20  6b520d00  load.d r[5:6], 0(r26)
002e24  e70d2fce  storeli.w r2, -6184(r30)
002e28  ebd00c00  load.d r[2:3], 0(r25)
002e2c  17b47003  sll.d r[9:10], r[2:3], r23
002e30  97b07703  sll.d r[2:3], r[16:17], r23
002e34  97377203  sll.d r[16:17], r[5:6], r23
002e38  63421fd0  loadli.w r4,  -6132(r30)
002e3c  b7007201  beq r4, r23, 32
002e40  e3411fd0  loadli.w r3,  -6132(r30)
002e44  1f320000  addli r4, zero, 3
002e48  b7f14102  beq r3, r4, 1148
002e4c  1f220000  addli r4, zero, 2
002e50  3ba24102  bneq r3, r4, 1160
002e54  e3013fce  loadli.w r3,  -6376(r30)
002e58  97813d00  and r3, r27, r3
002e5c  b7f10102  beq r3, zero, 1148
002e60  e3418fcf  loadli.w r3,  -6204(r30)
002e64  63422fce  loadli.w r4,  -6380(r30)
002e68  3bf54100  bneq r3, r4, 348
002e6c  e3016fd0  loadli.w r3,  -6096(r30)
002e70  3fd57101  blt.s r3, r23, 340
002e74  630b5fd0  loadli.w r22,  -6104(r30)
002e78  9f0d0000  addli r27, zero, 0
002e7c  5b030000  j 24
002e80  63467fd0  loadli.w r12,  -6084(r30)
002e84  e3016fd0  loadli.w r3,  -6096(r30)
002e88  9f9d0d00  addli r27, r27, 1
002e8c  0b1bcb18  sub.s r22, r22, r12
002e90  b7d43d00  beq r27, r3, 308
002e94  e3410fd1  loadli.w r3,  -6012(r30)
002e98  bfaf71ff  blt.s r3, r23, -24
002e9c  e301dfd0  loadli.w r3,  -6040(r30)
002ea0  0b92cd20  mul.s r4, r27, r12
002ea4  e3030fd1  loadli.w r7,  -6016(r30)
002ea8  8b123220  mul.s r5, r4, r3
002eac  0b924318  sub.s r4, r7, r4
002eb0  8b116641  min.s r3, r12, r22
002eb4  9f039fd0  addli r7, r30, -6072
002eb8  b392522a  .word 0x2a5292b3
002ebc  0b1c4640  min.s r24, r12, r4
002ec0  1f060000  addli r12, zero, 0
002ec4  97b87203  sll.d r[18:19], r[6:7], r23
002ec8  1f032fd0  addli r6, r30, -6128
002ecc  6b520300  load.d r[5:6], 0(r6)
002ed0  0b221211  add.ul r[5:6], r[5:6], r[18:19]
002ed4  73b04300  store.d r[5:6], 0(r7)
002ed8  5b020000  j 16
002edc  63420fd1  loadli.w r4,  -6012(r30)
002ee0  1f160600  addli r12, r12, 1
002ee4  377e46fe  beq r12, r4, -100
002ee8  1b82fa0f  andi r4, r21, 255
002eec  37300200  beq r4, zero, 12
002ef0  1f221000  addli r4, zero, 10
002ef4  7d100200  xwait r4, 0
002ef8  bf327c01  blt.s r24, r23, 172
002efc  e3032fd1  loadli.w r7,  -6000(r30)
002f00  63422fd1  loadli.w r4,  -5996(r30)
002f04  8b127620  mul.s r5, r12, r7
002f08  0b125218  sub.s r4, r4, r5
002f0c  0b924340  min.s r4, r7, r4
002f10  3f527201  blt.s r4, r23, 148
002f14  e3037fd1  loadli.w r7,  -5960(r30)
002f18  b39c922b  .word 0x2b929cb3
002f1c  9f420000  addli r5, zero, 4
002f20  9f089fd0  addli r17, r30, -6072
002f24  63095fd1  loadli.w r18,  -5976(r30)
002f28  1d800200  lock zero, r5
002f2c  1b321200  slli r4, r4, 1
002f30  e342cfd0  loadli.w r5,  -6044(r30)
002f34  958b5b00  dma_cfg r23, r23, r5, 0
002f38  ebd20800  load.d r[6:7], 0(r17)
002f3c  97bc7c03  sll.d r[26:27], r[26:27], r23
002f40  8b137538  mod.s r7, r10, r7
002f44  8bac9211  add.ul r[26:27], r[6:7], r[26:27]
002f48  e3026fd1  loadli.w r5,  -5968(r30)
002f4c  950b0002  dma_cfg r23, zero, zero, 1
002f50  0b995350  fmac.s r18, r7, r5
002f54  e302dfd0  loadli.w r5,  -6040(r30)
002f58  3ff07201  blt.s r5, r23, 28
002f5c  15000d04  dma_cfg zero, r26, zero, 2
002f60  15894c06  dma_cfg r18, r25, r4, 3
002f64  e342bfd0  loadli.w r5,  -6052(r30)
002f68  15828209  dma_cfg r4, r5, r24, 4
002f6c  35000000  dma_run zero
002f70  db050000  j 44
002f74  e3028fd0  loadli.w r5,  -6080(r30)
002f78  15827209  dma_cfg r4, r5, r23, 4
002f7c  9f820100  addli r5, r3, 0
002f80  15000d04  dma_cfg zero, r26, zero, 2
002f84  15894c06  dma_cfg r18, r25, r4, 3
002f88  8bacfc10  add.ul r[26:27], r[26:27], r[16:17]
002f8c  9ff2f2ff  addli r5, r5, -1
002f90  0b194910  add.s r18, r18, r4
002f94  35000000  dma_run zero
002f98  bbaf02fe  bneq r5, zero, -24
002f9c  1f420000  addli r4, zero, 4
002fa0  1d100200  unlock r4
002fa4  1f321000  addli r4, zero, 11
002fa8  7d000200  xsignal r4, 0
002fac  1f150500  addli r10, r10, 1
002fb0  63024fd1  loadli.w r4,  -5984(r30)
002fb4  bb2c45fe  bneq r10, r4, -216
002fb8  9f1a0000  addli r21, zero, 1
002fbc  1f050000  addli r10, zero, 0
002fc0  dbe3ffff  j -228
002fc4  e3016fcf  loadli.w r3,  -6224(r30)
002fc8  6302bfcf  loadli.w r4,  -6184(r30)
002fcc  9ba11100  xori r3, r3, 1
002fd0  97914100  or r3, r3, r4
002fd4  bbd20102  bneq r3, zero, 1204
002fd8  e301dfcf  loadli.w r3,  -6168(r30)
002fdc  63028fcf  loadli.w r4,  -6208(r30)
002fe0  e302efcf  loadli.w r5,  -6160(r30)
002fe4  63435fd0  loadli.w r6,  -6100(r30)
002fe8  9f910100  addli r3, r3, 1
002fec  e70e3fce  storeli.w r3, -6168(r30)
002ff0  9f112000  addli r3, zero, 17
002ff4  3fc07201  blt.s r5, r23, 16
002ff8  7d900100  xwait r3, 0
002ffc  9ff2f2ff  addli r5, r5, -1
003000  bbef02fe  bneq r5, zero, -8
003004  670c4fce  storeli.w r4, -6208(r30)
003008  bf5a7301  blt.s r6, r23, 692
00300c  e341ffcf  loadli.w r3,  -6148(r30)
003010  6302ffcf  loadli.w r4,  -6152(r30)
003014  9f070000  addli r15, zero, 0
003018  1f060000  addli r12, zero, 0
00301c  8b914140  min.s r3, r3, r4
003020  1f72f3ff  addli r4, r6, -1
003024  8b910148  max.s r3, r3, zero
003028  e7044fd0  storeli.w r4, -6072(r30)
00302c  67013fd0  storeli.w r3, -6128(r30)
003030  e301bfd0  loadli.w r3,  -6056(r30)
003034  9ff1f1ff  addli r3, r3, -1
003038  67033fd0  storeli.w r3, -6096(r30)
00303c  db020000  j 20
003040  9f870100  addli r15, r3, 0
003044  e3415fd0  loadli.w r3,  -6100(r30)
003048  1f160600  addli r12, r12, 1
00304c  b7493600  beq r12, r3, 624
003050  63027fd0  loadli.w r4,  -6088(r30)
003054  8b124620  mul.s r5, r12, r4
003058  8b115718  sub.s r3, r14, r5
00305c  67485fd0  storeli.w r5, -6012(r30)
003060  8b1d3240  min.s r27, r4, r3
003064  e3011fd1  loadli.w r3,  -6008(r30)
003068  3fe47101  blt.s r3, r23, 280
00306c  9f033fd0  addli r7, r30, -6120
003070  3392422a  .word 0x2a429233
003074  63092fd0  loadli.w r18,  -6128(r30)
003078  9f010000  addli r3, zero, 0
00307c  1bb31d00  slli r6, r27, 1
003080  6bd80300  load.d r[17:18], 0(r7)
003084  17327203  sll.d r[5:6], r[5:6], r23
003088  8b2c4810  add.ul r[26:27], r[17:18], r[5:6]
00308c  db020000  j 20
003090  63021fd1  loadli.w r4,  -6008(r30)
003094  9f910100  addli r3, r3, 1
003098  0b194919  sub.s r18, r18, r20
00309c  b7934100  beq r3, r4, 228
0030a0  1b82fa0f  andi r4, r21, 255
0030a4  37300200  beq r4, zero, 12
0030a8  1f221000  addli r4, zero, 10
0030ac  7d100200  xwait r4, 0
0030b0  bfc27d01  blt.s r27, r23, 176
0030b4  e3422fd1  loadli.w r5,  -5996(r30)
0030b8  0b924121  mul.s r4, r3, r20
0030bc  8b924218  sub.s r5, r5, r4
0030c0  8b185a40  min.s r17, r20, r5
0030c4  3ff27801  blt.s r17, r23, 156
0030c8  e3027fd1  loadli.w r5,  -5960(r30)
0030cc  e343dfd0  loadli.w r7,  -6036(r30)
0030d0  1f8c0a00  addli r24, r21, 0
0030d4  63085fd1  loadli.w r16,  -5976(r30)
0030d8  1f4a0000  addli r20, zero, 4
0030dc  1d000a00  lock zero, r20
0030e0  0b127220  mul.s r4, r4, r7
0030e4  8b125538  mod.s r5, r10, r5
0030e8  b31a5229  .word 0x29521ab3
0030ec  6302efd0  loadli.w r4,  -6032(r30)
0030f0  958b4b00  dma_cfg r23, r23, r4, 0
0030f4  63026fd1  loadli.w r4,  -5968(r30)
0030f8  950b0002  dma_cfg r23, zero, zero, 1
0030fc  97ba7a03  sll.d r[22:23], r[22:23], r23
003100  0b984250  fmac.s r16, r5, r4
003104  0ba25c11  add.ul r[5:6], r[26:27], r[22:23]
003108  bf807301  blt.s r7, r23, 32
00310c  15800204  dma_cfg zero, r5, zero, 2
003110  15086206  dma_cfg r16, r4, r6, 3
003114  6302cfd0  loadli.w r4,  -6048(r30)
003118  15031209  dma_cfg r6, r4, r17, 4
00311c  35000000  dma_run zero
003120  630a3fd1  loadli.w r20,  -5992(r30)
003124  5b060000  j 48
003128  e343afd0  loadli.w r7,  -6060(r30)
00312c  15837309  dma_cfg r6, r7, r23, 4
003130  630a3fd1  loadli.w r20,  -5992(r30)
003134  8b132a41  min.s r7, r20, r18
003138  15800204  dma_cfg zero, r5, zero, 2
00313c  15086206  dma_cfg r16, r4, r6, 3
003140  0b221210  add.ul r[5:6], r[5:6], r[2:3]
003144  9ff3f3ff  addli r7, r7, -1
003148  0b186810  add.s r16, r16, r6
00314c  35000000  dma_run zero
003150  bbaf03fe  bneq r7, zero, -24
003154  9f0a0c00  addli r21, r24, 0
003158  1f420000  addli r4, zero, 4
00315c  1d100200  unlock r4
003160  1f321000  addli r4, zero, 11
003164  7d000200  xsignal r4, 0
003168  1f150500  addli r10, r10, 1
00316c  63024fd1  loadli.w r4,  -5984(r30)
003170  bb0c45fe  bneq r10, r4, -224
003174  9f1a0000  addli r21, zero, 1
003178  1f050000  addli r10, zero, 0
00317c  dbe2ffff  j -236
003180  e3016fd0  loadli.w r3,  -6096(r30)
003184  63029fd0  loadli.w r4,  -6072(r30)
003188  37204600  beq r12, r4, 8
00318c  9f010000  addli r3, zero, 0
003190  63420fd1  loadli.w r4,  -6012(r30)
003194  8b914110  add.s r3, r3, r4
003198  6302bfd0  loadli.w r4,  -6056(r30)
00319c  8b91b111  add.s r3, r3, r27
0031a0  8b914130  div.s r3, r3, r4
0031a4  cb8af1fe  ble.s r3, r15, -352
0031a8  db0a0000  j 84
0031ac  15800204  dma_cfg zero, r5, zero, 2
0031b0  1503c207  dma_cfg r6, r4, r28, 3
0031b4  63423fd1  loadli.w r4,  -5988(r30)
0031b8  9f020001  addli r5, zero, 128
0031bc  63030fd1  loadli.w r6,  -6016(r30)
0031c0  9502620a  dma_cfg r5, r4, r6, 5
0031c4  9f0a0c00  addli r21, r24, 0
0031c8  63429fd1  loadli.w r4,  -5940(r30)
0031cc  15020e09  dma_cfg r4, r28, r16, 4
0031d0  15007010  dma_cfg zero, zero, r7, 8
0031d4  35000000  dma_run zero
0031d8  630a3fd1  loadli.w r20,  -5992(r30)
0031dc  1500700b  dma_cfg zero, zero, r23, 5
0031e0  15000010  dma_cfg zero, zero, zero, 8
0031e4  1f420000  addli r4, zero, 4
0031e8  1d100200  unlock r4
0031ec  1f222000  addli r4, zero, 18
0031f0  7d000200  xsignal r4, 0
0031f4  9f970700  addli r15, r15, 1
0031f8  37a937fe  beq r15, r3, -440
0031fc  b7cf05fe  beq r11, zero, -16
003200  63428fd0  loadli.w r4,  -6076(r30)
003204  bf2f72ff  blt.s r4, r23, -24
003208  6303bfd0  loadli.w r6,  -6056(r30)
00320c  8b926720  mul.s r5, r15, r6
003210  0b125718  sub.s r4, r14, r5
003214  0b124340  min.s r4, r6, r4
003218  3f5f72ff  blt.s r4, r23, -44
00321c  1f0a4000  addli r20, zero, 32
003220  3398022b  .word 0x2b029833
003224  1f8c0a00  addli r24, r21, 0
003228  1b391200  slli r18, r4, 1
00322c  0b934231  div.s r6, r5, r20
003230  973a7803  sll.d r[22:23], r[17:18], r23
003234  9b335300  slli r7, r6, 5
003238  8b937218  sub.s r7, r5, r7
00323c  e3426fd0  loadli.w r5,  -6092(r30)
003240  8b936250  fmac.s r7, r5, r6
003244  9f723200  addli r5, r4, 31
003248  1f420000  addli r4, zero, 4
00324c  1d000200  lock zero, r4
003250  63028fd1  loadli.w r4,  -5952(r30)
003254  15804b00  dma_cfg zero, r23, r4, 0
003258  950b0002  dma_cfg r23, zero, zero, 1
00325c  e348bfd1  loadli.w r17,  -5924(r30)
003260  0b984231  div.s r16, r5, r20
003264  1f0aafd1  addli r20, r30, -5936
003268  1bb32300  slli r6, r7, 2
00326c  9b03e903  andi r7, r18, 62
003270  6b520a00  load.d r[5:6], 0(r20)
003274  0b13d310  add.s r6, r6, r13
003278  0b225211  add.ul r[5:6], r[5:6], r[22:23]
00327c  3fa07801  blt.s r17, r23, 8
003280  dbe5ffff  j -212
003284  e3489fd1  loadli.w r17,  -5940(r30)
003288  95080e09  dma_cfg r17, r28, r16, 4
00328c  15007010  dma_cfg zero, zero, r7, 8
003290  e3035fd0  loadli.w r7,  -6104(r30)
003294  630a3fd1  loadli.w r20,  -5992(r30)
003298  9f0a0c00  addli r21, r24, 0
00329c  15800204  dma_cfg zero, r5, zero, 2
0032a0  1503c207  dma_cfg r6, r4, r28, 3
0032a4  1f030301  addli r6, r6, 128
0032a8  9ff3f3ff  addli r7, r7, -1
0032ac  0b228210  add.ul r[5:6], r[5:6], r[9:10]
0032b0  35000000  dma_run zero
0032b4  bbaf03fe  bneq r7, zero, -24
0032b8  dbe4ffff  j -220
0032bc  63467fd0  loadli.w r12,  -6084(r30)
0032c0  dbaa0000  j 1364
0032c4  e3418fcf  loadli.w r3,  -6204(r30)
0032c8  63422fce  loadli.w r4,  -6380(r30)
0032cc  93814100  seteq r3, r3, r4
0032d0  9781b101  and r3, r3, r27
0032d4  3bbe01fc  bneq r3, zero, -1140
0032d8  e3415fd0  loadli.w r3,  -6100(r30)
0032dc  93113004  setlt.s r3, zero, r3
0032e0  97813d00  and r3, r27, r3
0032e4  bb957101  bneq r3, r23, 356
0032e8  e341ffcf  loadli.w r3,  -6148(r30)
0032ec  6302ffcf  loadli.w r4,  -6152(r30)
0032f0  8b914140  min.s r3, r3, r4
0032f4  1f020000  addli r4, zero, 0
0032f8  8b910148  max.s r3, r3, zero
0032fc  e7003fd0  storeli.w r3, -6136(r30)
003300  5b030000  j 24
003304  63029fd0  loadli.w r4,  -6072(r30)
003308  63467fd0  loadli.w r12,  -6084(r30)
00330c  e3415fd0  loadli.w r3,  -6100(r30)
003310  1f120200  addli r4, r4, 1
003314  b7543200  beq r4, r3, 308
003318  e3011fd1  loadli.w r3,  -6008(r30)
00331c  e7044fd0  storeli.w r4, -6072(r30)
003320  bf9f71ff  blt.s r3, r23, -28
003324  63037fd0  loadli.w r6,  -6088(r30)
003328  9f033fd0  addli r7, r30, -6120
00332c  9f010000  addli r3, zero, 0
003330  0b126220  mul.s r4, r4, r6
003334  8b124718  sub.s r5, r14, r4
003338  b3181229  .word 0x291218b3
00333c  0b135340  min.s r6, r6, r5
003340  17b27803  sll.d r[5:6], r[18:19], r23
003344  ebd80300  load.d r[18:19], 0(r7)
003348  1b361300  slli r12, r6, 1
00334c  8bac4810  add.ul r[26:27], r[18:19], r[5:6]
003350  63091fd0  loadli.w r18,  -6136(r30)
003354  db020000  j 20
003358  63021fd1  loadli.w r4,  -6008(r30)
00335c  9f910100  addli r3, r3, 1
003360  0b194919  sub.s r18, r18, r20
003364  b78e41fe  beq r3, r4, -96
003368  1b82fa0f  andi r4, r21, 255
00336c  37300200  beq r4, zero, 12
003370  1f221000  addli r4, zero, 10
003374  7d100200  xwait r4, 0
003378  bf427301  blt.s r6, r23, 176
00337c  e3422fd1  loadli.w r5,  -5996(r30)
003380  0b924121  mul.s r4, r3, r20
003384  8b924218  sub.s r5, r5, r4
003388  8b185a40  min.s r17, r20, r5
00338c  3ff27801  blt.s r17, r23, 156
003390  e3027fd1  loadli.w r5,  -5960(r30)
003394  e343dfd0  loadli.w r7,  -6036(r30)
003398  1f8c0a00  addli r24, r21, 0
00339c  e30d5fd1  loadli.w r27,  -5976(r30)
0033a0  1f4a0000  addli r20, zero, 4
0033a4  1d000a00  lock zero, r20
0033a8  0b127220  mul.s r4, r4, r7
0033ac  8b125538  mod.s r5, r10, r5
0033b0  b31a5229  .word 0x29521ab3
0033b4  6302efd0  loadli.w r4,  -6032(r30)
0033b8  958b4b00  dma_cfg r23, r23, r4, 0
0033bc  63026fd1  loadli.w r4,  -5968(r30)
0033c0  950b0002  dma_cfg r23, zero, zero, 1
0033c4  97ba7a03  sll.d r[22:23], r[22:23], r23
0033c8  8b9d4250  fmac.s r27, r5, r4
0033cc  0ba25c11  add.ul r[5:6], r[26:27], r[22:23]
0033d0  bf807301  blt.s r7, r23, 32
0033d4  15800204  dma_cfg zero, r5, zero, 2
0033d8  950dc206  dma_cfg r27, r4, r12, 3
0033dc  6302cfd0  loadli.w r4,  -6048(r30)
0033e0  15061209  dma_cfg r12, r4, r17, 4
0033e4  35000000  dma_run zero
0033e8  630a3fd1  loadli.w r20,  -5992(r30)
0033ec  5b060000  j 48
0033f0  e343afd0  loadli.w r7,  -6060(r30)
0033f4  15867309  dma_cfg r12, r7, r23, 4
0033f8  630a3fd1  loadli.w r20,  -5992(r30)
0033fc  8b132a41  min.s r7, r20, r18
003400  15800204  dma_cfg zero, r5, zero, 2
003404  950dc206  dma_cfg r27, r4, r12, 3
003408  0b221210  add.ul r[5:6], r[5:6], r[2:3]
00340c  9ff3f3ff  addli r7, r7, -1
003410  8b9dcd10  add.s r27, r27, r12
003414  35000000  dma_run zero
003418  bbaf03fe  bneq r7, zero, -24
00341c  9f0a0c00  addli r21, r24, 0
003420  1f420000  addli r4, zero, 4
003424  1d100200  unlock r4
003428  1f321000  addli r4, zero, 11
00342c  7d000200  xsignal r4, 0
003430  1f150500  addli r10, r10, 1
003434  63024fd1  loadli.w r4,  -5984(r30)
003438  bb0c45fe  bneq r10, r4, -224
00343c  9f1a0000  addli r21, zero, 1
003440  1f050000  addli r10, zero, 0
003444  dbe2ffff  j -236
003448  e3006fcf  loadli.w r1,  -6224(r30)
00344c  6301bfcf  loadli.w r2,  -6184(r30)
003450  9ba01000  xori r1, r1, 1
003454  97902000  or r1, r1, r2
003458  3bd00000  bneq r1, zero, 20
00345c  e300dfcf  loadli.w r1,  -6168(r30)
003460  9f900000  addli r1, r1, 1
003464  e70e1fce  storeli.w r1, -6168(r30)
003468  db120000  j 148
00346c  37910500  beq r11, zero, 68
003470  e3008fcf  loadli.w r1,  -6208(r30)
003474  6301efcf  loadli.w r2,  -6160(r30)
003478  670c0fce  storeli.w zero, -6208(r30)
00347c  8b902010  add.s r1, r1, r2
003480  1f910000  addli r2, r1, 1
003484  db0f0000  j 124
003488  63028fcf  loadli.w r4,  -6208(r30)
00348c  63435fd0  loadli.w r6,  -6100(r30)
003490  37910500  beq r11, zero, 68
003494  e301efcf  loadli.w r3,  -6160(r30)
003498  8b113210  add.s r3, r4, r3
00349c  1f020000  addli r4, zero, 0
0034a0  9f920100  addli r5, r3, 1
0034a4  9f112000  addli r3, zero, 17
0034a8  3ffd72fd  blt.s r5, r23, -1188
0034ac  db69ffff  j -1204
0034b0  e3407fcf  loadli.w r1,  -6212(r30)
0034b4  63018fcf  loadli.w r2,  -6208(r30)
0034b8  93001106  setle.u r1, r2, r1
0034bc  bbe00000  bneq r1, zero, 56
0034c0  6301efcf  loadli.w r2,  -6160(r30)
0034c4  9f102000  addli r1, zero, 17
0034c8  1f110100  addli r2, r2, 1
0034cc  3f217101  blt.s r2, r23, 72
0034d0  5b070000  j 56
0034d4  e3417fcf  loadli.w r3,  -6212(r30)
0034d8  93013206  setle.u r3, r4, r3
0034dc  bbad0100  bneq r3, zero, 872
0034e0  e302efcf  loadli.w r5,  -6160(r30)
0034e4  9f920200  addli r5, r5, 1
0034e8  9f112000  addli r3, zero, 17
0034ec  3fec72fd  blt.s r5, r23, -1256
0034f0  5b61ffff  j -1272
0034f4  1f110100  addli r2, r2, 1
0034f8  670c2fce  storeli.w r2, -6208(r30)
0034fc  6301efcf  loadli.w r2,  -6160(r30)
003500  9f102000  addli r1, zero, 17
003504  3f407101  blt.s r2, r23, 16
003508  7d900000  xwait r1, 0
00350c  1f71f1ff  addli r2, r2, -1
003510  bb6f01fe  bneq r2, zero, -8
003514  e3006fd0  loadli.w r1,  -6096(r30)
003518  bffb7001  blt.s r1, r23, 764
00351c  9f820000  addli r5, r1, 0
003520  9f703700  addli r1, r14, 31
003524  1f024000  addli r4, zero, 32
003528  e3410fd1  loadli.w r3,  -6012(r30)
00352c  63035fd0  loadli.w r6,  -6104(r30)
003530  1f8c0a00  addli r24, r21, 0
003534  1f010000  addli r2, zero, 0
003538  1f0a0000  addli r20, zero, 0
00353c  0b9b4030  div.s r22, r1, r4
003540  9b301700  slli r1, r14, 1
003544  1ff2f2ff  addli r4, r5, -1
003548  9bf11100  setlti r3, r3, 1
00354c  9b8de003  andi r27, r1, 62
003550  e3003fce  loadli.w r1,  -6376(r30)
003554  e7044fd0  storeli.w r4, -6072(r30)
003558  97903000  or r1, r1, r3
00355c  e7421fd0  storeli.w r1, -6100(r30)
003560  db030000  j 28
003564  63467fd0  loadli.w r12,  -6084(r30)
003568  e3006fd0  loadli.w r1,  -6096(r30)
00356c  63031fd1  loadli.w r6,  -6008(r30)
003570  1f1a0a00  addli r20, r20, 1
003574  0b13c318  sub.s r6, r6, r12
003578  375a1a00  beq r20, r1, 660
00357c  e3000fd1  loadli.w r1,  -6016(r30)
003580  8b1aca20  mul.s r21, r20, r12
003584  e7086fd0  storeli.w r6, -6008(r30)
003588  8b905019  sub.s r1, r1, r21
00358c  8b111640  min.s r3, r12, r1
003590  e3405fd0  loadli.w r1,  -6100(r30)
003594  37f50000  beq r1, zero, 348
003598  e3404fd0  loadli.w r1,  -6108(r30)
00359c  63029fd0  loadli.w r4,  -6072(r30)
0035a0  37204a00  beq r20, r4, 8
0035a4  9f000000  addli r1, zero, 0
0035a8  8b905011  add.s r1, r1, r21
0035ac  63421fd1  loadli.w r4,  -6004(r30)
0035b0  8b903010  add.s r1, r1, r3
0035b4  8b914030  div.s r3, r1, r4
0035b8  cbbe21fe  ble.s r3, r2, -84
0035bc  e3025fd0  loadli.w r5,  -6104(r30)
0035c0  8b102220  mul.s r1, r4, r2
0035c4  e7014fd1  storeli.w r20, -6120(r30)
0035c8  0b931218  sub.s r6, r5, r1
0035cc  db030000  j 28
0035d0  9f202000  addli r1, zero, 18
0035d4  7d800000  xsignal r1, 0
0035d8  63421fd1  loadli.w r4,  -6004(r30)
0035dc  1f110100  addli r2, r2, 1
0035e0  0b134318  sub.s r6, r6, r4
0035e4  37583100  beq r2, r3, 532
0035e8  e3000fd1  loadli.w r1,  -6016(r30)
0035ec  0b164120  mul.s r12, r2, r4
0035f0  8b90c018  sub.s r1, r1, r12
0035f4  0b191240  min.s r18, r4, r1
0035f8  e300ffd0  loadli.w r1,  -6024(r30)
0035fc  8b902011  add.s r1, r1, r18
003600  8b9c3031  div.s r25, r1, r19
003604  3fbf7cff  blt.s r25, r23, -52
003608  e3401fd1  loadli.w r1,  -6004(r30)
00360c  0b9d6040  min.s r26, r1, r6
003610  9f000000  addli r1, zero, 0
003614  db080000  j 68
003618  15800204  dma_cfg zero, r5, zero, 2
00361c  9508c207  dma_cfg r17, r4, r28, 3
003620  63423fd1  loadli.w r4,  -5988(r30)
003624  9f020001  addli r5, zero, 128
003628  9502720a  dma_cfg r5, r4, r7, 5
00362c  63429fd1  loadli.w r4,  -5940(r30)
003630  15026e09  dma_cfg r4, r28, r22, 4
003634  1500b011  dma_cfg zero, zero, r27, 8
003638  35000000  dma_run zero
00363c  1500700b  dma_cfg zero, zero, r23, 5
003640  15000010  dma_cfg zero, zero, zero, 8
003644  1f420000  addli r4, zero, 4
003648  1d100200  unlock r4
00364c  9f900000  addli r1, r1, 1
003650  0b1d3d19  sub.s r26, r26, r19
003654  b7fd90ff  beq r1, r25, -132
003658  b7df05fe  beq r11, zero, -12
00365c  bf4f77ff  blt.s r14, r23, -16
003660  0b923021  mul.s r4, r1, r19
003664  8b124918  sub.s r5, r18, r4
003668  8b935940  min.s r7, r19, r5
00366c  bf8f73ff  blt.s r7, r23, -32
003670  9f420000  addli r5, zero, 4
003674  1d800200  lock zero, r5
003678  0b12c210  add.s r4, r4, r12
00367c  e3427fd1  loadli.w r5,  -5956(r30)
003680  8b125220  mul.s r5, r4, r5
003684  1b327200  slli r4, r4, 7
003688  339a422b  .word 0x2b429a33
00368c  8b18d210  add.s r17, r4, r13
003690  17327a03  sll.d r[5:6], r[21:22], r23
003694  630a8fd1  loadli.w r20,  -5952(r30)
003698  15804b01  dma_cfg zero, r23, r20, 0
00369c  950b0002  dma_cfg r23, zero, zero, 1
0036a0  1f00afd1  addli zero, r30, -5936
0036a4  6b5a0000  load.d r[21:22], 0(zero)
0036a8  17200000  xor zero, zero, zero
0036ac  0b224a10  add.ul r[5:6], r[21:22], r[5:6]
0036b0  634abfd1  loadli.w r20,  -5924(r30)
0036b4  3f207a01  blt.s r20, r23, 8
0036b8  5becffff  j -160
0036bc  8b93a941  min.s r7, r19, r26
0036c0  634a9fd1  loadli.w r20,  -5940(r30)
0036c4  150a6e09  dma_cfg r20, r28, r22, 4
0036c8  1500b011  dma_cfg zero, zero, r27, 8
0036cc  8b930358  neg.s r7, r7
0036d0  15800204  dma_cfg zero, r5, zero, 2
0036d4  9508c207  dma_cfg r17, r4, r28, 3
0036d8  9f880801  addli r17, r17, 128
0036dc  9f930300  addli r7, r7, 1
0036e0  0b228210  add.ul r[5:6], r[5:6], r[9:10]
0036e4  35000000  dma_run zero
0036e8  bbaf03fe  bneq r7, zero, -24
0036ec  5beaffff  j -176
0036f0  e300dfd0  loadli.w r1,  -6040(r30)
0036f4  0b136640  min.s r6, r12, r6
0036f8  1f060000  addli r12, zero, 0
0036fc  8b901a20  mul.s r1, r21, r1
003700  3392402a  .word 0x2a409233
003704  9f002fd0  addli r1, r30, -6128
003708  ebd80000  load.d r[18:19], 0(r1)
00370c  17327203  sll.d r[5:6], r[5:6], r23
003710  8bac4810  add.ul r[26:27], r[18:19], r[5:6]
003714  5b020000  j 16
003718  e3400fd1  loadli.w r1,  -6012(r30)
00371c  1f160600  addli r12, r12, 1
003720  b76916fe  beq r12, r1, -392
003724  9b00fc0f  andi r1, r24, 255
003728  37b00000  beq r1, zero, 12
00372c  9f201000  addli r1, zero, 10
003730  7d900000  xwait r1, 0
003734  bf927101  blt.s r3, r23, 164
003738  63022fd1  loadli.w r4,  -6000(r30)
00373c  e3402fd1  loadli.w r1,  -5996(r30)
003740  8b124620  mul.s r5, r12, r4
003744  8b905018  sub.s r1, r1, r5
003748  0b121240  min.s r4, r4, r1
00374c  3f327201  blt.s r4, r23, 140
003750  e3007fd1  loadli.w r1,  -5960(r30)
003754  b398122b  .word 0x2b1298b3
003758  9f420000  addli r5, zero, 4
00375c  1b321200  slli r4, r4, 1
003760  97b87803  sll.d r[18:19], r[18:19], r23
003764  8b131538  mod.s r7, r10, r1
003768  e3005fd1  loadli.w r1,  -5976(r30)
00376c  1d800200  lock zero, r5
003770  e342cfd0  loadli.w r5,  -6044(r30)
003774  958b5b00  dma_cfg r23, r23, r5, 0
003778  e3026fd1  loadli.w r5,  -5968(r30)
00377c  950b0002  dma_cfg r23, zero, zero, 1
003780  8ba81c11  add.ul r[18:19], r[26:27], r[18:19]
003784  8b905350  fmac.s r1, r7, r5
003788  e302dfd0  loadli.w r5,  -6040(r30)
00378c  3ff07201  blt.s r5, r23, 28
003790  15000904  dma_cfg zero, r18, zero, 2
003794  95804806  dma_cfg r1, r17, r4, 3
003798  e340bfd0  loadli.w r1,  -6052(r30)
00379c  15823008  dma_cfg r4, r1, r3, 4
0037a0  35000000  dma_run zero
0037a4  db050000  j 44
0037a8  e3028fd0  loadli.w r5,  -6080(r30)
0037ac  15827209  dma_cfg r4, r5, r23, 4
0037b0  9f020300  addli r5, r6, 0
0037b4  15000904  dma_cfg zero, r18, zero, 2
0037b8  95804806  dma_cfg r1, r17, r4, 3
0037bc  8ba8f810  add.ul r[18:19], r[18:19], r[16:17]
0037c0  9ff2f2ff  addli r5, r5, -1
0037c4  8b904010  add.s r1, r1, r4
0037c8  35000000  dma_run zero
0037cc  bbaf02fe  bneq r5, zero, -24
0037d0  9f400000  addli r1, zero, 4
0037d4  1d900000  unlock r1
0037d8  9f301000  addli r1, zero, 11
0037dc  7d800000  xsignal r1, 0
0037e0  1f150500  addli r10, r10, 1
0037e4  e3004fd1  loadli.w r1,  -5984(r30)
0037e8  bb4c15fe  bneq r10, r1, -208
0037ec  1f1c0000  addli r24, zero, 1
0037f0  1f050000  addli r10, zero, 0
0037f4  dbe4ffff  j -220
0037f8  63467fd0  loadli.w r12,  -6084(r30)
0037fc  e3006fd0  loadli.w r1,  -6096(r30)
003800  630a3fd0  loadli.w r20,  -6120(r30)
003804  1f810100  addli r2, r3, 0
003808  dbacffff  j -668
00380c  630a3fd1  loadli.w r20,  -5992(r30)
003810  9f0a0c00  addli r21, r24, 0
003814  e347bfcf  loadli.w r15,  -6180(r30)
003818  e3463fcf  loadli.w r13,  -6244(r30)
00381c  6301ffce  loadli.w r2,  -6280(r30)
003820  e304cfcf  loadli.w r9,  -6176(r30)
003824  e3450fcf  loadli.w r11,  -6268(r30)
003828  6307bfce  loadli.w r14,  -6312(r30)
00382c  9380d700  seteq r1, r15, r13
003830  97001100  and r1, r2, r1
003834  bb9e70f9  bneq r1, r23, -3164
003838  9f300000  addli r1, zero, 3
00383c  7d900000  xwait r1, 0
003840  5b73feff  j -3176
003844  e302efcf  loadli.w r5,  -6160(r30)
003848  1f120200  addli r4, r4, 1
00384c  9f112000  addli r3, zero, 17
003850  bfde72fb  blt.s r5, r23, -2124
003854  dbf4feff  j -2140
003858  9f8c0a00  addli r25, r21, 0
00385c  e30acfcd  loadli.w r21,  -6432(r30)
003860  634bbfcd  loadli.w r22,  -6436(r30)
003864  e3439fcd  loadli.w r7,  -6452(r30)
003868  e302bfcd  loadli.w r5,  -6440(r30)
00386c  6343afcd  loadli.w r6,  -6444(r30)
003870  9f870600  addli r15, r13, 0
003874  1f810000  addli r2, r1, 0
003878  670f2fce  storeli.w r2, -6160(r30)
00387c  abf0ffff  lui r1, 1048575
003880  9b90f0ff  ori r1, r1, 4095
003884  e70b1fce  storeli.w r1, -6216(r30)
003888  bfa5b0f8  blt.s r1, r11, -3736
00388c  e3006fcd  loadli.w r1,  -6480(r30)
003890  e70b1fce  storeli.w r1, -6216(r30)
003894  db2bfeff  j -3748
003898  e306afcd  loadli.w r13,  -6448(r30)
00389c  634cdfcc  loadli.w r24,  -6548(r30)
0038a0  6303cfcc  loadli.w r6,  -6560(r30)
0038a4  e342cfcc  loadli.w r5,  -6556(r30)
0038a8  6302dfcc  loadli.w r4,  -6552(r30)
0038ac  63418fcf  loadli.w r2,  -6204(r30)
0038b0  e341bfcc  loadli.w r3,  -6564(r30)
0038b4  abf0ffff  lui r1, 1048575
0038b8  9b90f0ff  ori r1, r1, 4095
0038bc  3fbf70f6  blt.s r1, r7, -4148
0038c0  9f000200  addli r1, r4, 0
0038c4  dbf8fdff  j -4156
0038c8  1f810200  addli r2, r5, 0
0038cc  e3072fce  loadli.w r15,  -6384(r30)
0038d0  634d2fcc  loadli.w r26,  -6636(r30)
0038d4  e302bfcb  loadli.w r5,  -6696(r30)
0038d8  1f070400  addli r14, r8, 0
0038dc  9f800600  addli r1, r13, 0
0038e0  abf1ffff  lui r3, 1048575
0038e4  1b92f1ff  ori r4, r3, 4095
0038e8  e3013fcc  loadli.w r3,  -6632(r30)
0038ec  67414fcc  storeli.w r4, -6636(r30)
0038f0  bf5e32f4  blt.s r4, r3, -5196
0038f4  e341afcb  loadli.w r3,  -6700(r30)
0038f8  67413fcc  storeli.w r3, -6636(r30)
0038fc  5b75fdff  j -5208
003900  9f010000  addli r3, zero, 0
003904  b383712e  .word 0x2e7183b3
003908  13267a00  seteq.d r12, r[21:22], r[8:9]
00390c  e3034f01  loadli.w r7,  160(r30)
003910  37a03300  beq r7, r3, 8
003914  9f040200  addli r9, r4, 0
003918  3b200600  bneq r12, zero, 8
00391c  9f810400  addli r3, r9, 0
003920  1f021fda  addli r4, r30, -4856
003924  73304201  store.d r[21:22], 0(r4)
003928  3b270604  bneq r12, zero, 2504
00392c  63024f01  loadli.w r4,  160(r30)
003930  9f130000  addli r7, zero, 1
003934  bb767204  bneq r4, r7, 2492
003938  b7e60104  beq r3, zero, 2488
00393c  1f020002  addli r4, zero, 256
003940  67003fda  storeli.w r3, -4864(r30)
003944  1f061fda  addli r12, r30, -4856
003948  00a00000  mfence { lm }
00394c  8b914140  min.s r3, r3, r4
003950  1f020fda  addli r4, r30, -4864
003954  eb530600  load.d r[8:9], 0(r12)
003958  ab0400f0  lui r9, 983040
00395c  9bb12100  slli r3, r3, 2
003960  1f022200  addli r4, r4, 16
003964  97919100  or r3, r3, r9
003968  ffa14300  l_gm2lm r3, r4, 0(r[8:9])
00396c  b3013028  .word 0x283001b3
003970  9f032fe2  addli r7, r30, -3824
003974  00a00200  mfence { lm, gm }
003978  73b03300  store.d r[4:5], 0(r7)
00397c  5b2f0100  j 2424
003980  e3005f01  loadli.w r1,  168(r30)
003984  e34c1fd1  loadli.w r25,  -6004(r30)
003988  670e0fd0  storeli.w zero, -5920(r30)
00398c  e7410fe2  storeli.w zero, -3812(r30)
003990  bb910000  bneq r1, zero, 100
003994  b3001028  .word 0x281000b3
003998  93201500  seteq.d r1, r[11:12], r[2:3]
00399c  bb800000  bneq r1, zero, 32
0039a0  00a00000  mfence { lm }
0039a4  9f006000  addli r1, zero, 48
0039a8  2b0100f0  lui r2, 983040
0039ac  9f010fda  addli r3, r30, -4864
0039b0  97902000  or r1, r1, r2
0039b4  ff203500  l_gm2lm r1, r3, 0(r[11:12])
0039b8  00a00200  mfence { lm, gm }
0039bc  9f024fd1  addli r5, r30, -5984
0039c0  b3001028  .word 0x281000b3
0039c4  ebd10200  load.d r[4:5], 0(r5)
0039c8  93a01100  seteq.d r1, r[4:5], r[2:3]
0039cc  bba00000  bneq r1, zero, 40
0039d0  00a00000  mfence { lm }
0039d4  9f006000  addli r1, zero, 48
0039d8  2b0100f0  lui r2, 983040
0039dc  9f010fda  addli r3, r30, -4864
0039e0  97902000  or r1, r1, r2
0039e4  1f014fd1  addli r2, r30, -5984
0039e8  6b520100  load.d r[5:6], 0(r2)
0039ec  ff203200  l_gm2lm r1, r3, 0(r[5:6])
0039f0  00a00200  mfence { lm, gm }
0039f4  6341cfcb  loadli.w r2,  -6684(r30)
0039f8  9f100000  addli r1, zero, 1
0039fc  bf7b110e  blt.s r2, r1, 7932
003a00  6303af02  loadli.w r6,  336(r30)
003a04  63069f02  loadli.w r12,  328(r30)
003a08  e3454f03  loadli.w r11,  420(r30)
003a0c  e303ef01  loadli.w r7,  240(r30)
003a10  63051f02  loadli.w r10,  264(r30)
003a14  63471f02  loadli.w r14,  268(r30)
003a18  63022f02  loadli.w r4,  272(r30)
003a1c  e3025f02  loadli.w r5,  296(r30)
003a20  e3410f02  loadli.w r3,  260(r30)
003a24  6341ff01  loadli.w r2,  252(r30)
003a28  e3040f02  loadli.w r9,  256(r30)
003a2c  63445f02  loadli.w r8,  300(r30)
003a30  1f090000  addli r18, zero, 0
003a34  1f0b0000  addli r22, zero, 0
003a38  1f080000  addli r16, zero, 0
003a3c  9f0b0000  addli r23, zero, 0
003a40  9f080000  addli r17, zero, 0
003a44  1f0c8000  addli r24, zero, 64
003a48  9f7d3000  addli r27, zero, 31
003a4c  1f4e2000  addli r28, zero, 20
003a50  670c0fce  storeli.w zero, -6208(r30)
003a54  e7020fd0  storeli.w zero, -6104(r30)
003a58  0b136640  min.s r6, r12, r6
003a5c  9bf51500  setlti r11, r11, 1
003a60  9ff1f1ff  addli r3, r3, -1
003a64  1f71f1ff  addli r2, r2, -1
003a68  1f060900  addli r12, r18, 0
003a6c  67096fd0  storeli.w r6, -6000(r30)
003a70  0b13e520  mul.s r6, r10, r14
003a74  0b95f340  min.s r10, r7, r15
003a78  8b13e220  mul.s r7, r4, r14
003a7c  674dbfce  storeli.w r11, -6188(r30)
003a80  1ff21200  addli r4, r5, 15
003a84  e70b3fce  storeli.w r3, -6216(r30)
003a88  9ff1f2ff  addli r3, r5, -1
003a8c  670d2fce  storeli.w r2, -6192(r30)
003a90  8b150548  max.s r11, r10, zero
003a94  1f052000  addli r10, zero, 16
003a98  67423fd0  storeli.w r3, -6108(r30)
003a9c  8b967620  mul.s r13, r13, r7
003aa0  0b15a238  mod.s r10, r4, r10
003aa4  674fbfce  storeli.w r11, -6156(r30)
003aa8  8b95b410  add.s r11, r9, r11
003aac  e74bdfce  storeli.w r13, -6212(r30)
003ab0  9f663000  addli r13, zero, 30
003ab4  1ff1f5ff  addli r2, r11, -1
003ab8  0b119130  div.s r2, r2, r9
003abc  8b11a218  sub.s r3, r4, r10
003ac0  67463fd0  storeli.w r3, -6044(r30)
003ac4  9bb17200  slli r3, r5, 7
003ac8  9f120000  addli r5, zero, 1
003acc  e74d3fd0  storeli.w r3, -5924(r30)
003ad0  9f71f4ff  addli r3, r8, -1
003ad4  e7462fd0  storeli.w r2, -6036(r30)
003ad8  1f110000  addli r2, zero, 1
003adc  670d3fd0  storeli.w r3, -5936(r30)
003ae0  9f110000  addli r3, zero, 1
003ae4  670e2fce  storeli.w r2, -6176(r30)
003ae8  1f110000  addli r2, zero, 1
003aec  e7013fd0  storeli.w r3, -6120(r30)
003af0  9f110000  addli r3, zero, 1
003af4  e7093fd0  storeli.w r3, -5992(r30)
003af8  9f110000  addli r3, zero, 1
003afc  e70a3fd0  storeli.w r3, -5976(r30)
003b00  9f110000  addli r3, zero, 1
003b04  e7033fd0  storeli.w r3, -6088(r30)
003b08  e341afcb  loadli.w r3,  -6700(r30)
003b0c  e74d3fce  storeli.w r3, -6180(r30)
003b10  5b0a0000  j 80
003b14  63045fd1  loadli.w r8,  -5976(r30)
003b18  e301cfcf  loadli.w r3,  -6176(r30)
003b1c  63028fcf  loadli.w r4,  -6208(r30)
003b20  8b9b8b18  sub.s r23, r23, r8
003b24  0b140458  neg.s r8, r8
003b28  0b163618  sub.s r12, r12, r3
003b2c  8b910158  neg.s r3, r3
003b30  1f120200  addli r4, r4, 1
003b34  e70a8fd0  storeli.w r8, -5976(r30)
003b38  63047fd0  loadli.w r8,  -6088(r30)
003b3c  670e3fce  storeli.w r3, -6176(r30)
003b40  e341cfcb  loadli.w r3,  -6684(r30)
003b44  670c4fce  storeli.w r4, -6208(r30)
003b48  8b988818  sub.s r17, r17, r8
003b4c  0b140458  neg.s r8, r8
003b50  e7038fd0  storeli.w r8, -6088(r30)
003b54  1f140000  addli r8, zero, 1
003b58  e7028fd0  storeli.w r8, -6104(r30)
003b5c  3776320e  beq r4, r3, 7580
003b60  e341bfcf  loadli.w r3,  -6180(r30)
003b64  b77c3602  beq r12, r3, 1852
003b68  6304cfcb  loadli.w r8,  -6688(r30)
003b6c  e3048fcf  loadli.w r9,  -6208(r30)
003b70  6302afcb  loadli.w r4,  -6704(r30)
003b74  8b918420  mul.s r3, r9, r8
003b78  8b113218  sub.s r3, r4, r3
003b7c  8b113440  min.s r3, r8, r3
003b80  0b920148  max.s r4, r3, zero
003b84  e3017fcf  loadli.w r3,  -6216(r30)
003b88  67084fd0  storeli.w r4, -6016(r30)
003b8c  8b914110  add.s r3, r3, r4
003b90  6342ffcf  loadli.w r4,  -6148(r30)
003b94  0b924130  div.s r4, r3, r4
003b98  e3417fcf  loadli.w r3,  -6212(r30)
003b9c  8b919120  mul.s r3, r3, r9
003ba0  e70f3fce  storeli.w r3, -6152(r30)
003ba4  e341dfd0  loadli.w r3,  -6036(r30)
003ba8  e7424fd0  storeli.w r4, -6100(r30)
003bac  1ff4f1ff  addli r8, r3, -1
003bb0  e70c8fce  storeli.w r8, -6200(r30)
003bb4  1f74f2ff  addli r8, r4, -1
003bb8  0b123220  mul.s r4, r4, r3
003bbc  674c8fce  storeli.w r8, -6204(r30)
003bc0  e70d4fce  storeli.w r4, -6184(r30)
003bc4  db0a0000  j 84
003bc8  e3013fd0  loadli.w r3,  -6120(r30)
003bcc  6306efcf  loadli.w r12,  -6160(r30)
003bd0  6304dfcf  loadli.w r8,  -6168(r30)
003bd4  6302bfcf  loadli.w r4,  -6184(r30)
003bd8  8b910158  neg.s r3, r3
003bdc  1f030400  addli r6, r8, 0
003be0  9f030200  addli r7, r4, 0
003be4  e7013fd0  storeli.w r3, -6120(r30)
003be8  e301cfcf  loadli.w r3,  -6176(r30)
003bec  0b163610  add.s r12, r12, r3
003bf0  e3013fd1  loadli.w r3,  -5992(r30)
003bf4  0b183818  sub.s r16, r16, r3
003bf8  8b910158  neg.s r3, r3
003bfc  e7093fd0  storeli.w r3, -5992(r30)
003c00  e3015fd1  loadli.w r3,  -5976(r30)
003c04  8b9b3b18  sub.s r23, r23, r3
003c08  8b910158  neg.s r3, r3
003c0c  e70a3fd0  storeli.w r3, -5976(r30)
003c10  e341bfcf  loadli.w r3,  -6180(r30)
003c14  370a3602  beq r12, r3, 1664
003c18  93814300  seteq r3, r7, r4
003c1c  6342afcf  loadli.w r4,  -6188(r30)
003c20  97914100  or r3, r3, r4
003c24  bb900100  bneq r3, zero, 36
003c28  63420fd0  loadli.w r4,  -6140(r30)
003c2c  9f014fe2  addli r3, r30, -3808
003c30  abf30000  lui r7, 15
003c34  1f72f2ff  addli r4, r4, -1
003c38  9b93f3ff  ori r7, r7, 4095
003c3c  73907100  store.h r7, 0(r3)
003c40  9fa10100  addli r3, r3, 2
003c44  bb3f02fe  bneq r4, zero, -20
003c48  63426fcc  loadli.w r4,  -6604(r30)
003c4c  e3036fcc  loadli.w r7,  -6608(r30)
003c50  8b114620  mul.s r3, r12, r4
003c54  8b913318  sub.s r3, r7, r3
003c58  8b113240  min.s r3, r4, r3
003c5c  0b920148  max.s r4, r3, zero
003c60  e301afcf  loadli.w r3,  -6192(r30)
003c64  67034fd0  storeli.w r4, -6096(r30)
003c68  8b914110  add.s r3, r3, r4
003c6c  63021fce  loadli.w r4,  -6392(r30)
003c70  0b924130  div.s r4, r3, r4
003c74  e341dfd0  loadli.w r3,  -6036(r30)
003c78  e7004fd0  storeli.w r4, -6136(r30)
003c7c  0b924120  mul.s r4, r3, r4
003c80  e70e4fce  storeli.w r4, -6168(r30)
003c84  b7004300  beq r6, r4, 32
003c88  e301cfd1  loadli.w r3,  -5920(r30)
003c8c  670e0fd0  storeli.w zero, -5920(r30)
003c90  0b1b3b10  add.s r22, r22, r3
003c94  e3413fcc  loadli.w r3,  -6628(r30)
003c98  e7416fe3  storeli.w r22, -3812(r30)
003c9c  8b113240  min.s r3, r4, r3
003ca0  67093fd0  storeli.w r3, -6000(r30)
003ca4  670fcfce  storeli.w r12, -6160(r30)
003ca8  abf1ffff  lui r3, 1048575
003cac  e343dfd0  loadli.w r7,  -6036(r30)
003cb0  63023fd0  loadli.w r4,  -6120(r30)
003cb4  1f030000  addli r6, zero, 0
003cb8  3f304000  blt.s zero, r4, 12
003cbc  63039fcf  loadli.w r6,  -6200(r30)
003cc0  9b93f1ff  ori r7, r3, 4095
003cc4  371c73fe  beq r6, r7, -252
003cc8  67066fd0  storeli.w r6, -6048(r30)
003ccc  abf1ffff  lui r3, 1048575
003cd0  63041fd0  loadli.w r8,  -6136(r30)
003cd4  1f060000  addli r12, zero, 0
003cd8  1b92f1ff  ori r4, r3, 4095
003cdc  bf305600  blt.s r12, r5, 44
003ce0  1f040200  addli r8, r4, 0
003ce4  e3415fd0  loadli.w r3,  -6100(r30)
003ce8  3f202600  blt.s r12, r2, 8
003cec  db040000  j 36
003cf0  9f040600  addli r9, r12, 0
003cf4  bf305600  blt.s r12, r5, 44
003cf8  63021fd0  loadli.w r4,  -6136(r30)
003cfc  9f74f2ff  addli r9, r4, -1
003d00  bf202600  blt.s r12, r2, 40
003d04  5b040000  j 32
003d08  e3415fd0  loadli.w r3,  -6100(r30)
003d0c  bf1f26fe  blt.s r12, r2, -28
003d10  9f010200  addli r3, r4, 0
003d14  9f040600  addli r9, r12, 0
003d18  3f205600  blt.s r12, r5, 8
003d1c  dbfbffff  j -36
003d20  3f202600  blt.s r12, r2, 8
003d24  63468fcf  loadli.w r12,  -6204(r30)
003d28  6342dfd0  loadli.w r4,  -6036(r30)
003d2c  63033fd0  loadli.w r6,  -6120(r30)
003d30  67017fd0  storeli.w r7, -6128(r30)
003d34  67045fd0  storeli.w r5, -6080(r30)
003d38  0b126220  mul.s r4, r4, r6
003d3c  0b924318  sub.s r4, r7, r4
003d40  e7454fd0  storeli.w r4, -6052(r30)
003d44  5b0a0000  j 80
003d48  63038fd0  loadli.w r6,  -6080(r30)
003d4c  e303cfd0  loadli.w r7,  -6048(r30)
003d50  8b120358  neg.s r5, r6
003d54  8b146418  sub.s r9, r8, r6
003d58  63033fd0  loadli.w r6,  -6120(r30)
003d5c  1f040200  addli r8, r4, 0
003d60  63022fd0  loadli.w r4,  -6128(r30)
003d64  67045fd0  storeli.w r5, -6080(r30)
003d68  8b936310  add.s r7, r7, r6
003d6c  63033fd1  loadli.w r6,  -5992(r30)
003d70  67067fd0  storeli.w r7, -6048(r30)
003d74  0b186818  sub.s r16, r16, r6
003d78  0b130358  neg.s r6, r6
003d7c  e7096fd0  storeli.w r6, -5992(r30)
003d80  63035fd1  loadli.w r6,  -5976(r30)
003d84  8b9b6b18  sub.s r23, r23, r6
003d88  0b130358  neg.s r6, r6
003d8c  e70a6fd0  storeli.w r6, -5976(r30)
003d90  b7e843fe  beq r7, r4, -456
003d94  3bf08400  bneq r9, r8, 28
003d98  2bf2ffff  lui r4, 1048575
003d9c  e3028fd0  loadli.w r5,  -6080(r30)
003da0  1b12f2ff  ori r4, r4, 4095
003da4  bf1e52fe  blt.s r4, r5, -92
003da8  63021fd0  loadli.w r4,  -6136(r30)
003dac  dbf3ffff  j -100
003db0  e303cfd0  loadli.w r7,  -6048(r30)
003db4  6343bfd0  loadli.w r6,  -6052(r30)
003db8  e3421fcd  loadli.w r5,  -6516(r30)
003dbc  1f850100  addli r10, r3, 0
003dc0  670b2fd0  storeli.w r2, -5968(r30)
003dc4  e7438fd0  storeli.w r8, -6084(r30)
003dc8  13836302  setneq r6, r7, r6
003dcc  0b925320  mul.s r4, r7, r5
003dd0  67456fd0  storeli.w r6, -6060(r30)
003dd4  6343efcf  loadli.w r6,  -6156(r30)
003dd8  0b124318  sub.s r4, r6, r4
003ddc  0b924240  min.s r4, r5, r4
003de0  e302ffcf  loadli.w r5,  -6152(r30)
003de4  0b120248  max.s r4, r4, zero
003de8  8b925310  add.s r5, r7, r5
003dec  67434fd0  storeli.w r4, -6092(r30)
003df0  67075fd0  storeli.w r5, -6032(r30)
003df4  5b090000  j 72
003df8  63026fd1  loadli.w r4,  -5968(r30)
003dfc  e3448fd0  loadli.w r9,  -6076(r30)
003e00  e3089fd0  loadli.w r17,  -6072(r30)
003e04  63447fd0  loadli.w r8,  -6084(r30)
003e08  0b110258  neg.s r2, r4
003e0c  0b164518  sub.s r12, r10, r4
003e10  63028fd0  loadli.w r4,  -6080(r30)
003e14  1f850100  addli r10, r3, 0
003e18  670b2fd0  storeli.w r2, -5968(r30)
003e1c  8b944410  add.s r9, r9, r4
003e20  63025fd1  loadli.w r4,  -5976(r30)
003e24  8b9b4b18  sub.s r23, r23, r4
003e28  0b120258  neg.s r4, r4
003e2c  e70a4fd0  storeli.w r4, -5976(r30)
003e30  63027fd0  loadli.w r4,  -6088(r30)
003e34  8b984810  add.s r17, r17, r4
003e38  b78d84fe  beq r9, r8, -160
003e3c  e7041fd1  storeli.w r17, -6072(r30)
003e40  67449fd0  storeli.w r9, -6076(r30)
003e44  3b70a600  bneq r12, r10, 28
003e48  2bf1ffff  lui r2, 1048575
003e4c  9b11f1ff  ori r3, r2, 4095
003e50  63016fd1  loadli.w r2,  -5968(r30)
003e54  bf9e21fe  blt.s r3, r2, -92
003e58  e3415fd0  loadli.w r3,  -6100(r30)
003e5c  dbf3ffff  j -100
003e60  63430fce  loadli.w r6,  -6396(r30)
003e64  63429fcf  loadli.w r4,  -6196(r30)
003e68  e3436fd0  loadli.w r7,  -6092(r30)
003e6c  e3021fce  loadli.w r5,  -6392(r30)
003e70  670aafd0  storeli.w r10, -5984(r30)
003e74  0b916838  mod.s r2, r17, r6
003e78  0b9a4330  div.s r20, r7, r4
003e7c  8b915420  mul.s r3, r9, r5
003e80  9f030b00  addli r7, r22, 0
003e84  0b116110  add.s r2, r2, r6
003e88  9b04fa03  andi r9, r20, 63
003e8c  0b126138  mod.s r4, r2, r6
003e90  63016fd0  loadli.w r2,  -6096(r30)
003e94  63034fcf  loadli.w r6,  -6240(r30)
003e98  0b113118  sub.s r2, r2, r3
003e9c  e3415fcf  loadli.w r3,  -6228(r30)
003ea0  0b912240  min.s r2, r5, r2
003ea4  8b113238  mod.s r3, r4, r3
003ea8  1f72faff  addli r4, r20, -1
003eac  8b120148  max.s r5, r2, zero
003eb0  e7064fd0  storeli.w r4, -6040(r30)
003eb4  1f620000  addli r4, zero, 6
003eb8  9bb78200  slli r15, r5, 8
003ebc  17594a00  sra r18, r20, r4
003ec0  1bb25200  slli r4, r5, 5
003ec4  670c4fd0  storeli.w r4, -5952(r30)
003ec8  63424fd0  loadli.w r4,  -6108(r30)
003ecc  0b125210  add.s r4, r4, r5
003ed0  e7074fd0  storeli.w r4, -6024(r30)
003ed4  63025fcf  loadli.w r4,  -6232(r30)
003ed8  0b934150  fmac.s r6, r3, r4
003edc  e3015fd0  loadli.w r3,  -6104(r30)
003ee0  e74c6fd0  storeli.w r6, -5940(r30)
003ee4  db090000  j 76
003ee8  9f511000  addli r3, zero, 13
003eec  7d800100  xsignal r3, 0
003ef0  9f030000  addli r7, zero, 0
003ef4  1f0b0000  addli r22, zero, 0
003ef8  9f663000  addli r13, zero, 30
003efc  9f711000  addli r3, zero, 15
003f00  7d800100  xsignal r3, 0
003f04  63487fd1  loadli.w r16,  -5956(r30)
003f08  e30b7fd1  loadli.w r23,  -5960(r30)
003f0c  63054fd1  loadli.w r10,  -5984(r30)
003f10  e3016fd1  loadli.w r3,  -5968(r30)
003f14  0b163610  add.s r12, r12, r3
003f18  e3013fd1  loadli.w r3,  -5992(r30)
003f1c  0b183810  add.s r16, r16, r3
003f20  e3015fd1  loadli.w r3,  -5976(r30)
003f24  8b9b3b10  add.s r23, r23, r3
003f28  9f110000  addli r3, zero, 1
003f2c  377ca6fe  beq r12, r10, -228
003f30  63030fd0  loadli.w r6,  -6144(r30)
003f34  0b926b38  mod.s r4, r23, r6
003f38  0b126210  add.s r4, r4, r6
003f3c  0b136238  mod.s r6, r4, r6
003f40  1f020000  addli r4, zero, 0
003f44  bf700300  blt.s r6, zero, 60
003f48  63440fd0  loadli.w r8,  -6140(r30)
003f4c  cb506400  ble.s r8, r6, 52
003f50  1b321300  slli r4, r6, 1
003f54  1f044fe2  addli r8, r30, -3808
003f58  6305efd0  loadli.w r10,  -6032(r30)
003f5c  e345dfd0  loadli.w r11,  -6036(r30)
003f60  0b144410  add.s r8, r8, r4
003f64  0b15b650  fmac.s r10, r12, r11
003f68  6b320400  load.hu r4, 0(r8)
003f6c  3b304500  bneq r10, r4, 12
003f70  1f020000  addli r4, zero, 0
003f74  db010000  j 12
003f78  1f120000  addli r4, zero, 1
003f7c  7310a400  store.h r10, 0(r8)
003f80  6304cfd1  loadli.w r8,  -5920(r30)
003f84  63052fd1  loadli.w r10,  -6000(r30)
003f88  1305a404  setlt.u r10, r8, r10
003f8c  3b200500  bneq r10, zero, 8
003f90  1f840300  addli r8, r7, 0
003f94  9f03cfd1  addli r7, r30, -5920
003f98  3b200500  bneq r10, zero, 8
003f9c  9f433fe2  addli r7, r30, -3812
003fa0  1f140400  addli r8, r8, 1
003fa4  67808300  storeli.w r8, 0(r7)
003fa8  e3433fe2  loadli.w r7,  -3812(r30)
003fac  3fc01300  blt.s r7, r1, 16
003fb0  7d900600  xwait r13, 0
003fb4  9ff3f3ff  addli r7, r7, -1
003fb8  bbef03fe  bneq r7, zero, -8
003fbc  63440fd1  loadli.w r8,  -6012(r30)
003fc0  63450fd0  loadli.w r10,  -6140(r30)
003fc4  e345ffcf  loadli.w r11,  -6148(r30)
003fc8  9b8a1100  andi r21, r3, 1
003fcc  e3411fd0  loadli.w r3,  -6132(r30)
003fd0  e7410fe2  storeli.w zero, -3812(r30)
003fd4  e74b0fd1  storeli.w r16, -5956(r30)
003fd8  e70b7fd1  storeli.w r23, -5960(r30)
003fdc  8b138838  mod.s r7, r16, r8
003fe0  0b13a338  mod.s r6, r6, r10
003fe4  63050fd1  loadli.w r10,  -6016(r30)
003fe8  8b938310  add.s r7, r7, r8
003fec  8b938338  mod.s r7, r7, r8
003ff0  0b14b620  mul.s r8, r12, r11
003ff4  0b148518  sub.s r8, r10, r8
003ff8  63453fd1  loadli.w r10,  -5988(r30)
003ffc  0b948540  min.s r8, r11, r8
004000  0b1b0448  max.s r22, r8, zero
004004  63442fd1  loadli.w r8,  -5996(r30)
004008  8b93a338  mod.s r7, r7, r10
00400c  8b188320  mul.s r17, r6, r8
004010  63031fd1  loadli.w r6,  -6008(r30)
004014  8b966320  mul.s r13, r7, r6
004018  37f01100  beq r3, r1, 28
00401c  1f330000  addli r6, zero, 3
004020  b7f46100  beq r3, r6, 316
004024  1f230000  addli r6, zero, 2
004028  3ba56100  bneq r3, r6, 328
00402c  e341afd0  loadli.w r3,  -6060(r30)
004030  17023200  and r4, r4, r3
004034  b7740200  beq r4, zero, 316
004038  6302bfd0  loadli.w r4,  -6056(r30)
00403c  e301dfd0  loadli.w r3,  -6040(r30)
004040  8b914110  add.s r3, r3, r4
004044  8b914130  div.s r3, r3, r4
004048  bf8a11fe  blt.s r3, r1, -352
00404c  6303bfd0  loadli.w r6,  -6056(r30)
004050  1b321b00  slli r4, r22, 1
004054  9f032000  addli r7, zero, 16
004058  1f727200  addli r4, r4, 63
00405c  1f731300  addli r6, r6, 15
004060  0b148239  mod.s r8, r4, r24
004064  8b137338  mod.s r7, r6, r7
004068  0b137318  sub.s r6, r6, r7
00406c  8b138218  sub.s r7, r4, r8
004070  0b127320  mul.s r4, r6, r7
004074  1bb36300  slli r6, r7, 6
004078  9f030000  addli r7, zero, 0
00407c  db030000  j 28
004080  1d900000  unlock r1
004084  7d800d00  xsignal r27, 0
004088  7d000e00  xsignal r28, 0
00408c  9f930300  addli r7, r7, 1
004090  8b984810  add.s r17, r17, r4
004094  37d933fe  beq r7, r3, -428
004098  1f641000  addli r8, zero, 14
00409c  7d100400  xwait r8, 0
0040a0  1f042000  addli r8, zero, 16
0040a4  7d100400  xwait r8, 0
0040a8  1f342000  addli r8, zero, 19
0040ac  7d100400  xwait r8, 0
0040b0  3f5f11fe  blt.s r2, r1, -44
0040b4  6307bfd0  loadli.w r14,  -6056(r30)
0040b8  1f054000  addli r10, zero, 32
0040bc  1d800000  lock zero, r1
0040c0  09805004  mm_cfg zero, r1, r5, 2
0040c4  090c5b00  mm_cfg r24, r22, r5, 0
0040c8  63088fd1  loadli.w r16,  -5952(r30)
0040cc  0b94e320  mul.s r8, r7, r14
0040d0  0b15a430  div.s r10, r8, r10
0040d4  9b355500  slli r11, r10, 5
0040d8  8b15b418  sub.s r11, r8, r11
0040dc  0b148a18  sub.s r8, r20, r8
0040e0  8b15a850  fmac.s r11, r16, r10
0040e4  0b148740  min.s r8, r14, r8
0040e8  1bb52500  slli r10, r11, 2
0040ec  9f650000  addli r11, zero, 6
0040f0  1758b400  sra r16, r8, r11
0040f4  e3459fd1  loadli.w r11,  -5940(r30)
0040f8  0b15b510  add.s r10, r10, r11
0040fc  9b05f403  andi r11, r8, 63
004100  b7c00a00  beq r21, zero, 48
004104  1f870800  addli r14, r17, 0
004108  3f608401  blt.s r8, r24, 24
00410c  2995e60a  mm_acc r10, r13, r14, 5
004110  0b176710  add.s r14, r14, r6
004114  1f78f8ff  addli r16, r16, -1
004118  0b15f510  add.s r10, r10, r15
00411c  bb4f08fe  bneq r16, zero, -16
004120  b78d05fe  beq r11, zero, -160
004124  89055b00  mm_cfg r11, r22, r5, 0
004128  2995e60a  mm_acc r10, r13, r14, 5
00412c  dbeaffff  j -172
004130  9f8b0800  addli r23, r17, 0
004134  3f608401  blt.s r8, r24, 24
004138  2985760b  mm r10, r13, r23, 5
00413c  8b9b6b10  add.s r23, r23, r6
004140  1f78f8ff  addli r16, r16, -1
004144  0b15f510  add.s r10, r10, r15
004148  bb4f08fe  bneq r16, zero, -16
00414c  b7dc05fe  beq r11, zero, -204
004150  89055b00  mm_cfg r11, r22, r5, 0
004154  2985760b  mm r10, r13, r23, 5
004158  5be5ffff  j -216
00415c  e301cfd0  loadli.w r3,  -6048(r30)
004160  6343bfd0  loadli.w r6,  -6052(r30)
004164  93816100  seteq r3, r3, r6
004168  17824100  and r4, r3, r4
00416c  3b3b02fe  bneq r4, zero, -308
004170  e301ffd0  loadli.w r3,  -6024(r30)
004174  8b959131  div.s r11, r3, r25
004178  bfc515fe  blt.s r11, r1, -656
00417c  9b311b00  slli r3, r22, 1
004180  e34b9fd1  loadli.w r23,  -5940(r30)
004184  1f050000  addli r10, zero, 0
004188  1f080000  addli r16, zero, 0
00418c  1ff3f5ff  addli r6, r11, -1
004190  9ff17100  addli r3, r3, 63
004194  0b928139  mod.s r4, r3, r24
004198  0b924118  sub.s r4, r3, r4
00419c  e341cfd0  loadli.w r3,  -6044(r30)
0041a0  8b113220  mul.s r3, r4, r3
0041a4  1b326200  slli r4, r4, 6
0041a8  db030000  j 28
0041ac  e343bfd1  loadli.w r7,  -5924(r30)
0041b0  e34c1fd1  loadli.w r25,  -6004(r30)
0041b4  8b963610  add.s r13, r13, r3
0041b8  1f180800  addli r16, r16, 1
0041bc  8b9b7b10  add.s r23, r23, r7
0041c0  b724b8fe  beq r16, r11, -728
0041c4  1f840c00  addli r8, r25, 0
0041c8  9f631000  addli r7, zero, 14
0041cc  7d900300  xwait r7, 0
0041d0  1f072000  addli r14, zero, 16
0041d4  7d100700  xwait r14, 0
0041d8  8b1c8820  mul.s r25, r16, r8
0041dc  8b939219  sub.s r7, r5, r25
0041e0  0b1d7440  min.s r26, r8, r7
0041e4  9f332000  addli r7, zero, 19
0041e8  7d900300  xwait r7, 0
0041ec  bf411d00  blt.s r26, r1, 112
0041f0  1d800000  lock zero, r1
0041f4  09805004  mm_cfg zero, r1, r5, 2
0041f8  090cab01  mm_cfg r24, r22, r26, 0
0041fc  9f830b00  addli r7, r23, 0
004200  1f870800  addli r14, r17, 0
004204  1f040900  addli r8, r18, 0
004208  b7b00a00  beq r21, zero, 44
00420c  3f608a01  blt.s r20, r24, 24
004210  a993e60a  mm_acc r7, r13, r14, 5
004214  0b174710  add.s r14, r14, r4
004218  1f74f4ff  addli r8, r8, -1
00421c  8b93f310  add.s r7, r7, r15
004220  bb4f04fe  bneq r8, zero, -16
004224  b7d00400  beq r9, zero, 52
004228  8904ab01  mm_cfg r9, r22, r26, 0
00422c  a993e60a  mm_acc r7, r13, r14, 5
004230  5b050000  j 40
004234  3f608a01  blt.s r20, r24, 24
004238  a983e60a  mm r7, r13, r14, 5
00423c  0b174710  add.s r14, r14, r4
004240  1f74f4ff  addli r8, r8, -1
004244  8b93f310  add.s r7, r7, r15
004248  bb4f04fe  bneq r8, zero, -16
00424c  37b00400  beq r9, zero, 12
004250  8904ab01  mm_cfg r9, r22, r26, 0
004254  a983e60a  mm r7, r13, r14, 5
004258  1d900000  unlock r1
00425c  e303afd1  loadli.w r7,  -5936(r30)
004260  37206800  beq r16, r6, 8
004264  9f030000  addli r7, zero, 0
004268  8b939311  add.s r7, r7, r25
00426c  8b93a311  add.s r7, r7, r26
004270  8b933331  div.s r7, r7, r19
004274  cbeca3fe  ble.s r7, r10, -200
004278  0b94a318  sub.s r8, r7, r10
00427c  7d800d00  xsignal r27, 0
004280  7d000e00  xsignal r28, 0
004284  1f74f4ff  addli r8, r8, -1
004288  bb5f04fe  bneq r8, zero, -12
00428c  1f850300  addli r10, r7, 0
004290  dbe3ffff  j -228
004294  6346bfcf  loadli.w r12,  -6180(r30)
004298  9f030200  addli r7, r4, 0
00429c  1f030400  addli r6, r8, 0
0042a0  abf1ffff  lui r3, 1048575
0042a4  1b92f1ff  ori r4, r3, 4095
0042a8  e301cfcf  loadli.w r3,  -6176(r30)
0042ac  e74d4fce  storeli.w r4, -6180(r30)
0042b0  bf1132fc  blt.s r4, r3, -1948
0042b4  e341afcb  loadli.w r3,  -6700(r30)
0042b8  e74d3fce  storeli.w r3, -6180(r30)
0042bc  5b0bffff  j -1960
0042c0  b3001028  .word 0x281000b3
0042c4  93201c00  seteq.d r1, r[25:26], r[2:3]
0042c8  3b8e0002  bneq r1, zero, 1920
0042cc  00a00000  mfence { lm }
0042d0  9f400000  addli r1, zero, 4
0042d4  2b0100f0  lui r2, 983040
0042d8  9f010fda  addli r3, r30, -4864
0042dc  97902000  or r1, r1, r2
0042e0  ff203c00  l_gm2lm r1, r3, 0(r[25:26])
0042e4  00a00200  mfence { lm, gm }
0042e8  e3000fda  loadli.w r1,  -4864(r30)
0042ec  5bec0000  j 1888
0042f0  67000fda  storeli.w zero, -4864(r30)
0042f4  e3014f01  loadli.w r3,  160(r30)
0042f8  63467fd0  loadli.w r12,  -6084(r30)
0042fc  bbb00100  bneq r3, zero, 44
004300  b3013028  .word 0x283001b3
004304  93213a00  seteq.d r3, r[21:22], r[4:5]
004308  bb800100  bneq r3, zero, 32
00430c  00a00000  mfence { lm }
004310  9f410000  addli r3, zero, 4
004314  2b0200f0  lui r4, 983040
004318  9f03cfd1  addli r7, r30, -5920
00431c  97914100  or r3, r3, r4
004320  ff217a00  l_gm2lm r3, r7, 0(r[21:22])
004324  00a00200  mfence { lm, gm }
004328  1f028fd1  addli r4, r30, -5952
00432c  e3414f01  loadli.w r3,  164(r30)
004330  6b540200  load.d r[9:10], 0(r4)
004334  bbb00100  bneq r3, zero, 44
004338  b3013028  .word 0x283001b3
00433c  93213400  seteq.d r3, r[9:10], r[4:5]
004340  bb800100  bneq r3, zero, 32
004344  00a00000  mfence { lm }
004348  9f410000  addli r3, zero, 4
00434c  2b0200f0  lui r4, 983040
004350  9f03cfd1  addli r7, r30, -5920
004354  97914100  or r3, r3, r4
004358  ff217400  l_gm2lm r3, r7, 0(r[9:10])
00435c  00a00200  mfence { lm, gm }
004360  b3013028  .word 0x283001b3
004364  93a13200  seteq.d r3, r[6:7], r[4:5]
004368  bb800100  bneq r3, zero, 32
00436c  00a00000  mfence { lm }
004370  9f410000  addli r3, zero, 4
004374  2b0200f0  lui r4, 983040
004378  9f03cfd1  addli r7, r30, -5920
00437c  97914100  or r3, r3, r4
004380  ffa17200  l_gm2lm r3, r7, 0(r[6:7])
004384  00a00200  mfence { lm, gm }
004388  b3013028  .word 0x283001b3
00438c  93213c00  seteq.d r3, r[25:26], r[4:5]
004390  bb800100  bneq r3, zero, 32
004394  00a00000  mfence { lm }
004398  9f410000  addli r3, zero, 4
00439c  2b0200f0  lui r4, 983040
0043a0  9f02cfd1  addli r5, r30, -5920
0043a4  97914100  or r3, r3, r4
0043a8  ff215c00  l_gm2lm r3, r5, 0(r[25:26])
0043ac  00a00200  mfence { lm, gm }
0043b0  e3015f01  loadli.w r3,  168(r30)
0043b4  37920100  beq r3, zero, 132
0043b8  b3013028  .word 0x283001b3
0043bc  93213500  seteq.d r3, r[11:12], r[4:5]
0043c0  bb800100  bneq r3, zero, 32
0043c4  00a00000  mfence { lm }
0043c8  9f410000  addli r3, zero, 4
0043cc  2b0200f0  lui r4, 983040
0043d0  9f02cfd1  addli r5, r30, -5920
0043d4  97914100  or r3, r3, r4
0043d8  ff215500  l_gm2lm r3, r5, 0(r[11:12])
0043dc  00a00200  mfence { lm, gm }
0043e0  9f024fd1  addli r5, r30, -5984
0043e4  b3013028  .word 0x283001b3
0043e8  6bd30200  load.d r[7:8], 0(r5)
0043ec  93213300  seteq.d r3, r[7:8], r[4:5]
0043f0  bb800100  bneq r3, zero, 32
0043f4  00a00000  mfence { lm }
0043f8  9f410000  addli r3, zero, 4
0043fc  2b0200f0  lui r4, 983040
004400  9f02cfd1  addli r5, r30, -5920
004404  97914100  or r3, r3, r4
004408  ff215300  l_gm2lm r3, r5, 0(r[7:8])
00440c  00a00200  mfence { lm, gm }
004410  b3013028  .word 0x283001b3
004414  93a13000  seteq.d r3, r[2:3], r[4:5]
004418  bb800100  bneq r3, zero, 32
00441c  00a00000  mfence { lm }
004420  9f410000  addli r3, zero, 4
004424  2b0200f0  lui r4, 983040
004428  9f02cfd1  addli r5, r30, -5920
00442c  97914100  or r3, r3, r4
004430  ffa15000  l_gm2lm r3, r5, 0(r[2:3])
004434  00a00200  mfence { lm, gm }
004438  6341cfcb  loadli.w r2,  -6684(r30)
00443c  9f100000  addli r1, zero, 1
004440  bf62110a  blt.s r2, r1, 5304
004444  6304ef01  loadli.w r8,  240(r30)
004448  e342ff01  loadli.w r5,  252(r30)
00444c  63050f02  loadli.w r10,  256(r30)
004450  63013f02  loadli.w r2,  280(r30)
004454  e3444f03  loadli.w r9,  420(r30)
004458  63022f02  loadli.w r4,  272(r30)
00445c  e3451f02  loadli.w r11,  268(r30)
004460  63430f02  loadli.w r6,  260(r30)
004464  e3035f02  loadli.w r7,  296(r30)
004468  9f090000  addli r19, zero, 0
00446c  1f090000  addli r18, zero, 0
004470  9f010000  addli r3, zero, 0
004474  1f371000  addli r14, zero, 11
004478  1f282000  addli r16, zero, 18
00447c  9f382000  addli r17, zero, 19
004480  9f1d0000  addli r27, zero, 1
004484  1f1b0000  addli r22, zero, 1
004488  0b14f440  min.s r8, r8, r15
00448c  9ff2f2ff  addli r5, r5, -1
004490  1f71f1ff  addli r2, r2, -1
004494  9bf41400  setlti r9, r9, 1
004498  0b12b220  mul.s r4, r4, r11
00449c  1f73f3ff  addli r6, r6, -1
0044a0  9ff5f3ff  addli r11, r7, -1
0044a4  9f471000  addli r15, zero, 12
0044a8  0b140448  max.s r8, r8, zero
0044ac  e7045fd0  storeli.w r5, -6072(r30)
0044b0  67492fd0  storeli.w r2, -5996(r30)
0044b4  e7459fd0  storeli.w r9, -6052(r30)
0044b8  8b944620  mul.s r9, r13, r4
0044bc  67036fd0  storeli.w r6, -6096(r30)
0044c0  67078fd0  storeli.w r8, -6032(r30)
0044c4  0b148510  add.s r8, r10, r8
0044c8  67439fd0  storeli.w r9, -6092(r30)
0044cc  9f72f4ff  addli r5, r8, -1
0044d0  0b91a230  div.s r2, r5, r10
0044d4  9f120000  addli r5, zero, 1
0044d8  e7085fd0  storeli.w r5, -6008(r30)
0044dc  e342afcb  loadli.w r5,  -6700(r30)
0044e0  67465fd0  storeli.w r5, -6044(r30)
0044e4  e74d2fd0  storeli.w r2, -5924(r30)
0044e8  1f110000  addli r2, zero, 1
0044ec  e7062fd0  storeli.w r2, -6040(r30)
0044f0  1f110000  addli r2, zero, 1
0044f4  5b050000  j 40
0044f8  e302dfd0  loadli.w r5,  -6040(r30)
0044fc  8b916119  sub.s r3, r3, r22
004500  1f190900  addli r18, r18, 1
004504  0b1b0b58  neg.s r22, r22
004508  8b995918  sub.s r19, r19, r5
00450c  8b920258  neg.s r5, r5
004510  e7065fd0  storeli.w r5, -6040(r30)
004514  e342cfcb  loadli.w r5,  -6684(r30)
004518  b70f5908  beq r18, r5, 5088
00451c  e342cfd0  loadli.w r5,  -6044(r30)
004520  37a45902  beq r19, r5, 1288
004524  e303cfcb  loadli.w r7,  -6688(r30)
004528  6303afcb  loadli.w r6,  -6704(r30)
00452c  67042fd1  storeli.w r18, -6080(r30)
004530  8b127920  mul.s r5, r18, r7
004534  8b125318  sub.s r5, r6, r5
004538  6343ffcf  loadli.w r6,  -6148(r30)
00453c  8b925340  min.s r5, r7, r5
004540  0b9c0248  max.s r24, r5, zero
004544  e3026fd0  loadli.w r5,  -6096(r30)
004548  8b928211  add.s r5, r5, r24
00454c  0b936230  div.s r6, r5, r6
004550  e3426fd0  loadli.w r5,  -6092(r30)
004554  8b922221  mul.s r5, r5, r18
004558  e7075fd0  storeli.w r5, -6024(r30)
00455c  e342bfd1  loadli.w r5,  -5924(r30)
004560  670a6fd0  storeli.w r6, -5984(r30)
004564  9ff3f2ff  addli r7, r5, -1
004568  67457fd0  storeli.w r7, -6060(r30)
00456c  9f73f3ff  addli r7, r6, -1
004570  67447fd0  storeli.w r7, -6076(r30)
004574  8b135320  mul.s r7, r6, r5
004578  67067fd0  storeli.w r7, -6048(r30)
00457c  db060000  j 52
004580  63021fd1  loadli.w r4,  -6008(r30)
004584  e349dfd0  loadli.w r19,  -6036(r30)
004588  e303cfd0  loadli.w r7,  -6048(r30)
00458c  e342cfd0  loadli.w r5,  -6044(r30)
004590  8b916119  sub.s r3, r3, r22
004594  0b1b0b58  neg.s r22, r22
004598  0b120258  neg.s r4, r4
00459c  e7084fd0  storeli.w r4, -6008(r30)
0045a0  6302dfd0  loadli.w r4,  -6040(r30)
0045a4  8b994910  add.s r19, r19, r4
0045a8  1f820300  addli r4, r7, 0
0045ac  b7c15902  beq r19, r5, 1136
0045b0  13027200  seteq r4, r4, r7
0045b4  e342bfd0  loadli.w r5,  -6052(r30)
0045b8  17125200  or r4, r4, r5
0045bc  bb100200  bneq r4, zero, 36
0045c0  e3420fd0  loadli.w r5,  -6140(r30)
0045c4  1f024fe2  addli r4, r30, -3808
0045c8  2bf30000  lui r6, 15
0045cc  9ff2f2ff  addli r5, r5, -1
0045d0  1b13f3ff  ori r6, r6, 4095
0045d4  73106200  store.h r6, 0(r4)
0045d8  1f220200  addli r4, r4, 2
0045dc  bbbf02fe  bneq r5, zero, -20
0045e0  2bf2ffff  lui r4, 1048575
0045e4  6344bfd1  loadli.w r8,  -5924(r30)
0045e8  e3021fd1  loadli.w r5,  -6008(r30)
0045ec  9f030000  addli r7, zero, 0
0045f0  3f305000  blt.s zero, r5, 12
0045f4  e343afd0  loadli.w r7,  -6060(r30)
0045f8  1b14f2ff  ori r8, r4, 4095
0045fc  e7463fd1  storeli.w r19, -6036(r30)
004600  378e83fe  beq r7, r8, -128
004604  e3426fcc  loadli.w r5,  -6604(r30)
004608  63036fcc  loadli.w r6,  -6608(r30)
00460c  9f0a0000  addli r21, zero, 0
004610  0b925920  mul.s r4, r19, r5
004614  0b124318  sub.s r4, r6, r4
004618  0b924240  min.s r4, r5, r4
00461c  8b125249  max.s r5, r4, r21
004620  63029fd0  loadli.w r4,  -6072(r30)
004624  e7495fd0  storeli.w r5, -5988(r30)
004628  0b125210  add.s r4, r4, r5
00462c  e3021fce  loadli.w r5,  -6392(r30)
004630  0b135230  div.s r6, r4, r5
004634  2bf2ffff  lui r4, 1048575
004638  9b12f2ff  ori r5, r4, 4095
00463c  9f040300  addli r9, r6, 0
004640  67086fd0  storeli.w r6, -6016(r30)
004644  bfb02a00  blt.s r21, r2, 44
004648  9f840200  addli r9, r5, 0
00464c  63024fd1  loadli.w r4,  -5984(r30)
004650  3fa0ba01  blt.s r21, r27, 8
004654  db040000  j 36
004658  9f860a00  addli r13, r21, 0
00465c  bfb02a00  blt.s r21, r2, 44
004660  e3020fd1  loadli.w r5,  -6016(r30)
004664  9ff6f2ff  addli r13, r5, -1
004668  bfa0ba01  blt.s r21, r27, 40
00466c  5b040000  j 32
004670  63024fd1  loadli.w r4,  -5984(r30)
004674  bf9fbaff  blt.s r21, r27, -28
004678  1f820200  addli r4, r5, 0
00467c  9f860a00  addli r13, r21, 0
004680  3fa02a00  blt.s r21, r2, 8
004684  dbfbffff  j -36
004688  3fa0ba01  blt.s r21, r27, 8
00468c  e34a8fd0  loadli.w r21,  -6076(r30)
004690  e342bfd1  loadli.w r5,  -5924(r30)
004694  63031fd1  loadli.w r6,  -6008(r30)
004698  670c2fd0  storeli.w r2, -5952(r30)
00469c  67488fd0  storeli.w r8, -6012(r30)
0046a0  8b926220  mul.s r5, r5, r6
0046a4  8b125418  sub.s r5, r8, r5
0046a8  670b5fd0  storeli.w r5, -5968(r30)
0046ac  db060000  j 52
0046b0  63038fd1  loadli.w r6,  -5952(r30)
0046b4  e3037fd1  loadli.w r7,  -5960(r30)
0046b8  63440fd1  loadli.w r8,  -6012(r30)
0046bc  8b916119  sub.s r3, r3, r22
0046c0  0b1b0b58  neg.s r22, r22
0046c4  0b110358  neg.s r2, r6
0046c8  8b966418  sub.s r13, r9, r6
0046cc  63031fd1  loadli.w r6,  -6008(r30)
0046d0  9f840200  addli r9, r5, 0
0046d4  670c2fd0  storeli.w r2, -5952(r30)
0046d8  8b936310  add.s r7, r7, r6
0046dc  b79a83fe  beq r7, r8, -348
0046e0  e70b7fd0  storeli.w r7, -5960(r30)
0046e4  3bf09600  bneq r13, r9, 28
0046e8  2bf1ffff  lui r2, 1048575
0046ec  9b12f1ff  ori r5, r2, 4095
0046f0  63018fd1  loadli.w r2,  -5952(r30)
0046f4  bffe22fe  blt.s r5, r2, -68
0046f8  e3020fd1  loadli.w r5,  -6016(r30)
0046fc  dbf6ffff  j -76
004700  63036fd1  loadli.w r6,  -5968(r30)
004704  e3421fcd  loadli.w r5,  -6516(r30)
004708  1f840d00  addli r8, r27, 0
00470c  1f050200  addli r10, r4, 0
004710  e74b9fd0  storeli.w r9, -5956(r30)
004714  138e6302  setneq r28, r7, r6
004718  6303efd0  loadli.w r6,  -6032(r30)
00471c  0b915320  mul.s r2, r7, r5
004720  0b112318  sub.s r2, r6, r2
004724  0b912240  min.s r2, r5, r2
004728  e302ffd0  loadli.w r5,  -6024(r30)
00472c  0b110148  max.s r2, r2, zero
004730  8b9b5310  add.s r23, r7, r5
004734  e70a2fd0  storeli.w r2, -5976(r30)
004738  db060000  j 52
00473c  63018fd1  loadli.w r2,  -5952(r30)
004740  e3469fd1  loadli.w r13,  -5940(r30)
004744  8b1d0458  neg.s r27, r8
004748  63467fd0  loadli.w r12,  -6084(r30)
00474c  e3447fd1  loadli.w r9,  -5956(r30)
004750  8b1a8518  sub.s r21, r10, r8
004754  8b916119  sub.s r3, r3, r22
004758  0b1b0b58  neg.s r22, r22
00475c  1f050200  addli r10, r4, 0
004760  1f840d00  addli r8, r27, 0
004764  8b962610  add.s r13, r13, r2
004768  378e96fe  beq r13, r9, -128
00476c  e74cdfd0  storeli.w r13, -5940(r30)
004770  3be0aa00  bneq r21, r10, 24
004774  2bf1ffff  lui r2, 1048575
004778  1b12f1ff  ori r4, r2, 4095
00477c  3f0f82fe  blt.s r4, r8, -64
004780  63024fd1  loadli.w r4,  -5984(r30)
004784  5bf7ffff  j -72
004788  63021fce  loadli.w r4,  -6392(r30)
00478c  e3423fd1  loadli.w r5,  -5988(r30)
004790  63037fd1  loadli.w r6,  -5960(r30)
004794  e3036fd1  loadli.w r7,  -5968(r30)
004798  0b914620  mul.s r2, r13, r4
00479c  13037300  seteq r6, r6, r7
0047a0  0b912218  sub.s r2, r5, r2
0047a4  e3025fd1  loadli.w r5,  -5976(r30)
0047a8  0b112240  min.s r2, r4, r2
0047ac  63429fcf  loadli.w r4,  -6196(r30)
0047b0  8b1c0148  max.s r25, r2, zero
0047b4  63412fd1  loadli.w r2,  -5996(r30)
0047b8  8b9d4230  div.s r27, r5, r4
0047bc  e3027fd0  loadli.w r5,  -6088(r30)
0047c0  670d6fd0  storeli.w r6, -5936(r30)
0047c4  0b119111  add.s r2, r2, r25
0047c8  0b11c130  div.s r2, r2, r12
0047cc  0b925d10  add.s r4, r27, r5
0047d0  1f72f2ff  addli r4, r4, -1
0047d4  0b1a5230  div.s r20, r4, r5
0047d8  13122004  setlt.s r4, zero, r2
0047dc  9f73faff  addli r7, r20, -1
0047e0  97024300  and r5, r6, r4
0047e4  1f72f1ff  addli r4, r2, -1
0047e8  5b020000  j 16
0047ec  8b9a8a10  add.s r21, r21, r8
0047f0  8b916111  add.s r3, r3, r22
0047f4  378eaafe  beq r21, r10, -128
0047f8  e3040fd0  loadli.w r9,  -6144(r30)
0047fc  1f090000  addli r18, zero, 0
004800  0b969138  mod.s r12, r3, r9
004804  0b169610  add.s r12, r12, r9
004808  0b169638  mod.s r12, r12, r9
00480c  bf700600  blt.s r12, zero, 60
004810  e3440fd0  loadli.w r9,  -6140(r30)
004814  cbd0c400  ble.s r9, r12, 52
004818  1b361600  slli r12, r12, 1
00481c  1f034fe2  addli r6, r30, -3808
004820  9f860b00  addli r13, r23, 0
004824  0b16c310  add.s r12, r6, r12
004828  6343bfd1  loadli.w r6,  -5924(r30)
00482c  6b390600  load.hu r18, 0(r12)
004830  8b966a50  fmac.s r13, r21, r6
004834  3bb02601  bneq r13, r18, 12
004838  1f090000  addli r18, zero, 0
00483c  db010000  j 12
004840  1f190000  addli r18, zero, 1
004844  7310d600  store.h r13, 0(r12)
004848  e344ffcf  loadli.w r9,  -6148(r30)
00484c  63033fd1  loadli.w r6,  -5992(r30)
004850  0b969a20  mul.s r12, r21, r9
004854  0b16cc18  sub.s r12, r24, r12
004858  0b96c440  min.s r12, r9, r12
00485c  e3042fd1  loadli.w r9,  -6000(r30)
004860  0b160648  max.s r12, r12, zero
004864  1f76f6ff  addli r12, r12, -1
004868  8b169610  add.s r13, r12, r9
00486c  0b166610  add.s r12, r12, r6
004870  8b969630  div.s r13, r13, r9
004874  8b196630  div.s r19, r12, r6
004878  e3441fd0  loadli.w r9,  -6132(r30)
00487c  1f060900  addli r12, r18, 0
004880  37f01400  beq r9, r1, 28
004884  e3441fd0  loadli.w r9,  -6132(r30)
004888  1f330000  addli r6, zero, 3
00488c  37a36400  beq r9, r6, 200
004890  1f230000  addli r6, zero, 2
004894  3bb36400  bneq r9, r6, 204
004898  1706c901  and r12, r18, r28
00489c  37130600  beq r12, zero, 196
0048a0  b7c00200  beq r5, zero, 48
0048a4  1f090000  addli r18, zero, 0
0048a8  db010000  j 12
0048ac  1f190900  addli r18, r18, 1
0048b0  b7002900  beq r18, r2, 32
0048b4  1f860600  addli r12, r13, 0
0048b8  bfdf16fe  blt.s r13, r1, -12
0048bc  7d100700  xwait r14, 0
0048c0  7d800700  xsignal r15, 0
0048c4  1f76f6ff  addli r12, r12, -1
0048c8  bb5f06fe  bneq r12, zero, -12
0048cc  5bfcffff  j -32
0048d0  3f7c1afe  blt.s r20, r1, -228
0048d4  e304bfd0  loadli.w r9,  -6056(r30)
0048d8  1f060000  addli r12, zero, 0
0048dc  1f090000  addli r18, zero, 0
0048e0  9ff6f4ff  addli r13, r9, -1
0048e4  db010000  j 12
0048e8  1f190900  addli r18, r18, 1
0048ec  370c49ff  beq r18, r20, -256
0048f0  1f8d0900  addli r26, r19, 0
0048f4  3fd01900  blt.s r19, r1, 20
0048f8  7d100700  xwait r14, 0
0048fc  7d800700  xsignal r15, 0
004900  1f7dfdff  addli r26, r26, -1
004904  bb5f0dfe  bneq r26, zero, -12
004908  1f8d0600  addli r26, r13, 0
00490c  37207900  beq r18, r7, 8
004910  1f0d0000  addli r26, zero, 0
004914  63037fd0  loadli.w r6,  -6088(r30)
004918  8b146920  mul.s r9, r18, r6
00491c  0b1d6950  fmac.s r26, r18, r6
004920  8b949d18  sub.s r9, r27, r9
004924  8b149340  min.s r9, r6, r9
004928  8b149d10  add.s r9, r26, r9
00492c  630dbfd0  loadli.w r26,  -6056(r30)
004930  0b9da431  div.s r26, r9, r26
004934  cb5ecdfe  ble.s r26, r12, -76
004938  0b16cd18  sub.s r12, r26, r12
00493c  7d100800  xwait r16, 0
004940  7d800800  xsignal r17, 0
004944  1f76f6ff  addli r12, r12, -1
004948  bb5f06fe  bneq r12, zero, -12
00494c  1f060d00  addli r12, r26, 0
004950  5bf3ffff  j -104
004954  6303afd1  loadli.w r6,  -5936(r30)
004958  17062301  and r12, r6, r18
00495c  3b1d06fe  bneq r12, zero, -188
004960  93144005  setlt.s r9, zero, r20
004964  97049900  and r9, r18, r9
004968  bbc01400  bneq r9, r1, 48
00496c  1f090000  addli r18, zero, 0
004970  db010000  j 12
004974  1f190900  addli r18, r18, 1
004978  b7004901  beq r18, r20, 32
00497c  1f860900  addli r12, r19, 0
004980  bfdf19fe  blt.s r19, r1, -12
004984  7d100700  xwait r14, 0
004988  7d800700  xsignal r15, 0
00498c  1f76f6ff  addli r12, r12, -1
004990  bb5f06fe  bneq r12, zero, -12
004994  5bfcffff  j -32
004998  3f5911fe  blt.s r2, r1, -428
00499c  9bf41600  setlti r9, r13, 1
0049a0  1f0d0000  addli r26, zero, 0
0049a4  9f090000  addli r19, zero, 0
0049a8  17199e00  or r18, r28, r9
0049ac  db010000  j 12
0049b0  9f990900  addli r19, r19, 1
0049b4  b7e829fe  beq r19, r2, -456
0049b8  3b600900  bneq r18, zero, 24
0049bc  1f860600  addli r12, r13, 0
0049c0  7d100700  xwait r14, 0
0049c4  7d800700  xsignal r15, 0
0049c8  1f76f6ff  addli r12, r12, -1
0049cc  bb5f06fe  bneq r12, zero, -12
0049d0  1f860500  addli r12, r11, 0
0049d4  37a04900  beq r19, r4, 8
0049d8  1f060000  addli r12, zero, 0
0049dc  63437fd0  loadli.w r6,  -6084(r30)
0049e0  8b946920  mul.s r9, r19, r6
0049e4  0b966950  fmac.s r12, r19, r6
0049e8  8b949c18  sub.s r9, r25, r9
0049ec  8b149340  min.s r9, r6, r9
0049f0  8b149610  add.s r9, r12, r9
0049f4  63461fd1  loadli.w r12,  -6004(r30)
0049f8  0b96c430  div.s r12, r9, r12
0049fc  cb5ea6ff  ble.s r12, r26, -76
004a00  0b1da619  sub.s r26, r12, r26
004a04  7d100800  xwait r16, 0
004a08  7d800800  xsignal r17, 0
004a0c  1f7dfdff  addli r26, r26, -1
004a10  bb5f0dfe  bneq r26, zero, -12
004a14  1f0d0600  addli r26, r12, 0
004a18  5bf3ffff  j -104
004a1c  e349cfd0  loadli.w r19,  -6044(r30)
004a20  63098fd0  loadli.w r18,  -6080(r30)
004a24  1f820300  addli r4, r7, 0
004a28  abf2ffff  lui r5, 1048575
004a2c  1b93f2ff  ori r6, r5, 4095
004a30  e302dfd0  loadli.w r5,  -6040(r30)
004a34  67466fd0  storeli.w r6, -6044(r30)
004a38  3f0b53fc  blt.s r6, r5, -1344
004a3c  e342afcb  loadli.w r5,  -6700(r30)
004a40  67465fd0  storeli.w r5, -6044(r30)
004a44  db56ffff  j -1356
004a48  e3402f01  loadli.w r1,  148(r30)
004a4c  e70a1fd0  storeli.w r1, -5976(r30)
004a50  9f004fd1  addli r1, r30, -5984
004a54  630c7fd1  loadli.w r24,  -5960(r30)
004a58  63090fd1  loadli.w r18,  -6016(r30)
004a5c  e30d9fd0  loadli.w r27,  -6072(r30)
004a60  6bd30000  load.d r[7:8], 0(r1)
004a64  e3005f01  loadli.w r1,  168(r30)
004a68  37920000  beq r1, zero, 132
004a6c  b3001028  .word 0x281000b3
004a70  13211500  seteq.d r2, r[11:12], r[2:3]
004a74  ab00803f  lui r1, 260096
004a78  bb100100  bneq r2, zero, 36
004a7c  00a00000  mfence { lm }
004a80  9f400000  addli r1, zero, 4
004a84  2b0100f0  lui r2, 983040
004a88  9f010fda  addli r3, r30, -4864
004a8c  97902000  or r1, r1, r2
004a90  ff203500  l_gm2lm r1, r3, 0(r[11:12])
004a94  00a00200  mfence { lm, gm }
004a98  e3000fda  loadli.w r1,  -4864(r30)
004a9c  33012028  .word 0x28200133
004aa0  93212300  seteq.d r3, r[7:8], r[3:4]
004aa4  2b01803f  lui r2, 260096
004aa8  63451fd0  loadli.w r10,  -6132(r30)
004aac  bb900100  bneq r3, zero, 36
004ab0  00a00000  mfence { lm }
004ab4  1f410000  addli r2, zero, 4
004ab8  ab0100f0  lui r3, 983040
004abc  9f020fda  addli r5, r30, -4864
004ac0  17113100  or r2, r2, r3
004ac4  7f215300  l_gm2lm r2, r5, 0(r[7:8])
004ac8  00a00200  mfence { lm, gm }
004acc  63010fda  loadli.w r2,  -4864(r30)
004ad0  e3015fd1  loadli.w r3,  -5976(r30)
004ad4  8be01120  mul.f.rn r1, r3, r1
004ad8  8be02020  mul.f.rn r1, r1, r2
004adc  e70a1fd0  storeli.w r1, -5976(r30)
004ae0  e3004f01  loadli.w r1,  160(r30)
004ae4  3bc10000  bneq r1, zero, 80
004ae8  5b020000  j 16
004aec  63451fd0  loadli.w r10,  -6132(r30)
004af0  e3004f01  loadli.w r1,  160(r30)
004af4  3b810000  bneq r1, zero, 64
004af8  b3001028  .word 0x281000b3
004afc  13211a00  seteq.d r2, r[21:22], r[2:3]
004b00  ab00803f  lui r1, 260096
004b04  bb100100  bneq r2, zero, 36
004b08  00a00000  mfence { lm }
004b0c  9f400000  addli r1, zero, 4
004b10  2b0100f0  lui r2, 983040
004b14  9f010fda  addli r3, r30, -4864
004b18  97902000  or r1, r1, r2
004b1c  ff203a00  l_gm2lm r1, r3, 0(r[21:22])
004b20  00a00200  mfence { lm, gm }
004b24  e3000fda  loadli.w r1,  -4864(r30)
004b28  63015fd1  loadli.w r2,  -5976(r30)
004b2c  0b611120  mul.f.rn r2, r2, r1
004b30  e70a2fd0  storeli.w r2, -5976(r30)
004b34  e3404f01  loadli.w r1,  164(r30)
004b38  3ba10000  bneq r1, zero, 72
004b3c  9f018fd1  addli r3, r30, -5952
004b40  b3001028  .word 0x281000b3
004b44  ebd20100  load.d r[6:7], 0(r3)
004b48  13a11200  seteq.d r2, r[6:7], r[2:3]
004b4c  ab00803f  lui r1, 260096
004b50  bb100100  bneq r2, zero, 36
004b54  00a00000  mfence { lm }
004b58  9f400000  addli r1, zero, 4
004b5c  2b0100f0  lui r2, 983040
004b60  9f010fda  addli r3, r30, -4864
004b64  97902000  or r1, r1, r2
004b68  ffa03200  l_gm2lm r1, r3, 0(r[6:7])
004b6c  00a00200  mfence { lm, gm }
004b70  e3000fda  loadli.w r1,  -4864(r30)
004b74  63015fd1  loadli.w r2,  -5976(r30)
004b78  0b611120  mul.f.rn r2, r2, r1
004b7c  e70a2fd0  storeli.w r2, -5976(r30)
004b80  b3001028  .word 0x281000b3
004b84  e3014f01  loadli.w r3,  160(r30)
004b88  93221a00  seteq.d r5, r[21:22], r[2:3]
004b8c  1f210000  addli r2, zero, 2
004b90  1d000100  lock zero, r2
004b94  0d000022  ew_cfg zero, zero, zero, 17
004b98  9f100000  addli r1, zero, 1
004b9c  1d100100  unlock r2
004ba0  37a00100  beq r3, zero, 8
004ba4  9f000200  addli r1, r4, 0
004ba8  9f010000  addli r3, zero, 0
004bac  3ba00200  bneq r5, zero, 8
004bb0  9f810000  addli r3, r1, 0
004bb4  eb508f02  load.d r[2:3], 40(r30)
004bb8  1f021fda  addli r4, r30, -4856
004bbc  73304201  store.d r[21:22], 0(r4)
004bc0  3be10200  bneq r5, zero, 88
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
004bec  6b520400  load.d r[5:6], 0(r8)
004bf0  ab0300f0  lui r7, 983040
004bf4  1f032300  addli r6, r6, 16
004bf8  9bb12100  slli r3, r3, 2
004bfc  97917100  or r3, r3, r7
004c00  ff216200  l_gm2lm r3, r6, 0(r[5:6])
004c04  b3013028  .word 0x283001b3
004c08  9f022fe2  addli r5, r30, -3824
004c0c  00a00200  mfence { lm, gm }
004c10  73b03200  store.d r[4:5], 0(r5)
004c14  5b010000  j 8
004c18  67000fda  storeli.w zero, -4864(r30)
004c1c  eb510f03  load.d r[4:5], 48(r30)
004c20  9f026fce  addli r5, r30, -6352
004c24  9f130000  addli r7, zero, 1
004c28  670e0fd0  storeli.w zero, -5920(r30)
004c2c  73b03200  store.d r[4:5], 0(r5)
004c30  9f01dfd1  addli r3, r30, -5912
004c34  73b01100  store.d r[2:3], 0(r3)
004c38  e340cfcb  loadli.w r1,  -6684(r30)
004c3c  3fa17006  blt.s r1, r7, 3144
004c40  e3012f02  loadli.w r3,  272(r30)
004c44  63421f02  loadli.w r4,  268(r30)
004c48  6303ef01  loadli.w r6,  240(r30)
004c4c  1f8d0700  addli r26, r15, 0
004c50  e3001f03  loadli.w r1,  392(r30)
004c54  e3040f02  loadli.w r9,  256(r30)
004c58  63410f02  loadli.w r2,  260(r30)
004c5c  e305df02  loadli.w r11,  360(r30)
004c60  63464f03  loadli.w r12,  420(r30)
004c64  63079fcf  loadli.w r14,  -6200(r30)
004c68  e3425f02  loadli.w r5,  300(r30)
004c6c  6304ff01  loadli.w r8,  248(r30)
004c70  e3483f01  loadli.w r17,  156(r30)
004c74  9f0a0000  addli r21, zero, 0
004c78  1f080000  addli r16, zero, 0
004c7c  9f070000  addli r15, zero, 0
004c80  1f0a0000  addli r20, zero, 0
004c84  1f0b0000  addli r22, zero, 0
004c88  9f0b0000  addli r23, zero, 0
004c8c  9f0c0000  addli r25, zero, 0
004c90  1f1e0000  addli r28, zero, 1
004c94  67070fd0  storeli.w zero, -6032(r30)
004c98  0b924120  mul.s r4, r3, r4
004c9c  8b11a341  min.s r3, r6, r26
004ca0  67491fd0  storeli.w r1, -5996(r30)
004ca4  e340ff01  loadli.w r1,  252(r30)
004ca8  1f71f1ff  addli r2, r2, -1
004cac  9bf51500  setlti r11, r11, 1
004cb0  1b771700  setlti r14, r14, 1
004cb4  1f73f4ff  addli r6, r8, -1
004cb8  1f7d3000  addli r26, zero, 31
004cbc  8b910148  max.s r3, r3, zero
004cc0  67042fce  storeli.w r2, -6336(r30)
004cc4  1f010fda  addli r2, r30, -4864
004cc8  6706bfce  storeli.w r11, -6304(r30)
004ccc  9b751600  setlti r11, r12, 1
004cd0  6746efce  storeli.w r14, -6300(r30)
004cd4  e7466fd0  storeli.w r6, -6036(r30)
004cd8  0b934620  mul.s r6, r13, r4
004cdc  1f270000  addli r14, zero, 2
004ce0  1f160000  addli r12, zero, 1
004ce4  9ff0f0ff  addli r1, r1, -1
004ce8  67483fce  storeli.w r3, -6268(r30)
004cec  8b913410  add.s r3, r9, r3
004cf0  1f012100  addli r2, r2, 16
004cf4  e745bfce  storeli.w r11, -6308(r30)
004cf8  9b85f800  andi r11, r17, 15
004cfc  9bb87200  slli r17, r5, 7
004d00  67446fce  storeli.w r6, -6332(r30)
004d04  e7051fce  storeli.w r1, -6312(r30)
004d08  9ff0f1ff  addli r1, r3, -1
004d0c  9f01cfd1  addli r3, r30, -5920
004d10  e7062fd0  storeli.w r2, -6040(r30)
004d14  670abfd0  storeli.w r11, -5984(r30)
004d18  9f850a00  addli r11, r21, 0
004d1c  9f4a2000  addli r21, zero, 20
004d20  670c1fd1  storeli.w r17, -5952(r30)
004d24  8b909030  div.s r1, r1, r9
004d28  1f812100  addli r2, r3, 16
004d2c  9f140000  addli r9, zero, 1
004d30  67462fd0  storeli.w r2, -6044(r30)
004d34  1ff1f2ff  addli r2, r5, -1
004d38  674c2fce  storeli.w r2, -6204(r30)
004d3c  1f110000  addli r2, zero, 1
004d40  e7431fd0  storeli.w r1, -6084(r30)
004d44  9f100000  addli r1, zero, 1
004d48  e7071fce  storeli.w r1, -6280(r30)
004d4c  9f100000  addli r1, zero, 1
004d50  e74b1fce  storeli.w r1, -6212(r30)
004d54  9f100000  addli r1, zero, 1
004d58  e7481fd0  storeli.w r1, -6004(r30)
004d5c  9f100000  addli r1, zero, 1
004d60  e70b1fce  storeli.w r1, -6216(r30)
004d64  e340afcb  loadli.w r1,  -6700(r30)
004d68  67471fce  storeli.w r1, -6284(r30)
004d6c  5b090000  j 72
004d70  e300ffce  loadli.w r1,  -6280(r30)
004d74  e301efd0  loadli.w r3,  -6032(r30)
004d78  e3421fd1  loadli.w r5,  -6004(r30)
004d7c  8b9bcb18  sub.s r23, r23, r12
004d80  0b1b9b18  sub.s r22, r22, r9
004d84  0b160658  neg.s r12, r12
004d88  8b940458  neg.s r9, r9
004d8c  8b951518  sub.s r11, r11, r1
004d90  8b900058  neg.s r1, r1
004d94  9f910100  addli r3, r3, 1
004d98  0b1a5a18  sub.s r20, r20, r5
004d9c  8b920258  neg.s r5, r5
004da0  e7071fce  storeli.w r1, -6280(r30)
004da4  e340cfcb  loadli.w r1,  -6684(r30)
004da8  e7485fd0  storeli.w r5, -6004(r30)
004dac  67073fd0  storeli.w r3, -6032(r30)
004db0  37db1104  beq r3, r1, 2772
004db4  e340efce  loadli.w r1,  -6284(r30)
004db8  b7ba1504  beq r11, r1, 2732
004dbc  e302cfcb  loadli.w r5,  -6688(r30)
004dc0  6303efd0  loadli.w r6,  -6032(r30)
004dc4  e301afcb  loadli.w r3,  -6704(r30)
004dc8  e3464fcc  loadli.w r13,  -6620(r30)
004dcc  670d9fce  storeli.w r9, -6192(r30)
004dd0  8b105320  mul.s r1, r6, r5
004dd4  8b901118  sub.s r1, r3, r1
004dd8  e3018fce  loadli.w r3,  -6336(r30)
004ddc  8b901240  min.s r1, r5, r1
004de0  e3427fd0  loadli.w r5,  -6084(r30)
004de4  8b900048  max.s r1, r1, zero
004de8  8b901110  add.s r1, r3, r1
004dec  e341ffcf  loadli.w r3,  -6148(r30)
004df0  0b943030  div.s r8, r1, r3
004df4  e3408fce  loadli.w r1,  -6332(r30)
004df8  e3416fcc  loadli.w r3,  -6604(r30)
004dfc  8b906020  mul.s r1, r1, r6
004e00  6303ffce  loadli.w r6,  -6280(r30)
004e04  8b96b150  fmac.s r13, r3, r11
004e08  e7081fce  storeli.w r1, -6264(r30)
004e0c  9ff0f2ff  addli r1, r5, -1
004e10  e749dfce  storeli.w r13, -6244(r30)
004e14  0b936120  mul.s r6, r3, r6
004e18  8b165420  mul.s r13, r8, r5
004e1c  e74d8fce  storeli.w r8, -6180(r30)
004e20  67451fce  storeli.w r1, -6316(r30)
004e24  8b90b120  mul.s r1, r3, r11
004e28  9f71f4ff  addli r3, r8, -1
004e2c  e7066fce  storeli.w r6, -6296(r30)
004e30  6707dfce  storeli.w r13, -6288(r30)
004e34  e7043fce  storeli.w r3, -6328(r30)
004e38  e3016fcc  loadli.w r3,  -6608(r30)
004e3c  8b901118  sub.s r1, r3, r1
004e40  67081fce  storeli.w r1, -6272(r30)
004e44  db0f0000  j 124
004e48  e3407fcf  loadli.w r1,  -6212(r30)
004e4c  e345ffce  loadli.w r11,  -6276(r30)
004e50  e301dfce  loadli.w r3,  -6296(r30)
004e54  e306efce  loadli.w r13,  -6288(r30)
004e58  e34d7fd0  loadli.w r27,  -6084(r30)
004e5c  8b9bcb18  sub.s r23, r23, r12
004e60  0b160658  neg.s r12, r12
004e64  8b900058  neg.s r1, r1
004e68  1f820600  addli r4, r13, 0
004e6c  e74b1fce  storeli.w r1, -6212(r30)
004e70  e300ffce  loadli.w r1,  -6280(r30)
004e74  8b951510  add.s r11, r11, r1
004e78  e3401fd1  loadli.w r1,  -6004(r30)
004e7c  0b1a1a18  sub.s r20, r20, r1
004e80  8b900058  neg.s r1, r1
004e84  e7481fd0  storeli.w r1, -6004(r30)
004e88  e3007fcf  loadli.w r1,  -6216(r30)
004e8c  8b9c1c18  sub.s r25, r25, r1
004e90  8b900058  neg.s r1, r1
004e94  e70b1fce  storeli.w r1, -6216(r30)
004e98  e3403fcf  loadli.w r1,  -6244(r30)
004e9c  8b903010  add.s r1, r1, r3
004ea0  e7491fce  storeli.w r1, -6244(r30)
004ea4  e3000fcf  loadli.w r1,  -6272(r30)
004ea8  8b903018  sub.s r1, r1, r3
004eac  e3016fcf  loadli.w r3,  -6224(r30)
004eb0  67081fce  storeli.w r1, -6272(r30)
004eb4  e340efce  loadli.w r1,  -6284(r30)
004eb8  1f890100  addli r18, r3, 0
004ebc  37e61504  beq r11, r1, 2456
004ec0  9300d200  seteq r1, r4, r13
004ec4  e341bfce  loadli.w r3,  -6308(r30)
004ec8  670c9fcf  storeli.w r25, -6208(r30)
004ecc  97903000  or r1, r1, r3
004ed0  bb900000  bneq r1, zero, 36
004ed4  63420fd0  loadli.w r4,  -6140(r30)
004ed8  9f004fe2  addli r1, r30, -3808
004edc  abf20000  lui r5, 15
004ee0  1f72f2ff  addli r4, r4, -1
004ee4  9b92f2ff  ori r5, r5, 4095
004ee8  73905000  store.h r5, 0(r1)
004eec  9fa00000  addli r1, r1, 2
004ef0  bb3f02fe  bneq r4, zero, -20
004ef4  e3416fcc  loadli.w r3,  -6604(r30)
004ef8  63026fcc  loadli.w r4,  -6608(r30)
004efc  8b903520  mul.s r1, r11, r3
004f00  0b121218  sub.s r4, r4, r1
004f04  0b924140  min.s r4, r3, r4
004f08  e301bfce  loadli.w r3,  -6312(r30)
004f0c  0b120248  max.s r4, r4, zero
004f10  670e4fce  storeli.w r4, -6176(r30)
004f14  0b924110  add.s r4, r3, r4
004f18  e3011fce  loadli.w r3,  -6392(r30)
004f1c  8b113230  div.s r3, r4, r3
004f20  13023900  seteq r4, r18, r3
004f24  670b3fce  storeli.w r3, -6224(r30)
004f28  e301cfce  loadli.w r3,  -6304(r30)
004f2c  17123200  or r4, r4, r3
004f30  bb100200  bneq r4, zero, 36
004f34  63020fce  loadli.w r4,  -6400(r30)
004f38  e342efcf  loadli.w r5,  -6156(r30)
004f3c  2bf30000  lui r6, 15
004f40  9ff2f2ff  addli r5, r5, -1
004f44  1b13f3ff  ori r6, r6, 4095
004f48  73106200  store.h r6, 0(r4)
004f4c  1f220200  addli r4, r4, 2
004f50  bbbf02fe  bneq r5, zero, -20
004f54  e3417fd0  loadli.w r3,  -6084(r30)
004f58  63492fd1  loadli.w r18,  -5996(r30)
004f5c  13823d00  seteq r4, r27, r3
004f60  e341cfce  loadli.w r3,  -6300(r30)
004f64  17123200  or r4, r4, r3
004f68  bb100200  bneq r4, zero, 36
004f6c  63420fcd  loadli.w r4,  -6524(r30)
004f70  e3029fcf  loadli.w r5,  -6200(r30)
004f74  2bf30000  lui r6, 15
004f78  9ff2f2ff  addli r5, r5, -1
004f7c  1b13f3ff  ori r6, r6, 4095
004f80  73106200  store.h r6, 0(r4)
004f84  1f220200  addli r4, r4, 2
004f88  bbbf02fe  bneq r5, zero, -20
004f8c  2bf2ffff  lui r4, 1048575
004f90  63437fd0  loadli.w r6,  -6084(r30)
004f94  e30c8fcf  loadli.w r25,  -6208(r30)
004f98  e3417fcf  loadli.w r3,  -6212(r30)
004f9c  9f020000  addli r5, zero, 0
004fa0  3f303000  blt.s zero, r3, 12
004fa4  e342afce  loadli.w r5,  -6316(r30)
004fa8  1b13f2ff  ori r6, r4, 4095
004fac  e747bfce  storeli.w r11, -6276(r30)
004fb0  37ea62fe  beq r5, r6, -360
004fb4  2bf2ffff  lui r4, 1048575
004fb8  e3016fcf  loadli.w r3,  -6224(r30)
004fbc  1b12f2ff  ori r4, r4, 4095
004fc0  9f8d0100  addli r27, r3, 0
004fc4  3f202000  blt.s zero, r2, 8
004fc8  9f0d0200  addli r27, r4, 0
004fcc  e346bfcf  loadli.w r13,  -6180(r30)
004fd0  6709dfd0  storeli.w r13, -6000(r30)
004fd4  3f20c001  blt.s zero, r28, 8
004fd8  67094fd0  storeli.w r4, -6000(r30)
004fdc  1f040000  addli r8, zero, 0
004fe0  674b6fce  storeli.w r6, -6220(r30)
004fe4  3f202000  blt.s zero, r2, 8
004fe8  1ff4f1ff  addli r8, r3, -1
004fec  1f830200  addli r6, r5, 0
004ff0  9f060000  addli r13, zero, 0
004ff4  3f20c001  blt.s zero, r28, 8
004ff8  e3069fce  loadli.w r13,  -6328(r30)
004ffc  e3416fcc  loadli.w r3,  -6604(r30)
005000  63020fcf  loadli.w r4,  -6272(r30)
005004  e3427fcf  loadli.w r5,  -6212(r30)
005008  e30c8fcf  loadli.w r25,  -6208(r30)
00500c  9f050100  addli r11, r2, 0
005010  0b924140  min.s r4, r3, r4
005014  e3417fd0  loadli.w r3,  -6084(r30)
005018  8b925120  mul.s r5, r3, r5
00501c  8b110248  max.s r3, r4, zero
005020  67093fce  storeli.w r3, -6256(r30)
005024  e3414fcc  loadli.w r3,  -6620(r30)
005028  8b903010  add.s r1, r1, r3
00502c  e341ffce  loadli.w r3,  -6276(r30)
005030  e70d1fce  storeli.w r1, -6184(r30)
005034  e3406fcf  loadli.w r1,  -6220(r30)
005038  8b905018  sub.s r1, r1, r5
00503c  9f020300  addli r5, r6, 0
005040  1f030400  addli r6, r8, 0
005044  67431fd0  storeli.w r1, -6092(r30)
005048  e3004fcc  loadli.w r1,  -6624(r30)
00504c  8b901120  mul.s r1, r3, r1
005050  674d1fce  storeli.w r1, -6188(r30)
005054  db090000  j 76
005058  e3417fcf  loadli.w r3,  -6212(r30)
00505c  e302ffd0  loadli.w r5,  -6024(r30)
005060  e30c8fcf  loadli.w r25,  -6208(r30)
005064  0b910558  neg.s r2, r11
005068  0b93bd18  sub.s r6, r27, r11
00506c  9f8d0000  addli r27, r1, 0
005070  e3406fcf  loadli.w r1,  -6220(r30)
005074  8b9bcb18  sub.s r23, r23, r12
005078  0b160658  neg.s r12, r12
00507c  9f050100  addli r11, r2, 0
005080  8b923210  add.s r5, r5, r3
005084  e3411fd1  loadli.w r3,  -6004(r30)
005088  0b1a3a18  sub.s r20, r20, r3
00508c  8b910158  neg.s r3, r3
005090  e7483fd0  storeli.w r3, -6004(r30)
005094  e3017fcf  loadli.w r3,  -6216(r30)
005098  8b9c3c10  add.s r25, r25, r3
00509c  b7b612fe  beq r5, r1, -596
0050a0  670c9fcf  storeli.w r25, -6208(r30)
0050a4  e7075fd0  storeli.w r5, -6024(r30)
0050a8  3b60b301  bneq r6, r27, 24
0050ac  abf0ffff  lui r1, 1048575
0050b0  9b90f0ff  ori r1, r1, 4095
0050b4  bf9eb0fe  blt.s r1, r11, -92
0050b8  e3006fcf  loadli.w r1,  -6224(r30)
0050bc  dbf3ffff  j -100
0050c0  63416fd0  loadli.w r2,  -6092(r30)
0050c4  63020fcd  loadli.w r4,  -6528(r30)
0050c8  e3411fcd  loadli.w r3,  -6516(r30)
0050cc  e700cfd0  storeli.w r12, -6136(r30)
0050d0  e70fbfcf  storeli.w r27, -6152(r30)
0050d4  670fbfce  storeli.w r11, -6160(r30)
0050d8  13812202  setneq r2, r5, r2
0050dc  8b904c38  mod.s r1, r25, r4
0050e0  e34c3fcf  loadli.w r25,  -6244(r30)
0050e4  8b904010  add.s r1, r1, r4
0050e8  67032fd0  storeli.w r2, -6096(r30)
0050ec  63011fcf  loadli.w r2,  -6264(r30)
0050f0  0b944038  mod.s r8, r1, r4
0050f4  63021fce  loadli.w r4,  -6392(r30)
0050f8  0b912210  add.s r2, r5, r2
0050fc  8b1c6250  fmac.s r25, r4, r6
005100  8b106220  mul.s r1, r4, r6
005104  67442fd0  storeli.w r2, -6076(r30)
005108  0b913220  mul.s r2, r5, r3
00510c  8b12b220  mul.s r5, r4, r11
005110  e7049fd1  storeli.w r25, -6072(r30)
005114  e7425fd0  storeli.w r5, -6100(r30)
005118  e3420fcf  loadli.w r5,  -6268(r30)
00511c  1b321400  slli r4, r8, 1
005120  e7498fd0  storeli.w r8, -5988(r30)
005124  0b912218  sub.s r2, r5, r2
005128  0b912140  min.s r2, r3, r2
00512c  0b110148  max.s r2, r2, zero
005130  e70e2fce  storeli.w r2, -6168(r30)
005134  63410fcd  loadli.w r2,  -6524(r30)
005138  8b114110  add.s r3, r2, r4
00513c  63012fcf  loadli.w r2,  -6256(r30)
005140  67043fd0  storeli.w r3, -6080(r30)
005144  0b121118  sub.s r4, r2, r1
005148  db070000  j 60
00514c  e3401fd1  loadli.w r1,  -6004(r30)
005150  63415fd0  loadli.w r2,  -6100(r30)
005154  0b1e0e58  neg.s r28, r28
005158  0b13b310  add.s r6, r6, r11
00515c  0b1b9b10  add.s r22, r22, r9
005160  8b9bcb10  add.s r23, r23, r12
005164  0b1a1a18  sub.s r20, r20, r1
005168  8b900058  neg.s r1, r1
00516c  0b122218  sub.s r4, r4, r2
005170  e7481fd0  storeli.w r1, -6004(r30)
005174  e3009fd0  loadli.w r1,  -6072(r30)
005178  8b902010  add.s r1, r1, r2
00517c  e7041fd0  storeli.w r1, -6072(r30)
005180  b73cb3ff  beq r6, r27, -212
005184  e3002fd1  loadli.w r1,  -6000(r30)
005188  8b9cc019  sub.s r25, r1, r28
00518c  b7aa1602  beq r13, r1, 1704
005190  e3440fce  loadli.w r9,  -6396(r30)
005194  e341afcf  loadli.w r3,  -6188(r30)
005198  6306ffcd  loadli.w r12,  -6408(r30)
00519c  63041fce  loadli.w r8,  -6392(r30)
0051a0  67014fd0  storeli.w r4, -6128(r30)
0051a4  e7026fd1  storeli.w r22, -6104(r30)
0051a8  67427fd1  storeli.w r23, -6108(r30)
0051ac  e3054fcf  loadli.w r11,  -6240(r30)
0051b0  67489fd1  storeli.w r25, -6012(r30)
0051b4  e708cfd1  storeli.w r28, -6008(r30)
0051b8  8b109b38  mod.s r1, r22, r9
0051bc  8b92cb38  mod.s r5, r23, r12
0051c0  8b113310  add.s r3, r6, r3
0051c4  0b114440  min.s r2, r8, r4
0051c8  6302dfcf  loadli.w r4,  -6168(r30)
0051cc  1f0b0300  addli r22, r6, 0
0051d0  67063fd0  storeli.w r3, -6048(r30)
0051d4  e3419fcf  loadli.w r3,  -6196(r30)
0051d8  0b110148  max.s r2, r2, zero
0051dc  0b138b20  mul.s r6, r22, r8
0051e0  e7016fd1  storeli.w r22, -6120(r30)
0051e4  e7032fd0  storeli.w r2, -6088(r30)
0051e8  63415fcf  loadli.w r2,  -6228(r30)
0051ec  8b1d3230  div.s r27, r4, r3
0051f0  e301cfcf  loadli.w r3,  -6176(r30)
0051f4  6302bfcf  loadli.w r4,  -6184(r30)
0051f8  8b909010  add.s r1, r1, r9
0051fc  8b92c210  add.s r5, r5, r12
005200  8b909038  mod.s r1, r1, r9
005204  0b936118  sub.s r6, r3, r6
005208  8b91c238  mod.s r3, r5, r12
00520c  0b128b50  fmac.s r4, r22, r8
005210  8b1b6440  min.s r23, r8, r6
005214  e74bbfd1  storeli.w r27, -5956(r30)
005218  0b930b48  max.s r6, r23, zero
00521c  8b902038  mod.s r1, r1, r2
005220  1f010002  addli r2, zero, 256
005224  1bb41100  slli r8, r3, 1
005228  e7093fd0  storeli.w r3, -5992(r30)
00522c  8b122230  div.s r5, r4, r2
005230  1ff1fdff  addli r2, r27, -1
005234  9b3d5300  slli r27, r6, 5
005238  e74d2fd0  storeli.w r2, -5924(r30)
00523c  63010fce  loadli.w r2,  -6400(r30)
005240  0b168110  add.s r12, r2, r8
005244  63015fcf  loadli.w r2,  -6232(r30)
005248  6708cfd0  storeli.w r12, -6016(r30)
00524c  8b952050  fmac.s r11, r1, r2
005250  9bb08200  slli r1, r5, 8
005254  67451fd0  storeli.w r1, -6060(r30)
005258  e3408fcf  loadli.w r1,  -6204(r30)
00525c  8b906010  add.s r1, r1, r6
005260  e7451fd0  storeli.w r1, -6052(r30)
005264  5b070000  j 56
005268  9f102000  addli r1, zero, 17
00526c  7d800000  xsignal r1, 0
005270  9f603000  addli r1, zero, 30
005274  7d800000  xsignal r1, 0
005278  630a6fd1  loadli.w r20,  -5968(r30)
00527c  630e1fd1  loadli.w r28,  -6008(r30)
005280  e34c0fd1  loadli.w r25,  -6012(r30)
005284  63060fd1  loadli.w r12,  -6016(r30)
005288  e3401fd1  loadli.w r1,  -6004(r30)
00528c  8b96c611  add.s r13, r13, r28
005290  0b1a1a10  add.s r20, r20, r1
005294  e3002fd1  loadli.w r1,  -6000(r30)
005298  b7f51602  beq r13, r1, 1404
00529c  63010fd0  loadli.w r2,  -6144(r30)
0052a0  8b102a38  mod.s r1, r20, r2
0052a4  8b902010  add.s r1, r1, r2
0052a8  8b922038  mod.s r5, r1, r2
0052ac  9f000000  addli r1, zero, 0
0052b0  bff00200  blt.s r5, zero, 60
0052b4  63410fd0  loadli.w r2,  -6140(r30)
0052b8  cb505100  ble.s r2, r5, 52
0052bc  9bb01200  slli r1, r5, 1
0052c0  1f014fe2  addli r2, r30, -3808
0052c4  63448fd0  loadli.w r8,  -6076(r30)
0052c8  8b121110  add.s r5, r2, r1
0052cc  63417fd0  loadli.w r2,  -6084(r30)
0052d0  ebb00200  load.hu r1, 0(r5)
0052d4  0b942650  fmac.s r8, r13, r2
0052d8  3b301400  bneq r8, r1, 12
0052dc  9f000000  addli r1, zero, 0
0052e0  db010000  j 12
0052e4  9f100000  addli r1, zero, 1
0052e8  73908200  store.h r8, 0(r5)
0052ec  6301efd0  loadli.w r2,  -6032(r30)
0052f0  e341dfd0  loadli.w r3,  -6036(r30)
0052f4  93829601  seteq r5, r13, r25
0052f8  13043100  seteq r8, r2, r3
0052fc  170e5400  and r28, r8, r5
005300  1b241e00  xori r8, r28, 1
005304  bb300400  bneq r8, zero, 44
005308  63013fd1  loadli.w r2,  -5992(r30)
00530c  bf100100  blt.s r2, zero, 36
005310  6341efcf  loadli.w r2,  -6156(r30)
005314  e3013fd1  loadli.w r3,  -5992(r30)
005318  4b603100  ble.s r2, r3, 24
00531c  eb340600  load.hu r9, 0(r12)
005320  6301cfd0  loadli.w r2,  -6048(r30)
005324  37209100  beq r2, r9, 8
005328  e304cfd0  loadli.w r9,  -6048(r30)
00532c  73109600  store.h r9, 0(r12)
005330  63413fd1  loadli.w r2,  -5988(r30)
005334  9b740100  setlti r9, r2, 0
005338  97149400  or r9, r8, r9
00533c  bba00400  bneq r9, zero, 40
005340  63019fcf  loadli.w r2,  -6200(r30)
005344  e3413fd1  loadli.w r3,  -5988(r30)
005348  4b703100  ble.s r2, r3, 28
00534c  e3018fd0  loadli.w r3,  -6080(r30)
005350  6301ffd0  loadli.w r2,  -6024(r30)
005354  ebb40100  load.hu r9, 0(r3)
005358  37209100  beq r2, r9, 8
00535c  e304ffd0  loadli.w r9,  -6024(r30)
005360  73909100  store.h r9, 0(r3)
005364  97828200  and r5, r5, r8
005368  670b4fd1  storeli.w r20, -5968(r30)
00536c  37607500  beq r10, r7, 24
005370  1f310000  addli r2, zero, 3
005374  37792500  beq r10, r2, 604
005378  bb39e500  bneq r10, r14, 620
00537c  63016fd0  loadli.w r2,  -6096(r30)
005380  97802000  and r1, r1, r2
005384  b7890000  beq r1, zero, 608
005388  6301bfd0  loadli.w r2,  -6056(r30)
00538c  e340bfd1  loadli.w r1,  -5924(r30)
005390  8b902010  add.s r1, r1, r2
005394  0b942030  div.s r8, r1, r2
005398  3f4b74fe  blt.s r8, r7, -304
00539c  634b7fd1  loadli.w r22,  -5956(r30)
0053a0  1f060000  addli r12, zero, 0
0053a4  171a5e00  or r20, r28, r5
0053a8  5b040000  j 32
0053ac  9f170000  addli r15, zero, 1
0053b0  1f080000  addli r16, zero, 0
0053b4  e300bfd0  loadli.w r1,  -6056(r30)
0053b8  1f74f4ff  addli r8, r8, -1
0053bc  0b1b1b18  sub.s r22, r22, r1
0053c0  0b161610  add.s r12, r12, r1
0053c4  b71a04fe  beq r8, zero, -348
0053c8  7d900a00  xwait r21, 0
0053cc  7d100d00  xwait r26, 0
0053d0  b71f0afe  beq r20, zero, -28
0053d4  9f004000  addli r1, zero, 32
0053d8  6301bfd0  loadli.w r2,  -6056(r30)
0053dc  8b101630  div.s r1, r12, r1
0053e0  9bb25000  slli r5, r1, 5
0053e4  8b125618  sub.s r5, r12, r5
0053e8  8b921d50  fmac.s r5, r27, r1
0053ec  9bb02200  slli r1, r5, 2
0053f0  8b126141  min.s r5, r2, r22
0053f4  8b90b010  add.s r1, r1, r11
0053f8  b7150e00  beq r28, zero, 356
0053fc  bfee7bfe  blt.s r23, r7, -72
005400  9b84f70f  andi r9, r15, 255
005404  37b00400  beq r9, zero, 12
005408  1f014000  addli r2, zero, 32
00540c  7d100100  xwait r2, 0
005410  e3040fda  loadli.w r9,  -4864(r30)
005414  b7b10400  beq r9, zero, 108
005418  bfa14400  blt.s r9, r4, 104
00541c  e30c2fe2  loadli.w r25,  -3824(r30)
005420  3f309201  blt.s r4, r25, 12
005424  9f8c0c02  addli r25, r25, 256
005428  3f619201  blt.s r4, r25, 88
00542c  6341afd0  loadli.w r2,  -6060(r30)
005430  9f082fe2  addli r17, r30, -3824
005434  1f091fda  addli r18, r30, -4856
005438  67012fe2  storeli.w r2, -3824(r30)
00543c  8b942418  sub.s r9, r9, r2
005440  1f010002  addli r2, zero, 256
005444  00a00000  mfence { lm }
005448  6bec0800  loadext.w r[25:26], 0(r17)
00544c  8b942440  min.s r9, r9, r2
005450  6b510900  load.d r[3:4], 0(r18)
005454  2b0900f0  lui r18, 983040
005458  e308dfd0  loadli.w r17,  -6040(r30)
00545c  9bb42400  slli r9, r9, 2
005460  173cec02  sll.d r[25:26], r[25:26], r14
005464  97942401  or r9, r9, r18
005468  63492fd1  loadli.w r18,  -5996(r30)
00546c  0b218111  add.ul r[3:4], r[3:4], r[25:26]
005470  630c7fd1  loadli.w r24,  -5960(r30)
005474  ff241101  l_gm2lm r9, r17, 0(r[3:4])
005478  e3088fd1  loadli.w r17,  -5952(r30)
00547c  00a00200  mfence { lm, gm }
005480  e304cfd1  loadli.w r9,  -5920(r30)
005484  b7a10400  beq r9, zero, 104
005488  bf914400  blt.s r9, r4, 100
00548c  e30cefd9  loadli.w r25,  -4880(r30)
005490  3f309201  blt.s r4, r25, 12
005494  1f810c02  addli r2, r25, 256
005498  3f512200  blt.s r4, r2, 84
00549c  6341afd0  loadli.w r2,  -6060(r30)
0054a0  9f010002  addli r3, zero, 256
0054a4  670f2fd8  storeli.w r2, -4880(r30)
0054a8  0b912418  sub.s r2, r9, r2
0054ac  9f04efd9  addli r9, r30, -4880
0054b0  00a00000  mfence { lm }
0054b4  0b113140  min.s r2, r2, r3
0054b8  6bec0400  loadext.w r[25:26], 0(r9)
0054bc  9f01dfd1  addli r3, r30, -5912
0054c0  ebd40100  load.d r[10:11], 0(r3)
0054c4  1b312100  slli r2, r2, 2
0054c8  ab0100f0  lui r3, 983040
0054cc  173cec02  sll.d r[25:26], r[25:26], r14
0054d0  17113100  or r2, r2, r3
0054d4  e341cfd0  loadli.w r3,  -6044(r30)
0054d8  8ba48411  add.ul r[10:11], r[10:11], r[25:26]
0054dc  630c7fd1  loadli.w r24,  -5960(r30)
0054e0  7fa13400  l_gm2lm r2, r3, 0(r[10:11])
0054e4  63451fd0  loadli.w r10,  -6132(r30)
0054e8  00a00200  mfence { lm, gm }
0054ec  1d000700  lock zero, r14
0054f0  8d030020  ew_cfg r7, zero, zero, 16
0054f4  0d000002  ew_cfg zero, zero, zero, 1
0054f8  3f917200  blt.s r5, r7, 68
0054fc  0b118839  mod.s r2, r16, r24
005500  9ff1f2ff  addli r3, r5, -1
005504  e3429fd1  loadli.w r5,  -5940(r30)
005508  0d800104  ew_cfg zero, r3, zero, 2
00550c  8d030006  ew_cfg r7, zero, zero, 3
005510  8d030000  ew_cfg r7, zero, zero, 0
005514  e3014fd1  loadli.w r3,  -5984(r30)
005518  8d010014  ew_cfg r3, zero, zero, 10
00551c  e301afd1  loadli.w r3,  -5936(r30)
005520  8b123150  fmac.s r5, r2, r3
005524  63015fd1  loadli.w r2,  -5976(r30)
005528  0d110000  ewcoeff_cfg r2, zero, zero, 0
00552c  0d030006  ew_cfg r6, zero, zero, 3
005530  0d036326  ew_cfg r6, r6, r6, 19
005534  ad821000  dsmadd r5, r1, r1, 0
005538  0d000000  ew_cfg zero, zero, zero, 0
00553c  0d000026  ew_cfg zero, zero, zero, 19
005540  0d000020  ew_cfg zero, zero, zero, 16
005544  1d100700  unlock r14
005548  9f104000  addli r1, zero, 33
00554c  7d800000  xsignal r1, 0
005550  1f180800  addli r16, r16, 1
005554  376928ff  beq r16, r18, -424
005558  dbcbffff  j -420
00555c  3fe97bfe  blt.s r23, r7, -424
005560  1b81f70f  andi r2, r15, 255
005564  37300100  beq r2, zero, 12
005568  1f014000  addli r2, zero, 32
00556c  7d100100  xwait r2, 0
005570  0b118839  mod.s r2, r16, r24
005574  e3419fd1  loadli.w r3,  -5940(r30)
005578  1d000700  lock zero, r14
00557c  8d030020  ew_cfg r7, zero, zero, 16
005580  0d000002  ew_cfg zero, zero, zero, 1
005584  0d000014  ew_cfg zero, zero, zero, 10
005588  ab04803f  lui r9, 260096
00558c  e308afd1  loadli.w r17,  -5936(r30)
005590  8d140000  ewcoeff_cfg r9, zero, zero, 0
005594  0d030006  ew_cfg r6, zero, zero, 3
005598  1f180800  addli r16, r16, 1
00559c  8b111151  fmac.s r3, r2, r17
0055a0  1ff1f2ff  addli r2, r5, -1
0055a4  0d000104  ew_cfg zero, r2, zero, 2
0055a8  0d036326  ew_cfg r6, r6, r6, 19
0055ac  cdd10000  hp_ssmul r3, r1, zero, 0
0055b0  0d000026  ew_cfg zero, zero, zero, 19
0055b4  0d000020  ew_cfg zero, zero, zero, 16
0055b8  1d100700  unlock r14
0055bc  9f104000  addli r1, zero, 33
0055c0  7d800000  xsignal r1, 0
0055c4  e3088fd1  loadli.w r17,  -5952(r30)
0055c8  b71728ff  beq r16, r18, -540
0055cc  5bbdffff  j -536
0055d0  6301ffd0  loadli.w r2,  -6024(r30)
0055d4  e3416fd0  loadli.w r3,  -6092(r30)
0055d8  13043100  seteq r8, r2, r3
0055dc  97001400  and r1, r8, r1
0055e0  bba600fe  bneq r1, zero, -600
0055e4  e340bfd0  loadli.w r1,  -6052(r30)
0055e8  0b943031  div.s r8, r1, r19
0055ec  bf7174fe  blt.s r8, r7, -900
0055f0  e30c7fd0  loadli.w r25,  -6088(r30)
0055f4  630a9fd0  loadli.w r20,  -6072(r30)
0055f8  171b5e00  or r22, r28, r5
0055fc  1f860500  addli r12, r11, 0
005600  5b040000  j 32
005604  9f170000  addli r15, zero, 1
005608  1f080000  addli r16, zero, 0
00560c  0b161611  add.s r12, r12, r17
005610  0b1a3a11  add.s r20, r20, r19
005614  1f74f4ff  addli r8, r8, -1
005618  8b9c3c19  sub.s r25, r25, r19
00561c  373104fe  beq r8, zero, -948
005620  7d900a00  xwait r21, 0
005624  7d100d00  xwait r26, 0
005628  b72f0bfe  beq r22, zero, -24
00562c  8b909941  min.s r1, r19, r25
005630  b7550e00  beq r28, zero, 372
005634  3fef70fe  blt.s r1, r7, -40
005638  1b81f70f  andi r2, r15, 255
00563c  37300100  beq r2, zero, 12
005640  1f014000  addli r2, zero, 32
005644  7d100100  xwait r2, 0
005648  e3020fda  loadli.w r5,  -4864(r30)
00564c  b7c10200  beq r5, zero, 112
005650  bfb14201  blt.s r5, r20, 108
005654  e3042fe2  loadli.w r9,  -3824(r30)
005658  3f309a00  blt.s r20, r9, 12
00565c  1f810402  addli r2, r9, 256
005660  3f712a00  blt.s r20, r2, 92
005664  9f010002  addli r3, zero, 256
005668  0b113a30  div.s r2, r20, r3
00566c  1b318100  slli r2, r2, 8
005670  67012fe2  storeli.w r2, -3824(r30)
005674  0b912218  sub.s r2, r5, r2
005678  9f022fe2  addli r5, r30, -3824
00567c  00a00000  mfence { lm }
005680  0b113140  min.s r2, r2, r3
005684  ebe40200  loadext.w r[10:11], 0(r5)
005688  9f011fda  addli r3, r30, -4856
00568c  ebd80100  load.d r[18:19], 0(r3)
005690  ab0100f0  lui r3, 983040
005694  1b312100  slli r2, r2, 2
005698  97b4e402  sll.d r[10:11], r[10:11], r14
00569c  17113100  or r2, r2, r3
0056a0  e301dfd0  loadli.w r3,  -6040(r30)
0056a4  8ba49810  add.ul r[10:11], r[18:19], r[10:11]
0056a8  e3088fd1  loadli.w r17,  -5952(r30)
0056ac  63492fd1  loadli.w r18,  -5996(r30)
0056b0  7fa13400  l_gm2lm r2, r3, 0(r[10:11])
0056b4  63451fd0  loadli.w r10,  -6132(r30)
0056b8  00a00200  mfence { lm, gm }
0056bc  e302cfd1  loadli.w r5,  -5920(r30)
0056c0  b7c10200  beq r5, zero, 112
0056c4  bfb14201  blt.s r5, r20, 108
0056c8  e304efd9  loadli.w r9,  -4880(r30)
0056cc  3f309a00  blt.s r20, r9, 12
0056d0  1f810402  addli r2, r9, 256
0056d4  3f712a00  blt.s r20, r2, 92
0056d8  9f010002  addli r3, zero, 256
0056dc  0b113a30  div.s r2, r20, r3
0056e0  1b318100  slli r2, r2, 8
0056e4  670f2fd8  storeli.w r2, -4880(r30)
0056e8  0b912218  sub.s r2, r5, r2
0056ec  9f02efd9  addli r5, r30, -4880
0056f0  00a00000  mfence { lm }
0056f4  0b113140  min.s r2, r2, r3
0056f8  ebe40200  loadext.w r[10:11], 0(r5)
0056fc  9f01dfd1  addli r3, r30, -5912
005700  ebd80100  load.d r[18:19], 0(r3)
005704  ab0100f0  lui r3, 983040
005708  1b312100  slli r2, r2, 2
00570c  97b4e402  sll.d r[10:11], r[10:11], r14
005710  17113100  or r2, r2, r3
005714  e341cfd0  loadli.w r3,  -6044(r30)
005718  8ba49810  add.ul r[10:11], r[18:19], r[10:11]
00571c  e3088fd1  loadli.w r17,  -5952(r30)
005720  63492fd1  loadli.w r18,  -5996(r30)
005724  7fa13400  l_gm2lm r2, r3, 0(r[10:11])
005728  63451fd0  loadli.w r10,  -6132(r30)
00572c  00a00200  mfence { lm, gm }
005730  1d000700  lock zero, r14
005734  8d030020  ew_cfg r7, zero, zero, 16
005738  0d000002  ew_cfg zero, zero, zero, 1
00573c  63417fd1  loadli.w r2,  -5956(r30)
005740  3f117100  blt.s r2, r7, 68
005744  0b118839  mod.s r2, r16, r24
005748  e342bfd1  loadli.w r5,  -5924(r30)
00574c  e3419fd1  loadli.w r3,  -5940(r30)
005750  0d800204  ew_cfg zero, r5, zero, 2
005754  8d030006  ew_cfg r7, zero, zero, 3
005758  8d030000  ew_cfg r7, zero, zero, 0
00575c  e3024fd1  loadli.w r5,  -5984(r30)
005760  8d020014  ew_cfg r5, zero, zero, 10
005764  e3025fd1  loadli.w r5,  -5976(r30)
005768  8d120000  ewcoeff_cfg r5, zero, zero, 0
00576c  e302afd1  loadli.w r5,  -5936(r30)
005770  8d000006  ew_cfg r1, zero, zero, 3
005774  8d006326  ew_cfg r1, r6, r6, 19
005778  8b115150  fmac.s r3, r2, r5
00577c  ad01c600  dsmadd r3, r12, r12, 0
005780  0d000000  ew_cfg zero, zero, zero, 0
005784  0d000026  ew_cfg zero, zero, zero, 19
005788  0d000020  ew_cfg zero, zero, zero, 16
00578c  1d100700  unlock r14
005790  9f104000  addli r1, zero, 33
005794  7d800000  xsignal r1, 0
005798  1f180800  addli r16, r16, 1
00579c  bb4928ff  bneq r16, r18, -400
0057a0  dbccffff  j -412
0057a4  bfa970fe  blt.s r1, r7, -408
0057a8  1b81f70f  andi r2, r15, 255
0057ac  37300100  beq r2, zero, 12
0057b0  1f014000  addli r2, zero, 32
0057b4  7d100100  xwait r2, 0
0057b8  0b118839  mod.s r2, r16, r24
0057bc  e3419fd1  loadli.w r3,  -5940(r30)
0057c0  1d000700  lock zero, r14
0057c4  8d030020  ew_cfg r7, zero, zero, 16
0057c8  0d000002  ew_cfg zero, zero, zero, 1
0057cc  0d000014  ew_cfg zero, zero, zero, 10
0057d0  ab02803f  lui r5, 260096
0057d4  e304afd1  loadli.w r9,  -5936(r30)
0057d8  8d120000  ewcoeff_cfg r5, zero, zero, 0
0057dc  8d000006  ew_cfg r1, zero, zero, 3
0057e0  8b119150  fmac.s r3, r2, r9
0057e4  6341bfd1  loadli.w r2,  -5924(r30)
0057e8  0d000104  ew_cfg zero, r2, zero, 2
0057ec  8d006326  ew_cfg r1, r6, r6, 19
0057f0  cd510600  hp_ssmul r3, r12, zero, 0
0057f4  0d000026  ew_cfg zero, zero, zero, 19
0057f8  0d000020  ew_cfg zero, zero, zero, 16
0057fc  1d100700  unlock r14
005800  9f104000  addli r1, zero, 33
005804  7d800000  xsignal r1, 0
005808  1f180800  addli r16, r16, 1
00580c  3b0828ff  bneq r16, r18, -512
005810  dbbeffff  j -524
005814  630b5fd0  loadli.w r22,  -6104(r30)
005818  e34b4fd0  loadli.w r23,  -6108(r30)
00581c  e304afcf  loadli.w r9,  -6192(r30)
005820  63061fd0  loadli.w r12,  -6136(r30)
005824  e30dffcf  loadli.w r27,  -6152(r30)
005828  e305efcf  loadli.w r11,  -6160(r30)
00582c  63033fd0  loadli.w r6,  -6120(r30)
005830  63022fd0  loadli.w r4,  -6128(r30)
005834  9f860c00  addli r13, r25, 0
005838  abf0ffff  lui r1, 1048575
00583c  9b90f0ff  ori r1, r1, 4095
005840  67091fd0  storeli.w r1, -6000(r30)
005844  3fa4c0fd  blt.s r1, r28, -1784
005848  e340bfcf  loadli.w r1,  -6180(r30)
00584c  67091fd0  storeli.w r1, -6000(r30)
005850  db1fffff  j -1796
005854  e34d7fd0  loadli.w r27,  -6084(r30)
005858  e345efce  loadli.w r11,  -6284(r30)
00585c  1f820600  addli r4, r13, 0
005860  1f890100  addli r18, r3, 0
005864  abf0ffff  lui r1, 1048575
005868  9b91f0ff  ori r3, r1, 4095
00586c  e300ffce  loadli.w r1,  -6280(r30)
005870  67473fce  storeli.w r3, -6284(r30)
005874  bff311fa  blt.s r3, r1, -2820
005878  e340afcb  loadli.w r1,  -6700(r30)
00587c  67471fce  storeli.w r1, -6284(r30)
005880  5b9efeff  j -2832
005884  9f016fce  addli r3, r30, -6352
005888  b3001028  .word 0x281000b3
00588c  ebd50100  load.d r[12:13], 0(r3)
005890  93a01500  seteq.d r1, r[12:13], r[2:3]
005894  bb910000  bneq r1, zero, 100
005898  63457fce  loadli.w r10,  -6340(r30)
00589c  1f311000  addli r2, zero, 11
0058a0  9f200000  addli r1, zero, 2
0058a4  1d800000  lock zero, r1
0058a8  dd810000  ld_sd_rdout r3, r1, zero, 0
0058ac  67003fda  storeli.w r3, -4864(r30)
0058b0  1d900000  unlock r1
0058b4  00a00000  mfence { lm }
0058b8  1301a104  setlt.u r2, r2, r10
0058bc  bb700100  bneq r2, zero, 60
0058c0  1f010fda  addli r2, r30, -4864
0058c4  9f410000  addli r3, zero, 4
0058c8  00d20002  load_param_i r4, 1
0058cc  9f421000  addli r5, zero, 12
0058d0  3303652c  .word 0x2c650333
0058d4  0b15a210  add.s r10, r4, r10
0058d8  2b0400f0  lui r8, 983040
0058dc  17331302  sll.d r[7:8], r[7:8], r1
0058e0  93045504  setlt.u r9, r10, r5
0058e4  17948100  or r8, r3, r8
0058e8  0ba36510  add.ul r[7:8], r[12:13], r[7:8]
0058ec  7f342300  s_lm2gm r8, r2, 0(r[7:8])
0058f0  00a00200  mfence { lm, gm }
0058f4  3bff04fe  bneq r9, zero, -36
0058f8  7d000000  xsignal zero, 0
0058fc  80300002  core_id r1
005900  3be00000  bneq r1, zero, 24
005904  80500102  load_param_i r1, 2
005908  7d100000  xwait zero, 0
00590c  9ff0f0ff  addli r1, r1, -1
005910  bbef00fe  bneq r1, zero, -8
005914  7d400000  xsignal_mode_cfg zero
005918  9f0e8fcb  addli sp, r30, -6720
00591c  9f8e8e34  addli sp, sp, 6720
005920  00a00300  mfence { lm, sm, gm }
005924  00100000  exit
