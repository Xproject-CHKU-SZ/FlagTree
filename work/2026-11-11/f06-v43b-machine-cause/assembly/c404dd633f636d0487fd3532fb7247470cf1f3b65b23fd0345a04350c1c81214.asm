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
000078  9f099000  addli r19, zero, 72
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
0000ac  d71c0000  jal 228
0000b0  fe8007e0  vmmov mr1, r15
0000b4  fe900720  vmmovh mr1, r15
0000b8  1f8a0eff  addli r20, sp, -128
0000bc  4a100002  vloads_mask16.mz vr0{mr1}, 0(zero)
0000c0  ca108002  vloads_mask16.mz vr1{mr1}, 64(zero)
0000c4  46000a02  vstore.mz vr0{mr1}, 0(r20)
0000c8  46041a02  vstore.mz vr1{mr1}, 64(r20)
0000cc  00a00100  mfence { lm, sm }
0000d0  00d00100  sync_group
0000d4  97a01000  xor r1, r1, r1
0000d8  1f8f0e00  addli r30, sp, 0
0000dc  d71c0000  jal 228
0000e0  00400000  trap
0000e4  9f8e0ecd  addli sp, sp, -6528
0000e8  1f8f0e32  addli r30, sp, 6400
0000ec  805b0002  load_param_i r23, 0
0000f0  eb518f02  load.d r[4:5], 40(r30)
0000f4  1f047fcf  addli r8, r30, -6216
0000f8  eb520f02  load.d r[6:7], 32(r30)
0000fc  9f066fcf  addli r13, r30, -6224
000100  1f075fcf  addli r14, r30, -6232
000104  9f072fcf  addli r15, r30, -6256
000108  eb500f04  load.d r[2:3], 64(r30)
00010c  eb548f03  load.d r[10:11], 56(r30)
000110  eb5a0f03  load.d r[22:23], 48(r30)
000114  eb5d0f01  load.d r[28:29], 16(r30)
000118  1f084fcf  addli r16, r30, -6240
00011c  73303400  store.d r[4:5], 0(r8)
000120  9f110000  addli r3, zero, 1
000124  7330b801  store.d r[28:29], 0(r16)
000128  b385b12e  zext_int2long r[11:12], r3
00012c  eb518f01  load.d r[4:5], 24(r30)
000130  93a3b202  setneq.d r7, r[6:7], r[12:13]
000134  73b03600  store.d r[4:5], 0(r13)
000138  eb518f00  load.d r[4:5], 8(r30)
00013c  73303700  store.d r[4:5], 0(r14)
000140  eb510f00  load.d r[4:5], 0(r30)
000144  73b03700  store.d r[4:5], 0(r15)
000148  80510102  load_param_i r3, 2
00014c  00d20002  load_param_i r4, 1
000150  3be30300  bneq r7, zero, 216
000154  93a3b402  setneq.d r7, r[10:11], r[12:13]
000158  3bc30300  bneq r7, zero, 208
00015c  9f077fcf  addli r15, r30, -6216
000160  9f060030  addli r13, zero, 6144
000164  ebd30700  load.d r[8:9], 0(r15)
000168  b386d62a  zext_int2long r[13:14], r13
00016c  8bb37a18  sub.sl r[8:9], r[22:23], r[8:9]
000170  8bb31320  mul.sl r[8:9], r[8:9], r[2:3]
000174  93b67604  setlt.sl r13, r[14:15], r[8:9]
000178  bbc20600  bneq r13, zero, 176
00017c  9f066fcf  addli r13, r30, -6224
000180  9f028000  addli r5, zero, 64
000184  1f077fcf  addli r14, r30, -6216
000188  ebd40600  load.d r[10:11], 0(r13)
00018c  b382522a  zext_int2long r[5:6], r5
000190  eb550700  load.d r[12:13], 0(r14)
000194  8bb49020  mul.sl r[10:11], r[2:3], r[10:11]
000198  8bb0b020  mul.sl r[2:3], r[2:3], r[12:13]
00019c  9f05dfce  addli r11, r30, -6296
0001a0  93b29204  setlt.sl r5, r[6:7], r[10:11]
0001a4  00330002  core_id r6
0001a8  73b01500  store.d r[2:3], 0(r11)
0001ac  8b103220  mul.s r1, r4, r3
0001b0  8b1b6250  fmac.s r23, r4, r6
0001b4  3b840200  bneq r5, zero, 256
0001b8  1f010018  addli r2, zero, 3072
0001bc  9f120000  addli r5, zero, 1
0001c0  3301212c  zext_int2long r[2:3], r2
0001c4  8f159166  div.sl r[11:12], r[2:3], r[9:10]
0001c8  3381222a  zext_int2long r[2:3], r5
0001cc  13b12504  setlt.sl r2, r[12:13], r[3:4]
0001d0  9f012000  addli r3, zero, 16
0001d4  0b933540  min.s r6, r11, r3
0001d8  b3013028  zext_int2long r[3:4], zero
0001dc  bb000100  bneq r2, zero, 32
0001e0  3f705300  blt.s r6, r5, 28
0001e4  2bf10000  lui r2, 15
0001e8  1b11f1ff  ori r2, r2, 4095
0001ec  97812500  and r3, r11, r2
0001f0  17012300  and r2, r6, r2
0001f4  0b812130  div.u r2, r3, r2
0001f8  b301312c  zext_int2long r[3:4], r2
0001fc  b380102a  zext_int2long r[1:2], r1
000200  b315b32c  sext_int2long r[11:12], r6
000204  bf0f5300  blt.s r6, r5, 992
000208  8f921d62  div.sl r[5:6], r[27:28], r[1:2]
00020c  8bb2b248  max.sl r[6:7], r[6:7], r[12:13]
000210  8ba25510  add.ul r[6:7], r[12:13], r[6:7]
000214  a7f2f2ff  addli.d r[6:7], r[6:7], 32767
000218  8f92b262  div.sl r[5:6], r[5:6], r[11:12]
00021c  a3b20202  slli.d r[6:7], r[6:7], 32
000220  a3d20202  srai.d r[6:7], r[6:7], 32
000224  db780000  j 964
000228  93b5b404  setlt.sl r11, r[10:11], r[12:13]
00022c  80330002  core_id r7
000230  0b9d4120  mul.s r26, r3, r4
000234  8b9b4350  fmac.s r23, r7, r4
000238  8bb35020  mul.sl r[8:9], r[2:3], r[6:7]
00023c  bb950500  bneq r11, zero, 356
000240  abf0ffff  lui r1, 1048575
000244  9f057fcf  addli r11, r30, -6216
000248  9f020002  addli r5, zero, 256
00024c  9b90f0ff  ori r1, r1, 4095
000250  ebd10500  load.d r[4:5], 0(r11)
000254  b382522a  zext_int2long r[5:6], r5
000258  b390102a  sext_int2long r[1:2], r1
00025c  97a01102  xor.d r[2:3], r[4:5], r[2:3]
000260  8ba15411  add.ul r[4:5], r[10:11], r[22:23]
000264  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
000268  8f919066  div.sl r[3:4], r[1:2], r[9:10]
00026c  8bb09320  mul.sl r[2:3], r[8:9], r[10:11]
000270  93b21204  setlt.sl r5, r[6:7], r[2:3]
000274  a3b10102  slli.d r[4:5], r[4:5], 32
000278  23dc0102  srai.d r[25:26], r[4:5], 32
00027c  bb850200  bneq r5, zero, 352
000280  9f010008  addli r3, zero, 1024
000284  b381312e  zext_int2long r[3:4], r3
000288  0f921160  div.sl r[5:6], r[4:5], r[2:3]
00028c  9f100000  addli r1, zero, 1
000290  b380102a  zext_int2long r[1:2], r1
000294  93301204  setlt.sl r1, r[5:6], r[2:3]
000298  3bc40004  bneq r1, zero, 2320
00029c  8b204c10  add.ul r[2:3], r[25:26], r[5:6]
0002a0  a7f0f0ff  addli.d r[2:3], r[2:3], 32767
0002a4  8f904062  div.sl r[1:2], r[1:2], r[4:5]
0002a8  a3b00002  slli.d r[2:3], r[2:3], 32
0002ac  a3d70002  srai.d r[16:17], r[2:3], 32
0002b0  db1f0100  j 2300
0002b4  b385b02a  zext_int2long r[11:12], r1
0002b8  9f000030  addli r1, zero, 6144
0002bc  b306d028  zext_int2long r[13:14], zero
0002c0  8f91bd66  div.sl r[3:4], r[27:28], r[11:12]
0002c4  b380102a  zext_int2long r[1:2], r1
0002c8  8f927062  div.sl r[5:6], r[1:2], r[7:8]
0002cc  9f100000  addli r1, zero, 1
0002d0  b380102a  zext_int2long r[1:2], r1
0002d4  8bb11148  max.sl r[4:5], r[4:5], r[2:3]
0002d8  a3b10102  slli.d r[4:5], r[4:5], 32
0002dc  8bb2d248  max.sl r[6:7], r[6:7], r[14:15]
0002e0  a3d10102  srai.d r[4:5], r[4:5], 32
0002e4  8bb13240  min.sl r[4:5], r[6:7], r[4:5]
0002e8  b3825b2e  zext_int2long r[5:6], r23
0002ec  8bb25120  mul.sl r[6:7], r[4:5], r[6:7]
0002f0  93b65d06  setle.sl r13, r[28:29], r[6:7]
0002f4  bbbf0604  bneq r13, zero, 3052
0002f8  9f082fcf  addli r17, r30, -6256
0002fc  1f09dfce  addli r18, r30, -6296
000300  8bb5b120  mul.sl r[12:13], r[4:5], r[12:13]
000304  ebd60800  load.d r[14:15], 0(r17)
000308  eb570900  load.d r[16:17], 0(r18)
00030c  8ba6f610  add.ul r[14:15], r[14:15], r[16:17]
000310  9f074000  addli r15, zero, 32
000314  1f088fcf  addli r16, r30, -6208
000318  db070000  j 60
00031c  9f0b5fcf  addli r23, r30, -6232
000320  00a00300  mfence { lm, sm, gm }
000324  1f0c4fcf  addli r24, r30, -6240
000328  8bb87820  mul.sl r[18:19], r[18:19], r[8:9]
00032c  ebd90b00  load.d r[20:21], 0(r23)
000330  ab0a00f0  lui r21, 983040
000334  eb5d0c00  load.d r[28:29], 0(r24)
000338  97985801  or r17, r17, r21
00033c  8bb97250  fmac.sl r[20:21], r[6:7], r[8:9]
000340  8ba2b210  add.ul r[6:7], r[6:7], r[12:13]
000344  13bbb205  setlt.sl r22, r[6:7], r[28:29]
000348  ffb80901  s_lm2gm r17, r16, 0(r[20:21])
00034c  00a00200  mfence { lm, gm }
000350  374e0b04  beq r22, zero, 2960
000354  8bb85d18  sub.sl r[18:19], r[28:29], r[6:7]
000358  8bb81141  min.sl r[18:19], r[4:5], r[18:19]
00035c  97b9f802  sll.d r[20:21], r[18:19], r15
000360  93ba1904  setlt.sl r21, r[20:21], r[2:3]
000364  bbee0afe  bneq r21, zero, -72
000368  97d9f902  sra.d r[20:21], r[20:21], r15
00036c  b30a5029  zext_int2long r[21:22], zero
000370  8bbd7a20  mul.sl r[28:29], r[22:23], r[8:9]
000374  8bab5a10  add.ul r[24:25], r[22:23], r[6:7]
000378  a78c0600  addli.d r[26:27], r[14:15], 0
00037c  a79a0a00  addli.d r[22:23], r[22:23], 1
000380  8bbc9b50  fmac.sl r[26:27], r[24:25], r[10:11]
000384  ab0b00f0  lui r23, 983040
000388  13bc3a05  setlt.sl r24, r[22:23], r[20:21]
00038c  8b1db811  add.s r27, r16, r27
000390  979b7301  or r23, r7, r23
000394  ffabbc01  l_gm2lm r23, r27, 0(r[26:27])
000398  3b6f0cfe  bneq r24, zero, -40
00039c  5bf0ffff  j -128
0003a0  330c8029  zext_int2long r[24:25], zero
0003a4  93a08401  seteq.d r1, r[10:11], r[25:26]
0003a8  bbd00000  bneq r1, zero, 52
0003ac  abf0ffff  lui r1, 1048575
0003b0  9f027fcf  addli r5, r30, -6216
0003b4  9b90f0ff  ori r1, r1, 4095
0003b8  ebd10200  load.d r[4:5], 0(r5)
0003bc  b390102a  sext_int2long r[1:2], r1
0003c0  97a01a02  xor.d r[2:3], r[22:23], r[2:3]
0003c4  8ba03010  add.ul r[2:3], r[2:3], r[4:5]
0003c8  8bb10458  neg.sl r[4:5], r[10:11]
0003cc  8bb09018  sub.sl r[2:3], r[2:3], r[10:11]
0003d0  8f903062  div.sl r[1:2], r[1:2], r[3:4]
0003d4  a3b00002  slli.d r[2:3], r[2:3], 32
0003d8  23dc0002  srai.d r[25:26], r[2:3], 32
0003dc  9f00000c  addli r1, zero, 1536
0003e0  27f1f30b  addli.d r[3:4], r[8:9], 1535
0003e4  b3825b2e  zext_int2long r[5:6], r23
0003e8  b306d028  zext_int2long r[13:14], zero
0003ec  9f090fcf  addli r19, r30, -6272
0003f0  1f09ffff  addli r18, r30, -8
0003f4  b385b02a  zext_int2long r[11:12], r1
0003f8  27880600  addli.d r[17:18], r[14:15], 0
0003fc  733cdffe  store.d r[14:15], -8(r30)
000400  7338dffe  store.d r[14:15], -16(r30)
000404  8f10b162  div.sl r[1:2], r[2:3], r[11:12]
000408  a3b10002  slli.d r[4:5], r[2:3], 32
00040c  8b30bc21  mul.sl r[2:3], r[25:26], r[28:29]
000410  a3d10102  srai.d r[4:5], r[4:5], 32
000414  73b01900  store.d r[2:3], 0(r19)
000418  8bb13020  mul.sl r[4:5], r[2:3], r[4:5]
00041c  93b75106  setle.sl r15, r[4:5], r[6:7]
000420  3bf10700  bneq r15, zero, 92
000424  1f0b0fcf  addli r22, r30, -6272
000428  9f0b7fcf  addli r23, r30, -6216
00042c  1f006fcf  addli zero, r30, -6224
000430  eb500b00  load.d r[2:3], 0(r22)
000434  8f961272  mod.sl r[13:14], r[5:6], r[1:2]
000438  0f981260  div.sl r[17:18], r[6:7], r[2:3]
00043c  eb500000  load.d r[2:3], 0(zero)
000440  17200000  xor zero, zero, zero
000444  0f99b665  div.sl r[18:19], r[13:14], r[27:28]
000448  8f96b673  mod.sl r[13:14], r[13:14], r[27:28]
00044c  0b38b820  mul.sl r[17:18], r[17:18], r[12:13]
000450  0bba0319  sub.sl r[21:22], r[8:9], r[17:18]
000454  8b35ba40  min.sl r[12:13], r[21:22], r[12:13]
000458  6bda0b00  load.d r[21:22], 0(r23)
00045c  733cbffe  store.d r[12:13], -8(r30)
000460  0b3a9950  fmac.sl r[21:22], r[19:20], r[10:11]
000464  0bb98651  fmac.sl r[19:20], r[14:15], r[25:26]
000468  0bba1650  fmac.sl r[21:22], r[14:15], r[2:3]
00046c  a7060800  addli.d r[14:15], r[17:18], 0
000470  0b387950  fmac.sl r[17:18], r[19:20], r[8:9]
000474  1f09efff  addli r18, r30, -16
000478  8b367a50  fmac.sl r[14:15], r[21:22], r[8:9]
00047c  73300901  store.d r[17:18], 0(r18)
000480  9f150000  addli r11, zero, 1
000484  9f001fcf  addli r1, r30, -6264
000488  eb588fff  load.d r[18:19], -8(r30)
00048c  b385b52e  zext_int2long r[11:12], r11
000490  73b08001  store.d r[25:26], 0(r1)
000494  93b5b804  setlt.sl r11, r[18:19], r[12:13]
000498  bb800500  bneq r11, zero, 32
00049c  1f0a2fcf  addli r20, r30, -6256
0004a0  9f098fcf  addli r19, r30, -6208
0004a4  eb500a00  load.d r[2:3], 0(r20)
0004a8  2b0800f0  lui r16, 983040
0004ac  17980801  or r16, r17, r16
0004b0  8ba5d010  add.ul r[12:13], r[2:3], r[14:15]
0004b4  7fa83501  l_gm2lm r16, r19, 0(r[12:13])
0004b8  bba80704  bneq r15, zero, 2600
0004bc  9f07000c  addli r15, zero, 1536
0004c0  b3001d2c  zext_int2long r[1:2], r26
0004c4  9f053fcf  addli r11, r30, -6248
0004c8  1f088fcf  addli r16, r30, -6208
0004cc  9f0b0000  addli r23, zero, 0
0004d0  b38a572f  zext_int2long r[21:22], r15
0004d4  73b01500  store.d r[2:3], 0(r11)
0004d8  db060000  j 52
0004dc  1f0d5fcf  addli r26, r30, -6232
0004e0  2b0100f0  lui r2, 983040
0004e4  93b03204  setlt.sl r1, r[6:7], r[4:5]
0004e8  eb590d00  load.d r[20:21], 0(r26)
0004ec  17912800  or r2, r17, r2
0004f0  9f088fcf  addli r17, r30, -6208
0004f4  8b98fb50  fmac.s r17, r23, r15
0004f8  8ba98911  add.ul r[20:21], r[20:21], r[25:26]
0004fc  7fb10901  s_lm2gm r2, r16, 0(r[20:21])
000500  1f880800  addli r16, r17, 0
000504  9f880500  addli r17, r11, 0
000508  37e70004  beq r1, zero, 2520
00050c  1f063fcf  addli r12, r30, -6248
000510  eb500600  load.d r[2:3], 0(r12)
000514  8ba21210  add.ul r[6:7], r[6:7], r[2:3]
000518  93b55106  setle.sl r11, r[4:5], r[6:7]
00051c  bbf10500  bneq r11, zero, 124
000520  9f090fcf  addli r19, r30, -6272
000524  1f001fcf  addli zero, r30, -6264
000528  ebd00900  load.d r[2:3], 0(r19)
00052c  8f951276  mod.sl r[11:12], r[5:6], r[1:2]
000530  8f961262  div.sl r[13:14], r[5:6], r[1:2]
000534  0f9cb561  div.sl r[25:26], r[12:13], r[28:29]
000538  1f0e4fcf  addli r28, r30, -6240
00053c  eb500e00  load.d r[2:3], 0(r28)
000540  0f9d1574  mod.sl r[26:27], r[11:12], r[1:2]
000544  8bb55621  mul.sl r[12:13], r[14:15], r[22:23]
000548  9f067fcf  addli r13, r30, -6216
00054c  ebd00600  load.d r[2:3], 0(r13)
000550  eb560000  load.d r[14:15], 0(zero)
000554  17200000  xor zero, zero, zero
000558  8bb9b318  sub.sl r[20:21], r[8:9], r[12:13]
00055c  1f006fcf  addli zero, r30, -6224
000560  8b309c50  fmac.sl r[2:3], r[25:26], r[10:11]
000564  0b3cdd50  fmac.sl r[25:26], r[27:28], r[14:15]
000568  eb560000  load.d r[14:15], 0(zero)
00056c  17200000  xor zero, zero, zero
000570  8b30dd50  fmac.sl r[2:3], r[27:28], r[14:15]
000574  1f0d4fcf  addli r26, r30, -6240
000578  a7860500  addli.d r[14:15], r[12:13], 0
00057c  8b357c50  fmac.sl r[12:13], r[25:26], r[8:9]
000580  eb5d0d00  load.d r[28:29], 0(r26)
000584  8bb67050  fmac.sl r[14:15], r[2:3], r[8:9]
000588  8bb05941  min.sl r[2:3], r[20:21], r[22:23]
00058c  1f0defff  addli r26, r30, -16
000590  733c1ffe  store.d r[2:3], -8(r30)
000594  db010000  j 12
000598  1f0dffff  addli r26, r30, -8
00059c  b305b028  zext_int2long r[11:12], zero
0005a0  6b5c0fff  load.d r[25:26], -16(r30)
0005a4  7330bd00  store.d r[12:13], 0(r26)
0005a8  b3001028  zext_int2long r[1:2], zero
0005ac  9bab1b00  xori r23, r23, 1
0005b0  00a00000  mfence { lm }
0005b4  eb558fff  load.d r[12:13], -8(r30)
0005b8  93b0b004  setlt.sl r1, r[2:3], r[12:13]
0005bc  b78c00fe  beq r1, zero, -224
0005c0  1f0d2fcf  addli r26, r30, -6256
0005c4  2b0100f0  lui r2, 983040
0005c8  9f008fcf  addli r1, r30, -6208
0005cc  eb590d00  load.d r[20:21], 0(r26)
0005d0  8b90fb50  fmac.s r1, r23, r15
0005d4  17912500  or r2, r11, r2
0005d8  8ba9d910  add.ul r[20:21], r[20:21], r[14:15]
0005dc  7fa11900  l_gm2lm r2, r1, 0(r[20:21])
0005e0  dbdfffff  j -260
0005e4  b3025028  zext_int2long r[5:6], zero
0005e8  8bb1b120  mul.sl r[4:5], r[4:5], r[12:13]
0005ec  8bb2b220  mul.sl r[6:7], r[6:7], r[12:13]
0005f0  9f056fce  addli r11, r30, -6352
0005f4  1f075fce  addli r14, r30, -6360
0005f8  73b03500  store.d r[4:5], 0(r11)
0005fc  8bba5140  min.sl r[22:23], r[4:5], r[6:7]
000600  b3813b2e  zext_int2long r[3:4], r23
000604  73305700  store.d r[6:7], 0(r14)
000608  0bb63a20  mul.sl r[13:14], r[22:23], r[4:5]
00060c  93b1cd06  setle.sl r3, r[28:29], r[13:14]
000610  3bc60102  bneq r3, zero, 1424
000614  8bb2cd18  sub.sl r[6:7], r[28:29], r[13:14]
000618  9f0b2fcf  addli r23, r30, -6256
00061c  1f0c1fcf  addli r24, r30, -6264
000620  1f470000  addli r14, zero, 4
000624  9f0c8fcf  addli r25, r30, -6208
000628  8bb91a20  mul.sl r[20:21], r[22:23], r[2:3]
00062c  1f0d0000  addli r26, zero, 0
000630  8bb85a40  min.sl r[18:19], r[22:23], r[6:7]
000634  ebd10b00  load.d r[4:5], 0(r23)
000638  73305c00  store.d r[6:7], 0(r24)
00063c  ab0500f0  lui r11, 983040
000640  8b90e430  div.s r1, r9, r14
000644  9f0b1000  addli r23, zero, 8
000648  8bb29820  mul.sl r[6:7], r[18:19], r[10:11]
00064c  8b319650  fmac.sl r[4:5], r[13:14], r[10:11]
000650  9792b200  or r5, r5, r11
000654  0b93e330  div.s r6, r7, r14
000658  ffa29101  l_gm2lm r5, r25, 0(r[4:5])
00065c  9bb72000  slli r15, r1, 2
000660  9bb03000  slli r1, r1, 3
000664  17929300  or r4, r7, r9
000668  00a00200  mfence { lm, gm }
00066c  2bf1ffff  lui r2, 1048575
000670  9bb02000  slli r1, r1, 2
000674  1b023200  andi r4, r4, 3
000678  1b11f1ff  ori r2, r2, 4095
00067c  9b01f300  andi r3, r6, 15
000680  67421fce  storeli.w r1, -6364(r30)
000684  1b382300  slli r16, r6, 2
000688  e7054fce  storeli.w r4, -6312(r30)
00068c  97313100  sll r3, r2, r3
000690  17a12100  xor r2, r3, r2
000694  9b313300  slli r3, r6, 3
000698  9bb02100  slli r1, r3, 2
00069c  7e0001e0  vmmov mr0, r2
0006a0  1f01cfce  addli r2, r30, -6304
0006a4  67021fce  storeli.w r1, -6368(r30)
0006a8  9f007fce  addli r1, r30, -6344
0006ac  73303101  store.d r[20:21], 0(r2)
0006b0  73b05001  store.d r[22:23], 0(r1)
0006b4  5b110000  j 136
0006b8  00a00000  mfence { lm }
0006bc  9f055fcf  addli r11, r30, -6232
0006c0  1f07efce  addli r14, r30, -6288
0006c4  1f0c0fcf  addli r24, r30, -6272
0006c8  1b2d1d00  xori r26, r26, 1
0006cc  9f0c8fcf  addli r25, r30, -6208
0006d0  9f0b1fcf  addli r23, r30, -6264
0006d4  e3017fcf  loadli.w r3,  -6216(r30)
0006d8  ebd00500  load.d r[2:3], 0(r11)
0006dc  2b0200f0  lui r4, 983040
0006e0  eb520700  load.d r[6:7], 0(r14)
0006e4  6b560c00  load.d r[13:14], 0(r24)
0006e8  8b917120  mul.s r3, r3, r7
0006ec  8bb07250  fmac.sl r[2:3], r[6:7], r[8:9]
0006f0  e3023fcf  loadli.w r5,  -6248(r30)
0006f4  1f034fcf  addli r6, r30, -6240
0006f8  97914100  or r3, r3, r4
0006fc  eb5d0300  load.d r[28:29], 0(r6)
000700  ffb15000  s_lm2gm r3, r5, 0(r[2:3])
000704  9f000018  addli r1, zero, 3072
000708  9f011fcf  addli r3, r30, -6264
00070c  9f02cfce  addli r5, r30, -6304
000710  00a00200  mfence { lm, gm }
000714  8b1c1d50  fmac.s r25, r26, r1
000718  ebd00100  load.d r[2:3], 0(r3)
00071c  ebd90200  load.d r[20:21], 0(r5)
000720  1332b605  setlt.sl r4, r[13:14], r[28:29]
000724  8bb03019  sub.sl r[2:3], r[2:3], r[20:21]
000728  73b01b00  store.d r[2:3], 0(r23)
00072c  9f00ffce  addli r1, r30, -6280
000730  9f0b1000  addli r23, zero, 8
000734  ebd80000  load.d r[18:19], 0(r1)
000738  b7210202  beq r4, zero, 1128
00073c  1f02efce  addli r4, r30, -6288
000740  9f810800  addli r3, r17, 0
000744  7330c200  store.d r[13:14], 0(r4)
000748  8b253611  add.ul r[12:13], r[13:14], r[20:21]
00074c  e70b3fce  storeli.w r3, -6216(r30)
000750  8bb0bd18  sub.sl r[2:3], r[28:29], r[12:13]
000754  8bb61a40  min.sl r[14:15], r[22:23], r[2:3]
000758  9f100000  addli r1, zero, 1
00075c  bfc01600  blt.s r13, r1, 48
000760  9f082fcf  addli r17, r30, -6256
000764  9b201d00  xori r1, r26, 1
000768  1f018fcf  addli r2, r30, -6208
00076c  9f020018  addli r5, zero, 3072
000770  ebd10800  load.d r[4:5], 0(r17)
000774  0b915050  fmac.s r2, r1, r5
000778  8bb29620  mul.sl r[6:7], r[14:15], r[10:11]
00077c  ab0000f0  lui r1, 983040
000780  97901200  or r1, r5, r1
000784  8bb19550  fmac.sl r[4:5], r[12:13], r[10:11]
000788  ffa02100  l_gm2lm r1, r2, 0(r[4:5])
00078c  9f01dfce  addli r3, r30, -6296
000790  1f02ffce  addli r4, r30, -6280
000794  e7099fcf  storeli.w r25, -6248(r30)
000798  ebd00100  load.d r[2:3], 0(r3)
00079c  7330d200  store.d r[14:15], 0(r4)
0007a0  0b9a1c10  add.s r20, r25, r1
0007a4  e300bfce  loadli.w r1,  -6312(r30)
0007a8  1f010fcf  addli r2, r30, -6272
0007ac  7330b100  store.d r[12:13], 0(r2)
0007b0  b7810000  beq r1, zero, 96
0007b4  63017fcf  loadli.w r2,  -6216(r30)
0007b8  9f100000  addli r1, zero, 1
0007bc  bf7b11fe  blt.s r2, r1, -260
0007c0  63013fcf  loadli.w r2,  -6248(r30)
0007c4  9f000000  addli r1, zero, 0
0007c8  5b030000  j 24
0007cc  e3017fcf  loadli.w r3,  -6216(r30)
0007d0  9f900000  addli r1, r1, 1
0007d4  0b117110  add.s r2, r2, r7
0007d8  0b1a9a10  add.s r20, r20, r9
0007dc  37fb30fe  beq r1, r3, -292
0007e0  9f010a00  addli r3, r20, 0
0007e4  1f020100  addli r4, r2, 0
0007e8  9f820300  addli r5, r7, 0
0007ec  1f130000  addli r6, zero, 1
0007f0  3fff63fe  blt.s r7, r6, -36
0007f4  6b930100  load.bu r6, 0(r3)
0007f8  9ff2f2ff  addli r5, r5, -1
0007fc  9f910100  addli r3, r3, 1
000800  73006200  store.b r6, 0(r4)
000804  1f120200  addli r4, r4, 1
000808  bbbf02fe  bneq r5, zero, -20
00080c  5bf8ffff  j -64
000810  e3097fcf  loadli.w r19,  -6216(r30)
000814  9f110000  addli r3, zero, 1
000818  1f021000  addli r4, zero, 8
00081c  6704afcf  storeli.w r26, -6336(r30)
000820  1bb10100  slli r2, r3, 0
000824  1bb63100  slli r12, r3, 3
000828  1bbe4100  slli r28, r3, 4
00082c  9bb55100  slli r11, r3, 5
000830  9bb86100  slli r17, r3, 6
000834  1bb97100  slli r18, r3, 7
000838  9bb6a100  slli r13, r3, 10
00083c  1bb7b100  slli r14, r3, 11
000840  9bb2c100  slli r5, r3, 12
000844  1bb3d100  slli r6, r3, 13
000848  1bbce100  slli r24, r3, 14
00084c  8b907931  div.s r1, r19, r23
000850  67052fce  storeli.w r2, -6320(r30)
000854  1bb11100  slli r2, r3, 1
000858  670b2fce  storeli.w r2, -6224(r30)
00085c  1bb12100  slli r2, r3, 2
000860  e7042fce  storeli.w r2, -6328(r30)
000864  1bb19100  slli r2, r3, 9
000868  9bbd3000  slli r27, r1, 3
00086c  9bb08100  slli r1, r3, 8
000870  3f874900  blt.s r19, r4, 448
000874  e30bafce  loadli.w r23,  -6320(r30)
000878  e3099fce  loadli.w r19,  -6328(r30)
00087c  1f020000  addli r4, zero, 0
000880  9f8a0c00  addli r21, r25, 0
000884  6a200002  vand.u.mz vr0{mr1}, zero, vr0
000888  7e810be0  vmmov mr2, r23
00088c  1f8d0a00  addli r26, r21, 0
000890  1f021200  addli r4, r4, 8
000894  8b1a0d11  add.s r21, r26, r16
000898  6a200034  vor.u.mh vr0{mr2}, zero, vr0
00089c  e3016fcf  loadli.w r3,  -6224(r30)
0008a0  7e8101e0  vmmov mr2, r3
0008a4  9f410000  addli r3, zero, 4
0008a8  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
0008ac  9f011000  addli r3, zero, 8
0008b0  7e8109e0  vmmov mr2, r19
0008b4  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
0008b8  9f411000  addli r3, zero, 12
0008bc  7e0106e0  vmmov mr2, r12
0008c0  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
0008c4  9f012000  addli r3, zero, 16
0008c8  7e010ee0  vmmov mr2, r28
0008cc  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
0008d0  9f412000  addli r3, zero, 20
0008d4  7e8105e0  vmmov mr2, r11
0008d8  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
0008dc  9f013000  addli r3, zero, 24
0008e0  7e8108e0  vmmov mr2, r17
0008e4  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
0008e8  9f413000  addli r3, zero, 28
0008ec  7e0109e0  vmmov mr2, r18
0008f0  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
0008f4  9f014000  addli r3, zero, 32
0008f8  7e8100e0  vmmov mr2, r1
0008fc  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000900  9f414000  addli r3, zero, 36
000904  7e0101e0  vmmov mr2, r2
000908  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
00090c  9f015000  addli r3, zero, 40
000910  7e8106e0  vmmov mr2, r13
000914  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000918  9f415000  addli r3, zero, 44
00091c  7e0107e0  vmmov mr2, r14
000920  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000924  9f016000  addli r3, zero, 48
000928  7e8102e0  vmmov mr2, r5
00092c  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000930  9f416000  addli r3, zero, 52
000934  7e0103e0  vmmov mr2, r6
000938  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
00093c  9f017000  addli r3, zero, 56
000940  7e010ce0  vmmov mr2, r24
000944  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000948  ab810000  lui r3, 8
00094c  9f8c0100  addli r25, r3, 0
000950  9f010a00  addli r3, r20, 0
000954  1f4a7000  addli r20, zero, 60
000958  7e810ce0  vmmov mr2, r25
00095c  6a200a34  vor.u.mh vr0{mr2}, r20, vr0
000960  0b9af110  add.s r20, r3, r15
000964  8b1cfa10  add.s r25, r20, r15
000968  e2200a02  vgather_mask16.mz vr1{mr1}, vr0{r20}
00096c  62a10102  vgather_mask16.mz vr2{mr1}, vr0{r3}
000970  0b9afc10  add.s r20, r25, r15
000974  e2a10c02  vgather_mask16.mz vr3{mr1}, vr0{r25}
000978  8b1cfa10  add.s r25, r20, r15
00097c  62220a02  vgather_mask16.mz vr4{mr1}, vr0{r20}
000980  0b9afc10  add.s r20, r25, r15
000984  e2a20c02  vgather_mask16.mz vr5{mr1}, vr0{r25}
000988  8b1cfa10  add.s r25, r20, r15
00098c  62230a02  vgather_mask16.mz vr6{mr1}, vr0{r20}
000990  0b9afc10  add.s r20, r25, r15
000994  62a40c02  vgather_mask16.mz vr8{mr1}, vr0{r25}
000998  8b9c0a11  add.s r25, r21, r16
00099c  e2230a02  vgather_mask16.mz vr7{mr1}, vr0{r20}
0009a0  00a00000  mfence { lm }
0009a4  0b1afa10  add.s r20, r20, r15
0009a8  62602d10  vscatter_mask16.mh vr2{mr0}, vr0{r26}
0009ac  62e01a10  vscatter_mask16.mh vr1{mr0}, vr0{r21}
0009b0  8b9a0c11  add.s r21, r25, r16
0009b4  62e03c10  vscatter_mask16.mh vr3{mr0}, vr0{r25}
0009b8  8b9c0a11  add.s r25, r21, r16
0009bc  62e04a10  vscatter_mask16.mh vr4{mr0}, vr0{r21}
0009c0  8b9a0c11  add.s r21, r25, r16
0009c4  62e05c10  vscatter_mask16.mh vr5{mr0}, vr0{r25}
0009c8  8b9c0a11  add.s r25, r21, r16
0009cc  62e06a10  vscatter_mask16.mh vr6{mr0}, vr0{r21}
0009d0  0b9b0c11  add.s r22, r25, r16
0009d4  62e08c10  vscatter_mask16.mh vr8{mr0}, vr0{r25}
0009d8  8b1a0b11  add.s r21, r22, r16
0009dc  62607b10  vscatter_mask16.mh vr7{mr0}, vr0{r22}
0009e0  bf1ab2ff  blt.s r4, r27, -348
0009e4  63424fce  loadli.w r4,  -6364(r30)
0009e8  e3096fcf  loadli.w r19,  -6224(r30)
0009ec  9f0b0c00  addli r23, r24, 0
0009f0  1f0c0300  addli r24, r6, 0
0009f4  1f830200  addli r6, r5, 0
0009f8  9f020700  addli r5, r14, 0
0009fc  1f870600  addli r14, r13, 0
000a00  9f060100  addli r13, r2, 0
000a04  1f810000  addli r2, r1, 0
000a08  9f000900  addli r1, r18, 0
000a0c  1f890800  addli r18, r17, 0
000a10  9f880500  addli r17, r11, 0
000a14  0b9a4110  add.s r20, r3, r4
000a18  e3014fce  loadli.w r3,  -6368(r30)
000a1c  0b123d10  add.s r4, r26, r3
000a20  9f017fce  addli r3, r30, -6344
000a24  630d8fce  loadli.w r26,  -6336(r30)
000a28  ebda0100  load.d r[22:23], 0(r3)
000a2c  db060000  j 52
000a30  e3096fcf  loadli.w r19,  -6224(r30)
000a34  9f0b0c00  addli r23, r24, 0
000a38  1f0c0300  addli r24, r6, 0
000a3c  1f830200  addli r6, r5, 0
000a40  9f020700  addli r5, r14, 0
000a44  1f870600  addli r14, r13, 0
000a48  9f060100  addli r13, r2, 0
000a4c  1f810000  addli r2, r1, 0
000a50  9f000900  addli r1, r18, 0
000a54  1f890800  addli r18, r17, 0
000a58  9f880500  addli r17, r11, 0
000a5c  1f820c00  addli r4, r25, 0
000a60  9f8c0d00  addli r25, r27, 0
000a64  e30dafce  loadli.w r27,  -6320(r30)
000a68  e3017fcf  loadli.w r3,  -6216(r30)
000a6c  e3059fce  loadli.w r11,  -6328(r30)
000a70  4ba191ff  ble.s r3, r25, -952
000a74  1f0d5fce  addli r26, r30, -6360
000a78  1f001fcf  addli zero, r30, -6264
000a7c  9f810c00  addli r3, r25, 0
000a80  eb5a0d00  load.d r[22:23], 0(r26)
000a84  eb5c0000  load.d r[26:27], 0(zero)
000a88  17200000  xor zero, zero, zero
000a8c  1f006fce  addli zero, r30, -6352
000a90  8bbc5c41  min.sl r[26:27], r[26:27], r[22:23]
000a94  eb5a0000  load.d r[22:23], 0(zero)
000a98  17200000  xor zero, zero, zero
000a9c  1f007fce  addli zero, r30, -6344
000aa0  8bbc5c41  min.sl r[26:27], r[26:27], r[22:23]
000aa4  eb5a0000  load.d r[22:23], 0(zero)
000aa8  17200000  xor zero, zero, zero
000aac  8b9c9119  sub.s r25, r3, r25
000ab0  630d8fce  loadli.w r26,  -6336(r30)
000ab4  6a200002  vand.u.mz vr0{mr1}, zero, vr0
000ab8  7e810de0  vmmov mr2, r27
000abc  9f410000  addli r3, zero, 4
000ac0  9f9c0c00  addli r25, r25, 1
000ac4  6a200034  vor.u.mh vr0{mr2}, zero, vr0
000ac8  7e8109e0  vmmov mr2, r19
000acc  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000ad0  9f011000  addli r3, zero, 8
000ad4  7e8105e0  vmmov mr2, r11
000ad8  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000adc  9f411000  addli r3, zero, 12
000ae0  7e0106e0  vmmov mr2, r12
000ae4  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000ae8  9f012000  addli r3, zero, 16
000aec  7e010ee0  vmmov mr2, r28
000af0  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000af4  9f412000  addli r3, zero, 20
000af8  7e8108e0  vmmov mr2, r17
000afc  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000b00  9f013000  addli r3, zero, 24
000b04  7e0109e0  vmmov mr2, r18
000b08  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000b0c  9f413000  addli r3, zero, 28
000b10  7e8100e0  vmmov mr2, r1
000b14  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000b18  9f014000  addli r3, zero, 32
000b1c  7e0101e0  vmmov mr2, r2
000b20  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000b24  9f414000  addli r3, zero, 36
000b28  7e8106e0  vmmov mr2, r13
000b2c  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000b30  9f015000  addli r3, zero, 40
000b34  7e0107e0  vmmov mr2, r14
000b38  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000b3c  9f415000  addli r3, zero, 44
000b40  7e8102e0  vmmov mr2, r5
000b44  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000b48  9f016000  addli r3, zero, 48
000b4c  7e0103e0  vmmov mr2, r6
000b50  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000b54  9f416000  addli r3, zero, 52
000b58  7e010ce0  vmmov mr2, r24
000b5c  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000b60  9f017000  addli r3, zero, 56
000b64  7e810be0  vmmov mr2, r23
000b68  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000b6c  ab810000  lui r3, 8
000b70  9f810100  addli r3, r3, 0
000b74  7e8101e0  vmmov mr2, r3
000b78  9f417000  addli r3, zero, 60
000b7c  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000b80  e2200a02  vgather_mask16.mz vr1{mr1}, vr0{r20}
000b84  00a00000  mfence { lm }
000b88  0b1afa10  add.s r20, r20, r15
000b8c  62601210  vscatter_mask16.mh vr1{mr0}, vr0{r4}
000b90  0b120211  add.s r4, r4, r16
000b94  00a00000  mfence { lm }
000b98  3bfc0cfe  bneq r25, zero, -228
000b9c  db63ffff  j -1252
000ba0  00a00300  mfence { lm, sm, gm }
000ba4  db670000  j 828
000ba8  b307f028  zext_int2long r[15:16], zero
000bac  8bb8b721  mul.sl r[18:19], r[16:17], r[28:29]
000bb0  b3893b2f  zext_int2long r[19:20], r23
000bb4  9f00bfce  addli r1, r30, -6312
000bb8  1f01afce  addli r2, r30, -6320
000bbc  1f033fcf  addli r6, r30, -6248
000bc0  1f071fcf  addli r14, r30, -6264
000bc4  8b359220  mul.sl r[12:13], r[5:6], r[10:11]
000bc8  9f06cfce  addli r13, r30, -6304
000bcc  e707afcf  storeli.w r26, -6280(r30)
000bd0  93b13807  setle.sl r3, r[18:19], r[20:21]
000bd4  73b04000  store.d r[5:6], 0(r1)
000bd8  7330f100  store.d r[16:17], 0(r2)
000bdc  73301301  store.d r[18:19], 0(r6)
000be0  73b0b600  store.d r[12:13], 0(r13)
000be4  73308701  store.d r[25:26], 0(r14)
000be8  3b920100  bneq r3, zero, 132
000bec  8b90fb38  mod.s r1, r23, r15
000bf0  1f0e7fcf  addli r28, r30, -6216
000bf4  270d0200  addli.d r[27:28], r[5:6], 0
000bf8  0b93fb30  div.s r6, r23, r15
000bfc  9f0b3fcf  addli r23, r30, -6248
000c00  6b520e00  load.d r[5:6], 0(r28)
000c04  b380102a  zext_int2long r[1:2], r1
000c08  b317f32c  sext_int2long r[15:16], r6
000c0c  1f036fcf  addli r6, r30, -6224
000c10  0bb21550  fmac.sl r[5:6], r[12:13], r[2:3]
000c14  8b301d20  mul.sl r[2:3], r[27:28], r[2:3]
000c18  eb580300  load.d r[18:19], 0(r6)
000c1c  8bb54a18  sub.sl r[12:13], r[22:23], r[5:6]
000c20  8b30fc50  fmac.sl r[2:3], r[25:26], r[16:17]
000c24  9f0ccfce  addli r25, r30, -6304
000c28  0bb21751  fmac.sl r[5:6], r[16:17], r[18:19]
000c2c  ebd80b00  load.d r[18:19], 0(r23)
000c30  8ba6b410  add.ul r[14:15], r[10:11], r[12:13]
000c34  ebd70c00  load.d r[16:17], 0(r25)
000c38  0b327220  mul.sl r[5:6], r[5:6], r[8:9]
000c3c  a7f6f6ff  addli.d r[14:15], r[14:15], 32767
000c40  8bbbb740  min.sl r[24:25], r[16:17], r[12:13]
000c44  8f969662  div.sl r[13:14], r[13:14], r[9:10]
000c48  a3b60602  slli.d r[14:15], r[14:15], 32
000c4c  a3d50602  srai.d r[12:13], r[14:15], 32
000c50  9f064fcf  addli r13, r30, -6240
000c54  8b3cbd40  min.sl r[26:27], r[27:28], r[12:13]
000c58  8bbd7020  mul.sl r[28:29], r[2:3], r[8:9]
000c5c  73b04600  store.d r[5:6], 0(r13)
000c60  9f100000  addli r1, zero, 1
000c64  3fb11b00  blt.s r23, r1, 76
000c68  5b040000  j 32
000c6c  b30db029  zext_int2long r[27:28], zero
000c70  9f004fcf  addli r1, r30, -6240
000c74  9f0b0000  addli r23, zero, 0
000c78  9f0c0000  addli r25, zero, 0
000c7c  73b0b001  store.d r[28:29], 0(r1)
000c80  9f100000  addli r1, zero, 1
000c84  bfb01b00  blt.s r23, r1, 44
000c88  9f052fcf  addli r11, r30, -6256
000c8c  1f064fcf  addli r12, r30, -6240
000c90  1f038fcf  addli r6, r30, -6208
000c94  ebd00500  load.d r[2:3], 0(r11)
000c98  6b520600  load.d r[5:6], 0(r12)
000c9c  8ba04010  add.ul r[2:3], r[2:3], r[5:6]
000ca0  0b927b20  mul.s r4, r23, r7
000ca4  ab0200f0  lui r5, 983040
000ca8  17125200  or r4, r4, r5
000cac  7fa26000  l_gm2lm r4, r6, 0(r[2:3])
000cb0  a7870a00  addli.d r[16:17], r[22:23], 0
000cb4  a78a0b00  addli.d r[22:23], r[24:25], 0
000cb8  bba80100  bneq r3, zero, 552
000cbc  e300ffce  loadli.w r1,  -6280(r30)
000cc0  9f01ffce  addli r3, r30, -6280
000cc4  1f028fce  addli r4, r30, -6336
000cc8  1f170000  addli r14, zero, 1
000ccc  9f028fcf  addli r5, r30, -6208
000cd0  1f030000  addli r6, zero, 0
000cd4  b380102a  zext_int2long r[1:2], r1
000cd8  73b01100  store.d r[2:3], 0(r3)
000cdc  a7f0f4ff  addli.d r[2:3], r[10:11], 32767
000ce0  73301200  store.d r[2:3], 0(r4)
000ce4  9f000fcf  addli r1, r30, -6272
000ce8  1f019fce  addli r2, r30, -6328
000cec  73b09000  store.d r[10:11], 0(r1)
000cf0  7330f100  store.d r[16:17], 0(r2)
000cf4  5b0d0000  j 104
000cf8  9f009fce  addli r1, r30, -6328
000cfc  1f013fcf  addli r2, r30, -6248
000d00  9f05efce  addli r11, r30, -6288
000d04  1f06dfce  addli r12, r30, -6296
000d08  00a00000  mfence { lm }
000d0c  1f170000  addli r14, zero, 1
000d10  ebd70000  load.d r[16:17], 0(r1)
000d14  eb580100  load.d r[18:19], 0(r2)
000d18  ebda0500  load.d r[22:23], 0(r11)
000d1c  eb5b0600  load.d r[24:25], 0(r12)
000d20  0b917c20  mul.s r2, r25, r7
000d24  9f0c5fcf  addli r25, r30, -6232
000d28  ab0500f0  lui r11, 983040
000d2c  93b01905  setlt.sl r1, r[20:21], r[18:19]
000d30  1b231300  xori r6, r6, 1
000d34  6bd60c00  load.d r[13:14], 0(r25)
000d38  1711b100  or r2, r2, r11
000d3c  9f8c0b00  addli r25, r23, 0
000d40  0b26b611  add.ul r[13:14], r[13:14], r[28:29]
000d44  a78d0100  addli.d r[28:29], r[4:5], 0
000d48  7f315600  s_lm2gm r2, r5, 0(r[13:14])
000d4c  1b31a300  slli r2, r6, 10
000d50  9f028fcf  addli r5, r30, -6208
000d54  8b922210  add.s r5, r5, r2
000d58  37a60000  beq r1, zero, 392
000d5c  9f01ffce  addli r3, r30, -6280
000d60  ebd00100  load.d r[2:3], 0(r3)
000d64  8ba91910  add.ul r[20:21], r[20:21], r[2:3]
000d68  93b03807  setle.sl r1, r[18:19], r[20:21]
000d6c  bbc20000  bneq r1, zero, 176
000d70  9f0bafce  addli r23, r30, -6320
000d74  1f0c7fcf  addli r24, r30, -6216
000d78  9f08cfce  addli r17, r30, -6304
000d7c  1f008fce  addli zero, r30, -6336
000d80  ebd60b00  load.d r[14:15], 0(r23)
000d84  ebda0800  load.d r[22:23], 0(r17)
000d88  eb510c00  load.d r[4:5], 0(r24)
000d8c  a7880400  addli.d r[18:19], r[10:11], 0
000d90  a7840700  addli.d r[10:11], r[16:17], 0
000d94  8f90d972  mod.sl r[1:2], r[19:20], r[13:14]
000d98  8f96d962  div.sl r[13:14], r[19:20], r[13:14]
000d9c  8bb15051  fmac.sl r[4:5], r[2:3], r[22:23]
000da0  8bb53718  sub.sl r[12:13], r[16:17], r[4:5]
000da4  eb570000  load.d r[16:17], 0(zero)
000da8  17200000  xor zero, zero, zero
000dac  1f006fcf  addli zero, r30, -6224
000db0  8bbaba40  min.sl r[22:23], r[22:23], r[12:13]
000db4  8ba7b710  add.ul r[16:17], r[16:17], r[12:13]
000db8  8f971767  div.sl r[15:16], r[15:16], r[17:18]
000dbc  9f08bfce  addli r17, r30, -6312
000dc0  ebdb0800  load.d r[24:25], 0(r17)
000dc4  eb580000  load.d r[18:19], 0(zero)
000dc8  17200000  xor zero, zero, zero
000dcc  1f001fcf  addli zero, r30, -6264
000dd0  8bb11651  fmac.sl r[4:5], r[14:15], r[18:19]
000dd4  eb580000  load.d r[18:19], 0(zero)
000dd8  8bb07021  mul.sl r[2:3], r[2:3], r[24:25]
000ddc  17200000  xor zero, zero, zero
000de0  8bb17120  mul.sl r[4:5], r[4:5], r[8:9]
000de4  8bb01651  fmac.sl r[2:3], r[14:15], r[18:19]
000de8  9f063fcf  addli r13, r30, -6248
000dec  ebd80600  load.d r[18:19], 0(r13)
000df0  a3b60702  slli.d r[14:15], r[16:17], 32
000df4  a7870400  addli.d r[16:17], r[10:11], 0
000df8  9f044fcf  addli r9, r30, -6240
000dfc  a3d50602  srai.d r[12:13], r[14:15], 32
000e00  73b03400  store.d r[4:5], 0(r9)
000e04  1f170000  addli r14, zero, 1
000e08  8bb17020  mul.sl r[4:5], r[2:3], r[8:9]
000e0c  8bbbbb40  min.sl r[24:25], r[24:25], r[12:13]
000e10  00a00000  mfence { lm }
000e14  3fc1ea00  blt.s r21, r14, 80
000e18  db020000  j 20
000e1c  9f0b0000  addli r23, zero, 0
000e20  a7810d00  addli.d r[4:5], r[28:29], 0
000e24  00a00000  mfence { lm }
000e28  bff0ea00  blt.s r21, r14, 60
000e2c  9b30a300  slli r1, r6, 10
000e30  9f048fcf  addli r9, r30, -6208
000e34  1f004fcf  addli zero, r30, -6240
000e38  ab0500f0  lui r11, 983040
000e3c  0b917a20  mul.s r2, r21, r7
000e40  9ba00040  xori r1, r1, 1024
000e44  1711b100  or r2, r2, r11
000e48  8b901410  add.s r1, r9, r1
000e4c  9f042fcf  addli r9, r30, -6256
000e50  6bd60400  load.d r[13:14], 0(r9)
000e54  eb540000  load.d r[10:11], 0(zero)
000e58  17200000  xor zero, zero, zero
000e5c  0b269610  add.ul r[13:14], r[13:14], r[10:11]
000e60  7f211600  l_gm2lm r2, r1, 0(r[13:14])
000e64  1f010fcf  addli r2, r30, -6272
000e68  b305b72c  zext_int2long r[11:12], r14
000e6c  eb540100  load.d r[10:11], 0(r2)
000e70  93a0b400  seteq.d r1, r[10:11], r[12:13]
000e74  bbba00fe  bneq r1, zero, -340
000e78  9f00dfce  addli r1, r30, -6296
000e7c  1f01efce  addli r2, r30, -6288
000e80  73b07001  store.d r[24:25], 0(r1)
000e84  73305101  store.d r[22:23], 0(r2)
000e88  bfc9ecfe  blt.s r25, r14, -400
000e8c  b396dc2a  sext_int2long r[13:14], r25
000e90  b3001028  zext_int2long r[1:2], zero
000e94  5b020000  j 16
000e98  a7900000  addli.d r[2:3], r[2:3], 1
000e9c  93b8d004  setlt.sl r17, r[2:3], r[14:15]
000ea0  37e908fe  beq r17, zero, -424
000ea4  93b8b304  setlt.sl r17, r[8:9], r[12:13]
000ea8  bbcf08fe  bneq r17, zero, -16
000eac  8bb87020  mul.sl r[18:19], r[2:3], r[8:9]
000eb0  0bbb9820  mul.sl r[23:24], r[18:19], r[10:11]
000eb4  8b9a1211  add.s r21, r5, r17
000eb8  b3081029  zext_int2long r[17:18], zero
000ebc  0b9b6211  add.s r22, r5, r22
000ec0  8b1b1b11  add.s r23, r22, r17
000ec4  0b9c1a11  add.s r24, r21, r17
000ec8  a7980800  addli.d r[18:19], r[18:19], 1
000ecc  93b77804  setlt.sl r15, r[18:19], r[8:9]
000ed0  6b980b00  load.bu r16, 0(r23)
000ed4  73000c01  store.b r16, 0(r24)
000ed8  bbaf07fe  bneq r15, zero, -24
000edc  dbf7ffff  j -68
000ee0  9f0e0fce  addli sp, r30, -6400
000ee4  9f8e0e32  addli sp, sp, 6400
000ee8  00a00300  mfence { lm, sm, gm }
000eec  00100000  exit
000ef0  00100000  exit
000ef4  00100000  exit
000ef8  00100000  exit
000efc  00100000  exit
000f00  00100000  exit
000f04  00100000  exit
000f08  00100000  exit
000f0c  00100000  exit
000f10  00100000  exit
000f14  00100000  exit
000f18  00100000  exit
000f1c  00100000  exit
000f20  00100000  exit
000f24  00100000  exit
000f28  00100000  exit
000f2c  00100000  exit
000f30  00100000  exit
000f34  00100000  exit
000f38  00100000  exit
000f3c  00100000  exit
000f40  00100000  exit
000f44  00100000  exit
000f48  00100000  exit
000f4c  00100000  exit
000f50  00100000  exit
000f54  00100000  exit
000f58  00100000  exit
000f5c  00100000  exit
000f60  00100000  exit
000f64  00100000  exit
000f68  00100000  exit
000f6c  00100000  exit
000f70  00100000  exit
000f74  00100000  exit
000f78  00100000  exit
000f7c  00100000  exit
000f80  00100000  exit
000f84  00100000  exit
000f88  00100000  exit
000f8c  00100000  exit
000f90  00100000  exit
000f94  00100000  exit
000f98  00100000  exit
000f9c  00100000  exit
000fa0  00100000  exit
000fa4  00100000  exit
000fa8  00100000  exit
000fac  00100000  exit
000fb0  00100000  exit
000fb4  00100000  exit
000fb8  00100000  exit
000fbc  00100000  exit
000fc0  00100000  exit
000fc4  00100000  exit
000fc8  00100000  exit
000fcc  00100000  exit
000fd0  00100000  exit
000fd4  00100000  exit
000fd8  00100000  exit
000fdc  00100000  exit
000fe0  00100000  exit
000fe4  00100000  exit
000fe8  00100000  exit
000fec  00100000  exit
000ff0  00100000  exit
000ff4  00100000  exit
000ff8  00100000  exit
000ffc  00100000  exit
001000  00100000  exit
001004  00100000  exit
001008  00100000  exit
00100c  00100000  exit
001010  00100000  exit
001014  00100000  exit
001018  00100000  exit
00101c  00100000  exit
001020  00100000  exit
001024  00100000  exit
001028  00100000  exit
00102c  00100000  exit
001030  00100000  exit
001034  00100000  exit
001038  00100000  exit
00103c  00100000  exit
001040  00100000  exit
001044  00100000  exit
001048  00100000  exit
00104c  00100000  exit
001050  00100000  exit
001054  00100000  exit
001058  00100000  exit
00105c  00100000  exit
001060  00100000  exit
001064  00100000  exit
001068  00100000  exit
00106c  00100000  exit
001070  00100000  exit
001074  00100000  exit
001078  00100000  exit
00107c  00100000  exit
001080  00100000  exit
001084  00100000  exit
001088  00100000  exit
00108c  00100000  exit
001090  00100000  exit
001094  00100000  exit
001098  00100000  exit
00109c  00100000  exit
0010a0  00100000  exit
0010a4  00100000  exit
0010a8  00100000  exit
0010ac  00100000  exit
0010b0  00100000  exit
0010b4  00100000  exit
0010b8  00100000  exit
0010bc  00100000  exit
0010c0  00100000  exit
0010c4  00100000  exit
0010c8  00100000  exit
0010cc  00100000  exit
0010d0  00100000  exit
0010d4  00100000  exit
0010d8  00100000  exit
0010dc  00100000  exit
0010e0  00100000  exit
0010e4  00100000  exit
0010e8  00100000  exit
0010ec  00100000  exit
0010f0  00100000  exit
0010f4  00100000  exit
0010f8  00100000  exit
0010fc  00100000  exit
001100  00100000  exit
001104  00100000  exit
001108  00100000  exit
00110c  00100000  exit
001110  00100000  exit
001114  00100000  exit
001118  00100000  exit
00111c  00100000  exit
001120  00100000  exit
001124  00100000  exit
001128  00100000  exit
00112c  00100000  exit
