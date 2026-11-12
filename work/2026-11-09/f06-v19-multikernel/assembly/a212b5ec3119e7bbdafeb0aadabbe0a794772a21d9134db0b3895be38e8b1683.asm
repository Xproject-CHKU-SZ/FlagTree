; SHA-256 a212b5ec3119e7bbdafeb0aadabbe0a794772a21d9134db0b3895be38e8b1683
; P800 SDNN · XTDK LLVM 19 · 972 / 972 words decoded
; bound names: mm_act
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
00005c  9f097000  addli r19, zero, 56
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
0000b4  9f8eeefc  addli sp, sp, -400
0000b8  9f100000  addli r1, zero, 1
0000bc  803b0002  core_id r23
0000c0  1f8fae02  addli r30, sp, 336
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00b00  beq r23, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b360000  j 432
0000e0  1f210000  addli r2, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  abf1ffff  lui r3, 1048575
0000ec  1d000100  lock zero, r2
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b90f1ff  ori r1, r3, 4095
0000f8  1d100100  unlock r2
0000fc  1f610000  addli r2, zero, 6
000100  80a10004  csr_set csr3, r1
000104  9f701000  addli r1, zero, 15
000108  00d00100  sync_group
00010c  7d800000  xsignal r1, 0
000110  9f400000  addli r1, zero, 4
000114  7d000100  xsignal r2, 0
000118  7d000100  xsignal r2, 0
00011c  7d000100  xsignal r2, 0
000120  7d000100  xsignal r2, 0
000124  7d000100  xsignal r2, 0
000128  7d000100  xsignal r2, 0
00012c  7d000100  xsignal r2, 0
000130  7d000100  xsignal r2, 0
000134  7d000100  xsignal r2, 0
000138  7d000100  xsignal r2, 0
00013c  7d000100  xsignal r2, 0
000140  7d000100  xsignal r2, 0
000144  7d000100  xsignal r2, 0
000148  7d000100  xsignal r2, 0
00014c  7d000100  xsignal r2, 0
000150  7d000100  xsignal r2, 0
000154  7d000100  xsignal r2, 0
000158  7d000100  xsignal r2, 0
00015c  7d000100  xsignal r2, 0
000160  7d000100  xsignal r2, 0
000164  7d000100  xsignal r2, 0
000168  7d000100  xsignal r2, 0
00016c  7d000100  xsignal r2, 0
000170  7d000100  xsignal r2, 0
000174  1f311000  addli r2, zero, 11
000178  7d800000  xsignal r1, 0
00017c  7d800000  xsignal r1, 0
000180  7d800000  xsignal r1, 0
000184  7d800000  xsignal r1, 0
000188  7d800000  xsignal r1, 0
00018c  7d800000  xsignal r1, 0
000190  7d800000  xsignal r1, 0
000194  7d800000  xsignal r1, 0
000198  7d800000  xsignal r1, 0
00019c  7d800000  xsignal r1, 0
0001a0  9f101000  addli r1, zero, 9
0001a4  7d000100  xsignal r2, 0
0001a8  7d000100  xsignal r2, 0
0001ac  7d000100  xsignal r2, 0
0001b0  7d000100  xsignal r2, 0
0001b4  7d000100  xsignal r2, 0
0001b8  7d000100  xsignal r2, 0
0001bc  7d000100  xsignal r2, 0
0001c0  7d000100  xsignal r2, 0
0001c4  7d000100  xsignal r2, 0
0001c8  7d000100  xsignal r2, 0
0001cc  7d000100  xsignal r2, 0
0001d0  7d000100  xsignal r2, 0
0001d4  7d000100  xsignal r2, 0
0001d8  7d000100  xsignal r2, 0
0001dc  7d000100  xsignal r2, 0
0001e0  7d000100  xsignal r2, 0
0001e4  7d000100  xsignal r2, 0
0001e8  7d000100  xsignal r2, 0
0001ec  7d000100  xsignal r2, 0
0001f0  7d000100  xsignal r2, 0
0001f4  7d000100  xsignal r2, 0
0001f8  7d000100  xsignal r2, 0
0001fc  7d000100  xsignal r2, 0
000200  7d000100  xsignal r2, 0
000204  7d000100  xsignal r2, 0
000208  7d000100  xsignal r2, 0
00020c  7d000100  xsignal r2, 0
000210  7d000100  xsignal r2, 0
000214  7d000100  xsignal r2, 0
000218  7d000100  xsignal r2, 0
00021c  7d000100  xsignal r2, 0
000220  7d000100  xsignal r2, 0
000224  7d000100  xsignal r2, 0
000228  7d000100  xsignal r2, 0
00022c  7d000100  xsignal r2, 0
000230  7d000100  xsignal r2, 0
000234  7d000100  xsignal r2, 0
000238  7d000100  xsignal r2, 0
00023c  7d000100  xsignal r2, 0
000240  7d000100  xsignal r2, 0
000244  1f512000  addli r2, zero, 21
000248  7d800000  xsignal r1, 0
00024c  7d800000  xsignal r1, 0
000250  7d800000  xsignal r1, 0
000254  7d800000  xsignal r1, 0
000258  7d800000  xsignal r1, 0
00025c  7d800000  xsignal r1, 0
000260  7d800000  xsignal r1, 0
000264  7d800000  xsignal r1, 0
000268  7d800000  xsignal r1, 0
00026c  7d800000  xsignal r1, 0
000270  9f202000  addli r1, zero, 18
000274  7d800000  xsignal r1, 0
000278  7d000100  xsignal r2, 0
00027c  9f702000  addli r1, zero, 23
000280  1f113000  addli r2, zero, 25
000284  7d800000  xsignal r1, 0
000288  7d000100  xsignal r2, 0
00028c  e3405f00  loadli.w r1,  44(r30)
000290  63016f00  loadli.w r2,  48(r30)
000294  00d20002  load_param_i r4, 1
000298  e3416f00  loadli.w r3,  52(r30)
00029c  abf2ffff  lui r5, 1048575
0002a0  674d0ffe  storeli.w zero, -44(r30)
0002a4  67030ffe  storeli.w zero, -208(r30)
0002a8  9b92f2ff  ori r5, r5, 4095
0002ac  8b101120  mul.s r1, r2, r1
0002b0  1f010200  addli r2, r4, 0
0002b4  e70d5ffe  storeli.w r5, -40(r30)
0002b8  e74d5ffe  storeli.w r5, -36(r30)
0002bc  670e5ffe  storeli.w r5, -32(r30)
0002c0  674e5ffe  storeli.w r5, -28(r30)
0002c4  e70e5ffe  storeli.w r5, -24(r30)
0002c8  e74e5ffe  storeli.w r5, -20(r30)
0002cc  670f5ffe  storeli.w r5, -16(r30)
0002d0  674f5ffe  storeli.w r5, -12(r30)
0002d4  e70f5ffe  storeli.w r5, -8(r30)
0002d8  e74f5ffe  storeli.w r5, -4(r30)
0002dc  67435ffe  storeli.w r5, -204(r30)
0002e0  e7035ffe  storeli.w r5, -200(r30)
0002e4  e7435ffe  storeli.w r5, -196(r30)
0002e8  67045ffe  storeli.w r5, -192(r30)
0002ec  67445ffe  storeli.w r5, -188(r30)
0002f0  e7045ffe  storeli.w r5, -184(r30)
0002f4  e7445ffe  storeli.w r5, -180(r30)
0002f8  67055ffe  storeli.w r5, -176(r30)
0002fc  67455ffe  storeli.w r5, -172(r30)
000300  e7055ffe  storeli.w r5, -168(r30)
000304  e7455ffe  storeli.w r5, -164(r30)
000308  67065ffe  storeli.w r5, -160(r30)
00030c  67465ffe  storeli.w r5, -156(r30)
000310  e7065ffe  storeli.w r5, -152(r30)
000314  e7465ffe  storeli.w r5, -148(r30)
000318  67075ffe  storeli.w r5, -144(r30)
00031c  67475ffe  storeli.w r5, -140(r30)
000320  e7075ffe  storeli.w r5, -136(r30)
000324  e7475ffe  storeli.w r5, -132(r30)
000328  67085ffe  storeli.w r5, -128(r30)
00032c  67485ffe  storeli.w r5, -124(r30)
000330  e7085ffe  storeli.w r5, -120(r30)
000334  e7485ffe  storeli.w r5, -116(r30)
000338  67095ffe  storeli.w r5, -112(r30)
00033c  67495ffe  storeli.w r5, -108(r30)
000340  e7095ffe  storeli.w r5, -104(r30)
000344  e7495ffe  storeli.w r5, -100(r30)
000348  670a5ffe  storeli.w r5, -96(r30)
00034c  674a5ffe  storeli.w r5, -92(r30)
000350  e70a5ffe  storeli.w r5, -88(r30)
000354  e74a5ffe  storeli.w r5, -84(r30)
000358  670b5ffe  storeli.w r5, -80(r30)
00035c  674b5ffe  storeli.w r5, -76(r30)
000360  e70b5ffe  storeli.w r5, -72(r30)
000364  e74b5ffe  storeli.w r5, -68(r30)
000368  670c5ffe  storeli.w r5, -64(r30)
00036c  674c5ffe  storeli.w r5, -60(r30)
000370  e70c5ffe  storeli.w r5, -56(r30)
000374  e74c5ffe  storeli.w r5, -52(r30)
000378  670d5ffe  storeli.w r5, -48(r30)
00037c  0b913050  fmac.s r2, r1, r3
000380  8b913020  mul.s r3, r1, r3
000384  1f71f1ff  addli r2, r2, -1
000388  0b114130  div.s r2, r2, r4
00038c  00520002  load_param_i r4, 0
000390  8b104120  mul.s r1, r2, r4
000394  0b114150  fmac.s r2, r2, r4
000398  0b113140  min.s r2, r2, r3
00039c  4b341104  ble.s r2, r1, 2316
0003a0  e3024f00  loadli.w r5,  32(r30)
0003a4  630d5f00  loadli.w r26,  40(r30)
0003a8  33130128  sext_int2long r[7:8], r2
0003ac  b3990028  sext_int2long r[20:21], r1
0003b0  e3414f00  loadli.w r3,  36(r30)
0003b4  6342afff  loadli.w r4,  -44(r30)
0003b8  e3056ffe  loadli.w r11,  -208(r30)
0003bc  1f050000  addli r10, zero, 0
0003c0  9f1a0000  addli r21, zero, 1
0003c4  9f0d0000  addli r27, zero, 0
0003c8  73386fec  store.d r[7:8], -304(r30)
0003cc  b3900228  sext_int2long r[2:3], r5
0003d0  73341fec  store.d r[2:3], -312(r30)
0003d4  9b301d00  slli r1, r26, 1
0003d8  674c1ffc  storeli.w r1, -316(r30)
0003dc  b3900128  sext_int2long r[2:3], r3
0003e0  733c1ff0  store.d r[2:3], -232(r30)
0003e4  9bb01100  slli r1, r3, 1
0003e8  2b011000  lui r2, 256
0003ec  e7401ffe  storeli.w r1, -244(r30)
0003f0  ab001400  lui r1, 320
0003f4  9b130120  ori r7, r2, 512
0003f8  9b900020  ori r1, r1, 512
0003fc  670b7ffc  storeli.w r7, -336(r30)
000400  e7421ffe  storeli.w r1, -212(r30)
000404  b3100d28  sext_int2long r[2:3], r26
000408  733c1fea  store.d r[2:3], -328(r30)
00040c  5b040000  j 32
000410  9f401000  addli r1, zero, 12
000414  7d800000  xsignal r1, 0
000418  eb598fef  load.d r[20:21], -264(r30)
00041c  eb500fed  load.d r[2:3], -304(r30)
000420  a7990900  addli.d r[20:21], r[20:21], 1
000424  93b01904  setlt.sl r1, r[20:21], r[2:3]
000428  37820004  beq r1, zero, 2176
00042c  9f400000  addli r1, zero, 4
000430  3bb01b00  bneq r23, r1, 12
000434  9f701000  addli r1, zero, 15
000438  7d900000  xwait r1, 0
00043c  e3406f00  loadli.w r1,  52(r30)
000440  63016f00  loadli.w r2,  48(r30)
000444  733c3fef  store.d r[20:21], -264(r30)
000448  9f3c0000  addli r25, zero, 3
00044c  9f040002  addli r9, zero, 256
000450  8b901930  div.s r1, r19, r1
000454  9f010100  addli r3, r2, 0
000458  0b913030  div.s r2, r1, r3
00045c  8b903038  mod.s r1, r1, r3
000460  1b348100  slli r8, r2, 8
000464  9bb28000  slli r5, r1, 8
000468  33930028  sext_int2long r[7:8], r1
00046c  33110128  sext_int2long r[3:4], r2
000470  9f001000  addli r1, zero, 8
000474  97361102  sll.d r[14:15], r[3:4], r1
000478  97301302  sll.d r[2:3], r[7:8], r1
00047c  b3970228  sext_int2long r[16:17], r5
000480  e74d8ffc  storeli.w r8, -292(r30)
000484  17b95003  sll.d r[19:20], r[2:3], r21
000488  9f70f001  addli r1, zero, 255
00048c  7330dfee  store.d r[14:15], -288(r30)
000490  7334ffee  store.d r[16:17], -280(r30)
000494  b3800028  zext_int2long r[2:3], r1
000498  73382fef  store.d r[19:20], -272(r30)
00049c  73301ff2  store.d r[2:3], -224(r30)
0004a0  bf6c5d01  blt.s r26, r21, 824
0004a4  b3100428  sext_int2long r[2:3], r8
0004a8  eb538feb  load.d r[8:9], -328(r30)
0004ac  630d5f00  loadli.w r26,  40(r30)
0004b0  1f060000  addli r12, zero, 0
0004b4  a7820002  addli.d r[6:7], r[2:3], 256
0004b8  8bb37620  mul.sl r[8:9], r[14:15], r[8:9]
0004bc  eb568fec  load.d r[14:15], -312(r30)
0004c0  73307ff0  store.d r[8:9], -256(r30)
0004c4  8bb2d240  min.sl r[6:7], r[6:7], r[14:15]
0004c8  a7860702  addli.d r[14:15], r[16:17], 256
0004cc  8bb31248  max.sl r[8:9], r[6:7], r[2:3]
0004d0  a7820700  addli.d r[6:7], r[16:17], 0
0004d4  eb578ff1  load.d r[16:17], -232(r30)
0004d8  8bb6f640  min.sl r[14:15], r[14:15], r[16:17]
0004dc  0bb81318  sub.sl r[17:18], r[8:9], r[2:3]
0004e0  eb508f00  load.d r[2:3], 8(r30)
0004e4  eb530ff0  load.d r[8:9], -256(r30)
0004e8  e3478ffd  loadli.w r15,  -316(r30)
0004ec  8ba02011  add.ul r[2:3], r[2:3], r[19:20]
0004f0  97b35303  sll.d r[8:9], r[8:9], r21
0004f4  73381ff0  store.d r[2:3], -240(r30)
0004f8  8bb05648  max.sl r[2:3], r[14:15], r[6:7]
0004fc  8bb95018  sub.sl r[20:21], r[2:3], r[6:7]
000500  eb500f00  load.d r[2:3], 0(r30)
000504  9f021000  addli r5, zero, 8
000508  1f230000  addli r6, zero, 2
00050c  1bbe1900  slli r28, r19, 1
000510  8ba07010  add.ul r[2:3], r[2:3], r[8:9]
000514  73301ff0  store.d r[2:3], -256(r30)
000518  9f000000  addli r1, zero, 0
00051c  db0f0000  j 124
000520  eb528ff1  load.d r[6:7], -232(r30)
000524  1f710000  addli r2, zero, 7
000528  7d000100  xsignal r2, 0
00052c  7d100100  xwait r2, 0
000530  8bb25320  mul.sl r[6:7], r[8:9], r[6:7]
000534  eb530ff1  load.d r[8:9], -240(r30)
000538  97b25203  sll.d r[6:7], r[6:7], r21
00053c  8ba25310  add.ul r[6:7], r[8:9], r[6:7]
000540  9f430000  addli r7, zero, 4
000544  1d800300  lock zero, r7
000548  958a0a00  dma_cfg r21, r21, zero, 0
00054c  15000304  dma_cfg zero, r6, zero, 2
000550  9581c207  dma_cfg r3, r5, r28, 3
000554  9f018000  addli r3, zero, 64
000558  9f020004  addli r5, zero, 512
00055c  1f230000  addli r6, zero, 2
000560  63411ffe  loadli.w r2,  -244(r30)
000564  95023108  dma_cfg r5, r2, r3, 4
000568  9f021000  addli r5, zero, 8
00056c  35000000  dma_run zero
000570  1d900300  unlock r7
000574  7d800200  xsignal r5, 0
000578  1f150500  addli r10, r10, 1
00057c  9f9d0d00  addli r27, r27, 1
000580  9f950500  addli r11, r11, 1
000584  1f120200  addli r4, r4, 1
000588  1f068600  addli r12, r12, 64
00058c  9f900000  addli r1, r1, 1
000590  3f20a601  blt.s r12, r26, 8
000594  db480000  j 580
000598  1f211000  addli r2, zero, 10
00059c  9f013000  addli r3, zero, 24
0005a0  1f0c8000  addli r24, zero, 64
0005a4  b3130628  sext_int2long r[8:9], r12
0005a8  0b912d38  mod.s r2, r27, r2
0005ac  8b113538  mod.s r3, r10, r3
0005b0  1bbbf100  slli r22, r3, 15
0005b4  1b31f100  slli r2, r2, 15
0005b8  ab010400  lui r3, 64
0005bc  0b113110  add.s r2, r2, r3
0005c0  3b915b01  bneq r23, r21, 68
0005c4  eb560ff2  load.d r[14:15], -224(r30)
0005c8  1f430000  addli r6, zero, 4
0005cc  7d100300  xwait r6, 0
0005d0  1f230000  addli r6, zero, 2
0005d4  93b10605  setlt.sl r3, r[14:15], r[17:18]
0005d8  bb900100  bneq r3, zero, 36
0005dc  1d000300  lock zero, r6
0005e0  9f717000  addli r3, zero, 63
0005e4  8d0a0002  ew_cfg r21, zero, zero, 1
0005e8  0d100000  ewcoeff_cfg zero, zero, zero, 0
0005ec  0d800104  ew_cfg zero, r3, zero, 2
0005f0  8d040006  ew_cfg r9, zero, zero, 3
0005f4  4d310000  ssaux r2, 0
0005f8  1d100300  unlock r6
0005fc  7d000300  xsignal r6, 0
000600  db140000  j 164
000604  37d16b00  beq r23, r6, 84
000608  9f610000  addli r3, zero, 6
00060c  3be23b00  bneq r23, r3, 152
000610  9f210000  addli r3, zero, 2
000614  97b25303  sll.d r[6:7], r[8:9], r21
000618  7d900100  xwait r3, 0
00061c  eb560ff0  load.d r[14:15], -256(r30)
000620  9f410000  addli r3, zero, 4
000624  1d800100  lock zero, r3
000628  8ba25610  add.ul r[6:7], r[14:15], r[6:7]
00062c  958a0a00  dma_cfg r21, r21, zero, 0
000630  9f060001  addli r13, zero, 128
000634  15000304  dma_cfg zero, r6, zero, 2
000638  1581d206  dma_cfg r2, r5, r13, 3
00063c  1f230000  addli r6, zero, 2
000640  9f021000  addli r5, zero, 8
000644  95860709  dma_cfg r13, r15, r16, 4
000648  35000000  dma_run zero
00064c  1d900100  unlock r3
000650  7d800c00  xsignal r25, 0
000654  5b0a0000  j 80
000658  9f310000  addli r3, zero, 3
00065c  9f6c0000  addli r25, zero, 6
000660  7d900100  xwait r3, 0
000664  7d900c00  xwait r25, 0
000668  b7200800  beq r16, zero, 40
00066c  1d000000  lock zero, zero
000670  1f0c8000  addli r24, zero, 64
000674  81010000  ds_cfg r3, zero, 0
000678  9f018000  addli r3, zero, 64
00067c  81010002  ds_cfg r3, zero, 1
000680  8101001c  ds_cfg r3, zero, 14
000684  0108001a  ds_cfg r16, zero, 13
000688  211b3102  shuffle_batch r22, r2, r3, 1
00068c  1d100000  unlock zero
000690  1f410000  addli r2, zero, 4
000694  9f3c0000  addli r25, zero, 3
000698  7d000100  xsignal r2, 0
00069c  1f510000  addli r2, zero, 5
0006a0  7d000100  xsignal r2, 0
0006a4  1f211000  addli r2, zero, 10
0006a8  ab010900  lui r3, 144
0006ac  0b112238  mod.s r2, r4, r2
0006b0  1b31f100  slli r2, r2, 15
0006b4  8b113110  add.s r3, r2, r3
0006b8  bbf05b01  bneq r23, r21, 60
0006bc  eb560ff2  load.d r[14:15], -224(r30)
0006c0  9f121000  addli r5, zero, 9
0006c4  7d900200  xwait r5, 0
0006c8  13b13605  setlt.sl r2, r[14:15], r[20:21]
0006cc  3b5901fe  bneq r2, zero, -428
0006d0  1d000300  lock zero, r6
0006d4  1f71f001  addli r2, zero, 255
0006d8  8d0a0002  ew_cfg r21, zero, zero, 1
0006dc  0d100000  ewcoeff_cfg zero, zero, zero, 0
0006e0  0d000104  ew_cfg zero, r2, zero, 2
0006e4  0d0c0006  ew_cfg r24, zero, zero, 3
0006e8  cd310000  ssaux r3, 0
0006ec  1d100300  unlock r6
0006f0  5bc6ffff  j -464
0006f4  1f015000  addli r2, zero, 40
0006f8  9f730000  addli r7, zero, 7
0006fc  0b912538  mod.s r2, r11, r2
000700  1b31f100  slli r2, r2, 15
000704  3ba17b00  bneq r23, r7, 72
000708  9f331000  addli r7, zero, 11
00070c  7d900200  xwait r5, 0
000710  1f048000  addli r8, zero, 64
000714  9f040002  addli r9, zero, 256
000718  7d900300  xwait r7, 0
00071c  1d000000  lock zero, zero
000720  9f030002  addli r7, zero, 256
000724  810c0000  ds_cfg r25, zero, 0
000728  81030002  ds_cfg r7, zero, 1
00072c  0104001c  ds_cfg r8, zero, 14
000730  8103001a  ds_cfg r7, zero, 13
000734  41818104  shuffle_coa r2, r3, r8, 2
000738  1f111000  addli r2, zero, 9
00073c  1d100000  unlock zero
000740  7d000100  xsignal r2, 0
000744  1f211000  addli r2, zero, 10
000748  5b110000  j 136
00074c  9f410000  addli r3, zero, 4
000750  9f038000  addli r7, zero, 64
000754  bb983bfe  bneq r23, r3, -476
000758  9f510000  addli r3, zero, 5
00075c  1f040008  addli r8, zero, 1024
000760  7d900100  xwait r3, 0
000764  9f211000  addli r3, zero, 10
000768  7d900100  xwait r3, 0
00076c  b7c00000  beq r1, zero, 48
000770  37510800  beq r16, zero, 84
000774  9f010000  addli r3, zero, 0
000778  1d800a00  lock zero, r21
00077c  89830301  mm_cfg r7, r7, r16, 0
000780  09835205  mm_cfg r6, r5, r21, 2
000784  a9112b0a  mm_acc r3, r22, r2, 5
000788  9f810102  addli r3, r3, 256
00078c  1f010140  addli r2, r2, 8192
000790  1d900a00  unlock r21
000794  bb9f81fe  bneq r3, r8, -28
000798  db050000  j 44
00079c  b7200800  beq r16, zero, 40
0007a0  9f010000  addli r3, zero, 0
0007a4  1d800a00  lock zero, r21
0007a8  89830301  mm_cfg r7, r7, r16, 0
0007ac  09835205  mm_cfg r6, r5, r21, 2
0007b0  a9012b0a  mm r3, r22, r2, 5
0007b4  9f810102  addli r3, r3, 256
0007b8  1f010140  addli r2, r2, 8192
0007bc  1d900a00  unlock r21
0007c0  bb9f81fe  bneq r3, r8, -28
0007c4  1f610000  addli r2, zero, 6
0007c8  7d000100  xsignal r2, 0
0007cc  1f311000  addli r2, zero, 11
0007d0  7d000100  xsignal r2, 0
0007d4  dbb4ffff  j -604
0007d8  9f400000  addli r1, zero, 4
0007dc  6703bffe  storeli.w r11, -208(r30)
0007e0  674d4ffe  storeli.w r4, -44(r30)
0007e4  b7b01bfe  beq r23, r1, -980
0007e8  eb538fee  load.d r[8:9], -280(r30)
0007ec  eb528ff1  load.d r[6:7], -232(r30)
0007f0  eb598fef  load.d r[20:21], -264(r30)
0007f4  9f040002  addli r9, zero, 256
0007f8  2b060200  lui r12, 32
0007fc  a7800302  addli.d r[2:3], r[8:9], 256
000800  8bb05040  min.sl r[2:3], r[2:3], r[6:7]
000804  8bb07048  max.sl r[2:3], r[2:3], r[8:9]
000808  0bb17018  sub.sl r[3:4], r[2:3], r[8:9]
00080c  9f600000  addli r1, zero, 6
000810  2b040e00  lui r8, 224
000814  37d11b00  beq r23, r1, 84
000818  6b5c0fef  load.d r[25:26], -272(r30)
00081c  9f330000  addli r7, zero, 3
000820  3bb25b01  bneq r23, r21, 140
000824  eb520ff2  load.d r[6:7], -224(r30)
000828  93b02204  setlt.sl r1, r[6:7], r[3:4]
00082c  1f212000  addli r2, zero, 18
000830  7d100100  xwait r2, 0
000834  1f210000  addli r2, zero, 2
000838  bb900000  bneq r1, zero, 36
00083c  1d000100  lock zero, r2
000840  9f70f001  addli r1, zero, 255
000844  8d0a0002  ew_cfg r21, zero, zero, 1
000848  0d100000  ewcoeff_cfg zero, zero, zero, 0
00084c  0d800004  ew_cfg zero, r1, zero, 2
000850  8d0a0006  ew_cfg r21, zero, zero, 3
000854  4d340000  ssaux r8, 0
000858  1d100100  unlock r2
00085c  9f002000  addli r1, zero, 16
000860  7d800000  xsignal r1, 0
000864  5b77ffff  j -1096
000868  eb520f01  load.d r[6:7], 16(r30)
00086c  6b560fef  load.d r[13:14], -272(r30)
000870  9f002000  addli r1, zero, 16
000874  9f430000  addli r7, zero, 4
000878  7d900000  xwait r1, 0
00087c  1d800300  lock zero, r7
000880  9b301100  slli r1, r2, 1
000884  8ba2c210  add.ul r[6:7], r[6:7], r[13:14]
000888  958a0a00  dma_cfg r21, r21, zero, 0
00088c  15000304  dma_cfg zero, r6, zero, 2
000890  15841206  dma_cfg r8, r5, r1, 3
000894  95805009  dma_cfg r1, r1, r21, 4
000898  9f102000  addli r1, zero, 17
00089c  35000000  dma_run zero
0008a0  1d900300  unlock r7
0008a4  7d800000  xsignal r1, 0
0008a8  db6effff  j -1164
0008ac  674bbffc  storeli.w r11, -332(r30)
0008b0  e70eaffc  storeli.w r10, -280(r30)
0008b4  9b100420  ori r1, r8, 512
0008b8  33850428  zext_int2long r[11:12], r9
0008bc  9f021000  addli r5, zero, 8
0008c0  1f230000  addli r6, zero, 2
0008c4  37a30b00  beq r23, zero, 200
0008c8  37b77b00  beq r23, r7, 460
0008cc  e3036ffd  loadli.w r7,  -336(r30)
0008d0  6305dffd  loadli.w r10,  -280(r30)
0008d4  e3456ffd  loadli.w r11,  -332(r30)
0008d8  ab020400  lui r5, 64
0008dc  1f510000  addli r2, zero, 5
0008e0  bbfc2bfc  bneq r23, r2, -1220
0008e4  9f112000  addli r3, zero, 17
0008e8  1f010000  addli r2, zero, 0
0008ec  7d900100  xwait r3, 0
0008f0  9f312000  addli r3, zero, 19
0008f4  7d900100  xwait r3, 0
0008f8  1d000300  lock zero, r6
0008fc  9f010078  addli r3, zero, 15360
000900  8d0a0002  ew_cfg r21, zero, zero, 1
000904  8d910100  ewcoeff_cfg r3, r3, zero, 0
000908  9f71f001  addli r3, zero, 255
00090c  0d800104  ew_cfg zero, r3, zero, 2
000910  8d0a0006  ew_cfg r21, zero, zero, 3
000914  8b111110  add.s r3, r2, r1
000918  1f010104  addli r2, r2, 512
00091c  ad818100  dsmadd r3, r3, r8, 0
000920  bb5fc1fe  bneq r2, r12, -12
000924  1f212000  addli r2, zero, 18
000928  1d100300  unlock r6
00092c  9f000000  addli r1, zero, 0
000930  7d000100  xsignal r2, 0
000934  1f412000  addli r2, zero, 20
000938  7d000100  xsignal r2, 0
00093c  1f511000  addli r2, zero, 13
000940  7d100100  xwait r2, 0
000944  1f712000  addli r2, zero, 23
000948  7d100100  xwait r2, 0
00094c  1d000300  lock zero, r6
000950  1f71f001  addli r2, zero, 255
000954  0d000002  ew_cfg zero, zero, zero, 1
000958  0d000104  ew_cfg zero, r2, zero, 2
00095c  8d0a0006  ew_cfg r21, zero, zero, 3
000960  0d100000  ewcoeff_cfg zero, zero, zero, 0
000964  0b917010  add.s r2, r1, r7
000968  2da11000  dscmpnsel r2, r1, r1, 0
00096c  9f800008  addli r1, r1, 1024
000970  bbdf50fe  bneq r1, r5, -12
000974  9f601000  addli r1, zero, 14
000978  1d100300  unlock r6
00097c  7d800000  xsignal r1, 0
000980  9f602000  addli r1, zero, 22
000984  7d800000  xsignal r1, 0
000988  db52ffff  j -1388
00098c  e342bffd  loadli.w r5,  -292(r30)
000990  eb538ff1  load.d r[8:9], -232(r30)
000994  6b560fee  load.d r[13:14], -288(r30)
000998  6b578fec  load.d r[15:16], -312(r30)
00099c  1f080008  addli r16, zero, 1024
0009a0  0b31a140  min.sl r[3:4], r[3:4], r[11:12]
0009a4  b3920228  sext_int2long r[6:7], r5
0009a8  8b337620  mul.sl r[8:9], r[13:14], r[8:9]
0009ac  27860202  addli.d r[13:14], r[6:7], 256
0009b0  97b35303  sll.d r[8:9], r[8:9], r21
0009b4  0b36e640  min.sl r[13:14], r[13:14], r[15:16]
0009b8  6b578f01  load.d r[15:16], 24(r30)
0009bc  0b365648  max.sl r[13:14], r[13:14], r[6:7]
0009c0  8b237710  add.ul r[8:9], r[15:16], r[8:9]
0009c4  1f572000  addli r14, zero, 21
0009c8  9f372000  addli r15, zero, 19
0009cc  8b325618  sub.sl r[6:7], r[13:14], r[6:7]
0009d0  1f461000  addli r12, zero, 12
0009d4  9f560000  addli r13, zero, 5
0009d8  8ba38311  add.ul r[8:9], r[8:9], r[25:26]
0009dc  7d100600  xwait r12, 0
0009e0  7d100700  xwait r14, 0
0009e4  1d800600  lock zero, r13
0009e8  1f060004  addli r12, zero, 512
0009ec  8bb2a240  min.sl r[6:7], r[6:7], r[11:12]
0009f0  950a0000  dma_cfg r21, zero, zero, 0
0009f4  958a0a02  dma_cfg r21, r21, zero, 1
0009f8  15000004  dma_cfg zero, zero, zero, 2
0009fc  95000007  dma_cfg r1, zero, r16, 3
000a00  15069808  dma_cfg r12, r16, r9, 4
000a04  35000000  dma_run zero
000a08  1d900600  unlock r13
000a0c  7d800700  xsignal r15, 0
000a10  9f472000  addli r15, zero, 20
000a14  7d900700  xwait r15, 0
000a18  1d800600  lock zero, r13
000a1c  7d200000  xflush
000a20  1d900600  unlock r13
000a24  1d800600  lock zero, r13
000a28  15800a00  dma_cfg zero, r21, zero, 0
000a2c  958a0a02  dma_cfg r21, r21, zero, 1
000a30  15000004  dma_cfg zero, zero, zero, 2
000a34  1580c006  dma_cfg zero, r1, r12, 3
000a38  9b302100  slli r1, r2, 2
000a3c  1f511000  addli r2, zero, 13
000a40  15089608  dma_cfg r16, r12, r9, 4
000a44  35000000  dma_run zero
000a48  1d900600  unlock r13
000a4c  7d000100  xsignal r2, 0
000a50  1f013000  addli r2, zero, 24
000a54  7d000700  xsignal r14, 0
000a58  7d100100  xwait r2, 0
000a5c  1d800600  lock zero, r13
000a60  950a0000  dma_cfg r21, zero, zero, 0
000a64  15800a02  dma_cfg zero, r21, zero, 1
000a68  15040004  dma_cfg r8, zero, zero, 2
000a6c  63415ffe  loadli.w r2,  -212(r30)
000a70  95031106  dma_cfg r7, r2, r1, 3
000a74  1f010008  addli r2, zero, 1024
000a78  e3401ffe  loadli.w r1,  -244(r30)
000a7c  95005108  dma_cfg r1, r2, r5, 4
000a80  9f103000  addli r1, zero, 25
000a84  35000000  dma_run zero
000a88  1d900600  unlock r13
000a8c  7d800000  xsignal r1, 0
000a90  db410000  j 524
000a94  9f601000  addli r1, zero, 14
000a98  e30a6ffd  loadli.w r21,  -336(r30)
000a9c  7d900000  xwait r1, 0
000aa0  9f602000  addli r1, zero, 22
000aa4  7d900000  xwait r1, 0
000aa8  9f103000  addli r1, zero, 25
000aac  7d900000  xwait r1, 0
000ab0  b3000028  zext_int2long r[2:3], zero
000ab4  3d000000  xfence
000ab8  00a00300  mfence { lm, sm, gm }
000abc  73301ff0  store.d r[2:3], -256(r30)
000ac0  27810000  addli.d r[3:4], r[2:3], 0
000ac4  db030000  j 28
000ac8  eb500ff2  load.d r[2:3], -224(r30)
000acc  eb520ff1  load.d r[6:7], -240(r30)
000ad0  93a01204  setlt.ul r1, r[6:7], r[2:3]
000ad4  27910200  addli.d r[3:4], r[6:7], 1
000ad8  9f021000  addli r5, zero, 8
000adc  37d60000  beq r1, zero, 404
000ae0  6b5b0ff0  load.d r[23:24], -256(r30)
000ae4  17385102  sll.d r[17:18], r[3:4], r5
000ae8  73382ff0  store.d r[3:4], -240(r30)
000aec  5b070000  j 56
000af0  270b1b00  addli.d r[23:24], r[23:24], 8
000af4  e3425ffe  loadli.w r5,  -212(r30)
000af8  9323ab02  setneq.d r7, r[23:24], r[11:12]
000afc  8b125610  add.s r5, r12, r5
000b00  73e64201  stores.w r20, 12(r5)
000b04  73e46200  stores.w r6, 8(r5)
000b08  73e2d200  stores.w r13, 4(r5)
000b0c  73e01200  stores.w r1, 0(r5)
000b10  73ee2200  stores.w r2, 28(r5)
000b14  73ec2201  stores.w r18, 24(r5)
000b18  73ea8200  stores.w r8, 20(r5)
000b1c  73e83200  stores.w r3, 16(r5)
000b20  b7ae03fe  beq r7, zero, -88
000b24  8b200b11  add.ul r[2:3], r[23:24], r[17:18]
000b28  1bb62000  slli r12, r1, 2
000b2c  ef400600  loads.w r1, 0(r12)
000b30  0b1d5611  add.s r26, r12, r21
000b34  ef44c600  loads.w r9, 12(r12)
000b38  ef428600  loads.w r5, 8(r12)
000b3c  ef434600  loads.w r7, 4(r12)
000b40  6f4ec601  loads.w r28, 28(r12)
000b44  ef498601  loads.w r19, 24(r12)
000b48  ef4c4601  loads.w r25, 20(r12)
000b4c  6f4c0601  loads.w r24, 16(r12)
000b50  6f4acd00  loads.w r20, 12(r26)
000b54  6f438d00  loads.w r6, 8(r26)
000b58  ef464d00  loads.w r13, 4(r26)
000b5c  6f41cd01  loads.w r2, 28(r26)
000b60  6f498d01  loads.w r18, 24(r26)
000b64  6f444d01  loads.w r8, 20(r26)
000b68  ef410d01  loads.w r3, 16(r26)
000b6c  1bb79000  slli r14, r1, 9
000b70  9bc77001  srli r15, r1, 23
000b74  13070700  seteq r14, r14, zero
000b78  9b87f70f  andi r15, r15, 255
000b7c  9bf7f70f  setlti r15, r15, 255
000b80  1797e700  or r14, r15, r14
000b84  37200700  beq r14, zero, 8
000b88  ef400d00  loads.w r1, 0(r26)
000b8c  1bb79300  slli r14, r7, 9
000b90  9bc77301  srli r15, r7, 23
000b94  13070700  seteq r14, r14, zero
000b98  9b87f70f  andi r15, r15, 255
000b9c  9bf7f70f  setlti r15, r15, 255
000ba0  1797e700  or r14, r15, r14
000ba4  3b200700  bneq r14, zero, 8
000ba8  9f860300  addli r13, r7, 0
000bac  9bb39200  slli r7, r5, 9
000bb0  1bc77201  srli r14, r5, 23
000bb4  93830300  seteq r7, r7, zero
000bb8  1b07f70f  andi r14, r14, 255
000bbc  1b77f70f  setlti r14, r14, 255
000bc0  97137700  or r7, r14, r7
000bc4  3ba00300  bneq r7, zero, 8
000bc8  1f830200  addli r6, r5, 0
000bcc  9bb29400  slli r5, r9, 9
000bd0  9bc37401  srli r7, r9, 23
000bd4  93820200  seteq r5, r5, zero
000bd8  9b83f30f  andi r7, r7, 255
000bdc  9bf3f30f  setlti r7, r7, 255
000be0  97925300  or r5, r7, r5
000be4  3ba00200  bneq r5, zero, 8
000be8  1f8a0400  addli r20, r9, 0
000bec  9b329c00  slli r5, r24, 9
000bf0  9b437c01  srli r7, r24, 23
000bf4  93820200  seteq r5, r5, zero
000bf8  9b83f30f  andi r7, r7, 255
000bfc  9bf3f30f  setlti r7, r7, 255
000c00  97925300  or r5, r7, r5
000c04  3ba00200  bneq r5, zero, 8
000c08  9f010c00  addli r3, r24, 0
000c0c  9bb29c00  slli r5, r25, 9
000c10  9bc37c01  srli r7, r25, 23
000c14  93820200  seteq r5, r5, zero
000c18  9b83f30f  andi r7, r7, 255
000c1c  9bf3f30f  setlti r7, r7, 255
000c20  97925300  or r5, r7, r5
000c24  3ba00200  bneq r5, zero, 8
000c28  1f840c00  addli r8, r25, 0
000c2c  9bb29900  slli r5, r19, 9
000c30  9bc37901  srli r7, r19, 23
000c34  93820200  seteq r5, r5, zero
000c38  9b83f30f  andi r7, r7, 255
000c3c  9bf3f30f  setlti r7, r7, 255
000c40  97925300  or r5, r7, r5
000c44  3ba00200  bneq r5, zero, 8
000c48  1f890900  addli r18, r19, 0
000c4c  9b329e00  slli r5, r28, 9
000c50  9b437e01  srli r7, r28, 23
000c54  93820200  seteq r5, r5, zero
000c58  9b83f30f  andi r7, r7, 255
000c5c  9bf3f30f  setlti r7, r7, 255
000c60  97925300  or r5, r7, r5
000c64  3bba02fe  bneq r5, zero, -372
000c68  1f010e00  addli r2, r28, 0
000c6c  dbd0ffff  j -380
000c70  9f701000  addli r1, zero, 15
000c74  00200100  mfence { sm }
000c78  630d5f00  loadli.w r26,  40(r30)
000c7c  803b0002  core_id r23
000c80  9f1a0000  addli r21, zero, 1
000c84  7d800000  xsignal r1, 0
000c88  9f702000  addli r1, zero, 23
000c8c  7d800000  xsignal r1, 0
000c90  9f003000  addli r1, zero, 24
000c94  7d800000  xsignal r1, 0
000c98  eb598fef  load.d r[20:21], -264(r30)
000c9c  6305dffd  loadli.w r10,  -280(r30)
000ca0  e3456ffd  loadli.w r11,  -332(r30)
000ca4  5beffeff  j -2184
000ca8  7d000000  xsignal zero, 0
000cac  bbe00b00  bneq r23, zero, 56
000cb0  9f200000  addli r1, zero, 2
000cb4  7d100000  xwait zero, 0
000cb8  7d100000  xwait zero, 0
000cbc  7d100000  xwait zero, 0
000cc0  7d100000  xwait zero, 0
000cc4  7d100000  xwait zero, 0
000cc8  7d100000  xwait zero, 0
000ccc  7d100000  xwait zero, 0
000cd0  7d100000  xwait zero, 0
000cd4  1d800000  lock zero, r1
000cd8  0d000020  ew_cfg zero, zero, zero, 16
000cdc  1d900000  unlock r1
000ce0  7d400000  xsignal_mode_cfg zero
000ce4  9f8eae02  addli sp, sp, 336
000ce8  00a00300  mfence { lm, sm, gm }
000cec  00100000  exit
000cf0  00100000  exit
000cf4  00100000  exit
000cf8  00100000  exit
000cfc  00100000  exit
000d00  00100000  exit
000d04  00100000  exit
000d08  00100000  exit
000d0c  00100000  exit
000d10  00100000  exit
000d14  00100000  exit
000d18  00100000  exit
000d1c  00100000  exit
000d20  00100000  exit
000d24  00100000  exit
000d28  00100000  exit
000d2c  00100000  exit
000d30  00100000  exit
000d34  00100000  exit
000d38  00100000  exit
000d3c  00100000  exit
000d40  00100000  exit
000d44  00100000  exit
000d48  00100000  exit
000d4c  00100000  exit
000d50  00100000  exit
000d54  00100000  exit
000d58  00100000  exit
000d5c  00100000  exit
000d60  00100000  exit
000d64  00100000  exit
000d68  00100000  exit
000d6c  00100000  exit
000d70  00100000  exit
000d74  00100000  exit
000d78  00100000  exit
000d7c  00100000  exit
000d80  00100000  exit
000d84  00100000  exit
000d88  00100000  exit
000d8c  00100000  exit
000d90  00100000  exit
000d94  00100000  exit
000d98  00100000  exit
000d9c  00100000  exit
000da0  00100000  exit
000da4  00100000  exit
000da8  00100000  exit
000dac  00100000  exit
000db0  00100000  exit
000db4  00100000  exit
000db8  00100000  exit
000dbc  00100000  exit
000dc0  00100000  exit
000dc4  00100000  exit
000dc8  00100000  exit
000dcc  00100000  exit
000dd0  00100000  exit
000dd4  00100000  exit
000dd8  00100000  exit
000ddc  00100000  exit
000de0  00100000  exit
000de4  00100000  exit
000de8  00100000  exit
000dec  00100000  exit
000df0  00100000  exit
000df4  00100000  exit
000df8  00100000  exit
000dfc  00100000  exit
000e00  00100000  exit
000e04  00100000  exit
000e08  00100000  exit
000e0c  00100000  exit
000e10  00100000  exit
000e14  00100000  exit
000e18  00100000  exit
000e1c  00100000  exit
000e20  00100000  exit
000e24  00100000  exit
000e28  00100000  exit
000e2c  00100000  exit
000e30  00100000  exit
000e34  00100000  exit
000e38  00100000  exit
000e3c  00100000  exit
000e40  00100000  exit
000e44  00100000  exit
000e48  00100000  exit
000e4c  00100000  exit
000e50  00100000  exit
000e54  00100000  exit
000e58  00100000  exit
000e5c  00100000  exit
000e60  00100000  exit
000e64  00100000  exit
000e68  00100000  exit
000e6c  00100000  exit
000e70  00100000  exit
000e74  00100000  exit
000e78  00100000  exit
000e7c  00100000  exit
000e80  00100000  exit
000e84  00100000  exit
000e88  00100000  exit
000e8c  00100000  exit
000e90  00100000  exit
000e94  00100000  exit
000e98  00100000  exit
000e9c  00100000  exit
000ea0  00100000  exit
000ea4  00100000  exit
000ea8  00100000  exit
000eac  00100000  exit
000eb0  00100000  exit
000eb4  00100000  exit
000eb8  00100000  exit
000ebc  00100000  exit
000ec0  00100000  exit
000ec4  00100000  exit
000ec8  00100000  exit
000ecc  00100000  exit
000ed0  00100000  exit
000ed4  00100000  exit
000ed8  00100000  exit
000edc  00100000  exit
000ee0  00100000  exit
000ee4  00100000  exit
000ee8  00100000  exit
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
