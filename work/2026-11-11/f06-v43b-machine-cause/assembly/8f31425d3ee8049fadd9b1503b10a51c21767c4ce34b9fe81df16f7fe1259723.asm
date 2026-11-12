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
00005c  9f497000  addli r19, zero, 60
000060  1f8a8eff  addli r20, sp, -64
000064  ff494201  bl_gm2lm r19, r20, 0(r[5:6])
000068  00a00200  mfence { lm, gm }
00006c  abfa0000  lui r21, 15
000070  9b9afaff  ori r21, r21, 4095
000074  80a10a04  csr_set csr3, r21
000078  00d00100  sync_group
00007c  fe8007e0  vmmov mr1, r15
000080  fe900720  vmmovh mr1, r15
000084  d7160000  jal 180
000088  fe8007e0  vmmov mr1, r15
00008c  fe900720  vmmovh mr1, r15
000090  1f8a8eff  addli r20, sp, -64
000094  4a100002  vloads_mask16.mz vr0{mr1}, 0(zero)
000098  46000a02  vstore.mz vr0{mr1}, 0(r20)
00009c  00a00100  mfence { lm, sm }
0000a0  00d00100  sync_group
0000a4  97a01000  xor r1, r1, r1
0000a8  1f8f0e00  addli r30, sp, 0
0000ac  d7160000  jal 180
0000b0  00400000  trap
0000b4  9f8e5efb  addli sp, sp, -600
0000b8  1f8f3e04  addli r30, sp, 536
0000bc  9f100000  addli r1, zero, 1
0000c0  80340002  core_id r9
0000c4  63077f00  loadli.w r14,  56(r30)
0000c8  e34b6f00  loadli.w r23,  52(r30)
0000cc  7dc00000  xsignal_mode_cfg r1
0000d0  37e00400  beq r9, zero, 24
0000d4  abf0ffff  lui r1, 1048575
0000d8  9b90f0ff  ori r1, r1, 4095
0000dc  80a10004  csr_set csr3, r1
0000e0  00d00100  sync_group
0000e4  5b3d0000  j 488
0000e8  1f210000  addli r2, zero, 2
0000ec  fdd00000  uni_sram_cfg r1, r1
0000f0  abf1ffff  lui r3, 1048575
0000f4  1d000100  lock zero, r2
0000f8  8d000020  ew_cfg r1, zero, zero, 16
0000fc  9b90f1ff  ori r1, r3, 4095
000100  9f310000  addli r3, zero, 3
000104  1d100100  unlock r2
000108  1f510000  addli r2, zero, 5
00010c  80a10004  csr_set csr3, r1
000110  9f301000  addli r1, zero, 11
000114  00d00100  sync_group
000118  7d800000  xsignal r1, 0
00011c  7d800000  xsignal r1, 0
000120  7d000100  xsignal r2, 0
000124  7d000100  xsignal r2, 0
000128  7d000100  xsignal r2, 0
00012c  7d000100  xsignal r2, 0
000130  7d000100  xsignal r2, 0
000134  7d000100  xsignal r2, 0
000138  9f101000  addli r1, zero, 9
00013c  1f710000  addli r2, zero, 7
000140  7d800100  xsignal r3, 0
000144  7d800100  xsignal r3, 0
000148  7d800100  xsignal r3, 0
00014c  7d800100  xsignal r3, 0
000150  7d800100  xsignal r3, 0
000154  7d800100  xsignal r3, 0
000158  7d800100  xsignal r3, 0
00015c  7d800100  xsignal r3, 0
000160  7d800100  xsignal r3, 0
000164  7d800000  xsignal r1, 0
000168  7d800000  xsignal r1, 0
00016c  7d800000  xsignal r1, 0
000170  7d800000  xsignal r1, 0
000174  7d800000  xsignal r1, 0
000178  7d800000  xsignal r1, 0
00017c  7d800000  xsignal r1, 0
000180  7d800000  xsignal r1, 0
000184  7d800000  xsignal r1, 0
000188  7d800000  xsignal r1, 0
00018c  7d800000  xsignal r1, 0
000190  7d800000  xsignal r1, 0
000194  7d800000  xsignal r1, 0
000198  7d800000  xsignal r1, 0
00019c  7d800000  xsignal r1, 0
0001a0  7d800000  xsignal r1, 0
0001a4  7d800000  xsignal r1, 0
0001a8  7d800000  xsignal r1, 0
0001ac  7d800000  xsignal r1, 0
0001b0  7d800000  xsignal r1, 0
0001b4  7d800000  xsignal r1, 0
0001b8  7d800000  xsignal r1, 0
0001bc  7d800000  xsignal r1, 0
0001c0  7d800000  xsignal r1, 0
0001c4  7d800000  xsignal r1, 0
0001c8  7d800000  xsignal r1, 0
0001cc  7d800000  xsignal r1, 0
0001d0  7d800000  xsignal r1, 0
0001d4  7d800000  xsignal r1, 0
0001d8  7d800000  xsignal r1, 0
0001dc  7d800000  xsignal r1, 0
0001e0  7d800000  xsignal r1, 0
0001e4  7d800000  xsignal r1, 0
0001e8  7d800000  xsignal r1, 0
0001ec  7d800000  xsignal r1, 0
0001f0  7d800000  xsignal r1, 0
0001f4  7d800000  xsignal r1, 0
0001f8  7d800000  xsignal r1, 0
0001fc  7d800000  xsignal r1, 0
000200  7d800000  xsignal r1, 0
000204  7d800000  xsignal r1, 0
000208  7d800000  xsignal r1, 0
00020c  7d800000  xsignal r1, 0
000210  7d800000  xsignal r1, 0
000214  7d800000  xsignal r1, 0
000218  7d800000  xsignal r1, 0
00021c  7d800000  xsignal r1, 0
000220  7d800000  xsignal r1, 0
000224  7d800000  xsignal r1, 0
000228  7d800000  xsignal r1, 0
00022c  7d800000  xsignal r1, 0
000230  7d800000  xsignal r1, 0
000234  7d800000  xsignal r1, 0
000238  7d800000  xsignal r1, 0
00023c  7d800000  xsignal r1, 0
000240  7d800000  xsignal r1, 0
000244  7d800000  xsignal r1, 0
000248  7d800000  xsignal r1, 0
00024c  7d800000  xsignal r1, 0
000250  7d800000  xsignal r1, 0
000254  7d800000  xsignal r1, 0
000258  7d800000  xsignal r1, 0
00025c  7d800000  xsignal r1, 0
000260  7d800000  xsignal r1, 0
000264  7d800000  xsignal r1, 0
000268  7d800000  xsignal r1, 0
00026c  7d800000  xsignal r1, 0
000270  7d800000  xsignal r1, 0
000274  7d800000  xsignal r1, 0
000278  7d800000  xsignal r1, 0
00027c  7d800000  xsignal r1, 0
000280  7d800000  xsignal r1, 0
000284  7d800000  xsignal r1, 0
000288  7d800000  xsignal r1, 0
00028c  7d800000  xsignal r1, 0
000290  7d800000  xsignal r1, 0
000294  7d800000  xsignal r1, 0
000298  7d800000  xsignal r1, 0
00029c  7d800000  xsignal r1, 0
0002a0  7d800000  xsignal r1, 0
0002a4  7d000100  xsignal r2, 0
0002a8  7d000100  xsignal r2, 0
0002ac  7d000100  xsignal r2, 0
0002b0  7d000100  xsignal r2, 0
0002b4  7d000100  xsignal r2, 0
0002b8  7d000100  xsignal r2, 0
0002bc  7d000100  xsignal r2, 0
0002c0  7d000100  xsignal r2, 0
0002c4  7d000100  xsignal r2, 0
0002c8  7d000100  xsignal r2, 0
0002cc  e3006f00  loadli.w r1,  48(r30)
0002d0  63416f00  loadli.w r2,  52(r30)
0002d4  00d20002  load_param_i r4, 1
0002d8  e3017f00  loadli.w r3,  56(r30)
0002dc  00530002  load_param_i r6, 0
0002e0  abf2ffff  lui r5, 1048575
0002e4  674d0ffe  storeli.w zero, -44(r30)
0002e8  67090ffc  storeli.w zero, -368(r30)
0002ec  8b101120  mul.s r1, r2, r1
0002f0  1f010200  addli r2, r4, 0
0002f4  0b913050  fmac.s r2, r1, r3
0002f8  8b913020  mul.s r3, r1, r3
0002fc  1f71f1ff  addli r2, r2, -1
000300  0b124130  div.s r4, r2, r4
000304  1b91f2ff  ori r2, r5, 4095
000308  e70d2ffe  storeli.w r2, -40(r30)
00030c  e74d2ffe  storeli.w r2, -36(r30)
000310  670e2ffe  storeli.w r2, -32(r30)
000314  674e2ffe  storeli.w r2, -28(r30)
000318  e70e2ffe  storeli.w r2, -24(r30)
00031c  e74e2ffe  storeli.w r2, -20(r30)
000320  670f2ffe  storeli.w r2, -16(r30)
000324  674f2ffe  storeli.w r2, -12(r30)
000328  e70f2ffe  storeli.w r2, -8(r30)
00032c  e74f2ffe  storeli.w r2, -4(r30)
000330  67492ffc  storeli.w r2, -364(r30)
000334  e7092ffc  storeli.w r2, -360(r30)
000338  e7492ffc  storeli.w r2, -356(r30)
00033c  670a2ffc  storeli.w r2, -352(r30)
000340  674a2ffc  storeli.w r2, -348(r30)
000344  e70a2ffc  storeli.w r2, -344(r30)
000348  e74a2ffc  storeli.w r2, -340(r30)
00034c  670b2ffc  storeli.w r2, -336(r30)
000350  674b2ffc  storeli.w r2, -332(r30)
000354  e70b2ffc  storeli.w r2, -328(r30)
000358  e74b2ffc  storeli.w r2, -324(r30)
00035c  670c2ffc  storeli.w r2, -320(r30)
000360  674c2ffc  storeli.w r2, -316(r30)
000364  e70c2ffc  storeli.w r2, -312(r30)
000368  e74c2ffc  storeli.w r2, -308(r30)
00036c  670d2ffc  storeli.w r2, -304(r30)
000370  674d2ffc  storeli.w r2, -300(r30)
000374  e70d2ffc  storeli.w r2, -296(r30)
000378  e74d2ffc  storeli.w r2, -292(r30)
00037c  670e2ffc  storeli.w r2, -288(r30)
000380  674e2ffc  storeli.w r2, -284(r30)
000384  e70e2ffc  storeli.w r2, -280(r30)
000388  e74e2ffc  storeli.w r2, -276(r30)
00038c  670f2ffc  storeli.w r2, -272(r30)
000390  674f2ffc  storeli.w r2, -268(r30)
000394  e70f2ffc  storeli.w r2, -264(r30)
000398  e74f2ffc  storeli.w r2, -260(r30)
00039c  67002ffe  storeli.w r2, -256(r30)
0003a0  67402ffe  storeli.w r2, -252(r30)
0003a4  e7002ffe  storeli.w r2, -248(r30)
0003a8  e7402ffe  storeli.w r2, -244(r30)
0003ac  67012ffe  storeli.w r2, -240(r30)
0003b0  67412ffe  storeli.w r2, -236(r30)
0003b4  e7012ffe  storeli.w r2, -232(r30)
0003b8  e7412ffe  storeli.w r2, -228(r30)
0003bc  67022ffe  storeli.w r2, -224(r30)
0003c0  67422ffe  storeli.w r2, -220(r30)
0003c4  e7022ffe  storeli.w r2, -216(r30)
0003c8  e7422ffe  storeli.w r2, -212(r30)
0003cc  67032ffe  storeli.w r2, -208(r30)
0003d0  67432ffe  storeli.w r2, -204(r30)
0003d4  e7032ffe  storeli.w r2, -200(r30)
0003d8  e7432ffe  storeli.w r2, -196(r30)
0003dc  67042ffe  storeli.w r2, -192(r30)
0003e0  67442ffe  storeli.w r2, -188(r30)
0003e4  e7042ffe  storeli.w r2, -184(r30)
0003e8  e7442ffe  storeli.w r2, -180(r30)
0003ec  67052ffe  storeli.w r2, -176(r30)
0003f0  67452ffe  storeli.w r2, -172(r30)
0003f4  e7052ffe  storeli.w r2, -168(r30)
0003f8  e7452ffe  storeli.w r2, -164(r30)
0003fc  67062ffe  storeli.w r2, -160(r30)
000400  67462ffe  storeli.w r2, -156(r30)
000404  e7062ffe  storeli.w r2, -152(r30)
000408  e7462ffe  storeli.w r2, -148(r30)
00040c  67072ffe  storeli.w r2, -144(r30)
000410  67472ffe  storeli.w r2, -140(r30)
000414  e7072ffe  storeli.w r2, -136(r30)
000418  e7472ffe  storeli.w r2, -132(r30)
00041c  67082ffe  storeli.w r2, -128(r30)
000420  67482ffe  storeli.w r2, -124(r30)
000424  e7082ffe  storeli.w r2, -120(r30)
000428  e7482ffe  storeli.w r2, -116(r30)
00042c  67092ffe  storeli.w r2, -112(r30)
000430  67492ffe  storeli.w r2, -108(r30)
000434  e7092ffe  storeli.w r2, -104(r30)
000438  e7492ffe  storeli.w r2, -100(r30)
00043c  670a2ffe  storeli.w r2, -96(r30)
000440  674a2ffe  storeli.w r2, -92(r30)
000444  e70a2ffe  storeli.w r2, -88(r30)
000448  e74a2ffe  storeli.w r2, -84(r30)
00044c  670b2ffe  storeli.w r2, -80(r30)
000450  674b2ffe  storeli.w r2, -76(r30)
000454  e70b2ffe  storeli.w r2, -72(r30)
000458  e74b2ffe  storeli.w r2, -68(r30)
00045c  670c2ffe  storeli.w r2, -64(r30)
000460  674c2ffe  storeli.w r2, -60(r30)
000464  e70c2ffe  storeli.w r2, -56(r30)
000468  e74c2ffe  storeli.w r2, -52(r30)
00046c  670d2ffe  storeli.w r2, -48(r30)
000470  8b106220  mul.s r1, r4, r6
000474  0b126250  fmac.s r4, r4, r6
000478  8b113240  min.s r3, r4, r3
00047c  4bf81104  ble.s r3, r1, 2588
000480  e3423f00  loadli.w r5,  28(r30)
000484  63013f00  loadli.w r2,  24(r30)
000488  1f038000  addli r6, zero, 64
00048c  1f05c003  addli r10, zero, 480
000490  e3054f00  loadli.w r11,  32(r30)
000494  b39d0028  sext_int2long r[28:29], r1
000498  e3035f00  loadli.w r7,  40(r30)
00049c  e3465f00  loadli.w r13,  44(r30)
0004a0  1f060000  addli r12, zero, 0
0004a4  b39c0128  sext_int2long r[26:27], r3
0004a8  1f090000  addli r18, zero, 0
0004ac  9f210000  addli r3, zero, 2
0004b0  1f4c0000  addli r24, zero, 4
0004b4  73309fe1  store.d r[26:27], -512(r30)
0004b8  9ff47200  addli r9, r5, 63
0004bc  1f74b103  addli r8, r2, 479
0004c0  8b946430  div.s r9, r9, r6
0004c4  0b14a430  div.s r8, r8, r10
0004c8  63454f00  loadli.w r10,  36(r30)
0004cc  b3190528  sext_int2long r[20:21], r10
0004d0  73343fe7  store.d r[20:21], -408(r30)
0004d4  b3970428  sext_int2long r[16:17], r9
0004d8  80340002  core_id r9
0004dc  7338ffe2  store.d r[16:17], -464(r30)
0004e0  b3170428  sext_int2long r[16:17], r8
0004e4  7334ffe2  store.d r[16:17], -472(r30)
0004e8  33180128  sext_int2long r[17:18], r2
0004ec  b3900228  sext_int2long r[2:3], r5
0004f0  33920328  sext_int2long r[5:6], r7
0004f4  9f570000  addli r15, zero, 5
0004f8  73301fe4  store.d r[2:3], -448(r30)
0004fc  9ff07500  addli r1, r11, 63
000500  733c4fde  store.d r[5:6], -520(r30)
000504  73300fe7  store.d r[17:18], -416(r30)
000508  0bb80921  mul.sl r[17:18], r[20:21], r[17:18]
00050c  1f010000  addli r2, zero, 0
000510  67421ffc  storeli.w r1, -476(r30)
000514  8b906030  div.s r1, r1, r6
000518  67481ffc  storeli.w r1, -380(r30)
00051c  9b301500  slli r1, r10, 1
000520  1f050600  addli r10, r12, 0
000524  e7451ffc  storeli.w r1, -420(r30)
000528  9bb01300  slli r1, r7, 1
00052c  9f630000  addli r7, zero, 6
000530  e7431ffc  storeli.w r1, -452(r30)
000534  9bb01600  slli r1, r13, 1
000538  17327202  sll.d r[5:6], r[5:6], r7
00053c  674f1ffa  storeli.w r1, -524(r30)
000540  9f100000  addli r1, zero, 1
000544  733c4fe6  store.d r[5:6], -392(r30)
000548  33920628  sext_int2long r[5:6], r13
00054c  73344fde  store.d r[5:6], -536(r30)
000550  5b040000  j 32
000554  1f211000  addli r2, zero, 10
000558  7d000100  xsignal r2, 0
00055c  63419ffc  loadli.w r2,  -436(r30)
000560  a79d0d00  addli.d r[28:29], r[28:29], 1
000564  1f110100  addli r2, r2, 1
000568  13b29d05  setlt.sl r4, r[28:29], r[26:27]
00056c  b7340204  beq r4, zero, 2348
000570  6747affc  storeli.w r10, -396(r30)
000574  67072ffd  storeli.w r18, -400(r30)
000578  3bb08401  bneq r9, r24, 12
00057c  1f321000  addli r4, zero, 11
000580  7d100200  xwait r4, 0
000584  0b92ed30  div.s r4, r27, r14
000588  6b560fe3  load.d r[13:14], -464(r30)
00058c  6b5a8fe2  load.d r[21:22], -472(r30)
000590  33890028  zext_int2long r[19:20], r1
000594  e7442ffc  storeli.w r2, -436(r30)
000598  8b127231  div.s r5, r4, r23
00059c  b3930228  sext_int2long r[8:9], r5
0005a0  8b123138  mod.s r5, r2, r3
0005a4  2be10100  lui r2, 30
0005a8  0f95c360  div.sl r[11:12], r[8:9], r[13:14]
0005ac  0f96c370  mod.sl r[13:14], r[8:9], r[13:14]
0005b0  0b912220  mul.s r2, r5, r2
0005b4  e3424ffc  loadli.w r5,  -476(r30)
0005b8  e7042ffc  storeli.w r2, -440(r30)
0005bc  0b3aaa18  sub.sl r[21:22], r[21:22], r[11:12]
0005c0  0b392a41  min.sl r[19:20], r[21:22], r[19:20]
0005c4  8f932371  mod.sl r[8:9], r[8:9], r[19:20]
0005c8  0f162661  div.sl r[13:14], r[13:14], r[19:20]
0005cc  8ba3a310  add.ul r[8:9], r[8:9], r[11:12]
0005d0  1f05c003  addli r10, zero, 480
0005d4  b3090528  zext_int2long r[20:21], r10
0005d8  1f650000  addli r10, zero, 6
0005dc  9735a602  sll.d r[12:13], r[13:14], r10
0005e0  7338bfe4  store.d r[12:13], -432(r30)
0005e4  8bb53321  mul.sl r[12:13], r[8:9], r[20:21]
0005e8  3fae6202  blt.s r5, r6, 1928
0005ec  0b127239  mod.s r4, r4, r23
0005f0  eb538fe6  load.d r[8:9], -408(r30)
0005f4  73383fe1  store.d r[20:21], -496(r30)
0005f8  733cbfe1  store.d r[28:29], -488(r30)
0005fc  e30a2ffd  loadli.w r21,  -368(r30)
000600  634eafff  loadli.w r28,  -44(r30)
000604  6309effc  loadli.w r18,  -400(r30)
000608  7334bfe0  store.d r[12:13], -504(r30)
00060c  9f0d0000  addli r27, zero, 0
000610  8bb97520  mul.sl r[20:21], r[12:13], r[8:9]
000614  9f151000  addli r11, zero, 9
000618  33120228  sext_int2long r[5:6], r4
00061c  9733a202  sll.d r[8:9], r[5:6], r10
000620  6b528fdf  load.d r[5:6], -520(r30)
000624  6345effc  loadli.w r10,  -396(r30)
000628  73347fe8  store.d r[8:9], -376(r30)
00062c  8bb64320  mul.sl r[14:15], r[8:9], r[5:6]
000630  9f630000  addli r7, zero, 6
000634  5b320000  j 400
000638  2bc10300  lui r2, 60
00063c  1f4c0000  addli r24, zero, 4
000640  9f040001  addli r9, zero, 128
000644  9f0b0002  addli r23, zero, 256
000648  9f151000  addli r11, zero, 9
00064c  1b140104  ori r8, r2, 64
000650  1d000c00  lock zero, r24
000654  1f510000  addli r2, zero, 5
000658  95800000  dma_cfg r1, r1, zero, 0
00065c  8b938310  add.s r7, r7, r8
000660  15000d04  dma_cfg zero, r26, zero, 2
000664  1f241000  addli r8, zero, 10
000668  95836c06  dma_cfg r7, r25, r6, 3
00066c  95043308  dma_cfg r9, r6, r3, 4
000670  e343bffc  loadli.w r7,  -420(r30)
000674  958b430a  dma_cfg r23, r7, r4, 5
000678  9f630000  addli r7, zero, 6
00067c  15000010  dma_cfg zero, zero, zero, 8
000680  35000000  dma_run zero
000684  1500100a  dma_cfg zero, zero, r1, 5
000688  15000010  dma_cfg zero, zero, zero, 8
00068c  1d100c00  unlock r24
000690  1d000100  lock zero, r2
000694  15000014  dma_cfg zero, zero, zero, 10
000698  15001014  dma_cfg zero, zero, r1, 10
00069c  15003014  dma_cfg zero, zero, r3, 10
0006a0  1500a014  dma_cfg zero, zero, r10, 10
0006a4  15008015  dma_cfg zero, zero, r24, 10
0006a8  15002014  dma_cfg zero, zero, r2, 10
0006ac  15007014  dma_cfg zero, zero, r7, 10
0006b0  15006015  dma_cfg zero, zero, r22, 10
0006b4  1500f014  dma_cfg zero, zero, r15, 10
0006b8  9f570000  addli r15, zero, 5
0006bc  1500b014  dma_cfg zero, zero, r11, 10
0006c0  15008014  dma_cfg zero, zero, r8, 10
0006c4  1f341000  addli r8, zero, 11
0006c8  15008014  dma_cfg zero, zero, r8, 10
0006cc  1f441000  addli r8, zero, 12
0006d0  15008014  dma_cfg zero, zero, r8, 10
0006d4  1f541000  addli r8, zero, 13
0006d8  15008014  dma_cfg zero, zero, r8, 10
0006dc  1f641000  addli r8, zero, 14
0006e0  15008014  dma_cfg zero, zero, r8, 10
0006e4  1f741000  addli r8, zero, 15
0006e8  15008014  dma_cfg zero, zero, r8, 10
0006ec  1f042000  addli r8, zero, 16
0006f0  15008014  dma_cfg zero, zero, r8, 10
0006f4  1f142000  addli r8, zero, 17
0006f8  15008014  dma_cfg zero, zero, r8, 10
0006fc  1f242000  addli r8, zero, 18
000700  15008014  dma_cfg zero, zero, r8, 10
000704  1f342000  addli r8, zero, 19
000708  15008014  dma_cfg zero, zero, r8, 10
00070c  1f442000  addli r8, zero, 20
000710  15008014  dma_cfg zero, zero, r8, 10
000714  1f542000  addli r8, zero, 21
000718  15008014  dma_cfg zero, zero, r8, 10
00071c  1f642000  addli r8, zero, 22
000720  15008014  dma_cfg zero, zero, r8, 10
000724  1f742000  addli r8, zero, 23
000728  15008014  dma_cfg zero, zero, r8, 10
00072c  1f043000  addli r8, zero, 24
000730  15008014  dma_cfg zero, zero, r8, 10
000734  1f143000  addli r8, zero, 25
000738  15008014  dma_cfg zero, zero, r8, 10
00073c  1f243000  addli r8, zero, 26
000740  15008014  dma_cfg zero, zero, r8, 10
000744  1f343000  addli r8, zero, 27
000748  15008014  dma_cfg zero, zero, r8, 10
00074c  1f443000  addli r8, zero, 28
000750  15008014  dma_cfg zero, zero, r8, 10
000754  1f543000  addli r8, zero, 29
000758  15008014  dma_cfg zero, zero, r8, 10
00075c  1f643000  addli r8, zero, 30
000760  15008014  dma_cfg zero, zero, r8, 10
000764  1f743000  addli r8, zero, 31
000768  15008014  dma_cfg zero, zero, r8, 10
00076c  95800000  dma_cfg r1, r1, zero, 0
000770  95000002  dma_cfg r1, zero, zero, 1
000774  15000004  dma_cfg zero, zero, zero, 2
000778  15066006  dma_cfg r12, zero, r6, 3
00077c  95043008  dma_cfg r9, zero, r3, 4
000780  80340002  core_id r9
000784  950b400a  dma_cfg r23, zero, r4, 5
000788  15000010  dma_cfg zero, zero, zero, 8
00078c  35000000  dma_run zero
000790  1500100a  dma_cfg zero, zero, r1, 5
000794  15000010  dma_cfg zero, zero, zero, 8
000798  1d100100  unlock r2
00079c  7d800100  xsignal r3, 0
0007a0  6345effc  loadli.w r10,  -396(r30)
0007a4  9f9a0a00  addli r21, r21, 1
0007a8  1f1e0e00  addli r28, r28, 1
0007ac  6b528fe7  load.d r[5:6], -392(r30)
0007b0  9f9d0d00  addli r27, r27, 1
0007b4  a7898900  addli.d r[20:21], r[20:21], 64
0007b8  8ba64610  add.ul r[14:15], r[14:15], r[5:6]
0007bc  63420ffd  loadli.w r4,  -380(r30)
0007c0  3707b203  beq r4, r27, 1472
0007c4  6b528fe8  load.d r[5:6], -376(r30)
0007c8  8bac4910  add.ul r[26:27], r[20:21], r[5:6]
0007cc  13b20c05  setlt.sl r4, r[26:27], r[17:18]
0007d0  278b0c00  addli.d r[23:24], r[26:27], 0
0007d4  3b200200  bneq r4, zero, 8
0007d8  0f9b0c71  mod.sl r[23:24], r[26:27], r[17:18]
0007dc  0b12b511  add.s r4, r10, r27
0007e0  0b14b911  add.s r8, r18, r27
0007e4  2bc60300  lui r12, 60
0007e8  2be10100  lui r2, 30
0007ec  8b127238  mod.s r5, r4, r7
0007f0  0b12b438  mod.s r4, r8, r11
0007f4  8b922220  mul.s r5, r5, r2
0007f8  0b162250  fmac.s r12, r4, r2
0007fc  b7c53400  beq r9, r3, 368
000800  1f410000  addli r2, zero, 4
000804  1f1c1000  addli r24, zero, 9
000808  9f650000  addli r11, zero, 6
00080c  3be61400  bneq r9, r1, 408
000810  eb548fe6  load.d r[10:11], -408(r30)
000814  abe20100  lui r5, 30
000818  9f071000  addli r15, zero, 8
00081c  8b135220  mul.s r7, r4, r5
000820  6b520fe6  load.d r[5:6], -416(r30)
000824  0f1b9b60  div.sl r[23:24], r[23:24], r[10:11]
000828  a704cb03  addli.d r[10:11], r[23:24], 480
00082c  0bb24440  min.sl r[5:6], r[10:11], r[5:6]
000830  97b41c02  sll.d r[10:11], r[26:27], r1
000834  0b326219  sub.sl r[5:6], r[5:6], r[23:24]
000838  6b5b0f00  load.d r[23:24], 0(r30)
00083c  8b2c9b10  add.ul r[26:27], r[23:24], r[10:11]
000840  1f350000  addli r10, zero, 3
000844  1f7b0000  addli r22, zero, 7
000848  7d100500  xwait r10, 0
00084c  bfb787fe  blt.s r15, r8, -532
000850  9f540000  addli r9, zero, 5
000854  1f341000  addli r8, zero, 11
000858  1d800400  lock zero, r9
00085c  15000014  dma_cfg zero, zero, zero, 10
000860  15001014  dma_cfg zero, zero, r1, 10
000864  15003014  dma_cfg zero, zero, r3, 10
000868  1500a014  dma_cfg zero, zero, r10, 10
00086c  15002014  dma_cfg zero, zero, r2, 10
000870  1f211000  addli r2, zero, 10
000874  15009014  dma_cfg zero, zero, r9, 10
000878  1500b014  dma_cfg zero, zero, r11, 10
00087c  15006015  dma_cfg zero, zero, r22, 10
000880  1500f014  dma_cfg zero, zero, r15, 10
000884  15008015  dma_cfg zero, zero, r24, 10
000888  15002014  dma_cfg zero, zero, r2, 10
00088c  1f411000  addli r2, zero, 12
000890  15008014  dma_cfg zero, zero, r8, 10
000894  1f04c003  addli r8, zero, 480
000898  15002014  dma_cfg zero, zero, r2, 10
00089c  1f511000  addli r2, zero, 13
0008a0  15002014  dma_cfg zero, zero, r2, 10
0008a4  1f611000  addli r2, zero, 14
0008a8  15002014  dma_cfg zero, zero, r2, 10
0008ac  1f711000  addli r2, zero, 15
0008b0  15002014  dma_cfg zero, zero, r2, 10
0008b4  1f012000  addli r2, zero, 16
0008b8  15002014  dma_cfg zero, zero, r2, 10
0008bc  1f112000  addli r2, zero, 17
0008c0  15002014  dma_cfg zero, zero, r2, 10
0008c4  1f212000  addli r2, zero, 18
0008c8  15002014  dma_cfg zero, zero, r2, 10
0008cc  1f312000  addli r2, zero, 19
0008d0  15002014  dma_cfg zero, zero, r2, 10
0008d4  1f412000  addli r2, zero, 20
0008d8  15002014  dma_cfg zero, zero, r2, 10
0008dc  1f512000  addli r2, zero, 21
0008e0  15002014  dma_cfg zero, zero, r2, 10
0008e4  1f612000  addli r2, zero, 22
0008e8  15002014  dma_cfg zero, zero, r2, 10
0008ec  1f712000  addli r2, zero, 23
0008f0  15002014  dma_cfg zero, zero, r2, 10
0008f4  1f013000  addli r2, zero, 24
0008f8  15002014  dma_cfg zero, zero, r2, 10
0008fc  1f113000  addli r2, zero, 25
000900  15002014  dma_cfg zero, zero, r2, 10
000904  1f213000  addli r2, zero, 26
000908  15002014  dma_cfg zero, zero, r2, 10
00090c  1f313000  addli r2, zero, 27
000910  15002014  dma_cfg zero, zero, r2, 10
000914  1f413000  addli r2, zero, 28
000918  15002014  dma_cfg zero, zero, r2, 10
00091c  1f513000  addli r2, zero, 29
000920  15002014  dma_cfg zero, zero, r2, 10
000924  1f613000  addli r2, zero, 30
000928  15002014  dma_cfg zero, zero, r2, 10
00092c  1f713000  addli r2, zero, 31
000930  15002014  dma_cfg zero, zero, r2, 10
000934  1f010001  addli r2, zero, 128
000938  95800000  dma_cfg r1, r1, zero, 0
00093c  95000002  dma_cfg r1, zero, zero, 1
000940  15000004  dma_cfg zero, zero, zero, 2
000944  15066006  dma_cfg r12, zero, r6, 3
000948  15013008  dma_cfg r2, zero, r3, 4
00094c  1f010002  addli r2, zero, 256
000950  1501800a  dma_cfg r2, zero, r8, 5
000954  15000010  dma_cfg zero, zero, zero, 8
000958  35000000  dma_run zero
00095c  1500100a  dma_cfg zero, zero, r1, 5
000960  15000010  dma_cfg zero, zero, zero, 8
000964  1d900400  unlock r9
000968  5b9affff  j -816
00096c  7d900100  xwait r3, 0
000970  7d900700  xwait r15, 0
000974  1d000000  lock zero, zero
000978  1f02c003  addli r4, zero, 480
00097c  1f310000  addli r2, zero, 3
000980  81010000  ds_cfg r3, zero, 0
000984  01030002  ds_cfg r6, zero, 1
000988  0103001c  ds_cfg r6, zero, 14
00098c  0102001a  ds_cfg r4, zero, 13
000990  a1126602  shuffle_batch r5, r12, r6, 1
000994  1d100000  unlock zero
000998  7d000100  xsignal r2, 0
00099c  7d000c00  xsignal r24, 0
0009a0  dbc0ffff  j -508
0009a4  1f211000  addli r2, zero, 10
0009a8  1f190e00  addli r18, r28, 1
0009ac  0b122e38  mod.s r4, r28, r2
0009b0  1f01a000  addli r2, zero, 80
0009b4  8b932a38  mod.s r7, r21, r2
0009b8  2ba11400  lui r2, 330
0009bc  9f9a0a00  addli r21, r21, 1
0009c0  1b32e200  slli r4, r4, 14
0009c4  0b162210  add.s r12, r4, r2
0009c8  9bb3e300  slli r7, r7, 14
0009cc  1f710000  addli r2, zero, 7
0009d0  b7ab2400  beq r9, r2, 744
0009d4  1f4c0000  addli r24, zero, 4
0009d8  bbbcb400  bneq r9, r11, 812
0009dc  eb530fe5  load.d r[8:9], -432(r30)
0009e0  eb5c0fe4  load.d r[26:27], -448(r30)
0009e4  9f770000  addli r15, zero, 7
0009e8  7d900700  xwait r15, 0
0009ec  8ba37610  add.ul r[8:9], r[14:15], r[8:9]
0009f0  8f949371  mod.sl r[10:11], r[8:9], r[26:27]
0009f4  97b31302  sll.d r[8:9], r[8:9], r1
0009f8  278b8400  addli.d r[23:24], r[10:11], 64
0009fc  0b3b9b41  min.sl r[23:24], r[23:24], r[26:27]
000a00  8b3c9b18  sub.sl r[26:27], r[23:24], r[10:11]
000a04  eb548f00  load.d r[10:11], 8(r30)
000a08  9f3b0000  addli r23, zero, 3
000a0c  1f0b1000  addli r22, zero, 8
000a10  8ba37410  add.ul r[8:9], r[10:11], r[8:9]
000a14  1f151000  addli r10, zero, 9
000a18  3f64c501  blt.s r10, r28, 280
000a1c  1f510000  addli r2, zero, 5
000a20  9f221000  addli r5, zero, 10
000a24  1d000100  lock zero, r2
000a28  15000014  dma_cfg zero, zero, zero, 10
000a2c  15001014  dma_cfg zero, zero, r1, 10
000a30  15003014  dma_cfg zero, zero, r3, 10
000a34  15007015  dma_cfg zero, zero, r23, 10
000a38  15008015  dma_cfg zero, zero, r24, 10
000a3c  15002014  dma_cfg zero, zero, r2, 10
000a40  1500b014  dma_cfg zero, zero, r11, 10
000a44  1500f014  dma_cfg zero, zero, r15, 10
000a48  15006015  dma_cfg zero, zero, r22, 10
000a4c  1500a014  dma_cfg zero, zero, r10, 10
000a50  15005014  dma_cfg zero, zero, r5, 10
000a54  9f321000  addli r5, zero, 11
000a58  15005014  dma_cfg zero, zero, r5, 10
000a5c  9f421000  addli r5, zero, 12
000a60  15005014  dma_cfg zero, zero, r5, 10
000a64  9f521000  addli r5, zero, 13
000a68  15005014  dma_cfg zero, zero, r5, 10
000a6c  9f621000  addli r5, zero, 14
000a70  15005014  dma_cfg zero, zero, r5, 10
000a74  9f721000  addli r5, zero, 15
000a78  15005014  dma_cfg zero, zero, r5, 10
000a7c  9f022000  addli r5, zero, 16
000a80  15005014  dma_cfg zero, zero, r5, 10
000a84  9f122000  addli r5, zero, 17
000a88  15005014  dma_cfg zero, zero, r5, 10
000a8c  9f222000  addli r5, zero, 18
000a90  15005014  dma_cfg zero, zero, r5, 10
000a94  9f322000  addli r5, zero, 19
000a98  15005014  dma_cfg zero, zero, r5, 10
000a9c  9f422000  addli r5, zero, 20
000aa0  15005014  dma_cfg zero, zero, r5, 10
000aa4  9f522000  addli r5, zero, 21
000aa8  15005014  dma_cfg zero, zero, r5, 10
000aac  9f622000  addli r5, zero, 22
000ab0  15005014  dma_cfg zero, zero, r5, 10
000ab4  9f722000  addli r5, zero, 23
000ab8  15005014  dma_cfg zero, zero, r5, 10
000abc  9f023000  addli r5, zero, 24
000ac0  15005014  dma_cfg zero, zero, r5, 10
000ac4  9f123000  addli r5, zero, 25
000ac8  15005014  dma_cfg zero, zero, r5, 10
000acc  9f223000  addli r5, zero, 26
000ad0  15005014  dma_cfg zero, zero, r5, 10
000ad4  9f323000  addli r5, zero, 27
000ad8  15005014  dma_cfg zero, zero, r5, 10
000adc  9f423000  addli r5, zero, 28
000ae0  15005014  dma_cfg zero, zero, r5, 10
000ae4  9f523000  addli r5, zero, 29
000ae8  15005014  dma_cfg zero, zero, r5, 10
000aec  9f623000  addli r5, zero, 30
000af0  15005014  dma_cfg zero, zero, r5, 10
000af4  9f723000  addli r5, zero, 31
000af8  15005014  dma_cfg zero, zero, r5, 10
000afc  9f020001  addli r5, zero, 128
000b00  95800000  dma_cfg r1, r1, zero, 0
000b04  95000002  dma_cfg r1, zero, zero, 1
000b08  15000004  dma_cfg zero, zero, zero, 2
000b0c  15066006  dma_cfg r12, zero, r6, 3
000b10  95023008  dma_cfg r5, zero, r3, 4
000b14  9f020002  addli r5, zero, 256
000b18  9502600a  dma_cfg r5, zero, r6, 5
000b1c  15000010  dma_cfg zero, zero, zero, 8
000b20  35000000  dma_run zero
000b24  1500100a  dma_cfg zero, zero, r1, 5
000b28  15000010  dma_cfg zero, zero, zero, 8
000b2c  1d100100  unlock r2
000b30  2ba11400  lui r2, 330
000b34  9ff43c00  addli r9, r25, 31
000b38  1d000c00  lock zero, r24
000b3c  9f050001  addli r11, zero, 128
000b40  1f0e0900  addli r28, r18, 0
000b44  95800000  dma_cfg r1, r1, zero, 0
000b48  9b120104  ori r5, r2, 64
000b4c  1f014000  addli r2, zero, 32
000b50  15000404  dma_cfg zero, r8, zero, 2
000b54  0b125210  add.s r4, r4, r5
000b58  8b922430  div.s r5, r9, r2
000b5c  8b942c38  mod.s r9, r25, r2
000b60  1f510000  addli r2, zero, 5
000b64  15826306  dma_cfg r4, r7, r6, 3
000b68  1f241000  addli r8, zero, 10
000b6c  95055308  dma_cfg r11, r6, r5, 4
000b70  1bb21400  slli r4, r9, 1
000b74  9f040002  addli r9, zero, 256
000b78  e3437ffc  loadli.w r7,  -452(r30)
000b7c  9584630a  dma_cfg r9, r7, r6, 5
000b80  9f630000  addli r7, zero, 6
000b84  15004010  dma_cfg zero, zero, r4, 8
000b88  35000000  dma_run zero
000b8c  1500100a  dma_cfg zero, zero, r1, 5
000b90  15000010  dma_cfg zero, zero, zero, 8
000b94  1d100c00  unlock r24
000b98  1d000100  lock zero, r2
000b9c  15000014  dma_cfg zero, zero, zero, 10
000ba0  15001014  dma_cfg zero, zero, r1, 10
000ba4  15003014  dma_cfg zero, zero, r3, 10
000ba8  15007015  dma_cfg zero, zero, r23, 10
000bac  15008015  dma_cfg zero, zero, r24, 10
000bb0  15002014  dma_cfg zero, zero, r2, 10
000bb4  15007014  dma_cfg zero, zero, r7, 10
000bb8  1500f014  dma_cfg zero, zero, r15, 10
000bbc  9f570000  addli r15, zero, 5
000bc0  15006015  dma_cfg zero, zero, r22, 10
000bc4  1500a014  dma_cfg zero, zero, r10, 10
000bc8  15008014  dma_cfg zero, zero, r8, 10
000bcc  1f341000  addli r8, zero, 11
000bd0  15008014  dma_cfg zero, zero, r8, 10
000bd4  1f441000  addli r8, zero, 12
000bd8  15008014  dma_cfg zero, zero, r8, 10
000bdc  1f541000  addli r8, zero, 13
000be0  15008014  dma_cfg zero, zero, r8, 10
000be4  1f641000  addli r8, zero, 14
000be8  15008014  dma_cfg zero, zero, r8, 10
000bec  1f741000  addli r8, zero, 15
000bf0  15008014  dma_cfg zero, zero, r8, 10
000bf4  1f042000  addli r8, zero, 16
000bf8  15008014  dma_cfg zero, zero, r8, 10
000bfc  1f142000  addli r8, zero, 17
000c00  15008014  dma_cfg zero, zero, r8, 10
000c04  1f242000  addli r8, zero, 18
000c08  15008014  dma_cfg zero, zero, r8, 10
000c0c  1f342000  addli r8, zero, 19
000c10  15008014  dma_cfg zero, zero, r8, 10
000c14  1f442000  addli r8, zero, 20
000c18  15008014  dma_cfg zero, zero, r8, 10
000c1c  1f542000  addli r8, zero, 21
000c20  15008014  dma_cfg zero, zero, r8, 10
000c24  1f642000  addli r8, zero, 22
000c28  15008014  dma_cfg zero, zero, r8, 10
000c2c  1f742000  addli r8, zero, 23
000c30  15008014  dma_cfg zero, zero, r8, 10
000c34  1f043000  addli r8, zero, 24
000c38  15008014  dma_cfg zero, zero, r8, 10
000c3c  1f143000  addli r8, zero, 25
000c40  15008014  dma_cfg zero, zero, r8, 10
000c44  1f243000  addli r8, zero, 26
000c48  15008014  dma_cfg zero, zero, r8, 10
000c4c  1f343000  addli r8, zero, 27
000c50  15008014  dma_cfg zero, zero, r8, 10
000c54  1f443000  addli r8, zero, 28
000c58  15008014  dma_cfg zero, zero, r8, 10
000c5c  1f543000  addli r8, zero, 29
000c60  15008014  dma_cfg zero, zero, r8, 10
000c64  1f643000  addli r8, zero, 30
000c68  15008014  dma_cfg zero, zero, r8, 10
000c6c  1f743000  addli r8, zero, 31
000c70  15008014  dma_cfg zero, zero, r8, 10
000c74  95800000  dma_cfg r1, r1, zero, 0
000c78  95000002  dma_cfg r1, zero, zero, 1
000c7c  15000004  dma_cfg zero, zero, zero, 2
000c80  15066006  dma_cfg r12, zero, r6, 3
000c84  95055008  dma_cfg r11, zero, r5, 4
000c88  9f151000  addli r11, zero, 9
000c8c  9504600a  dma_cfg r9, zero, r6, 5
000c90  80340002  core_id r9
000c94  15004010  dma_cfg zero, zero, r4, 8
000c98  35000000  dma_run zero
000c9c  1500100a  dma_cfg zero, zero, r1, 5
000ca0  15000010  dma_cfg zero, zero, zero, 8
000ca4  1d100100  unlock r2
000ca8  7d800300  xsignal r7, 0
000cac  6309effc  loadli.w r18,  -400(r30)
000cb0  6345effc  loadli.w r10,  -396(r30)
000cb4  5b5fffff  j -1288
000cb8  1f620000  addli r4, zero, 6
000cbc  9f151000  addli r11, zero, 9
000cc0  1f0e0900  addli r28, r18, 0
000cc4  1f4c0000  addli r24, zero, 4
000cc8  7d100200  xwait r4, 0
000ccc  7d900500  xwait r11, 0
000cd0  1d000000  lock zero, zero
000cd4  81010000  ds_cfg r3, zero, 0
000cd8  01030002  ds_cfg r6, zero, 1
000cdc  0103001c  ds_cfg r6, zero, 14
000ce0  0103001a  ds_cfg r6, zero, 13
000ce4  c1036604  shuffle_coa r7, r12, r6, 2
000ce8  9f630000  addli r7, zero, 6
000cec  1d100000  unlock zero
000cf0  7d000100  xsignal r2, 0
000cf4  1f011000  addli r2, zero, 8
000cf8  7d000100  xsignal r2, 0
000cfc  6309effc  loadli.w r18,  -400(r30)
000d00  db55ffff  j -1364
000d04  1f011000  addli r2, zero, 8
000d08  bbc08401  bneq r9, r24, 48
000d0c  1f02c003  addli r4, zero, 480
000d10  7d100c00  xwait r24, 0
000d14  7d100100  xwait r2, 0
000d18  1d800000  lock zero, r1
000d1c  9f151000  addli r11, zero, 9
000d20  09034300  mm_cfg r6, r6, r4, 0
000d24  098c1104  mm_cfg r24, r3, r1, 2
000d28  b7900d00  beq r27, zero, 36
000d2c  63019ffc  loadli.w r2,  -440(r30)
000d30  29917210  mm_acc r2, r5, r7, 8
000d34  5b040000  j 32
000d38  1f0e0900  addli r28, r18, 0
000d3c  6309effc  loadli.w r18,  -400(r30)
000d40  9f630000  addli r7, zero, 6
000d44  9f151000  addli r11, zero, 9
000d48  db4cffff  j -1436
000d4c  63019ffc  loadli.w r2,  -440(r30)
000d50  29817210  mm r2, r5, r7, 8
000d54  1d900000  unlock r1
000d58  7d800700  xsignal r15, 0
000d5c  7d800500  xsignal r11, 0
000d60  1f0e0900  addli r28, r18, 0
000d64  6309effc  loadli.w r18,  -400(r30)
000d68  9f630000  addli r7, zero, 6
000d6c  5b48ffff  j -1472
000d70  6309effc  loadli.w r18,  -400(r30)
000d74  6345effc  loadli.w r10,  -396(r30)
000d78  37ff84fb  beq r9, r24, -2084
000d7c  5b060000  j 48
000d80  0b19b911  add.s r18, r18, r27
000d84  0b15b511  add.s r10, r10, r27
000d88  674dcfff  storeli.w r28, -44(r30)
000d8c  63077f00  loadli.w r14,  56(r30)
000d90  e34b6f00  loadli.w r23,  52(r30)
000d94  eb5c0fe0  load.d r[26:27], -512(r30)
000d98  eb5d8fe1  load.d r[28:29], -488(r30)
000d9c  eb590fe1  load.d r[20:21], -496(r30)
000da0  eb558fe0  load.d r[12:13], -504(r30)
000da4  67095ffd  storeli.w r21, -368(r30)
000da8  b7be84fb  beq r9, r24, -2132
000dac  63419ffc  loadli.w r2,  -436(r30)
000db0  bbce04fa  bneq r9, zero, -2128
000db4  eb5a0fe5  load.d r[22:23], -432(r30)
000db8  eb530fe4  load.d r[8:9], -448(r30)
000dbc  9f060500  addli r13, r10, 0
000dc0  1f010700  addli r2, r14, 0
000dc4  a784c503  addli.d r[10:11], r[12:13], 480
000dc8  27870500  addli.d r[15:16], r[12:13], 0
000dcc  27828a00  addli.d r[5:6], r[22:23], 64
000dd0  0b327240  min.sl r[5:6], r[5:6], r[8:9]
000dd4  b3030328  zext_int2long r[8:9], r6
000dd8  0b325249  max.sl r[5:6], r[5:6], r[22:23]
000ddc  0b325219  sub.sl r[5:6], r[5:6], r[22:23]
000de0  0b327240  min.sl r[5:6], r[5:6], r[8:9]
000de4  eb538fde  load.d r[8:9], -536(r30)
000de8  8bb37520  mul.sl r[8:9], r[12:13], r[8:9]
000dec  eb550fe6  load.d r[12:13], -416(r30)
000df0  97b31302  sll.d r[8:9], r[8:9], r1
000df4  8bb4b440  min.sl r[10:11], r[10:11], r[12:13]
000df8  eb550f01  load.d r[12:13], 16(r30)
000dfc  8bb4e448  max.sl r[10:11], r[10:11], r[15:16]
000e00  8ba37510  add.ul r[8:9], r[12:13], r[8:9]
000e04  97b51a02  sll.d r[12:13], r[22:23], r1
000e08  8bb4e418  sub.sl r[10:11], r[10:11], r[15:16]
000e0c  1f070100  addli r14, r2, 0
000e10  1f211000  addli r2, zero, 10
000e14  9f570000  addli r15, zero, 5
000e18  8ba3b310  add.ul r[8:9], r[8:9], r[12:13]
000e1c  1f064000  addli r12, zero, 32
000e20  9f753200  addli r11, r4, 31
000e24  7d100100  xwait r2, 0
000e28  1f510000  addli r2, zero, 5
000e2c  0b12c238  mod.s r4, r4, r12
000e30  8b95c530  div.s r11, r11, r12
000e34  1d000100  lock zero, r2
000e38  95800000  dma_cfg r1, r1, zero, 0
000e3c  15800002  dma_cfg zero, r1, zero, 1
000e40  e3029ffc  loadli.w r5,  -440(r30)
000e44  15040004  dma_cfg r8, zero, zero, 2
000e48  1b321200  slli r4, r4, 1
000e4c  9b920204  ori r5, r5, 64
000e50  95836206  dma_cfg r7, r5, r6, 3
000e54  9f020001  addli r5, zero, 128
000e58  8bb33441  min.sl r[8:9], r[10:11], r[20:21]
000e5c  1f850600  addli r10, r13, 0
000e60  80340002  core_id r9
000e64  1583b208  dma_cfg r6, r5, r11, 4
000e68  9f050002  addli r11, zero, 256
000e6c  e342effb  loadli.w r5,  -524(r30)
000e70  9582750a  dma_cfg r5, r11, r7, 5
000e74  15004010  dma_cfg zero, zero, r4, 8
000e78  35000000  dma_run zero
000e7c  1500100a  dma_cfg zero, zero, r1, 5
000e80  1f321000  addli r4, zero, 11
000e84  15000010  dma_cfg zero, zero, zero, 8
000e88  1d100100  unlock r2
000e8c  63419ffc  loadli.w r2,  -436(r30)
000e90  7d000200  xsignal r4, 0
000e94  dbd9feff  j -2356
000e98  7d000000  xsignal zero, 0
000e9c  bbe00400  bneq r9, zero, 56
000ea0  9f200000  addli r1, zero, 2
000ea4  7d100000  xwait zero, 0
000ea8  7d100000  xwait zero, 0
000eac  7d100000  xwait zero, 0
000eb0  7d100000  xwait zero, 0
000eb4  7d100000  xwait zero, 0
000eb8  7d100000  xwait zero, 0
000ebc  7d100000  xwait zero, 0
000ec0  7d100000  xwait zero, 0
000ec4  1d800000  lock zero, r1
000ec8  0d000020  ew_cfg zero, zero, zero, 16
000ecc  1d900000  unlock r1
000ed0  7d400000  xsignal_mode_cfg zero
000ed4  9f8e3e04  addli sp, sp, 536
000ed8  00a00300  mfence { lm, sm, gm }
000edc  00100000  exit
000ee0  00100000  exit
000ee4  00100000  exit
000ee8  00100000  exit
000eec  00100000  exit
000ef0  00100000  exit
000ef4  00100000  exit
000ef8  00100000  exit
000efc  00100000  exit
000f00  00100000  exit
000f04  00100000  exit
000f08  00100000  exit
000f0c  00100000  exit
000f10  00100000  exit
000f14  00100000  exit
000f18  00100000  exit
000f1c  00100000  exit
000f20  00100000  exit
000f24  00100000  exit
000f28  00100000  exit
000f2c  00100000  exit
000f30  00100000  exit
000f34  00100000  exit
000f38  00100000  exit
000f3c  00100000  exit
000f40  00100000  exit
000f44  00100000  exit
000f48  00100000  exit
000f4c  00100000  exit
000f50  00100000  exit
000f54  00100000  exit
000f58  00100000  exit
000f5c  00100000  exit
000f60  00100000  exit
000f64  00100000  exit
000f68  00100000  exit
000f6c  00100000  exit
000f70  00100000  exit
000f74  00100000  exit
000f78  00100000  exit
000f7c  00100000  exit
000f80  00100000  exit
000f84  00100000  exit
000f88  00100000  exit
000f8c  00100000  exit
000f90  00100000  exit
000f94  00100000  exit
000f98  00100000  exit
000f9c  00100000  exit
000fa0  00100000  exit
000fa4  00100000  exit
000fa8  00100000  exit
000fac  00100000  exit
000fb0  00100000  exit
000fb4  00100000  exit
000fb8  00100000  exit
000fbc  00100000  exit
000fc0  00100000  exit
000fc4  00100000  exit
000fc8  00100000  exit
000fcc  00100000  exit
000fd0  00100000  exit
000fd4  00100000  exit
000fd8  00100000  exit
000fdc  00100000  exit
000fe0  00100000  exit
000fe4  00100000  exit
000fe8  00100000  exit
000fec  00100000  exit
000ff0  00100000  exit
000ff4  00100000  exit
000ff8  00100000  exit
000ffc  00100000  exit
001000  00100000  exit
001004  00100000  exit
001008  00100000  exit
00100c  00100000  exit
001010  00100000  exit
001014  00100000  exit
001018  00100000  exit
00101c  00100000  exit
001020  00100000  exit
001024  00100000  exit
001028  00100000  exit
00102c  00100000  exit
001030  00100000  exit
001034  00100000  exit
001038  00100000  exit
00103c  00100000  exit
001040  00100000  exit
001044  00100000  exit
001048  00100000  exit
00104c  00100000  exit
001050  00100000  exit
001054  00100000  exit
001058  00100000  exit
00105c  00100000  exit
001060  00100000  exit
001064  00100000  exit
001068  00100000  exit
00106c  00100000  exit
001070  00100000  exit
001074  00100000  exit
001078  00100000  exit
00107c  00100000  exit
001080  00100000  exit
001084  00100000  exit
001088  00100000  exit
00108c  00100000  exit
001090  00100000  exit
001094  00100000  exit
001098  00100000  exit
00109c  00100000  exit
0010a0  00100000  exit
0010a4  00100000  exit
0010a8  00100000  exit
0010ac  00100000  exit
0010b0  00100000  exit
0010b4  00100000  exit
0010b8  00100000  exit
0010bc  00100000  exit
0010c0  00100000  exit
0010c4  00100000  exit
0010c8  00100000  exit
0010cc  00100000  exit
0010d0  00100000  exit
0010d4  00100000  exit
0010d8  00100000  exit
0010dc  00100000  exit
0010e0  00100000  exit
0010e4  00100000  exit
0010e8  00100000  exit
0010ec  00100000  exit
0010f0  00100000  exit
0010f4  00100000  exit
0010f8  00100000  exit
0010fc  00100000  exit
001100  00100000  exit
001104  00100000  exit
001108  00100000  exit
00110c  00100000  exit
001110  00100000  exit
001114  00100000  exit
001118  00100000  exit
00111c  00100000  exit
