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
000078  9f494000  addli r19, zero, 36
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
0000dc  9f8e0ed9  addli sp, sp, -4992
0000e0  ab000000  lui r1, 0
0000e4  80330002  core_id r7
0000e8  1f8f8e26  addli r30, sp, 4928
0000ec  2bf10000  lui r2, 15
0000f0  abf17fff  lui r3, 1046527
0000f4  1bb42300  slli r8, r7, 2
0000f8  9f800000  addli r1, r1, 0
0000fc  e3423f00  loadli.w r5,  28(r30)
000100  63024f00  loadli.w r4,  32(r30)
000104  1b11f1ff  ori r2, r2, 4095
000108  9b91f1ff  ori r3, r3, 4095
00010c  0b131410  add.s r6, r8, r1
000110  e3003f00  loadli.w r1,  24(r30)
000114  73680340  stores.w zero, 1040(r6)
000118  8b901220  mul.s r1, r5, r1
00011c  00a00300  mfence { lm, sm, gm }
000120  80210104  csr_set csr3, r2
000124  00d00100  sync_group
000128  e7036fda  storeli.w r6, -4808(r30)
00012c  73603300  stores.w r3, 0(r6)
000130  80520002  load_param_i r5, 0
000134  00a00300  mfence { lm, sm, gm }
000138  80210104  csr_set csr3, r2
00013c  00d00100  sync_group
000140  0b924020  mul.s r4, r1, r4
000144  4b625206  ble.s r4, r5, 3224
000148  1bb37300  slli r6, r7, 7
00014c  1f170020  addli r14, zero, 4097
000150  9f110000  addli r3, zero, 1
000154  9f300000  addli r1, zero, 3
000158  1b111300  ori r2, r6, 1
00015c  3f20e100  blt.s r2, r14, 8
000160  9f100000  addli r1, zero, 1
000164  00d10002  load_param_i r2, 1
000168  3f20e300  blt.s r6, r14, 8
00016c  5b8d0100  j 3176
000170  67434fda  storeli.w r4, -4812(r30)
000174  1b12f307  ori r4, r6, 127
000178  e7422fda  storeli.w r2, -4820(r30)
00017c  1b1be307  ori r22, r6, 126
000180  1b1cd307  ori r24, r6, 125
000184  9b1bb307  ori r23, r6, 123
000188  e7085fdc  storeli.w r5, -4472(r30)
00018c  9b12a307  ori r5, r6, 122
000190  670c8fe4  storeli.w r8, -3392(r30)
000194  eea5b562  vxor.u.mz vr11{mr1}, vr11, vr11
000198  6e300062  vxor.s.mz vr0{mr1}, vr0, vr0
00019c  e74b4fe4  storeli.w r4, -3396(r30)
0001a0  1f020300  addli r4, r6, 0
0001a4  1b115207  ori r2, r4, 117
0001a8  1b154207  ori r10, r4, 116
0001ac  1b163207  ori r12, r4, 115
0001b0  9b162207  ori r13, r4, 114
0001b4  9b171207  ori r15, r4, 113
0001b8  1b180207  ori r16, r4, 112
0001bc  9b18f206  ori r17, r4, 111
0001c0  1b19e206  ori r18, r4, 110
0001c4  9b152200  ori r11, r4, 2
0001c8  9b19d206  ori r19, r4, 109
0001cc  1b1d3200  ori r26, r4, 3
0001d0  b31d0228  sext_int2long r[28:29], r4
0001d4  9b1ab206  ori r21, r4, 107
0001d8  9b1c6200  ori r25, r4, 6
0001dc  1b1aa206  ori r20, r4, 106
0001e0  1b139207  ori r6, r4, 121
0001e4  9b138207  ori r7, r4, 120
0001e8  1b147207  ori r8, r4, 119
0001ec  9b146207  ori r9, r4, 118
0001f0  67034fda  storeli.w r4, -4816(r30)
0001f4  1311e104  setlt.s r2, r2, r14
0001f8  9395e504  setlt.s r11, r11, r14
0001fc  131ded04  setlt.s r26, r26, r14
000200  97bd3d02  sll.d r[28:29], r[28:29], r3
000204  9f016fe5  addli r3, r30, -3408
000208  939cec04  setlt.s r25, r25, r14
00020c  73b0b101  store.d r[28:29], 0(r3)
000210  9b114200  ori r3, r4, 4
000214  9391e104  setlt.s r3, r3, r14
000218  674f2fe2  storeli.w r2, -3596(r30)
00021c  1311e504  setlt.s r2, r10, r14
000220  9bb52500  slli r11, r11, 2
000224  1b3d3d00  slli r26, r26, 3
000228  1b15d200  ori r10, r4, 13
00022c  9790b000  or r1, r1, r11
000230  9b155200  ori r11, r4, 5
000234  9395e504  setlt.s r11, r11, r14
000238  9790a001  or r1, r1, r26
00023c  1b1d7200  ori r26, r4, 7
000240  9bb14100  slli r3, r3, 4
000244  131ded04  setlt.s r26, r26, r14
000248  97903000  or r1, r1, r3
00024c  670f2fe2  storeli.w r2, -3600(r30)
000250  1311e604  setlt.s r2, r12, r14
000254  9bb15500  slli r3, r11, 5
000258  9b159206  ori r11, r4, 105
00025c  97903000  or r1, r1, r3
000260  9bb16c00  slli r3, r25, 6
000264  9b1c8206  ori r25, r4, 104
000268  e74e2fe2  storeli.w r2, -3604(r30)
00026c  1391e604  setlt.s r2, r13, r14
000270  97903000  or r1, r1, r3
000274  9b317d00  slli r3, r26, 7
000278  1b1d7206  ori r26, r4, 103
00027c  97903000  or r1, r1, r3
000280  e3417fe5  loadli.w r3,  -3396(r30)
000284  67411fdc  storeli.w r1, -4588(r30)
000288  9b106206  ori r1, r4, 102
00028c  9391e104  setlt.s r3, r3, r14
000290  e70e2fe2  storeli.w r2, -3608(r30)
000294  1391e704  setlt.s r2, r15, r14
000298  9390e004  setlt.s r1, r1, r14
00029c  e74b3fe4  storeli.w r3, -3396(r30)
0002a0  9311eb04  setlt.s r3, r22, r14
0002a4  e74d2fe2  storeli.w r2, -3620(r30)
0002a8  1311e804  setlt.s r2, r16, r14
0002ac  67041fe2  storeli.w r1, -3776(r30)
0002b0  9b105206  ori r1, r4, 101
0002b4  9390e004  setlt.s r1, r1, r14
0002b8  e70b3fe4  storeli.w r3, -3400(r30)
0002bc  9311ec04  setlt.s r3, r24, r14
0002c0  670e2fe2  storeli.w r2, -3616(r30)
0002c4  1391e804  setlt.s r2, r17, r14
0002c8  67001fe2  storeli.w r1, -3840(r30)
0002cc  e74a3fe4  storeli.w r3, -3412(r30)
0002d0  9391eb04  setlt.s r3, r23, r14
0002d4  e7492fe4  storeli.w r2, -3428(r30)
0002d8  1311e904  setlt.s r2, r18, r14
0002dc  1b19a200  ori r18, r4, 10
0002e0  e70a3fe4  storeli.w r3, -3416(r30)
0002e4  9391e204  setlt.s r3, r5, r14
0002e8  9f020001  addli r5, zero, 128
0002ec  67042fe4  storeli.w r2, -3520(r30)
0002f0  1391e904  setlt.s r2, r19, r14
0002f4  674a3fe4  storeli.w r3, -3420(r30)
0002f8  9311e304  setlt.s r3, r6, r14
0002fc  1313e904  setlt.s r6, r18, r14
000300  1b198200  ori r18, r4, 8
000304  e70f2fe2  storeli.w r2, -3592(r30)
000308  1391ea04  setlt.s r2, r21, r14
00030c  670a3fe4  storeli.w r3, -3424(r30)
000310  9391e304  setlt.s r3, r7, r14
000314  674e2fe2  storeli.w r2, -3612(r30)
000318  1311ea04  setlt.s r2, r20, r14
00031c  e7093fe4  storeli.w r3, -3432(r30)
000320  9311e404  setlt.s r3, r8, r14
000324  e70d2fe2  storeli.w r2, -3624(r30)
000328  1391e504  setlt.s r2, r11, r14
00032c  9315e504  setlt.s r11, r10, r14
000330  1b15b200  ori r10, r4, 11
000334  9313e504  setlt.s r7, r10, r14
000338  1b159200  ori r10, r4, 9
00033c  67003fe4  storeli.w r3, -3584(r30)
000340  9391e404  setlt.s r3, r9, r14
000344  674d2fe2  storeli.w r2, -3628(r30)
000348  1391ec04  setlt.s r2, r25, r14
00034c  e74f3fe2  storeli.w r3, -3588(r30)
000350  9b111201  ori r3, r4, 17
000354  670d2fe2  storeli.w r2, -3632(r30)
000358  1311ed04  setlt.s r2, r26, r14
00035c  9394e104  setlt.s r9, r3, r14
000360  9b11f200  ori r3, r4, 15
000364  139de104  setlt.s r26, r3, r14
000368  9311e504  setlt.s r3, r10, r14
00036c  1b15c207  ori r10, r4, 124
000370  67082fe2  storeli.w r2, -3712(r30)
000374  1b114206  ori r2, r4, 100
000378  9310e104  setlt.s r1, r2, r14
00037c  1b112206  ori r2, r4, 98
000380  9bb19100  slli r3, r3, 9
000384  67081fe0  storeli.w r1, -3968(r30)
000388  9b103206  ori r1, r4, 99
00038c  9390e004  setlt.s r1, r1, r14
000390  67001fe0  storeli.w r1, -4096(r30)
000394  9310e104  setlt.s r1, r2, r14
000398  1b110206  ori r2, r4, 96
00039c  67081fde  storeli.w r1, -4224(r30)
0003a0  9b101206  ori r1, r4, 97
0003a4  9390e004  setlt.s r1, r1, r14
0003a8  670c1fdc  storeli.w r1, -4416(r30)
0003ac  9310e104  setlt.s r1, r2, r14
0003b0  1b11e205  ori r2, r4, 94
0003b4  67001fde  storeli.w r1, -4352(r30)
0003b8  9b10f205  ori r1, r4, 95
0003bc  9390e004  setlt.s r1, r1, r14
0003c0  e74f1fe0  storeli.w r1, -3844(r30)
0003c4  9310e104  setlt.s r1, r2, r14
0003c8  1b11b205  ori r2, r4, 91
0003cc  67041fe0  storeli.w r1, -4032(r30)
0003d0  9b10d205  ori r1, r4, 93
0003d4  9390e004  setlt.s r1, r1, r14
0003d8  670c1fde  storeli.w r1, -4160(r30)
0003dc  9310e104  setlt.s r1, r2, r14
0003e0  1b119205  ori r2, r4, 89
0003e4  67041fde  storeli.w r1, -4288(r30)
0003e8  9b10a205  ori r1, r4, 90
0003ec  9390e004  setlt.s r1, r1, r14
0003f0  e74b1fdc  storeli.w r1, -4420(r30)
0003f4  9310e104  setlt.s r1, r2, r14
0003f8  1b117205  ori r2, r4, 87
0003fc  e70b1fdc  storeli.w r1, -4424(r30)
000400  9b108205  ori r1, r4, 88
000404  9390e004  setlt.s r1, r1, r14
000408  674b1fdc  storeli.w r1, -4428(r30)
00040c  9310e104  setlt.s r1, r2, r14
000410  1b115205  ori r2, r4, 85
000414  670b1fdc  storeli.w r1, -4432(r30)
000418  9b106205  ori r1, r4, 86
00041c  9390e004  setlt.s r1, r1, r14
000420  e74a1fdc  storeli.w r1, -4436(r30)
000424  9310e104  setlt.s r1, r2, r14
000428  1b113205  ori r2, r4, 83
00042c  e70a1fdc  storeli.w r1, -4440(r30)
000430  9b104205  ori r1, r4, 84
000434  9390e004  setlt.s r1, r1, r14
000438  670a1fdc  storeli.w r1, -4448(r30)
00043c  9310e104  setlt.s r1, r2, r14
000440  1b111205  ori r2, r4, 81
000444  e7491fdc  storeli.w r1, -4452(r30)
000448  9b102205  ori r1, r4, 82
00044c  9390e004  setlt.s r1, r1, r14
000450  67091fdc  storeli.w r1, -4464(r30)
000454  9310e104  setlt.s r1, r2, r14
000458  1b11f204  ori r2, r4, 79
00045c  e7481fdc  storeli.w r1, -4468(r30)
000460  9b100205  ori r1, r4, 80
000464  9390e004  setlt.s r1, r1, r14
000468  67481fdc  storeli.w r1, -4476(r30)
00046c  9310e104  setlt.s r1, r2, r14
000470  1b11d204  ori r2, r4, 77
000474  674a1fdc  storeli.w r1, -4444(r30)
000478  9b10e204  ori r1, r4, 78
00047c  9390e004  setlt.s r1, r1, r14
000480  e7091fdc  storeli.w r1, -4456(r30)
000484  9310e104  setlt.s r1, r2, r14
000488  1b11a204  ori r2, r4, 74
00048c  67491fdc  storeli.w r1, -4460(r30)
000490  9b10b204  ori r1, r4, 75
000494  9390e004  setlt.s r1, r1, r14
000498  67081fdc  storeli.w r1, -4480(r30)
00049c  9310e104  setlt.s r1, r2, r14
0004a0  1b118204  ori r2, r4, 72
0004a4  e7471fdc  storeli.w r1, -4484(r30)
0004a8  9b109204  ori r1, r4, 73
0004ac  9390e004  setlt.s r1, r1, r14
0004b0  67071fdc  storeli.w r1, -4496(r30)
0004b4  9310e104  setlt.s r1, r2, r14
0004b8  1b116204  ori r2, r4, 70
0004bc  e7461fdc  storeli.w r1, -4500(r30)
0004c0  9b107204  ori r1, r4, 71
0004c4  9390e004  setlt.s r1, r1, r14
0004c8  e7061fdc  storeli.w r1, -4504(r30)
0004cc  9310e104  setlt.s r1, r2, r14
0004d0  1b114204  ori r2, r4, 68
0004d4  67461fdc  storeli.w r1, -4508(r30)
0004d8  9b105204  ori r1, r4, 69
0004dc  9390e004  setlt.s r1, r1, r14
0004e0  67061fdc  storeli.w r1, -4512(r30)
0004e4  9310e104  setlt.s r1, r2, r14
0004e8  1b112204  ori r2, r4, 66
0004ec  e7051fdc  storeli.w r1, -4520(r30)
0004f0  9b103204  ori r1, r4, 67
0004f4  9390e004  setlt.s r1, r1, r14
0004f8  67051fdc  storeli.w r1, -4528(r30)
0004fc  9310e104  setlt.s r1, r2, r14
000500  1b110204  ori r2, r4, 64
000504  e7041fdc  storeli.w r1, -4536(r30)
000508  9b101204  ori r1, r4, 65
00050c  9390e004  setlt.s r1, r1, r14
000510  e7431fdc  storeli.w r1, -4548(r30)
000514  9310e104  setlt.s r1, r2, r14
000518  1b11e203  ori r2, r4, 62
00051c  67041fdc  storeli.w r1, -4544(r30)
000520  9b10f203  ori r1, r4, 63
000524  9390e004  setlt.s r1, r1, r14
000528  e7451fdc  storeli.w r1, -4516(r30)
00052c  9310e104  setlt.s r1, r2, r14
000530  1b11b203  ori r2, r4, 59
000534  67451fdc  storeli.w r1, -4524(r30)
000538  9b10d203  ori r1, r4, 61
00053c  9390e004  setlt.s r1, r1, r14
000540  e7441fdc  storeli.w r1, -4532(r30)
000544  9310e104  setlt.s r1, r2, r14
000548  1b119203  ori r2, r4, 57
00054c  67441fdc  storeli.w r1, -4540(r30)
000550  9b10a203  ori r1, r4, 58
000554  9390e004  setlt.s r1, r1, r14
000558  e7031fdc  storeli.w r1, -4552(r30)
00055c  9310e104  setlt.s r1, r2, r14
000560  1b117203  ori r2, r4, 55
000564  67031fdc  storeli.w r1, -4560(r30)
000568  9b108203  ori r1, r4, 56
00056c  9390e004  setlt.s r1, r1, r14
000570  e7421fdc  storeli.w r1, -4564(r30)
000574  9310e104  setlt.s r1, r2, r14
000578  1b115203  ori r2, r4, 53
00057c  e7021fdc  storeli.w r1, -4568(r30)
000580  9b106203  ori r1, r4, 54
000584  9390e004  setlt.s r1, r1, r14
000588  67421fdc  storeli.w r1, -4572(r30)
00058c  9310e104  setlt.s r1, r2, r14
000590  1b113203  ori r2, r4, 51
000594  67021fdc  storeli.w r1, -4576(r30)
000598  9b104203  ori r1, r4, 52
00059c  9390e004  setlt.s r1, r1, r14
0005a0  e7411fdc  storeli.w r1, -4580(r30)
0005a4  9310e104  setlt.s r1, r2, r14
0005a8  1b111203  ori r2, r4, 49
0005ac  e7401fdc  storeli.w r1, -4596(r30)
0005b0  9b102203  ori r1, r4, 50
0005b4  9390e004  setlt.s r1, r1, r14
0005b8  67401fdc  storeli.w r1, -4604(r30)
0005bc  9310e104  setlt.s r1, r2, r14
0005c0  1b11f202  ori r2, r4, 47
0005c4  e74f1fda  storeli.w r1, -4612(r30)
0005c8  9b100203  ori r1, r4, 48
0005cc  9390e004  setlt.s r1, r1, r14
0005d0  e70f1fda  storeli.w r1, -4616(r30)
0005d4  9310e104  setlt.s r1, r2, r14
0005d8  1b11d202  ori r2, r4, 45
0005dc  67011fdc  storeli.w r1, -4592(r30)
0005e0  9b10e202  ori r1, r4, 46
0005e4  9390e004  setlt.s r1, r1, r14
0005e8  e7001fdc  storeli.w r1, -4600(r30)
0005ec  9310e104  setlt.s r1, r2, r14
0005f0  1b11a202  ori r2, r4, 42
0005f4  67001fdc  storeli.w r1, -4608(r30)
0005f8  9b10b202  ori r1, r4, 43
0005fc  9390e004  setlt.s r1, r1, r14
000600  674f1fda  storeli.w r1, -4620(r30)
000604  9310e104  setlt.s r1, r2, r14
000608  1b118202  ori r2, r4, 40
00060c  670f1fda  storeli.w r1, -4624(r30)
000610  9b109202  ori r1, r4, 41
000614  9390e004  setlt.s r1, r1, r14
000618  e70e1fda  storeli.w r1, -4632(r30)
00061c  9310e104  setlt.s r1, r2, r14
000620  1b116202  ori r2, r4, 38
000624  674e1fda  storeli.w r1, -4636(r30)
000628  9b107202  ori r1, r4, 39
00062c  9390e004  setlt.s r1, r1, r14
000630  670e1fda  storeli.w r1, -4640(r30)
000634  9310e104  setlt.s r1, r2, r14
000638  1b114202  ori r2, r4, 36
00063c  e74d1fda  storeli.w r1, -4644(r30)
000640  9b105202  ori r1, r4, 37
000644  9390e004  setlt.s r1, r1, r14
000648  e70d1fda  storeli.w r1, -4648(r30)
00064c  9310e104  setlt.s r1, r2, r14
000650  1b112202  ori r2, r4, 34
000654  131ee104  setlt.s r28, r2, r14
000658  1b110202  ori r2, r4, 32
00065c  931ce104  setlt.s r25, r2, r14
000660  1b11e201  ori r2, r4, 30
000664  670d1fda  storeli.w r1, -4656(r30)
000668  9b103202  ori r1, r4, 35
00066c  9390e004  setlt.s r1, r1, r14
000670  e70c1fda  storeli.w r1, -4664(r30)
000674  9b101202  ori r1, r4, 33
000678  139ce004  setlt.s r24, r1, r14
00067c  9b10f201  ori r1, r4, 31
000680  9390e004  setlt.s r1, r1, r14
000684  674d1fda  storeli.w r1, -4652(r30)
000688  9310e104  setlt.s r1, r2, r14
00068c  1b11b201  ori r2, r4, 27
000690  931de104  setlt.s r27, r2, r14
000694  1b119201  ori r2, r4, 25
000698  131be104  setlt.s r22, r2, r14
00069c  1b117201  ori r2, r4, 23
0006a0  1318e104  setlt.s r16, r2, r14
0006a4  1b115201  ori r2, r4, 21
0006a8  e74c1fda  storeli.w r1, -4660(r30)
0006ac  9b10d201  ori r1, r4, 29
0006b0  9319e104  setlt.s r19, r2, r14
0006b4  1b113201  ori r2, r4, 19
0006b8  9390e004  setlt.s r1, r1, r14
0006bc  9317e104  setlt.s r15, r2, r14
0006c0  1b110201  ori r2, r4, 16
0006c4  1314e104  setlt.s r8, r2, r14
0006c8  1b11e200  ori r2, r4, 14
0006cc  9316e104  setlt.s r13, r2, r14
0006d0  1311e904  setlt.s r2, r18, r14
0006d4  1b19c206  ori r18, r4, 108
0006d8  674c1fda  storeli.w r1, -4668(r30)
0006dc  9b10a201  ori r1, r4, 26
0006e0  939be004  setlt.s r23, r1, r14
0006e4  9b108201  ori r1, r4, 24
0006e8  939ae004  setlt.s r21, r1, r14
0006ec  9b106201  ori r1, r4, 22
0006f0  1b318100  slli r2, r2, 8
0006f4  9398e004  setlt.s r17, r1, r14
0006f8  9b104201  ori r1, r4, 20
0006fc  139ae004  setlt.s r20, r1, r14
000700  9b102201  ori r1, r4, 18
000704  1396e004  setlt.s r12, r1, r14
000708  9310e504  setlt.s r1, r10, r14
00070c  1b15c205  ori r10, r4, 92
000710  e7071fdc  storeli.w r1, -4488(r30)
000714  9310e904  setlt.s r1, r18, r14
000718  1b19c204  ori r18, r4, 76
00071c  67471fdc  storeli.w r1, -4492(r30)
000720  9310e504  setlt.s r1, r10, r14
000724  1b15c203  ori r10, r4, 60
000728  67431fdc  storeli.w r1, -4556(r30)
00072c  9310e904  setlt.s r1, r18, r14
000730  1b19c202  ori r18, r4, 44
000734  e7011fdc  storeli.w r1, -4584(r30)
000738  9310e504  setlt.s r1, r10, r14
00073c  1315e904  setlt.s r10, r18, r14
000740  1b19c201  ori r18, r4, 28
000744  1319e904  setlt.s r18, r18, r14
000748  e74e1fda  storeli.w r1, -4628(r30)
00074c  9b10c200  ori r1, r4, 12
000750  9390e004  setlt.s r1, r1, r14
000754  0b174718  sub.s r14, r14, r4
000758  63422fdc  loadli.w r4,  -4588(r30)
00075c  0b170748  max.s r14, r14, zero
000760  17112200  or r2, r4, r2
000764  1bb21400  slli r4, r9, 1
000768  0b175740  min.s r14, r14, r5
00076c  9b322600  slli r5, r12, 2
000770  17113100  or r2, r2, r3
000774  9b31a300  slli r3, r6, 10
000778  63030fdf  loadli.w r6,  -4224(r30)
00077c  17113100  or r2, r2, r3
000780  97118200  or r3, r4, r8
000784  1bb2b300  slli r4, r7, 11
000788  9bb0c000  slli r1, r1, 12
00078c  e303dfe3  loadli.w r7,  -3608(r30)
000790  6304efe3  loadli.w r8,  -3600(r30)
000794  1b332300  slli r6, r6, 2
000798  17114100  or r2, r2, r4
00079c  97915100  or r3, r3, r5
0007a0  1bb23700  slli r4, r15, 3
0007a4  e3022fdd  loadli.w r5,  -4464(r30)
0007a8  9bb32300  slli r7, r7, 2
0007ac  1b344400  slli r8, r8, 4
0007b0  97101100  or r1, r2, r1
0007b4  17914100  or r2, r3, r4
0007b8  9bb1d500  slli r3, r11, 13
0007bc  1b324a00  slli r4, r20, 4
0007c0  9bb22200  slli r5, r5, 2
0007c4  97903000  or r1, r1, r3
0007c8  9bb1e600  slli r3, r13, 14
0007cc  17114100  or r2, r2, r4
0007d0  1bb25900  slli r4, r19, 5
0007d4  9f090ff0  addli r19, r30, -2048
0007d8  97903000  or r1, r1, r3
0007dc  9b31fd00  slli r3, r26, 15
0007e0  17114100  or r2, r2, r4
0007e4  1bb26800  slli r4, r17, 6
0007e8  97903000  or r1, r1, r3
0007ec  17114100  or r2, r2, r4
0007f0  9b317800  slli r3, r16, 7
0007f4  1b322e00  slli r4, r28, 2
0007f8  7e8000e0  vmmov mr0, r1
0007fc  9f005fda  addli r1, r30, -4824
000800  7e0000a0  vmmov zero, mr0
000804  67800000  storeli.w zero, 0(r1)
000808  97103100  or r1, r2, r3
00080c  1bb18a00  slli r2, r21, 8
000810  9b311c00  slli r3, r24, 1
000814  17200000  xor zero, zero, zero
000818  97902000  or r1, r1, r2
00081c  17919101  or r2, r3, r25
000820  9b319b00  slli r3, r22, 9
000824  17114100  or r2, r2, r4
000828  63029fdb  loadli.w r4,  -4664(r30)
00082c  97903000  or r1, r1, r3
000830  9bb1ab00  slli r3, r23, 10
000834  97903000  or r1, r1, r3
000838  9bb1bd00  slli r3, r27, 11
00083c  1b323200  slli r4, r4, 3
000840  97903000  or r1, r1, r3
000844  9b31c900  slli r3, r18, 12
000848  17114100  or r2, r2, r4
00084c  6302afdb  loadli.w r4,  -4656(r30)
000850  97903000  or r1, r1, r3
000854  e3418fdb  loadli.w r3,  -4668(r30)
000858  1b324200  slli r4, r4, 4
00085c  9bb1d100  slli r3, r3, 13
000860  17114100  or r2, r2, r4
000864  6302bfdb  loadli.w r4,  -4648(r30)
000868  97903000  or r1, r1, r3
00086c  e3419fdb  loadli.w r3,  -4660(r30)
000870  1b325200  slli r4, r4, 5
000874  9bb1e100  slli r3, r3, 14
000878  17114100  or r2, r2, r4
00087c  6342bfdb  loadli.w r4,  -4644(r30)
000880  97903000  or r1, r1, r3
000884  e341afdb  loadli.w r3,  -4652(r30)
000888  1b326200  slli r4, r4, 6
00088c  9bb1f100  slli r3, r3, 15
000890  17114100  or r2, r2, r4
000894  6302cfdb  loadli.w r4,  -4640(r30)
000898  97903000  or r1, r1, r3
00089c  e301dfdb  loadli.w r3,  -4632(r30)
0008a0  1b327200  slli r4, r4, 7
0008a4  7e8000e0  vmmov mr0, r1
0008a8  9f404fda  addli r1, r30, -4828
0008ac  9bb19100  slli r3, r3, 9
0008b0  7e0000a0  vmmov zero, mr0
0008b4  17114100  or r2, r2, r4
0008b8  6342cfdb  loadli.w r4,  -4636(r30)
0008bc  67800000  storeli.w zero, 0(r1)
0008c0  17200000  xor zero, zero, zero
0008c4  1b328200  slli r4, r4, 8
0008c8  17114100  or r2, r2, r4
0008cc  63420fdc  loadli.w r4,  -4604(r30)
0008d0  97103100  or r1, r2, r3
0008d4  6301efdb  loadli.w r2,  -4624(r30)
0008d8  e341ffdb  loadli.w r3,  -4612(r30)
0008dc  1b322200  slli r4, r4, 2
0008e0  1b31a100  slli r2, r2, 10
0008e4  9bb11100  slli r3, r3, 1
0008e8  97902000  or r1, r1, r2
0008ec  6301ffdb  loadli.w r2,  -4616(r30)
0008f0  17912100  or r2, r3, r2
0008f4  e341efdb  loadli.w r3,  -4620(r30)
0008f8  17114100  or r2, r2, r4
0008fc  63421fdc  loadli.w r4,  -4596(r30)
000900  9bb1b100  slli r3, r3, 11
000904  97903000  or r1, r1, r3
000908  9b31c500  slli r3, r10, 12
00090c  1b323200  slli r4, r4, 3
000910  eb548f00  load.d r[10:11], 8(r30)
000914  97903000  or r1, r1, r3
000918  e3010fdc  loadli.w r3,  -4608(r30)
00091c  17114100  or r2, r2, r4
000920  63423fdc  loadli.w r4,  -4580(r30)
000924  9bb1d100  slli r3, r3, 13
000928  1b324200  slli r4, r4, 4
00092c  97903000  or r1, r1, r3
000930  e3011fdc  loadli.w r3,  -4600(r30)
000934  17114100  or r2, r2, r4
000938  63024fdc  loadli.w r4,  -4576(r30)
00093c  9bb1e100  slli r3, r3, 14
000940  1b325200  slli r4, r4, 5
000944  97903000  or r1, r1, r3
000948  e3012fdc  loadli.w r3,  -4592(r30)
00094c  17114100  or r2, r2, r4
000950  63424fdc  loadli.w r4,  -4572(r30)
000954  9bb1f100  slli r3, r3, 15
000958  1b326200  slli r4, r4, 6
00095c  97903000  or r1, r1, r3
000960  e3015fdc  loadli.w r3,  -4568(r30)
000964  17114100  or r2, r2, r4
000968  63029fdc  loadli.w r4,  -4536(r30)
00096c  7e8000e0  vmmov mr0, r1
000970  9f004fda  addli r1, r30, -4832
000974  9bb17100  slli r3, r3, 7
000978  7e0000a0  vmmov zero, mr0
00097c  1b322200  slli r4, r4, 2
000980  67800000  storeli.w zero, 0(r1)
000984  17200000  xor zero, zero, zero
000988  97103100  or r1, r2, r3
00098c  63415fdc  loadli.w r2,  -4564(r30)
000990  e3417fdc  loadli.w r3,  -4548(r30)
000994  1b318100  slli r2, r2, 8
000998  9bb11100  slli r3, r3, 1
00099c  97902000  or r1, r1, r2
0009a0  63018fdc  loadli.w r2,  -4544(r30)
0009a4  17912100  or r2, r3, r2
0009a8  e3016fdc  loadli.w r3,  -4560(r30)
0009ac  17114100  or r2, r2, r4
0009b0  6302afdc  loadli.w r4,  -4528(r30)
0009b4  9bb19100  slli r3, r3, 9
0009b8  97903000  or r1, r1, r3
0009bc  e3017fdc  loadli.w r3,  -4552(r30)
0009c0  1b323200  slli r4, r4, 3
0009c4  17114100  or r2, r2, r4
0009c8  6302bfdc  loadli.w r4,  -4520(r30)
0009cc  9bb1a100  slli r3, r3, 10
0009d0  97903000  or r1, r1, r3
0009d4  e3418fdc  loadli.w r3,  -4540(r30)
0009d8  1b324200  slli r4, r4, 4
0009dc  17114100  or r2, r2, r4
0009e0  6302cfdc  loadli.w r4,  -4512(r30)
0009e4  9bb1b100  slli r3, r3, 11
0009e8  97903000  or r1, r1, r3
0009ec  e341dfdb  loadli.w r3,  -4628(r30)
0009f0  1b325200  slli r4, r4, 5
0009f4  17114100  or r2, r2, r4
0009f8  6342cfdc  loadli.w r4,  -4508(r30)
0009fc  9bb1c100  slli r3, r3, 12
000a00  97903000  or r1, r1, r3
000a04  e3419fdc  loadli.w r3,  -4532(r30)
000a08  1b326200  slli r4, r4, 6
000a0c  17114100  or r2, r2, r4
000a10  6302dfdc  loadli.w r4,  -4504(r30)
000a14  9bb1d100  slli r3, r3, 13
000a18  97903000  or r1, r1, r3
000a1c  e341afdc  loadli.w r3,  -4524(r30)
000a20  1b327200  slli r4, r4, 7
000a24  17114100  or r2, r2, r4
000a28  6342dfdc  loadli.w r4,  -4500(r30)
000a2c  9bb1e100  slli r3, r3, 14
000a30  97903000  or r1, r1, r3
000a34  e341bfdc  loadli.w r3,  -4516(r30)
000a38  1b328200  slli r4, r4, 8
000a3c  17114100  or r2, r2, r4
000a40  63421fdd  loadli.w r4,  -4468(r30)
000a44  9bb1f100  slli r3, r3, 15
000a48  97903000  or r1, r1, r3
000a4c  e301efdc  loadli.w r3,  -4496(r30)
000a50  1b321200  slli r4, r4, 1
000a54  7e8000e0  vmmov mr0, r1
000a58  9f400fda  addli r1, r30, -4860
000a5c  9bb19100  slli r3, r3, 9
000a60  17113100  or r2, r2, r3
000a64  e3410fdd  loadli.w r3,  -4476(r30)
000a68  97113200  or r3, r4, r3
000a6c  6342ffdc  loadli.w r4,  -4484(r30)
000a70  97915100  or r3, r3, r5
000a74  e3423fdd  loadli.w r5,  -4452(r30)
000a78  1b32a200  slli r4, r4, 10
000a7c  17114100  or r2, r2, r4
000a80  63020fdd  loadli.w r4,  -4480(r30)
000a84  9bb23200  slli r5, r5, 3
000a88  97915100  or r3, r3, r5
000a8c  e3024fdd  loadli.w r5,  -4448(r30)
000a90  1b32b200  slli r4, r4, 11
000a94  17114100  or r2, r2, r4
000a98  63023fdc  loadli.w r4,  -4584(r30)
000a9c  9bb24200  slli r5, r5, 4
000aa0  97915100  or r3, r3, r5
000aa4  e3025fdd  loadli.w r5,  -4440(r30)
000aa8  1b32c200  slli r4, r4, 12
000aac  17114100  or r2, r2, r4
000ab0  63422fdd  loadli.w r4,  -4460(r30)
000ab4  9bb25200  slli r5, r5, 5
000ab8  97915100  or r3, r3, r5
000abc  e3425fdd  loadli.w r5,  -4436(r30)
000ac0  1b32d200  slli r4, r4, 13
000ac4  17114100  or r2, r2, r4
000ac8  63023fdd  loadli.w r4,  -4456(r30)
000acc  9bb26200  slli r5, r5, 6
000ad0  1b32e200  slli r4, r4, 14
000ad4  17114100  or r2, r2, r4
000ad8  17925100  or r4, r3, r5
000adc  e3414fdd  loadli.w r3,  -4444(r30)
000ae0  e3026fdd  loadli.w r5,  -4432(r30)
000ae4  9bb1f100  slli r3, r3, 15
000ae8  9bb27200  slli r5, r5, 7
000aec  97113100  or r3, r2, r3
000af0  17115200  or r2, r4, r5
000af4  63426fdd  loadli.w r4,  -4428(r30)
000af8  e3028fdd  loadli.w r5,  -4416(r30)
000afc  1b328200  slli r4, r4, 8
000b00  9bb21200  slli r5, r5, 1
000b04  17114100  or r2, r2, r4
000b08  63020fde  loadli.w r4,  -4352(r30)
000b0c  17924200  or r4, r5, r4
000b10  e3027fdd  loadli.w r5,  -4424(r30)
000b14  17126200  or r4, r4, r6
000b18  63030fe0  loadli.w r6,  -4096(r30)
000b1c  9bb29200  slli r5, r5, 9
000b20  17115100  or r2, r2, r5
000b24  e3427fdd  loadli.w r5,  -4420(r30)
000b28  1b333300  slli r6, r6, 3
000b2c  17126200  or r4, r4, r6
000b30  63030fe1  loadli.w r6,  -3968(r30)
000b34  9bb2a200  slli r5, r5, 10
000b38  17115100  or r2, r2, r5
000b3c  e3028fde  loadli.w r5,  -4288(r30)
000b40  1b334300  slli r6, r6, 4
000b44  17126200  or r4, r4, r6
000b48  63030fe2  loadli.w r6,  -3840(r30)
000b4c  9bb2b200  slli r5, r5, 11
000b50  17115100  or r2, r2, r5
000b54  e3426fdc  loadli.w r5,  -4556(r30)
000b58  1b335300  slli r6, r6, 5
000b5c  17126200  or r4, r4, r6
000b60  63038fe2  loadli.w r6,  -3776(r30)
000b64  9bb2c200  slli r5, r5, 12
000b68  17115100  or r2, r2, r5
000b6c  e3028fdf  loadli.w r5,  -4160(r30)
000b70  1b336300  slli r6, r6, 6
000b74  17126200  or r4, r4, r6
000b78  63030fe3  loadli.w r6,  -3712(r30)
000b7c  9bb2d200  slli r5, r5, 13
000b80  17115100  or r2, r2, r5
000b84  e3028fe0  loadli.w r5,  -4032(r30)
000b88  1b337300  slli r6, r6, 7
000b8c  17126200  or r4, r4, r6
000b90  6303afe3  loadli.w r6,  -3632(r30)
000b94  9bb2e200  slli r5, r5, 14
000b98  17115100  or r2, r2, r5
000b9c  e342ffe1  loadli.w r5,  -3844(r30)
000ba0  1b338300  slli r6, r6, 8
000ba4  17126200  or r4, r4, r6
000ba8  6343bfe3  loadli.w r6,  -3620(r30)
000bac  9bb2f200  slli r5, r5, 15
000bb0  17115100  or r2, r2, r5
000bb4  e342afe3  loadli.w r5,  -3628(r30)
000bb8  1b331300  slli r6, r6, 1
000bbc  9bb29200  slli r5, r5, 9
000bc0  17125200  or r4, r4, r5
000bc4  e302cfe3  loadli.w r5,  -3616(r30)
000bc8  97125300  or r5, r6, r5
000bcc  6303bfe3  loadli.w r6,  -3624(r30)
000bd0  97927200  or r5, r5, r7
000bd4  e343dfe3  loadli.w r7,  -3604(r30)
000bd8  1b33a300  slli r6, r6, 10
000bdc  9bb33300  slli r7, r7, 3
000be0  17126200  or r4, r4, r6
000be4  6343cfe3  loadli.w r6,  -3612(r30)
000be8  97927200  or r5, r5, r7
000bec  1b33b300  slli r6, r6, 11
000bf0  97928200  or r5, r5, r8
000bf4  1f046fe5  addli r8, r30, -3408
000bf8  17126200  or r4, r4, r6
000bfc  6b530f00  load.d r[7:8], 0(r30)
000c00  eb550400  load.d r[12:13], 0(r8)
000c04  1f043fda  addli r8, r30, -4840
000c08  0b23b310  add.ul r[7:8], r[7:8], r[12:13]
000c0c  73306400  store.d r[7:8], 0(r8)
000c10  0ba3b410  add.ul r[7:8], r[10:11], r[12:13]
000c14  1f042fda  addli r8, r30, -4848
000c18  00350002  core_id r10
000c1c  9f150020  addli r11, zero, 4097
000c20  9b341700  slli r9, r14, 1
000c24  73306400  store.d r[7:8], 0(r8)
000c28  6343efe3  loadli.w r6,  -3596(r30)
000c2c  e343efdc  loadli.w r7,  -4492(r30)
000c30  63447fe5  loadli.w r8,  -3396(r30)
000c34  e7009fda  storeli.w r9, -4856(r30)
000c38  1b335300  slli r6, r6, 5
000c3c  9bb3c300  slli r7, r7, 12
000c40  1b34f400  slli r8, r8, 15
000c44  97926200  or r5, r5, r6
000c48  63037fda  loadli.w r6,  -4808(r30)
000c4c  17127200  or r4, r4, r7
000c50  e303ffe3  loadli.w r7,  -3592(r30)
000c54  1f032308  addli r6, r6, 1040
000c58  9bb3d300  slli r7, r7, 13
000c5c  e7406fda  storeli.w r6, -4852(r30)
000c60  6343ffe3  loadli.w r6,  -3588(r30)
000c64  17127200  or r4, r4, r7
000c68  e3038fe4  loadli.w r7,  -3520(r30)
000c6c  1b336300  slli r6, r6, 6
000c70  9bb3e300  slli r7, r7, 14
000c74  97926200  or r5, r5, r6
000c78  63030fe4  loadli.w r6,  -3584(r30)
000c7c  17127200  or r4, r4, r7
000c80  e3433fe5  loadli.w r7,  -3428(r30)
000c84  1b337300  slli r6, r6, 7
000c88  9bb3f300  slli r7, r7, 15
000c8c  97926200  or r5, r5, r6
000c90  63033fe5  loadli.w r6,  -3432(r30)
000c94  17127200  or r4, r4, r7
000c98  9f038000  addli r7, zero, 64
000c9c  1b338300  slli r6, r6, 8
000ca0  97926200  or r5, r5, r6
000ca4  63034fe5  loadli.w r6,  -3424(r30)
000ca8  1b339300  slli r6, r6, 9
000cac  97926200  or r5, r5, r6
000cb0  63434fe5  loadli.w r6,  -3420(r30)
000cb4  1b33a300  slli r6, r6, 10
000cb8  97926200  or r5, r5, r6
000cbc  63035fe5  loadli.w r6,  -3416(r30)
000cc0  1b33b300  slli r6, r6, 11
000cc4  97926200  or r5, r5, r6
000cc8  6303ffdc  loadli.w r6,  -4488(r30)
000ccc  1b33c300  slli r6, r6, 12
000cd0  97926200  or r5, r5, r6
000cd4  63435fe5  loadli.w r6,  -3412(r30)
000cd8  1b33d300  slli r6, r6, 13
000cdc  97926200  or r5, r5, r6
000ce0  63037fe5  loadli.w r6,  -3400(r30)
000ce4  1b33e300  slli r6, r6, 14
000ce8  97926200  or r5, r5, r6
000cec  0b137538  mod.s r6, r10, r7
000cf0  abf3ffff  lui r7, 1048575
000cf4  97928200  or r5, r5, r8
000cf8  63048fe5  loadli.w r8,  -3392(r30)
000cfc  9b9303f0  ori r7, r7, 3840
000d00  97037400  and r7, r8, r7
000d04  1b347300  slli r8, r6, 7
000d08  2b030000  lui r6, 0
000d0c  1f030300  addli r6, r6, 0
000d10  e7098fe4  storeli.w r8, -3432(r30)
000d14  0b936310  add.s r6, r7, r6
000d18  9b03f503  andi r7, r10, 63
000d1c  1f050002  addli r10, zero, 256
000d20  7e0000a0  vmmov zero, mr0
000d24  7e8001e0  vmmov mr0, r3
000d28  e3011fdd  loadli.w r3,  -4472(r30)
000d2c  67800000  storeli.w zero, 0(r1)
000d30  17200000  xor zero, zero, zero
000d34  9f000fda  addli r1, r30, -4864
000d38  670f6fd8  storeli.w r6, -4880(r30)
000d3c  1f032308  addli r6, r6, 1040
000d40  7e0000a0  vmmov zero, mr0
000d44  7e0001e0  vmmov mr0, r2
000d48  67487fdc  storeli.w r7, -4476(r30)
000d4c  9f030fee  addli r7, r30, -2304
000d50  67800000  storeli.w zero, 0(r1)
000d54  17200000  xor zero, zero, zero
000d58  9f40ffd9  addli r1, r30, -4868
000d5c  e74e6fd8  storeli.w r6, -4884(r30)
000d60  2b0380ff  lui r6, 1046528
000d64  7e0000a0  vmmov zero, mr0
000d68  7e0002e0  vmmov mr0, r4
000d6c  67800000  storeli.w zero, 0(r1)
000d70  17200000  xor zero, zero, zero
000d74  9f00ffd9  addli r1, r30, -4872
000d78  ea10b322  vor.f.mz vr1{mr1}, r6, vr11
000d7c  2bf30000  lui r6, 15
000d80  7e0000a0  vmmov zero, mr0
000d84  7e8002e0  vmmov mr0, r5
000d88  67800000  storeli.w zero, 0(r1)
000d8c  17200000  xor zero, zero, zero
000d90  9f40efd9  addli r1, r30, -4876
000d94  1b13f3ff  ori r6, r6, 4095
000d98  7e0000a0  vmmov zero, mr0
000d9c  67800000  storeli.w zero, 0(r1)
000da0  9f000fe2  addli r1, r30, -3840
000da4  17200000  xor zero, zero, zero
000da8  e7486fdc  storeli.w r6, -4468(r30)
000dac  2bf3ff7f  lui r6, 524287
000db0  1b13f3ff  ori r6, r6, 4095
000db4  e74f6fe0  storeli.w r6, -3844(r30)
000db8  00a00000  mfence { lm }
000dbc  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
000dc0  9f000fe3  addli r1, r30, -3712
000dc4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000dc8  9f008fe2  addli r1, r30, -3776
000dcc  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000dd0  db810000  j 1036
000dd4  8b922210  add.s r5, r5, r2
000dd8  bfff42fe  blt.s r5, r4, -4
000ddc  9f0e8fd9  addli sp, r30, -4928
000de0  9f8e8e26  addli sp, sp, 4928
000de4  00a00300  mfence { lm, sm, gm }
000de8  00100000  exit
000dec  6341efdc  loadli.w r2,  -4492(r30)
000df0  731a3f89  store.h r19, -1900(r30)
000df4  9f090ff0  addli r19, r30, -2048
000df8  6342ffdc  loadli.w r4,  -4484(r30)
000dfc  731a9f8e  store.h r9, -1804(r30)
000e00  e3041fda  loadli.w r9,  -4856(r30)
000e04  7313bf80  store.h r11, -2042(r30)
000e08  7319af80  store.h r10, -2030(r30)
000e0c  7315ff80  store.h r15, -2038(r30)
000e10  7316bf81  store.h r27, -2036(r30)
000e14  73188f81  store.h r24, -2032(r30)
000e18  731a4f81  store.h r20, -2028(r30)
000e1c  731b1f81  store.h r17, -2026(r30)
000e20  731c5f81  store.h r21, -2024(r30)
000e24  7314cf89  store.h r28, -1912(r30)
000e28  731bcf88  store.h r12, -1898(r30)
000e2c  731c6f89  store.h r22, -1896(r30)
000e30  73112f8f  store.h r18, -1822(r30)
000e34  73180f8f  store.h r16, -1808(r30)
000e38  7319df8e  store.h r13, -1806(r30)
000e3c  731b5f8e  store.h r5, -1802(r30)
000e40  731cef8e  store.h r14, -1800(r30)
000e44  731d3f8e  store.h r3, -1798(r30)
000e48  731e6f8e  store.h r6, -1796(r30)
000e4c  731f1f8e  store.h r1, -1794(r30)
000e50  1f050002  addli r10, zero, 256
000e54  9f150020  addli r11, zero, 4097
000e58  73102f80  store.h r2, -2048(r30)
000e5c  63417fe5  loadli.w r2,  -3396(r30)
000e60  73122f80  store.h r2, -2044(r30)
000e64  63419fdc  loadli.w r2,  -4532(r30)
000e68  73142f80  store.h r2, -2040(r30)
000e6c  6301cfda  loadli.w r2,  -4768(r30)
000e70  73172f80  store.h r2, -2034(r30)
000e74  6301cfdc  loadli.w r2,  -4512(r30)
000e78  731d2f80  store.h r2, -2022(r30)
000e7c  6301bfdc  loadli.w r2,  -4520(r30)
000e80  731e2f80  store.h r2, -2020(r30)
000e84  6341afdc  loadli.w r2,  -4524(r30)
000e88  731f2f80  store.h r2, -2018(r30)
000e8c  63417fdc  loadli.w r2,  -4548(r30)
000e90  73102f82  store.h r2, -2016(r30)
000e94  63017fe5  loadli.w r2,  -3400(r30)
000e98  73112f82  store.h r2, -2014(r30)
000e9c  63016fe5  loadli.w r2,  -3408(r30)
000ea0  73122f82  store.h r2, -2012(r30)
000ea4  63415fe5  loadli.w r2,  -3412(r30)
000ea8  73132f82  store.h r2, -2010(r30)
000eac  63015fe5  loadli.w r2,  -3416(r30)
000eb0  73142f82  store.h r2, -2008(r30)
000eb4  63414fe5  loadli.w r2,  -3420(r30)
000eb8  73152f82  store.h r2, -2006(r30)
000ebc  63016fdc  loadli.w r2,  -4560(r30)
000ec0  73162f82  store.h r2, -2004(r30)
000ec4  63014fe5  loadli.w r2,  -3424(r30)
000ec8  73172f82  store.h r2, -2002(r30)
000ecc  63413fe5  loadli.w r2,  -3428(r30)
000ed0  73182f82  store.h r2, -2000(r30)
000ed4  63015fdc  loadli.w r2,  -4568(r30)
000ed8  73192f82  store.h r2, -1998(r30)
000edc  63018fe4  loadli.w r2,  -3520(r30)
000ee0  731a2f82  store.h r2, -1996(r30)
000ee4  63413fdc  loadli.w r2,  -4580(r30)
000ee8  731b2f82  store.h r2, -1994(r30)
000eec  63012fdc  loadli.w r2,  -4592(r30)
000ef0  731c2f82  store.h r2, -1992(r30)
000ef4  63011fdc  loadli.w r2,  -4600(r30)
000ef8  731d2f82  store.h r2, -1990(r30)
000efc  63410fdc  loadli.w r2,  -4604(r30)
000f00  731e2f82  store.h r2, -1988(r30)
000f04  63010fe4  loadli.w r2,  -3584(r30)
000f08  731f2f82  store.h r2, -1986(r30)
000f0c  6341ffe3  loadli.w r2,  -3588(r30)
000f10  73102f84  store.h r2, -1984(r30)
000f14  6301ffe3  loadli.w r2,  -3592(r30)
000f18  73112f84  store.h r2, -1982(r30)
000f1c  6341efe3  loadli.w r2,  -3596(r30)
000f20  73122f84  store.h r2, -1980(r30)
000f24  6301efe3  loadli.w r2,  -3600(r30)
000f28  73132f84  store.h r2, -1978(r30)
000f2c  6341dfe3  loadli.w r2,  -3604(r30)
000f30  73142f84  store.h r2, -1976(r30)
000f34  6301dfe3  loadli.w r2,  -3608(r30)
000f38  73152f84  store.h r2, -1974(r30)
000f3c  6341cfe3  loadli.w r2,  -3612(r30)
000f40  73162f84  store.h r2, -1972(r30)
000f44  63018fe5  loadli.w r2,  -3392(r30)
000f48  73172f84  store.h r2, -1970(r30)
000f4c  6301cfe3  loadli.w r2,  -3616(r30)
000f50  73182f84  store.h r2, -1968(r30)
000f54  6341bfe3  loadli.w r2,  -3620(r30)
000f58  73192f84  store.h r2, -1966(r30)
000f5c  6301bfe3  loadli.w r2,  -3624(r30)
000f60  731a2f84  store.h r2, -1964(r30)
000f64  6341afdb  loadli.w r2,  -4652(r30)
000f68  731b2f84  store.h r2, -1962(r30)
000f6c  6341afe3  loadli.w r2,  -3628(r30)
000f70  731c2f84  store.h r2, -1960(r30)
000f74  6301afdb  loadli.w r2,  -4656(r30)
000f78  731d2f84  store.h r2, -1958(r30)
000f7c  6301afe3  loadli.w r2,  -3632(r30)
000f80  731e2f84  store.h r2, -1956(r30)
000f84  63010fe1  loadli.w r2,  -3968(r30)
000f88  731f2f84  store.h r2, -1954(r30)
000f8c  63018fe0  loadli.w r2,  -4032(r30)
000f90  73102f86  store.h r2, -1952(r30)
000f94  63418fdb  loadli.w r2,  -4668(r30)
000f98  73112f86  store.h r2, -1950(r30)
000f9c  63010fe0  loadli.w r2,  -4096(r30)
000fa0  73122f86  store.h r2, -1948(r30)
000fa4  63016fdb  loadli.w r2,  -4688(r30)
000fa8  73132f86  store.h r2, -1946(r30)
000fac  63018fdf  loadli.w r2,  -4160(r30)
000fb0  73142f86  store.h r2, -1944(r30)
000fb4  63414fdb  loadli.w r2,  -4700(r30)
000fb8  73152f86  store.h r2, -1942(r30)
000fbc  63010fdf  loadli.w r2,  -4224(r30)
000fc0  73162f86  store.h r2, -1940(r30)
000fc4  63013fdb  loadli.w r2,  -4712(r30)
000fc8  73172f86  store.h r2, -1938(r30)
000fcc  63018fde  loadli.w r2,  -4288(r30)
000fd0  73182f86  store.h r2, -1936(r30)
000fd4  63411fdb  loadli.w r2,  -4724(r30)
000fd8  73192f86  store.h r2, -1934(r30)
000fdc  63010fde  loadli.w r2,  -4352(r30)
000fe0  731a2f86  store.h r2, -1932(r30)
000fe4  63410fdb  loadli.w r2,  -4732(r30)
000fe8  731b2f86  store.h r2, -1930(r30)
000fec  63018fdd  loadli.w r2,  -4416(r30)
000ff0  731c2f86  store.h r2, -1928(r30)
000ff4  63010fdb  loadli.w r2,  -4736(r30)
000ff8  731d2f86  store.h r2, -1926(r30)
000ffc  63417fdd  loadli.w r2,  -4420(r30)
001000  731e2f86  store.h r2, -1924(r30)
001004  6301ffda  loadli.w r2,  -4744(r30)
001008  731f2f86  store.h r2, -1922(r30)
00100c  63017fdd  loadli.w r2,  -4424(r30)
001010  73102f88  store.h r2, -1920(r30)
001014  6301ffdb  loadli.w r2,  -4616(r30)
001018  73112f88  store.h r2, -1918(r30)
00101c  6341efda  loadli.w r2,  -4748(r30)
001020  73122f88  store.h r2, -1916(r30)
001024  63416fdd  loadli.w r2,  -4428(r30)
001028  73132f88  store.h r2, -1914(r30)
00102c  63016fdd  loadli.w r2,  -4432(r30)
001030  73152f88  store.h r2, -1910(r30)
001034  63018fdb  loadli.w r2,  -4672(r30)
001038  73162f88  store.h r2, -1908(r30)
00103c  63415fdd  loadli.w r2,  -4436(r30)
001040  73172f88  store.h r2, -1906(r30)
001044  63412fdb  loadli.w r2,  -4716(r30)
001048  73182f88  store.h r2, -1904(r30)
00104c  63010fdc  loadli.w r2,  -4608(r30)
001050  73192f88  store.h r2, -1902(r30)
001054  6341cfdb  loadli.w r2,  -4636(r30)
001058  731d2f88  store.h r2, -1894(r30)
00105c  63414fdc  loadli.w r2,  -4572(r30)
001060  731e2f88  store.h r2, -1892(r30)
001064  6341ffdb  loadli.w r2,  -4612(r30)
001068  731f2f88  store.h r2, -1890(r30)
00106c  63019fdb  loadli.w r2,  -4664(r30)
001070  73102f8a  store.h r2, -1888(r30)
001074  63014fdc  loadli.w r2,  -4576(r30)
001078  73112f8a  store.h r2, -1886(r30)
00107c  6301efdb  loadli.w r2,  -4624(r30)
001080  73122f8a  store.h r2, -1884(r30)
001084  63015fdd  loadli.w r2,  -4440(r30)
001088  73132f8a  store.h r2, -1882(r30)
00108c  63419fdb  loadli.w r2,  -4660(r30)
001090  73142f8a  store.h r2, -1880(r30)
001094  63414fdd  loadli.w r2,  -4444(r30)
001098  73152f8a  store.h r2, -1878(r30)
00109c  6301cfdb  loadli.w r2,  -4640(r30)
0010a0  73162f8a  store.h r2, -1876(r30)
0010a4  63014fdd  loadli.w r2,  -4448(r30)
0010a8  73172f8a  store.h r2, -1874(r30)
0010ac  6341bfdb  loadli.w r2,  -4644(r30)
0010b0  73182f8a  store.h r2, -1872(r30)
0010b4  6341dfdb  loadli.w r2,  -4628(r30)
0010b8  73192f8a  store.h r2, -1870(r30)
0010bc  63415fdb  loadli.w r2,  -4692(r30)
0010c0  731a2f8a  store.h r2, -1868(r30)
0010c4  63413fdd  loadli.w r2,  -4452(r30)
0010c8  731b2f8a  store.h r2, -1866(r30)
0010cc  6341efdb  loadli.w r2,  -4620(r30)
0010d0  731c2f8a  store.h r2, -1864(r30)
0010d4  63014fdb  loadli.w r2,  -4704(r30)
0010d8  731d2f8a  store.h r2, -1862(r30)
0010dc  6301dfda  loadli.w r2,  -4760(r30)
0010e0  731e2f8a  store.h r2, -1860(r30)
0010e4  6301bfda  loadli.w r2,  -4776(r30)
0010e8  731f2f8a  store.h r2, -1858(r30)
0010ec  63013fdd  loadli.w r2,  -4456(r30)
0010f0  73102f8c  store.h r2, -1856(r30)
0010f4  63412fdd  loadli.w r2,  -4460(r30)
0010f8  73112f8c  store.h r2, -1854(r30)
0010fc  63419fda  loadli.w r2,  -4788(r30)
001100  73122f8c  store.h r2, -1852(r30)
001104  63019fda  loadli.w r2,  -4792(r30)
001108  73132f8c  store.h r2, -1850(r30)
00110c  63018fda  loadli.w r2,  -4800(r30)
001110  73142f8c  store.h r2, -1848(r30)
001114  1b912900  ori r2, r19, 2
001118  73104100  store.h r4, 0(r2)
00111c  63411fdc  loadli.w r2,  -4596(r30)
001120  73152f8c  store.h r2, -1846(r30)
001124  6341dfda  loadli.w r2,  -4756(r30)
001128  73162f8c  store.h r2, -1844(r30)
00112c  6341cfda  loadli.w r2,  -4764(r30)
001130  73172f8c  store.h r2, -1842(r30)
001134  6301afda  loadli.w r2,  -4784(r30)
001138  73182f8c  store.h r2, -1840(r30)
00113c  63415fdc  loadli.w r2,  -4564(r30)
001140  73192f8c  store.h r2, -1838(r30)
001144  63416fdc  loadli.w r2,  -4556(r30)
001148  731a2f8c  store.h r2, -1836(r30)
00114c  63017fdc  loadli.w r2,  -4552(r30)
001150  731b2f8c  store.h r2, -1834(r30)
001154  63418fda  loadli.w r2,  -4796(r30)
001158  731c2f8c  store.h r2, -1832(r30)
00115c  6301afdc  loadli.w r2,  -4528(r30)
001160  731d2f8c  store.h r2, -1830(r30)
001164  63418fdc  loadli.w r2,  -4540(r30)
001168  731e2f8c  store.h r2, -1828(r30)
00116c  63019fdc  loadli.w r2,  -4536(r30)
001170  731f2f8c  store.h r2, -1826(r30)
001174  63018fdc  loadli.w r2,  -4544(r30)
001178  73102f8e  store.h r2, -1824(r30)
00117c  63011fdb  loadli.w r2,  -4728(r30)
001180  73122f8e  store.h r2, -1820(r30)
001184  6341cfdc  loadli.w r2,  -4508(r30)
001188  73132f8e  store.h r2, -1818(r30)
00118c  63417fdb  loadli.w r2,  -4676(r30)
001190  73142f8e  store.h r2, -1816(r30)
001194  63012fdd  loadli.w r2,  -4464(r30)
001198  73152f8e  store.h r2, -1814(r30)
00119c  6341dfdc  loadli.w r2,  -4500(r30)
0011a0  73162f8e  store.h r2, -1812(r30)
0011a4  6301dfdc  loadli.w r2,  -4504(r30)
0011a8  73172f8e  store.h r2, -1810(r30)
0011ac  2b0100f0  lui r2, 983040
0011b0  00a00000  mfence { lm }
0011b4  97902400  or r1, r9, r2
0011b8  e3011fdd  loadli.w r3,  -4472(r30)
0011bc  ffb03301  s_lm2gm r1, r19, 0(r[8:9])
0011c0  e3405fda  loadli.w r1,  -4820(r30)
0011c4  9f030fee  addli r7, r30, -2304
0011c8  00a00000  mfence { lm }
0011cc  8b911110  add.s r3, r3, r1
0011d0  e3406fda  loadli.w r1,  -4812(r30)
0011d4  3fa01100  blt.s r3, r1, 8
0011d8  db80ffff  j -1020
0011dc  9f000000  addli r1, zero, 0
0011e0  0b911310  add.s r2, r7, r1
0011e4  9fc00000  addli r1, r1, 4
0011e8  73100100  store.h zero, 0(r2)
0011ec  73110100  store.h zero, 2(r2)
0011f0  00a00000  mfence { lm }
0011f4  bbbfa0fe  bneq r1, r10, -20
0011f8  e3004f00  loadli.w r1,  32(r30)
0011fc  63413f00  loadli.w r2,  28(r30)
001200  1f033fda  addli r6, r30, -4840
001204  e7083fdc  storeli.w r3, -4472(r30)
001208  6b520300  load.d r[5:6], 0(r6)
00120c  8b901130  div.s r1, r3, r1
001210  9f110000  addli r3, zero, 1
001214  8b902030  div.s r1, r1, r2
001218  8b90b020  mul.s r1, r1, r11
00121c  67081fdc  storeli.w r1, -4480(r30)
001220  b3900028  sext_int2long r[2:3], r1
001224  97b03002  sll.d r[2:3], r[2:3], r3
001228  ab0100f0  lui r3, 983040
00122c  8b201210  add.ul r[2:3], r[5:6], r[2:3]
001230  97913400  or r3, r9, r3
001234  ffa17000  l_gm2lm r3, r7, 0(r[2:3])
001238  9f000000  addli r1, zero, 0
00123c  0b911910  add.s r2, r19, r1
001240  9fc00000  addli r1, r1, 4
001244  67000100  storeli.w zero, 0(r2)
001248  00a00000  mfence { lm }
00124c  bbcfa0fe  bneq r1, r10, -16
001250  1f022fda  addli r4, r30, -4848
001254  ab0000f0  lui r1, 983040
001258  6b510200  load.d r[3:4], 0(r4)
00125c  97901400  or r1, r9, r1
001260  ff203101  l_gm2lm r1, r19, 0(r[3:4])
001264  9f000fee  addli r1, r30, -2304
001268  1f018ff0  addli r2, r30, -1984
00126c  00a00000  mfence { lm }
001270  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001274  9f008fee  addli r1, r30, -2240
001278  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00127c  9f000fef  addli r1, r30, -2176
001280  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001284  9f008fef  addli r1, r30, -2112
001288  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
00128c  9f000ff0  addli r1, r30, -2048
001290  e6c31580  vmerge_l.hf vr7, vr11, vr1
001294  66c415a0  vmerge_h.hf vr8, vr11, vr1
001298  e6c20580  vmerge_l.hf vr5, vr11, vr0
00129c  e6c105a0  vmerge_h.hf vr3, vr11, vr0
0012a0  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
0012a4  9f008fe5  addli r1, r30, -3392
0012a8  00a00000  mfence { lm }
0012ac  e6c02580  vmerge_l.hf vr1, vr11, vr2
0012b0  66c125a0  vmerge_h.hf vr2, vr11, vr2
0012b4  66c04580  vmerge_l.hf vr0, vr11, vr4
0012b8  66c245a0  vmerge_h.hf vr4, vr11, vr4
0012bc  e6c46580  vmerge_l.hf vr9, vr11, vr6
0012c0  66c365a0  vmerge_h.hf vr6, vr11, vr6
0012c4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0012c8  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
0012cc  1f010ff1  addli r2, r30, -1920
0012d0  96939302  vadd.f.mz.rn vr7{mr1}, vr7, vr9
0012d4  16136402  vadd.f.mz.rn vr6{mr1}, vr8, vr6
0012d8  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0012dc  1f018ff1  addli r2, r30, -1856
0012e0  42140102  vload_mask16.mz vr8{mr1}, 0(r2)
0012e4  e6c4a580  vmerge_l.hf vr9, vr11, vr10
0012e8  66c5a5a0  vmerge_h.hf vr10, vr11, vr10
0012ec  96929202  vadd.f.mz.rn vr5{mr1}, vr5, vr9
0012f0  e6c40580  vmerge_l.hf vr9, vr11, vr0
0012f4  66c005a0  vmerge_h.hf vr0, vr11, vr0
0012f8  9691a102  vadd.f.mz.rn vr3{mr1}, vr3, vr10
0012fc  66c58580  vmerge_l.hf vr10, vr11, vr8
001300  66c485a0  vmerge_h.hf vr8, vr11, vr8
001304  16110102  vadd.f.mz.rn vr2{mr1}, vr2, vr0
001308  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00130c  9f008fe2  addli r1, r30, -3776
001310  96909002  vadd.f.mz.rn vr1{mr1}, vr1, vr9
001314  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
001318  9614a002  vadd.f.mz.rn vr9{mr1}, vr0, vr10
00131c  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
001320  9f005fda  addli r1, r30, -4824
001324  1234a002  vadd.s.mz vr8{mr1}, zero, vr10
001328  63800000  loadli.w zero,  0(r1)
00132c  9f000fe3  addli r1, r30, -3712
001330  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
001334  9f404fda  addli r1, r30, -4828
001338  7e0100e0  vmmov mr2, zero
00133c  17200000  xor zero, zero, zero
001340  6e947534  vor.f.mh vr8{mr2}, vr11, vr7
001344  9233a002  vadd.s.mz vr7{mr1}, zero, vr10
001348  63800000  loadli.w zero,  0(r1)
00134c  9f004fda  addli r1, r30, -4832
001350  7e0100e0  vmmov mr2, zero
001354  17200000  xor zero, zero, zero
001358  ee936534  vor.f.mh vr7{mr2}, vr11, vr6
00135c  1233a002  vadd.s.mz vr6{mr1}, zero, vr10
001360  63800000  loadli.w zero,  0(r1)
001364  9f400fda  addli r1, r30, -4860
001368  7e0100e0  vmmov mr2, zero
00136c  17200000  xor zero, zero, zero
001370  6e935534  vor.f.mh vr6{mr2}, vr11, vr5
001374  9232a002  vadd.s.mz vr5{mr1}, zero, vr10
001378  63800000  loadli.w zero,  0(r1)
00137c  9f000fda  addli r1, r30, -4864
001380  7e0100e0  vmmov mr2, zero
001384  17200000  xor zero, zero, zero
001388  ee923534  vor.f.mh vr5{mr2}, vr11, vr3
00138c  1230a002  vadd.s.mz vr0{mr1}, zero, vr10
001390  63800000  loadli.w zero,  0(r1)
001394  9f40ffd9  addli r1, r30, -4868
001398  7e0100e0  vmmov mr2, zero
00139c  17200000  xor zero, zero, zero
0013a0  6e901534  vor.f.mh vr0{mr2}, vr11, vr1
0013a4  9230a002  vadd.s.mz vr1{mr1}, zero, vr10
0013a8  63800000  loadli.w zero,  0(r1)
0013ac  9f00ffd9  addli r1, r30, -4872
0013b0  7e0100e0  vmmov mr2, zero
0013b4  17200000  xor zero, zero, zero
0013b8  ee902534  vor.f.mh vr1{mr2}, vr11, vr2
0013bc  1231a002  vadd.s.mz vr2{mr1}, zero, vr10
0013c0  63800000  loadli.w zero,  0(r1)
0013c4  9f40efd9  addli r1, r30, -4876
0013c8  7e0100e0  vmmov mr2, zero
0013cc  17200000  xor zero, zero, zero
0013d0  6e919534  vor.f.mh vr2{mr2}, vr11, vr9
0013d4  9231a002  vadd.s.mz vr3{mr1}, zero, vr10
0013d8  63800000  loadli.w zero,  0(r1)
0013dc  9f000fe1  addli r1, r30, -3968
0013e0  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0013e4  9f000ff2  addli r1, r30, -1792
0013e8  7e0100e0  vmmov mr2, zero
0013ec  17200000  xor zero, zero, zero
0013f0  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0013f4  9f008fe0  addli r1, r30, -4032
0013f8  ee914534  vor.f.mh vr3{mr2}, vr11, vr4
0013fc  1f0a0000  addli r20, zero, 0
001400  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
001404  9f008ff2  addli r1, r30, -1728
001408  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
00140c  9f000fe0  addli r1, r30, -4096
001410  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
001414  9f000ff3  addli r1, r30, -1664
001418  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
00141c  9f008fdf  addli r1, r30, -4160
001420  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001424  9f008ff3  addli r1, r30, -1600
001428  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00142c  9f000fdf  addli r1, r30, -4224
001430  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001434  9f000ff4  addli r1, r30, -1536
001438  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00143c  9f008fde  addli r1, r30, -4288
001440  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
001444  9f008ff4  addli r1, r30, -1472
001448  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00144c  9f000fde  addli r1, r30, -4352
001450  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
001454  9f000ff5  addli r1, r30, -1408
001458  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
00145c  9f008fdd  addli r1, r30, -4416
001460  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
001464  9f008ff5  addli r1, r30, -1344
001468  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
00146c  00a00000  mfence { lm }
001470  63090ff2  loadli.w r18,  -1792(r30)
001474  e3400ff2  loadli.w r1,  -1788(r30)
001478  670a1fe4  storeli.w r1, -3424(r30)
00147c  e3001ff2  loadli.w r1,  -1784(r30)
001480  674a1fe4  storeli.w r1, -3420(r30)
001484  e3401ff2  loadli.w r1,  -1780(r30)
001488  e70a1fe4  storeli.w r1, -3416(r30)
00148c  e3002ff2  loadli.w r1,  -1776(r30)
001490  e74a1fe4  storeli.w r1, -3412(r30)
001494  e3402ff2  loadli.w r1,  -1772(r30)
001498  670b1fe4  storeli.w r1, -3408(r30)
00149c  630e3ff2  loadli.w r28,  -1768(r30)
0014a0  e34d3ff2  loadli.w r27,  -1764(r30)
0014a4  630c4ff2  loadli.w r24,  -1760(r30)
0014a8  e34b4ff2  loadli.w r23,  -1756(r30)
0014ac  630b5ff2  loadli.w r22,  -1752(r30)
0014b0  e34a5ff2  loadli.w r21,  -1748(r30)
0014b4  e3006ff2  loadli.w r1,  -1744(r30)
0014b8  e7491fe4  storeli.w r1, -3428(r30)
0014bc  e3406ff2  loadli.w r1,  -1740(r30)
0014c0  e70b1fe4  storeli.w r1, -3400(r30)
0014c4  e3007ff2  loadli.w r1,  -1736(r30)
0014c8  e74b1fe4  storeli.w r1, -3396(r30)
0014cc  e3497ff2  loadli.w r19,  -1732(r30)
0014d0  e3008ff2  loadli.w r1,  -1728(r30)
0014d4  e3408ff2  loadli.w r1,  -1724(r30)
0014d8  e3009ff2  loadli.w r1,  -1720(r30)
0014dc  e3409ff2  loadli.w r1,  -1716(r30)
0014e0  e300aff2  loadli.w r1,  -1712(r30)
0014e4  e340aff2  loadli.w r1,  -1708(r30)
0014e8  e300bff2  loadli.w r1,  -1704(r30)
0014ec  e340bff2  loadli.w r1,  -1700(r30)
0014f0  e300cff2  loadli.w r1,  -1696(r30)
0014f4  e340cff2  loadli.w r1,  -1692(r30)
0014f8  e300dff2  loadli.w r1,  -1688(r30)
0014fc  e340dff2  loadli.w r1,  -1684(r30)
001500  e300eff2  loadli.w r1,  -1680(r30)
001504  e340eff2  loadli.w r1,  -1676(r30)
001508  e300fff2  loadli.w r1,  -1672(r30)
00150c  e340fff2  loadli.w r1,  -1668(r30)
001510  e3000ff3  loadli.w r1,  -1664(r30)
001514  e3400ff3  loadli.w r1,  -1660(r30)
001518  e3001ff3  loadli.w r1,  -1656(r30)
00151c  e3401ff3  loadli.w r1,  -1652(r30)
001520  e3002ff3  loadli.w r1,  -1648(r30)
001524  e3402ff3  loadli.w r1,  -1644(r30)
001528  e3003ff3  loadli.w r1,  -1640(r30)
00152c  e3403ff3  loadli.w r1,  -1636(r30)
001530  e3004ff3  loadli.w r1,  -1632(r30)
001534  e3404ff3  loadli.w r1,  -1628(r30)
001538  e3005ff3  loadli.w r1,  -1624(r30)
00153c  e3405ff3  loadli.w r1,  -1620(r30)
001540  e3006ff3  loadli.w r1,  -1616(r30)
001544  e3406ff3  loadli.w r1,  -1612(r30)
001548  e3007ff3  loadli.w r1,  -1608(r30)
00154c  e3407ff3  loadli.w r1,  -1604(r30)
001550  e3008ff3  loadli.w r1,  -1600(r30)
001554  e3408ff3  loadli.w r1,  -1596(r30)
001558  e3009ff3  loadli.w r1,  -1592(r30)
00155c  e3409ff3  loadli.w r1,  -1588(r30)
001560  e300aff3  loadli.w r1,  -1584(r30)
001564  e340aff3  loadli.w r1,  -1580(r30)
001568  e300bff3  loadli.w r1,  -1576(r30)
00156c  e340bff3  loadli.w r1,  -1572(r30)
001570  e300cff3  loadli.w r1,  -1568(r30)
001574  e340cff3  loadli.w r1,  -1564(r30)
001578  e300dff3  loadli.w r1,  -1560(r30)
00157c  e340dff3  loadli.w r1,  -1556(r30)
001580  e300eff3  loadli.w r1,  -1552(r30)
001584  e340eff3  loadli.w r1,  -1548(r30)
001588  e300fff3  loadli.w r1,  -1544(r30)
00158c  e340fff3  loadli.w r1,  -1540(r30)
001590  e3000ff4  loadli.w r1,  -1536(r30)
001594  e3400ff4  loadli.w r1,  -1532(r30)
001598  e3001ff4  loadli.w r1,  -1528(r30)
00159c  e3401ff4  loadli.w r1,  -1524(r30)
0015a0  e3002ff4  loadli.w r1,  -1520(r30)
0015a4  e3402ff4  loadli.w r1,  -1516(r30)
0015a8  e3003ff4  loadli.w r1,  -1512(r30)
0015ac  e3403ff4  loadli.w r1,  -1508(r30)
0015b0  e3004ff4  loadli.w r1,  -1504(r30)
0015b4  e3404ff4  loadli.w r1,  -1500(r30)
0015b8  e3005ff4  loadli.w r1,  -1496(r30)
0015bc  e3405ff4  loadli.w r1,  -1492(r30)
0015c0  e3006ff4  loadli.w r1,  -1488(r30)
0015c4  e3406ff4  loadli.w r1,  -1484(r30)
0015c8  e3007ff4  loadli.w r1,  -1480(r30)
0015cc  e3407ff4  loadli.w r1,  -1476(r30)
0015d0  e3008ff4  loadli.w r1,  -1472(r30)
0015d4  e3408ff4  loadli.w r1,  -1468(r30)
0015d8  e3009ff4  loadli.w r1,  -1464(r30)
0015dc  e3409ff4  loadli.w r1,  -1460(r30)
0015e0  e300aff4  loadli.w r1,  -1456(r30)
0015e4  e340aff4  loadli.w r1,  -1452(r30)
0015e8  e300bff4  loadli.w r1,  -1448(r30)
0015ec  e340bff4  loadli.w r1,  -1444(r30)
0015f0  e300cff4  loadli.w r1,  -1440(r30)
0015f4  e340cff4  loadli.w r1,  -1436(r30)
0015f8  e300dff4  loadli.w r1,  -1432(r30)
0015fc  e340dff4  loadli.w r1,  -1428(r30)
001600  e300eff4  loadli.w r1,  -1424(r30)
001604  e340eff4  loadli.w r1,  -1420(r30)
001608  e300fff4  loadli.w r1,  -1416(r30)
00160c  e340fff4  loadli.w r1,  -1412(r30)
001610  e3000ff5  loadli.w r1,  -1408(r30)
001614  e3400ff5  loadli.w r1,  -1404(r30)
001618  e3001ff5  loadli.w r1,  -1400(r30)
00161c  e3401ff5  loadli.w r1,  -1396(r30)
001620  e3002ff5  loadli.w r1,  -1392(r30)
001624  e3402ff5  loadli.w r1,  -1388(r30)
001628  e3003ff5  loadli.w r1,  -1384(r30)
00162c  e3403ff5  loadli.w r1,  -1380(r30)
001630  e3004ff5  loadli.w r1,  -1376(r30)
001634  e3404ff5  loadli.w r1,  -1372(r30)
001638  e3005ff5  loadli.w r1,  -1368(r30)
00163c  e3405ff5  loadli.w r1,  -1364(r30)
001640  e3006ff5  loadli.w r1,  -1360(r30)
001644  e3406ff5  loadli.w r1,  -1356(r30)
001648  e3007ff5  loadli.w r1,  -1352(r30)
00164c  e3407ff5  loadli.w r1,  -1348(r30)
001650  e3008ff5  loadli.w r1,  -1344(r30)
001654  e3408ff5  loadli.w r1,  -1340(r30)
001658  e3009ff5  loadli.w r1,  -1336(r30)
00165c  e3409ff5  loadli.w r1,  -1332(r30)
001660  e300aff5  loadli.w r1,  -1328(r30)
001664  e340aff5  loadli.w r1,  -1324(r30)
001668  e300bff5  loadli.w r1,  -1320(r30)
00166c  e340bff5  loadli.w r1,  -1316(r30)
001670  e300cff5  loadli.w r1,  -1312(r30)
001674  e340cff5  loadli.w r1,  -1308(r30)
001678  e300dff5  loadli.w r1,  -1304(r30)
00167c  e340dff5  loadli.w r1,  -1300(r30)
001680  e300eff5  loadli.w r1,  -1296(r30)
001684  e340eff5  loadli.w r1,  -1292(r30)
001688  e300fff5  loadli.w r1,  -1288(r30)
00168c  e340fff5  loadli.w r1,  -1284(r30)
001690  00a00000  mfence { lm }
001694  9f004000  addli r1, zero, 32
001698  9f080fe2  addli r17, r30, -3840
00169c  1f010fee  addli r2, r30, -2304
0016a0  e70e6fe3  storeli.w r22, -3608(r30)
0016a4  e74e5fe3  storeli.w r21, -3604(r30)
0016a8  67043fe5  storeli.w r19, -3520(r30)
0016ac  674d8fe3  storeli.w r24, -3628(r30)
0016b0  670e7fe3  storeli.w r23, -3616(r30)
0016b4  670c1fe4  storeli.w r1, -3392(r30)
0016b8  9f094000  addli r19, zero, 32
0016bc  9f8a0d00  addli r21, r27, 0
0016c0  1f0b0a00  addli r22, r20, 0
0016c4  c2900802  vload_mask16.mz vr1{mr1}, 0(r17)
0016c8  8b111110  add.s r3, r2, r1
0016cc  9f180000  addli r17, zero, 1
0016d0  6bb20100  load.hu r4, 0(r3)
0016d4  ebb22100  load.hu r5, 2(r3)
0016d8  7e8008e0  vmmov mr0, r17
0016dc  6bb1a101  load.hu r2, 26(r3)
0016e0  ebb0c101  load.hu r1, 28(r3)
0016e4  6bb34100  load.hu r6, 4(r3)
0016e8  ebb36100  load.hu r7, 6(r3)
0016ec  6bb48100  load.hu r8, 8(r3)
0016f0  ebb4a100  load.hu r9, 10(r3)
0016f4  6bb5c100  load.hu r10, 12(r3)
0016f8  ebb5e100  load.hu r11, 14(r3)
0016fc  6bb60101  load.hu r12, 16(r3)
001700  ebb62101  load.hu r13, 18(r3)
001704  6bb74101  load.hu r14, 20(r3)
001708  ebb76101  load.hu r15, 22(r3)
00170c  6bb88101  load.hu r16, 24(r3)
001710  ebb1e101  load.hu r3, 30(r3)
001714  33120218  bfloat2float.rn r4, r4
001718  33110118  bfloat2float.rn r2, r2
00171c  b3900018  bfloat2float.rn r1, r1
001720  12301002  vadd.s.mz vr0{mr1}, zero, vr1
001724  6a200230  vor.u.mh vr0{mr0}, r4, vr0
001728  33920218  bfloat2float.rn r4, r5
00172c  9f220000  addli r5, zero, 2
001730  7e8102e0  vmmov mr2, r5
001734  9f420000  addli r5, zero, 4
001738  6a200234  vor.u.mh vr0{mr2}, r4, vr0
00173c  33120318  bfloat2float.rn r4, r6
001740  fe8102e0  vmmov mr3, r5
001744  9f021000  addli r5, zero, 8
001748  7e8002e0  vmmov mr0, r5
00174c  9f022000  addli r5, zero, 16
001750  6a200236  vor.u.mh vr0{mr3}, r4, vr0
001754  33920318  bfloat2float.rn r4, r7
001758  6a200230  vor.u.mh vr0{mr0}, r4, vr0
00175c  33120418  bfloat2float.rn r4, r8
001760  7e8002e0  vmmov mr0, r5
001764  9f024000  addli r5, zero, 32
001768  6a200230  vor.u.mh vr0{mr0}, r4, vr0
00176c  33920418  bfloat2float.rn r4, r9
001770  7e8002e0  vmmov mr0, r5
001774  9f028000  addli r5, zero, 64
001778  6a200230  vor.u.mh vr0{mr0}, r4, vr0
00177c  33120518  bfloat2float.rn r4, r10
001780  7e8002e0  vmmov mr0, r5
001784  9f020001  addli r5, zero, 128
001788  6a200230  vor.u.mh vr0{mr0}, r4, vr0
00178c  33920518  bfloat2float.rn r4, r11
001790  7e8002e0  vmmov mr0, r5
001794  9f020002  addli r5, zero, 256
001798  6a200230  vor.u.mh vr0{mr0}, r4, vr0
00179c  33120618  bfloat2float.rn r4, r12
0017a0  7e8002e0  vmmov mr0, r5
0017a4  9f020004  addli r5, zero, 512
0017a8  6a200230  vor.u.mh vr0{mr0}, r4, vr0
0017ac  33920618  bfloat2float.rn r4, r13
0017b0  7e8002e0  vmmov mr0, r5
0017b4  9f020008  addli r5, zero, 1024
0017b8  6a200230  vor.u.mh vr0{mr0}, r4, vr0
0017bc  33120718  bfloat2float.rn r4, r14
0017c0  7e8002e0  vmmov mr0, r5
0017c4  9f020010  addli r5, zero, 2048
0017c8  6a200230  vor.u.mh vr0{mr0}, r4, vr0
0017cc  33920718  bfloat2float.rn r4, r15
0017d0  7e8002e0  vmmov mr0, r5
0017d4  9f020020  addli r5, zero, 4096
0017d8  6a200230  vor.u.mh vr0{mr0}, r4, vr0
0017dc  33120818  bfloat2float.rn r4, r16
0017e0  7e8002e0  vmmov mr0, r5
0017e4  6a200230  vor.u.mh vr0{mr0}, r4, vr0
0017e8  1f020040  addli r4, zero, 8192
0017ec  7e0002e0  vmmov mr0, r4
0017f0  6a200130  vor.u.mh vr0{mr0}, r2, vr0
0017f4  2b410000  lui r2, 4
0017f8  7e0001e0  vmmov mr0, r2
0017fc  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001800  63018fe5  loadli.w r2,  -3392(r30)
001804  b3900118  bfloat2float.rn r1, r3
001808  9f010ff0  addli r3, r30, -2048
00180c  8b932110  add.s r7, r3, r2
001810  2b810000  lui r2, 8
001814  7e0001e0  vmmov mr0, r2
001818  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
00181c  ebb00300  load.hu r1, 0(r7)
001820  ebb7a300  load.hu r15, 10(r7)
001824  6bb5e300  load.hu r10, 14(r7)
001828  ebb40301  load.hu r9, 16(r7)
00182c  6bb42301  load.hu r8, 18(r7)
001830  6bb34301  load.hu r6, 20(r7)
001834  ebb26301  load.hu r5, 22(r7)
001838  6bb28301  load.hu r4, 24(r7)
00183c  ebb1a301  load.hu r3, 26(r7)
001840  6bb1c301  load.hu r2, 28(r7)
001844  ebb52300  load.hu r11, 2(r7)
001848  6bb64300  load.hu r12, 4(r7)
00184c  ebb66300  load.hu r13, 6(r7)
001850  6bb78300  load.hu r14, 8(r7)
001854  6bb8c300  load.hu r16, 12(r7)
001858  b3980018  bfloat2float.rn r17, r1
00185c  ebb0e301  load.hu r1, 30(r7)
001860  9f130000  addli r7, zero, 1
001864  b3970718  bfloat2float.rn r15, r15
001868  33150518  bfloat2float.rn r10, r10
00186c  b3940418  bfloat2float.rn r9, r9
001870  33140418  bfloat2float.rn r8, r8
001874  33130318  bfloat2float.rn r6, r6
001878  b3920218  bfloat2float.rn r5, r5
00187c  33120218  bfloat2float.rn r4, r4
001880  b3910118  bfloat2float.rn r3, r3
001884  33110118  bfloat2float.rn r2, r2
001888  7e8003e0  vmmov mr0, r7
00188c  b3930518  bfloat2float.rn r7, r11
001890  b3950618  bfloat2float.rn r11, r13
001894  9f061000  addli r13, zero, 8
001898  eaa01830  vor.u.mh vr1{mr0}, r17, vr1
00189c  9f082000  addli r17, zero, 16
0018a0  b3900018  bfloat2float.rn r1, r1
0018a4  eaa01334  vor.u.mh vr1{mr2}, r7, vr1
0018a8  b3130618  bfloat2float.rn r7, r12
0018ac  7e8106e0  vmmov mr2, r13
0018b0  b3160718  bfloat2float.rn r13, r14
0018b4  eaa01336  vor.u.mh vr1{mr3}, r7, vr1
0018b8  e3033fe5  loadli.w r7,  -3432(r30)
0018bc  8b934311  add.s r7, r7, r20
0018c0  1f0a0e00  addli r20, r28, 0
0018c4  eaa01534  vor.u.mh vr1{mr2}, r11, vr1
0018c8  7e8108e0  vmmov mr2, r17
0018cc  9f180020  addli r17, zero, 4097
0018d0  9f952300  addli r11, r7, 17
0018d4  1f862300  addli r12, r7, 16
0018d8  1fa72300  addli r14, r7, 18
0018dc  93951505  setlt.s r11, r11, r17
0018e0  13161605  setlt.s r12, r12, r17
0018e4  13171705  setlt.s r14, r14, r17
0018e8  eaa01634  vor.u.mh vr1{mr2}, r13, vr1
0018ec  7e8109e0  vmmov mr2, r19
0018f0  9f098000  addli r19, zero, 64
0018f4  9fb62300  addli r13, r7, 19
0018f8  93961605  setlt.s r13, r13, r17
0018fc  eaa01734  vor.u.mh vr1{mr2}, r15, vr1
001900  b3170818  bfloat2float.rn r15, r16
001904  7e8109e0  vmmov mr2, r19
001908  9f090001  addli r19, zero, 128
00190c  1fc82300  addli r16, r7, 20
001910  9bb51500  slli r11, r11, 1
001914  13181805  setlt.s r16, r16, r17
001918  1b372700  slli r14, r14, 2
00191c  eaa01734  vor.u.mh vr1{mr2}, r15, vr1
001920  7e8109e0  vmmov mr2, r19
001924  9f090002  addli r19, zero, 256
001928  9fd72300  addli r15, r7, 21
00192c  9795c500  or r11, r11, r12
001930  1fe62300  addli r12, r7, 22
001934  9bb63600  slli r13, r13, 3
001938  93971705  setlt.s r15, r15, r17
00193c  13161605  setlt.s r12, r12, r17
001940  9795e500  or r11, r11, r14
001944  1f973300  addli r14, r7, 25
001948  ea201534  vor.u.mh vr1{mr2}, r10, vr1
00194c  7e8109e0  vmmov mr2, r19
001950  9f090004  addli r19, zero, 512
001954  1ff52300  addli r10, r7, 23
001958  9795d500  or r11, r11, r13
00195c  13171705  setlt.s r14, r14, r17
001960  9fc63300  addli r13, r7, 28
001964  1b384800  slli r16, r16, 4
001968  13151505  setlt.s r10, r10, r17
00196c  93961605  setlt.s r13, r13, r17
001970  97950501  or r11, r11, r16
001974  1fe83300  addli r16, r7, 30
001978  eaa01434  vor.u.mh vr1{mr2}, r9, vr1
00197c  7e8109e0  vmmov mr2, r19
001980  9f090008  addli r19, zero, 1024
001984  9f843300  addli r9, r7, 24
001988  9bb75700  slli r15, r15, 5
00198c  1b366600  slli r12, r12, 6
001990  13181805  setlt.s r16, r16, r17
001994  93941405  setlt.s r9, r9, r17
001998  9795f500  or r11, r11, r15
00199c  ea201434  vor.u.mh vr1{mr2}, r8, vr1
0019a0  7e8109e0  vmmov mr2, r19
0019a4  9f090010  addli r19, zero, 2048
0019a8  1fa43300  addli r8, r7, 26
0019ac  9795c500  or r11, r11, r12
0019b0  1f060020  addli r12, zero, 4096
0019b4  1b357500  slli r10, r10, 7
0019b8  13141405  setlt.s r8, r8, r17
0019bc  ea201334  vor.u.mh vr1{mr2}, r6, vr1
0019c0  7e8109e0  vmmov mr2, r19
0019c4  1fb33300  addli r6, r7, 27
0019c8  9bb48400  slli r9, r9, 8
0019cc  13131305  setlt.s r6, r6, r17
0019d0  eaa01234  vor.u.mh vr1{mr2}, r5, vr1
0019d4  7e0106e0  vmmov mr2, r12
0019d8  9fd23300  addli r5, r7, 29
0019dc  9ff33300  addli r7, r7, 31
0019e0  93921205  setlt.s r5, r5, r17
0019e4  93931305  setlt.s r7, r7, r17
0019e8  ea201234  vor.u.mh vr1{mr2}, r4, vr1
0019ec  1792a500  or r4, r11, r10
0019f0  1f050040  addli r10, zero, 8192
0019f4  17129200  or r4, r4, r9
0019f8  9b349700  slli r9, r14, 9
0019fc  7e0105e0  vmmov mr2, r10
001a00  eaa01134  vor.u.mh vr1{mr2}, r3, vr1
001a04  97119200  or r3, r4, r9
001a08  1b32a400  slli r4, r8, 10
001a0c  97914100  or r3, r3, r4
001a10  1b32b300  slli r4, r6, 11
001a14  2b430000  lui r6, 4
001a18  7e0103e0  vmmov mr2, r6
001a1c  ea201134  vor.u.mh vr1{mr2}, r2, vr1
001a20  17914100  or r2, r3, r4
001a24  9bb1c600  slli r3, r13, 12
001a28  2b820000  lui r4, 8
001a2c  17113100  or r2, r2, r3
001a30  9bb1d200  slli r3, r5, 13
001a34  7e0002e0  vmmov mr0, r4
001a38  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001a3c  97103100  or r1, r2, r3
001a40  1b31e800  slli r2, r16, 14
001a44  97902000  or r1, r1, r2
001a48  1bb1f300  slli r2, r7, 15
001a4c  97902000  or r1, r1, r2
001a50  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
001a54  1f010900  addli r2, r18, 0
001a58  7e8100e0  vmmov mr2, r1
001a5c  9f008fe2  addli r1, r30, -3776
001a60  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001a64  9f000fe3  addli r1, r30, -3712
001a68  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001a6c  9f000fea  addli r1, r30, -2816
001a70  ee100134  vor.f.mh vr1{mr2}, vr2, vr0
001a74  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
001a78  00a00000  mfence { lm }
001a7c  e3010fea  loadli.w r3,  -2816(r30)
001a80  634c0fea  loadli.w r24,  -2812(r30)
001a84  e30c1fea  loadli.w r25,  -2808(r30)
001a88  634d1fea  loadli.w r26,  -2804(r30)
001a8c  e30d2fea  loadli.w r27,  -2800(r30)
001a90  634e2fea  loadli.w r28,  -2796(r30)
001a94  e3093fea  loadli.w r19,  -2792(r30)
001a98  e34b3fea  loadli.w r23,  -2788(r30)
001a9c  e3004fea  loadli.w r1,  -2784(r30)
001aa0  670d1fe2  storeli.w r1, -3632(r30)
001aa4  e3404fea  loadli.w r1,  -2780(r30)
001aa8  e70d1fe2  storeli.w r1, -3624(r30)
001aac  e3005fea  loadli.w r1,  -2776(r30)
001ab0  e74d1fe2  storeli.w r1, -3620(r30)
001ab4  e3405fea  loadli.w r1,  -2772(r30)
001ab8  674e1fe2  storeli.w r1, -3612(r30)
001abc  e3006fea  loadli.w r1,  -2768(r30)
001ac0  670f1fe2  storeli.w r1, -3600(r30)
001ac4  e3406fea  loadli.w r1,  -2764(r30)
001ac8  674f1fe2  storeli.w r1, -3596(r30)
001acc  e3007fea  loadli.w r1,  -2760(r30)
001ad0  e70f1fe2  storeli.w r1, -3592(r30)
001ad4  e3407fea  loadli.w r1,  -2756(r30)
001ad8  67001fe4  storeli.w r1, -3584(r30)
001adc  d78c0900  jal 19556
001ae0  e74f2fe2  storeli.w r2, -3588(r30)
001ae4  63014fe5  loadli.w r2,  -3424(r30)
001ae8  9f010c00  addli r3, r24, 0
001aec  d78c0900  jal 19556
001af0  670a2fe4  storeli.w r2, -3424(r30)
001af4  63414fe5  loadli.w r2,  -3420(r30)
001af8  9f810c00  addli r3, r25, 0
001afc  d78c0900  jal 19556
001b00  674a2fe4  storeli.w r2, -3420(r30)
001b04  63015fe5  loadli.w r2,  -3416(r30)
001b08  9f010d00  addli r3, r26, 0
001b0c  d78c0900  jal 19556
001b10  e70a2fe4  storeli.w r2, -3416(r30)
001b14  63415fe5  loadli.w r2,  -3412(r30)
001b18  9f810d00  addli r3, r27, 0
001b1c  d78c0900  jal 19556
001b20  e74a2fe4  storeli.w r2, -3412(r30)
001b24  63016fe5  loadli.w r2,  -3408(r30)
001b28  9f010e00  addli r3, r28, 0
001b2c  d78c0900  jal 19556
001b30  670b2fe4  storeli.w r2, -3408(r30)
001b34  1f010a00  addli r2, r20, 0
001b38  9f810900  addli r3, r19, 0
001b3c  1f0a0b00  addli r20, r22, 0
001b40  d78c0900  jal 19556
001b44  1f0e0100  addli r28, r2, 0
001b48  1f810a00  addli r2, r21, 0
001b4c  9f810b00  addli r3, r23, 0
001b50  d78c0900  jal 19556
001b54  9f0d0100  addli r27, r2, 0
001b58  6341afe3  loadli.w r2,  -3628(r30)
001b5c  e301afe3  loadli.w r3,  -3632(r30)
001b60  d78c0900  jal 19556
001b64  1f0c0100  addli r24, r2, 0
001b68  6301cfe3  loadli.w r2,  -3616(r30)
001b6c  e301bfe3  loadli.w r3,  -3624(r30)
001b70  d78c0900  jal 19556
001b74  9f0b0100  addli r23, r2, 0
001b78  6301dfe3  loadli.w r2,  -3608(r30)
001b7c  e341bfe3  loadli.w r3,  -3620(r30)
001b80  d78c0900  jal 19556
001b84  1f0b0100  addli r22, r2, 0
001b88  6341dfe3  loadli.w r2,  -3604(r30)
001b8c  e341cfe3  loadli.w r3,  -3612(r30)
001b90  d78c0900  jal 19556
001b94  9f0a0100  addli r21, r2, 0
001b98  63413fe5  loadli.w r2,  -3428(r30)
001b9c  e301efe3  loadli.w r3,  -3600(r30)
001ba0  d78c0900  jal 19556
001ba4  e7492fe4  storeli.w r2, -3428(r30)
001ba8  63017fe5  loadli.w r2,  -3400(r30)
001bac  e341efe3  loadli.w r3,  -3596(r30)
001bb0  d78c0900  jal 19556
001bb4  e70b2fe4  storeli.w r2, -3400(r30)
001bb8  63417fe5  loadli.w r2,  -3396(r30)
001bbc  e301ffe3  loadli.w r3,  -3592(r30)
001bc0  d78c0900  jal 19556
001bc4  e74b2fe4  storeli.w r2, -3396(r30)
001bc8  63018fe4  loadli.w r2,  -3520(r30)
001bcc  e3010fe4  loadli.w r3,  -3584(r30)
001bd0  d78c0900  jal 19556
001bd4  e3008fe5  loadli.w r1,  -3392(r30)
001bd8  6349ffe3  loadli.w r18,  -3588(r30)
001bdc  9f090100  addli r19, r2, 0
001be0  1f0a2a00  addli r20, r20, 16
001be4  1f01e000  addli r2, zero, 112
001be8  9f804000  addli r1, r1, 32
001bec  bb3a2afc  bneq r20, r2, -1364
001bf0  e3014fe5  loadli.w r3,  -3424(r30)
001bf4  1f010900  addli r2, r18, 0
001bf8  d78c0900  jal 19556
001bfc  e3414fe5  loadli.w r3,  -3420(r30)
001c00  d78c0900  jal 19556
001c04  e3015fe5  loadli.w r3,  -3416(r30)
001c08  d78c0900  jal 19556
001c0c  e3415fe5  loadli.w r3,  -3412(r30)
001c10  d78c0900  jal 19556
001c14  e3016fe5  loadli.w r3,  -3408(r30)
001c18  d78c0900  jal 19556
001c1c  9f010e00  addli r3, r28, 0
001c20  d78c0900  jal 19556
001c24  9f810d00  addli r3, r27, 0
001c28  d78c0900  jal 19556
001c2c  9f010c00  addli r3, r24, 0
001c30  d78c0900  jal 19556
001c34  9f810b00  addli r3, r23, 0
001c38  d78c0900  jal 19556
001c3c  9f010b00  addli r3, r22, 0
001c40  d78c0900  jal 19556
001c44  9f810a00  addli r3, r21, 0
001c48  d78c0900  jal 19556
001c4c  e3413fe5  loadli.w r3,  -3428(r30)
001c50  d78c0900  jal 19556
001c54  e3017fe5  loadli.w r3,  -3400(r30)
001c58  d78c0900  jal 19556
001c5c  e3417fe5  loadli.w r3,  -3396(r30)
001c60  d78c0900  jal 19556
001c64  9f810900  addli r3, r19, 0
001c68  d78c0900  jal 19556
001c6c  e3007fda  loadli.w r1,  -4808(r30)
001c70  73e02000  stores.w r2, 0(r1)
001c74  00a00300  mfence { lm, sm, gm }
001c78  e3411fdd  loadli.w r3,  -4468(r30)
001c7c  80a10104  csr_set csr3, r3
001c80  00d00100  sync_group
001c84  e3400fdd  loadli.w r1,  -4476(r30)
001c88  3bef0000  bneq r1, zero, 984
001c8c  e30aefd9  loadli.w r21,  -4880(r30)
001c90  efc0ca02  loads.w r1, 44(r21)
001c94  6fc10a00  loads.w r2, 0(r21)
001c98  efc14a00  loads.w r3, 4(r21)
001c9c  6fca8a00  loads.w r20, 8(r21)
001ca0  efc9ca00  loads.w r19, 12(r21)
001ca4  6fce0a01  loads.w r28, 16(r21)
001ca8  efcd4a01  loads.w r27, 20(r21)
001cac  6fcd8a01  loads.w r26, 24(r21)
001cb0  efccca01  loads.w r25, 28(r21)
001cb4  6fcc0a02  loads.w r24, 32(r21)
001cb8  efcb4a02  loads.w r23, 36(r21)
001cbc  6fcb8a02  loads.w r22, 40(r21)
001cc0  e7031fdc  storeli.w r1, -4552(r30)
001cc4  efc00a03  loads.w r1, 48(r21)
001cc8  e7431fdc  storeli.w r1, -4548(r30)
001ccc  efc04a03  loads.w r1, 52(r21)
001cd0  67041fdc  storeli.w r1, -4544(r30)
001cd4  efc08a03  loads.w r1, 56(r21)
001cd8  67441fdc  storeli.w r1, -4540(r30)
001cdc  efc0ca03  loads.w r1, 60(r21)
001ce0  e7041fdc  storeli.w r1, -4536(r30)
001ce4  efc00a04  loads.w r1, 64(r21)
001ce8  e7441fdc  storeli.w r1, -4532(r30)
001cec  efc04a04  loads.w r1, 68(r21)
001cf0  67051fdc  storeli.w r1, -4528(r30)
001cf4  efc08a04  loads.w r1, 72(r21)
001cf8  67451fdc  storeli.w r1, -4524(r30)
001cfc  efc0ca04  loads.w r1, 76(r21)
001d00  e7051fdc  storeli.w r1, -4520(r30)
001d04  efc00a05  loads.w r1, 80(r21)
001d08  e7451fdc  storeli.w r1, -4516(r30)
001d0c  efc04a05  loads.w r1, 84(r21)
001d10  67061fdc  storeli.w r1, -4512(r30)
001d14  efc08a05  loads.w r1, 88(r21)
001d18  67461fdc  storeli.w r1, -4508(r30)
001d1c  efc0ca05  loads.w r1, 92(r21)
001d20  e7061fdc  storeli.w r1, -4504(r30)
001d24  efc00a06  loads.w r1, 96(r21)
001d28  e7461fdc  storeli.w r1, -4500(r30)
001d2c  efc04a06  loads.w r1, 100(r21)
001d30  67071fdc  storeli.w r1, -4496(r30)
001d34  efc08a06  loads.w r1, 104(r21)
001d38  67471fdc  storeli.w r1, -4492(r30)
001d3c  efc0ca06  loads.w r1, 108(r21)
001d40  e7071fdc  storeli.w r1, -4488(r30)
001d44  efc00a07  loads.w r1, 112(r21)
001d48  e7471fdc  storeli.w r1, -4484(r30)
001d4c  efc04a07  loads.w r1, 116(r21)
001d50  67091fdc  storeli.w r1, -4464(r30)
001d54  efc08a07  loads.w r1, 120(r21)
001d58  67491fdc  storeli.w r1, -4460(r30)
001d5c  efc0ca07  loads.w r1, 124(r21)
001d60  e7091fdc  storeli.w r1, -4456(r30)
001d64  efc00a08  loads.w r1, 128(r21)
001d68  e7491fdc  storeli.w r1, -4452(r30)
001d6c  efc04a08  loads.w r1, 132(r21)
001d70  670a1fdc  storeli.w r1, -4448(r30)
001d74  efc08a08  loads.w r1, 136(r21)
001d78  674a1fdc  storeli.w r1, -4444(r30)
001d7c  efc0ca08  loads.w r1, 140(r21)
001d80  e70a1fdc  storeli.w r1, -4440(r30)
001d84  efc00a09  loads.w r1, 144(r21)
001d88  e74a1fdc  storeli.w r1, -4436(r30)
001d8c  efc04a09  loads.w r1, 148(r21)
001d90  670b1fdc  storeli.w r1, -4432(r30)
001d94  efc08a09  loads.w r1, 152(r21)
001d98  674b1fdc  storeli.w r1, -4428(r30)
001d9c  efc0ca09  loads.w r1, 156(r21)
001da0  e70b1fdc  storeli.w r1, -4424(r30)
001da4  efc00a0a  loads.w r1, 160(r21)
001da8  e74b1fdc  storeli.w r1, -4420(r30)
001dac  efc04a0a  loads.w r1, 164(r21)
001db0  670d1fe2  storeli.w r1, -3632(r30)
001db4  efc08a0a  loads.w r1, 168(r21)
001db8  674d1fe2  storeli.w r1, -3628(r30)
001dbc  efc0ca0a  loads.w r1, 172(r21)
001dc0  e70d1fe2  storeli.w r1, -3624(r30)
001dc4  efc00a0b  loads.w r1, 176(r21)
001dc8  e74d1fe2  storeli.w r1, -3620(r30)
001dcc  efc04a0b  loads.w r1, 180(r21)
001dd0  670e1fe2  storeli.w r1, -3616(r30)
001dd4  efc08a0b  loads.w r1, 184(r21)
001dd8  674e1fe2  storeli.w r1, -3612(r30)
001ddc  efc0ca0b  loads.w r1, 188(r21)
001de0  e70e1fe2  storeli.w r1, -3608(r30)
001de4  efc00a0c  loads.w r1, 192(r21)
001de8  e74e1fe2  storeli.w r1, -3604(r30)
001dec  efc04a0c  loads.w r1, 196(r21)
001df0  670f1fe2  storeli.w r1, -3600(r30)
001df4  efc08a0c  loads.w r1, 200(r21)
001df8  674f1fe2  storeli.w r1, -3596(r30)
001dfc  efc0ca0c  loads.w r1, 204(r21)
001e00  e70f1fe2  storeli.w r1, -3592(r30)
001e04  efc00a0d  loads.w r1, 208(r21)
001e08  e74f1fe2  storeli.w r1, -3588(r30)
001e0c  efc04a0d  loads.w r1, 212(r21)
001e10  67001fe4  storeli.w r1, -3584(r30)
001e14  efc08a0d  loads.w r1, 216(r21)
001e18  67041fe4  storeli.w r1, -3520(r30)
001e1c  efc0ca0d  loads.w r1, 220(r21)
001e20  e7491fe4  storeli.w r1, -3428(r30)
001e24  efc00a0e  loads.w r1, 224(r21)
001e28  670a1fe4  storeli.w r1, -3424(r30)
001e2c  efc04a0e  loads.w r1, 228(r21)
001e30  674a1fe4  storeli.w r1, -3420(r30)
001e34  efc08a0e  loads.w r1, 232(r21)
001e38  e70a1fe4  storeli.w r1, -3416(r30)
001e3c  efc0ca0e  loads.w r1, 236(r21)
001e40  e74a1fe4  storeli.w r1, -3412(r30)
001e44  efc00a0f  loads.w r1, 240(r21)
001e48  670b1fe4  storeli.w r1, -3408(r30)
001e4c  efc04a0f  loads.w r1, 244(r21)
001e50  e70b1fe4  storeli.w r1, -3400(r30)
001e54  efc08a0f  loads.w r1, 248(r21)
001e58  e74b1fe4  storeli.w r1, -3396(r30)
001e5c  efc0ca0f  loads.w r1, 252(r21)
001e60  670c1fe4  storeli.w r1, -3392(r30)
001e64  d78c0900  jal 19556
001e68  9f010a00  addli r3, r20, 0
001e6c  d78c0900  jal 19556
001e70  9f810900  addli r3, r19, 0
001e74  d78c0900  jal 19556
001e78  9f010e00  addli r3, r28, 0
001e7c  d78c0900  jal 19556
001e80  9f810d00  addli r3, r27, 0
001e84  d78c0900  jal 19556
001e88  9f010d00  addli r3, r26, 0
001e8c  d78c0900  jal 19556
001e90  9f810c00  addli r3, r25, 0
001e94  d78c0900  jal 19556
001e98  9f010c00  addli r3, r24, 0
001e9c  d78c0900  jal 19556
001ea0  9f810b00  addli r3, r23, 0
001ea4  d78c0900  jal 19556
001ea8  9f010b00  addli r3, r22, 0
001eac  d78c0900  jal 19556
001eb0  e3017fdc  loadli.w r3,  -4552(r30)
001eb4  d78c0900  jal 19556
001eb8  e3417fdc  loadli.w r3,  -4548(r30)
001ebc  d78c0900  jal 19556
001ec0  e3018fdc  loadli.w r3,  -4544(r30)
001ec4  d78c0900  jal 19556
001ec8  e3418fdc  loadli.w r3,  -4540(r30)
001ecc  d78c0900  jal 19556
001ed0  e3019fdc  loadli.w r3,  -4536(r30)
001ed4  d78c0900  jal 19556
001ed8  e3419fdc  loadli.w r3,  -4532(r30)
001edc  d78c0900  jal 19556
001ee0  e301afdc  loadli.w r3,  -4528(r30)
001ee4  d78c0900  jal 19556
001ee8  e341afdc  loadli.w r3,  -4524(r30)
001eec  d78c0900  jal 19556
001ef0  e301bfdc  loadli.w r3,  -4520(r30)
001ef4  d78c0900  jal 19556
001ef8  e341bfdc  loadli.w r3,  -4516(r30)
001efc  d78c0900  jal 19556
001f00  e301cfdc  loadli.w r3,  -4512(r30)
001f04  d78c0900  jal 19556
001f08  e341cfdc  loadli.w r3,  -4508(r30)
001f0c  d78c0900  jal 19556
001f10  e301dfdc  loadli.w r3,  -4504(r30)
001f14  d78c0900  jal 19556
001f18  e341dfdc  loadli.w r3,  -4500(r30)
001f1c  d78c0900  jal 19556
001f20  e301efdc  loadli.w r3,  -4496(r30)
001f24  d78c0900  jal 19556
001f28  e341efdc  loadli.w r3,  -4492(r30)
001f2c  d78c0900  jal 19556
001f30  e301ffdc  loadli.w r3,  -4488(r30)
001f34  d78c0900  jal 19556
001f38  e341ffdc  loadli.w r3,  -4484(r30)
001f3c  d78c0900  jal 19556
001f40  e3012fdd  loadli.w r3,  -4464(r30)
001f44  d78c0900  jal 19556
001f48  e3412fdd  loadli.w r3,  -4460(r30)
001f4c  d78c0900  jal 19556
001f50  e3013fdd  loadli.w r3,  -4456(r30)
001f54  d78c0900  jal 19556
001f58  e3413fdd  loadli.w r3,  -4452(r30)
001f5c  d78c0900  jal 19556
001f60  e3014fdd  loadli.w r3,  -4448(r30)
001f64  d78c0900  jal 19556
001f68  e3414fdd  loadli.w r3,  -4444(r30)
001f6c  d78c0900  jal 19556
001f70  e3015fdd  loadli.w r3,  -4440(r30)
001f74  d78c0900  jal 19556
001f78  e3415fdd  loadli.w r3,  -4436(r30)
001f7c  d78c0900  jal 19556
001f80  e3016fdd  loadli.w r3,  -4432(r30)
001f84  d78c0900  jal 19556
001f88  e3416fdd  loadli.w r3,  -4428(r30)
001f8c  d78c0900  jal 19556
001f90  e3017fdd  loadli.w r3,  -4424(r30)
001f94  d78c0900  jal 19556
001f98  e3417fdd  loadli.w r3,  -4420(r30)
001f9c  d78c0900  jal 19556
001fa0  e301afe3  loadli.w r3,  -3632(r30)
001fa4  d78c0900  jal 19556
001fa8  e341afe3  loadli.w r3,  -3628(r30)
001fac  d78c0900  jal 19556
001fb0  e301bfe3  loadli.w r3,  -3624(r30)
001fb4  d78c0900  jal 19556
001fb8  e341bfe3  loadli.w r3,  -3620(r30)
001fbc  d78c0900  jal 19556
001fc0  e301cfe3  loadli.w r3,  -3616(r30)
001fc4  d78c0900  jal 19556
001fc8  e341cfe3  loadli.w r3,  -3612(r30)
001fcc  d78c0900  jal 19556
001fd0  e301dfe3  loadli.w r3,  -3608(r30)
001fd4  d78c0900  jal 19556
001fd8  e341dfe3  loadli.w r3,  -3604(r30)
001fdc  d78c0900  jal 19556
001fe0  e301efe3  loadli.w r3,  -3600(r30)
001fe4  d78c0900  jal 19556
001fe8  e341efe3  loadli.w r3,  -3596(r30)
001fec  d78c0900  jal 19556
001ff0  e301ffe3  loadli.w r3,  -3592(r30)
001ff4  d78c0900  jal 19556
001ff8  e341ffe3  loadli.w r3,  -3588(r30)
001ffc  d78c0900  jal 19556
002000  e3010fe4  loadli.w r3,  -3584(r30)
002004  d78c0900  jal 19556
002008  e3018fe4  loadli.w r3,  -3520(r30)
00200c  d78c0900  jal 19556
002010  e3413fe5  loadli.w r3,  -3428(r30)
002014  d78c0900  jal 19556
002018  e3014fe5  loadli.w r3,  -3424(r30)
00201c  d78c0900  jal 19556
002020  e3414fe5  loadli.w r3,  -3420(r30)
002024  d78c0900  jal 19556
002028  e3015fe5  loadli.w r3,  -3416(r30)
00202c  d78c0900  jal 19556
002030  e3415fe5  loadli.w r3,  -3412(r30)
002034  d78c0900  jal 19556
002038  e3016fe5  loadli.w r3,  -3408(r30)
00203c  d78c0900  jal 19556
002040  e3017fe5  loadli.w r3,  -3400(r30)
002044  d78c0900  jal 19556
002048  e3417fe5  loadli.w r3,  -3396(r30)
00204c  d78c0900  jal 19556
002050  e3018fe5  loadli.w r3,  -3392(r30)
002054  d78c0900  jal 19556
002058  e3411fdd  loadli.w r3,  -4468(r30)
00205c  73e02a00  stores.w r2, 0(r21)
002060  ab000000  lui r1, 0
002064  00a00300  mfence { lm, sm, gm }
002068  80a10104  csr_set csr3, r3
00206c  00d00100  sync_group
002070  9f010fe2  addli r3, r30, -3840
002074  9f080ffe  addli r17, r30, -256
002078  1f090000  addli r18, zero, 0
00207c  9f800000  addli r1, r1, 0
002080  c2950102  vload_mask16.mz vr11{mr1}, 0(r3)
002084  1f810000  addli r2, r1, 0
002088  ef400100  loads.w r1, 0(r2)
00208c  6a94b022  vor.f.mz vr8{mr1}, r1, vr11
002090  73601110  stores.w r1, 256(r2)
002094  9f000fe1  addli r1, r30, -3968
002098  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00209c  9f008fe0  addli r1, r30, -4032
0020a0  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0020a4  9f000fe0  addli r1, r30, -4096
0020a8  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0020ac  9f008fdf  addli r1, r30, -4160
0020b0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0020b4  9f000fdf  addli r1, r30, -4224
0020b8  1e108002  vsub.f.mz.rn vr0{mr1}, vr0, vr8
0020bc  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
0020c0  9f008fde  addli r1, r30, -4288
0020c4  9e908002  vsub.f.mz.rn vr1{mr1}, vr1, vr8
0020c8  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0020cc  9f000fde  addli r1, r30, -4352
0020d0  1e118102  vsub.f.mz.rn vr2{mr1}, vr2, vr8
0020d4  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
0020d8  9f008fdd  addli r1, r30, -4416
0020dc  9e918102  vsub.f.mz.rn vr3{mr1}, vr3, vr8
0020e0  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0020e4  46100fe2  vstore_mask16.mz vr0{mr1}, 1792(r30)
0020e8  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
0020ec  46182fe2  vstore_mask16.mz vr2{mr1}, 1920(r30)
0020f0  1e128202  vsub.f.mz.rn vr4{mr1}, vr4, vr8
0020f4  461c3fe2  vstore_mask16.mz vr3{mr1}, 1984(r30)
0020f8  9e928202  vsub.f.mz.rn vr5{mr1}, vr5, vr8
0020fc  00a00000  mfence { lm }
002100  e3800800  loadli.w r1,  0(r17)
002104  63c10800  loadli.w r2,  4(r17)
002108  e3811800  loadli.w r3,  8(r17)
00210c  63c21800  loadli.w r4,  12(r17)
002110  e3822800  loadli.w r5,  16(r17)
002114  63c32800  loadli.w r6,  20(r17)
002118  e3833800  loadli.w r7,  24(r17)
00211c  63c43800  loadli.w r8,  28(r17)
002120  e3844800  loadli.w r9,  32(r17)
002124  63c54800  loadli.w r10,  36(r17)
002128  e3855800  loadli.w r11,  40(r17)
00212c  63c65800  loadli.w r12,  44(r17)
002130  e3866800  loadli.w r13,  48(r17)
002134  63c76800  loadli.w r14,  52(r17)
002138  e3877800  loadli.w r15,  56(r17)
00213c  63c87800  loadli.w r16,  60(r17)
002140  8f800000  exp.f.rn r1, r1
002144  0f010100  exp.f.rn r2, r2
002148  8f810100  exp.f.rn r3, r3
00214c  0f020200  exp.f.rn r4, r4
002150  8f820200  exp.f.rn r5, r5
002154  0f030300  exp.f.rn r6, r6
002158  8f830300  exp.f.rn r7, r7
00215c  0f040400  exp.f.rn r8, r8
002160  8f840400  exp.f.rn r9, r9
002164  0f050500  exp.f.rn r10, r10
002168  8f850500  exp.f.rn r11, r11
00216c  0f060600  exp.f.rn r12, r12
002170  8f860600  exp.f.rn r13, r13
002174  0f070700  exp.f.rn r14, r14
002178  8f870700  exp.f.rn r15, r15
00217c  0f080800  exp.f.rn r16, r16
002180  67801800  storeli.w r1, 0(r17)
002184  67c02800  storeli.w r2, 4(r17)
002188  e7803800  storeli.w r3, 8(r17)
00218c  e7c04800  storeli.w r4, 12(r17)
002190  67815800  storeli.w r5, 16(r17)
002194  67c16800  storeli.w r6, 20(r17)
002198  e7817800  storeli.w r7, 24(r17)
00219c  e7c18800  storeli.w r8, 28(r17)
0021a0  67829800  storeli.w r9, 32(r17)
0021a4  67c2a800  storeli.w r10, 36(r17)
0021a8  e782b800  storeli.w r11, 40(r17)
0021ac  e7c2c800  storeli.w r12, 44(r17)
0021b0  6783d800  storeli.w r13, 48(r17)
0021b4  67c3e800  storeli.w r14, 52(r17)
0021b8  e783f800  storeli.w r15, 56(r17)
0021bc  e7c30801  storeli.w r16, 60(r17)
0021c0  e3808800  loadli.w r1,  64(r17)
0021c4  63c18800  loadli.w r2,  68(r17)
0021c8  e3819800  loadli.w r3,  72(r17)
0021cc  63c29800  loadli.w r4,  76(r17)
0021d0  e382a800  loadli.w r5,  80(r17)
0021d4  63c3a800  loadli.w r6,  84(r17)
0021d8  e383b800  loadli.w r7,  88(r17)
0021dc  63c4b800  loadli.w r8,  92(r17)
0021e0  e384c800  loadli.w r9,  96(r17)
0021e4  63c5c800  loadli.w r10,  100(r17)
0021e8  e385d800  loadli.w r11,  104(r17)
0021ec  63c6d800  loadli.w r12,  108(r17)
0021f0  e386e800  loadli.w r13,  112(r17)
0021f4  63c7e800  loadli.w r14,  116(r17)
0021f8  e387f800  loadli.w r15,  120(r17)
0021fc  63c8f800  loadli.w r16,  124(r17)
002200  8f800000  exp.f.rn r1, r1
002204  0f010100  exp.f.rn r2, r2
002208  8f810100  exp.f.rn r3, r3
00220c  0f020200  exp.f.rn r4, r4
002210  8f820200  exp.f.rn r5, r5
002214  0f030300  exp.f.rn r6, r6
002218  8f830300  exp.f.rn r7, r7
00221c  0f040400  exp.f.rn r8, r8
002220  8f840400  exp.f.rn r9, r9
002224  0f050500  exp.f.rn r10, r10
002228  8f850500  exp.f.rn r11, r11
00222c  0f060600  exp.f.rn r12, r12
002230  8f860600  exp.f.rn r13, r13
002234  0f070700  exp.f.rn r14, r14
002238  8f870700  exp.f.rn r15, r15
00223c  0f080800  exp.f.rn r16, r16
002240  67841800  storeli.w r1, 64(r17)
002244  67c42800  storeli.w r2, 68(r17)
002248  e7843800  storeli.w r3, 72(r17)
00224c  e7c44800  storeli.w r4, 76(r17)
002250  67855800  storeli.w r5, 80(r17)
002254  67c56800  storeli.w r6, 84(r17)
002258  e7857800  storeli.w r7, 88(r17)
00225c  e7c58800  storeli.w r8, 92(r17)
002260  67869800  storeli.w r9, 96(r17)
002264  67c6a800  storeli.w r10, 100(r17)
002268  e786b800  storeli.w r11, 104(r17)
00226c  e7c6c800  storeli.w r12, 108(r17)
002270  6787d800  storeli.w r13, 112(r17)
002274  67c7e800  storeli.w r14, 116(r17)
002278  e787f800  storeli.w r15, 120(r17)
00227c  e7c70801  storeli.w r16, 124(r17)
002280  e3800801  loadli.w r1,  128(r17)
002284  63c10801  loadli.w r2,  132(r17)
002288  e3811801  loadli.w r3,  136(r17)
00228c  63c21801  loadli.w r4,  140(r17)
002290  e3822801  loadli.w r5,  144(r17)
002294  63c32801  loadli.w r6,  148(r17)
002298  e3833801  loadli.w r7,  152(r17)
00229c  63c43801  loadli.w r8,  156(r17)
0022a0  e3844801  loadli.w r9,  160(r17)
0022a4  63c54801  loadli.w r10,  164(r17)
0022a8  e3855801  loadli.w r11,  168(r17)
0022ac  63c65801  loadli.w r12,  172(r17)
0022b0  e3866801  loadli.w r13,  176(r17)
0022b4  63c76801  loadli.w r14,  180(r17)
0022b8  e3877801  loadli.w r15,  184(r17)
0022bc  63c87801  loadli.w r16,  188(r17)
0022c0  8f800000  exp.f.rn r1, r1
0022c4  0f010100  exp.f.rn r2, r2
0022c8  8f810100  exp.f.rn r3, r3
0022cc  0f020200  exp.f.rn r4, r4
0022d0  8f820200  exp.f.rn r5, r5
0022d4  0f030300  exp.f.rn r6, r6
0022d8  8f830300  exp.f.rn r7, r7
0022dc  0f040400  exp.f.rn r8, r8
0022e0  8f840400  exp.f.rn r9, r9
0022e4  0f050500  exp.f.rn r10, r10
0022e8  8f850500  exp.f.rn r11, r11
0022ec  0f060600  exp.f.rn r12, r12
0022f0  8f860600  exp.f.rn r13, r13
0022f4  0f070700  exp.f.rn r14, r14
0022f8  8f870700  exp.f.rn r15, r15
0022fc  0f080800  exp.f.rn r16, r16
002300  67881800  storeli.w r1, 128(r17)
002304  67c82800  storeli.w r2, 132(r17)
002308  e7883800  storeli.w r3, 136(r17)
00230c  e7c84800  storeli.w r4, 140(r17)
002310  67895800  storeli.w r5, 144(r17)
002314  67c96800  storeli.w r6, 148(r17)
002318  e7897800  storeli.w r7, 152(r17)
00231c  e7c98800  storeli.w r8, 156(r17)
002320  678a9800  storeli.w r9, 160(r17)
002324  67caa800  storeli.w r10, 164(r17)
002328  e78ab800  storeli.w r11, 168(r17)
00232c  e7cac800  storeli.w r12, 172(r17)
002330  678bd800  storeli.w r13, 176(r17)
002334  67cbe800  storeli.w r14, 180(r17)
002338  e78bf800  storeli.w r15, 184(r17)
00233c  e7cb0801  storeli.w r16, 188(r17)
002340  e3808801  loadli.w r1,  192(r17)
002344  63c18801  loadli.w r2,  196(r17)
002348  e3819801  loadli.w r3,  200(r17)
00234c  63c29801  loadli.w r4,  204(r17)
002350  e382a801  loadli.w r5,  208(r17)
002354  63c3a801  loadli.w r6,  212(r17)
002358  e383b801  loadli.w r7,  216(r17)
00235c  63c4b801  loadli.w r8,  220(r17)
002360  e384c801  loadli.w r9,  224(r17)
002364  63c5c801  loadli.w r10,  228(r17)
002368  e385d801  loadli.w r11,  232(r17)
00236c  63c6d801  loadli.w r12,  236(r17)
002370  e386e801  loadli.w r13,  240(r17)
002374  63c7e801  loadli.w r14,  244(r17)
002378  e387f801  loadli.w r15,  248(r17)
00237c  63c8f801  loadli.w r16,  252(r17)
002380  8f800000  exp.f.rn r1, r1
002384  0f010100  exp.f.rn r2, r2
002388  8f810100  exp.f.rn r3, r3
00238c  0f020200  exp.f.rn r4, r4
002390  8f820200  exp.f.rn r5, r5
002394  0f030300  exp.f.rn r6, r6
002398  8f830300  exp.f.rn r7, r7
00239c  0f040400  exp.f.rn r8, r8
0023a0  8f840400  exp.f.rn r9, r9
0023a4  0f050500  exp.f.rn r10, r10
0023a8  8f850500  exp.f.rn r11, r11
0023ac  0f060600  exp.f.rn r12, r12
0023b0  8f860600  exp.f.rn r13, r13
0023b4  0f070700  exp.f.rn r14, r14
0023b8  8f870700  exp.f.rn r15, r15
0023bc  0f080800  exp.f.rn r16, r16
0023c0  678c1800  storeli.w r1, 192(r17)
0023c4  67cc2800  storeli.w r2, 196(r17)
0023c8  e78c3800  storeli.w r3, 200(r17)
0023cc  e7cc4800  storeli.w r4, 204(r17)
0023d0  678d5800  storeli.w r5, 208(r17)
0023d4  67cd6800  storeli.w r6, 212(r17)
0023d8  e78d7800  storeli.w r7, 216(r17)
0023dc  e7cd8800  storeli.w r8, 220(r17)
0023e0  678e9800  storeli.w r9, 224(r17)
0023e4  67cea800  storeli.w r10, 228(r17)
0023e8  e78eb800  storeli.w r11, 232(r17)
0023ec  e7cec800  storeli.w r12, 236(r17)
0023f0  678fd800  storeli.w r13, 240(r17)
0023f4  67cfe800  storeli.w r14, 244(r17)
0023f8  e78ff800  storeli.w r15, 248(r17)
0023fc  e7cf0801  storeli.w r16, 252(r17)
002400  00a00000  mfence { lm }
002404  1e138302  vsub.f.mz.rn vr6{mr1}, vr6, vr8
002408  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
00240c  c2108fe2  vload_mask16.mz vr1{mr1}, 1856(r30)
002410  42110fe3  vload_mask16.mz vr2{mr1}, 1920(r30)
002414  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
002418  46104fe2  vstore_mask16.mz vr4{mr1}, 1792(r30)
00241c  9e938302  vsub.f.mz.rn vr7{mr1}, vr7, vr8
002420  46145fe2  vstore_mask16.mz vr5{mr1}, 1856(r30)
002424  46186fe2  vstore_mask16.mz vr6{mr1}, 1920(r30)
002428  461c7fe2  vstore_mask16.mz vr7{mr1}, 1984(r30)
00242c  00a00000  mfence { lm }
002430  e3800800  loadli.w r1,  0(r17)
002434  63c10800  loadli.w r2,  4(r17)
002438  e3811800  loadli.w r3,  8(r17)
00243c  63c21800  loadli.w r4,  12(r17)
002440  e3822800  loadli.w r5,  16(r17)
002444  63c32800  loadli.w r6,  20(r17)
002448  e3833800  loadli.w r7,  24(r17)
00244c  63c43800  loadli.w r8,  28(r17)
002450  e3844800  loadli.w r9,  32(r17)
002454  63c54800  loadli.w r10,  36(r17)
002458  e3855800  loadli.w r11,  40(r17)
00245c  63c65800  loadli.w r12,  44(r17)
002460  e3866800  loadli.w r13,  48(r17)
002464  63c76800  loadli.w r14,  52(r17)
002468  e3877800  loadli.w r15,  56(r17)
00246c  63c87800  loadli.w r16,  60(r17)
002470  8f800000  exp.f.rn r1, r1
002474  0f010100  exp.f.rn r2, r2
002478  8f810100  exp.f.rn r3, r3
00247c  0f020200  exp.f.rn r4, r4
002480  8f820200  exp.f.rn r5, r5
002484  0f030300  exp.f.rn r6, r6
002488  8f830300  exp.f.rn r7, r7
00248c  0f040400  exp.f.rn r8, r8
002490  8f840400  exp.f.rn r9, r9
002494  0f050500  exp.f.rn r10, r10
002498  8f850500  exp.f.rn r11, r11
00249c  0f060600  exp.f.rn r12, r12
0024a0  8f860600  exp.f.rn r13, r13
0024a4  0f070700  exp.f.rn r14, r14
0024a8  8f870700  exp.f.rn r15, r15
0024ac  0f080800  exp.f.rn r16, r16
0024b0  67801800  storeli.w r1, 0(r17)
0024b4  67c02800  storeli.w r2, 4(r17)
0024b8  e7803800  storeli.w r3, 8(r17)
0024bc  e7c04800  storeli.w r4, 12(r17)
0024c0  67815800  storeli.w r5, 16(r17)
0024c4  67c16800  storeli.w r6, 20(r17)
0024c8  e7817800  storeli.w r7, 24(r17)
0024cc  e7c18800  storeli.w r8, 28(r17)
0024d0  67829800  storeli.w r9, 32(r17)
0024d4  67c2a800  storeli.w r10, 36(r17)
0024d8  e782b800  storeli.w r11, 40(r17)
0024dc  e7c2c800  storeli.w r12, 44(r17)
0024e0  6783d800  storeli.w r13, 48(r17)
0024e4  67c3e800  storeli.w r14, 52(r17)
0024e8  e783f800  storeli.w r15, 56(r17)
0024ec  e7c30801  storeli.w r16, 60(r17)
0024f0  e3808800  loadli.w r1,  64(r17)
0024f4  63c18800  loadli.w r2,  68(r17)
0024f8  e3819800  loadli.w r3,  72(r17)
0024fc  63c29800  loadli.w r4,  76(r17)
002500  e382a800  loadli.w r5,  80(r17)
002504  63c3a800  loadli.w r6,  84(r17)
002508  e383b800  loadli.w r7,  88(r17)
00250c  63c4b800  loadli.w r8,  92(r17)
002510  e384c800  loadli.w r9,  96(r17)
002514  63c5c800  loadli.w r10,  100(r17)
002518  e385d800  loadli.w r11,  104(r17)
00251c  63c6d800  loadli.w r12,  108(r17)
002520  e386e800  loadli.w r13,  112(r17)
002524  63c7e800  loadli.w r14,  116(r17)
002528  e387f800  loadli.w r15,  120(r17)
00252c  63c8f800  loadli.w r16,  124(r17)
002530  8f800000  exp.f.rn r1, r1
002534  0f010100  exp.f.rn r2, r2
002538  8f810100  exp.f.rn r3, r3
00253c  0f020200  exp.f.rn r4, r4
002540  8f820200  exp.f.rn r5, r5
002544  0f030300  exp.f.rn r6, r6
002548  8f830300  exp.f.rn r7, r7
00254c  0f040400  exp.f.rn r8, r8
002550  8f840400  exp.f.rn r9, r9
002554  0f050500  exp.f.rn r10, r10
002558  8f850500  exp.f.rn r11, r11
00255c  0f060600  exp.f.rn r12, r12
002560  8f860600  exp.f.rn r13, r13
002564  0f070700  exp.f.rn r14, r14
002568  8f870700  exp.f.rn r15, r15
00256c  0f080800  exp.f.rn r16, r16
002570  67841800  storeli.w r1, 64(r17)
002574  67c42800  storeli.w r2, 68(r17)
002578  e7843800  storeli.w r3, 72(r17)
00257c  e7c44800  storeli.w r4, 76(r17)
002580  67855800  storeli.w r5, 80(r17)
002584  67c56800  storeli.w r6, 84(r17)
002588  e7857800  storeli.w r7, 88(r17)
00258c  e7c58800  storeli.w r8, 92(r17)
002590  67869800  storeli.w r9, 96(r17)
002594  67c6a800  storeli.w r10, 100(r17)
002598  e786b800  storeli.w r11, 104(r17)
00259c  e7c6c800  storeli.w r12, 108(r17)
0025a0  6787d800  storeli.w r13, 112(r17)
0025a4  67c7e800  storeli.w r14, 116(r17)
0025a8  e787f800  storeli.w r15, 120(r17)
0025ac  e7c70801  storeli.w r16, 124(r17)
0025b0  e3800801  loadli.w r1,  128(r17)
0025b4  63c10801  loadli.w r2,  132(r17)
0025b8  e3811801  loadli.w r3,  136(r17)
0025bc  63c21801  loadli.w r4,  140(r17)
0025c0  e3822801  loadli.w r5,  144(r17)
0025c4  63c32801  loadli.w r6,  148(r17)
0025c8  e3833801  loadli.w r7,  152(r17)
0025cc  63c43801  loadli.w r8,  156(r17)
0025d0  e3844801  loadli.w r9,  160(r17)
0025d4  63c54801  loadli.w r10,  164(r17)
0025d8  e3855801  loadli.w r11,  168(r17)
0025dc  63c65801  loadli.w r12,  172(r17)
0025e0  e3866801  loadli.w r13,  176(r17)
0025e4  63c76801  loadli.w r14,  180(r17)
0025e8  e3877801  loadli.w r15,  184(r17)
0025ec  63c87801  loadli.w r16,  188(r17)
0025f0  8f800000  exp.f.rn r1, r1
0025f4  0f010100  exp.f.rn r2, r2
0025f8  8f810100  exp.f.rn r3, r3
0025fc  0f020200  exp.f.rn r4, r4
002600  8f820200  exp.f.rn r5, r5
002604  0f030300  exp.f.rn r6, r6
002608  8f830300  exp.f.rn r7, r7
00260c  0f040400  exp.f.rn r8, r8
002610  8f840400  exp.f.rn r9, r9
002614  0f050500  exp.f.rn r10, r10
002618  8f850500  exp.f.rn r11, r11
00261c  0f060600  exp.f.rn r12, r12
002620  8f860600  exp.f.rn r13, r13
002624  0f070700  exp.f.rn r14, r14
002628  8f870700  exp.f.rn r15, r15
00262c  0f080800  exp.f.rn r16, r16
002630  67881800  storeli.w r1, 128(r17)
002634  67c82800  storeli.w r2, 132(r17)
002638  e7883800  storeli.w r3, 136(r17)
00263c  e7c84800  storeli.w r4, 140(r17)
002640  67895800  storeli.w r5, 144(r17)
002644  67c96800  storeli.w r6, 148(r17)
002648  e7897800  storeli.w r7, 152(r17)
00264c  e7c98800  storeli.w r8, 156(r17)
002650  678a9800  storeli.w r9, 160(r17)
002654  67caa800  storeli.w r10, 164(r17)
002658  e78ab800  storeli.w r11, 168(r17)
00265c  e7cac800  storeli.w r12, 172(r17)
002660  678bd800  storeli.w r13, 176(r17)
002664  67cbe800  storeli.w r14, 180(r17)
002668  e78bf800  storeli.w r15, 184(r17)
00266c  e7cb0801  storeli.w r16, 188(r17)
002670  e3808801  loadli.w r1,  192(r17)
002674  63c18801  loadli.w r2,  196(r17)
002678  e3819801  loadli.w r3,  200(r17)
00267c  63c29801  loadli.w r4,  204(r17)
002680  e382a801  loadli.w r5,  208(r17)
002684  63c3a801  loadli.w r6,  212(r17)
002688  e383b801  loadli.w r7,  216(r17)
00268c  63c4b801  loadli.w r8,  220(r17)
002690  e384c801  loadli.w r9,  224(r17)
002694  63c5c801  loadli.w r10,  228(r17)
002698  e385d801  loadli.w r11,  232(r17)
00269c  63c6d801  loadli.w r12,  236(r17)
0026a0  e386e801  loadli.w r13,  240(r17)
0026a4  63c7e801  loadli.w r14,  244(r17)
0026a8  e387f801  loadli.w r15,  248(r17)
0026ac  63c8f801  loadli.w r16,  252(r17)
0026b0  8f800000  exp.f.rn r1, r1
0026b4  0f010100  exp.f.rn r2, r2
0026b8  8f810100  exp.f.rn r3, r3
0026bc  0f020200  exp.f.rn r4, r4
0026c0  8f820200  exp.f.rn r5, r5
0026c4  0f030300  exp.f.rn r6, r6
0026c8  8f830300  exp.f.rn r7, r7
0026cc  0f040400  exp.f.rn r8, r8
0026d0  8f840400  exp.f.rn r9, r9
0026d4  0f050500  exp.f.rn r10, r10
0026d8  8f850500  exp.f.rn r11, r11
0026dc  0f060600  exp.f.rn r12, r12
0026e0  8f860600  exp.f.rn r13, r13
0026e4  0f070700  exp.f.rn r14, r14
0026e8  8f870700  exp.f.rn r15, r15
0026ec  0f080800  exp.f.rn r16, r16
0026f0  678c1800  storeli.w r1, 192(r17)
0026f4  67cc2800  storeli.w r2, 196(r17)
0026f8  e78c3800  storeli.w r3, 200(r17)
0026fc  e7cc4800  storeli.w r4, 204(r17)
002700  678d5800  storeli.w r5, 208(r17)
002704  67cd6800  storeli.w r6, 212(r17)
002708  e78d7800  storeli.w r7, 216(r17)
00270c  e7cd8800  storeli.w r8, 220(r17)
002710  678e9800  storeli.w r9, 224(r17)
002714  67cea800  storeli.w r10, 228(r17)
002718  e78eb800  storeli.w r11, 232(r17)
00271c  e7cec800  storeli.w r12, 236(r17)
002720  678fd800  storeli.w r13, 240(r17)
002724  67cfe800  storeli.w r14, 244(r17)
002728  e78ff800  storeli.w r15, 248(r17)
00272c  e7cf0801  storeli.w r16, 252(r17)
002730  00a00000  mfence { lm }
002734  9f008fe4  addli r1, r30, -3520
002738  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
00273c  c2128fe2  vload_mask16.mz vr5{mr1}, 1856(r30)
002740  42130fe3  vload_mask16.mz vr6{mr1}, 1920(r30)
002744  c2138fe3  vload_mask16.mz vr7{mr1}, 1984(r30)
002748  00a00000  mfence { lm }
00274c  9f140020  addli r9, zero, 4097
002750  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002754  9f000ff6  addli r1, r30, -1280
002758  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00275c  9f000fe4  addli r1, r30, -3584
002760  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002764  9f008ff6  addli r1, r30, -1216
002768  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00276c  9f000ff7  addli r1, r30, -1152
002770  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
002774  9f008ff7  addli r1, r30, -1088
002778  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
00277c  46104f82  vstore_mask16.mz vr4{mr1}, 1024(r30)
002780  46145f82  vstore_mask16.mz vr5{mr1}, 1088(r30)
002784  46186f82  vstore_mask16.mz vr6{mr1}, 1152(r30)
002788  461c7f82  vstore_mask16.mz vr7{mr1}, 1216(r30)
00278c  9f000fe3  addli r1, r30, -3712
002790  00a00000  mfence { lm }
002794  63020ff6  loadli.w r4,  -1280(r30)
002798  e3470ff6  loadli.w r15,  -1276(r30)
00279c  63071ff6  loadli.w r14,  -1272(r30)
0027a0  e3461ff6  loadli.w r13,  -1268(r30)
0027a4  63062ff6  loadli.w r12,  -1264(r30)
0027a8  e3452ff6  loadli.w r11,  -1260(r30)
0027ac  63043ff6  loadli.w r8,  -1256(r30)
0027b0  e3423ff6  loadli.w r5,  -1252(r30)
0027b4  e30a4ff6  loadli.w r21,  -1248(r30)
0027b8  634a4ff6  loadli.w r20,  -1244(r30)
0027bc  e3095ff6  loadli.w r19,  -1240(r30)
0027c0  63485ff6  loadli.w r16,  -1236(r30)
0027c4  e3036ff6  loadli.w r7,  -1232(r30)
0027c8  63436ff6  loadli.w r6,  -1228(r30)
0027cc  63057ff6  loadli.w r10,  -1224(r30)
0027d0  63417ff6  loadli.w r2,  -1220(r30)
0027d4  e3088ff6  loadli.w r17,  -1216(r30)
0027d8  e3488ff6  loadli.w r17,  -1212(r30)
0027dc  e3089ff6  loadli.w r17,  -1208(r30)
0027e0  e3489ff6  loadli.w r17,  -1204(r30)
0027e4  e308aff6  loadli.w r17,  -1200(r30)
0027e8  e348aff6  loadli.w r17,  -1196(r30)
0027ec  e308bff6  loadli.w r17,  -1192(r30)
0027f0  e348bff6  loadli.w r17,  -1188(r30)
0027f4  e308cff6  loadli.w r17,  -1184(r30)
0027f8  e348cff6  loadli.w r17,  -1180(r30)
0027fc  e308dff6  loadli.w r17,  -1176(r30)
002800  e348dff6  loadli.w r17,  -1172(r30)
002804  e308eff6  loadli.w r17,  -1168(r30)
002808  e348eff6  loadli.w r17,  -1164(r30)
00280c  e308fff6  loadli.w r17,  -1160(r30)
002810  e348fff6  loadli.w r17,  -1156(r30)
002814  e3080ff7  loadli.w r17,  -1152(r30)
002818  e3480ff7  loadli.w r17,  -1148(r30)
00281c  e3081ff7  loadli.w r17,  -1144(r30)
002820  e3481ff7  loadli.w r17,  -1140(r30)
002824  e3082ff7  loadli.w r17,  -1136(r30)
002828  e3482ff7  loadli.w r17,  -1132(r30)
00282c  e3083ff7  loadli.w r17,  -1128(r30)
002830  e3483ff7  loadli.w r17,  -1124(r30)
002834  e3084ff7  loadli.w r17,  -1120(r30)
002838  e3484ff7  loadli.w r17,  -1116(r30)
00283c  e3085ff7  loadli.w r17,  -1112(r30)
002840  e3485ff7  loadli.w r17,  -1108(r30)
002844  e3086ff7  loadli.w r17,  -1104(r30)
002848  e3486ff7  loadli.w r17,  -1100(r30)
00284c  e3087ff7  loadli.w r17,  -1096(r30)
002850  e3487ff7  loadli.w r17,  -1092(r30)
002854  e3088ff7  loadli.w r17,  -1088(r30)
002858  e3488ff7  loadli.w r17,  -1084(r30)
00285c  e3089ff7  loadli.w r17,  -1080(r30)
002860  e3489ff7  loadli.w r17,  -1076(r30)
002864  e308aff7  loadli.w r17,  -1072(r30)
002868  e348aff7  loadli.w r17,  -1068(r30)
00286c  e308bff7  loadli.w r17,  -1064(r30)
002870  e348bff7  loadli.w r17,  -1060(r30)
002874  e308cff7  loadli.w r17,  -1056(r30)
002878  e348cff7  loadli.w r17,  -1052(r30)
00287c  e308dff7  loadli.w r17,  -1048(r30)
002880  e348dff7  loadli.w r17,  -1044(r30)
002884  e308eff7  loadli.w r17,  -1040(r30)
002888  e348eff7  loadli.w r17,  -1036(r30)
00288c  e308fff7  loadli.w r17,  -1032(r30)
002890  e348fff7  loadli.w r17,  -1028(r30)
002894  e3080ff8  loadli.w r17,  -1024(r30)
002898  e3480ff8  loadli.w r17,  -1020(r30)
00289c  e3081ff8  loadli.w r17,  -1016(r30)
0028a0  e3481ff8  loadli.w r17,  -1012(r30)
0028a4  e3082ff8  loadli.w r17,  -1008(r30)
0028a8  e3482ff8  loadli.w r17,  -1004(r30)
0028ac  e3083ff8  loadli.w r17,  -1000(r30)
0028b0  e3483ff8  loadli.w r17,  -996(r30)
0028b4  e3084ff8  loadli.w r17,  -992(r30)
0028b8  e3484ff8  loadli.w r17,  -988(r30)
0028bc  e3085ff8  loadli.w r17,  -984(r30)
0028c0  e3485ff8  loadli.w r17,  -980(r30)
0028c4  e3086ff8  loadli.w r17,  -976(r30)
0028c8  e3486ff8  loadli.w r17,  -972(r30)
0028cc  e3087ff8  loadli.w r17,  -968(r30)
0028d0  e3487ff8  loadli.w r17,  -964(r30)
0028d4  e3088ff8  loadli.w r17,  -960(r30)
0028d8  e3488ff8  loadli.w r17,  -956(r30)
0028dc  e3089ff8  loadli.w r17,  -952(r30)
0028e0  e3489ff8  loadli.w r17,  -948(r30)
0028e4  e308aff8  loadli.w r17,  -944(r30)
0028e8  e348aff8  loadli.w r17,  -940(r30)
0028ec  e308bff8  loadli.w r17,  -936(r30)
0028f0  e348bff8  loadli.w r17,  -932(r30)
0028f4  e308cff8  loadli.w r17,  -928(r30)
0028f8  e348cff8  loadli.w r17,  -924(r30)
0028fc  e308dff8  loadli.w r17,  -920(r30)
002900  e348dff8  loadli.w r17,  -916(r30)
002904  e308eff8  loadli.w r17,  -912(r30)
002908  e348eff8  loadli.w r17,  -908(r30)
00290c  e308fff8  loadli.w r17,  -904(r30)
002910  e348fff8  loadli.w r17,  -900(r30)
002914  e3080ff9  loadli.w r17,  -896(r30)
002918  e3480ff9  loadli.w r17,  -892(r30)
00291c  e3081ff9  loadli.w r17,  -888(r30)
002920  e3481ff9  loadli.w r17,  -884(r30)
002924  e3082ff9  loadli.w r17,  -880(r30)
002928  e3482ff9  loadli.w r17,  -876(r30)
00292c  e3083ff9  loadli.w r17,  -872(r30)
002930  e3483ff9  loadli.w r17,  -868(r30)
002934  e3084ff9  loadli.w r17,  -864(r30)
002938  e3484ff9  loadli.w r17,  -860(r30)
00293c  e3085ff9  loadli.w r17,  -856(r30)
002940  e3485ff9  loadli.w r17,  -852(r30)
002944  e3086ff9  loadli.w r17,  -848(r30)
002948  e3486ff9  loadli.w r17,  -844(r30)
00294c  e3087ff9  loadli.w r17,  -840(r30)
002950  e3487ff9  loadli.w r17,  -836(r30)
002954  e3088ff9  loadli.w r17,  -832(r30)
002958  e3488ff9  loadli.w r17,  -828(r30)
00295c  e3089ff9  loadli.w r17,  -824(r30)
002960  e3489ff9  loadli.w r17,  -820(r30)
002964  e308aff9  loadli.w r17,  -816(r30)
002968  e348aff9  loadli.w r17,  -812(r30)
00296c  e308bff9  loadli.w r17,  -808(r30)
002970  e348bff9  loadli.w r17,  -804(r30)
002974  e308cff9  loadli.w r17,  -800(r30)
002978  e348cff9  loadli.w r17,  -796(r30)
00297c  e308dff9  loadli.w r17,  -792(r30)
002980  e348dff9  loadli.w r17,  -788(r30)
002984  e308eff9  loadli.w r17,  -784(r30)
002988  e348eff9  loadli.w r17,  -780(r30)
00298c  e308fff9  loadli.w r17,  -776(r30)
002990  e348fff9  loadli.w r17,  -772(r30)
002994  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002998  9f008fe2  addli r1, r30, -3776
00299c  9f084000  addli r17, zero, 32
0029a0  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0029a4  9f000fee  addli r1, r30, -2304
0029a8  e7495fe5  storeli.w r21, -3428(r30)
0029ac  9234b002  vadd.s.mz vr9{mr1}, zero, vr11
0029b0  e70adfe4  storeli.w r13, -3416(r30)
0029b4  9f160000  addli r13, zero, 1
0029b8  e74affe4  storeli.w r15, -3412(r30)
0029bc  670a4fe5  storeli.w r20, -3424(r30)
0029c0  674a3fe5  storeli.w r19, -3420(r30)
0029c4  670b6fe4  storeli.w r6, -3408(r30)
0029c8  e70b5fe4  storeli.w r5, -3400(r30)
0029cc  e74b2fe4  storeli.w r2, -3396(r30)
0029d0  670c4fe4  storeli.w r4, -3392(r30)
0029d4  1235b002  vadd.s.mz vr10{mr1}, zero, vr11
0029d8  9f870500  addli r15, r11, 0
0029dc  9f050600  addli r11, r12, 0
0029e0  1f060400  addli r12, r8, 0
0029e4  8b9a1011  add.s r21, r1, r17
0029e8  7e8106e0  vmmov mr2, r13
0029ec  9f260000  addli r13, zero, 2
0029f0  6bbb0a00  load.hu r22, 0(r21)
0029f4  ebbb2a00  load.hu r23, 2(r21)
0029f8  ebb0ea00  load.hu r1, 14(r21)
0029fc  6bbc4a00  load.hu r24, 4(r21)
002a00  ebbc6a00  load.hu r25, 6(r21)
002a04  6bbd8a00  load.hu r26, 8(r21)
002a08  ebbdaa00  load.hu r27, 10(r21)
002a0c  6bbeca00  load.hu r28, 12(r21)
002a10  6bb10a01  load.hu r2, 16(r21)
002a14  ebb12a01  load.hu r3, 18(r21)
002a18  6bb24a01  load.hu r4, 20(r21)
002a1c  ebb26a01  load.hu r5, 22(r21)
002a20  6bb38a01  load.hu r6, 24(r21)
002a24  6bbaaa01  load.hu r20, 26(r21)
002a28  ebb9ca01  load.hu r19, 28(r21)
002a2c  ebbaea01  load.hu r21, 30(r21)
002a30  7e8006e0  vmmov mr0, r13
002a34  9f460000  addli r13, zero, 4
002a38  fe8106e0  vmmov mr3, r13
002a3c  9f061000  addli r13, zero, 8
002a40  331b0b18  bfloat2float.rn r22, r22
002a44  b3900018  bfloat2float.rn r1, r1
002a48  ea249b34  vor.u.mh vr9{mr2}, r22, vr9
002a4c  339b0b18  bfloat2float.rn r22, r23
002a50  ea249b30  vor.u.mh vr9{mr0}, r22, vr9
002a54  331b0c18  bfloat2float.rn r22, r24
002a58  ea249b36  vor.u.mh vr9{mr3}, r22, vr9
002a5c  339b0c18  bfloat2float.rn r22, r25
002a60  fe8106e0  vmmov mr3, r13
002a64  9f062000  addli r13, zero, 16
002a68  ea249b36  vor.u.mh vr9{mr3}, r22, vr9
002a6c  331b0d18  bfloat2float.rn r22, r26
002a70  fe8106e0  vmmov mr3, r13
002a74  9f064000  addli r13, zero, 32
002a78  ea249b36  vor.u.mh vr9{mr3}, r22, vr9
002a7c  339b0d18  bfloat2float.rn r22, r27
002a80  fe8106e0  vmmov mr3, r13
002a84  9f068000  addli r13, zero, 64
002a88  ea249b36  vor.u.mh vr9{mr3}, r22, vr9
002a8c  331b0e18  bfloat2float.rn r22, r28
002a90  fe8106e0  vmmov mr3, r13
002a94  9f060001  addli r13, zero, 128
002a98  ea249b36  vor.u.mh vr9{mr3}, r22, vr9
002a9c  fe8106e0  vmmov mr3, r13
002aa0  9f860300  addli r13, r7, 0
002aa4  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
002aa8  b3100118  bfloat2float.rn r1, r2
002aac  1f010002  addli r2, zero, 256
002ab0  fe0101e0  vmmov mr3, r2
002ab4  1f010004  addli r2, zero, 512
002ab8  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
002abc  b3900118  bfloat2float.rn r1, r3
002ac0  fe0101e0  vmmov mr3, r2
002ac4  1f010008  addli r2, zero, 1024
002ac8  ab810000  lui r3, 8
002acc  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
002ad0  b3100218  bfloat2float.rn r1, r4
002ad4  fe0101e0  vmmov mr3, r2
002ad8  1f010010  addli r2, zero, 2048
002adc  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
002ae0  b3900218  bfloat2float.rn r1, r5
002ae4  fe0101e0  vmmov mr3, r2
002ae8  1f010020  addli r2, zero, 4096
002aec  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
002af0  b3100318  bfloat2float.rn r1, r6
002af4  fe0101e0  vmmov mr3, r2
002af8  1f010040  addli r2, zero, 8192
002afc  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
002b00  b3100a18  bfloat2float.rn r1, r20
002b04  fe0101e0  vmmov mr3, r2
002b08  2b410000  lui r2, 4
002b0c  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
002b10  b3900918  bfloat2float.rn r1, r19
002b14  fe0101e0  vmmov mr3, r2
002b18  1f010ff0  addli r2, r30, -2048
002b1c  0b111111  add.s r2, r2, r17
002b20  9f884800  addli r17, r17, 32
002b24  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
002b28  b3900a18  bfloat2float.rn r1, r21
002b2c  fe8101e0  vmmov mr3, r3
002b30  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
002b34  eb300100  load.hu r1, 0(r2)
002b38  eb312100  load.hu r3, 2(r2)
002b3c  eb3b6101  load.hu r23, 22(r2)
002b40  6b324100  load.hu r4, 4(r2)
002b44  eb326100  load.hu r5, 6(r2)
002b48  6b338100  load.hu r6, 8(r2)
002b4c  eb33a100  load.hu r7, 10(r2)
002b50  6b34c100  load.hu r8, 12(r2)
002b54  6b3ee100  load.hu r28, 14(r2)
002b58  eb3d0101  load.hu r27, 16(r2)
002b5c  6b3d2101  load.hu r26, 18(r2)
002b60  6b3c4101  load.hu r24, 20(r2)
002b64  6b3b8101  load.hu r22, 24(r2)
002b68  eb3aa101  load.hu r21, 26(r2)
002b6c  6b3ac101  load.hu r20, 28(r2)
002b70  eb39e101  load.hu r19, 30(r2)
002b74  1f410000  addli r2, zero, 4
002b78  b3900018  bfloat2float.rn r1, r1
002b7c  b39b0b18  bfloat2float.rn r23, r23
002b80  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
002b84  b3900118  bfloat2float.rn r1, r3
002b88  9f011000  addli r3, zero, 8
002b8c  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
002b90  b3100218  bfloat2float.rn r1, r4
002b94  7e0001e0  vmmov mr0, r2
002b98  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
002b9c  e3003fe5  loadli.w r1,  -3432(r30)
002ba0  7e8001e0  vmmov mr0, r3
002ba4  b3110318  bfloat2float.rn r3, r6
002ba8  1f034000  addli r6, zero, 32
002bac  8b9c2011  add.s r25, r1, r18
002bb0  b3900218  bfloat2float.rn r1, r5
002bb4  9f022000  addli r5, zero, 16
002bb8  1f092900  addli r18, r18, 16
002bbc  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
002bc0  9f902c00  addli r1, r25, 17
002bc4  7e8002e0  vmmov mr0, r5
002bc8  1f812c00  addli r2, r25, 16
002bcc  b3920318  bfloat2float.rn r5, r7
002bd0  9f038000  addli r7, zero, 64
002bd4  1fa22c00  addli r4, r25, 18
002bd8  93909004  setlt.s r1, r1, r9
002bdc  13119104  setlt.s r2, r2, r9
002be0  13129204  setlt.s r4, r4, r9
002be4  6aa5a130  vor.u.mh vr10{mr0}, r3, vr10
002be8  7e0003e0  vmmov mr0, r6
002bec  9fb12c00  addli r3, r25, 19
002bf0  1fc32c00  addli r6, r25, 20
002bf4  93919104  setlt.s r3, r3, r9
002bf8  13139304  setlt.s r6, r6, r9
002bfc  6aa5a230  vor.u.mh vr10{mr0}, r5, vr10
002c00  b3120418  bfloat2float.rn r5, r8
002c04  7e8003e0  vmmov mr0, r7
002c08  1f040001  addli r8, zero, 128
002c0c  9fe32c00  addli r7, r25, 22
002c10  9bb01000  slli r1, r1, 1
002c14  1b322200  slli r4, r4, 2
002c18  93939304  setlt.s r7, r7, r9
002c1c  97902000  or r1, r1, r2
002c20  33110e18  bfloat2float.rn r2, r28
002c24  6aa5a230  vor.u.mh vr10{mr0}, r5, vr10
002c28  7e0004e0  vmmov mr0, r8
002c2c  33940d18  bfloat2float.rn r8, r27
002c30  9f0d0002  addli r27, zero, 256
002c34  9fd22c00  addli r5, r25, 21
002c38  97904000  or r1, r1, r4
002c3c  33120d18  bfloat2float.rn r4, r26
002c40  9bb13100  slli r3, r3, 3
002c44  1b334300  slli r6, r6, 4
002c48  1f9d3c00  addli r26, r25, 25
002c4c  93929204  setlt.s r5, r5, r9
002c50  97903000  or r1, r1, r3
002c54  b3110c18  bfloat2float.rn r3, r24
002c58  131d9d04  setlt.s r26, r26, r9
002c5c  1fcc3c00  addli r24, r25, 28
002c60  6a25a130  vor.u.mh vr10{mr0}, r2, vr10
002c64  7e800de0  vmmov mr0, r27
002c68  9f0d0004  addli r27, zero, 512
002c6c  1ff12c00  addli r2, r25, 23
002c70  97906000  or r1, r1, r6
002c74  131c9c04  setlt.s r24, r24, r9
002c78  1fe33c00  addli r6, r25, 30
002c7c  13119104  setlt.s r2, r2, r9
002c80  13139304  setlt.s r6, r6, r9
002c84  6a25a430  vor.u.mh vr10{mr0}, r8, vr10
002c88  7e800de0  vmmov mr0, r27
002c8c  9f0d0008  addli r27, zero, 1024
002c90  1f843c00  addli r8, r25, 24
002c94  9bb25200  slli r5, r5, 5
002c98  13149404  setlt.s r8, r8, r9
002c9c  97905000  or r1, r1, r5
002ca0  9bb26300  slli r5, r7, 6
002ca4  b3130b18  bfloat2float.rn r7, r22
002ca8  6a25a230  vor.u.mh vr10{mr0}, r4, vr10
002cac  7e800de0  vmmov mr0, r27
002cb0  9f0d0010  addli r27, zero, 2048
002cb4  1fa23c00  addli r4, r25, 26
002cb8  97905000  or r1, r1, r5
002cbc  1b317100  slli r2, r2, 7
002cc0  9f020020  addli r5, zero, 4096
002cc4  13129204  setlt.s r4, r4, r9
002cc8  97902000  or r1, r1, r2
002ccc  6aa5a130  vor.u.mh vr10{mr0}, r3, vr10
002cd0  7e800de0  vmmov mr0, r27
002cd4  9fb13c00  addli r3, r25, 27
002cd8  9f0d0ffe  addli r27, r30, -256
002cdc  1b318400  slli r2, r8, 8
002ce0  93919104  setlt.s r3, r3, r9
002ce4  97902000  or r1, r1, r2
002ce8  1b319d00  slli r2, r26, 9
002cec  6aa5ab30  vor.u.mh vr10{mr0}, r23, vr10
002cf0  7e8002e0  vmmov mr0, r5
002cf4  9fdb3c00  addli r23, r25, 29
002cf8  b3920a18  bfloat2float.rn r5, r21
002cfc  9ffc3c00  addli r25, r25, 31
002d00  97902000  or r1, r1, r2
002d04  1b31a200  slli r2, r4, 10
002d08  33120a18  bfloat2float.rn r4, r20
002d0c  939b9b04  setlt.s r23, r23, r9
002d10  939c9c04  setlt.s r25, r25, r9
002d14  97902000  or r1, r1, r2
002d18  6aa5a330  vor.u.mh vr10{mr0}, r7, vr10
002d1c  9f030040  addli r7, zero, 8192
002d20  1bb1b100  slli r2, r3, 11
002d24  ab410000  lui r3, 4
002d28  7e8003e0  vmmov mr0, r7
002d2c  97902000  or r1, r1, r2
002d30  1b31cc00  slli r2, r24, 12
002d34  6aa5a230  vor.u.mh vr10{mr0}, r5, vr10
002d38  7e8001e0  vmmov mr0, r3
002d3c  b3910918  bfloat2float.rn r3, r19
002d40  97902000  or r1, r1, r2
002d44  1bb1db00  slli r2, r23, 13
002d48  97902000  or r1, r1, r2
002d4c  1b31e300  slli r2, r6, 14
002d50  6a25a230  vor.u.mh vr10{mr0}, r4, vr10
002d54  97902000  or r1, r1, r2
002d58  1bb1fc00  slli r2, r25, 15
002d5c  97902000  or r1, r1, r2
002d60  6aa5a136  vor.u.mh vr10{mr3}, r3, vr10
002d64  7e8100e0  vmmov mr2, r1
002d68  9694a402  vadd.f.mz.rn vr9{mr1}, vr9, vr10
002d6c  12351002  vadd.s.mz vr10{mr1}, zero, vr1
002d70  6e159034  vor.f.mh vr10{mr2}, vr0, vr9
002d74  9e148502  vsub.f.mz.rn vr9{mr1}, vr10, vr8
002d78  46109fe2  vstore_mask16.mz vr9{mr1}, 1792(r30)
002d7c  00a00000  mfence { lm }
002d80  e3800d00  loadli.w r1,  0(r27)
002d84  63c10d00  loadli.w r2,  4(r27)
002d88  e3811d00  loadli.w r3,  8(r27)
002d8c  63c21d00  loadli.w r4,  12(r27)
002d90  e3822d00  loadli.w r5,  16(r27)
002d94  63c32d00  loadli.w r6,  20(r27)
002d98  e3833d00  loadli.w r7,  24(r27)
002d9c  63c43d00  loadli.w r8,  28(r27)
002da0  e3894d00  loadli.w r19,  32(r27)
002da4  63ca4d00  loadli.w r20,  36(r27)
002da8  e38a5d00  loadli.w r21,  40(r27)
002dac  63cb5d00  loadli.w r22,  44(r27)
002db0  e38b6d00  loadli.w r23,  48(r27)
002db4  63cc6d00  loadli.w r24,  52(r27)
002db8  e38c7d00  loadli.w r25,  56(r27)
002dbc  63cd7d00  loadli.w r26,  60(r27)
002dc0  8f800000  exp.f.rn r1, r1
002dc4  0f010100  exp.f.rn r2, r2
002dc8  8f810100  exp.f.rn r3, r3
002dcc  0f020200  exp.f.rn r4, r4
002dd0  8f820200  exp.f.rn r5, r5
002dd4  0f030300  exp.f.rn r6, r6
002dd8  8f830300  exp.f.rn r7, r7
002ddc  0f040400  exp.f.rn r8, r8
002de0  8f890900  exp.f.rn r19, r19
002de4  0f0a0a00  exp.f.rn r20, r20
002de8  8f8a0a00  exp.f.rn r21, r21
002dec  0f0b0b00  exp.f.rn r22, r22
002df0  8f8b0b00  exp.f.rn r23, r23
002df4  0f0c0c00  exp.f.rn r24, r24
002df8  8f8c0c00  exp.f.rn r25, r25
002dfc  0f0d0d00  exp.f.rn r26, r26
002e00  67801d00  storeli.w r1, 0(r27)
002e04  67c02d00  storeli.w r2, 4(r27)
002e08  e7803d00  storeli.w r3, 8(r27)
002e0c  e7c04d00  storeli.w r4, 12(r27)
002e10  67815d00  storeli.w r5, 16(r27)
002e14  67c16d00  storeli.w r6, 20(r27)
002e18  e7817d00  storeli.w r7, 24(r27)
002e1c  e7c18d00  storeli.w r8, 28(r27)
002e20  67823d01  storeli.w r19, 32(r27)
002e24  67c24d01  storeli.w r20, 36(r27)
002e28  e7825d01  storeli.w r21, 40(r27)
002e2c  e7c26d01  storeli.w r22, 44(r27)
002e30  67837d01  storeli.w r23, 48(r27)
002e34  67c38d01  storeli.w r24, 52(r27)
002e38  e7839d01  storeli.w r25, 56(r27)
002e3c  e7c3ad01  storeli.w r26, 60(r27)
002e40  00a00000  mfence { lm }
002e44  1f040600  addli r8, r12, 0
002e48  1f860500  addli r12, r11, 0
002e4c  9f830600  addli r7, r13, 0
002e50  9f850700  addli r11, r15, 0
002e54  e34a3fe5  loadli.w r21,  -3428(r30)
002e58  630a4fe5  loadli.w r20,  -3424(r30)
002e5c  e3494fe5  loadli.w r19,  -3420(r30)
002e60  e3065fe5  loadli.w r13,  -3416(r30)
002e64  e3475fe5  loadli.w r15,  -3412(r30)
002e68  63036fe5  loadli.w r6,  -3408(r30)
002e6c  e3027fe5  loadli.w r5,  -3400(r30)
002e70  63028fe5  loadli.w r4,  -3392(r30)
002e74  c2140fe2  vload_mask16.mz vr9{mr1}, 1792(r30)
002e78  9f000fe6  addli r1, r30, -3328
002e7c  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
002e80  00a00000  mfence { lm }
002e84  e3000fe6  loadli.w r1,  -3328(r30)
002e88  63410fe6  loadli.w r2,  -3324(r30)
002e8c  e3011fe6  loadli.w r3,  -3320(r30)
002e90  0b621210  add.f.rn r4, r4, r1
002e94  e3401fe6  loadli.w r1,  -3316(r30)
002e98  8be72710  add.f.rn r15, r15, r2
002e9c  63012fe6  loadli.w r2,  -3312(r30)
002ea0  0b673710  add.f.rn r14, r14, r3
002ea4  e3412fe6  loadli.w r3,  -3308(r30)
002ea8  8be61610  add.f.rn r13, r13, r1
002eac  e3003fe6  loadli.w r1,  -3304(r30)
002eb0  0b662610  add.f.rn r12, r12, r2
002eb4  63413fe6  loadli.w r2,  -3300(r30)
002eb8  8be53510  add.f.rn r11, r11, r3
002ebc  e3014fe6  loadli.w r3,  -3296(r30)
002ec0  0b641410  add.f.rn r8, r8, r1
002ec4  e3404fe6  loadli.w r1,  -3292(r30)
002ec8  8be22210  add.f.rn r5, r5, r2
002ecc  63015fe6  loadli.w r2,  -3288(r30)
002ed0  8bea3a10  add.f.rn r21, r21, r3
002ed4  e3415fe6  loadli.w r3,  -3284(r30)
002ed8  0b6a1a10  add.f.rn r20, r20, r1
002edc  e3006fe6  loadli.w r1,  -3280(r30)
002ee0  8be92910  add.f.rn r19, r19, r2
002ee4  63416fe6  loadli.w r2,  -3276(r30)
002ee8  0b683810  add.f.rn r16, r16, r3
002eec  e3017fe6  loadli.w r3,  -3272(r30)
002ef0  8be31310  add.f.rn r7, r7, r1
002ef4  e3407fe6  loadli.w r1,  -3268(r30)
002ef8  0b632310  add.f.rn r6, r6, r2
002efc  63417fe5  loadli.w r2,  -3396(r30)
002f00  0b653510  add.f.rn r10, r10, r3
002f04  0b611110  add.f.rn r2, r2, r1
002f08  9f00e000  addli r1, zero, 112
002f0c  3b6a19fc  bneq r18, r1, -1384
002f10  8b60f210  add.f.rn r1, r4, r15
002f14  8be0e010  add.f.rn r1, r1, r14
002f18  8be0d010  add.f.rn r1, r1, r13
002f1c  8be0c010  add.f.rn r1, r1, r12
002f20  8be0b010  add.f.rn r1, r1, r11
002f24  8be08010  add.f.rn r1, r1, r8
002f28  8be05010  add.f.rn r1, r1, r5
002f2c  8be05011  add.f.rn r1, r1, r21
002f30  8be04011  add.f.rn r1, r1, r20
002f34  8be03011  add.f.rn r1, r1, r19
002f38  8be00011  add.f.rn r1, r1, r16
002f3c  8be07010  add.f.rn r1, r1, r7
002f40  8be06010  add.f.rn r1, r1, r6
002f44  8be0a010  add.f.rn r1, r1, r10
002f48  8be02010  add.f.rn r1, r1, r2
002f4c  63411fda  loadli.w r2,  -4852(r30)
002f50  73601100  stores.w r1, 0(r2)
002f54  00a00300  mfence { lm, sm, gm }
002f58  e3421fdd  loadli.w r5,  -4468(r30)
002f5c  80a10204  csr_set csr3, r5
002f60  00d00100  sync_group
002f64  e3400fdd  loadli.w r1,  -4476(r30)
002f68  3ba80000  bneq r1, zero, 520
002f6c  6342dfd9  loadli.w r4,  -4884(r30)
002f70  ef400200  loads.w r1, 0(r4)
002f74  ef414200  loads.w r3, 4(r4)
002f78  6f418200  loads.w r2, 8(r4)
002f7c  8be03010  add.f.rn r1, r1, r3
002f80  ef41c200  loads.w r3, 12(r4)
002f84  8be02010  add.f.rn r1, r1, r2
002f88  6f410201  loads.w r2, 16(r4)
002f8c  8be03010  add.f.rn r1, r1, r3
002f90  ef414201  loads.w r3, 20(r4)
002f94  8be02010  add.f.rn r1, r1, r2
002f98  6f418201  loads.w r2, 24(r4)
002f9c  8be03010  add.f.rn r1, r1, r3
002fa0  ef41c201  loads.w r3, 28(r4)
002fa4  8be02010  add.f.rn r1, r1, r2
002fa8  6f410202  loads.w r2, 32(r4)
002fac  8be03010  add.f.rn r1, r1, r3
002fb0  ef414202  loads.w r3, 36(r4)
002fb4  8be02010  add.f.rn r1, r1, r2
002fb8  6f418202  loads.w r2, 40(r4)
002fbc  8be03010  add.f.rn r1, r1, r3
002fc0  ef41c202  loads.w r3, 44(r4)
002fc4  8be02010  add.f.rn r1, r1, r2
002fc8  6f410203  loads.w r2, 48(r4)
002fcc  8be03010  add.f.rn r1, r1, r3
002fd0  ef414203  loads.w r3, 52(r4)
002fd4  8be02010  add.f.rn r1, r1, r2
002fd8  6f418203  loads.w r2, 56(r4)
002fdc  8be03010  add.f.rn r1, r1, r3
002fe0  ef41c203  loads.w r3, 60(r4)
002fe4  8be02010  add.f.rn r1, r1, r2
002fe8  6f410204  loads.w r2, 64(r4)
002fec  8be03010  add.f.rn r1, r1, r3
002ff0  ef414204  loads.w r3, 68(r4)
002ff4  8be02010  add.f.rn r1, r1, r2
002ff8  6f418204  loads.w r2, 72(r4)
002ffc  8be03010  add.f.rn r1, r1, r3
003000  ef41c204  loads.w r3, 76(r4)
003004  8be02010  add.f.rn r1, r1, r2
003008  6f410205  loads.w r2, 80(r4)
00300c  8be03010  add.f.rn r1, r1, r3
003010  ef414205  loads.w r3, 84(r4)
003014  8be02010  add.f.rn r1, r1, r2
003018  6f418205  loads.w r2, 88(r4)
00301c  8be03010  add.f.rn r1, r1, r3
003020  ef41c205  loads.w r3, 92(r4)
003024  8be02010  add.f.rn r1, r1, r2
003028  6f410206  loads.w r2, 96(r4)
00302c  8be03010  add.f.rn r1, r1, r3
003030  ef414206  loads.w r3, 100(r4)
003034  8be02010  add.f.rn r1, r1, r2
003038  6f418206  loads.w r2, 104(r4)
00303c  8be03010  add.f.rn r1, r1, r3
003040  ef41c206  loads.w r3, 108(r4)
003044  8be02010  add.f.rn r1, r1, r2
003048  6f410207  loads.w r2, 112(r4)
00304c  8be03010  add.f.rn r1, r1, r3
003050  ef414207  loads.w r3, 116(r4)
003054  8be02010  add.f.rn r1, r1, r2
003058  6f418207  loads.w r2, 120(r4)
00305c  8be03010  add.f.rn r1, r1, r3
003060  ef41c207  loads.w r3, 124(r4)
003064  8be02010  add.f.rn r1, r1, r2
003068  6f410208  loads.w r2, 128(r4)
00306c  8be03010  add.f.rn r1, r1, r3
003070  ef414208  loads.w r3, 132(r4)
003074  8be02010  add.f.rn r1, r1, r2
003078  6f418208  loads.w r2, 136(r4)
00307c  8be03010  add.f.rn r1, r1, r3
003080  ef41c208  loads.w r3, 140(r4)
003084  8be02010  add.f.rn r1, r1, r2
003088  6f410209  loads.w r2, 144(r4)
00308c  8be03010  add.f.rn r1, r1, r3
003090  ef414209  loads.w r3, 148(r4)
003094  8be02010  add.f.rn r1, r1, r2
003098  6f418209  loads.w r2, 152(r4)
00309c  8be03010  add.f.rn r1, r1, r3
0030a0  ef41c209  loads.w r3, 156(r4)
0030a4  8be02010  add.f.rn r1, r1, r2
0030a8  6f41020a  loads.w r2, 160(r4)
0030ac  8be03010  add.f.rn r1, r1, r3
0030b0  ef41420a  loads.w r3, 164(r4)
0030b4  8be02010  add.f.rn r1, r1, r2
0030b8  6f41820a  loads.w r2, 168(r4)
0030bc  8be03010  add.f.rn r1, r1, r3
0030c0  ef41c20a  loads.w r3, 172(r4)
0030c4  8be02010  add.f.rn r1, r1, r2
0030c8  6f41020b  loads.w r2, 176(r4)
0030cc  8be03010  add.f.rn r1, r1, r3
0030d0  ef41420b  loads.w r3, 180(r4)
0030d4  8be02010  add.f.rn r1, r1, r2
0030d8  6f41820b  loads.w r2, 184(r4)
0030dc  8be03010  add.f.rn r1, r1, r3
0030e0  ef41c20b  loads.w r3, 188(r4)
0030e4  8be02010  add.f.rn r1, r1, r2
0030e8  6f41020c  loads.w r2, 192(r4)
0030ec  8be03010  add.f.rn r1, r1, r3
0030f0  ef41420c  loads.w r3, 196(r4)
0030f4  8be02010  add.f.rn r1, r1, r2
0030f8  6f41820c  loads.w r2, 200(r4)
0030fc  8be03010  add.f.rn r1, r1, r3
003100  ef41c20c  loads.w r3, 204(r4)
003104  8be02010  add.f.rn r1, r1, r2
003108  6f41020d  loads.w r2, 208(r4)
00310c  8be03010  add.f.rn r1, r1, r3
003110  ef41420d  loads.w r3, 212(r4)
003114  8be02010  add.f.rn r1, r1, r2
003118  6f41820d  loads.w r2, 216(r4)
00311c  8be03010  add.f.rn r1, r1, r3
003120  ef41c20d  loads.w r3, 220(r4)
003124  8be02010  add.f.rn r1, r1, r2
003128  6f41020e  loads.w r2, 224(r4)
00312c  8be03010  add.f.rn r1, r1, r3
003130  ef41420e  loads.w r3, 228(r4)
003134  8be02010  add.f.rn r1, r1, r2
003138  6f41820e  loads.w r2, 232(r4)
00313c  8be03010  add.f.rn r1, r1, r3
003140  ef41c20e  loads.w r3, 236(r4)
003144  8be02010  add.f.rn r1, r1, r2
003148  6f41020f  loads.w r2, 240(r4)
00314c  8be03010  add.f.rn r1, r1, r3
003150  ef41420f  loads.w r3, 244(r4)
003154  8be02010  add.f.rn r1, r1, r2
003158  6f41820f  loads.w r2, 248(r4)
00315c  8be03010  add.f.rn r1, r1, r3
003160  ef41c20f  loads.w r3, 252(r4)
003164  8be02010  add.f.rn r1, r1, r2
003168  8be03010  add.f.rn r1, r1, r3
00316c  73601200  stores.w r1, 0(r4)
003170  ab000000  lui r1, 0
003174  00a00300  mfence { lm, sm, gm }
003178  80a10204  csr_set csr3, r5
00317c  00d00100  sync_group
003180  2b01803f  lui r2, 260096
003184  2b720000  lui r4, 7
003188  9f800000  addli r1, r1, 0
00318c  9f810000  addli r3, r1, 0
003190  efc00141  loads.w r1, 1040(r3)
003194  0f011118  div.f.rn r2, r2, r1
003198  73e81150  stores.w r1, 1296(r3)
00319c  9f008fe4  addli r1, r30, -3520
0031a0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0031a4  9f000fe4  addli r1, r30, -3584
0031a8  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0031ac  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
0031b0  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
0031b4  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
0031b8  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
0031bc  0a136102  vmul.f.mz.rn vr6{mr1}, r2, vr6
0031c0  8a137102  vmul.f.mz.rn vr7{mr1}, r2, vr7
0031c4  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
0031c8  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
0031cc  46100fa2  vstore_mask16.mz vr0{mr1}, 1280(r30)
0031d0  46141fa2  vstore_mask16.mz vr1{mr1}, 1344(r30)
0031d4  46182fa2  vstore_mask16.mz vr2{mr1}, 1408(r30)
0031d8  461c3fa2  vstore_mask16.mz vr3{mr1}, 1472(r30)
0031dc  46104fc2  vstore_mask16.mz vr4{mr1}, 1536(r30)
0031e0  46145fc2  vstore_mask16.mz vr5{mr1}, 1600(r30)
0031e4  46186fc2  vstore_mask16.mz vr6{mr1}, 1664(r30)
0031e8  461c7fc2  vstore_mask16.mz vr7{mr1}, 1728(r30)
0031ec  00a00000  mfence { lm }
0031f0  e3030ffa  loadli.w r7,  -768(r30)
0031f4  63440ffa  loadli.w r8,  -764(r30)
0031f8  63031ffa  loadli.w r6,  -760(r30)
0031fc  e3411ffa  loadli.w r3,  -756(r30)
003200  e3072ffa  loadli.w r15,  -752(r30)
003204  e3492ffa  loadli.w r19,  -748(r30)
003208  e3043ffa  loadli.w r9,  -744(r30)
00320c  634c3ffa  loadli.w r24,  -740(r30)
003210  63054ffa  loadli.w r10,  -736(r30)
003214  634a4ffa  loadli.w r20,  -732(r30)
003218  e3085ffa  loadli.w r17,  -728(r30)
00321c  e34c5ffa  loadli.w r25,  -724(r30)
003220  e3006ffa  loadli.w r1,  -720(r30)
003224  e70e1fda  storeli.w r1, -4632(r30)
003228  e3406ffa  loadli.w r1,  -716(r30)
00322c  67411fdc  storeli.w r1, -4588(r30)
003230  e3007ffa  loadli.w r1,  -712(r30)
003234  e7011fdc  storeli.w r1, -4584(r30)
003238  e3407ffa  loadli.w r1,  -708(r30)
00323c  67451fdc  storeli.w r1, -4524(r30)
003240  e3008ffa  loadli.w r1,  -704(r30)
003244  e70b1fe4  storeli.w r1, -3400(r30)
003248  e3408ffa  loadli.w r1,  -700(r30)
00324c  670b1fe4  storeli.w r1, -3408(r30)
003250  e3009ffa  loadli.w r1,  -696(r30)
003254  e74a1fe4  storeli.w r1, -3412(r30)
003258  e3409ffa  loadli.w r1,  -692(r30)
00325c  e70a1fe4  storeli.w r1, -3416(r30)
003260  e300affa  loadli.w r1,  -688(r30)
003264  674a1fe4  storeli.w r1, -3420(r30)
003268  e340affa  loadli.w r1,  -684(r30)
00326c  67061fdc  storeli.w r1, -4512(r30)
003270  e300bffa  loadli.w r1,  -680(r30)
003274  670a1fe4  storeli.w r1, -3424(r30)
003278  e340bffa  loadli.w r1,  -676(r30)
00327c  e7491fe4  storeli.w r1, -3428(r30)
003280  e300cffa  loadli.w r1,  -672(r30)
003284  00a00000  mfence { lm }
003288  67001fe4  storeli.w r1, -3584(r30)
00328c  e340cffa  loadli.w r1,  -668(r30)
003290  67041fe4  storeli.w r1, -3520(r30)
003294  e340ffe1  loadli.w r1,  -3844(r30)
003298  6301dffa  loadli.w r2,  -664(r30)
00329c  97801300  and r1, r7, r1
0032a0  e7052fdc  storeli.w r2, -4520(r30)
0032a4  2b01807f  lui r2, 522240
0032a8  13011104  setlt.u r2, r2, r1
0032ac  e340dffa  loadli.w r1,  -660(r30)
0032b0  e7411fdc  storeli.w r1, -4580(r30)
0032b4  e300effa  loadli.w r1,  -656(r30)
0032b8  67401fdc  storeli.w r1, -4604(r30)
0032bc  e340effa  loadli.w r1,  -652(r30)
0032c0  e7001fdc  storeli.w r1, -4600(r30)
0032c4  e300fffa  loadli.w r1,  -648(r30)
0032c8  e74d1fe2  storeli.w r1, -3620(r30)
0032cc  e340fffa  loadli.w r1,  -644(r30)
0032d0  e74f1fe2  storeli.w r1, -3588(r30)
0032d4  e3000ffb  loadli.w r1,  -640(r30)
0032d8  e70f1fe2  storeli.w r1, -3592(r30)
0032dc  e3400ffb  loadli.w r1,  -636(r30)
0032e0  674f1fe2  storeli.w r1, -3596(r30)
0032e4  e3001ffb  loadli.w r1,  -632(r30)
0032e8  670f1fe2  storeli.w r1, -3600(r30)
0032ec  e3401ffb  loadli.w r1,  -628(r30)
0032f0  e74e1fe2  storeli.w r1, -3604(r30)
0032f4  e3002ffb  loadli.w r1,  -624(r30)
0032f8  e70e1fe2  storeli.w r1, -3608(r30)
0032fc  e3402ffb  loadli.w r1,  -620(r30)
003300  674e1fe2  storeli.w r1, -3612(r30)
003304  e3003ffb  loadli.w r1,  -616(r30)
003308  670c1fe4  storeli.w r1, -3392(r30)
00330c  e3403ffb  loadli.w r1,  -612(r30)
003310  670e1fe2  storeli.w r1, -3616(r30)
003314  630b4ffb  loadli.w r22,  -608(r30)
003318  e3404ffb  loadli.w r1,  -604(r30)
00331c  e70d1fe2  storeli.w r1, -3624(r30)
003320  e3005ffb  loadli.w r1,  -600(r30)
003324  67451fda  storeli.w r1, -4780(r30)
003328  e3405ffb  loadli.w r1,  -596(r30)
00332c  674d1fe2  storeli.w r1, -3628(r30)
003330  e3006ffb  loadli.w r1,  -592(r30)
003334  67051fda  storeli.w r1, -4784(r30)
003338  e3406ffb  loadli.w r1,  -588(r30)
00333c  670d1fe2  storeli.w r1, -3632(r30)
003340  e3007ffb  loadli.w r1,  -584(r30)
003344  67081fe0  storeli.w r1, -3968(r30)
003348  e3407ffb  loadli.w r1,  -580(r30)
00334c  67041fe0  storeli.w r1, -4032(r30)
003350  e3008ffb  loadli.w r1,  -576(r30)
003354  e7051fda  storeli.w r1, -4776(r30)
003358  e3408ffb  loadli.w r1,  -572(r30)
00335c  67001fe0  storeli.w r1, -4096(r30)
003360  e3029ffb  loadli.w r5,  -568(r30)
003364  e3409ffb  loadli.w r1,  -564(r30)
003368  670c1fde  storeli.w r1, -4160(r30)
00336c  e300affb  loadli.w r1,  -560(r30)
003370  67461fda  storeli.w r1, -4764(r30)
003374  e340affb  loadli.w r1,  -556(r30)
003378  67081fde  storeli.w r1, -4224(r30)
00337c  e300bffb  loadli.w r1,  -552(r30)
003380  e7061fda  storeli.w r1, -4760(r30)
003384  e340bffb  loadli.w r1,  -548(r30)
003388  67041fde  storeli.w r1, -4288(r30)
00338c  e300cffb  loadli.w r1,  -544(r30)
003390  e7461fda  storeli.w r1, -4756(r30)
003394  e340cffb  loadli.w r1,  -540(r30)
003398  67001fde  storeli.w r1, -4352(r30)
00339c  e300dffb  loadli.w r1,  -536(r30)
0033a0  670c1fdc  storeli.w r1, -4416(r30)
0033a4  e34ddffb  loadli.w r27,  -532(r30)
0033a8  e300effb  loadli.w r1,  -528(r30)
0033ac  e74b1fdc  storeli.w r1, -4420(r30)
0033b0  e34aeffb  loadli.w r21,  -524(r30)
0033b4  e300fffb  loadli.w r1,  -520(r30)
0033b8  e7071fda  storeli.w r1, -4744(r30)
0033bc  e340fffb  loadli.w r1,  -516(r30)
0033c0  e70b1fdc  storeli.w r1, -4424(r30)
0033c4  e3000ffc  loadli.w r1,  -512(r30)
0033c8  67471fda  storeli.w r1, -4748(r30)
0033cc  e3400ffc  loadli.w r1,  -508(r30)
0033d0  67081fda  storeli.w r1, -4736(r30)
0033d4  e3001ffc  loadli.w r1,  -504(r30)
0033d8  674b1fdc  storeli.w r1, -4428(r30)
0033dc  e3401ffc  loadli.w r1,  -500(r30)
0033e0  67481fda  storeli.w r1, -4732(r30)
0033e4  e3002ffc  loadli.w r1,  -496(r30)
0033e8  670b1fdc  storeli.w r1, -4432(r30)
0033ec  e3402ffc  loadli.w r1,  -492(r30)
0033f0  e7481fda  storeli.w r1, -4724(r30)
0033f4  e3003ffc  loadli.w r1,  -488(r30)
0033f8  e74a1fdc  storeli.w r1, -4436(r30)
0033fc  e3403ffc  loadli.w r1,  -484(r30)
003400  e7091fda  storeli.w r1, -4712(r30)
003404  e3004ffc  loadli.w r1,  -480(r30)
003408  67491fda  storeli.w r1, -4716(r30)
00340c  e3404ffc  loadli.w r1,  -476(r30)
003410  674a1fda  storeli.w r1, -4700(r30)
003414  e3005ffc  loadli.w r1,  -472(r30)
003418  670a1fda  storeli.w r1, -4704(r30)
00341c  e3405ffc  loadli.w r1,  -468(r30)
003420  670b1fda  storeli.w r1, -4688(r30)
003424  e3006ffc  loadli.w r1,  -464(r30)
003428  e74a1fda  storeli.w r1, -4692(r30)
00342c  e3406ffc  loadli.w r1,  -460(r30)
003430  674c1fda  storeli.w r1, -4668(r30)
003434  e3007ffc  loadli.w r1,  -456(r30)
003438  670c1fda  storeli.w r1, -4672(r30)
00343c  e3407ffc  loadli.w r1,  -452(r30)
003440  670d1fda  storeli.w r1, -4656(r30)
003444  e3008ffc  loadli.w r1,  -448(r30)
003448  e70c1fda  storeli.w r1, -4664(r30)
00344c  e3408ffc  loadli.w r1,  -444(r30)
003450  e74c1fda  storeli.w r1, -4660(r30)
003454  e3009ffc  loadli.w r1,  -440(r30)
003458  e70a1fdc  storeli.w r1, -4440(r30)
00345c  e3409ffc  loadli.w r1,  -436(r30)
003460  674d1fda  storeli.w r1, -4652(r30)
003464  e300affc  loadli.w r1,  -432(r30)
003468  674a1fdc  storeli.w r1, -4444(r30)
00346c  e340affc  loadli.w r1,  -428(r30)
003470  e74d1fda  storeli.w r1, -4644(r30)
003474  e300bffc  loadli.w r1,  -424(r30)
003478  670a1fdc  storeli.w r1, -4448(r30)
00347c  e340bffc  loadli.w r1,  -420(r30)
003480  670e1fda  storeli.w r1, -4640(r30)
003484  e300cffc  loadli.w r1,  -416(r30)
003488  674e1fda  storeli.w r1, -4636(r30)
00348c  e340cffc  loadli.w r1,  -412(r30)
003490  e74e1fda  storeli.w r1, -4628(r30)
003494  e300dffc  loadli.w r1,  -408(r30)
003498  e7491fdc  storeli.w r1, -4452(r30)
00349c  e340dffc  loadli.w r1,  -404(r30)
0034a0  670f1fda  storeli.w r1, -4624(r30)
0034a4  e300effc  loadli.w r1,  -400(r30)
0034a8  674f1fda  storeli.w r1, -4620(r30)
0034ac  e340effc  loadli.w r1,  -396(r30)
0034b0  e70f1fda  storeli.w r1, -4616(r30)
0034b4  e300fffc  loadli.w r1,  -392(r30)
0034b8  e74f1fda  storeli.w r1, -4612(r30)
0034bc  e340fffc  loadli.w r1,  -388(r30)
0034c0  e7091fdc  storeli.w r1, -4456(r30)
0034c4  e3000ffd  loadli.w r1,  -384(r30)
0034c8  67491fdc  storeli.w r1, -4460(r30)
0034cc  e3400ffd  loadli.w r1,  -380(r30)
0034d0  67001fdc  storeli.w r1, -4608(r30)
0034d4  e3001ffd  loadli.w r1,  -376(r30)
0034d8  67011fdc  storeli.w r1, -4592(r30)
0034dc  e3401ffd  loadli.w r1,  -372(r30)
0034e0  e7401fdc  storeli.w r1, -4596(r30)
0034e4  e3002ffd  loadli.w r1,  -368(r30)
0034e8  e7021fdc  storeli.w r1, -4568(r30)
0034ec  e3402ffd  loadli.w r1,  -364(r30)
0034f0  67021fdc  storeli.w r1, -4576(r30)
0034f4  e3003ffd  loadli.w r1,  -360(r30)
0034f8  67421fdc  storeli.w r1, -4572(r30)
0034fc  e3403ffd  loadli.w r1,  -356(r30)
003500  67031fdc  storeli.w r1, -4560(r30)
003504  e3004ffd  loadli.w r1,  -352(r30)
003508  e7441fdc  storeli.w r1, -4532(r30)
00350c  e3404ffd  loadli.w r1,  -348(r30)
003510  e7421fdc  storeli.w r1, -4564(r30)
003514  e3005ffd  loadli.w r1,  -344(r30)
003518  67431fdc  storeli.w r1, -4556(r30)
00351c  e3405ffd  loadli.w r1,  -340(r30)
003520  e7031fdc  storeli.w r1, -4552(r30)
003524  e3006ffd  loadli.w r1,  -336(r30)
003528  e7431fdc  storeli.w r1, -4548(r30)
00352c  e3406ffd  loadli.w r1,  -332(r30)
003530  67041fdc  storeli.w r1, -4544(r30)
003534  e3007ffd  loadli.w r1,  -328(r30)
003538  67441fdc  storeli.w r1, -4540(r30)
00353c  e3407ffd  loadli.w r1,  -324(r30)
003540  e7041fdc  storeli.w r1, -4536(r30)
003544  e3008ffd  loadli.w r1,  -320(r30)
003548  67051fdc  storeli.w r1, -4528(r30)
00354c  e3408ffd  loadli.w r1,  -316(r30)
003550  67091fdc  storeli.w r1, -4464(r30)
003554  630e9ffd  loadli.w r28,  -312(r30)
003558  634d9ffd  loadli.w r26,  -308(r30)
00355c  6307affd  loadli.w r14,  -304(r30)
003560  6346affd  loadli.w r12,  -300(r30)
003564  6309bffd  loadli.w r18,  -296(r30)
003568  6348bffd  loadli.w r16,  -292(r30)
00356c  e306cffd  loadli.w r13,  -288(r30)
003570  e340cffd  loadli.w r1,  -284(r30)
003574  e7491fda  storeli.w r1, -4708(r30)
003578  e300dffd  loadli.w r1,  -280(r30)
00357c  67461fdc  storeli.w r1, -4508(r30)
003580  e340dffd  loadli.w r1,  -276(r30)
003584  e7061fdc  storeli.w r1, -4504(r30)
003588  e300effd  loadli.w r1,  -272(r30)
00358c  e7461fdc  storeli.w r1, -4500(r30)
003590  e340effd  loadli.w r1,  -268(r30)
003594  e7451fdc  storeli.w r1, -4516(r30)
003598  e300fffd  loadli.w r1,  -264(r30)
00359c  67071fdc  storeli.w r1, -4496(r30)
0035a0  e340fffd  loadli.w r1,  -260(r30)
0035a4  e7071fdc  storeli.w r1, -4488(r30)
0035a8  9b1002fc  ori r1, r4, 4032
0035ac  1b12f2ff  ori r4, r4, 4095
0035b0  9f850000  addli r11, r1, 0
0035b4  3b600100  bneq r2, zero, 24
0035b8  1bc10301  srli r2, r7, 16
0035bc  1b011100  andi r2, r2, 1
0035c0  0b912310  add.s r2, r7, r2
0035c4  0b114110  add.s r2, r2, r4
0035c8  9b450101  srli r11, r2, 16
0035cc  e343ffe1  loadli.w r7,  -3844(r30)
0035d0  6747bfdc  storeli.w r11, -4492(r30)
0035d4  ab05807f  lui r11, 522240
0035d8  17017400  and r2, r8, r7
0035dc  13812504  setlt.u r2, r11, r2
0035e0  9f850000  addli r11, r1, 0
0035e4  3b600100  bneq r2, zero, 24
0035e8  1b410401  srli r2, r8, 16
0035ec  1b011100  andi r2, r2, 1
0035f0  0b112410  add.s r2, r8, r2
0035f4  0b114110  add.s r2, r2, r4
0035f8  9b450101  srli r11, r2, 16
0035fc  17017300  and r2, r6, r7
003600  2b04807f  lui r8, 522240
003604  e74b1fe4  storeli.w r1, -3396(r30)
003608  13012404  setlt.u r2, r8, r2
00360c  3b700100  bneq r2, zero, 28
003610  1b410301  srli r2, r6, 16
003614  1b011100  andi r2, r2, 1
003618  0b112310  add.s r2, r6, r2
00361c  0b114110  add.s r2, r2, r4
003620  1b410101  srli r2, r2, 16
003624  e74b2fe4  storeli.w r2, -3396(r30)
003628  17817100  and r2, r3, r7
00362c  1f830000  addli r6, r1, 0
003630  13012404  setlt.u r2, r8, r2
003634  3b600100  bneq r2, zero, 24
003638  1bc10101  srli r2, r3, 16
00363c  1b011100  andi r2, r2, 1
003640  0b912110  add.s r2, r3, r2
003644  0b114110  add.s r2, r2, r4
003648  1b430101  srli r6, r2, 16
00364c  17817700  and r2, r15, r7
003650  9f810000  addli r3, r1, 0
003654  e747bfdc  storeli.w r11, -4484(r30)
003658  13012404  setlt.u r2, r8, r2
00365c  3b600100  bneq r2, zero, 24
003660  1bc10701  srli r2, r15, 16
003664  1b011100  andi r2, r2, 1
003668  0b912710  add.s r2, r15, r2
00366c  0b114110  add.s r2, r2, r4
003670  9b410101  srli r3, r2, 16
003674  17817900  and r2, r19, r7
003678  9f850000  addli r11, r1, 0
00367c  13012404  setlt.u r2, r8, r2
003680  3b600100  bneq r2, zero, 24
003684  1bc10901  srli r2, r19, 16
003688  1b011100  andi r2, r2, 1
00368c  0b912910  add.s r2, r19, r2
003690  0b114110  add.s r2, r2, r4
003694  9b450101  srli r11, r2, 16
003698  17817400  and r2, r9, r7
00369c  9f870000  addli r15, r1, 0
0036a0  13012404  setlt.u r2, r8, r2
0036a4  3b600100  bneq r2, zero, 24
0036a8  1bc10401  srli r2, r9, 16
0036ac  1b011100  andi r2, r2, 1
0036b0  0b912410  add.s r2, r9, r2
0036b4  0b114110  add.s r2, r2, r4
0036b8  9b470101  srli r15, r2, 16
0036bc  17017c00  and r2, r24, r7
0036c0  9f890000  addli r19, r1, 0
0036c4  13012404  setlt.u r2, r8, r2
0036c8  3b600100  bneq r2, zero, 24
0036cc  1b410c01  srli r2, r24, 16
0036d0  1b011100  andi r2, r2, 1
0036d4  0b112c10  add.s r2, r24, r2
0036d8  0b114110  add.s r2, r2, r4
0036dc  9b490101  srli r19, r2, 16
0036e0  17017500  and r2, r10, r7
0036e4  e3045fe5  loadli.w r9,  -3416(r30)
0036e8  9f8b0000  addli r23, r1, 0
0036ec  13012404  setlt.u r2, r8, r2
0036f0  3b600100  bneq r2, zero, 24
0036f4  1b410501  srli r2, r10, 16
0036f8  1b011100  andi r2, r2, 1
0036fc  0b112510  add.s r2, r10, r2
003700  0b114110  add.s r2, r2, r4
003704  9b4b0101  srli r23, r2, 16
003708  17017a00  and r2, r20, r7
00370c  634c5fe5  loadli.w r24,  -3412(r30)
003710  1f850000  addli r10, r1, 0
003714  13012404  setlt.u r2, r8, r2
003718  3b600100  bneq r2, zero, 24
00371c  1b410a01  srli r2, r20, 16
003720  1b011100  andi r2, r2, 1
003724  0b112a10  add.s r2, r20, r2
003728  0b114110  add.s r2, r2, r4
00372c  1b450101  srli r10, r2, 16
003730  17817800  and r2, r17, r7
003734  1f8a0000  addli r20, r1, 0
003738  13012404  setlt.u r2, r8, r2
00373c  3b600100  bneq r2, zero, 24
003740  1bc10801  srli r2, r17, 16
003744  1b011100  andi r2, r2, 1
003748  0b912810  add.s r2, r17, r2
00374c  0b114110  add.s r2, r2, r4
003750  1b4a0101  srli r20, r2, 16
003754  17817c00  and r2, r25, r7
003758  e70bbfda  storeli.w r11, -4680(r30)
00375c  9f850000  addli r11, r1, 0
003760  13012404  setlt.u r2, r8, r2
003764  3b600100  bneq r2, zero, 24
003768  1bc10c01  srli r2, r25, 16
00376c  1b011100  andi r2, r2, 1
003770  0b912c10  add.s r2, r25, r2
003774  0b114110  add.s r2, r2, r4
003778  9b450101  srli r11, r2, 16
00377c  e30cdfdb  loadli.w r25,  -4632(r30)
003780  e3482fdc  loadli.w r17,  -4588(r30)
003784  e743bfda  storeli.w r11, -4804(r30)
003788  9f850000  addli r11, r1, 0
00378c  17817c00  and r2, r25, r7
003790  13012404  setlt.u r2, r8, r2
003794  3b600100  bneq r2, zero, 24
003798  1bc10c01  srli r2, r25, 16
00379c  1b011100  andi r2, r2, 1
0037a0  0b912c10  add.s r2, r25, r2
0037a4  0b114110  add.s r2, r2, r4
0037a8  9b450101  srli r11, r2, 16
0037ac  17817800  and r2, r17, r7
0037b0  9f8c0000  addli r25, r1, 0
0037b4  67445fda  storeli.w r5, -4796(r30)
0037b8  13012404  setlt.u r2, r8, r2
0037bc  3b600100  bneq r2, zero, 24
0037c0  1bc10801  srli r2, r17, 16
0037c4  1b011100  andi r2, r2, 1
0037c8  0b912810  add.s r2, r17, r2
0037cc  0b114110  add.s r2, r2, r4
0037d0  9b4c0101  srli r25, r2, 16
0037d4  e70d6fda  storeli.w r6, -4648(r30)
0037d8  63033fdc  loadli.w r6,  -4584(r30)
0037dc  9f820000  addli r5, r1, 0
0037e0  17017300  and r2, r6, r7
0037e4  13012404  setlt.u r2, r8, r2
0037e8  3b600100  bneq r2, zero, 24
0037ec  1b410301  srli r2, r6, 16
0037f0  1b011100  andi r2, r2, 1
0037f4  0b112310  add.s r2, r6, r2
0037f8  0b114110  add.s r2, r2, r4
0037fc  9b420101  srli r5, r2, 16
003800  e745bfda  storeli.w r11, -4772(r30)
003804  e345afdc  loadli.w r11,  -4524(r30)
003808  1f830000  addli r6, r1, 0
00380c  17817500  and r2, r11, r7
003810  13012404  setlt.u r2, r8, r2
003814  3b600100  bneq r2, zero, 24
003818  1bc10501  srli r2, r11, 16
00381c  1b011100  andi r2, r2, 1
003820  0b912510  add.s r2, r11, r2
003824  0b114110  add.s r2, r2, r4
003828  1b430101  srli r6, r2, 16
00382c  9f850100  addli r11, r3, 0
003830  e3017fe5  loadli.w r3,  -3400(r30)
003834  67456fdc  storeli.w r6, -4524(r30)
003838  1f830000  addli r6, r1, 0
00383c  e7045fdb  storeli.w r21, -4792(r30)
003840  e744bfdb  storeli.w r27, -4788(r30)
003844  e74befda  storeli.w r14, -4676(r30)
003848  e70ecfda  storeli.w r12, -4632(r30)
00384c  e70a2fdb  storeli.w r18, -4696(r30)
003850  17817100  and r2, r3, r7
003854  13012404  setlt.u r2, r8, r2
003858  3b600100  bneq r2, zero, 24
00385c  1bc10101  srli r2, r3, 16
003860  1b011100  andi r2, r2, 1
003864  0b912110  add.s r2, r3, r2
003868  0b114110  add.s r2, r2, r4
00386c  1b430101  srli r6, r2, 16
003870  e3086fe5  loadli.w r17,  -3408(r30)
003874  9f010300  addli r3, r6, 0
003878  6309dfda  loadli.w r18,  -4760(r30)
00387c  63078fdf  loadli.w r14,  -4160(r30)
003880  6343cfe3  loadli.w r6,  -3612(r30)
003884  63068fe4  loadli.w r12,  -3520(r30)
003888  e34dffe3  loadli.w r27,  -3588(r30)
00388c  e34a4fe5  loadli.w r21,  -3420(r30)
003890  e70b1fe4  storeli.w r1, -3400(r30)
003894  674b0fdb  storeli.w r16, -4684(r30)
003898  e747afdb  storeli.w r26, -4740(r30)
00389c  17817800  and r2, r17, r7
0038a0  13012404  setlt.u r2, r8, r2
0038a4  3b700100  bneq r2, zero, 28
0038a8  1bc10801  srli r2, r17, 16
0038ac  1b011100  andi r2, r2, 1
0038b0  0b912810  add.s r2, r17, r2
0038b4  0b114110  add.s r2, r2, r4
0038b8  1b410101  srli r2, r2, 16
0038bc  e70b2fe4  storeli.w r2, -3400(r30)
0038c0  17017c00  and r2, r24, r7
0038c4  630d8fde  loadli.w r26,  -4288(r30)
0038c8  6348cfda  loadli.w r16,  -4764(r30)
0038cc  670b1fe4  storeli.w r1, -3408(r30)
0038d0  13012404  setlt.u r2, r8, r2
0038d4  3b700100  bneq r2, zero, 28
0038d8  1b410c01  srli r2, r24, 16
0038dc  1b011100  andi r2, r2, 1
0038e0  0b112c10  add.s r2, r24, r2
0038e4  0b114110  add.s r2, r2, r4
0038e8  1b410101  srli r2, r2, 16
0038ec  670b2fe4  storeli.w r2, -3408(r30)
0038f0  17817400  and r2, r9, r7
0038f4  e74a1fe4  storeli.w r1, -3412(r30)
0038f8  13012404  setlt.u r2, r8, r2
0038fc  3b700100  bneq r2, zero, 28
003900  1bc10401  srli r2, r9, 16
003904  1b011100  andi r2, r2, 1
003908  0b912410  add.s r2, r9, r2
00390c  0b114110  add.s r2, r2, r4
003910  1b410101  srli r2, r2, 16
003914  e74a2fe4  storeli.w r2, -3412(r30)
003918  17817a00  and r2, r21, r7
00391c  e70a1fe4  storeli.w r1, -3416(r30)
003920  13012404  setlt.u r2, r8, r2
003924  3b700100  bneq r2, zero, 28
003928  1bc10a01  srli r2, r21, 16
00392c  1b011100  andi r2, r2, 1
003930  0b912a10  add.s r2, r21, r2
003934  0b114110  add.s r2, r2, r4
003938  1b410101  srli r2, r2, 16
00393c  e70a2fe4  storeli.w r2, -3416(r30)
003940  e304cfdc  loadli.w r9,  -4512(r30)
003944  e708cfdb  storeli.w r28, -4728(r30)
003948  6709dfda  storeli.w r13, -4720(r30)
00394c  e701ffdc  storeli.w r15, -4584(r30)
003950  674a1fe4  storeli.w r1, -3420(r30)
003954  17817400  and r2, r9, r7
003958  13012404  setlt.u r2, r8, r2
00395c  3b700100  bneq r2, zero, 28
003960  1bc10401  srli r2, r9, 16
003964  1b011100  andi r2, r2, 1
003968  0b912410  add.s r2, r9, r2
00396c  0b114110  add.s r2, r2, r4
003970  1b410101  srli r2, r2, 16
003974  674a2fe4  storeli.w r2, -3420(r30)
003978  e30a4fe5  loadli.w r21,  -3424(r30)
00397c  e3070fde  loadli.w r15,  -4352(r30)
003980  630e0fdf  loadli.w r28,  -4224(r30)
003984  e3463fe5  loadli.w r13,  -3428(r30)
003988  9f840000  addli r9, r1, 0
00398c  17817a00  and r2, r21, r7
003990  13012404  setlt.u r2, r8, r2
003994  3b600100  bneq r2, zero, 24
003998  1bc10a01  srli r2, r21, 16
00399c  1b011100  andi r2, r2, 1
0039a0  0b912a10  add.s r2, r21, r2
0039a4  0b114110  add.s r2, r2, r4
0039a8  9b440101  srli r9, r2, 16
0039ac  17817600  and r2, r13, r7
0039b0  670a1fe4  storeli.w r1, -3424(r30)
0039b4  13012404  setlt.u r2, r8, r2
0039b8  3b700100  bneq r2, zero, 28
0039bc  1bc10601  srli r2, r13, 16
0039c0  1b011100  andi r2, r2, 1
0039c4  0b912610  add.s r2, r13, r2
0039c8  0b114110  add.s r2, r2, r4
0039cc  1b410101  srli r2, r2, 16
0039d0  670a2fe4  storeli.w r2, -3424(r30)
0039d4  6741afdc  storeli.w r10, -4588(r30)
0039d8  63050fe4  loadli.w r10,  -3584(r30)
0039dc  e34abfe3  loadli.w r21,  -3620(r30)
0039e0  e7491fe4  storeli.w r1, -3428(r30)
0039e4  17017500  and r2, r10, r7
0039e8  13012404  setlt.u r2, r8, r2
0039ec  3b700100  bneq r2, zero, 28
0039f0  1b410501  srli r2, r10, 16
0039f4  1b011100  andi r2, r2, 1
0039f8  0b112510  add.s r2, r10, r2
0039fc  0b114110  add.s r2, r2, r4
003a00  1b410101  srli r2, r2, 16
003a04  e7492fe4  storeli.w r2, -3428(r30)
003a08  17017600  and r2, r12, r7
003a0c  e3463fdc  loadli.w r13,  -4580(r30)
003a10  1f850000  addli r10, r1, 0
003a14  13012404  setlt.u r2, r8, r2
003a18  3b600100  bneq r2, zero, 24
003a1c  1b410601  srli r2, r12, 16
003a20  1b011100  andi r2, r2, 1
003a24  0b112610  add.s r2, r12, r2
003a28  0b114110  add.s r2, r2, r4
003a2c  1b450101  srli r10, r2, 16
003a30  6306bfdc  loadli.w r12,  -4520(r30)
003a34  67041fe4  storeli.w r1, -3520(r30)
003a38  17017600  and r2, r12, r7
003a3c  13012404  setlt.u r2, r8, r2
003a40  3b700100  bneq r2, zero, 28
003a44  1b410601  srli r2, r12, 16
003a48  1b011100  andi r2, r2, 1
003a4c  0b112610  add.s r2, r12, r2
003a50  0b114110  add.s r2, r2, r4
003a54  1b410101  srli r2, r2, 16
003a58  67042fe4  storeli.w r2, -3520(r30)
003a5c  17817600  and r2, r13, r7
003a60  6346efe3  loadli.w r12,  -3596(r30)
003a64  e7055fdc  storeli.w r5, -4520(r30)
003a68  9f820000  addli r5, r1, 0
003a6c  13012404  setlt.u r2, r8, r2
003a70  3b600100  bneq r2, zero, 24
003a74  1bc10601  srli r2, r13, 16
003a78  1b011100  andi r2, r2, 1
003a7c  0b912610  add.s r2, r13, r2
003a80  0b114110  add.s r2, r2, r4
003a84  9b420101  srli r5, r2, 16
003a88  e7415fdc  storeli.w r5, -4580(r30)
003a8c  e3420fdc  loadli.w r5,  -4604(r30)
003a90  9f860000  addli r13, r1, 0
003a94  17817200  and r2, r5, r7
003a98  13012404  setlt.u r2, r8, r2
003a9c  3b600100  bneq r2, zero, 24
003aa0  1bc10201  srli r2, r5, 16
003aa4  1b011100  andi r2, r2, 1
003aa8  0b912210  add.s r2, r5, r2
003aac  0b114110  add.s r2, r2, r4
003ab0  9b460101  srli r13, r2, 16
003ab4  67063fdb  storeli.w r19, -4768(r30)
003ab8  e3091fdc  loadli.w r19,  -4600(r30)
003abc  e342dfe3  loadli.w r5,  -3604(r30)
003ac0  67069fdd  storeli.w r25, -4512(r30)
003ac4  9f8c0000  addli r25, r1, 0
003ac8  17817900  and r2, r19, r7
003acc  13012404  setlt.u r2, r8, r2
003ad0  3b600100  bneq r2, zero, 24
003ad4  1bc10901  srli r2, r19, 16
003ad8  1b011100  andi r2, r2, 1
003adc  0b912910  add.s r2, r19, r2
003ae0  0b114110  add.s r2, r2, r4
003ae4  9b4c0101  srli r25, r2, 16
003ae8  17817a00  and r2, r21, r7
003aec  9f890000  addli r19, r1, 0
003af0  e7009fdd  storeli.w r25, -4600(r30)
003af4  13012404  setlt.u r2, r8, r2
003af8  3b600100  bneq r2, zero, 24
003afc  1bc10a01  srli r2, r21, 16
003b00  1b011100  andi r2, r2, 1
003b04  0b912a10  add.s r2, r21, r2
003b08  0b114110  add.s r2, r2, r4
003b0c  9b490101  srli r19, r2, 16
003b10  17817d00  and r2, r27, r7
003b14  e30ccfe3  loadli.w r25,  -3616(r30)
003b18  67001fe4  storeli.w r1, -3584(r30)
003b1c  13012404  setlt.u r2, r8, r2
003b20  3b700100  bneq r2, zero, 28
003b24  1bc10d01  srli r2, r27, 16
003b28  1b011100  andi r2, r2, 1
003b2c  0b912d10  add.s r2, r27, r2
003b30  0b114110  add.s r2, r2, r4
003b34  1b410101  srli r2, r2, 16
003b38  67002fe4  storeli.w r2, -3584(r30)
003b3c  e30dffe3  loadli.w r27,  -3592(r30)
003b40  e74f1fe2  storeli.w r1, -3588(r30)
003b44  17817d00  and r2, r27, r7
003b48  13012404  setlt.u r2, r8, r2
003b4c  3b700100  bneq r2, zero, 28
003b50  1bc10d01  srli r2, r27, 16
003b54  1b011100  andi r2, r2, 1
003b58  0b912d10  add.s r2, r27, r2
003b5c  0b114110  add.s r2, r2, r4
003b60  1b410101  srli r2, r2, 16
003b64  e74f2fe2  storeli.w r2, -3588(r30)
003b68  17017600  and r2, r12, r7
003b6c  e70f1fe2  storeli.w r1, -3592(r30)
003b70  13012404  setlt.u r2, r8, r2
003b74  3b700100  bneq r2, zero, 28
003b78  1b410601  srli r2, r12, 16
003b7c  1b011100  andi r2, r2, 1
003b80  0b112610  add.s r2, r12, r2
003b84  0b114110  add.s r2, r2, r4
003b88  1b410101  srli r2, r2, 16
003b8c  e70f2fe2  storeli.w r2, -3592(r30)
003b90  6306efe3  loadli.w r12,  -3600(r30)
003b94  674f1fe2  storeli.w r1, -3596(r30)
003b98  17017600  and r2, r12, r7
003b9c  13012404  setlt.u r2, r8, r2
003ba0  3b700100  bneq r2, zero, 28
003ba4  1b410601  srli r2, r12, 16
003ba8  1b011100  andi r2, r2, 1
003bac  0b112610  add.s r2, r12, r2
003bb0  0b114110  add.s r2, r2, r4
003bb4  1b410101  srli r2, r2, 16
003bb8  674f2fe2  storeli.w r2, -3596(r30)
003bbc  17817200  and r2, r5, r7
003bc0  670f1fe2  storeli.w r1, -3600(r30)
003bc4  13012404  setlt.u r2, r8, r2
003bc8  3b700100  bneq r2, zero, 28
003bcc  1bc10201  srli r2, r5, 16
003bd0  1b011100  andi r2, r2, 1
003bd4  0b912210  add.s r2, r5, r2
003bd8  0b114110  add.s r2, r2, r4
003bdc  1b410101  srli r2, r2, 16
003be0  670f2fe2  storeli.w r2, -3600(r30)
003be4  e302dfe3  loadli.w r5,  -3608(r30)
003be8  e74e1fe2  storeli.w r1, -3604(r30)
003bec  17817200  and r2, r5, r7
003bf0  13012404  setlt.u r2, r8, r2
003bf4  3b700100  bneq r2, zero, 28
003bf8  1bc10201  srli r2, r5, 16
003bfc  1b011100  andi r2, r2, 1
003c00  0b912210  add.s r2, r5, r2
003c04  0b114110  add.s r2, r2, r4
003c08  1b410101  srli r2, r2, 16
003c0c  e74e2fe2  storeli.w r2, -3604(r30)
003c10  17017300  and r2, r6, r7
003c14  e70e1fe2  storeli.w r1, -3608(r30)
003c18  13012404  setlt.u r2, r8, r2
003c1c  3b700100  bneq r2, zero, 28
003c20  1b410301  srli r2, r6, 16
003c24  1b011100  andi r2, r2, 1
003c28  0b112310  add.s r2, r6, r2
003c2c  0b114110  add.s r2, r2, r4
003c30  1b410101  srli r2, r2, 16
003c34  e70e2fe2  storeli.w r2, -3608(r30)
003c38  63038fe5  loadli.w r6,  -3392(r30)
003c3c  674e1fe2  storeli.w r1, -3612(r30)
003c40  17017300  and r2, r6, r7
003c44  13012404  setlt.u r2, r8, r2
003c48  3b700100  bneq r2, zero, 28
003c4c  1b410301  srli r2, r6, 16
003c50  1b011100  andi r2, r2, 1
003c54  0b112310  add.s r2, r6, r2
003c58  0b114110  add.s r2, r2, r4
003c5c  1b410101  srli r2, r2, 16
003c60  674e2fe2  storeli.w r2, -3612(r30)
003c64  17817c00  and r2, r25, r7
003c68  670c1fe4  storeli.w r1, -3392(r30)
003c6c  13012404  setlt.u r2, r8, r2
003c70  3b700100  bneq r2, zero, 28
003c74  1bc10c01  srli r2, r25, 16
003c78  1b011100  andi r2, r2, 1
003c7c  0b912c10  add.s r2, r25, r2
003c80  0b114110  add.s r2, r2, r4
003c84  1b410101  srli r2, r2, 16
003c88  670c2fe4  storeli.w r2, -3392(r30)
003c8c  17017b00  and r2, r22, r7
003c90  9f8d0100  addli r27, r3, 0
003c94  670e1fe2  storeli.w r1, -3616(r30)
003c98  13012404  setlt.u r2, r8, r2
003c9c  3b700100  bneq r2, zero, 28
003ca0  1b410b01  srli r2, r22, 16
003ca4  1b011100  andi r2, r2, 1
003ca8  0b112b10  add.s r2, r22, r2
003cac  0b114110  add.s r2, r2, r4
003cb0  1b410101  srli r2, r2, 16
003cb4  670e2fe2  storeli.w r2, -3616(r30)
003cb8  630bbfe3  loadli.w r22,  -3624(r30)
003cbc  1f8c0500  addli r24, r11, 0
003cc0  e74d1fe2  storeli.w r1, -3620(r30)
003cc4  17017b00  and r2, r22, r7
003cc8  13012404  setlt.u r2, r8, r2
003ccc  3b700100  bneq r2, zero, 28
003cd0  1b410b01  srli r2, r22, 16
003cd4  1b011100  andi r2, r2, 1
003cd8  0b112b10  add.s r2, r22, r2
003cdc  0b114110  add.s r2, r2, r4
003ce0  1b410101  srli r2, r2, 16
003ce4  e74d2fe2  storeli.w r2, -3620(r30)
003ce8  67403fdd  storeli.w r19, -4604(r30)
003cec  e349afda  loadli.w r19,  -4780(r30)
003cf0  e3457fda  loadli.w r11,  -4804(r30)
003cf4  67077fdb  storeli.w r23, -4752(r30)
003cf8  e70d1fe2  storeli.w r1, -3624(r30)
003cfc  17817900  and r2, r19, r7
003d00  13012404  setlt.u r2, r8, r2
003d04  3b700100  bneq r2, zero, 28
003d08  1bc10901  srli r2, r19, 16
003d0c  1b011100  andi r2, r2, 1
003d10  0b912910  add.s r2, r19, r2
003d14  0b114110  add.s r2, r2, r4
003d18  1b410101  srli r2, r2, 16
003d1c  e70d2fe2  storeli.w r2, -3624(r30)
003d20  67454fdb  storeli.w r20, -4780(r30)
003d24  634aafe3  loadli.w r20,  -3628(r30)
003d28  9f890000  addli r19, r1, 0
003d2c  17017a00  and r2, r20, r7
003d30  13012404  setlt.u r2, r8, r2
003d34  3b600100  bneq r2, zero, 24
003d38  1b410a01  srli r2, r20, 16
003d3c  1b011100  andi r2, r2, 1
003d40  0b112a10  add.s r2, r20, r2
003d44  0b114110  add.s r2, r2, r4
003d48  9b490101  srli r19, r2, 16
003d4c  e308afda  loadli.w r17,  -4784(r30)
003d50  1f8a0500  addli r20, r11, 0
003d54  674d1fe2  storeli.w r1, -3628(r30)
003d58  17817800  and r2, r17, r7
003d5c  13012404  setlt.u r2, r8, r2
003d60  3b700100  bneq r2, zero, 28
003d64  1bc10801  srli r2, r17, 16
003d68  1b011100  andi r2, r2, 1
003d6c  0b912810  add.s r2, r17, r2
003d70  0b114110  add.s r2, r2, r4
003d74  1b410101  srli r2, r2, 16
003d78  674d2fe2  storeli.w r2, -3628(r30)
003d7c  e301afe3  loadli.w r3,  -3632(r30)
003d80  9f880000  addli r17, r1, 0
003d84  17817100  and r2, r3, r7
003d88  13012404  setlt.u r2, r8, r2
003d8c  3b600100  bneq r2, zero, 24
003d90  1bc10101  srli r2, r3, 16
003d94  1b011100  andi r2, r2, 1
003d98  0b912110  add.s r2, r3, r2
003d9c  0b114110  add.s r2, r2, r4
003da0  9b480101  srli r17, r2, 16
003da4  e3010fe1  loadli.w r3,  -3968(r30)
003da8  670d1fe2  storeli.w r1, -3632(r30)
003dac  17817100  and r2, r3, r7
003db0  13012404  setlt.u r2, r8, r2
003db4  3b700100  bneq r2, zero, 28
003db8  1bc10101  srli r2, r3, 16
003dbc  1b011100  andi r2, r2, 1
003dc0  0b912110  add.s r2, r3, r2
003dc4  0b114110  add.s r2, r2, r4
003dc8  1b410101  srli r2, r2, 16
003dcc  670d2fe2  storeli.w r2, -3632(r30)
003dd0  63068fe0  loadli.w r12,  -4032(r30)
003dd4  67081fe0  storeli.w r1, -3968(r30)
003dd8  17017600  and r2, r12, r7
003ddc  13012404  setlt.u r2, r8, r2
003de0  3b700100  bneq r2, zero, 28
003de4  1b410601  srli r2, r12, 16
003de8  1b011100  andi r2, r2, 1
003dec  0b112610  add.s r2, r12, r2
003df0  0b114110  add.s r2, r2, r4
003df4  1b410101  srli r2, r2, 16
003df8  67082fe0  storeli.w r2, -3968(r30)
003dfc  e305bfda  loadli.w r11,  -4776(r30)
003e00  63439fda  loadli.w r6,  -4788(r30)
003e04  e30a9fda  loadli.w r21,  -4792(r30)
003e08  67041fe0  storeli.w r1, -4032(r30)
003e0c  17817500  and r2, r11, r7
003e10  13012404  setlt.u r2, r8, r2
003e14  3b700100  bneq r2, zero, 28
003e18  1bc10501  srli r2, r11, 16
003e1c  1b011100  andi r2, r2, 1
003e20  0b912510  add.s r2, r11, r2
003e24  0b114110  add.s r2, r2, r4
003e28  1b410101  srli r2, r2, 16
003e2c  67042fe0  storeli.w r2, -4032(r30)
003e30  63060fe0  loadli.w r12,  -4096(r30)
003e34  9f850000  addli r11, r1, 0
003e38  17017600  and r2, r12, r7
003e3c  13012404  setlt.u r2, r8, r2
003e40  3b600100  bneq r2, zero, 24
003e44  1b410601  srli r2, r12, 16
003e48  1b011100  andi r2, r2, 1
003e4c  0b112610  add.s r2, r12, r2
003e50  0b114110  add.s r2, r2, r4
003e54  9b450101  srli r11, r2, 16
003e58  63468fda  loadli.w r12,  -4796(r30)
003e5c  67001fe0  storeli.w r1, -4096(r30)
003e60  17017600  and r2, r12, r7
003e64  13012404  setlt.u r2, r8, r2
003e68  3b700100  bneq r2, zero, 28
003e6c  1b410601  srli r2, r12, 16
003e70  1b011100  andi r2, r2, 1
003e74  0b112610  add.s r2, r12, r2
003e78  0b114110  add.s r2, r2, r4
003e7c  1b410101  srli r2, r2, 16
003e80  67002fe0  storeli.w r2, -4096(r30)
003e84  17017700  and r2, r14, r7
003e88  9f8b0000  addli r23, r1, 0
003e8c  13012404  setlt.u r2, r8, r2
003e90  3b600100  bneq r2, zero, 24
003e94  1b410701  srli r2, r14, 16
003e98  1b011100  andi r2, r2, 1
003e9c  0b112710  add.s r2, r14, r2
003ea0  0b114110  add.s r2, r2, r4
003ea4  9b4b0101  srli r23, r2, 16
003ea8  17017800  and r2, r16, r7
003eac  670c1fde  storeli.w r1, -4160(r30)
003eb0  13012404  setlt.u r2, r8, r2
003eb4  3b700100  bneq r2, zero, 28
003eb8  1b410801  srli r2, r16, 16
003ebc  1b011100  andi r2, r2, 1
003ec0  0b112810  add.s r2, r16, r2
003ec4  0b114110  add.s r2, r2, r4
003ec8  1b410101  srli r2, r2, 16
003ecc  670c2fde  storeli.w r2, -4160(r30)
003ed0  17017e00  and r2, r28, r7
003ed4  1f880000  addli r16, r1, 0
003ed8  13012404  setlt.u r2, r8, r2
003edc  3b600100  bneq r2, zero, 24
003ee0  1b410e01  srli r2, r28, 16
003ee4  1b011100  andi r2, r2, 1
003ee8  0b112e10  add.s r2, r28, r2
003eec  0b114110  add.s r2, r2, r4
003ef0  1b480101  srli r16, r2, 16
003ef4  17017900  and r2, r18, r7
003ef8  67081fde  storeli.w r1, -4224(r30)
003efc  13012404  setlt.u r2, r8, r2
003f00  3b700100  bneq r2, zero, 28
003f04  1b410901  srli r2, r18, 16
003f08  1b011100  andi r2, r2, 1
003f0c  0b112910  add.s r2, r18, r2
003f10  0b114110  add.s r2, r2, r4
003f14  1b410101  srli r2, r2, 16
003f18  67082fde  storeli.w r2, -4224(r30)
003f1c  17017d00  and r2, r26, r7
003f20  1f890000  addli r18, r1, 0
003f24  13012404  setlt.u r2, r8, r2
003f28  3b600100  bneq r2, zero, 24
003f2c  1b410d01  srli r2, r26, 16
003f30  1b011100  andi r2, r2, 1
003f34  0b112d10  add.s r2, r26, r2
003f38  0b114110  add.s r2, r2, r4
003f3c  1b490101  srli r18, r2, 16
003f40  1f8d0400  addli r26, r9, 0
003f44  e344dfda  loadli.w r9,  -4756(r30)
003f48  67041fde  storeli.w r1, -4288(r30)
003f4c  17817400  and r2, r9, r7
003f50  13012404  setlt.u r2, r8, r2
003f54  3b700100  bneq r2, zero, 28
003f58  1bc10401  srli r2, r9, 16
003f5c  1b011100  andi r2, r2, 1
003f60  0b912410  add.s r2, r9, r2
003f64  0b114110  add.s r2, r2, r4
003f68  1b410101  srli r2, r2, 16
003f6c  67042fde  storeli.w r2, -4288(r30)
003f70  17817700  and r2, r15, r7
003f74  9f840000  addli r9, r1, 0
003f78  13012404  setlt.u r2, r8, r2
003f7c  3b600100  bneq r2, zero, 24
003f80  1bc10701  srli r2, r15, 16
003f84  1b011100  andi r2, r2, 1
003f88  0b912710  add.s r2, r15, r2
003f8c  0b114110  add.s r2, r2, r4
003f90  9b440101  srli r9, r2, 16
003f94  9f870600  addli r15, r13, 0
003f98  e3068fdd  loadli.w r13,  -4416(r30)
003f9c  67001fde  storeli.w r1, -4352(r30)
003fa0  17817600  and r2, r13, r7
003fa4  13012404  setlt.u r2, r8, r2
003fa8  3b700100  bneq r2, zero, 28
003fac  1bc10601  srli r2, r13, 16
003fb0  1b011100  andi r2, r2, 1
003fb4  0b912610  add.s r2, r13, r2
003fb8  0b114110  add.s r2, r2, r4
003fbc  1b410101  srli r2, r2, 16
003fc0  67002fde  storeli.w r2, -4352(r30)
003fc4  17017300  and r2, r6, r7
003fc8  9f860000  addli r13, r1, 0
003fcc  13012404  setlt.u r2, r8, r2
003fd0  3b600100  bneq r2, zero, 24
003fd4  1b410301  srli r2, r6, 16
003fd8  1b011100  andi r2, r2, 1
003fdc  0b112310  add.s r2, r6, r2
003fe0  0b114110  add.s r2, r2, r4
003fe4  9b460101  srli r13, r2, 16
003fe8  63437fdd  loadli.w r6,  -4420(r30)
003fec  670c1fdc  storeli.w r1, -4416(r30)
003ff0  17017300  and r2, r6, r7
003ff4  13012404  setlt.u r2, r8, r2
003ff8  3b700100  bneq r2, zero, 28
003ffc  1b410301  srli r2, r6, 16
004000  1b011100  andi r2, r2, 1
004004  0b112310  add.s r2, r6, r2
004008  0b114110  add.s r2, r2, r4
00400c  1b410101  srli r2, r2, 16
004010  670c2fdc  storeli.w r2, -4416(r30)
004014  17817a00  and r2, r21, r7
004018  1f8e0000  addli r28, r1, 0
00401c  13012404  setlt.u r2, r8, r2
004020  3b600100  bneq r2, zero, 24
004024  1bc10a01  srli r2, r21, 16
004028  1b011100  andi r2, r2, 1
00402c  0b912a10  add.s r2, r21, r2
004030  0b114110  add.s r2, r2, r4
004034  1b4e0101  srli r28, r2, 16
004038  1f0b0500  addli r22, r10, 0
00403c  6305ffda  loadli.w r10,  -4744(r30)
004040  e74b1fdc  storeli.w r1, -4420(r30)
004044  17017500  and r2, r10, r7
004048  13012404  setlt.u r2, r8, r2
00404c  3b700100  bneq r2, zero, 28
004050  1b410501  srli r2, r10, 16
004054  1b011100  andi r2, r2, 1
004058  0b112510  add.s r2, r10, r2
00405c  0b114110  add.s r2, r2, r4
004060  1b410101  srli r2, r2, 16
004064  e74b2fdc  storeli.w r2, -4420(r30)
004068  e30a7fdd  loadli.w r21,  -4424(r30)
00406c  9f810000  addli r3, r1, 0
004070  17817a00  and r2, r21, r7
004074  13012404  setlt.u r2, r8, r2
004078  3b600100  bneq r2, zero, 24
00407c  1bc10a01  srli r2, r21, 16
004080  1b011100  andi r2, r2, 1
004084  0b912a10  add.s r2, r21, r2
004088  0b114110  add.s r2, r2, r4
00408c  9b410101  srli r3, r2, 16
004090  e342efda  loadli.w r5,  -4748(r30)
004094  e7073fda  storeli.w r3, -4744(r30)
004098  e341cfdc  loadli.w r3,  -4508(r30)
00409c  e70b1fdc  storeli.w r1, -4424(r30)
0040a0  17817200  and r2, r5, r7
0040a4  13012404  setlt.u r2, r8, r2
0040a8  3b700100  bneq r2, zero, 28
0040ac  1bc10201  srli r2, r5, 16
0040b0  1b011100  andi r2, r2, 1
0040b4  0b912210  add.s r2, r5, r2
0040b8  0b114110  add.s r2, r2, r4
0040bc  1b410101  srli r2, r2, 16
0040c0  e70b2fdc  storeli.w r2, -4424(r30)
0040c4  e3020fdb  loadli.w r5,  -4736(r30)
0040c8  9f8a0000  addli r21, r1, 0
0040cc  17817200  and r2, r5, r7
0040d0  13012404  setlt.u r2, r8, r2
0040d4  3b600100  bneq r2, zero, 24
0040d8  1bc10201  srli r2, r5, 16
0040dc  1b011100  andi r2, r2, 1
0040e0  0b912210  add.s r2, r5, r2
0040e4  0b114110  add.s r2, r2, r4
0040e8  9b4a0101  srli r21, r2, 16
0040ec  6708cfdb  storeli.w r28, -4736(r30)
0040f0  634e6fdd  loadli.w r28,  -4428(r30)
0040f4  9f820000  addli r5, r1, 0
0040f8  17017e00  and r2, r28, r7
0040fc  13012404  setlt.u r2, r8, r2
004100  3b600100  bneq r2, zero, 24
004104  1b410e01  srli r2, r28, 16
004108  1b011100  andi r2, r2, 1
00410c  0b112e10  add.s r2, r28, r2
004110  0b114110  add.s r2, r2, r4
004114  9b420101  srli r5, r2, 16
004118  634e0fdb  loadli.w r28,  -4732(r30)
00411c  67475fda  storeli.w r5, -4748(r30)
004120  9f820100  addli r5, r3, 0
004124  674b1fdc  storeli.w r1, -4428(r30)
004128  17017e00  and r2, r28, r7
00412c  13012404  setlt.u r2, r8, r2
004130  3b700100  bneq r2, zero, 28
004134  1b410e01  srli r2, r28, 16
004138  1b011100  andi r2, r2, 1
00413c  0b112e10  add.s r2, r28, r2
004140  0b114110  add.s r2, r2, r4
004144  1b410101  srli r2, r2, 16
004148  674b2fdc  storeli.w r2, -4428(r30)
00414c  6748dfda  storeli.w r13, -4732(r30)
004150  e3066fdd  loadli.w r13,  -4432(r30)
004154  1f8e0000  addli r28, r1, 0
004158  17817600  and r2, r13, r7
00415c  13012404  setlt.u r2, r8, r2
004160  3b600100  bneq r2, zero, 24
004164  1bc10601  srli r2, r13, 16
004168  1b011100  andi r2, r2, 1
00416c  0b912610  add.s r2, r13, r2
004170  0b114110  add.s r2, r2, r4
004174  1b4e0101  srli r28, r2, 16
004178  e3461fdb  loadli.w r13,  -4724(r30)
00417c  1f050b00  addli r10, r22, 0
004180  670b1fdc  storeli.w r1, -4432(r30)
004184  17817600  and r2, r13, r7
004188  13012404  setlt.u r2, r8, r2
00418c  3b700100  bneq r2, zero, 28
004190  1bc10601  srli r2, r13, 16
004194  1b011100  andi r2, r2, 1
004198  0b912610  add.s r2, r13, r2
00419c  0b114110  add.s r2, r2, r4
0041a0  1b410101  srli r2, r2, 16
0041a4  670b2fdc  storeli.w r2, -4432(r30)
0041a8  e7489fda  storeli.w r9, -4724(r30)
0041ac  e3445fdd  loadli.w r9,  -4436(r30)
0041b0  1f8b0000  addli r22, r1, 0
0041b4  17817400  and r2, r9, r7
0041b8  13012404  setlt.u r2, r8, r2
0041bc  3b600100  bneq r2, zero, 24
0041c0  1bc10401  srli r2, r9, 16
0041c4  1b011100  andi r2, r2, 1
0041c8  0b912410  add.s r2, r9, r2
0041cc  0b114110  add.s r2, r2, r4
0041d0  1b4b0101  srli r22, r2, 16
0041d4  e3043fdb  loadli.w r9,  -4712(r30)
0041d8  1f830d00  addli r6, r27, 0
0041dc  e74a1fdc  storeli.w r1, -4436(r30)
0041e0  17817400  and r2, r9, r7
0041e4  13012404  setlt.u r2, r8, r2
0041e8  3b700100  bneq r2, zero, 28
0041ec  1bc10401  srli r2, r9, 16
0041f0  1b011100  andi r2, r2, 1
0041f4  0b912410  add.s r2, r9, r2
0041f8  0b114110  add.s r2, r2, r4
0041fc  1b410101  srli r2, r2, 16
004200  e74a2fdc  storeli.w r2, -4436(r30)
004204  e7092fdb  storeli.w r18, -4712(r30)
004208  63492fdb  loadli.w r18,  -4716(r30)
00420c  9f840000  addli r9, r1, 0
004210  17017900  and r2, r18, r7
004214  13012404  setlt.u r2, r8, r2
004218  3b600100  bneq r2, zero, 24
00421c  1b410901  srli r2, r18, 16
004220  1b011100  andi r2, r2, 1
004224  0b112910  add.s r2, r18, r2
004228  0b114110  add.s r2, r2, r4
00422c  9b440101  srli r9, r2, 16
004230  63494fdb  loadli.w r18,  -4700(r30)
004234  67499fda  storeli.w r9, -4716(r30)
004238  9f8d0000  addli r27, r1, 0
00423c  9f040d00  addli r9, r26, 0
004240  17017900  and r2, r18, r7
004244  13012404  setlt.u r2, r8, r2
004248  3b600100  bneq r2, zero, 24
00424c  1b410901  srli r2, r18, 16
004250  1b011100  andi r2, r2, 1
004254  0b112910  add.s r2, r18, r2
004258  0b114110  add.s r2, r2, r4
00425c  9b4d0101  srli r27, r2, 16
004260  674a0fdb  storeli.w r16, -4700(r30)
004264  63084fdb  loadli.w r16,  -4704(r30)
004268  1f890000  addli r18, r1, 0
00426c  17017800  and r2, r16, r7
004270  13012404  setlt.u r2, r8, r2
004274  3b600100  bneq r2, zero, 24
004278  1b410801  srli r2, r16, 16
00427c  1b011100  andi r2, r2, 1
004280  0b112810  add.s r2, r16, r2
004284  0b114110  add.s r2, r2, r4
004288  1b490101  srli r18, r2, 16
00428c  63086fdb  loadli.w r16,  -4688(r30)
004290  1f8d0000  addli r26, r1, 0
004294  17017800  and r2, r16, r7
004298  13012404  setlt.u r2, r8, r2
00429c  3b600100  bneq r2, zero, 24
0042a0  1b410801  srli r2, r16, 16
0042a4  1b011100  andi r2, r2, 1
0042a8  0b112810  add.s r2, r16, r2
0042ac  0b114110  add.s r2, r2, r4
0042b0  1b4d0101  srli r26, r2, 16
0042b4  63475fdb  loadli.w r14,  -4692(r30)
0042b8  1f880000  addli r16, r1, 0
0042bc  670b7fdb  storeli.w r23, -4688(r30)
0042c0  17017700  and r2, r14, r7
0042c4  13012404  setlt.u r2, r8, r2
0042c8  3b600100  bneq r2, zero, 24
0042cc  1b410701  srli r2, r14, 16
0042d0  1b011100  andi r2, r2, 1
0042d4  0b112710  add.s r2, r14, r2
0042d8  0b114110  add.s r2, r2, r4
0042dc  1b480101  srli r16, r2, 16
0042e0  63478fdb  loadli.w r14,  -4668(r30)
0042e4  9f8b0000  addli r23, r1, 0
0042e8  17017700  and r2, r14, r7
0042ec  13012404  setlt.u r2, r8, r2
0042f0  3b600100  bneq r2, zero, 24
0042f4  1b410701  srli r2, r14, 16
0042f8  1b011100  andi r2, r2, 1
0042fc  0b112710  add.s r2, r14, r2
004300  0b114110  add.s r2, r2, r4
004304  9b4b0101  srli r23, r2, 16
004308  674cbfda  storeli.w r11, -4668(r30)
00430c  e3058fdb  loadli.w r11,  -4672(r30)
004310  1f870000  addli r14, r1, 0
004314  17817500  and r2, r11, r7
004318  13012404  setlt.u r2, r8, r2
00431c  3b600100  bneq r2, zero, 24
004320  1bc10501  srli r2, r11, 16
004324  1b011100  andi r2, r2, 1
004328  0b912510  add.s r2, r11, r2
00432c  0b114110  add.s r2, r2, r4
004330  1b470101  srli r14, r2, 16
004334  e305afdb  loadli.w r11,  -4656(r30)
004338  1f860000  addli r12, r1, 0
00433c  17817500  and r2, r11, r7
004340  13012404  setlt.u r2, r8, r2
004344  3b600100  bneq r2, zero, 24
004348  1bc10501  srli r2, r11, 16
00434c  1b011100  andi r2, r2, 1
004350  0b912510  add.s r2, r11, r2
004354  0b114110  add.s r2, r2, r4
004358  1b460101  srli r12, r2, 16
00435c  670d1fdb  storeli.w r17, -4656(r30)
004360  e3089fdb  loadli.w r17,  -4664(r30)
004364  9f850000  addli r11, r1, 0
004368  670c6fdb  storeli.w r22, -4672(r30)
00436c  17817800  and r2, r17, r7
004370  13012404  setlt.u r2, r8, r2
004374  3b600100  bneq r2, zero, 24
004378  1bc10801  srli r2, r17, 16
00437c  1b011100  andi r2, r2, 1
004380  0b912810  add.s r2, r17, r2
004384  0b114110  add.s r2, r2, r4
004388  9b450101  srli r11, r2, 16
00438c  634b9fdb  loadli.w r22,  -4660(r30)
004390  e70cbfda  storeli.w r11, -4664(r30)
004394  e3057fdb  loadli.w r11,  -4680(r30)
004398  9f860000  addli r13, r1, 0
00439c  17017b00  and r2, r22, r7
0043a0  13012404  setlt.u r2, r8, r2
0043a4  3b600100  bneq r2, zero, 24
0043a8  1b410b01  srli r2, r22, 16
0043ac  1b011100  andi r2, r2, 1
0043b0  0b112b10  add.s r2, r22, r2
0043b4  0b114110  add.s r2, r2, r4
0043b8  9b460101  srli r13, r2, 16
0043bc  e3015fdd  loadli.w r3,  -4440(r30)
0043c0  1f0b0c00  addli r22, r24, 0
0043c4  1f8c0000  addli r24, r1, 0
0043c8  17817100  and r2, r3, r7
0043cc  13012404  setlt.u r2, r8, r2
0043d0  3b600100  bneq r2, zero, 24
0043d4  1bc10101  srli r2, r3, 16
0043d8  1b011100  andi r2, r2, 1
0043dc  0b912110  add.s r2, r3, r2
0043e0  0b114110  add.s r2, r2, r4
0043e4  1b4c0101  srli r24, r2, 16
0043e8  e341afdb  loadli.w r3,  -4652(r30)
0043ec  e70a1fdc  storeli.w r1, -4440(r30)
0043f0  17817100  and r2, r3, r7
0043f4  13012404  setlt.u r2, r8, r2
0043f8  3b700100  bneq r2, zero, 28
0043fc  1bc10101  srli r2, r3, 16
004400  1b011100  andi r2, r2, 1
004404  0b912110  add.s r2, r3, r2
004408  0b114110  add.s r2, r2, r4
00440c  1b410101  srli r2, r2, 16
004410  e70a2fdc  storeli.w r2, -4440(r30)
004414  674d3fdb  storeli.w r19, -4652(r30)
004418  e3494fdd  loadli.w r19,  -4444(r30)
00441c  9f810000  addli r3, r1, 0
004420  17817900  and r2, r19, r7
004424  13012404  setlt.u r2, r8, r2
004428  3b600100  bneq r2, zero, 24
00442c  1bc10901  srli r2, r19, 16
004430  1b011100  andi r2, r2, 1
004434  0b912910  add.s r2, r19, r2
004438  0b114110  add.s r2, r2, r4
00443c  9b410101  srli r3, r2, 16
004440  e349bfdb  loadli.w r19,  -4644(r30)
004444  e74c3fda  storeli.w r3, -4660(r30)
004448  9f010b00  addli r3, r22, 0
00444c  674a1fdc  storeli.w r1, -4444(r30)
004450  17817900  and r2, r19, r7
004454  13012404  setlt.u r2, r8, r2
004458  3b700100  bneq r2, zero, 28
00445c  1bc10901  srli r2, r19, 16
004460  1b011100  andi r2, r2, 1
004464  0b912910  add.s r2, r19, r2
004468  0b114110  add.s r2, r2, r4
00446c  1b410101  srli r2, r2, 16
004470  674a2fdc  storeli.w r2, -4444(r30)
004474  63018fe5  loadli.w r2,  -3392(r30)
004478  e30c4fdd  loadli.w r25,  -4448(r30)
00447c  1f8b0000  addli r22, r1, 0
004480  670c2fe4  storeli.w r2, -3392(r30)
004484  17817c00  and r2, r25, r7
004488  13012404  setlt.u r2, r8, r2
00448c  3b600100  bneq r2, zero, 24
004490  1bc10c01  srli r2, r25, 16
004494  1b011100  andi r2, r2, 1
004498  0b912c10  add.s r2, r25, r2
00449c  0b114110  add.s r2, r2, r4
0044a0  1b4b0101  srli r22, r2, 16
0044a4  9f0c0300  addli r25, r6, 0
0044a8  6303cfdb  loadli.w r6,  -4640(r30)
0044ac  9f080a00  addli r17, r20, 0
0044b0  670a1fdc  storeli.w r1, -4448(r30)
0044b4  17017300  and r2, r6, r7
0044b8  13012404  setlt.u r2, r8, r2
0044bc  3b700100  bneq r2, zero, 28
0044c0  1b410301  srli r2, r6, 16
0044c4  1b011100  andi r2, r2, 1
0044c8  0b112310  add.s r2, r6, r2
0044cc  0b114110  add.s r2, r2, r4
0044d0  1b410101  srli r2, r2, 16
0044d4  670a2fdc  storeli.w r2, -4448(r30)
0044d8  1f830500  addli r6, r11, 0
0044dc  e345cfdb  loadli.w r11,  -4636(r30)
0044e0  634aafda  loadli.w r20,  -4780(r30)
0044e4  670e6fdb  storeli.w r22, -4640(r30)
0044e8  1f8b0000  addli r22, r1, 0
0044ec  17817500  and r2, r11, r7
0044f0  13012404  setlt.u r2, r8, r2
0044f4  3b600100  bneq r2, zero, 24
0044f8  1bc10501  srli r2, r11, 16
0044fc  1b011100  andi r2, r2, 1
004500  0b912510  add.s r2, r11, r2
004504  0b114110  add.s r2, r2, r4
004508  1b4b0101  srli r22, r2, 16
00450c  e345dfdb  loadli.w r11,  -4628(r30)
004510  e74d6fdb  storeli.w r22, -4644(r30)
004514  630befda  loadli.w r22,  -4752(r30)
004518  674e7fdb  storeli.w r23, -4636(r30)
00451c  9f8b0000  addli r23, r1, 0
004520  17817500  and r2, r11, r7
004524  13012404  setlt.u r2, r8, r2
004528  3b600100  bneq r2, zero, 24
00452c  1bc10501  srli r2, r11, 16
004530  1b011100  andi r2, r2, 1
004534  0b912510  add.s r2, r11, r2
004538  0b114110  add.s r2, r2, r4
00453c  9b4b0101  srli r23, r2, 16
004540  e74e7fdb  storeli.w r23, -4628(r30)
004544  e34b3fdd  loadli.w r23,  -4452(r30)
004548  9f850000  addli r11, r1, 0
00454c  17817b00  and r2, r23, r7
004550  13012404  setlt.u r2, r8, r2
004554  3b600100  bneq r2, zero, 24
004558  1bc10b01  srli r2, r23, 16
00455c  1b011100  andi r2, r2, 1
004560  0b912b10  add.s r2, r23, r2
004564  0b114110  add.s r2, r2, r4
004568  9b450101  srli r11, r2, 16
00456c  9f8b0100  addli r23, r3, 0
004570  e301efdb  loadli.w r3,  -4624(r30)
004574  e74abfda  storeli.w r11, -4692(r30)
004578  9f050300  addli r11, r6, 0
00457c  e7491fdc  storeli.w r1, -4452(r30)
004580  17817100  and r2, r3, r7
004584  13012404  setlt.u r2, r8, r2
004588  3b700100  bneq r2, zero, 28
00458c  1bc10101  srli r2, r3, 16
004590  1b011100  andi r2, r2, 1
004594  0b912110  add.s r2, r3, r2
004598  0b114110  add.s r2, r2, r4
00459c  1b410101  srli r2, r2, 16
0045a0  e7492fdc  storeli.w r2, -4452(r30)
0045a4  6343efdb  loadli.w r6,  -4620(r30)
0045a8  e301bfdb  loadli.w r3,  -4648(r30)
0045ac  670f8fdb  storeli.w r24, -4624(r30)
0045b0  1f8c0000  addli r24, r1, 0
0045b4  17017300  and r2, r6, r7
0045b8  13012404  setlt.u r2, r8, r2
0045bc  3b600100  bneq r2, zero, 24
0045c0  1b410301  srli r2, r6, 16
0045c4  1b011100  andi r2, r2, 1
0045c8  0b112310  add.s r2, r6, r2
0045cc  0b114110  add.s r2, r2, r4
0045d0  1b4c0101  srli r24, r2, 16
0045d4  674f8fdb  storeli.w r24, -4620(r30)
0045d8  630cffdb  loadli.w r24,  -4616(r30)
0045dc  1f030b00  addli r6, r22, 0
0045e0  1f8b0000  addli r22, r1, 0
0045e4  17017c00  and r2, r24, r7
0045e8  13012404  setlt.u r2, r8, r2
0045ec  3b600100  bneq r2, zero, 24
0045f0  1b410c01  srli r2, r24, 16
0045f4  1b011100  andi r2, r2, 1
0045f8  0b112c10  add.s r2, r24, r2
0045fc  0b114110  add.s r2, r2, r4
004600  1b4b0101  srli r22, r2, 16
004604  670a6fdb  storeli.w r22, -4704(r30)
004608  634bffdb  loadli.w r22,  -4612(r30)
00460c  9f890000  addli r19, r1, 0
004610  e70f5fdb  storeli.w r21, -4616(r30)
004614  17017b00  and r2, r22, r7
004618  13012404  setlt.u r2, r8, r2
00461c  3b600100  bneq r2, zero, 24
004620  1b410b01  srli r2, r22, 16
004624  1b011100  andi r2, r2, 1
004628  0b112b10  add.s r2, r22, r2
00462c  0b114110  add.s r2, r2, r4
004630  9b490101  srli r19, r2, 16
004634  e30a3fdd  loadli.w r21,  -4456(r30)
004638  634bbfda  loadli.w r22,  -4772(r30)
00463c  e74fcfda  storeli.w r12, -4612(r30)
004640  1f860000  addli r12, r1, 0
004644  17817a00  and r2, r21, r7
004648  13012404  setlt.u r2, r8, r2
00464c  3b600100  bneq r2, zero, 24
004650  1bc10a01  srli r2, r21, 16
004654  1b011100  andi r2, r2, 1
004658  0b912a10  add.s r2, r21, r2
00465c  0b114110  add.s r2, r2, r4
004660  1b460101  srli r12, r2, 16
004664  9f0a0a00  addli r21, r20, 0
004668  634a2fdd  loadli.w r20,  -4460(r30)
00466c  e705cfda  storeli.w r12, -4776(r30)
004670  6346ffda  loadli.w r12,  -4740(r30)
004674  e7091fdc  storeli.w r1, -4456(r30)
004678  17017a00  and r2, r20, r7
00467c  13012404  setlt.u r2, r8, r2
004680  3b700100  bneq r2, zero, 28
004684  1b410a01  srli r2, r20, 16
004688  1b011100  andi r2, r2, 1
00468c  0b112a10  add.s r2, r20, r2
004690  0b114110  add.s r2, r2, r4
004694  1b410101  srli r2, r2, 16
004698  e7092fdc  storeli.w r2, -4456(r30)
00469c  1f8a0800  addli r20, r17, 0
0046a0  e3080fdc  loadli.w r17,  -4608(r30)
0046a4  67491fdc  storeli.w r1, -4460(r30)
0046a8  17817800  and r2, r17, r7
0046ac  13012404  setlt.u r2, r8, r2
0046b0  3b700100  bneq r2, zero, 28
0046b4  1bc10801  srli r2, r17, 16
0046b8  1b011100  andi r2, r2, 1
0046bc  0b912810  add.s r2, r17, r2
0046c0  0b114110  add.s r2, r2, r4
0046c4  1b410101  srli r2, r2, 16
0046c8  67492fdc  storeli.w r2, -4460(r30)
0046cc  e3082fdc  loadli.w r17,  -4592(r30)
0046d0  6700bfdd  storeli.w r27, -4608(r30)
0046d4  9f8d0000  addli r27, r1, 0
0046d8  17817800  and r2, r17, r7
0046dc  13012404  setlt.u r2, r8, r2
0046e0  3b600100  bneq r2, zero, 24
0046e4  1bc10801  srli r2, r17, 16
0046e8  1b011100  andi r2, r2, 1
0046ec  0b912810  add.s r2, r17, r2
0046f0  0b114110  add.s r2, r2, r4
0046f4  9b4d0101  srli r27, r2, 16
0046f8  e744bfdb  storeli.w r27, -4788(r30)
0046fc  e34d1fdc  loadli.w r27,  -4596(r30)
004700  6701ffdc  storeli.w r15, -4592(r30)
004704  9f870000  addli r15, r1, 0
004708  17817d00  and r2, r27, r7
00470c  13012404  setlt.u r2, r8, r2
004710  3b600100  bneq r2, zero, 24
004714  1bc10d01  srli r2, r27, 16
004718  1b011100  andi r2, r2, 1
00471c  0b912d10  add.s r2, r27, r2
004720  0b114110  add.s r2, r2, r4
004724  9b470101  srli r15, r2, 16
004728  e30d5fdc  loadli.w r27,  -4568(r30)
00472c  e704ffda  storeli.w r15, -4792(r30)
004730  9f870000  addli r15, r1, 0
004734  9f080a00  addli r17, r20, 0
004738  17817d00  and r2, r27, r7
00473c  13012404  setlt.u r2, r8, r2
004740  3b600100  bneq r2, zero, 24
004744  1bc10d01  srli r2, r27, 16
004748  1b011100  andi r2, r2, 1
00474c  0b912d10  add.s r2, r27, r2
004750  0b114110  add.s r2, r2, r4
004754  9b470101  srli r15, r2, 16
004758  e702afdc  storeli.w r10, -4568(r30)
00475c  63054fdc  loadli.w r10,  -4576(r30)
004760  6704ffda  storeli.w r15, -4800(r30)
004764  9f870000  addli r15, r1, 0
004768  1f8a0a00  addli r20, r21, 0
00476c  e7063fdb  storeli.w r19, -4760(r30)
004770  17017500  and r2, r10, r7
004774  13012404  setlt.u r2, r8, r2
004778  3b600100  bneq r2, zero, 24
00477c  1b410501  srli r2, r10, 16
004780  1b011100  andi r2, r2, 1
004784  0b112510  add.s r2, r10, r2
004788  0b114110  add.s r2, r2, r4
00478c  9b470101  srli r15, r2, 16
004790  1f850500  addli r10, r11, 0
004794  e3454fdc  loadli.w r11,  -4572(r30)
004798  9f890000  addli r19, r1, 0
00479c  9f0a0b00  addli r21, r22, 0
0047a0  17817500  and r2, r11, r7
0047a4  13012404  setlt.u r2, r8, r2
0047a8  3b600100  bneq r2, zero, 24
0047ac  1bc10501  srli r2, r11, 16
0047b0  1b011100  andi r2, r2, 1
0047b4  0b912510  add.s r2, r11, r2
0047b8  0b114110  add.s r2, r2, r4
0047bc  9b490101  srli r19, r2, 16
0047c0  e3056fdc  loadli.w r11,  -4560(r30)
0047c4  e740ffdc  storeli.w r15, -4596(r30)
0047c8  9f870000  addli r15, r1, 0
0047cc  17817500  and r2, r11, r7
0047d0  13012404  setlt.u r2, r8, r2
0047d4  3b600100  bneq r2, zero, 24
0047d8  1bc10501  srli r2, r11, 16
0047dc  1b011100  andi r2, r2, 1
0047e0  0b912510  add.s r2, r11, r2
0047e4  0b114110  add.s r2, r2, r4
0047e8  9b470101  srli r15, r2, 16
0047ec  6746ffda  storeli.w r15, -4764(r30)
0047f0  e3479fdc  loadli.w r15,  -4532(r30)
0047f4  67039fdc  storeli.w r9, -4560(r30)
0047f8  9f840000  addli r9, r1, 0
0047fc  1f0c0300  addli r24, r6, 0
004800  e7463fdb  storeli.w r19, -4756(r30)
004804  6702dfdc  storeli.w r13, -4576(r30)
004808  6742efdc  storeli.w r14, -4572(r30)
00480c  17817700  and r2, r15, r7
004810  13012404  setlt.u r2, r8, r2
004814  3b600100  bneq r2, zero, 24
004818  1bc10701  srli r2, r15, 16
00481c  1b011100  andi r2, r2, 1
004820  0b912710  add.s r2, r15, r2
004824  0b114110  add.s r2, r2, r4
004828  9b440101  srli r9, r2, 16
00482c  9f870100  addli r15, r3, 0
004830  e3415fdc  loadli.w r3,  -4564(r30)
004834  67059fda  storeli.w r9, -4784(r30)
004838  e3497fdc  loadli.w r19,  -4548(r30)
00483c  e3443fdb  loadli.w r9,  -4708(r30)
004840  e3062fdb  loadli.w r13,  -4720(r30)
004844  63071fdb  loadli.w r14,  -4728(r30)
004848  1f830000  addli r6, r1, 0
00484c  e7447fdd  storeli.w r23, -4532(r30)
004850  17817100  and r2, r3, r7
004854  13012404  setlt.u r2, r8, r2
004858  3b600100  bneq r2, zero, 24
00485c  1bc10101  srli r2, r3, 16
004860  1b011100  andi r2, r2, 1
004864  0b912110  add.s r2, r3, r2
004868  0b114110  add.s r2, r2, r4
00486c  1b430101  srli r6, r2, 16
004870  e7426fdc  storeli.w r6, -4564(r30)
004874  63436fdc  loadli.w r6,  -4556(r30)
004878  17017300  and r2, r6, r7
00487c  93012404  setlt.u r3, r8, r2
004880  1f810000  addli r2, r1, 0
004884  3be00100  bneq r3, zero, 24
004888  1b410301  srli r2, r6, 16
00488c  1b011100  andi r2, r2, 1
004890  0b112310  add.s r2, r6, r2
004894  0b114110  add.s r2, r2, r4
004898  1b410101  srli r2, r2, 16
00489c  67432fdc  storeli.w r2, -4556(r30)
0048a0  63017fdc  loadli.w r2,  -4552(r30)
0048a4  1f830000  addli r6, r1, 0
0048a8  97017100  and r3, r2, r7
0048ac  93013404  setlt.u r3, r8, r3
0048b0  3be00100  bneq r3, zero, 24
0048b4  9b410101  srli r3, r2, 16
0048b8  9b811100  andi r3, r3, 1
0048bc  8b113110  add.s r3, r2, r3
0048c0  8b914110  add.s r3, r3, r4
0048c4  1bc30101  srli r6, r3, 16
0048c8  97817900  and r3, r19, r7
0048cc  6301efdc  loadli.w r2,  -4496(r30)
0048d0  e305dfdc  loadli.w r11,  -4504(r30)
0048d4  e7036fdc  storeli.w r6, -4552(r30)
0048d8  9f8b0000  addli r23, r1, 0
0048dc  1f830700  addli r6, r15, 0
0048e0  93013404  setlt.u r3, r8, r3
0048e4  3be00100  bneq r3, zero, 24
0048e8  9bc10901  srli r3, r19, 16
0048ec  9b811100  andi r3, r3, 1
0048f0  8b913910  add.s r3, r19, r3
0048f4  8b914110  add.s r3, r3, r4
0048f8  9bcb0101  srli r23, r3, 16
0048fc  67447fdb  storeli.w r23, -4796(r30)
004900  e30b8fdc  loadli.w r23,  -4544(r30)
004904  e3073fdc  loadli.w r15,  -4584(r30)
004908  9f890000  addli r19, r1, 0
00490c  e7439fdd  storeli.w r25, -4548(r30)
004910  97817b00  and r3, r23, r7
004914  93013404  setlt.u r3, r8, r3
004918  3be00100  bneq r3, zero, 24
00491c  9bc10b01  srli r3, r23, 16
004920  9b811100  andi r3, r3, 1
004924  8b913b10  add.s r3, r23, r3
004928  8b914110  add.s r3, r3, r4
00492c  9bc90101  srli r19, r3, 16
004930  e34d8fdc  loadli.w r27,  -4540(r30)
004934  9f8b0700  addli r23, r15, 0
004938  9f870000  addli r15, r1, 0
00493c  97817d00  and r3, r27, r7
004940  93013404  setlt.u r3, r8, r3
004944  3be00100  bneq r3, zero, 24
004948  9bc10d01  srli r3, r27, 16
00494c  9b811100  andi r3, r3, 1
004950  8b913d10  add.s r3, r27, r3
004954  8b914110  add.s r3, r3, r4
004958  9bc70101  srli r15, r3, 16
00495c  6744ffdc  storeli.w r15, -4540(r30)
004960  e3079fdc  loadli.w r15,  -4536(r30)
004964  9f0d0500  addli r27, r10, 0
004968  1f850000  addli r10, r1, 0
00496c  97817700  and r3, r15, r7
004970  93013404  setlt.u r3, r8, r3
004974  3be00100  bneq r3, zero, 24
004978  9bc10701  srli r3, r15, 16
00497c  9b811100  andi r3, r3, 1
004980  8b913710  add.s r3, r15, r3
004984  8b914110  add.s r3, r3, r4
004988  1bc50101  srli r10, r3, 16
00498c  9f070300  addli r15, r6, 0
004990  6303afdc  loadli.w r6,  -4528(r30)
004994  e704afdc  storeli.w r10, -4536(r30)
004998  63452fdc  loadli.w r10,  -4588(r30)
00499c  1f8b0000  addli r22, r1, 0
0049a0  97017300  and r3, r6, r7
0049a4  93013404  setlt.u r3, r8, r3
0049a8  3be00100  bneq r3, zero, 24
0049ac  9b410301  srli r3, r6, 16
0049b0  9b811100  andi r3, r3, 1
0049b4  8b113310  add.s r3, r6, r3
0049b8  8b914110  add.s r3, r3, r4
0049bc  1bcb0101  srli r22, r3, 16
0049c0  63032fdd  loadli.w r6,  -4464(r30)
0049c4  9f8c0000  addli r25, r1, 0
0049c8  97017300  and r3, r6, r7
0049cc  93013404  setlt.u r3, r8, r3
0049d0  3be00100  bneq r3, zero, 24
0049d4  9b410301  srli r3, r6, 16
0049d8  9b811100  andi r3, r3, 1
0049dc  8b113310  add.s r3, r6, r3
0049e0  8b914110  add.s r3, r3, r4
0049e4  9bcc0101  srli r25, r3, 16
0049e8  97017700  and r3, r14, r7
0049ec  1f830000  addli r6, r1, 0
0049f0  93013404  setlt.u r3, r8, r3
0049f4  3be00100  bneq r3, zero, 24
0049f8  9b410701  srli r3, r14, 16
0049fc  9b811100  andi r3, r3, 1
004a00  8b113710  add.s r3, r14, r3
004a04  8b914110  add.s r3, r3, r4
004a08  1bc30101  srli r6, r3, 16
004a0c  97017600  and r3, r12, r7
004a10  e7086fda  storeli.w r6, -4728(r30)
004a14  1f870000  addli r14, r1, 0
004a18  1f830700  addli r6, r15, 0
004a1c  67046fdd  storeli.w r22, -4544(r30)
004a20  67053fdd  storeli.w r19, -4528(r30)
004a24  93013404  setlt.u r3, r8, r3
004a28  3be00100  bneq r3, zero, 24
004a2c  9b410601  srli r3, r12, 16
004a30  9b811100  andi r3, r3, 1
004a34  8b113610  add.s r3, r12, r3
004a38  8b914110  add.s r3, r3, r4
004a3c  1bc70101  srli r14, r3, 16
004a40  63467fdb  loadli.w r12,  -4676(r30)
004a44  1f0b0800  addli r22, r16, 0
004a48  9f090900  addli r19, r18, 0
004a4c  1f880000  addli r16, r1, 0
004a50  9f870d00  addli r15, r27, 0
004a54  97017600  and r3, r12, r7
004a58  93013404  setlt.u r3, r8, r3
004a5c  3be00100  bneq r3, zero, 24
004a60  9b410601  srli r3, r12, 16
004a64  9b811100  andi r3, r3, 1
004a68  8b113610  add.s r3, r12, r3
004a6c  8b914110  add.s r3, r3, r4
004a70  1bc80101  srli r16, r3, 16
004a74  6306dfdb  loadli.w r12,  -4632(r30)
004a78  e74b0fdb  storeli.w r16, -4676(r30)
004a7c  63486fdb  loadli.w r16,  -4684(r30)
004a80  63095fdb  loadli.w r18,  -4696(r30)
004a84  9f8d0b00  addli r27, r23, 0
004a88  67091fdc  storeli.w r1, -4464(r30)
004a8c  97017600  and r3, r12, r7
004a90  93013404  setlt.u r3, r8, r3
004a94  3bf00100  bneq r3, zero, 28
004a98  9b410601  srli r3, r12, 16
004a9c  9b811100  andi r3, r3, 1
004aa0  8b113610  add.s r3, r12, r3
004aa4  8b914110  add.s r3, r3, r4
004aa8  9bc10101  srli r3, r3, 16
004aac  67093fdc  storeli.w r3, -4464(r30)
004ab0  97017900  and r3, r18, r7
004ab4  e34bbfdc  loadli.w r23,  -4516(r30)
004ab8  1f860000  addli r12, r1, 0
004abc  93013404  setlt.u r3, r8, r3
004ac0  3be00100  bneq r3, zero, 24
004ac4  9b410901  srli r3, r18, 16
004ac8  9b811100  andi r3, r3, 1
004acc  8b113910  add.s r3, r18, r3
004ad0  8b914110  add.s r3, r3, r4
004ad4  1bc60101  srli r12, r3, 16
004ad8  97017800  and r3, r16, r7
004adc  1f890000  addli r18, r1, 0
004ae0  93013404  setlt.u r3, r8, r3
004ae4  3be00100  bneq r3, zero, 24
004ae8  9b410801  srli r3, r16, 16
004aec  9b811100  andi r3, r3, 1
004af0  8b113810  add.s r3, r16, r3
004af4  8b914110  add.s r3, r3, r4
004af8  1bc90101  srli r18, r3, 16
004afc  97817600  and r3, r13, r7
004b00  1f880000  addli r16, r1, 0
004b04  93013404  setlt.u r3, r8, r3
004b08  3be00100  bneq r3, zero, 24
004b0c  9bc10601  srli r3, r13, 16
004b10  9b811100  andi r3, r3, 1
004b14  8b913610  add.s r3, r13, r3
004b18  8b914110  add.s r3, r3, r4
004b1c  1bc80101  srli r16, r3, 16
004b20  97817400  and r3, r9, r7
004b24  9f860000  addli r13, r1, 0
004b28  93013404  setlt.u r3, r8, r3
004b2c  3be00100  bneq r3, zero, 24
004b30  9bc10401  srli r3, r9, 16
004b34  9b811100  andi r3, r3, 1
004b38  8b913410  add.s r3, r9, r3
004b3c  8b914110  add.s r3, r3, r4
004b40  9bc60101  srli r13, r3, 16
004b44  97817200  and r3, r5, r7
004b48  9f840000  addli r9, r1, 0
004b4c  93013404  setlt.u r3, r8, r3
004b50  3be00100  bneq r3, zero, 24
004b54  9bc10201  srli r3, r5, 16
004b58  9b811100  andi r3, r3, 1
004b5c  8b913210  add.s r3, r5, r3
004b60  8b914110  add.s r3, r3, r4
004b64  9bc40101  srli r9, r3, 16
004b68  97817500  and r3, r11, r7
004b6c  9f820000  addli r5, r1, 0
004b70  6746efdc  storeli.w r14, -4508(r30)
004b74  93013404  setlt.u r3, r8, r3
004b78  3be00100  bneq r3, zero, 24
004b7c  9bc10501  srli r3, r11, 16
004b80  9b811100  andi r3, r3, 1
004b84  8b913510  add.s r3, r11, r3
004b88  8b914110  add.s r3, r3, r4
004b8c  9bc20101  srli r5, r3, 16
004b90  9f050300  addli r11, r6, 0
004b94  6343dfdc  loadli.w r6,  -4500(r30)
004b98  1f870000  addli r14, r1, 0
004b9c  97017300  and r3, r6, r7
004ba0  93013404  setlt.u r3, r8, r3
004ba4  3be00100  bneq r3, zero, 24
004ba8  9b410301  srli r3, r6, 16
004bac  9b811100  andi r3, r3, 1
004bb0  8b113310  add.s r3, r6, r3
004bb4  8b914110  add.s r3, r3, r4
004bb8  1bc70101  srli r14, r3, 16
004bbc  97817b00  and r3, r23, r7
004bc0  e7062fdd  storeli.w r18, -4504(r30)
004bc4  e746cfdc  storeli.w r12, -4500(r30)
004bc8  13033404  setlt.u r6, r8, r3
004bcc  9f810000  addli r3, r1, 0
004bd0  3b600300  bneq r6, zero, 24
004bd4  9bc10b01  srli r3, r23, 16
004bd8  9b811100  andi r3, r3, 1
004bdc  8b913b10  add.s r3, r23, r3
004be0  8b914110  add.s r3, r3, r4
004be4  9bc10101  srli r3, r3, 16
004be8  17037100  and r6, r2, r7
004bec  1f890c00  addli r18, r25, 0
004bf0  1f060d00  addli r12, r26, 0
004bf4  93036404  setlt.u r7, r8, r6
004bf8  1f830000  addli r6, r1, 0
004bfc  3be00300  bneq r7, zero, 24
004c00  1b430101  srli r6, r2, 16
004c04  1b031300  andi r6, r6, 1
004c08  0b136110  add.s r6, r2, r6
004c0c  0b134310  add.s r6, r6, r4
004c10  1b430301  srli r6, r6, 16
004c14  6341ffe1  loadli.w r2,  -3844(r30)
004c18  e30bffdc  loadli.w r23,  -4488(r30)
004c1c  63040fdd  loadli.w r8,  -4480(r30)
004c20  9f1c0000  addli r25, zero, 1
004c24  97832b00  and r7, r23, r2
004c28  63016fda  loadli.w r2,  -4816(r30)
004c2c  0b142410  add.s r8, r8, r2
004c30  2b01807f  lui r2, 522240
004c34  13017104  setlt.u r2, r2, r7
004c38  b3130428  sext_int2long r[8:9], r8
004c3c  97b39303  sll.d r[8:9], r[8:9], r25
004c40  eb5c0f01  load.d r[26:27], 16(r30)
004c44  8ba37c10  add.ul r[8:9], r[26:27], r[8:9]
004c48  bb1601e0  bneq r2, zero, -15964
004c4c  9bc00b01  srli r1, r23, 16
004c50  9b801000  andi r1, r1, 1
004c54  8b901b10  add.s r1, r23, r1
004c58  8b904010  add.s r1, r1, r4
004c5c  9bc00001  srli r1, r1, 16
004c60  db31f8ff  j -15988
004c64  9f8efeff  addli sp, sp, -8
004c68  9f000100  addli r1, r2, 0
004c6c  2bf1ff7f  lui r2, 524287
004c70  ab02807f  lui r5, 522240
004c74  67c0ee01  storeli.w r30, 4(sp)
004c78  6780fe01  storeli.w r31, 0(sp)
004c7c  1f8f1e00  addli r30, sp, 8
004c80  1b12f1ff  ori r4, r2, 4095
004c84  17814000  and r2, r1, r4
004c88  13832204  setlt.u r6, r5, r2
004c8c  1f810100  addli r2, r3, 0
004c90  bb210300  bneq r6, zero, 104
004c94  97014100  and r3, r2, r4
004c98  93813204  setlt.u r3, r5, r3
004c9c  3be10100  bneq r3, zero, 88
004ca0  abf1ffff  lui r3, 1048575
004ca4  17221100  xor r4, r2, r1
004ca8  9b91f1ff  ori r3, r3, 4095
004cac  3fa04100  blt.s r3, r4, 8
004cb0  5b0b0000  j 88
004cb4  9b319100  slli r3, r2, 9
004cb8  9bb29000  slli r5, r1, 9
004cbc  1b427101  srli r4, r2, 23
004cc0  1bc37001  srli r6, r1, 23
004cc4  93e32004  setlt.f r7, r1, r2
004cc8  93810100  seteq r3, r3, zero
004ccc  93820200  seteq r5, r5, zero
004cd0  1b02f20f  andi r4, r4, 255
004cd4  1b03f30f  andi r6, r6, 255
004cd8  1b72f20f  setlti r4, r4, 255
004cdc  1b73f30f  setlti r6, r6, 255
004ce0  97113200  or r3, r4, r3
004ce4  17125300  or r4, r6, r5
004ce8  97013200  and r3, r4, r3
004cec  97813300  and r3, r7, r3
004cf0  3ba00100  bneq r3, zero, 8
004cf4  1f810000  addli r2, r1, 0
004cf8  e38f0e00  loadli.w r31,  0(sp)
004cfc  63cf0e00  loadli.w r30,  4(sp)
004d00  9f8e1e00  addli sp, sp, 8
004d04  5f800f00  jr r31, 0
004d08  bfcf00fe  blt.s r1, zero, -16
004d0c  5bfdffff  j -24
004d10  00100000  exit
004d14  00100000  exit
004d18  00100000  exit
004d1c  00100000  exit
004d20  00100000  exit
004d24  00100000  exit
004d28  00100000  exit
004d2c  00100000  exit
004d30  00100000  exit
004d34  00100000  exit
004d38  00100000  exit
004d3c  00100000  exit
004d40  00100000  exit
004d44  00100000  exit
004d48  00100000  exit
004d4c  00100000  exit
004d50  00100000  exit
004d54  00100000  exit
004d58  00100000  exit
004d5c  00100000  exit
004d60  00100000  exit
004d64  00100000  exit
004d68  00100000  exit
004d6c  00100000  exit
004d70  00100000  exit
004d74  00100000  exit
004d78  00100000  exit
004d7c  00100000  exit
004d80  00100000  exit
004d84  00100000  exit
004d88  00100000  exit
004d8c  00100000  exit
004d90  00100000  exit
004d94  00100000  exit
004d98  00100000  exit
004d9c  00100000  exit
004da0  00100000  exit
004da4  00100000  exit
004da8  00100000  exit
004dac  00100000  exit
004db0  00100000  exit
004db4  00100000  exit
004db8  00100000  exit
004dbc  00100000  exit
004dc0  00100000  exit
004dc4  00100000  exit
004dc8  00100000  exit
004dcc  00100000  exit
004dd0  00100000  exit
004dd4  00100000  exit
004dd8  00100000  exit
004ddc  00100000  exit
004de0  00100000  exit
004de4  00100000  exit
004de8  00100000  exit
004dec  00100000  exit
004df0  00100000  exit
004df4  00100000  exit
004df8  00100000  exit
004dfc  00100000  exit
004e00  00100000  exit
004e04  00100000  exit
004e08  00100000  exit
004e0c  00100000  exit
004e10  00100000  exit
004e14  00100000  exit
004e18  00100000  exit
004e1c  00100000  exit
004e20  00100000  exit
004e24  00100000  exit
004e28  00100000  exit
004e2c  00100000  exit
004e30  00100000  exit
004e34  00100000  exit
004e38  00100000  exit
004e3c  00100000  exit
004e40  00100000  exit
004e44  00100000  exit
004e48  00100000  exit
004e4c  00100000  exit
004e50  00100000  exit
004e54  00100000  exit
004e58  00100000  exit
004e5c  00100000  exit
004e60  00100000  exit
004e64  00100000  exit
004e68  00100000  exit
004e6c  00100000  exit
004e70  00100000  exit
004e74  00100000  exit
004e78  00100000  exit
004e7c  00100000  exit
004e80  00100000  exit
004e84  00100000  exit
004e88  00100000  exit
004e8c  00100000  exit
004e90  00100000  exit
004e94  00100000  exit
004e98  00100000  exit
004e9c  00100000  exit
004ea0  00100000  exit
004ea4  00100000  exit
004ea8  00100000  exit
004eac  00100000  exit
004eb0  00100000  exit
004eb4  00100000  exit
004eb8  00100000  exit
004ebc  00100000  exit
004ec0  00100000  exit
004ec4  00100000  exit
004ec8  00100000  exit
004ecc  00100000  exit
004ed0  00100000  exit
004ed4  00100000  exit
004ed8  00100000  exit
004edc  00100000  exit
004ee0  00100000  exit
004ee4  00100000  exit
004ee8  00100000  exit
004eec  00100000  exit
004ef0  00100000  exit
004ef4  00100000  exit
004ef8  00100000  exit
004efc  00100000  exit
004f00  00100000  exit
004f04  00100000  exit
004f08  00100000  exit
004f0c  00100000  exit
004f10  00100000  exit
004f14  00100000  exit
004f18  00100000  exit
004f1c  00100000  exit
004f20  00100000  exit
004f24  00100000  exit
004f28  00100000  exit
004f2c  00100000  exit
004f30  00100000  exit
004f34  00100000  exit
004f38  00100000  exit
004f3c  00100000  exit
004f40  00100000  exit
004f44  00100000  exit
004f48  00100000  exit
004f4c  00100000  exit
