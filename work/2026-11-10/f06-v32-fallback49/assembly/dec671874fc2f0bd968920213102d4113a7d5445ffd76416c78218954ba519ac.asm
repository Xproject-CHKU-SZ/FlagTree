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
0000dc  9f8e8eec  addli sp, sp, -2496
0000e0  1f8f0e13  addli r30, sp, 2432
0000e4  63414f00  loadli.w r2,  36(r30)
0000e8  e3004f00  loadli.w r1,  32(r30)
0000ec  e3015f00  loadli.w r3,  40(r30)
0000f0  8b101120  mul.s r1, r2, r1
0000f4  00510002  load_param_i r2, 0
0000f8  8b903020  mul.s r1, r1, r3
0000fc  9f010100  addli r3, r2, 0
000100  674c1fec  storeli.w r1, -2364(r30)
000104  cba73004  ble.s r1, r3, 2536
000108  80d00002  load_param_i r1, 1
00010c  6e300062  vxor.s.mz vr0{mr1}, vr0, vr0
000110  00320002  core_id r4
000114  1f048fef  addli r8, r30, -2112
000118  9f030008  addli r7, zero, 1024
00011c  1f038ff7  addli r6, r30, -1088
000120  9f048ffb  addli r9, r30, -576
000124  1f050004  addli r10, zero, 512
000128  9f150000  addli r11, zero, 1
00012c  eea5b562  vxor.u.mz vr11{mr1}, vr11, vr11
000130  670c1fec  storeli.w r1, -2368(r30)
000134  9f000fef  addli r1, r30, -2176
000138  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00013c  9f200000  addli r1, zero, 2
000140  fe8100e0  vmmov mr3, r1
000144  5b030000  j 24
000148  e3008fed  loadli.w r1,  -2368(r30)
00014c  8b911110  add.s r3, r3, r1
000150  e3408fed  loadli.w r1,  -2364(r30)
000154  3fa01100  blt.s r3, r1, 8
000158  db320100  j 2452
00015c  e3005f00  loadli.w r1,  40(r30)
000160  63414f00  loadli.w r2,  36(r30)
000164  8b901130  div.s r1, r3, r1
000168  8b902030  div.s r1, r1, r2
00016c  9bb06000  slli r1, r1, 6
000170  8b121210  add.s r5, r4, r1
000174  9f70f00f  addli r1, zero, 2047
000178  3fcf50fe  blt.s r1, r5, -48
00017c  9f000000  addli r1, zero, 0
000180  e70c3fec  storeli.w r3, -2360(r30)
000184  0b111410  add.s r2, r8, r1
000188  9f800002  addli r1, r1, 256
00018c  4610b102  vstore_mask16.mz vr11{mr1}, 0(r2)
000190  4614b102  vstore_mask16.mz vr11{mr1}, 64(r2)
000194  4618b102  vstore_mask16.mz vr11{mr1}, 128(r2)
000198  461cb102  vstore_mask16.mz vr11{mr1}, 192(r2)
00019c  00a00000  mfence { lm }
0001a0  bb9f70fe  bneq r1, r7, -28
0001a4  9bb0b200  slli r1, r5, 11
0001a8  1f060000  addli r12, zero, 0
0001ac  e74b5fec  storeli.w r5, -2372(r30)
0001b0  674d1fec  storeli.w r1, -2348(r30)
0001b4  9f008300  addli r1, r6, 64
0001b8  670d1fec  storeli.w r1, -2352(r30)
0001bc  9f808400  addli r1, r9, 64
0001c0  e74c1fec  storeli.w r1, -2356(r30)
0001c4  9f000000  addli r1, zero, 0
0001c8  0b111310  add.s r2, r6, r1
0001cc  9fc00000  addli r1, r1, 4
0001d0  73100100  store.h zero, 0(r2)
0001d4  73110100  store.h zero, 2(r2)
0001d8  00a00000  mfence { lm }
0001dc  bbbfa0fe  bneq r1, r10, -20
0001e0  e340afed  loadli.w r1,  -2348(r30)
0001e4  6b520f00  load.d r[5:6], 0(r30)
0001e8  ab0100f0  lui r3, 983040
0001ec  97113500  or r3, r10, r3
0001f0  8b101610  add.s r1, r12, r1
0001f4  b3900028  sext_int2long r[2:3], r1
0001f8  97b0b002  sll.d r[2:3], r[2:3], r11
0001fc  8b201210  add.ul r[2:3], r[5:6], r[2:3]
000200  ffa16000  l_gm2lm r3, r6, 0(r[2:3])
000204  9f000000  addli r1, zero, 0
000208  0b911410  add.s r2, r9, r1
00020c  9fc00000  addli r1, r1, 4
000210  73100100  store.h zero, 0(r2)
000214  73110100  store.h zero, 2(r2)
000218  00a00000  mfence { lm }
00021c  bbbfa0fe  bneq r1, r10, -20
000220  b3000628  zext_int2long r[2:3], r12
000224  6b538f00  load.d r[7:8], 8(r30)
000228  ab0100f0  lui r3, 983040
00022c  630dafed  loadli.w r26,  -2352(r30)
000230  9f020000  addli r5, zero, 0
000234  e70dcfec  storeli.w r12, -2344(r30)
000238  97b0b002  sll.d r[2:3], r[2:3], r11
00023c  97113500  or r3, r10, r3
000240  8b201310  add.ul r[2:3], r[7:8], r[2:3]
000244  63439fed  loadli.w r6,  -2356(r30)
000248  ffa19000  l_gm2lm r3, r9, 0(r[2:3])
00024c  8b1b5410  add.s r23, r8, r5
000250  1234b002  vadd.s.mz vr8{mr1}, zero, vr11
000254  9f820202  addli r5, r5, 256
000258  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
00025c  c2918b02  vload_mask16.mz vr3{mr1}, 64(r23)
000260  42920b03  vload_mask16.mz vr4{mr1}, 128(r23)
000264  c2928b03  vload_mask16.mz vr5{mr1}, 192(r23)
000268  00a00000  mfence { lm }
00026c  6b3123fc  load.hu r2, -62(r6)
000270  eb3003fc  load.hu r1, -64(r6)
000274  e74f2fec  storeli.w r2, -2308(r30)
000278  6b3143fc  load.hu r2, -60(r6)
00027c  b3900020  hfloat2float.rn r1, r1
000280  67402fee  storeli.w r2, -2300(r30)
000284  6b3163fc  load.hu r2, -58(r6)
000288  e7402fee  storeli.w r2, -2292(r30)
00028c  6b3183fc  load.hu r2, -56(r6)
000290  67412fee  storeli.w r2, -2284(r30)
000294  6b31a3fc  load.hu r2, -54(r6)
000298  e7412fee  storeli.w r2, -2276(r30)
00029c  6b31c3fc  load.hu r2, -52(r6)
0002a0  67422fee  storeli.w r2, -2268(r30)
0002a4  6b31e3fc  load.hu r2, -50(r6)
0002a8  e7022fee  storeli.w r2, -2264(r30)
0002ac  6b3103fd  load.hu r2, -48(r6)
0002b0  67032fee  storeli.w r2, -2256(r30)
0002b4  6b3123fd  load.hu r2, -46(r6)
0002b8  67432fee  storeli.w r2, -2252(r30)
0002bc  6b3143fd  load.hu r2, -44(r6)
0002c0  e7032fee  storeli.w r2, -2248(r30)
0002c4  6b3163fd  load.hu r2, -42(r6)
0002c8  e7432fee  storeli.w r2, -2244(r30)
0002cc  6b3183fd  load.hu r2, -40(r6)
0002d0  67442fee  storeli.w r2, -2236(r30)
0002d4  6b31a3fd  load.hu r2, -38(r6)
0002d8  e7042fee  storeli.w r2, -2232(r30)
0002dc  6b31c3fd  load.hu r2, -36(r6)
0002e0  e7442fee  storeli.w r2, -2228(r30)
0002e4  6b31e3fd  load.hu r2, -34(r6)
0002e8  67452fee  storeli.w r2, -2220(r30)
0002ec  6b3103fe  load.hu r2, -32(r6)
0002f0  67052fee  storeli.w r2, -2224(r30)
0002f4  6b3123fe  load.hu r2, -30(r6)
0002f8  e7052fee  storeli.w r2, -2216(r30)
0002fc  6b3143fe  load.hu r2, -28(r6)
000300  e7452fee  storeli.w r2, -2212(r30)
000304  6b3163fe  load.hu r2, -26(r6)
000308  67062fee  storeli.w r2, -2208(r30)
00030c  6b3183fe  load.hu r2, -24(r6)
000310  67462fee  storeli.w r2, -2204(r30)
000314  6b31a3fe  load.hu r2, -22(r6)
000318  e7062fee  storeli.w r2, -2200(r30)
00031c  6b31c3fe  load.hu r2, -20(r6)
000320  e7462fee  storeli.w r2, -2196(r30)
000324  6b31e3fe  load.hu r2, -18(r6)
000328  67072fee  storeli.w r2, -2192(r30)
00032c  6b3103ff  load.hu r2, -16(r6)
000330  67472fee  storeli.w r2, -2188(r30)
000334  6b3123ff  load.hu r2, -14(r6)
000338  e7072fee  storeli.w r2, -2184(r30)
00033c  6b3143ff  load.hu r2, -12(r6)
000340  e7472fee  storeli.w r2, -2180(r30)
000344  c2138de3  vload_mask16.mz vr7{mr1}, 1984(r26)
000348  6b312302  load.hu r2, 34(r6)
00034c  42130d02  vload_mask16.mz vr6{mr1}, 0(r26)
000350  eb3163ff  load.hu r3, -10(r6)
000354  6b3283ff  load.hu r4, -8(r6)
000358  eb33a3ff  load.hu r7, -6(r6)
00035c  6b34c3ff  load.hu r8, -4(r6)
000360  eb34e3ff  load.hu r9, -2(r6)
000364  6b350300  load.hu r10, 0(r6)
000368  eb352300  load.hu r11, 2(r6)
00036c  6b364300  load.hu r12, 4(r6)
000370  eb366300  load.hu r13, 6(r6)
000374  6b378300  load.hu r14, 8(r6)
000378  eb37a300  load.hu r15, 10(r6)
00037c  6b38c300  load.hu r16, 12(r6)
000380  eb38e300  load.hu r17, 14(r6)
000384  6b390301  load.hu r18, 16(r6)
000388  eb392301  load.hu r19, 18(r6)
00038c  6b3a4301  load.hu r20, 20(r6)
000390  eb3a6301  load.hu r21, 22(r6)
000394  6b3b8301  load.hu r22, 24(r6)
000398  6b3ca301  load.hu r24, 26(r6)
00039c  eb3cc301  load.hu r25, 28(r6)
0003a0  eb3de301  load.hu r27, 30(r6)
0003a4  6b3e0302  load.hu r28, 32(r6)
0003a8  86b00300  vfp162float_l.rn vr1, vr7
0003ac  1f0d0d01  addli r26, r26, 128
0003b0  e74d2fec  storeli.w r2, -2340(r30)
0003b4  6b314302  load.hu r2, 36(r6)
0003b8  670e2fec  storeli.w r2, -2336(r30)
0003bc  6b316302  load.hu r2, 38(r6)
0003c0  674e2fec  storeli.w r2, -2332(r30)
0003c4  6b318302  load.hu r2, 40(r6)
0003c8  e70e2fec  storeli.w r2, -2328(r30)
0003cc  6b31a302  load.hu r2, 42(r6)
0003d0  e74e2fec  storeli.w r2, -2324(r30)
0003d4  6b31c302  load.hu r2, 44(r6)
0003d8  670f2fec  storeli.w r2, -2320(r30)
0003dc  6b31e302  load.hu r2, 46(r6)
0003e0  674f2fec  storeli.w r2, -2316(r30)
0003e4  6b310303  load.hu r2, 48(r6)
0003e8  e70f2fec  storeli.w r2, -2312(r30)
0003ec  6b312303  load.hu r2, 50(r6)
0003f0  67002fee  storeli.w r2, -2304(r30)
0003f4  6b314303  load.hu r2, 52(r6)
0003f8  e7002fee  storeli.w r2, -2296(r30)
0003fc  6b316303  load.hu r2, 54(r6)
000400  67012fee  storeli.w r2, -2288(r30)
000404  6b318303  load.hu r2, 56(r6)
000408  e7012fee  storeli.w r2, -2280(r30)
00040c  6b31a303  load.hu r2, 58(r6)
000410  67022fee  storeli.w r2, -2272(r30)
000414  6b31c303  load.hu r2, 60(r6)
000418  e7422fee  storeli.w r2, -2260(r30)
00041c  6b31e303  load.hu r2, 62(r6)
000420  1f030301  addli r6, r6, 128
000424  67042fee  storeli.w r2, -2240(r30)
000428  1f110000  addli r2, zero, 1
00042c  7e0101e0  vmmov mr2, r2
000430  1f410000  addli r2, zero, 4
000434  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
000438  e340ffed  loadli.w r1,  -2308(r30)
00043c  7e0001e0  vmmov mr0, r2
000440  1f011000  addli r2, zero, 8
000444  b3900020  hfloat2float.rn r1, r1
000448  7e0101e0  vmmov mr2, r2
00044c  1f012000  addli r2, zero, 16
000450  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
000454  e3400fee  loadli.w r1,  -2300(r30)
000458  b3900020  hfloat2float.rn r1, r1
00045c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000460  e3401fee  loadli.w r1,  -2292(r30)
000464  b3900020  hfloat2float.rn r1, r1
000468  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
00046c  e3402fee  loadli.w r1,  -2284(r30)
000470  7e0101e0  vmmov mr2, r2
000474  1f014000  addli r2, zero, 32
000478  b3900020  hfloat2float.rn r1, r1
00047c  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
000480  e3403fee  loadli.w r1,  -2276(r30)
000484  7e0101e0  vmmov mr2, r2
000488  1f018000  addli r2, zero, 64
00048c  b3900020  hfloat2float.rn r1, r1
000490  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
000494  e3404fee  loadli.w r1,  -2268(r30)
000498  7e0101e0  vmmov mr2, r2
00049c  1f010001  addli r2, zero, 128
0004a0  b3900020  hfloat2float.rn r1, r1
0004a4  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0004a8  e3005fee  loadli.w r1,  -2264(r30)
0004ac  7e0101e0  vmmov mr2, r2
0004b0  1f010002  addli r2, zero, 256
0004b4  b3900020  hfloat2float.rn r1, r1
0004b8  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0004bc  e3006fee  loadli.w r1,  -2256(r30)
0004c0  7e0101e0  vmmov mr2, r2
0004c4  1f010004  addli r2, zero, 512
0004c8  b3900020  hfloat2float.rn r1, r1
0004cc  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0004d0  e3406fee  loadli.w r1,  -2252(r30)
0004d4  7e0101e0  vmmov mr2, r2
0004d8  1f010008  addli r2, zero, 1024
0004dc  b3900020  hfloat2float.rn r1, r1
0004e0  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0004e4  e3007fee  loadli.w r1,  -2248(r30)
0004e8  7e0101e0  vmmov mr2, r2
0004ec  1f010010  addli r2, zero, 2048
0004f0  b3900020  hfloat2float.rn r1, r1
0004f4  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0004f8  e3407fee  loadli.w r1,  -2244(r30)
0004fc  7e0101e0  vmmov mr2, r2
000500  1f010020  addli r2, zero, 4096
000504  b3900020  hfloat2float.rn r1, r1
000508  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
00050c  e3408fee  loadli.w r1,  -2236(r30)
000510  7e0101e0  vmmov mr2, r2
000514  1f010040  addli r2, zero, 8192
000518  2b800000  lui zero, 8
00051c  b3900020  hfloat2float.rn r1, r1
000520  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
000524  e3009fee  loadli.w r1,  -2232(r30)
000528  7e0101e0  vmmov mr2, r2
00052c  2b410000  lui r2, 4
000530  b3900020  hfloat2float.rn r1, r1
000534  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
000538  e3409fee  loadli.w r1,  -2228(r30)
00053c  7e0101e0  vmmov mr2, r2
000540  b3900020  hfloat2float.rn r1, r1
000544  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
000548  e340afee  loadli.w r1,  -2220(r30)
00054c  7e0100e0  vmmov mr2, zero
000550  17200000  xor zero, zero, zero
000554  6301afee  loadli.w r2,  -2224(r30)
000558  9234b002  vadd.s.mz vr9{mr1}, zero, vr11
00055c  1235b002  vadd.s.mz vr10{mr1}, zero, vr11
000560  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
000564  b3900020  hfloat2float.rn r1, r1
000568  33110120  hfloat2float.rn r2, r2
00056c  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
000570  9f100000  addli r1, zero, 1
000574  7e8100e0  vmmov mr2, r1
000578  ea249134  vor.u.mh vr9{mr2}, r2, vr9
00057c  e300bfee  loadli.w r1,  -2216(r30)
000580  1f011000  addli r2, zero, 8
000584  8e101402  vmul.f.mz.rn vr1{mr1}, vr8, vr1
000588  06f40300  vfp162float_h.rn vr8, vr7
00058c  7e0101e0  vmmov mr2, r2
000590  1f012000  addli r2, zero, 16
000594  b3900020  hfloat2float.rn r1, r1
000598  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
00059c  e340bfee  loadli.w r1,  -2212(r30)
0005a0  b3900020  hfloat2float.rn r1, r1
0005a4  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0005a8  e300cfee  loadli.w r1,  -2208(r30)
0005ac  b3900020  hfloat2float.rn r1, r1
0005b0  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
0005b4  e340cfee  loadli.w r1,  -2204(r30)
0005b8  7e0101e0  vmmov mr2, r2
0005bc  1f014000  addli r2, zero, 32
0005c0  b3900020  hfloat2float.rn r1, r1
0005c4  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
0005c8  e300dfee  loadli.w r1,  -2200(r30)
0005cc  7e0101e0  vmmov mr2, r2
0005d0  1f018000  addli r2, zero, 64
0005d4  b3900020  hfloat2float.rn r1, r1
0005d8  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
0005dc  e340dfee  loadli.w r1,  -2196(r30)
0005e0  7e0101e0  vmmov mr2, r2
0005e4  1f010001  addli r2, zero, 128
0005e8  b3900020  hfloat2float.rn r1, r1
0005ec  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
0005f0  e300efee  loadli.w r1,  -2192(r30)
0005f4  7e0101e0  vmmov mr2, r2
0005f8  1f010002  addli r2, zero, 256
0005fc  b3900020  hfloat2float.rn r1, r1
000600  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000604  e340efee  loadli.w r1,  -2188(r30)
000608  7e0101e0  vmmov mr2, r2
00060c  1f010004  addli r2, zero, 512
000610  b3900020  hfloat2float.rn r1, r1
000614  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000618  e300ffee  loadli.w r1,  -2184(r30)
00061c  7e0101e0  vmmov mr2, r2
000620  1f010008  addli r2, zero, 1024
000624  b3900020  hfloat2float.rn r1, r1
000628  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
00062c  e340ffee  loadli.w r1,  -2180(r30)
000630  7e0101e0  vmmov mr2, r2
000634  1f010010  addli r2, zero, 2048
000638  b3900020  hfloat2float.rn r1, r1
00063c  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000640  b3900120  hfloat2float.rn r1, r3
000644  7e0101e0  vmmov mr2, r2
000648  1f010020  addli r2, zero, 4096
00064c  ab810000  lui r3, 8
000650  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000654  b3100220  hfloat2float.rn r1, r4
000658  7e0101e0  vmmov mr2, r2
00065c  1f010040  addli r2, zero, 8192
000660  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000664  b3900320  hfloat2float.rn r1, r7
000668  7e0101e0  vmmov mr2, r2
00066c  2b410000  lui r2, 4
000670  9f030008  addli r7, zero, 1024
000674  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000678  b3100420  hfloat2float.rn r1, r8
00067c  7e0101e0  vmmov mr2, r2
000680  33110520  hfloat2float.rn r2, r10
000684  1f048fef  addli r8, r30, -2112
000688  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
00068c  b3900420  hfloat2float.rn r1, r9
000690  7e8101e0  vmmov mr2, r3
000694  ab810000  lui r3, 8
000698  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
00069c  9f100000  addli r1, zero, 1
0006a0  7e8100e0  vmmov mr2, r1
0006a4  b3900520  hfloat2float.rn r1, r11
0006a8  6a25a134  vor.u.mh vr10{mr2}, r2, vr10
0006ac  1f011000  addli r2, zero, 8
0006b0  8e938402  vmul.f.mz.rn vr7{mr1}, vr9, vr8
0006b4  06940000  vfloat2fp16_l.rn vr8, vr1
0006b8  06d40300  vfloat2fp16_h.rn vr8, vr7
0006bc  86300300  vfp162float_l.rn vr1, vr6
0006c0  86740400  vfp162float_h.rn vr9, vr8
0006c4  7e0101e0  vmmov mr2, r2
0006c8  1f012000  addli r2, zero, 16
0006cc  86730300  vfp162float_h.rn vr7, vr6
0006d0  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
0006d4  b3100620  hfloat2float.rn r1, r12
0006d8  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0006dc  b3900620  hfloat2float.rn r1, r13
0006e0  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
0006e4  b3100720  hfloat2float.rn r1, r14
0006e8  7e0101e0  vmmov mr2, r2
0006ec  1f014000  addli r2, zero, 32
0006f0  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
0006f4  b3900720  hfloat2float.rn r1, r15
0006f8  7e0101e0  vmmov mr2, r2
0006fc  1f018000  addli r2, zero, 64
000700  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
000704  b3100820  hfloat2float.rn r1, r16
000708  7e0101e0  vmmov mr2, r2
00070c  1f010001  addli r2, zero, 128
000710  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
000714  b3900820  hfloat2float.rn r1, r17
000718  7e0101e0  vmmov mr2, r2
00071c  1f010002  addli r2, zero, 256
000720  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
000724  b3100920  hfloat2float.rn r1, r18
000728  7e0101e0  vmmov mr2, r2
00072c  1f010004  addli r2, zero, 512
000730  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
000734  b3900920  hfloat2float.rn r1, r19
000738  7e0101e0  vmmov mr2, r2
00073c  1f010008  addli r2, zero, 1024
000740  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
000744  b3100a20  hfloat2float.rn r1, r20
000748  7e0101e0  vmmov mr2, r2
00074c  1f010010  addli r2, zero, 2048
000750  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
000754  b3900a20  hfloat2float.rn r1, r21
000758  7e0101e0  vmmov mr2, r2
00075c  1f010020  addli r2, zero, 4096
000760  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
000764  b3100b20  hfloat2float.rn r1, r22
000768  7e0101e0  vmmov mr2, r2
00076c  1f010040  addli r2, zero, 8192
000770  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
000774  b3100c20  hfloat2float.rn r1, r24
000778  7e0101e0  vmmov mr2, r2
00077c  2b410000  lui r2, 4
000780  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
000784  b3900c20  hfloat2float.rn r1, r25
000788  7e0101e0  vmmov mr2, r2
00078c  33110e20  hfloat2float.rn r2, r28
000790  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
000794  b3900d20  hfloat2float.rn r1, r27
000798  7e8101e0  vmmov mr2, r3
00079c  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
0007a0  9f100000  addli r1, zero, 1
0007a4  7e8100e0  vmmov mr2, r1
0007a8  ea25b134  vor.u.mh vr11{mr2}, r2, vr11
0007ac  e340bfed  loadli.w r1,  -2340(r30)
0007b0  1f011000  addli r2, zero, 8
0007b4  8e101502  vmul.f.mz.rn vr1{mr1}, vr10, vr1
0007b8  b3900020  hfloat2float.rn r1, r1
0007bc  eaa5b036  vor.u.mh vr11{mr3}, r1, vr11
0007c0  e300cfed  loadli.w r1,  -2336(r30)
0007c4  b3900020  hfloat2float.rn r1, r1
0007c8  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
0007cc  e340cfed  loadli.w r1,  -2332(r30)
0007d0  7e0001e0  vmmov mr0, r2
0007d4  1f012000  addli r2, zero, 16
0007d8  b3900020  hfloat2float.rn r1, r1
0007dc  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
0007e0  e300dfed  loadli.w r1,  -2328(r30)
0007e4  7e0001e0  vmmov mr0, r2
0007e8  1f014000  addli r2, zero, 32
0007ec  b3900020  hfloat2float.rn r1, r1
0007f0  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
0007f4  e340dfed  loadli.w r1,  -2324(r30)
0007f8  7e0001e0  vmmov mr0, r2
0007fc  1f018000  addli r2, zero, 64
000800  b3900020  hfloat2float.rn r1, r1
000804  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000808  e300efed  loadli.w r1,  -2320(r30)
00080c  7e0001e0  vmmov mr0, r2
000810  1f010001  addli r2, zero, 128
000814  b3900020  hfloat2float.rn r1, r1
000818  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
00081c  e340efed  loadli.w r1,  -2316(r30)
000820  7e0001e0  vmmov mr0, r2
000824  1f010002  addli r2, zero, 256
000828  b3900020  hfloat2float.rn r1, r1
00082c  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000830  e300ffed  loadli.w r1,  -2312(r30)
000834  7e0001e0  vmmov mr0, r2
000838  1f010004  addli r2, zero, 512
00083c  b3900020  hfloat2float.rn r1, r1
000840  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000844  e3000fee  loadli.w r1,  -2304(r30)
000848  7e0001e0  vmmov mr0, r2
00084c  1f010008  addli r2, zero, 1024
000850  b3900020  hfloat2float.rn r1, r1
000854  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000858  e3001fee  loadli.w r1,  -2296(r30)
00085c  7e0001e0  vmmov mr0, r2
000860  1f010010  addli r2, zero, 2048
000864  b3900020  hfloat2float.rn r1, r1
000868  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
00086c  e3002fee  loadli.w r1,  -2288(r30)
000870  7e0001e0  vmmov mr0, r2
000874  1f010020  addli r2, zero, 4096
000878  b3900020  hfloat2float.rn r1, r1
00087c  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000880  e3003fee  loadli.w r1,  -2280(r30)
000884  7e0001e0  vmmov mr0, r2
000888  1f010040  addli r2, zero, 8192
00088c  b3900020  hfloat2float.rn r1, r1
000890  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000894  e3004fee  loadli.w r1,  -2272(r30)
000898  7e0001e0  vmmov mr0, r2
00089c  2b410000  lui r2, 4
0008a0  b3900020  hfloat2float.rn r1, r1
0008a4  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
0008a8  e3405fee  loadli.w r1,  -2260(r30)
0008ac  7e0001e0  vmmov mr0, r2
0008b0  2b810000  lui r2, 8
0008b4  b3900020  hfloat2float.rn r1, r1
0008b8  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
0008bc  e3008fee  loadli.w r1,  -2240(r30)
0008c0  7e0001e0  vmmov mr0, r2
0008c4  2bf10000  lui r2, 15
0008c8  1f71f11f  addli r2, r2, 4095
0008cc  b3900020  hfloat2float.rn r1, r1
0008d0  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
0008d4  9f000fef  addli r1, r30, -2176
0008d8  7e0001e0  vmmov mr0, r2
0008dc  0e937502  vmul.f.mz.rn vr6{mr1}, vr11, vr7
0008e0  92350002  vadd.s.mz vr11{mr1}, zero, vr0
0008e4  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0008e8  86330400  vfp162float_l.rn vr7, vr8
0008ec  16949102  vadd.f.mz.rn vr8{mr1}, vr3, vr9
0008f0  86940000  vfloat2fp16_l.rn vr9, vr1
0008f4  86540300  vfloat2fp16_h.rn vr9, vr6
0008f8  86b00400  vfp162float_l.rn vr1, vr9
0008fc  96137102  vadd.f.mz.rn vr7{mr1}, vr2, vr7
000900  06f30400  vfp162float_h.rn vr6, vr9
000904  96101202  vadd.f.mz.rn vr1{mr1}, vr4, vr1
000908  16936202  vadd.f.mz.rn vr6{mr1}, vr5, vr6
00090c  6e117030  vor.f.mh vr2{mr0}, vr0, vr7
000910  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000914  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
000918  ee118030  vor.f.mh vr3{mr0}, vr0, vr8
00091c  6e121030  vor.f.mh vr4{mr0}, vr0, vr1
000920  ee126030  vor.f.mh vr5{mr0}, vr0, vr6
000924  46943b02  vstore_mask16.mz vr3{mr1}, 64(r23)
000928  46984b02  vstore_mask16.mz vr4{mr1}, 128(r23)
00092c  469c5b02  vstore_mask16.mz vr5{mr1}, 192(r23)
000930  00a00000  mfence { lm }
000934  3be472fc  bneq r5, r7, -1768
000938  6301bfed  loadli.w r2,  -2344(r30)
00093c  9f00000e  addli r1, zero, 1792
000940  1f038ff7  addli r6, r30, -1088
000944  9f048ffb  addli r9, r30, -576
000948  1f050004  addli r10, zero, 512
00094c  9f150000  addli r11, zero, 1
000950  93001104  setlt.u r1, r2, r1
000954  1f010102  addli r2, r2, 256
000958  1f060100  addli r12, r2, 0
00095c  bba100fc  bneq r1, zero, -1944
000960  e3019fed  loadli.w r3,  -2360(r30)
000964  e3427fed  loadli.w r5,  -2372(r30)
000968  00320002  core_id r4
00096c  9f707000  addli r1, zero, 63
000970  3fef40fa  blt.s r1, r4, -2088
000974  9f008ff0  addli r1, r30, -1984
000978  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00097c  9f008fef  addli r1, r30, -2112
000980  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000984  9f000ff0  addli r1, r30, -2048
000988  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
00098c  9f000ff4  addli r1, r30, -1536
000990  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000994  9f008ff3  addli r1, r30, -1600
000998  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
00099c  9f008ff4  addli r1, r30, -1472
0009a0  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
0009a4  9f000ff1  addli r1, r30, -1920
0009a8  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
0009ac  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
0009b0  9f000ff5  addli r1, r30, -1408
0009b4  16115102  vadd.f.mz.rn vr2{mr1}, vr2, vr5
0009b8  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0009bc  9f008ff1  addli r1, r30, -1856
0009c0  96906002  vadd.f.mz.rn vr1{mr1}, vr1, vr6
0009c4  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0009c8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0009cc  9f008ff5  addli r1, r30, -1344
0009d0  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
0009d4  9f000ff2  addli r1, r30, -1792
0009d8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0009dc  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0009e0  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0009e4  9f000ff6  addli r1, r30, -1280
0009e8  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0009ec  9f008ff2  addli r1, r30, -1728
0009f0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0009f4  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0009f8  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
0009fc  9f008ff6  addli r1, r30, -1216
000a00  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000a04  9f000ff3  addli r1, r30, -1664
000a08  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a0c  16115102  vadd.f.mz.rn vr2{mr1}, vr2, vr5
000a10  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000a14  9f000ff7  addli r1, r30, -1152
000a18  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000a1c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000a20  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
000a24  16915102  vadd.f.mz.rn vr2{mr1}, vr3, vr5
000a28  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000a2c  16912002  vadd.f.mz.rn vr2{mr1}, vr1, vr2
000a30  fa100140  vextracti.f r1, 0(vr2)
000a34  7a111140  vextracti.f r2, 1(vr2)
000a38  8be02010  add.f.rn r1, r1, r2
000a3c  7a112140  vextracti.f r2, 2(vr2)
000a40  8b601110  add.f.rn r1, r2, r1
000a44  7a113140  vextracti.f r2, 3(vr2)
000a48  8b601110  add.f.rn r1, r2, r1
000a4c  7a114140  vextracti.f r2, 4(vr2)
000a50  8b601110  add.f.rn r1, r2, r1
000a54  7a115140  vextracti.f r2, 5(vr2)
000a58  8b601110  add.f.rn r1, r2, r1
000a5c  7a116140  vextracti.f r2, 6(vr2)
000a60  8b601110  add.f.rn r1, r2, r1
000a64  7a117140  vextracti.f r2, 7(vr2)
000a68  8b601110  add.f.rn r1, r2, r1
000a6c  7a118140  vextracti.f r2, 8(vr2)
000a70  8b601110  add.f.rn r1, r2, r1
000a74  7a119140  vextracti.f r2, 9(vr2)
000a78  8b601110  add.f.rn r1, r2, r1
000a7c  7a11a140  vextracti.f r2, 10(vr2)
000a80  8b601110  add.f.rn r1, r2, r1
000a84  7a11b140  vextracti.f r2, 11(vr2)
000a88  8b601110  add.f.rn r1, r2, r1
000a8c  7a11c140  vextracti.f r2, 12(vr2)
000a90  8b601110  add.f.rn r1, r2, r1
000a94  7a11d140  vextracti.f r2, 13(vr2)
000a98  8b601110  add.f.rn r1, r2, r1
000a9c  7a11e140  vextracti.f r2, 14(vr2)
000aa0  8b601110  add.f.rn r1, r2, r1
000aa4  7a11f140  vextracti.f r2, 15(vr2)
000aa8  8b601110  add.f.rn r1, r2, r1
000aac  33910228  sext_int2long r[3:4], r5
000ab0  6b520f01  load.d r[5:6], 16(r30)
000ab4  1731b102  sll.d r[3:4], r[3:4], r11
000ab8  0b212210  add.ul r[3:4], r[5:6], r[3:4]
000abc  9f220000  addli r5, zero, 2
000ac0  00320002  core_id r4
000ac4  b3a00000  float2hfloat.rn r1, r1
000ac8  73101ffc  store.h r1, -64(r30)
000acc  ab0000f0  lui r1, 983040
000ad0  00a00000  mfence { lm }
000ad4  97901200  or r1, r5, r1
000ad8  9f028fff  addli r5, r30, -64
000adc  ff305100  s_lm2gm r1, r5, 0(r[3:4])
000ae0  e3019fed  loadli.w r3,  -2360(r30)
000ae4  00a00000  mfence { lm }
000ae8  5bccfeff  j -2464
000aec  9f0e0fed  addli sp, r30, -2432
000af0  9f8e0e13  addli sp, sp, 2432
000af4  00a00300  mfence { lm, sm, gm }
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
000d28  00100000  exit
000d2c  00100000  exit
000d30  00100000  exit
000d34  00100000  exit
000d38  00100000  exit
