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
0000fc  4b025b01  ble.s r22, r21, 128
000100  ab10833a  lui r1, 239665
000104  80db0002  load_param_i r23, 1
000108  1f0c1000  addli r24, zero, 8
00010c  9f1c0000  addli r25, zero, 1
000110  1f0d0010  addli r26, zero, 2048
000114  9b9df026  ori r27, r1, 623
000118  5b090000  j 72
00011c  0b128141  min.s r4, r2, r24
000120  6b530f01  load.d r[7:8], 16(r30)
000124  6b548f01  load.d r[9:10], 24(r30)
000128  e7819e01  storeli.w r25, 24(sp)
00012c  6781ae01  storeli.w r26, 16(sp)
000130  67c1be01  storeli.w r27, 20(sp)
000134  e7c01e00  storeli.w r1, 12(sp)
000138  0b123150  fmac.s r4, r2, r3
00013c  6b510f02  load.d r[3:4], 32(r30)
000140  e7804e00  storeli.w r4, 8(sp)
000144  6b528f00  load.d r[5:6], 8(r30)
000148  73b02e00  store.d r[3:4], 0(sp)
00014c  6b510f00  load.d r[3:4], 0(r30)
000150  57310000  jal 392
000154  8b9a7a11  add.s r21, r21, r23
000158  3fa06a01  blt.s r21, r22, 8
00015c  5b040000  j 32
000160  8b904a31  div.s r1, r21, r20
000164  9f215001  addli r3, zero, 170
000168  0b913031  div.s r2, r1, r19
00016c  9f305001  addli r1, zero, 171
000170  bf3e81ff  blt.s r2, r24, -84
000174  9f205001  addli r1, zero, 170
000178  dbf4ffff  j -92
00017c  9f8e8e00  addli sp, sp, 64
000180  00a00300  mfence { lm, sm, gm }
000184  00100000  exit
000188  9f8e8ede  addli sp, sp, -4288
00018c  67c9ee21  storeli.w r30, 4244(sp)
000190  1f8f8e21  addli r30, sp, 4288
000194  e7cb3e21  storeli.w r19, 4284(sp)
000198  e78b4e21  storeli.w r20, 4280(sp)
00019c  67cb5e21  storeli.w r21, 4276(sp)
0001a0  678b6e21  storeli.w r22, 4272(sp)
0001a4  e7ca7e21  storeli.w r23, 4268(sp)
0001a8  e78a8e21  storeli.w r24, 4264(sp)
0001ac  67ca9e21  storeli.w r25, 4260(sp)
0001b0  678aae21  storeli.w r26, 4256(sp)
0001b4  e7c9be21  storeli.w r27, 4252(sp)
0001b8  e789ce21  storeli.w r28, 4248(sp)
0001bc  6789fe21  storeli.w r31, 4240(sp)
0001c0  63052f00  loadli.w r10,  16(r30)
0001c4  e3451f00  loadli.w r11,  12(r30)
0001c8  e3003f00  loadli.w r1,  24(r30)
0001cc  1f06cfde  addli r12, r30, -4256
0001d0  73302600  store.d r[3:4], 0(r12)
0001d4  b7f00000  beq r1, zero, 60
0001d8  00360002  core_id r12
0001dc  9f200000  addli r1, zero, 2
0001e0  37201602  beq r12, r1, 1032
0001e4  9f100000  addli r1, zero, 1
0001e8  b70f1600  beq r12, r1, 992
0001ec  3b600602  bneq r12, zero, 1048
0001f0  e3002f00  loadli.w r1,  16(r30)
0001f4  2b0100f0  lui r2, 983040
0001f8  9bb01000  slli r1, r1, 1
0001fc  97902000  or r1, r1, r2
000200  2b010000  lui r2, 0
000204  1f010100  addli r2, r2, 0
000208  ff002200  l_gm2sm r1, r2, 0(r[5:6])
00020c  5b7f0000  j 1016
000210  80300002  core_id r1
000214  bb800000  bneq r1, zero, 32
000218  e3002f00  loadli.w r1,  16(r30)
00021c  2b0100f0  lui r2, 983040
000220  9bb01000  slli r1, r1, 1
000224  97902000  or r1, r1, r2
000228  2b310000  lui r2, 3
00022c  1f010100  addli r2, r2, 0
000230  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000234  2bf10000  lui r2, 15
000238  e3401f00  loadli.w r1,  12(r30)
00023c  1f120000  addli r4, zero, 1
000240  00200300  mfence { sm, gm }
000244  1b11f1ff  ori r2, r2, 4095
000248  80210104  csr_set csr3, r2
00024c  00d00100  sync_group
000250  3fae4002  blt.s r1, r4, 1928
000254  e3002f00  loadli.w r1,  16(r30)
000258  1f040006  addli r8, zero, 768
00025c  00530102  load_param_i r6, 2
000260  ab330000  lui r7, 3
000264  9f01000c  addli r3, zero, 1536
000268  9f020000  addli r5, zero, 0
00026c  9f0a0002  addli r21, zero, 256
000270  1f0b0001  addli r22, zero, 128
000274  9f0b8000  addli r23, zero, 64
000278  1f0c4000  addli r24, zero, 32
00027c  1f0d8fdf  addli r26, r30, -4160
000280  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
000284  9f830300  addli r7, r7, 0
000288  e7476fde  storeli.w r6, -4228(r30)
00028c  1ff1f005  addli r2, r1, 767
000290  8b148130  div.s r9, r2, r8
000294  00310002  core_id r2
000298  13016104  setlt.u r2, r2, r6
00029c  0b9a3420  mul.s r20, r9, r3
0002a0  e7469fde  storeli.w r9, -4244(r30)
0002a4  e7072fde  storeli.w r2, -4232(r30)
0002a8  1bb11000  slli r2, r1, 1
0002ac  67472fde  storeli.w r2, -4236(r30)
0002b0  33810010  fix2float_u.rn r2, r1
0002b4  93101004  setlt.s r1, zero, r1
0002b8  e7452fde  storeli.w r2, -4260(r30)
0002bc  67071fde  storeli.w r1, -4240(r30)
0002c0  9f000fdf  addli r1, r30, -4224
0002c4  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
0002c8  5b030000  j 24
0002cc  e340ffde  loadli.w r1,  -4228(r30)
0002d0  e3451f00  loadli.w r11,  12(r30)
0002d4  8b921210  add.s r5, r5, r1
0002d8  3fa0b200  blt.s r5, r11, 8
0002dc  dbdf0000  j 1788
0002e0  80300002  core_id r1
0002e4  e3011f00  loadli.w r3,  8(r30)
0002e8  8b901210  add.s r1, r5, r1
0002ec  1391b004  setlt.s r2, r1, r11
0002f0  8b903010  add.s r1, r1, r3
0002f4  e301ffde  loadli.w r3,  -4232(r30)
0002f8  17812100  and r2, r3, r2
0002fc  8b91a020  mul.s r3, r1, r10
000300  e300efde  loadli.w r1,  -4240(r30)
000304  b39d0128  sext_int2long r[28:29], r3
000308  97802000  and r1, r1, r2
00030c  bbe74000  bneq r1, r4, 504
000310  9f04cfde  addli r9, r30, -4256
000314  17b14d02  sll.d r[3:4], r[28:29], r4
000318  2b0300f0  lui r6, 983040
00031c  9f0c8fdf  addli r25, r30, -4160
000320  1f070000  addli r14, zero, 0
000324  9f060000  addli r13, zero, 0
000328  9f870300  addli r15, r7, 0
00032c  ebd50400  load.d r[12:13], 0(r9)
000330  e344efde  loadli.w r9,  -4236(r30)
000334  0ba12510  add.ul r[3:4], r[12:13], r[3:4]
000338  17936400  or r6, r9, r6
00033c  7f239101  l_gm2lm r6, r25, 0(r[3:4])
000340  00a00200  mfence { lm, gm }
000344  e344dfde  loadli.w r9,  -4244(r30)
000348  db0e0000  j 116
00034c  1f010fdf  addli r2, r30, -4224
000350  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
000354  c2130102  vload_mask16.mz vr7{mr1}, 0(r2)
000358  16101102  vadd.f.mz.rn vr0{mr1}, vr2, vr1
00035c  eaf03ac0  vsrl.p vr1, r21, vr3
000360  6af10ac0  vsrl.p vr2, r21, vr0
000364  96901102  vadd.f.mz.rn vr1{mr1}, vr3, vr1
000368  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00036c  6a711bc0  vsrl.p vr2, r22, vr1
000370  ea710bc0  vsrl.p vr3, r22, vr0
000374  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000378  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
00037c  6af11bc0  vsrl.p vr2, r23, vr1
000380  eaf10bc0  vsrl.p vr3, r23, vr0
000384  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000388  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
00038c  6a711cc0  vsrl.p vr2, r24, vr1
000390  ea710cc0  vsrl.p vr3, r24, vr0
000394  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000398  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
00039c  7a910040  vextracti.f r2, 0(vr1)
0003a0  0b672710  add.f.rn r14, r14, r2
0003a4  7a130040  vextracti.f r6, 0(vr0)
0003a8  8be66610  add.f.rn r13, r13, r6
0003ac  9f8707f4  addli r15, r15, -1536
0003b0  9f8c0cf4  addli r25, r25, -1536
0003b4  3f203200  blt.s r4, r3, 8
0003b8  db2a0000  j 340
0003bc  9f810400  addli r3, r9, 0
0003c0  9ff4f1ff  addli r9, r3, -1
0003c4  0b918420  mul.s r2, r9, r8
0003c8  cb1f25fe  ble.s r10, r2, -28
0003cc  12317002  vadd.s.mz vr2{mr1}, zero, vr7
0003d0  92307002  vadd.s.mz vr1{mr1}, zero, vr7
0003d4  92317002  vadd.s.mz vr3{mr1}, zero, vr7
0003d8  0b112518  sub.s r2, r10, r2
0003dc  bf7d41fe  blt.s r2, r4, -132
0003e0  92307002  vadd.s.mz vr1{mr1}, zero, vr7
0003e4  12317002  vadd.s.mz vr2{mr1}, zero, vr7
0003e8  92317002  vadd.s.mz vr3{mr1}, zero, vr7
0003ec  12327002  vadd.s.mz vr4{mr1}, zero, vr7
0003f0  8b158140  min.s r11, r2, r8
0003f4  1f030000  addli r6, zero, 0
0003f8  1f860c00  addli r12, r25, 0
0003fc  1f810700  addli r2, r15, 0
000400  8b184111  add.s r17, r2, r20
000404  0b184611  add.s r16, r12, r20
000408  1f8908f4  addli r18, r17, -1536
00040c  9f8988f4  addli r19, r17, -1472
000410  ca020902  vloads.mz vr5{mr1}, 0(r18)
000414  4a830902  vloads.mz vr6{mr1}, 0(r19)
000418  1f0908f4  addli r18, r16, -1536
00041c  c2030902  vload.mz vr7{mr1}, 0(r18)
000420  1f0988f4  addli r18, r16, -1472
000424  42040902  vload.mz vr8{mr1}, 0(r18)
000428  1f098300  addli r18, r6, 64
00042c  86b40300  vfp162float_l.rn vr9, vr7
000430  86f30300  vfp162float_h.rn vr7, vr7
000434  06350400  vfp162float_l.rn vr10, vr8
000438  06740400  vfp162float_h.rn vr8, vr8
00043c  06300300  vfp162float_l.rn vr0, vr6
000440  86b50200  vfp162float_l.rn vr11, vr5
000444  86f20200  vfp162float_h.rn vr5, vr5
000448  06730300  vfp162float_h.rn vr6, vr6
00044c  9694b402  vadd.f.mz.rn vr9{mr1}, vr9, vr11
000450  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
000454  96925302  vadd.f.mz.rn vr5{mr1}, vr7, vr5
000458  16136402  vadd.f.mz.rn vr6{mr1}, vr8, vr6
00045c  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
000460  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
000464  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
000468  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00046c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000470  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
000474  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000478  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00047c  4bcb25ff  ble.s r11, r18, -304
000480  9f8908f5  addli r19, r17, -1408
000484  9f8888f5  addli r17, r17, -1344
000488  1f0908f5  addli r18, r16, -1408
00048c  1f0888f5  addli r16, r16, -1344
000490  1f030301  addli r6, r6, 128
000494  1f010102  addli r2, r2, 256
000498  1f060602  addli r12, r12, 256
00049c  4a800902  vloads.mz vr0{mr1}, 0(r19)
0004a0  ca820802  vloads.mz vr5{mr1}, 0(r17)
0004a4  42030902  vload.mz vr6{mr1}, 0(r18)
0004a8  c2030802  vload.mz vr7{mr1}, 0(r16)
0004ac  06340300  vfp162float_l.rn vr8, vr6
0004b0  86b40300  vfp162float_l.rn vr9, vr7
0004b4  06730300  vfp162float_h.rn vr6, vr6
0004b8  86f30300  vfp162float_h.rn vr7, vr7
0004bc  06350000  vfp162float_l.rn vr10, vr0
0004c0  86b50200  vfp162float_l.rn vr11, vr5
0004c4  06700000  vfp162float_h.rn vr0, vr0
0004c8  86f20200  vfp162float_h.rn vr5, vr5
0004cc  1614a402  vadd.f.mz.rn vr8{mr1}, vr8, vr10
0004d0  9694b402  vadd.f.mz.rn vr9{mr1}, vr9, vr11
0004d4  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0004d8  96925302  vadd.f.mz.rn vr5{mr1}, vr7, vr5
0004dc  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
0004e0  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
0004e4  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
0004e8  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
0004ec  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0004f0  96915102  vadd.f.mz.rn vr3{mr1}, vr3, vr5
0004f4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0004f8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0004fc  3f1cb3fe  blt.s r6, r11, -252
000500  dbc9ffff  j -436
000504  9f060000  addli r13, zero, 0
000508  1f070000  addli r14, zero, 0
00050c  378700fe  beq r1, zero, -576
000510  e341bfde  loadli.w r3,  -4260(r30)
000514  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000518  9f000000  addli r1, zero, 0
00051c  0f013718  div.f.rn r2, r14, r3
000520  8f813618  div.f.rn r3, r13, r3
000524  0b632120  mul.f.rn r6, r2, r2
000528  6a111122  vor.f.mz vr2{mr1}, r2, vr1
00052c  1f010000  addli r2, zero, 0
000530  8be16118  sub.f.rn r3, r3, r6
000534  63432f00  loadli.w r6,  20(r30)
000538  8be16110  add.f.rn r3, r3, r6
00053c  2b03803f  lui r6, 260096
000540  8f810108  sqrt.f.rn r3, r3
000544  8f013318  div.f.rn r3, r6, r3
000548  ea911122  vor.f.mz vr3{mr1}, r3, vr1
00054c  8b917010  add.s r3, r1, r7
000550  1f014100  addli r2, r2, 32
000554  4a800102  vloads.mz vr0{mr1}, 0(r3)
000558  8b111d10  add.s r3, r26, r1
00055c  9f808000  addli r1, r1, 64
000560  42820102  vload.mz vr4{mr1}, 0(r3)
000564  86320200  vfp162float_l.rn vr5, vr4
000568  06720200  vfp162float_h.rn vr4, vr4
00056c  06330000  vfp162float_l.rn vr6, vr0
000570  06700000  vfp162float_h.rn vr0, vr0
000574  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
000578  16100202  vadd.f.mz.rn vr0{mr1}, vr4, vr0
00057c  1e922202  vsub.f.mz.rn vr4{mr1}, vr5, vr2
000580  1e102002  vsub.f.mz.rn vr0{mr1}, vr0, vr2
000584  92321002  vadd.s.mz vr5{mr1}, zero, vr1
000588  0e924102  vmul.f.mz.rn vr4{mr1}, vr3, vr4
00058c  0e900102  vmul.f.mz.rn vr0{mr1}, vr3, vr0
000590  86120200  vfloat2fp16_l.rn vr5, vr4
000594  86520000  vfloat2fp16_h.rn vr5, vr0
000598  46805102  vstore.mz vr5{mr1}, 0(r3)
00059c  bf4ea1fe  blt.s r2, r10, -80
0005a0  eb550f00  load.d r[12:13], 0(r30)
0005a4  6343efde  loadli.w r6,  -4236(r30)
0005a8  97b04d02  sll.d r[2:3], r[28:29], r4
0005ac  ab0100f0  lui r3, 983040
0005b0  00a00000  mfence { lm }
0005b4  8ba01510  add.ul r[2:3], r[12:13], r[2:3]
0005b8  97113300  or r3, r6, r3
0005bc  ffb1a001  s_lm2gm r3, r26, 0(r[2:3])
0005c0  00a00200  mfence { lm, gm }
0005c4  5ba1ffff  j -760
0005c8  e3002f00  loadli.w r1,  16(r30)
0005cc  2b0100f0  lui r2, 983040
0005d0  9bb01000  slli r1, r1, 1
0005d4  97902000  or r1, r1, r2
0005d8  2b110000  lui r2, 1
0005dc  1f010100  addli r2, r2, 0
0005e0  ff002300  l_gm2sm r1, r2, 0(r[7:8])
0005e4  5b040000  j 32
0005e8  e3002f00  loadli.w r1,  16(r30)
0005ec  2b0100f0  lui r2, 983040
0005f0  9bb01000  slli r1, r1, 1
0005f4  97902000  or r1, r1, r2
0005f8  2b210000  lui r2, 2
0005fc  1f010100  addli r2, r2, 0
000600  ff002400  l_gm2sm r1, r2, 0(r[9:10])
000604  2bf10000  lui r2, 15
000608  e3401f00  loadli.w r1,  12(r30)
00060c  1f120000  addli r4, zero, 1
000610  00200300  mfence { sm, gm }
000614  1b11f1ff  ori r2, r2, 4095
000618  80210104  csr_set csr3, r2
00061c  00d00100  sync_group
000620  bfee4000  blt.s r1, r4, 952
000624  00530102  load_param_i r6, 2
000628  e3002f00  loadli.w r1,  16(r30)
00062c  9f030006  addli r7, zero, 768
000630  2b080000  lui r16, 0
000634  ab1d0000  lui r27, 1
000638  2b2e0000  lui r28, 2
00063c  9f01000c  addli r3, zero, 1536
000640  9f020000  addli r5, zero, 0
000644  9f0a0002  addli r21, zero, 256
000648  1f0b0001  addli r22, zero, 128
00064c  9f0b8000  addli r23, zero, 64
000650  1f0c4000  addli r24, zero, 32
000654  1f0d8fdf  addli r26, r30, -4160
000658  eea49462  vxor.u.mz vr9{mr1}, vr9, vr9
00065c  e7076fde  storeli.w r6, -4232(r30)
000660  13036604  setlt.u r6, r12, r6
000664  1f080800  addli r16, r16, 0
000668  9f8d0d00  addli r27, r27, 0
00066c  1f0e0e00  addli r28, r28, 0
000670  1ff1f005  addli r2, r1, 767
000674  0b117130  div.s r2, r2, r7
000678  67476fde  storeli.w r6, -4236(r30)
00067c  1bb31000  slli r6, r1, 1
000680  67076fde  storeli.w r6, -4240(r30)
000684  33830010  fix2float_u.rn r6, r1
000688  93101004  setlt.s r1, zero, r1
00068c  0b1a3120  mul.s r20, r2, r3
000690  e7452fde  storeli.w r2, -4260(r30)
000694  e7056fde  storeli.w r6, -4264(r30)
000698  e7461fde  storeli.w r1, -4244(r30)
00069c  9f000fdf  addli r1, r30, -4224
0006a0  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
0006a4  db030000  j 28
0006a8  e300ffde  loadli.w r1,  -4232(r30)
0006ac  e3451f00  loadli.w r11,  12(r30)
0006b0  00360002  core_id r12
0006b4  8b921210  add.s r5, r5, r1
0006b8  3fa0b200  blt.s r5, r11, 8
0006bc  db630000  j 796
0006c0  8b90c210  add.s r1, r5, r12
0006c4  e341efde  loadli.w r3,  -4236(r30)
0006c8  1391b004  setlt.s r2, r1, r11
0006cc  17812100  and r2, r3, r2
0006d0  e3011f00  loadli.w r3,  8(r30)
0006d4  8b903010  add.s r1, r1, r3
0006d8  e341dfde  loadli.w r3,  -4244(r30)
0006dc  8b90a020  mul.s r1, r1, r10
0006e0  97862100  and r13, r3, r2
0006e4  e7471fde  storeli.w r1, -4228(r30)
0006e8  bbf74600  bneq r13, r4, 508
0006ec  33910028  sext_int2long r[3:4], r1
0006f0  9f00cfde  addli r1, r30, -4256
0006f4  2b0400f0  lui r8, 983040
0006f8  1f038fdf  addli r6, r30, -4160
0006fc  9f0c0000  addli r25, zero, 0
000700  1f070000  addli r14, zero, 0
000704  9f070800  addli r15, r16, 0
000708  ebd50000  load.d r[12:13], 0(r1)
00070c  e300efde  loadli.w r1,  -4240(r30)
000710  17314102  sll.d r[3:4], r[3:4], r4
000714  0ba12510  add.ul r[3:4], r[12:13], r[3:4]
000718  17948000  or r8, r1, r8
00071c  7f246100  l_gm2lm r8, r6, 0(r[3:4])
000720  00a00200  mfence { lm, gm }
000724  6344bfde  loadli.w r8,  -4260(r30)
000728  db0e0000  j 116
00072c  9f000fdf  addli r1, r30, -4224
000730  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
000734  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000738  16101102  vadd.f.mz.rn vr0{mr1}, vr2, vr1
00073c  eaf03ac0  vsrl.p vr1, r21, vr3
000740  6af10ac0  vsrl.p vr2, r21, vr0
000744  96901102  vadd.f.mz.rn vr1{mr1}, vr3, vr1
000748  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00074c  6a711bc0  vsrl.p vr2, r22, vr1
000750  ea710bc0  vsrl.p vr3, r22, vr0
000754  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000758  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
00075c  6af11bc0  vsrl.p vr2, r23, vr1
000760  eaf10bc0  vsrl.p vr3, r23, vr0
000764  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000768  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
00076c  6a711cc0  vsrl.p vr2, r24, vr1
000770  ea710cc0  vsrl.p vr3, r24, vr0
000774  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000778  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
00077c  fa900040  vextracti.f r1, 0(vr1)
000780  8bec1c10  add.f.rn r25, r25, r1
000784  7a110040  vextracti.f r2, 0(vr0)
000788  0b672710  add.f.rn r14, r14, r2
00078c  9f8707f4  addli r15, r15, -1536
000790  1f0303f4  addli r6, r6, -1536
000794  3f203200  blt.s r4, r3, 8
000798  db2a0000  j 340
00079c  9f010400  addli r3, r8, 0
0007a0  1ff4f1ff  addli r8, r3, -1
0007a4  0b117420  mul.s r2, r8, r7
0007a8  cb1f25fe  ble.s r10, r2, -28
0007ac  12319002  vadd.s.mz vr2{mr1}, zero, vr9
0007b0  92309002  vadd.s.mz vr1{mr1}, zero, vr9
0007b4  92319002  vadd.s.mz vr3{mr1}, zero, vr9
0007b8  8b142518  sub.s r9, r10, r2
0007bc  bffd44fe  blt.s r9, r4, -132
0007c0  92309002  vadd.s.mz vr1{mr1}, zero, vr9
0007c4  12319002  vadd.s.mz vr2{mr1}, zero, vr9
0007c8  92319002  vadd.s.mz vr3{mr1}, zero, vr9
0007cc  12329002  vadd.s.mz vr4{mr1}, zero, vr9
0007d0  8b957440  min.s r11, r9, r7
0007d4  1f010000  addli r2, zero, 0
0007d8  1f060300  addli r12, r6, 0
0007dc  9f840700  addli r9, r15, 0
0007e0  0b994411  add.s r18, r9, r20
0007e4  8b184611  add.s r17, r12, r20
0007e8  9f0909f4  addli r19, r18, -1536
0007ec  9f0089f4  addli r1, r18, -1472
0007f0  ca820902  vloads.mz vr5{mr1}, 0(r19)
0007f4  4a830002  vloads.mz vr6{mr1}, 0(r1)
0007f8  9f8908f4  addli r19, r17, -1536
0007fc  9f8088f4  addli r1, r17, -1472
000800  42840002  vload.mz vr8{mr1}, 0(r1)
000804  c2830902  vload.mz vr7{mr1}, 0(r19)
000808  9f008100  addli r1, r2, 64
00080c  86b40300  vfp162float_l.rn vr9, vr7
000810  06350400  vfp162float_l.rn vr10, vr8
000814  86f30300  vfp162float_h.rn vr7, vr7
000818  06740400  vfp162float_h.rn vr8, vr8
00081c  06300300  vfp162float_l.rn vr0, vr6
000820  86b50200  vfp162float_l.rn vr11, vr5
000824  86f20200  vfp162float_h.rn vr5, vr5
000828  06730300  vfp162float_h.rn vr6, vr6
00082c  9694b402  vadd.f.mz.rn vr9{mr1}, vr9, vr11
000830  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
000834  96925302  vadd.f.mz.rn vr5{mr1}, vr7, vr5
000838  16136402  vadd.f.mz.rn vr6{mr1}, vr8, vr6
00083c  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
000840  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
000844  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
000848  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00084c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000850  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
000854  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000858  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00085c  4bcb15fe  ble.s r11, r1, -304
000860  9f0909f5  addli r19, r18, -1408
000864  1f0989f5  addli r18, r18, -1344
000868  9f8008f5  addli r1, r17, -1408
00086c  1f010101  addli r2, r2, 128
000870  9f840402  addli r9, r9, 256
000874  1f060602  addli r12, r12, 256
000878  4a800902  vloads.mz vr0{mr1}, 0(r19)
00087c  ca020902  vloads.mz vr5{mr1}, 0(r18)
000880  42830002  vload.mz vr6{mr1}, 0(r1)
000884  9f8088f5  addli r1, r17, -1344
000888  c2830002  vload.mz vr7{mr1}, 0(r1)
00088c  06340300  vfp162float_l.rn vr8, vr6
000890  06730300  vfp162float_h.rn vr6, vr6
000894  86b40300  vfp162float_l.rn vr9, vr7
000898  86f30300  vfp162float_h.rn vr7, vr7
00089c  06350000  vfp162float_l.rn vr10, vr0
0008a0  86b50200  vfp162float_l.rn vr11, vr5
0008a4  06700000  vfp162float_h.rn vr0, vr0
0008a8  86f20200  vfp162float_h.rn vr5, vr5
0008ac  1614a402  vadd.f.mz.rn vr8{mr1}, vr8, vr10
0008b0  9694b402  vadd.f.mz.rn vr9{mr1}, vr9, vr11
0008b4  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0008b8  96925302  vadd.f.mz.rn vr5{mr1}, vr7, vr5
0008bc  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
0008c0  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
0008c4  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
0008c8  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
0008cc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0008d0  96915102  vadd.f.mz.rn vr3{mr1}, vr3, vr5
0008d4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0008d8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0008dc  3f1cb1fe  blt.s r2, r11, -252
0008e0  dbc9ffff  j -436
0008e4  1f070000  addli r14, zero, 0
0008e8  9f0c0000  addli r25, zero, 0
0008ec  b7f606fe  beq r13, zero, -580
0008f0  e301bfde  loadli.w r3,  -4264(r30)
0008f4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0008f8  1f010000  addli r2, zero, 0
0008fc  8f803c18  div.f.rn r1, r25, r3
000900  8f013718  div.f.rn r3, r14, r3
000904  0be31020  mul.f.rn r6, r1, r1
000908  6a911022  vor.f.mz vr2{mr1}, r1, vr1
00090c  8be16118  sub.f.rn r3, r3, r6
000910  63432f00  loadli.w r6,  20(r30)
000914  8be16110  add.f.rn r3, r3, r6
000918  2b03803f  lui r6, 260096
00091c  8f810108  sqrt.f.rn r3, r3
000920  8f013318  div.f.rn r3, r6, r3
000924  ea911122  vor.f.mz vr3{mr1}, r3, vr1
000928  9f010000  addli r3, zero, 0
00092c  8b100111  add.s r1, r2, r16
000930  0b13b111  add.s r6, r2, r27
000934  0b14c111  add.s r8, r2, r28
000938  9f814100  addli r3, r3, 32
00093c  4a800002  vloads.mz vr0{mr1}, 0(r1)
000940  8b102d10  add.s r1, r26, r2
000944  ca020302  vloads.mz vr5{mr1}, 0(r6)
000948  4a030402  vloads.mz vr6{mr1}, 0(r8)
00094c  1f018100  addli r2, r2, 64
000950  42820002  vload.mz vr4{mr1}, 0(r1)
000954  86330200  vfp162float_l.rn vr7, vr4
000958  06720200  vfp162float_h.rn vr4, vr4
00095c  06340000  vfp162float_l.rn vr8, vr0
000960  06700000  vfp162float_h.rn vr0, vr0
000964  16100202  vadd.f.mz.rn vr0{mr1}, vr4, vr0
000968  96938302  vadd.f.mz.rn vr7{mr1}, vr7, vr8
00096c  06340300  vfp162float_l.rn vr8, vr6
000970  06730300  vfp162float_h.rn vr6, vr6
000974  1e922302  vsub.f.mz.rn vr4{mr1}, vr7, vr2
000978  1e102002  vsub.f.mz.rn vr0{mr1}, vr0, vr2
00097c  86b30200  vfp162float_l.rn vr7, vr5
000980  86f20200  vfp162float_h.rn vr5, vr5
000984  0e924102  vmul.f.mz.rn vr4{mr1}, vr3, vr4
000988  0e900102  vmul.f.mz.rn vr0{mr1}, vr3, vr0
00098c  26135002  vmac.f.mz.rn vr6{mr1}, vr0, vr5
000990  26147202  vmac.f.mz.rn vr8{mr1}, vr4, vr7
000994  12301002  vadd.s.mz vr0{mr1}, zero, vr1
000998  06100400  vfloat2fp16_l.rn vr0, vr8
00099c  06500300  vfloat2fp16_h.rn vr0, vr6
0009a0  46800002  vstore.mz vr0{mr1}, 0(r1)
0009a4  3faea1fe  blt.s r3, r10, -120
0009a8  e340ffde  loadli.w r1,  -4228(r30)
0009ac  6b540f00  load.d r[9:10], 0(r30)
0009b0  6303efde  loadli.w r6,  -4240(r30)
0009b4  ab0100f0  lui r3, 983040
0009b8  00a00000  mfence { lm }
0009bc  b3900028  sext_int2long r[2:3], r1
0009c0  97113300  or r3, r6, r3
0009c4  97b04002  sll.d r[2:3], r[2:3], r4
0009c8  8b201410  add.ul r[2:3], r[9:10], r[2:3]
0009cc  ffb1a001  s_lm2gm r3, r26, 0(r[2:3])
0009d0  00a00200  mfence { lm, gm }
0009d4  db9affff  j -812
0009d8  9f0e8fde  addli sp, r30, -4288
0009dc  e38f2e21  loadli.w r31,  4240(sp)
0009e0  63cf2e21  loadli.w r30,  4244(sp)
0009e4  638e3e21  loadli.w r28,  4248(sp)
0009e8  e3cd3e21  loadli.w r27,  4252(sp)
0009ec  638d4e21  loadli.w r26,  4256(sp)
0009f0  e3cc4e21  loadli.w r25,  4260(sp)
0009f4  638c5e21  loadli.w r24,  4264(sp)
0009f8  e3cb5e21  loadli.w r23,  4268(sp)
0009fc  638b6e21  loadli.w r22,  4272(sp)
000a00  e3ca6e21  loadli.w r21,  4276(sp)
000a04  638a7e21  loadli.w r20,  4280(sp)
000a08  e3c97e21  loadli.w r19,  4284(sp)
000a0c  9f8e8e21  addli sp, sp, 4288
000a10  5f800f00  jr r31, 0
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
