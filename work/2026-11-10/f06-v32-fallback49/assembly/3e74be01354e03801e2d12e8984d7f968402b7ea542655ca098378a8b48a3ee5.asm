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
0000dc  9f8e7eed  addli sp, sp, -2376
0000e0  1f8f1e12  addli r30, sp, 2312
0000e4  63413f00  loadli.w r2,  28(r30)
0000e8  e3003f00  loadli.w r1,  24(r30)
0000ec  e3014f00  loadli.w r3,  32(r30)
0000f0  8b101120  mul.s r1, r2, r1
0000f4  00510002  load_param_i r2, 0
0000f8  8b903020  mul.s r1, r1, r3
0000fc  e74f1fec  storeli.w r1, -2308(r30)
000100  4bf72004  ble.s r1, r2, 2524
000104  80d00002  load_param_i r1, 1
000108  80330002  core_id r7
00010c  9f048fef  addli r9, r30, -2112
000110  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000114  e70f1fec  storeli.w r1, -2312(r30)
000118  db030000  j 28
00011c  63410fee  loadli.w r2,  -2300(r30)
000120  e300ffed  loadli.w r1,  -2312(r30)
000124  0b111110  add.s r2, r2, r1
000128  e340ffed  loadli.w r1,  -2308(r30)
00012c  3f201100  blt.s r2, r1, 8
000130  db350100  j 2476
000134  9f008fef  addli r1, r30, -2112
000138  9f010ff7  addli r3, r30, -1152
00013c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000140  9f000ff0  addli r1, r30, -2048
000144  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000148  9f008ff0  addli r1, r30, -1984
00014c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000150  e3004f00  loadli.w r1,  32(r30)
000154  67402fee  storeli.w r2, -2300(r30)
000158  8b101130  div.s r1, r2, r1
00015c  1f010ff1  addli r2, r30, -1920
000160  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000164  1f018ff1  addli r2, r30, -1856
000168  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00016c  1f010ff2  addli r2, r30, -1792
000170  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000174  1f018ff2  addli r2, r30, -1728
000178  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00017c  1f010ff3  addli r2, r30, -1664
000180  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000184  63413f00  loadli.w r2,  28(r30)
000188  00a00000  mfence { lm }
00018c  8b902030  div.s r1, r1, r2
000190  1f018ff3  addli r2, r30, -1600
000194  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000198  1f010ff4  addli r2, r30, -1536
00019c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0001a0  1f018ff4  addli r2, r30, -1472
0001a4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0001a8  1f010ff5  addli r2, r30, -1408
0001ac  9bb06000  slli r1, r1, 6
0001b0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0001b4  1f018ff5  addli r2, r30, -1344
0001b8  8b907010  add.s r1, r1, r7
0001bc  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0001c0  1f010ff6  addli r2, r30, -1280
0001c4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0001c8  67001fee  storeli.w r1, -2304(r30)
0001cc  1f018ff6  addli r2, r30, -1216
0001d0  9bb0b000  slli r1, r1, 11
0001d4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0001d8  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0001dc  b3900028  sext_int2long r[2:3], r1
0001e0  9f110000  addli r3, zero, 1
0001e4  00a00000  mfence { lm }
0001e8  97b03002  sll.d r[2:3], r[2:3], r3
0001ec  eb510f00  load.d r[4:5], 0(r30)
0001f0  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
0001f4  9f012fee  addli r3, r30, -2288
0001f8  73b01100  store.d r[2:3], 0(r3)
0001fc  9f008ff7  addli r1, r30, -1088
000200  1f010000  addli r2, zero, 0
000204  9f808000  addli r1, r1, 64
000208  e7401fee  storeli.w r1, -2292(r30)
00020c  9f008ffb  addli r1, r30, -576
000210  9f808000  addli r1, r1, 64
000214  e7001fee  storeli.w r1, -2296(r30)
000218  e7012fee  storeli.w r2, -2280(r30)
00021c  b3000128  zext_int2long r[2:3], r2
000220  1f120000  addli r4, zero, 1
000224  ab0100f0  lui r3, 983040
000228  1f040004  addli r8, zero, 512
00022c  9f020000  addli r5, zero, 0
000230  97b04002  sll.d r[2:3], r[2:3], r4
000234  1f022fee  addli r4, r30, -2288
000238  97113400  or r3, r8, r3
00023c  6b530200  load.d r[7:8], 0(r4)
000240  1f028ff7  addli r4, r30, -1088
000244  0b231310  add.ul r[7:8], r[7:8], r[2:3]
000248  ff214300  l_gm2lm r3, r4, 0(r[7:8])
00024c  6b538f00  load.d r[7:8], 8(r30)
000250  ab0100f0  lui r3, 983040
000254  1f028ffb  addli r4, r30, -576
000258  00a00000  mfence { lm }
00025c  97113400  or r3, r8, r3
000260  8b201310  add.ul r[2:3], r[7:8], r[2:3]
000264  ffa14000  l_gm2lm r3, r4, 0(r[2:3])
000268  00a00000  mfence { lm }
00026c  63031fee  loadli.w r6,  -2296(r30)
000270  634d1fee  loadli.w r26,  -2292(r30)
000274  0b9b5410  add.s r22, r9, r5
000278  92330002  vadd.s.mz vr7{mr1}, zero, vr0
00027c  9f820202  addli r5, r5, 256
000280  42120b02  vload_mask16.mz vr4{mr1}, 0(r22)
000284  c2118b02  vload_mask16.mz vr3{mr1}, 64(r22)
000288  42110b03  vload_mask16.mz vr2{mr1}, 128(r22)
00028c  c2108b03  vload_mask16.mz vr1{mr1}, 192(r22)
000290  42138de3  vload_mask16.mz vr6{mr1}, 1984(r26)
000294  6b3123fc  load.hu r2, -62(r6)
000298  eb3003fc  load.hu r1, -64(r6)
00029c  c2120d02  vload_mask16.mz vr5{mr1}, 0(r26)
0002a0  eb3163ff  load.hu r3, -10(r6)
0002a4  6b3283ff  load.hu r4, -8(r6)
0002a8  eb33a3ff  load.hu r7, -6(r6)
0002ac  6b34c3ff  load.hu r8, -4(r6)
0002b0  eb34e3ff  load.hu r9, -2(r6)
0002b4  6b350300  load.hu r10, 0(r6)
0002b8  eb352300  load.hu r11, 2(r6)
0002bc  6b364300  load.hu r12, 4(r6)
0002c0  eb366300  load.hu r13, 6(r6)
0002c4  6b378300  load.hu r14, 8(r6)
0002c8  eb37a300  load.hu r15, 10(r6)
0002cc  6b38c300  load.hu r16, 12(r6)
0002d0  eb38e300  load.hu r17, 14(r6)
0002d4  6b390301  load.hu r18, 16(r6)
0002d8  eb392301  load.hu r19, 18(r6)
0002dc  6b3a4301  load.hu r20, 20(r6)
0002e0  eb3a6301  load.hu r21, 22(r6)
0002e4  eb3b8301  load.hu r23, 24(r6)
0002e8  6b3ca301  load.hu r24, 26(r6)
0002ec  eb3cc301  load.hu r25, 28(r6)
0002f0  eb3de301  load.hu r27, 30(r6)
0002f4  6b3e0302  load.hu r28, 32(r6)
0002f8  86350300  vfp162float_l.rn vr11, vr6
0002fc  1f0d0d01  addli r26, r26, 128
000300  e7422fee  storeli.w r2, -2260(r30)
000304  6b3143fc  load.hu r2, -60(r6)
000308  b3900020  hfloat2float.rn r1, r1
00030c  67432fee  storeli.w r2, -2252(r30)
000310  6b3163fc  load.hu r2, -58(r6)
000314  e7432fee  storeli.w r2, -2244(r30)
000318  6b3183fc  load.hu r2, -56(r6)
00031c  67442fee  storeli.w r2, -2236(r30)
000320  6b31a3fc  load.hu r2, -54(r6)
000324  e7442fee  storeli.w r2, -2228(r30)
000328  6b31c3fc  load.hu r2, -52(r6)
00032c  67452fee  storeli.w r2, -2220(r30)
000330  6b31e3fc  load.hu r2, -50(r6)
000334  e7452fee  storeli.w r2, -2212(r30)
000338  6b3103fd  load.hu r2, -48(r6)
00033c  67462fee  storeli.w r2, -2204(r30)
000340  6b3123fd  load.hu r2, -46(r6)
000344  e7462fee  storeli.w r2, -2196(r30)
000348  6b3143fd  load.hu r2, -44(r6)
00034c  67472fee  storeli.w r2, -2188(r30)
000350  6b3163fd  load.hu r2, -42(r6)
000354  e7072fee  storeli.w r2, -2184(r30)
000358  6b3183fd  load.hu r2, -40(r6)
00035c  67082fee  storeli.w r2, -2176(r30)
000360  6b31a3fd  load.hu r2, -38(r6)
000364  67482fee  storeli.w r2, -2172(r30)
000368  6b31c3fd  load.hu r2, -36(r6)
00036c  e7082fee  storeli.w r2, -2168(r30)
000370  6b31e3fd  load.hu r2, -34(r6)
000374  67092fee  storeli.w r2, -2160(r30)
000378  6b3103fe  load.hu r2, -32(r6)
00037c  e7482fee  storeli.w r2, -2164(r30)
000380  6b3123fe  load.hu r2, -30(r6)
000384  e7092fee  storeli.w r2, -2152(r30)
000388  6b3143fe  load.hu r2, -28(r6)
00038c  e7492fee  storeli.w r2, -2148(r30)
000390  6b3163fe  load.hu r2, -26(r6)
000394  670a2fee  storeli.w r2, -2144(r30)
000398  6b3183fe  load.hu r2, -24(r6)
00039c  674a2fee  storeli.w r2, -2140(r30)
0003a0  6b31a3fe  load.hu r2, -22(r6)
0003a4  e70a2fee  storeli.w r2, -2136(r30)
0003a8  6b31c3fe  load.hu r2, -20(r6)
0003ac  e74a2fee  storeli.w r2, -2132(r30)
0003b0  6b31e3fe  load.hu r2, -18(r6)
0003b4  670b2fee  storeli.w r2, -2128(r30)
0003b8  6b3103ff  load.hu r2, -16(r6)
0003bc  674b2fee  storeli.w r2, -2124(r30)
0003c0  6b3123ff  load.hu r2, -14(r6)
0003c4  e70b2fee  storeli.w r2, -2120(r30)
0003c8  6b3143ff  load.hu r2, -12(r6)
0003cc  e74b2fee  storeli.w r2, -2116(r30)
0003d0  6b312302  load.hu r2, 34(r6)
0003d4  e7412fee  storeli.w r2, -2276(r30)
0003d8  6b314302  load.hu r2, 36(r6)
0003dc  67022fee  storeli.w r2, -2272(r30)
0003e0  6b316302  load.hu r2, 38(r6)
0003e4  67422fee  storeli.w r2, -2268(r30)
0003e8  6b318302  load.hu r2, 40(r6)
0003ec  e7022fee  storeli.w r2, -2264(r30)
0003f0  6b31a302  load.hu r2, 42(r6)
0003f4  67032fee  storeli.w r2, -2256(r30)
0003f8  6b31c302  load.hu r2, 44(r6)
0003fc  e7032fee  storeli.w r2, -2248(r30)
000400  6b31e302  load.hu r2, 46(r6)
000404  67042fee  storeli.w r2, -2240(r30)
000408  6b310303  load.hu r2, 48(r6)
00040c  e7042fee  storeli.w r2, -2232(r30)
000410  6b312303  load.hu r2, 50(r6)
000414  67052fee  storeli.w r2, -2224(r30)
000418  6b314303  load.hu r2, 52(r6)
00041c  e7052fee  storeli.w r2, -2216(r30)
000420  6b316303  load.hu r2, 54(r6)
000424  67062fee  storeli.w r2, -2208(r30)
000428  6b318303  load.hu r2, 56(r6)
00042c  e7062fee  storeli.w r2, -2200(r30)
000430  6b31a303  load.hu r2, 58(r6)
000434  67072fee  storeli.w r2, -2192(r30)
000438  6b31c303  load.hu r2, 60(r6)
00043c  e7472fee  storeli.w r2, -2180(r30)
000440  6b31e303  load.hu r2, 62(r6)
000444  1f030301  addli r6, r6, 128
000448  67492fee  storeli.w r2, -2156(r30)
00044c  1f110000  addli r2, zero, 1
000450  fe0101e0  vmmov mr3, r2
000454  1f210000  addli r2, zero, 2
000458  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
00045c  e3405fee  loadli.w r1,  -2260(r30)
000460  7e0001e0  vmmov mr0, r2
000464  1f410000  addli r2, zero, 4
000468  b3900020  hfloat2float.rn r1, r1
00046c  7e0101e0  vmmov mr2, r2
000470  1f011000  addli r2, zero, 8
000474  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000478  e3406fee  loadli.w r1,  -2252(r30)
00047c  7e0001e0  vmmov mr0, r2
000480  1f012000  addli r2, zero, 16
000484  b3900020  hfloat2float.rn r1, r1
000488  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
00048c  fe0101c0  vmmov mr3, mr2
000490  e3407fee  loadli.w r1,  -2244(r30)
000494  b3900020  hfloat2float.rn r1, r1
000498  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
00049c  e3408fee  loadli.w r1,  -2236(r30)
0004a0  7e0001e0  vmmov mr0, r2
0004a4  1f014000  addli r2, zero, 32
0004a8  b3900020  hfloat2float.rn r1, r1
0004ac  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0004b0  e3409fee  loadli.w r1,  -2228(r30)
0004b4  7e0001e0  vmmov mr0, r2
0004b8  1f018000  addli r2, zero, 64
0004bc  b3900020  hfloat2float.rn r1, r1
0004c0  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0004c4  e340afee  loadli.w r1,  -2220(r30)
0004c8  7e0001e0  vmmov mr0, r2
0004cc  1f010001  addli r2, zero, 128
0004d0  b3900020  hfloat2float.rn r1, r1
0004d4  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0004d8  e340bfee  loadli.w r1,  -2212(r30)
0004dc  7e0001e0  vmmov mr0, r2
0004e0  1f010002  addli r2, zero, 256
0004e4  b3900020  hfloat2float.rn r1, r1
0004e8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0004ec  e340cfee  loadli.w r1,  -2204(r30)
0004f0  7e0001e0  vmmov mr0, r2
0004f4  1f010004  addli r2, zero, 512
0004f8  b3900020  hfloat2float.rn r1, r1
0004fc  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000500  e340dfee  loadli.w r1,  -2196(r30)
000504  7e0001e0  vmmov mr0, r2
000508  1f010008  addli r2, zero, 1024
00050c  b3900020  hfloat2float.rn r1, r1
000510  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000514  e340efee  loadli.w r1,  -2188(r30)
000518  7e0001e0  vmmov mr0, r2
00051c  1f010010  addli r2, zero, 2048
000520  b3900020  hfloat2float.rn r1, r1
000524  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000528  e300ffee  loadli.w r1,  -2184(r30)
00052c  7e0001e0  vmmov mr0, r2
000530  1f010020  addli r2, zero, 4096
000534  b3900020  hfloat2float.rn r1, r1
000538  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
00053c  e3000fef  loadli.w r1,  -2176(r30)
000540  7e0001e0  vmmov mr0, r2
000544  1f010040  addli r2, zero, 8192
000548  2b800000  lui zero, 8
00054c  b3900020  hfloat2float.rn r1, r1
000550  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000554  e3400fef  loadli.w r1,  -2172(r30)
000558  7e0001e0  vmmov mr0, r2
00055c  2b410000  lui r2, 4
000560  b3900020  hfloat2float.rn r1, r1
000564  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000568  e3001fef  loadli.w r1,  -2168(r30)
00056c  7e0001e0  vmmov mr0, r2
000570  b3900020  hfloat2float.rn r1, r1
000574  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000578  e3002fef  loadli.w r1,  -2160(r30)
00057c  7e0000e0  vmmov mr0, zero
000580  17200000  xor zero, zero, zero
000584  63411fef  loadli.w r2,  -2164(r30)
000588  12340002  vadd.s.mz vr8{mr1}, zero, vr0
00058c  92340002  vadd.s.mz vr9{mr1}, zero, vr0
000590  12350002  vadd.s.mz vr10{mr1}, zero, vr0
000594  b3900020  hfloat2float.rn r1, r1
000598  33110120  hfloat2float.rn r2, r2
00059c  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0005a0  9f100000  addli r1, zero, 1
0005a4  7e8100e0  vmmov mr2, r1
0005a8  6a248134  vor.u.mh vr8{mr2}, r2, vr8
0005ac  e3003fef  loadli.w r1,  -2152(r30)
0005b0  1f210000  addli r2, zero, 2
0005b4  8e937502  vmul.f.mz.rn vr7{mr1}, vr11, vr7
0005b8  86750300  vfp162float_h.rn vr11, vr6
0005bc  7e0001e0  vmmov mr0, r2
0005c0  1f011000  addli r2, zero, 8
0005c4  b3900020  hfloat2float.rn r1, r1
0005c8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0005cc  e3403fef  loadli.w r1,  -2148(r30)
0005d0  b3900020  hfloat2float.rn r1, r1
0005d4  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
0005d8  e3004fef  loadli.w r1,  -2144(r30)
0005dc  fe0101e0  vmmov mr3, r2
0005e0  1f012000  addli r2, zero, 16
0005e4  7e0001e0  vmmov mr0, r2
0005e8  1f014000  addli r2, zero, 32
0005ec  b3900020  hfloat2float.rn r1, r1
0005f0  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
0005f4  e3404fef  loadli.w r1,  -2140(r30)
0005f8  b3900020  hfloat2float.rn r1, r1
0005fc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000600  e3005fef  loadli.w r1,  -2136(r30)
000604  7e0001e0  vmmov mr0, r2
000608  1f018000  addli r2, zero, 64
00060c  b3900020  hfloat2float.rn r1, r1
000610  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000614  e3405fef  loadli.w r1,  -2132(r30)
000618  7e0001e0  vmmov mr0, r2
00061c  1f010001  addli r2, zero, 128
000620  b3900020  hfloat2float.rn r1, r1
000624  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000628  e3006fef  loadli.w r1,  -2128(r30)
00062c  7e0001e0  vmmov mr0, r2
000630  1f010002  addli r2, zero, 256
000634  b3900020  hfloat2float.rn r1, r1
000638  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00063c  e3406fef  loadli.w r1,  -2124(r30)
000640  7e0001e0  vmmov mr0, r2
000644  1f010004  addli r2, zero, 512
000648  b3900020  hfloat2float.rn r1, r1
00064c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000650  e3007fef  loadli.w r1,  -2120(r30)
000654  7e0001e0  vmmov mr0, r2
000658  1f010008  addli r2, zero, 1024
00065c  b3900020  hfloat2float.rn r1, r1
000660  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000664  e3407fef  loadli.w r1,  -2116(r30)
000668  7e0001e0  vmmov mr0, r2
00066c  1f010010  addli r2, zero, 2048
000670  b3900020  hfloat2float.rn r1, r1
000674  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000678  b3900120  hfloat2float.rn r1, r3
00067c  7e0001e0  vmmov mr0, r2
000680  1f010020  addli r2, zero, 4096
000684  9f010008  addli r3, zero, 1024
000688  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00068c  b3100220  hfloat2float.rn r1, r4
000690  7e0001e0  vmmov mr0, r2
000694  1f010040  addli r2, zero, 8192
000698  2b820000  lui r4, 8
00069c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0006a0  b3900320  hfloat2float.rn r1, r7
0006a4  7e0001e0  vmmov mr0, r2
0006a8  2b410000  lui r2, 4
0006ac  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0006b0  b3100420  hfloat2float.rn r1, r8
0006b4  7e0001e0  vmmov mr0, r2
0006b8  33110520  hfloat2float.rn r2, r10
0006bc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0006c0  b3900420  hfloat2float.rn r1, r9
0006c4  7e0002e0  vmmov mr0, r4
0006c8  2b820000  lui r4, 8
0006cc  9f048fef  addli r9, r30, -2112
0006d0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0006d4  ea249134  vor.u.mh vr9{mr2}, r2, vr9
0006d8  1f210000  addli r2, zero, 2
0006dc  b3900520  hfloat2float.rn r1, r11
0006e0  7e0001e0  vmmov mr0, r2
0006e4  1f410000  addli r2, zero, 4
0006e8  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0006ec  b3100620  hfloat2float.rn r1, r12
0006f0  7e0101e0  vmmov mr2, r2
0006f4  1f012000  addli r2, zero, 16
0006f8  0e938502  vmul.f.mz.rn vr6{mr1}, vr11, vr8
0006fc  06940300  vfloat2fp16_l.rn vr8, vr7
000700  06540300  vfloat2fp16_h.rn vr8, vr6
000704  86f30200  vfp162float_h.rn vr7, vr5
000708  06b30200  vfp162float_l.rn vr6, vr5
00070c  7e0001e0  vmmov mr0, r2
000710  1f014000  addli r2, zero, 32
000714  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000718  b3900620  hfloat2float.rn r1, r13
00071c  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
000720  b3100720  hfloat2float.rn r1, r14
000724  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000728  b3900720  hfloat2float.rn r1, r15
00072c  7e0001e0  vmmov mr0, r2
000730  1f018000  addli r2, zero, 64
000734  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000738  b3100820  hfloat2float.rn r1, r16
00073c  7e0001e0  vmmov mr0, r2
000740  1f010001  addli r2, zero, 128
000744  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000748  b3900820  hfloat2float.rn r1, r17
00074c  7e0001e0  vmmov mr0, r2
000750  1f010002  addli r2, zero, 256
000754  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000758  b3100920  hfloat2float.rn r1, r18
00075c  7e0001e0  vmmov mr0, r2
000760  1f010004  addli r2, zero, 512
000764  7e0101e0  vmmov mr2, r2
000768  1f010008  addli r2, zero, 1024
00076c  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000770  b3900920  hfloat2float.rn r1, r19
000774  fe0101e0  vmmov mr3, r2
000778  1f010010  addli r2, zero, 2048
00077c  7e0001e0  vmmov mr0, r2
000780  1f010020  addli r2, zero, 4096
000784  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000788  b3100a20  hfloat2float.rn r1, r20
00078c  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
000790  b3900a20  hfloat2float.rn r1, r21
000794  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000798  b3900b20  hfloat2float.rn r1, r23
00079c  7e0001e0  vmmov mr0, r2
0007a0  1f010040  addli r2, zero, 8192
0007a4  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0007a8  b3100c20  hfloat2float.rn r1, r24
0007ac  7e0001e0  vmmov mr0, r2
0007b0  2b410000  lui r2, 4
0007b4  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0007b8  b3900c20  hfloat2float.rn r1, r25
0007bc  7e0001e0  vmmov mr0, r2
0007c0  33110e20  hfloat2float.rn r2, r28
0007c4  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0007c8  b3900d20  hfloat2float.rn r1, r27
0007cc  7e0002e0  vmmov mr0, r4
0007d0  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0007d4  9f100000  addli r1, zero, 1
0007d8  7e8000e0  vmmov mr0, r1
0007dc  6a25a130  vor.u.mh vr10{mr0}, r2, vr10
0007e0  e3403fee  loadli.w r1,  -2276(r30)
0007e4  1f210000  addli r2, zero, 2
0007e8  0e139302  vmul.f.mz.rn vr6{mr1}, vr6, vr9
0007ec  7e0001e0  vmmov mr0, r2
0007f0  1f410000  addli r2, zero, 4
0007f4  b3900020  hfloat2float.rn r1, r1
0007f8  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0007fc  e3004fee  loadli.w r1,  -2272(r30)
000800  7e0001e0  vmmov mr0, r2
000804  1f011000  addli r2, zero, 8
000808  b3900020  hfloat2float.rn r1, r1
00080c  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000810  e3404fee  loadli.w r1,  -2268(r30)
000814  7e0001e0  vmmov mr0, r2
000818  1f012000  addli r2, zero, 16
00081c  b3900020  hfloat2float.rn r1, r1
000820  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000824  e3005fee  loadli.w r1,  -2264(r30)
000828  7e0001e0  vmmov mr0, r2
00082c  1f014000  addli r2, zero, 32
000830  b3900020  hfloat2float.rn r1, r1
000834  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000838  e3006fee  loadli.w r1,  -2256(r30)
00083c  7e0001e0  vmmov mr0, r2
000840  1f018000  addli r2, zero, 64
000844  b3900020  hfloat2float.rn r1, r1
000848  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
00084c  e3007fee  loadli.w r1,  -2248(r30)
000850  7e0001e0  vmmov mr0, r2
000854  1f010001  addli r2, zero, 128
000858  b3900020  hfloat2float.rn r1, r1
00085c  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000860  e3008fee  loadli.w r1,  -2240(r30)
000864  7e0001e0  vmmov mr0, r2
000868  1f010002  addli r2, zero, 256
00086c  b3900020  hfloat2float.rn r1, r1
000870  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000874  e3009fee  loadli.w r1,  -2232(r30)
000878  7e0001e0  vmmov mr0, r2
00087c  1f010010  addli r2, zero, 2048
000880  b3900020  hfloat2float.rn r1, r1
000884  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000888  e300afee  loadli.w r1,  -2224(r30)
00088c  b3900020  hfloat2float.rn r1, r1
000890  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
000894  e300bfee  loadli.w r1,  -2216(r30)
000898  7e0101e0  vmmov mr2, r2
00089c  1f010020  addli r2, zero, 4096
0008a0  b3900020  hfloat2float.rn r1, r1
0008a4  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
0008a8  e300cfee  loadli.w r1,  -2208(r30)
0008ac  b3900020  hfloat2float.rn r1, r1
0008b0  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
0008b4  e300dfee  loadli.w r1,  -2200(r30)
0008b8  7e0101e0  vmmov mr2, r2
0008bc  1f010040  addli r2, zero, 8192
0008c0  b3900020  hfloat2float.rn r1, r1
0008c4  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
0008c8  e300efee  loadli.w r1,  -2192(r30)
0008cc  7e0101e0  vmmov mr2, r2
0008d0  2b410000  lui r2, 4
0008d4  7e0001e0  vmmov mr0, r2
0008d8  2b810000  lui r2, 8
0008dc  b3900020  hfloat2float.rn r1, r1
0008e0  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
0008e4  e340ffee  loadli.w r1,  -2180(r30)
0008e8  b3900020  hfloat2float.rn r1, r1
0008ec  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0008f0  e3402fef  loadli.w r1,  -2156(r30)
0008f4  7e0001e0  vmmov mr0, r2
0008f8  b3900020  hfloat2float.rn r1, r1
0008fc  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000900  8e92a302  vmul.f.mz.rn vr5{mr1}, vr7, vr10
000904  86330400  vfp162float_l.rn vr7, vr8
000908  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
00090c  86730400  vfp162float_h.rn vr7, vr8
000910  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
000914  86130300  vfloat2fp16_l.rn vr7, vr6
000918  86d30200  vfloat2fp16_h.rn vr7, vr5
00091c  86b20300  vfp162float_l.rn vr5, vr7
000920  16115102  vadd.f.mz.rn vr2{mr1}, vr2, vr5
000924  86f20300  vfp162float_h.rn vr5, vr7
000928  96905002  vadd.f.mz.rn vr1{mr1}, vr1, vr5
00092c  46104b02  vstore_mask16.mz vr4{mr1}, 0(r22)
000930  46143b02  vstore_mask16.mz vr3{mr1}, 64(r22)
000934  46182b02  vstore_mask16.mz vr2{mr1}, 128(r22)
000938  461c1b02  vstore_mask16.mz vr1{mr1}, 192(r22)
00093c  00a00000  mfence { lm }
000940  bbd432fc  bneq r5, r3, -1740
000944  63013fee  loadli.w r2,  -2280(r30)
000948  9f00000e  addli r1, zero, 1792
00094c  93001104  setlt.u r1, r2, r1
000950  1f010102  addli r2, r2, 256
000954  3b9300fc  bneq r1, zero, -1852
000958  80330002  core_id r7
00095c  9f707000  addli r1, zero, 63
000960  bffe70fa  blt.s r1, r7, -2116
000964  9f008ff0  addli r1, r30, -1984
000968  9f120000  addli r5, zero, 1
00096c  2b0200f0  lui r4, 983040
000970  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000974  9f008fef  addli r1, r30, -2112
000978  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
00097c  9f000ff0  addli r1, r30, -2048
000980  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000984  9f000ff4  addli r1, r30, -1536
000988  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
00098c  9f008ff3  addli r1, r30, -1600
000990  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000994  9f008ff4  addli r1, r30, -1472
000998  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
00099c  9f000ff1  addli r1, r30, -1920
0009a0  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
0009a4  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
0009a8  9f000ff5  addli r1, r30, -1408
0009ac  16115102  vadd.f.mz.rn vr2{mr1}, vr2, vr5
0009b0  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0009b4  9f008ff1  addli r1, r30, -1856
0009b8  96906002  vadd.f.mz.rn vr1{mr1}, vr1, vr6
0009bc  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0009c0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0009c4  9f008ff5  addli r1, r30, -1344
0009c8  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
0009cc  9f000ff2  addli r1, r30, -1792
0009d0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0009d4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0009d8  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0009dc  9f000ff6  addli r1, r30, -1280
0009e0  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0009e4  9f008ff2  addli r1, r30, -1728
0009e8  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0009ec  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0009f0  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
0009f4  9f008ff6  addli r1, r30, -1216
0009f8  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
0009fc  9f000ff3  addli r1, r30, -1664
000a00  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a04  16115102  vadd.f.mz.rn vr2{mr1}, vr2, vr5
000a08  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000a0c  9f000ff7  addli r1, r30, -1152
000a10  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000a14  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000a18  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
000a1c  16915102  vadd.f.mz.rn vr2{mr1}, vr3, vr5
000a20  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000a24  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000a28  fa900040  vextracti.f r1, 0(vr1)
000a2c  7a911040  vextracti.f r2, 1(vr1)
000a30  8be02010  add.f.rn r1, r1, r2
000a34  7a912040  vextracti.f r2, 2(vr1)
000a38  8b601110  add.f.rn r1, r2, r1
000a3c  7a913040  vextracti.f r2, 3(vr1)
000a40  8b601110  add.f.rn r1, r2, r1
000a44  7a914040  vextracti.f r2, 4(vr1)
000a48  8b601110  add.f.rn r1, r2, r1
000a4c  7a915040  vextracti.f r2, 5(vr1)
000a50  8b601110  add.f.rn r1, r2, r1
000a54  7a916040  vextracti.f r2, 6(vr1)
000a58  8b601110  add.f.rn r1, r2, r1
000a5c  7a917040  vextracti.f r2, 7(vr1)
000a60  8b601110  add.f.rn r1, r2, r1
000a64  7a918040  vextracti.f r2, 8(vr1)
000a68  8b601110  add.f.rn r1, r2, r1
000a6c  7a919040  vextracti.f r2, 9(vr1)
000a70  8b601110  add.f.rn r1, r2, r1
000a74  7a91a040  vextracti.f r2, 10(vr1)
000a78  8b601110  add.f.rn r1, r2, r1
000a7c  7a91b040  vextracti.f r2, 11(vr1)
000a80  8b601110  add.f.rn r1, r2, r1
000a84  7a91c040  vextracti.f r2, 12(vr1)
000a88  8b601110  add.f.rn r1, r2, r1
000a8c  7a91d040  vextracti.f r2, 13(vr1)
000a90  8b601110  add.f.rn r1, r2, r1
000a94  7a91e040  vextracti.f r2, 14(vr1)
000a98  8b601110  add.f.rn r1, r2, r1
000a9c  7a91f040  vextracti.f r2, 15(vr1)
000aa0  8b601110  add.f.rn r1, r2, r1
000aa4  63010fee  loadli.w r2,  -2304(r30)
000aa8  33110128  sext_int2long r[3:4], r2
000aac  17315102  sll.d r[3:4], r[3:4], r5
000ab0  eb520f01  load.d r[6:7], 16(r30)
000ab4  b3a00000  float2hfloat.rn r1, r1
000ab8  73101ffc  store.h r1, -64(r30)
000abc  9f200000  addli r1, zero, 2
000ac0  0ba12210  add.ul r[3:4], r[6:7], r[3:4]
000ac4  00a00000  mfence { lm }
000ac8  97904000  or r1, r1, r4
000acc  1f028fff  addli r4, r30, -64
000ad0  ff304100  s_lm2gm r1, r4, 0(r[3:4])
000ad4  00a00000  mfence { lm }
000ad8  dbc8feff  j -2492
000adc  9f8e1e12  addli sp, sp, 2312
000ae0  00a00300  mfence { lm, sm, gm }
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
