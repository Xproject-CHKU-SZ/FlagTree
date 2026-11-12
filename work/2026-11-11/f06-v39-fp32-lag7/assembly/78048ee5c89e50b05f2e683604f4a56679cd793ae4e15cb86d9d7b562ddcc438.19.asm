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
0000dc  9f8e8eee  addli sp, sp, -2240
0000e0  1f8f0e11  addli r30, sp, 2176
0000e4  e3002f00  loadli.w r1,  16(r30)
0000e8  63412f00  loadli.w r2,  20(r30)
0000ec  e3013f00  loadli.w r3,  24(r30)
0000f0  0b111120  mul.s r2, r2, r1
0000f4  80500002  load_param_i r1, 0
0000f8  0b173120  mul.s r14, r2, r3
0000fc  cb251704  ble.s r14, r1, 2408
000100  00310002  core_id r2
000104  00d90002  load_param_i r18, 1
000108  2b030100  lui r6, 16
00010c  33110128  sext_int2long r[3:4], r2
000110  33120928  sext_int2long r[5:6], r18
000114  33030328  zext_int2long r[7:8], r6
000118  0b314120  mul.sl r[3:4], r[3:4], r[5:6]
00011c  33920028  sext_int2long r[5:6], r1
000120  0b214110  add.ul r[3:4], r[3:4], r[5:6]
000124  1f720000  addli r4, zero, 7
000128  17324102  sll.d r[5:6], r[3:4], r4
00012c  13346204  setlt.sl r8, r[5:6], r[7:8]
000130  b7340404  beq r8, zero, 2348
000134  0b324318  sub.sl r[5:6], r[7:8], r[5:6]
000138  33060028  zext_int2long r[13:14], zero
00013c  9f030001  addli r7, zero, 128
000140  1f131000  addli r6, zero, 9
000144  6b548f00  load.d r[9:10], 8(r30)
000148  6b550f00  load.d r[11:12], 0(r30)
00014c  1f0a0ff4  addli r20, r30, -1536
000150  ab0a80bf  lui r21, 784384
000154  9f070ff8  addli r15, r30, -1024
000158  9f088000  addli r17, zero, 64
00015c  9f0b8ff9  addli r23, r30, -832
000160  1f0c0ff9  addli r24, r30, -896
000164  9f0c8ffa  addli r25, r30, -704
000168  1f0d0ffa  addli r26, r30, -768
00016c  9f0d8ffb  addli r27, r30, -576
000170  1f0e0ffb  addli r28, r30, -640
000174  674befee  storeli.w r14, -2124(r30)
000178  670b2fef  storeli.w r18, -2128(r30)
00017c  0b32c248  max.sl r[5:6], r[5:6], r[13:14]
000180  33860328  zext_int2long r[13:14], r7
000184  17316102  sll.d r[3:4], r[3:4], r6
000188  0b32c240  min.sl r[5:6], r[5:6], r[13:14]
00018c  0b232510  add.ul r[7:8], r[11:12], r[3:4]
000190  0b212410  add.ul r[3:4], r[9:10], r[3:4]
000194  1f055fef  addli r10, r30, -2136
000198  1f068ff8  addli r12, r30, -960
00019c  ab06803f  lui r13, 260096
0001a0  9f048ffc  addli r9, r30, -448
0001a4  1f048ffe  addli r8, r30, -192
0001a8  9b352200  slli r11, r4, 2
0001ac  1f023fef  addli r4, r30, -2152
0001b0  73306500  store.d r[7:8], 0(r10)
0001b4  9f028ffd  addli r5, r30, -320
0001b8  9f030ffd  addli r7, r30, -384
0001bc  1f038fff  addli r6, r30, -64
0001c0  73302200  store.d r[3:4], 0(r4)
0001c4  2b01353f  lui r2, 258896
0001c8  abf1b53f  lui r3, 260959
0001cc  1f020ffc  addli r4, r30, -512
0001d0  674abfee  storeli.w r11, -2140(r30)
0001d4  1b11314f  ori r2, r2, 1267
0001d8  67492fee  storeli.w r2, -2156(r30)
0001dc  2bb1a73e  lui r2, 256635
0001e0  1b1851a0  ori r16, r2, 2565
0001e4  2bd1873f  lui r2, 260221
0001e8  1b1121c2  ori r2, r2, 3106
0001ec  67092fee  storeli.w r2, -2160(r30)
0001f0  2b01babf  lui r2, 785312
0001f4  1b11310e  ori r2, r2, 227
0001f8  e74f2ff2  storeli.w r2, -1540(r30)
0001fc  1b91310e  ori r2, r3, 227
000200  ab71823e  lui r3, 256039
000204  e70f2ff2  storeli.w r2, -1544(r30)
000208  2ba191be  lui r2, 780570
00020c  1b9b6190  ori r22, r3, 2310
000210  9f010ffe  addli r3, r30, -256
000214  1b11e198  ori r2, r2, 2446
000218  674f2ff2  storeli.w r2, -1548(r30)
00021c  1f010fff  addli r2, r30, -128
000220  2b0500f0  lui r10, 983040
000224  1f477fef  addli r14, r30, -2116
000228  1795a500  or r10, r11, r10
00022c  9f055fef  addli r11, r30, -2136
000230  6bd90500  load.d r[19:20], 0(r11)
000234  9f050ff2  addli r11, r30, -1792
000238  7f254901  l_gm2lm r10, r20, 0(r[19:20])
00023c  1f050ff4  addli r10, r30, -1536
000240  00a00000  mfence { lm }
000244  c2110502  vload_mask16.mz vr3{mr1}, 0(r10)
000248  1f058ff4  addli r10, r30, -1472
00024c  42100502  vload_mask16.mz vr0{mr1}, 0(r10)
000250  1f050ff5  addli r10, r30, -1408
000254  c2100502  vload_mask16.mz vr1{mr1}, 0(r10)
000258  1f058ff5  addli r10, r30, -1344
00025c  42110502  vload_mask16.mz vr2{mr1}, 0(r10)
000260  2b05003f  lui r10, 258048
000264  0a120502  vmul.f.mz.rn vr4{mr1}, r10, vr0
000268  46904502  vstore_mask16.mz vr4{mr1}, 0(r11)
00026c  9f058ff2  addli r11, r30, -1728
000270  0a121502  vmul.f.mz.rn vr4{mr1}, r10, vr1
000274  46904502  vstore_mask16.mz vr4{mr1}, 0(r11)
000278  9f050ff3  addli r11, r30, -1664
00027c  0a122502  vmul.f.mz.rn vr4{mr1}, r10, vr2
000280  46904502  vstore_mask16.mz vr4{mr1}, 0(r11)
000284  9f058ff1  addli r11, r30, -1856
000288  0a123502  vmul.f.mz.rn vr4{mr1}, r10, vr3
00028c  46904502  vstore_mask16.mz vr4{mr1}, 0(r11)
000290  e3452fef  loadli.w r11,  -2156(r30)
000294  8a913502  vmul.f.mz.rn vr3{mr1}, r11, vr3
000298  72103042  vlt.f.mz mr0{mr1}, zero, vr3
00029c  8a940502  vmul.f.mz.rn vr9{mr1}, r11, vr0
0002a0  0a951502  vmul.f.mz.rn vr10{mr1}, r11, vr1
0002a4  8a902502  vmul.f.mz.rn vr1{mr1}, r11, vr2
0002a8  7e010040  vmnot mr2, mr0
0002ac  0a923600  vmul.f.mz.rn vr4{mr0}, r13, vr3
0002b0  7e0001a0  vmmov zero, mr2
0002b4  8a923a04  vmul.f.mz.rn vr5{mr2}, r21, vr3
0002b8  8e913102  vmul.f.mz.rn vr3{mr1}, vr3, vr3
0002bc  67000700  storeli.w zero, 0(r14)
0002c0  1f070ff6  addli r14, r30, -1280
0002c4  17200000  xor zero, zero, zero
0002c8  c2130702  vload_mask16.mz vr7{mr1}, 0(r14)
0002cc  1f078ff6  addli r14, r30, -1216
0002d0  0a917502  vmul.f.mz.rn vr2{mr1}, r11, vr7
0002d4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0002d8  8a127502  vmul.f.mz.rn vr5{mr1}, r10, vr7
0002dc  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
0002e0  1f070ff0  addli r14, r30, -2048
0002e4  46103602  vstore_mask16.mz vr3{mr1}, 0(r12)
0002e8  8a118502  vmul.f.mz.rn vr3{mr1}, r10, vr8
0002ec  0a908502  vmul.f.mz.rn vr0{mr1}, r11, vr8
0002f0  46105702  vstore_mask16.mz vr5{mr1}, 0(r14)
0002f4  1f078ff0  addli r14, r30, -1984
0002f8  46904702  vstore_mask16.mz vr4{mr1}, 0(r15)
0002fc  46103702  vstore_mask16.mz vr3{mr1}, 0(r14)
000300  1f070ff7  addli r14, r30, -1152
000304  c2110702  vload_mask16.mz vr3{mr1}, 0(r14)
000308  1f078ff7  addli r14, r30, -1088
00030c  0a123502  vmul.f.mz.rn vr4{mr1}, r10, vr3
000310  8a953502  vmul.f.mz.rn vr11{mr1}, r11, vr3
000314  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
000318  8a118502  vmul.f.mz.rn vr3{mr1}, r10, vr8
00031c  1f078fef  addli r14, r30, -2112
000320  1f050ff1  addli r10, r30, -1920
000324  0a948502  vmul.f.mz.rn vr8{mr1}, r11, vr8
000328  46103502  vstore_mask16.mz vr3{mr1}, 0(r10)
00032c  46104702  vstore_mask16.mz vr4{mr1}, 0(r14)
000330  1f050000  addli r10, zero, 0
000334  00a00000  mfence { lm }
000338  8b95a710  add.s r11, r15, r10
00033c  ab09803f  lui r19, 260096
000340  0b17a610  add.s r14, r12, r10
000344  1f450500  addli r10, r10, 4
000348  63890500  loadli.w r18,  0(r11)
00034c  630a0700  loadli.w r20,  0(r14)
000350  8b690951  fmac.f.rn r19, r18, r16
000354  0b690a58  neg.f r18, r20
000358  0f090900  exp.f.rn r18, r18
00035c  8f893619  div.f.rn r19, r13, r19
000360  67002701  storeli.w r18, 0(r14)
000364  67803501  storeli.w r19, 0(r11)
000368  3b4f15ff  bneq r10, r17, -48
00036c  00a00000  mfence { lm }
000370  f2119042  vlt.f.mz mr3{mr1}, zero, vr9
000374  9f057fef  addli r11, r30, -2120
000378  8e939402  vmul.f.mz.rn vr7{mr1}, vr9, vr9
00037c  c2910702  vload_mask16.mz vr3{mr1}, 0(r15)
000380  e30a2fef  loadli.w r21,  -2160(r30)
000384  6345fff3  loadli.w r10,  -1540(r30)
000388  c2120602  vload_mask16.mz vr5{mr1}, 0(r12)
00038c  7e810140  vmnot mr2, mr3
000390  7e0001a0  vmmov zero, mr2
000394  67800500  storeli.w zero, 0(r11)
000398  9f457fef  addli r11, r30, -2116
00039c  17200000  xor zero, zero, zero
0003a0  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
0003a4  63800500  loadli.w zero,  0(r11)
0003a8  0a923a02  vmul.f.mz.rn vr4{mr1}, r21, vr3
0003ac  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
0003b0  6305fff3  loadli.w r10,  -1544(r30)
0003b4  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0003b8  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
0003bc  6345eff3  loadli.w r10,  -1548(r30)
0003c0  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0003c4  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
0003c8  2b0580bf  lui r10, 784384
0003cc  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0003d0  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
0003d4  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
0003d8  0a929606  vmul.f.mz.rn vr4{mr3}, r13, vr9
0003dc  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0003e0  8a129504  vmul.f.mz.rn vr5{mr2}, r10, vr9
0003e4  9a913602  vsub.f.mz.rn vr3{mr1}, r13, vr3
0003e8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0003ec  0a933600  vmul.f.mz.rn vr6{mr0}, r13, vr3
0003f0  7e0000e0  vmmov mr0, zero
0003f4  17200000  xor zero, zero, zero
0003f8  46104c02  vstore_mask16.mz vr4{mr1}, 0(r24)
0003fc  8a113500  vmul.f.mz.rn vr3{mr0}, r10, vr3
000400  00a00000  mfence { lm }
000404  1f050000  addli r10, zero, 0
000408  96143302  vadd.f.mz.rn vr9{mr1}, vr6, vr3
00040c  8b15ac10  add.s r11, r24, r10
000410  ab09803f  lui r19, 260096
000414  0b97ab10  add.s r14, r23, r10
000418  1f450500  addli r10, r10, 4
00041c  63890500  loadli.w r18,  0(r11)
000420  630a0700  loadli.w r20,  0(r14)
000424  8b690951  fmac.f.rn r19, r18, r16
000428  0b690a58  neg.f r18, r20
00042c  0f090900  exp.f.rn r18, r18
000430  8f893619  div.f.rn r19, r13, r19
000434  67002701  storeli.w r18, 0(r14)
000438  67803501  storeli.w r19, 0(r11)
00043c  3b4f15ff  bneq r10, r17, -48
000440  00a00000  mfence { lm }
000444  7210a042  vlt.f.mz mr0{mr1}, zero, vr10
000448  9f457fef  addli r11, r30, -2116
00044c  8e13a502  vmul.f.mz.rn vr7{mr1}, vr10, vr10
000450  c2110c02  vload_mask16.mz vr3{mr1}, 0(r24)
000454  6345fff3  loadli.w r10,  -1540(r30)
000458  c2920b02  vload_mask16.mz vr5{mr1}, 0(r23)
00045c  7e010040  vmnot mr2, mr0
000460  7e0001a0  vmmov zero, mr2
000464  67800500  storeli.w zero, 0(r11)
000468  9f057fef  addli r11, r30, -2120
00046c  17200000  xor zero, zero, zero
000470  46907c02  vstore_mask16.mz vr7{mr1}, 0(r25)
000474  63800500  loadli.w zero,  0(r11)
000478  0a923a02  vmul.f.mz.rn vr4{mr1}, r21, vr3
00047c  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
000480  6305fff3  loadli.w r10,  -1544(r30)
000484  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000488  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
00048c  6345eff3  loadli.w r10,  -1548(r30)
000490  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000494  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
000498  2b0580bf  lui r10, 784384
00049c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0004a0  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
0004a4  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
0004a8  0a92a600  vmul.f.mz.rn vr4{mr0}, r13, vr10
0004ac  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0004b0  8a12a504  vmul.f.mz.rn vr5{mr2}, r10, vr10
0004b4  7e0100e0  vmmov mr2, zero
0004b8  17200000  xor zero, zero, zero
0004bc  9a913602  vsub.f.mz.rn vr3{mr1}, r13, vr3
0004c0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0004c4  0a933606  vmul.f.mz.rn vr6{mr3}, r13, vr3
0004c8  8a113504  vmul.f.mz.rn vr3{mr2}, r10, vr3
0004cc  46104d02  vstore_mask16.mz vr4{mr1}, 0(r26)
0004d0  1f050000  addli r10, zero, 0
0004d4  00a00000  mfence { lm }
0004d8  16153302  vadd.f.mz.rn vr10{mr1}, vr6, vr3
0004dc  8b15ad10  add.s r11, r26, r10
0004e0  ab09803f  lui r19, 260096
0004e4  0b97ac10  add.s r14, r25, r10
0004e8  1f450500  addli r10, r10, 4
0004ec  63890500  loadli.w r18,  0(r11)
0004f0  630a0700  loadli.w r20,  0(r14)
0004f4  8b690951  fmac.f.rn r19, r18, r16
0004f8  0b690a58  neg.f r18, r20
0004fc  0f090900  exp.f.rn r18, r18
000500  8f893619  div.f.rn r19, r13, r19
000504  67002701  storeli.w r18, 0(r14)
000508  67803501  storeli.w r19, 0(r11)
00050c  3b4f15ff  bneq r10, r17, -48
000510  00a00000  mfence { lm }
000514  72111042  vlt.f.mz mr2{mr1}, zero, vr1
000518  9f057fef  addli r11, r30, -2120
00051c  8e931002  vmul.f.mz.rn vr7{mr1}, vr1, vr1
000520  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
000524  6345fff3  loadli.w r10,  -1540(r30)
000528  c2920c02  vload_mask16.mz vr5{mr1}, 0(r25)
00052c  fe010140  vmnot mr3, mr2
000530  7e8001a0  vmmov zero, mr3
000534  67800500  storeli.w zero, 0(r11)
000538  9f457fef  addli r11, r30, -2116
00053c  17200000  xor zero, zero, zero
000540  46907d02  vstore_mask16.mz vr7{mr1}, 0(r27)
000544  63800500  loadli.w zero,  0(r11)
000548  0a923a02  vmul.f.mz.rn vr4{mr1}, r21, vr3
00054c  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
000550  6305fff3  loadli.w r10,  -1544(r30)
000554  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000558  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
00055c  6345eff3  loadli.w r10,  -1548(r30)
000560  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000564  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
000568  2b0580bf  lui r10, 784384
00056c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000570  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
000574  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000578  0a921604  vmul.f.mz.rn vr4{mr2}, r13, vr1
00057c  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000580  8a121506  vmul.f.mz.rn vr5{mr3}, r10, vr1
000584  9a913602  vsub.f.mz.rn vr3{mr1}, r13, vr3
000588  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00058c  0a933600  vmul.f.mz.rn vr6{mr0}, r13, vr3
000590  7e0000e0  vmmov mr0, zero
000594  17200000  xor zero, zero, zero
000598  46104e02  vstore_mask16.mz vr4{mr1}, 0(r28)
00059c  8a113500  vmul.f.mz.rn vr3{mr0}, r10, vr3
0005a0  00a00000  mfence { lm }
0005a4  1f050000  addli r10, zero, 0
0005a8  96103302  vadd.f.mz.rn vr1{mr1}, vr6, vr3
0005ac  8b15ae10  add.s r11, r28, r10
0005b0  ab09803f  lui r19, 260096
0005b4  0b97ad10  add.s r14, r27, r10
0005b8  1f450500  addli r10, r10, 4
0005bc  63890500  loadli.w r18,  0(r11)
0005c0  630a0700  loadli.w r20,  0(r14)
0005c4  8b690951  fmac.f.rn r19, r18, r16
0005c8  0b690a58  neg.f r18, r20
0005cc  0f090900  exp.f.rn r18, r18
0005d0  8f893619  div.f.rn r19, r13, r19
0005d4  67002701  storeli.w r18, 0(r14)
0005d8  67803501  storeli.w r19, 0(r11)
0005dc  3b4f15ff  bneq r10, r17, -48
0005e0  00a00000  mfence { lm }
0005e4  72102042  vlt.f.mz mr0{mr1}, zero, vr2
0005e8  9f457fef  addli r11, r30, -2116
0005ec  8e132102  vmul.f.mz.rn vr7{mr1}, vr2, vr2
0005f0  c2110e02  vload_mask16.mz vr3{mr1}, 0(r28)
0005f4  6345fff3  loadli.w r10,  -1540(r30)
0005f8  c2920d02  vload_mask16.mz vr5{mr1}, 0(r27)
0005fc  fe010040  vmnot mr3, mr0
000600  7e8001a0  vmmov zero, mr3
000604  67800500  storeli.w zero, 0(r11)
000608  9f057fef  addli r11, r30, -2120
00060c  17200000  xor zero, zero, zero
000610  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
000614  63800500  loadli.w zero,  0(r11)
000618  0a923a02  vmul.f.mz.rn vr4{mr1}, r21, vr3
00061c  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
000620  6305fff3  loadli.w r10,  -1544(r30)
000624  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000628  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
00062c  6345eff3  loadli.w r10,  -1548(r30)
000630  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000634  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
000638  2b0580bf  lui r10, 784384
00063c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000640  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
000644  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000648  0a922600  vmul.f.mz.rn vr4{mr0}, r13, vr2
00064c  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000650  8a122506  vmul.f.mz.rn vr5{mr3}, r10, vr2
000654  9a913602  vsub.f.mz.rn vr3{mr1}, r13, vr3
000658  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00065c  0a933604  vmul.f.mz.rn vr6{mr2}, r13, vr3
000660  7e0100e0  vmmov mr2, zero
000664  17200000  xor zero, zero, zero
000668  46104202  vstore_mask16.mz vr4{mr1}, 0(r4)
00066c  8a113504  vmul.f.mz.rn vr3{mr2}, r10, vr3
000670  00a00000  mfence { lm }
000674  1f050000  addli r10, zero, 0
000678  16113302  vadd.f.mz.rn vr2{mr1}, vr6, vr3
00067c  8b15a210  add.s r11, r4, r10
000680  ab09803f  lui r19, 260096
000684  0b97a410  add.s r14, r9, r10
000688  1f450500  addli r10, r10, 4
00068c  63890500  loadli.w r18,  0(r11)
000690  630a0700  loadli.w r20,  0(r14)
000694  8b690951  fmac.f.rn r19, r18, r16
000698  0b690a58  neg.f r18, r20
00069c  0f090900  exp.f.rn r18, r18
0006a0  8f893619  div.f.rn r19, r13, r19
0006a4  67002701  storeli.w r18, 0(r14)
0006a8  67803501  storeli.w r19, 0(r11)
0006ac  3b4f15ff  bneq r10, r17, -48
0006b0  00a00000  mfence { lm }
0006b4  72110042  vlt.f.mz mr2{mr1}, zero, vr0
0006b8  9f057fef  addli r11, r30, -2120
0006bc  8e130002  vmul.f.mz.rn vr7{mr1}, vr0, vr0
0006c0  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
0006c4  6345fff3  loadli.w r10,  -1540(r30)
0006c8  c2920402  vload_mask16.mz vr5{mr1}, 0(r9)
0006cc  fe010140  vmnot mr3, mr2
0006d0  7e8001a0  vmmov zero, mr3
0006d4  67800500  storeli.w zero, 0(r11)
0006d8  9f457fef  addli r11, r30, -2116
0006dc  17200000  xor zero, zero, zero
0006e0  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
0006e4  63800500  loadli.w zero,  0(r11)
0006e8  0a923a02  vmul.f.mz.rn vr4{mr1}, r21, vr3
0006ec  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
0006f0  6305fff3  loadli.w r10,  -1544(r30)
0006f4  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0006f8  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
0006fc  6345eff3  loadli.w r10,  -1548(r30)
000700  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000704  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
000708  2b0580bf  lui r10, 784384
00070c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000710  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
000714  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000718  0a920604  vmul.f.mz.rn vr4{mr2}, r13, vr0
00071c  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000720  8a120506  vmul.f.mz.rn vr5{mr3}, r10, vr0
000724  9a913602  vsub.f.mz.rn vr3{mr1}, r13, vr3
000728  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00072c  0a933600  vmul.f.mz.rn vr6{mr0}, r13, vr3
000730  7e0000e0  vmmov mr0, zero
000734  17200000  xor zero, zero, zero
000738  46904302  vstore_mask16.mz vr4{mr1}, 0(r7)
00073c  8a113500  vmul.f.mz.rn vr3{mr0}, r10, vr3
000740  00a00000  mfence { lm }
000744  1f050000  addli r10, zero, 0
000748  16103302  vadd.f.mz.rn vr0{mr1}, vr6, vr3
00074c  8b95a310  add.s r11, r7, r10
000750  ab09803f  lui r19, 260096
000754  0b97a210  add.s r14, r5, r10
000758  1f450500  addli r10, r10, 4
00075c  63890500  loadli.w r18,  0(r11)
000760  630a0700  loadli.w r20,  0(r14)
000764  8b690951  fmac.f.rn r19, r18, r16
000768  0b690a58  neg.f r18, r20
00076c  0f090900  exp.f.rn r18, r18
000770  8f893619  div.f.rn r19, r13, r19
000774  67002701  storeli.w r18, 0(r14)
000778  67803501  storeli.w r19, 0(r11)
00077c  3b4f15ff  bneq r10, r17, -48
000780  00a00000  mfence { lm }
000784  f211b042  vlt.f.mz mr3{mr1}, zero, vr11
000788  9f457fef  addli r11, r30, -2116
00078c  8e93b502  vmul.f.mz.rn vr7{mr1}, vr11, vr11
000790  c2910302  vload_mask16.mz vr3{mr1}, 0(r7)
000794  6345fff3  loadli.w r10,  -1540(r30)
000798  c2920202  vload_mask16.mz vr5{mr1}, 0(r5)
00079c  7e800140  vmnot mr0, mr3
0007a0  7e0000a0  vmmov zero, mr0
0007a4  67800500  storeli.w zero, 0(r11)
0007a8  9f057fef  addli r11, r30, -2120
0007ac  17200000  xor zero, zero, zero
0007b0  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
0007b4  63800500  loadli.w zero,  0(r11)
0007b8  0a923a02  vmul.f.mz.rn vr4{mr1}, r21, vr3
0007bc  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
0007c0  6305fff3  loadli.w r10,  -1544(r30)
0007c4  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0007c8  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
0007cc  6345eff3  loadli.w r10,  -1548(r30)
0007d0  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0007d4  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
0007d8  2b0580bf  lui r10, 784384
0007dc  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0007e0  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
0007e4  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
0007e8  0a92b606  vmul.f.mz.rn vr4{mr3}, r13, vr11
0007ec  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0007f0  8a12b500  vmul.f.mz.rn vr5{mr0}, r10, vr11
0007f4  7e0000e0  vmmov mr0, zero
0007f8  17200000  xor zero, zero, zero
0007fc  9a913602  vsub.f.mz.rn vr3{mr1}, r13, vr3
000800  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000804  0a933604  vmul.f.mz.rn vr6{mr2}, r13, vr3
000808  8a113500  vmul.f.mz.rn vr3{mr0}, r10, vr3
00080c  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
000810  1f050000  addli r10, zero, 0
000814  00a00000  mfence { lm }
000818  96153302  vadd.f.mz.rn vr11{mr1}, vr6, vr3
00081c  8b95a110  add.s r11, r3, r10
000820  ab09803f  lui r19, 260096
000824  0b17a410  add.s r14, r8, r10
000828  1f450500  addli r10, r10, 4
00082c  63890500  loadli.w r18,  0(r11)
000830  630a0700  loadli.w r20,  0(r14)
000834  8b690951  fmac.f.rn r19, r18, r16
000838  0b690a58  neg.f r18, r20
00083c  0f090900  exp.f.rn r18, r18
000840  8f893619  div.f.rn r19, r13, r19
000844  67002701  storeli.w r18, 0(r14)
000848  67803501  storeli.w r19, 0(r11)
00084c  3b4f15ff  bneq r10, r17, -48
000850  00a00000  mfence { lm }
000854  9f457fef  addli r11, r30, -2116
000858  72108042  vlt.f.mz mr0{mr1}, zero, vr8
00085c  8e138402  vmul.f.mz.rn vr7{mr1}, vr8, vr8
000860  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000864  6345fff3  loadli.w r10,  -1540(r30)
000868  c2120402  vload_mask16.mz vr5{mr1}, 0(r8)
00086c  7e010040  vmnot mr2, mr0
000870  63800500  loadli.w zero,  0(r11)
000874  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
000878  0a923a02  vmul.f.mz.rn vr4{mr1}, r21, vr3
00087c  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
000880  6305fff3  loadli.w r10,  -1544(r30)
000884  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000888  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
00088c  6345eff3  loadli.w r10,  -1548(r30)
000890  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000894  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
000898  2b0580bf  lui r10, 784384
00089c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0008a0  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
0008a4  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
0008a8  0a928600  vmul.f.mz.rn vr4{mr0}, r13, vr8
0008ac  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0008b0  8a128504  vmul.f.mz.rn vr5{mr2}, r10, vr8
0008b4  9a913602  vsub.f.mz.rn vr3{mr1}, r13, vr3
0008b8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0008bc  0a933606  vmul.f.mz.rn vr6{mr3}, r13, vr3
0008c0  fe0100e0  vmmov mr3, zero
0008c4  17200000  xor zero, zero, zero
0008c8  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
0008cc  8a113506  vmul.f.mz.rn vr3{mr3}, r10, vr3
0008d0  00a00000  mfence { lm }
0008d4  1f050000  addli r10, zero, 0
0008d8  16143302  vadd.f.mz.rn vr8{mr1}, vr6, vr3
0008dc  8b15a110  add.s r11, r2, r10
0008e0  ab09803f  lui r19, 260096
0008e4  0b17a310  add.s r14, r6, r10
0008e8  1f450500  addli r10, r10, 4
0008ec  63890500  loadli.w r18,  0(r11)
0008f0  630a0700  loadli.w r20,  0(r14)
0008f4  8b690951  fmac.f.rn r19, r18, r16
0008f8  0b690a58  neg.f r18, r20
0008fc  0f090900  exp.f.rn r18, r18
000900  8f893619  div.f.rn r19, r13, r19
000904  67002701  storeli.w r18, 0(r14)
000908  67803501  storeli.w r19, 0(r11)
00090c  3b4f15ff  bneq r10, r17, -48
000910  00a00000  mfence { lm }
000914  92929602  vadd.f.mz.rn vr5{mr1}, r13, vr9
000918  12912602  vadd.f.mz.rn vr2{mr1}, r13, vr2
00091c  92901602  vadd.f.mz.rn vr1{mr1}, r13, vr1
000920  12900602  vadd.f.mz.rn vr0{mr1}, r13, vr0
000924  9f058ff7  addli r11, r30, -1088
000928  1f073fef  addli r14, r30, -2152
00092c  1f0a0ff4  addli r20, r30, -1536
000930  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
000934  6345fff3  loadli.w r10,  -1540(r30)
000938  0a923a02  vmul.f.mz.rn vr4{mr1}, r21, vr3
00093c  ab0a80bf  lui r21, 784384
000940  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
000944  6305fff3  loadli.w r10,  -1544(r30)
000948  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00094c  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
000950  6345eff3  loadli.w r10,  -1548(r30)
000954  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000958  12124502  vadd.f.mz.rn vr4{mr1}, r10, vr4
00095c  1f058ff1  addli r10, r30, -1856
000960  42130502  vload_mask16.mz vr6{mr1}, 0(r10)
000964  1f050ff2  addli r10, r30, -1792
000968  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00096c  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
000970  1f058ff2  addli r10, r30, -1728
000974  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
000978  8e125302  vmul.f.mz.rn vr5{mr1}, vr6, vr5
00097c  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
000980  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000984  1292a602  vadd.f.mz.rn vr4{mr1}, r13, vr10
000988  0e924302  vmul.f.mz.rn vr4{mr1}, vr7, vr4
00098c  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
000990  1f050ff3  addli r10, r30, -1664
000994  8e113302  vmul.f.mz.rn vr3{mr1}, vr6, vr3
000998  42130502  vload_mask16.mz vr6{mr1}, 0(r10)
00099c  1f050ff0  addli r10, r30, -2048
0009a0  8e901302  vmul.f.mz.rn vr1{mr1}, vr7, vr1
0009a4  92938602  vadd.f.mz.rn vr7{mr1}, r13, vr8
0009a8  9a913602  vsub.f.mz.rn vr3{mr1}, r13, vr3
0009ac  0e112302  vmul.f.mz.rn vr2{mr1}, vr6, vr2
0009b0  42130502  vload_mask16.mz vr6{mr1}, 0(r10)
0009b4  1f058ff0  addli r10, r30, -1984
0009b8  42140502  vload_mask16.mz vr8{mr1}, 0(r10)
0009bc  1f058fef  addli r10, r30, -2112
0009c0  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
0009c4  1f050ff4  addli r10, r30, -1536
0009c8  46105502  vstore_mask16.mz vr5{mr1}, 0(r10)
0009cc  1f058ff4  addli r10, r30, -1472
0009d0  0e100302  vmul.f.mz.rn vr0{mr1}, vr6, vr0
0009d4  1293b602  vadd.f.mz.rn vr6{mr1}, r13, vr11
0009d8  46104502  vstore_mask16.mz vr4{mr1}, 0(r10)
0009dc  1f050ff5  addli r10, r30, -1408
0009e0  0e136402  vmul.f.mz.rn vr6{mr1}, vr8, vr6
0009e4  0a943600  vmul.f.mz.rn vr8{mr0}, r13, vr3
0009e8  8a913a04  vmul.f.mz.rn vr3{mr2}, r21, vr3
0009ec  46101502  vstore_mask16.mz vr1{mr1}, 0(r10)
0009f0  1f058ff5  addli r10, r30, -1344
0009f4  8e937402  vmul.f.mz.rn vr7{mr1}, vr9, vr7
0009f8  46102502  vstore_mask16.mz vr2{mr1}, 0(r10)
0009fc  1f050ff6  addli r10, r30, -1280
000a00  96113402  vadd.f.mz.rn vr3{mr1}, vr8, vr3
000a04  46100502  vstore_mask16.mz vr0{mr1}, 0(r10)
000a08  1f050ff1  addli r10, r30, -1920
000a0c  12903602  vadd.f.mz.rn vr0{mr1}, r13, vr3
000a10  c2100502  vload_mask16.mz vr1{mr1}, 0(r10)
000a14  1f058ff6  addli r10, r30, -1216
000a18  46106502  vstore_mask16.mz vr6{mr1}, 0(r10)
000a1c  1f050ff7  addli r10, r30, -1152
000a20  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
000a24  2b0500f0  lui r10, 983040
000a28  0e900002  vmul.f.mz.rn vr0{mr1}, vr1, vr0
000a2c  46900502  vstore_mask16.mz vr0{mr1}, 0(r11)
000a30  e3454fef  loadli.w r11,  -2140(r30)
000a34  00a00000  mfence { lm }
000a38  6b590700  load.d r[19:20], 0(r14)
000a3c  1795a500  or r10, r11, r10
000a40  7f354901  s_lm2gm r10, r20, 0(r[19:20])
000a44  63096fef  loadli.w r18,  -2128(r30)
000a48  00a00000  mfence { lm }
000a4c  63476fef  loadli.w r14,  -2124(r30)
000a50  8b902011  add.s r1, r1, r18
000a54  3fbfe0fa  blt.s r1, r14, -2100
000a58  db010000  j 12
000a5c  8b902011  add.s r1, r1, r18
000a60  bfffe0fe  blt.s r1, r14, -4
000a64  9f0e0fef  addli sp, r30, -2176
000a68  9f8e0e11  addli sp, sp, 2176
000a6c  00a00300  mfence { lm, sm, gm }
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
