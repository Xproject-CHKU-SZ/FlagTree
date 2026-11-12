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
000154  9f8e0edc  addli sp, sp, -4608
000158  67cdee23  storeli.w r30, 4564(sp)
00015c  1f8f0e24  addli r30, sp, 4608
000160  e7cf3e23  storeli.w r19, 4604(sp)
000164  e78f4e23  storeli.w r20, 4600(sp)
000168  67cf5e23  storeli.w r21, 4596(sp)
00016c  678f6e23  storeli.w r22, 4592(sp)
000170  e7ce7e23  storeli.w r23, 4588(sp)
000174  e78e8e23  storeli.w r24, 4584(sp)
000178  67ce9e23  storeli.w r25, 4580(sp)
00017c  678eae23  storeli.w r26, 4576(sp)
000180  e7cdbe23  storeli.w r27, 4572(sp)
000184  e78dce23  storeli.w r28, 4568(sp)
000188  678dfe23  storeli.w r31, 4560(sp)
00018c  9f006fdd  addli r1, r30, -4432
000190  e74b8fdc  storeli.w r8, -4420(r30)
000194  73b06000  store.d r[7:8], 0(r1)
000198  80300002  core_id r1
00019c  1f035fdd  addli r6, r30, -4440
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
0001d4  4bbe1402  ble.s r9, r1, 1932
0001d8  2bf1ffff  lui r2, 1048575
0001dc  2b13833a  lui r6, 239665
0001e0  2b0d0000  lui r26, 0
0001e4  ab730000  lui r7, 7
0001e8  1f120000  addli r4, zero, 1
0001ec  9f028fdf  addli r5, r30, -4160
0001f0  9f090020  addli r19, zero, 4096
0001f4  9f068003  addli r13, zero, 448
0001f8  1f070002  addli r14, zero, 256
0001fc  9f070001  addli r15, zero, 128
000200  1f088000  addli r16, zero, 64
000204  9f084000  addli r17, zero, 32
000208  1f098005  addli r18, zero, 704
00020c  1f0b2000  addli r22, zero, 16
000210  ab0bffff  lui r23, 1048560
000214  9f0cc00f  addli r25, zero, 2016
000218  6e224262  vxor.u.mz vr4{mr1}, vr4, vr4
00021c  1b1401fc  ori r8, r2, 4032
000220  1b11f326  ori r2, r6, 623
000224  1b9cf3ff  ori r24, r7, 4095
000228  1f0d0d00  addli r26, r26, 0
00022c  e7432fdc  storeli.w r2, -4548(r30)
000230  1f018fdc  addli r2, r30, -4544
000234  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
000238  63417fdd  loadli.w r2,  -4420(r30)
00023c  1f035fdd  addli r6, r30, -4440
000240  92314002  vadd.s.mz vr3{mr1}, zero, vr4
000244  12304002  vadd.s.mz vr0{mr1}, zero, vr4
000248  92304002  vadd.s.mz vr1{mr1}, zero, vr4
00024c  12314002  vadd.s.mz vr2{mr1}, zero, vr4
000250  1f050000  addli r10, zero, 0
000254  8b932010  add.s r7, r1, r2
000258  6b510300  load.d r[3:4], 0(r6)
00025c  9bb3b300  slli r7, r7, 11
000260  b3950328  sext_int2long r[12:13], r7
000264  ab0300f0  lui r7, 983040
000268  97bd4502  sll.d r[28:29], r[12:13], r4
00026c  97937900  or r7, r19, r7
000270  8b25b111  add.ul r[12:13], r[3:4], r[28:29]
000274  ffa35500  l_gm2lm r7, r5, 0(r[12:13])
000278  9f050400  addli r11, r8, 0
00027c  00a00200  mfence { lm, gm }
000280  1f010fdf  addli r2, r30, -4224
000284  8b93a210  add.s r7, r5, r10
000288  9f850501  addli r11, r11, 128
00028c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000290  0b11ad10  add.s r2, r26, r10
000294  1f830318  addli r6, r7, 3072
000298  1f050502  addli r10, r10, 256
00029c  9f010118  addli r3, r2, 3072
0002a0  c2030302  vload.mz vr7{mr1}, 0(r6)
0002a4  1f030119  addli r6, r2, 3200
0002a8  ca820102  vloads.mz vr5{mr1}, 0(r3)
0002ac  9f018118  addli r3, r2, 3136
0002b0  4a040302  vloads.mz vr8{mr1}, 0(r6)
0002b4  1f030fdf  addli r6, r30, -4224
0002b8  1f018119  addli r2, r2, 3264
0002bc  4a830102  vloads.mz vr6{mr1}, 0(r3)
0002c0  9f818318  addli r3, r7, 3136
0002c4  42800102  vload.mz vr0{mr1}, 0(r3)
0002c8  e6447280  vmerge_l.hf vr9, vr4, vr7
0002cc  e64372a0  vmerge_h.hf vr7, vr4, vr7
0002d0  9f810319  addli r3, r7, 3200
0002d4  e6450280  vmerge_l.hf vr11, vr4, vr0
0002d8  664002a0  vmerge_h.hf vr0, vr4, vr0
0002dc  66455280  vmerge_l.hf vr10, vr4, vr5
0002e0  e64252a0  vmerge_h.hf vr5, vr4, vr5
0002e4  9694a402  vadd.f.mz.rn vr9{mr1}, vr9, vr10
0002e8  66456280  vmerge_l.hf vr10, vr4, vr6
0002ec  664362a0  vmerge_h.hf vr6, vr4, vr6
0002f0  96925302  vadd.f.mz.rn vr5{mr1}, vr7, vr5
0002f4  ca030102  vloads.mz vr7{mr1}, 0(r2)
0002f8  1f818319  addli r2, r7, 3264
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
000378  1381d504  setlt.u r2, r11, r13
00037c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000380  96915102  vadd.f.mz.rn vr3{mr1}, vr3, vr5
000384  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000388  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
00038c  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
000390  bb4b01fe  bneq r2, zero, -272
000394  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000398  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
00039c  9f050000  addli r11, zero, 0
0003a0  9f090400  addli r19, r8, 0
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
0003f0  7a150140  vextracti.f r10, 0(vr2)
0003f4  fa9a0040  vextracti.f r21, 0(vr1)
0003f8  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0003fc  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000400  0b16bd10  add.s r12, r26, r11
000404  1f010fdf  addli r2, r30, -4224
000408  9f890901  addli r19, r19, 128
00040c  9f03060c  addli r7, r12, 1536
000410  1f0a860c  addli r20, r12, 1600
000414  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
000418  92320002  vadd.s.mz vr5{mr1}, zero, vr0
00041c  4a830302  vloads.mz vr6{mr1}, 0(r7)
000420  8b93b210  add.s r7, r5, r11
000424  ca030a02  vloads.mz vr7{mr1}, 0(r20)
000428  9f850502  addli r11, r11, 256
00042c  1f83030c  addli r6, r7, 1536
000430  9f81830c  addli r3, r7, 1600
000434  42040302  vload.mz vr8{mr1}, 0(r6)
000438  42850102  vload.mz vr10{mr1}, 0(r3)
00043c  1f03060d  addli r6, r12, 1664
000440  9f81030d  addli r3, r7, 1664
000444  ca040302  vloads.mz vr9{mr1}, 0(r6)
000448  1f03860d  addli r6, r12, 1728
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
00049c  9f81830d  addli r3, r7, 1728
0004a0  a6104202  vmac.f.mz.rn vr1{mr1}, vr4, vr4
0004a4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0004a8  96924202  vadd.f.mz.rn vr5{mr1}, vr5, vr4
0004ac  42820102  vload.mz vr4{mr1}, 0(r3)
0004b0  93812905  setlt.u r3, r19, r18
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
000518  8b650510  add.f.rn r11, r10, zero
00051c  9f090000  addli r19, zero, 0
000520  1f060400  addli r12, r8, 0
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
000570  7a1a0040  vextracti.f r20, 0(vr0)
000574  7a950040  vextracti.f r10, 0(vr1)
000578  12303002  vadd.s.mz vr0{mr1}, zero, vr3
00057c  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000580  8b91a911  add.s r3, r19, r26
000584  8b933211  add.s r7, r5, r19
000588  1f010fdf  addli r2, r30, -4224
00058c  1f060601  addli r12, r12, 128
000590  9f890902  addli r19, r19, 256
000594  4a830102  vloads.mz vr6{mr1}, 0(r3)
000598  1f838100  addli r6, r3, 64
00059c  42840302  vload.mz vr8{mr1}, 0(r7)
0005a0  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
0005a4  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0005a8  1f810101  addli r2, r3, 128
0005ac  9f818101  addli r3, r3, 192
0005b0  ca030302  vloads.mz vr7{mr1}, 0(r6)
0005b4  1f838300  addli r6, r7, 64
0005b8  ca040102  vloads.mz vr9{mr1}, 0(r2)
0005bc  1f810301  addli r2, r7, 128
0005c0  42000302  vload.mz vr0{mr1}, 0(r6)
0005c4  1f030fdf  addli r6, r30, -4224
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
0005f4  c2120302  vload_mask16.mz vr5{mr1}, 0(r6)
0005f8  1612b202  vadd.f.mz.rn vr4{mr1}, vr4, vr11
0005fc  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
000600  2611a502  vmac.f.mz.rn vr2{mr1}, vr10, vr10
000604  4a850102  vloads.mz vr10{mr1}, 0(r3)
000608  e6c59180  vmerge_l.hf vr11, vr3, vr9
00060c  e6c491a0  vmerge_h.hf vr9, vr3, vr9
000610  96136402  vadd.f.mz.rn vr7{mr1}, vr8, vr6
000614  42040102  vload.mz vr8{mr1}, 0(r2)
000618  1f818301  addli r2, r7, 192
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
000674  13012605  setlt.u r2, r12, r18
000678  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00067c  a6104202  vmac.f.mz.rn vr1{mr1}, vr4, vr4
000680  96920202  vadd.f.mz.rn vr5{mr1}, vr5, vr0
000684  16906302  vadd.f.mz.rn vr0{mr1}, vr7, vr6
000688  96924202  vadd.f.mz.rn vr5{mr1}, vr5, vr4
00068c  bb5b01fe  bneq r2, zero, -268
000690  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
000694  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000698  0be10a10  add.f.rn r2, r21, zero
00069c  8be14511  add.f.rn r3, r11, r20
0006a0  9f050000  addli r11, zero, 0
0006a4  ea7107c0  vsrl.p vr3, r14, vr0
0006a8  6a7117c0  vsrl.p vr2, r14, vr1
0006ac  0b61a110  add.f.rn r2, r2, r10
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
0006ec  8be16110  add.f.rn r3, r3, r6
0006f0  7a130040  vextracti.f r6, 0(vr0)
0006f4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0006f8  0b616110  add.f.rn r2, r2, r6
0006fc  2b03003a  lui r6, 237568
000700  8be16120  mul.f.rn r3, r3, r6
000704  0b616120  mul.f.rn r2, r2, r6
000708  0be33120  mul.f.rn r6, r3, r3
00070c  ea900122  vor.f.mz vr1{mr1}, r3, vr0
000710  9f010fde  addli r3, r30, -4352
000714  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
000718  9f018fde  addli r3, r30, -4288
00071c  0b616118  sub.f.rn r2, r2, r6
000720  63437fdc  loadli.w r6,  -4548(r30)
000724  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
000728  0b616110  add.f.rn r2, r2, r6
00072c  2b03803f  lui r6, 260096
000730  0f010108  sqrt.f.rn r2, r2
000734  0f012318  div.f.rn r2, r6, r2
000738  6a100122  vor.f.mz vr0{mr1}, r2, vr0
00073c  1f018fdd  addli r2, r30, -4416
000740  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000744  2bf1ffff  lui r2, 1048575
000748  9b1a01fe  ori r21, r2, 4064
00074c  8b93a511  add.s r7, r11, r26
000750  0b95b210  add.s r10, r5, r11
000754  9f010fde  addli r3, r30, -4352
000758  9f8a0a01  addli r21, r21, 128
00075c  9f850502  addli r11, r11, 256
000760  1f818300  addli r2, r7, 64
000764  ca820302  vloads.mz vr5{mr1}, 0(r7)
000768  9f098500  addli r19, r10, 64
00076c  c2030502  vload.mz vr7{mr1}, 0(r10)
000770  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000774  9f018fdd  addli r3, r30, -4416
000778  1f068501  addli r12, r10, 192
00077c  4a030102  vloads.mz vr6{mr1}, 0(r2)
000780  1f018fde  addli r2, r30, -4288
000784  42840902  vload.mz vr8{mr1}, 0(r19)
000788  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
00078c  1f810301  addli r2, r7, 128
000790  6a220b22  vor.u.mz vr4{mr1}, r22, vr0
000794  6e3072a2  vsll.s.mz vr0{mr1}, vr4, vr7
000798  6e3552a2  vsll.s.mz vr10{mr1}, vr4, vr5
00079c  ee3482a2  vsll.s.mz vr9{mr1}, vr4, vr8
0007a0  eab37b02  vand.s.mz vr7{mr1}, r23, vr7
0007a4  eab25b02  vand.s.mz vr5{mr1}, r23, vr5
0007a8  6ab48b02  vand.s.mz vr8{mr1}, r23, vr8
0007ac  ee3562a2  vsll.s.mz vr11{mr1}, vr4, vr6
0007b0  6ab36b02  vand.s.mz vr6{mr1}, r23, vr6
0007b4  1610a002  vadd.f.mz.rn vr0{mr1}, vr0, vr10
0007b8  96925302  vadd.f.mz.rn vr5{mr1}, vr7, vr5
0007bc  9693b402  vadd.f.mz.rn vr7{mr1}, vr9, vr11
0007c0  16136402  vadd.f.mz.rn vr6{mr1}, vr8, vr6
0007c4  9e103002  vsub.f.mz.rn vr1{mr1}, vr0, vr3
0007c8  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0007cc  9e923202  vsub.f.mz.rn vr5{mr1}, vr5, vr3
0007d0  9f010fdf  addli r3, r30, -4224
0007d4  9e933302  vsub.f.mz.rn vr7{mr1}, vr7, vr3
0007d8  1e133302  vsub.f.mz.rn vr6{mr1}, vr6, vr3
0007dc  8e101002  vmul.f.mz.rn vr1{mr1}, vr0, vr1
0007e0  8e137002  vmul.f.mz.rn vr7{mr1}, vr0, vr7
0007e4  8e125002  vmul.f.mz.rn vr5{mr1}, vr0, vr5
0007e8  0e136002  vmul.f.mz.rn vr6{mr1}, vr0, vr6
0007ec  6e3412c2  vsrl.s.mz vr8{mr1}, vr4, vr1
0007f0  6e3572c2  vsrl.s.mz vr10{mr1}, vr4, vr7
0007f4  ee3452c2  vsrl.s.mz vr9{mr1}, vr4, vr5
0007f8  ee3562c2  vsrl.s.mz vr11{mr1}, vr4, vr6
0007fc  6a348202  vand.s.mz vr8{mr1}, r4, vr8
000800  6a35a202  vand.s.mz vr10{mr1}, r4, vr10
000804  ea349202  vand.s.mz vr9{mr1}, r4, vr9
000808  ea35b202  vand.s.mz vr11{mr1}, r4, vr11
00080c  96b08002  vadd.s.mz vr1{mr1}, vr1, vr8
000810  96b3a302  vadd.s.mz vr7{mr1}, vr7, vr10
000814  96b29202  vadd.s.mz vr5{mr1}, vr5, vr9
000818  1633b302  vadd.s.mz vr6{mr1}, vr6, vr11
00081c  c2050602  vload.mz vr11{mr1}, 0(r12)
000820  92347c02  vadd.s.mz vr9{mr1}, r24, vr7
000824  ca030102  vloads.mz vr7{mr1}, 0(r2)
000828  92301c02  vadd.s.mz vr1{mr1}, r24, vr1
00082c  1f818301  addli r2, r7, 192
000830  12355c02  vadd.s.mz vr10{mr1}, r24, vr5
000834  12346c02  vadd.s.mz vr8{mr1}, r24, vr6
000838  9f030501  addli r7, r10, 128
00083c  ee3212c2  vsrl.s.mz vr5{mr1}, vr4, vr1
000840  ca000102  vloads.mz vr1{mr1}, 0(r2)
000844  6ab3ab02  vand.s.mz vr6{mr1}, r23, vr10
000848  42850302  vload.mz vr10{mr1}, 0(r7)
00084c  ee3492c2  vsrl.s.mz vr9{mr1}, vr4, vr9
000850  6ab48b02  vand.s.mz vr8{mr1}, r23, vr8
000854  1f010fdf  addli r2, r30, -4224
000858  6e315322  vor.s.mz vr2{mr1}, vr6, vr5
00085c  6e339422  vor.s.mz vr6{mr1}, vr8, vr9
000860  ee32b2a2  vsll.s.mz vr5{mr1}, vr4, vr11
000864  6e34a2a2  vsll.s.mz vr8{mr1}, vr4, vr10
000868  eab4ab02  vand.s.mz vr9{mr1}, r23, vr10
00086c  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
000870  13819a05  setlt.u r2, r21, r25
000874  46806902  vstore.mz vr6{mr1}, 0(r19)
000878  6e3572a2  vsll.s.mz vr10{mr1}, vr4, vr7
00087c  eab37b02  vand.s.mz vr7{mr1}, r23, vr7
000880  1614a402  vadd.f.mz.rn vr8{mr1}, vr8, vr10
000884  6ab5bb02  vand.s.mz vr10{mr1}, r23, vr11
000888  6e3112a2  vsll.s.mz vr2{mr1}, vr4, vr1
00088c  eab51b02  vand.s.mz vr11{mr1}, r23, vr1
000890  96902202  vadd.f.mz.rn vr1{mr1}, vr5, vr2
000894  16917402  vadd.f.mz.rn vr2{mr1}, vr9, vr7
000898  9e133402  vsub.f.mz.rn vr7{mr1}, vr8, vr3
00089c  9612b502  vadd.f.mz.rn vr5{mr1}, vr10, vr11
0008a0  9e903002  vsub.f.mz.rn vr1{mr1}, vr1, vr3
0008a4  1e113102  vsub.f.mz.rn vr2{mr1}, vr2, vr3
0008a8  8e137002  vmul.f.mz.rn vr7{mr1}, vr0, vr7
0008ac  9e913202  vsub.f.mz.rn vr3{mr1}, vr5, vr3
0008b0  6e3472c2  vsrl.s.mz vr8{mr1}, vr4, vr7
0008b4  8e101002  vmul.f.mz.rn vr1{mr1}, vr0, vr1
0008b8  0e112002  vmul.f.mz.rn vr2{mr1}, vr0, vr2
0008bc  0e103002  vmul.f.mz.rn vr0{mr1}, vr0, vr3
0008c0  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
0008c4  ee3412c2  vsrl.s.mz vr9{mr1}, vr4, vr1
0008c8  6e3522c2  vsrl.s.mz vr10{mr1}, vr4, vr2
0008cc  6a348202  vand.s.mz vr8{mr1}, r4, vr8
0008d0  ee3502c2  vsrl.s.mz vr11{mr1}, vr4, vr0
0008d4  46003502  vstore.mz vr3{mr1}, 0(r10)
0008d8  96b38302  vadd.s.mz vr7{mr1}, vr7, vr8
0008dc  ea349202  vand.s.mz vr9{mr1}, r4, vr9
0008e0  6a35a202  vand.s.mz vr10{mr1}, r4, vr10
0008e4  6a34b202  vand.s.mz vr8{mr1}, r4, vr11
0008e8  96b09002  vadd.s.mz vr1{mr1}, vr1, vr9
0008ec  1631a102  vadd.s.mz vr2{mr1}, vr2, vr10
0008f0  16308002  vadd.s.mz vr0{mr1}, vr0, vr8
0008f4  92337c02  vadd.s.mz vr7{mr1}, r24, vr7
0008f8  92301c02  vadd.s.mz vr1{mr1}, r24, vr1
0008fc  12312c02  vadd.s.mz vr2{mr1}, r24, vr2
000900  12300c02  vadd.s.mz vr0{mr1}, r24, vr0
000904  ee3372c2  vsrl.s.mz vr7{mr1}, vr4, vr7
000908  6ab12b02  vand.s.mz vr2{mr1}, r23, vr2
00090c  ee3012c2  vsrl.s.mz vr1{mr1}, vr4, vr1
000910  6ab00b02  vand.s.mz vr0{mr1}, r23, vr0
000914  6e317122  vor.s.mz vr2{mr1}, vr2, vr7
000918  6e301022  vor.s.mz vr0{mr1}, vr0, vr1
00091c  46802302  vstore.mz vr2{mr1}, 0(r7)
000920  46000602  vstore.mz vr0{mr1}, 0(r12)
000924  bb2801fe  bneq r2, zero, -472
000928  9f016fdd  addli r3, r30, -4432
00092c  00a00000  mfence { lm }
000930  2b0100f0  lui r2, 983040
000934  9f090020  addli r19, zero, 4096
000938  6bd30100  load.d r[7:8], 0(r3)
00093c  17912900  or r2, r19, r2
000940  80510102  load_param_i r3, 2
000944  8b901110  add.s r1, r3, r1
000948  0b23b311  add.ul r[7:8], r[7:8], r[28:29]
00094c  7f315300  s_lm2gm r2, r5, 0(r[7:8])
000950  1f018fdc  addli r2, r30, -4544
000954  00a00200  mfence { lm, gm }
000958  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
00095c  3ff390fc  blt.s r1, r9, -1828
000960  9f0e0fdc  addli sp, r30, -4608
000964  e38fae23  loadli.w r31,  4560(sp)
000968  63cfae23  loadli.w r30,  4564(sp)
00096c  638ebe23  loadli.w r28,  4568(sp)
000970  e3cdbe23  loadli.w r27,  4572(sp)
000974  638dce23  loadli.w r26,  4576(sp)
000978  e3ccce23  loadli.w r25,  4580(sp)
00097c  638cde23  loadli.w r24,  4584(sp)
000980  e3cbde23  loadli.w r23,  4588(sp)
000984  638bee23  loadli.w r22,  4592(sp)
000988  e3caee23  loadli.w r21,  4596(sp)
00098c  638afe23  loadli.w r20,  4600(sp)
000990  e3c9fe23  loadli.w r19,  4604(sp)
000994  9f8e0e24  addli sp, sp, 4608
000998  5f800f00  jr r31, 0
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
000bc0  00100000  exit
000bc4  00100000  exit
000bc8  00100000  exit
000bcc  00100000  exit
000bd0  00100000  exit
000bd4  00100000  exit
000bd8  00100000  exit
