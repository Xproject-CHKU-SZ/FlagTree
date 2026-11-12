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
0000dc  9f8e0ee4  addli sp, sp, -3584
0000e0  1f8f8e1b  addli r30, sp, 3520
0000e4  80550002  load_param_i r11, 0
0000e8  e3002f00  loadli.w r1,  16(r30)
0000ec  63412f00  loadli.w r2,  20(r30)
0000f0  e3013f00  loadli.w r3,  24(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  67451fe4  storeli.w r1, -3500(r30)
000100  cbc7b002  ble.s r1, r11, 1520
000104  80500102  load_param_i r1, 2
000108  00310002  core_id r2
00010c  1f02dfe4  addli r4, r30, -3480
000110  80d10002  load_param_i r3, 1
000114  9f08ffe4  addli r17, r30, -3464
000118  1f141000  addli r8, zero, 9
00011c  1f0a0fe8  addli r20, r30, -3072
000120  9f0a0ff8  addli r21, r30, -1024
000124  2b0b0100  lui r22, 16
000128  ab8b0000  lui r23, 8
00012c  9f2c1000  addli r25, zero, 10
000130  2b0d803f  lui r26, 260096
000134  9f7d0000  addli r27, zero, 7
000138  1f062000  addli r12, zero, 16
00013c  b3920028  sext_int2long r[6:7], r1
000140  abf03f00  lui r1, 1023
000144  b3170128  sext_int2long r[16:17], r2
000148  2b014000  lui r2, 1024
00014c  67053fe4  storeli.w r3, -3504(r30)
000150  b3960128  sext_int2long r[14:15], r3
000154  9b90f0ff  ori r1, r1, 4095
000158  b3840028  zext_int2long r[10:11], r1
00015c  b3000128  zext_int2long r[2:3], r2
000160  73301200  store.d r[2:3], 0(r4)
000164  9f000004  addli r1, zero, 512
000168  1f02cfe4  addli r4, r30, -3488
00016c  b3800028  zext_int2long r[2:3], r1
000170  73301200  store.d r[2:3], 0(r4)
000174  ab700000  lui r1, 7
000178  b3910528  sext_int2long r[4:5], r11
00017c  2bf17f00  lui r2, 2047
000180  1b9cf0ff  ori r24, r1, 4095
000184  abf080ff  lui r1, 1046543
000188  73b03800  store.d r[4:5], 0(r17)
00018c  9f01efe4  addli r3, r30, -3472
000190  9b13f1ff  ori r7, r2, 4095
000194  1f310000  addli r2, zero, 3
000198  1b9e00f8  ori r28, r1, 3968
00019c  ab007f00  lui r1, 2032
0001a0  73b09100  store.d r[10:11], 0(r3)
0001a4  9f01bfe4  addli r3, r30, -3496
0001a8  9b90f007  ori r1, r1, 127
0001ac  73b0d100  store.d r[14:15], 0(r3)
0001b0  5b030000  j 24
0001b4  e301afe4  loadli.w r3,  -3504(r30)
0001b8  8b953510  add.s r11, r11, r3
0001bc  e341afe4  loadli.w r3,  -3500(r30)
0001c0  3fa03500  blt.s r11, r3, 8
0001c4  dba50000  j 1324
0001c8  9f080000  addli r17, zero, 0
0001cc  db010000  j 12
0001d0  9f980800  addli r17, r17, 1
0001d4  b78fc8fe  beq r17, r12, -32
0001d8  b3810828  zext_int2long r[4:5], r17
0001dc  1f00ffe4  addli zero, r30, -3464
0001e0  8bb13220  mul.sl r[4:5], r[6:7], r[4:5]
0001e4  6b590000  load.d r[19:20], 0(zero)
0001e8  17200000  xor zero, zero, zero
0001ec  8ba1f110  add.ul r[4:5], r[4:5], r[16:17]
0001f0  8bb1d120  mul.sl r[4:5], r[4:5], r[14:15]
0001f4  8ba12111  add.ul r[4:5], r[4:5], r[19:20]
0001f8  17b98102  sll.d r[19:20], r[4:5], r8
0001fc  93b12405  setlt.sl r3, r[10:11], r[19:20]
000200  3bcf01fe  bneq r3, zero, -48
000204  1f04dfe4  addli r8, r30, -3480
000208  1f05cfe4  addli r10, r30, -3488
00020c  eb560f00  load.d r[14:15], 0(r30)
000210  eb510400  load.d r[4:5], 0(r8)
000214  33040028  zext_int2long r[9:10], zero
000218  8bb12119  sub.sl r[4:5], r[4:5], r[19:20]
00021c  8bb18148  max.sl r[4:5], r[4:5], r[9:10]
000220  6b540500  load.d r[9:10], 0(r10)
000224  2b0500f0  lui r10, 983040
000228  8bb18140  min.sl r[4:5], r[4:5], r[9:10]
00022c  1f240000  addli r8, zero, 2
000230  17348902  sll.d r[9:10], r[19:20], r8
000234  1bb62100  slli r12, r3, 2
000238  1715a600  or r10, r12, r10
00023c  0ba48610  add.ul r[9:10], r[14:15], r[9:10]
000240  1f160000  addli r12, zero, 1
000244  7f254401  l_gm2lm r10, r20, 0(r[9:10])
000248  1f040000  addli r8, zero, 0
00024c  00a00000  mfence { lm }
000250  9b34a400  slli r9, r8, 10
000254  1f050fe5  addli r10, r30, -3456
000258  1b349400  slli r8, r8, 9
00025c  8b149a10  add.s r9, r20, r9
000260  0b948a10  add.s r8, r21, r8
000264  42900402  vload_mask16.mz vr0{mr1}, 0(r9)
000268  c2908402  vload_mask16.mz vr1{mr1}, 64(r9)
00026c  42910403  vload_mask16.mz vr2{mr1}, 128(r9)
000270  c2918403  vload_mask16.mz vr3{mr1}, 192(r9)
000274  c2950422  vload_mask16.mz vr11{mr1}, 256(r9)
000278  42958422  vload_mask16.mz vr10{mr1}, 320(r9)
00027c  42940423  vload_mask16.mz vr8{mr1}, 384(r9)
000280  c2948423  vload_mask16.mz vr9{mr1}, 448(r9)
000284  42930442  vload_mask16.mz vr6{mr1}, 512(r9)
000288  c2938442  vload_mask16.mz vr7{mr1}, 576(r9)
00028c  6a220b02  vand.u.mz vr4{mr1}, r22, vr0
000290  ea221b02  vand.u.mz vr5{mr1}, r22, vr1
000294  72204002  veq.u.mz mr0{mr1}, zero, vr4
000298  42920443  vload_mask16.mz vr4{mr1}, 640(r9)
00029c  72215002  veq.u.mz mr2{mr1}, zero, vr5
0002a0  fe010040  vmnot mr3, mr0
0002a4  46104502  vstore_mask16.mz vr4{mr1}, 0(r10)
0002a8  1f058fe5  addli r10, r30, -3392
0002ac  42928443  vload_mask16.mz vr4{mr1}, 704(r9)
0002b0  46104502  vstore_mask16.mz vr4{mr1}, 0(r10)
0002b4  1f050fe6  addli r10, r30, -3328
0002b8  42920462  vload_mask16.mz vr4{mr1}, 768(r9)
0002bc  46104502  vstore_mask16.mz vr4{mr1}, 0(r10)
0002c0  1f058fe6  addli r10, r30, -3264
0002c4  42928462  vload_mask16.mz vr4{mr1}, 832(r9)
0002c8  46104502  vstore_mask16.mz vr4{mr1}, 0(r10)
0002cc  1f050fe7  addli r10, r30, -3200
0002d0  42920463  vload_mask16.mz vr4{mr1}, 896(r9)
0002d4  46104502  vstore_mask16.mz vr4{mr1}, 0(r10)
0002d8  42928463  vload_mask16.mz vr4{mr1}, 960(r9)
0002dc  9f048fe7  addli r9, r30, -3136
0002e0  46904402  vstore_mask16.mz vr4{mr1}, 0(r9)
0002e4  12a00b16  vadd.u.mh vr0{mr3}, r23, vr0
0002e8  fe010140  vmnot mr3, mr2
0002ec  9f048400  addli r9, r8, 64
0002f0  92a01b16  vadd.u.mh vr1{mr3}, r23, vr1
0002f4  12200c10  vadd.u.mh vr0{mr0}, r24, vr0
0002f8  92201c14  vadd.u.mh vr1{mr2}, r24, vr1
0002fc  eab20cc2  vsrl.s.mz vr5{mr1}, r25, vr0
000300  ea225d22  vor.u.mz vr5{mr1}, r26, vr5
000304  6aa20302  vand.u.mz vr4{mr1}, r7, vr0
000308  6ab01cc2  vsrl.s.mz vr0{mr1}, r25, vr1
00030c  eaa01302  vand.u.mz vr1{mr1}, r7, vr1
000310  6a200d22  vor.u.mz vr0{mr1}, r26, vr0
000314  6a224d22  vor.u.mz vr4{mr1}, r26, vr4
000318  ea201d22  vor.u.mz vr1{mr1}, r26, vr1
00031c  06500020  vfloat2fp16_h.rz vr0, vr0
000320  86d00020  vfloat2fp16_h.rz vr1, vr1
000324  06900220  vfloat2fp16_l.rz vr0, vr5
000328  86100220  vfloat2fp16_l.rz vr1, vr4
00032c  6aa00da2  vsll.u.mz vr0{mr1}, r27, vr0
000330  6a223b02  vand.u.mz vr4{mr1}, r22, vr3
000334  ea2011c2  vsrl.u.mz vr1{mr1}, r2, vr1
000338  6a200e02  vand.u.mz vr0{mr1}, r28, vr0
00033c  72204002  veq.u.mz mr0{mr1}, zero, vr4
000340  eaa01002  vand.u.mz vr1{mr1}, r1, vr1
000344  6ea00022  vor.u.mz vr0{mr1}, vr1, vr0
000348  ea202b02  vand.u.mz vr1{mr1}, r22, vr2
00034c  46000402  vstore.mz vr0{mr1}, 0(r8)
000350  72211002  veq.u.mz mr2{mr1}, zero, vr1
000354  fe010140  vmnot mr3, mr2
000358  12a12b16  vadd.u.mh vr2{mr3}, r23, vr2
00035c  fe010040  vmnot mr3, mr0
000360  92a13b16  vadd.u.mh vr3{mr3}, r23, vr3
000364  12212c14  vadd.u.mh vr2{mr2}, r24, vr2
000368  92213c10  vadd.u.mh vr3{mr0}, r24, vr3
00036c  6ab02cc2  vsrl.s.mz vr0{mr1}, r25, vr2
000370  6a200d22  vor.u.mz vr0{mr1}, r26, vr0
000374  eaa02302  vand.u.mz vr1{mr1}, r7, vr2
000378  6ab13cc2  vsrl.s.mz vr2{mr1}, r25, vr3
00037c  eaa13302  vand.u.mz vr3{mr1}, r7, vr3
000380  6a212d22  vor.u.mz vr2{mr1}, r26, vr2
000384  06100020  vfloat2fp16_l.rz vr0, vr0
000388  ea201d22  vor.u.mz vr1{mr1}, r26, vr1
00038c  ea213d22  vor.u.mz vr3{mr1}, r26, vr3
000390  06500120  vfloat2fp16_h.rz vr0, vr2
000394  6a21ab02  vand.u.mz vr2{mr1}, r22, vr10
000398  86900020  vfloat2fp16_l.rz vr1, vr1
00039c  6aa00da2  vsll.u.mz vr0{mr1}, r27, vr0
0003a0  72202002  veq.u.mz mr0{mr1}, zero, vr2
0003a4  86d00120  vfloat2fp16_h.rz vr1, vr3
0003a8  6a200e02  vand.u.mz vr0{mr1}, r28, vr0
0003ac  ea2011c2  vsrl.u.mz vr1{mr1}, r2, vr1
0003b0  eaa01002  vand.u.mz vr1{mr1}, r1, vr1
0003b4  6ea00022  vor.u.mz vr0{mr1}, vr1, vr0
0003b8  ea20bb02  vand.u.mz vr1{mr1}, r22, vr11
0003bc  46800402  vstore.mz vr0{mr1}, 0(r9)
0003c0  9f040401  addli r9, r8, 128
0003c4  72211002  veq.u.mz mr2{mr1}, zero, vr1
0003c8  fe010140  vmnot mr3, mr2
0003cc  92a5bb16  vadd.u.mh vr11{mr3}, r23, vr11
0003d0  fe010040  vmnot mr3, mr0
0003d4  12a5ab16  vadd.u.mh vr10{mr3}, r23, vr10
0003d8  9225bc14  vadd.u.mh vr11{mr2}, r24, vr11
0003dc  1225ac10  vadd.u.mh vr10{mr0}, r24, vr10
0003e0  6ab0bcc2  vsrl.s.mz vr0{mr1}, r25, vr11
0003e4  6ab1acc2  vsrl.s.mz vr2{mr1}, r25, vr10
0003e8  6a200d22  vor.u.mz vr0{mr1}, r26, vr0
0003ec  6a212d22  vor.u.mz vr2{mr1}, r26, vr2
0003f0  eaa0b302  vand.u.mz vr1{mr1}, r7, vr11
0003f4  eaa1a302  vand.u.mz vr3{mr1}, r7, vr10
0003f8  06100020  vfloat2fp16_l.rz vr0, vr0
0003fc  ea201d22  vor.u.mz vr1{mr1}, r26, vr1
000400  ea213d22  vor.u.mz vr3{mr1}, r26, vr3
000404  06500120  vfloat2fp16_h.rz vr0, vr2
000408  6a218b02  vand.u.mz vr2{mr1}, r22, vr8
00040c  86900020  vfloat2fp16_l.rz vr1, vr1
000410  6aa00da2  vsll.u.mz vr0{mr1}, r27, vr0
000414  72202002  veq.u.mz mr0{mr1}, zero, vr2
000418  fe010040  vmnot mr3, mr0
00041c  86d00120  vfloat2fp16_h.rz vr1, vr3
000420  ea219b02  vand.u.mz vr3{mr1}, r22, vr9
000424  6a200e02  vand.u.mz vr0{mr1}, r28, vr0
000428  ea2011c2  vsrl.u.mz vr1{mr1}, r2, vr1
00042c  72213002  veq.u.mz mr2{mr1}, zero, vr3
000430  eaa01002  vand.u.mz vr1{mr1}, r1, vr1
000434  6ea00022  vor.u.mz vr0{mr1}, vr1, vr0
000438  46800402  vstore.mz vr0{mr1}, 0(r9)
00043c  12a48b16  vadd.u.mh vr8{mr3}, r23, vr8
000440  fe010140  vmnot mr3, mr2
000444  9f048401  addli r9, r8, 192
000448  92a49b16  vadd.u.mh vr9{mr3}, r23, vr9
00044c  12248c10  vadd.u.mh vr8{mr0}, r24, vr8
000450  92249c14  vadd.u.mh vr9{mr2}, r24, vr9
000454  6ab08cc2  vsrl.s.mz vr0{mr1}, r25, vr8
000458  eab09cc2  vsrl.s.mz vr1{mr1}, r25, vr9
00045c  6a200d22  vor.u.mz vr0{mr1}, r26, vr0
000460  ea201d22  vor.u.mz vr1{mr1}, r26, vr1
000464  6aa18302  vand.u.mz vr2{mr1}, r7, vr8
000468  eaa19302  vand.u.mz vr3{mr1}, r7, vr9
00046c  06100020  vfloat2fp16_l.rz vr0, vr0
000470  6a212d22  vor.u.mz vr2{mr1}, r26, vr2
000474  ea213d22  vor.u.mz vr3{mr1}, r26, vr3
000478  06d00020  vfloat2fp16_h.rz vr0, vr1
00047c  86100120  vfloat2fp16_l.rz vr1, vr2
000480  6a216b02  vand.u.mz vr2{mr1}, r22, vr6
000484  6aa00da2  vsll.u.mz vr0{mr1}, r27, vr0
000488  86d00120  vfloat2fp16_h.rz vr1, vr3
00048c  ea217b02  vand.u.mz vr3{mr1}, r22, vr7
000490  72202002  veq.u.mz mr0{mr1}, zero, vr2
000494  fe010040  vmnot mr3, mr0
000498  6a200e02  vand.u.mz vr0{mr1}, r28, vr0
00049c  ea2011c2  vsrl.u.mz vr1{mr1}, r2, vr1
0004a0  72213002  veq.u.mz mr2{mr1}, zero, vr3
0004a4  eaa01002  vand.u.mz vr1{mr1}, r1, vr1
0004a8  6ea00022  vor.u.mz vr0{mr1}, vr1, vr0
0004ac  46800402  vstore.mz vr0{mr1}, 0(r9)
0004b0  12a36b16  vadd.u.mh vr6{mr3}, r23, vr6
0004b4  fe010140  vmnot mr3, mr2
0004b8  9f040fe5  addli r9, r30, -3456
0004bc  92a37b16  vadd.u.mh vr7{mr3}, r23, vr7
0004c0  12236c10  vadd.u.mh vr6{mr0}, r24, vr6
0004c4  92237c14  vadd.u.mh vr7{mr2}, r24, vr7
0004c8  6ab06cc2  vsrl.s.mz vr0{mr1}, r25, vr6
0004cc  eab07cc2  vsrl.s.mz vr1{mr1}, r25, vr7
0004d0  42920402  vload_mask16.mz vr4{mr1}, 0(r9)
0004d4  9f048fe5  addli r9, r30, -3392
0004d8  6a200d22  vor.u.mz vr0{mr1}, r26, vr0
0004dc  ea201d22  vor.u.mz vr1{mr1}, r26, vr1
0004e0  c2920402  vload_mask16.mz vr5{mr1}, 0(r9)
0004e4  9f040402  addli r9, r8, 256
0004e8  6aa16302  vand.u.mz vr2{mr1}, r7, vr6
0004ec  eaa17302  vand.u.mz vr3{mr1}, r7, vr7
0004f0  06100020  vfloat2fp16_l.rz vr0, vr0
0004f4  6a212d22  vor.u.mz vr2{mr1}, r26, vr2
0004f8  ea213d22  vor.u.mz vr3{mr1}, r26, vr3
0004fc  06d00020  vfloat2fp16_h.rz vr0, vr1
000500  86100120  vfloat2fp16_l.rz vr1, vr2
000504  6a214b02  vand.u.mz vr2{mr1}, r22, vr4
000508  6aa00da2  vsll.u.mz vr0{mr1}, r27, vr0
00050c  86d00120  vfloat2fp16_h.rz vr1, vr3
000510  ea215b02  vand.u.mz vr3{mr1}, r22, vr5
000514  72202002  veq.u.mz mr0{mr1}, zero, vr2
000518  fe010040  vmnot mr3, mr0
00051c  6a200e02  vand.u.mz vr0{mr1}, r28, vr0
000520  ea2011c2  vsrl.u.mz vr1{mr1}, r2, vr1
000524  72213002  veq.u.mz mr2{mr1}, zero, vr3
000528  eaa01002  vand.u.mz vr1{mr1}, r1, vr1
00052c  6ea00022  vor.u.mz vr0{mr1}, vr1, vr0
000530  46800402  vstore.mz vr0{mr1}, 0(r9)
000534  12a24b16  vadd.u.mh vr4{mr3}, r23, vr4
000538  fe010140  vmnot mr3, mr2
00053c  9f040fe6  addli r9, r30, -3328
000540  92a25b16  vadd.u.mh vr5{mr3}, r23, vr5
000544  12224c10  vadd.u.mh vr4{mr0}, r24, vr4
000548  92225c14  vadd.u.mh vr5{mr2}, r24, vr5
00054c  6ab04cc2  vsrl.s.mz vr0{mr1}, r25, vr4
000550  eab05cc2  vsrl.s.mz vr1{mr1}, r25, vr5
000554  6a200d22  vor.u.mz vr0{mr1}, r26, vr0
000558  ea201d22  vor.u.mz vr1{mr1}, r26, vr1
00055c  6aa14302  vand.u.mz vr2{mr1}, r7, vr4
000560  42920402  vload_mask16.mz vr4{mr1}, 0(r9)
000564  9f048fe6  addli r9, r30, -3264
000568  eaa15302  vand.u.mz vr3{mr1}, r7, vr5
00056c  06100020  vfloat2fp16_l.rz vr0, vr0
000570  c2920402  vload_mask16.mz vr5{mr1}, 0(r9)
000574  9f048402  addli r9, r8, 320
000578  6a212d22  vor.u.mz vr2{mr1}, r26, vr2
00057c  ea213d22  vor.u.mz vr3{mr1}, r26, vr3
000580  06d00020  vfloat2fp16_h.rz vr0, vr1
000584  86100120  vfloat2fp16_l.rz vr1, vr2
000588  6a214b02  vand.u.mz vr2{mr1}, r22, vr4
00058c  6aa00da2  vsll.u.mz vr0{mr1}, r27, vr0
000590  86d00120  vfloat2fp16_h.rz vr1, vr3
000594  ea215b02  vand.u.mz vr3{mr1}, r22, vr5
000598  72202002  veq.u.mz mr0{mr1}, zero, vr2
00059c  fe010040  vmnot mr3, mr0
0005a0  6a200e02  vand.u.mz vr0{mr1}, r28, vr0
0005a4  ea2011c2  vsrl.u.mz vr1{mr1}, r2, vr1
0005a8  72213002  veq.u.mz mr2{mr1}, zero, vr3
0005ac  eaa01002  vand.u.mz vr1{mr1}, r1, vr1
0005b0  6ea00022  vor.u.mz vr0{mr1}, vr1, vr0
0005b4  46800402  vstore.mz vr0{mr1}, 0(r9)
0005b8  12a24b16  vadd.u.mh vr4{mr3}, r23, vr4
0005bc  fe010140  vmnot mr3, mr2
0005c0  9f040fe7  addli r9, r30, -3200
0005c4  92a25b16  vadd.u.mh vr5{mr3}, r23, vr5
0005c8  12224c10  vadd.u.mh vr4{mr0}, r24, vr4
0005cc  92225c14  vadd.u.mh vr5{mr2}, r24, vr5
0005d0  6ab04cc2  vsrl.s.mz vr0{mr1}, r25, vr4
0005d4  eab05cc2  vsrl.s.mz vr1{mr1}, r25, vr5
0005d8  6a200d22  vor.u.mz vr0{mr1}, r26, vr0
0005dc  ea201d22  vor.u.mz vr1{mr1}, r26, vr1
0005e0  6aa14302  vand.u.mz vr2{mr1}, r7, vr4
0005e4  42920402  vload_mask16.mz vr4{mr1}, 0(r9)
0005e8  9f048fe7  addli r9, r30, -3136
0005ec  eaa15302  vand.u.mz vr3{mr1}, r7, vr5
0005f0  06100020  vfloat2fp16_l.rz vr0, vr0
0005f4  c2920402  vload_mask16.mz vr5{mr1}, 0(r9)
0005f8  9f040403  addli r9, r8, 384
0005fc  1f048403  addli r8, r8, 448
000600  6a212d22  vor.u.mz vr2{mr1}, r26, vr2
000604  ea213d22  vor.u.mz vr3{mr1}, r26, vr3
000608  06d00020  vfloat2fp16_h.rz vr0, vr1
00060c  86100120  vfloat2fp16_l.rz vr1, vr2
000610  6a214b02  vand.u.mz vr2{mr1}, r22, vr4
000614  6aa00da2  vsll.u.mz vr0{mr1}, r27, vr0
000618  86d00120  vfloat2fp16_h.rz vr1, vr3
00061c  ea215b02  vand.u.mz vr3{mr1}, r22, vr5
000620  72202002  veq.u.mz mr0{mr1}, zero, vr2
000624  fe010040  vmnot mr3, mr0
000628  6a200e02  vand.u.mz vr0{mr1}, r28, vr0
00062c  ea2011c2  vsrl.u.mz vr1{mr1}, r2, vr1
000630  72213002  veq.u.mz mr2{mr1}, zero, vr3
000634  eaa01002  vand.u.mz vr1{mr1}, r1, vr1
000638  6ea00022  vor.u.mz vr0{mr1}, vr1, vr0
00063c  46800402  vstore.mz vr0{mr1}, 0(r9)
000640  12a24b16  vadd.u.mh vr4{mr3}, r23, vr4
000644  fe010140  vmnot mr3, mr2
000648  9b041600  andi r9, r12, 1
00064c  1f060000  addli r12, zero, 0
000650  92a25b16  vadd.u.mh vr5{mr3}, r23, vr5
000654  12224c10  vadd.u.mh vr4{mr0}, r24, vr4
000658  92225c14  vadd.u.mh vr5{mr2}, r24, vr5
00065c  6ab04cc2  vsrl.s.mz vr0{mr1}, r25, vr4
000660  eab05cc2  vsrl.s.mz vr1{mr1}, r25, vr5
000664  6a200d22  vor.u.mz vr0{mr1}, r26, vr0
000668  ea201d22  vor.u.mz vr1{mr1}, r26, vr1
00066c  6aa14302  vand.u.mz vr2{mr1}, r7, vr4
000670  eaa15302  vand.u.mz vr3{mr1}, r7, vr5
000674  06100020  vfloat2fp16_l.rz vr0, vr0
000678  6a212d22  vor.u.mz vr2{mr1}, r26, vr2
00067c  ea213d22  vor.u.mz vr3{mr1}, r26, vr3
000680  06d00020  vfloat2fp16_h.rz vr0, vr1
000684  86100120  vfloat2fp16_l.rz vr1, vr2
000688  6aa00da2  vsll.u.mz vr0{mr1}, r27, vr0
00068c  86d00120  vfloat2fp16_h.rz vr1, vr3
000690  6a200e02  vand.u.mz vr0{mr1}, r28, vr0
000694  ea2011c2  vsrl.u.mz vr1{mr1}, r2, vr1
000698  eaa01002  vand.u.mz vr1{mr1}, r1, vr1
00069c  6ea00022  vor.u.mz vr0{mr1}, vr1, vr0
0006a0  46000402  vstore.mz vr0{mr1}, 0(r8)
0006a4  1f140000  addli r8, zero, 1
0006a8  00a00000  mfence { lm }
0006ac  bb9e04fc  bneq r9, zero, -1116
0006b0  1f140000  addli r8, zero, 1
0006b4  9bb11100  slli r3, r3, 1
0006b8  2b0200f0  lui r4, 983040
0006bc  1f062000  addli r12, zero, 16
0006c0  17348902  sll.d r[9:10], r[19:20], r8
0006c4  6b598f00  load.d r[19:20], 8(r30)
0006c8  97914100  or r3, r3, r4
0006cc  0b248910  add.ul r[9:10], r[19:20], r[9:10]
0006d0  ff315401  s_lm2gm r3, r21, 0(r[9:10])
0006d4  9f01efe4  addli r3, r30, -3472
0006d8  1f141000  addli r8, zero, 9
0006dc  00a00000  mfence { lm }
0006e0  ebd40100  load.d r[10:11], 0(r3)
0006e4  9f01bfe4  addli r3, r30, -3496
0006e8  ebd60100  load.d r[14:15], 0(r3)
0006ec  db5cffff  j -1308
0006f0  9f0e8fe4  addli sp, r30, -3520
0006f4  9f8e8e1b  addli sp, sp, 3520
0006f8  00a00300  mfence { lm, sm, gm }
0006fc  00100000  exit
000700  00100000  exit
000704  00100000  exit
000708  00100000  exit
00070c  00100000  exit
000710  00100000  exit
000714  00100000  exit
000718  00100000  exit
00071c  00100000  exit
000720  00100000  exit
000724  00100000  exit
000728  00100000  exit
00072c  00100000  exit
000730  00100000  exit
000734  00100000  exit
000738  00100000  exit
00073c  00100000  exit
000740  00100000  exit
000744  00100000  exit
000748  00100000  exit
00074c  00100000  exit
000750  00100000  exit
000754  00100000  exit
000758  00100000  exit
00075c  00100000  exit
000760  00100000  exit
000764  00100000  exit
000768  00100000  exit
00076c  00100000  exit
000770  00100000  exit
000774  00100000  exit
000778  00100000  exit
00077c  00100000  exit
000780  00100000  exit
000784  00100000  exit
000788  00100000  exit
00078c  00100000  exit
000790  00100000  exit
000794  00100000  exit
000798  00100000  exit
00079c  00100000  exit
0007a0  00100000  exit
0007a4  00100000  exit
0007a8  00100000  exit
0007ac  00100000  exit
0007b0  00100000  exit
0007b4  00100000  exit
0007b8  00100000  exit
0007bc  00100000  exit
0007c0  00100000  exit
0007c4  00100000  exit
0007c8  00100000  exit
0007cc  00100000  exit
0007d0  00100000  exit
0007d4  00100000  exit
0007d8  00100000  exit
0007dc  00100000  exit
0007e0  00100000  exit
0007e4  00100000  exit
0007e8  00100000  exit
0007ec  00100000  exit
0007f0  00100000  exit
0007f4  00100000  exit
0007f8  00100000  exit
0007fc  00100000  exit
000800  00100000  exit
000804  00100000  exit
000808  00100000  exit
00080c  00100000  exit
000810  00100000  exit
000814  00100000  exit
000818  00100000  exit
00081c  00100000  exit
000820  00100000  exit
000824  00100000  exit
000828  00100000  exit
00082c  00100000  exit
000830  00100000  exit
000834  00100000  exit
000838  00100000  exit
00083c  00100000  exit
000840  00100000  exit
000844  00100000  exit
000848  00100000  exit
00084c  00100000  exit
000850  00100000  exit
000854  00100000  exit
000858  00100000  exit
00085c  00100000  exit
000860  00100000  exit
000864  00100000  exit
000868  00100000  exit
00086c  00100000  exit
000870  00100000  exit
000874  00100000  exit
000878  00100000  exit
00087c  00100000  exit
000880  00100000  exit
000884  00100000  exit
000888  00100000  exit
00088c  00100000  exit
000890  00100000  exit
000894  00100000  exit
000898  00100000  exit
00089c  00100000  exit
0008a0  00100000  exit
0008a4  00100000  exit
0008a8  00100000  exit
0008ac  00100000  exit
0008b0  00100000  exit
0008b4  00100000  exit
0008b8  00100000  exit
0008bc  00100000  exit
0008c0  00100000  exit
0008c4  00100000  exit
0008c8  00100000  exit
0008cc  00100000  exit
0008d0  00100000  exit
0008d4  00100000  exit
0008d8  00100000  exit
0008dc  00100000  exit
0008e0  00100000  exit
0008e4  00100000  exit
0008e8  00100000  exit
0008ec  00100000  exit
0008f0  00100000  exit
0008f4  00100000  exit
0008f8  00100000  exit
0008fc  00100000  exit
000900  00100000  exit
000904  00100000  exit
000908  00100000  exit
00090c  00100000  exit
000910  00100000  exit
000914  00100000  exit
000918  00100000  exit
00091c  00100000  exit
000920  00100000  exit
000924  00100000  exit
000928  00100000  exit
00092c  00100000  exit
000930  00100000  exit
000934  00100000  exit
000938  00100000  exit
00093c  00100000  exit
