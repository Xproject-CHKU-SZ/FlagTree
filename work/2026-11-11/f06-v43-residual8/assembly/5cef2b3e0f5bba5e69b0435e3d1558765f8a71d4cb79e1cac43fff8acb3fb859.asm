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
0000dc  9f8e8eff  addli sp, sp, -64
0000e0  1f8f0e00  addli r30, sp, 0
0000e4  805a0002  load_param_i r21, 0
0000e8  e3492f00  loadli.w r19,  20(r30)
0000ec  e3002f00  loadli.w r1,  16(r30)
0000f0  630a3f00  loadli.w r20,  24(r30)
0000f4  8b901920  mul.s r1, r19, r1
0000f8  0b9b4021  mul.s r22, r1, r20
0000fc  cb105b01  ble.s r22, r21, 36
000100  80db0002  load_param_i r23, 1
000104  8b904a31  div.s r1, r21, r20
000108  6b510f00  load.d r[3:4], 0(r30)
00010c  6b528f00  load.d r[5:6], 8(r30)
000110  0b933031  div.s r6, r1, r19
000114  57250000  jal 296
000118  8b9a7a11  add.s r21, r21, r23
00011c  bfaf6aff  blt.s r21, r22, -24
000120  00a00300  mfence { lm, sm, gm }
000124  00100000  exit
000128  9f8e8ee7  addli sp, sp, -3136
00012c  80500102  load_param_i r1, 2
000130  80340002  core_id r9
000134  9f230000  addli r7, zero, 2
000138  67c1ee19  storeli.w r30, 3092(sp)
00013c  1f8f8e18  addli r30, sp, 3136
000140  1f040008  addli r8, zero, 1024
000144  2b0600f0  lui r12, 983040
000148  6782ae19  storeli.w r26, 3104(sp)
00014c  e7c33e19  storeli.w r19, 3132(sp)
000150  e7834e19  storeli.w r20, 3128(sp)
000154  67c35e19  storeli.w r21, 3124(sp)
000158  67836e19  storeli.w r22, 3120(sp)
00015c  e7c27e19  storeli.w r23, 3116(sp)
000160  e7828e19  storeli.w r24, 3112(sp)
000164  67c29e19  storeli.w r25, 3108(sp)
000168  e7c1be19  storeli.w r27, 3100(sp)
00016c  e781ce19  storeli.w r28, 3096(sp)
000170  6781fe19  storeli.w r31, 3088(sp)
000174  8b946050  fmac.s r9, r1, r6
000178  1f0d8fef  addli r26, r30, -2112
00017c  1716c400  or r12, r8, r12
000180  1bb38400  slli r6, r9, 8
000184  33150328  sext_int2long r[11:12], r6
000188  17357502  sll.d r[11:12], r[11:12], r7
00018c  0b25a110  add.ul r[11:12], r[3:4], r[11:12]
000190  7f26a501  l_gm2lm r12, r26, 0(r[11:12])
000194  1f75f07f  addli r10, zero, 16383
000198  00a00200  mfence { lm, gm }
00019c  bf489502  blt.s r10, r9, 1584
0001a0  1f050018  addli r10, zero, 3072
0001a4  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
0001a8  9f048feb  addli r9, r30, -2624
0001ac  2b094000  lui r18, 1024
0001b0  9f190000  addli r19, zero, 1
0001b4  abea7f00  lui r21, 2046
0001b8  2b0b803f  lui r22, 260096
0001bc  abeb0700  lui r23, 126
0001c0  1f0e0004  addli r28, zero, 512
0001c4  0b95a020  mul.s r10, r1, r10
0001c8  9f200000  addli r1, zero, 2
0001cc  9f858400  addli r11, r9, 64
0001d0  1f860401  addli r12, r9, 128
0001d4  1f880403  addli r16, r9, 384
0001d8  9f888403  addli r17, r9, 448
0001dc  b3060528  zext_int2long r[14:15], r10
0001e0  17b71602  sll.d r[15:16], r[14:15], r1
0001e4  9f868401  addli r13, r9, 192
0001e8  8b20e110  add.ul r[2:3], r[3:4], r[15:16]
0001ec  9f01ffe7  addli r3, r30, -3080
0001f0  1f870402  addli r14, r9, 256
0001f4  9f878402  addli r15, r9, 320
0001f8  73b01100  store.d r[2:3], 0(r3)
0001fc  9f002000  addli r1, zero, 16
000200  1f310000  addli r2, zero, 3
000204  9f010000  addli r3, zero, 0
000208  6aa03022  vor.u.mz vr0{mr1}, r1, vr3
00020c  9f000feb  addli r1, r30, -2688
000210  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000214  ab700000  lui r1, 7
000218  6a203122  vor.u.mz vr0{mr1}, r2, vr3
00021c  2bf100fc  lui r2, 1032207
000220  1b9af0ff  ori r20, r1, 4095
000224  9f008fea  addli r1, r30, -2752
000228  9b1c01c0  ori r25, r2, 3072
00022c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000230  9f501000  addli r1, zero, 13
000234  6aa03022  vor.u.mz vr0{mr1}, r1, vr3
000238  9f000fea  addli r1, r30, -2816
00023c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000240  ab00ff03  lui r1, 16368
000244  1b9cf03f  ori r24, r1, 1023
000248  9f201000  addli r1, zero, 10
00024c  6aa03022  vor.u.mz vr0{mr1}, r1, vr3
000250  9f008fe9  addli r1, r30, -2880
000254  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000258  dbab0000  j 1372
00025c  1f0effe7  addli r28, r30, -3080
000260  9f230000  addli r7, zero, 2
000264  1f090700  addli r18, r14, 0
000268  1f8d0700  addli r26, r15, 0
00026c  9bad1100  xori r27, r3, 1
000270  6b570e00  load.d r[15:16], 0(r28)
000274  97b37002  sll.d r[8:9], r[2:3], r7
000278  2b0e00f0  lui r28, 983040
00027c  8b237710  add.ul r[8:9], r[15:16], r[8:9]
000280  9f070d00  addli r15, r26, 0
000284  1f070900  addli r14, r18, 0
000288  1f890600  addli r18, r13, 0
00028c  9f060600  addli r13, r12, 0
000290  1f860500  addli r12, r11, 0
000294  9f058fef  addli r11, r30, -2112
000298  1bbdad00  slli r26, r27, 10
00029c  0b9da511  add.s r26, r11, r26
0002a0  9f050008  addli r11, zero, 1024
0002a4  179ec501  or r28, r11, r28
0002a8  9f050600  addli r11, r12, 0
0002ac  1f860600  addli r12, r13, 0
0002b0  9f060900  addli r13, r18, 0
0002b4  2b094000  lui r18, 1024
0002b8  7faea301  l_gm2lm r28, r26, 0(r[8:9])
0002bc  1f0e0004  addli r28, zero, 512
0002c0  1f0d8fef  addli r26, r30, -2112
0002c4  9bb1a100  slli r3, r3, 10
0002c8  97b03003  sll.d r[2:3], r[2:3], r19
0002cc  8b113d10  add.s r3, r26, r3
0002d0  8b201210  add.ul r[2:3], r[5:6], r[2:3]
0002d4  1f840101  addli r8, r3, 128
0002d8  9f838100  addli r7, r3, 64
0002dc  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
0002e0  42130402  vload_mask16.mz vr6{mr1}, 0(r8)
0002e4  1f040feb  addli r8, r30, -2688
0002e8  c2920302  vload_mask16.mz vr5{mr1}, 0(r7)
0002ec  9f838101  addli r7, r3, 192
0002f0  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
0002f4  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
0002f8  1f048fea  addli r8, r30, -2752
0002fc  9f830102  addli r7, r3, 256
000300  42100402  vload_mask16.mz vr0{mr1}, 0(r8)
000304  1f040fea  addli r8, r30, -2816
000308  42110402  vload_mask16.mz vr2{mr1}, 0(r8)
00030c  1f048fe9  addli r8, r30, -2880
000310  6eb440c2  vsrl.s.mz vr8{mr1}, vr1, vr4
000314  eeb450c2  vsrl.s.mz vr9{mr1}, vr1, vr5
000318  eeb570c2  vsrl.s.mz vr11{mr1}, vr1, vr7
00031c  6eb560c2  vsrl.s.mz vr10{mr1}, vr1, vr6
000320  6ab48902  vand.s.mz vr8{mr1}, r19, vr8
000324  eab49902  vand.s.mz vr9{mr1}, r19, vr9
000328  eab5b902  vand.s.mz vr11{mr1}, r19, vr11
00032c  6ab5a902  vand.s.mz vr10{mr1}, r19, vr10
000330  16328202  vadd.s.mz vr4{mr1}, vr4, vr8
000334  96b29202  vadd.s.mz vr5{mr1}, vr5, vr9
000338  96b3b302  vadd.s.mz vr7{mr1}, vr7, vr11
00033c  1633a302  vadd.s.mz vr6{mr1}, vr6, vr10
000340  12344a02  vadd.s.mz vr8{mr1}, r20, vr4
000344  12327a02  vadd.s.mz vr4{mr1}, r20, vr7
000348  92325a02  vadd.s.mz vr5{mr1}, r20, vr5
00034c  12336a02  vadd.s.mz vr6{mr1}, r20, vr6
000350  ee3380c2  vsrl.s.mz vr7{mr1}, vr0, vr8
000354  6e3481c2  vsrl.s.mz vr8{mr1}, vr2, vr8
000358  ee3451c2  vsrl.s.mz vr9{mr1}, vr2, vr5
00035c  ee3250c2  vsrl.s.mz vr5{mr1}, vr0, vr5
000360  6e3560c2  vsrl.s.mz vr10{mr1}, vr0, vr6
000364  ee3540c2  vsrl.s.mz vr11{mr1}, vr0, vr4
000368  42100402  vload_mask16.mz vr0{mr1}, 0(r8)
00036c  6e3241c2  vsrl.s.mz vr4{mr1}, vr2, vr4
000370  6e3361c2  vsrl.s.mz vr6{mr1}, vr2, vr6
000374  6ab48b02  vand.s.mz vr8{mr1}, r23, vr8
000378  eab49b02  vand.s.mz vr9{mr1}, r23, vr9
00037c  eab25a02  vand.s.mz vr5{mr1}, r21, vr5
000380  eab37a02  vand.s.mz vr7{mr1}, r21, vr7
000384  6ab24b02  vand.s.mz vr4{mr1}, r23, vr4
000388  6ab36b02  vand.s.mz vr6{mr1}, r23, vr6
00038c  6a348b22  vor.s.mz vr8{mr1}, r22, vr8
000390  ea325b22  vor.s.mz vr5{mr1}, r22, vr5
000394  ea349b22  vor.s.mz vr9{mr1}, r22, vr9
000398  ea337b22  vor.s.mz vr7{mr1}, r22, vr7
00039c  6a324b22  vor.s.mz vr4{mr1}, r22, vr4
0003a0  6a336b22  vor.s.mz vr6{mr1}, r22, vr6
0003a4  06140420  vfloat2fp16_l.rz vr8, vr8
0003a8  86d20220  vfloat2fp16_h.rz vr5, vr5
0003ac  06520220  vfloat2fp16_h.rz vr4, vr4
0003b0  06d40420  vfloat2fp16_h.rz vr8, vr9
0003b4  86920320  vfloat2fp16_l.rz vr5, vr7
0003b8  eab4aa02  vand.s.mz vr9{mr1}, r21, vr10
0003bc  06120320  vfloat2fp16_l.rz vr4, vr6
0003c0  6e3480a2  vsll.s.mz vr8{mr1}, vr0, vr8
0003c4  ea325c02  vand.s.mz vr5{mr1}, r24, vr5
0003c8  ea349b22  vor.s.mz vr9{mr1}, r22, vr9
0003cc  6e3240a2  vsll.s.mz vr4{mr1}, vr0, vr4
0003d0  eab38c02  vand.s.mz vr7{mr1}, r25, vr8
0003d4  6ab4ba02  vand.s.mz vr8{mr1}, r21, vr11
0003d8  eeb25322  vor.s.mz vr5{mr1}, vr7, vr5
0003dc  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
0003e0  9f838102  addli r7, r3, 320
0003e4  6a348b22  vor.s.mz vr8{mr1}, r22, vr8
0003e8  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
0003ec  9f038fea  addli r7, r30, -2752
0003f0  06540420  vfloat2fp16_h.rz vr8, vr8
0003f4  46805402  vstore.mz vr5{mr1}, 0(r9)
0003f8  eeb570c2  vsrl.s.mz vr11{mr1}, vr1, vr7
0003fc  eeb1a0c2  vsrl.s.mz vr3{mr1}, vr1, vr10
000400  06940420  vfloat2fp16_l.rz vr8, vr9
000404  eab4b902  vand.s.mz vr9{mr1}, r19, vr11
000408  eab13902  vand.s.mz vr3{mr1}, r19, vr3
00040c  16b39302  vadd.s.mz vr6{mr1}, vr7, vr9
000410  ea338c02  vand.s.mz vr7{mr1}, r24, vr8
000414  6ab44c02  vand.s.mz vr8{mr1}, r25, vr4
000418  96313502  vadd.s.mz vr3{mr1}, vr10, vr3
00041c  12326a02  vadd.s.mz vr4{mr1}, r20, vr6
000420  92323a02  vadd.s.mz vr5{mr1}, r20, vr3
000424  ee317422  vor.s.mz vr3{mr1}, vr8, vr7
000428  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
00042c  9f830103  addli r7, r3, 384
000430  46803502  vstore.mz vr3{mr1}, 0(r11)
000434  6e3344c2  vsrl.s.mz vr6{mr1}, vr8, vr4
000438  ee3354c2  vsrl.s.mz vr7{mr1}, vr8, vr5
00043c  92358002  vadd.s.mz vr11{mr1}, zero, vr8
000440  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
000444  6e3241c2  vsrl.s.mz vr4{mr1}, vr2, vr4
000448  9f838103  addli r7, r3, 448
00044c  ee3251c2  vsrl.s.mz vr5{mr1}, vr2, vr5
000450  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
000454  9f030fe9  addli r7, r30, -2944
000458  eab16a02  vand.s.mz vr3{mr1}, r21, vr6
00045c  6ab37a02  vand.s.mz vr6{mr1}, r21, vr7
000460  6ab24b02  vand.s.mz vr4{mr1}, r23, vr4
000464  eab25b02  vand.s.mz vr5{mr1}, r23, vr5
000468  eeb380c2  vsrl.s.mz vr7{mr1}, vr1, vr8
00046c  ea313b22  vor.s.mz vr3{mr1}, r22, vr3
000470  6a324b22  vor.s.mz vr4{mr1}, r22, vr4
000474  6eb590c2  vsrl.s.mz vr10{mr1}, vr1, vr9
000478  6a336b22  vor.s.mz vr6{mr1}, r22, vr6
00047c  ea325b22  vor.s.mz vr5{mr1}, r22, vr5
000480  eab37902  vand.s.mz vr7{mr1}, r19, vr7
000484  86910120  vfloat2fp16_l.rz vr3, vr3
000488  06120220  vfloat2fp16_l.rz vr4, vr4
00048c  96337402  vadd.s.mz vr7{mr1}, vr8, vr7
000490  6ab4a902  vand.s.mz vr8{mr1}, r19, vr10
000494  06d20220  vfloat2fp16_h.rz vr4, vr5
000498  86510320  vfloat2fp16_h.rz vr3, vr6
00049c  16b48402  vadd.s.mz vr8{mr1}, vr9, vr8
0004a0  92337a02  vadd.s.mz vr7{mr1}, r20, vr7
0004a4  ee3240a2  vsll.s.mz vr5{mr1}, vr0, vr4
0004a8  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0004ac  6a303c02  vand.s.mz vr0{mr1}, r24, vr3
0004b0  12348a02  vadd.s.mz vr8{mr1}, r20, vr8
0004b4  6eb375c2  vsrl.s.mz vr6{mr1}, vr11, vr7
0004b8  ee3371c2  vsrl.s.mz vr7{mr1}, vr2, vr7
0004bc  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
0004c0  9f830104  addli r7, r3, 512
0004c4  eab25c02  vand.s.mz vr5{mr1}, r25, vr5
0004c8  eeb185c2  vsrl.s.mz vr3{mr1}, vr11, vr8
0004cc  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0004d0  6e3481c2  vsrl.s.mz vr8{mr1}, vr2, vr8
0004d4  eab37b02  vand.s.mz vr7{mr1}, r23, vr7
0004d8  9f838104  addli r7, r3, 576
0004dc  6ab36a02  vand.s.mz vr6{mr1}, r21, vr6
0004e0  42950302  vload_mask16.mz vr10{mr1}, 0(r7)
0004e4  9f038fea  addli r7, r30, -2752
0004e8  eab13a02  vand.s.mz vr3{mr1}, r21, vr3
0004ec  6ab48b02  vand.s.mz vr8{mr1}, r23, vr8
0004f0  ea337b22  vor.s.mz vr7{mr1}, r22, vr7
0004f4  6a336b22  vor.s.mz vr6{mr1}, r22, vr6
0004f8  eeb590c2  vsrl.s.mz vr11{mr1}, vr1, vr9
0004fc  ea313b22  vor.s.mz vr3{mr1}, r22, vr3
000500  eeb0a0c2  vsrl.s.mz vr1{mr1}, vr1, vr10
000504  6a348b22  vor.s.mz vr8{mr1}, r22, vr8
000508  86930320  vfloat2fp16_l.rz vr7, vr7
00050c  eab5b902  vand.s.mz vr11{mr1}, r19, vr11
000510  86d10120  vfloat2fp16_h.rz vr3, vr3
000514  6ab01902  vand.s.mz vr0{mr1}, r19, vr1
000518  86530420  vfloat2fp16_h.rz vr7, vr8
00051c  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
000520  9f030fe9  addli r7, r30, -2944
000524  86110320  vfloat2fp16_l.rz vr3, vr6
000528  16b3b402  vadd.s.mz vr6{mr1}, vr9, vr11
00052c  16300502  vadd.s.mz vr0{mr1}, vr10, vr0
000530  6e3472a2  vsll.s.mz vr8{mr1}, vr4, vr7
000534  42920302  vload_mask16.mz vr4{mr1}, 0(r7)
000538  9f830105  addli r7, r3, 640
00053c  12351002  vadd.s.mz vr10{mr1}, zero, vr1
000540  12336a02  vadd.s.mz vr6{mr1}, r20, vr6
000544  92330a02  vadd.s.mz vr7{mr1}, r20, vr0
000548  6ab08c02  vand.s.mz vr0{mr1}, r25, vr8
00054c  ea313c02  vand.s.mz vr3{mr1}, r24, vr3
000550  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
000554  6eb460c2  vsrl.s.mz vr8{mr1}, vr1, vr6
000558  ee323022  vor.s.mz vr5{mr1}, vr0, vr3
00055c  eeb470c2  vsrl.s.mz vr9{mr1}, vr1, vr7
000560  ee3371c2  vsrl.s.mz vr7{mr1}, vr2, vr7
000564  46004602  vstore.mz vr4{mr1}, 0(r12)
000568  1232a002  vadd.s.mz vr4{mr1}, zero, vr10
00056c  6ab08a02  vand.s.mz vr0{mr1}, r21, vr8
000570  eab19a02  vand.s.mz vr3{mr1}, r21, vr9
000574  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
000578  9f838105  addli r7, r3, 704
00057c  46805602  vstore.mz vr5{mr1}, 0(r13)
000580  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
000584  9f030feb  addli r7, r30, -2688
000588  6a300b22  vor.s.mz vr0{mr1}, r22, vr0
00058c  ea313b22  vor.s.mz vr3{mr1}, r22, vr3
000590  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
000594  9f030fe9  addli r7, r30, -2944
000598  06100020  vfloat2fp16_l.rz vr0, vr0
00059c  eeb280c2  vsrl.s.mz vr5{mr1}, vr1, vr8
0005a0  06d00120  vfloat2fp16_h.rz vr0, vr3
0005a4  ee3161c2  vsrl.s.mz vr3{mr1}, vr2, vr6
0005a8  6ab35902  vand.s.mz vr6{mr1}, r19, vr5
0005ac  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
0005b0  6eb090c2  vsrl.s.mz vr0{mr1}, vr1, vr9
0005b4  9f830106  addli r7, r3, 768
0005b8  eab23b02  vand.s.mz vr5{mr1}, r23, vr3
0005bc  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
0005c0  96316402  vadd.s.mz vr3{mr1}, vr8, vr6
0005c4  6ab37b02  vand.s.mz vr6{mr1}, r23, vr7
0005c8  9f838106  addli r7, r3, 832
0005cc  6ab00902  vand.s.mz vr0{mr1}, r19, vr0
0005d0  ea325b22  vor.s.mz vr5{mr1}, r22, vr5
0005d4  6a336b22  vor.s.mz vr6{mr1}, r22, vr6
0005d8  96b30402  vadd.s.mz vr7{mr1}, vr9, vr0
0005dc  92343a02  vadd.s.mz vr9{mr1}, r20, vr3
0005e0  eeb520c2  vsrl.s.mz vr11{mr1}, vr1, vr2
0005e4  92317a02  vadd.s.mz vr3{mr1}, r20, vr7
0005e8  c2930302  vload_mask16.mz vr7{mr1}, 0(r7)
0005ec  6e3492c2  vsrl.s.mz vr8{mr1}, vr4, vr9
0005f0  eab5b902  vand.s.mz vr11{mr1}, r19, vr11
0005f4  9f030fe8  addli r7, r30, -3072
0005f8  6e3532c2  vsrl.s.mz vr10{mr1}, vr4, vr3
0005fc  6ab48a02  vand.s.mz vr8{mr1}, r21, vr8
000600  6eb070c2  vsrl.s.mz vr0{mr1}, vr1, vr7
000604  6ab5aa02  vand.s.mz vr10{mr1}, r21, vr10
000608  6a348b22  vor.s.mz vr8{mr1}, r22, vr8
00060c  eab00902  vand.s.mz vr1{mr1}, r19, vr0
000610  1630b102  vadd.s.mz vr0{mr1}, vr2, vr11
000614  06910220  vfloat2fp16_l.rz vr2, vr5
000618  6a35ab22  vor.s.mz vr10{mr1}, r22, vr10
00061c  06510320  vfloat2fp16_h.rz vr2, vr6
000620  96b01302  vadd.s.mz vr1{mr1}, vr7, vr1
000624  92330a02  vadd.s.mz vr7{mr1}, r20, vr0
000628  12334002  vadd.s.mz vr6{mr1}, zero, vr4
00062c  46902302  vstore_mask16.mz vr2{mr1}, 0(r7)
000630  06110420  vfloat2fp16_l.rz vr2, vr8
000634  9f038fe8  addli r7, r30, -3008
000638  12341a02  vadd.s.mz vr8{mr1}, r20, vr1
00063c  06510520  vfloat2fp16_h.rz vr2, vr10
000640  46902302  vstore_mask16.mz vr2{mr1}, 0(r7)
000644  9f030fea  addli r7, r30, -2816
000648  c2920302  vload_mask16.mz vr5{mr1}, 0(r7)
00064c  9f830107  addli r7, r3, 896
000650  9f818107  addli r3, r3, 960
000654  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
000658  9f010feb  addli r3, r30, -2688
00065c  c2950302  vload_mask16.mz vr11{mr1}, 0(r7)
000660  6eb092c2  vsrl.s.mz vr0{mr1}, vr5, vr9
000664  ee3483c2  vsrl.s.mz vr9{mr1}, vr6, vr8
000668  eeb032c2  vsrl.s.mz vr1{mr1}, vr5, vr3
00066c  ee3173c2  vsrl.s.mz vr3{mr1}, vr6, vr7
000670  6ab00b02  vand.s.mz vr0{mr1}, r23, vr0
000674  eab49a02  vand.s.mz vr9{mr1}, r21, vr9
000678  eab01b02  vand.s.mz vr1{mr1}, r23, vr1
00067c  eab13a02  vand.s.mz vr3{mr1}, r21, vr3
000680  6a320b22  vor.s.mz vr4{mr1}, r22, vr0
000684  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000688  ea349b22  vor.s.mz vr9{mr1}, r22, vr9
00068c  ea301b22  vor.s.mz vr1{mr1}, r22, vr1
000690  ea313b22  vor.s.mz vr3{mr1}, r22, vr3
000694  9f018fe9  addli r3, r30, -2880
000698  86d40420  vfloat2fp16_h.rz vr9, vr9
00069c  86d00020  vfloat2fp16_h.rz vr1, vr1
0006a0  6e31b0c2  vsrl.s.mz vr2{mr1}, vr0, vr11
0006a4  6e30a0c2  vsrl.s.mz vr0{mr1}, vr0, vr10
0006a8  86940120  vfloat2fp16_l.rz vr9, vr3
0006ac  eeb172c2  vsrl.s.mz vr3{mr1}, vr5, vr7
0006b0  86100220  vfloat2fp16_l.rz vr1, vr4
0006b4  6eb282c2  vsrl.s.mz vr4{mr1}, vr5, vr8
0006b8  6ab12902  vand.s.mz vr2{mr1}, r19, vr2
0006bc  6ab00902  vand.s.mz vr0{mr1}, r19, vr0
0006c0  eab13b02  vand.s.mz vr3{mr1}, r23, vr3
0006c4  6ab24b02  vand.s.mz vr4{mr1}, r23, vr4
0006c8  16b12502  vadd.s.mz vr2{mr1}, vr11, vr2
0006cc  16300502  vadd.s.mz vr0{mr1}, vr10, vr0
0006d0  ea313b22  vor.s.mz vr3{mr1}, r22, vr3
0006d4  6a324b22  vor.s.mz vr4{mr1}, r22, vr4
0006d8  12312a02  vadd.s.mz vr2{mr1}, r20, vr2
0006dc  12300a02  vadd.s.mz vr0{mr1}, r20, vr0
0006e0  86910120  vfloat2fp16_l.rz vr3, vr3
0006e4  ee3323c2  vsrl.s.mz vr7{mr1}, vr6, vr2
0006e8  6e3403c2  vsrl.s.mz vr8{mr1}, vr6, vr0
0006ec  6eb002c2  vsrl.s.mz vr0{mr1}, vr5, vr0
0006f0  6eb122c2  vsrl.s.mz vr2{mr1}, vr5, vr2
0006f4  86510220  vfloat2fp16_h.rz vr3, vr4
0006f8  eab37a02  vand.s.mz vr7{mr1}, r21, vr7
0006fc  6ab00b02  vand.s.mz vr0{mr1}, r23, vr0
000700  6ab12b02  vand.s.mz vr2{mr1}, r23, vr2
000704  6ab48a02  vand.s.mz vr8{mr1}, r21, vr8
000708  ea337b22  vor.s.mz vr7{mr1}, r22, vr7
00070c  6a300b22  vor.s.mz vr0{mr1}, r22, vr0
000710  6a312b22  vor.s.mz vr2{mr1}, r22, vr2
000714  6a348b22  vor.s.mz vr8{mr1}, r22, vr8
000718  06920320  vfloat2fp16_l.rz vr4, vr7
00071c  c2930102  vload_mask16.mz vr7{mr1}, 0(r3)
000720  9f010fe8  addli r3, r30, -3072
000724  06500020  vfloat2fp16_h.rz vr0, vr0
000728  c2920102  vload_mask16.mz vr5{mr1}, 0(r3)
00072c  9f010fe9  addli r3, r30, -2944
000730  06100120  vfloat2fp16_l.rz vr0, vr2
000734  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
000738  9f018fe8  addli r3, r30, -3008
00073c  06520420  vfloat2fp16_h.rz vr4, vr8
000740  eeb013a2  vsll.s.mz vr1{mr1}, vr7, vr1
000744  eeb133a2  vsll.s.mz vr3{mr1}, vr7, vr3
000748  6eb353a2  vsll.s.mz vr6{mr1}, vr7, vr5
00074c  c2920102  vload_mask16.mz vr5{mr1}, 0(r3)
000750  6eb003a2  vsll.s.mz vr0{mr1}, vr7, vr0
000754  ea339c02  vand.s.mz vr7{mr1}, r24, vr9
000758  6a324c02  vand.s.mz vr4{mr1}, r24, vr4
00075c  ab0100f0  lui r3, 983040
000760  eab13c02  vand.s.mz vr3{mr1}, r25, vr3
000764  6a312c02  vand.s.mz vr2{mr1}, r24, vr2
000768  eab01c02  vand.s.mz vr1{mr1}, r25, vr1
00076c  97113e00  or r3, r28, r3
000770  6ab00c02  vand.s.mz vr0{mr1}, r25, vr0
000774  6ab36c02  vand.s.mz vr6{mr1}, r25, vr6
000778  ea325c02  vand.s.mz vr5{mr1}, r24, vr5
00077c  eeb17122  vor.s.mz vr3{mr1}, vr3, vr7
000780  6e312322  vor.s.mz vr2{mr1}, vr6, vr2
000784  6e304022  vor.s.mz vr0{mr1}, vr0, vr4
000788  eeb05022  vor.s.mz vr1{mr1}, vr1, vr5
00078c  46003802  vstore.mz vr3{mr1}, 0(r16)
000790  46002702  vstore.mz vr2{mr1}, 0(r14)
000794  46800802  vstore.mz vr0{mr1}, 0(r17)
000798  46801702  vstore.mz vr1{mr1}, 0(r15)
00079c  00a00000  mfence { lm }
0007a0  ffb19000  s_lm2gm r3, r9, 0(r[2:3])
0007a4  9f810d00  addli r3, r27, 0
0007a8  00a00200  mfence { lm, gm }
0007ac  3f202301  blt.s r6, r18, 8
0007b0  db030000  j 28
0007b4  9f000300  addli r1, r6, 0
0007b8  0b93a010  add.s r6, r1, r10
0007bc  b3900028  sext_int2long r[2:3], r1
0007c0  3f7a23fd  blt.s r6, r18, -1380
0007c4  9bad1100  xori r27, r3, 1
0007c8  db5fffff  j -1284
0007cc  9f0e8fe7  addli sp, r30, -3136
0007d0  e38f2e18  loadli.w r31,  3088(sp)
0007d4  63cf2e18  loadli.w r30,  3092(sp)
0007d8  638e3e18  loadli.w r28,  3096(sp)
0007dc  e3cd3e18  loadli.w r27,  3100(sp)
0007e0  638d4e18  loadli.w r26,  3104(sp)
0007e4  e3cc4e18  loadli.w r25,  3108(sp)
0007e8  638c5e18  loadli.w r24,  3112(sp)
0007ec  e3cb5e18  loadli.w r23,  3116(sp)
0007f0  638b6e18  loadli.w r22,  3120(sp)
0007f4  e3ca6e18  loadli.w r21,  3124(sp)
0007f8  638a7e18  loadli.w r20,  3128(sp)
0007fc  e3c97e18  loadli.w r19,  3132(sp)
000800  9f8e8e18  addli sp, sp, 3136
000804  5f800f00  jr r31, 0
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
000940  00100000  exit
000944  00100000  exit
000948  00100000  exit
00094c  00100000  exit
000950  00100000  exit
000954  00100000  exit
000958  00100000  exit
00095c  00100000  exit
000960  00100000  exit
000964  00100000  exit
000968  00100000  exit
00096c  00100000  exit
000970  00100000  exit
000974  00100000  exit
000978  00100000  exit
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
