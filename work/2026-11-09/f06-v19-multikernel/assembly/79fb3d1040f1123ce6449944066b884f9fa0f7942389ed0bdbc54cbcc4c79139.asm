; SHA-256 79fb3d1040f1123ce6449944066b884f9fa0f7942389ed0bdbc54cbcc4c79139
; P800 SDNN · XTDK LLVM 19 · 1140 / 1140 words decoded
; bound names: triton_unk_fused_0
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
00005c  9f496000  addli r19, zero, 52
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
0000b4  9f8efefe  addli sp, sp, -136
0000b8  9f100000  addli r1, zero, 1
0000bc  80330002  core_id r7
0000c0  1f8f9e00  addli r30, sp, 72
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7900300  beq r7, zero, 36
0000cc  2bf1ffff  lui r2, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b10f1ff  ori r1, r2, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  5b1a0000  j 208
0000ec  1f220000  addli r4, zero, 2
0000f0  fdd00000  uni_sram_cfg r1, r1
0000f4  9f420000  addli r5, zero, 4
0000f8  6b510f02  load.d r[3:4], 32(r30)
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
00014c  1f211000  addli r2, zero, 10
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
00019c  9f002000  addli r1, zero, 16
0001a0  7d800000  xsignal r1, 0
0001a4  7d000100  xsignal r2, 0
0001a8  9f401000  addli r1, zero, 12
0001ac  1f611000  addli r2, zero, 14
0001b0  7d800000  xsignal r1, 0
0001b4  7d000100  xsignal r2, 0
0001b8  e3005f00  loadli.w r1,  40(r30)
0001bc  63415f00  loadli.w r2,  44(r30)
0001c0  00d20002  load_param_i r4, 1
0001c4  e3016f00  loadli.w r3,  48(r30)
0001c8  8b101120  mul.s r1, r2, r1
0001cc  1f010200  addli r2, r4, 0
0001d0  0b913050  fmac.s r2, r1, r3
0001d4  8b913020  mul.s r3, r1, r3
0001d8  1f71f1ff  addli r2, r2, -1
0001dc  0b114130  div.s r2, r2, r4
0001e0  00520002  load_param_i r4, 0
0001e4  8b104120  mul.s r1, r2, r4
0001e8  0b114150  fmac.s r2, r2, r4
0001ec  0b113140  min.s r2, r2, r3
0001f0  4b651106  ble.s r2, r1, 3416
0001f4  33110128  sext_int2long r[3:4], r2
0001f8  1f590000  addli r18, zero, 5
0001fc  ab084000  lui r17, 1024
000200  1f270000  addli r14, zero, 2
000204  9f1b0000  addli r23, zero, 1
000208  1f0c0001  addli r24, zero, 128
00020c  73302ffc  store.d r[3:4], -64(r30)
000210  b3910028  sext_int2long r[4:5], r1
000214  abf0ff7f  lui r1, 524287
000218  1f010008  addli r2, zero, 1024
00021c  9b97f0ff  ori r15, r1, 4095
000220  ab700000  lui r1, 7
000224  b3090128  zext_int2long r[20:21], r2
000228  9b90f0ff  ori r1, r1, 4095
00022c  733c3ffd  store.d r[20:21], -40(r30)
000230  674e1ffe  storeli.w r1, -28(r30)
000234  abf07f7f  lui r1, 522239
000238  9b90f0ff  ori r1, r1, 4095
00023c  674f1ffe  storeli.w r1, -12(r30)
000240  ab800200  lui r1, 40
000244  9b902084  ori r1, r1, 2114
000248  e74b1ffe  storeli.w r1, -68(r30)
00024c  b3000028  zext_int2long r[2:3], zero
000250  73341ffc  store.d r[2:3], -56(r30)
000254  db0a0000  j 84
000258  9f201000  addli r1, zero, 10
00025c  00200100  mfence { sm }
000260  80330002  core_id r7
000264  ab084000  lui r17, 1024
000268  1f270000  addli r14, zero, 2
00026c  9f1b0000  addli r23, zero, 1
000270  1f0c0001  addli r24, zero, 128
000274  7d800000  xsignal r1, 0
000278  9f401000  addli r1, zero, 12
00027c  7d800000  xsignal r1, 0
000280  9f601000  addli r1, zero, 14
000284  7d800000  xsignal r1, 0
000288  9f701000  addli r1, zero, 15
00028c  7d800000  xsignal r1, 0
000290  eb598ffd  load.d r[20:21], -40(r30)
000294  eb510ffd  load.d r[4:5], -48(r30)
000298  eb500ffc  load.d r[2:3], -64(r30)
00029c  a7910100  addli.d r[4:5], r[4:5], 1
0002a0  93b01104  setlt.sl r1, r[4:5], r[2:3]
0002a4  b7920006  beq r1, zero, 3236
0002a8  e3006f00  loadli.w r1,  48(r30)
0002ac  63415f00  loadli.w r2,  44(r30)
0002b0  73383ffc  store.d r[4:5], -48(r30)
0002b4  8b901130  div.s r1, r3, r1
0002b8  9f111000  addli r3, zero, 9
0002bc  8b902030  div.s r1, r1, r2
0002c0  b3900028  sext_int2long r[2:3], r1
0002c4  17b43002  sll.d r[9:10], r[2:3], r3
0002c8  9f600000  addli r1, zero, 6
0002cc  73348ffe  store.d r[9:10], -24(r30)
0002d0  b7e91300  beq r7, r1, 632
0002d4  1f080000  addli r16, zero, 0
0002d8  bbf97301  bneq r7, r23, 636
0002dc  9f460000  addli r13, zero, 4
0002e0  6b520f00  load.d r[5:6], 0(r30)
0002e4  9f330000  addli r7, zero, 3
0002e8  17317403  sll.d r[3:4], r[9:10], r23
0002ec  1f740000  addli r8, zero, 7
0002f0  9f041000  addli r9, zero, 8
0002f4  9f101000  addli r1, zero, 9
0002f8  1f231000  addli r6, zero, 10
0002fc  1f351000  addli r10, zero, 11
000300  9f551000  addli r11, zero, 13
000304  1f661000  addli r12, zero, 14
000308  1f1b2000  addli r22, zero, 17
00030c  9f3c2000  addli r25, zero, 19
000310  1f4d2000  addli r26, zero, 20
000314  9f5d2000  addli r27, zero, 21
000318  1f6e2000  addli r28, zero, 22
00031c  9f0a0001  addli r21, zero, 128
000320  9f080010  addli r17, zero, 2048
000324  1f0c0001  addli r24, zero, 128
000328  7d900600  xwait r13, 0
00032c  1d000900  lock zero, r18
000330  15000014  dma_cfg zero, zero, zero, 10
000334  0b212210  add.ul r[3:4], r[5:6], r[3:4]
000338  9f620000  addli r5, zero, 6
00033c  1f022000  addli r4, zero, 16
000340  15007015  dma_cfg zero, zero, r23, 10
000344  1500e014  dma_cfg zero, zero, r14, 10
000348  15007014  dma_cfg zero, zero, r7, 10
00034c  1500d014  dma_cfg zero, zero, r13, 10
000350  15002015  dma_cfg zero, zero, r18, 10
000354  1f098000  addli r18, zero, 64
000358  15005014  dma_cfg zero, zero, r5, 10
00035c  15008014  dma_cfg zero, zero, r8, 10
000360  15009014  dma_cfg zero, zero, r9, 10
000364  15001014  dma_cfg zero, zero, r1, 10
000368  9f401000  addli r1, zero, 12
00036c  15006014  dma_cfg zero, zero, r6, 10
000370  1500a014  dma_cfg zero, zero, r10, 10
000374  15001014  dma_cfg zero, zero, r1, 10
000378  9f701000  addli r1, zero, 15
00037c  1500b014  dma_cfg zero, zero, r11, 10
000380  1500c014  dma_cfg zero, zero, r12, 10
000384  15001014  dma_cfg zero, zero, r1, 10
000388  9f202000  addli r1, zero, 18
00038c  15004014  dma_cfg zero, zero, r4, 10
000390  15006015  dma_cfg zero, zero, r22, 10
000394  15001014  dma_cfg zero, zero, r1, 10
000398  9f702000  addli r1, zero, 23
00039c  15009015  dma_cfg zero, zero, r25, 10
0003a0  1500a015  dma_cfg zero, zero, r26, 10
0003a4  1500b015  dma_cfg zero, zero, r27, 10
0003a8  1500c015  dma_cfg zero, zero, r28, 10
0003ac  15001014  dma_cfg zero, zero, r1, 10
0003b0  9f003000  addli r1, zero, 24
0003b4  15001014  dma_cfg zero, zero, r1, 10
0003b8  9f103000  addli r1, zero, 25
0003bc  15001014  dma_cfg zero, zero, r1, 10
0003c0  9f203000  addli r1, zero, 26
0003c4  15001014  dma_cfg zero, zero, r1, 10
0003c8  9f303000  addli r1, zero, 27
0003cc  15001014  dma_cfg zero, zero, r1, 10
0003d0  9f403000  addli r1, zero, 28
0003d4  15001014  dma_cfg zero, zero, r1, 10
0003d8  9f503000  addli r1, zero, 29
0003dc  15001014  dma_cfg zero, zero, r1, 10
0003e0  9f603000  addli r1, zero, 30
0003e4  15001014  dma_cfg zero, zero, r1, 10
0003e8  9f703000  addli r1, zero, 31
0003ec  15001014  dma_cfg zero, zero, r1, 10
0003f0  9f500000  addli r1, zero, 5
0003f4  958b0b00  dma_cfg r23, r23, zero, 0
0003f8  950b0002  dma_cfg r23, zero, zero, 1
0003fc  15000004  dma_cfg zero, zero, zero, 2
000400  15002007  dma_cfg zero, zero, r18, 3
000404  950a4008  dma_cfg r21, zero, r4, 4
000408  9508700b  dma_cfg r17, zero, r23, 5
00040c  15000010  dma_cfg zero, zero, zero, 8
000410  35000000  dma_run zero
000414  1500700b  dma_cfg zero, zero, r23, 5
000418  15000010  dma_cfg zero, zero, zero, 8
00041c  1d900000  unlock r1
000420  1d800600  lock zero, r13
000424  958b0b00  dma_cfg r23, r23, zero, 0
000428  15800104  dma_cfg zero, r3, zero, 2
00042c  15092107  dma_cfg r18, r2, r18, 3
000430  1f010008  addli r2, zero, 1024
000434  950a4908  dma_cfg r21, r18, r4, 4
000438  9508710b  dma_cfg r17, r2, r23, 5
00043c  15000010  dma_cfg zero, zero, zero, 8
000440  35000000  dma_run zero
000444  1500700b  dma_cfg zero, zero, r23, 5
000448  15000010  dma_cfg zero, zero, zero, 8
00044c  1d900600  unlock r13
000450  1d800000  lock zero, r1
000454  15000014  dma_cfg zero, zero, zero, 10
000458  15007015  dma_cfg zero, zero, r23, 10
00045c  1500e014  dma_cfg zero, zero, r14, 10
000460  15007014  dma_cfg zero, zero, r7, 10
000464  1500d014  dma_cfg zero, zero, r13, 10
000468  15001014  dma_cfg zero, zero, r1, 10
00046c  9f101000  addli r1, zero, 9
000470  15005014  dma_cfg zero, zero, r5, 10
000474  15008014  dma_cfg zero, zero, r8, 10
000478  15009014  dma_cfg zero, zero, r9, 10
00047c  6b548ffe  load.d r[9:10], -24(r30)
000480  15001014  dma_cfg zero, zero, r1, 10
000484  9f401000  addli r1, zero, 12
000488  15006014  dma_cfg zero, zero, r6, 10
00048c  1500a014  dma_cfg zero, zero, r10, 10
000490  15001014  dma_cfg zero, zero, r1, 10
000494  9f701000  addli r1, zero, 15
000498  1500b014  dma_cfg zero, zero, r11, 10
00049c  1500c014  dma_cfg zero, zero, r12, 10
0004a0  15001014  dma_cfg zero, zero, r1, 10
0004a4  9f202000  addli r1, zero, 18
0004a8  15004014  dma_cfg zero, zero, r4, 10
0004ac  15006015  dma_cfg zero, zero, r22, 10
0004b0  15001014  dma_cfg zero, zero, r1, 10
0004b4  9f702000  addli r1, zero, 23
0004b8  15009015  dma_cfg zero, zero, r25, 10
0004bc  1500a015  dma_cfg zero, zero, r26, 10
0004c0  1500b015  dma_cfg zero, zero, r27, 10
0004c4  1500c015  dma_cfg zero, zero, r28, 10
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
000504  9f703000  addli r1, zero, 31
000508  15001014  dma_cfg zero, zero, r1, 10
00050c  958b0b00  dma_cfg r23, r23, zero, 0
000510  950b0002  dma_cfg r23, zero, zero, 1
000514  15000004  dma_cfg zero, zero, zero, 2
000518  15002007  dma_cfg zero, zero, r18, 3
00051c  1f590000  addli r18, zero, 5
000520  150c4008  dma_cfg r24, zero, r4, 4
000524  9508700b  dma_cfg r17, zero, r23, 5
000528  ab084000  lui r17, 1024
00052c  15000010  dma_cfg zero, zero, zero, 8
000530  35000000  dma_run zero
000534  1500700b  dma_cfg zero, zero, r23, 5
000538  15000010  dma_cfg zero, zero, zero, 8
00053c  1d100900  unlock r18
000540  7d000700  xsignal r14, 0
000544  5b020000  j 16
000548  1f180000  addli r16, zero, 1
00054c  1f610000  addli r2, zero, 6
000550  7d100100  xwait r2, 0
000554  0f113471  mod.sl r[3:4], r[9:10], r[20:21]
000558  1f221000  addli r4, zero, 10
00055c  2771f10b  addli.d r[3:4], r[3:4], 1535
000560  17464102  srl.d r[13:14], r[3:4], r4
000564  eb508ffc  load.d r[2:3], -56(r30)
000568  13211600  seteq.d r2, r[13:14], r[2:3]
00056c  9f000004  addli r1, zero, 512
000570  b3810028  zext_int2long r[4:5], r1
000574  733c3ffe  store.d r[4:5], -8(r30)
000578  3b3c0100  bneq r2, zero, 780
00057c  b38d0b28  zext_int2long r[28:29], r23
000580  33050028  zext_int2long r[11:12], zero
000584  db020000  j 20
000588  13a1cd04  setlt.ul r2, r[28:29], r[13:14]
00058c  0ba5aa10  add.ul r[11:12], r[22:23], r[11:12]
000590  b30d0728  zext_int2long r[28:29], r14
000594  b74b0100  beq r2, zero, 752
000598  0b218510  add.ul r[3:4], r[11:12], r[9:10]
00059c  6b538fff  load.d r[7:8], -8(r30)
0005a0  0f113171  mod.sl r[3:4], r[3:4], r[20:21]
0005a4  0b33a318  sub.sl r[7:8], r[7:8], r[11:12]
0005a8  0bb22918  sub.sl r[5:6], r[20:21], r[3:4]
0005ac  8b2a4340  min.ul r[22:23], r[7:8], r[5:6]
0005b0  376f08fe  beq r16, zero, -40
0005b4  1d000900  lock zero, r18
0005b8  9f300000  addli r1, zero, 3
0005bc  9f440000  addli r9, zero, 4
0005c0  97327103  sll.d r[6:7], r[3:4], r23
0005c4  1b322500  slli r4, r10, 2
0005c8  9f5c1000  addli r25, zero, 13
0005cc  1f6d1000  addli r26, zero, 14
0005d0  9f781000  addli r17, zero, 15
0005d4  a7090600  addli.d r[20:21], r[13:14], 0
0005d8  9f062000  addli r13, zero, 16
0005dc  1f162000  addli r12, zero, 17
0005e0  1f048000  addli r8, zero, 64
0005e4  9bb31a00  slli r7, r21, 1
0005e8  15000014  dma_cfg zero, zero, zero, 10
0005ec  15007015  dma_cfg zero, zero, r23, 10
0005f0  9f7b0000  addli r23, zero, 7
0005f4  1f010210  addli r2, r4, 2048
0005f8  eb518f00  load.d r[4:5], 8(r30)
0005fc  1500e014  dma_cfg zero, zero, r14, 10
000600  1f271000  addli r14, zero, 10
000604  15001014  dma_cfg zero, zero, r1, 10
000608  9f600000  addli r1, zero, 6
00060c  15009014  dma_cfg zero, zero, r9, 10
000610  8ba15110  add.ul r[4:5], r[4:5], r[6:7]
000614  9f222000  addli r5, zero, 18
000618  0b138139  mod.s r6, r2, r24
00061c  15002015  dma_cfg zero, zero, r18, 10
000620  1f190000  addli r18, zero, 1
000624  15001014  dma_cfg zero, zero, r1, 10
000628  9f001000  addli r1, zero, 8
00062c  15007015  dma_cfg zero, zero, r23, 10
000630  15001014  dma_cfg zero, zero, r1, 10
000634  9f101000  addli r1, zero, 9
000638  15001014  dma_cfg zero, zero, r1, 10
00063c  9f301000  addli r1, zero, 11
000640  1500e014  dma_cfg zero, zero, r14, 10
000644  15001014  dma_cfg zero, zero, r1, 10
000648  9f401000  addli r1, zero, 12
00064c  15001014  dma_cfg zero, zero, r1, 10
000650  9f500000  addli r1, zero, 5
000654  15009015  dma_cfg zero, zero, r25, 10
000658  1500a015  dma_cfg zero, zero, r26, 10
00065c  15001015  dma_cfg zero, zero, r17, 10
000660  1500d014  dma_cfg zero, zero, r13, 10
000664  1500c014  dma_cfg zero, zero, r12, 10
000668  15005014  dma_cfg zero, zero, r5, 10
00066c  9f322000  addli r5, zero, 19
000670  15005014  dma_cfg zero, zero, r5, 10
000674  9f422000  addli r5, zero, 20
000678  15005014  dma_cfg zero, zero, r5, 10
00067c  9f522000  addli r5, zero, 21
000680  15005014  dma_cfg zero, zero, r5, 10
000684  9f622000  addli r5, zero, 22
000688  15005014  dma_cfg zero, zero, r5, 10
00068c  9f722000  addli r5, zero, 23
000690  15005014  dma_cfg zero, zero, r5, 10
000694  9f023000  addli r5, zero, 24
000698  15005014  dma_cfg zero, zero, r5, 10
00069c  9f123000  addli r5, zero, 25
0006a0  15005014  dma_cfg zero, zero, r5, 10
0006a4  9f223000  addli r5, zero, 26
0006a8  15005014  dma_cfg zero, zero, r5, 10
0006ac  9f323000  addli r5, zero, 27
0006b0  15005014  dma_cfg zero, zero, r5, 10
0006b4  9f423000  addli r5, zero, 28
0006b8  15005014  dma_cfg zero, zero, r5, 10
0006bc  9f523000  addli r5, zero, 29
0006c0  15005014  dma_cfg zero, zero, r5, 10
0006c4  9f623000  addli r5, zero, 30
0006c8  15005014  dma_cfg zero, zero, r5, 10
0006cc  9f723000  addli r5, zero, 31
0006d0  15005014  dma_cfg zero, zero, r5, 10
0006d4  9f020010  addli r5, zero, 2048
0006d8  15090900  dma_cfg r18, r18, zero, 0
0006dc  15090002  dma_cfg r18, zero, zero, 1
0006e0  15000004  dma_cfg zero, zero, zero, 2
0006e4  95028006  dma_cfg r5, zero, r8, 3
0006e8  150cd008  dma_cfg r24, zero, r13, 4
0006ec  9502200b  dma_cfg r5, zero, r18, 5
0006f0  9b421300  srli r5, r6, 1
0006f4  15000010  dma_cfg zero, zero, zero, 8
0006f8  35000000  dma_run zero
0006fc  1500200b  dma_cfg zero, zero, r18, 5
000700  15000010  dma_cfg zero, zero, zero, 8
000704  8b125118  sub.s r5, r2, r5
000708  0b116118  sub.s r2, r2, r6
00070c  1f230000  addli r6, zero, 2
000710  1d900000  unlock r1
000714  1d800400  lock zero, r9
000718  9f828200  addli r5, r5, 64
00071c  15090900  dma_cfg r18, r18, zero, 0
000720  15000204  dma_cfg zero, r4, zero, 2
000724  95828106  dma_cfg r5, r3, r8, 3
000728  abf2ff7f  lui r5, 524287
00072c  9bb12a00  slli r3, r21, 2
000730  1ff23a00  addli r4, r21, 31
000734  9b9202f8  ori r5, r5, 3968
000738  1b425200  srli r4, r4, 5
00073c  97825100  and r5, r3, r5
000740  9b81e303  andi r3, r7, 62
000744  150c4408  dma_cfg r24, r8, r4, 4
000748  97923200  or r5, r5, r3
00074c  9582230b  dma_cfg r5, r7, r18, 5
000750  15003010  dma_cfg zero, zero, r3, 8
000754  35000000  dma_run zero
000758  1500200b  dma_cfg zero, zero, r18, 5
00075c  15000010  dma_cfg zero, zero, zero, 8
000760  1d900400  unlock r9
000764  1d800000  lock zero, r1
000768  9f300000  addli r1, zero, 3
00076c  15000014  dma_cfg zero, zero, zero, 10
000770  15002015  dma_cfg zero, zero, r18, 10
000774  1f590000  addli r18, zero, 5
000778  15006014  dma_cfg zero, zero, r6, 10
00077c  15001014  dma_cfg zero, zero, r1, 10
000780  9f600000  addli r1, zero, 6
000784  15009014  dma_cfg zero, zero, r9, 10
000788  15002015  dma_cfg zero, zero, r18, 10
00078c  15001014  dma_cfg zero, zero, r1, 10
000790  9f001000  addli r1, zero, 8
000794  15007015  dma_cfg zero, zero, r23, 10
000798  9f1b0000  addli r23, zero, 1
00079c  15001014  dma_cfg zero, zero, r1, 10
0007a0  9f101000  addli r1, zero, 9
0007a4  15001014  dma_cfg zero, zero, r1, 10
0007a8  9f301000  addli r1, zero, 11
0007ac  1500e014  dma_cfg zero, zero, r14, 10
0007b0  1f270000  addli r14, zero, 2
0007b4  15001014  dma_cfg zero, zero, r1, 10
0007b8  9f401000  addli r1, zero, 12
0007bc  15001014  dma_cfg zero, zero, r1, 10
0007c0  9f202000  addli r1, zero, 18
0007c4  15009015  dma_cfg zero, zero, r25, 10
0007c8  1500a015  dma_cfg zero, zero, r26, 10
0007cc  15001015  dma_cfg zero, zero, r17, 10
0007d0  ab084000  lui r17, 1024
0007d4  1500d014  dma_cfg zero, zero, r13, 10
0007d8  1500c014  dma_cfg zero, zero, r12, 10
0007dc  27860900  addli.d r[13:14], r[20:21], 0
0007e0  15001014  dma_cfg zero, zero, r1, 10
0007e4  9f302000  addli r1, zero, 19
0007e8  15001014  dma_cfg zero, zero, r1, 10
0007ec  9f402000  addli r1, zero, 20
0007f0  15001014  dma_cfg zero, zero, r1, 10
0007f4  9f502000  addli r1, zero, 21
0007f8  15001014  dma_cfg zero, zero, r1, 10
0007fc  9f602000  addli r1, zero, 22
000800  15001014  dma_cfg zero, zero, r1, 10
000804  9f702000  addli r1, zero, 23
000808  15001014  dma_cfg zero, zero, r1, 10
00080c  9f003000  addli r1, zero, 24
000810  15001014  dma_cfg zero, zero, r1, 10
000814  9f103000  addli r1, zero, 25
000818  15001014  dma_cfg zero, zero, r1, 10
00081c  9f203000  addli r1, zero, 26
000820  15001014  dma_cfg zero, zero, r1, 10
000824  9f303000  addli r1, zero, 27
000828  15001014  dma_cfg zero, zero, r1, 10
00082c  9f403000  addli r1, zero, 28
000830  15001014  dma_cfg zero, zero, r1, 10
000834  9f503000  addli r1, zero, 29
000838  15001014  dma_cfg zero, zero, r1, 10
00083c  9f603000  addli r1, zero, 30
000840  15001014  dma_cfg zero, zero, r1, 10
000844  9f703000  addli r1, zero, 31
000848  15001014  dma_cfg zero, zero, r1, 10
00084c  eb598ffd  load.d r[20:21], -40(r30)
000850  958b0b00  dma_cfg r23, r23, zero, 0
000854  950b0002  dma_cfg r23, zero, zero, 1
000858  15000004  dma_cfg zero, zero, zero, 2
00085c  15018006  dma_cfg r2, zero, r8, 3
000860  6b548ffe  load.d r[9:10], -24(r30)
000864  150c4008  dma_cfg r24, zero, r4, 4
000868  9502700b  dma_cfg r5, zero, r23, 5
00086c  15003010  dma_cfg zero, zero, r3, 8
000870  35000000  dma_run zero
000874  1500700b  dma_cfg zero, zero, r23, 5
000878  15000010  dma_cfg zero, zero, zero, 8
00087c  1d100900  unlock r18
000880  5ba1ffff  j -760
000884  37200800  beq r16, zero, 8
000888  7d000900  xsignal r18, 0
00088c  80330002  core_id r7
000890  9f300000  addli r1, zero, 3
000894  2b0e807f  lui r28, 522240
000898  37941300  beq r7, r1, 260
00089c  3ba92303  bneq r7, r18, 1608
0008a0  7d100700  xwait r14, 0
0008a4  7d100900  xwait r18, 0
0008a8  1d000700  lock zero, r14
0008ac  2b01803f  lui r2, 260096
0008b0  9f713000  addli r3, zero, 31
0008b4  1f032000  addli r6, zero, 16
0008b8  9f000010  addli r1, zero, 2048
0008bc  1f420000  addli r4, zero, 4
0008c0  9f020040  addli r5, zero, 8192
0008c4  0d000002  ew_cfg zero, zero, zero, 1
0008c8  0d110100  ewcoeff_cfg r2, r2, zero, 0
0008cc  0d800104  ew_cfg zero, r3, zero, 2
0008d0  0d030006  ew_cfg r6, zero, zero, 3
0008d4  0d036326  ew_cfg r6, r6, r6, 19
0008d8  2d001000  dsmadd zero, zero, r1, 0
0008dc  9f300000  addli r1, zero, 3
0008e0  0d000026  ew_cfg zero, zero, zero, 19
0008e4  1d100700  unlock r14
0008e8  7d800000  xsignal r1, 0
0008ec  9f600000  addli r1, zero, 6
0008f0  7d800000  xsignal r1, 0
0008f4  9f700000  addli r1, zero, 7
0008f8  7d900000  xwait r1, 0
0008fc  9f401000  addli r1, zero, 12
000900  7d900000  xwait r1, 0
000904  1d000700  lock zero, r14
000908  0d000002  ew_cfg zero, zero, zero, 1
00090c  0d800104  ew_cfg zero, r3, zero, 2
000910  0d030006  ew_cfg r6, zero, zero, 3
000914  0d030326  ew_cfg r6, r6, zero, 19
000918  0d070014  ew_cfg r14, zero, zero, 10
00091c  e3407fff  loadli.w r1,  -68(r30)
000920  0d871b16  ew_cfg r14, r23, r1, 11
000924  abc07f41  lui r1, 268284
000928  0d00001a  ew_cfg zero, zero, zero, 13
00092c  0d00121c  ew_cfg zero, r4, r1, 14
000930  1f020030  addli r4, zero, 6144
000934  9f101000  addli r1, zero, 9
000938  0d00001e  ew_cfg zero, zero, zero, 15
00093c  cd220200  sslut r5, r4, 0
000940  0d000014  ew_cfg zero, zero, zero, 10
000944  0d000026  ew_cfg zero, zero, zero, 19
000948  1d100700  unlock r14
00094c  7d900000  xwait r1, 0
000950  9f601000  addli r1, zero, 14
000954  7d900000  xwait r1, 0
000958  1d000700  lock zero, r14
00095c  9f000050  addli r1, zero, 10240
000960  0d000002  ew_cfg zero, zero, zero, 1
000964  0d102000  ewcoeff_cfg zero, zero, r2, 0
000968  0d800104  ew_cfg zero, r3, zero, 2
00096c  0d030006  ew_cfg r6, zero, zero, 3
000970  0d036326  ew_cfg r6, r6, r6, 19
000974  ad105200  dsmul r1, r4, r5, 0
000978  9f001000  addli r1, zero, 8
00097c  0d000026  ew_cfg zero, zero, zero, 19
000980  1d100700  unlock r14
000984  7d800000  xsignal r1, 0
000988  9f301000  addli r1, zero, 11
00098c  7d800000  xsignal r1, 0
000990  9f501000  addli r1, zero, 13
000994  7d800000  xsignal r1, 0
000998  db1fffff  j -1796
00099c  9f300000  addli r1, zero, 3
0009a0  7d900000  xwait r1, 0
0009a4  9f201000  addli r1, zero, 10
0009a8  7d900000  xwait r1, 0
0009ac  3d000000  xfence
0009b0  00a00300  mfence { lm, sm, gm }
0009b4  eb5c8ffc  load.d r[26:27], -56(r30)
0009b8  db0b0000  j 92
0009bc  1fc40030  addli r8, r1, 6148
0009c0  1fc31030  addli r6, r1, 6156
0009c4  a78c1c00  addli.d r[26:27], r[26:27], 8
0009c8  9f810030  addli r3, r1, 6144
0009cc  9f832030  addli r7, r1, 6160
0009d0  73605400  stores.w r5, 0(r8)
0009d4  6b548fff  load.d r[9:10], -8(r30)
0009d8  73603301  stores.w r19, 0(r6)
0009dc  1f831030  addli r6, r1, 6152
0009e0  9fc23030  addli r5, r1, 6172
0009e4  73e00301  stores.w r16, 0(r7)
0009e8  73607301  stores.w r23, 0(r6)
0009ec  73e0c201  stores.w r28, 0(r5)
0009f0  2b0e807f  lui r28, 522240
0009f4  13a38c02  setneq.d r6, r[26:27], r[9:10]
0009f8  6304dfff  loadli.w r8,  -24(r30)
0009fc  73e08100  stores.w r8, 0(r3)
000a00  9f813030  addli r3, r1, 6168
000a04  9fc02030  addli r1, r1, 6164
000a08  73e04100  stores.w r4, 0(r3)
000a0c  73e02000  stores.w r2, 0(r1)
000a10  37580300  beq r6, zero, 532
000a14  9bb02c00  slli r1, r25, 2
000a18  efc4c000  loads.w r9, 12(r1)
000a1c  efca0000  loads.w r21, 0(r1)
000a20  6fcb4000  loads.w r22, 4(r1)
000a24  6fc58000  loads.w r10, 8(r1)
000a28  6fc70001  loads.w r14, 16(r1)
000a2c  efcd4001  loads.w r27, 20(r1)
000a30  efc58001  loads.w r11, 24(r1)
000a34  6fc4c001  loads.w r8, 28(r1)
000a38  1786f400  and r12, r9, r15
000a3c  1301ce04  setlt.u r2, r28, r12
000a40  3b300100  bneq r2, zero, 12
000a44  9f890400  addli r19, r9, 0
000a48  5b010000  j 8
000a4c  97991401  or r19, r9, r17
000a50  170cf500  and r24, r10, r15
000a54  13018e05  setlt.u r2, r28, r24
000a58  3b300100  bneq r2, zero, 12
000a5c  9f0b0500  addli r23, r10, 0
000a60  5b010000  j 8
000a64  971b1501  or r23, r10, r17
000a68  9703fb00  and r7, r22, r15
000a6c  13017e04  setlt.u r2, r28, r7
000a70  3b300100  bneq r2, zero, 12
000a74  9f020b00  addli r5, r22, 0
000a78  5b010000  j 8
000a7c  97121b01  or r5, r22, r17
000a80  178afa00  and r20, r21, r15
000a84  13014e05  setlt.u r2, r28, r20
000a88  3b300100  bneq r2, zero, 12
000a8c  e70e5fff  storeli.w r21, -24(r30)
000a90  db010000  j 12
000a94  17911a01  or r2, r21, r17
000a98  e70e2ffe  storeli.w r2, -24(r30)
000a9c  9701f400  and r3, r8, r15
000aa0  2b08807f  lui r16, 522240
000aa4  13013e04  setlt.u r2, r28, r3
000aa8  3b300100  bneq r2, zero, 12
000aac  1f0e0400  addli r28, r8, 0
000ab0  5b010000  j 8
000ab4  171e1401  or r28, r8, r17
000ab8  1783f500  and r6, r11, r15
000abc  13016804  setlt.u r2, r16, r6
000ac0  3b300100  bneq r2, zero, 12
000ac4  1f820500  addli r4, r11, 0
000ac8  5b010000  j 8
000acc  17921501  or r4, r11, r17
000ad0  1789fd00  and r18, r27, r15
000ad4  ab064000  lui r13, 1024
000ad8  13012805  setlt.u r2, r16, r18
000adc  3b300100  bneq r2, zero, 12
000ae0  1f810d00  addli r2, r27, 0
000ae4  5b010000  j 8
000ae8  17911d01  or r2, r27, r17
000aec  9708f700  and r17, r14, r15
000af0  13081805  setlt.u r16, r16, r17
000af4  3b300800  bneq r16, zero, 12
000af8  1f080700  addli r16, r14, 0
000afc  5b010000  j 8
000b00  1718d700  or r16, r14, r13
000b04  e346efff  loadli.w r13,  -12(r30)
000b08  138a4605  setlt.u r20, r13, r20
000b0c  bb100a00  bneq r20, zero, 36
000b10  1bca0a01  srli r20, r21, 16
000b14  e346cfff  loadli.w r13,  -28(r30)
000b18  1b0a1a00  andi r20, r20, 1
000b1c  0b9a4a11  add.s r20, r21, r20
000b20  0b1ada10  add.s r20, r20, r13
000b24  ab06ffff  lui r13, 1048560
000b28  9706da00  and r13, r20, r13
000b2c  e70edffe  storeli.w r13, -24(r30)
000b30  e346efff  loadli.w r13,  -12(r30)
000b34  634acfff  loadli.w r20,  -28(r30)
000b38  ab0affff  lui r21, 1048560
000b3c  93837604  setlt.u r7, r13, r7
000b40  3be00300  bneq r7, zero, 24
000b44  9b420b01  srli r5, r22, 16
000b48  9b821200  andi r5, r5, 1
000b4c  8b125b10  add.s r5, r22, r5
000b50  8b924211  add.s r5, r5, r20
000b54  97825201  and r5, r5, r21
000b58  634befff  loadli.w r22,  -12(r30)
000b5c  93038b05  setlt.u r7, r22, r24
000b60  37a20300  beq r7, zero, 136
000b64  9303cb04  setlt.u r7, r22, r12
000b68  37f20300  beq r7, zero, 156
000b6c  93031b05  setlt.u r7, r22, r17
000b70  3be00300  bneq r7, zero, 24
000b74  9b430701  srli r7, r14, 16
000b78  9b831300  andi r7, r7, 1
000b7c  8b137710  add.s r7, r14, r7
000b80  8b934311  add.s r7, r7, r20
000b84  17885301  and r16, r7, r21
000b88  93032b05  setlt.u r7, r22, r18
000b8c  ab084000  lui r17, 1024
000b90  3be00300  bneq r7, zero, 24
000b94  1bc10d01  srli r2, r27, 16
000b98  1b011100  andi r2, r2, 1
000b9c  0b912d10  add.s r2, r27, r2
000ba0  0b114111  add.s r2, r2, r20
000ba4  17015101  and r2, r2, r21
000ba8  13036b04  setlt.u r6, r22, r6
000bac  1f590000  addli r18, zero, 5
000bb0  3b600300  bneq r6, zero, 24
000bb4  1bc20501  srli r4, r11, 16
000bb8  1b021200  andi r4, r4, 1
000bbc  0b924510  add.s r4, r11, r4
000bc0  0b124211  add.s r4, r4, r20
000bc4  17025201  and r4, r4, r21
000bc8  93013b04  setlt.u r3, r22, r3
000bcc  bbc701fe  bneq r3, zero, -528
000bd0  9b410401  srli r3, r8, 16
000bd4  9b811100  andi r3, r3, 1
000bd8  8b113410  add.s r3, r8, r3
000bdc  8b914111  add.s r3, r3, r20
000be0  178e5101  and r28, r3, r21
000be4  5bbbffff  j -552
000be8  9b430501  srli r7, r10, 16
000bec  9b831300  andi r7, r7, 1
000bf0  8b137510  add.s r7, r10, r7
000bf4  8b934311  add.s r7, r7, r20
000bf8  978b5301  and r23, r7, r21
000bfc  9303cb04  setlt.u r7, r22, r12
000c00  bbbd03fe  bneq r7, zero, -148
000c04  9bc30401  srli r7, r9, 16
000c08  9b831300  andi r7, r7, 1
000c0c  8b937410  add.s r7, r9, r7
000c10  8b934311  add.s r7, r7, r20
000c14  97895301  and r19, r7, r21
000c18  93031b05  setlt.u r7, r22, r17
000c1c  37ed03fe  beq r7, zero, -168
000c20  5bedffff  j -152
000c24  9f400000  addli r1, zero, 4
000c28  00200100  mfence { sm }
000c2c  b30c0028  zext_int2long r[26:27], zero
000c30  7d800000  xsignal r1, 0
000c34  9f101000  addli r1, zero, 9
000c38  7d800000  xsignal r1, 0
000c3c  9f700000  addli r1, zero, 7
000c40  7d800000  xsignal r1, 0
000c44  9f001000  addli r1, zero, 8
000c48  7d900000  xwait r1, 0
000c4c  9f301000  addli r1, zero, 11
000c50  7d900000  xwait r1, 0
000c54  9f501000  addli r1, zero, 13
000c58  7d900000  xwait r1, 0
000c5c  9f002000  addli r1, zero, 16
000c60  7d900000  xwait r1, 0
000c64  3d000000  xfence
000c68  00a00300  mfence { lm, sm, gm }
000c6c  db060000  j 52
000c70  eb518fff  load.d r[4:5], -8(r30)
000c74  a7cc0c00  addli.d r[26:27], r[26:27], 4
000c78  1fc11020  addli r2, r1, 4108
000c7c  73605100  stores.w r5, 0(r2)
000c80  1f811020  addli r2, r1, 4104
000c84  93a13c02  setneq.d r3, r[26:27], r[4:5]
000c88  1f820020  addli r4, r1, 4096
000c8c  9fc00020  addli r1, r1, 4100
000c90  73606100  stores.w r6, 0(r2)
000c94  73e07000  stores.w r7, 0(r1)
000c98  7360a200  stores.w r10, 0(r4)
000c9c  b7f601fa  beq r3, zero, -2628
000ca0  9bb02c00  slli r1, r25, 2
000ca4  1f810030  addli r2, r1, 6144
000ca8  9f830040  addli r7, r1, 8192
000cac  9fc21030  addli r5, r1, 6156
000cb0  1fc51050  addli r10, r1, 10252
000cb4  9fc10030  addli r3, r1, 6148
000cb8  1f821030  addli r4, r1, 6152
000cbc  6fc40300  loads.w r8, 0(r7)
000cc0  6f410100  loads.w r2, 0(r2)
000cc4  6fc30200  loads.w r6, 0(r5)
000cc8  9fc20040  addli r5, r1, 8196
000ccc  9f831040  addli r7, r1, 8200
000cd0  efc10100  loads.w r3, 0(r3)
000cd4  6f420200  loads.w r4, 0(r4)
000cd8  efc50200  loads.w r11, 0(r5)
000cdc  9fc21040  addli r5, r1, 8204
000ce0  efc30300  loads.w r7, 0(r7)
000ce4  efc40200  loads.w r9, 0(r5)
000ce8  ef420500  loads.w r5, 0(r10)
000cec  1f851050  addli r10, r1, 10248
000cf0  6f450500  loads.w r10, 0(r10)
000cf4  1701f100  and r2, r2, r15
000cf8  1704f400  and r8, r8, r15
000cfc  9306c101  seteq r13, r2, r28
000d00  93080100  seteq r17, r2, zero
000d04  0b018148  max.u r2, r2, r8
000d08  13070400  seteq r14, r8, zero
000d0c  1308c401  seteq r16, r8, r28
000d10  1fc40050  addli r8, r1, 10244
000d14  6f460400  loads.w r12, 0(r8)
000d18  13012e04  setlt.u r2, r28, r2
000d1c  1784e600  and r8, r13, r14
000d20  97860801  and r13, r17, r16
000d24  1714d400  or r8, r8, r13
000d28  97168100  or r13, r2, r8
000d2c  2b04c07f  lui r8, 523264
000d30  2b01c07f  lui r2, 523264
000d34  3bb00600  bneq r13, zero, 12
000d38  1f810050  addli r2, r1, 10240
000d3c  6f410100  loads.w r2, 0(r2)
000d40  9781f100  and r3, r3, r15
000d44  9785f500  and r11, r11, r15
000d48  9386c101  seteq r13, r3, r28
000d4c  93880100  seteq r17, r3, zero
000d50  13870500  seteq r14, r11, zero
000d54  1388c501  seteq r16, r11, r28
000d58  8b81b148  max.u r3, r3, r11
000d5c  93013e04  setlt.u r3, r28, r3
000d60  9785e600  and r11, r13, r14
000d64  97860801  and r13, r17, r16
000d68  9795d500  or r11, r11, r13
000d6c  9795b100  or r11, r3, r11
000d70  ab01c07f  lui r3, 523264
000d74  3ba00500  bneq r11, zero, 8
000d78  9f010600  addli r3, r12, 0
000d7c  1702f200  and r4, r4, r15
000d80  9783f300  and r7, r7, r15
000d84  9305c201  seteq r11, r4, r28
000d88  13070200  seteq r14, r4, zero
000d8c  13860300  seteq r12, r7, zero
000d90  9386c301  seteq r13, r7, r28
000d94  0b027248  max.u r4, r4, r7
000d98  13024e04  setlt.u r4, r28, r4
000d9c  9783c500  and r7, r11, r12
000da0  9705d700  and r11, r14, r13
000da4  2b074000  lui r14, 1024
000da8  9793b300  or r7, r7, r11
000dac  97137200  or r7, r4, r7
000db0  2b02c07f  lui r4, 523264
000db4  3ba00300  bneq r7, zero, 8
000db8  1f020500  addli r4, r10, 0
000dbc  9783f400  and r7, r9, r15
000dc0  1703f300  and r6, r6, r15
000dc4  9304c301  seteq r9, r6, r28
000dc8  13060300  seteq r12, r6, zero
000dcc  13850300  seteq r10, r7, zero
000dd0  9385c301  seteq r11, r7, r28
000dd4  0b037348  max.u r6, r6, r7
000dd8  13036e04  setlt.u r6, r28, r6
000ddc  9783a400  and r7, r9, r10
000de0  9704b600  and r9, r12, r11
000de4  97939300  or r7, r7, r9
000de8  17137300  or r6, r6, r7
000dec  3b200300  bneq r6, zero, 8
000df0  1f840200  addli r8, r5, 0
000df4  9704f400  and r9, r8, r15
000df8  93029e04  setlt.u r5, r28, r9
000dfc  3bb00200  bneq r5, zero, 12
000e00  9f020400  addli r5, r8, 0
000e04  5b010000  j 8
000e08  9712e400  or r5, r8, r14
000e0c  9705f200  and r11, r4, r15
000e10  1303be04  setlt.u r6, r28, r11
000e14  3b300300  bneq r6, zero, 12
000e18  1f030200  addli r6, r4, 0
000e1c  5b010000  j 8
000e20  1713e200  or r6, r4, r14
000e24  1786f100  and r12, r3, r15
000e28  9303ce04  setlt.u r7, r28, r12
000e2c  3bb00300  bneq r7, zero, 12
000e30  9f830100  addli r7, r3, 0
000e34  5b010000  j 8
000e38  9793e100  or r7, r3, r14
000e3c  9706f100  and r13, r2, r15
000e40  1305de04  setlt.u r10, r28, r13
000e44  3b500500  bneq r10, zero, 20
000e48  1f050100  addli r10, r2, 0
000e4c  9306db04  setlt.u r13, r22, r13
000e50  37d00600  beq r13, zero, 20
000e54  db040000  j 36
000e58  1715e100  or r10, r2, r14
000e5c  9306db04  setlt.u r13, r22, r13
000e60  3be00600  bneq r13, zero, 24
000e64  1b450101  srli r10, r2, 16
000e68  1b051500  andi r10, r10, 1
000e6c  0b11a110  add.s r2, r2, r10
000e70  0b114111  add.s r2, r2, r20
000e74  17055101  and r10, r2, r21
000e78  1301cb04  setlt.u r2, r22, r12
000e7c  37600100  beq r2, zero, 24
000e80  1301bb04  setlt.u r2, r22, r11
000e84  b7300100  beq r2, zero, 44
000e88  13019b04  setlt.u r2, r22, r9
000e8c  bb1701fe  bneq r2, zero, -540
000e90  db070000  j 60
000e94  1bc10101  srli r2, r3, 16
000e98  1b011100  andi r2, r2, 1
000e9c  0b912110  add.s r2, r3, r2
000ea0  0b114111  add.s r2, r2, r20
000ea4  97035101  and r7, r2, r21
000ea8  1301bb04  setlt.u r2, r22, r11
000eac  3b7f01fe  bneq r2, zero, -36
000eb0  1b410201  srli r2, r4, 16
000eb4  1b011100  andi r2, r2, 1
000eb8  0b112210  add.s r2, r4, r2
000ebc  0b114111  add.s r2, r2, r20
000ec0  17035101  and r6, r2, r21
000ec4  13019b04  setlt.u r2, r22, r9
000ec8  bb2601fe  bneq r2, zero, -600
000ecc  1b410401  srli r2, r8, 16
000ed0  1b011100  andi r2, r2, 1
000ed4  0b112410  add.s r2, r8, r2
000ed8  0b114111  add.s r2, r2, r20
000edc  97025101  and r5, r2, r21
000ee0  5bb2ffff  j -624
000ee4  bbce03f8  bneq r7, zero, -3152
000ee8  9f711000  addli r3, zero, 15
000eec  97307403  sll.d r[2:3], r[9:10], r23
000ef0  7d900100  xwait r3, 0
000ef4  eb510f01  load.d r[4:5], 16(r30)
000ef8  1d000900  lock zero, r18
000efc  958b0b00  dma_cfg r23, r23, zero, 0
000f00  15800b02  dma_cfg zero, r23, zero, 1
000f04  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
000f08  9f018000  addli r3, zero, 64
000f0c  1f028020  addli r4, zero, 4160
000f10  15010004  dma_cfg r2, zero, zero, 2
000f14  95003206  dma_cfg r1, r4, r3, 3
000f18  1f022000  addli r4, zero, 16
000f1c  9f000008  addli r1, zero, 1024
000f20  1f010010  addli r2, zero, 2048
000f24  95014c08  dma_cfg r3, r24, r4, 4
000f28  9500710b  dma_cfg r1, r2, r23, 5
000f2c  15000010  dma_cfg zero, zero, zero, 8
000f30  35000000  dma_run zero
000f34  1500700b  dma_cfg zero, zero, r23, 5
000f38  15000010  dma_cfg zero, zero, zero, 8
000f3c  1d100900  unlock r18
000f40  7d000200  xsignal r4, 0
000f44  5b6afeff  j -3248
000f48  7d000000  xsignal zero, 0
000f4c  bbe00300  bneq r7, zero, 56
000f50  9f200000  addli r1, zero, 2
000f54  7d100000  xwait zero, 0
000f58  7d100000  xwait zero, 0
000f5c  7d100000  xwait zero, 0
000f60  7d100000  xwait zero, 0
000f64  7d100000  xwait zero, 0
000f68  7d100000  xwait zero, 0
000f6c  7d100000  xwait zero, 0
000f70  7d100000  xwait zero, 0
000f74  1d800000  lock zero, r1
000f78  0d000020  ew_cfg zero, zero, zero, 16
000f7c  1d900000  unlock r1
000f80  7d400000  xsignal_mode_cfg zero
000f84  9f8e9e00  addli sp, sp, 72
000f88  00a00300  mfence { lm, sm, gm }
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
