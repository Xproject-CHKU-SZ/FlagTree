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
00005c  9f495000  addli r19, zero, 44
000060  1f8a8eff  addli r20, sp, -64
000064  ff494201  bl_gm2lm r19, r20, 0(r[5:6])
000068  00a00200  mfence { lm, gm }
00006c  abfa0000  lui r21, 15
000070  9b9afaff  ori r21, r21, 4095
000074  80a10a04  csr_set csr3, r21
000078  00d00100  sync_group
00007c  fe8007e0  vmmov mr1, r15
000080  fe900720  vmmovh mr1, r15
000084  d7160000  jal 180
000088  fe8007e0  vmmov mr1, r15
00008c  fe900720  vmmovh mr1, r15
000090  1f8a8eff  addli r20, sp, -64
000094  4a100002  vloads_mask16.mz vr0{mr1}, 0(zero)
000098  46000a02  vstore.mz vr0{mr1}, 0(r20)
00009c  00a00100  mfence { lm, sm }
0000a0  00d00100  sync_group
0000a4  97a01000  xor r1, r1, r1
0000a8  1f8f0e00  addli r30, sp, 0
0000ac  d7160000  jal 180
0000b0  00400000  trap
0000b4  9f8ecefe  addli sp, sp, -160
0000b8  9f100000  addli r1, zero, 1
0000bc  80330002  core_id r7
0000c0  1f8fce00  addli r30, sp, 96
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7900300  beq r7, zero, 36
0000cc  2bf1ffff  lui r2, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b10f1ff  ori r1, r2, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  5b190000  j 200
0000ec  1f220000  addli r4, zero, 2
0000f0  fdd00000  uni_sram_cfg r1, r1
0000f4  9f420000  addli r5, zero, 4
0000f8  6b518f01  load.d r[3:4], 24(r30)
0000fc  1f030020  addli r6, zero, 4096
000100  1d000200  lock zero, r4
000104  8d000020  ew_cfg r1, zero, zero, 16
000108  1d100200  unlock r4
00010c  1d800200  lock zero, r5
000110  15000000  dma_cfg zero, zero, zero, 0
000114  15800104  dma_cfg zero, r3, zero, 2
000118  15006106  dma_cfg zero, r2, r6, 3
00011c  1f014000  addli r2, zero, 32
000120  9f010008  addli r3, zero, 1024
000124  15001008  dma_cfg zero, zero, r1, 4
000128  35000000  dma_run zero
00012c  1d900200  unlock r5
000130  7d800000  xsignal r1, 0
000134  7d900000  xwait r1, 0
000138  1d000000  lock zero, zero
00013c  01020000  ds_cfg r4, zero, 0
000140  01000002  ds_cfg zero, zero, 1
000144  01000016  ds_cfg zero, zero, 11
000148  0101001a  ds_cfg r2, zero, 13
00014c  1f411000  addli r2, zero, 12
000150  8101001c  ds_cfg r3, zero, 14
000154  21133008  shuffle_batch r6, zero, r3, 4
000158  1d100000  unlock zero
00015c  7d800000  xsignal r1, 0
000160  7d900000  xwait r1, 0
000164  1d000200  lock zero, r4
000168  ab100100  lui r1, 17
00016c  0d200300  ewtable_cfg r6, 0
000170  0da00002  ewtable_cfg r1, 1
000174  abf0ffff  lui r1, 1048575
000178  1d100200  unlock r4
00017c  7d000000  xsignal zero, 0
000180  7d100000  xwait zero, 0
000184  9b90f0ff  ori r1, r1, 4095
000188  80a10004  csr_set csr3, r1
00018c  9f600000  addli r1, zero, 6
000190  00d00100  sync_group
000194  7d800200  xsignal r5, 0
000198  7d800000  xsignal r1, 0
00019c  7d000100  xsignal r2, 0
0001a0  9f601000  addli r1, zero, 14
0001a4  1f711000  addli r2, zero, 15
0001a8  7d800000  xsignal r1, 0
0001ac  7d000100  xsignal r2, 0
0001b0  e3004f00  loadli.w r1,  32(r30)
0001b4  63414f00  loadli.w r2,  36(r30)
0001b8  00d20002  load_param_i r4, 1
0001bc  e3015f00  loadli.w r3,  40(r30)
0001c0  8b101120  mul.s r1, r2, r1
0001c4  1f010200  addli r2, r4, 0
0001c8  0b913050  fmac.s r2, r1, r3
0001cc  8b913020  mul.s r3, r1, r3
0001d0  1f71f1ff  addli r2, r2, -1
0001d4  0b114130  div.s r2, r2, r4
0001d8  00520002  load_param_i r4, 0
0001dc  8b104120  mul.s r1, r2, r4
0001e0  0b114150  fmac.s r2, r2, r4
0001e4  0b113140  min.s r2, r2, r3
0001e8  cb571106  ble.s r2, r1, 3572
0001ec  b3970028  sext_int2long r[16:17], r1
0001f0  abf0ff7f  lui r1, 524287
0001f4  33110128  sext_int2long r[3:4], r2
0001f8  1f630000  addli r6, zero, 6
0001fc  9f540000  addli r9, zero, 5
000200  ab084000  lui r17, 1024
000204  1f371000  addli r14, zero, 11
000208  9f2a0000  addli r21, zero, 2
00020c  9b90f0ff  ori r1, r1, 4095
000210  73342ffa  store.d r[3:4], -88(r30)
000214  2bf17fff  lui r2, 1046527
000218  9f010008  addli r3, zero, 1024
00021c  e74d1ffe  storeli.w r1, -36(r30)
000220  ab700000  lui r1, 7
000224  338d0128  zext_int2long r[27:28], r3
000228  9b90f0ff  ori r1, r1, 4095
00022c  7330affd  store.d r[27:28], -64(r30)
000230  e74e1ffe  storeli.w r1, -20(r30)
000234  abf07f7f  lui r1, 522239
000238  9b90f0ff  ori r1, r1, 4095
00023c  e74f1ffe  storeli.w r1, -4(r30)
000240  ab800d00  lui r1, 216
000244  9b90d0b4  ori r1, r1, 2893
000248  674a1ffe  storeli.w r1, -92(r30)
00024c  9b10f1ff  ori r1, r2, 4095
000250  670a1ffe  storeli.w r1, -96(r30)
000254  b3000028  zext_int2long r[2:3], zero
000258  73381ffa  store.d r[2:3], -80(r30)
00025c  db080000  j 68
000260  9f301000  addli r1, zero, 11
000264  00200100  mfence { sm }
000268  1f371000  addli r14, zero, 11
00026c  80330002  core_id r7
000270  1f630000  addli r6, zero, 6
000274  9f540000  addli r9, zero, 5
000278  9f2a0000  addli r21, zero, 2
00027c  7d800000  xsignal r1, 0
000280  9f601000  addli r1, zero, 14
000284  7d800000  xsignal r1, 0
000288  eb578ffb  load.d r[16:17], -72(r30)
00028c  6b5d0ffc  load.d r[27:28], -64(r30)
000290  eb508ffa  load.d r[2:3], -88(r30)
000294  a7970700  addli.d r[16:17], r[16:17], 1
000298  93b01704  setlt.sl r1, r[16:17], r[2:3]
00029c  37850006  beq r1, zero, 3392
0002a0  e3005f00  loadli.w r1,  40(r30)
0002a4  63414f00  loadli.w r2,  36(r30)
0002a8  9f111000  addli r3, zero, 9
0002ac  6b550f00  load.d r[11:12], 0(r30)
0002b0  733cfffa  store.d r[16:17], -72(r30)
0002b4  8b901730  div.s r1, r15, r1
0002b8  8b902030  div.s r1, r1, r2
0002bc  b3990028  sext_int2long r[20:21], r1
0002c0  97b13902  sll.d r[4:5], r[20:21], r3
0002c4  8b213510  add.ul r[4:5], r[11:12], r[4:5]
0002c8  73343ffc  store.d r[4:5], -56(r30)
0002cc  9f110000  addli r3, zero, 1
0002d0  b7b93300  beq r7, r3, 620
0002d4  bbd96300  bneq r7, r6, 628
0002d8  1f460000  addli r12, zero, 4
0002dc  9f120000  addli r5, zero, 1
0002e0  1f350000  addli r10, zero, 3
0002e4  1f790000  addli r18, zero, 7
0002e8  9f011000  addli r3, zero, 8
0002ec  1f1b1000  addli r22, zero, 9
0002f0  1f271000  addli r14, zero, 10
0002f4  9f301000  addli r1, zero, 11
0002f8  9f451000  addli r11, zero, 12
0002fc  9f5b1000  addli r23, zero, 13
000300  9f671000  addli r15, zero, 14
000304  9f0c2000  addli r25, zero, 16
000308  1f1e2000  addli r28, zero, 17
00030c  1f783000  addli r16, zero, 31
000310  1f048000  addli r8, zero, 64
000314  1f020001  addli r4, zero, 128
000318  9f030008  addli r7, zero, 1024
00031c  1f0c0004  addli r24, zero, 512
000320  9f060000  addli r13, zero, 0
000324  7d100600  xwait r12, 0
000328  1d800400  lock zero, r9
00032c  15000014  dma_cfg zero, zero, zero, 10
000330  15005014  dma_cfg zero, zero, r5, 10
000334  15005015  dma_cfg zero, zero, r21, 10
000338  1500a014  dma_cfg zero, zero, r10, 10
00033c  1500c014  dma_cfg zero, zero, r12, 10
000340  15009014  dma_cfg zero, zero, r9, 10
000344  15006014  dma_cfg zero, zero, r6, 10
000348  15002015  dma_cfg zero, zero, r18, 10
00034c  15003014  dma_cfg zero, zero, r3, 10
000350  15006015  dma_cfg zero, zero, r22, 10
000354  1500e014  dma_cfg zero, zero, r14, 10
000358  15001014  dma_cfg zero, zero, r1, 10
00035c  9f701000  addli r1, zero, 15
000360  1500b014  dma_cfg zero, zero, r11, 10
000364  15007015  dma_cfg zero, zero, r23, 10
000368  1500f014  dma_cfg zero, zero, r15, 10
00036c  15001014  dma_cfg zero, zero, r1, 10
000370  9f202000  addli r1, zero, 18
000374  15009015  dma_cfg zero, zero, r25, 10
000378  1500c015  dma_cfg zero, zero, r28, 10
00037c  15001014  dma_cfg zero, zero, r1, 10
000380  9f302000  addli r1, zero, 19
000384  15001014  dma_cfg zero, zero, r1, 10
000388  9f402000  addli r1, zero, 20
00038c  15001014  dma_cfg zero, zero, r1, 10
000390  9f502000  addli r1, zero, 21
000394  15001014  dma_cfg zero, zero, r1, 10
000398  9f602000  addli r1, zero, 22
00039c  15001014  dma_cfg zero, zero, r1, 10
0003a0  9f702000  addli r1, zero, 23
0003a4  15001014  dma_cfg zero, zero, r1, 10
0003a8  9f003000  addli r1, zero, 24
0003ac  15001014  dma_cfg zero, zero, r1, 10
0003b0  9f103000  addli r1, zero, 25
0003b4  15001014  dma_cfg zero, zero, r1, 10
0003b8  9f203000  addli r1, zero, 26
0003bc  15001014  dma_cfg zero, zero, r1, 10
0003c0  9f303000  addli r1, zero, 27
0003c4  15001014  dma_cfg zero, zero, r1, 10
0003c8  9f403000  addli r1, zero, 28
0003cc  15001014  dma_cfg zero, zero, r1, 10
0003d0  9f503000  addli r1, zero, 29
0003d4  15001014  dma_cfg zero, zero, r1, 10
0003d8  9f603000  addli r1, zero, 30
0003dc  15001014  dma_cfg zero, zero, r1, 10
0003e0  15000015  dma_cfg zero, zero, r16, 10
0003e4  95820200  dma_cfg r5, r5, zero, 0
0003e8  95020002  dma_cfg r5, zero, zero, 1
0003ec  15000004  dma_cfg zero, zero, zero, 2
0003f0  15008006  dma_cfg zero, zero, r8, 3
0003f4  15023008  dma_cfg r4, zero, r3, 4
0003f8  9503500a  dma_cfg r7, zero, r5, 5
0003fc  15000010  dma_cfg zero, zero, zero, 8
000400  35000000  dma_run zero
000404  1500500a  dma_cfg zero, zero, r5, 5
000408  15000010  dma_cfg zero, zero, zero, 8
00040c  1d900400  unlock r9
000410  1d000600  lock zero, r12
000414  95820200  dma_cfg r5, r5, zero, 0
000418  eb508ffc  load.d r[2:3], -56(r30)
00041c  15000104  dma_cfg zero, r2, zero, 2
000420  15848006  dma_cfg r8, r1, r8, 3
000424  9f301000  addli r1, zero, 11
000428  15023408  dma_cfg r4, r8, r3, 4
00042c  95035c0a  dma_cfg r7, r24, r5, 5
000430  15000010  dma_cfg zero, zero, zero, 8
000434  35000000  dma_run zero
000438  1500500a  dma_cfg zero, zero, r5, 5
00043c  15000010  dma_cfg zero, zero, zero, 8
000440  1d100600  unlock r12
000444  1d800400  lock zero, r9
000448  15000014  dma_cfg zero, zero, zero, 10
00044c  15005014  dma_cfg zero, zero, r5, 10
000450  15005015  dma_cfg zero, zero, r21, 10
000454  1500a014  dma_cfg zero, zero, r10, 10
000458  1500c014  dma_cfg zero, zero, r12, 10
00045c  1f860600  addli r12, r13, 0
000460  15009014  dma_cfg zero, zero, r9, 10
000464  15006014  dma_cfg zero, zero, r6, 10
000468  15002015  dma_cfg zero, zero, r18, 10
00046c  15003014  dma_cfg zero, zero, r3, 10
000470  15006015  dma_cfg zero, zero, r22, 10
000474  1500e014  dma_cfg zero, zero, r14, 10
000478  1f371000  addli r14, zero, 11
00047c  15001014  dma_cfg zero, zero, r1, 10
000480  9f701000  addli r1, zero, 15
000484  1500b014  dma_cfg zero, zero, r11, 10
000488  15007015  dma_cfg zero, zero, r23, 10
00048c  1500f014  dma_cfg zero, zero, r15, 10
000490  15001014  dma_cfg zero, zero, r1, 10
000494  9f202000  addli r1, zero, 18
000498  15009015  dma_cfg zero, zero, r25, 10
00049c  1500c015  dma_cfg zero, zero, r28, 10
0004a0  15001014  dma_cfg zero, zero, r1, 10
0004a4  9f302000  addli r1, zero, 19
0004a8  15001014  dma_cfg zero, zero, r1, 10
0004ac  9f402000  addli r1, zero, 20
0004b0  15001014  dma_cfg zero, zero, r1, 10
0004b4  9f502000  addli r1, zero, 21
0004b8  15001014  dma_cfg zero, zero, r1, 10
0004bc  9f602000  addli r1, zero, 22
0004c0  15001014  dma_cfg zero, zero, r1, 10
0004c4  9f702000  addli r1, zero, 23
0004c8  15001014  dma_cfg zero, zero, r1, 10
0004cc  9f003000  addli r1, zero, 24
0004d0  15001014  dma_cfg zero, zero, r1, 10
0004d4  9f103000  addli r1, zero, 25
0004d8  15001014  dma_cfg zero, zero, r1, 10
0004dc  9f203000  addli r1, zero, 26
0004e0  15001014  dma_cfg zero, zero, r1, 10
0004e4  9f303000  addli r1, zero, 27
0004e8  15001014  dma_cfg zero, zero, r1, 10
0004ec  9f403000  addli r1, zero, 28
0004f0  15001014  dma_cfg zero, zero, r1, 10
0004f4  9f503000  addli r1, zero, 29
0004f8  15001014  dma_cfg zero, zero, r1, 10
0004fc  9f603000  addli r1, zero, 30
000500  15001014  dma_cfg zero, zero, r1, 10
000504  15000015  dma_cfg zero, zero, r16, 10
000508  95820200  dma_cfg r5, r5, zero, 0
00050c  95020002  dma_cfg r5, zero, zero, 1
000510  15000004  dma_cfg zero, zero, zero, 2
000514  15008006  dma_cfg zero, zero, r8, 3
000518  15023008  dma_cfg r4, zero, r3, 4
00051c  9503500a  dma_cfg r7, zero, r5, 5
000520  15000010  dma_cfg zero, zero, zero, 8
000524  35000000  dma_run zero
000528  1500500a  dma_cfg zero, zero, r5, 5
00052c  15000010  dma_cfg zero, zero, zero, 8
000530  1d900400  unlock r9
000534  7d800a00  xsignal r21, 0
000538  db020000  j 20
00053c  1f160000  addli r12, zero, 1
000540  7d100300  xwait r6, 0
000544  5b010000  j 8
000548  1f060000  addli r12, zero, 0
00054c  9f011000  addli r3, zero, 8
000550  97b93902  sll.d r[20:21], r[20:21], r3
000554  9f211000  addli r3, zero, 10
000558  8f90a971  mod.sl r[2:3], r[20:21], r[27:28]
00055c  a7f0f009  addli.d r[2:3], r[2:3], 1279
000560  97c13002  srl.d r[4:5], r[2:3], r3
000564  eb500ffb  load.d r[2:3], -80(r30)
000568  73303ffe  store.d r[4:5], -32(r30)
00056c  93a11100  seteq.d r3, r[4:5], r[2:3]
000570  1f020002  addli r4, zero, 256
000574  b3000228  zext_int2long r[2:3], r4
000578  73381ffe  store.d r[2:3], -16(r30)
00057c  3b9c0100  bneq r3, zero, 772
000580  9f110000  addli r3, zero, 1
000584  b3030028  zext_int2long r[8:9], zero
000588  73383ffd  store.d r[20:21], -48(r30)
00058c  338c0128  zext_int2long r[25:26], r3
000590  5b030000  j 24
000594  eb500ffe  load.d r[2:3], -32(r30)
000598  8ba37710  add.ul r[8:9], r[16:17], r[8:9]
00059c  93211c04  setlt.ul r3, r[25:26], r[2:3]
0005a0  338c0a28  zext_int2long r[25:26], r21
0005a4  37fb0100  beq r3, zero, 732
0005a8  8ba13311  add.ul r[4:5], r[8:9], r[20:21]
0005ac  eb500fff  load.d r[2:3], -16(r30)
0005b0  8f91a171  mod.sl r[4:5], r[4:5], r[27:28]
0005b4  8bb47018  sub.sl r[10:11], r[2:3], r[8:9]
0005b8  8b323d18  sub.sl r[6:7], r[27:28], r[4:5]
0005bc  8ba75440  min.ul r[16:17], r[10:11], r[6:7]
0005c0  375f06fe  beq r12, zero, -44
0005c4  9f550000  addli r11, zero, 5
0005c8  1f1a0000  addli r20, zero, 1
0005cc  1f390000  addli r18, zero, 3
0005d0  1f470000  addli r14, zero, 4
0005d4  eb508f00  load.d r[2:3], 8(r30)
0005d8  9bb22300  slli r5, r7, 2
0005dc  1f7d0000  addli r26, zero, 7
0005e0  9f081000  addli r17, zero, 8
0005e4  9f361000  addli r13, zero, 11
0005e8  9f5d1000  addli r27, zero, 13
0005ec  1f6e1000  addli r28, zero, 14
0005f0  9f791000  addli r19, zero, 15
0005f4  1f0b2000  addli r22, zero, 16
0005f8  9f7b3000  addli r23, zero, 31
0005fc  1f030008  addli r6, zero, 1024
000600  1d800500  lock zero, r11
000604  97b44103  sll.d r[10:11], r[4:5], r20
000608  9f810208  addli r3, r5, 1024
00060c  15000014  dma_cfg zero, zero, zero, 10
000610  15004015  dma_cfg zero, zero, r20, 10
000614  0ba29010  add.ul r[5:6], r[2:3], r[10:11]
000618  9f101000  addli r1, zero, 9
00061c  1f010001  addli r2, zero, 128
000620  1bb51700  slli r10, r15, 1
000624  15005015  dma_cfg zero, zero, r21, 10
000628  9f6a0000  addli r21, zero, 6
00062c  15002015  dma_cfg zero, zero, r18, 10
000630  8b942138  mod.s r9, r3, r2
000634  1500e014  dma_cfg zero, zero, r14, 10
000638  1500b014  dma_cfg zero, zero, r11, 10
00063c  15005015  dma_cfg zero, zero, r21, 10
000640  1500a015  dma_cfg zero, zero, r26, 10
000644  15001015  dma_cfg zero, zero, r17, 10
000648  15001014  dma_cfg zero, zero, r1, 10
00064c  9f201000  addli r1, zero, 10
000650  15001014  dma_cfg zero, zero, r1, 10
000654  9f401000  addli r1, zero, 12
000658  1500d014  dma_cfg zero, zero, r13, 10
00065c  15001014  dma_cfg zero, zero, r1, 10
000660  9f102000  addli r1, zero, 17
000664  1500b015  dma_cfg zero, zero, r27, 10
000668  1500c015  dma_cfg zero, zero, r28, 10
00066c  15003015  dma_cfg zero, zero, r19, 10
000670  15006015  dma_cfg zero, zero, r22, 10
000674  15001014  dma_cfg zero, zero, r1, 10
000678  9f202000  addli r1, zero, 18
00067c  15001014  dma_cfg zero, zero, r1, 10
000680  9f302000  addli r1, zero, 19
000684  15001014  dma_cfg zero, zero, r1, 10
000688  9f402000  addli r1, zero, 20
00068c  15001014  dma_cfg zero, zero, r1, 10
000690  9f502000  addli r1, zero, 21
000694  15001014  dma_cfg zero, zero, r1, 10
000698  9f602000  addli r1, zero, 22
00069c  15001014  dma_cfg zero, zero, r1, 10
0006a0  9f702000  addli r1, zero, 23
0006a4  15001014  dma_cfg zero, zero, r1, 10
0006a8  9f003000  addli r1, zero, 24
0006ac  15001014  dma_cfg zero, zero, r1, 10
0006b0  9f103000  addli r1, zero, 25
0006b4  15001014  dma_cfg zero, zero, r1, 10
0006b8  9f203000  addli r1, zero, 26
0006bc  15001014  dma_cfg zero, zero, r1, 10
0006c0  9f303000  addli r1, zero, 27
0006c4  15001014  dma_cfg zero, zero, r1, 10
0006c8  9f403000  addli r1, zero, 28
0006cc  15001014  dma_cfg zero, zero, r1, 10
0006d0  9f503000  addli r1, zero, 29
0006d4  15001014  dma_cfg zero, zero, r1, 10
0006d8  9f603000  addli r1, zero, 30
0006dc  15001014  dma_cfg zero, zero, r1, 10
0006e0  9f008000  addli r1, zero, 64
0006e4  15007015  dma_cfg zero, zero, r23, 10
0006e8  150a0a00  dma_cfg r20, r20, zero, 0
0006ec  150a0002  dma_cfg r20, zero, zero, 1
0006f0  15000004  dma_cfg zero, zero, zero, 2
0006f4  15031006  dma_cfg r6, zero, r1, 3
0006f8  15011009  dma_cfg r2, zero, r17, 4
0006fc  1503400b  dma_cfg r6, zero, r20, 5
000700  1bc31400  srli r6, r9, 1
000704  15000010  dma_cfg zero, zero, zero, 8
000708  35000000  dma_run zero
00070c  1500400b  dma_cfg zero, zero, r20, 5
000710  15000010  dma_cfg zero, zero, zero, 8
000714  0b936118  sub.s r6, r3, r6
000718  8b919118  sub.s r3, r3, r9
00071c  9f240000  addli r9, zero, 2
000720  1d900500  unlock r11
000724  1d000700  lock zero, r14
000728  1f038300  addli r6, r6, 64
00072c  150a0a00  dma_cfg r20, r20, zero, 0
000730  15800204  dma_cfg zero, r5, zero, 2
000734  15031206  dma_cfg r6, r4, r1, 3
000738  2bf3ff7f  lui r6, 524287
00073c  1bb22700  slli r4, r15, 2
000740  9ff23700  addli r5, r15, 31
000744  1b1303f8  ori r6, r6, 3968
000748  9bc25200  srli r5, r5, 5
00074c  17036200  and r6, r4, r6
000750  1b02e503  andi r4, r10, 62
000754  15815008  dma_cfg r2, r1, r5, 4
000758  17134300  or r6, r6, r4
00075c  1503450b  dma_cfg r6, r10, r20, 5
000760  15004010  dma_cfg zero, zero, r4, 8
000764  35000000  dma_run zero
000768  1500400b  dma_cfg zero, zero, r20, 5
00076c  15000010  dma_cfg zero, zero, zero, 8
000770  1d100700  unlock r14
000774  1d800500  lock zero, r11
000778  15000014  dma_cfg zero, zero, zero, 10
00077c  15004015  dma_cfg zero, zero, r20, 10
000780  15009014  dma_cfg zero, zero, r9, 10
000784  9f141000  addli r9, zero, 9
000788  15002015  dma_cfg zero, zero, r18, 10
00078c  1500e014  dma_cfg zero, zero, r14, 10
000790  1f371000  addli r14, zero, 11
000794  1500b014  dma_cfg zero, zero, r11, 10
000798  15005015  dma_cfg zero, zero, r21, 10
00079c  9f2a0000  addli r21, zero, 2
0007a0  1500a015  dma_cfg zero, zero, r26, 10
0007a4  15001015  dma_cfg zero, zero, r17, 10
0007a8  ab084000  lui r17, 1024
0007ac  15009014  dma_cfg zero, zero, r9, 10
0007b0  9f241000  addli r9, zero, 10
0007b4  15009014  dma_cfg zero, zero, r9, 10
0007b8  9f441000  addli r9, zero, 12
0007bc  1500d014  dma_cfg zero, zero, r13, 10
0007c0  15009014  dma_cfg zero, zero, r9, 10
0007c4  9f142000  addli r9, zero, 17
0007c8  1500b015  dma_cfg zero, zero, r27, 10
0007cc  6b5d0ffc  load.d r[27:28], -64(r30)
0007d0  1500c015  dma_cfg zero, zero, r28, 10
0007d4  15003015  dma_cfg zero, zero, r19, 10
0007d8  15006015  dma_cfg zero, zero, r22, 10
0007dc  15009014  dma_cfg zero, zero, r9, 10
0007e0  9f242000  addli r9, zero, 18
0007e4  15009014  dma_cfg zero, zero, r9, 10
0007e8  9f342000  addli r9, zero, 19
0007ec  15009014  dma_cfg zero, zero, r9, 10
0007f0  9f442000  addli r9, zero, 20
0007f4  15009014  dma_cfg zero, zero, r9, 10
0007f8  9f542000  addli r9, zero, 21
0007fc  15009014  dma_cfg zero, zero, r9, 10
000800  9f642000  addli r9, zero, 22
000804  15009014  dma_cfg zero, zero, r9, 10
000808  9f742000  addli r9, zero, 23
00080c  15009014  dma_cfg zero, zero, r9, 10
000810  9f043000  addli r9, zero, 24
000814  15009014  dma_cfg zero, zero, r9, 10
000818  9f143000  addli r9, zero, 25
00081c  15009014  dma_cfg zero, zero, r9, 10
000820  9f243000  addli r9, zero, 26
000824  15009014  dma_cfg zero, zero, r9, 10
000828  9f343000  addli r9, zero, 27
00082c  15009014  dma_cfg zero, zero, r9, 10
000830  9f443000  addli r9, zero, 28
000834  15009014  dma_cfg zero, zero, r9, 10
000838  9f543000  addli r9, zero, 29
00083c  15009014  dma_cfg zero, zero, r9, 10
000840  9f643000  addli r9, zero, 30
000844  15009014  dma_cfg zero, zero, r9, 10
000848  15007015  dma_cfg zero, zero, r23, 10
00084c  150a0a00  dma_cfg r20, r20, zero, 0
000850  150a0002  dma_cfg r20, zero, zero, 1
000854  15000004  dma_cfg zero, zero, zero, 2
000858  95011006  dma_cfg r3, zero, r1, 3
00085c  15015008  dma_cfg r2, zero, r5, 4
000860  1503400b  dma_cfg r6, zero, r20, 5
000864  15004010  dma_cfg zero, zero, r4, 8
000868  35000000  dma_run zero
00086c  1500400b  dma_cfg zero, zero, r20, 5
000870  eb590ffd  load.d r[20:21], -48(r30)
000874  15000010  dma_cfg zero, zero, zero, 8
000878  1d900500  unlock r11
00087c  5ba3ffff  j -744
000880  9f540000  addli r9, zero, 5
000884  37200600  beq r12, zero, 8
000888  7d800400  xsignal r9, 0
00088c  eb578ffb  load.d r[16:17], -72(r30)
000890  80330002  core_id r7
000894  1f630000  addli r6, zero, 6
000898  9f300000  addli r1, zero, 3
00089c  b7d51300  beq r7, r1, 372
0008a0  3beb9302  bneq r7, r9, 1752
0008a4  7d900a00  xwait r21, 0
0008a8  7d900400  xwait r9, 0
0008ac  1d800a00  lock zero, r21
0008b0  ab02803f  lui r5, 260096
0008b4  1f743000  addli r8, zero, 31
0008b8  9f001000  addli r1, zero, 8
0008bc  1f010008  addli r2, zero, 1024
0008c0  9f710000  addli r3, zero, 7
0008c4  1f521000  addli r4, zero, 13
0008c8  ab0500c1  lui r11, 790528
0008cc  1f761000  addli r12, zero, 15
0008d0  9f76f001  addli r13, zero, 255
0008d4  9f090020  addli r19, zero, 4096
0008d8  0d000002  ew_cfg zero, zero, zero, 1
0008dc  8d920200  ewcoeff_cfg r5, r5, zero, 0
0008e0  0d000404  ew_cfg zero, r8, zero, 2
0008e4  8d000006  ew_cfg r1, zero, zero, 3
0008e8  8d801026  ew_cfg r1, r1, r1, 19
0008ec  2d002000  dsmadd zero, zero, r2, 0
0008f0  1f310000  addli r2, zero, 3
0008f4  0d000026  ew_cfg zero, zero, zero, 19
0008f8  1d900a00  unlock r21
0008fc  7d000100  xsignal r2, 0
000900  7d000300  xsignal r6, 0
000904  7d900100  xwait r3, 0
000908  9f611000  addli r3, zero, 14
00090c  7d900100  xwait r3, 0
000910  1d800a00  lock zero, r21
000914  9f110000  addli r3, zero, 1
000918  0d000002  ew_cfg zero, zero, zero, 1
00091c  0d000404  ew_cfg zero, r8, zero, 2
000920  8d000006  ew_cfg r1, zero, zero, 3
000924  8d800026  ew_cfg r1, r1, zero, 19
000928  0d020014  ew_cfg r4, zero, zero, 10
00092c  63454fff  loadli.w r10,  -92(r30)
000930  8d8aa116  ew_cfg r21, r3, r10, 11
000934  2b85ff40  lui r10, 266232
000938  0d00201a  ew_cfg zero, zero, r2, 13
00093c  1f410000  addli r2, zero, 4
000940  8d05a11c  ew_cfg r11, r2, r10, 14
000944  1f050010  addli r10, zero, 2048
000948  9f050018  addli r11, zero, 3072
00094c  1f111000  addli r2, zero, 9
000950  0d80021e  ew_cfg zero, r5, zero, 15
000954  cd250500  sslut r11, r10, 0
000958  0d000014  ew_cfg zero, zero, zero, 10
00095c  0d000026  ew_cfg zero, zero, zero, 19
000960  1d900a00  unlock r21
000964  7d100100  xwait r2, 0
000968  7d100600  xwait r12, 0
00096c  1d800a00  lock zero, r21
000970  0d000002  ew_cfg zero, zero, zero, 1
000974  0d800604  ew_cfg zero, r13, zero, 2
000978  8d010006  ew_cfg r3, zero, zero, 3
00097c  63014fff  loadli.w r2,  -96(r30)
000980  0d110000  ewcoeff_cfg r2, zero, zero, 0
000984  ad29a500  dscmpnsel r19, r10, r10, 0
000988  1d900a00  unlock r21
00098c  1d800a00  lock zero, r21
000990  0d000002  ew_cfg zero, zero, zero, 1
000994  0d800604  ew_cfg zero, r13, zero, 2
000998  8d010006  ew_cfg r3, zero, zero, 3
00099c  6341ffff  loadli.w r2,  -4(r30)
0009a0  0d110000  ewcoeff_cfg r2, zero, zero, 0
0009a4  1f211000  addli r2, zero, 10
0009a8  ada93909  dscmpnsel r19, r19, r19, 4
0009ac  1d900a00  unlock r21
0009b0  7d100100  xwait r2, 0
0009b4  1d800a00  lock zero, r21
0009b8  2b0180bf  lui r2, 784384
0009bc  0d000002  ew_cfg zero, zero, zero, 1
0009c0  8d120100  ewcoeff_cfg r5, r2, zero, 0
0009c4  0d000404  ew_cfg zero, r8, zero, 2
0009c8  8d000006  ew_cfg r1, zero, zero, 3
0009cc  8d801026  ew_cfg r1, r1, r1, 19
0009d0  2d053501  dsmadd r10, r10, r19, 0
0009d4  0d000026  ew_cfg zero, zero, zero, 19
0009d8  1d900a00  unlock r21
0009dc  7d000600  xsignal r12, 0
0009e0  1d800a00  lock zero, r21
0009e4  0d000002  ew_cfg zero, zero, zero, 1
0009e8  8d920200  ewcoeff_cfg r5, r5, zero, 0
0009ec  0d000404  ew_cfg zero, r8, zero, 2
0009f0  8d000006  ew_cfg r1, zero, zero, 3
0009f4  8d801026  ew_cfg r1, r1, r1, 19
0009f8  ad85a500  dsmadd r11, r11, r10, 0
0009fc  0d000026  ew_cfg zero, zero, zero, 19
000a00  1d900a00  unlock r21
000a04  7d800000  xsignal r1, 0
000a08  7d000200  xsignal r4, 0
000a0c  db10ffff  j -1916
000a10  9f300000  addli r1, zero, 3
000a14  ab03807f  lui r7, 522240
000a18  7d900000  xwait r1, 0
000a1c  9f401000  addli r1, zero, 12
000a20  7d900000  xwait r1, 0
000a24  3d000000  xfence
000a28  00a00300  mfence { lm, sm, gm }
000a2c  6b5d0ffb  load.d r[27:28], -80(r30)
000a30  e34abfff  loadli.w r21,  -36(r30)
000a34  db0b0000  j 92
000a38  1f411e10  addli r2, r28, 2060
000a3c  270d1d00  addli.d r[27:28], r[27:28], 8
000a40  9f000e10  addli r1, r28, 2048
000a44  9f012e10  addli r3, r28, 2064
000a48  73605100  stores.w r5, 0(r2)
000a4c  9f420e10  addli r5, r28, 2052
000a50  1f011e10  addli r2, r28, 2056
000a54  73e04100  stores.w r4, 0(r3)
000a58  73e09201  stores.w r25, 0(r5)
000a5c  eb520fff  load.d r[6:7], -16(r30)
000a60  73600101  stores.w r16, 0(r2)
000a64  1f413e10  addli r2, r28, 2076
000a68  73608100  stores.w r8, 0(r2)
000a6c  1f412e10  addli r2, r28, 2068
000a70  93225d02  setneq.d r5, r[27:28], r[6:7]
000a74  6303cfff  loadli.w r6,  -32(r30)
000a78  73601101  stores.w r17, 0(r2)
000a7c  ab084000  lui r17, 1024
000a80  73e06000  stores.w r6, 0(r1)
000a84  9f003e10  addli r1, r28, 2072
000a88  73e09000  stores.w r9, 0(r1)
000a8c  37e80200  beq r5, zero, 536
000a90  1b3e2d00  slli r28, r26, 2
000a94  6f43ce00  loads.w r6, 12(r28)
000a98  ef450e00  loads.w r11, 0(r28)
000a9c  ef494e00  loads.w r19, 4(r28)
000aa0  ef428e00  loads.w r5, 8(r28)
000aa4  ef460e01  loads.w r13, 16(r28)
000aa8  6f4c4e01  loads.w r24, 20(r28)
000aac  6f448e01  loads.w r8, 24(r28)
000ab0  ef40ce01  loads.w r1, 28(r28)
000ab4  17075301  and r14, r6, r21
000ab8  1381e304  setlt.u r2, r7, r14
000abc  3b300100  bneq r2, zero, 12
000ac0  670d6ffe  storeli.w r6, -48(r30)
000ac4  db010000  j 12
000ac8  17111301  or r2, r6, r17
000acc  670d2ffe  storeli.w r2, -48(r30)
000ad0  17865201  and r12, r5, r21
000ad4  1381c304  setlt.u r2, r7, r12
000ad8  3b300100  bneq r2, zero, 12
000adc  1f880200  addli r16, r5, 0
000ae0  5b010000  j 8
000ae4  17981201  or r16, r5, r17
000ae8  178a5901  and r20, r19, r21
000aec  13814305  setlt.u r2, r7, r20
000af0  3b300100  bneq r2, zero, 12
000af4  9f8c0900  addli r25, r19, 0
000af8  5b010000  j 8
000afc  979c1901  or r25, r19, r17
000b00  17815501  and r2, r11, r21
000b04  93812304  setlt.u r3, r7, r2
000b08  3bb00100  bneq r3, zero, 12
000b0c  670ebffe  storeli.w r11, -32(r30)
000b10  db010000  j 12
000b14  97911501  or r3, r11, r17
000b18  670e3ffe  storeli.w r3, -32(r30)
000b1c  97815001  and r3, r1, r21
000b20  13823304  setlt.u r4, r7, r3
000b24  3b300200  bneq r4, zero, 12
000b28  e70c1ffe  storeli.w r1, -56(r30)
000b2c  db010000  j 12
000b30  17921001  or r4, r1, r17
000b34  e70c4ffe  storeli.w r4, -56(r30)
000b38  170b5401  and r22, r8, r21
000b3c  13826305  setlt.u r4, r7, r22
000b40  3b300200  bneq r4, zero, 12
000b44  9f040400  addli r9, r8, 0
000b48  5b010000  j 8
000b4c  97141401  or r9, r8, r17
000b50  17055c01  and r10, r24, r21
000b54  ab07807f  lui r15, 522240
000b58  1382a304  setlt.u r4, r7, r10
000b5c  3b400200  bneq r4, zero, 16
000b60  ab034000  lui r7, 1024
000b64  9f080c00  addli r17, r24, 0
000b68  5b020000  j 16
000b6c  2b024000  lui r4, 1024
000b70  ab034000  lui r7, 1024
000b74  97184c00  or r17, r24, r4
000b78  978a5601  and r21, r13, r21
000b7c  13825705  setlt.u r4, r15, r21
000b80  3b300200  bneq r4, zero, 12
000b84  1f820600  addli r4, r13, 0
000b88  5b010000  j 8
000b8c  17927600  or r4, r13, r7
000b90  e343ffff  loadli.w r7,  -4(r30)
000b94  e347dfff  loadli.w r15,  -20(r30)
000b98  13812304  setlt.u r2, r7, r2
000b9c  ab03807f  lui r7, 522240
000ba0  bb000100  bneq r2, zero, 32
000ba4  1bc10501  srli r2, r11, 16
000ba8  1b011100  andi r2, r2, 1
000bac  0b912510  add.s r2, r11, r2
000bb0  ab05ffff  lui r11, 1048560
000bb4  0b11f110  add.s r2, r2, r15
000bb8  1701b100  and r2, r2, r11
000bbc  670e2ffe  storeli.w r2, -32(r30)
000bc0  6341ffff  loadli.w r2,  -4(r30)
000bc4  ab05ffff  lui r11, 1048560
000bc8  13014105  setlt.u r2, r2, r20
000bcc  3b600100  bneq r2, zero, 24
000bd0  1bc10901  srli r2, r19, 16
000bd4  1b011100  andi r2, r2, 1
000bd8  0b912910  add.s r2, r19, r2
000bdc  0b11f110  add.s r2, r2, r15
000be0  970cb100  and r25, r2, r11
000be4  6349ffff  loadli.w r18,  -4(r30)
000be8  1301c904  setlt.u r2, r18, r12
000bec  1f060900  addli r12, r18, 0
000bf0  3b600100  bneq r2, zero, 24
000bf4  1bc10201  srli r2, r5, 16
000bf8  1b011100  andi r2, r2, 1
000bfc  0b912210  add.s r2, r5, r2
000c00  0b11f110  add.s r2, r2, r15
000c04  1708b100  and r16, r2, r11
000c08  1301e604  setlt.u r2, r12, r14
000c0c  e302afff  loadli.w r5,  -48(r30)
000c10  3b600100  bneq r2, zero, 24
000c14  1b410301  srli r2, r6, 16
000c18  1b011100  andi r2, r2, 1
000c1c  0b112310  add.s r2, r6, r2
000c20  0b11f110  add.s r2, r2, r15
000c24  9702b100  and r5, r2, r11
000c28  13015605  setlt.u r2, r12, r21
000c2c  3b600100  bneq r2, zero, 24
000c30  1bc10601  srli r2, r13, 16
000c34  1b011100  andi r2, r2, 1
000c38  0b912610  add.s r2, r13, r2
000c3c  0b11f110  add.s r2, r2, r15
000c40  1702b100  and r4, r2, r11
000c44  1301a604  setlt.u r2, r12, r10
000c48  e34abfff  loadli.w r21,  -36(r30)
000c4c  3b600100  bneq r2, zero, 24
000c50  1b410c01  srli r2, r24, 16
000c54  1b011100  andi r2, r2, 1
000c58  0b112c10  add.s r2, r24, r2
000c5c  0b11f110  add.s r2, r2, r15
000c60  9708b100  and r17, r2, r11
000c64  13016605  setlt.u r2, r12, r22
000c68  3b600100  bneq r2, zero, 24
000c6c  1b410401  srli r2, r8, 16
000c70  1b011100  andi r2, r2, 1
000c74  0b112410  add.s r2, r8, r2
000c78  0b11f110  add.s r2, r2, r15
000c7c  9704b100  and r9, r2, r11
000c80  13013604  setlt.u r2, r12, r3
000c84  63049fff  loadli.w r8,  -56(r30)
000c88  bb4601fe  bneq r2, zero, -592
000c8c  1bc10001  srli r2, r1, 16
000c90  1b011100  andi r2, r2, 1
000c94  8b902010  add.s r1, r1, r2
000c98  8b90f010  add.s r1, r1, r15
000c9c  1784b000  and r8, r1, r11
000ca0  5bb3ffff  j -616
000ca4  9f400000  addli r1, zero, 4
000ca8  00200100  mfence { sm }
000cac  330d0028  zext_int2long r[27:28], zero
000cb0  7d800000  xsignal r1, 0
000cb4  9f101000  addli r1, zero, 9
000cb8  7d800000  xsignal r1, 0
000cbc  9f201000  addli r1, zero, 10
000cc0  7d800000  xsignal r1, 0
000cc4  9f700000  addli r1, zero, 7
000cc8  7d800000  xsignal r1, 0
000ccc  9f001000  addli r1, zero, 8
000cd0  7d900000  xwait r1, 0
000cd4  9f501000  addli r1, zero, 13
000cd8  7d900000  xwait r1, 0
000cdc  3d000000  xfence
000ce0  00a00300  mfence { lm, sm, gm }
000ce4  5b0b0000  j 88
000ce8  1f411e10  addli r2, r28, 2060
000cec  6b550fff  load.d r[11:12], -16(r30)
000cf0  270d1d00  addli.d r[27:28], r[27:28], 8
000cf4  9f000e10  addli r1, r28, 2048
000cf8  9f012e10  addli r3, r28, 2064
000cfc  73604100  stores.w r4, 0(r2)
000d00  1f420e10  addli r4, r28, 2052
000d04  1f011e10  addli r2, r28, 2056
000d08  73e06001  stores.w r22, 0(r1)
000d0c  9f003e10  addli r1, r28, 2072
000d10  73e05100  stores.w r5, 0(r3)
000d14  73604201  stores.w r20, 0(r4)
000d18  1322ad02  setneq.d r4, r[27:28], r[11:12]
000d1c  73609101  stores.w r25, 0(r2)
000d20  1f413e10  addli r2, r28, 2076
000d24  73e07001  stores.w r23, 0(r1)
000d28  73602101  stores.w r18, 0(r2)
000d2c  1f412e10  addli r2, r28, 2068
000d30  73601101  stores.w r17, 0(r2)
000d34  ab084000  lui r17, 1024
000d38  b72402fa  beq r4, zero, -2776
000d3c  1b3e2d00  slli r28, r26, 2
000d40  1f411e18  addli r2, r28, 3084
000d44  9f000e18  addli r1, r28, 3072
000d48  1f022e18  addli r4, r28, 3088
000d4c  9f011e18  addli r3, r28, 3080
000d50  6f410100  loads.w r2, 0(r2)
000d54  efc70000  loads.w r15, 0(r1)
000d58  9f400e18  addli r1, r28, 3076
000d5c  ef460200  loads.w r13, 0(r4)
000d60  1f423e18  addli r4, r28, 3100
000d64  efc10100  loads.w r3, 0(r3)
000d68  6fc80000  loads.w r16, 0(r1)
000d6c  9f402e18  addli r1, r28, 3092
000d70  6fcc0000  loads.w r24, 0(r1)
000d74  9f003e18  addli r1, r28, 3096
000d78  6fc40000  loads.w r8, 0(r1)
000d7c  ef400200  loads.w r1, 0(r4)
000d80  17025101  and r4, r2, r21
000d84  93824304  setlt.u r5, r7, r4
000d88  3bb00200  bneq r5, zero, 12
000d8c  670e2ffe  storeli.w r2, -32(r30)
000d90  db010000  j 12
000d94  97121101  or r5, r2, r17
000d98  670e5ffe  storeli.w r5, -32(r30)
000d9c  17865101  and r12, r3, r21
000da0  9382c304  setlt.u r5, r7, r12
000da4  3bb00200  bneq r5, zero, 12
000da8  9f8c0100  addli r25, r3, 0
000dac  5b010000  j 8
000db0  979c1101  or r25, r3, r17
000db4  170a5801  and r20, r16, r21
000db8  93824305  setlt.u r5, r7, r20
000dbc  3bb00200  bneq r5, zero, 12
000dc0  9f040800  addli r9, r16, 0
000dc4  5b010000  j 8
000dc8  97141801  or r9, r16, r17
000dcc  17835701  and r6, r15, r21
000dd0  93826304  setlt.u r5, r7, r6
000dd4  3bb00200  bneq r5, zero, 12
000dd8  1f8b0700  addli r22, r15, 0
000ddc  5b010000  j 8
000de0  179b1701  or r22, r15, r17
000de4  17875001  and r14, r1, r21
000de8  9382e304  setlt.u r5, r7, r14
000dec  3bb00200  bneq r5, zero, 12
000df0  1f890000  addli r18, r1, 0
000df4  5b010000  j 8
000df8  17991001  or r18, r1, r17
000dfc  97055401  and r11, r8, r21
000e00  9382b304  setlt.u r5, r7, r11
000e04  3bb00200  bneq r5, zero, 12
000e08  9f0b0400  addli r23, r8, 0
000e0c  5b010000  j 8
000e10  971b1401  or r23, r8, r17
000e14  17055c01  and r10, r24, r21
000e18  ab09807f  lui r19, 522240
000e1c  9382a304  setlt.u r5, r7, r10
000e20  3bc00200  bneq r5, zero, 16
000e24  ab034000  lui r7, 1024
000e28  9f080c00  addli r17, r24, 0
000e2c  5b020000  j 16
000e30  ab024000  lui r5, 1024
000e34  ab034000  lui r7, 1024
000e38  97185c00  or r17, r24, r5
000e3c  978a5601  and r21, r13, r21
000e40  93825905  setlt.u r5, r19, r21
000e44  3bb00200  bneq r5, zero, 12
000e48  9f820600  addli r5, r13, 0
000e4c  5b010000  j 8
000e50  97927600  or r5, r13, r7
000e54  e343ffff  loadli.w r7,  -4(r30)
000e58  13836304  setlt.u r6, r7, r6
000e5c  ab03807f  lui r7, 522240
000e60  bb000300  bneq r6, zero, 32
000e64  1bc30701  srli r6, r15, 16
000e68  1b031300  andi r6, r6, 1
000e6c  0b936710  add.s r6, r15, r6
000e70  e347dfff  loadli.w r15,  -20(r30)
000e74  0b13f310  add.s r6, r6, r15
000e78  ab07ffff  lui r15, 1048560
000e7c  170bf300  and r22, r6, r15
000e80  6343ffff  loadli.w r6,  -4(r30)
000e84  e347dfff  loadli.w r15,  -20(r30)
000e88  ab09ffff  lui r19, 1048560
000e8c  13034305  setlt.u r6, r6, r20
000e90  1f8a0400  addli r20, r9, 0
000e94  3b600300  bneq r6, zero, 24
000e98  1b430801  srli r6, r16, 16
000e9c  1b031300  andi r6, r6, 1
000ea0  0b136810  add.s r6, r16, r6
000ea4  0b13f310  add.s r6, r6, r15
000ea8  170a3301  and r20, r6, r19
000eac  e344ffff  loadli.w r9,  -4(r30)
000eb0  1383c404  setlt.u r6, r9, r12
000eb4  3b600300  bneq r6, zero, 24
000eb8  1bc30101  srli r6, r3, 16
000ebc  1b031300  andi r6, r6, 1
000ec0  8b916110  add.s r3, r3, r6
000ec4  8b91f110  add.s r3, r3, r15
000ec8  978c3101  and r25, r3, r19
000ecc  93814404  setlt.u r3, r9, r4
000ed0  6302cfff  loadli.w r4,  -32(r30)
000ed4  3be00100  bneq r3, zero, 24
000ed8  9b410101  srli r3, r2, 16
000edc  9b811100  andi r3, r3, 1
000ee0  0b113110  add.s r2, r2, r3
000ee4  0b11f110  add.s r2, r2, r15
000ee8  17023101  and r4, r2, r19
000eec  13815405  setlt.u r2, r9, r21
000ef0  3b600100  bneq r2, zero, 24
000ef4  1bc10601  srli r2, r13, 16
000ef8  1b011100  andi r2, r2, 1
000efc  0b912610  add.s r2, r13, r2
000f00  0b11f110  add.s r2, r2, r15
000f04  97023101  and r5, r2, r19
000f08  1381a404  setlt.u r2, r9, r10
000f0c  e34abfff  loadli.w r21,  -36(r30)
000f10  37600100  beq r2, zero, 24
000f14  1381b404  setlt.u r2, r9, r11
000f18  b7300100  beq r2, zero, 44
000f1c  1381e404  setlt.u r2, r9, r14
000f20  3b2701fe  bneq r2, zero, -568
000f24  db070000  j 60
000f28  1b410c01  srli r2, r24, 16
000f2c  1b011100  andi r2, r2, 1
000f30  0b112c10  add.s r2, r24, r2
000f34  0b11f110  add.s r2, r2, r15
000f38  97083101  and r17, r2, r19
000f3c  1381b404  setlt.u r2, r9, r11
000f40  3b7f01fe  bneq r2, zero, -36
000f44  1b410401  srli r2, r8, 16
000f48  1b011100  andi r2, r2, 1
000f4c  0b112410  add.s r2, r8, r2
000f50  0b11f110  add.s r2, r2, r15
000f54  970b3101  and r23, r2, r19
000f58  1381e404  setlt.u r2, r9, r14
000f5c  3b3601fe  bneq r2, zero, -628
000f60  1bc10001  srli r2, r1, 16
000f64  1b011100  andi r2, r2, 1
000f68  8b902010  add.s r1, r1, r2
000f6c  8b90f010  add.s r1, r1, r15
000f70  17893001  and r18, r1, r19
000f74  dbaeffff  j -652
000f78  3bec03f8  bneq r7, zero, -3304
000f7c  1f110000  addli r2, zero, 1
000f80  7d100700  xwait r14, 0
000f84  1d800400  lock zero, r9
000f88  9f018000  addli r3, zero, 64
000f8c  9f008010  addli r1, zero, 2112
000f90  15010100  dma_cfg r2, r2, zero, 0
000f94  15000102  dma_cfg zero, r2, zero, 1
000f98  6b528ffc  load.d r[5:6], -56(r30)
000f9c  95020004  dma_cfg r5, zero, zero, 2
000fa0  15823006  dma_cfg r4, r1, r3, 3
000fa4  9f001000  addli r1, zero, 8
000fa8  1f020001  addli r4, zero, 128
000fac  95011208  dma_cfg r3, r4, r1, 4
000fb0  9f000008  addli r1, zero, 1024
000fb4  9f010004  addli r3, zero, 512
000fb8  9581200a  dma_cfg r3, r1, r2, 5
000fbc  9f401000  addli r1, zero, 12
000fc0  15000010  dma_cfg zero, zero, zero, 8
000fc4  35000000  dma_run zero
000fc8  1500200a  dma_cfg zero, zero, r2, 5
000fcc  15000010  dma_cfg zero, zero, zero, 8
000fd0  1d900400  unlock r9
000fd4  7d800000  xsignal r1, 0
000fd8  5b57feff  j -3400
000fdc  7d000000  xsignal zero, 0
000fe0  bbe00300  bneq r7, zero, 56
000fe4  9f200000  addli r1, zero, 2
000fe8  7d100000  xwait zero, 0
000fec  7d100000  xwait zero, 0
000ff0  7d100000  xwait zero, 0
000ff4  7d100000  xwait zero, 0
000ff8  7d100000  xwait zero, 0
000ffc  7d100000  xwait zero, 0
001000  7d100000  xwait zero, 0
001004  7d100000  xwait zero, 0
001008  1d800000  lock zero, r1
00100c  0d000020  ew_cfg zero, zero, zero, 16
001010  1d900000  unlock r1
001014  7d400000  xsignal_mode_cfg zero
001018  9f8ece00  addli sp, sp, 96
00101c  00a00300  mfence { lm, sm, gm }
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
