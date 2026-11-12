; SHA-256 0400f1aaa34e5c16666378810bb4f368d16506790ea6e4c98f3361f1ab5f0855
; P800 SDNN · XTDK LLVM 19 · 3864 / 3864 words decoded
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
0000b4  9f8ecefd  addli sp, sp, -288
0000b8  9f100000  addli r1, zero, 1
0000bc  80330002  core_id r7
0000c0  1f8fce01  addli r30, sp, 224
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7900300  beq r7, zero, 36
0000cc  2bf1ffff  lui r2, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b10f1ff  ori r1, r2, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  db2d0000  j 364
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
00014c  1f510000  addli r2, zero, 5
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
00018c  9f301000  addli r1, zero, 11
000190  00d00100  sync_group
000194  7d800000  xsignal r1, 0
000198  7d800000  xsignal r1, 0
00019c  7d800000  xsignal r1, 0
0001a0  7d800000  xsignal r1, 0
0001a4  7d000100  xsignal r2, 0
0001a8  7d000100  xsignal r2, 0
0001ac  7d000100  xsignal r2, 0
0001b0  7d000100  xsignal r2, 0
0001b4  9f300000  addli r1, zero, 3
0001b8  1f111000  addli r2, zero, 9
0001bc  7d800000  xsignal r1, 0
0001c0  7d800000  xsignal r1, 0
0001c4  7d800000  xsignal r1, 0
0001c8  7d800000  xsignal r1, 0
0001cc  7d000100  xsignal r2, 0
0001d0  7d000100  xsignal r2, 0
0001d4  7d000100  xsignal r2, 0
0001d8  7d000100  xsignal r2, 0
0001dc  9f700000  addli r1, zero, 7
0001e0  1f612000  addli r2, zero, 22
0001e4  7d800000  xsignal r1, 0
0001e8  7d800000  xsignal r1, 0
0001ec  7d800000  xsignal r1, 0
0001f0  7d800000  xsignal r1, 0
0001f4  7d000100  xsignal r2, 0
0001f8  7d000100  xsignal r2, 0
0001fc  7d000100  xsignal r2, 0
000200  7d000100  xsignal r2, 0
000204  9f002000  addli r1, zero, 16
000208  1f611000  addli r2, zero, 14
00020c  7d800000  xsignal r1, 0
000210  7d800000  xsignal r1, 0
000214  7d800000  xsignal r1, 0
000218  7d800000  xsignal r1, 0
00021c  7d000100  xsignal r2, 0
000220  7d000100  xsignal r2, 0
000224  7d000100  xsignal r2, 0
000228  7d000100  xsignal r2, 0
00022c  9f003000  addli r1, zero, 24
000230  1f113000  addli r2, zero, 25
000234  7d800000  xsignal r1, 0
000238  7d800000  xsignal r1, 0
00023c  7d800000  xsignal r1, 0
000240  7d800000  xsignal r1, 0
000244  7d000100  xsignal r2, 0
000248  7d000100  xsignal r2, 0
00024c  7d000100  xsignal r2, 0
000250  7d000100  xsignal r2, 0
000254  e3005f00  loadli.w r1,  40(r30)
000258  63415f00  loadli.w r2,  44(r30)
00025c  00d20002  load_param_i r4, 1
000260  e3016f00  loadli.w r3,  48(r30)
000264  abf2ffff  lui r5, 1048575
000268  e74e0ffe  storeli.w zero, -20(r30)
00026c  9b92f2ff  ori r5, r5, 4095
000270  8b101120  mul.s r1, r2, r1
000274  1f010200  addli r2, r4, 0
000278  670f5ffe  storeli.w r5, -16(r30)
00027c  674f5ffe  storeli.w r5, -12(r30)
000280  e70f5ffe  storeli.w r5, -8(r30)
000284  e74f5ffe  storeli.w r5, -4(r30)
000288  0b913050  fmac.s r2, r1, r3
00028c  8b913020  mul.s r3, r1, r3
000290  1f71f1ff  addli r2, r2, -1
000294  0b114130  div.s r2, r2, r4
000298  00520002  load_param_i r4, 0
00029c  8b104120  mul.s r1, r2, r4
0002a0  0b114150  fmac.s r2, r2, r4
0002a4  0b113140  min.s r2, r2, r3
0002a8  cb4c111a  ble.s r2, r1, 14128
0002ac  33110128  sext_int2long r[3:4], r2
0002b0  b3980028  sext_int2long r[18:19], r1
0002b4  2b820d00  lui r4, 216
0002b8  9f470000  addli r15, zero, 4
0002bc  9f098000  addli r19, zero, 64
0002c0  1f7a0000  addli r20, zero, 7
0002c4  9f6d0000  addli r27, zero, 6
0002c8  1f3c0000  addli r24, zero, 3
0002cc  9f1c0000  addli r25, zero, 1
0002d0  2b084000  lui r16, 1024
0002d4  ab0b807f  lui r23, 522240
0002d8  73342ff4  store.d r[3:4], -184(r30)
0002dc  1f71f00f  addli r2, zero, 2047
0002e0  ab80ffff  lui r1, 1048568
0002e4  73301ff4  store.d r[2:3], -192(r30)
0002e8  2bf17f7f  lui r2, 522239
0002ec  abf0ff7f  lui r1, 524287
0002f0  9b11f1ff  ori r3, r2, 4095
0002f4  2b010900  lui r2, 144
0002f8  1b9ef0ff  ori r28, r1, 4095
0002fc  ab700000  lui r1, 7
000300  1b110180  ori r2, r2, 2048
000304  9b90f0ff  ori r1, r1, 4095
000308  e7432ffe  storeli.w r2, -196(r30)
00030c  1b11d2b4  ori r2, r4, 2893
000310  2bf27fff  lui r4, 1046527
000314  e7422ffe  storeli.w r2, -212(r30)
000318  2b010b00  lui r2, 176
00031c  1b110180  ori r2, r2, 2048
000320  e7022ffe  storeli.w r2, -216(r30)
000324  1b11f2ff  ori r2, r4, 4095
000328  33020028  zext_int2long r[5:6], zero
00032c  73384ff2  store.d r[5:6], -208(r30)
000330  2b02ffff  lui r4, 1048560
000334  9f020000  addli r5, zero, 0
000338  67422ffe  storeli.w r2, -220(r30)
00033c  db080000  j 68
000340  1f512000  addli r2, zero, 21
000344  9f470000  addli r15, zero, 4
000348  9f098000  addli r19, zero, 64
00034c  1f7a0000  addli r20, zero, 7
000350  9f6d0000  addli r27, zero, 6
000354  9f1c0000  addli r25, zero, 1
000358  7d000100  xsignal r2, 0
00035c  1f013000  addli r2, zero, 24
000360  7d000100  xsignal r2, 0
000364  eb580ff7  load.d r[18:19], -144(r30)
000368  eb528ff4  load.d r[6:7], -184(r30)
00036c  a7980800  addli.d r[18:19], r[18:19], 1
000370  13b15804  setlt.sl r2, r[18:19], r[6:7]
000374  e342fffe  loadli.w r5,  -132(r30)
000378  9f920200  addli r5, r5, 1
00037c  3779011a  beq r2, zero, 13916
000380  63016f00  loadli.w r2,  48(r30)
000384  e7475ffe  storeli.w r5, -132(r30)
000388  e3425f00  loadli.w r5,  44(r30)
00038c  1f041000  addli r8, zero, 8
000390  0b912830  div.s r2, r17, r2
000394  0b115130  div.s r2, r2, r5
000398  0b133131  div.s r6, r2, r19
00039c  9b323300  slli r5, r6, 3
0003a0  8b135418  sub.s r7, r8, r5
0003a4  8b938340  min.s r7, r7, r8
0003a8  0b147138  mod.s r8, r2, r7
0003ac  0b145410  add.s r8, r8, r5
0003b0  93028a04  setlt.u r5, r20, r8
0003b4  b3040428  zext_int2long r[10:11], r8
0003b8  e7458ffe  storeli.w r8, -164(r30)
0003bc  1f441000  addli r8, zero, 12
0003c0  73349ff6  store.d r[10:11], -152(r30)
0003c4  97b48402  sll.d r[10:11], r[10:11], r8
0003c8  3bb00200  bneq r5, zero, 12
0003cc  eb550ff3  load.d r[12:13], -208(r30)
0003d0  db010000  j 12
0003d4  eb550ff4  load.d r[12:13], -192(r30)
0003d8  9785b402  and.d r[12:13], r[10:11], r[12:13]
0003dc  634dfffe  loadli.w r26,  -132(r30)
0003e0  1f048003  addli r8, zero, 448
0003e4  80360002  core_id r13
0003e8  b30a0428  zext_int2long r[22:23], r8
0003ec  2b040200  lui r8, 32
0003f0  8b12fd38  mod.s r5, r26, r15
0003f4  73385ff9  store.d r[22:23], -112(r30)
0003f8  e7095ffe  storeli.w r5, -104(r30)
0003fc  9bb2e200  slli r5, r5, 14
000400  0b948210  add.s r8, r5, r8
000404  bbdab601  bneq r13, r27, 692
000408  8bb4b418  sub.sl r[10:11], r[10:11], r[12:13]
00040c  eb568ff6  load.d r[14:15], -152(r30)
000410  7d100c00  xwait r24, 0
000414  97d4b403  sra.d r[10:11], r[10:11], r27
000418  8bb55441  min.sl r[12:13], r[10:11], r[22:23]
00041c  9f5a1000  addli r21, zero, 13
000420  8bb49518  sub.sl r[10:11], r[12:13], r[10:11]
000424  eb550f00  load.d r[12:13], 0(r30)
000428  97b65603  sll.d r[14:15], r[14:15], r21
00042c  9f848400  addli r9, r9, 64
000430  0ba6d510  add.ul r[13:14], r[12:13], r[14:15]
000434  bf04ac01  blt.s r24, r26, 288
000438  9f550000  addli r11, zero, 5
00043c  1f270000  addli r14, zero, 2
000440  1f051000  addli r10, zero, 8
000444  1d800500  lock zero, r11
000448  15000014  dma_cfg zero, zero, zero, 10
00044c  15009015  dma_cfg zero, zero, r25, 10
000450  1500e014  dma_cfg zero, zero, r14, 10
000454  15008015  dma_cfg zero, zero, r24, 10
000458  1500f014  dma_cfg zero, zero, r15, 10
00045c  1500b014  dma_cfg zero, zero, r11, 10
000460  1500b015  dma_cfg zero, zero, r27, 10
000464  15004015  dma_cfg zero, zero, r20, 10
000468  1500a014  dma_cfg zero, zero, r10, 10
00046c  1f151000  addli r10, zero, 9
000470  1500a014  dma_cfg zero, zero, r10, 10
000474  1f251000  addli r10, zero, 10
000478  1500a014  dma_cfg zero, zero, r10, 10
00047c  1f351000  addli r10, zero, 11
000480  1500a014  dma_cfg zero, zero, r10, 10
000484  1f451000  addli r10, zero, 12
000488  1500a014  dma_cfg zero, zero, r10, 10
00048c  1f651000  addli r10, zero, 14
000490  15005015  dma_cfg zero, zero, r21, 10
000494  1500a014  dma_cfg zero, zero, r10, 10
000498  1f751000  addli r10, zero, 15
00049c  1500a014  dma_cfg zero, zero, r10, 10
0004a0  1f052000  addli r10, zero, 16
0004a4  1500a014  dma_cfg zero, zero, r10, 10
0004a8  1f152000  addli r10, zero, 17
0004ac  1500a014  dma_cfg zero, zero, r10, 10
0004b0  1f252000  addli r10, zero, 18
0004b4  1500a014  dma_cfg zero, zero, r10, 10
0004b8  1f352000  addli r10, zero, 19
0004bc  1500a014  dma_cfg zero, zero, r10, 10
0004c0  1f452000  addli r10, zero, 20
0004c4  1500a014  dma_cfg zero, zero, r10, 10
0004c8  1f552000  addli r10, zero, 21
0004cc  1500a014  dma_cfg zero, zero, r10, 10
0004d0  1f652000  addli r10, zero, 22
0004d4  1500a014  dma_cfg zero, zero, r10, 10
0004d8  1f752000  addli r10, zero, 23
0004dc  1500a014  dma_cfg zero, zero, r10, 10
0004e0  1f053000  addli r10, zero, 24
0004e4  1500a014  dma_cfg zero, zero, r10, 10
0004e8  1f153000  addli r10, zero, 25
0004ec  1500a014  dma_cfg zero, zero, r10, 10
0004f0  1f253000  addli r10, zero, 26
0004f4  1500a014  dma_cfg zero, zero, r10, 10
0004f8  1f353000  addli r10, zero, 27
0004fc  1500a014  dma_cfg zero, zero, r10, 10
000500  1f453000  addli r10, zero, 28
000504  1500a014  dma_cfg zero, zero, r10, 10
000508  1f553000  addli r10, zero, 29
00050c  1500a014  dma_cfg zero, zero, r10, 10
000510  1f653000  addli r10, zero, 30
000514  1500a014  dma_cfg zero, zero, r10, 10
000518  1f753000  addli r10, zero, 31
00051c  1500a014  dma_cfg zero, zero, r10, 10
000520  1f050001  addli r10, zero, 128
000524  958c0c00  dma_cfg r25, r25, zero, 0
000528  950c0002  dma_cfg r25, zero, zero, 1
00052c  15000004  dma_cfg zero, zero, zero, 2
000530  15043007  dma_cfg r8, zero, r19, 3
000534  1505e008  dma_cfg r10, zero, r14, 4
000538  1f050002  addli r10, zero, 256
00053c  1505300b  dma_cfg r10, zero, r19, 5
000540  15000010  dma_cfg zero, zero, zero, 8
000544  35000000  dma_run zero
000548  1500900b  dma_cfg zero, zero, r25, 5
00054c  15000010  dma_cfg zero, zero, zero, 8
000550  1d900500  unlock r11
000554  2b050200  lui r10, 32
000558  67080ffe  storeli.w zero, -128(r30)
00055c  1f070002  addli r14, zero, 256
000560  9f550000  addli r11, zero, 5
000564  1d800700  lock zero, r15
000568  1b150504  ori r10, r10, 64
00056c  958c0c00  dma_cfg r25, r25, zero, 0
000570  15800604  dma_cfg zero, r13, zero, 2
000574  0b95a210  add.s r10, r5, r10
000578  15053607  dma_cfg r10, r12, r19, 3
00057c  1f260000  addli r12, zero, 2
000580  9f060001  addli r13, zero, 128
000584  1f051000  addli r10, zero, 8
000588  9586c908  dma_cfg r13, r19, r12, 4
00058c  1587960a  dma_cfg r14, r13, r9, 5
000590  15000010  dma_cfg zero, zero, zero, 8
000594  35000000  dma_run zero
000598  1500900b  dma_cfg zero, zero, r25, 5
00059c  15000010  dma_cfg zero, zero, zero, 8
0005a0  1d900700  unlock r15
0005a4  1d800500  lock zero, r11
0005a8  15000014  dma_cfg zero, zero, zero, 10
0005ac  15009015  dma_cfg zero, zero, r25, 10
0005b0  1500c014  dma_cfg zero, zero, r12, 10
0005b4  15008015  dma_cfg zero, zero, r24, 10
0005b8  1500f014  dma_cfg zero, zero, r15, 10
0005bc  1500b014  dma_cfg zero, zero, r11, 10
0005c0  1500b015  dma_cfg zero, zero, r27, 10
0005c4  15004015  dma_cfg zero, zero, r20, 10
0005c8  1500a014  dma_cfg zero, zero, r10, 10
0005cc  1f151000  addli r10, zero, 9
0005d0  1500a014  dma_cfg zero, zero, r10, 10
0005d4  1f251000  addli r10, zero, 10
0005d8  1500a014  dma_cfg zero, zero, r10, 10
0005dc  1f351000  addli r10, zero, 11
0005e0  1500a014  dma_cfg zero, zero, r10, 10
0005e4  1f451000  addli r10, zero, 12
0005e8  1500a014  dma_cfg zero, zero, r10, 10
0005ec  1f651000  addli r10, zero, 14
0005f0  15005015  dma_cfg zero, zero, r21, 10
0005f4  1500a014  dma_cfg zero, zero, r10, 10
0005f8  1f751000  addli r10, zero, 15
0005fc  1500a014  dma_cfg zero, zero, r10, 10
000600  1f052000  addli r10, zero, 16
000604  1500a014  dma_cfg zero, zero, r10, 10
000608  1f152000  addli r10, zero, 17
00060c  1500a014  dma_cfg zero, zero, r10, 10
000610  1f252000  addli r10, zero, 18
000614  1500a014  dma_cfg zero, zero, r10, 10
000618  1f352000  addli r10, zero, 19
00061c  1500a014  dma_cfg zero, zero, r10, 10
000620  1f452000  addli r10, zero, 20
000624  1500a014  dma_cfg zero, zero, r10, 10
000628  1f552000  addli r10, zero, 21
00062c  1500a014  dma_cfg zero, zero, r10, 10
000630  1f652000  addli r10, zero, 22
000634  1500a014  dma_cfg zero, zero, r10, 10
000638  1f752000  addli r10, zero, 23
00063c  1500a014  dma_cfg zero, zero, r10, 10
000640  1f053000  addli r10, zero, 24
000644  1500a014  dma_cfg zero, zero, r10, 10
000648  1f153000  addli r10, zero, 25
00064c  1500a014  dma_cfg zero, zero, r10, 10
000650  1f253000  addli r10, zero, 26
000654  1500a014  dma_cfg zero, zero, r10, 10
000658  1f353000  addli r10, zero, 27
00065c  1500a014  dma_cfg zero, zero, r10, 10
000660  1f453000  addli r10, zero, 28
000664  1500a014  dma_cfg zero, zero, r10, 10
000668  1f553000  addli r10, zero, 29
00066c  1500a014  dma_cfg zero, zero, r10, 10
000670  1f653000  addli r10, zero, 30
000674  1500a014  dma_cfg zero, zero, r10, 10
000678  1f753000  addli r10, zero, 31
00067c  1500a014  dma_cfg zero, zero, r10, 10
000680  958c0c00  dma_cfg r25, r25, zero, 0
000684  950c0002  dma_cfg r25, zero, zero, 1
000688  15000004  dma_cfg zero, zero, zero, 2
00068c  15043007  dma_cfg r8, zero, r19, 3
000690  9506c008  dma_cfg r13, zero, r12, 4
000694  1507900a  dma_cfg r14, zero, r9, 5
000698  15000010  dma_cfg zero, zero, zero, 8
00069c  35000000  dma_run zero
0006a0  1500900b  dma_cfg zero, zero, r25, 5
0006a4  15000010  dma_cfg zero, zero, zero, 8
0006a8  1d900500  unlock r11
0006ac  7d000600  xsignal r12, 0
0006b0  6b550ff9  load.d r[11:12], -112(r30)
0006b4  db0a0000  j 84
0006b8  1f250000  addli r10, zero, 2
0006bc  3b81a600  bneq r13, r10, 64
0006c0  9f540000  addli r9, zero, 5
0006c4  7d100500  xwait r10, 0
0006c8  7d900400  xwait r9, 0
0006cc  1d000000  lock zero, zero
0006d0  01050000  ds_cfg r10, zero, 0
0006d4  81090002  ds_cfg r19, zero, 1
0006d8  8109001c  ds_cfg r19, zero, 14
0006dc  8109001a  ds_cfg r19, zero, 13
0006e0  a1123403  shuffle_batch r5, r8, r19, 1
0006e4  1f140000  addli r8, zero, 1
0006e8  1d100000  unlock zero
0006ec  7d000c00  xsignal r24, 0
0006f0  67088ffe  storeli.w r8, -128(r30)
0006f4  7d800700  xsignal r15, 0
0006f8  5b010000  j 8
0006fc  67080ffe  storeli.w zero, -128(r30)
000700  6b550ff9  load.d r[11:12], -112(r30)
000704  9f5a1000  addli r21, zero, 13
000708  1b336300  slli r6, r6, 6
00070c  0b116118  sub.s r2, r2, r6
000710  0b117130  div.s r2, r2, r7
000714  33030128  zext_int2long r[7:8], r2
000718  e7482ffe  storeli.w r2, -116(r30)
00071c  63013fff  loadli.w r2,  -104(r30)
000720  17334303  sll.d r[7:8], r[7:8], r20
000724  1b34f100  slli r8, r2, 15
000728  2b010300  lui r2, 48
00072c  e70e8ffe  storeli.w r8, -24(r30)
000730  0b112410  add.s r2, r8, r2
000734  97339303  sll.d r[8:9], r[7:8], r25
000738  00330002  core_id r6
00073c  73307ff6  store.d r[8:9], -160(r30)
000740  bb0a9301  bneq r6, r25, 672
000744  eb528f00  load.d r[6:7], 8(r30)
000748  7d100a00  xwait r20, 0
00074c  8ba27210  add.ul r[6:7], r[6:7], r[8:9]
000750  e343fffe  loadli.w r7,  -132(r30)
000754  bf047c00  blt.s r24, r7, 288
000758  1f540000  addli r8, zero, 5
00075c  9f230000  addli r7, zero, 2
000760  1d000400  lock zero, r8
000764  15000014  dma_cfg zero, zero, zero, 10
000768  15009015  dma_cfg zero, zero, r25, 10
00076c  15007014  dma_cfg zero, zero, r7, 10
000770  9f031000  addli r7, zero, 8
000774  15008015  dma_cfg zero, zero, r24, 10
000778  1500f014  dma_cfg zero, zero, r15, 10
00077c  15008014  dma_cfg zero, zero, r8, 10
000780  1500b015  dma_cfg zero, zero, r27, 10
000784  15004015  dma_cfg zero, zero, r20, 10
000788  15007014  dma_cfg zero, zero, r7, 10
00078c  9f131000  addli r7, zero, 9
000790  15007014  dma_cfg zero, zero, r7, 10
000794  9f231000  addli r7, zero, 10
000798  15007014  dma_cfg zero, zero, r7, 10
00079c  9f331000  addli r7, zero, 11
0007a0  15007014  dma_cfg zero, zero, r7, 10
0007a4  9f431000  addli r7, zero, 12
0007a8  15007014  dma_cfg zero, zero, r7, 10
0007ac  9f631000  addli r7, zero, 14
0007b0  15005015  dma_cfg zero, zero, r21, 10
0007b4  15007014  dma_cfg zero, zero, r7, 10
0007b8  9f731000  addli r7, zero, 15
0007bc  15007014  dma_cfg zero, zero, r7, 10
0007c0  9f032000  addli r7, zero, 16
0007c4  15007014  dma_cfg zero, zero, r7, 10
0007c8  9f132000  addli r7, zero, 17
0007cc  15007014  dma_cfg zero, zero, r7, 10
0007d0  9f232000  addli r7, zero, 18
0007d4  15007014  dma_cfg zero, zero, r7, 10
0007d8  9f332000  addli r7, zero, 19
0007dc  15007014  dma_cfg zero, zero, r7, 10
0007e0  9f432000  addli r7, zero, 20
0007e4  15007014  dma_cfg zero, zero, r7, 10
0007e8  9f532000  addli r7, zero, 21
0007ec  15007014  dma_cfg zero, zero, r7, 10
0007f0  9f632000  addli r7, zero, 22
0007f4  15007014  dma_cfg zero, zero, r7, 10
0007f8  9f732000  addli r7, zero, 23
0007fc  15007014  dma_cfg zero, zero, r7, 10
000800  9f033000  addli r7, zero, 24
000804  15007014  dma_cfg zero, zero, r7, 10
000808  9f133000  addli r7, zero, 25
00080c  15007014  dma_cfg zero, zero, r7, 10
000810  9f233000  addli r7, zero, 26
000814  15007014  dma_cfg zero, zero, r7, 10
000818  9f333000  addli r7, zero, 27
00081c  15007014  dma_cfg zero, zero, r7, 10
000820  9f433000  addli r7, zero, 28
000824  15007014  dma_cfg zero, zero, r7, 10
000828  9f533000  addli r7, zero, 29
00082c  15007014  dma_cfg zero, zero, r7, 10
000830  9f633000  addli r7, zero, 30
000834  15007014  dma_cfg zero, zero, r7, 10
000838  9f733000  addli r7, zero, 31
00083c  15007014  dma_cfg zero, zero, r7, 10
000840  9f030001  addli r7, zero, 128
000844  958c0c00  dma_cfg r25, r25, zero, 0
000848  950c0002  dma_cfg r25, zero, zero, 1
00084c  15000004  dma_cfg zero, zero, zero, 2
000850  15013007  dma_cfg r2, zero, r19, 3
000854  9503f008  dma_cfg r7, zero, r15, 4
000858  9f030004  addli r7, zero, 512
00085c  9503300b  dma_cfg r7, zero, r19, 5
000860  15000010  dma_cfg zero, zero, zero, 8
000864  35000000  dma_run zero
000868  1500900b  dma_cfg zero, zero, r25, 5
00086c  15000010  dma_cfg zero, zero, zero, 8
000870  1d100400  unlock r8
000874  67480ffe  storeli.w zero, -124(r30)
000878  e7080ffe  storeli.w zero, -120(r30)
00087c  ab030300  lui r7, 48
000880  1d800700  lock zero, r15
000884  958c0c00  dma_cfg r25, r25, zero, 0
000888  9b930304  ori r7, r7, 64
00088c  6304dfff  loadli.w r8,  -24(r30)
000890  15000304  dma_cfg zero, r6, zero, 2
000894  8b137410  add.s r7, r8, r7
000898  1f040004  addli r8, zero, 512
00089c  95833207  dma_cfg r7, r5, r19, 3
0008a0  9f030001  addli r7, zero, 128
0008a4  9f020010  addli r5, zero, 2048
0008a8  1f530000  addli r6, zero, 5
0008ac  9583f908  dma_cfg r7, r19, r15, 4
0008b0  1584320b  dma_cfg r8, r5, r19, 5
0008b4  9f220000  addli r5, zero, 2
0008b8  15000010  dma_cfg zero, zero, zero, 8
0008bc  35000000  dma_run zero
0008c0  1500900b  dma_cfg zero, zero, r25, 5
0008c4  15000010  dma_cfg zero, zero, zero, 8
0008c8  1d900700  unlock r15
0008cc  1d000300  lock zero, r6
0008d0  15000014  dma_cfg zero, zero, zero, 10
0008d4  15009015  dma_cfg zero, zero, r25, 10
0008d8  15005014  dma_cfg zero, zero, r5, 10
0008dc  9f021000  addli r5, zero, 8
0008e0  15008015  dma_cfg zero, zero, r24, 10
0008e4  1500f014  dma_cfg zero, zero, r15, 10
0008e8  15006014  dma_cfg zero, zero, r6, 10
0008ec  1500b015  dma_cfg zero, zero, r27, 10
0008f0  15004015  dma_cfg zero, zero, r20, 10
0008f4  15005014  dma_cfg zero, zero, r5, 10
0008f8  9f121000  addli r5, zero, 9
0008fc  15005014  dma_cfg zero, zero, r5, 10
000900  9f221000  addli r5, zero, 10
000904  15005014  dma_cfg zero, zero, r5, 10
000908  9f321000  addli r5, zero, 11
00090c  15005014  dma_cfg zero, zero, r5, 10
000910  9f421000  addli r5, zero, 12
000914  15005014  dma_cfg zero, zero, r5, 10
000918  9f621000  addli r5, zero, 14
00091c  15005015  dma_cfg zero, zero, r21, 10
000920  15005014  dma_cfg zero, zero, r5, 10
000924  9f721000  addli r5, zero, 15
000928  15005014  dma_cfg zero, zero, r5, 10
00092c  9f022000  addli r5, zero, 16
000930  15005014  dma_cfg zero, zero, r5, 10
000934  9f122000  addli r5, zero, 17
000938  15005014  dma_cfg zero, zero, r5, 10
00093c  9f222000  addli r5, zero, 18
000940  15005014  dma_cfg zero, zero, r5, 10
000944  9f322000  addli r5, zero, 19
000948  15005014  dma_cfg zero, zero, r5, 10
00094c  9f422000  addli r5, zero, 20
000950  15005014  dma_cfg zero, zero, r5, 10
000954  9f522000  addli r5, zero, 21
000958  15005014  dma_cfg zero, zero, r5, 10
00095c  9f622000  addli r5, zero, 22
000960  15005014  dma_cfg zero, zero, r5, 10
000964  9f722000  addli r5, zero, 23
000968  15005014  dma_cfg zero, zero, r5, 10
00096c  9f023000  addli r5, zero, 24
000970  15005014  dma_cfg zero, zero, r5, 10
000974  9f123000  addli r5, zero, 25
000978  15005014  dma_cfg zero, zero, r5, 10
00097c  9f223000  addli r5, zero, 26
000980  15005014  dma_cfg zero, zero, r5, 10
000984  9f323000  addli r5, zero, 27
000988  15005014  dma_cfg zero, zero, r5, 10
00098c  9f423000  addli r5, zero, 28
000990  15005014  dma_cfg zero, zero, r5, 10
000994  9f523000  addli r5, zero, 29
000998  15005014  dma_cfg zero, zero, r5, 10
00099c  9f623000  addli r5, zero, 30
0009a0  15005014  dma_cfg zero, zero, r5, 10
0009a4  9f723000  addli r5, zero, 31
0009a8  15005014  dma_cfg zero, zero, r5, 10
0009ac  958c0c00  dma_cfg r25, r25, zero, 0
0009b0  950c0002  dma_cfg r25, zero, zero, 1
0009b4  15000004  dma_cfg zero, zero, zero, 2
0009b8  15013007  dma_cfg r2, zero, r19, 3
0009bc  9503f008  dma_cfg r7, zero, r15, 4
0009c0  1504300b  dma_cfg r8, zero, r19, 5
0009c4  15000010  dma_cfg zero, zero, zero, 8
0009c8  35000000  dma_run zero
0009cc  1500900b  dma_cfg zero, zero, r25, 5
0009d0  15000010  dma_cfg zero, zero, zero, 8
0009d4  1d100300  unlock r6
0009d8  7d800d00  xsignal r27, 0
0009dc  5b1c0000  j 224
0009e0  b701f300  beq r6, r15, 96
0009e4  9f220000  addli r5, zero, 2
0009e8  3b7f4317  bneq r6, r20, 12252
0009ec  9f131000  addli r7, zero, 9
0009f0  67480ffe  storeli.w zero, -124(r30)
0009f4  7d900d00  xwait r27, 0
0009f8  7d900300  xwait r7, 0
0009fc  1d000000  lock zero, zero
000a00  81020000  ds_cfg r5, zero, 0
000a04  9f020001  addli r5, zero, 128
000a08  81020002  ds_cfg r5, zero, 1
000a0c  8109001c  ds_cfg r19, zero, 14
000a10  8102001a  ds_cfg r5, zero, 13
000a14  e302dfff  loadli.w r5,  -24(r30)
000a18  c1023105  shuffle_coa r5, r2, r19, 2
000a1c  1f110000  addli r2, zero, 1
000a20  1d100000  unlock zero
000a24  7d000a00  xsignal r20, 0
000a28  e7082ffe  storeli.w r2, -120(r30)
000a2c  1f011000  addli r2, zero, 8
000a30  7d000100  xsignal r2, 0
000a34  73381ff7  store.d r[18:19], -144(r30)
000a38  37428301  beq r6, r24, 144
000a3c  db130000  j 156
000a40  1f011000  addli r2, zero, 8
000a44  1f341000  addli r8, zero, 11
000a48  7d900700  xwait r15, 0
000a4c  9f030000  addli r7, zero, 0
000a50  1f130000  addli r6, zero, 1
000a54  7d100100  xwait r2, 0
000a58  7d100400  xwait r8, 0
000a5c  e304dfff  loadli.w r9,  -24(r30)
000a60  1f110000  addli r2, zero, 1
000a64  1bb4e300  slli r8, r7, 14
000a68  9bb38300  slli r7, r7, 8
000a6c  1d000100  lock zero, r2
000a70  89893901  mm_cfg r19, r19, r19, 0
000a74  17149400  or r8, r8, r9
000a78  97939300  or r7, r7, r9
000a7c  89872704  mm_cfg r15, r15, r2, 2
000a80  a9838210  mm r7, r5, r8, 8
000a84  1b041300  andi r8, r6, 1
000a88  9f130000  addli r7, zero, 1
000a8c  1f030000  addli r6, zero, 0
000a90  1d100100  unlock r2
000a94  3b4f04fe  bneq r8, zero, -48
000a98  1f510000  addli r2, zero, 5
000a9c  e7080ffe  storeli.w zero, -120(r30)
000aa0  7d000100  xsignal r2, 0
000aa4  1f111000  addli r2, zero, 9
000aa8  7d000100  xsignal r2, 0
000aac  1f110000  addli r2, zero, 1
000ab0  67482ffe  storeli.w r2, -124(r30)
000ab4  1f211000  addli r2, zero, 10
000ab8  7d000100  xsignal r2, 0
000abc  00330002  core_id r6
000ac0  73381ff7  store.d r[18:19], -144(r30)
000ac4  3b508301  bneq r6, r24, 20
000ac8  1f211000  addli r2, zero, 10
000acc  7d100100  xwait r2, 0
000ad0  1f611000  addli r2, zero, 14
000ad4  7d100100  xwait r2, 0
000ad8  2b010700  lui r2, 112
000adc  6309dfff  loadli.w r18,  -24(r30)
000ae0  3d000000  xfence
000ae4  9f020001  addli r5, zero, 128
000ae8  00a00300  mfence { lm, sm, gm }
000aec  1b110180  ori r2, r2, 2048
000af0  338c0228  zext_int2long r[25:26], r5
000af4  8b182910  add.s r17, r18, r2
000af8  1f71f001  addli r2, zero, 255
000afc  80220104  csr_set csr5, r2
000b00  1f710000  addli r2, zero, 7
000b04  b3030128  zext_int2long r[8:9], r2
000b08  73307ffa  store.d r[8:9], -96(r30)
000b0c  00e00200  sync_core
000b10  bb050300  bneq r6, zero, 352
000b14  3d000000  xfence
000b18  b3030028  zext_int2long r[8:9], zero
000b1c  00a00300  mfence { lm, sm, gm }
000b20  73307ffe  store.d r[8:9], -32(r30)
000b24  db020000  j 20
000b28  eb520ffa  load.d r[6:7], -96(r30)
000b2c  13a15304  setlt.ul r2, r[8:9], r[6:7]
000b30  a7930300  addli.d r[8:9], r[8:9], 1
000b34  b7440100  beq r2, zero, 304
000b38  1f710000  addli r2, zero, 7
000b3c  6b560ffe  load.d r[13:14], -32(r30)
000b40  97b42302  sll.d r[10:11], r[8:9], r2
000b44  db040000  j 36
000b48  27460600  addli.d r[13:14], r[13:14], 4
000b4c  0b912810  add.s r2, r17, r2
000b50  13238603  setneq.d r6, r[13:14], r[25:26]
000b54  7366f100  stores.w r15, 12(r2)
000b58  73644101  stores.w r20, 8(r2)
000b5c  7362a101  stores.w r26, 4(r2)
000b60  73605100  stores.w r5, 0(r2)
000b64  371f03fe  beq r6, zero, -60
000b68  8b229610  add.ul r[6:7], r[13:14], r[10:11]
000b6c  1bb12200  slli r2, r5, 2
000b70  8b122910  add.s r5, r18, r2
000b74  6fc7c200  loads.w r14, 12(r5)
000b78  efcd0200  loads.w r27, 0(r5)
000b7c  6fcb4200  loads.w r22, 4(r5)
000b80  efca8200  loads.w r21, 8(r5)
000b84  9709c701  and r19, r14, r28
000b88  93823b05  setlt.u r5, r23, r19
000b8c  3bb00200  bneq r5, zero, 12
000b90  9f070700  addli r15, r14, 0
000b94  5b010000  j 8
000b98  97170701  or r15, r14, r16
000b9c  9785ca01  and r11, r21, r28
000ba0  9382bb04  setlt.u r5, r23, r11
000ba4  3bb00200  bneq r5, zero, 12
000ba8  1f8a0a00  addli r20, r21, 0
000bac  5b010000  j 8
000bb0  179a0a01  or r20, r21, r16
000bb4  1703cb01  and r6, r22, r28
000bb8  93826b04  setlt.u r5, r23, r6
000bbc  3bb00200  bneq r5, zero, 12
000bc0  1f0d0b00  addli r26, r22, 0
000bc4  5b010000  j 8
000bc8  171d0b01  or r26, r22, r16
000bcc  1789cd01  and r18, r27, r28
000bd0  93822b05  setlt.u r5, r23, r18
000bd4  3bd00200  bneq r5, zero, 20
000bd8  9f820d00  addli r5, r27, 0
000bdc  13892105  setlt.u r18, r3, r18
000be0  37500900  beq r18, zero, 20
000be4  db040000  j 36
000be8  97920d01  or r5, r27, r16
000bec  13892105  setlt.u r18, r3, r18
000bf0  3b600900  bneq r18, zero, 24
000bf4  9bc20d01  srli r5, r27, 16
000bf8  9b821200  andi r5, r5, 1
000bfc  8b925d10  add.s r5, r27, r5
000c00  8b921210  add.s r5, r5, r1
000c04  97824200  and r5, r5, r4
000c08  13836104  setlt.u r6, r3, r6
000c0c  3b600300  bneq r6, zero, 24
000c10  1b430b01  srli r6, r22, 16
000c14  1b031300  andi r6, r6, 1
000c18  0b136b10  add.s r6, r22, r6
000c1c  0b131310  add.s r6, r6, r1
000c20  170d4300  and r26, r6, r4
000c24  1383b104  setlt.u r6, r3, r11
000c28  6309dfff  loadli.w r18,  -24(r30)
000c2c  3b600300  bneq r6, zero, 24
000c30  1bc30a01  srli r6, r21, 16
000c34  1b031300  andi r6, r6, 1
000c38  0b936a10  add.s r6, r21, r6
000c3c  0b131310  add.s r6, r6, r1
000c40  170a4300  and r20, r6, r4
000c44  13833105  setlt.u r6, r3, r19
000c48  3b0c03fe  bneq r6, zero, -256
000c4c  1b430701  srli r6, r14, 16
000c50  1b031300  andi r6, r6, 1
000c54  0b136710  add.s r6, r14, r6
000c58  0b131310  add.s r6, r6, r1
000c5c  97074300  and r15, r6, r4
000c60  5bddffff  j -280
000c64  00200100  mfence { sm }
000c68  00330002  core_id r6
000c6c  6b550ff9  load.d r[11:12], -112(r30)
000c70  1f711000  addli r2, zero, 15
000c74  b3030128  zext_int2long r[8:9], r2
000c78  1f110000  addli r2, zero, 1
000c7c  73347ffa  store.d r[8:9], -88(r30)
000c80  bb052300  bneq r6, r2, 352
000c84  1f011000  addli r2, zero, 8
000c88  3d000000  xfence
000c8c  00a00300  mfence { lm, sm, gm }
000c90  b3020128  zext_int2long r[6:7], r2
000c94  db020000  j 20
000c98  eb538ffa  load.d r[8:9], -88(r30)
000c9c  13a17204  setlt.ul r2, r[6:7], r[8:9]
000ca0  a7920200  addli.d r[6:7], r[6:7], 1
000ca4  b7440100  beq r2, zero, 304
000ca8  1f710000  addli r2, zero, 7
000cac  b3040028  zext_int2long r[10:11], zero
000cb0  97b32202  sll.d r[8:9], r[6:7], r2
000cb4  db040000  j 36
000cb8  a7c40400  addli.d r[10:11], r[10:11], 4
000cbc  0b912810  add.s r2, r17, r2
000cc0  93a58403  setneq.d r11, r[10:11], r[25:26]
000cc4  7366d100  stores.w r13, 12(r2)
000cc8  7364f100  stores.w r15, 8(r2)
000ccc  73624101  stores.w r20, 4(r2)
000cd0  73606101  stores.w r22, 0(r2)
000cd4  379f05fe  beq r11, zero, -60
000cd8  8ba57410  add.ul r[12:13], r[10:11], r[8:9]
000cdc  1bb12500  slli r2, r11, 2
000ce0  8b152910  add.s r11, r18, r2
000ce4  6fc6c500  loads.w r12, 12(r11)
000ce8  6fcd0500  loads.w r26, 0(r11)
000cec  efca4500  loads.w r21, 4(r11)
000cf0  efc98500  loads.w r19, 8(r11)
000cf4  1707c601  and r14, r12, r28
000cf8  9385eb04  setlt.u r11, r23, r14
000cfc  3bb00500  bneq r11, zero, 12
000d00  9f060600  addli r13, r12, 0
000d04  5b010000  j 8
000d08  97160601  or r13, r12, r16
000d0c  9785c901  and r11, r19, r28
000d10  9387bb04  setlt.u r15, r23, r11
000d14  3bb00700  bneq r15, zero, 12
000d18  9f870900  addli r15, r19, 0
000d1c  5b010000  j 8
000d20  97970901  or r15, r19, r16
000d24  1789ca01  and r18, r21, r28
000d28  138a2b05  setlt.u r20, r23, r18
000d2c  3b300a00  bneq r20, zero, 12
000d30  1f8a0a00  addli r20, r21, 0
000d34  5b010000  j 8
000d38  179a0a01  or r20, r21, r16
000d3c  970dcd01  and r27, r26, r28
000d40  138bbb05  setlt.u r22, r23, r27
000d44  3b500b00  bneq r22, zero, 20
000d48  1f0b0d00  addli r22, r26, 0
000d4c  938db105  setlt.u r27, r3, r27
000d50  37d00d00  beq r27, zero, 20
000d54  db040000  j 36
000d58  171b0d01  or r22, r26, r16
000d5c  938db105  setlt.u r27, r3, r27
000d60  3be00d00  bneq r27, zero, 24
000d64  1b4b0d01  srli r22, r26, 16
000d68  1b0b1b00  andi r22, r22, 1
000d6c  0b1b6d11  add.s r22, r26, r22
000d70  0b1b1b10  add.s r22, r22, r1
000d74  170b4b00  and r22, r22, r4
000d78  13892105  setlt.u r18, r3, r18
000d7c  3b600900  bneq r18, zero, 24
000d80  1bc90a01  srli r18, r21, 16
000d84  1b091900  andi r18, r18, 1
000d88  0b992a11  add.s r18, r21, r18
000d8c  0b191910  add.s r18, r18, r1
000d90  170a4900  and r20, r18, r4
000d94  9385b104  setlt.u r11, r3, r11
000d98  6309dfff  loadli.w r18,  -24(r30)
000d9c  3be00500  bneq r11, zero, 24
000da0  9bc50901  srli r11, r19, 16
000da4  9b851500  andi r11, r11, 1
000da8  8b95b910  add.s r11, r19, r11
000dac  8b951510  add.s r11, r11, r1
000db0  97874500  and r15, r11, r4
000db4  9385e104  setlt.u r11, r3, r14
000db8  3b8c05fe  bneq r11, zero, -256
000dbc  9b450601  srli r11, r12, 16
000dc0  9b851500  andi r11, r11, 1
000dc4  8b15b610  add.s r11, r12, r11
000dc8  8b951510  add.s r11, r11, r1
000dcc  97864500  and r13, r11, r4
000dd0  5bddffff  j -280
000dd4  00200100  mfence { sm }
000dd8  00330002  core_id r6
000ddc  6b550ff9  load.d r[11:12], -112(r30)
000de0  1f712000  addli r2, zero, 23
000de4  b3030128  zext_int2long r[8:9], r2
000de8  63010fff  loadli.w r2,  -128(r30)
000dec  73387ffa  store.d r[8:9], -80(r30)
000df0  b7050100  beq r2, zero, 352
000df4  1f012000  addli r2, zero, 16
000df8  3d000000  xfence
000dfc  00a00300  mfence { lm, sm, gm }
000e00  b3020128  zext_int2long r[6:7], r2
000e04  db020000  j 20
000e08  eb530ffb  load.d r[8:9], -80(r30)
000e0c  13a17204  setlt.ul r2, r[6:7], r[8:9]
000e10  a7920200  addli.d r[6:7], r[6:7], 1
000e14  b7440100  beq r2, zero, 304
000e18  1f710000  addli r2, zero, 7
000e1c  b3040028  zext_int2long r[10:11], zero
000e20  97b32202  sll.d r[8:9], r[6:7], r2
000e24  db040000  j 36
000e28  a7c40400  addli.d r[10:11], r[10:11], 4
000e2c  0b912810  add.s r2, r17, r2
000e30  93a58403  setneq.d r11, r[10:11], r[25:26]
000e34  7366f100  stores.w r15, 12(r2)
000e38  7364d100  stores.w r13, 8(r2)
000e3c  73624101  stores.w r20, 4(r2)
000e40  73606101  stores.w r22, 0(r2)
000e44  379f05fe  beq r11, zero, -60
000e48  8ba57410  add.ul r[12:13], r[10:11], r[8:9]
000e4c  1bb12500  slli r2, r11, 2
000e50  8b152910  add.s r11, r18, r2
000e54  6fc7c500  loads.w r14, 12(r11)
000e58  6fcd0500  loads.w r26, 0(r11)
000e5c  efca4500  loads.w r21, 4(r11)
000e60  efc98500  loads.w r19, 8(r11)
000e64  1706c701  and r12, r14, r28
000e68  9385cb04  setlt.u r11, r23, r12
000e6c  3bb00500  bneq r11, zero, 12
000e70  9f070700  addli r15, r14, 0
000e74  5b010000  j 8
000e78  97170701  or r15, r14, r16
000e7c  9785c901  and r11, r19, r28
000e80  9386bb04  setlt.u r13, r23, r11
000e84  3bb00600  bneq r13, zero, 12
000e88  9f860900  addli r13, r19, 0
000e8c  5b010000  j 8
000e90  97960901  or r13, r19, r16
000e94  1789ca01  and r18, r21, r28
000e98  138a2b05  setlt.u r20, r23, r18
000e9c  3b300a00  bneq r20, zero, 12
000ea0  1f8a0a00  addli r20, r21, 0
000ea4  5b010000  j 8
000ea8  179a0a01  or r20, r21, r16
000eac  970dcd01  and r27, r26, r28
000eb0  138bbb05  setlt.u r22, r23, r27
000eb4  3b500b00  bneq r22, zero, 20
000eb8  1f0b0d00  addli r22, r26, 0
000ebc  938db105  setlt.u r27, r3, r27
000ec0  37d00d00  beq r27, zero, 20
000ec4  db040000  j 36
000ec8  171b0d01  or r22, r26, r16
000ecc  938db105  setlt.u r27, r3, r27
000ed0  3be00d00  bneq r27, zero, 24
000ed4  1b4b0d01  srli r22, r26, 16
000ed8  1b0b1b00  andi r22, r22, 1
000edc  0b1b6d11  add.s r22, r26, r22
000ee0  0b1b1b10  add.s r22, r22, r1
000ee4  170b4b00  and r22, r22, r4
000ee8  13892105  setlt.u r18, r3, r18
000eec  3b600900  bneq r18, zero, 24
000ef0  1bc90a01  srli r18, r21, 16
000ef4  1b091900  andi r18, r18, 1
000ef8  0b992a11  add.s r18, r21, r18
000efc  0b191910  add.s r18, r18, r1
000f00  170a4900  and r20, r18, r4
000f04  9385b104  setlt.u r11, r3, r11
000f08  6309dfff  loadli.w r18,  -24(r30)
000f0c  3be00500  bneq r11, zero, 24
000f10  9bc50901  srli r11, r19, 16
000f14  9b851500  andi r11, r11, 1
000f18  8b95b910  add.s r11, r19, r11
000f1c  8b951510  add.s r11, r11, r1
000f20  97864500  and r13, r11, r4
000f24  9385c104  setlt.u r11, r3, r12
000f28  3b8c05fe  bneq r11, zero, -256
000f2c  9b450701  srli r11, r14, 16
000f30  9b851500  andi r11, r11, 1
000f34  8b15b710  add.s r11, r14, r11
000f38  8b951510  add.s r11, r11, r1
000f3c  97874500  and r15, r11, r4
000f40  5bddffff  j -280
000f44  00200100  mfence { sm }
000f48  00330002  core_id r6
000f4c  6b550ff9  load.d r[11:12], -112(r30)
000f50  1f713000  addli r2, zero, 31
000f54  b3030128  zext_int2long r[8:9], r2
000f58  1f310000  addli r2, zero, 3
000f5c  733c7ffa  store.d r[8:9], -72(r30)
000f60  bb052300  bneq r6, r2, 352
000f64  1f013000  addli r2, zero, 24
000f68  3d000000  xfence
000f6c  00a00300  mfence { lm, sm, gm }
000f70  b3020128  zext_int2long r[6:7], r2
000f74  db020000  j 20
000f78  eb538ffb  load.d r[8:9], -72(r30)
000f7c  13a17204  setlt.ul r2, r[6:7], r[8:9]
000f80  a7920200  addli.d r[6:7], r[6:7], 1
000f84  b7440100  beq r2, zero, 304
000f88  1f710000  addli r2, zero, 7
000f8c  b3090028  zext_int2long r[20:21], zero
000f90  97b42202  sll.d r[10:11], r[6:7], r2
000f94  db040000  j 36
000f98  a7c90900  addli.d r[20:21], r[20:21], 4
000f9c  0b912810  add.s r2, r17, r2
000fa0  93a38903  setneq.d r7, r[20:21], r[25:26]
000fa4  73668100  stores.w r8, 12(r2)
000fa8  7364d100  stores.w r13, 8(r2)
000fac  7362f100  stores.w r15, 4(r2)
000fb0  73606101  stores.w r22, 0(r2)
000fb4  379f03fe  beq r7, zero, -60
000fb8  8ba39910  add.ul r[8:9], r[20:21], r[10:11]
000fbc  1bb12300  slli r2, r7, 2
000fc0  0b142910  add.s r8, r18, r2
000fc4  ef43c400  loads.w r7, 12(r8)
000fc8  6f4d0400  loads.w r26, 0(r8)
000fcc  ef4a4400  loads.w r21, 4(r8)
000fd0  6f478400  loads.w r14, 8(r8)
000fd4  1786c301  and r12, r7, r28
000fd8  1384cb04  setlt.u r8, r23, r12
000fdc  3b300400  bneq r8, zero, 12
000fe0  1f840300  addli r8, r7, 0
000fe4  5b010000  j 8
000fe8  17940301  or r8, r7, r16
000fec  9705c701  and r11, r14, r28
000ff0  9386bb04  setlt.u r13, r23, r11
000ff4  3bb00600  bneq r13, zero, 12
000ff8  9f060700  addli r13, r14, 0
000ffc  5b010000  j 8
001000  97160701  or r13, r14, r16
001004  1789ca01  and r18, r21, r28
001008  93872b05  setlt.u r15, r23, r18
00100c  3bb00700  bneq r15, zero, 12
001010  9f870a00  addli r15, r21, 0
001014  5b010000  j 8
001018  97970a01  or r15, r21, r16
00101c  970dcd01  and r27, r26, r28
001020  138bbb05  setlt.u r22, r23, r27
001024  3b500b00  bneq r22, zero, 20
001028  1f0b0d00  addli r22, r26, 0
00102c  938db105  setlt.u r27, r3, r27
001030  37d00d00  beq r27, zero, 20
001034  db040000  j 36
001038  171b0d01  or r22, r26, r16
00103c  938db105  setlt.u r27, r3, r27
001040  3be00d00  bneq r27, zero, 24
001044  1b4b0d01  srli r22, r26, 16
001048  1b0b1b00  andi r22, r22, 1
00104c  0b1b6d11  add.s r22, r26, r22
001050  0b1b1b10  add.s r22, r22, r1
001054  170b4b00  and r22, r22, r4
001058  13892105  setlt.u r18, r3, r18
00105c  3b600900  bneq r18, zero, 24
001060  9bc70a01  srli r15, r21, 16
001064  9b871700  andi r15, r15, 1
001068  8b97fa10  add.s r15, r21, r15
00106c  8b971710  add.s r15, r15, r1
001070  97874700  and r15, r15, r4
001074  9385b104  setlt.u r11, r3, r11
001078  6309dfff  loadli.w r18,  -24(r30)
00107c  3be00500  bneq r11, zero, 24
001080  9b450701  srli r11, r14, 16
001084  9b851500  andi r11, r11, 1
001088  8b15b710  add.s r11, r14, r11
00108c  8b951510  add.s r11, r11, r1
001090  97864500  and r13, r11, r4
001094  9385c104  setlt.u r11, r3, r12
001098  3b8c05fe  bneq r11, zero, -256
00109c  1bc40301  srli r8, r7, 16
0010a0  1b041400  andi r8, r8, 1
0010a4  8b938310  add.s r7, r7, r8
0010a8  8b931310  add.s r7, r7, r1
0010ac  17844300  and r8, r7, r4
0010b0  5bddffff  j -280
0010b4  00200100  mfence { sm }
0010b8  00330002  core_id r6
0010bc  6b550ff9  load.d r[11:12], -112(r30)
0010c0  1f714000  addli r2, zero, 39
0010c4  b3030128  zext_int2long r[8:9], r2
0010c8  63410fff  loadli.w r2,  -124(r30)
0010cc  73307ffc  store.d r[8:9], -64(r30)
0010d0  b7050100  beq r2, zero, 352
0010d4  1f014000  addli r2, zero, 32
0010d8  3d000000  xfence
0010dc  00a00300  mfence { lm, sm, gm }
0010e0  b3040128  zext_int2long r[10:11], r2
0010e4  db020000  j 20
0010e8  eb520ffc  load.d r[6:7], -64(r30)
0010ec  13a15404  setlt.ul r2, r[10:11], r[6:7]
0010f0  a7940400  addli.d r[10:11], r[10:11], 1
0010f4  b7440100  beq r2, zero, 304
0010f8  1f710000  addli r2, zero, 7
0010fc  33070028  zext_int2long r[15:16], zero
001100  97b92402  sll.d r[20:21], r[10:11], r2
001104  db040000  j 36
001108  27470700  addli.d r[15:16], r[15:16], 4
00110c  0b912810  add.s r2, r17, r2
001110  93228703  setneq.d r5, r[15:16], r[25:26]
001114  73666100  stores.w r6, 12(r2)
001118  73648100  stores.w r8, 8(r2)
00111c  7362d100  stores.w r13, 4(r2)
001120  73606101  stores.w r22, 0(r2)
001124  379f02fe  beq r5, zero, -60
001128  8b223711  add.ul r[6:7], r[15:16], r[20:21]
00112c  1bb12200  slli r2, r5, 2
001130  0b132910  add.s r6, r18, r2
001134  ef42c300  loads.w r5, 12(r6)
001138  6f4d0300  loads.w r26, 0(r6)
00113c  ef4a4300  loads.w r21, 4(r6)
001140  6f468300  loads.w r12, 8(r6)
001144  9783c201  and r7, r5, r28
001148  13837b04  setlt.u r6, r23, r7
00114c  3b300300  bneq r6, zero, 12
001150  1f830200  addli r6, r5, 0
001154  5b010000  j 8
001158  17930201  or r6, r5, r16
00115c  9705c601  and r11, r12, r28
001160  1384bb04  setlt.u r8, r23, r11
001164  3b300400  bneq r8, zero, 12
001168  1f040600  addli r8, r12, 0
00116c  5b010000  j 8
001170  17140601  or r8, r12, r16
001174  1789ca01  and r18, r21, r28
001178  93862b05  setlt.u r13, r23, r18
00117c  3bb00600  bneq r13, zero, 12
001180  9f860a00  addli r13, r21, 0
001184  5b010000  j 8
001188  97960a01  or r13, r21, r16
00118c  970dcd01  and r27, r26, r28
001190  138bbb05  setlt.u r22, r23, r27
001194  3b500b00  bneq r22, zero, 20
001198  1f0b0d00  addli r22, r26, 0
00119c  938db105  setlt.u r27, r3, r27
0011a0  37d00d00  beq r27, zero, 20
0011a4  db040000  j 36
0011a8  171b0d01  or r22, r26, r16
0011ac  938db105  setlt.u r27, r3, r27
0011b0  3be00d00  bneq r27, zero, 24
0011b4  1b4b0d01  srli r22, r26, 16
0011b8  1b0b1b00  andi r22, r22, 1
0011bc  0b1b6d11  add.s r22, r26, r22
0011c0  0b1b1b10  add.s r22, r22, r1
0011c4  170b4b00  and r22, r22, r4
0011c8  13892105  setlt.u r18, r3, r18
0011cc  3b600900  bneq r18, zero, 24
0011d0  9bc60a01  srli r13, r21, 16
0011d4  9b861600  andi r13, r13, 1
0011d8  8b96da10  add.s r13, r21, r13
0011dc  8b961610  add.s r13, r13, r1
0011e0  97864600  and r13, r13, r4
0011e4  9385b104  setlt.u r11, r3, r11
0011e8  6309dfff  loadli.w r18,  -24(r30)
0011ec  3be00500  bneq r11, zero, 24
0011f0  1b440601  srli r8, r12, 16
0011f4  1b041400  andi r8, r8, 1
0011f8  0b148610  add.s r8, r12, r8
0011fc  0b141410  add.s r8, r8, r1
001200  17044400  and r8, r8, r4
001204  93837104  setlt.u r7, r3, r7
001208  3b8c03fe  bneq r7, zero, -256
00120c  1bc30201  srli r6, r5, 16
001210  1b031300  andi r6, r6, 1
001214  8b926210  add.s r5, r5, r6
001218  8b921210  add.s r5, r5, r1
00121c  17834200  and r6, r5, r4
001220  5bddffff  j -280
001224  00200100  mfence { sm }
001228  00330002  core_id r6
00122c  6b550ff9  load.d r[11:12], -112(r30)
001230  1f715000  addli r2, zero, 47
001234  b3030128  zext_int2long r[8:9], r2
001238  1f510000  addli r2, zero, 5
00123c  73347ffc  store.d r[8:9], -56(r30)
001240  bb052300  bneq r6, r2, 352
001244  1f015000  addli r2, zero, 40
001248  3d000000  xfence
00124c  00a00300  mfence { lm, sm, gm }
001250  b3040128  zext_int2long r[10:11], r2
001254  db020000  j 20
001258  eb528ffc  load.d r[6:7], -56(r30)
00125c  13a15404  setlt.ul r2, r[10:11], r[6:7]
001260  a7940400  addli.d r[10:11], r[10:11], 1
001264  b7440100  beq r2, zero, 304
001268  1f710000  addli r2, zero, 7
00126c  33070028  zext_int2long r[15:16], zero
001270  97b92402  sll.d r[20:21], r[10:11], r2
001274  db040000  j 36
001278  27470700  addli.d r[15:16], r[15:16], 4
00127c  0b912810  add.s r2, r17, r2
001280  93228703  setneq.d r5, r[15:16], r[25:26]
001284  73666100  stores.w r6, 12(r2)
001288  73648100  stores.w r8, 8(r2)
00128c  7362d100  stores.w r13, 4(r2)
001290  73606101  stores.w r22, 0(r2)
001294  379f02fe  beq r5, zero, -60
001298  8b223711  add.ul r[6:7], r[15:16], r[20:21]
00129c  1bb12200  slli r2, r5, 2
0012a0  0b132910  add.s r6, r18, r2
0012a4  ef42c300  loads.w r5, 12(r6)
0012a8  6f4d0300  loads.w r26, 0(r6)
0012ac  ef4a4300  loads.w r21, 4(r6)
0012b0  6f468300  loads.w r12, 8(r6)
0012b4  9783c201  and r7, r5, r28
0012b8  13837b04  setlt.u r6, r23, r7
0012bc  3b300300  bneq r6, zero, 12
0012c0  1f830200  addli r6, r5, 0
0012c4  5b010000  j 8
0012c8  17930201  or r6, r5, r16
0012cc  9705c601  and r11, r12, r28
0012d0  1384bb04  setlt.u r8, r23, r11
0012d4  3b300400  bneq r8, zero, 12
0012d8  1f040600  addli r8, r12, 0
0012dc  5b010000  j 8
0012e0  17140601  or r8, r12, r16
0012e4  1789ca01  and r18, r21, r28
0012e8  93862b05  setlt.u r13, r23, r18
0012ec  3bb00600  bneq r13, zero, 12
0012f0  9f860a00  addli r13, r21, 0
0012f4  5b010000  j 8
0012f8  97960a01  or r13, r21, r16
0012fc  970dcd01  and r27, r26, r28
001300  138bbb05  setlt.u r22, r23, r27
001304  3b500b00  bneq r22, zero, 20
001308  1f0b0d00  addli r22, r26, 0
00130c  938db105  setlt.u r27, r3, r27
001310  37d00d00  beq r27, zero, 20
001314  db040000  j 36
001318  171b0d01  or r22, r26, r16
00131c  938db105  setlt.u r27, r3, r27
001320  3be00d00  bneq r27, zero, 24
001324  1b4b0d01  srli r22, r26, 16
001328  1b0b1b00  andi r22, r22, 1
00132c  0b1b6d11  add.s r22, r26, r22
001330  0b1b1b10  add.s r22, r22, r1
001334  170b4b00  and r22, r22, r4
001338  13892105  setlt.u r18, r3, r18
00133c  3b600900  bneq r18, zero, 24
001340  9bc60a01  srli r13, r21, 16
001344  9b861600  andi r13, r13, 1
001348  8b96da10  add.s r13, r21, r13
00134c  8b961610  add.s r13, r13, r1
001350  97864600  and r13, r13, r4
001354  9385b104  setlt.u r11, r3, r11
001358  6309dfff  loadli.w r18,  -24(r30)
00135c  3be00500  bneq r11, zero, 24
001360  1b440601  srli r8, r12, 16
001364  1b041400  andi r8, r8, 1
001368  0b148610  add.s r8, r12, r8
00136c  0b141410  add.s r8, r8, r1
001370  17044400  and r8, r8, r4
001374  93837104  setlt.u r7, r3, r7
001378  3b8c03fe  bneq r7, zero, -256
00137c  1bc30201  srli r6, r5, 16
001380  1b031300  andi r6, r6, 1
001384  8b926210  add.s r5, r5, r6
001388  8b921210  add.s r5, r5, r1
00138c  17834200  and r6, r5, r4
001390  5bddffff  j -280
001394  00200100  mfence { sm }
001398  00330002  core_id r6
00139c  6b550ff9  load.d r[11:12], -112(r30)
0013a0  1f716000  addli r2, zero, 55
0013a4  b3030128  zext_int2long r[8:9], r2
0013a8  1f610000  addli r2, zero, 6
0013ac  73387ffc  store.d r[8:9], -48(r30)
0013b0  3b752300  bneq r6, r2, 348
0013b4  1f016000  addli r2, zero, 48
0013b8  3d000000  xfence
0013bc  00a00300  mfence { lm, sm, gm }
0013c0  b3040128  zext_int2long r[10:11], r2
0013c4  db020000  j 20
0013c8  eb520ffd  load.d r[6:7], -48(r30)
0013cc  13a15404  setlt.ul r2, r[10:11], r[6:7]
0013d0  a7940400  addli.d r[10:11], r[10:11], 1
0013d4  b7440100  beq r2, zero, 304
0013d8  1f710000  addli r2, zero, 7
0013dc  33070028  zext_int2long r[15:16], zero
0013e0  97b92402  sll.d r[20:21], r[10:11], r2
0013e4  db040000  j 36
0013e8  27470700  addli.d r[15:16], r[15:16], 4
0013ec  0b912810  add.s r2, r17, r2
0013f0  93228703  setneq.d r5, r[15:16], r[25:26]
0013f4  73666100  stores.w r6, 12(r2)
0013f8  73648100  stores.w r8, 8(r2)
0013fc  7362d100  stores.w r13, 4(r2)
001400  73606101  stores.w r22, 0(r2)
001404  379f02fe  beq r5, zero, -60
001408  8b223711  add.ul r[6:7], r[15:16], r[20:21]
00140c  1bb12200  slli r2, r5, 2
001410  0b132910  add.s r6, r18, r2
001414  ef42c300  loads.w r5, 12(r6)
001418  6f4d0300  loads.w r26, 0(r6)
00141c  ef4a4300  loads.w r21, 4(r6)
001420  6f468300  loads.w r12, 8(r6)
001424  9783c201  and r7, r5, r28
001428  13837b04  setlt.u r6, r23, r7
00142c  3b300300  bneq r6, zero, 12
001430  1f830200  addli r6, r5, 0
001434  5b010000  j 8
001438  17930201  or r6, r5, r16
00143c  9705c601  and r11, r12, r28
001440  1384bb04  setlt.u r8, r23, r11
001444  3b300400  bneq r8, zero, 12
001448  1f040600  addli r8, r12, 0
00144c  5b010000  j 8
001450  17140601  or r8, r12, r16
001454  1789ca01  and r18, r21, r28
001458  93862b05  setlt.u r13, r23, r18
00145c  3bb00600  bneq r13, zero, 12
001460  9f860a00  addli r13, r21, 0
001464  5b010000  j 8
001468  97960a01  or r13, r21, r16
00146c  970dcd01  and r27, r26, r28
001470  138bbb05  setlt.u r22, r23, r27
001474  3b500b00  bneq r22, zero, 20
001478  1f0b0d00  addli r22, r26, 0
00147c  938db105  setlt.u r27, r3, r27
001480  37d00d00  beq r27, zero, 20
001484  db040000  j 36
001488  171b0d01  or r22, r26, r16
00148c  938db105  setlt.u r27, r3, r27
001490  3be00d00  bneq r27, zero, 24
001494  1b4b0d01  srli r22, r26, 16
001498  1b0b1b00  andi r22, r22, 1
00149c  0b1b6d11  add.s r22, r26, r22
0014a0  0b1b1b10  add.s r22, r22, r1
0014a4  170b4b00  and r22, r22, r4
0014a8  13892105  setlt.u r18, r3, r18
0014ac  3b600900  bneq r18, zero, 24
0014b0  9bc60a01  srli r13, r21, 16
0014b4  9b861600  andi r13, r13, 1
0014b8  8b96da10  add.s r13, r21, r13
0014bc  8b961610  add.s r13, r13, r1
0014c0  97864600  and r13, r13, r4
0014c4  9385b104  setlt.u r11, r3, r11
0014c8  6309dfff  loadli.w r18,  -24(r30)
0014cc  3be00500  bneq r11, zero, 24
0014d0  1b440601  srli r8, r12, 16
0014d4  1b041400  andi r8, r8, 1
0014d8  0b148610  add.s r8, r12, r8
0014dc  0b141410  add.s r8, r8, r1
0014e0  17044400  and r8, r8, r4
0014e4  93837104  setlt.u r7, r3, r7
0014e8  3b8c03fe  bneq r7, zero, -256
0014ec  1bc30201  srli r6, r5, 16
0014f0  1b031300  andi r6, r6, 1
0014f4  8b926210  add.s r5, r5, r6
0014f8  8b921210  add.s r5, r5, r1
0014fc  17834200  and r6, r5, r4
001500  5bddffff  j -280
001504  00200100  mfence { sm }
001508  6b550ff9  load.d r[11:12], -112(r30)
00150c  1f717000  addli r2, zero, 63
001510  b3020128  zext_int2long r[6:7], r2
001514  63011fff  loadli.w r2,  -120(r30)
001518  733c5ffc  store.d r[6:7], -40(r30)
00151c  37750100  beq r2, zero, 348
001520  1f017000  addli r2, zero, 56
001524  3d000000  xfence
001528  00a00300  mfence { lm, sm, gm }
00152c  b3040128  zext_int2long r[10:11], r2
001530  db020000  j 20
001534  eb528ffd  load.d r[6:7], -40(r30)
001538  13a15404  setlt.ul r2, r[10:11], r[6:7]
00153c  a7940400  addli.d r[10:11], r[10:11], 1
001540  b7440100  beq r2, zero, 304
001544  1f710000  addli r2, zero, 7
001548  33070028  zext_int2long r[15:16], zero
00154c  97b92402  sll.d r[20:21], r[10:11], r2
001550  db040000  j 36
001554  27470700  addli.d r[15:16], r[15:16], 4
001558  0b912810  add.s r2, r17, r2
00155c  93228703  setneq.d r5, r[15:16], r[25:26]
001560  73666100  stores.w r6, 12(r2)
001564  73648100  stores.w r8, 8(r2)
001568  7362d100  stores.w r13, 4(r2)
00156c  73606101  stores.w r22, 0(r2)
001570  379f02fe  beq r5, zero, -60
001574  8b223711  add.ul r[6:7], r[15:16], r[20:21]
001578  1bb12200  slli r2, r5, 2
00157c  0b132910  add.s r6, r18, r2
001580  ef42c300  loads.w r5, 12(r6)
001584  6f4d0300  loads.w r26, 0(r6)
001588  ef4a4300  loads.w r21, 4(r6)
00158c  6f468300  loads.w r12, 8(r6)
001590  9783c201  and r7, r5, r28
001594  13837b04  setlt.u r6, r23, r7
001598  3b300300  bneq r6, zero, 12
00159c  1f830200  addli r6, r5, 0
0015a0  5b010000  j 8
0015a4  17930201  or r6, r5, r16
0015a8  9705c601  and r11, r12, r28
0015ac  1384bb04  setlt.u r8, r23, r11
0015b0  3b300400  bneq r8, zero, 12
0015b4  1f040600  addli r8, r12, 0
0015b8  5b010000  j 8
0015bc  17140601  or r8, r12, r16
0015c0  1789ca01  and r18, r21, r28
0015c4  93862b05  setlt.u r13, r23, r18
0015c8  3bb00600  bneq r13, zero, 12
0015cc  9f860a00  addli r13, r21, 0
0015d0  5b010000  j 8
0015d4  97960a01  or r13, r21, r16
0015d8  970dcd01  and r27, r26, r28
0015dc  138bbb05  setlt.u r22, r23, r27
0015e0  3b500b00  bneq r22, zero, 20
0015e4  1f0b0d00  addli r22, r26, 0
0015e8  938db105  setlt.u r27, r3, r27
0015ec  37d00d00  beq r27, zero, 20
0015f0  db040000  j 36
0015f4  171b0d01  or r22, r26, r16
0015f8  938db105  setlt.u r27, r3, r27
0015fc  3be00d00  bneq r27, zero, 24
001600  1b4b0d01  srli r22, r26, 16
001604  1b0b1b00  andi r22, r22, 1
001608  0b1b6d11  add.s r22, r26, r22
00160c  0b1b1b10  add.s r22, r22, r1
001610  170b4b00  and r22, r22, r4
001614  13892105  setlt.u r18, r3, r18
001618  3b600900  bneq r18, zero, 24
00161c  9bc60a01  srli r13, r21, 16
001620  9b861600  andi r13, r13, 1
001624  8b96da10  add.s r13, r21, r13
001628  8b961610  add.s r13, r13, r1
00162c  97864600  and r13, r13, r4
001630  9385b104  setlt.u r11, r3, r11
001634  6309dfff  loadli.w r18,  -24(r30)
001638  3be00500  bneq r11, zero, 24
00163c  1b440601  srli r8, r12, 16
001640  1b041400  andi r8, r8, 1
001644  0b148610  add.s r8, r12, r8
001648  0b141410  add.s r8, r8, r1
00164c  17044400  and r8, r8, r4
001650  93837104  setlt.u r7, r3, r7
001654  3b8c03fe  bneq r7, zero, -256
001658  1bc30201  srli r6, r5, 16
00165c  1b031300  andi r6, r6, 1
001660  8b926210  add.s r5, r5, r6
001664  8b921210  add.s r5, r5, r1
001668  17834200  and r6, r5, r4
00166c  5bddffff  j -280
001670  00200100  mfence { sm }
001674  6b550ff9  load.d r[11:12], -112(r30)
001678  63411fff  loadli.w r2,  -116(r30)
00167c  9f020007  addli r5, zero, 896
001680  b3820228  zext_int2long r[6:7], r5
001684  1b317100  slli r2, r2, 7
001688  b3030128  zext_int2long r[8:9], r2
00168c  1f71f001  addli r2, zero, 255
001690  8ba25340  min.ul r[6:7], r[8:9], r[6:7]
001694  80220104  csr_set csr5, r2
001698  1f310000  addli r2, zero, 3
00169c  00e00200  sync_core
0016a0  a7820201  addli.d r[6:7], r[6:7], 128
0016a4  8ba27248  max.ul r[6:7], r[6:7], r[8:9]
0016a8  8bb27218  sub.sl r[6:7], r[6:7], r[8:9]
0016ac  80330002  core_id r7
0016b0  0ba78241  min.ul r[15:16], r[6:7], r[25:26]
0016b4  7338eff4  store.d r[15:16], -176(r30)
0016b8  bba02300  bneq r7, r2, 40
0016bc  1f311000  addli r2, zero, 11
0016c0  7d000100  xsignal r2, 0
0016c4  1f411000  addli r2, zero, 12
0016c8  7d000100  xsignal r2, 0
0016cc  1f511000  addli r2, zero, 13
0016d0  7d100100  xwait r2, 0
0016d4  1f612000  addli r2, zero, 22
0016d8  7d100100  xwait r2, 0
0016dc  db6c0000  j 868
0016e0  63013fff  loadli.w r2,  -104(r30)
0016e4  1f630000  addli r6, zero, 6
0016e8  9b329100  slli r5, r2, 9
0016ec  2b010700  lui r2, 112
0016f0  0b912210  add.s r2, r5, r2
0016f4  bb8b6300  bneq r7, r6, 736
0016f8  6b530f01  load.d r[7:8], 16(r30)
0016fc  6b540ff6  load.d r[9:10], -160(r30)
001700  9f062000  addli r13, zero, 16
001704  9f350000  addli r11, zero, 3
001708  7d900600  xwait r13, 0
00170c  0b238310  add.ul r[7:8], r[7:8], r[9:10]
001710  6344fffe  loadli.w r8,  -132(r30)
001714  bfd48500  blt.s r11, r8, 308
001718  1f550000  addli r10, zero, 5
00171c  1f160000  addli r12, zero, 1
001720  1f240000  addli r8, zero, 2
001724  9f640000  addli r9, zero, 6
001728  1d000500  lock zero, r10
00172c  15000014  dma_cfg zero, zero, zero, 10
001730  1500c014  dma_cfg zero, zero, r12, 10
001734  15008014  dma_cfg zero, zero, r8, 10
001738  1f440000  addli r8, zero, 4
00173c  1500b014  dma_cfg zero, zero, r11, 10
001740  15008014  dma_cfg zero, zero, r8, 10
001744  1500a014  dma_cfg zero, zero, r10, 10
001748  15009014  dma_cfg zero, zero, r9, 10
00174c  9f740000  addli r9, zero, 7
001750  15009014  dma_cfg zero, zero, r9, 10
001754  9f041000  addli r9, zero, 8
001758  15009014  dma_cfg zero, zero, r9, 10
00175c  9f141000  addli r9, zero, 9
001760  15009014  dma_cfg zero, zero, r9, 10
001764  9f241000  addli r9, zero, 10
001768  15009014  dma_cfg zero, zero, r9, 10
00176c  9f341000  addli r9, zero, 11
001770  15009014  dma_cfg zero, zero, r9, 10
001774  9f441000  addli r9, zero, 12
001778  15009014  dma_cfg zero, zero, r9, 10
00177c  9f541000  addli r9, zero, 13
001780  15009014  dma_cfg zero, zero, r9, 10
001784  9f641000  addli r9, zero, 14
001788  15009014  dma_cfg zero, zero, r9, 10
00178c  9f741000  addli r9, zero, 15
001790  15009014  dma_cfg zero, zero, r9, 10
001794  9f142000  addli r9, zero, 17
001798  1500d014  dma_cfg zero, zero, r13, 10
00179c  15009014  dma_cfg zero, zero, r9, 10
0017a0  9f242000  addli r9, zero, 18
0017a4  15009014  dma_cfg zero, zero, r9, 10
0017a8  9f342000  addli r9, zero, 19
0017ac  15009014  dma_cfg zero, zero, r9, 10
0017b0  9f442000  addli r9, zero, 20
0017b4  15009014  dma_cfg zero, zero, r9, 10
0017b8  9f542000  addli r9, zero, 21
0017bc  15009014  dma_cfg zero, zero, r9, 10
0017c0  9f642000  addli r9, zero, 22
0017c4  15009014  dma_cfg zero, zero, r9, 10
0017c8  9f742000  addli r9, zero, 23
0017cc  15009014  dma_cfg zero, zero, r9, 10
0017d0  9f043000  addli r9, zero, 24
0017d4  15009014  dma_cfg zero, zero, r9, 10
0017d8  9f143000  addli r9, zero, 25
0017dc  15009014  dma_cfg zero, zero, r9, 10
0017e0  9f243000  addli r9, zero, 26
0017e4  15009014  dma_cfg zero, zero, r9, 10
0017e8  9f343000  addli r9, zero, 27
0017ec  15009014  dma_cfg zero, zero, r9, 10
0017f0  9f443000  addli r9, zero, 28
0017f4  15009014  dma_cfg zero, zero, r9, 10
0017f8  9f543000  addli r9, zero, 29
0017fc  15009014  dma_cfg zero, zero, r9, 10
001800  9f643000  addli r9, zero, 30
001804  15009014  dma_cfg zero, zero, r9, 10
001808  9f743000  addli r9, zero, 31
00180c  15009014  dma_cfg zero, zero, r9, 10
001810  9f048000  addli r9, zero, 64
001814  15060600  dma_cfg r12, r12, zero, 0
001818  15060002  dma_cfg r12, zero, zero, 1
00181c  15000004  dma_cfg zero, zero, zero, 2
001820  15019006  dma_cfg r2, zero, r9, 3
001824  9f040001  addli r9, zero, 128
001828  95048008  dma_cfg r9, zero, r8, 4
00182c  1f040004  addli r8, zero, 512
001830  1504c00a  dma_cfg r8, zero, r12, 5
001834  15000010  dma_cfg zero, zero, zero, 8
001838  35000000  dma_run zero
00183c  1500c00a  dma_cfg zero, zero, r12, 5
001840  15000010  dma_cfg zero, zero, zero, 8
001844  1d100500  unlock r10
001848  2b040700  lui r8, 112
00184c  9f440000  addli r9, zero, 4
001850  1f160000  addli r12, zero, 1
001854  1f058000  addli r10, zero, 64
001858  1b140404  ori r8, r8, 64
00185c  1d800400  lock zero, r9
001860  15060600  dma_cfg r12, r12, zero, 0
001864  8b928210  add.s r5, r5, r8
001868  1f743700  addli r8, r14, 31
00186c  15800304  dma_cfg zero, r7, zero, 2
001870  9502a306  dma_cfg r5, r6, r10, 3
001874  1b331700  slli r6, r14, 1
001878  9b425400  srli r5, r8, 5
00187c  1f070001  addli r14, zero, 128
001880  9f030002  addli r7, zero, 256
001884  9f070004  addli r15, zero, 512
001888  1f540000  addli r8, zero, 5
00188c  15075508  dma_cfg r14, r10, r5, 4
001890  1b03e303  andi r6, r6, 62
001894  9587c30a  dma_cfg r15, r7, r12, 5
001898  9f230000  addli r7, zero, 2
00189c  15006010  dma_cfg zero, zero, r6, 8
0018a0  35000000  dma_run zero
0018a4  1500c00a  dma_cfg zero, zero, r12, 5
0018a8  15000010  dma_cfg zero, zero, zero, 8
0018ac  1d900400  unlock r9
0018b0  1d000400  lock zero, r8
0018b4  15000014  dma_cfg zero, zero, zero, 10
0018b8  1500c014  dma_cfg zero, zero, r12, 10
0018bc  15007014  dma_cfg zero, zero, r7, 10
0018c0  9f630000  addli r7, zero, 6
0018c4  1500b014  dma_cfg zero, zero, r11, 10
0018c8  15009014  dma_cfg zero, zero, r9, 10
0018cc  9f142000  addli r9, zero, 17
0018d0  15008014  dma_cfg zero, zero, r8, 10
0018d4  15007014  dma_cfg zero, zero, r7, 10
0018d8  9f730000  addli r7, zero, 7
0018dc  15007014  dma_cfg zero, zero, r7, 10
0018e0  9f031000  addli r7, zero, 8
0018e4  15007014  dma_cfg zero, zero, r7, 10
0018e8  9f131000  addli r7, zero, 9
0018ec  15007014  dma_cfg zero, zero, r7, 10
0018f0  9f231000  addli r7, zero, 10
0018f4  15007014  dma_cfg zero, zero, r7, 10
0018f8  9f331000  addli r7, zero, 11
0018fc  15007014  dma_cfg zero, zero, r7, 10
001900  9f431000  addli r7, zero, 12
001904  15007014  dma_cfg zero, zero, r7, 10
001908  9f531000  addli r7, zero, 13
00190c  15007014  dma_cfg zero, zero, r7, 10
001910  9f631000  addli r7, zero, 14
001914  15007014  dma_cfg zero, zero, r7, 10
001918  9f731000  addli r7, zero, 15
00191c  15007014  dma_cfg zero, zero, r7, 10
001920  1500d014  dma_cfg zero, zero, r13, 10
001924  15009014  dma_cfg zero, zero, r9, 10
001928  9f242000  addli r9, zero, 18
00192c  15009014  dma_cfg zero, zero, r9, 10
001930  9f342000  addli r9, zero, 19
001934  15009014  dma_cfg zero, zero, r9, 10
001938  9f442000  addli r9, zero, 20
00193c  15009014  dma_cfg zero, zero, r9, 10
001940  9f542000  addli r9, zero, 21
001944  15009014  dma_cfg zero, zero, r9, 10
001948  9f642000  addli r9, zero, 22
00194c  15009014  dma_cfg zero, zero, r9, 10
001950  9f742000  addli r9, zero, 23
001954  15009014  dma_cfg zero, zero, r9, 10
001958  9f043000  addli r9, zero, 24
00195c  15009014  dma_cfg zero, zero, r9, 10
001960  9f143000  addli r9, zero, 25
001964  15009014  dma_cfg zero, zero, r9, 10
001968  9f243000  addli r9, zero, 26
00196c  15009014  dma_cfg zero, zero, r9, 10
001970  9f343000  addli r9, zero, 27
001974  15009014  dma_cfg zero, zero, r9, 10
001978  9f443000  addli r9, zero, 28
00197c  15009014  dma_cfg zero, zero, r9, 10
001980  9f543000  addli r9, zero, 29
001984  15009014  dma_cfg zero, zero, r9, 10
001988  9f643000  addli r9, zero, 30
00198c  15009014  dma_cfg zero, zero, r9, 10
001990  9f743000  addli r9, zero, 31
001994  15009014  dma_cfg zero, zero, r9, 10
001998  15060600  dma_cfg r12, r12, zero, 0
00199c  15060002  dma_cfg r12, zero, zero, 1
0019a0  15000004  dma_cfg zero, zero, zero, 2
0019a4  1501a006  dma_cfg r2, zero, r10, 3
0019a8  15075008  dma_cfg r14, zero, r5, 4
0019ac  9507c00a  dma_cfg r15, zero, r12, 5
0019b0  15006010  dma_cfg zero, zero, r6, 8
0019b4  35000000  dma_run zero
0019b8  1500c00a  dma_cfg zero, zero, r12, 5
0019bc  15000010  dma_cfg zero, zero, zero, 8
0019c0  1d100400  unlock r8
0019c4  7d800300  xsignal r7, 0
0019c8  6b550ff9  load.d r[11:12], -112(r30)
0019cc  80330002  core_id r7
0019d0  5b0e0000  j 112
0019d4  9f520000  addli r5, zero, 5
0019d8  bba15300  bneq r7, r5, 104
0019dc  1f431000  addli r6, zero, 12
0019e0  9f020000  addli r5, zero, 0
0019e4  2b840000  lui r8, 8
0019e8  7d100300  xwait r6, 0
0019ec  1f731000  addli r6, zero, 15
0019f0  7d100300  xwait r6, 0
0019f4  1f230000  addli r6, zero, 2
0019f8  1d000300  lock zero, r6
0019fc  2b03803f  lui r6, 260096
001a00  0d000002  ew_cfg zero, zero, zero, 1
001a04  0d130300  ewcoeff_cfg r6, r6, zero, 0
001a08  1f73f000  addli r6, zero, 127
001a0c  0d000304  ew_cfg zero, r6, zero, 2
001a10  1f130000  addli r6, zero, 1
001a14  0d030006  ew_cfg r6, zero, zero, 3
001a18  0b935810  add.s r6, r17, r5
001a1c  9f820204  addli r5, r5, 512
001a20  2d032300  dsmadd r6, r6, r2, 0
001a24  bbdf82fe  bneq r5, r8, -12
001a28  1f210000  addli r2, zero, 2
001a2c  1d100100  unlock r2
001a30  1f511000  addli r2, zero, 13
001a34  7d000100  xsignal r2, 0
001a38  1f012000  addli r2, zero, 16
001a3c  7d000100  xsignal r2, 0
001a40  2b010500  lui r2, 80
001a44  3d000000  xfence
001a48  00a00300  mfence { lm, sm, gm }
001a4c  8b1d2910  add.s r27, r18, r2
001a50  1f71f001  addli r2, zero, 255
001a54  80220104  csr_set csr5, r2
001a58  00e00200  sync_core
001a5c  37810300  beq r7, zero, 64
001a60  1f110000  addli r2, zero, 1
001a64  b7d62300  beq r7, r2, 436
001a68  63010fff  loadli.w r2,  -128(r30)
001a6c  bb2c0100  bneq r2, zero, 808
001a70  1f310000  addli r2, zero, 3
001a74  37f22302  beq r7, r2, 1180
001a78  63410fff  loadli.w r2,  -124(r30)
001a7c  3b480102  bneq r2, zero, 1552
001a80  1f510000  addli r2, zero, 5
001a84  379e2302  beq r7, r2, 1924
001a88  1f610000  addli r2, zero, 6
001a8c  b7e32304  beq r7, r2, 2296
001a90  63011fff  loadli.w r2,  -120(r30)
001a94  bb390104  bneq r2, zero, 2668
001a98  db7b0100  j 3036
001a9c  3d000000  xfence
001aa0  b3020028  zext_int2long r[6:7], zero
001aa4  00a00300  mfence { lm, sm, gm }
001aa8  733c5ff8  store.d r[6:7], -104(r30)
001aac  5b030000  j 24
001ab0  eb520ffa  load.d r[6:7], -96(r30)
001ab4  eb530ffe  load.d r[8:9], -32(r30)
001ab8  13a15304  setlt.ul r2, r[8:9], r[6:7]
001abc  a7920300  addli.d r[6:7], r[8:9], 1
001ac0  37150100  beq r2, zero, 324
001ac4  1f710000  addli r2, zero, 7
001ac8  eb548ff9  load.d r[10:11], -104(r30)
001acc  73305ffe  store.d r[6:7], -32(r30)
001ad0  97b92202  sll.d r[20:21], r[6:7], r2
001ad4  db040000  j 36
001ad8  a7c40400  addli.d r[10:11], r[10:11], 4
001adc  0b912d10  add.s r2, r27, r2
001ae0  93a28403  setneq.d r5, r[10:11], r[25:26]
001ae4  73668100  stores.w r8, 12(r2)
001ae8  7364d100  stores.w r13, 8(r2)
001aec  73625101  stores.w r21, 4(r2)
001af0  7360b100  stores.w r11, 0(r2)
001af4  b7fe02fe  beq r5, zero, -68
001af8  8ba23411  add.ul r[6:7], r[10:11], r[20:21]
001afc  1bb12200  slli r2, r5, 2
001b00  8b922810  add.s r5, r17, r2
001b04  efc3c200  loads.w r7, 12(r5)
001b08  6fc30200  loads.w r6, 0(r5)
001b0c  6fcb4200  loads.w r22, 4(r5)
001b10  6fcd8200  loads.w r26, 8(r5)
001b14  1786c301  and r12, r7, r28
001b18  9382cb04  setlt.u r5, r23, r12
001b1c  3bb00200  bneq r5, zero, 12
001b20  1f840300  addli r8, r7, 0
001b24  5b010000  j 8
001b28  17940301  or r8, r7, r16
001b2c  9702cd01  and r5, r26, r28
001b30  93855b04  setlt.u r11, r23, r5
001b34  3bb00500  bneq r11, zero, 12
001b38  9f060d00  addli r13, r26, 0
001b3c  5b010000  j 8
001b40  97160d01  or r13, r26, r16
001b44  1709cb01  and r18, r22, r28
001b48  93852b05  setlt.u r11, r23, r18
001b4c  3bb00500  bneq r11, zero, 12
001b50  9f0a0b00  addli r21, r22, 0
001b54  5b010000  j 8
001b58  971a0b01  or r21, r22, r16
001b5c  1707c301  and r14, r6, r28
001b60  9385eb04  setlt.u r11, r23, r14
001b64  3bd00500  bneq r11, zero, 20
001b68  9f050300  addli r11, r6, 0
001b6c  1387e104  setlt.u r14, r3, r14
001b70  37500700  beq r14, zero, 20
001b74  db040000  j 36
001b78  97150301  or r11, r6, r16
001b7c  1387e104  setlt.u r14, r3, r14
001b80  3b600700  bneq r14, zero, 24
001b84  9b450301  srli r11, r6, 16
001b88  9b851500  andi r11, r11, 1
001b8c  0b13b310  add.s r6, r6, r11
001b90  0b131310  add.s r6, r6, r1
001b94  97054300  and r11, r6, r4
001b98  13832105  setlt.u r6, r3, r18
001b9c  37600300  beq r6, zero, 24
001ba0  93825104  setlt.u r5, r3, r5
001ba4  b7b00200  beq r5, zero, 44
001ba8  9382c104  setlt.u r5, r3, r12
001bac  bbbc02fe  bneq r5, zero, -212
001bb0  db070000  j 60
001bb4  1b430b01  srli r6, r22, 16
001bb8  1b031300  andi r6, r6, 1
001bbc  0b136b10  add.s r6, r22, r6
001bc0  0b131310  add.s r6, r6, r1
001bc4  970a4300  and r21, r6, r4
001bc8  93825104  setlt.u r5, r3, r5
001bcc  3bff02fe  bneq r5, zero, -36
001bd0  9b420d01  srli r5, r26, 16
001bd4  9b821200  andi r5, r5, 1
001bd8  8b125d10  add.s r5, r26, r5
001bdc  8b921210  add.s r5, r5, r1
001be0  97864200  and r13, r5, r4
001be4  9382c104  setlt.u r5, r3, r12
001be8  bbcb02fe  bneq r5, zero, -272
001bec  9bc20301  srli r5, r7, 16
001bf0  9b821200  andi r5, r5, 1
001bf4  8b925310  add.s r5, r7, r5
001bf8  8b921210  add.s r5, r5, r1
001bfc  17844200  and r8, r5, r4
001c00  5bdbffff  j -296
001c04  00200100  mfence { sm }
001c08  80330002  core_id r7
001c0c  6b550ff9  load.d r[11:12], -112(r30)
001c10  1f110000  addli r2, zero, 1
001c14  3bd923fe  bneq r7, r2, -428
001c18  1f011000  addli r2, zero, 8
001c1c  3d000000  xfence
001c20  00a00300  mfence { lm, sm, gm }
001c24  b3020128  zext_int2long r[6:7], r2
001c28  5b030000  j 24
001c2c  eb528ffa  load.d r[6:7], -88(r30)
001c30  eb530ffe  load.d r[8:9], -32(r30)
001c34  13a15304  setlt.ul r2, r[8:9], r[6:7]
001c38  a7920300  addli.d r[6:7], r[8:9], 1
001c3c  37150100  beq r2, zero, 324
001c40  1f710000  addli r2, zero, 7
001c44  b3090028  zext_int2long r[20:21], zero
001c48  73305ffe  store.d r[6:7], -32(r30)
001c4c  17b72202  sll.d r[15:16], r[6:7], r2
001c50  db040000  j 36
001c54  a7c90900  addli.d r[20:21], r[20:21], 4
001c58  0b912d10  add.s r2, r27, r2
001c5c  93a28903  setneq.d r5, r[20:21], r[25:26]
001c60  73666100  stores.w r6, 12(r2)
001c64  73648100  stores.w r8, 8(r2)
001c68  7362d100  stores.w r13, 4(r2)
001c6c  7360b100  stores.w r11, 0(r2)
001c70  b7fe02fe  beq r5, zero, -68
001c74  8ba2e910  add.ul r[6:7], r[20:21], r[15:16]
001c78  1bb12200  slli r2, r5, 2
001c7c  0b932810  add.s r6, r17, r2
001c80  ef42c300  loads.w r5, 12(r6)
001c84  6f4d0300  loads.w r26, 0(r6)
001c88  ef4a4300  loads.w r21, 4(r6)
001c8c  6f468300  loads.w r12, 8(r6)
001c90  9783c201  and r7, r5, r28
001c94  13837b04  setlt.u r6, r23, r7
001c98  3b300300  bneq r6, zero, 12
001c9c  1f830200  addli r6, r5, 0
001ca0  5b010000  j 8
001ca4  17930201  or r6, r5, r16
001ca8  170bc601  and r22, r12, r28
001cac  13846b05  setlt.u r8, r23, r22
001cb0  3b300400  bneq r8, zero, 12
001cb4  1f040600  addli r8, r12, 0
001cb8  5b010000  j 8
001cbc  17140601  or r8, r12, r16
001cc0  1789ca01  and r18, r21, r28
001cc4  93842b05  setlt.u r9, r23, r18
001cc8  3bb00400  bneq r9, zero, 12
001ccc  9f860a00  addli r13, r21, 0
001cd0  5b010000  j 8
001cd4  97960a01  or r13, r21, r16
001cd8  9704cd01  and r9, r26, r28
001cdc  13859b04  setlt.u r10, r23, r9
001ce0  3b500500  bneq r10, zero, 20
001ce4  9f050d00  addli r11, r26, 0
001ce8  93849104  setlt.u r9, r3, r9
001cec  37d00400  beq r9, zero, 20
001cf0  db040000  j 36
001cf4  97150d01  or r11, r26, r16
001cf8  93849104  setlt.u r9, r3, r9
001cfc  3be00400  bneq r9, zero, 24
001d00  9b440d01  srli r9, r26, 16
001d04  9b841400  andi r9, r9, 1
001d08  8b149d10  add.s r9, r26, r9
001d0c  8b941410  add.s r9, r9, r1
001d10  97854400  and r11, r9, r4
001d14  93842105  setlt.u r9, r3, r18
001d18  37e00400  beq r9, zero, 24
001d1c  93846105  setlt.u r9, r3, r22
001d20  b7b00400  beq r9, zero, 44
001d24  93837104  setlt.u r7, r3, r7
001d28  bbbc03fe  bneq r7, zero, -212
001d2c  db070000  j 60
001d30  9bc40a01  srli r9, r21, 16
001d34  9b841400  andi r9, r9, 1
001d38  8b949a10  add.s r9, r21, r9
001d3c  8b941410  add.s r9, r9, r1
001d40  97864400  and r13, r9, r4
001d44  93846105  setlt.u r9, r3, r22
001d48  3bff04fe  bneq r9, zero, -36
001d4c  1b440601  srli r8, r12, 16
001d50  1b041400  andi r8, r8, 1
001d54  0b148610  add.s r8, r12, r8
001d58  0b141410  add.s r8, r8, r1
001d5c  17044400  and r8, r8, r4
001d60  93837104  setlt.u r7, r3, r7
001d64  bbcb03fe  bneq r7, zero, -272
001d68  1bc30201  srli r6, r5, 16
001d6c  1b031300  andi r6, r6, 1
001d70  8b926210  add.s r5, r5, r6
001d74  8b921210  add.s r5, r5, r1
001d78  17834200  and r6, r5, r4
001d7c  5bdbffff  j -296
001d80  00200100  mfence { sm }
001d84  80330002  core_id r7
001d88  6b550ff9  load.d r[11:12], -112(r30)
001d8c  63010fff  loadli.w r2,  -128(r30)
001d90  b70301fe  beq r2, zero, -800
001d94  1f012000  addli r2, zero, 16
001d98  3d000000  xfence
001d9c  00a00300  mfence { lm, sm, gm }
001da0  b3020128  zext_int2long r[6:7], r2
001da4  5b030000  j 24
001da8  eb520ffb  load.d r[6:7], -80(r30)
001dac  eb530ffe  load.d r[8:9], -32(r30)
001db0  13a15304  setlt.ul r2, r[8:9], r[6:7]
001db4  a7920300  addli.d r[6:7], r[8:9], 1
001db8  37150100  beq r2, zero, 324
001dbc  1f710000  addli r2, zero, 7
001dc0  b3090028  zext_int2long r[20:21], zero
001dc4  73305ffe  store.d r[6:7], -32(r30)
001dc8  17b72202  sll.d r[15:16], r[6:7], r2
001dcc  db040000  j 36
001dd0  a7c90900  addli.d r[20:21], r[20:21], 4
001dd4  0b912d10  add.s r2, r27, r2
001dd8  93a28903  setneq.d r5, r[20:21], r[25:26]
001ddc  73666100  stores.w r6, 12(r2)
001de0  73648100  stores.w r8, 8(r2)
001de4  7362d100  stores.w r13, 4(r2)
001de8  7360b100  stores.w r11, 0(r2)
001dec  b7fe02fe  beq r5, zero, -68
001df0  8ba2e910  add.ul r[6:7], r[20:21], r[15:16]
001df4  1bb12200  slli r2, r5, 2
001df8  0b932810  add.s r6, r17, r2
001dfc  ef42c300  loads.w r5, 12(r6)
001e00  6f4d0300  loads.w r26, 0(r6)
001e04  ef4a4300  loads.w r21, 4(r6)
001e08  6f468300  loads.w r12, 8(r6)
001e0c  9783c201  and r7, r5, r28
001e10  13837b04  setlt.u r6, r23, r7
001e14  3b300300  bneq r6, zero, 12
001e18  1f830200  addli r6, r5, 0
001e1c  5b010000  j 8
001e20  17930201  or r6, r5, r16
001e24  170bc601  and r22, r12, r28
001e28  13846b05  setlt.u r8, r23, r22
001e2c  3b300400  bneq r8, zero, 12
001e30  1f040600  addli r8, r12, 0
001e34  5b010000  j 8
001e38  17140601  or r8, r12, r16
001e3c  1789ca01  and r18, r21, r28
001e40  93842b05  setlt.u r9, r23, r18
001e44  3bb00400  bneq r9, zero, 12
001e48  9f860a00  addli r13, r21, 0
001e4c  5b010000  j 8
001e50  97960a01  or r13, r21, r16
001e54  9704cd01  and r9, r26, r28
001e58  13859b04  setlt.u r10, r23, r9
001e5c  3b500500  bneq r10, zero, 20
001e60  9f050d00  addli r11, r26, 0
001e64  93849104  setlt.u r9, r3, r9
001e68  37d00400  beq r9, zero, 20
001e6c  db040000  j 36
001e70  97150d01  or r11, r26, r16
001e74  93849104  setlt.u r9, r3, r9
001e78  3be00400  bneq r9, zero, 24
001e7c  9b440d01  srli r9, r26, 16
001e80  9b841400  andi r9, r9, 1
001e84  8b149d10  add.s r9, r26, r9
001e88  8b941410  add.s r9, r9, r1
001e8c  97854400  and r11, r9, r4
001e90  93842105  setlt.u r9, r3, r18
001e94  37e00400  beq r9, zero, 24
001e98  93846105  setlt.u r9, r3, r22
001e9c  b7b00400  beq r9, zero, 44
001ea0  93837104  setlt.u r7, r3, r7
001ea4  bbbc03fe  bneq r7, zero, -212
001ea8  db070000  j 60
001eac  9bc40a01  srli r9, r21, 16
001eb0  9b841400  andi r9, r9, 1
001eb4  8b949a10  add.s r9, r21, r9
001eb8  8b941410  add.s r9, r9, r1
001ebc  97864400  and r13, r9, r4
001ec0  93846105  setlt.u r9, r3, r22
001ec4  3bff04fe  bneq r9, zero, -36
001ec8  1b440601  srli r8, r12, 16
001ecc  1b041400  andi r8, r8, 1
001ed0  0b148610  add.s r8, r12, r8
001ed4  0b141410  add.s r8, r8, r1
001ed8  17044400  and r8, r8, r4
001edc  93837104  setlt.u r7, r3, r7
001ee0  bbcb03fe  bneq r7, zero, -272
001ee4  1bc30201  srli r6, r5, 16
001ee8  1b031300  andi r6, r6, 1
001eec  8b926210  add.s r5, r5, r6
001ef0  8b921210  add.s r5, r5, r1
001ef4  17834200  and r6, r5, r4
001ef8  5bdbffff  j -296
001efc  00200100  mfence { sm }
001f00  80330002  core_id r7
001f04  6b550ff9  load.d r[11:12], -112(r30)
001f08  1f310000  addli r2, zero, 3
001f0c  bbbd23fc  bneq r7, r2, -1172
001f10  1f013000  addli r2, zero, 24
001f14  3d000000  xfence
001f18  00a00300  mfence { lm, sm, gm }
001f1c  b3020128  zext_int2long r[6:7], r2
001f20  5b030000  j 24
001f24  eb528ffb  load.d r[6:7], -72(r30)
001f28  eb530ffe  load.d r[8:9], -32(r30)
001f2c  13a15304  setlt.ul r2, r[8:9], r[6:7]
001f30  a7920300  addli.d r[6:7], r[8:9], 1
001f34  37150100  beq r2, zero, 324
001f38  1f710000  addli r2, zero, 7
001f3c  b3090028  zext_int2long r[20:21], zero
001f40  73305ffe  store.d r[6:7], -32(r30)
001f44  17b72202  sll.d r[15:16], r[6:7], r2
001f48  db040000  j 36
001f4c  a7c90900  addli.d r[20:21], r[20:21], 4
001f50  0b912d10  add.s r2, r27, r2
001f54  93a28903  setneq.d r5, r[20:21], r[25:26]
001f58  73666100  stores.w r6, 12(r2)
001f5c  73648100  stores.w r8, 8(r2)
001f60  7362d100  stores.w r13, 4(r2)
001f64  7360b100  stores.w r11, 0(r2)
001f68  b7fe02fe  beq r5, zero, -68
001f6c  8ba2e910  add.ul r[6:7], r[20:21], r[15:16]
001f70  1bb12200  slli r2, r5, 2
001f74  0b932810  add.s r6, r17, r2
001f78  ef42c300  loads.w r5, 12(r6)
001f7c  6f4d0300  loads.w r26, 0(r6)
001f80  ef4a4300  loads.w r21, 4(r6)
001f84  6f468300  loads.w r12, 8(r6)
001f88  9783c201  and r7, r5, r28
001f8c  13837b04  setlt.u r6, r23, r7
001f90  3b300300  bneq r6, zero, 12
001f94  1f830200  addli r6, r5, 0
001f98  5b010000  j 8
001f9c  17930201  or r6, r5, r16
001fa0  170bc601  and r22, r12, r28
001fa4  13846b05  setlt.u r8, r23, r22
001fa8  3b300400  bneq r8, zero, 12
001fac  1f040600  addli r8, r12, 0
001fb0  5b010000  j 8
001fb4  17140601  or r8, r12, r16
001fb8  1789ca01  and r18, r21, r28
001fbc  93842b05  setlt.u r9, r23, r18
001fc0  3bb00400  bneq r9, zero, 12
001fc4  9f860a00  addli r13, r21, 0
001fc8  5b010000  j 8
001fcc  97960a01  or r13, r21, r16
001fd0  9704cd01  and r9, r26, r28
001fd4  13859b04  setlt.u r10, r23, r9
001fd8  3b500500  bneq r10, zero, 20
001fdc  9f050d00  addli r11, r26, 0
001fe0  93849104  setlt.u r9, r3, r9
001fe4  37d00400  beq r9, zero, 20
001fe8  db040000  j 36
001fec  97150d01  or r11, r26, r16
001ff0  93849104  setlt.u r9, r3, r9
001ff4  3be00400  bneq r9, zero, 24
001ff8  9b440d01  srli r9, r26, 16
001ffc  9b841400  andi r9, r9, 1
002000  8b149d10  add.s r9, r26, r9
002004  8b941410  add.s r9, r9, r1
002008  97854400  and r11, r9, r4
00200c  93842105  setlt.u r9, r3, r18
002010  37e00400  beq r9, zero, 24
002014  93846105  setlt.u r9, r3, r22
002018  b7b00400  beq r9, zero, 44
00201c  93837104  setlt.u r7, r3, r7
002020  bbbc03fe  bneq r7, zero, -212
002024  db070000  j 60
002028  9bc40a01  srli r9, r21, 16
00202c  9b841400  andi r9, r9, 1
002030  8b949a10  add.s r9, r21, r9
002034  8b941410  add.s r9, r9, r1
002038  97864400  and r13, r9, r4
00203c  93846105  setlt.u r9, r3, r22
002040  3bff04fe  bneq r9, zero, -36
002044  1b440601  srli r8, r12, 16
002048  1b041400  andi r8, r8, 1
00204c  0b148610  add.s r8, r12, r8
002050  0b141410  add.s r8, r8, r1
002054  17044400  and r8, r8, r4
002058  93837104  setlt.u r7, r3, r7
00205c  bbcb03fe  bneq r7, zero, -272
002060  1bc30201  srli r6, r5, 16
002064  1b031300  andi r6, r6, 1
002068  8b926210  add.s r5, r5, r6
00206c  8b921210  add.s r5, r5, r1
002070  17834200  and r6, r5, r4
002074  5bdbffff  j -296
002078  00200100  mfence { sm }
00207c  80330002  core_id r7
002080  6b550ff9  load.d r[11:12], -112(r30)
002084  63410fff  loadli.w r2,  -124(r30)
002088  b76701fc  beq r2, zero, -1544
00208c  1f014000  addli r2, zero, 32
002090  3d000000  xfence
002094  00a00300  mfence { lm, sm, gm }
002098  b3020128  zext_int2long r[6:7], r2
00209c  5b030000  j 24
0020a0  eb520ffc  load.d r[6:7], -64(r30)
0020a4  eb530ffe  load.d r[8:9], -32(r30)
0020a8  13a15304  setlt.ul r2, r[8:9], r[6:7]
0020ac  a7920300  addli.d r[6:7], r[8:9], 1
0020b0  37150100  beq r2, zero, 324
0020b4  1f710000  addli r2, zero, 7
0020b8  b3090028  zext_int2long r[20:21], zero
0020bc  73305ffe  store.d r[6:7], -32(r30)
0020c0  17b72202  sll.d r[15:16], r[6:7], r2
0020c4  db040000  j 36
0020c8  a7c90900  addli.d r[20:21], r[20:21], 4
0020cc  0b912d10  add.s r2, r27, r2
0020d0  93a28903  setneq.d r5, r[20:21], r[25:26]
0020d4  73666100  stores.w r6, 12(r2)
0020d8  73648100  stores.w r8, 8(r2)
0020dc  7362d100  stores.w r13, 4(r2)
0020e0  7360b100  stores.w r11, 0(r2)
0020e4  b7fe02fe  beq r5, zero, -68
0020e8  8ba2e910  add.ul r[6:7], r[20:21], r[15:16]
0020ec  1bb12200  slli r2, r5, 2
0020f0  0b932810  add.s r6, r17, r2
0020f4  ef42c300  loads.w r5, 12(r6)
0020f8  6f4d0300  loads.w r26, 0(r6)
0020fc  ef4a4300  loads.w r21, 4(r6)
002100  6f468300  loads.w r12, 8(r6)
002104  9783c201  and r7, r5, r28
002108  13837b04  setlt.u r6, r23, r7
00210c  3b300300  bneq r6, zero, 12
002110  1f830200  addli r6, r5, 0
002114  5b010000  j 8
002118  17930201  or r6, r5, r16
00211c  170bc601  and r22, r12, r28
002120  13846b05  setlt.u r8, r23, r22
002124  3b300400  bneq r8, zero, 12
002128  1f040600  addli r8, r12, 0
00212c  5b010000  j 8
002130  17140601  or r8, r12, r16
002134  1789ca01  and r18, r21, r28
002138  93842b05  setlt.u r9, r23, r18
00213c  3bb00400  bneq r9, zero, 12
002140  9f860a00  addli r13, r21, 0
002144  5b010000  j 8
002148  97960a01  or r13, r21, r16
00214c  9704cd01  and r9, r26, r28
002150  13859b04  setlt.u r10, r23, r9
002154  3b500500  bneq r10, zero, 20
002158  9f050d00  addli r11, r26, 0
00215c  93849104  setlt.u r9, r3, r9
002160  37d00400  beq r9, zero, 20
002164  db040000  j 36
002168  97150d01  or r11, r26, r16
00216c  93849104  setlt.u r9, r3, r9
002170  3be00400  bneq r9, zero, 24
002174  9b440d01  srli r9, r26, 16
002178  9b841400  andi r9, r9, 1
00217c  8b149d10  add.s r9, r26, r9
002180  8b941410  add.s r9, r9, r1
002184  97854400  and r11, r9, r4
002188  93842105  setlt.u r9, r3, r18
00218c  37e00400  beq r9, zero, 24
002190  93846105  setlt.u r9, r3, r22
002194  b7b00400  beq r9, zero, 44
002198  93837104  setlt.u r7, r3, r7
00219c  bbbc03fe  bneq r7, zero, -212
0021a0  db070000  j 60
0021a4  9bc40a01  srli r9, r21, 16
0021a8  9b841400  andi r9, r9, 1
0021ac  8b949a10  add.s r9, r21, r9
0021b0  8b941410  add.s r9, r9, r1
0021b4  97864400  and r13, r9, r4
0021b8  93846105  setlt.u r9, r3, r22
0021bc  3bff04fe  bneq r9, zero, -36
0021c0  1b440601  srli r8, r12, 16
0021c4  1b041400  andi r8, r8, 1
0021c8  0b148610  add.s r8, r12, r8
0021cc  0b141410  add.s r8, r8, r1
0021d0  17044400  and r8, r8, r4
0021d4  93837104  setlt.u r7, r3, r7
0021d8  bbcb03fe  bneq r7, zero, -272
0021dc  1bc30201  srli r6, r5, 16
0021e0  1b031300  andi r6, r6, 1
0021e4  8b926210  add.s r5, r5, r6
0021e8  8b921210  add.s r5, r5, r1
0021ec  17834200  and r6, r5, r4
0021f0  5bdbffff  j -296
0021f4  00200100  mfence { sm }
0021f8  80330002  core_id r7
0021fc  6b550ff9  load.d r[11:12], -112(r30)
002200  1f510000  addli r2, zero, 5
002204  3b9223fc  bneq r7, r2, -1916
002208  1f015000  addli r2, zero, 40
00220c  3d000000  xfence
002210  00a00300  mfence { lm, sm, gm }
002214  b3020128  zext_int2long r[6:7], r2
002218  5b030000  j 24
00221c  eb528ffc  load.d r[6:7], -56(r30)
002220  eb530ffe  load.d r[8:9], -32(r30)
002224  13a15304  setlt.ul r2, r[8:9], r[6:7]
002228  a7920300  addli.d r[6:7], r[8:9], 1
00222c  37150100  beq r2, zero, 324
002230  1f710000  addli r2, zero, 7
002234  b3090028  zext_int2long r[20:21], zero
002238  73305ffe  store.d r[6:7], -32(r30)
00223c  17b72202  sll.d r[15:16], r[6:7], r2
002240  db040000  j 36
002244  a7c90900  addli.d r[20:21], r[20:21], 4
002248  0b912d10  add.s r2, r27, r2
00224c  93a28903  setneq.d r5, r[20:21], r[25:26]
002250  73666100  stores.w r6, 12(r2)
002254  73648100  stores.w r8, 8(r2)
002258  7362d100  stores.w r13, 4(r2)
00225c  7360b100  stores.w r11, 0(r2)
002260  b7fe02fe  beq r5, zero, -68
002264  8ba2e910  add.ul r[6:7], r[20:21], r[15:16]
002268  1bb12200  slli r2, r5, 2
00226c  0b932810  add.s r6, r17, r2
002270  ef42c300  loads.w r5, 12(r6)
002274  6f4d0300  loads.w r26, 0(r6)
002278  ef4a4300  loads.w r21, 4(r6)
00227c  6f468300  loads.w r12, 8(r6)
002280  9783c201  and r7, r5, r28
002284  13837b04  setlt.u r6, r23, r7
002288  3b300300  bneq r6, zero, 12
00228c  1f830200  addli r6, r5, 0
002290  5b010000  j 8
002294  17930201  or r6, r5, r16
002298  170bc601  and r22, r12, r28
00229c  13846b05  setlt.u r8, r23, r22
0022a0  3b300400  bneq r8, zero, 12
0022a4  1f040600  addli r8, r12, 0
0022a8  5b010000  j 8
0022ac  17140601  or r8, r12, r16
0022b0  1789ca01  and r18, r21, r28
0022b4  93842b05  setlt.u r9, r23, r18
0022b8  3bb00400  bneq r9, zero, 12
0022bc  9f860a00  addli r13, r21, 0
0022c0  5b010000  j 8
0022c4  97960a01  or r13, r21, r16
0022c8  9704cd01  and r9, r26, r28
0022cc  13859b04  setlt.u r10, r23, r9
0022d0  3b500500  bneq r10, zero, 20
0022d4  9f050d00  addli r11, r26, 0
0022d8  93849104  setlt.u r9, r3, r9
0022dc  37d00400  beq r9, zero, 20
0022e0  db040000  j 36
0022e4  97150d01  or r11, r26, r16
0022e8  93849104  setlt.u r9, r3, r9
0022ec  3be00400  bneq r9, zero, 24
0022f0  9b440d01  srli r9, r26, 16
0022f4  9b841400  andi r9, r9, 1
0022f8  8b149d10  add.s r9, r26, r9
0022fc  8b941410  add.s r9, r9, r1
002300  97854400  and r11, r9, r4
002304  93842105  setlt.u r9, r3, r18
002308  37e00400  beq r9, zero, 24
00230c  93846105  setlt.u r9, r3, r22
002310  b7b00400  beq r9, zero, 44
002314  93837104  setlt.u r7, r3, r7
002318  bbbc03fe  bneq r7, zero, -212
00231c  db070000  j 60
002320  9bc40a01  srli r9, r21, 16
002324  9b841400  andi r9, r9, 1
002328  8b949a10  add.s r9, r21, r9
00232c  8b941410  add.s r9, r9, r1
002330  97864400  and r13, r9, r4
002334  93846105  setlt.u r9, r3, r22
002338  3bff04fe  bneq r9, zero, -36
00233c  1b440601  srli r8, r12, 16
002340  1b041400  andi r8, r8, 1
002344  0b148610  add.s r8, r12, r8
002348  0b141410  add.s r8, r8, r1
00234c  17044400  and r8, r8, r4
002350  93837104  setlt.u r7, r3, r7
002354  bbcb03fe  bneq r7, zero, -272
002358  1bc30201  srli r6, r5, 16
00235c  1b031300  andi r6, r6, 1
002360  8b926210  add.s r5, r5, r6
002364  8b921210  add.s r5, r5, r1
002368  17834200  and r6, r5, r4
00236c  5bdbffff  j -296
002370  00200100  mfence { sm }
002374  80330002  core_id r7
002378  6b550ff9  load.d r[11:12], -112(r30)
00237c  1f610000  addli r2, zero, 6
002380  3bcc23fa  bneq r7, r2, -2288
002384  1f016000  addli r2, zero, 48
002388  3d000000  xfence
00238c  00a00300  mfence { lm, sm, gm }
002390  b3020128  zext_int2long r[6:7], r2
002394  5b030000  j 24
002398  eb520ffd  load.d r[6:7], -48(r30)
00239c  eb530ffe  load.d r[8:9], -32(r30)
0023a0  13a15304  setlt.ul r2, r[8:9], r[6:7]
0023a4  a7920300  addli.d r[6:7], r[8:9], 1
0023a8  37150100  beq r2, zero, 324
0023ac  1f710000  addli r2, zero, 7
0023b0  b3090028  zext_int2long r[20:21], zero
0023b4  73305ffe  store.d r[6:7], -32(r30)
0023b8  17b72202  sll.d r[15:16], r[6:7], r2
0023bc  db040000  j 36
0023c0  a7c90900  addli.d r[20:21], r[20:21], 4
0023c4  0b912d10  add.s r2, r27, r2
0023c8  93a28903  setneq.d r5, r[20:21], r[25:26]
0023cc  73666100  stores.w r6, 12(r2)
0023d0  73648100  stores.w r8, 8(r2)
0023d4  7362d100  stores.w r13, 4(r2)
0023d8  7360b100  stores.w r11, 0(r2)
0023dc  b7fe02fe  beq r5, zero, -68
0023e0  8ba2e910  add.ul r[6:7], r[20:21], r[15:16]
0023e4  1bb12200  slli r2, r5, 2
0023e8  0b932810  add.s r6, r17, r2
0023ec  ef42c300  loads.w r5, 12(r6)
0023f0  6f4d0300  loads.w r26, 0(r6)
0023f4  ef4a4300  loads.w r21, 4(r6)
0023f8  6f468300  loads.w r12, 8(r6)
0023fc  9783c201  and r7, r5, r28
002400  13837b04  setlt.u r6, r23, r7
002404  3b300300  bneq r6, zero, 12
002408  1f830200  addli r6, r5, 0
00240c  5b010000  j 8
002410  17930201  or r6, r5, r16
002414  170bc601  and r22, r12, r28
002418  13846b05  setlt.u r8, r23, r22
00241c  3b300400  bneq r8, zero, 12
002420  1f040600  addli r8, r12, 0
002424  5b010000  j 8
002428  17140601  or r8, r12, r16
00242c  1789ca01  and r18, r21, r28
002430  93842b05  setlt.u r9, r23, r18
002434  3bb00400  bneq r9, zero, 12
002438  9f860a00  addli r13, r21, 0
00243c  5b010000  j 8
002440  97960a01  or r13, r21, r16
002444  9704cd01  and r9, r26, r28
002448  13859b04  setlt.u r10, r23, r9
00244c  3b500500  bneq r10, zero, 20
002450  9f050d00  addli r11, r26, 0
002454  93849104  setlt.u r9, r3, r9
002458  37d00400  beq r9, zero, 20
00245c  db040000  j 36
002460  97150d01  or r11, r26, r16
002464  93849104  setlt.u r9, r3, r9
002468  3be00400  bneq r9, zero, 24
00246c  9b440d01  srli r9, r26, 16
002470  9b841400  andi r9, r9, 1
002474  8b149d10  add.s r9, r26, r9
002478  8b941410  add.s r9, r9, r1
00247c  97854400  and r11, r9, r4
002480  93842105  setlt.u r9, r3, r18
002484  37e00400  beq r9, zero, 24
002488  93846105  setlt.u r9, r3, r22
00248c  b7b00400  beq r9, zero, 44
002490  93837104  setlt.u r7, r3, r7
002494  bbbc03fe  bneq r7, zero, -212
002498  db070000  j 60
00249c  9bc40a01  srli r9, r21, 16
0024a0  9b841400  andi r9, r9, 1
0024a4  8b949a10  add.s r9, r21, r9
0024a8  8b941410  add.s r9, r9, r1
0024ac  97864400  and r13, r9, r4
0024b0  93846105  setlt.u r9, r3, r22
0024b4  3bff04fe  bneq r9, zero, -36
0024b8  1b440601  srli r8, r12, 16
0024bc  1b041400  andi r8, r8, 1
0024c0  0b148610  add.s r8, r12, r8
0024c4  0b141410  add.s r8, r8, r1
0024c8  17044400  and r8, r8, r4
0024cc  93837104  setlt.u r7, r3, r7
0024d0  bbcb03fe  bneq r7, zero, -272
0024d4  1bc30201  srli r6, r5, 16
0024d8  1b031300  andi r6, r6, 1
0024dc  8b926210  add.s r5, r5, r6
0024e0  8b921210  add.s r5, r5, r1
0024e4  17834200  and r6, r5, r4
0024e8  5bdbffff  j -296
0024ec  00200100  mfence { sm }
0024f0  80330002  core_id r7
0024f4  6b550ff9  load.d r[11:12], -112(r30)
0024f8  63011fff  loadli.w r2,  -120(r30)
0024fc  b7650100  beq r2, zero, 376
002500  1f017000  addli r2, zero, 56
002504  3d000000  xfence
002508  00a00300  mfence { lm, sm, gm }
00250c  b3020128  zext_int2long r[6:7], r2
002510  5b030000  j 24
002514  eb528ffd  load.d r[6:7], -40(r30)
002518  eb530ffe  load.d r[8:9], -32(r30)
00251c  13a15304  setlt.ul r2, r[8:9], r[6:7]
002520  a7920300  addli.d r[6:7], r[8:9], 1
002524  37150100  beq r2, zero, 324
002528  1f710000  addli r2, zero, 7
00252c  b3090028  zext_int2long r[20:21], zero
002530  73305ffe  store.d r[6:7], -32(r30)
002534  17b72202  sll.d r[15:16], r[6:7], r2
002538  db040000  j 36
00253c  a7c90900  addli.d r[20:21], r[20:21], 4
002540  0b912d10  add.s r2, r27, r2
002544  93a28903  setneq.d r5, r[20:21], r[25:26]
002548  73666100  stores.w r6, 12(r2)
00254c  73648100  stores.w r8, 8(r2)
002550  7362d100  stores.w r13, 4(r2)
002554  7360b100  stores.w r11, 0(r2)
002558  b7fe02fe  beq r5, zero, -68
00255c  8ba2e910  add.ul r[6:7], r[20:21], r[15:16]
002560  1bb12200  slli r2, r5, 2
002564  0b932810  add.s r6, r17, r2
002568  ef42c300  loads.w r5, 12(r6)
00256c  6f4d0300  loads.w r26, 0(r6)
002570  ef4a4300  loads.w r21, 4(r6)
002574  6f468300  loads.w r12, 8(r6)
002578  9783c201  and r7, r5, r28
00257c  13837b04  setlt.u r6, r23, r7
002580  3b300300  bneq r6, zero, 12
002584  1f830200  addli r6, r5, 0
002588  5b010000  j 8
00258c  17930201  or r6, r5, r16
002590  170bc601  and r22, r12, r28
002594  13846b05  setlt.u r8, r23, r22
002598  3b300400  bneq r8, zero, 12
00259c  1f040600  addli r8, r12, 0
0025a0  5b010000  j 8
0025a4  17140601  or r8, r12, r16
0025a8  1789ca01  and r18, r21, r28
0025ac  93842b05  setlt.u r9, r23, r18
0025b0  3bb00400  bneq r9, zero, 12
0025b4  9f860a00  addli r13, r21, 0
0025b8  5b010000  j 8
0025bc  97960a01  or r13, r21, r16
0025c0  9704cd01  and r9, r26, r28
0025c4  13859b04  setlt.u r10, r23, r9
0025c8  3b500500  bneq r10, zero, 20
0025cc  9f050d00  addli r11, r26, 0
0025d0  93849104  setlt.u r9, r3, r9
0025d4  37d00400  beq r9, zero, 20
0025d8  db040000  j 36
0025dc  97150d01  or r11, r26, r16
0025e0  93849104  setlt.u r9, r3, r9
0025e4  3be00400  bneq r9, zero, 24
0025e8  9b440d01  srli r9, r26, 16
0025ec  9b841400  andi r9, r9, 1
0025f0  8b149d10  add.s r9, r26, r9
0025f4  8b941410  add.s r9, r9, r1
0025f8  97854400  and r11, r9, r4
0025fc  93842105  setlt.u r9, r3, r18
002600  37e00400  beq r9, zero, 24
002604  93846105  setlt.u r9, r3, r22
002608  b7b00400  beq r9, zero, 44
00260c  93837104  setlt.u r7, r3, r7
002610  bbbc03fe  bneq r7, zero, -212
002614  db070000  j 60
002618  9bc40a01  srli r9, r21, 16
00261c  9b841400  andi r9, r9, 1
002620  8b949a10  add.s r9, r21, r9
002624  8b941410  add.s r9, r9, r1
002628  97864400  and r13, r9, r4
00262c  93846105  setlt.u r9, r3, r22
002630  3bff04fe  bneq r9, zero, -36
002634  1b440601  srli r8, r12, 16
002638  1b041400  andi r8, r8, 1
00263c  0b148610  add.s r8, r12, r8
002640  0b141410  add.s r8, r8, r1
002644  17044400  and r8, r8, r4
002648  93837104  setlt.u r7, r3, r7
00264c  bbcb03fe  bneq r7, zero, -272
002650  1bc30201  srli r6, r5, 16
002654  1b031300  andi r6, r6, 1
002658  8b926210  add.s r5, r5, r6
00265c  8b921210  add.s r5, r5, r1
002660  17834200  and r6, r5, r4
002664  5bdbffff  j -296
002668  00200100  mfence { sm }
00266c  80330002  core_id r7
002670  6b550ff9  load.d r[11:12], -112(r30)
002674  1f71f001  addli r2, zero, 255
002678  80220104  csr_set csr5, r2
00267c  1f310000  addli r2, zero, 3
002680  00e00200  sync_core
002684  3bc12300  bneq r7, r2, 80
002688  1f611000  addli r2, zero, 14
00268c  7d000100  xsignal r2, 0
002690  1f312000  addli r2, zero, 19
002694  7d000100  xsignal r2, 0
002698  1f412000  addli r2, zero, 20
00269c  7d000100  xsignal r2, 0
0026a0  1f112000  addli r2, zero, 17
0026a4  7d000100  xsignal r2, 0
0026a8  6341dfff  loadli.w r2,  -20(r30)
0026ac  e3427ffe  loadli.w r5,  -196(r30)
0026b0  6303dfff  loadli.w r6,  -24(r30)
0026b4  1f110100  addli r2, r2, 1
0026b8  8b185310  add.s r17, r6, r5
0026bc  e74e2ffe  storeli.w r2, -20(r30)
0026c0  1f212000  addli r2, zero, 18
0026c4  7d100100  xwait r2, 0
0026c8  1f712000  addli r2, zero, 23
0026cc  7d100100  xwait r2, 0
0026d0  db370000  j 444
0026d4  63417ffe  loadli.w r2,  -196(r30)
0026d8  e302dfff  loadli.w r5,  -24(r30)
0026dc  8b982210  add.s r17, r5, r2
0026e0  1f510000  addli r2, zero, 5
0026e4  3bf62300  bneq r7, r2, 412
0026e8  1f112000  addli r2, zero, 17
0026ec  1f240000  addli r8, zero, 2
0026f0  ab0400c1  lui r9, 790528
0026f4  9f020000  addli r5, zero, 0
0026f8  7d100100  xwait r2, 0
0026fc  1f013000  addli r2, zero, 24
002700  7d100100  xwait r2, 0
002704  1d000400  lock zero, r8
002708  1f511000  addli r2, zero, 13
00270c  0d000002  ew_cfg zero, zero, zero, 1
002710  6b530ff4  load.d r[7:8], -192(r30)
002714  0d800304  ew_cfg zero, r7, zero, 2
002718  1f430000  addli r6, zero, 4
00271c  9f130000  addli r7, zero, 1
002720  0d030006  ew_cfg r6, zero, zero, 3
002724  0d030326  ew_cfg r6, r6, zero, 19
002728  0d010014  ew_cfg r2, zero, zero, 10
00272c  63415ffe  loadli.w r2,  -212(r30)
002730  0d842316  ew_cfg r8, r7, r2, 11
002734  1f310000  addli r2, zero, 3
002738  0d00201a  ew_cfg zero, zero, r2, 13
00273c  2b81ff40  lui r2, 266232
002740  8d04231c  ew_cfg r9, r6, r2, 14
002744  2b01803f  lui r2, 260096
002748  0d00011e  ew_cfg zero, r2, zero, 15
00274c  cda80d00  sslut r17, r27, 0
002750  0d000014  ew_cfg zero, zero, zero, 10
002754  0d000026  ew_cfg zero, zero, zero, 19
002758  1d100400  unlock r8
00275c  6341dfff  loadli.w r2,  -20(r30)
002760  0b136138  mod.s r6, r2, r6
002764  1f110100  addli r2, r2, 1
002768  e74e2ffe  storeli.w r2, -20(r30)
00276c  1f312000  addli r2, zero, 19
002770  7d100100  xwait r2, 0
002774  1f113000  addli r2, zero, 25
002778  7d100100  xwait r2, 0
00277c  1d000400  lock zero, r8
002780  1b31f300  slli r2, r6, 15
002784  2b840000  lui r8, 8
002788  0d000002  ew_cfg zero, zero, zero, 1
00278c  63035ffe  loadli.w r6,  -216(r30)
002790  0b116110  add.s r2, r2, r6
002794  1f73f000  addli r6, zero, 127
002798  0d000304  ew_cfg zero, r6, zero, 2
00279c  8d030006  ew_cfg r7, zero, zero, 3
0027a0  63434ffe  loadli.w r6,  -220(r30)
0027a4  0d130000  ewcoeff_cfg r6, zero, zero, 0
0027a8  0b135110  add.s r6, r2, r5
0027ac  8b935d10  add.s r7, r27, r5
0027b0  9f820204  addli r5, r5, 512
0027b4  2da37300  dscmpnsel r6, r7, r7, 0
0027b8  bbcf82fe  bneq r5, r8, -16
0027bc  1f230000  addli r6, zero, 2
0027c0  9f020000  addli r5, zero, 0
0027c4  ab830000  lui r7, 8
0027c8  1d100300  unlock r6
0027cc  1d000300  lock zero, r6
0027d0  1f73f000  addli r6, zero, 127
0027d4  0d000002  ew_cfg zero, zero, zero, 1
0027d8  0d000304  ew_cfg zero, r6, zero, 2
0027dc  1f130000  addli r6, zero, 1
0027e0  0d030006  ew_cfg r6, zero, zero, 3
0027e4  8d110000  ewcoeff_cfg r3, zero, zero, 0
0027e8  0b135110  add.s r6, r2, r5
0027ec  9f820204  addli r5, r5, 512
0027f0  2d236308  dscmpnsel r6, r6, r6, 4
0027f4  bbdf72fe  bneq r5, r7, -12
0027f8  1f240000  addli r8, zero, 2
0027fc  9f422000  addli r5, zero, 20
002800  ab04803f  lui r9, 260096
002804  1d100400  unlock r8
002808  7d900200  xwait r5, 0
00280c  1d000400  lock zero, r8
002810  ab0280bf  lui r5, 784384
002814  0d000002  ew_cfg zero, zero, zero, 1
002818  8d940200  ewcoeff_cfg r9, r5, zero, 0
00281c  9f420000  addli r5, zero, 4
002820  6b530ff4  load.d r[7:8], -192(r30)
002824  0d800304  ew_cfg zero, r7, zero, 2
002828  8d020006  ew_cfg r5, zero, zero, 3
00282c  8d825226  ew_cfg r5, r5, r5, 19
002830  ad8d2d00  dsmadd r27, r27, r2, 0
002834  1f113000  addli r2, zero, 25
002838  0d000026  ew_cfg zero, zero, zero, 19
00283c  1d100400  unlock r8
002840  7d000100  xsignal r2, 0
002844  1d000400  lock zero, r8
002848  1f212000  addli r2, zero, 18
00284c  0d000002  ew_cfg zero, zero, zero, 1
002850  8d940400  ewcoeff_cfg r9, r9, zero, 0
002854  0d800304  ew_cfg zero, r7, zero, 2
002858  80330002  core_id r7
00285c  8d020006  ew_cfg r5, zero, zero, 3
002860  8d825226  ew_cfg r5, r5, r5, 19
002864  ad88b801  dsmadd r17, r17, r27, 0
002868  0d000026  ew_cfg zero, zero, zero, 19
00286c  1d100400  unlock r8
002870  7d000100  xsignal r2, 0
002874  1f712000  addli r2, zero, 23
002878  7d000100  xsignal r2, 0
00287c  5b020000  j 16
002880  6341dfff  loadli.w r2,  -20(r30)
002884  1f110100  addli r2, r2, 1
002888  e74e2ffe  storeli.w r2, -20(r30)
00288c  1f71f001  addli r2, zero, 255
002890  3d000000  xfence
002894  8b971d19  sub.s r15, r27, r17
002898  00a00300  mfence { lm, sm, gm }
00289c  80220104  csr_set csr5, r2
0028a0  1f71f000  addli r2, zero, 127
0028a4  b3020128  zext_int2long r[6:7], r2
0028a8  73305ffe  store.d r[6:7], -32(r30)
0028ac  00e00200  sync_core
0028b0  37810300  beq r7, zero, 64
0028b4  1f110000  addli r2, zero, 1
0028b8  b7d82300  beq r7, r2, 564
0028bc  63010fff  loadli.w r2,  -128(r30)
0028c0  bb300102  bneq r2, zero, 1068
0028c4  1f310000  addli r2, zero, 3
0028c8  b7882302  beq r7, r2, 1568
0028cc  63410fff  loadli.w r2,  -124(r30)
0028d0  3b600104  bneq r2, zero, 2072
0028d4  1f510000  addli r2, zero, 5
0028d8  37c82304  beq r7, r2, 2576
0028dc  1f610000  addli r2, zero, 6
0028e0  37a02306  beq r7, r2, 3080
0028e4  63011fff  loadli.w r2,  -120(r30)
0028e8  3b080106  bneq r2, zero, 3584
0028ec  dbfd0100  j 4076
0028f0  1f012000  addli r2, zero, 16
0028f4  b3020028  zext_int2long r[6:7], zero
0028f8  13812704  setlt.u r2, r15, r2
0028fc  e7482ffe  storeli.w r2, -116(r30)
002900  3d000000  xfence
002904  00a00300  mfence { lm, sm, gm }
002908  5b030000  j 24
00290c  eb520ffa  load.d r[6:7], -96(r30)
002910  eb538ff9  load.d r[8:9], -104(r30)
002914  13a15304  setlt.ul r2, r[8:9], r[6:7]
002918  a7920300  addli.d r[6:7], r[8:9], 1
00291c  b7760100  beq r2, zero, 444
002920  1f710000  addli r2, zero, 7
002924  733c5ff8  store.d r[6:7], -104(r30)
002928  97b42202  sll.d r[10:11], r[6:7], r2
00292c  63411fff  loadli.w r2,  -116(r30)
002930  b7510100  beq r2, zero, 116
002934  b3020028  zext_int2long r[6:7], zero
002938  db030000  j 28
00293c  eb550ffe  load.d r[12:13], -32(r30)
002940  0b912d10  add.s r2, r27, r2
002944  73607100  stores.w r7, 0(r2)
002948  13a4b204  setlt.ul r8, r[6:7], r[12:13]
00294c  a7920200  addli.d r[6:7], r[6:7], 1
002950  b77e04fe  beq r8, zero, -68
002954  8ba39210  add.ul r[8:9], r[6:7], r[10:11]
002958  1bb12300  slli r2, r7, 2
00295c  8b932810  add.s r7, r17, r2
002960  6fc40300  loads.w r8, 0(r7)
002964  9705c401  and r11, r8, r28
002968  9383bb04  setlt.u r7, r23, r11
00296c  3bd00300  bneq r7, zero, 20
002970  9f030400  addli r7, r8, 0
002974  9385b104  setlt.u r11, r3, r11
002978  3b9f05fe  bneq r11, zero, -60
00297c  5b020000  j 16
002980  97130401  or r7, r8, r16
002984  9385b104  setlt.u r11, r3, r11
002988  bbde05fe  bneq r11, zero, -76
00298c  9b430401  srli r7, r8, 16
002990  9b831300  andi r7, r7, 1
002994  8b137410  add.s r7, r8, r7
002998  8b931310  add.s r7, r7, r1
00299c  97834300  and r7, r7, r4
0029a0  dbf3ffff  j -100
0029a4  b3020028  zext_int2long r[6:7], zero
0029a8  db040000  j 36
0029ac  a7c20200  addli.d r[6:7], r[6:7], 4
0029b0  0b94ad11  add.s r8, r27, r26
0029b4  13a18201  seteq.d r2, r[6:7], r[25:26]
0029b8  73667400  stores.w r7, 12(r8)
0029bc  7364d400  stores.w r13, 8(r8)
0029c0  73623401  stores.w r19, 4(r8)
0029c4  7360b400  stores.w r11, 0(r8)
0029c8  3b1d01fe  bneq r2, zero, -188
0029cc  8ba39210  add.ul r[8:9], r[6:7], r[10:11]
0029d0  1bbd2300  slli r26, r7, 2
0029d4  8b95a811  add.s r11, r17, r26
0029d8  6fc4c500  loads.w r8, 12(r11)
0029dc  1706c401  and r12, r8, r28
0029e0  1381cb04  setlt.u r2, r23, r12
0029e4  3b300100  bneq r2, zero, 12
0029e8  9f030400  addli r7, r8, 0
0029ec  5b010000  j 8
0029f0  97130401  or r7, r8, r16
0029f4  6fcb8500  loads.w r22, 8(r11)
0029f8  1701cb01  and r2, r22, r28
0029fc  93862b04  setlt.u r13, r23, r2
002a00  3bb00600  bneq r13, zero, 12
002a04  9f060b00  addli r13, r22, 0
002a08  5b010000  j 8
002a0c  97160b01  or r13, r22, r16
002a10  efca4500  loads.w r21, 4(r11)
002a14  178aca01  and r20, r21, r28
002a18  13874b05  setlt.u r14, r23, r20
002a1c  3b300700  bneq r14, zero, 12
002a20  9f890a00  addli r19, r21, 0
002a24  5b010000  j 8
002a28  97990a01  or r19, r21, r16
002a2c  6fc90500  loads.w r18, 0(r11)
002a30  1707c901  and r14, r18, r28
002a34  9385eb04  setlt.u r11, r23, r14
002a38  3bd00500  bneq r11, zero, 20
002a3c  9f050900  addli r11, r18, 0
002a40  1387e104  setlt.u r14, r3, r14
002a44  37500700  beq r14, zero, 20
002a48  db040000  j 36
002a4c  97150901  or r11, r18, r16
002a50  1387e104  setlt.u r14, r3, r14
002a54  3b600700  bneq r14, zero, 24
002a58  9b450901  srli r11, r18, 16
002a5c  9b851500  andi r11, r11, 1
002a60  8b15b910  add.s r11, r18, r11
002a64  8b951510  add.s r11, r11, r1
002a68  97854500  and r11, r11, r4
002a6c  13874105  setlt.u r14, r3, r20
002a70  37600700  beq r14, zero, 24
002a74  13812104  setlt.u r2, r3, r2
002a78  b7300100  beq r2, zero, 44
002a7c  1381c104  setlt.u r2, r3, r12
002a80  bb3c01fe  bneq r2, zero, -212
002a84  db070000  j 60
002a88  1bc70a01  srli r14, r21, 16
002a8c  1b071700  andi r14, r14, 1
002a90  0b97ea10  add.s r14, r21, r14
002a94  0b171710  add.s r14, r14, r1
002a98  97094700  and r19, r14, r4
002a9c  13812104  setlt.u r2, r3, r2
002aa0  3b7f01fe  bneq r2, zero, -36
002aa4  1b410b01  srli r2, r22, 16
002aa8  1b011100  andi r2, r2, 1
002aac  0b112b10  add.s r2, r22, r2
002ab0  0b111110  add.s r2, r2, r1
002ab4  97064100  and r13, r2, r4
002ab8  1381c104  setlt.u r2, r3, r12
002abc  bb4b01fe  bneq r2, zero, -272
002ac0  1b410401  srli r2, r8, 16
002ac4  1b011100  andi r2, r2, 1
002ac8  0b112410  add.s r2, r8, r2
002acc  0b111110  add.s r2, r2, r1
002ad0  97034100  and r7, r2, r4
002ad4  5bdbffff  j -296
002ad8  00200100  mfence { sm }
002adc  80330002  core_id r7
002ae0  6b550ff9  load.d r[11:12], -112(r30)
002ae4  1f110000  addli r2, zero, 1
002ae8  3bd723fe  bneq r7, r2, -556
002aec  1f012000  addli r2, zero, 16
002af0  13812704  setlt.u r2, r15, r2
002af4  e7092ffe  storeli.w r2, -104(r30)
002af8  1f011000  addli r2, zero, 8
002afc  3d000000  xfence
002b00  b3020128  zext_int2long r[6:7], r2
002b04  00a00300  mfence { lm, sm, gm }
002b08  5b030000  j 24
002b0c  eb528ffa  load.d r[6:7], -88(r30)
002b10  eb530ffa  load.d r[8:9], -96(r30)
002b14  13a15304  setlt.ul r2, r[8:9], r[6:7]
002b18  a7920300  addli.d r[6:7], r[8:9], 1
002b1c  b7760100  beq r2, zero, 444
002b20  1f710000  addli r2, zero, 7
002b24  73305ffa  store.d r[6:7], -96(r30)
002b28  97b42202  sll.d r[10:11], r[6:7], r2
002b2c  63013fff  loadli.w r2,  -104(r30)
002b30  b7510100  beq r2, zero, 116
002b34  b3020028  zext_int2long r[6:7], zero
002b38  db030000  j 28
002b3c  eb550ffe  load.d r[12:13], -32(r30)
002b40  0b912d10  add.s r2, r27, r2
002b44  73607100  stores.w r7, 0(r2)
002b48  13a4b204  setlt.ul r8, r[6:7], r[12:13]
002b4c  a7920200  addli.d r[6:7], r[6:7], 1
002b50  b77e04fe  beq r8, zero, -68
002b54  8ba39210  add.ul r[8:9], r[6:7], r[10:11]
002b58  1bb12300  slli r2, r7, 2
002b5c  8b932810  add.s r7, r17, r2
002b60  6fc40300  loads.w r8, 0(r7)
002b64  9705c401  and r11, r8, r28
002b68  9383bb04  setlt.u r7, r23, r11
002b6c  3bd00300  bneq r7, zero, 20
002b70  9f030400  addli r7, r8, 0
002b74  9385b104  setlt.u r11, r3, r11
002b78  3b9f05fe  bneq r11, zero, -60
002b7c  5b020000  j 16
002b80  97130401  or r7, r8, r16
002b84  9385b104  setlt.u r11, r3, r11
002b88  bbde05fe  bneq r11, zero, -76
002b8c  9b430401  srli r7, r8, 16
002b90  9b831300  andi r7, r7, 1
002b94  8b137410  add.s r7, r8, r7
002b98  8b931310  add.s r7, r7, r1
002b9c  97834300  and r7, r7, r4
002ba0  dbf3ffff  j -100
002ba4  b3020028  zext_int2long r[6:7], zero
002ba8  db040000  j 36
002bac  a7c20200  addli.d r[6:7], r[6:7], 4
002bb0  0b94ad11  add.s r8, r27, r26
002bb4  13a18201  seteq.d r2, r[6:7], r[25:26]
002bb8  73667400  stores.w r7, 12(r8)
002bbc  7364d400  stores.w r13, 8(r8)
002bc0  73623401  stores.w r19, 4(r8)
002bc4  7360b400  stores.w r11, 0(r8)
002bc8  3b1d01fe  bneq r2, zero, -188
002bcc  8ba39210  add.ul r[8:9], r[6:7], r[10:11]
002bd0  1bbd2300  slli r26, r7, 2
002bd4  8b95a811  add.s r11, r17, r26
002bd8  6fc4c500  loads.w r8, 12(r11)
002bdc  1706c401  and r12, r8, r28
002be0  1381cb04  setlt.u r2, r23, r12
002be4  3b300100  bneq r2, zero, 12
002be8  9f030400  addli r7, r8, 0
002bec  5b010000  j 8
002bf0  97130401  or r7, r8, r16
002bf4  6fcb8500  loads.w r22, 8(r11)
002bf8  1701cb01  and r2, r22, r28
002bfc  93862b04  setlt.u r13, r23, r2
002c00  3bb00600  bneq r13, zero, 12
002c04  9f060b00  addli r13, r22, 0
002c08  5b010000  j 8
002c0c  97160b01  or r13, r22, r16
002c10  efca4500  loads.w r21, 4(r11)
002c14  178aca01  and r20, r21, r28
002c18  13874b05  setlt.u r14, r23, r20
002c1c  3b300700  bneq r14, zero, 12
002c20  9f890a00  addli r19, r21, 0
002c24  5b010000  j 8
002c28  97990a01  or r19, r21, r16
002c2c  6fc90500  loads.w r18, 0(r11)
002c30  1707c901  and r14, r18, r28
002c34  9385eb04  setlt.u r11, r23, r14
002c38  3bd00500  bneq r11, zero, 20
002c3c  9f050900  addli r11, r18, 0
002c40  1387e104  setlt.u r14, r3, r14
002c44  37500700  beq r14, zero, 20
002c48  db040000  j 36
002c4c  97150901  or r11, r18, r16
002c50  1387e104  setlt.u r14, r3, r14
002c54  3b600700  bneq r14, zero, 24
002c58  9b450901  srli r11, r18, 16
002c5c  9b851500  andi r11, r11, 1
002c60  8b15b910  add.s r11, r18, r11
002c64  8b951510  add.s r11, r11, r1
002c68  97854500  and r11, r11, r4
002c6c  13874105  setlt.u r14, r3, r20
002c70  37600700  beq r14, zero, 24
002c74  13812104  setlt.u r2, r3, r2
002c78  b7300100  beq r2, zero, 44
002c7c  1381c104  setlt.u r2, r3, r12
002c80  bb3c01fe  bneq r2, zero, -212
002c84  db070000  j 60
002c88  1bc70a01  srli r14, r21, 16
002c8c  1b071700  andi r14, r14, 1
002c90  0b97ea10  add.s r14, r21, r14
002c94  0b171710  add.s r14, r14, r1
002c98  97094700  and r19, r14, r4
002c9c  13812104  setlt.u r2, r3, r2
002ca0  3b7f01fe  bneq r2, zero, -36
002ca4  1b410b01  srli r2, r22, 16
002ca8  1b011100  andi r2, r2, 1
002cac  0b112b10  add.s r2, r22, r2
002cb0  0b111110  add.s r2, r2, r1
002cb4  97064100  and r13, r2, r4
002cb8  1381c104  setlt.u r2, r3, r12
002cbc  bb4b01fe  bneq r2, zero, -272
002cc0  1b410401  srli r2, r8, 16
002cc4  1b011100  andi r2, r2, 1
002cc8  0b112410  add.s r2, r8, r2
002ccc  0b111110  add.s r2, r2, r1
002cd0  97034100  and r7, r2, r4
002cd4  5bdbffff  j -296
002cd8  00200100  mfence { sm }
002cdc  80330002  core_id r7
002ce0  6b550ff9  load.d r[11:12], -112(r30)
002ce4  63010fff  loadli.w r2,  -128(r30)
002ce8  377f01fc  beq r2, zero, -1060
002cec  1f012000  addli r2, zero, 16
002cf0  93822704  setlt.u r5, r15, r2
002cf4  670a5ffe  storeli.w r5, -96(r30)
002cf8  b3020128  zext_int2long r[6:7], r2
002cfc  3d000000  xfence
002d00  00a00300  mfence { lm, sm, gm }
002d04  5b030000  j 24
002d08  eb520ffb  load.d r[6:7], -80(r30)
002d0c  eb538ffa  load.d r[8:9], -88(r30)
002d10  13a15304  setlt.ul r2, r[8:9], r[6:7]
002d14  a7920300  addli.d r[6:7], r[8:9], 1
002d18  b7760100  beq r2, zero, 444
002d1c  1f710000  addli r2, zero, 7
002d20  73345ffa  store.d r[6:7], -88(r30)
002d24  97b42202  sll.d r[10:11], r[6:7], r2
002d28  63014fff  loadli.w r2,  -96(r30)
002d2c  b7510100  beq r2, zero, 116
002d30  b3020028  zext_int2long r[6:7], zero
002d34  db030000  j 28
002d38  eb550ffe  load.d r[12:13], -32(r30)
002d3c  0b912d10  add.s r2, r27, r2
002d40  73607100  stores.w r7, 0(r2)
002d44  13a4b204  setlt.ul r8, r[6:7], r[12:13]
002d48  a7920200  addli.d r[6:7], r[6:7], 1
002d4c  b77e04fe  beq r8, zero, -68
002d50  8ba39210  add.ul r[8:9], r[6:7], r[10:11]
002d54  1bb12300  slli r2, r7, 2
002d58  8b932810  add.s r7, r17, r2
002d5c  6fc40300  loads.w r8, 0(r7)
002d60  9705c401  and r11, r8, r28
002d64  9383bb04  setlt.u r7, r23, r11
002d68  3bd00300  bneq r7, zero, 20
002d6c  9f030400  addli r7, r8, 0
002d70  9385b104  setlt.u r11, r3, r11
002d74  3b9f05fe  bneq r11, zero, -60
002d78  5b020000  j 16
002d7c  97130401  or r7, r8, r16
002d80  9385b104  setlt.u r11, r3, r11
002d84  bbde05fe  bneq r11, zero, -76
002d88  9b430401  srli r7, r8, 16
002d8c  9b831300  andi r7, r7, 1
002d90  8b137410  add.s r7, r8, r7
002d94  8b931310  add.s r7, r7, r1
002d98  97834300  and r7, r7, r4
002d9c  dbf3ffff  j -100
002da0  b3020028  zext_int2long r[6:7], zero
002da4  db040000  j 36
002da8  a7c20200  addli.d r[6:7], r[6:7], 4
002dac  0b945d11  add.s r8, r27, r21
002db0  13a18201  seteq.d r2, r[6:7], r[25:26]
002db4  73667400  stores.w r7, 12(r8)
002db8  7364d400  stores.w r13, 8(r8)
002dbc  73623401  stores.w r19, 4(r8)
002dc0  7360b400  stores.w r11, 0(r8)
002dc4  3b1d01fe  bneq r2, zero, -188
002dc8  8ba39210  add.ul r[8:9], r[6:7], r[10:11]
002dcc  9bba2300  slli r21, r7, 2
002dd0  8b955811  add.s r11, r17, r21
002dd4  6fc4c500  loads.w r8, 12(r11)
002dd8  1706c401  and r12, r8, r28
002ddc  1381cb04  setlt.u r2, r23, r12
002de0  3b300100  bneq r2, zero, 12
002de4  9f030400  addli r7, r8, 0
002de8  5b010000  j 8
002dec  97130401  or r7, r8, r16
002df0  6fcd8500  loads.w r26, 8(r11)
002df4  1701cd01  and r2, r26, r28
002df8  93862b04  setlt.u r13, r23, r2
002dfc  3bb00600  bneq r13, zero, 12
002e00  9f060d00  addli r13, r26, 0
002e04  5b010000  j 8
002e08  97160d01  or r13, r26, r16
002e0c  6fcb4500  loads.w r22, 4(r11)
002e10  170acb01  and r20, r22, r28
002e14  13874b05  setlt.u r14, r23, r20
002e18  3b300700  bneq r14, zero, 12
002e1c  9f090b00  addli r19, r22, 0
002e20  5b010000  j 8
002e24  97190b01  or r19, r22, r16
002e28  6fc90500  loads.w r18, 0(r11)
002e2c  1707c901  and r14, r18, r28
002e30  9385eb04  setlt.u r11, r23, r14
002e34  3bd00500  bneq r11, zero, 20
002e38  9f050900  addli r11, r18, 0
002e3c  1387e104  setlt.u r14, r3, r14
002e40  37500700  beq r14, zero, 20
002e44  db040000  j 36
002e48  97150901  or r11, r18, r16
002e4c  1387e104  setlt.u r14, r3, r14
002e50  3b600700  bneq r14, zero, 24
002e54  9b450901  srli r11, r18, 16
002e58  9b851500  andi r11, r11, 1
002e5c  8b15b910  add.s r11, r18, r11
002e60  8b951510  add.s r11, r11, r1
002e64  97854500  and r11, r11, r4
002e68  13874105  setlt.u r14, r3, r20
002e6c  37600700  beq r14, zero, 24
002e70  13812104  setlt.u r2, r3, r2
002e74  b7300100  beq r2, zero, 44
002e78  1381c104  setlt.u r2, r3, r12
002e7c  bb3c01fe  bneq r2, zero, -212
002e80  db070000  j 60
002e84  1b470b01  srli r14, r22, 16
002e88  1b071700  andi r14, r14, 1
002e8c  0b17eb10  add.s r14, r22, r14
002e90  0b171710  add.s r14, r14, r1
002e94  97094700  and r19, r14, r4
002e98  13812104  setlt.u r2, r3, r2
002e9c  3b7f01fe  bneq r2, zero, -36
002ea0  1b410d01  srli r2, r26, 16
002ea4  1b011100  andi r2, r2, 1
002ea8  0b112d10  add.s r2, r26, r2
002eac  0b111110  add.s r2, r2, r1
002eb0  97064100  and r13, r2, r4
002eb4  1381c104  setlt.u r2, r3, r12
002eb8  bb4b01fe  bneq r2, zero, -272
002ebc  1b410401  srli r2, r8, 16
002ec0  1b011100  andi r2, r2, 1
002ec4  0b112410  add.s r2, r8, r2
002ec8  0b111110  add.s r2, r2, r1
002ecc  97034100  and r7, r2, r4
002ed0  5bdbffff  j -296
002ed4  00200100  mfence { sm }
002ed8  80330002  core_id r7
002edc  6b550ff9  load.d r[11:12], -112(r30)
002ee0  1f310000  addli r2, zero, 3
002ee4  bba723fc  bneq r7, r2, -1560
002ee8  1f012000  addli r2, zero, 16
002eec  13812704  setlt.u r2, r15, r2
002ef0  e70a2ffe  storeli.w r2, -88(r30)
002ef4  1f013000  addli r2, zero, 24
002ef8  3d000000  xfence
002efc  b3020128  zext_int2long r[6:7], r2
002f00  00a00300  mfence { lm, sm, gm }
002f04  5b030000  j 24
002f08  eb528ffb  load.d r[6:7], -72(r30)
002f0c  eb530ffb  load.d r[8:9], -80(r30)
002f10  13a15304  setlt.ul r2, r[8:9], r[6:7]
002f14  a7920300  addli.d r[6:7], r[8:9], 1
002f18  b7760100  beq r2, zero, 444
002f1c  1f710000  addli r2, zero, 7
002f20  73385ffa  store.d r[6:7], -80(r30)
002f24  97b42202  sll.d r[10:11], r[6:7], r2
002f28  63015fff  loadli.w r2,  -88(r30)
002f2c  b7510100  beq r2, zero, 116
002f30  b3020028  zext_int2long r[6:7], zero
002f34  db030000  j 28
002f38  eb550ffe  load.d r[12:13], -32(r30)
002f3c  0b912d10  add.s r2, r27, r2
002f40  73607100  stores.w r7, 0(r2)
002f44  13a4b204  setlt.ul r8, r[6:7], r[12:13]
002f48  a7920200  addli.d r[6:7], r[6:7], 1
002f4c  b77e04fe  beq r8, zero, -68
002f50  8ba39210  add.ul r[8:9], r[6:7], r[10:11]
002f54  1bb12300  slli r2, r7, 2
002f58  8b932810  add.s r7, r17, r2
002f5c  6fc40300  loads.w r8, 0(r7)
002f60  9705c401  and r11, r8, r28
002f64  9383bb04  setlt.u r7, r23, r11
002f68  3bd00300  bneq r7, zero, 20
002f6c  9f030400  addli r7, r8, 0
002f70  9385b104  setlt.u r11, r3, r11
002f74  3b9f05fe  bneq r11, zero, -60
002f78  5b020000  j 16
002f7c  97130401  or r7, r8, r16
002f80  9385b104  setlt.u r11, r3, r11
002f84  bbde05fe  bneq r11, zero, -76
002f88  9b430401  srli r7, r8, 16
002f8c  9b831300  andi r7, r7, 1
002f90  8b137410  add.s r7, r8, r7
002f94  8b931310  add.s r7, r7, r1
002f98  97834300  and r7, r7, r4
002f9c  dbf3ffff  j -100
002fa0  b3020028  zext_int2long r[6:7], zero
002fa4  db040000  j 36
002fa8  a7c20200  addli.d r[6:7], r[6:7], 4
002fac  0b943d11  add.s r8, r27, r19
002fb0  13a18201  seteq.d r2, r[6:7], r[25:26]
002fb4  73667400  stores.w r7, 12(r8)
002fb8  73645401  stores.w r21, 8(r8)
002fbc  7362c400  stores.w r12, 4(r8)
002fc0  7360b400  stores.w r11, 0(r8)
002fc4  3b1d01fe  bneq r2, zero, -188
002fc8  8ba39210  add.ul r[8:9], r[6:7], r[10:11]
002fcc  9bb92300  slli r19, r7, 2
002fd0  8b953811  add.s r11, r17, r19
002fd4  6fc4c500  loads.w r8, 12(r11)
002fd8  170ac401  and r20, r8, r28
002fdc  13814b05  setlt.u r2, r23, r20
002fe0  3b300100  bneq r2, zero, 12
002fe4  9f030400  addli r7, r8, 0
002fe8  5b010000  j 8
002fec  97130401  or r7, r8, r16
002ff0  6fcd8500  loads.w r26, 8(r11)
002ff4  1701cd01  and r2, r26, r28
002ff8  13862b04  setlt.u r12, r23, r2
002ffc  3b300600  bneq r12, zero, 12
003000  9f0a0d00  addli r21, r26, 0
003004  5b010000  j 8
003008  971a0d01  or r21, r26, r16
00300c  6fcb4500  loads.w r22, 4(r11)
003010  9706cb01  and r13, r22, r28
003014  1386db04  setlt.u r12, r23, r13
003018  3b300600  bneq r12, zero, 12
00301c  1f060b00  addli r12, r22, 0
003020  5b010000  j 8
003024  17160b01  or r12, r22, r16
003028  6fc90500  loads.w r18, 0(r11)
00302c  1707c901  and r14, r18, r28
003030  9385eb04  setlt.u r11, r23, r14
003034  3bd00500  bneq r11, zero, 20
003038  9f050900  addli r11, r18, 0
00303c  1387e104  setlt.u r14, r3, r14
003040  37500700  beq r14, zero, 20
003044  db040000  j 36
003048  97150901  or r11, r18, r16
00304c  1387e104  setlt.u r14, r3, r14
003050  3b600700  bneq r14, zero, 24
003054  9b450901  srli r11, r18, 16
003058  9b851500  andi r11, r11, 1
00305c  8b15b910  add.s r11, r18, r11
003060  8b951510  add.s r11, r11, r1
003064  97854500  and r11, r11, r4
003068  9386d104  setlt.u r13, r3, r13
00306c  37e00600  beq r13, zero, 24
003070  13812104  setlt.u r2, r3, r2
003074  b7300100  beq r2, zero, 44
003078  13814105  setlt.u r2, r3, r20
00307c  bb3c01fe  bneq r2, zero, -212
003080  db070000  j 60
003084  1b460b01  srli r12, r22, 16
003088  1b061600  andi r12, r12, 1
00308c  0b16cb10  add.s r12, r22, r12
003090  0b161610  add.s r12, r12, r1
003094  17064600  and r12, r12, r4
003098  13812104  setlt.u r2, r3, r2
00309c  3b7f01fe  bneq r2, zero, -36
0030a0  1b410d01  srli r2, r26, 16
0030a4  1b011100  andi r2, r2, 1
0030a8  0b112d10  add.s r2, r26, r2
0030ac  0b111110  add.s r2, r2, r1
0030b0  970a4100  and r21, r2, r4
0030b4  13814105  setlt.u r2, r3, r20
0030b8  bb4b01fe  bneq r2, zero, -272
0030bc  1b410401  srli r2, r8, 16
0030c0  1b011100  andi r2, r2, 1
0030c4  0b112410  add.s r2, r8, r2
0030c8  0b111110  add.s r2, r2, r1
0030cc  97034100  and r7, r2, r4
0030d0  5bdbffff  j -296
0030d4  00200100  mfence { sm }
0030d8  80330002  core_id r7
0030dc  6b550ff9  load.d r[11:12], -112(r30)
0030e0  63410fff  loadli.w r2,  -124(r30)
0030e4  b74f01fa  beq r2, zero, -2064
0030e8  1f012000  addli r2, zero, 16
0030ec  13812704  setlt.u r2, r15, r2
0030f0  670b2ffe  storeli.w r2, -80(r30)
0030f4  1f014000  addli r2, zero, 32
0030f8  3d000000  xfence
0030fc  b3020128  zext_int2long r[6:7], r2
003100  00a00300  mfence { lm, sm, gm }
003104  5b030000  j 24
003108  eb520ffc  load.d r[6:7], -64(r30)
00310c  eb538ffb  load.d r[8:9], -72(r30)
003110  13a15304  setlt.ul r2, r[8:9], r[6:7]
003114  a7920300  addli.d r[6:7], r[8:9], 1
003118  b7760100  beq r2, zero, 444
00311c  1f710000  addli r2, zero, 7
003120  733c5ffa  store.d r[6:7], -72(r30)
003124  97b42202  sll.d r[10:11], r[6:7], r2
003128  63016fff  loadli.w r2,  -80(r30)
00312c  b7510100  beq r2, zero, 116
003130  b3020028  zext_int2long r[6:7], zero
003134  db030000  j 28
003138  eb550ffe  load.d r[12:13], -32(r30)
00313c  0b912d10  add.s r2, r27, r2
003140  73607100  stores.w r7, 0(r2)
003144  13a4b204  setlt.ul r8, r[6:7], r[12:13]
003148  a7920200  addli.d r[6:7], r[6:7], 1
00314c  b77e04fe  beq r8, zero, -68
003150  8ba39210  add.ul r[8:9], r[6:7], r[10:11]
003154  1bb12300  slli r2, r7, 2
003158  8b932810  add.s r7, r17, r2
00315c  6fc40300  loads.w r8, 0(r7)
003160  9705c401  and r11, r8, r28
003164  9383bb04  setlt.u r7, r23, r11
003168  3bd00300  bneq r7, zero, 20
00316c  9f030400  addli r7, r8, 0
003170  9385b104  setlt.u r11, r3, r11
003174  3b9f05fe  bneq r11, zero, -60
003178  5b020000  j 16
00317c  97130401  or r7, r8, r16
003180  9385b104  setlt.u r11, r3, r11
003184  bbde05fe  bneq r11, zero, -76
003188  9b430401  srli r7, r8, 16
00318c  9b831300  andi r7, r7, 1
003190  8b137410  add.s r7, r8, r7
003194  8b931310  add.s r7, r7, r1
003198  97834300  and r7, r7, r4
00319c  dbf3ffff  j -100
0031a0  b3020028  zext_int2long r[6:7], zero
0031a4  db040000  j 36
0031a8  a7c20200  addli.d r[6:7], r[6:7], 4
0031ac  0b94cd10  add.s r8, r27, r12
0031b0  13a18201  seteq.d r2, r[6:7], r[25:26]
0031b4  7366d400  stores.w r13, 12(r8)
0031b8  73645401  stores.w r21, 8(r8)
0031bc  73627400  stores.w r7, 4(r8)
0031c0  7360b400  stores.w r11, 0(r8)
0031c4  3b1d01fe  bneq r2, zero, -188
0031c8  8ba39210  add.ul r[8:9], r[6:7], r[10:11]
0031cc  1bb62300  slli r12, r7, 2
0031d0  0b94c810  add.s r8, r17, r12
0031d4  ef49c400  loads.w r19, 12(r8)
0031d8  178ac901  and r20, r19, r28
0031dc  13814b05  setlt.u r2, r23, r20
0031e0  3b300100  bneq r2, zero, 12
0031e4  9f860900  addli r13, r19, 0
0031e8  5b010000  j 8
0031ec  97960901  or r13, r19, r16
0031f0  6f4d8400  loads.w r26, 8(r8)
0031f4  1701cd01  and r2, r26, r28
0031f8  93832b04  setlt.u r7, r23, r2
0031fc  3bb00300  bneq r7, zero, 12
003200  9f0a0d00  addli r21, r26, 0
003204  5b010000  j 8
003208  971a0d01  or r21, r26, r16
00320c  6f4b4400  loads.w r22, 4(r8)
003210  1709cb01  and r18, r22, r28
003214  93832b05  setlt.u r7, r23, r18
003218  3bb00300  bneq r7, zero, 12
00321c  9f030b00  addli r7, r22, 0
003220  5b010000  j 8
003224  97130b01  or r7, r22, r16
003228  6f440400  loads.w r8, 0(r8)
00322c  1707c401  and r14, r8, r28
003230  9385eb04  setlt.u r11, r23, r14
003234  3bd00500  bneq r11, zero, 20
003238  9f050400  addli r11, r8, 0
00323c  1387e104  setlt.u r14, r3, r14
003240  37500700  beq r14, zero, 20
003244  db040000  j 36
003248  97150401  or r11, r8, r16
00324c  1387e104  setlt.u r14, r3, r14
003250  3b600700  bneq r14, zero, 24
003254  9b450401  srli r11, r8, 16
003258  9b851500  andi r11, r11, 1
00325c  0b14b410  add.s r8, r8, r11
003260  0b141410  add.s r8, r8, r1
003264  97054400  and r11, r8, r4
003268  13842105  setlt.u r8, r3, r18
00326c  37600400  beq r8, zero, 24
003270  13812104  setlt.u r2, r3, r2
003274  b7300100  beq r2, zero, 44
003278  13814105  setlt.u r2, r3, r20
00327c  bb3c01fe  bneq r2, zero, -212
003280  db070000  j 60
003284  9b430b01  srli r7, r22, 16
003288  9b831300  andi r7, r7, 1
00328c  8b137b10  add.s r7, r22, r7
003290  8b931310  add.s r7, r7, r1
003294  97834300  and r7, r7, r4
003298  13812104  setlt.u r2, r3, r2
00329c  3b7f01fe  bneq r2, zero, -36
0032a0  1b410d01  srli r2, r26, 16
0032a4  1b011100  andi r2, r2, 1
0032a8  0b112d10  add.s r2, r26, r2
0032ac  0b111110  add.s r2, r2, r1
0032b0  970a4100  and r21, r2, r4
0032b4  13814105  setlt.u r2, r3, r20
0032b8  bb4b01fe  bneq r2, zero, -272
0032bc  1bc10901  srli r2, r19, 16
0032c0  1b011100  andi r2, r2, 1
0032c4  0b912910  add.s r2, r19, r2
0032c8  0b111110  add.s r2, r2, r1
0032cc  97064100  and r13, r2, r4
0032d0  5bdbffff  j -296
0032d4  00200100  mfence { sm }
0032d8  80330002  core_id r7
0032dc  6b550ff9  load.d r[11:12], -112(r30)
0032e0  1f510000  addli r2, zero, 5
0032e4  bbe723fa  bneq r7, r2, -2568
0032e8  1f012000  addli r2, zero, 16
0032ec  13812704  setlt.u r2, r15, r2
0032f0  e70b2ffe  storeli.w r2, -72(r30)
0032f4  1f015000  addli r2, zero, 40
0032f8  3d000000  xfence
0032fc  b3020128  zext_int2long r[6:7], r2
003300  00a00300  mfence { lm, sm, gm }
003304  5b030000  j 24
003308  eb528ffc  load.d r[6:7], -56(r30)
00330c  eb530ffc  load.d r[8:9], -64(r30)
003310  13a15304  setlt.ul r2, r[8:9], r[6:7]
003314  a7920300  addli.d r[6:7], r[8:9], 1
003318  b7760100  beq r2, zero, 444
00331c  1f710000  addli r2, zero, 7
003320  73305ffc  store.d r[6:7], -64(r30)
003324  97b32202  sll.d r[8:9], r[6:7], r2
003328  63017fff  loadli.w r2,  -72(r30)
00332c  b7510100  beq r2, zero, 116
003330  b3020028  zext_int2long r[6:7], zero
003334  db030000  j 28
003338  6b550ffe  load.d r[11:12], -32(r30)
00333c  0b912d10  add.s r2, r27, r2
003340  73609100  stores.w r9, 0(r2)
003344  13a5a204  setlt.ul r10, r[6:7], r[11:12]
003348  a7920200  addli.d r[6:7], r[6:7], 1
00334c  b77e05fe  beq r10, zero, -68
003350  8ba47210  add.ul r[10:11], r[6:7], r[8:9]
003354  1bb12400  slli r2, r9, 2
003358  8b942810  add.s r9, r17, r2
00335c  6fc50400  loads.w r10, 0(r9)
003360  9705c501  and r11, r10, r28
003364  9384bb04  setlt.u r9, r23, r11
003368  3bd00400  bneq r9, zero, 20
00336c  9f040500  addli r9, r10, 0
003370  9385b104  setlt.u r11, r3, r11
003374  3b9f05fe  bneq r11, zero, -60
003378  5b020000  j 16
00337c  97140501  or r9, r10, r16
003380  9385b104  setlt.u r11, r3, r11
003384  bbde05fe  bneq r11, zero, -76
003388  9b440501  srli r9, r10, 16
00338c  9b841400  andi r9, r9, 1
003390  8b149510  add.s r9, r10, r9
003394  8b941410  add.s r9, r9, r1
003398  97844400  and r9, r9, r4
00339c  dbf3ffff  j -100
0033a0  b3040028  zext_int2long r[10:11], zero
0033a4  db040000  j 36
0033a8  a7c40400  addli.d r[10:11], r[10:11], 4
0033ac  0b93cd10  add.s r6, r27, r12
0033b0  13a18401  seteq.d r2, r[10:11], r[25:26]
0033b4  7366d300  stores.w r13, 12(r6)
0033b8  73645301  stores.w r21, 8(r6)
0033bc  73625300  stores.w r5, 4(r6)
0033c0  7360b300  stores.w r11, 0(r6)
0033c4  3b1d01fe  bneq r2, zero, -188
0033c8  8ba27410  add.ul r[6:7], r[10:11], r[8:9]
0033cc  1bb62200  slli r12, r5, 2
0033d0  0b93c810  add.s r6, r17, r12
0033d4  ef49c300  loads.w r19, 12(r6)
0033d8  178ac901  and r20, r19, r28
0033dc  13814b05  setlt.u r2, r23, r20
0033e0  3b300100  bneq r2, zero, 12
0033e4  9f860900  addli r13, r19, 0
0033e8  5b010000  j 8
0033ec  97960901  or r13, r19, r16
0033f0  6f4d8300  loads.w r26, 8(r6)
0033f4  1701cd01  and r2, r26, r28
0033f8  93822b04  setlt.u r5, r23, r2
0033fc  3bb00200  bneq r5, zero, 12
003400  9f0a0d00  addli r21, r26, 0
003404  5b010000  j 8
003408  971a0d01  or r21, r26, r16
00340c  6f4b4300  loads.w r22, 4(r6)
003410  1709cb01  and r18, r22, r28
003414  93822b05  setlt.u r5, r23, r18
003418  3bb00200  bneq r5, zero, 12
00341c  9f020b00  addli r5, r22, 0
003420  5b010000  j 8
003424  97120b01  or r5, r22, r16
003428  6f430300  loads.w r6, 0(r6)
00342c  1707c301  and r14, r6, r28
003430  9385eb04  setlt.u r11, r23, r14
003434  3bd00500  bneq r11, zero, 20
003438  9f050300  addli r11, r6, 0
00343c  1387e104  setlt.u r14, r3, r14
003440  37500700  beq r14, zero, 20
003444  db040000  j 36
003448  97150301  or r11, r6, r16
00344c  1387e104  setlt.u r14, r3, r14
003450  3b600700  bneq r14, zero, 24
003454  9b450301  srli r11, r6, 16
003458  9b851500  andi r11, r11, 1
00345c  0b13b310  add.s r6, r6, r11
003460  0b131310  add.s r6, r6, r1
003464  97054300  and r11, r6, r4
003468  13832105  setlt.u r6, r3, r18
00346c  37600300  beq r6, zero, 24
003470  13812104  setlt.u r2, r3, r2
003474  b7300100  beq r2, zero, 44
003478  13814105  setlt.u r2, r3, r20
00347c  bb3c01fe  bneq r2, zero, -212
003480  db070000  j 60
003484  9b420b01  srli r5, r22, 16
003488  9b821200  andi r5, r5, 1
00348c  8b125b10  add.s r5, r22, r5
003490  8b921210  add.s r5, r5, r1
003494  97824200  and r5, r5, r4
003498  13812104  setlt.u r2, r3, r2
00349c  3b7f01fe  bneq r2, zero, -36
0034a0  1b410d01  srli r2, r26, 16
0034a4  1b011100  andi r2, r2, 1
0034a8  0b112d10  add.s r2, r26, r2
0034ac  0b111110  add.s r2, r2, r1
0034b0  970a4100  and r21, r2, r4
0034b4  13814105  setlt.u r2, r3, r20
0034b8  bb4b01fe  bneq r2, zero, -272
0034bc  1bc10901  srli r2, r19, 16
0034c0  1b011100  andi r2, r2, 1
0034c4  0b912910  add.s r2, r19, r2
0034c8  0b111110  add.s r2, r2, r1
0034cc  97064100  and r13, r2, r4
0034d0  5bdbffff  j -296
0034d4  00200100  mfence { sm }
0034d8  80330002  core_id r7
0034dc  6b550ff9  load.d r[11:12], -112(r30)
0034e0  1f610000  addli r2, zero, 6
0034e4  3b8023fa  bneq r7, r2, -3072
0034e8  1f012000  addli r2, zero, 16
0034ec  13812704  setlt.u r2, r15, r2
0034f0  670c2ffe  storeli.w r2, -64(r30)
0034f4  1f016000  addli r2, zero, 48
0034f8  3d000000  xfence
0034fc  b3020128  zext_int2long r[6:7], r2
003500  00a00300  mfence { lm, sm, gm }
003504  5b030000  j 24
003508  eb520ffd  load.d r[6:7], -48(r30)
00350c  eb538ffc  load.d r[8:9], -56(r30)
003510  13a15304  setlt.ul r2, r[8:9], r[6:7]
003514  a7920300  addli.d r[6:7], r[8:9], 1
003518  b7760100  beq r2, zero, 444
00351c  1f710000  addli r2, zero, 7
003520  73345ffc  store.d r[6:7], -56(r30)
003524  97b32202  sll.d r[8:9], r[6:7], r2
003528  63018fff  loadli.w r2,  -64(r30)
00352c  b7510100  beq r2, zero, 116
003530  b3020028  zext_int2long r[6:7], zero
003534  db030000  j 28
003538  6b550ffe  load.d r[11:12], -32(r30)
00353c  0b912d10  add.s r2, r27, r2
003540  73609100  stores.w r9, 0(r2)
003544  13a5a204  setlt.ul r10, r[6:7], r[11:12]
003548  a7920200  addli.d r[6:7], r[6:7], 1
00354c  b77e05fe  beq r10, zero, -68
003550  8ba47210  add.ul r[10:11], r[6:7], r[8:9]
003554  1bb12400  slli r2, r9, 2
003558  8b942810  add.s r9, r17, r2
00355c  6fc50400  loads.w r10, 0(r9)
003560  9705c501  and r11, r10, r28
003564  9384bb04  setlt.u r9, r23, r11
003568  3bd00400  bneq r9, zero, 20
00356c  9f040500  addli r9, r10, 0
003570  9385b104  setlt.u r11, r3, r11
003574  3b9f05fe  bneq r11, zero, -60
003578  5b020000  j 16
00357c  97140501  or r9, r10, r16
003580  9385b104  setlt.u r11, r3, r11
003584  bbde05fe  bneq r11, zero, -76
003588  9b440501  srli r9, r10, 16
00358c  9b841400  andi r9, r9, 1
003590  8b149510  add.s r9, r10, r9
003594  8b941410  add.s r9, r9, r1
003598  97844400  and r9, r9, r4
00359c  dbf3ffff  j -100
0035a0  b3040028  zext_int2long r[10:11], zero
0035a4  db040000  j 36
0035a8  a7c40400  addli.d r[10:11], r[10:11], 4
0035ac  0b93cd10  add.s r6, r27, r12
0035b0  13a18401  seteq.d r2, r[10:11], r[25:26]
0035b4  7366d300  stores.w r13, 12(r6)
0035b8  73645301  stores.w r21, 8(r6)
0035bc  73625300  stores.w r5, 4(r6)
0035c0  7360b300  stores.w r11, 0(r6)
0035c4  3b1d01fe  bneq r2, zero, -188
0035c8  8ba27410  add.ul r[6:7], r[10:11], r[8:9]
0035cc  1bb62200  slli r12, r5, 2
0035d0  0b93c810  add.s r6, r17, r12
0035d4  ef49c300  loads.w r19, 12(r6)
0035d8  178ac901  and r20, r19, r28
0035dc  13814b05  setlt.u r2, r23, r20
0035e0  3b300100  bneq r2, zero, 12
0035e4  9f860900  addli r13, r19, 0
0035e8  5b010000  j 8
0035ec  97960901  or r13, r19, r16
0035f0  6f4d8300  loads.w r26, 8(r6)
0035f4  1701cd01  and r2, r26, r28
0035f8  93822b04  setlt.u r5, r23, r2
0035fc  3bb00200  bneq r5, zero, 12
003600  9f0a0d00  addli r21, r26, 0
003604  5b010000  j 8
003608  971a0d01  or r21, r26, r16
00360c  6f4b4300  loads.w r22, 4(r6)
003610  1709cb01  and r18, r22, r28
003614  93822b05  setlt.u r5, r23, r18
003618  3bb00200  bneq r5, zero, 12
00361c  9f020b00  addli r5, r22, 0
003620  5b010000  j 8
003624  97120b01  or r5, r22, r16
003628  6f430300  loads.w r6, 0(r6)
00362c  1707c301  and r14, r6, r28
003630  9385eb04  setlt.u r11, r23, r14
003634  3bd00500  bneq r11, zero, 20
003638  9f050300  addli r11, r6, 0
00363c  1387e104  setlt.u r14, r3, r14
003640  37500700  beq r14, zero, 20
003644  db040000  j 36
003648  97150301  or r11, r6, r16
00364c  1387e104  setlt.u r14, r3, r14
003650  3b600700  bneq r14, zero, 24
003654  9b450301  srli r11, r6, 16
003658  9b851500  andi r11, r11, 1
00365c  0b13b310  add.s r6, r6, r11
003660  0b131310  add.s r6, r6, r1
003664  97054300  and r11, r6, r4
003668  13832105  setlt.u r6, r3, r18
00366c  37600300  beq r6, zero, 24
003670  13812104  setlt.u r2, r3, r2
003674  b7300100  beq r2, zero, 44
003678  13814105  setlt.u r2, r3, r20
00367c  bb3c01fe  bneq r2, zero, -212
003680  db070000  j 60
003684  9b420b01  srli r5, r22, 16
003688  9b821200  andi r5, r5, 1
00368c  8b125b10  add.s r5, r22, r5
003690  8b921210  add.s r5, r5, r1
003694  97824200  and r5, r5, r4
003698  13812104  setlt.u r2, r3, r2
00369c  3b7f01fe  bneq r2, zero, -36
0036a0  1b410d01  srli r2, r26, 16
0036a4  1b011100  andi r2, r2, 1
0036a8  0b112d10  add.s r2, r26, r2
0036ac  0b111110  add.s r2, r2, r1
0036b0  970a4100  and r21, r2, r4
0036b4  13814105  setlt.u r2, r3, r20
0036b8  bb4b01fe  bneq r2, zero, -272
0036bc  1bc10901  srli r2, r19, 16
0036c0  1b011100  andi r2, r2, 1
0036c4  0b912910  add.s r2, r19, r2
0036c8  0b111110  add.s r2, r2, r1
0036cc  97064100  and r13, r2, r4
0036d0  5bdbffff  j -296
0036d4  00200100  mfence { sm }
0036d8  80330002  core_id r7
0036dc  6b550ff9  load.d r[11:12], -112(r30)
0036e0  63011fff  loadli.w r2,  -120(r30)
0036e4  b7570100  beq r2, zero, 500
0036e8  1f012000  addli r2, zero, 16
0036ec  3d000000  xfence
0036f0  00a00300  mfence { lm, sm, gm }
0036f4  93872704  setlt.u r15, r15, r2
0036f8  1f017000  addli r2, zero, 56
0036fc  b3020128  zext_int2long r[6:7], r2
003700  5b030000  j 24
003704  eb528ffd  load.d r[6:7], -40(r30)
003708  eb530ffd  load.d r[8:9], -48(r30)
00370c  13a15304  setlt.ul r2, r[8:9], r[6:7]
003710  a7920300  addli.d r[6:7], r[8:9], 1
003714  b7660100  beq r2, zero, 440
003718  1f710000  addli r2, zero, 7
00371c  73385ffc  store.d r[6:7], -48(r30)
003720  97b32202  sll.d r[8:9], r[6:7], r2
003724  b7d10700  beq r15, zero, 116
003728  b3020028  zext_int2long r[6:7], zero
00372c  db030000  j 28
003730  6b550ffe  load.d r[11:12], -32(r30)
003734  0b912d10  add.s r2, r27, r2
003738  73609100  stores.w r9, 0(r2)
00373c  13a5a204  setlt.ul r10, r[6:7], r[11:12]
003740  a7920200  addli.d r[6:7], r[6:7], 1
003744  370f05fe  beq r10, zero, -64
003748  8ba47210  add.ul r[10:11], r[6:7], r[8:9]
00374c  1bb12400  slli r2, r9, 2
003750  8b942810  add.s r9, r17, r2
003754  6fc50400  loads.w r10, 0(r9)
003758  9705c501  and r11, r10, r28
00375c  9384bb04  setlt.u r9, r23, r11
003760  3bd00400  bneq r9, zero, 20
003764  9f040500  addli r9, r10, 0
003768  9385b104  setlt.u r11, r3, r11
00376c  3b9f05fe  bneq r11, zero, -60
003770  5b020000  j 16
003774  97140501  or r9, r10, r16
003778  9385b104  setlt.u r11, r3, r11
00377c  bbde05fe  bneq r11, zero, -76
003780  9b440501  srli r9, r10, 16
003784  9b841400  andi r9, r9, 1
003788  8b149510  add.s r9, r10, r9
00378c  8b941410  add.s r9, r9, r1
003790  97844400  and r9, r9, r4
003794  dbf3ffff  j -100
003798  b3040028  zext_int2long r[10:11], zero
00379c  db040000  j 36
0037a0  a7c40400  addli.d r[10:11], r[10:11], 4
0037a4  0b93cd10  add.s r6, r27, r12
0037a8  13a18401  seteq.d r2, r[10:11], r[25:26]
0037ac  7366d300  stores.w r13, 12(r6)
0037b0  73645301  stores.w r21, 8(r6)
0037b4  73625300  stores.w r5, 4(r6)
0037b8  7360b300  stores.w r11, 0(r6)
0037bc  3b2d01fe  bneq r2, zero, -184
0037c0  8ba27410  add.ul r[6:7], r[10:11], r[8:9]
0037c4  1bb62200  slli r12, r5, 2
0037c8  0b93c810  add.s r6, r17, r12
0037cc  ef49c300  loads.w r19, 12(r6)
0037d0  178ac901  and r20, r19, r28
0037d4  13814b05  setlt.u r2, r23, r20
0037d8  3b300100  bneq r2, zero, 12
0037dc  9f860900  addli r13, r19, 0
0037e0  5b010000  j 8
0037e4  97960901  or r13, r19, r16
0037e8  6f4d8300  loads.w r26, 8(r6)
0037ec  1701cd01  and r2, r26, r28
0037f0  93822b04  setlt.u r5, r23, r2
0037f4  3bb00200  bneq r5, zero, 12
0037f8  9f0a0d00  addli r21, r26, 0
0037fc  5b010000  j 8
003800  971a0d01  or r21, r26, r16
003804  6f4b4300  loads.w r22, 4(r6)
003808  1709cb01  and r18, r22, r28
00380c  93822b05  setlt.u r5, r23, r18
003810  3bb00200  bneq r5, zero, 12
003814  9f020b00  addli r5, r22, 0
003818  5b010000  j 8
00381c  97120b01  or r5, r22, r16
003820  6f430300  loads.w r6, 0(r6)
003824  1707c301  and r14, r6, r28
003828  9385eb04  setlt.u r11, r23, r14
00382c  3bd00500  bneq r11, zero, 20
003830  9f050300  addli r11, r6, 0
003834  1387e104  setlt.u r14, r3, r14
003838  37500700  beq r14, zero, 20
00383c  db040000  j 36
003840  97150301  or r11, r6, r16
003844  1387e104  setlt.u r14, r3, r14
003848  3b600700  bneq r14, zero, 24
00384c  9b450301  srli r11, r6, 16
003850  9b851500  andi r11, r11, 1
003854  0b13b310  add.s r6, r6, r11
003858  0b131310  add.s r6, r6, r1
00385c  97054300  and r11, r6, r4
003860  13832105  setlt.u r6, r3, r18
003864  37600300  beq r6, zero, 24
003868  13812104  setlt.u r2, r3, r2
00386c  b7300100  beq r2, zero, 44
003870  13814105  setlt.u r2, r3, r20
003874  bb3c01fe  bneq r2, zero, -212
003878  db070000  j 60
00387c  9b420b01  srli r5, r22, 16
003880  9b821200  andi r5, r5, 1
003884  8b125b10  add.s r5, r22, r5
003888  8b921210  add.s r5, r5, r1
00388c  97824200  and r5, r5, r4
003890  13812104  setlt.u r2, r3, r2
003894  3b7f01fe  bneq r2, zero, -36
003898  1b410d01  srli r2, r26, 16
00389c  1b011100  andi r2, r2, 1
0038a0  0b112d10  add.s r2, r26, r2
0038a4  0b111110  add.s r2, r2, r1
0038a8  970a4100  and r21, r2, r4
0038ac  13814105  setlt.u r2, r3, r20
0038b0  bb4b01fe  bneq r2, zero, -272
0038b4  1bc10901  srli r2, r19, 16
0038b8  1b011100  andi r2, r2, 1
0038bc  0b912910  add.s r2, r19, r2
0038c0  0b111110  add.s r2, r2, r1
0038c4  97064100  and r13, r2, r4
0038c8  5bdbffff  j -296
0038cc  00200100  mfence { sm }
0038d0  80330002  core_id r7
0038d4  6b550ff9  load.d r[11:12], -112(r30)
0038d8  1f71f001  addli r2, zero, 255
0038dc  1f3c0000  addli r24, zero, 3
0038e0  80220104  csr_set csr5, r2
0038e4  00e00200  sync_core
0038e8  37e983e5  beq r7, r24, -13736
0038ec  eb580ff7  load.d r[18:19], -144(r30)
0038f0  9f470000  addli r15, zero, 4
0038f4  9f098000  addli r19, zero, 64
0038f8  1f7a0000  addli r20, zero, 7
0038fc  9f6d0000  addli r27, zero, 6
003900  9f1c0000  addli r25, zero, 1
003904  bb9903e4  bneq r7, zero, -13724
003908  6341bffe  loadli.w r2,  -164(r30)
00390c  1b316100  slli r2, r2, 6
003910  b3120128  sext_int2long r[6:7], r2
003914  1f112000  addli r2, zero, 17
003918  8bb3a240  min.sl r[8:9], r[6:7], r[11:12]
00391c  eb548ff6  load.d r[10:11], -152(r30)
003920  eb558f01  load.d r[12:13], 24(r30)
003924  a7838300  addli.d r[8:9], r[8:9], 64
003928  97b42402  sll.d r[10:11], r[10:11], r2
00392c  1f512000  addli r2, zero, 21
003930  8bb35348  max.sl r[8:9], r[8:9], r[6:7]
003934  8ba49510  add.ul r[10:11], r[12:13], r[10:11]
003938  9f550000  addli r11, zero, 5
00393c  7d100100  xwait r2, 0
003940  2b010500  lui r2, 80
003944  8bb25318  sub.sl r[6:7], r[8:9], r[6:7]
003948  b3830928  zext_int2long r[8:9], r19
00394c  1d800500  lock zero, r11
003950  1b110104  ori r2, r2, 64
003954  6b560ff6  load.d r[13:14], -160(r30)
003958  958c0c00  dma_cfg r25, r25, zero, 0
00395c  8bb27240  min.sl r[6:7], r[6:7], r[8:9]
003960  1f040001  addli r8, zero, 128
003964  15800c02  dma_cfg zero, r25, zero, 1
003968  8ba4c410  add.ul r[10:11], r[10:11], r[13:14]
00396c  15050004  dma_cfg r10, zero, zero, 2
003970  e303dfff  loadli.w r7,  -24(r30)
003974  6b560ff5  load.d r[13:14], -176(r30)
003978  0b912310  add.s r2, r7, r2
00397c  9f733600  addli r7, r12, 31
003980  95043107  dma_cfg r9, r2, r19, 3
003984  1bc15300  srli r2, r7, 5
003988  9b331600  slli r7, r12, 1
00398c  9f040010  addli r9, zero, 2048
003990  95092408  dma_cfg r19, r8, r2, 4
003994  1f040004  addli r8, zero, 512
003998  1b81e303  andi r2, r7, 62
00399c  80330002  core_id r7
0039a0  9504540a  dma_cfg r9, r8, r5, 5
0039a4  15002010  dma_cfg zero, zero, r2, 8
0039a8  35000000  dma_run zero
0039ac  1500900b  dma_cfg zero, zero, r25, 5
0039b0  1f612000  addli r2, zero, 22
0039b4  15000010  dma_cfg zero, zero, zero, 8
0039b8  1d900500  unlock r11
0039bc  7d000100  xsignal r2, 0
0039c0  5b35f9ff  j -13912
0039c4  67480ffe  storeli.w zero, -124(r30)
0039c8  e7080ffe  storeli.w zero, -120(r30)
0039cc  73381ff7  store.d r[18:19], -144(r30)
0039d0  b76383e9  beq r6, r24, -12040
0039d4  db20faff  j -12028
0039d8  7d000000  xsignal zero, 0
0039dc  bbe00300  bneq r7, zero, 56
0039e0  9f200000  addli r1, zero, 2
0039e4  7d100000  xwait zero, 0
0039e8  7d100000  xwait zero, 0
0039ec  7d100000  xwait zero, 0
0039f0  7d100000  xwait zero, 0
0039f4  7d100000  xwait zero, 0
0039f8  7d100000  xwait zero, 0
0039fc  7d100000  xwait zero, 0
003a00  7d100000  xwait zero, 0
003a04  1d800000  lock zero, r1
003a08  0d000020  ew_cfg zero, zero, zero, 16
003a0c  1d900000  unlock r1
003a10  7d400000  xsignal_mode_cfg zero
003a14  9f8ece01  addli sp, sp, 224
003a18  00a00300  mfence { lm, sm, gm }
003a1c  00100000  exit
003a20  00100000  exit
003a24  00100000  exit
003a28  00100000  exit
003a2c  00100000  exit
003a30  00100000  exit
003a34  00100000  exit
003a38  00100000  exit
003a3c  00100000  exit
003a40  00100000  exit
003a44  00100000  exit
003a48  00100000  exit
003a4c  00100000  exit
003a50  00100000  exit
003a54  00100000  exit
003a58  00100000  exit
003a5c  00100000  exit
003a60  00100000  exit
003a64  00100000  exit
003a68  00100000  exit
003a6c  00100000  exit
003a70  00100000  exit
003a74  00100000  exit
003a78  00100000  exit
003a7c  00100000  exit
003a80  00100000  exit
003a84  00100000  exit
003a88  00100000  exit
003a8c  00100000  exit
003a90  00100000  exit
003a94  00100000  exit
003a98  00100000  exit
003a9c  00100000  exit
003aa0  00100000  exit
003aa4  00100000  exit
003aa8  00100000  exit
003aac  00100000  exit
003ab0  00100000  exit
003ab4  00100000  exit
003ab8  00100000  exit
003abc  00100000  exit
003ac0  00100000  exit
003ac4  00100000  exit
003ac8  00100000  exit
003acc  00100000  exit
003ad0  00100000  exit
003ad4  00100000  exit
003ad8  00100000  exit
003adc  00100000  exit
003ae0  00100000  exit
003ae4  00100000  exit
003ae8  00100000  exit
003aec  00100000  exit
003af0  00100000  exit
003af4  00100000  exit
003af8  00100000  exit
003afc  00100000  exit
003b00  00100000  exit
003b04  00100000  exit
003b08  00100000  exit
003b0c  00100000  exit
003b10  00100000  exit
003b14  00100000  exit
003b18  00100000  exit
003b1c  00100000  exit
003b20  00100000  exit
003b24  00100000  exit
003b28  00100000  exit
003b2c  00100000  exit
003b30  00100000  exit
003b34  00100000  exit
003b38  00100000  exit
003b3c  00100000  exit
003b40  00100000  exit
003b44  00100000  exit
003b48  00100000  exit
003b4c  00100000  exit
003b50  00100000  exit
003b54  00100000  exit
003b58  00100000  exit
003b5c  00100000  exit
003b60  00100000  exit
003b64  00100000  exit
003b68  00100000  exit
003b6c  00100000  exit
003b70  00100000  exit
003b74  00100000  exit
003b78  00100000  exit
003b7c  00100000  exit
003b80  00100000  exit
003b84  00100000  exit
003b88  00100000  exit
003b8c  00100000  exit
003b90  00100000  exit
003b94  00100000  exit
003b98  00100000  exit
003b9c  00100000  exit
003ba0  00100000  exit
003ba4  00100000  exit
003ba8  00100000  exit
003bac  00100000  exit
003bb0  00100000  exit
003bb4  00100000  exit
003bb8  00100000  exit
003bbc  00100000  exit
003bc0  00100000  exit
003bc4  00100000  exit
003bc8  00100000  exit
003bcc  00100000  exit
003bd0  00100000  exit
003bd4  00100000  exit
003bd8  00100000  exit
003bdc  00100000  exit
003be0  00100000  exit
003be4  00100000  exit
003be8  00100000  exit
003bec  00100000  exit
003bf0  00100000  exit
003bf4  00100000  exit
003bf8  00100000  exit
003bfc  00100000  exit
003c00  00100000  exit
003c04  00100000  exit
003c08  00100000  exit
003c0c  00100000  exit
003c10  00100000  exit
003c14  00100000  exit
003c18  00100000  exit
003c1c  00100000  exit
003c20  00100000  exit
003c24  00100000  exit
003c28  00100000  exit
003c2c  00100000  exit
003c30  00100000  exit
003c34  00100000  exit
003c38  00100000  exit
003c3c  00100000  exit
003c40  00100000  exit
003c44  00100000  exit
003c48  00100000  exit
003c4c  00100000  exit
003c50  00100000  exit
003c54  00100000  exit
003c58  00100000  exit
003c5c  00100000  exit
