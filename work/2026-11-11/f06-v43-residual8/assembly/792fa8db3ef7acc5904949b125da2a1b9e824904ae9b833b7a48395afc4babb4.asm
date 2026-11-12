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
000154  9f8e0edd  addli sp, sp, -4480
000158  67c5ee23  storeli.w r30, 4436(sp)
00015c  1f8f0e23  addli r30, sp, 4480
000160  e7c73e23  storeli.w r19, 4476(sp)
000164  e7874e23  storeli.w r20, 4472(sp)
000168  67c75e23  storeli.w r21, 4468(sp)
00016c  67876e23  storeli.w r22, 4464(sp)
000170  e7c67e23  storeli.w r23, 4460(sp)
000174  e7868e23  storeli.w r24, 4456(sp)
000178  67c69e23  storeli.w r25, 4452(sp)
00017c  6786ae23  storeli.w r26, 4448(sp)
000180  e7c5be23  storeli.w r27, 4444(sp)
000184  e785ce23  storeli.w r28, 4440(sp)
000188  6785fe23  storeli.w r31, 4432(sp)
00018c  9f006fde  addli r1, r30, -4304
000190  e7439fde  storeli.w r9, -4292(r30)
000194  e7038fde  storeli.w r8, -4296(r30)
000198  73b06000  store.d r[7:8], 0(r1)
00019c  80300002  core_id r1
0001a0  1f035fde  addli r6, r30, -4312
0001a4  73302300  store.d r[3:4], 0(r6)
0001a8  3bf00000  bneq r1, zero, 28
0001ac  1f010020  addli r2, zero, 4096
0001b0  ab0100f0  lui r3, 983040
0001b4  17113100  or r2, r2, r3
0001b8  ab010000  lui r3, 0
0001bc  9f810100  addli r3, r3, 0
0001c0  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0001c4  ab150000  lui r11, 1
0001c8  00540102  load_param_i r8, 2
0001cc  1bb15000  slli r2, r1, 5
0001d0  9f110000  addli r3, zero, 1
0001d4  1f038fdf  addli r6, r30, -4160
0001d8  9f038000  addli r7, zero, 64
0001dc  9f040010  addli r9, zero, 2048
0001e0  6e25a562  vxor.u.mz vr10{mr1}, vr10, vr10
0001e4  67428fde  storeli.w r8, -4316(r30)
0001e8  1b345400  slli r8, r8, 5
0001ec  9f850500  addli r11, r11, 0
0001f0  33060128  zext_int2long r[13:14], r2
0001f4  2b0700f0  lui r14, 983040
0001f8  17363602  sll.d r[13:14], r[13:14], r3
0001fc  1797e300  or r14, r7, r14
000200  0b26c210  add.ul r[13:14], r[5:6], r[13:14]
000204  7f276600  l_gm2lm r14, r6, 0(r[13:14])
000208  1b362100  slli r12, r2, 2
00020c  0b112410  add.s r2, r8, r2
000210  00a00200  mfence { lm, gm }
000214  c2000302  vload.mz vr1{mr1}, 0(r6)
000218  93069104  setlt.u r13, r2, r9
00021c  0b16b610  add.s r12, r12, r11
000220  1f078600  addli r14, r12, 64
000224  66411580  vmerge_l.hf vr2, vr10, vr1
000228  e64015a0  vmerge_h.hf vr1, vr10, vr1
00022c  4e102602  vstores_mask16.mz vr2{mr1}, 0(r12)
000230  4e101702  vstores_mask16.mz vr1{mr1}, 0(r14)
000234  bbfe06fe  bneq r13, zero, -68
000238  2bf10000  lui r2, 15
00023c  00a00300  mfence { lm, sm, gm }
000240  1b11f1ff  ori r2, r2, 4095
000244  80210104  csr_set csr3, r2
000248  00d00100  sync_group
00024c  63417fde  loadli.w r2,  -4292(r30)
000250  4b0a1102  ble.s r2, r1, 1664
000254  1f028fdf  addli r4, r30, -4160
000258  2b070000  lui r14, 0
00025c  9f160000  addli r13, zero, 1
000260  1f040020  addli r8, zero, 4096
000264  9f088003  addli r17, zero, 448
000268  1f090002  addli r18, zero, 256
00026c  9f090001  addli r19, zero, 128
000270  1f0a8000  addli r20, zero, 64
000274  9f0a4000  addli r21, zero, 32
000278  1f0b8005  addli r22, zero, 704
00027c  1f0d2000  addli r26, zero, 16
000280  ab0dffff  lui r27, 1048560
000284  9f0cc00f  addli r25, zero, 2016
000288  1f018219  addli r2, r4, 3264
00028c  1f070700  addli r14, r14, 0
000290  e74b2fdc  storeli.w r2, -4420(r30)
000294  1f01820d  addli r2, r4, 1728
000298  e70b2fdc  storeli.w r2, -4424(r30)
00029c  2bf1ffff  lui r2, 1048575
0002a0  00a00000  mfence { lm }
0002a4  9b1701fc  ori r15, r2, 4032
0002a8  2b11833a  lui r2, 239665
0002ac  9b12f126  ori r5, r2, 623
0002b0  2b710000  lui r2, 7
0002b4  1b1ef1ff  ori r28, r2, 4095
0002b8  1f018fdd  addli r2, r30, -4416
0002bc  4610a102  vstore_mask16.mz vr10{mr1}, 0(r2)
0002c0  63017fde  loadli.w r2,  -4296(r30)
0002c4  1232a002  vadd.s.mz vr4{mr1}, zero, vr10
0002c8  1230a002  vadd.s.mz vr0{mr1}, zero, vr10
0002cc  9230a002  vadd.s.mz vr1{mr1}, zero, vr10
0002d0  1231a002  vadd.s.mz vr2{mr1}, zero, vr10
0002d4  0b912010  add.s r2, r1, r2
0002d8  1b31b100  slli r2, r2, 11
0002dc  33110128  sext_int2long r[3:4], r2
0002e0  973bd102  sll.d r[24:25], r[3:4], r13
0002e4  9f015fde  addli r3, r30, -4312
0002e8  2b0100f0  lui r2, 983040
0002ec  6bd30100  load.d r[7:8], 0(r3)
0002f0  17112400  or r2, r8, r2
0002f4  9f810700  addli r3, r15, 0
0002f8  0b237311  add.ul r[7:8], r[7:8], r[24:25]
0002fc  7f214300  l_gm2lm r2, r4, 0(r[7:8])
000300  1f818533  addli r2, r11, 6592
000304  00a00200  mfence { lm, gm }
000308  63437fdd  loadli.w r6,  -4420(r30)
00030c  9f030fdf  addli r7, r30, -4224
000310  1f0481fc  addli r8, r2, -448
000314  9f810101  addli r3, r3, 128
000318  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
00031c  9f0383fe  addli r7, r6, -192
000320  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
000324  1f0403ff  addli r8, r6, -128
000328  42800302  vload.mz vr0{mr1}, 0(r7)
00032c  9f0301fd  addli r7, r2, -384
000330  c2040402  vload.mz vr9{mr1}, 0(r8)
000334  1f048fde  addli r8, r30, -4288
000338  ca930302  vloads_mask16.mz vr7{mr1}, 0(r7)
00033c  9f0381fd  addli r7, r2, -320
000340  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
000344  9f0301fe  addli r7, r2, -256
000348  66430580  vmerge_l.hf vr6, vr10, vr0
00034c  664005a0  vmerge_h.hf vr0, vr10, vr0
000350  ca910302  vloads_mask16.mz vr3{mr1}, 0(r7)
000354  e6459580  vmerge_l.hf vr11, vr10, vr9
000358  e64495a0  vmerge_h.hf vr9, vr10, vr9
00035c  9f0383ff  addli r7, r6, -64
000360  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
000364  96127002  vadd.f.mz.rn vr5{mr1}, vr0, vr7
000368  16106202  vadd.f.mz.rn vr0{mr1}, vr4, vr6
00036c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000370  96938502  vadd.f.mz.rn vr7{mr1}, vr11, vr8
000374  42840302  vload.mz vr8{mr1}, 0(r7)
000378  9f0381fe  addli r7, r2, -192
00037c  ca150102  vloads_mask16.mz vr11{mr1}, 0(r2)
000380  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
000384  16923402  vadd.f.mz.rn vr4{mr1}, vr9, vr3
000388  ca940302  vloads_mask16.mz vr9{mr1}, 0(r7)
00038c  9f0301ff  addli r7, r2, -128
000390  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000394  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000398  46100402  vstore_mask16.mz vr0{mr1}, 0(r8)
00039c  1f040fdf  addli r8, r30, -4224
0003a0  e64285a0  vmerge_h.hf vr5, vr10, vr8
0003a4  42100402  vload_mask16.mz vr0{mr1}, 0(r8)
0003a8  a6104202  vmac.f.mz.rn vr1{mr1}, vr4, vr4
0003ac  96117002  vadd.f.mz.rn vr3{mr1}, vr0, vr7
0003b0  4a900302  vloads_mask16.mz vr0{mr1}, 0(r7)
0003b4  9f0381ff  addli r7, r2, -64
0003b8  c2030302  vload.mz vr7{mr1}, 0(r6)
0003bc  1f010104  addli r2, r2, 512
0003c0  1f030302  addli r6, r6, 256
0003c4  4a930302  vloads_mask16.mz vr6{mr1}, 0(r7)
0003c8  9f038fde  addli r7, r30, -4288
0003cc  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
0003d0  66428580  vmerge_l.hf vr4, vr10, vr8
0003d4  66447580  vmerge_l.hf vr8, vr10, vr7
0003d8  e64375a0  vmerge_h.hf vr7, vr10, vr7
0003dc  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0003e0  9693b302  vadd.f.mz.rn vr7{mr1}, vr7, vr11
0003e4  26114202  vmac.f.mz.rn vr2{mr1}, vr4, vr4
0003e8  96920202  vadd.f.mz.rn vr5{mr1}, vr5, vr0
0003ec  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
0003f0  93831105  setlt.u r7, r3, r17
0003f4  16136402  vadd.f.mz.rn vr6{mr1}, vr8, vr6
0003f8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0003fc  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
000400  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000404  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
000408  16125002  vadd.f.mz.rn vr4{mr1}, vr0, vr5
00040c  16907102  vadd.f.mz.rn vr0{mr1}, vr3, vr7
000410  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000414  bbeb03fe  bneq r7, zero, -264
000418  96110202  vadd.f.mz.rn vr3{mr1}, vr4, vr0
00041c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000420  63047fdd  loadli.w r8,  -4424(r30)
000424  9f81851b  addli r3, r11, 3520
000428  1f830700  addli r6, r15, 0
00042c  6a7139c0  vsrl.p vr2, r18, vr3
000430  6a7219c0  vsrl.p vr4, r18, vr1
000434  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
000438  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00043c  eaf129c0  vsrl.p vr3, r19, vr2
000440  6af219c0  vsrl.p vr4, r19, vr1
000444  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000448  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00044c  ea712ac0  vsrl.p vr3, r20, vr2
000450  6a721ac0  vsrl.p vr4, r20, vr1
000454  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000458  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00045c  eaf12ac0  vsrl.p vr3, r21, vr2
000460  6af21ac0  vsrl.p vr4, r21, vr1
000464  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000468  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00046c  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
000470  92323002  vadd.s.mz vr5{mr1}, zero, vr3
000474  12303002  vadd.s.mz vr0{mr1}, zero, vr3
000478  7a110140  vextracti.f r2, 0(vr2)
00047c  fa930040  vextracti.f r7, 0(vr1)
000480  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000484  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000488  9f040fdf  addli r9, r30, -4224
00048c  1f8881fc  addli r16, r3, -448
000490  1f058fde  addli r10, r30, -4288
000494  1f030301  addli r6, r6, 128
000498  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
00049c  9f0484fe  addli r9, r8, -192
0004a0  ca130802  vloads_mask16.mz vr7{mr1}, 0(r16)
0004a4  1f0804ff  addli r16, r8, -128
0004a8  42830402  vload.mz vr6{mr1}, 0(r9)
0004ac  9f8401fd  addli r9, r3, -384
0004b0  42050802  vload.mz vr10{mr1}, 0(r16)
0004b4  4a940402  vloads_mask16.mz vr8{mr1}, 0(r9)
0004b8  9f8481fd  addli r9, r3, -320
0004bc  ca940402  vloads_mask16.mz vr9{mr1}, 0(r9)
0004c0  9f8401fe  addli r9, r3, -256
0004c4  66c06180  vmerge_l.hf vr0, vr3, vr6
0004c8  66c361a0  vmerge_h.hf vr6, vr3, vr6
0004cc  66c2a180  vmerge_l.hf vr4, vr3, vr10
0004d0  ca950402  vloads_mask16.mz vr11{mr1}, 0(r9)
0004d4  9f0484ff  addli r9, r8, -64
0004d8  96137002  vadd.f.mz.rn vr7{mr1}, vr0, vr7
0004dc  66c0a1a0  vmerge_h.hf vr0, vr3, vr10
0004e0  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0004e4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0004e8  16149202  vadd.f.mz.rn vr8{mr1}, vr4, vr9
0004ec  16927202  vadd.f.mz.rn vr4{mr1}, vr5, vr7
0004f0  c2820402  vload.mz vr5{mr1}, 0(r9)
0004f4  9f8481fe  addli r9, r3, -192
0004f8  ca940402  vloads_mask16.mz vr9{mr1}, 0(r9)
0004fc  9f8401ff  addli r9, r3, -128
000500  1610b002  vadd.f.mz.rn vr0{mr1}, vr0, vr11
000504  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000508  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
00050c  ca950402  vloads_mask16.mz vr11{mr1}, 0(r9)
000510  9f8481ff  addli r9, r3, -64
000514  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000518  ca930402  vloads_mask16.mz vr7{mr1}, 0(r9)
00051c  9f048fde  addli r9, r30, -4288
000520  46104502  vstore_mask16.mz vr4{mr1}, 0(r10)
000524  1f050fdf  addli r10, r30, -4224
000528  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00052c  42120502  vload_mask16.mz vr4{mr1}, 0(r10)
000530  16158202  vadd.f.mz.rn vr10{mr1}, vr4, vr8
000534  42040402  vload.mz vr8{mr1}, 0(r8)
000538  4a920102  vloads_mask16.mz vr4{mr1}, 0(r3)
00053c  9f810104  addli r3, r3, 512
000540  1f040402  addli r8, r8, 256
000544  16150502  vadd.f.mz.rn vr10{mr1}, vr10, vr0
000548  66c05180  vmerge_l.hf vr0, vr3, vr5
00054c  e6c251a0  vmerge_h.hf vr5, vr3, vr5
000550  66c38180  vmerge_l.hf vr6, vr3, vr8
000554  66c481a0  vmerge_h.hf vr8, vr3, vr8
000558  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
00055c  9694b202  vadd.f.mz.rn vr9{mr1}, vr5, vr11
000560  96127302  vadd.f.mz.rn vr5{mr1}, vr6, vr7
000564  42930402  vload_mask16.mz vr6{mr1}, 0(r9)
000568  93046305  setlt.u r9, r6, r22
00056c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000570  16124402  vadd.f.mz.rn vr4{mr1}, vr8, vr4
000574  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000578  16130302  vadd.f.mz.rn vr6{mr1}, vr6, vr0
00057c  16105502  vadd.f.mz.rn vr0{mr1}, vr10, vr5
000580  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
000584  a6104202  vmac.f.mz.rn vr1{mr1}, vr4, vr4
000588  96129302  vadd.f.mz.rn vr5{mr1}, vr6, vr9
00058c  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
000590  bbeb04fe  bneq r9, zero, -264
000594  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000598  16900202  vadd.f.mz.rn vr0{mr1}, vr5, vr0
00059c  8b610110  add.f.rn r3, r2, zero
0005a0  1f038fdf  addli r6, r30, -4160
0005a4  9f848503  addli r9, r11, 448
0005a8  1f880700  addli r16, r15, 0
0005ac  ea7119c0  vsrl.p vr3, r18, vr1
0005b0  6a7109c0  vsrl.p vr2, r18, vr0
0005b4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0005b8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0005bc  eaf119c0  vsrl.p vr3, r19, vr1
0005c0  6af109c0  vsrl.p vr2, r19, vr0
0005c4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0005c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0005cc  ea711ac0  vsrl.p vr3, r20, vr1
0005d0  6a710ac0  vsrl.p vr2, r20, vr0
0005d4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0005d8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0005dc  eaf11ac0  vsrl.p vr3, r21, vr1
0005e0  6af10ac0  vsrl.p vr2, r21, vr0
0005e4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0005e8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0005ec  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
0005f0  92323002  vadd.s.mz vr5{mr1}, zero, vr3
0005f4  92333002  vadd.s.mz vr7{mr1}, zero, vr3
0005f8  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0005fc  7a940040  vextracti.f r8, 0(vr1)
000600  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000604  7a110040  vextracti.f r2, 0(vr0)
000608  1f8504fd  addli r10, r9, -384
00060c  1f8684fc  addli r12, r9, -448
000610  42030302  vload.mz vr6{mr1}, 0(r6)
000614  1f080801  addli r16, r16, 128
000618  4a150502  vloads_mask16.mz vr10{mr1}, 0(r10)
00061c  1f8584fd  addli r10, r9, -320
000620  ca150602  vloads_mask16.mz vr11{mr1}, 0(r12)
000624  1f8604fe  addli r12, r9, -256
000628  4a100502  vloads_mask16.mz vr0{mr1}, 0(r10)
00062c  1f050fdf  addli r10, r30, -4224
000630  4a140602  vloads_mask16.mz vr8{mr1}, 0(r12)
000634  1f060fdf  addli r12, r30, -4224
000638  46100502  vstore_mask16.mz vr0{mr1}, 0(r10)
00063c  66c06180  vmerge_l.hf vr0, vr3, vr6
000640  1f058300  addli r10, r6, 64
000644  66c361a0  vmerge_h.hf vr6, vr3, vr6
000648  42020502  vload.mz vr4{mr1}, 0(r10)
00064c  1f050301  addli r10, r6, 128
000650  1610b002  vadd.f.mz.rn vr0{mr1}, vr0, vr11
000654  1613a302  vadd.f.mz.rn vr6{mr1}, vr6, vr10
000658  42150602  vload_mask16.mz vr10{mr1}, 0(r12)
00065c  c2040502  vload.mz vr9{mr1}, 0(r10)
000660  1f8584fe  addli r10, r9, -192
000664  e6c54180  vmerge_l.hf vr11, vr3, vr4
000668  66c241a0  vmerge_h.hf vr4, vr3, vr4
00066c  96920202  vadd.f.mz.rn vr5{mr1}, vr5, vr0
000670  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000674  4a900402  vloads_mask16.mz vr0{mr1}, 0(r9)
000678  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
00067c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
000680  4a140502  vloads_mask16.mz vr8{mr1}, 0(r10)
000684  1f8504ff  addli r10, r9, -128
000688  1695a502  vadd.f.mz.rn vr10{mr1}, vr11, vr10
00068c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000690  66c391a0  vmerge_h.hf vr6, vr3, vr9
000694  ca150502  vloads_mask16.mz vr11{mr1}, 0(r10)
000698  1f8584ff  addli r10, r9, -64
00069c  9f840404  addli r9, r9, 512
0006a0  46105602  vstore_mask16.mz vr5{mr1}, 0(r12)
0006a4  ca120502  vloads_mask16.mz vr5{mr1}, 0(r10)
0006a8  1f058301  addli r10, r6, 192
0006ac  9693a302  vadd.f.mz.rn vr7{mr1}, vr7, vr10
0006b0  a610a502  vmac.f.mz.rn vr1{mr1}, vr10, vr10
0006b4  1f030302  addli r6, r6, 256
0006b8  42050502  vload.mz vr10{mr1}, 0(r10)
0006bc  1f050fdf  addli r10, r30, -4224
0006c0  96934302  vadd.f.mz.rn vr7{mr1}, vr7, vr4
0006c4  a6104202  vmac.f.mz.rn vr1{mr1}, vr4, vr4
0006c8  66c29180  vmerge_l.hf vr4, vr3, vr9
0006cc  e6c4a180  vmerge_l.hf vr9, vr3, vr10
0006d0  66c5a1a0  vmerge_h.hf vr10, vr3, vr10
0006d4  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
0006d8  42140502  vload_mask16.mz vr8{mr1}, 0(r10)
0006dc  13056805  setlt.u r10, r16, r22
0006e0  1613b302  vadd.f.mz.rn vr6{mr1}, vr6, vr11
0006e4  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
0006e8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0006ec  26114202  vmac.f.mz.rn vr2{mr1}, vr4, vr4
0006f0  16144402  vadd.f.mz.rn vr8{mr1}, vr8, vr4
0006f4  16925302  vadd.f.mz.rn vr4{mr1}, vr7, vr5
0006f8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0006fc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000700  96126402  vadd.f.mz.rn vr5{mr1}, vr8, vr6
000704  96130202  vadd.f.mz.rn vr7{mr1}, vr4, vr0
000708  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00070c  bb7b05fe  bneq r10, zero, -260
000710  16907202  vadd.f.mz.rn vr0{mr1}, vr5, vr7
000714  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000718  0be30310  add.f.rn r6, r7, zero
00071c  0be12110  add.f.rn r2, r3, r2
000720  ea7109c0  vsrl.p vr3, r18, vr0
000724  6a7119c0  vsrl.p vr2, r18, vr1
000728  0b638310  add.f.rn r6, r6, r8
00072c  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000730  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000734  eaf109c0  vsrl.p vr3, r19, vr0
000738  6af119c0  vsrl.p vr2, r19, vr1
00073c  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000740  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000744  ea710ac0  vsrl.p vr3, r20, vr0
000748  6a711ac0  vsrl.p vr2, r20, vr1
00074c  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000750  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000754  eaf10ac0  vsrl.p vr3, r21, vr0
000758  6af11ac0  vsrl.p vr2, r21, vr1
00075c  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000760  fa110040  vextracti.f r3, 0(vr0)
000764  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
000768  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00076c  0b613110  add.f.rn r2, r2, r3
000770  fa110040  vextracti.f r3, 0(vr0)
000774  8b613310  add.f.rn r3, r6, r3
000778  2b03003a  lui r6, 237568
00077c  0b616120  mul.f.rn r2, r2, r6
000780  8be16120  mul.f.rn r3, r3, r6
000784  0b632120  mul.f.rn r6, r2, r2
000788  6a111122  vor.f.mz vr2{mr1}, r2, vr1
00078c  2bf1ffff  lui r2, 1048575
000790  1b1101fe  ori r2, r2, 4064
000794  8be16118  sub.f.rn r3, r3, r6
000798  2b03803f  lui r6, 260096
00079c  8be15110  add.f.rn r3, r3, r5
0007a0  8f810108  sqrt.f.rn r3, r3
0007a4  8f013318  div.f.rn r3, r6, r3
0007a8  ea911122  vor.f.mz vr3{mr1}, r3, vr1
0007ac  9f010000  addli r3, zero, 0
0007b0  8b93e110  add.s r7, r3, r14
0007b4  0b133210  add.s r6, r4, r3
0007b8  6a221d22  vor.u.mz vr4{mr1}, r26, vr1
0007bc  1f018100  addli r2, r2, 64
0007c0  9f810101  addli r3, r3, 128
0007c4  ca820302  vloads.mz vr5{mr1}, 0(r7)
0007c8  9f838300  addli r7, r7, 64
0007cc  42000302  vload.mz vr0{mr1}, 0(r6)
0007d0  13049105  setlt.u r8, r2, r25
0007d4  4a830302  vloads.mz vr6{mr1}, 0(r7)
0007d8  9f038300  addli r7, r6, 64
0007dc  c2830302  vload.mz vr7{mr1}, 0(r7)
0007e0  6e3402a2  vsll.s.mz vr8{mr1}, vr4, vr0
0007e4  6ab00d02  vand.s.mz vr0{mr1}, r27, vr0
0007e8  ee3472a2  vsll.s.mz vr9{mr1}, vr4, vr7
0007ec  eab37d02  vand.s.mz vr7{mr1}, r27, vr7
0007f0  6e3552a2  vsll.s.mz vr10{mr1}, vr4, vr5
0007f4  eab25d02  vand.s.mz vr5{mr1}, r27, vr5
0007f8  ee3562a2  vsll.s.mz vr11{mr1}, vr4, vr6
0007fc  6ab36d02  vand.s.mz vr6{mr1}, r27, vr6
000800  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
000804  1614a402  vadd.f.mz.rn vr8{mr1}, vr8, vr10
000808  16936302  vadd.f.mz.rn vr6{mr1}, vr7, vr6
00080c  9692b402  vadd.f.mz.rn vr5{mr1}, vr9, vr11
000810  9e132402  vsub.f.mz.rn vr7{mr1}, vr8, vr2
000814  1e102002  vsub.f.mz.rn vr0{mr1}, vr0, vr2
000818  9e922202  vsub.f.mz.rn vr5{mr1}, vr5, vr2
00081c  1e132302  vsub.f.mz.rn vr6{mr1}, vr6, vr2
000820  8e937102  vmul.f.mz.rn vr7{mr1}, vr3, vr7
000824  0e900102  vmul.f.mz.rn vr0{mr1}, vr3, vr0
000828  8e925102  vmul.f.mz.rn vr5{mr1}, vr3, vr5
00082c  0e936102  vmul.f.mz.rn vr6{mr1}, vr3, vr6
000830  6e3472c2  vsrl.s.mz vr8{mr1}, vr4, vr7
000834  ee3402c2  vsrl.s.mz vr9{mr1}, vr4, vr0
000838  6e3552c2  vsrl.s.mz vr10{mr1}, vr4, vr5
00083c  ee3562c2  vsrl.s.mz vr11{mr1}, vr4, vr6
000840  6ab48602  vand.s.mz vr8{mr1}, r13, vr8
000844  eab49602  vand.s.mz vr9{mr1}, r13, vr9
000848  6ab5a602  vand.s.mz vr10{mr1}, r13, vr10
00084c  eab5b602  vand.s.mz vr11{mr1}, r13, vr11
000850  96b38302  vadd.s.mz vr7{mr1}, vr7, vr8
000854  16309002  vadd.s.mz vr0{mr1}, vr0, vr9
000858  96b2a202  vadd.s.mz vr5{mr1}, vr5, vr10
00085c  1633b302  vadd.s.mz vr6{mr1}, vr6, vr11
000860  92337e02  vadd.s.mz vr7{mr1}, r28, vr7
000864  12300e02  vadd.s.mz vr0{mr1}, r28, vr0
000868  92325e02  vadd.s.mz vr5{mr1}, r28, vr5
00086c  12336e02  vadd.s.mz vr6{mr1}, r28, vr6
000870  ee3372c2  vsrl.s.mz vr7{mr1}, vr4, vr7
000874  6ab00d02  vand.s.mz vr0{mr1}, r27, vr0
000878  6e3252c2  vsrl.s.mz vr4{mr1}, vr4, vr5
00087c  eab26d02  vand.s.mz vr5{mr1}, r27, vr6
000880  6e307022  vor.s.mz vr0{mr1}, vr0, vr7
000884  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
000888  46000302  vstore.mz vr0{mr1}, 0(r6)
00088c  46804302  vstore.mz vr4{mr1}, 0(r7)
000890  bb0c04fe  bneq r8, zero, -224
000894  9f016fde  addli r3, r30, -4304
000898  2b0100f0  lui r2, 983040
00089c  1f040020  addli r8, zero, 4096
0008a0  6bd30100  load.d r[7:8], 0(r3)
0008a4  17112400  or r2, r8, r2
0008a8  00a00000  mfence { lm }
0008ac  9f018fdd  addli r3, r30, -4416
0008b0  0b237311  add.ul r[7:8], r[7:8], r[24:25]
0008b4  7f314300  s_lm2gm r2, r4, 0(r[7:8])
0008b8  63414fde  loadli.w r2,  -4316(r30)
0008bc  00a00200  mfence { lm, gm }
0008c0  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
0008c4  8b902010  add.s r1, r1, r2
0008c8  63417fde  loadli.w r2,  -4292(r30)
0008cc  bfd720fc  blt.s r1, r2, -1548
0008d0  9f0e0fdd  addli sp, r30, -4480
0008d4  e38fae22  loadli.w r31,  4432(sp)
0008d8  63cfae22  loadli.w r30,  4436(sp)
0008dc  638ebe22  loadli.w r28,  4440(sp)
0008e0  e3cdbe22  loadli.w r27,  4444(sp)
0008e4  638dce22  loadli.w r26,  4448(sp)
0008e8  e3ccce22  loadli.w r25,  4452(sp)
0008ec  638cde22  loadli.w r24,  4456(sp)
0008f0  e3cbde22  loadli.w r23,  4460(sp)
0008f4  638bee22  loadli.w r22,  4464(sp)
0008f8  e3caee22  loadli.w r21,  4468(sp)
0008fc  638afe22  loadli.w r20,  4472(sp)
000900  e3c9fe22  loadli.w r19,  4476(sp)
000904  9f8e0e23  addli sp, sp, 4480
000908  5f800f00  jr r31, 0
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
