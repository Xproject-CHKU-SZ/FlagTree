; SHA-256 38b76ad57b0fa49e58e76de2a031e08e8cfb57160937aa417db16707213dfee6
; P800 Cluster · XTDK LLVM 19 · 752 / 752 words decoded
; bound names: triton_red_fused_mul_sum_0
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
0000dc  9f8e0ef1  addli sp, sp, -1920
0000e0  1f8f8e0e  addli r30, sp, 1856
0000e4  63414f00  loadli.w r2,  36(r30)
0000e8  e3004f00  loadli.w r1,  32(r30)
0000ec  e3015f00  loadli.w r3,  40(r30)
0000f0  8b101120  mul.s r1, r2, r1
0000f4  00510002  load_param_i r2, 0
0000f8  8b903020  mul.s r1, r1, r3
0000fc  9f010100  addli r3, r2, 0
000100  670d1ff0  storeli.w r1, -1840(r30)
000104  cbb13004  ble.s r1, r3, 2156
000108  80d00002  load_param_i r1, 1
00010c  00320002  core_id r4
000110  9f038ff7  addli r7, r30, -1088
000114  1f040004  addli r8, zero, 512
000118  9f240000  addli r9, zero, 2
00011c  1f058ffb  addli r10, r30, -576
000120  9f058ff3  addli r11, r30, -1600
000124  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000128  6e35a562  vxor.s.mz vr10{mr1}, vr10, vr10
00012c  e74c1ff0  storeli.w r1, -1844(r30)
000130  9f200000  addli r1, zero, 2
000134  fe8100e0  vmmov mr3, r1
000138  5b030000  j 24
00013c  e3409ff1  loadli.w r1,  -1844(r30)
000140  8b911110  add.s r3, r3, r1
000144  e300aff1  loadli.w r1,  -1840(r30)
000148  3fa01100  blt.s r3, r1, 8
00014c  db040100  j 2084
000150  e3005f00  loadli.w r1,  40(r30)
000154  63414f00  loadli.w r2,  36(r30)
000158  8b901130  div.s r1, r3, r1
00015c  8b902030  div.s r1, r1, r2
000160  9bb06000  slli r1, r1, 6
000164  0b111210  add.s r2, r4, r1
000168  9f70f00f  addli r1, zero, 2047
00016c  3fcf20fe  blt.s r1, r2, -48
000170  9b30b100  slli r1, r2, 11
000174  674d3ff0  storeli.w r3, -1836(r30)
000178  e70c2ff0  storeli.w r2, -1848(r30)
00017c  1f030000  addli r6, zero, 0
000180  e70d1ff0  storeli.w r1, -1832(r30)
000184  9f008ff3  addli r1, r30, -1600
000188  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00018c  9f000ff4  addli r1, r30, -1536
000190  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000194  9f008ff4  addli r1, r30, -1472
000198  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00019c  9f000ff5  addli r1, r30, -1408
0001a0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0001a4  9f008ff5  addli r1, r30, -1344
0001a8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0001ac  9f000ff6  addli r1, r30, -1280
0001b0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0001b4  9f008ff6  addli r1, r30, -1216
0001b8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0001bc  9f000ff7  addli r1, r30, -1152
0001c0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0001c4  00a00000  mfence { lm }
0001c8  9f000000  addli r1, zero, 0
0001cc  0b911310  add.s r2, r7, r1
0001d0  9f800001  addli r1, r1, 128
0001d4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0001d8  46140102  vstore_mask16.mz vr0{mr1}, 64(r2)
0001dc  00a00000  mfence { lm }
0001e0  bbbf80fe  bneq r1, r8, -20
0001e4  e300bff1  loadli.w r1,  -1832(r30)
0001e8  6b520f00  load.d r[5:6], 0(r30)
0001ec  ab0100f0  lui r3, 983040
0001f0  97113400  or r3, r8, r3
0001f4  8b101310  add.s r1, r6, r1
0001f8  b3900028  sext_int2long r[2:3], r1
0001fc  97b09002  sll.d r[2:3], r[2:3], r9
000200  8b201210  add.ul r[2:3], r[5:6], r[2:3]
000204  ffa17000  l_gm2lm r3, r7, 0(r[2:3])
000208  9f000000  addli r1, zero, 0
00020c  0b111510  add.s r2, r10, r1
000210  9f801000  addli r1, r1, 8
000214  67000100  storeli.w zero, 0(r2)
000218  67400100  storeli.w zero, 4(r2)
00021c  00a00000  mfence { lm }
000220  bbbf80fe  bneq r1, r8, -20
000224  b3000328  zext_int2long r[2:3], r6
000228  6b528f00  load.d r[5:6], 8(r30)
00022c  ab0100f0  lui r3, 983040
000230  e74d6ff0  storeli.w r6, -1828(r30)
000234  97b09002  sll.d r[2:3], r[2:3], r9
000238  97113400  or r3, r8, r3
00023c  8b201210  add.ul r[2:3], r[5:6], r[2:3]
000240  ffa1a000  l_gm2lm r3, r10, 0(r[2:3])
000244  9f110000  addli r3, zero, 1
000248  9f000000  addli r1, zero, 0
00024c  00a00000  mfence { lm }
000250  1bbe8000  slli r28, r1, 8
000254  9f000ff3  addli r1, r30, -1664
000258  e7473ff2  storeli.w r3, -1668(r30)
00025c  12330002  vadd.s.mz vr6{mr1}, zero, vr0
000260  92330002  vadd.s.mz vr7{mr1}, zero, vr0
000264  12340002  vadd.s.mz vr8{mr1}, zero, vr0
000268  12310002  vadd.s.mz vr2{mr1}, zero, vr0
00026c  1230a002  vadd.s.mz vr0{mr1}, zero, vr10
000270  0b9dc511  add.s r26, r11, r28
000274  c2100d02  vload_mask16.mz vr1{mr1}, 0(r26)
000278  92342002  vadd.s.mz vr9{mr1}, zero, vr2
00027c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000280  8b10c511  add.s r1, r10, r28
000284  c2118d02  vload_mask16.mz vr3{mr1}, 64(r26)
000288  42120d03  vload_mask16.mz vr4{mr1}, 128(r26)
00028c  c2128d03  vload_mask16.mz vr5{mr1}, 192(r26)
000290  e38dc000  loadli.w r27,  96(r1)
000294  63810000  loadli.w r2,  0(r1)
000298  e3c10000  loadli.w r3,  4(r1)
00029c  63821000  loadli.w r4,  8(r1)
0002a0  e3c21000  loadli.w r5,  12(r1)
0002a4  63832000  loadli.w r6,  16(r1)
0002a8  e3c32000  loadli.w r7,  20(r1)
0002ac  63843000  loadli.w r8,  24(r1)
0002b0  e3c43000  loadli.w r9,  28(r1)
0002b4  63854000  loadli.w r10,  32(r1)
0002b8  e3c54000  loadli.w r11,  36(r1)
0002bc  63865000  loadli.w r12,  40(r1)
0002c0  e3c65000  loadli.w r13,  44(r1)
0002c4  63876000  loadli.w r14,  48(r1)
0002c8  e3c76000  loadli.w r15,  52(r1)
0002cc  63887000  loadli.w r16,  56(r1)
0002d0  e3c87000  loadli.w r17,  60(r1)
0002d4  63898000  loadli.w r18,  64(r1)
0002d8  e3cc8000  loadli.w r25,  68(r1)
0002dc  638c9000  loadli.w r24,  72(r1)
0002e0  e3c99000  loadli.w r19,  76(r1)
0002e4  638aa000  loadli.w r20,  80(r1)
0002e8  e3caa000  loadli.w r21,  84(r1)
0002ec  638bb000  loadli.w r22,  88(r1)
0002f0  e3cbb000  loadli.w r23,  92(r1)
0002f4  670ebff1  storeli.w r27, -1824(r30)
0002f8  e3cdc000  loadli.w r27,  100(r1)
0002fc  12353002  vadd.s.mz vr10{mr1}, zero, vr3
000300  674ebff1  storeli.w r27, -1820(r30)
000304  e38dd000  loadli.w r27,  104(r1)
000308  e70ebff1  storeli.w r27, -1816(r30)
00030c  e3cdd000  loadli.w r27,  108(r1)
000310  e74ebff1  storeli.w r27, -1812(r30)
000314  e38de000  loadli.w r27,  112(r1)
000318  670fbff1  storeli.w r27, -1808(r30)
00031c  e3cde000  loadli.w r27,  116(r1)
000320  674fbff1  storeli.w r27, -1804(r30)
000324  e38df000  loadli.w r27,  120(r1)
000328  e70fbff1  storeli.w r27, -1800(r30)
00032c  e3cdf000  loadli.w r27,  124(r1)
000330  e74fbff1  storeli.w r27, -1796(r30)
000334  e38d0001  loadli.w r27,  128(r1)
000338  6700bff3  storeli.w r27, -1792(r30)
00033c  e3cd0001  loadli.w r27,  132(r1)
000340  6740bff3  storeli.w r27, -1788(r30)
000344  e38d1001  loadli.w r27,  136(r1)
000348  e700bff3  storeli.w r27, -1784(r30)
00034c  e3cd1001  loadli.w r27,  140(r1)
000350  e740bff3  storeli.w r27, -1780(r30)
000354  e38d2001  loadli.w r27,  144(r1)
000358  6701bff3  storeli.w r27, -1776(r30)
00035c  e3cd2001  loadli.w r27,  148(r1)
000360  6741bff3  storeli.w r27, -1772(r30)
000364  e38d3001  loadli.w r27,  152(r1)
000368  e701bff3  storeli.w r27, -1768(r30)
00036c  e3cd3001  loadli.w r27,  156(r1)
000370  e741bff3  storeli.w r27, -1764(r30)
000374  e38d4001  loadli.w r27,  160(r1)
000378  6702bff3  storeli.w r27, -1760(r30)
00037c  e3cd4001  loadli.w r27,  164(r1)
000380  6742bff3  storeli.w r27, -1756(r30)
000384  e38d5001  loadli.w r27,  168(r1)
000388  e702bff3  storeli.w r27, -1752(r30)
00038c  e3cd5001  loadli.w r27,  172(r1)
000390  e742bff3  storeli.w r27, -1748(r30)
000394  e38d6001  loadli.w r27,  176(r1)
000398  6703bff3  storeli.w r27, -1744(r30)
00039c  e3cd6001  loadli.w r27,  180(r1)
0003a0  6743bff3  storeli.w r27, -1740(r30)
0003a4  e38d7001  loadli.w r27,  184(r1)
0003a8  e703bff3  storeli.w r27, -1736(r30)
0003ac  e3cd7001  loadli.w r27,  188(r1)
0003b0  e743bff3  storeli.w r27, -1732(r30)
0003b4  e38d8001  loadli.w r27,  192(r1)
0003b8  6704bff3  storeli.w r27, -1728(r30)
0003bc  e3cd8001  loadli.w r27,  196(r1)
0003c0  6744bff3  storeli.w r27, -1724(r30)
0003c4  e38d9001  loadli.w r27,  200(r1)
0003c8  e704bff3  storeli.w r27, -1720(r30)
0003cc  e3cd9001  loadli.w r27,  204(r1)
0003d0  e744bff3  storeli.w r27, -1716(r30)
0003d4  e38da001  loadli.w r27,  208(r1)
0003d8  6705bff3  storeli.w r27, -1712(r30)
0003dc  e3cda001  loadli.w r27,  212(r1)
0003e0  6745bff3  storeli.w r27, -1708(r30)
0003e4  e38db001  loadli.w r27,  216(r1)
0003e8  e705bff3  storeli.w r27, -1704(r30)
0003ec  e3cdb001  loadli.w r27,  220(r1)
0003f0  e745bff3  storeli.w r27, -1700(r30)
0003f4  e38dc001  loadli.w r27,  224(r1)
0003f8  6706bff3  storeli.w r27, -1696(r30)
0003fc  e3cdc001  loadli.w r27,  228(r1)
000400  6746bff3  storeli.w r27, -1692(r30)
000404  e38dd001  loadli.w r27,  232(r1)
000408  e706bff3  storeli.w r27, -1688(r30)
00040c  e3cdd001  loadli.w r27,  236(r1)
000410  e746bff3  storeli.w r27, -1684(r30)
000414  e38de001  loadli.w r27,  240(r1)
000418  6707bff3  storeli.w r27, -1680(r30)
00041c  e3cde001  loadli.w r27,  244(r1)
000420  6747bff3  storeli.w r27, -1676(r30)
000424  e38df001  loadli.w r27,  248(r1)
000428  e3c0f001  loadli.w r1,  252(r1)
00042c  e707bff3  storeli.w r27, -1672(r30)
000430  9f1d0000  addli r27, zero, 1
000434  7e810de0  vmmov mr2, r27
000438  6a236134  vor.u.mh vr6{mr2}, r2, vr6
00043c  1f410000  addli r2, zero, 4
000440  7e0001e0  vmmov mr0, r2
000444  1f011000  addli r2, zero, 8
000448  6aa36136  vor.u.mh vr6{mr3}, r3, vr6
00044c  7e0101e0  vmmov mr2, r2
000450  1f012000  addli r2, zero, 16
000454  9f010002  addli r3, zero, 256
000458  6a236230  vor.u.mh vr6{mr0}, r4, vr6
00045c  6aa36234  vor.u.mh vr6{mr2}, r5, vr6
000460  7e0101e0  vmmov mr2, r2
000464  1f014000  addli r2, zero, 32
000468  6a236334  vor.u.mh vr6{mr2}, r6, vr6
00046c  7e0101e0  vmmov mr2, r2
000470  1f018000  addli r2, zero, 64
000474  6aa36334  vor.u.mh vr6{mr2}, r7, vr6
000478  7e0101e0  vmmov mr2, r2
00047c  1f010001  addli r2, zero, 128
000480  9f038ff7  addli r7, r30, -1088
000484  6a236434  vor.u.mh vr6{mr2}, r8, vr6
000488  7e0101e0  vmmov mr2, r2
00048c  1f010002  addli r2, zero, 256
000490  6aa36434  vor.u.mh vr6{mr2}, r9, vr6
000494  7e0101e0  vmmov mr2, r2
000498  1f010004  addli r2, zero, 512
00049c  6a236534  vor.u.mh vr6{mr2}, r10, vr6
0004a0  7e0101e0  vmmov mr2, r2
0004a4  1f010008  addli r2, zero, 1024
0004a8  1f058ffb  addli r10, r30, -576
0004ac  6aa36534  vor.u.mh vr6{mr2}, r11, vr6
0004b0  7e0101e0  vmmov mr2, r2
0004b4  1f010010  addli r2, zero, 2048
0004b8  9f058ff3  addli r11, r30, -1600
0004bc  6a236634  vor.u.mh vr6{mr2}, r12, vr6
0004c0  7e0101e0  vmmov mr2, r2
0004c4  1f010020  addli r2, zero, 4096
0004c8  6aa36634  vor.u.mh vr6{mr2}, r13, vr6
0004cc  7e0101e0  vmmov mr2, r2
0004d0  1f010040  addli r2, zero, 8192
0004d4  6a236734  vor.u.mh vr6{mr2}, r14, vr6
0004d8  7e0101e0  vmmov mr2, r2
0004dc  2b410000  lui r2, 4
0004e0  6aa36734  vor.u.mh vr6{mr2}, r15, vr6
0004e4  7e0101e0  vmmov mr2, r2
0004e8  2b810000  lui r2, 8
0004ec  6a236834  vor.u.mh vr6{mr2}, r16, vr6
0004f0  7e0101e0  vmmov mr2, r2
0004f4  1f110000  addli r2, zero, 1
0004f8  6aa36834  vor.u.mh vr6{mr2}, r17, vr6
0004fc  7e0101e0  vmmov mr2, r2
000500  1f011000  addli r2, zero, 8
000504  ea237934  vor.u.mh vr7{mr2}, r18, vr7
000508  7e0101e0  vmmov mr2, r2
00050c  1f012000  addli r2, zero, 16
000510  eaa37c36  vor.u.mh vr7{mr3}, r25, vr7
000514  ea237c30  vor.u.mh vr7{mr0}, r24, vr7
000518  eaa37934  vor.u.mh vr7{mr2}, r19, vr7
00051c  7e0101e0  vmmov mr2, r2
000520  1f014000  addli r2, zero, 32
000524  ea237a34  vor.u.mh vr7{mr2}, r20, vr7
000528  7e0101e0  vmmov mr2, r2
00052c  1f018000  addli r2, zero, 64
000530  eaa37a34  vor.u.mh vr7{mr2}, r21, vr7
000534  7e0101e0  vmmov mr2, r2
000538  1f010001  addli r2, zero, 128
00053c  ea237b34  vor.u.mh vr7{mr2}, r22, vr7
000540  7e0101e0  vmmov mr2, r2
000544  eaa37b34  vor.u.mh vr7{mr2}, r23, vr7
000548  6301cff1  loadli.w r2,  -1824(r30)
00054c  7e8101e0  vmmov mr2, r3
000550  9f010004  addli r3, zero, 512
000554  ea237134  vor.u.mh vr7{mr2}, r2, vr7
000558  6341cff1  loadli.w r2,  -1820(r30)
00055c  7e8101e0  vmmov mr2, r3
000560  9f010008  addli r3, zero, 1024
000564  ea237134  vor.u.mh vr7{mr2}, r2, vr7
000568  6301dff1  loadli.w r2,  -1816(r30)
00056c  7e8101e0  vmmov mr2, r3
000570  9f010010  addli r3, zero, 2048
000574  ea237134  vor.u.mh vr7{mr2}, r2, vr7
000578  6341dff1  loadli.w r2,  -1812(r30)
00057c  7e8101e0  vmmov mr2, r3
000580  9f010020  addli r3, zero, 4096
000584  ea237134  vor.u.mh vr7{mr2}, r2, vr7
000588  6301eff1  loadli.w r2,  -1808(r30)
00058c  7e8101e0  vmmov mr2, r3
000590  9f010040  addli r3, zero, 8192
000594  ea237134  vor.u.mh vr7{mr2}, r2, vr7
000598  6341eff1  loadli.w r2,  -1804(r30)
00059c  7e8101e0  vmmov mr2, r3
0005a0  ab410000  lui r3, 4
0005a4  ea237134  vor.u.mh vr7{mr2}, r2, vr7
0005a8  6301fff1  loadli.w r2,  -1800(r30)
0005ac  7e8101e0  vmmov mr2, r3
0005b0  ab810000  lui r3, 8
0005b4  ea237134  vor.u.mh vr7{mr2}, r2, vr7
0005b8  6341fff1  loadli.w r2,  -1796(r30)
0005bc  7e8101e0  vmmov mr2, r3
0005c0  9f110000  addli r3, zero, 1
0005c4  ea237134  vor.u.mh vr7{mr2}, r2, vr7
0005c8  63010ff2  loadli.w r2,  -1792(r30)
0005cc  7e8101e0  vmmov mr2, r3
0005d0  9f011000  addli r3, zero, 8
0005d4  6a248134  vor.u.mh vr8{mr2}, r2, vr8
0005d8  63410ff2  loadli.w r2,  -1788(r30)
0005dc  7e8101e0  vmmov mr2, r3
0005e0  9f012000  addli r3, zero, 16
0005e4  6a248136  vor.u.mh vr8{mr3}, r2, vr8
0005e8  63011ff2  loadli.w r2,  -1784(r30)
0005ec  6a248130  vor.u.mh vr8{mr0}, r2, vr8
0005f0  63411ff2  loadli.w r2,  -1780(r30)
0005f4  6a248134  vor.u.mh vr8{mr2}, r2, vr8
0005f8  63012ff2  loadli.w r2,  -1776(r30)
0005fc  7e8101e0  vmmov mr2, r3
000600  9f014000  addli r3, zero, 32
000604  6a248134  vor.u.mh vr8{mr2}, r2, vr8
000608  63412ff2  loadli.w r2,  -1772(r30)
00060c  7e8101e0  vmmov mr2, r3
000610  9f018000  addli r3, zero, 64
000614  6a248134  vor.u.mh vr8{mr2}, r2, vr8
000618  63013ff2  loadli.w r2,  -1768(r30)
00061c  7e8101e0  vmmov mr2, r3
000620  9f010001  addli r3, zero, 128
000624  6a248134  vor.u.mh vr8{mr2}, r2, vr8
000628  63413ff2  loadli.w r2,  -1764(r30)
00062c  7e8101e0  vmmov mr2, r3
000630  9f010002  addli r3, zero, 256
000634  6a248134  vor.u.mh vr8{mr2}, r2, vr8
000638  63014ff2  loadli.w r2,  -1760(r30)
00063c  7e8101e0  vmmov mr2, r3
000640  9f010004  addli r3, zero, 512
000644  6a248134  vor.u.mh vr8{mr2}, r2, vr8
000648  63414ff2  loadli.w r2,  -1756(r30)
00064c  7e8101e0  vmmov mr2, r3
000650  9f010008  addli r3, zero, 1024
000654  6a248134  vor.u.mh vr8{mr2}, r2, vr8
000658  63015ff2  loadli.w r2,  -1752(r30)
00065c  7e8101e0  vmmov mr2, r3
000660  9f010010  addli r3, zero, 2048
000664  6a248134  vor.u.mh vr8{mr2}, r2, vr8
000668  63415ff2  loadli.w r2,  -1748(r30)
00066c  7e8101e0  vmmov mr2, r3
000670  9f010020  addli r3, zero, 4096
000674  6a248134  vor.u.mh vr8{mr2}, r2, vr8
000678  63016ff2  loadli.w r2,  -1744(r30)
00067c  7e8101e0  vmmov mr2, r3
000680  9f010040  addli r3, zero, 8192
000684  6a248134  vor.u.mh vr8{mr2}, r2, vr8
000688  63416ff2  loadli.w r2,  -1740(r30)
00068c  7e8101e0  vmmov mr2, r3
000690  ab410000  lui r3, 4
000694  6a248134  vor.u.mh vr8{mr2}, r2, vr8
000698  63017ff2  loadli.w r2,  -1736(r30)
00069c  7e8101e0  vmmov mr2, r3
0006a0  ab810000  lui r3, 8
0006a4  6a248134  vor.u.mh vr8{mr2}, r2, vr8
0006a8  63417ff2  loadli.w r2,  -1732(r30)
0006ac  7e8101e0  vmmov mr2, r3
0006b0  9f110000  addli r3, zero, 1
0006b4  6a248134  vor.u.mh vr8{mr2}, r2, vr8
0006b8  63018ff2  loadli.w r2,  -1728(r30)
0006bc  7e8101e0  vmmov mr2, r3
0006c0  9f011000  addli r3, zero, 8
0006c4  ea249134  vor.u.mh vr9{mr2}, r2, vr9
0006c8  63418ff2  loadli.w r2,  -1724(r30)
0006cc  ea249136  vor.u.mh vr9{mr3}, r2, vr9
0006d0  63019ff2  loadli.w r2,  -1720(r30)
0006d4  ea249130  vor.u.mh vr9{mr0}, r2, vr9
0006d8  63419ff2  loadli.w r2,  -1716(r30)
0006dc  7e8001e0  vmmov mr0, r3
0006e0  9f012000  addli r3, zero, 16
0006e4  ea249130  vor.u.mh vr9{mr0}, r2, vr9
0006e8  6301aff2  loadli.w r2,  -1712(r30)
0006ec  7e8001e0  vmmov mr0, r3
0006f0  9f014000  addli r3, zero, 32
0006f4  ea249130  vor.u.mh vr9{mr0}, r2, vr9
0006f8  6341aff2  loadli.w r2,  -1708(r30)
0006fc  7e8001e0  vmmov mr0, r3
000700  9f018000  addli r3, zero, 64
000704  ea249130  vor.u.mh vr9{mr0}, r2, vr9
000708  6301bff2  loadli.w r2,  -1704(r30)
00070c  7e8001e0  vmmov mr0, r3
000710  9f010001  addli r3, zero, 128
000714  ea249130  vor.u.mh vr9{mr0}, r2, vr9
000718  6341bff2  loadli.w r2,  -1700(r30)
00071c  7e8001e0  vmmov mr0, r3
000720  9f010002  addli r3, zero, 256
000724  ea249130  vor.u.mh vr9{mr0}, r2, vr9
000728  6301cff2  loadli.w r2,  -1696(r30)
00072c  7e8001e0  vmmov mr0, r3
000730  9f010004  addli r3, zero, 512
000734  ea249130  vor.u.mh vr9{mr0}, r2, vr9
000738  6341cff2  loadli.w r2,  -1692(r30)
00073c  7e8001e0  vmmov mr0, r3
000740  9f010008  addli r3, zero, 1024
000744  ea249130  vor.u.mh vr9{mr0}, r2, vr9
000748  6301dff2  loadli.w r2,  -1688(r30)
00074c  7e8001e0  vmmov mr0, r3
000750  9f010010  addli r3, zero, 2048
000754  ea249130  vor.u.mh vr9{mr0}, r2, vr9
000758  6341dff2  loadli.w r2,  -1684(r30)
00075c  7e8001e0  vmmov mr0, r3
000760  9f010020  addli r3, zero, 4096
000764  ea249130  vor.u.mh vr9{mr0}, r2, vr9
000768  6301eff2  loadli.w r2,  -1680(r30)
00076c  7e8001e0  vmmov mr0, r3
000770  9f010040  addli r3, zero, 8192
000774  ea249130  vor.u.mh vr9{mr0}, r2, vr9
000778  6341eff2  loadli.w r2,  -1676(r30)
00077c  7e8001e0  vmmov mr0, r3
000780  ab410000  lui r3, 4
000784  ea249130  vor.u.mh vr9{mr0}, r2, vr9
000788  6301fff2  loadli.w r2,  -1672(r30)
00078c  7e8001e0  vmmov mr0, r3
000790  9f010000  addli r3, zero, 0
000794  ea249130  vor.u.mh vr9{mr0}, r2, vr9
000798  2b810000  lui r2, 8
00079c  7e0001e0  vmmov mr0, r2
0007a0  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0007a4  8b90c311  add.s r1, r7, r28
0007a8  00a00000  mfence { lm }
0007ac  c2958002  vload_mask16.mz vr11{mr1}, 64(r1)
0007b0  26957502  vmac.f.mz.rn vr10{mr1}, vr11, vr7
0007b4  92334002  vadd.s.mz vr7{mr1}, zero, vr4
0007b8  c2900003  vload_mask16.mz vr1{mr1}, 128(r1)
0007bc  a6938002  vmac.f.mz.rn vr7{mr1}, vr1, vr8
0007c0  c2958003  vload_mask16.mz vr11{mr1}, 192(r1)
0007c4  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0007c8  e340fff2  loadli.w r1,  -1668(r30)
0007cc  92305002  vadd.s.mz vr1{mr1}, zero, vr5
0007d0  a6909502  vmac.f.mz.rn vr1{mr1}, vr11, vr9
0007d4  1b811000  andi r2, r1, 1
0007d8  9f000ff3  addli r1, r30, -1664
0007dc  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0007e0  abf00000  lui r1, 15
0007e4  9ff0f01f  addli r1, r1, 4095
0007e8  7e8000e0  vmmov mr0, r1
0007ec  9f100000  addli r1, zero, 1
0007f0  ee11a030  vor.f.mh vr3{mr0}, vr0, vr10
0007f4  12350002  vadd.s.mz vr10{mr1}, zero, vr0
0007f8  12302002  vadd.s.mz vr0{mr1}, zero, vr2
0007fc  9234b002  vadd.s.mz vr9{mr1}, zero, vr11
000800  a6146402  vmac.f.mz.rn vr9{mr1}, vr8, vr6
000804  6e127530  vor.f.mh vr4{mr0}, vr10, vr7
000808  ee121530  vor.f.mh vr5{mr0}, vr10, vr1
00080c  ee159530  vor.f.mh vr11{mr0}, vr10, vr9
000810  46143d02  vstore_mask16.mz vr3{mr1}, 64(r26)
000814  46184d02  vstore_mask16.mz vr4{mr1}, 128(r26)
000818  461c5d02  vstore_mask16.mz vr5{mr1}, 192(r26)
00081c  4610bd02  vstore_mask16.mz vr11{mr1}, 0(r26)
000820  00a00000  mfence { lm }
000824  bb3801fc  bneq r2, zero, -1492
000828  6341bff1  loadli.w r2,  -1828(r30)
00082c  9f00000f  addli r1, zero, 1920
000830  1f040004  addli r8, zero, 512
000834  9f240000  addli r9, zero, 2
000838  93001104  setlt.u r1, r2, r1
00083c  1f010101  addli r2, r2, 128
000840  1f030100  addli r6, r2, 0
000844  3b9600fc  bneq r1, zero, -1660
000848  e341aff1  loadli.w r3,  -1836(r30)
00084c  e3029ff1  loadli.w r5,  -1848(r30)
000850  00320002  core_id r4
000854  9f707000  addli r1, zero, 63
000858  bf9340fc  blt.s r1, r4, -1820
00085c  9f008ff3  addli r1, r30, -1600
000860  2b0200f0  lui r4, 983040
000864  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000868  9f000ff4  addli r1, r30, -1536
00086c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000870  9f008ff4  addli r1, r30, -1472
000874  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000878  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
00087c  9f000ff5  addli r1, r30, -1408
000880  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000884  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000888  9f008ff5  addli r1, r30, -1344
00088c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000890  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000894  9f000ff6  addli r1, r30, -1280
000898  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00089c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0008a0  9f008ff6  addli r1, r30, -1216
0008a4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0008a8  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0008ac  9f000ff7  addli r1, r30, -1152
0008b0  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0008b4  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0008b8  16912002  vadd.f.mz.rn vr2{mr1}, vr1, vr2
0008bc  fa100140  vextracti.f r1, 0(vr2)
0008c0  7a111140  vextracti.f r2, 1(vr2)
0008c4  8be02010  add.f.rn r1, r1, r2
0008c8  7a112140  vextracti.f r2, 2(vr2)
0008cc  8b601110  add.f.rn r1, r2, r1
0008d0  7a113140  vextracti.f r2, 3(vr2)
0008d4  8b601110  add.f.rn r1, r2, r1
0008d8  7a114140  vextracti.f r2, 4(vr2)
0008dc  8b601110  add.f.rn r1, r2, r1
0008e0  7a115140  vextracti.f r2, 5(vr2)
0008e4  8b601110  add.f.rn r1, r2, r1
0008e8  7a116140  vextracti.f r2, 6(vr2)
0008ec  8b601110  add.f.rn r1, r2, r1
0008f0  7a117140  vextracti.f r2, 7(vr2)
0008f4  8b601110  add.f.rn r1, r2, r1
0008f8  7a118140  vextracti.f r2, 8(vr2)
0008fc  8b601110  add.f.rn r1, r2, r1
000900  7a119140  vextracti.f r2, 9(vr2)
000904  8b601110  add.f.rn r1, r2, r1
000908  7a11a140  vextracti.f r2, 10(vr2)
00090c  8b601110  add.f.rn r1, r2, r1
000910  7a11b140  vextracti.f r2, 11(vr2)
000914  8b601110  add.f.rn r1, r2, r1
000918  7a11c140  vextracti.f r2, 12(vr2)
00091c  8b601110  add.f.rn r1, r2, r1
000920  7a11d140  vextracti.f r2, 13(vr2)
000924  8b601110  add.f.rn r1, r2, r1
000928  7a11e140  vextracti.f r2, 14(vr2)
00092c  8b601110  add.f.rn r1, r2, r1
000930  7a11f140  vextracti.f r2, 15(vr2)
000934  8b601110  add.f.rn r1, r2, r1
000938  33910228  sext_int2long r[3:4], r5
00093c  eb520f01  load.d r[6:7], 16(r30)
000940  17319102  sll.d r[3:4], r[3:4], r9
000944  0ba12210  add.ul r[3:4], r[6:7], r[3:4]
000948  9f028fff  addli r5, r30, -64
00094c  670c1ffe  storeli.w r1, -64(r30)
000950  9f400000  addli r1, zero, 4
000954  00a00000  mfence { lm }
000958  97904000  or r1, r1, r4
00095c  00320002  core_id r4
000960  ff305100  s_lm2gm r1, r5, 0(r[3:4])
000964  e341aff1  loadli.w r3,  -1836(r30)
000968  00a00000  mfence { lm }
00096c  5bfafeff  j -2096
000970  9f0e8ff1  addli sp, r30, -1856
000974  9f8e8e0e  addli sp, sp, 1856
000978  00a00300  mfence { lm, sm, gm }
00097c  00100000  exit
000980  00100000  exit
000984  00100000  exit
000988  00100000  exit
00098c  00100000  exit
000990  00100000  exit
000994  00100000  exit
000998  00100000  exit
00099c  00100000  exit
0009a0  00100000  exit
0009a4  00100000  exit
0009a8  00100000  exit
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
