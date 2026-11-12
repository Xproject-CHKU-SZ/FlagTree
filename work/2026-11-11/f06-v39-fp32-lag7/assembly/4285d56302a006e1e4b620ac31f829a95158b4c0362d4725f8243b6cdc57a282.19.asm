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
000028  0b864138  mod.u r12, r3, r4
00002c  9f450000  addli r11, zero, 4
000030  8b86b030  div.u r13, r1, r11
000034  1f160600  addli r12, r12, 1
000038  8b00d620  mul.u r1, r12, r13
00003c  8b805010  add.u r1, r1, r5
000040  9f8e0000  addli sp, r1, 0
000044  1bba6700  slli r20, r15, 6
000048  978e4e01  and sp, sp, r20
00004c  cb003200  ble.s r4, r3, 32
000050  80520202  load_param_i r5, 4
000054  00d20102  load_param_i r4, 3
000058  ab0900f0  lui r19, 983040
00005c  9f09a000  addli r19, zero, 80
000060  1f8a0eff  addli r20, sp, -128
000064  ff494201  bl_gm2lm r19, r20, 0(r[5:6])
000068  00a00200  mfence { lm, gm }
00006c  abfa0000  lui r21, 15
000070  9b9afaff  ori r21, r21, 4095
000074  80a10a04  csr_set csr3, r21
000078  00d00100  sync_group
00007c  fe8007e0  vmmov mr1, r15
000080  fe900720  vmmovh mr1, r15
000084  d7170000  jal 188
000088  fe8007e0  vmmov mr1, r15
00008c  fe900720  vmmovh mr1, r15
000090  1f8a0eff  addli r20, sp, -128
000094  4a100002  vloads_mask16.mz vr0{mr1}, 0(zero)
000098  ca108002  vloads_mask16.mz vr1{mr1}, 64(zero)
00009c  46000a02  vstore.mz vr0{mr1}, 0(r20)
0000a0  46041a02  vstore.mz vr1{mr1}, 64(r20)
0000a4  00a00100  mfence { lm, sm }
0000a8  00d00100  sync_group
0000ac  97a01000  xor r1, r1, r1
0000b0  1f8f0e00  addli r30, sp, 0
0000b4  d7170000  jal 188
0000b8  00400000  trap
0000bc  9f8e8efd  addli sp, sp, -320
0000c0  9f100000  addli r1, zero, 1
0000c4  00310002  core_id r2
0000c8  1f8f8e01  addli r30, sp, 192
0000cc  7dc00000  xsignal_mode_cfg r1
0000d0  37600100  beq r2, zero, 24
0000d4  abf0ffff  lui r1, 1048575
0000d8  9b90f0ff  ori r1, r1, 4095
0000dc  80a10004  csr_set csr3, r1
0000e0  00d00100  sync_group
0000e4  5b170000  j 184
0000e8  9f210000  addli r3, zero, 2
0000ec  fdd00000  uni_sram_cfg r1, r1
0000f0  2bf2ffff  lui r4, 1048575
0000f4  1d800100  lock zero, r3
0000f8  8d000020  ew_cfg r1, zero, zero, 16
0000fc  9b10f2ff  ori r1, r4, 4095
000100  1d900100  unlock r3
000104  9f610000  addli r3, zero, 6
000108  80a10004  csr_set csr3, r1
00010c  9f601000  addli r1, zero, 14
000110  00d00100  sync_group
000114  7d800000  xsignal r1, 0
000118  7d800100  xsignal r3, 0
00011c  7d800100  xsignal r3, 0
000120  7d800100  xsignal r3, 0
000124  7d800100  xsignal r3, 0
000128  7d800100  xsignal r3, 0
00012c  7d800100  xsignal r3, 0
000130  7d800100  xsignal r3, 0
000134  7d800100  xsignal r3, 0
000138  7d800100  xsignal r3, 0
00013c  7d800100  xsignal r3, 0
000140  7d800100  xsignal r3, 0
000144  7d800100  xsignal r3, 0
000148  9f400000  addli r1, zero, 4
00014c  9f311000  addli r3, zero, 11
000150  7d800000  xsignal r1, 0
000154  7d800000  xsignal r1, 0
000158  7d800000  xsignal r1, 0
00015c  7d800100  xsignal r3, 0
000160  7d800100  xsignal r3, 0
000164  7d800100  xsignal r3, 0
000168  7d800100  xsignal r3, 0
00016c  7d800100  xsignal r3, 0
000170  7d800100  xsignal r3, 0
000174  7d800100  xsignal r3, 0
000178  7d800100  xsignal r3, 0
00017c  7d800100  xsignal r3, 0
000180  7d800100  xsignal r3, 0
000184  9f101000  addli r1, zero, 9
000188  9f112000  addli r3, zero, 17
00018c  7d800000  xsignal r1, 0
000190  7d800000  xsignal r1, 0
000194  7d800000  xsignal r1, 0
000198  7d800100  xsignal r3, 0
00019c  e3408f00  loadli.w r1,  68(r30)
0001a0  e3019f00  loadli.w r3,  72(r30)
0001a4  80d20002  load_param_i r5, 1
0001a8  63429f00  loadli.w r4,  76(r30)
0001ac  8b901120  mul.s r1, r3, r1
0001b0  9f810200  addli r3, r5, 0
0001b4  8b914050  fmac.s r3, r1, r4
0001b8  0b924020  mul.s r4, r1, r4
0001bc  9ff1f1ff  addli r3, r3, -1
0001c0  8b915130  div.s r3, r3, r5
0001c4  80520002  load_param_i r5, 0
0001c8  8b905120  mul.s r1, r3, r5
0001cc  8b915150  fmac.s r3, r3, r5
0001d0  8b914140  min.s r3, r3, r4
0001d4  4baa1102  ble.s r3, r1, 1672
0001d8  e3076f00  loadli.w r15,  48(r30)
0001dc  33990028  sext_int2long r[19:20], r1
0001e0  1f018000  addli r2, zero, 64
0001e4  63456f00  loadli.w r10,  52(r30)
0001e8  e3455f00  loadli.w r11,  44(r30)
0001ec  b3960128  sext_int2long r[14:15], r3
0001f0  e3038f00  loadli.w r7,  64(r30)
0001f4  e3047f00  loadli.w r9,  56(r30)
0001f8  63447f00  loadli.w r8,  60(r30)
0001fc  9f610000  addli r3, zero, 6
000200  63065f00  loadli.w r12,  40(r30)
000204  1f020000  addli r4, zero, 0
000208  9f020000  addli r5, zero, 0
00020c  1f030000  addli r6, zero, 0
000210  1f7e0000  addli r28, zero, 7
000214  1f0d0000  addli r26, zero, 0
000218  7338dff6  store.d r[14:15], -144(r30)
00021c  9ff07700  addli r1, r15, 63
000220  b3160528  sext_int2long r[14:15], r10
000224  e7461ffe  storeli.w r1, -148(r30)
000228  8b902030  div.s r1, r1, r2
00022c  7330dff6  store.d r[14:15], -160(r30)
000230  b3960428  sext_int2long r[14:15], r9
000234  00310002  core_id r2
000238  97b63602  sll.d r[14:15], r[14:15], r3
00023c  7338dffe  store.d r[14:15], -16(r30)
000240  33160628  sext_int2long r[13:14], r12
000244  e74f1ffe  storeli.w r1, -4(r30)
000248  9b302500  slli r1, r10, 2
00024c  33950528  sext_int2long r[11:12], r11
000250  7330cff8  store.d r[13:14], -128(r30)
000254  e74d1ffe  storeli.w r1, -36(r30)
000258  733caff6  store.d r[11:12], -136(r30)
00025c  9bb02400  slli r1, r9, 2
000260  b3940328  sext_int2long r[10:11], r7
000264  9f150000  addli r11, zero, 1
000268  e70c1ffe  storeli.w r1, -56(r30)
00026c  73349ff4  store.d r[10:11], -184(r30)
000270  b3140428  sext_int2long r[10:11], r8
000274  9bb02300  slli r1, r7, 2
000278  733c9ff4  store.d r[10:11], -168(r30)
00027c  67441ffe  storeli.w r1, -188(r30)
000280  9b302400  slli r1, r8, 2
000284  9f440000  addli r9, zero, 4
000288  1f240000  addli r8, zero, 2
00028c  67451ffe  storeli.w r1, -172(r30)
000290  5b0e0000  j 112
000294  9f401000  addli r1, zero, 12
000298  9f032000  addli r7, zero, 16
00029c  e3014f00  loadli.w r3,  32(r30)
0002a0  9f440000  addli r9, zero, 4
0002a4  7d900000  xwait r1, 0
0002a8  e3404f00  loadli.w r1,  36(r30)
0002ac  7d900300  xwait r7, 0
0002b0  1d000400  lock zero, r8
0002b4  0d000002  ew_cfg zero, zero, zero, 1
0002b8  8d910000  ewcoeff_cfg r3, r1, zero, 0
0002bc  9f70f03b  addli r1, zero, 7679
0002c0  0d800004  ew_cfg zero, r1, zero, 2
0002c4  ab501000  lui r1, 261
0002c8  8d030006  ew_cfg r7, zero, zero, 3
0002cc  8d837326  ew_cfg r7, r7, r7, 19
0002d0  2d001000  dsmadd zero, zero, r1, 0
0002d4  9f501000  addli r1, zero, 13
0002d8  0d000026  ew_cfg zero, zero, zero, 19
0002dc  1d100400  unlock r8
0002e0  7d800000  xsignal r1, 0
0002e4  9f102000  addli r1, zero, 17
0002e8  7d800000  xsignal r1, 0
0002ec  6b590ffb  load.d r[19:20], -80(r30)
0002f0  6b560ff7  load.d r[13:14], -144(r30)
0002f4  27190900  addli.d r[19:20], r[19:20], 1
0002f8  9330c904  setlt.sl r1, r[19:20], r[13:14]
0002fc  b7850002  beq r1, zero, 1376
000300  1f078000  addli r14, zero, 64
000304  3b309100  bneq r2, r9, 12
000308  9f601000  addli r1, zero, 14
00030c  7d900000  xwait r1, 0
000310  e3409f00  loadli.w r1,  76(r30)
000314  e3019f00  loadli.w r3,  72(r30)
000318  73382ffb  store.d r[19:20], -80(r30)
00031c  8b101930  div.s r1, r18, r1
000320  9f830100  addli r7, r3, 0
000324  8b917038  mod.s r3, r1, r7
000328  8b907030  div.s r1, r1, r7
00032c  9f03e001  addli r7, zero, 240
000330  338a0328  zext_int2long r[21:22], r7
000334  33990028  sext_int2long r[19:20], r1
000338  33960128  sext_int2long r[13:14], r3
00033c  9f101000  addli r1, zero, 9
000340  173b1602  sll.d r[23:24], r[13:14], r1
000344  9f000004  addli r1, zero, 512
000348  0b3c4921  mul.sl r[25:26], r[19:20], r[21:22]
00034c  27090a00  addli.d r[19:20], r[21:22], 0
000350  b3870028  zext_int2long r[16:17], r1
000354  e340dffe  loadli.w r1,  -148(r30)
000358  173a8b02  sll.d r[21:22], r[23:24], r8
00035c  2701ec01  addli.d r[3:4], r[25:26], 240
000360  a7040b04  addli.d r[10:11], r[23:24], 512
000364  73308ffd  store.d r[25:26], -64(r30)
000368  733c2ffb  store.d r[19:20], -72(r30)
00036c  73346ffb  store.d r[23:24], -88(r30)
000370  73344ff9  store.d r[21:22], -120(r30)
000374  7330fffa  store.d r[16:17], -96(r30)
000378  733c9ff8  store.d r[10:11], -104(r30)
00037c  73382ff8  store.d r[3:4], -112(r30)
000380  bf9de000  blt.s r1, r14, 868
000384  6b598f00  load.d r[19:20], 8(r30)
000388  6b560ff6  load.d r[13:14], -160(r30)
00038c  e3036f00  loadli.w r7,  48(r30)
000390  1f070000  addli r14, zero, 0
000394  8b284911  add.ul r[18:19], r[19:20], r[21:22]
000398  6b5a0ff8  load.d r[21:22], -128(r30)
00039c  0b36cc20  mul.sl r[13:14], r[25:26], r[13:14]
0003a0  73381ffd  store.d r[18:19], -48(r30)
0003a4  6b598ff7  load.d r[19:20], -136(r30)
0003a8  9f088000  addli r17, zero, 64
0003ac  8b304141  min.sl r[2:3], r[3:4], r[21:22]
0003b0  1f0a2000  addli r20, zero, 16
0003b4  9f0a0010  addli r21, zero, 2048
0003b8  0bb92441  min.sl r[19:20], r[10:11], r[19:20]
0003bc  8bb48049  max.sl r[10:11], r[2:3], r[25:26]
0003c0  0b396949  max.sl r[19:20], r[19:20], r[23:24]
0003c4  8bb48419  sub.sl r[10:11], r[10:11], r[25:26]
0003c8  8b306919  sub.sl r[2:3], r[19:20], r[23:24]
0003cc  73309ffe  store.d r[10:11], -32(r30)
0003d0  330b0028  zext_int2long r[23:24], zero
0003d4  0bb9f040  min.sl r[19:20], r[2:3], r[16:17]
0003d8  73341ffe  store.d r[2:3], -24(r30)
0003dc  eb508ffb  load.d r[2:3], -72(r30)
0003e0  abf70000  lui r15, 15
0003e4  0bbc1440  min.sl r[25:26], r[10:11], r[2:3]
0003e8  9b302900  slli r1, r18, 2
0003ec  9f440000  addli r9, zero, 4
0003f0  1f350000  addli r10, zero, 3
0003f4  00310002  core_id r2
0003f8  e74c1ffe  storeli.w r1, -52(r30)
0003fc  5b0d0000  j 104
000400  9f711900  addli r3, r18, 15
000404  1d000000  lock zero, zero
000408  1f080004  addli r16, zero, 512
00040c  01040000  ds_cfg r8, zero, 0
000410  9b81010f  andi r3, r3, 240
000414  01080002  ds_cfg r16, zero, 1
000418  8101001c  ds_cfg r3, zero, 14
00041c  0108001a  ds_cfg r16, zero, 13
000420  c1802d05  shuffle_coa r1, r27, r18, 2
000424  9f101000  addli r1, zero, 9
000428  1d100000  unlock zero
00042c  7d800000  xsignal r1, 0
000430  9f201000  addli r1, zero, 10
000434  7d800000  xsignal r1, 0
000438  6b590fff  load.d r[19:20], -16(r30)
00043c  e340ffff  loadli.w r1,  -4(r30)
000440  1f120200  addli r4, r4, 1
000444  9f920200  addli r5, r5, 1
000448  1f130300  addli r6, r6, 1
00044c  1f1d0d00  addli r26, r26, 1
000450  1f170700  addli r14, r14, 1
000454  27068600  addli.d r[13:14], r[13:14], 64
000458  9f8383ff  addli r7, r7, -64
00045c  0b2b2b11  add.ul r[23:24], r[23:24], r[19:20]
000460  373a1700  beq r14, r1, 652
000464  9f411000  addli r3, zero, 12
000468  9b306700  slli r1, r14, 6
00046c  8b99a238  mod.s r19, r5, r10
000470  0b193238  mod.s r18, r4, r3
000474  e3016f00  loadli.w r3,  48(r30)
000478  8b911118  sub.s r3, r3, r1
00047c  ab800700  lui r1, 120
000480  0b980148  max.s r16, r3, zero
000484  8b90f950  fmac.s r1, r19, r15
000488  0b19f920  mul.s r18, r18, r15
00048c  0b181841  min.s r16, r16, r17
000490  3b42b100  bneq r2, r11, 144
000494  eb590ffe  load.d r[20:21], -32(r30)
000498  7d900400  xwait r9, 0
00049c  a3f9090f  setlti.d r19, r[20:21], 240
0004a0  3bb00900  bneq r19, zero, 12
0004a4  9f797000  addli r19, zero, 63
0004a8  bfa03900  blt.s r19, r3, 40
0004ac  1d000400  lock zero, r8
0004b0  9f797000  addli r19, zero, 63
0004b4  0d000002  ew_cfg zero, zero, zero, 1
0004b8  0d100000  ewcoeff_cfg zero, zero, zero, 0
0004bc  0d800904  ew_cfg zero, r19, zero, 2
0004c0  9f09e001  addli r19, zero, 240
0004c4  8d090006  ew_cfg r19, zero, zero, 3
0004c8  cd300000  ssaux r1, 0
0004cc  1d100400  unlock r8
0004d0  eb5d0f00  load.d r[28:29], 0(r30)
0004d4  97398602  sll.d r[20:21], r[13:14], r8
0004d8  7d000400  xsignal r8, 0
0004dc  7d100400  xwait r8, 0
0004e0  1d800400  lock zero, r9
0004e4  9b3a2800  slli r21, r16, 2
0004e8  15000000  dma_cfg zero, zero, zero, 0
0004ec  8ba93d11  add.ul r[20:21], r[28:29], r[20:21]
0004f0  1f7e0000  addli r28, zero, 7
0004f4  15000a04  dma_cfg zero, r20, zero, 2
0004f8  95805907  dma_cfg r1, r19, r21, 3
0004fc  9f090002  addli r19, zero, 256
000500  9f0a0010  addli r21, zero, 2048
000504  1f0a2000  addli r20, zero, 16
000508  e340bfff  loadli.w r1,  -36(r30)
00050c  95898009  dma_cfg r19, r1, r24, 4
000510  35000000  dma_run zero
000514  1d900400  unlock r9
000518  7d000500  xsignal r10, 0
00051c  db0b0000  j 92
000520  3b618100  bneq r2, r8, 88
000524  9f690000  addli r19, zero, 6
000528  7d100500  xwait r10, 0
00052c  7d900900  xwait r19, 0
000530  b7700c00  beq r24, zero, 60
000534  9f0d8000  addli r27, zero, 64
000538  9f098000  addli r19, zero, 64
00053c  3fa0b100  blt.s r3, r11, 8
000540  9f090800  addli r19, r16, 0
000544  1ffa1900  addli r20, r19, 15
000548  1d000000  lock zero, zero
00054c  01040000  ds_cfg r8, zero, 0
000550  1b0a0a0f  andi r20, r20, 240
000554  810d0002  ds_cfg r27, zero, 1
000558  010a001c  ds_cfg r20, zero, 14
00055c  1f0a2000  addli r20, zero, 16
000560  010c001a  ds_cfg r24, zero, 13
000564  21993003  shuffle_batch r18, r1, r19, 1
000568  1d100000  unlock zero
00056c  9f500000  addli r1, zero, 5
000570  7d800400  xsignal r9, 0
000574  7d800000  xsignal r1, 0
000578  8b10ad38  mod.s r1, r26, r10
00057c  ab590a00  lui r19, 165
000580  9bb01001  slli r1, r1, 17
000584  8b9d3011  add.s r27, r1, r19
000588  3b21b100  bneq r2, r11, 72
00058c  6b598ffe  load.d r[19:20], -24(r30)
000590  1f181000  addli r16, zero, 9
000594  7d100800  xwait r16, 0
000598  a3700920  setlti.d r1, r[19:20], 512
00059c  3bb00000  bneq r1, zero, 12
0005a0  9f707000  addli r1, zero, 63
0005a4  bf903000  blt.s r1, r3, 36
0005a8  1d000400  lock zero, r8
0005ac  9f70f003  addli r1, zero, 511
0005b0  0d000002  ew_cfg zero, zero, zero, 1
0005b4  0d100000  ewcoeff_cfg zero, zero, zero, 0
0005b8  0d800004  ew_cfg zero, r1, zero, 2
0005bc  8d080006  ew_cfg r17, zero, zero, 3
0005c0  cd3d0000  ssaux r27, 0
0005c4  1d100400  unlock r8
0005c8  7d000e00  xsignal r28, 0
0005cc  dbcdffff  j -404
0005d0  9f201000  addli r1, zero, 10
0005d4  8b101338  mod.s r1, r6, r1
0005d8  9bb01001  slli r1, r1, 17
0005dc  3731c101  beq r2, r28, 76
0005e0  9f610000  addli r3, zero, 6
0005e4  bb113100  bneq r2, r3, 100
0005e8  7d100e00  xwait r28, 0
0005ec  eb500ffd  load.d r[2:3], -48(r30)
0005f0  17398b02  sll.d r[19:20], r[23:24], r8
0005f4  1d800400  lock zero, r9
0005f8  15000000  dma_cfg zero, zero, zero, 0
0005fc  0ba92011  add.ul r[19:20], r[2:3], r[19:20]
000600  00310002  core_id r2
000604  15800904  dma_cfg zero, r19, zero, 2
000608  e3409fff  loadli.w r1,  -52(r30)
00060c  950d1906  dma_cfg r27, r18, r1, 3
000610  e3009fff  loadli.w r1,  -56(r30)
000614  958a0009  dma_cfg r21, r1, r16, 4
000618  35000000  dma_run zero
00061c  1d900400  unlock r9
000620  9f001000  addli r1, zero, 8
000624  5bc2ffff  j -496
000628  1f091000  addli r18, zero, 8
00062c  9f391000  addli r19, zero, 11
000630  7d100900  xwait r18, 0
000634  1f098000  addli r18, zero, 64
000638  7d900900  xwait r19, 0
00063c  3f97b1fe  blt.s r3, r11, -572
000640  1f090800  addli r18, r16, 0
000644  dbb7ffff  j -580
000648  bb4791fe  bneq r2, r9, -528
00064c  8b910348  max.s r3, r7, zero
000650  9f590000  addli r19, zero, 5
000654  8b911141  min.s r3, r3, r17
000658  7d900900  xwait r19, 0
00065c  9b392800  slli r19, r16, 2
000660  9bb18100  slli r3, r3, 8
000664  9ff97900  addli r19, r19, 63
000668  9f81811f  addli r3, r3, 4032
00066c  9bcd6900  srli r27, r19, 6
000670  9f291000  addli r19, zero, 10
000674  9781f100  and r3, r3, r15
000678  7d900900  xwait r19, 0
00067c  b7400700  beq r14, zero, 48
000680  37510c00  beq r24, zero, 84
000684  9f090000  addli r19, zero, 0
000688  1d800500  lock zero, r11
00068c  89088801  mm_cfg r17, r16, r24, 0
000690  890dba04  mm_cfg r27, r20, r11, 2
000694  a9191910  mm_acc r19, r18, r1, 8
000698  9f890902  addli r19, r19, 256
00069c  8b903010  add.s r1, r1, r3
0006a0  1d900500  unlock r11
0006a4  bb9f59ff  bneq r19, r21, -28
0006a8  db050000  j 44
0006ac  b7200c00  beq r24, zero, 40
0006b0  9f090000  addli r19, zero, 0
0006b4  1d800500  lock zero, r11
0006b8  89088801  mm_cfg r17, r16, r24, 0
0006bc  890dba04  mm_cfg r27, r20, r11, 2
0006c0  a9091910  mm r19, r18, r1, 8
0006c4  9f890902  addli r19, r19, 256
0006c8  8b903010  add.s r1, r1, r3
0006cc  1d900500  unlock r11
0006d0  bb9f59ff  bneq r19, r21, -28
0006d4  9f600000  addli r1, zero, 6
0006d8  7d800000  xsignal r1, 0
0006dc  9f301000  addli r1, zero, 11
0006e0  dbaaffff  j -684
0006e4  9f440000  addli r9, zero, 4
0006e8  00310002  core_id r2
0006ec  3b309100  bneq r2, r9, 12
0006f0  9f401000  addli r1, zero, 12
0006f4  7d800000  xsignal r1, 0
0006f8  6b560ff8  load.d r[13:14], -128(r30)
0006fc  eb500ff9  load.d r[2:3], -112(r30)
000700  6b598ff7  load.d r[19:20], -136(r30)
000704  eb548ff9  load.d r[10:11], -104(r30)
000708  6b5b0ffc  load.d r[23:24], -64(r30)
00070c  6b578ffa  load.d r[15:16], -88(r30)
000710  0bb6c040  min.sl r[13:14], r[2:3], r[13:14]
000714  0bb92441  min.sl r[19:20], r[10:11], r[19:20]
000718  00310002  core_id r2
00071c  0b3ae948  max.sl r[21:22], r[19:20], r[15:16]
000720  0b366649  max.sl r[13:14], r[13:14], r[23:24]
000724  0b396619  sub.sl r[19:20], r[13:14], r[23:24]
000728  6b568ffb  load.d r[13:14], -72(r30)
00072c  0b3cea18  sub.sl r[25:26], r[21:22], r[15:16]
000730  6b570ffa  load.d r[15:16], -96(r30)
000734  0b36c940  min.sl r[13:14], r[19:20], r[13:14]
000738  0b3bec40  min.sl r[23:24], r[25:26], r[15:16]
00073c  bb42b100  bneq r2, r11, 176
000740  a3700c20  setlti.d r1, r[25:26], 512
000744  9f112000  addli r3, zero, 17
000748  7d900100  xwait r3, 0
00074c  3bd00000  bneq r1, zero, 20
000750  9f70d001  addli r1, zero, 239
000754  338a0028  zext_int2long r[21:22], r1
000758  93302a05  setlt.sl r1, r[21:22], r[19:20]
00075c  bbb00000  bneq r1, zero, 44
000760  1d000400  lock zero, r8
000764  9f70f003  addli r1, zero, 511
000768  0d000002  ew_cfg zero, zero, zero, 1
00076c  0d100000  ewcoeff_cfg zero, zero, zero, 0
000770  0d800004  ew_cfg zero, r1, zero, 2
000774  9f00e001  addli r1, zero, 240
000778  8d000006  ew_cfg r1, zero, zero, 3
00077c  ab501000  lui r1, 261
000780  cd300000  ssaux r1, 0
000784  1d100400  unlock r8
000788  6b598ff5  load.d r[19:20], -168(r30)
00078c  6b5a0ffc  load.d r[21:22], -64(r30)
000790  9f701000  addli r1, zero, 15
000794  9f440000  addli r9, zero, 4
000798  ab511000  lui r3, 261
00079c  7d800000  xsignal r1, 0
0007a0  7d900000  xwait r1, 0
0007a4  1d800400  lock zero, r9
0007a8  9b302b00  slli r1, r22, 2
0007ac  0b392a21  mul.sl r[19:20], r[21:22], r[19:20]
0007b0  6b5a0f01  load.d r[21:22], 16(r30)
0007b4  17398902  sll.d r[19:20], r[19:20], r8
0007b8  0b292a11  add.ul r[19:20], r[21:22], r[19:20]
0007bc  6b5a8ff8  load.d r[21:22], -120(r30)
0007c0  15000000  dma_cfg zero, zero, zero, 0
0007c4  0b294911  add.ul r[19:20], r[19:20], r[21:22]
0007c8  15800904  dma_cfg zero, r19, zero, 2
0007cc  95011906  dma_cfg r3, r18, r1, 3
0007d0  9f010010  addli r3, zero, 2048
0007d4  e340affe  loadli.w r1,  -172(r30)
0007d8  9581c008  dma_cfg r3, r1, r12, 4
0007dc  35000000  dma_run zero
0007e0  1d900400  unlock r9
0007e4  9f002000  addli r1, zero, 16
0007e8  5b60ffff  j -1280
0007ec  9f500000  addli r1, zero, 5
0007f0  b71a11fc  beq r2, r1, -1372
0007f4  9f440000  addli r9, zero, 4
0007f8  bb5b01fc  bneq r2, zero, -1292
0007fc  6b598ff4  load.d r[19:20], -184(r30)
000800  6b5a0ffc  load.d r[21:22], -64(r30)
000804  9f501000  addli r1, zero, 13
000808  9f530000  addli r7, zero, 5
00080c  9f010010  addli r3, zero, 2048
000810  7d900000  xwait r1, 0
000814  1d800300  lock zero, r7
000818  9b302b00  slli r1, r22, 2
00081c  0b392a21  mul.sl r[19:20], r[21:22], r[19:20]
000820  6b5a8f01  load.d r[21:22], 24(r30)
000824  15000000  dma_cfg zero, zero, zero, 0
000828  17398902  sll.d r[19:20], r[19:20], r8
00082c  0b292a11  add.ul r[19:20], r[21:22], r[19:20]
000830  6b5a8ff8  load.d r[21:22], -120(r30)
000834  15800502  dma_cfg zero, r11, zero, 1
000838  0b294911  add.ul r[19:20], r[19:20], r[21:22]
00083c  95090004  dma_cfg r19, zero, zero, 2
000840  15091006  dma_cfg r18, zero, r1, 3
000844  e3408ffe  loadli.w r1,  -188(r30)
000848  9580c108  dma_cfg r1, r3, r12, 4
00084c  9f601000  addli r1, zero, 14
000850  35000000  dma_run zero
000854  1d900300  unlock r7
000858  5b52ffff  j -1392
00085c  7d000000  xsignal zero, 0
000860  bb600100  bneq r2, zero, 56
000864  9f200000  addli r1, zero, 2
000868  7d100000  xwait zero, 0
00086c  7d100000  xwait zero, 0
000870  7d100000  xwait zero, 0
000874  7d100000  xwait zero, 0
000878  7d100000  xwait zero, 0
00087c  7d100000  xwait zero, 0
000880  7d100000  xwait zero, 0
000884  7d100000  xwait zero, 0
000888  1d800000  lock zero, r1
00088c  0d000020  ew_cfg zero, zero, zero, 16
000890  1d900000  unlock r1
000894  7d400000  xsignal_mode_cfg zero
000898  9f8e8e01  addli sp, sp, 192
00089c  00a00300  mfence { lm, sm, gm }
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
000acc  00100000  exit
000ad0  00100000  exit
000ad4  00100000  exit
000ad8  00100000  exit
000adc  00100000  exit
000ae0  00100000  exit
