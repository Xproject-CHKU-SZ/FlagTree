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
0000dc  9f8e8ee4  addli sp, sp, -3520
0000e0  1f8f0e1b  addli r30, sp, 3456
0000e4  e3002f00  loadli.w r1,  16(r30)
0000e8  63412f00  loadli.w r2,  20(r30)
0000ec  e3013f00  loadli.w r3,  24(r30)
0000f0  0b111120  mul.s r2, r2, r1
0000f4  80500002  load_param_i r1, 0
0000f8  0b113120  mul.s r2, r2, r3
0000fc  cb051102  ble.s r2, r1, 1376
000100  80d10002  load_param_i r3, 1
000104  00320002  core_id r4
000108  b3940028  sext_int2long r[10:11], r1
00010c  33060028  zext_int2long r[13:14], zero
000110  6b578f00  load.d r[15:16], 8(r30)
000114  abf980ff  lui r19, 1046543
000118  2bfa7f00  lui r20, 2047
00011c  2b0b7f00  lui r22, 2032
000120  1f790000  addli r18, zero, 7
000124  9f3a0000  addli r21, zero, 3
000128  b3920128  sext_int2long r[6:7], r3
00012c  b3130228  sext_int2long r[8:9], r4
000130  9b9909f8  ori r19, r19, 3968
000134  1b1afaff  ori r20, r20, 4095
000138  1b1bfb07  ori r22, r22, 127
00013c  0bb25320  mul.sl r[5:6], r[8:9], r[6:7]
000140  1f131000  addli r6, zero, 9
000144  ab030500  lui r7, 80
000148  1f240000  addli r8, zero, 2
00014c  0b229210  add.ul r[5:6], r[5:6], r[10:11]
000150  9f040004  addli r9, zero, 512
000154  17356202  sll.d r[11:12], r[5:6], r6
000158  33820328  zext_int2long r[5:6], r7
00015c  6b530f00  load.d r[7:8], 0(r30)
000160  0b32a218  sub.sl r[5:6], r[5:6], r[11:12]
000164  0b32c248  max.sl r[5:6], r[5:6], r[13:14]
000168  33860428  zext_int2long r[13:14], r9
00016c  17348502  sll.d r[9:10], r[11:12], r8
000170  0b36c240  min.sl r[13:14], r[5:6], r[13:14]
000174  0b228310  add.ul r[5:6], r[7:8], r[9:10]
000178  9f130000  addli r7, zero, 1
00017c  2bf40400  lui r8, 79
000180  17387502  sll.d r[17:18], r[11:12], r7
000184  9b14f4ff  ori r9, r8, 4095
000188  1b332600  slli r6, r12, 2
00018c  8b230711  add.ul r[8:9], r[15:16], r[17:18]
000190  33870428  zext_int2long r[15:16], r9
000194  9b341600  slli r9, r12, 1
000198  1f060ff8  addli r12, r30, -1024
00019c  ab060100  lui r13, 16
0001a0  1f281000  addli r16, zero, 10
0001a4  ab08803f  lui r17, 260096
0001a8  1335a704  setlt.sl r10, r[15:16], r[11:12]
0001ac  ab770000  lui r15, 7
0001b0  9f050fe8  addli r11, r30, -3072
0001b4  2b870000  lui r14, 8
0001b8  9b97f7ff  ori r15, r15, 4095
0001bc  5b020000  j 16
0001c0  8b903010  add.s r1, r1, r3
0001c4  3fa02000  blt.s r1, r2, 8
0001c8  db920000  j 1172
0001cc  bb5f05fe  bneq r10, zero, -12
0001d0  ab0b00f0  lui r23, 983040
0001d4  1f0c0000  addli r24, zero, 0
0001d8  971b7301  or r23, r6, r23
0001dc  ff2bb200  l_gm2lm r23, r11, 0(r[5:6])
0001e0  9f1b0000  addli r23, zero, 1
0001e4  00a00000  mfence { lm }
0001e8  9b3cac00  slli r25, r24, 10
0001ec  1f0d0fe5  addli r26, r30, -3456
0001f0  1b3c9c00  slli r24, r24, 9
0001f4  8b9c9511  add.s r25, r11, r25
0001f8  0b1c8611  add.s r24, r12, r24
0001fc  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
000200  c2908c02  vload_mask16.mz vr1{mr1}, 64(r25)
000204  42910c03  vload_mask16.mz vr2{mr1}, 128(r25)
000208  c2918c03  vload_mask16.mz vr3{mr1}, 192(r25)
00020c  c2950c22  vload_mask16.mz vr11{mr1}, 256(r25)
000210  42958c22  vload_mask16.mz vr10{mr1}, 320(r25)
000214  42940c23  vload_mask16.mz vr8{mr1}, 384(r25)
000218  c2948c23  vload_mask16.mz vr9{mr1}, 448(r25)
00021c  42930c42  vload_mask16.mz vr6{mr1}, 512(r25)
000220  c2938c42  vload_mask16.mz vr7{mr1}, 576(r25)
000224  6aa20602  vand.u.mz vr4{mr1}, r13, vr0
000228  eaa21602  vand.u.mz vr5{mr1}, r13, vr1
00022c  72204002  veq.u.mz mr0{mr1}, zero, vr4
000230  42920c43  vload_mask16.mz vr4{mr1}, 640(r25)
000234  72215002  veq.u.mz mr2{mr1}, zero, vr5
000238  fe010040  vmnot mr3, mr0
00023c  46104d02  vstore_mask16.mz vr4{mr1}, 0(r26)
000240  1f0d8fe5  addli r26, r30, -3392
000244  42928c43  vload_mask16.mz vr4{mr1}, 704(r25)
000248  46104d02  vstore_mask16.mz vr4{mr1}, 0(r26)
00024c  1f0d0fe6  addli r26, r30, -3328
000250  42920c62  vload_mask16.mz vr4{mr1}, 768(r25)
000254  46104d02  vstore_mask16.mz vr4{mr1}, 0(r26)
000258  1f0d8fe6  addli r26, r30, -3264
00025c  42928c62  vload_mask16.mz vr4{mr1}, 832(r25)
000260  46104d02  vstore_mask16.mz vr4{mr1}, 0(r26)
000264  1f0d0fe7  addli r26, r30, -3200
000268  42920c63  vload_mask16.mz vr4{mr1}, 896(r25)
00026c  46104d02  vstore_mask16.mz vr4{mr1}, 0(r26)
000270  42928c63  vload_mask16.mz vr4{mr1}, 960(r25)
000274  9f0c8fe7  addli r25, r30, -3136
000278  46904c02  vstore_mask16.mz vr4{mr1}, 0(r25)
00027c  12200716  vadd.u.mh vr0{mr3}, r14, vr0
000280  fe010140  vmnot mr3, mr2
000284  9f0c8c00  addli r25, r24, 64
000288  92201716  vadd.u.mh vr1{mr3}, r14, vr1
00028c  12a00710  vadd.u.mh vr0{mr0}, r15, vr0
000290  92a01714  vadd.u.mh vr1{mr2}, r15, vr1
000294  ea3208c2  vsrl.s.mz vr5{mr1}, r16, vr0
000298  eaa25822  vor.u.mz vr5{mr1}, r17, vr5
00029c  6a220a02  vand.u.mz vr4{mr1}, r20, vr0
0002a0  6a3018c2  vsrl.s.mz vr0{mr1}, r16, vr1
0002a4  ea201a02  vand.u.mz vr1{mr1}, r20, vr1
0002a8  6aa00822  vor.u.mz vr0{mr1}, r17, vr0
0002ac  6aa24822  vor.u.mz vr4{mr1}, r17, vr4
0002b0  eaa01822  vor.u.mz vr1{mr1}, r17, vr1
0002b4  06500020  vfloat2fp16_h.rz vr0, vr0
0002b8  86d00020  vfloat2fp16_h.rz vr1, vr1
0002bc  06900220  vfloat2fp16_l.rz vr0, vr5
0002c0  86100220  vfloat2fp16_l.rz vr1, vr4
0002c4  6a2009a2  vsll.u.mz vr0{mr1}, r18, vr0
0002c8  6aa23602  vand.u.mz vr4{mr1}, r13, vr3
0002cc  eaa01ac2  vsrl.u.mz vr1{mr1}, r21, vr1
0002d0  6aa00902  vand.u.mz vr0{mr1}, r19, vr0
0002d4  72204002  veq.u.mz mr0{mr1}, zero, vr4
0002d8  ea201b02  vand.u.mz vr1{mr1}, r22, vr1
0002dc  6ea00022  vor.u.mz vr0{mr1}, vr1, vr0
0002e0  eaa02602  vand.u.mz vr1{mr1}, r13, vr2
0002e4  46000c02  vstore.mz vr0{mr1}, 0(r24)
0002e8  72211002  veq.u.mz mr2{mr1}, zero, vr1
0002ec  fe010140  vmnot mr3, mr2
0002f0  12212716  vadd.u.mh vr2{mr3}, r14, vr2
0002f4  fe010040  vmnot mr3, mr0
0002f8  92213716  vadd.u.mh vr3{mr3}, r14, vr3
0002fc  12a12714  vadd.u.mh vr2{mr2}, r15, vr2
000300  92a13710  vadd.u.mh vr3{mr0}, r15, vr3
000304  6a3028c2  vsrl.s.mz vr0{mr1}, r16, vr2
000308  6aa00822  vor.u.mz vr0{mr1}, r17, vr0
00030c  ea202a02  vand.u.mz vr1{mr1}, r20, vr2
000310  6a3138c2  vsrl.s.mz vr2{mr1}, r16, vr3
000314  ea213a02  vand.u.mz vr3{mr1}, r20, vr3
000318  6aa12822  vor.u.mz vr2{mr1}, r17, vr2
00031c  06100020  vfloat2fp16_l.rz vr0, vr0
000320  eaa01822  vor.u.mz vr1{mr1}, r17, vr1
000324  eaa13822  vor.u.mz vr3{mr1}, r17, vr3
000328  06500120  vfloat2fp16_h.rz vr0, vr2
00032c  6aa1a602  vand.u.mz vr2{mr1}, r13, vr10
000330  86900020  vfloat2fp16_l.rz vr1, vr1
000334  6a2009a2  vsll.u.mz vr0{mr1}, r18, vr0
000338  72202002  veq.u.mz mr0{mr1}, zero, vr2
00033c  86d00120  vfloat2fp16_h.rz vr1, vr3
000340  6aa00902  vand.u.mz vr0{mr1}, r19, vr0
000344  eaa01ac2  vsrl.u.mz vr1{mr1}, r21, vr1
000348  ea201b02  vand.u.mz vr1{mr1}, r22, vr1
00034c  6ea00022  vor.u.mz vr0{mr1}, vr1, vr0
000350  eaa0b602  vand.u.mz vr1{mr1}, r13, vr11
000354  46800c02  vstore.mz vr0{mr1}, 0(r25)
000358  9f0c0c01  addli r25, r24, 128
00035c  72211002  veq.u.mz mr2{mr1}, zero, vr1
000360  fe010140  vmnot mr3, mr2
000364  9225b716  vadd.u.mh vr11{mr3}, r14, vr11
000368  fe010040  vmnot mr3, mr0
00036c  1225a716  vadd.u.mh vr10{mr3}, r14, vr10
000370  92a5b714  vadd.u.mh vr11{mr2}, r15, vr11
000374  12a5a710  vadd.u.mh vr10{mr0}, r15, vr10
000378  6a30b8c2  vsrl.s.mz vr0{mr1}, r16, vr11
00037c  6a31a8c2  vsrl.s.mz vr2{mr1}, r16, vr10
000380  6aa00822  vor.u.mz vr0{mr1}, r17, vr0
000384  6aa12822  vor.u.mz vr2{mr1}, r17, vr2
000388  ea20ba02  vand.u.mz vr1{mr1}, r20, vr11
00038c  ea21aa02  vand.u.mz vr3{mr1}, r20, vr10
000390  06100020  vfloat2fp16_l.rz vr0, vr0
000394  eaa01822  vor.u.mz vr1{mr1}, r17, vr1
000398  eaa13822  vor.u.mz vr3{mr1}, r17, vr3
00039c  06500120  vfloat2fp16_h.rz vr0, vr2
0003a0  6aa18602  vand.u.mz vr2{mr1}, r13, vr8
0003a4  86900020  vfloat2fp16_l.rz vr1, vr1
0003a8  6a2009a2  vsll.u.mz vr0{mr1}, r18, vr0
0003ac  72202002  veq.u.mz mr0{mr1}, zero, vr2
0003b0  fe010040  vmnot mr3, mr0
0003b4  86d00120  vfloat2fp16_h.rz vr1, vr3
0003b8  eaa19602  vand.u.mz vr3{mr1}, r13, vr9
0003bc  6aa00902  vand.u.mz vr0{mr1}, r19, vr0
0003c0  eaa01ac2  vsrl.u.mz vr1{mr1}, r21, vr1
0003c4  72213002  veq.u.mz mr2{mr1}, zero, vr3
0003c8  ea201b02  vand.u.mz vr1{mr1}, r22, vr1
0003cc  6ea00022  vor.u.mz vr0{mr1}, vr1, vr0
0003d0  46800c02  vstore.mz vr0{mr1}, 0(r25)
0003d4  12248716  vadd.u.mh vr8{mr3}, r14, vr8
0003d8  fe010140  vmnot mr3, mr2
0003dc  9f0c8c01  addli r25, r24, 192
0003e0  92249716  vadd.u.mh vr9{mr3}, r14, vr9
0003e4  12a48710  vadd.u.mh vr8{mr0}, r15, vr8
0003e8  92a49714  vadd.u.mh vr9{mr2}, r15, vr9
0003ec  6a3088c2  vsrl.s.mz vr0{mr1}, r16, vr8
0003f0  ea3098c2  vsrl.s.mz vr1{mr1}, r16, vr9
0003f4  6aa00822  vor.u.mz vr0{mr1}, r17, vr0
0003f8  eaa01822  vor.u.mz vr1{mr1}, r17, vr1
0003fc  6a218a02  vand.u.mz vr2{mr1}, r20, vr8
000400  ea219a02  vand.u.mz vr3{mr1}, r20, vr9
000404  06100020  vfloat2fp16_l.rz vr0, vr0
000408  6aa12822  vor.u.mz vr2{mr1}, r17, vr2
00040c  eaa13822  vor.u.mz vr3{mr1}, r17, vr3
000410  06d00020  vfloat2fp16_h.rz vr0, vr1
000414  86100120  vfloat2fp16_l.rz vr1, vr2
000418  6aa16602  vand.u.mz vr2{mr1}, r13, vr6
00041c  6a2009a2  vsll.u.mz vr0{mr1}, r18, vr0
000420  86d00120  vfloat2fp16_h.rz vr1, vr3
000424  eaa17602  vand.u.mz vr3{mr1}, r13, vr7
000428  72202002  veq.u.mz mr0{mr1}, zero, vr2
00042c  fe010040  vmnot mr3, mr0
000430  6aa00902  vand.u.mz vr0{mr1}, r19, vr0
000434  eaa01ac2  vsrl.u.mz vr1{mr1}, r21, vr1
000438  72213002  veq.u.mz mr2{mr1}, zero, vr3
00043c  ea201b02  vand.u.mz vr1{mr1}, r22, vr1
000440  6ea00022  vor.u.mz vr0{mr1}, vr1, vr0
000444  46800c02  vstore.mz vr0{mr1}, 0(r25)
000448  12236716  vadd.u.mh vr6{mr3}, r14, vr6
00044c  fe010140  vmnot mr3, mr2
000450  9f0c0fe5  addli r25, r30, -3456
000454  92237716  vadd.u.mh vr7{mr3}, r14, vr7
000458  12a36710  vadd.u.mh vr6{mr0}, r15, vr6
00045c  92a37714  vadd.u.mh vr7{mr2}, r15, vr7
000460  6a3068c2  vsrl.s.mz vr0{mr1}, r16, vr6
000464  ea3078c2  vsrl.s.mz vr1{mr1}, r16, vr7
000468  42920c02  vload_mask16.mz vr4{mr1}, 0(r25)
00046c  9f0c8fe5  addli r25, r30, -3392
000470  6aa00822  vor.u.mz vr0{mr1}, r17, vr0
000474  eaa01822  vor.u.mz vr1{mr1}, r17, vr1
000478  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
00047c  9f0c0c02  addli r25, r24, 256
000480  6a216a02  vand.u.mz vr2{mr1}, r20, vr6
000484  ea217a02  vand.u.mz vr3{mr1}, r20, vr7
000488  06100020  vfloat2fp16_l.rz vr0, vr0
00048c  6aa12822  vor.u.mz vr2{mr1}, r17, vr2
000490  eaa13822  vor.u.mz vr3{mr1}, r17, vr3
000494  06d00020  vfloat2fp16_h.rz vr0, vr1
000498  86100120  vfloat2fp16_l.rz vr1, vr2
00049c  6aa14602  vand.u.mz vr2{mr1}, r13, vr4
0004a0  6a2009a2  vsll.u.mz vr0{mr1}, r18, vr0
0004a4  86d00120  vfloat2fp16_h.rz vr1, vr3
0004a8  eaa15602  vand.u.mz vr3{mr1}, r13, vr5
0004ac  72202002  veq.u.mz mr0{mr1}, zero, vr2
0004b0  fe010040  vmnot mr3, mr0
0004b4  6aa00902  vand.u.mz vr0{mr1}, r19, vr0
0004b8  eaa01ac2  vsrl.u.mz vr1{mr1}, r21, vr1
0004bc  72213002  veq.u.mz mr2{mr1}, zero, vr3
0004c0  ea201b02  vand.u.mz vr1{mr1}, r22, vr1
0004c4  6ea00022  vor.u.mz vr0{mr1}, vr1, vr0
0004c8  46800c02  vstore.mz vr0{mr1}, 0(r25)
0004cc  12224716  vadd.u.mh vr4{mr3}, r14, vr4
0004d0  fe010140  vmnot mr3, mr2
0004d4  9f0c0fe6  addli r25, r30, -3328
0004d8  92225716  vadd.u.mh vr5{mr3}, r14, vr5
0004dc  12a24710  vadd.u.mh vr4{mr0}, r15, vr4
0004e0  92a25714  vadd.u.mh vr5{mr2}, r15, vr5
0004e4  6a3048c2  vsrl.s.mz vr0{mr1}, r16, vr4
0004e8  ea3058c2  vsrl.s.mz vr1{mr1}, r16, vr5
0004ec  6aa00822  vor.u.mz vr0{mr1}, r17, vr0
0004f0  eaa01822  vor.u.mz vr1{mr1}, r17, vr1
0004f4  6a214a02  vand.u.mz vr2{mr1}, r20, vr4
0004f8  42920c02  vload_mask16.mz vr4{mr1}, 0(r25)
0004fc  9f0c8fe6  addli r25, r30, -3264
000500  ea215a02  vand.u.mz vr3{mr1}, r20, vr5
000504  06100020  vfloat2fp16_l.rz vr0, vr0
000508  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
00050c  9f0c8c02  addli r25, r24, 320
000510  6aa12822  vor.u.mz vr2{mr1}, r17, vr2
000514  eaa13822  vor.u.mz vr3{mr1}, r17, vr3
000518  06d00020  vfloat2fp16_h.rz vr0, vr1
00051c  86100120  vfloat2fp16_l.rz vr1, vr2
000520  6aa14602  vand.u.mz vr2{mr1}, r13, vr4
000524  6a2009a2  vsll.u.mz vr0{mr1}, r18, vr0
000528  86d00120  vfloat2fp16_h.rz vr1, vr3
00052c  eaa15602  vand.u.mz vr3{mr1}, r13, vr5
000530  72202002  veq.u.mz mr0{mr1}, zero, vr2
000534  fe010040  vmnot mr3, mr0
000538  6aa00902  vand.u.mz vr0{mr1}, r19, vr0
00053c  eaa01ac2  vsrl.u.mz vr1{mr1}, r21, vr1
000540  72213002  veq.u.mz mr2{mr1}, zero, vr3
000544  ea201b02  vand.u.mz vr1{mr1}, r22, vr1
000548  6ea00022  vor.u.mz vr0{mr1}, vr1, vr0
00054c  46800c02  vstore.mz vr0{mr1}, 0(r25)
000550  12224716  vadd.u.mh vr4{mr3}, r14, vr4
000554  fe010140  vmnot mr3, mr2
000558  9f0c0fe7  addli r25, r30, -3200
00055c  92225716  vadd.u.mh vr5{mr3}, r14, vr5
000560  12a24710  vadd.u.mh vr4{mr0}, r15, vr4
000564  92a25714  vadd.u.mh vr5{mr2}, r15, vr5
000568  6a3048c2  vsrl.s.mz vr0{mr1}, r16, vr4
00056c  ea3058c2  vsrl.s.mz vr1{mr1}, r16, vr5
000570  6aa00822  vor.u.mz vr0{mr1}, r17, vr0
000574  eaa01822  vor.u.mz vr1{mr1}, r17, vr1
000578  6a214a02  vand.u.mz vr2{mr1}, r20, vr4
00057c  42920c02  vload_mask16.mz vr4{mr1}, 0(r25)
000580  9f0c8fe7  addli r25, r30, -3136
000584  ea215a02  vand.u.mz vr3{mr1}, r20, vr5
000588  06100020  vfloat2fp16_l.rz vr0, vr0
00058c  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
000590  9f0c0c03  addli r25, r24, 384
000594  1f0c8c03  addli r24, r24, 448
000598  6aa12822  vor.u.mz vr2{mr1}, r17, vr2
00059c  eaa13822  vor.u.mz vr3{mr1}, r17, vr3
0005a0  06d00020  vfloat2fp16_h.rz vr0, vr1
0005a4  86100120  vfloat2fp16_l.rz vr1, vr2
0005a8  6aa14602  vand.u.mz vr2{mr1}, r13, vr4
0005ac  6a2009a2  vsll.u.mz vr0{mr1}, r18, vr0
0005b0  86d00120  vfloat2fp16_h.rz vr1, vr3
0005b4  eaa15602  vand.u.mz vr3{mr1}, r13, vr5
0005b8  72202002  veq.u.mz mr0{mr1}, zero, vr2
0005bc  fe010040  vmnot mr3, mr0
0005c0  6aa00902  vand.u.mz vr0{mr1}, r19, vr0
0005c4  eaa01ac2  vsrl.u.mz vr1{mr1}, r21, vr1
0005c8  72213002  veq.u.mz mr2{mr1}, zero, vr3
0005cc  ea201b02  vand.u.mz vr1{mr1}, r22, vr1
0005d0  6ea00022  vor.u.mz vr0{mr1}, vr1, vr0
0005d4  46800c02  vstore.mz vr0{mr1}, 0(r25)
0005d8  12224716  vadd.u.mh vr4{mr3}, r14, vr4
0005dc  fe010140  vmnot mr3, mr2
0005e0  9b8c1b00  andi r25, r23, 1
0005e4  9f0b0000  addli r23, zero, 0
0005e8  92225716  vadd.u.mh vr5{mr3}, r14, vr5
0005ec  12a24710  vadd.u.mh vr4{mr0}, r15, vr4
0005f0  92a25714  vadd.u.mh vr5{mr2}, r15, vr5
0005f4  6a3048c2  vsrl.s.mz vr0{mr1}, r16, vr4
0005f8  ea3058c2  vsrl.s.mz vr1{mr1}, r16, vr5
0005fc  6aa00822  vor.u.mz vr0{mr1}, r17, vr0
000600  eaa01822  vor.u.mz vr1{mr1}, r17, vr1
000604  6a214a02  vand.u.mz vr2{mr1}, r20, vr4
000608  ea215a02  vand.u.mz vr3{mr1}, r20, vr5
00060c  06100020  vfloat2fp16_l.rz vr0, vr0
000610  6aa12822  vor.u.mz vr2{mr1}, r17, vr2
000614  eaa13822  vor.u.mz vr3{mr1}, r17, vr3
000618  06d00020  vfloat2fp16_h.rz vr0, vr1
00061c  86100120  vfloat2fp16_l.rz vr1, vr2
000620  6a2009a2  vsll.u.mz vr0{mr1}, r18, vr0
000624  86d00120  vfloat2fp16_h.rz vr1, vr3
000628  6aa00902  vand.u.mz vr0{mr1}, r19, vr0
00062c  eaa01ac2  vsrl.u.mz vr1{mr1}, r21, vr1
000630  ea201b02  vand.u.mz vr1{mr1}, r22, vr1
000634  6ea00022  vor.u.mz vr0{mr1}, vr1, vr0
000638  46000c02  vstore.mz vr0{mr1}, 0(r24)
00063c  1f1c0000  addli r24, zero, 1
000640  00a00000  mfence { lm }
000644  bb9e0cfc  bneq r25, zero, -1116
000648  ab0b00f0  lui r23, 983040
00064c  979b7401  or r23, r9, r23
000650  ffbbc300  s_lm2gm r23, r12, 0(r[8:9])
000654  00a00000  mfence { lm }
000658  5b6dffff  j -1176
00065c  9f0e0fe5  addli sp, r30, -3456
000660  9f8e0e1b  addli sp, sp, 3456
000664  00a00300  mfence { lm, sm, gm }
000668  00100000  exit
00066c  00100000  exit
000670  00100000  exit
000674  00100000  exit
000678  00100000  exit
00067c  00100000  exit
000680  00100000  exit
000684  00100000  exit
000688  00100000  exit
00068c  00100000  exit
000690  00100000  exit
000694  00100000  exit
000698  00100000  exit
00069c  00100000  exit
0006a0  00100000  exit
0006a4  00100000  exit
0006a8  00100000  exit
0006ac  00100000  exit
0006b0  00100000  exit
0006b4  00100000  exit
0006b8  00100000  exit
0006bc  00100000  exit
0006c0  00100000  exit
0006c4  00100000  exit
0006c8  00100000  exit
0006cc  00100000  exit
0006d0  00100000  exit
0006d4  00100000  exit
0006d8  00100000  exit
0006dc  00100000  exit
0006e0  00100000  exit
0006e4  00100000  exit
0006e8  00100000  exit
0006ec  00100000  exit
0006f0  00100000  exit
0006f4  00100000  exit
0006f8  00100000  exit
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
