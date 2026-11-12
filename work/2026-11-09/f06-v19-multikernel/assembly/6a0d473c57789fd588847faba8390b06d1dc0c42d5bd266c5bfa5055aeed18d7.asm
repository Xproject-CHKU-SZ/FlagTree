; SHA-256 6a0d473c57789fd588847faba8390b06d1dc0c42d5bd266c5bfa5055aeed18d7
; P800 SDNN · XTDK LLVM 19 · 2674 / 2674 words decoded
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
0000b4  9f8e3efe  addli sp, sp, -232
0000b8  9f100000  addli r1, zero, 1
0000bc  00390002  core_id r18
0000c0  1f8f5e01  addli r30, sp, 168
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600900  beq r18, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b190000  j 200
0000e0  1f210000  addli r2, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  abf1ffff  lui r3, 1048575
0000ec  1d000100  lock zero, r2
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b90f1ff  ori r1, r3, 4095
0000f8  1d100100  unlock r2
0000fc  1f510000  addli r2, zero, 5
000100  80a10004  csr_set csr3, r1
000104  9f301000  addli r1, zero, 11
000108  00d00100  sync_group
00010c  7d800000  xsignal r1, 0
000110  7d800000  xsignal r1, 0
000114  7d800000  xsignal r1, 0
000118  7d800000  xsignal r1, 0
00011c  7d000100  xsignal r2, 0
000120  7d000100  xsignal r2, 0
000124  7d000100  xsignal r2, 0
000128  7d000100  xsignal r2, 0
00012c  9f300000  addli r1, zero, 3
000130  1f111000  addli r2, zero, 9
000134  7d800000  xsignal r1, 0
000138  7d800000  xsignal r1, 0
00013c  7d800000  xsignal r1, 0
000140  7d800000  xsignal r1, 0
000144  7d000100  xsignal r2, 0
000148  7d000100  xsignal r2, 0
00014c  7d000100  xsignal r2, 0
000150  7d000100  xsignal r2, 0
000154  9f700000  addli r1, zero, 7
000158  1f312000  addli r2, zero, 19
00015c  7d800000  xsignal r1, 0
000160  7d800000  xsignal r1, 0
000164  7d800000  xsignal r1, 0
000168  7d800000  xsignal r1, 0
00016c  7d000100  xsignal r2, 0
000170  7d000100  xsignal r2, 0
000174  7d000100  xsignal r2, 0
000178  7d000100  xsignal r2, 0
00017c  9f002000  addli r1, zero, 16
000180  1f611000  addli r2, zero, 14
000184  7d800000  xsignal r1, 0
000188  7d800000  xsignal r1, 0
00018c  7d800000  xsignal r1, 0
000190  7d800000  xsignal r1, 0
000194  7d000100  xsignal r2, 0
000198  7d000100  xsignal r2, 0
00019c  7d000100  xsignal r2, 0
0001a0  7d000100  xsignal r2, 0
0001a4  e3004f00  loadli.w r1,  32(r30)
0001a8  63414f00  loadli.w r2,  36(r30)
0001ac  00d20002  load_param_i r4, 1
0001b0  e3015f00  loadli.w r3,  40(r30)
0001b4  8b101120  mul.s r1, r2, r1
0001b8  1f010200  addli r2, r4, 0
0001bc  0b913050  fmac.s r2, r1, r3
0001c0  8b913020  mul.s r3, r1, r3
0001c4  1f71f1ff  addli r2, r2, -1
0001c8  0b114130  div.s r2, r2, r4
0001cc  00520002  load_param_i r4, 0
0001d0  8b104120  mul.s r1, r2, r4
0001d4  0b114150  fmac.s r2, r2, r4
0001d8  0b113140  min.s r2, r2, r3
0001dc  cb151112  ble.s r2, r1, 9572
0001e0  33110128  sext_int2long r[3:4], r2
0001e4  33920028  sext_int2long r[5:6], r1
0001e8  9f490000  addli r19, zero, 4
0001ec  1f0a8000  addli r20, zero, 64
0001f0  9f7a0000  addli r21, zero, 7
0001f4  1f6b0000  addli r22, zero, 6
0001f8  9f5b1000  addli r23, zero, 13
0001fc  1f1d0000  addli r26, zero, 1
000200  9f3d0000  addli r27, zero, 3
000204  2b0c4000  lui r24, 1024
000208  ab0c807f  lui r25, 522240
00020c  73342ff6  store.d r[3:4], -152(r30)
000210  1f71f00f  addli r2, zero, 2047
000214  9f010000  addli r3, zero, 0
000218  ab80ffff  lui r1, 1048568
00021c  73301ff6  store.d r[2:3], -160(r30)
000220  abf0ff7f  lui r1, 524287
000224  2bf17f7f  lui r2, 522239
000228  9b98f0ff  ori r17, r1, 4095
00022c  ab700000  lui r1, 7
000230  1b17f1ff  ori r14, r2, 4095
000234  9b96f0ff  ori r13, r1, 4095
000238  b3000028  zext_int2long r[2:3], zero
00023c  733c1ff4  store.d r[2:3], -168(r30)
000240  ab00ffff  lui r1, 1048560
000244  5b090000  j 72
000248  1f611000  addli r2, zero, 14
00024c  9f490000  addli r19, zero, 4
000250  1f0a8000  addli r20, zero, 64
000254  9f7a0000  addli r21, zero, 7
000258  1f6b0000  addli r22, zero, 6
00025c  9f5b1000  addli r23, zero, 13
000260  1f1d0000  addli r26, zero, 1
000264  7d000100  xsignal r2, 0
000268  1f112000  addli r2, zero, 17
00026c  7d000100  xsignal r2, 0
000270  6b520ff9  load.d r[5:6], -112(r30)
000274  6b518ff6  load.d r[3:4], -152(r30)
000278  27120200  addli.d r[5:6], r[5:6], 1
00027c  13312204  setlt.sl r2, r[5:6], r[3:4]
000280  e3414fff  loadli.w r3,  -92(r30)
000284  9f910100  addli r3, r3, 1
000288  b7620112  beq r2, zero, 9400
00028c  63015f00  loadli.w r2,  40(r30)
000290  674a3ffe  storeli.w r3, -92(r30)
000294  e3414f00  loadli.w r3,  36(r30)
000298  73384ff8  store.d r[5:6], -112(r30)
00029c  1f031000  addli r6, zero, 8
0002a0  0b112230  div.s r2, r4, r2
0002a4  0b123130  div.s r4, r2, r3
0002a8  8b124231  div.s r5, r4, r20
0002ac  1bb13200  slli r2, r5, 3
0002b0  8b112318  sub.s r3, r6, r2
0002b4  0b936140  min.s r6, r3, r6
0002b8  8b116238  mod.s r3, r4, r6
0002bc  8b912110  add.s r3, r3, r2
0002c0  13813a04  setlt.u r2, r21, r3
0002c4  b3830128  zext_int2long r[8:9], r3
0002c8  67473ffe  storeli.w r3, -140(r30)
0002cc  9f411000  addli r3, zero, 12
0002d0  73307ff8  store.d r[8:9], -128(r30)
0002d4  17b43302  sll.d r[9:10], r[8:9], r3
0002d8  3b300100  bneq r2, zero, 12
0002dc  6b558ff5  load.d r[11:12], -168(r30)
0002e0  db010000  j 12
0002e4  6b510ff6  load.d r[3:4], -160(r30)
0002e8  17052402  and.d r[11:12], r[9:10], r[3:4]
0002ec  63464fff  loadli.w r12,  -92(r30)
0002f0  0b113639  mod.s r2, r12, r19
0002f4  670b2ffe  storeli.w r2, -80(r30)
0002f8  9b31e100  slli r3, r2, 14
0002fc  1f018003  addli r2, zero, 448
000300  b3070128  zext_int2long r[16:17], r2
000304  2b010200  lui r2, 32
000308  8b932110  add.s r7, r3, r2
00030c  7334fffa  store.d r[16:17], -88(r30)
000310  bb3aa901  bneq r18, r26, 684
000314  0b34a418  sub.sl r[9:10], r[9:10], r[11:12]
000318  17546403  sra.d r[9:10], r[9:10], r22
00031c  0b35f440  min.sl r[11:12], r[9:10], r[16:17]
000320  eb570ff8  load.d r[16:17], -128(r30)
000324  7d900d00  xwait r27, 0
000328  0b358518  sub.sl r[11:12], r[11:12], r[9:10]
00032c  6b540f00  load.d r[9:10], 0(r30)
000330  97b77703  sll.d r[16:17], r[16:17], r23
000334  1f018500  addli r2, r10, 64
000338  0b24f410  add.ul r[9:10], r[9:10], r[16:17]
00033c  bf84cd00  blt.s r27, r12, 288
000340  9f550000  addli r11, zero, 5
000344  1f260000  addli r12, zero, 2
000348  1f051000  addli r10, zero, 8
00034c  1d800500  lock zero, r11
000350  15000014  dma_cfg zero, zero, zero, 10
000354  1500a015  dma_cfg zero, zero, r26, 10
000358  1500c014  dma_cfg zero, zero, r12, 10
00035c  1500b015  dma_cfg zero, zero, r27, 10
000360  15003015  dma_cfg zero, zero, r19, 10
000364  1500b014  dma_cfg zero, zero, r11, 10
000368  15006015  dma_cfg zero, zero, r22, 10
00036c  15005015  dma_cfg zero, zero, r21, 10
000370  1500a014  dma_cfg zero, zero, r10, 10
000374  1f151000  addli r10, zero, 9
000378  1500a014  dma_cfg zero, zero, r10, 10
00037c  1f251000  addli r10, zero, 10
000380  1500a014  dma_cfg zero, zero, r10, 10
000384  1f351000  addli r10, zero, 11
000388  1500a014  dma_cfg zero, zero, r10, 10
00038c  1f451000  addli r10, zero, 12
000390  1500a014  dma_cfg zero, zero, r10, 10
000394  1f651000  addli r10, zero, 14
000398  15007015  dma_cfg zero, zero, r23, 10
00039c  1500a014  dma_cfg zero, zero, r10, 10
0003a0  1f751000  addli r10, zero, 15
0003a4  1500a014  dma_cfg zero, zero, r10, 10
0003a8  1f052000  addli r10, zero, 16
0003ac  1500a014  dma_cfg zero, zero, r10, 10
0003b0  1f152000  addli r10, zero, 17
0003b4  1500a014  dma_cfg zero, zero, r10, 10
0003b8  1f252000  addli r10, zero, 18
0003bc  1500a014  dma_cfg zero, zero, r10, 10
0003c0  1f352000  addli r10, zero, 19
0003c4  1500a014  dma_cfg zero, zero, r10, 10
0003c8  1f452000  addli r10, zero, 20
0003cc  1500a014  dma_cfg zero, zero, r10, 10
0003d0  1f552000  addli r10, zero, 21
0003d4  1500a014  dma_cfg zero, zero, r10, 10
0003d8  1f652000  addli r10, zero, 22
0003dc  1500a014  dma_cfg zero, zero, r10, 10
0003e0  1f752000  addli r10, zero, 23
0003e4  1500a014  dma_cfg zero, zero, r10, 10
0003e8  1f053000  addli r10, zero, 24
0003ec  1500a014  dma_cfg zero, zero, r10, 10
0003f0  1f153000  addli r10, zero, 25
0003f4  1500a014  dma_cfg zero, zero, r10, 10
0003f8  1f253000  addli r10, zero, 26
0003fc  1500a014  dma_cfg zero, zero, r10, 10
000400  1f353000  addli r10, zero, 27
000404  1500a014  dma_cfg zero, zero, r10, 10
000408  1f453000  addli r10, zero, 28
00040c  1500a014  dma_cfg zero, zero, r10, 10
000410  1f553000  addli r10, zero, 29
000414  1500a014  dma_cfg zero, zero, r10, 10
000418  1f653000  addli r10, zero, 30
00041c  1500a014  dma_cfg zero, zero, r10, 10
000420  1f753000  addli r10, zero, 31
000424  1500a014  dma_cfg zero, zero, r10, 10
000428  1f050001  addli r10, zero, 128
00042c  150d0d00  dma_cfg r26, r26, zero, 0
000430  150d0002  dma_cfg r26, zero, zero, 1
000434  15000004  dma_cfg zero, zero, zero, 2
000438  95034007  dma_cfg r7, zero, r20, 3
00043c  1505c008  dma_cfg r10, zero, r12, 4
000440  1f050002  addli r10, zero, 256
000444  1505400b  dma_cfg r10, zero, r20, 5
000448  15000010  dma_cfg zero, zero, zero, 8
00044c  35000000  dma_run zero
000450  1500a00b  dma_cfg zero, zero, r26, 5
000454  15000010  dma_cfg zero, zero, zero, 8
000458  1d900500  unlock r11
00045c  2b050200  lui r10, 32
000460  e7090ffe  storeli.w zero, -104(r30)
000464  9f050001  addli r11, zero, 128
000468  1f060002  addli r12, zero, 256
00046c  1d800900  lock zero, r19
000470  1b150504  ori r10, r10, 64
000474  150d0d00  dma_cfg r26, r26, zero, 0
000478  15800404  dma_cfg zero, r9, zero, 2
00047c  0b95a110  add.s r10, r3, r10
000480  15054407  dma_cfg r10, r8, r20, 3
000484  1f250000  addli r10, zero, 2
000488  9f540000  addli r9, zero, 5
00048c  1f041000  addli r8, zero, 8
000490  9505aa08  dma_cfg r11, r20, r10, 4
000494  1586250a  dma_cfg r12, r11, r2, 5
000498  15000010  dma_cfg zero, zero, zero, 8
00049c  35000000  dma_run zero
0004a0  1500a00b  dma_cfg zero, zero, r26, 5
0004a4  15000010  dma_cfg zero, zero, zero, 8
0004a8  1d900900  unlock r19
0004ac  1d800400  lock zero, r9
0004b0  15000014  dma_cfg zero, zero, zero, 10
0004b4  1500a015  dma_cfg zero, zero, r26, 10
0004b8  1500a014  dma_cfg zero, zero, r10, 10
0004bc  1500b015  dma_cfg zero, zero, r27, 10
0004c0  15003015  dma_cfg zero, zero, r19, 10
0004c4  15009014  dma_cfg zero, zero, r9, 10
0004c8  15006015  dma_cfg zero, zero, r22, 10
0004cc  15005015  dma_cfg zero, zero, r21, 10
0004d0  15008014  dma_cfg zero, zero, r8, 10
0004d4  1f141000  addli r8, zero, 9
0004d8  15008014  dma_cfg zero, zero, r8, 10
0004dc  1f241000  addli r8, zero, 10
0004e0  15008014  dma_cfg zero, zero, r8, 10
0004e4  1f341000  addli r8, zero, 11
0004e8  15008014  dma_cfg zero, zero, r8, 10
0004ec  1f441000  addli r8, zero, 12
0004f0  15008014  dma_cfg zero, zero, r8, 10
0004f4  1f641000  addli r8, zero, 14
0004f8  15007015  dma_cfg zero, zero, r23, 10
0004fc  15008014  dma_cfg zero, zero, r8, 10
000500  1f741000  addli r8, zero, 15
000504  15008014  dma_cfg zero, zero, r8, 10
000508  1f042000  addli r8, zero, 16
00050c  15008014  dma_cfg zero, zero, r8, 10
000510  1f142000  addli r8, zero, 17
000514  15008014  dma_cfg zero, zero, r8, 10
000518  1f242000  addli r8, zero, 18
00051c  15008014  dma_cfg zero, zero, r8, 10
000520  1f342000  addli r8, zero, 19
000524  15008014  dma_cfg zero, zero, r8, 10
000528  1f442000  addli r8, zero, 20
00052c  15008014  dma_cfg zero, zero, r8, 10
000530  1f542000  addli r8, zero, 21
000534  15008014  dma_cfg zero, zero, r8, 10
000538  1f642000  addli r8, zero, 22
00053c  15008014  dma_cfg zero, zero, r8, 10
000540  1f742000  addli r8, zero, 23
000544  15008014  dma_cfg zero, zero, r8, 10
000548  1f043000  addli r8, zero, 24
00054c  15008014  dma_cfg zero, zero, r8, 10
000550  1f143000  addli r8, zero, 25
000554  15008014  dma_cfg zero, zero, r8, 10
000558  1f243000  addli r8, zero, 26
00055c  15008014  dma_cfg zero, zero, r8, 10
000560  1f343000  addli r8, zero, 27
000564  15008014  dma_cfg zero, zero, r8, 10
000568  1f443000  addli r8, zero, 28
00056c  15008014  dma_cfg zero, zero, r8, 10
000570  1f543000  addli r8, zero, 29
000574  15008014  dma_cfg zero, zero, r8, 10
000578  1f643000  addli r8, zero, 30
00057c  15008014  dma_cfg zero, zero, r8, 10
000580  1f743000  addli r8, zero, 31
000584  15008014  dma_cfg zero, zero, r8, 10
000588  150d0d00  dma_cfg r26, r26, zero, 0
00058c  150d0002  dma_cfg r26, zero, zero, 1
000590  15000004  dma_cfg zero, zero, zero, 2
000594  95034007  dma_cfg r7, zero, r20, 3
000598  9505a008  dma_cfg r11, zero, r10, 4
00059c  1506200a  dma_cfg r12, zero, r2, 5
0005a0  15000010  dma_cfg zero, zero, zero, 8
0005a4  35000000  dma_run zero
0005a8  1500a00b  dma_cfg zero, zero, r26, 5
0005ac  15000010  dma_cfg zero, zero, zero, 8
0005b0  1d900400  unlock r9
0005b4  7d000500  xsignal r10, 0
0005b8  db090000  j 76
0005bc  1f240000  addli r8, zero, 2
0005c0  3b018900  bneq r18, r8, 64
0005c4  1f510000  addli r2, zero, 5
0005c8  7d100400  xwait r8, 0
0005cc  7d100100  xwait r2, 0
0005d0  1d000000  lock zero, zero
0005d4  1f110000  addli r2, zero, 1
0005d8  01040000  ds_cfg r8, zero, 0
0005dc  010a0002  ds_cfg r20, zero, 1
0005e0  010a001c  ds_cfg r20, zero, 14
0005e4  010a001a  ds_cfg r20, zero, 13
0005e8  a1914303  shuffle_batch r3, r7, r20, 1
0005ec  1d100000  unlock zero
0005f0  7d800d00  xsignal r27, 0
0005f4  e7092ffe  storeli.w r2, -104(r30)
0005f8  7d800900  xsignal r19, 0
0005fc  5b010000  j 8
000600  e7090ffe  storeli.w zero, -104(r30)
000604  1bb16200  slli r2, r5, 6
000608  0b112218  sub.s r2, r4, r2
00060c  0b116130  div.s r2, r2, r6
000610  33030128  zext_int2long r[7:8], r2
000614  e7082ffe  storeli.w r2, -120(r30)
000618  63016fff  loadli.w r2,  -80(r30)
00061c  17335303  sll.d r[7:8], r[7:8], r21
000620  9b32f100  slli r5, r2, 15
000624  2b010300  lui r2, 48
000628  1733a303  sll.d r[7:8], r[7:8], r26
00062c  0b922210  add.s r4, r5, r2
000630  733c6ff6  store.d r[7:8], -136(r30)
000634  3b416903  bneq r18, r22, 1104
000638  6b518f00  load.d r[3:4], 8(r30)
00063c  7d900a00  xwait r21, 0
000640  0b216110  add.ul r[3:4], r[3:4], r[7:8]
000644  63434fff  loadli.w r6,  -92(r30)
000648  bf846d00  blt.s r27, r6, 288
00064c  9f530000  addli r7, zero, 5
000650  1f230000  addli r6, zero, 2
000654  1d800300  lock zero, r7
000658  15000014  dma_cfg zero, zero, zero, 10
00065c  1500a015  dma_cfg zero, zero, r26, 10
000660  15006014  dma_cfg zero, zero, r6, 10
000664  1f031000  addli r6, zero, 8
000668  1500b015  dma_cfg zero, zero, r27, 10
00066c  15003015  dma_cfg zero, zero, r19, 10
000670  15007014  dma_cfg zero, zero, r7, 10
000674  15006015  dma_cfg zero, zero, r22, 10
000678  15005015  dma_cfg zero, zero, r21, 10
00067c  15006014  dma_cfg zero, zero, r6, 10
000680  1f131000  addli r6, zero, 9
000684  15006014  dma_cfg zero, zero, r6, 10
000688  1f231000  addli r6, zero, 10
00068c  15006014  dma_cfg zero, zero, r6, 10
000690  1f331000  addli r6, zero, 11
000694  15006014  dma_cfg zero, zero, r6, 10
000698  1f431000  addli r6, zero, 12
00069c  15006014  dma_cfg zero, zero, r6, 10
0006a0  1f631000  addli r6, zero, 14
0006a4  15007015  dma_cfg zero, zero, r23, 10
0006a8  15006014  dma_cfg zero, zero, r6, 10
0006ac  1f731000  addli r6, zero, 15
0006b0  15006014  dma_cfg zero, zero, r6, 10
0006b4  1f032000  addli r6, zero, 16
0006b8  15006014  dma_cfg zero, zero, r6, 10
0006bc  1f132000  addli r6, zero, 17
0006c0  15006014  dma_cfg zero, zero, r6, 10
0006c4  1f232000  addli r6, zero, 18
0006c8  15006014  dma_cfg zero, zero, r6, 10
0006cc  1f332000  addli r6, zero, 19
0006d0  15006014  dma_cfg zero, zero, r6, 10
0006d4  1f432000  addli r6, zero, 20
0006d8  15006014  dma_cfg zero, zero, r6, 10
0006dc  1f532000  addli r6, zero, 21
0006e0  15006014  dma_cfg zero, zero, r6, 10
0006e4  1f632000  addli r6, zero, 22
0006e8  15006014  dma_cfg zero, zero, r6, 10
0006ec  1f732000  addli r6, zero, 23
0006f0  15006014  dma_cfg zero, zero, r6, 10
0006f4  1f033000  addli r6, zero, 24
0006f8  15006014  dma_cfg zero, zero, r6, 10
0006fc  1f133000  addli r6, zero, 25
000700  15006014  dma_cfg zero, zero, r6, 10
000704  1f233000  addli r6, zero, 26
000708  15006014  dma_cfg zero, zero, r6, 10
00070c  1f333000  addli r6, zero, 27
000710  15006014  dma_cfg zero, zero, r6, 10
000714  1f433000  addli r6, zero, 28
000718  15006014  dma_cfg zero, zero, r6, 10
00071c  1f533000  addli r6, zero, 29
000720  15006014  dma_cfg zero, zero, r6, 10
000724  1f633000  addli r6, zero, 30
000728  15006014  dma_cfg zero, zero, r6, 10
00072c  1f733000  addli r6, zero, 31
000730  15006014  dma_cfg zero, zero, r6, 10
000734  1f030001  addli r6, zero, 128
000738  150d0d00  dma_cfg r26, r26, zero, 0
00073c  150d0002  dma_cfg r26, zero, zero, 1
000740  15000004  dma_cfg zero, zero, zero, 2
000744  15024007  dma_cfg r4, zero, r20, 3
000748  15033009  dma_cfg r6, zero, r19, 4
00074c  1f030004  addli r6, zero, 512
000750  1503400b  dma_cfg r6, zero, r20, 5
000754  15000010  dma_cfg zero, zero, zero, 8
000758  35000000  dma_run zero
00075c  1500a00b  dma_cfg zero, zero, r26, 5
000760  15000010  dma_cfg zero, zero, zero, 8
000764  1d900300  unlock r7
000768  2b030300  lui r6, 48
00076c  e7490ffe  storeli.w zero, -100(r30)
000770  670a0ffe  storeli.w zero, -96(r30)
000774  9f030004  addli r7, zero, 512
000778  1d800900  lock zero, r19
00077c  1b130304  ori r6, r6, 64
000780  150d0d00  dma_cfg r26, r26, zero, 0
000784  15800104  dma_cfg zero, r3, zero, 2
000788  0b936210  add.s r6, r5, r6
00078c  15034107  dma_cfg r6, r2, r20, 3
000790  1f030001  addli r6, zero, 128
000794  1f010010  addli r2, zero, 2048
000798  9f510000  addli r3, zero, 5
00079c  15033a09  dma_cfg r6, r20, r19, 4
0007a0  9503410b  dma_cfg r7, r2, r20, 5
0007a4  1f210000  addli r2, zero, 2
0007a8  15000010  dma_cfg zero, zero, zero, 8
0007ac  35000000  dma_run zero
0007b0  1500a00b  dma_cfg zero, zero, r26, 5
0007b4  15000010  dma_cfg zero, zero, zero, 8
0007b8  1d900900  unlock r19
0007bc  1d800100  lock zero, r3
0007c0  15000014  dma_cfg zero, zero, zero, 10
0007c4  1500a015  dma_cfg zero, zero, r26, 10
0007c8  15002014  dma_cfg zero, zero, r2, 10
0007cc  1f011000  addli r2, zero, 8
0007d0  1500b015  dma_cfg zero, zero, r27, 10
0007d4  15003015  dma_cfg zero, zero, r19, 10
0007d8  15003014  dma_cfg zero, zero, r3, 10
0007dc  15006015  dma_cfg zero, zero, r22, 10
0007e0  15005015  dma_cfg zero, zero, r21, 10
0007e4  15002014  dma_cfg zero, zero, r2, 10
0007e8  1f111000  addli r2, zero, 9
0007ec  15002014  dma_cfg zero, zero, r2, 10
0007f0  1f211000  addli r2, zero, 10
0007f4  15002014  dma_cfg zero, zero, r2, 10
0007f8  1f311000  addli r2, zero, 11
0007fc  15002014  dma_cfg zero, zero, r2, 10
000800  1f411000  addli r2, zero, 12
000804  15002014  dma_cfg zero, zero, r2, 10
000808  1f611000  addli r2, zero, 14
00080c  15007015  dma_cfg zero, zero, r23, 10
000810  15002014  dma_cfg zero, zero, r2, 10
000814  1f711000  addli r2, zero, 15
000818  15002014  dma_cfg zero, zero, r2, 10
00081c  1f012000  addli r2, zero, 16
000820  15002014  dma_cfg zero, zero, r2, 10
000824  1f112000  addli r2, zero, 17
000828  15002014  dma_cfg zero, zero, r2, 10
00082c  1f212000  addli r2, zero, 18
000830  15002014  dma_cfg zero, zero, r2, 10
000834  1f312000  addli r2, zero, 19
000838  15002014  dma_cfg zero, zero, r2, 10
00083c  1f412000  addli r2, zero, 20
000840  15002014  dma_cfg zero, zero, r2, 10
000844  1f512000  addli r2, zero, 21
000848  15002014  dma_cfg zero, zero, r2, 10
00084c  1f612000  addli r2, zero, 22
000850  15002014  dma_cfg zero, zero, r2, 10
000854  1f712000  addli r2, zero, 23
000858  15002014  dma_cfg zero, zero, r2, 10
00085c  1f013000  addli r2, zero, 24
000860  15002014  dma_cfg zero, zero, r2, 10
000864  1f113000  addli r2, zero, 25
000868  15002014  dma_cfg zero, zero, r2, 10
00086c  1f213000  addli r2, zero, 26
000870  15002014  dma_cfg zero, zero, r2, 10
000874  1f313000  addli r2, zero, 27
000878  15002014  dma_cfg zero, zero, r2, 10
00087c  1f413000  addli r2, zero, 28
000880  15002014  dma_cfg zero, zero, r2, 10
000884  1f513000  addli r2, zero, 29
000888  15002014  dma_cfg zero, zero, r2, 10
00088c  1f613000  addli r2, zero, 30
000890  15002014  dma_cfg zero, zero, r2, 10
000894  1f713000  addli r2, zero, 31
000898  15002014  dma_cfg zero, zero, r2, 10
00089c  150d0d00  dma_cfg r26, r26, zero, 0
0008a0  150d0002  dma_cfg r26, zero, zero, 1
0008a4  15000004  dma_cfg zero, zero, zero, 2
0008a8  15024007  dma_cfg r4, zero, r20, 3
0008ac  15033009  dma_cfg r6, zero, r19, 4
0008b0  9503400b  dma_cfg r7, zero, r20, 5
0008b4  15000010  dma_cfg zero, zero, zero, 8
0008b8  35000000  dma_run zero
0008bc  1500a00b  dma_cfg zero, zero, r26, 5
0008c0  15000010  dma_cfg zero, zero, zero, 8
0008c4  1d900100  unlock r3
0008c8  7d000b00  xsignal r22, 0
0008cc  3b50b901  bneq r18, r27, 20
0008d0  1f211000  addli r2, zero, 10
0008d4  7d100100  xwait r2, 0
0008d8  1f611000  addli r2, zero, 14
0008dc  7d100100  xwait r2, 0
0008e0  2b010700  lui r2, 112
0008e4  3d000000  xfence
0008e8  9f010001  addli r3, zero, 128
0008ec  00a00300  mfence { lm, sm, gm }
0008f0  1b110180  ori r2, r2, 2048
0008f4  338d0128  zext_int2long r[27:28], r3
0008f8  8b9b2210  add.s r23, r5, r2
0008fc  1f71f001  addli r2, zero, 255
000900  80220104  csr_set csr5, r2
000904  1f710000  addli r2, zero, 7
000908  33010128  zext_int2long r[3:4], r2
00090c  733c2ffa  store.d r[3:4], -72(r30)
000910  00e00200  sync_core
000914  3b470900  bneq r18, zero, 464
000918  33010028  zext_int2long r[3:4], zero
00091c  3d000000  xfence
000920  00a00300  mfence { lm, sm, gm }
000924  73382ffe  store.d r[3:4], -16(r30)
000928  a7010100  addli.d r[4:5], r[3:4], 0
00092c  5b030000  j 24
000930  6b518ffb  load.d r[3:4], -72(r30)
000934  6b538fff  load.d r[7:8], -8(r30)
000938  13212304  setlt.ul r2, r[7:8], r[3:4]
00093c  a7110300  addli.d r[4:5], r[7:8], 1
000940  37760100  beq r2, zero, 412
000944  1f710000  addli r2, zero, 7
000948  eb570fff  load.d r[16:17], -16(r30)
00094c  733c3ffe  store.d r[4:5], -8(r30)
000950  17b42102  sll.d r[9:10], r[4:5], r2
000954  db040000  j 36
000958  a7c70700  addli.d r[16:17], r[16:17], 4
00095c  0b912b10  add.s r2, r23, r2
000960  13a2a703  setneq.d r4, r[16:17], r[27:28]
000964  73663101  stores.w r19, 12(r2)
000968  7364a100  stores.w r10, 8(r2)
00096c  73626101  stores.w r22, 4(r2)
000970  73603100  stores.w r3, 0(r2)
000974  b77e02fe  beq r4, zero, -68
000978  0ba18710  add.ul r[3:4], r[16:17], r[9:10]
00097c  1b312100  slli r2, r2, 2
000980  8b912210  add.s r3, r5, r2
000984  6fc9c100  loads.w r18, 12(r3)
000988  6fc60100  loads.w r12, 0(r3)
00098c  6fce4100  loads.w r28, 4(r3)
000990  efca8100  loads.w r21, 8(r3)
000994  170a1901  and r20, r18, r17
000998  93814c05  setlt.u r3, r25, r20
00099c  3bb00100  bneq r3, zero, 12
0009a0  9f090900  addli r19, r18, 0
0009a4  5b010000  j 8
0009a8  97198901  or r19, r18, r24
0009ac  97851a01  and r11, r21, r17
0009b0  9381bc04  setlt.u r3, r25, r11
0009b4  3bb00100  bneq r3, zero, 12
0009b8  1f850a00  addli r10, r21, 0
0009bc  5b010000  j 8
0009c0  17958a01  or r10, r21, r24
0009c4  17021e01  and r4, r28, r17
0009c8  93814c04  setlt.u r3, r25, r4
0009cc  3bb00100  bneq r3, zero, 12
0009d0  1f0b0e00  addli r22, r28, 0
0009d4  5b010000  j 8
0009d8  171b8e01  or r22, r28, r24
0009dc  17031601  and r6, r12, r17
0009e0  93816c04  setlt.u r3, r25, r6
0009e4  3bd00100  bneq r3, zero, 20
0009e8  9f010600  addli r3, r12, 0
0009ec  13036704  setlt.u r6, r14, r6
0009f0  37500300  beq r6, zero, 20
0009f4  db040000  j 36
0009f8  97118601  or r3, r12, r24
0009fc  13036704  setlt.u r6, r14, r6
000a00  3b600300  bneq r6, zero, 24
000a04  9b410601  srli r3, r12, 16
000a08  9b811100  andi r3, r3, 1
000a0c  8b113610  add.s r3, r12, r3
000a10  8b91d110  add.s r3, r3, r13
000a14  97811100  and r3, r3, r1
000a18  13024704  setlt.u r4, r14, r4
000a1c  bb300200  bneq r4, zero, 44
000a20  1b420e01  srli r4, r28, 16
000a24  1b021200  andi r4, r4, 1
000a28  0b124e10  add.s r4, r28, r4
000a2c  0b12d210  add.s r4, r4, r13
000a30  170b1200  and r22, r4, r1
000a34  1302b704  setlt.u r4, r14, r11
000a38  37600200  beq r4, zero, 24
000a3c  13024705  setlt.u r4, r14, r20
000a40  3b6c02fe  bneq r4, zero, -232
000a44  5b050000  j 40
000a48  1302b704  setlt.u r4, r14, r11
000a4c  bb4f02fe  bneq r4, zero, -16
000a50  1bc20a01  srli r4, r21, 16
000a54  1b021200  andi r4, r4, 1
000a58  0b924a10  add.s r4, r21, r4
000a5c  0b12d210  add.s r4, r4, r13
000a60  17051200  and r10, r4, r1
000a64  13024705  setlt.u r4, r14, r20
000a68  bb4b02fe  bneq r4, zero, -272
000a6c  1b420901  srli r4, r18, 16
000a70  1b021200  andi r4, r4, 1
000a74  0b124910  add.s r4, r18, r4
000a78  0b12d210  add.s r4, r4, r13
000a7c  97091200  and r19, r4, r1
000a80  5bdbffff  j -296
000a84  b730390f  beq r18, r19, 7212
000a88  bb22590f  bneq r18, r21, 7336
000a8c  1f111000  addli r2, zero, 9
000a90  e7490ffe  storeli.w zero, -100(r30)
000a94  7d100b00  xwait r22, 0
000a98  7d100100  xwait r2, 0
000a9c  1f210000  addli r2, zero, 2
000aa0  1d000000  lock zero, zero
000aa4  01010000  ds_cfg r2, zero, 0
000aa8  1f010001  addli r2, zero, 128
000aac  01010002  ds_cfg r2, zero, 1
000ab0  010a001c  ds_cfg r20, zero, 14
000ab4  0101001a  ds_cfg r2, zero, 13
000ab8  1f110000  addli r2, zero, 1
000abc  c1024205  shuffle_coa r5, r4, r20, 2
000ac0  1d100000  unlock zero
000ac4  7d800a00  xsignal r21, 0
000ac8  670a2ffe  storeli.w r2, -96(r30)
000acc  1f011000  addli r2, zero, 8
000ad0  7d000100  xsignal r2, 0
000ad4  3b38b9ff  bneq r18, r27, -500
000ad8  5bbfffff  j -520
000adc  00390002  core_id r18
000ae0  00200100  mfence { sm }
000ae4  1f711000  addli r2, zero, 15
000ae8  33010128  zext_int2long r[3:4], r2
000aec  733c2ffe  store.d r[3:4], -8(r30)
000af0  1f110000  addli r2, zero, 1
000af4  bb552900  bneq r18, r2, 372
000af8  1f011000  addli r2, zero, 8
000afc  3d000000  xfence
000b00  00a00300  mfence { lm, sm, gm }
000b04  b3010128  zext_int2long r[4:5], r2
000b08  5b030000  j 24
000b0c  6b518fff  load.d r[3:4], -8(r30)
000b10  6b530fff  load.d r[7:8], -16(r30)
000b14  13212304  setlt.ul r2, r[7:8], r[3:4]
000b18  a7110300  addli.d r[4:5], r[7:8], 1
000b1c  37150100  beq r2, zero, 324
000b20  1f710000  addli r2, zero, 7
000b24  33040028  zext_int2long r[9:10], zero
000b28  73383ffe  store.d r[4:5], -16(r30)
000b2c  17b32102  sll.d r[7:8], r[4:5], r2
000b30  db040000  j 36
000b34  27440400  addli.d r[9:10], r[9:10], 4
000b38  0b912b10  add.s r2, r23, r2
000b3c  9321a403  setneq.d r3, r[9:10], r[27:28]
000b40  73660101  stores.w r16, 12(r2)
000b44  7364a100  stores.w r10, 8(r2)
000b48  73624101  stores.w r20, 4(r2)
000b4c  7360c100  stores.w r12, 0(r2)
000b50  b7fe01fe  beq r3, zero, -68
000b54  0b216410  add.ul r[3:4], r[9:10], r[7:8]
000b58  1b312100  slli r2, r2, 2
000b5c  8b912210  add.s r3, r5, r2
000b60  efc7c100  loads.w r15, 12(r3)
000b64  6fcb0100  loads.w r22, 0(r3)
000b68  efca4100  loads.w r21, 4(r3)
000b6c  efc98100  loads.w r19, 8(r3)
000b70  17891701  and r18, r15, r17
000b74  93812c05  setlt.u r3, r25, r18
000b78  3bb00100  bneq r3, zero, 12
000b7c  1f880700  addli r16, r15, 0
000b80  5b010000  j 8
000b84  17988701  or r16, r15, r24
000b88  97851901  and r11, r19, r17
000b8c  9381bc04  setlt.u r3, r25, r11
000b90  3bb00100  bneq r3, zero, 12
000b94  1f850900  addli r10, r19, 0
000b98  5b010000  j 8
000b9c  17958901  or r10, r19, r24
000ba0  178e1a01  and r28, r21, r17
000ba4  9381cc05  setlt.u r3, r25, r28
000ba8  3bb00100  bneq r3, zero, 12
000bac  1f8a0a00  addli r20, r21, 0
000bb0  5b010000  j 8
000bb4  179a8a01  or r20, r21, r24
000bb8  97011b01  and r3, r22, r17
000bbc  13823c04  setlt.u r4, r25, r3
000bc0  3b500200  bneq r4, zero, 20
000bc4  1f060b00  addli r12, r22, 0
000bc8  93013704  setlt.u r3, r14, r3
000bcc  37d00100  beq r3, zero, 20
000bd0  db040000  j 36
000bd4  17168b01  or r12, r22, r24
000bd8  93013704  setlt.u r3, r14, r3
000bdc  3be00100  bneq r3, zero, 24
000be0  9b410b01  srli r3, r22, 16
000be4  9b811100  andi r3, r3, 1
000be8  8b113b10  add.s r3, r22, r3
000bec  8b91d110  add.s r3, r3, r13
000bf0  17861100  and r12, r3, r1
000bf4  9301c705  setlt.u r3, r14, r28
000bf8  bbb00100  bneq r3, zero, 44
000bfc  9bc10a01  srli r3, r21, 16
000c00  9b811100  andi r3, r3, 1
000c04  8b913a10  add.s r3, r21, r3
000c08  8b91d110  add.s r3, r3, r13
000c0c  178a1100  and r20, r3, r1
000c10  9301b704  setlt.u r3, r14, r11
000c14  37e00100  beq r3, zero, 24
000c18  93012705  setlt.u r3, r14, r18
000c1c  3bec01fe  bneq r3, zero, -232
000c20  5b050000  j 40
000c24  9301b704  setlt.u r3, r14, r11
000c28  bbcf01fe  bneq r3, zero, -16
000c2c  9bc10901  srli r3, r19, 16
000c30  9b811100  andi r3, r3, 1
000c34  8b913910  add.s r3, r19, r3
000c38  8b91d110  add.s r3, r3, r13
000c3c  17851100  and r10, r3, r1
000c40  93012705  setlt.u r3, r14, r18
000c44  bbcb01fe  bneq r3, zero, -272
000c48  9bc10701  srli r3, r15, 16
000c4c  9b811100  andi r3, r3, 1
000c50  8b913710  add.s r3, r15, r3
000c54  8b91d110  add.s r3, r3, r13
000c58  17881100  and r16, r3, r1
000c5c  5bdbffff  j -296
000c60  00390002  core_id r18
000c64  00200100  mfence { sm }
000c68  1f712000  addli r2, zero, 23
000c6c  33010128  zext_int2long r[3:4], r2
000c70  73382ffe  store.d r[3:4], -16(r30)
000c74  63013fff  loadli.w r2,  -104(r30)
000c78  b7550100  beq r2, zero, 372
000c7c  1f012000  addli r2, zero, 16
000c80  3d000000  xfence
000c84  00a00300  mfence { lm, sm, gm }
000c88  b3010128  zext_int2long r[4:5], r2
000c8c  5b030000  j 24
000c90  6b510fff  load.d r[3:4], -16(r30)
000c94  6b538ffe  load.d r[7:8], -24(r30)
000c98  13212304  setlt.ul r2, r[7:8], r[3:4]
000c9c  a7110300  addli.d r[4:5], r[7:8], 1
000ca0  37150100  beq r2, zero, 324
000ca4  1f710000  addli r2, zero, 7
000ca8  33040028  zext_int2long r[9:10], zero
000cac  73343ffe  store.d r[4:5], -24(r30)
000cb0  17b32102  sll.d r[7:8], r[4:5], r2
000cb4  db040000  j 36
000cb8  27440400  addli.d r[9:10], r[9:10], 4
000cbc  0b912b10  add.s r2, r23, r2
000cc0  9321a403  setneq.d r3, r[9:10], r[27:28]
000cc4  73660101  stores.w r16, 12(r2)
000cc8  7364a100  stores.w r10, 8(r2)
000ccc  73624101  stores.w r20, 4(r2)
000cd0  7360c100  stores.w r12, 0(r2)
000cd4  b7fe01fe  beq r3, zero, -68
000cd8  0b216410  add.ul r[3:4], r[9:10], r[7:8]
000cdc  1b312100  slli r2, r2, 2
000ce0  8b912210  add.s r3, r5, r2
000ce4  efc7c100  loads.w r15, 12(r3)
000ce8  6fcb0100  loads.w r22, 0(r3)
000cec  efca4100  loads.w r21, 4(r3)
000cf0  efc98100  loads.w r19, 8(r3)
000cf4  17891701  and r18, r15, r17
000cf8  93812c05  setlt.u r3, r25, r18
000cfc  3bb00100  bneq r3, zero, 12
000d00  1f880700  addli r16, r15, 0
000d04  5b010000  j 8
000d08  17988701  or r16, r15, r24
000d0c  97851901  and r11, r19, r17
000d10  9381bc04  setlt.u r3, r25, r11
000d14  3bb00100  bneq r3, zero, 12
000d18  1f850900  addli r10, r19, 0
000d1c  5b010000  j 8
000d20  17958901  or r10, r19, r24
000d24  178e1a01  and r28, r21, r17
000d28  9381cc05  setlt.u r3, r25, r28
000d2c  3bb00100  bneq r3, zero, 12
000d30  1f8a0a00  addli r20, r21, 0
000d34  5b010000  j 8
000d38  179a8a01  or r20, r21, r24
000d3c  97011b01  and r3, r22, r17
000d40  13823c04  setlt.u r4, r25, r3
000d44  3b500200  bneq r4, zero, 20
000d48  1f060b00  addli r12, r22, 0
000d4c  93013704  setlt.u r3, r14, r3
000d50  37d00100  beq r3, zero, 20
000d54  db040000  j 36
000d58  17168b01  or r12, r22, r24
000d5c  93013704  setlt.u r3, r14, r3
000d60  3be00100  bneq r3, zero, 24
000d64  9b410b01  srli r3, r22, 16
000d68  9b811100  andi r3, r3, 1
000d6c  8b113b10  add.s r3, r22, r3
000d70  8b91d110  add.s r3, r3, r13
000d74  17861100  and r12, r3, r1
000d78  9301c705  setlt.u r3, r14, r28
000d7c  bbb00100  bneq r3, zero, 44
000d80  9bc10a01  srli r3, r21, 16
000d84  9b811100  andi r3, r3, 1
000d88  8b913a10  add.s r3, r21, r3
000d8c  8b91d110  add.s r3, r3, r13
000d90  178a1100  and r20, r3, r1
000d94  9301b704  setlt.u r3, r14, r11
000d98  37e00100  beq r3, zero, 24
000d9c  93012705  setlt.u r3, r14, r18
000da0  3bec01fe  bneq r3, zero, -232
000da4  5b050000  j 40
000da8  9301b704  setlt.u r3, r14, r11
000dac  bbcf01fe  bneq r3, zero, -16
000db0  9bc10901  srli r3, r19, 16
000db4  9b811100  andi r3, r3, 1
000db8  8b913910  add.s r3, r19, r3
000dbc  8b91d110  add.s r3, r3, r13
000dc0  17851100  and r10, r3, r1
000dc4  93012705  setlt.u r3, r14, r18
000dc8  bbcb01fe  bneq r3, zero, -272
000dcc  9bc10701  srli r3, r15, 16
000dd0  9b811100  andi r3, r3, 1
000dd4  8b913710  add.s r3, r15, r3
000dd8  8b91d110  add.s r3, r3, r13
000ddc  17881100  and r16, r3, r1
000de0  5bdbffff  j -296
000de4  00390002  core_id r18
000de8  00200100  mfence { sm }
000dec  1f713000  addli r2, zero, 31
000df0  33010128  zext_int2long r[3:4], r2
000df4  73342ffe  store.d r[3:4], -24(r30)
000df8  1f310000  addli r2, zero, 3
000dfc  bb552900  bneq r18, r2, 372
000e00  1f013000  addli r2, zero, 24
000e04  3d000000  xfence
000e08  00a00300  mfence { lm, sm, gm }
000e0c  b3010128  zext_int2long r[4:5], r2
000e10  5b030000  j 24
000e14  6b518ffe  load.d r[3:4], -24(r30)
000e18  6b530ffe  load.d r[7:8], -32(r30)
000e1c  13212304  setlt.ul r2, r[7:8], r[3:4]
000e20  a7110300  addli.d r[4:5], r[7:8], 1
000e24  37150100  beq r2, zero, 324
000e28  1f710000  addli r2, zero, 7
000e2c  33040028  zext_int2long r[9:10], zero
000e30  73303ffe  store.d r[4:5], -32(r30)
000e34  17b32102  sll.d r[7:8], r[4:5], r2
000e38  db040000  j 36
000e3c  27440400  addli.d r[9:10], r[9:10], 4
000e40  0b912b10  add.s r2, r23, r2
000e44  9321a403  setneq.d r3, r[9:10], r[27:28]
000e48  73660101  stores.w r16, 12(r2)
000e4c  7364a100  stores.w r10, 8(r2)
000e50  73624101  stores.w r20, 4(r2)
000e54  7360c100  stores.w r12, 0(r2)
000e58  b7fe01fe  beq r3, zero, -68
000e5c  0b216410  add.ul r[3:4], r[9:10], r[7:8]
000e60  1b312100  slli r2, r2, 2
000e64  8b912210  add.s r3, r5, r2
000e68  efc7c100  loads.w r15, 12(r3)
000e6c  6fcb0100  loads.w r22, 0(r3)
000e70  efca4100  loads.w r21, 4(r3)
000e74  efc98100  loads.w r19, 8(r3)
000e78  17891701  and r18, r15, r17
000e7c  93812c05  setlt.u r3, r25, r18
000e80  3bb00100  bneq r3, zero, 12
000e84  1f880700  addli r16, r15, 0
000e88  5b010000  j 8
000e8c  17988701  or r16, r15, r24
000e90  97851901  and r11, r19, r17
000e94  9381bc04  setlt.u r3, r25, r11
000e98  3bb00100  bneq r3, zero, 12
000e9c  1f850900  addli r10, r19, 0
000ea0  5b010000  j 8
000ea4  17958901  or r10, r19, r24
000ea8  178e1a01  and r28, r21, r17
000eac  9381cc05  setlt.u r3, r25, r28
000eb0  3bb00100  bneq r3, zero, 12
000eb4  1f8a0a00  addli r20, r21, 0
000eb8  5b010000  j 8
000ebc  179a8a01  or r20, r21, r24
000ec0  97011b01  and r3, r22, r17
000ec4  13823c04  setlt.u r4, r25, r3
000ec8  3b500200  bneq r4, zero, 20
000ecc  1f060b00  addli r12, r22, 0
000ed0  93013704  setlt.u r3, r14, r3
000ed4  37d00100  beq r3, zero, 20
000ed8  db040000  j 36
000edc  17168b01  or r12, r22, r24
000ee0  93013704  setlt.u r3, r14, r3
000ee4  3be00100  bneq r3, zero, 24
000ee8  9b410b01  srli r3, r22, 16
000eec  9b811100  andi r3, r3, 1
000ef0  8b113b10  add.s r3, r22, r3
000ef4  8b91d110  add.s r3, r3, r13
000ef8  17861100  and r12, r3, r1
000efc  9301c705  setlt.u r3, r14, r28
000f00  bbb00100  bneq r3, zero, 44
000f04  9bc10a01  srli r3, r21, 16
000f08  9b811100  andi r3, r3, 1
000f0c  8b913a10  add.s r3, r21, r3
000f10  8b91d110  add.s r3, r3, r13
000f14  178a1100  and r20, r3, r1
000f18  9301b704  setlt.u r3, r14, r11
000f1c  37e00100  beq r3, zero, 24
000f20  93012705  setlt.u r3, r14, r18
000f24  3bec01fe  bneq r3, zero, -232
000f28  5b050000  j 40
000f2c  9301b704  setlt.u r3, r14, r11
000f30  bbcf01fe  bneq r3, zero, -16
000f34  9bc10901  srli r3, r19, 16
000f38  9b811100  andi r3, r3, 1
000f3c  8b913910  add.s r3, r19, r3
000f40  8b91d110  add.s r3, r3, r13
000f44  17851100  and r10, r3, r1
000f48  93012705  setlt.u r3, r14, r18
000f4c  bbcb01fe  bneq r3, zero, -272
000f50  9bc10701  srli r3, r15, 16
000f54  9b811100  andi r3, r3, 1
000f58  8b913710  add.s r3, r15, r3
000f5c  8b91d110  add.s r3, r3, r13
000f60  17881100  and r16, r3, r1
000f64  5bdbffff  j -296
000f68  00390002  core_id r18
000f6c  00200100  mfence { sm }
000f70  1f714000  addli r2, zero, 39
000f74  33010128  zext_int2long r[3:4], r2
000f78  73302ffe  store.d r[3:4], -32(r30)
000f7c  63413fff  loadli.w r2,  -100(r30)
000f80  b7550100  beq r2, zero, 372
000f84  1f014000  addli r2, zero, 32
000f88  3d000000  xfence
000f8c  00a00300  mfence { lm, sm, gm }
000f90  b3010128  zext_int2long r[4:5], r2
000f94  5b030000  j 24
000f98  6b510ffe  load.d r[3:4], -32(r30)
000f9c  6b538ffd  load.d r[7:8], -40(r30)
000fa0  13212304  setlt.ul r2, r[7:8], r[3:4]
000fa4  a7110300  addli.d r[4:5], r[7:8], 1
000fa8  37150100  beq r2, zero, 324
000fac  1f710000  addli r2, zero, 7
000fb0  33030028  zext_int2long r[7:8], zero
000fb4  733c3ffc  store.d r[4:5], -40(r30)
000fb8  17b42102  sll.d r[9:10], r[4:5], r2
000fbc  db040000  j 36
000fc0  27430300  addli.d r[7:8], r[7:8], 4
000fc4  0b912b10  add.s r2, r23, r2
000fc8  9321a303  setneq.d r3, r[7:8], r[27:28]
000fcc  73660101  stores.w r16, 12(r2)
000fd0  7364a100  stores.w r10, 8(r2)
000fd4  73624101  stores.w r20, 4(r2)
000fd8  7360c100  stores.w r12, 0(r2)
000fdc  b7fe01fe  beq r3, zero, -68
000fe0  0b218310  add.ul r[3:4], r[7:8], r[9:10]
000fe4  1b312100  slli r2, r2, 2
000fe8  8b912210  add.s r3, r5, r2
000fec  efc7c100  loads.w r15, 12(r3)
000ff0  6fcb0100  loads.w r22, 0(r3)
000ff4  efca4100  loads.w r21, 4(r3)
000ff8  efc98100  loads.w r19, 8(r3)
000ffc  17891701  and r18, r15, r17
001000  93812c05  setlt.u r3, r25, r18
001004  3bb00100  bneq r3, zero, 12
001008  1f880700  addli r16, r15, 0
00100c  5b010000  j 8
001010  17988701  or r16, r15, r24
001014  97851901  and r11, r19, r17
001018  9381bc04  setlt.u r3, r25, r11
00101c  3bb00100  bneq r3, zero, 12
001020  1f850900  addli r10, r19, 0
001024  5b010000  j 8
001028  17958901  or r10, r19, r24
00102c  178e1a01  and r28, r21, r17
001030  9381cc05  setlt.u r3, r25, r28
001034  3bb00100  bneq r3, zero, 12
001038  1f8a0a00  addli r20, r21, 0
00103c  5b010000  j 8
001040  179a8a01  or r20, r21, r24
001044  97011b01  and r3, r22, r17
001048  13823c04  setlt.u r4, r25, r3
00104c  3b500200  bneq r4, zero, 20
001050  1f060b00  addli r12, r22, 0
001054  93013704  setlt.u r3, r14, r3
001058  37d00100  beq r3, zero, 20
00105c  db040000  j 36
001060  17168b01  or r12, r22, r24
001064  93013704  setlt.u r3, r14, r3
001068  3be00100  bneq r3, zero, 24
00106c  9b410b01  srli r3, r22, 16
001070  9b811100  andi r3, r3, 1
001074  8b113b10  add.s r3, r22, r3
001078  8b91d110  add.s r3, r3, r13
00107c  17861100  and r12, r3, r1
001080  9301c705  setlt.u r3, r14, r28
001084  bbb00100  bneq r3, zero, 44
001088  9bc10a01  srli r3, r21, 16
00108c  9b811100  andi r3, r3, 1
001090  8b913a10  add.s r3, r21, r3
001094  8b91d110  add.s r3, r3, r13
001098  178a1100  and r20, r3, r1
00109c  9301b704  setlt.u r3, r14, r11
0010a0  37e00100  beq r3, zero, 24
0010a4  93012705  setlt.u r3, r14, r18
0010a8  3bec01fe  bneq r3, zero, -232
0010ac  5b050000  j 40
0010b0  9301b704  setlt.u r3, r14, r11
0010b4  bbcf01fe  bneq r3, zero, -16
0010b8  9bc10901  srli r3, r19, 16
0010bc  9b811100  andi r3, r3, 1
0010c0  8b913910  add.s r3, r19, r3
0010c4  8b91d110  add.s r3, r3, r13
0010c8  17851100  and r10, r3, r1
0010cc  93012705  setlt.u r3, r14, r18
0010d0  bbcb01fe  bneq r3, zero, -272
0010d4  9bc10701  srli r3, r15, 16
0010d8  9b811100  andi r3, r3, 1
0010dc  8b913710  add.s r3, r15, r3
0010e0  8b91d110  add.s r3, r3, r13
0010e4  17881100  and r16, r3, r1
0010e8  5bdbffff  j -296
0010ec  00390002  core_id r18
0010f0  00200100  mfence { sm }
0010f4  1f715000  addli r2, zero, 47
0010f8  33010128  zext_int2long r[3:4], r2
0010fc  733c2ffc  store.d r[3:4], -40(r30)
001100  1f510000  addli r2, zero, 5
001104  bb552900  bneq r18, r2, 372
001108  1f015000  addli r2, zero, 40
00110c  3d000000  xfence
001110  00a00300  mfence { lm, sm, gm }
001114  b3010128  zext_int2long r[4:5], r2
001118  5b030000  j 24
00111c  6b518ffd  load.d r[3:4], -40(r30)
001120  6b530ffd  load.d r[7:8], -48(r30)
001124  13212304  setlt.ul r2, r[7:8], r[3:4]
001128  a7110300  addli.d r[4:5], r[7:8], 1
00112c  37150100  beq r2, zero, 324
001130  1f710000  addli r2, zero, 7
001134  33030028  zext_int2long r[7:8], zero
001138  73383ffc  store.d r[4:5], -48(r30)
00113c  97b72102  sll.d r[16:17], r[4:5], r2
001140  db040000  j 36
001144  27430300  addli.d r[7:8], r[7:8], 4
001148  0b912b10  add.s r2, r23, r2
00114c  9321a303  setneq.d r3, r[7:8], r[27:28]
001150  73664100  stores.w r4, 12(r2)
001154  7364a100  stores.w r10, 8(r2)
001158  73624101  stores.w r20, 4(r2)
00115c  7360c100  stores.w r12, 0(r2)
001160  b7fe01fe  beq r3, zero, -68
001164  0b21f310  add.ul r[3:4], r[7:8], r[16:17]
001168  1b312100  slli r2, r2, 2
00116c  0b922210  add.s r4, r5, r2
001170  ef41c200  loads.w r3, 12(r4)
001174  6f4b0200  loads.w r22, 0(r4)
001178  ef4a4200  loads.w r21, 4(r4)
00117c  ef498200  loads.w r19, 8(r4)
001180  17891101  and r18, r3, r17
001184  13822c05  setlt.u r4, r25, r18
001188  3b300200  bneq r4, zero, 12
00118c  1f820100  addli r4, r3, 0
001190  5b010000  j 8
001194  17928101  or r4, r3, r24
001198  97851901  and r11, r19, r17
00119c  1384bc04  setlt.u r8, r25, r11
0011a0  3b300400  bneq r8, zero, 12
0011a4  1f850900  addli r10, r19, 0
0011a8  5b010000  j 8
0011ac  17958901  or r10, r19, r24
0011b0  178e1a01  and r28, r21, r17
0011b4  1384cc05  setlt.u r8, r25, r28
0011b8  3b300400  bneq r8, zero, 12
0011bc  1f8a0a00  addli r20, r21, 0
0011c0  5b010000  j 8
0011c4  179a8a01  or r20, r21, r24
0011c8  17041b01  and r8, r22, r17
0011cc  93848c04  setlt.u r9, r25, r8
0011d0  3bd00400  bneq r9, zero, 20
0011d4  1f060b00  addli r12, r22, 0
0011d8  13048704  setlt.u r8, r14, r8
0011dc  37500400  beq r8, zero, 20
0011e0  db040000  j 36
0011e4  17168b01  or r12, r22, r24
0011e8  13048704  setlt.u r8, r14, r8
0011ec  3b600400  bneq r8, zero, 24
0011f0  1b440b01  srli r8, r22, 16
0011f4  1b041400  andi r8, r8, 1
0011f8  0b148b10  add.s r8, r22, r8
0011fc  0b14d410  add.s r8, r8, r13
001200  17061400  and r12, r8, r1
001204  1304c705  setlt.u r8, r14, r28
001208  bb300400  bneq r8, zero, 44
00120c  1bc40a01  srli r8, r21, 16
001210  1b041400  andi r8, r8, 1
001214  0b948a10  add.s r8, r21, r8
001218  0b14d410  add.s r8, r8, r13
00121c  170a1400  and r20, r8, r1
001220  1304b704  setlt.u r8, r14, r11
001224  37600400  beq r8, zero, 24
001228  13042705  setlt.u r8, r14, r18
00122c  3b6c04fe  bneq r8, zero, -232
001230  5b050000  j 40
001234  1304b704  setlt.u r8, r14, r11
001238  bb4f04fe  bneq r8, zero, -16
00123c  1bc40901  srli r8, r19, 16
001240  1b041400  andi r8, r8, 1
001244  0b948910  add.s r8, r19, r8
001248  0b14d410  add.s r8, r8, r13
00124c  17051400  and r10, r8, r1
001250  13042705  setlt.u r8, r14, r18
001254  bb4b04fe  bneq r8, zero, -272
001258  1bc20101  srli r4, r3, 16
00125c  1b021200  andi r4, r4, 1
001260  8b914110  add.s r3, r3, r4
001264  8b91d110  add.s r3, r3, r13
001268  17821100  and r4, r3, r1
00126c  5bdbffff  j -296
001270  00390002  core_id r18
001274  00200100  mfence { sm }
001278  1f716000  addli r2, zero, 55
00127c  33010128  zext_int2long r[3:4], r2
001280  73382ffc  store.d r[3:4], -48(r30)
001284  1f610000  addli r2, zero, 6
001288  bb552900  bneq r18, r2, 372
00128c  1f016000  addli r2, zero, 48
001290  3d000000  xfence
001294  00a00300  mfence { lm, sm, gm }
001298  b3010128  zext_int2long r[4:5], r2
00129c  5b030000  j 24
0012a0  6b510ffd  load.d r[3:4], -48(r30)
0012a4  6b538ffc  load.d r[7:8], -56(r30)
0012a8  13212304  setlt.ul r2, r[7:8], r[3:4]
0012ac  a7110300  addli.d r[4:5], r[7:8], 1
0012b0  37150100  beq r2, zero, 324
0012b4  1f710000  addli r2, zero, 7
0012b8  33030028  zext_int2long r[7:8], zero
0012bc  73343ffc  store.d r[4:5], -56(r30)
0012c0  97b72102  sll.d r[16:17], r[4:5], r2
0012c4  db040000  j 36
0012c8  27430300  addli.d r[7:8], r[7:8], 4
0012cc  0b912b10  add.s r2, r23, r2
0012d0  9321a303  setneq.d r3, r[7:8], r[27:28]
0012d4  73664100  stores.w r4, 12(r2)
0012d8  7364a100  stores.w r10, 8(r2)
0012dc  73624101  stores.w r20, 4(r2)
0012e0  7360c100  stores.w r12, 0(r2)
0012e4  b7fe01fe  beq r3, zero, -68
0012e8  0b21f310  add.ul r[3:4], r[7:8], r[16:17]
0012ec  1b312100  slli r2, r2, 2
0012f0  0b922210  add.s r4, r5, r2
0012f4  ef41c200  loads.w r3, 12(r4)
0012f8  6f4b0200  loads.w r22, 0(r4)
0012fc  ef4a4200  loads.w r21, 4(r4)
001300  ef498200  loads.w r19, 8(r4)
001304  17891101  and r18, r3, r17
001308  13822c05  setlt.u r4, r25, r18
00130c  3b300200  bneq r4, zero, 12
001310  1f820100  addli r4, r3, 0
001314  5b010000  j 8
001318  17928101  or r4, r3, r24
00131c  97851901  and r11, r19, r17
001320  1384bc04  setlt.u r8, r25, r11
001324  3b300400  bneq r8, zero, 12
001328  1f850900  addli r10, r19, 0
00132c  5b010000  j 8
001330  17958901  or r10, r19, r24
001334  178e1a01  and r28, r21, r17
001338  1384cc05  setlt.u r8, r25, r28
00133c  3b300400  bneq r8, zero, 12
001340  1f8a0a00  addli r20, r21, 0
001344  5b010000  j 8
001348  179a8a01  or r20, r21, r24
00134c  17041b01  and r8, r22, r17
001350  93848c04  setlt.u r9, r25, r8
001354  3bd00400  bneq r9, zero, 20
001358  1f060b00  addli r12, r22, 0
00135c  13048704  setlt.u r8, r14, r8
001360  37500400  beq r8, zero, 20
001364  db040000  j 36
001368  17168b01  or r12, r22, r24
00136c  13048704  setlt.u r8, r14, r8
001370  3b600400  bneq r8, zero, 24
001374  1b440b01  srli r8, r22, 16
001378  1b041400  andi r8, r8, 1
00137c  0b148b10  add.s r8, r22, r8
001380  0b14d410  add.s r8, r8, r13
001384  17061400  and r12, r8, r1
001388  1304c705  setlt.u r8, r14, r28
00138c  bb300400  bneq r8, zero, 44
001390  1bc40a01  srli r8, r21, 16
001394  1b041400  andi r8, r8, 1
001398  0b948a10  add.s r8, r21, r8
00139c  0b14d410  add.s r8, r8, r13
0013a0  170a1400  and r20, r8, r1
0013a4  1304b704  setlt.u r8, r14, r11
0013a8  37600400  beq r8, zero, 24
0013ac  13042705  setlt.u r8, r14, r18
0013b0  3b6c04fe  bneq r8, zero, -232
0013b4  5b050000  j 40
0013b8  1304b704  setlt.u r8, r14, r11
0013bc  bb4f04fe  bneq r8, zero, -16
0013c0  1bc40901  srli r8, r19, 16
0013c4  1b041400  andi r8, r8, 1
0013c8  0b948910  add.s r8, r19, r8
0013cc  0b14d410  add.s r8, r8, r13
0013d0  17051400  and r10, r8, r1
0013d4  13042705  setlt.u r8, r14, r18
0013d8  bb4b04fe  bneq r8, zero, -272
0013dc  1bc20101  srli r4, r3, 16
0013e0  1b021200  andi r4, r4, 1
0013e4  8b914110  add.s r3, r3, r4
0013e8  8b91d110  add.s r3, r3, r13
0013ec  17821100  and r4, r3, r1
0013f0  5bdbffff  j -296
0013f4  00390002  core_id r18
0013f8  00200100  mfence { sm }
0013fc  1f717000  addli r2, zero, 63
001400  33010128  zext_int2long r[3:4], r2
001404  73342ffc  store.d r[3:4], -56(r30)
001408  63014fff  loadli.w r2,  -96(r30)
00140c  b7550100  beq r2, zero, 372
001410  1f017000  addli r2, zero, 56
001414  3d000000  xfence
001418  00a00300  mfence { lm, sm, gm }
00141c  b3010128  zext_int2long r[4:5], r2
001420  5b030000  j 24
001424  6b518ffc  load.d r[3:4], -56(r30)
001428  6b530ffc  load.d r[7:8], -64(r30)
00142c  13212304  setlt.ul r2, r[7:8], r[3:4]
001430  a7110300  addli.d r[4:5], r[7:8], 1
001434  37150100  beq r2, zero, 324
001438  1f710000  addli r2, zero, 7
00143c  33030028  zext_int2long r[7:8], zero
001440  73303ffc  store.d r[4:5], -64(r30)
001444  17b92102  sll.d r[19:20], r[4:5], r2
001448  db040000  j 36
00144c  27430300  addli.d r[7:8], r[7:8], 4
001450  0b912b10  add.s r2, r23, r2
001454  9321a303  setneq.d r3, r[7:8], r[27:28]
001458  73664100  stores.w r4, 12(r2)
00145c  7364a100  stores.w r10, 8(r2)
001460  73625101  stores.w r21, 4(r2)
001464  7360c100  stores.w r12, 0(r2)
001468  b7fe01fe  beq r3, zero, -68
00146c  0b212311  add.ul r[3:4], r[7:8], r[19:20]
001470  1b312100  slli r2, r2, 2
001474  0b922210  add.s r4, r5, r2
001478  ef41c200  loads.w r3, 12(r4)
00147c  6f480200  loads.w r16, 0(r4)
001480  ef474200  loads.w r15, 4(r4)
001484  6f4a8200  loads.w r20, 8(r4)
001488  178b1101  and r22, r3, r17
00148c  13826c05  setlt.u r4, r25, r22
001490  3b300200  bneq r4, zero, 12
001494  1f820100  addli r4, r3, 0
001498  5b010000  j 8
00149c  17928101  or r4, r3, r24
0014a0  97051a01  and r11, r20, r17
0014a4  1384bc04  setlt.u r8, r25, r11
0014a8  3b300400  bneq r8, zero, 12
0014ac  1f050a00  addli r10, r20, 0
0014b0  5b010000  j 8
0014b4  17158a01  or r10, r20, r24
0014b8  178e1701  and r28, r15, r17
0014bc  1384cc05  setlt.u r8, r25, r28
0014c0  3b300400  bneq r8, zero, 12
0014c4  9f8a0700  addli r21, r15, 0
0014c8  5b010000  j 8
0014cc  979a8701  or r21, r15, r24
0014d0  17041801  and r8, r16, r17
0014d4  93848c04  setlt.u r9, r25, r8
0014d8  3bd00400  bneq r9, zero, 20
0014dc  1f060800  addli r12, r16, 0
0014e0  13048704  setlt.u r8, r14, r8
0014e4  37500400  beq r8, zero, 20
0014e8  db040000  j 36
0014ec  17168801  or r12, r16, r24
0014f0  13048704  setlt.u r8, r14, r8
0014f4  3b600400  bneq r8, zero, 24
0014f8  1b440801  srli r8, r16, 16
0014fc  1b041400  andi r8, r8, 1
001500  0b148810  add.s r8, r16, r8
001504  0b14d410  add.s r8, r8, r13
001508  17061400  and r12, r8, r1
00150c  1304c705  setlt.u r8, r14, r28
001510  bb300400  bneq r8, zero, 44
001514  1bc40701  srli r8, r15, 16
001518  1b041400  andi r8, r8, 1
00151c  0b948710  add.s r8, r15, r8
001520  0b14d410  add.s r8, r8, r13
001524  970a1400  and r21, r8, r1
001528  1304b704  setlt.u r8, r14, r11
00152c  37600400  beq r8, zero, 24
001530  13046705  setlt.u r8, r14, r22
001534  3b6c04fe  bneq r8, zero, -232
001538  5b050000  j 40
00153c  1304b704  setlt.u r8, r14, r11
001540  bb4f04fe  bneq r8, zero, -16
001544  1b440a01  srli r8, r20, 16
001548  1b041400  andi r8, r8, 1
00154c  0b148a10  add.s r8, r20, r8
001550  0b14d410  add.s r8, r8, r13
001554  17051400  and r10, r8, r1
001558  13046705  setlt.u r8, r14, r22
00155c  bb4b04fe  bneq r8, zero, -272
001560  1bc20101  srli r4, r3, 16
001564  1b021200  andi r4, r4, 1
001568  8b914110  add.s r3, r3, r4
00156c  8b91d110  add.s r3, r3, r13
001570  17821100  and r4, r3, r1
001574  5bdbffff  j -296
001578  00390002  core_id r18
00157c  00200100  mfence { sm }
001580  63011fff  loadli.w r2,  -120(r30)
001584  9f010007  addli r3, zero, 896
001588  b3810128  zext_int2long r[4:5], r3
00158c  1b317100  slli r2, r2, 7
001590  33030128  zext_int2long r[7:8], r2
001594  0b213340  min.ul r[3:4], r[7:8], r[4:5]
001598  27010101  addli.d r[3:4], r[3:4], 128
00159c  0b216148  max.ul r[3:4], r[3:4], r[7:8]
0015a0  0b316118  sub.sl r[3:4], r[3:4], r[7:8]
0015a4  0b21a141  min.ul r[3:4], r[3:4], r[27:28]
0015a8  73342ff8  store.d r[3:4], -120(r30)
0015ac  1f71f001  addli r2, zero, 255
0015b0  80220104  csr_set csr5, r2
0015b4  1f310000  addli r2, zero, 3
0015b8  00e00200  sync_core
0015bc  bb302900  bneq r18, r2, 44
0015c0  1f311000  addli r2, zero, 11
0015c4  7d000100  xsignal r2, 0
0015c8  1f411000  addli r2, zero, 12
0015cc  7d000100  xsignal r2, 0
0015d0  1f511000  addli r2, zero, 13
0015d4  7d100100  xwait r2, 0
0015d8  1f312000  addli r2, zero, 19
0015dc  7d100100  xwait r2, 0
0015e0  eb538ffa  load.d r[8:9], -88(r30)
0015e4  db6c0000  j 868
0015e8  63016fff  loadli.w r2,  -80(r30)
0015ec  ab010700  lui r3, 112
0015f0  eb538ffa  load.d r[8:9], -88(r30)
0015f4  1b319100  slli r2, r2, 9
0015f8  0b163110  add.s r12, r2, r3
0015fc  9f110000  addli r3, zero, 1
001600  bb0b3900  bneq r18, r3, 736
001604  eb510f01  load.d r[4:5], 16(r30)
001608  6b538ff7  load.d r[7:8], -136(r30)
00160c  9f052000  addli r11, zero, 16
001610  1f350000  addli r10, zero, 3
001614  7d900500  xwait r11, 0
001618  8ba16110  add.ul r[4:5], r[4:5], r[7:8]
00161c  63434fff  loadli.w r6,  -92(r30)
001620  bf546500  blt.s r10, r6, 308
001624  9f540000  addli r9, zero, 5
001628  1f140000  addli r8, zero, 1
00162c  1f230000  addli r6, zero, 2
001630  9f630000  addli r7, zero, 6
001634  1d800400  lock zero, r9
001638  15000014  dma_cfg zero, zero, zero, 10
00163c  15008014  dma_cfg zero, zero, r8, 10
001640  15006014  dma_cfg zero, zero, r6, 10
001644  1f430000  addli r6, zero, 4
001648  1500a014  dma_cfg zero, zero, r10, 10
00164c  15006014  dma_cfg zero, zero, r6, 10
001650  15009014  dma_cfg zero, zero, r9, 10
001654  15007014  dma_cfg zero, zero, r7, 10
001658  9f730000  addli r7, zero, 7
00165c  15007014  dma_cfg zero, zero, r7, 10
001660  9f031000  addli r7, zero, 8
001664  15007014  dma_cfg zero, zero, r7, 10
001668  9f131000  addli r7, zero, 9
00166c  15007014  dma_cfg zero, zero, r7, 10
001670  9f231000  addli r7, zero, 10
001674  15007014  dma_cfg zero, zero, r7, 10
001678  9f331000  addli r7, zero, 11
00167c  15007014  dma_cfg zero, zero, r7, 10
001680  9f431000  addli r7, zero, 12
001684  15007014  dma_cfg zero, zero, r7, 10
001688  9f531000  addli r7, zero, 13
00168c  15007014  dma_cfg zero, zero, r7, 10
001690  9f631000  addli r7, zero, 14
001694  15007014  dma_cfg zero, zero, r7, 10
001698  9f731000  addli r7, zero, 15
00169c  15007014  dma_cfg zero, zero, r7, 10
0016a0  9f132000  addli r7, zero, 17
0016a4  1500b014  dma_cfg zero, zero, r11, 10
0016a8  15007014  dma_cfg zero, zero, r7, 10
0016ac  9f232000  addli r7, zero, 18
0016b0  15007014  dma_cfg zero, zero, r7, 10
0016b4  9f332000  addli r7, zero, 19
0016b8  15007014  dma_cfg zero, zero, r7, 10
0016bc  9f432000  addli r7, zero, 20
0016c0  15007014  dma_cfg zero, zero, r7, 10
0016c4  9f532000  addli r7, zero, 21
0016c8  15007014  dma_cfg zero, zero, r7, 10
0016cc  9f632000  addli r7, zero, 22
0016d0  15007014  dma_cfg zero, zero, r7, 10
0016d4  9f732000  addli r7, zero, 23
0016d8  15007014  dma_cfg zero, zero, r7, 10
0016dc  9f033000  addli r7, zero, 24
0016e0  15007014  dma_cfg zero, zero, r7, 10
0016e4  9f133000  addli r7, zero, 25
0016e8  15007014  dma_cfg zero, zero, r7, 10
0016ec  9f233000  addli r7, zero, 26
0016f0  15007014  dma_cfg zero, zero, r7, 10
0016f4  9f333000  addli r7, zero, 27
0016f8  15007014  dma_cfg zero, zero, r7, 10
0016fc  9f433000  addli r7, zero, 28
001700  15007014  dma_cfg zero, zero, r7, 10
001704  9f533000  addli r7, zero, 29
001708  15007014  dma_cfg zero, zero, r7, 10
00170c  9f633000  addli r7, zero, 30
001710  15007014  dma_cfg zero, zero, r7, 10
001714  9f733000  addli r7, zero, 31
001718  15007014  dma_cfg zero, zero, r7, 10
00171c  9f038000  addli r7, zero, 64
001720  15040400  dma_cfg r8, r8, zero, 0
001724  15040002  dma_cfg r8, zero, zero, 1
001728  15000004  dma_cfg zero, zero, zero, 2
00172c  15067006  dma_cfg r12, zero, r7, 3
001730  9f030001  addli r7, zero, 128
001734  95036008  dma_cfg r7, zero, r6, 4
001738  1f030004  addli r6, zero, 512
00173c  1503800a  dma_cfg r6, zero, r8, 5
001740  15000010  dma_cfg zero, zero, zero, 8
001744  35000000  dma_run zero
001748  1500800a  dma_cfg zero, zero, r8, 5
00174c  15000010  dma_cfg zero, zero, zero, 8
001750  1d900400  unlock r9
001754  9f430000  addli r7, zero, 4
001758  9f140000  addli r9, zero, 1
00175c  2b030700  lui r6, 112
001760  1f048000  addli r8, zero, 64
001764  1d800300  lock zero, r7
001768  1b130304  ori r6, r6, 64
00176c  95840400  dma_cfg r9, r9, zero, 0
001770  15000204  dma_cfg zero, r4, zero, 2
001774  0b116110  add.s r2, r2, r6
001778  eb578ff8  load.d r[16:17], -120(r30)
00177c  15818106  dma_cfg r2, r3, r8, 3
001780  1f020002  addli r4, zero, 256
001784  1ff33700  addli r6, r15, 31
001788  9bb11700  slli r3, r15, 1
00178c  9f070001  addli r15, zero, 128
001790  1f080004  addli r16, zero, 512
001794  1b415300  srli r2, r6, 5
001798  9b81e103  andi r3, r3, 62
00179c  1f530000  addli r6, zero, 5
0017a0  95072408  dma_cfg r15, r8, r2, 4
0017a4  1508920a  dma_cfg r16, r4, r9, 5
0017a8  1f220000  addli r4, zero, 2
0017ac  15003010  dma_cfg zero, zero, r3, 8
0017b0  35000000  dma_run zero
0017b4  1500900a  dma_cfg zero, zero, r9, 5
0017b8  15000010  dma_cfg zero, zero, zero, 8
0017bc  1d900300  unlock r7
0017c0  1d000300  lock zero, r6
0017c4  15000014  dma_cfg zero, zero, zero, 10
0017c8  15009014  dma_cfg zero, zero, r9, 10
0017cc  15004014  dma_cfg zero, zero, r4, 10
0017d0  1f620000  addli r4, zero, 6
0017d4  1500a014  dma_cfg zero, zero, r10, 10
0017d8  15007014  dma_cfg zero, zero, r7, 10
0017dc  9f132000  addli r7, zero, 17
0017e0  15006014  dma_cfg zero, zero, r6, 10
0017e4  15004014  dma_cfg zero, zero, r4, 10
0017e8  1f720000  addli r4, zero, 7
0017ec  15004014  dma_cfg zero, zero, r4, 10
0017f0  1f021000  addli r4, zero, 8
0017f4  15004014  dma_cfg zero, zero, r4, 10
0017f8  1f121000  addli r4, zero, 9
0017fc  15004014  dma_cfg zero, zero, r4, 10
001800  1f221000  addli r4, zero, 10
001804  15004014  dma_cfg zero, zero, r4, 10
001808  1f321000  addli r4, zero, 11
00180c  15004014  dma_cfg zero, zero, r4, 10
001810  1f421000  addli r4, zero, 12
001814  15004014  dma_cfg zero, zero, r4, 10
001818  1f521000  addli r4, zero, 13
00181c  15004014  dma_cfg zero, zero, r4, 10
001820  1f621000  addli r4, zero, 14
001824  15004014  dma_cfg zero, zero, r4, 10
001828  1f721000  addli r4, zero, 15
00182c  15004014  dma_cfg zero, zero, r4, 10
001830  1500b014  dma_cfg zero, zero, r11, 10
001834  15007014  dma_cfg zero, zero, r7, 10
001838  9f232000  addli r7, zero, 18
00183c  15007014  dma_cfg zero, zero, r7, 10
001840  9f332000  addli r7, zero, 19
001844  15007014  dma_cfg zero, zero, r7, 10
001848  9f432000  addli r7, zero, 20
00184c  15007014  dma_cfg zero, zero, r7, 10
001850  9f532000  addli r7, zero, 21
001854  15007014  dma_cfg zero, zero, r7, 10
001858  9f632000  addli r7, zero, 22
00185c  15007014  dma_cfg zero, zero, r7, 10
001860  9f732000  addli r7, zero, 23
001864  15007014  dma_cfg zero, zero, r7, 10
001868  9f033000  addli r7, zero, 24
00186c  15007014  dma_cfg zero, zero, r7, 10
001870  9f133000  addli r7, zero, 25
001874  15007014  dma_cfg zero, zero, r7, 10
001878  9f233000  addli r7, zero, 26
00187c  15007014  dma_cfg zero, zero, r7, 10
001880  9f333000  addli r7, zero, 27
001884  15007014  dma_cfg zero, zero, r7, 10
001888  9f433000  addli r7, zero, 28
00188c  15007014  dma_cfg zero, zero, r7, 10
001890  9f533000  addli r7, zero, 29
001894  15007014  dma_cfg zero, zero, r7, 10
001898  9f633000  addli r7, zero, 30
00189c  15007014  dma_cfg zero, zero, r7, 10
0018a0  9f733000  addli r7, zero, 31
0018a4  15007014  dma_cfg zero, zero, r7, 10
0018a8  95840400  dma_cfg r9, r9, zero, 0
0018ac  95040002  dma_cfg r9, zero, zero, 1
0018b0  15000004  dma_cfg zero, zero, zero, 2
0018b4  15068006  dma_cfg r12, zero, r8, 3
0018b8  95072008  dma_cfg r15, zero, r2, 4
0018bc  1508900a  dma_cfg r16, zero, r9, 5
0018c0  15003010  dma_cfg zero, zero, r3, 8
0018c4  35000000  dma_run zero
0018c8  1500900a  dma_cfg zero, zero, r9, 5
0018cc  15000010  dma_cfg zero, zero, zero, 8
0018d0  1d100300  unlock r6
0018d4  7d000200  xsignal r4, 0
0018d8  eb538ffa  load.d r[8:9], -88(r30)
0018dc  db0d0000  j 108
0018e0  1f510000  addli r2, zero, 5
0018e4  1f220000  addli r4, zero, 2
0018e8  bb012900  bneq r18, r2, 96
0018ec  9f411000  addli r3, zero, 12
0018f0  1f010000  addli r2, zero, 0
0018f4  2b830000  lui r6, 8
0018f8  7d900100  xwait r3, 0
0018fc  9f711000  addli r3, zero, 15
001900  7d900100  xwait r3, 0
001904  1d000200  lock zero, r4
001908  ab01803f  lui r3, 260096
00190c  0d000002  ew_cfg zero, zero, zero, 1
001910  8d910100  ewcoeff_cfg r3, r3, zero, 0
001914  9f71f000  addli r3, zero, 127
001918  0d800104  ew_cfg zero, r3, zero, 2
00191c  9f110000  addli r3, zero, 1
001920  8d010006  ew_cfg r3, zero, zero, 3
001924  8b912b10  add.s r3, r23, r2
001928  1f010104  addli r2, r2, 512
00192c  ad81c100  dsmadd r3, r3, r12, 0
001930  bb5f61fe  bneq r2, r6, -12
001934  1f511000  addli r2, zero, 13
001938  1d100200  unlock r4
00193c  7d000100  xsignal r2, 0
001940  1f012000  addli r2, zero, 16
001944  7d000100  xsignal r2, 0
001948  2b010500  lui r2, 80
00194c  3d000000  xfence
001950  00a00300  mfence { lm, sm, gm }
001954  0b962210  add.s r12, r5, r2
001958  1f71f001  addli r2, zero, 255
00195c  80220104  csr_set csr5, r2
001960  00e00200  sync_core
001964  37720902  beq r18, zero, 1180
001968  1f110000  addli r2, zero, 1
00196c  3b582902  bneq r18, r2, 1556
001970  1f011000  addli r2, zero, 8
001974  3d000000  xfence
001978  00a00300  mfence { lm, sm, gm }
00197c  b3010128  zext_int2long r[4:5], r2
001980  5b030000  j 24
001984  6b518fff  load.d r[3:4], -8(r30)
001988  6b530ffc  load.d r[7:8], -64(r30)
00198c  13212304  setlt.ul r2, r[7:8], r[3:4]
001990  a7110300  addli.d r[4:5], r[7:8], 1
001994  37150100  beq r2, zero, 324
001998  1f710000  addli r2, zero, 7
00199c  33030028  zext_int2long r[7:8], zero
0019a0  73303ffc  store.d r[4:5], -64(r30)
0019a4  17b92102  sll.d r[19:20], r[4:5], r2
0019a8  db040000  j 36
0019ac  27430300  addli.d r[7:8], r[7:8], 4
0019b0  0b112610  add.s r2, r12, r2
0019b4  9321a303  setneq.d r3, r[7:8], r[27:28]
0019b8  73664100  stores.w r4, 12(r2)
0019bc  73644101  stores.w r20, 8(r2)
0019c0  7362f100  stores.w r15, 4(r2)
0019c4  7360b100  stores.w r11, 0(r2)
0019c8  b7fe01fe  beq r3, zero, -68
0019cc  0b212311  add.ul r[3:4], r[7:8], r[19:20]
0019d0  1b312100  slli r2, r2, 2
0019d4  0b922b10  add.s r4, r23, r2
0019d8  ef41c200  loads.w r3, 12(r4)
0019dc  6f4e0200  loads.w r28, 0(r4)
0019e0  6f484200  loads.w r16, 4(r4)
0019e4  ef4a8200  loads.w r21, 8(r4)
0019e8  17851101  and r10, r3, r17
0019ec  1382ac04  setlt.u r4, r25, r10
0019f0  3b300200  bneq r4, zero, 12
0019f4  1f820100  addli r4, r3, 0
0019f8  5b010000  j 8
0019fc  17928101  or r4, r3, r24
001a00  178b1a01  and r22, r21, r17
001a04  13846c05  setlt.u r8, r25, r22
001a08  3b300400  bneq r8, zero, 12
001a0c  1f8a0a00  addli r20, r21, 0
001a10  5b010000  j 8
001a14  179a8a01  or r20, r21, r24
001a18  17041801  and r8, r16, r17
001a1c  93848c04  setlt.u r9, r25, r8
001a20  3bb00400  bneq r9, zero, 12
001a24  9f070800  addli r15, r16, 0
001a28  5b010000  j 8
001a2c  97178801  or r15, r16, r24
001a30  97041e01  and r9, r28, r17
001a34  93859c04  setlt.u r11, r25, r9
001a38  3bd00500  bneq r11, zero, 20
001a3c  9f050e00  addli r11, r28, 0
001a40  93049704  setlt.u r9, r14, r9
001a44  37d00400  beq r9, zero, 20
001a48  db040000  j 36
001a4c  97158e01  or r11, r28, r24
001a50  93049704  setlt.u r9, r14, r9
001a54  3be00400  bneq r9, zero, 24
001a58  9b440e01  srli r9, r28, 16
001a5c  9b841400  andi r9, r9, 1
001a60  8b149e10  add.s r9, r28, r9
001a64  8b94d410  add.s r9, r9, r13
001a68  97851400  and r11, r9, r1
001a6c  13048704  setlt.u r8, r14, r8
001a70  bb300400  bneq r8, zero, 44
001a74  1b440801  srli r8, r16, 16
001a78  1b041400  andi r8, r8, 1
001a7c  0b148810  add.s r8, r16, r8
001a80  0b14d410  add.s r8, r8, r13
001a84  97071400  and r15, r8, r1
001a88  13046705  setlt.u r8, r14, r22
001a8c  37600400  beq r8, zero, 24
001a90  1304a704  setlt.u r8, r14, r10
001a94  3b6c04fe  bneq r8, zero, -232
001a98  5b050000  j 40
001a9c  13046705  setlt.u r8, r14, r22
001aa0  bb4f04fe  bneq r8, zero, -16
001aa4  1bc40a01  srli r8, r21, 16
001aa8  1b041400  andi r8, r8, 1
001aac  0b948a10  add.s r8, r21, r8
001ab0  0b14d410  add.s r8, r8, r13
001ab4  170a1400  and r20, r8, r1
001ab8  1304a704  setlt.u r8, r14, r10
001abc  bb4b04fe  bneq r8, zero, -272
001ac0  1bc20101  srli r4, r3, 16
001ac4  1b021200  andi r4, r4, 1
001ac8  8b914110  add.s r3, r3, r4
001acc  8b91d110  add.s r3, r3, r13
001ad0  17821100  and r4, r3, r1
001ad4  5bdbffff  j -296
001ad8  00200100  mfence { sm }
001adc  00390002  core_id r18
001ae0  eb538ffa  load.d r[8:9], -88(r30)
001ae4  63013fff  loadli.w r2,  -104(r30)
001ae8  bb020102  bneq r2, zero, 1184
001aec  1f310000  addli r2, zero, 3
001af0  3b582902  bneq r18, r2, 1556
001af4  1f013000  addli r2, zero, 24
001af8  3d000000  xfence
001afc  00a00300  mfence { lm, sm, gm }
001b00  b3010128  zext_int2long r[4:5], r2
001b04  5b030000  j 24
001b08  6b518ffe  load.d r[3:4], -24(r30)
001b0c  6b538fff  load.d r[7:8], -8(r30)
001b10  13212304  setlt.ul r2, r[7:8], r[3:4]
001b14  a7110300  addli.d r[4:5], r[7:8], 1
001b18  37150100  beq r2, zero, 324
001b1c  1f710000  addli r2, zero, 7
001b20  33030028  zext_int2long r[7:8], zero
001b24  733c3ffe  store.d r[4:5], -8(r30)
001b28  17b92102  sll.d r[19:20], r[4:5], r2
001b2c  db040000  j 36
001b30  27430300  addli.d r[7:8], r[7:8], 4
001b34  0b112610  add.s r2, r12, r2
001b38  9321a303  setneq.d r3, r[7:8], r[27:28]
001b3c  73664100  stores.w r4, 12(r2)
001b40  73644101  stores.w r20, 8(r2)
001b44  7362f100  stores.w r15, 4(r2)
001b48  7360b100  stores.w r11, 0(r2)
001b4c  b7fe01fe  beq r3, zero, -68
001b50  0b212311  add.ul r[3:4], r[7:8], r[19:20]
001b54  1b312100  slli r2, r2, 2
001b58  0b922b10  add.s r4, r23, r2
001b5c  ef41c200  loads.w r3, 12(r4)
001b60  6f4e0200  loads.w r28, 0(r4)
001b64  6f484200  loads.w r16, 4(r4)
001b68  ef4a8200  loads.w r21, 8(r4)
001b6c  17851101  and r10, r3, r17
001b70  1382ac04  setlt.u r4, r25, r10
001b74  3b300200  bneq r4, zero, 12
001b78  1f820100  addli r4, r3, 0
001b7c  5b010000  j 8
001b80  17928101  or r4, r3, r24
001b84  178b1a01  and r22, r21, r17
001b88  13846c05  setlt.u r8, r25, r22
001b8c  3b300400  bneq r8, zero, 12
001b90  1f8a0a00  addli r20, r21, 0
001b94  5b010000  j 8
001b98  179a8a01  or r20, r21, r24
001b9c  17041801  and r8, r16, r17
001ba0  93848c04  setlt.u r9, r25, r8
001ba4  3bb00400  bneq r9, zero, 12
001ba8  9f070800  addli r15, r16, 0
001bac  5b010000  j 8
001bb0  97178801  or r15, r16, r24
001bb4  97041e01  and r9, r28, r17
001bb8  93859c04  setlt.u r11, r25, r9
001bbc  3bd00500  bneq r11, zero, 20
001bc0  9f050e00  addli r11, r28, 0
001bc4  93049704  setlt.u r9, r14, r9
001bc8  37d00400  beq r9, zero, 20
001bcc  db040000  j 36
001bd0  97158e01  or r11, r28, r24
001bd4  93049704  setlt.u r9, r14, r9
001bd8  3be00400  bneq r9, zero, 24
001bdc  9b440e01  srli r9, r28, 16
001be0  9b841400  andi r9, r9, 1
001be4  8b149e10  add.s r9, r28, r9
001be8  8b94d410  add.s r9, r9, r13
001bec  97851400  and r11, r9, r1
001bf0  13048704  setlt.u r8, r14, r8
001bf4  bb300400  bneq r8, zero, 44
001bf8  1b440801  srli r8, r16, 16
001bfc  1b041400  andi r8, r8, 1
001c00  0b148810  add.s r8, r16, r8
001c04  0b14d410  add.s r8, r8, r13
001c08  97071400  and r15, r8, r1
001c0c  13046705  setlt.u r8, r14, r22
001c10  37600400  beq r8, zero, 24
001c14  1304a704  setlt.u r8, r14, r10
001c18  3b6c04fe  bneq r8, zero, -232
001c1c  5b050000  j 40
001c20  13046705  setlt.u r8, r14, r22
001c24  bb4f04fe  bneq r8, zero, -16
001c28  1bc40a01  srli r8, r21, 16
001c2c  1b041400  andi r8, r8, 1
001c30  0b948a10  add.s r8, r21, r8
001c34  0b14d410  add.s r8, r8, r13
001c38  170a1400  and r20, r8, r1
001c3c  1304a704  setlt.u r8, r14, r10
001c40  bb4b04fe  bneq r8, zero, -272
001c44  1bc20101  srli r4, r3, 16
001c48  1b021200  andi r4, r4, 1
001c4c  8b914110  add.s r3, r3, r4
001c50  8b91d110  add.s r3, r3, r13
001c54  17821100  and r4, r3, r1
001c58  5bdbffff  j -296
001c5c  00200100  mfence { sm }
001c60  00390002  core_id r18
001c64  eb538ffa  load.d r[8:9], -88(r30)
001c68  63413fff  loadli.w r2,  -100(r30)
001c6c  bb020102  bneq r2, zero, 1184
001c70  1f510000  addli r2, zero, 5
001c74  3b582902  bneq r18, r2, 1556
001c78  1f015000  addli r2, zero, 40
001c7c  3d000000  xfence
001c80  00a00300  mfence { lm, sm, gm }
001c84  b3010128  zext_int2long r[4:5], r2
001c88  5b030000  j 24
001c8c  6b518ffd  load.d r[3:4], -40(r30)
001c90  6b538fff  load.d r[7:8], -8(r30)
001c94  13212304  setlt.ul r2, r[7:8], r[3:4]
001c98  a7110300  addli.d r[4:5], r[7:8], 1
001c9c  37150100  beq r2, zero, 324
001ca0  1f710000  addli r2, zero, 7
001ca4  33090028  zext_int2long r[19:20], zero
001ca8  733c3ffe  store.d r[4:5], -8(r30)
001cac  17b42102  sll.d r[9:10], r[4:5], r2
001cb0  db040000  j 36
001cb4  27490900  addli.d r[19:20], r[19:20], 4
001cb8  0b112610  add.s r2, r12, r2
001cbc  9321a903  setneq.d r3, r[19:20], r[27:28]
001cc0  73664100  stores.w r4, 12(r2)
001cc4  73644101  stores.w r20, 8(r2)
001cc8  7362f100  stores.w r15, 4(r2)
001ccc  7360b100  stores.w r11, 0(r2)
001cd0  b7fe01fe  beq r3, zero, -68
001cd4  0b218910  add.ul r[3:4], r[19:20], r[9:10]
001cd8  1b312100  slli r2, r2, 2
001cdc  0b922b10  add.s r4, r23, r2
001ce0  ef41c200  loads.w r3, 12(r4)
001ce4  6f4e0200  loads.w r28, 0(r4)
001ce8  6f484200  loads.w r16, 4(r4)
001cec  ef4a8200  loads.w r21, 8(r4)
001cf0  17851101  and r10, r3, r17
001cf4  1382ac04  setlt.u r4, r25, r10
001cf8  3b300200  bneq r4, zero, 12
001cfc  1f820100  addli r4, r3, 0
001d00  5b010000  j 8
001d04  17928101  or r4, r3, r24
001d08  178b1a01  and r22, r21, r17
001d0c  13836c05  setlt.u r6, r25, r22
001d10  3b300300  bneq r6, zero, 12
001d14  1f8a0a00  addli r20, r21, 0
001d18  5b010000  j 8
001d1c  179a8a01  or r20, r21, r24
001d20  17031801  and r6, r16, r17
001d24  93836c04  setlt.u r7, r25, r6
001d28  3bb00300  bneq r7, zero, 12
001d2c  9f070800  addli r15, r16, 0
001d30  5b010000  j 8
001d34  97178801  or r15, r16, r24
001d38  97031e01  and r7, r28, r17
001d3c  93857c04  setlt.u r11, r25, r7
001d40  3bd00500  bneq r11, zero, 20
001d44  9f050e00  addli r11, r28, 0
001d48  93037704  setlt.u r7, r14, r7
001d4c  37d00300  beq r7, zero, 20
001d50  db040000  j 36
001d54  97158e01  or r11, r28, r24
001d58  93037704  setlt.u r7, r14, r7
001d5c  3be00300  bneq r7, zero, 24
001d60  9b430e01  srli r7, r28, 16
001d64  9b831300  andi r7, r7, 1
001d68  8b137e10  add.s r7, r28, r7
001d6c  8b93d310  add.s r7, r7, r13
001d70  97851300  and r11, r7, r1
001d74  13036704  setlt.u r6, r14, r6
001d78  bb300300  bneq r6, zero, 44
001d7c  1b430801  srli r6, r16, 16
001d80  1b031300  andi r6, r6, 1
001d84  0b136810  add.s r6, r16, r6
001d88  0b13d310  add.s r6, r6, r13
001d8c  97071300  and r15, r6, r1
001d90  13036705  setlt.u r6, r14, r22
001d94  37600300  beq r6, zero, 24
001d98  1303a704  setlt.u r6, r14, r10
001d9c  3b6c03fe  bneq r6, zero, -232
001da0  5b050000  j 40
001da4  13036705  setlt.u r6, r14, r22
001da8  bb4f03fe  bneq r6, zero, -16
001dac  1bc30a01  srli r6, r21, 16
001db0  1b031300  andi r6, r6, 1
001db4  0b936a10  add.s r6, r21, r6
001db8  0b13d310  add.s r6, r6, r13
001dbc  170a1300  and r20, r6, r1
001dc0  1303a704  setlt.u r6, r14, r10
001dc4  bb4b03fe  bneq r6, zero, -272
001dc8  1bc20101  srli r4, r3, 16
001dcc  1b021200  andi r4, r4, 1
001dd0  8b914110  add.s r3, r3, r4
001dd4  8b91d110  add.s r3, r3, r13
001dd8  17821100  and r4, r3, r1
001ddc  5bdbffff  j -296
001de0  00200100  mfence { sm }
001de4  00390002  core_id r18
001de8  eb538ffa  load.d r[8:9], -88(r30)
001dec  1f610000  addli r2, zero, 6
001df0  b7022902  beq r18, r2, 1184
001df4  63014fff  loadli.w r2,  -96(r30)
001df8  3b580102  bneq r2, zero, 1556
001dfc  dbf00000  j 1924
001e00  33010028  zext_int2long r[3:4], zero
001e04  3d000000  xfence
001e08  00a00300  mfence { lm, sm, gm }
001e0c  73382ffa  store.d r[3:4], -80(r30)
001e10  a7010100  addli.d r[4:5], r[3:4], 0
001e14  5b030000  j 24
001e18  6b518ffb  load.d r[3:4], -72(r30)
001e1c  6b530ffc  load.d r[7:8], -64(r30)
001e20  13212304  setlt.ul r2, r[7:8], r[3:4]
001e24  a7110300  addli.d r[4:5], r[7:8], 1
001e28  37150100  beq r2, zero, 324
001e2c  1f710000  addli r2, zero, 7
001e30  6b590ffb  load.d r[19:20], -80(r30)
001e34  73303ffc  store.d r[4:5], -64(r30)
001e38  17b32102  sll.d r[7:8], r[4:5], r2
001e3c  db040000  j 36
001e40  27490900  addli.d r[19:20], r[19:20], 4
001e44  8b114610  add.s r3, r12, r4
001e48  1321a903  setneq.d r2, r[19:20], r[27:28]
001e4c  73e6c101  stores.w r28, 12(r3)
001e50  73e44101  stores.w r20, 8(r3)
001e54  73e2f100  stores.w r15, 4(r3)
001e58  73e0b100  stores.w r11, 0(r3)
001e5c  b77e01fe  beq r2, zero, -68
001e60  0b216910  add.ul r[3:4], r[19:20], r[7:8]
001e64  1b322100  slli r4, r2, 2
001e68  0b914b10  add.s r2, r23, r4
001e6c  6f4bc100  loads.w r22, 12(r2)
001e70  ef410100  loads.w r3, 0(r2)
001e74  6f484100  loads.w r16, 4(r2)
001e78  ef4a8100  loads.w r21, 8(r2)
001e7c  17051b01  and r10, r22, r17
001e80  1381ac04  setlt.u r2, r25, r10
001e84  3b300100  bneq r2, zero, 12
001e88  1f0e0b00  addli r28, r22, 0
001e8c  5b010000  j 8
001e90  171e8b01  or r28, r22, r24
001e94  17811a01  and r2, r21, r17
001e98  13842c04  setlt.u r8, r25, r2
001e9c  3b300400  bneq r8, zero, 12
001ea0  1f8a0a00  addli r20, r21, 0
001ea4  5b010000  j 8
001ea8  179a8a01  or r20, r21, r24
001eac  17041801  and r8, r16, r17
001eb0  93848c04  setlt.u r9, r25, r8
001eb4  3bb00400  bneq r9, zero, 12
001eb8  9f070800  addli r15, r16, 0
001ebc  5b010000  j 8
001ec0  97178801  or r15, r16, r24
001ec4  97841101  and r9, r3, r17
001ec8  93859c04  setlt.u r11, r25, r9
001ecc  3bd00500  bneq r11, zero, 20
001ed0  9f850100  addli r11, r3, 0
001ed4  93049704  setlt.u r9, r14, r9
001ed8  37d00400  beq r9, zero, 20
001edc  db040000  j 36
001ee0  97958101  or r11, r3, r24
001ee4  93049704  setlt.u r9, r14, r9
001ee8  3be00400  bneq r9, zero, 24
001eec  9bc40101  srli r9, r3, 16
001ef0  9b841400  andi r9, r9, 1
001ef4  8b919110  add.s r3, r3, r9
001ef8  8b91d110  add.s r3, r3, r13
001efc  97851100  and r11, r3, r1
001f00  93018704  setlt.u r3, r14, r8
001f04  bbb00100  bneq r3, zero, 44
001f08  9b410801  srli r3, r16, 16
001f0c  9b811100  andi r3, r3, 1
001f10  8b113810  add.s r3, r16, r3
001f14  8b91d110  add.s r3, r3, r13
001f18  97871100  and r15, r3, r1
001f1c  13012704  setlt.u r2, r14, r2
001f20  37600100  beq r2, zero, 24
001f24  1301a704  setlt.u r2, r14, r10
001f28  3b6c01fe  bneq r2, zero, -232
001f2c  5b050000  j 40
001f30  13012704  setlt.u r2, r14, r2
001f34  bb4f01fe  bneq r2, zero, -16
001f38  1bc10a01  srli r2, r21, 16
001f3c  1b011100  andi r2, r2, 1
001f40  0b912a10  add.s r2, r21, r2
001f44  0b11d110  add.s r2, r2, r13
001f48  170a1100  and r20, r2, r1
001f4c  1301a704  setlt.u r2, r14, r10
001f50  bb4b01fe  bneq r2, zero, -272
001f54  1b410b01  srli r2, r22, 16
001f58  1b011100  andi r2, r2, 1
001f5c  0b112b10  add.s r2, r22, r2
001f60  0b11d110  add.s r2, r2, r13
001f64  170e1100  and r28, r2, r1
001f68  5bdbffff  j -296
001f6c  00200100  mfence { sm }
001f70  00390002  core_id r18
001f74  eb538ffa  load.d r[8:9], -88(r30)
001f78  1f110000  addli r2, zero, 1
001f7c  b75729fc  beq r18, r2, -1548
001f80  63013fff  loadli.w r2,  -104(r30)
001f84  b72d01fc  beq r2, zero, -1176
001f88  1f012000  addli r2, zero, 16
001f8c  3d000000  xfence
001f90  00a00300  mfence { lm, sm, gm }
001f94  b3010128  zext_int2long r[4:5], r2
001f98  5b030000  j 24
001f9c  6b510fff  load.d r[3:4], -16(r30)
001fa0  6b538fff  load.d r[7:8], -8(r30)
001fa4  13212304  setlt.ul r2, r[7:8], r[3:4]
001fa8  a7110300  addli.d r[4:5], r[7:8], 1
001fac  37150100  beq r2, zero, 324
001fb0  1f710000  addli r2, zero, 7
001fb4  33030028  zext_int2long r[7:8], zero
001fb8  733c3ffe  store.d r[4:5], -8(r30)
001fbc  17b92102  sll.d r[19:20], r[4:5], r2
001fc0  db040000  j 36
001fc4  27430300  addli.d r[7:8], r[7:8], 4
001fc8  0b112610  add.s r2, r12, r2
001fcc  9321a303  setneq.d r3, r[7:8], r[27:28]
001fd0  73664100  stores.w r4, 12(r2)
001fd4  73644101  stores.w r20, 8(r2)
001fd8  7362f100  stores.w r15, 4(r2)
001fdc  7360b100  stores.w r11, 0(r2)
001fe0  b7fe01fe  beq r3, zero, -68
001fe4  0b212311  add.ul r[3:4], r[7:8], r[19:20]
001fe8  1b312100  slli r2, r2, 2
001fec  0b922b10  add.s r4, r23, r2
001ff0  ef41c200  loads.w r3, 12(r4)
001ff4  6f4e0200  loads.w r28, 0(r4)
001ff8  6f484200  loads.w r16, 4(r4)
001ffc  ef4a8200  loads.w r21, 8(r4)
002000  17851101  and r10, r3, r17
002004  1382ac04  setlt.u r4, r25, r10
002008  3b300200  bneq r4, zero, 12
00200c  1f820100  addli r4, r3, 0
002010  5b010000  j 8
002014  17928101  or r4, r3, r24
002018  178b1a01  and r22, r21, r17
00201c  13846c05  setlt.u r8, r25, r22
002020  3b300400  bneq r8, zero, 12
002024  1f8a0a00  addli r20, r21, 0
002028  5b010000  j 8
00202c  179a8a01  or r20, r21, r24
002030  17041801  and r8, r16, r17
002034  93848c04  setlt.u r9, r25, r8
002038  3bb00400  bneq r9, zero, 12
00203c  9f070800  addli r15, r16, 0
002040  5b010000  j 8
002044  97178801  or r15, r16, r24
002048  97041e01  and r9, r28, r17
00204c  93859c04  setlt.u r11, r25, r9
002050  3bd00500  bneq r11, zero, 20
002054  9f050e00  addli r11, r28, 0
002058  93049704  setlt.u r9, r14, r9
00205c  37d00400  beq r9, zero, 20
002060  db040000  j 36
002064  97158e01  or r11, r28, r24
002068  93049704  setlt.u r9, r14, r9
00206c  3be00400  bneq r9, zero, 24
002070  9b440e01  srli r9, r28, 16
002074  9b841400  andi r9, r9, 1
002078  8b149e10  add.s r9, r28, r9
00207c  8b94d410  add.s r9, r9, r13
002080  97851400  and r11, r9, r1
002084  13048704  setlt.u r8, r14, r8
002088  bb300400  bneq r8, zero, 44
00208c  1b440801  srli r8, r16, 16
002090  1b041400  andi r8, r8, 1
002094  0b148810  add.s r8, r16, r8
002098  0b14d410  add.s r8, r8, r13
00209c  97071400  and r15, r8, r1
0020a0  13046705  setlt.u r8, r14, r22
0020a4  37600400  beq r8, zero, 24
0020a8  1304a704  setlt.u r8, r14, r10
0020ac  3b6c04fe  bneq r8, zero, -232
0020b0  5b050000  j 40
0020b4  13046705  setlt.u r8, r14, r22
0020b8  bb4f04fe  bneq r8, zero, -16
0020bc  1bc40a01  srli r8, r21, 16
0020c0  1b041400  andi r8, r8, 1
0020c4  0b948a10  add.s r8, r21, r8
0020c8  0b14d410  add.s r8, r8, r13
0020cc  170a1400  and r20, r8, r1
0020d0  1304a704  setlt.u r8, r14, r10
0020d4  bb4b04fe  bneq r8, zero, -272
0020d8  1bc20101  srli r4, r3, 16
0020dc  1b021200  andi r4, r4, 1
0020e0  8b914110  add.s r3, r3, r4
0020e4  8b91d110  add.s r3, r3, r13
0020e8  17821100  and r4, r3, r1
0020ec  5bdbffff  j -296
0020f0  00200100  mfence { sm }
0020f4  00390002  core_id r18
0020f8  eb538ffa  load.d r[8:9], -88(r30)
0020fc  1f310000  addli r2, zero, 3
002100  b75729fc  beq r18, r2, -1548
002104  63413fff  loadli.w r2,  -100(r30)
002108  b72d01fc  beq r2, zero, -1176
00210c  1f014000  addli r2, zero, 32
002110  3d000000  xfence
002114  00a00300  mfence { lm, sm, gm }
002118  b3010128  zext_int2long r[4:5], r2
00211c  5b030000  j 24
002120  6b510ffe  load.d r[3:4], -32(r30)
002124  6b538fff  load.d r[7:8], -8(r30)
002128  13212304  setlt.ul r2, r[7:8], r[3:4]
00212c  a7110300  addli.d r[4:5], r[7:8], 1
002130  37150100  beq r2, zero, 324
002134  1f710000  addli r2, zero, 7
002138  33030028  zext_int2long r[7:8], zero
00213c  733c3ffe  store.d r[4:5], -8(r30)
002140  17b92102  sll.d r[19:20], r[4:5], r2
002144  db040000  j 36
002148  27430300  addli.d r[7:8], r[7:8], 4
00214c  0b112610  add.s r2, r12, r2
002150  9321a303  setneq.d r3, r[7:8], r[27:28]
002154  73664100  stores.w r4, 12(r2)
002158  73644101  stores.w r20, 8(r2)
00215c  7362f100  stores.w r15, 4(r2)
002160  7360b100  stores.w r11, 0(r2)
002164  b7fe01fe  beq r3, zero, -68
002168  0b212311  add.ul r[3:4], r[7:8], r[19:20]
00216c  1b312100  slli r2, r2, 2
002170  0b922b10  add.s r4, r23, r2
002174  ef41c200  loads.w r3, 12(r4)
002178  6f4e0200  loads.w r28, 0(r4)
00217c  6f484200  loads.w r16, 4(r4)
002180  ef4a8200  loads.w r21, 8(r4)
002184  17851101  and r10, r3, r17
002188  1382ac04  setlt.u r4, r25, r10
00218c  3b300200  bneq r4, zero, 12
002190  1f820100  addli r4, r3, 0
002194  5b010000  j 8
002198  17928101  or r4, r3, r24
00219c  178b1a01  and r22, r21, r17
0021a0  13846c05  setlt.u r8, r25, r22
0021a4  3b300400  bneq r8, zero, 12
0021a8  1f8a0a00  addli r20, r21, 0
0021ac  5b010000  j 8
0021b0  179a8a01  or r20, r21, r24
0021b4  17041801  and r8, r16, r17
0021b8  93848c04  setlt.u r9, r25, r8
0021bc  3bb00400  bneq r9, zero, 12
0021c0  9f070800  addli r15, r16, 0
0021c4  5b010000  j 8
0021c8  97178801  or r15, r16, r24
0021cc  97041e01  and r9, r28, r17
0021d0  93859c04  setlt.u r11, r25, r9
0021d4  3bd00500  bneq r11, zero, 20
0021d8  9f050e00  addli r11, r28, 0
0021dc  93049704  setlt.u r9, r14, r9
0021e0  37d00400  beq r9, zero, 20
0021e4  db040000  j 36
0021e8  97158e01  or r11, r28, r24
0021ec  93049704  setlt.u r9, r14, r9
0021f0  3be00400  bneq r9, zero, 24
0021f4  9b440e01  srli r9, r28, 16
0021f8  9b841400  andi r9, r9, 1
0021fc  8b149e10  add.s r9, r28, r9
002200  8b94d410  add.s r9, r9, r13
002204  97851400  and r11, r9, r1
002208  13048704  setlt.u r8, r14, r8
00220c  bb300400  bneq r8, zero, 44
002210  1b440801  srli r8, r16, 16
002214  1b041400  andi r8, r8, 1
002218  0b148810  add.s r8, r16, r8
00221c  0b14d410  add.s r8, r8, r13
002220  97071400  and r15, r8, r1
002224  13046705  setlt.u r8, r14, r22
002228  37600400  beq r8, zero, 24
00222c  1304a704  setlt.u r8, r14, r10
002230  3b6c04fe  bneq r8, zero, -232
002234  5b050000  j 40
002238  13046705  setlt.u r8, r14, r22
00223c  bb4f04fe  bneq r8, zero, -16
002240  1bc40a01  srli r8, r21, 16
002244  1b041400  andi r8, r8, 1
002248  0b948a10  add.s r8, r21, r8
00224c  0b14d410  add.s r8, r8, r13
002250  170a1400  and r20, r8, r1
002254  1304a704  setlt.u r8, r14, r10
002258  bb4b04fe  bneq r8, zero, -272
00225c  1bc20101  srli r4, r3, 16
002260  1b021200  andi r4, r4, 1
002264  8b914110  add.s r3, r3, r4
002268  8b91d110  add.s r3, r3, r13
00226c  17821100  and r4, r3, r1
002270  5bdbffff  j -296
002274  00200100  mfence { sm }
002278  00390002  core_id r18
00227c  eb538ffa  load.d r[8:9], -88(r30)
002280  1f510000  addli r2, zero, 5
002284  b75729fc  beq r18, r2, -1548
002288  1f610000  addli r2, zero, 6
00228c  bb2d29fc  bneq r18, r2, -1176
002290  1f016000  addli r2, zero, 48
002294  3d000000  xfence
002298  00a00300  mfence { lm, sm, gm }
00229c  b3010128  zext_int2long r[4:5], r2
0022a0  5b030000  j 24
0022a4  6b510ffd  load.d r[3:4], -48(r30)
0022a8  6b538fff  load.d r[7:8], -8(r30)
0022ac  13212304  setlt.ul r2, r[7:8], r[3:4]
0022b0  a7110300  addli.d r[4:5], r[7:8], 1
0022b4  37150100  beq r2, zero, 324
0022b8  1f710000  addli r2, zero, 7
0022bc  33040028  zext_int2long r[9:10], zero
0022c0  733c3ffe  store.d r[4:5], -8(r30)
0022c4  17b32102  sll.d r[7:8], r[4:5], r2
0022c8  db040000  j 36
0022cc  27440400  addli.d r[9:10], r[9:10], 4
0022d0  0b112610  add.s r2, r12, r2
0022d4  9321a403  setneq.d r3, r[9:10], r[27:28]
0022d8  73663101  stores.w r19, 12(r2)
0022dc  73644101  stores.w r20, 8(r2)
0022e0  7362f100  stores.w r15, 4(r2)
0022e4  7360b100  stores.w r11, 0(r2)
0022e8  b7fe01fe  beq r3, zero, -68
0022ec  0b216410  add.ul r[3:4], r[9:10], r[7:8]
0022f0  1b312100  slli r2, r2, 2
0022f4  8b912b10  add.s r3, r23, r2
0022f8  6fc9c100  loads.w r18, 12(r3)
0022fc  6fce0100  loads.w r28, 0(r3)
002300  6fc84100  loads.w r16, 4(r3)
002304  efca8100  loads.w r21, 8(r3)
002308  17051901  and r10, r18, r17
00230c  9381ac04  setlt.u r3, r25, r10
002310  3bb00100  bneq r3, zero, 12
002314  9f090900  addli r19, r18, 0
002318  5b010000  j 8
00231c  97198901  or r19, r18, r24
002320  178b1a01  and r22, r21, r17
002324  93816c05  setlt.u r3, r25, r22
002328  3bb00100  bneq r3, zero, 12
00232c  1f8a0a00  addli r20, r21, 0
002330  5b010000  j 8
002334  179a8a01  or r20, r21, r24
002338  97011801  and r3, r16, r17
00233c  13823c04  setlt.u r4, r25, r3
002340  3b300200  bneq r4, zero, 12
002344  9f070800  addli r15, r16, 0
002348  5b010000  j 8
00234c  97178801  or r15, r16, r24
002350  17021e01  and r4, r28, r17
002354  93854c04  setlt.u r11, r25, r4
002358  3bd00500  bneq r11, zero, 20
00235c  9f050e00  addli r11, r28, 0
002360  13024704  setlt.u r4, r14, r4
002364  37500200  beq r4, zero, 20
002368  db040000  j 36
00236c  97158e01  or r11, r28, r24
002370  13024704  setlt.u r4, r14, r4
002374  3b600200  bneq r4, zero, 24
002378  1b420e01  srli r4, r28, 16
00237c  1b021200  andi r4, r4, 1
002380  0b124e10  add.s r4, r28, r4
002384  0b12d210  add.s r4, r4, r13
002388  97051200  and r11, r4, r1
00238c  93013704  setlt.u r3, r14, r3
002390  bbb00100  bneq r3, zero, 44
002394  9b410801  srli r3, r16, 16
002398  9b811100  andi r3, r3, 1
00239c  8b113810  add.s r3, r16, r3
0023a0  8b91d110  add.s r3, r3, r13
0023a4  97871100  and r15, r3, r1
0023a8  93016705  setlt.u r3, r14, r22
0023ac  37e00100  beq r3, zero, 24
0023b0  9301a704  setlt.u r3, r14, r10
0023b4  3bec01fe  bneq r3, zero, -232
0023b8  5b050000  j 40
0023bc  93016705  setlt.u r3, r14, r22
0023c0  bbcf01fe  bneq r3, zero, -16
0023c4  9bc10a01  srli r3, r21, 16
0023c8  9b811100  andi r3, r3, 1
0023cc  8b913a10  add.s r3, r21, r3
0023d0  8b91d110  add.s r3, r3, r13
0023d4  178a1100  and r20, r3, r1
0023d8  9301a704  setlt.u r3, r14, r10
0023dc  bbcb01fe  bneq r3, zero, -272
0023e0  9b410901  srli r3, r18, 16
0023e4  9b811100  andi r3, r3, 1
0023e8  8b113910  add.s r3, r18, r3
0023ec  8b91d110  add.s r3, r3, r13
0023f0  97891100  and r19, r3, r1
0023f4  5bdbffff  j -296
0023f8  00200100  mfence { sm }
0023fc  00390002  core_id r18
002400  eb538ffa  load.d r[8:9], -88(r30)
002404  63014fff  loadli.w r2,  -96(r30)
002408  b7650100  beq r2, zero, 376
00240c  1f017000  addli r2, zero, 56
002410  3d000000  xfence
002414  00a00300  mfence { lm, sm, gm }
002418  b3010128  zext_int2long r[4:5], r2
00241c  5b030000  j 24
002420  6b518ffc  load.d r[3:4], -56(r30)
002424  6b538fff  load.d r[7:8], -8(r30)
002428  13212304  setlt.ul r2, r[7:8], r[3:4]
00242c  a7110300  addli.d r[4:5], r[7:8], 1
002430  37150100  beq r2, zero, 324
002434  1f710000  addli r2, zero, 7
002438  33040028  zext_int2long r[9:10], zero
00243c  733c3ffe  store.d r[4:5], -8(r30)
002440  17b32102  sll.d r[7:8], r[4:5], r2
002444  db040000  j 36
002448  27440400  addli.d r[9:10], r[9:10], 4
00244c  0b112610  add.s r2, r12, r2
002450  9321a403  setneq.d r3, r[9:10], r[27:28]
002454  73663101  stores.w r19, 12(r2)
002458  73644101  stores.w r20, 8(r2)
00245c  7362f100  stores.w r15, 4(r2)
002460  7360b100  stores.w r11, 0(r2)
002464  b7fe01fe  beq r3, zero, -68
002468  0b216410  add.ul r[3:4], r[9:10], r[7:8]
00246c  1b312100  slli r2, r2, 2
002470  8b912b10  add.s r3, r23, r2
002474  6fc9c100  loads.w r18, 12(r3)
002478  6fce0100  loads.w r28, 0(r3)
00247c  6fc84100  loads.w r16, 4(r3)
002480  efca8100  loads.w r21, 8(r3)
002484  17051901  and r10, r18, r17
002488  9381ac04  setlt.u r3, r25, r10
00248c  3bb00100  bneq r3, zero, 12
002490  9f090900  addli r19, r18, 0
002494  5b010000  j 8
002498  97198901  or r19, r18, r24
00249c  178b1a01  and r22, r21, r17
0024a0  93816c05  setlt.u r3, r25, r22
0024a4  3bb00100  bneq r3, zero, 12
0024a8  1f8a0a00  addli r20, r21, 0
0024ac  5b010000  j 8
0024b0  179a8a01  or r20, r21, r24
0024b4  97011801  and r3, r16, r17
0024b8  13823c04  setlt.u r4, r25, r3
0024bc  3b300200  bneq r4, zero, 12
0024c0  9f070800  addli r15, r16, 0
0024c4  5b010000  j 8
0024c8  97178801  or r15, r16, r24
0024cc  17021e01  and r4, r28, r17
0024d0  93854c04  setlt.u r11, r25, r4
0024d4  3bd00500  bneq r11, zero, 20
0024d8  9f050e00  addli r11, r28, 0
0024dc  13024704  setlt.u r4, r14, r4
0024e0  37500200  beq r4, zero, 20
0024e4  db040000  j 36
0024e8  97158e01  or r11, r28, r24
0024ec  13024704  setlt.u r4, r14, r4
0024f0  3b600200  bneq r4, zero, 24
0024f4  1b420e01  srli r4, r28, 16
0024f8  1b021200  andi r4, r4, 1
0024fc  0b124e10  add.s r4, r28, r4
002500  0b12d210  add.s r4, r4, r13
002504  97051200  and r11, r4, r1
002508  93013704  setlt.u r3, r14, r3
00250c  bbb00100  bneq r3, zero, 44
002510  9b410801  srli r3, r16, 16
002514  9b811100  andi r3, r3, 1
002518  8b113810  add.s r3, r16, r3
00251c  8b91d110  add.s r3, r3, r13
002520  97871100  and r15, r3, r1
002524  93016705  setlt.u r3, r14, r22
002528  37e00100  beq r3, zero, 24
00252c  9301a704  setlt.u r3, r14, r10
002530  3bec01fe  bneq r3, zero, -232
002534  5b050000  j 40
002538  93016705  setlt.u r3, r14, r22
00253c  bbcf01fe  bneq r3, zero, -16
002540  9bc10a01  srli r3, r21, 16
002544  9b811100  andi r3, r3, 1
002548  8b913a10  add.s r3, r21, r3
00254c  8b91d110  add.s r3, r3, r13
002550  178a1100  and r20, r3, r1
002554  9301a704  setlt.u r3, r14, r10
002558  bbcb01fe  bneq r3, zero, -272
00255c  9b410901  srli r3, r18, 16
002560  9b811100  andi r3, r3, 1
002564  8b113910  add.s r3, r18, r3
002568  8b91d110  add.s r3, r3, r13
00256c  97891100  and r19, r3, r1
002570  5bdbffff  j -296
002574  00200100  mfence { sm }
002578  00390002  core_id r18
00257c  eb538ffa  load.d r[8:9], -88(r30)
002580  1f71f001  addli r2, zero, 255
002584  9f3d0000  addli r27, zero, 3
002588  80220104  csr_set csr5, r2
00258c  00e00200  sync_core
002590  b762b9ef  beq r18, r27, -9032
002594  9f490000  addli r19, zero, 4
002598  1f0a8000  addli r20, zero, 64
00259c  9f7a0000  addli r21, zero, 7
0025a0  1f6b0000  addli r22, zero, 6
0025a4  9f5b1000  addli r23, zero, 13
0025a8  1f1d0000  addli r26, zero, 1
0025ac  1f510000  addli r2, zero, 5
0025b0  3b312900  bneq r18, r2, 76
0025b4  1f112000  addli r2, zero, 17
0025b8  1f220000  addli r4, zero, 2
0025bc  7d100100  xwait r2, 0
0025c0  1d000200  lock zero, r4
0025c4  2b01803f  lui r2, 260096
0025c8  0d0d0014  ew_cfg r26, zero, zero, 10
0025cc  0d000002  ew_cfg zero, zero, zero, 1
0025d0  0d110000  ewcoeff_cfg r2, zero, zero, 0
0025d4  6b510ff6  load.d r[3:4], -160(r30)
0025d8  0d800104  ew_cfg zero, r3, zero, 2
0025dc  1f212000  addli r2, zero, 18
0025e0  8d090006  ew_cfg r19, zero, zero, 3
0025e4  8d890926  ew_cfg r19, r19, zero, 19
0025e8  2d06c600  dsmadd r12, r12, r12, 0
0025ec  0d000014  ew_cfg zero, zero, zero, 10
0025f0  0d000026  ew_cfg zero, zero, zero, 19
0025f4  1d100200  unlock r4
0025f8  db8efbff  j -9100
0025fc  bb5109ee  bneq r18, zero, -9100
002600  6341effe  loadli.w r2,  -140(r30)
002604  1f122000  addli r4, zero, 17
002608  6b558f01  load.d r[11:12], 24(r30)
00260c  1b316100  slli r2, r2, 6
002610  33110128  sext_int2long r[3:4], r2
002614  0b337140  min.sl r[7:8], r[3:4], r[8:9]
002618  6b540ff8  load.d r[9:10], -128(r30)
00261c  27038300  addli.d r[7:8], r[7:8], 64
002620  17344402  sll.d r[9:10], r[9:10], r4
002624  1f222000  addli r4, zero, 18
002628  0b332348  max.sl r[7:8], r[7:8], r[3:4]
00262c  0b248510  add.ul r[9:10], r[11:12], r[9:10]
002630  1f550000  addli r10, zero, 5
002634  7d100200  xwait r4, 0
002638  2b020500  lui r4, 80
00263c  0b312318  sub.sl r[3:4], r[7:8], r[3:4]
002640  33030a28  zext_int2long r[7:8], r20
002644  1d000500  lock zero, r10
002648  1b120204  ori r4, r4, 64
00264c  eb558ff7  load.d r[12:13], -136(r30)
002650  150d0d00  dma_cfg r26, r26, zero, 0
002654  0b316140  min.sl r[3:4], r[3:4], r[7:8]
002658  15000d02  dma_cfg zero, r26, zero, 1
00265c  0b924210  add.s r4, r5, r4
002660  0b24b410  add.ul r[9:10], r[9:10], r[12:13]
002664  95040004  dma_cfg r9, zero, zero, 2
002668  6b538ff8  load.d r[7:8], -120(r30)
00266c  15044207  dma_cfg r8, r4, r20, 3
002670  9f723300  addli r5, r6, 31
002674  1bc25200  srli r4, r5, 5
002678  9b321300  slli r5, r6, 1
00267c  1f030001  addli r6, zero, 128
002680  150a4308  dma_cfg r20, r6, r4, 4
002684  1b82e203  andi r4, r5, 62
002688  9f020004  addli r5, zero, 512
00268c  1f030010  addli r6, zero, 2048
002690  1583220a  dma_cfg r6, r5, r2, 5
002694  1f312000  addli r2, zero, 19
002698  15004010  dma_cfg zero, zero, r4, 8
00269c  35000000  dma_run zero
0026a0  1500a00b  dma_cfg zero, zero, r26, 5
0026a4  15000010  dma_cfg zero, zero, zero, 8
0026a8  1d100500  unlock r10
0026ac  5b78fbff  j -9280
0026b0  1f011000  addli r2, zero, 8
0026b4  7d900900  xwait r19, 0
0026b8  1f030000  addli r6, zero, 0
0026bc  1f120000  addli r4, zero, 1
0026c0  9f331000  addli r7, zero, 11
0026c4  7d100100  xwait r2, 0
0026c8  1f110000  addli r2, zero, 1
0026cc  7d900300  xwait r7, 0
0026d0  9b33e300  slli r7, r6, 14
0026d4  1b338300  slli r6, r6, 8
0026d8  1d000100  lock zero, r2
0026dc  090a4a01  mm_cfg r20, r20, r20, 0
0026e0  97935300  or r7, r7, r5
0026e4  17135300  or r6, r6, r5
0026e8  89892904  mm_cfg r19, r19, r2, 2
0026ec  29837110  mm r6, r3, r7, 8
0026f0  9b031200  andi r7, r4, 1
0026f4  1f130000  addli r6, zero, 1
0026f8  1f020000  addli r4, zero, 0
0026fc  1d100100  unlock r2
002700  3bcf03fe  bneq r7, zero, -48
002704  1f510000  addli r2, zero, 5
002708  670a0ffe  storeli.w zero, -96(r30)
00270c  7d000100  xsignal r2, 0
002710  1f111000  addli r2, zero, 9
002714  7d000100  xsignal r2, 0
002718  1f110000  addli r2, zero, 1
00271c  e7492ffe  storeli.w r2, -100(r30)
002720  1f211000  addli r2, zero, 10
002724  7d000100  xsignal r2, 0
002728  bb66b9f1  bneq r18, r27, -7752
00272c  db34fcff  j -7772
002730  e7490ffe  storeli.w zero, -100(r30)
002734  670a0ffe  storeli.w zero, -96(r30)
002738  3766b9f1  beq r18, r27, -7784
00273c  db34fcff  j -7772
002740  7d000000  xsignal zero, 0
002744  bb600900  bneq r18, zero, 56
002748  9f200000  addli r1, zero, 2
00274c  7d100000  xwait zero, 0
002750  7d100000  xwait zero, 0
002754  7d100000  xwait zero, 0
002758  7d100000  xwait zero, 0
00275c  7d100000  xwait zero, 0
002760  7d100000  xwait zero, 0
002764  7d100000  xwait zero, 0
002768  7d100000  xwait zero, 0
00276c  1d800000  lock zero, r1
002770  0d000020  ew_cfg zero, zero, zero, 16
002774  1d900000  unlock r1
002778  7d400000  xsignal_mode_cfg zero
00277c  9f8e5e01  addli sp, sp, 168
002780  00a00300  mfence { lm, sm, gm }
002784  00100000  exit
002788  00100000  exit
00278c  00100000  exit
002790  00100000  exit
002794  00100000  exit
002798  00100000  exit
00279c  00100000  exit
0027a0  00100000  exit
0027a4  00100000  exit
0027a8  00100000  exit
0027ac  00100000  exit
0027b0  00100000  exit
0027b4  00100000  exit
0027b8  00100000  exit
0027bc  00100000  exit
0027c0  00100000  exit
0027c4  00100000  exit
0027c8  00100000  exit
0027cc  00100000  exit
0027d0  00100000  exit
0027d4  00100000  exit
0027d8  00100000  exit
0027dc  00100000  exit
0027e0  00100000  exit
0027e4  00100000  exit
0027e8  00100000  exit
0027ec  00100000  exit
0027f0  00100000  exit
0027f4  00100000  exit
0027f8  00100000  exit
0027fc  00100000  exit
002800  00100000  exit
002804  00100000  exit
002808  00100000  exit
00280c  00100000  exit
002810  00100000  exit
002814  00100000  exit
002818  00100000  exit
00281c  00100000  exit
002820  00100000  exit
002824  00100000  exit
002828  00100000  exit
00282c  00100000  exit
002830  00100000  exit
002834  00100000  exit
002838  00100000  exit
00283c  00100000  exit
002840  00100000  exit
002844  00100000  exit
002848  00100000  exit
00284c  00100000  exit
002850  00100000  exit
002854  00100000  exit
002858  00100000  exit
00285c  00100000  exit
002860  00100000  exit
002864  00100000  exit
002868  00100000  exit
00286c  00100000  exit
002870  00100000  exit
002874  00100000  exit
002878  00100000  exit
00287c  00100000  exit
002880  00100000  exit
002884  00100000  exit
002888  00100000  exit
00288c  00100000  exit
002890  00100000  exit
002894  00100000  exit
002898  00100000  exit
00289c  00100000  exit
0028a0  00100000  exit
0028a4  00100000  exit
0028a8  00100000  exit
0028ac  00100000  exit
0028b0  00100000  exit
0028b4  00100000  exit
0028b8  00100000  exit
0028bc  00100000  exit
0028c0  00100000  exit
0028c4  00100000  exit
0028c8  00100000  exit
0028cc  00100000  exit
0028d0  00100000  exit
0028d4  00100000  exit
0028d8  00100000  exit
0028dc  00100000  exit
0028e0  00100000  exit
0028e4  00100000  exit
0028e8  00100000  exit
0028ec  00100000  exit
0028f0  00100000  exit
0028f4  00100000  exit
0028f8  00100000  exit
0028fc  00100000  exit
002900  00100000  exit
002904  00100000  exit
002908  00100000  exit
00290c  00100000  exit
002910  00100000  exit
002914  00100000  exit
002918  00100000  exit
00291c  00100000  exit
002920  00100000  exit
002924  00100000  exit
002928  00100000  exit
00292c  00100000  exit
002930  00100000  exit
002934  00100000  exit
002938  00100000  exit
00293c  00100000  exit
002940  00100000  exit
002944  00100000  exit
002948  00100000  exit
00294c  00100000  exit
002950  00100000  exit
002954  00100000  exit
002958  00100000  exit
00295c  00100000  exit
002960  00100000  exit
002964  00100000  exit
002968  00100000  exit
00296c  00100000  exit
002970  00100000  exit
002974  00100000  exit
002978  00100000  exit
00297c  00100000  exit
002980  00100000  exit
002984  00100000  exit
002988  00100000  exit
00298c  00100000  exit
002990  00100000  exit
002994  00100000  exit
002998  00100000  exit
00299c  00100000  exit
0029a0  00100000  exit
0029a4  00100000  exit
0029a8  00100000  exit
0029ac  00100000  exit
0029b0  00100000  exit
0029b4  00100000  exit
0029b8  00100000  exit
0029bc  00100000  exit
0029c0  00100000  exit
0029c4  00100000  exit
