; SHA-256 c5f093d29222079bba3933b7ad0f9b96dd9c36427b4ae72cea7457125f80035a
; P800 Cluster · XTDK LLVM 15 · 3726 / 3726 words decoded
; bound names: _ZN14xpukernel_xpu311softmax_fwdIfEEvPKT_PS1_ll
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
000078  9f094000  addli r19, zero, 32
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
0000dc  9f8e0ecc  addli sp, sp, -6656
0000e0  1f8f8e33  addli r30, sp, 6592
0000e4  9f711000  addli r3, zero, 15
0000e8  00d40002  load_param_i r8, 1
0000ec  80530002  load_param_i r7, 0
0000f0  80520102  load_param_i r5, 2
0000f4  eb568f01  load.d r[13:14], 24(r30)
0000f8  b381312e  zext_int2long r[3:4], r3
0000fc  eb508f00  load.d r[1:2], 8(r30)
000100  1f03cfcd  addli r6, r30, -6432
000104  eb540f01  load.d r[9:10], 16(r30)
000108  93b1d104  setlt.sl r3, r[3:4], r[13:14]
00010c  1f02bfcd  addli r4, r30, -6440
000110  73301200  store.d r[1:2], 0(r4)
000114  eb500f00  load.d r[1:2], 0(r30)
000118  73301300  store.d r[1:2], 0(r6)
00011c  9f008fce  addli r1, r30, -6336
000120  73b0d000  store.d r[13:14], 0(r1)
000124  3bdd0100  bneq r3, zero, 852
000128  8b918220  mul.s r3, r5, r8
00012c  80350002  core_id r11
000130  b381312e  zext_int2long r[3:4], r3
000134  8b13b450  fmac.s r7, r8, r11
000138  8f923472  mod.sl r[5:6], r[9:10], r[3:4]
00013c  8f913466  div.sl r[3:4], r[9:10], r[3:4]
000140  b383732e  zext_int2long r[7:8], r7
000144  93b55304  setlt.sl r11, r[7:8], r[5:6]
000148  8bb25340  min.sl r[5:6], r[7:8], r[5:6]
00014c  8bb27150  fmac.sl r[5:6], r[3:4], r[7:8]
000150  b385b52e  zext_int2long r[11:12], r11
000154  8ba1b110  add.ul r[3:4], r[3:4], r[11:12]
000158  8ba35110  add.ul r[7:8], r[3:4], r[5:6]
00015c  8bb19240  min.sl r[3:4], r[5:6], r[9:10]
000160  8bb29340  min.sl r[5:6], r[7:8], r[9:10]
000164  93b33206  setle.sl r7, r[5:6], r[3:4]
000168  bbf9031a  bneq r7, zero, 13948
00016c  1f068fce  addli r12, r30, -6336
000170  9f03000c  addli r7, zero, 1536
000174  9f160000  addli r13, zero, 1
000178  9f07afce  addli r15, r30, -6320
00017c  1f070fcf  addli r14, r30, -6272
000180  eb500600  load.d r[1:2], 0(r12)
000184  b383732e  zext_int2long r[7:8], r7
000188  abf4ffff  lui r9, 1048575
00018c  9b94c4ff  ori r9, r9, 4092
000190  8f931366  div.sl r[7:8], r[7:8], r[1:2]
000194  97849000  and r9, r1, r9
000198  b380162a  zext_int2long r[1:2], r13
00019c  73b01700  store.d r[1:2], 0(r15)
0001a0  3395a42a  sext_int2long r[10:11], r9
0001a4  9f00cfce  addli r1, r30, -6304
0001a8  1f01bfce  addli r2, r30, -6312
0001ac  73b05000  store.d r[5:6], 0(r1)
0001b0  73307100  store.d r[7:8], 0(r2)
0001b4  5b0a0000  j 80
0001b8  1f06ffce  addli r12, r30, -6280
0001bc  9f09bfce  addli r19, r30, -6312
0001c0  9f0abfcd  addli r21, r30, -6440
0001c4  1f0befce  addli r22, r30, -6288
0001c8  1f0acfce  addli r20, r30, -6304
0001cc  eb510600  load.d r[3:4], 0(r12)
0001d0  ebd30900  load.d r[7:8], 0(r19)
0001d4  ab0700f0  lui r15, 983040
0001d8  ebd00a00  load.d r[1:2], 0(r21)
0001dc  eb580b00  load.d r[17:18], 0(r22)
0001e0  eb520a00  load.d r[5:6], 0(r20)
0001e4  8ba17110  add.ul r[3:4], r[3:4], r[7:8]
0001e8  8ba81011  add.ul r[17:18], r[1:2], r[17:18]
0001ec  e300dfce  loadli.w r1,  -6296(r30)
0001f0  13b85104  setlt.sl r16, r[3:4], r[5:6]
0001f4  9797f000  or r15, r1, r15
0001f8  ffb7e800  s_lm2gm r15, r14, 0(r[17:18])
0001fc  00a00200  mfence { lm, gm }
000200  b717081a  beq r16, zero, 13796
000204  1f068fce  addli r12, r30, -6336
000208  8bb73218  sub.sl r[15:16], r[5:6], r[3:4]
00020c  9f09ffce  addli r19, r30, -6280
000210  eb500600  load.d r[1:2], 0(r12)
000214  0bba7740  min.sl r[20:21], r[15:16], r[7:8]
000218  73b03900  store.d r[3:4], 0(r19)
00021c  1f04afce  addli r8, r30, -6320
000220  ab0700f0  lui r15, 983040
000224  8bb81120  mul.sl r[17:18], r[3:4], r[1:2]
000228  9f210000  addli r3, zero, 2
00022c  0b3b1a20  mul.sl r[22:23], r[20:21], r[1:2]
000230  97b23802  sll.d r[5:6], r[17:18], r3
000234  eb510400  load.d r[3:4], 0(r8)
000238  9f08cfcd  addli r17, r30, -6432
00023c  9b332b00  slli r7, r22, 2
000240  1f09efce  addli r18, r30, -6288
000244  9797f300  or r15, r7, r15
000248  73305900  store.d r[5:6], 0(r18)
00024c  e7067fce  storeli.w r7, -6296(r30)
000250  13383a04  setlt.sl r16, r[20:21], r[3:4]
000254  ebd10800  load.d r[3:4], 0(r17)
000258  0bab5110  add.ul r[22:23], r[3:4], r[5:6]
00025c  ff27eb00  l_gm2lm r15, r14, 0(r[22:23])
000260  00a00200  mfence { lm, gm }
000264  3b5d08fe  bneq r16, zero, -172
000268  330b6029  zext_int2long r[22:23], zero
00026c  db020000  j 20
000270  271b0b00  addli.d r[22:23], r[22:23], 1
000274  00a00000  mfence { lm }
000278  93314b05  setlt.sl r3, r[22:23], r[20:21]
00027c  b7fc01fe  beq r3, zero, -196
000280  8b371b20  mul.sl r[15:16], r[22:23], r[1:2]
000284  2b0d80ff  lui r26, 1046528
000288  9bb72700  slli r15, r15, 2
00028c  0b1cf710  add.s r24, r14, r15
000290  3fe1d400  blt.s r9, r13, 88
000294  2b0d80ff  lui r26, 1046528
000298  b307f028  zext_int2long r[15:16], zero
00029c  9bbc2700  slli r25, r15, 2
0002a0  a7c70700  addli.d r[15:16], r[15:16], 4
0002a4  8b1d9c11  add.s r27, r24, r25
0002a8  1b9e4c00  ori r28, r25, 4
0002ac  1b968c00  ori r12, r25, 8
0002b0  9b9ccc00  ori r25, r25, 12
0002b4  e38d0d00  loadli.w r27,  0(r27)
0002b8  0b1ecc11  add.s r28, r24, r28
0002bc  0b16cc10  add.s r12, r24, r12
0002c0  8b1c9c11  add.s r25, r24, r25
0002c4  63060600  loadli.w r12,  0(r12)
0002c8  e38c0c00  loadli.w r25,  0(r25)
0002cc  0b6dbd49  max.f r26, r26, r27
0002d0  e30d0e00  loadli.w r27,  0(r28)
0002d4  13bea704  setlt.sl r28, r[15:16], r[10:11]
0002d8  0b6dbd49  max.f r26, r26, r27
0002dc  0b66cd48  max.f r12, r26, r12
0002e0  0b6d9649  max.f r26, r12, r25
0002e4  bb6e0efe  bneq r28, zero, -72
0002e8  93bca006  setle.sl r25, r[1:2], r[10:11]
0002ec  a7070500  addli.d r[15:16], r[10:11], 0
0002f0  bb800c00  bneq r25, zero, 32
0002f4  1bb62700  slli r12, r15, 2
0002f8  a7970700  addli.d r[15:16], r[15:16], 1
0002fc  0b16cc10  add.s r12, r24, r12
000300  93bd1704  setlt.sl r27, r[15:16], r[1:2]
000304  63060600  loadli.w r12,  0(r12)
000308  0b6dcd48  max.f r26, r26, r12
00030c  bbaf0dfe  bneq r27, zero, -24
000310  3fb2d400  blt.s r9, r13, 140
000314  b307f028  zext_int2long r[15:16], zero
000318  9f0d0000  addli r27, zero, 0
00031c  1bb62700  slli r12, r15, 2
000320  a7c70700  addli.d r[15:16], r[15:16], 4
000324  0b1ecc10  add.s r28, r24, r12
000328  9b134600  ori r7, r12, 4
00032c  1b138600  ori r6, r12, 8
000330  1b16c600  ori r12, r12, 12
000334  93b1a704  setlt.sl r3, r[15:16], r[10:11]
000338  63040e00  loadli.w r8,  0(r28)
00033c  8b137c10  add.s r7, r24, r7
000340  0b136c10  add.s r6, r24, r6
000344  0b16cc10  add.s r12, r24, r12
000348  e3820300  loadli.w r5,  0(r7)
00034c  e3080300  loadli.w r17,  0(r6)
000350  0b64a419  sub.f.rn r8, r8, r26
000354  8be2a219  sub.f.rn r5, r5, r26
000358  8be8a819  sub.f.rn r17, r17, r26
00035c  0f048400  exp.f.rn r8, r8
000360  8f825200  exp.f.rn r5, r5
000364  8f881801  exp.f.rn r17, r17
000368  0be98d10  add.f.rn r18, r27, r8
00036c  e30d0600  loadli.w r27,  0(r12)
000370  67008e00  storeli.w r8, 0(r28)
000374  67805300  storeli.w r5, 0(r7)
000378  67001301  storeli.w r17, 0(r6)
00037c  8bedad19  sub.f.rn r27, r27, r26
000380  0b695910  add.f.rn r18, r18, r5
000384  8f893d01  exp.f.rn r19, r27
000388  0b691911  add.f.rn r18, r18, r17
00038c  67003601  storeli.w r19, 0(r12)
000390  8b6d3911  add.f.rn r27, r18, r19
000394  3bae01fe  bneq r3, zero, -120
000398  5b010000  j 8
00039c  9f0d0000  addli r27, zero, 0
0003a0  9f018fce  addli r3, r30, -6336
0003a4  a7070500  addli.d r[15:16], r[10:11], 0
0003a8  ebd00100  load.d r[1:2], 0(r3)
0003ac  bbb00c00  bneq r25, zero, 44
0003b0  9bb12700  slli r3, r15, 2
0003b4  a7970700  addli.d r[15:16], r[15:16], 1
0003b8  8b113c10  add.s r3, r24, r3
0003bc  93b21704  setlt.sl r5, r[15:16], r[1:2]
0003c0  63820100  loadli.w r4,  0(r3)
0003c4  0b62a219  sub.f.rn r4, r4, r26
0003c8  0f024200  exp.f.rn r4, r4
0003cc  8bed4d10  add.f.rn r27, r27, r4
0003d0  67804100  storeli.w r4, 0(r3)
0003d4  3bff02fe  bneq r5, zero, -36
0003d8  ab01803f  lui r3, 260096
0003dc  0f8db119  div.f.rn r26, r3, r27
0003e0  bf91d400  blt.s r9, r13, 100
0003e4  b307f028  zext_int2long r[15:16], zero
0003e8  9bb12700  slli r3, r15, 2
0003ec  a7c70700  addli.d r[15:16], r[15:16], 4
0003f0  9b924100  ori r5, r3, 4
0003f4  9b938100  ori r7, r3, 8
0003f8  0b123c10  add.s r4, r24, r3
0003fc  9b91c100  ori r3, r3, 12
000400  13b9a704  setlt.sl r18, r[15:16], r[10:11]
000404  8b125c10  add.s r5, r24, r5
000408  8b137c10  add.s r7, r24, r7
00040c  8b113c10  add.s r3, r24, r3
000410  63030200  loadli.w r6,  0(r4)
000414  63840200  loadli.w r8,  0(r5)
000418  63860300  loadli.w r12,  0(r7)
00041c  e3880100  loadli.w r17,  0(r3)
000420  0b636d20  mul.f.rn r6, r26, r6
000424  0b648d20  mul.f.rn r8, r26, r8
000428  0b66cd20  mul.f.rn r12, r26, r12
00042c  8b681d21  mul.f.rn r17, r26, r17
000430  67006200  storeli.w r6, 0(r4)
000434  67808200  storeli.w r8, 0(r5)
000438  6780c300  storeli.w r12, 0(r7)
00043c  67801101  storeli.w r17, 0(r3)
000440  bb2e09fe  bneq r18, zero, -88
000444  9f018fce  addli r3, r30, -6336
000448  a7070500  addli.d r[15:16], r[10:11], 0
00044c  ebd00100  load.d r[1:2], 0(r3)
000450  bb880cfe  bneq r25, zero, -480
000454  9bb12700  slli r3, r15, 2
000458  a7970700  addli.d r[15:16], r[15:16], 1
00045c  8b113c10  add.s r3, r24, r3
000460  93b21704  setlt.sl r5, r[15:16], r[1:2]
000464  63820100  loadli.w r4,  0(r3)
000468  0b624d20  mul.f.rn r4, r26, r4
00046c  67804100  storeli.w r4, 0(r3)
000470  bb9f02fe  bneq r5, zero, -28
000474  dbbfffff  j -516
000478  9f01000c  addli r3, zero, 1536
00047c  b385b12e  zext_int2long r[11:12], r3
000480  13a2d504  setlt.ul r4, r[11:12], r[13:14]
000484  3b050204  bneq r4, zero, 2368
000488  8b918220  mul.s r3, r5, r8
00048c  80350002  core_id r11
000490  b381312e  zext_int2long r[3:4], r3
000494  8b13b450  fmac.s r7, r8, r11
000498  8f923472  mod.sl r[5:6], r[9:10], r[3:4]
00049c  8f913466  div.sl r[3:4], r[9:10], r[3:4]
0004a0  b383732e  zext_int2long r[7:8], r7
0004a4  93b55304  setlt.sl r11, r[7:8], r[5:6]
0004a8  8bb25340  min.sl r[5:6], r[7:8], r[5:6]
0004ac  8bb27150  fmac.sl r[5:6], r[3:4], r[7:8]
0004b0  8bb09240  min.sl r[1:2], r[5:6], r[9:10]
0004b4  b383752e  zext_int2long r[7:8], r11
0004b8  a385f600  andi.d r[11:12], r[13:14], 15
0004bc  8ba17110  add.ul r[3:4], r[3:4], r[7:8]
0004c0  b3037028  zext_int2long r[7:8], zero
0004c4  8ba15110  add.ul r[3:4], r[3:4], r[5:6]
0004c8  8bb29140  min.sl r[5:6], r[3:4], r[9:10]
0004cc  13a27502  setneq.d r4, r[11:12], r[7:8]
0004d0  a7850000  addli.d r[11:12], r[1:2], 0
0004d4  9f039fcd  addli r7, r30, -6456
0004d8  93b1b206  setle.sl r3, r[5:6], r[11:12]
0004dc  73b05300  store.d r[5:6], 0(r7)
0004e0  3731020e  beq r4, zero, 7244
0004e4  3b8c0118  bneq r3, zero, 13056
0004e8  9f098fce  addli r19, r30, -6336
0004ec  abf00000  lui r1, 15
0004f0  1f01000c  addli r2, zero, 1536
0004f4  a7880500  addli.d r[17:18], r[11:12], 0
0004f8  1f06cfce  addli r12, r30, -6304
0004fc  1f0bdfce  addli r22, r30, -6296
000500  9f0cafce  addli r25, r30, -6320
000504  1f0d9fce  addli r26, r30, -6328
000508  9f0b9fcd  addli r23, r30, -6456
00050c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000510  ebd70900  load.d r[15:16], 0(r19)
000514  9b90f0ff  ori r1, r1, 4095
000518  2bf3ffff  lui r6, 1048575
00051c  9b14f3ff  ori r9, r6, 4095
000520  9b1303fe  ori r7, r6, 4064
000524  97801700  and r1, r15, r1
000528  9bb92700  slli r19, r15, 2
00052c  a781e7ff  addli.d r[3:4], r[15:16], 32752
000530  3385a32e  zext_int2long r[10:11], r7
000534  97827700  and r5, r15, r7
000538  8b001130  div.u r1, r2, r1
00053c  1b81f701  andi r2, r15, 31
000540  9786a702  and.d r[13:14], r[15:16], r[10:11]
000544  27850800  addli.d r[10:11], r[17:18], 0
000548  17b12400  sll r2, r9, r2
00054c  338a402b  zext_int2long r[20:21], r1
000550  97209100  xor r1, r2, r9
000554  1f743000  addli r8, zero, 31
000558  97888702  and.d r[17:18], r[15:16], r[8:9]
00055c  7e8000e0  vmmov mr0, r1
000560  9bc00001  srli r1, r1, 16
000564  7e0000a0  vmmov zero, mr0
000568  17b11401  sll r2, r9, r17
00056c  7e8000e0  vmmov mr0, r1
000570  67000600  storeli.w zero, 0(r12)
000574  17200000  xor zero, zero, zero
000578  73301b01  store.d r[17:18], 0(r22)
00057c  1f090fcf  addli r18, r30, -6272
000580  7e0000a0  vmmov zero, mr0
000584  97239100  xor r7, r2, r9
000588  67800c00  storeli.w zero, 0(r25)
00058c  1b11c3ff  ori r2, r6, 4092
000590  17200000  xor zero, zero, zero
000594  6bd40b00  load.d r[8:9], 0(r23)
000598  9bc00301  srli r1, r7, 16
00059c  97882700  and r17, r15, r2
0005a0  1b118900  ori r2, r18, 8
0005a4  e7057fce  storeli.w r7, -6312(r30)
0005a8  7e8000e0  vmmov mr0, r1
0005ac  9b1003ff  ori r1, r6, 4080
0005b0  67012fce  storeli.w r2, -6384(r30)
0005b4  1b813700  andi r2, r15, 3
0005b8  1f037fce  addli r6, r30, -6344
0005bc  7e0000a0  vmmov zero, mr0
0005c0  7e8003e0  vmmov mr0, r7
0005c4  97801900  and r1, r19, r1
0005c8  67000d00  storeli.w zero, 0(r26)
0005cc  17200000  xor zero, zero, zero
0005d0  67072fce  storeli.w r2, -6288(r30)
0005d4  1f013fce  addli r2, r30, -6376
0005d8  8b101910  add.s r1, r18, r1
0005dc  1f0c0002  addli r24, zero, 256
0005e0  e7401fce  storeli.w r1, -6388(r30)
0005e4  9f100000  addli r1, zero, 1
0005e8  7e0000a0  vmmov zero, mr0
0005ec  67000300  storeli.w zero, 0(r6)
0005f0  17200000  xor zero, zero, zero
0005f4  b387f02a  zext_int2long r[15:16], r1
0005f8  7e8000e0  vmmov mr0, r1
0005fc  9f004fce  addli r1, r30, -6368
000600  7330f100  store.d r[15:16], 0(r2)
000604  73b04001  store.d r[20:21], 0(r1)
000608  db0a0000  j 84
00060c  1f0bafcd  addli r22, r30, -6448
000610  9f0b4fce  addli r23, r30, -6368
000614  00a00000  mfence { lm }
000618  9f0c9fcd  addli r25, r30, -6456
00061c  1f0dbfcd  addli r26, r30, -6440
000620  9f0d6fce  addli r27, r30, -6352
000624  6b550b00  load.d r[10:11], 0(r22)
000628  6bda0b00  load.d r[20:21], 0(r23)
00062c  ab0000f0  lui r1, 983040
000630  6bd40c00  load.d r[8:9], 0(r25)
000634  63465fce  loadli.w r12,  -6356(r30)
000638  6b530d00  load.d r[6:7], 0(r26)
00063c  ebd70d00  load.d r[15:16], 0(r27)
000640  0b254511  add.ul r[10:11], r[10:11], r[20:21]
000644  0b23f310  add.ul r[6:7], r[6:7], r[15:16]
000648  97101600  or r1, r12, r1
00064c  13318504  setlt.sl r2, r[10:11], r[8:9]
000650  ff302301  s_lm2gm r1, r18, 0(r[6:7])
000654  00a00200  mfence { lm, gm }
000658  37360118  beq r2, zero, 12684
00065c  1f0b8fce  addli r22, r30, -6336
000660  8b30a418  sub.sl r[1:2], r[8:9], r[10:11]
000664  9f0bafcd  addli r23, r30, -6448
000668  6b540b00  load.d r[8:9], 0(r22)
00066c  8bb74041  min.sl r[15:16], r[1:2], r[20:21]
000670  73b0ab00  store.d r[10:11], 0(r23)
000674  1f210000  addli r2, zero, 2
000678  ab0000f0  lui r1, 983040
00067c  0b338520  mul.sl r[6:7], r[10:11], r[8:9]
000680  8bb58720  mul.sl r[11:12], r[15:16], r[8:9]
000684  1bb52500  slli r10, r11, 2
000688  9f053fce  addli r11, r30, -6376
00068c  17342302  sll.d r[8:9], r[6:7], r2
000690  1f06ffce  addli r12, r30, -6280
000694  6bd30500  load.d r[6:7], 0(r11)
000698  7330f600  store.d r[15:16], 0(r12)
00069c  97101500  or r1, r10, r1
0006a0  e742afce  storeli.w r10, -6356(r30)
0006a4  13b16704  setlt.sl r2, r[15:16], r[6:7]
0006a8  9f07cfcd  addli r15, r30, -6432
0006ac  1f086fce  addli r16, r30, -6352
0006b0  6bd30700  load.d r[6:7], 0(r15)
0006b4  73308800  store.d r[8:9], 0(r16)
0006b8  0b238310  add.ul r[6:7], r[6:7], r[8:9]
0006bc  ff202301  l_gm2lm r1, r18, 0(r[6:7])
0006c0  00a00200  mfence { lm, gm }
0006c4  3b2d01fe  bneq r2, zero, -184
0006c8  e34c1fce  loadli.w r25,  -6388(r30)
0006cc  630d2fce  loadli.w r26,  -6384(r30)
0006d0  b305b028  zext_int2long r[11:12], zero
0006d4  5b070000  j 56
0006d8  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
0006dc  9b400401  srli r1, r8, 16
0006e0  1f818300  addli r2, r7, 64
0006e4  7e8100e0  vmmov mr2, r1
0006e8  46101114  vstore_mask16.mh vr1{mr2}, 0(r2)
0006ec  1f03ffce  addli r6, r30, -6280
0006f0  a7950500  addli.d r[11:12], r[11:12], 1
0006f4  0b1d3d11  add.s r26, r26, r19
0006f8  8b9c3c11  add.s r25, r25, r19
0006fc  eb500300  load.d r[1:2], 0(r6)
000700  00a00000  mfence { lm }
000704  93b01504  setlt.sl r1, r[11:12], r[1:2]
000708  379c00fe  beq r1, zero, -252
00070c  1f048fce  addli r8, r30, -6336
000710  33036028  zext_int2long r[6:7], zero
000714  eb500400  load.d r[1:2], 0(r8)
000718  8bb71520  mul.sl r[15:16], r[11:12], r[1:2]
00071c  a380f700  andi.d r[1:2], r[15:16], 15
000720  278a0700  addli.d r[20:21], r[15:16], 0
000724  93a06000  seteq.d r1, r[1:2], r[6:7]
000728  3be00000  bneq r1, zero, 24
00072c  9f002000  addli r1, zero, 16
000730  1f430000  addli r6, zero, 4
000734  b380102a  zext_int2long r[1:2], r1
000738  8f901762  div.sl r[1:2], r[15:16], r[1:2]
00073c  17ba6002  sll.d r[20:21], r[1:2], r6
000740  13a44703  setneq.d r8, r[15:16], r[20:21]
000744  9bb02700  slli r1, r15, 2
000748  8bb74719  sub.sl r[15:16], r[15:16], r[20:21]
00074c  8b131910  add.s r7, r18, r1
000750  3b110400  bneq r8, zero, 68
000754  2b0380ff  lui r6, 1046528
000758  b7c30200  beq r5, zero, 240
00075c  ab0080ff  lui r1, 1046528
000760  330b6029  zext_int2long r[22:23], zero
000764  ea900022  vor.f.mz vr1{mr1}, r1, vr0
000768  9b302b00  slli r1, r22, 2
00076c  270b4b00  addli.d r[22:23], r[22:23], 32
000770  8b901310  add.s r1, r7, r1
000774  1321db04  setlt.ul r2, r[22:23], r[13:14]
000778  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
00077c  9f808000  addli r1, r1, 64
000780  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000784  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
000788  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
00078c  3b7f01fe  bneq r2, zero, -36
000790  db170000  j 188
000794  abf0ffff  lui r1, 1048575
000798  1bb32700  slli r6, r15, 2
00079c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0007a0  0bab3710  add.ul r[22:23], r[15:16], r[3:4]
0007a4  1b91f0ff  ori r2, r1, 4095
0007a8  0b936318  sub.s r6, r7, r6
0007ac  9b9000fe  ori r1, r1, 4064
0007b0  1731f100  sll r2, r2, r15
0007b4  17091b00  and r18, r22, r1
0007b8  9f100000  addli r1, zero, 1
0007bc  7e0101e0  vmmov mr2, r2
0007c0  b31db92d  sext_int2long r[27:28], r18
0007c4  42110304  vload_mask16.mz vr2{mr2}, 0(r6)
0007c8  2b0180ff  lui r2, 1046528
0007cc  1f038300  addli r6, r6, 64
0007d0  ea101122  vor.f.mz vr1{mr1}, r2, vr1
0007d4  b6902014  vmax.f.mh vr1{mr2}, vr1, vr2
0007d8  bf401900  blt.s r18, r1, 48
0007dc  330a4029  zext_int2long r[20:21], zero
0007e0  9b302a00  slli r1, r20, 2
0007e4  270a4a00  addli.d r[20:21], r[20:21], 32
0007e8  8b101310  add.s r1, r6, r1
0007ec  1331ba05  setlt.sl r2, r[20:21], r[27:28]
0007f0  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0007f4  9f808000  addli r1, r1, 64
0007f8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0007fc  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
000800  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
000804  3b7f01fe  bneq r2, zero, -36
000808  93b06d05  setlt.sl r1, r[27:28], r[22:23]
00080c  37b20000  beq r1, zero, 140
000810  abf0ffff  lui r1, 1048575
000814  1b01fb01  andi r2, r22, 31
000818  1b392900  slli r18, r18, 2
00081c  9b90f0ff  ori r1, r1, 4095
000820  17b12000  sll r2, r1, r2
000824  97201100  xor r1, r2, r1
000828  0b112311  add.s r2, r6, r18
00082c  7e8100e0  vmmov mr2, r1
000830  9bc00001  srli r1, r1, 16
000834  42110104  vload_mask16.mz vr2{mr2}, 0(r2)
000838  1f018100  addli r2, r2, 64
00083c  fe8100e0  vmmov mr3, r1
000840  c2110106  vload_mask16.mz vr3{mr3}, 0(r2)
000844  db090000  j 76
000848  ea100322  vor.f.mz vr1{mr1}, r6, vr0
00084c  1f038fce  addli r6, r30, -6336
000850  eb500300  load.d r[1:2], 0(r6)
000854  93a01604  setlt.ul r1, r[13:14], r[1:2]
000858  37810000  beq r1, zero, 64
00085c  1f01cfce  addli r2, r30, -6304
000860  9bb02200  slli r1, r5, 2
000864  1f03afce  addli r6, r30, -6320
000868  63000100  loadli.w zero,  0(r2)
00086c  8b901310  add.s r1, r7, r1
000870  7e0100e0  vmmov mr2, zero
000874  17200000  xor zero, zero, zero
000878  63000300  loadli.w zero,  0(r6)
00087c  42910004  vload_mask16.mz vr2{mr2}, 0(r1)
000880  9f808000  addli r1, r1, 64
000884  fe0100e0  vmmov mr3, zero
000888  17200000  xor zero, zero, zero
00088c  c2910006  vload_mask16.mz vr3{mr3}, 0(r1)
000890  b6902014  vmax.f.mh vr1{mr2}, vr1, vr2
000894  b6903016  vmax.f.mh vr1{mr3}, vr1, vr3
000898  6a711cc0  vsrl.p vr2, r24, vr1
00089c  9f000001  addli r1, zero, 128
0008a0  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
0008a4  6af110c0  vsrl.p vr2, r1, vr1
0008a8  9f008000  addli r1, zero, 64
0008ac  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
0008b0  6af110c0  vsrl.p vr2, r1, vr1
0008b4  9f004000  addli r1, zero, 32
0008b8  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
0008bc  6af110c0  vsrl.p vr2, r1, vr1
0008c0  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
0008c4  fa900020  vextract.f r1, vr1{mr0}
0008c8  0be30058  neg.f r6, r1
0008cc  bb220400  bneq r8, zero, 168
0008d0  b7e00200  beq r5, zero, 56
0008d4  330a4029  zext_int2long r[20:21], zero
0008d8  9b302a00  slli r1, r20, 2
0008dc  270a4a00  addli.d r[20:21], r[20:21], 32
0008e0  8b901310  add.s r1, r7, r1
0008e4  1321da04  setlt.ul r2, r[20:21], r[13:14]
0008e8  1f898000  addli r18, r1, 64
0008ec  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0008f0  42110902  vload_mask16.mz vr2{mr1}, 0(r18)
0008f4  92101302  vadd.f.mz.rn vr1{mr1}, r6, vr1
0008f8  12112302  vadd.f.mz.rn vr2{mr1}, r6, vr2
0008fc  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000900  46102902  vstore_mask16.mz vr2{mr1}, 0(r18)
000904  3b5f01fe  bneq r2, zero, -44
000908  9f048fce  addli r9, r30, -6336
00090c  ebd00400  load.d r[1:2], 0(r9)
000910  93a01604  setlt.ul r1, r[13:14], r[1:2]
000914  37850000  beq r1, zero, 320
000918  9bb02200  slli r1, r5, 2
00091c  9f0adfce  addli r21, r30, -6296
000920  1f0a7fce  addli r20, r30, -6344
000924  630bbfce  loadli.w r22,  -6312(r30)
000928  0b991310  add.s r18, r7, r1
00092c  9f002000  addli r1, zero, 16
000930  ebd40a00  load.d r[9:10], 0(r21)
000934  63000a00  loadli.w zero,  0(r20)
000938  b380102a  zext_int2long r[1:2], r1
00093c  fe0100e0  vmmov mr3, zero
000940  17200000  xor zero, zero, zero
000944  93b09004  setlt.sl r1, r[1:2], r[9:10]
000948  9f049fce  addli r9, r30, -6328
00094c  42110906  vload_mask16.mz vr2{mr3}, 0(r18)
000950  1f018900  addli r2, r18, 64
000954  63800400  loadli.w zero,  0(r9)
000958  7e0100e0  vmmov mr2, zero
00095c  17200000  xor zero, zero, zero
000960  c2100104  vload_mask16.mz vr1{mr2}, 0(r2)
000964  12112302  vadd.f.mz.rn vr2{mr1}, r6, vr2
000968  46102916  vstore_mask16.mh vr2{mr3}, 0(r18)
00096c  3bd30000  bneq r1, zero, 212
000970  db1c0000  j 228
000974  abf0ffff  lui r1, 1048575
000978  1bb92700  slli r18, r15, 2
00097c  8bad3710  add.ul r[27:28], r[15:16], r[3:4]
000980  1b91f0ff  ori r2, r1, 4095
000984  0b9a2319  sub.s r20, r7, r18
000988  9b9000fe  ori r1, r1, 4064
00098c  1731f100  sll r2, r2, r15
000990  178b1d00  and r22, r27, r1
000994  1f098a00  addli r18, r20, 64
000998  9f100000  addli r1, zero, 1
00099c  7e0101e0  vmmov mr2, r2
0009a0  b31b7b2d  sext_int2long r[23:24], r22
0009a4  c2100a04  vload_mask16.mz vr1{mr2}, 0(r20)
0009a8  92101302  vadd.f.mz.rn vr1{mr1}, r6, vr1
0009ac  46101a14  vstore_mask16.mh vr1{mr2}, 0(r20)
0009b0  bf601b00  blt.s r22, r1, 56
0009b4  330a4029  zext_int2long r[20:21], zero
0009b8  9b302a00  slli r1, r20, 2
0009bc  270a4a00  addli.d r[20:21], r[20:21], 32
0009c0  8b101910  add.s r1, r18, r1
0009c4  13317a05  setlt.sl r2, r[20:21], r[23:24]
0009c8  9f848000  addli r9, r1, 64
0009cc  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0009d0  42910402  vload_mask16.mz vr2{mr1}, 0(r9)
0009d4  92101302  vadd.f.mz.rn vr1{mr1}, r6, vr1
0009d8  12112302  vadd.f.mz.rn vr2{mr1}, r6, vr2
0009dc  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0009e0  46902402  vstore_mask16.mz vr2{mr1}, 0(r9)
0009e4  3b5f01fe  bneq r2, zero, -44
0009e8  93b0bb05  setlt.sl r1, r[23:24], r[27:28]
0009ec  b7a10000  beq r1, zero, 104
0009f0  abf0ffff  lui r1, 1048575
0009f4  8bb47d19  sub.sl r[9:10], r[27:28], r[23:24]
0009f8  1b3a2b00  slli r20, r22, 2
0009fc  9b90f0ff  ori r1, r1, 4095
000a00  0b194911  add.s r18, r18, r20
000a04  17b19000  sll r2, r1, r9
000a08  172b1100  xor r22, r2, r1
000a0c  9f102000  addli r1, zero, 17
000a10  b380102a  zext_int2long r[1:2], r1
000a14  7e010be0  vmmov mr2, r22
000a18  42110904  vload_mask16.mz vr2{mr2}, 0(r18)
000a1c  93b01404  setlt.sl r1, r[9:10], r[1:2]
000a20  1f012000  addli r2, zero, 16
000a24  9f048900  addli r9, r18, 64
000a28  17512b00  sra r2, r22, r2
000a2c  fe0101e0  vmmov mr3, r2
000a30  c2900406  vload_mask16.mz vr1{mr3}, 0(r9)
000a34  12112302  vadd.f.mz.rn vr2{mr1}, r6, vr2
000a38  46102914  vstore_mask16.mh vr2{mr2}, 0(r18)
000a3c  3be00000  bneq r1, zero, 24
000a40  92101302  vadd.f.mz.rn vr1{mr1}, r6, vr1
000a44  9b400b01  srli r1, r22, 16
000a48  1f018900  addli r2, r18, 64
000a4c  7e8100e0  vmmov mr2, r1
000a50  46101114  vstore_mask16.mh vr1{mr2}, 0(r2)
000a54  00a00000  mfence { lm }
000a58  37a10800  beq r17, zero, 72
000a5c  1f030000  addli r6, zero, 0
000a60  1f090d00  addli r18, r26, 0
000a64  e300f9ff  loadli.w r1,  -8(r18)
000a68  6341f9ff  loadli.w r2,  -4(r18)
000a6c  e3040900  loadli.w r9,  0(r18)
000a70  63450900  loadli.w r10,  4(r18)
000a74  1f430300  addli r6, r6, 4
000a78  8f801000  exp.f.rn r1, r1
000a7c  0f012100  exp.f.rn r2, r2
000a80  8f849400  exp.f.rn r9, r9
000a84  0f05a500  exp.f.rn r10, r10
000a88  e70f19fe  storeli.w r1, -8(r18)
000a8c  e74f29fe  storeli.w r2, -4(r18)
000a90  67009900  storeli.w r9, 0(r18)
000a94  6740a900  storeli.w r10, 4(r18)
000a98  1f092900  addli r18, r18, 16
000a9c  3f2f13ff  blt.s r6, r17, -56
000aa0  9f048fce  addli r9, r30, -6336
000aa4  6309efce  loadli.w r18,  -6288(r30)
000aa8  1f830c00  addli r6, r25, 0
000aac  ebd00400  load.d r[1:2], 0(r9)
000ab0  93801007  setle.u r1, r1, r17
000ab4  3bf00000  bneq r1, zero, 28
000ab8  e3000300  loadli.w r1,  0(r6)
000abc  1f79f9ff  addli r18, r18, -1
000ac0  8f801000  exp.f.rn r1, r1
000ac4  67001300  storeli.w r1, 0(r6)
000ac8  1f430300  addli r6, r6, 4
000acc  bb3f09fe  bneq r18, zero, -20
000ad0  1f0c0002  addli r24, zero, 256
000ad4  00a00000  mfence { lm }
000ad8  3b020400  bneq r8, zero, 128
000adc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000ae0  b7d00200  beq r5, zero, 52
000ae4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000ae8  330a4029  zext_int2long r[20:21], zero
000aec  9b302a00  slli r1, r20, 2
000af0  270a4a00  addli.d r[20:21], r[20:21], 32
000af4  8b901310  add.s r1, r7, r1
000af8  1321da04  setlt.ul r2, r[20:21], r[13:14]
000afc  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000b00  9f808000  addli r1, r1, 64
000b04  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000b08  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000b0c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000b10  3b7f01fe  bneq r2, zero, -36
000b14  1f038fce  addli r6, r30, -6336
000b18  1f090fcf  addli r18, r30, -6272
000b1c  eb500300  load.d r[1:2], 0(r6)
000b20  93a01604  setlt.ul r1, r[13:14], r[1:2]
000b24  b7c30000  beq r1, zero, 240
000b28  9bb02200  slli r1, r5, 2
000b2c  1f01afce  addli r2, r30, -6320
000b30  0b931310  add.s r6, r7, r1
000b34  9f00cfce  addli r1, r30, -6304
000b38  63800000  loadli.w zero,  0(r1)
000b3c  7e0100e0  vmmov mr2, zero
000b40  17200000  xor zero, zero, zero
000b44  42110304  vload_mask16.mz vr2{mr2}, 0(r6)
000b48  63000100  loadli.w zero,  0(r2)
000b4c  7e0100e0  vmmov mr2, zero
000b50  17200000  xor zero, zero, zero
000b54  5b150000  j 168
000b58  abf0ffff  lui r1, 1048575
000b5c  1bb32700  slli r6, r15, 2
000b60  0bab3710  add.ul r[22:23], r[15:16], r[3:4]
000b64  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
000b68  1b91f0ff  ori r2, r1, 4095
000b6c  0b936318  sub.s r6, r7, r6
000b70  9b9000fe  ori r1, r1, 4064
000b74  1731f100  sll r2, r2, r15
000b78  17091b00  and r18, r22, r1
000b7c  9f100000  addli r1, zero, 1
000b80  7e0101e0  vmmov mr2, r2
000b84  b31db92d  sext_int2long r[27:28], r18
000b88  c2100304  vload_mask16.mz vr1{mr2}, 0(r6)
000b8c  1f038300  addli r6, r6, 64
000b90  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000b94  bf401900  blt.s r18, r1, 48
000b98  330a4029  zext_int2long r[20:21], zero
000b9c  9b302a00  slli r1, r20, 2
000ba0  270a4a00  addli.d r[20:21], r[20:21], 32
000ba4  8b101310  add.s r1, r6, r1
000ba8  1331ba05  setlt.sl r2, r[20:21], r[27:28]
000bac  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000bb0  9f808000  addli r1, r1, 64
000bb4  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000bb8  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000bbc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000bc0  3b7f01fe  bneq r2, zero, -36
000bc4  93b06d05  setlt.sl r1, r[27:28], r[22:23]
000bc8  37a10000  beq r1, zero, 72
000bcc  abf0ffff  lui r1, 1048575
000bd0  1b01fb01  andi r2, r22, 31
000bd4  9b342900  slli r9, r18, 2
000bd8  1f090fcf  addli r18, r30, -6272
000bdc  9b90f0ff  ori r1, r1, 4095
000be0  0b139310  add.s r6, r6, r9
000be4  17b12000  sll r2, r1, r2
000be8  97201100  xor r1, r2, r1
000bec  7e8100e0  vmmov mr2, r1
000bf0  9bc00001  srli r1, r1, 16
000bf4  42110304  vload_mask16.mz vr2{mr2}, 0(r6)
000bf8  7e8100e0  vmmov mr2, r1
000bfc  9f008300  addli r1, r6, 64
000c00  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000c04  c2910004  vload_mask16.mz vr3{mr2}, 0(r1)
000c08  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000c0c  5b010000  j 8
000c10  1f090fcf  addli r18, r30, -6272
000c14  6a711cc0  vsrl.p vr2, r24, vr1
000c18  9f000001  addli r1, zero, 128
000c1c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000c20  6af110c0  vsrl.p vr2, r1, vr1
000c24  9f008000  addli r1, zero, 64
000c28  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000c2c  6af110c0  vsrl.p vr2, r1, vr1
000c30  9f004000  addli r1, zero, 32
000c34  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000c38  6af110c0  vsrl.p vr2, r1, vr1
000c3c  ab00803f  lui r1, 260096
000c40  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000c44  7a910020  vextract.f r2, vr1{mr0}
000c48  0f832018  div.f.rn r6, r1, r2
000c4c  bb220400  bneq r8, zero, 168
000c50  b7e00200  beq r5, zero, 56
000c54  b307f028  zext_int2long r[15:16], zero
000c58  9bb02700  slli r1, r15, 2
000c5c  a7874700  addli.d r[15:16], r[15:16], 32
000c60  8b901310  add.s r1, r7, r1
000c64  13a1d704  setlt.ul r2, r[15:16], r[13:14]
000c68  1f848000  addli r8, r1, 64
000c6c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000c70  42110402  vload_mask16.mz vr2{mr1}, 0(r8)
000c74  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
000c78  0a112302  vmul.f.mz.rn vr2{mr1}, r6, vr2
000c7c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000c80  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
000c84  3b5f01fe  bneq r2, zero, -44
000c88  1f048fce  addli r8, r30, -6336
000c8c  eb500400  load.d r[1:2], 0(r8)
000c90  93a01604  setlt.ul r1, r[13:14], r[1:2]
000c94  37e900fc  beq r1, zero, -1448
000c98  9bb02200  slli r1, r5, 2
000c9c  9f07dfce  addli r15, r30, -6296
000ca0  1f057fce  addli r10, r30, -6344
000ca4  8b931310  add.s r7, r7, r1
000ca8  9f002000  addli r1, zero, 16
000cac  6bd40700  load.d r[8:9], 0(r15)
000cb0  63000500  loadli.w zero,  0(r10)
000cb4  b380102a  zext_int2long r[1:2], r1
000cb8  fe0100e0  vmmov mr3, zero
000cbc  17200000  xor zero, zero, zero
000cc0  93b08004  setlt.sl r1, r[1:2], r[8:9]
000cc4  9f049fce  addli r9, r30, -6328
000cc8  42910306  vload_mask16.mz vr2{mr3}, 0(r7)
000ccc  1f818300  addli r2, r7, 64
000cd0  6304bfce  loadli.w r8,  -6312(r30)
000cd4  63800400  loadli.w zero,  0(r9)
000cd8  7e0100e0  vmmov mr2, zero
000cdc  17200000  xor zero, zero, zero
000ce0  c2100104  vload_mask16.mz vr1{mr2}, 0(r2)
000ce4  0a112302  vmul.f.mz.rn vr2{mr1}, r6, vr2
000ce8  46902316  vstore_mask16.mh vr2{mr3}, 0(r7)
000cec  bbb700fc  bneq r1, zero, -1556
000cf0  db3fffff  j -1540
000cf4  abf0ffff  lui r1, 1048575
000cf8  1bb42700  slli r8, r15, 2
000cfc  1b91f0ff  ori r2, r1, 4095
000d00  8b948318  sub.s r9, r7, r8
000d04  9b9000fe  ori r1, r1, 4064
000d08  1731f100  sll r2, r2, r15
000d0c  8ba73710  add.ul r[15:16], r[15:16], r[3:4]
000d10  9f838400  addli r7, r9, 64
000d14  7e0101e0  vmmov mr2, r2
000d18  17841700  and r8, r15, r1
000d1c  9f100000  addli r1, zero, 1
000d20  c2900404  vload_mask16.mz vr1{mr2}, 0(r9)
000d24  331b6429  sext_int2long r[22:23], r8
000d28  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
000d2c  46901414  vstore_mask16.mh vr1{mr2}, 0(r9)
000d30  bf601400  blt.s r8, r1, 56
000d34  330a4029  zext_int2long r[20:21], zero
000d38  9b302a00  slli r1, r20, 2
000d3c  270a4a00  addli.d r[20:21], r[20:21], 32
000d40  8b901310  add.s r1, r7, r1
000d44  13316a05  setlt.sl r2, r[20:21], r[22:23]
000d48  9f848000  addli r9, r1, 64
000d4c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000d50  42910402  vload_mask16.mz vr2{mr1}, 0(r9)
000d54  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
000d58  0a112302  vmul.f.mz.rn vr2{mr1}, r6, vr2
000d5c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000d60  46902402  vstore_mask16.mz vr2{mr1}, 0(r9)
000d64  3b5f01fe  bneq r2, zero, -44
000d68  9330fb04  setlt.sl r1, r[22:23], r[15:16]
000d6c  378600fc  beq r1, zero, -1664
000d70  abf0ffff  lui r1, 1048575
000d74  8bb46719  sub.sl r[9:10], r[15:16], r[22:23]
000d78  9b372400  slli r15, r8, 2
000d7c  9b90f0ff  ori r1, r1, 4095
000d80  8b93f310  add.s r7, r7, r15
000d84  17b19000  sll r2, r1, r9
000d88  17241100  xor r8, r2, r1
000d8c  9f102000  addli r1, zero, 17
000d90  b380102a  zext_int2long r[1:2], r1
000d94  7e0104e0  vmmov mr2, r8
000d98  42910304  vload_mask16.mz vr2{mr2}, 0(r7)
000d9c  93b01404  setlt.sl r1, r[9:10], r[1:2]
000da0  1f012000  addli r2, zero, 16
000da4  9f848300  addli r9, r7, 64
000da8  17512400  sra r2, r8, r2
000dac  fe0101e0  vmmov mr3, r2
000db0  c2900406  vload_mask16.mz vr1{mr3}, 0(r9)
000db4  0a112302  vmul.f.mz.rn vr2{mr1}, r6, vr2
000db8  46902314  vstore_mask16.mh vr2{mr2}, 0(r7)
000dbc  37f400fc  beq r1, zero, -1764
000dc0  db25ffff  j -1748
000dc4  8b903220  mul.s r1, r5, r3
000dc8  ab010000  lui r3, 0
000dcc  1bb32200  slli r6, r5, 2
000dd0  00360002  core_id r12
000dd4  b380102a  zext_int2long r[1:2], r1
000dd8  9f810100  addli r3, r3, 0
000ddc  93a0d004  setlt.ul r1, r[1:2], r[13:14]
000de0  1b312600  slli r2, r12, 2
000de4  0b123310  add.s r4, r6, r3
000de8  0b1a3110  add.s r20, r2, r3
000dec  ab0180ff  lui r3, 1046528
000df0  8b1a2210  add.s r21, r4, r2
000df4  e7034fce  storeli.w r4, -6344(r30)
000df8  73603a00  stores.w r3, 0(r20)
000dfc  73e00a00  stores.w zero, 0(r21)
000e00  37c30000  beq r1, zero, 208
000e04  b3001428  zext_int2long r[1:2], r8
000e08  3383632e  zext_int2long r[6:7], r7
000e0c  8f911476  mod.sl r[3:4], r[9:10], r[1:2]
000e10  8f901462  div.sl r[1:2], r[9:10], r[1:2]
000e14  13343304  setlt.sl r8, r[6:7], r[3:4]
000e18  8b313340  min.sl r[3:4], r[6:7], r[3:4]
000e1c  8bb16050  fmac.sl r[3:4], r[1:2], r[6:7]
000e20  0bbb9140  min.sl r[22:23], r[3:4], r[9:10]
000e24  b306d428  zext_int2long r[13:14], r8
000e28  8ba0d010  add.ul r[1:2], r[1:2], r[13:14]
000e2c  8ba03010  add.ul r[1:2], r[1:2], r[3:4]
000e30  9f016fce  addli r3, r30, -6352
000e34  8bb09040  min.sl r[1:2], r[1:2], r[9:10]
000e38  73b01100  store.d r[1:2], 0(r3)
000e3c  93b06007  setle.sl r1, r[1:2], r[22:23]
000e40  bb960014  bneq r1, zero, 10660
000e44  9f068fce  addli r13, r30, -6336
000e48  1f0d4000  addli r26, zero, 32
000e4c  ebd40600  load.d r[9:10], 0(r13)
000e50  b3013d2c  zext_int2long r[3:4], r26
000e54  a7f03400  addli.d r[1:2], r[9:10], 31
000e58  8f903062  div.sl r[1:2], r[1:2], r[3:4]
000e5c  b381322a  zext_int2long r[3:4], r5
000e60  8f923072  mod.sl r[5:6], r[1:2], r[3:4]
000e64  8f903062  div.sl r[1:2], r[1:2], r[3:4]
000e68  b3013628  zext_int2long r[3:4], r12
000e6c  93b35104  setlt.sl r7, r[3:4], r[5:6]
000e70  8bb25140  min.sl r[5:6], r[3:4], r[5:6]
000e74  8bb23050  fmac.sl r[5:6], r[1:2], r[3:4]
000e78  9f510000  addli r3, zero, 5
000e7c  b383732e  zext_int2long r[7:8], r7
000e80  8ba07010  add.ul r[1:2], r[1:2], r[7:8]
000e84  8ba05010  add.ul r[1:2], r[1:2], r[5:6]
000e88  17b23202  sll.d r[4:5], r[5:6], r3
000e8c  97b03002  sll.d r[1:2], r[1:2], r3
000e90  8b319240  min.sl r[3:4], r[4:5], r[9:10]
000e94  9f02afce  addli r5, r30, -6320
000e98  0bb99040  min.sl r[18:19], r[1:2], r[9:10]
000e9c  9f100000  addli r1, zero, 1
000ea0  73b03200  store.d r[3:4], 0(r5)
000ea4  0b353918  sub.sl r[10:11], r[18:19], r[3:4]
000ea8  b380102a  zext_int2long r[1:2], r1
000eac  93301504  setlt.sl r1, r[10:11], r[1:2]
000eb0  bbd8000c  bneq r1, zero, 6708
000eb4  9f00000c  addli r1, zero, 1536
000eb8  b380102a  zext_int2long r[1:2], r1
000ebc  8f11155e  div.ul r[3:4], r[10:11], r[1:2]
000ec0  a3b10102  slli.d r[3:4], r[3:4], 32
000ec4  a3d10102  srai.d r[3:4], r[3:4], 32
000ec8  8bb11120  mul.sl r[3:4], r[3:4], r[1:2]
000ecc  db430300  j 6684
000ed0  9f00000c  addli r1, zero, 1536
000ed4  27f1f60b  addli.d r[2:3], r[13:14], 1535
000ed8  b386d02a  zext_int2long r[13:14], r1
000edc  8f11d15e  div.ul r[3:4], r[2:3], r[13:14]
000ee0  9ff0f1ff  addli r1, r3, -1
000ee4  97801100  and r1, r3, r1
000ee8  37e20000  beq r1, zero, 152
000eec  9bc01100  srli r1, r3, 1
000ef0  97901100  or r1, r3, r1
000ef4  1bc12000  srli r2, r1, 2
000ef8  97902000  or r1, r1, r2
000efc  1bc14000  srli r2, r1, 4
000f00  97902000  or r1, r1, r2
000f04  1bc18000  srli r2, r1, 8
000f08  97902000  or r1, r1, r2
000f0c  2bf1ffff  lui r2, 1048575
000f10  9bc10001  srli r3, r1, 16
000f14  1b11f1ff  ori r2, r2, 4095
000f18  97903000  or r1, r1, r3
000f1c  ab515555  lui r3, 349525
000f20  97a02000  xor r1, r1, r2
000f24  1b915155  ori r2, r3, 1365
000f28  9bc11000  srli r3, r1, 1
000f2c  17812100  and r2, r3, r2
000f30  ab313333  lui r3, 209715
000f34  8b902018  sub.s r1, r1, r2
000f38  1b913133  ori r2, r3, 819
000f3c  9bc12000  srli r3, r1, 2
000f40  97802000  and r1, r1, r2
000f44  17812100  and r2, r3, r2
000f48  ab010f0f  lui r3, 61680
000f4c  8b902010  add.s r1, r1, r2
000f50  9b91f1f0  ori r3, r3, 3855
000f54  1bc14000  srli r2, r1, 4
000f58  8b902010  add.s r1, r1, r2
000f5c  2b010101  lui r2, 4112
000f60  1b111110  ori r2, r2, 257
000f64  97803000  and r1, r1, r3
000f68  8b902020  mul.s r1, r1, r2
000f6c  1f014000  addli r2, zero, 32
000f70  9bc08001  srli r1, r1, 24
000f74  8b101118  sub.s r1, r2, r1
000f78  1f110000  addli r2, zero, 1
000f7c  97311100  sll r3, r2, r1
000f80  8b923230  div.s r5, r5, r3
000f84  8b105420  mul.s r1, r8, r5
000f88  8b155638  mod.s r11, r12, r5
000f8c  b390102a  sext_int2long r[1:2], r1
000f90  8f961472  mod.sl r[13:14], r[9:10], r[1:2]
000f94  8f901462  div.sl r[1:2], r[9:10], r[1:2]
000f98  8b13b450  fmac.s r7, r8, r11
000f9c  e70fbfcc  storeli.w r11, -6408(r30)
000fa0  b383732e  zext_int2long r[7:8], r7
000fa4  93b5d304  setlt.sl r11, r[7:8], r[13:14]
000fa8  8bb6d340  min.sl r[13:14], r[7:8], r[13:14]
000fac  8bb67050  fmac.sl r[13:14], r[1:2], r[7:8]
000fb0  8bb39640  min.sl r[7:8], r[13:14], r[9:10]
000fb4  b387f52e  zext_int2long r[15:16], r11
000fb8  8ba0f010  add.ul r[1:2], r[1:2], r[15:16]
000fbc  8ba0d010  add.ul r[1:2], r[1:2], r[13:14]
000fc0  8bb09040  min.sl r[1:2], r[1:2], r[9:10]
000fc4  9f04cfce  addli r9, r30, -6304
000fc8  73b01400  store.d r[1:2], 0(r9)
000fcc  93b07006  setle.sl r1, r[1:2], r[7:8]
000fd0  3bd00014  bneq r1, zero, 10260
000fd4  9f098fce  addli r19, r30, -6336
000fd8  1f0e4000  addli r28, zero, 32
000fdc  0b165630  div.s r12, r12, r5
000fe0  ebd80900  load.d r[17:18], 0(r19)
000fe4  b3049e28  zext_int2long r[9:10], r28
000fe8  a7f03800  addli.d r[1:2], r[17:18], 31
000fec  8f909062  div.sl r[1:2], r[1:2], r[9:10]
000ff0  b394912e  sext_int2long r[9:10], r3
000ff4  8f969072  mod.sl r[13:14], r[1:2], r[9:10]
000ff8  8f909062  div.sl r[1:2], r[1:2], r[9:10]
000ffc  b3149628  sext_int2long r[9:10], r12
001000  93b5d404  setlt.sl r11, r[9:10], r[13:14]
001004  8bb6d440  min.sl r[13:14], r[9:10], r[13:14]
001008  8bb69050  fmac.sl r[13:14], r[1:2], r[9:10]
00100c  b387f52e  zext_int2long r[15:16], r11
001010  9f550000  addli r11, zero, 5
001014  8ba0f010  add.ul r[1:2], r[1:2], r[15:16]
001018  97b4b602  sll.d r[9:10], r[13:14], r11
00101c  8ba0d010  add.ul r[1:2], r[1:2], r[13:14]
001020  0bbb1441  min.sl r[22:23], r[9:10], r[17:18]
001024  97b0b002  sll.d r[1:2], r[1:2], r11
001028  8bb41041  min.sl r[9:10], r[1:2], r[17:18]
00102c  93b06407  setle.sl r1, r[9:10], r[22:23]
001030  bbde0012  bneq r1, zero, 10164
001034  8bb66419  sub.sl r[13:14], r[9:10], r[22:23]
001038  abf0ffff  lui r1, 1048575
00103c  9f080fcf  addli r17, r30, -6272
001040  1bba2200  slli r20, r5, 2
001044  9f0a0fff  addli r21, r30, -128
001048  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00104c  1b9100fe  ori r2, r1, 4064
001050  9b85f601  andi r11, r13, 31
001054  1b99f0ff  ori r18, r1, 4095
001058  9bb72600  slli r15, r13, 2
00105c  17882600  and r16, r13, r2
001060  1731b900  sll r2, r18, r11
001064  17212101  xor r2, r2, r18
001068  9b352800  slli r11, r16, 2
00106c  6309ffcd  loadli.w r18,  -6408(r30)
001070  0b9cb810  add.s r24, r17, r11
001074  9b450101  srli r11, r2, 16
001078  7e0101e0  vmmov mr2, r2
00107c  1f010900  addli r2, r18, 0
001080  9b3d2900  slli r27, r18, 2
001084  fe8105e0  vmmov mr3, r11
001088  9f058c00  addli r11, r24, 64
00108c  0b115650  fmac.s r2, r12, r5
001090  1f868a00  addli r12, r21, 64
001094  e707bfce  storeli.w r11, -6280(r30)
001098  ab050000  lui r11, 0
00109c  63097fce  loadli.w r18,  -6344(r30)
0010a0  e740bfcf  storeli.w r27, -6388(r30)
0010a4  1b312100  slli r2, r2, 2
0010a8  e701cfce  storeli.w r12, -6376(r30)
0010ac  9f850500  addli r11, r11, 0
0010b0  9f8c0500  addli r25, r11, 0
0010b4  8b159111  add.s r11, r2, r25
0010b8  0b112910  add.s r2, r18, r2
0010bc  e705bfce  storeli.w r11, -6312(r30)
0010c0  8b954a11  add.s r11, r21, r20
0010c4  67052fce  storeli.w r2, -6320(r30)
0010c8  1f018900  addli r2, r18, 64
0010cc  674fbfcc  storeli.w r11, -6412(r30)
0010d0  9b95c0ff  ori r11, r1, 4092
0010d4  e7072fcc  storeli.w r2, -6536(r30)
0010d8  1f210000  addli r2, zero, 2
0010dc  1f009fce  addli zero, r30, -6328
0010e0  178db600  and r26, r13, r11
0010e4  9f050901  addli r11, r18, 128
0010e8  6747bfcc  storeli.w r11, -6540(r30)
0010ec  97352b02  sll.d r[11:12], r[22:23], r2
0010f0  1f018901  addli r2, r18, 192
0010f4  67072fcc  storeli.w r2, -6544(r30)
0010f8  1f01cfcd  addli r2, r30, -6432
0010fc  6b590100  load.d r[18:19], 0(r2)
001100  0b116811  add.s r2, r16, r22
001104  0b119118  sub.s r2, r2, r9
001108  0b29b910  add.ul r[18:19], r[18:19], r[11:12]
00110c  67012fce  storeli.w r2, -6384(r30)
001110  73302001  store.d r[18:19], 0(zero)
001114  17200000  xor zero, zero, zero
001118  1f00bfcd  addli zero, r30, -6440
00111c  6b590000  load.d r[18:19], 0(zero)
001120  17200000  xor zero, zero, zero
001124  8b25b910  add.ul r[11:12], r[18:19], r[11:12]
001128  9f096fce  addli r19, r30, -6352
00112c  0b999d11  add.s r18, r27, r25
001130  9f1d0000  addli r27, zero, 1
001134  73b0b900  store.d r[11:12], 0(r19)
001138  9b9500f8  ori r11, r1, 3968
00113c  9b9000ff  ori r1, r1, 4080
001140  0b166d11  add.s r12, r26, r22
001144  331b6829  sext_int2long r[22:23], r16
001148  7e800de0  vmmov mr0, r27
00114c  670e2fcd  storeli.w r18, -6432(r30)
001150  97801700  and r1, r15, r1
001154  0b119618  sub.s r2, r12, r9
001158  1f060c00  addli r12, r24, 0
00115c  1f0c8000  addli r24, zero, 64
001160  7e0001a0  vmmov zero, mr2
001164  9785b700  and r11, r15, r11
001168  9f041fce  addli r9, r30, -6392
00116c  8b901810  add.s r1, r17, r1
001170  e7422fce  storeli.w r2, -6356(r30)
001174  1b918800  ori r2, r17, 8
001178  8b9cb810  add.s r25, r17, r11
00117c  67021fce  storeli.w r1, -6368(r30)
001180  8b106910  add.s r1, r18, r6
001184  67002fce  storeli.w r2, -6400(r30)
001188  1f03efce  addli r6, r30, -6288
00118c  e70d1fcc  storeli.w r1, -6440(r30)
001190  b390122a  sext_int2long r[1:2], r5
001194  73301300  store.d r[1:2], 0(r6)
001198  9f00dfcd  addli r1, r30, -6424
00119c  1f01dfce  addli r2, r30, -6296
0011a0  67800000  storeli.w zero, 0(r1)
0011a4  17200000  xor zero, zero, zero
0011a8  7e8001a0  vmmov zero, mr3
0011ac  67000100  storeli.w zero, 0(r2)
0011b0  17200000  xor zero, zero, zero
0011b4  7e0000a0  vmmov zero, mr0
0011b8  67800400  storeli.w zero, 0(r9)
0011bc  17200000  xor zero, zero, zero
0011c0  5b070000  j 56
0011c4  1f03cfce  addli r6, r30, -6304
0011c8  00a00000  mfence { lm }
0011cc  ab0000f0  lui r1, 983040
0011d0  a7930300  addli.d r[7:8], r[7:8], 1
0011d4  9f056fce  addli r11, r30, -6352
0011d8  6b590300  load.d r[18:19], 0(r6)
0011dc  97901700  or r1, r15, r1
0011e0  13b12305  setlt.sl r2, r[7:8], r[18:19]
0011e4  6bd90500  load.d r[18:19], 0(r11)
0011e8  8b249910  add.ul r[9:10], r[18:19], r[9:10]
0011ec  ffb01401  s_lm2gm r1, r17, 0(r[9:10])
0011f0  00a00200  mfence { lm, gm }
0011f4  b7470112  beq r2, zero, 9712
0011f8  9f058fce  addli r11, r30, -6336
0011fc  1f230000  addli r6, zero, 2
001200  ebd00500  load.d r[1:2], 0(r11)
001204  8bb01320  mul.sl r[1:2], r[7:8], r[1:2]
001208  97b46002  sll.d r[9:10], r[1:2], r6
00120c  1f019fce  addli r2, r30, -6328
001210  ab0000f0  lui r1, 983040
001214  6b590100  load.d r[18:19], 0(r2)
001218  97901700  or r1, r15, r1
00121c  0b299910  add.ul r[18:19], r[18:19], r[9:10]
001220  ff201901  l_gm2lm r1, r17, 0(r[18:19])
001224  2b0380ff  lui r6, 1046528
001228  00a00200  mfence { lm, gm }
00122c  bf69b801  blt.s r16, r27, 632
001230  ab0080ff  lui r1, 1046528
001234  33092029  zext_int2long r[18:19], zero
001238  ea900022  vor.f.mz vr1{mr1}, r1, vr0
00123c  9b302900  slli r1, r18, 2
001240  27094900  addli.d r[18:19], r[18:19], 32
001244  8b901810  add.s r1, r17, r1
001248  13316905  setlt.sl r2, r[18:19], r[22:23]
00124c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001250  9f808000  addli r1, r1, 64
001254  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
001258  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
00125c  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
001260  3b7f01fe  bneq r2, zero, -36
001264  1333db04  setlt.sl r6, r[22:23], r[13:14]
001268  b7200300  beq r6, zero, 40
00126c  1f01dfce  addli r2, r30, -6296
001270  42110604  vload_mask16.mz vr2{mr2}, 0(r12)
001274  e300ffce  loadli.w r1,  -6280(r30)
001278  63000100  loadli.w zero,  0(r2)
00127c  fe0100e0  vmmov mr3, zero
001280  17200000  xor zero, zero, zero
001284  c2910006  vload_mask16.mz vr3{mr3}, 0(r1)
001288  b6902014  vmax.f.mh vr1{mr2}, vr1, vr2
00128c  b6903016  vmax.f.mh vr1{mr3}, vr1, vr3
001290  9f000002  addli r1, zero, 256
001294  1f090001  addli r18, zero, 128
001298  6301bfce  loadli.w r2,  -6312(r30)
00129c  6af110c0  vsrl.p vr2, r1, vr1
0012a0  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
0012a4  6a7119c0  vsrl.p vr2, r18, vr1
0012a8  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
0012ac  6a711cc0  vsrl.p vr2, r24, vr1
0012b0  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
0012b4  6a711ec0  vsrl.p vr2, r28, vr1
0012b8  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
0012bc  fa900020  vextract.f r1, vr1{mr0}
0012c0  73601100  stores.w r1, 0(r2)
0012c4  00200100  mfence { sm }
0012c8  37d18201  beq r5, r24, 84
0012cc  9f701000  addli r1, zero, 15
0012d0  00300000  sync_local
0012d4  3fa15000  blt.s r1, r5, 72
0012d8  9f100002  addli r1, zero, 257
0012dc  670a1ffe  storeli.w r1, -96(r30)
0012e0  9f102022  addli r1, zero, 4369
0012e4  67091ffe  storeli.w r1, -112(r30)
0012e8  ab500000  lui r1, 5
0012ec  9b905055  ori r1, r1, 1365
0012f0  e7081ffe  storeli.w r1, -120(r30)
0012f4  abf00000  lui r1, 15
0012f8  6341efcd  loadli.w r2,  -6412(r30)
0012fc  e305ffcd  loadli.w r11,  -6408(r30)
001300  9b90f0ff  ori r1, r1, 4095
001304  67481ffe  storeli.w r1, -124(r30)
001308  63010100  loadli.w r2,  0(r2)
00130c  1731b100  sll r2, r2, r11
001310  97001100  and r1, r2, r1
001314  80a10004  csr_set csr3, r1
001318  00d00100  sync_group
00131c  9f500000  addli r1, zero, 5
001320  bfc01200  blt.s r5, r1, 48
001324  ab0580ff  lui r11, 1046528
001328  3fc7b103  blt.s r3, r27, 1488
00132c  ab0580ff  lui r11, 1046528
001330  6309cfcd  loadli.w r18,  -6432(r30)
001334  9f890100  addli r19, r3, 0
001338  ef400900  loads.w r1, 0(r18)
00133c  9ff9f9ff  addli r19, r19, -1
001340  0b194911  add.s r18, r18, r20
001344  8be51548  max.f r11, r11, r1
001348  bbcf09fe  bneq r19, zero, -16
00134c  dbb50000  j 1452
001350  9f200000  addli r1, zero, 2
001354  1f00efce  addli zero, r30, -6288
001358  9f090600  addli r19, r12, 0
00135c  a7850100  addli.d r[11:12], r[3:4], 0
001360  eb510000  load.d r[3:4], 0(zero)
001364  b380102a  zext_int2long r[1:2], r1
001368  17200000  xor zero, zero, zero
00136c  93a01100  seteq.d r1, r[3:4], r[1:2]
001370  3b950000  bneq r1, zero, 324
001374  9f400000  addli r1, zero, 4
001378  b380102a  zext_int2long r[1:2], r1
00137c  93a01102  setneq.d r1, r[3:4], r[1:2]
001380  3bd40002  bneq r1, zero, 1300
001384  ea200002  vand.u.mz vr1{mr1}, zero, vr0
001388  9bb00d00  slli r1, r27, 0
00138c  1f011fce  addli r2, r30, -6392
001390  7e8000e0  vmmov mr0, r1
001394  9bb01d00  slli r1, r27, 1
001398  ea201030  vor.u.mh vr1{mr0}, zero, vr1
00139c  7e8000e0  vmmov mr0, r1
0013a0  9f002000  addli r1, zero, 16
0013a4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0013a8  9bb02d00  slli r1, r27, 2
0013ac  7e8000e0  vmmov mr0, r1
0013b0  9bb03d00  slli r1, r27, 3
0013b4  ea201e30  vor.u.mh vr1{mr0}, r28, vr1
0013b8  7e8000e0  vmmov mr0, r1
0013bc  9f006000  addli r1, zero, 48
0013c0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0013c4  9bb04d00  slli r1, r27, 4
0013c8  7e8000e0  vmmov mr0, r1
0013cc  9bb05d00  slli r1, r27, 5
0013d0  ea201c30  vor.u.mh vr1{mr0}, r24, vr1
0013d4  7e8000e0  vmmov mr0, r1
0013d8  9f00a000  addli r1, zero, 80
0013dc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0013e0  9bb06d00  slli r1, r27, 6
0013e4  7e8000e0  vmmov mr0, r1
0013e8  9f00c000  addli r1, zero, 96
0013ec  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0013f0  9bb07d00  slli r1, r27, 7
0013f4  7e8000e0  vmmov mr0, r1
0013f8  9f00e000  addli r1, zero, 112
0013fc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001400  9bb08d00  slli r1, r27, 8
001404  7e8000e0  vmmov mr0, r1
001408  9bb09d00  slli r1, r27, 9
00140c  ea201930  vor.u.mh vr1{mr0}, r18, vr1
001410  7e8000e0  vmmov mr0, r1
001414  9f002001  addli r1, zero, 144
001418  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00141c  9bb0ad00  slli r1, r27, 10
001420  7e8000e0  vmmov mr0, r1
001424  9f004001  addli r1, zero, 160
001428  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00142c  9bb0bd00  slli r1, r27, 11
001430  7e8000e0  vmmov mr0, r1
001434  9f006001  addli r1, zero, 176
001438  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00143c  9bb0cd00  slli r1, r27, 12
001440  7e8000e0  vmmov mr0, r1
001444  9f008001  addli r1, zero, 192
001448  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00144c  9bb0dd00  slli r1, r27, 13
001450  7e8000e0  vmmov mr0, r1
001454  9f00a001  addli r1, zero, 208
001458  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00145c  9bb0ed00  slli r1, r27, 14
001460  7e8000e0  vmmov mr0, r1
001464  9f00c001  addli r1, zero, 224
001468  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00146c  ab800000  lui r1, 8
001470  9f800000  addli r1, r1, 0
001474  7e8000e0  vmmov mr0, r1
001478  9f00e001  addli r1, zero, 240
00147c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001480  e3401fce  loadli.w r1,  -6388(r30)
001484  63000100  loadli.w zero,  0(r2)
001488  7e0000e0  vmmov mr0, zero
00148c  17200000  xor zero, zero, zero
001490  92b01002  vadd.s.mz vr1{mr1}, r1, vr1
001494  ab000000  lui r1, 0
001498  9f800000  addli r1, r1, 0
00149c  e2b01002  vgathers_mask16.mz vr1{mr1}, vr1{r1}
0014a0  5b850000  j 1064
0014a4  ea100322  vor.f.mz vr1{mr1}, r6, vr0
0014a8  1333db04  setlt.sl r6, r[22:23], r[13:14]
0014ac  3b0703fe  bneq r6, zero, -576
0014b0  5bbcffff  j -544
0014b4  9bb00d00  slli r1, r27, 0
0014b8  ea200002  vand.u.mz vr1{mr1}, zero, vr0
0014bc  1f01afcd  addli r2, r30, -6448
0014c0  9f019fcd  addli r3, r30, -6456
0014c4  1f028fcd  addli r4, r30, -6464
0014c8  7e8000e0  vmmov mr0, r1
0014cc  9bb01d00  slli r1, r27, 1
0014d0  7e0000a0  vmmov zero, mr0
0014d4  67000100  storeli.w zero, 0(r2)
0014d8  17200000  xor zero, zero, zero
0014dc  ea201030  vor.u.mh vr1{mr0}, zero, vr1
0014e0  7e8000e0  vmmov mr0, r1
0014e4  7e0000a0  vmmov zero, mr0
0014e8  67800100  storeli.w zero, 0(r3)
0014ec  17200000  xor zero, zero, zero
0014f0  9f001000  addli r1, zero, 8
0014f4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0014f8  9bb02d00  slli r1, r27, 2
0014fc  7e8000e0  vmmov mr0, r1
001500  7e0000a0  vmmov zero, mr0
001504  67000200  storeli.w zero, 0(r4)
001508  17200000  xor zero, zero, zero
00150c  9f002000  addli r1, zero, 16
001510  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001514  9bb03d00  slli r1, r27, 3
001518  7e8000e0  vmmov mr0, r1
00151c  9f007fcd  addli r1, r30, -6472
001520  7e0000a0  vmmov zero, mr0
001524  67800000  storeli.w zero, 0(r1)
001528  17200000  xor zero, zero, zero
00152c  9f003000  addli r1, zero, 24
001530  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001534  9bb04d00  slli r1, r27, 4
001538  7e8000e0  vmmov mr0, r1
00153c  9f006fcd  addli r1, r30, -6480
001540  7e0000a0  vmmov zero, mr0
001544  67800000  storeli.w zero, 0(r1)
001548  9bb05d00  slli r1, r27, 5
00154c  ea201e30  vor.u.mh vr1{mr0}, r28, vr1
001550  17200000  xor zero, zero, zero
001554  7e8000e0  vmmov mr0, r1
001558  9f005fcd  addli r1, r30, -6488
00155c  7e0000a0  vmmov zero, mr0
001560  67800000  storeli.w zero, 0(r1)
001564  17200000  xor zero, zero, zero
001568  9f005000  addli r1, zero, 40
00156c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001570  9bb06d00  slli r1, r27, 6
001574  7e8000e0  vmmov mr0, r1
001578  9f404fcd  addli r1, r30, -6492
00157c  7e0000a0  vmmov zero, mr0
001580  67800000  storeli.w zero, 0(r1)
001584  17200000  xor zero, zero, zero
001588  9f006000  addli r1, zero, 48
00158c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001590  9bb07d00  slli r1, r27, 7
001594  7e8000e0  vmmov mr0, r1
001598  9f004fcd  addli r1, r30, -6496
00159c  7e0000a0  vmmov zero, mr0
0015a0  67800000  storeli.w zero, 0(r1)
0015a4  17200000  xor zero, zero, zero
0015a8  9f007000  addli r1, zero, 56
0015ac  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0015b0  9bb08d00  slli r1, r27, 8
0015b4  7e8000e0  vmmov mr0, r1
0015b8  9f003fcd  addli r1, r30, -6504
0015bc  7e0000a0  vmmov zero, mr0
0015c0  67800000  storeli.w zero, 0(r1)
0015c4  9bb09d00  slli r1, r27, 9
0015c8  ea201c30  vor.u.mh vr1{mr0}, r24, vr1
0015cc  17200000  xor zero, zero, zero
0015d0  7e8000e0  vmmov mr0, r1
0015d4  9f002fcd  addli r1, r30, -6512
0015d8  7e0000a0  vmmov zero, mr0
0015dc  67800000  storeli.w zero, 0(r1)
0015e0  17200000  xor zero, zero, zero
0015e4  9f009000  addli r1, zero, 72
0015e8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0015ec  9bb0ad00  slli r1, r27, 10
0015f0  7e8000e0  vmmov mr0, r1
0015f4  9f001fcd  addli r1, r30, -6520
0015f8  7e0000a0  vmmov zero, mr0
0015fc  67800000  storeli.w zero, 0(r1)
001600  17200000  xor zero, zero, zero
001604  9f00a000  addli r1, zero, 80
001608  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00160c  9bb0bd00  slli r1, r27, 11
001610  7e8000e0  vmmov mr0, r1
001614  9f000fcd  addli r1, r30, -6528
001618  7e0000a0  vmmov zero, mr0
00161c  67800000  storeli.w zero, 0(r1)
001620  17200000  xor zero, zero, zero
001624  9f00b000  addli r1, zero, 88
001628  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00162c  9bb0cd00  slli r1, r27, 12
001630  7e8000e0  vmmov mr0, r1
001634  9f40ffcc  addli r1, r30, -6532
001638  7e0000a0  vmmov zero, mr0
00163c  67800000  storeli.w zero, 0(r1)
001640  17200000  xor zero, zero, zero
001644  9f00c000  addli r1, zero, 96
001648  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00164c  9bb0dd00  slli r1, r27, 13
001650  7e8100e0  vmmov mr2, r1
001654  9f00d000  addli r1, zero, 104
001658  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
00165c  9bb0ed00  slli r1, r27, 14
001660  7e8000e0  vmmov mr0, r1
001664  9f00e000  addli r1, zero, 112
001668  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00166c  ab800000  lui r1, 8
001670  9f800000  addli r1, r1, 0
001674  fe8100e0  vmmov mr3, r1
001678  9f00f000  addli r1, zero, 120
00167c  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001680  9f00dfce  addli r1, r30, -6296
001684  63800000  loadli.w zero,  0(r1)
001688  fe0100e0  vmmov mr3, zero
00168c  17200000  xor zero, zero, zero
001690  6a210002  vand.u.mz vr2{mr1}, zero, vr0
001694  e7cffeff  storeli.w r31, -4(sp)
001698  9f0fafcd  addli r31, r30, -6448
00169c  63800f00  loadli.w zero,  0(r31)
0016a0  e3cffeff  loadli.w r31,  -4(sp)
0016a4  fe0100e0  vmmov mr3, zero
0016a8  17200000  xor zero, zero, zero
0016ac  6a212936  vor.u.mh vr2{mr3}, r18, vr2
0016b0  e7cffeff  storeli.w r31, -4(sp)
0016b4  9f0f9fcd  addli r31, r30, -6456
0016b8  9f001001  addli r1, zero, 136
0016bc  63800f00  loadli.w zero,  0(r31)
0016c0  e3cffeff  loadli.w r31,  -4(sp)
0016c4  fe0100e0  vmmov mr3, zero
0016c8  17200000  xor zero, zero, zero
0016cc  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0016d0  e7cffeff  storeli.w r31, -4(sp)
0016d4  9f0f8fcd  addli r31, r30, -6464
0016d8  9f002001  addli r1, zero, 144
0016dc  63800f00  loadli.w zero,  0(r31)
0016e0  e3cffeff  loadli.w r31,  -4(sp)
0016e4  fe0100e0  vmmov mr3, zero
0016e8  17200000  xor zero, zero, zero
0016ec  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0016f0  e7cffeff  storeli.w r31, -4(sp)
0016f4  9f0f7fcd  addli r31, r30, -6472
0016f8  9f003001  addli r1, zero, 152
0016fc  63800f00  loadli.w zero,  0(r31)
001700  e3cffeff  loadli.w r31,  -4(sp)
001704  fe0100e0  vmmov mr3, zero
001708  17200000  xor zero, zero, zero
00170c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001710  e7cffeff  storeli.w r31, -4(sp)
001714  9f0f6fcd  addli r31, r30, -6480
001718  9f004001  addli r1, zero, 160
00171c  63800f00  loadli.w zero,  0(r31)
001720  e3cffeff  loadli.w r31,  -4(sp)
001724  fe0100e0  vmmov mr3, zero
001728  17200000  xor zero, zero, zero
00172c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001730  e7cffeff  storeli.w r31, -4(sp)
001734  9f0f5fcd  addli r31, r30, -6488
001738  9f005001  addli r1, zero, 168
00173c  63800f00  loadli.w zero,  0(r31)
001740  e3cffeff  loadli.w r31,  -4(sp)
001744  fe0100e0  vmmov mr3, zero
001748  17200000  xor zero, zero, zero
00174c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001750  e7cffeff  storeli.w r31, -4(sp)
001754  9f4f4fcd  addli r31, r30, -6492
001758  9f006001  addli r1, zero, 176
00175c  63800f00  loadli.w zero,  0(r31)
001760  e3cffeff  loadli.w r31,  -4(sp)
001764  fe0100e0  vmmov mr3, zero
001768  17200000  xor zero, zero, zero
00176c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001770  e7cffeff  storeli.w r31, -4(sp)
001774  9f0f4fcd  addli r31, r30, -6496
001778  9f007001  addli r1, zero, 184
00177c  63800f00  loadli.w zero,  0(r31)
001780  e3cffeff  loadli.w r31,  -4(sp)
001784  fe0100e0  vmmov mr3, zero
001788  17200000  xor zero, zero, zero
00178c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001790  e7cffeff  storeli.w r31, -4(sp)
001794  9f0f3fcd  addli r31, r30, -6504
001798  9f008001  addli r1, zero, 192
00179c  63800f00  loadli.w zero,  0(r31)
0017a0  e3cffeff  loadli.w r31,  -4(sp)
0017a4  fe0100e0  vmmov mr3, zero
0017a8  17200000  xor zero, zero, zero
0017ac  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0017b0  e7cffeff  storeli.w r31, -4(sp)
0017b4  9f0f2fcd  addli r31, r30, -6512
0017b8  9f009001  addli r1, zero, 200
0017bc  63800f00  loadli.w zero,  0(r31)
0017c0  e3cffeff  loadli.w r31,  -4(sp)
0017c4  fe0100e0  vmmov mr3, zero
0017c8  17200000  xor zero, zero, zero
0017cc  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0017d0  e7cffeff  storeli.w r31, -4(sp)
0017d4  9f0f1fcd  addli r31, r30, -6520
0017d8  9f00a001  addli r1, zero, 208
0017dc  63800f00  loadli.w zero,  0(r31)
0017e0  e3cffeff  loadli.w r31,  -4(sp)
0017e4  fe0100e0  vmmov mr3, zero
0017e8  17200000  xor zero, zero, zero
0017ec  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0017f0  e7cffeff  storeli.w r31, -4(sp)
0017f4  9f0f0fcd  addli r31, r30, -6528
0017f8  9f00b001  addli r1, zero, 216
0017fc  63800f00  loadli.w zero,  0(r31)
001800  e3cffeff  loadli.w r31,  -4(sp)
001804  fe0100e0  vmmov mr3, zero
001808  17200000  xor zero, zero, zero
00180c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001810  e7cffeff  storeli.w r31, -4(sp)
001814  9f4fffcc  addli r31, r30, -6532
001818  9f00c001  addli r1, zero, 224
00181c  63800f00  loadli.w zero,  0(r31)
001820  e3cffeff  loadli.w r31,  -4(sp)
001824  fe0100e0  vmmov mr3, zero
001828  17200000  xor zero, zero, zero
00182c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001830  9f00d001  addli r1, zero, 232
001834  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
001838  9f00dfcd  addli r1, r30, -6424
00183c  63800000  loadli.w zero,  0(r1)
001840  7e0100e0  vmmov mr2, zero
001844  17200000  xor zero, zero, zero
001848  9f00e001  addli r1, zero, 240
00184c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
001850  ab800000  lui r1, 8
001854  9f800000  addli r1, r1, 0
001858  7e8000e0  vmmov mr0, r1
00185c  9f00f001  addli r1, zero, 248
001860  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
001864  9f001fce  addli r1, r30, -6392
001868  63800000  loadli.w zero,  0(r1)
00186c  e3401fce  loadli.w r1,  -6388(r30)
001870  92b01002  vadd.s.mz vr1{mr1}, r1, vr1
001874  12b12002  vadd.s.mz vr2{mr1}, r1, vr2
001878  ab000000  lui r1, 0
00187c  7e0000e0  vmmov mr0, zero
001880  17200000  xor zero, zero, zero
001884  9f800000  addli r1, r1, 0
001888  e2b01002  vgathers_mask16.mz vr1{mr1}, vr1{r1}
00188c  62b12002  vgathers_mask16.mz vr2{mr1}, vr2{r1}
001890  db060000  j 52
001894  ab000000  lui r1, 0
001898  9f800000  addli r1, r1, 0
00189c  1f810000  addli r2, r1, 0
0018a0  9f008100  addli r1, r2, 64
0018a4  ca100102  vloads_mask16.mz vr1{mr1}, 0(r2)
0018a8  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
0018ac  9f000101  addli r1, r2, 128
0018b0  1f018101  addli r2, r2, 192
0018b4  ca910002  vloads_mask16.mz vr3{mr1}, 0(r1)
0018b8  4a120102  vloads_mask16.mz vr4{mr1}, 0(r2)
0018bc  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
0018c0  36114102  vmax.f.mz vr2{mr1}, vr2, vr4
0018c4  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
0018c8  9f000002  addli r1, zero, 256
0018cc  a7810500  addli.d r[3:4], r[11:12], 0
0018d0  1f860900  addli r12, r19, 0
0018d4  6af110c0  vsrl.p vr2, r1, vr1
0018d8  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
0018dc  6a7119c0  vsrl.p vr2, r18, vr1
0018e0  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
0018e4  6a711cc0  vsrl.p vr2, r24, vr1
0018e8  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
0018ec  6a711ec0  vsrl.p vr2, r28, vr1
0018f0  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
0018f4  fa950020  vextract.f r11, vr1{mr0}
0018f8  0bee0558  neg.f r28, r11
0018fc  00a00000  mfence { lm }
001900  bf50b801  blt.s r16, r27, 52
001904  9f050fcf  addli r11, r30, -6272
001908  1f090000  addli r18, zero, 0
00190c  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
001910  9f808500  addli r1, r11, 64
001914  1f094900  addli r18, r18, 32
001918  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
00191c  92101e02  vadd.f.mz.rn vr1{mr1}, r28, vr1
001920  12112e02  vadd.f.mz.rn vr2{mr1}, r28, vr2
001924  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
001928  9f850501  addli r11, r11, 128
00192c  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
001930  3f7f09ff  blt.s r18, r16, -36
001934  3f20d800  blt.s r16, r13, 8
001938  db0a0000  j 84
00193c  00a00000  mfence { lm }
001940  9f050000  addli r11, zero, 0
001944  e300ffce  loadli.w r1,  -6280(r30)
001948  c2100602  vload_mask16.mz vr1{mr1}, 0(r12)
00194c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001950  00a00000  mfence { lm }
001954  e3003fce  loadli.w r1,  -6376(r30)
001958  92101e02  vadd.f.mz.rn vr1{mr1}, r28, vr1
00195c  12112e02  vadd.f.mz.rn vr2{mr1}, r28, vr2
001960  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
001964  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
001968  00a00000  mfence { lm }
00196c  63092fce  loadli.w r18,  -6384(r30)
001970  8b90ba10  add.s r1, r21, r11
001974  0b91bc10  add.s r2, r25, r11
001978  1f190900  addli r18, r18, 1
00197c  9fc50500  addli r11, r11, 4
001980  e3800000  loadli.w r1,  0(r1)
001984  67001100  storeli.w r1, 0(r2)
001988  bb2f09fe  bneq r18, zero, -24
00198c  00a00000  mfence { lm }
001990  3f21bd01  blt.s r26, r27, 72
001994  630e0fce  loadli.w r28,  -6400(r30)
001998  9f050000  addli r11, zero, 0
00199c  e300feff  loadli.w r1,  -8(r28)
0019a0  6341feff  loadli.w r2,  -4(r28)
0019a4  63090e00  loadli.w r18,  0(r28)
0019a8  e3490e00  loadli.w r19,  4(r28)
0019ac  9fc50500  addli r11, r11, 4
0019b0  8f801000  exp.f.rn r1, r1
0019b4  0f012100  exp.f.rn r2, r2
0019b8  0f092901  exp.f.rn r18, r18
0019bc  8f893901  exp.f.rn r19, r19
0019c0  e70f1efe  storeli.w r1, -8(r28)
0019c4  e74f2efe  storeli.w r2, -4(r28)
0019c8  67002e01  storeli.w r18, 0(r28)
0019cc  67403e01  storeli.w r19, 4(r28)
0019d0  1f0e2e00  addli r28, r28, 16
0019d4  3fafa5ff  blt.s r11, r26, -56
0019d8  e3054fce  loadli.w r11,  -6368(r30)
0019dc  63495fce  loadli.w r18,  -6356(r30)
0019e0  4bf0a601  ble.s r13, r26, 28
0019e4  e3800500  loadli.w r1,  0(r11)
0019e8  1f190900  addli r18, r18, 1
0019ec  8f801000  exp.f.rn r1, r1
0019f0  67801500  storeli.w r1, 0(r11)
0019f4  9fc50500  addli r11, r11, 4
0019f8  bb3f09fe  bneq r18, zero, -20
0019fc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001a00  1f0e4000  addli r28, zero, 32
001a04  00a00000  mfence { lm }
001a08  bf50b801  blt.s r16, r27, 52
001a0c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001a10  33092029  zext_int2long r[18:19], zero
001a14  9b302900  slli r1, r18, 2
001a18  27094900  addli.d r[18:19], r[18:19], 32
001a1c  8b901810  add.s r1, r17, r1
001a20  13316905  setlt.sl r2, r[18:19], r[22:23]
001a24  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001a28  9f808000  addli r1, r1, 64
001a2c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
001a30  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001a34  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001a38  3b7f01fe  bneq r2, zero, -36
001a3c  b7200300  beq r6, zero, 40
001a40  1f01dfce  addli r2, r30, -6296
001a44  42110604  vload_mask16.mz vr2{mr2}, 0(r12)
001a48  e300ffce  loadli.w r1,  -6280(r30)
001a4c  63000100  loadli.w zero,  0(r2)
001a50  fe0100e0  vmmov mr3, zero
001a54  17200000  xor zero, zero, zero
001a58  c2910006  vload_mask16.mz vr3{mr3}, 0(r1)
001a5c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001a60  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001a64  9f00efce  addli r1, r30, -6288
001a68  9f050001  addli r11, zero, 128
001a6c  6301afce  loadli.w r2,  -6320(r30)
001a70  6bd90000  load.d r[18:19], 0(r1)
001a74  9f000002  addli r1, zero, 256
001a78  6af110c0  vsrl.p vr2, r1, vr1
001a7c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001a80  6af115c0  vsrl.p vr2, r11, vr1
001a84  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001a88  6a711cc0  vsrl.p vr2, r24, vr1
001a8c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001a90  6a711ec0  vsrl.p vr2, r28, vr1
001a94  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
001a98  fa900020  vextract.f r1, vr1{mr0}
001a9c  73601100  stores.w r1, 0(r2)
001aa0  00200100  mfence { sm }
001aa4  37d18201  beq r5, r24, 84
001aa8  9f701000  addli r1, zero, 15
001aac  00300000  sync_local
001ab0  3fa15000  blt.s r1, r5, 72
001ab4  9f100002  addli r1, zero, 257
001ab8  670a1ffe  storeli.w r1, -96(r30)
001abc  9f102022  addli r1, zero, 4369
001ac0  67091ffe  storeli.w r1, -112(r30)
001ac4  ab500000  lui r1, 5
001ac8  9b905055  ori r1, r1, 1365
001acc  e7081ffe  storeli.w r1, -120(r30)
001ad0  abf00000  lui r1, 15
001ad4  6341efcd  loadli.w r2,  -6412(r30)
001ad8  6303ffcd  loadli.w r6,  -6408(r30)
001adc  9b90f0ff  ori r1, r1, 4095
001ae0  67481ffe  storeli.w r1, -124(r30)
001ae4  63010100  loadli.w r2,  0(r2)
001ae8  17316100  sll r2, r2, r6
001aec  97001100  and r1, r2, r1
001af0  80a10004  csr_set csr3, r1
001af4  00d00100  sync_group
001af8  9f500000  addli r1, zero, 5
001afc  bfb01200  blt.s r5, r1, 44
001b00  1f030000  addli r6, zero, 0
001b04  3fc6b103  blt.s r3, r27, 1424
001b08  e305bfcd  loadli.w r11,  -6440(r30)
001b0c  1f890100  addli r18, r3, 0
001b10  efc00500  loads.w r1, 0(r11)
001b14  1f79f9ff  addli r18, r18, -1
001b18  8b954511  add.s r11, r11, r20
001b1c  0b631310  add.f.rn r6, r6, r1
001b20  bb4f09fe  bneq r18, zero, -16
001b24  5bae0000  j 1392
001b28  9f200000  addli r1, zero, 2
001b2c  b380102a  zext_int2long r[1:2], r1
001b30  93201900  seteq.d r1, r[18:19], r[1:2]
001b34  bbc40000  bneq r1, zero, 304
001b38  9f400000  addli r1, zero, 4
001b3c  b380102a  zext_int2long r[1:2], r1
001b40  93201902  setneq.d r1, r[18:19], r[1:2]
001b44  bbf30002  bneq r1, zero, 1276
001b48  ea200002  vand.u.mz vr1{mr1}, zero, vr0
001b4c  9bb00d00  slli r1, r27, 0
001b50  1f011fce  addli r2, r30, -6392
001b54  7e8000e0  vmmov mr0, r1
001b58  9bb01d00  slli r1, r27, 1
001b5c  ea201030  vor.u.mh vr1{mr0}, zero, vr1
001b60  7e8000e0  vmmov mr0, r1
001b64  9f002000  addli r1, zero, 16
001b68  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001b6c  9bb02d00  slli r1, r27, 2
001b70  7e8000e0  vmmov mr0, r1
001b74  9bb03d00  slli r1, r27, 3
001b78  ea201e30  vor.u.mh vr1{mr0}, r28, vr1
001b7c  7e8000e0  vmmov mr0, r1
001b80  9f006000  addli r1, zero, 48
001b84  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001b88  9bb04d00  slli r1, r27, 4
001b8c  7e8000e0  vmmov mr0, r1
001b90  9bb05d00  slli r1, r27, 5
001b94  ea201c30  vor.u.mh vr1{mr0}, r24, vr1
001b98  7e8000e0  vmmov mr0, r1
001b9c  9f00a000  addli r1, zero, 80
001ba0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001ba4  9bb06d00  slli r1, r27, 6
001ba8  7e8000e0  vmmov mr0, r1
001bac  9f00c000  addli r1, zero, 96
001bb0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001bb4  9bb07d00  slli r1, r27, 7
001bb8  7e8000e0  vmmov mr0, r1
001bbc  9f00e000  addli r1, zero, 112
001bc0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001bc4  9bb08d00  slli r1, r27, 8
001bc8  7e8000e0  vmmov mr0, r1
001bcc  9bb09d00  slli r1, r27, 9
001bd0  eaa01530  vor.u.mh vr1{mr0}, r11, vr1
001bd4  7e8000e0  vmmov mr0, r1
001bd8  9f002001  addli r1, zero, 144
001bdc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001be0  9bb0ad00  slli r1, r27, 10
001be4  7e8000e0  vmmov mr0, r1
001be8  9f004001  addli r1, zero, 160
001bec  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001bf0  9bb0bd00  slli r1, r27, 11
001bf4  7e8000e0  vmmov mr0, r1
001bf8  9f006001  addli r1, zero, 176
001bfc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001c00  9bb0cd00  slli r1, r27, 12
001c04  7e8000e0  vmmov mr0, r1
001c08  9f008001  addli r1, zero, 192
001c0c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001c10  9bb0dd00  slli r1, r27, 13
001c14  7e8000e0  vmmov mr0, r1
001c18  9f00a001  addli r1, zero, 208
001c1c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001c20  9bb0ed00  slli r1, r27, 14
001c24  7e8000e0  vmmov mr0, r1
001c28  9f00c001  addli r1, zero, 224
001c2c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001c30  ab800000  lui r1, 8
001c34  9f800000  addli r1, r1, 0
001c38  7e8000e0  vmmov mr0, r1
001c3c  9f00e001  addli r1, zero, 240
001c40  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001c44  e3401fce  loadli.w r1,  -6388(r30)
001c48  63000100  loadli.w zero,  0(r2)
001c4c  7e0000e0  vmmov mr0, zero
001c50  17200000  xor zero, zero, zero
001c54  92b01002  vadd.s.mz vr1{mr1}, r1, vr1
001c58  e3007fce  loadli.w r1,  -6344(r30)
001c5c  e2b01002  vgathers_mask16.mz vr1{mr1}, vr1{r1}
001c60  db810000  j 1036
001c64  9bb00d00  slli r1, r27, 0
001c68  ea200002  vand.u.mz vr1{mr1}, zero, vr0
001c6c  1f01afcd  addli r2, r30, -6448
001c70  1f039fcd  addli r6, r30, -6456
001c74  1f098fcd  addli r18, r30, -6464
001c78  9f097fcd  addli r19, r30, -6472
001c7c  7e8000e0  vmmov mr0, r1
001c80  9bb01d00  slli r1, r27, 1
001c84  7e0000a0  vmmov zero, mr0
001c88  67000100  storeli.w zero, 0(r2)
001c8c  17200000  xor zero, zero, zero
001c90  ea201030  vor.u.mh vr1{mr0}, zero, vr1
001c94  7e8000e0  vmmov mr0, r1
001c98  7e0000a0  vmmov zero, mr0
001c9c  67000300  storeli.w zero, 0(r6)
001ca0  17200000  xor zero, zero, zero
001ca4  9f001000  addli r1, zero, 8
001ca8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001cac  9bb02d00  slli r1, r27, 2
001cb0  7e8000e0  vmmov mr0, r1
001cb4  7e0000a0  vmmov zero, mr0
001cb8  67000900  storeli.w zero, 0(r18)
001cbc  17200000  xor zero, zero, zero
001cc0  9f002000  addli r1, zero, 16
001cc4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001cc8  9bb03d00  slli r1, r27, 3
001ccc  7e8000e0  vmmov mr0, r1
001cd0  7e0000a0  vmmov zero, mr0
001cd4  67800900  storeli.w zero, 0(r19)
001cd8  17200000  xor zero, zero, zero
001cdc  9f003000  addli r1, zero, 24
001ce0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001ce4  9bb04d00  slli r1, r27, 4
001ce8  7e8000e0  vmmov mr0, r1
001cec  9f006fcd  addli r1, r30, -6480
001cf0  7e0000a0  vmmov zero, mr0
001cf4  67800000  storeli.w zero, 0(r1)
001cf8  9bb05d00  slli r1, r27, 5
001cfc  ea201e30  vor.u.mh vr1{mr0}, r28, vr1
001d00  17200000  xor zero, zero, zero
001d04  7e8000e0  vmmov mr0, r1
001d08  9f005fcd  addli r1, r30, -6488
001d0c  7e0000a0  vmmov zero, mr0
001d10  67800000  storeli.w zero, 0(r1)
001d14  17200000  xor zero, zero, zero
001d18  9f005000  addli r1, zero, 40
001d1c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001d20  9bb06d00  slli r1, r27, 6
001d24  7e8000e0  vmmov mr0, r1
001d28  9f404fcd  addli r1, r30, -6492
001d2c  7e0000a0  vmmov zero, mr0
001d30  67800000  storeli.w zero, 0(r1)
001d34  17200000  xor zero, zero, zero
001d38  9f006000  addli r1, zero, 48
001d3c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001d40  9bb07d00  slli r1, r27, 7
001d44  7e8000e0  vmmov mr0, r1
001d48  9f004fcd  addli r1, r30, -6496
001d4c  7e0000a0  vmmov zero, mr0
001d50  67800000  storeli.w zero, 0(r1)
001d54  17200000  xor zero, zero, zero
001d58  9f007000  addli r1, zero, 56
001d5c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001d60  9bb08d00  slli r1, r27, 8
001d64  7e8000e0  vmmov mr0, r1
001d68  9f003fcd  addli r1, r30, -6504
001d6c  7e0000a0  vmmov zero, mr0
001d70  67800000  storeli.w zero, 0(r1)
001d74  9bb09d00  slli r1, r27, 9
001d78  ea201c30  vor.u.mh vr1{mr0}, r24, vr1
001d7c  17200000  xor zero, zero, zero
001d80  7e8000e0  vmmov mr0, r1
001d84  9f002fcd  addli r1, r30, -6512
001d88  7e0000a0  vmmov zero, mr0
001d8c  67800000  storeli.w zero, 0(r1)
001d90  17200000  xor zero, zero, zero
001d94  9f009000  addli r1, zero, 72
001d98  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001d9c  9bb0ad00  slli r1, r27, 10
001da0  7e8000e0  vmmov mr0, r1
001da4  9f001fcd  addli r1, r30, -6520
001da8  7e0000a0  vmmov zero, mr0
001dac  67800000  storeli.w zero, 0(r1)
001db0  17200000  xor zero, zero, zero
001db4  9f00a000  addli r1, zero, 80
001db8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001dbc  9bb0bd00  slli r1, r27, 11
001dc0  7e8000e0  vmmov mr0, r1
001dc4  9f000fcd  addli r1, r30, -6528
001dc8  7e0000a0  vmmov zero, mr0
001dcc  67800000  storeli.w zero, 0(r1)
001dd0  17200000  xor zero, zero, zero
001dd4  9f00b000  addli r1, zero, 88
001dd8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001ddc  9bb0cd00  slli r1, r27, 12
001de0  7e8000e0  vmmov mr0, r1
001de4  9f40ffcc  addli r1, r30, -6532
001de8  7e0000a0  vmmov zero, mr0
001dec  67800000  storeli.w zero, 0(r1)
001df0  17200000  xor zero, zero, zero
001df4  9f00c000  addli r1, zero, 96
001df8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001dfc  9bb0dd00  slli r1, r27, 13
001e00  7e8100e0  vmmov mr2, r1
001e04  9f00d000  addli r1, zero, 104
001e08  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
001e0c  9bb0ed00  slli r1, r27, 14
001e10  7e8000e0  vmmov mr0, r1
001e14  9f00e000  addli r1, zero, 112
001e18  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001e1c  ab800000  lui r1, 8
001e20  9f800000  addli r1, r1, 0
001e24  fe8100e0  vmmov mr3, r1
001e28  9f00f000  addli r1, zero, 120
001e2c  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001e30  9f00dfce  addli r1, r30, -6296
001e34  63800000  loadli.w zero,  0(r1)
001e38  fe0100e0  vmmov mr3, zero
001e3c  17200000  xor zero, zero, zero
001e40  6a210002  vand.u.mz vr2{mr1}, zero, vr0
001e44  e7cffeff  storeli.w r31, -4(sp)
001e48  9f0fafcd  addli r31, r30, -6448
001e4c  63800f00  loadli.w zero,  0(r31)
001e50  e3cffeff  loadli.w r31,  -4(sp)
001e54  fe0100e0  vmmov mr3, zero
001e58  17200000  xor zero, zero, zero
001e5c  6aa12536  vor.u.mh vr2{mr3}, r11, vr2
001e60  e7cffeff  storeli.w r31, -4(sp)
001e64  9f0f9fcd  addli r31, r30, -6456
001e68  9f001001  addli r1, zero, 136
001e6c  63800f00  loadli.w zero,  0(r31)
001e70  e3cffeff  loadli.w r31,  -4(sp)
001e74  fe0100e0  vmmov mr3, zero
001e78  17200000  xor zero, zero, zero
001e7c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001e80  e7cffeff  storeli.w r31, -4(sp)
001e84  9f0f8fcd  addli r31, r30, -6464
001e88  9f002001  addli r1, zero, 144
001e8c  63800f00  loadli.w zero,  0(r31)
001e90  e3cffeff  loadli.w r31,  -4(sp)
001e94  fe0100e0  vmmov mr3, zero
001e98  17200000  xor zero, zero, zero
001e9c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001ea0  e7cffeff  storeli.w r31, -4(sp)
001ea4  9f0f7fcd  addli r31, r30, -6472
001ea8  9f003001  addli r1, zero, 152
001eac  63800f00  loadli.w zero,  0(r31)
001eb0  e3cffeff  loadli.w r31,  -4(sp)
001eb4  fe0100e0  vmmov mr3, zero
001eb8  17200000  xor zero, zero, zero
001ebc  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001ec0  e7cffeff  storeli.w r31, -4(sp)
001ec4  9f0f6fcd  addli r31, r30, -6480
001ec8  9f004001  addli r1, zero, 160
001ecc  63800f00  loadli.w zero,  0(r31)
001ed0  e3cffeff  loadli.w r31,  -4(sp)
001ed4  fe0100e0  vmmov mr3, zero
001ed8  17200000  xor zero, zero, zero
001edc  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001ee0  e7cffeff  storeli.w r31, -4(sp)
001ee4  9f0f5fcd  addli r31, r30, -6488
001ee8  9f005001  addli r1, zero, 168
001eec  63800f00  loadli.w zero,  0(r31)
001ef0  e3cffeff  loadli.w r31,  -4(sp)
001ef4  fe0100e0  vmmov mr3, zero
001ef8  17200000  xor zero, zero, zero
001efc  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001f00  e7cffeff  storeli.w r31, -4(sp)
001f04  9f4f4fcd  addli r31, r30, -6492
001f08  9f006001  addli r1, zero, 176
001f0c  63800f00  loadli.w zero,  0(r31)
001f10  e3cffeff  loadli.w r31,  -4(sp)
001f14  fe0100e0  vmmov mr3, zero
001f18  17200000  xor zero, zero, zero
001f1c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001f20  e7cffeff  storeli.w r31, -4(sp)
001f24  9f0f4fcd  addli r31, r30, -6496
001f28  9f007001  addli r1, zero, 184
001f2c  63800f00  loadli.w zero,  0(r31)
001f30  e3cffeff  loadli.w r31,  -4(sp)
001f34  fe0100e0  vmmov mr3, zero
001f38  17200000  xor zero, zero, zero
001f3c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001f40  e7cffeff  storeli.w r31, -4(sp)
001f44  9f0f3fcd  addli r31, r30, -6504
001f48  9f008001  addli r1, zero, 192
001f4c  63800f00  loadli.w zero,  0(r31)
001f50  e3cffeff  loadli.w r31,  -4(sp)
001f54  fe0100e0  vmmov mr3, zero
001f58  17200000  xor zero, zero, zero
001f5c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001f60  e7cffeff  storeli.w r31, -4(sp)
001f64  9f0f2fcd  addli r31, r30, -6512
001f68  9f009001  addli r1, zero, 200
001f6c  63800f00  loadli.w zero,  0(r31)
001f70  e3cffeff  loadli.w r31,  -4(sp)
001f74  fe0100e0  vmmov mr3, zero
001f78  17200000  xor zero, zero, zero
001f7c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001f80  e7cffeff  storeli.w r31, -4(sp)
001f84  9f0f1fcd  addli r31, r30, -6520
001f88  9f00a001  addli r1, zero, 208
001f8c  63800f00  loadli.w zero,  0(r31)
001f90  e3cffeff  loadli.w r31,  -4(sp)
001f94  fe0100e0  vmmov mr3, zero
001f98  17200000  xor zero, zero, zero
001f9c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001fa0  e7cffeff  storeli.w r31, -4(sp)
001fa4  9f0f0fcd  addli r31, r30, -6528
001fa8  9f00b001  addli r1, zero, 216
001fac  63800f00  loadli.w zero,  0(r31)
001fb0  e3cffeff  loadli.w r31,  -4(sp)
001fb4  fe0100e0  vmmov mr3, zero
001fb8  17200000  xor zero, zero, zero
001fbc  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001fc0  e7cffeff  storeli.w r31, -4(sp)
001fc4  9f4fffcc  addli r31, r30, -6532
001fc8  9f00c001  addli r1, zero, 224
001fcc  63800f00  loadli.w zero,  0(r31)
001fd0  e3cffeff  loadli.w r31,  -4(sp)
001fd4  fe0100e0  vmmov mr3, zero
001fd8  17200000  xor zero, zero, zero
001fdc  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001fe0  9f00d001  addli r1, zero, 232
001fe4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
001fe8  9f00dfcd  addli r1, r30, -6424
001fec  63800000  loadli.w zero,  0(r1)
001ff0  7e0100e0  vmmov mr2, zero
001ff4  17200000  xor zero, zero, zero
001ff8  9f00e001  addli r1, zero, 240
001ffc  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
002000  ab800000  lui r1, 8
002004  9f800000  addli r1, r1, 0
002008  7e8000e0  vmmov mr0, r1
00200c  9f00f001  addli r1, zero, 248
002010  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
002014  9f001fce  addli r1, r30, -6392
002018  63800000  loadli.w zero,  0(r1)
00201c  e3401fce  loadli.w r1,  -6388(r30)
002020  92b01002  vadd.s.mz vr1{mr1}, r1, vr1
002024  12b12002  vadd.s.mz vr2{mr1}, r1, vr2
002028  e3007fce  loadli.w r1,  -6344(r30)
00202c  7e0000e0  vmmov mr0, zero
002030  17200000  xor zero, zero, zero
002034  e2b01002  vgathers_mask16.mz vr1{mr1}, vr1{r1}
002038  62b12002  vgathers_mask16.mz vr2{mr1}, vr2{r1}
00203c  db050000  j 44
002040  e3007fce  loadli.w r1,  -6344(r30)
002044  ca900002  vloads_mask16.mz vr1{mr1}, 0(r1)
002048  e300ffcc  loadli.w r1,  -6536(r30)
00204c  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
002050  e340efcc  loadli.w r1,  -6540(r30)
002054  ca910002  vloads_mask16.mz vr3{mr1}, 0(r1)
002058  e300efcc  loadli.w r1,  -6544(r30)
00205c  4a920002  vloads_mask16.mz vr4{mr1}, 0(r1)
002060  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002064  16114102  vadd.f.mz.rn vr2{mr1}, vr2, vr4
002068  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00206c  9f000002  addli r1, zero, 256
002070  6af110c0  vsrl.p vr2, r1, vr1
002074  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
002078  6af115c0  vsrl.p vr2, r11, vr1
00207c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
002080  6a711cc0  vsrl.p vr2, r24, vr1
002084  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
002088  6a711ec0  vsrl.p vr2, r28, vr1
00208c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
002090  7a930020  vextract.f r6, vr1{mr0}
002094  00a00000  mfence { lm }
002098  ab00803f  lui r1, 260096
00209c  0f836018  div.f.rn r6, r1, r6
0020a0  bf50b801  blt.s r16, r27, 52
0020a4  9f050fcf  addli r11, r30, -6272
0020a8  1f090000  addli r18, zero, 0
0020ac  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
0020b0  9f808500  addli r1, r11, 64
0020b4  1f094900  addli r18, r18, 32
0020b8  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0020bc  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
0020c0  0a112302  vmul.f.mz.rn vr2{mr1}, r6, vr2
0020c4  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
0020c8  9f850501  addli r11, r11, 128
0020cc  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0020d0  3f7f09ff  blt.s r18, r16, -36
0020d4  3f20d800  blt.s r16, r13, 8
0020d8  db1dfeff  j -3860
0020dc  00a00000  mfence { lm }
0020e0  9f050000  addli r11, zero, 0
0020e4  e300ffce  loadli.w r1,  -6280(r30)
0020e8  c2100602  vload_mask16.mz vr1{mr1}, 0(r12)
0020ec  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0020f0  e3003fce  loadli.w r1,  -6376(r30)
0020f4  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
0020f8  0a112302  vmul.f.mz.rn vr2{mr1}, r6, vr2
0020fc  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
002100  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
002104  00a00000  mfence { lm }
002108  63032fce  loadli.w r6,  -6384(r30)
00210c  8b90ba10  add.s r1, r21, r11
002110  0b91bc10  add.s r2, r25, r11
002114  1f130300  addli r6, r6, 1
002118  9fc50500  addli r11, r11, 4
00211c  e3800000  loadli.w r1,  0(r1)
002120  67001100  storeli.w r1, 0(r2)
002124  bb2f03fe  bneq r6, zero, -24
002128  db13feff  j -3940
00212c  bbea010a  bneq r3, zero, 5816
002130  9f068fce  addli r13, r30, -6336
002134  abf10000  lui r3, 15
002138  abf2ffff  lui r5, 1048575
00213c  1f02000c  addli r4, zero, 1536
002140  9f080fcf  addli r17, r30, -6272
002144  9f090002  addli r19, zero, 256
002148  1f0b0001  addli r22, zero, 128
00214c  9f0b8000  addli r23, zero, 64
002150  1f0c4000  addli r24, zero, 32
002154  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002158  ebd00600  load.d r[1:2], 0(r13)
00215c  9b91f1ff  ori r3, r3, 4095
002160  1b9302fc  ori r6, r5, 4032
002164  1b9402f8  ori r8, r5, 3968
002168  9b9202fe  ori r5, r5, 4064
00216c  b304932c  zext_int2long r[9:10], r6
002170  97813000  and r3, r1, r3
002174  97876000  and r15, r1, r6
002178  17888000  and r16, r1, r8
00217c  178a9002  and.d r[20:21], r[1:2], r[9:10]
002180  8b033230  div.u r7, r4, r3
002184  e740ffce  storeli.w r15, -6388(r30)
002188  e7000fcf  storeli.w r16, -6392(r30)
00218c  b384932e  zext_int2long r[9:10], r7
002190  33036428  zext_int2long r[6:7], r8
002194  1f049fcd  addli r8, r30, -6456
002198  978c6002  and.d r[25:26], r[1:2], r[6:7]
00219c  3383622a  zext_int2long r[6:7], r5
0021a0  97825000  and r5, r1, r5
0021a4  eb510400  load.d r[3:4], 0(r8)
0021a8  674f5fcc  storeli.w r5, -6412(r30)
0021ac  9f120000  addli r5, zero, 1
0021b0  978d6002  and.d r[27:28], r[1:2], r[6:7]
0021b4  1f035fcd  addli r6, r30, -6488
0021b8  9f03dfcd  addli r7, r30, -6424
0021bc  b380122a  zext_int2long r[1:2], r5
0021c0  7e8002e0  vmmov mr0, r5
0021c4  9f02ffcd  addli r5, r30, -6408
0021c8  73b0b301  store.d r[27:28], 0(r7)
0021cc  73301300  store.d r[1:2], 0(r6)
0021d0  9f000fce  addli r1, r30, -6400
0021d4  1f016fcd  addli r2, r30, -6480
0021d8  73b09201  store.d r[25:26], 0(r5)
0021dc  73b04001  store.d r[20:21], 0(r1)
0021e0  73309100  store.d r[9:10], 0(r2)
0021e4  db0a0000  j 84
0021e8  9f06afcd  addli r13, r30, -6448
0021ec  1f076fcd  addli r14, r30, -6480
0021f0  9f03bfcd  addli r7, r30, -6440
0021f4  1f008fcd  addli zero, r30, -6464
0021f8  1f099fcd  addli r18, r30, -6456
0021fc  ebd50600  load.d r[11:12], 0(r13)
002200  eb540700  load.d r[9:10], 0(r14)
002204  ab0200f0  lui r5, 983040
002208  ebd00300  load.d r[1:2], 0(r7)
00220c  eb530000  load.d r[7:8], 0(zero)
002210  eb510900  load.d r[3:4], 0(r18)
002214  17200000  xor zero, zero, zero
002218  8ba59510  add.ul r[11:12], r[11:12], r[9:10]
00221c  8ba37010  add.ul r[7:8], r[1:2], r[7:8]
002220  e3007fcd  loadli.w r1,  -6472(r30)
002224  13b33504  setlt.sl r6, r[11:12], r[3:4]
002228  97925000  or r5, r1, r5
00222c  ffb21301  s_lm2gm r5, r17, 0(r[7:8])
002230  00a00200  mfence { lm, gm }
002234  b746030a  beq r6, zero, 5552
002238  1f098fce  addli r18, r30, -6336
00223c  1f01afcd  addli r2, r30, -6448
002240  8bb2b118  sub.sl r[5:6], r[3:4], r[11:12]
002244  9f200000  addli r1, zero, 2
002248  eb560900  load.d r[13:14], 0(r18)
00224c  7330b100  store.d r[11:12], 0(r2)
002250  8bb3d520  mul.sl r[7:8], r[11:12], r[13:14]
002254  8bb59240  min.sl r[11:12], r[5:6], r[9:10]
002258  ab0200f0  lui r5, 983040
00225c  8bb4d520  mul.sl r[9:10], r[11:12], r[13:14]
002260  97b11302  sll.d r[3:4], r[7:8], r1
002264  9f032fce  addli r7, r30, -6384
002268  9bb42400  slli r9, r9, 2
00226c  1f055fcd  addli r10, r30, -6488
002270  73b0b300  store.d r[11:12], 0(r7)
002274  eb500500  load.d r[1:2], 0(r10)
002278  97925400  or r5, r9, r5
00227c  e70b9fcc  storeli.w r9, -6472(r30)
002280  13b31504  setlt.sl r6, r[11:12], r[1:2]
002284  9f05cfcd  addli r11, r30, -6432
002288  1f068fcd  addli r12, r30, -6464
00228c  ebd00500  load.d r[1:2], 0(r11)
002290  73303600  store.d r[3:4], 0(r12)
002294  8ba33010  add.ul r[7:8], r[1:2], r[3:4]
002298  ffa21301  l_gm2lm r5, r17, 0(r[7:8])
00229c  00a00200  mfence { lm, gm }
0022a0  3b2d03fe  bneq r6, zero, -184
0022a4  b3013028  zext_int2long r[3:4], zero
0022a8  db040000  j 36
0022ac  9f027fce  addli r5, r30, -6344
0022b0  1f032fce  addli r6, r30, -6384
0022b4  ebd10200  load.d r[3:4], 0(r5)
0022b8  eb500300  load.d r[1:2], 0(r6)
0022bc  00a00000  mfence { lm }
0022c0  a7910100  addli.d r[3:4], r[3:4], 1
0022c4  93b01104  setlt.sl r1, r[3:4], r[1:2]
0022c8  b78c00fe  beq r1, zero, -224
0022cc  8bb2d120  mul.sl r[5:6], r[3:4], r[13:14]
0022d0  9f007fce  addli r1, r30, -6344
0022d4  1bb32200  slli r6, r5, 2
0022d8  ab0280ff  lui r5, 1046528
0022dc  73b03000  store.d r[3:4], 0(r1)
0022e0  0b966810  add.s r12, r17, r6
0022e4  37d10700  beq r15, zero, 84
0022e8  ab0280ff  lui r5, 1046528
0022ec  b3037028  zext_int2long r[7:8], zero
0022f0  ea900222  vor.f.mz vr1{mr1}, r5, vr0
0022f4  9bb22300  slli r5, r7, 2
0022f8  a7838300  addli.d r[7:8], r[7:8], 64
0022fc  8b125610  add.s r5, r12, r5
002300  13a34305  setlt.ul r6, r[7:8], r[20:21]
002304  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
002308  9f848200  addli r9, r5, 64
00230c  c2910402  vload_mask16.mz vr3{mr1}, 0(r9)
002310  9f840201  addli r9, r5, 128
002314  9f828201  addli r5, r5, 192
002318  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
00231c  42910402  vload_mask16.mz vr2{mr1}, 0(r9)
002320  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
002324  c2910202  vload_mask16.mz vr3{mr1}, 0(r5)
002328  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
00232c  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
002330  3b1f03fe  bneq r6, zero, -60
002334  5b010000  j 8
002338  ea900222  vor.f.mz vr1{mr1}, r5, vr0
00233c  93a04607  setle.ul r1, r[13:14], r[20:21]
002340  a7020a00  addli.d r[5:6], r[20:21], 0
002344  67031fce  storeli.w r1, -6352(r30)
002348  bb800000  bneq r1, zero, 32
00234c  9bb32200  slli r7, r5, 2
002350  a7822200  addli.d r[5:6], r[5:6], 16
002354  8b137610  add.s r7, r12, r7
002358  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
00235c  93b3d204  setlt.sl r7, r[5:6], r[13:14]
002360  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
002364  bbaf03fe  bneq r7, zero, -24
002368  6af119c0  vsrl.p vr2, r19, vr1
00236c  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
002370  6a711bc0  vsrl.p vr2, r22, vr1
002374  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
002378  6af11bc0  vsrl.p vr2, r23, vr1
00237c  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
002380  6a711cc0  vsrl.p vr2, r24, vr1
002384  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
002388  fa920020  vextract.f r5, vr1{mr0}
00238c  8be30258  neg.f r7, r5
002390  37620800  beq r16, zero, 152
002394  33048028  zext_int2long r[8:9], zero
002398  9b322400  slli r5, r8, 2
00239c  27040401  addli.d r[8:9], r[8:9], 128
0023a0  8b125610  add.s r5, r12, r5
0023a4  13239405  setlt.ul r6, r[8:9], r[25:26]
0023a8  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
0023ac  1f858200  addli r10, r5, 64
0023b0  9f880201  addli r17, r5, 128
0023b4  9f898201  addli r19, r5, 192
0023b8  1f8c0202  addli r24, r5, 256
0023bc  9f868202  addli r13, r5, 320
0023c0  1f8b0203  addli r22, r5, 384
0023c4  42110502  vload_mask16.mz vr2{mr1}, 0(r10)
0023c8  c2910802  vload_mask16.mz vr3{mr1}, 0(r17)
0023cc  42920902  vload_mask16.mz vr4{mr1}, 0(r19)
0023d0  c2120c02  vload_mask16.mz vr5{mr1}, 0(r24)
0023d4  42930602  vload_mask16.mz vr6{mr1}, 0(r13)
0023d8  92901302  vadd.f.mz.rn vr1{mr1}, r7, vr1
0023dc  12912302  vadd.f.mz.rn vr2{mr1}, r7, vr2
0023e0  92913302  vadd.f.mz.rn vr3{mr1}, r7, vr3
0023e4  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
0023e8  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
0023ec  12936302  vadd.f.mz.rn vr6{mr1}, r7, vr6
0023f0  46901202  vstore_mask16.mz vr1{mr1}, 0(r5)
0023f4  9f828203  addli r5, r5, 448
0023f8  c2100b02  vload_mask16.mz vr1{mr1}, 0(r22)
0023fc  c2930202  vload_mask16.mz vr7{mr1}, 0(r5)
002400  46102502  vstore_mask16.mz vr2{mr1}, 0(r10)
002404  46903802  vstore_mask16.mz vr3{mr1}, 0(r17)
002408  46904902  vstore_mask16.mz vr4{mr1}, 0(r19)
00240c  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
002410  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
002414  92901302  vadd.f.mz.rn vr1{mr1}, r7, vr1
002418  92937302  vadd.f.mz.rn vr7{mr1}, r7, vr7
00241c  46101b02  vstore_mask16.mz vr1{mr1}, 0(r22)
002420  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
002424  bb5d03fe  bneq r6, zero, -140
002428  93800707  setle.u r1, r15, r16
00242c  27840c00  addli.d r[8:9], r[25:26], 0
002430  e7421fce  storeli.w r1, -6356(r30)
002434  3bd10000  bneq r1, zero, 84
002438  9b322400  slli r5, r8, 2
00243c  27048400  addli.d r[8:9], r[8:9], 64
002440  8b125610  add.s r5, r12, r5
002444  13234405  setlt.ul r6, r[8:9], r[20:21]
002448  1f858200  addli r10, r5, 64
00244c  9f860201  addli r13, r5, 128
002450  9f888201  addli r17, r5, 192
002454  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
002458  42110502  vload_mask16.mz vr2{mr1}, 0(r10)
00245c  c2910602  vload_mask16.mz vr3{mr1}, 0(r13)
002460  42920802  vload_mask16.mz vr4{mr1}, 0(r17)
002464  92901302  vadd.f.mz.rn vr1{mr1}, r7, vr1
002468  12912302  vadd.f.mz.rn vr2{mr1}, r7, vr2
00246c  92913302  vadd.f.mz.rn vr3{mr1}, r7, vr3
002470  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002474  46901202  vstore_mask16.mz vr1{mr1}, 0(r5)
002478  46102502  vstore_mask16.mz vr2{mr1}, 0(r10)
00247c  46903602  vstore_mask16.mz vr3{mr1}, 0(r13)
002480  46904802  vstore_mask16.mz vr4{mr1}, 0(r17)
002484  bb5e03fe  bneq r6, zero, -76
002488  e340efcd  loadli.w r1,  -6412(r30)
00248c  a7020a00  addli.d r[5:6], r[20:21], 0
002490  9380f006  setle.u r1, r1, r15
002494  67021fce  storeli.w r1, -6368(r30)
002498  bbd00000  bneq r1, zero, 52
00249c  1bb42200  slli r8, r5, 2
0024a0  a7824200  addli.d r[5:6], r[5:6], 32
0024a4  0b148610  add.s r8, r12, r8
0024a8  13a5b205  setlt.ul r10, r[5:6], r[27:28]
0024ac  9f068400  addli r13, r8, 64
0024b0  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
0024b4  42910602  vload_mask16.mz vr2{mr1}, 0(r13)
0024b8  92901302  vadd.f.mz.rn vr1{mr1}, r7, vr1
0024bc  12912302  vadd.f.mz.rn vr2{mr1}, r7, vr2
0024c0  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
0024c4  46902602  vstore_mask16.mz vr2{mr1}, 0(r13)
0024c8  3b5f05fe  bneq r10, zero, -44
0024cc  1f028fce  addli r4, r30, -6336
0024d0  a7820d00  addli.d r[5:6], r[27:28], 0
0024d4  eb500200  load.d r[1:2], 0(r4)
0024d8  93a1b007  setle.ul r3, r[1:2], r[27:28]
0024dc  e7013fce  storeli.w r3, -6376(r30)
0024e0  bb900100  bneq r3, zero, 36
0024e4  1bb42200  slli r8, r5, 2
0024e8  a7822200  addli.d r[5:6], r[5:6], 16
0024ec  0b148610  add.s r8, r12, r8
0024f0  93b61204  setlt.sl r13, r[5:6], r[1:2]
0024f4  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
0024f8  92901302  vadd.f.mz.rn vr1{mr1}, r7, vr1
0024fc  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
002500  bb9f06fe  bneq r13, zero, -28
002504  b3037028  zext_int2long r[7:8], zero
002508  00a00000  mfence { lm }
00250c  9bb22300  slli r5, r7, 2
002510  a7832300  addli.d r[7:8], r[7:8], 16
002514  9b914201  ori r3, r5, 20
002518  9b998201  ori r19, r5, 24
00251c  1b95c201  ori r10, r5, 28
002520  1b9e0202  ori r28, r5, 32
002524  0b175610  add.s r14, r12, r5
002528  9b964200  ori r13, r5, 4
00252c  1b9b8200  ori r22, r5, 8
002530  1b9d0201  ori r26, r5, 16
002534  1b988203  ori r16, r5, 56
002538  8b143610  add.s r9, r12, r3
00253c  8b193611  add.s r19, r12, r19
002540  0b15a610  add.s r10, r12, r10
002544  8b17c611  add.s r15, r12, r28
002548  1b9e4202  ori r28, r5, 36
00254c  63020700  loadli.w r4,  0(r14)
002550  8b16d610  add.s r13, r12, r13
002554  0b1c6611  add.s r24, r12, r22
002558  1b9bc200  ori r22, r5, 12
00255c  0b1da611  add.s r26, r12, r26
002560  0b180611  add.s r16, r12, r16
002564  e3800400  loadli.w r1,  0(r9)
002568  0b19c611  add.s r18, r12, r28
00256c  1b9e8202  ori r28, r5, 40
002570  63830600  loadli.w r6,  0(r13)
002574  630a0c00  loadli.w r20,  0(r24)
002578  0b1b6611  add.s r22, r12, r22
00257c  e30d0d00  loadli.w r27,  0(r26)
002580  8b15c611  add.s r11, r12, r28
002584  1b9ec202  ori r28, r5, 44
002588  e30b0b00  loadli.w r23,  0(r22)
00258c  e7071fce  storeli.w r1, -6280(r30)
002590  e3800900  loadli.w r1,  0(r19)
002594  8f0c9301  exp.f.rn r25, r6
002598  63030800  loadli.w r6,  0(r16)
00259c  8b1ac611  add.s r21, r12, r28
0025a0  1b9e0203  ori r28, r5, 48
0025a4  67071fce  storeli.w r1, -6288(r30)
0025a8  e3000500  loadli.w r1,  0(r10)
0025ac  0b1ec611  add.s r28, r12, r28
0025b0  0f036300  exp.f.rn r6, r6
0025b4  e3010e00  loadli.w r3,  0(r28)
0025b8  e7061fce  storeli.w r1, -6296(r30)
0025bc  e3800700  loadli.w r1,  0(r15)
0025c0  67809601  storeli.w r25, 0(r13)
0025c4  8f86db00  exp.f.rn r13, r23
0025c8  8f813100  exp.f.rn r3, r3
0025cc  e7051fce  storeli.w r1, -6312(r30)
0025d0  e3000900  loadli.w r1,  0(r18)
0025d4  67006800  storeli.w r6, 0(r16)
0025d8  67061fce  storeli.w r1, -6304(r30)
0025dc  e3800500  loadli.w r1,  0(r11)
0025e0  6700db00  storeli.w r13, 0(r22)
0025e4  67051fce  storeli.w r1, -6320(r30)
0025e8  e3800a00  loadli.w r1,  0(r21)
0025ec  67003e00  storeli.w r3, 0(r28)
0025f0  e7041fce  storeli.w r1, -6328(r30)
0025f4  9b904203  ori r1, r5, 52
0025f8  9b92c203  ori r5, r5, 60
0025fc  0b111610  add.s r2, r12, r1
002600  8f001200  exp.f.rn r1, r4
002604  8b125610  add.s r5, r12, r5
002608  e3880200  loadli.w r17,  0(r5)
00260c  63020100  loadli.w r4,  0(r2)
002610  8f86d800  exp.f.rn r13, r17
002614  9f088fce  addli r17, r30, -6336
002618  0f024200  exp.f.rn r4, r4
00261c  67001700  storeli.w r1, 0(r14)
002620  8f001a00  exp.f.rn r1, r20
002624  630affce  loadli.w r20,  -6280(r30)
002628  0f87ed00  exp.f.rn r14, r27
00262c  8f0c9a01  exp.f.rn r25, r20
002630  630aefce  loadli.w r20,  -6288(r30)
002634  67004100  storeli.w r4, 0(r2)
002638  6780d200  storeli.w r13, 0(r5)
00263c  8f0b7a01  exp.f.rn r23, r20
002640  630adfce  loadli.w r20,  -6296(r30)
002644  67001c00  storeli.w r1, 0(r24)
002648  e300cfce  loadli.w r1,  -6304(r30)
00264c  6700ed00  storeli.w r14, 0(r26)
002650  8f0dba01  exp.f.rn r27, r20
002654  630abfce  loadli.w r20,  -6312(r30)
002658  67809401  storeli.w r25, 0(r9)
00265c  e304afce  loadli.w r9,  -6320(r30)
002660  8f801000  exp.f.rn r1, r1
002664  0f0a4a01  exp.f.rn r20, r20
002668  8f849400  exp.f.rn r9, r9
00266c  67807901  storeli.w r23, 0(r19)
002670  6700b501  storeli.w r27, 0(r10)
002674  63059fce  loadli.w r10,  -6328(r30)
002678  67001900  storeli.w r1, 0(r18)
00267c  67804701  storeli.w r20, 0(r15)
002680  6bd70800  load.d r[14:15], 0(r17)
002684  0f05a500  exp.f.rn r10, r10
002688  67809500  storeli.w r9, 0(r11)
00268c  13b7e304  setlt.sl r14, r[7:8], r[14:15]
002690  6780aa00  storeli.w r10, 0(r21)
002694  bb6907fe  bneq r14, zero, -392
002698  9f000fce  addli r1, r30, -6400
00269c  00a00000  mfence { lm }
0026a0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0026a4  e3471fce  loadli.w r15,  -6388(r30)
0026a8  6bda0000  load.d r[20:21], 0(r1)
0026ac  37b10700  beq r15, zero, 76
0026b0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0026b4  b3037028  zext_int2long r[7:8], zero
0026b8  9bb02300  slli r1, r7, 2
0026bc  a7838300  addli.d r[7:8], r[7:8], 64
0026c0  8b101610  add.s r1, r12, r1
0026c4  13a14305  setlt.ul r2, r[7:8], r[20:21]
0026c8  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0026cc  9f818000  addli r3, r1, 64
0026d0  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
0026d4  9f810001  addli r3, r1, 128
0026d8  9f808001  addli r1, r1, 192
0026dc  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0026e0  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
0026e4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0026e8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0026ec  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0026f0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0026f4  3b1f01fe  bneq r2, zero, -60
0026f8  1f028fce  addli r4, r30, -6336
0026fc  9f03ffcd  addli r7, r30, -6408
002700  63081fce  loadli.w r16,  -6392(r30)
002704  e3006fce  loadli.w r1,  -6352(r30)
002708  a7020a00  addli.d r[5:6], r[20:21], 0
00270c  9f090002  addli r19, zero, 256
002710  1f0b0001  addli r22, zero, 128
002714  9f0b8000  addli r23, zero, 64
002718  1f0c4000  addli r24, zero, 32
00271c  6b510200  load.d r[2:3], 0(r4)
002720  ebdc0300  load.d r[25:26], 0(r7)
002724  bb800000  bneq r1, zero, 32
002728  9bb02200  slli r1, r5, 2
00272c  a7822200  addli.d r[5:6], r[5:6], 16
002730  8b101610  add.s r1, r12, r1
002734  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
002738  93b02204  setlt.sl r1, r[5:6], r[2:3]
00273c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
002740  bbaf00fe  bneq r1, zero, -24
002744  6af119c0  vsrl.p vr2, r19, vr1
002748  ab00803f  lui r1, 260096
00274c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
002750  6a711bc0  vsrl.p vr2, r22, vr1
002754  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
002758  6af11bc0  vsrl.p vr2, r23, vr1
00275c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
002760  6a711cc0  vsrl.p vr2, r24, vr1
002764  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
002768  7a910020  vextract.f r2, vr1{mr0}
00276c  8f832018  div.f.rn r7, r1, r2
002770  9f00dfcd  addli r1, r30, -6424
002774  ebdd0000  load.d r[27:28], 0(r1)
002778  37620800  beq r16, zero, 152
00277c  b3081029  zext_int2long r[17:18], zero
002780  9bb02800  slli r1, r17, 2
002784  a7880801  addli.d r[17:18], r[17:18], 128
002788  8b101610  add.s r1, r12, r1
00278c  13a19805  setlt.ul r2, r[17:18], r[25:26]
002790  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002794  9f818000  addli r3, r1, 64
002798  1f820001  addli r4, r1, 128
00279c  9f828001  addli r5, r1, 192
0027a0  1f830002  addli r6, r1, 256
0027a4  1f848002  addli r8, r1, 320
0027a8  9f840003  addli r9, r1, 384
0027ac  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
0027b0  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
0027b4  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
0027b8  c2120302  vload_mask16.mz vr5{mr1}, 0(r6)
0027bc  42130402  vload_mask16.mz vr6{mr1}, 0(r8)
0027c0  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
0027c4  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
0027c8  8a913302  vmul.f.mz.rn vr3{mr1}, r7, vr3
0027cc  0a924302  vmul.f.mz.rn vr4{mr1}, r7, vr4
0027d0  8a925302  vmul.f.mz.rn vr5{mr1}, r7, vr5
0027d4  0a936302  vmul.f.mz.rn vr6{mr1}, r7, vr6
0027d8  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0027dc  9f808003  addli r1, r1, 448
0027e0  c2900402  vload_mask16.mz vr1{mr1}, 0(r9)
0027e4  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0027e8  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
0027ec  46103202  vstore_mask16.mz vr3{mr1}, 0(r4)
0027f0  46904202  vstore_mask16.mz vr4{mr1}, 0(r5)
0027f4  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
0027f8  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
0027fc  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
002800  8a937302  vmul.f.mz.rn vr7{mr1}, r7, vr7
002804  46901402  vstore_mask16.mz vr1{mr1}, 0(r9)
002808  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
00280c  bb5d01fe  bneq r2, zero, -140
002810  e3405fce  loadli.w r1,  -6356(r30)
002814  a7880c00  addli.d r[17:18], r[25:26], 0
002818  3bd10000  bneq r1, zero, 84
00281c  9bb02800  slli r1, r17, 2
002820  a7888800  addli.d r[17:18], r[17:18], 64
002824  8b101610  add.s r1, r12, r1
002828  13a14805  setlt.ul r2, r[17:18], r[20:21]
00282c  9f818000  addli r3, r1, 64
002830  1f820001  addli r4, r1, 128
002834  9f828001  addli r5, r1, 192
002838  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00283c  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
002840  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
002844  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
002848  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
00284c  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
002850  8a913302  vmul.f.mz.rn vr3{mr1}, r7, vr3
002854  0a924302  vmul.f.mz.rn vr4{mr1}, r7, vr4
002858  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00285c  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
002860  46103202  vstore_mask16.mz vr3{mr1}, 0(r4)
002864  46904202  vstore_mask16.mz vr4{mr1}, 0(r5)
002868  bb5e01fe  bneq r2, zero, -76
00286c  1f018fce  addli r2, r30, -6336
002870  e3004fce  loadli.w r1,  -6368(r30)
002874  a7020a00  addli.d r[5:6], r[20:21], 0
002878  eb560100  load.d r[13:14], 0(r2)
00287c  bbd00000  bneq r1, zero, 52
002880  9bb02200  slli r1, r5, 2
002884  a7824200  addli.d r[5:6], r[5:6], 32
002888  8b101610  add.s r1, r12, r1
00288c  13a1b205  setlt.ul r2, r[5:6], r[27:28]
002890  9f818000  addli r3, r1, 64
002894  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002898  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
00289c  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
0028a0  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
0028a4  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0028a8  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
0028ac  3b5f01fe  bneq r2, zero, -44
0028b0  e3003fce  loadli.w r1,  -6376(r30)
0028b4  a7820d00  addli.d r[5:6], r[27:28], 0
0028b8  9f080fcf  addli r17, r30, -6272
0028bc  bbc700fc  bneq r1, zero, -1552
0028c0  9bb02200  slli r1, r5, 2
0028c4  a7822200  addli.d r[5:6], r[5:6], 16
0028c8  8b101610  add.s r1, r12, r1
0028cc  13b1d204  setlt.sl r2, r[5:6], r[13:14]
0028d0  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0028d4  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
0028d8  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0028dc  bb1f01fe  bneq r2, zero, -28
0028e0  db39ffff  j -1588
0028e4  b3013028  zext_int2long r[3:4], zero
0028e8  9f07afce  addli r15, r30, -6320
0028ec  9b02f501  andi r5, r10, 31
0028f0  9f0c0fcf  addli r25, r30, -6272
0028f4  9f0d0fff  addli r27, r30, -128
0028f8  1b362500  slli r12, r10, 2
0028fc  1f48ffcc  addli r16, r30, -6532
002900  9f08ffcc  addli r17, r30, -6536
002904  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002908  6bd40700  load.d r[8:9], 0(r15)
00290c  abf0ffff  lui r1, 1048575
002910  e701cfce  storeli.w r12, -6376(r30)
002914  e7424fcf  storeli.w r20, -6356(r30)
002918  67025fcf  storeli.w r21, -6368(r30)
00291c  1b9100fe  ori r2, r1, 4064
002920  1b93f0ff  ori r6, r1, 4095
002924  8ba18110  add.ul r[3:4], r[3:4], r[8:9]
002928  170c2500  and r24, r10, r2
00292c  97325300  sll r5, r6, r5
002930  9b332c00  slli r7, r24, 2
002934  97a26200  xor r5, r5, r6
002938  8b967c10  add.s r13, r25, r7
00293c  7e8002e0  vmmov mr0, r5
002940  9bc30201  srli r7, r5, 16
002944  7e0000a0  vmmov zero, mr0
002948  9f828600  addli r5, r13, 64
00294c  674fdfcc  storeli.w r13, -6412(r30)
002950  8b363918  sub.sl r[13:14], r[18:19], r[3:4]
002954  7e8003e0  vmmov mr0, r7
002958  9f03dfce  addli r7, r30, -6296
00295c  67000800  storeli.w zero, 0(r16)
002960  17200000  xor zero, zero, zero
002964  7e0000a0  vmmov zero, mr0
002968  178e2600  and r28, r13, r2
00296c  e70e5fcc  storeli.w r5, -6424(r30)
002970  9f828d00  addli r5, r27, 64
002974  73b0a300  store.d r[10:11], 0(r7)
002978  9b83f601  andi r7, r13, 31
00297c  67800800  storeli.w zero, 0(r17)
002980  17200000  xor zero, zero, zero
002984  e7075fce  storeli.w r5, -6280(r30)
002988  9b92c0ff  ori r5, r1, 4092
00298c  1b312e00  slli r2, r28, 2
002990  6701cfcf  storeli.w r28, -6384(r30)
002994  17055500  and r10, r10, r5
002998  8b952c10  add.s r11, r25, r2
00299c  17317300  sll r2, r6, r7
0029a0  9f838500  addli r7, r11, 64
0029a4  17216100  xor r2, r2, r6
0029a8  6747bfcc  storeli.w r11, -6540(r30)
0029ac  97855600  and r11, r13, r5
0029b0  a78201f4  addli.d r[5:6], r[3:4], 31232
0029b4  e70cafcc  storeli.w r10, -6456(r30)
0029b8  7e0001e0  vmmov mr0, r2
0029bc  67077fcc  storeli.w r7, -6544(r30)
0029c0  9f43cfcc  addli r7, r30, -6556
0029c4  1b410101  srli r2, r2, 16
0029c8  670cbfcc  storeli.w r11, -6464(r30)
0029cc  7e0000a0  vmmov zero, mr0
0029d0  67800300  storeli.w zero, 0(r7)
0029d4  17200000  xor zero, zero, zero
0029d8  7e0001e0  vmmov mr0, r2
0029dc  1f41afcc  addli r2, r30, -6572
0029e0  1f007fcd  addli zero, r30, -6472
0029e4  73305000  store.d r[5:6], 0(zero)
0029e8  e3027fce  loadli.w r5,  -6344(r30)
0029ec  17200000  xor zero, zero, zero
0029f0  9f270000  addli r15, zero, 2
0029f4  1f838200  addli r6, r5, 64
0029f8  e7406fce  storeli.w r6, -6388(r30)
0029fc  1f830201  addli r6, r5, 128
002a00  9f828201  addli r5, r5, 192
002a04  e7006fce  storeli.w r6, -6392(r30)
002a08  0b138c10  add.s r6, r24, r8
002a0c  67005fce  storeli.w r5, -6400(r30)
002a10  9b9200f8  ori r5, r1, 3968
002a14  9b9000ff  ori r1, r1, 4080
002a18  0b132319  sub.s r6, r6, r18
002a1c  97035600  and r7, r12, r5
002a20  e7466fcc  storeli.w r6, -6548(r30)
002a24  0b937c10  add.s r6, r25, r7
002a28  8b133e10  add.s r7, r28, r3
002a2c  8b913510  add.s r3, r11, r3
002a30  1bb22600  slli r4, r13, 2
002a34  9f05c00b  addli r11, zero, 1504
002a38  e7066fcc  storeli.w r6, -6552(r30)
002a3c  1b938c00  ori r6, r25, 8
002a40  8b912119  sub.s r3, r3, r18
002a44  97025200  and r5, r4, r5
002a48  67076fce  storeli.w r6, -6288(r30)
002a4c  0b138510  add.s r6, r10, r8
002a50  674a3fcc  storeli.w r3, -6492(r30)
002a54  8b118918  sub.s r3, r18, r8
002a58  1f059fce  addli r10, r30, -6328
002a5c  8b925c10  add.s r5, r25, r5
002a60  0b132319  sub.s r6, r6, r18
002a64  7330d500  store.d r[13:14], 0(r10)
002a68  9f063fcd  addli r13, r30, -6504
002a6c  e7455fcc  storeli.w r5, -6564(r30)
002a70  1f071fcd  addli r14, r30, -6520
002a74  670b6fcc  storeli.w r6, -6480(r30)
002a78  17031600  and r6, r12, r1
002a7c  97001200  and r1, r4, r1
002a80  1f46f00b  addli r12, zero, 1532
002a84  7e0000a0  vmmov zero, mr0
002a88  67000100  storeli.w zero, 0(r2)
002a8c  17200000  xor zero, zero, zero
002a90  0b936c10  add.s r6, r25, r6
002a94  8b901c10  add.s r1, r25, r1
002a98  e70a6fcc  storeli.w r6, -6488(r30)
002a9c  0b932319  sub.s r6, r7, r18
002aa0  670a1fcc  storeli.w r1, -6496(r30)
002aa4  9f8001f4  addli r1, r3, -1536
002aa8  b3113c28  sext_int2long r[3:4], r24
002aac  9f03ffcd  addli r7, r30, -6408
002ab0  73b03300  store.d r[3:4], 0(r7)
002ab4  b3113e28  sext_int2long r[3:4], r28
002ab8  67066fcc  storeli.w r6, -6560(r30)
002abc  9732f402  sll.d r[5:6], r[8:9], r15
002ac0  9f07bfcd  addli r15, r30, -6440
002ac4  e7051fcc  storeli.w r1, -6568(r30)
002ac8  9f002fcd  addli r1, r30, -6512
002acc  73b03600  store.d r[3:4], 0(r13)
002ad0  a701040c  addli.d r[3:4], r[8:9], 1536
002ad4  1f04afcd  addli r8, r30, -6448
002ad8  9f04cfcd  addli r9, r30, -6432
002adc  73b05000  store.d r[5:6], 0(r1)
002ae0  9f100000  addli r1, zero, 1
002ae4  73303400  store.d r[3:4], 0(r8)
002ae8  ebd10400  load.d r[3:4], 0(r9)
002aec  fe8100e0  vmmov mr3, r1
002af0  8ba15110  add.ul r[3:4], r[3:4], r[5:6]
002af4  73303700  store.d r[3:4], 0(r14)
002af8  ebd10700  load.d r[3:4], 0(r15)
002afc  8ba15110  add.ul r[3:4], r[3:4], r[5:6]
002b00  9f020fcd  addli r5, r30, -6528
002b04  73b03200  store.d r[3:4], 0(r5)
002b08  5b0d0000  j 104
002b0c  1f038fce  addli r6, r30, -6336
002b10  9f210000  addli r3, zero, 2
002b14  9f030fcd  addli r7, r30, -6528
002b18  eb500300  load.d r[1:2], 0(r6)
002b1c  00a00000  mfence { lm }
002b20  ab0200f0  lui r5, 983040
002b24  8b301b20  mul.sl r[1:2], r[22:23], r[1:2]
002b28  97b03002  sll.d r[1:2], r[1:2], r3
002b2c  ebd10300  load.d r[3:4], 0(r7)
002b30  8ba01110  add.ul r[1:2], r[3:4], r[1:2]
002b34  e3013fce  loadli.w r3,  -6376(r30)
002b38  97925100  or r5, r3, r5
002b3c  ffb29001  s_lm2gm r5, r25, 0(r[1:2])
002b40  00a00200  mfence { lm, gm }
002b44  9f01cfce  addli r3, r30, -6304
002b48  1f026fce  addli r4, r30, -6352
002b4c  634a5fce  loadli.w r20,  -6356(r30)
002b50  e30a4fce  loadli.w r21,  -6368(r30)
002b54  630e2fce  loadli.w r28,  -6384(r30)
002b58  1f0d4000  addli r26, zero, 32
002b5c  6bdb0100  load.d r[22:23], 0(r3)
002b60  eb500200  load.d r[1:2], 0(r4)
002b64  271b0b00  addli.d r[22:23], r[22:23], 1
002b68  93301b04  setlt.sl r1, r[22:23], r[1:2]
002b6c  b7e10006  beq r1, zero, 3192
002b70  9f01dfce  addli r3, r30, -6296
002b74  9f10000c  addli r1, zero, 1537
002b78  ebd30100  load.d r[7:8], 0(r3)
002b7c  b380102a  zext_int2long r[1:2], r1
002b80  13b31304  setlt.sl r6, r[7:8], r[1:2]
002b84  e7056fce  storeli.w r6, -6312(r30)
002b88  bb050300  bneq r6, zero, 352
002b8c  1f01afce  addli r2, r30, -6320
002b90  eb510100  load.d r[3:4], 0(r2)
002b94  ab0280ff  lui r5, 1046528
002b98  93303906  setle.sl r1, r[18:19], r[3:4]
002b9c  3b990000  bneq r1, zero, 580
002ba0  1f058fce  addli r10, r30, -6336
002ba4  9f210000  addli r3, zero, 2
002ba8  9f06cfcd  addli r13, r30, -6432
002bac  eb500500  load.d r[1:2], 0(r10)
002bb0  8b301b20  mul.sl r[1:2], r[22:23], r[1:2]
002bb4  97b03002  sll.d r[1:2], r[1:2], r3
002bb8  ebd10600  load.d r[3:4], 0(r13)
002bbc  0ba31110  add.ul r[6:7], r[3:4], r[1:2]
002bc0  9f00afce  addli r1, r30, -6320
002bc4  ebd10000  load.d r[3:4], 0(r1)
002bc8  ab0280ff  lui r5, 1046528
002bcc  27840100  addli.d r[8:9], r[3:4], 0
002bd0  5b090000  j 72
002bd4  9f000002  addli r1, zero, 256
002bd8  2704040c  addli.d r[8:9], r[8:9], 1536
002bdc  00a00000  mfence { lm }
002be0  6af110c0  vsrl.p vr2, r1, vr1
002be4  9f000001  addli r1, zero, 128
002be8  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
002bec  6af110c0  vsrl.p vr2, r1, vr1
002bf0  9f008000  addli r1, zero, 64
002bf4  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
002bf8  6af110c0  vsrl.p vr2, r1, vr1
002bfc  93302405  setlt.sl r1, r[8:9], r[18:19]
002c00  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
002c04  6a711dc0  vsrl.p vr2, r26, vr1
002c08  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
002c0c  7a910026  vextract.f r2, vr1{mr3}
002c10  8be22248  max.f r5, r5, r2
002c14  37b70000  beq r1, zero, 460
002c18  1f250000  addli r10, zero, 2
002c1c  8b308918  sub.sl r[1:2], r[18:19], r[8:9]
002c20  9736a402  sll.d r[13:14], r[8:9], r10
002c24  1f05000c  addli r10, zero, 1536
002c28  0b95a040  min.s r10, r1, r10
002c2c  ab0000f0  lui r1, 983040
002c30  8b26d310  add.ul r[13:14], r[6:7], r[13:14]
002c34  1b312500  slli r2, r10, 2
002c38  97101100  or r1, r2, r1
002c3c  ffa09601  l_gm2lm r1, r25, 0(r[13:14])
002c40  00a00200  mfence { lm, gm }
002c44  abf0ffff  lui r1, 1048575
002c48  2b0780ff  lui r14, 1046528
002c4c  9b9000fe  ori r1, r1, 4064
002c50  97061500  and r13, r10, r1
002c54  9f100000  addli r1, zero, 1
002c58  3f911600  blt.s r13, r1, 68
002c5c  ab0080ff  lui r1, 1046528
002c60  3397e62a  sext_int2long r[14:15], r13
002c64  33080029  zext_int2long r[16:17], zero
002c68  ea900022  vor.f.mz vr1{mr1}, r1, vr0
002c6c  9b302800  slli r1, r16, 2
002c70  27084800  addli.d r[16:17], r[16:17], 32
002c74  8b901c10  add.s r1, r25, r1
002c78  1331e804  setlt.sl r2, r[16:17], r[14:15]
002c7c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
002c80  9f808000  addli r1, r1, 64
002c84  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
002c88  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
002c8c  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
002c90  3b7f01fe  bneq r2, zero, -36
002c94  3fd0a600  blt.s r13, r10, 20
002c98  dbe7ffff  j -196
002c9c  ea100722  vor.f.mz vr1{mr1}, r14, vr0
002ca0  3fa0a600  blt.s r13, r10, 8
002ca4  5be6ffff  j -208
002ca8  abf0ffff  lui r1, 1048575
002cac  1b01f501  andi r2, r10, 31
002cb0  1bb52600  slli r10, r13, 2
002cb4  9b90f0ff  ori r1, r1, 4095
002cb8  17b12000  sll r2, r1, r2
002cbc  97201100  xor r1, r2, r1
002cc0  0b91ac10  add.s r2, r25, r10
002cc4  7e8000e0  vmmov mr0, r1
002cc8  9bc00001  srli r1, r1, 16
002ccc  42110100  vload_mask16.mz vr2{mr0}, 0(r2)
002cd0  1f018100  addli r2, r2, 64
002cd4  7e8100e0  vmmov mr2, r1
002cd8  c2110104  vload_mask16.mz vr3{mr2}, 0(r2)
002cdc  b6902010  vmax.f.mh vr1{mr0}, vr1, vr2
002ce0  b6903014  vmax.f.mh vr1{mr2}, vr1, vr3
002ce4  5bdeffff  j -272
002ce8  1f038fce  addli r6, r30, -6336
002cec  9f210000  addli r3, zero, 2
002cf0  9f061fcd  addli r13, r30, -6520
002cf4  1f07ffcd  addli r14, r30, -6408
002cf8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002cfc  eb500300  load.d r[1:2], 0(r6)
002d00  ab0200f0  lui r5, 983040
002d04  8b301b20  mul.sl r[1:2], r[22:23], r[1:2]
002d08  97b03002  sll.d r[1:2], r[1:2], r3
002d0c  ebd10600  load.d r[3:4], 0(r13)
002d10  8ba01110  add.ul r[1:2], r[3:4], r[1:2]
002d14  e3013fce  loadli.w r3,  -6376(r30)
002d18  97925100  or r5, r3, r5
002d1c  ffa29001  l_gm2lm r5, r25, 0(r[1:2])
002d20  1f01afce  addli r2, r30, -6320
002d24  ab0280ff  lui r5, 1046528
002d28  00a00200  mfence { lm, gm }
002d2c  9f100000  addli r1, zero, 1
002d30  eb540700  load.d r[9:10], 0(r14)
002d34  eb510100  load.d r[3:4], 0(r2)
002d38  3f3a1c04  blt.s r24, r1, 2700
002d3c  ab0080ff  lui r1, 1046528
002d40  b3025028  zext_int2long r[5:6], zero
002d44  ea901022  vor.f.mz vr1{mr1}, r1, vr1
002d48  9bb02200  slli r1, r5, 2
002d4c  a7824200  addli.d r[5:6], r[5:6], 32
002d50  8b901c10  add.s r1, r25, r1
002d54  13b19204  setlt.sl r2, r[5:6], r[9:10]
002d58  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
002d5c  9f808000  addli r1, r1, 64
002d60  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
002d64  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
002d68  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
002d6c  3b7f01fe  bneq r2, zero, -36
002d70  93b07404  setlt.sl r1, r[9:10], r[7:8]
002d74  b7f00000  beq r1, zero, 60
002d78  1f41ffcc  addli r2, r30, -6532
002d7c  e340efcd  loadli.w r1,  -6412(r30)
002d80  9f02ffcc  addli r5, r30, -6536
002d84  63000100  loadli.w zero,  0(r2)
002d88  7e0000e0  vmmov mr0, zero
002d8c  17200000  xor zero, zero, zero
002d90  42910000  vload_mask16.mz vr2{mr0}, 0(r1)
002d94  63800200  loadli.w zero,  0(r5)
002d98  e300dfcd  loadli.w r1,  -6424(r30)
002d9c  7e0100e0  vmmov mr2, zero
002da0  17200000  xor zero, zero, zero
002da4  c2910004  vload_mask16.mz vr3{mr2}, 0(r1)
002da8  b6902010  vmax.f.mh vr1{mr0}, vr1, vr2
002dac  b6903014  vmax.f.mh vr1{mr2}, vr1, vr3
002db0  9f000002  addli r1, zero, 256
002db4  6af110c0  vsrl.p vr2, r1, vr1
002db8  9f000001  addli r1, zero, 128
002dbc  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
002dc0  6af110c0  vsrl.p vr2, r1, vr1
002dc4  9f008000  addli r1, zero, 64
002dc8  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
002dcc  6af110c0  vsrl.p vr2, r1, vr1
002dd0  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
002dd4  6a711dc0  vsrl.p vr2, r26, vr1
002dd8  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
002ddc  fa920026  vextract.f r5, vr1{mr3}
002de0  73605a00  stores.w r5, 0(r20)
002de4  9f02dfce  addli r5, r30, -6296
002de8  00200100  mfence { sm }
002dec  abf00000  lui r1, 15
002df0  9b90f0ff  ori r1, r1, 4095
002df4  80a10004  csr_set csr3, r1
002df8  00d00100  sync_group
002dfc  ab000000  lui r1, 0
002e00  ebd40200  load.d r[9:10], 0(r5)
002e04  9f800000  addli r1, r1, 0
002e08  1f810000  addli r2, r1, 0
002e0c  9f008100  addli r1, r2, 64
002e10  ca100102  vloads_mask16.mz vr1{mr1}, 0(r2)
002e14  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
002e18  9f000101  addli r1, r2, 128
002e1c  1f018101  addli r2, r2, 192
002e20  ca910002  vloads_mask16.mz vr3{mr1}, 0(r1)
002e24  4a120102  vloads_mask16.mz vr4{mr1}, 0(r2)
002e28  9f000002  addli r1, zero, 256
002e2c  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
002e30  36114102  vmax.f.mz vr2{mr1}, vr2, vr4
002e34  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
002e38  6af110c0  vsrl.p vr2, r1, vr1
002e3c  9f000001  addli r1, zero, 128
002e40  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
002e44  6af110c0  vsrl.p vr2, r1, vr1
002e48  9f008000  addli r1, zero, 64
002e4c  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
002e50  6af110c0  vsrl.p vr2, r1, vr1
002e54  9f00000c  addli r1, zero, 1536
002e58  b380102a  zext_int2long r[1:2], r1
002e5c  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
002e60  93b09004  setlt.sl r1, r[1:2], r[9:10]
002e64  6a711dc0  vsrl.p vr2, r26, vr1
002e68  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
002e6c  7a910026  vextract.f r2, vr1{mr3}
002e70  0b640158  neg.f r8, r2
002e74  37bd0000  beq r1, zero, 844
002e78  63058fcd  loadli.w r10,  -6464(r30)
002e7c  630aefce  loadli.w r20,  -6288(r30)
002e80  9f100000  addli r1, zero, 1
002e84  bf501e00  blt.s r28, r1, 52
002e88  9f020fcf  addli r5, r30, -6272
002e8c  1f030000  addli r6, zero, 0
002e90  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
002e94  9f808200  addli r1, r5, 64
002e98  1f034300  addli r6, r6, 32
002e9c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
002ea0  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
002ea4  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
002ea8  46901202  vstore_mask16.mz vr1{mr1}, 0(r5)
002eac  9f820201  addli r5, r5, 128
002eb0  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
002eb4  3f7fc3ff  blt.s r6, r28, -36
002eb8  9f029fce  addli r5, r30, -6328
002ebc  ebd00200  load.d r[1:2], 0(r5)
002ec0  3f201e00  blt.s r28, r1, 8
002ec4  5b0b0000  j 88
002ec8  00a00000  mfence { lm }
002ecc  9f020000  addli r5, zero, 0
002ed0  e340efcc  loadli.w r1,  -6540(r30)
002ed4  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002ed8  e300efcc  loadli.w r1,  -6544(r30)
002edc  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
002ee0  e300ffce  loadli.w r1,  -6280(r30)
002ee4  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
002ee8  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
002eec  46901d02  vstore_mask16.mz vr1{mr1}, 0(r27)
002ef0  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
002ef4  00a00000  mfence { lm }
002ef8  6303cfcc  loadli.w r6,  -6560(r30)
002efc  e343bfcc  loadli.w r7,  -6564(r30)
002f00  8b905d10  add.s r1, r27, r5
002f04  0b915310  add.s r2, r7, r5
002f08  1f130300  addli r6, r6, 1
002f0c  9fc20200  addli r5, r5, 4
002f10  e3800000  loadli.w r1,  0(r1)
002f14  67001100  storeli.w r1, 0(r2)
002f18  bb2f03fe  bneq r6, zero, -24
002f1c  9f100000  addli r1, zero, 1
002f20  00a00000  mfence { lm }
002f24  3f211500  blt.s r10, r1, 72
002f28  9f020000  addli r5, zero, 0
002f2c  1f030a00  addli r6, r20, 0
002f30  e300f3ff  loadli.w r1,  -8(r6)
002f34  6341f3ff  loadli.w r2,  -4(r6)
002f38  e3030300  loadli.w r7,  0(r6)
002f3c  e3440300  loadli.w r9,  4(r6)
002f40  9fc20200  addli r5, r5, 4
002f44  8f801000  exp.f.rn r1, r1
002f48  0f012100  exp.f.rn r2, r2
002f4c  8f837300  exp.f.rn r7, r7
002f50  8f849400  exp.f.rn r9, r9
002f54  e70f13fe  storeli.w r1, -8(r6)
002f58  e74f23fe  storeli.w r2, -4(r6)
002f5c  67007300  storeli.w r7, 0(r6)
002f60  67409300  storeli.w r9, 4(r6)
002f64  1f032300  addli r6, r6, 16
002f68  3fafa2fe  blt.s r5, r10, -56
002f6c  9f039fce  addli r7, r30, -6328
002f70  e3024fcd  loadli.w r5,  -6496(r30)
002f74  63434fcd  loadli.w r6,  -6492(r30)
002f78  ebd00300  load.d r[1:2], 0(r7)
002f7c  4bf0a000  ble.s r1, r10, 28
002f80  e3800200  loadli.w r1,  0(r5)
002f84  1f130300  addli r6, r6, 1
002f88  8f801000  exp.f.rn r1, r1
002f8c  67801200  storeli.w r1, 0(r5)
002f90  9fc20200  addli r5, r5, 4
002f94  bb3f03fe  bneq r6, zero, -20
002f98  1f013fcd  addli r2, r30, -6504
002f9c  00a00000  mfence { lm }
002fa0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002fa4  9f100000  addli r1, zero, 1
002fa8  eb540100  load.d r[9:10], 0(r2)
002fac  bf501e00  blt.s r28, r1, 52
002fb0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002fb4  b3025028  zext_int2long r[5:6], zero
002fb8  9bb02200  slli r1, r5, 2
002fbc  a7824200  addli.d r[5:6], r[5:6], 32
002fc0  8b901c10  add.s r1, r25, r1
002fc4  13b19204  setlt.sl r2, r[5:6], r[9:10]
002fc8  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
002fcc  9f808000  addli r1, r1, 64
002fd0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
002fd4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
002fd8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002fdc  3b7f01fe  bneq r2, zero, -36
002fe0  9f029fce  addli r5, r30, -6328
002fe4  ebd00200  load.d r[1:2], 0(r5)
002fe8  93b01404  setlt.sl r1, r[9:10], r[1:2]
002fec  1f017fcd  addli r2, r30, -6472
002ff0  eb540100  load.d r[9:10], 0(r2)
002ff4  b7f00000  beq r1, zero, 60
002ff8  1f41cfcc  addli r2, r30, -6556
002ffc  e340efcc  loadli.w r1,  -6540(r30)
003000  9f42afcc  addli r5, r30, -6572
003004  63000100  loadli.w zero,  0(r2)
003008  7e0000e0  vmmov mr0, zero
00300c  17200000  xor zero, zero, zero
003010  42910000  vload_mask16.mz vr2{mr0}, 0(r1)
003014  63800200  loadli.w zero,  0(r5)
003018  e300efcc  loadli.w r1,  -6544(r30)
00301c  7e0000e0  vmmov mr0, zero
003020  17200000  xor zero, zero, zero
003024  c2910000  vload_mask16.mz vr3{mr0}, 0(r1)
003028  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00302c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003030  9f000002  addli r1, zero, 256
003034  1f0e0030  addli r28, zero, 6144
003038  00a00000  mfence { lm }
00303c  6af110c0  vsrl.p vr2, r1, vr1
003040  9f000001  addli r1, zero, 128
003044  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
003048  6af110c0  vsrl.p vr2, r1, vr1
00304c  9f008000  addli r1, zero, 64
003050  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
003054  6af110c0  vsrl.p vr2, r1, vr1
003058  93b03404  setlt.sl r1, r[9:10], r[3:4]
00305c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
003060  6a711dc0  vsrl.p vr2, r26, vr1
003064  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
003068  7a910026  vextract.f r2, vr1{mr3}
00306c  8b620110  add.f.rn r5, r2, zero
003070  bb8c0000  bneq r1, zero, 800
003074  9f068fce  addli r13, r30, -6336
003078  9f210000  addli r3, zero, 2
00307c  1f07cfcd  addli r14, r30, -6432
003080  ebd00600  load.d r[1:2], 0(r13)
003084  8b301b20  mul.sl r[1:2], r[22:23], r[1:2]
003088  97b03002  sll.d r[1:2], r[1:2], r3
00308c  eb510700  load.d r[3:4], 0(r14)
003090  0ba31110  add.ul r[6:7], r[3:4], r[1:2]
003094  9f00afce  addli r1, r30, -6320
003098  ebd10000  load.d r[3:4], 0(r1)
00309c  9f200000  addli r1, zero, 2
0030a0  2b0700f0  lui r14, 983040
0030a4  9f060fcf  addli r13, r30, -6272
0030a8  97b01402  sll.d r[1:2], r[9:10], r1
0030ac  1717ee00  or r14, r28, r14
0030b0  8b201310  add.ul r[1:2], r[6:7], r[1:2]
0030b4  7fa7d000  l_gm2lm r14, r13, 0(r[1:2])
0030b8  00a00200  mfence { lm, gm }
0030bc  abf0ffff  lui r1, 1048575
0030c0  1b9700fe  ori r14, r1, 4064
0030c4  c2900602  vload_mask16.mz vr1{mr1}, 0(r13)
0030c8  9f808600  addli r1, r13, 64
0030cc  1f074700  addli r14, r14, 32
0030d0  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0030d4  1301b704  setlt.u r2, r14, r11
0030d8  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
0030dc  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
0030e0  46901602  vstore_mask16.mz vr1{mr1}, 0(r13)
0030e4  9f860601  addli r13, r13, 128
0030e8  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0030ec  3b6f01fe  bneq r2, zero, -40
0030f0  00a00000  mfence { lm }
0030f4  abf0ffff  lui r1, 1048575
0030f8  1f070a00  addli r14, r20, 0
0030fc  9b96c0ff  ori r13, r1, 4092
003100  e300f7ff  loadli.w r1,  -8(r14)
003104  6341f7ff  loadli.w r2,  -4(r14)
003108  e3070700  loadli.w r15,  0(r14)
00310c  63480700  loadli.w r16,  4(r14)
003110  9fc60600  addli r13, r13, 4
003114  9388c604  setlt.u r17, r13, r12
003118  8f801000  exp.f.rn r1, r1
00311c  0f012100  exp.f.rn r2, r2
003120  8f87f700  exp.f.rn r15, r15
003124  0f080801  exp.f.rn r16, r16
003128  e70f17fe  storeli.w r1, -8(r14)
00312c  e74f27fe  storeli.w r2, -4(r14)
003130  6700f700  storeli.w r15, 0(r14)
003134  67400701  storeli.w r16, 4(r14)
003138  1f072700  addli r14, r14, 16
00313c  3b9f08fe  bneq r17, zero, -60
003140  b306d028  zext_int2long r[13:14], zero
003144  00a00000  mfence { lm }
003148  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00314c  9bb02600  slli r1, r13, 2
003150  b387f52e  zext_int2long r[15:16], r11
003154  8b901c10  add.s r1, r25, r1
003158  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
00315c  9f808000  addli r1, r1, 64
003160  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
003164  93a0f604  setlt.ul r1, r[13:14], r[15:16]
003168  a7864600  addli.d r[13:14], r[13:14], 32
00316c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
003170  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003174  3bef00fe  bneq r1, zero, -40
003178  9f000002  addli r1, zero, 256
00317c  a78404f4  addli.d r[9:10], r[9:10], 31232
003180  00a00000  mfence { lm }
003184  6af110c0  vsrl.p vr2, r1, vr1
003188  9f000001  addli r1, zero, 128
00318c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
003190  6af110c0  vsrl.p vr2, r1, vr1
003194  9f008000  addli r1, zero, 64
003198  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00319c  6af110c0  vsrl.p vr2, r1, vr1
0031a0  93b09106  setle.sl r1, r[3:4], r[9:10]
0031a4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0031a8  6a711dc0  vsrl.p vr2, r26, vr1
0031ac  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0031b0  7a910026  vextract.f r2, vr1{mr3}
0031b4  8be22210  add.f.rn r5, r5, r2
0031b8  bb9b00fe  bneq r1, zero, -284
0031bc  db3a0000  j 468
0031c0  6302efce  loadli.w r4,  -6288(r30)
0031c4  9f100000  addli r1, zero, 1
0031c8  bf501c00  blt.s r24, r1, 52
0031cc  9f020fcf  addli r5, r30, -6272
0031d0  1f030000  addli r6, zero, 0
0031d4  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
0031d8  9f808200  addli r1, r5, 64
0031dc  1f034300  addli r6, r6, 32
0031e0  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0031e4  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
0031e8  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
0031ec  46901202  vstore_mask16.mz vr1{mr1}, 0(r5)
0031f0  9f820201  addli r5, r5, 128
0031f4  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0031f8  3f7f83ff  blt.s r6, r24, -36
0031fc  e3069fcd  loadli.w r13,  -6456(r30)
003200  1f0e0030  addli r28, zero, 6144
003204  3f209c00  blt.s r24, r9, 8
003208  5b0b0000  j 88
00320c  00a00000  mfence { lm }
003210  9f020000  addli r5, zero, 0
003214  e340efcd  loadli.w r1,  -6412(r30)
003218  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00321c  e300dfcd  loadli.w r1,  -6424(r30)
003220  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003224  e300ffce  loadli.w r1,  -6280(r30)
003228  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
00322c  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
003230  46901d02  vstore_mask16.mz vr1{mr1}, 0(r27)
003234  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
003238  00a00000  mfence { lm }
00323c  6343dfcc  loadli.w r6,  -6548(r30)
003240  e301dfcc  loadli.w r3,  -6552(r30)
003244  8b905d10  add.s r1, r27, r5
003248  0b915110  add.s r2, r3, r5
00324c  1f130300  addli r6, r6, 1
003250  9fc20200  addli r5, r5, 4
003254  e3800000  loadli.w r1,  0(r1)
003258  67001100  storeli.w r1, 0(r2)
00325c  bb2f03fe  bneq r6, zero, -24
003260  9f100000  addli r1, zero, 1
003264  00a00000  mfence { lm }
003268  3fa11600  blt.s r13, r1, 72
00326c  9f020000  addli r5, zero, 0
003270  1f030200  addli r6, r4, 0
003274  e300f3ff  loadli.w r1,  -8(r6)
003278  6341f3ff  loadli.w r2,  -4(r6)
00327c  e3030300  loadli.w r7,  0(r6)
003280  e3440300  loadli.w r9,  4(r6)
003284  9fc20200  addli r5, r5, 4
003288  8f801000  exp.f.rn r1, r1
00328c  0f012100  exp.f.rn r2, r2
003290  8f837300  exp.f.rn r7, r7
003294  8f849400  exp.f.rn r9, r9
003298  e70f13fe  storeli.w r1, -8(r6)
00329c  e74f23fe  storeli.w r2, -4(r6)
0032a0  67007300  storeli.w r7, 0(r6)
0032a4  67409300  storeli.w r9, 4(r6)
0032a8  1f032300  addli r6, r6, 16
0032ac  3fafd2fe  blt.s r5, r13, -56
0032b0  9f00dfce  addli r1, r30, -6296
0032b4  e3025fcd  loadli.w r5,  -6488(r30)
0032b8  63036fcd  loadli.w r6,  -6480(r30)
0032bc  ebd10000  load.d r[3:4], 0(r1)
0032c0  4bf0d100  ble.s r3, r13, 28
0032c4  e3800200  loadli.w r1,  0(r5)
0032c8  1f130300  addli r6, r6, 1
0032cc  8f801000  exp.f.rn r1, r1
0032d0  67801200  storeli.w r1, 0(r5)
0032d4  9fc20200  addli r5, r5, 4
0032d8  bb3f03fe  bneq r6, zero, -20
0032dc  1f01ffcd  addli r2, r30, -6408
0032e0  00a00000  mfence { lm }
0032e4  9f100000  addli r1, zero, 1
0032e8  eb540100  load.d r[9:10], 0(r2)
0032ec  bf231c02  blt.s r24, r1, 1256
0032f0  b3025028  zext_int2long r[5:6], zero
0032f4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0032f8  9bb02200  slli r1, r5, 2
0032fc  a7824200  addli.d r[5:6], r[5:6], 32
003300  8b901c10  add.s r1, r25, r1
003304  13b19204  setlt.sl r2, r[5:6], r[9:10]
003308  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
00330c  9f808000  addli r1, r1, 64
003310  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
003314  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
003318  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00331c  3b7f01fe  bneq r2, zero, -36
003320  93b03404  setlt.sl r1, r[9:10], r[3:4]
003324  b7f00000  beq r1, zero, 60
003328  1f41ffcc  addli r2, r30, -6532
00332c  e340efcd  loadli.w r1,  -6412(r30)
003330  9f01ffcc  addli r3, r30, -6536
003334  63000100  loadli.w zero,  0(r2)
003338  7e0000e0  vmmov mr0, zero
00333c  17200000  xor zero, zero, zero
003340  42910000  vload_mask16.mz vr2{mr0}, 0(r1)
003344  63800100  loadli.w zero,  0(r3)
003348  e300dfcd  loadli.w r1,  -6424(r30)
00334c  7e0000e0  vmmov mr0, zero
003350  17200000  xor zero, zero, zero
003354  c2910000  vload_mask16.mz vr3{mr0}, 0(r1)
003358  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00335c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003360  9f000002  addli r1, zero, 256
003364  6af110c0  vsrl.p vr2, r1, vr1
003368  9f000001  addli r1, zero, 128
00336c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
003370  6af110c0  vsrl.p vr2, r1, vr1
003374  9f008000  addli r1, zero, 64
003378  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00337c  6af110c0  vsrl.p vr2, r1, vr1
003380  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
003384  6a711dc0  vsrl.p vr2, r26, vr1
003388  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00338c  fa920026  vextract.f r5, vr1{mr3}
003390  73e05a00  stores.w r5, 0(r21)
003394  00200100  mfence { sm }
003398  abf00000  lui r1, 15
00339c  9b90f0ff  ori r1, r1, 4095
0033a0  80a10004  csr_set csr3, r1
0033a4  00d00100  sync_group
0033a8  e3007fce  loadli.w r1,  -6344(r30)
0033ac  ca900002  vloads_mask16.mz vr1{mr1}, 0(r1)
0033b0  e3401fce  loadli.w r1,  -6388(r30)
0033b4  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
0033b8  e3001fce  loadli.w r1,  -6392(r30)
0033bc  ca910002  vloads_mask16.mz vr3{mr1}, 0(r1)
0033c0  e3000fce  loadli.w r1,  -6400(r30)
0033c4  4a920002  vloads_mask16.mz vr4{mr1}, 0(r1)
0033c8  9f000002  addli r1, zero, 256
0033cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0033d0  16114102  vadd.f.mz.rn vr2{mr1}, vr2, vr4
0033d4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0033d8  6af110c0  vsrl.p vr2, r1, vr1
0033dc  9f000001  addli r1, zero, 128
0033e0  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0033e4  6af110c0  vsrl.p vr2, r1, vr1
0033e8  9f008000  addli r1, zero, 64
0033ec  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0033f0  6af110c0  vsrl.p vr2, r1, vr1
0033f4  ab00803f  lui r1, 260096
0033f8  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0033fc  6a711dc0  vsrl.p vr2, r26, vr1
003400  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
003404  7a910026  vextract.f r2, vr1{mr3}
003408  0f882018  div.f.rn r16, r1, r2
00340c  e300bfce  loadli.w r1,  -6312(r30)
003410  1f01cfce  addli r2, r30, -6304
003414  73306101  store.d r[22:23], 0(r2)
003418  3bbc0000  bneq r1, zero, 780
00341c  abf0ffff  lui r1, 1048575
003420  9f020fcf  addli r5, r30, -6272
003424  1b9300fe  ori r6, r1, 4064
003428  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
00342c  9f808200  addli r1, r5, 64
003430  1f034300  addli r6, r6, 32
003434  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003438  1301b304  setlt.u r2, r6, r11
00343c  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
003440  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
003444  46901202  vstore_mask16.mz vr1{mr1}, 0(r5)
003448  9f820201  addli r5, r5, 128
00344c  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
003450  3b6f01fe  bneq r2, zero, -40
003454  9f068fce  addli r13, r30, -6336
003458  1f07afcd  addli r14, r30, -6448
00345c  9f072fcd  addli r15, r30, -6512
003460  ebd00600  load.d r[1:2], 0(r13)
003464  eb510700  load.d r[3:4], 0(r14)
003468  00a00000  mfence { lm }
00346c  93333906  setle.sl r7, r[18:19], r[3:4]
003470  8b301b20  mul.sl r[1:2], r[22:23], r[1:2]
003474  9f210000  addli r3, zero, 2
003478  1f02bfcd  addli r4, r30, -6440
00347c  97b23002  sll.d r[5:6], r[1:2], r3
003480  eb500200  load.d r[1:2], 0(r4)
003484  8baa5010  add.ul r[21:22], r[1:2], r[5:6]
003488  ab0000f0  lui r1, 983040
00348c  6bd10700  load.d r[2:3], 0(r15)
003490  97101e00  or r1, r28, r1
003494  8ba42a10  add.ul r[9:10], r[21:22], r[2:3]
003498  ffb09401  s_lm2gm r1, r25, 0(r[9:10])
00349c  00a00200  mfence { lm, gm }
0034a0  bb9a03fa  bneq r7, zero, -2396
0034a4  9f01cfcd  addli r3, r30, -6432
0034a8  ebd00100  load.d r[1:2], 0(r3)
0034ac  00a00000  mfence { lm }
0034b0  e308bfcc  loadli.w r17,  -6568(r30)
0034b4  8ba25010  add.ul r[5:6], r[1:2], r[5:6]
0034b8  9f00afcd  addli r1, r30, -6448
0034bc  ebd60000  load.d r[13:14], 0(r1)
0034c0  db050000  j 44
0034c4  a786060c  addli.d r[13:14], r[13:14], 1536
0034c8  00a00000  mfence { lm }
0034cc  ab0000f0  lui r1, 983040
0034d0  8ba19a10  add.ul r[3:4], r[21:22], r[9:10]
0034d4  9f8808f4  addli r17, r17, -1536
0034d8  13b12605  setlt.sl r2, r[13:14], r[18:19]
0034dc  97101e00  or r1, r28, r1
0034e0  ffb09101  s_lm2gm r1, r25, 0(r[3:4])
0034e4  00a00200  mfence { lm, gm }
0034e8  377901fa  beq r2, zero, -2468
0034ec  9f210000  addli r3, zero, 2
0034f0  8b30d918  sub.sl r[1:2], r[18:19], r[13:14]
0034f4  97b43602  sll.d r[9:10], r[13:14], r3
0034f8  9f01000c  addli r3, zero, 1536
0034fc  8b933040  min.s r7, r1, r3
003500  ab0000f0  lui r1, 983040
003504  0ba19210  add.ul r[2:3], r[5:6], r[9:10]
003508  1bbe2300  slli r28, r7, 2
00350c  97101e00  or r1, r28, r1
003510  ff209101  l_gm2lm r1, r25, 0(r[2:3])
003514  00a00200  mfence { lm, gm }
003518  abf0ffff  lui r1, 1048575
00351c  9b9000fe  ori r1, r1, 4064
003520  178d1300  and r26, r7, r1
003524  9f100000  addli r1, zero, 1
003528  bf501d00  blt.s r26, r1, 52
00352c  9f070fcf  addli r15, r30, -6272
003530  1f0a0000  addli r20, zero, 0
003534  c2900702  vload_mask16.mz vr1{mr1}, 0(r15)
003538  9f808700  addli r1, r15, 64
00353c  1f0a4a00  addli r20, r20, 32
003540  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003544  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
003548  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
00354c  46901702  vstore_mask16.mz vr1{mr1}, 0(r15)
003550  9f870701  addli r15, r15, 128
003554  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
003558  3f7faaff  blt.s r20, r26, -36
00355c  3f207d00  blt.s r26, r7, 8
003560  db0e0000  j 116
003564  9b302d00  slli r1, r26, 2
003568  2bf1ffff  lui r2, 1048575
00356c  00a00000  mfence { lm }
003570  9f01000c  addli r3, zero, 1536
003574  9f0b0000  addli r23, zero, 0
003578  8b901c10  add.s r1, r25, r1
00357c  8b913840  min.s r3, r17, r3
003580  1b1101f8  ori r2, r2, 3968
003584  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
003588  9f808000  addli r1, r1, 64
00358c  9b87f101  andi r15, r3, 31
003590  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003594  9bb02100  slli r1, r3, 2
003598  97802000  and r1, r1, r2
00359c  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
0035a0  0b9a1c10  add.s r20, r25, r1
0035a4  e300ffce  loadli.w r1,  -6280(r30)
0035a8  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
0035ac  46901d02  vstore_mask16.mz vr1{mr1}, 0(r27)
0035b0  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0035b4  00a00000  mfence { lm }
0035b8  8b907d11  add.s r1, r27, r23
0035bc  0b117a11  add.s r2, r20, r23
0035c0  9ff7f7ff  addli r15, r15, -1
0035c4  9fcb0b00  addli r23, r23, 4
0035c8  e3800000  loadli.w r1,  0(r1)
0035cc  67001100  storeli.w r1, 0(r2)
0035d0  bbaf07fe  bneq r15, zero, -24
0035d4  00a00000  mfence { lm }
0035d8  abf0ffff  lui r1, 1048575
0035dc  9b90c0ff  ori r1, r1, 4092
0035e0  97871300  and r15, r7, r1
0035e4  9f100000  addli r1, zero, 1
0035e8  3fa11700  blt.s r15, r1, 72
0035ec  630aefce  loadli.w r20,  -6288(r30)
0035f0  9f0b0000  addli r23, zero, 0
0035f4  e300faff  loadli.w r1,  -8(r20)
0035f8  6341faff  loadli.w r2,  -4(r20)
0035fc  e3010a00  loadli.w r3,  0(r20)
003600  63420a00  loadli.w r4,  4(r20)
003604  9fcb0b00  addli r23, r23, 4
003608  8f801000  exp.f.rn r1, r1
00360c  0f012100  exp.f.rn r2, r2
003610  8f813100  exp.f.rn r3, r3
003614  0f024200  exp.f.rn r4, r4
003618  e70f1afe  storeli.w r1, -8(r20)
00361c  e74f2afe  storeli.w r2, -4(r20)
003620  67003a00  storeli.w r3, 0(r20)
003624  67404a00  storeli.w r4, 4(r20)
003628  1f0a2a00  addli r20, r20, 16
00362c  3faffbfe  blt.s r23, r15, -56
003630  cbf0f300  ble.s r7, r15, 60
003634  9f00000c  addli r1, zero, 1536
003638  2bf1ffff  lui r2, 1048575
00363c  8b901840  min.s r1, r17, r1
003640  1b1101ff  ori r2, r2, 4080
003644  9bb12000  slli r3, r1, 2
003648  9b873000  andi r15, r1, 3
00364c  17812100  and r2, r3, r2
003650  0b9a2c10  add.s r20, r25, r2
003654  e3000a00  loadli.w r1,  0(r20)
003658  9ff7f7ff  addli r15, r15, -1
00365c  8f801000  exp.f.rn r1, r1
003660  67001a00  storeli.w r1, 0(r20)
003664  1f4a0a00  addli r20, r20, 4
003668  bbbf07fe  bneq r15, zero, -20
00366c  9f100000  addli r1, zero, 1
003670  00a00000  mfence { lm }
003674  bf501d00  blt.s r26, r1, 52
003678  9f070fcf  addli r15, r30, -6272
00367c  1f0a0000  addli r20, zero, 0
003680  c2900702  vload_mask16.mz vr1{mr1}, 0(r15)
003684  9f808700  addli r1, r15, 64
003688  1f0a4a00  addli r20, r20, 32
00368c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003690  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
003694  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
003698  46901702  vstore_mask16.mz vr1{mr1}, 0(r15)
00369c  9f870701  addli r15, r15, 128
0036a0  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0036a4  3f7faaff  blt.s r20, r26, -36
0036a8  3f207d00  blt.s r26, r7, 8
0036ac  5bc3ffff  j -488
0036b0  1b312d00  slli r2, r26, 2
0036b4  abf1ffff  lui r3, 1048575
0036b8  00a00000  mfence { lm }
0036bc  9f00000c  addli r1, zero, 1536
0036c0  1f0a0000  addli r20, zero, 0
0036c4  0b912c10  add.s r2, r25, r2
0036c8  8b901840  min.s r1, r17, r1
0036cc  9b9101f8  ori r3, r3, 3968
0036d0  1f028100  addli r4, r2, 64
0036d4  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0036d8  1bb12000  slli r2, r1, 2
0036dc  9b83f001  andi r7, r1, 31
0036e0  e300ffce  loadli.w r1,  -6280(r30)
0036e4  42110202  vload_mask16.mz vr2{mr1}, 0(r4)
0036e8  17013100  and r2, r2, r3
0036ec  8b972c10  add.s r15, r25, r2
0036f0  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
0036f4  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
0036f8  46901d02  vstore_mask16.mz vr1{mr1}, 0(r27)
0036fc  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
003700  00a00000  mfence { lm }
003704  8b904d11  add.s r1, r27, r20
003708  0b914711  add.s r2, r15, r20
00370c  9ff3f3ff  addli r7, r7, -1
003710  1f4a0a00  addli r20, r20, 4
003714  e3800000  loadli.w r1,  0(r1)
003718  67001100  storeli.w r1, 0(r2)
00371c  bbaf03fe  bneq r7, zero, -24
003720  dbb4ffff  j -604
003724  9f100000  addli r1, zero, 1
003728  bf501c00  blt.s r24, r1, 52
00372c  9f020fcf  addli r5, r30, -6272
003730  1f030000  addli r6, zero, 0
003734  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
003738  9f808200  addli r1, r5, 64
00373c  1f034300  addli r6, r6, 32
003740  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003744  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
003748  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
00374c  46901202  vstore_mask16.mz vr1{mr1}, 0(r5)
003750  9f820201  addli r5, r5, 128
003754  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
003758  3f7f83ff  blt.s r6, r24, -36
00375c  9f01dfce  addli r3, r30, -6296
003760  ebd00100  load.d r[1:2], 0(r3)
003764  3f201c00  blt.s r24, r1, 8
003768  db74feff  j -3164
00376c  00a00000  mfence { lm }
003770  9f020000  addli r5, zero, 0
003774  e340efcd  loadli.w r1,  -6412(r30)
003778  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00377c  e300dfcd  loadli.w r1,  -6424(r30)
003780  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003784  e300ffce  loadli.w r1,  -6280(r30)
003788  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
00378c  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
003790  46901d02  vstore_mask16.mz vr1{mr1}, 0(r27)
003794  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
003798  00a00000  mfence { lm }
00379c  6343dfcc  loadli.w r6,  -6548(r30)
0037a0  e301dfcc  loadli.w r3,  -6552(r30)
0037a4  8b905d10  add.s r1, r27, r5
0037a8  0b915110  add.s r2, r3, r5
0037ac  1f130300  addli r6, r6, 1
0037b0  9fc20200  addli r5, r5, 4
0037b4  e3800000  loadli.w r1,  0(r1)
0037b8  67001100  storeli.w r1, 0(r2)
0037bc  bb2f03fe  bneq r6, zero, -24
0037c0  db69feff  j -3252
0037c4  ea901222  vor.f.mz vr1{mr1}, r5, vr1
0037c8  93b07404  setlt.sl r1, r[9:10], r[7:8]
0037cc  bbb600fa  bneq r1, zero, -2644
0037d0  5bbcfeff  j -2592
0037d4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0037d8  93b03404  setlt.sl r1, r[9:10], r[3:4]
0037dc  3bbd00fc  bneq r1, zero, -1204
0037e0  5b70ffff  j -1152
0037e4  9f0e8fcc  addli sp, r30, -6592
0037e8  9f8e8e33  addli sp, sp, 6592
0037ec  00a00300  mfence { lm, sm, gm }
0037f0  00100000  exit
0037f4  00100000  exit
0037f8  00100000  exit
0037fc  00100000  exit
003800  00100000  exit
003804  00100000  exit
003808  00100000  exit
00380c  00100000  exit
003810  00100000  exit
003814  00100000  exit
003818  00100000  exit
00381c  00100000  exit
003820  00100000  exit
003824  00100000  exit
003828  00100000  exit
00382c  00100000  exit
003830  00100000  exit
003834  00100000  exit
003838  00100000  exit
00383c  00100000  exit
003840  00100000  exit
003844  00100000  exit
003848  00100000  exit
00384c  00100000  exit
003850  00100000  exit
003854  00100000  exit
003858  00100000  exit
00385c  00100000  exit
003860  00100000  exit
003864  00100000  exit
003868  00100000  exit
00386c  00100000  exit
003870  00100000  exit
003874  00100000  exit
003878  00100000  exit
00387c  00100000  exit
003880  00100000  exit
003884  00100000  exit
003888  00100000  exit
00388c  00100000  exit
003890  00100000  exit
003894  00100000  exit
003898  00100000  exit
00389c  00100000  exit
0038a0  00100000  exit
0038a4  00100000  exit
0038a8  00100000  exit
0038ac  00100000  exit
0038b0  00100000  exit
0038b4  00100000  exit
0038b8  00100000  exit
0038bc  00100000  exit
0038c0  00100000  exit
0038c4  00100000  exit
0038c8  00100000  exit
0038cc  00100000  exit
0038d0  00100000  exit
0038d4  00100000  exit
0038d8  00100000  exit
0038dc  00100000  exit
0038e0  00100000  exit
0038e4  00100000  exit
0038e8  00100000  exit
0038ec  00100000  exit
0038f0  00100000  exit
0038f4  00100000  exit
0038f8  00100000  exit
0038fc  00100000  exit
003900  00100000  exit
003904  00100000  exit
003908  00100000  exit
00390c  00100000  exit
003910  00100000  exit
003914  00100000  exit
003918  00100000  exit
00391c  00100000  exit
003920  00100000  exit
003924  00100000  exit
003928  00100000  exit
00392c  00100000  exit
003930  00100000  exit
003934  00100000  exit
003938  00100000  exit
00393c  00100000  exit
003940  00100000  exit
003944  00100000  exit
003948  00100000  exit
00394c  00100000  exit
003950  00100000  exit
003954  00100000  exit
003958  00100000  exit
00395c  00100000  exit
003960  00100000  exit
003964  00100000  exit
003968  00100000  exit
00396c  00100000  exit
003970  00100000  exit
003974  00100000  exit
003978  00100000  exit
00397c  00100000  exit
003980  00100000  exit
003984  00100000  exit
003988  00100000  exit
00398c  00100000  exit
003990  00100000  exit
003994  00100000  exit
003998  00100000  exit
00399c  00100000  exit
0039a0  00100000  exit
0039a4  00100000  exit
0039a8  00100000  exit
0039ac  00100000  exit
0039b0  00100000  exit
0039b4  00100000  exit
0039b8  00100000  exit
0039bc  00100000  exit
0039c0  00100000  exit
0039c4  00100000  exit
0039c8  00100000  exit
0039cc  00100000  exit
0039d0  00100000  exit
0039d4  00100000  exit
0039d8  00100000  exit
0039dc  00100000  exit
0039e0  00100000  exit
0039e4  00100000  exit
0039e8  00100000  exit
0039ec  00100000  exit
0039f0  00100000  exit
0039f4  00100000  exit
0039f8  00100000  exit
0039fc  00100000  exit
003a00  00100000  exit
003a04  00100000  exit
003a08  00100000  exit
003a0c  00100000  exit
003a10  00100000  exit
003a14  00100000  exit
003a18  00100000  exit
003a1c  00100000  exit
003a20  00100000  exit
003a24  00100000  exit
003a28  00100000  exit
003a2c  00100000  exit
003a30  00100000  exit
003a34  00000000  nop
