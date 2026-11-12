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
00005c  9f098003  addli r19, zero, 448
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
00008c  9f8e8ee9  addli sp, sp, -2880
000090  1f8f0e13  addli r30, sp, 2432
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
0000c4  9f110000  addli r3, zero, 1
0000c8  3bd03000  bneq r1, r3, 20
0000cc  5b4c0600  j 12896
0000d0  9f000000  addli r1, zero, 0
0000d4  9f110000  addli r3, zero, 1
0000d8  37d93018  beq r1, r3, 12884
0000dc  e3402f02  loadli.w r1,  276(r30)
0000e0  1f04efee  addli r8, r30, -2192
0000e4  9f04ffee  addli r9, r30, -2184
0000e8  e3023f03  loadli.w r5,  408(r30)
0000ec  e3432f03  loadli.w r7,  404(r30)
0000f0  e3052f03  loadli.w r11,  400(r30)
0000f4  63056f01  loadli.w r10,  176(r30)
0000f8  eb580f06  load.d r[18:19], 96(r30)
0000fc  6b5d8f05  load.d r[27:28], 88(r30)
000100  6b5b8f04  load.d r[23:24], 72(r30)
000104  00330002  core_id r6
000108  1f420000  addli r4, zero, 4
00010c  67001fee  storeli.w r1, -2304(r30)
000110  e3400f02  loadli.w r1,  260(r30)
000114  e70e1fec  storeli.w r1, -2328(r30)
000118  e3000f02  loadli.w r1,  256(r30)
00011c  e74f1fec  storeli.w r1, -2308(r30)
000120  e340ff01  loadli.w r1,  252(r30)
000124  e70f1fec  storeli.w r1, -2312(r30)
000128  eb500f08  load.d r[2:3], 128(r30)
00012c  73301400  store.d r[2:3], 0(r8)
000130  eb500f07  load.d r[2:3], 112(r30)
000134  73b01400  store.d r[2:3], 0(r9)
000138  eb508f06  load.d r[2:3], 104(r30)
00013c  7dc00100  xsignal_mode_cfg r3
000140  3b524300  bneq r6, r4, 148
000144  9f310000  addli r3, zero, 3
000148  37023500  beq r10, r3, 128
00014c  e3012f03  loadli.w r3,  400(r30)
000150  1f520000  addli r4, zero, 5
000154  1d000200  lock zero, r4
000158  3b600500  bneq r10, zero, 24
00015c  1f034000  addli r6, zero, 32
000160  1f040000  addli r8, zero, 0
000164  15008014  dma_cfg zero, zero, r8, 10
000168  1f140400  addli r8, r8, 1
00016c  bb6f64fe  bneq r8, r6, -8
000170  63432f03  loadli.w r6,  404(r30)
000174  63043f03  loadli.w r8,  408(r30)
000178  9f240000  addli r9, zero, 2
00017c  1f160000  addli r12, zero, 1
000180  ab06803f  lui r13, 260096
000184  1506d600  dma_cfg r12, r12, r13, 0
000188  0b136420  mul.s r6, r8, r6
00018c  1f044000  addli r8, zero, 32
000190  17539300  sra r6, r6, r9
000194  8b148338  mod.s r9, r6, r8
000198  1f733300  addli r6, r6, 31
00019c  0b138330  div.s r6, r6, r8
0001a0  1f040001  addli r8, zero, 128
0001a4  9bb41400  slli r9, r9, 1
0001a8  15009010  dma_cfg zero, zero, r9, 8
0001ac  15060002  dma_cfg r12, zero, zero, 1
0001b0  15000004  dma_cfg zero, zero, zero, 2
0001b4  15046408  dma_cfg r8, r8, r6, 4
0001b8  9f048000  addli r9, zero, 64
0001bc  95019006  dma_cfg r3, zero, r9, 3
0001c0  35000000  dma_run zero
0001c4  1d100200  unlock r4
0001c8  9f614000  addli r3, zero, 38
0001cc  7d800100  xsignal r3, 0
0001d0  7d900100  xwait r3, 0
0001d4  6302bf01  loadli.w r4,  216(r30)
0001d8  6749afee  storeli.w r10, -2156(r30)
0001dc  00550002  load_param_i r10, 0
0001e0  63031f01  loadli.w r6,  136(r30)
0001e4  e344cf01  loadli.w r9,  228(r30)
0001e8  e3017f01  loadli.w r3,  184(r30)
0001ec  634c2f02  loadli.w r24,  276(r30)
0001f0  6304cf01  loadli.w r8,  224(r30)
0001f4  e3476f01  loadli.w r15,  180(r30)
0001f8  630a0f02  loadli.w r20,  256(r30)
0001fc  e346df01  loadli.w r13,  236(r30)
000200  6307ef01  loadli.w r14,  240(r30)
000204  6306df01  loadli.w r12,  232(r30)
000208  6348ef01  loadli.w r16,  244(r30)
00020c  e349ff01  loadli.w r19,  252(r30)
000210  e34a0f02  loadli.w r21,  260(r30)
000214  634e6f02  loadli.w r28,  308(r30)
000218  8b1c4538  mod.s r25, r10, r4
00021c  0b124530  div.s r4, r10, r4
000220  674f6fec  storeli.w r6, -2316(r30)
000224  63439f02  loadli.w r6,  332(r30)
000228  67096fee  storeli.w r6, -2160(r30)
00022c  63039f02  loadli.w r6,  328(r30)
000230  0b129220  mul.s r4, r4, r9
000234  e7086fee  storeli.w r6, -2168(r30)
000238  63438f02  loadli.w r6,  324(r30)
00023c  8b914118  sub.s r3, r3, r4
000240  0b128231  div.s r4, r4, r24
000244  67486fee  storeli.w r6, -2172(r30)
000248  0b938c20  mul.s r6, r25, r8
00024c  8b913440  min.s r3, r9, r3
000250  8b9c6718  sub.s r25, r15, r6
000254  e74d6fec  storeli.w r6, -2340(r30)
000258  8b910148  max.s r3, r3, zero
00025c  0b149441  min.s r8, r8, r25
000260  674d4fec  storeli.w r4, -2348(r30)
000264  0b128a31  div.s r4, r20, r24
000268  8b113740  min.s r3, r14, r3
00026c  0b140448  max.s r8, r8, zero
000270  0b930148  max.s r6, r3, zero
000274  e74e6fec  storeli.w r6, -2324(r30)
000278  670d4fec  storeli.w r4, -2352(r30)
00027c  0b928640  min.s r4, r13, r8
000280  0b120248  max.s r4, r4, zero
000284  8b914910  add.s r3, r19, r4
000288  670f4fec  storeli.w r4, -2320(r30)
00028c  0b12c840  min.s r4, r16, r12
000290  63485f02  loadli.w r16,  300(r30)
000294  8b140248  max.s r9, r4, zero
000298  9ff1f1ff  addli r3, r3, -1
00029c  0b949a10  add.s r8, r21, r9
0002a0  0b923131  div.s r4, r3, r19
0002a4  8b116a10  add.s r3, r20, r6
0002a8  00330002  core_id r6
0002ac  9ff1f1ff  addli r3, r3, -1
0002b0  1f74f4ff  addli r8, r8, -1
0002b4  0b974131  div.s r14, r3, r20
0002b8  0b165431  div.s r12, r8, r21
0002bc  63046f02  loadli.w r8,  304(r30)
0002c0  9f310000  addli r3, zero, 3
0002c4  bf926100  blt.s r3, r6, 164
0002c8  670e9fec  storeli.w r9, -2336(r30)
0002cc  e3048f02  loadli.w r9,  320(r30)
0002d0  e302af02  loadli.w r5,  336(r30)
0002d4  e3416f02  loadli.w r3,  308(r30)
0002d8  6709cfed  storeli.w r28, -2416(r30)
0002dc  63055f02  loadli.w r10,  296(r30)
0002e0  e7488fec  storeli.w r8, -2420(r30)
0002e4  630c3f02  loadli.w r24,  280(r30)
0002e8  eb530f05  load.d r[8:9], 80(r30)
0002ec  e3054f02  loadli.w r11,  288(r30)
0002f0  e3463f02  loadli.w r13,  284(r30)
0002f4  670a9fee  storeli.w r9, -2144(r30)
0002f8  e3047f02  loadli.w r9,  312(r30)
0002fc  674e5fec  storeli.w r5, -2332(r30)
000300  e3427f02  loadli.w r5,  316(r30)
000304  6744afee  storeli.w r10, -2236(r30)
000308  00350002  core_id r10
00030c  e7438fef  storeli.w r24, -2244(r30)
000310  e7099fee  storeli.w r9, -2152(r30)
000314  e3444f02  loadli.w r9,  292(r30)
000318  e7495fee  storeli.w r5, -2148(r30)
00031c  eb528f07  load.d r[6:7], 120(r30)
000320  0b9e3430  div.s r28, r9, r3
000324  9f110000  addli r3, zero, 1
000328  6704cfef  storeli.w r28, -2240(r30)
00032c  3f8fa100  blt.s r3, r10, 960
000330  b7620506  beq r10, zero, 3256
000334  e30ccfed  loadli.w r25,  -2336(r30)
000338  9f140000  addli r9, zero, 1
00033c  3b4f9516  bneq r10, r9, 12240
000340  9f010000  addli r3, zero, 0
000344  63084f01  loadli.w r16,  160(r30)
000348  b389312f  .word 0x2f3189b3
00034c  13253d01  seteq.d r10, r[27:28], r[20:21]
000350  b778380c  beq r16, r3, 6716
000354  9f840700  addli r9, r15, 0
000358  b768050c  beq r10, zero, 6712
00035c  7334afbf  store.d r[27:28], -1048(r30)
000360  b778050c  beq r10, zero, 6716
000364  5b9d0400  j 9448
000368  e3011f03  loadli.w r3,  392(r30)
00036c  1f540000  addli r8, zero, 5
000370  6706afee  storeli.w r10, -2208(r30)
000374  670a3fee  storeli.w r3, -2144(r30)
000378  e3411f03  loadli.w r3,  396(r30)
00037c  e7493fee  storeli.w r3, -2148(r30)
000380  e3410f03  loadli.w r3,  388(r30)
000384  e7093fee  storeli.w r3, -2152(r30)
000388  bf1f6402  blt.s r8, r6, 2020
00038c  1f440000  addli r8, zero, 4
000390  3769830c  beq r6, r8, 6744
000394  9f500000  addli r1, zero, 5
000398  bb5d1316  bneq r6, r1, 12148
00039c  9f00cff7  addli r1, r30, -1056
0003a0  1f411000  addli r2, zero, 12
0003a4  9f010000  addli r3, zero, 0
0003a8  0b933010  add.s r6, r1, r3
0003ac  9f910100  addli r3, r3, 1
0003b0  13842104  setlt.u r8, r3, r2
0003b4  73000300  store.b zero, 0(r6)
0003b8  bb4f04fe  bneq r8, zero, -16
0003bc  e3401f01  loadli.w r1,  140(r30)
0003c0  1f016fef  addli r2, r30, -2128
0003c4  670b4fee  storeli.w r4, -2128(r30)
0003c8  674befee  storeli.w r14, -2124(r30)
0003cc  e70bcfee  storeli.w r12, -2120(r30)
0003d0  9bb02000  slli r1, r1, 2
0003d4  0b111110  add.s r2, r2, r1
0003d8  e3010100  loadli.w r3,  0(r2)
0003dc  1f110000  addli r2, zero, 1
0003e0  e7093fee  storeli.w r3, -2152(r30)
0003e4  bfac2116  blt.s r3, r2, 12072
0003e8  63046f02  loadli.w r8,  304(r30)
0003ec  e3446f02  loadli.w r9,  308(r30)
0003f0  9f05cff7  addli r11, r30, -1056
0003f4  63420f03  loadli.w r4,  388(r30)
0003f8  63435f02  loadli.w r6,  300(r30)
0003fc  e3062f03  loadli.w r13,  400(r30)
000400  9f010000  addli r3, zero, 0
000404  9f374000  addli r15, zero, 35
000408  9f590000  addli r19, zero, 5
00040c  1f0a8000  addli r20, zero, 64
000410  1f4b4000  addli r22, zero, 36
000414  1f0c0000  addli r24, zero, 0
000418  8b901510  add.s r1, r11, r1
00041c  0b179430  div.s r14, r8, r9
000420  9f058200  addli r11, r4, 64
000424  67091fee  storeli.w r1, -2160(r30)
000428  9f70f6ff  addli r1, r12, -1
00042c  1f868600  addli r12, r13, 64
000430  e7081fee  storeli.w r1, -2168(r30)
000434  9f70f3ff  addli r1, r6, -1
000438  67481fee  storeli.w r1, -2172(r30)
00043c  5b020000  j 16
000440  e3003fef  loadli.w r1,  -2152(r30)
000444  9f910100  addli r3, r3, 1
000448  379b1116  beq r3, r1, 11972
00044c  e3002fef  loadli.w r1,  -2160(r30)
000450  63021fef  loadli.w r4,  -2168(r30)
000454  67803000  storeli.w r3, 0(r1)
000458  e300dff7  loadli.w r1,  -1048(r30)
00045c  bb9f40fe  bneq r1, r4, -28
000460  e340cff7  loadli.w r1,  -1052(r30)
000464  6344ffed  loadli.w r8,  -2308(r30)
000468  e344dfed  loadli.w r9,  -2324(r30)
00046c  6303cff7  loadli.w r6,  -1056(r30)
000470  e306ffed  loadli.w r13,  -2312(r30)
000474  0b928020  mul.s r4, r1, r8
000478  0b924418  sub.s r4, r9, r4
00047c  e304efed  loadli.w r9,  -2320(r30)
000480  0b124440  min.s r4, r8, r4
000484  0b14d320  mul.s r8, r6, r13
000488  0b948418  sub.s r8, r9, r8
00048c  e3040fee  loadli.w r9,  -2304(r30)
000490  0b120248  max.s r4, r4, zero
000494  8b9d8640  min.s r27, r13, r8
000498  6344efed  loadli.w r8,  -2316(r30)
00049c  0b1d9230  div.s r26, r4, r9
0004a0  0b920d48  max.s r4, r27, zero
0004a4  b7042400  beq r8, r2, 288
0004a8  9f340000  addli r9, zero, 3
0004ac  b7149400  beq r8, r9, 292
0004b0  9f240000  addli r9, zero, 2
0004b4  bb249400  bneq r8, r9, 296
0004b8  13030300  seteq r6, r6, zero
0004bc  93800002  setneq r1, r1, zero
0004c0  97001300  and r1, r6, r1
0004c4  37e40000  beq r1, zero, 280
0004c8  8b10ed10  add.s r1, r26, r14
0004cc  9ff0f0ff  addli r1, r1, -1
0004d0  0b9ee030  div.s r28, r1, r14
0004d4  bf3d2efe  blt.s r28, r2, -148
0004d8  9b3b7200  slli r23, r4, 7
0004dc  9f060000  addli r13, zero, 0
0004e0  5b070000  j 56
0004e4  15000004  dma_cfg zero, zero, zero, 2
0004e8  95044407  dma_cfg r9, r8, r20, 3
0004ec  9f000001  addli r1, zero, 128
0004f0  9580400a  dma_cfg r1, r1, r4, 5
0004f4  958b6b08  dma_cfg r23, r23, r6, 4
0004f8  35000000  dma_run zero
0004fc  1500200a  dma_cfg zero, zero, r2, 5
000500  15000010  dma_cfg zero, zero, zero, 8
000504  1d900900  unlock r19
000508  7d000b00  xsignal r22, 0
00050c  1f1c0c00  addli r24, r24, 1
000510  9f960600  addli r13, r13, 1
000514  b7bcc6ff  beq r13, r28, -212
000518  bfef2dfe  blt.s r27, r2, -8
00051c  7d900700  xwait r15, 0
000520  e3402fef  loadli.w r1,  -2156(r30)
000524  1f330000  addli r6, zero, 3
000528  b78f60fe  beq r1, r6, -32
00052c  8b90e620  mul.s r1, r13, r14
000530  8b101d18  sub.s r1, r26, r1
000534  8b101740  min.s r1, r14, r1
000538  3fcf20fe  blt.s r1, r2, -48
00053c  63044fef  loadli.w r8,  -2144(r30)
000540  1ff33000  addli r6, r1, 31
000544  1d800900  lock zero, r19
000548  15000012  dma_cfg zero, zero, zero, 9
00054c  8b1c7c38  mod.s r25, r24, r7
000550  63453fef  loadli.w r10,  -2148(r30)
000554  9bb01000  slli r1, r1, 1
000558  9b80e003  andi r1, r1, 62
00055c  8b148c38  mod.s r9, r24, r8
000560  1f044000  addli r8, zero, 32
000564  0b138330  div.s r6, r6, r8
000568  1f840500  addli r8, r11, 0
00056c  0b94a450  fmac.s r8, r9, r10
000570  ab04803f  lui r9, 260096
000574  15019100  dma_cfg r2, r2, r9, 0
000578  15001010  dma_cfg zero, zero, r1, 8
00057c  15010102  dma_cfg r2, r2, zero, 1
000580  9f040600  addli r9, r12, 0
000584  1b395300  slli r18, r6, 5
000588  8b945c50  fmac.s r9, r25, r5
00058c  3f202900  blt.s r18, r2, 8
000590  dbeaffff  j -172
000594  9f000001  addli r1, zero, 128
000598  9580200a  dma_cfg r1, r1, r2, 5
00059c  958b6b08  dma_cfg r23, r23, r6, 4
0005a0  9f000200  addli r1, r4, 0
0005a4  15000004  dma_cfg zero, zero, zero, 2
0005a8  95044407  dma_cfg r9, r8, r20, 3
0005ac  8b942411  add.s r9, r9, r18
0005b0  9ff0f0ff  addli r1, r1, -1
0005b4  1f040401  addli r8, r8, 128
0005b8  35000000  dma_run zero
0005bc  bbaf00fe  bneq r1, zero, -24
0005c0  dbe7ffff  j -196
0005c4  93000300  seteq r1, r6, zero
0005c8  3b8c00fe  bneq r1, zero, -256
0005cc  5b020000  j 16
0005d0  97906000  or r1, r1, r6
0005d4  93800000  seteq r1, r1, zero
0005d8  bbcb00fe  bneq r1, zero, -272
0005dc  e3400fef  loadli.w r1,  -2172(r30)
0005e0  8b904010  add.s r1, r1, r4
0005e4  8b9d0031  div.s r27, r1, r16
0005e8  3fe92dfe  blt.s r27, r2, -424
0005ec  e3402fef  loadli.w r1,  -2156(r30)
0005f0  1f330000  addli r6, zero, 3
0005f4  9f044000  addli r9, zero, 32
0005f8  1314a005  setlt.s r8, zero, r26
0005fc  1f0e0000  addli r28, zero, 0
000600  9f0c0200  addli r25, r4, 0
000604  93806002  setneq r1, r1, r6
000608  1f733d00  addli r6, r26, 31
00060c  8b1b9330  div.s r23, r6, r9
000610  1b331d00  slli r6, r26, 1
000614  1b09e303  andi r18, r6, 62
000618  178d8000  and r26, r1, r8
00061c  9bb65b00  slli r13, r23, 5
000620  db070000  j 60
000624  15000004  dma_cfg zero, zero, zero, 2
000628  95044407  dma_cfg r9, r8, r20, 3
00062c  1f040001  addli r8, zero, 128
000630  1504640a  dma_cfg r8, r8, r6, 5
000634  95807009  dma_cfg r1, r1, r23, 4
000638  35000000  dma_run zero
00063c  1500200a  dma_cfg zero, zero, r2, 5
000640  15000010  dma_cfg zero, zero, zero, 8
000644  1d900900  unlock r19
000648  7d000b00  xsignal r22, 0
00064c  1f1c0c00  addli r24, r24, 1
000650  1f1e0e00  addli r28, r28, 1
000654  8b9c0c19  sub.s r25, r25, r16
000658  b727beff  beq r28, r27, -536
00065c  8b100e21  mul.s r1, r28, r16
000660  8b101218  sub.s r1, r4, r1
000664  0b131840  min.s r6, r16, r1
000668  bf2f23fe  blt.s r6, r2, -24
00066c  7d900700  xwait r15, 0
000670  376f0dfe  beq r26, zero, -40
000674  e3004fef  loadli.w r1,  -2144(r30)
000678  8b187c38  mod.s r17, r24, r7
00067c  1d800900  lock zero, r19
000680  15000012  dma_cfg zero, zero, zero, 9
000684  ab0a803f  lui r21, 260096
000688  63453fef  loadli.w r10,  -2148(r30)
00068c  9f040600  addli r9, r12, 0
000690  1f840500  addli r8, r11, 0
000694  15015101  dma_cfg r2, r2, r21, 0
000698  15002011  dma_cfg zero, zero, r18, 8
00069c  15010102  dma_cfg r2, r2, zero, 1
0006a0  8b101c38  mod.s r1, r24, r1
0006a4  8b945850  fmac.s r9, r17, r5
0006a8  0b94a050  fmac.s r8, r1, r10
0006ac  9b307300  slli r1, r6, 7
0006b0  3fa02600  blt.s r13, r2, 8
0006b4  5beeffff  j -144
0006b8  0b139841  min.s r6, r16, r25
0006bc  1f050001  addli r10, zero, 128
0006c0  1505250a  dma_cfg r10, r10, r2, 5
0006c4  95807009  dma_cfg r1, r1, r23, 4
0006c8  0b130358  neg.s r6, r6
0006cc  15000004  dma_cfg zero, zero, zero, 2
0006d0  95044407  dma_cfg r9, r8, r20, 3
0006d4  8b94d410  add.s r9, r9, r13
0006d8  1f130300  addli r6, r6, 1
0006dc  1f040401  addli r8, r8, 128
0006e0  35000000  dma_run zero
0006e4  bb2f03fe  bneq r6, zero, -24
0006e8  dbeaffff  j -172
0006ec  e3415f03  loadli.w r3,  428(r30)
0006f0  e309cfed  loadli.w r19,  -2336(r30)
0006f4  67463fee  storeli.w r3, -2204(r30)
0006f8  e3015f03  loadli.w r3,  424(r30)
0006fc  67063fee  storeli.w r3, -2208(r30)
000700  e3414f03  loadli.w r3,  420(r30)
000704  e7053fee  storeli.w r3, -2216(r30)
000708  e3014f03  loadli.w r3,  416(r30)
00070c  67453fee  storeli.w r3, -2220(r30)
000710  9f210000  addli r3, zero, 2
000714  371c350a  beq r10, r3, 5892
000718  9f310000  addli r3, zero, 3
00071c  bb4f3514  bneq r10, r3, 11248
000720  e3015f01  loadli.w r3,  168(r30)
000724  e345cfed  loadli.w r11,  -2332(r30)
000728  bb910100  bneq r3, zero, 100
00072c  b3025028  .word 0x285002b3
000730  93a15000  seteq.d r3, r[2:3], r[6:7]
000734  bb800100  bneq r3, zero, 32
000738  00a00000  mfence { lm }
00073c  9f016000  addli r3, zero, 48
000740  ab0200f0  lui r5, 983040
000744  1f03cff7  addli r6, r30, -1056
000748  97915100  or r3, r3, r5
00074c  ffa16000  l_gm2lm r3, r6, 0(r[2:3])
000750  00a00200  mfence { lm, gm }
000754  9f01ffee  addli r3, r30, -2184
000758  b3001028  .word 0x281000b3
00075c  ebd20100  load.d r[6:7], 0(r3)
000760  93a01200  seteq.d r1, r[6:7], r[2:3]
000764  bba00000  bneq r1, zero, 40
000768  00a00000  mfence { lm }
00076c  9f006000  addli r1, zero, 48
000770  2b0100f0  lui r2, 983040
000774  9f01cff7  addli r3, r30, -1056
000778  97902000  or r1, r1, r2
00077c  1f01ffee  addli r2, r30, -2184
000780  eb520100  load.d r[6:7], 0(r2)
000784  ffa03200  l_gm2lm r1, r3, 0(r[6:7])
000788  00a00200  mfence { lm, gm }
00078c  9f00cff7  addli r1, r30, -1056
000790  1f411000  addli r2, zero, 12
000794  9f010000  addli r3, zero, 0
000798  8b923010  add.s r5, r1, r3
00079c  9f910100  addli r3, r3, 1
0007a0  13832104  setlt.u r6, r3, r2
0007a4  73800200  store.b zero, 0(r5)
0007a8  bb4f03fe  bneq r6, zero, -16
0007ac  e3401f01  loadli.w r1,  140(r30)
0007b0  1f016fef  addli r2, r30, -2128
0007b4  670b4fee  storeli.w r4, -2128(r30)
0007b8  674befee  storeli.w r14, -2124(r30)
0007bc  e70bcfee  storeli.w r12, -2120(r30)
0007c0  9bb02000  slli r1, r1, 2
0007c4  0b111110  add.s r2, r2, r1
0007c8  e3010100  loadli.w r3,  0(r2)
0007cc  1f110000  addli r2, zero, 1
0007d0  e7493fee  storeli.w r3, -2148(r30)
0007d4  bfec2114  blt.s r3, r2, 11064
0007d8  63025f02  loadli.w r4,  296(r30)
0007dc  9f012000  addli r3, zero, 16
0007e0  e3046f02  loadli.w r9,  304(r30)
0007e4  63456f02  loadli.w r10,  308(r30)
0007e8  1f03cff7  addli r6, r30, -1056
0007ec  e3425f02  loadli.w r5,  300(r30)
0007f0  9f5d2000  addli r27, zero, 21
0007f4  1f5e1000  addli r28, zero, 13
0007f8  8b101310  add.s r1, r6, r1
0007fc  9f731200  addli r7, r4, 15
000800  8b94a430  div.s r9, r9, r10
000804  1b337200  slli r6, r4, 7
000808  1f058000  addli r10, zero, 64
00080c  e7091fee  storeli.w r1, -2152(r30)
000810  9f70f2ff  addli r1, r4, -1
000814  0b943338  mod.s r8, r7, r3
000818  67491fee  storeli.w r1, -2156(r30)
00081c  8b908318  sub.s r1, r7, r8
000820  1ff4f2ff  addli r8, r5, -1
000824  9f020000  addli r5, zero, 0
000828  e7071fee  storeli.w r1, -2184(r30)
00082c  db050000  j 44
000830  9f702000  addli r1, zero, 23
000834  7d800000  xsignal r1, 0
000838  9f003000  addli r1, zero, 24
00083c  7d800000  xsignal r1, 0
000840  e3024fef  loadli.w r5,  -2144(r30)
000844  e309cfed  loadli.w r19,  -2336(r30)
000848  e345cfed  loadli.w r11,  -2332(r30)
00084c  e3403fef  loadli.w r1,  -2148(r30)
000850  9f920200  addli r5, r5, 1
000854  b7ea1214  beq r5, r1, 10936
000858  e3003fef  loadli.w r1,  -2152(r30)
00085c  6349efed  loadli.w r18,  -2316(r30)
000860  670a5fee  storeli.w r5, -2144(r30)
000864  67805000  storeli.w r5, 0(r1)
000868  e300cff7  loadli.w r1,  -1056(r30)
00086c  6342cff7  loadli.w r4,  -1052(r30)
000870  e307dff7  loadli.w r15,  -1048(r30)
000874  3fc02500  blt.s r11, r2, 16
000878  9ff5f5ff  addli r11, r11, -1
00087c  674ebfec  storeli.w r11, -2332(r30)
000880  5b020000  j 16
000884  674ebfec  storeli.w r11, -2332(r30)
000888  9f423000  addli r5, zero, 28
00088c  7d900200  xwait r5, 0
000890  e308ffed  loadli.w r17,  -2312(r30)
000894  e306efed  loadli.w r13,  -2320(r30)
000898  6347ffed  loadli.w r14,  -2308(r30)
00089c  8b921710  add.s r5, r15, r1
0008a0  8b934710  add.s r7, r15, r4
0008a4  0b161210  add.s r12, r4, r1
0008a8  634b0fef  loadli.w r22,  -2172(r30)
0008ac  8b951021  mul.s r11, r1, r17
0008b0  8b95b618  sub.s r11, r13, r11
0008b4  8b16e220  mul.s r13, r4, r14
0008b8  8b9ab840  min.s r21, r17, r11
0008bc  e345dfed  loadli.w r11,  -2324(r30)
0008c0  e308bfee  loadli.w r17,  -2216(r30)
0008c4  8b9b0a48  max.s r23, r21, zero
0008c8  8b95d518  sub.s r11, r11, r13
0008cc  8b921239  mod.s r5, r5, r17
0008d0  e348cfee  loadli.w r17,  -2204(r30)
0008d4  8b15b740  min.s r11, r14, r11
0008d8  6307dfed  loadli.w r14,  -2328(r30)
0008dc  8b931339  mod.s r7, r7, r17
0008e0  e3081fef  loadli.w r17,  -2168(r30)
0008e4  8b950548  max.s r11, r11, zero
0008e8  8b96e720  mul.s r13, r15, r14
0008ec  0b161639  mod.s r12, r12, r17
0008f0  8b96d918  sub.s r13, r19, r13
0008f4  8b16d740  min.s r13, r14, r13
0008f8  63070fee  loadli.w r14,  -2304(r30)
0008fc  8b9c0648  max.s r25, r13, zero
000900  0b9ce530  div.s r24, r11, r14
000904  e345afee  loadli.w r11,  -2220(r30)
000908  0b9db220  mul.s r26, r5, r11
00090c  e302cfee  loadli.w r5,  -2208(r30)
000910  8b955320  mul.s r11, r7, r5
000914  e3022fef  loadli.w r5,  -2160(r30)
000918  0b1b5650  fmac.s r22, r12, r5
00091c  37352900  beq r18, r2, 332
000920  9f320000  addli r5, zero, 3
000924  37055900  beq r18, r5, 320
000928  9f220000  addli r5, zero, 2
00092c  3b505900  bneq r18, r5, 20
000930  93800000  seteq r1, r1, zero
000934  13020202  setneq r4, r4, zero
000938  97804000  and r1, r1, r4
00093c  bbd40000  bneq r1, zero, 308
000940  e3402fef  loadli.w r1,  -2156(r30)
000944  63428fee  loadli.w r4,  -2236(r30)
000948  8b907011  add.s r1, r1, r23
00094c  8b9a4030  div.s r21, r1, r4
000950  bf8b2afe  blt.s r21, r2, -288
000954  9bb02c00  slli r1, r25, 2
000958  9f620000  addli r5, zero, 6
00095c  1f0a0000  addli r20, zero, 0
000960  9bb98b00  slli r19, r23, 8
000964  9b08fc03  andi r17, r24, 63
000968  9ff07000  addli r1, r1, 63
00096c  17565c00  sra r12, r24, r5
000970  0b92a038  mod.s r4, r1, r10
000974  8b904018  sub.s r1, r1, r4
000978  6302ffee  loadli.w r4,  -2184(r30)
00097c  9bb26000  slli r5, r1, 6
000980  0b994020  mul.s r18, r1, r4
000984  1ff2faff  addli r4, r21, -1
000988  9f000000  addli r1, zero, 0
00098c  db020000  j 20
000990  0b1d2d11  add.s r26, r26, r18
000994  1f1a0a00  addli r20, r20, 1
000998  0b1b6b10  add.s r22, r22, r6
00099c  375a5aff  beq r20, r21, -364
0009a0  63478fee  loadli.w r14,  -2236(r30)
0009a4  7d900d00  xwait r27, 0
0009a8  7d100e00  xwait r28, 0
0009ac  8b16ea20  mul.s r13, r20, r14
0009b0  8b93db18  sub.s r7, r23, r13
0009b4  0b177740  min.s r14, r14, r7
0009b8  bf612700  blt.s r14, r2, 120
0009bc  1d000100  lock zero, r2
0009c0  09007105  mm_cfg zero, r2, r23, 2
0009c4  0985ec00  mm_cfg r10, r25, r14, 0
0009c8  1f0e0b00  addli r28, r22, 0
0009cc  9f8d0500  addli r27, r11, 0
0009d0  9f030600  addli r7, r12, 0
0009d4  b7b00700  beq r15, zero, 44
0009d8  3f60ac00  blt.s r24, r10, 24
0009dc  291ebd11  mm_acc r28, r26, r27, 8
0009e0  8b9d5d10  add.s r27, r27, r5
0009e4  9ff3f3ff  addli r7, r7, -1
0009e8  0b1e3e11  add.s r28, r28, r19
0009ec  bbcf03fe  bneq r7, zero, -16
0009f0  b7d00800  beq r17, zero, 52
0009f4  8988ec00  mm_cfg r17, r25, r14, 0
0009f8  291ebd11  mm_acc r28, r26, r27, 8
0009fc  5b050000  j 40
000a00  3f60ac00  blt.s r24, r10, 24
000a04  290ebd11  mm r28, r26, r27, 8
000a08  8b9d5d10  add.s r27, r27, r5
000a0c  9ff3f3ff  addli r7, r7, -1
000a10  0b1e3e11  add.s r28, r28, r19
000a14  bbcf03fe  bneq r7, zero, -16
000a18  37b00800  beq r17, zero, 12
000a1c  8988ec00  mm_cfg r17, r25, r14, 0
000a20  290ebd11  mm r28, r26, r27, 8
000a24  9f5d2000  addli r27, zero, 21
000a28  1f5e1000  addli r28, zero, 13
000a2c  1d100100  unlock r2
000a30  9f030400  addli r7, r8, 0
000a34  37204a00  beq r20, r4, 8
000a38  9f030000  addli r7, zero, 0
000a3c  8b93d310  add.s r7, r7, r13
000a40  8b93e310  add.s r7, r7, r14
000a44  8b930331  div.s r7, r7, r16
000a48  4bad13fe  ble.s r7, r1, -184
000a4c  8b901318  sub.s r1, r7, r1
000a50  7d800100  xsignal r3, 0
000a54  9ff0f0ff  addli r1, r1, -1
000a58  bbef00fe  bneq r1, zero, -8
000a5c  9f800300  addli r1, r7, 0
000a60  5be6ffff  j -208
000a64  97101200  or r1, r4, r1
000a68  93800000  seteq r1, r1, zero
000a6c  37db00fe  beq r1, zero, -300
000a70  8b109c10  add.s r1, r24, r9
000a74  9ff0f0ff  addli r1, r1, -1
000a78  0b929030  div.s r4, r1, r9
000a7c  bf5622fe  blt.s r4, r2, -588
000a80  9bb02c00  slli r1, r25, 2
000a84  9ff21400  addli r5, r9, 15
000a88  9bb88b00  slli r17, r23, 8
000a8c  1f090000  addli r18, zero, 0
000a90  9ff07000  addli r1, r1, 63
000a94  8b933238  mod.s r7, r5, r3
000a98  0b96a038  mod.s r12, r1, r10
000a9c  8b927218  sub.s r5, r5, r7
000aa0  8b93c018  sub.s r7, r1, r12
000aa4  9bb05b00  slli r1, r23, 5
000aa8  8b927220  mul.s r5, r5, r7
000aac  9bb36300  slli r7, r7, 6
000ab0  5b030000  j 24
000ab4  1d100100  unlock r2
000ab8  7d800100  xsignal r3, 0
000abc  1f190900  addli r18, r18, 1
000ac0  8b955510  add.s r11, r11, r5
000ac4  b73549fe  beq r18, r4, -660
000ac8  7d900d00  xwait r27, 0
000acc  7d100e00  xwait r28, 0
000ad0  bfaf2afe  blt.s r21, r2, -24
000ad4  0b169920  mul.s r12, r18, r9
000ad8  9f064000  addli r13, zero, 32
000adc  1d000100  lock zero, r2
000ae0  09007105  mm_cfg zero, r2, r23, 2
000ae4  09857c01  mm_cfg r10, r25, r23, 0
000ae8  1f8a0500  addli r20, r11, 0
000aec  8b16d630  div.s r13, r12, r13
000af0  1bb75600  slli r14, r13, 5
000af4  0b17e618  sub.s r14, r12, r14
000af8  0b16cc18  sub.s r12, r24, r12
000afc  0b97d050  fmac.s r14, r1, r13
000b00  0b96c440  min.s r12, r9, r12
000b04  9b362700  slli r13, r14, 2
000b08  1f670000  addli r14, zero, 6
000b0c  9759e600  sra r19, r12, r14
000b10  8b966611  add.s r13, r13, r22
000b14  1b07f603  andi r14, r12, 63
000b18  b7b00700  beq r15, zero, 44
000b1c  3f60a600  blt.s r12, r10, 24
000b20  a9164d11  mm_acc r13, r26, r20, 8
000b24  0b1a7a10  add.s r20, r20, r7
000b28  9ff9f9ff  addli r19, r19, -1
000b2c  8b961611  add.s r13, r13, r17
000b30  bbcf09fe  bneq r19, zero, -16
000b34  370e07fe  beq r14, zero, -128
000b38  09877c01  mm_cfg r14, r25, r23, 0
000b3c  a9164d11  mm_acc r13, r26, r20, 8
000b40  dbeeffff  j -140
000b44  3f60a600  blt.s r12, r10, 24
000b48  a9064d11  mm r13, r26, r20, 8
000b4c  0b1a7a10  add.s r20, r20, r7
000b50  9ff9f9ff  addli r19, r19, -1
000b54  8b961611  add.s r13, r13, r17
000b58  bbcf09fe  bneq r19, zero, -16
000b5c  376d07fe  beq r14, zero, -168
000b60  09877c01  mm_cfg r14, r25, r23, 0
000b64  a9064d11  mm r13, r26, r20, 8
000b68  dbe9ffff  j -180
000b6c  9f600000  addli r1, zero, 6
000b70  373a130c  beq r6, r1, 6796
000b74  9f700000  addli r1, zero, 7
000b78  3b5e1312  bneq r6, r1, 10132
000b7c  63015f01  loadli.w r2,  168(r30)
000b80  ab00803f  lui r1, 260096
000b84  3b620100  bneq r2, zero, 152
000b88  9f01efee  addli r3, r30, -2192
000b8c  b3001028  .word 0x281000b3
000b90  ebd20100  load.d r[6:7], 0(r3)
000b94  13a11200  seteq.d r2, r[6:7], r[2:3]
000b98  ab00803f  lui r1, 260096
000b9c  bb710100  bneq r2, zero, 124
000ba0  00a00000  mfence { lm }
000ba4  9f006000  addli r1, zero, 48
000ba8  2b0100f0  lui r2, 983040
000bac  9f01cff7  addli r3, r30, -1056
000bb0  97902000  or r1, r1, r2
000bb4  ffa03200  l_gm2lm r1, r3, 0(r[6:7])
000bb8  00a00200  mfence { lm, gm }
000bbc  e300cff7  loadli.w r1,  -1056(r30)
000bc0  6341cff7  loadli.w r2,  -1052(r30)
000bc4  e301dff7  loadli.w r3,  -1048(r30)
000bc8  e342dff7  loadli.w r5,  -1044(r30)
000bcc  6303eff7  loadli.w r6,  -1040(r30)
000bd0  e343eff7  loadli.w r7,  -1036(r30)
000bd4  63440ff8  loadli.w r8,  -1020(r30)
000bd8  e3041ff8  loadli.w r9,  -1016(r30)
000bdc  63451ff8  loadli.w r10,  -1012(r30)
000be0  8be02048  max.f r1, r1, r2
000be4  0be15148  max.f r2, r3, r5
000be8  8b617348  max.f r3, r6, r7
000bec  e302fff7  loadli.w r5,  -1032(r30)
000bf0  6343fff7  loadli.w r6,  -1028(r30)
000bf4  e3030ff8  loadli.w r7,  -1024(r30)
000bf8  0b613148  max.f r2, r2, r3
000bfc  8be26248  max.f r5, r5, r6
000c00  0be38348  max.f r6, r7, r8
000c04  8be3a448  max.f r7, r9, r10
000c08  8be02048  max.f r1, r1, r2
000c0c  8b617348  max.f r3, r6, r7
000c10  0be13248  max.f r2, r5, r3
000c14  8be02048  max.f r1, r1, r2
000c18  8f801018  div.f.rn r1, r1, r1
000c1c  63419f01  loadli.w r2,  204(r30)
000c20  1f031fef  addli r6, r30, -2168
000c24  9f020000  addli r5, zero, 0
000c28  e7092fee  storeli.w r2, -2152(r30)
000c2c  6b518f01  load.d r[3:4], 24(r30)
000c30  73302300  store.d r[3:4], 0(r6)
000c34  1f01cff7  addli r2, r30, -1056
000c38  9f411000  addli r3, zero, 12
000c3c  0b135110  add.s r6, r2, r5
000c40  9f920200  addli r5, r5, 1
000c44  93833204  setlt.u r7, r5, r3
000c48  73000300  store.b zero, 0(r6)
000c4c  bbcf03fe  bneq r7, zero, -16
000c50  63411f01  loadli.w r2,  140(r30)
000c54  9f016fef  addli r3, r30, -2128
000c58  670b4fee  storeli.w r4, -2128(r30)
000c5c  674befee  storeli.w r14, -2124(r30)
000c60  e70bcfee  storeli.w r12, -2120(r30)
000c64  1f120000  addli r4, zero, 1
000c68  1b312100  slli r2, r2, 2
000c6c  8b912110  add.s r3, r3, r2
000c70  e3850100  loadli.w r11,  0(r3)
000c74  3fea4512  blt.s r11, r4, 9880
000c78  63459f01  loadli.w r10,  204(r30)
000c7c  63036f02  loadli.w r6,  304(r30)
000c80  e3446f02  loadli.w r9,  308(r30)
000c84  1f04cff7  addli r8, r30, -1056
000c88  e3410f03  loadli.w r3,  388(r30)
000c8c  e3425f02  loadli.w r5,  300(r30)
000c90  1f76f6ff  addli r12, r12, -1
000c94  9f030000  addli r7, zero, 0
000c98  9f07dfee  addli r15, r30, -2200
000c9c  9f5b0000  addli r23, zero, 5
000ca0  9f0c8000  addli r25, zero, 64
000ca4  9f5d3000  addli r27, zero, 29
000ca8  9f090000  addli r19, zero, 0
000cac  6748bfee  storeli.w r11, -2172(r30)
000cb0  0b142410  add.s r8, r8, r2
000cb4  6707cfee  storeli.w r12, -2192(r30)
000cb8  1b311500  slli r2, r10, 1
000cbc  0b1a9330  div.s r20, r6, r9
000cc0  b316d52c  .word 0x2cd516b3
000cc4  1f898100  addli r18, r3, 64
000cc8  e7078fee  storeli.w r8, -2184(r30)
000ccc  67492fee  storeli.w r2, -2156(r30)
000cd0  0b110158  neg.s r2, r2
000cd4  73b0d700  store.d r[14:15], 0(r15)
000cd8  67092fee  storeli.w r2, -2160(r30)
000cdc  1ff1f2ff  addli r2, r5, -1
000ce0  67462fee  storeli.w r2, -2204(r30)
000ce4  db040000  j 36
000ce8  1f417000  addli r2, zero, 60
000cec  7d000100  xsignal r2, 0
000cf0  7d100100  xwait r2, 0
000cf4  e3450fef  loadli.w r11,  -2172(r30)
000cf8  6304ffee  loadli.w r8,  -2184(r30)
000cfc  6306efee  loadli.w r12,  -2192(r30)
000d00  9f930300  addli r7, r7, 1
000d04  37a8b312  beq r7, r11, 9736
000d08  67007400  storeli.w r7, 0(r8)
000d0c  6301dff7  loadli.w r2,  -1048(r30)
000d10  bb4fc1fe  bneq r2, r12, -16
000d14  6343cff7  loadli.w r6,  -1052(r30)
000d18  e345ffed  loadli.w r11,  -2308(r30)
000d1c  6346dfed  loadli.w r12,  -2324(r30)
000d20  e301cff7  loadli.w r3,  -1056(r30)
000d24  e306ffed  loadli.w r13,  -2312(r30)
000d28  6341bfed  loadli.w r2,  -2340(r30)
000d2c  9f08dfee  addli r17, r30, -2200
000d30  6344afed  loadli.w r8,  -2348(r30)
000d34  1f0c1fef  addli r24, r30, -2168
000d38  ebda0800  load.d r[22:23], 0(r17)
000d3c  8b14b320  mul.s r9, r6, r11
000d40  8b92d120  mul.s r5, r3, r13
000d44  0b91d150  fmac.s r2, r3, r13
000d48  8b149618  sub.s r9, r12, r9
000d4c  6306efed  loadli.w r12,  -2320(r30)
000d50  8b949540  min.s r9, r11, r9
000d54  8b125618  sub.s r5, r12, r5
000d58  b315b12c  .word 0x2cb115b3
000d5c  0b910448  max.s r2, r9, zero
000d60  0b9e5640  min.s r28, r13, r5
000d64  e3020fee  loadli.w r5,  -2304(r30)
000d68  8bb55521  mul.sl r[12:13], r[12:13], r[22:23]
000d6c  eb560c00  load.d r[14:15], 0(r24)
000d70  97b54502  sll.d r[12:13], r[12:13], r4
000d74  0b1d0e48  max.s r26, r28, zero
000d78  8b125130  div.s r5, r2, r5
000d7c  6301afed  loadli.w r2,  -2352(r30)
000d80  8ba5b610  add.ul r[12:13], r[14:15], r[12:13]
000d84  17b74a02  sll.d r[15:16], r[22:23], r4
000d88  0b142350  fmac.s r8, r6, r2
000d8c  6341efed  loadli.w r2,  -2316(r30)
000d90  33148428  .word 0x28841433
000d94  17344402  sll.d r[9:10], r[9:10], r4
000d98  8ba58510  add.ul r[12:13], r[12:13], r[9:10]
000d9c  b7044100  beq r2, r4, 288
000da0  1f340000  addli r8, zero, 3
000da4  b7148100  beq r2, r8, 292
000da8  1f240000  addli r8, zero, 2
000dac  bb248100  bneq r2, r8, 296
000db0  13810100  seteq r2, r3, zero
000db4  93010302  setneq r3, r6, zero
000db8  17013100  and r2, r2, r3
000dbc  37640100  beq r2, zero, 280
000dc0  0b914211  add.s r2, r5, r20
000dc4  1f71f1ff  addli r2, r2, -1
000dc8  0b1c4131  div.s r24, r2, r20
000dcc  3f7c4cfe  blt.s r24, r4, -228
000dd0  9b317d00  slli r3, r26, 7
000dd4  1f030000  addli r6, zero, 0
000dd8  db070000  j 60
000ddc  95040004  dma_cfg r9, zero, zero, 2
000de0  15849807  dma_cfg r8, r17, r25, 3
000de4  63442fef  loadli.w r8,  -2156(r30)
000de8  9f040001  addli r9, zero, 128
000dec  1584a40b  dma_cfg r8, r9, r26, 5
000df0  958c2108  dma_cfg r25, r3, r2, 4
000df4  35000000  dma_run zero
000df8  1500400a  dma_cfg zero, zero, r4, 5
000dfc  15000010  dma_cfg zero, zero, zero, 8
000e00  1d900b00  unlock r23
000e04  7d800d00  xsignal r27, 0
000e08  9f990900  addli r19, r19, 1
000e0c  1f130300  addli r6, r6, 1
000e10  376b83ff  beq r6, r24, -296
000e14  bf6f4efe  blt.s r28, r4, -8
000e18  0b144321  mul.s r8, r6, r20
000e1c  9f142000  addli r9, zero, 17
000e20  7d900400  xwait r9, 0
000e24  9f544000  addli r9, zero, 37
000e28  7d900400  xwait r9, 0
000e2c  0b918218  sub.s r2, r5, r8
000e30  0b112a40  min.s r2, r20, r2
000e34  3f4f41fe  blt.s r2, r4, -48
000e38  e3064fef  loadli.w r13,  -2144(r30)
000e3c  9f7a3100  addli r21, r2, 31
000e40  1b311100  slli r2, r2, 1
000e44  33148428  .word 0x28841433
000e48  1d800b00  lock zero, r23
000e4c  15000012  dma_cfg zero, zero, zero, 9
000e50  15021200  dma_cfg r4, r4, r1, 0
000e54  9f080900  addli r17, r18, 0
000e58  17344402  sll.d r[9:10], r[9:10], r4
000e5c  0b9bd938  mod.s r22, r19, r13
000e60  9b06e103  andi r13, r2, 62
000e64  1f014000  addli r2, zero, 32
000e68  1500d010  dma_cfg zero, zero, r13, 8
000e6c  15000202  dma_cfg zero, r4, zero, 1
000e70  e3463fef  loadli.w r13,  -2148(r30)
000e74  0ba48510  add.ul r[9:10], r[12:13], r[9:10]
000e78  0b912a30  div.s r2, r21, r2
000e7c  8b18db50  fmac.s r17, r22, r13
000e80  3f204500  blt.s r10, r4, 8
000e84  5bebffff  j -168
000e88  e3062fef  loadli.w r13,  -2160(r30)
000e8c  9f0a0001  addli r21, zero, 128
000e90  95864a0a  dma_cfg r13, r21, r4, 5
000e94  958c2108  dma_cfg r25, r3, r2, 4
000e98  1f010d00  addli r2, r26, 0
000e9c  95040004  dma_cfg r9, zero, zero, 2
000ea0  15849807  dma_cfg r8, r17, r25, 3
000ea4  0b24e410  add.ul r[9:10], r[9:10], r[15:16]
000ea8  1f71f1ff  addli r2, r2, -1
000eac  9f880801  addli r17, r17, 128
000eb0  35000000  dma_run zero
000eb4  bb2f01fe  bneq r2, zero, -24
000eb8  5be8ffff  j -192
000ebc  13810100  seteq r2, r3, zero
000ec0  3b0c01fe  bneq r2, zero, -256
000ec4  5b020000  j 16
000ec8  17113300  or r2, r6, r3
000ecc  13010100  seteq r2, r2, zero
000ed0  bb4b01fe  bneq r2, zero, -272
000ed4  6341cfee  loadli.w r2,  -2204(r30)
000ed8  0b11a111  add.s r2, r2, r26
000edc  0b1e0131  div.s r28, r2, r16
000ee0  3f284efe  blt.s r28, r4, -504
000ee4  1ff13200  addli r2, r5, 31
000ee8  9f014000  addli r3, zero, 32
000eec  1f0c0000  addli r24, zero, 0
000ef0  1f030d00  addli r6, r26, 0
000ef4  8b113130  div.s r3, r2, r3
000ef8  1bb11200  slli r2, r5, 1
000efc  9b08e103  andi r17, r2, 62
000f00  5b080000  j 64
000f04  150b0004  dma_cfg r22, zero, zero, 2
000f08  950a9407  dma_cfg r21, r8, r25, 3
000f0c  63442fef  loadli.w r8,  -2156(r30)
000f10  9f060001  addli r13, zero, 128
000f14  1584960a  dma_cfg r8, r13, r9, 5
000f18  950c3108  dma_cfg r25, r2, r3, 4
000f1c  35000000  dma_run zero
000f20  1500400a  dma_cfg zero, zero, r4, 5
000f24  15000010  dma_cfg zero, zero, zero, 8
000f28  1d900b00  unlock r23
000f2c  7d800d00  xsignal r27, 0
000f30  9f990900  addli r19, r19, 1
000f34  1f1c0c00  addli r24, r24, 1
000f38  0b130319  sub.s r6, r6, r16
000f3c  b736ccff  beq r24, r28, -596
000f40  0b110c21  mul.s r2, r24, r16
000f44  0b142d18  sub.s r8, r26, r2
000f48  8b148840  min.s r9, r16, r8
000f4c  bfaf44fe  blt.s r9, r4, -24
000f50  1f142000  addli r8, zero, 17
000f54  7d100400  xwait r8, 0
000f58  1f544000  addli r8, zero, 37
000f5c  7d100400  xwait r8, 0
000f60  3fbf42fe  blt.s r5, r4, -52
000f64  63043fef  loadli.w r8,  -2152(r30)
000f68  0b118120  mul.s r2, r2, r8
000f6c  63044fef  loadli.w r8,  -2144(r30)
000f70  1d800b00  lock zero, r23
000f74  15000012  dma_cfg zero, zero, zero, 9
000f78  b31a512d  .word 0x2d511ab3
000f7c  63413fef  loadli.w r2,  -2148(r30)
000f80  15021200  dma_cfg r4, r4, r1, 0
000f84  15001011  dma_cfg zero, zero, r17, 8
000f88  15000202  dma_cfg zero, r4, zero, 1
000f8c  8b968938  mod.s r13, r19, r8
000f90  1f040900  addli r8, r18, 0
000f94  97ba4a02  sll.d r[22:23], r[22:23], r4
000f98  8baa5511  add.ul r[22:23], r[12:13], r[22:23]
000f9c  0b942650  fmac.s r8, r13, r2
000fa0  1bb17400  slli r2, r9, 7
000fa4  3f204500  blt.s r10, r4, 8
000fa8  dbebffff  j -164
000fac  8b146840  min.s r9, r16, r6
000fb0  9f0d0001  addli r27, zero, 128
000fb4  e3062fef  loadli.w r13,  -2160(r30)
000fb8  95864d0a  dma_cfg r13, r27, r4, 5
000fbc  950c3108  dma_cfg r25, r2, r3, 4
000fc0  9f5d3000  addli r27, zero, 29
000fc4  0b910458  neg.s r2, r9
000fc8  150b0004  dma_cfg r22, zero, zero, 2
000fcc  950a9407  dma_cfg r21, r8, r25, 3
000fd0  8baaea10  add.ul r[22:23], r[22:23], r[15:16]
000fd4  1f110100  addli r2, r2, 1
000fd8  1f040401  addli r8, r8, 128
000fdc  35000000  dma_run zero
000fe0  bb2f01fe  bneq r2, zero, -24
000fe4  dbe7ffff  j -196
000fe8  ab03803f  lui r7, 260096
000fec  e3015f01  loadli.w r3,  168(r30)
000ff0  e7067fee  storeli.w r7, -2200(r30)
000ff4  e7087fee  storeli.w r7, -2168(r30)
000ff8  9f03ffee  addli r7, r30, -2184
000ffc  6bdd0300  load.d r[27:28], 0(r7)
001000  bbf50100  bneq r3, zero, 380
001004  b3037028  .word 0x287003b3
001008  ab01803f  lui r3, 260096
00100c  93a37000  seteq.d r7, r[2:3], r[8:9]
001010  bbf10300  bneq r7, zero, 124
001014  00a00000  mfence { lm }
001018  9f016000  addli r3, zero, 48
00101c  ab0300f0  lui r7, 983040
001020  1f04cff7  addli r8, r30, -1056
001024  97917100  or r3, r3, r7
001028  ffa18000  l_gm2lm r3, r8, 0(r[2:3])
00102c  00a00200  mfence { lm, gm }
001030  e300cff7  loadli.w r1,  -1056(r30)
001034  6341cff7  loadli.w r2,  -1052(r30)
001038  e301dff7  loadli.w r3,  -1048(r30)
00103c  e343dff7  loadli.w r7,  -1044(r30)
001040  6304eff7  loadli.w r8,  -1040(r30)
001044  e344eff7  loadli.w r9,  -1036(r30)
001048  63450ff8  loadli.w r10,  -1020(r30)
00104c  e3071ff8  loadli.w r15,  -1016(r30)
001050  63481ff8  loadli.w r16,  -1012(r30)
001054  8be02048  max.f r1, r1, r2
001058  0be17148  max.f r2, r3, r7
00105c  8b619448  max.f r3, r8, r9
001060  e303fff7  loadli.w r7,  -1032(r30)
001064  6344fff7  loadli.w r8,  -1028(r30)
001068  e3040ff8  loadli.w r9,  -1024(r30)
00106c  0b613148  max.f r2, r2, r3
001070  8be38348  max.f r7, r7, r8
001074  0be4a448  max.f r8, r9, r10
001078  8be40749  max.f r9, r15, r16
00107c  8be02048  max.f r1, r1, r2
001080  8b619448  max.f r3, r8, r9
001084  0be13348  max.f r2, r7, r3
001088  8be12048  max.f r3, r1, r2
00108c  b3001028  .word 0x281000b3
001090  13211d00  seteq.d r2, r[27:28], r[2:3]
001094  ab00803f  lui r1, 260096
001098  bb710100  bneq r2, zero, 124
00109c  00a00000  mfence { lm }
0010a0  9f006000  addli r1, zero, 48
0010a4  2b0100f0  lui r2, 983040
0010a8  9f03cff7  addli r7, r30, -1056
0010ac  97902000  or r1, r1, r2
0010b0  ff207d00  l_gm2lm r1, r7, 0(r[27:28])
0010b4  00a00200  mfence { lm, gm }
0010b8  e300cff7  loadli.w r1,  -1056(r30)
0010bc  6341cff7  loadli.w r2,  -1052(r30)
0010c0  e303dff7  loadli.w r7,  -1048(r30)
0010c4  6344dff7  loadli.w r8,  -1044(r30)
0010c8  e304eff7  loadli.w r9,  -1040(r30)
0010cc  6345eff7  loadli.w r10,  -1036(r30)
0010d0  e3470ff8  loadli.w r15,  -1020(r30)
0010d4  63081ff8  loadli.w r16,  -1016(r30)
0010d8  e3481ff8  loadli.w r17,  -1012(r30)
0010dc  8be02048  max.f r1, r1, r2
0010e0  0be18348  max.f r2, r7, r8
0010e4  8be3a448  max.f r7, r9, r10
0010e8  6304fff7  loadli.w r8,  -1032(r30)
0010ec  e344fff7  loadli.w r9,  -1028(r30)
0010f0  63050ff8  loadli.w r10,  -1024(r30)
0010f4  0b617148  max.f r2, r2, r7
0010f8  0b649448  max.f r8, r8, r9
0010fc  8b64f548  max.f r9, r10, r15
001100  0b651849  max.f r10, r16, r17
001104  8be02048  max.f r1, r1, r2
001108  8be3a448  max.f r7, r9, r10
00110c  0b617448  max.f r2, r8, r7
001110  8be02048  max.f r1, r1, r2
001114  b3037028  .word 0x287003b3
001118  13a17200  seteq.d r2, r[6:7], r[8:9]
00111c  bb000100  bneq r2, zero, 32
001120  00a00000  mfence { lm }
001124  1f016000  addli r2, zero, 48
001128  ab0300f0  lui r7, 983040
00112c  1f04cff7  addli r8, r30, -1056
001130  17117100  or r2, r2, r7
001134  7fa18200  l_gm2lm r2, r8, 0(r[6:7])
001138  00a00200  mfence { lm, gm }
00113c  9f04efee  addli r9, r30, -2192
001140  b3025028  .word 0x285002b3
001144  ebd30400  load.d r[8:9], 0(r9)
001148  13a15300  seteq.d r2, r[8:9], r[6:7]
00114c  bb000100  bneq r2, zero, 32
001150  00a00000  mfence { lm }
001154  1f016000  addli r2, zero, 48
001158  ab0200f0  lui r5, 983040
00115c  1f03cff7  addli r6, r30, -1056
001160  17115100  or r2, r2, r5
001164  7fa16300  l_gm2lm r2, r6, 0(r[8:9])
001168  00a00200  mfence { lm, gm }
00116c  0f813118  div.f.rn r2, r3, r3
001170  8f801018  div.f.rn r1, r1, r1
001174  e7062fee  storeli.w r2, -2200(r30)
001178  e7081fee  storeli.w r1, -2168(r30)
00117c  e3407f02  loadli.w r1,  316(r30)
001180  9f028fed  addli r5, r30, -2368
001184  1f037fed  addli r6, r30, -2376
001188  9f010000  addli r3, zero, 0
00118c  67491fee  storeli.w r1, -2156(r30)
001190  e3408f01  loadli.w r1,  196(r30)
001194  67481fee  storeli.w r1, -2172(r30)
001198  e3008f01  loadli.w r1,  192(r30)
00119c  67401fee  storeli.w r1, -2300(r30)
0011a0  eb508f00  load.d r[2:3], 8(r30)
0011a4  73b01200  store.d r[2:3], 0(r5)
0011a8  eb500f00  load.d r[2:3], 0(r30)
0011ac  73301300  store.d r[2:3], 0(r6)
0011b0  9f00cff7  addli r1, r30, -1056
0011b4  1f411000  addli r2, zero, 12
0011b8  8b923010  add.s r5, r1, r3
0011bc  9f910100  addli r3, r3, 1
0011c0  13832104  setlt.u r6, r3, r2
0011c4  73800200  store.b zero, 0(r5)
0011c8  bb4f03fe  bneq r6, zero, -16
0011cc  e3401f01  loadli.w r1,  140(r30)
0011d0  670b4fee  storeli.w r4, -2128(r30)
0011d4  674befee  storeli.w r14, -2124(r30)
0011d8  e70bcfee  storeli.w r12, -2120(r30)
0011dc  9f180000  addli r17, zero, 1
0011e0  1bb12000  slli r2, r1, 2
0011e4  9f006fef  addli r1, r30, -2128
0011e8  8b902010  add.s r1, r1, r2
0011ec  e3800000  loadli.w r1,  0(r1)
0011f0  674b1fec  storeli.w r1, -2380(r30)
0011f4  3fe41011  blt.s r1, r17, 8472
0011f8  e3413f03  loadli.w r3,  412(r30)
0011fc  1f03cff7  addli r6, r30, -1056
001200  63048f01  loadli.w r8,  192(r30)
001204  e3038f02  loadli.w r7,  320(r30)
001208  1f064fed  addli r12, r30, -2400
00120c  63458f01  loadli.w r10,  196(r30)
001210  63025f02  loadli.w r4,  296(r30)
001214  e3027f02  loadli.w r5,  312(r30)
001218  634d2fef  loadli.w r26,  -2156(r30)
00121c  9f040000  addli r9, zero, 0
001220  9f000000  addli r1, zero, 0
001224  1f073fed  addli r14, r30, -2408
001228  1f392000  addli r18, zero, 19
00122c  67490fec  storeli.w zero, -2412(r30)
001230  0b112310  add.s r2, r6, r2
001234  e7083fec  storeli.w r3, -2424(r30)
001238  e3013f02  loadli.w r3,  280(r30)
00123c  67468fee  storeli.w r8, -2204(r30)
001240  e707afee  storeli.w r10, -2184(r30)
001244  670b2fec  storeli.w r2, -2384(r30)
001248  1ff1f1ff  addli r2, r3, -1
00124c  e74a2fec  storeli.w r2, -2388(r30)
001250  33112428  .word 0x28241133
001254  73302600  store.d r[3:4], 0(r12)
001258  1bc12300  srli r2, r7, 2
00125c  9b311400  slli r3, r8, 1
001260  3313652c  .word 0x2c651333
001264  1f044000  addli r8, zero, 32
001268  1f713100  addli r2, r2, 31
00126c  73306700  store.d r[7:8], 0(r14)
001270  67453fee  storeli.w r3, -2220(r30)
001274  1b415100  srli r2, r2, 5
001278  67072fee  storeli.w r2, -2192(r30)
00127c  1b311500  slli r2, r10, 1
001280  e7052fee  storeli.w r2, -2216(r30)
001284  1f71f2ff  addli r2, r4, -1
001288  67022fee  storeli.w r2, -2272(r30)
00128c  1f818200  addli r2, r5, 64
001290  9f028000  addli r5, zero, 64
001294  67062fee  storeli.w r2, -2208(r30)
001298  db030000  j 28
00129c  630e8fee  loadli.w r28,  -2240(r30)
0012a0  e304bfed  loadli.w r9,  -2344(r30)
0012a4  63416fed  loadli.w r2,  -2380(r30)
0012a8  9f940400  addli r9, r9, 1
0012ac  3fa02400  blt.s r9, r2, 8
0012b0  db0b0400  j 8284
0012b4  63016fed  loadli.w r2,  -2384(r30)
0012b8  e70d9fec  storeli.w r9, -2344(r30)
0012bc  6303efed  loadli.w r6,  -2320(r30)
0012c0  6306dfed  loadli.w r12,  -2328(r30)
0012c4  e343ffed  loadli.w r7,  -2308(r30)
0012c8  6345dfed  loadli.w r10,  -2324(r30)
0012cc  9f094fed  addli r19, r30, -2400
0012d0  1f0a3fed  addli r20, r30, -2408
0012d4  ebda0900  load.d r[22:23], 0(r19)
0012d8  67009100  storeli.w r9, 0(r2)
0012dc  e304ffed  loadli.w r9,  -2312(r30)
0012e0  6301cff7  loadli.w r2,  -1056(r30)
0012e4  e30bdff7  loadli.w r23,  -1048(r30)
0012e8  e34ccff7  loadli.w r25,  -1052(r30)
0012ec  8b119120  mul.s r3, r2, r9
0012f0  0b92cb20  mul.s r4, r23, r12
0012f4  e74c7fed  storeli.w r23, -2356(r30)
0012f8  8b113318  sub.s r3, r6, r3
0012fc  0b937c20  mul.s r6, r25, r7
001300  8b913440  min.s r3, r9, r3
001304  0b136518  sub.s r6, r10, r6
001308  8b970148  max.s r15, r3, zero
00130c  e301cfed  loadli.w r3,  -2336(r30)
001310  0b936340  min.s r6, r7, r6
001314  e303afed  loadli.w r7,  -2352(r30)
001318  0b130348  max.s r6, r6, zero
00131c  e702ffee  storeli.w r15, -2264(r30)
001320  8b914118  sub.s r3, r3, r4
001324  8b113640  min.s r3, r12, r3
001328  0b960148  max.s r12, r3, zero
00132c  e3010fee  loadli.w r3,  -2304(r30)
001330  1f007fed  addli zero, r30, -2376
001334  0b173330  div.s r14, r6, r3
001338  e341bfed  loadli.w r3,  -2340(r30)
00133c  6343afed  loadli.w r6,  -2348(r30)
001340  8b119150  fmac.s r3, r2, r9
001344  0b937c50  fmac.s r6, r25, r7
001348  b394912e  .word 0x2e9194b3
00134c  e3415fed  loadli.w r3,  -2388(r30)
001350  3313632c  .word 0x2c631333
001354  6742efee  storeli.w r14, -2268(r30)
001358  8bb45421  mul.sl r[10:11], r[10:11], r[22:23]
00135c  17331303  sll.d r[7:8], r[7:8], r17
001360  8b91f110  add.s r3, r3, r15
001364  b317f228  .word 0x28f217b3
001368  1f72f6ff  addli r4, r12, -1
00136c  8b918131  div.s r3, r3, r24
001370  67433fee  storeli.w r3, -2252(r30)
001374  8b11c711  add.s r3, r14, r28
001378  0b17d210  add.s r14, r4, r13
00137c  9ff1f1ff  addli r3, r3, -1
001380  8b91c131  div.s r3, r3, r28
001384  eb5d0a00  load.d r[28:29], 0(r20)
001388  eb590000  load.d r[20:21], 0(zero)
00138c  17200000  xor zero, zero, zero
001390  1f008fed  addli zero, r30, -2368
001394  e7423fee  storeli.w r3, -2260(r30)
001398  8b11d730  div.s r3, r14, r13
00139c  67093fee  storeli.w r3, -2160(r30)
0013a0  8b11b210  add.s r3, r4, r11
0013a4  0b97b130  div.s r14, r3, r11
0013a8  97b11403  sll.d r[4:5], r[10:11], r17
0013ac  8bb4b721  mul.sl r[10:11], r[16:17], r[28:29]
0013b0  97b71703  sll.d r[16:17], r[16:17], r17
0013b4  8ba13910  add.ul r[4:5], r[20:21], r[4:5]
0013b8  eb590000  load.d r[20:21], 0(zero)
0013bc  97b41403  sll.d r[10:11], r[10:11], r17
0013c0  17200000  xor zero, zero, zero
0013c4  8ba1f110  add.ul r[4:5], r[4:5], r[16:17]
0013c8  97b71d03  sll.d r[16:17], r[28:29], r17
0013cc  97bd1a03  sll.d r[28:29], r[22:23], r17
0013d0  8ba49910  add.ul r[10:11], r[20:21], r[10:11]
0013d4  9f091fee  addli r19, r30, -2296
0013d8  73b03900  store.d r[4:5], 0(r19)
0013dc  8ba16410  add.ul r[4:5], r[10:11], r[7:8]
0013e0  1f032fee  addli r6, r30, -2288
0013e4  73303300  store.d r[4:5], 0(r6)
0013e8  e341efed  loadli.w r3,  -2316(r30)
0013ec  37e91101  beq r3, r17, 600
0013f0  1f320000  addli r4, zero, 3
0013f4  37f94100  beq r3, r4, 604
0013f8  1f220000  addli r4, zero, 2
0013fc  bb894100  bneq r3, r4, 608
001400  93010100  seteq r3, r2, zero
001404  13820c02  setneq r4, r25, zero
001408  97814100  and r3, r3, r4
00140c  37c90100  beq r3, zero, 592
001410  3ba80c00  bneq r25, zero, 520
001414  63416fee  loadli.w r2,  -2252(r30)
001418  3f081101  blt.s r2, r17, 512
00141c  63025fee  loadli.w r4,  -2264(r30)
001420  9f010000  addli r3, zero, 0
001424  db030000  j 28
001428  e3016fee  loadli.w r3,  -2256(r30)
00142c  63423fee  loadli.w r4,  -2276(r30)
001430  63416fee  loadli.w r2,  -2252(r30)
001434  9f910100  addli r3, r3, 1
001438  0b128219  sub.s r4, r4, r24
00143c  37f72100  beq r3, r2, 476
001440  63012fef  loadli.w r2,  -2160(r30)
001444  67033fee  storeli.w r3, -2256(r30)
001448  e7414fee  storeli.w r4, -2276(r30)
00144c  3f7f11ff  blt.s r2, r17, -36
001450  0b918121  mul.s r2, r3, r24
001454  8b114c40  min.s r3, r24, r4
001458  63420fee  loadli.w r4,  -2300(r30)
00145c  63035fee  loadli.w r6,  -2264(r30)
001460  9f030000  addli r7, zero, 0
001464  8b910158  neg.s r3, r3
001468  0b124120  mul.s r4, r2, r4
00146c  0b112318  sub.s r2, r6, r2
001470  1f031fee  addli r6, r30, -2296
001474  e7033fee  storeli.w r3, -2248(r30)
001478  b3113228  .word 0x283211b3
00147c  eb540300  load.d r[10:11], 0(r6)
001480  8b1c2c40  min.s r25, r24, r2
001484  97b11103  sll.d r[4:5], r[4:5], r17
001488  0ba13410  add.ul r[3:4], r[10:11], r[4:5]
00148c  1f029fee  addli r4, r30, -2232
001490  1f050600  addli r10, r12, 0
001494  73302200  store.d r[3:4], 0(r4)
001498  5b150000  j 168
00149c  9f743100  addli r9, r2, 31
0014a0  8b198138  mod.s r19, r2, r8
0014a4  b39a512f  .word 0x2f519ab3
0014a8  1f4a0000  addli r20, zero, 4
0014ac  1d000a00  lock zero, r20
0014b0  8b9b8430  div.s r23, r9, r8
0014b4  17b11a03  sll.d r[3:4], r[22:23], r17
0014b8  1f0b9fee  addli r22, r30, -2232
0014bc  6b5a0b00  load.d r[21:22], 0(r22)
0014c0  9bb91900  slli r19, r19, 1
0014c4  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
0014c8  630adfee  loadli.w r20,  -2200(r30)
0014cc  95884801  dma_cfg r17, r17, r20, 0
0014d0  95080002  dma_cfg r17, zero, zero, 1
0014d4  15003011  dma_cfg zero, zero, r19, 8
0014d8  9f090001  addli r19, zero, 128
0014dc  95897209  dma_cfg r19, r5, r23, 4
0014e0  9bba5b00  slli r21, r23, 5
0014e4  e349cfee  loadli.w r19,  -2204(r30)
0014e8  8b9a5419  sub.s r21, r9, r21
0014ec  3f203001  blt.s zero, r19, 8
0014f0  db1c0000  j 228
0014f4  0b935419  sub.s r6, r9, r21
0014f8  15800104  dma_cfg zero, r3, zero, 2
0014fc  1f028200  addli r4, r4, 64
001500  e344afee  loadli.w r9,  -2220(r30)
001504  1b332300  slli r6, r6, 2
001508  1583940b  dma_cfg r6, r9, r25, 5
00150c  15025106  dma_cfg r4, r2, r5, 3
001510  35000000  dma_run zero
001514  1500100b  dma_cfg zero, zero, r17, 5
001518  15000010  dma_cfg zero, zero, zero, 8
00151c  7d200000  xflush
001520  1f410000  addli r2, zero, 4
001524  1d100100  unlock r2
001528  7d000900  xsignal r18, 0
00152c  63012fef  loadli.w r2,  -2160(r30)
001530  9f900000  addli r1, r1, 1
001534  9f930300  addli r7, r7, 1
001538  0b15d518  sub.s r10, r10, r13
00153c  b7bb23fe  beq r7, r2, -276
001540  3f401d01  blt.s r26, r17, 16
001544  1f7dfdff  addli r26, r26, -1
001548  bf8f1cff  blt.s r25, r17, -32
00154c  5b020000  j 16
001550  1f612000  addli r2, zero, 22
001554  7d100100  xwait r2, 0
001558  3fcf1cff  blt.s r25, r17, -48
00155c  8b91d320  mul.s r3, r7, r13
001560  0b113618  sub.s r2, r12, r3
001564  0b912640  min.s r2, r13, r2
001568  3f0f11ff  blt.s r2, r17, -64
00156c  63423fef  loadli.w r4,  -2148(r30)
001570  e3044fef  loadli.w r9,  -2144(r30)
001574  0b934038  mod.s r6, r1, r4
001578  63023fef  loadli.w r4,  -2152(r30)
00157c  0b129350  fmac.s r4, r6, r9
001580  e3442fef  loadli.w r9,  -2156(r30)
001584  4bec14fe  ble.s r9, r1, -232
001588  9f040000  addli r9, zero, 0
00158c  9f590000  addli r19, zero, 5
001590  1d800900  lock zero, r19
001594  15009014  dma_cfg zero, zero, r9, 10
001598  9f940400  addli r9, r9, 1
00159c  bbef84fe  bneq r9, r8, -8
0015a0  ab04803f  lui r9, 260096
0015a4  95889800  dma_cfg r17, r17, r9, 0
0015a8  15000010  dma_cfg zero, zero, zero, 8
0015ac  95080002  dma_cfg r17, zero, zero, 1
0015b0  15000004  dma_cfg zero, zero, zero, 2
0015b4  9f090001  addli r19, zero, 128
0015b8  e304efee  loadli.w r9,  -2192(r30)
0015bc  95899908  dma_cfg r19, r19, r9, 4
0015c0  15025006  dma_cfg r4, zero, r5, 3
0015c4  35000000  dma_run zero
0015c8  9f540000  addli r9, zero, 5
0015cc  1d900400  unlock r9
0015d0  dbd9ffff  j -308
0015d4  0b92a640  min.s r4, r13, r10
0015d8  e3044fef  loadli.w r9,  -2144(r30)
0015dc  0b125219  sub.s r4, r4, r21
0015e0  0b139320  mul.s r6, r6, r9
0015e4  9b342200  slli r9, r4, 2
0015e8  6302cfee  loadli.w r4,  -2208(r30)
0015ec  0b126210  add.s r4, r4, r6
0015f0  1fc3f400  addli r6, r9, 124
0015f4  e3047fee  loadli.w r9,  -2248(r30)
0015f8  15800104  dma_cfg zero, r3, zero, 2
0015fc  15025106  dma_cfg r4, r2, r5, 3
001600  0b21b111  add.ul r[3:4], r[3:4], r[28:29]
001604  9f940400  addli r9, r9, 1
001608  0b126210  add.s r4, r4, r6
00160c  35000000  dma_run zero
001610  bbaf04fe  bneq r9, zero, -24
001614  dbe0ffff  j -252
001618  6341cfed  loadli.w r2,  -2332(r30)
00161c  3f3a1101  blt.s r2, r17, 652
001620  63419fed  loadli.w r2,  -2356(r30)
001624  3b1a0100  bneq r2, zero, 644
001628  6341cfed  loadli.w r2,  -2332(r30)
00162c  630e8fee  loadli.w r28,  -2240(r30)
001630  1f71f1ff  addli r2, r2, -1
001634  674e2fec  storeli.w r2, -2332(r30)
001638  63415fee  loadli.w r2,  -2260(r30)
00163c  bf1111ff  blt.s r2, r17, -924
001640  db9f0000  j 1276
001644  93010100  seteq r3, r2, zero
001648  3ba701fe  bneq r3, zero, -568
00164c  5b020000  j 16
001650  97912c00  or r3, r25, r2
001654  93810100  seteq r3, r3, zero
001658  bbe601fe  bneq r3, zero, -584
00165c  e7419fef  storeli.w r25, -2276(r30)
001660  bb570100  bneq r2, zero, 500
001664  63415fee  loadli.w r2,  -2260(r30)
001668  bf371101  blt.s r2, r17, 492
00166c  634a4fee  loadli.w r20,  -2268(r30)
001670  9f010000  addli r3, zero, 0
001674  5b040000  j 32
001678  63018fee  loadli.w r2,  -2240(r30)
00167c  630a6fee  loadli.w r20,  -2256(r30)
001680  e3017fee  loadli.w r3,  -2248(r30)
001684  0b1a2a18  sub.s r20, r20, r2
001688  63415fee  loadli.w r2,  -2260(r30)
00168c  9f910100  addli r3, r3, 1
001690  37972100  beq r3, r2, 452
001694  e7033fee  storeli.w r3, -2248(r30)
001698  67034fef  storeli.w r20, -2256(r30)
00169c  3f7f17ff  blt.s r14, r17, -36
0016a0  e3098fee  loadli.w r19,  -2240(r30)
0016a4  63414fee  loadli.w r2,  -2268(r30)
0016a8  9f030000  addli r7, zero, 0
0016ac  8b913121  mul.s r3, r3, r19
0016b0  0b113118  sub.s r2, r2, r3
0016b4  b394912e  .word 0x2e9194b3
0016b8  0b912940  min.s r2, r19, r2
0016bc  8b994941  min.s r19, r19, r20
0016c0  97b41403  sll.d r[10:11], r[10:11], r17
0016c4  1f723100  addli r4, r2, 31
0016c8  0b138138  mod.s r6, r2, r8
0016cc  8b1c8230  div.s r25, r4, r8
0016d0  1b3b1300  slli r22, r6, 1
0016d4  1f032fee  addli r6, r30, -2288
0016d8  9bb15c00  slli r3, r25, 5
0016dc  8b914118  sub.s r3, r3, r4
0016e0  1bb27c00  slli r4, r25, 7
0016e4  8b913910  add.s r3, r19, r3
0016e8  eb590300  load.d r[20:21], 0(r6)
0016ec  e7044fee  storeli.w r4, -2232(r30)
0016f0  9bb12100  slli r3, r3, 2
0016f4  8bab9910  add.ul r[24:25], r[20:21], r[10:11]
0016f8  1fc2f100  addli r4, r3, 124
0016fc  9f010600  addli r3, r12, 0
001700  5b110000  j 136
001704  e3440fef  loadli.w r9,  -2172(r30)
001708  8b149520  mul.s r9, r10, r9
00170c  1f450000  addli r10, zero, 4
001710  1d000500  lock zero, r10
001714  630a1fef  loadli.w r20,  -2168(r30)
001718  95884801  dma_cfg r17, r17, r20, 0
00171c  95080002  dma_cfg r17, zero, zero, 1
001720  15006011  dma_cfg zero, zero, r22, 8
001724  1f0a0001  addli r20, zero, 128
001728  158a9209  dma_cfg r20, r5, r25, 4
00172c  b394942a  .word 0x2a9494b3
001730  630affee  loadli.w r20,  -2184(r30)
001734  97b41403  sll.d r[10:11], r[10:11], r17
001738  8ba49b10  add.ul r[10:11], r[24:25], r[10:11]
00173c  3f204001  blt.s zero, r20, 8
001740  db1b0000  j 220
001744  15000504  dma_cfg zero, r10, zero, 2
001748  9f898a00  addli r19, r21, 64
00174c  630abfee  loadli.w r20,  -2216(r30)
001750  e30a9fee  loadli.w r21,  -2232(r30)
001754  950a6a0a  dma_cfg r21, r20, r6, 5
001758  95895406  dma_cfg r19, r9, r5, 3
00175c  35000000  dma_run zero
001760  1500100b  dma_cfg zero, zero, r17, 5
001764  15000010  dma_cfg zero, zero, zero, 8
001768  7d200000  xflush
00176c  1f430000  addli r6, zero, 4
001770  1d100300  unlock r6
001774  7d000900  xsignal r18, 0
001778  9f900000  addli r1, r1, 1
00177c  9f930300  addli r7, r7, 1
001780  8b91b118  sub.s r3, r3, r11
001784  b7dbe3fe  beq r7, r14, -268
001788  3f401d01  blt.s r26, r17, 16
00178c  1f7dfdff  addli r26, r26, -1
001790  bf1f11ff  blt.s r2, r17, -28
001794  5b020000  j 16
001798  1f632000  addli r6, zero, 22
00179c  7d100300  xwait r6, 0
0017a0  3f5f11ff  blt.s r2, r17, -44
0017a4  0b95b320  mul.s r10, r7, r11
0017a8  0b13a618  sub.s r6, r12, r10
0017ac  0b936540  min.s r6, r11, r6
0017b0  3f1f13ff  blt.s r6, r17, -60
0017b4  e3443fef  loadli.w r9,  -2148(r30)
0017b8  e30a3fef  loadli.w r21,  -2152(r30)
0017bc  8b999038  mod.s r19, r1, r9
0017c0  e3044fef  loadli.w r9,  -2144(r30)
0017c4  8b9a9950  fmac.s r21, r19, r9
0017c8  e3442fef  loadli.w r9,  -2156(r30)
0017cc  cbec14fe  ble.s r9, r1, -200
0017d0  9f040000  addli r9, zero, 0
0017d4  1f5a0000  addli r20, zero, 5
0017d8  1d000a00  lock zero, r20
0017dc  15009014  dma_cfg zero, zero, r9, 10
0017e0  9f940400  addli r9, r9, 1
0017e4  bbef84fe  bneq r9, r8, -8
0017e8  ab04803f  lui r9, 260096
0017ec  95889800  dma_cfg r17, r17, r9, 0
0017f0  15000010  dma_cfg zero, zero, zero, 8
0017f4  95080002  dma_cfg r17, zero, zero, 1
0017f8  15000004  dma_cfg zero, zero, zero, 2
0017fc  1f0a0001  addli r20, zero, 128
001800  e304efee  loadli.w r9,  -2192(r30)
001804  150a9a08  dma_cfg r20, r20, r9, 4
001808  950a5006  dma_cfg r21, zero, r5, 3
00180c  35000000  dma_run zero
001810  9f540000  addli r9, zero, 5
001814  1d900400  unlock r9
001818  dbddffff  j -276
00181c  630a4fef  loadli.w r20,  -2144(r30)
001820  0b933540  min.s r6, r11, r3
001824  0b130358  neg.s r6, r6
001828  8b994921  mul.s r19, r19, r20
00182c  630acfee  loadli.w r20,  -2208(r30)
001830  8b193a11  add.s r19, r20, r19
001834  15000504  dma_cfg zero, r10, zero, 2
001838  95895406  dma_cfg r19, r9, r5, 3
00183c  8ba4f410  add.ul r[10:11], r[10:11], r[16:17]
001840  1f130300  addli r6, r6, 1
001844  8b994910  add.s r19, r19, r4
001848  35000000  dma_run zero
00184c  bb2f03fe  bneq r6, zero, -24
001850  dbe2ffff  j -236
001854  6341cfed  loadli.w r2,  -2332(r30)
001858  bf201101  blt.s r2, r17, 40
00185c  e3419fed  loadli.w r3,  -2356(r30)
001860  bb800100  bneq r3, zero, 32
001864  1f71f1ff  addli r2, r2, -1
001868  634c7fee  loadli.w r24,  -2244(r30)
00186c  63433fee  loadli.w r6,  -2276(r30)
001870  674e2fec  storeli.w r2, -2332(r30)
001874  63416fee  loadli.w r2,  -2252(r30)
001878  bf1811fd  blt.s r2, r17, -1500
00187c  5b0c0000  j 96
001880  634c7fee  loadli.w r24,  -2244(r30)
001884  63412fed  loadli.w r2,  -2412(r30)
001888  e3011fed  loadli.w r3,  -2424(r30)
00188c  63433fee  loadli.w r6,  -2276(r30)
001890  cb703100  ble.s r2, r3, 60
001894  1f113000  addli r2, zero, 25
001898  7d100100  xwait r2, 0
00189c  63416fee  loadli.w r2,  -2252(r30)
0018a0  bf7711fd  blt.s r2, r17, -1540
0018a4  5b070000  j 56
0018a8  630e8fee  loadli.w r28,  -2240(r30)
0018ac  63412fed  loadli.w r2,  -2412(r30)
0018b0  e3011fed  loadli.w r3,  -2424(r30)
0018b4  cb693100  ble.s r2, r3, 632
0018b8  1f113000  addli r2, zero, 25
0018bc  7d100100  xwait r2, 0
0018c0  63415fee  loadli.w r2,  -2260(r30)
0018c4  3f7711fd  blt.s r2, r17, -1572
0018c8  db4e0000  j 628
0018cc  1f110100  addli r2, r2, 1
0018d0  67492fec  storeli.w r2, -2412(r30)
0018d4  63416fee  loadli.w r2,  -2252(r30)
0018d8  3f1711fd  blt.s r2, r17, -1596
0018dc  1f020100  addli r4, r2, 0
0018e0  13010302  setneq r2, r6, zero
0018e4  e3012fef  loadli.w r3,  -2160(r30)
0018e8  e30a5fee  loadli.w r21,  -2264(r30)
0018ec  9f030000  addli r7, zero, 0
0018f0  1f070000  addli r14, zero, 0
0018f4  1f72f2ff  addli r4, r4, -1
0018f8  9bf11100  setlti r3, r3, 1
0018fc  67034fee  storeli.w r4, -2256(r30)
001900  17113100  or r2, r2, r3
001904  e7422fee  storeli.w r2, -2260(r30)
001908  5b030000  j 24
00190c  634c7fee  loadli.w r24,  -2244(r30)
001910  63416fee  loadli.w r2,  -2252(r30)
001914  1f170700  addli r14, r14, 1
001918  8b9a8a19  sub.s r21, r21, r24
00191c  370627fc  beq r14, r2, -1664
001920  63015fee  loadli.w r2,  -2264(r30)
001924  0b138721  mul.s r6, r14, r24
001928  9f010c00  addli r3, r24, 0
00192c  e7047fee  storeli.w r7, -2232(r30)
001930  e7036fee  storeli.w r6, -2248(r30)
001934  0b116118  sub.s r2, r2, r6
001938  0b9c2140  min.s r24, r3, r2
00193c  63415fee  loadli.w r2,  -2260(r30)
001940  37210100  beq r2, zero, 72
001944  63014fee  loadli.w r2,  -2272(r30)
001948  e3016fee  loadli.w r3,  -2256(r30)
00194c  37203700  beq r14, r3, 8
001950  1f010000  addli r2, zero, 0
001954  e3017fee  loadli.w r3,  -2248(r30)
001958  e3039fee  loadli.w r7,  -2232(r30)
00195c  0b113110  add.s r2, r2, r3
001960  e3418fee  loadli.w r3,  -2236(r30)
001964  0b118111  add.s r2, r2, r24
001968  0b113130  div.s r2, r2, r3
00196c  cb0e71fe  ble.s r2, r7, -96
001970  8b117118  sub.s r3, r2, r7
001974  7d000900  xsignal r18, 0
001978  9ff1f1ff  addli r3, r3, -1
00197c  bbef01fe  bneq r3, zero, -8
001980  9f030100  addli r7, r2, 0
001984  5bf1ffff  j -120
001988  63420fee  loadli.w r4,  -2300(r30)
00198c  1f010000  addli r2, zero, 0
001990  0b124320  mul.s r4, r6, r4
001994  33136228  .word 0x28621333
001998  0b925141  min.s r4, r3, r21
00199c  97341303  sll.d r[10:11], r[7:8], r17
0019a0  1f031fee  addli r6, r30, -2296
0019a4  8b130258  neg.s r7, r4
0019a8  eb510300  load.d r[4:5], 0(r6)
0019ac  0bab9110  add.ul r[23:24], r[4:5], r[10:11]
0019b0  1f050600  addli r10, r12, 0
0019b4  5b140000  j 160
0019b8  9ff43700  addli r9, r15, 31
0019bc  8b9c8738  mod.s r25, r15, r8
0019c0  b3193829  .word 0x293819b3
0019c4  8b918430  div.s r3, r9, r8
0019c8  97b71903  sll.d r[16:17], r[20:21], r17
0019cc  9f490000  addli r19, zero, 4
0019d0  1d800900  lock zero, r19
0019d4  8b27fb10  add.ul r[16:17], r[23:24], r[16:17]
0019d8  9bb91c00  slli r19, r25, 1
0019dc  e30cdfee  loadli.w r25,  -2200(r30)
0019e0  95889801  dma_cfg r17, r17, r25, 0
0019e4  95080002  dma_cfg r17, zero, zero, 1
0019e8  15003011  dma_cfg zero, zero, r19, 8
0019ec  9f090001  addli r19, zero, 128
0019f0  95893208  dma_cfg r19, r5, r3, 4
0019f4  1bba5100  slli r20, r3, 5
0019f8  e341cfee  loadli.w r3,  -2204(r30)
0019fc  8b9c4419  sub.s r25, r9, r20
001a00  3f203000  blt.s zero, r3, 8
001a04  db1c0000  j 228
001a08  8b919419  sub.s r3, r9, r25
001a0c  15000804  dma_cfg zero, r16, zero, 2
001a10  1f028200  addli r4, r4, 64
001a14  6343afee  loadli.w r6,  -2220(r30)
001a18  9bb12100  slli r3, r3, 2
001a1c  9501830b  dma_cfg r3, r6, r24, 5
001a20  15825706  dma_cfg r4, r15, r5, 3
001a24  35000000  dma_run zero
001a28  1500100b  dma_cfg zero, zero, r17, 5
001a2c  15000010  dma_cfg zero, zero, zero, 8
001a30  7d200000  xflush
001a34  9f410000  addli r3, zero, 4
001a38  1d900100  unlock r3
001a3c  7d000900  xsignal r18, 0
001a40  e3012fef  loadli.w r3,  -2160(r30)
001a44  9f900000  addli r1, r1, 1
001a48  1f110100  addli r2, r2, 1
001a4c  0b15d518  sub.s r10, r10, r13
001a50  b75b31fe  beq r2, r3, -268
001a54  3f401d01  blt.s r26, r17, 16
001a58  1f7dfdff  addli r26, r26, -1
001a5c  bf0f1cff  blt.s r24, r17, -32
001a60  5b020000  j 16
001a64  9f612000  addli r3, zero, 22
001a68  7d900100  xwait r3, 0
001a6c  3f4f1cff  blt.s r24, r17, -48
001a70  0b18d120  mul.s r16, r2, r13
001a74  0b120619  sub.s r4, r12, r16
001a78  8b974640  min.s r15, r13, r4
001a7c  3f8f17ff  blt.s r15, r17, -64
001a80  e3413fef  loadli.w r3,  -2148(r30)
001a84  63023fef  loadli.w r4,  -2152(r30)
001a88  0b933038  mod.s r6, r1, r3
001a8c  e3014fef  loadli.w r3,  -2144(r30)
001a90  0b123350  fmac.s r4, r6, r3
001a94  e3412fef  loadli.w r3,  -2156(r30)
001a98  cb8c11fe  ble.s r3, r1, -224
001a9c  9f040000  addli r9, zero, 0
001aa0  9f510000  addli r3, zero, 5
001aa4  1d800100  lock zero, r3
001aa8  15009014  dma_cfg zero, zero, r9, 10
001aac  9f940400  addli r9, r9, 1
001ab0  bbef84fe  bneq r9, r8, -8
001ab4  ab04803f  lui r9, 260096
001ab8  95889800  dma_cfg r17, r17, r9, 0
001abc  15000010  dma_cfg zero, zero, zero, 8
001ac0  95080002  dma_cfg r17, zero, zero, 1
001ac4  15000004  dma_cfg zero, zero, zero, 2
001ac8  e301efee  loadli.w r3,  -2192(r30)
001acc  9f040001  addli r9, zero, 128
001ad0  95843408  dma_cfg r9, r9, r3, 4
001ad4  15025006  dma_cfg r4, zero, r5, 3
001ad8  35000000  dma_run zero
001adc  9f510000  addli r3, zero, 5
001ae0  1d900100  unlock r3
001ae4  dbdaffff  j -300
001ae8  8b91a640  min.s r3, r13, r10
001aec  63024fef  loadli.w r4,  -2144(r30)
001af0  9f840300  addli r9, r7, 0
001af4  8b919119  sub.s r3, r3, r25
001af8  0b124320  mul.s r4, r6, r4
001afc  6303cfee  loadli.w r6,  -2208(r30)
001b00  9bb12100  slli r3, r3, 2
001b04  0b124310  add.s r4, r6, r4
001b08  1fc3f100  addli r6, r3, 124
001b0c  15000804  dma_cfg zero, r16, zero, 2
001b10  15825706  dma_cfg r4, r15, r5, 3
001b14  8ba7b711  add.ul r[16:17], r[16:17], r[28:29]
001b18  9f940400  addli r9, r9, 1
001b1c  0b126210  add.s r4, r4, r6
001b20  35000000  dma_run zero
001b24  bbaf04fe  bneq r9, zero, -24
001b28  dbe0ffff  j -252
001b2c  1f110100  addli r2, r2, 1
001b30  67492fec  storeli.w r2, -2412(r30)
001b34  63415fee  loadli.w r2,  -2260(r30)
001b38  bf2d11fb  blt.s r2, r17, -2200
001b3c  63012fed  loadli.w r2,  -2416(r30)
001b40  e3411fed  loadli.w r3,  -2420(r30)
001b44  63434fee  loadli.w r6,  -2268(r30)
001b48  1f020000  addli r4, zero, 0
001b4c  9f040000  addli r9, zero, 0
001b50  8b912130  div.s r3, r3, r2
001b54  63415fee  loadli.w r2,  -2260(r30)
001b58  1f71f1ff  addli r2, r2, -1
001b5c  67032fee  storeli.w r2, -2256(r30)
001b60  1ff1f1ff  addli r2, r3, -1
001b64  67433fee  storeli.w r3, -2252(r30)
001b68  e7022fee  storeli.w r2, -2264(r30)
001b6c  5b030000  j 24
001b70  634c7fee  loadli.w r24,  -2244(r30)
001b74  63415fee  loadli.w r2,  -2260(r30)
001b78  9f940400  addli r9, r9, 1
001b7c  0b13c319  sub.s r6, r6, r28
001b80  b78c24fa  beq r9, r2, -2272
001b84  63414fee  loadli.w r2,  -2268(r30)
001b88  8b99c421  mul.s r19, r9, r28
001b8c  e7044fee  storeli.w r4, -2232(r30)
001b90  67096fee  storeli.w r6, -2160(r30)
001b94  e7033fef  storeli.w r19, -2248(r30)
001b98  0b113119  sub.s r2, r2, r19
001b9c  0b1c2e40  min.s r24, r28, r2
001ba0  3f761701  blt.s r14, r17, 412
001ba4  9f713c00  addli r3, r24, 31
001ba8  0b128c38  mod.s r4, r24, r8
001bac  0b136e40  min.s r6, r28, r6
001bb0  9f0a2fee  addli r21, r30, -2288
001bb4  b399392f  .word 0x2f3999b3
001bb8  9f030000  addli r7, zero, 0
001bbc  0b918130  div.s r2, r3, r8
001bc0  ebdd0a00  load.d r[28:29], 0(r21)
001bc4  97b91903  sll.d r[20:21], r[20:21], r17
001bc8  8bad3d11  add.ul r[28:29], r[28:29], r[20:21]
001bcc  1b3b1200  slli r22, r4, 1
001bd0  1f020600  addli r4, r12, 0
001bd4  1b355100  slli r10, r2, 5
001bd8  8b113518  sub.s r3, r10, r3
001bdc  1b357100  slli r10, r2, 7
001be0  8b113310  add.s r3, r6, r3
001be4  9bb12100  slli r3, r3, 2
001be8  1fc3f100  addli r6, r3, 124
001bec  db100000  j 132
001bf0  634a0fef  loadli.w r20,  -2172(r30)
001bf4  8b994921  mul.s r19, r19, r20
001bf8  1f4a0000  addli r20, zero, 4
001bfc  1d000a00  lock zero, r20
001c00  e30b1fef  loadli.w r23,  -2168(r30)
001c04  95887801  dma_cfg r17, r17, r23, 0
001c08  95080002  dma_cfg r17, zero, zero, 1
001c0c  15006011  dma_cfg zero, zero, r22, 8
001c10  9f0b0001  addli r23, zero, 128
001c14  958b2208  dma_cfg r23, r5, r2, 4
001c18  b399392f  .word 0x2f3999b3
001c1c  e30bffee  loadli.w r23,  -2184(r30)
001c20  97b91903  sll.d r[20:21], r[20:21], r17
001c24  8ba93d11  add.ul r[20:21], r[28:29], r[20:21]
001c28  3f207001  blt.s zero, r23, 8
001c2c  5b1b0000  j 216
001c30  15000a04  dma_cfg zero, r20, zero, 2
001c34  9f818a00  addli r3, r21, 64
001c38  e30abfee  loadli.w r21,  -2216(r30)
001c3c  15859a0b  dma_cfg r10, r21, r25, 5
001c40  95815906  dma_cfg r3, r19, r5, 3
001c44  35000000  dma_run zero
001c48  1500100b  dma_cfg zero, zero, r17, 5
001c4c  15000010  dma_cfg zero, zero, zero, 8
001c50  7d200000  xflush
001c54  9f410000  addli r3, zero, 4
001c58  1d900100  unlock r3
001c5c  7d000900  xsignal r18, 0
001c60  9f900000  addli r1, r1, 1
001c64  9f930300  addli r7, r7, 1
001c68  0b12b218  sub.s r4, r4, r11
001c6c  37c3e300  beq r7, r14, 208
001c70  3f401d01  blt.s r26, r17, 16
001c74  1f7dfdff  addli r26, r26, -1
001c78  bf1f1cff  blt.s r24, r17, -28
001c7c  5b020000  j 16
001c80  9f612000  addli r3, zero, 22
001c84  7d900100  xwait r3, 0
001c88  3f5f1cff  blt.s r24, r17, -44
001c8c  8b99b320  mul.s r19, r7, r11
001c90  8b113619  sub.s r3, r12, r19
001c94  8b9c3540  min.s r25, r11, r3
001c98  3f9f1cff  blt.s r25, r17, -60
001c9c  e3413fef  loadli.w r3,  -2148(r30)
001ca0  e30a3fef  loadli.w r21,  -2152(r30)
001ca4  630a4fef  loadli.w r20,  -2144(r30)
001ca8  8b913038  mod.s r3, r1, r3
001cac  8b9a4151  fmac.s r21, r3, r20
001cb0  634a2fef  loadli.w r20,  -2156(r30)
001cb4  cb7c1afe  ble.s r20, r1, -196
001cb8  1f0a0000  addli r20, zero, 0
001cbc  9f5b0000  addli r23, zero, 5
001cc0  1d800b00  lock zero, r23
001cc4  15004015  dma_cfg zero, zero, r20, 10
001cc8  1f1a0a00  addli r20, r20, 1
001ccc  bb6f8afe  bneq r20, r8, -8
001cd0  2b0a803f  lui r20, 260096
001cd4  95884801  dma_cfg r17, r17, r20, 0
001cd8  15000010  dma_cfg zero, zero, zero, 8
001cdc  95080002  dma_cfg r17, zero, zero, 1
001ce0  15000004  dma_cfg zero, zero, zero, 2
001ce4  9f0b0001  addli r23, zero, 128
001ce8  630aefee  loadli.w r20,  -2192(r30)
001cec  958b4b09  dma_cfg r23, r23, r20, 4
001cf0  950a5006  dma_cfg r21, zero, r5, 3
001cf4  35000000  dma_run zero
001cf8  1f5a0000  addli r20, zero, 5
001cfc  1d100a00  unlock r20
001d00  5bdeffff  j -272
001d04  e30c4fef  loadli.w r25,  -2144(r30)
001d08  8b9a4540  min.s r21, r11, r4
001d0c  8b9c9121  mul.s r25, r3, r25
001d10  8b910a58  neg.s r3, r21
001d14  e30acfee  loadli.w r21,  -2208(r30)
001d18  8b9a9a11  add.s r21, r21, r25
001d1c  15000a04  dma_cfg zero, r20, zero, 2
001d20  958a5906  dma_cfg r21, r19, r5, 3
001d24  8ba9f910  add.ul r[20:21], r[20:21], r[16:17]
001d28  9f910100  addli r3, r3, 1
001d2c  8b9a6a10  add.s r21, r21, r6
001d30  35000000  dma_run zero
001d34  bbaf01fe  bneq r3, zero, -24
001d38  dbe2ffff  j -236
001d3c  63015fee  loadli.w r2,  -2264(r30)
001d40  e3016fee  loadli.w r3,  -2256(r30)
001d44  37a03400  beq r9, r3, 8
001d48  1f010000  addli r2, zero, 0
001d4c  e3017fee  loadli.w r3,  -2248(r30)
001d50  630e8fee  loadli.w r28,  -2240(r30)
001d54  63032fef  loadli.w r6,  -2160(r30)
001d58  63029fee  loadli.w r4,  -2232(r30)
001d5c  0b113110  add.s r2, r2, r3
001d60  e3416fee  loadli.w r3,  -2252(r30)
001d64  0b118111  add.s r2, r2, r24
001d68  0b113130  div.s r2, r2, r3
001d6c  4b1841fe  ble.s r2, r4, -508
001d70  634c7fee  loadli.w r24,  -2244(r30)
001d74  8b114118  sub.s r3, r2, r4
001d78  7d000900  xsignal r18, 0
001d7c  9ff1f1ff  addli r3, r3, -1
001d80  bbef01fe  bneq r3, zero, -8
001d84  1f020100  addli r4, r2, 0
001d88  dbbdffff  j -532
001d8c  3b4705f2  bneq r10, zero, -6704
001d90  9f810400  addli r3, r9, 0
001d94  7334afbf  store.d r[27:28], -1048(r30)
001d98  bb5a0504  bneq r10, zero, 2740
001d9c  e3044f01  loadli.w r9,  160(r30)
001da0  1f150000  addli r10, zero, 1
001da4  bbaaa404  bneq r9, r10, 2728
001da8  b79a0104  beq r3, zero, 2724
001dac  9f040002  addli r9, zero, 256
001db0  670e3ff6  storeli.w r3, -1056(r30)
001db4  9f07cff7  addli r15, r30, -1056
001db8  00a00000  mfence { lm }
001dbc  8b919140  min.s r3, r3, r9
001dc0  eb548fbe  load.d r[10:11], -1048(r30)
001dc4  2b0800f0  lui r16, 983040
001dc8  9f872700  addli r15, r15, 16
001dcc  9bb12100  slli r3, r3, 2
001dd0  97910101  or r3, r3, r16
001dd4  ffa1f400  l_gm2lm r3, r15, 0(r[10:11])
001dd8  b3049028  .word 0x289004b3
001ddc  00a00200  mfence { lm, gm }
001de0  73389ffe  store.d r[10:11], -16(r30)
001de4  db4d0100  j 2668
001de8  b3037028  .word 0x287003b3
001dec  93227b00  seteq.d r5, r[23:24], r[8:9]
001df0  3bd90206  bneq r5, zero, 3668
001df4  00a00000  mfence { lm }
001df8  9f420000  addli r5, zero, 4
001dfc  ab0300f0  lui r7, 983040
001e00  1f04cff7  addli r8, r30, -1056
001e04  97927200  or r5, r5, r7
001e08  ff228b00  l_gm2lm r5, r8, 0(r[23:24])
001e0c  00a00200  mfence { lm, gm }
001e10  e30ccff7  loadli.w r25,  -1056(r30)
001e14  dbc60100  j 3636
001e18  b3049028  .word 0x289004b3
001e1c  93219b00  seteq.d r3, r[23:24], r[10:11]
001e20  bb800100  bneq r3, zero, 32
001e24  00a00000  mfence { lm }
001e28  9f410000  addli r3, zero, 4
001e2c  ab0400f0  lui r9, 983040
001e30  1f05cff7  addli r10, r30, -1056
001e34  97919100  or r3, r3, r9
001e38  ff21ab00  l_gm2lm r3, r10, 0(r[23:24])
001e3c  00a00200  mfence { lm, gm }
001e40  b3049028  .word 0x289004b3
001e44  93a19300  seteq.d r3, r[8:9], r[10:11]
001e48  bb800100  bneq r3, zero, 32
001e4c  00a00000  mfence { lm }
001e50  9f410000  addli r3, zero, 4
001e54  ab0400f0  lui r9, 983040
001e58  1f05cff7  addli r10, r30, -1056
001e5c  97919100  or r3, r3, r9
001e60  ffa1a300  l_gm2lm r3, r10, 0(r[8:9])
001e64  00a00200  mfence { lm, gm }
001e68  9f03ffee  addli r7, r30, -2184
001e6c  e3014f01  loadli.w r3,  160(r30)
001e70  ebd40300  load.d r[10:11], 0(r7)
001e74  bbb00100  bneq r3, zero, 44
001e78  b3037028  .word 0x287003b3
001e7c  93217d00  seteq.d r3, r[27:28], r[8:9]
001e80  bb800100  bneq r3, zero, 32
001e84  00a00000  mfence { lm }
001e88  9f410000  addli r3, zero, 4
001e8c  ab0300f0  lui r7, 983040
001e90  1f04cff7  addli r8, r30, -1056
001e94  97917100  or r3, r3, r7
001e98  ff218d00  l_gm2lm r3, r8, 0(r[27:28])
001e9c  00a00200  mfence { lm, gm }
001ea0  e3414f01  loadli.w r3,  164(r30)
001ea4  bbb00100  bneq r3, zero, 44
001ea8  b3037028  .word 0x287003b3
001eac  93a17800  seteq.d r3, r[18:19], r[8:9]
001eb0  bb800100  bneq r3, zero, 32
001eb4  00a00000  mfence { lm }
001eb8  9f410000  addli r3, zero, 4
001ebc  ab0300f0  lui r7, 983040
001ec0  1f04cff7  addli r8, r30, -1056
001ec4  97917100  or r3, r3, r7
001ec8  ffa18800  l_gm2lm r3, r8, 0(r[18:19])
001ecc  00a00200  mfence { lm, gm }
001ed0  e3015f01  loadli.w r3,  168(r30)
001ed4  b7f10100  beq r3, zero, 124
001ed8  b3037028  .word 0x287003b3
001edc  93a17000  seteq.d r3, r[2:3], r[8:9]
001ee0  bb800100  bneq r3, zero, 32
001ee4  00a00000  mfence { lm }
001ee8  9f410000  addli r3, zero, 4
001eec  ab0300f0  lui r7, 983040
001ef0  1f04cff7  addli r8, r30, -1056
001ef4  97917100  or r3, r3, r7
001ef8  ffa18000  l_gm2lm r3, r8, 0(r[2:3])
001efc  00a00200  mfence { lm, gm }
001f00  b3001028  .word 0x281000b3
001f04  93a01400  seteq.d r1, r[10:11], r[2:3]
001f08  bb800000  bneq r1, zero, 32
001f0c  00a00000  mfence { lm }
001f10  9f400000  addli r1, zero, 4
001f14  2b0100f0  lui r2, 983040
001f18  9f01cff7  addli r3, r30, -1056
001f1c  97902000  or r1, r1, r2
001f20  ffa03400  l_gm2lm r1, r3, 0(r[10:11])
001f24  00a00200  mfence { lm, gm }
001f28  b3001028  .word 0x281000b3
001f2c  93a01200  seteq.d r1, r[6:7], r[2:3]
001f30  bb800000  bneq r1, zero, 32
001f34  00a00000  mfence { lm }
001f38  9f400000  addli r1, zero, 4
001f3c  2b0100f0  lui r2, 983040
001f40  9f01cff7  addli r3, r30, -1056
001f44  97902000  or r1, r1, r2
001f48  ffa03200  l_gm2lm r1, r3, 0(r[6:7])
001f4c  00a00200  mfence { lm, gm }
001f50  9f00cff7  addli r1, r30, -1056
001f54  1f411000  addli r2, zero, 12
001f58  9f010000  addli r3, zero, 0
001f5c  8b923010  add.s r5, r1, r3
001f60  9f910100  addli r3, r3, 1
001f64  13832104  setlt.u r6, r3, r2
001f68  73800200  store.b zero, 0(r5)
001f6c  bb4f03fe  bneq r6, zero, -16
001f70  e3401f01  loadli.w r1,  140(r30)
001f74  1f016fef  addli r2, r30, -2128
001f78  670b4fee  storeli.w r4, -2128(r30)
001f7c  674befee  storeli.w r14, -2124(r30)
001f80  e70bcfee  storeli.w r12, -2120(r30)
001f84  9bb02000  slli r1, r1, 2
001f88  0b111110  add.s r2, r2, r1
001f8c  e3010100  loadli.w r3,  0(r2)
001f90  1f110000  addli r2, zero, 1
001f94  e7423fee  storeli.w r3, -2260(r30)
001f98  bfdd2108  blt.s r3, r2, 4980
001f9c  e3017f03  loadli.w r3,  440(r30)
001fa0  9f03cff7  addli r7, r30, -1056
001fa4  e3423f02  loadli.w r5,  284(r30)
001fa8  63034f02  loadli.w r6,  288(r30)
001fac  63045f02  loadli.w r8,  296(r30)
001fb0  63056f03  loadli.w r10,  432(r30)
001fb4  63466f03  loadli.w r12,  436(r30)
001fb8  9f040000  addli r9, zero, 0
001fbc  1f020000  addli r4, zero, 0
001fc0  1f4b2000  addli r22, zero, 20
001fc4  1f2d0000  addli r26, zero, 2
001fc8  9f6d2000  addli r27, zero, 22
001fcc  1f5e1000  addli r28, zero, 13
001fd0  67020fee  storeli.w zero, -2272(r30)
001fd4  8b901310  add.s r1, r7, r1
001fd8  9f030000  addli r7, zero, 0
001fdc  e7413fee  storeli.w r3, -2276(r30)
001fe0  e3417f03  loadli.w r3,  444(r30)
001fe4  1bb86200  slli r16, r5, 6
001fe8  9b386300  slli r17, r6, 6
001fec  9f722000  addli r5, zero, 23
001ff0  e7021fee  storeli.w r1, -2264(r30)
001ff4  67013fee  storeli.w r3, -2288(r30)
001ff8  e3013f02  loadli.w r3,  280(r30)
001ffc  9ff0f1ff  addli r1, r3, -1
002000  67421fee  storeli.w r1, -2268(r30)
002004  9f70f4ff  addli r1, r8, -1
002008  e7071fee  storeli.w r1, -2184(r30)
00200c  5b050000  j 40
002010  e3049fee  loadli.w r9,  -2232(r30)
002014  634c7fee  loadli.w r24,  -2244(r30)
002018  e3405fee  loadli.w r1,  -2260(r30)
00201c  63057fee  loadli.w r10,  -2248(r30)
002020  63466fee  loadli.w r12,  -2252(r30)
002024  e3036fee  loadli.w r7,  -2256(r30)
002028  9f722000  addli r5, zero, 23
00202c  9f940400  addli r9, r9, 1
002030  37fb1408  beq r9, r1, 4828
002034  e3005fee  loadli.w r1,  -2264(r30)
002038  6347efed  loadli.w r14,  -2316(r30)
00203c  67809000  storeli.w r9, 0(r1)
002040  6304cff7  loadli.w r8,  -1056(r30)
002044  6343cff7  loadli.w r6,  -1052(r30)
002048  e300dff7  loadli.w r1,  -1048(r30)
00204c  3f402500  blt.s r10, r2, 16
002050  3b300300  bneq r6, zero, 12
002054  1f75f5ff  addli r10, r10, -1
002058  5b070000  j 56
00205c  37500300  beq r6, zero, 20
002060  e3413fee  loadli.w r3,  -2276(r30)
002064  cba03300  ble.s r7, r3, 40
002068  7d900200  xwait r5, 0
00206c  db040000  j 36
002070  3fd00300  blt.s r7, zero, 20
002074  9f910300  addli r3, r7, 1
002078  7d900200  xwait r5, 0
00207c  9ff1f1ff  addli r3, r3, -1
002080  bbef01fe  bneq r3, zero, -8
002084  9f030000  addli r7, zero, 0
002088  5b010000  j 8
00208c  9f930300  addli r7, r7, 1
002090  e7049fee  storeli.w r9, -2232(r30)
002094  e703afee  storeli.w r10, -2248(r30)
002098  67037fee  storeli.w r7, -2256(r30)
00209c  3f502600  blt.s r12, r2, 20
0020a0  3b400400  bneq r8, zero, 16
0020a4  1f76f6ff  addli r12, r12, -1
0020a8  6743cfee  storeli.w r12, -2252(r30)
0020ac  db090000  j 76
0020b0  e3024fee  loadli.w r5,  -2272(r30)
0020b4  6743cfee  storeli.w r12, -2252(r30)
0020b8  37600400  beq r8, zero, 24
0020bc  e3012fee  loadli.w r3,  -2288(r30)
0020c0  cbc03200  ble.s r5, r3, 48
0020c4  9f013000  addli r3, zero, 24
0020c8  7d900100  xwait r3, 0
0020cc  db050000  j 44
0020d0  3fe00200  blt.s r5, zero, 24
0020d4  9f910200  addli r3, r5, 1
0020d8  9f023000  addli r5, zero, 24
0020dc  7d900200  xwait r5, 0
0020e0  9ff1f1ff  addli r3, r3, -1
0020e4  bbef01fe  bneq r3, zero, -8
0020e8  67020fee  storeli.w zero, -2272(r30)
0020ec  db010000  j 12
0020f0  9f920200  addli r5, r5, 1
0020f4  67025fee  storeli.w r5, -2272(r30)
0020f8  e344ffed  loadli.w r9,  -2308(r30)
0020fc  e343dfed  loadli.w r7,  -2324(r30)
002100  e307dfed  loadli.w r15,  -2328(r30)
002104  8b928010  add.s r5, r1, r8
002108  6306ffed  loadli.w r12,  -2312(r30)
00210c  8b119320  mul.s r3, r6, r9
002110  0b95f020  mul.s r10, r1, r15
002114  8b913318  sub.s r3, r7, r3
002118  8b936010  add.s r7, r1, r6
00211c  e3000fee  loadli.w r1,  -2304(r30)
002120  8b913440  min.s r3, r9, r3
002124  8b14c420  mul.s r9, r8, r12
002128  8b910148  max.s r3, r3, zero
00212c  0b991130  div.s r18, r3, r1
002130  e300efed  loadli.w r1,  -2320(r30)
002134  8b919018  sub.s r3, r1, r9
002138  e300cfed  loadli.w r1,  -2336(r30)
00213c  8b113640  min.s r3, r12, r3
002140  8b94a018  sub.s r9, r1, r10
002144  e3404fee  loadli.w r1,  -2268(r30)
002148  e7082fef  storeli.w r18, -2168(r30)
00214c  8b910148  max.s r3, r3, zero
002150  8b949740  min.s r9, r15, r9
002154  67093fee  storeli.w r3, -2160(r30)
002158  8b913010  add.s r3, r1, r3
00215c  e3008fee  loadli.w r1,  -2240(r30)
002160  0b950448  max.s r10, r9, zero
002164  0b9c8131  div.s r24, r3, r24
002168  8b141910  add.s r9, r18, r1
00216c  6749afee  storeli.w r10, -2156(r30)
002170  9ff1f4ff  addli r3, r9, -1
002174  9f74f5ff  addli r9, r10, -1
002178  8b9b1130  div.s r23, r3, r1
00217c  e300bfee  loadli.w r1,  -2216(r30)
002180  8b91d410  add.s r3, r9, r13
002184  0b95b410  add.s r10, r9, r11
002188  0b15b530  div.s r10, r10, r11
00218c  8b921238  mod.s r5, r5, r1
002190  e340cfee  loadli.w r1,  -2204(r30)
002194  8b931338  mod.s r7, r7, r1
002198  8b90d130  div.s r1, r3, r13
00219c  67481fee  storeli.w r1, -2172(r30)
0021a0  e340afee  loadli.w r1,  -2220(r30)
0021a4  8b901220  mul.s r1, r5, r1
0021a8  e7061fee  storeli.w r1, -2200(r30)
0021ac  e300cfee  loadli.w r1,  -2208(r30)
0021b0  8b901320  mul.s r1, r7, r1
0021b4  67071fee  storeli.w r1, -2192(r30)
0021b8  b7282700  beq r14, r2, 552
0021bc  9f300000  addli r1, zero, 3
0021c0  b7381700  beq r14, r1, 556
0021c4  bb58a701  bneq r14, r26, 564
0021c8  93010400  seteq r3, r8, zero
0021cc  93030302  setneq r7, r6, zero
0021d0  97817100  and r3, r3, r7
0021d4  b7980100  beq r3, zero, 548
0021d8  3b730300  bneq r6, zero, 220
0021dc  3f632c00  blt.s r24, r2, 216
0021e0  e3402fef  loadli.w r1,  -2156(r30)
0021e4  9ff11000  addli r3, r1, 15
0021e8  9f002000  addli r1, zero, 16
0021ec  0b931138  mod.s r6, r3, r1
0021f0  0b936118  sub.s r6, r3, r6
0021f4  9f010000  addli r3, zero, 0
0021f8  9b346300  slli r9, r6, 6
0021fc  db010000  j 12
002200  9f910100  addli r3, r3, 1
002204  b7c28101  beq r3, r24, 176
002208  e34a0fef  loadli.w r21,  -2172(r30)
00220c  bfdf2afe  blt.s r21, r2, -12
002210  e3407fee  loadli.w r1,  -2244(r30)
002214  9f022000  addli r5, zero, 16
002218  0b941120  mul.s r8, r3, r1
00221c  0b165430  div.s r12, r8, r5
002220  e3022fef  loadli.w r5,  -2160(r30)
002224  8b998218  sub.s r19, r5, r8
002228  1b394600  slli r18, r12, 4
00222c  0b142419  sub.s r8, r8, r18
002230  6309dfee  loadli.w r18,  -2200(r30)
002234  0b99c450  fmac.s r18, r9, r12
002238  1b362400  slli r12, r8, 2
00223c  0b943041  min.s r8, r1, r19
002240  e3492fef  loadli.w r19,  -2156(r30)
002244  0b19c910  add.s r18, r18, r12
002248  db020000  j 20
00224c  9ffafaff  addli r21, r21, -1
002250  0b190911  add.s r18, r18, r16
002254  8b99d918  sub.s r19, r19, r13
002258  b7ae0afe  beq r21, zero, -88
00225c  bf4f24fe  blt.s r8, r2, -16
002260  e3403fef  loadli.w r1,  -2148(r30)
002264  0b9a3641  min.s r20, r13, r19
002268  e30c3fef  loadli.w r25,  -2152(r30)
00226c  7d100b00  xwait r22, 0
002270  abf2ffff  lui r5, 1048575
002274  9f733a00  addli r7, r20, 31
002278  9b9202fe  ori r5, r5, 4064
00227c  0b161238  mod.s r12, r4, r1
002280  e3004fef  loadli.w r1,  -2144(r30)
002284  1d000000  lock zero, zero
002288  010d0000  ds_cfg r26, zero, 0
00228c  1f120200  addli r4, r4, 1
002290  97825300  and r5, r7, r5
002294  81020002  ds_cfg r5, zero, 1
002298  0103001c  ds_cfg r6, zero, 14
00229c  0104001a  ds_cfg r8, zero, 13
0022a0  8b1c1650  fmac.s r25, r12, r1
0022a4  21994c03  shuffle_batch r18, r25, r20, 1
0022a8  1d100000  unlock zero
0022ac  7d800d00  xsignal r27, 0
0022b0  dbf3ffff  j -100
0022b4  3ff52bfe  blt.s r23, r2, -676
0022b8  e3402fef  loadli.w r1,  -2156(r30)
0022bc  e3421fed  loadli.w r5,  -2420(r30)
0022c0  1f0c0000  addli r24, zero, 0
0022c4  1ff4fbff  addli r8, r23, -1
0022c8  9f030000  addli r7, zero, 0
0022cc  9ff11000  addli r3, r1, 15
0022d0  9f002000  addli r1, zero, 16
0022d4  0b931138  mod.s r6, r3, r1
0022d8  e3002fed  loadli.w r1,  -2416(r30)
0022dc  8b921230  div.s r5, r5, r1
0022e0  0b936118  sub.s r6, r3, r6
0022e4  9b306300  slli r1, r6, 6
0022e8  9ff4f2ff  addli r9, r5, -1
0022ec  67091fee  storeli.w r1, -2160(r30)
0022f0  db010000  j 12
0022f4  9f930300  addli r7, r7, 1
0022f8  37e473ff  beq r7, r23, -744
0022fc  e3008fee  loadli.w r1,  -2240(r30)
002300  63061fef  loadli.w r12,  -2168(r30)
002304  8b911320  mul.s r3, r7, r1
002308  0b163618  sub.s r12, r12, r3
00230c  0b99c040  min.s r18, r1, r12
002310  3f722500  blt.s r10, r2, 156
002314  9f002000  addli r1, zero, 16
002318  abfaffff  lui r21, 1048575
00231c  e30cefee  loadli.w r25,  -2192(r30)
002320  9f793900  addli r19, r18, 31
002324  0b961130  div.s r12, r3, r1
002328  e3002fef  loadli.w r1,  -2160(r30)
00232c  9b9a0afe  ori r21, r21, 4064
002330  97895901  and r19, r19, r21
002334  1b3a4600  slli r20, r12, 4
002338  8b9cc050  fmac.s r25, r1, r12
00233c  0b9a4119  sub.s r20, r3, r20
002340  1b362a00  slli r12, r20, 2
002344  8b9acc10  add.s r21, r25, r12
002348  63462fef  loadli.w r12,  -2156(r30)
00234c  9f0c0500  addli r25, r10, 0
002350  db020000  j 20
002354  9ffcfcff  addli r25, r25, -1
002358  8b9a1a11  add.s r21, r21, r17
00235c  0b16b618  sub.s r12, r12, r11
002360  37b10c00  beq r25, zero, 76
002364  0b9ac540  min.s r20, r11, r12
002368  bf3f2afe  blt.s r20, r2, -20
00236c  e3403fef  loadli.w r1,  -2148(r30)
002370  8b171238  mod.s r15, r4, r1
002374  e3003fef  loadli.w r1,  -2152(r30)
002378  7d100b00  xwait r22, 0
00237c  1d000000  lock zero, zero
002380  010d0000  ds_cfg r26, zero, 0
002384  81090002  ds_cfg r19, zero, 1
002388  0103001c  ds_cfg r6, zero, 14
00238c  63074fef  loadli.w r14,  -2144(r30)
002390  0109001a  ds_cfg r18, zero, 13
002394  1f120200  addli r4, r4, 1
002398  8b90e750  fmac.s r1, r15, r14
00239c  c18a4005  shuffle_coa r21, r1, r20, 2
0023a0  1d100000  unlock zero
0023a4  7d800d00  xsignal r27, 0
0023a8  dbf5ffff  j -84
0023ac  1f860400  addli r12, r9, 0
0023b0  37a08300  beq r7, r8, 8
0023b4  1f060000  addli r12, zero, 0
0023b8  8b113610  add.s r3, r12, r3
0023bc  8b912111  add.s r3, r3, r18
0023c0  8b915130  div.s r3, r3, r5
0023c4  cbcc81ff  ble.s r3, r24, -208
0023c8  0b968119  sub.s r12, r3, r24
0023cc  7d000e00  xsignal r28, 0
0023d0  1f76f6ff  addli r12, r12, -1
0023d4  bb6f06fe  bneq r12, zero, -8
0023d8  1f8c0100  addli r24, r3, 0
0023dc  5be3ffff  j -232
0023e0  93010400  seteq r3, r8, zero
0023e4  bbd701fe  bneq r3, zero, -524
0023e8  5b020000  j 16
0023ec  97118300  or r3, r6, r8
0023f0  93810100  seteq r3, r3, zero
0023f4  bb9701fe  bneq r3, zero, -540
0023f8  3b730400  bneq r8, zero, 220
0023fc  3fe32b00  blt.s r23, r2, 216
002400  e3402fef  loadli.w r1,  -2156(r30)
002404  9f012000  addli r3, zero, 16
002408  9ff01000  addli r1, r1, 15
00240c  8b913038  mod.s r3, r1, r3
002410  8b933018  sub.s r7, r1, r3
002414  9f010000  addli r3, zero, 0
002418  1bb46300  slli r8, r7, 6
00241c  db010000  j 12
002420  9f910100  addli r3, r3, 1
002424  b7c27101  beq r3, r23, 176
002428  bf6f25fe  blt.s r10, r2, -8
00242c  e3048fee  loadli.w r9,  -2240(r30)
002430  9f022000  addli r5, zero, 16
002434  2bf6ffff  lui r12, 1048575
002438  e309efee  loadli.w r19,  -2192(r30)
00243c  63071fef  loadli.w r14,  -2168(r30)
002440  e34a2fef  loadli.w r21,  -2156(r30)
002444  9f0c0500  addli r25, r10, 0
002448  1b1606fe  ori r12, r12, 4064
00244c  8b909120  mul.s r1, r3, r9
002450  8b925030  div.s r5, r1, r5
002454  0b191718  sub.s r18, r14, r1
002458  0b992441  min.s r18, r9, r18
00245c  8b195450  fmac.s r19, r8, r5
002460  9bb24200  slli r5, r5, 4
002464  8b905018  sub.s r1, r1, r5
002468  9f723900  addli r5, r18, 31
00246c  9bb02000  slli r1, r1, 2
002470  1786c200  and r12, r5, r12
002474  8b991910  add.s r19, r19, r1
002478  db020000  j 20
00247c  9ffcfcff  addli r25, r25, -1
002480  8b991911  add.s r19, r19, r17
002484  8b9aba18  sub.s r21, r21, r11
002488  37ee0cfe  beq r25, zero, -104
00248c  0b9a5541  min.s r20, r11, r21
002490  bf3f2afe  blt.s r20, r2, -20
002494  e3403fef  loadli.w r1,  -2148(r30)
002498  e3023fef  loadli.w r5,  -2152(r30)
00249c  7d100b00  xwait r22, 0
0024a0  1d000000  lock zero, zero
0024a4  010d0000  ds_cfg r26, zero, 0
0024a8  01060002  ds_cfg r12, zero, 1
0024ac  8103001c  ds_cfg r7, zero, 14
0024b0  e3044fef  loadli.w r9,  -2144(r30)
0024b4  0109001a  ds_cfg r18, zero, 13
0024b8  8b101238  mod.s r1, r4, r1
0024bc  1f120200  addli r4, r4, 1
0024c0  8b929050  fmac.s r5, r1, r9
0024c4  c1894205  shuffle_coa r19, r5, r20, 2
0024c8  1d100000  unlock zero
0024cc  7d800d00  xsignal r27, 0
0024d0  dbf5ffff  j -84
0024d4  bf7c2cfc  blt.s r24, r2, -1220
0024d8  e3402fef  loadli.w r1,  -2156(r30)
0024dc  9f012000  addli r3, zero, 16
0024e0  93020302  setneq r5, r6, zero
0024e4  63430fef  loadli.w r6,  -2172(r30)
0024e8  1f050000  addli r10, zero, 0
0024ec  9f0b0000  addli r23, zero, 0
0024f0  9ff01000  addli r1, r1, 15
0024f4  9b731300  setlti r7, r6, 1
0024f8  1f73fcff  addli r6, r24, -1
0024fc  8b913038  mod.s r3, r1, r3
002500  17947200  or r8, r5, r7
002504  8b903018  sub.s r1, r1, r3
002508  9bb36000  slli r7, r1, 6
00250c  db010000  j 12
002510  9f9b0b00  addli r23, r23, 1
002514  b7fb8bfd  beq r23, r24, -1284
002518  e3447fee  loadli.w r9,  -2244(r30)
00251c  e3022fef  loadli.w r5,  -2160(r30)
002520  8b919b20  mul.s r3, r23, r9
002524  8b923218  sub.s r5, r5, r3
002528  0b995440  min.s r18, r9, r5
00252c  b7700400  beq r8, zero, 60
002530  6306ffee  loadli.w r12,  -2184(r30)
002534  37a06b00  beq r23, r6, 8
002538  1f060000  addli r12, zero, 0
00253c  8b113610  add.s r3, r12, r3
002540  e3428fee  loadli.w r5,  -2236(r30)
002544  8b912111  add.s r3, r3, r18
002548  8b915130  div.s r3, r3, r5
00254c  4b9fa1fe  ble.s r3, r10, -60
002550  0b95a118  sub.s r10, r3, r10
002554  7d000e00  xsignal r28, 0
002558  1f75f5ff  addli r10, r10, -1
00255c  bb6f05fe  bneq r10, zero, -8
002560  1f850100  addli r10, r3, 0
002564  dbf5ffff  j -84
002568  9f022000  addli r5, zero, 16
00256c  e309dfee  loadli.w r19,  -2200(r30)
002570  e34a2fef  loadli.w r21,  -2156(r30)
002574  8b925130  div.s r5, r3, r5
002578  1bb64200  slli r12, r5, 4
00257c  8b995350  fmac.s r19, r7, r5
002580  0b96c118  sub.s r12, r3, r12
002584  9b322600  slli r5, r12, 2
002588  63460fef  loadli.w r12,  -2172(r30)
00258c  8b995910  add.s r19, r19, r5
002590  db020000  j 20
002594  1f76f6ff  addli r12, r12, -1
002598  8b990911  add.s r19, r19, r16
00259c  8b9ada18  sub.s r21, r21, r13
0025a0  374e06fe  beq r12, zero, -112
0025a4  bf4f29fe  blt.s r18, r2, -16
0025a8  e3423fef  loadli.w r5,  -2148(r30)
0025ac  0b9a5641  min.s r20, r13, r21
0025b0  e30c3fef  loadli.w r25,  -2152(r30)
0025b4  7d100b00  xwait r22, 0
0025b8  2bf7ffff  lui r14, 1048575
0025bc  e3074fef  loadli.w r15,  -2144(r30)
0025c0  1d000000  lock zero, zero
0025c4  010d0000  ds_cfg r26, zero, 0
0025c8  9f743a00  addli r9, r20, 31
0025cc  1b1707fe  ori r14, r14, 4064
0025d0  8b125238  mod.s r5, r4, r5
0025d4  1f120200  addli r4, r4, 1
0025d8  8b9cf250  fmac.s r25, r5, r15
0025dc  9782e400  and r5, r9, r14
0025e0  81020002  ds_cfg r5, zero, 1
0025e4  8100001c  ds_cfg r1, zero, 14
0025e8  0109001a  ds_cfg r18, zero, 13
0025ec  a1994c03  shuffle_batch r19, r25, r20, 1
0025f0  1d100000  unlock zero
0025f4  7d800d00  xsignal r27, 0
0025f8  dbf3ffff  j -100
0025fc  9f00cff7  addli r1, r30, -1056
002600  1f411000  addli r2, zero, 12
002604  1f030000  addli r6, zero, 0
002608  8b916010  add.s r3, r1, r6
00260c  1f130300  addli r6, r6, 1
002610  13042304  setlt.u r8, r6, r2
002614  73800100  store.b zero, 0(r3)
002618  bb4f04fe  bneq r8, zero, -16
00261c  e3401f01  loadli.w r1,  140(r30)
002620  670b4fee  storeli.w r4, -2128(r30)
002624  674befee  storeli.w r14, -2124(r30)
002628  e70bcfee  storeli.w r12, -2120(r30)
00262c  e34d2fef  loadli.w r27,  -2156(r30)
002630  1f110000  addli r2, zero, 1
002634  1bb32000  slli r6, r1, 2
002638  9f006fef  addli r1, r30, -2128
00263c  8b906010  add.s r1, r1, r6
002640  e3800000  loadli.w r1,  0(r1)
002644  3fa32006  blt.s r1, r2, 3272
002648  63046f02  loadli.w r8,  304(r30)
00264c  63476f02  loadli.w r14,  308(r30)
002650  e3415f02  loadli.w r3,  300(r30)
002654  9f04cff7  addli r9, r30, -1056
002658  1f020000  addli r4, zero, 0
00265c  1f76f6ff  addli r12, r12, -1
002660  9f474000  addli r15, zero, 36
002664  9f380000  addli r17, zero, 3
002668  1f290000  addli r18, zero, 2
00266c  9f594000  addli r19, zero, 37
002670  1f0a0000  addli r20, zero, 0
002674  0b936410  add.s r6, r9, r6
002678  0b17e430  div.s r14, r8, r14
00267c  9ff6f1ff  addli r13, r3, -1
002680  db010000  j 12
002684  1f120200  addli r4, r4, 1
002688  37121206  beq r4, r1, 3204
00268c  67004300  storeli.w r4, 0(r6)
002690  e301dff7  loadli.w r3,  -1048(r30)
002694  bbcfc1fe  bneq r3, r12, -16
002698  6344cff7  loadli.w r8,  -1052(r30)
00269c  e34affed  loadli.w r21,  -2308(r30)
0026a0  634bdfed  loadli.w r22,  -2324(r30)
0026a4  e304cff7  loadli.w r9,  -1056(r30)
0026a8  e30bffed  loadli.w r23,  -2312(r30)
0026ac  8b115421  mul.s r3, r8, r21
0026b0  8b113b18  sub.s r3, r22, r3
0026b4  630befed  loadli.w r22,  -2320(r30)
0026b8  8b913a40  min.s r3, r21, r3
0026bc  8b9a7421  mul.s r21, r9, r23
0026c0  8b1a5b19  sub.s r21, r22, r21
0026c4  630b0fee  loadli.w r22,  -2304(r30)
0026c8  8b910148  max.s r3, r3, zero
0026cc  8b9b5b41  min.s r23, r23, r21
0026d0  0b9b6131  div.s r22, r3, r22
0026d4  e341efed  loadli.w r3,  -2316(r30)
0026d8  8b9a0b48  max.s r21, r23, zero
0026dc  b7e22100  beq r3, r2, 184
0026e0  37831101  beq r3, r17, 192
0026e4  3ba32101  bneq r3, r18, 200
0026e8  93810400  seteq r3, r9, zero
0026ec  13040402  setneq r8, r8, zero
0026f0  17848100  and r8, r3, r8
0026f4  b7620400  beq r8, zero, 184
0026f8  8b11eb10  add.s r3, r22, r14
0026fc  9ff1f1ff  addli r3, r3, -1
002700  0b9ce130  div.s r24, r3, r14
002704  3f0e2cfe  blt.s r24, r2, -128
002708  5b030000  j 24
00270c  7d800900  xsignal r19, 0
002710  1f1a0a00  addli r20, r20, 1
002714  1f7cfcff  addli r24, r24, -1
002718  0b1beb18  sub.s r22, r22, r14
00271c  b72d0cfe  beq r24, zero, -152
002720  bfdf2bfe  blt.s r23, r2, -12
002724  7d900700  xwait r15, 0
002728  b79f1dff  beq r27, r17, -28
00272c  0b146741  min.s r8, r14, r22
002730  3f7f24fe  blt.s r8, r2, -36
002734  e30c4fef  loadli.w r25,  -2144(r30)
002738  8b117a38  mod.s r3, r20, r7
00273c  9f840500  addli r9, r11, 0
002740  1f74f4ff  addli r8, r8, -1
002744  630d3fef  loadli.w r26,  -2152(r30)
002748  1d000900  lock zero, r18
00274c  0d010020  ew_cfg r2, zero, zero, 16
002750  0d000002  ew_cfg zero, zero, zero, 1
002754  0d000404  ew_cfg zero, r8, zero, 2
002758  8d0a0006  ew_cfg r21, zero, zero, 3
00275c  8d8a5a27  ew_cfg r21, r21, r21, 19
002760  0d000014  ew_cfg zero, zero, zero, 10
002764  8b1c9a39  mod.s r25, r20, r25
002768  8b945150  fmac.s r9, r3, r5
00276c  ab010040  lui r3, 262144
002770  2b0480bf  lui r8, 784384
002774  63453fef  loadli.w r10,  -2148(r30)
002778  8d110400  ewcoeff_cfg r3, r8, zero, 0
00277c  0b9dac50  fmac.s r26, r25, r10
002780  2d0d9d00  dsmadd r26, r26, r9, 0
002784  0d000026  ew_cfg zero, zero, zero, 19
002788  0d000020  ew_cfg zero, zero, zero, 16
00278c  1d100900  unlock r18
002790  dbefffff  j -132
002794  13840400  seteq r8, r9, zero
002798  bb0d04fe  bneq r8, zero, -160
00279c  5b020000  j 16
0027a0  97119400  or r3, r8, r9
0027a4  13840100  seteq r8, r3, zero
0027a8  3b4d04fe  bneq r8, zero, -176
0027ac  8b915611  add.s r3, r13, r21
0027b0  8b9b0131  div.s r23, r3, r16
0027b4  3fcb2bfe  blt.s r23, r2, -304
0027b8  13146005  setlt.s r8, zero, r22
0027bc  93811d03  setneq r3, r27, r17
0027c0  1f7bfbff  addli r22, r22, -1
0027c4  178c8100  and r24, r3, r8
0027c8  5b030000  j 24
0027cc  7d800900  xsignal r19, 0
0027d0  1f1a0a00  addli r20, r20, 1
0027d4  9ffbfbff  addli r23, r23, -1
0027d8  8b9a0a19  sub.s r21, r21, r16
0027dc  b7aa0bfe  beq r23, zero, -344
0027e0  0b145841  min.s r8, r16, r21
0027e4  bf4f24fe  blt.s r8, r2, -16
0027e8  7d900700  xwait r15, 0
0027ec  b70f0cfe  beq r24, zero, -32
0027f0  e30c4fef  loadli.w r25,  -2144(r30)
0027f4  8b117a38  mod.s r3, r20, r7
0027f8  9f840500  addli r9, r11, 0
0027fc  630d3fef  loadli.w r26,  -2152(r30)
002800  1d000900  lock zero, r18
002804  0d010020  ew_cfg r2, zero, zero, 16
002808  0d000002  ew_cfg zero, zero, zero, 1
00280c  0d000b04  ew_cfg zero, r22, zero, 2
002810  0d040006  ew_cfg r8, zero, zero, 3
002814  0d048426  ew_cfg r8, r8, r8, 19
002818  0d000014  ew_cfg zero, zero, zero, 10
00281c  8b1c9a39  mod.s r25, r20, r25
002820  8b945150  fmac.s r9, r3, r5
002824  ab010040  lui r3, 262144
002828  2b0480bf  lui r8, 784384
00282c  63453fef  loadli.w r10,  -2148(r30)
002830  8d110400  ewcoeff_cfg r3, r8, zero, 0
002834  0b9dac50  fmac.s r26, r25, r10
002838  2d0d9d00  dsmadd r26, r26, r9, 0
00283c  0d000026  ew_cfg zero, zero, zero, 19
002840  0d000020  ew_cfg zero, zero, zero, 16
002844  1d100900  unlock r18
002848  dbf0ffff  j -124
00284c  670e0ff6  storeli.w zero, -1056(r30)
002850  e3014f01  loadli.w r3,  160(r30)
002854  bbb00100  bneq r3, zero, 44
002858  b3049028  .word 0x289004b3
00285c  93219d00  seteq.d r3, r[27:28], r[10:11]
002860  bb800100  bneq r3, zero, 32
002864  00a00000  mfence { lm }
002868  9f410000  addli r3, zero, 4
00286c  ab0400f0  lui r9, 983040
002870  1f056fef  addli r10, r30, -2128
002874  97919100  or r3, r3, r9
002878  ff21ad00  l_gm2lm r3, r10, 0(r[27:28])
00287c  00a00200  mfence { lm, gm }
002880  e3414f01  loadli.w r3,  164(r30)
002884  bbb00100  bneq r3, zero, 44
002888  b3049028  .word 0x289004b3
00288c  93a19800  seteq.d r3, r[18:19], r[10:11]
002890  bb800100  bneq r3, zero, 32
002894  00a00000  mfence { lm }
002898  9f410000  addli r3, zero, 4
00289c  ab0400f0  lui r9, 983040
0028a0  1f056fef  addli r10, r30, -2128
0028a4  97919100  or r3, r3, r9
0028a8  ffa1a800  l_gm2lm r3, r10, 0(r[18:19])
0028ac  00a00200  mfence { lm, gm }
0028b0  b3049028  .word 0x289004b3
0028b4  93a19300  seteq.d r3, r[8:9], r[10:11]
0028b8  bb800100  bneq r3, zero, 32
0028bc  00a00000  mfence { lm }
0028c0  9f410000  addli r3, zero, 4
0028c4  ab0400f0  lui r9, 983040
0028c8  1f056fef  addli r10, r30, -2128
0028cc  97919100  or r3, r3, r9
0028d0  ffa1a300  l_gm2lm r3, r10, 0(r[8:9])
0028d4  00a00200  mfence { lm, gm }
0028d8  b3037028  .word 0x287003b3
0028dc  93217b00  seteq.d r3, r[23:24], r[8:9]
0028e0  bb800100  bneq r3, zero, 32
0028e4  00a00000  mfence { lm }
0028e8  9f410000  addli r3, zero, 4
0028ec  ab0300f0  lui r7, 983040
0028f0  1f046fef  addli r8, r30, -2128
0028f4  97917100  or r3, r3, r7
0028f8  ff218b00  l_gm2lm r3, r8, 0(r[23:24])
0028fc  00a00200  mfence { lm, gm }
002900  e3015f01  loadli.w r3,  168(r30)
002904  37920100  beq r3, zero, 132
002908  b3037028  .word 0x287003b3
00290c  93a17000  seteq.d r3, r[2:3], r[8:9]
002910  bb800100  bneq r3, zero, 32
002914  00a00000  mfence { lm }
002918  9f410000  addli r3, zero, 4
00291c  ab0300f0  lui r7, 983040
002920  1f046fef  addli r8, r30, -2128
002924  97917100  or r3, r3, r7
002928  ffa18000  l_gm2lm r3, r8, 0(r[2:3])
00292c  00a00200  mfence { lm, gm }
002930  9f01ffee  addli r3, r30, -2184
002934  b3001028  .word 0x281000b3
002938  6bdd0100  load.d r[27:28], 0(r3)
00293c  93201d00  seteq.d r1, r[27:28], r[2:3]
002940  bb800000  bneq r1, zero, 32
002944  00a00000  mfence { lm }
002948  9f400000  addli r1, zero, 4
00294c  2b0100f0  lui r2, 983040
002950  9f016fef  addli r3, r30, -2128
002954  97902000  or r1, r1, r2
002958  ff203d00  l_gm2lm r1, r3, 0(r[27:28])
00295c  00a00200  mfence { lm, gm }
002960  b3001028  .word 0x281000b3
002964  93a01200  seteq.d r1, r[6:7], r[2:3]
002968  bb800000  bneq r1, zero, 32
00296c  00a00000  mfence { lm }
002970  9f400000  addli r1, zero, 4
002974  2b0100f0  lui r2, 983040
002978  9f016fef  addli r3, r30, -2128
00297c  97902000  or r1, r1, r2
002980  ffa03200  l_gm2lm r1, r3, 0(r[6:7])
002984  00a00200  mfence { lm, gm }
002988  9f006fef  addli r1, r30, -2128
00298c  1f411000  addli r2, zero, 12
002990  9f010000  addli r3, zero, 0
002994  8b923010  add.s r5, r1, r3
002998  9f910100  addli r3, r3, 1
00299c  13832104  setlt.u r6, r3, r2
0029a0  73800200  store.b zero, 0(r5)
0029a4  bb4f03fe  bneq r6, zero, -16
0029a8  e3401f01  loadli.w r1,  140(r30)
0029ac  674d4ff6  storeli.w r4, -1068(r30)
0029b0  e70deff6  storeli.w r14, -1064(r30)
0029b4  e74dcff6  storeli.w r12, -1060(r30)
0029b8  1f110000  addli r2, zero, 1
0029bc  9bb12000  slli r3, r1, 2
0029c0  9f40aff7  addli r1, r30, -1068
0029c4  8b903010  add.s r1, r1, r3
0029c8  e3800000  loadli.w r1,  0(r1)
0029cc  3f852004  blt.s r1, r2, 2368
0029d0  e3036f02  loadli.w r7,  304(r30)
0029d4  63446f02  loadli.w r8,  308(r30)
0029d8  63023f02  loadli.w r4,  280(r30)
0029dc  e3025f02  loadli.w r5,  296(r30)
0029e0  1f036fef  addli r6, r30, -2128
0029e4  9f542000  addli r9, zero, 21
0029e8  1f350000  addli r10, zero, 3
0029ec  1f260000  addli r12, zero, 2
0029f0  1f070000  addli r14, zero, 0
0029f4  8b113310  add.s r3, r6, r3
0029f8  1f332000  addli r6, zero, 19
0029fc  8b938330  div.s r7, r7, r8
002a00  1f72f2ff  addli r4, r4, -1
002a04  9ff2f2ff  addli r5, r5, -1
002a08  1f442000  addli r8, zero, 20
002a0c  db010000  j 12
002a10  1f170700  addli r14, r14, 1
002a14  b7631704  beq r14, r1, 2296
002a18  6780e100  storeli.w r14, 0(r3)
002a1c  6349ffed  loadli.w r18,  -2308(r30)
002a20  634adfed  loadli.w r20,  -2324(r30)
002a24  e309ffed  loadli.w r19,  -2312(r30)
002a28  e30bdfed  loadli.w r23,  -2328(r30)
002a2c  e34a6fef  loadli.w r21,  -2124(r30)
002a30  630b6fef  loadli.w r22,  -2128(r30)
002a34  e3077fef  loadli.w r15,  -2120(r30)
002a38  0b982a21  mul.s r16, r21, r18
002a3c  8b183b21  mul.s r17, r22, r19
002a40  8b977721  mul.s r15, r15, r23
002a44  0b180a19  sub.s r16, r20, r16
002a48  8b97fc18  sub.s r15, r25, r15
002a4c  0b180941  min.s r16, r18, r16
002a50  6309efed  loadli.w r18,  -2320(r30)
002a54  8b97fb40  min.s r15, r23, r15
002a58  e34befed  loadli.w r23,  -2316(r30)
002a5c  0b180848  max.s r16, r16, zero
002a60  8b970748  max.s r15, r15, zero
002a64  8b181919  sub.s r17, r18, r17
002a68  63090fee  loadli.w r18,  -2304(r30)
002a6c  0b1a2831  div.s r20, r16, r18
002a70  0b981941  min.s r16, r19, r17
002a74  1ff9f7ff  addli r18, r15, -1
002a78  8b190848  max.s r19, r16, zero
002a7c  0b183211  add.s r16, r4, r19
002a80  8b18ca11  add.s r17, r20, r28
002a84  8b178831  div.s r15, r16, r24
002a88  9ff8f8ff  addli r17, r17, -1
002a8c  0b98c831  div.s r16, r17, r28
002a90  8b18d910  add.s r17, r18, r13
002a94  0b19b910  add.s r18, r18, r11
002a98  8b98d830  div.s r17, r17, r13
002a9c  0b19b930  div.s r18, r18, r11
002aa0  37c32b00  beq r23, r2, 208
002aa4  37e3ab00  beq r23, r10, 216
002aa8  bb83cb00  bneq r23, r12, 224
002aac  930b0b00  seteq r23, r22, zero
002ab0  138c0a02  setneq r24, r21, zero
002ab4  978b8b01  and r23, r23, r24
002ab8  634c7fee  loadli.w r24,  -2244(r30)
002abc  37b30b00  beq r23, zero, 204
002ac0  bbd00a00  bneq r21, zero, 52
002ac4  bfc02700  blt.s r15, r2, 48
002ac8  9f090000  addli r19, zero, 0
002acc  db010000  j 12
002ad0  9f990900  addli r19, r19, 1
002ad4  b780f900  beq r19, r15, 32
002ad8  9f8a0800  addli r21, r17, 0
002adc  bfdf28fe  blt.s r17, r2, -12
002ae0  7d100300  xwait r6, 0
002ae4  7d000400  xsignal r8, 0
002ae8  9ffafaff  addli r21, r21, -1
002aec  bbdf0afe  bneq r21, zero, -12
002af0  5bfcffff  j -32
002af4  3f7c28fe  blt.s r16, r2, -228
002af8  9f0a0000  addli r21, zero, 0
002afc  9f77f8ff  addli r15, r16, -1
002b00  9ff8f3ff  addli r17, r7, -1
002b04  9f090000  addli r19, zero, 0
002b08  db010000  j 12
002b0c  9f990900  addli r19, r19, 1
002b10  378c09ff  beq r19, r16, -256
002b14  1f0b0900  addli r22, r18, 0
002b18  3f502900  blt.s r18, r2, 20
002b1c  7d100300  xwait r6, 0
002b20  7d000400  xsignal r8, 0
002b24  1f7bfbff  addli r22, r22, -1
002b28  bb5f0bfe  bneq r22, zero, -12
002b2c  1f8b0800  addli r22, r17, 0
002b30  37a0f900  beq r19, r15, 8
002b34  1f0b0000  addli r22, zero, 0
002b38  8b9bc921  mul.s r23, r19, r28
002b3c  0b9bc951  fmac.s r22, r19, r28
002b40  8b1b7a19  sub.s r23, r20, r23
002b44  8b1b7e41  min.s r23, r28, r23
002b48  0b1b7b11  add.s r22, r22, r23
002b4c  0b1b7b30  div.s r22, r22, r7
002b50  cb7e5bff  ble.s r22, r21, -68
002b54  8b1a5b19  sub.s r21, r22, r21
002b58  7d100300  xwait r6, 0
002b5c  7d800400  xsignal r9, 0
002b60  9ffafaff  addli r21, r21, -1
002b64  bbdf0afe  bneq r21, zero, -12
002b68  9f0a0b00  addli r21, r22, 0
002b6c  5bf4ffff  j -96
002b70  930b0b00  seteq r23, r22, zero
002b74  3bbd0bfe  bneq r23, zero, -180
002b78  5b020000  j 16
002b7c  979b6a01  or r23, r21, r22
002b80  938b0b00  seteq r23, r23, zero
002b84  bbfc0bfe  bneq r23, zero, -196
002b88  bb500b00  bneq r22, zero, 52
002b8c  bf402800  blt.s r16, r2, 48
002b90  1f0a0000  addli r20, zero, 0
002b94  db010000  j 12
002b98  1f1a0a00  addli r20, r20, 1
002b9c  b7000a01  beq r20, r16, 32
002ba0  1f0b0900  addli r22, r18, 0
002ba4  bf5f29fe  blt.s r18, r2, -12
002ba8  7d100300  xwait r6, 0
002bac  7d000400  xsignal r8, 0
002bb0  1f7bfbff  addli r22, r22, -1
002bb4  bb5f0bfe  bneq r22, zero, -12
002bb8  5bfcffff  j -32
002bbc  3fd927fe  blt.s r15, r2, -428
002bc0  13890a02  setneq r18, r21, zero
002bc4  1bfa1800  setlti r20, r17, 1
002bc8  1f0b0000  addli r22, zero, 0
002bcc  1ff8f7ff  addli r16, r15, -1
002bd0  17194901  or r18, r18, r20
002bd4  1f0a0000  addli r20, zero, 0
002bd8  db010000  j 12
002bdc  1f1a0a00  addli r20, r20, 1
002be0  b748fafe  beq r20, r15, -464
002be4  3b600900  bneq r18, zero, 24
002be8  9f8a0800  addli r21, r17, 0
002bec  7d100300  xwait r6, 0
002bf0  7d000400  xsignal r8, 0
002bf4  9ffafaff  addli r21, r21, -1
002bf8  bbdf0afe  bneq r21, zero, -12
002bfc  9f8a0200  addli r21, r5, 0
002c00  37200a01  beq r20, r16, 8
002c04  9f0a0000  addli r21, zero, 0
002c08  8b1b8a21  mul.s r23, r20, r24
002c0c  8b1a8a51  fmac.s r21, r20, r24
002c10  8b9b7919  sub.s r23, r19, r23
002c14  8b1b7c41  min.s r23, r24, r23
002c18  8b9a7a11  add.s r21, r21, r23
002c1c  e34b8fee  loadli.w r23,  -2236(r30)
002c20  8b9a7a31  div.s r21, r21, r23
002c24  cbee6aff  ble.s r21, r22, -72
002c28  0b9b6a19  sub.s r22, r21, r22
002c2c  7d100300  xwait r6, 0
002c30  7d800400  xsignal r9, 0
002c34  1f7bfbff  addli r22, r22, -1
002c38  bb5f0bfe  bneq r22, zero, -12
002c3c  1f8b0a00  addli r22, r21, 0
002c40  dbf3ffff  j -100
002c44  e34c2f01  loadli.w r25,  148(r30)
002c48  9f01ffee  addli r3, r30, -2184
002c4c  e3035f01  loadli.w r7,  168(r30)
002c50  ebd20100  load.d r[6:7], 0(r3)
002c54  b7b10300  beq r7, zero, 108
002c58  b3037028  .word 0x287003b3
002c5c  13a47000  seteq.d r8, r[2:3], r[8:9]
002c60  ab03803f  lui r7, 260096
002c64  bb100400  bneq r8, zero, 36
002c68  00a00000  mfence { lm }
002c6c  9f430000  addli r7, zero, 4
002c70  2b0400f0  lui r8, 983040
002c74  9f04cff7  addli r9, r30, -1056
002c78  97938300  or r7, r7, r8
002c7c  ffa39000  l_gm2lm r7, r9, 0(r[2:3])
002c80  00a00200  mfence { lm, gm }
002c84  e303cff7  loadli.w r7,  -1056(r30)
002c88  b3001028  .word 0x281000b3
002c8c  13a11200  seteq.d r2, r[6:7], r[2:3]
002c90  ab00803f  lui r1, 260096
002c94  bb100100  bneq r2, zero, 36
002c98  00a00000  mfence { lm }
002c9c  9f400000  addli r1, zero, 4
002ca0  2b0100f0  lui r2, 983040
002ca4  1f04cff7  addli r8, r30, -1056
002ca8  97902000  or r1, r1, r2
002cac  ffa08200  l_gm2lm r1, r8, 0(r[6:7])
002cb0  00a00200  mfence { lm, gm }
002cb4  e300cff7  loadli.w r1,  -1056(r30)
002cb8  0be17c20  mul.f.rn r2, r25, r7
002cbc  8b6c1120  mul.f.rn r25, r2, r1
002cc0  e3004f01  loadli.w r1,  160(r30)
002cc4  bbe00000  bneq r1, zero, 56
002cc8  b3001028  .word 0x281000b3
002ccc  13211d00  seteq.d r2, r[27:28], r[2:3]
002cd0  ab00803f  lui r1, 260096
002cd4  bb100100  bneq r2, zero, 36
002cd8  00a00000  mfence { lm }
002cdc  9f400000  addli r1, zero, 4
002ce0  2b0100f0  lui r2, 983040
002ce4  9f03cff7  addli r7, r30, -1056
002ce8  97902000  or r1, r1, r2
002cec  ff207d00  l_gm2lm r1, r7, 0(r[27:28])
002cf0  00a00200  mfence { lm, gm }
002cf4  e300cff7  loadli.w r1,  -1056(r30)
002cf8  8bec1c20  mul.f.rn r25, r25, r1
002cfc  e3404f01  loadli.w r1,  164(r30)
002d00  bbe00000  bneq r1, zero, 56
002d04  b3001028  .word 0x281000b3
002d08  13a11800  seteq.d r2, r[18:19], r[2:3]
002d0c  ab00803f  lui r1, 260096
002d10  bb100100  bneq r2, zero, 36
002d14  00a00000  mfence { lm }
002d18  9f400000  addli r1, zero, 4
002d1c  2b0100f0  lui r2, 983040
002d20  9f03cff7  addli r7, r30, -1056
002d24  97902000  or r1, r1, r2
002d28  ffa07800  l_gm2lm r1, r7, 0(r[18:19])
002d2c  00a00200  mfence { lm, gm }
002d30  e300cff7  loadli.w r1,  -1056(r30)
002d34  8bec1c20  mul.f.rn r25, r25, r1
002d38  b3001028  .word 0x281000b3
002d3c  e3034f01  loadli.w r7,  160(r30)
002d40  13241d00  seteq.d r8, r[27:28], r[2:3]
002d44  1f210000  addli r2, zero, 2
002d48  1d000100  lock zero, r2
002d4c  0d000022  ew_cfg zero, zero, zero, 17
002d50  9f100000  addli r1, zero, 1
002d54  1d100100  unlock r2
002d58  37a00300  beq r7, zero, 8
002d5c  9f800700  addli r1, r15, 0
002d60  9f030000  addli r7, zero, 0
002d64  3b200400  bneq r8, zero, 8
002d68  9f830000  addli r7, r1, 0
002d6c  eb508f02  load.d r[2:3], 40(r30)
002d70  7334afbf  store.d r[27:28], -1048(r30)
002d74  3b410400  bneq r8, zero, 80
002d78  63044f01  loadli.w r8,  160(r30)
002d7c  9f140000  addli r9, zero, 1
002d80  3b119400  bneq r8, r9, 68
002d84  37810300  beq r7, zero, 64
002d88  1f040002  addli r8, zero, 256
002d8c  670e7ff6  storeli.w r7, -1056(r30)
002d90  1f05cff7  addli r10, r30, -1056
002d94  00a00000  mfence { lm }
002d98  8b938340  min.s r7, r7, r8
002d9c  6b548fbe  load.d r[9:10], -1048(r30)
002da0  ab0500f0  lui r11, 983040
002da4  1f052500  addli r10, r10, 16
002da8  9bb32300  slli r7, r7, 2
002dac  9793b300  or r7, r7, r11
002db0  ff23a400  l_gm2lm r7, r10, 0(r[9:10])
002db4  b3037028  .word 0x287003b3
002db8  00a00200  mfence { lm, gm }
002dbc  73387ffe  store.d r[8:9], -16(r30)
002dc0  5b010000  j 8
002dc4  670e0ff6  storeli.w zero, -1056(r30)
002dc8  eb520f03  load.d r[6:7], 48(r30)
002dcc  9f01bfee  addli r3, r30, -2216
002dd0  e3031f03  loadli.w r7,  392(r30)
002dd4  1f040000  addli r8, zero, 0
002dd8  670b0fee  storeli.w zero, -2128(r30)
002ddc  73b05100  store.d r[6:7], 0(r3)
002de0  9f027fef  addli r5, r30, -2120
002de4  73b01200  store.d r[2:3], 0(r5)
002de8  9f40aff7  addli r1, r30, -1068
002dec  1f411000  addli r2, zero, 12
002df0  8b948010  add.s r9, r1, r8
002df4  1f140400  addli r8, r8, 1
002df8  13052404  setlt.u r10, r8, r2
002dfc  73800400  store.b zero, 0(r9)
002e00  bb4f05fe  bneq r10, zero, -16
002e04  e3401f01  loadli.w r1,  140(r30)
002e08  1f414fef  addli r2, r30, -2140
002e0c  674a4fee  storeli.w r4, -2140(r30)
002e10  e70aefee  storeli.w r14, -2136(r30)
002e14  e74acfee  storeli.w r12, -2132(r30)
002e18  9bb02000  slli r1, r1, 2
002e1c  0b111110  add.s r2, r2, r1
002e20  e3010100  loadli.w r3,  0(r2)
002e24  1f110000  addli r2, zero, 1
002e28  67073fee  storeli.w r3, -2192(r30)
002e2c  bfb12102  blt.s r3, r2, 1132
002e30  1f47aff7  addli r14, r30, -1068
002e34  63443f01  loadli.w r8,  156(r30)
002e38  63056f02  loadli.w r10,  304(r30)
002e3c  e3456f02  loadli.w r11,  308(r30)
002e40  e3445f02  loadli.w r9,  300(r30)
002e44  9f060000  addli r13, zero, 0
002e48  1f76f6ff  addli r12, r12, -1
002e4c  1f0b2000  addli r22, zero, 16
002e50  9f2b0000  addli r23, zero, 2
002e54  1f090000  addli r18, zero, 0
002e58  8b101710  add.s r1, r14, r1
002e5c  9b01f400  andi r3, r8, 15
002e60  0b1ab530  div.s r20, r10, r11
002e64  1f046fef  addli r8, r30, -2128
002e68  9bb97400  slli r19, r9, 7
002e6c  e7061fee  storeli.w r1, -2200(r30)
002e70  9f00cff7  addli r1, r30, -1056
002e74  1f850100  addli r10, r3, 0
002e78  9f802000  addli r1, r1, 16
002e7c  67491fee  storeli.w r1, -2156(r30)
002e80  9f002400  addli r1, r8, 16
002e84  e7071fee  storeli.w r1, -2184(r30)
002e88  9ff0f4ff  addli r1, r9, -1
002e8c  67461fee  storeli.w r1, -2204(r30)
002e90  5b040000  j 32
002e94  9f403000  addli r1, zero, 28
002e98  7d800000  xsignal r1, 0
002e9c  9f960600  addli r13, r13, 1
002ea0  9f103000  addli r1, zero, 25
002ea4  7d800000  xsignal r1, 0
002ea8  e300efee  loadli.w r1,  -2192(r30)
002eac  b7bf1600  beq r13, r1, 1004
002eb0  e300dfee  loadli.w r1,  -2200(r30)
002eb4  e341ffed  loadli.w r3,  -2308(r30)
002eb8  6342dfed  loadli.w r4,  -2324(r30)
002ebc  634ebfed  loadli.w r28,  -2340(r30)
002ec0  6780d000  storeli.w r13, 0(r1)
002ec4  6304bff7  loadli.w r8,  -1064(r30)
002ec8  e344aff7  loadli.w r9,  -1068(r30)
002ecc  634dbff7  loadli.w r26,  -1060(r30)
002ed0  8b103420  mul.s r1, r8, r3
002ed4  8b159410  add.s r11, r8, r9
002ed8  8b101218  sub.s r1, r4, r1
002edc  6302ffed  loadli.w r4,  -2312(r30)
002ee0  8b901140  min.s r1, r3, r1
002ee4  e301efed  loadli.w r3,  -2320(r30)
002ee8  0b974420  mul.s r14, r9, r4
002eec  0b9e4450  fmac.s r28, r9, r4
002ef0  8b970048  max.s r15, r1, zero
002ef4  e3001fef  loadli.w r1,  -2168(r30)
002ef8  0b97e118  sub.s r14, r3, r14
002efc  e3010fee  loadli.w r3,  -2304(r30)
002f00  8b951538  mod.s r11, r11, r1
002f04  8b10e240  min.s r1, r4, r14
002f08  63470fef  loadli.w r14,  -2172(r30)
002f0c  0b9c3730  div.s r24, r15, r3
002f10  e3012fef  loadli.w r3,  -2160(r30)
002f14  8b970048  max.s r15, r1, zero
002f18  0b973550  fmac.s r14, r11, r3
002f1c  e341efed  loadli.w r3,  -2316(r30)
002f20  37d72100  beq r3, r2, 468
002f24  1f320000  addli r4, zero, 3
002f28  37e74100  beq r3, r4, 472
002f2c  bb877101  bneq r3, r23, 480
002f30  93840400  seteq r9, r9, zero
002f34  13040402  setneq r8, r8, zero
002f38  17848400  and r8, r9, r8
002f3c  37470400  beq r8, zero, 464
002f40  0b144c11  add.s r8, r24, r20
002f44  1f74f4ff  addli r8, r8, -1
002f48  8b154431  div.s r11, r8, r20
002f4c  3fad25fe  blt.s r11, r2, -184
002f50  9f010002  addli r3, zero, 256
002f54  9bbd5700  slli r27, r15, 5
002f58  9f0a0000  addli r21, zero, 0
002f5c  0b143e30  div.s r8, r28, r3
002f60  9b388400  slli r17, r8, 8
002f64  db060000  j 52
002f68  9f314000  addli r3, zero, 35
002f6c  0d000026  ew_cfg zero, zero, zero, 19
002f70  0d000020  ew_cfg zero, zero, zero, 16
002f74  1d900b00  unlock r23
002f78  7d800100  xsignal r3, 0
002f7c  1f190900  addli r18, r18, 1
002f80  9f112000  addli r3, zero, 17
002f84  7d800100  xsignal r3, 0
002f88  0b1c4c19  sub.s r24, r24, r20
002f8c  9ff5f5ff  addli r11, r11, -1
002f90  8b9a4a11  add.s r21, r21, r20
002f94  378c05fe  beq r11, zero, -256
002f98  7d100b00  xwait r22, 0
002f9c  bb3fcdfe  bneq r26, r12, -20
002fa0  bfaf20fe  blt.s r1, r2, -24
002fa4  3fd02300  blt.s r7, r2, 20
002fa8  9ff3f3ff  addli r7, r7, -1
002fac  6304cff7  loadli.w r8,  -1056(r30)
002fb0  3b600400  bneq r8, zero, 24
002fb4  db0e0000  j 116
002fb8  9f513000  addli r3, zero, 29
002fbc  7d900100  xwait r3, 0
002fc0  6304cff7  loadli.w r8,  -1056(r30)
002fc4  b7110400  beq r8, zero, 100
002fc8  bf01c401  blt.s r8, r28, 96
002fcc  e304efff  loadli.w r9,  -16(r30)
002fd0  3f309e00  blt.s r28, r9, 12
002fd4  9f840402  addli r9, r9, 256
002fd8  3f419e00  blt.s r28, r9, 80
002fdc  670f1fff  storeli.w r17, -16(r30)
002fe0  0b141419  sub.s r8, r8, r17
002fe4  9f010002  addli r3, zero, 256
002fe8  1f020500  addli r4, r10, 0
002fec  00a00000  mfence { lm }
002ff0  0b143440  min.s r8, r8, r3
002ff4  eb620fff  loadext.w r[6:7], -16(r30)
002ff8  eb548fbe  load.d r[10:11], -1048(r30)
002ffc  9f810c00  addli r3, r25, 0
003000  ab0c00f0  lui r25, 983040
003004  1b342400  slli r8, r8, 2
003008  97b27203  sll.d r[6:7], r[6:7], r23
00300c  17149401  or r8, r8, r25
003010  9f8c0100  addli r25, r3, 0
003014  e3412fef  loadli.w r3,  -2156(r30)
003018  8ba25410  add.ul r[6:7], r[10:11], r[6:7]
00301c  1f050200  addli r10, r4, 0
003020  7fa43200  l_gm2lm r8, r3, 0(r[6:7])
003024  00a00200  mfence { lm, gm }
003028  63046fef  loadli.w r8,  -2128(r30)
00302c  37610400  beq r8, zero, 88
003030  3f51c401  blt.s r8, r28, 84
003034  e3048ff7  loadli.w r9,  -1088(r30)
003038  3f309e00  blt.s r28, r9, 12
00303c  9f820402  addli r5, r9, 256
003040  3f115e00  blt.s r28, r5, 68
003044  670c1ff7  storeli.w r17, -1088(r30)
003048  8b121419  sub.s r5, r8, r17
00304c  9f010002  addli r3, zero, 256
003050  1f037fef  addli r6, r30, -2120
003054  00a00000  mfence { lm }
003058  8b923240  min.s r5, r5, r3
00305c  6b640fbc  loadext.w r[9:10], -1088(r30)
003060  eb510300  load.d r[4:5], 0(r6)
003064  2b0300f0  lui r6, 983040
003068  9bb22200  slli r5, r5, 2
00306c  17347403  sll.d r[9:10], r[9:10], r23
003070  97926200  or r5, r5, r6
003074  6303ffee  loadli.w r6,  -2184(r30)
003078  8ba18110  add.ul r[4:5], r[4:5], r[9:10]
00307c  ffa26100  l_gm2lm r5, r6, 0(r[4:5])
003080  00a00200  mfence { lm, gm }
003084  1d800b00  lock zero, r23
003088  0d010020  ew_cfg r2, zero, zero, 16
00308c  0b148a41  min.s r8, r20, r24
003090  0d000002  ew_cfg zero, zero, zero, 1
003094  3f5b24fe  blt.s r8, r2, -300
003098  9f014000  addli r3, zero, 32
00309c  1f72f4ff  addli r4, r8, -1
0030a0  e3024fef  loadli.w r5,  -2144(r30)
0030a4  63033fef  loadli.w r6,  -2152(r30)
0030a8  0d000204  ew_cfg zero, r4, zero, 2
0030ac  0d010006  ew_cfg r2, zero, zero, 3
0030b0  0d010000  ew_cfg r2, zero, zero, 0
0030b4  0d050014  ew_cfg r10, zero, zero, 10
0030b8  8d1c0000  ewcoeff_cfg r25, zero, zero, 0
0030bc  8d070006  ew_cfg r15, zero, zero, 3
0030c0  8b913a30  div.s r3, r21, r3
0030c4  8b125938  mod.s r5, r18, r5
0030c8  1bb25100  slli r4, r3, 5
0030cc  0b924a18  sub.s r4, r21, r4
0030d0  0b923d50  fmac.s r4, r27, r3
0030d4  9b312200  slli r3, r4, 2
0030d8  63423fef  loadli.w r4,  -2148(r30)
0030dc  8d87f726  ew_cfg r15, r15, r15, 19
0030e0  8b91e110  add.s r3, r3, r14
0030e4  0b934250  fmac.s r6, r5, r4
0030e8  2d833100  dsmadd r6, r3, r3, 0
0030ec  0d000000  ew_cfg zero, zero, zero, 0
0030f0  5bcfffff  j -392
0030f4  13840400  seteq r8, r9, zero
0030f8  3b2904fe  bneq r8, zero, -440
0030fc  5b020000  j 16
003100  17149400  or r8, r8, r9
003104  13040400  seteq r8, r8, zero
003108  bb6804fe  bneq r8, zero, -456
00310c  e340cfee  loadli.w r1,  -2204(r30)
003110  8b90f010  add.s r1, r1, r15
003114  8b900031  div.s r1, r1, r16
003118  bff520fe  blt.s r1, r2, -644
00311c  9f75fcff  addli r11, r24, -1
003120  9f8d0700  addli r27, r15, 0
003124  5b070000  j 56
003128  9f314000  addli r3, zero, 35
00312c  0d000026  ew_cfg zero, zero, zero, 19
003130  0d000020  ew_cfg zero, zero, zero, 16
003134  1d900b00  unlock r23
003138  7d800100  xsignal r3, 0
00313c  1f190900  addli r18, r18, 1
003140  9f112000  addli r3, zero, 17
003144  7d800100  xsignal r3, 0
003148  0b173711  add.s r14, r14, r19
00314c  0b1e0e11  add.s r28, r28, r16
003150  9ff0f0ff  addli r1, r1, -1
003154  8b9d0d19  sub.s r27, r27, r16
003158  b7f400fe  beq r1, zero, -708
00315c  7d100b00  xwait r22, 0
003160  bb3fcdfe  bneq r26, r12, -20
003164  8b18b841  min.s r17, r16, r27
003168  bf8f28fe  blt.s r17, r2, -32
00316c  3fd02300  blt.s r7, r2, 20
003170  9ff3f3ff  addli r7, r7, -1
003174  6304cff7  loadli.w r8,  -1056(r30)
003178  3b600400  bneq r8, zero, 24
00317c  db0d0000  j 108
003180  9f513000  addli r3, zero, 29
003184  7d900100  xwait r3, 0
003188  6304cff7  loadli.w r8,  -1056(r30)
00318c  37710400  beq r8, zero, 92
003190  3f61c401  blt.s r8, r28, 88
003194  e304efff  loadli.w r9,  -16(r30)
003198  3f309e00  blt.s r28, r9, 12
00319c  9f810402  addli r3, r9, 256
0031a0  3f213e00  blt.s r28, r3, 72
0031a4  1f020002  addli r4, zero, 256
0031a8  8b114e30  div.s r3, r28, r4
0031ac  9bb18100  slli r3, r3, 8
0031b0  670f3ffe  storeli.w r3, -16(r30)
0031b4  8b113418  sub.s r3, r8, r3
0031b8  00a00000  mfence { lm }
0031bc  8b914140  min.s r3, r3, r4
0031c0  6b620fff  loadext.w r[5:6], -16(r30)
0031c4  6b548fbe  load.d r[9:10], -1048(r30)
0031c8  2b0300f0  lui r6, 983040
0031cc  9bb12100  slli r3, r3, 2
0031d0  17327203  sll.d r[5:6], r[5:6], r23
0031d4  97916100  or r3, r3, r6
0031d8  63432fef  loadli.w r6,  -2156(r30)
0031dc  0b224410  add.ul r[5:6], r[9:10], r[5:6]
0031e0  ff216200  l_gm2lm r3, r6, 0(r[5:6])
0031e4  00a00200  mfence { lm, gm }
0031e8  63046fef  loadli.w r8,  -2128(r30)
0031ec  b7010400  beq r8, zero, 96
0031f0  3f71c401  blt.s r8, r28, 92
0031f4  e3048ff7  loadli.w r9,  -1088(r30)
0031f8  3f309e00  blt.s r28, r9, 12
0031fc  9f810402  addli r3, r9, 256
003200  3f313e00  blt.s r28, r3, 76
003204  1f020002  addli r4, zero, 256
003208  9f0a7fef  addli r21, r30, -2120
00320c  8b114e30  div.s r3, r28, r4
003210  9bb18100  slli r3, r3, 8
003214  670c3ff6  storeli.w r3, -1088(r30)
003218  8b113418  sub.s r3, r8, r3
00321c  00a00000  mfence { lm }
003220  8b914140  min.s r3, r3, r4
003224  6b620fbc  loadext.w r[5:6], -1088(r30)
003228  6bd40a00  load.d r[9:10], 0(r21)
00322c  2b0300f0  lui r6, 983040
003230  9bb12100  slli r3, r3, 2
003234  17327203  sll.d r[5:6], r[5:6], r23
003238  97916100  or r3, r3, r6
00323c  6303ffee  loadli.w r6,  -2184(r30)
003240  0b224410  add.ul r[5:6], r[9:10], r[5:6]
003244  ff216200  l_gm2lm r3, r6, 0(r[5:6])
003248  00a00200  mfence { lm, gm }
00324c  1d800b00  lock zero, r23
003250  0d010020  ew_cfg r2, zero, zero, 16
003254  0d000002  ew_cfg zero, zero, zero, 1
003258  3f4b2cfe  blt.s r24, r2, -304
00325c  e3014fef  loadli.w r3,  -2144(r30)
003260  63023fef  loadli.w r4,  -2152(r30)
003264  0d800504  ew_cfg zero, r11, zero, 2
003268  0d010006  ew_cfg r2, zero, zero, 3
00326c  0d010000  ew_cfg r2, zero, zero, 0
003270  0d050014  ew_cfg r10, zero, zero, 10
003274  8d1c0000  ewcoeff_cfg r25, zero, zero, 0
003278  e3423fef  loadli.w r5,  -2148(r30)
00327c  8d080006  ew_cfg r17, zero, zero, 3
003280  8d88f726  ew_cfg r17, r15, r15, 19
003284  8b113938  mod.s r3, r18, r3
003288  0b925150  fmac.s r4, r3, r5
00328c  2d02e700  dsmadd r4, r14, r14, 0
003290  0d000000  ew_cfg zero, zero, zero, 0
003294  dbd2ffff  j -364
003298  9f01bfee  addli r3, r30, -2216
00329c  b3001028  .word 0x281000b3
0032a0  ebd50100  load.d r[12:13], 0(r3)
0032a4  93a01500  seteq.d r1, r[12:13], r[2:3]
0032a8  bb910000  bneq r1, zero, 100
0032ac  6303cfee  loadli.w r6,  -2208(r30)
0032b0  1f311000  addli r2, zero, 11
0032b4  9f200000  addli r1, zero, 2
0032b8  1d800000  lock zero, r1
0032bc  dd810000  ld_sd_rdout r3, r1, zero, 0
0032c0  670e3ff6  storeli.w r3, -1056(r30)
0032c4  1d900000  unlock r1
0032c8  00a00000  mfence { lm }
0032cc  13016104  setlt.u r2, r2, r6
0032d0  bb700100  bneq r2, zero, 60
0032d4  1f01cff7  addli r2, r30, -1056
0032d8  9f410000  addli r3, zero, 4
0032dc  00d20002  load_param_i r4, 1
0032e0  9f421000  addli r5, zero, 12
0032e4  b303732c  .word 0x2c7303b3
0032e8  0b136210  add.s r6, r4, r6
0032ec  ab0400f0  lui r9, 983040
0032f0  97b31302  sll.d r[8:9], r[8:9], r1
0032f4  13055304  setlt.u r10, r6, r5
0032f8  97949100  or r9, r3, r9
0032fc  8ba37510  add.ul r[8:9], r[12:13], r[8:9]
003300  ffb42300  s_lm2gm r9, r2, 0(r[8:9])
003304  00a00200  mfence { lm, gm }
003308  3b7f05fe  bneq r10, zero, -36
00330c  7d000000  xsignal zero, 0
003310  80300002  core_id r1
003314  3be00000  bneq r1, zero, 24
003318  80500102  load_param_i r1, 2
00331c  7d100000  xwait zero, 0
003320  9ff0f0ff  addli r1, r1, -1
003324  bbef00fe  bneq r1, zero, -8
003328  7d400000  xsignal_mode_cfg zero
00332c  9f0e0fed  addli sp, r30, -2432
003330  9f8e0e13  addli sp, sp, 2432
003334  00a00300  mfence { lm, sm, gm }
003338  00100000  exit
00333c  00000000  nop
