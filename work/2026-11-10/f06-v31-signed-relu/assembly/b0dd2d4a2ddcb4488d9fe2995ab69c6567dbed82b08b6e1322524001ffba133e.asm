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
00008c  9f8eaee9  addli sp, sp, -2864
000090  1f8fee12  addli r30, sp, 2416
000094  b3013028  .word 0x283001b3
000098  eb500f04  load.d r[2:3], 64(r30)
00009c  93a13000  seteq.d r3, r[2:3], r[4:5]
0000a0  bbc00100  bneq r3, zero, 48
0000a4  00a00000  mfence { lm }
0000a8  9f410000  addli r3, zero, 4
0000ac  2b0200f0  lui r4, 983040
0000b0  9f02cff7  addli r5, r30, -1056
0000b4  97914100  or r3, r3, r4
0000b8  ffa15000  l_gm2lm r3, r5, 0(r[2:3])
0000bc  00a00200  mfence { lm, gm }
0000c0  e300cff7  loadli.w r1,  -1056(r30)
0000c4  9f120000  addli r5, zero, 1
0000c8  3bd05000  bneq r1, r5, 20
0000cc  5b390500  j 10696
0000d0  9f000000  addli r1, zero, 0
0000d4  9f120000  addli r5, zero, 1
0000d8  b7f65014  beq r1, r5, 10684
0000dc  6301bf01  loadli.w r2,  216(r30)
0000e0  80530002  load_param_i r7, 0
0000e4  e3404f03  loadli.w r1,  420(r30)
0000e8  e301cf01  loadli.w r3,  224(r30)
0000ec  6347cf01  loadli.w r14,  228(r30)
0000f0  63046f01  loadli.w r8,  176(r30)
0000f4  e3486f01  loadli.w r17,  180(r30)
0000f8  63422f02  loadli.w r4,  276(r30)
0000fc  630a0f02  loadli.w r20,  256(r30)
000100  6346df01  loadli.w r12,  236(r30)
000104  e305ef01  loadli.w r11,  240(r30)
000108  e34aff01  loadli.w r21,  252(r30)
00010c  e306df01  loadli.w r13,  232(r30)
000110  634b0f02  loadli.w r22,  260(r30)
000114  e3446f02  loadli.w r9,  308(r30)
000118  63056f02  loadli.w r10,  304(r30)
00011c  eb570f08  load.d r[16:17], 128(r30)
000120  eb5b0f06  load.d r[24:25], 96(r30)
000124  eb5c8f05  load.d r[26:27], 88(r30)
000128  eb5d8f04  load.d r[28:29], 72(r30)
00012c  e7047fee  storeli.w r7, -2232(r30)
000130  0b932338  mod.s r6, r7, r2
000134  0b912330  div.s r2, r7, r2
000138  67471fee  storeli.w r1, -2188(r30)
00013c  e3004f03  loadli.w r1,  416(r30)
000140  67024fee  storeli.w r4, -2272(r30)
000144  e3031f01  loadli.w r7,  136(r30)
000148  e7015fef  storeli.w r21, -2280(r30)
00014c  e7414fef  storeli.w r20, -2276(r30)
000150  e7006fef  storeli.w r22, -2296(r30)
000154  e7061fee  storeli.w r1, -2200(r30)
000158  e3403f03  loadli.w r1,  412(r30)
00015c  e7407fee  storeli.w r7, -2292(r30)
000160  0b193320  mul.s r18, r6, r3
000164  67051fee  storeli.w r1, -2224(r30)
000168  e3003f03  loadli.w r1,  408(r30)
00016c  8b19e120  mul.s r19, r2, r14
000170  6b530f07  load.d r[7:8], 112(r30)
000174  e74f2fed  storeli.w r18, -2308(r30)
000178  0b192419  sub.s r18, r8, r18
00017c  8b983819  sub.s r17, r17, r19
000180  e7441fee  storeli.w r1, -2228(r30)
000184  e300af02  loadli.w r1,  336(r30)
000188  0b992141  min.s r18, r3, r18
00018c  0b171741  min.s r14, r14, r17
000190  6b518f06  load.d r[3:4], 104(r30)
000194  8b180948  max.s r17, r18, zero
000198  0b994930  div.s r18, r19, r4
00019c  0b124a30  div.s r4, r20, r4
0001a0  67001fee  storeli.w r1, -2304(r30)
0001a4  e3005f02  loadli.w r1,  296(r30)
0001a8  0b170748  max.s r14, r14, zero
0001ac  0b161641  min.s r12, r12, r17
0001b0  8b95e540  min.s r11, r11, r14
0001b4  e7051fee  storeli.w r1, -2216(r30)
0001b8  e340ef01  loadli.w r1,  244(r30)
0001bc  670d4fec  storeli.w r4, -2352(r30)
0001c0  0b120648  max.s r4, r12, zero
0001c4  0b960548  max.s r12, r11, zero
0001c8  8b90d040  min.s r1, r1, r13
0001cc  674d2fed  storeli.w r18, -2348(r30)
0001d0  8b954a10  add.s r11, r21, r4
0001d4  67414fee  storeli.w r4, -2284(r30)
0001d8  0b920048  max.s r4, r1, zero
0001dc  8b10ca10  add.s r1, r20, r12
0001e0  6701cfee  storeli.w r12, -2288(r30)
0001e4  9ff5f5ff  addli r11, r11, -1
0001e8  9ff0f0ff  addli r1, r1, -1
0001ec  67404fee  storeli.w r4, -2300(r30)
0001f0  8b985531  div.s r17, r11, r21
0001f4  8b154b10  add.s r11, r22, r4
0001f8  0b129530  div.s r4, r10, r9
0001fc  0b964031  div.s r12, r1, r20
000200  9f240000  addli r9, zero, 2
000204  9ff5f5ff  addli r11, r11, -1
000208  8b906531  div.s r1, r11, r22
00020c  67454fee  storeli.w r4, -2220(r30)
000210  00320002  core_id r4
000214  7dc00200  xsignal_mode_cfg r5
000218  bfc14404  blt.s r9, r4, 2160
00021c  63022f03  loadli.w r4,  400(r30)
000220  e30a8f02  loadli.w r21,  320(r30)
000224  e3064f02  loadli.w r13,  288(r30)
000228  e3493f02  loadli.w r19,  284(r30)
00022c  80350002  core_id r11
000230  e70c4fec  storeli.w r4, -2360(r30)
000234  63427f02  loadli.w r4,  316(r30)
000238  670a4fee  storeli.w r4, -2144(r30)
00023c  63027f02  loadli.w r4,  312(r30)
000240  e7494fee  storeli.w r4, -2148(r30)
000244  63023f02  loadli.w r4,  280(r30)
000248  67464fee  storeli.w r4, -2204(r30)
00024c  6b528f07  load.d r[5:6], 120(r30)
000250  b7c20506  beq r11, zero, 3248
000254  e3444f02  loadli.w r9,  292(r30)
000258  63456f02  loadli.w r10,  308(r30)
00025c  9f170000  addli r15, zero, 1
000260  8b94a430  div.s r9, r9, r10
000264  e7099fee  storeli.w r9, -2152(r30)
000268  eb540f05  load.d r[10:11], 80(r30)
00026c  37eff50a  beq r11, r15, 6104
000270  1f240000  addli r8, zero, 2
000274  3b808514  bneq r11, r8, 10240
000278  3307e028  .word 0x28e00733
00027c  674d0ff6  storeli.w zero, -1068(r30)
000280  674a0fee  storeli.w zero, -2140(r30)
000284  e74f0ffe  storeli.w zero, -4(r30)
000288  13a4ed00  seteq.d r8, r[28:29], r[15:16]
00028c  bb000400  bneq r8, zero, 32
000290  00a00000  mfence { lm }
000294  1f440000  addli r8, zero, 4
000298  ab0500f0  lui r11, 983040
00029c  1f07cff7  addli r14, r30, -1056
0002a0  1714b400  or r8, r8, r11
0002a4  7fa4ed00  l_gm2lm r8, r14, 0(r[28:29])
0002a8  00a00200  mfence { lm, gm }
0002ac  3307e028  .word 0x28e00733
0002b0  13a4e400  seteq.d r8, r[10:11], r[15:16]
0002b4  bb000400  bneq r8, zero, 32
0002b8  00a00000  mfence { lm }
0002bc  1f440000  addli r8, zero, 4
0002c0  ab0500f0  lui r11, 983040
0002c4  1f07cff7  addli r14, r30, -1056
0002c8  1714b400  or r8, r8, r11
0002cc  7fa4e400  l_gm2lm r8, r14, 0(r[10:11])
0002d0  00a00200  mfence { lm, gm }
0002d4  63044f01  loadli.w r8,  160(r30)
0002d8  bb300400  bneq r8, zero, 44
0002dc  33048028  .word 0x28800433
0002e0  13a48c00  seteq.d r8, r[26:27], r[9:10]
0002e4  bb000400  bneq r8, zero, 32
0002e8  00a00000  mfence { lm }
0002ec  1f440000  addli r8, zero, 4
0002f0  ab0400f0  lui r9, 983040
0002f4  1f05cff7  addli r10, r30, -1056
0002f8  17149400  or r8, r8, r9
0002fc  7fa4ac00  l_gm2lm r8, r10, 0(r[26:27])
000300  00a00200  mfence { lm, gm }
000304  63444f01  loadli.w r8,  164(r30)
000308  bb300400  bneq r8, zero, 44
00030c  33048028  .word 0x28800433
000310  13a48b00  seteq.d r8, r[24:25], r[9:10]
000314  bb000400  bneq r8, zero, 32
000318  00a00000  mfence { lm }
00031c  1f440000  addli r8, zero, 4
000320  ab0400f0  lui r9, 983040
000324  1f05cff7  addli r10, r30, -1056
000328  17149400  or r8, r8, r9
00032c  7fa4ab00  l_gm2lm r8, r10, 0(r[24:25])
000330  00a00200  mfence { lm, gm }
000334  63045f01  loadli.w r8,  168(r30)
000338  b7710400  beq r8, zero, 124
00033c  33048028  .word 0x28800433
000340  13248100  seteq.d r8, r[3:4], r[9:10]
000344  bb000400  bneq r8, zero, 32
000348  00a00000  mfence { lm }
00034c  1f440000  addli r8, zero, 4
000350  ab0400f0  lui r9, 983040
000354  1f05cff7  addli r10, r30, -1056
000358  17149400  or r8, r8, r9
00035c  7f24a100  l_gm2lm r8, r10, 0(r[3:4])
000360  00a00200  mfence { lm, gm }
000364  33012028  .word 0x28200133
000368  13212300  seteq.d r2, r[7:8], r[3:4]
00036c  bb000100  bneq r2, zero, 32
000370  00a00000  mfence { lm }
000374  1f410000  addli r2, zero, 4
000378  ab0100f0  lui r3, 983040
00037c  1f04cff7  addli r8, r30, -1056
000380  17113100  or r2, r2, r3
000384  7f218300  l_gm2lm r2, r8, 0(r[7:8])
000388  00a00200  mfence { lm, gm }
00038c  33012028  .word 0x28200133
000390  13212200  seteq.d r2, r[5:6], r[3:4]
000394  bb000100  bneq r2, zero, 32
000398  00a00000  mfence { lm }
00039c  1f410000  addli r2, zero, 4
0003a0  ab0100f0  lui r3, 983040
0003a4  1f03cff7  addli r6, r30, -1056
0003a8  17113100  or r2, r2, r3
0003ac  7f216200  l_gm2lm r2, r6, 0(r[5:6])
0003b0  00a00200  mfence { lm, gm }
0003b4  63416f03  loadli.w r2,  436(r30)
0003b8  9f411000  addli r3, zero, 12
0003bc  1f020000  addli r4, zero, 0
0003c0  674f2fec  storeli.w r2, -2316(r30)
0003c4  63016f03  loadli.w r2,  432(r30)
0003c8  e70e2fec  storeli.w r2, -2328(r30)
0003cc  63415f03  loadli.w r2,  428(r30)
0003d0  e7432fee  storeli.w r2, -2244(r30)
0003d4  63015f03  loadli.w r2,  424(r30)
0003d8  e7032fee  storeli.w r2, -2248(r30)
0003dc  1f01cff7  addli r2, r30, -1056
0003e0  8b124110  add.s r5, r2, r4
0003e4  1f120200  addli r4, r4, 1
0003e8  13033204  setlt.u r6, r4, r3
0003ec  73800200  store.b zero, 0(r5)
0003f0  bb4f03fe  bneq r6, zero, -16
0003f4  63411f01  loadli.w r2,  140(r30)
0003f8  670b1fef  storeli.w r17, -2128(r30)
0003fc  674bcfee  storeli.w r12, -2124(r30)
000400  e70b1fee  storeli.w r1, -2120(r30)
000404  9b312100  slli r3, r2, 2
000408  1f016fef  addli r2, r30, -2128
00040c  0b113110  add.s r2, r2, r3
000410  e3000100  loadli.w r1,  0(r2)
000414  1f110000  addli r2, zero, 1
000418  67031fee  storeli.w r1, -2256(r30)
00041c  3fe92012  blt.s r1, r2, 9816
000420  e3003f02  loadli.w r1,  280(r30)
000424  e3035f02  loadli.w r7,  296(r30)
000428  63423f02  loadli.w r4,  284(r30)
00042c  e3024f02  loadli.w r5,  288(r30)
000430  1f03cff7  addli r6, r30, -1056
000434  1f0a0000  addli r20, zero, 0
000438  1f050000  addli r10, zero, 0
00043c  9f040000  addli r9, zero, 0
000440  9f551000  addli r11, zero, 13
000444  1f761000  addli r12, zero, 15
000448  9f481000  addli r17, zero, 12
00044c  1f2b0000  addli r22, zero, 2
000450  9f6b1000  addli r23, zero, 14
000454  1f070000  addli r14, zero, 0
000458  e74f0fec  storeli.w zero, -2308(r30)
00045c  e70f0fec  storeli.w zero, -2312(r30)
000460  8b113310  add.s r3, r6, r3
000464  9ff0f0ff  addli r1, r1, -1
000468  1b3e6200  slli r28, r4, 6
00046c  1bb26200  slli r4, r5, 6
000470  e7023fee  storeli.w r3, -2264(r30)
000474  67421fee  storeli.w r1, -2268(r30)
000478  9ff0f3ff  addli r1, r7, -1
00047c  9f032000  addli r7, zero, 16
000480  67081fee  storeli.w r1, -2176(r30)
000484  9f201000  addli r1, zero, 10
000488  db040000  j 36
00048c  630a9fee  loadli.w r20,  -2232(r30)
000490  e3016fee  loadli.w r3,  -2256(r30)
000494  e3448fee  loadli.w r9,  -2236(r30)
000498  63078fee  loadli.w r14,  -2240(r30)
00049c  9f551000  addli r11, zero, 13
0004a0  1f761000  addli r12, zero, 15
0004a4  1f1a0a00  addli r20, r20, 1
0004a8  37373a12  beq r20, r3, 9676
0004ac  e3017fee  loadli.w r3,  -2248(r30)
0004b0  e3025fee  loadli.w r5,  -2264(r30)
0004b4  93819106  setle.u r3, r3, r9
0004b8  67804201  storeli.w r20, 0(r5)
0004bc  e347cff7  loadli.w r15,  -1052(r30)
0004c0  3bd00100  bneq r3, zero, 20
0004c4  3bc00700  bneq r15, zero, 16
0004c8  9f940400  addli r9, r9, 1
0004cc  9f010000  addli r3, zero, 0
0004d0  5b060000  j 48
0004d4  b7800700  beq r15, zero, 32
0004d8  e301dfed  loadli.w r3,  -2328(r30)
0004dc  6343ffed  loadli.w r6,  -2308(r30)
0004e0  93023306  setle.u r5, r6, r3
0004e4  93816104  setlt.u r3, r3, r6
0004e8  0b135310  add.s r6, r6, r5
0004ec  e74f6fec  storeli.w r6, -2308(r30)
0004f0  5b020000  j 16
0004f4  e341ffed  loadli.w r3,  -2308(r30)
0004f8  e74f0fec  storeli.w zero, -2308(r30)
0004fc  9f910100  addli r3, r3, 1
000500  e302cff7  loadli.w r5,  -1056(r30)
000504  6304dff7  loadli.w r8,  -1048(r30)
000508  3fc02100  blt.s r3, r2, 16
00050c  7d900500  xwait r11, 0
000510  9ff1f1ff  addli r3, r3, -1
000514  bbef01fe  bneq r3, zero, -8
000518  e3417fee  loadli.w r3,  -2244(r30)
00051c  9381e106  setle.u r3, r3, r14
000520  3bf00100  bneq r3, zero, 28
000524  3be00200  bneq r5, zero, 24
000528  1f170700  addli r14, r14, 1
00052c  9f010000  addli r3, zero, 0
000530  67449fee  storeli.w r9, -2236(r30)
000534  bfe02100  blt.s r3, r2, 56
000538  5b050000  j 40
00053c  b7d40202  beq r5, zero, 1332
000540  e341efed  loadli.w r3,  -2316(r30)
000544  e305ffed  loadli.w r11,  -2312(r30)
000548  13833506  setle.u r6, r11, r3
00054c  9381b104  setlt.u r3, r3, r11
000550  8b956510  add.s r11, r11, r6
000554  e70fbfec  storeli.w r11, -2312(r30)
000558  67449fee  storeli.w r9, -2236(r30)
00055c  3fc02100  blt.s r3, r2, 16
000560  7d100600  xwait r12, 0
000564  9ff1f1ff  addli r3, r3, -1
000568  bbef01fe  bneq r3, zero, -8
00056c  3b600400  bneq r8, zero, 24
000570  e341aff7  loadli.w r3,  -1068(r30)
000574  63030fee  loadli.w r6,  -2304(r30)
000578  93846104  setlt.u r9, r3, r6
00057c  1f43aff7  addli r6, r30, -1068
000580  bb900400  bneq r9, zero, 36
000584  e3414fef  loadli.w r3,  -2140(r30)
000588  63039fed  loadli.w r6,  -2360(r30)
00058c  93043304  setlt.u r9, r6, r3
000590  37a00400  beq r9, zero, 8
000594  e341ffff  loadli.w r3,  -4(r30)
000598  1f43ffff  addli r6, r30, -4
00059c  3ba00400  bneq r9, zero, 8
0005a0  1f434fef  addli r6, r30, -2140
0005a4  6704efee  storeli.w r14, -2240(r30)
0005a8  63473fee  loadli.w r14,  -2276(r30)
0005ac  63062fee  loadli.w r12,  -2288(r30)
0005b0  9f8d0700  addli r27, r15, 0
0005b4  63083fee  loadli.w r16,  -2280(r30)
0005b8  63091fee  loadli.w r18,  -2296(r30)
0005bc  8b155410  add.s r11, r8, r5
0005c0  9f910100  addli r3, r3, 1
0005c4  e7044fef  storeli.w r20, -2232(r30)
0005c8  67003300  storeli.w r3, 0(r6)
0005cc  e3411fee  loadli.w r3,  -2292(r30)
0005d0  8b94e720  mul.s r9, r15, r14
0005d4  8b149618  sub.s r9, r12, r9
0005d8  0b16f410  add.s r12, r8, r15
0005dc  e3074fee  loadli.w r15,  -2272(r30)
0005e0  0b142421  mul.s r8, r8, r18
0005e4  8b149740  min.s r9, r14, r9
0005e8  0b970221  mul.s r14, r5, r16
0005ec  8b940448  max.s r9, r9, zero
0005f0  0b9cf430  div.s r24, r9, r15
0005f4  e3442fee  loadli.w r9,  -2284(r30)
0005f8  8b94e418  sub.s r9, r9, r14
0005fc  63470fee  loadli.w r14,  -2300(r30)
000600  8b149840  min.s r9, r16, r9
000604  63083fef  loadli.w r16,  -2152(r30)
000608  0b148718  sub.s r8, r14, r8
00060c  6347cfee  loadli.w r14,  -2204(r30)
000610  e7488fef  storeli.w r24, -2164(r30)
000614  8b940448  max.s r9, r9, zero
000618  0b148940  min.s r8, r18, r8
00061c  67099fee  storeli.w r9, -2160(r30)
000620  0b190448  max.s r18, r8, zero
000624  63444fee  loadli.w r8,  -2268(r30)
000628  67492fef  storeli.w r18, -2156(r30)
00062c  0b149410  add.s r8, r8, r9
000630  8b140c11  add.s r9, r24, r16
000634  8b1ce430  div.s r25, r8, r14
000638  6307afee  loadli.w r14,  -2224(r30)
00063c  1ff4f4ff  addli r8, r9, -1
000640  9f74f9ff  addli r9, r18, -1
000644  0b1d0431  div.s r26, r8, r16
000648  0b943411  add.s r8, r9, r19
00064c  8b94d410  add.s r9, r9, r13
000650  8b95e538  mod.s r11, r11, r14
000654  6347efee  loadli.w r14,  -2188(r30)
000658  8b173431  div.s r15, r8, r19
00065c  63449fee  loadli.w r8,  -2228(r30)
000660  8b94d430  div.s r9, r9, r13
000664  0b16e638  mod.s r12, r12, r14
000668  0b948520  mul.s r8, r11, r8
00066c  e7078fee  storeli.w r8, -2184(r30)
000670  6304dfee  loadli.w r8,  -2200(r30)
000674  0b148620  mul.s r8, r12, r8
000678  e7478fee  storeli.w r8, -2180(r30)
00067c  b7b02100  beq r3, r2, 44
000680  1f330000  addli r6, zero, 3
000684  37b86100  beq r3, r6, 524
000688  1f880700  addli r16, r15, 0
00068c  1f8c0d00  addli r24, r27, 0
000690  bba06101  bneq r3, r22, 40
000694  93810200  seteq r3, r5, zero
000698  13030c02  setneq r6, r24, zero
00069c  97816100  and r3, r3, r6
0006a0  37e00100  beq r3, zero, 24
0006a4  5b400000  j 512
0006a8  93810200  seteq r3, r5, zero
0006ac  1f880700  addli r16, r15, 0
0006b0  1f8c0d00  addli r24, r27, 0
0006b4  bbc70100  bneq r3, zero, 496
0006b8  3b930200  bneq r5, zero, 196
0006bc  3f032d00  blt.s r26, r2, 192
0006c0  e3412fef  loadli.w r3,  -2156(r30)
0006c4  9ff11100  addli r3, r3, 15
0006c8  8b927138  mod.s r5, r3, r7
0006cc  8b925118  sub.s r5, r3, r5
0006d0  9f010000  addli r3, zero, 0
0006d4  1bb36200  slli r6, r5, 6
0006d8  5b020000  j 16
0006dc  9f910100  addli r3, r3, 1
0006e0  1f880700  addli r16, r15, 0
0006e4  37e2a101  beq r3, r26, 152
0006e8  bfdf24fe  blt.s r9, r2, -12
0006ec  63083fef  loadli.w r16,  -2152(r30)
0006f0  63471fef  loadli.w r14,  -2164(r30)
0006f4  0b940121  mul.s r8, r3, r16
0006f8  8b157430  div.s r11, r8, r7
0006fc  0b178718  sub.s r14, r14, r8
000700  8b1de840  min.s r27, r16, r14
000704  1bb64500  slli r12, r11, 4
000708  0b14c418  sub.s r8, r8, r12
00070c  6346ffee  loadli.w r12,  -2180(r30)
000710  1b342400  slli r8, r8, 2
000714  0b16b350  fmac.s r12, r6, r11
000718  8b158610  add.s r11, r12, r8
00071c  63442fef  loadli.w r8,  -2156(r30)
000720  1f860400  addli r12, r9, 0
000724  db020000  j 20
000728  1f76f6ff  addli r12, r12, -1
00072c  8b954510  add.s r11, r11, r4
000730  0b14d418  sub.s r8, r8, r13
000734  b72e06fe  beq r12, zero, -88
000738  0b998640  min.s r18, r13, r8
00073c  bf3f29fe  blt.s r18, r2, -20
000740  63074fef  loadli.w r14,  -2144(r30)
000744  634a3fef  loadli.w r20,  -2148(r30)
000748  7d900800  xwait r17, 0
00074c  1d000000  lock zero, zero
000750  010b0000  ds_cfg r22, zero, 0
000754  810d0002  ds_cfg r27, zero, 1
000758  8102001c  ds_cfg r5, zero, 14
00075c  810d001a  ds_cfg r27, zero, 13
000760  0b17e538  mod.s r14, r10, r14
000764  1f150500  addli r10, r10, 1
000768  0b1a5751  fmac.s r20, r14, r21
00076c  c1052a05  shuffle_coa r11, r20, r18, 2
000770  1d100000  unlock zero
000774  7d800000  xsignal r1, 0
000778  5bf6ffff  j -80
00077c  3fc42cfe  blt.s r25, r2, -752
000780  e3412fef  loadli.w r3,  -2156(r30)
000784  13030c02  setneq r6, r24, zero
000788  1b741800  setlti r8, r16, 1
00078c  1f060000  addli r12, zero, 0
000790  1f0d0000  addli r26, zero, 0
000794  9ff11100  addli r3, r3, 15
000798  8b927138  mod.s r5, r3, r7
00079c  97148300  or r9, r6, r8
0007a0  8b915118  sub.s r3, r3, r5
0007a4  9ff2fcff  addli r5, r25, -1
0007a8  9bb56100  slli r11, r3, 6
0007ac  db010000  j 12
0007b0  1f1d0d00  addli r26, r26, 1
0007b4  37639dff  beq r26, r25, -808
0007b8  6347cfee  loadli.w r14,  -2204(r30)
0007bc  63042fef  loadli.w r8,  -2160(r30)
0007c0  0b13ed20  mul.s r6, r26, r14
0007c4  0b146418  sub.s r8, r8, r6
0007c8  8b1d8740  min.s r27, r14, r8
0007cc  37810400  beq r9, zero, 64
0007d0  63040fef  loadli.w r8,  -2176(r30)
0007d4  37205d00  beq r26, r5, 8
0007d8  1f040000  addli r8, zero, 0
0007dc  0b136410  add.s r6, r8, r6
0007e0  6304bfee  loadli.w r8,  -2216(r30)
0007e4  0b13b311  add.s r6, r6, r27
0007e8  0b138330  div.s r6, r6, r8
0007ec  4b1fc3fe  ble.s r6, r12, -60
0007f0  0b14c318  sub.s r8, r6, r12
0007f4  7d800b00  xsignal r23, 0
0007f8  7d800300  xsignal r7, 0
0007fc  1f74f4ff  addli r8, r8, -1
000800  bb5f04fe  bneq r8, zero, -12
000804  1f060300  addli r12, r6, 0
000808  5bf5ffff  j -88
00080c  0b147330  div.s r8, r6, r7
000810  6309ffee  loadli.w r18,  -2184(r30)
000814  634c2fef  loadli.w r24,  -2156(r30)
000818  1f8a0700  addli r20, r15, 0
00081c  1b374400  slli r14, r8, 4
000820  0b998550  fmac.s r18, r11, r8
000824  0b17e318  sub.s r14, r6, r14
000828  1b342700  slli r8, r14, 2
00082c  0b148910  add.s r8, r18, r8
000830  db020000  j 20
000834  1f7afaff  addli r20, r20, -1
000838  0b14c411  add.s r8, r8, r28
00083c  0b1c3c19  sub.s r24, r24, r19
000840  374e0afe  beq r20, zero, -112
000844  bfcf2dfe  blt.s r27, r2, -16
000848  63074fef  loadli.w r14,  -2144(r30)
00084c  1f880a00  addli r16, r21, 0
000850  e34a3fef  loadli.w r21,  -2148(r30)
000854  7d900800  xwait r17, 0
000858  1d000000  lock zero, zero
00085c  0b998941  min.s r18, r19, r24
000860  010b0000  ds_cfg r22, zero, 0
000864  01090002  ds_cfg r18, zero, 1
000868  8101001c  ds_cfg r3, zero, 14
00086c  810d001a  ds_cfg r27, zero, 13
000870  0b17e538  mod.s r14, r10, r14
000874  1f150500  addli r10, r10, 1
000878  8b1a0751  fmac.s r21, r14, r16
00087c  21942a03  shuffle_batch r8, r21, r18, 1
000880  1d100000  unlock zero
000884  7d800000  xsignal r1, 0
000888  9f0a0800  addli r21, r16, 0
00088c  5bf5ffff  j -88
000890  1f8c0d00  addli r24, r27, 0
000894  1f880700  addli r16, r15, 0
000898  97115c00  or r3, r24, r5
00089c  93810100  seteq r3, r3, zero
0008a0  37e801fe  beq r3, zero, -488
0008a4  3b130c00  bneq r24, zero, 196
0008a8  3f832c00  blt.s r25, r2, 192
0008ac  e3412fef  loadli.w r3,  -2156(r30)
0008b0  1f030000  addli r6, zero, 0
0008b4  9ff11100  addli r3, r3, 15
0008b8  8b927138  mod.s r5, r3, r7
0008bc  8b915118  sub.s r3, r3, r5
0008c0  9bb26100  slli r5, r3, 6
0008c4  5b020000  j 16
0008c8  1f130300  addli r6, r6, 1
0008cc  1f880700  addli r16, r15, 0
0008d0  37629301  beq r6, r25, 152
0008d4  bf5f28fe  blt.s r16, r2, -12
0008d8  6349cfee  loadli.w r18,  -2204(r30)
0008dc  63072fef  loadli.w r14,  -2160(r30)
0008e0  0b142321  mul.s r8, r6, r18
0008e4  8b157430  div.s r11, r8, r7
0008e8  0b178718  sub.s r14, r14, r8
0008ec  8b1de940  min.s r27, r18, r14
0008f0  1bb64500  slli r12, r11, 4
0008f4  0b14c418  sub.s r8, r8, r12
0008f8  6306ffee  loadli.w r12,  -2184(r30)
0008fc  1b342400  slli r8, r8, 2
000900  0b96b250  fmac.s r12, r5, r11
000904  e3452fef  loadli.w r11,  -2156(r30)
000908  0b1c8610  add.s r24, r12, r8
00090c  1f040800  addli r8, r16, 0
000910  db020000  j 20
000914  1f74f4ff  addli r8, r8, -1
000918  0b1ccc11  add.s r24, r24, r28
00091c  8b953519  sub.s r11, r11, r19
000920  b72e04fe  beq r8, zero, -88
000924  bfcf2dfe  blt.s r27, r2, -16
000928  63064fef  loadli.w r12,  -2144(r30)
00092c  63493fef  loadli.w r18,  -2148(r30)
000930  7d900800  xwait r17, 0
000934  1d000000  lock zero, zero
000938  0b97b940  min.s r14, r19, r11
00093c  010b0000  ds_cfg r22, zero, 0
000940  01070002  ds_cfg r14, zero, 1
000944  8101001c  ds_cfg r3, zero, 14
000948  810d001a  ds_cfg r27, zero, 13
00094c  0b16c538  mod.s r12, r10, r12
000950  1f150500  addli r10, r10, 1
000954  0b195651  fmac.s r18, r12, r21
000958  211ce902  shuffle_batch r24, r18, r14, 1
00095c  1d100000  unlock zero
000960  7d800000  xsignal r1, 0
000964  5bf6ffff  j -80
000968  bf1c2dfc  blt.s r26, r2, -1244
00096c  e3412fef  loadli.w r3,  -2156(r30)
000970  6343afee  loadli.w r6,  -2220(r30)
000974  9f0c0000  addli r25, zero, 0
000978  1f0c0000  addli r24, zero, 0
00097c  9ff11100  addli r3, r3, 15
000980  9f77f3ff  addli r15, r6, -1
000984  8b927138  mod.s r5, r3, r7
000988  8b915118  sub.s r3, r3, r5
00098c  9f72fdff  addli r5, r26, -1
000990  1bba6100  slli r20, r3, 6
000994  db010000  j 12
000998  1f1c0c00  addli r24, r24, 1
00099c  b74bacfd  beq r24, r26, -1296
0009a0  e3053fef  loadli.w r11,  -2152(r30)
0009a4  63441fef  loadli.w r8,  -2164(r30)
0009a8  0b13bc20  mul.s r6, r24, r11
0009ac  0b146418  sub.s r8, r8, r6
0009b0  8b9d8540  min.s r27, r11, r8
0009b4  3f822400  blt.s r9, r2, 128
0009b8  0b147330  div.s r8, r6, r7
0009bc  6346ffee  loadli.w r12,  -2180(r30)
0009c0  9b354400  slli r11, r8, 4
0009c4  0b168a50  fmac.s r12, r20, r8
0009c8  8b15b318  sub.s r11, r6, r11
0009cc  1bb42500  slli r8, r11, 2
0009d0  8b158610  add.s r11, r12, r8
0009d4  63442fef  loadli.w r8,  -2156(r30)
0009d8  1f860400  addli r12, r9, 0
0009dc  db020000  j 20
0009e0  1f76f6ff  addli r12, r12, -1
0009e4  8b954510  add.s r11, r11, r4
0009e8  0b14d418  sub.s r8, r8, r13
0009ec  37210600  beq r12, zero, 72
0009f0  0b988640  min.s r16, r13, r8
0009f4  bf3f28fe  blt.s r16, r2, -20
0009f8  63074fef  loadli.w r14,  -2144(r30)
0009fc  63493fef  loadli.w r18,  -2148(r30)
000a00  7d900800  xwait r17, 0
000a04  1d000000  lock zero, zero
000a08  010b0000  ds_cfg r22, zero, 0
000a0c  810d0002  ds_cfg r27, zero, 1
000a10  8101001c  ds_cfg r3, zero, 14
000a14  810d001a  ds_cfg r27, zero, 13
000a18  0b17e538  mod.s r14, r10, r14
000a1c  1f150500  addli r10, r10, 1
000a20  0b195751  fmac.s r18, r14, r21
000a24  c1050905  shuffle_coa r11, r18, r16, 2
000a28  1d100000  unlock zero
000a2c  7d800000  xsignal r1, 0
000a30  5bf6ffff  j -80
000a34  1f840700  addli r8, r15, 0
000a38  37205c00  beq r24, r5, 8
000a3c  1f040000  addli r8, zero, 0
000a40  0b136410  add.s r6, r8, r6
000a44  6344afee  loadli.w r8,  -2220(r30)
000a48  0b13b311  add.s r6, r6, r27
000a4c  0b138330  div.s r6, r6, r8
000a50  4b2d93ff  ble.s r6, r25, -184
000a54  0b149319  sub.s r8, r6, r25
000a58  7d800b00  xsignal r23, 0
000a5c  7d800300  xsignal r7, 0
000a60  1f74f4ff  addli r8, r8, -1
000a64  bb5f04fe  bneq r8, zero, -12
000a68  9f0c0300  addli r25, r6, 0
000a6c  dbe5ffff  j -212
000a70  e301ffed  loadli.w r3,  -2312(r30)
000a74  e70f0fec  storeli.w zero, -2312(r30)
000a78  9f910100  addli r3, r3, 1
000a7c  67449fee  storeli.w r9, -2236(r30)
000a80  bfbb21fc  blt.s r3, r2, -1300
000a84  db5bffff  j -1316
000a88  e3429f02  loadli.w r5,  332(r30)
000a8c  e3465f02  loadli.w r13,  300(r30)
000a90  67095fee  storeli.w r5, -2160(r30)
000a94  e3029f02  loadli.w r5,  328(r30)
000a98  e7485fee  storeli.w r5, -2164(r30)
000a9c  e3428f02  loadli.w r5,  324(r30)
000aa0  67085fee  storeli.w r5, -2176(r30)
000aa4  9f320000  addli r5, zero, 3
000aa8  370f5206  beq r4, r5, 4032
000aac  e3421f03  loadli.w r5,  396(r30)
000ab0  9f440000  addli r9, zero, 4
000ab4  670a5fee  storeli.w r5, -2144(r30)
000ab8  e3021f03  loadli.w r5,  392(r30)
000abc  e7495fee  storeli.w r5, -2148(r30)
000ac0  e3420f03  loadli.w r5,  388(r30)
000ac4  e7095fee  storeli.w r5, -2152(r30)
000ac8  b720920a  beq r4, r9, 5160
000acc  1f710000  addli r2, zero, 7
000ad0  bb1e220e  bneq r4, r2, 8100
000ad4  2b02803f  lui r4, 260096
000ad8  63015f01  loadli.w r2,  168(r30)
000adc  63491fee  loadli.w r18,  -2292(r30)
000ae0  3b420100  bneq r2, zero, 144
000ae4  33012028  .word 0x28200133
000ae8  93a12700  seteq.d r3, r[16:17], r[3:4]
000aec  2b01803f  lui r2, 260096
000af0  bbf10100  bneq r3, zero, 124
000af4  00a00000  mfence { lm }
000af8  1f016000  addli r2, zero, 48
000afc  ab0100f0  lui r3, 983040
000b00  1f02cff7  addli r4, r30, -1056
000b04  17113100  or r2, r2, r3
000b08  7fa14700  l_gm2lm r2, r4, 0(r[16:17])
000b0c  00a00200  mfence { lm, gm }
000b10  6301cff7  loadli.w r2,  -1056(r30)
000b14  e341cff7  loadli.w r3,  -1052(r30)
000b18  6302dff7  loadli.w r4,  -1048(r30)
000b1c  e342dff7  loadli.w r5,  -1044(r30)
000b20  6303eff7  loadli.w r6,  -1040(r30)
000b24  e343eff7  loadli.w r7,  -1036(r30)
000b28  63440ff8  loadli.w r8,  -1020(r30)
000b2c  e3041ff8  loadli.w r9,  -1016(r30)
000b30  63451ff8  loadli.w r10,  -1012(r30)
000b34  0b613148  max.f r2, r2, r3
000b38  8b615248  max.f r3, r4, r5
000b3c  0b627348  max.f r4, r6, r7
000b40  e302fff7  loadli.w r5,  -1032(r30)
000b44  6343fff7  loadli.w r6,  -1028(r30)
000b48  e3030ff8  loadli.w r7,  -1024(r30)
000b4c  8be14148  max.f r3, r3, r4
000b50  8be26248  max.f r5, r5, r6
000b54  0be38348  max.f r6, r7, r8
000b58  8be3a448  max.f r7, r9, r10
000b5c  0b613148  max.f r2, r2, r3
000b60  0b627348  max.f r4, r6, r7
000b64  8be14248  max.f r3, r5, r4
000b68  0b613148  max.f r2, r2, r3
000b6c  0f022118  div.f.rn r4, r2, r2
000b70  63019f01  loadli.w r2,  200(r30)
000b74  9f020fef  addli r5, r30, -2176
000b78  1f030000  addli r6, zero, 0
000b7c  67492fee  storeli.w r2, -2156(r30)
000b80  6b518f01  load.d r[3:4], 24(r30)
000b84  73b02200  store.d r[3:4], 0(r5)
000b88  1f01cff7  addli r2, r30, -1056
000b8c  9f411000  addli r3, zero, 12
000b90  8b126110  add.s r5, r2, r6
000b94  1f130300  addli r6, r6, 1
000b98  93033304  setlt.u r7, r6, r3
000b9c  73800200  store.b zero, 0(r5)
000ba0  bbcf03fe  bneq r7, zero, -16
000ba4  63411f01  loadli.w r2,  140(r30)
000ba8  9f016fef  addli r3, r30, -2128
000bac  670b1fef  storeli.w r17, -2128(r30)
000bb0  674bcfee  storeli.w r12, -2124(r30)
000bb4  e70b1fee  storeli.w r1, -2120(r30)
000bb8  1b312100  slli r2, r2, 2
000bbc  8b912110  add.s r3, r3, r2
000bc0  e3830100  loadli.w r7,  0(r3)
000bc4  9f110000  addli r3, zero, 1
000bc8  bfba330e  blt.s r7, r3, 7852
000bcc  63069f01  loadli.w r12,  200(r30)
000bd0  9f02cff7  addli r5, r30, -1056
000bd4  63435f02  loadli.w r6,  300(r30)
000bd8  1f040000  addli r8, zero, 0
000bdc  9f05dfee  addli r11, r30, -2200
000be0  1f2a0000  addli r20, zero, 2
000be4  9f1a4000  addli r21, zero, 33
000be8  1f5b0000  addli r22, zero, 5
000bec  9f0b4000  addli r23, zero, 32
000bf0  1f0c0001  addli r24, zero, 128
000bf4  9f0d0000  addli r27, zero, 0
000bf8  e7477fee  storeli.w r7, -2180(r30)
000bfc  0b912210  add.s r2, r5, r2
000c00  9ff2f0ff  addli r5, r1, -1
000c04  9b302600  slli r1, r12, 2
000c08  b3149628  .word 0x289614b3
000c0c  e7072fee  storeli.w r2, -2184(r30)
000c10  67475fee  storeli.w r5, -2188(r30)
000c14  67091fee  storeli.w r1, -2160(r30)
000c18  8b900058  neg.s r1, r1
000c1c  73b09500  store.d r[10:11], 0(r11)
000c20  e7481fee  storeli.w r1, -2164(r30)
000c24  9f70f3ff  addli r1, r6, -1
000c28  67461fee  storeli.w r1, -2204(r30)
000c2c  5b050000  j 40
000c30  9f407000  addli r1, zero, 60
000c34  7d800000  xsignal r1, 0
000c38  7d900000  xwait r1, 0
000c3c  63491fee  loadli.w r18,  -2292(r30)
000c40  e343ffee  loadli.w r7,  -2180(r30)
000c44  6301ffee  loadli.w r2,  -2184(r30)
000c48  e342efee  loadli.w r5,  -2188(r30)
000c4c  1f140400  addli r8, r8, 1
000c50  b718740e  beq r8, r7, 7716
000c54  67008100  storeli.w r8, 0(r2)
000c58  e300dff7  loadli.w r1,  -1048(r30)
000c5c  bbcf50fe  bneq r1, r5, -16
000c60  e344cff7  loadli.w r9,  -1052(r30)
000c64  63453fee  loadli.w r10,  -2276(r30)
000c68  e3052fee  loadli.w r11,  -2288(r30)
000c6c  e300cff7  loadli.w r1,  -1056(r30)
000c70  63073fee  loadli.w r14,  -2280(r30)
000c74  6341ffed  loadli.w r2,  -2308(r30)
000c78  9f0cdfee  addli r25, r30, -2200
000c7c  e342afed  loadli.w r5,  -2348(r30)
000c80  1f0d0fef  addli r26, r30, -2176
000c84  6bd80c00  load.d r[17:18], 0(r25)
000c88  8b93a420  mul.s r7, r9, r10
000c8c  0b93e020  mul.s r6, r1, r14
000c90  0b91e050  fmac.s r2, r1, r14
000c94  8b937518  sub.s r7, r11, r7
000c98  e3452fee  loadli.w r11,  -2284(r30)
000c9c  8b137540  min.s r7, r10, r7
000ca0  0b936518  sub.s r6, r11, r6
000ca4  3315a12c  .word 0x2ca11533
000ca8  0b910348  max.s r2, r7, zero
000cac  8b196740  min.s r19, r14, r6
000cb0  63034fee  loadli.w r6,  -2272(r30)
000cb4  6b570d00  load.d r[15:16], 0(r26)
000cb8  0b1e6130  div.s r28, r2, r6
000cbc  6301afed  loadli.w r2,  -2352(r30)
000cc0  0b330521  mul.sl r[7:8], r[11:12], r[17:18]
000cc4  17384803  sll.d r[17:18], r[17:18], r20
000cc8  17334303  sll.d r[7:8], r[7:8], r20
000ccc  8b922450  fmac.s r5, r9, r2
000cd0  0b910948  max.s r2, r19, zero
000cd4  3395a22a  .word 0x2aa29533
000cd8  8b226710  add.ul r[6:7], r[15:16], r[7:8]
000cdc  17354503  sll.d r[11:12], r[11:12], r20
000ce0  0ba3a210  add.ul r[7:8], r[6:7], r[11:12]
000ce4  37743900  beq r18, r3, 284
000ce8  9f320000  addli r5, zero, 3
000cec  37445900  beq r18, r5, 272
000cf0  3b504901  bneq r18, r20, 20
000cf4  93800000  seteq r1, r1, zero
000cf8  93820402  setneq r5, r9, zero
000cfc  97805000  and r1, r1, r5
000d00  3ba40000  bneq r1, zero, 264
000d04  e340cfee  loadli.w r1,  -2204(r30)
000d08  8b902010  add.s r1, r1, r2
000d0c  8b99d030  div.s r19, r1, r13
000d10  bf8c39fe  blt.s r19, r3, -224
000d14  9f703e00  addli r1, r28, 31
000d18  9f0c0000  addli r25, zero, 0
000d1c  1f0d0100  addli r26, r2, 0
000d20  0b977031  div.s r14, r1, r23
000d24  9b302e00  slli r1, r28, 2
000d28  9b80c007  andi r1, r1, 124
000d2c  db070000  j 60
000d30  15050004  dma_cfg r10, zero, zero, 2
000d34  95848507  dma_cfg r9, r11, r24, 3
000d38  e3022fef  loadli.w r5,  -2160(r30)
000d3c  95022c0b  dma_cfg r5, r24, r18, 5
000d40  158ce708  dma_cfg r24, r15, r14, 4
000d44  35000000  dma_run zero
000d48  1500300a  dma_cfg zero, zero, r3, 5
000d4c  15000010  dma_cfg zero, zero, zero, 8
000d50  1d100b00  unlock r22
000d54  7d800b00  xsignal r23, 0
000d58  9f9d0d00  addli r27, r27, 1
000d5c  9f9c0c00  addli r25, r25, 1
000d60  0b1ddd18  sub.s r26, r26, r13
000d64  37bb3cff  beq r25, r19, -308
000d68  8b94dc20  mul.s r9, r25, r13
000d6c  8b129118  sub.s r5, r2, r9
000d70  0b995640  min.s r18, r13, r5
000d74  bf2f39fe  blt.s r18, r3, -24
000d78  7d900a00  xwait r21, 0
000d7c  3f6f3efe  blt.s r28, r3, -40
000d80  e3423fef  loadli.w r5,  -2148(r30)
000d84  63452fef  loadli.w r10,  -2156(r30)
000d88  e3053fef  loadli.w r11,  -2152(r30)
000d8c  1d000b00  lock zero, r22
000d90  e3074fef  loadli.w r15,  -2144(r30)
000d94  15000012  dma_cfg zero, zero, zero, 9
000d98  15004000  dma_cfg zero, zero, r4, 0
000d9c  15001010  dma_cfg zero, zero, r1, 8
000da0  15800102  dma_cfg zero, r3, zero, 1
000da4  8b94a420  mul.s r9, r9, r10
000da8  8b925d38  mod.s r5, r27, r5
000dac  b394942a  .word 0x2a9494b3
000db0  97b44403  sll.d r[10:11], r[10:11], r20
000db4  8b95f250  fmac.s r11, r5, r15
000db8  8b249310  add.ul r[10:11], r[7:8], r[10:11]
000dbc  9b377900  slli r15, r18, 7
000dc0  3f203600  blt.s r12, r3, 8
000dc4  dbedffff  j -148
000dc8  8b92a641  min.s r5, r13, r26
000dcc  63491fef  loadli.w r18,  -2164(r30)
000dd0  15093c0a  dma_cfg r18, r24, r3, 5
000dd4  158ce708  dma_cfg r24, r15, r14, 4
000dd8  8b970258  neg.s r15, r5
000ddc  15050004  dma_cfg r10, zero, zero, 2
000de0  95848507  dma_cfg r9, r11, r24, 3
000de4  8ba40411  add.ul r[10:11], r[10:11], r[17:18]
000de8  9f970700  addli r15, r15, 1
000dec  9f850501  addli r11, r11, 128
000df0  35000000  dma_run zero
000df4  bbaf07fe  bneq r15, zero, -24
000df8  5beaffff  j -176
000dfc  97901400  or r1, r9, r1
000e00  93800000  seteq r1, r1, zero
000e04  378c00fe  beq r1, zero, -256
000e08  e342afee  loadli.w r5,  -2220(r30)
000e0c  8b105e10  add.s r1, r28, r5
000e10  9ff0f0ff  addli r1, r1, -1
000e14  8b9c5030  div.s r25, r1, r5
000e18  3fe83cfe  blt.s r25, r3, -488
000e1c  9b307100  slli r1, r2, 7
000e20  1f070000  addli r14, zero, 0
000e24  db070000  j 60
000e28  15050004  dma_cfg r10, zero, zero, 2
000e2c  95048d07  dma_cfg r9, r26, r24, 3
000e30  e3022fef  loadli.w r5,  -2160(r30)
000e34  95022c0a  dma_cfg r5, r24, r2, 5
000e38  158cb008  dma_cfg r24, r1, r11, 4
000e3c  35000000  dma_run zero
000e40  1500300a  dma_cfg zero, zero, r3, 5
000e44  15000010  dma_cfg zero, zero, zero, 8
000e48  9f1a4000  addli r21, zero, 33
000e4c  1d100b00  unlock r22
000e50  7d800b00  xsignal r23, 0
000e54  9f9d0d00  addli r27, r27, 1
000e58  1f170700  addli r14, r14, 1
000e5c  375797ff  beq r14, r25, -556
000e60  bfef39fe  blt.s r19, r3, -8
000e64  e344afee  loadli.w r9,  -2220(r30)
000e68  7d900a00  xwait r21, 0
000e6c  0b159720  mul.s r10, r14, r9
000e70  8b12ae18  sub.s r5, r28, r10
000e74  8b945440  min.s r9, r9, r5
000e78  3fef34fe  blt.s r9, r3, -40
000e7c  e3423fef  loadli.w r5,  -2148(r30)
000e80  630d3fef  loadli.w r26,  -2152(r30)
000e84  e3074fef  loadli.w r15,  -2144(r30)
000e88  9ff53400  addli r11, r9, 31
000e8c  331a452d  .word 0x2d451a33
000e90  1d000b00  lock zero, r22
000e94  15000012  dma_cfg zero, zero, zero, 9
000e98  15004000  dma_cfg zero, zero, r4, 0
000e9c  8b957531  div.s r11, r11, r23
000ea0  8b925d38  mod.s r5, r27, r5
000ea4  0b9df250  fmac.s r26, r5, r15
000ea8  9f270000  addli r15, zero, 2
000eac  9bb22400  slli r5, r9, 2
000eb0  9734fa02  sll.d r[10:11], r[21:22], r15
000eb4  9b82c207  andi r5, r5, 124
000eb8  15005010  dma_cfg zero, zero, r5, 8
000ebc  1f2a0000  addli r20, zero, 2
000ec0  15800102  dma_cfg zero, r3, zero, 1
000ec4  8b249310  add.ul r[10:11], r[7:8], r[10:11]
000ec8  3f203600  blt.s r12, r3, 8
000ecc  dbebffff  j -164
000ed0  e3421fef  loadli.w r5,  -2164(r30)
000ed4  95023c0a  dma_cfg r5, r24, r3, 5
000ed8  158cb008  dma_cfg r24, r1, r11, 4
000edc  9f050100  addli r11, r2, 0
000ee0  15050004  dma_cfg r10, zero, zero, 2
000ee4  95048d07  dma_cfg r9, r26, r24, 3
000ee8  8ba40411  add.ul r[10:11], r[10:11], r[17:18]
000eec  9ff5f5ff  addli r11, r11, -1
000ef0  1f0d0d01  addli r26, r26, 128
000ef4  35000000  dma_run zero
000ef8  bbaf05fe  bneq r11, zero, -24
000efc  dbe8ffff  j -188
000f00  63045f01  loadli.w r8,  168(r30)
000f04  674d0ff6  storeli.w zero, -1068(r30)
000f08  674a0fee  storeli.w zero, -2140(r30)
000f0c  e74f0ffe  storeli.w zero, -4(r30)
000f10  ab04803f  lui r9, 260096
000f14  e7489fee  storeli.w r9, -2164(r30)
000f18  e7099fee  storeli.w r9, -2152(r30)
000f1c  bb550400  bneq r8, zero, 372
000f20  33048028  .word 0x28800433
000f24  93248100  seteq.d r9, r[3:4], r[9:10]
000f28  2b04803f  lui r8, 260096
000f2c  bbf10400  bneq r9, zero, 124
000f30  00a00000  mfence { lm }
000f34  1f046000  addli r8, zero, 48
000f38  ab0400f0  lui r9, 983040
000f3c  1f05cff7  addli r10, r30, -1056
000f40  17149400  or r8, r8, r9
000f44  7f24a100  l_gm2lm r8, r10, 0(r[3:4])
000f48  00a00200  mfence { lm, gm }
000f4c  6301cff7  loadli.w r2,  -1056(r30)
000f50  e341cff7  loadli.w r3,  -1052(r30)
000f54  6304dff7  loadli.w r8,  -1048(r30)
000f58  e344dff7  loadli.w r9,  -1044(r30)
000f5c  6305eff7  loadli.w r10,  -1040(r30)
000f60  e345eff7  loadli.w r11,  -1036(r30)
000f64  63490ff8  loadli.w r18,  -1020(r30)
000f68  630a1ff8  loadli.w r20,  -1016(r30)
000f6c  634b1ff8  loadli.w r22,  -1012(r30)
000f70  0b613148  max.f r2, r2, r3
000f74  8b619448  max.f r3, r8, r9
000f78  0b64b548  max.f r8, r10, r11
000f7c  e304fff7  loadli.w r9,  -1032(r30)
000f80  6345fff7  loadli.w r10,  -1028(r30)
000f84  e3050ff8  loadli.w r11,  -1024(r30)
000f88  8be18148  max.f r3, r3, r8
000f8c  8be4a448  max.f r9, r9, r10
000f90  0be52549  max.f r10, r11, r18
000f94  8b656a49  max.f r11, r20, r22
000f98  0b613148  max.f r2, r2, r3
000f9c  0b64b548  max.f r8, r10, r11
000fa0  8be18448  max.f r3, r9, r8
000fa4  0b643148  max.f r8, r2, r3
000fa8  33012028  .word 0x28200133
000fac  93212300  seteq.d r3, r[7:8], r[3:4]
000fb0  2b01803f  lui r2, 260096
000fb4  bbf10100  bneq r3, zero, 124
000fb8  00a00000  mfence { lm }
000fbc  1f016000  addli r2, zero, 48
000fc0  ab0100f0  lui r3, 983040
000fc4  9f04cff7  addli r9, r30, -1056
000fc8  17113100  or r2, r2, r3
000fcc  7f219300  l_gm2lm r2, r9, 0(r[7:8])
000fd0  00a00200  mfence { lm, gm }
000fd4  6301cff7  loadli.w r2,  -1056(r30)
000fd8  e341cff7  loadli.w r3,  -1052(r30)
000fdc  6303dff7  loadli.w r6,  -1048(r30)
000fe0  e343dff7  loadli.w r7,  -1044(r30)
000fe4  e304eff7  loadli.w r9,  -1040(r30)
000fe8  6345eff7  loadli.w r10,  -1036(r30)
000fec  e3450ff8  loadli.w r11,  -1020(r30)
000ff0  63091ff8  loadli.w r18,  -1016(r30)
000ff4  634a1ff8  loadli.w r20,  -1012(r30)
000ff8  0b613148  max.f r2, r2, r3
000ffc  8b617348  max.f r3, r6, r7
001000  0be3a448  max.f r6, r9, r10
001004  e303fff7  loadli.w r7,  -1032(r30)
001008  e344fff7  loadli.w r9,  -1028(r30)
00100c  63050ff8  loadli.w r10,  -1024(r30)
001010  8be16148  max.f r3, r3, r6
001014  8be39348  max.f r7, r7, r9
001018  8b64b548  max.f r9, r10, r11
00101c  0b654949  max.f r10, r18, r20
001020  0b613148  max.f r2, r2, r3
001024  0be3a448  max.f r6, r9, r10
001028  8be16348  max.f r3, r7, r6
00102c  0b613148  max.f r2, r2, r3
001030  33036028  .word 0x28600333
001034  93216200  seteq.d r3, r[5:6], r[7:8]
001038  bb800100  bneq r3, zero, 32
00103c  00a00000  mfence { lm }
001040  9f016000  addli r3, zero, 48
001044  2b0300f0  lui r6, 983040
001048  9f03cff7  addli r7, r30, -1056
00104c  97916100  or r3, r3, r6
001050  ff217200  l_gm2lm r3, r7, 0(r[5:6])
001054  00a00200  mfence { lm, gm }
001058  b3013028  .word 0x283001b3
00105c  93a13700  seteq.d r3, r[16:17], r[4:5]
001060  bb800100  bneq r3, zero, 32
001064  00a00000  mfence { lm }
001068  9f016000  addli r3, zero, 48
00106c  2b0200f0  lui r4, 983040
001070  9f02cff7  addli r5, r30, -1056
001074  97914100  or r3, r3, r4
001078  ffa15700  l_gm2lm r3, r5, 0(r[16:17])
00107c  00a00200  mfence { lm, gm }
001080  8f018418  div.f.rn r3, r8, r8
001084  0f012118  div.f.rn r2, r2, r2
001088  e7483fee  storeli.w r3, -2164(r30)
00108c  e7092fee  storeli.w r2, -2152(r30)
001090  63018f01  loadli.w r2,  192(r30)
001094  9f028fed  addli r5, r30, -2368
001098  1f037fed  addli r6, r30, -2376
00109c  e34c7f02  loadli.w r25,  316(r30)
0010a0  1f020000  addli r4, zero, 0
0010a4  67492fee  storeli.w r2, -2156(r30)
0010a8  63417f01  loadli.w r2,  188(r30)
0010ac  67422fee  storeli.w r2, -2268(r30)
0010b0  6b518f00  load.d r[3:4], 8(r30)
0010b4  73b02200  store.d r[3:4], 0(r5)
0010b8  6b510f00  load.d r[3:4], 0(r30)
0010bc  73302300  store.d r[3:4], 0(r6)
0010c0  1f01cff7  addli r2, r30, -1056
0010c4  9f411000  addli r3, zero, 12
0010c8  8b124110  add.s r5, r2, r4
0010cc  1f120200  addli r4, r4, 1
0010d0  13033204  setlt.u r6, r4, r3
0010d4  73800200  store.b zero, 0(r5)
0010d8  bb4f03fe  bneq r6, zero, -16
0010dc  63411f01  loadli.w r2,  140(r30)
0010e0  9f016fef  addli r3, r30, -2128
0010e4  670b1fef  storeli.w r17, -2128(r30)
0010e8  674bcfee  storeli.w r12, -2124(r30)
0010ec  e70b1fee  storeli.w r1, -2120(r30)
0010f0  1f120000  addli r4, zero, 1
0010f4  1b312100  slli r2, r2, 2
0010f8  8b912110  add.s r3, r3, r2
0010fc  e3800100  loadli.w r1,  0(r3)
001100  674b1fec  storeli.w r1, -2380(r30)
001104  bfc5400c  blt.s r1, r4, 6512
001108  e300cf02  loadli.w r1,  352(r30)
00110c  e3010f03  loadli.w r3,  384(r30)
001110  9f04cff7  addli r9, r30, -1056
001114  63434f02  loadli.w r6,  292(r30)
001118  63446f02  loadli.w r8,  308(r30)
00111c  e3023f02  loadli.w r5,  280(r30)
001120  e3457f01  loadli.w r11,  188(r30)
001124  63078f01  loadli.w r14,  192(r30)
001128  e3035f02  loadli.w r7,  296(r30)
00112c  1f050000  addli r10, zero, 0
001130  1f060000  addli r12, zero, 0
001134  1f080000  addli r16, zero, 0
001138  1f3c1000  addli r24, zero, 11
00113c  67490fec  storeli.w zero, -2412(r30)
001140  e70f0fec  storeli.w zero, -2312(r30)
001144  8b903048  max.s r1, r1, r3
001148  9f014fed  addli r3, r30, -2400
00114c  6708bfee  storeli.w r11, -2176(r30)
001150  6709efee  storeli.w r14, -2160(r30)
001154  670b1fec  storeli.w r1, -2384(r30)
001158  8b902410  add.s r1, r9, r2
00115c  e74a1fec  storeli.w r1, -2388(r30)
001160  8b108330  div.s r1, r6, r8
001164  67041fee  storeli.w r1, -2240(r30)
001168  9ff0f2ff  addli r1, r5, -1
00116c  9f023fed  addli r5, r30, -2408
001170  e70a1fec  storeli.w r1, -2392(r30)
001174  b390152e  .word 0x2e1590b3
001178  73b01100  store.d r[2:3], 0(r3)
00117c  b310172c  .word 0x2c1710b3
001180  73b01200  store.d r[2:3], 0(r5)
001184  9bb02500  slli r1, r11, 2
001188  1b312700  slli r2, r14, 2
00118c  e7071fee  storeli.w r1, -2184(r30)
001190  8b900058  neg.s r1, r1
001194  e7472fee  storeli.w r2, -2180(r30)
001198  e7061fee  storeli.w r1, -2200(r30)
00119c  8b100158  neg.s r1, r2
0011a0  67471fee  storeli.w r1, -2188(r30)
0011a4  9ff0f3ff  addli r1, r7, -1
0011a8  e7031fee  storeli.w r1, -2248(r30)
0011ac  db020000  j 20
0011b0  6345efed  loadli.w r10,  -2316(r30)
0011b4  e3406fed  loadli.w r1,  -2380(r30)
0011b8  1f150500  addli r10, r10, 1
0011bc  b762150c  beq r10, r1, 6328
0011c0  e341aff7  loadli.w r3,  -1068(r30)
0011c4  e3006fed  loadli.w r1,  -2384(r30)
0011c8  63415fed  loadli.w r2,  -2388(r30)
0011cc  9f42aff7  addli r5, r30, -1068
0011d0  93801104  setlt.u r1, r3, r1
0011d4  6700a100  storeli.w r10, 0(r2)
0011d8  bb900000  bneq r1, zero, 36
0011dc  e3414fef  loadli.w r3,  -2140(r30)
0011e0  e3009fed  loadli.w r1,  -2360(r30)
0011e4  93803004  setlt.u r1, r1, r3
0011e8  37a00000  beq r1, zero, 8
0011ec  e341ffff  loadli.w r3,  -4(r30)
0011f0  9f42ffff  addli r5, r30, -4
0011f4  3ba00000  bneq r1, zero, 8
0011f8  9f424fef  addli r5, r30, -2140
0011fc  674e5fec  storeli.w r5, -2332(r30)
001200  e302cff7  loadli.w r5,  -1056(r30)
001204  e3043fee  loadli.w r9,  -2280(r30)
001208  63412fee  loadli.w r2,  -2284(r30)
00120c  6347cff7  loadli.w r14,  -1052(r30)
001210  674fafec  storeli.w r10, -2316(r30)
001214  63052fee  loadli.w r10,  -2288(r30)
001218  e300dff7  loadli.w r1,  -1048(r30)
00121c  e3051fee  loadli.w r11,  -2296(r30)
001220  1f9a0100  addli r20, r3, 1
001224  1f0e6fee  addli r28, r30, -2256
001228  1f0bdfed  addli r22, r30, -2328
00122c  0b939220  mul.s r6, r5, r9
001230  e74c1fec  storeli.w r1, -2356(r30)
001234  8b93b020  mul.s r7, r1, r11
001238  6705efee  storeli.w r14, -2224(r30)
00123c  0b136118  sub.s r6, r2, r6
001240  63413fee  loadli.w r2,  -2276(r30)
001244  0b936440  min.s r6, r9, r6
001248  0b142720  mul.s r8, r14, r2
00124c  8b100348  max.s r1, r6, zero
001250  63430fee  loadli.w r6,  -2300(r30)
001254  0b148518  sub.s r8, r10, r8
001258  67441fee  storeli.w r1, -2236(r30)
00125c  0b148140  min.s r8, r2, r8
001260  63014fee  loadli.w r2,  -2272(r30)
001264  0b137318  sub.s r6, r6, r7
001268  0b140448  max.s r8, r8, zero
00126c  0b936540  min.s r6, r11, r6
001270  8b152430  div.s r11, r8, r2
001274  6344afed  loadli.w r8,  -2348(r30)
001278  6301afed  loadli.w r2,  -2352(r30)
00127c  0b150348  max.s r10, r6, zero
001280  6343ffed  loadli.w r6,  -2308(r30)
001284  0b142750  fmac.s r8, r14, r2
001288  3397e32e  .word 0x2ee39733
00128c  0b939250  fmac.s r6, r5, r9
001290  33112428  .word 0x28241133
001294  3314832c  .word 0x2c831433
001298  7330eb00  store.d r[15:16], 0(r22)
00129c  e743bfee  storeli.w r11, -2244(r30)
0012a0  73302e00  store.d r[3:4], 0(r28)
0012a4  63015fed  loadli.w r2,  -2392(r30)
0012a8  9f210000  addli r3, zero, 2
0012ac  1f005fee  addli zero, r30, -2264
0012b0  8b131110  add.s r7, r2, r1
0012b4  6341cfee  loadli.w r2,  -2204(r30)
0012b8  8b902330  div.s r1, r7, r2
0012bc  63018fee  loadli.w r2,  -2240(r30)
0012c0  9f73f5ff  addli r7, r10, -1
0012c4  0b932510  add.s r6, r11, r2
0012c8  8b953311  add.s r11, r7, r19
0012cc  8b93d310  add.s r7, r7, r13
0012d0  1f73f3ff  addli r6, r6, -1
0012d4  e7441fee  storeli.w r1, -2228(r30)
0012d8  8b102330  div.s r1, r6, r2
0012dc  0b933531  div.s r6, r11, r19
0012e0  9f054fed  addli r11, r30, -2400
0012e4  ebd80500  load.d r[18:19], 0(r11)
0012e8  0b3d1421  mul.sl r[27:28], r[9:10], r[18:19]
0012ec  0b94d330  div.s r8, r7, r13
0012f0  9f045fee  addli r9, r30, -2264
0012f4  9f033fed  addli r7, r30, -2408
0012f8  e7041fee  storeli.w r1, -2232(r30)
0012fc  97303d02  sll.d r[2:3], r[27:28], r3
001300  1f0d7fed  addli r26, r30, -2376
001304  73b01400  store.d r[2:3], 0(r9)
001308  ebd00300  load.d r[2:3], 0(r7)
00130c  e3030fee  loadli.w r7,  -2304(r30)
001310  e304ffed  loadli.w r9,  -2312(r30)
001314  0b3b1720  mul.sl r[23:24], r[15:16], r[2:3]
001318  6b570d00  load.d r[15:16], 0(r26)
00131c  6b5d0000  load.d r[27:28], 0(zero)
001320  17200000  xor zero, zero, zero
001324  93839306  setle.u r7, r7, r9
001328  9f046fee  addli r9, r30, -2256
00132c  1f008fed  addli zero, r30, -2368
001330  173b3b02  sll.d r[23:24], r[23:24], r3
001334  0b27a711  add.ul r[15:16], r[15:16], r[27:28]
001338  1f0d5fee  addli r26, r30, -2264
00133c  9f0ddfed  addli r27, r30, -2328
001340  7330ed00  store.d r[15:16], 0(r26)
001344  6bd70d00  load.d r[15:16], 0(r27)
001348  e70e7fec  storeli.w r7, -2328(r30)
00134c  173d3702  sll.d r[27:28], r[15:16], r3
001350  6b570000  load.d r[15:16], 0(zero)
001354  17200000  xor zero, zero, zero
001358  1f005fee  addli zero, r30, -2264
00135c  0b276711  add.ul r[15:16], r[15:16], r[23:24]
001360  1f0bbfed  addli r22, r30, -2344
001364  7330eb00  store.d r[15:16], 0(r22)
001368  6b570000  load.d r[15:16], 0(zero)
00136c  6bdb0400  load.d r[23:24], 0(r9)
001370  17200000  xor zero, zero, zero
001374  0b2da711  add.ul r[27:28], r[15:16], r[27:28]
001378  1f075fee  addli r14, r30, -2264
00137c  173b3b02  sll.d r[23:24], r[23:24], r3
001380  7330a701  store.d r[27:28], 0(r14)
001384  1f0dbfed  addli r26, r30, -2344
001388  9f0d6fee  addli r27, r30, -2256
00138c  6b570d00  load.d r[15:16], 0(r26)
001390  0b276711  add.ul r[15:16], r[15:16], r[23:24]
001394  17bb3002  sll.d r[23:24], r[2:3], r3
001398  e340cfed  loadli.w r1,  -2332(r30)
00139c  63411fee  loadli.w r2,  -2292(r30)
0013a0  73b0ed00  store.d r[15:16], 0(r27)
0013a4  97bd3802  sll.d r[28:29], r[18:19], r3
0013a8  67804001  storeli.w r20, 0(r1)
0013ac  b7304100  beq r2, r4, 44
0013b0  9f300000  addli r1, zero, 3
0013b4  376d1100  beq r2, r1, 856
0013b8  9f200000  addli r1, zero, 2
0013bc  bb101100  bneq r2, r1, 36
0013c0  e300afee  loadli.w r1,  -2224(r30)
0013c4  13810200  seteq r2, r5, zero
0013c8  93810002  setneq r3, r1, zero
0013cc  17013100  and r2, r2, r3
0013d0  37400100  beq r2, zero, 16
0013d4  5b690000  j 840
0013d8  13810200  seteq r2, r5, zero
0013dc  3b0d0100  bneq r2, zero, 832
0013e0  bbe40200  bneq r5, zero, 312
0013e4  e3009fee  loadli.w r1,  -2232(r30)
0013e8  bfc44000  blt.s r1, r4, 304
0013ec  9f000000  addli r1, zero, 0
0013f0  5b020000  j 16
0013f4  63019fee  loadli.w r2,  -2232(r30)
0013f8  9f900000  addli r1, r1, 1
0013fc  37f42000  beq r1, r2, 284
001400  bf5f44fe  blt.s r8, r4, -12
001404  e3028fee  loadli.w r5,  -2240(r30)
001408  e3417fee  loadli.w r3,  -2244(r30)
00140c  9f050000  addli r11, zero, 0
001410  9f030500  addli r7, r10, 0
001414  0b915020  mul.s r2, r1, r5
001418  8b912118  sub.s r3, r3, r2
00141c  3317e12c  .word 0x2ce11733
001420  1f210000  addli r2, zero, 2
001424  8b943240  min.s r9, r5, r3
001428  9f026fee  addli r5, r30, -2256
00142c  17312702  sll.d r[3:4], r[15:16], r2
001430  ebd80200  load.d r[18:19], 0(r5)
001434  9bb72400  slli r15, r9, 2
001438  0ba12810  add.ul r[3:4], r[18:19], r[3:4]
00143c  5b020000  j 16
001440  9f950500  addli r11, r11, 1
001444  8b93d318  sub.s r7, r7, r13
001448  b7be85fe  beq r11, r8, -84
00144c  1b07f60f  andi r14, r12, 255
001450  37300700  beq r14, zero, 12
001454  9f221000  addli r5, zero, 10
001458  7d900200  xwait r5, 0
00145c  bf924400  blt.s r9, r4, 164
001460  8b98d520  mul.s r17, r11, r13
001464  0b171519  sub.s r14, r10, r17
001468  0b9de640  min.s r26, r13, r14
00146c  3f524d00  blt.s r26, r4, 148
001470  63074fef  loadli.w r14,  -2144(r30)
001474  e3422fef  loadli.w r5,  -2156(r30)
001478  634a3fef  loadli.w r20,  -2148(r30)
00147c  8b985820  mul.s r17, r17, r5
001480  0b17e838  mod.s r14, r16, r14
001484  9f420000  addli r5, zero, 4
001488  1d800200  lock zero, r5
00148c  e3023fef  loadli.w r5,  -2152(r30)
001490  15005000  dma_cfg zero, zero, r5, 0
001494  15020002  dma_cfg r4, zero, zero, 1
001498  b398182b  .word 0x2b1898b3
00149c  9f220000  addli r5, zero, 2
0014a0  97b85802  sll.d r[18:19], r[18:19], r5
0014a4  e3022fef  loadli.w r5,  -2160(r30)
0014a8  0b1a5751  fmac.s r20, r14, r21
0014ac  8b281111  add.ul r[18:19], r[3:4], r[18:19]
0014b0  3ff04200  blt.s r5, r4, 28
0014b4  15000904  dma_cfg zero, r18, zero, 2
0014b8  158af806  dma_cfg r20, r17, r15, 3
0014bc  e342ffee  loadli.w r5,  -2180(r30)
0014c0  9587a209  dma_cfg r15, r5, r26, 4
0014c4  35000000  dma_run zero
0014c8  5b060000  j 48
0014cc  0b977640  min.s r14, r13, r7
0014d0  e342efee  loadli.w r5,  -2188(r30)
0014d4  95874208  dma_cfg r15, r5, r4, 4
0014d8  0b1d0758  neg.s r26, r14
0014dc  15000904  dma_cfg zero, r18, zero, 2
0014e0  158af806  dma_cfg r20, r17, r15, 3
0014e4  8ba86811  add.ul r[18:19], r[18:19], r[23:24]
0014e8  1f1d0d00  addli r26, r26, 1
0014ec  0b1afa10  add.s r20, r20, r15
0014f0  35000000  dma_run zero
0014f4  bb2f0dfe  bneq r26, zero, -24
0014f8  9f420000  addli r5, zero, 4
0014fc  1d900200  unlock r5
001500  7d000c00  xsignal r24, 0
001504  1f180800  addli r16, r16, 1
001508  bb6c98ff  bneq r16, r25, -200
00150c  1f160000  addli r12, zero, 1
001510  1f080000  addli r16, zero, 0
001514  dbe5ffff  j -212
001518  e300dfed  loadli.w r1,  -2328(r30)
00151c  bba00000  bneq r1, zero, 40
001520  e3409fed  loadli.w r1,  -2356(r30)
001524  bb800000  bneq r1, zero, 32
001528  e300ffed  loadli.w r1,  -2312(r30)
00152c  9f900000  addli r1, r1, 1
001530  e70f1fec  storeli.w r1, -2312(r30)
001534  9f000000  addli r1, zero, 0
001538  e3419fee  loadli.w r3,  -2228(r30)
00153c  bba00000  bneq r1, zero, 40
001540  db050000  j 44
001544  e3009fed  loadli.w r1,  -2360(r30)
001548  e3412fed  loadli.w r3,  -2412(r30)
00154c  13811106  setle.u r2, r3, r1
001550  93803004  setlt.u r1, r1, r3
001554  8b912110  add.s r3, r3, r2
001558  67493fec  storeli.w r3, -2412(r30)
00155c  e3419fee  loadli.w r3,  -2228(r30)
001560  37b00000  beq r1, zero, 12
001564  9f102000  addli r1, zero, 17
001568  7d900000  xwait r1, 0
00156c  3f9141fe  blt.s r3, r4, -956
001570  e300afee  loadli.w r1,  -2224(r30)
001574  1b711300  setlti r2, r6, 1
001578  634b8fee  loadli.w r22,  -2236(r30)
00157c  9ff1f1ff  addli r3, r3, -1
001580  9f0b0000  addli r23, zero, 0
001584  1f040000  addli r8, zero, 0
001588  67053fee  storeli.w r3, -2224(r30)
00158c  93800002  setneq r1, r1, zero
001590  97902000  or r1, r1, r2
001594  6341cfee  loadli.w r2,  -2204(r30)
001598  e7041fee  storeli.w r1, -2232(r30)
00159c  5b030000  j 24
0015a0  6341cfee  loadli.w r2,  -2204(r30)
0015a4  e3409fee  loadli.w r1,  -2228(r30)
0015a8  1f140400  addli r8, r8, 1
0015ac  0b1b2b18  sub.s r22, r22, r2
0015b0  370014fe  beq r8, r1, -1024
0015b4  e3408fee  loadli.w r1,  -2236(r30)
0015b8  8b112420  mul.s r3, r8, r2
0015bc  8b903018  sub.s r1, r1, r3
0015c0  8b151140  min.s r11, r2, r1
0015c4  e3009fee  loadli.w r1,  -2232(r30)
0015c8  37910000  beq r1, zero, 68
0015cc  e3007fee  loadli.w r1,  -2248(r30)
0015d0  6301afee  loadli.w r2,  -2224(r30)
0015d4  37202400  beq r8, r2, 8
0015d8  9f000000  addli r1, zero, 0
0015dc  8b903010  add.s r1, r1, r3
0015e0  6301bfee  loadli.w r2,  -2216(r30)
0015e4  8b90b010  add.s r1, r1, r11
0015e8  8b902030  div.s r1, r1, r2
0015ec  cbde70ff  ble.s r1, r23, -76
0015f0  0b917019  sub.s r2, r1, r23
0015f4  9f212000  addli r3, zero, 18
0015f8  7d800100  xsignal r3, 0
0015fc  1f71f1ff  addli r2, r2, -1
001600  bb6f01fe  bneq r2, zero, -8
001604  9f8b0000  addli r23, r1, 0
001608  5bf3ffff  j -104
00160c  e3404fee  loadli.w r1,  -2268(r30)
001610  9f030100  addli r7, r2, 0
001614  9f220000  addli r5, zero, 2
001618  9f040000  addli r9, zero, 0
00161c  8b936341  min.s r7, r7, r22
001620  8b901120  mul.s r1, r3, r1
001624  8b930358  neg.s r7, r7
001628  b390102a  .word 0x2a1090b3
00162c  97b05002  sll.d r[2:3], r[2:3], r5
001630  9f025fee  addli r5, r30, -2264
001634  6bd70200  load.d r[15:16], 0(r5)
001638  8b201710  add.ul r[2:3], r[15:16], r[2:3]
00163c  db010000  j 12
001640  9f940400  addli r9, r9, 1
001644  37ae64fe  beq r9, r6, -120
001648  1b07f60f  andi r14, r12, 255
00164c  37300700  beq r14, zero, 12
001650  9f221000  addli r5, zero, 10
001654  7d900200  xwait r5, 0
001658  3ff24500  blt.s r11, r4, 156
00165c  8b983421  mul.s r17, r9, r19
001660  0b171519  sub.s r14, r10, r17
001664  0b9ae940  min.s r20, r19, r14
001668  3f324a00  blt.s r20, r4, 140
00166c  63074fef  loadli.w r14,  -2144(r30)
001670  9f420000  addli r5, zero, 4
001674  e3473fef  loadli.w r15,  -2148(r30)
001678  1d800200  lock zero, r5
00167c  b398182b  .word 0x2b1898b3
001680  634d1fef  loadli.w r26,  -2164(r30)
001684  1500a001  dma_cfg zero, zero, r26, 0
001688  15020002  dma_cfg r4, zero, zero, 1
00168c  1b3a2a00  slli r20, r20, 2
001690  9f220000  addli r5, zero, 2
001694  0b17e838  mod.s r14, r16, r14
001698  97b85802  sll.d r[18:19], r[18:19], r5
00169c  e3020fef  loadli.w r5,  -2176(r30)
0016a0  8ba81011  add.ul r[18:19], r[2:3], r[18:19]
0016a4  8b175751  fmac.s r15, r14, r21
0016a8  3ff04200  blt.s r5, r4, 28
0016ac  15000904  dma_cfg zero, r18, zero, 2
0016b0  95874807  dma_cfg r15, r17, r20, 3
0016b4  e302ffee  loadli.w r5,  -2184(r30)
0016b8  158ab208  dma_cfg r20, r5, r11, 4
0016bc  35000000  dma_run zero
0016c0  db050000  j 44
0016c4  e302dfee  loadli.w r5,  -2200(r30)
0016c8  158a4208  dma_cfg r20, r5, r4, 4
0016cc  1f8d0300  addli r26, r7, 0
0016d0  15000904  dma_cfg zero, r18, zero, 2
0016d4  95874807  dma_cfg r15, r17, r20, 3
0016d8  8ba8b811  add.ul r[18:19], r[18:19], r[28:29]
0016dc  1f1d0d00  addli r26, r26, 1
0016e0  8b974711  add.s r15, r15, r20
0016e4  35000000  dma_run zero
0016e8  bb2f0dfe  bneq r26, zero, -24
0016ec  9f420000  addli r5, zero, 4
0016f0  1d900200  unlock r5
0016f4  7d000c00  xsignal r24, 0
0016f8  1f180800  addli r16, r16, 1
0016fc  3b1d98ff  bneq r16, r25, -188
001700  1f160000  addli r12, zero, 1
001704  1f080000  addli r16, zero, 0
001708  5be7ffff  j -200
00170c  e300afee  loadli.w r1,  -2224(r30)
001710  17915000  or r2, r1, r5
001714  13010100  seteq r2, r2, zero
001718  372301fe  beq r2, zero, -824
00171c  e300afee  loadli.w r1,  -2224(r30)
001720  3ba50000  bneq r1, zero, 328
001724  6341cfee  loadli.w r2,  -2204(r30)
001728  e3409fee  loadli.w r1,  -2228(r30)
00172c  bff44000  blt.s r1, r4, 316
001730  e3458fee  loadli.w r11,  -2236(r30)
001734  9f030000  addli r7, zero, 0
001738  5b030000  j 24
00173c  6341cfee  loadli.w r2,  -2204(r30)
001740  e3409fee  loadli.w r1,  -2228(r30)
001744  9f930300  addli r7, r7, 1
001748  8b952518  sub.s r11, r11, r2
00174c  37f41300  beq r7, r1, 284
001750  bf3f43fe  blt.s r6, r4, -20
001754  9f040100  addli r9, r2, 0
001758  e3414fee  loadli.w r3,  -2268(r30)
00175c  8b902320  mul.s r1, r7, r2
001760  e3428fee  loadli.w r5,  -2236(r30)
001764  9f070000  addli r15, zero, 0
001768  0b91b440  min.s r2, r9, r11
00176c  8b913020  mul.s r3, r1, r3
001770  8b901218  sub.s r1, r5, r1
001774  9f220000  addli r5, zero, 2
001778  0b110158  neg.s r2, r2
00177c  67052fee  storeli.w r2, -2224(r30)
001780  3391212e  .word 0x2e219133
001784  97385102  sll.d r[18:19], r[3:4], r5
001788  9f025fee  addli r5, r30, -2264
00178c  8b911440  min.s r3, r9, r1
001790  ebd00200  load.d r[2:3], 0(r5)
001794  8ba01011  add.ul r[2:3], r[2:3], r[18:19]
001798  db010000  j 12
00179c  9f970700  addli r15, r15, 1
0017a0  37fe67fe  beq r15, r6, -100
0017a4  9b04f60f  andi r9, r12, 255
0017a8  37b00400  beq r9, zero, 12
0017ac  9f221000  addli r5, zero, 10
0017b0  7d900200  xwait r5, 0
0017b4  3ff24100  blt.s r3, r4, 156
0017b8  8b983721  mul.s r17, r15, r19
0017bc  8b141519  sub.s r9, r10, r17
0017c0  8b949940  min.s r9, r19, r9
0017c4  3fb24400  blt.s r9, r4, 140
0017c8  63074fef  loadli.w r14,  -2144(r30)
0017cc  9f420000  addli r5, zero, 4
0017d0  634a3fef  loadli.w r20,  -2148(r30)
0017d4  1d800200  lock zero, r5
0017d8  b398182b  .word 0x2b1898b3
0017dc  9f220000  addli r5, zero, 2
0017e0  0b1de838  mod.s r26, r16, r14
0017e4  97b85802  sll.d r[18:19], r[18:19], r5
0017e8  63471fef  loadli.w r14,  -2164(r30)
0017ec  1500e000  dma_cfg zero, zero, r14, 0
0017f0  15020002  dma_cfg r4, zero, zero, 1
0017f4  e3020fef  loadli.w r5,  -2176(r30)
0017f8  8ba81011  add.ul r[18:19], r[2:3], r[18:19]
0017fc  0b1a5d51  fmac.s r20, r26, r21
001800  1bbd2400  slli r26, r9, 2
001804  3ff04200  blt.s r5, r4, 28
001808  15000904  dma_cfg zero, r18, zero, 2
00180c  158aa807  dma_cfg r20, r17, r26, 3
001810  e302ffee  loadli.w r5,  -2184(r30)
001814  158d3208  dma_cfg r26, r5, r3, 4
001818  35000000  dma_run zero
00181c  db050000  j 44
001820  e302dfee  loadli.w r5,  -2200(r30)
001824  158d4208  dma_cfg r26, r5, r4, 4
001828  e304afee  loadli.w r9,  -2224(r30)
00182c  15000904  dma_cfg zero, r18, zero, 2
001830  158aa807  dma_cfg r20, r17, r26, 3
001834  8ba8b811  add.ul r[18:19], r[18:19], r[28:29]
001838  9f940400  addli r9, r9, 1
00183c  0b1aaa11  add.s r20, r20, r26
001840  35000000  dma_run zero
001844  bbaf04fe  bneq r9, zero, -24
001848  9f420000  addli r5, zero, 4
00184c  1d900200  unlock r5
001850  7d000c00  xsignal r24, 0
001854  1f180800  addli r16, r16, 1
001858  3b1d98ff  bneq r16, r25, -188
00185c  1f160000  addli r12, zero, 1
001860  1f080000  addli r16, zero, 0
001864  5be7ffff  j -200
001868  e300dfed  loadli.w r1,  -2328(r30)
00186c  bba00000  bneq r1, zero, 40
001870  e3409fed  loadli.w r1,  -2356(r30)
001874  bb800000  bneq r1, zero, 32
001878  e300ffed  loadli.w r1,  -2312(r30)
00187c  9f900000  addli r1, r1, 1
001880  e70f1fec  storeli.w r1, -2312(r30)
001884  9f000000  addli r1, zero, 0
001888  63019fee  loadli.w r2,  -2232(r30)
00188c  bba00000  bneq r1, zero, 40
001890  db050000  j 44
001894  e3009fed  loadli.w r1,  -2360(r30)
001898  e3412fed  loadli.w r3,  -2412(r30)
00189c  13811106  setle.u r2, r3, r1
0018a0  93803004  setlt.u r1, r1, r3
0018a4  8b912110  add.s r3, r3, r2
0018a8  67493fec  storeli.w r3, -2412(r30)
0018ac  63019fee  loadli.w r2,  -2232(r30)
0018b0  37b00000  beq r1, zero, 12
0018b4  9f102000  addli r1, zero, 17
0018b8  7d900000  xwait r1, 0
0018bc  bf5341fc  blt.s r2, r4, -1804
0018c0  9f70f1ff  addli r1, r2, -1
0018c4  1f0d0000  addli r26, zero, 0
0018c8  1f0e0000  addli r28, zero, 0
0018cc  67051fee  storeli.w r1, -2224(r30)
0018d0  e340afee  loadli.w r1,  -2220(r30)
0018d4  9ff0f0ff  addli r1, r1, -1
0018d8  e7441fee  storeli.w r1, -2228(r30)
0018dc  5b020000  j 16
0018e0  e3009fee  loadli.w r1,  -2232(r30)
0018e4  1f1e0e00  addli r28, r28, 1
0018e8  37231efc  beq r28, r1, -1848
0018ec  e3018fee  loadli.w r3,  -2240(r30)
0018f0  63417fee  loadli.w r2,  -2244(r30)
0018f4  8b103e20  mul.s r1, r28, r3
0018f8  0b111118  sub.s r2, r2, r1
0018fc  8b952140  min.s r11, r3, r2
001900  3f144400  blt.s r8, r4, 260
001904  3391202a  .word 0x2a209133
001908  9f220000  addli r5, zero, 2
00190c  1f076fee  addli r14, r30, -2256
001910  9f0d0000  addli r27, zero, 0
001914  9bb42500  slli r9, r11, 2
001918  17315102  sll.d r[3:4], r[3:4], r5
00191c  eb520700  load.d r[6:7], 0(r14)
001920  0ba32210  add.ul r[7:8], r[6:7], r[3:4]
001924  1f010500  addli r2, r10, 0
001928  5b020000  j 16
00192c  9f9d0d00  addli r27, r27, 1
001930  0b11d118  sub.s r2, r2, r13
001934  37c38d00  beq r27, r8, 208
001938  9b01f60f  andi r3, r12, 255
00193c  37b00100  beq r3, zero, 12
001940  9f211000  addli r3, zero, 10
001944  7d900100  xwait r3, 0
001948  bf924500  blt.s r11, r4, 164
00194c  8b98dd20  mul.s r17, r27, r13
001950  8b111519  sub.s r3, r10, r17
001954  0b9a3640  min.s r20, r13, r3
001958  3f524a00  blt.s r20, r4, 148
00195c  e3014fef  loadli.w r3,  -2144(r30)
001960  e3422fef  loadli.w r5,  -2156(r30)
001964  8b985820  mul.s r17, r17, r5
001968  0b193838  mod.s r18, r16, r3
00196c  9f420000  addli r5, zero, 4
001970  e3413fef  loadli.w r3,  -2148(r30)
001974  1d800200  lock zero, r5
001978  9f220000  addli r5, zero, 2
00197c  3397e82a  .word 0x2ae89733
001980  e3083fef  loadli.w r17,  -2152(r30)
001984  15001001  dma_cfg zero, zero, r17, 0
001988  15020002  dma_cfg r4, zero, zero, 1
00198c  17375702  sll.d r[15:16], r[15:16], r5
001990  e3022fef  loadli.w r5,  -2160(r30)
001994  8b115951  fmac.s r3, r18, r21
001998  8b28e310  add.ul r[18:19], r[7:8], r[15:16]
00199c  3ff04200  blt.s r5, r4, 28
0019a0  15000904  dma_cfg zero, r18, zero, 2
0019a4  95819806  dma_cfg r3, r17, r9, 3
0019a8  e341ffee  loadli.w r3,  -2180(r30)
0019ac  95844109  dma_cfg r9, r3, r20, 4
0019b0  35000000  dma_run zero
0019b4  5b060000  j 48
0019b8  0b972640  min.s r14, r13, r2
0019bc  e342efee  loadli.w r5,  -2188(r30)
0019c0  95844208  dma_cfg r9, r5, r4, 4
0019c4  0b1a0758  neg.s r20, r14
0019c8  15000904  dma_cfg zero, r18, zero, 2
0019cc  95819806  dma_cfg r3, r17, r9, 3
0019d0  8ba86811  add.ul r[18:19], r[18:19], r[23:24]
0019d4  1f1a0a00  addli r20, r20, 1
0019d8  8b919110  add.s r3, r3, r9
0019dc  35000000  dma_run zero
0019e0  bb2f0afe  bneq r20, zero, -24
0019e4  9f410000  addli r3, zero, 4
0019e8  1d900100  unlock r3
0019ec  7d000c00  xsignal r24, 0
0019f0  1f180800  addli r16, r16, 1
0019f4  bb6c98ff  bneq r16, r25, -200
0019f8  1f160000  addli r12, zero, 1
0019fc  1f080000  addli r16, zero, 0
001a00  dbe5ffff  j -212
001a04  63419fee  loadli.w r2,  -2228(r30)
001a08  e302afee  loadli.w r5,  -2224(r30)
001a0c  9f212000  addli r3, zero, 18
001a10  37205e00  beq r28, r5, 8
001a14  1f010000  addli r2, zero, 0
001a18  8b101110  add.s r1, r2, r1
001a1c  6341afee  loadli.w r2,  -2220(r30)
001a20  8b90b010  add.s r1, r1, r11
001a24  8b902030  div.s r1, r1, r2
001a28  cbeaa0ff  ble.s r1, r26, -328
001a2c  0b91a019  sub.s r2, r1, r26
001a30  7d800100  xsignal r3, 0
001a34  1f71f1ff  addli r2, r2, -1
001a38  bb6f01fe  bneq r2, zero, -8
001a3c  1f8d0000  addli r26, r1, 0
001a40  5bd4ffff  j -352
001a44  9f050000  addli r11, zero, 0
001a48  63074f01  loadli.w r14,  160(r30)
001a4c  338a452f  .word 0x2f458a33
001a50  13a84c01  seteq.d r16, r[26:27], r[21:22]
001a54  3b33b702  bneq r14, r11, 1228
001a58  37430802  beq r16, zero, 1232
001a5c  73349fbf  store.d r[26:27], -1048(r30)
001a60  37530802  beq r16, zero, 1236
001a64  dba30000  j 1308
001a68  63025f01  loadli.w r4,  168(r30)
001a6c  674d0ff6  storeli.w zero, -1068(r30)
001a70  674a0fee  storeli.w zero, -2140(r30)
001a74  3b510200  bneq r4, zero, 84
001a78  33024028  .word 0x28400233
001a7c  13224100  seteq.d r4, r[3:4], r[5:6]
001a80  bb000200  bneq r4, zero, 32
001a84  00a00000  mfence { lm }
001a88  1f026000  addli r4, zero, 48
001a8c  ab0200f0  lui r5, 983040
001a90  1f04cff7  addli r8, r30, -1056
001a94  17125200  or r4, r4, r5
001a98  7f228100  l_gm2lm r4, r8, 0(r[3:4])
001a9c  00a00200  mfence { lm, gm }
001aa0  33012028  .word 0x28200133
001aa4  13212300  seteq.d r2, r[7:8], r[3:4]
001aa8  bb000100  bneq r2, zero, 32
001aac  00a00000  mfence { lm }
001ab0  1f016000  addli r2, zero, 48
001ab4  ab0100f0  lui r3, 983040
001ab8  1f02cff7  addli r4, r30, -1056
001abc  17113100  or r2, r2, r3
001ac0  7f214300  l_gm2lm r2, r4, 0(r[7:8])
001ac4  00a00200  mfence { lm, gm }
001ac8  1f01cff7  addli r2, r30, -1056
001acc  9f411000  addli r3, zero, 12
001ad0  1f020000  addli r4, zero, 0
001ad4  8b124110  add.s r5, r2, r4
001ad8  1f120200  addli r4, r4, 1
001adc  13033204  setlt.u r6, r4, r3
001ae0  73800200  store.b zero, 0(r5)
001ae4  bb4f03fe  bneq r6, zero, -16
001ae8  63411f01  loadli.w r2,  140(r30)
001aec  670b1fef  storeli.w r17, -2128(r30)
001af0  674bcfee  storeli.w r12, -2124(r30)
001af4  e70b1fee  storeli.w r1, -2120(r30)
001af8  9b312100  slli r3, r2, 2
001afc  1f016fef  addli r2, r30, -2128
001b00  0b113110  add.s r2, r2, r3
001b04  e3000100  loadli.w r1,  0(r2)
001b08  1f110000  addli r2, zero, 1
001b0c  e7491fee  storeli.w r1, -2148(r30)
001b10  bf9d2006  blt.s r1, r2, 3940
001b14  e3005f02  loadli.w r1,  296(r30)
001b18  1f0e2000  addli r28, zero, 16
001b1c  1f03cff7  addli r6, r30, -1056
001b20  63425f02  loadli.w r4,  300(r30)
001b24  9f653000  addli r11, zero, 30
001b28  1f058000  addli r10, zero, 64
001b2c  1f783000  addli r16, zero, 31
001b30  1f492000  addli r18, zero, 20
001b34  9f090000  addli r19, zero, 0
001b38  8b113310  add.s r3, r6, r3
001b3c  9ff21000  addli r5, r1, 15
001b40  9bb37000  slli r7, r1, 7
001b44  1f74f2ff  addli r8, r4, -1
001b48  e7093fee  storeli.w r3, -2152(r30)
001b4c  9ff1f0ff  addli r3, r1, -1
001b50  8b94c239  mod.s r9, r5, r28
001b54  67493fee  storeli.w r3, -2156(r30)
001b58  8b909218  sub.s r1, r5, r9
001b5c  e7471fee  storeli.w r1, -2180(r30)
001b60  5b050000  j 40
001b64  9f501000  addli r1, zero, 13
001b68  7d800000  xsignal r1, 0
001b6c  9f653000  addli r11, zero, 30
001b70  9f701000  addli r1, zero, 15
001b74  7d800000  xsignal r1, 0
001b78  e3094fef  loadli.w r19,  -2144(r30)
001b7c  e3403fef  loadli.w r1,  -2148(r30)
001b80  9f990900  addli r19, r19, 1
001b84  b7cb1906  beq r19, r1, 3824
001b88  6343aff7  loadli.w r6,  -1068(r30)
001b8c  e3000fee  loadli.w r1,  -2304(r30)
001b90  1f42aff7  addli r4, r30, -1068
001b94  93021304  setlt.u r5, r6, r1
001b98  e3003fef  loadli.w r1,  -2152(r30)
001b9c  67803001  storeli.w r19, 0(r1)
001ba0  3ba00200  bneq r5, zero, 8
001ba4  1f424fef  addli r4, r30, -2140
001ba8  e300cff7  loadli.w r1,  -1056(r30)
001bac  e341cff7  loadli.w r3,  -1052(r30)
001bb0  6307dff7  loadli.w r14,  -1048(r30)
001bb4  9f140300  addli r9, r6, 1
001bb8  1f130000  addli r6, zero, 1
001bbc  3ba00200  bneq r5, zero, 8
001bc0  9f140000  addli r9, zero, 1
001bc4  67009200  storeli.w r9, 0(r4)
001bc8  63424fef  loadli.w r4,  -2140(r30)
001bcc  3f406200  blt.s r4, r6, 16
001bd0  7d900500  xwait r11, 0
001bd4  1f72f2ff  addli r4, r4, -1
001bd8  bb6f02fe  bneq r4, zero, -8
001bdc  e3073fee  loadli.w r15,  -2280(r30)
001be0  e3452fee  loadli.w r11,  -2284(r30)
001be4  63463fee  loadli.w r12,  -2276(r30)
001be8  e3480fee  loadli.w r17,  -2300(r30)
001bec  0b121710  add.s r4, r14, r1
001bf0  8b123710  add.s r5, r14, r3
001bf4  8b941110  add.s r9, r3, r1
001bf8  674a0fee  storeli.w zero, -2140(r30)
001bfc  670a3fef  storeli.w r19, -2144(r30)
001c00  0b93f020  mul.s r6, r1, r15
001c04  0b936518  sub.s r6, r11, r6
001c08  8b95c120  mul.s r11, r3, r12
001c0c  8b9b6740  min.s r23, r15, r6
001c10  63032fee  loadli.w r6,  -2288(r30)
001c14  8b970b48  max.s r15, r23, zero
001c18  0b13b318  sub.s r6, r6, r11
001c1c  0b136640  min.s r6, r12, r6
001c20  63061fee  loadli.w r12,  -2296(r30)
001c24  0b130348  max.s r6, r6, zero
001c28  8b15c720  mul.s r11, r14, r12
001c2c  8b95b818  sub.s r11, r17, r11
001c30  e308afee  loadli.w r17,  -2224(r30)
001c34  8b15b640  min.s r11, r12, r11
001c38  63064fee  loadli.w r12,  -2272(r30)
001c3c  0b121239  mod.s r4, r4, r17
001c40  e348efee  loadli.w r17,  -2188(r30)
001c44  8b9c0548  max.s r25, r11, zero
001c48  8b921239  mod.s r5, r5, r17
001c4c  e3481fef  loadli.w r17,  -2164(r30)
001c50  8b941439  mod.s r9, r9, r17
001c54  8b18c330  div.s r17, r6, r12
001c58  63439fee  loadli.w r6,  -2228(r30)
001c5c  0b1d6220  mul.s r26, r4, r6
001c60  6302dfee  loadli.w r4,  -2200(r30)
001c64  8b954220  mul.s r11, r5, r4
001c68  63020fef  loadli.w r4,  -2176(r30)
001c6c  e3022fef  loadli.w r5,  -2160(r30)
001c70  0b925450  fmac.s r4, r9, r5
001c74  e3421fee  loadli.w r5,  -2292(r30)
001c78  37e52200  beq r5, r2, 344
001c7c  1f330000  addli r6, zero, 3
001c80  37b56200  beq r5, r6, 332
001c84  1f230000  addli r6, zero, 2
001c88  3bd06200  bneq r5, r6, 20
001c8c  93800000  seteq r1, r1, zero
001c90  93810102  setneq r3, r3, zero
001c94  97803000  and r1, r1, r3
001c98  3b850000  bneq r1, zero, 320
001c9c  e3402fef  loadli.w r1,  -2156(r30)
001ca0  e301bfee  loadli.w r3,  -2216(r30)
001ca4  8b90f010  add.s r1, r1, r15
001ca8  8b9b3030  div.s r23, r1, r3
001cac  bfea2bfe  blt.s r23, r2, -328
001cb0  9bb02c00  slli r1, r25, 2
001cb4  9f620000  addli r5, zero, 6
001cb8  9f090000  addli r19, zero, 0
001cbc  9bb48700  slli r9, r15, 8
001cc0  1b8bf803  andi r22, r17, 63
001cc4  1f0a0000  addli r20, zero, 0
001cc8  9ff07000  addli r1, r1, 63
001ccc  17d65800  sra r12, r17, r5
001cd0  8b91a038  mod.s r3, r1, r10
001cd4  8b903018  sub.s r1, r1, r3
001cd8  e341ffee  loadli.w r3,  -2180(r30)
001cdc  9bb26000  slli r5, r1, 6
001ce0  0b933020  mul.s r6, r1, r3
001ce4  9ff0fbff  addli r1, r23, -1
001ce8  db020000  j 20
001cec  0b1d6d10  add.s r26, r26, r6
001cf0  1f1a0a00  addli r20, r20, 1
001cf4  0b127210  add.s r4, r4, r7
001cf8  b7397aff  beq r20, r23, -404
001cfc  e30abfee  loadli.w r21,  -2216(r30)
001d00  9f611000  addli r3, zero, 14
001d04  7d900100  xwait r3, 0
001d08  7d100e00  xwait r28, 0
001d0c  8b1d5a21  mul.s r27, r20, r21
001d10  8b91b719  sub.s r3, r15, r27
001d14  8b913a40  min.s r3, r21, r3
001d18  9f3a2000  addli r21, zero, 19
001d1c  7d900a00  xwait r21, 0
001d20  bfd12100  blt.s r3, r2, 116
001d24  1d000100  lock zero, r2
001d28  0900f104  mm_cfg zero, r2, r15, 2
001d2c  09853c00  mm_cfg r10, r25, r3, 0
001d30  1f0c0200  addli r24, r4, 0
001d34  1f8e0500  addli r28, r11, 0
001d38  9f0a0600  addli r21, r12, 0
001d3c  b7300700  beq r14, zero, 44
001d40  3fe0a800  blt.s r17, r10, 24
001d44  291ccd11  mm_acc r24, r26, r28, 8
001d48  0b1e5e10  add.s r28, r28, r5
001d4c  9ffafaff  addli r21, r21, -1
001d50  0b1c9c10  add.s r24, r24, r9
001d54  bbcf0afe  bneq r21, zero, -16
001d58  b7500b00  beq r22, zero, 52
001d5c  098b3c00  mm_cfg r22, r25, r3, 0
001d60  291ccd11  mm_acc r24, r26, r28, 8
001d64  5b050000  j 40
001d68  3fe0a800  blt.s r17, r10, 24
001d6c  290ccd11  mm r24, r26, r28, 8
001d70  0b1e5e10  add.s r28, r28, r5
001d74  9ffafaff  addli r21, r21, -1
001d78  0b1c9c10  add.s r24, r24, r9
001d7c  bbcf0afe  bneq r21, zero, -16
001d80  37300b00  beq r22, zero, 12
001d84  098b3c00  mm_cfg r22, r25, r3, 0
001d88  290ccd11  mm r24, r26, r28, 8
001d8c  1f0e2000  addli r28, zero, 16
001d90  1d100100  unlock r2
001d94  9f0a0400  addli r21, r8, 0
001d98  37201a00  beq r20, r1, 8
001d9c  9f0a0000  addli r21, zero, 0
001da0  8b9aba11  add.s r21, r21, r27
001da4  8b913a10  add.s r3, r21, r3
001da8  8b91d130  div.s r3, r3, r13
001dac  4b8d31ff  ble.s r3, r19, -192
001db0  8b993119  sub.s r19, r3, r19
001db4  7d000800  xsignal r16, 0
001db8  7d000900  xsignal r18, 0
001dbc  9ff9f9ff  addli r19, r19, -1
001dc0  bbdf09fe  bneq r19, zero, -12
001dc4  9f890100  addli r19, r3, 0
001dc8  dbe4ffff  j -220
001dcc  97901100  or r1, r3, r1
001dd0  93800000  seteq r1, r1, zero
001dd4  37ab00fe  beq r1, zero, -312
001dd8  e341afee  loadli.w r3,  -2220(r30)
001ddc  8b903810  add.s r1, r17, r3
001de0  9ff0f0ff  addli r1, r1, -1
001de4  8b903030  div.s r1, r1, r3
001de8  bff520fe  blt.s r1, r2, -644
001dec  e342afee  loadli.w r5,  -2220(r30)
001df0  9bb12c00  slli r3, r25, 2
001df4  9bb98700  slli r19, r15, 8
001df8  1f0a0000  addli r20, zero, 0
001dfc  9ff17100  addli r3, r3, 63
001e00  9ff21200  addli r5, r5, 15
001e04  8b94a138  mod.s r9, r3, r10
001e08  0b93c239  mod.s r6, r5, r28
001e0c  8b919118  sub.s r3, r3, r9
001e10  0b936218  sub.s r6, r5, r6
001e14  9bb25700  slli r5, r15, 5
001e18  9bb46100  slli r9, r3, 6
001e1c  0b133320  mul.s r6, r6, r3
001e20  db030000  j 28
001e24  1d100100  unlock r2
001e28  7d000800  xsignal r16, 0
001e2c  7d000900  xsignal r18, 0
001e30  1f1a0a00  addli r20, r20, 1
001e34  8b956510  add.s r11, r11, r6
001e38  b7341afe  beq r20, r1, -724
001e3c  9f611000  addli r3, zero, 14
001e40  7d900100  xwait r3, 0
001e44  7d100e00  xwait r28, 0
001e48  9f312000  addli r3, zero, 19
001e4c  7d900100  xwait r3, 0
001e50  3fef2bfe  blt.s r23, r2, -40
001e54  634bafee  loadli.w r22,  -2220(r30)
001e58  1f064000  addli r12, zero, 32
001e5c  1d000100  lock zero, r2
001e60  0900f104  mm_cfg zero, r2, r15, 2
001e64  0985fc00  mm_cfg r10, r25, r15, 0
001e68  1f8c0500  addli r24, r11, 0
001e6c  8b116a21  mul.s r3, r20, r22
001e70  0b96c130  div.s r12, r3, r12
001e74  9b3a5600  slli r21, r12, 5
001e78  8b9a5119  sub.s r21, r3, r21
001e7c  8b913818  sub.s r3, r17, r3
001e80  8b9ac250  fmac.s r21, r5, r12
001e84  0b163b40  min.s r12, r22, r3
001e88  9bb12a00  slli r3, r21, 2
001e8c  9f6a0000  addli r21, zero, 6
001e90  175b5601  sra r22, r12, r21
001e94  8b914110  add.s r3, r3, r4
001e98  9b0af603  andi r21, r12, 63
001e9c  b7300700  beq r14, zero, 44
001ea0  3f60a600  blt.s r12, r10, 24
001ea4  a9118d11  mm_acc r3, r26, r24, 8
001ea8  0b1c9c10  add.s r24, r24, r9
001eac  1f7bfbff  addli r22, r22, -1
001eb0  8b913111  add.s r3, r3, r19
001eb4  bb4f0bfe  bneq r22, zero, -16
001eb8  b7bd0afe  beq r21, zero, -148
001ebc  898afc00  mm_cfg r21, r25, r15, 0
001ec0  a9118d11  mm_acc r3, r26, r24, 8
001ec4  5becffff  j -160
001ec8  3f60a600  blt.s r12, r10, 24
001ecc  a9018d11  mm r3, r26, r24, 8
001ed0  0b1c9c10  add.s r24, r24, r9
001ed4  1f7bfbff  addli r22, r22, -1
001ed8  8b913111  add.s r3, r3, r19
001edc  bb4f0bfe  bneq r22, zero, -16
001ee0  379d0afe  beq r21, zero, -188
001ee4  898afc00  mm_cfg r21, r25, r15, 0
001ee8  a9018d11  mm r3, r26, r24, 8
001eec  5be7ffff  j -200
001ef0  b3049028  .word 0x289004b3
001ef4  93a49d00  seteq.d r9, r[28:29], r[10:11]
001ef8  3ba20402  bneq r9, zero, 1160
001efc  00a00000  mfence { lm }
001f00  9f440000  addli r9, zero, 4
001f04  2b0500f0  lui r10, 983040
001f08  9f05cff7  addli r11, r30, -1056
001f0c  9794a400  or r9, r9, r10
001f10  ffa4bd00  l_gm2lm r9, r11, 0(r[28:29])
001f14  00a00200  mfence { lm, gm }
001f18  6302cff7  loadli.w r4,  -1056(r30)
001f1c  5b8d0000  j 1128
001f20  9f070400  addli r15, r8, 0
001f24  bb6c08fc  bneq r16, zero, -1224
001f28  9f850700  addli r11, r15, 0
001f2c  73349fbf  store.d r[26:27], -1048(r30)
001f30  3b410800  bneq r16, zero, 80
001f34  63044f01  loadli.w r8,  160(r30)
001f38  1f170000  addli r14, zero, 1
001f3c  3b11e400  bneq r8, r14, 68
001f40  37810500  beq r11, zero, 64
001f44  1f040002  addli r8, zero, 256
001f48  670ebff6  storeli.w r11, -1056(r30)
001f4c  00a00000  mfence { lm }
001f50  0b948540  min.s r8, r11, r8
001f54  9f05cff7  addli r11, r30, -1056
001f58  6b578fbe  load.d r[15:16], -1048(r30)
001f5c  2b0800f0  lui r16, 983040
001f60  1b342400  slli r8, r8, 2
001f64  9f852500  addli r11, r11, 16
001f68  17140401  or r8, r8, r16
001f6c  7f24b700  l_gm2lm r8, r11, 0(r[15:16])
001f70  3307e028  .word 0x28e00733
001f74  00a00200  mfence { lm, gm }
001f78  7338effe  store.d r[15:16], -16(r30)
001f7c  5b010000  j 8
001f80  670e0ff6  storeli.w zero, -1056(r30)
001f84  63044f01  loadli.w r8,  160(r30)
001f88  bb300400  bneq r8, zero, 44
001f8c  3307e028  .word 0x28e00733
001f90  13a4ec00  seteq.d r8, r[26:27], r[15:16]
001f94  bb000400  bneq r8, zero, 32
001f98  00a00000  mfence { lm }
001f9c  1f440000  addli r8, zero, 4
001fa0  ab0500f0  lui r11, 983040
001fa4  1f076fef  addli r14, r30, -2128
001fa8  1714b400  or r8, r8, r11
001fac  7fa4ec00  l_gm2lm r8, r14, 0(r[26:27])
001fb0  00a00200  mfence { lm, gm }
001fb4  63444f01  loadli.w r8,  164(r30)
001fb8  bb300400  bneq r8, zero, 44
001fbc  3307e028  .word 0x28e00733
001fc0  13a4eb00  seteq.d r8, r[24:25], r[15:16]
001fc4  bb000400  bneq r8, zero, 32
001fc8  00a00000  mfence { lm }
001fcc  1f440000  addli r8, zero, 4
001fd0  ab0500f0  lui r11, 983040
001fd4  1f076fef  addli r14, r30, -2128
001fd8  1714b400  or r8, r8, r11
001fdc  7fa4eb00  l_gm2lm r8, r14, 0(r[24:25])
001fe0  00a00200  mfence { lm, gm }
001fe4  3307e028  .word 0x28e00733
001fe8  e34c1fee  loadli.w r25,  -2292(r30)
001fec  13a4e400  seteq.d r8, r[10:11], r[15:16]
001ff0  bb000400  bneq r8, zero, 32
001ff4  00a00000  mfence { lm }
001ff8  1f440000  addli r8, zero, 4
001ffc  ab0500f0  lui r11, 983040
002000  1f076fef  addli r14, r30, -2128
002004  1714b400  or r8, r8, r11
002008  7fa4e400  l_gm2lm r8, r14, 0(r[10:11])
00200c  00a00200  mfence { lm, gm }
002010  33048028  .word 0x28800433
002014  13a48d00  seteq.d r8, r[28:29], r[9:10]
002018  bb000400  bneq r8, zero, 32
00201c  00a00000  mfence { lm }
002020  1f440000  addli r8, zero, 4
002024  ab0400f0  lui r9, 983040
002028  1f056fef  addli r10, r30, -2128
00202c  17149400  or r8, r8, r9
002030  7fa4ad00  l_gm2lm r8, r10, 0(r[28:29])
002034  00a00200  mfence { lm, gm }
002038  63045f01  loadli.w r8,  168(r30)
00203c  b7710400  beq r8, zero, 124
002040  33048028  .word 0x28800433
002044  13248100  seteq.d r8, r[3:4], r[9:10]
002048  bb000400  bneq r8, zero, 32
00204c  00a00000  mfence { lm }
002050  1f440000  addli r8, zero, 4
002054  ab0400f0  lui r9, 983040
002058  1f056fef  addli r10, r30, -2128
00205c  17149400  or r8, r8, r9
002060  7f24a100  l_gm2lm r8, r10, 0(r[3:4])
002064  00a00200  mfence { lm, gm }
002068  33012028  .word 0x28200133
00206c  13212300  seteq.d r2, r[7:8], r[3:4]
002070  bb000100  bneq r2, zero, 32
002074  00a00000  mfence { lm }
002078  1f410000  addli r2, zero, 4
00207c  ab0100f0  lui r3, 983040
002080  1f046fef  addli r8, r30, -2128
002084  17113100  or r2, r2, r3
002088  7f218300  l_gm2lm r2, r8, 0(r[7:8])
00208c  00a00200  mfence { lm, gm }
002090  33012028  .word 0x28200133
002094  13212200  seteq.d r2, r[5:6], r[3:4]
002098  bb000100  bneq r2, zero, 32
00209c  00a00000  mfence { lm }
0020a0  1f410000  addli r2, zero, 4
0020a4  ab0100f0  lui r3, 983040
0020a8  1f036fef  addli r6, r30, -2128
0020ac  17113100  or r2, r2, r3
0020b0  7f216200  l_gm2lm r2, r6, 0(r[5:6])
0020b4  00a00200  mfence { lm, gm }
0020b8  1f016fef  addli r2, r30, -2128
0020bc  9f411000  addli r3, zero, 12
0020c0  1f020000  addli r4, zero, 0
0020c4  8b124110  add.s r5, r2, r4
0020c8  1f120200  addli r4, r4, 1
0020cc  13033204  setlt.u r6, r4, r3
0020d0  73800200  store.b zero, 0(r5)
0020d4  bb4f03fe  bneq r6, zero, -16
0020d8  63411f01  loadli.w r2,  140(r30)
0020dc  674d1ff7  storeli.w r17, -1068(r30)
0020e0  e70dcff6  storeli.w r12, -1064(r30)
0020e4  e74d1ff6  storeli.w r1, -1060(r30)
0020e8  9b312100  slli r3, r2, 2
0020ec  1f41aff7  addli r2, r30, -1068
0020f0  0b113110  add.s r2, r2, r3
0020f4  e3000100  loadli.w r1,  0(r2)
0020f8  1f110000  addli r2, zero, 1
0020fc  bfe52004  blt.s r1, r2, 2424
002100  63023f02  loadli.w r4,  280(r30)
002104  63035f02  loadli.w r6,  296(r30)
002108  9f026fef  addli r5, r30, -2128
00210c  9f431000  addli r7, zero, 12
002110  1f242000  addli r8, zero, 18
002114  9f342000  addli r9, zero, 19
002118  1f350000  addli r10, zero, 3
00211c  9f250000  addli r11, zero, 2
002120  1f060000  addli r12, zero, 0
002124  8b913210  add.s r3, r5, r3
002128  9f72f3ff  addli r5, r6, -1
00212c  1f72f2ff  addli r4, r4, -1
002130  1f331000  addli r6, zero, 11
002134  db010000  j 12
002138  1f160600  addli r12, r12, 1
00213c  b7641604  beq r12, r1, 2360
002140  6780c100  storeli.w r12, 0(r3)
002144  e3483fee  loadli.w r17,  -2276(r30)
002148  630a2fee  loadli.w r20,  -2288(r30)
00214c  63093fee  loadli.w r18,  -2280(r30)
002150  634b6fef  loadli.w r22,  -2124(r30)
002154  e30b6fef  loadli.w r23,  -2128(r30)
002158  63077fef  loadli.w r14,  -2120(r30)
00215c  8b171b21  mul.s r15, r22, r17
002160  0b982b21  mul.s r16, r23, r18
002164  8b17fa18  sub.s r15, r20, r15
002168  630a1fee  loadli.w r20,  -2296(r30)
00216c  8b97f840  min.s r15, r17, r15
002170  e3482fee  loadli.w r17,  -2284(r30)
002174  0b174721  mul.s r14, r14, r20
002178  8b970748  max.s r15, r15, zero
00217c  0b980819  sub.s r16, r17, r16
002180  e3480fee  loadli.w r17,  -2300(r30)
002184  0b97e818  sub.s r14, r17, r14
002188  e3084fee  loadli.w r17,  -2272(r30)
00218c  0b17ea40  min.s r14, r20, r14
002190  8b9a1731  div.s r21, r15, r17
002194  8b170941  min.s r15, r18, r16
002198  63093fef  loadli.w r18,  -2152(r30)
00219c  e348cfee  loadli.w r17,  -2204(r30)
0021a0  0b170748  max.s r14, r14, zero
0021a4  0b9a0748  max.s r20, r15, zero
0021a8  1f77f7ff  addli r14, r14, -1
0021ac  8b174211  add.s r15, r4, r20
0021b0  0b982a11  add.s r16, r21, r18
0021b4  8b971731  div.s r15, r15, r17
0021b8  1f78f8ff  addli r16, r16, -1
0021bc  8b182831  div.s r17, r16, r18
0021c0  0b183711  add.s r16, r14, r19
0021c4  0b17d710  add.s r14, r14, r13
0021c8  0b193831  div.s r18, r16, r19
0021cc  0b17d730  div.s r14, r14, r13
0021d0  b7802c00  beq r25, r2, 32
0021d4  b793ac00  beq r25, r10, 228
0021d8  bb80bc00  bneq r25, r11, 32
0021dc  13880b00  seteq r16, r23, zero
0021e0  130c0b02  setneq r24, r22, zero
0021e4  17088801  and r16, r16, r24
0021e8  37400800  beq r16, zero, 16
0021ec  5b1b0000  j 216
0021f0  13880b00  seteq r16, r23, zero
0021f4  3b430800  bneq r16, zero, 208
0021f8  bbd00b00  bneq r23, zero, 52
0021fc  bfc02800  blt.s r17, r2, 48
002200  1f080000  addli r16, zero, 0
002204  db010000  j 12
002208  1f180800  addli r16, r16, 1
00220c  b7001801  beq r16, r17, 32
002210  9f0a0700  addli r21, r14, 0
002214  bf5f27fe  blt.s r14, r2, -12
002218  7d100300  xwait r6, 0
00221c  7d800300  xsignal r7, 0
002220  9ffafaff  addli r21, r21, -1
002224  bbdf0afe  bneq r21, zero, -12
002228  5bfcffff  j -32
00222c  3fbc27fe  blt.s r15, r2, -244
002230  13070b02  setneq r14, r22, zero
002234  1b781900  setlti r16, r18, 1
002238  9f0b0000  addli r23, zero, 0
00223c  9ff8f7ff  addli r17, r15, -1
002240  9f0a0000  addli r21, zero, 0
002244  17170701  or r14, r14, r16
002248  db010000  j 12
00224c  9f9a0a00  addli r21, r21, 1
002250  b7abfafe  beq r21, r15, -280
002254  3b600700  bneq r14, zero, 24
002258  1f080900  addli r16, r18, 0
00225c  7d100300  xwait r6, 0
002260  7d800300  xsignal r7, 0
002264  1f78f8ff  addli r16, r16, -1
002268  bb5f08fe  bneq r16, zero, -12
00226c  1f880200  addli r16, r5, 0
002270  37a01a01  beq r21, r17, 8
002274  1f080000  addli r16, zero, 0
002278  634ccfee  loadli.w r24,  -2204(r30)
00227c  0b9b8a21  mul.s r22, r21, r24
002280  0b988a51  fmac.s r16, r21, r24
002284  0b1b6a19  sub.s r22, r20, r22
002288  0b1b6c41  min.s r22, r24, r22
00228c  0b186811  add.s r16, r16, r22
002290  630bbfee  loadli.w r22,  -2216(r30)
002294  0b186831  div.s r16, r16, r22
002298  cb5e78ff  ble.s r16, r23, -76
00229c  0b1b7819  sub.s r22, r16, r23
0022a0  7d100400  xwait r8, 0
0022a4  7d800400  xsignal r9, 0
0022a8  1f7bfbff  addli r22, r22, -1
0022ac  bb5f0bfe  bneq r22, zero, -12
0022b0  9f0b0800  addli r23, r16, 0
0022b4  5bf3ffff  j -104
0022b8  17187b01  or r16, r22, r23
0022bc  13080800  seteq r16, r16, zero
0022c0  b76c08fe  beq r16, zero, -200
0022c4  bb500b00  bneq r22, zero, 52
0022c8  bfc02700  blt.s r15, r2, 48
0022cc  1f080000  addli r16, zero, 0
0022d0  db010000  j 12
0022d4  1f180800  addli r16, r16, 1
0022d8  b700f800  beq r16, r15, 32
0022dc  1f0a0900  addli r20, r18, 0
0022e0  bf5f29fe  blt.s r18, r2, -12
0022e4  7d100300  xwait r6, 0
0022e8  7d800300  xsignal r7, 0
0022ec  1f7afaff  addli r20, r20, -1
0022f0  bb5f0afe  bneq r20, zero, -12
0022f4  5bfcffff  j -32
0022f8  3f8928fe  blt.s r17, r2, -448
0022fc  6348afee  loadli.w r16,  -2220(r30)
002300  1f0b0000  addli r22, zero, 0
002304  9ff7f8ff  addli r15, r17, -1
002308  1f0a0000  addli r20, zero, 0
00230c  1f79f8ff  addli r18, r16, -1
002310  db010000  j 12
002314  1f1a0a00  addli r20, r20, 1
002318  b7081aff  beq r20, r17, -480
00231c  1f080700  addli r16, r14, 0
002320  3f502700  blt.s r14, r2, 20
002324  7d100300  xwait r6, 0
002328  7d800300  xsignal r7, 0
00232c  1f78f8ff  addli r16, r16, -1
002330  bb5f08fe  bneq r16, zero, -12
002334  1f080900  addli r16, r18, 0
002338  3720fa00  beq r20, r15, 8
00233c  1f080000  addli r16, zero, 0
002340  630c3fef  loadli.w r24,  -2152(r30)
002344  8b1b8a21  mul.s r23, r20, r24
002348  0b188a51  fmac.s r16, r20, r24
00234c  8b9b7a19  sub.s r23, r21, r23
002350  8b1b7c41  min.s r23, r24, r23
002354  0b187811  add.s r16, r16, r23
002358  e34bafee  loadli.w r23,  -2220(r30)
00235c  0b187831  div.s r16, r16, r23
002360  cb5e68ff  ble.s r16, r22, -76
002364  0b1b6819  sub.s r22, r16, r22
002368  7d100400  xwait r8, 0
00236c  7d800400  xsignal r9, 0
002370  1f7bfbff  addli r22, r22, -1
002374  bb5f0bfe  bneq r22, zero, -12
002378  1f0b0800  addli r22, r16, 0
00237c  5bf3ffff  j -104
002380  63422f01  loadli.w r4,  148(r30)
002384  e3045f01  loadli.w r9,  168(r30)
002388  67494fee  storeli.w r4, -2156(r30)
00238c  b7d10400  beq r9, zero, 116
002390  b3049028  .word 0x289004b3
002394  13259100  seteq.d r10, r[3:4], r[10:11]
002398  ab04803f  lui r9, 260096
00239c  bb100500  bneq r10, zero, 36
0023a0  00a00000  mfence { lm }
0023a4  9f440000  addli r9, zero, 4
0023a8  2b0500f0  lui r10, 983040
0023ac  1f07cff7  addli r14, r30, -1056
0023b0  9794a400  or r9, r9, r10
0023b4  ff24e100  l_gm2lm r9, r14, 0(r[3:4])
0023b8  00a00200  mfence { lm, gm }
0023bc  e304cff7  loadli.w r9,  -1056(r30)
0023c0  33012028  .word 0x28200133
0023c4  93212300  seteq.d r3, r[7:8], r[3:4]
0023c8  2b01803f  lui r2, 260096
0023cc  bb900100  bneq r3, zero, 36
0023d0  00a00000  mfence { lm }
0023d4  1f410000  addli r2, zero, 4
0023d8  ab0100f0  lui r3, 983040
0023dc  1f05cff7  addli r10, r30, -1056
0023e0  17113100  or r2, r2, r3
0023e4  7f21a300  l_gm2lm r2, r10, 0(r[7:8])
0023e8  00a00200  mfence { lm, gm }
0023ec  6301cff7  loadli.w r2,  -1056(r30)
0023f0  e3412fef  loadli.w r3,  -2156(r30)
0023f4  8be19120  mul.f.rn r3, r3, r9
0023f8  0be12120  mul.f.rn r2, r3, r2
0023fc  67492fee  storeli.w r2, -2156(r30)
002400  63014f01  loadli.w r2,  160(r30)
002404  3b010100  bneq r2, zero, 64
002408  33012028  .word 0x28200133
00240c  93a12c00  seteq.d r3, r[26:27], r[3:4]
002410  2b01803f  lui r2, 260096
002414  bb900100  bneq r3, zero, 36
002418  00a00000  mfence { lm }
00241c  1f410000  addli r2, zero, 4
002420  ab0100f0  lui r3, 983040
002424  1f03cff7  addli r6, r30, -1056
002428  17113100  or r2, r2, r3
00242c  7fa16c00  l_gm2lm r2, r6, 0(r[26:27])
002430  00a00200  mfence { lm, gm }
002434  6301cff7  loadli.w r2,  -1056(r30)
002438  e3412fef  loadli.w r3,  -2156(r30)
00243c  8be12120  mul.f.rn r3, r3, r2
002440  67493fee  storeli.w r3, -2156(r30)
002444  63414f01  loadli.w r2,  164(r30)
002448  3b010100  bneq r2, zero, 64
00244c  33012028  .word 0x28200133
002450  93a12b00  seteq.d r3, r[24:25], r[3:4]
002454  2b01803f  lui r2, 260096
002458  bb900100  bneq r3, zero, 36
00245c  00a00000  mfence { lm }
002460  1f410000  addli r2, zero, 4
002464  ab0100f0  lui r3, 983040
002468  1f03cff7  addli r6, r30, -1056
00246c  17113100  or r2, r2, r3
002470  7fa16b00  l_gm2lm r2, r6, 0(r[24:25])
002474  00a00200  mfence { lm, gm }
002478  6301cff7  loadli.w r2,  -1056(r30)
00247c  e3412fef  loadli.w r3,  -2156(r30)
002480  8be12120  mul.f.rn r3, r3, r2
002484  67493fee  storeli.w r3, -2156(r30)
002488  33012028  .word 0x28200133
00248c  63034f01  loadli.w r6,  160(r30)
002490  93a32c00  seteq.d r7, r[26:27], r[3:4]
002494  9f210000  addli r3, zero, 2
002498  1d800100  lock zero, r3
00249c  0d000022  ew_cfg zero, zero, zero, 17
0024a0  1f110000  addli r2, zero, 1
0024a4  1d900100  unlock r3
0024a8  37200300  beq r6, zero, 8
0024ac  1f010400  addli r2, r8, 0
0024b0  1f030000  addli r6, zero, 0
0024b4  3ba00300  bneq r7, zero, 8
0024b8  1f030100  addli r6, r2, 0
0024bc  6b518f02  load.d r[3:4], 40(r30)
0024c0  73349fbf  store.d r[26:27], -1048(r30)
0024c4  3bc10300  bneq r7, zero, 80
0024c8  e3034f01  loadli.w r7,  160(r30)
0024cc  1f140000  addli r8, zero, 1
0024d0  3b918300  bneq r7, r8, 68
0024d4  37010300  beq r6, zero, 64
0024d8  9f030002  addli r7, zero, 256
0024dc  670e6ff6  storeli.w r6, -1056(r30)
0024e0  9f04cff7  addli r9, r30, -1056
0024e4  00a00000  mfence { lm }
0024e8  0b137340  min.s r6, r6, r7
0024ec  eb538fbe  load.d r[8:9], -1048(r30)
0024f0  2b0500f0  lui r10, 983040
0024f4  9f842400  addli r9, r9, 16
0024f8  1b332300  slli r6, r6, 2
0024fc  1713a300  or r6, r6, r10
002500  7fa39300  l_gm2lm r6, r9, 0(r[8:9])
002504  33036028  .word 0x28600333
002508  00a00200  mfence { lm, gm }
00250c  73386ffe  store.d r[7:8], -16(r30)
002510  5b010000  j 8
002514  670e0ff6  storeli.w zero, -1056(r30)
002518  6b520f03  load.d r[5:6], 48(r30)
00251c  9f03bfee  addli r7, r30, -2216
002520  63041f03  loadli.w r8,  392(r30)
002524  1f030000  addli r6, zero, 0
002528  670b0fee  storeli.w zero, -2128(r30)
00252c  73b04300  store.d r[5:6], 0(r7)
002530  1f027fef  addli r4, r30, -2120
002534  73302200  store.d r[3:4], 0(r4)
002538  1f41aff7  addli r2, r30, -1068
00253c  9f411000  addli r3, zero, 12
002540  8b136110  add.s r7, r2, r6
002544  1f130300  addli r6, r6, 1
002548  93043304  setlt.u r9, r6, r3
00254c  73800300  store.b zero, 0(r7)
002550  bbcf04fe  bneq r9, zero, -16
002554  63411f01  loadli.w r2,  140(r30)
002558  9f414fef  addli r3, r30, -2140
00255c  674a1fef  storeli.w r17, -2140(r30)
002560  e70acfee  storeli.w r12, -2136(r30)
002564  e74a1fee  storeli.w r1, -2132(r30)
002568  1b312100  slli r2, r2, 2
00256c  8b912110  add.s r3, r3, r2
002570  63820100  loadli.w r4,  0(r3)
002574  9f110000  addli r3, zero, 1
002578  67474fee  storeli.w r4, -2188(r30)
00257c  3f123202  blt.s r4, r3, 1156
002580  9f44aff7  addli r9, r30, -1068
002584  63433f01  loadli.w r6,  156(r30)
002588  e3435f02  loadli.w r7,  300(r30)
00258c  1f060000  addli r12, zero, 0
002590  1f0b0000  addli r22, zero, 0
002594  9ff0f0ff  addli r1, r1, -1
002598  9f4c2000  addli r25, zero, 20
00259c  1f7d3000  addli r26, zero, 31
0025a0  9f2d0000  addli r27, zero, 2
0025a4  9f154000  addli r11, zero, 33
0025a8  0b912410  add.s r2, r9, r2
0025ac  1b08f300  andi r16, r6, 15
0025b0  1f036fef  addli r6, r30, -2128
0025b4  9bbb7300  slli r23, r7, 7
0025b8  e7062fee  storeli.w r2, -2200(r30)
0025bc  1f01cff7  addli r2, r30, -1056
0025c0  1f012100  addli r2, r2, 16
0025c4  e7472fee  storeli.w r2, -2180(r30)
0025c8  1f012300  addli r2, r6, 16
0025cc  e7072fee  storeli.w r2, -2184(r30)
0025d0  1ff1f3ff  addli r2, r7, -1
0025d4  9f030000  addli r7, zero, 0
0025d8  67462fee  storeli.w r2, -2204(r30)
0025dc  5b040000  j 32
0025e0  1f112000  addli r2, zero, 17
0025e4  7d000100  xsignal r2, 0
0025e8  1f160600  addli r12, r12, 1
0025ec  1f613000  addli r2, zero, 30
0025f0  7d000100  xsignal r2, 0
0025f4  6341efee  loadli.w r2,  -2188(r30)
0025f8  37202602  beq r12, r2, 1032
0025fc  6301dfee  loadli.w r2,  -2200(r30)
002600  63423fee  loadli.w r4,  -2276(r30)
002604  e3022fee  loadli.w r5,  -2288(r30)
002608  63090fef  loadli.w r18,  -2176(r30)
00260c  6700c100  storeli.w r12, 0(r2)
002610  e304bff7  loadli.w r9,  -1064(r30)
002614  6345aff7  loadli.w r10,  -1068(r30)
002618  0b914420  mul.s r2, r9, r4
00261c  0b97a410  add.s r14, r9, r10
002620  0b912218  sub.s r2, r5, r2
002624  e3023fee  loadli.w r5,  -2280(r30)
002628  0b112240  min.s r2, r4, r2
00262c  63422fee  loadli.w r4,  -2284(r30)
002630  8b175520  mul.s r15, r10, r5
002634  8b180148  max.s r17, r2, zero
002638  63411fef  loadli.w r2,  -2164(r30)
00263c  8b17f218  sub.s r15, r4, r15
002640  63024fee  loadli.w r4,  -2272(r30)
002644  8b192738  mod.s r19, r14, r2
002648  0b91f240  min.s r2, r5, r15
00264c  6347bff7  loadli.w r14,  -1060(r30)
002650  8b9a4830  div.s r21, r17, r4
002654  63022fef  loadli.w r4,  -2160(r30)
002658  e348ffed  loadli.w r17,  -2308(r30)
00265c  0b1a0148  max.s r20, r2, zero
002660  8b185550  fmac.s r17, r10, r5
002664  0b994950  fmac.s r18, r19, r4
002668  63421fee  loadli.w r4,  -2292(r30)
00266c  b7103200  beq r4, r3, 36
002670  9f320000  addli r5, zero, 3
002674  37075200  beq r4, r5, 448
002678  bb00b201  bneq r4, r27, 32
00267c  13050500  seteq r10, r10, zero
002680  93840402  setneq r9, r9, zero
002684  97049500  and r9, r10, r9
002688  37c00400  beq r9, zero, 16
00268c  db360000  j 436
002690  93040500  seteq r9, r10, zero
002694  bbb60400  bneq r9, zero, 428
002698  6341cfee  loadli.w r2,  -2204(r30)
00269c  0b114111  add.s r2, r2, r20
0026a0  0b11d130  div.s r2, r2, r13
0026a4  bf7c31fe  blt.s r2, r3, -196
0026a8  9ff9faff  addli r19, r21, -1
0026ac  9f070a00  addli r15, r20, 0
0026b0  db030000  j 28
0026b4  9f830400  addli r7, r9, 0
0026b8  0b197911  add.s r18, r18, r23
0026bc  8b98d810  add.s r17, r17, r13
0026c0  1f71f1ff  addli r2, r2, -1
0026c4  8b97d718  sub.s r15, r15, r13
0026c8  376c01fe  beq r2, zero, -232
0026cc  7d900c00  xwait r25, 0
0026d0  7d100d00  xwait r26, 0
0026d4  bb2f17fe  bneq r14, r1, -24
0026d8  0b9cf640  min.s r24, r13, r15
0026dc  3f7f3cfe  blt.s r24, r3, -36
0026e0  1b82f30f  andi r4, r7, 255
0026e4  37300200  beq r4, zero, 12
0026e8  1f024000  addli r4, zero, 32
0026ec  7d100200  xwait r4, 0
0026f0  e304cff7  loadli.w r9,  -1056(r30)
0026f4  b7810400  beq r9, zero, 96
0026f8  3ff11401  blt.s r9, r17, 92
0026fc  6305efff  loadli.w r10,  -16(r30)
002700  3fb0a800  blt.s r17, r10, 12
002704  1f020502  addli r4, r10, 256
002708  3fb14800  blt.s r17, r4, 76
00270c  9f020002  addli r5, zero, 256
002710  0b925830  div.s r4, r17, r5
002714  1b328200  slli r4, r4, 8
002718  670f4ffe  storeli.w r4, -16(r30)
00271c  0b924418  sub.s r4, r9, r4
002720  00a00000  mfence { lm }
002724  0b125240  min.s r4, r4, r5
002728  eb620fff  loadext.w r[6:7], -16(r30)
00272c  eb548fbe  load.d r[10:11], -1048(r30)
002730  ab0500f0  lui r11, 983040
002734  1b322200  slli r4, r4, 2
002738  97b2b203  sll.d r[6:7], r[6:7], r27
00273c  1712b200  or r4, r4, r11
002740  9f154000  addli r11, zero, 33
002744  8ba25410  add.ul r[6:7], r[10:11], r[6:7]
002748  e344ffee  loadli.w r9,  -2180(r30)
00274c  7fa29200  l_gm2lm r4, r9, 0(r[6:7])
002750  00a00200  mfence { lm, gm }
002754  e3046fef  loadli.w r9,  -2128(r30)
002758  b7910400  beq r9, zero, 100
00275c  bf811401  blt.s r9, r17, 96
002760  63058ff7  loadli.w r10,  -1088(r30)
002764  3fb0a800  blt.s r17, r10, 12
002768  1f020502  addli r4, r10, 256
00276c  3fc14800  blt.s r17, r4, 80
002770  9f020002  addli r5, zero, 256
002774  1f0e7fef  addli r28, r30, -2120
002778  0b925830  div.s r4, r17, r5
00277c  1b328200  slli r4, r4, 8
002780  670c4ff6  storeli.w r4, -1088(r30)
002784  0b924418  sub.s r4, r9, r4
002788  00a00000  mfence { lm }
00278c  0b125240  min.s r4, r4, r5
002790  eb620fbc  loadext.w r[6:7], -1088(r30)
002794  eb540e00  load.d r[10:11], 0(r28)
002798  ab0500f0  lui r11, 983040
00279c  1b322200  slli r4, r4, 2
0027a0  97b2b203  sll.d r[6:7], r[6:7], r27
0027a4  1712b200  or r4, r4, r11
0027a8  9f154000  addli r11, zero, 33
0027ac  8ba25410  add.ul r[6:7], r[10:11], r[6:7]
0027b0  e304ffee  loadli.w r9,  -2184(r30)
0027b4  7fa29200  l_gm2lm r4, r9, 0(r[6:7])
0027b8  00a00200  mfence { lm, gm }
0027bc  1d800d00  lock zero, r27
0027c0  8d010020  ew_cfg r3, zero, zero, 16
0027c4  0d000002  ew_cfg zero, zero, zero, 1
0027c8  3f813a00  blt.s r21, r3, 64
0027cc  63423fef  loadli.w r4,  -2148(r30)
0027d0  e3023fef  loadli.w r5,  -2152(r30)
0027d4  0d800904  ew_cfg zero, r19, zero, 2
0027d8  8d010006  ew_cfg r3, zero, zero, 3
0027dc  8d010000  ew_cfg r3, zero, zero, 0
0027e0  0d080014  ew_cfg r16, zero, zero, 10
0027e4  63432fef  loadli.w r6,  -2156(r30)
0027e8  0d130000  ewcoeff_cfg r6, zero, zero, 0
0027ec  63034fef  loadli.w r6,  -2144(r30)
0027f0  0d0c0006  ew_cfg r24, zero, zero, 3
0027f4  0d0c4a27  ew_cfg r24, r20, r20, 19
0027f8  0b124b38  mod.s r4, r22, r4
0027fc  8b126250  fmac.s r5, r4, r6
002800  ad022901  dsmadd r5, r18, r18, 0
002804  0d000000  ew_cfg zero, zero, zero, 0
002808  0d000026  ew_cfg zero, zero, zero, 19
00280c  0d000020  ew_cfg zero, zero, zero, 16
002810  1d900d00  unlock r27
002814  1f150b00  addli r10, r22, 1
002818  7d800500  xsignal r11, 0
00281c  9f140000  addli r9, zero, 1
002820  1f0b0000  addli r22, zero, 0
002824  374a85fe  beq r10, r8, -368
002828  9f840300  addli r9, r7, 0
00282c  1f0b0500  addli r22, r10, 0
002830  dbd0ffff  j -380
002834  9794a400  or r9, r9, r10
002838  93840400  seteq r9, r9, zero
00283c  37f904fe  beq r9, zero, -420
002840  6342afee  loadli.w r4,  -2220(r30)
002844  8b944a10  add.s r9, r21, r4
002848  9ff4f4ff  addli r9, r9, -1
00284c  8b994430  div.s r19, r9, r4
002850  3fc639fe  blt.s r19, r3, -624
002854  1f020002  addli r4, zero, 256
002858  9b375a00  slli r15, r20, 5
00285c  1f0e0000  addli r28, zero, 0
002860  8b944830  div.s r9, r17, r4
002864  1bbc8400  slli r24, r9, 8
002868  db030000  j 28
00286c  9f830400  addli r7, r9, 0
002870  6342afee  loadli.w r4,  -2220(r30)
002874  9ff9f9ff  addli r19, r19, -1
002878  8b9a4a18  sub.s r21, r21, r4
00287c  0b1e4e10  add.s r28, r28, r4
002880  b78509fe  beq r19, zero, -672
002884  7d900c00  xwait r25, 0
002888  7d100d00  xwait r26, 0
00288c  bb1f17fe  bneq r14, r1, -28
002890  bf0f31fe  blt.s r2, r3, -32
002894  9b84f30f  andi r9, r7, 255
002898  37b00400  beq r9, zero, 12
00289c  1f024000  addli r4, zero, 32
0028a0  7d100200  xwait r4, 0
0028a4  e304cff7  loadli.w r9,  -1056(r30)
0028a8  37e10400  beq r9, zero, 88
0028ac  3fd11401  blt.s r9, r17, 84
0028b0  6305efff  loadli.w r10,  -16(r30)
0028b4  3fb0a800  blt.s r17, r10, 12
0028b8  1f050502  addli r10, r10, 256
0028bc  3f91a800  blt.s r17, r10, 68
0028c0  670f8fff  storeli.w r24, -16(r30)
0028c4  8b948419  sub.s r9, r9, r24
0028c8  1f020002  addli r4, zero, 256
0028cc  00a00000  mfence { lm }
0028d0  8b944440  min.s r9, r9, r4
0028d4  6b650fff  loadext.w r[11:12], -16(r30)
0028d8  6b528fbe  load.d r[5:6], -1048(r30)
0028dc  2b0300f0  lui r6, 983040
0028e0  9bb42400  slli r9, r9, 2
0028e4  1735b503  sll.d r[11:12], r[11:12], r27
0028e8  17936400  or r6, r9, r6
0028ec  e344ffee  loadli.w r9,  -2180(r30)
0028f0  0b22a210  add.ul r[5:6], r[5:6], r[11:12]
0028f4  9f154000  addli r11, zero, 33
0028f8  7f239200  l_gm2lm r6, r9, 0(r[5:6])
0028fc  00a00200  mfence { lm, gm }
002900  e3046fef  loadli.w r9,  -2128(r30)
002904  37f10400  beq r9, zero, 92
002908  3fe11401  blt.s r9, r17, 88
00290c  63058ff7  loadli.w r10,  -1088(r30)
002910  3fb0a800  blt.s r17, r10, 12
002914  1f020502  addli r4, r10, 256
002918  3fa14800  blt.s r17, r4, 72
00291c  670c8ff7  storeli.w r24, -1088(r30)
002920  0b928419  sub.s r4, r9, r24
002924  9f040002  addli r9, zero, 256
002928  9f057fef  addli r11, r30, -2120
00292c  00a00000  mfence { lm }
002930  eb620fbc  loadext.w r[6:7], -1088(r30)
002934  0b129240  min.s r4, r4, r9
002938  ebd40500  load.d r[10:11], 0(r11)
00293c  ab0500f0  lui r11, 983040
002940  1b322200  slli r4, r4, 2
002944  97b2b203  sll.d r[6:7], r[6:7], r27
002948  1712b200  or r4, r4, r11
00294c  9f154000  addli r11, zero, 33
002950  8ba25410  add.ul r[6:7], r[10:11], r[6:7]
002954  e304ffee  loadli.w r9,  -2184(r30)
002958  7fa29200  l_gm2lm r4, r9, 0(r[6:7])
00295c  00a00200  mfence { lm, gm }
002960  6342afee  loadli.w r4,  -2220(r30)
002964  1d800d00  lock zero, r27
002968  8d010020  ew_cfg r3, zero, zero, 16
00296c  0d000002  ew_cfg zero, zero, zero, 1
002970  8b145241  min.s r9, r4, r21
002974  bf813400  blt.s r9, r3, 96
002978  1f024000  addli r4, zero, 32
00297c  9ff2f4ff  addli r5, r9, -1
002980  63433fef  loadli.w r6,  -2148(r30)
002984  e3043fef  loadli.w r9,  -2152(r30)
002988  0d800204  ew_cfg zero, r5, zero, 2
00298c  8d010006  ew_cfg r3, zero, zero, 3
002990  8d010000  ew_cfg r3, zero, zero, 0
002994  0d080014  ew_cfg r16, zero, zero, 10
002998  63452fef  loadli.w r10,  -2156(r30)
00299c  0d150000  ewcoeff_cfg r10, zero, zero, 0
0029a0  0d0a0006  ew_cfg r20, zero, zero, 3
0029a4  0b124e30  div.s r4, r28, r4
0029a8  0b136b38  mod.s r6, r22, r6
0029ac  9b325200  slli r5, r4, 5
0029b0  8b125e18  sub.s r5, r28, r5
0029b4  8b924750  fmac.s r5, r15, r4
0029b8  1bb22200  slli r4, r5, 2
0029bc  e3024fef  loadli.w r5,  -2144(r30)
0029c0  0d0a4a27  ew_cfg r20, r20, r20, 19
0029c4  0b122211  add.s r4, r4, r18
0029c8  8b145350  fmac.s r9, r6, r5
0029cc  ad044200  dsmadd r9, r4, r4, 0
0029d0  0d000000  ew_cfg zero, zero, zero, 0
0029d4  0d000026  ew_cfg zero, zero, zero, 19
0029d8  0d000020  ew_cfg zero, zero, zero, 16
0029dc  1d900d00  unlock r27
0029e0  1f150b00  addli r10, r22, 1
0029e4  7d800500  xsignal r11, 0
0029e8  9f140000  addli r9, zero, 1
0029ec  1f0b0000  addli r22, zero, 0
0029f0  b77985fe  beq r10, r8, -388
0029f4  9f840300  addli r9, r7, 0
0029f8  1f0b0500  addli r22, r10, 0
0029fc  5bceffff  j -400
002a00  9f01bfee  addli r3, r30, -2216
002a04  b3001028  .word 0x281000b3
002a08  ebd50100  load.d r[12:13], 0(r3)
002a0c  93a01500  seteq.d r1, r[12:13], r[2:3]
002a10  bb910000  bneq r1, zero, 100
002a14  63029fee  loadli.w r4,  -2232(r30)
002a18  1f311000  addli r2, zero, 11
002a1c  9f200000  addli r1, zero, 2
002a20  1d800000  lock zero, r1
002a24  dd810000  ld_sd_rdout r3, r1, zero, 0
002a28  670e3ff6  storeli.w r3, -1056(r30)
002a2c  1d900000  unlock r1
002a30  00a00000  mfence { lm }
002a34  13014104  setlt.u r2, r2, r4
002a38  bb700100  bneq r2, zero, 60
002a3c  1f01cff7  addli r2, r30, -1056
002a40  9f410000  addli r3, zero, 4
002a44  80d20002  load_param_i r5, 1
002a48  1f431000  addli r6, zero, 12
002a4c  b3037228  .word 0x287203b3
002a50  0b924210  add.s r4, r5, r4
002a54  ab0400f0  lui r9, 983040
002a58  97b31302  sll.d r[8:9], r[8:9], r1
002a5c  13056204  setlt.u r10, r4, r6
002a60  97949100  or r9, r3, r9
002a64  8ba37510  add.ul r[8:9], r[12:13], r[8:9]
002a68  ffb42300  s_lm2gm r9, r2, 0(r[8:9])
002a6c  00a00200  mfence { lm, gm }
002a70  3b7f05fe  bneq r10, zero, -36
002a74  7d000000  xsignal zero, 0
002a78  80300002  core_id r1
002a7c  3be00000  bneq r1, zero, 24
002a80  80500102  load_param_i r1, 2
002a84  7d100000  xwait zero, 0
002a88  9ff0f0ff  addli r1, r1, -1
002a8c  bbef00fe  bneq r1, zero, -8
002a90  7d400000  xsignal_mode_cfg zero
002a94  9f0e2fed  addli sp, r30, -2416
002a98  9f8eee12  addli sp, sp, 2416
002a9c  00a00300  mfence { lm, sm, gm }
002aa0  00100000  exit
002aa4  00000000  nop
