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
0000fc  cb715b01  ble.s r22, r21, 124
000100  ab10833a  lui r1, 239665
000104  80db0002  load_param_i r23, 1
000108  1f0c1000  addli r24, zero, 8
00010c  9f0c0010  addli r25, zero, 2048
000110  1b9df026  ori r26, r1, 623
000114  5b090000  j 72
000118  0b128141  min.s r4, r2, r24
00011c  6b530f01  load.d r[7:8], 16(r30)
000120  6b548f01  load.d r[9:10], 24(r30)
000124  e7810e00  storeli.w zero, 24(sp)
000128  67819e01  storeli.w r25, 16(sp)
00012c  67c1ae01  storeli.w r26, 20(sp)
000130  e7c01e00  storeli.w r1, 12(sp)
000134  0b123150  fmac.s r4, r2, r3
000138  6b510f02  load.d r[3:4], 32(r30)
00013c  e7804e00  storeli.w r4, 8(sp)
000140  6b528f00  load.d r[5:6], 8(r30)
000144  73b02e00  store.d r[3:4], 0(sp)
000148  6b510f00  load.d r[3:4], 0(r30)
00014c  d7300000  jal 388
000150  8b9a7a11  add.s r21, r21, r23
000154  3fa06a01  blt.s r21, r22, 8
000158  5b040000  j 32
00015c  8b904a31  div.s r1, r21, r20
000160  9f215001  addli r3, zero, 170
000164  0b913031  div.s r2, r1, r19
000168  9f305001  addli r1, zero, 171
00016c  bf3e81ff  blt.s r2, r24, -84
000170  9f205001  addli r1, zero, 170
000174  dbf4ffff  j -92
000178  9f8e8e00  addli sp, sp, 64
00017c  00a00300  mfence { lm, sm, gm }
000180  00100000  exit
000184  9f8e8ede  addli sp, sp, -4288
000188  67c9ee21  storeli.w r30, 4244(sp)
00018c  1f8f8e21  addli r30, sp, 4288
000190  e7cb3e21  storeli.w r19, 4284(sp)
000194  e78b4e21  storeli.w r20, 4280(sp)
000198  67cb5e21  storeli.w r21, 4276(sp)
00019c  678b6e21  storeli.w r22, 4272(sp)
0001a0  e7ca7e21  storeli.w r23, 4268(sp)
0001a4  e78a8e21  storeli.w r24, 4264(sp)
0001a8  67ca9e21  storeli.w r25, 4260(sp)
0001ac  678aae21  storeli.w r26, 4256(sp)
0001b0  e7c9be21  storeli.w r27, 4252(sp)
0001b4  e789ce21  storeli.w r28, 4248(sp)
0001b8  6789fe21  storeli.w r31, 4240(sp)
0001bc  63052f00  loadli.w r10,  16(r30)
0001c0  e3451f00  loadli.w r11,  12(r30)
0001c4  e3003f00  loadli.w r1,  24(r30)
0001c8  1f06cfde  addli r12, r30, -4256
0001cc  73302600  store.d r[3:4], 0(r12)
0001d0  b7f00000  beq r1, zero, 60
0001d4  00360002  core_id r12
0001d8  9f200000  addli r1, zero, 2
0001dc  37201602  beq r12, r1, 1032
0001e0  9f100000  addli r1, zero, 1
0001e4  b70f1600  beq r12, r1, 992
0001e8  3b600602  bneq r12, zero, 1048
0001ec  e3002f00  loadli.w r1,  16(r30)
0001f0  2b0100f0  lui r2, 983040
0001f4  9bb01000  slli r1, r1, 1
0001f8  97902000  or r1, r1, r2
0001fc  2b010000  lui r2, 0
000200  1f010100  addli r2, r2, 0
000204  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000208  5b7f0000  j 1016
00020c  80300002  core_id r1
000210  bb800000  bneq r1, zero, 32
000214  e3002f00  loadli.w r1,  16(r30)
000218  2b0100f0  lui r2, 983040
00021c  9bb01000  slli r1, r1, 1
000220  97902000  or r1, r1, r2
000224  2b310000  lui r2, 3
000228  1f010100  addli r2, r2, 0
00022c  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000230  2bf10000  lui r2, 15
000234  e3401f00  loadli.w r1,  12(r30)
000238  1f120000  addli r4, zero, 1
00023c  00200300  mfence { sm, gm }
000240  1b11f1ff  ori r2, r2, 4095
000244  80210104  csr_set csr3, r2
000248  00d00100  sync_group
00024c  3fae4002  blt.s r1, r4, 1928
000250  e3002f00  loadli.w r1,  16(r30)
000254  1f040006  addli r8, zero, 768
000258  00530102  load_param_i r6, 2
00025c  ab330000  lui r7, 3
000260  9f01000c  addli r3, zero, 1536
000264  9f020000  addli r5, zero, 0
000268  9f0a0002  addli r21, zero, 256
00026c  1f0b0001  addli r22, zero, 128
000270  9f0b8000  addli r23, zero, 64
000274  1f0c4000  addli r24, zero, 32
000278  1f0d8fdf  addli r26, r30, -4160
00027c  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
000280  9f830300  addli r7, r7, 0
000284  e7476fde  storeli.w r6, -4228(r30)
000288  1ff1f005  addli r2, r1, 767
00028c  8b148130  div.s r9, r2, r8
000290  00310002  core_id r2
000294  13016104  setlt.u r2, r2, r6
000298  0b9a3420  mul.s r20, r9, r3
00029c  e7469fde  storeli.w r9, -4244(r30)
0002a0  e7072fde  storeli.w r2, -4232(r30)
0002a4  1bb11000  slli r2, r1, 1
0002a8  67472fde  storeli.w r2, -4236(r30)
0002ac  33810010  fix2float_u.rn r2, r1
0002b0  93101004  setlt.s r1, zero, r1
0002b4  e7452fde  storeli.w r2, -4260(r30)
0002b8  67071fde  storeli.w r1, -4240(r30)
0002bc  9f000fdf  addli r1, r30, -4224
0002c0  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
0002c4  5b030000  j 24
0002c8  e340ffde  loadli.w r1,  -4228(r30)
0002cc  e3451f00  loadli.w r11,  12(r30)
0002d0  8b921210  add.s r5, r5, r1
0002d4  3fa0b200  blt.s r5, r11, 8
0002d8  dbdf0000  j 1788
0002dc  80300002  core_id r1
0002e0  e3011f00  loadli.w r3,  8(r30)
0002e4  8b901210  add.s r1, r5, r1
0002e8  1391b004  setlt.s r2, r1, r11
0002ec  8b903010  add.s r1, r1, r3
0002f0  e301ffde  loadli.w r3,  -4232(r30)
0002f4  17812100  and r2, r3, r2
0002f8  8b91a020  mul.s r3, r1, r10
0002fc  e300efde  loadli.w r1,  -4240(r30)
000300  b39d0128  sext_int2long r[28:29], r3
000304  97802000  and r1, r1, r2
000308  bbe74000  bneq r1, r4, 504
00030c  9f04cfde  addli r9, r30, -4256
000310  17b14d02  sll.d r[3:4], r[28:29], r4
000314  2b0300f0  lui r6, 983040
000318  9f0c8fdf  addli r25, r30, -4160
00031c  1f070000  addli r14, zero, 0
000320  9f060000  addli r13, zero, 0
000324  9f870300  addli r15, r7, 0
000328  ebd50400  load.d r[12:13], 0(r9)
00032c  e344efde  loadli.w r9,  -4236(r30)
000330  0ba12510  add.ul r[3:4], r[12:13], r[3:4]
000334  17936400  or r6, r9, r6
000338  7f239101  l_gm2lm r6, r25, 0(r[3:4])
00033c  00a00200  mfence { lm, gm }
000340  e344dfde  loadli.w r9,  -4244(r30)
000344  db0e0000  j 116
000348  1f010fdf  addli r2, r30, -4224
00034c  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
000350  c2130102  vload_mask16.mz vr7{mr1}, 0(r2)
000354  16101102  vadd.f.mz.rn vr0{mr1}, vr2, vr1
000358  eaf03ac0  vsrl.p vr1, r21, vr3
00035c  6af10ac0  vsrl.p vr2, r21, vr0
000360  96901102  vadd.f.mz.rn vr1{mr1}, vr3, vr1
000364  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000368  6a711bc0  vsrl.p vr2, r22, vr1
00036c  ea710bc0  vsrl.p vr3, r22, vr0
000370  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000374  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000378  6af11bc0  vsrl.p vr2, r23, vr1
00037c  eaf10bc0  vsrl.p vr3, r23, vr0
000380  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000384  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000388  6a711cc0  vsrl.p vr2, r24, vr1
00038c  ea710cc0  vsrl.p vr3, r24, vr0
000390  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000394  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000398  7a910040  vextracti.f r2, 0(vr1)
00039c  0b672710  add.f.rn r14, r14, r2
0003a0  7a130040  vextracti.f r6, 0(vr0)
0003a4  8be66610  add.f.rn r13, r13, r6
0003a8  9f8707f4  addli r15, r15, -1536
0003ac  9f8c0cf4  addli r25, r25, -1536
0003b0  3f203200  blt.s r4, r3, 8
0003b4  db2a0000  j 340
0003b8  9f810400  addli r3, r9, 0
0003bc  9ff4f1ff  addli r9, r3, -1
0003c0  0b918420  mul.s r2, r9, r8
0003c4  cb1f25fe  ble.s r10, r2, -28
0003c8  12317002  vadd.s.mz vr2{mr1}, zero, vr7
0003cc  92307002  vadd.s.mz vr1{mr1}, zero, vr7
0003d0  92317002  vadd.s.mz vr3{mr1}, zero, vr7
0003d4  0b112518  sub.s r2, r10, r2
0003d8  bf7d41fe  blt.s r2, r4, -132
0003dc  92307002  vadd.s.mz vr1{mr1}, zero, vr7
0003e0  12317002  vadd.s.mz vr2{mr1}, zero, vr7
0003e4  92317002  vadd.s.mz vr3{mr1}, zero, vr7
0003e8  12327002  vadd.s.mz vr4{mr1}, zero, vr7
0003ec  8b158140  min.s r11, r2, r8
0003f0  1f030000  addli r6, zero, 0
0003f4  1f860c00  addli r12, r25, 0
0003f8  1f810700  addli r2, r15, 0
0003fc  8b184111  add.s r17, r2, r20
000400  0b184611  add.s r16, r12, r20
000404  1f8908f4  addli r18, r17, -1536
000408  9f8988f4  addli r19, r17, -1472
00040c  ca020902  vloads.mz vr5{mr1}, 0(r18)
000410  4a830902  vloads.mz vr6{mr1}, 0(r19)
000414  1f0908f4  addli r18, r16, -1536
000418  c2030902  vload.mz vr7{mr1}, 0(r18)
00041c  1f0988f4  addli r18, r16, -1472
000420  42040902  vload.mz vr8{mr1}, 0(r18)
000424  1f098300  addli r18, r6, 64
000428  86b40300  vfp162float_l.rn vr9, vr7
00042c  86f30300  vfp162float_h.rn vr7, vr7
000430  06350400  vfp162float_l.rn vr10, vr8
000434  06740400  vfp162float_h.rn vr8, vr8
000438  06300300  vfp162float_l.rn vr0, vr6
00043c  86b50200  vfp162float_l.rn vr11, vr5
000440  86f20200  vfp162float_h.rn vr5, vr5
000444  06730300  vfp162float_h.rn vr6, vr6
000448  9694b402  vadd.f.mz.rn vr9{mr1}, vr9, vr11
00044c  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
000450  96925302  vadd.f.mz.rn vr5{mr1}, vr7, vr5
000454  16136402  vadd.f.mz.rn vr6{mr1}, vr8, vr6
000458  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
00045c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
000460  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
000464  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
000468  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00046c  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
000470  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000474  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000478  4bcb25ff  ble.s r11, r18, -304
00047c  9f8908f5  addli r19, r17, -1408
000480  9f8888f5  addli r17, r17, -1344
000484  1f0908f5  addli r18, r16, -1408
000488  1f0888f5  addli r16, r16, -1344
00048c  1f030301  addli r6, r6, 128
000490  1f010102  addli r2, r2, 256
000494  1f060602  addli r12, r12, 256
000498  4a800902  vloads.mz vr0{mr1}, 0(r19)
00049c  ca820802  vloads.mz vr5{mr1}, 0(r17)
0004a0  42030902  vload.mz vr6{mr1}, 0(r18)
0004a4  c2030802  vload.mz vr7{mr1}, 0(r16)
0004a8  06340300  vfp162float_l.rn vr8, vr6
0004ac  86b40300  vfp162float_l.rn vr9, vr7
0004b0  06730300  vfp162float_h.rn vr6, vr6
0004b4  86f30300  vfp162float_h.rn vr7, vr7
0004b8  06350000  vfp162float_l.rn vr10, vr0
0004bc  86b50200  vfp162float_l.rn vr11, vr5
0004c0  06700000  vfp162float_h.rn vr0, vr0
0004c4  86f20200  vfp162float_h.rn vr5, vr5
0004c8  1614a402  vadd.f.mz.rn vr8{mr1}, vr8, vr10
0004cc  9694b402  vadd.f.mz.rn vr9{mr1}, vr9, vr11
0004d0  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0004d4  96925302  vadd.f.mz.rn vr5{mr1}, vr7, vr5
0004d8  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
0004dc  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
0004e0  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
0004e4  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
0004e8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0004ec  96915102  vadd.f.mz.rn vr3{mr1}, vr3, vr5
0004f0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0004f4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0004f8  3f1cb3fe  blt.s r6, r11, -252
0004fc  dbc9ffff  j -436
000500  9f060000  addli r13, zero, 0
000504  1f070000  addli r14, zero, 0
000508  378700fe  beq r1, zero, -576
00050c  e341bfde  loadli.w r3,  -4260(r30)
000510  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000514  9f000000  addli r1, zero, 0
000518  0f013718  div.f.rn r2, r14, r3
00051c  8f813618  div.f.rn r3, r13, r3
000520  0b632120  mul.f.rn r6, r2, r2
000524  6a111122  vor.f.mz vr2{mr1}, r2, vr1
000528  1f010000  addli r2, zero, 0
00052c  8be16118  sub.f.rn r3, r3, r6
000530  63432f00  loadli.w r6,  20(r30)
000534  8be16110  add.f.rn r3, r3, r6
000538  2b03803f  lui r6, 260096
00053c  8f810108  sqrt.f.rn r3, r3
000540  8f013318  div.f.rn r3, r6, r3
000544  ea911122  vor.f.mz vr3{mr1}, r3, vr1
000548  8b917010  add.s r3, r1, r7
00054c  1f014100  addli r2, r2, 32
000550  4a800102  vloads.mz vr0{mr1}, 0(r3)
000554  8b111d10  add.s r3, r26, r1
000558  9f808000  addli r1, r1, 64
00055c  42820102  vload.mz vr4{mr1}, 0(r3)
000560  86320200  vfp162float_l.rn vr5, vr4
000564  06720200  vfp162float_h.rn vr4, vr4
000568  06330000  vfp162float_l.rn vr6, vr0
00056c  06700000  vfp162float_h.rn vr0, vr0
000570  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
000574  16100202  vadd.f.mz.rn vr0{mr1}, vr4, vr0
000578  1e922202  vsub.f.mz.rn vr4{mr1}, vr5, vr2
00057c  1e102002  vsub.f.mz.rn vr0{mr1}, vr0, vr2
000580  92321002  vadd.s.mz vr5{mr1}, zero, vr1
000584  0e924102  vmul.f.mz.rn vr4{mr1}, vr3, vr4
000588  0e900102  vmul.f.mz.rn vr0{mr1}, vr3, vr0
00058c  86120200  vfloat2fp16_l.rn vr5, vr4
000590  86520000  vfloat2fp16_h.rn vr5, vr0
000594  46805102  vstore.mz vr5{mr1}, 0(r3)
000598  bf4ea1fe  blt.s r2, r10, -80
00059c  eb550f00  load.d r[12:13], 0(r30)
0005a0  6343efde  loadli.w r6,  -4236(r30)
0005a4  97b04d02  sll.d r[2:3], r[28:29], r4
0005a8  ab0100f0  lui r3, 983040
0005ac  00a00000  mfence { lm }
0005b0  8ba01510  add.ul r[2:3], r[12:13], r[2:3]
0005b4  97113300  or r3, r6, r3
0005b8  ffb1a001  s_lm2gm r3, r26, 0(r[2:3])
0005bc  00a00200  mfence { lm, gm }
0005c0  5ba1ffff  j -760
0005c4  e3002f00  loadli.w r1,  16(r30)
0005c8  2b0100f0  lui r2, 983040
0005cc  9bb01000  slli r1, r1, 1
0005d0  97902000  or r1, r1, r2
0005d4  2b110000  lui r2, 1
0005d8  1f010100  addli r2, r2, 0
0005dc  ff002300  l_gm2sm r1, r2, 0(r[7:8])
0005e0  5b040000  j 32
0005e4  e3002f00  loadli.w r1,  16(r30)
0005e8  2b0100f0  lui r2, 983040
0005ec  9bb01000  slli r1, r1, 1
0005f0  97902000  or r1, r1, r2
0005f4  2b210000  lui r2, 2
0005f8  1f010100  addli r2, r2, 0
0005fc  ff002400  l_gm2sm r1, r2, 0(r[9:10])
000600  2bf10000  lui r2, 15
000604  e3401f00  loadli.w r1,  12(r30)
000608  1f120000  addli r4, zero, 1
00060c  00200300  mfence { sm, gm }
000610  1b11f1ff  ori r2, r2, 4095
000614  80210104  csr_set csr3, r2
000618  00d00100  sync_group
00061c  bfee4000  blt.s r1, r4, 952
000620  00530102  load_param_i r6, 2
000624  e3002f00  loadli.w r1,  16(r30)
000628  9f030006  addli r7, zero, 768
00062c  2b080000  lui r16, 0
000630  ab1d0000  lui r27, 1
000634  2b2e0000  lui r28, 2
000638  9f01000c  addli r3, zero, 1536
00063c  9f020000  addli r5, zero, 0
000640  9f0a0002  addli r21, zero, 256
000644  1f0b0001  addli r22, zero, 128
000648  9f0b8000  addli r23, zero, 64
00064c  1f0c4000  addli r24, zero, 32
000650  1f0d8fdf  addli r26, r30, -4160
000654  eea49462  vxor.u.mz vr9{mr1}, vr9, vr9
000658  e7076fde  storeli.w r6, -4232(r30)
00065c  13036604  setlt.u r6, r12, r6
000660  1f080800  addli r16, r16, 0
000664  9f8d0d00  addli r27, r27, 0
000668  1f0e0e00  addli r28, r28, 0
00066c  1ff1f005  addli r2, r1, 767
000670  0b117130  div.s r2, r2, r7
000674  67476fde  storeli.w r6, -4236(r30)
000678  1bb31000  slli r6, r1, 1
00067c  67076fde  storeli.w r6, -4240(r30)
000680  33830010  fix2float_u.rn r6, r1
000684  93101004  setlt.s r1, zero, r1
000688  0b1a3120  mul.s r20, r2, r3
00068c  e7452fde  storeli.w r2, -4260(r30)
000690  e7056fde  storeli.w r6, -4264(r30)
000694  e7461fde  storeli.w r1, -4244(r30)
000698  9f000fdf  addli r1, r30, -4224
00069c  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
0006a0  db030000  j 28
0006a4  e300ffde  loadli.w r1,  -4232(r30)
0006a8  e3451f00  loadli.w r11,  12(r30)
0006ac  00360002  core_id r12
0006b0  8b921210  add.s r5, r5, r1
0006b4  3fa0b200  blt.s r5, r11, 8
0006b8  db630000  j 796
0006bc  8b90c210  add.s r1, r5, r12
0006c0  e341efde  loadli.w r3,  -4236(r30)
0006c4  1391b004  setlt.s r2, r1, r11
0006c8  17812100  and r2, r3, r2
0006cc  e3011f00  loadli.w r3,  8(r30)
0006d0  8b903010  add.s r1, r1, r3
0006d4  e341dfde  loadli.w r3,  -4244(r30)
0006d8  8b90a020  mul.s r1, r1, r10
0006dc  97862100  and r13, r3, r2
0006e0  e7471fde  storeli.w r1, -4228(r30)
0006e4  bbf74600  bneq r13, r4, 508
0006e8  33910028  sext_int2long r[3:4], r1
0006ec  9f00cfde  addli r1, r30, -4256
0006f0  2b0400f0  lui r8, 983040
0006f4  1f038fdf  addli r6, r30, -4160
0006f8  9f0c0000  addli r25, zero, 0
0006fc  1f070000  addli r14, zero, 0
000700  9f070800  addli r15, r16, 0
000704  ebd50000  load.d r[12:13], 0(r1)
000708  e300efde  loadli.w r1,  -4240(r30)
00070c  17314102  sll.d r[3:4], r[3:4], r4
000710  0ba12510  add.ul r[3:4], r[12:13], r[3:4]
000714  17948000  or r8, r1, r8
000718  7f246100  l_gm2lm r8, r6, 0(r[3:4])
00071c  00a00200  mfence { lm, gm }
000720  6344bfde  loadli.w r8,  -4260(r30)
000724  db0e0000  j 116
000728  9f000fdf  addli r1, r30, -4224
00072c  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
000730  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000734  16101102  vadd.f.mz.rn vr0{mr1}, vr2, vr1
000738  eaf03ac0  vsrl.p vr1, r21, vr3
00073c  6af10ac0  vsrl.p vr2, r21, vr0
000740  96901102  vadd.f.mz.rn vr1{mr1}, vr3, vr1
000744  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000748  6a711bc0  vsrl.p vr2, r22, vr1
00074c  ea710bc0  vsrl.p vr3, r22, vr0
000750  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000754  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000758  6af11bc0  vsrl.p vr2, r23, vr1
00075c  eaf10bc0  vsrl.p vr3, r23, vr0
000760  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000764  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000768  6a711cc0  vsrl.p vr2, r24, vr1
00076c  ea710cc0  vsrl.p vr3, r24, vr0
000770  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000774  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000778  fa900040  vextracti.f r1, 0(vr1)
00077c  8bec1c10  add.f.rn r25, r25, r1
000780  7a110040  vextracti.f r2, 0(vr0)
000784  0b672710  add.f.rn r14, r14, r2
000788  9f8707f4  addli r15, r15, -1536
00078c  1f0303f4  addli r6, r6, -1536
000790  3f203200  blt.s r4, r3, 8
000794  db2a0000  j 340
000798  9f010400  addli r3, r8, 0
00079c  1ff4f1ff  addli r8, r3, -1
0007a0  0b117420  mul.s r2, r8, r7
0007a4  cb1f25fe  ble.s r10, r2, -28
0007a8  12319002  vadd.s.mz vr2{mr1}, zero, vr9
0007ac  92309002  vadd.s.mz vr1{mr1}, zero, vr9
0007b0  92319002  vadd.s.mz vr3{mr1}, zero, vr9
0007b4  8b142518  sub.s r9, r10, r2
0007b8  bffd44fe  blt.s r9, r4, -132
0007bc  92309002  vadd.s.mz vr1{mr1}, zero, vr9
0007c0  12319002  vadd.s.mz vr2{mr1}, zero, vr9
0007c4  92319002  vadd.s.mz vr3{mr1}, zero, vr9
0007c8  12329002  vadd.s.mz vr4{mr1}, zero, vr9
0007cc  8b957440  min.s r11, r9, r7
0007d0  1f010000  addli r2, zero, 0
0007d4  1f060300  addli r12, r6, 0
0007d8  9f840700  addli r9, r15, 0
0007dc  0b994411  add.s r18, r9, r20
0007e0  8b184611  add.s r17, r12, r20
0007e4  9f0909f4  addli r19, r18, -1536
0007e8  9f0089f4  addli r1, r18, -1472
0007ec  ca820902  vloads.mz vr5{mr1}, 0(r19)
0007f0  4a830002  vloads.mz vr6{mr1}, 0(r1)
0007f4  9f8908f4  addli r19, r17, -1536
0007f8  9f8088f4  addli r1, r17, -1472
0007fc  42840002  vload.mz vr8{mr1}, 0(r1)
000800  c2830902  vload.mz vr7{mr1}, 0(r19)
000804  9f008100  addli r1, r2, 64
000808  86b40300  vfp162float_l.rn vr9, vr7
00080c  06350400  vfp162float_l.rn vr10, vr8
000810  86f30300  vfp162float_h.rn vr7, vr7
000814  06740400  vfp162float_h.rn vr8, vr8
000818  06300300  vfp162float_l.rn vr0, vr6
00081c  86b50200  vfp162float_l.rn vr11, vr5
000820  86f20200  vfp162float_h.rn vr5, vr5
000824  06730300  vfp162float_h.rn vr6, vr6
000828  9694b402  vadd.f.mz.rn vr9{mr1}, vr9, vr11
00082c  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
000830  96925302  vadd.f.mz.rn vr5{mr1}, vr7, vr5
000834  16136402  vadd.f.mz.rn vr6{mr1}, vr8, vr6
000838  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
00083c  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
000840  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
000844  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
000848  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00084c  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
000850  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000854  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000858  4bcb15fe  ble.s r11, r1, -304
00085c  9f0909f5  addli r19, r18, -1408
000860  1f0989f5  addli r18, r18, -1344
000864  9f8008f5  addli r1, r17, -1408
000868  1f010101  addli r2, r2, 128
00086c  9f840402  addli r9, r9, 256
000870  1f060602  addli r12, r12, 256
000874  4a800902  vloads.mz vr0{mr1}, 0(r19)
000878  ca020902  vloads.mz vr5{mr1}, 0(r18)
00087c  42830002  vload.mz vr6{mr1}, 0(r1)
000880  9f8088f5  addli r1, r17, -1344
000884  c2830002  vload.mz vr7{mr1}, 0(r1)
000888  06340300  vfp162float_l.rn vr8, vr6
00088c  06730300  vfp162float_h.rn vr6, vr6
000890  86b40300  vfp162float_l.rn vr9, vr7
000894  86f30300  vfp162float_h.rn vr7, vr7
000898  06350000  vfp162float_l.rn vr10, vr0
00089c  86b50200  vfp162float_l.rn vr11, vr5
0008a0  06700000  vfp162float_h.rn vr0, vr0
0008a4  86f20200  vfp162float_h.rn vr5, vr5
0008a8  1614a402  vadd.f.mz.rn vr8{mr1}, vr8, vr10
0008ac  9694b402  vadd.f.mz.rn vr9{mr1}, vr9, vr11
0008b0  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0008b4  96925302  vadd.f.mz.rn vr5{mr1}, vr7, vr5
0008b8  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
0008bc  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
0008c0  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
0008c4  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
0008c8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0008cc  96915102  vadd.f.mz.rn vr3{mr1}, vr3, vr5
0008d0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0008d4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0008d8  3f1cb1fe  blt.s r2, r11, -252
0008dc  dbc9ffff  j -436
0008e0  1f070000  addli r14, zero, 0
0008e4  9f0c0000  addli r25, zero, 0
0008e8  b7f606fe  beq r13, zero, -580
0008ec  e301bfde  loadli.w r3,  -4264(r30)
0008f0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0008f4  1f010000  addli r2, zero, 0
0008f8  8f803c18  div.f.rn r1, r25, r3
0008fc  8f013718  div.f.rn r3, r14, r3
000900  0be31020  mul.f.rn r6, r1, r1
000904  6a911022  vor.f.mz vr2{mr1}, r1, vr1
000908  8be16118  sub.f.rn r3, r3, r6
00090c  63432f00  loadli.w r6,  20(r30)
000910  8be16110  add.f.rn r3, r3, r6
000914  2b03803f  lui r6, 260096
000918  8f810108  sqrt.f.rn r3, r3
00091c  8f013318  div.f.rn r3, r6, r3
000920  ea911122  vor.f.mz vr3{mr1}, r3, vr1
000924  9f010000  addli r3, zero, 0
000928  8b100111  add.s r1, r2, r16
00092c  0b13b111  add.s r6, r2, r27
000930  0b14c111  add.s r8, r2, r28
000934  9f814100  addli r3, r3, 32
000938  4a800002  vloads.mz vr0{mr1}, 0(r1)
00093c  8b102d10  add.s r1, r26, r2
000940  ca020302  vloads.mz vr5{mr1}, 0(r6)
000944  4a030402  vloads.mz vr6{mr1}, 0(r8)
000948  1f018100  addli r2, r2, 64
00094c  42820002  vload.mz vr4{mr1}, 0(r1)
000950  86330200  vfp162float_l.rn vr7, vr4
000954  06720200  vfp162float_h.rn vr4, vr4
000958  06340000  vfp162float_l.rn vr8, vr0
00095c  06700000  vfp162float_h.rn vr0, vr0
000960  16100202  vadd.f.mz.rn vr0{mr1}, vr4, vr0
000964  96938302  vadd.f.mz.rn vr7{mr1}, vr7, vr8
000968  06340300  vfp162float_l.rn vr8, vr6
00096c  06730300  vfp162float_h.rn vr6, vr6
000970  1e922302  vsub.f.mz.rn vr4{mr1}, vr7, vr2
000974  1e102002  vsub.f.mz.rn vr0{mr1}, vr0, vr2
000978  86b30200  vfp162float_l.rn vr7, vr5
00097c  86f20200  vfp162float_h.rn vr5, vr5
000980  0e924102  vmul.f.mz.rn vr4{mr1}, vr3, vr4
000984  0e900102  vmul.f.mz.rn vr0{mr1}, vr3, vr0
000988  26135002  vmac.f.mz.rn vr6{mr1}, vr0, vr5
00098c  26147202  vmac.f.mz.rn vr8{mr1}, vr4, vr7
000990  12301002  vadd.s.mz vr0{mr1}, zero, vr1
000994  06100400  vfloat2fp16_l.rn vr0, vr8
000998  06500300  vfloat2fp16_h.rn vr0, vr6
00099c  46800002  vstore.mz vr0{mr1}, 0(r1)
0009a0  3faea1fe  blt.s r3, r10, -120
0009a4  e340ffde  loadli.w r1,  -4228(r30)
0009a8  6b540f00  load.d r[9:10], 0(r30)
0009ac  6303efde  loadli.w r6,  -4240(r30)
0009b0  ab0100f0  lui r3, 983040
0009b4  00a00000  mfence { lm }
0009b8  b3900028  sext_int2long r[2:3], r1
0009bc  97113300  or r3, r6, r3
0009c0  97b04002  sll.d r[2:3], r[2:3], r4
0009c4  8b201410  add.ul r[2:3], r[9:10], r[2:3]
0009c8  ffb1a001  s_lm2gm r3, r26, 0(r[2:3])
0009cc  00a00200  mfence { lm, gm }
0009d0  db9affff  j -812
0009d4  9f0e8fde  addli sp, r30, -4288
0009d8  e38f2e21  loadli.w r31,  4240(sp)
0009dc  63cf2e21  loadli.w r30,  4244(sp)
0009e0  638e3e21  loadli.w r28,  4248(sp)
0009e4  e3cd3e21  loadli.w r27,  4252(sp)
0009e8  638d4e21  loadli.w r26,  4256(sp)
0009ec  e3cc4e21  loadli.w r25,  4260(sp)
0009f0  638c5e21  loadli.w r24,  4264(sp)
0009f4  e3cb5e21  loadli.w r23,  4268(sp)
0009f8  638b6e21  loadli.w r22,  4272(sp)
0009fc  e3ca6e21  loadli.w r21,  4276(sp)
000a00  638a7e21  loadli.w r20,  4280(sp)
000a04  e3c97e21  loadli.w r19,  4284(sp)
000a08  9f8e8e21  addli sp, sp, 4288
000a0c  5f800f00  jr r31, 0
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
