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
0000dc  9f8e8eff  addli sp, sp, -64
0000e0  1f8f0e00  addli r30, sp, 0
0000e4  805a0002  load_param_i r21, 0
0000e8  e3493f00  loadli.w r19,  28(r30)
0000ec  e3003f00  loadli.w r1,  24(r30)
0000f0  630a4f00  loadli.w r20,  32(r30)
0000f4  8b901920  mul.s r1, r19, r1
0000f8  0b9b4021  mul.s r22, r1, r20
0000fc  4b415b01  ble.s r22, r21, 80
000100  80db0002  load_param_i r23, 1
000104  1f0c1000  addli r24, zero, 8
000108  5b050000  j 40
00010c  0b948041  min.s r8, r1, r24
000110  6b528f00  load.d r[5:6], 8(r30)
000114  6b530f01  load.d r[7:8], 16(r30)
000118  0b942050  fmac.s r8, r1, r2
00011c  6b510f00  load.d r[3:4], 0(r30)
000120  d72a0000  jal 340
000124  8b9a7a11  add.s r21, r21, r23
000128  3fa06a01  blt.s r21, r22, 8
00012c  5b040000  j 32
000130  8b904a31  div.s r1, r21, r20
000134  1f215001  addli r2, zero, 170
000138  9f345001  addli r9, zero, 171
00013c  8b903031  div.s r1, r1, r19
000140  3fbf80ff  blt.s r1, r24, -52
000144  9f245001  addli r9, zero, 170
000148  dbf8ffff  j -60
00014c  00a00300  mfence { lm, sm, gm }
000150  00100000  exit
000154  9f8e8edd  addli sp, sp, -4416
000158  67c1ee23  storeli.w r30, 4372(sp)
00015c  1f8f8e22  addli r30, sp, 4416
000160  e7c33e23  storeli.w r19, 4412(sp)
000164  e7834e23  storeli.w r20, 4408(sp)
000168  67c35e23  storeli.w r21, 4404(sp)
00016c  67836e23  storeli.w r22, 4400(sp)
000170  e7c27e23  storeli.w r23, 4396(sp)
000174  e7828e23  storeli.w r24, 4392(sp)
000178  67c29e23  storeli.w r25, 4388(sp)
00017c  6782ae23  storeli.w r26, 4384(sp)
000180  e7c1be23  storeli.w r27, 4380(sp)
000184  e781ce23  storeli.w r28, 4376(sp)
000188  6781fe23  storeli.w r31, 4368(sp)
00018c  9f00efde  addli r1, r30, -4240
000190  e7478fde  storeli.w r8, -4228(r30)
000194  73b06000  store.d r[7:8], 0(r1)
000198  80300002  core_id r1
00019c  1f03dfde  addli r6, r30, -4248
0001a0  73302300  store.d r[3:4], 0(r6)
0001a4  3bf00000  bneq r1, zero, 28
0001a8  1f030020  addli r6, zero, 4096
0001ac  ab0300f0  lui r7, 983040
0001b0  17137300  or r6, r6, r7
0001b4  ab030000  lui r7, 0
0001b8  9f830300  addli r7, r7, 0
0001bc  7f037200  l_gm2sm r6, r7, 0(r[5:6])
0001c0  2bf20000  lui r4, 15
0001c4  00a00300  mfence { lm, sm, gm }
0001c8  1b12f2ff  ori r4, r4, 4095
0001cc  80210204  csr_set csr3, r4
0001d0  00d00100  sync_group
0001d4  cbf91402  ble.s r9, r1, 1660
0001d8  2bf1ffff  lui r2, 1048575
0001dc  2b13833a  lui r6, 239665
0001e0  2b0d0000  lui r26, 0
0001e4  1f120000  addli r4, zero, 1
0001e8  9f028fdf  addli r5, r30, -4160
0001ec  1f040020  addli r8, zero, 4096
0001f0  9f068003  addli r13, zero, 448
0001f4  1f070002  addli r14, zero, 256
0001f8  9f070001  addli r15, zero, 128
0001fc  1f088000  addli r16, zero, 64
000200  9f084000  addli r17, zero, 32
000204  1f098005  addli r18, zero, 704
000208  1f0b2000  addli r22, zero, 16
00020c  ab0bffff  lui r23, 1048560
000210  9f0cc00f  addli r25, zero, 2016
000214  6e224262  vxor.u.mz vr4{mr1}, vr4, vr4
000218  1b1601fc  ori r12, r2, 4032
00021c  1b11f326  ori r2, r6, 623
000220  2b730000  lui r6, 7
000224  1f0d0d00  addli r26, r26, 0
000228  e74f2fdc  storeli.w r2, -4356(r30)
00022c  1b1cf3ff  ori r24, r6, 4095
000230  1f010fde  addli r2, r30, -4352
000234  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
000238  6341ffde  loadli.w r2,  -4228(r30)
00023c  92314002  vadd.s.mz vr3{mr1}, zero, vr4
000240  12304002  vadd.s.mz vr0{mr1}, zero, vr4
000244  92304002  vadd.s.mz vr1{mr1}, zero, vr4
000248  12314002  vadd.s.mz vr2{mr1}, zero, vr4
00024c  9f030000  addli r7, zero, 0
000250  0b932010  add.s r6, r1, r2
000254  1b33b300  slli r6, r6, 11
000258  33150328  sext_int2long r[11:12], r6
00025c  2b0300f0  lui r6, 983040
000260  973d4502  sll.d r[28:29], r[11:12], r4
000264  1f05dfde  addli r10, r30, -4248
000268  17136400  or r6, r8, r6
00026c  1f040600  addli r8, r12, 0
000270  6b510500  load.d r[3:4], 0(r10)
000274  0b25b111  add.ul r[11:12], r[3:4], r[28:29]
000278  7f235500  l_gm2lm r6, r5, 0(r[11:12])
00027c  00a00200  mfence { lm, gm }
000280  1f010fdf  addli r2, r30, -4224
000284  0b957210  add.s r10, r5, r7
000288  1f040401  addli r8, r8, 128
00028c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000290  0b117d10  add.s r2, r26, r7
000294  1f030518  addli r6, r10, 3072
000298  9f830302  addli r7, r7, 256
00029c  9f010118  addli r3, r2, 3072
0002a0  c2030302  vload.mz vr7{mr1}, 0(r6)
0002a4  1f030119  addli r6, r2, 3200
0002a8  ca820102  vloads.mz vr5{mr1}, 0(r3)
0002ac  9f018118  addli r3, r2, 3136
0002b0  4a040302  vloads.mz vr8{mr1}, 0(r6)
0002b4  1f030fdf  addli r6, r30, -4224
0002b8  1f018119  addli r2, r2, 3264
0002bc  4a830102  vloads.mz vr6{mr1}, 0(r3)
0002c0  9f018518  addli r3, r10, 3136
0002c4  42800102  vload.mz vr0{mr1}, 0(r3)
0002c8  e6447280  vmerge_l.hf vr9, vr4, vr7
0002cc  e64372a0  vmerge_h.hf vr7, vr4, vr7
0002d0  9f010519  addli r3, r10, 3200
0002d4  e6450280  vmerge_l.hf vr11, vr4, vr0
0002d8  664002a0  vmerge_h.hf vr0, vr4, vr0
0002dc  66455280  vmerge_l.hf vr10, vr4, vr5
0002e0  e64252a0  vmerge_h.hf vr5, vr4, vr5
0002e4  9694a402  vadd.f.mz.rn vr9{mr1}, vr9, vr10
0002e8  66456280  vmerge_l.hf vr10, vr4, vr6
0002ec  664362a0  vmerge_h.hf vr6, vr4, vr6
0002f0  96925302  vadd.f.mz.rn vr5{mr1}, vr7, vr5
0002f4  ca030102  vloads.mz vr7{mr1}, 0(r2)
0002f8  1f018519  addli r2, r10, 3264
0002fc  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
000300  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
000304  1695a502  vadd.f.mz.rn vr10{mr1}, vr11, vr10
000308  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
00030c  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
000310  c2040102  vload.mz vr9{mr1}, 0(r2)
000314  1f010fdf  addli r2, r30, -4224
000318  a610a502  vmac.f.mz.rn vr1{mr1}, vr10, vr10
00031c  96915102  vadd.f.mz.rn vr3{mr1}, vr3, vr5
000320  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000324  9615a302  vadd.f.mz.rn vr11{mr1}, vr6, vr10
000328  42830102  vload.mz vr6{mr1}, 0(r3)
00032c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
000330  16950502  vadd.f.mz.rn vr10{mr1}, vr11, vr0
000334  e6457280  vmerge_l.hf vr11, vr4, vr7
000338  e64372a0  vmerge_h.hf vr7, vr4, vr7
00033c  66406280  vmerge_l.hf vr0, vr4, vr6
000340  e64262a0  vmerge_h.hf vr5, vr4, vr6
000344  66439280  vmerge_l.hf vr6, vr4, vr9
000348  e64492a0  vmerge_h.hf vr9, vr4, vr9
00034c  4610a102  vstore_mask16.mz vr10{mr1}, 0(r2)
000350  66458280  vmerge_l.hf vr10, vr4, vr8
000354  664482a0  vmerge_h.hf vr8, vr4, vr8
000358  1613b302  vadd.f.mz.rn vr6{mr1}, vr6, vr11
00035c  96937402  vadd.f.mz.rn vr7{mr1}, vr9, vr7
000360  1610a002  vadd.f.mz.rn vr0{mr1}, vr0, vr10
000364  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
000368  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00036c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
000370  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000374  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
000378  1301d404  setlt.u r2, r8, r13
00037c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000380  96915102  vadd.f.mz.rn vr3{mr1}, vr3, vr5
000384  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000388  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
00038c  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
000390  bb4b01fe  bneq r2, zero, -272
000394  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000398  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
00039c  1f050000  addli r10, zero, 0
0003a0  9f030600  addli r7, r12, 0
0003a4  6a7137c0  vsrl.p vr2, r14, vr3
0003a8  6a7217c0  vsrl.p vr4, r14, vr1
0003ac  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
0003b0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0003b4  eaf127c0  vsrl.p vr3, r15, vr2
0003b8  6af217c0  vsrl.p vr4, r15, vr1
0003bc  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0003c0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0003c4  ea7128c0  vsrl.p vr3, r16, vr2
0003c8  6a7218c0  vsrl.p vr4, r16, vr1
0003cc  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0003d0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0003d4  eaf128c0  vsrl.p vr3, r17, vr2
0003d8  6af218c0  vsrl.p vr4, r17, vr1
0003dc  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0003e0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0003e4  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
0003e8  12303002  vadd.s.mz vr0{mr1}, zero, vr3
0003ec  92323002  vadd.s.mz vr5{mr1}, zero, vr3
0003f0  fa150140  vextracti.f r11, 0(vr2)
0003f4  fa9a0040  vextracti.f r21, 0(vr1)
0003f8  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0003fc  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000400  0b13ad10  add.s r6, r26, r10
000404  1f010fdf  addli r2, r30, -4224
000408  9f830301  addli r7, r7, 128
00040c  1f04030c  addli r8, r6, 1536
000410  9f09830c  addli r19, r6, 1600
000414  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
000418  92320002  vadd.s.mz vr5{mr1}, zero, vr0
00041c  4a030402  vloads.mz vr6{mr1}, 0(r8)
000420  0b94a210  add.s r8, r5, r10
000424  ca830902  vloads.mz vr7{mr1}, 0(r19)
000428  9f09030d  addli r19, r6, 1664
00042c  1f03830d  addli r6, r6, 1728
000430  1f050502  addli r10, r10, 256
000434  1f0a040c  addli r20, r8, 1536
000438  9f01840c  addli r3, r8, 1600
00043c  ca840902  vloads.mz vr9{mr1}, 0(r19)
000440  42040a02  vload.mz vr8{mr1}, 0(r20)
000444  42850102  vload.mz vr10{mr1}, 0(r3)
000448  9f01040d  addli r3, r8, 1664
00044c  e6c58180  vmerge_l.hf vr11, vr3, vr8
000450  66c2a180  vmerge_l.hf vr4, vr3, vr10
000454  66c5a1a0  vmerge_h.hf vr10, vr3, vr10
000458  66c481a0  vmerge_h.hf vr8, vr3, vr8
00045c  66c06180  vmerge_l.hf vr0, vr3, vr6
000460  66c361a0  vmerge_h.hf vr6, vr3, vr6
000464  16900502  vadd.f.mz.rn vr0{mr1}, vr11, vr0
000468  e6c57180  vmerge_l.hf vr11, vr3, vr7
00046c  e6c371a0  vmerge_h.hf vr7, vr3, vr7
000470  16136402  vadd.f.mz.rn vr6{mr1}, vr8, vr6
000474  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
000478  4a050302  vloads.mz vr10{mr1}, 0(r6)
00047c  16940202  vadd.f.mz.rn vr8{mr1}, vr5, vr0
000480  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
000484  1612b202  vadd.f.mz.rn vr4{mr1}, vr4, vr11
000488  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00048c  e6c59180  vmerge_l.hf vr11, vr3, vr9
000490  e6c491a0  vmerge_h.hf vr9, vr3, vr9
000494  16106402  vadd.f.mz.rn vr0{mr1}, vr8, vr6
000498  42840102  vload.mz vr8{mr1}, 0(r3)
00049c  9f01840d  addli r3, r8, 1728
0004a0  a6104202  vmac.f.mz.rn vr1{mr1}, vr4, vr4
0004a4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0004a8  96924202  vadd.f.mz.rn vr5{mr1}, vr5, vr4
0004ac  42820102  vload.mz vr4{mr1}, 0(r3)
0004b0  93812305  setlt.u r3, r7, r18
0004b4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0004b8  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0004bc  66c38180  vmerge_l.hf vr6, vr3, vr8
0004c0  96927202  vadd.f.mz.rn vr5{mr1}, vr5, vr7
0004c4  e6c381a0  vmerge_h.hf vr7, vr3, vr8
0004c8  66c44180  vmerge_l.hf vr8, vr3, vr4
0004cc  66c241a0  vmerge_h.hf vr4, vr3, vr4
0004d0  66c0a180  vmerge_l.hf vr0, vr3, vr10
0004d4  66c5a1a0  vmerge_h.hf vr10, vr3, vr10
0004d8  1613b302  vadd.f.mz.rn vr6{mr1}, vr6, vr11
0004dc  96939302  vadd.f.mz.rn vr7{mr1}, vr7, vr9
0004e0  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0004e4  42140102  vload_mask16.mz vr8{mr1}, 0(r2)
0004e8  1612a202  vadd.f.mz.rn vr4{mr1}, vr4, vr10
0004ec  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0004f0  96920202  vadd.f.mz.rn vr5{mr1}, vr5, vr0
0004f4  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0004f8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0004fc  16146402  vadd.f.mz.rn vr8{mr1}, vr8, vr6
000500  96924202  vadd.f.mz.rn vr5{mr1}, vr5, vr4
000504  a6104202  vmac.f.mz.rn vr1{mr1}, vr4, vr4
000508  16107402  vadd.f.mz.rn vr0{mr1}, vr8, vr7
00050c  bbdb01fe  bneq r3, zero, -268
000510  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000514  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
000518  0be50510  add.f.rn r10, r11, zero
00051c  9f090000  addli r19, zero, 0
000520  9f030600  addli r7, r12, 0
000524  6a7107c0  vsrl.p vr2, r14, vr0
000528  ea7117c0  vsrl.p vr3, r14, vr1
00052c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000530  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000534  6af107c0  vsrl.p vr2, r15, vr0
000538  eaf117c0  vsrl.p vr3, r15, vr1
00053c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000540  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000544  6a7108c0  vsrl.p vr2, r16, vr0
000548  ea7118c0  vsrl.p vr3, r16, vr1
00054c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000550  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000554  6af108c0  vsrl.p vr2, r17, vr0
000558  eaf118c0  vsrl.p vr3, r17, vr1
00055c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000560  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000564  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
000568  92323002  vadd.s.mz vr5{mr1}, zero, vr3
00056c  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000570  7a140040  vextracti.f r8, 0(vr0)
000574  fa950040  vextracti.f r11, 0(vr1)
000578  12303002  vadd.s.mz vr0{mr1}, zero, vr3
00057c  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000580  8b91a911  add.s r3, r19, r26
000584  0b933211  add.s r6, r5, r19
000588  1f010fdf  addli r2, r30, -4224
00058c  9f830301  addli r7, r7, 128
000590  9f890902  addli r19, r19, 256
000594  4a830102  vloads.mz vr6{mr1}, 0(r3)
000598  1f8a8100  addli r20, r3, 64
00059c  42040302  vload.mz vr8{mr1}, 0(r6)
0005a0  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
0005a4  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0005a8  1f810101  addli r2, r3, 128
0005ac  9f818101  addli r3, r3, 192
0005b0  ca030a02  vloads.mz vr7{mr1}, 0(r20)
0005b4  1f0a8300  addli r20, r6, 64
0005b8  ca040102  vloads.mz vr9{mr1}, 0(r2)
0005bc  1f010301  addli r2, r6, 128
0005c0  42000a02  vload.mz vr0{mr1}, 0(r20)
0005c4  1f0a0fdf  addli r20, r30, -4224
0005c8  66c58180  vmerge_l.hf vr10, vr3, vr8
0005cc  66c481a0  vmerge_h.hf vr8, vr3, vr8
0005d0  66c20180  vmerge_l.hf vr4, vr3, vr0
0005d4  66c001a0  vmerge_h.hf vr0, vr3, vr0
0005d8  e6c56180  vmerge_l.hf vr11, vr3, vr6
0005dc  66c361a0  vmerge_h.hf vr6, vr3, vr6
0005e0  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
0005e4  e6c57180  vmerge_l.hf vr11, vr3, vr7
0005e8  16136402  vadd.f.mz.rn vr6{mr1}, vr8, vr6
0005ec  e6c371a0  vmerge_h.hf vr7, vr3, vr7
0005f0  1694a202  vadd.f.mz.rn vr8{mr1}, vr5, vr10
0005f4  c2120a02  vload_mask16.mz vr5{mr1}, 0(r20)
0005f8  1612b202  vadd.f.mz.rn vr4{mr1}, vr4, vr11
0005fc  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
000600  2611a502  vmac.f.mz.rn vr2{mr1}, vr10, vr10
000604  4a850102  vloads.mz vr10{mr1}, 0(r3)
000608  e6c59180  vmerge_l.hf vr11, vr3, vr9
00060c  e6c491a0  vmerge_h.hf vr9, vr3, vr9
000610  96136402  vadd.f.mz.rn vr7{mr1}, vr8, vr6
000614  42040102  vload.mz vr8{mr1}, 0(r2)
000618  1f018301  addli r2, r6, 192
00061c  a6104202  vmac.f.mz.rn vr1{mr1}, vr4, vr4
000620  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000624  96924202  vadd.f.mz.rn vr5{mr1}, vr5, vr4
000628  42020102  vload.mz vr4{mr1}, 0(r2)
00062c  1f010fdf  addli r2, r30, -4224
000630  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
000634  96920202  vadd.f.mz.rn vr5{mr1}, vr5, vr0
000638  66c381a0  vmerge_h.hf vr6, vr3, vr8
00063c  66c0a180  vmerge_l.hf vr0, vr3, vr10
000640  66c5a1a0  vmerge_h.hf vr10, vr3, vr10
000644  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
000648  e6c28180  vmerge_l.hf vr5, vr3, vr8
00064c  66c44180  vmerge_l.hf vr8, vr3, vr4
000650  66c241a0  vmerge_h.hf vr4, vr3, vr4
000654  16139302  vadd.f.mz.rn vr6{mr1}, vr6, vr9
000658  9692b202  vadd.f.mz.rn vr5{mr1}, vr5, vr11
00065c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
000660  1612a202  vadd.f.mz.rn vr4{mr1}, vr4, vr10
000664  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000668  96935302  vadd.f.mz.rn vr7{mr1}, vr7, vr5
00066c  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
000670  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
000674  13812305  setlt.u r2, r7, r18
000678  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00067c  a6104202  vmac.f.mz.rn vr1{mr1}, vr4, vr4
000680  96920202  vadd.f.mz.rn vr5{mr1}, vr5, vr0
000684  16906302  vadd.f.mz.rn vr0{mr1}, vr7, vr6
000688  96924202  vadd.f.mz.rn vr5{mr1}, vr5, vr4
00068c  bb5b01fe  bneq r2, zero, -268
000690  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
000694  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000698  0be10a10  add.f.rn r2, r21, zero
00069c  8b618510  add.f.rn r3, r10, r8
0006a0  1f040000  addli r8, zero, 0
0006a4  ea7107c0  vsrl.p vr3, r14, vr0
0006a8  6a7117c0  vsrl.p vr2, r14, vr1
0006ac  0b61b110  add.f.rn r2, r2, r11
0006b0  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0006b4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0006b8  eaf107c0  vsrl.p vr3, r15, vr0
0006bc  6af117c0  vsrl.p vr2, r15, vr1
0006c0  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0006c4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0006c8  ea7108c0  vsrl.p vr3, r16, vr0
0006cc  6a7118c0  vsrl.p vr2, r16, vr1
0006d0  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0006d4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0006d8  eaf108c0  vsrl.p vr3, r17, vr0
0006dc  6af118c0  vsrl.p vr2, r17, vr1
0006e0  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0006e4  7a130040  vextracti.f r6, 0(vr0)
0006e8  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
0006ec  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0006f0  8be16110  add.f.rn r3, r3, r6
0006f4  7a130040  vextracti.f r6, 0(vr0)
0006f8  0b616110  add.f.rn r2, r2, r6
0006fc  2b03003a  lui r6, 237568
000700  8be16120  mul.f.rn r3, r3, r6
000704  0b616120  mul.f.rn r2, r2, r6
000708  0be33120  mul.f.rn r6, r3, r3
00070c  6a911122  vor.f.mz vr2{mr1}, r3, vr1
000710  0b616118  sub.f.rn r2, r2, r6
000714  6343ffdd  loadli.w r6,  -4356(r30)
000718  0b616110  add.f.rn r2, r2, r6
00071c  2b03803f  lui r6, 260096
000720  0f010108  sqrt.f.rn r2, r2
000724  0f012318  div.f.rn r2, r6, r2
000728  ea111122  vor.f.mz vr3{mr1}, r2, vr1
00072c  2bf1ffff  lui r2, 1048575
000730  9b1301fe  ori r7, r2, 4064
000734  0b11a411  add.s r2, r8, r26
000738  0b958210  add.s r10, r5, r8
00073c  6a221b22  vor.u.mz vr4{mr1}, r22, vr1
000740  9f838300  addli r7, r7, 64
000744  1f040401  addli r8, r8, 128
000748  ca020102  vloads.mz vr5{mr1}, 0(r2)
00074c  1f018100  addli r2, r2, 64
000750  9f058500  addli r11, r10, 64
000754  42000502  vload.mz vr0{mr1}, 0(r10)
000758  4a030102  vloads.mz vr6{mr1}, 0(r2)
00075c  c2830502  vload.mz vr7{mr1}, 0(r11)
000760  13819305  setlt.u r2, r7, r25
000764  6e3402a2  vsll.s.mz vr8{mr1}, vr4, vr0
000768  6ab00b02  vand.s.mz vr0{mr1}, r23, vr0
00076c  ee3472a2  vsll.s.mz vr9{mr1}, vr4, vr7
000770  eab37b02  vand.s.mz vr7{mr1}, r23, vr7
000774  6e3552a2  vsll.s.mz vr10{mr1}, vr4, vr5
000778  eab25b02  vand.s.mz vr5{mr1}, r23, vr5
00077c  ee3562a2  vsll.s.mz vr11{mr1}, vr4, vr6
000780  6ab36b02  vand.s.mz vr6{mr1}, r23, vr6
000784  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
000788  1614a402  vadd.f.mz.rn vr8{mr1}, vr8, vr10
00078c  16936302  vadd.f.mz.rn vr6{mr1}, vr7, vr6
000790  9692b402  vadd.f.mz.rn vr5{mr1}, vr9, vr11
000794  9e132402  vsub.f.mz.rn vr7{mr1}, vr8, vr2
000798  1e102002  vsub.f.mz.rn vr0{mr1}, vr0, vr2
00079c  9e922202  vsub.f.mz.rn vr5{mr1}, vr5, vr2
0007a0  1e132302  vsub.f.mz.rn vr6{mr1}, vr6, vr2
0007a4  8e937102  vmul.f.mz.rn vr7{mr1}, vr3, vr7
0007a8  0e900102  vmul.f.mz.rn vr0{mr1}, vr3, vr0
0007ac  8e925102  vmul.f.mz.rn vr5{mr1}, vr3, vr5
0007b0  0e936102  vmul.f.mz.rn vr6{mr1}, vr3, vr6
0007b4  6e3472c2  vsrl.s.mz vr8{mr1}, vr4, vr7
0007b8  ee3402c2  vsrl.s.mz vr9{mr1}, vr4, vr0
0007bc  6e3552c2  vsrl.s.mz vr10{mr1}, vr4, vr5
0007c0  ee3562c2  vsrl.s.mz vr11{mr1}, vr4, vr6
0007c4  6a348202  vand.s.mz vr8{mr1}, r4, vr8
0007c8  ea349202  vand.s.mz vr9{mr1}, r4, vr9
0007cc  6a35a202  vand.s.mz vr10{mr1}, r4, vr10
0007d0  ea35b202  vand.s.mz vr11{mr1}, r4, vr11
0007d4  96b38302  vadd.s.mz vr7{mr1}, vr7, vr8
0007d8  16309002  vadd.s.mz vr0{mr1}, vr0, vr9
0007dc  96b2a202  vadd.s.mz vr5{mr1}, vr5, vr10
0007e0  1633b302  vadd.s.mz vr6{mr1}, vr6, vr11
0007e4  92337c02  vadd.s.mz vr7{mr1}, r24, vr7
0007e8  12300c02  vadd.s.mz vr0{mr1}, r24, vr0
0007ec  92325c02  vadd.s.mz vr5{mr1}, r24, vr5
0007f0  12336c02  vadd.s.mz vr6{mr1}, r24, vr6
0007f4  ee3372c2  vsrl.s.mz vr7{mr1}, vr4, vr7
0007f8  6ab00b02  vand.s.mz vr0{mr1}, r23, vr0
0007fc  6e3252c2  vsrl.s.mz vr4{mr1}, vr4, vr5
000800  eab26b02  vand.s.mz vr5{mr1}, r23, vr6
000804  6e307022  vor.s.mz vr0{mr1}, vr0, vr7
000808  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
00080c  46000502  vstore.mz vr0{mr1}, 0(r10)
000810  46804502  vstore.mz vr4{mr1}, 0(r11)
000814  bb0c01fe  bneq r2, zero, -224
000818  9f01efde  addli r3, r30, -4240
00081c  00a00000  mfence { lm }
000820  2b0100f0  lui r2, 983040
000824  1f040020  addli r8, zero, 4096
000828  6bd30100  load.d r[7:8], 0(r3)
00082c  17112400  or r2, r8, r2
000830  80510102  load_param_i r3, 2
000834  8b901110  add.s r1, r3, r1
000838  0b23b311  add.ul r[7:8], r[7:8], r[28:29]
00083c  7f315300  s_lm2gm r2, r5, 0(r[7:8])
000840  1f010fde  addli r2, r30, -4352
000844  00a00200  mfence { lm, gm }
000848  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
00084c  bfb790fc  blt.s r1, r9, -1556
000850  9f0e8fdd  addli sp, r30, -4416
000854  e38f2e22  loadli.w r31,  4368(sp)
000858  63cf2e22  loadli.w r30,  4372(sp)
00085c  638e3e22  loadli.w r28,  4376(sp)
000860  e3cd3e22  loadli.w r27,  4380(sp)
000864  638d4e22  loadli.w r26,  4384(sp)
000868  e3cc4e22  loadli.w r25,  4388(sp)
00086c  638c5e22  loadli.w r24,  4392(sp)
000870  e3cb5e22  loadli.w r23,  4396(sp)
000874  638b6e22  loadli.w r22,  4400(sp)
000878  e3ca6e22  loadli.w r21,  4404(sp)
00087c  638a7e22  loadli.w r20,  4408(sp)
000880  e3c97e22  loadli.w r19,  4412(sp)
000884  9f8e8e22  addli sp, sp, 4416
000888  5f800f00  jr r31, 0
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
