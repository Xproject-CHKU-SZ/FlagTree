000000  17200000  xor zero, zero, zero
000004  1f420000  addli r4, zero, 4
000008  1f041000  addli r8, zero, 8
00000c  9f77f0ff  addli r15, zero, -1
000010  80310002  core_id r3
000014  00510102  load_param_i r2, 2
000018  ab800000  lui r1, 8
00001c  ab020000  lui r5, 0
000020  9f82020a  addli r5, r5, 1280
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
000078  9f096000  addli r19, zero, 48
00007c  00200300  mfence { sm, gm }
000080  ff090200  l_gm2sm r19, zero, 0(r[4:5])
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
0000dc  9f8e8ed6  addli sp, sp, -5312
0000e0  1f8f0e29  addli r30, sp, 5248
0000e4  9f010005  addli r3, zero, 640
0000e8  abf2ffff  lui r5, 1048575
0000ec  1f130000  addli r6, zero, 1
0000f0  eb508f02  load.d r[1:2], 40(r30)
0000f4  b381312e  zext_int2long r[3:4], r3
0000f8  9b92e2ff  ori r5, r5, 4094
0000fc  3303632c  zext_int2long r[6:7], r6
000100  6b580f02  load.d r[16:17], 32(r30)
000104  3384822a  zext_int2long r[8:9], r5
000108  8f911166  div.sl r[3:4], r[3:4], r[1:2]
00010c  0bbb6148  max.sl r[22:23], r[3:4], r[6:7]
000110  b3025028  zext_int2long r[5:6], zero
000114  9f03dfd7  addli r7, r30, -5144
000118  97018b02  and.d r[3:4], r[22:23], r[8:9]
00011c  1f04bfd7  addli r8, r30, -5160
000120  9f045fd7  addli r9, r30, -5208
000124  13a25100  seteq.d r4, r[3:4], r[5:6]
000128  eb520f01  load.d r[5:6], 16(r30)
00012c  e3013f00  loadli.w r3,  24(r30)
000130  73b05300  store.d r[5:6], 0(r7)
000134  eb528f00  load.d r[5:6], 8(r30)
000138  73305400  store.d r[5:6], 0(r8)
00013c  eb520f00  load.d r[5:6], 0(r30)
000140  73b05400  store.d r[5:6], 0(r9)
000144  bb410202  bneq r4, zero, 1136
000148  00320002  core_id r4
00014c  9f221000  addli r5, zero, 10
000150  2b050000  lui r10, 0
000154  93824204  setlt.u r5, r5, r4
000158  1f050500  addli r10, r10, 0
00015c  bbb00200  bneq r5, zero, 44
000160  9f120000  addli r5, zero, 1
000164  97b24200  sll r5, r5, r4
000168  9b821241  andi r5, r5, 1041
00016c  37f00200  beq r5, zero, 28
000170  9bb22000  slli r5, r1, 2
000174  2b0300f0  lui r6, 983040
000178  1f045fd7  addli r8, r30, -5208
00017c  97926200  or r5, r5, r6
000180  6b530400  load.d r[6:7], 0(r8)
000184  ff42a300  bl_gm2lm r5, r10, 0(r[6:7])
000188  80d20002  load_param_i r5, 1
00018c  00530102  load_param_i r6, 2
000190  80550002  load_param_i r11, 0
000194  00a00000  mfence { lm }
000198  0b135320  mul.s r6, r6, r5
00019c  8b954250  fmac.s r11, r5, r4
0001a0  3303632c  zext_int2long r[6:7], r6
0001a4  3382452e  zext_int2long r[4:5], r11
0001a8  0f146870  mod.sl r[8:9], r[16:17], r[6:7]
0001ac  0f136864  div.sl r[6:7], r[16:17], r[6:7]
0001b0  93358204  setlt.sl r11, r[4:5], r[8:9]
0001b4  0b348240  min.sl r[8:9], r[4:5], r[8:9]
0001b8  0b344350  fmac.sl r[8:9], r[6:7], r[4:5]
0001bc  b385b52e  zext_int2long r[11:12], r11
0001c0  0b22b310  add.ul r[4:5], r[6:7], r[11:12]
0001c4  8b350441  min.sl r[11:12], r[8:9], r[16:17]
0001c8  0b228210  add.ul r[4:5], r[4:5], r[8:9]
0001cc  8b380241  min.sl r[17:18], r[4:5], r[16:17]
0001d0  abf20000  lui r5, 15
0001d4  13b2b806  setle.sl r4, r[17:18], r[11:12]
0001d8  9b92f2ff  ori r5, r5, 4095
0001dc  80a10204  csr_set csr3, r5
0001e0  00d00100  sync_group
0001e4  3b3e0202  bneq r4, zero, 1932
0001e8  9f470000  addli r15, zero, 4
0001ec  1f080fd8  addli r16, r30, -5120
0001f0  a382f001  andi.d r[5:6], r[1:2], 31
0001f4  9f039fd7  addli r7, r30, -5176
0001f8  8bb9b818  sub.sl r[19:20], r[17:18], r[11:12]
0001fc  9bba2000  slli r21, r1, 2
000200  1f2e0000  addli r28, zero, 2
000204  0b92f030  div.s r4, r1, r15
000208  73b05300  store.d r[5:6], 0(r7)
00020c  9b128800  ori r5, r16, 8
000210  1f0d0814  addli r26, r16, 2560
000214  e70b5fd6  storeli.w r5, -5192(r30)
000218  670cafd7  storeli.w r26, -5184(r30)
00021c  1b3c2200  slli r24, r4, 2
000220  1b324200  slli r4, r4, 4
000224  8b124810  add.s r5, r16, r4
000228  8b1da210  add.s r27, r4, r10
00022c  8b9c8019  sub.s r25, r1, r24
000230  1f02afd7  addli r4, r30, -5168
000234  670b5fd6  storeli.w r5, -5200(r30)
000238  9f02cfd7  addli r5, r30, -5152
00023c  73306201  store.d r[22:23], 0(r4)
000240  73b01201  store.d r[17:18], 0(r5)
000244  5b080000  j 64
000248  9f06dfd7  addli r13, r30, -5144
00024c  1f07ffd7  addli r14, r30, -5128
000250  00a00300  mfence { lm, sm, gm }
000254  2b0200f0  lui r4, 983040
000258  8ba56511  add.ul r[11:12], r[11:12], r[22:23]
00025c  8bb96919  sub.sl r[19:20], r[19:20], r[22:23]
000260  6bd30600  load.d r[6:7], 0(r13)
000264  6b540700  load.d r[8:9], 0(r14)
000268  93b21505  setlt.sl r5, r[11:12], r[17:18]
00026c  0b238310  add.ul r[6:7], r[6:7], r[8:9]
000270  6304efd7  loadli.w r8,  -5136(r30)
000274  17124400  or r4, r8, r4
000278  7f32a301  s_lm2gm r4, r26, 0(r[6:7])
00027c  00a00200  mfence { lm, gm }
000280  b7cb0202  beq r5, zero, 1776
000284  0bb2b818  sub.sl r[4:5], r[17:18], r[11:12]
000288  0bb41520  mul.sl r[8:9], r[11:12], r[1:2]
00028c  1f00bfd7  addli zero, r30, -5160
000290  0b326241  min.sl r[4:5], r[4:5], r[22:23]
000294  9738c403  sll.d r[17:18], r[8:9], r28
000298  2b0400f0  lui r8, 983040
00029c  eb560000  load.d r[13:14], 0(zero)
0002a0  17200000  xor zero, zero, zero
0002a4  0b331220  mul.sl r[6:7], r[4:5], r[1:2]
0002a8  8ba61611  add.ul r[13:14], r[13:14], r[17:18]
0002ac  9b342300  slli r9, r6, 2
0002b0  17948400  or r8, r9, r8
0002b4  670f9fd6  storeli.w r9, -5136(r30)
0002b8  7fa4a601  l_gm2lm r8, r26, 0(r[13:14])
0002bc  1f04ffd7  addli r8, r30, -5128
0002c0  73301401  store.d r[17:18], 0(r8)
0002c4  bf12c201  blt.s r4, r28, 164
0002c8  9f089fd7  addli r17, r30, -5176
0002cc  33048028  zext_int2long r[8:9], zero
0002d0  ebd60800  load.d r[13:14], 0(r17)
0002d4  13a48600  seteq.d r8, r[13:14], r[8:9]
0002d8  3b260400  bneq r8, zero, 392
0002dc  e3066fd7  loadli.w r13,  -5200(r30)
0002e0  63077fd7  loadli.w r14,  -5192(r30)
0002e4  1f0e0000  addli r28, zero, 0
0002e8  db020000  j 20
0002ec  1f1e0e00  addli r28, r28, 1
0002f0  0b175711  add.s r14, r14, r21
0002f4  8b965611  add.s r13, r13, r21
0002f8  37074e00  beq r28, r4, 448
0002fc  3f81f000  blt.s r1, r15, 64
000300  1f0b0000  addli r22, zero, 0
000304  1f041500  addli r8, r10, 8
000308  9f040700  addli r9, r14, 0
00030c  e308f4ff  loadli.w r17,  -8(r8)
000310  6349f4ff  loadli.w r18,  -4(r8)
000314  630d0400  loadli.w r26,  0(r8)
000318  e34b0400  loadli.w r23,  4(r8)
00031c  1f4b0b00  addli r22, r22, 4
000320  1f042400  addli r8, r8, 16
000324  e78f14ff  storeli.w r17, -8(r9)
000328  e7cf24ff  storeli.w r18, -4(r9)
00032c  6780a401  storeli.w r26, 0(r9)
000330  67c07401  storeli.w r23, 4(r9)
000334  9f842400  addli r9, r9, 16
000338  3f5f8bff  blt.s r22, r24, -44
00033c  1f840d00  addli r8, r27, 0
000340  9f840600  addli r9, r13, 0
000344  1f8b0c00  addli r22, r25, 0
000348  cb9e80ff  ble.s r1, r24, -92
00034c  e3080400  loadli.w r17,  0(r8)
000350  1f7bfbff  addli r22, r22, -1
000354  1f440400  addli r8, r8, 4
000358  67801401  storeli.w r17, 0(r9)
00035c  9fc40400  addli r9, r9, 4
000360  bb3f0bfe  bneq r22, zero, -20
000364  5bf1ffff  j -120
000368  00a00000  mfence { lm }
00036c  2bf2ffff  lui r4, 1048575
000370  9f120000  addli r5, zero, 1
000374  1b1202fc  ori r4, r4, 4032
000378  17024300  and r4, r6, r4
00037c  bf715200  blt.s r4, r5, 124
000380  9f020000  addli r5, zero, 0
000384  9f060000  addli r13, zero, 0
000388  0b94a210  add.s r8, r5, r10
00038c  9f868600  addli r13, r13, 64
000390  9f048400  addli r9, r8, 64
000394  1f070401  addli r14, r8, 128
000398  42100402  vload_mask16.mz vr0{mr1}, 0(r8)
00039c  1f048401  addli r8, r8, 192
0003a0  c2900402  vload_mask16.mz vr1{mr1}, 0(r9)
0003a4  8b145810  add.s r9, r16, r5
0003a8  42110702  vload_mask16.mz vr2{mr1}, 0(r14)
0003ac  c2110402  vload_mask16.mz vr3{mr1}, 0(r8)
0003b0  9f820202  addli r5, r5, 256
0003b4  1f840414  addli r8, r9, 2560
0003b8  1f878414  addli r14, r9, 2624
0003bc  9f880415  addli r17, r9, 2688
0003c0  9f848415  addli r9, r9, 2752
0003c4  42120402  vload_mask16.mz vr4{mr1}, 0(r8)
0003c8  c2120702  vload_mask16.mz vr5{mr1}, 0(r14)
0003cc  42930802  vload_mask16.mz vr6{mr1}, 0(r17)
0003d0  c2930402  vload_mask16.mz vr7{mr1}, 0(r9)
0003d4  22920102  vmac.f.mz.rn vr4{mr1}, r3, vr0
0003d8  a2921102  vmac.f.mz.rn vr5{mr1}, r3, vr1
0003dc  22932102  vmac.f.mz.rn vr6{mr1}, r3, vr2
0003e0  a2933102  vmac.f.mz.rn vr7{mr1}, r3, vr3
0003e4  46104402  vstore_mask16.mz vr4{mr1}, 0(r8)
0003e8  46105702  vstore_mask16.mz vr5{mr1}, 0(r14)
0003ec  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
0003f0  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
0003f4  3fde46fe  blt.s r13, r4, -108
0003f8  9f02cfd7  addli r5, r30, -5152
0003fc  ebd80200  load.d r[17:18], 0(r5)
000400  4b2943fe  ble.s r6, r4, -440
000404  0b343b41  min.sl r[8:9], r[22:23], r[19:20]
000408  abf2ffff  lui r5, 1048575
00040c  0bb48020  mul.sl r[8:9], r[1:2], r[8:9]
000410  9b9202f0  ori r5, r5, 3840
000414  1b342400  slli r8, r8, 2
000418  17045400  and r8, r8, r5
00041c  8b128d10  add.s r5, r26, r8
000420  8b16a410  add.s r13, r8, r10
000424  1f848600  addli r8, r13, 64
000428  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
00042c  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
000430  9f848200  addli r9, r5, 64
000434  1f024200  addli r4, r4, 32
000438  9f860601  addli r13, r13, 128
00043c  42110402  vload_mask16.mz vr2{mr1}, 0(r8)
000440  c2910402  vload_mask16.mz vr3{mr1}, 0(r9)
000444  a2900102  vmac.f.mz.rn vr1{mr1}, r3, vr0
000448  a2912102  vmac.f.mz.rn vr3{mr1}, r3, vr2
00044c  46901202  vstore_mask16.mz vr1{mr1}, 0(r5)
000450  9f820201  addli r5, r5, 128
000454  46903402  vstore_mask16.mz vr3{mr1}, 0(r9)
000458  3f3f62fe  blt.s r4, r6, -52
00045c  dbbdffff  j -532
000460  9f060fd8  addli r13, r30, -5120
000464  1f070000  addli r14, zero, 0
000468  5b020000  j 16
00046c  1f170700  addli r14, r14, 1
000470  8b965611  add.s r13, r13, r21
000474  37114700  beq r14, r4, 68
000478  1f140000  addli r8, zero, 1
00047c  bfcf80fe  blt.s r1, r8, -16
000480  1f040000  addli r8, zero, 0
000484  9f040500  addli r9, r10, 0
000488  1f8b0600  addli r22, r13, 0
00048c  42900402  vload_mask16.mz vr0{mr1}, 0(r9)
000490  1f8e8400  addli r28, r9, 64
000494  1f044400  addli r8, r8, 32
000498  9f840401  addli r9, r9, 128
00049c  c2100e02  vload_mask16.mz vr1{mr1}, 0(r28)
0004a0  1f0e8b00  addli r28, r22, 64
0004a4  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
0004a8  1f0b0b01  addli r22, r22, 128
0004ac  46101e02  vstore_mask16.mz vr1{mr1}, 0(r28)
0004b0  3f7f14fe  blt.s r8, r1, -36
0004b4  5bf7ffff  j -72
0004b8  00a00000  mfence { lm }
0004bc  2bf2ffff  lui r4, 1048575
0004c0  630d8fd7  loadli.w r26,  -5184(r30)
0004c4  9f120000  addli r5, zero, 1
0004c8  1b1202fc  ori r4, r4, 4032
0004cc  17024300  and r4, r6, r4
0004d0  bf515200  blt.s r4, r5, 116
0004d4  9f020000  addli r5, zero, 0
0004d8  9f060d00  addli r13, r26, 0
0004dc  1f8406ec  addli r8, r13, -2560
0004e0  9f8486ec  addli r9, r13, -2496
0004e4  1f878601  addli r14, r13, 192
0004e8  42920602  vload_mask16.mz vr4{mr1}, 0(r13)
0004ec  9f828200  addli r5, r5, 64
0004f0  42100402  vload_mask16.mz vr0{mr1}, 0(r8)
0004f4  c2900402  vload_mask16.mz vr1{mr1}, 0(r9)
0004f8  1f8406ed  addli r8, r13, -2432
0004fc  9f8486ed  addli r9, r13, -2368
000500  c2130702  vload_mask16.mz vr7{mr1}, 0(r14)
000504  c2910402  vload_mask16.mz vr3{mr1}, 0(r9)
000508  42110402  vload_mask16.mz vr2{mr1}, 0(r8)
00050c  1f848600  addli r8, r13, 64
000510  9f840601  addli r9, r13, 128
000514  c2120402  vload_mask16.mz vr5{mr1}, 0(r8)
000518  42930402  vload_mask16.mz vr6{mr1}, 0(r9)
00051c  22920102  vmac.f.mz.rn vr4{mr1}, r3, vr0
000520  a2933102  vmac.f.mz.rn vr7{mr1}, r3, vr3
000524  a2921102  vmac.f.mz.rn vr5{mr1}, r3, vr1
000528  22932102  vmac.f.mz.rn vr6{mr1}, r3, vr2
00052c  46904602  vstore_mask16.mz vr4{mr1}, 0(r13)
000530  9f860602  addli r13, r13, 256
000534  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
000538  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
00053c  46906402  vstore_mask16.mz vr6{mr1}, 0(r9)
000540  3ffe42fe  blt.s r5, r4, -100
000544  9f02afd7  addli r5, r30, -5168
000548  1f04cfd7  addli r8, r30, -5152
00054c  1f2e0000  addli r28, zero, 2
000550  6bdb0200  load.d r[22:23], 0(r5)
000554  eb580400  load.d r[17:18], 0(r8)
000558  cb4343fe  ble.s r6, r4, -784
00055c  0b343b41  min.sl r[8:9], r[22:23], r[19:20]
000560  abf2ffff  lui r5, 1048575
000564  0bb48020  mul.sl r[8:9], r[1:2], r[8:9]
000568  9b9202f0  ori r5, r5, 3840
00056c  1b342400  slli r8, r8, 2
000570  97025400  and r5, r8, r5
000574  8b125810  add.s r5, r16, r5
000578  1f848200  addli r8, r5, 64
00057c  9f848214  addli r9, r5, 2624
000580  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
000584  1f024200  addli r4, r4, 32
000588  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
00058c  1f840214  addli r8, r5, 2560
000590  c2910402  vload_mask16.mz vr3{mr1}, 0(r9)
000594  9f820201  addli r5, r5, 128
000598  42110402  vload_mask16.mz vr2{mr1}, 0(r8)
00059c  a2911102  vmac.f.mz.rn vr3{mr1}, r3, vr1
0005a0  22910102  vmac.f.mz.rn vr2{mr1}, r3, vr0
0005a4  46903402  vstore_mask16.mz vr3{mr1}, 0(r9)
0005a8  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
0005ac  3f3f62fe  blt.s r4, r6, -52
0005b0  5b93ffff  j -872
0005b4  1f020002  addli r4, zero, 256
0005b8  a7f2f001  addli.d r[5:6], r[1:2], 255
0005bc  80530102  load_param_i r7, 2
0005c0  9f078fd7  addli r15, r30, -5184
0005c4  b305b228  zext_int2long r[11:12], r4
0005c8  0f92b260  div.sl r[4:5], r[5:6], r[11:12]
0005cc  00d30002  load_param_i r6, 1
0005d0  8b936320  mul.s r7, r7, r6
0005d4  b383732e  zext_int2long r[7:8], r7
0005d8  23320202  slli.d r[4:5], r[4:5], 32
0005dc  23520202  srai.d r[4:5], r[4:5], 32
0005e0  0b320221  mul.sl r[4:5], r[4:5], r[16:17]
0005e4  8f167272  mod.sl r[13:14], r[4:5], r[7:8]
0005e8  0f197264  div.sl r[18:19], r[4:5], r[7:8]
0005ec  80330002  core_id r7
0005f0  00540002  load_param_i r8, 0
0005f4  0b147350  fmac.s r8, r6, r7
0005f8  33036428  zext_int2long r[6:7], r8
0005fc  0b3ad340  min.sl r[20:21], r[6:7], r[13:14]
000600  0b3a6950  fmac.sl r[20:21], r[18:19], r[6:7]
000604  1333d304  setlt.sl r6, r[6:7], r[13:14]
000608  0b344a40  min.sl r[8:9], r[20:21], r[4:5]
00060c  0f1b0465  div.sl r[22:23], r[8:9], r[16:17]
000610  8f160473  mod.sl r[13:14], r[8:9], r[16:17]
000614  3303632c  zext_int2long r[6:7], r6
000618  0b236910  add.ul r[6:7], r[18:19], r[6:7]
00061c  0b234311  add.ul r[6:7], r[6:7], r[20:21]
000620  8b324340  min.sl r[5:6], r[6:7], r[4:5]
000624  1f021000  addli r4, zero, 8
000628  13b58206  setle.sl r10, r[5:6], r[8:9]
00062c  73b05700  store.d r[5:6], 0(r15)
000630  973c4b02  sll.d r[25:26], r[22:23], r4
000634  1f020fd8  addli r4, r30, -5120
000638  278b0600  addli.d r[22:23], r[13:14], 0
00063c  8bb29019  sub.sl r[5:6], r[1:2], r[25:26]
000640  0bb3b240  min.sl r[6:7], r[5:6], r[11:12]
000644  1f060210  addli r12, r4, 2048
000648  abf2ffff  lui r5, 1048575
00064c  bb010500  bneq r10, zero, 96
000650  1f0c5fd7  addli r24, r30, -5208
000654  9f220000  addli r5, zero, 2
000658  ab0700f0  lui r15, 983040
00065c  9b352300  slli r11, r6, 2
000660  0b3a1b20  mul.sl r[20:21], r[22:23], r[1:2]
000664  6b590c00  load.d r[18:19], 0(r24)
000668  97b65c02  sll.d r[13:14], r[25:26], r5
00066c  9797f500  or r15, r11, r15
000670  173a5a02  sll.d r[20:21], r[20:21], r5
000674  0b29d910  add.ul r[18:19], r[18:19], r[13:14]
000678  ff274900  l_gm2lm r15, r4, 0(r[18:19])
00067c  1f09bfd7  addli r18, r30, -5160
000680  6b520900  load.d r[4:5], 0(r18)
000684  ab0700f0  lui r15, 983040
000688  9795f500  or r11, r11, r15
00068c  0b224211  add.ul r[4:5], r[4:5], r[20:21]
000690  0b22d210  add.ul r[4:5], r[4:5], r[13:14]
000694  ff25c200  l_gm2lm r11, r12, 0(r[4:5])
000698  1f02ffd7  addli r4, r30, -5128
00069c  00a00200  mfence { lm, gm }
0006a0  73309201  store.d r[25:26], 0(r4)
0006a4  37700500  beq r10, zero, 28
0006a8  5b590000  j 712
0006ac  1b92f2ff  ori r4, r5, 4095
0006b0  9f05ffd7  addli r11, r30, -5128
0006b4  33124228  sext_int2long r[4:5], r4
0006b8  73b04500  store.d r[4:5], 0(r11)
0006bc  bb5a0500  bneq r10, zero, 692
0006c0  9f050fd8  addli r11, r30, -5120
0006c4  1f050002  addli r10, zero, 256
0006c8  1f290000  addli r18, zero, 2
0006cc  1f0e0fd8  addli r28, r30, -5120
0006d0  9f070000  addli r15, zero, 0
0006d4  670d0fd6  storeli.w zero, -5168(r30)
0006d8  1f820510  addli r4, r11, 2048
0006dc  e70c4fd6  storeli.w r4, -5176(r30)
0006e0  3302452c  zext_int2long r[4:5], r10
0006e4  1f057fd7  addli r10, r30, -5192
0006e8  73304500  store.d r[4:5], 0(r10)
0006ec  1f026fd7  addli r4, r30, -5200
0006f0  73300201  store.d r[16:17], 0(r4)
0006f4  5b090000  j 72
0006f8  1f920700  addli r4, r15, 1
0006fc  9f320000  addli r5, zero, 3
000700  9f058fd7  addli r11, r30, -5184
000704  9f06cfd7  addli r13, r30, -5152
000708  a78c0900  addli.d r[25:26], r[19:20], 0
00070c  8b175238  mod.s r15, r4, r5
000710  6bd20500  load.d r[4:5], 0(r11)
000714  6bd30600  load.d r[6:7], 0(r13)
000718  13354404  setlt.sl r10, r[8:9], r[4:5]
00071c  e3029fd7  loadli.w r5,  -5176(r30)
000720  1bb2a700  slli r4, r15, 10
000724  0b964210  add.s r12, r5, r4
000728  9f02efd7  addli r5, r30, -5136
00072c  1f02ffd7  addli r4, r30, -5128
000730  6bdb0200  load.d r[22:23], 0(r5)
000734  73303201  store.d r[19:20], 0(r4)
000738  b7680500  beq r10, zero, 568
00073c  27140400  addli.d r[8:9], r[8:9], 1
000740  9f0aefd7  addli r21, r30, -5136
000744  1f0c7fd7  addli r24, r30, -5192
000748  0f120471  mod.sl r[4:5], r[8:9], r[16:17]
00074c  8f160463  div.sl r[13:14], r[8:9], r[16:17]
000750  73b04a00  store.d r[4:5], 0(r21)
000754  1f021000  addli r4, zero, 8
000758  97b94602  sll.d r[19:20], r[13:14], r4
00075c  6b520c00  load.d r[4:5], 0(r24)
000760  8bb63019  sub.sl r[13:14], r[1:2], r[19:20]
000764  0bb54640  min.sl r[10:11], r[13:14], r[4:5]
000768  1f120000  addli r4, zero, 1
00076c  9f02cfd7  addli r5, r30, -5152
000770  73b0a200  store.d r[10:11], 0(r5)
000774  bf724500  blt.s r10, r4, 188
000778  1f05ffd7  addli r10, r30, -5128
00077c  97b62903  sll.d r[13:14], r[19:20], r18
000780  6b520500  load.d r[4:5], 0(r10)
000784  932a3203  setneq.d r21, r[4:5], r[19:20]
000788  27020400  addli.d r[4:5], r[8:9], 0
00078c  27040b00  addli.d r[8:9], r[22:23], 0
000790  3bd00a00  bneq r21, zero, 20
000794  1f08cfd7  addli r16, r30, -5152
000798  6b550800  load.d r[10:11], 0(r16)
00079c  9b3a2500  slli r21, r10, 2
0007a0  db070000  j 60
0007a4  6305afd7  loadli.w r10,  -5168(r30)
0007a8  1f08cfd7  addli r16, r30, -5152
0007ac  9f085fd7  addli r17, r30, -5208
0007b0  1b3ca500  slli r24, r10, 10
0007b4  6b550800  load.d r[10:11], 0(r16)
0007b8  ab0d00f0  lui r27, 983040
0007bc  1b2c0c40  xori r24, r24, 1024
0007c0  9b3a2500  slli r21, r10, 2
0007c4  1f050fd8  addli r10, r30, -5120
0007c8  0b1c8511  add.s r24, r10, r24
0007cc  6bd50800  load.d r[10:11], 0(r17)
0007d0  979dba01  or r27, r21, r27
0007d4  0b25d510  add.ul r[10:11], r[10:11], r[13:14]
0007d8  ff2d8501  l_gm2lm r27, r24, 0(r[10:11])
0007dc  1f0cefd7  addli r24, r30, -5136
0007e0  1f950700  addli r10, r15, 1
0007e4  9f350000  addli r11, zero, 3
0007e8  6b580c00  load.d r[16:17], 0(r24)
0007ec  0b15b538  mod.s r10, r10, r11
0007f0  ab0500f0  lui r11, 983040
0007f4  9795ba00  or r11, r21, r11
0007f8  0b381820  mul.sl r[16:17], r[16:17], r[1:2]
0007fc  17382803  sll.d r[16:17], r[16:17], r18
000800  1f09bfd7  addli r18, r30, -5160
000804  1b35a500  slli r10, r10, 10
000808  6b5b0900  load.d r[22:23], 0(r18)
00080c  0b280b11  add.ul r[16:17], r[22:23], r[16:17]
000810  270b0400  addli.d r[22:23], r[8:9], 0
000814  27040200  addli.d r[8:9], r[4:5], 0
000818  8b26d810  add.ul r[13:14], r[16:17], r[13:14]
00081c  63089fd7  loadli.w r16,  -5176(r30)
000820  0b15a810  add.s r10, r16, r10
000824  ffa5a600  l_gm2lm r11, r10, 0(r[13:14])
000828  1f056fd7  addli r10, r30, -5200
00082c  6b580500  load.d r[16:17], 0(r10)
000830  2bf5ffff  lui r10, 1048575
000834  1f120000  addli r4, zero, 1
000838  1b1505fc  ori r10, r10, 4032
00083c  170ca300  and r24, r6, r10
000840  bf614c00  blt.s r24, r4, 120
000844  9f0a0000  addli r21, zero, 0
000848  9f0d0000  addli r27, zero, 0
00084c  0b155e11  add.s r10, r28, r21
000850  9f8d8d00  addli r27, r27, 64
000854  9f058500  addli r11, r10, 64
000858  9f060501  addli r13, r10, 128
00085c  42100502  vload_mask16.mz vr0{mr1}, 0(r10)
000860  1f058501  addli r10, r10, 192
000864  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
000868  8b155611  add.s r11, r12, r21
00086c  42910602  vload_mask16.mz vr2{mr1}, 0(r13)
000870  c2110502  vload_mask16.mz vr3{mr1}, 0(r10)
000874  9f8a0a02  addli r21, r21, 256
000878  1f858500  addli r10, r11, 64
00087c  9f860501  addli r13, r11, 128
000880  1f878501  addli r14, r11, 192
000884  42920502  vload_mask16.mz vr4{mr1}, 0(r11)
000888  c2120502  vload_mask16.mz vr5{mr1}, 0(r10)
00088c  42930602  vload_mask16.mz vr6{mr1}, 0(r13)
000890  c2130702  vload_mask16.mz vr7{mr1}, 0(r14)
000894  22920102  vmac.f.mz.rn vr4{mr1}, r3, vr0
000898  a2921102  vmac.f.mz.rn vr5{mr1}, r3, vr1
00089c  22932102  vmac.f.mz.rn vr6{mr1}, r3, vr2
0008a0  a2933102  vmac.f.mz.rn vr7{mr1}, r3, vr3
0008a4  46904502  vstore_mask16.mz vr4{mr1}, 0(r11)
0008a8  46105502  vstore_mask16.mz vr5{mr1}, 0(r10)
0008ac  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
0008b0  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
0008b4  3fee8dff  blt.s r27, r24, -104
0008b8  9b3a2300  slli r21, r6, 2
0008bc  4b418301  ble.s r6, r24, 80
0008c0  2bf5ffff  lui r10, 1048575
0008c4  1b1505f0  ori r10, r10, 3840
0008c8  1785aa00  and r10, r21, r10
0008cc  8b1da610  add.s r27, r12, r10
0008d0  8b16ae10  add.s r13, r28, r10
0008d4  1f858600  addli r10, r13, 64
0008d8  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
0008dc  c2900d02  vload_mask16.mz vr1{mr1}, 0(r27)
0008e0  9f858d00  addli r11, r27, 64
0008e4  1f0c4c00  addli r24, r24, 32
0008e8  9f860601  addli r13, r13, 128
0008ec  42110502  vload_mask16.mz vr2{mr1}, 0(r10)
0008f0  c2910502  vload_mask16.mz vr3{mr1}, 0(r11)
0008f4  a2900102  vmac.f.mz.rn vr1{mr1}, r3, vr0
0008f8  a2912102  vmac.f.mz.rn vr3{mr1}, r3, vr2
0008fc  46901d02  vstore_mask16.mz vr1{mr1}, 0(r27)
000900  9f8d0d01  addli r27, r27, 128
000904  46903502  vstore_mask16.mz vr3{mr1}, 0(r11)
000908  3f3f6cfe  blt.s r24, r6, -52
00090c  0b331b20  mul.sl r[6:7], r[22:23], r[1:2]
000910  1f0bdfd7  addli r22, r30, -5144
000914  00a00300  mfence { lm, sm, gm }
000918  1f220000  addli r4, zero, 2
00091c  1f290000  addli r18, zero, 2
000920  eb560b00  load.d r[13:14], 0(r22)
000924  17334302  sll.d r[6:7], r[6:7], r4
000928  17b54c02  sll.d r[10:11], r[25:26], r4
00092c  0ba36610  add.ul r[6:7], r[13:14], r[6:7]
000930  1f07ffd7  addli r14, r30, -5128
000934  ab0600f0  lui r13, 983040
000938  6b520700  load.d r[4:5], 0(r14)
00093c  13223201  seteq.d r4, r[4:5], r[19:20]
000940  8b22a310  add.ul r[5:6], r[6:7], r[10:11]
000944  9793da00  or r7, r21, r13
000948  ffb3c200  s_lm2gm r7, r12, 0(r[5:6])
00094c  e302afd7  loadli.w r5,  -5168(r30)
000950  9ba21200  xori r5, r5, 1
000954  3b400200  bneq r4, zero, 16
000958  1bb3a200  slli r6, r5, 10
00095c  9f030fd8  addli r7, r30, -5120
000960  0b9e6310  add.s r28, r7, r6
000964  3b5602fe  bneq r4, zero, -620
000968  670d5fd6  storeli.w r5, -5168(r30)
00096c  dbb1ffff  j -628
000970  9f0e0fd7  addli sp, r30, -5248
000974  9f8e0e29  addli sp, sp, 5248
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
