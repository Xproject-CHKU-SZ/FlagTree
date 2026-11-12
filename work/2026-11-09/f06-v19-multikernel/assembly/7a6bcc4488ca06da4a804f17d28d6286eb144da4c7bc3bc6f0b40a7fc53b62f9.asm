; SHA-256 7a6bcc4488ca06da4a804f17d28d6286eb144da4c7bc3bc6f0b40a7fc53b62f9
; P800 SDNN · XTDK LLVM 19 · 1182 / 1182 words decoded
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
0000b4  9f8eeefe  addli sp, sp, -144
0000b8  9f100000  addli r1, zero, 1
0000bc  80330002  core_id r7
0000c0  1f8fae00  addli r30, sp, 80
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
0001b0  e3005f00  loadli.w r1,  40(r30)
0001b4  63415f00  loadli.w r2,  44(r30)
0001b8  00d20002  load_param_i r4, 1
0001bc  e3016f00  loadli.w r3,  48(r30)
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
0001e8  4b281106  ble.s r2, r1, 3592
0001ec  33110128  sext_int2long r[3:4], r2
0001f0  9f020008  addli r5, zero, 1024
0001f4  1f530000  addli r6, zero, 5
0001f8  ab094000  lui r19, 1024
0001fc  9f3d1000  addli r27, zero, 11
000200  1f2d0000  addli r26, zero, 2
000204  9f042000  addli r9, zero, 16
000208  1f1e0000  addli r28, zero, 1
00020c  733c2ffa  store.d r[3:4], -72(r30)
000210  b3910028  sext_int2long r[4:5], r1
000214  abf0ff7f  lui r1, 524287
000218  2bf17fff  lui r2, 1046527
00021c  338c0228  zext_int2long r[25:26], r5
000220  9b90f0ff  ori r1, r1, 4095
000224  73388ffd  store.d r[25:26], -48(r30)
000228  e74f1ffe  storeli.w r1, -4(r30)
00022c  ab700000  lui r1, 7
000230  9b90f0ff  ori r1, r1, 4095
000234  e74e1ffe  storeli.w r1, -20(r30)
000238  abf07f7f  lui r1, 522239
00023c  9b9af0ff  ori r21, r1, 4095
000240  ab800d00  lui r1, 216
000244  9b90d0b4  ori r1, r1, 2893
000248  674b1ffe  storeli.w r1, -76(r30)
00024c  9b10f1ff  ori r1, r2, 4095
000250  670b1ffe  storeli.w r1, -80(r30)
000254  b3000028  zext_int2long r[2:3], zero
000258  73301ffc  store.d r[2:3], -64(r30)
00025c  5b090000  j 72
000260  9f301000  addli r1, zero, 11
000264  00200100  mfence { sm }
000268  9f3d1000  addli r27, zero, 11
00026c  80330002  core_id r7
000270  1f530000  addli r6, zero, 5
000274  1f2d0000  addli r26, zero, 2
000278  9f042000  addli r9, zero, 16
00027c  1f1e0000  addli r28, zero, 1
000280  7d800000  xsignal r1, 0
000284  9f601000  addli r1, zero, 14
000288  7d800000  xsignal r1, 0
00028c  eb518ffc  load.d r[4:5], -56(r30)
000290  6b5c0ffd  load.d r[25:26], -48(r30)
000294  eb508ffb  load.d r[2:3], -72(r30)
000298  a7910100  addli.d r[4:5], r[4:5], 1
00029c  93b01104  setlt.sl r1, r[4:5], r[2:3]
0002a0  37c50006  beq r1, zero, 3408
0002a4  e3006f00  loadli.w r1,  48(r30)
0002a8  63415f00  loadli.w r2,  44(r30)
0002ac  9f121000  addli r5, zero, 9
0002b0  73343ffc  store.d r[4:5], -56(r30)
0002b4  8b901130  div.s r1, r3, r1
0002b8  8b902030  div.s r1, r1, r2
0002bc  b3900028  sext_int2long r[2:3], r1
0002c0  17b55002  sll.d r[11:12], r[2:3], r5
0002c4  9f600000  addli r1, zero, 6
0002c8  7330affe  store.d r[11:12], -32(r30)
0002cc  b7f91300  beq r7, r1, 636
0002d0  3baac301  bneq r7, r28, 648
0002d4  9f440000  addli r9, zero, 4
0002d8  eb510f00  load.d r[4:5], 0(r30)
0002dc  9f330000  addli r7, zero, 3
0002e0  9730c503  sll.d r[2:3], r[11:12], r28
0002e4  1f750000  addli r10, zero, 7
0002e8  9f051000  addli r11, zero, 8
0002ec  9f221000  addli r5, zero, 10
0002f0  1f341000  addli r8, zero, 11
0002f4  1f561000  addli r12, zero, 13
0002f8  9f661000  addli r13, zero, 14
0002fc  1f781000  addli r16, zero, 15
000300  9f072000  addli r15, zero, 16
000304  9f182000  addli r17, zero, 17
000308  1f272000  addli r14, zero, 18
00030c  1f0b8000  addli r22, zero, 64
000310  9f0b0001  addli r23, zero, 128
000314  1f090010  addli r18, zero, 2048
000318  1f0a0000  addli r20, zero, 0
00031c  9f3d1000  addli r27, zero, 11
000320  7d900400  xwait r9, 0
000324  1d000300  lock zero, r6
000328  15000014  dma_cfg zero, zero, zero, 10
00032c  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
000330  1f620000  addli r4, zero, 6
000334  9f111000  addli r3, zero, 9
000338  1500c015  dma_cfg zero, zero, r28, 10
00033c  1500a015  dma_cfg zero, zero, r26, 10
000340  15007014  dma_cfg zero, zero, r7, 10
000344  15009014  dma_cfg zero, zero, r9, 10
000348  15006014  dma_cfg zero, zero, r6, 10
00034c  15004014  dma_cfg zero, zero, r4, 10
000350  1500a014  dma_cfg zero, zero, r10, 10
000354  1500b014  dma_cfg zero, zero, r11, 10
000358  15003014  dma_cfg zero, zero, r3, 10
00035c  15005014  dma_cfg zero, zero, r5, 10
000360  15008014  dma_cfg zero, zero, r8, 10
000364  1f441000  addli r8, zero, 12
000368  15008014  dma_cfg zero, zero, r8, 10
00036c  1500c014  dma_cfg zero, zero, r12, 10
000370  1500d014  dma_cfg zero, zero, r13, 10
000374  15000015  dma_cfg zero, zero, r16, 10
000378  1500f014  dma_cfg zero, zero, r15, 10
00037c  15001015  dma_cfg zero, zero, r17, 10
000380  1500e014  dma_cfg zero, zero, r14, 10
000384  1f372000  addli r14, zero, 19
000388  1500e014  dma_cfg zero, zero, r14, 10
00038c  1f472000  addli r14, zero, 20
000390  1500e014  dma_cfg zero, zero, r14, 10
000394  1f572000  addli r14, zero, 21
000398  1500e014  dma_cfg zero, zero, r14, 10
00039c  1f672000  addli r14, zero, 22
0003a0  1500e014  dma_cfg zero, zero, r14, 10
0003a4  1f772000  addli r14, zero, 23
0003a8  1500e014  dma_cfg zero, zero, r14, 10
0003ac  1f073000  addli r14, zero, 24
0003b0  1500e014  dma_cfg zero, zero, r14, 10
0003b4  1f173000  addli r14, zero, 25
0003b8  1500e014  dma_cfg zero, zero, r14, 10
0003bc  1f273000  addli r14, zero, 26
0003c0  1500e014  dma_cfg zero, zero, r14, 10
0003c4  1f373000  addli r14, zero, 27
0003c8  1500e014  dma_cfg zero, zero, r14, 10
0003cc  1f473000  addli r14, zero, 28
0003d0  1500e014  dma_cfg zero, zero, r14, 10
0003d4  1f573000  addli r14, zero, 29
0003d8  1500e014  dma_cfg zero, zero, r14, 10
0003dc  1f673000  addli r14, zero, 30
0003e0  1500e014  dma_cfg zero, zero, r14, 10
0003e4  1f773000  addli r14, zero, 31
0003e8  1500e014  dma_cfg zero, zero, r14, 10
0003ec  150e0e00  dma_cfg r28, r28, zero, 0
0003f0  150e0002  dma_cfg r28, zero, zero, 1
0003f4  15000004  dma_cfg zero, zero, zero, 2
0003f8  15006007  dma_cfg zero, zero, r22, 3
0003fc  950bf008  dma_cfg r23, zero, r15, 4
000400  1509c00b  dma_cfg r18, zero, r28, 5
000404  15000010  dma_cfg zero, zero, zero, 8
000408  35000000  dma_run zero
00040c  1500c00b  dma_cfg zero, zero, r28, 5
000410  15000010  dma_cfg zero, zero, zero, 8
000414  1d100300  unlock r6
000418  1d800400  lock zero, r9
00041c  150e0e00  dma_cfg r28, r28, zero, 0
000420  15000104  dma_cfg zero, r2, zero, 2
000424  158b6007  dma_cfg r22, r1, r22, 3
000428  9f000008  addli r1, zero, 1024
00042c  1f311000  addli r2, zero, 11
000430  950bfb08  dma_cfg r23, r22, r15, 4
000434  1589c00b  dma_cfg r18, r1, r28, 5
000438  9f002000  addli r1, zero, 16
00043c  15000010  dma_cfg zero, zero, zero, 8
000440  35000000  dma_run zero
000444  1500c00b  dma_cfg zero, zero, r28, 5
000448  15000010  dma_cfg zero, zero, zero, 8
00044c  1d900400  unlock r9
000450  1d000300  lock zero, r6
000454  15000014  dma_cfg zero, zero, zero, 10
000458  1500c015  dma_cfg zero, zero, r28, 10
00045c  1500a015  dma_cfg zero, zero, r26, 10
000460  15007014  dma_cfg zero, zero, r7, 10
000464  15009014  dma_cfg zero, zero, r9, 10
000468  9f042000  addli r9, zero, 16
00046c  15006014  dma_cfg zero, zero, r6, 10
000470  15004014  dma_cfg zero, zero, r4, 10
000474  1500a014  dma_cfg zero, zero, r10, 10
000478  1500b014  dma_cfg zero, zero, r11, 10
00047c  6b550ffe  load.d r[11:12], -32(r30)
000480  15003014  dma_cfg zero, zero, r3, 10
000484  15005014  dma_cfg zero, zero, r5, 10
000488  15002014  dma_cfg zero, zero, r2, 10
00048c  1f212000  addli r2, zero, 18
000490  15008014  dma_cfg zero, zero, r8, 10
000494  1f040a00  addli r8, r20, 0
000498  1500c014  dma_cfg zero, zero, r12, 10
00049c  1500d014  dma_cfg zero, zero, r13, 10
0004a0  15000015  dma_cfg zero, zero, r16, 10
0004a4  15001014  dma_cfg zero, zero, r1, 10
0004a8  15001015  dma_cfg zero, zero, r17, 10
0004ac  15002014  dma_cfg zero, zero, r2, 10
0004b0  1f312000  addli r2, zero, 19
0004b4  15002014  dma_cfg zero, zero, r2, 10
0004b8  1f412000  addli r2, zero, 20
0004bc  15002014  dma_cfg zero, zero, r2, 10
0004c0  1f512000  addli r2, zero, 21
0004c4  15002014  dma_cfg zero, zero, r2, 10
0004c8  1f612000  addli r2, zero, 22
0004cc  15002014  dma_cfg zero, zero, r2, 10
0004d0  1f712000  addli r2, zero, 23
0004d4  15002014  dma_cfg zero, zero, r2, 10
0004d8  1f013000  addli r2, zero, 24
0004dc  15002014  dma_cfg zero, zero, r2, 10
0004e0  1f113000  addli r2, zero, 25
0004e4  15002014  dma_cfg zero, zero, r2, 10
0004e8  1f213000  addli r2, zero, 26
0004ec  15002014  dma_cfg zero, zero, r2, 10
0004f0  1f313000  addli r2, zero, 27
0004f4  15002014  dma_cfg zero, zero, r2, 10
0004f8  1f413000  addli r2, zero, 28
0004fc  15002014  dma_cfg zero, zero, r2, 10
000500  1f513000  addli r2, zero, 29
000504  15002014  dma_cfg zero, zero, r2, 10
000508  1f613000  addli r2, zero, 30
00050c  15002014  dma_cfg zero, zero, r2, 10
000510  1500e014  dma_cfg zero, zero, r14, 10
000514  150e0e00  dma_cfg r28, r28, zero, 0
000518  150e0002  dma_cfg r28, zero, zero, 1
00051c  15000004  dma_cfg zero, zero, zero, 2
000520  15006007  dma_cfg zero, zero, r22, 3
000524  950b1008  dma_cfg r23, zero, r1, 4
000528  1509c00b  dma_cfg r18, zero, r28, 5
00052c  15000010  dma_cfg zero, zero, zero, 8
000530  35000000  dma_run zero
000534  1500c00b  dma_cfg zero, zero, r28, 5
000538  15000010  dma_cfg zero, zero, zero, 8
00053c  1d100300  unlock r6
000540  7d000d00  xsignal r26, 0
000544  5b030000  j 24
000548  1f140000  addli r8, zero, 1
00054c  9f600000  addli r1, zero, 6
000550  7d900000  xwait r1, 0
000554  5b010000  j 8
000558  1f040000  addli r8, zero, 0
00055c  8f108571  mod.sl r[2:3], r[11:12], r[25:26]
000560  9f211000  addli r3, zero, 10
000564  a7f0f00b  addli.d r[2:3], r[2:3], 1535
000568  97c83002  srl.d r[18:19], r[2:3], r3
00056c  eb500ffc  load.d r[2:3], -64(r30)
000570  93a01800  seteq.d r1, r[18:19], r[2:3]
000574  1f010004  addli r2, zero, 512
000578  33010128  zext_int2long r[3:4], r2
00057c  73382ffe  store.d r[3:4], -16(r30)
000580  3bec0000  bneq r1, zero, 792
000584  330b0e28  zext_int2long r[23:24], r28
000588  33070028  zext_int2long r[15:16], zero
00058c  db020000  j 20
000590  93201b05  setlt.ul r1, r[23:24], r[18:19]
000594  0b27e310  add.ul r[15:16], r[7:8], r[15:16]
000598  330b0d28  zext_int2long r[23:24], r26
00059c  b7fb0000  beq r1, zero, 764
0005a0  8b20a710  add.ul r[2:3], r[15:16], r[11:12]
0005a4  eb520fff  load.d r[6:7], -16(r30)
0005a8  8f908071  mod.sl r[2:3], r[2:3], r[25:26]
0005ac  8bb2e218  sub.sl r[6:7], r[6:7], r[15:16]
0005b0  8b311c18  sub.sl r[4:5], r[25:26], r[2:3]
0005b4  0ba33240  min.ul r[7:8], r[6:7], r[4:5]
0005b8  376f04fe  beq r8, zero, -40
0005bc  9b312700  slli r3, r14, 2
0005c0  9f590000  addli r19, zero, 5
0005c4  17b2c003  sll.d r[5:6], r[2:3], r28
0005c8  9f4d0000  addli r27, zero, 4
0005cc  1f181000  addli r16, zero, 9
0005d0  1f5c1000  addli r24, zero, 13
0005d4  9f6c1000  addli r25, zero, 14
0005d8  1f7a1000  addli r20, zero, 15
0005dc  9f062000  addli r13, zero, 16
0005e0  9f140000  addli r9, zero, 1
0005e4  1f060400  addli r12, r8, 0
0005e8  1f048000  addli r8, zero, 64
0005ec  9f050001  addli r11, zero, 128
0005f0  1b351300  slli r10, r6, 1
0005f4  9f800110  addli r1, r3, 2048
0005f8  6b518f00  load.d r[3:4], 8(r30)
0005fc  1d800900  lock zero, r19
000600  15000014  dma_cfg zero, zero, zero, 10
000604  1500c015  dma_cfg zero, zero, r28, 10
000608  1f2e0000  addli r28, zero, 2
00060c  8b214110  add.ul r[4:5], r[3:4], r[5:6]
000610  1f310000  addli r2, zero, 3
000614  1500a015  dma_cfg zero, zero, r26, 10
000618  1f4d1000  addli r26, zero, 12
00061c  15002014  dma_cfg zero, zero, r2, 10
000620  1f610000  addli r2, zero, 6
000624  1500b015  dma_cfg zero, zero, r27, 10
000628  15003015  dma_cfg zero, zero, r19, 10
00062c  15002014  dma_cfg zero, zero, r2, 10
000630  1f710000  addli r2, zero, 7
000634  15002014  dma_cfg zero, zero, r2, 10
000638  1f011000  addli r2, zero, 8
00063c  15002014  dma_cfg zero, zero, r2, 10
000640  1f211000  addli r2, zero, 10
000644  15000015  dma_cfg zero, zero, r16, 10
000648  15002014  dma_cfg zero, zero, r2, 10
00064c  1f311000  addli r2, zero, 11
000650  15002014  dma_cfg zero, zero, r2, 10
000654  1f112000  addli r2, zero, 17
000658  1500a015  dma_cfg zero, zero, r26, 10
00065c  15008015  dma_cfg zero, zero, r24, 10
000660  15009015  dma_cfg zero, zero, r25, 10
000664  15004015  dma_cfg zero, zero, r20, 10
000668  1500d014  dma_cfg zero, zero, r13, 10
00066c  15002014  dma_cfg zero, zero, r2, 10
000670  1f212000  addli r2, zero, 18
000674  15002014  dma_cfg zero, zero, r2, 10
000678  1f312000  addli r2, zero, 19
00067c  15002014  dma_cfg zero, zero, r2, 10
000680  1f412000  addli r2, zero, 20
000684  15002014  dma_cfg zero, zero, r2, 10
000688  1f512000  addli r2, zero, 21
00068c  15002014  dma_cfg zero, zero, r2, 10
000690  1f612000  addli r2, zero, 22
000694  15002014  dma_cfg zero, zero, r2, 10
000698  1f712000  addli r2, zero, 23
00069c  15002014  dma_cfg zero, zero, r2, 10
0006a0  1f013000  addli r2, zero, 24
0006a4  15002014  dma_cfg zero, zero, r2, 10
0006a8  1f113000  addli r2, zero, 25
0006ac  15002014  dma_cfg zero, zero, r2, 10
0006b0  1f213000  addli r2, zero, 26
0006b4  15002014  dma_cfg zero, zero, r2, 10
0006b8  1f313000  addli r2, zero, 27
0006bc  15002014  dma_cfg zero, zero, r2, 10
0006c0  1f413000  addli r2, zero, 28
0006c4  15002014  dma_cfg zero, zero, r2, 10
0006c8  1f513000  addli r2, zero, 29
0006cc  15002014  dma_cfg zero, zero, r2, 10
0006d0  1f613000  addli r2, zero, 30
0006d4  15002014  dma_cfg zero, zero, r2, 10
0006d8  1f713000  addli r2, zero, 31
0006dc  15002014  dma_cfg zero, zero, r2, 10
0006e0  1f010010  addli r2, zero, 2048
0006e4  95840400  dma_cfg r9, r9, zero, 0
0006e8  95040002  dma_cfg r9, zero, zero, 1
0006ec  15000004  dma_cfg zero, zero, zero, 2
0006f0  15018006  dma_cfg r2, zero, r8, 3
0006f4  9505d008  dma_cfg r11, zero, r13, 4
0006f8  1501900a  dma_cfg r2, zero, r9, 5
0006fc  0b91b038  mod.s r2, r1, r11
000700  15000010  dma_cfg zero, zero, zero, 8
000704  35000000  dma_run zero
000708  1500900a  dma_cfg zero, zero, r9, 5
00070c  15000010  dma_cfg zero, zero, zero, 8
000710  1d900900  unlock r19
000714  1d800d00  lock zero, r27
000718  95840400  dma_cfg r9, r9, zero, 0
00071c  9b421100  srli r5, r2, 1
000720  15000204  dma_cfg zero, r4, zero, 2
000724  8b925018  sub.s r5, r1, r5
000728  8b902018  sub.s r1, r1, r2
00072c  1f310000  addli r2, zero, 3
000730  9f828200  addli r5, r5, 64
000734  95828106  dma_cfg r5, r3, r8, 3
000738  abf2ff7f  lui r5, 524287
00073c  9b312300  slli r3, r6, 2
000740  1f723300  addli r4, r6, 31
000744  9b9202f8  ori r5, r5, 3968
000748  1b425200  srli r4, r4, 5
00074c  97825100  and r5, r3, r5
000750  9b01e503  andi r3, r10, 62
000754  95054408  dma_cfg r11, r8, r4, 4
000758  97923200  or r5, r5, r3
00075c  9502950a  dma_cfg r5, r10, r9, 5
000760  15003010  dma_cfg zero, zero, r3, 8
000764  35000000  dma_run zero
000768  1500900a  dma_cfg zero, zero, r9, 5
00076c  15000010  dma_cfg zero, zero, zero, 8
000770  1d900d00  unlock r27
000774  1d800900  lock zero, r19
000778  15000014  dma_cfg zero, zero, zero, 10
00077c  15009014  dma_cfg zero, zero, r9, 10
000780  9f042000  addli r9, zero, 16
000784  1500c015  dma_cfg zero, zero, r28, 10
000788  1f1e0000  addli r28, zero, 1
00078c  15002014  dma_cfg zero, zero, r2, 10
000790  1f610000  addli r2, zero, 6
000794  1500b015  dma_cfg zero, zero, r27, 10
000798  9f3d1000  addli r27, zero, 11
00079c  15003015  dma_cfg zero, zero, r19, 10
0007a0  15002014  dma_cfg zero, zero, r2, 10
0007a4  1f710000  addli r2, zero, 7
0007a8  15002014  dma_cfg zero, zero, r2, 10
0007ac  1f011000  addli r2, zero, 8
0007b0  15002014  dma_cfg zero, zero, r2, 10
0007b4  1f211000  addli r2, zero, 10
0007b8  15000015  dma_cfg zero, zero, r16, 10
0007bc  15002014  dma_cfg zero, zero, r2, 10
0007c0  1f311000  addli r2, zero, 11
0007c4  15002014  dma_cfg zero, zero, r2, 10
0007c8  1f112000  addli r2, zero, 17
0007cc  1500a015  dma_cfg zero, zero, r26, 10
0007d0  1f2d0000  addli r26, zero, 2
0007d4  15008015  dma_cfg zero, zero, r24, 10
0007d8  15009015  dma_cfg zero, zero, r25, 10
0007dc  6b5c0ffd  load.d r[25:26], -48(r30)
0007e0  15004015  dma_cfg zero, zero, r20, 10
0007e4  1500d014  dma_cfg zero, zero, r13, 10
0007e8  15002014  dma_cfg zero, zero, r2, 10
0007ec  1f212000  addli r2, zero, 18
0007f0  15002014  dma_cfg zero, zero, r2, 10
0007f4  1f312000  addli r2, zero, 19
0007f8  15002014  dma_cfg zero, zero, r2, 10
0007fc  1f412000  addli r2, zero, 20
000800  15002014  dma_cfg zero, zero, r2, 10
000804  1f512000  addli r2, zero, 21
000808  15002014  dma_cfg zero, zero, r2, 10
00080c  1f612000  addli r2, zero, 22
000810  15002014  dma_cfg zero, zero, r2, 10
000814  1f712000  addli r2, zero, 23
000818  15002014  dma_cfg zero, zero, r2, 10
00081c  1f013000  addli r2, zero, 24
000820  15002014  dma_cfg zero, zero, r2, 10
000824  1f113000  addli r2, zero, 25
000828  15002014  dma_cfg zero, zero, r2, 10
00082c  1f213000  addli r2, zero, 26
000830  15002014  dma_cfg zero, zero, r2, 10
000834  1f313000  addli r2, zero, 27
000838  15002014  dma_cfg zero, zero, r2, 10
00083c  1f413000  addli r2, zero, 28
000840  15002014  dma_cfg zero, zero, r2, 10
000844  1f513000  addli r2, zero, 29
000848  15002014  dma_cfg zero, zero, r2, 10
00084c  1f613000  addli r2, zero, 30
000850  15002014  dma_cfg zero, zero, r2, 10
000854  1f713000  addli r2, zero, 31
000858  15002014  dma_cfg zero, zero, r2, 10
00085c  150e0e00  dma_cfg r28, r28, zero, 0
000860  150e0002  dma_cfg r28, zero, zero, 1
000864  15000004  dma_cfg zero, zero, zero, 2
000868  95008006  dma_cfg r1, zero, r8, 3
00086c  1f040600  addli r8, r12, 0
000870  95054008  dma_cfg r11, zero, r4, 4
000874  6b550ffe  load.d r[11:12], -32(r30)
000878  9502c00b  dma_cfg r5, zero, r28, 5
00087c  15003010  dma_cfg zero, zero, r3, 8
000880  35000000  dma_run zero
000884  1500c00b  dma_cfg zero, zero, r28, 5
000888  15000010  dma_cfg zero, zero, zero, 8
00088c  1d900900  unlock r19
000890  ab094000  lui r19, 1024
000894  db9fffff  j -772
000898  1f530000  addli r6, zero, 5
00089c  37200400  beq r8, zero, 8
0008a0  7d000300  xsignal r6, 0
0008a4  80330002  core_id r7
0008a8  9f300000  addli r1, zero, 3
0008ac  b7f51300  beq r7, r1, 380
0008b0  3beb6302  bneq r7, r6, 1752
0008b4  7d100d00  xwait r26, 0
0008b8  7d100300  xwait r6, 0
0008bc  1d000d00  lock zero, r26
0008c0  2b02803f  lui r4, 260096
0008c4  9f723000  addli r5, zero, 31
0008c8  1f062000  addli r12, zero, 16
0008cc  9f000010  addli r1, zero, 2048
0008d0  1f310000  addli r2, zero, 3
0008d4  9f511000  addli r3, zero, 13
0008d8  2b0400c1  lui r8, 790528
0008dc  9f741000  addli r9, zero, 15
0008e0  1f75f003  addli r10, zero, 511
0008e4  9f050040  addli r11, zero, 8192
0008e8  0d000002  ew_cfg zero, zero, zero, 1
0008ec  0d120200  ewcoeff_cfg r4, r4, zero, 0
0008f0  0d800204  ew_cfg zero, r5, zero, 2
0008f4  0d060006  ew_cfg r12, zero, zero, 3
0008f8  0d06c626  ew_cfg r12, r12, r12, 19
0008fc  2d001000  dsmadd zero, zero, r1, 0
000900  9f600000  addli r1, zero, 6
000904  0d000026  ew_cfg zero, zero, zero, 19
000908  1d100d00  unlock r26
00090c  7d000100  xsignal r2, 0
000910  7d800000  xsignal r1, 0
000914  9f700000  addli r1, zero, 7
000918  7d900000  xwait r1, 0
00091c  9f601000  addli r1, zero, 14
000920  7d900000  xwait r1, 0
000924  1d000d00  lock zero, r26
000928  0d000002  ew_cfg zero, zero, zero, 1
00092c  0d800204  ew_cfg zero, r5, zero, 2
000930  0d060006  ew_cfg r12, zero, zero, 3
000934  0d060626  ew_cfg r12, r12, zero, 19
000938  8d010014  ew_cfg r3, zero, zero, 10
00093c  e3406fff  loadli.w r1,  -76(r30)
000940  0d0d1e16  ew_cfg r26, r28, r1, 11
000944  9f400000  addli r1, zero, 4
000948  0d00201a  ew_cfg zero, zero, r2, 13
00094c  2b81ff40  lui r2, 266232
000950  0d84201c  ew_cfg r8, r1, r2, 14
000954  1f010020  addli r2, zero, 4096
000958  1f040030  addli r8, zero, 6144
00095c  9f101000  addli r1, zero, 9
000960  0d00021e  ew_cfg zero, r4, zero, 15
000964  4d240100  sslut r8, r2, 0
000968  0d000014  ew_cfg zero, zero, zero, 10
00096c  0d000026  ew_cfg zero, zero, zero, 19
000970  1d100d00  unlock r26
000974  7d900000  xwait r1, 0
000978  7d900400  xwait r9, 0
00097c  1d000d00  lock zero, r26
000980  0d000002  ew_cfg zero, zero, zero, 1
000984  0d000504  ew_cfg zero, r10, zero, 2
000988  0d0e0006  ew_cfg r28, zero, zero, 3
00098c  e3006fff  loadli.w r1,  -80(r30)
000990  8d100000  ewcoeff_cfg r1, zero, zero, 0
000994  9f201000  addli r1, zero, 10
000998  ad252100  dscmpnsel r11, r2, r2, 0
00099c  1d100d00  unlock r26
0009a0  1d000d00  lock zero, r26
0009a4  0d000002  ew_cfg zero, zero, zero, 1
0009a8  0d000504  ew_cfg zero, r10, zero, 2
0009ac  0d0e0006  ew_cfg r28, zero, zero, 3
0009b0  8d1a0000  ewcoeff_cfg r21, zero, zero, 0
0009b4  ada5b508  dscmpnsel r11, r11, r11, 4
0009b8  1d100d00  unlock r26
0009bc  7d900000  xwait r1, 0
0009c0  1d000d00  lock zero, r26
0009c4  ab0080bf  lui r1, 784384
0009c8  0d000002  ew_cfg zero, zero, zero, 1
0009cc  0d920000  ewcoeff_cfg r4, r1, zero, 0
0009d0  9f001000  addli r1, zero, 8
0009d4  0d800204  ew_cfg zero, r5, zero, 2
0009d8  0d060006  ew_cfg r12, zero, zero, 3
0009dc  0d06c626  ew_cfg r12, r12, r12, 19
0009e0  2d01b100  dsmadd r2, r2, r11, 0
0009e4  0d000026  ew_cfg zero, zero, zero, 19
0009e8  1d100d00  unlock r26
0009ec  7d800400  xsignal r9, 0
0009f0  1d000d00  lock zero, r26
0009f4  9f042000  addli r9, zero, 16
0009f8  0d000002  ew_cfg zero, zero, zero, 1
0009fc  0d120200  ewcoeff_cfg r4, r4, zero, 0
000a00  0d800204  ew_cfg zero, r5, zero, 2
000a04  0d060006  ew_cfg r12, zero, zero, 3
000a08  0d06c626  ew_cfg r12, r12, r12, 19
000a0c  2d042400  dsmadd r8, r8, r2, 0
000a10  0d000026  ew_cfg zero, zero, zero, 19
000a14  1d100d00  unlock r26
000a18  7d800000  xsignal r1, 0
000a1c  7d800100  xsignal r3, 0
000a20  eb518ffc  load.d r[4:5], -56(r30)
000a24  5b0effff  j -1936
000a28  9f300000  addli r1, zero, 3
000a2c  7d900000  xwait r1, 0
000a30  9f401000  addli r1, zero, 12
000a34  7d900000  xwait r1, 0
000a38  3d000000  xfence
000a3c  00a00300  mfence { lm, sm, gm }
000a40  6b5c0ffc  load.d r[25:26], -64(r30)
000a44  5b0b0000  j 88
000a48  9f430e20  addli r7, r28, 4100
000a4c  270c1c00  addli.d r[25:26], r[25:26], 8
000a50  9f421e20  addli r5, r28, 4108
000a54  1f010e20  addli r2, r28, 4096
000a58  1f032e20  addli r6, r28, 4112
000a5c  73e00301  stores.w r16, 0(r7)
000a60  eb530fff  load.d r[8:9], -16(r30)
000a64  73e0f200  stores.w r15, 0(r5)
000a68  9f021e20  addli r5, r28, 4104
000a6c  73604300  stores.w r4, 0(r6)
000a70  73e07201  stores.w r23, 0(r5)
000a74  9f423e20  addli r5, r28, 4124
000a78  93237c02  setneq.d r7, r[25:26], r[8:9]
000a7c  6304cfff  loadli.w r8,  -32(r30)
000a80  73e09200  stores.w r9, 0(r5)
000a84  9f422e20  addli r5, r28, 4116
000a88  73608100  stores.w r8, 0(r2)
000a8c  1f013e20  addli r2, r28, 4120
000a90  73e03200  stores.w r3, 0(r5)
000a94  73601100  stores.w r1, 0(r2)
000a98  b7980300  beq r7, zero, 548
000a9c  1b3e2c00  slli r28, r24, 2
000aa0  e341ffff  loadli.w r3,  -4(r30)
000aa4  2b01807f  lui r2, 522240
000aa8  ef46ce00  loads.w r13, 12(r28)
000aac  6f4d0e00  loads.w r26, 0(r28)
000ab0  ef484e00  loads.w r17, 4(r28)
000ab4  ef428e00  loads.w r5, 8(r28)
000ab8  ef450e01  loads.w r11, 16(r28)
000abc  6f4b4e01  loads.w r22, 20(r28)
000ac0  ef448e01  loads.w r9, 24(r28)
000ac4  6f43ce01  loads.w r6, 28(r28)
000ac8  17863600  and r12, r13, r3
000acc  9300c104  setlt.u r1, r2, r12
000ad0  3bb00000  bneq r1, zero, 12
000ad4  9f870600  addli r15, r13, 0
000ad8  5b010000  j 8
000adc  97973601  or r15, r13, r19
000ae0  978d3200  and r27, r5, r3
000ae4  2b07ffff  lui r14, 1048560
000ae8  9300b105  setlt.u r1, r2, r27
000aec  3bb00000  bneq r1, zero, 12
000af0  9f8b0200  addli r23, r5, 0
000af4  5b010000  j 8
000af8  979b3201  or r23, r5, r19
000afc  17893800  and r18, r17, r3
000b00  93002105  setlt.u r1, r2, r18
000b04  3bb00000  bneq r1, zero, 12
000b08  1f880800  addli r16, r17, 0
000b0c  5b010000  j 8
000b10  17983801  or r16, r17, r19
000b14  97033d00  and r7, r26, r3
000b18  93007104  setlt.u r1, r2, r7
000b1c  3bb00000  bneq r1, zero, 12
000b20  670eafff  storeli.w r26, -32(r30)
000b24  db010000  j 12
000b28  97103d01  or r1, r26, r19
000b2c  670e1ffe  storeli.w r1, -32(r30)
000b30  17053300  and r10, r6, r3
000b34  9300a104  setlt.u r1, r2, r10
000b38  3bb00000  bneq r1, zero, 12
000b3c  e74d6ffe  storeli.w r6, -36(r30)
000b40  db010000  j 12
000b44  97103301  or r1, r6, r19
000b48  e74d1ffe  storeli.w r1, -36(r30)
000b4c  178a3400  and r20, r9, r3
000b50  93004105  setlt.u r1, r2, r20
000b54  3bb00000  bneq r1, zero, 12
000b58  9f800400  addli r1, r9, 0
000b5c  5b010000  j 8
000b60  97903401  or r1, r9, r19
000b64  17013b00  and r2, r22, r3
000b68  ab01807f  lui r3, 522240
000b6c  2b02807f  lui r4, 522240
000b70  2b044000  lui r8, 1024
000b74  93812104  setlt.u r3, r3, r2
000b78  3bb00100  bneq r3, zero, 12
000b7c  9f010b00  addli r3, r22, 0
000b80  5b010000  j 8
000b84  97113b01  or r3, r22, r19
000b88  e349ffff  loadli.w r19,  -4(r30)
000b8c  97893501  and r19, r11, r19
000b90  13023205  setlt.u r4, r4, r19
000b94  3b300200  bneq r4, zero, 12
000b98  1f820500  addli r4, r11, 0
000b9c  5b010000  j 8
000ba0  17928500  or r4, r11, r8
000ba4  93837a04  setlt.u r7, r21, r7
000ba8  6344dfff  loadli.w r8,  -20(r30)
000bac  37e20300  beq r7, zero, 152
000bb0  93832a05  setlt.u r7, r21, r18
000bb4  b7c20300  beq r7, zero, 176
000bb8  9383ba05  setlt.u r7, r21, r27
000bbc  37930300  beq r7, zero, 196
000bc0  9382ca04  setlt.u r5, r21, r12
000bc4  37e30200  beq r5, zero, 216
000bc8  93823a05  setlt.u r5, r21, r19
000bcc  3be00200  bneq r5, zero, 24
000bd0  1bc20501  srli r4, r11, 16
000bd4  1b021200  andi r4, r4, 1
000bd8  0b924510  add.s r4, r11, r4
000bdc  0b128210  add.s r4, r4, r8
000be0  1702e200  and r4, r4, r14
000be4  13812a04  setlt.u r2, r21, r2
000be8  ab094000  lui r19, 1024
000bec  3b600100  bneq r2, zero, 24
000bf0  1b410b01  srli r2, r22, 16
000bf4  1b011100  andi r2, r2, 1
000bf8  0b112b10  add.s r2, r22, r2
000bfc  0b118110  add.s r2, r2, r8
000c00  9701e100  and r3, r2, r14
000c04  13814a05  setlt.u r2, r21, r20
000c08  3b600100  bneq r2, zero, 24
000c0c  9bc00401  srli r1, r9, 16
000c10  9b801000  andi r1, r1, 1
000c14  8b901410  add.s r1, r9, r1
000c18  8b908010  add.s r1, r1, r8
000c1c  9780e000  and r1, r1, r14
000c20  1381aa04  setlt.u r2, r21, r10
000c24  e344bfff  loadli.w r9,  -36(r30)
000c28  bb0801fe  bneq r2, zero, -480
000c2c  1b410301  srli r2, r6, 16
000c30  1b011100  andi r2, r2, 1
000c34  0b112310  add.s r2, r6, r2
000c38  0b118110  add.s r2, r2, r8
000c3c  9704e100  and r9, r2, r14
000c40  5bc1ffff  j -504
000c44  9b430d01  srli r7, r26, 16
000c48  9b831300  andi r7, r7, 1
000c4c  8b137d10  add.s r7, r26, r7
000c50  8b938310  add.s r7, r7, r8
000c54  9783e300  and r7, r7, r14
000c58  670e7ffe  storeli.w r7, -32(r30)
000c5c  93832a05  setlt.u r7, r21, r18
000c60  3bed03fe  bneq r7, zero, -168
000c64  9bc30801  srli r7, r17, 16
000c68  9b831300  andi r7, r7, 1
000c6c  8b937810  add.s r7, r17, r7
000c70  8b938310  add.s r7, r7, r8
000c74  1788e300  and r16, r7, r14
000c78  9383ba05  setlt.u r7, r21, r27
000c7c  3b9d03fe  bneq r7, zero, -188
000c80  9bc30201  srli r7, r5, 16
000c84  9b831300  andi r7, r7, 1
000c88  8b927210  add.s r5, r5, r7
000c8c  8b928210  add.s r5, r5, r8
000c90  978be200  and r23, r5, r14
000c94  9382ca04  setlt.u r5, r21, r12
000c98  bbcc02fe  bneq r5, zero, -208
000c9c  9bc20601  srli r5, r13, 16
000ca0  9b821200  andi r5, r5, 1
000ca4  8b925610  add.s r5, r13, r5
000ca8  8b928210  add.s r5, r5, r8
000cac  9787e200  and r15, r5, r14
000cb0  93823a05  setlt.u r5, r21, r19
000cb4  37fc02fe  beq r5, zero, -228
000cb8  dbe5ffff  j -212
000cbc  9f400000  addli r1, zero, 4
000cc0  00200100  mfence { sm }
000cc4  330c0028  zext_int2long r[25:26], zero
000cc8  7d800000  xsignal r1, 0
000ccc  9f101000  addli r1, zero, 9
000cd0  7d800000  xsignal r1, 0
000cd4  9f201000  addli r1, zero, 10
000cd8  7d800000  xsignal r1, 0
000cdc  9f700000  addli r1, zero, 7
000ce0  7d800000  xsignal r1, 0
000ce4  9f001000  addli r1, zero, 8
000ce8  7d900000  xwait r1, 0
000cec  9f501000  addli r1, zero, 13
000cf0  7d900000  xwait r1, 0
000cf4  3d000000  xfence
000cf8  00a00300  mfence { lm, sm, gm }
000cfc  5b0b0000  j 88
000d00  9f430e20  addli r7, r28, 4100
000d04  270c1c00  addli.d r[25:26], r[25:26], 8
000d08  1f421e20  addli r4, r28, 4108
000d0c  1f010e20  addli r2, r28, 4096
000d10  1f032e20  addli r6, r28, 4112
000d14  73e00301  stores.w r16, 0(r7)
000d18  eb530fff  load.d r[8:9], -16(r30)
000d1c  73601201  stores.w r17, 0(r4)
000d20  1f021e20  addli r4, r28, 4104
000d24  73605300  stores.w r5, 0(r6)
000d28  73604201  stores.w r20, 0(r4)
000d2c  1f423e20  addli r4, r28, 4124
000d30  93237c02  setneq.d r7, r[25:26], r[8:9]
000d34  6304cfff  loadli.w r8,  -32(r30)
000d38  73609200  stores.w r9, 0(r4)
000d3c  1f422e20  addli r4, r28, 4116
000d40  73608100  stores.w r8, 0(r2)
000d44  1f013e20  addli r2, r28, 4120
000d48  73603200  stores.w r3, 0(r4)
000d4c  73601100  stores.w r1, 0(r2)
000d50  37c403fa  beq r7, zero, -2800
000d54  1b3e2c00  slli r28, r24, 2
000d58  9f411e30  addli r3, r28, 6156
000d5c  9f000e30  addli r1, r28, 6144
000d60  1f012e30  addli r2, r28, 6160
000d64  efc30100  loads.w r7, 0(r3)
000d68  6fc70000  loads.w r14, 0(r1)
000d6c  9f400e30  addli r1, r28, 6148
000d70  9f011e30  addli r3, r28, 6152
000d74  ef450100  loads.w r11, 0(r2)
000d78  1f413e30  addli r2, r28, 6172
000d7c  efc70000  loads.w r15, 0(r1)
000d80  9f402e30  addli r1, r28, 6164
000d84  6fc50100  loads.w r10, 0(r3)
000d88  e341ffff  loadli.w r3,  -4(r30)
000d8c  6f430100  loads.w r6, 0(r2)
000d90  2b01807f  lui r2, 522240
000d94  6fcb0000  loads.w r22, 0(r1)
000d98  9f003e30  addli r1, r28, 6168
000d9c  efc40000  loads.w r9, 0(r1)
000da0  17823300  and r4, r7, r3
000da4  93004104  setlt.u r1, r2, r4
000da8  3bb00000  bneq r1, zero, 12
000dac  e74d7ffe  storeli.w r7, -36(r30)
000db0  db010000  j 12
000db4  97903301  or r1, r7, r19
000db8  e74d1ffe  storeli.w r1, -36(r30)
000dbc  970d3500  and r27, r10, r3
000dc0  ab08ffff  lui r17, 1048560
000dc4  9300b105  setlt.u r1, r2, r27
000dc8  3bb00000  bneq r1, zero, 12
000dcc  1f0a0500  addli r20, r10, 0
000dd0  5b010000  j 8
000dd4  171a3501  or r20, r10, r19
000dd8  17893700  and r18, r15, r3
000ddc  93002105  setlt.u r1, r2, r18
000de0  3bb00000  bneq r1, zero, 12
000de4  1f840700  addli r8, r15, 0
000de8  5b010000  j 8
000dec  17943701  or r8, r15, r19
000df0  97063700  and r13, r14, r3
000df4  9300d104  setlt.u r1, r2, r13
000df8  3bb00000  bneq r1, zero, 12
000dfc  670eeffe  storeli.w r14, -32(r30)
000e00  db010000  j 12
000e04  97103701  or r1, r14, r19
000e08  670e1ffe  storeli.w r1, -32(r30)
000e0c  17063300  and r12, r6, r3
000e10  9300c104  setlt.u r1, r2, r12
000e14  3bb00000  bneq r1, zero, 12
000e18  e70d6ffe  storeli.w r6, -40(r30)
000e1c  db010000  j 12
000e20  97103301  or r1, r6, r19
000e24  e70d1ffe  storeli.w r1, -40(r30)
000e28  178d3400  and r26, r9, r3
000e2c  9300a105  setlt.u r1, r2, r26
000e30  3bb00000  bneq r1, zero, 12
000e34  9f800400  addli r1, r9, 0
000e38  5b010000  j 8
000e3c  97903401  or r1, r9, r19
000e40  17013b00  and r2, r22, r3
000e44  ab01807f  lui r3, 522240
000e48  ab02807f  lui r5, 522240
000e4c  ab0b4000  lui r23, 1024
000e50  93812104  setlt.u r3, r3, r2
000e54  3bb00100  bneq r3, zero, 12
000e58  9f010b00  addli r3, r22, 0
000e5c  5b010000  j 8
000e60  97113b01  or r3, r22, r19
000e64  6348ffff  loadli.w r16,  -4(r30)
000e68  97890501  and r19, r11, r16
000e6c  93823205  setlt.u r5, r5, r19
000e70  3bb00200  bneq r5, zero, 12
000e74  9f820500  addli r5, r11, 0
000e78  5b010000  j 8
000e7c  97927501  or r5, r11, r23
000e80  9386da04  setlt.u r13, r21, r13
000e84  e34bdfff  loadli.w r23,  -20(r30)
000e88  1f080400  addli r16, r8, 0
000e8c  3bf00600  bneq r13, zero, 28
000e90  9b460701  srli r13, r14, 16
000e94  9b861600  andi r13, r13, 1
000e98  8b16d710  add.s r13, r14, r13
000e9c  8b967611  add.s r13, r13, r23
000ea0  97861601  and r13, r13, r17
000ea4  670edffe  storeli.w r13, -32(r30)
000ea8  93862a05  setlt.u r13, r21, r18
000eac  2b07ffff  lui r14, 1048560
000eb0  3be00600  bneq r13, zero, 24
000eb4  9bc60701  srli r13, r15, 16
000eb8  9b861600  andi r13, r13, 1
000ebc  8b96d710  add.s r13, r15, r13
000ec0  8b967611  add.s r13, r13, r23
000ec4  1788e600  and r16, r13, r14
000ec8  9386ba05  setlt.u r13, r21, r27
000ecc  bb800600  bneq r13, zero, 32
000ed0  1b440501  srli r8, r10, 16
000ed4  e34bdfff  loadli.w r23,  -20(r30)
000ed8  1b041400  andi r8, r8, 1
000edc  0b148510  add.s r8, r10, r8
000ee0  6345dfff  loadli.w r10,  -20(r30)
000ee4  0b14a410  add.s r8, r8, r10
000ee8  170ae400  and r20, r8, r14
000eec  13824a04  setlt.u r4, r21, r4
000ef0  e348bfff  loadli.w r17,  -36(r30)
000ef4  3b600200  bneq r4, zero, 24
000ef8  1bc20301  srli r4, r7, 16
000efc  1b021200  andi r4, r4, 1
000f00  0b924310  add.s r4, r7, r4
000f04  0b127211  add.s r4, r4, r23
000f08  9708e200  and r17, r4, r14
000f0c  13823a05  setlt.u r4, r21, r19
000f10  3b600200  bneq r4, zero, 24
000f14  1bc20501  srli r4, r11, 16
000f18  1b021200  andi r4, r4, 1
000f1c  0b924510  add.s r4, r11, r4
000f20  0b127211  add.s r4, r4, r23
000f24  9702e200  and r5, r4, r14
000f28  13812a04  setlt.u r2, r21, r2
000f2c  ab094000  lui r19, 1024
000f30  3b600100  bneq r2, zero, 24
000f34  1b410b01  srli r2, r22, 16
000f38  1b011100  andi r2, r2, 1
000f3c  0b112b10  add.s r2, r22, r2
000f40  0b117111  add.s r2, r2, r23
000f44  9701e100  and r3, r2, r14
000f48  1381aa05  setlt.u r2, r21, r26
000f4c  3b600100  bneq r2, zero, 24
000f50  9bc00401  srli r1, r9, 16
000f54  9b801000  andi r1, r1, 1
000f58  8b901410  add.s r1, r9, r1
000f5c  8b907011  add.s r1, r1, r23
000f60  9780e000  and r1, r1, r14
000f64  1381ca04  setlt.u r2, r21, r12
000f68  e304bfff  loadli.w r9,  -40(r30)
000f6c  3b5601fe  bneq r2, zero, -620
000f70  1b410301  srli r2, r6, 16
000f74  1b011100  andi r2, r2, 1
000f78  0b112310  add.s r2, r6, r2
000f7c  0b117111  add.s r2, r2, r23
000f80  9704e100  and r9, r2, r14
000f84  dbafffff  j -644
000f88  eb518ffc  load.d r[4:5], -56(r30)
000f8c  3bac03f8  bneq r7, zero, -3320
000f90  9730c503  sll.d r[2:3], r[11:12], r28
000f94  6b550f01  load.d r[11:12], 16(r30)
000f98  7d900d00  xwait r27, 0
000f9c  1d000300  lock zero, r6
000fa0  9f028000  addli r5, zero, 64
000fa4  1f048020  addli r8, zero, 4160
000fa8  150e0e00  dma_cfg r28, r28, zero, 0
000fac  15000e02  dma_cfg zero, r28, zero, 1
000fb0  8b201510  add.ul r[2:3], r[11:12], r[2:3]
000fb4  15010004  dma_cfg r2, zero, zero, 2
000fb8  95005406  dma_cfg r1, r8, r5, 3
000fbc  9f000001  addli r1, zero, 128
000fc0  1f010010  addli r2, zero, 2048
000fc4  95829008  dma_cfg r5, r1, r9, 4
000fc8  9f000008  addli r1, zero, 1024
000fcc  9500c10b  dma_cfg r1, r2, r28, 5
000fd0  9f401000  addli r1, zero, 12
000fd4  15000010  dma_cfg zero, zero, zero, 8
000fd8  35000000  dma_run zero
000fdc  1500c00b  dma_cfg zero, zero, r28, 5
000fe0  15000010  dma_cfg zero, zero, zero, 8
000fe4  1d100300  unlock r6
000fe8  7d800000  xsignal r1, 0
000fec  5b55feff  j -3416
000ff0  7d000000  xsignal zero, 0
000ff4  bbe00300  bneq r7, zero, 56
000ff8  9f200000  addli r1, zero, 2
000ffc  7d100000  xwait zero, 0
001000  7d100000  xwait zero, 0
001004  7d100000  xwait zero, 0
001008  7d100000  xwait zero, 0
00100c  7d100000  xwait zero, 0
001010  7d100000  xwait zero, 0
001014  7d100000  xwait zero, 0
001018  7d100000  xwait zero, 0
00101c  1d800000  lock zero, r1
001020  0d000020  ew_cfg zero, zero, zero, 16
001024  1d900000  unlock r1
001028  7d400000  xsignal_mode_cfg zero
00102c  9f8eae00  addli sp, sp, 80
001030  00a00300  mfence { lm, sm, gm }
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
001264  00100000  exit
001268  00100000  exit
00126c  00100000  exit
001270  00100000  exit
001274  00100000  exit
