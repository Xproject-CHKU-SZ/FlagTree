; SHA-256 8c914c29e62c07c97f63ee0d8c70124bbc279773534be985d26ab3d091e874cf
; P800 SDNN · XTDK LLVM 19 · 2663 / 2663 words decoded
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
0000bc  80380002  core_id r17
0000c0  1f8f5e01  addli r30, sp, 168
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00800  beq r17, zero, 24
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
0001dc  cb641112  ble.s r2, r1, 9528
0001e0  33110128  sext_int2long r[3:4], r2
0001e4  1f470000  addli r14, zero, 4
0001e8  1f0a0001  addli r20, zero, 128
0001ec  1f750000  addli r10, zero, 7
0001f0  9f6a0000  addli r21, zero, 6
0001f4  9f1b0000  addli r23, zero, 1
0001f8  1f3c0000  addli r24, zero, 3
0001fc  9f2c0000  addli r25, zero, 2
000200  1f0b2000  addli r22, zero, 16
000204  9f068000  addli r13, zero, 64
000208  2b0d4000  lui r26, 1024
00020c  ab0d807f  lui r27, 522240
000210  2b09ffff  lui r18, 1048560
000214  73342ff6  store.d r[3:4], -152(r30)
000218  b3910028  sext_int2long r[4:5], r1
00021c  1f71f00f  addli r2, zero, 2047
000220  ab00feff  lui r1, 1048544
000224  73301ff6  store.d r[2:3], -160(r30)
000228  abf0ff7f  lui r1, 524287
00022c  2bf17f7f  lui r2, 522239
000230  9b99f0ff  ori r19, r1, 4095
000234  ab700000  lui r1, 7
000238  1b18f1ff  ori r16, r2, 4095
00023c  9b97f0ff  ori r15, r1, 4095
000240  b3000028  zext_int2long r[2:3], zero
000244  733c1ff4  store.d r[2:3], -168(r30)
000248  1f010000  addli r2, zero, 0
00024c  db090000  j 76
000250  9f601000  addli r1, zero, 14
000254  1f470000  addli r14, zero, 4
000258  1f0a0001  addli r20, zero, 128
00025c  9f6a0000  addli r21, zero, 6
000260  9f1b0000  addli r23, zero, 1
000264  9f2c0000  addli r25, zero, 2
000268  1f0b2000  addli r22, zero, 16
00026c  9f068000  addli r13, zero, 64
000270  7d800000  xsignal r1, 0
000274  9f102000  addli r1, zero, 17
000278  7d800000  xsignal r1, 0
00027c  eb510ff9  load.d r[4:5], -112(r30)
000280  eb508ff6  load.d r[2:3], -152(r30)
000284  a7910100  addli.d r[4:5], r[4:5], 1
000288  93b01104  setlt.sl r1, r[4:5], r[2:3]
00028c  63414fff  loadli.w r2,  -92(r30)
000290  1f110100  addli r2, r2, 1
000294  37820012  beq r1, zero, 9344
000298  e3005f00  loadli.w r1,  40(r30)
00029c  674a2ffe  storeli.w r2, -92(r30)
0002a0  63414f00  loadli.w r2,  36(r30)
0002a4  73383ff8  store.d r[4:5], -112(r30)
0002a8  9f021000  addli r5, zero, 8
0002ac  8b901130  div.s r1, r3, r1
0002b0  1f024000  addli r4, zero, 32
0002b4  0b912030  div.s r2, r1, r2
0002b8  8b114131  div.s r3, r2, r20
0002bc  9bb03100  slli r1, r3, 3
0002c0  0b121218  sub.s r4, r4, r1
0002c4  0b125240  min.s r4, r4, r5
0002c8  8b124138  mod.s r5, r2, r4
0002cc  8b921210  add.s r5, r5, r1
0002d0  9f703000  addli r1, zero, 31
0002d4  93805004  setlt.u r1, r1, r5
0002d8  33830228  zext_int2long r[7:8], r5
0002dc  67475ffe  storeli.w r5, -140(r30)
0002e0  9f421000  addli r5, zero, 12
0002e4  73306ff8  store.d r[7:8], -128(r30)
0002e8  17335302  sll.d r[7:8], r[7:8], r5
0002ec  3bb00000  bneq r1, zero, 12
0002f0  6b548ff5  load.d r[9:10], -168(r30)
0002f4  db010000  j 12
0002f8  6b540ff6  load.d r[9:10], -160(r30)
0002fc  17048302  and.d r[9:10], r[7:8], r[9:10]
000300  634e4fff  loadli.w r28,  -92(r30)
000304  9f02800f  addli r5, zero, 1984
000308  b3850228  zext_int2long r[12:13], r5
00030c  ab020200  lui r5, 32
000310  8b10ee38  mod.s r1, r28, r14
000314  7334bffa  store.d r[12:13], -88(r30)
000318  670b1ffe  storeli.w r1, -80(r30)
00031c  9bb0e000  slli r1, r1, 14
000320  8b925010  add.s r5, r1, r5
000324  bbaa7801  bneq r17, r23, 680
000328  0b338318  sub.sl r[7:8], r[7:8], r[9:10]
00032c  1f0b2000  addli r22, zero, 16
000330  17535303  sra.d r[7:8], r[7:8], r21
000334  0b34b340  min.sl r[9:10], r[7:8], r[12:13]
000338  6b550ff8  load.d r[11:12], -128(r30)
00033c  1f561000  addli r12, zero, 13
000340  7d100c00  xwait r24, 0
000344  1735c502  sll.d r[11:12], r[11:12], r12
000348  0b366418  sub.sl r[13:14], r[9:10], r[7:8]
00034c  6b530f00  load.d r[7:8], 0(r30)
000350  8b23a310  add.ul r[8:9], r[7:8], r[11:12]
000354  1f038600  addli r6, r12, 64
000358  1f750000  addli r10, zero, 7
00035c  1f561000  addli r12, zero, 13
000360  9f068000  addli r13, zero, 64
000364  3f54cc01  blt.s r24, r28, 276
000368  9f550000  addli r11, zero, 5
00036c  9f041000  addli r9, zero, 8
000370  1d800500  lock zero, r11
000374  15000014  dma_cfg zero, zero, zero, 10
000378  15007015  dma_cfg zero, zero, r23, 10
00037c  15009015  dma_cfg zero, zero, r25, 10
000380  15008015  dma_cfg zero, zero, r24, 10
000384  1500e014  dma_cfg zero, zero, r14, 10
000388  1500b014  dma_cfg zero, zero, r11, 10
00038c  15005015  dma_cfg zero, zero, r21, 10
000390  1500a014  dma_cfg zero, zero, r10, 10
000394  15009014  dma_cfg zero, zero, r9, 10
000398  9f141000  addli r9, zero, 9
00039c  15009014  dma_cfg zero, zero, r9, 10
0003a0  9f241000  addli r9, zero, 10
0003a4  15009014  dma_cfg zero, zero, r9, 10
0003a8  9f341000  addli r9, zero, 11
0003ac  15009014  dma_cfg zero, zero, r9, 10
0003b0  9f441000  addli r9, zero, 12
0003b4  15009014  dma_cfg zero, zero, r9, 10
0003b8  9f641000  addli r9, zero, 14
0003bc  1500c014  dma_cfg zero, zero, r12, 10
0003c0  15009014  dma_cfg zero, zero, r9, 10
0003c4  9f741000  addli r9, zero, 15
0003c8  15009014  dma_cfg zero, zero, r9, 10
0003cc  9f142000  addli r9, zero, 17
0003d0  15006015  dma_cfg zero, zero, r22, 10
0003d4  15009014  dma_cfg zero, zero, r9, 10
0003d8  9f242000  addli r9, zero, 18
0003dc  15009014  dma_cfg zero, zero, r9, 10
0003e0  9f342000  addli r9, zero, 19
0003e4  15009014  dma_cfg zero, zero, r9, 10
0003e8  9f442000  addli r9, zero, 20
0003ec  15009014  dma_cfg zero, zero, r9, 10
0003f0  9f542000  addli r9, zero, 21
0003f4  15009014  dma_cfg zero, zero, r9, 10
0003f8  9f642000  addli r9, zero, 22
0003fc  15009014  dma_cfg zero, zero, r9, 10
000400  9f742000  addli r9, zero, 23
000404  15009014  dma_cfg zero, zero, r9, 10
000408  9f043000  addli r9, zero, 24
00040c  15009014  dma_cfg zero, zero, r9, 10
000410  9f143000  addli r9, zero, 25
000414  15009014  dma_cfg zero, zero, r9, 10
000418  9f243000  addli r9, zero, 26
00041c  15009014  dma_cfg zero, zero, r9, 10
000420  9f343000  addli r9, zero, 27
000424  15009014  dma_cfg zero, zero, r9, 10
000428  9f443000  addli r9, zero, 28
00042c  15009014  dma_cfg zero, zero, r9, 10
000430  9f543000  addli r9, zero, 29
000434  15009014  dma_cfg zero, zero, r9, 10
000438  9f643000  addli r9, zero, 30
00043c  15009014  dma_cfg zero, zero, r9, 10
000440  9f743000  addli r9, zero, 31
000444  15009014  dma_cfg zero, zero, r9, 10
000448  9f040002  addli r9, zero, 256
00044c  958b0b00  dma_cfg r23, r23, zero, 0
000450  950b0002  dma_cfg r23, zero, zero, 1
000454  15000004  dma_cfg zero, zero, zero, 2
000458  9502d006  dma_cfg r5, zero, r13, 3
00045c  150a9009  dma_cfg r20, zero, r25, 4
000460  9504d00a  dma_cfg r9, zero, r13, 5
000464  15000010  dma_cfg zero, zero, zero, 8
000468  35000000  dma_run zero
00046c  1500700b  dma_cfg zero, zero, r23, 5
000470  15000010  dma_cfg zero, zero, zero, 8
000474  1d900500  unlock r11
000478  ab040200  lui r9, 32
00047c  e7090ffe  storeli.w zero, -104(r30)
000480  1d000700  lock zero, r14
000484  9b940404  ori r9, r9, 64
000488  958b0b00  dma_cfg r23, r23, zero, 0
00048c  15000404  dma_cfg zero, r8, zero, 2
000490  8b949010  add.s r9, r1, r9
000494  9584d306  dma_cfg r9, r7, r13, 3
000498  9f040002  addli r9, zero, 256
00049c  1f540000  addli r8, zero, 5
0004a0  9f031000  addli r7, zero, 8
0004a4  158a9609  dma_cfg r20, r13, r25, 4
0004a8  95046a0a  dma_cfg r9, r20, r6, 5
0004ac  15000010  dma_cfg zero, zero, zero, 8
0004b0  35000000  dma_run zero
0004b4  1500700b  dma_cfg zero, zero, r23, 5
0004b8  15000010  dma_cfg zero, zero, zero, 8
0004bc  1d100700  unlock r14
0004c0  1d000400  lock zero, r8
0004c4  15000014  dma_cfg zero, zero, zero, 10
0004c8  15007015  dma_cfg zero, zero, r23, 10
0004cc  15009015  dma_cfg zero, zero, r25, 10
0004d0  15008015  dma_cfg zero, zero, r24, 10
0004d4  1500e014  dma_cfg zero, zero, r14, 10
0004d8  15008014  dma_cfg zero, zero, r8, 10
0004dc  15005015  dma_cfg zero, zero, r21, 10
0004e0  1500a014  dma_cfg zero, zero, r10, 10
0004e4  15007014  dma_cfg zero, zero, r7, 10
0004e8  9f131000  addli r7, zero, 9
0004ec  15007014  dma_cfg zero, zero, r7, 10
0004f0  9f231000  addli r7, zero, 10
0004f4  15007014  dma_cfg zero, zero, r7, 10
0004f8  9f331000  addli r7, zero, 11
0004fc  15007014  dma_cfg zero, zero, r7, 10
000500  9f431000  addli r7, zero, 12
000504  15007014  dma_cfg zero, zero, r7, 10
000508  9f631000  addli r7, zero, 14
00050c  1500c014  dma_cfg zero, zero, r12, 10
000510  15007014  dma_cfg zero, zero, r7, 10
000514  9f731000  addli r7, zero, 15
000518  15007014  dma_cfg zero, zero, r7, 10
00051c  9f132000  addli r7, zero, 17
000520  15006015  dma_cfg zero, zero, r22, 10
000524  15007014  dma_cfg zero, zero, r7, 10
000528  9f232000  addli r7, zero, 18
00052c  15007014  dma_cfg zero, zero, r7, 10
000530  9f332000  addli r7, zero, 19
000534  15007014  dma_cfg zero, zero, r7, 10
000538  9f432000  addli r7, zero, 20
00053c  15007014  dma_cfg zero, zero, r7, 10
000540  9f532000  addli r7, zero, 21
000544  15007014  dma_cfg zero, zero, r7, 10
000548  9f632000  addli r7, zero, 22
00054c  15007014  dma_cfg zero, zero, r7, 10
000550  9f732000  addli r7, zero, 23
000554  15007014  dma_cfg zero, zero, r7, 10
000558  9f033000  addli r7, zero, 24
00055c  15007014  dma_cfg zero, zero, r7, 10
000560  9f133000  addli r7, zero, 25
000564  15007014  dma_cfg zero, zero, r7, 10
000568  9f233000  addli r7, zero, 26
00056c  15007014  dma_cfg zero, zero, r7, 10
000570  9f333000  addli r7, zero, 27
000574  15007014  dma_cfg zero, zero, r7, 10
000578  9f433000  addli r7, zero, 28
00057c  15007014  dma_cfg zero, zero, r7, 10
000580  9f533000  addli r7, zero, 29
000584  15007014  dma_cfg zero, zero, r7, 10
000588  9f633000  addli r7, zero, 30
00058c  15007014  dma_cfg zero, zero, r7, 10
000590  9f733000  addli r7, zero, 31
000594  15007014  dma_cfg zero, zero, r7, 10
000598  958b0b00  dma_cfg r23, r23, zero, 0
00059c  950b0002  dma_cfg r23, zero, zero, 1
0005a0  15000004  dma_cfg zero, zero, zero, 2
0005a4  9502d006  dma_cfg r5, zero, r13, 3
0005a8  150a9009  dma_cfg r20, zero, r25, 4
0005ac  9504600a  dma_cfg r9, zero, r6, 5
0005b0  15000010  dma_cfg zero, zero, zero, 8
0005b4  35000000  dma_run zero
0005b8  1500700b  dma_cfg zero, zero, r23, 5
0005bc  15000010  dma_cfg zero, zero, zero, 8
0005c0  1d100400  unlock r8
0005c4  7d800c00  xsignal r25, 0
0005c8  db090000  j 76
0005cc  3b819801  bneq r17, r25, 64
0005d0  1f530000  addli r6, zero, 5
0005d4  7d900c00  xwait r25, 0
0005d8  7d100300  xwait r6, 0
0005dc  1d000000  lock zero, zero
0005e0  810c0000  ds_cfg r25, zero, 0
0005e4  81060002  ds_cfg r13, zero, 1
0005e8  8106001c  ds_cfg r13, zero, 14
0005ec  8106001a  ds_cfg r13, zero, 13
0005f0  a190d202  shuffle_batch r1, r5, r13, 1
0005f4  9f120000  addli r5, zero, 1
0005f8  1d100000  unlock zero
0005fc  7d000c00  xsignal r24, 0
000600  e7095ffe  storeli.w r5, -104(r30)
000604  7d000700  xsignal r14, 0
000608  5b010000  j 8
00060c  e7090ffe  storeli.w zero, -104(r30)
000610  1f561000  addli r12, zero, 13
000614  9bb17100  slli r3, r3, 7
000618  0b113118  sub.s r2, r2, r3
00061c  0b114130  div.s r2, r2, r4
000620  33020128  zext_int2long r[5:6], r2
000624  e7082ffe  storeli.w r2, -120(r30)
000628  63016fff  loadli.w r2,  -80(r30)
00062c  1732a202  sll.d r[5:6], r[5:6], r10
000630  9b31f100  slli r3, r2, 15
000634  2b010300  lui r2, 48
000638  17327203  sll.d r[5:6], r[5:6], r23
00063c  0b912110  add.s r2, r3, r2
000640  733c4ff6  store.d r[5:6], -136(r30)
000644  bbd05803  bneq r17, r21, 1076
000648  27030200  addli.d r[7:8], r[5:6], 0
00064c  6b528f00  load.d r[5:6], 8(r30)
000650  7d100500  xwait r10, 0
000654  e3404fff  loadli.w r1,  -92(r30)
000658  0b226210  add.ul r[5:6], r[5:6], r[7:8]
00065c  3f541c00  blt.s r24, r1, 276
000660  1f530000  addli r6, zero, 5
000664  9f001000  addli r1, zero, 8
000668  1d000300  lock zero, r6
00066c  15000014  dma_cfg zero, zero, zero, 10
000670  15007015  dma_cfg zero, zero, r23, 10
000674  15009015  dma_cfg zero, zero, r25, 10
000678  15008015  dma_cfg zero, zero, r24, 10
00067c  1500e014  dma_cfg zero, zero, r14, 10
000680  15006014  dma_cfg zero, zero, r6, 10
000684  15005015  dma_cfg zero, zero, r21, 10
000688  1500a014  dma_cfg zero, zero, r10, 10
00068c  15001014  dma_cfg zero, zero, r1, 10
000690  9f101000  addli r1, zero, 9
000694  15001014  dma_cfg zero, zero, r1, 10
000698  9f201000  addli r1, zero, 10
00069c  15001014  dma_cfg zero, zero, r1, 10
0006a0  9f301000  addli r1, zero, 11
0006a4  15001014  dma_cfg zero, zero, r1, 10
0006a8  9f401000  addli r1, zero, 12
0006ac  15001014  dma_cfg zero, zero, r1, 10
0006b0  9f601000  addli r1, zero, 14
0006b4  1500c014  dma_cfg zero, zero, r12, 10
0006b8  15001014  dma_cfg zero, zero, r1, 10
0006bc  9f701000  addli r1, zero, 15
0006c0  15001014  dma_cfg zero, zero, r1, 10
0006c4  9f102000  addli r1, zero, 17
0006c8  15006015  dma_cfg zero, zero, r22, 10
0006cc  15001014  dma_cfg zero, zero, r1, 10
0006d0  9f202000  addli r1, zero, 18
0006d4  15001014  dma_cfg zero, zero, r1, 10
0006d8  9f302000  addli r1, zero, 19
0006dc  15001014  dma_cfg zero, zero, r1, 10
0006e0  9f402000  addli r1, zero, 20
0006e4  15001014  dma_cfg zero, zero, r1, 10
0006e8  9f502000  addli r1, zero, 21
0006ec  15001014  dma_cfg zero, zero, r1, 10
0006f0  9f602000  addli r1, zero, 22
0006f4  15001014  dma_cfg zero, zero, r1, 10
0006f8  9f702000  addli r1, zero, 23
0006fc  15001014  dma_cfg zero, zero, r1, 10
000700  9f003000  addli r1, zero, 24
000704  15001014  dma_cfg zero, zero, r1, 10
000708  9f103000  addli r1, zero, 25
00070c  15001014  dma_cfg zero, zero, r1, 10
000710  9f203000  addli r1, zero, 26
000714  15001014  dma_cfg zero, zero, r1, 10
000718  9f303000  addli r1, zero, 27
00071c  15001014  dma_cfg zero, zero, r1, 10
000720  9f403000  addli r1, zero, 28
000724  15001014  dma_cfg zero, zero, r1, 10
000728  9f503000  addli r1, zero, 29
00072c  15001014  dma_cfg zero, zero, r1, 10
000730  9f603000  addli r1, zero, 30
000734  15001014  dma_cfg zero, zero, r1, 10
000738  9f703000  addli r1, zero, 31
00073c  15001014  dma_cfg zero, zero, r1, 10
000740  9f000004  addli r1, zero, 512
000744  958b0b00  dma_cfg r23, r23, zero, 0
000748  950b0002  dma_cfg r23, zero, zero, 1
00074c  15000004  dma_cfg zero, zero, zero, 2
000750  1501d006  dma_cfg r2, zero, r13, 3
000754  150ae008  dma_cfg r20, zero, r14, 4
000758  9500d00a  dma_cfg r1, zero, r13, 5
00075c  15000010  dma_cfg zero, zero, zero, 8
000760  35000000  dma_run zero
000764  1500700b  dma_cfg zero, zero, r23, 5
000768  15000010  dma_cfg zero, zero, zero, 8
00076c  1d100300  unlock r6
000770  ab000300  lui r1, 48
000774  e7490ffe  storeli.w zero, -100(r30)
000778  670a0ffe  storeli.w zero, -96(r30)
00077c  1d000700  lock zero, r14
000780  9b900004  ori r1, r1, 64
000784  958b0b00  dma_cfg r23, r23, zero, 0
000788  15800204  dma_cfg zero, r5, zero, 2
00078c  8b901110  add.s r1, r3, r1
000790  9500d206  dma_cfg r1, r4, r13, 3
000794  9f020004  addli r5, zero, 512
000798  9f000020  addli r1, zero, 4096
00079c  1f520000  addli r4, zero, 5
0007a0  158ae608  dma_cfg r20, r13, r14, 4
0007a4  9582d00a  dma_cfg r5, r1, r13, 5
0007a8  9f001000  addli r1, zero, 8
0007ac  15000010  dma_cfg zero, zero, zero, 8
0007b0  35000000  dma_run zero
0007b4  1500700b  dma_cfg zero, zero, r23, 5
0007b8  15000010  dma_cfg zero, zero, zero, 8
0007bc  1d100700  unlock r14
0007c0  1d000200  lock zero, r4
0007c4  15000014  dma_cfg zero, zero, zero, 10
0007c8  15007015  dma_cfg zero, zero, r23, 10
0007cc  15009015  dma_cfg zero, zero, r25, 10
0007d0  15008015  dma_cfg zero, zero, r24, 10
0007d4  1500e014  dma_cfg zero, zero, r14, 10
0007d8  15004014  dma_cfg zero, zero, r4, 10
0007dc  15005015  dma_cfg zero, zero, r21, 10
0007e0  1500a014  dma_cfg zero, zero, r10, 10
0007e4  15001014  dma_cfg zero, zero, r1, 10
0007e8  9f101000  addli r1, zero, 9
0007ec  15001014  dma_cfg zero, zero, r1, 10
0007f0  9f201000  addli r1, zero, 10
0007f4  15001014  dma_cfg zero, zero, r1, 10
0007f8  9f301000  addli r1, zero, 11
0007fc  15001014  dma_cfg zero, zero, r1, 10
000800  9f401000  addli r1, zero, 12
000804  15001014  dma_cfg zero, zero, r1, 10
000808  9f601000  addli r1, zero, 14
00080c  1500c014  dma_cfg zero, zero, r12, 10
000810  15001014  dma_cfg zero, zero, r1, 10
000814  9f701000  addli r1, zero, 15
000818  15001014  dma_cfg zero, zero, r1, 10
00081c  9f102000  addli r1, zero, 17
000820  15006015  dma_cfg zero, zero, r22, 10
000824  15001014  dma_cfg zero, zero, r1, 10
000828  9f202000  addli r1, zero, 18
00082c  15001014  dma_cfg zero, zero, r1, 10
000830  9f302000  addli r1, zero, 19
000834  15001014  dma_cfg zero, zero, r1, 10
000838  9f402000  addli r1, zero, 20
00083c  15001014  dma_cfg zero, zero, r1, 10
000840  9f502000  addli r1, zero, 21
000844  15001014  dma_cfg zero, zero, r1, 10
000848  9f602000  addli r1, zero, 22
00084c  15001014  dma_cfg zero, zero, r1, 10
000850  9f702000  addli r1, zero, 23
000854  15001014  dma_cfg zero, zero, r1, 10
000858  9f003000  addli r1, zero, 24
00085c  15001014  dma_cfg zero, zero, r1, 10
000860  9f103000  addli r1, zero, 25
000864  15001014  dma_cfg zero, zero, r1, 10
000868  9f203000  addli r1, zero, 26
00086c  15001014  dma_cfg zero, zero, r1, 10
000870  9f303000  addli r1, zero, 27
000874  15001014  dma_cfg zero, zero, r1, 10
000878  9f403000  addli r1, zero, 28
00087c  15001014  dma_cfg zero, zero, r1, 10
000880  9f503000  addli r1, zero, 29
000884  15001014  dma_cfg zero, zero, r1, 10
000888  9f603000  addli r1, zero, 30
00088c  15001014  dma_cfg zero, zero, r1, 10
000890  9f703000  addli r1, zero, 31
000894  15001014  dma_cfg zero, zero, r1, 10
000898  958b0b00  dma_cfg r23, r23, zero, 0
00089c  950b0002  dma_cfg r23, zero, zero, 1
0008a0  15000004  dma_cfg zero, zero, zero, 2
0008a4  1501d006  dma_cfg r2, zero, r13, 3
0008a8  150ae008  dma_cfg r20, zero, r14, 4
0008ac  9502d00a  dma_cfg r5, zero, r13, 5
0008b0  15000010  dma_cfg zero, zero, zero, 8
0008b4  35000000  dma_run zero
0008b8  1500700b  dma_cfg zero, zero, r23, 5
0008bc  15000010  dma_cfg zero, zero, zero, 8
0008c0  1d100200  unlock r4
0008c4  7d800a00  xsignal r21, 0
0008c8  3bd08801  bneq r17, r24, 20
0008cc  9f201000  addli r1, zero, 10
0008d0  7d900000  xwait r1, 0
0008d4  9f601000  addli r1, zero, 14
0008d8  7d900000  xwait r1, 0
0008dc  ab000700  lui r1, 112
0008e0  3d000000  xfence
0008e4  b3060a28  zext_int2long r[14:15], r20
0008e8  00a00300  mfence { lm, sm, gm }
0008ec  9b900080  ori r1, r1, 2048
0008f0  8b9c1110  add.s r25, r3, r1
0008f4  9f70f001  addli r1, zero, 255
0008f8  80a20004  csr_set csr5, r1
0008fc  b3000528  zext_int2long r[2:3], r10
000900  733c1ffa  store.d r[2:3], -72(r30)
000904  00e00200  sync_core
000908  3ba70800  bneq r17, zero, 456
00090c  b3000028  zext_int2long r[2:3], zero
000910  3d000000  xfence
000914  00a00300  mfence { lm, sm, gm }
000918  27820000  addli.d r[5:6], r[2:3], 0
00091c  73381ffe  store.d r[2:3], -16(r30)
000920  db030000  j 28
000924  eb508ffb  load.d r[2:3], -72(r30)
000928  6b528fff  load.d r[5:6], -8(r30)
00092c  1f750000  addli r10, zero, 7
000930  93201204  setlt.ul r1, r[5:6], r[2:3]
000934  27120200  addli.d r[5:6], r[5:6], 1
000938  37c60000  beq r1, zero, 400
00093c  6b540fff  load.d r[9:10], -16(r30)
000940  1733a202  sll.d r[7:8], r[5:6], r10
000944  733c4ffe  store.d r[5:6], -8(r30)
000948  db040000  j 36
00094c  27440400  addli.d r[9:10], r[9:10], 4
000950  0b924c11  add.s r4, r25, r20
000954  1321d402  setneq.d r2, r[9:10], r[14:15]
000958  73665201  stores.w r21, 12(r4)
00095c  73646201  stores.w r22, 8(r4)
000960  73628201  stores.w r24, 4(r4)
000964  73601200  stores.w r1, 0(r4)
000968  b77e01fe  beq r2, zero, -68
00096c  8b206410  add.ul r[2:3], r[9:10], r[7:8]
000970  1bba2000  slli r20, r1, 2
000974  8b904111  add.s r1, r3, r20
000978  6fc5c000  loads.w r10, 12(r1)
00097c  efc50000  loads.w r11, 0(r1)
000980  6fce4000  loads.w r28, 4(r1)
000984  efcb8000  loads.w r23, 8(r1)
000988  97083501  and r17, r10, r19
00098c  93801d05  setlt.u r1, r27, r17
000990  3bb00000  bneq r1, zero, 12
000994  9f0a0500  addli r21, r10, 0
000998  5b010000  j 8
00099c  971aa501  or r21, r10, r26
0009a0  17863b01  and r12, r23, r19
0009a4  9380cd04  setlt.u r1, r27, r12
0009a8  3bb00000  bneq r1, zero, 12
0009ac  1f8b0b00  addli r22, r23, 0
0009b0  5b010000  j 8
0009b4  179bab01  or r22, r23, r26
0009b8  17013e01  and r2, r28, r19
0009bc  93802d04  setlt.u r1, r27, r2
0009c0  3bb00000  bneq r1, zero, 12
0009c4  1f0c0e00  addli r24, r28, 0
0009c8  5b010000  j 8
0009cc  171cae01  or r24, r28, r26
0009d0  17823501  and r4, r11, r19
0009d4  93804d04  setlt.u r1, r27, r4
0009d8  3bd00000  bneq r1, zero, 20
0009dc  9f800500  addli r1, r11, 0
0009e0  13024804  setlt.u r4, r16, r4
0009e4  37500200  beq r4, zero, 20
0009e8  db040000  j 36
0009ec  9790a501  or r1, r11, r26
0009f0  13024804  setlt.u r4, r16, r4
0009f4  3b600200  bneq r4, zero, 24
0009f8  9bc00501  srli r1, r11, 16
0009fc  9b801000  andi r1, r1, 1
000a00  8b901510  add.s r1, r11, r1
000a04  8b90f010  add.s r1, r1, r15
000a08  97802001  and r1, r1, r18
000a0c  13012804  setlt.u r2, r16, r2
000a10  bb300100  bneq r2, zero, 44
000a14  1b410e01  srli r2, r28, 16
000a18  1b011100  andi r2, r2, 1
000a1c  0b112e10  add.s r2, r28, r2
000a20  0b11f110  add.s r2, r2, r15
000a24  170c2101  and r24, r2, r18
000a28  1301c804  setlt.u r2, r16, r12
000a2c  37600100  beq r2, zero, 24
000a30  13011805  setlt.u r2, r16, r17
000a34  3b6c01fe  bneq r2, zero, -232
000a38  5b050000  j 40
000a3c  1301c804  setlt.u r2, r16, r12
000a40  bb4f01fe  bneq r2, zero, -16
000a44  1bc10b01  srli r2, r23, 16
000a48  1b011100  andi r2, r2, 1
000a4c  0b912b10  add.s r2, r23, r2
000a50  0b11f110  add.s r2, r2, r15
000a54  170b2101  and r22, r2, r18
000a58  13011805  setlt.u r2, r16, r17
000a5c  bb4b01fe  bneq r2, zero, -272
000a60  1b410501  srli r2, r10, 16
000a64  1b011100  andi r2, r2, 1
000a68  0b112510  add.s r2, r10, r2
000a6c  0b11f110  add.s r2, r2, r15
000a70  970a2101  and r21, r2, r18
000a74  5bdbffff  j -296
000a78  37b0e80e  beq r17, r14, 7180
000a7c  3ba2a80e  bneq r17, r10, 7304
000a80  9f101000  addli r1, zero, 9
000a84  e7490ffe  storeli.w zero, -100(r30)
000a88  7d900a00  xwait r21, 0
000a8c  7d900000  xwait r1, 0
000a90  1d000000  lock zero, zero
000a94  9f100000  addli r1, zero, 1
000a98  810c0000  ds_cfg r25, zero, 0
000a9c  010a0002  ds_cfg r20, zero, 1
000aa0  8106001c  ds_cfg r13, zero, 14
000aa4  010a001a  ds_cfg r20, zero, 13
000aa8  c101d104  shuffle_coa r3, r2, r13, 2
000aac  1d100000  unlock zero
000ab0  7d000500  xsignal r10, 0
000ab4  670a1ffe  storeli.w r1, -96(r30)
000ab8  9f001000  addli r1, zero, 8
000abc  7d800000  xsignal r1, 0
000ac0  3bf888ff  bneq r17, r24, -484
000ac4  5bc1ffff  j -504
000ac8  80380002  core_id r17
000acc  00200100  mfence { sm }
000ad0  9f701000  addli r1, zero, 15
000ad4  b3800028  zext_int2long r[2:3], r1
000ad8  733c1ffe  store.d r[2:3], -8(r30)
000adc  9f100000  addli r1, zero, 1
000ae0  bbd51800  bneq r17, r1, 372
000ae4  9f001000  addli r1, zero, 8
000ae8  3d000000  xfence
000aec  00a00300  mfence { lm, sm, gm }
000af0  33820028  zext_int2long r[5:6], r1
000af4  db030000  j 28
000af8  eb508fff  load.d r[2:3], -8(r30)
000afc  6b520fff  load.d r[5:6], -16(r30)
000b00  1f750000  addli r10, zero, 7
000b04  93201204  setlt.ul r1, r[5:6], r[2:3]
000b08  27120200  addli.d r[5:6], r[5:6], 1
000b0c  37850000  beq r1, zero, 320
000b10  73384ffe  store.d r[5:6], -16(r30)
000b14  1732a202  sll.d r[5:6], r[5:6], r10
000b18  33030028  zext_int2long r[7:8], zero
000b1c  db040000  j 36
000b20  27430300  addli.d r[7:8], r[7:8], 4
000b24  0b918c10  add.s r2, r25, r8
000b28  9320d302  setneq.d r1, r[7:8], r[14:15]
000b2c  7366a100  stores.w r10, 12(r2)
000b30  73644101  stores.w r20, 8(r2)
000b34  73626101  stores.w r22, 4(r2)
000b38  7360b100  stores.w r11, 0(r2)
000b3c  b7fe00fe  beq r1, zero, -68
000b40  8b204310  add.ul r[2:3], r[7:8], r[5:6]
000b44  1bb42000  slli r8, r1, 2
000b48  8b908110  add.s r1, r3, r8
000b4c  efc4c000  loads.w r9, 12(r1)
000b50  6fcc0000  loads.w r24, 0(r1)
000b54  efcb4000  loads.w r23, 4(r1)
000b58  efca8000  loads.w r21, 8(r1)
000b5c  97883401  and r17, r9, r19
000b60  93801d05  setlt.u r1, r27, r17
000b64  3bb00000  bneq r1, zero, 12
000b68  1f850400  addli r10, r9, 0
000b6c  5b010000  j 8
000b70  1795a401  or r10, r9, r26
000b74  17863a01  and r12, r21, r19
000b78  9380cd04  setlt.u r1, r27, r12
000b7c  3bb00000  bneq r1, zero, 12
000b80  1f8a0a00  addli r20, r21, 0
000b84  5b010000  j 8
000b88  179aaa01  or r20, r21, r26
000b8c  178e3b01  and r28, r23, r19
000b90  9380cd05  setlt.u r1, r27, r28
000b94  3bb00000  bneq r1, zero, 12
000b98  1f8b0b00  addli r22, r23, 0
000b9c  5b010000  j 8
000ba0  179bab01  or r22, r23, r26
000ba4  97003c01  and r1, r24, r19
000ba8  13811d04  setlt.u r2, r27, r1
000bac  3b500100  bneq r2, zero, 20
000bb0  9f050c00  addli r11, r24, 0
000bb4  93001804  setlt.u r1, r16, r1
000bb8  37d00000  beq r1, zero, 20
000bbc  db040000  j 36
000bc0  9715ac01  or r11, r24, r26
000bc4  93001804  setlt.u r1, r16, r1
000bc8  3be00000  bneq r1, zero, 24
000bcc  9b400c01  srli r1, r24, 16
000bd0  9b801000  andi r1, r1, 1
000bd4  8b101c10  add.s r1, r24, r1
000bd8  8b90f010  add.s r1, r1, r15
000bdc  97852001  and r11, r1, r18
000be0  9300c805  setlt.u r1, r16, r28
000be4  bbb00000  bneq r1, zero, 44
000be8  9bc00b01  srli r1, r23, 16
000bec  9b801000  andi r1, r1, 1
000bf0  8b901b10  add.s r1, r23, r1
000bf4  8b90f010  add.s r1, r1, r15
000bf8  178b2001  and r22, r1, r18
000bfc  9300c804  setlt.u r1, r16, r12
000c00  37e00000  beq r1, zero, 24
000c04  93001805  setlt.u r1, r16, r17
000c08  3bec00fe  bneq r1, zero, -232
000c0c  5b050000  j 40
000c10  9300c804  setlt.u r1, r16, r12
000c14  bbcf00fe  bneq r1, zero, -16
000c18  9bc00a01  srli r1, r21, 16
000c1c  9b801000  andi r1, r1, 1
000c20  8b901a10  add.s r1, r21, r1
000c24  8b90f010  add.s r1, r1, r15
000c28  178a2001  and r20, r1, r18
000c2c  93001805  setlt.u r1, r16, r17
000c30  bbcb00fe  bneq r1, zero, -272
000c34  9bc00401  srli r1, r9, 16
000c38  9b801000  andi r1, r1, 1
000c3c  8b901410  add.s r1, r9, r1
000c40  8b90f010  add.s r1, r1, r15
000c44  17852001  and r10, r1, r18
000c48  5bdbffff  j -296
000c4c  80380002  core_id r17
000c50  00200100  mfence { sm }
000c54  9f702000  addli r1, zero, 23
000c58  b3800028  zext_int2long r[2:3], r1
000c5c  73381ffe  store.d r[2:3], -16(r30)
000c60  e3003fff  loadli.w r1,  -104(r30)
000c64  b7d50000  beq r1, zero, 372
000c68  9f002000  addli r1, zero, 16
000c6c  3d000000  xfence
000c70  00a00300  mfence { lm, sm, gm }
000c74  33820028  zext_int2long r[5:6], r1
000c78  db030000  j 28
000c7c  eb500fff  load.d r[2:3], -16(r30)
000c80  6b528ffe  load.d r[5:6], -24(r30)
000c84  1f750000  addli r10, zero, 7
000c88  93201204  setlt.ul r1, r[5:6], r[2:3]
000c8c  27120200  addli.d r[5:6], r[5:6], 1
000c90  37850000  beq r1, zero, 320
000c94  73344ffe  store.d r[5:6], -24(r30)
000c98  1732a202  sll.d r[5:6], r[5:6], r10
000c9c  33030028  zext_int2long r[7:8], zero
000ca0  db040000  j 36
000ca4  27430300  addli.d r[7:8], r[7:8], 4
000ca8  0b918c10  add.s r2, r25, r8
000cac  9320d302  setneq.d r1, r[7:8], r[14:15]
000cb0  7366a100  stores.w r10, 12(r2)
000cb4  73644101  stores.w r20, 8(r2)
000cb8  73626101  stores.w r22, 4(r2)
000cbc  7360b100  stores.w r11, 0(r2)
000cc0  b7fe00fe  beq r1, zero, -68
000cc4  8b204310  add.ul r[2:3], r[7:8], r[5:6]
000cc8  1bb42000  slli r8, r1, 2
000ccc  8b908110  add.s r1, r3, r8
000cd0  efc4c000  loads.w r9, 12(r1)
000cd4  6fcc0000  loads.w r24, 0(r1)
000cd8  efcb4000  loads.w r23, 4(r1)
000cdc  efca8000  loads.w r21, 8(r1)
000ce0  97883401  and r17, r9, r19
000ce4  93801d05  setlt.u r1, r27, r17
000ce8  3bb00000  bneq r1, zero, 12
000cec  1f850400  addli r10, r9, 0
000cf0  5b010000  j 8
000cf4  1795a401  or r10, r9, r26
000cf8  17863a01  and r12, r21, r19
000cfc  9380cd04  setlt.u r1, r27, r12
000d00  3bb00000  bneq r1, zero, 12
000d04  1f8a0a00  addli r20, r21, 0
000d08  5b010000  j 8
000d0c  179aaa01  or r20, r21, r26
000d10  178e3b01  and r28, r23, r19
000d14  9380cd05  setlt.u r1, r27, r28
000d18  3bb00000  bneq r1, zero, 12
000d1c  1f8b0b00  addli r22, r23, 0
000d20  5b010000  j 8
000d24  179bab01  or r22, r23, r26
000d28  97003c01  and r1, r24, r19
000d2c  13811d04  setlt.u r2, r27, r1
000d30  3b500100  bneq r2, zero, 20
000d34  9f050c00  addli r11, r24, 0
000d38  93001804  setlt.u r1, r16, r1
000d3c  37d00000  beq r1, zero, 20
000d40  db040000  j 36
000d44  9715ac01  or r11, r24, r26
000d48  93001804  setlt.u r1, r16, r1
000d4c  3be00000  bneq r1, zero, 24
000d50  9b400c01  srli r1, r24, 16
000d54  9b801000  andi r1, r1, 1
000d58  8b101c10  add.s r1, r24, r1
000d5c  8b90f010  add.s r1, r1, r15
000d60  97852001  and r11, r1, r18
000d64  9300c805  setlt.u r1, r16, r28
000d68  bbb00000  bneq r1, zero, 44
000d6c  9bc00b01  srli r1, r23, 16
000d70  9b801000  andi r1, r1, 1
000d74  8b901b10  add.s r1, r23, r1
000d78  8b90f010  add.s r1, r1, r15
000d7c  178b2001  and r22, r1, r18
000d80  9300c804  setlt.u r1, r16, r12
000d84  37e00000  beq r1, zero, 24
000d88  93001805  setlt.u r1, r16, r17
000d8c  3bec00fe  bneq r1, zero, -232
000d90  5b050000  j 40
000d94  9300c804  setlt.u r1, r16, r12
000d98  bbcf00fe  bneq r1, zero, -16
000d9c  9bc00a01  srli r1, r21, 16
000da0  9b801000  andi r1, r1, 1
000da4  8b901a10  add.s r1, r21, r1
000da8  8b90f010  add.s r1, r1, r15
000dac  178a2001  and r20, r1, r18
000db0  93001805  setlt.u r1, r16, r17
000db4  bbcb00fe  bneq r1, zero, -272
000db8  9bc00401  srli r1, r9, 16
000dbc  9b801000  andi r1, r1, 1
000dc0  8b901410  add.s r1, r9, r1
000dc4  8b90f010  add.s r1, r1, r15
000dc8  17852001  and r10, r1, r18
000dcc  5bdbffff  j -296
000dd0  80380002  core_id r17
000dd4  00200100  mfence { sm }
000dd8  9f703000  addli r1, zero, 31
000ddc  b3800028  zext_int2long r[2:3], r1
000de0  73341ffe  store.d r[2:3], -24(r30)
000de4  9f300000  addli r1, zero, 3
000de8  bbd51800  bneq r17, r1, 372
000dec  9f003000  addli r1, zero, 24
000df0  3d000000  xfence
000df4  00a00300  mfence { lm, sm, gm }
000df8  33820028  zext_int2long r[5:6], r1
000dfc  db030000  j 28
000e00  eb508ffe  load.d r[2:3], -24(r30)
000e04  6b520ffe  load.d r[5:6], -32(r30)
000e08  1f750000  addli r10, zero, 7
000e0c  93201204  setlt.ul r1, r[5:6], r[2:3]
000e10  27120200  addli.d r[5:6], r[5:6], 1
000e14  37850000  beq r1, zero, 320
000e18  73304ffe  store.d r[5:6], -32(r30)
000e1c  1732a202  sll.d r[5:6], r[5:6], r10
000e20  33030028  zext_int2long r[7:8], zero
000e24  db040000  j 36
000e28  27430300  addli.d r[7:8], r[7:8], 4
000e2c  0b918c10  add.s r2, r25, r8
000e30  9320d302  setneq.d r1, r[7:8], r[14:15]
000e34  7366a100  stores.w r10, 12(r2)
000e38  73644101  stores.w r20, 8(r2)
000e3c  73626101  stores.w r22, 4(r2)
000e40  7360b100  stores.w r11, 0(r2)
000e44  b7fe00fe  beq r1, zero, -68
000e48  8b204310  add.ul r[2:3], r[7:8], r[5:6]
000e4c  1bb42000  slli r8, r1, 2
000e50  8b908110  add.s r1, r3, r8
000e54  efc4c000  loads.w r9, 12(r1)
000e58  6fcc0000  loads.w r24, 0(r1)
000e5c  efcb4000  loads.w r23, 4(r1)
000e60  efca8000  loads.w r21, 8(r1)
000e64  97883401  and r17, r9, r19
000e68  93801d05  setlt.u r1, r27, r17
000e6c  3bb00000  bneq r1, zero, 12
000e70  1f850400  addli r10, r9, 0
000e74  5b010000  j 8
000e78  1795a401  or r10, r9, r26
000e7c  17863a01  and r12, r21, r19
000e80  9380cd04  setlt.u r1, r27, r12
000e84  3bb00000  bneq r1, zero, 12
000e88  1f8a0a00  addli r20, r21, 0
000e8c  5b010000  j 8
000e90  179aaa01  or r20, r21, r26
000e94  178e3b01  and r28, r23, r19
000e98  9380cd05  setlt.u r1, r27, r28
000e9c  3bb00000  bneq r1, zero, 12
000ea0  1f8b0b00  addli r22, r23, 0
000ea4  5b010000  j 8
000ea8  179bab01  or r22, r23, r26
000eac  97003c01  and r1, r24, r19
000eb0  13811d04  setlt.u r2, r27, r1
000eb4  3b500100  bneq r2, zero, 20
000eb8  9f050c00  addli r11, r24, 0
000ebc  93001804  setlt.u r1, r16, r1
000ec0  37d00000  beq r1, zero, 20
000ec4  db040000  j 36
000ec8  9715ac01  or r11, r24, r26
000ecc  93001804  setlt.u r1, r16, r1
000ed0  3be00000  bneq r1, zero, 24
000ed4  9b400c01  srli r1, r24, 16
000ed8  9b801000  andi r1, r1, 1
000edc  8b101c10  add.s r1, r24, r1
000ee0  8b90f010  add.s r1, r1, r15
000ee4  97852001  and r11, r1, r18
000ee8  9300c805  setlt.u r1, r16, r28
000eec  bbb00000  bneq r1, zero, 44
000ef0  9bc00b01  srli r1, r23, 16
000ef4  9b801000  andi r1, r1, 1
000ef8  8b901b10  add.s r1, r23, r1
000efc  8b90f010  add.s r1, r1, r15
000f00  178b2001  and r22, r1, r18
000f04  9300c804  setlt.u r1, r16, r12
000f08  37e00000  beq r1, zero, 24
000f0c  93001805  setlt.u r1, r16, r17
000f10  3bec00fe  bneq r1, zero, -232
000f14  5b050000  j 40
000f18  9300c804  setlt.u r1, r16, r12
000f1c  bbcf00fe  bneq r1, zero, -16
000f20  9bc00a01  srli r1, r21, 16
000f24  9b801000  andi r1, r1, 1
000f28  8b901a10  add.s r1, r21, r1
000f2c  8b90f010  add.s r1, r1, r15
000f30  178a2001  and r20, r1, r18
000f34  93001805  setlt.u r1, r16, r17
000f38  bbcb00fe  bneq r1, zero, -272
000f3c  9bc00401  srli r1, r9, 16
000f40  9b801000  andi r1, r1, 1
000f44  8b901410  add.s r1, r9, r1
000f48  8b90f010  add.s r1, r1, r15
000f4c  17852001  and r10, r1, r18
000f50  5bdbffff  j -296
000f54  80380002  core_id r17
000f58  00200100  mfence { sm }
000f5c  9f704000  addli r1, zero, 39
000f60  b3800028  zext_int2long r[2:3], r1
000f64  73301ffe  store.d r[2:3], -32(r30)
000f68  e3403fff  loadli.w r1,  -100(r30)
000f6c  b7d50000  beq r1, zero, 372
000f70  9f004000  addli r1, zero, 32
000f74  3d000000  xfence
000f78  00a00300  mfence { lm, sm, gm }
000f7c  33820028  zext_int2long r[5:6], r1
000f80  db030000  j 28
000f84  eb500ffe  load.d r[2:3], -32(r30)
000f88  6b528ffd  load.d r[5:6], -40(r30)
000f8c  1f750000  addli r10, zero, 7
000f90  93201204  setlt.ul r1, r[5:6], r[2:3]
000f94  27120200  addli.d r[5:6], r[5:6], 1
000f98  37850000  beq r1, zero, 320
000f9c  733c4ffc  store.d r[5:6], -40(r30)
000fa0  1733a202  sll.d r[7:8], r[5:6], r10
000fa4  33020028  zext_int2long r[5:6], zero
000fa8  db040000  j 36
000fac  27420200  addli.d r[5:6], r[5:6], 4
000fb0  0b918c10  add.s r2, r25, r8
000fb4  9320d202  setneq.d r1, r[5:6], r[14:15]
000fb8  7366a100  stores.w r10, 12(r2)
000fbc  73644101  stores.w r20, 8(r2)
000fc0  73626101  stores.w r22, 4(r2)
000fc4  7360b100  stores.w r11, 0(r2)
000fc8  b7fe00fe  beq r1, zero, -68
000fcc  8b206210  add.ul r[2:3], r[5:6], r[7:8]
000fd0  1bb42000  slli r8, r1, 2
000fd4  8b908110  add.s r1, r3, r8
000fd8  efc4c000  loads.w r9, 12(r1)
000fdc  6fcc0000  loads.w r24, 0(r1)
000fe0  efcb4000  loads.w r23, 4(r1)
000fe4  efca8000  loads.w r21, 8(r1)
000fe8  97883401  and r17, r9, r19
000fec  93801d05  setlt.u r1, r27, r17
000ff0  3bb00000  bneq r1, zero, 12
000ff4  1f850400  addli r10, r9, 0
000ff8  5b010000  j 8
000ffc  1795a401  or r10, r9, r26
001000  17863a01  and r12, r21, r19
001004  9380cd04  setlt.u r1, r27, r12
001008  3bb00000  bneq r1, zero, 12
00100c  1f8a0a00  addli r20, r21, 0
001010  5b010000  j 8
001014  179aaa01  or r20, r21, r26
001018  178e3b01  and r28, r23, r19
00101c  9380cd05  setlt.u r1, r27, r28
001020  3bb00000  bneq r1, zero, 12
001024  1f8b0b00  addli r22, r23, 0
001028  5b010000  j 8
00102c  179bab01  or r22, r23, r26
001030  97003c01  and r1, r24, r19
001034  13811d04  setlt.u r2, r27, r1
001038  3b500100  bneq r2, zero, 20
00103c  9f050c00  addli r11, r24, 0
001040  93001804  setlt.u r1, r16, r1
001044  37d00000  beq r1, zero, 20
001048  db040000  j 36
00104c  9715ac01  or r11, r24, r26
001050  93001804  setlt.u r1, r16, r1
001054  3be00000  bneq r1, zero, 24
001058  9b400c01  srli r1, r24, 16
00105c  9b801000  andi r1, r1, 1
001060  8b101c10  add.s r1, r24, r1
001064  8b90f010  add.s r1, r1, r15
001068  97852001  and r11, r1, r18
00106c  9300c805  setlt.u r1, r16, r28
001070  bbb00000  bneq r1, zero, 44
001074  9bc00b01  srli r1, r23, 16
001078  9b801000  andi r1, r1, 1
00107c  8b901b10  add.s r1, r23, r1
001080  8b90f010  add.s r1, r1, r15
001084  178b2001  and r22, r1, r18
001088  9300c804  setlt.u r1, r16, r12
00108c  37e00000  beq r1, zero, 24
001090  93001805  setlt.u r1, r16, r17
001094  3bec00fe  bneq r1, zero, -232
001098  5b050000  j 40
00109c  9300c804  setlt.u r1, r16, r12
0010a0  bbcf00fe  bneq r1, zero, -16
0010a4  9bc00a01  srli r1, r21, 16
0010a8  9b801000  andi r1, r1, 1
0010ac  8b901a10  add.s r1, r21, r1
0010b0  8b90f010  add.s r1, r1, r15
0010b4  178a2001  and r20, r1, r18
0010b8  93001805  setlt.u r1, r16, r17
0010bc  bbcb00fe  bneq r1, zero, -272
0010c0  9bc00401  srli r1, r9, 16
0010c4  9b801000  andi r1, r1, 1
0010c8  8b901410  add.s r1, r9, r1
0010cc  8b90f010  add.s r1, r1, r15
0010d0  17852001  and r10, r1, r18
0010d4  5bdbffff  j -296
0010d8  80380002  core_id r17
0010dc  00200100  mfence { sm }
0010e0  9f705000  addli r1, zero, 47
0010e4  b3800028  zext_int2long r[2:3], r1
0010e8  733c1ffc  store.d r[2:3], -40(r30)
0010ec  9f500000  addli r1, zero, 5
0010f0  bbd51800  bneq r17, r1, 372
0010f4  9f005000  addli r1, zero, 40
0010f8  3d000000  xfence
0010fc  00a00300  mfence { lm, sm, gm }
001100  33820028  zext_int2long r[5:6], r1
001104  db030000  j 28
001108  eb508ffd  load.d r[2:3], -40(r30)
00110c  6b520ffd  load.d r[5:6], -48(r30)
001110  1f750000  addli r10, zero, 7
001114  93201204  setlt.ul r1, r[5:6], r[2:3]
001118  27120200  addli.d r[5:6], r[5:6], 1
00111c  37850000  beq r1, zero, 320
001120  73384ffc  store.d r[5:6], -48(r30)
001124  1733a202  sll.d r[7:8], r[5:6], r10
001128  33020028  zext_int2long r[5:6], zero
00112c  db040000  j 36
001130  27420200  addli.d r[5:6], r[5:6], 4
001134  8b901c10  add.s r1, r25, r1
001138  1321d202  setneq.d r2, r[5:6], r[14:15]
00113c  73e6a000  stores.w r10, 12(r1)
001140  73e44001  stores.w r20, 8(r1)
001144  73e26001  stores.w r22, 4(r1)
001148  73e0b000  stores.w r11, 0(r1)
00114c  b77e01fe  beq r2, zero, -68
001150  8b206210  add.ul r[2:3], r[5:6], r[7:8]
001154  9bb02000  slli r1, r1, 2
001158  0b941110  add.s r8, r3, r1
00115c  6f41c400  loads.w r2, 12(r8)
001160  6f4c0400  loads.w r24, 0(r8)
001164  ef4b4400  loads.w r23, 4(r8)
001168  ef4a8400  loads.w r21, 8(r8)
00116c  97083101  and r17, r2, r19
001170  13841d05  setlt.u r8, r27, r17
001174  3b300400  bneq r8, zero, 12
001178  1f050100  addli r10, r2, 0
00117c  5b010000  j 8
001180  1715a101  or r10, r2, r26
001184  17863a01  and r12, r21, r19
001188  1384cd04  setlt.u r8, r27, r12
00118c  3b300400  bneq r8, zero, 12
001190  1f8a0a00  addli r20, r21, 0
001194  5b010000  j 8
001198  179aaa01  or r20, r21, r26
00119c  178e3b01  and r28, r23, r19
0011a0  1384cd05  setlt.u r8, r27, r28
0011a4  3b300400  bneq r8, zero, 12
0011a8  1f8b0b00  addli r22, r23, 0
0011ac  5b010000  j 8
0011b0  179bab01  or r22, r23, r26
0011b4  17043c01  and r8, r24, r19
0011b8  93848d04  setlt.u r9, r27, r8
0011bc  3bd00400  bneq r9, zero, 20
0011c0  9f050c00  addli r11, r24, 0
0011c4  13048804  setlt.u r8, r16, r8
0011c8  37500400  beq r8, zero, 20
0011cc  db040000  j 36
0011d0  9715ac01  or r11, r24, r26
0011d4  13048804  setlt.u r8, r16, r8
0011d8  3b600400  bneq r8, zero, 24
0011dc  1b440c01  srli r8, r24, 16
0011e0  1b041400  andi r8, r8, 1
0011e4  0b148c10  add.s r8, r24, r8
0011e8  0b14f410  add.s r8, r8, r15
0011ec  97052401  and r11, r8, r18
0011f0  1304c805  setlt.u r8, r16, r28
0011f4  bb300400  bneq r8, zero, 44
0011f8  1bc40b01  srli r8, r23, 16
0011fc  1b041400  andi r8, r8, 1
001200  0b948b10  add.s r8, r23, r8
001204  0b14f410  add.s r8, r8, r15
001208  170b2401  and r22, r8, r18
00120c  1304c804  setlt.u r8, r16, r12
001210  37600400  beq r8, zero, 24
001214  13041805  setlt.u r8, r16, r17
001218  3b6c04fe  bneq r8, zero, -232
00121c  5b050000  j 40
001220  1304c804  setlt.u r8, r16, r12
001224  bb4f04fe  bneq r8, zero, -16
001228  1bc40a01  srli r8, r21, 16
00122c  1b041400  andi r8, r8, 1
001230  0b948a10  add.s r8, r21, r8
001234  0b14f410  add.s r8, r8, r15
001238  170a2401  and r20, r8, r18
00123c  13041805  setlt.u r8, r16, r17
001240  bb4b04fe  bneq r8, zero, -272
001244  1b440101  srli r8, r2, 16
001248  1b041400  andi r8, r8, 1
00124c  0b118110  add.s r2, r2, r8
001250  0b11f110  add.s r2, r2, r15
001254  17052101  and r10, r2, r18
001258  5bdbffff  j -296
00125c  80380002  core_id r17
001260  00200100  mfence { sm }
001264  9f706000  addli r1, zero, 55
001268  b3800028  zext_int2long r[2:3], r1
00126c  73381ffc  store.d r[2:3], -48(r30)
001270  9f600000  addli r1, zero, 6
001274  bbd51800  bneq r17, r1, 372
001278  9f006000  addli r1, zero, 48
00127c  3d000000  xfence
001280  00a00300  mfence { lm, sm, gm }
001284  33820028  zext_int2long r[5:6], r1
001288  db030000  j 28
00128c  eb500ffd  load.d r[2:3], -48(r30)
001290  6b528ffc  load.d r[5:6], -56(r30)
001294  1f750000  addli r10, zero, 7
001298  93201204  setlt.ul r1, r[5:6], r[2:3]
00129c  27120200  addli.d r[5:6], r[5:6], 1
0012a0  37850000  beq r1, zero, 320
0012a4  73344ffc  store.d r[5:6], -56(r30)
0012a8  1733a202  sll.d r[7:8], r[5:6], r10
0012ac  33020028  zext_int2long r[5:6], zero
0012b0  db040000  j 36
0012b4  27420200  addli.d r[5:6], r[5:6], 4
0012b8  8b901c10  add.s r1, r25, r1
0012bc  1321d202  setneq.d r2, r[5:6], r[14:15]
0012c0  73e6a000  stores.w r10, 12(r1)
0012c4  73e44001  stores.w r20, 8(r1)
0012c8  73e26001  stores.w r22, 4(r1)
0012cc  73e0b000  stores.w r11, 0(r1)
0012d0  b77e01fe  beq r2, zero, -68
0012d4  8b206210  add.ul r[2:3], r[5:6], r[7:8]
0012d8  9bb02000  slli r1, r1, 2
0012dc  0b941110  add.s r8, r3, r1
0012e0  6f41c400  loads.w r2, 12(r8)
0012e4  6f4c0400  loads.w r24, 0(r8)
0012e8  ef4b4400  loads.w r23, 4(r8)
0012ec  ef4a8400  loads.w r21, 8(r8)
0012f0  97083101  and r17, r2, r19
0012f4  13841d05  setlt.u r8, r27, r17
0012f8  3b300400  bneq r8, zero, 12
0012fc  1f050100  addli r10, r2, 0
001300  5b010000  j 8
001304  1715a101  or r10, r2, r26
001308  17863a01  and r12, r21, r19
00130c  1384cd04  setlt.u r8, r27, r12
001310  3b300400  bneq r8, zero, 12
001314  1f8a0a00  addli r20, r21, 0
001318  5b010000  j 8
00131c  179aaa01  or r20, r21, r26
001320  178e3b01  and r28, r23, r19
001324  1384cd05  setlt.u r8, r27, r28
001328  3b300400  bneq r8, zero, 12
00132c  1f8b0b00  addli r22, r23, 0
001330  5b010000  j 8
001334  179bab01  or r22, r23, r26
001338  17043c01  and r8, r24, r19
00133c  93848d04  setlt.u r9, r27, r8
001340  3bd00400  bneq r9, zero, 20
001344  9f050c00  addli r11, r24, 0
001348  13048804  setlt.u r8, r16, r8
00134c  37500400  beq r8, zero, 20
001350  db040000  j 36
001354  9715ac01  or r11, r24, r26
001358  13048804  setlt.u r8, r16, r8
00135c  3b600400  bneq r8, zero, 24
001360  1b440c01  srli r8, r24, 16
001364  1b041400  andi r8, r8, 1
001368  0b148c10  add.s r8, r24, r8
00136c  0b14f410  add.s r8, r8, r15
001370  97052401  and r11, r8, r18
001374  1304c805  setlt.u r8, r16, r28
001378  bb300400  bneq r8, zero, 44
00137c  1bc40b01  srli r8, r23, 16
001380  1b041400  andi r8, r8, 1
001384  0b948b10  add.s r8, r23, r8
001388  0b14f410  add.s r8, r8, r15
00138c  170b2401  and r22, r8, r18
001390  1304c804  setlt.u r8, r16, r12
001394  37600400  beq r8, zero, 24
001398  13041805  setlt.u r8, r16, r17
00139c  3b6c04fe  bneq r8, zero, -232
0013a0  5b050000  j 40
0013a4  1304c804  setlt.u r8, r16, r12
0013a8  bb4f04fe  bneq r8, zero, -16
0013ac  1bc40a01  srli r8, r21, 16
0013b0  1b041400  andi r8, r8, 1
0013b4  0b948a10  add.s r8, r21, r8
0013b8  0b14f410  add.s r8, r8, r15
0013bc  170a2401  and r20, r8, r18
0013c0  13041805  setlt.u r8, r16, r17
0013c4  bb4b04fe  bneq r8, zero, -272
0013c8  1b440101  srli r8, r2, 16
0013cc  1b041400  andi r8, r8, 1
0013d0  0b118110  add.s r2, r2, r8
0013d4  0b11f110  add.s r2, r2, r15
0013d8  17052101  and r10, r2, r18
0013dc  5bdbffff  j -296
0013e0  80380002  core_id r17
0013e4  00200100  mfence { sm }
0013e8  9f707000  addli r1, zero, 63
0013ec  b3800028  zext_int2long r[2:3], r1
0013f0  73341ffc  store.d r[2:3], -56(r30)
0013f4  e3004fff  loadli.w r1,  -96(r30)
0013f8  b7d50000  beq r1, zero, 372
0013fc  9f007000  addli r1, zero, 56
001400  3d000000  xfence
001404  00a00300  mfence { lm, sm, gm }
001408  33820028  zext_int2long r[5:6], r1
00140c  db030000  j 28
001410  eb508ffc  load.d r[2:3], -56(r30)
001414  6b520ffc  load.d r[5:6], -64(r30)
001418  1f750000  addli r10, zero, 7
00141c  93201204  setlt.ul r1, r[5:6], r[2:3]
001420  27120200  addli.d r[5:6], r[5:6], 1
001424  37850000  beq r1, zero, 320
001428  73304ffc  store.d r[5:6], -64(r30)
00142c  1733a202  sll.d r[7:8], r[5:6], r10
001430  33020028  zext_int2long r[5:6], zero
001434  db040000  j 36
001438  27420200  addli.d r[5:6], r[5:6], 4
00143c  8b901c10  add.s r1, r25, r1
001440  1321d202  setneq.d r2, r[5:6], r[14:15]
001444  73e6a000  stores.w r10, 12(r1)
001448  73e48001  stores.w r24, 8(r1)
00144c  73e27001  stores.w r23, 4(r1)
001450  73e09000  stores.w r9, 0(r1)
001454  b77e01fe  beq r2, zero, -68
001458  8b206210  add.ul r[2:3], r[5:6], r[7:8]
00145c  9bb02000  slli r1, r1, 2
001460  8b941110  add.s r9, r3, r1
001464  6fc1c400  loads.w r2, 12(r9)
001468  6fc60400  loads.w r12, 0(r9)
00146c  6fc44400  loads.w r8, 4(r9)
001470  6fcb8400  loads.w r22, 8(r9)
001474  97083101  and r17, r2, r19
001478  93841d05  setlt.u r9, r27, r17
00147c  3bb00400  bneq r9, zero, 12
001480  1f050100  addli r10, r2, 0
001484  5b010000  j 8
001488  1715a101  or r10, r2, r26
00148c  97053b01  and r11, r22, r19
001490  9384bd04  setlt.u r9, r27, r11
001494  3bb00400  bneq r9, zero, 12
001498  1f0c0b00  addli r24, r22, 0
00149c  5b010000  j 8
0014a0  171cab01  or r24, r22, r26
0014a4  170e3401  and r28, r8, r19
0014a8  9384cd05  setlt.u r9, r27, r28
0014ac  3bb00400  bneq r9, zero, 12
0014b0  9f0b0400  addli r23, r8, 0
0014b4  5b010000  j 8
0014b8  971ba401  or r23, r8, r26
0014bc  170a3601  and r20, r12, r19
0014c0  93844d05  setlt.u r9, r27, r20
0014c4  3bd00400  bneq r9, zero, 20
0014c8  9f040600  addli r9, r12, 0
0014cc  130a4805  setlt.u r20, r16, r20
0014d0  37500a00  beq r20, zero, 20
0014d4  db040000  j 36
0014d8  9714a601  or r9, r12, r26
0014dc  130a4805  setlt.u r20, r16, r20
0014e0  3b600a00  bneq r20, zero, 24
0014e4  9b440601  srli r9, r12, 16
0014e8  9b841400  andi r9, r9, 1
0014ec  8b149610  add.s r9, r12, r9
0014f0  8b94f410  add.s r9, r9, r15
0014f4  97842401  and r9, r9, r18
0014f8  1306c805  setlt.u r12, r16, r28
0014fc  bb300600  bneq r12, zero, 44
001500  1b460401  srli r12, r8, 16
001504  1b061600  andi r12, r12, 1
001508  0b14c410  add.s r8, r8, r12
00150c  0b14f410  add.s r8, r8, r15
001510  970b2401  and r23, r8, r18
001514  1304b804  setlt.u r8, r16, r11
001518  37600400  beq r8, zero, 24
00151c  13041805  setlt.u r8, r16, r17
001520  3b6c04fe  bneq r8, zero, -232
001524  5b050000  j 40
001528  1304b804  setlt.u r8, r16, r11
00152c  bb4f04fe  bneq r8, zero, -16
001530  1b440b01  srli r8, r22, 16
001534  1b041400  andi r8, r8, 1
001538  0b148b10  add.s r8, r22, r8
00153c  0b14f410  add.s r8, r8, r15
001540  170c2401  and r24, r8, r18
001544  13041805  setlt.u r8, r16, r17
001548  bb4b04fe  bneq r8, zero, -272
00154c  1b440101  srli r8, r2, 16
001550  1b041400  andi r8, r8, 1
001554  0b118110  add.s r2, r2, r8
001558  0b11f110  add.s r2, r2, r15
00155c  17052101  and r10, r2, r18
001560  5bdbffff  j -296
001564  80380002  core_id r17
001568  00200100  mfence { sm }
00156c  e3001fff  loadli.w r1,  -120(r30)
001570  1f01000f  addli r2, zero, 1920
001574  33020128  zext_int2long r[5:6], r2
001578  9bb07000  slli r1, r1, 7
00157c  b3800028  zext_int2long r[2:3], r1
001580  0ba24040  min.ul r[5:6], r[2:3], r[5:6]
001584  27020201  addli.d r[5:6], r[5:6], 128
001588  0b221248  max.ul r[5:6], r[5:6], r[2:3]
00158c  8b301218  sub.sl r[2:3], r[5:6], r[2:3]
001590  8baad040  min.ul r[22:23], r[2:3], r[14:15]
001594  9f70f001  addli r1, zero, 255
001598  80a20004  csr_set csr5, r1
00159c  9f300000  addli r1, zero, 3
0015a0  00e00200  sync_core
0015a4  73345ff9  store.d r[22:23], -120(r30)
0015a8  bba01800  bneq r17, r1, 40
0015ac  9f301000  addli r1, zero, 11
0015b0  7d800000  xsignal r1, 0
0015b4  9f401000  addli r1, zero, 12
0015b8  7d800000  xsignal r1, 0
0015bc  9f501000  addli r1, zero, 13
0015c0  7d900000  xwait r1, 0
0015c4  9f302000  addli r1, zero, 19
0015c8  7d900000  xwait r1, 0
0015cc  db6a0000  j 852
0015d0  e3006fff  loadli.w r1,  -80(r30)
0015d4  2b010700  lui r2, 112
0015d8  9bb09000  slli r1, r1, 9
0015dc  8b952010  add.s r11, r1, r2
0015e0  1f110000  addli r2, zero, 1
0015e4  3bcb2800  bneq r17, r2, 720
0015e8  6b520f01  load.d r[5:6], 16(r30)
0015ec  6b538ff7  load.d r[7:8], -136(r30)
0015f0  1f062000  addli r12, zero, 16
0015f4  1f340000  addli r8, zero, 3
0015f8  7d100600  xwait r12, 0
0015fc  63414fff  loadli.w r2,  -92(r30)
001600  0b226210  add.ul r[5:6], r[5:6], r[7:8]
001604  bf442400  blt.s r8, r2, 304
001608  9f540000  addli r9, zero, 5
00160c  9f130000  addli r7, zero, 1
001610  1f210000  addli r2, zero, 2
001614  1f630000  addli r6, zero, 6
001618  1d800400  lock zero, r9
00161c  15000014  dma_cfg zero, zero, zero, 10
001620  15007014  dma_cfg zero, zero, r7, 10
001624  15002014  dma_cfg zero, zero, r2, 10
001628  1f410000  addli r2, zero, 4
00162c  15008014  dma_cfg zero, zero, r8, 10
001630  15002014  dma_cfg zero, zero, r2, 10
001634  15009014  dma_cfg zero, zero, r9, 10
001638  15006014  dma_cfg zero, zero, r6, 10
00163c  1f031000  addli r6, zero, 8
001640  1500a014  dma_cfg zero, zero, r10, 10
001644  15006014  dma_cfg zero, zero, r6, 10
001648  1f131000  addli r6, zero, 9
00164c  15006014  dma_cfg zero, zero, r6, 10
001650  1f231000  addli r6, zero, 10
001654  15006014  dma_cfg zero, zero, r6, 10
001658  1f331000  addli r6, zero, 11
00165c  15006014  dma_cfg zero, zero, r6, 10
001660  1f431000  addli r6, zero, 12
001664  15006014  dma_cfg zero, zero, r6, 10
001668  1f531000  addli r6, zero, 13
00166c  15006014  dma_cfg zero, zero, r6, 10
001670  1f631000  addli r6, zero, 14
001674  15006014  dma_cfg zero, zero, r6, 10
001678  1f731000  addli r6, zero, 15
00167c  15006014  dma_cfg zero, zero, r6, 10
001680  1f132000  addli r6, zero, 17
001684  1500c014  dma_cfg zero, zero, r12, 10
001688  15006014  dma_cfg zero, zero, r6, 10
00168c  1f232000  addli r6, zero, 18
001690  15006014  dma_cfg zero, zero, r6, 10
001694  1f332000  addli r6, zero, 19
001698  15006014  dma_cfg zero, zero, r6, 10
00169c  1f432000  addli r6, zero, 20
0016a0  15006014  dma_cfg zero, zero, r6, 10
0016a4  1f532000  addli r6, zero, 21
0016a8  15006014  dma_cfg zero, zero, r6, 10
0016ac  1f632000  addli r6, zero, 22
0016b0  15006014  dma_cfg zero, zero, r6, 10
0016b4  1f732000  addli r6, zero, 23
0016b8  15006014  dma_cfg zero, zero, r6, 10
0016bc  1f033000  addli r6, zero, 24
0016c0  15006014  dma_cfg zero, zero, r6, 10
0016c4  1f133000  addli r6, zero, 25
0016c8  15006014  dma_cfg zero, zero, r6, 10
0016cc  1f233000  addli r6, zero, 26
0016d0  15006014  dma_cfg zero, zero, r6, 10
0016d4  1f333000  addli r6, zero, 27
0016d8  15006014  dma_cfg zero, zero, r6, 10
0016dc  1f433000  addli r6, zero, 28
0016e0  15006014  dma_cfg zero, zero, r6, 10
0016e4  1f533000  addli r6, zero, 29
0016e8  15006014  dma_cfg zero, zero, r6, 10
0016ec  1f633000  addli r6, zero, 30
0016f0  15006014  dma_cfg zero, zero, r6, 10
0016f4  1f733000  addli r6, zero, 31
0016f8  15006014  dma_cfg zero, zero, r6, 10
0016fc  1f038000  addli r6, zero, 64
001700  95830300  dma_cfg r7, r7, zero, 0
001704  95030002  dma_cfg r7, zero, zero, 1
001708  15000004  dma_cfg zero, zero, zero, 2
00170c  95056006  dma_cfg r11, zero, r6, 3
001710  1f030001  addli r6, zero, 128
001714  15032008  dma_cfg r6, zero, r2, 4
001718  1f010004  addli r2, zero, 512
00171c  1501700a  dma_cfg r2, zero, r7, 5
001720  15000010  dma_cfg zero, zero, zero, 8
001724  35000000  dma_run zero
001728  1500700a  dma_cfg zero, zero, r7, 5
00172c  15000010  dma_cfg zero, zero, zero, 8
001730  1d900400  unlock r9
001734  2b010700  lui r2, 112
001738  1f430000  addli r6, zero, 4
00173c  9f130000  addli r7, zero, 1
001740  1f0a8000  addli r20, zero, 64
001744  9f540000  addli r9, zero, 5
001748  1b110104  ori r2, r2, 64
00174c  1d000300  lock zero, r6
001750  95830300  dma_cfg r7, r7, zero, 0
001754  8b902010  add.s r1, r1, r2
001758  1ff13a00  addli r2, r21, 31
00175c  15800204  dma_cfg zero, r5, zero, 2
001760  95004207  dma_cfg r1, r4, r20, 3
001764  9b405100  srli r1, r2, 5
001768  1bb11a00  slli r2, r21, 1
00176c  1f020001  addli r4, zero, 128
001770  9f020002  addli r5, zero, 256
001774  9f0a0004  addli r21, zero, 512
001778  15021a08  dma_cfg r4, r20, r1, 4
00177c  1b01e103  andi r2, r2, 62
001780  958a720a  dma_cfg r21, r5, r7, 5
001784  9f220000  addli r5, zero, 2
001788  15002010  dma_cfg zero, zero, r2, 8
00178c  35000000  dma_run zero
001790  1500700a  dma_cfg zero, zero, r7, 5
001794  15000010  dma_cfg zero, zero, zero, 8
001798  1d100300  unlock r6
00179c  1d800400  lock zero, r9
0017a0  15000014  dma_cfg zero, zero, zero, 10
0017a4  15007014  dma_cfg zero, zero, r7, 10
0017a8  15005014  dma_cfg zero, zero, r5, 10
0017ac  9f620000  addli r5, zero, 6
0017b0  15008014  dma_cfg zero, zero, r8, 10
0017b4  15006014  dma_cfg zero, zero, r6, 10
0017b8  1f731000  addli r6, zero, 15
0017bc  15009014  dma_cfg zero, zero, r9, 10
0017c0  15005014  dma_cfg zero, zero, r5, 10
0017c4  9f021000  addli r5, zero, 8
0017c8  1500a014  dma_cfg zero, zero, r10, 10
0017cc  15005014  dma_cfg zero, zero, r5, 10
0017d0  9f121000  addli r5, zero, 9
0017d4  15005014  dma_cfg zero, zero, r5, 10
0017d8  9f221000  addli r5, zero, 10
0017dc  15005014  dma_cfg zero, zero, r5, 10
0017e0  9f321000  addli r5, zero, 11
0017e4  15005014  dma_cfg zero, zero, r5, 10
0017e8  9f421000  addli r5, zero, 12
0017ec  15005014  dma_cfg zero, zero, r5, 10
0017f0  9f521000  addli r5, zero, 13
0017f4  15005014  dma_cfg zero, zero, r5, 10
0017f8  9f621000  addli r5, zero, 14
0017fc  15005014  dma_cfg zero, zero, r5, 10
001800  9f122000  addli r5, zero, 17
001804  15006014  dma_cfg zero, zero, r6, 10
001808  1500c014  dma_cfg zero, zero, r12, 10
00180c  15005014  dma_cfg zero, zero, r5, 10
001810  9f222000  addli r5, zero, 18
001814  15005014  dma_cfg zero, zero, r5, 10
001818  9f322000  addli r5, zero, 19
00181c  15005014  dma_cfg zero, zero, r5, 10
001820  9f422000  addli r5, zero, 20
001824  15005014  dma_cfg zero, zero, r5, 10
001828  9f522000  addli r5, zero, 21
00182c  15005014  dma_cfg zero, zero, r5, 10
001830  9f622000  addli r5, zero, 22
001834  15005014  dma_cfg zero, zero, r5, 10
001838  9f722000  addli r5, zero, 23
00183c  15005014  dma_cfg zero, zero, r5, 10
001840  9f023000  addli r5, zero, 24
001844  15005014  dma_cfg zero, zero, r5, 10
001848  9f123000  addli r5, zero, 25
00184c  15005014  dma_cfg zero, zero, r5, 10
001850  9f223000  addli r5, zero, 26
001854  15005014  dma_cfg zero, zero, r5, 10
001858  9f323000  addli r5, zero, 27
00185c  15005014  dma_cfg zero, zero, r5, 10
001860  9f423000  addli r5, zero, 28
001864  15005014  dma_cfg zero, zero, r5, 10
001868  9f523000  addli r5, zero, 29
00186c  15005014  dma_cfg zero, zero, r5, 10
001870  9f623000  addli r5, zero, 30
001874  15005014  dma_cfg zero, zero, r5, 10
001878  9f723000  addli r5, zero, 31
00187c  15005014  dma_cfg zero, zero, r5, 10
001880  95830300  dma_cfg r7, r7, zero, 0
001884  95030002  dma_cfg r7, zero, zero, 1
001888  15000004  dma_cfg zero, zero, zero, 2
00188c  95054007  dma_cfg r11, zero, r20, 3
001890  15021008  dma_cfg r4, zero, r1, 4
001894  950a700a  dma_cfg r21, zero, r7, 5
001898  15002010  dma_cfg zero, zero, r2, 8
00189c  35000000  dma_run zero
0018a0  1500700a  dma_cfg zero, zero, r7, 5
0018a4  15000010  dma_cfg zero, zero, zero, 8
0018a8  1d900400  unlock r9
0018ac  7d000300  xsignal r6, 0
0018b0  5b0e0000  j 112
0018b4  9f500000  addli r1, zero, 5
0018b8  2b820000  lui r4, 8
0018bc  bb911800  bneq r17, r1, 100
0018c0  1f411000  addli r2, zero, 12
0018c4  9f000000  addli r1, zero, 0
0018c8  7d100100  xwait r2, 0
0018cc  1f711000  addli r2, zero, 15
0018d0  7d100100  xwait r2, 0
0018d4  1f210000  addli r2, zero, 2
0018d8  1d000100  lock zero, r2
0018dc  2b01803f  lui r2, 260096
0018e0  0d000002  ew_cfg zero, zero, zero, 1
0018e4  0d110100  ewcoeff_cfg r2, r2, zero, 0
0018e8  1f71f000  addli r2, zero, 127
0018ec  0d000104  ew_cfg zero, r2, zero, 2
0018f0  1f110000  addli r2, zero, 1
0018f4  0d010006  ew_cfg r2, zero, zero, 3
0018f8  0b911c10  add.s r2, r25, r1
0018fc  9f800004  addli r1, r1, 512
001900  2d01b100  dsmadd r2, r2, r11, 0
001904  bbdf40fe  bneq r1, r4, -12
001908  9f200000  addli r1, zero, 2
00190c  1d900000  unlock r1
001910  9f501000  addli r1, zero, 13
001914  7d800000  xsignal r1, 0
001918  9f002000  addli r1, zero, 16
00191c  7d800000  xsignal r1, 0
001920  ab000500  lui r1, 80
001924  3d000000  xfence
001928  00a00300  mfence { lm, sm, gm }
00192c  8b951110  add.s r11, r3, r1
001930  9f70f001  addli r1, zero, 255
001934  80a20004  csr_set csr5, r1
001938  00e00200  sync_core
00193c  6b528ffa  load.d r[5:6], -88(r30)
001940  37f20802  beq r17, zero, 1180
001944  9f100000  addli r1, zero, 1
001948  3bd81802  bneq r17, r1, 1556
00194c  9f001000  addli r1, zero, 8
001950  3d000000  xfence
001954  00a00300  mfence { lm, sm, gm }
001958  33820028  zext_int2long r[5:6], r1
00195c  db030000  j 28
001960  eb508fff  load.d r[2:3], -8(r30)
001964  6b520ffc  load.d r[5:6], -64(r30)
001968  1f750000  addli r10, zero, 7
00196c  93201204  setlt.ul r1, r[5:6], r[2:3]
001970  27120200  addli.d r[5:6], r[5:6], 1
001974  37850000  beq r1, zero, 320
001978  73304ffc  store.d r[5:6], -64(r30)
00197c  1733a202  sll.d r[7:8], r[5:6], r10
001980  33020028  zext_int2long r[5:6], zero
001984  db040000  j 36
001988  27420200  addli.d r[5:6], r[5:6], 4
00198c  8b901510  add.s r1, r11, r1
001990  1321d202  setneq.d r2, r[5:6], r[14:15]
001994  73e6a000  stores.w r10, 12(r1)
001998  73e46001  stores.w r22, 8(r1)
00199c  73e28000  stores.w r8, 4(r1)
0019a0  73e0c000  stores.w r12, 0(r1)
0019a4  b77e01fe  beq r2, zero, -68
0019a8  8b206210  add.ul r[2:3], r[5:6], r[7:8]
0019ac  9bb02000  slli r1, r1, 2
0019b0  0b941c10  add.s r8, r25, r1
0019b4  6f41c400  loads.w r2, 12(r8)
0019b8  6f4e0400  loads.w r28, 0(r8)
0019bc  ef444400  loads.w r9, 4(r8)
0019c0  ef4b8400  loads.w r23, 8(r8)
0019c4  97083101  and r17, r2, r19
0019c8  13841d05  setlt.u r8, r27, r17
0019cc  3b300400  bneq r8, zero, 12
0019d0  1f050100  addli r10, r2, 0
0019d4  5b010000  j 8
0019d8  1715a101  or r10, r2, r26
0019dc  178c3b01  and r24, r23, r19
0019e0  13848d05  setlt.u r8, r27, r24
0019e4  3b300400  bneq r8, zero, 12
0019e8  1f8b0b00  addli r22, r23, 0
0019ec  5b010000  j 8
0019f0  179bab01  or r22, r23, r26
0019f4  178a3401  and r20, r9, r19
0019f8  13844d05  setlt.u r8, r27, r20
0019fc  3b300400  bneq r8, zero, 12
001a00  1f840400  addli r8, r9, 0
001a04  5b010000  j 8
001a08  1794a401  or r8, r9, r26
001a0c  970a3e01  and r21, r28, r19
001a10  13865d05  setlt.u r12, r27, r21
001a14  3b500600  bneq r12, zero, 20
001a18  1f060e00  addli r12, r28, 0
001a1c  930a5805  setlt.u r21, r16, r21
001a20  37d00a00  beq r21, zero, 20
001a24  db040000  j 36
001a28  1716ae01  or r12, r28, r26
001a2c  930a5805  setlt.u r21, r16, r21
001a30  3be00a00  bneq r21, zero, 24
001a34  1b460e01  srli r12, r28, 16
001a38  1b061600  andi r12, r12, 1
001a3c  0b16ce10  add.s r12, r28, r12
001a40  0b16f610  add.s r12, r12, r15
001a44  17062601  and r12, r12, r18
001a48  130a4805  setlt.u r20, r16, r20
001a4c  bb300a00  bneq r20, zero, 44
001a50  1bc40401  srli r8, r9, 16
001a54  1b041400  andi r8, r8, 1
001a58  0b948410  add.s r8, r9, r8
001a5c  0b14f410  add.s r8, r8, r15
001a60  17042401  and r8, r8, r18
001a64  93048805  setlt.u r9, r16, r24
001a68  37e00400  beq r9, zero, 24
001a6c  93041805  setlt.u r9, r16, r17
001a70  3bec04fe  bneq r9, zero, -232
001a74  5b050000  j 40
001a78  93048805  setlt.u r9, r16, r24
001a7c  bbcf04fe  bneq r9, zero, -16
001a80  9bc40b01  srli r9, r23, 16
001a84  9b841400  andi r9, r9, 1
001a88  8b949b10  add.s r9, r23, r9
001a8c  8b94f410  add.s r9, r9, r15
001a90  178b2401  and r22, r9, r18
001a94  93041805  setlt.u r9, r16, r17
001a98  bbcb04fe  bneq r9, zero, -272
001a9c  9b440101  srli r9, r2, 16
001aa0  9b841400  andi r9, r9, 1
001aa4  0b119110  add.s r2, r2, r9
001aa8  0b11f110  add.s r2, r2, r15
001aac  17052101  and r10, r2, r18
001ab0  5bdbffff  j -296
001ab4  00200100  mfence { sm }
001ab8  80380002  core_id r17
001abc  6b528ffa  load.d r[5:6], -88(r30)
001ac0  e3003fff  loadli.w r1,  -104(r30)
001ac4  bb820002  bneq r1, zero, 1184
001ac8  9f300000  addli r1, zero, 3
001acc  3bd81802  bneq r17, r1, 1556
001ad0  9f003000  addli r1, zero, 24
001ad4  3d000000  xfence
001ad8  00a00300  mfence { lm, sm, gm }
001adc  33820028  zext_int2long r[5:6], r1
001ae0  db030000  j 28
001ae4  eb508ffe  load.d r[2:3], -24(r30)
001ae8  6b528fff  load.d r[5:6], -8(r30)
001aec  1f750000  addli r10, zero, 7
001af0  93201204  setlt.ul r1, r[5:6], r[2:3]
001af4  27120200  addli.d r[5:6], r[5:6], 1
001af8  37850000  beq r1, zero, 320
001afc  733c4ffe  store.d r[5:6], -8(r30)
001b00  1733a202  sll.d r[7:8], r[5:6], r10
001b04  33020028  zext_int2long r[5:6], zero
001b08  db040000  j 36
001b0c  27420200  addli.d r[5:6], r[5:6], 4
001b10  8b901510  add.s r1, r11, r1
001b14  1321d202  setneq.d r2, r[5:6], r[14:15]
001b18  73e6a000  stores.w r10, 12(r1)
001b1c  73e46001  stores.w r22, 8(r1)
001b20  73e28000  stores.w r8, 4(r1)
001b24  73e0c000  stores.w r12, 0(r1)
001b28  b77e01fe  beq r2, zero, -68
001b2c  8b206210  add.ul r[2:3], r[5:6], r[7:8]
001b30  9bb02000  slli r1, r1, 2
001b34  0b941c10  add.s r8, r25, r1
001b38  6f41c400  loads.w r2, 12(r8)
001b3c  6f4e0400  loads.w r28, 0(r8)
001b40  ef444400  loads.w r9, 4(r8)
001b44  ef4b8400  loads.w r23, 8(r8)
001b48  97083101  and r17, r2, r19
001b4c  13841d05  setlt.u r8, r27, r17
001b50  3b300400  bneq r8, zero, 12
001b54  1f050100  addli r10, r2, 0
001b58  5b010000  j 8
001b5c  1715a101  or r10, r2, r26
001b60  178c3b01  and r24, r23, r19
001b64  13848d05  setlt.u r8, r27, r24
001b68  3b300400  bneq r8, zero, 12
001b6c  1f8b0b00  addli r22, r23, 0
001b70  5b010000  j 8
001b74  179bab01  or r22, r23, r26
001b78  178a3401  and r20, r9, r19
001b7c  13844d05  setlt.u r8, r27, r20
001b80  3b300400  bneq r8, zero, 12
001b84  1f840400  addli r8, r9, 0
001b88  5b010000  j 8
001b8c  1794a401  or r8, r9, r26
001b90  970a3e01  and r21, r28, r19
001b94  13865d05  setlt.u r12, r27, r21
001b98  3b500600  bneq r12, zero, 20
001b9c  1f060e00  addli r12, r28, 0
001ba0  930a5805  setlt.u r21, r16, r21
001ba4  37d00a00  beq r21, zero, 20
001ba8  db040000  j 36
001bac  1716ae01  or r12, r28, r26
001bb0  930a5805  setlt.u r21, r16, r21
001bb4  3be00a00  bneq r21, zero, 24
001bb8  1b460e01  srli r12, r28, 16
001bbc  1b061600  andi r12, r12, 1
001bc0  0b16ce10  add.s r12, r28, r12
001bc4  0b16f610  add.s r12, r12, r15
001bc8  17062601  and r12, r12, r18
001bcc  130a4805  setlt.u r20, r16, r20
001bd0  bb300a00  bneq r20, zero, 44
001bd4  1bc40401  srli r8, r9, 16
001bd8  1b041400  andi r8, r8, 1
001bdc  0b948410  add.s r8, r9, r8
001be0  0b14f410  add.s r8, r8, r15
001be4  17042401  and r8, r8, r18
001be8  93048805  setlt.u r9, r16, r24
001bec  37e00400  beq r9, zero, 24
001bf0  93041805  setlt.u r9, r16, r17
001bf4  3bec04fe  bneq r9, zero, -232
001bf8  5b050000  j 40
001bfc  93048805  setlt.u r9, r16, r24
001c00  bbcf04fe  bneq r9, zero, -16
001c04  9bc40b01  srli r9, r23, 16
001c08  9b841400  andi r9, r9, 1
001c0c  8b949b10  add.s r9, r23, r9
001c10  8b94f410  add.s r9, r9, r15
001c14  178b2401  and r22, r9, r18
001c18  93041805  setlt.u r9, r16, r17
001c1c  bbcb04fe  bneq r9, zero, -272
001c20  9b440101  srli r9, r2, 16
001c24  9b841400  andi r9, r9, 1
001c28  0b119110  add.s r2, r2, r9
001c2c  0b11f110  add.s r2, r2, r15
001c30  17052101  and r10, r2, r18
001c34  5bdbffff  j -296
001c38  00200100  mfence { sm }
001c3c  80380002  core_id r17
001c40  6b528ffa  load.d r[5:6], -88(r30)
001c44  e3403fff  loadli.w r1,  -100(r30)
001c48  bb820002  bneq r1, zero, 1184
001c4c  9f500000  addli r1, zero, 5
001c50  3bd81802  bneq r17, r1, 1556
001c54  9f005000  addli r1, zero, 40
001c58  3d000000  xfence
001c5c  00a00300  mfence { lm, sm, gm }
001c60  33820028  zext_int2long r[5:6], r1
001c64  db030000  j 28
001c68  eb508ffd  load.d r[2:3], -40(r30)
001c6c  6b528fff  load.d r[5:6], -8(r30)
001c70  1f750000  addli r10, zero, 7
001c74  93201204  setlt.ul r1, r[5:6], r[2:3]
001c78  27120200  addli.d r[5:6], r[5:6], 1
001c7c  37850000  beq r1, zero, 320
001c80  1733a202  sll.d r[7:8], r[5:6], r10
001c84  330a0028  zext_int2long r[21:22], zero
001c88  733c4ffe  store.d r[5:6], -8(r30)
001c8c  db040000  j 36
001c90  274a0a00  addli.d r[21:22], r[21:22], 4
001c94  8b901510  add.s r1, r11, r1
001c98  1321da02  setneq.d r2, r[21:22], r[14:15]
001c9c  73e6a000  stores.w r10, 12(r1)
001ca0  73e46001  stores.w r22, 8(r1)
001ca4  73e28000  stores.w r8, 4(r1)
001ca8  73e0c000  stores.w r12, 0(r1)
001cac  b77e01fe  beq r2, zero, -68
001cb0  8b206a10  add.ul r[2:3], r[21:22], r[7:8]
001cb4  9bb02000  slli r1, r1, 2
001cb8  0b921c10  add.s r4, r25, r1
001cbc  6f41c200  loads.w r2, 12(r4)
001cc0  6f4e0200  loads.w r28, 0(r4)
001cc4  ef444200  loads.w r9, 4(r4)
001cc8  ef4b8200  loads.w r23, 8(r4)
001ccc  97083101  and r17, r2, r19
001cd0  13821d05  setlt.u r4, r27, r17
001cd4  3b300200  bneq r4, zero, 12
001cd8  1f050100  addli r10, r2, 0
001cdc  5b010000  j 8
001ce0  1715a101  or r10, r2, r26
001ce4  178c3b01  and r24, r23, r19
001ce8  13828d05  setlt.u r4, r27, r24
001cec  3b300200  bneq r4, zero, 12
001cf0  1f8b0b00  addli r22, r23, 0
001cf4  5b010000  j 8
001cf8  179bab01  or r22, r23, r26
001cfc  17823401  and r4, r9, r19
001d00  93824d04  setlt.u r5, r27, r4
001d04  3bb00200  bneq r5, zero, 12
001d08  1f840400  addli r8, r9, 0
001d0c  5b010000  j 8
001d10  1794a401  or r8, r9, r26
001d14  97023e01  and r5, r28, r19
001d18  13865d04  setlt.u r12, r27, r5
001d1c  3b500600  bneq r12, zero, 20
001d20  1f060e00  addli r12, r28, 0
001d24  93025804  setlt.u r5, r16, r5
001d28  37d00200  beq r5, zero, 20
001d2c  db040000  j 36
001d30  1716ae01  or r12, r28, r26
001d34  93025804  setlt.u r5, r16, r5
001d38  3be00200  bneq r5, zero, 24
001d3c  9b420e01  srli r5, r28, 16
001d40  9b821200  andi r5, r5, 1
001d44  8b125e10  add.s r5, r28, r5
001d48  8b92f210  add.s r5, r5, r15
001d4c  17862201  and r12, r5, r18
001d50  13024804  setlt.u r4, r16, r4
001d54  bb300200  bneq r4, zero, 44
001d58  1bc20401  srli r4, r9, 16
001d5c  1b021200  andi r4, r4, 1
001d60  0b924410  add.s r4, r9, r4
001d64  0b12f210  add.s r4, r4, r15
001d68  17042201  and r8, r4, r18
001d6c  13028805  setlt.u r4, r16, r24
001d70  37600200  beq r4, zero, 24
001d74  13021805  setlt.u r4, r16, r17
001d78  3b6c02fe  bneq r4, zero, -232
001d7c  5b050000  j 40
001d80  13028805  setlt.u r4, r16, r24
001d84  bb4f02fe  bneq r4, zero, -16
001d88  1bc20b01  srli r4, r23, 16
001d8c  1b021200  andi r4, r4, 1
001d90  0b924b10  add.s r4, r23, r4
001d94  0b12f210  add.s r4, r4, r15
001d98  170b2201  and r22, r4, r18
001d9c  13021805  setlt.u r4, r16, r17
001da0  bb4b02fe  bneq r4, zero, -272
001da4  1b420101  srli r4, r2, 16
001da8  1b021200  andi r4, r4, 1
001dac  0b114110  add.s r2, r2, r4
001db0  0b11f110  add.s r2, r2, r15
001db4  17052101  and r10, r2, r18
001db8  5bdbffff  j -296
001dbc  00200100  mfence { sm }
001dc0  80380002  core_id r17
001dc4  6b528ffa  load.d r[5:6], -88(r30)
001dc8  9f600000  addli r1, zero, 6
001dcc  b7821802  beq r17, r1, 1184
001dd0  e3004fff  loadli.w r1,  -96(r30)
001dd4  3bd80002  bneq r1, zero, 1556
001dd8  dbf00000  j 1924
001ddc  b3000028  zext_int2long r[2:3], zero
001de0  3d000000  xfence
001de4  00a00300  mfence { lm, sm, gm }
001de8  27820000  addli.d r[5:6], r[2:3], 0
001dec  73381ffa  store.d r[2:3], -80(r30)
001df0  db030000  j 28
001df4  eb508ffb  load.d r[2:3], -72(r30)
001df8  6b520ffc  load.d r[5:6], -64(r30)
001dfc  1f750000  addli r10, zero, 7
001e00  93201204  setlt.ul r1, r[5:6], r[2:3]
001e04  27120200  addli.d r[5:6], r[5:6], 1
001e08  37850000  beq r1, zero, 320
001e0c  6b530ffb  load.d r[7:8], -80(r30)
001e10  73304ffc  store.d r[5:6], -64(r30)
001e14  1732a202  sll.d r[5:6], r[5:6], r10
001e18  db040000  j 36
001e1c  27430300  addli.d r[7:8], r[7:8], 4
001e20  0b91a510  add.s r2, r11, r10
001e24  9320d302  setneq.d r1, r[7:8], r[14:15]
001e28  73661101  stores.w r17, 12(r2)
001e2c  73646101  stores.w r22, 8(r2)
001e30  73628100  stores.w r8, 4(r2)
001e34  7360c100  stores.w r12, 0(r2)
001e38  b7fe00fe  beq r1, zero, -68
001e3c  8b204310  add.ul r[2:3], r[7:8], r[5:6]
001e40  1bb52000  slli r10, r1, 2
001e44  8b90ac10  add.s r1, r25, r10
001e48  6fccc000  loads.w r24, 12(r1)
001e4c  6fc10000  loads.w r2, 0(r1)
001e50  efc44000  loads.w r9, 4(r1)
001e54  efcb8000  loads.w r23, 8(r1)
001e58  170e3c01  and r28, r24, r19
001e5c  9380cd05  setlt.u r1, r27, r28
001e60  3bb00000  bneq r1, zero, 12
001e64  9f080c00  addli r17, r24, 0
001e68  5b010000  j 8
001e6c  9718ac01  or r17, r24, r26
001e70  97803b01  and r1, r23, r19
001e74  13841d04  setlt.u r8, r27, r1
001e78  3b300400  bneq r8, zero, 12
001e7c  1f8b0b00  addli r22, r23, 0
001e80  5b010000  j 8
001e84  179bab01  or r22, r23, r26
001e88  178a3401  and r20, r9, r19
001e8c  13844d05  setlt.u r8, r27, r20
001e90  3b300400  bneq r8, zero, 12
001e94  1f840400  addli r8, r9, 0
001e98  5b010000  j 8
001e9c  1794a401  or r8, r9, r26
001ea0  970a3101  and r21, r2, r19
001ea4  13865d05  setlt.u r12, r27, r21
001ea8  3b500600  bneq r12, zero, 20
001eac  1f060100  addli r12, r2, 0
001eb0  930a5805  setlt.u r21, r16, r21
001eb4  37d00a00  beq r21, zero, 20
001eb8  db040000  j 36
001ebc  1716a101  or r12, r2, r26
001ec0  930a5805  setlt.u r21, r16, r21
001ec4  3be00a00  bneq r21, zero, 24
001ec8  1b460101  srli r12, r2, 16
001ecc  1b061600  andi r12, r12, 1
001ed0  0b11c110  add.s r2, r2, r12
001ed4  0b11f110  add.s r2, r2, r15
001ed8  17062101  and r12, r2, r18
001edc  13014805  setlt.u r2, r16, r20
001ee0  bb300100  bneq r2, zero, 44
001ee4  1bc10401  srli r2, r9, 16
001ee8  1b011100  andi r2, r2, 1
001eec  0b912410  add.s r2, r9, r2
001ef0  0b11f110  add.s r2, r2, r15
001ef4  17042101  and r8, r2, r18
001ef8  93001804  setlt.u r1, r16, r1
001efc  37e00000  beq r1, zero, 24
001f00  9300c805  setlt.u r1, r16, r28
001f04  3bec00fe  bneq r1, zero, -232
001f08  5b050000  j 40
001f0c  93001804  setlt.u r1, r16, r1
001f10  bbcf00fe  bneq r1, zero, -16
001f14  9bc00b01  srli r1, r23, 16
001f18  9b801000  andi r1, r1, 1
001f1c  8b901b10  add.s r1, r23, r1
001f20  8b90f010  add.s r1, r1, r15
001f24  178b2001  and r22, r1, r18
001f28  9300c805  setlt.u r1, r16, r28
001f2c  bbcb00fe  bneq r1, zero, -272
001f30  9b400c01  srli r1, r24, 16
001f34  9b801000  andi r1, r1, 1
001f38  8b101c10  add.s r1, r24, r1
001f3c  8b90f010  add.s r1, r1, r15
001f40  97882001  and r17, r1, r18
001f44  5bdbffff  j -296
001f48  00200100  mfence { sm }
001f4c  80380002  core_id r17
001f50  6b528ffa  load.d r[5:6], -88(r30)
001f54  9f100000  addli r1, zero, 1
001f58  b7d718fc  beq r17, r1, -1548
001f5c  e3003fff  loadli.w r1,  -104(r30)
001f60  b7ad00fc  beq r1, zero, -1176
001f64  9f002000  addli r1, zero, 16
001f68  3d000000  xfence
001f6c  00a00300  mfence { lm, sm, gm }
001f70  33820028  zext_int2long r[5:6], r1
001f74  db030000  j 28
001f78  eb500fff  load.d r[2:3], -16(r30)
001f7c  6b528fff  load.d r[5:6], -8(r30)
001f80  1f750000  addli r10, zero, 7
001f84  93201204  setlt.ul r1, r[5:6], r[2:3]
001f88  27120200  addli.d r[5:6], r[5:6], 1
001f8c  37850000  beq r1, zero, 320
001f90  733c4ffe  store.d r[5:6], -8(r30)
001f94  1733a202  sll.d r[7:8], r[5:6], r10
001f98  33020028  zext_int2long r[5:6], zero
001f9c  db040000  j 36
001fa0  27420200  addli.d r[5:6], r[5:6], 4
001fa4  8b901510  add.s r1, r11, r1
001fa8  1321d202  setneq.d r2, r[5:6], r[14:15]
001fac  73e6a000  stores.w r10, 12(r1)
001fb0  73e46001  stores.w r22, 8(r1)
001fb4  73e28000  stores.w r8, 4(r1)
001fb8  73e0c000  stores.w r12, 0(r1)
001fbc  b77e01fe  beq r2, zero, -68
001fc0  8b206210  add.ul r[2:3], r[5:6], r[7:8]
001fc4  9bb02000  slli r1, r1, 2
001fc8  0b941c10  add.s r8, r25, r1
001fcc  6f41c400  loads.w r2, 12(r8)
001fd0  6f4e0400  loads.w r28, 0(r8)
001fd4  ef444400  loads.w r9, 4(r8)
001fd8  ef4b8400  loads.w r23, 8(r8)
001fdc  97083101  and r17, r2, r19
001fe0  13841d05  setlt.u r8, r27, r17
001fe4  3b300400  bneq r8, zero, 12
001fe8  1f050100  addli r10, r2, 0
001fec  5b010000  j 8
001ff0  1715a101  or r10, r2, r26
001ff4  178c3b01  and r24, r23, r19
001ff8  13848d05  setlt.u r8, r27, r24
001ffc  3b300400  bneq r8, zero, 12
002000  1f8b0b00  addli r22, r23, 0
002004  5b010000  j 8
002008  179bab01  or r22, r23, r26
00200c  178a3401  and r20, r9, r19
002010  13844d05  setlt.u r8, r27, r20
002014  3b300400  bneq r8, zero, 12
002018  1f840400  addli r8, r9, 0
00201c  5b010000  j 8
002020  1794a401  or r8, r9, r26
002024  970a3e01  and r21, r28, r19
002028  13865d05  setlt.u r12, r27, r21
00202c  3b500600  bneq r12, zero, 20
002030  1f060e00  addli r12, r28, 0
002034  930a5805  setlt.u r21, r16, r21
002038  37d00a00  beq r21, zero, 20
00203c  db040000  j 36
002040  1716ae01  or r12, r28, r26
002044  930a5805  setlt.u r21, r16, r21
002048  3be00a00  bneq r21, zero, 24
00204c  1b460e01  srli r12, r28, 16
002050  1b061600  andi r12, r12, 1
002054  0b16ce10  add.s r12, r28, r12
002058  0b16f610  add.s r12, r12, r15
00205c  17062601  and r12, r12, r18
002060  130a4805  setlt.u r20, r16, r20
002064  bb300a00  bneq r20, zero, 44
002068  1bc40401  srli r8, r9, 16
00206c  1b041400  andi r8, r8, 1
002070  0b948410  add.s r8, r9, r8
002074  0b14f410  add.s r8, r8, r15
002078  17042401  and r8, r8, r18
00207c  93048805  setlt.u r9, r16, r24
002080  37e00400  beq r9, zero, 24
002084  93041805  setlt.u r9, r16, r17
002088  3bec04fe  bneq r9, zero, -232
00208c  5b050000  j 40
002090  93048805  setlt.u r9, r16, r24
002094  bbcf04fe  bneq r9, zero, -16
002098  9bc40b01  srli r9, r23, 16
00209c  9b841400  andi r9, r9, 1
0020a0  8b949b10  add.s r9, r23, r9
0020a4  8b94f410  add.s r9, r9, r15
0020a8  178b2401  and r22, r9, r18
0020ac  93041805  setlt.u r9, r16, r17
0020b0  bbcb04fe  bneq r9, zero, -272
0020b4  9b440101  srli r9, r2, 16
0020b8  9b841400  andi r9, r9, 1
0020bc  0b119110  add.s r2, r2, r9
0020c0  0b11f110  add.s r2, r2, r15
0020c4  17052101  and r10, r2, r18
0020c8  5bdbffff  j -296
0020cc  00200100  mfence { sm }
0020d0  80380002  core_id r17
0020d4  6b528ffa  load.d r[5:6], -88(r30)
0020d8  9f300000  addli r1, zero, 3
0020dc  b7d718fc  beq r17, r1, -1548
0020e0  e3403fff  loadli.w r1,  -100(r30)
0020e4  b7ad00fc  beq r1, zero, -1176
0020e8  9f004000  addli r1, zero, 32
0020ec  3d000000  xfence
0020f0  00a00300  mfence { lm, sm, gm }
0020f4  33820028  zext_int2long r[5:6], r1
0020f8  db030000  j 28
0020fc  eb500ffe  load.d r[2:3], -32(r30)
002100  6b528fff  load.d r[5:6], -8(r30)
002104  1f750000  addli r10, zero, 7
002108  93201204  setlt.ul r1, r[5:6], r[2:3]
00210c  27120200  addli.d r[5:6], r[5:6], 1
002110  37850000  beq r1, zero, 320
002114  733c4ffe  store.d r[5:6], -8(r30)
002118  173aa202  sll.d r[21:22], r[5:6], r10
00211c  33020028  zext_int2long r[5:6], zero
002120  db040000  j 36
002124  27420200  addli.d r[5:6], r[5:6], 4
002128  8b901510  add.s r1, r11, r1
00212c  1321d202  setneq.d r2, r[5:6], r[14:15]
002130  73e6a000  stores.w r10, 12(r1)
002134  73e46001  stores.w r22, 8(r1)
002138  73e28000  stores.w r8, 4(r1)
00213c  73e0c000  stores.w r12, 0(r1)
002140  b77e01fe  beq r2, zero, -68
002144  8b204211  add.ul r[2:3], r[5:6], r[21:22]
002148  9bb02000  slli r1, r1, 2
00214c  0b931c10  add.s r6, r25, r1
002150  6f41c300  loads.w r2, 12(r6)
002154  6f4e0300  loads.w r28, 0(r6)
002158  ef444300  loads.w r9, 4(r6)
00215c  ef4b8300  loads.w r23, 8(r6)
002160  97083101  and r17, r2, r19
002164  13831d05  setlt.u r6, r27, r17
002168  3b300300  bneq r6, zero, 12
00216c  1f050100  addli r10, r2, 0
002170  5b010000  j 8
002174  1715a101  or r10, r2, r26
002178  178c3b01  and r24, r23, r19
00217c  13838d05  setlt.u r6, r27, r24
002180  3b300300  bneq r6, zero, 12
002184  1f8b0b00  addli r22, r23, 0
002188  5b010000  j 8
00218c  179bab01  or r22, r23, r26
002190  17833401  and r6, r9, r19
002194  93836d04  setlt.u r7, r27, r6
002198  3bb00300  bneq r7, zero, 12
00219c  1f840400  addli r8, r9, 0
0021a0  5b010000  j 8
0021a4  1794a401  or r8, r9, r26
0021a8  97033e01  and r7, r28, r19
0021ac  13867d04  setlt.u r12, r27, r7
0021b0  3b500600  bneq r12, zero, 20
0021b4  1f060e00  addli r12, r28, 0
0021b8  93037804  setlt.u r7, r16, r7
0021bc  37d00300  beq r7, zero, 20
0021c0  db040000  j 36
0021c4  1716ae01  or r12, r28, r26
0021c8  93037804  setlt.u r7, r16, r7
0021cc  3be00300  bneq r7, zero, 24
0021d0  9b430e01  srli r7, r28, 16
0021d4  9b831300  andi r7, r7, 1
0021d8  8b137e10  add.s r7, r28, r7
0021dc  8b93f310  add.s r7, r7, r15
0021e0  17862301  and r12, r7, r18
0021e4  13036804  setlt.u r6, r16, r6
0021e8  bb300300  bneq r6, zero, 44
0021ec  1bc30401  srli r6, r9, 16
0021f0  1b031300  andi r6, r6, 1
0021f4  0b936410  add.s r6, r9, r6
0021f8  0b13f310  add.s r6, r6, r15
0021fc  17042301  and r8, r6, r18
002200  13038805  setlt.u r6, r16, r24
002204  37600300  beq r6, zero, 24
002208  13031805  setlt.u r6, r16, r17
00220c  3b6c03fe  bneq r6, zero, -232
002210  5b050000  j 40
002214  13038805  setlt.u r6, r16, r24
002218  bb4f03fe  bneq r6, zero, -16
00221c  1bc30b01  srli r6, r23, 16
002220  1b031300  andi r6, r6, 1
002224  0b936b10  add.s r6, r23, r6
002228  0b13f310  add.s r6, r6, r15
00222c  170b2301  and r22, r6, r18
002230  13031805  setlt.u r6, r16, r17
002234  bb4b03fe  bneq r6, zero, -272
002238  1b430101  srli r6, r2, 16
00223c  1b031300  andi r6, r6, 1
002240  0b116110  add.s r2, r2, r6
002244  0b11f110  add.s r2, r2, r15
002248  17052101  and r10, r2, r18
00224c  5bdbffff  j -296
002250  00200100  mfence { sm }
002254  80380002  core_id r17
002258  6b528ffa  load.d r[5:6], -88(r30)
00225c  9f500000  addli r1, zero, 5
002260  b7d718fc  beq r17, r1, -1548
002264  9f600000  addli r1, zero, 6
002268  bbad18fc  bneq r17, r1, -1176
00226c  9f006000  addli r1, zero, 48
002270  3d000000  xfence
002274  00a00300  mfence { lm, sm, gm }
002278  33820028  zext_int2long r[5:6], r1
00227c  db030000  j 28
002280  eb500ffd  load.d r[2:3], -48(r30)
002284  6b528fff  load.d r[5:6], -8(r30)
002288  1f750000  addli r10, zero, 7
00228c  93201204  setlt.ul r1, r[5:6], r[2:3]
002290  27120200  addli.d r[5:6], r[5:6], 1
002294  37850000  beq r1, zero, 320
002298  733c4ffe  store.d r[5:6], -8(r30)
00229c  1732a202  sll.d r[5:6], r[5:6], r10
0022a0  33030028  zext_int2long r[7:8], zero
0022a4  db040000  j 36
0022a8  27430300  addli.d r[7:8], r[7:8], 4
0022ac  0b91a510  add.s r2, r11, r10
0022b0  9320d302  setneq.d r1, r[7:8], r[14:15]
0022b4  73661101  stores.w r17, 12(r2)
0022b8  73646101  stores.w r22, 8(r2)
0022bc  73628100  stores.w r8, 4(r2)
0022c0  7360c100  stores.w r12, 0(r2)
0022c4  b7fe00fe  beq r1, zero, -68
0022c8  8b204310  add.ul r[2:3], r[7:8], r[5:6]
0022cc  1bb52000  slli r10, r1, 2
0022d0  8b90ac10  add.s r1, r25, r10
0022d4  6fcac000  loads.w r20, 12(r1)
0022d8  6fce0000  loads.w r28, 0(r1)
0022dc  efc44000  loads.w r9, 4(r1)
0022e0  efcb8000  loads.w r23, 8(r1)
0022e4  970a3a01  and r21, r20, r19
0022e8  93805d05  setlt.u r1, r27, r21
0022ec  3bb00000  bneq r1, zero, 12
0022f0  9f080a00  addli r17, r20, 0
0022f4  5b010000  j 8
0022f8  9718aa01  or r17, r20, r26
0022fc  178c3b01  and r24, r23, r19
002300  93808d05  setlt.u r1, r27, r24
002304  3bb00000  bneq r1, zero, 12
002308  1f8b0b00  addli r22, r23, 0
00230c  5b010000  j 8
002310  179bab01  or r22, r23, r26
002314  97803401  and r1, r9, r19
002318  13811d04  setlt.u r2, r27, r1
00231c  3b300100  bneq r2, zero, 12
002320  1f840400  addli r8, r9, 0
002324  5b010000  j 8
002328  1794a401  or r8, r9, r26
00232c  17013e01  and r2, r28, r19
002330  13862d04  setlt.u r12, r27, r2
002334  3b500600  bneq r12, zero, 20
002338  1f060e00  addli r12, r28, 0
00233c  13012804  setlt.u r2, r16, r2
002340  37500100  beq r2, zero, 20
002344  db040000  j 36
002348  1716ae01  or r12, r28, r26
00234c  13012804  setlt.u r2, r16, r2
002350  3b600100  bneq r2, zero, 24
002354  1b410e01  srli r2, r28, 16
002358  1b011100  andi r2, r2, 1
00235c  0b112e10  add.s r2, r28, r2
002360  0b11f110  add.s r2, r2, r15
002364  17062101  and r12, r2, r18
002368  93001804  setlt.u r1, r16, r1
00236c  bbb00000  bneq r1, zero, 44
002370  9bc00401  srli r1, r9, 16
002374  9b801000  andi r1, r1, 1
002378  8b901410  add.s r1, r9, r1
00237c  8b90f010  add.s r1, r1, r15
002380  17842001  and r8, r1, r18
002384  93008805  setlt.u r1, r16, r24
002388  37e00000  beq r1, zero, 24
00238c  93005805  setlt.u r1, r16, r21
002390  3bec00fe  bneq r1, zero, -232
002394  5b050000  j 40
002398  93008805  setlt.u r1, r16, r24
00239c  bbcf00fe  bneq r1, zero, -16
0023a0  9bc00b01  srli r1, r23, 16
0023a4  9b801000  andi r1, r1, 1
0023a8  8b901b10  add.s r1, r23, r1
0023ac  8b90f010  add.s r1, r1, r15
0023b0  178b2001  and r22, r1, r18
0023b4  93005805  setlt.u r1, r16, r21
0023b8  bbcb00fe  bneq r1, zero, -272
0023bc  9b400a01  srli r1, r20, 16
0023c0  9b801000  andi r1, r1, 1
0023c4  8b101a10  add.s r1, r20, r1
0023c8  8b90f010  add.s r1, r1, r15
0023cc  97882001  and r17, r1, r18
0023d0  5bdbffff  j -296
0023d4  00200100  mfence { sm }
0023d8  80380002  core_id r17
0023dc  6b528ffa  load.d r[5:6], -88(r30)
0023e0  e3004fff  loadli.w r1,  -96(r30)
0023e4  b7e50000  beq r1, zero, 376
0023e8  9f007000  addli r1, zero, 56
0023ec  3d000000  xfence
0023f0  00a00300  mfence { lm, sm, gm }
0023f4  33820028  zext_int2long r[5:6], r1
0023f8  db030000  j 28
0023fc  eb508ffc  load.d r[2:3], -56(r30)
002400  6b528fff  load.d r[5:6], -8(r30)
002404  1f750000  addli r10, zero, 7
002408  93201204  setlt.ul r1, r[5:6], r[2:3]
00240c  27120200  addli.d r[5:6], r[5:6], 1
002410  37850000  beq r1, zero, 320
002414  733c4ffe  store.d r[5:6], -8(r30)
002418  1732a202  sll.d r[5:6], r[5:6], r10
00241c  33030028  zext_int2long r[7:8], zero
002420  db040000  j 36
002424  27430300  addli.d r[7:8], r[7:8], 4
002428  0b91a510  add.s r2, r11, r10
00242c  9320d302  setneq.d r1, r[7:8], r[14:15]
002430  73661101  stores.w r17, 12(r2)
002434  73646101  stores.w r22, 8(r2)
002438  73628100  stores.w r8, 4(r2)
00243c  7360c100  stores.w r12, 0(r2)
002440  b7fe00fe  beq r1, zero, -68
002444  8b204310  add.ul r[2:3], r[7:8], r[5:6]
002448  1bb52000  slli r10, r1, 2
00244c  8b90ac10  add.s r1, r25, r10
002450  6fcac000  loads.w r20, 12(r1)
002454  6fce0000  loads.w r28, 0(r1)
002458  efc44000  loads.w r9, 4(r1)
00245c  efcb8000  loads.w r23, 8(r1)
002460  970a3a01  and r21, r20, r19
002464  93805d05  setlt.u r1, r27, r21
002468  3bb00000  bneq r1, zero, 12
00246c  9f080a00  addli r17, r20, 0
002470  5b010000  j 8
002474  9718aa01  or r17, r20, r26
002478  178c3b01  and r24, r23, r19
00247c  93808d05  setlt.u r1, r27, r24
002480  3bb00000  bneq r1, zero, 12
002484  1f8b0b00  addli r22, r23, 0
002488  5b010000  j 8
00248c  179bab01  or r22, r23, r26
002490  97803401  and r1, r9, r19
002494  13811d04  setlt.u r2, r27, r1
002498  3b300100  bneq r2, zero, 12
00249c  1f840400  addli r8, r9, 0
0024a0  5b010000  j 8
0024a4  1794a401  or r8, r9, r26
0024a8  17013e01  and r2, r28, r19
0024ac  13862d04  setlt.u r12, r27, r2
0024b0  3b500600  bneq r12, zero, 20
0024b4  1f060e00  addli r12, r28, 0
0024b8  13012804  setlt.u r2, r16, r2
0024bc  37500100  beq r2, zero, 20
0024c0  db040000  j 36
0024c4  1716ae01  or r12, r28, r26
0024c8  13012804  setlt.u r2, r16, r2
0024cc  3b600100  bneq r2, zero, 24
0024d0  1b410e01  srli r2, r28, 16
0024d4  1b011100  andi r2, r2, 1
0024d8  0b112e10  add.s r2, r28, r2
0024dc  0b11f110  add.s r2, r2, r15
0024e0  17062101  and r12, r2, r18
0024e4  93001804  setlt.u r1, r16, r1
0024e8  bbb00000  bneq r1, zero, 44
0024ec  9bc00401  srli r1, r9, 16
0024f0  9b801000  andi r1, r1, 1
0024f4  8b901410  add.s r1, r9, r1
0024f8  8b90f010  add.s r1, r1, r15
0024fc  17842001  and r8, r1, r18
002500  93008805  setlt.u r1, r16, r24
002504  37e00000  beq r1, zero, 24
002508  93005805  setlt.u r1, r16, r21
00250c  3bec00fe  bneq r1, zero, -232
002510  5b050000  j 40
002514  93008805  setlt.u r1, r16, r24
002518  bbcf00fe  bneq r1, zero, -16
00251c  9bc00b01  srli r1, r23, 16
002520  9b801000  andi r1, r1, 1
002524  8b901b10  add.s r1, r23, r1
002528  8b90f010  add.s r1, r1, r15
00252c  178b2001  and r22, r1, r18
002530  93005805  setlt.u r1, r16, r21
002534  bbcb00fe  bneq r1, zero, -272
002538  9b400a01  srli r1, r20, 16
00253c  9b801000  andi r1, r1, 1
002540  8b101a10  add.s r1, r20, r1
002544  8b90f010  add.s r1, r1, r15
002548  97882001  and r17, r1, r18
00254c  5bdbffff  j -296
002550  00200100  mfence { sm }
002554  80380002  core_id r17
002558  6b528ffa  load.d r[5:6], -88(r30)
00255c  9f70f001  addli r1, zero, 255
002560  1f3c0000  addli r24, zero, 3
002564  80a20004  csr_set csr5, r1
002568  00e00200  sync_core
00256c  b79388ef  beq r17, r24, -8988
002570  1f470000  addli r14, zero, 4
002574  1f0a0001  addli r20, zero, 128
002578  9f6a0000  addli r21, zero, 6
00257c  9f1b0000  addli r23, zero, 1
002580  9f500000  addli r1, zero, 5
002584  9f2c0000  addli r25, zero, 2
002588  1f0b2000  addli r22, zero, 16
00258c  9f068000  addli r13, zero, 64
002590  3ba11800  bneq r17, r1, 72
002594  9f102000  addli r1, zero, 17
002598  7d900000  xwait r1, 0
00259c  1d800c00  lock zero, r25
0025a0  ab00803f  lui r1, 260096
0025a4  8d0b0014  ew_cfg r23, zero, zero, 10
0025a8  0d000002  ew_cfg zero, zero, zero, 1
0025ac  8d100000  ewcoeff_cfg r1, zero, zero, 0
0025b0  eb500ff6  load.d r[2:3], -160(r30)
0025b4  0d000104  ew_cfg zero, r2, zero, 2
0025b8  9f202000  addli r1, zero, 18
0025bc  0d070006  ew_cfg r14, zero, zero, 3
0025c0  0d070726  ew_cfg r14, r14, zero, 19
0025c4  ad85b500  dsmadd r11, r11, r11, 0
0025c8  0d000014  ew_cfg zero, zero, zero, 10
0025cc  0d000026  ew_cfg zero, zero, zero, 19
0025d0  1d900c00  unlock r25
0025d4  db94fbff  j -9052
0025d8  bb9208ee  bneq r17, zero, -9052
0025dc  e340effe  loadli.w r1,  -140(r30)
0025e0  6b530ff8  load.d r[7:8], -128(r30)
0025e4  1f242000  addli r8, zero, 18
0025e8  7d100400  xwait r8, 0
0025ec  9bb06000  slli r1, r1, 6
0025f0  17338302  sll.d r[7:8], r[7:8], r8
0025f4  6b548f01  load.d r[9:10], 24(r30)
0025f8  b3900028  sext_int2long r[2:3], r1
0025fc  0b236410  add.ul r[7:8], r[9:10], r[7:8]
002600  1f540000  addli r8, zero, 5
002604  0bb24040  min.sl r[5:6], r[2:3], r[5:6]
002608  1d000400  lock zero, r8
00260c  27028200  addli.d r[5:6], r[5:6], 64
002610  eb558ff7  load.d r[12:13], -136(r30)
002614  958b0b00  dma_cfg r23, r23, zero, 0
002618  15800b02  dma_cfg zero, r23, zero, 1
00261c  0b321248  max.sl r[5:6], r[5:6], r[2:3]
002620  0b23b310  add.ul r[7:8], r[7:8], r[12:13]
002624  8b301218  sub.sl r[2:3], r[5:6], r[2:3]
002628  33820628  zext_int2long r[5:6], r13
00262c  95030004  dma_cfg r7, zero, zero, 2
002630  8bb04040  min.sl r[2:3], r[2:3], r[5:6]
002634  2b020500  lui r4, 80
002638  eb558ff8  load.d r[12:13], -120(r30)
00263c  9f020020  addli r5, zero, 4096
002640  1b120204  ori r4, r4, 64
002644  8b914110  add.s r3, r3, r4
002648  1ff23500  addli r4, r11, 31
00264c  1583d106  dma_cfg r6, r3, r13, 3
002650  9b415200  srli r3, r4, 5
002654  1bb21500  slli r4, r11, 1
002658  95063a08  dma_cfg r13, r20, r3, 4
00265c  9b01e203  andi r3, r4, 62
002660  1f020004  addli r4, zero, 512
002664  9502120a  dma_cfg r5, r4, r1, 5
002668  9f302000  addli r1, zero, 19
00266c  15003010  dma_cfg zero, zero, r3, 8
002670  35000000  dma_run zero
002674  1500700b  dma_cfg zero, zero, r23, 5
002678  15000010  dma_cfg zero, zero, zero, 8
00267c  1d100400  unlock r8
002680  5b7ffbff  j -9224
002684  1f011000  addli r2, zero, 8
002688  7d100700  xwait r14, 0
00268c  9f020000  addli r5, zero, 0
002690  1f120000  addli r4, zero, 1
002694  1f331000  addli r6, zero, 11
002698  7d100100  xwait r2, 0
00269c  1f110000  addli r2, zero, 1
0026a0  7d100300  xwait r6, 0
0026a4  1bb3e200  slli r6, r5, 14
0026a8  9bb28200  slli r5, r5, 8
0026ac  1d000100  lock zero, r2
0026b0  8986d600  mm_cfg r13, r13, r13, 0
0026b4  17133300  or r6, r6, r3
0026b8  97923200  or r5, r5, r3
0026bc  09072704  mm_cfg r14, r14, r2, 2
0026c0  a9826010  mm r5, r1, r6, 8
0026c4  1b031200  andi r6, r4, 1
0026c8  9f120000  addli r5, zero, 1
0026cc  1f020000  addli r4, zero, 0
0026d0  1d100100  unlock r2
0026d4  3b4f03fe  bneq r6, zero, -48
0026d8  9f500000  addli r1, zero, 5
0026dc  670a0ffe  storeli.w zero, -96(r30)
0026e0  7d800000  xsignal r1, 0
0026e4  9f101000  addli r1, zero, 9
0026e8  7d800000  xsignal r1, 0
0026ec  9f100000  addli r1, zero, 1
0026f0  e7491ffe  storeli.w r1, -100(r30)
0026f4  9f201000  addli r1, zero, 10
0026f8  7d800000  xsignal r1, 0
0026fc  bb8788f1  bneq r17, r24, -7712
002700  db39fcff  j -7732
002704  e7490ffe  storeli.w zero, -100(r30)
002708  670a0ffe  storeli.w zero, -96(r30)
00270c  378788f1  beq r17, r24, -7744
002710  db39fcff  j -7732
002714  7d000000  xsignal zero, 0
002718  bbe00800  bneq r17, zero, 56
00271c  9f200000  addli r1, zero, 2
002720  7d100000  xwait zero, 0
002724  7d100000  xwait zero, 0
002728  7d100000  xwait zero, 0
00272c  7d100000  xwait zero, 0
002730  7d100000  xwait zero, 0
002734  7d100000  xwait zero, 0
002738  7d100000  xwait zero, 0
00273c  7d100000  xwait zero, 0
002740  1d800000  lock zero, r1
002744  0d000020  ew_cfg zero, zero, zero, 16
002748  1d900000  unlock r1
00274c  7d400000  xsignal_mode_cfg zero
002750  9f8e5e01  addli sp, sp, 168
002754  00a00300  mfence { lm, sm, gm }
002758  00100000  exit
00275c  00100000  exit
002760  00100000  exit
002764  00100000  exit
002768  00100000  exit
00276c  00100000  exit
002770  00100000  exit
002774  00100000  exit
002778  00100000  exit
00277c  00100000  exit
002780  00100000  exit
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
