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
000078  9f095000  addli r19, zero, 40
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
0000dc  9f8e0ecd  addli sp, sp, -6528
0000e0  1f8f8e32  addli r30, sp, 6464
0000e4  9f000040  addli r1, zero, 8192
0000e8  eb510f01  load.d r[4:5], 16(r30)
0000ec  b380102a  zext_int2long r[1:2], r1
0000f0  6b538f00  load.d r[7:8], 8(r30)
0000f4  1f04afce  addli r8, r30, -6320
0000f8  9f04efce  addli r9, r30, -6288
0000fc  93b21104  setlt.sl r5, r[4:5], r[2:3]
000100  eb508f01  load.d r[2:3], 24(r30)
000104  73306400  store.d r[7:8], 0(r8)
000108  6b530f00  load.d r[7:8], 0(r30)
00010c  73b06400  store.d r[7:8], 0(r9)
000110  3b940202  bneq r5, zero, 1284
000114  9f020004  addli r5, zero, 512
000118  b382522a  zext_int2long r[5:6], r5
00011c  93b21204  setlt.sl r5, r[6:7], r[2:3]
000120  bbd30202  bneq r5, zero, 1268
000124  9f020008  addli r5, zero, 1024
000128  80530102  load_param_i r7, 2
00012c  00d40002  load_param_i r8, 1
000130  b382522a  zext_int2long r[5:6], r5
000134  8b137420  mul.s r7, r8, r7
000138  0f971264  div.sl r[14:15], r[5:6], r[1:2]
00013c  b384932e  zext_int2long r[9:10], r7
000140  80330002  core_id r7
000144  8ba2e110  add.ul r[6:7], r[4:5], r[15:16]
000148  a7f2f2ff  addli.d r[6:7], r[6:7], 32767
00014c  8f92e262  div.sl r[5:6], r[5:6], r[14:15]
000150  8f959276  mod.sl r[11:12], r[5:6], r[9:10]
000154  8f929262  div.sl r[5:6], r[5:6], r[9:10]
000158  80540002  load_param_i r9, 0
00015c  8b147450  fmac.s r9, r8, r7
000160  b383742a  zext_int2long r[7:8], r9
000164  93b4b304  setlt.sl r9, r[8:9], r[12:13]
000168  0bb5b340  min.sl r[11:12], r[8:9], r[12:13]
00016c  0bb57250  fmac.sl r[11:12], r[6:7], r[8:9]
000170  8b33e520  mul.sl r[8:9], r[11:12], r[15:16]
000174  0bb83340  min.sl r[17:18], r[8:9], r[4:5]
000178  3386c42a  zext_int2long r[12:13], r9
00017c  9f041fcf  addli r9, r30, -6264
000180  8ba2c210  add.ul r[6:7], r[6:7], r[13:14]
000184  73b0e400  store.d r[15:16], 0(r9)
000188  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
00018c  8bb2e220  mul.sl r[6:7], r[6:7], r[15:16]
000190  0bb53240  min.sl r[11:12], r[6:7], r[4:5]
000194  93310507  setle.sl r3, r[11:12], r[17:18]
000198  bbaa0106  bneq r3, zero, 3752
00019c  1f024000  addli r4, zero, 32
0001a0  abf1ffff  lui r3, 1048575
0001a4  9ff3f0ff  addli r7, r1, -1
0001a8  0b934038  mod.s r6, r1, r4
0001ac  1b9401fe  ori r8, r3, 4064
0001b0  33024028  zext_int2long r[4:5], zero
0001b4  9b91f1ff  ori r3, r3, 4095
0001b8  17868300  and r12, r7, r8
0001bc  37300300  beq r6, zero, 12
0001c0  17b36100  sll r6, r3, r6
0001c4  97213300  xor r3, r6, r3
0001c8  2383f001  andi.d r[7:8], r[2:3], 31
0001cc  1f04ffce  addli r8, r30, -6280
0001d0  0bb24048  max.sl r[5:6], r[2:3], r[5:6]
0001d4  1f1a0000  addli r20, zero, 1
0001d8  7e8001e0  vmmov mr0, r3
0001dc  9f01cfce  addli r3, r30, -6304
0001e0  9f090000  addli r19, zero, 0
0001e4  1bb91000  slli r18, r1, 1
0001e8  9b3c1600  slli r25, r12, 1
0001ec  1f0d8fdf  addli r26, r30, -4160
0001f0  9f0d8000  addli r27, zero, 64
0001f4  1f0e8fcf  addli r28, r30, -6208
0001f8  9f060fe0  addli r13, r30, -4096
0001fc  73306400  store.d r[7:8], 0(r8)
000200  1f037fcf  addli r6, r30, -6216
000204  9f036fcf  addli r7, r30, -6224
000208  73b0a100  store.d r[11:12], 0(r3)
00020c  73304300  store.d r[5:6], 0(r6)
000210  1f020004  addli r4, zero, 512
000214  b30a5229  zext_int2long r[21:22], r4
000218  33024a28  zext_int2long r[4:5], r20
00021c  73b04300  store.d r[5:6], 0(r7)
000220  db070000  j 60
000224  1f07cfce  addli r14, r30, -6304
000228  00a00000  mfence { lm }
00022c  2b0300f0  lui r6, 983040
000230  9f07afce  addli r15, r30, -6320
000234  97314803  sll.d r[4:5], r[17:18], r20
000238  27080804  addli.d r[17:18], r[17:18], 512
00023c  9bb21300  slli r5, r7, 1
000240  6b550700  load.d r[11:12], 0(r14)
000244  6bd40700  load.d r[9:10], 0(r15)
000248  97926200  or r5, r5, r6
00024c  9333a804  setlt.sl r7, r[17:18], r[11:12]
000250  8b213410  add.ul r[4:5], r[9:10], r[4:5]
000254  ffb2c101  s_lm2gm r5, r28, 0(r[4:5])
000258  b7a70306  beq r7, zero, 3560
00025c  9f0b1fcf  addli r23, r30, -6264
000260  8b310519  sub.sl r[4:5], r[11:12], r[17:18]
000264  1f0c6fcf  addli r24, r30, -6224
000268  1f00efce  addli zero, r30, -6288
00026c  8b321820  mul.sl r[6:7], r[17:18], r[2:3]
000270  ebd30b00  load.d r[8:9], 0(r23)
000274  ab0400f0  lui r9, 983040
000278  6b550c00  load.d r[11:12], 0(r24)
00027c  97b24203  sll.d r[6:7], r[6:7], r20
000280  8bb33340  min.sl r[8:9], r[8:9], r[4:5]
000284  0bb71320  mul.sl r[15:16], r[8:9], r[2:3]
000288  13b4a104  setlt.sl r8, r[4:5], r[11:12]
00028c  6b550000  load.d r[11:12], 0(zero)
000290  17200000  xor zero, zero, zero
000294  8bb15141  min.sl r[4:5], r[4:5], r[22:23]
000298  9b331700  slli r7, r14, 1
00029c  8b225510  add.ul r[6:7], r[11:12], r[6:7]
0002a0  97939300  or r7, r7, r9
0002a4  ffa3d200  l_gm2lm r7, r13, 0(r[6:7])
0002a8  9f02dfce  addli r5, r30, -6296
0002ac  73b03200  store.d r[4:5], 0(r5)
0002b0  3b7c0400  bneq r8, zero, 796
0002b4  8ba40111  add.ul r[10:11], r[4:5], r[17:18]
0002b8  27030800  addli.d r[7:8], r[17:18], 0
0002bc  9f015fcf  addli r3, r30, -6232
0002c0  1f020fcf  addli r4, r30, -6272
0002c4  73b00101  store.d r[17:18], 0(r3)
0002c8  73309200  store.d r[10:11], 0(r4)
0002cc  5b080000  j 64
0002d0  e3094fcf  loadli.w r19,  -6240(r30)
0002d4  1f040fcf  addli r8, r30, -6272
0002d8  9f052fcf  addli r11, r30, -6256
0002dc  9f020fe0  addli r5, r30, -4096
0002e0  eb540400  load.d r[10:11], 0(r8)
0002e4  6bd30500  load.d r[7:8], 0(r11)
0002e8  9ba91900  xori r19, r19, 1
0002ec  1bb2b900  slli r4, r19, 11
0002f0  93319304  setlt.sl r3, r[7:8], r[10:11]
0002f4  8b964210  add.s r13, r5, r4
0002f8  1f025fcf  addli r4, r30, -6232
0002fc  9f023fcf  addli r5, r30, -6248
000300  6b580200  load.d r[17:18], 0(r4)
000304  6bd70200  load.d r[15:16], 0(r5)
000308  379b0100  beq r3, zero, 708
00030c  9f051fcf  addli r11, r30, -6264
000310  a7010300  addli.d r[4:5], r[7:8], 0
000314  ebd30500  load.d r[8:9], 0(r11)
000318  0ba87110  add.ul r[17:18], r[4:5], r[8:9]
00031c  8bb20419  sub.sl r[6:7], r[10:11], r[17:18]
000320  9f046fcf  addli r9, r30, -6224
000324  8bb35340  min.sl r[8:9], r[8:9], r[6:7]
000328  a7020700  addli.d r[6:7], r[15:16], 0
00032c  8bbb1320  mul.sl r[24:25], r[8:9], r[2:3]
000330  ebd30400  load.d r[8:9], 0(r9)
000334  00a00000  mfence { lm }
000338  93b37b04  setlt.sl r7, r[24:25], r[8:9]
00033c  bbf00300  bneq r7, zero, 60
000340  9bb3b900  slli r7, r19, 11
000344  1f00efce  addli zero, r30, -6288
000348  0b341820  mul.sl r[9:10], r[17:18], r[2:3]
00034c  1f050fe0  addli r10, r30, -4096
000350  ab0500f0  lui r11, 983040
000354  9ba30380  xori r7, r7, 2048
000358  6b570000  load.d r[15:16], 0(zero)
00035c  17344403  sll.d r[9:10], r[9:10], r20
000360  17200000  xor zero, zero, zero
000364  8b137510  add.s r7, r10, r7
000368  1bb51b00  slli r10, r23, 1
00036c  0b248710  add.ul r[9:10], r[15:16], r[9:10]
000370  1715b500  or r10, r10, r11
000374  7f257400  l_gm2lm r10, r7, 0(r[9:10])
000378  8f921262  div.sl r[5:6], r[5:6], r[1:2]
00037c  9f07ffce  addli r15, r30, -6280
000380  b3037028  zext_int2long r[7:8], zero
000384  9f052fcf  addli r11, r30, -6256
000388  1f073fcf  addli r14, r30, -6248
00038c  670a3fcf  storeli.w r19, -6240(r30)
000390  ebd40700  load.d r[10:11], 0(r15)
000394  73b00501  store.d r[17:18], 0(r11)
000398  73307701  store.d r[24:25], 0(r14)
00039c  93a37400  seteq.d r7, r[10:11], r[8:9]
0003a0  1f045fcf  addli r8, r30, -6232
0003a4  6b580400  load.d r[17:18], 0(r8)
0003a8  8bbb0119  sub.sl r[24:25], r[4:5], r[17:18]
0003ac  bbb50300  bneq r7, zero, 364
0003b0  9f036fcf  addli r7, r30, -6224
0003b4  ebd10300  load.d r[4:5], 0(r7)
0003b8  93b13204  setlt.sl r3, r[6:7], r[4:5]
0003bc  3bdc01fe  bneq r3, zero, -236
0003c0  1f050000  addli r10, zero, 0
0003c4  b3013028  zext_int2long r[3:4], zero
0003c8  9f840600  addli r9, r13, 0
0003cc  db050000  j 44
0003d0  8ba37111  add.ul r[8:9], r[4:5], r[24:25]
0003d4  8f935377  mod.sl r[7:8], r[7:8], r[21:22]
0003d8  9bb32300  slli r7, r7, 2
0003dc  8b137e10  add.s r7, r28, r7
0003e0  6780b300  storeli.w r11, 0(r7)
0003e4  a7910100  addli.d r[4:5], r[4:5], 1
0003e8  0b151518  sub.s r10, r10, r1
0003ec  8b942411  add.s r9, r9, r18
0003f0  93b35104  setlt.sl r7, r[4:5], r[6:7]
0003f4  37fb03fe  beq r7, zero, -292
0003f8  9f057fcf  addli r11, r30, -6216
0003fc  b303752c  zext_int2long r[7:8], r10
000400  6bd70500  load.d r[15:16], 0(r11)
000404  a383f301  andi.d r[8:9], r[8:9], 31
000408  9f050000  addli r11, zero, 0
00040c  0b277740  min.ul r[15:16], r[15:16], r[8:9]
000410  b3037028  zext_int2long r[7:8], zero
000414  93237700  seteq.d r7, r[15:16], r[8:9]
000418  bb900300  bneq r7, zero, 36
00041c  9f830400  addli r7, r9, 0
000420  1f040700  addli r8, r14, 0
000424  6bb80300  load.hu r16, 0(r7)
000428  1f74f4ff  addli r8, r8, -1
00042c  9fa30300  addli r7, r7, 2
000430  33180820  hfloat2float.rn r16, r16
000434  8be50511  add.f.rn r11, r11, r16
000438  bb3f04fe  bneq r8, zero, -20
00043c  93231702  setneq.d r7, r[15:16], r[2:3]
000440  37ce03fe  beq r7, zero, -112
000444  0bb8e018  sub.sl r[17:18], r[2:3], r[15:16]
000448  9f034000  addli r7, zero, 32
00044c  0b1a7838  mod.s r20, r16, r7
000450  abf3ffff  lui r7, 1048575
000454  1b94f3ff  ori r8, r7, 4095
000458  37300a00  beq r20, zero, 12
00045c  173a4401  sll r20, r8, r20
000460  17248a00  xor r8, r20, r8
000464  8bb91120  mul.sl r[20:21], r[4:5], r[2:3]
000468  1f78f8ff  addli r16, r16, -1
00046c  9b9303fe  ori r7, r7, 4064
000470  7e0104e0  vmmov mr2, r8
000474  9bb81900  slli r17, r19, 1
000478  9b391700  slli r19, r14, 1
00047c  97037800  and r7, r16, r7
000480  1f1a0000  addli r20, zero, 1
000484  8b981611  add.s r17, r13, r17
000488  0b983811  add.s r16, r17, r19
00048c  9bb81300  slli r17, r7, 1
000490  0b181811  add.s r16, r16, r17
000494  42000804  vload.mz vr0{mr2}, 0(r16)
000498  86300000  vfp162float_l.rn vr1, vr0
00049c  06700000  vfp162float_h.rn vr0, vr0
0004a0  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
0004a4  bfc04301  blt.s r7, r20, 48
0004a8  1b341700  slli r8, r14, 1
0004ac  1f070000  addli r14, zero, 0
0004b0  0b948410  add.s r8, r9, r8
0004b4  c2000402  vload.mz vr1{mr1}, 0(r8)
0004b8  1f074700  addli r14, r14, 32
0004bc  1f048400  addli r8, r8, 64
0004c0  06b10000  vfp162float_l.rn vr2, vr1
0004c4  86f00000  vfp162float_h.rn vr1, vr1
0004c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0004cc  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0004d0  bf1f77fe  blt.s r14, r7, -28
0004d4  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
0004d8  9f030000  addli r7, zero, 0
0004dc  1f040000  addli r8, zero, 0
0004e0  00a00000  mfence { lm }
0004e4  0b177d10  add.s r14, r26, r7
0004e8  9fc30300  addli r7, r7, 4
0004ec  63070700  loadli.w r14,  0(r14)
0004f0  0b64e410  add.f.rn r8, r8, r14
0004f4  bbcfb3ff  bneq r7, r27, -16
0004f8  0ba77111  add.ul r[15:16], r[4:5], r[24:25]
0004fc  8be38510  add.f.rn r7, r11, r8
000500  0f175775  mod.sl r[14:15], r[14:15], r[21:22]
000504  1b342700  slli r8, r14, 2
000508  0b148e10  add.s r8, r28, r8
00050c  67007400  storeli.w r7, 0(r8)
000510  00a00000  mfence { lm }
000514  5bdaffff  j -304
000518  9f036fcf  addli r7, r30, -6224
00051c  ebd10300  load.d r[4:5], 0(r7)
000520  93b13204  setlt.sl r3, r[6:7], r[4:5]
000524  bbb601fe  bneq r3, zero, -596
000528  b3013028  zext_int2long r[3:4], zero
00052c  9f840600  addli r9, r13, 0
000530  8bb31120  mul.sl r[8:9], r[4:5], r[2:3]
000534  9bb31300  slli r7, r7, 1
000538  8b937610  add.s r7, r13, r7
00053c  8b939311  add.s r7, r7, r25
000540  42800300  vload.mz vr0{mr0}, 0(r7)
000544  86300000  vfp162float_l.rn vr1, vr0
000548  06700000  vfp162float_h.rn vr0, vr0
00054c  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
000550  bf304601  blt.s r12, r20, 44
000554  9f030000  addli r7, zero, 0
000558  1f840400  addli r8, r9, 0
00055c  c2000402  vload.mz vr1{mr1}, 0(r8)
000560  9f834300  addli r7, r7, 32
000564  1f048400  addli r8, r8, 64
000568  06b10000  vfp162float_l.rn vr2, vr1
00056c  86f00000  vfp162float_h.rn vr1, vr1
000570  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000574  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
000578  bf9fc3fe  blt.s r7, r12, -28
00057c  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
000580  1f040000  addli r8, zero, 0
000584  9f030000  addli r7, zero, 0
000588  00a00000  mfence { lm }
00058c  0b158d10  add.s r10, r26, r8
000590  1f440400  addli r8, r8, 4
000594  63050500  loadli.w r10,  0(r10)
000598  8be3a310  add.f.rn r7, r7, r10
00059c  bb4fb4ff  bneq r8, r27, -16
0005a0  0ba57111  add.ul r[11:12], r[4:5], r[24:25]
0005a4  a7910100  addli.d r[4:5], r[4:5], 1
0005a8  8b942411  add.s r9, r9, r18
0005ac  0f155575  mod.sl r[10:11], r[10:11], r[21:22]
0005b0  13b45104  setlt.sl r8, r[4:5], r[6:7]
0005b4  1b352500  slli r10, r10, 2
0005b8  0b15ae10  add.s r10, r28, r10
0005bc  67007500  storeli.w r7, 0(r10)
0005c0  00a00000  mfence { lm }
0005c4  bb3d04fe  bneq r8, zero, -148
0005c8  5ba1ffff  j -760
0005cc  9f01dfce  addli r3, r30, -6296
0005d0  00a00000  mfence { lm }
0005d4  ebd30100  load.d r[8:9], 0(r3)
0005d8  3fb143ff  blt.s r7, r20, -948
0005dc  9f018fcf  addli r3, r30, -6208
0005e0  1f028fcf  addli r4, r30, -6208
0005e4  9f020000  addli r5, zero, 0
0005e8  1f838100  addli r6, r3, 64
0005ec  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0005f0  9f810101  addli r3, r3, 128
0005f4  9f824200  addli r5, r5, 32
0005f8  42110302  vload_mask16.mz vr2{mr1}, 0(r6)
0005fc  06900000  vfloat2fp16_l.rn vr0, vr1
000600  06500100  vfloat2fp16_h.rn vr0, vr2
000604  46000202  vstore.mz vr0{mr1}, 0(r4)
000608  1f028200  addli r4, r4, 64
00060c  3fff72fe  blt.s r5, r7, -36
000610  db82ffff  j -1004
000614  80d20002  load_param_i r5, 1
000618  80530002  load_param_i r7, 0
00061c  eb044f02  load.b r9, 36(r30)
000620  b382522a  zext_int2long r[5:6], r5
000624  b383732e  zext_int2long r[7:8], r7
000628  37810400  beq r9, zero, 64
00062c  0f955074  mod.sl r[10:11], r[1:2], r[5:6]
000630  8f925062  div.sl r[5:6], r[1:2], r[5:6]
000634  33080029  zext_int2long r[16:17], zero
000638  27890100  addli.d r[19:20], r[4:5], 0
00063c  13b6a304  setlt.sl r12, r[8:9], r[11:12]
000640  0bb5a340  min.sl r[11:12], r[8:9], r[11:12]
000644  0bb57250  fmac.sl r[11:12], r[6:7], r[8:9]
000648  3306c628  zext_int2long r[12:13], r12
00064c  8ba2c210  add.ul r[6:7], r[6:7], r[13:14]
000650  0b361540  min.sl r[13:14], r[11:12], r[2:3]
000654  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
000658  0bb71240  min.sl r[15:16], r[6:7], r[2:3]
00065c  93320907  setle.sl r5, r[19:20], r[17:18]
000660  37810200  beq r5, zero, 64
000664  db3b0100  j 2524
000668  0f955174  mod.sl r[10:11], r[3:4], r[5:6]
00066c  8f925162  div.sl r[5:6], r[3:4], r[5:6]
000670  27870000  addli.d r[15:16], r[2:3], 0
000674  13b6a304  setlt.sl r12, r[8:9], r[11:12]
000678  0bb5a340  min.sl r[11:12], r[8:9], r[11:12]
00067c  0bb57250  fmac.sl r[11:12], r[6:7], r[8:9]
000680  0b383540  min.sl r[17:18], r[11:12], r[4:5]
000684  3306c628  zext_int2long r[12:13], r12
000688  8ba2c210  add.ul r[6:7], r[6:7], r[13:14]
00068c  3306c028  zext_int2long r[12:13], zero
000690  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
000694  0bb93240  min.sl r[19:20], r[6:7], r[4:5]
000698  93320907  setle.sl r5, r[19:20], r[17:18]
00069c  bb960204  bneq r5, zero, 2468
0006a0  0b3dc718  sub.sl r[27:28], r[15:16], r[13:14]
0006a4  80370002  core_id r15
0006a8  93820400  seteq r5, r9, zero
0006ac  1f030008  addli r6, zero, 1024
0006b0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0006b4  9f150000  addli r11, zero, 1
0006b8  00570102  load_param_i r14, 2
0006bc  9f044fcf  addli r9, r30, -6240
0006c0  1f056fcf  addli r10, r30, -6224
0006c4  6e300062  vxor.s.mz vr0{mr1}, vr0, vr0
0006c8  1bba4700  slli r20, r15, 4
0006cc  e744efce  storeli.w r14, -6324(r30)
0006d0  1736b602  sll.d r[13:14], r[13:14], r11
0006d4  1b374700  slli r14, r14, 4
0006d8  e7044fcf  storeli.w r20, -6328(r30)
0006dc  330a432d  zext_int2long r[20:21], r6
0006e0  1bb35700  slli r6, r15, 5
0006e4  73b04401  store.d r[21:22], 0(r9)
0006e8  0b3a4d41  min.sl r[21:22], r[27:28], r[21:22]
0006ec  67026fce  storeli.w r6, -6368(r30)
0006f0  73304501  store.d r[21:22], 0(r10)
0006f4  3bb00200  bneq r5, zero, 12
0006f8  8bb13320  mul.sl r[4:5], r[8:9], r[4:5]
0006fc  5b010000  j 8
000700  b3013028  zext_int2long r[3:4], zero
000704  9f02efcd  addli r5, r30, -6416
000708  9f04efce  addli r9, r30, -6288
00070c  1f053fcf  addli r10, r30, -6248
000710  1f0e7fce  addli r28, r30, -6344
000714  63449fce  loadli.w r8,  -6324(r30)
000718  9f0c3fce  addli r25, r30, -6376
00071c  80330002  core_id r7
000720  92100002  vadd.f.mz.rn vr1{mr1}, zero, vr0
000724  3307e72c  zext_int2long r[14:15], r14
000728  7e8005e0  vmmov mr0, r11
00072c  73b03200  store.d r[4:5], 0(r5)
000730  ebd20400  load.d r[6:7], 0(r9)
000734  a771fd07  addli.d r[4:5], r[27:28], 1023
000738  b38a532f  zext_int2long r[21:22], r7
00073c  b30b7429  zext_int2long r[23:24], r8
000740  8ba2c210  add.ul r[6:7], r[6:7], r[13:14]
000744  9f064fcf  addli r13, r30, -6240
000748  1f066fcf  addli r12, r30, -6224
00074c  73305500  store.d r[6:7], 0(r10)
000750  ebd20600  load.d r[6:7], 0(r13)
000754  8f915166  div.sl r[3:4], r[3:4], r[5:6]
000758  e3029fce  loadli.w r5,  -6328(r30)
00075c  b382522a  zext_int2long r[5:6], r5
000760  73305e00  store.d r[6:7], 0(r28)
000764  eb520600  load.d r[6:7], 0(r12)
000768  1b367400  slli r12, r8, 7
00076c  9bb21200  slli r5, r5, 1
000770  67085fce  storeli.w r5, -6272(r30)
000774  e3024fce  loadli.w r5,  -6368(r30)
000778  b382522a  zext_int2long r[5:6], r5
00077c  73b05c00  store.d r[6:7], 0(r25)
000780  9b325400  slli r5, r8, 5
000784  1bb37300  slli r6, r7, 7
000788  1b346400  slli r8, r8, 6
00078c  67415fce  storeli.w r5, -6380(r30)
000790  2b1a0000  lui r20, 1
000794  ab0c0000  lui r25, 0
000798  9bb22300  slli r5, r7, 2
00079c  9bb36300  slli r7, r7, 6
0007a0  e7408fce  storeli.w r8, -6388(r30)
0007a4  1f040004  addli r8, zero, 512
0007a8  6701cfce  storeli.w r12, -6384(r30)
0007ac  1f06bfce  addli r12, r30, -6312
0007b0  1f0a0af0  addli r20, r20, -2048
0007b4  9f8c0c00  addli r25, r25, 0
0007b8  a3b10102  slli.d r[4:5], r[4:5], 32
0007bc  73305601  store.d r[22:23], 0(r12)
0007c0  8b924211  add.s r5, r5, r20
0007c4  a3d10102  srai.d r[4:5], r[4:5], 32
0007c8  67065fce  storeli.w r5, -6304(r30)
0007cc  8b129311  add.s r5, r6, r25
0007d0  1f035fce  addli r6, r30, -6360
0007d4  e7005fce  storeli.w r5, -6392(r30)
0007d8  8b924311  add.s r5, r7, r20
0007dc  9f038fce  addli r7, r30, -6336
0007e0  67405fce  storeli.w r5, -6396(r30)
0007e4  9f02ffcd  addli r5, r30, -6408
0007e8  73b02301  store.d r[19:20], 0(r7)
0007ec  73b03200  store.d r[4:5], 0(r5)
0007f0  b3013428  zext_int2long r[3:4], r8
0007f4  1f04ffce  addli r8, r30, -6280
0007f8  73303300  store.d r[4:5], 0(r6)
0007fc  1f028000  addli r4, zero, 64
000800  1f005fcf  addli zero, r30, -6232
000804  9f018fdf  addli r3, r30, -4160
000808  73307401  store.d r[24:25], 0(r8)
00080c  7330a001  store.d r[27:28], 0(zero)
000810  17200000  xor zero, zero, zero
000814  1f006fce  addli zero, r30, -6352
000818  7330e000  store.d r[15:16], 0(zero)
00081c  17200000  xor zero, zero, zero
000820  db0c0000  j 100
000824  00200100  mfence { sm }
000828  abf20000  lui r5, 15
00082c  1f037fcf  addli r6, r30, -6216
000830  9f038fce  addli r7, r30, -6336
000834  1f046fce  addli r8, r30, -6352
000838  9b92f2ff  ori r5, r5, 4095
00083c  80a10204  csr_set csr3, r5
000840  00d00100  sync_group
000844  6b580300  load.d r[17:18], 0(r6)
000848  ebd40300  load.d r[10:11], 0(r7)
00084c  6b570400  load.d r[15:16], 0(r8)
000850  80320002  core_id r5
000854  378e0202  beq r5, zero, 1920
000858  00200100  mfence { sm }
00085c  2bf30000  lui r6, 15
000860  27080804  addli.d r[17:18], r[17:18], 512
000864  27890400  addli.d r[19:20], r[10:11], 0
000868  1b13f3ff  ori r6, r6, 4095
00086c  93322805  setlt.sl r5, r[17:18], r[19:20]
000870  80210304  csr_set csr3, r6
000874  1f035fcf  addli r6, r30, -6232
000878  00d00100  sync_group
00087c  6b5d0300  load.d r[27:28], 0(r6)
000880  378f0202  beq r5, zero, 1984
000884  9f045fce  addli r9, r30, -6360
000888  8b320919  sub.sl r[6:7], r[19:20], r[17:18]
00088c  ebd30400  load.d r[8:9], 0(r9)
000890  0bb97240  min.sl r[19:20], r[6:7], r[8:9]
000894  a3320902  slli.d r[6:7], r[19:20], 32
000898  a3d30202  srai.d r[8:9], r[6:7], 32
00089c  1f037fce  addli r6, r30, -6344
0008a0  e3029fce  loadli.w r5,  -6328(r30)
0008a4  6b560300  load.d r[13:14], 0(r6)
0008a8  4b705900  ble.s r18, r5, 28
0008ac  9b322600  slli r5, r12, 2
0008b0  0b26e610  add.ul r[13:14], r[13:14], r[15:16]
0008b4  13337604  setlt.sl r6, r[13:14], r[8:9]
0008b8  8b929211  add.s r5, r5, r25
0008bc  4e901202  vstores_mask16.mz vr1{mr1}, 0(r5)
0008c0  bb3f03fe  bneq r6, zero, -20
0008c4  e3429fce  loadli.w r5,  -6324(r30)
0008c8  4b812201  ble.s r5, r18, 64
0008cc  27860a00  addli.d r[13:14], r[22:23], 0
0008d0  80320002  core_id r5
0008d4  cb505900  ble.s r18, r5, 52
0008d8  9b328600  slli r5, r12, 8
0008dc  0b267611  add.ul r[13:14], r[13:14], r[24:25]
0008e0  13337604  setlt.sl r6, r[13:14], r[8:9]
0008e4  8b924211  add.s r5, r5, r20
0008e8  1f878200  addli r14, r5, 64
0008ec  4e901202  vstores_mask16.mz vr1{mr1}, 0(r5)
0008f0  4e101702  vstores_mask16.mz vr1{mr1}, 0(r14)
0008f4  1f870201  addli r14, r5, 128
0008f8  9f828201  addli r5, r5, 192
0008fc  4e101702  vstores_mask16.mz vr1{mr1}, 0(r14)
000900  4e901202  vstores_mask16.mz vr1{mr1}, 0(r5)
000904  3b5f03fe  bneq r6, zero, -44
000908  0f972a75  mod.sl r[14:15], r[21:22], r[18:19]
00090c  13337905  setlt.sl r6, r[19:20], r[24:25]
000910  133a5907  setle.sl r20, r[19:20], r[22:23]
000914  00a00300  mfence { lm, sm, gm }
000918  abf20000  lui r5, 15
00091c  3386c52e  zext_int2long r[12:13], r11
000920  9f032fcf  addli r7, r30, -6256
000924  9b92f2ff  ori r5, r5, 4095
000928  80a10204  csr_set csr3, r5
00092c  9f027fcf  addli r5, r30, -6216
000930  00d00100  sync_group
000934  73b02301  store.d r[19:20], 0(r7)
000938  73b00201  store.d r[17:18], 0(r5)
00093c  b76b0300  beq r6, zero, 760
000940  8f922a63  div.sl r[5:6], r[21:22], r[18:19]
000944  9f231000  addli r7, zero, 10
000948  67424fcf  storeli.w r20, -6364(r30)
00094c  8b240711  add.ul r[10:11], r[15:16], r[17:18]
000950  1f0e0fe0  addli r28, r30, -4096
000954  97b97202  sll.d r[20:21], r[6:7], r7
000958  9f03efce  addli r7, r30, -6288
00095c  8b323d19  sub.sl r[6:7], r[27:28], r[20:21]
000960  73b0c300  store.d r[13:14], 0(r7)
000964  13b4c204  setlt.sl r8, r[6:7], r[13:14]
000968  1f064fcf  addli r12, r30, -6240
00096c  6b570600  load.d r[15:16], 0(r12)
000970  0bbde240  min.sl r[27:28], r[6:7], r[15:16]
000974  bb500400  bneq r8, zero, 52
000978  9f033fcf  addli r7, r30, -6248
00097c  8bb21420  mul.sl r[6:7], r[10:11], r[2:3]
000980  17b7b902  sll.d r[15:16], r[20:21], r11
000984  1b341d00  slli r8, r26, 1
000988  1f0e0fe0  addli r28, r30, -4096
00098c  6bd60300  load.d r[13:14], 0(r7)
000990  97b2b202  sll.d r[6:7], r[6:7], r11
000994  2b0800f0  lui r16, 983040
000998  17140401  or r8, r8, r16
00099c  8b225610  add.ul r[6:7], r[13:14], r[6:7]
0009a0  8ba2e210  add.ul r[6:7], r[6:7], r[15:16]
0009a4  7fa4c201  l_gm2lm r8, r28, 0(r[6:7])
0009a8  1f06ffcd  addli r12, r30, -6408
0009ac  9f062fcf  addli r13, r30, -6256
0009b0  eb520600  load.d r[6:7], 0(r12)
0009b4  ebd30600  load.d r[8:9], 0(r13)
0009b8  8bb25320  mul.sl r[6:7], r[8:9], r[6:7]
0009bc  9f03dfce  addli r7, r30, -6296
0009c0  73b05300  store.d r[6:7], 0(r7)
0009c4  93b25207  setle.sl r5, r[6:7], r[22:23]
0009c8  1f037fcf  addli r6, r30, -6216
0009cc  eb580300  load.d r[18:19], 0(r6)
0009d0  bb960200  bneq r5, zero, 420
0009d4  9f02bfce  addli r5, r30, -6312
0009d8  1f040000  addli r8, zero, 0
0009dc  9f0a0000  addli r21, zero, 0
0009e0  1f0b0fe0  addli r22, r30, -4096
0009e4  ebd90200  load.d r[20:21], 0(r5)
0009e8  9f0c2fcf  addli r25, r30, -6256
0009ec  8ba97911  add.ul r[20:21], r[20:21], r[24:25]
0009f0  9f231000  addli r7, zero, 10
0009f4  1f061fcf  addli r12, r30, -6264
0009f8  ebd60c00  load.d r[14:15], 0(r25)
0009fc  73309600  store.d r[10:11], 0(r12)
000a00  8f92d962  div.sl r[5:6], r[19:20], r[13:14]
000a04  8f9bd976  mod.sl r[23:24], r[19:20], r[13:14]
000a08  9f06efce  addli r13, r30, -6288
000a0c  ebd40600  load.d r[10:11], 0(r13)
000a10  17b77202  sll.d r[15:16], r[6:7], r7
000a14  9f035fcf  addli r7, r30, -6232
000a18  0bac1b11  add.ul r[25:26], r[24:25], r[18:19]
000a1c  9f0b4fcf  addli r23, r30, -6240
000a20  ebd20300  load.d r[6:7], 0(r7)
000a24  ebd80b00  load.d r[18:19], 0(r23)
000a28  00a00300  mfence { lm, sm, gm }
000a2c  8bb2e218  sub.sl r[6:7], r[6:7], r[15:16]
000a30  13b89204  setlt.sl r16, r[6:7], r[10:11]
000a34  8bb41241  min.sl r[10:11], r[6:7], r[18:19]
000a38  3b010800  bneq r16, zero, 64
000a3c  9f083fcf  addli r17, r30, -6248
000a40  0b331c20  mul.sl r[7:8], r[25:26], r[2:3]
000a44  9b32b400  slli r5, r8, 11
000a48  1737b702  sll.d r[15:16], r[15:16], r11
000a4c  1bb81400  slli r16, r9, 1
000a50  6bd60800  load.d r[13:14], 0(r17)
000a54  1733b302  sll.d r[7:8], r[7:8], r11
000a58  9ba20280  xori r5, r5, 2048
000a5c  ab0b00f0  lui r23, 983040
000a60  8b125e10  add.s r5, r28, r5
000a64  1f0e0fe0  addli r28, r30, -4096
000a68  0b236610  add.ul r[7:8], r[13:14], r[7:8]
000a6c  0b23e310  add.ul r[7:8], r[7:8], r[15:16]
000a70  17177801  or r14, r16, r23
000a74  7f275300  l_gm2lm r14, r5, 0(r[7:8])
000a78  9f024000  addli r5, zero, 32
000a7c  2bf7ffff  lui r14, 1048575
000a80  27860400  addli.d r[13:14], r[10:11], 0
000a84  8b125d38  mod.s r5, r26, r5
000a88  1b18f7ff  ori r16, r14, 4095
000a8c  37b00200  beq r5, zero, 12
000a90  97325800  sll r5, r16, r5
000a94  17a80201  xor r16, r5, r16
000a98  9f021fcf  addli r5, r30, -6264
000a9c  1b1307fe  ori r6, r14, 4064
000aa0  7e0108e0  vmmov mr2, r16
000aa4  ebd40200  load.d r[10:11], 0(r5)
000aa8  9f72fdff  addli r5, r26, -1
000aac  178d6200  and r26, r5, r6
000ab0  9b321d00  slli r5, r26, 1
000ab4  8b125b10  add.s r5, r22, r5
000ab8  42800204  vload.mz vr0{mr2}, 0(r5)
000abc  06310000  vfp162float_l.rn vr2, vr0
000ac0  06700000  vfp162float_h.rn vr0, vr0
000ac4  16100102  vadd.f.mz.rn vr0{mr1}, vr2, vr0
000ac8  bf20bd00  blt.s r26, r11, 40
000acc  9f0d0000  addli r27, zero, 0
000ad0  42010b02  vload.mz vr2{mr1}, 0(r22)
000ad4  9f8d4d00  addli r27, r27, 32
000ad8  1f0b8b00  addli r22, r22, 64
000adc  86310100  vfp162float_l.rn vr3, vr2
000ae0  06710100  vfp162float_h.rn vr2, vr2
000ae4  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000ae8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000aec  bf9fadff  blt.s r27, r26, -28
000af0  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
000af4  1f0d0000  addli r26, zero, 0
000af8  1f0b0000  addli r22, zero, 0
000afc  00a00000  mfence { lm }
000b00  8b92a111  add.s r5, r3, r26
000b04  1f4d0d00  addli r26, r26, 4
000b08  e3820200  loadli.w r5,  0(r5)
000b0c  0b6b5b10  add.f.rn r22, r22, r5
000b10  bb4f4dfe  bneq r26, r4, -16
000b14  1f087fcf  addli r16, r30, -6216
000b18  8b635b19  sub.f.rn r7, r22, r21
000b1c  9f0bdfce  addli r23, r30, -6296
000b20  1b241400  xori r8, r8, 1
000b24  1f0d0600  addli r26, r12, 0
000b28  eb580800  load.d r[18:19], 0(r16)
000b2c  8bb21419  sub.sl r[6:7], r[10:11], r[18:19]
000b30  ebd40b00  load.d r[10:11], 0(r23)
000b34  9bb28200  slli r5, r5, 8
000b38  6303cfce  loadli.w r6,  -6304(r30)
000b3c  93b79904  setlt.sl r15, r[20:21], r[10:11]
000b40  a7040c00  addli.d r[10:11], r[25:26], 0
000b44  8b125310  add.s r5, r6, r5
000b48  6fc30200  loads.w r6, 0(r5)
000b4c  00a00100  mfence { lm, sm }
000b50  0be76310  add.f.rn r14, r7, r6
000b54  0b636718  sub.f.rn r6, r14, r6
000b58  73e0e200  stores.w r14, 0(r5)
000b5c  9f02ffce  addli r5, r30, -6280
000b60  ebdb0200  load.d r[24:25], 0(r5)
000b64  8b6a7318  sub.f.rn r21, r6, r7
000b68  1b33b400  slli r6, r8, 11
000b6c  0b1b6e10  add.s r22, r28, r6
000b70  bbe907fe  bneq r15, zero, -392
000b74  00200100  mfence { sm }
000b78  abf20000  lui r5, 15
000b7c  1f03bfce  addli r6, r30, -6312
000b80  9f032fcf  addli r7, r30, -6256
000b84  1f044000  addli r8, zero, 32
000b88  1f070002  addli r14, zero, 256
000b8c  9f070001  addli r15, zero, 128
000b90  9b92f2ff  ori r5, r5, 4095
000b94  80a10204  csr_set csr3, r5
000b98  00d00100  sync_group
000b9c  eb5a0300  load.d r[22:23], 0(r6)
000ba0  2b1a0000  lui r20, 1
000ba4  ab0c0000  lui r25, 0
000ba8  6bdd0300  load.d r[27:28], 0(r7)
000bac  e3424fce  loadli.w r5,  -6364(r30)
000bb0  1f0a0af0  addli r20, r20, -2048
000bb4  9f8c0c00  addli r25, r25, 0
000bb8  27860a00  addli.d r[13:14], r[22:23], 0
000bbc  bba102fe  bneq r5, zero, -920
000bc0  9b328600  slli r5, r12, 8
000bc4  8b924211  add.s r5, r5, r20
000bc8  1f838200  addli r6, r5, 64
000bcc  9f830201  addli r7, r5, 128
000bd0  4a900202  vloads_mask16.mz vr0{mr1}, 0(r5)
000bd4  9f828201  addli r5, r5, 192
000bd8  4a110302  vloads_mask16.mz vr2{mr1}, 0(r6)
000bdc  4a920202  vloads_mask16.mz vr4{mr1}, 0(r5)
000be0  ca910302  vloads_mask16.mz vr3{mr1}, 0(r7)
000be4  9b322600  slli r5, r12, 2
000be8  0b267611  add.ul r[13:14], r[13:14], r[24:25]
000bec  1333a605  setlt.sl r6, r[13:14], r[27:28]
000bf0  8b929211  add.s r5, r5, r25
000bf4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000bf8  16914102  vadd.f.mz.rn vr2{mr1}, vr3, vr4
000bfc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000c00  6a7107c0  vsrl.p vr2, r14, vr0
000c04  16100102  vadd.f.mz.rn vr0{mr1}, vr2, vr0
000c08  6af107c0  vsrl.p vr2, r15, vr0
000c0c  16100102  vadd.f.mz.rn vr0{mr1}, vr2, vr0
000c10  6a7102c0  vsrl.p vr2, r4, vr0
000c14  16100102  vadd.f.mz.rn vr0{mr1}, vr2, vr0
000c18  6a7104c0  vsrl.p vr2, r8, vr0
000c1c  16100102  vadd.f.mz.rn vr0{mr1}, vr2, vr0
000c20  fa130020  vextract.f r7, vr0{mr0}
000c24  73e07200  stores.w r7, 0(r5)
000c28  00a00100  mfence { lm, sm }
000c2c  3b5e03fe  bneq r6, zero, -108
000c30  db7effff  j -1036
000c34  9332cd04  setlt.sl r5, r[27:28], r[13:14]
000c38  a7040600  addli.d r[10:11], r[13:14], 0
000c3c  0b2c0711  add.ul r[25:26], r[15:16], r[17:18]
000c40  1f060fe0  addli r12, r30, -4096
000c44  67075fce  storeli.w r5, -6288(r30)
000c48  bbb00200  bneq r5, zero, 44
000c4c  1f073fcf  addli r14, r30, -6248
000c50  8b321c20  mul.sl r[6:7], r[25:26], r[2:3]
000c54  2b0400f0  lui r8, 983040
000c58  e3030fcf  loadli.w r7,  -6272(r30)
000c5c  6b560700  load.d r[13:14], 0(r14)
000c60  97b2b202  sll.d r[6:7], r[6:7], r11
000c64  17948300  or r8, r7, r8
000c68  8b225610  add.ul r[6:7], r[13:14], r[6:7]
000c6c  1f060fe0  addli r12, r30, -4096
000c70  7fa4c200  l_gm2lm r8, r12, 0(r[6:7])
000c74  3b590a00  bneq r20, zero, 596
000c78  abf2ffff  lui r5, 1048575
000c7c  1f03bfce  addli r6, r30, -6312
000c80  1f0a0000  addli r20, zero, 0
000c84  1f0e0fe0  addli r28, r30, -4096
000c88  9b92f2ff  ori r5, r5, 4095
000c8c  eb560300  load.d r[14:15], 0(r6)
000c90  b393722a  sext_int2long r[7:8], r5
000c94  9f026fcf  addli r5, r30, -6224
000c98  ebd80200  load.d r[18:19], 0(r5)
000c9c  db040000  j 36
000ca0  278d0800  addli.d r[27:28], r[18:19], 0
000ca4  9f072fcf  addli r15, r30, -6256
000ca8  1f081fcf  addli r16, r30, -6264
000cac  a7080d00  addli.d r[18:19], r[27:28], 0
000cb0  ebd20700  load.d r[6:7], 0(r15)
000cb4  eb560800  load.d r[14:15], 0(r16)
000cb8  93b25604  setlt.sl r5, r[14:15], r[6:7]
000cbc  37b80200  beq r5, zero, 524
000cc0  9f07ffce  addli r15, r30, -6280
000cc4  ebd20700  load.d r[6:7], 0(r15)
000cc8  8ba65610  add.ul r[14:15], r[14:15], r[6:7]
000ccc  e302efce  loadli.w r5,  -6288(r30)
000cd0  1f031fcf  addli r6, r30, -6264
000cd4  7330d300  store.d r[14:15], 0(r6)
000cd8  3baf02fe  bneq r5, zero, -56
000cdc  9f025fcf  addli r5, r30, -6232
000ce0  3307e028  zext_int2long r[14:15], zero
000ce4  9f090000  addli r19, zero, 0
000ce8  ebda0200  load.d r[22:23], 0(r5)
000cec  8ba2e810  add.ul r[6:7], r[18:19], r[15:16]
000cf0  9f064fcf  addli r13, r30, -6240
000cf4  00a00300  mfence { lm, sm, gm }
000cf8  8bb25a18  sub.sl r[6:7], r[22:23], r[6:7]
000cfc  6bdd0600  load.d r[27:28], 0(r13)
000d00  13b89204  setlt.sl r16, r[6:7], r[10:11]
000d04  0bbda241  min.sl r[27:28], r[6:7], r[27:28]
000d08  3b410800  bneq r16, zero, 80
000d0c  9f0a3fcf  addli r21, r30, -6248
000d10  8b321c20  mul.sl r[6:7], r[25:26], r[2:3]
000d14  9733b702  sll.d r[8:9], r[15:16], r11
000d18  1b38ba00  slli r16, r20, 11
000d1c  6bd60a00  load.d r[13:14], 0(r21)
000d20  97b2b202  sll.d r[6:7], r[6:7], r11
000d24  1b280880  xori r16, r16, 2048
000d28  8b225610  add.ul r[6:7], r[13:14], r[6:7]
000d2c  1f060fe0  addli r12, r30, -4096
000d30  8ba27210  add.ul r[6:7], r[6:7], r[8:9]
000d34  97b3b802  sll.d r[8:9], r[18:19], r11
000d38  0b180611  add.s r16, r12, r16
000d3c  8ba27210  add.ul r[6:7], r[6:7], r[8:9]
000d40  9b331d00  slli r7, r26, 1
000d44  2b0400f0  lui r8, 983040
000d48  97938300  or r7, r7, r8
000d4c  ffa30201  l_gm2lm r7, r16, 0(r[6:7])
000d50  a7030c00  addli.d r[8:9], r[25:26], 0
000d54  5b0f0000  j 120
000d58  9f062fcf  addli r13, r30, -6256
000d5c  1f081fcf  addli r16, r30, -6264
000d60  ebd20600  load.d r[6:7], 0(r13)
000d64  eb5a0800  load.d r[22:23], 0(r16)
000d68  93b25207  setle.sl r5, r[6:7], r[22:23]
000d6c  bb810200  bneq r5, zero, 96
000d70  9f0a2fcf  addli r21, r30, -6256
000d74  1f0b1fcf  addli r22, r30, -6264
000d78  9f0b7fcf  addli r23, r30, -6216
000d7c  1b38ba00  slli r16, r20, 11
000d80  ebd20a00  load.d r[6:7], 0(r21)
000d84  eb530b00  load.d r[8:9], 0(r22)
000d88  8f925372  mod.sl r[5:6], r[7:8], r[5:6]
000d8c  ebd30b00  load.d r[8:9], 0(r23)
000d90  8ba37210  add.ul r[8:9], r[6:7], r[8:9]
000d94  1b230880  xori r6, r16, 2048
000d98  1f083fcf  addli r16, r30, -6248
000d9c  ab0200f0  lui r5, 983040
000da0  0bbd1320  mul.sl r[27:28], r[8:9], r[2:3]
000da4  0b136610  add.s r6, r12, r6
000da8  6b560800  load.d r[13:14], 0(r16)
000dac  173dbd02  sll.d r[27:28], r[27:28], r11
000db0  0b2da611  add.ul r[27:28], r[13:14], r[27:28]
000db4  63060fcf  loadli.w r12,  -6272(r30)
000db8  97125600  or r5, r12, r5
000dbc  1f060fe0  addli r12, r30, -4096
000dc0  ff226d00  l_gm2lm r5, r6, 0(r[27:28])
000dc4  9f026fcf  addli r5, r30, -6224
000dc8  6bdd0200  load.d r[27:28], 0(r5)
000dcc  9f024000  addli r5, zero, 32
000dd0  abfbffff  lui r23, 1048575
000dd4  8b925838  mod.s r5, r17, r5
000dd8  1b98fbff  ori r16, r23, 4095
000ddc  37b00200  beq r5, zero, 12
000de0  97325800  sll r5, r16, r5
000de4  17a80201  xor r16, r5, r16
000de8  9ff2f8ff  addli r5, r17, -1
000dec  1b930bfe  ori r6, r23, 4064
000df0  7e0108e0  vmmov mr2, r16
000df4  97886200  and r17, r5, r6
000df8  9bb21800  slli r5, r17, 1
000dfc  8b125e10  add.s r5, r28, r5
000e00  42800204  vload.mz vr0{mr2}, 0(r5)
000e04  06310000  vfp162float_l.rn vr2, vr0
000e08  06700000  vfp162float_h.rn vr0, vr0
000e0c  16100102  vadd.f.mz.rn vr0{mr1}, vr2, vr0
000e10  bfa0b800  blt.s r17, r11, 40
000e14  1f090000  addli r18, zero, 0
000e18  42010e02  vload.mz vr2{mr1}, 0(r28)
000e1c  1f094900  addli r18, r18, 32
000e20  1f0e8e00  addli r28, r28, 64
000e24  86310100  vfp162float_l.rn vr3, vr2
000e28  06710100  vfp162float_h.rn vr2, vr2
000e2c  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000e30  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000e34  bf1f19ff  blt.s r18, r17, -28
000e38  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
000e3c  1f090000  addli r18, zero, 0
000e40  9f080000  addli r17, zero, 0
000e44  00a00000  mfence { lm }
000e48  8b922111  add.s r5, r3, r18
000e4c  1f490900  addli r18, r18, 4
000e50  e3820200  loadli.w r5,  0(r5)
000e54  8be85810  add.f.rn r17, r17, r5
000e58  bb4f49fe  bneq r18, r4, -16
000e5c  9f067fcf  addli r13, r30, -6216
000e60  0be83819  sub.f.rn r16, r17, r19
000e64  1b2a1a00  xori r20, r20, 1
000e68  ebd20600  load.d r[6:7], 0(r13)
000e6c  8b325c18  sub.sl r[6:7], r[25:26], r[6:7]
000e70  1f0c6fcf  addli r24, r30, -6224
000e74  9bb22200  slli r5, r5, 2
000e78  2b030000  lui r6, 0
000e7c  6b590c00  load.d r[19:20], 0(r24)
000e80  278c0300  addli.d r[25:26], r[8:9], 0
000e84  1f030300  addli r6, r6, 0
000e88  0b272711  add.ul r[15:16], r[15:16], r[19:20]
000e8c  1f095fcf  addli r18, r30, -6232
000e90  8b926210  add.s r5, r5, r6
000e94  eb5a0900  load.d r[22:23], 0(r18)
000e98  6fc30200  loads.w r6, 0(r5)
000e9c  00a00100  mfence { lm, sm }
000ea0  933b5705  setlt.sl r23, r[15:16], r[22:23]
000ea4  8b686810  add.f.rn r17, r16, r6
000ea8  0be36818  sub.f.rn r6, r17, r6
000eac  73e01201  stores.w r17, 0(r5)
000eb0  a7080d00  addli.d r[18:19], r[27:28], 0
000eb4  8b690319  sub.f.rn r19, r6, r16
000eb8  1b33ba00  slli r6, r20, 11
000ebc  0b1e6610  add.s r28, r12, r6
000ec0  bbb80bfe  bneq r23, zero, -468
000ec4  5bbcffff  j -544
000ec8  1f0e3fce  addli r28, r30, -6376
000ecc  9f0d2fcf  addli r27, r30, -6256
000ed0  1f0d8fce  addli r26, r30, -6336
000ed4  9f0cffce  addli r25, r30, -6280
000ed8  1f0a6fce  addli r20, r30, -6352
000edc  9f06bfce  addli r13, r30, -6312
000ee0  eb520e00  load.d r[6:7], 0(r28)
000ee4  6bd90d00  load.d r[19:20], 0(r27)
000ee8  00200100  mfence { sm }
000eec  93325906  setle.sl r5, r[19:20], r[6:7]
000ef0  2bf30000  lui r6, 15
000ef4  1b13f3ff  ori r6, r6, 4095
000ef8  80210304  csr_set csr3, r6
000efc  1f037fcf  addli r6, r30, -6216
000f00  00d00100  sync_group
000f04  ebda0600  load.d r[22:23], 0(r13)
000f08  e3430fce  loadli.w r7,  -6396(r30)
000f0c  63041fce  loadli.w r8,  -6392(r30)
000f10  63064fce  loadli.w r12,  -6368(r30)
000f14  eb540d00  load.d r[10:11], 0(r26)
000f18  ebdb0c00  load.d r[24:25], 0(r25)
000f1c  6b570a00  load.d r[15:16], 0(r20)
000f20  e3462fce  loadli.w r13,  -6380(r30)
000f24  6b580300  load.d r[17:18], 0(r6)
000f28  2b1a0000  lui r20, 1
000f2c  ab0c0000  lui r25, 0
000f30  630d2fce  loadli.w r26,  -6384(r30)
000f34  e34d1fce  loadli.w r27,  -6388(r30)
000f38  1f0a0af0  addli r20, r20, -2048
000f3c  9f8c0c00  addli r25, r25, 0
000f40  b7d10200  beq r5, zero, 116
000f44  00200100  mfence { sm }
000f48  abf20000  lui r5, 15
000f4c  9b92f2ff  ori r5, r5, 4095
000f50  80a10204  csr_set csr3, r5
000f54  80320002  core_id r5
000f58  00d00100  sync_group
000f5c  bbf302fc  bneq r5, zero, -1796
000f60  1f0defcd  addli r26, r30, -6416
000f64  9b331900  slli r7, r18, 1
000f68  1f09afce  addli r18, r30, -6320
000f6c  eb520d00  load.d r[6:7], 0(r26)
000f70  2b0400f0  lui r8, 983040
000f74  6b560900  load.d r[13:14], 0(r18)
000f78  97938300  or r7, r7, r8
000f7c  8b225810  add.ul r[6:7], r[17:18], r[6:7]
000f80  97b2b202  sll.d r[6:7], r[6:7], r11
000f84  8b225610  add.ul r[6:7], r[13:14], r[6:7]
000f88  ff934201  s_sm2gm r7, r20, 0(r[6:7])
000f8c  db19ffff  j -1844
000f90  1f0e2fcf  addli r28, r30, -6256
000f94  0b16d610  add.s r12, r12, r13
000f98  0b14a411  add.s r8, r8, r26
000f9c  8b93b311  add.s r7, r7, r27
000fa0  6b590e00  load.d r[19:20], 0(r28)
000fa4  b3125628  sext_int2long r[5:6], r12
000fa8  00200100  mfence { sm }
000fac  93b22205  setlt.sl r5, r[6:7], r[19:20]
000fb0  37de02fe  beq r5, zero, -108
000fb4  4b7fc9fe  ble.s r18, r12, -36
000fb8  9f028400  addli r5, r8, 64
000fbc  ca110402  vloads_mask16.mz vr3{mr1}, 0(r8)
000fc0  4a910202  vloads_mask16.mz vr2{mr1}, 0(r5)
000fc4  06900100  vfloat2fp16_l.rn vr0, vr3
000fc8  06500100  vfloat2fp16_h.rn vr0, vr2
000fcc  4e800302  vstores.mz vr0{mr1}, 0(r7)
000fd0  5bf8ffff  j -64
000fd4  bf60bd00  blt.s r26, r11, 56
000fd8  9f030000  addli r7, zero, 0
000fdc  1f840c00  addli r8, r25, 0
000fe0  1f860c00  addli r12, r25, 0
000fe4  9f028400  addli r5, r8, 64
000fe8  4a110402  vloads_mask16.mz vr2{mr1}, 0(r8)
000fec  1f040401  addli r8, r8, 128
000ff0  9f834300  addli r7, r7, 32
000ff4  ca910202  vloads_mask16.mz vr3{mr1}, 0(r5)
000ff8  06100100  vfloat2fp16_l.rn vr0, vr2
000ffc  06d00100  vfloat2fp16_h.rn vr0, vr3
001000  4e000602  vstores.mz vr0{mr1}, 0(r12)
001004  1f068600  addli r12, r12, 64
001008  3fffa3ff  blt.s r7, r26, -36
00100c  1f09efcd  addli r18, r30, -6416
001010  9f09afce  addli r19, r30, -6320
001014  9b331d00  slli r7, r26, 1
001018  eb520900  load.d r[6:7], 0(r18)
00101c  00200100  mfence { sm }
001020  2b0400f0  lui r8, 983040
001024  6bd60900  load.d r[13:14], 0(r19)
001028  97938300  or r7, r7, r8
00102c  8b225810  add.ul r[6:7], r[17:18], r[6:7]
001030  97b2b202  sll.d r[6:7], r[6:7], r11
001034  8b225610  add.ul r[6:7], r[13:14], r[6:7]
001038  ff939201  s_sm2gm r7, r25, 0(r[6:7])
00103c  db03ffff  j -2020
001040  9f0e8fcd  addli sp, r30, -6464
001044  9f8e8e32  addli sp, sp, 6464
001048  00a00300  mfence { lm, sm, gm }
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
001130  00100000  exit
001134  00100000  exit
001138  00100000  exit
00113c  00100000  exit
001140  00100000  exit
001144  00100000  exit
001148  00100000  exit
00114c  00100000  exit
001150  00100000  exit
001154  00100000  exit
001158  00100000  exit
00115c  00100000  exit
001160  00100000  exit
001164  00100000  exit
001168  00100000  exit
00116c  00100000  exit
001170  00100000  exit
001174  00100000  exit
001178  00100000  exit
00117c  00100000  exit
001180  00100000  exit
001184  00100000  exit
001188  00100000  exit
00118c  00100000  exit
001190  00100000  exit
001194  00100000  exit
001198  00100000  exit
00119c  00100000  exit
0011a0  00100000  exit
0011a4  00100000  exit
0011a8  00100000  exit
0011ac  00100000  exit
0011b0  00100000  exit
0011b4  00100000  exit
0011b8  00100000  exit
0011bc  00100000  exit
0011c0  00100000  exit
0011c4  00100000  exit
0011c8  00100000  exit
0011cc  00100000  exit
0011d0  00100000  exit
0011d4  00100000  exit
0011d8  00100000  exit
0011dc  00100000  exit
0011e0  00100000  exit
0011e4  00100000  exit
0011e8  00100000  exit
0011ec  00100000  exit
0011f0  00100000  exit
0011f4  00100000  exit
0011f8  00100000  exit
0011fc  00100000  exit
001200  00100000  exit
001204  00100000  exit
001208  00100000  exit
00120c  00100000  exit
001210  00100000  exit
001214  00100000  exit
001218  00100000  exit
00121c  00100000  exit
001220  00100000  exit
001224  00100000  exit
001228  00100000  exit
00122c  00100000  exit
001230  00100000  exit
001234  00100000  exit
001238  00100000  exit
00123c  00100000  exit
001240  00100000  exit
001244  00100000  exit
001248  00100000  exit
00124c  00100000  exit
001250  00100000  exit
001254  00100000  exit
001258  00100000  exit
00125c  00100000  exit
001260  00100000  exit
001264  00100000  exit
001268  00100000  exit
00126c  00100000  exit
001270  00100000  exit
001274  00100000  exit
001278  00100000  exit
00127c  00100000  exit
001280  00100000  exit
001284  00100000  exit
001288  00100000  exit
00128c  00100000  exit
