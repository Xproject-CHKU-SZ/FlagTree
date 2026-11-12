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
000078  9f496000  addli r19, zero, 52
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
0000dc  9f8e0eff  addli sp, sp, -128
0000e0  1f8f8e00  addli r30, sp, 64
0000e4  805a0002  load_param_i r21, 0
0000e8  e3495f00  loadli.w r19,  44(r30)
0000ec  e3005f00  loadli.w r1,  40(r30)
0000f0  630a6f00  loadli.w r20,  48(r30)
0000f4  8b901920  mul.s r1, r19, r1
0000f8  0b9b4021  mul.s r22, r1, r20
0000fc  4b715b01  ble.s r22, r21, 92
000100  ab10833a  lui r1, 239665
000104  80db0002  load_param_i r23, 1
000108  1f0c1000  addli r24, zero, 8
00010c  9b9cf026  ori r25, r1, 623
000110  db050000  j 44
000114  0b948041  min.s r8, r1, r24
000118  6b528f00  load.d r[5:6], 8(r30)
00011c  6b530f02  load.d r[7:8], 32(r30)
000120  67809e01  storeli.w r25, 0(sp)
000124  0b942050  fmac.s r8, r1, r2
000128  6b510f00  load.d r[3:4], 0(r30)
00012c  d72c0000  jal 356
000130  8b9a7a11  add.s r21, r21, r23
000134  3fa06a01  blt.s r21, r22, 8
000138  5b040000  j 32
00013c  8b904a31  div.s r1, r21, r20
000140  1f215001  addli r2, zero, 170
000144  9f345001  addli r9, zero, 171
000148  8b903031  div.s r1, r1, r19
00014c  3faf80ff  blt.s r1, r24, -56
000150  9f245001  addli r9, zero, 170
000154  5bf8ffff  j -64
000158  9f8e8e00  addli sp, sp, 64
00015c  00a00300  mfence { lm, sm, gm }
000160  00100000  exit
000164  9f8e0ede  addli sp, sp, -4352
000168  67cdee21  storeli.w r30, 4308(sp)
00016c  1f8f0e22  addli r30, sp, 4352
000170  e7cf3e21  storeli.w r19, 4348(sp)
000174  e78f4e21  storeli.w r20, 4344(sp)
000178  67cf5e21  storeli.w r21, 4340(sp)
00017c  678f6e21  storeli.w r22, 4336(sp)
000180  e7ce7e21  storeli.w r23, 4332(sp)
000184  e78e8e21  storeli.w r24, 4328(sp)
000188  67ce9e21  storeli.w r25, 4324(sp)
00018c  678eae21  storeli.w r26, 4320(sp)
000190  e7cdbe21  storeli.w r27, 4316(sp)
000194  e78dce21  storeli.w r28, 4312(sp)
000198  678dfe21  storeli.w r31, 4304(sp)
00019c  9f00efde  addli r1, r30, -4240
0001a0  e7478fde  storeli.w r8, -4228(r30)
0001a4  73b06000  store.d r[7:8], 0(r1)
0001a8  80300002  core_id r1
0001ac  3bf00000  bneq r1, zero, 28
0001b0  1f040020  addli r8, zero, 4096
0001b4  2b0500f0  lui r10, 983040
0001b8  1714a400  or r8, r8, r10
0001bc  2b050000  lui r10, 0
0001c0  1f050500  addli r10, r10, 0
0001c4  7f04a200  l_gm2sm r8, r10, 0(r[5:6])
0001c8  2bf20000  lui r4, 15
0001cc  00200300  mfence { sm, gm }
0001d0  1b12f2ff  ori r4, r4, 4095
0001d4  80210204  csr_set csr3, r4
0001d8  00d00100  sync_group
0001dc  cbb91402  ble.s r9, r1, 1644
0001e0  2bf2ffff  lui r4, 1048575
0001e4  2b0d0000  lui r26, 0
0001e8  9f120000  addli r5, zero, 1
0001ec  1f058fdf  addli r10, r30, -4160
0001f0  9f030020  addli r7, zero, 4096
0001f4  1f070003  addli r14, zero, 384
0001f8  9f070002  addli r15, zero, 256
0001fc  1f080001  addli r16, zero, 128
000200  9f088000  addli r17, zero, 64
000204  1f094000  addli r18, zero, 32
000208  9f090005  addli r19, zero, 640
00020c  1f0b2000  addli r22, zero, 16
000210  ab0bffff  lui r23, 1048560
000214  9f0cc00f  addli r25, zero, 2016
000218  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
00021c  9b1602f8  ori r13, r4, 3968
000220  2b720000  lui r4, 7
000224  1f0d0d00  addli r26, r26, 0
000228  1b1cf2ff  ori r24, r4, 4095
00022c  1f020fde  addli r4, r30, -4352
000230  46103202  vstore_mask16.mz vr3{mr1}, 0(r4)
000234  6343ffde  loadli.w r6,  -4228(r30)
000238  92303002  vadd.s.mz vr1{mr1}, zero, vr3
00023c  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000240  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000244  12303002  vadd.s.mz vr0{mr1}, zero, vr3
000248  1f020000  addli r4, zero, 0
00024c  8b956010  add.s r11, r1, r6
000250  9bb5b500  slli r11, r11, 11
000254  b3950528  sext_int2long r[12:13], r11
000258  97bd5502  sll.d r[28:29], r[12:13], r5
00025c  ab0500f0  lui r11, 983040
000260  0b2ab111  add.ul r[21:22], r[3:4], r[28:29]
000264  9795b300  or r11, r7, r11
000268  ff25aa00  l_gm2lm r11, r10, 0(r[21:22])
00026c  9f850600  addli r11, r13, 0
000270  00a00200  mfence { lm, gm }
000274  0b1a4d10  add.s r20, r26, r4
000278  0b164510  add.s r12, r10, r4
00027c  1f030fdf  addli r6, r30, -4224
000280  9f850501  addli r11, r11, 128
000284  1f020202  addli r4, r4, 256
000288  9f0a8a18  addli r21, r20, 3136
00028c  9f030618  addli r7, r12, 3072
000290  1f040a18  addli r8, r20, 3072
000294  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
000298  ca820a02  vloads.mz vr5{mr1}, 0(r21)
00029c  c2830302  vload.mz vr7{mr1}, 0(r7)
0002a0  9f038618  addli r7, r12, 3136
0002a4  4a030402  vloads.mz vr6{mr1}, 0(r8)
0002a8  1f048a19  addli r8, r20, 3264
0002ac  42840302  vload.mz vr8{mr1}, 0(r7)
0002b0  9f030a19  addli r7, r20, 3200
0002b4  e6c47180  vmerge_l.hf vr9, vr3, vr7
0002b8  e6c371a0  vmerge_h.hf vr7, vr3, vr7
0002bc  66c58180  vmerge_l.hf vr10, vr3, vr8
0002c0  66c481a0  vmerge_h.hf vr8, vr3, vr8
0002c4  e6c55180  vmerge_l.hf vr11, vr3, vr5
0002c8  e6c251a0  vmerge_h.hf vr5, vr3, vr5
0002cc  66c06180  vmerge_l.hf vr0, vr3, vr6
0002d0  66c361a0  vmerge_h.hf vr6, vr3, vr6
0002d4  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
0002d8  96125402  vadd.f.mz.rn vr5{mr1}, vr8, vr5
0002dc  4a040402  vloads.mz vr8{mr1}, 0(r8)
0002e0  16936302  vadd.f.mz.rn vr6{mr1}, vr7, vr6
0002e4  ca830302  vloads.mz vr7{mr1}, 0(r7)
0002e8  9f030619  addli r7, r12, 3200
0002ec  16900402  vadd.f.mz.rn vr0{mr1}, vr9, vr0
0002f0  c2840302  vload.mz vr9{mr1}, 0(r7)
0002f4  9f038619  addli r7, r12, 3264
0002f8  1612a202  vadd.f.mz.rn vr4{mr1}, vr4, vr10
0002fc  a610a502  vmac.f.mz.rn vr1{mr1}, vr10, vr10
000300  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
000304  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000308  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00030c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000310  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000314  e6c29180  vmerge_l.hf vr5, vr3, vr9
000318  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
00031c  46104302  vstore_mask16.mz vr4{mr1}, 0(r6)
000320  42820302  vload.mz vr4{mr1}, 0(r7)
000324  9383e504  setlt.u r7, r11, r14
000328  e6c58180  vmerge_l.hf vr11, vr3, vr8
00032c  66c481a0  vmerge_h.hf vr8, vr3, vr8
000330  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
000334  66c391a0  vmerge_h.hf vr6, vr3, vr9
000338  e6c47180  vmerge_l.hf vr9, vr3, vr7
00033c  e6c371a0  vmerge_h.hf vr7, vr3, vr7
000340  66c54180  vmerge_l.hf vr10, vr3, vr4
000344  66c241a0  vmerge_h.hf vr4, vr3, vr4
000348  96929202  vadd.f.mz.rn vr5{mr1}, vr5, vr9
00034c  16137302  vadd.f.mz.rn vr6{mr1}, vr6, vr7
000350  16148202  vadd.f.mz.rn vr8{mr1}, vr4, vr8
000354  42120302  vload_mask16.mz vr4{mr1}, 0(r6)
000358  9613b502  vadd.f.mz.rn vr7{mr1}, vr10, vr11
00035c  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
000360  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000364  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000368  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
00036c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000370  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
000374  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000378  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
00037c  bbeb03fe  bneq r7, zero, -264
000380  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000384  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
000388  1f060000  addli r12, zero, 0
00038c  9f850600  addli r11, r13, 0
000390  6af107c0  vsrl.p vr2, r15, vr0
000394  eaf117c0  vsrl.p vr3, r15, vr1
000398  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00039c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0003a0  6a7108c0  vsrl.p vr2, r16, vr0
0003a4  ea7118c0  vsrl.p vr3, r16, vr1
0003a8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0003ac  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0003b0  6af108c0  vsrl.p vr2, r17, vr0
0003b4  eaf118c0  vsrl.p vr3, r17, vr1
0003b8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0003bc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0003c0  6a7109c0  vsrl.p vr2, r18, vr0
0003c4  ea7119c0  vsrl.p vr3, r18, vr1
0003c8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0003cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0003d0  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
0003d4  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0003d8  92323002  vadd.s.mz vr5{mr1}, zero, vr3
0003dc  7a120040  vextracti.f r4, 0(vr0)
0003e0  fa930040  vextracti.f r7, 0(vr1)
0003e4  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0003e8  12303002  vadd.s.mz vr0{mr1}, zero, vr3
0003ec  0b620210  add.f.rn r4, r4, zero
0003f0  8bea0310  add.f.rn r21, r7, zero
0003f4  1f030fdf  addli r6, r30, -4224
0003f8  8b13cd10  add.s r7, r26, r12
0003fc  0b1ac510  add.s r20, r10, r12
000400  9f850501  addli r11, r11, 128
000404  1f060602  addli r12, r12, 256
000408  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
00040c  1f84830c  addli r8, r7, 1600
000410  1f83030c  addli r6, r7, 1536
000414  4a030402  vloads.mz vr6{mr1}, 0(r8)
000418  ca030302  vloads.mz vr7{mr1}, 0(r6)
00041c  1f040a0c  addli r8, r20, 1536
000420  1f038a0c  addli r6, r20, 1600
000424  c2040302  vload.mz vr9{mr1}, 0(r6)
000428  42040402  vload.mz vr8{mr1}, 0(r8)
00042c  1f83030d  addli r6, r7, 1664
000430  9f83830d  addli r7, r7, 1728
000434  66c08180  vmerge_l.hf vr0, vr3, vr8
000438  66c59180  vmerge_l.hf vr10, vr3, vr9
00043c  66c481a0  vmerge_h.hf vr8, vr3, vr8
000440  e6c491a0  vmerge_h.hf vr9, vr3, vr9
000444  e6c56180  vmerge_l.hf vr11, vr3, vr6
000448  66c27180  vmerge_l.hf vr4, vr3, vr7
00044c  66c361a0  vmerge_h.hf vr6, vr3, vr6
000450  e6c371a0  vmerge_h.hf vr7, vr3, vr7
000454  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
000458  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
00045c  16926402  vadd.f.mz.rn vr4{mr1}, vr9, vr6
000460  16137402  vadd.f.mz.rn vr6{mr1}, vr8, vr7
000464  ca030302  vloads.mz vr7{mr1}, 0(r6)
000468  1f030a0d  addli r6, r20, 1664
00046c  4a840302  vloads.mz vr8{mr1}, 0(r7)
000470  9f030fdf  addli r7, r30, -4224
000474  c2040302  vload.mz vr9{mr1}, 0(r6)
000478  1f030fdf  addli r6, r30, -4224
00047c  a610a502  vmac.f.mz.rn vr1{mr1}, vr10, vr10
000480  9692a202  vadd.f.mz.rn vr5{mr1}, vr5, vr10
000484  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
000488  1f038a0d  addli r6, r20, 1728
00048c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000490  a6104202  vmac.f.mz.rn vr1{mr1}, vr4, vr4
000494  16924202  vadd.f.mz.rn vr4{mr1}, vr5, vr4
000498  c2020302  vload.mz vr5{mr1}, 0(r6)
00049c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0004a0  1f030fdf  addli r6, r30, -4224
0004a4  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
0004a8  46904302  vstore_mask16.mz vr4{mr1}, 0(r7)
0004ac  66c57180  vmerge_l.hf vr10, vr3, vr7
0004b0  e6c371a0  vmerge_h.hf vr7, vr3, vr7
0004b4  16126002  vadd.f.mz.rn vr4{mr1}, vr0, vr6
0004b8  e6c55180  vmerge_l.hf vr11, vr3, vr5
0004bc  66c08180  vmerge_l.hf vr0, vr3, vr8
0004c0  e6c251a0  vmerge_h.hf vr5, vr3, vr5
0004c4  66c481a0  vmerge_h.hf vr8, vr3, vr8
0004c8  66c39180  vmerge_l.hf vr6, vr3, vr9
0004cc  e6c491a0  vmerge_h.hf vr9, vr3, vr9
0004d0  16948202  vadd.f.mz.rn vr8{mr1}, vr5, vr8
0004d4  c2120302  vload_mask16.mz vr5{mr1}, 0(r6)
0004d8  1613a302  vadd.f.mz.rn vr6{mr1}, vr6, vr10
0004dc  16900502  vadd.f.mz.rn vr0{mr1}, vr11, vr0
0004e0  96937402  vadd.f.mz.rn vr7{mr1}, vr9, vr7
0004e4  13833505  setlt.u r6, r11, r19
0004e8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0004ec  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0004f0  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
0004f4  96920202  vadd.f.mz.rn vr5{mr1}, vr5, vr0
0004f8  16107202  vadd.f.mz.rn vr0{mr1}, vr4, vr7
0004fc  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000500  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000504  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
000508  bb3b03fe  bneq r6, zero, -276
00050c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000510  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
000514  1f060000  addli r12, zero, 0
000518  6af107c0  vsrl.p vr2, r15, vr0
00051c  eaf117c0  vsrl.p vr3, r15, vr1
000520  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000524  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000528  6a7108c0  vsrl.p vr2, r16, vr0
00052c  ea7118c0  vsrl.p vr3, r16, vr1
000530  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000534  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000538  6af108c0  vsrl.p vr2, r17, vr0
00053c  eaf118c0  vsrl.p vr3, r17, vr1
000540  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000544  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000548  6a7109c0  vsrl.p vr2, r18, vr0
00054c  ea7119c0  vsrl.p vr3, r18, vr1
000550  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000554  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000558  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
00055c  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000560  92323002  vadd.s.mz vr5{mr1}, zero, vr3
000564  7a130040  vextracti.f r6, 0(vr0)
000568  fa930040  vextracti.f r7, 0(vr1)
00056c  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000570  12303002  vadd.s.mz vr0{mr1}, zero, vr3
000574  8b656210  add.f.rn r11, r4, r6
000578  0be27a10  add.f.rn r4, r21, r7
00057c  9f8a0600  addli r21, r13, 0
000580  1f030fdf  addli r6, r30, -4224
000584  0b1ac510  add.s r20, r10, r12
000588  9f8a0a01  addli r21, r21, 128
00058c  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
000590  0b13a611  add.s r6, r12, r26
000594  42040a02  vload.mz vr8{mr1}, 0(r20)
000598  1f060602  addli r12, r12, 256
00059c  9f038300  addli r7, r6, 64
0005a0  4a030302  vloads.mz vr6{mr1}, 0(r6)
0005a4  1f040301  addli r8, r6, 128
0005a8  1f038301  addli r6, r6, 192
0005ac  ca830302  vloads.mz vr7{mr1}, 0(r7)
0005b0  9f038a00  addli r7, r20, 64
0005b4  c2840302  vload.mz vr9{mr1}, 0(r7)
0005b8  66c08180  vmerge_l.hf vr0, vr3, vr8
0005bc  66c481a0  vmerge_h.hf vr8, vr3, vr8
0005c0  9f030a01  addli r7, r20, 128
0005c4  66c59180  vmerge_l.hf vr10, vr3, vr9
0005c8  e6c491a0  vmerge_h.hf vr9, vr3, vr9
0005cc  e6c56180  vmerge_l.hf vr11, vr3, vr6
0005d0  66c361a0  vmerge_h.hf vr6, vr3, vr6
0005d4  66c27180  vmerge_l.hf vr4, vr3, vr7
0005d8  e6c371a0  vmerge_h.hf vr7, vr3, vr7
0005dc  1610b002  vadd.f.mz.rn vr0{mr1}, vr0, vr11
0005e0  ca050402  vloads.mz vr11{mr1}, 0(r8)
0005e4  16136402  vadd.f.mz.rn vr6{mr1}, vr8, vr6
0005e8  4a040302  vloads.mz vr8{mr1}, 0(r6)
0005ec  1f030fdf  addli r6, r30, -4224
0005f0  16124502  vadd.f.mz.rn vr4{mr1}, vr10, vr4
0005f4  96937402  vadd.f.mz.rn vr7{mr1}, vr9, vr7
0005f8  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
0005fc  1f038a01  addli r6, r20, 192
000600  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000604  a6104202  vmac.f.mz.rn vr1{mr1}, vr4, vr4
000608  16924202  vadd.f.mz.rn vr4{mr1}, vr5, vr4
00060c  c2820302  vload.mz vr5{mr1}, 0(r7)
000610  9f030fdf  addli r7, r30, -4224
000614  16900402  vadd.f.mz.rn vr0{mr1}, vr9, vr0
000618  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00061c  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
000620  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000624  c2030302  vload.mz vr7{mr1}, 0(r6)
000628  1f030fdf  addli r6, r30, -4224
00062c  e6c4b180  vmerge_l.hf vr9, vr3, vr11
000630  66c5b1a0  vmerge_h.hf vr10, vr3, vr11
000634  46904302  vstore_mask16.mz vr4{mr1}, 0(r7)
000638  16126002  vadd.f.mz.rn vr4{mr1}, vr0, vr6
00063c  66c35180  vmerge_l.hf vr6, vr3, vr5
000640  66c08180  vmerge_l.hf vr0, vr3, vr8
000644  e6c251a0  vmerge_h.hf vr5, vr3, vr5
000648  66c481a0  vmerge_h.hf vr8, vr3, vr8
00064c  e6c57180  vmerge_l.hf vr11, vr3, vr7
000650  e6c371a0  vmerge_h.hf vr7, vr3, vr7
000654  16139302  vadd.f.mz.rn vr6{mr1}, vr6, vr9
000658  9692a202  vadd.f.mz.rn vr5{mr1}, vr5, vr10
00065c  16900502  vadd.f.mz.rn vr0{mr1}, vr11, vr0
000660  96938302  vadd.f.mz.rn vr7{mr1}, vr7, vr8
000664  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000668  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
00066c  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
000670  13833a05  setlt.u r6, r21, r19
000674  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
000678  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00067c  16130302  vadd.f.mz.rn vr6{mr1}, vr6, vr0
000680  16105202  vadd.f.mz.rn vr0{mr1}, vr4, vr5
000684  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000688  96127302  vadd.f.mz.rn vr5{mr1}, vr6, vr7
00068c  bb5b03fe  bneq r6, zero, -268
000690  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
000694  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000698  eaf107c0  vsrl.p vr3, r15, vr0
00069c  6af117c0  vsrl.p vr2, r15, vr1
0006a0  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0006a4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0006a8  ea7108c0  vsrl.p vr3, r16, vr0
0006ac  6a7118c0  vsrl.p vr2, r16, vr1
0006b0  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0006b4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0006b8  eaf108c0  vsrl.p vr3, r17, vr0
0006bc  6af118c0  vsrl.p vr2, r17, vr1
0006c0  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0006c4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0006c8  ea7109c0  vsrl.p vr3, r18, vr0
0006cc  6a7119c0  vsrl.p vr2, r18, vr1
0006d0  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0006d4  7a130040  vextracti.f r6, 0(vr0)
0006d8  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
0006dc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0006e0  0be36510  add.f.rn r6, r11, r6
0006e4  9f050000  addli r11, zero, 0
0006e8  fa130040  vextracti.f r7, 0(vr0)
0006ec  0b627210  add.f.rn r4, r4, r7
0006f0  ab03003a  lui r7, 237568
0006f4  0b637320  mul.f.rn r6, r6, r7
0006f8  0b627220  mul.f.rn r4, r4, r7
0006fc  8b636320  mul.f.rn r7, r6, r6
000700  6a111322  vor.f.mz vr2{mr1}, r6, vr1
000704  0b627218  sub.f.rn r4, r4, r7
000708  e3030f00  loadli.w r7,  0(r30)
00070c  0b627210  add.f.rn r4, r4, r7
000710  ab03803f  lui r7, 260096
000714  0f020208  sqrt.f.rn r4, r4
000718  0f824318  div.f.rn r4, r7, r4
00071c  ea111222  vor.f.mz vr3{mr1}, r4, vr1
000720  2bf2ffff  lui r4, 1048575
000724  1b1202fe  ori r4, r4, 4064
000728  0b93a511  add.s r6, r11, r26
00072c  0b16b510  add.s r12, r10, r11
000730  6a221b22  vor.u.mz vr4{mr1}, r22, vr1
000734  1f028200  addli r4, r4, 64
000738  9f850501  addli r11, r11, 128
00073c  ca020302  vloads.mz vr5{mr1}, 0(r6)
000740  1f038300  addli r6, r6, 64
000744  1f0a8600  addli r20, r12, 64
000748  42000602  vload.mz vr0{mr1}, 0(r12)
00074c  4a030302  vloads.mz vr6{mr1}, 0(r6)
000750  c2030a02  vload.mz vr7{mr1}, 0(r20)
000754  13039205  setlt.u r6, r4, r25
000758  6e3402a2  vsll.s.mz vr8{mr1}, vr4, vr0
00075c  6ab00b02  vand.s.mz vr0{mr1}, r23, vr0
000760  ee3472a2  vsll.s.mz vr9{mr1}, vr4, vr7
000764  eab37b02  vand.s.mz vr7{mr1}, r23, vr7
000768  6e3552a2  vsll.s.mz vr10{mr1}, vr4, vr5
00076c  eab25b02  vand.s.mz vr5{mr1}, r23, vr5
000770  ee3562a2  vsll.s.mz vr11{mr1}, vr4, vr6
000774  6ab36b02  vand.s.mz vr6{mr1}, r23, vr6
000778  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
00077c  1614a402  vadd.f.mz.rn vr8{mr1}, vr8, vr10
000780  16936302  vadd.f.mz.rn vr6{mr1}, vr7, vr6
000784  9692b402  vadd.f.mz.rn vr5{mr1}, vr9, vr11
000788  9e132402  vsub.f.mz.rn vr7{mr1}, vr8, vr2
00078c  1e102002  vsub.f.mz.rn vr0{mr1}, vr0, vr2
000790  9e922202  vsub.f.mz.rn vr5{mr1}, vr5, vr2
000794  1e132302  vsub.f.mz.rn vr6{mr1}, vr6, vr2
000798  8e937102  vmul.f.mz.rn vr7{mr1}, vr3, vr7
00079c  0e900102  vmul.f.mz.rn vr0{mr1}, vr3, vr0
0007a0  8e925102  vmul.f.mz.rn vr5{mr1}, vr3, vr5
0007a4  0e936102  vmul.f.mz.rn vr6{mr1}, vr3, vr6
0007a8  6e3472c2  vsrl.s.mz vr8{mr1}, vr4, vr7
0007ac  ee3402c2  vsrl.s.mz vr9{mr1}, vr4, vr0
0007b0  6e3552c2  vsrl.s.mz vr10{mr1}, vr4, vr5
0007b4  ee3562c2  vsrl.s.mz vr11{mr1}, vr4, vr6
0007b8  6ab48202  vand.s.mz vr8{mr1}, r5, vr8
0007bc  eab49202  vand.s.mz vr9{mr1}, r5, vr9
0007c0  6ab5a202  vand.s.mz vr10{mr1}, r5, vr10
0007c4  eab5b202  vand.s.mz vr11{mr1}, r5, vr11
0007c8  96b38302  vadd.s.mz vr7{mr1}, vr7, vr8
0007cc  16309002  vadd.s.mz vr0{mr1}, vr0, vr9
0007d0  96b2a202  vadd.s.mz vr5{mr1}, vr5, vr10
0007d4  1633b302  vadd.s.mz vr6{mr1}, vr6, vr11
0007d8  92337c02  vadd.s.mz vr7{mr1}, r24, vr7
0007dc  12300c02  vadd.s.mz vr0{mr1}, r24, vr0
0007e0  92325c02  vadd.s.mz vr5{mr1}, r24, vr5
0007e4  12336c02  vadd.s.mz vr6{mr1}, r24, vr6
0007e8  ee3372c2  vsrl.s.mz vr7{mr1}, vr4, vr7
0007ec  6ab00b02  vand.s.mz vr0{mr1}, r23, vr0
0007f0  6e3252c2  vsrl.s.mz vr4{mr1}, vr4, vr5
0007f4  eab26b02  vand.s.mz vr5{mr1}, r23, vr6
0007f8  6e307022  vor.s.mz vr0{mr1}, vr0, vr7
0007fc  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
000800  46000602  vstore.mz vr0{mr1}, 0(r12)
000804  46004a02  vstore.mz vr4{mr1}, 0(r20)
000808  bb0c03fe  bneq r6, zero, -224
00080c  1f04efde  addli r8, r30, -4240
000810  00a00000  mfence { lm }
000814  2b0200f0  lui r4, 983040
000818  6b530400  load.d r[7:8], 0(r8)
00081c  1f040020  addli r8, zero, 4096
000820  17124400  or r4, r8, r4
000824  00540102  load_param_i r8, 2
000828  0b23b311  add.ul r[7:8], r[7:8], r[28:29]
00082c  8b101410  add.s r1, r8, r1
000830  7f32a300  s_lm2gm r4, r10, 0(r[7:8])
000834  1f020fde  addli r4, r30, -4352
000838  9f030020  addli r7, zero, 4096
00083c  00a00200  mfence { lm, gm }
000840  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
000844  bfc790fc  blt.s r1, r9, -1552
000848  9f0e0fde  addli sp, r30, -4352
00084c  e38fae21  loadli.w r31,  4304(sp)
000850  63cfae21  loadli.w r30,  4308(sp)
000854  638ebe21  loadli.w r28,  4312(sp)
000858  e3cdbe21  loadli.w r27,  4316(sp)
00085c  638dce21  loadli.w r26,  4320(sp)
000860  e3ccce21  loadli.w r25,  4324(sp)
000864  638cde21  loadli.w r24,  4328(sp)
000868  e3cbde21  loadli.w r23,  4332(sp)
00086c  638bee21  loadli.w r22,  4336(sp)
000870  e3caee21  loadli.w r21,  4340(sp)
000874  638afe21  loadli.w r20,  4344(sp)
000878  e3c9fe21  loadli.w r19,  4348(sp)
00087c  9f8e0e22  addli sp, sp, 4352
000880  5f800f00  jr r31, 0
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
