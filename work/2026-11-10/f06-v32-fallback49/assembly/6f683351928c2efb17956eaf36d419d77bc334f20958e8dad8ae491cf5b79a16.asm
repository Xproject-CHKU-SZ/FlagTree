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
0000dc  9f8e2eed  addli sp, sp, -2416
0000e0  ab000000  lui r1, 0
0000e4  00310002  core_id r2
0000e8  1f8f6e12  addli r30, sp, 2352
0000ec  9b312100  slli r3, r2, 2
0000f0  9f800000  addli r1, r1, 0
0000f4  63433f00  loadli.w r6,  28(r30)
0000f8  e3024f00  loadli.w r5,  32(r30)
0000fc  0b921110  add.s r4, r3, r1
000100  e3013f00  loadli.w r3,  24(r30)
000104  674f4fec  storeli.w r4, -2316(r30)
000108  73600200  stores.w zero, 0(r4)
00010c  2bf20000  lui r4, 15
000110  8b113320  mul.s r3, r6, r3
000114  00a00300  mfence { lm, sm, gm }
000118  9b13f2ff  ori r7, r4, 4095
00011c  00520002  load_param_i r4, 0
000120  8b925120  mul.s r5, r3, r5
000124  9f010200  addli r3, r4, 0
000128  80a10304  csr_set csr3, r7
00012c  00d00100  sync_group
000130  e74d5fec  storeli.w r5, -2340(r30)
000134  4bc93204  ble.s r5, r3, 2640
000138  1f220000  addli r4, zero, 2
00013c  80d20002  load_param_i r5, 1
000140  1f840100  addli r8, r3, 0
000144  abf1ff3f  lui r3, 262143
000148  1f058fef  addli r10, r30, -2112
00014c  9f050008  addli r11, zero, 1024
000150  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000154  670f7fec  storeli.w r7, -2320(r30)
000158  0b124130  div.s r4, r2, r4
00015c  674d5fec  storeli.w r5, -2348(r30)
000160  9b021100  andi r5, r2, 1
000164  9b91e1ff  ori r3, r3, 4094
000168  e74e5fec  storeli.w r5, -2324(r30)
00016c  9b720104  setlti r5, r2, 64
000170  e70d4fec  storeli.w r4, -2344(r30)
000174  1b321200  slli r4, r4, 1
000178  0b124118  sub.s r4, r2, r4
00017c  17013100  and r2, r2, r3
000180  9f010400  addli r3, r8, 0
000184  13030200  seteq r6, r4, zero
000188  1b312100  slli r2, r2, 2
00018c  8b101110  add.s r1, r2, r1
000190  e70e1fec  storeli.w r1, -2328(r30)
000194  9b308200  slli r1, r4, 8
000198  67401fee  storeli.w r1, -2300(r30)
00019c  97806200  and r1, r5, r6
0001a0  674e1fec  storeli.w r1, -2332(r30)
0001a4  db030000  j 28
0001a8  e301cfed  loadli.w r3,  -2336(r30)
0001ac  e340afed  loadli.w r1,  -2348(r30)
0001b0  8b911110  add.s r3, r3, r1
0001b4  e340bfed  loadli.w r1,  -2340(r30)
0001b8  3fa01100  blt.s r3, r1, 8
0001bc  5b390100  j 2504
0001c0  e3004f00  loadli.w r1,  32(r30)
0001c4  63413f00  loadli.w r2,  28(r30)
0001c8  670e3fec  storeli.w r3, -2336(r30)
0001cc  8b901130  div.s r1, r3, r1
0001d0  9f110000  addli r3, zero, 1
0001d4  8b902030  div.s r1, r1, r2
0001d8  1f018ff7  addli r2, r30, -1088
0001dc  1f018100  addli r2, r2, 64
0001e0  e7402fee  storeli.w r2, -2292(r30)
0001e4  1f018ffb  addli r2, r30, -576
0001e8  1f018100  addli r2, r2, 64
0001ec  9bb06000  slli r1, r1, 6
0001f0  e7002fee  storeli.w r2, -2296(r30)
0001f4  6301bfed  loadli.w r2,  -2344(r30)
0001f8  8b902010  add.s r1, r1, r2
0001fc  e70f1fec  storeli.w r1, -2312(r30)
000200  9f000000  addli r1, zero, 0
000204  5b030000  j 24
000208  e3000fee  loadli.w r1,  -2304(r30)
00020c  9f010000  addli r3, zero, 0
000210  1b811000  andi r2, r1, 1
000214  9f004000  addli r1, zero, 32
000218  374e01fe  beq r2, zero, -112
00021c  1f010000  addli r2, zero, 0
000220  67003fee  storeli.w r3, -2304(r30)
000224  8b112510  add.s r3, r10, r2
000228  1f010102  addli r2, r2, 256
00022c  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
000230  46940102  vstore_mask16.mz vr0{mr1}, 64(r3)
000234  46980102  vstore_mask16.mz vr0{mr1}, 128(r3)
000238  469c0102  vstore_mask16.mz vr0{mr1}, 192(r3)
00023c  00a00000  mfence { lm }
000240  bb1fb1fe  bneq r2, r11, -28
000244  6301ffed  loadli.w r2,  -2312(r30)
000248  9f120000  addli r5, zero, 1
00024c  eb510f00  load.d r[4:5], 0(r30)
000250  8b101110  add.s r1, r2, r1
000254  e74f1fec  storeli.w r1, -2308(r30)
000258  9bb0a000  slli r1, r1, 10
00025c  b3900028  sext_int2long r[2:3], r1
000260  97b05002  sll.d r[2:3], r[2:3], r5
000264  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
000268  9f012fee  addli r3, r30, -2288
00026c  73b01100  store.d r[2:3], 0(r3)
000270  9f000000  addli r1, zero, 0
000274  63410fee  loadli.w r2,  -2300(r30)
000278  1f120000  addli r4, zero, 1
00027c  1f032fee  addli r6, r30, -2288
000280  e7015fee  storeli.w r5, -2280(r30)
000284  ab0100f0  lui r3, 983040
000288  9f030004  addli r7, zero, 512
00028c  1f040000  addli r8, zero, 0
000290  97913300  or r3, r7, r3
000294  8b902010  add.s r1, r1, r2
000298  b3900028  sext_int2long r[2:3], r1
00029c  97b04002  sll.d r[2:3], r[2:3], r4
0002a0  6b520300  load.d r[5:6], 0(r6)
0002a4  1f038ff7  addli r6, r30, -1088
0002a8  0b221210  add.ul r[5:6], r[5:6], r[2:3]
0002ac  ff216200  l_gm2lm r3, r6, 0(r[5:6])
0002b0  6b528f00  load.d r[5:6], 8(r30)
0002b4  ab0100f0  lui r3, 983040
0002b8  00a00000  mfence { lm }
0002bc  97913300  or r3, r7, r3
0002c0  8b201210  add.ul r[2:3], r[5:6], r[2:3]
0002c4  1f028ffb  addli r4, r30, -576
0002c8  ffa14000  l_gm2lm r3, r4, 0(r[2:3])
0002cc  00a00000  mfence { lm }
0002d0  e3041fee  loadli.w r9,  -2296(r30)
0002d4  e34d1fee  loadli.w r27,  -2292(r30)
0002d8  0b1d8510  add.s r26, r10, r8
0002dc  92330002  vadd.s.mz vr7{mr1}, zero, vr0
0002e0  1f040402  addli r8, r8, 256
0002e4  42120d02  vload_mask16.mz vr4{mr1}, 0(r26)
0002e8  c2118d02  vload_mask16.mz vr3{mr1}, 64(r26)
0002ec  42110d03  vload_mask16.mz vr2{mr1}, 128(r26)
0002f0  c2108d03  vload_mask16.mz vr1{mr1}, 192(r26)
0002f4  42938de3  vload_mask16.mz vr6{mr1}, 1984(r27)
0002f8  6bb124fc  load.hu r2, -62(r9)
0002fc  ebb004fc  load.hu r1, -64(r9)
000300  c2920d02  vload_mask16.mz vr5{mr1}, 0(r27)
000304  ebb164ff  load.hu r3, -10(r9)
000308  6bb284ff  load.hu r4, -8(r9)
00030c  ebb2a4ff  load.hu r5, -6(r9)
000310  6bb3c4ff  load.hu r6, -4(r9)
000314  ebb3e4ff  load.hu r7, -2(r9)
000318  6bb50400  load.hu r10, 0(r9)
00031c  ebb52400  load.hu r11, 2(r9)
000320  6bb64400  load.hu r12, 4(r9)
000324  ebb66400  load.hu r13, 6(r9)
000328  6bb78400  load.hu r14, 8(r9)
00032c  ebb7a400  load.hu r15, 10(r9)
000330  6bb8c400  load.hu r16, 12(r9)
000334  ebb8e400  load.hu r17, 14(r9)
000338  6bb90401  load.hu r18, 16(r9)
00033c  ebb92401  load.hu r19, 18(r9)
000340  6bba4401  load.hu r20, 20(r9)
000344  ebba6401  load.hu r21, 22(r9)
000348  6bbb8401  load.hu r22, 24(r9)
00034c  ebbba401  load.hu r23, 26(r9)
000350  6bbcc401  load.hu r24, 28(r9)
000354  ebbce401  load.hu r25, 30(r9)
000358  6bbe0402  load.hu r28, 32(r9)
00035c  86350300  vfp162float_l.rn vr11, vr6
000360  9f8d0d01  addli r27, r27, 128
000364  e7422fee  storeli.w r2, -2260(r30)
000368  6bb144fc  load.hu r2, -60(r9)
00036c  b3900020  hfloat2float.rn r1, r1
000370  67432fee  storeli.w r2, -2252(r30)
000374  6bb164fc  load.hu r2, -58(r9)
000378  e7432fee  storeli.w r2, -2244(r30)
00037c  6bb184fc  load.hu r2, -56(r9)
000380  67442fee  storeli.w r2, -2236(r30)
000384  6bb1a4fc  load.hu r2, -54(r9)
000388  e7442fee  storeli.w r2, -2228(r30)
00038c  6bb1c4fc  load.hu r2, -52(r9)
000390  67452fee  storeli.w r2, -2220(r30)
000394  6bb1e4fc  load.hu r2, -50(r9)
000398  e7452fee  storeli.w r2, -2212(r30)
00039c  6bb104fd  load.hu r2, -48(r9)
0003a0  67462fee  storeli.w r2, -2204(r30)
0003a4  6bb124fd  load.hu r2, -46(r9)
0003a8  e7462fee  storeli.w r2, -2196(r30)
0003ac  6bb144fd  load.hu r2, -44(r9)
0003b0  67472fee  storeli.w r2, -2188(r30)
0003b4  6bb164fd  load.hu r2, -42(r9)
0003b8  e7072fee  storeli.w r2, -2184(r30)
0003bc  6bb184fd  load.hu r2, -40(r9)
0003c0  67082fee  storeli.w r2, -2176(r30)
0003c4  6bb1a4fd  load.hu r2, -38(r9)
0003c8  67482fee  storeli.w r2, -2172(r30)
0003cc  6bb1c4fd  load.hu r2, -36(r9)
0003d0  e7082fee  storeli.w r2, -2168(r30)
0003d4  6bb1e4fd  load.hu r2, -34(r9)
0003d8  67092fee  storeli.w r2, -2160(r30)
0003dc  6bb104fe  load.hu r2, -32(r9)
0003e0  e7482fee  storeli.w r2, -2164(r30)
0003e4  6bb124fe  load.hu r2, -30(r9)
0003e8  e7092fee  storeli.w r2, -2152(r30)
0003ec  6bb144fe  load.hu r2, -28(r9)
0003f0  e7492fee  storeli.w r2, -2148(r30)
0003f4  6bb164fe  load.hu r2, -26(r9)
0003f8  670a2fee  storeli.w r2, -2144(r30)
0003fc  6bb184fe  load.hu r2, -24(r9)
000400  674a2fee  storeli.w r2, -2140(r30)
000404  6bb1a4fe  load.hu r2, -22(r9)
000408  e70a2fee  storeli.w r2, -2136(r30)
00040c  6bb1c4fe  load.hu r2, -20(r9)
000410  e74a2fee  storeli.w r2, -2132(r30)
000414  6bb1e4fe  load.hu r2, -18(r9)
000418  670b2fee  storeli.w r2, -2128(r30)
00041c  6bb104ff  load.hu r2, -16(r9)
000420  674b2fee  storeli.w r2, -2124(r30)
000424  6bb124ff  load.hu r2, -14(r9)
000428  e70b2fee  storeli.w r2, -2120(r30)
00042c  6bb144ff  load.hu r2, -12(r9)
000430  e74b2fee  storeli.w r2, -2116(r30)
000434  6bb12402  load.hu r2, 34(r9)
000438  e7412fee  storeli.w r2, -2276(r30)
00043c  6bb14402  load.hu r2, 36(r9)
000440  67022fee  storeli.w r2, -2272(r30)
000444  6bb16402  load.hu r2, 38(r9)
000448  67422fee  storeli.w r2, -2268(r30)
00044c  6bb18402  load.hu r2, 40(r9)
000450  e7022fee  storeli.w r2, -2264(r30)
000454  6bb1a402  load.hu r2, 42(r9)
000458  67032fee  storeli.w r2, -2256(r30)
00045c  6bb1c402  load.hu r2, 44(r9)
000460  e7032fee  storeli.w r2, -2248(r30)
000464  6bb1e402  load.hu r2, 46(r9)
000468  67042fee  storeli.w r2, -2240(r30)
00046c  6bb10403  load.hu r2, 48(r9)
000470  e7042fee  storeli.w r2, -2232(r30)
000474  6bb12403  load.hu r2, 50(r9)
000478  67052fee  storeli.w r2, -2224(r30)
00047c  6bb14403  load.hu r2, 52(r9)
000480  e7052fee  storeli.w r2, -2216(r30)
000484  6bb16403  load.hu r2, 54(r9)
000488  67062fee  storeli.w r2, -2208(r30)
00048c  6bb18403  load.hu r2, 56(r9)
000490  e7062fee  storeli.w r2, -2200(r30)
000494  6bb1a403  load.hu r2, 58(r9)
000498  67072fee  storeli.w r2, -2192(r30)
00049c  6bb1c403  load.hu r2, 60(r9)
0004a0  e7472fee  storeli.w r2, -2180(r30)
0004a4  6bb1e403  load.hu r2, 62(r9)
0004a8  9f840401  addli r9, r9, 128
0004ac  67492fee  storeli.w r2, -2156(r30)
0004b0  1f110000  addli r2, zero, 1
0004b4  fe0101e0  vmmov mr3, r2
0004b8  1f210000  addli r2, zero, 2
0004bc  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
0004c0  e3405fee  loadli.w r1,  -2260(r30)
0004c4  7e0001e0  vmmov mr0, r2
0004c8  1f410000  addli r2, zero, 4
0004cc  b3900020  hfloat2float.rn r1, r1
0004d0  7e0101e0  vmmov mr2, r2
0004d4  1f011000  addli r2, zero, 8
0004d8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0004dc  e3406fee  loadli.w r1,  -2252(r30)
0004e0  7e0001e0  vmmov mr0, r2
0004e4  1f012000  addli r2, zero, 16
0004e8  b3900020  hfloat2float.rn r1, r1
0004ec  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
0004f0  fe0101c0  vmmov mr3, mr2
0004f4  e3407fee  loadli.w r1,  -2244(r30)
0004f8  b3900020  hfloat2float.rn r1, r1
0004fc  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000500  e3408fee  loadli.w r1,  -2236(r30)
000504  7e0001e0  vmmov mr0, r2
000508  1f014000  addli r2, zero, 32
00050c  b3900020  hfloat2float.rn r1, r1
000510  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000514  e3409fee  loadli.w r1,  -2228(r30)
000518  7e0001e0  vmmov mr0, r2
00051c  1f018000  addli r2, zero, 64
000520  b3900020  hfloat2float.rn r1, r1
000524  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000528  e340afee  loadli.w r1,  -2220(r30)
00052c  7e0001e0  vmmov mr0, r2
000530  1f010001  addli r2, zero, 128
000534  b3900020  hfloat2float.rn r1, r1
000538  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
00053c  e340bfee  loadli.w r1,  -2212(r30)
000540  7e0001e0  vmmov mr0, r2
000544  1f010002  addli r2, zero, 256
000548  b3900020  hfloat2float.rn r1, r1
00054c  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000550  e340cfee  loadli.w r1,  -2204(r30)
000554  7e0001e0  vmmov mr0, r2
000558  1f010004  addli r2, zero, 512
00055c  b3900020  hfloat2float.rn r1, r1
000560  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000564  e340dfee  loadli.w r1,  -2196(r30)
000568  7e0001e0  vmmov mr0, r2
00056c  1f010008  addli r2, zero, 1024
000570  b3900020  hfloat2float.rn r1, r1
000574  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000578  e340efee  loadli.w r1,  -2188(r30)
00057c  7e0001e0  vmmov mr0, r2
000580  1f010010  addli r2, zero, 2048
000584  b3900020  hfloat2float.rn r1, r1
000588  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
00058c  e300ffee  loadli.w r1,  -2184(r30)
000590  7e0001e0  vmmov mr0, r2
000594  1f010020  addli r2, zero, 4096
000598  b3900020  hfloat2float.rn r1, r1
00059c  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0005a0  e3000fef  loadli.w r1,  -2176(r30)
0005a4  7e0001e0  vmmov mr0, r2
0005a8  1f010040  addli r2, zero, 8192
0005ac  2b800000  lui zero, 8
0005b0  b3900020  hfloat2float.rn r1, r1
0005b4  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0005b8  e3400fef  loadli.w r1,  -2172(r30)
0005bc  7e0001e0  vmmov mr0, r2
0005c0  2b410000  lui r2, 4
0005c4  b3900020  hfloat2float.rn r1, r1
0005c8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0005cc  e3001fef  loadli.w r1,  -2168(r30)
0005d0  7e0001e0  vmmov mr0, r2
0005d4  b3900020  hfloat2float.rn r1, r1
0005d8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0005dc  e3002fef  loadli.w r1,  -2160(r30)
0005e0  7e0000e0  vmmov mr0, zero
0005e4  17200000  xor zero, zero, zero
0005e8  63411fef  loadli.w r2,  -2164(r30)
0005ec  12340002  vadd.s.mz vr8{mr1}, zero, vr0
0005f0  92340002  vadd.s.mz vr9{mr1}, zero, vr0
0005f4  12350002  vadd.s.mz vr10{mr1}, zero, vr0
0005f8  b3900020  hfloat2float.rn r1, r1
0005fc  33110120  hfloat2float.rn r2, r2
000600  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000604  9f100000  addli r1, zero, 1
000608  7e8100e0  vmmov mr2, r1
00060c  6a248134  vor.u.mh vr8{mr2}, r2, vr8
000610  e3003fef  loadli.w r1,  -2152(r30)
000614  1f210000  addli r2, zero, 2
000618  8e937502  vmul.f.mz.rn vr7{mr1}, vr11, vr7
00061c  86750300  vfp162float_h.rn vr11, vr6
000620  7e0001e0  vmmov mr0, r2
000624  1f011000  addli r2, zero, 8
000628  b3900020  hfloat2float.rn r1, r1
00062c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000630  e3403fef  loadli.w r1,  -2148(r30)
000634  b3900020  hfloat2float.rn r1, r1
000638  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
00063c  e3004fef  loadli.w r1,  -2144(r30)
000640  fe0101e0  vmmov mr3, r2
000644  1f012000  addli r2, zero, 16
000648  7e0001e0  vmmov mr0, r2
00064c  1f014000  addli r2, zero, 32
000650  b3900020  hfloat2float.rn r1, r1
000654  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
000658  e3404fef  loadli.w r1,  -2140(r30)
00065c  b3900020  hfloat2float.rn r1, r1
000660  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000664  e3005fef  loadli.w r1,  -2136(r30)
000668  7e0001e0  vmmov mr0, r2
00066c  1f018000  addli r2, zero, 64
000670  b3900020  hfloat2float.rn r1, r1
000674  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000678  e3405fef  loadli.w r1,  -2132(r30)
00067c  7e0001e0  vmmov mr0, r2
000680  1f010001  addli r2, zero, 128
000684  b3900020  hfloat2float.rn r1, r1
000688  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00068c  e3006fef  loadli.w r1,  -2128(r30)
000690  7e0001e0  vmmov mr0, r2
000694  1f010002  addli r2, zero, 256
000698  b3900020  hfloat2float.rn r1, r1
00069c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0006a0  e3406fef  loadli.w r1,  -2124(r30)
0006a4  7e0001e0  vmmov mr0, r2
0006a8  1f010004  addli r2, zero, 512
0006ac  b3900020  hfloat2float.rn r1, r1
0006b0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0006b4  e3007fef  loadli.w r1,  -2120(r30)
0006b8  7e0001e0  vmmov mr0, r2
0006bc  1f010008  addli r2, zero, 1024
0006c0  b3900020  hfloat2float.rn r1, r1
0006c4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0006c8  e3407fef  loadli.w r1,  -2116(r30)
0006cc  7e0001e0  vmmov mr0, r2
0006d0  1f010010  addli r2, zero, 2048
0006d4  b3900020  hfloat2float.rn r1, r1
0006d8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0006dc  b3900120  hfloat2float.rn r1, r3
0006e0  7e0001e0  vmmov mr0, r2
0006e4  1f010020  addli r2, zero, 4096
0006e8  ab810000  lui r3, 8
0006ec  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0006f0  b3100220  hfloat2float.rn r1, r4
0006f4  7e0001e0  vmmov mr0, r2
0006f8  1f010040  addli r2, zero, 8192
0006fc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000700  b3900220  hfloat2float.rn r1, r5
000704  7e0001e0  vmmov mr0, r2
000708  2b410000  lui r2, 4
00070c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000710  b3100320  hfloat2float.rn r1, r6
000714  7e0001e0  vmmov mr0, r2
000718  33110520  hfloat2float.rn r2, r10
00071c  1f058fef  addli r10, r30, -2112
000720  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000724  b3900320  hfloat2float.rn r1, r7
000728  7e8001e0  vmmov mr0, r3
00072c  ab810000  lui r3, 8
000730  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000734  ea249134  vor.u.mh vr9{mr2}, r2, vr9
000738  1f210000  addli r2, zero, 2
00073c  b3900520  hfloat2float.rn r1, r11
000740  9f050008  addli r11, zero, 1024
000744  7e0001e0  vmmov mr0, r2
000748  1f410000  addli r2, zero, 4
00074c  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000750  b3100620  hfloat2float.rn r1, r12
000754  7e0101e0  vmmov mr2, r2
000758  1f012000  addli r2, zero, 16
00075c  0e938502  vmul.f.mz.rn vr6{mr1}, vr11, vr8
000760  06940300  vfloat2fp16_l.rn vr8, vr7
000764  06540300  vfloat2fp16_h.rn vr8, vr6
000768  86f30200  vfp162float_h.rn vr7, vr5
00076c  06b30200  vfp162float_l.rn vr6, vr5
000770  7e0001e0  vmmov mr0, r2
000774  1f014000  addli r2, zero, 32
000778  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
00077c  b3900620  hfloat2float.rn r1, r13
000780  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
000784  b3100720  hfloat2float.rn r1, r14
000788  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
00078c  b3900720  hfloat2float.rn r1, r15
000790  7e0001e0  vmmov mr0, r2
000794  1f018000  addli r2, zero, 64
000798  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
00079c  b3100820  hfloat2float.rn r1, r16
0007a0  7e0001e0  vmmov mr0, r2
0007a4  1f010001  addli r2, zero, 128
0007a8  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0007ac  b3900820  hfloat2float.rn r1, r17
0007b0  7e0001e0  vmmov mr0, r2
0007b4  1f010002  addli r2, zero, 256
0007b8  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0007bc  b3100920  hfloat2float.rn r1, r18
0007c0  7e0001e0  vmmov mr0, r2
0007c4  1f010004  addli r2, zero, 512
0007c8  7e0101e0  vmmov mr2, r2
0007cc  1f010008  addli r2, zero, 1024
0007d0  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0007d4  b3900920  hfloat2float.rn r1, r19
0007d8  fe0101e0  vmmov mr3, r2
0007dc  1f010010  addli r2, zero, 2048
0007e0  7e0001e0  vmmov mr0, r2
0007e4  1f010020  addli r2, zero, 4096
0007e8  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
0007ec  b3100a20  hfloat2float.rn r1, r20
0007f0  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
0007f4  b3900a20  hfloat2float.rn r1, r21
0007f8  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0007fc  b3100b20  hfloat2float.rn r1, r22
000800  7e0001e0  vmmov mr0, r2
000804  1f010040  addli r2, zero, 8192
000808  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
00080c  b3900b20  hfloat2float.rn r1, r23
000810  7e0001e0  vmmov mr0, r2
000814  2b410000  lui r2, 4
000818  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
00081c  b3100c20  hfloat2float.rn r1, r24
000820  7e0001e0  vmmov mr0, r2
000824  33110e20  hfloat2float.rn r2, r28
000828  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
00082c  b3900c20  hfloat2float.rn r1, r25
000830  7e8001e0  vmmov mr0, r3
000834  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000838  9f100000  addli r1, zero, 1
00083c  7e8000e0  vmmov mr0, r1
000840  6a25a130  vor.u.mh vr10{mr0}, r2, vr10
000844  e3403fee  loadli.w r1,  -2276(r30)
000848  1f210000  addli r2, zero, 2
00084c  0e139302  vmul.f.mz.rn vr6{mr1}, vr6, vr9
000850  7e0001e0  vmmov mr0, r2
000854  1f410000  addli r2, zero, 4
000858  b3900020  hfloat2float.rn r1, r1
00085c  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000860  e3004fee  loadli.w r1,  -2272(r30)
000864  7e0001e0  vmmov mr0, r2
000868  1f011000  addli r2, zero, 8
00086c  b3900020  hfloat2float.rn r1, r1
000870  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000874  e3404fee  loadli.w r1,  -2268(r30)
000878  7e0001e0  vmmov mr0, r2
00087c  1f012000  addli r2, zero, 16
000880  b3900020  hfloat2float.rn r1, r1
000884  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000888  e3005fee  loadli.w r1,  -2264(r30)
00088c  7e0001e0  vmmov mr0, r2
000890  1f014000  addli r2, zero, 32
000894  b3900020  hfloat2float.rn r1, r1
000898  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
00089c  e3006fee  loadli.w r1,  -2256(r30)
0008a0  7e0001e0  vmmov mr0, r2
0008a4  1f018000  addli r2, zero, 64
0008a8  b3900020  hfloat2float.rn r1, r1
0008ac  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0008b0  e3007fee  loadli.w r1,  -2248(r30)
0008b4  7e0001e0  vmmov mr0, r2
0008b8  1f010001  addli r2, zero, 128
0008bc  b3900020  hfloat2float.rn r1, r1
0008c0  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0008c4  e3008fee  loadli.w r1,  -2240(r30)
0008c8  7e0001e0  vmmov mr0, r2
0008cc  1f010002  addli r2, zero, 256
0008d0  b3900020  hfloat2float.rn r1, r1
0008d4  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0008d8  e3009fee  loadli.w r1,  -2232(r30)
0008dc  7e0001e0  vmmov mr0, r2
0008e0  1f010010  addli r2, zero, 2048
0008e4  b3900020  hfloat2float.rn r1, r1
0008e8  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0008ec  e300afee  loadli.w r1,  -2224(r30)
0008f0  b3900020  hfloat2float.rn r1, r1
0008f4  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
0008f8  e300bfee  loadli.w r1,  -2216(r30)
0008fc  7e0101e0  vmmov mr2, r2
000900  1f010020  addli r2, zero, 4096
000904  b3900020  hfloat2float.rn r1, r1
000908  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
00090c  e300cfee  loadli.w r1,  -2208(r30)
000910  b3900020  hfloat2float.rn r1, r1
000914  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
000918  e300dfee  loadli.w r1,  -2200(r30)
00091c  7e0101e0  vmmov mr2, r2
000920  1f010040  addli r2, zero, 8192
000924  b3900020  hfloat2float.rn r1, r1
000928  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
00092c  e300efee  loadli.w r1,  -2192(r30)
000930  7e0101e0  vmmov mr2, r2
000934  2b410000  lui r2, 4
000938  7e0001e0  vmmov mr0, r2
00093c  2b810000  lui r2, 8
000940  b3900020  hfloat2float.rn r1, r1
000944  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
000948  e340ffee  loadli.w r1,  -2180(r30)
00094c  b3900020  hfloat2float.rn r1, r1
000950  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000954  e3402fef  loadli.w r1,  -2156(r30)
000958  7e0001e0  vmmov mr0, r2
00095c  b3900020  hfloat2float.rn r1, r1
000960  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000964  8e92a302  vmul.f.mz.rn vr5{mr1}, vr7, vr10
000968  86330400  vfp162float_l.rn vr7, vr8
00096c  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
000970  86730400  vfp162float_h.rn vr7, vr8
000974  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
000978  86130300  vfloat2fp16_l.rn vr7, vr6
00097c  86d30200  vfloat2fp16_h.rn vr7, vr5
000980  86b20300  vfp162float_l.rn vr5, vr7
000984  16115102  vadd.f.mz.rn vr2{mr1}, vr2, vr5
000988  86f20300  vfp162float_h.rn vr5, vr7
00098c  96905002  vadd.f.mz.rn vr1{mr1}, vr1, vr5
000990  46104d02  vstore_mask16.mz vr4{mr1}, 0(r26)
000994  46143d02  vstore_mask16.mz vr3{mr1}, 64(r26)
000998  46182d02  vstore_mask16.mz vr2{mr1}, 128(r26)
00099c  461c1d02  vstore_mask16.mz vr1{mr1}, 192(r26)
0009a0  00a00000  mfence { lm }
0009a4  bb54b4fc  bneq r8, r11, -1740
0009a8  e3003fee  loadli.w r1,  -2280(r30)
0009ac  9f020000  addli r5, zero, 0
0009b0  1b811000  andi r2, r1, 1
0009b4  9f000004  addli r1, zero, 512
0009b8  bb7201fc  bneq r2, zero, -1860
0009bc  9f008fef  addli r1, r30, -2112
0009c0  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0009c4  9f000ff0  addli r1, r30, -2048
0009c8  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0009cc  9f008ff3  addli r1, r30, -1600
0009d0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0009d4  9f008ff0  addli r1, r30, -1984
0009d8  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
0009dc  9f000ff4  addli r1, r30, -1536
0009e0  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0009e4  9f008ff4  addli r1, r30, -1472
0009e8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009ec  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0009f0  9f000ff1  addli r1, r30, -1920
0009f4  16115102  vadd.f.mz.rn vr2{mr1}, vr2, vr5
0009f8  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0009fc  9f000ff5  addli r1, r30, -1408
000a00  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
000a04  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000a08  9f008ff1  addli r1, r30, -1856
000a0c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000a10  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000a14  9f008ff5  addli r1, r30, -1344
000a18  16924202  vadd.f.mz.rn vr4{mr1}, vr5, vr4
000a1c  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000a20  9f000ff2  addli r1, r30, -1792
000a24  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a28  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000a2c  9f000ff6  addli r1, r30, -1280
000a30  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000a34  16115102  vadd.f.mz.rn vr2{mr1}, vr2, vr5
000a38  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000a3c  9f008ff2  addli r1, r30, -1728
000a40  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000a44  9f008ff6  addli r1, r30, -1216
000a48  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000a4c  96915102  vadd.f.mz.rn vr3{mr1}, vr3, vr5
000a50  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000a54  9f000ff3  addli r1, r30, -1664
000a58  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a5c  16115202  vadd.f.mz.rn vr2{mr1}, vr4, vr5
000a60  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000a64  9f000ff7  addli r1, r30, -1152
000a68  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000a6c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000a70  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
000a74  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a78  fa900040  vextracti.f r1, 0(vr1)
000a7c  7a911040  vextracti.f r2, 1(vr1)
000a80  8be02010  add.f.rn r1, r1, r2
000a84  7a912040  vextracti.f r2, 2(vr1)
000a88  8b601110  add.f.rn r1, r2, r1
000a8c  7a913040  vextracti.f r2, 3(vr1)
000a90  8b601110  add.f.rn r1, r2, r1
000a94  7a914040  vextracti.f r2, 4(vr1)
000a98  8b601110  add.f.rn r1, r2, r1
000a9c  7a915040  vextracti.f r2, 5(vr1)
000aa0  8b601110  add.f.rn r1, r2, r1
000aa4  7a916040  vextracti.f r2, 6(vr1)
000aa8  8b601110  add.f.rn r1, r2, r1
000aac  7a917040  vextracti.f r2, 7(vr1)
000ab0  8b601110  add.f.rn r1, r2, r1
000ab4  7a918040  vextracti.f r2, 8(vr1)
000ab8  8b601110  add.f.rn r1, r2, r1
000abc  7a919040  vextracti.f r2, 9(vr1)
000ac0  8b601110  add.f.rn r1, r2, r1
000ac4  7a91a040  vextracti.f r2, 10(vr1)
000ac8  8b601110  add.f.rn r1, r2, r1
000acc  7a91b040  vextracti.f r2, 11(vr1)
000ad0  8b601110  add.f.rn r1, r2, r1
000ad4  7a91c040  vextracti.f r2, 12(vr1)
000ad8  8b601110  add.f.rn r1, r2, r1
000adc  7a91d040  vextracti.f r2, 13(vr1)
000ae0  8b601110  add.f.rn r1, r2, r1
000ae4  7a91e040  vextracti.f r2, 14(vr1)
000ae8  8b601110  add.f.rn r1, r2, r1
000aec  7a91f040  vextracti.f r2, 15(vr1)
000af0  8b601110  add.f.rn r1, r2, r1
000af4  6341efed  loadli.w r2,  -2316(r30)
000af8  73601100  stores.w r1, 0(r2)
000afc  00a00300  mfence { lm, sm, gm }
000b00  e303efed  loadli.w r7,  -2320(r30)
000b04  80a10304  csr_set csr3, r7
000b08  00d00100  sync_group
000b0c  e340dfed  loadli.w r1,  -2324(r30)
000b10  3be00000  bneq r1, zero, 24
000b14  e301dfed  loadli.w r3,  -2328(r30)
000b18  efc00100  loads.w r1, 0(r3)
000b1c  6fc14100  loads.w r2, 4(r3)
000b20  8be02010  add.f.rn r1, r1, r2
000b24  73e01100  stores.w r1, 0(r3)
000b28  00a00300  mfence { lm, sm, gm }
000b2c  80a10304  csr_set csr3, r7
000b30  00d00100  sync_group
000b34  e340cfed  loadli.w r1,  -2332(r30)
000b38  37cb00fa  beq r1, zero, -2352
000b3c  e300dfed  loadli.w r1,  -2328(r30)
000b40  6341ffed  loadli.w r2,  -2308(r30)
000b44  9f120000  addli r5, zero, 1
000b48  2b0200f0  lui r4, 983040
000b4c  efc00000  loads.w r1, 0(r1)
000b50  33110128  sext_int2long r[3:4], r2
000b54  17315102  sll.d r[3:4], r[3:4], r5
000b58  eb520f01  load.d r[6:7], 16(r30)
000b5c  0ba12210  add.ul r[3:4], r[6:7], r[3:4]
000b60  b3a00000  float2hfloat.rn r1, r1
000b64  73101ffc  store.h r1, -64(r30)
000b68  9f200000  addli r1, zero, 2
000b6c  00a00000  mfence { lm }
000b70  97904000  or r1, r1, r4
000b74  1f028fff  addli r4, r30, -64
000b78  ff304100  s_lm2gm r1, r4, 0(r[3:4])
000b7c  00a00000  mfence { lm }
000b80  5bd1feff  j -2424
000b84  9f8e6e12  addli sp, sp, 2352
000b88  00a00300  mfence { lm, sm, gm }
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
000bf0  00100000  exit
000bf4  00100000  exit
000bf8  00100000  exit
000bfc  00100000  exit
000c00  00100000  exit
000c04  00100000  exit
000c08  00100000  exit
000c0c  00100000  exit
000c10  00100000  exit
000c14  00100000  exit
000c18  00100000  exit
000c1c  00100000  exit
000c20  00100000  exit
000c24  00100000  exit
000c28  00100000  exit
000c2c  00100000  exit
000c30  00100000  exit
000c34  00100000  exit
000c38  00100000  exit
000c3c  00100000  exit
000c40  00100000  exit
000c44  00100000  exit
000c48  00100000  exit
000c4c  00100000  exit
000c50  00100000  exit
000c54  00100000  exit
000c58  00100000  exit
000c5c  00100000  exit
000c60  00100000  exit
000c64  00100000  exit
000c68  00100000  exit
000c6c  00100000  exit
000c70  00100000  exit
000c74  00100000  exit
000c78  00100000  exit
000c7c  00100000  exit
000c80  00100000  exit
000c84  00100000  exit
000c88  00100000  exit
000c8c  00100000  exit
000c90  00100000  exit
000c94  00100000  exit
000c98  00100000  exit
000c9c  00100000  exit
000ca0  00100000  exit
000ca4  00100000  exit
000ca8  00100000  exit
000cac  00100000  exit
000cb0  00100000  exit
000cb4  00100000  exit
000cb8  00100000  exit
000cbc  00100000  exit
000cc0  00100000  exit
000cc4  00100000  exit
000cc8  00100000  exit
000ccc  00100000  exit
000cd0  00100000  exit
000cd4  00100000  exit
000cd8  00100000  exit
000cdc  00100000  exit
000ce0  00100000  exit
000ce4  00100000  exit
000ce8  00100000  exit
000cec  00100000  exit
000cf0  00100000  exit
000cf4  00100000  exit
000cf8  00100000  exit
000cfc  00100000  exit
000d00  00100000  exit
000d04  00100000  exit
000d08  00100000  exit
000d0c  00100000  exit
000d10  00100000  exit
000d14  00100000  exit
000d18  00100000  exit
000d1c  00100000  exit
000d20  00100000  exit
000d24  00100000  exit
000d28  00100000  exit
000d2c  00100000  exit
000d30  00100000  exit
000d34  00100000  exit
000d38  00100000  exit
000d3c  00100000  exit
000d40  00100000  exit
000d44  00100000  exit
000d48  00100000  exit
000d4c  00100000  exit
000d50  00100000  exit
000d54  00100000  exit
000d58  00100000  exit
000d5c  00100000  exit
000d60  00100000  exit
000d64  00100000  exit
000d68  00100000  exit
000d6c  00100000  exit
000d70  00100000  exit
000d74  00100000  exit
000d78  00100000  exit
000d7c  00100000  exit
000d80  00100000  exit
000d84  00100000  exit
000d88  00100000  exit
000d8c  00100000  exit
000d90  00100000  exit
000d94  00100000  exit
000d98  00100000  exit
000d9c  00100000  exit
000da0  00100000  exit
000da4  00100000  exit
000da8  00100000  exit
000dac  00100000  exit
000db0  00100000  exit
000db4  00100000  exit
000db8  00100000  exit
000dbc  00100000  exit
000dc0  00100000  exit
000dc4  00100000  exit
000dc8  00100000  exit
000dcc  00100000  exit
