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
0000b4  9f8ebef8  addli sp, sp, -936
0000b8  1f8fde06  addli r30, sp, 872
0000bc  9f100000  addli r1, zero, 1
0000c0  00310002  core_id r2
0000c4  e34b6f00  loadli.w r23,  52(r30)
0000c8  7dc00000  xsignal_mode_cfg r1
0000cc  37600100  beq r2, zero, 24
0000d0  abf0ffff  lui r1, 1048575
0000d4  9b90f0ff  ori r1, r1, 4095
0000d8  80a10004  csr_set csr3, r1
0000dc  00d00100  sync_group
0000e0  db780000  j 964
0000e4  9f210000  addli r3, zero, 2
0000e8  fdd00000  uni_sram_cfg r1, r1
0000ec  2bf2ffff  lui r4, 1048575
0000f0  1d800100  lock zero, r3
0000f4  8d000020  ew_cfg r1, zero, zero, 16
0000f8  9b10f2ff  ori r1, r4, 4095
0000fc  1f320000  addli r4, zero, 3
000100  1d900100  unlock r3
000104  9f510000  addli r3, zero, 5
000108  80a10004  csr_set csr3, r1
00010c  9f301000  addli r1, zero, 11
000110  00d00100  sync_group
000114  7d800000  xsignal r1, 0
000118  7d800000  xsignal r1, 0
00011c  7d800100  xsignal r3, 0
000120  7d800100  xsignal r3, 0
000124  7d800100  xsignal r3, 0
000128  7d800100  xsignal r3, 0
00012c  7d800100  xsignal r3, 0
000130  7d800100  xsignal r3, 0
000134  7d800100  xsignal r3, 0
000138  7d800100  xsignal r3, 0
00013c  7d800100  xsignal r3, 0
000140  7d800100  xsignal r3, 0
000144  7d800100  xsignal r3, 0
000148  7d800100  xsignal r3, 0
00014c  7d800100  xsignal r3, 0
000150  7d800100  xsignal r3, 0
000154  7d800100  xsignal r3, 0
000158  7d800100  xsignal r3, 0
00015c  7d800100  xsignal r3, 0
000160  7d800100  xsignal r3, 0
000164  7d800100  xsignal r3, 0
000168  7d800100  xsignal r3, 0
00016c  7d800100  xsignal r3, 0
000170  7d800100  xsignal r3, 0
000174  7d800100  xsignal r3, 0
000178  7d800100  xsignal r3, 0
00017c  7d800100  xsignal r3, 0
000180  7d800100  xsignal r3, 0
000184  7d800100  xsignal r3, 0
000188  7d800100  xsignal r3, 0
00018c  7d800100  xsignal r3, 0
000190  7d800100  xsignal r3, 0
000194  7d800100  xsignal r3, 0
000198  7d800100  xsignal r3, 0
00019c  7d800100  xsignal r3, 0
0001a0  7d800100  xsignal r3, 0
0001a4  7d800100  xsignal r3, 0
0001a8  7d800100  xsignal r3, 0
0001ac  7d800100  xsignal r3, 0
0001b0  7d800100  xsignal r3, 0
0001b4  7d800100  xsignal r3, 0
0001b8  7d800100  xsignal r3, 0
0001bc  7d800100  xsignal r3, 0
0001c0  7d800100  xsignal r3, 0
0001c4  7d800100  xsignal r3, 0
0001c8  7d800100  xsignal r3, 0
0001cc  7d800100  xsignal r3, 0
0001d0  7d800100  xsignal r3, 0
0001d4  7d800100  xsignal r3, 0
0001d8  7d800100  xsignal r3, 0
0001dc  9f101000  addli r1, zero, 9
0001e0  9f710000  addli r3, zero, 7
0001e4  7d000200  xsignal r4, 0
0001e8  7d000200  xsignal r4, 0
0001ec  7d000200  xsignal r4, 0
0001f0  7d000200  xsignal r4, 0
0001f4  7d000200  xsignal r4, 0
0001f8  7d000200  xsignal r4, 0
0001fc  7d000200  xsignal r4, 0
000200  7d000200  xsignal r4, 0
000204  7d000200  xsignal r4, 0
000208  7d000200  xsignal r4, 0
00020c  7d000200  xsignal r4, 0
000210  7d000200  xsignal r4, 0
000214  7d000200  xsignal r4, 0
000218  7d000200  xsignal r4, 0
00021c  7d000200  xsignal r4, 0
000220  7d000200  xsignal r4, 0
000224  7d000200  xsignal r4, 0
000228  7d000200  xsignal r4, 0
00022c  7d000200  xsignal r4, 0
000230  7d000200  xsignal r4, 0
000234  7d000200  xsignal r4, 0
000238  7d000200  xsignal r4, 0
00023c  7d000200  xsignal r4, 0
000240  7d000200  xsignal r4, 0
000244  7d000200  xsignal r4, 0
000248  7d000200  xsignal r4, 0
00024c  7d000200  xsignal r4, 0
000250  7d000200  xsignal r4, 0
000254  7d000200  xsignal r4, 0
000258  7d000200  xsignal r4, 0
00025c  7d000200  xsignal r4, 0
000260  7d000200  xsignal r4, 0
000264  7d000200  xsignal r4, 0
000268  7d000200  xsignal r4, 0
00026c  7d000200  xsignal r4, 0
000270  7d000200  xsignal r4, 0
000274  7d000200  xsignal r4, 0
000278  7d000200  xsignal r4, 0
00027c  7d000200  xsignal r4, 0
000280  7d000200  xsignal r4, 0
000284  7d000200  xsignal r4, 0
000288  7d000200  xsignal r4, 0
00028c  7d000200  xsignal r4, 0
000290  7d000200  xsignal r4, 0
000294  7d000200  xsignal r4, 0
000298  7d000200  xsignal r4, 0
00029c  7d000200  xsignal r4, 0
0002a0  7d000200  xsignal r4, 0
0002a4  7d800000  xsignal r1, 0
0002a8  7d800000  xsignal r1, 0
0002ac  7d800000  xsignal r1, 0
0002b0  7d800000  xsignal r1, 0
0002b4  7d800000  xsignal r1, 0
0002b8  7d800000  xsignal r1, 0
0002bc  7d800000  xsignal r1, 0
0002c0  7d800000  xsignal r1, 0
0002c4  7d800000  xsignal r1, 0
0002c8  7d800000  xsignal r1, 0
0002cc  7d800000  xsignal r1, 0
0002d0  7d800000  xsignal r1, 0
0002d4  7d800000  xsignal r1, 0
0002d8  7d800000  xsignal r1, 0
0002dc  7d800000  xsignal r1, 0
0002e0  7d800000  xsignal r1, 0
0002e4  7d800000  xsignal r1, 0
0002e8  7d800000  xsignal r1, 0
0002ec  7d800000  xsignal r1, 0
0002f0  7d800000  xsignal r1, 0
0002f4  7d800000  xsignal r1, 0
0002f8  7d800000  xsignal r1, 0
0002fc  7d800000  xsignal r1, 0
000300  7d800000  xsignal r1, 0
000304  7d800000  xsignal r1, 0
000308  7d800000  xsignal r1, 0
00030c  7d800000  xsignal r1, 0
000310  7d800000  xsignal r1, 0
000314  7d800000  xsignal r1, 0
000318  7d800000  xsignal r1, 0
00031c  7d800000  xsignal r1, 0
000320  7d800000  xsignal r1, 0
000324  7d800000  xsignal r1, 0
000328  7d800000  xsignal r1, 0
00032c  7d800000  xsignal r1, 0
000330  7d800000  xsignal r1, 0
000334  7d800000  xsignal r1, 0
000338  7d800000  xsignal r1, 0
00033c  7d800000  xsignal r1, 0
000340  7d800000  xsignal r1, 0
000344  7d800000  xsignal r1, 0
000348  7d800000  xsignal r1, 0
00034c  7d800000  xsignal r1, 0
000350  7d800000  xsignal r1, 0
000354  7d800000  xsignal r1, 0
000358  7d800000  xsignal r1, 0
00035c  7d800000  xsignal r1, 0
000360  7d800000  xsignal r1, 0
000364  7d800000  xsignal r1, 0
000368  7d800000  xsignal r1, 0
00036c  7d800000  xsignal r1, 0
000370  7d800000  xsignal r1, 0
000374  7d800000  xsignal r1, 0
000378  7d800000  xsignal r1, 0
00037c  7d800000  xsignal r1, 0
000380  7d800000  xsignal r1, 0
000384  7d800000  xsignal r1, 0
000388  7d800000  xsignal r1, 0
00038c  7d800000  xsignal r1, 0
000390  7d800000  xsignal r1, 0
000394  7d800000  xsignal r1, 0
000398  7d800000  xsignal r1, 0
00039c  7d800000  xsignal r1, 0
0003a0  7d800000  xsignal r1, 0
0003a4  7d800000  xsignal r1, 0
0003a8  7d800000  xsignal r1, 0
0003ac  7d800000  xsignal r1, 0
0003b0  7d800000  xsignal r1, 0
0003b4  7d800000  xsignal r1, 0
0003b8  7d800000  xsignal r1, 0
0003bc  7d800000  xsignal r1, 0
0003c0  7d800000  xsignal r1, 0
0003c4  7d800000  xsignal r1, 0
0003c8  7d800000  xsignal r1, 0
0003cc  7d800000  xsignal r1, 0
0003d0  7d800000  xsignal r1, 0
0003d4  7d800000  xsignal r1, 0
0003d8  7d800000  xsignal r1, 0
0003dc  7d800000  xsignal r1, 0
0003e0  7d800000  xsignal r1, 0
0003e4  7d800100  xsignal r3, 0
0003e8  7d800100  xsignal r3, 0
0003ec  7d800100  xsignal r3, 0
0003f0  7d800100  xsignal r3, 0
0003f4  7d800100  xsignal r3, 0
0003f8  7d800100  xsignal r3, 0
0003fc  7d800100  xsignal r3, 0
000400  7d800100  xsignal r3, 0
000404  7d800100  xsignal r3, 0
000408  7d800100  xsignal r3, 0
00040c  7d800100  xsignal r3, 0
000410  7d800100  xsignal r3, 0
000414  7d800100  xsignal r3, 0
000418  7d800100  xsignal r3, 0
00041c  7d800100  xsignal r3, 0
000420  7d800100  xsignal r3, 0
000424  7d800100  xsignal r3, 0
000428  7d800100  xsignal r3, 0
00042c  7d800100  xsignal r3, 0
000430  7d800100  xsignal r3, 0
000434  7d800100  xsignal r3, 0
000438  7d800100  xsignal r3, 0
00043c  7d800100  xsignal r3, 0
000440  7d800100  xsignal r3, 0
000444  7d800100  xsignal r3, 0
000448  7d800100  xsignal r3, 0
00044c  7d800100  xsignal r3, 0
000450  7d800100  xsignal r3, 0
000454  7d800100  xsignal r3, 0
000458  7d800100  xsignal r3, 0
00045c  7d800100  xsignal r3, 0
000460  7d800100  xsignal r3, 0
000464  7d800100  xsignal r3, 0
000468  7d800100  xsignal r3, 0
00046c  7d800100  xsignal r3, 0
000470  7d800100  xsignal r3, 0
000474  7d800100  xsignal r3, 0
000478  7d800100  xsignal r3, 0
00047c  7d800100  xsignal r3, 0
000480  7d800100  xsignal r3, 0
000484  7d800100  xsignal r3, 0
000488  7d800100  xsignal r3, 0
00048c  7d800100  xsignal r3, 0
000490  7d800100  xsignal r3, 0
000494  7d800100  xsignal r3, 0
000498  7d800100  xsignal r3, 0
00049c  7d800100  xsignal r3, 0
0004a0  7d800100  xsignal r3, 0
0004a4  e3006f00  loadli.w r1,  48(r30)
0004a8  e3416f00  loadli.w r3,  52(r30)
0004ac  80d20002  load_param_i r5, 1
0004b0  63027f00  loadli.w r4,  56(r30)
0004b4  00530002  load_param_i r6, 0
0004b8  e7430ffe  storeli.w zero, -196(r30)
0004bc  e70f0ffa  storeli.w zero, -520(r30)
0004c0  67430ffa  storeli.w zero, -716(r30)
0004c4  8b901120  mul.s r1, r3, r1
0004c8  9f810200  addli r3, r5, 0
0004cc  8b914050  fmac.s r3, r1, r4
0004d0  8b904020  mul.s r1, r1, r4
0004d4  9ff1f1ff  addli r3, r3, -1
0004d8  8b925130  div.s r5, r3, r5
0004dc  8b916220  mul.s r3, r5, r6
0004e0  8b926250  fmac.s r5, r5, r6
0004e4  8b921240  min.s r5, r5, r1
0004e8  4b823202  ble.s r5, r3, 1152
0004ec  63463f00  loadli.w r12,  28(r30)
0004f0  e3063f00  loadli.w r13,  24(r30)
0004f4  b3940228  sext_int2long r[10:11], r5
0004f8  9f038000  addli r7, zero, 64
0004fc  b3970128  sext_int2long r[16:17], r3
000500  e301fffb  loadli.w r3,  -520(r30)
000504  63044f00  loadli.w r8,  32(r30)
000508  63434f00  loadli.w r6,  36(r30)
00050c  63025f00  loadli.w r4,  40(r30)
000510  e3405f00  loadli.w r1,  44(r30)
000514  9f690000  addli r19, zero, 6
000518  9f0d0000  addli r27, zero, 0
00051c  1f2c0000  addli r24, zero, 2
000520  9f4c0000  addli r25, zero, 4
000524  2b8a0000  lui r20, 8
000528  73349fcc  store.d r[10:11], -824(r30)
00052c  9f727600  addli r5, r12, 63
000530  9ff47600  addli r9, r13, 63
000534  67023ffa  storeli.w r3, -736(r30)
000538  9f717400  addli r3, r8, 63
00053c  b3180228  sext_int2long r[18:19], r4
000540  8b927230  div.s r5, r5, r7
000544  0b977430  div.s r14, r9, r7
000548  674b3ff8  storeli.w r3, -844(r30)
00054c  0b9d7130  div.s r26, r3, r7
000550  9b312300  slli r3, r6, 2
000554  e3447ffe  loadli.w r9,  -196(r30)
000558  73341fcb  store.d r[18:19], -856(r30)
00055c  e7403ffa  storeli.w r3, -756(r30)
000560  9b312200  slli r3, r4, 2
000564  67429ffa  storeli.w r9, -732(r30)
000568  e3446ffa  loadli.w r9,  -716(r30)
00056c  e74d3ff8  storeli.w r3, -804(r30)
000570  9bb12000  slli r3, r1, 2
000574  33950228  sext_int2long r[11:12], r5
000578  674a3ff8  storeli.w r3, -860(r30)
00057c  9f026000  addli r5, zero, 48
000580  7330afcc  store.d r[11:12], -832(r30)
000584  33150728  sext_int2long r[11:12], r14
000588  733cafca  store.d r[11:12], -840(r30)
00058c  33950628  sext_int2long r[11:12], r13
000590  33160628  sext_int2long r[13:14], r12
000594  7330cfce  store.d r[13:14], -800(r30)
000598  33160328  sext_int2long r[13:14], r6
00059c  1f130000  addli r6, zero, 1
0005a0  7338afd0  store.d r[11:12], -752(r30)
0005a4  8b31a620  mul.sl r[4:5], r[13:14], r[11:12]
0005a8  733ccfd0  store.d r[13:14], -744(r30)
0005ac  97b63803  sll.d r[14:15], r[18:19], r19
0005b0  73343fd2  store.d r[4:5], -728(r30)
0005b4  b3910028  sext_int2long r[4:5], r1
0005b8  9f000000  addli r1, zero, 0
0005bc  733c3fc8  store.d r[4:5], -872(r30)
0005c0  5b040000  j 32
0005c4  9f211000  addli r3, zero, 10
0005c8  7d800100  xsignal r3, 0
0005cc  eb518fcc  load.d r[4:5], -824(r30)
0005d0  a7970700  addli.d r[16:17], r[16:17], 1
0005d4  9f9d0d00  addli r27, r27, 1
0005d8  93b13704  setlt.sl r3, r[16:17], r[4:5]
0005dc  37be0100  beq r3, zero, 908
0005e0  e74fbff9  storeli.w r27, -772(r30)
0005e4  3b309101  bneq r2, r25, 12
0005e8  9f311000  addli r3, zero, 11
0005ec  7d900100  xwait r3, 0
0005f0  e3017f00  loadli.w r3,  56(r30)
0005f4  6b550fcc  load.d r[11:12], -832(r30)
0005f8  7338ffce  store.d r[16:17], -784(r30)
0005fc  b30a0328  zext_int2long r[22:23], r6
000600  0b943730  div.s r8, r15, r3
000604  8b117431  div.s r3, r8, r23
000608  b3910128  sext_int2long r[4:5], r3
00060c  8f97a160  div.sl r[16:17], r[4:5], r[11:12]
000610  8f98a170  mod.sl r[18:19], r[4:5], r[11:12]
000614  6b558fcb  load.d r[11:12], -840(r30)
000618  8b3df518  sub.sl r[28:29], r[11:12], r[16:17]
00061c  8bba5d41  min.sl r[22:23], r[28:29], r[22:23]
000620  e34dfff9  loadli.w r27,  -772(r30)
000624  8f915171  mod.sl r[4:5], r[4:5], r[22:23]
000628  8f985861  div.sl r[18:19], r[18:19], r[22:23]
00062c  0b968d39  mod.s r12, r27, r24
000630  17b53803  sll.d r[11:12], r[18:19], r19
000634  8ba1f110  add.ul r[4:5], r[4:5], r[16:17]
000638  7330afd0  store.d r[11:12], -768(r30)
00063c  17b53103  sll.d r[11:12], r[4:5], r19
000640  9b31e600  slli r3, r12, 14
000644  e74e3ff8  storeli.w r3, -788(r30)
000648  e3416ff9  loadli.w r3,  -844(r30)
00064c  7338afcc  store.d r[11:12], -816(r30)
000650  bf997100  blt.s r3, r7, 612
000654  8b117439  mod.s r3, r8, r23
000658  9f0a0000  addli r21, zero, 0
00065c  b3910128  sext_int2long r[4:5], r3
000660  97bd3103  sll.d r[28:29], r[4:5], r19
000664  eb518fd1  load.d r[4:5], -744(r30)
000668  8b383520  mul.sl r[18:19], r[11:12], r[4:5]
00066c  eb518fca  load.d r[4:5], -856(r30)
000670  8bb73d20  mul.sl r[16:17], r[28:29], r[4:5]
000674  5b0e0000  j 112
000678  6b558fd1  load.d r[11:12], -744(r30)
00067c  eb590f00  load.d r[20:21], 0(r30)
000680  173b8b03  sll.d r[23:24], r[23:24], r24
000684  8f91a160  div.sl r[4:5], r[4:5], r[11:12]
000688  1f350000  addli r10, zero, 3
00068c  0bab6911  add.ul r[23:24], r[20:21], r[23:24]
000690  7d100500  xwait r10, 0
000694  1d800c00  lock zero, r25
000698  15000000  dma_cfg zero, zero, zero, 0
00069c  eb590fd1  load.d r[20:21], -752(r30)
0006a0  15800b04  dma_cfg zero, r23, zero, 2
0006a4  27858100  addli.d r[11:12], r[4:5], 64
0006a8  0b353541  min.sl r[11:12], r[11:12], r[20:21]
0006ac  9f690000  addli r19, zero, 6
0006b0  2b8a0000  lui r20, 8
0006b4  8b313518  sub.sl r[4:5], r[11:12], r[4:5]
0006b8  1f050002  addli r10, zero, 256
0006bc  1504ab06  dma_cfg r8, r22, r10, 3
0006c0  63441ffa  loadli.w r8,  -756(r30)
0006c4  15053408  dma_cfg r10, r8, r3, 4
0006c8  35000000  dma_run zero
0006cc  1d900c00  unlock r25
0006d0  7d000c00  xsignal r24, 0
0006d4  a7888800  addli.d r[18:19], r[18:19], 64
0006d8  9f9a0a00  addli r21, r21, 1
0006dc  8ba7d710  add.ul r[16:17], r[16:17], r[14:15]
0006e0  b7365d01  beq r26, r21, 428
0006e4  8b915411  add.s r3, r9, r21
0006e8  0b925011  add.s r4, r1, r21
0006ec  8b915138  mod.s r3, r3, r5
0006f0  0b125238  mod.s r4, r4, r5
0006f4  9bb1e100  slli r3, r3, 14
0006f8  1b3be200  slli r22, r4, 14
0006fc  0b944111  add.s r8, r3, r20
000700  b7208101  beq r2, r24, 40
000704  3b716100  bneq r2, r6, 92
000708  eb518fd2  load.d r[4:5], -728(r30)
00070c  0babb811  add.ul r[23:24], r[18:19], r[28:29]
000710  13363b04  setlt.sl r12, r[23:24], r[4:5]
000714  a7010b00  addli.d r[4:5], r[23:24], 0
000718  bb0d06fe  bneq r12, zero, -160
00071c  eb518fd2  load.d r[4:5], -728(r30)
000720  8f113b70  mod.sl r[4:5], r[23:24], r[4:5]
000724  dbeaffff  j -172
000728  9f510000  addli r3, zero, 5
00072c  7d100c00  xwait r24, 0
000730  7d900100  xwait r3, 0
000734  1d000000  lock zero, zero
000738  9f310000  addli r3, zero, 3
00073c  010c0000  ds_cfg r24, zero, 0
000740  81030002  ds_cfg r7, zero, 1
000744  8103001c  ds_cfg r7, zero, 14
000748  8103001a  ds_cfg r7, zero, 13
00074c  211b7402  shuffle_batch r22, r8, r7, 1
000750  1d100000  unlock zero
000754  7d800100  xsignal r3, 0
000758  7d800c00  xsignal r25, 0
00075c  5befffff  j -136
000760  e3414ffa  loadli.w r3,  -732(r30)
000764  63024ffa  loadli.w r4,  -736(r30)
000768  1f04a000  addli r8, zero, 80
00076c  8b915111  add.s r3, r3, r21
000770  0b125211  add.s r4, r4, r21
000774  8b915138  mod.s r3, r3, r5
000778  0b128238  mod.s r4, r4, r8
00077c  1b36e200  slli r12, r4, 14
000780  9bb1e100  slli r3, r3, 14
000784  2b820c00  lui r4, 200
000788  0b944110  add.s r8, r3, r4
00078c  9f710000  addli r3, zero, 7
000790  b7413100  beq r2, r3, 112
000794  bb123101  bneq r2, r19, 164
000798  eb510fd0  load.d r[4:5], -768(r30)
00079c  eb590fce  load.d r[20:21], -800(r30)
0007a0  1f760000  addli r12, zero, 7
0007a4  7d100600  xwait r12, 0
0007a8  1d800c00  lock zero, r25
0007ac  8ba13710  add.ul r[4:5], r[16:17], r[4:5]
0007b0  15000000  dma_cfg zero, zero, zero, 0
0007b4  0f953171  mod.sl r[11:12], r[4:5], r[20:21]
0007b8  97b18103  sll.d r[4:5], r[4:5], r24
0007bc  270b8500  addli.d r[23:24], r[11:12], 64
0007c0  0b3b3b41  min.sl r[23:24], r[23:24], r[20:21]
0007c4  9f690000  addli r19, zero, 6
0007c8  2b8a0000  lui r20, 8
0007cc  0b35ab18  sub.sl r[11:12], r[23:24], r[11:12]
0007d0  6b5b8f00  load.d r[23:24], 8(r30)
0007d4  1b352500  slli r10, r10, 2
0007d8  8b213b10  add.ul r[4:5], r[23:24], r[4:5]
0007dc  15000204  dma_cfg zero, r4, zero, 2
0007e0  1584a106  dma_cfg r8, r3, r10, 3
0007e4  1f020002  addli r4, zero, 256
0007e8  e341bff9  loadli.w r3,  -804(r30)
0007ec  15827108  dma_cfg r4, r3, r7, 4
0007f0  35000000  dma_run zero
0007f4  1d900c00  unlock r25
0007f8  7d800900  xsignal r19, 0
0007fc  5bdbffff  j -296
000800  9f111000  addli r3, zero, 9
000804  7d900900  xwait r19, 0
000808  7d900100  xwait r3, 0
00080c  1d000000  lock zero, zero
000810  9f710000  addli r3, zero, 7
000814  010c0000  ds_cfg r24, zero, 0
000818  81030002  ds_cfg r7, zero, 1
00081c  8103001c  ds_cfg r7, zero, 14
000820  8103001a  ds_cfg r7, zero, 13
000824  41067404  shuffle_coa r12, r8, r7, 2
000828  1d100000  unlock zero
00082c  7d800100  xsignal r3, 0
000830  9f011000  addli r3, zero, 8
000834  5b0a0000  j 80
000838  3b7a91ff  bneq r2, r25, -356
00083c  9f011000  addli r3, zero, 8
000840  7d900c00  xwait r25, 0
000844  1f130000  addli r6, zero, 1
000848  7d900100  xwait r3, 0
00084c  9f110000  addli r3, zero, 1
000850  1d800100  lock zero, r3
000854  89837300  mm_cfg r7, r7, r7, 0
000858  890c3c04  mm_cfg r25, r24, r3, 2
00085c  37c00a00  beq r21, zero, 16
000860  e341dff9  loadli.w r3,  -788(r30)
000864  a911cb10  mm_acc r3, r22, r12, 8
000868  db010000  j 12
00086c  e341dff9  loadli.w r3,  -788(r30)
000870  a901cb10  mm r3, r22, r12, 8
000874  9f510000  addli r3, zero, 5
000878  1d100300  unlock r6
00087c  7d800100  xsignal r3, 0
000880  9f111000  addli r3, zero, 9
000884  7d800100  xsignal r3, 0
000888  dbc9ffff  j -436
00088c  e3014ffa  loadli.w r3,  -736(r30)
000890  e34b6f00  loadli.w r23,  52(r30)
000894  e34dfff9  loadli.w r27,  -772(r30)
000898  8b905011  add.s r1, r1, r21
00089c  8b945411  add.s r9, r9, r21
0008a0  8b915111  add.s r3, r3, r21
0008a4  67023ffa  storeli.w r3, -736(r30)
0008a8  e3414ffa  loadli.w r3,  -732(r30)
0008ac  8b915111  add.s r3, r3, r21
0008b0  67423ffa  storeli.w r3, -732(r30)
0008b4  eb570fcf  load.d r[16:17], -784(r30)
0008b8  373491ff  beq r2, r25, -756
0008bc  3b4401fe  bneq r2, zero, -752
0008c0  eb510fd0  load.d r[4:5], -768(r30)
0008c4  eb570fce  load.d r[16:17], -800(r30)
0008c8  eb580fcd  load.d r[18:19], -816(r30)
0008cc  1f241000  addli r8, zero, 10
0008d0  a78a8100  addli.d r[22:23], r[4:5], 64
0008d4  27858800  addli.d r[11:12], r[18:19], 64
0008d8  8bbafa40  min.sl r[22:23], r[22:23], r[16:17]
0008dc  eb570fd1  load.d r[16:17], -752(r30)
0008e0  0b35f540  min.sl r[11:12], r[11:12], r[16:17]
0008e4  8bb73a48  max.sl r[16:17], r[22:23], r[4:5]
0008e8  8bba3718  sub.sl r[22:23], r[16:17], r[4:5]
0008ec  eb578fc9  load.d r[16:17], -872(r30)
0008f0  0b351549  max.sl r[11:12], r[11:12], r[18:19]
0008f4  0b351519  sub.sl r[11:12], r[11:12], r[18:19]
0008f8  8bb7f820  mul.sl r[16:17], r[18:19], r[16:17]
0008fc  b3880328  zext_int2long r[18:19], r7
000900  8bba1a41  min.sl r[22:23], r[22:23], r[18:19]
000904  97b78703  sll.d r[16:17], r[16:17], r24
000908  0b351541  min.sl r[11:12], r[11:12], r[18:19]
00090c  73385fcd  store.d r[22:23], -816(r30)
000910  eb5a0f01  load.d r[22:23], 16(r30)
000914  7d100400  xwait r8, 0
000918  1f540000  addli r8, zero, 5
00091c  1d000400  lock zero, r8
000920  8ba7fa10  add.ul r[16:17], r[22:23], r[16:17]
000924  97ba8103  sll.d r[22:23], r[4:5], r24
000928  15000000  dma_cfg zero, zero, zero, 0
00092c  15000302  dma_cfg zero, r6, zero, 1
000930  eb510fcd  load.d r[4:5], -816(r30)
000934  8ba75711  add.ul r[16:17], r[16:17], r[22:23]
000938  15080004  dma_cfg r16, zero, zero, 2
00093c  9bb12100  slli r3, r3, 2
000940  6342dff9  loadli.w r4,  -788(r30)
000944  95073206  dma_cfg r15, r4, r3, 3
000948  1f020002  addli r4, zero, 256
00094c  e3414ff9  loadli.w r3,  -860(r30)
000950  eb570fcf  load.d r[16:17], -784(r30)
000954  9501a208  dma_cfg r3, r4, r10, 4
000958  9f311000  addli r3, zero, 11
00095c  35000000  dma_run zero
000960  1d100400  unlock r8
000964  db8cffff  j -924
000968  7d000000  xsignal zero, 0
00096c  bb600100  bneq r2, zero, 56
000970  9f200000  addli r1, zero, 2
000974  7d100000  xwait zero, 0
000978  7d100000  xwait zero, 0
00097c  7d100000  xwait zero, 0
000980  7d100000  xwait zero, 0
000984  7d100000  xwait zero, 0
000988  7d100000  xwait zero, 0
00098c  7d100000  xwait zero, 0
000990  7d100000  xwait zero, 0
000994  1d800000  lock zero, r1
000998  0d000020  ew_cfg zero, zero, zero, 16
00099c  1d900000  unlock r1
0009a0  7d400000  xsignal_mode_cfg zero
0009a4  9f8ede06  addli sp, sp, 872
0009a8  00a00300  mfence { lm, sm, gm }
0009ac  00100000  exit
0009b0  00100000  exit
0009b4  00100000  exit
0009b8  00100000  exit
0009bc  00100000  exit
0009c0  00100000  exit
0009c4  00100000  exit
0009c8  00100000  exit
0009cc  00100000  exit
0009d0  00100000  exit
0009d4  00100000  exit
0009d8  00100000  exit
0009dc  00100000  exit
0009e0  00100000  exit
0009e4  00100000  exit
0009e8  00100000  exit
0009ec  00100000  exit
0009f0  00100000  exit
0009f4  00100000  exit
0009f8  00100000  exit
0009fc  00100000  exit
000a00  00100000  exit
000a04  00100000  exit
000a08  00100000  exit
000a0c  00100000  exit
000a10  00100000  exit
000a14  00100000  exit
000a18  00100000  exit
000a1c  00100000  exit
000a20  00100000  exit
000a24  00100000  exit
000a28  00100000  exit
000a2c  00100000  exit
000a30  00100000  exit
000a34  00100000  exit
000a38  00100000  exit
000a3c  00100000  exit
000a40  00100000  exit
000a44  00100000  exit
000a48  00100000  exit
000a4c  00100000  exit
000a50  00100000  exit
000a54  00100000  exit
000a58  00100000  exit
000a5c  00100000  exit
000a60  00100000  exit
000a64  00100000  exit
000a68  00100000  exit
000a6c  00100000  exit
000a70  00100000  exit
000a74  00100000  exit
000a78  00100000  exit
000a7c  00100000  exit
000a80  00100000  exit
000a84  00100000  exit
000a88  00100000  exit
000a8c  00100000  exit
000a90  00100000  exit
000a94  00100000  exit
000a98  00100000  exit
000a9c  00100000  exit
000aa0  00100000  exit
000aa4  00100000  exit
000aa8  00100000  exit
000aac  00100000  exit
000ab0  00100000  exit
000ab4  00100000  exit
000ab8  00100000  exit
000abc  00100000  exit
000ac0  00100000  exit
000ac4  00100000  exit
000ac8  00100000  exit
000acc  00100000  exit
000ad0  00100000  exit
000ad4  00100000  exit
000ad8  00100000  exit
000adc  00100000  exit
000ae0  00100000  exit
000ae4  00100000  exit
000ae8  00100000  exit
000aec  00100000  exit
000af0  00100000  exit
000af4  00100000  exit
000af8  00100000  exit
000afc  00100000  exit
000b00  00100000  exit
000b04  00100000  exit
000b08  00100000  exit
000b0c  00100000  exit
000b10  00100000  exit
000b14  00100000  exit
000b18  00100000  exit
000b1c  00100000  exit
000b20  00100000  exit
000b24  00100000  exit
000b28  00100000  exit
000b2c  00100000  exit
000b30  00100000  exit
000b34  00100000  exit
000b38  00100000  exit
000b3c  00100000  exit
000b40  00100000  exit
000b44  00100000  exit
000b48  00100000  exit
000b4c  00100000  exit
000b50  00100000  exit
000b54  00100000  exit
000b58  00100000  exit
000b5c  00100000  exit
000b60  00100000  exit
000b64  00100000  exit
000b68  00100000  exit
000b6c  00100000  exit
000b70  00100000  exit
000b74  00100000  exit
000b78  00100000  exit
000b7c  00100000  exit
000b80  00100000  exit
000b84  00100000  exit
000b88  00100000  exit
000b8c  00100000  exit
000b90  00100000  exit
000b94  00100000  exit
000b98  00100000  exit
000b9c  00100000  exit
000ba0  00100000  exit
000ba4  00100000  exit
000ba8  00100000  exit
000bac  00100000  exit
000bb0  00100000  exit
000bb4  00100000  exit
000bb8  00100000  exit
000bbc  00100000  exit
000bc0  00100000  exit
000bc4  00100000  exit
000bc8  00100000  exit
000bcc  00100000  exit
000bd0  00100000  exit
000bd4  00100000  exit
000bd8  00100000  exit
000bdc  00100000  exit
000be0  00100000  exit
000be4  00100000  exit
000be8  00100000  exit
000bec  00100000  exit
