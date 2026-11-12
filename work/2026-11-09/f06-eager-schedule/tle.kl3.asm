000000  xor zero, zero, zero
000004  addli r4, zero, 4
000008  addli r8, zero, 8
00000c  addli r15, zero, -1
000010  core_id r3
000014  load_param_i r2, 2
000018  lui r1, 8
00001c  lui r5, 0
000020  addli r5, r5, 0
000024  sub.u r1, r1, r5
000028  andi r10, r3, 15
00002c  ori r9, zero, 4
000030  blt.s r3, r4, 12
000034  addli r10, r10, -4
000038  ori r9, zero, 6
00003c  mod.u r10, r10, r9
000040  addli r20, r2, 15
000044  srli r11, r20, 4
000048  srli r12, r3, 4
00004c  div.u r13, r1, r11
000050  addli r12, r12, 1
000054  mul.u r1, r12, r13
000058  add.u r1, r1, r5
00005c  addli sp, r1, 0
000060  slli r20, r15, 6
000064  and sp, sp, r20
000068  bneq zero, r3, 32
00006c  load_param_i r5, 4
000070  load_param_i r4, 3
000074  lui r19, 983040
000078  addli r19, zero, 104
00007c  mfence { sm, gm }
000080  l_gm2sm r19, zero, 0(r[5:6])
000084  mfence { sm, gm }
000088  lui r21, 15
00008c  ori r21, r21, 4095
000090  csr_set csr3, r21
000094  sync_group
000098  jal 176
00009c  mfence { lm, sm }
0000a0  sync_group
0000a4  vmmov mr1, r15
0000a8  vmmovh mr1, r15
0000ac  jal 228
0000b0  vmmov mr1, r15
0000b4  vmmovh mr1, r15
0000b8  addli r20, sp, -128
0000bc  vloads_mask16.mz vr0{mr1}, 0(zero)
0000c0  vloads_mask16.mz vr1{mr1}, 64(zero)
0000c4  vstore.mz vr0{mr1}, 0(r20)
0000c8  vstore.mz vr1{mr1}, 64(r20)
0000cc  mfence { lm, sm }
0000d0  sync_group
0000d4  xor r1, r1, r1
0000d8  addli r30, sp, 0
0000dc  jal 228
0000e0  trap
0000e4  addli sp, sp, -6528
0000e8  lui r2, 0
0000ec  core_id r8
0000f0  lui r1, 8
0000f4  addli r30, sp, 6400
0000f8  lui r10, 4
0000fc  slli r9, r8, 2
000100  addli r2, r2, 0
000104  ori r1, r1, 16
000108  loadli.w r7,  96(r30)
00010c  loadli.w r6,  92(r30)
000110  loadli.w r3,  100(r30)
000114  add.s r5, r2, r9
000118  mul.s r7, r7, r6
00011c  load_param_i r6, 0
000120  add.s r4, r5, r1
000124  add.s r5, r5, r10
000128  mul.s r3, r7, r3
00012c  storeli.w r4, -6340(r30)
000130  stores.w zero, 0(r4)
000134  lui r4, 15
000138  mfence { lm, sm, gm }
00013c  ori r4, r4, 4095
000140  csr_set csr3, r4
000144  sync_group
000148  storeli.w r5, -6344(r30)
00014c  stores.w zero, 0(r5)
000150  mfence { lm, sm, gm }
000154  csr_set csr3, r4
000158  sync_group
00015c  storeli.w r3, -6348(r30)
000160  ble.s r3, r6, 9576
000164  andi r5, r8, 3
000168  load.d r[16:17], 48(r30)
00016c  lui r20, 1048575
000170  addli r3, zero, 2
000174  load.d r[27:28], 32(r30)
000178  loadli.w r21,  12(r30)
00017c  srli r8, r8, 2
000180  loadli.w r23,  68(r30)
000184  loadli.w r19,  40(r30)
000188  load.d r[25:26], 24(r30)
00018c  addli r14, zero, 512
000190  load.d r[12:13], 80(r30)
000194  addli r7, r30, -6384
000198  addli r13, zero, 32
00019c  slli r22, r5, 9
0001a0  ori r20, r20, 4080
0001a4  zext_int2long r[18:19], r22
0001a8  and r9, r9, r20
0001ac  sub.s r19, r19, r22
0001b0  mul.sl r[16:17], r[16:17], r[18:19]
0001b4  add.s r2, r2, r9
0001b8  sub.s r9, r23, r22
0001bc  max.s r19, r19, zero
0001c0  sll.d r[16:17], r[16:17], r3
0001c4  load_param_i r3, 1
0001c8  min.s r19, r19, r14
0001cc  add.s r28, r2, r1
0001d0  max.s r1, r9, zero
0001d4  addli r9, r30, -4352
0001d8  add.ul r[16:17], r[27:28], r[16:17]
0001dc  storeli.w r3, -6352(r30)
0001e0  sub.s r26, r21, r22
0001e4  andi r3, r8, 15
0001e8  add.s r27, r2, r10
0001ec  slli r19, r19, 2
0001f0  min.s r1, r1, r14
0001f4  addli r10, zero, 64
0001f8  addli r21, zero, 256
0001fc  max.s r8, r26, zero
000200  storeli.w r3, -6388(r30)
000204  zext_int2long r[23:24], r3
000208  addli r3, r30, -6360
00020c  slli r1, r1, 2
000210  store.d r[23:24], 0(r3)
000214  min.s r8, r8, r14
000218  mul.sl r[23:24], r[25:26], r[18:19]
00021c  addli r3, r30, -6368
000220  addli r14, r5, 0
000224  storeli.w r1, -6392(r30)
000228  store.d r[23:24], 0(r3)
00022c  slli r3, r8, 2
000230  storeli.w r3, -6372(r30)
000234  mul.sl r[3:4], r[12:13], r[18:19]
000238  addli r11, r30, -2304
00023c  addli r12, zero, 128
000240  store.d r[3:4], 0(r7)
000244  lui r2, 983040
000248  or r2, r19, r2
00024c  addli r19, r30, -256
000250  l_gm2lm r2, r11, 0(r[16:17])
000254  addli r11, zero, 256
000258  mfence { lm }
00025c  j 76
000260  load.d r[3:4], 72(r30)
000264  addli r5, r30, -6384
000268  load.d r[8:9], 0(r5)
00026c  addli r5, zero, 2
000270  mul.sl r[3:4], r[18:19], r[3:4]
000274  add.ul r[3:4], r[3:4], r[8:9]
000278  load.d r[8:9], 56(r30)
00027c  sll.d r[3:4], r[3:4], r5
000280  lui r5, 983040
000284  add.ul r[3:4], r[8:9], r[3:4]
000288  or r1, r1, r5
00028c  s_lm2gm r1, r9, 0(r[3:4])
000290  loadli.w r1,  -6352(r30)
000294  mfence { lm }
000298  add.s r6, r6, r1
00029c  loadli.w r1,  -6348(r30)
0002a0  blt.s r6, r1, 8
0002a4  j 9252
0002a8  loadli.w r1,  100(r30)
0002ac  loadli.w r2,  96(r30)
0002b0  div.s r1, r6, r1
0002b4  div.s r1, r1, r2
0002b8  slli r17, r1, 4
0002bc  loadli.w r1,  -6388(r30)
0002c0  mfence { lm }
0002c4  loadli.w r3,  8(r30)
0002c8  or r2, r17, r1
0002cc  loadli.w r1,  -6372(r30)
0002d0  blt.s r2, r3, 8
0002d4  addli r1, zero, 0
0002d8  addli r3, r30, -6360
0002dc  sext_int2long r[18:19], r17
0002e0  addli r5, zero, 2
0002e4  load.d r[8:9], 0(r3)
0002e8  addli r3, r30, -6368
0002ec  or.d r[18:19], r[18:19], r[8:9]
0002f0  load.d r[8:9], 16(r30)
0002f4  mul.sl r[23:24], r[18:19], r[8:9]
0002f8  load.d r[8:9], 0(r3)
0002fc  lui r3, 983040
000300  or r1, r1, r3
000304  add.ul r[23:24], r[23:24], r[8:9]
000308  load.d r[8:9], 0(r30)
00030c  sll.d r[23:24], r[23:24], r5
000310  add.ul r[23:24], r[8:9], r[23:24]
000314  l_gm2lm r1, r9, 0(r[23:24])
000318  addli r1, r30, -4352
00031c  mfence { lm }
000320  vload_mask16.mz vr5{mr1}, 0(r1)
000324  addli r1, r30, -4288
000328  vload_mask16.mz vr3{mr1}, 0(r1)
00032c  addli r1, r30, -4224
000330  vload_mask16.mz vr4{mr1}, 0(r1)
000334  addli r1, r30, -4160
000338  vload_mask16.mz vr2{mr1}, 0(r1)
00033c  addli r1, r30, -4096
000340  vload_mask16.mz vr1{mr1}, 0(r1)
000344  addli r1, r30, -4032
000348  vload_mask16.mz vr0{mr1}, 0(r1)
00034c  addli r1, r30, -2304
000350  vload_mask16.mz vr6{mr1}, 0(r1)
000354  addli r1, r30, -3968
000358  vload_mask16.mz vr11{mr1}, 0(r1)
00035c  addli r1, r30, -3904
000360  vload_mask16.mz vr10{mr1}, 0(r1)
000364  addli r1, r30, -3840
000368  vload_mask16.mz vr9{mr1}, 0(r1)
00036c  addli r1, r30, -3776
000370  vadd.f.mz.rn vr5{mr1}, vr5, vr6
000374  vload_mask16.mz vr8{mr1}, 0(r1)
000378  addli r1, r30, -2240
00037c  vload_mask16.mz vr7{mr1}, 0(r1)
000380  addli r1, r30, -5824
000384  vstore_mask16.mz vr5{mr1}, 0(r1)
000388  addli r1, r30, -2176
00038c  vload_mask16.mz vr6{mr1}, 0(r1)
000390  addli r1, r30, -5504
000394  vadd.f.mz.rn vr3{mr1}, vr3, vr7
000398  vstore_mask16.mz vr3{mr1}, 0(r1)
00039c  addli r1, r30, -2112
0003a0  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0003a4  vload_mask16.mz vr7{mr1}, 0(r1)
0003a8  addli r1, r30, -5632
0003ac  vstore_mask16.mz vr3{mr1}, 0(r1)
0003b0  addli r1, r30, -2048
0003b4  vload_mask16.mz vr6{mr1}, 0(r1)
0003b8  addli r1, r30, -5696
0003bc  vadd.f.mz.rn vr2{mr1}, vr2, vr7
0003c0  vstore_mask16.mz vr2{mr1}, 0(r1)
0003c4  addli r1, r30, -1984
0003c8  vadd.f.mz.rn vr1{mr1}, vr1, vr6
0003cc  vload_mask16.mz vr7{mr1}, 0(r1)
0003d0  addli r1, r30, -5760
0003d4  vstore_mask16.mz vr1{mr1}, 0(r1)
0003d8  addli r1, r30, -1920
0003dc  vload_mask16.mz vr1{mr1}, 0(r1)
0003e0  addli r1, r30, -5440
0003e4  vadd.f.mz.rn vr0{mr1}, vr0, vr7
0003e8  vstore_mask16.mz vr0{mr1}, 0(r1)
0003ec  addli r1, r30, -1856
0003f0  vadd.f.mz.rn vr0{mr1}, vr11, vr1
0003f4  vload_mask16.mz vr7{mr1}, 0(r1)
0003f8  addli r1, r30, -5568
0003fc  vstore_mask16.mz vr0{mr1}, 0(r1)
000400  addli r1, r30, -3712
000404  vload_mask16.mz vr1{mr1}, 0(r1)
000408  addli r1, r30, -5248
00040c  vadd.f.mz.rn vr0{mr1}, vr10, vr7
000410  vstore_mask16.mz vr0{mr1}, 0(r1)
000414  addli r1, r30, -1792
000418  vload_mask16.mz vr7{mr1}, 0(r1)
00041c  addli r1, r30, -1728
000420  vload_mask16.mz vr10{mr1}, 0(r1)
000424  addli r1, r30, -1664
000428  vload_mask16.mz vr0{mr1}, 0(r1)
00042c  addli r1, r30, -5376
000430  vadd.f.mz.rn vr2{mr1}, vr9, vr7
000434  vstore_mask16.mz vr2{mr1}, 0(r1)
000438  vadd.f.mz.rn vr2{mr1}, vr8, vr10
00043c  addli r1, r30, -4416
000440  vadd.f.mz.rn vr0{mr1}, vr1, vr0
000444  vstore_mask16.mz vr2{mr1}, 0(r1)
000448  addli r1, r30, -4480
00044c  vstore_mask16.mz vr0{mr1}, 0(r1)
000450  addli r1, r30, -3648
000454  vload_mask16.mz vr0{mr1}, 0(r1)
000458  addli r1, r30, -3584
00045c  vload_mask16.mz vr7{mr1}, 0(r1)
000460  addli r1, r30, -3520
000464  vload_mask16.mz vr10{mr1}, 0(r1)
000468  addli r1, r30, -1600
00046c  vload_mask16.mz vr1{mr1}, 0(r1)
000470  addli r1, r30, -1536
000474  vload_mask16.mz vr8{mr1}, 0(r1)
000478  addli r1, r30, -1472
00047c  vload_mask16.mz vr9{mr1}, 0(r1)
000480  addli r1, r30, -5312
000484  vadd.f.mz.rn vr0{mr1}, vr0, vr1
000488  vstore_mask16.mz vr0{mr1}, 0(r1)
00048c  vadd.f.mz.rn vr0{mr1}, vr7, vr8
000490  addli r1, r30, -5120
000494  vadd.f.mz.rn vr2{mr1}, vr10, vr9
000498  vstore_mask16.mz vr0{mr1}, 0(r1)
00049c  addli r1, r30, -3456
0004a0  vload_mask16.mz vr0{mr1}, 0(r1)
0004a4  addli r1, r30, -3392
0004a8  vload_mask16.mz vr7{mr1}, 0(r1)
0004ac  addli r1, r30, -3328
0004b0  vload_mask16.mz vr9{mr1}, 0(r1)
0004b4  addli r1, r30, -1408
0004b8  vload_mask16.mz vr10{mr1}, 0(r1)
0004bc  addli r1, r30, -1344
0004c0  vload_mask16.mz vr8{mr1}, 0(r1)
0004c4  addli r1, r30, -1280
0004c8  vload_mask16.mz vr1{mr1}, 0(r1)
0004cc  addli r1, r30, -5056
0004d0  vadd.f.mz.rn vr0{mr1}, vr0, vr10
0004d4  vstore_mask16.mz vr0{mr1}, 0(r1)
0004d8  vadd.f.mz.rn vr0{mr1}, vr7, vr8
0004dc  addli r1, r30, -4928
0004e0  vstore_mask16.mz vr0{mr1}, 0(r1)
0004e4  vadd.f.mz.rn vr0{mr1}, vr9, vr1
0004e8  addli r1, r30, -4800
0004ec  vstore_mask16.mz vr0{mr1}, 0(r1)
0004f0  addli r1, r30, -3264
0004f4  vload_mask16.mz vr0{mr1}, 0(r1)
0004f8  addli r1, r30, -3200
0004fc  vload_mask16.mz vr1{mr1}, 0(r1)
000500  addli r1, r30, -3136
000504  vload_mask16.mz vr7{mr1}, 0(r1)
000508  addli r1, r30, -1216
00050c  vload_mask16.mz vr8{mr1}, 0(r1)
000510  addli r1, r30, -1152
000514  vload_mask16.mz vr9{mr1}, 0(r1)
000518  addli r1, r30, -1088
00051c  vload_mask16.mz vr10{mr1}, 0(r1)
000520  addli r1, r30, -4544
000524  vadd.f.mz.rn vr0{mr1}, vr0, vr8
000528  vstore_mask16.mz vr0{mr1}, 0(r1)
00052c  vadd.f.mz.rn vr0{mr1}, vr1, vr9
000530  addli r1, r30, -4672
000534  vstore_mask16.mz vr0{mr1}, 0(r1)
000538  vadd.f.mz.rn vr0{mr1}, vr7, vr10
00053c  addli r1, r30, -4608
000540  vstore_mask16.mz vr0{mr1}, 0(r1)
000544  addli r1, r30, -3072
000548  vload_mask16.mz vr0{mr1}, 0(r1)
00054c  addli r1, r30, -3008
000550  vload_mask16.mz vr1{mr1}, 0(r1)
000554  addli r1, r30, -2944
000558  vload_mask16.mz vr7{mr1}, 0(r1)
00055c  vload_mask16.mz vr8{mr1}, 1024(r30)
000560  vload_mask16.mz vr9{mr1}, 1088(r30)
000564  vload_mask16.mz vr10{mr1}, 1152(r30)
000568  addli r1, r30, -6336
00056c  vadd.f.mz.rn vr0{mr1}, vr0, vr8
000570  vadd.f.mz.rn vr6{mr1}, vr1, vr9
000574  vstore_mask16.mz vr0{mr1}, 0(r1)
000578  vadd.f.mz.rn vr0{mr1}, vr7, vr10
00057c  addli r1, r30, -5184
000580  vstore_mask16.mz vr0{mr1}, 0(r1)
000584  addli r1, r30, -2880
000588  vload_mask16.mz vr0{mr1}, 0(r1)
00058c  addli r1, r30, -2816
000590  vload_mask16.mz vr1{mr1}, 0(r1)
000594  addli r1, r30, -2752
000598  vload_mask16.mz vr7{mr1}, 0(r1)
00059c  vload_mask16.mz vr8{mr1}, 1216(r30)
0005a0  vload_mask16.mz vr9{mr1}, 1280(r30)
0005a4  addli r1, r30, -4992
0005a8  vload_mask16.mz vr10{mr1}, 1344(r30)
0005ac  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0005b0  vadd.f.mz.rn vr4{mr1}, vr7, vr10
0005b4  vstore_mask16.mz vr0{mr1}, 0(r1)
0005b8  vadd.f.mz.rn vr0{mr1}, vr1, vr9
0005bc  addli r1, r30, -4864
0005c0  vstore_mask16.mz vr0{mr1}, 0(r1)
0005c4  addli r1, r30, -2688
0005c8  vload_mask16.mz vr0{mr1}, 0(r1)
0005cc  addli r1, r30, -2624
0005d0  vload_mask16.mz vr1{mr1}, 0(r1)
0005d4  addli r1, r30, -2560
0005d8  vload_mask16.mz vr7{mr1}, 0(r1)
0005dc  vload_mask16.mz vr8{mr1}, 1408(r30)
0005e0  vload_mask16.mz vr9{mr1}, 1472(r30)
0005e4  addli r1, r30, -4736
0005e8  vload_mask16.mz vr10{mr1}, 1536(r30)
0005ec  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0005f0  vadd.f.mz.rn vr5{mr1}, vr1, vr9
0005f4  vadd.f.mz.rn vr11{mr1}, vr7, vr10
0005f8  vstore_mask16.mz vr0{mr1}, 0(r1)
0005fc  addli r1, r30, -2496
000600  vload_mask16.mz vr0{mr1}, 0(r1)
000604  addli r1, r30, -2432
000608  vload_mask16.mz vr1{mr1}, 0(r1)
00060c  addli r1, r30, -2368
000610  vload_mask16.mz vr7{mr1}, 0(r1)
000614  vload_mask16.mz vr8{mr1}, 1600(r30)
000618  vload_mask16.mz vr9{mr1}, 1664(r30)
00061c  vload_mask16.mz vr10{mr1}, 1728(r30)
000620  addli r1, r30, -4608
000624  loadli.w r3,  -6344(r30)
000628  vload_mask16.mz vr3{mr1}, 0(r1)
00062c  addli r1, r30, -5184
000630  vadd.f.mz.rn vr0{mr1}, vr0, vr8
000634  vadd.f.mz.rn vr10{mr1}, vr7, vr10
000638  vload_mask16.mz vr7{mr1}, 0(r1)
00063c  addli r1, r30, -5504
000640  vadd.f.mz.rn vr8{mr1}, vr1, vr9
000644  vload_mask16.mz vr1{mr1}, 0(r1)
000648  addli r1, r30, -5824
00064c  vadd.s.mz vr9{mr1}, zero, vr0
000650  vload_mask16.mz vr0{mr1}, 0(r1)
000654  addli r1, r30, -5632
000658  vmax.f.mz vr0{mr1}, vr0, vr1
00065c  vload_mask16.mz vr1{mr1}, 0(r1)
000660  addli r1, r30, -5696
000664  vmax.f.mz vr0{mr1}, vr0, vr1
000668  vload_mask16.mz vr1{mr1}, 0(r1)
00066c  addli r1, r30, -5760
000670  vmax.f.mz vr0{mr1}, vr0, vr1
000674  vload_mask16.mz vr1{mr1}, 0(r1)
000678  addli r1, r30, -5440
00067c  vmax.f.mz vr0{mr1}, vr0, vr1
000680  vload_mask16.mz vr1{mr1}, 0(r1)
000684  addli r1, r30, -5568
000688  vmax.f.mz vr0{mr1}, vr0, vr1
00068c  vload_mask16.mz vr1{mr1}, 0(r1)
000690  addli r1, r30, -5248
000694  vmax.f.mz vr0{mr1}, vr0, vr1
000698  vload_mask16.mz vr1{mr1}, 0(r1)
00069c  addli r1, r30, -5376
0006a0  vmax.f.mz vr0{mr1}, vr0, vr1
0006a4  vload_mask16.mz vr1{mr1}, 0(r1)
0006a8  addli r1, r30, -4416
0006ac  vmax.f.mz vr0{mr1}, vr0, vr1
0006b0  vload_mask16.mz vr1{mr1}, 0(r1)
0006b4  addli r1, r30, -4480
0006b8  vmax.f.mz vr0{mr1}, vr0, vr1
0006bc  vload_mask16.mz vr1{mr1}, 0(r1)
0006c0  addli r1, r30, -5312
0006c4  vmax.f.mz vr0{mr1}, vr0, vr1
0006c8  vload_mask16.mz vr1{mr1}, 0(r1)
0006cc  addli r1, r30, -5120
0006d0  vmax.f.mz vr0{mr1}, vr0, vr1
0006d4  vload_mask16.mz vr1{mr1}, 0(r1)
0006d8  addli r1, r30, -6272
0006dc  vmax.f.mz vr0{mr1}, vr0, vr1
0006e0  vmax.f.mz vr0{mr1}, vr0, vr2
0006e4  vstore_mask16.mz vr2{mr1}, 0(r1)
0006e8  addli r1, r30, -5056
0006ec  vload_mask16.mz vr1{mr1}, 0(r1)
0006f0  addli r1, r30, -4928
0006f4  vmax.f.mz vr0{mr1}, vr0, vr1
0006f8  vload_mask16.mz vr1{mr1}, 0(r1)
0006fc  addli r1, r30, -4800
000700  vmax.f.mz vr0{mr1}, vr0, vr1
000704  vload_mask16.mz vr1{mr1}, 0(r1)
000708  addli r1, r30, -4544
00070c  vmax.f.mz vr0{mr1}, vr0, vr1
000710  vload_mask16.mz vr1{mr1}, 0(r1)
000714  addli r1, r30, -4672
000718  vmax.f.mz vr0{mr1}, vr0, vr1
00071c  vload_mask16.mz vr1{mr1}, 0(r1)
000720  addli r1, r30, -6336
000724  vmax.f.mz vr0{mr1}, vr0, vr1
000728  vmax.f.mz vr0{mr1}, vr0, vr3
00072c  vload_mask16.mz vr1{mr1}, 0(r1)
000730  addli r1, r30, -6208
000734  vmax.f.mz vr0{mr1}, vr0, vr1
000738  vmax.f.mz vr0{mr1}, vr0, vr6
00073c  vstore_mask16.mz vr6{mr1}, 0(r1)
000740  addli r1, r30, -4992
000744  vmax.f.mz vr0{mr1}, vr0, vr7
000748  vadd.s.mz vr2{mr1}, zero, vr1
00074c  vload_mask16.mz vr1{mr1}, 0(r1)
000750  addli r1, r30, -4864
000754  vmax.f.mz vr0{mr1}, vr0, vr1
000758  vload_mask16.mz vr1{mr1}, 0(r1)
00075c  addli r1, r30, -6144
000760  vmax.f.mz vr0{mr1}, vr0, vr1
000764  vmax.f.mz vr0{mr1}, vr0, vr4
000768  vstore_mask16.mz vr4{mr1}, 0(r1)
00076c  addli r1, r30, -4736
000770  vload_mask16.mz vr1{mr1}, 0(r1)
000774  vmax.f.mz vr0{mr1}, vr0, vr1
000778  addli r1, r30, -6080
00077c  vmax.f.mz vr0{mr1}, vr0, vr5
000780  vmax.f.mz vr0{mr1}, vr0, vr11
000784  vstore_mask16.mz vr5{mr1}, 0(r1)
000788  addli r1, r30, -6016
00078c  vadd.s.mz vr5{mr1}, zero, vr11
000790  vmax.f.mz vr0{mr1}, vr0, vr9
000794  vmax.f.mz vr0{mr1}, vr0, vr8
000798  vstore_mask16.mz vr9{mr1}, 0(r1)
00079c  addli r1, r30, -5952
0007a0  vmax.f.mz vr0{mr1}, vr0, vr10
0007a4  vsrl.p vr1, r11, vr0
0007a8  vmax.f.mz vr0{mr1}, vr0, vr1
0007ac  vsrl.p vr1, r12, vr0
0007b0  vstore_mask16.mz vr8{mr1}, 0(r1)
0007b4  addli r1, r30, -5888
0007b8  vmax.f.mz vr0{mr1}, vr0, vr1
0007bc  vsrl.p vr1, r10, vr0
0007c0  addli r10, zero, 128
0007c4  vmax.f.mz vr0{mr1}, vr0, vr1
0007c8  vsrl.p vr1, r13, vr0
0007cc  vstore_mask16.mz vr10{mr1}, 0(r1)
0007d0  addli r13, r14, 0
0007d4  vmax.f.mz vr0{mr1}, vr0, vr1
0007d8  vextracti.f r1, 0(vr0)
0007dc  stores.w r1, 0(r3)
0007e0  mfence { lm, sm, gm }
0007e4  csr_set csr3, r4
0007e8  sync_group
0007ec  bneq r13, zero, 36
0007f0  loads.w r1, 0(r27)
0007f4  loads.w r3, 4(r27)
0007f8  loads.w r22, 8(r27)
0007fc  loads.w r23, 12(r27)
000800  max.f r1, r1, r3
000804  max.f r1, r1, r22
000808  max.f r1, r1, r23
00080c  stores.w r1, 0(r27)
000810  mfence { lm, sm, gm }
000814  csr_set csr3, r4
000818  sync_group
00081c  loads.w r1, 0(r27)
000820  lui r3, 524288
000824  xor r1, r1, r3
000828  addli r3, r30, -5824
00082c  vload_mask16.mz vr0{mr1}, 0(r3)
000830  addli r3, r30, -5504
000834  vadd.f.mz.rn vr7{mr1}, r1, vr0
000838  vstore_mask16.mz vr7{mr1}, 1792(r30)
00083c  vload_mask16.mz vr0{mr1}, 0(r3)
000840  addli r3, r30, -5632
000844  vadd.f.mz.rn vr0{mr1}, r1, vr0
000848  vstore_mask16.mz vr0{mr1}, 1856(r30)
00084c  vload_mask16.mz vr0{mr1}, 0(r3)
000850  addli r3, r30, -5696
000854  vadd.f.mz.rn vr0{mr1}, r1, vr0
000858  vstore_mask16.mz vr0{mr1}, 1920(r30)
00085c  vload_mask16.mz vr0{mr1}, 0(r3)
000860  addli r3, r30, -5760
000864  vadd.f.mz.rn vr0{mr1}, r1, vr0
000868  vstore_mask16.mz vr0{mr1}, 1984(r30)
00086c  vload_mask16.mz vr0{mr1}, 0(r3)
000870  mfence { lm }
000874  loadli.w r3,  0(r19)
000878  loadli.w r22,  4(r19)
00087c  loadli.w r23,  8(r19)
000880  loadli.w r20,  12(r19)
000884  loadli.w r5,  16(r19)
000888  loadli.w r24,  20(r19)
00088c  loadli.w r25,  24(r19)
000890  loadli.w r11,  28(r19)
000894  loadli.w r12,  32(r19)
000898  loadli.w r7,  36(r19)
00089c  loadli.w r8,  40(r19)
0008a0  loadli.w r9,  44(r19)
0008a4  loadli.w r14,  48(r19)
0008a8  loadli.w r15,  52(r19)
0008ac  loadli.w r16,  56(r19)
0008b0  loadli.w r26,  60(r19)
0008b4  exp.f.rn r3, r3
0008b8  exp.f.rn r22, r22
0008bc  exp.f.rn r23, r23
0008c0  exp.f.rn r20, r20
0008c4  exp.f.rn r5, r5
0008c8  exp.f.rn r24, r24
0008cc  exp.f.rn r25, r25
0008d0  exp.f.rn r11, r11
0008d4  exp.f.rn r12, r12
0008d8  exp.f.rn r7, r7
0008dc  exp.f.rn r8, r8
0008e0  exp.f.rn r9, r9
0008e4  exp.f.rn r14, r14
0008e8  exp.f.rn r15, r15
0008ec  exp.f.rn r16, r16
0008f0  exp.f.rn r26, r26
0008f4  storeli.w r3, 0(r19)
0008f8  storeli.w r22, 4(r19)
0008fc  storeli.w r23, 8(r19)
000900  storeli.w r20, 12(r19)
000904  storeli.w r5, 16(r19)
000908  storeli.w r24, 20(r19)
00090c  storeli.w r25, 24(r19)
000910  storeli.w r11, 28(r19)
000914  storeli.w r12, 32(r19)
000918  storeli.w r7, 36(r19)
00091c  storeli.w r8, 40(r19)
000920  storeli.w r9, 44(r19)
000924  storeli.w r14, 48(r19)
000928  storeli.w r15, 52(r19)
00092c  storeli.w r16, 56(r19)
000930  storeli.w r26, 60(r19)
000934  loadli.w r3,  64(r19)
000938  loadli.w r22,  68(r19)
00093c  loadli.w r23,  72(r19)
000940  loadli.w r20,  76(r19)
000944  loadli.w r5,  80(r19)
000948  loadli.w r24,  84(r19)
00094c  loadli.w r25,  88(r19)
000950  loadli.w r11,  92(r19)
000954  loadli.w r12,  96(r19)
000958  loadli.w r7,  100(r19)
00095c  loadli.w r8,  104(r19)
000960  loadli.w r9,  108(r19)
000964  loadli.w r14,  112(r19)
000968  loadli.w r15,  116(r19)
00096c  loadli.w r16,  120(r19)
000970  loadli.w r26,  124(r19)
000974  exp.f.rn r3, r3
000978  exp.f.rn r22, r22
00097c  exp.f.rn r23, r23
000980  exp.f.rn r20, r20
000984  exp.f.rn r5, r5
000988  exp.f.rn r24, r24
00098c  exp.f.rn r25, r25
000990  exp.f.rn r11, r11
000994  exp.f.rn r12, r12
000998  exp.f.rn r7, r7
00099c  exp.f.rn r8, r8
0009a0  exp.f.rn r9, r9
0009a4  exp.f.rn r14, r14
0009a8  exp.f.rn r15, r15
0009ac  exp.f.rn r16, r16
0009b0  exp.f.rn r26, r26
0009b4  storeli.w r3, 64(r19)
0009b8  storeli.w r22, 68(r19)
0009bc  storeli.w r23, 72(r19)
0009c0  storeli.w r20, 76(r19)
0009c4  storeli.w r5, 80(r19)
0009c8  storeli.w r24, 84(r19)
0009cc  storeli.w r25, 88(r19)
0009d0  storeli.w r11, 92(r19)
0009d4  storeli.w r12, 96(r19)
0009d8  storeli.w r7, 100(r19)
0009dc  storeli.w r8, 104(r19)
0009e0  storeli.w r9, 108(r19)
0009e4  storeli.w r14, 112(r19)
0009e8  storeli.w r15, 116(r19)
0009ec  storeli.w r16, 120(r19)
0009f0  storeli.w r26, 124(r19)
0009f4  loadli.w r3,  128(r19)
0009f8  loadli.w r22,  132(r19)
0009fc  loadli.w r23,  136(r19)
000a00  loadli.w r20,  140(r19)
000a04  loadli.w r5,  144(r19)
000a08  loadli.w r24,  148(r19)
000a0c  loadli.w r25,  152(r19)
000a10  loadli.w r11,  156(r19)
000a14  loadli.w r12,  160(r19)
000a18  loadli.w r7,  164(r19)
000a1c  loadli.w r8,  168(r19)
000a20  loadli.w r9,  172(r19)
000a24  loadli.w r14,  176(r19)
000a28  loadli.w r15,  180(r19)
000a2c  loadli.w r16,  184(r19)
000a30  loadli.w r26,  188(r19)
000a34  exp.f.rn r3, r3
000a38  exp.f.rn r22, r22
000a3c  exp.f.rn r23, r23
000a40  exp.f.rn r20, r20
000a44  exp.f.rn r5, r5
000a48  exp.f.rn r24, r24
000a4c  exp.f.rn r25, r25
000a50  exp.f.rn r11, r11
000a54  exp.f.rn r12, r12
000a58  exp.f.rn r7, r7
000a5c  exp.f.rn r8, r8
000a60  exp.f.rn r9, r9
000a64  exp.f.rn r14, r14
000a68  exp.f.rn r15, r15
000a6c  exp.f.rn r16, r16
000a70  exp.f.rn r26, r26
000a74  storeli.w r3, 128(r19)
000a78  storeli.w r22, 132(r19)
000a7c  storeli.w r23, 136(r19)
000a80  storeli.w r20, 140(r19)
000a84  storeli.w r5, 144(r19)
000a88  storeli.w r24, 148(r19)
000a8c  storeli.w r25, 152(r19)
000a90  storeli.w r11, 156(r19)
000a94  storeli.w r12, 160(r19)
000a98  storeli.w r7, 164(r19)
000a9c  storeli.w r8, 168(r19)
000aa0  storeli.w r9, 172(r19)
000aa4  storeli.w r14, 176(r19)
000aa8  storeli.w r15, 180(r19)
000aac  storeli.w r16, 184(r19)
000ab0  storeli.w r26, 188(r19)
000ab4  loadli.w r3,  192(r19)
000ab8  loadli.w r22,  196(r19)
000abc  loadli.w r23,  200(r19)
000ac0  loadli.w r20,  204(r19)
000ac4  loadli.w r5,  208(r19)
000ac8  loadli.w r24,  212(r19)
000acc  loadli.w r25,  216(r19)
000ad0  loadli.w r11,  220(r19)
000ad4  loadli.w r12,  224(r19)
000ad8  loadli.w r7,  228(r19)
000adc  loadli.w r8,  232(r19)
000ae0  loadli.w r9,  236(r19)
000ae4  loadli.w r14,  240(r19)
000ae8  loadli.w r15,  244(r19)
000aec  loadli.w r16,  248(r19)
000af0  loadli.w r26,  252(r19)
000af4  exp.f.rn r3, r3
000af8  exp.f.rn r22, r22
000afc  exp.f.rn r23, r23
000b00  exp.f.rn r20, r20
000b04  exp.f.rn r5, r5
000b08  exp.f.rn r24, r24
000b0c  exp.f.rn r25, r25
000b10  exp.f.rn r11, r11
000b14  exp.f.rn r12, r12
000b18  exp.f.rn r7, r7
000b1c  exp.f.rn r8, r8
000b20  exp.f.rn r9, r9
000b24  exp.f.rn r14, r14
000b28  exp.f.rn r15, r15
000b2c  exp.f.rn r16, r16
000b30  exp.f.rn r26, r26
000b34  storeli.w r3, 192(r19)
000b38  storeli.w r22, 196(r19)
000b3c  storeli.w r23, 200(r19)
000b40  storeli.w r20, 204(r19)
000b44  storeli.w r5, 208(r19)
000b48  storeli.w r24, 212(r19)
000b4c  storeli.w r25, 216(r19)
000b50  storeli.w r11, 220(r19)
000b54  storeli.w r12, 224(r19)
000b58  storeli.w r7, 228(r19)
000b5c  storeli.w r8, 232(r19)
000b60  storeli.w r9, 236(r19)
000b64  storeli.w r14, 240(r19)
000b68  storeli.w r15, 244(r19)
000b6c  storeli.w r16, 248(r19)
000b70  storeli.w r26, 252(r19)
000b74  mfence { lm }
000b78  vload_mask16.mz vr7{mr1}, 1792(r30)
000b7c  vload_mask16.mz vr1{mr1}, 1856(r30)
000b80  addli r3, r30, -5440
000b84  vload_mask16.mz vr6{mr1}, 1920(r30)
000b88  vadd.f.mz.rn vr0{mr1}, r1, vr0
000b8c  vload_mask16.mz vr4{mr1}, 1984(r30)
000b90  vstore_mask16.mz vr0{mr1}, 1792(r30)
000b94  vload_mask16.mz vr0{mr1}, 0(r3)
000b98  addli r3, r30, -5568
000b9c  vadd.f.mz.rn vr0{mr1}, r1, vr0
000ba0  vstore_mask16.mz vr0{mr1}, 1856(r30)
000ba4  vload_mask16.mz vr0{mr1}, 0(r3)
000ba8  addli r3, r30, -5504
000bac  vadd.f.mz.rn vr3{mr1}, r1, vr0
000bb0  vstore_mask16.mz vr1{mr1}, 0(r3)
000bb4  addli r3, r30, -5568
000bb8  vadd.f.mz.rn vr0{mr1}, vr7, vr1
000bbc  vstore_mask16.mz vr7{mr1}, 0(r3)
000bc0  addli r3, r30, -5248
000bc4  vstore_mask16.mz vr3{mr1}, 1920(r30)
000bc8  vload_mask16.mz vr1{mr1}, 0(r3)
000bcc  addli r3, r30, -5440
000bd0  vadd.f.mz.rn vr0{mr1}, vr0, vr6
000bd4  vadd.f.mz.rn vr1{mr1}, r1, vr1
000bd8  vstore_mask16.mz vr1{mr1}, 1984(r30)
000bdc  vstore_mask16.mz vr6{mr1}, 0(r3)
000be0  addli r3, r30, -5376
000be4  vload_mask16.mz vr1{mr1}, 0(r3)
000be8  mfence { lm }
000bec  loadli.w r3,  0(r19)
000bf0  loadli.w r5,  4(r19)
000bf4  loadli.w r7,  8(r19)
000bf8  loadli.w r8,  12(r19)
000bfc  loadli.w r9,  16(r19)
000c00  loadli.w r11,  20(r19)
000c04  loadli.w r12,  24(r19)
000c08  loadli.w r14,  28(r19)
000c0c  loadli.w r15,  32(r19)
000c10  loadli.w r16,  36(r19)
000c14  loadli.w r20,  40(r19)
000c18  loadli.w r22,  44(r19)
000c1c  loadli.w r23,  48(r19)
000c20  loadli.w r24,  52(r19)
000c24  loadli.w r25,  56(r19)
000c28  loadli.w r26,  60(r19)
000c2c  exp.f.rn r3, r3
000c30  exp.f.rn r5, r5
000c34  exp.f.rn r7, r7
000c38  exp.f.rn r8, r8
000c3c  exp.f.rn r9, r9
000c40  exp.f.rn r11, r11
000c44  exp.f.rn r12, r12
000c48  exp.f.rn r14, r14
000c4c  exp.f.rn r15, r15
000c50  exp.f.rn r16, r16
000c54  exp.f.rn r20, r20
000c58  exp.f.rn r22, r22
000c5c  exp.f.rn r23, r23
000c60  exp.f.rn r24, r24
000c64  exp.f.rn r25, r25
000c68  exp.f.rn r26, r26
000c6c  storeli.w r3, 0(r19)
000c70  storeli.w r5, 4(r19)
000c74  storeli.w r7, 8(r19)
000c78  storeli.w r8, 12(r19)
000c7c  storeli.w r9, 16(r19)
000c80  storeli.w r11, 20(r19)
000c84  storeli.w r12, 24(r19)
000c88  storeli.w r14, 28(r19)
000c8c  storeli.w r15, 32(r19)
000c90  storeli.w r16, 36(r19)
000c94  storeli.w r20, 40(r19)
000c98  storeli.w r22, 44(r19)
000c9c  storeli.w r23, 48(r19)
000ca0  storeli.w r24, 52(r19)
000ca4  storeli.w r25, 56(r19)
000ca8  storeli.w r26, 60(r19)
000cac  loadli.w r3,  64(r19)
000cb0  loadli.w r5,  68(r19)
000cb4  loadli.w r7,  72(r19)
000cb8  loadli.w r8,  76(r19)
000cbc  loadli.w r9,  80(r19)
000cc0  loadli.w r11,  84(r19)
000cc4  loadli.w r12,  88(r19)
000cc8  loadli.w r14,  92(r19)
000ccc  loadli.w r15,  96(r19)
000cd0  loadli.w r16,  100(r19)
000cd4  loadli.w r20,  104(r19)
000cd8  loadli.w r22,  108(r19)
000cdc  loadli.w r23,  112(r19)
000ce0  loadli.w r24,  116(r19)
000ce4  loadli.w r25,  120(r19)
000ce8  loadli.w r26,  124(r19)
000cec  exp.f.rn r3, r3
000cf0  exp.f.rn r5, r5
000cf4  exp.f.rn r7, r7
000cf8  exp.f.rn r8, r8
000cfc  exp.f.rn r9, r9
000d00  exp.f.rn r11, r11
000d04  exp.f.rn r12, r12
000d08  exp.f.rn r14, r14
000d0c  exp.f.rn r15, r15
000d10  exp.f.rn r16, r16
000d14  exp.f.rn r20, r20
000d18  exp.f.rn r22, r22
000d1c  exp.f.rn r23, r23
000d20  exp.f.rn r24, r24
000d24  exp.f.rn r25, r25
000d28  exp.f.rn r26, r26
000d2c  storeli.w r3, 64(r19)
000d30  storeli.w r5, 68(r19)
000d34  storeli.w r7, 72(r19)
000d38  storeli.w r8, 76(r19)
000d3c  storeli.w r9, 80(r19)
000d40  storeli.w r11, 84(r19)
000d44  storeli.w r12, 88(r19)
000d48  storeli.w r14, 92(r19)
000d4c  storeli.w r15, 96(r19)
000d50  storeli.w r16, 100(r19)
000d54  storeli.w r20, 104(r19)
000d58  storeli.w r22, 108(r19)
000d5c  storeli.w r23, 112(r19)
000d60  storeli.w r24, 116(r19)
000d64  storeli.w r25, 120(r19)
000d68  storeli.w r26, 124(r19)
000d6c  loadli.w r3,  128(r19)
000d70  loadli.w r5,  132(r19)
000d74  loadli.w r7,  136(r19)
000d78  loadli.w r8,  140(r19)
000d7c  loadli.w r9,  144(r19)
000d80  loadli.w r11,  148(r19)
000d84  loadli.w r12,  152(r19)
000d88  loadli.w r14,  156(r19)
000d8c  loadli.w r15,  160(r19)
000d90  loadli.w r16,  164(r19)
000d94  loadli.w r20,  168(r19)
000d98  loadli.w r22,  172(r19)
000d9c  loadli.w r23,  176(r19)
000da0  loadli.w r24,  180(r19)
000da4  loadli.w r25,  184(r19)
000da8  loadli.w r26,  188(r19)
000dac  exp.f.rn r3, r3
000db0  exp.f.rn r5, r5
000db4  exp.f.rn r7, r7
000db8  exp.f.rn r8, r8
000dbc  exp.f.rn r9, r9
000dc0  exp.f.rn r11, r11
000dc4  exp.f.rn r12, r12
000dc8  exp.f.rn r14, r14
000dcc  exp.f.rn r15, r15
000dd0  exp.f.rn r16, r16
000dd4  exp.f.rn r20, r20
000dd8  exp.f.rn r22, r22
000ddc  exp.f.rn r23, r23
000de0  exp.f.rn r24, r24
000de4  exp.f.rn r25, r25
000de8  exp.f.rn r26, r26
000dec  storeli.w r3, 128(r19)
000df0  storeli.w r5, 132(r19)
000df4  storeli.w r7, 136(r19)
000df8  storeli.w r8, 140(r19)
000dfc  storeli.w r9, 144(r19)
000e00  storeli.w r11, 148(r19)
000e04  storeli.w r12, 152(r19)
000e08  storeli.w r14, 156(r19)
000e0c  storeli.w r15, 160(r19)
000e10  storeli.w r16, 164(r19)
000e14  storeli.w r20, 168(r19)
000e18  storeli.w r22, 172(r19)
000e1c  storeli.w r23, 176(r19)
000e20  storeli.w r24, 180(r19)
000e24  storeli.w r25, 184(r19)
000e28  storeli.w r26, 188(r19)
000e2c  loadli.w r3,  192(r19)
000e30  loadli.w r5,  196(r19)
000e34  loadli.w r7,  200(r19)
000e38  loadli.w r8,  204(r19)
000e3c  loadli.w r9,  208(r19)
000e40  loadli.w r11,  212(r19)
000e44  loadli.w r12,  216(r19)
000e48  loadli.w r14,  220(r19)
000e4c  loadli.w r15,  224(r19)
000e50  loadli.w r16,  228(r19)
000e54  loadli.w r20,  232(r19)
000e58  loadli.w r22,  236(r19)
000e5c  loadli.w r23,  240(r19)
000e60  loadli.w r24,  244(r19)
000e64  loadli.w r25,  248(r19)
000e68  loadli.w r26,  252(r19)
000e6c  exp.f.rn r3, r3
000e70  exp.f.rn r5, r5
000e74  exp.f.rn r7, r7
000e78  exp.f.rn r8, r8
000e7c  exp.f.rn r9, r9
000e80  exp.f.rn r11, r11
000e84  exp.f.rn r12, r12
000e88  exp.f.rn r14, r14
000e8c  exp.f.rn r15, r15
000e90  exp.f.rn r16, r16
000e94  exp.f.rn r20, r20
000e98  exp.f.rn r22, r22
000e9c  exp.f.rn r23, r23
000ea0  exp.f.rn r24, r24
000ea4  exp.f.rn r25, r25
000ea8  exp.f.rn r26, r26
000eac  storeli.w r3, 192(r19)
000eb0  storeli.w r5, 196(r19)
000eb4  storeli.w r7, 200(r19)
000eb8  storeli.w r8, 204(r19)
000ebc  storeli.w r9, 208(r19)
000ec0  storeli.w r11, 212(r19)
000ec4  storeli.w r12, 216(r19)
000ec8  storeli.w r14, 220(r19)
000ecc  storeli.w r15, 224(r19)
000ed0  storeli.w r16, 228(r19)
000ed4  storeli.w r20, 232(r19)
000ed8  storeli.w r22, 236(r19)
000edc  storeli.w r23, 240(r19)
000ee0  storeli.w r24, 244(r19)
000ee4  storeli.w r25, 248(r19)
000ee8  storeli.w r26, 252(r19)
000eec  mfence { lm }
000ef0  vadd.f.mz.rn vr0{mr1}, vr0, vr4
000ef4  vload_mask16.mz vr6{mr1}, 1792(r30)
000ef8  addli r3, r30, -5248
000efc  vadd.f.mz.rn vr1{mr1}, r1, vr1
000f00  vstore_mask16.mz vr4{mr1}, 0(r3)
000f04  addli r3, r30, -5376
000f08  vload_mask16.mz vr7{mr1}, 1856(r30)
000f0c  vload_mask16.mz vr4{mr1}, 1920(r30)
000f10  vload_mask16.mz vr3{mr1}, 1984(r30)
000f14  vstore_mask16.mz vr1{mr1}, 1792(r30)
000f18  vstore_mask16.mz vr6{mr1}, 0(r3)
000f1c  addli r3, r30, -4416
000f20  vadd.f.mz.rn vr0{mr1}, vr0, vr6
000f24  vload_mask16.mz vr1{mr1}, 0(r3)
000f28  addli r3, r30, -4480
000f2c  vadd.f.mz.rn vr1{mr1}, r1, vr1
000f30  vstore_mask16.mz vr1{mr1}, 1856(r30)
000f34  vload_mask16.mz vr1{mr1}, 0(r3)
000f38  addli r3, r30, -5632
000f3c  vadd.f.mz.rn vr0{mr1}, vr0, vr7
000f40  vadd.f.mz.rn vr1{mr1}, r1, vr1
000f44  vstore_mask16.mz vr7{mr1}, 0(r3)
000f48  addli r3, r30, -5312
000f4c  vstore_mask16.mz vr1{mr1}, 1920(r30)
000f50  vload_mask16.mz vr1{mr1}, 0(r3)
000f54  addli r3, r30, -4480
000f58  vadd.f.mz.rn vr0{mr1}, vr0, vr4
000f5c  vadd.f.mz.rn vr1{mr1}, r1, vr1
000f60  vstore_mask16.mz vr1{mr1}, 1984(r30)
000f64  vstore_mask16.mz vr4{mr1}, 0(r3)
000f68  addli r3, r30, -5120
000f6c  vload_mask16.mz vr1{mr1}, 0(r3)
000f70  mfence { lm }
000f74  loadli.w r3,  0(r19)
000f78  loadli.w r5,  4(r19)
000f7c  loadli.w r7,  8(r19)
000f80  loadli.w r8,  12(r19)
000f84  loadli.w r9,  16(r19)
000f88  loadli.w r11,  20(r19)
000f8c  loadli.w r12,  24(r19)
000f90  loadli.w r14,  28(r19)
000f94  loadli.w r15,  32(r19)
000f98  loadli.w r16,  36(r19)
000f9c  loadli.w r20,  40(r19)
000fa0  loadli.w r22,  44(r19)
000fa4  loadli.w r23,  48(r19)
000fa8  loadli.w r24,  52(r19)
000fac  loadli.w r25,  56(r19)
000fb0  loadli.w r26,  60(r19)
000fb4  exp.f.rn r3, r3
000fb8  exp.f.rn r5, r5
000fbc  exp.f.rn r7, r7
000fc0  exp.f.rn r8, r8
000fc4  exp.f.rn r9, r9
000fc8  exp.f.rn r11, r11
000fcc  exp.f.rn r12, r12
000fd0  exp.f.rn r14, r14
000fd4  exp.f.rn r15, r15
000fd8  exp.f.rn r16, r16
000fdc  exp.f.rn r20, r20
000fe0  exp.f.rn r22, r22
000fe4  exp.f.rn r23, r23
000fe8  exp.f.rn r24, r24
000fec  exp.f.rn r25, r25
000ff0  exp.f.rn r26, r26
000ff4  storeli.w r3, 0(r19)
000ff8  storeli.w r5, 4(r19)
000ffc  storeli.w r7, 8(r19)
001000  storeli.w r8, 12(r19)
001004  storeli.w r9, 16(r19)
001008  storeli.w r11, 20(r19)
00100c  storeli.w r12, 24(r19)
001010  storeli.w r14, 28(r19)
001014  storeli.w r15, 32(r19)
001018  storeli.w r16, 36(r19)
00101c  storeli.w r20, 40(r19)
001020  storeli.w r22, 44(r19)
001024  storeli.w r23, 48(r19)
001028  storeli.w r24, 52(r19)
00102c  storeli.w r25, 56(r19)
001030  storeli.w r26, 60(r19)
001034  loadli.w r3,  64(r19)
001038  loadli.w r5,  68(r19)
00103c  loadli.w r7,  72(r19)
001040  loadli.w r8,  76(r19)
001044  loadli.w r9,  80(r19)
001048  loadli.w r11,  84(r19)
00104c  loadli.w r12,  88(r19)
001050  loadli.w r14,  92(r19)
001054  loadli.w r15,  96(r19)
001058  loadli.w r16,  100(r19)
00105c  loadli.w r20,  104(r19)
001060  loadli.w r22,  108(r19)
001064  loadli.w r23,  112(r19)
001068  loadli.w r24,  116(r19)
00106c  loadli.w r25,  120(r19)
001070  loadli.w r26,  124(r19)
001074  exp.f.rn r3, r3
001078  exp.f.rn r5, r5
00107c  exp.f.rn r7, r7
001080  exp.f.rn r8, r8
001084  exp.f.rn r9, r9
001088  exp.f.rn r11, r11
00108c  exp.f.rn r12, r12
001090  exp.f.rn r14, r14
001094  exp.f.rn r15, r15
001098  exp.f.rn r16, r16
00109c  exp.f.rn r20, r20
0010a0  exp.f.rn r22, r22
0010a4  exp.f.rn r23, r23
0010a8  exp.f.rn r24, r24
0010ac  exp.f.rn r25, r25
0010b0  exp.f.rn r26, r26
0010b4  storeli.w r3, 64(r19)
0010b8  storeli.w r5, 68(r19)
0010bc  storeli.w r7, 72(r19)
0010c0  storeli.w r8, 76(r19)
0010c4  storeli.w r9, 80(r19)
0010c8  storeli.w r11, 84(r19)
0010cc  storeli.w r12, 88(r19)
0010d0  storeli.w r14, 92(r19)
0010d4  storeli.w r15, 96(r19)
0010d8  storeli.w r16, 100(r19)
0010dc  storeli.w r20, 104(r19)
0010e0  storeli.w r22, 108(r19)
0010e4  storeli.w r23, 112(r19)
0010e8  storeli.w r24, 116(r19)
0010ec  storeli.w r25, 120(r19)
0010f0  storeli.w r26, 124(r19)
0010f4  loadli.w r3,  128(r19)
0010f8  loadli.w r5,  132(r19)
0010fc  loadli.w r7,  136(r19)
001100  loadli.w r8,  140(r19)
001104  loadli.w r9,  144(r19)
001108  loadli.w r11,  148(r19)
00110c  loadli.w r12,  152(r19)
001110  loadli.w r14,  156(r19)
001114  loadli.w r15,  160(r19)
001118  loadli.w r16,  164(r19)
00111c  loadli.w r20,  168(r19)
001120  loadli.w r22,  172(r19)
001124  loadli.w r23,  176(r19)
001128  loadli.w r24,  180(r19)
00112c  loadli.w r25,  184(r19)
001130  loadli.w r26,  188(r19)
001134  exp.f.rn r3, r3
001138  exp.f.rn r5, r5
00113c  exp.f.rn r7, r7
001140  exp.f.rn r8, r8
001144  exp.f.rn r9, r9
001148  exp.f.rn r11, r11
00114c  exp.f.rn r12, r12
001150  exp.f.rn r14, r14
001154  exp.f.rn r15, r15
001158  exp.f.rn r16, r16
00115c  exp.f.rn r20, r20
001160  exp.f.rn r22, r22
001164  exp.f.rn r23, r23
001168  exp.f.rn r24, r24
00116c  exp.f.rn r25, r25
001170  exp.f.rn r26, r26
001174  storeli.w r3, 128(r19)
001178  storeli.w r5, 132(r19)
00117c  storeli.w r7, 136(r19)
001180  storeli.w r8, 140(r19)
001184  storeli.w r9, 144(r19)
001188  storeli.w r11, 148(r19)
00118c  storeli.w r12, 152(r19)
001190  storeli.w r14, 156(r19)
001194  storeli.w r15, 160(r19)
001198  storeli.w r16, 164(r19)
00119c  storeli.w r20, 168(r19)
0011a0  storeli.w r22, 172(r19)
0011a4  storeli.w r23, 176(r19)
0011a8  storeli.w r24, 180(r19)
0011ac  storeli.w r25, 184(r19)
0011b0  storeli.w r26, 188(r19)
0011b4  loadli.w r3,  192(r19)
0011b8  loadli.w r5,  196(r19)
0011bc  loadli.w r7,  200(r19)
0011c0  loadli.w r8,  204(r19)
0011c4  loadli.w r9,  208(r19)
0011c8  loadli.w r11,  212(r19)
0011cc  loadli.w r12,  216(r19)
0011d0  loadli.w r14,  220(r19)
0011d4  loadli.w r15,  224(r19)
0011d8  loadli.w r16,  228(r19)
0011dc  loadli.w r20,  232(r19)
0011e0  loadli.w r22,  236(r19)
0011e4  loadli.w r23,  240(r19)
0011e8  loadli.w r24,  244(r19)
0011ec  loadli.w r25,  248(r19)
0011f0  loadli.w r26,  252(r19)
0011f4  exp.f.rn r3, r3
0011f8  exp.f.rn r5, r5
0011fc  exp.f.rn r7, r7
001200  exp.f.rn r8, r8
001204  exp.f.rn r9, r9
001208  exp.f.rn r11, r11
00120c  exp.f.rn r12, r12
001210  exp.f.rn r14, r14
001214  exp.f.rn r15, r15
001218  exp.f.rn r16, r16
00121c  exp.f.rn r20, r20
001220  exp.f.rn r22, r22
001224  exp.f.rn r23, r23
001228  exp.f.rn r24, r24
00122c  exp.f.rn r25, r25
001230  exp.f.rn r26, r26
001234  storeli.w r3, 192(r19)
001238  storeli.w r5, 196(r19)
00123c  storeli.w r7, 200(r19)
001240  storeli.w r8, 204(r19)
001244  storeli.w r9, 208(r19)
001248  storeli.w r11, 212(r19)
00124c  storeli.w r12, 216(r19)
001250  storeli.w r14, 220(r19)
001254  storeli.w r15, 224(r19)
001258  storeli.w r16, 228(r19)
00125c  storeli.w r20, 232(r19)
001260  storeli.w r22, 236(r19)
001264  storeli.w r23, 240(r19)
001268  storeli.w r24, 244(r19)
00126c  storeli.w r25, 248(r19)
001270  storeli.w r26, 252(r19)
001274  mfence { lm }
001278  vadd.f.mz.rn vr0{mr1}, vr0, vr3
00127c  vload_mask16.mz vr6{mr1}, 1792(r30)
001280  addli r3, r30, -4416
001284  vadd.f.mz.rn vr1{mr1}, r1, vr1
001288  vstore_mask16.mz vr3{mr1}, 0(r3)
00128c  addli r3, r30, -5120
001290  vload_mask16.mz vr7{mr1}, 1856(r30)
001294  vload_mask16.mz vr4{mr1}, 1920(r30)
001298  vload_mask16.mz vr3{mr1}, 1984(r30)
00129c  vstore_mask16.mz vr1{mr1}, 1792(r30)
0012a0  vadd.f.mz.rn vr0{mr1}, vr0, vr6
0012a4  vstore_mask16.mz vr6{mr1}, 0(r3)
0012a8  addli r3, r30, -6272
0012ac  vload_mask16.mz vr1{mr1}, 0(r3)
0012b0  addli r3, r30, -5056
0012b4  vadd.f.mz.rn vr1{mr1}, r1, vr1
0012b8  vstore_mask16.mz vr1{mr1}, 1856(r30)
0012bc  vload_mask16.mz vr1{mr1}, 0(r3)
0012c0  vadd.f.mz.rn vr0{mr1}, vr0, vr7
0012c4  vstore_mask16.mz vr7{mr1}, 0(r3)
0012c8  addli r3, r30, -4928
0012cc  vadd.f.mz.rn vr1{mr1}, r1, vr1
0012d0  vstore_mask16.mz vr1{mr1}, 1920(r30)
0012d4  vload_mask16.mz vr1{mr1}, 0(r3)
0012d8  vadd.f.mz.rn vr1{mr1}, r1, vr1
0012dc  vstore_mask16.mz vr1{mr1}, 1984(r30)
0012e0  vstore_mask16.mz vr4{mr1}, 0(r3)
0012e4  addli r3, r30, -4800
0012e8  vadd.f.mz.rn vr0{mr1}, vr0, vr4
0012ec  vload_mask16.mz vr1{mr1}, 0(r3)
0012f0  mfence { lm }
0012f4  loadli.w r3,  0(r19)
0012f8  loadli.w r5,  4(r19)
0012fc  loadli.w r7,  8(r19)
001300  loadli.w r8,  12(r19)
001304  loadli.w r9,  16(r19)
001308  loadli.w r11,  20(r19)
00130c  loadli.w r12,  24(r19)
001310  loadli.w r14,  28(r19)
001314  loadli.w r15,  32(r19)
001318  loadli.w r16,  36(r19)
00131c  loadli.w r20,  40(r19)
001320  loadli.w r22,  44(r19)
001324  loadli.w r23,  48(r19)
001328  loadli.w r24,  52(r19)
00132c  loadli.w r25,  56(r19)
001330  loadli.w r26,  60(r19)
001334  exp.f.rn r3, r3
001338  exp.f.rn r5, r5
00133c  exp.f.rn r7, r7
001340  exp.f.rn r8, r8
001344  exp.f.rn r9, r9
001348  exp.f.rn r11, r11
00134c  exp.f.rn r12, r12
001350  exp.f.rn r14, r14
001354  exp.f.rn r15, r15
001358  exp.f.rn r16, r16
00135c  exp.f.rn r20, r20
001360  exp.f.rn r22, r22
001364  exp.f.rn r23, r23
001368  exp.f.rn r24, r24
00136c  exp.f.rn r25, r25
001370  exp.f.rn r26, r26
001374  storeli.w r3, 0(r19)
001378  storeli.w r5, 4(r19)
00137c  storeli.w r7, 8(r19)
001380  storeli.w r8, 12(r19)
001384  storeli.w r9, 16(r19)
001388  storeli.w r11, 20(r19)
00138c  storeli.w r12, 24(r19)
001390  storeli.w r14, 28(r19)
001394  storeli.w r15, 32(r19)
001398  storeli.w r16, 36(r19)
00139c  storeli.w r20, 40(r19)
0013a0  storeli.w r22, 44(r19)
0013a4  storeli.w r23, 48(r19)
0013a8  storeli.w r24, 52(r19)
0013ac  storeli.w r25, 56(r19)
0013b0  storeli.w r26, 60(r19)
0013b4  loadli.w r3,  64(r19)
0013b8  loadli.w r5,  68(r19)
0013bc  loadli.w r7,  72(r19)
0013c0  loadli.w r8,  76(r19)
0013c4  loadli.w r9,  80(r19)
0013c8  loadli.w r11,  84(r19)
0013cc  loadli.w r12,  88(r19)
0013d0  loadli.w r14,  92(r19)
0013d4  loadli.w r15,  96(r19)
0013d8  loadli.w r16,  100(r19)
0013dc  loadli.w r20,  104(r19)
0013e0  loadli.w r22,  108(r19)
0013e4  loadli.w r23,  112(r19)
0013e8  loadli.w r24,  116(r19)
0013ec  loadli.w r25,  120(r19)
0013f0  loadli.w r26,  124(r19)
0013f4  exp.f.rn r3, r3
0013f8  exp.f.rn r5, r5
0013fc  exp.f.rn r7, r7
001400  exp.f.rn r8, r8
001404  exp.f.rn r9, r9
001408  exp.f.rn r11, r11
00140c  exp.f.rn r12, r12
001410  exp.f.rn r14, r14
001414  exp.f.rn r15, r15
001418  exp.f.rn r16, r16
00141c  exp.f.rn r20, r20
001420  exp.f.rn r22, r22
001424  exp.f.rn r23, r23
001428  exp.f.rn r24, r24
00142c  exp.f.rn r25, r25
001430  exp.f.rn r26, r26
001434  storeli.w r3, 64(r19)
001438  storeli.w r5, 68(r19)
00143c  storeli.w r7, 72(r19)
001440  storeli.w r8, 76(r19)
001444  storeli.w r9, 80(r19)
001448  storeli.w r11, 84(r19)
00144c  storeli.w r12, 88(r19)
001450  storeli.w r14, 92(r19)
001454  storeli.w r15, 96(r19)
001458  storeli.w r16, 100(r19)
00145c  storeli.w r20, 104(r19)
001460  storeli.w r22, 108(r19)
001464  storeli.w r23, 112(r19)
001468  storeli.w r24, 116(r19)
00146c  storeli.w r25, 120(r19)
001470  storeli.w r26, 124(r19)
001474  loadli.w r3,  128(r19)
001478  loadli.w r5,  132(r19)
00147c  loadli.w r7,  136(r19)
001480  loadli.w r8,  140(r19)
001484  loadli.w r9,  144(r19)
001488  loadli.w r11,  148(r19)
00148c  loadli.w r12,  152(r19)
001490  loadli.w r14,  156(r19)
001494  loadli.w r15,  160(r19)
001498  loadli.w r16,  164(r19)
00149c  loadli.w r20,  168(r19)
0014a0  loadli.w r22,  172(r19)
0014a4  loadli.w r23,  176(r19)
0014a8  loadli.w r24,  180(r19)
0014ac  loadli.w r25,  184(r19)
0014b0  loadli.w r26,  188(r19)
0014b4  exp.f.rn r3, r3
0014b8  exp.f.rn r5, r5
0014bc  exp.f.rn r7, r7
0014c0  exp.f.rn r8, r8
0014c4  exp.f.rn r9, r9
0014c8  exp.f.rn r11, r11
0014cc  exp.f.rn r12, r12
0014d0  exp.f.rn r14, r14
0014d4  exp.f.rn r15, r15
0014d8  exp.f.rn r16, r16
0014dc  exp.f.rn r20, r20
0014e0  exp.f.rn r22, r22
0014e4  exp.f.rn r23, r23
0014e8  exp.f.rn r24, r24
0014ec  exp.f.rn r25, r25
0014f0  exp.f.rn r26, r26
0014f4  storeli.w r3, 128(r19)
0014f8  storeli.w r5, 132(r19)
0014fc  storeli.w r7, 136(r19)
001500  storeli.w r8, 140(r19)
001504  storeli.w r9, 144(r19)
001508  storeli.w r11, 148(r19)
00150c  storeli.w r12, 152(r19)
001510  storeli.w r14, 156(r19)
001514  storeli.w r15, 160(r19)
001518  storeli.w r16, 164(r19)
00151c  storeli.w r20, 168(r19)
001520  storeli.w r22, 172(r19)
001524  storeli.w r23, 176(r19)
001528  storeli.w r24, 180(r19)
00152c  storeli.w r25, 184(r19)
001530  storeli.w r26, 188(r19)
001534  loadli.w r3,  192(r19)
001538  loadli.w r5,  196(r19)
00153c  loadli.w r7,  200(r19)
001540  loadli.w r8,  204(r19)
001544  loadli.w r9,  208(r19)
001548  loadli.w r11,  212(r19)
00154c  loadli.w r12,  216(r19)
001550  loadli.w r14,  220(r19)
001554  loadli.w r15,  224(r19)
001558  loadli.w r16,  228(r19)
00155c  loadli.w r20,  232(r19)
001560  loadli.w r22,  236(r19)
001564  loadli.w r23,  240(r19)
001568  loadli.w r24,  244(r19)
00156c  loadli.w r25,  248(r19)
001570  loadli.w r26,  252(r19)
001574  exp.f.rn r3, r3
001578  exp.f.rn r5, r5
00157c  exp.f.rn r7, r7
001580  exp.f.rn r8, r8
001584  exp.f.rn r9, r9
001588  exp.f.rn r11, r11
00158c  exp.f.rn r12, r12
001590  exp.f.rn r14, r14
001594  exp.f.rn r15, r15
001598  exp.f.rn r16, r16
00159c  exp.f.rn r20, r20
0015a0  exp.f.rn r22, r22
0015a4  exp.f.rn r23, r23
0015a8  exp.f.rn r24, r24
0015ac  exp.f.rn r25, r25
0015b0  exp.f.rn r26, r26
0015b4  storeli.w r3, 192(r19)
0015b8  storeli.w r5, 196(r19)
0015bc  storeli.w r7, 200(r19)
0015c0  storeli.w r8, 204(r19)
0015c4  storeli.w r9, 208(r19)
0015c8  storeli.w r11, 212(r19)
0015cc  storeli.w r12, 216(r19)
0015d0  storeli.w r14, 220(r19)
0015d4  storeli.w r15, 224(r19)
0015d8  storeli.w r16, 228(r19)
0015dc  storeli.w r20, 232(r19)
0015e0  storeli.w r22, 236(r19)
0015e4  storeli.w r23, 240(r19)
0015e8  storeli.w r24, 244(r19)
0015ec  storeli.w r25, 248(r19)
0015f0  storeli.w r26, 252(r19)
0015f4  mfence { lm }
0015f8  vload_mask16.mz vr6{mr1}, 1792(r30)
0015fc  addli r3, r30, -4800
001600  vadd.f.mz.rn vr1{mr1}, r1, vr1
001604  vadd.f.mz.rn vr0{mr1}, vr0, vr3
001608  vstore_mask16.mz vr3{mr1}, 0(r3)
00160c  addli r3, r30, -5312
001610  vload_mask16.mz vr7{mr1}, 1856(r30)
001614  vload_mask16.mz vr4{mr1}, 1920(r30)
001618  vload_mask16.mz vr3{mr1}, 1984(r30)
00161c  vstore_mask16.mz vr1{mr1}, 1792(r30)
001620  vadd.f.mz.rn vr0{mr1}, vr0, vr6
001624  vstore_mask16.mz vr6{mr1}, 0(r3)
001628  addli r3, r30, -4544
00162c  vload_mask16.mz vr1{mr1}, 0(r3)
001630  addli r3, r30, -4672
001634  vadd.f.mz.rn vr1{mr1}, r1, vr1
001638  vstore_mask16.mz vr1{mr1}, 1856(r30)
00163c  vadd.f.mz.rn vr0{mr1}, vr0, vr7
001640  vload_mask16.mz vr1{mr1}, 0(r3)
001644  vstore_mask16.mz vr7{mr1}, 0(r3)
001648  addli r3, r30, -4608
00164c  vadd.f.mz.rn vr1{mr1}, r1, vr1
001650  vstore_mask16.mz vr1{mr1}, 1920(r30)
001654  vload_mask16.mz vr1{mr1}, 0(r3)
001658  vadd.f.mz.rn vr1{mr1}, r1, vr1
00165c  vstore_mask16.mz vr1{mr1}, 1984(r30)
001660  vstore_mask16.mz vr4{mr1}, 0(r3)
001664  vadd.f.mz.rn vr0{mr1}, vr0, vr4
001668  mfence { lm }
00166c  loadli.w r3,  0(r19)
001670  loadli.w r5,  4(r19)
001674  loadli.w r7,  8(r19)
001678  loadli.w r8,  12(r19)
00167c  loadli.w r9,  16(r19)
001680  loadli.w r11,  20(r19)
001684  loadli.w r12,  24(r19)
001688  loadli.w r14,  28(r19)
00168c  loadli.w r15,  32(r19)
001690  loadli.w r16,  36(r19)
001694  loadli.w r20,  40(r19)
001698  loadli.w r22,  44(r19)
00169c  loadli.w r23,  48(r19)
0016a0  loadli.w r24,  52(r19)
0016a4  loadli.w r25,  56(r19)
0016a8  loadli.w r26,  60(r19)
0016ac  exp.f.rn r3, r3
0016b0  exp.f.rn r5, r5
0016b4  exp.f.rn r7, r7
0016b8  exp.f.rn r8, r8
0016bc  exp.f.rn r9, r9
0016c0  exp.f.rn r11, r11
0016c4  exp.f.rn r12, r12
0016c8  exp.f.rn r14, r14
0016cc  exp.f.rn r15, r15
0016d0  exp.f.rn r16, r16
0016d4  exp.f.rn r20, r20
0016d8  exp.f.rn r22, r22
0016dc  exp.f.rn r23, r23
0016e0  exp.f.rn r24, r24
0016e4  exp.f.rn r25, r25
0016e8  exp.f.rn r26, r26
0016ec  storeli.w r3, 0(r19)
0016f0  storeli.w r5, 4(r19)
0016f4  storeli.w r7, 8(r19)
0016f8  storeli.w r8, 12(r19)
0016fc  storeli.w r9, 16(r19)
001700  storeli.w r11, 20(r19)
001704  storeli.w r12, 24(r19)
001708  storeli.w r14, 28(r19)
00170c  storeli.w r15, 32(r19)
001710  storeli.w r16, 36(r19)
001714  storeli.w r20, 40(r19)
001718  storeli.w r22, 44(r19)
00171c  storeli.w r23, 48(r19)
001720  storeli.w r24, 52(r19)
001724  storeli.w r25, 56(r19)
001728  storeli.w r26, 60(r19)
00172c  loadli.w r3,  64(r19)
001730  loadli.w r5,  68(r19)
001734  loadli.w r7,  72(r19)
001738  loadli.w r8,  76(r19)
00173c  loadli.w r9,  80(r19)
001740  loadli.w r11,  84(r19)
001744  loadli.w r12,  88(r19)
001748  loadli.w r14,  92(r19)
00174c  loadli.w r15,  96(r19)
001750  loadli.w r16,  100(r19)
001754  loadli.w r20,  104(r19)
001758  loadli.w r22,  108(r19)
00175c  loadli.w r23,  112(r19)
001760  loadli.w r24,  116(r19)
001764  loadli.w r25,  120(r19)
001768  loadli.w r26,  124(r19)
00176c  exp.f.rn r3, r3
001770  exp.f.rn r5, r5
001774  exp.f.rn r7, r7
001778  exp.f.rn r8, r8
00177c  exp.f.rn r9, r9
001780  exp.f.rn r11, r11
001784  exp.f.rn r12, r12
001788  exp.f.rn r14, r14
00178c  exp.f.rn r15, r15
001790  exp.f.rn r16, r16
001794  exp.f.rn r20, r20
001798  exp.f.rn r22, r22
00179c  exp.f.rn r23, r23
0017a0  exp.f.rn r24, r24
0017a4  exp.f.rn r25, r25
0017a8  exp.f.rn r26, r26
0017ac  storeli.w r3, 64(r19)
0017b0  storeli.w r5, 68(r19)
0017b4  storeli.w r7, 72(r19)
0017b8  storeli.w r8, 76(r19)
0017bc  storeli.w r9, 80(r19)
0017c0  storeli.w r11, 84(r19)
0017c4  storeli.w r12, 88(r19)
0017c8  storeli.w r14, 92(r19)
0017cc  storeli.w r15, 96(r19)
0017d0  storeli.w r16, 100(r19)
0017d4  storeli.w r20, 104(r19)
0017d8  storeli.w r22, 108(r19)
0017dc  storeli.w r23, 112(r19)
0017e0  storeli.w r24, 116(r19)
0017e4  storeli.w r25, 120(r19)
0017e8  storeli.w r26, 124(r19)
0017ec  loadli.w r3,  128(r19)
0017f0  loadli.w r5,  132(r19)
0017f4  loadli.w r7,  136(r19)
0017f8  loadli.w r8,  140(r19)
0017fc  loadli.w r9,  144(r19)
001800  loadli.w r11,  148(r19)
001804  loadli.w r12,  152(r19)
001808  loadli.w r14,  156(r19)
00180c  loadli.w r15,  160(r19)
001810  loadli.w r16,  164(r19)
001814  loadli.w r20,  168(r19)
001818  loadli.w r22,  172(r19)
00181c  loadli.w r23,  176(r19)
001820  loadli.w r24,  180(r19)
001824  loadli.w r25,  184(r19)
001828  loadli.w r26,  188(r19)
00182c  exp.f.rn r3, r3
001830  exp.f.rn r5, r5
001834  exp.f.rn r7, r7
001838  exp.f.rn r8, r8
00183c  exp.f.rn r9, r9
001840  exp.f.rn r11, r11
001844  exp.f.rn r12, r12
001848  exp.f.rn r14, r14
00184c  exp.f.rn r15, r15
001850  exp.f.rn r16, r16
001854  exp.f.rn r20, r20
001858  exp.f.rn r22, r22
00185c  exp.f.rn r23, r23
001860  exp.f.rn r24, r24
001864  exp.f.rn r25, r25
001868  exp.f.rn r26, r26
00186c  storeli.w r3, 128(r19)
001870  storeli.w r5, 132(r19)
001874  storeli.w r7, 136(r19)
001878  storeli.w r8, 140(r19)
00187c  storeli.w r9, 144(r19)
001880  storeli.w r11, 148(r19)
001884  storeli.w r12, 152(r19)
001888  storeli.w r14, 156(r19)
00188c  storeli.w r15, 160(r19)
001890  storeli.w r16, 164(r19)
001894  storeli.w r20, 168(r19)
001898  storeli.w r22, 172(r19)
00189c  storeli.w r23, 176(r19)
0018a0  storeli.w r24, 180(r19)
0018a4  storeli.w r25, 184(r19)
0018a8  storeli.w r26, 188(r19)
0018ac  loadli.w r3,  192(r19)
0018b0  loadli.w r5,  196(r19)
0018b4  loadli.w r7,  200(r19)
0018b8  loadli.w r8,  204(r19)
0018bc  loadli.w r9,  208(r19)
0018c0  loadli.w r11,  212(r19)
0018c4  loadli.w r12,  216(r19)
0018c8  loadli.w r14,  220(r19)
0018cc  loadli.w r15,  224(r19)
0018d0  loadli.w r16,  228(r19)
0018d4  loadli.w r20,  232(r19)
0018d8  loadli.w r22,  236(r19)
0018dc  loadli.w r23,  240(r19)
0018e0  loadli.w r24,  244(r19)
0018e4  loadli.w r25,  248(r19)
0018e8  loadli.w r26,  252(r19)
0018ec  exp.f.rn r3, r3
0018f0  exp.f.rn r5, r5
0018f4  exp.f.rn r7, r7
0018f8  exp.f.rn r8, r8
0018fc  exp.f.rn r9, r9
001900  exp.f.rn r11, r11
001904  exp.f.rn r12, r12
001908  exp.f.rn r14, r14
00190c  exp.f.rn r15, r15
001910  exp.f.rn r16, r16
001914  exp.f.rn r20, r20
001918  exp.f.rn r22, r22
00191c  exp.f.rn r23, r23
001920  exp.f.rn r24, r24
001924  exp.f.rn r25, r25
001928  exp.f.rn r26, r26
00192c  storeli.w r3, 192(r19)
001930  storeli.w r5, 196(r19)
001934  storeli.w r7, 200(r19)
001938  storeli.w r8, 204(r19)
00193c  storeli.w r9, 208(r19)
001940  storeli.w r11, 212(r19)
001944  storeli.w r12, 216(r19)
001948  storeli.w r14, 220(r19)
00194c  storeli.w r15, 224(r19)
001950  storeli.w r16, 228(r19)
001954  storeli.w r20, 232(r19)
001958  storeli.w r22, 236(r19)
00195c  storeli.w r23, 240(r19)
001960  storeli.w r24, 244(r19)
001964  storeli.w r25, 248(r19)
001968  storeli.w r26, 252(r19)
00196c  mfence { lm }
001970  vadd.f.mz.rn vr1{mr1}, r1, vr2
001974  vload_mask16.mz vr4{mr1}, 1792(r30)
001978  addli r3, r30, -4544
00197c  vstore_mask16.mz vr3{mr1}, 0(r3)
001980  addli r3, r30, -5696
001984  vadd.f.mz.rn vr0{mr1}, vr0, vr3
001988  vload_mask16.mz vr6{mr1}, 1856(r30)
00198c  vload_mask16.mz vr3{mr1}, 1920(r30)
001990  vload_mask16.mz vr2{mr1}, 1984(r30)
001994  vstore_mask16.mz vr1{mr1}, 1792(r30)
001998  vstore_mask16.mz vr4{mr1}, 0(r3)
00199c  addli r3, r30, -6208
0019a0  vadd.f.mz.rn vr0{mr1}, vr0, vr4
0019a4  vload_mask16.mz vr1{mr1}, 0(r3)
0019a8  addli r3, r30, -5184
0019ac  vadd.f.mz.rn vr1{mr1}, r1, vr1
0019b0  vstore_mask16.mz vr1{mr1}, 1856(r30)
0019b4  vload_mask16.mz vr1{mr1}, 0(r3)
0019b8  vstore_mask16.mz vr6{mr1}, 0(r3)
0019bc  addli r3, r30, -4992
0019c0  vadd.f.mz.rn vr0{mr1}, vr0, vr6
0019c4  vadd.f.mz.rn vr1{mr1}, r1, vr1
0019c8  vstore_mask16.mz vr1{mr1}, 1920(r30)
0019cc  vload_mask16.mz vr1{mr1}, 0(r3)
0019d0  vadd.f.mz.rn vr1{mr1}, r1, vr1
0019d4  vstore_mask16.mz vr1{mr1}, 1984(r30)
0019d8  vstore_mask16.mz vr3{mr1}, 0(r3)
0019dc  addli r3, r30, -4864
0019e0  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0019e4  vload_mask16.mz vr1{mr1}, 0(r3)
0019e8  mfence { lm }
0019ec  loadli.w r3,  0(r19)
0019f0  loadli.w r5,  4(r19)
0019f4  loadli.w r7,  8(r19)
0019f8  loadli.w r8,  12(r19)
0019fc  loadli.w r9,  16(r19)
001a00  loadli.w r11,  20(r19)
001a04  loadli.w r12,  24(r19)
001a08  loadli.w r14,  28(r19)
001a0c  loadli.w r15,  32(r19)
001a10  loadli.w r16,  36(r19)
001a14  loadli.w r20,  40(r19)
001a18  loadli.w r22,  44(r19)
001a1c  loadli.w r23,  48(r19)
001a20  loadli.w r24,  52(r19)
001a24  loadli.w r25,  56(r19)
001a28  loadli.w r26,  60(r19)
001a2c  exp.f.rn r3, r3
001a30  exp.f.rn r5, r5
001a34  exp.f.rn r7, r7
001a38  exp.f.rn r8, r8
001a3c  exp.f.rn r9, r9
001a40  exp.f.rn r11, r11
001a44  exp.f.rn r12, r12
001a48  exp.f.rn r14, r14
001a4c  exp.f.rn r15, r15
001a50  exp.f.rn r16, r16
001a54  exp.f.rn r20, r20
001a58  exp.f.rn r22, r22
001a5c  exp.f.rn r23, r23
001a60  exp.f.rn r24, r24
001a64  exp.f.rn r25, r25
001a68  exp.f.rn r26, r26
001a6c  storeli.w r3, 0(r19)
001a70  storeli.w r5, 4(r19)
001a74  storeli.w r7, 8(r19)
001a78  storeli.w r8, 12(r19)
001a7c  storeli.w r9, 16(r19)
001a80  storeli.w r11, 20(r19)
001a84  storeli.w r12, 24(r19)
001a88  storeli.w r14, 28(r19)
001a8c  storeli.w r15, 32(r19)
001a90  storeli.w r16, 36(r19)
001a94  storeli.w r20, 40(r19)
001a98  storeli.w r22, 44(r19)
001a9c  storeli.w r23, 48(r19)
001aa0  storeli.w r24, 52(r19)
001aa4  storeli.w r25, 56(r19)
001aa8  storeli.w r26, 60(r19)
001aac  loadli.w r3,  64(r19)
001ab0  loadli.w r5,  68(r19)
001ab4  loadli.w r7,  72(r19)
001ab8  loadli.w r8,  76(r19)
001abc  loadli.w r9,  80(r19)
001ac0  loadli.w r11,  84(r19)
001ac4  loadli.w r12,  88(r19)
001ac8  loadli.w r14,  92(r19)
001acc  loadli.w r15,  96(r19)
001ad0  loadli.w r16,  100(r19)
001ad4  loadli.w r20,  104(r19)
001ad8  loadli.w r22,  108(r19)
001adc  loadli.w r23,  112(r19)
001ae0  loadli.w r24,  116(r19)
001ae4  loadli.w r25,  120(r19)
001ae8  loadli.w r26,  124(r19)
001aec  exp.f.rn r3, r3
001af0  exp.f.rn r5, r5
001af4  exp.f.rn r7, r7
001af8  exp.f.rn r8, r8
001afc  exp.f.rn r9, r9
001b00  exp.f.rn r11, r11
001b04  exp.f.rn r12, r12
001b08  exp.f.rn r14, r14
001b0c  exp.f.rn r15, r15
001b10  exp.f.rn r16, r16
001b14  exp.f.rn r20, r20
001b18  exp.f.rn r22, r22
001b1c  exp.f.rn r23, r23
001b20  exp.f.rn r24, r24
001b24  exp.f.rn r25, r25
001b28  exp.f.rn r26, r26
001b2c  storeli.w r3, 64(r19)
001b30  storeli.w r5, 68(r19)
001b34  storeli.w r7, 72(r19)
001b38  storeli.w r8, 76(r19)
001b3c  storeli.w r9, 80(r19)
001b40  storeli.w r11, 84(r19)
001b44  storeli.w r12, 88(r19)
001b48  storeli.w r14, 92(r19)
001b4c  storeli.w r15, 96(r19)
001b50  storeli.w r16, 100(r19)
001b54  storeli.w r20, 104(r19)
001b58  storeli.w r22, 108(r19)
001b5c  storeli.w r23, 112(r19)
001b60  storeli.w r24, 116(r19)
001b64  storeli.w r25, 120(r19)
001b68  storeli.w r26, 124(r19)
001b6c  loadli.w r3,  128(r19)
001b70  loadli.w r5,  132(r19)
001b74  loadli.w r7,  136(r19)
001b78  loadli.w r8,  140(r19)
001b7c  loadli.w r9,  144(r19)
001b80  loadli.w r11,  148(r19)
001b84  loadli.w r12,  152(r19)
001b88  loadli.w r14,  156(r19)
001b8c  loadli.w r15,  160(r19)
001b90  loadli.w r16,  164(r19)
001b94  loadli.w r20,  168(r19)
001b98  loadli.w r22,  172(r19)
001b9c  loadli.w r23,  176(r19)
001ba0  loadli.w r24,  180(r19)
001ba4  loadli.w r25,  184(r19)
001ba8  loadli.w r26,  188(r19)
001bac  exp.f.rn r3, r3
001bb0  exp.f.rn r5, r5
001bb4  exp.f.rn r7, r7
001bb8  exp.f.rn r8, r8
001bbc  exp.f.rn r9, r9
001bc0  exp.f.rn r11, r11
001bc4  exp.f.rn r12, r12
001bc8  exp.f.rn r14, r14
001bcc  exp.f.rn r15, r15
001bd0  exp.f.rn r16, r16
001bd4  exp.f.rn r20, r20
001bd8  exp.f.rn r22, r22
001bdc  exp.f.rn r23, r23
001be0  exp.f.rn r24, r24
001be4  exp.f.rn r25, r25
001be8  exp.f.rn r26, r26
001bec  storeli.w r3, 128(r19)
001bf0  storeli.w r5, 132(r19)
001bf4  storeli.w r7, 136(r19)
001bf8  storeli.w r8, 140(r19)
001bfc  storeli.w r9, 144(r19)
001c00  storeli.w r11, 148(r19)
001c04  storeli.w r12, 152(r19)
001c08  storeli.w r14, 156(r19)
001c0c  storeli.w r15, 160(r19)
001c10  storeli.w r16, 164(r19)
001c14  storeli.w r20, 168(r19)
001c18  storeli.w r22, 172(r19)
001c1c  storeli.w r23, 176(r19)
001c20  storeli.w r24, 180(r19)
001c24  storeli.w r25, 184(r19)
001c28  storeli.w r26, 188(r19)
001c2c  loadli.w r3,  192(r19)
001c30  loadli.w r5,  196(r19)
001c34  loadli.w r7,  200(r19)
001c38  loadli.w r8,  204(r19)
001c3c  loadli.w r9,  208(r19)
001c40  loadli.w r11,  212(r19)
001c44  loadli.w r12,  216(r19)
001c48  loadli.w r14,  220(r19)
001c4c  loadli.w r15,  224(r19)
001c50  loadli.w r16,  228(r19)
001c54  loadli.w r20,  232(r19)
001c58  loadli.w r22,  236(r19)
001c5c  loadli.w r23,  240(r19)
001c60  loadli.w r24,  244(r19)
001c64  loadli.w r25,  248(r19)
001c68  loadli.w r26,  252(r19)
001c6c  exp.f.rn r3, r3
001c70  exp.f.rn r5, r5
001c74  exp.f.rn r7, r7
001c78  exp.f.rn r8, r8
001c7c  exp.f.rn r9, r9
001c80  exp.f.rn r11, r11
001c84  exp.f.rn r12, r12
001c88  exp.f.rn r14, r14
001c8c  exp.f.rn r15, r15
001c90  exp.f.rn r16, r16
001c94  exp.f.rn r20, r20
001c98  exp.f.rn r22, r22
001c9c  exp.f.rn r23, r23
001ca0  exp.f.rn r24, r24
001ca4  exp.f.rn r25, r25
001ca8  exp.f.rn r26, r26
001cac  storeli.w r3, 192(r19)
001cb0  storeli.w r5, 196(r19)
001cb4  storeli.w r7, 200(r19)
001cb8  storeli.w r8, 204(r19)
001cbc  storeli.w r9, 208(r19)
001cc0  storeli.w r11, 212(r19)
001cc4  storeli.w r12, 216(r19)
001cc8  storeli.w r14, 220(r19)
001ccc  storeli.w r15, 224(r19)
001cd0  storeli.w r16, 228(r19)
001cd4  storeli.w r20, 232(r19)
001cd8  storeli.w r22, 236(r19)
001cdc  storeli.w r23, 240(r19)
001ce0  storeli.w r24, 244(r19)
001ce4  storeli.w r25, 248(r19)
001ce8  storeli.w r26, 252(r19)
001cec  mfence { lm }
001cf0  vload_mask16.mz vr7{mr1}, 1792(r30)
001cf4  addli r3, r30, -4864
001cf8  vadd.f.mz.rn vr1{mr1}, r1, vr1
001cfc  vstore_mask16.mz vr2{mr1}, 0(r3)
001d00  addli r3, r30, -6144
001d04  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001d08  vload_mask16.mz vr9{mr1}, 1856(r30)
001d0c  vload_mask16.mz vr3{mr1}, 1920(r30)
001d10  vload_mask16.mz vr2{mr1}, 1984(r30)
001d14  vstore_mask16.mz vr1{mr1}, 1792(r30)
001d18  vload_mask16.mz vr1{mr1}, 0(r3)
001d1c  addli r3, r30, -4736
001d20  vadd.f.mz.rn vr1{mr1}, r1, vr1
001d24  vstore_mask16.mz vr1{mr1}, 1856(r30)
001d28  vload_mask16.mz vr1{mr1}, 0(r3)
001d2c  addli r3, r30, -6080
001d30  vadd.f.mz.rn vr0{mr1}, vr0, vr7
001d34  vadd.f.mz.rn vr1{mr1}, r1, vr1
001d38  vstore_mask16.mz vr1{mr1}, 1920(r30)
001d3c  vload_mask16.mz vr1{mr1}, 0(r3)
001d40  addli r3, r30, -5760
001d44  vadd.f.mz.rn vr1{mr1}, r1, vr1
001d48  vstore_mask16.mz vr1{mr1}, 1984(r30)
001d4c  vstore_mask16.mz vr3{mr1}, 0(r3)
001d50  vadd.f.mz.rn vr1{mr1}, r1, vr5
001d54  vadd.f.mz.rn vr0{mr1}, vr0, vr9
001d58  mfence { lm }
001d5c  loadli.w r3,  0(r19)
001d60  loadli.w r5,  4(r19)
001d64  loadli.w r7,  8(r19)
001d68  loadli.w r8,  12(r19)
001d6c  loadli.w r9,  16(r19)
001d70  loadli.w r11,  20(r19)
001d74  loadli.w r12,  24(r19)
001d78  loadli.w r14,  28(r19)
001d7c  loadli.w r15,  32(r19)
001d80  loadli.w r16,  36(r19)
001d84  loadli.w r20,  40(r19)
001d88  loadli.w r22,  44(r19)
001d8c  loadli.w r23,  48(r19)
001d90  loadli.w r24,  52(r19)
001d94  loadli.w r25,  56(r19)
001d98  loadli.w r26,  60(r19)
001d9c  exp.f.rn r3, r3
001da0  exp.f.rn r5, r5
001da4  exp.f.rn r7, r7
001da8  exp.f.rn r8, r8
001dac  exp.f.rn r9, r9
001db0  exp.f.rn r11, r11
001db4  exp.f.rn r12, r12
001db8  exp.f.rn r14, r14
001dbc  exp.f.rn r15, r15
001dc0  exp.f.rn r16, r16
001dc4  exp.f.rn r20, r20
001dc8  exp.f.rn r22, r22
001dcc  exp.f.rn r23, r23
001dd0  exp.f.rn r24, r24
001dd4  exp.f.rn r25, r25
001dd8  exp.f.rn r26, r26
001ddc  storeli.w r3, 0(r19)
001de0  storeli.w r5, 4(r19)
001de4  storeli.w r7, 8(r19)
001de8  storeli.w r8, 12(r19)
001dec  storeli.w r9, 16(r19)
001df0  storeli.w r11, 20(r19)
001df4  storeli.w r12, 24(r19)
001df8  storeli.w r14, 28(r19)
001dfc  storeli.w r15, 32(r19)
001e00  storeli.w r16, 36(r19)
001e04  storeli.w r20, 40(r19)
001e08  storeli.w r22, 44(r19)
001e0c  storeli.w r23, 48(r19)
001e10  storeli.w r24, 52(r19)
001e14  storeli.w r25, 56(r19)
001e18  storeli.w r26, 60(r19)
001e1c  loadli.w r3,  64(r19)
001e20  loadli.w r5,  68(r19)
001e24  loadli.w r7,  72(r19)
001e28  loadli.w r8,  76(r19)
001e2c  loadli.w r9,  80(r19)
001e30  loadli.w r11,  84(r19)
001e34  loadli.w r12,  88(r19)
001e38  loadli.w r14,  92(r19)
001e3c  loadli.w r15,  96(r19)
001e40  loadli.w r16,  100(r19)
001e44  loadli.w r20,  104(r19)
001e48  loadli.w r22,  108(r19)
001e4c  loadli.w r23,  112(r19)
001e50  loadli.w r24,  116(r19)
001e54  loadli.w r25,  120(r19)
001e58  loadli.w r26,  124(r19)
001e5c  exp.f.rn r3, r3
001e60  exp.f.rn r5, r5
001e64  exp.f.rn r7, r7
001e68  exp.f.rn r8, r8
001e6c  exp.f.rn r9, r9
001e70  exp.f.rn r11, r11
001e74  exp.f.rn r12, r12
001e78  exp.f.rn r14, r14
001e7c  exp.f.rn r15, r15
001e80  exp.f.rn r16, r16
001e84  exp.f.rn r20, r20
001e88  exp.f.rn r22, r22
001e8c  exp.f.rn r23, r23
001e90  exp.f.rn r24, r24
001e94  exp.f.rn r25, r25
001e98  exp.f.rn r26, r26
001e9c  storeli.w r3, 64(r19)
001ea0  storeli.w r5, 68(r19)
001ea4  storeli.w r7, 72(r19)
001ea8  storeli.w r8, 76(r19)
001eac  storeli.w r9, 80(r19)
001eb0  storeli.w r11, 84(r19)
001eb4  storeli.w r12, 88(r19)
001eb8  storeli.w r14, 92(r19)
001ebc  storeli.w r15, 96(r19)
001ec0  storeli.w r16, 100(r19)
001ec4  storeli.w r20, 104(r19)
001ec8  storeli.w r22, 108(r19)
001ecc  storeli.w r23, 112(r19)
001ed0  storeli.w r24, 116(r19)
001ed4  storeli.w r25, 120(r19)
001ed8  storeli.w r26, 124(r19)
001edc  loadli.w r3,  128(r19)
001ee0  loadli.w r5,  132(r19)
001ee4  loadli.w r7,  136(r19)
001ee8  loadli.w r8,  140(r19)
001eec  loadli.w r9,  144(r19)
001ef0  loadli.w r11,  148(r19)
001ef4  loadli.w r12,  152(r19)
001ef8  loadli.w r14,  156(r19)
001efc  loadli.w r15,  160(r19)
001f00  loadli.w r16,  164(r19)
001f04  loadli.w r20,  168(r19)
001f08  loadli.w r22,  172(r19)
001f0c  loadli.w r23,  176(r19)
001f10  loadli.w r24,  180(r19)
001f14  loadli.w r25,  184(r19)
001f18  loadli.w r26,  188(r19)
001f1c  exp.f.rn r3, r3
001f20  exp.f.rn r5, r5
001f24  exp.f.rn r7, r7
001f28  exp.f.rn r8, r8
001f2c  exp.f.rn r9, r9
001f30  exp.f.rn r11, r11
001f34  exp.f.rn r12, r12
001f38  exp.f.rn r14, r14
001f3c  exp.f.rn r15, r15
001f40  exp.f.rn r16, r16
001f44  exp.f.rn r20, r20
001f48  exp.f.rn r22, r22
001f4c  exp.f.rn r23, r23
001f50  exp.f.rn r24, r24
001f54  exp.f.rn r25, r25
001f58  exp.f.rn r26, r26
001f5c  storeli.w r3, 128(r19)
001f60  storeli.w r5, 132(r19)
001f64  storeli.w r7, 136(r19)
001f68  storeli.w r8, 140(r19)
001f6c  storeli.w r9, 144(r19)
001f70  storeli.w r11, 148(r19)
001f74  storeli.w r12, 152(r19)
001f78  storeli.w r14, 156(r19)
001f7c  storeli.w r15, 160(r19)
001f80  storeli.w r16, 164(r19)
001f84  storeli.w r20, 168(r19)
001f88  storeli.w r22, 172(r19)
001f8c  storeli.w r23, 176(r19)
001f90  storeli.w r24, 180(r19)
001f94  storeli.w r25, 184(r19)
001f98  storeli.w r26, 188(r19)
001f9c  loadli.w r3,  192(r19)
001fa0  loadli.w r5,  196(r19)
001fa4  loadli.w r7,  200(r19)
001fa8  loadli.w r8,  204(r19)
001fac  loadli.w r9,  208(r19)
001fb0  loadli.w r11,  212(r19)
001fb4  loadli.w r12,  216(r19)
001fb8  loadli.w r14,  220(r19)
001fbc  loadli.w r15,  224(r19)
001fc0  loadli.w r16,  228(r19)
001fc4  loadli.w r20,  232(r19)
001fc8  loadli.w r22,  236(r19)
001fcc  loadli.w r23,  240(r19)
001fd0  loadli.w r24,  244(r19)
001fd4  loadli.w r25,  248(r19)
001fd8  loadli.w r26,  252(r19)
001fdc  exp.f.rn r3, r3
001fe0  exp.f.rn r5, r5
001fe4  exp.f.rn r7, r7
001fe8  exp.f.rn r8, r8
001fec  exp.f.rn r9, r9
001ff0  exp.f.rn r11, r11
001ff4  exp.f.rn r12, r12
001ff8  exp.f.rn r14, r14
001ffc  exp.f.rn r15, r15
002000  exp.f.rn r16, r16
002004  exp.f.rn r20, r20
002008  exp.f.rn r22, r22
00200c  exp.f.rn r23, r23
002010  exp.f.rn r24, r24
002014  exp.f.rn r25, r25
002018  exp.f.rn r26, r26
00201c  storeli.w r3, 192(r19)
002020  storeli.w r5, 196(r19)
002024  storeli.w r7, 200(r19)
002028  storeli.w r8, 204(r19)
00202c  storeli.w r9, 208(r19)
002030  storeli.w r11, 212(r19)
002034  storeli.w r12, 216(r19)
002038  storeli.w r14, 220(r19)
00203c  storeli.w r15, 224(r19)
002040  storeli.w r16, 228(r19)
002044  storeli.w r20, 232(r19)
002048  storeli.w r22, 236(r19)
00204c  storeli.w r23, 240(r19)
002050  storeli.w r24, 244(r19)
002054  storeli.w r25, 248(r19)
002058  storeli.w r26, 252(r19)
00205c  mfence { lm }
002060  addli r3, r30, -4736
002064  vadd.f.mz.rn vr0{mr1}, vr0, vr3
002068  vload_mask16.mz vr3{mr1}, 1792(r30)
00206c  vstore_mask16.mz vr2{mr1}, 0(r3)
002070  addli r3, r30, -6016
002074  vload_mask16.mz vr6{mr1}, 1856(r30)
002078  vload_mask16.mz vr11{mr1}, 1920(r30)
00207c  vload_mask16.mz vr10{mr1}, 1984(r30)
002080  vstore_mask16.mz vr1{mr1}, 1792(r30)
002084  vload_mask16.mz vr1{mr1}, 0(r3)
002088  addli r3, r30, -5952
00208c  vadd.f.mz.rn vr1{mr1}, r1, vr1
002090  vstore_mask16.mz vr1{mr1}, 1856(r30)
002094  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002098  vload_mask16.mz vr1{mr1}, 0(r3)
00209c  addli r3, r30, -5888
0020a0  vadd.f.mz.rn vr1{mr1}, r1, vr1
0020a4  vstore_mask16.mz vr1{mr1}, 1920(r30)
0020a8  vload_mask16.mz vr1{mr1}, 0(r3)
0020ac  vadd.f.mz.rn vr1{mr1}, r1, vr1
0020b0  vstore_mask16.mz vr1{mr1}, 1984(r30)
0020b4  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0020b8  mfence { lm }
0020bc  loadli.w r1,  0(r19)
0020c0  loadli.w r3,  4(r19)
0020c4  loadli.w r5,  8(r19)
0020c8  loadli.w r7,  12(r19)
0020cc  loadli.w r8,  16(r19)
0020d0  loadli.w r9,  20(r19)
0020d4  loadli.w r11,  24(r19)
0020d8  loadli.w r12,  28(r19)
0020dc  loadli.w r14,  32(r19)
0020e0  loadli.w r15,  36(r19)
0020e4  loadli.w r16,  40(r19)
0020e8  loadli.w r20,  44(r19)
0020ec  loadli.w r22,  48(r19)
0020f0  loadli.w r23,  52(r19)
0020f4  loadli.w r24,  56(r19)
0020f8  loadli.w r25,  60(r19)
0020fc  exp.f.rn r1, r1
002100  exp.f.rn r3, r3
002104  exp.f.rn r5, r5
002108  exp.f.rn r7, r7
00210c  exp.f.rn r8, r8
002110  exp.f.rn r9, r9
002114  exp.f.rn r11, r11
002118  exp.f.rn r12, r12
00211c  exp.f.rn r14, r14
002120  exp.f.rn r15, r15
002124  exp.f.rn r16, r16
002128  exp.f.rn r20, r20
00212c  exp.f.rn r22, r22
002130  exp.f.rn r23, r23
002134  exp.f.rn r24, r24
002138  exp.f.rn r25, r25
00213c  storeli.w r1, 0(r19)
002140  storeli.w r3, 4(r19)
002144  storeli.w r5, 8(r19)
002148  storeli.w r7, 12(r19)
00214c  storeli.w r8, 16(r19)
002150  storeli.w r9, 20(r19)
002154  storeli.w r11, 24(r19)
002158  storeli.w r12, 28(r19)
00215c  storeli.w r14, 32(r19)
002160  storeli.w r15, 36(r19)
002164  storeli.w r16, 40(r19)
002168  storeli.w r20, 44(r19)
00216c  storeli.w r22, 48(r19)
002170  storeli.w r23, 52(r19)
002174  storeli.w r24, 56(r19)
002178  storeli.w r25, 60(r19)
00217c  loadli.w r1,  64(r19)
002180  loadli.w r3,  68(r19)
002184  loadli.w r5,  72(r19)
002188  loadli.w r7,  76(r19)
00218c  loadli.w r8,  80(r19)
002190  loadli.w r9,  84(r19)
002194  loadli.w r11,  88(r19)
002198  loadli.w r12,  92(r19)
00219c  loadli.w r14,  96(r19)
0021a0  loadli.w r15,  100(r19)
0021a4  loadli.w r16,  104(r19)
0021a8  loadli.w r20,  108(r19)
0021ac  loadli.w r22,  112(r19)
0021b0  loadli.w r23,  116(r19)
0021b4  loadli.w r24,  120(r19)
0021b8  loadli.w r25,  124(r19)
0021bc  exp.f.rn r1, r1
0021c0  exp.f.rn r3, r3
0021c4  exp.f.rn r5, r5
0021c8  exp.f.rn r7, r7
0021cc  exp.f.rn r8, r8
0021d0  exp.f.rn r9, r9
0021d4  exp.f.rn r11, r11
0021d8  exp.f.rn r12, r12
0021dc  exp.f.rn r14, r14
0021e0  exp.f.rn r15, r15
0021e4  exp.f.rn r16, r16
0021e8  exp.f.rn r20, r20
0021ec  exp.f.rn r22, r22
0021f0  exp.f.rn r23, r23
0021f4  exp.f.rn r24, r24
0021f8  exp.f.rn r25, r25
0021fc  storeli.w r1, 64(r19)
002200  storeli.w r3, 68(r19)
002204  storeli.w r5, 72(r19)
002208  storeli.w r7, 76(r19)
00220c  storeli.w r8, 80(r19)
002210  storeli.w r9, 84(r19)
002214  storeli.w r11, 88(r19)
002218  storeli.w r12, 92(r19)
00221c  storeli.w r14, 96(r19)
002220  storeli.w r15, 100(r19)
002224  storeli.w r16, 104(r19)
002228  storeli.w r20, 108(r19)
00222c  storeli.w r22, 112(r19)
002230  storeli.w r23, 116(r19)
002234  storeli.w r24, 120(r19)
002238  storeli.w r25, 124(r19)
00223c  loadli.w r1,  128(r19)
002240  loadli.w r3,  132(r19)
002244  loadli.w r5,  136(r19)
002248  loadli.w r7,  140(r19)
00224c  loadli.w r8,  144(r19)
002250  loadli.w r9,  148(r19)
002254  loadli.w r11,  152(r19)
002258  loadli.w r12,  156(r19)
00225c  loadli.w r14,  160(r19)
002260  loadli.w r15,  164(r19)
002264  loadli.w r16,  168(r19)
002268  loadli.w r20,  172(r19)
00226c  loadli.w r22,  176(r19)
002270  loadli.w r23,  180(r19)
002274  loadli.w r24,  184(r19)
002278  loadli.w r25,  188(r19)
00227c  exp.f.rn r1, r1
002280  exp.f.rn r3, r3
002284  exp.f.rn r5, r5
002288  exp.f.rn r7, r7
00228c  exp.f.rn r8, r8
002290  exp.f.rn r9, r9
002294  exp.f.rn r11, r11
002298  exp.f.rn r12, r12
00229c  exp.f.rn r14, r14
0022a0  exp.f.rn r15, r15
0022a4  exp.f.rn r16, r16
0022a8  exp.f.rn r20, r20
0022ac  exp.f.rn r22, r22
0022b0  exp.f.rn r23, r23
0022b4  exp.f.rn r24, r24
0022b8  exp.f.rn r25, r25
0022bc  storeli.w r1, 128(r19)
0022c0  storeli.w r3, 132(r19)
0022c4  storeli.w r5, 136(r19)
0022c8  storeli.w r7, 140(r19)
0022cc  storeli.w r8, 144(r19)
0022d0  storeli.w r9, 148(r19)
0022d4  storeli.w r11, 152(r19)
0022d8  storeli.w r12, 156(r19)
0022dc  storeli.w r14, 160(r19)
0022e0  storeli.w r15, 164(r19)
0022e4  storeli.w r16, 168(r19)
0022e8  storeli.w r20, 172(r19)
0022ec  storeli.w r22, 176(r19)
0022f0  storeli.w r23, 180(r19)
0022f4  storeli.w r24, 184(r19)
0022f8  storeli.w r25, 188(r19)
0022fc  loadli.w r1,  192(r19)
002300  loadli.w r3,  196(r19)
002304  loadli.w r5,  200(r19)
002308  loadli.w r7,  204(r19)
00230c  loadli.w r8,  208(r19)
002310  loadli.w r9,  212(r19)
002314  loadli.w r11,  216(r19)
002318  loadli.w r12,  220(r19)
00231c  loadli.w r14,  224(r19)
002320  loadli.w r15,  228(r19)
002324  loadli.w r16,  232(r19)
002328  loadli.w r20,  236(r19)
00232c  loadli.w r22,  240(r19)
002330  loadli.w r23,  244(r19)
002334  loadli.w r24,  248(r19)
002338  loadli.w r25,  252(r19)
00233c  exp.f.rn r1, r1
002340  exp.f.rn r3, r3
002344  exp.f.rn r5, r5
002348  exp.f.rn r7, r7
00234c  exp.f.rn r8, r8
002350  exp.f.rn r9, r9
002354  exp.f.rn r11, r11
002358  exp.f.rn r12, r12
00235c  exp.f.rn r14, r14
002360  exp.f.rn r15, r15
002364  exp.f.rn r16, r16
002368  exp.f.rn r20, r20
00236c  exp.f.rn r22, r22
002370  exp.f.rn r23, r23
002374  exp.f.rn r24, r24
002378  exp.f.rn r25, r25
00237c  storeli.w r1, 192(r19)
002380  storeli.w r3, 196(r19)
002384  storeli.w r5, 200(r19)
002388  storeli.w r7, 204(r19)
00238c  storeli.w r8, 208(r19)
002390  storeli.w r9, 212(r19)
002394  storeli.w r11, 216(r19)
002398  storeli.w r12, 220(r19)
00239c  storeli.w r14, 224(r19)
0023a0  storeli.w r15, 228(r19)
0023a4  storeli.w r16, 232(r19)
0023a8  storeli.w r20, 236(r19)
0023ac  storeli.w r22, 240(r19)
0023b0  storeli.w r23, 244(r19)
0023b4  storeli.w r24, 248(r19)
0023b8  storeli.w r25, 252(r19)
0023bc  mfence { lm }
0023c0  addli r1, zero, 64
0023c4  addli r14, r13, 0
0023c8  addli r11, zero, 256
0023cc  addli r12, zero, 128
0023d0  addli r13, zero, 32
0023d4  vadd.f.mz.rn vr0{mr1}, vr0, vr6
0023d8  vadd.f.mz.rn vr1{mr1}, vr0, vr11
0023dc  vload_mask16.mz vr0{mr1}, 1792(r30)
0023e0  vload_mask16.mz vr2{mr1}, 1856(r30)
0023e4  vload_mask16.mz vr4{mr1}, 1920(r30)
0023e8  vload_mask16.mz vr5{mr1}, 1984(r30)
0023ec  loadli.w r3,  -6340(r30)
0023f0  vadd.f.mz.rn vr1{mr1}, vr1, vr10
0023f4  vadd.f.mz.rn vr1{mr1}, vr1, vr0
0023f8  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0023fc  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002400  vadd.f.mz.rn vr1{mr1}, vr1, vr5
002404  vsrl.p vr8, r21, vr1
002408  vadd.f.mz.rn vr1{mr1}, vr1, vr8
00240c  vsrl.p vr8, r10, vr1
002410  addli r10, zero, 64
002414  vadd.f.mz.rn vr1{mr1}, vr1, vr8
002418  vsrl.p vr8, r1, vr1
00241c  addli r1, zero, 32
002420  vadd.f.mz.rn vr1{mr1}, vr1, vr8
002424  vsrl.p vr8, r1, vr1
002428  vadd.f.mz.rn vr1{mr1}, vr1, vr8
00242c  vextracti.f r1, 0(vr1)
002430  stores.w r1, 0(r3)
002434  mfence { lm, sm, gm }
002438  csr_set csr3, r4
00243c  sync_group
002440  bneq r14, zero, 36
002444  loads.w r1, 0(r28)
002448  loads.w r3, 4(r28)
00244c  loads.w r5, 8(r28)
002450  add.f.rn r1, r1, r3
002454  loads.w r3, 12(r28)
002458  add.f.rn r1, r1, r5
00245c  add.f.rn r1, r1, r3
002460  stores.w r1, 0(r28)
002464  mfence { lm, sm, gm }
002468  csr_set csr3, r4
00246c  sync_group
002470  loads.w r1, 0(r28)
002474  lui r3, 260096
002478  addli r9, r30, -4352
00247c  div.f.rn r1, r3, r1
002480  addli r3, r30, -5568
002484  vmul.f.mz.rn vr0{mr1}, r1, vr0
002488  vload_mask16.mz vr1{mr1}, 0(r3)
00248c  addli r3, r30, -4352
002490  vmul.f.mz.rn vr1{mr1}, r1, vr1
002494  vstore_mask16.mz vr1{mr1}, 0(r3)
002498  addli r3, r30, -5504
00249c  vload_mask16.mz vr1{mr1}, 0(r3)
0024a0  addli r3, r30, -4288
0024a4  vmul.f.mz.rn vr1{mr1}, r1, vr1
0024a8  vstore_mask16.mz vr1{mr1}, 0(r3)
0024ac  addli r3, r30, -5440
0024b0  vload_mask16.mz vr1{mr1}, 0(r3)
0024b4  addli r3, r30, -4224
0024b8  vmul.f.mz.rn vr1{mr1}, r1, vr1
0024bc  vstore_mask16.mz vr1{mr1}, 0(r3)
0024c0  addli r3, r30, -5248
0024c4  vload_mask16.mz vr1{mr1}, 0(r3)
0024c8  addli r3, r30, -4160
0024cc  vmul.f.mz.rn vr1{mr1}, r1, vr1
0024d0  vstore_mask16.mz vr1{mr1}, 0(r3)
0024d4  addli r3, r30, -5376
0024d8  vload_mask16.mz vr1{mr1}, 0(r3)
0024dc  addli r3, r30, -4096
0024e0  vmul.f.mz.rn vr1{mr1}, r1, vr1
0024e4  vstore_mask16.mz vr1{mr1}, 0(r3)
0024e8  addli r3, r30, -5632
0024ec  vload_mask16.mz vr1{mr1}, 0(r3)
0024f0  addli r3, r30, -4032
0024f4  vmul.f.mz.rn vr1{mr1}, r1, vr1
0024f8  vstore_mask16.mz vr1{mr1}, 0(r3)
0024fc  addli r3, r30, -4480
002500  vload_mask16.mz vr1{mr1}, 0(r3)
002504  addli r3, r30, -3968
002508  vmul.f.mz.rn vr1{mr1}, r1, vr1
00250c  vstore_mask16.mz vr1{mr1}, 0(r3)
002510  addli r3, r30, -4416
002514  vload_mask16.mz vr1{mr1}, 0(r3)
002518  addli r3, r30, -3904
00251c  vmul.f.mz.rn vr1{mr1}, r1, vr1
002520  vstore_mask16.mz vr1{mr1}, 0(r3)
002524  addli r3, r30, -5120
002528  vload_mask16.mz vr1{mr1}, 0(r3)
00252c  addli r3, r30, -3840
002530  vmul.f.mz.rn vr1{mr1}, r1, vr1
002534  vstore_mask16.mz vr1{mr1}, 0(r3)
002538  addli r3, r30, -5056
00253c  vload_mask16.mz vr1{mr1}, 0(r3)
002540  addli r3, r30, -3776
002544  vmul.f.mz.rn vr1{mr1}, r1, vr1
002548  vstore_mask16.mz vr1{mr1}, 0(r3)
00254c  addli r3, r30, -4928
002550  vload_mask16.mz vr1{mr1}, 0(r3)
002554  addli r3, r30, -3712
002558  vmul.f.mz.rn vr1{mr1}, r1, vr1
00255c  vstore_mask16.mz vr1{mr1}, 0(r3)
002560  addli r3, r30, -4800
002564  vload_mask16.mz vr1{mr1}, 0(r3)
002568  addli r3, r30, -3648
00256c  vmul.f.mz.rn vr1{mr1}, r1, vr1
002570  vstore_mask16.mz vr1{mr1}, 0(r3)
002574  addli r3, r30, -5312
002578  vload_mask16.mz vr1{mr1}, 0(r3)
00257c  addli r3, r30, -3584
002580  vmul.f.mz.rn vr1{mr1}, r1, vr1
002584  vstore_mask16.mz vr1{mr1}, 0(r3)
002588  addli r3, r30, -4672
00258c  vload_mask16.mz vr1{mr1}, 0(r3)
002590  addli r3, r30, -3520
002594  vmul.f.mz.rn vr1{mr1}, r1, vr1
002598  vstore_mask16.mz vr1{mr1}, 0(r3)
00259c  addli r3, r30, -4608
0025a0  vload_mask16.mz vr1{mr1}, 0(r3)
0025a4  addli r3, r30, -3456
0025a8  vmul.f.mz.rn vr1{mr1}, r1, vr1
0025ac  vstore_mask16.mz vr1{mr1}, 0(r3)
0025b0  addli r3, r30, -4544
0025b4  vload_mask16.mz vr1{mr1}, 0(r3)
0025b8  addli r3, r30, -3392
0025bc  vmul.f.mz.rn vr1{mr1}, r1, vr1
0025c0  vstore_mask16.mz vr1{mr1}, 0(r3)
0025c4  addli r3, r30, -5696
0025c8  vload_mask16.mz vr1{mr1}, 0(r3)
0025cc  addli r3, r30, -3328
0025d0  vmul.f.mz.rn vr1{mr1}, r1, vr1
0025d4  vstore_mask16.mz vr1{mr1}, 0(r3)
0025d8  addli r3, r30, -5184
0025dc  vload_mask16.mz vr1{mr1}, 0(r3)
0025e0  addli r3, r30, -3264
0025e4  vmul.f.mz.rn vr1{mr1}, r1, vr1
0025e8  vstore_mask16.mz vr1{mr1}, 0(r3)
0025ec  addli r3, r30, -4992
0025f0  vload_mask16.mz vr1{mr1}, 0(r3)
0025f4  addli r3, r30, -3200
0025f8  vmul.f.mz.rn vr1{mr1}, r1, vr1
0025fc  vstore_mask16.mz vr1{mr1}, 0(r3)
002600  addli r3, r30, -4864
002604  vload_mask16.mz vr1{mr1}, 0(r3)
002608  addli r3, r30, -3136
00260c  vmul.f.mz.rn vr1{mr1}, r1, vr1
002610  vstore_mask16.mz vr1{mr1}, 0(r3)
002614  addli r3, r30, -3072
002618  vmul.f.mz.rn vr1{mr1}, r1, vr7
00261c  vstore_mask16.mz vr1{mr1}, 0(r3)
002620  addli r3, r30, -3008
002624  vmul.f.mz.rn vr1{mr1}, r1, vr9
002628  vstore_mask16.mz vr1{mr1}, 0(r3)
00262c  addli r3, r30, -5760
002630  vload_mask16.mz vr1{mr1}, 0(r3)
002634  addli r3, r30, -2944
002638  vmul.f.mz.rn vr1{mr1}, r1, vr1
00263c  vstore_mask16.mz vr1{mr1}, 0(r3)
002640  addli r3, r30, -4736
002644  vload_mask16.mz vr1{mr1}, 0(r3)
002648  addli r3, r30, -2880
00264c  vmul.f.mz.rn vr1{mr1}, r1, vr1
002650  vstore_mask16.mz vr1{mr1}, 0(r3)
002654  addli r3, r30, -2816
002658  vmul.f.mz.rn vr1{mr1}, r1, vr3
00265c  vstore_mask16.mz vr1{mr1}, 0(r3)
002660  addli r3, r30, -2752
002664  vmul.f.mz.rn vr1{mr1}, r1, vr6
002668  vstore_mask16.mz vr1{mr1}, 0(r3)
00266c  addli r3, r30, -2688
002670  vmul.f.mz.rn vr1{mr1}, r1, vr11
002674  vstore_mask16.mz vr1{mr1}, 0(r3)
002678  addli r3, r30, -2624
00267c  vmul.f.mz.rn vr1{mr1}, r1, vr10
002680  vstore_mask16.mz vr1{mr1}, 0(r3)
002684  addli r3, r30, -2560
002688  vstore_mask16.mz vr0{mr1}, 0(r3)
00268c  addli r3, r30, -2496
002690  vmul.f.mz.rn vr0{mr1}, r1, vr2
002694  vstore_mask16.mz vr0{mr1}, 0(r3)
002698  addli r3, r30, -2432
00269c  vmul.f.mz.rn vr0{mr1}, r1, vr4
0026a0  vstore_mask16.mz vr0{mr1}, 0(r3)
0026a4  vmul.f.mz.rn vr0{mr1}, r1, vr5
0026a8  addli r1, r30, -2368
0026ac  vstore_mask16.mz vr0{mr1}, 0(r1)
0026b0  mfence { lm }
0026b4  loadli.w r3,  64(r30)
0026b8  loadli.w r1,  -6392(r30)
0026bc  blt.s r2, r3, -9308
0026c0  addli r1, zero, 0
0026c4  j -9316
0026c8  addli sp, r30, -6400
0026cc  addli sp, sp, 6400
0026d0  mfence { lm, sm, gm }
0026d4  exit
0026d8  exit
0026dc  exit
0026e0  exit
0026e4  exit
0026e8  exit
0026ec  exit
0026f0  exit
0026f4  exit
0026f8  exit
0026fc  exit
002700  exit
002704  exit
002708  exit
00270c  exit
002710  exit
002714  exit
002718  exit
00271c  exit
002720  exit
002724  exit
002728  exit
00272c  exit
002730  exit
002734  exit
002738  exit
00273c  exit
002740  exit
002744  exit
002748  exit
00274c  exit
002750  exit
002754  exit
002758  exit
00275c  exit
002760  exit
002764  exit
002768  exit
00276c  exit
002770  exit
002774  exit
002778  exit
00277c  exit
002780  exit
002784  exit
002788  exit
00278c  exit
002790  exit
002794  exit
002798  exit
00279c  exit
0027a0  exit
0027a4  exit
0027a8  exit
0027ac  exit
0027b0  exit
0027b4  exit
0027b8  exit
0027bc  exit
0027c0  exit
0027c4  exit
0027c8  exit
0027cc  exit
0027d0  exit
0027d4  exit
0027d8  exit
0027dc  exit
0027e0  exit
0027e4  exit
0027e8  exit
0027ec  exit
0027f0  exit
0027f4  exit
0027f8  exit
0027fc  exit
002800  exit
002804  exit
002808  exit
00280c  exit
002810  exit
002814  exit
002818  exit
00281c  exit
002820  exit
002824  exit
002828  exit
00282c  exit
002830  exit
002834  exit
002838  exit
00283c  exit
002840  exit
002844  exit
002848  exit
00284c  exit
002850  exit
002854  exit
002858  exit
00285c  exit
002860  exit
002864  exit
002868  exit
00286c  exit
002870  exit
002874  exit
002878  exit
00287c  exit
002880  exit
002884  exit
002888  exit
00288c  exit
002890  exit
002894  exit
002898  exit
00289c  exit
0028a0  exit
0028a4  exit
0028a8  exit
0028ac  exit
0028b0  exit
0028b4  exit
0028b8  exit
0028bc  exit
0028c0  exit
0028c4  exit
0028c8  exit
0028cc  exit
0028d0  exit
0028d4  exit
0028d8  exit
0028dc  exit
0028e0  exit
0028e4  exit
0028e8  exit
0028ec  exit
0028f0  exit
0028f4  exit
0028f8  exit
0028fc  exit
002900  exit
002904  exit
002908  exit
00290c  exit
002910  exit
002914  exit
