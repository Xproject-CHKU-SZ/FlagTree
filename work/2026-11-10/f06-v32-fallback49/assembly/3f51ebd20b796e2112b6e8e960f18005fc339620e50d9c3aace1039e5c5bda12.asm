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
000078  9f493000  addli r19, zero, 28
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
0000dc  9f8e0eed  addli sp, sp, -2432
0000e0  1f8f8e12  addli r30, sp, 2368
0000e4  80520002  load_param_i r5, 0
0000e8  63412f00  loadli.w r2,  20(r30)
0000ec  e3002f00  loadli.w r1,  16(r30)
0000f0  e3013f00  loadli.w r3,  24(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  e74f1fec  storeli.w r1, -2308(r30)
000100  4b9b500e  ble.s r1, r5, 7876
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  ab710000  lui r3, 7
000110  9f060ff6  addli r13, r30, -1280
000114  9f070002  addli r15, zero, 256
000118  1f088ff8  addli r16, r30, -960
00011c  ab08803f  lui r17, 260096
000120  2b0980bf  lui r18, 784384
000124  1f040ff8  addli r8, r30, -1024
000128  9f0a8000  addli r21, zero, 64
00012c  9f0c8ff9  addli r25, r30, -832
000130  1f0d0ff9  addli r26, r30, -896
000134  9f0d8ffa  addli r27, r30, -704
000138  1f0e0ffa  addli r28, r30, -768
00013c  9f048ffd  addli r9, r30, -320
000140  1f050ffd  addli r10, r30, -384
000144  1f028ffe  addli r4, r30, -192
000148  1f070ffe  addli r14, r30, -256
00014c  9f058fff  addli r11, r30, -64
000150  1f060fff  addli r12, r30, -128
000154  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000158  9bb07000  slli r1, r1, 7
00015c  e70f2fec  storeli.w r2, -2312(r30)
000160  2bf1b53f  lui r2, 260959
000164  9b91f1ff  ori r3, r3, 4095
000168  674f1fec  storeli.w r1, -2316(r30)
00016c  ab00353f  lui r1, 258896
000170  1b1b310e  ori r22, r2, 227
000174  2b71823e  lui r2, 256039
000178  e74f3ff4  storeli.w r3, -1284(r30)
00017c  9b90304f  ori r1, r1, 1267
000180  1b1c6190  ori r24, r2, 2310
000184  674f6ff5  storeli.w r22, -1292(r30)
000188  670f1fec  storeli.w r1, -2320(r30)
00018c  abb0a73e  lui r1, 256635
000190  e74e8ff5  storeli.w r24, -1300(r30)
000194  1b9a50a0  ori r20, r1, 2565
000198  abd0873f  lui r1, 260221
00019c  9b9020c2  ori r1, r1, 3106
0001a0  e74e1fec  storeli.w r1, -2324(r30)
0001a4  ab00babf  lui r1, 785312
0001a8  9b99300e  ori r19, r1, 227
0001ac  aba091be  lui r1, 780570
0001b0  9b9be098  ori r23, r1, 2446
0001b4  9f000ff5  addli r1, r30, -1408
0001b8  e70f3ff5  storeli.w r19, -1288(r30)
0001bc  670f7ff5  storeli.w r23, -1296(r30)
0001c0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0001c4  5b280000  j 320
0001c8  7abb0040  vextracti.s r22, 0(vr1)
0001cc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0001d0  9f100000  addli r1, zero, 1
0001d4  7e8000e0  vmmov mr0, r1
0001d8  9f200000  addli r1, zero, 2
0001dc  ea201b30  vor.u.mh vr1{mr0}, r22, vr1
0001e0  7e8000e0  vmmov mr0, r1
0001e4  9f400000  addli r1, zero, 4
0001e8  ea201e30  vor.u.mh vr1{mr0}, r28, vr1
0001ec  7e8000e0  vmmov mr0, r1
0001f0  9f001000  addli r1, zero, 8
0001f4  1f0e0ffa  addli r28, r30, -768
0001f8  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
0001fc  7e8000e0  vmmov mr0, r1
000200  9f004000  addli r1, zero, 32
000204  ab0300f0  lui r7, 983040
000208  ea201330  vor.u.mh vr1{mr0}, r6, vr1
00020c  7e8000e0  vmmov mr0, r1
000210  9f008000  addli r1, zero, 64
000214  eaa01236  vor.u.mh vr1{mr3}, r5, vr1
000218  eb528f00  load.d r[6:7], 8(r30)
00021c  eaa01d30  vor.u.mh vr1{mr0}, r27, vr1
000220  7e8000e0  vmmov mr0, r1
000224  9f000001  addli r1, zero, 128
000228  9f0d8ffa  addli r27, r30, -704
00022c  ea201d30  vor.u.mh vr1{mr0}, r26, vr1
000230  7e8000e0  vmmov mr0, r1
000234  9f000002  addli r1, zero, 256
000238  1f0d0ff9  addli r26, r30, -896
00023c  eaa01930  vor.u.mh vr1{mr0}, r19, vr1
000240  7e8000e0  vmmov mr0, r1
000244  9f000004  addli r1, zero, 512
000248  ea201830  vor.u.mh vr1{mr0}, r16, vr1
00024c  7e8000e0  vmmov mr0, r1
000250  9f000008  addli r1, zero, 1024
000254  eaa01630  vor.u.mh vr1{mr0}, r13, vr1
000258  7e8000e0  vmmov mr0, r1
00025c  9f000010  addli r1, zero, 2048
000260  9f060ff6  addli r13, r30, -1280
000264  eaa01c30  vor.u.mh vr1{mr0}, r25, vr1
000268  7e8000e0  vmmov mr0, r1
00026c  9f000020  addli r1, zero, 4096
000270  9f0c8ff9  addli r25, r30, -832
000274  ea201c30  vor.u.mh vr1{mr0}, r24, vr1
000278  7e8000e0  vmmov mr0, r1
00027c  9f000040  addli r1, zero, 8192
000280  eaa01b30  vor.u.mh vr1{mr0}, r23, vr1
000284  7e8000e0  vmmov mr0, r1
000288  ab400000  lui r1, 4
00028c  ea201930  vor.u.mh vr1{mr0}, r18, vr1
000290  7e8000e0  vmmov mr0, r1
000294  ab800000  lui r1, 8
000298  2b0980bf  lui r18, 784384
00029c  eaa01730  vor.u.mh vr1{mr0}, r15, vr1
0002a0  7e8000e0  vmmov mr0, r1
0002a4  aba0aaaa  lui r1, 699050
0002a8  9fa05015  addli r1, r1, 2730
0002ac  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0002b0  eb570fa7  load.d r[16:17], -1424(r30)
0002b4  9f81c601  addli r3, r13, 224
0002b8  7e8000e0  vmmov mr0, r1
0002bc  8ba2f210  add.ul r[6:7], r[6:7], r[16:17]
0002c0  9f070002  addli r15, zero, 256
0002c4  1f088ff8  addli r16, r30, -960
0002c8  e2c21110  vscatter.mh vr1{mr0}, vr5{r3}
0002cc  97917700  or r3, r15, r7
0002d0  00a00000  mfence { lm }
0002d4  ffb1d200  s_lm2gm r3, r13, 0(r[6:7])
0002d8  e342fff4  loadli.w r5,  -1412(r30)
0002dc  e301ffed  loadli.w r3,  -2312(r30)
0002e0  00a00000  mfence { lm }
0002e4  e309fff5  loadli.w r19,  -1288(r30)
0002e8  634beff5  loadli.w r22,  -1292(r30)
0002ec  e30beff5  loadli.w r23,  -1296(r30)
0002f0  634cdff5  loadli.w r24,  -1300(r30)
0002f4  8b923210  add.s r5, r5, r3
0002f8  e341ffed  loadli.w r3,  -2308(r30)
0002fc  3fa03200  blt.s r5, r3, 8
000300  db980300  j 7364
000304  e3013f00  loadli.w r3,  24(r30)
000308  e7475ff4  storeli.w r5, -1412(r30)
00030c  9f130000  addli r7, zero, 1
000310  8b913230  div.s r3, r5, r3
000314  e3422f00  loadli.w r5,  20(r30)
000318  8b915130  div.s r3, r3, r5
00031c  e342efed  loadli.w r5,  -2316(r30)
000320  9bb1d100  slli r3, r3, 13
000324  8b915110  add.s r3, r3, r5
000328  b3920128  sext_int2long r[6:7], r3
00032c  ab0100f0  lui r3, 983040
000330  97b07202  sll.d r[2:3], r[6:7], r7
000334  eb520f00  load.d r[6:7], 0(r30)
000338  97913700  or r3, r15, r3
00033c  73381fa6  store.d r[2:3], -1424(r30)
000340  8ba21210  add.ul r[6:7], r[6:7], r[2:3]
000344  9f808600  addli r1, r13, 64
000348  e7431ff0  storeli.w r1, -1988(r30)
00034c  9f800601  addli r1, r13, 128
000350  ffa1d200  l_gm2lm r3, r13, 0(r[6:7])
000354  ab01003f  lui r3, 258048
000358  e74b1ff2  storeli.w r1, -1604(r30)
00035c  9f808601  addli r1, r13, 192
000360  e7461ff4  storeli.w r1, -1428(r30)
000364  9f000ff6  addli r1, r30, -1280
000368  00a00000  mfence { lm }
00036c  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000370  9f008ff6  addli r1, r30, -1216
000374  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000378  9f000ff7  addli r1, r30, -1152
00037c  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000380  9f008ff7  addli r1, r30, -1088
000384  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000388  e6416080  vmerge_l.hf vr3, vr0, vr6
00038c  e302efed  loadli.w r5,  -2320(r30)
000390  9f008fee  addli r1, r30, -2240
000394  664360a0  vmerge_h.hf vr6, vr0, vr6
000398  e6402080  vmerge_l.hf vr1, vr0, vr2
00039c  664120a0  vmerge_h.hf vr2, vr0, vr2
0003a0  e6424080  vmerge_l.hf vr5, vr0, vr4
0003a4  664540a0  vmerge_h.hf vr10, vr0, vr4
0003a8  e6438080  vmerge_l.hf vr7, vr0, vr8
0003ac  664280a0  vmerge_h.hf vr4, vr0, vr8
0003b0  0a943202  vmul.f.mz.rn vr8{mr1}, r5, vr3
0003b4  72118042  vlt.f.mz mr2{mr1}, zero, vr8
0003b8  0a901102  vmul.f.mz.rn vr0{mr1}, r3, vr1
0003bc  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003c0  9f008fef  addli r1, r30, -2112
0003c4  8a901202  vmul.f.mz.rn vr1{mr1}, r5, vr1
0003c8  7e000140  vmnot mr0, mr2
0003cc  8a948804  vmul.f.mz.rn vr9{mr2}, r17, vr8
0003d0  0a903102  vmul.f.mz.rn vr0{mr1}, r3, vr3
0003d4  8a917102  vmul.f.mz.rn vr3{mr1}, r3, vr7
0003d8  8a158900  vmul.f.mz.rn vr11{mr0}, r18, vr8
0003dc  0e148402  vmul.f.mz.rn vr8{mr1}, vr8, vr8
0003e0  7e0000a0  vmmov zero, mr0
0003e4  e70b0ff2  storeli.w zero, -1608(r30)
0003e8  17200000  xor zero, zero, zero
0003ec  9694b402  vadd.f.mz.rn vr9{mr1}, vr9, vr11
0003f0  8a952102  vmul.f.mz.rn vr11{mr1}, r3, vr2
0003f4  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
0003f8  9f000ff1  addli r1, r30, -1920
0003fc  46108802  vstore_mask16.mz vr8{mr1}, 0(r16)
000400  0a945102  vmul.f.mz.rn vr8{mr1}, r3, vr5
000404  8a957202  vmul.f.mz.rn vr11{mr1}, r5, vr7
000408  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
00040c  9f008ff2  addli r1, r30, -1728
000410  0a94a102  vmul.f.mz.rn vr8{mr1}, r3, vr10
000414  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
000418  9f000ff2  addli r1, r30, -1792
00041c  46109402  vstore_mask16.mz vr9{mr1}, 0(r8)
000420  8a942202  vmul.f.mz.rn vr9{mr1}, r5, vr2
000424  0a945202  vmul.f.mz.rn vr8{mr1}, r5, vr5
000428  0a91a202  vmul.f.mz.rn vr2{mr1}, r5, vr10
00042c  8a926202  vmul.f.mz.rn vr5{mr1}, r5, vr6
000430  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000434  9f000fee  addli r1, r30, -2304
000438  0a906102  vmul.f.mz.rn vr0{mr1}, r3, vr6
00043c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000440  9f008ff3  addli r1, r30, -1600
000444  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
000448  9f000ff4  addli r1, r30, -1536
00044c  8a914102  vmul.f.mz.rn vr3{mr1}, r3, vr4
000450  9f010000  addli r3, zero, 0
000454  0a924202  vmul.f.mz.rn vr4{mr1}, r5, vr4
000458  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
00045c  00a00000  mfence { lm }
000460  8b123410  add.s r5, r8, r3
000464  ab06803f  lui r13, 260096
000468  0b133810  add.s r6, r16, r3
00046c  9fc10100  addli r3, r3, 4
000470  e3830200  loadli.w r7,  0(r5)
000474  e3070300  loadli.w r15,  0(r6)
000478  8be64351  fmac.f.rn r13, r7, r20
00047c  8be30758  neg.f r7, r15
000480  8f830300  exp.f.rn r7, r7
000484  8f86d818  div.f.rn r13, r17, r13
000488  67007300  storeli.w r7, 0(r6)
00048c  6780d200  storeli.w r13, 0(r5)
000490  3bcf51ff  bneq r3, r21, -48
000494  00a00000  mfence { lm }
000498  72105042  vlt.f.mz mr0{mr1}, zero, vr5
00049c  42130402  vload_mask16.mz vr6{mr1}, 0(r8)
0004a0  6344dfed  loadli.w r8,  -2324(r30)
0004a4  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
0004a8  fe010040  vmnot mr3, mr0
0004ac  7e8001a0  vmmov zero, mr3
0004b0  674b0ff2  storeli.w zero, -1612(r30)
0004b4  17200000  xor zero, zero, zero
0004b8  63007ff3  loadli.w zero,  -1608(r30)
0004bc  8a136402  vmul.f.mz.rn vr7{mr1}, r8, vr6
0004c0  92937902  vadd.f.mz.rn vr7{mr1}, r19, vr7
0004c4  8e936302  vmul.f.mz.rn vr7{mr1}, vr7, vr6
0004c8  92137b02  vadd.f.mz.rn vr7{mr1}, r22, vr7
0004cc  8e936302  vmul.f.mz.rn vr7{mr1}, vr7, vr6
0004d0  92937b02  vadd.f.mz.rn vr7{mr1}, r23, vr7
0004d4  8e936302  vmul.f.mz.rn vr7{mr1}, vr7, vr6
0004d8  92137c02  vadd.f.mz.rn vr7{mr1}, r24, vr7
0004dc  0e936302  vmul.f.mz.rn vr6{mr1}, vr7, vr6
0004e0  8a935800  vmul.f.mz.rn vr7{mr0}, r17, vr5
0004e4  0e136502  vmul.f.mz.rn vr6{mr1}, vr10, vr6
0004e8  0a155906  vmul.f.mz.rn vr10{mr3}, r18, vr5
0004ec  8e925202  vmul.f.mz.rn vr5{mr1}, vr5, vr5
0004f0  1a936802  vsub.f.mz.rn vr6{mr1}, r17, vr6
0004f4  1695a302  vadd.f.mz.rn vr10{mr1}, vr7, vr10
0004f8  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
0004fc  8a916804  vmul.f.mz.rn vr3{mr2}, r17, vr6
000500  7e0100e0  vmmov mr2, zero
000504  17200000  xor zero, zero, zero
000508  4610ad02  vstore_mask16.mz vr10{mr1}, 0(r26)
00050c  0a136904  vmul.f.mz.rn vr6{mr2}, r18, vr6
000510  00a00000  mfence { lm }
000514  9f010000  addli r3, zero, 0
000518  96936102  vadd.f.mz.rn vr7{mr1}, vr3, vr6
00051c  8b123d10  add.s r5, r26, r3
000520  ab06803f  lui r13, 260096
000524  0b933c10  add.s r6, r25, r3
000528  9fc10100  addli r3, r3, 4
00052c  e3830200  loadli.w r7,  0(r5)
000530  e3070300  loadli.w r15,  0(r6)
000534  8be64351  fmac.f.rn r13, r7, r20
000538  8be30758  neg.f r7, r15
00053c  8f830300  exp.f.rn r7, r7
000540  8f86d818  div.f.rn r13, r17, r13
000544  67007300  storeli.w r7, 0(r6)
000548  6780d200  storeli.w r13, 0(r5)
00054c  3bcf51ff  bneq r3, r21, -48
000550  00a00000  mfence { lm }
000554  72111042  vlt.f.mz mr2{mr1}, zero, vr1
000558  9f020ff5  addli r5, r30, -1408
00055c  1f088ffb  addli r16, r30, -576
000560  9f008ffc  addli r1, r30, -448
000564  1f010ffc  addli r2, r30, -512
000568  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
00056c  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
000570  fe010140  vmnot mr3, mr2
000574  7e8001a0  vmmov zero, mr3
000578  e70b0ff2  storeli.w zero, -1608(r30)
00057c  17200000  xor zero, zero, zero
000580  63406ff3  loadli.w zero,  -1612(r30)
000584  8a123402  vmul.f.mz.rn vr5{mr1}, r8, vr3
000588  92925902  vadd.f.mz.rn vr5{mr1}, r19, vr5
00058c  8e923202  vmul.f.mz.rn vr5{mr1}, vr5, vr3
000590  92125b02  vadd.f.mz.rn vr5{mr1}, r22, vr5
000594  8e923202  vmul.f.mz.rn vr5{mr1}, vr5, vr3
000598  92925b02  vadd.f.mz.rn vr5{mr1}, r23, vr5
00059c  8e923202  vmul.f.mz.rn vr5{mr1}, vr5, vr3
0005a0  92125c02  vadd.f.mz.rn vr5{mr1}, r24, vr5
0005a4  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0005a8  8a921804  vmul.f.mz.rn vr5{mr2}, r17, vr1
0005ac  8e113302  vmul.f.mz.rn vr3{mr1}, vr6, vr3
0005b0  0a131906  vmul.f.mz.rn vr6{mr3}, r18, vr1
0005b4  8e901002  vmul.f.mz.rn vr1{mr1}, vr1, vr1
0005b8  9a913802  vsub.f.mz.rn vr3{mr1}, r17, vr3
0005bc  16936202  vadd.f.mz.rn vr6{mr1}, vr5, vr6
0005c0  46901d02  vstore_mask16.mz vr1{mr1}, 0(r27)
0005c4  0a953800  vmul.f.mz.rn vr10{mr0}, r17, vr3
0005c8  7e0000e0  vmmov mr0, zero
0005cc  46106e02  vstore_mask16.mz vr6{mr1}, 0(r28)
0005d0  17200000  xor zero, zero, zero
0005d4  8a113900  vmul.f.mz.rn vr3{mr0}, r18, vr3
0005d8  00a00000  mfence { lm }
0005dc  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
0005e0  9f010000  addli r3, zero, 0
0005e4  96123502  vadd.f.mz.rn vr5{mr1}, vr10, vr3
0005e8  8b123e10  add.s r5, r28, r3
0005ec  ab06803f  lui r13, 260096
0005f0  0b933d10  add.s r6, r27, r3
0005f4  9fc10100  addli r3, r3, 4
0005f8  e3830200  loadli.w r7,  0(r5)
0005fc  e3070300  loadli.w r15,  0(r6)
000600  8be64351  fmac.f.rn r13, r7, r20
000604  8be30758  neg.f r7, r15
000608  8f830300  exp.f.rn r7, r7
00060c  8f86d818  div.f.rn r13, r17, r13
000610  67007300  storeli.w r7, 0(r6)
000614  6780d200  storeli.w r13, 0(r5)
000618  3bcf51ff  bneq r3, r21, -48
00061c  00a00000  mfence { lm }
000620  72109042  vlt.f.mz mr0{mr1}, zero, vr9
000624  9f0c0ffb  addli r25, r30, -640
000628  c2100e02  vload_mask16.mz vr1{mr1}, 0(r28)
00062c  42930d02  vload_mask16.mz vr6{mr1}, 0(r27)
000630  fe010040  vmnot mr3, mr0
000634  7e8001a0  vmmov zero, mr3
000638  674b0ff2  storeli.w zero, -1612(r30)
00063c  17200000  xor zero, zero, zero
000640  63007ff3  loadli.w zero,  -1608(r30)
000644  8a111402  vmul.f.mz.rn vr3{mr1}, r8, vr1
000648  92913902  vadd.f.mz.rn vr3{mr1}, r19, vr3
00064c  8e911102  vmul.f.mz.rn vr3{mr1}, vr3, vr1
000650  92113b02  vadd.f.mz.rn vr3{mr1}, r22, vr3
000654  8e911102  vmul.f.mz.rn vr3{mr1}, vr3, vr1
000658  92913b02  vadd.f.mz.rn vr3{mr1}, r23, vr3
00065c  8e911102  vmul.f.mz.rn vr3{mr1}, vr3, vr1
000660  92113c02  vadd.f.mz.rn vr3{mr1}, r24, vr3
000664  8e901102  vmul.f.mz.rn vr1{mr1}, vr3, vr1
000668  8a919800  vmul.f.mz.rn vr3{mr0}, r17, vr9
00066c  8e101302  vmul.f.mz.rn vr1{mr1}, vr6, vr1
000670  0a139906  vmul.f.mz.rn vr6{mr3}, r18, vr9
000674  8e949402  vmul.f.mz.rn vr9{mr1}, vr9, vr9
000678  9a901802  vsub.f.mz.rn vr1{mr1}, r17, vr1
00067c  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
000680  46109802  vstore_mask16.mz vr9{mr1}, 0(r16)
000684  0a951804  vmul.f.mz.rn vr10{mr2}, r17, vr1
000688  7e0100e0  vmmov mr2, zero
00068c  17200000  xor zero, zero, zero
000690  46903c02  vstore_mask16.mz vr3{mr1}, 0(r25)
000694  8a101904  vmul.f.mz.rn vr1{mr2}, r18, vr1
000698  00a00000  mfence { lm }
00069c  9f010000  addli r3, zero, 0
0006a0  16131502  vadd.f.mz.rn vr6{mr1}, vr10, vr1
0006a4  8b923c10  add.s r5, r25, r3
0006a8  ab06803f  lui r13, 260096
0006ac  0b133810  add.s r6, r16, r3
0006b0  9fc10100  addli r3, r3, 4
0006b4  e3830200  loadli.w r7,  0(r5)
0006b8  e3070300  loadli.w r15,  0(r6)
0006bc  8be64351  fmac.f.rn r13, r7, r20
0006c0  8be30758  neg.f r7, r15
0006c4  8f830300  exp.f.rn r7, r7
0006c8  8f86d818  div.f.rn r13, r17, r13
0006cc  67007300  storeli.w r7, 0(r6)
0006d0  6780d200  storeli.w r13, 0(r5)
0006d4  3bcf51ff  bneq r3, r21, -48
0006d8  00a00000  mfence { lm }
0006dc  72118042  vlt.f.mz mr2{mr1}, zero, vr8
0006e0  c2900c02  vload_mask16.mz vr1{mr1}, 0(r25)
0006e4  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
0006e8  fe010140  vmnot mr3, mr2
0006ec  7e8001a0  vmmov zero, mr3
0006f0  e70b0ff2  storeli.w zero, -1608(r30)
0006f4  17200000  xor zero, zero, zero
0006f8  63406ff3  loadli.w zero,  -1612(r30)
0006fc  8a111402  vmul.f.mz.rn vr3{mr1}, r8, vr1
000700  92913902  vadd.f.mz.rn vr3{mr1}, r19, vr3
000704  8e911102  vmul.f.mz.rn vr3{mr1}, vr3, vr1
000708  92113b02  vadd.f.mz.rn vr3{mr1}, r22, vr3
00070c  8e911102  vmul.f.mz.rn vr3{mr1}, vr3, vr1
000710  92913b02  vadd.f.mz.rn vr3{mr1}, r23, vr3
000714  8e911102  vmul.f.mz.rn vr3{mr1}, vr3, vr1
000718  92113c02  vadd.f.mz.rn vr3{mr1}, r24, vr3
00071c  8e901102  vmul.f.mz.rn vr1{mr1}, vr3, vr1
000720  8a918804  vmul.f.mz.rn vr3{mr2}, r17, vr8
000724  8e901402  vmul.f.mz.rn vr1{mr1}, vr9, vr1
000728  8a148906  vmul.f.mz.rn vr9{mr3}, r18, vr8
00072c  0e148402  vmul.f.mz.rn vr8{mr1}, vr8, vr8
000730  9a901802  vsub.f.mz.rn vr1{mr1}, r17, vr1
000734  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000738  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
00073c  0a951800  vmul.f.mz.rn vr10{mr0}, r17, vr1
000740  7e0000e0  vmmov mr0, zero
000744  17200000  xor zero, zero, zero
000748  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
00074c  8a101900  vmul.f.mz.rn vr1{mr0}, r18, vr1
000750  00a00000  mfence { lm }
000754  9f010000  addli r3, zero, 0
000758  96141502  vadd.f.mz.rn vr9{mr1}, vr10, vr1
00075c  8b123110  add.s r5, r2, r3
000760  ab06803f  lui r13, 260096
000764  0b933010  add.s r6, r1, r3
000768  9fc10100  addli r3, r3, 4
00076c  e3830200  loadli.w r7,  0(r5)
000770  e3070300  loadli.w r15,  0(r6)
000774  8be64351  fmac.f.rn r13, r7, r20
000778  8be30758  neg.f r7, r15
00077c  8f830300  exp.f.rn r7, r7
000780  8f86d818  div.f.rn r13, r17, r13
000784  67007300  storeli.w r7, 0(r6)
000788  6780d200  storeli.w r13, 0(r5)
00078c  3bcf51ff  bneq r3, r21, -48
000790  00a00000  mfence { lm }
000794  72102042  vlt.f.mz mr0{mr1}, zero, vr2
000798  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
00079c  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0007a0  fe010040  vmnot mr3, mr0
0007a4  9f000fef  addli r1, r30, -2176
0007a8  7e8001a0  vmmov zero, mr3
0007ac  674b0ff2  storeli.w zero, -1612(r30)
0007b0  17200000  xor zero, zero, zero
0007b4  63007ff3  loadli.w zero,  -1608(r30)
0007b8  8a111402  vmul.f.mz.rn vr3{mr1}, r8, vr1
0007bc  92913902  vadd.f.mz.rn vr3{mr1}, r19, vr3
0007c0  8e911102  vmul.f.mz.rn vr3{mr1}, vr3, vr1
0007c4  92113b02  vadd.f.mz.rn vr3{mr1}, r22, vr3
0007c8  8e911102  vmul.f.mz.rn vr3{mr1}, vr3, vr1
0007cc  92913b02  vadd.f.mz.rn vr3{mr1}, r23, vr3
0007d0  8e911102  vmul.f.mz.rn vr3{mr1}, vr3, vr1
0007d4  92113c02  vadd.f.mz.rn vr3{mr1}, r24, vr3
0007d8  8e901102  vmul.f.mz.rn vr1{mr1}, vr3, vr1
0007dc  8a912800  vmul.f.mz.rn vr3{mr0}, r17, vr2
0007e0  8e101402  vmul.f.mz.rn vr1{mr1}, vr8, vr1
0007e4  0a142906  vmul.f.mz.rn vr8{mr3}, r18, vr2
0007e8  0e112102  vmul.f.mz.rn vr2{mr1}, vr2, vr2
0007ec  9a901802  vsub.f.mz.rn vr1{mr1}, r17, vr1
0007f0  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
0007f4  46902402  vstore_mask16.mz vr2{mr1}, 0(r9)
0007f8  0a951804  vmul.f.mz.rn vr10{mr2}, r17, vr1
0007fc  7e0100e0  vmmov mr2, zero
000800  17200000  xor zero, zero, zero
000804  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
000808  8a101904  vmul.f.mz.rn vr1{mr2}, r18, vr1
00080c  9f010000  addli r3, zero, 0
000810  96101502  vadd.f.mz.rn vr1{mr1}, vr10, vr1
000814  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000818  00a00000  mfence { lm }
00081c  8b123510  add.s r5, r10, r3
000820  ab06803f  lui r13, 260096
000824  0b933410  add.s r6, r9, r3
000828  9fc10100  addli r3, r3, 4
00082c  e3830200  loadli.w r7,  0(r5)
000830  e3070300  loadli.w r15,  0(r6)
000834  8be64351  fmac.f.rn r13, r7, r20
000838  8be30758  neg.f r7, r15
00083c  8f830300  exp.f.rn r7, r7
000840  8f86d818  div.f.rn r13, r17, r13
000844  67007300  storeli.w r7, 0(r6)
000848  6780d200  storeli.w r13, 0(r5)
00084c  3bcf51ff  bneq r3, r21, -48
000850  00a00000  mfence { lm }
000854  f211b042  vlt.f.mz mr3{mr1}, zero, vr11
000858  0e95b502  vmul.f.mz.rn vr10{mr1}, vr11, vr11
00085c  9f008ff0  addli r1, r30, -1984
000860  c2100502  vload_mask16.mz vr1{mr1}, 0(r10)
000864  c2910402  vload_mask16.mz vr3{mr1}, 0(r9)
000868  63406ff3  loadli.w zero,  -1612(r30)
00086c  7e810140  vmnot mr2, mr3
000870  4610a202  vstore_mask16.mz vr10{mr1}, 0(r4)
000874  0a111402  vmul.f.mz.rn vr2{mr1}, r8, vr1
000878  12912902  vadd.f.mz.rn vr2{mr1}, r19, vr2
00087c  0e111102  vmul.f.mz.rn vr2{mr1}, vr2, vr1
000880  12112b02  vadd.f.mz.rn vr2{mr1}, r22, vr2
000884  0e111102  vmul.f.mz.rn vr2{mr1}, vr2, vr1
000888  12912b02  vadd.f.mz.rn vr2{mr1}, r23, vr2
00088c  0e111102  vmul.f.mz.rn vr2{mr1}, vr2, vr1
000890  12112c02  vadd.f.mz.rn vr2{mr1}, r24, vr2
000894  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
000898  0a91b806  vmul.f.mz.rn vr2{mr3}, r17, vr11
00089c  8e901102  vmul.f.mz.rn vr1{mr1}, vr3, vr1
0008a0  8a11b904  vmul.f.mz.rn vr3{mr2}, r18, vr11
0008a4  9a901802  vsub.f.mz.rn vr1{mr1}, r17, vr1
0008a8  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0008ac  0a941800  vmul.f.mz.rn vr8{mr0}, r17, vr1
0008b0  7e0000e0  vmmov mr0, zero
0008b4  17200000  xor zero, zero, zero
0008b8  46102702  vstore_mask16.mz vr2{mr1}, 0(r14)
0008bc  8a101900  vmul.f.mz.rn vr1{mr0}, r18, vr1
0008c0  9f010000  addli r3, zero, 0
0008c4  96101402  vadd.f.mz.rn vr1{mr1}, vr8, vr1
0008c8  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0008cc  00a00000  mfence { lm }
0008d0  8b123710  add.s r5, r14, r3
0008d4  ab06803f  lui r13, 260096
0008d8  0b133210  add.s r6, r4, r3
0008dc  9fc10100  addli r3, r3, 4
0008e0  e3830200  loadli.w r7,  0(r5)
0008e4  e3070300  loadli.w r15,  0(r6)
0008e8  8be64351  fmac.f.rn r13, r7, r20
0008ec  8be30758  neg.f r7, r15
0008f0  8f830300  exp.f.rn r7, r7
0008f4  8f86d818  div.f.rn r13, r17, r13
0008f8  67007300  storeli.w r7, 0(r6)
0008fc  6780d200  storeli.w r13, 0(r5)
000900  3bcf51ff  bneq r3, r21, -48
000904  00a00000  mfence { lm }
000908  72104042  vlt.f.mz mr0{mr1}, zero, vr4
00090c  9f008ff1  addli r1, r30, -1856
000910  c2100702  vload_mask16.mz vr1{mr1}, 0(r14)
000914  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
000918  7e0000a0  vmmov zero, mr0
00091c  e70b0ff2  storeli.w zero, -1608(r30)
000920  17200000  xor zero, zero, zero
000924  0a111402  vmul.f.mz.rn vr2{mr1}, r8, vr1
000928  12912902  vadd.f.mz.rn vr2{mr1}, r19, vr2
00092c  0e111102  vmul.f.mz.rn vr2{mr1}, vr2, vr1
000930  12112b02  vadd.f.mz.rn vr2{mr1}, r22, vr2
000934  0e111102  vmul.f.mz.rn vr2{mr1}, vr2, vr1
000938  12912b02  vadd.f.mz.rn vr2{mr1}, r23, vr2
00093c  0e111102  vmul.f.mz.rn vr2{mr1}, vr2, vr1
000940  12112c02  vadd.f.mz.rn vr2{mr1}, r24, vr2
000944  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
000948  0a914800  vmul.f.mz.rn vr2{mr0}, r17, vr4
00094c  7e000040  vmnot mr0, mr0
000950  7e0000a0  vmmov zero, mr0
000954  674b0ff2  storeli.w zero, -1612(r30)
000958  17200000  xor zero, zero, zero
00095c  8e901102  vmul.f.mz.rn vr1{mr1}, vr3, vr1
000960  8a114900  vmul.f.mz.rn vr3{mr0}, r18, vr4
000964  0e124202  vmul.f.mz.rn vr4{mr1}, vr4, vr4
000968  9f010000  addli r3, zero, 0
00096c  9a901802  vsub.f.mz.rn vr1{mr1}, r17, vr1
000970  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000974  46904502  vstore_mask16.mz vr4{mr1}, 0(r11)
000978  0a941806  vmul.f.mz.rn vr8{mr3}, r17, vr1
00097c  8a101904  vmul.f.mz.rn vr1{mr2}, r18, vr1
000980  46102602  vstore_mask16.mz vr2{mr1}, 0(r12)
000984  96101402  vadd.f.mz.rn vr1{mr1}, vr8, vr1
000988  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00098c  00a00000  mfence { lm }
000990  8b123610  add.s r5, r12, r3
000994  ab06803f  lui r13, 260096
000998  0b933510  add.s r6, r11, r3
00099c  9fc10100  addli r3, r3, 4
0009a0  e3830200  loadli.w r7,  0(r5)
0009a4  e3070300  loadli.w r15,  0(r6)
0009a8  8be64351  fmac.f.rn r13, r7, r20
0009ac  8be30758  neg.f r7, r15
0009b0  8f830300  exp.f.rn r7, r7
0009b4  8f86d818  div.f.rn r13, r17, r13
0009b8  67007300  storeli.w r7, 0(r6)
0009bc  6780d200  storeli.w r13, 0(r5)
0009c0  3bcf51ff  bneq r3, r21, -48
0009c4  9f000ff2  addli r1, r30, -1792
0009c8  00a00000  mfence { lm }
0009cc  9f012000  addli r3, zero, 16
0009d0  92907802  vadd.f.mz.rn vr1{mr1}, r17, vr7
0009d4  e342fff5  loadli.w r5,  -1284(r30)
0009d8  c2130602  vload_mask16.mz vr7{mr1}, 0(r12)
0009dc  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
0009e0  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0009e4  6aa20122  vor.u.mz vr4{mr1}, r3, vr0
0009e8  ab01807f  lui r3, 522240
0009ec  eaa10122  vor.u.mz vr3{mr1}, r3, vr0
0009f0  9f110000  addli r3, zero, 1
0009f4  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
0009f8  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
0009fc  6e3112c2  vsrl.s.mz vr2{mr1}, vr4, vr1
000a00  669400c0  vabs.f vr8, vr1
000a04  6ab12102  vand.s.mz vr2{mr1}, r3, vr2
000a08  76a18142  vlt.u.mz mr2{mr1}, vr3, vr8
000a0c  7e0b01a0  vmmov r22, mr2
000a10  9b41fb00  srli r3, r22, 15
000a14  16b12002  vadd.s.mz vr2{mr1}, vr1, vr2
000a18  9b811100  andi r3, r3, 1
000a1c  92b52202  vadd.s.mz vr11{mr1}, r5, vr2
000a20  ab024000  lui r5, 1024
000a24  eab01222  vor.s.mz vr1{mr1}, r5, vr1
000a28  3bb00100  bneq r3, zero, 12
000a2c  fab7f540  vextracti.s r15, 15(vr11)
000a30  5b010000  j 8
000a34  fab7f040  vextracti.s r15, 15(vr1)
000a38  9b41eb00  srli r3, r22, 14
000a3c  9b811100  andi r3, r3, 1
000a40  3bb00100  bneq r3, zero, 12
000a44  fab1e540  vextracti.s r3, 14(vr11)
000a48  5b010000  j 8
000a4c  fab1e040  vextracti.s r3, 14(vr1)
000a50  9b42db00  srli r5, r22, 13
000a54  9b821200  andi r5, r5, 1
000a58  3bb00200  bneq r5, zero, 12
000a5c  7ab9d540  vextracti.s r18, 13(vr11)
000a60  5b010000  j 8
000a64  7ab9d040  vextracti.s r18, 13(vr1)
000a68  9b42cb00  srli r5, r22, 12
000a6c  9b821200  andi r5, r5, 1
000a70  3bb00200  bneq r5, zero, 12
000a74  fabbc540  vextracti.s r23, 12(vr11)
000a78  5b010000  j 8
000a7c  fabbc040  vextracti.s r23, 12(vr1)
000a80  9b42bb00  srli r5, r22, 11
000a84  9b821200  andi r5, r5, 1
000a88  3bb00200  bneq r5, zero, 12
000a8c  7abcb540  vextracti.s r24, 11(vr11)
000a90  5b010000  j 8
000a94  7abcb040  vextracti.s r24, 11(vr1)
000a98  9b42ab00  srli r5, r22, 10
000a9c  9b821200  andi r5, r5, 1
000aa0  3bb00200  bneq r5, zero, 12
000aa4  fabca540  vextracti.s r25, 10(vr11)
000aa8  5b010000  j 8
000aac  fabca040  vextracti.s r25, 10(vr1)
000ab0  9b429b00  srli r5, r22, 9
000ab4  9b821200  andi r5, r5, 1
000ab8  3bb00200  bneq r5, zero, 12
000abc  7abd9540  vextracti.s r26, 9(vr11)
000ac0  5b010000  j 8
000ac4  7abd9040  vextracti.s r26, 9(vr1)
000ac8  9b428b00  srli r5, r22, 8
000acc  9b821200  andi r5, r5, 1
000ad0  3bb00200  bneq r5, zero, 12
000ad4  fab68540  vextracti.s r13, 8(vr11)
000ad8  5b010000  j 8
000adc  fab68040  vextracti.s r13, 8(vr1)
000ae0  9b427b00  srli r5, r22, 7
000ae4  9b821200  andi r5, r5, 1
000ae8  3bb00200  bneq r5, zero, 12
000aec  7ab87540  vextracti.s r16, 7(vr11)
000af0  5b010000  j 8
000af4  7ab87040  vextracti.s r16, 7(vr1)
000af8  9b426b00  srli r5, r22, 6
000afc  9b821200  andi r5, r5, 1
000b00  3bb00200  bneq r5, zero, 12
000b04  fab96540  vextracti.s r19, 6(vr11)
000b08  5b010000  j 8
000b0c  fab96040  vextracti.s r19, 6(vr1)
000b10  9b425b00  srli r5, r22, 5
000b14  9b821200  andi r5, r5, 1
000b18  3bb00200  bneq r5, zero, 12
000b1c  fabd5540  vextracti.s r27, 5(vr11)
000b20  5b010000  j 8
000b24  fabd5040  vextracti.s r27, 5(vr1)
000b28  9b424b00  srli r5, r22, 4
000b2c  9b821200  andi r5, r5, 1
000b30  3bb00200  bneq r5, zero, 12
000b34  7abe4540  vextracti.s r28, 4(vr11)
000b38  5b010000  j 8
000b3c  7abe4040  vextracti.s r28, 4(vr1)
000b40  9b423b00  srli r5, r22, 3
000b44  9b821200  andi r5, r5, 1
000b48  3bb00200  bneq r5, zero, 12
000b4c  fab23540  vextracti.s r5, 3(vr11)
000b50  5b010000  j 8
000b54  fab23040  vextracti.s r5, 3(vr1)
000b58  1b432b00  srli r6, r22, 2
000b5c  1b031300  andi r6, r6, 1
000b60  3b300300  bneq r6, zero, 12
000b64  7ab32540  vextracti.s r6, 2(vr11)
000b68  5b010000  j 8
000b6c  7ab32040  vextracti.s r6, 2(vr1)
000b70  9b431b00  srli r7, r22, 1
000b74  9b831300  andi r7, r7, 1
000b78  3bb00300  bneq r7, zero, 12
000b7c  fab31540  vextracti.s r7, 1(vr11)
000b80  5b010000  j 8
000b84  fab31040  vextracti.s r7, 1(vr1)
000b88  1b0b1b00  andi r22, r22, 1
000b8c  12915802  vadd.f.mz.rn vr2{mr1}, r17, vr5
000b90  3b300b00  bneq r22, zero, 12
000b94  7abb0540  vextracti.s r22, 0(vr11)
000b98  5b010000  j 8
000b9c  7abb0040  vextracti.s r22, 0(vr1)
000ba0  92350002  vadd.s.mz vr11{mr1}, zero, vr0
000ba4  9f100000  addli r1, zero, 1
000ba8  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000bac  7e8000e0  vmmov mr0, r1
000bb0  9f200000  addli r1, zero, 2
000bb4  ea25bb30  vor.u.mh vr11{mr0}, r22, vr11
000bb8  7e8100e0  vmmov mr2, r1
000bbc  9f400000  addli r1, zero, 4
000bc0  7e8000e0  vmmov mr0, r1
000bc4  9f001000  addli r1, zero, 8
000bc8  eaa5b334  vor.u.mh vr11{mr2}, r7, vr11
000bcc  fe8100e0  vmmov mr3, r1
000bd0  9f002000  addli r1, zero, 16
000bd4  ea25b330  vor.u.mh vr11{mr0}, r6, vr11
000bd8  7e8000e0  vmmov mr0, r1
000bdc  9f004000  addli r1, zero, 32
000be0  7e8100e0  vmmov mr2, r1
000be4  9f008000  addli r1, zero, 64
000be8  eaa5b236  vor.u.mh vr11{mr3}, r5, vr11
000bec  ab024000  lui r5, 1024
000bf0  ea25be30  vor.u.mh vr11{mr0}, r28, vr11
000bf4  eaa5bd34  vor.u.mh vr11{mr2}, r27, vr11
000bf8  7e8100e0  vmmov mr2, r1
000bfc  9f000001  addli r1, zero, 128
000c00  eaa5b934  vor.u.mh vr11{mr2}, r19, vr11
000c04  7e8100e0  vmmov mr2, r1
000c08  9f000002  addli r1, zero, 256
000c0c  ea25b834  vor.u.mh vr11{mr2}, r16, vr11
000c10  7e8100e0  vmmov mr2, r1
000c14  9f000004  addli r1, zero, 512
000c18  eaa5b634  vor.u.mh vr11{mr2}, r13, vr11
000c1c  7e8100e0  vmmov mr2, r1
000c20  9f000008  addli r1, zero, 1024
000c24  ea25bd34  vor.u.mh vr11{mr2}, r26, vr11
000c28  7e8100e0  vmmov mr2, r1
000c2c  9f000010  addli r1, zero, 2048
000c30  eaa5bc34  vor.u.mh vr11{mr2}, r25, vr11
000c34  7e8100e0  vmmov mr2, r1
000c38  9f000020  addli r1, zero, 4096
000c3c  ea25bc34  vor.u.mh vr11{mr2}, r24, vr11
000c40  7e8100e0  vmmov mr2, r1
000c44  9f000040  addli r1, zero, 8192
000c48  eaa5bb34  vor.u.mh vr11{mr2}, r23, vr11
000c4c  7e8100e0  vmmov mr2, r1
000c50  ab400000  lui r1, 4
000c54  ea25b934  vor.u.mh vr11{mr2}, r18, vr11
000c58  7e8100e0  vmmov mr2, r1
000c5c  ab800000  lui r1, 8
000c60  eaa5b134  vor.u.mh vr11{mr2}, r3, vr11
000c64  7e8100e0  vmmov mr2, r1
000c68  9f100000  addli r1, zero, 1
000c6c  9f210000  addli r3, zero, 2
000c70  fe8100e0  vmmov mr3, r1
000c74  9f200000  addli r1, zero, 2
000c78  eaa5b734  vor.u.mh vr11{mr2}, r15, vr11
000c7c  ea425036  vor.hf.mh vr5{mr3}, zero, vr5
000c80  fe8100e0  vmmov mr3, r1
000c84  9f400000  addli r1, zero, 4
000c88  ea425036  vor.hf.mh vr5{mr3}, zero, vr5
000c8c  fe8100e0  vmmov mr3, r1
000c90  9f001000  addli r1, zero, 8
000c94  ea425036  vor.hf.mh vr5{mr3}, zero, vr5
000c98  fe8100e0  vmmov mr3, r1
000c9c  9f004000  addli r1, zero, 32
000ca0  eac25136  vor.hf.mh vr5{mr3}, r3, vr5
000ca4  fe0100c0  vmmov mr3, mr0
000ca8  9f410000  addli r3, zero, 4
000cac  7e8000e0  vmmov mr0, r1
000cb0  9f008000  addli r1, zero, 64
000cb4  ea425036  vor.hf.mh vr5{mr3}, zero, vr5
000cb8  eac25130  vor.hf.mh vr5{mr0}, r3, vr5
000cbc  7e8000e0  vmmov mr0, r1
000cc0  9f000001  addli r1, zero, 128
000cc4  9f610000  addli r3, zero, 6
000cc8  ea425030  vor.hf.mh vr5{mr0}, zero, vr5
000ccc  7e8000e0  vmmov mr0, r1
000cd0  9f000002  addli r1, zero, 256
000cd4  eac25130  vor.hf.mh vr5{mr0}, r3, vr5
000cd8  7e8000e0  vmmov mr0, r1
000cdc  9f000004  addli r1, zero, 512
000ce0  9f011000  addli r3, zero, 8
000ce4  ea425030  vor.hf.mh vr5{mr0}, zero, vr5
000ce8  7e8000e0  vmmov mr0, r1
000cec  9f000008  addli r1, zero, 1024
000cf0  eac25130  vor.hf.mh vr5{mr0}, r3, vr5
000cf4  7e8000e0  vmmov mr0, r1
000cf8  9f000010  addli r1, zero, 2048
000cfc  9f211000  addli r3, zero, 10
000d00  ea425030  vor.hf.mh vr5{mr0}, zero, vr5
000d04  7e8000e0  vmmov mr0, r1
000d08  9f000020  addli r1, zero, 4096
000d0c  eac25130  vor.hf.mh vr5{mr0}, r3, vr5
000d10  7e8000e0  vmmov mr0, r1
000d14  9f000040  addli r1, zero, 8192
000d18  9f411000  addli r3, zero, 12
000d1c  ea425030  vor.hf.mh vr5{mr0}, zero, vr5
000d20  7e8000e0  vmmov mr0, r1
000d24  ab400000  lui r1, 4
000d28  eac25130  vor.hf.mh vr5{mr0}, r3, vr5
000d2c  7e8000e0  vmmov mr0, r1
000d30  9f611000  addli r3, zero, 14
000d34  ab000100  lui r1, 16
000d38  ea425030  vor.hf.mh vr5{mr0}, zero, vr5
000d3c  7e8000e0  vmmov mr0, r1
000d40  ab000200  lui r1, 32
000d44  eac25134  vor.hf.mh vr5{mr2}, r3, vr5
000d48  9f012000  addli r3, zero, 16
000d4c  ea425030  vor.hf.mh vr5{mr0}, zero, vr5
000d50  7e8000e0  vmmov mr0, r1
000d54  ab000400  lui r1, 64
000d58  eac25130  vor.hf.mh vr5{mr0}, r3, vr5
000d5c  7e8000e0  vmmov mr0, r1
000d60  ab000800  lui r1, 128
000d64  9f212000  addli r3, zero, 18
000d68  ea425030  vor.hf.mh vr5{mr0}, zero, vr5
000d6c  7e8000e0  vmmov mr0, r1
000d70  ab001000  lui r1, 256
000d74  eac25130  vor.hf.mh vr5{mr0}, r3, vr5
000d78  7e8000e0  vmmov mr0, r1
000d7c  ab002000  lui r1, 512
000d80  9f412000  addli r3, zero, 20
000d84  ea425030  vor.hf.mh vr5{mr0}, zero, vr5
000d88  7e8000e0  vmmov mr0, r1
000d8c  ab004000  lui r1, 1024
000d90  eac25130  vor.hf.mh vr5{mr0}, r3, vr5
000d94  7e8000e0  vmmov mr0, r1
000d98  ab008000  lui r1, 2048
000d9c  9f612000  addli r3, zero, 22
000da0  ea425030  vor.hf.mh vr5{mr0}, zero, vr5
000da4  7e8000e0  vmmov mr0, r1
000da8  ab000001  lui r1, 4096
000dac  eac25130  vor.hf.mh vr5{mr0}, r3, vr5
000db0  7e8000e0  vmmov mr0, r1
000db4  ab000002  lui r1, 8192
000db8  9f013000  addli r3, zero, 24
000dbc  ea425030  vor.hf.mh vr5{mr0}, zero, vr5
000dc0  7e8000e0  vmmov mr0, r1
000dc4  ab000004  lui r1, 16384
000dc8  eac25130  vor.hf.mh vr5{mr0}, r3, vr5
000dcc  7e8000e0  vmmov mr0, r1
000dd0  9f000fee  addli r1, r30, -2304
000dd4  9f213000  addli r3, zero, 26
000dd8  ea425030  vor.hf.mh vr5{mr0}, zero, vr5
000ddc  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000de0  ab000008  lui r1, 32768
000de4  7e8000e0  vmmov mr0, r1
000de8  ab000010  lui r1, 65536
000dec  eac25130  vor.hf.mh vr5{mr0}, r3, vr5
000df0  7e8000e0  vmmov mr0, r1
000df4  9f110000  addli r3, zero, 1
000df8  ab000020  lui r1, 131072
000dfc  8e902002  vmul.f.mz.rn vr1{mr1}, vr1, vr2
000e00  ea425030  vor.hf.mh vr5{mr0}, zero, vr5
000e04  7e8000e0  vmmov mr0, r1
000e08  ab000040  lui r1, 262144
000e0c  6e3112c2  vsrl.s.mz vr2{mr1}, vr4, vr1
000e10  669400c0  vabs.f vr8, vr1
000e14  6ab12102  vand.s.mz vr2{mr1}, r3, vr2
000e18  9f413000  addli r3, zero, 28
000e1c  76a18142  vlt.u.mz mr2{mr1}, vr3, vr8
000e20  fe0b01a0  vmmov r23, mr2
000e24  eac25130  vor.hf.mh vr5{mr0}, r3, vr5
000e28  7e8000e0  vmmov mr0, r1
000e2c  ab000080  lui r1, 524288
000e30  16b12002  vadd.s.mz vr2{mr1}, vr1, vr2
000e34  eab01222  vor.s.mz vr1{mr1}, r5, vr1
000e38  9f020ff6  addli r5, r30, -1280
000e3c  ea425030  vor.hf.mh vr5{mr0}, zero, vr5
000e40  e341fff5  loadli.w r3,  -1284(r30)
000e44  7e8000e0  vmmov mr0, r1
000e48  aba0aaaa  lui r1, 699050
000e4c  9fa05015  addli r1, r1, 2730
000e50  12b52102  vadd.s.mz vr10{mr1}, r3, vr2
000e54  9f613000  addli r3, zero, 30
000e58  eac25130  vor.hf.mh vr5{mr0}, r3, vr5
000e5c  9bc1fb00  srli r3, r23, 15
000e60  7e8000e0  vmmov mr0, r1
000e64  9b811100  andi r3, r3, 1
000e68  e2c2b210  vscatter.mh vr11{mr0}, vr5{r5}
000e6c  3bb00100  bneq r3, zero, 12
000e70  7a39f540  vextracti.s r18, 15(vr10)
000e74  5b010000  j 8
000e78  7ab9f040  vextracti.s r18, 15(vr1)
000e7c  9bc1eb00  srli r3, r23, 14
000e80  9b811100  andi r3, r3, 1
000e84  3bb00100  bneq r3, zero, 12
000e88  fa37e540  vextracti.s r15, 14(vr10)
000e8c  5b010000  j 8
000e90  fab7e040  vextracti.s r15, 14(vr1)
000e94  9bc1db00  srli r3, r23, 13
000e98  9b811100  andi r3, r3, 1
000e9c  3bb00100  bneq r3, zero, 12
000ea0  fa31d540  vextracti.s r3, 13(vr10)
000ea4  5b010000  j 8
000ea8  fab1d040  vextracti.s r3, 13(vr1)
000eac  9bc2cb00  srli r5, r23, 12
000eb0  9b821200  andi r5, r5, 1
000eb4  3bb00200  bneq r5, zero, 12
000eb8  7a3bc540  vextracti.s r22, 12(vr10)
000ebc  5b010000  j 8
000ec0  7abbc040  vextracti.s r22, 12(vr1)
000ec4  9bc2bb00  srli r5, r23, 11
000ec8  9b821200  andi r5, r5, 1
000ecc  3bb00200  bneq r5, zero, 12
000ed0  7a3cb540  vextracti.s r24, 11(vr10)
000ed4  5b010000  j 8
000ed8  7abcb040  vextracti.s r24, 11(vr1)
000edc  9bc2ab00  srli r5, r23, 10
000ee0  9b821200  andi r5, r5, 1
000ee4  3bb00200  bneq r5, zero, 12
000ee8  fa3ca540  vextracti.s r25, 10(vr10)
000eec  5b010000  j 8
000ef0  fabca040  vextracti.s r25, 10(vr1)
000ef4  9bc29b00  srli r5, r23, 9
000ef8  9b821200  andi r5, r5, 1
000efc  3bb00200  bneq r5, zero, 12
000f00  7a3d9540  vextracti.s r26, 9(vr10)
000f04  5b010000  j 8
000f08  7abd9040  vextracti.s r26, 9(vr1)
000f0c  9bc28b00  srli r5, r23, 8
000f10  9b821200  andi r5, r5, 1
000f14  3bb00200  bneq r5, zero, 12
000f18  fa368540  vextracti.s r13, 8(vr10)
000f1c  5b010000  j 8
000f20  fab68040  vextracti.s r13, 8(vr1)
000f24  9bc27b00  srli r5, r23, 7
000f28  9b821200  andi r5, r5, 1
000f2c  3bb00200  bneq r5, zero, 12
000f30  7a387540  vextracti.s r16, 7(vr10)
000f34  5b010000  j 8
000f38  7ab87040  vextracti.s r16, 7(vr1)
000f3c  9bc26b00  srli r5, r23, 6
000f40  9b821200  andi r5, r5, 1
000f44  3bb00200  bneq r5, zero, 12
000f48  fa396540  vextracti.s r19, 6(vr10)
000f4c  5b010000  j 8
000f50  fab96040  vextracti.s r19, 6(vr1)
000f54  9bc25b00  srli r5, r23, 5
000f58  9b821200  andi r5, r5, 1
000f5c  3bb00200  bneq r5, zero, 12
000f60  fa3d5540  vextracti.s r27, 5(vr10)
000f64  5b010000  j 8
000f68  fabd5040  vextracti.s r27, 5(vr1)
000f6c  9bc24b00  srli r5, r23, 4
000f70  9b821200  andi r5, r5, 1
000f74  3bb00200  bneq r5, zero, 12
000f78  7a3e4540  vextracti.s r28, 4(vr10)
000f7c  5b010000  j 8
000f80  7abe4040  vextracti.s r28, 4(vr1)
000f84  9bc23b00  srli r5, r23, 3
000f88  9b821200  andi r5, r5, 1
000f8c  3bb00200  bneq r5, zero, 12
000f90  fa323540  vextracti.s r5, 3(vr10)
000f94  5b010000  j 8
000f98  fab23040  vextracti.s r5, 3(vr1)
000f9c  1bc32b00  srli r6, r23, 2
000fa0  1b031300  andi r6, r6, 1
000fa4  3b300300  bneq r6, zero, 12
000fa8  7a332540  vextracti.s r6, 2(vr10)
000fac  5b010000  j 8
000fb0  7ab32040  vextracti.s r6, 2(vr1)
000fb4  9bc31b00  srli r7, r23, 1
000fb8  9b831300  andi r7, r7, 1
000fbc  3be00300  bneq r7, zero, 24
000fc0  fa331540  vextracti.s r7, 1(vr10)
000fc4  9b8b1b00  andi r23, r23, 1
000fc8  37e00b00  beq r23, zero, 24
000fcc  fabb0040  vextracti.s r23, 0(vr1)
000fd0  db020000  j 20
000fd4  fab31040  vextracti.s r7, 1(vr1)
000fd8  9b8b1b00  andi r23, r23, 1
000fdc  bbcf0bfe  bneq r23, zero, -16
000fe0  fa3b0540  vextracti.s r23, 0(vr10)
000fe4  12310002  vadd.s.mz vr2{mr1}, zero, vr0
000fe8  9f100000  addli r1, zero, 1
000fec  92906802  vadd.f.mz.rn vr1{mr1}, r17, vr6
000ff0  7e8000e0  vmmov mr0, r1
000ff4  9f200000  addli r1, zero, 2
000ff8  6aa12b30  vor.u.mh vr2{mr0}, r23, vr2
000ffc  7e8100e0  vmmov mr2, r1
001000  9f400000  addli r1, zero, 4
001004  7e8000e0  vmmov mr0, r1
001008  9f001000  addli r1, zero, 8
00100c  6aa12334  vor.u.mh vr2{mr2}, r7, vr2
001010  6a212330  vor.u.mh vr2{mr0}, r6, vr2
001014  7e8000e0  vmmov mr0, r1
001018  9f004000  addli r1, zero, 32
00101c  2b034000  lui r6, 1024
001020  6aa12230  vor.u.mh vr2{mr0}, r5, vr2
001024  7e8000e0  vmmov mr0, r1
001028  9f008000  addli r1, zero, 64
00102c  9f120000  addli r5, zero, 1
001030  6a212e36  vor.u.mh vr2{mr3}, r28, vr2
001034  6aa12d30  vor.u.mh vr2{mr0}, r27, vr2
001038  7e8000e0  vmmov mr0, r1
00103c  9f000001  addli r1, zero, 128
001040  6aa12930  vor.u.mh vr2{mr0}, r19, vr2
001044  7e8000e0  vmmov mr0, r1
001048  9f000002  addli r1, zero, 256
00104c  6a212830  vor.u.mh vr2{mr0}, r16, vr2
001050  7e8000e0  vmmov mr0, r1
001054  9f000004  addli r1, zero, 512
001058  6aa12630  vor.u.mh vr2{mr0}, r13, vr2
00105c  7e8000e0  vmmov mr0, r1
001060  9f000008  addli r1, zero, 1024
001064  6a212d30  vor.u.mh vr2{mr0}, r26, vr2
001068  7e8000e0  vmmov mr0, r1
00106c  9f008fee  addli r1, r30, -2240
001070  6aa12c30  vor.u.mh vr2{mr0}, r25, vr2
001074  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001078  9f000010  addli r1, zero, 2048
00107c  7e8000e0  vmmov mr0, r1
001080  9f000020  addli r1, zero, 4096
001084  6a212c30  vor.u.mh vr2{mr0}, r24, vr2
001088  7e8000e0  vmmov mr0, r1
00108c  9f000040  addli r1, zero, 8192
001090  8e101002  vmul.f.mz.rn vr1{mr1}, vr0, vr1
001094  6a212b30  vor.u.mh vr2{mr0}, r22, vr2
001098  7e8000e0  vmmov mr0, r1
00109c  ab400000  lui r1, 4
0010a0  6e3312c2  vsrl.s.mz vr6{mr1}, vr4, vr1
0010a4  669400c0  vabs.f vr8, vr1
0010a8  6aa12130  vor.u.mh vr2{mr0}, r3, vr2
0010ac  7e8000e0  vmmov mr0, r1
0010b0  ab800000  lui r1, 8
0010b4  9f010ff6  addli r3, r30, -1280
0010b8  6ab36202  vand.s.mz vr6{mr1}, r5, vr6
0010bc  76a18142  vlt.u.mz mr2{mr1}, vr3, vr8
0010c0  9f814100  addli r3, r3, 32
0010c4  fe0b01a0  vmmov r23, mr2
0010c8  6aa12730  vor.u.mh vr2{mr0}, r15, vr2
0010cc  e342fff5  loadli.w r5,  -1284(r30)
0010d0  7e8000e0  vmmov mr0, r1
0010d4  aba0aaaa  lui r1, 699050
0010d8  16b36002  vadd.s.mz vr6{mr1}, vr1, vr6
0010dc  ea301322  vor.s.mz vr1{mr1}, r6, vr1
0010e0  9fa05015  addli r1, r1, 2730
0010e4  6a212930  vor.u.mh vr2{mr0}, r18, vr2
0010e8  7e8000e0  vmmov mr0, r1
0010ec  12b36202  vadd.s.mz vr6{mr1}, r5, vr6
0010f0  9bc2fb00  srli r5, r23, 15
0010f4  9b821200  andi r5, r5, 1
0010f8  e2c22110  vscatter.mh vr2{mr0}, vr5{r3}
0010fc  3bb00200  bneq r5, zero, 12
001100  7a39f340  vextracti.s r18, 15(vr6)
001104  5b010000  j 8
001108  7ab9f040  vextracti.s r18, 15(vr1)
00110c  9f000ff5  addli r1, r30, -1408
001110  9bc1eb00  srli r3, r23, 14
001114  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001118  9b811100  andi r3, r3, 1
00111c  3bb00100  bneq r3, zero, 12
001120  fa37e340  vextracti.s r15, 14(vr6)
001124  5b010000  j 8
001128  fab7e040  vextracti.s r15, 14(vr1)
00112c  9bc1db00  srli r3, r23, 13
001130  9b811100  andi r3, r3, 1
001134  3bb00100  bneq r3, zero, 12
001138  fa31d340  vextracti.s r3, 13(vr6)
00113c  5b010000  j 8
001140  fab1d040  vextracti.s r3, 13(vr1)
001144  9bc2cb00  srli r5, r23, 12
001148  9b821200  andi r5, r5, 1
00114c  3bb00200  bneq r5, zero, 12
001150  7a3bc340  vextracti.s r22, 12(vr6)
001154  5b010000  j 8
001158  7abbc040  vextracti.s r22, 12(vr1)
00115c  9bc2bb00  srli r5, r23, 11
001160  9b821200  andi r5, r5, 1
001164  3bb00200  bneq r5, zero, 12
001168  7a3cb340  vextracti.s r24, 11(vr6)
00116c  5b010000  j 8
001170  7abcb040  vextracti.s r24, 11(vr1)
001174  9bc2ab00  srli r5, r23, 10
001178  9b821200  andi r5, r5, 1
00117c  3bb00200  bneq r5, zero, 12
001180  fa3ca340  vextracti.s r25, 10(vr6)
001184  5b010000  j 8
001188  fabca040  vextracti.s r25, 10(vr1)
00118c  9bc29b00  srli r5, r23, 9
001190  9b821200  andi r5, r5, 1
001194  3bb00200  bneq r5, zero, 12
001198  7a3d9340  vextracti.s r26, 9(vr6)
00119c  5b010000  j 8
0011a0  7abd9040  vextracti.s r26, 9(vr1)
0011a4  9bc28b00  srli r5, r23, 8
0011a8  9b821200  andi r5, r5, 1
0011ac  3bb00200  bneq r5, zero, 12
0011b0  fa368340  vextracti.s r13, 8(vr6)
0011b4  5b010000  j 8
0011b8  fab68040  vextracti.s r13, 8(vr1)
0011bc  9bc27b00  srli r5, r23, 7
0011c0  9b821200  andi r5, r5, 1
0011c4  3bb00200  bneq r5, zero, 12
0011c8  7a387340  vextracti.s r16, 7(vr6)
0011cc  5b010000  j 8
0011d0  7ab87040  vextracti.s r16, 7(vr1)
0011d4  9bc26b00  srli r5, r23, 6
0011d8  9b821200  andi r5, r5, 1
0011dc  3bb00200  bneq r5, zero, 12
0011e0  fa396340  vextracti.s r19, 6(vr6)
0011e4  5b010000  j 8
0011e8  fab96040  vextracti.s r19, 6(vr1)
0011ec  9bc25b00  srli r5, r23, 5
0011f0  9b821200  andi r5, r5, 1
0011f4  3bb00200  bneq r5, zero, 12
0011f8  fa3d5340  vextracti.s r27, 5(vr6)
0011fc  5b010000  j 8
001200  fabd5040  vextracti.s r27, 5(vr1)
001204  9bc24b00  srli r5, r23, 4
001208  9b821200  andi r5, r5, 1
00120c  3bb00200  bneq r5, zero, 12
001210  7a3e4340  vextracti.s r28, 4(vr6)
001214  5b010000  j 8
001218  7abe4040  vextracti.s r28, 4(vr1)
00121c  9bc23b00  srli r5, r23, 3
001220  9b821200  andi r5, r5, 1
001224  3bb00200  bneq r5, zero, 12
001228  fa323340  vextracti.s r5, 3(vr6)
00122c  5b010000  j 8
001230  fab23040  vextracti.s r5, 3(vr1)
001234  1bc32b00  srli r6, r23, 2
001238  1b031300  andi r6, r6, 1
00123c  3b300300  bneq r6, zero, 12
001240  7a332340  vextracti.s r6, 2(vr6)
001244  5b010000  j 8
001248  7ab32040  vextracti.s r6, 2(vr1)
00124c  9bc31b00  srli r7, r23, 1
001250  9b831300  andi r7, r7, 1
001254  3be00300  bneq r7, zero, 24
001258  fa331340  vextracti.s r7, 1(vr6)
00125c  9b8b1b00  andi r23, r23, 1
001260  37e00b00  beq r23, zero, 24
001264  fabb0040  vextracti.s r23, 0(vr1)
001268  db020000  j 20
00126c  fab31040  vextracti.s r7, 1(vr1)
001270  9b8b1b00  andi r23, r23, 1
001274  bbcf0bfe  bneq r23, zero, -16
001278  fa3b0340  vextracti.s r23, 0(vr6)
00127c  12310002  vadd.s.mz vr2{mr1}, zero, vr0
001280  9f100000  addli r1, zero, 1
001284  92909802  vadd.f.mz.rn vr1{mr1}, r17, vr9
001288  7e8000e0  vmmov mr0, r1
00128c  9f200000  addli r1, zero, 2
001290  6aa12b30  vor.u.mh vr2{mr0}, r23, vr2
001294  7e8100e0  vmmov mr2, r1
001298  9f400000  addli r1, zero, 4
00129c  7e8000e0  vmmov mr0, r1
0012a0  9f001000  addli r1, zero, 8
0012a4  6aa12334  vor.u.mh vr2{mr2}, r7, vr2
0012a8  6a212330  vor.u.mh vr2{mr0}, r6, vr2
0012ac  7e8000e0  vmmov mr0, r1
0012b0  9f004000  addli r1, zero, 32
0012b4  6aa12230  vor.u.mh vr2{mr0}, r5, vr2
0012b8  7e8000e0  vmmov mr0, r1
0012bc  9f008000  addli r1, zero, 64
0012c0  9f120000  addli r5, zero, 1
0012c4  6a212e36  vor.u.mh vr2{mr3}, r28, vr2
0012c8  6aa12d30  vor.u.mh vr2{mr0}, r27, vr2
0012cc  7e8000e0  vmmov mr0, r1
0012d0  9f000001  addli r1, zero, 128
0012d4  6aa12930  vor.u.mh vr2{mr0}, r19, vr2
0012d8  7e8000e0  vmmov mr0, r1
0012dc  9f000002  addli r1, zero, 256
0012e0  6a212830  vor.u.mh vr2{mr0}, r16, vr2
0012e4  7e8000e0  vmmov mr0, r1
0012e8  9f000004  addli r1, zero, 512
0012ec  6aa12630  vor.u.mh vr2{mr0}, r13, vr2
0012f0  7e8000e0  vmmov mr0, r1
0012f4  9f000008  addli r1, zero, 1024
0012f8  6a212d30  vor.u.mh vr2{mr0}, r26, vr2
0012fc  7e8000e0  vmmov mr0, r1
001300  9f008fef  addli r1, r30, -2112
001304  6aa12c30  vor.u.mh vr2{mr0}, r25, vr2
001308  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
00130c  9f000010  addli r1, zero, 2048
001310  7e8000e0  vmmov mr0, r1
001314  9f000020  addli r1, zero, 4096
001318  6a212c30  vor.u.mh vr2{mr0}, r24, vr2
00131c  7e8000e0  vmmov mr0, r1
001320  9f000040  addli r1, zero, 8192
001324  0e131302  vmul.f.mz.rn vr6{mr1}, vr6, vr1
001328  6a212b30  vor.u.mh vr2{mr0}, r22, vr2
00132c  7e8000e0  vmmov mr0, r1
001330  ab400000  lui r1, 4
001334  ee3062c2  vsrl.s.mz vr1{mr1}, vr4, vr6
001338  661403c0  vabs.f vr8, vr6
00133c  6aa12130  vor.u.mh vr2{mr0}, r3, vr2
001340  7e8000e0  vmmov mr0, r1
001344  ab800000  lui r1, 8
001348  eab01202  vand.s.mz vr1{mr1}, r5, vr1
00134c  76a18142  vlt.u.mz mr2{mr1}, vr3, vr8
001350  ab024000  lui r5, 1024
001354  fe0b01a0  vmmov r23, mr2
001358  6aa12730  vor.u.mh vr2{mr0}, r15, vr2
00135c  7e8000e0  vmmov mr0, r1
001360  aba0aaaa  lui r1, 699050
001364  e341fff5  loadli.w r3,  -1284(r30)
001368  96301302  vadd.s.mz vr1{mr1}, vr6, vr1
00136c  9fa05015  addli r1, r1, 2730
001370  6ab36222  vor.s.mz vr6{mr1}, r5, vr6
001374  6a212930  vor.u.mh vr2{mr0}, r18, vr2
001378  7e8000e0  vmmov mr0, r1
00137c  e3407ff0  loadli.w r1,  -1988(r30)
001380  92b01102  vadd.s.mz vr1{mr1}, r3, vr1
001384  9bc1fb00  srli r3, r23, 15
001388  9b811100  andi r3, r3, 1
00138c  e2c22010  vscatter.mh vr2{mr0}, vr5{r1}
001390  3bb00100  bneq r3, zero, 12
001394  7ab9f040  vextracti.s r18, 15(vr1)
001398  5b010000  j 8
00139c  7a39f340  vextracti.s r18, 15(vr6)
0013a0  9bc1eb00  srli r3, r23, 14
0013a4  9b811100  andi r3, r3, 1
0013a8  3bb00100  bneq r3, zero, 12
0013ac  fab7e040  vextracti.s r15, 14(vr1)
0013b0  5b010000  j 8
0013b4  fa37e340  vextracti.s r15, 14(vr6)
0013b8  9bc1db00  srli r3, r23, 13
0013bc  9b811100  andi r3, r3, 1
0013c0  3bb00100  bneq r3, zero, 12
0013c4  fab1d040  vextracti.s r3, 13(vr1)
0013c8  5b010000  j 8
0013cc  fa31d340  vextracti.s r3, 13(vr6)
0013d0  9bc2cb00  srli r5, r23, 12
0013d4  9b821200  andi r5, r5, 1
0013d8  3bb00200  bneq r5, zero, 12
0013dc  7abbc040  vextracti.s r22, 12(vr1)
0013e0  5b010000  j 8
0013e4  7a3bc340  vextracti.s r22, 12(vr6)
0013e8  9bc2bb00  srli r5, r23, 11
0013ec  9b821200  andi r5, r5, 1
0013f0  3bb00200  bneq r5, zero, 12
0013f4  7abcb040  vextracti.s r24, 11(vr1)
0013f8  5b010000  j 8
0013fc  7a3cb340  vextracti.s r24, 11(vr6)
001400  9bc2ab00  srli r5, r23, 10
001404  9b821200  andi r5, r5, 1
001408  3bb00200  bneq r5, zero, 12
00140c  fabca040  vextracti.s r25, 10(vr1)
001410  5b010000  j 8
001414  fa3ca340  vextracti.s r25, 10(vr6)
001418  9bc29b00  srli r5, r23, 9
00141c  9b821200  andi r5, r5, 1
001420  3bb00200  bneq r5, zero, 12
001424  7abd9040  vextracti.s r26, 9(vr1)
001428  5b010000  j 8
00142c  7a3d9340  vextracti.s r26, 9(vr6)
001430  9bc28b00  srli r5, r23, 8
001434  9b821200  andi r5, r5, 1
001438  3bb00200  bneq r5, zero, 12
00143c  fab68040  vextracti.s r13, 8(vr1)
001440  5b010000  j 8
001444  fa368340  vextracti.s r13, 8(vr6)
001448  9bc27b00  srli r5, r23, 7
00144c  9b821200  andi r5, r5, 1
001450  3bb00200  bneq r5, zero, 12
001454  7ab87040  vextracti.s r16, 7(vr1)
001458  5b010000  j 8
00145c  7a387340  vextracti.s r16, 7(vr6)
001460  9bc26b00  srli r5, r23, 6
001464  9b821200  andi r5, r5, 1
001468  3bb00200  bneq r5, zero, 12
00146c  fab96040  vextracti.s r19, 6(vr1)
001470  5b010000  j 8
001474  fa396340  vextracti.s r19, 6(vr6)
001478  9bc25b00  srli r5, r23, 5
00147c  9b821200  andi r5, r5, 1
001480  3bb00200  bneq r5, zero, 12
001484  fabd5040  vextracti.s r27, 5(vr1)
001488  5b010000  j 8
00148c  fa3d5340  vextracti.s r27, 5(vr6)
001490  9bc24b00  srli r5, r23, 4
001494  9b821200  andi r5, r5, 1
001498  3bb00200  bneq r5, zero, 12
00149c  7abe4040  vextracti.s r28, 4(vr1)
0014a0  5b010000  j 8
0014a4  7a3e4340  vextracti.s r28, 4(vr6)
0014a8  9bc23b00  srli r5, r23, 3
0014ac  9b821200  andi r5, r5, 1
0014b0  3bb00200  bneq r5, zero, 12
0014b4  fab23040  vextracti.s r5, 3(vr1)
0014b8  5b010000  j 8
0014bc  fa323340  vextracti.s r5, 3(vr6)
0014c0  1bc32b00  srli r6, r23, 2
0014c4  1b031300  andi r6, r6, 1
0014c8  3b300300  bneq r6, zero, 12
0014cc  7ab32040  vextracti.s r6, 2(vr1)
0014d0  5b010000  j 8
0014d4  7a332340  vextracti.s r6, 2(vr6)
0014d8  9bc31b00  srli r7, r23, 1
0014dc  9b831300  andi r7, r7, 1
0014e0  3be00300  bneq r7, zero, 24
0014e4  fab31040  vextracti.s r7, 1(vr1)
0014e8  9b8b1b00  andi r23, r23, 1
0014ec  37e00b00  beq r23, zero, 24
0014f0  fa3b0340  vextracti.s r23, 0(vr6)
0014f4  db020000  j 20
0014f8  fa331340  vextracti.s r7, 1(vr6)
0014fc  9b8b1b00  andi r23, r23, 1
001500  bbcf0bfe  bneq r23, zero, -16
001504  fabb0040  vextracti.s r23, 0(vr1)
001508  12330002  vadd.s.mz vr6{mr1}, zero, vr0
00150c  9f100000  addli r1, zero, 1
001510  7e8000e0  vmmov mr0, r1
001514  9f200000  addli r1, zero, 2
001518  6aa36b30  vor.u.mh vr6{mr0}, r23, vr6
00151c  7e8100e0  vmmov mr2, r1
001520  9f400000  addli r1, zero, 4
001524  7e8000e0  vmmov mr0, r1
001528  9f001000  addli r1, zero, 8
00152c  6aa36334  vor.u.mh vr6{mr2}, r7, vr6
001530  6a236330  vor.u.mh vr6{mr0}, r6, vr6
001534  7e8000e0  vmmov mr0, r1
001538  9f004000  addli r1, zero, 32
00153c  2b034000  lui r6, 1024
001540  6aa36230  vor.u.mh vr6{mr0}, r5, vr6
001544  7e8000e0  vmmov mr0, r1
001548  9f008000  addli r1, zero, 64
00154c  9f120000  addli r5, zero, 1
001550  6a236e36  vor.u.mh vr6{mr3}, r28, vr6
001554  6aa36d30  vor.u.mh vr6{mr0}, r27, vr6
001558  7e8000e0  vmmov mr0, r1
00155c  9f000001  addli r1, zero, 128
001560  6aa36930  vor.u.mh vr6{mr0}, r19, vr6
001564  7e8000e0  vmmov mr0, r1
001568  9f000002  addli r1, zero, 256
00156c  6a236830  vor.u.mh vr6{mr0}, r16, vr6
001570  7e8000e0  vmmov mr0, r1
001574  9f000004  addli r1, zero, 512
001578  6aa36630  vor.u.mh vr6{mr0}, r13, vr6
00157c  7e8000e0  vmmov mr0, r1
001580  9f000008  addli r1, zero, 1024
001584  6a236d30  vor.u.mh vr6{mr0}, r26, vr6
001588  7e8000e0  vmmov mr0, r1
00158c  9f000fef  addli r1, r30, -2176
001590  6aa36c30  vor.u.mh vr6{mr0}, r25, vr6
001594  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001598  9f000ff1  addli r1, r30, -1920
00159c  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
0015a0  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0015a4  9f000010  addli r1, zero, 2048
0015a8  7e8000e0  vmmov mr0, r1
0015ac  9f000020  addli r1, zero, 4096
0015b0  6a236c30  vor.u.mh vr6{mr0}, r24, vr6
0015b4  7e8000e0  vmmov mr0, r1
0015b8  9f000040  addli r1, zero, 8192
0015bc  0e111102  vmul.f.mz.rn vr2{mr1}, vr2, vr1
0015c0  6a236b30  vor.u.mh vr6{mr0}, r22, vr6
0015c4  7e8000e0  vmmov mr0, r1
0015c8  ab400000  lui r1, 4
0015cc  ee3022c2  vsrl.s.mz vr1{mr1}, vr4, vr2
0015d0  661401c0  vabs.f vr8, vr2
0015d4  6aa36130  vor.u.mh vr6{mr0}, r3, vr6
0015d8  7e8000e0  vmmov mr0, r1
0015dc  ab800000  lui r1, 8
0015e0  9f010ff6  addli r3, r30, -1280
0015e4  9f81c100  addli r3, r3, 96
0015e8  eab01202  vand.s.mz vr1{mr1}, r5, vr1
0015ec  76a18142  vlt.u.mz mr2{mr1}, vr3, vr8
0015f0  6aa36730  vor.u.mh vr6{mr0}, r15, vr6
0015f4  e342fff5  loadli.w r5,  -1284(r30)
0015f8  7e8000e0  vmmov mr0, r1
0015fc  aba0aaaa  lui r1, 699050
001600  fe0b01a0  vmmov r23, mr2
001604  9fa05015  addli r1, r1, 2730
001608  96301102  vadd.s.mz vr1{mr1}, vr2, vr1
00160c  6a312322  vor.s.mz vr2{mr1}, r6, vr2
001610  6a236930  vor.u.mh vr6{mr0}, r18, vr6
001614  7e8000e0  vmmov mr0, r1
001618  92b01202  vadd.s.mz vr1{mr1}, r5, vr1
00161c  9bc2fb00  srli r5, r23, 15
001620  e2c26110  vscatter.mh vr6{mr0}, vr5{r3}
001624  9b821200  andi r5, r5, 1
001628  3bb00200  bneq r5, zero, 12
00162c  7ab9f040  vextracti.s r18, 15(vr1)
001630  5b010000  j 8
001634  7a39f140  vextracti.s r18, 15(vr2)
001638  9bc1eb00  srli r3, r23, 14
00163c  9b811100  andi r3, r3, 1
001640  3bb00100  bneq r3, zero, 12
001644  fab7e040  vextracti.s r15, 14(vr1)
001648  5b010000  j 8
00164c  fa37e140  vextracti.s r15, 14(vr2)
001650  9bc1db00  srli r3, r23, 13
001654  9b811100  andi r3, r3, 1
001658  3bb00100  bneq r3, zero, 12
00165c  fab1d040  vextracti.s r3, 13(vr1)
001660  5b010000  j 8
001664  fa31d140  vextracti.s r3, 13(vr2)
001668  9bc2cb00  srli r5, r23, 12
00166c  9b821200  andi r5, r5, 1
001670  3bb00200  bneq r5, zero, 12
001674  7abbc040  vextracti.s r22, 12(vr1)
001678  5b010000  j 8
00167c  7a3bc140  vextracti.s r22, 12(vr2)
001680  9bc2bb00  srli r5, r23, 11
001684  9b821200  andi r5, r5, 1
001688  3bb00200  bneq r5, zero, 12
00168c  7abcb040  vextracti.s r24, 11(vr1)
001690  5b010000  j 8
001694  7a3cb140  vextracti.s r24, 11(vr2)
001698  9bc2ab00  srli r5, r23, 10
00169c  9b821200  andi r5, r5, 1
0016a0  3bb00200  bneq r5, zero, 12
0016a4  fabca040  vextracti.s r25, 10(vr1)
0016a8  5b010000  j 8
0016ac  fa3ca140  vextracti.s r25, 10(vr2)
0016b0  9bc29b00  srli r5, r23, 9
0016b4  9b821200  andi r5, r5, 1
0016b8  3bb00200  bneq r5, zero, 12
0016bc  7abd9040  vextracti.s r26, 9(vr1)
0016c0  5b010000  j 8
0016c4  7a3d9140  vextracti.s r26, 9(vr2)
0016c8  9bc28b00  srli r5, r23, 8
0016cc  9b821200  andi r5, r5, 1
0016d0  3bb00200  bneq r5, zero, 12
0016d4  fab68040  vextracti.s r13, 8(vr1)
0016d8  5b010000  j 8
0016dc  fa368140  vextracti.s r13, 8(vr2)
0016e0  9bc27b00  srli r5, r23, 7
0016e4  9b821200  andi r5, r5, 1
0016e8  3bb00200  bneq r5, zero, 12
0016ec  7ab87040  vextracti.s r16, 7(vr1)
0016f0  5b010000  j 8
0016f4  7a387140  vextracti.s r16, 7(vr2)
0016f8  9bc26b00  srli r5, r23, 6
0016fc  9b821200  andi r5, r5, 1
001700  3bb00200  bneq r5, zero, 12
001704  fab96040  vextracti.s r19, 6(vr1)
001708  5b010000  j 8
00170c  fa396140  vextracti.s r19, 6(vr2)
001710  9bc25b00  srli r5, r23, 5
001714  9b821200  andi r5, r5, 1
001718  3bb00200  bneq r5, zero, 12
00171c  fabd5040  vextracti.s r27, 5(vr1)
001720  5b010000  j 8
001724  fa3d5140  vextracti.s r27, 5(vr2)
001728  9bc24b00  srli r5, r23, 4
00172c  9b821200  andi r5, r5, 1
001730  3bb00200  bneq r5, zero, 12
001734  7abe4040  vextracti.s r28, 4(vr1)
001738  5b010000  j 8
00173c  7a3e4140  vextracti.s r28, 4(vr2)
001740  9bc23b00  srli r5, r23, 3
001744  9b821200  andi r5, r5, 1
001748  3bb00200  bneq r5, zero, 12
00174c  fab23040  vextracti.s r5, 3(vr1)
001750  5b010000  j 8
001754  fa323140  vextracti.s r5, 3(vr2)
001758  1bc32b00  srli r6, r23, 2
00175c  1b031300  andi r6, r6, 1
001760  3b300300  bneq r6, zero, 12
001764  7ab32040  vextracti.s r6, 2(vr1)
001768  5b010000  j 8
00176c  7a332140  vextracti.s r6, 2(vr2)
001770  9bc31b00  srli r7, r23, 1
001774  9b831300  andi r7, r7, 1
001778  3be00300  bneq r7, zero, 24
00177c  fab31040  vextracti.s r7, 1(vr1)
001780  9b8b1b00  andi r23, r23, 1
001784  37e00b00  beq r23, zero, 24
001788  fa3b0140  vextracti.s r23, 0(vr2)
00178c  db020000  j 20
001790  fa331140  vextracti.s r7, 1(vr2)
001794  9b8b1b00  andi r23, r23, 1
001798  bbcf0bfe  bneq r23, zero, -16
00179c  fabb0040  vextracti.s r23, 0(vr1)
0017a0  12330002  vadd.s.mz vr6{mr1}, zero, vr0
0017a4  9f100000  addli r1, zero, 1
0017a8  7e8000e0  vmmov mr0, r1
0017ac  9f200000  addli r1, zero, 2
0017b0  6aa36b30  vor.u.mh vr6{mr0}, r23, vr6
0017b4  7e8100e0  vmmov mr2, r1
0017b8  9f400000  addli r1, zero, 4
0017bc  7e8000e0  vmmov mr0, r1
0017c0  9f001000  addli r1, zero, 8
0017c4  6aa36334  vor.u.mh vr6{mr2}, r7, vr6
0017c8  6a236330  vor.u.mh vr6{mr0}, r6, vr6
0017cc  7e8000e0  vmmov mr0, r1
0017d0  9f004000  addli r1, zero, 32
0017d4  6aa36230  vor.u.mh vr6{mr0}, r5, vr6
0017d8  7e8000e0  vmmov mr0, r1
0017dc  9f008000  addli r1, zero, 64
0017e0  9f120000  addli r5, zero, 1
0017e4  6a236e36  vor.u.mh vr6{mr3}, r28, vr6
0017e8  6aa36d30  vor.u.mh vr6{mr0}, r27, vr6
0017ec  7e8000e0  vmmov mr0, r1
0017f0  9f000001  addli r1, zero, 128
0017f4  6aa36930  vor.u.mh vr6{mr0}, r19, vr6
0017f8  7e8000e0  vmmov mr0, r1
0017fc  9f000002  addli r1, zero, 256
001800  6a236830  vor.u.mh vr6{mr0}, r16, vr6
001804  7e8000e0  vmmov mr0, r1
001808  9f000004  addli r1, zero, 512
00180c  6aa36630  vor.u.mh vr6{mr0}, r13, vr6
001810  7e8000e0  vmmov mr0, r1
001814  9f000008  addli r1, zero, 1024
001818  6a236d30  vor.u.mh vr6{mr0}, r26, vr6
00181c  7e8000e0  vmmov mr0, r1
001820  9f008ff0  addli r1, r30, -1984
001824  6aa36c30  vor.u.mh vr6{mr0}, r25, vr6
001828  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00182c  9f008ff2  addli r1, r30, -1728
001830  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
001834  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001838  9f000010  addli r1, zero, 2048
00183c  7e8000e0  vmmov mr0, r1
001840  9f000020  addli r1, zero, 4096
001844  6a236c30  vor.u.mh vr6{mr0}, r24, vr6
001848  7e8000e0  vmmov mr0, r1
00184c  9f000040  addli r1, zero, 8192
001850  0e111102  vmul.f.mz.rn vr2{mr1}, vr2, vr1
001854  6a236b30  vor.u.mh vr6{mr0}, r22, vr6
001858  7e8000e0  vmmov mr0, r1
00185c  ab400000  lui r1, 4
001860  ee3022c2  vsrl.s.mz vr1{mr1}, vr4, vr2
001864  661401c0  vabs.f vr8, vr2
001868  6aa36130  vor.u.mh vr6{mr0}, r3, vr6
00186c  7e8000e0  vmmov mr0, r1
001870  ab800000  lui r1, 8
001874  eab01202  vand.s.mz vr1{mr1}, r5, vr1
001878  76a18142  vlt.u.mz mr2{mr1}, vr3, vr8
00187c  ab024000  lui r5, 1024
001880  6aa36730  vor.u.mh vr6{mr0}, r15, vr6
001884  7e8000e0  vmmov mr0, r1
001888  aba0aaaa  lui r1, 699050
00188c  e341fff5  loadli.w r3,  -1284(r30)
001890  fe0b01a0  vmmov r23, mr2
001894  9fa05015  addli r1, r1, 2730
001898  96301102  vadd.s.mz vr1{mr1}, vr2, vr1
00189c  6ab12222  vor.s.mz vr2{mr1}, r5, vr2
0018a0  6a236930  vor.u.mh vr6{mr0}, r18, vr6
0018a4  7e8000e0  vmmov mr0, r1
0018a8  e3407ff3  loadli.w r1,  -1604(r30)
0018ac  92b01102  vadd.s.mz vr1{mr1}, r3, vr1
0018b0  9bc1fb00  srli r3, r23, 15
0018b4  e2c26010  vscatter.mh vr6{mr0}, vr5{r1}
0018b8  9b811100  andi r3, r3, 1
0018bc  3bb00100  bneq r3, zero, 12
0018c0  7ab9f040  vextracti.s r18, 15(vr1)
0018c4  5b010000  j 8
0018c8  7a39f140  vextracti.s r18, 15(vr2)
0018cc  9bc1eb00  srli r3, r23, 14
0018d0  9b811100  andi r3, r3, 1
0018d4  3bb00100  bneq r3, zero, 12
0018d8  fab7e040  vextracti.s r15, 14(vr1)
0018dc  5b010000  j 8
0018e0  fa37e140  vextracti.s r15, 14(vr2)
0018e4  9bc1db00  srli r3, r23, 13
0018e8  9b811100  andi r3, r3, 1
0018ec  3bb00100  bneq r3, zero, 12
0018f0  fab1d040  vextracti.s r3, 13(vr1)
0018f4  5b010000  j 8
0018f8  fa31d140  vextracti.s r3, 13(vr2)
0018fc  9bc2cb00  srli r5, r23, 12
001900  9b821200  andi r5, r5, 1
001904  3bb00200  bneq r5, zero, 12
001908  7abbc040  vextracti.s r22, 12(vr1)
00190c  5b010000  j 8
001910  7a3bc140  vextracti.s r22, 12(vr2)
001914  9bc2bb00  srli r5, r23, 11
001918  9b821200  andi r5, r5, 1
00191c  3bb00200  bneq r5, zero, 12
001920  7abcb040  vextracti.s r24, 11(vr1)
001924  5b010000  j 8
001928  7a3cb140  vextracti.s r24, 11(vr2)
00192c  9bc2ab00  srli r5, r23, 10
001930  9b821200  andi r5, r5, 1
001934  3bb00200  bneq r5, zero, 12
001938  fabca040  vextracti.s r25, 10(vr1)
00193c  5b010000  j 8
001940  fa3ca140  vextracti.s r25, 10(vr2)
001944  9bc29b00  srli r5, r23, 9
001948  9b821200  andi r5, r5, 1
00194c  3bb00200  bneq r5, zero, 12
001950  7abd9040  vextracti.s r26, 9(vr1)
001954  5b010000  j 8
001958  7a3d9140  vextracti.s r26, 9(vr2)
00195c  9bc28b00  srli r5, r23, 8
001960  9b821200  andi r5, r5, 1
001964  3bb00200  bneq r5, zero, 12
001968  fab68040  vextracti.s r13, 8(vr1)
00196c  5b010000  j 8
001970  fa368140  vextracti.s r13, 8(vr2)
001974  9bc27b00  srli r5, r23, 7
001978  9b821200  andi r5, r5, 1
00197c  3bb00200  bneq r5, zero, 12
001980  7ab87040  vextracti.s r16, 7(vr1)
001984  5b010000  j 8
001988  7a387140  vextracti.s r16, 7(vr2)
00198c  9bc26b00  srli r5, r23, 6
001990  9b821200  andi r5, r5, 1
001994  3bb00200  bneq r5, zero, 12
001998  fab96040  vextracti.s r19, 6(vr1)
00199c  5b010000  j 8
0019a0  fa396140  vextracti.s r19, 6(vr2)
0019a4  9bc25b00  srli r5, r23, 5
0019a8  9b821200  andi r5, r5, 1
0019ac  3bb00200  bneq r5, zero, 12
0019b0  fabd5040  vextracti.s r27, 5(vr1)
0019b4  5b010000  j 8
0019b8  fa3d5140  vextracti.s r27, 5(vr2)
0019bc  9bc24b00  srli r5, r23, 4
0019c0  9b821200  andi r5, r5, 1
0019c4  3bb00200  bneq r5, zero, 12
0019c8  7abe4040  vextracti.s r28, 4(vr1)
0019cc  5b010000  j 8
0019d0  7a3e4140  vextracti.s r28, 4(vr2)
0019d4  9bc23b00  srli r5, r23, 3
0019d8  9b821200  andi r5, r5, 1
0019dc  3bb00200  bneq r5, zero, 12
0019e0  fab23040  vextracti.s r5, 3(vr1)
0019e4  5b010000  j 8
0019e8  fa323140  vextracti.s r5, 3(vr2)
0019ec  1bc32b00  srli r6, r23, 2
0019f0  1b031300  andi r6, r6, 1
0019f4  3b300300  bneq r6, zero, 12
0019f8  7ab32040  vextracti.s r6, 2(vr1)
0019fc  5b010000  j 8
001a00  7a332140  vextracti.s r6, 2(vr2)
001a04  9bc31b00  srli r7, r23, 1
001a08  9b831300  andi r7, r7, 1
001a0c  3be00300  bneq r7, zero, 24
001a10  fab31040  vextracti.s r7, 1(vr1)
001a14  9b8b1b00  andi r23, r23, 1
001a18  37e00b00  beq r23, zero, 24
001a1c  fa3b0140  vextracti.s r23, 0(vr2)
001a20  db020000  j 20
001a24  fa331140  vextracti.s r7, 1(vr2)
001a28  9b8b1b00  andi r23, r23, 1
001a2c  bbcf0bfe  bneq r23, zero, -16
001a30  fabb0040  vextracti.s r23, 0(vr1)
001a34  12330002  vadd.s.mz vr6{mr1}, zero, vr0
001a38  9f100000  addli r1, zero, 1
001a3c  7e8000e0  vmmov mr0, r1
001a40  9f200000  addli r1, zero, 2
001a44  6aa36b30  vor.u.mh vr6{mr0}, r23, vr6
001a48  7e8100e0  vmmov mr2, r1
001a4c  9f400000  addli r1, zero, 4
001a50  7e8000e0  vmmov mr0, r1
001a54  9f001000  addli r1, zero, 8
001a58  6aa36334  vor.u.mh vr6{mr2}, r7, vr6
001a5c  6a236330  vor.u.mh vr6{mr0}, r6, vr6
001a60  7e8000e0  vmmov mr0, r1
001a64  9f004000  addli r1, zero, 32
001a68  2b034000  lui r6, 1024
001a6c  6aa36230  vor.u.mh vr6{mr0}, r5, vr6
001a70  7e8000e0  vmmov mr0, r1
001a74  9f008000  addli r1, zero, 64
001a78  9f120000  addli r5, zero, 1
001a7c  6a236e36  vor.u.mh vr6{mr3}, r28, vr6
001a80  6aa36d30  vor.u.mh vr6{mr0}, r27, vr6
001a84  7e8000e0  vmmov mr0, r1
001a88  9f000001  addli r1, zero, 128
001a8c  6aa36930  vor.u.mh vr6{mr0}, r19, vr6
001a90  7e8000e0  vmmov mr0, r1
001a94  9f000002  addli r1, zero, 256
001a98  6a236830  vor.u.mh vr6{mr0}, r16, vr6
001a9c  7e8000e0  vmmov mr0, r1
001aa0  9f000004  addli r1, zero, 512
001aa4  6aa36630  vor.u.mh vr6{mr0}, r13, vr6
001aa8  7e8000e0  vmmov mr0, r1
001aac  9f000008  addli r1, zero, 1024
001ab0  6a236d30  vor.u.mh vr6{mr0}, r26, vr6
001ab4  7e8000e0  vmmov mr0, r1
001ab8  9f008ff1  addli r1, r30, -1856
001abc  6aa36c30  vor.u.mh vr6{mr0}, r25, vr6
001ac0  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001ac4  9f008ff3  addli r1, r30, -1600
001ac8  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
001acc  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001ad0  9f000010  addli r1, zero, 2048
001ad4  7e8000e0  vmmov mr0, r1
001ad8  9f000020  addli r1, zero, 4096
001adc  6a236c30  vor.u.mh vr6{mr0}, r24, vr6
001ae0  7e8000e0  vmmov mr0, r1
001ae4  9f000040  addli r1, zero, 8192
001ae8  0e111102  vmul.f.mz.rn vr2{mr1}, vr2, vr1
001aec  6a236b30  vor.u.mh vr6{mr0}, r22, vr6
001af0  7e8000e0  vmmov mr0, r1
001af4  ab400000  lui r1, 4
001af8  ee3022c2  vsrl.s.mz vr1{mr1}, vr4, vr2
001afc  661401c0  vabs.f vr8, vr2
001b00  6aa36130  vor.u.mh vr6{mr0}, r3, vr6
001b04  7e8000e0  vmmov mr0, r1
001b08  ab800000  lui r1, 8
001b0c  9f010ff6  addli r3, r30, -1280
001b10  9f814101  addli r3, r3, 160
001b14  eab01202  vand.s.mz vr1{mr1}, r5, vr1
001b18  76a18142  vlt.u.mz mr2{mr1}, vr3, vr8
001b1c  6aa36730  vor.u.mh vr6{mr0}, r15, vr6
001b20  e342fff5  loadli.w r5,  -1284(r30)
001b24  7e8000e0  vmmov mr0, r1
001b28  aba0aaaa  lui r1, 699050
001b2c  fe0b01a0  vmmov r23, mr2
001b30  9fa05015  addli r1, r1, 2730
001b34  96301102  vadd.s.mz vr1{mr1}, vr2, vr1
001b38  6a312322  vor.s.mz vr2{mr1}, r6, vr2
001b3c  6a236930  vor.u.mh vr6{mr0}, r18, vr6
001b40  7e8000e0  vmmov mr0, r1
001b44  92b01202  vadd.s.mz vr1{mr1}, r5, vr1
001b48  9bc2fb00  srli r5, r23, 15
001b4c  e2c26110  vscatter.mh vr6{mr0}, vr5{r3}
001b50  9b821200  andi r5, r5, 1
001b54  3bb00200  bneq r5, zero, 12
001b58  7ab9f040  vextracti.s r18, 15(vr1)
001b5c  5b010000  j 8
001b60  7a39f140  vextracti.s r18, 15(vr2)
001b64  9bc1eb00  srli r3, r23, 14
001b68  9b811100  andi r3, r3, 1
001b6c  3bb00100  bneq r3, zero, 12
001b70  fab7e040  vextracti.s r15, 14(vr1)
001b74  5b010000  j 8
001b78  fa37e140  vextracti.s r15, 14(vr2)
001b7c  9bc1db00  srli r3, r23, 13
001b80  9b811100  andi r3, r3, 1
001b84  3bb00100  bneq r3, zero, 12
001b88  fab1d040  vextracti.s r3, 13(vr1)
001b8c  5b010000  j 8
001b90  fa31d140  vextracti.s r3, 13(vr2)
001b94  9bc2cb00  srli r5, r23, 12
001b98  9b821200  andi r5, r5, 1
001b9c  3bb00200  bneq r5, zero, 12
001ba0  7abbc040  vextracti.s r22, 12(vr1)
001ba4  5b010000  j 8
001ba8  7a3bc140  vextracti.s r22, 12(vr2)
001bac  9bc2bb00  srli r5, r23, 11
001bb0  9b821200  andi r5, r5, 1
001bb4  3bb00200  bneq r5, zero, 12
001bb8  7abcb040  vextracti.s r24, 11(vr1)
001bbc  5b010000  j 8
001bc0  7a3cb140  vextracti.s r24, 11(vr2)
001bc4  9bc2ab00  srli r5, r23, 10
001bc8  9b821200  andi r5, r5, 1
001bcc  3bb00200  bneq r5, zero, 12
001bd0  fabca040  vextracti.s r25, 10(vr1)
001bd4  5b010000  j 8
001bd8  fa3ca140  vextracti.s r25, 10(vr2)
001bdc  9bc29b00  srli r5, r23, 9
001be0  9b821200  andi r5, r5, 1
001be4  3bb00200  bneq r5, zero, 12
001be8  7abd9040  vextracti.s r26, 9(vr1)
001bec  5b010000  j 8
001bf0  7a3d9140  vextracti.s r26, 9(vr2)
001bf4  9bc28b00  srli r5, r23, 8
001bf8  9b821200  andi r5, r5, 1
001bfc  3bb00200  bneq r5, zero, 12
001c00  fab68040  vextracti.s r13, 8(vr1)
001c04  5b010000  j 8
001c08  fa368140  vextracti.s r13, 8(vr2)
001c0c  9bc27b00  srli r5, r23, 7
001c10  9b821200  andi r5, r5, 1
001c14  3bb00200  bneq r5, zero, 12
001c18  7ab87040  vextracti.s r16, 7(vr1)
001c1c  5b010000  j 8
001c20  7a387140  vextracti.s r16, 7(vr2)
001c24  9bc26b00  srli r5, r23, 6
001c28  9b821200  andi r5, r5, 1
001c2c  3bb00200  bneq r5, zero, 12
001c30  fab96040  vextracti.s r19, 6(vr1)
001c34  5b010000  j 8
001c38  fa396140  vextracti.s r19, 6(vr2)
001c3c  9bc25b00  srli r5, r23, 5
001c40  9b821200  andi r5, r5, 1
001c44  3bb00200  bneq r5, zero, 12
001c48  fabd5040  vextracti.s r27, 5(vr1)
001c4c  5b010000  j 8
001c50  fa3d5140  vextracti.s r27, 5(vr2)
001c54  9bc24b00  srli r5, r23, 4
001c58  9b821200  andi r5, r5, 1
001c5c  3bb00200  bneq r5, zero, 12
001c60  7abe4040  vextracti.s r28, 4(vr1)
001c64  5b010000  j 8
001c68  7a3e4140  vextracti.s r28, 4(vr2)
001c6c  9bc23b00  srli r5, r23, 3
001c70  9b821200  andi r5, r5, 1
001c74  3bb00200  bneq r5, zero, 12
001c78  fab23040  vextracti.s r5, 3(vr1)
001c7c  5b010000  j 8
001c80  fa323140  vextracti.s r5, 3(vr2)
001c84  1bc32b00  srli r6, r23, 2
001c88  1b031300  andi r6, r6, 1
001c8c  3b300300  bneq r6, zero, 12
001c90  7ab32040  vextracti.s r6, 2(vr1)
001c94  5b010000  j 8
001c98  7a332140  vextracti.s r6, 2(vr2)
001c9c  9bc31b00  srli r7, r23, 1
001ca0  9b831300  andi r7, r7, 1
001ca4  3bb00300  bneq r7, zero, 12
001ca8  fab31040  vextracti.s r7, 1(vr1)
001cac  5b010000  j 8
001cb0  fa331140  vextracti.s r7, 1(vr2)
001cb4  0a137402  vmul.f.mz.rn vr6{mr1}, r8, vr7
001cb8  6304fff5  loadli.w r8,  -1288(r30)
001cbc  9f000ff2  addli r1, r30, -1792
001cc0  63007ff3  loadli.w zero,  -1608(r30)
001cc4  9b8b1b00  andi r23, r23, 1
001cc8  7e0000e0  vmmov mr0, zero
001ccc  17200000  xor zero, zero, zero
001cd0  12136402  vadd.f.mz.rn vr6{mr1}, r8, vr6
001cd4  6344eff5  loadli.w r8,  -1292(r30)
001cd8  63406ff3  loadli.w zero,  -1612(r30)
001cdc  0e137302  vmul.f.mz.rn vr6{mr1}, vr6, vr7
001ce0  12136402  vadd.f.mz.rn vr6{mr1}, r8, vr6
001ce4  6304eff5  loadli.w r8,  -1296(r30)
001ce8  0e137302  vmul.f.mz.rn vr6{mr1}, vr6, vr7
001cec  12136402  vadd.f.mz.rn vr6{mr1}, r8, vr6
001cf0  6344dff5  loadli.w r8,  -1300(r30)
001cf4  0e137302  vmul.f.mz.rn vr6{mr1}, vr6, vr7
001cf8  12136402  vadd.f.mz.rn vr6{mr1}, r8, vr6
001cfc  2b0480bf  lui r8, 784384
001d00  0e137302  vmul.f.mz.rn vr6{mr1}, vr6, vr7
001d04  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001d08  0e936302  vmul.f.mz.rn vr6{mr1}, vr7, vr6
001d0c  1a936802  vsub.f.mz.rn vr6{mr1}, r17, vr6
001d10  8a936800  vmul.f.mz.rn vr7{mr0}, r17, vr6
001d14  7e0000e0  vmmov mr0, zero
001d18  17200000  xor zero, zero, zero
001d1c  0a146400  vmul.f.mz.rn vr8{mr0}, r8, vr6
001d20  3bb00b00  bneq r23, zero, 12
001d24  fabb0040  vextracti.s r23, 0(vr1)
001d28  5b010000  j 8
001d2c  fa3b0140  vextracti.s r23, 0(vr2)
001d30  12330002  vadd.s.mz vr6{mr1}, zero, vr0
001d34  9f100000  addli r1, zero, 1
001d38  96908302  vadd.f.mz.rn vr1{mr1}, vr7, vr8
001d3c  1f040ff8  addli r8, r30, -1024
001d40  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
001d44  7e8000e0  vmmov mr0, r1
001d48  9f200000  addli r1, zero, 2
001d4c  6aa36b30  vor.u.mh vr6{mr0}, r23, vr6
001d50  7e8000e0  vmmov mr0, r1
001d54  9f400000  addli r1, zero, 4
001d58  6aa36330  vor.u.mh vr6{mr0}, r7, vr6
001d5c  7e8000e0  vmmov mr0, r1
001d60  9f001000  addli r1, zero, 8
001d64  6a236330  vor.u.mh vr6{mr0}, r6, vr6
001d68  7e8000e0  vmmov mr0, r1
001d6c  9f004000  addli r1, zero, 32
001d70  6aa36230  vor.u.mh vr6{mr0}, r5, vr6
001d74  7e8000e0  vmmov mr0, r1
001d78  9f008000  addli r1, zero, 64
001d7c  9f120000  addli r5, zero, 1
001d80  6a236e36  vor.u.mh vr6{mr3}, r28, vr6
001d84  6aa36d30  vor.u.mh vr6{mr0}, r27, vr6
001d88  7e8000e0  vmmov mr0, r1
001d8c  9f000001  addli r1, zero, 128
001d90  6aa36930  vor.u.mh vr6{mr0}, r19, vr6
001d94  7e8000e0  vmmov mr0, r1
001d98  9f000002  addli r1, zero, 256
001d9c  6a236830  vor.u.mh vr6{mr0}, r16, vr6
001da0  7e8000e0  vmmov mr0, r1
001da4  9f000004  addli r1, zero, 512
001da8  6aa36630  vor.u.mh vr6{mr0}, r13, vr6
001dac  7e8000e0  vmmov mr0, r1
001db0  9f000008  addli r1, zero, 1024
001db4  6a236d30  vor.u.mh vr6{mr0}, r26, vr6
001db8  7e8000e0  vmmov mr0, r1
001dbc  9f000ff4  addli r1, r30, -1536
001dc0  6aa36c30  vor.u.mh vr6{mr0}, r25, vr6
001dc4  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001dc8  9f000010  addli r1, zero, 2048
001dcc  7e8000e0  vmmov mr0, r1
001dd0  9f000020  addli r1, zero, 4096
001dd4  6a236c30  vor.u.mh vr6{mr0}, r24, vr6
001dd8  7e8000e0  vmmov mr0, r1
001ddc  9f000040  addli r1, zero, 8192
001de0  0e111102  vmul.f.mz.rn vr2{mr1}, vr2, vr1
001de4  6a236b30  vor.u.mh vr6{mr0}, r22, vr6
001de8  7e8000e0  vmmov mr0, r1
001dec  ab400000  lui r1, 4
001df0  ee3022c2  vsrl.s.mz vr1{mr1}, vr4, vr2
001df4  661201c0  vabs.f vr4, vr2
001df8  6aa36130  vor.u.mh vr6{mr0}, r3, vr6
001dfc  7e8000e0  vmmov mr0, r1
001e00  ab800000  lui r1, 8
001e04  eab01202  vand.s.mz vr1{mr1}, r5, vr1
001e08  ab024000  lui r5, 1024
001e0c  6aa36730  vor.u.mh vr6{mr0}, r15, vr6
001e10  76a04142  vlt.u.mz mr0{mr1}, vr3, vr4
001e14  e341fff5  loadli.w r3,  -1284(r30)
001e18  7e0b00a0  vmmov r22, mr0
001e1c  7e8000e0  vmmov mr0, r1
001e20  aba0aaaa  lui r1, 699050
001e24  96301102  vadd.s.mz vr1{mr1}, vr2, vr1
001e28  6ab12222  vor.s.mz vr2{mr1}, r5, vr2
001e2c  9fa05015  addli r1, r1, 2730
001e30  6a236930  vor.u.mh vr6{mr0}, r18, vr6
001e34  7e8000e0  vmmov mr0, r1
001e38  e340dff4  loadli.w r1,  -1428(r30)
001e3c  92b01102  vadd.s.mz vr1{mr1}, r3, vr1
001e40  9b41fb00  srli r3, r22, 15
001e44  9b811100  andi r3, r3, 1
001e48  e2c26010  vscatter.mh vr6{mr0}, vr5{r1}
001e4c  3bb00100  bneq r3, zero, 12
001e50  fab1f040  vextracti.s r3, 15(vr1)
001e54  5b010000  j 8
001e58  fa31f140  vextracti.s r3, 15(vr2)
001e5c  9b42eb00  srli r5, r22, 14
001e60  9b821200  andi r5, r5, 1
001e64  3bb00200  bneq r5, zero, 12
001e68  fab7e040  vextracti.s r15, 14(vr1)
001e6c  5b010000  j 8
001e70  fa37e140  vextracti.s r15, 14(vr2)
001e74  9b42db00  srli r5, r22, 13
001e78  9b821200  andi r5, r5, 1
001e7c  3bb00200  bneq r5, zero, 12
001e80  7ab9d040  vextracti.s r18, 13(vr1)
001e84  5b010000  j 8
001e88  7a39d140  vextracti.s r18, 13(vr2)
001e8c  9b42cb00  srli r5, r22, 12
001e90  9b821200  andi r5, r5, 1
001e94  3bb00200  bneq r5, zero, 12
001e98  fabbc040  vextracti.s r23, 12(vr1)
001e9c  5b010000  j 8
001ea0  fa3bc140  vextracti.s r23, 12(vr2)
001ea4  9b42bb00  srli r5, r22, 11
001ea8  9b821200  andi r5, r5, 1
001eac  3bb00200  bneq r5, zero, 12
001eb0  7abcb040  vextracti.s r24, 11(vr1)
001eb4  5b010000  j 8
001eb8  7a3cb140  vextracti.s r24, 11(vr2)
001ebc  9b42ab00  srli r5, r22, 10
001ec0  9b821200  andi r5, r5, 1
001ec4  3bb00200  bneq r5, zero, 12
001ec8  fabca040  vextracti.s r25, 10(vr1)
001ecc  5b010000  j 8
001ed0  fa3ca140  vextracti.s r25, 10(vr2)
001ed4  9b429b00  srli r5, r22, 9
001ed8  9b821200  andi r5, r5, 1
001edc  3bb00200  bneq r5, zero, 12
001ee0  fab69040  vextracti.s r13, 9(vr1)
001ee4  5b010000  j 8
001ee8  fa369140  vextracti.s r13, 9(vr2)
001eec  9b428b00  srli r5, r22, 8
001ef0  9b821200  andi r5, r5, 1
001ef4  3bb00200  bneq r5, zero, 12
001ef8  7ab88040  vextracti.s r16, 8(vr1)
001efc  5b010000  j 8
001f00  7a388140  vextracti.s r16, 8(vr2)
001f04  9b427b00  srli r5, r22, 7
001f08  9b821200  andi r5, r5, 1
001f0c  3bb00200  bneq r5, zero, 12
001f10  fab97040  vextracti.s r19, 7(vr1)
001f14  5b010000  j 8
001f18  fa397140  vextracti.s r19, 7(vr2)
001f1c  9b426b00  srli r5, r22, 6
001f20  9b821200  andi r5, r5, 1
001f24  3bb00200  bneq r5, zero, 12
001f28  7abd6040  vextracti.s r26, 6(vr1)
001f2c  5b010000  j 8
001f30  7a3d6140  vextracti.s r26, 6(vr2)
001f34  9b425b00  srli r5, r22, 5
001f38  9b821200  andi r5, r5, 1
001f3c  3bb00200  bneq r5, zero, 12
001f40  fabd5040  vextracti.s r27, 5(vr1)
001f44  5b010000  j 8
001f48  fa3d5140  vextracti.s r27, 5(vr2)
001f4c  9b424b00  srli r5, r22, 4
001f50  9b821200  andi r5, r5, 1
001f54  3bb00200  bneq r5, zero, 12
001f58  fab24040  vextracti.s r5, 4(vr1)
001f5c  5b010000  j 8
001f60  fa324140  vextracti.s r5, 4(vr2)
001f64  1b433b00  srli r6, r22, 3
001f68  1b031300  andi r6, r6, 1
001f6c  3b300300  bneq r6, zero, 12
001f70  7ab33040  vextracti.s r6, 3(vr1)
001f74  5b010000  j 8
001f78  7a333140  vextracti.s r6, 3(vr2)
001f7c  9b432b00  srli r7, r22, 2
001f80  9b831300  andi r7, r7, 1
001f84  3bb00300  bneq r7, zero, 12
001f88  fab32040  vextracti.s r7, 2(vr1)
001f8c  5b010000  j 8
001f90  fa332140  vextracti.s r7, 2(vr2)
001f94  1b4e1b00  srli r28, r22, 1
001f98  1b0e1e00  andi r28, r28, 1
001f9c  3b500e00  bneq r28, zero, 20
001fa0  7abe1040  vextracti.s r28, 1(vr1)
001fa4  1b0b1b00  andi r22, r22, 1
001fa8  b7080bf0  beq r22, zero, -7648
001fac  5b020000  j 16
001fb0  7a3e1140  vextracti.s r28, 1(vr2)
001fb4  1b0b1b00  andi r22, r22, 1
001fb8  37480bf0  beq r22, zero, -7664
001fbc  7a3b0140  vextracti.s r22, 0(vr2)
001fc0  db41fcff  j -7668
001fc4  9f0e8fed  addli sp, r30, -2368
001fc8  9f8e8e12  addli sp, sp, 2368
001fcc  00a00300  mfence { lm, sm, gm }
001fd0  00100000  exit
001fd4  00100000  exit
001fd8  00100000  exit
001fdc  00100000  exit
001fe0  00100000  exit
001fe4  00100000  exit
001fe8  00100000  exit
001fec  00100000  exit
001ff0  00100000  exit
001ff4  00100000  exit
001ff8  00100000  exit
001ffc  00100000  exit
002000  00100000  exit
002004  00100000  exit
002008  00100000  exit
00200c  00100000  exit
002010  00100000  exit
002014  00100000  exit
002018  00100000  exit
00201c  00100000  exit
002020  00100000  exit
002024  00100000  exit
002028  00100000  exit
00202c  00100000  exit
002030  00100000  exit
002034  00100000  exit
002038  00100000  exit
00203c  00100000  exit
002040  00100000  exit
002044  00100000  exit
002048  00100000  exit
00204c  00100000  exit
002050  00100000  exit
002054  00100000  exit
002058  00100000  exit
00205c  00100000  exit
002060  00100000  exit
002064  00100000  exit
002068  00100000  exit
00206c  00100000  exit
002070  00100000  exit
002074  00100000  exit
002078  00100000  exit
00207c  00100000  exit
002080  00100000  exit
002084  00100000  exit
002088  00100000  exit
00208c  00100000  exit
002090  00100000  exit
002094  00100000  exit
002098  00100000  exit
00209c  00100000  exit
0020a0  00100000  exit
0020a4  00100000  exit
0020a8  00100000  exit
0020ac  00100000  exit
0020b0  00100000  exit
0020b4  00100000  exit
0020b8  00100000  exit
0020bc  00100000  exit
0020c0  00100000  exit
0020c4  00100000  exit
0020c8  00100000  exit
0020cc  00100000  exit
0020d0  00100000  exit
0020d4  00100000  exit
0020d8  00100000  exit
0020dc  00100000  exit
0020e0  00100000  exit
0020e4  00100000  exit
0020e8  00100000  exit
0020ec  00100000  exit
0020f0  00100000  exit
0020f4  00100000  exit
0020f8  00100000  exit
0020fc  00100000  exit
002100  00100000  exit
002104  00100000  exit
002108  00100000  exit
00210c  00100000  exit
002110  00100000  exit
002114  00100000  exit
002118  00100000  exit
00211c  00100000  exit
002120  00100000  exit
002124  00100000  exit
002128  00100000  exit
00212c  00100000  exit
002130  00100000  exit
002134  00100000  exit
002138  00100000  exit
00213c  00100000  exit
002140  00100000  exit
002144  00100000  exit
002148  00100000  exit
00214c  00100000  exit
002150  00100000  exit
002154  00100000  exit
002158  00100000  exit
00215c  00100000  exit
002160  00100000  exit
002164  00100000  exit
002168  00100000  exit
00216c  00100000  exit
002170  00100000  exit
002174  00100000  exit
002178  00100000  exit
00217c  00100000  exit
002180  00100000  exit
002184  00100000  exit
002188  00100000  exit
00218c  00100000  exit
002190  00100000  exit
002194  00100000  exit
002198  00100000  exit
00219c  00100000  exit
0021a0  00100000  exit
0021a4  00100000  exit
0021a8  00100000  exit
0021ac  00100000  exit
0021b0  00100000  exit
0021b4  00100000  exit
0021b8  00100000  exit
0021bc  00100000  exit
0021c0  00100000  exit
0021c4  00100000  exit
0021c8  00100000  exit
0021cc  00100000  exit
0021d0  00100000  exit
0021d4  00100000  exit
0021d8  00100000  exit
0021dc  00100000  exit
0021e0  00100000  exit
0021e4  00100000  exit
0021e8  00100000  exit
0021ec  00100000  exit
0021f0  00100000  exit
0021f4  00100000  exit
0021f8  00100000  exit
0021fc  00100000  exit
002200  00100000  exit
002204  00100000  exit
002208  00100000  exit
00220c  00100000  exit
002210  00100000  exit
