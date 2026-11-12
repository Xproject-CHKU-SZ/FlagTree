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
000100  eb570f02  load.d r[15:16], 32(r30)
000104  3384822a  zext_int2long r[8:9], r5
000108  8f911166  div.sl r[3:4], r[3:4], r[1:2]
00010c  8bba6148  max.sl r[21:22], r[3:4], r[6:7]
000110  b3025028  zext_int2long r[5:6], zero
000114  9f03bfd7  addli r7, r30, -5160
000118  97818a02  and.d r[3:4], r[21:22], r[8:9]
00011c  1f046fd7  addli r8, r30, -5200
000120  93a15100  seteq.d r3, r[3:4], r[5:6]
000124  6b520f01  load.d r[4:5], 16(r30)
000128  1f03dfd7  addli r6, r30, -5144
00012c  73304300  store.d r[4:5], 0(r6)
000130  6b528f00  load.d r[4:5], 8(r30)
000134  73b04300  store.d r[4:5], 0(r7)
000138  6b520f00  load.d r[4:5], 0(r30)
00013c  73304400  store.d r[4:5], 0(r8)
000140  1f027fd7  addli r4, r30, -5192
000144  7330f200  store.d r[15:16], 0(r4)
000148  bbc10102  bneq r3, zero, 1136
00014c  80310002  core_id r3
000150  1f221000  addli r4, zero, 10
000154  ab040000  lui r9, 0
000158  13023204  setlt.u r4, r4, r3
00015c  9f840400  addli r9, r9, 0
000160  bb300200  bneq r4, zero, 44
000164  1f120000  addli r4, zero, 1
000168  17323200  sll r4, r4, r3
00016c  1b021241  andi r4, r4, 1041
000170  37700200  beq r4, zero, 28
000174  1bb22000  slli r4, r1, 2
000178  ab0200f0  lui r5, 983040
00017c  9f036fd7  addli r7, r30, -5200
000180  17125200  or r4, r4, r5
000184  ebd20300  load.d r[5:6], 0(r7)
000188  7fc29200  bl_gm2lm r4, r9, 0(r[5:6])
00018c  00d20002  load_param_i r4, 1
000190  80520102  load_param_i r5, 2
000194  1f077fd7  addli r14, r30, -5192
000198  00550002  load_param_i r10, 0
00019c  8b924220  mul.s r5, r5, r4
0001a0  6b560700  load.d r[12:13], 0(r14)
0001a4  0b153250  fmac.s r10, r4, r3
0001a8  00a00000  mfence { lm }
0001ac  b382522a  zext_int2long r[5:6], r5
0001b0  b301352c  zext_int2long r[3:4], r10
0001b4  8f135676  mod.sl r[7:8], r[12:13], r[5:6]
0001b8  8f125662  div.sl r[5:6], r[12:13], r[5:6]
0001bc  13b57104  setlt.sl r10, r[3:4], r[7:8]
0001c0  8bb37140  min.sl r[7:8], r[3:4], r[7:8]
0001c4  8bb33250  fmac.sl r[7:8], r[5:6], r[3:4]
0001c8  3305a52c  zext_int2long r[10:11], r10
0001cc  8ba1a210  add.ul r[3:4], r[5:6], r[10:11]
0001d0  0bb5c340  min.sl r[10:11], r[7:8], r[12:13]
0001d4  8ba17110  add.ul r[3:4], r[3:4], r[7:8]
0001d8  0bb8c140  min.sl r[16:17], r[3:4], r[12:13]
0001dc  2bf20000  lui r4, 15
0001e0  9331a806  setle.sl r3, r[16:17], r[10:11]
0001e4  1b12f2ff  ori r4, r4, 4095
0001e8  80210204  csr_set csr3, r4
0001ec  00d00100  sync_group
0001f0  3b8e0102  bneq r3, zero, 1920
0001f4  1f470000  addli r14, zero, 4
0001f8  9f070fd8  addli r15, r30, -5120
0001fc  2382f001  andi.d r[4:5], r[1:2], 31
000200  1f039fd7  addli r6, r30, -5176
000204  0b39a818  sub.sl r[18:19], r[16:17], r[10:11]
000208  1bba2000  slli r20, r1, 2
00020c  9f2d0000  addli r27, zero, 2
000210  1f1e0000  addli r28, zero, 1
000214  8b91e030  div.s r3, r1, r14
000218  73304300  store.d r[4:5], 0(r6)
00021c  1b928700  ori r4, r15, 8
000220  9f8c0714  addli r25, r15, 2560
000224  e70b4fd6  storeli.w r4, -5192(r30)
000228  670c9fd7  storeli.w r25, -5184(r30)
00022c  9bbb2100  slli r23, r3, 2
000230  9bb14100  slli r3, r3, 4
000234  0b923710  add.s r4, r15, r3
000238  0b9d9110  add.s r26, r3, r9
00023c  0b9c7019  sub.s r24, r1, r23
000240  9f01afd7  addli r3, r30, -5168
000244  670b4fd6  storeli.w r4, -5200(r30)
000248  1f02cfd7  addli r4, r30, -5152
00024c  73b05101  store.d r[21:22], 0(r3)
000250  73300201  store.d r[16:17], 0(r4)
000254  5b080000  j 64
000258  1f06dfd7  addli r12, r30, -5144
00025c  9f06ffd7  addli r13, r30, -5128
000260  00a00300  mfence { lm, sm, gm }
000264  ab0100f0  lui r3, 983040
000268  0b255511  add.ul r[10:11], r[10:11], r[21:22]
00026c  0b395919  sub.sl r[18:19], r[18:19], r[21:22]
000270  eb520600  load.d r[5:6], 0(r12)
000274  ebd30600  load.d r[7:8], 0(r13)
000278  13320505  setlt.sl r4, r[10:11], r[16:17]
00027c  8ba27210  add.ul r[5:6], r[5:6], r[7:8]
000280  e303efd7  loadli.w r7,  -5136(r30)
000284  97913300  or r3, r7, r3
000288  ffb19201  s_lm2gm r3, r25, 0(r[5:6])
00028c  00a00200  mfence { lm, gm }
000290  b70b0202  beq r4, zero, 1760
000294  8b31a818  sub.sl r[3:4], r[16:17], r[10:11]
000298  8b331520  mul.sl r[7:8], r[10:11], r[1:2]
00029c  1f00bfd7  addli zero, r30, -5160
0002a0  8bb15141  min.sl r[3:4], r[3:4], r[21:22]
0002a4  17b8b303  sll.d r[16:17], r[7:8], r27
0002a8  ab0300f0  lui r7, 983040
0002ac  6b560000  load.d r[12:13], 0(zero)
0002b0  17200000  xor zero, zero, zero
0002b4  8bb21120  mul.sl r[5:6], r[3:4], r[1:2]
0002b8  0b260611  add.ul r[12:13], r[12:13], r[16:17]
0002bc  1bb42200  slli r8, r5, 2
0002c0  97137400  or r7, r8, r7
0002c4  670f8fd6  storeli.w r8, -5136(r30)
0002c8  ff239601  l_gm2lm r7, r25, 0(r[12:13])
0002cc  9f03ffd7  addli r7, r30, -5128
0002d0  73b00301  store.d r[16:17], 0(r7)
0002d4  bf92b101  blt.s r3, r27, 164
0002d8  1f089fd7  addli r16, r30, -5176
0002dc  b3037028  zext_int2long r[7:8], zero
0002e0  6b560800  load.d r[12:13], 0(r16)
0002e4  93237600  seteq.d r7, r[12:13], r[7:8]
0002e8  3b960300  bneq r7, zero, 388
0002ec  e30d6fd7  loadli.w r27,  -5200(r30)
0002f0  e3037fd7  loadli.w r7,  -5192(r30)
0002f4  9f0c0000  addli r25, zero, 0
0002f8  db020000  j 20
0002fc  9f9c0c00  addli r25, r25, 1
000300  8b934311  add.s r7, r7, r20
000304  8b9d4d11  add.s r27, r27, r20
000308  b7e63c00  beq r25, r3, 440
00030c  3f81e000  blt.s r1, r14, 64
000310  9f060000  addli r13, zero, 0
000314  9f8a1400  addli r21, r9, 8
000318  1f860300  addli r12, r7, 0
00031c  6384faff  loadli.w r8,  -8(r21)
000320  63c8faff  loadli.w r16,  -4(r21)
000324  e3880a00  loadli.w r17,  0(r21)
000328  63cb0a00  loadli.w r22,  4(r21)
00032c  9fc60600  addli r13, r13, 4
000330  9f8a2a00  addli r21, r21, 16
000334  e70f86fe  storeli.w r8, -8(r12)
000338  e74f06ff  storeli.w r16, -4(r12)
00033c  67001601  storeli.w r17, 0(r12)
000340  67406601  storeli.w r22, 4(r12)
000344  1f062600  addli r12, r12, 16
000348  3fdf76ff  blt.s r13, r23, -44
00034c  1f040d00  addli r8, r26, 0
000350  1f860d00  addli r12, r27, 0
000354  9f060c00  addli r13, r24, 0
000358  cb9e70ff  ble.s r1, r23, -92
00035c  63080400  loadli.w r16,  0(r8)
000360  9ff6f6ff  addli r13, r13, -1
000364  1f440400  addli r8, r8, 4
000368  67000601  storeli.w r16, 0(r12)
00036c  1f460600  addli r12, r12, 4
000370  bbbf06fe  bneq r13, zero, -20
000374  5bf1ffff  j -120
000378  00a00000  mfence { lm }
00037c  abf1ffff  lui r3, 1048575
000380  9b9101fc  ori r3, r3, 4032
000384  97813200  and r3, r5, r3
000388  bff1c101  blt.s r3, r28, 124
00038c  1f020000  addli r4, zero, 0
000390  1f060000  addli r12, zero, 0
000394  8b139210  add.s r7, r4, r9
000398  1f068600  addli r12, r12, 64
00039c  1f848300  addli r8, r7, 64
0003a0  9f860301  addli r13, r7, 128
0003a4  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
0003a8  9f838301  addli r7, r7, 192
0003ac  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
0003b0  0b944710  add.s r8, r15, r4
0003b4  42910602  vload_mask16.mz vr2{mr1}, 0(r13)
0003b8  c2910302  vload_mask16.mz vr3{mr1}, 0(r7)
0003bc  1f020202  addli r4, r4, 256
0003c0  9f030414  addli r7, r8, 2560
0003c4  9f068414  addli r13, r8, 2624
0003c8  1f080415  addli r16, r8, 2688
0003cc  1f048415  addli r8, r8, 2752
0003d0  42920302  vload_mask16.mz vr4{mr1}, 0(r7)
0003d4  c2920602  vload_mask16.mz vr5{mr1}, 0(r13)
0003d8  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
0003dc  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0003e0  0e100202  vmul.f.mz.rn vr0{mr1}, vr4, vr0
0003e4  8e901202  vmul.f.mz.rn vr1{mr1}, vr5, vr1
0003e8  0e112302  vmul.f.mz.rn vr2{mr1}, vr6, vr2
0003ec  8e913302  vmul.f.mz.rn vr3{mr1}, vr7, vr3
0003f0  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
0003f4  46901602  vstore_mask16.mz vr1{mr1}, 0(r13)
0003f8  46102802  vstore_mask16.mz vr2{mr1}, 0(r16)
0003fc  46103402  vstore_mask16.mz vr3{mr1}, 0(r8)
000400  3f5e36fe  blt.s r12, r3, -108
000404  1f02cfd7  addli r4, r30, -5152
000408  6b580200  load.d r[16:17], 0(r4)
00040c  4bb932fe  ble.s r5, r3, -436
000410  8bb32a41  min.sl r[7:8], r[21:22], r[18:19]
000414  2bf2ffff  lui r4, 1048575
000418  8bb37020  mul.sl r[7:8], r[1:2], r[7:8]
00041c  1b1202f0  ori r4, r4, 3840
000420  9bb32300  slli r7, r7, 2
000424  97834300  and r7, r7, r4
000428  0b927c10  add.s r4, r25, r7
00042c  0b969310  add.s r12, r7, r9
000430  9f038600  addli r7, r12, 64
000434  42100602  vload_mask16.mz vr0{mr1}, 0(r12)
000438  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
00043c  1f048200  addli r8, r4, 64
000440  9f814100  addli r3, r3, 32
000444  1f060601  addli r12, r12, 128
000448  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
00044c  c2110402  vload_mask16.mz vr3{mr1}, 0(r8)
000450  0e900002  vmul.f.mz.rn vr0{mr1}, vr1, vr0
000454  8e902102  vmul.f.mz.rn vr1{mr1}, vr3, vr2
000458  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
00045c  1f020201  addli r4, r4, 128
000460  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
000464  3fbf51fe  blt.s r3, r5, -52
000468  5bbeffff  j -528
00046c  1f060fd8  addli r12, r30, -5120
000470  9f060000  addli r13, zero, 0
000474  5b020000  j 16
000478  9f960600  addli r13, r13, 1
00047c  0b164611  add.s r12, r12, r20
000480  37813600  beq r13, r3, 64
000484  bfdfc0ff  blt.s r1, r28, -12
000488  9f0a0000  addli r21, zero, 0
00048c  9f830400  addli r7, r9, 0
000490  1f040600  addli r8, r12, 0
000494  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
000498  9f8c8300  addli r25, r7, 64
00049c  9f8a4a00  addli r21, r21, 32
0004a0  9f830301  addli r7, r7, 128
0004a4  c2900c02  vload_mask16.mz vr1{mr1}, 0(r25)
0004a8  9f0c8400  addli r25, r8, 64
0004ac  46100402  vstore_mask16.mz vr0{mr1}, 0(r8)
0004b0  1f040401  addli r8, r8, 128
0004b4  46901c02  vstore_mask16.mz vr1{mr1}, 0(r25)
0004b8  3fff1afe  blt.s r21, r1, -36
0004bc  dbf7ffff  j -68
0004c0  00a00000  mfence { lm }
0004c4  abf1ffff  lui r3, 1048575
0004c8  e30c8fd7  loadli.w r25,  -5184(r30)
0004cc  9b9101fc  ori r3, r3, 4032
0004d0  97813200  and r3, r5, r3
0004d4  bfd1c101  blt.s r3, r28, 116
0004d8  1f020000  addli r4, zero, 0
0004dc  1f860c00  addli r12, r25, 0
0004e0  9f0306ec  addli r7, r12, -2560
0004e4  1f0486ec  addli r8, r12, -2496
0004e8  9f068601  addli r13, r12, 192
0004ec  42120602  vload_mask16.mz vr4{mr1}, 0(r12)
0004f0  1f028200  addli r4, r4, 64
0004f4  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
0004f8  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
0004fc  9f0306ed  addli r7, r12, -2432
000500  1f0486ed  addli r8, r12, -2368
000504  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
000508  c2110402  vload_mask16.mz vr3{mr1}, 0(r8)
00050c  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
000510  9f038600  addli r7, r12, 64
000514  1f040601  addli r8, r12, 128
000518  c2920302  vload_mask16.mz vr5{mr1}, 0(r7)
00051c  42130402  vload_mask16.mz vr6{mr1}, 0(r8)
000520  0e100202  vmul.f.mz.rn vr0{mr1}, vr4, vr0
000524  8e913302  vmul.f.mz.rn vr3{mr1}, vr7, vr3
000528  8e901202  vmul.f.mz.rn vr1{mr1}, vr5, vr1
00052c  0e112302  vmul.f.mz.rn vr2{mr1}, vr6, vr2
000530  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
000534  1f060602  addli r12, r12, 256
000538  46903602  vstore_mask16.mz vr3{mr1}, 0(r13)
00053c  46901302  vstore_mask16.mz vr1{mr1}, 0(r7)
000540  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
000544  3f7e32fe  blt.s r4, r3, -100
000548  1f02afd7  addli r4, r30, -5168
00054c  9f03cfd7  addli r7, r30, -5152
000550  9f2d0000  addli r27, zero, 2
000554  eb5a0200  load.d r[21:22], 0(r4)
000558  6bd80300  load.d r[16:17], 0(r7)
00055c  cbf332fe  ble.s r5, r3, -772
000560  8bb32a41  min.sl r[7:8], r[21:22], r[18:19]
000564  2bf2ffff  lui r4, 1048575
000568  8bb37020  mul.sl r[7:8], r[1:2], r[7:8]
00056c  1b1202f0  ori r4, r4, 3840
000570  9bb32300  slli r7, r7, 2
000574  17824300  and r4, r7, r4
000578  0b924710  add.s r4, r15, r4
00057c  9f038200  addli r7, r4, 64
000580  1f048214  addli r8, r4, 2624
000584  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
000588  9f814100  addli r3, r3, 32
00058c  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
000590  9f030214  addli r7, r4, 2560
000594  c2110402  vload_mask16.mz vr3{mr1}, 0(r8)
000598  1f020201  addli r4, r4, 128
00059c  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
0005a0  8e901102  vmul.f.mz.rn vr1{mr1}, vr3, vr1
0005a4  0e100102  vmul.f.mz.rn vr0{mr1}, vr2, vr0
0005a8  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
0005ac  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
0005b0  3fbf51fe  blt.s r3, r5, -52
0005b4  db94ffff  j -860
0005b8  9f010002  addli r3, zero, 256
0005bc  27f2f001  addli.d r[4:5], r[1:2], 255
0005c0  00530102  load_param_i r6, 2
0005c4  b384912e  zext_int2long r[9:10], r3
0005c8  8f119266  div.sl r[3:4], r[4:5], r[9:10]
0005cc  80d20002  load_param_i r5, 1
0005d0  0b135320  mul.s r6, r6, r5
0005d4  3303632c  zext_int2long r[6:7], r6
0005d8  a3b10102  slli.d r[3:4], r[3:4], 32
0005dc  a3d10102  srai.d r[3:4], r[3:4], 32
0005e0  8bb1f120  mul.sl r[3:4], r[3:4], r[15:16]
0005e4  8f956176  mod.sl r[11:12], r[3:4], r[6:7]
0005e8  8f966162  div.sl r[13:14], r[3:4], r[6:7]
0005ec  00330002  core_id r6
0005f0  80530002  load_param_i r7, 0
0005f4  8b936250  fmac.s r7, r5, r6
0005f8  b382532e  zext_int2long r[5:6], r7
0005fc  8bb8b240  min.sl r[17:18], r[5:6], r[11:12]
000600  8bb85650  fmac.sl r[17:18], r[13:14], r[5:6]
000604  93b2b204  setlt.sl r5, r[5:6], r[11:12]
000608  8bba3840  min.sl r[21:22], r[17:18], r[3:4]
00060c  8f99fa66  div.sl r[19:20], r[21:22], r[15:16]
000610  8f93fa76  mod.sl r[7:8], r[21:22], r[15:16]
000614  a78b0a00  addli.d r[23:24], r[21:22], 0
000618  b382522a  zext_int2long r[5:6], r5
00061c  8ba25610  add.ul r[5:6], r[13:14], r[5:6]
000620  8ba21211  add.ul r[5:6], r[5:6], r[17:18]
000624  0bb23240  min.sl r[4:5], r[5:6], r[3:4]
000628  1f039fd7  addli r6, r30, -5176
00062c  9f011000  addli r3, zero, 8
000630  73304300  store.d r[4:5], 0(r6)
000634  93325207  setle.sl r5, r[4:5], r[21:22]
000638  a78a0700  addli.d r[21:22], r[15:16], 0
00063c  2bf2ffff  lui r4, 1048575
000640  97b93902  sll.d r[19:20], r[19:20], r3
000644  9f010fd8  addli r3, r30, -5120
000648  a7870300  addli.d r[15:16], r[7:8], 0
00064c  8bb53019  sub.sl r[11:12], r[1:2], r[19:20]
000650  8bbd9540  min.sl r[27:28], r[11:12], r[9:10]
000654  9f850110  addli r11, r3, 2048
000658  bb810200  bneq r5, zero, 96
00065c  9f036fd7  addli r7, r30, -5200
000660  1f220000  addli r4, zero, 2
000664  2b0600f0  lui r12, 983040
000668  1bb32d00  slli r6, r27, 2
00066c  8bb81720  mul.sl r[17:18], r[15:16], r[1:2]
000670  1f04bfd7  addli r8, r30, -5160
000674  ebd60300  load.d r[13:14], 0(r7)
000678  97b44902  sll.d r[9:10], r[19:20], r4
00067c  1716c300  or r12, r6, r12
000680  97b84802  sll.d r[17:18], r[17:18], r4
000684  8ba69610  add.ul r[13:14], r[13:14], r[9:10]
000688  7fa63600  l_gm2lm r12, r3, 0(r[13:14])
00068c  eb510400  load.d r[3:4], 0(r8)
000690  2b0600f0  lui r12, 983040
000694  1713c300  or r6, r6, r12
000698  8ba11111  add.ul r[3:4], r[3:4], r[17:18]
00069c  8ba19110  add.ul r[3:4], r[3:4], r[9:10]
0006a0  a7840900  addli.d r[9:10], r[19:20], 0
0006a4  7fa3b100  l_gm2lm r6, r11, 0(r[3:4])
0006a8  9f01ffd7  addli r3, r30, -5128
0006ac  00a00200  mfence { lm, gm }
0006b0  73b03101  store.d r[19:20], 0(r3)
0006b4  5b030000  j 24
0006b8  9b11f2ff  ori r3, r4, 4095
0006bc  1f03ffd7  addli r6, r30, -5128
0006c0  a7840900  addli.d r[9:10], r[19:20], 0
0006c4  b391312e  sext_int2long r[3:4], r3
0006c8  73303300  store.d r[3:4], 0(r6)
0006cc  a7830b00  addli.d r[7:8], r[23:24], 0
0006d0  278c0400  addli.d r[24:25], r[9:10], 0
0006d4  3bfa0200  bneq r5, zero, 668
0006d8  1f030fd8  addli r6, r30, -5120
0006dc  9f020002  addli r5, zero, 256
0006e0  9f080000  addli r17, zero, 0
0006e4  9f048fd7  addli r9, r30, -5184
0006e8  1f2d0000  addli r26, zero, 2
0006ec  9f010310  addli r3, r6, 2048
0006f0  1f030000  addli r6, zero, 0
0006f4  670d3fd6  storeli.w r3, -5168(r30)
0006f8  b381322a  zext_int2long r[3:4], r5
0006fc  9f020fd8  addli r5, r30, -5120
000700  73b03400  store.d r[3:4], 0(r9)
000704  5b090000  j 72
000708  9f110300  addli r3, r6, 1
00070c  1f320000  addli r4, zero, 3
000710  1f059fd7  addli r10, r30, -5176
000714  1f06cfd7  addli r12, r30, -5152
000718  270c0900  addli.d r[24:25], r[18:19], 0
00071c  0b934138  mod.s r6, r3, r4
000720  eb510500  load.d r[3:4], 0(r10)
000724  eb5d0600  load.d r[27:28], 0(r12)
000728  93b43304  setlt.sl r9, r[7:8], r[3:4]
00072c  6302afd7  loadli.w r4,  -5168(r30)
000730  9b31a300  slli r3, r6, 10
000734  8b153210  add.s r11, r4, r3
000738  1f02efd7  addli r4, r30, -5136
00073c  9f01ffd7  addli r3, r30, -5128
000740  eb570200  load.d r[15:16], 0(r4)
000744  73b02101  store.d r[18:19], 0(r3)
000748  b7a80400  beq r9, zero, 552
00074c  a7930300  addli.d r[7:8], r[7:8], 1
000750  1f07efd7  addli r14, r30, -5136
000754  1f0a8fd7  addli r20, r30, -5184
000758  8f915377  mod.sl r[3:4], r[7:8], r[21:22]
00075c  0f965361  div.sl r[12:13], r[7:8], r[21:22]
000760  73303700  store.d r[3:4], 0(r14)
000764  9f011000  addli r3, zero, 8
000768  17393602  sll.d r[18:19], r[12:13], r3
00076c  eb510a00  load.d r[3:4], 0(r20)
000770  0bb62019  sub.sl r[12:13], r[1:2], r[18:19]
000774  8b343640  min.sl r[9:10], r[12:13], r[3:4]
000778  9f110000  addli r3, zero, 1
00077c  1f02cfd7  addli r4, r30, -5152
000780  73309200  store.d r[9:10], 0(r4)
000784  bfe23400  blt.s r9, r3, 184
000788  9f04ffd7  addli r9, r30, -5128
00078c  1736a903  sll.d r[12:13], r[18:19], r26
000790  ebd10400  load.d r[3:4], 0(r9)
000794  13a72103  setneq.d r14, r[3:4], r[18:19]
000798  a7010c00  addli.d r[3:4], r[24:25], 0
00079c  278c0700  addli.d r[24:25], r[15:16], 0
0007a0  3b500700  bneq r14, zero, 20
0007a4  9f07cfd7  addli r15, r30, -5152
0007a8  ebd40700  load.d r[9:10], 0(r15)
0007ac  1bb72400  slli r14, r9, 2
0007b0  5b070000  j 56
0007b4  9f07cfd7  addli r15, r30, -5152
0007b8  1bbaa800  slli r20, r17, 10
0007bc  1f086fd7  addli r16, r30, -5200
0007c0  ebd40700  load.d r[9:10], 0(r15)
0007c4  1b2a0a40  xori r20, r20, 1024
0007c8  ab0b00f0  lui r23, 983040
0007cc  1bb72400  slli r14, r9, 2
0007d0  9f040fd8  addli r9, r30, -5120
0007d4  0b9a4411  add.s r20, r9, r20
0007d8  eb540800  load.d r[9:10], 0(r16)
0007dc  971b7701  or r23, r14, r23
0007e0  8ba4c410  add.ul r[9:10], r[9:10], r[12:13]
0007e4  ffab4401  l_gm2lm r23, r20, 0(r[9:10])
0007e8  9f0befd7  addli r23, r30, -5136
0007ec  9f140300  addli r9, r6, 1
0007f0  1f350000  addli r10, zero, 3
0007f4  1f0bbfd7  addli r22, r30, -5160
0007f8  ebd70b00  load.d r[15:16], 0(r23)
0007fc  8b94a438  mod.s r9, r9, r10
000800  2b0500f0  lui r10, 983040
000804  6b5a0b00  load.d r[20:21], 0(r22)
000808  1715a700  or r10, r14, r10
00080c  8bb71720  mul.sl r[15:16], r[15:16], r[1:2]
000810  97b7a703  sll.d r[15:16], r[15:16], r26
000814  9bb4a400  slli r9, r9, 10
000818  8b27fa10  add.ul r[15:16], r[20:21], r[15:16]
00081c  0ba6c710  add.ul r[12:13], r[15:16], r[12:13]
000820  e307afd7  loadli.w r15,  -5168(r30)
000824  8b949710  add.s r9, r15, r9
000828  a7070c00  addli.d r[15:16], r[24:25], 0
00082c  278c0100  addli.d r[24:25], r[3:4], 0
000830  7f259600  l_gm2lm r10, r9, 0(r[12:13])
000834  9f047fd7  addli r9, r30, -5192
000838  ebda0400  load.d r[21:22], 0(r9)
00083c  abf4ffff  lui r9, 1048575
000840  9f110000  addli r3, zero, 1
000844  9b9404fc  ori r9, r9, 4032
000848  978b9d00  and r23, r27, r9
00084c  bfe13b00  blt.s r23, r3, 120
000850  1f070000  addli r14, zero, 0
000854  1f0a0000  addli r20, zero, 0
000858  8b94e210  add.s r9, r5, r14
00085c  1f0a8a00  addli r20, r20, 64
000860  1f858400  addli r10, r9, 64
000864  1f860401  addli r12, r9, 128
000868  42900402  vload_mask16.mz vr0{mr1}, 0(r9)
00086c  9f848401  addli r9, r9, 192
000870  c2100502  vload_mask16.mz vr1{mr1}, 0(r10)
000874  0b95e510  add.s r10, r11, r14
000878  42110602  vload_mask16.mz vr2{mr1}, 0(r12)
00087c  c2910402  vload_mask16.mz vr3{mr1}, 0(r9)
000880  1f070702  addli r14, r14, 256
000884  9f048500  addli r9, r10, 64
000888  1f060501  addli r12, r10, 128
00088c  9f068501  addli r13, r10, 192
000890  42120502  vload_mask16.mz vr4{mr1}, 0(r10)
000894  c2920402  vload_mask16.mz vr5{mr1}, 0(r9)
000898  42130602  vload_mask16.mz vr6{mr1}, 0(r12)
00089c  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
0008a0  0e100202  vmul.f.mz.rn vr0{mr1}, vr4, vr0
0008a4  8e901202  vmul.f.mz.rn vr1{mr1}, vr5, vr1
0008a8  0e112302  vmul.f.mz.rn vr2{mr1}, vr6, vr2
0008ac  8e913302  vmul.f.mz.rn vr3{mr1}, vr7, vr3
0008b0  46100502  vstore_mask16.mz vr0{mr1}, 0(r10)
0008b4  46901402  vstore_mask16.mz vr1{mr1}, 0(r9)
0008b8  46102602  vstore_mask16.mz vr2{mr1}, 0(r12)
0008bc  46903602  vstore_mask16.mz vr3{mr1}, 0(r13)
0008c0  3f6e7aff  blt.s r20, r23, -104
0008c4  1bb72d00  slli r14, r27, 2
0008c8  4bc17d01  ble.s r27, r23, 80
0008cc  abf4ffff  lui r9, 1048575
0008d0  9b9404f0  ori r9, r9, 3840
0008d4  97049700  and r9, r14, r9
0008d8  0b969510  add.s r12, r11, r9
0008dc  8b969210  add.s r13, r5, r9
0008e0  9f848600  addli r9, r13, 64
0008e4  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
0008e8  c2100602  vload_mask16.mz vr1{mr1}, 0(r12)
0008ec  1f058600  addli r10, r12, 64
0008f0  9f8b4b00  addli r23, r23, 32
0008f4  9f860601  addli r13, r13, 128
0008f8  42910402  vload_mask16.mz vr2{mr1}, 0(r9)
0008fc  c2110502  vload_mask16.mz vr3{mr1}, 0(r10)
000900  0e900002  vmul.f.mz.rn vr0{mr1}, vr1, vr0
000904  8e902102  vmul.f.mz.rn vr1{mr1}, vr3, vr2
000908  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
00090c  1f060601  addli r12, r12, 128
000910  46101502  vstore_mask16.mz vr1{mr1}, 0(r10)
000914  3fbfbbff  blt.s r23, r27, -52
000918  1f0adfd7  addli r20, r30, -5144
00091c  8bb41720  mul.sl r[9:10], r[15:16], r[1:2]
000920  00a00300  mfence { lm, sm, gm }
000924  1736ac03  sll.d r[12:13], r[24:25], r26
000928  eb570a00  load.d r[15:16], 0(r20)
00092c  97b4a403  sll.d r[9:10], r[9:10], r26
000930  8ba49710  add.ul r[9:10], r[15:16], r[9:10]
000934  1f08ffd7  addli r16, r30, -5128
000938  ab0700f0  lui r15, 983040
00093c  eb510800  load.d r[3:4], 0(r16)
000940  8ba4c410  add.ul r[9:10], r[9:10], r[12:13]
000944  93a12101  seteq.d r3, r[3:4], r[18:19]
000948  1712f700  or r4, r14, r15
00094c  7fb2b400  s_lm2gm r4, r11, 0(r[9:10])
000950  1ba21800  xori r4, r17, 1
000954  3bc00100  bneq r3, zero, 16
000958  9b32a200  slli r5, r4, 10
00095c  9f040fd8  addli r9, r30, -5120
000960  8b925410  add.s r5, r9, r5
000964  bb9601fe  bneq r3, zero, -604
000968  9f080200  addli r17, r4, 0
00096c  dbb3ffff  j -612
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
