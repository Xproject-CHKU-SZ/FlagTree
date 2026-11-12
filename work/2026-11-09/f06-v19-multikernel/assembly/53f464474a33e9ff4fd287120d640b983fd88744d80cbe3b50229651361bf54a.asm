; SHA-256 53f464474a33e9ff4fd287120d640b983fd88744d80cbe3b50229651361bf54a
; P800 SDNN · XTDK LLVM 19 · 2639 / 2639 words decoded
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
0000b4  9f8e6efe  addli sp, sp, -208
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  00350002  core_id r10
0000c4  1f8f2e01  addli r30, sp, 144
0000c8  7dc00000  xsignal_mode_cfg r1
0000cc  37600100  beq r2, zero, 24
0000d0  abf0ffff  lui r1, 1048575
0000d4  9b90f0ff  ori r1, r1, 4095
0000d8  80a10004  csr_set csr3, r1
0000dc  00d00100  sync_group
0000e0  5b1d0000  j 232
0000e4  1f210000  addli r2, zero, 2
0000e8  fdd00000  uni_sram_cfg r1, r1
0000ec  abf1ffff  lui r3, 1048575
0000f0  1d000100  lock zero, r2
0000f4  8d000020  ew_cfg r1, zero, zero, 16
0000f8  9b90f1ff  ori r1, r3, 4095
0000fc  1d100100  unlock r2
000100  1f510000  addli r2, zero, 5
000104  80a10004  csr_set csr3, r1
000108  9f301000  addli r1, zero, 11
00010c  00d00100  sync_group
000110  7d800000  xsignal r1, 0
000114  7d800000  xsignal r1, 0
000118  7d800000  xsignal r1, 0
00011c  7d800000  xsignal r1, 0
000120  7d800000  xsignal r1, 0
000124  7d000100  xsignal r2, 0
000128  7d000100  xsignal r2, 0
00012c  7d000100  xsignal r2, 0
000130  7d000100  xsignal r2, 0
000134  7d000100  xsignal r2, 0
000138  9f300000  addli r1, zero, 3
00013c  1f111000  addli r2, zero, 9
000140  7d800000  xsignal r1, 0
000144  7d800000  xsignal r1, 0
000148  7d800000  xsignal r1, 0
00014c  7d800000  xsignal r1, 0
000150  7d800000  xsignal r1, 0
000154  7d000100  xsignal r2, 0
000158  7d000100  xsignal r2, 0
00015c  7d000100  xsignal r2, 0
000160  7d000100  xsignal r2, 0
000164  7d000100  xsignal r2, 0
000168  9f700000  addli r1, zero, 7
00016c  1f212000  addli r2, zero, 18
000170  7d800000  xsignal r1, 0
000174  7d800000  xsignal r1, 0
000178  7d800000  xsignal r1, 0
00017c  7d800000  xsignal r1, 0
000180  7d800000  xsignal r1, 0
000184  7d000100  xsignal r2, 0
000188  7d000100  xsignal r2, 0
00018c  7d000100  xsignal r2, 0
000190  7d000100  xsignal r2, 0
000194  7d000100  xsignal r2, 0
000198  9f002000  addli r1, zero, 16
00019c  1f611000  addli r2, zero, 14
0001a0  7d800000  xsignal r1, 0
0001a4  7d800000  xsignal r1, 0
0001a8  7d800000  xsignal r1, 0
0001ac  7d800000  xsignal r1, 0
0001b0  7d800000  xsignal r1, 0
0001b4  7d000100  xsignal r2, 0
0001b8  7d000100  xsignal r2, 0
0001bc  7d000100  xsignal r2, 0
0001c0  7d000100  xsignal r2, 0
0001c4  7d000100  xsignal r2, 0
0001c8  e3004f00  loadli.w r1,  32(r30)
0001cc  63414f00  loadli.w r2,  36(r30)
0001d0  00d20002  load_param_i r4, 1
0001d4  e3015f00  loadli.w r3,  40(r30)
0001d8  8b101120  mul.s r1, r2, r1
0001dc  1f010200  addli r2, r4, 0
0001e0  0b913050  fmac.s r2, r1, r3
0001e4  8b913020  mul.s r3, r1, r3
0001e8  1f71f1ff  addli r2, r2, -1
0001ec  0b114130  div.s r2, r2, r4
0001f0  00520002  load_param_i r4, 0
0001f4  8b104120  mul.s r1, r2, r4
0001f8  0b114150  fmac.s r2, r2, r4
0001fc  0b113140  min.s r2, r2, r3
000200  cb521112  ble.s r2, r1, 9396
000204  33110128  sext_int2long r[3:4], r2
000208  33930028  sext_int2long r[7:8], r1
00020c  abf0ff7f  lui r1, 524287
000210  1f068000  addli r12, zero, 64
000214  9f160000  addli r13, zero, 1
000218  9f770000  addli r15, zero, 7
00021c  1f581000  addli r16, zero, 13
000220  9f380000  addli r17, zero, 3
000224  1f490000  addli r18, zero, 4
000228  9f290000  addli r19, zero, 2
00022c  1f6b0000  addli r22, zero, 6
000230  1f072000  addli r14, zero, 16
000234  2b0a4000  lui r20, 1024
000238  ab0a807f  lui r21, 522240
00023c  ab0dffff  lui r27, 1048560
000240  9f050000  addli r11, zero, 0
000244  73382ff6  store.d r[3:4], -144(r30)
000248  1b9ef0ff  ori r28, r1, 4095
00024c  ab700000  lui r1, 7
000250  2bf17f7f  lui r2, 522239
000254  9b90f0ff  ori r1, r1, 4095
000258  9b11f1ff  ori r3, r2, 4095
00025c  5b0a0000  j 80
000260  1f611000  addli r2, zero, 14
000264  1f068000  addli r12, zero, 64
000268  9f160000  addli r13, zero, 1
00026c  9f770000  addli r15, zero, 7
000270  1f581000  addli r16, zero, 13
000274  1f490000  addli r18, zero, 4
000278  9f290000  addli r19, zero, 2
00027c  1f6b0000  addli r22, zero, 6
000280  7d000100  xsignal r2, 0
000284  1f112000  addli r2, zero, 17
000288  7d000100  xsignal r2, 0
00028c  6b538ff9  load.d r[7:8], -104(r30)
000290  6b520ff7  load.d r[5:6], -144(r30)
000294  e3054fff  loadli.w r11,  -96(r30)
000298  1f072000  addli r14, zero, 16
00029c  27130300  addli.d r[7:8], r[7:8], 1
0002a0  9f950500  addli r11, r11, 1
0002a4  13314304  setlt.sl r2, r[7:8], r[5:6]
0002a8  37300112  beq r2, zero, 9228
0002ac  63015f00  loadli.w r2,  40(r30)
0002b0  63424f00  loadli.w r4,  36(r30)
0002b4  733c6ff8  store.d r[7:8], -104(r30)
0002b8  1f540000  addli r8, zero, 5
0002bc  670abffe  storeli.w r11, -96(r30)
0002c0  0b948538  mod.s r8, r11, r8
0002c4  0b112330  div.s r2, r6, r2
0002c8  9f031000  addli r7, zero, 8
0002cc  670b8ffe  storeli.w r8, -80(r30)
0002d0  8b124130  div.s r5, r2, r4
0002d4  0b93c230  div.s r6, r5, r12
0002d8  1b313300  slli r2, r6, 3
0002dc  0b922618  sub.s r4, r13, r2
0002e0  8b137240  min.s r7, r4, r7
0002e4  0b927238  mod.s r4, r5, r7
0002e8  0b112210  add.s r2, r4, r2
0002ec  1b32e400  slli r4, r8, 14
0002f0  b3040128  zext_int2long r[10:11], r2
0002f4  e7472ffe  storeli.w r2, -132(r30)
0002f8  2b810200  lui r2, 40
0002fc  0b142210  add.s r8, r4, r2
000300  00310002  core_id r2
000304  73309ff8  store.d r[10:11], -128(r30)
000308  3b1ad100  bneq r2, r13, 644
00030c  eb5b0f00  load.d r[24:25], 0(r30)
000310  97b40403  sll.d r[10:11], r[10:11], r16
000314  7d900800  xwait r17, 0
000318  8ba49b10  add.ul r[10:11], r[24:25], r[10:11]
00031c  3f64b900  blt.s r18, r11, 280
000320  1f510000  addli r2, zero, 5
000324  9f051000  addli r11, zero, 8
000328  1d000100  lock zero, r2
00032c  15000014  dma_cfg zero, zero, zero, 10
000330  1500d014  dma_cfg zero, zero, r13, 10
000334  15003015  dma_cfg zero, zero, r19, 10
000338  15001015  dma_cfg zero, zero, r17, 10
00033c  15002015  dma_cfg zero, zero, r18, 10
000340  15002014  dma_cfg zero, zero, r2, 10
000344  15006015  dma_cfg zero, zero, r22, 10
000348  1500f014  dma_cfg zero, zero, r15, 10
00034c  1500b014  dma_cfg zero, zero, r11, 10
000350  9f151000  addli r11, zero, 9
000354  1500b014  dma_cfg zero, zero, r11, 10
000358  9f251000  addli r11, zero, 10
00035c  1500b014  dma_cfg zero, zero, r11, 10
000360  9f351000  addli r11, zero, 11
000364  1500b014  dma_cfg zero, zero, r11, 10
000368  9f451000  addli r11, zero, 12
00036c  1500b014  dma_cfg zero, zero, r11, 10
000370  9f651000  addli r11, zero, 14
000374  15000015  dma_cfg zero, zero, r16, 10
000378  1500b014  dma_cfg zero, zero, r11, 10
00037c  9f751000  addli r11, zero, 15
000380  1500b014  dma_cfg zero, zero, r11, 10
000384  9f152000  addli r11, zero, 17
000388  1500e014  dma_cfg zero, zero, r14, 10
00038c  1500b014  dma_cfg zero, zero, r11, 10
000390  9f252000  addli r11, zero, 18
000394  1500b014  dma_cfg zero, zero, r11, 10
000398  9f352000  addli r11, zero, 19
00039c  1500b014  dma_cfg zero, zero, r11, 10
0003a0  9f452000  addli r11, zero, 20
0003a4  1500b014  dma_cfg zero, zero, r11, 10
0003a8  9f552000  addli r11, zero, 21
0003ac  1500b014  dma_cfg zero, zero, r11, 10
0003b0  9f652000  addli r11, zero, 22
0003b4  1500b014  dma_cfg zero, zero, r11, 10
0003b8  9f752000  addli r11, zero, 23
0003bc  1500b014  dma_cfg zero, zero, r11, 10
0003c0  9f053000  addli r11, zero, 24
0003c4  1500b014  dma_cfg zero, zero, r11, 10
0003c8  9f153000  addli r11, zero, 25
0003cc  1500b014  dma_cfg zero, zero, r11, 10
0003d0  9f253000  addli r11, zero, 26
0003d4  1500b014  dma_cfg zero, zero, r11, 10
0003d8  9f353000  addli r11, zero, 27
0003dc  1500b014  dma_cfg zero, zero, r11, 10
0003e0  9f453000  addli r11, zero, 28
0003e4  1500b014  dma_cfg zero, zero, r11, 10
0003e8  9f553000  addli r11, zero, 29
0003ec  1500b014  dma_cfg zero, zero, r11, 10
0003f0  9f653000  addli r11, zero, 30
0003f4  1500b014  dma_cfg zero, zero, r11, 10
0003f8  9f753000  addli r11, zero, 31
0003fc  1500b014  dma_cfg zero, zero, r11, 10
000400  9f050001  addli r11, zero, 128
000404  95860600  dma_cfg r13, r13, zero, 0
000408  95060002  dma_cfg r13, zero, zero, 1
00040c  15000004  dma_cfg zero, zero, zero, 2
000410  1504c006  dma_cfg r8, zero, r12, 3
000414  95053009  dma_cfg r11, zero, r19, 4
000418  9f050002  addli r11, zero, 256
00041c  9505c00a  dma_cfg r11, zero, r12, 5
000420  15000010  dma_cfg zero, zero, zero, 8
000424  35000000  dma_run zero
000428  1500d00a  dma_cfg zero, zero, r13, 5
00042c  15000010  dma_cfg zero, zero, zero, 8
000430  1d100100  unlock r2
000434  2b810200  lui r2, 40
000438  674a0ffe  storeli.w zero, -92(r30)
00043c  9f050002  addli r11, zero, 256
000440  1d000900  lock zero, r18
000444  1b110104  ori r2, r2, 64
000448  95860600  dma_cfg r13, r13, zero, 0
00044c  15000504  dma_cfg zero, r10, zero, 2
000450  0b112210  add.s r2, r4, r2
000454  1581c406  dma_cfg r2, r9, r12, 3
000458  1f050001  addli r10, zero, 128
00045c  1f510000  addli r2, zero, 5
000460  9f041000  addli r9, zero, 8
000464  15053609  dma_cfg r10, r12, r19, 4
000468  9505c50a  dma_cfg r11, r10, r12, 5
00046c  15000010  dma_cfg zero, zero, zero, 8
000470  35000000  dma_run zero
000474  1500d00a  dma_cfg zero, zero, r13, 5
000478  15000010  dma_cfg zero, zero, zero, 8
00047c  1d100900  unlock r18
000480  1d000100  lock zero, r2
000484  15000014  dma_cfg zero, zero, zero, 10
000488  1500d014  dma_cfg zero, zero, r13, 10
00048c  15003015  dma_cfg zero, zero, r19, 10
000490  15001015  dma_cfg zero, zero, r17, 10
000494  15002015  dma_cfg zero, zero, r18, 10
000498  15002014  dma_cfg zero, zero, r2, 10
00049c  15006015  dma_cfg zero, zero, r22, 10
0004a0  1500f014  dma_cfg zero, zero, r15, 10
0004a4  15009014  dma_cfg zero, zero, r9, 10
0004a8  9f141000  addli r9, zero, 9
0004ac  15009014  dma_cfg zero, zero, r9, 10
0004b0  9f241000  addli r9, zero, 10
0004b4  15009014  dma_cfg zero, zero, r9, 10
0004b8  9f341000  addli r9, zero, 11
0004bc  15009014  dma_cfg zero, zero, r9, 10
0004c0  9f441000  addli r9, zero, 12
0004c4  15009014  dma_cfg zero, zero, r9, 10
0004c8  9f641000  addli r9, zero, 14
0004cc  15000015  dma_cfg zero, zero, r16, 10
0004d0  15009014  dma_cfg zero, zero, r9, 10
0004d4  9f741000  addli r9, zero, 15
0004d8  15009014  dma_cfg zero, zero, r9, 10
0004dc  9f142000  addli r9, zero, 17
0004e0  1500e014  dma_cfg zero, zero, r14, 10
0004e4  15009014  dma_cfg zero, zero, r9, 10
0004e8  9f242000  addli r9, zero, 18
0004ec  15009014  dma_cfg zero, zero, r9, 10
0004f0  9f342000  addli r9, zero, 19
0004f4  15009014  dma_cfg zero, zero, r9, 10
0004f8  9f442000  addli r9, zero, 20
0004fc  15009014  dma_cfg zero, zero, r9, 10
000500  9f542000  addli r9, zero, 21
000504  15009014  dma_cfg zero, zero, r9, 10
000508  9f642000  addli r9, zero, 22
00050c  15009014  dma_cfg zero, zero, r9, 10
000510  9f742000  addli r9, zero, 23
000514  15009014  dma_cfg zero, zero, r9, 10
000518  9f043000  addli r9, zero, 24
00051c  15009014  dma_cfg zero, zero, r9, 10
000520  9f143000  addli r9, zero, 25
000524  15009014  dma_cfg zero, zero, r9, 10
000528  9f243000  addli r9, zero, 26
00052c  15009014  dma_cfg zero, zero, r9, 10
000530  9f343000  addli r9, zero, 27
000534  15009014  dma_cfg zero, zero, r9, 10
000538  9f443000  addli r9, zero, 28
00053c  15009014  dma_cfg zero, zero, r9, 10
000540  9f543000  addli r9, zero, 29
000544  15009014  dma_cfg zero, zero, r9, 10
000548  9f643000  addli r9, zero, 30
00054c  15009014  dma_cfg zero, zero, r9, 10
000550  9f743000  addli r9, zero, 31
000554  15009014  dma_cfg zero, zero, r9, 10
000558  95860600  dma_cfg r13, r13, zero, 0
00055c  95060002  dma_cfg r13, zero, zero, 1
000560  15000004  dma_cfg zero, zero, zero, 2
000564  1504c006  dma_cfg r8, zero, r12, 3
000568  15053009  dma_cfg r10, zero, r19, 4
00056c  9505c00a  dma_cfg r11, zero, r12, 5
000570  15000010  dma_cfg zero, zero, zero, 8
000574  35000000  dma_run zero
000578  1500d00a  dma_cfg zero, zero, r13, 5
00057c  15000010  dma_cfg zero, zero, zero, 8
000580  1d100100  unlock r2
000584  7d800900  xsignal r19, 0
000588  5b090000  j 72
00058c  3b013101  bneq r2, r19, 64
000590  1f510000  addli r2, zero, 5
000594  7d900900  xwait r19, 0
000598  7d100100  xwait r2, 0
00059c  1d000000  lock zero, zero
0005a0  1f110000  addli r2, zero, 1
0005a4  81090000  ds_cfg r19, zero, 0
0005a8  01060002  ds_cfg r12, zero, 1
0005ac  0106001c  ds_cfg r12, zero, 14
0005b0  0106001a  ds_cfg r12, zero, 13
0005b4  2112c402  shuffle_batch r4, r8, r12, 1
0005b8  1d100000  unlock zero
0005bc  7d800800  xsignal r17, 0
0005c0  674a2ffe  storeli.w r2, -92(r30)
0005c4  7d000900  xsignal r18, 0
0005c8  5b010000  j 8
0005cc  674a0ffe  storeli.w zero, -92(r30)
0005d0  1b316300  slli r2, r6, 6
0005d4  2b850000  lui r10, 8
0005d8  0b912218  sub.s r2, r5, r2
0005dc  0b117130  div.s r2, r2, r7
0005e0  b3020128  zext_int2long r[6:7], r2
0005e4  67092ffe  storeli.w r2, -112(r30)
0005e8  63016fff  loadli.w r2,  -80(r30)
0005ec  17b3f202  sll.d r[7:8], r[6:7], r15
0005f0  1b37f100  slli r14, r2, 15
0005f4  2bc10300  lui r2, 60
0005f8  9733d302  sll.d r[8:9], r[7:8], r13
0005fc  00330002  core_id r6
000600  8b122710  add.s r5, r14, r2
000604  73347ff8  store.d r[8:9], -120(r30)
000608  3b316303  bneq r6, r22, 1100
00060c  27840300  addli.d r[9:10], r[8:9], 0
000610  6b538f00  load.d r[7:8], 8(r30)
000614  7d900700  xwait r15, 0
000618  63014fff  loadli.w r2,  -96(r30)
00061c  0b238310  add.ul r[7:8], r[7:8], r[9:10]
000620  3f742900  blt.s r18, r2, 284
000624  1f510000  addli r2, zero, 5
000628  1f021000  addli r4, zero, 8
00062c  1d000100  lock zero, r2
000630  15000014  dma_cfg zero, zero, zero, 10
000634  1500d014  dma_cfg zero, zero, r13, 10
000638  15003015  dma_cfg zero, zero, r19, 10
00063c  15001015  dma_cfg zero, zero, r17, 10
000640  15002015  dma_cfg zero, zero, r18, 10
000644  15002014  dma_cfg zero, zero, r2, 10
000648  15006015  dma_cfg zero, zero, r22, 10
00064c  1500f014  dma_cfg zero, zero, r15, 10
000650  15004014  dma_cfg zero, zero, r4, 10
000654  1f121000  addli r4, zero, 9
000658  15004014  dma_cfg zero, zero, r4, 10
00065c  1f221000  addli r4, zero, 10
000660  15004014  dma_cfg zero, zero, r4, 10
000664  1f321000  addli r4, zero, 11
000668  15004014  dma_cfg zero, zero, r4, 10
00066c  1f421000  addli r4, zero, 12
000670  15004014  dma_cfg zero, zero, r4, 10
000674  1f621000  addli r4, zero, 14
000678  15000015  dma_cfg zero, zero, r16, 10
00067c  15004014  dma_cfg zero, zero, r4, 10
000680  1f721000  addli r4, zero, 15
000684  15004014  dma_cfg zero, zero, r4, 10
000688  1f022000  addli r4, zero, 16
00068c  15004014  dma_cfg zero, zero, r4, 10
000690  1f122000  addli r4, zero, 17
000694  15004014  dma_cfg zero, zero, r4, 10
000698  1f222000  addli r4, zero, 18
00069c  15004014  dma_cfg zero, zero, r4, 10
0006a0  1f322000  addli r4, zero, 19
0006a4  15004014  dma_cfg zero, zero, r4, 10
0006a8  1f422000  addli r4, zero, 20
0006ac  15004014  dma_cfg zero, zero, r4, 10
0006b0  1f522000  addli r4, zero, 21
0006b4  15004014  dma_cfg zero, zero, r4, 10
0006b8  1f622000  addli r4, zero, 22
0006bc  15004014  dma_cfg zero, zero, r4, 10
0006c0  1f722000  addli r4, zero, 23
0006c4  15004014  dma_cfg zero, zero, r4, 10
0006c8  1f023000  addli r4, zero, 24
0006cc  15004014  dma_cfg zero, zero, r4, 10
0006d0  1f123000  addli r4, zero, 25
0006d4  15004014  dma_cfg zero, zero, r4, 10
0006d8  1f223000  addli r4, zero, 26
0006dc  15004014  dma_cfg zero, zero, r4, 10
0006e0  1f323000  addli r4, zero, 27
0006e4  15004014  dma_cfg zero, zero, r4, 10
0006e8  1f423000  addli r4, zero, 28
0006ec  15004014  dma_cfg zero, zero, r4, 10
0006f0  1f523000  addli r4, zero, 29
0006f4  15004014  dma_cfg zero, zero, r4, 10
0006f8  1f623000  addli r4, zero, 30
0006fc  15004014  dma_cfg zero, zero, r4, 10
000700  1f723000  addli r4, zero, 31
000704  15004014  dma_cfg zero, zero, r4, 10
000708  1f020001  addli r4, zero, 128
00070c  95860600  dma_cfg r13, r13, zero, 0
000710  95060002  dma_cfg r13, zero, zero, 1
000714  15000004  dma_cfg zero, zero, zero, 2
000718  9502c006  dma_cfg r5, zero, r12, 3
00071c  15022009  dma_cfg r4, zero, r18, 4
000720  1f020004  addli r4, zero, 512
000724  1502c00a  dma_cfg r4, zero, r12, 5
000728  15000010  dma_cfg zero, zero, zero, 8
00072c  35000000  dma_run zero
000730  1500d00a  dma_cfg zero, zero, r13, 5
000734  15000010  dma_cfg zero, zero, zero, 8
000738  1d100100  unlock r2
00073c  2bc10300  lui r2, 60
000740  e70a0ffe  storeli.w zero, -88(r30)
000744  e74a0ffe  storeli.w zero, -84(r30)
000748  1f021000  addli r4, zero, 8
00074c  1d000900  lock zero, r18
000750  1b110104  ori r2, r2, 64
000754  95860600  dma_cfg r13, r13, zero, 0
000758  15800304  dma_cfg zero, r7, zero, 2
00075c  0b112710  add.s r2, r14, r2
000760  1501c306  dma_cfg r2, r6, r12, 3
000764  1f030001  addli r6, zero, 128
000768  9f030004  addli r7, zero, 512
00076c  1f010010  addli r2, zero, 2048
000770  15032609  dma_cfg r6, r12, r18, 4
000774  9503c10a  dma_cfg r7, r2, r12, 5
000778  1f510000  addli r2, zero, 5
00077c  15000010  dma_cfg zero, zero, zero, 8
000780  35000000  dma_run zero
000784  1500d00a  dma_cfg zero, zero, r13, 5
000788  15000010  dma_cfg zero, zero, zero, 8
00078c  1d100900  unlock r18
000790  1d000100  lock zero, r2
000794  15000014  dma_cfg zero, zero, zero, 10
000798  1500d014  dma_cfg zero, zero, r13, 10
00079c  15003015  dma_cfg zero, zero, r19, 10
0007a0  15001015  dma_cfg zero, zero, r17, 10
0007a4  15002015  dma_cfg zero, zero, r18, 10
0007a8  15002014  dma_cfg zero, zero, r2, 10
0007ac  15006015  dma_cfg zero, zero, r22, 10
0007b0  1500f014  dma_cfg zero, zero, r15, 10
0007b4  15004014  dma_cfg zero, zero, r4, 10
0007b8  1f121000  addli r4, zero, 9
0007bc  15004014  dma_cfg zero, zero, r4, 10
0007c0  1f221000  addli r4, zero, 10
0007c4  15004014  dma_cfg zero, zero, r4, 10
0007c8  1f321000  addli r4, zero, 11
0007cc  15004014  dma_cfg zero, zero, r4, 10
0007d0  1f421000  addli r4, zero, 12
0007d4  15004014  dma_cfg zero, zero, r4, 10
0007d8  1f621000  addli r4, zero, 14
0007dc  15000015  dma_cfg zero, zero, r16, 10
0007e0  15004014  dma_cfg zero, zero, r4, 10
0007e4  1f721000  addli r4, zero, 15
0007e8  15004014  dma_cfg zero, zero, r4, 10
0007ec  1f022000  addli r4, zero, 16
0007f0  15004014  dma_cfg zero, zero, r4, 10
0007f4  1f122000  addli r4, zero, 17
0007f8  15004014  dma_cfg zero, zero, r4, 10
0007fc  1f222000  addli r4, zero, 18
000800  15004014  dma_cfg zero, zero, r4, 10
000804  1f322000  addli r4, zero, 19
000808  15004014  dma_cfg zero, zero, r4, 10
00080c  1f422000  addli r4, zero, 20
000810  15004014  dma_cfg zero, zero, r4, 10
000814  1f522000  addli r4, zero, 21
000818  15004014  dma_cfg zero, zero, r4, 10
00081c  1f622000  addli r4, zero, 22
000820  15004014  dma_cfg zero, zero, r4, 10
000824  1f722000  addli r4, zero, 23
000828  15004014  dma_cfg zero, zero, r4, 10
00082c  1f023000  addli r4, zero, 24
000830  15004014  dma_cfg zero, zero, r4, 10
000834  1f123000  addli r4, zero, 25
000838  15004014  dma_cfg zero, zero, r4, 10
00083c  1f223000  addli r4, zero, 26
000840  15004014  dma_cfg zero, zero, r4, 10
000844  1f323000  addli r4, zero, 27
000848  15004014  dma_cfg zero, zero, r4, 10
00084c  1f423000  addli r4, zero, 28
000850  15004014  dma_cfg zero, zero, r4, 10
000854  1f523000  addli r4, zero, 29
000858  15004014  dma_cfg zero, zero, r4, 10
00085c  1f623000  addli r4, zero, 30
000860  15004014  dma_cfg zero, zero, r4, 10
000864  1f723000  addli r4, zero, 31
000868  15004014  dma_cfg zero, zero, r4, 10
00086c  95860600  dma_cfg r13, r13, zero, 0
000870  95060002  dma_cfg r13, zero, zero, 1
000874  15000004  dma_cfg zero, zero, zero, 2
000878  9502c006  dma_cfg r5, zero, r12, 3
00087c  15032009  dma_cfg r6, zero, r18, 4
000880  9503c00a  dma_cfg r7, zero, r12, 5
000884  15000010  dma_cfg zero, zero, zero, 8
000888  35000000  dma_run zero
00088c  1500d00a  dma_cfg zero, zero, r13, 5
000890  15000010  dma_cfg zero, zero, zero, 8
000894  1d100100  unlock r2
000898  7d000b00  xsignal r22, 0
00089c  00330002  core_id r6
0008a0  3b501301  bneq r6, r17, 20
0008a4  1f211000  addli r2, zero, 10
0008a8  7d100100  xwait r2, 0
0008ac  1f611000  addli r2, zero, 14
0008b0  7d100100  xwait r2, 0
0008b4  2bc10800  lui r2, 140
0008b8  3d000000  xfence
0008bc  1f020001  addli r4, zero, 128
0008c0  00a00300  mfence { lm, sm, gm }
0008c4  1b1101a0  ori r2, r2, 2560
0008c8  33020228  zext_int2long r[5:6], r4
0008cc  0b1b2710  add.s r22, r14, r2
0008d0  1f71f001  addli r2, zero, 255
0008d4  80220104  csr_set csr5, r2
0008d8  1f710000  addli r2, zero, 7
0008dc  b3030128  zext_int2long r[8:9], r2
0008e0  733c7ffa  store.d r[8:9], -72(r30)
0008e4  00e00200  sync_core
0008e8  3b370300  bneq r6, zero, 460
0008ec  3d000000  xfence
0008f0  33030028  zext_int2long r[7:8], zero
0008f4  00a00300  mfence { lm, sm, gm }
0008f8  73386ffe  store.d r[7:8], -16(r30)
0008fc  5b030000  j 24
000900  6b538ffb  load.d r[7:8], -72(r30)
000904  6b548fff  load.d r[9:10], -8(r30)
000908  13216404  setlt.ul r2, r[9:10], r[7:8]
00090c  27130400  addli.d r[7:8], r[9:10], 1
000910  37660100  beq r2, zero, 408
000914  1f710000  addli r2, zero, 7
000918  eb570fff  load.d r[16:17], -16(r30)
00091c  733c6ffe  store.d r[7:8], -8(r30)
000920  17352302  sll.d r[11:12], r[7:8], r2
000924  db040000  j 36
000928  a7c70700  addli.d r[16:17], r[16:17], 4
00092c  0b141b11  add.s r8, r22, r17
000930  93a34702  setneq.d r7, r[16:17], r[5:6]
000934  73662400  stores.w r2, 12(r8)
000938  73647401  stores.w r23, 8(r8)
00093c  73629401  stores.w r25, 4(r8)
000940  73606400  stores.w r6, 0(r8)
000944  b7fe03fe  beq r7, zero, -68
000948  0ba3a710  add.ul r[7:8], r[16:17], r[11:12]
00094c  9b382300  slli r17, r6, 2
000950  0b111711  add.s r2, r14, r17
000954  6f49c100  loads.w r18, 12(r2)
000958  ef460100  loads.w r13, 0(r2)
00095c  6f4d4100  loads.w r26, 4(r2)
000960  6f4c8100  loads.w r24, 8(r2)
000964  9709c901  and r19, r18, r28
000968  13813a05  setlt.u r2, r21, r19
00096c  3b300100  bneq r2, zero, 12
000970  1f010900  addli r2, r18, 0
000974  5b010000  j 8
000978  17114901  or r2, r18, r20
00097c  1706cc01  and r12, r24, r28
000980  1383ca04  setlt.u r6, r21, r12
000984  3b300300  bneq r6, zero, 12
000988  9f0b0c00  addli r23, r24, 0
00098c  5b010000  j 8
000990  971b4c01  or r23, r24, r20
000994  9703cd01  and r7, r26, r28
000998  13837a04  setlt.u r6, r21, r7
00099c  3b300300  bneq r6, zero, 12
0009a0  9f0c0d00  addli r25, r26, 0
0009a4  5b010000  j 8
0009a8  971c4d01  or r25, r26, r20
0009ac  1784c601  and r8, r13, r28
0009b0  13838a04  setlt.u r6, r21, r8
0009b4  3b500300  bneq r6, zero, 20
0009b8  1f830600  addli r6, r13, 0
0009bc  13848104  setlt.u r8, r3, r8
0009c0  37500400  beq r8, zero, 20
0009c4  db040000  j 36
0009c8  17934601  or r6, r13, r20
0009cc  13848104  setlt.u r8, r3, r8
0009d0  3b600400  bneq r8, zero, 24
0009d4  1bc30601  srli r6, r13, 16
0009d8  1b031300  andi r6, r6, 1
0009dc  0b936610  add.s r6, r13, r6
0009e0  0b131310  add.s r6, r6, r1
0009e4  1703b301  and r6, r6, r27
0009e8  93837104  setlt.u r7, r3, r7
0009ec  bbb00300  bneq r7, zero, 44
0009f0  9b430d01  srli r7, r26, 16
0009f4  9b831300  andi r7, r7, 1
0009f8  8b137d10  add.s r7, r26, r7
0009fc  8b931310  add.s r7, r7, r1
000a00  978cb301  and r25, r7, r27
000a04  9383c104  setlt.u r7, r3, r12
000a08  37e00300  beq r7, zero, 24
000a0c  93833105  setlt.u r7, r3, r19
000a10  3bec03fe  bneq r7, zero, -232
000a14  5b050000  j 40
000a18  9383c104  setlt.u r7, r3, r12
000a1c  bbcf03fe  bneq r7, zero, -16
000a20  9b430c01  srli r7, r24, 16
000a24  9b831300  andi r7, r7, 1
000a28  8b137c10  add.s r7, r24, r7
000a2c  8b931310  add.s r7, r7, r1
000a30  978bb301  and r23, r7, r27
000a34  93833105  setlt.u r7, r3, r19
000a38  bbcb03fe  bneq r7, zero, -272
000a3c  1b410901  srli r2, r18, 16
000a40  1b011100  andi r2, r2, 1
000a44  0b112910  add.s r2, r18, r2
000a48  0b111110  add.s r2, r2, r1
000a4c  1701b101  and r2, r2, r27
000a50  5bdbffff  j -296
000a54  373f230d  beq r6, r18, 7116
000a58  3b31f30e  bneq r6, r15, 7244
000a5c  1f111000  addli r2, zero, 9
000a60  e70a0ffe  storeli.w zero, -88(r30)
000a64  7d100b00  xwait r22, 0
000a68  7d100100  xwait r2, 0
000a6c  1d000000  lock zero, zero
000a70  1f010001  addli r2, zero, 128
000a74  81090000  ds_cfg r19, zero, 0
000a78  01010002  ds_cfg r2, zero, 1
000a7c  0106001c  ds_cfg r12, zero, 14
000a80  0101001a  ds_cfg r2, zero, 13
000a84  1f110000  addli r2, zero, 1
000a88  4187c204  shuffle_coa r14, r5, r12, 2
000a8c  1d100000  unlock zero
000a90  7d800700  xsignal r15, 0
000a94  e74a2ffe  storeli.w r2, -84(r30)
000a98  1f011000  addli r2, zero, 8
000a9c  7d000100  xsignal r2, 0
000aa0  371813ff  beq r6, r17, -508
000aa4  5bc2ffff  j -496
000aa8  00330002  core_id r6
000aac  2b850000  lui r10, 8
000ab0  00200100  mfence { sm }
000ab4  1f711000  addli r2, zero, 15
000ab8  b3030128  zext_int2long r[8:9], r2
000abc  1f110000  addli r2, zero, 1
000ac0  733c7ffe  store.d r[8:9], -8(r30)
000ac4  bb652300  bneq r6, r2, 376
000ac8  1f011000  addli r2, zero, 8
000acc  3d000000  xfence
000ad0  00a00300  mfence { lm, sm, gm }
000ad4  33030128  zext_int2long r[7:8], r2
000ad8  5b030000  j 24
000adc  6b538fff  load.d r[7:8], -8(r30)
000ae0  6b540fff  load.d r[9:10], -16(r30)
000ae4  13216404  setlt.ul r2, r[9:10], r[7:8]
000ae8  27130400  addli.d r[7:8], r[9:10], 1
000aec  37150100  beq r2, zero, 324
000af0  1f710000  addli r2, zero, 7
000af4  33050028  zext_int2long r[11:12], zero
000af8  73386ffe  store.d r[7:8], -16(r30)
000afc  17342302  sll.d r[9:10], r[7:8], r2
000b00  db040000  j 36
000b04  27450500  addli.d r[11:12], r[11:12], 4
000b08  8b13fb10  add.s r7, r22, r15
000b0c  13234502  setneq.d r6, r[11:12], r[5:6]
000b10  73e62300  stores.w r2, 12(r7)
000b14  73e42301  stores.w r18, 8(r7)
000b18  73e27301  stores.w r23, 4(r7)
000b1c  73e0d300  stores.w r13, 0(r7)
000b20  b77e03fe  beq r6, zero, -68
000b24  0b238510  add.ul r[7:8], r[11:12], r[9:10]
000b28  9b372300  slli r15, r6, 2
000b2c  0b11f710  add.s r2, r14, r15
000b30  6f48c100  loads.w r16, 12(r2)
000b34  ef4c0100  loads.w r25, 0(r2)
000b38  6f4c4100  loads.w r24, 4(r2)
000b3c  ef498100  loads.w r19, 8(r2)
000b40  9708c801  and r17, r16, r28
000b44  13811a05  setlt.u r2, r21, r17
000b48  3b300100  bneq r2, zero, 12
000b4c  1f010800  addli r2, r16, 0
000b50  5b010000  j 8
000b54  17114801  or r2, r16, r20
000b58  1786c901  and r12, r19, r28
000b5c  1383ca04  setlt.u r6, r21, r12
000b60  3b300300  bneq r6, zero, 12
000b64  1f890900  addli r18, r19, 0
000b68  5b010000  j 8
000b6c  17994901  or r18, r19, r20
000b70  170dcc01  and r26, r24, r28
000b74  1383aa05  setlt.u r6, r21, r26
000b78  3b300300  bneq r6, zero, 12
000b7c  9f0b0c00  addli r23, r24, 0
000b80  5b010000  j 8
000b84  971b4c01  or r23, r24, r20
000b88  1783cc01  and r6, r25, r28
000b8c  93836a04  setlt.u r7, r21, r6
000b90  3bd00300  bneq r7, zero, 20
000b94  9f860c00  addli r13, r25, 0
000b98  13836104  setlt.u r6, r3, r6
000b9c  37500300  beq r6, zero, 20
000ba0  db040000  j 36
000ba4  97964c01  or r13, r25, r20
000ba8  13836104  setlt.u r6, r3, r6
000bac  3b600300  bneq r6, zero, 24
000bb0  1bc30c01  srli r6, r25, 16
000bb4  1b031300  andi r6, r6, 1
000bb8  0b936c10  add.s r6, r25, r6
000bbc  0b131310  add.s r6, r6, r1
000bc0  9706b301  and r13, r6, r27
000bc4  1383a105  setlt.u r6, r3, r26
000bc8  bb300300  bneq r6, zero, 44
000bcc  1b430c01  srli r6, r24, 16
000bd0  1b031300  andi r6, r6, 1
000bd4  0b136c10  add.s r6, r24, r6
000bd8  0b131310  add.s r6, r6, r1
000bdc  970bb301  and r23, r6, r27
000be0  1383c104  setlt.u r6, r3, r12
000be4  37600300  beq r6, zero, 24
000be8  13831105  setlt.u r6, r3, r17
000bec  3b6c03fe  bneq r6, zero, -232
000bf0  5b050000  j 40
000bf4  1383c104  setlt.u r6, r3, r12
000bf8  bb4f03fe  bneq r6, zero, -16
000bfc  1bc30901  srli r6, r19, 16
000c00  1b031300  andi r6, r6, 1
000c04  0b936910  add.s r6, r19, r6
000c08  0b131310  add.s r6, r6, r1
000c0c  1709b301  and r18, r6, r27
000c10  13831105  setlt.u r6, r3, r17
000c14  bb4b03fe  bneq r6, zero, -272
000c18  1b410801  srli r2, r16, 16
000c1c  1b011100  andi r2, r2, 1
000c20  0b112810  add.s r2, r16, r2
000c24  0b111110  add.s r2, r2, r1
000c28  1701b101  and r2, r2, r27
000c2c  5bdbffff  j -296
000c30  00330002  core_id r6
000c34  2b850000  lui r10, 8
000c38  00200100  mfence { sm }
000c3c  1f712000  addli r2, zero, 23
000c40  b3030128  zext_int2long r[8:9], r2
000c44  63414fff  loadli.w r2,  -92(r30)
000c48  73387ffe  store.d r[8:9], -16(r30)
000c4c  b7650100  beq r2, zero, 376
000c50  1f012000  addli r2, zero, 16
000c54  3d000000  xfence
000c58  00a00300  mfence { lm, sm, gm }
000c5c  33030128  zext_int2long r[7:8], r2
000c60  5b030000  j 24
000c64  6b530fff  load.d r[7:8], -16(r30)
000c68  6b548ffe  load.d r[9:10], -24(r30)
000c6c  13216404  setlt.ul r2, r[9:10], r[7:8]
000c70  27130400  addli.d r[7:8], r[9:10], 1
000c74  37150100  beq r2, zero, 324
000c78  1f710000  addli r2, zero, 7
000c7c  33050028  zext_int2long r[11:12], zero
000c80  73346ffe  store.d r[7:8], -24(r30)
000c84  17342302  sll.d r[9:10], r[7:8], r2
000c88  db040000  j 36
000c8c  27450500  addli.d r[11:12], r[11:12], 4
000c90  8b13fb10  add.s r7, r22, r15
000c94  13234502  setneq.d r6, r[11:12], r[5:6]
000c98  73e62300  stores.w r2, 12(r7)
000c9c  73e42301  stores.w r18, 8(r7)
000ca0  73e27301  stores.w r23, 4(r7)
000ca4  73e0d300  stores.w r13, 0(r7)
000ca8  b77e03fe  beq r6, zero, -68
000cac  0b238510  add.ul r[7:8], r[11:12], r[9:10]
000cb0  9b372300  slli r15, r6, 2
000cb4  0b11f710  add.s r2, r14, r15
000cb8  6f48c100  loads.w r16, 12(r2)
000cbc  ef4c0100  loads.w r25, 0(r2)
000cc0  6f4c4100  loads.w r24, 4(r2)
000cc4  ef498100  loads.w r19, 8(r2)
000cc8  9708c801  and r17, r16, r28
000ccc  13811a05  setlt.u r2, r21, r17
000cd0  3b300100  bneq r2, zero, 12
000cd4  1f010800  addli r2, r16, 0
000cd8  5b010000  j 8
000cdc  17114801  or r2, r16, r20
000ce0  1786c901  and r12, r19, r28
000ce4  1383ca04  setlt.u r6, r21, r12
000ce8  3b300300  bneq r6, zero, 12
000cec  1f890900  addli r18, r19, 0
000cf0  5b010000  j 8
000cf4  17994901  or r18, r19, r20
000cf8  170dcc01  and r26, r24, r28
000cfc  1383aa05  setlt.u r6, r21, r26
000d00  3b300300  bneq r6, zero, 12
000d04  9f0b0c00  addli r23, r24, 0
000d08  5b010000  j 8
000d0c  971b4c01  or r23, r24, r20
000d10  1783cc01  and r6, r25, r28
000d14  93836a04  setlt.u r7, r21, r6
000d18  3bd00300  bneq r7, zero, 20
000d1c  9f860c00  addli r13, r25, 0
000d20  13836104  setlt.u r6, r3, r6
000d24  37500300  beq r6, zero, 20
000d28  db040000  j 36
000d2c  97964c01  or r13, r25, r20
000d30  13836104  setlt.u r6, r3, r6
000d34  3b600300  bneq r6, zero, 24
000d38  1bc30c01  srli r6, r25, 16
000d3c  1b031300  andi r6, r6, 1
000d40  0b936c10  add.s r6, r25, r6
000d44  0b131310  add.s r6, r6, r1
000d48  9706b301  and r13, r6, r27
000d4c  1383a105  setlt.u r6, r3, r26
000d50  bb300300  bneq r6, zero, 44
000d54  1b430c01  srli r6, r24, 16
000d58  1b031300  andi r6, r6, 1
000d5c  0b136c10  add.s r6, r24, r6
000d60  0b131310  add.s r6, r6, r1
000d64  970bb301  and r23, r6, r27
000d68  1383c104  setlt.u r6, r3, r12
000d6c  37600300  beq r6, zero, 24
000d70  13831105  setlt.u r6, r3, r17
000d74  3b6c03fe  bneq r6, zero, -232
000d78  5b050000  j 40
000d7c  1383c104  setlt.u r6, r3, r12
000d80  bb4f03fe  bneq r6, zero, -16
000d84  1bc30901  srli r6, r19, 16
000d88  1b031300  andi r6, r6, 1
000d8c  0b936910  add.s r6, r19, r6
000d90  0b131310  add.s r6, r6, r1
000d94  1709b301  and r18, r6, r27
000d98  13831105  setlt.u r6, r3, r17
000d9c  bb4b03fe  bneq r6, zero, -272
000da0  1b410801  srli r2, r16, 16
000da4  1b011100  andi r2, r2, 1
000da8  0b112810  add.s r2, r16, r2
000dac  0b111110  add.s r2, r2, r1
000db0  1701b101  and r2, r2, r27
000db4  5bdbffff  j -296
000db8  00330002  core_id r6
000dbc  2b850000  lui r10, 8
000dc0  00200100  mfence { sm }
000dc4  1f713000  addli r2, zero, 31
000dc8  b3030128  zext_int2long r[8:9], r2
000dcc  1f310000  addli r2, zero, 3
000dd0  73347ffe  store.d r[8:9], -24(r30)
000dd4  bb652300  bneq r6, r2, 376
000dd8  1f013000  addli r2, zero, 24
000ddc  3d000000  xfence
000de0  00a00300  mfence { lm, sm, gm }
000de4  33030128  zext_int2long r[7:8], r2
000de8  5b030000  j 24
000dec  6b538ffe  load.d r[7:8], -24(r30)
000df0  6b540ffe  load.d r[9:10], -32(r30)
000df4  13216404  setlt.ul r2, r[9:10], r[7:8]
000df8  27130400  addli.d r[7:8], r[9:10], 1
000dfc  37150100  beq r2, zero, 324
000e00  1f710000  addli r2, zero, 7
000e04  33040028  zext_int2long r[9:10], zero
000e08  73306ffe  store.d r[7:8], -32(r30)
000e0c  17352302  sll.d r[11:12], r[7:8], r2
000e10  db040000  j 36
000e14  27440400  addli.d r[9:10], r[9:10], 4
000e18  8b13fb10  add.s r7, r22, r15
000e1c  13234402  setneq.d r6, r[9:10], r[5:6]
000e20  73e62300  stores.w r2, 12(r7)
000e24  73e42301  stores.w r18, 8(r7)
000e28  73e27301  stores.w r23, 4(r7)
000e2c  73e0d300  stores.w r13, 0(r7)
000e30  b77e03fe  beq r6, zero, -68
000e34  0b23a410  add.ul r[7:8], r[9:10], r[11:12]
000e38  9b372300  slli r15, r6, 2
000e3c  0b11f710  add.s r2, r14, r15
000e40  6f48c100  loads.w r16, 12(r2)
000e44  ef4c0100  loads.w r25, 0(r2)
000e48  6f4c4100  loads.w r24, 4(r2)
000e4c  ef498100  loads.w r19, 8(r2)
000e50  9708c801  and r17, r16, r28
000e54  13811a05  setlt.u r2, r21, r17
000e58  3b300100  bneq r2, zero, 12
000e5c  1f010800  addli r2, r16, 0
000e60  5b010000  j 8
000e64  17114801  or r2, r16, r20
000e68  1786c901  and r12, r19, r28
000e6c  1383ca04  setlt.u r6, r21, r12
000e70  3b300300  bneq r6, zero, 12
000e74  1f890900  addli r18, r19, 0
000e78  5b010000  j 8
000e7c  17994901  or r18, r19, r20
000e80  170dcc01  and r26, r24, r28
000e84  1383aa05  setlt.u r6, r21, r26
000e88  3b300300  bneq r6, zero, 12
000e8c  9f0b0c00  addli r23, r24, 0
000e90  5b010000  j 8
000e94  971b4c01  or r23, r24, r20
000e98  1783cc01  and r6, r25, r28
000e9c  93836a04  setlt.u r7, r21, r6
000ea0  3bd00300  bneq r7, zero, 20
000ea4  9f860c00  addli r13, r25, 0
000ea8  13836104  setlt.u r6, r3, r6
000eac  37500300  beq r6, zero, 20
000eb0  db040000  j 36
000eb4  97964c01  or r13, r25, r20
000eb8  13836104  setlt.u r6, r3, r6
000ebc  3b600300  bneq r6, zero, 24
000ec0  1bc30c01  srli r6, r25, 16
000ec4  1b031300  andi r6, r6, 1
000ec8  0b936c10  add.s r6, r25, r6
000ecc  0b131310  add.s r6, r6, r1
000ed0  9706b301  and r13, r6, r27
000ed4  1383a105  setlt.u r6, r3, r26
000ed8  bb300300  bneq r6, zero, 44
000edc  1b430c01  srli r6, r24, 16
000ee0  1b031300  andi r6, r6, 1
000ee4  0b136c10  add.s r6, r24, r6
000ee8  0b131310  add.s r6, r6, r1
000eec  970bb301  and r23, r6, r27
000ef0  1383c104  setlt.u r6, r3, r12
000ef4  37600300  beq r6, zero, 24
000ef8  13831105  setlt.u r6, r3, r17
000efc  3b6c03fe  bneq r6, zero, -232
000f00  5b050000  j 40
000f04  1383c104  setlt.u r6, r3, r12
000f08  bb4f03fe  bneq r6, zero, -16
000f0c  1bc30901  srli r6, r19, 16
000f10  1b031300  andi r6, r6, 1
000f14  0b936910  add.s r6, r19, r6
000f18  0b131310  add.s r6, r6, r1
000f1c  1709b301  and r18, r6, r27
000f20  13831105  setlt.u r6, r3, r17
000f24  bb4b03fe  bneq r6, zero, -272
000f28  1b410801  srli r2, r16, 16
000f2c  1b011100  andi r2, r2, 1
000f30  0b112810  add.s r2, r16, r2
000f34  0b111110  add.s r2, r2, r1
000f38  1701b101  and r2, r2, r27
000f3c  5bdbffff  j -296
000f40  00330002  core_id r6
000f44  2b850000  lui r10, 8
000f48  00200100  mfence { sm }
000f4c  1f714000  addli r2, zero, 39
000f50  b3030128  zext_int2long r[8:9], r2
000f54  63015fff  loadli.w r2,  -88(r30)
000f58  73307ffe  store.d r[8:9], -32(r30)
000f5c  b7650100  beq r2, zero, 376
000f60  1f014000  addli r2, zero, 32
000f64  3d000000  xfence
000f68  00a00300  mfence { lm, sm, gm }
000f6c  33030128  zext_int2long r[7:8], r2
000f70  5b030000  j 24
000f74  6b530ffe  load.d r[7:8], -32(r30)
000f78  6b548ffd  load.d r[9:10], -40(r30)
000f7c  13216404  setlt.ul r2, r[9:10], r[7:8]
000f80  27130400  addli.d r[7:8], r[9:10], 1
000f84  37250100  beq r2, zero, 328
000f88  1f710000  addli r2, zero, 7
000f8c  33040028  zext_int2long r[9:10], zero
000f90  733c6ffc  store.d r[7:8], -40(r30)
000f94  97372302  sll.d r[16:17], r[7:8], r2
000f98  5b050000  j 40
000f9c  27440400  addli.d r[9:10], r[9:10], 4
000fa0  0b136b10  add.s r6, r22, r6
000fa4  2b850000  lui r10, 8
000fa8  93234402  setneq.d r7, r[9:10], r[5:6]
000fac  73662300  stores.w r2, 12(r6)
000fb0  73642301  stores.w r18, 8(r6)
000fb4  73627301  stores.w r23, 4(r6)
000fb8  7360d300  stores.w r13, 0(r6)
000fbc  b7ee03fe  beq r7, zero, -72
000fc0  0b23f410  add.ul r[7:8], r[9:10], r[16:17]
000fc4  1b332300  slli r6, r6, 2
000fc8  0b116710  add.s r2, r14, r6
000fcc  ef43c100  loads.w r7, 12(r2)
000fd0  ef4c0100  loads.w r25, 0(r2)
000fd4  6f4c4100  loads.w r24, 4(r2)
000fd8  ef498100  loads.w r19, 8(r2)
000fdc  9788c301  and r17, r7, r28
000fe0  13811a05  setlt.u r2, r21, r17
000fe4  3b300100  bneq r2, zero, 12
000fe8  1f810300  addli r2, r7, 0
000fec  5b010000  j 8
000ff0  17914301  or r2, r7, r20
000ff4  1786c901  and r12, r19, r28
000ff8  1385ca04  setlt.u r10, r21, r12
000ffc  3b300500  bneq r10, zero, 12
001000  1f890900  addli r18, r19, 0
001004  5b010000  j 8
001008  17994901  or r18, r19, r20
00100c  170dcc01  and r26, r24, r28
001010  1385aa05  setlt.u r10, r21, r26
001014  3b300500  bneq r10, zero, 12
001018  9f0b0c00  addli r23, r24, 0
00101c  5b010000  j 8
001020  971b4c01  or r23, r24, r20
001024  1785cc01  and r10, r25, r28
001028  9385aa04  setlt.u r11, r21, r10
00102c  3bd00500  bneq r11, zero, 20
001030  9f860c00  addli r13, r25, 0
001034  1385a104  setlt.u r10, r3, r10
001038  37500500  beq r10, zero, 20
00103c  db040000  j 36
001040  97964c01  or r13, r25, r20
001044  1385a104  setlt.u r10, r3, r10
001048  3b600500  bneq r10, zero, 24
00104c  1bc50c01  srli r10, r25, 16
001050  1b051500  andi r10, r10, 1
001054  0b95ac10  add.s r10, r25, r10
001058  0b151510  add.s r10, r10, r1
00105c  9706b501  and r13, r10, r27
001060  1385a105  setlt.u r10, r3, r26
001064  bb300500  bneq r10, zero, 44
001068  1b450c01  srli r10, r24, 16
00106c  1b051500  andi r10, r10, 1
001070  0b15ac10  add.s r10, r24, r10
001074  0b151510  add.s r10, r10, r1
001078  970bb501  and r23, r10, r27
00107c  1385c104  setlt.u r10, r3, r12
001080  37600500  beq r10, zero, 24
001084  13851105  setlt.u r10, r3, r17
001088  3b5c05fe  bneq r10, zero, -236
00108c  5b050000  j 40
001090  1385c104  setlt.u r10, r3, r12
001094  bb4f05fe  bneq r10, zero, -16
001098  1bc50901  srli r10, r19, 16
00109c  1b051500  andi r10, r10, 1
0010a0  0b95a910  add.s r10, r19, r10
0010a4  0b151510  add.s r10, r10, r1
0010a8  1709b501  and r18, r10, r27
0010ac  13851105  setlt.u r10, r3, r17
0010b0  bb3b05fe  bneq r10, zero, -276
0010b4  1bc10301  srli r2, r7, 16
0010b8  1b011100  andi r2, r2, 1
0010bc  0b912310  add.s r2, r7, r2
0010c0  0b111110  add.s r2, r2, r1
0010c4  1701b101  and r2, r2, r27
0010c8  dbdaffff  j -300
0010cc  00330002  core_id r6
0010d0  00200100  mfence { sm }
0010d4  1f715000  addli r2, zero, 47
0010d8  b3030128  zext_int2long r[8:9], r2
0010dc  1f510000  addli r2, zero, 5
0010e0  733c7ffc  store.d r[8:9], -40(r30)
0010e4  bb652300  bneq r6, r2, 376
0010e8  1f015000  addli r2, zero, 40
0010ec  3d000000  xfence
0010f0  00a00300  mfence { lm, sm, gm }
0010f4  33030128  zext_int2long r[7:8], r2
0010f8  5b030000  j 24
0010fc  6b538ffd  load.d r[7:8], -40(r30)
001100  6b540ffd  load.d r[9:10], -48(r30)
001104  13216404  setlt.ul r2, r[9:10], r[7:8]
001108  27130400  addli.d r[7:8], r[9:10], 1
00110c  37150100  beq r2, zero, 324
001110  1f710000  addli r2, zero, 7
001114  33040028  zext_int2long r[9:10], zero
001118  73386ffc  store.d r[7:8], -48(r30)
00111c  97382302  sll.d r[18:19], r[7:8], r2
001120  db040000  j 36
001124  27440400  addli.d r[9:10], r[9:10], 4
001128  0b136b10  add.s r6, r22, r6
00112c  93234402  setneq.d r7, r[9:10], r[5:6]
001130  73662300  stores.w r2, 12(r6)
001134  7364b300  stores.w r11, 8(r6)
001138  73627301  stores.w r23, 4(r6)
00113c  7360d300  stores.w r13, 0(r6)
001140  b7fe03fe  beq r7, zero, -68
001144  0b231411  add.ul r[7:8], r[9:10], r[18:19]
001148  1b332300  slli r6, r6, 2
00114c  0b116710  add.s r2, r14, r6
001150  ef43c100  loads.w r7, 12(r2)
001154  ef4c0100  loads.w r25, 0(r2)
001158  6f4c4100  loads.w r24, 4(r2)
00115c  ef498100  loads.w r19, 8(r2)
001160  1785c301  and r10, r7, r28
001164  1381aa04  setlt.u r2, r21, r10
001168  3b300100  bneq r2, zero, 12
00116c  1f810300  addli r2, r7, 0
001170  5b010000  j 8
001174  17914301  or r2, r7, r20
001178  1786c901  and r12, r19, r28
00117c  9385ca04  setlt.u r11, r21, r12
001180  3bb00500  bneq r11, zero, 12
001184  9f850900  addli r11, r19, 0
001188  5b010000  j 8
00118c  97954901  or r11, r19, r20
001190  170dcc01  and r26, r24, r28
001194  9386aa05  setlt.u r13, r21, r26
001198  3bb00600  bneq r13, zero, 12
00119c  9f0b0c00  addli r23, r24, 0
0011a0  5b010000  j 8
0011a4  971b4c01  or r23, r24, r20
0011a8  9787cc01  and r15, r25, r28
0011ac  9386fa04  setlt.u r13, r21, r15
0011b0  3bd00600  bneq r13, zero, 20
0011b4  9f860c00  addli r13, r25, 0
0011b8  9387f104  setlt.u r15, r3, r15
0011bc  37d00700  beq r15, zero, 20
0011c0  db040000  j 36
0011c4  97964c01  or r13, r25, r20
0011c8  9387f104  setlt.u r15, r3, r15
0011cc  3be00700  bneq r15, zero, 24
0011d0  9bc60c01  srli r13, r25, 16
0011d4  9b861600  andi r13, r13, 1
0011d8  8b96dc10  add.s r13, r25, r13
0011dc  8b961610  add.s r13, r13, r1
0011e0  9786b601  and r13, r13, r27
0011e4  9387a105  setlt.u r15, r3, r26
0011e8  bbb00700  bneq r15, zero, 44
0011ec  9b470c01  srli r15, r24, 16
0011f0  9b871700  andi r15, r15, 1
0011f4  8b17fc10  add.s r15, r24, r15
0011f8  8b971710  add.s r15, r15, r1
0011fc  978bb701  and r23, r15, r27
001200  1386c104  setlt.u r12, r3, r12
001204  37600600  beq r12, zero, 24
001208  1385a104  setlt.u r10, r3, r10
00120c  3b6c05fe  bneq r10, zero, -232
001210  5b050000  j 40
001214  1386c104  setlt.u r12, r3, r12
001218  bb4f06fe  bneq r12, zero, -16
00121c  9bc50901  srli r11, r19, 16
001220  9b851500  andi r11, r11, 1
001224  8b95b910  add.s r11, r19, r11
001228  8b951510  add.s r11, r11, r1
00122c  9785b501  and r11, r11, r27
001230  1385a104  setlt.u r10, r3, r10
001234  bb4b05fe  bneq r10, zero, -272
001238  1bc10301  srli r2, r7, 16
00123c  1b011100  andi r2, r2, 1
001240  0b912310  add.s r2, r7, r2
001244  0b111110  add.s r2, r2, r1
001248  1701b101  and r2, r2, r27
00124c  5bdbffff  j -296
001250  00330002  core_id r6
001254  2b850000  lui r10, 8
001258  00200100  mfence { sm }
00125c  1f716000  addli r2, zero, 55
001260  b3030128  zext_int2long r[8:9], r2
001264  1f610000  addli r2, zero, 6
001268  73387ffc  store.d r[8:9], -48(r30)
00126c  bb552300  bneq r6, r2, 372
001270  1f016000  addli r2, zero, 48
001274  3d000000  xfence
001278  00a00300  mfence { lm, sm, gm }
00127c  33030128  zext_int2long r[7:8], r2
001280  5b030000  j 24
001284  6b530ffd  load.d r[7:8], -48(r30)
001288  6b548ffc  load.d r[9:10], -56(r30)
00128c  13216404  setlt.ul r2, r[9:10], r[7:8]
001290  27130400  addli.d r[7:8], r[9:10], 1
001294  37150100  beq r2, zero, 324
001298  1f710000  addli r2, zero, 7
00129c  33040028  zext_int2long r[9:10], zero
0012a0  73346ffc  store.d r[7:8], -56(r30)
0012a4  973b2302  sll.d r[24:25], r[7:8], r2
0012a8  db040000  j 36
0012ac  27440400  addli.d r[9:10], r[9:10], 4
0012b0  0b136b10  add.s r6, r22, r6
0012b4  93234402  setneq.d r7, r[9:10], r[5:6]
0012b8  73662300  stores.w r2, 12(r6)
0012bc  7364b300  stores.w r11, 8(r6)
0012c0  73622301  stores.w r18, 4(r6)
0012c4  7360d300  stores.w r13, 0(r6)
0012c8  b7fe03fe  beq r7, zero, -68
0012cc  0b237411  add.ul r[7:8], r[9:10], r[24:25]
0012d0  1b332300  slli r6, r6, 2
0012d4  0b116710  add.s r2, r14, r6
0012d8  ef43c100  loads.w r7, 12(r2)
0012dc  ef4c0100  loads.w r25, 0(r2)
0012e0  ef494100  loads.w r19, 4(r2)
0012e4  ef488100  loads.w r17, 8(r2)
0012e8  1785c301  and r10, r7, r28
0012ec  1381aa04  setlt.u r2, r21, r10
0012f0  3b300100  bneq r2, zero, 12
0012f4  1f810300  addli r2, r7, 0
0012f8  5b010000  j 8
0012fc  17914301  or r2, r7, r20
001300  1786c801  and r12, r17, r28
001304  9385ca04  setlt.u r11, r21, r12
001308  3bb00500  bneq r11, zero, 12
00130c  9f850800  addli r11, r17, 0
001310  5b010000  j 8
001314  97954801  or r11, r17, r20
001318  178dc901  and r26, r19, r28
00131c  9386aa05  setlt.u r13, r21, r26
001320  3bb00600  bneq r13, zero, 12
001324  1f890900  addli r18, r19, 0
001328  5b010000  j 8
00132c  17994901  or r18, r19, r20
001330  9787cc01  and r15, r25, r28
001334  9386fa04  setlt.u r13, r21, r15
001338  3bd00600  bneq r13, zero, 20
00133c  9f860c00  addli r13, r25, 0
001340  9387f104  setlt.u r15, r3, r15
001344  37d00700  beq r15, zero, 20
001348  db040000  j 36
00134c  97964c01  or r13, r25, r20
001350  9387f104  setlt.u r15, r3, r15
001354  3be00700  bneq r15, zero, 24
001358  9bc60c01  srli r13, r25, 16
00135c  9b861600  andi r13, r13, 1
001360  8b96dc10  add.s r13, r25, r13
001364  8b961610  add.s r13, r13, r1
001368  9786b601  and r13, r13, r27
00136c  9387a105  setlt.u r15, r3, r26
001370  bbb00700  bneq r15, zero, 44
001374  9bc70901  srli r15, r19, 16
001378  9b871700  andi r15, r15, 1
00137c  8b97f910  add.s r15, r19, r15
001380  8b971710  add.s r15, r15, r1
001384  1789b701  and r18, r15, r27
001388  1386c104  setlt.u r12, r3, r12
00138c  37600600  beq r12, zero, 24
001390  1385a104  setlt.u r10, r3, r10
001394  3b6c05fe  bneq r10, zero, -232
001398  5b050000  j 40
00139c  1386c104  setlt.u r12, r3, r12
0013a0  bb4f06fe  bneq r12, zero, -16
0013a4  9bc50801  srli r11, r17, 16
0013a8  9b851500  andi r11, r11, 1
0013ac  8b95b810  add.s r11, r17, r11
0013b0  8b951510  add.s r11, r11, r1
0013b4  9785b501  and r11, r11, r27
0013b8  1385a104  setlt.u r10, r3, r10
0013bc  bb4b05fe  bneq r10, zero, -272
0013c0  1bc10301  srli r2, r7, 16
0013c4  1b011100  andi r2, r2, 1
0013c8  0b912310  add.s r2, r7, r2
0013cc  0b111110  add.s r2, r2, r1
0013d0  1701b101  and r2, r2, r27
0013d4  5bdbffff  j -296
0013d8  2b850000  lui r10, 8
0013dc  00200100  mfence { sm }
0013e0  1f717000  addli r2, zero, 63
0013e4  33030128  zext_int2long r[7:8], r2
0013e8  63415fff  loadli.w r2,  -84(r30)
0013ec  73346ffc  store.d r[7:8], -56(r30)
0013f0  b7550100  beq r2, zero, 372
0013f4  1f017000  addli r2, zero, 56
0013f8  3d000000  xfence
0013fc  00a00300  mfence { lm, sm, gm }
001400  33030128  zext_int2long r[7:8], r2
001404  5b030000  j 24
001408  6b538ffc  load.d r[7:8], -56(r30)
00140c  6b540ffc  load.d r[9:10], -64(r30)
001410  13216404  setlt.ul r2, r[9:10], r[7:8]
001414  27130400  addli.d r[7:8], r[9:10], 1
001418  37150100  beq r2, zero, 324
00141c  1f710000  addli r2, zero, 7
001420  33040028  zext_int2long r[9:10], zero
001424  73306ffc  store.d r[7:8], -64(r30)
001428  973c2302  sll.d r[26:27], r[7:8], r2
00142c  db040000  j 36
001430  27440400  addli.d r[9:10], r[9:10], 4
001434  0b136b10  add.s r6, r22, r6
001438  93234402  setneq.d r7, r[9:10], r[5:6]
00143c  73662300  stores.w r2, 12(r6)
001440  7364b300  stores.w r11, 8(r6)
001444  73622301  stores.w r18, 4(r6)
001448  7360d300  stores.w r13, 0(r6)
00144c  b7fe03fe  beq r7, zero, -68
001450  0b239411  add.ul r[7:8], r[9:10], r[26:27]
001454  1b332300  slli r6, r6, 2
001458  0b116710  add.s r2, r14, r6
00145c  ef43c100  loads.w r7, 12(r2)
001460  6f480100  loads.w r16, 0(r2)
001464  ef474100  loads.w r15, 4(r2)
001468  ef488100  loads.w r17, 8(r2)
00146c  1785c301  and r10, r7, r28
001470  1381aa04  setlt.u r2, r21, r10
001474  3b300100  bneq r2, zero, 12
001478  1f810300  addli r2, r7, 0
00147c  5b010000  j 8
001480  17914301  or r2, r7, r20
001484  1786c801  and r12, r17, r28
001488  9385ca04  setlt.u r11, r21, r12
00148c  3bb00500  bneq r11, zero, 12
001490  9f850800  addli r11, r17, 0
001494  5b010000  j 8
001498  97954801  or r11, r17, r20
00149c  9789c701  and r19, r15, r28
0014a0  93863a05  setlt.u r13, r21, r19
0014a4  3bb00600  bneq r13, zero, 12
0014a8  1f890700  addli r18, r15, 0
0014ac  5b010000  j 8
0014b0  17994701  or r18, r15, r20
0014b4  970bc801  and r23, r16, r28
0014b8  93867a05  setlt.u r13, r21, r23
0014bc  3bd00600  bneq r13, zero, 20
0014c0  9f060800  addli r13, r16, 0
0014c4  938b7105  setlt.u r23, r3, r23
0014c8  37d00b00  beq r23, zero, 20
0014cc  db040000  j 36
0014d0  97164801  or r13, r16, r20
0014d4  938b7105  setlt.u r23, r3, r23
0014d8  3be00b00  bneq r23, zero, 24
0014dc  9b460801  srli r13, r16, 16
0014e0  9b861600  andi r13, r13, 1
0014e4  8b16d810  add.s r13, r16, r13
0014e8  8b961610  add.s r13, r13, r1
0014ec  9786b601  and r13, r13, r27
0014f0  13883105  setlt.u r16, r3, r19
0014f4  bb300800  bneq r16, zero, 44
0014f8  1bc80701  srli r16, r15, 16
0014fc  1b081800  andi r16, r16, 1
001500  8b970711  add.s r15, r15, r16
001504  8b971710  add.s r15, r15, r1
001508  1789b701  and r18, r15, r27
00150c  1386c104  setlt.u r12, r3, r12
001510  37600600  beq r12, zero, 24
001514  1385a104  setlt.u r10, r3, r10
001518  3b6c05fe  bneq r10, zero, -232
00151c  5b050000  j 40
001520  1386c104  setlt.u r12, r3, r12
001524  bb4f06fe  bneq r12, zero, -16
001528  9bc50801  srli r11, r17, 16
00152c  9b851500  andi r11, r11, 1
001530  8b95b810  add.s r11, r17, r11
001534  8b951510  add.s r11, r11, r1
001538  9785b501  and r11, r11, r27
00153c  1385a104  setlt.u r10, r3, r10
001540  bb4b05fe  bneq r10, zero, -272
001544  1bc10301  srli r2, r7, 16
001548  1b011100  andi r2, r2, 1
00154c  0b912310  add.s r2, r7, r2
001550  0b111110  add.s r2, r2, r1
001554  1701b101  and r2, r2, r27
001558  5bdbffff  j -296
00155c  2b850000  lui r10, 8
001560  00200100  mfence { sm }
001564  63012fff  loadli.w r2,  -112(r30)
001568  1f030007  addli r6, zero, 896
00156c  33030328  zext_int2long r[7:8], r6
001570  1b317100  slli r2, r2, 7
001574  33040128  zext_int2long r[9:10], r2
001578  1f71f001  addli r2, zero, 255
00157c  0b236440  min.ul r[7:8], r[9:10], r[7:8]
001580  80220104  csr_set csr5, r2
001584  1f310000  addli r2, zero, 3
001588  00e00200  sync_core
00158c  27030301  addli.d r[7:8], r[7:8], 128
001590  0b238348  max.ul r[7:8], r[7:8], r[9:10]
001594  0b338318  sub.sl r[7:8], r[7:8], r[9:10]
001598  8b274340  min.ul r[16:17], r[7:8], r[5:6]
00159c  80330002  core_id r7
0015a0  7338fff8  store.d r[16:17], -112(r30)
0015a4  bba02300  bneq r7, r2, 40
0015a8  1f311000  addli r2, zero, 11
0015ac  7d000100  xsignal r2, 0
0015b0  1f411000  addli r2, zero, 12
0015b4  7d000100  xsignal r2, 0
0015b8  1f511000  addli r2, zero, 13
0015bc  7d100100  xwait r2, 0
0015c0  1f212000  addli r2, zero, 18
0015c4  7d100100  xwait r2, 0
0015c8  db6b0000  j 860
0015cc  63016fff  loadli.w r2,  -80(r30)
0015d0  2bc30800  lui r6, 140
0015d4  1b319100  slli r2, r2, 9
0015d8  8b166110  add.s r13, r2, r6
0015dc  1f130000  addli r6, zero, 1
0015e0  3bfb6300  bneq r7, r6, 732
0015e4  6b530f01  load.d r[7:8], 16(r30)
0015e8  6b548ff8  load.d r[9:10], -120(r30)
0015ec  1f062000  addli r12, zero, 16
0015f0  9f450000  addli r11, zero, 4
0015f4  7d100600  xwait r12, 0
0015f8  0b238310  add.ul r[7:8], r[7:8], r[9:10]
0015fc  63044fff  loadli.w r8,  -96(r30)
001600  bfd48500  blt.s r11, r8, 308
001604  1f540000  addli r8, zero, 5
001608  1f150000  addli r10, zero, 1
00160c  9f240000  addli r9, zero, 2
001610  1d000400  lock zero, r8
001614  15000014  dma_cfg zero, zero, zero, 10
001618  1500a014  dma_cfg zero, zero, r10, 10
00161c  15009014  dma_cfg zero, zero, r9, 10
001620  9f340000  addli r9, zero, 3
001624  15009014  dma_cfg zero, zero, r9, 10
001628  9f640000  addli r9, zero, 6
00162c  1500b014  dma_cfg zero, zero, r11, 10
001630  15008014  dma_cfg zero, zero, r8, 10
001634  15009014  dma_cfg zero, zero, r9, 10
001638  9f740000  addli r9, zero, 7
00163c  15009014  dma_cfg zero, zero, r9, 10
001640  9f041000  addli r9, zero, 8
001644  15009014  dma_cfg zero, zero, r9, 10
001648  9f141000  addli r9, zero, 9
00164c  15009014  dma_cfg zero, zero, r9, 10
001650  9f241000  addli r9, zero, 10
001654  15009014  dma_cfg zero, zero, r9, 10
001658  9f341000  addli r9, zero, 11
00165c  15009014  dma_cfg zero, zero, r9, 10
001660  9f441000  addli r9, zero, 12
001664  15009014  dma_cfg zero, zero, r9, 10
001668  9f541000  addli r9, zero, 13
00166c  15009014  dma_cfg zero, zero, r9, 10
001670  9f641000  addli r9, zero, 14
001674  15009014  dma_cfg zero, zero, r9, 10
001678  9f741000  addli r9, zero, 15
00167c  15009014  dma_cfg zero, zero, r9, 10
001680  9f142000  addli r9, zero, 17
001684  1500c014  dma_cfg zero, zero, r12, 10
001688  15009014  dma_cfg zero, zero, r9, 10
00168c  9f242000  addli r9, zero, 18
001690  15009014  dma_cfg zero, zero, r9, 10
001694  9f342000  addli r9, zero, 19
001698  15009014  dma_cfg zero, zero, r9, 10
00169c  9f442000  addli r9, zero, 20
0016a0  15009014  dma_cfg zero, zero, r9, 10
0016a4  9f542000  addli r9, zero, 21
0016a8  15009014  dma_cfg zero, zero, r9, 10
0016ac  9f642000  addli r9, zero, 22
0016b0  15009014  dma_cfg zero, zero, r9, 10
0016b4  9f742000  addli r9, zero, 23
0016b8  15009014  dma_cfg zero, zero, r9, 10
0016bc  9f043000  addli r9, zero, 24
0016c0  15009014  dma_cfg zero, zero, r9, 10
0016c4  9f143000  addli r9, zero, 25
0016c8  15009014  dma_cfg zero, zero, r9, 10
0016cc  9f243000  addli r9, zero, 26
0016d0  15009014  dma_cfg zero, zero, r9, 10
0016d4  9f343000  addli r9, zero, 27
0016d8  15009014  dma_cfg zero, zero, r9, 10
0016dc  9f443000  addli r9, zero, 28
0016e0  15009014  dma_cfg zero, zero, r9, 10
0016e4  9f543000  addli r9, zero, 29
0016e8  15009014  dma_cfg zero, zero, r9, 10
0016ec  9f643000  addli r9, zero, 30
0016f0  15009014  dma_cfg zero, zero, r9, 10
0016f4  9f743000  addli r9, zero, 31
0016f8  15009014  dma_cfg zero, zero, r9, 10
0016fc  9f048000  addli r9, zero, 64
001700  15050500  dma_cfg r10, r10, zero, 0
001704  15050002  dma_cfg r10, zero, zero, 1
001708  15000004  dma_cfg zero, zero, zero, 2
00170c  95069006  dma_cfg r13, zero, r9, 3
001710  9f040001  addli r9, zero, 128
001714  9504b008  dma_cfg r9, zero, r11, 4
001718  9f040004  addli r9, zero, 512
00171c  9504a00a  dma_cfg r9, zero, r10, 5
001720  15000010  dma_cfg zero, zero, zero, 8
001724  35000000  dma_run zero
001728  1500a00a  dma_cfg zero, zero, r10, 5
00172c  15000010  dma_cfg zero, zero, zero, 8
001730  1d100400  unlock r8
001734  2bc40800  lui r8, 140
001738  1f150000  addli r10, zero, 1
00173c  1d800500  lock zero, r11
001740  9f048000  addli r9, zero, 64
001744  1b140404  ori r8, r8, 64
001748  15050500  dma_cfg r10, r10, zero, 0
00174c  15800304  dma_cfg zero, r7, zero, 2
001750  0b118110  add.s r2, r2, r8
001754  1ff43700  addli r8, r15, 31
001758  15019306  dma_cfg r2, r6, r9, 3
00175c  1bb31700  slli r6, r15, 1
001760  1b415400  srli r2, r8, 5
001764  9f070001  addli r15, zero, 128
001768  9f030002  addli r7, zero, 256
00176c  1f080004  addli r16, zero, 512
001770  1f240000  addli r8, zero, 2
001774  95872408  dma_cfg r15, r9, r2, 4
001778  1b03e303  andi r6, r6, 62
00177c  1588a30a  dma_cfg r16, r7, r10, 5
001780  9f530000  addli r7, zero, 5
001784  15006010  dma_cfg zero, zero, r6, 8
001788  35000000  dma_run zero
00178c  1500a00a  dma_cfg zero, zero, r10, 5
001790  15000010  dma_cfg zero, zero, zero, 8
001794  1d900500  unlock r11
001798  1d800300  lock zero, r7
00179c  15000014  dma_cfg zero, zero, zero, 10
0017a0  1500a014  dma_cfg zero, zero, r10, 10
0017a4  15008014  dma_cfg zero, zero, r8, 10
0017a8  1f340000  addli r8, zero, 3
0017ac  15008014  dma_cfg zero, zero, r8, 10
0017b0  1f640000  addli r8, zero, 6
0017b4  1500b014  dma_cfg zero, zero, r11, 10
0017b8  9f152000  addli r11, zero, 17
0017bc  15007014  dma_cfg zero, zero, r7, 10
0017c0  15008014  dma_cfg zero, zero, r8, 10
0017c4  1f740000  addli r8, zero, 7
0017c8  15008014  dma_cfg zero, zero, r8, 10
0017cc  1f041000  addli r8, zero, 8
0017d0  15008014  dma_cfg zero, zero, r8, 10
0017d4  1f141000  addli r8, zero, 9
0017d8  15008014  dma_cfg zero, zero, r8, 10
0017dc  1f241000  addli r8, zero, 10
0017e0  15008014  dma_cfg zero, zero, r8, 10
0017e4  1f341000  addli r8, zero, 11
0017e8  15008014  dma_cfg zero, zero, r8, 10
0017ec  1f441000  addli r8, zero, 12
0017f0  15008014  dma_cfg zero, zero, r8, 10
0017f4  1f541000  addli r8, zero, 13
0017f8  15008014  dma_cfg zero, zero, r8, 10
0017fc  1f641000  addli r8, zero, 14
001800  15008014  dma_cfg zero, zero, r8, 10
001804  1f741000  addli r8, zero, 15
001808  15008014  dma_cfg zero, zero, r8, 10
00180c  1500c014  dma_cfg zero, zero, r12, 10
001810  1500b014  dma_cfg zero, zero, r11, 10
001814  9f252000  addli r11, zero, 18
001818  1500b014  dma_cfg zero, zero, r11, 10
00181c  9f352000  addli r11, zero, 19
001820  1500b014  dma_cfg zero, zero, r11, 10
001824  9f452000  addli r11, zero, 20
001828  1500b014  dma_cfg zero, zero, r11, 10
00182c  9f552000  addli r11, zero, 21
001830  1500b014  dma_cfg zero, zero, r11, 10
001834  9f652000  addli r11, zero, 22
001838  1500b014  dma_cfg zero, zero, r11, 10
00183c  9f752000  addli r11, zero, 23
001840  1500b014  dma_cfg zero, zero, r11, 10
001844  9f053000  addli r11, zero, 24
001848  1500b014  dma_cfg zero, zero, r11, 10
00184c  9f153000  addli r11, zero, 25
001850  1500b014  dma_cfg zero, zero, r11, 10
001854  9f253000  addli r11, zero, 26
001858  1500b014  dma_cfg zero, zero, r11, 10
00185c  9f353000  addli r11, zero, 27
001860  1500b014  dma_cfg zero, zero, r11, 10
001864  9f453000  addli r11, zero, 28
001868  1500b014  dma_cfg zero, zero, r11, 10
00186c  9f553000  addli r11, zero, 29
001870  1500b014  dma_cfg zero, zero, r11, 10
001874  9f653000  addli r11, zero, 30
001878  1500b014  dma_cfg zero, zero, r11, 10
00187c  9f753000  addli r11, zero, 31
001880  1500b014  dma_cfg zero, zero, r11, 10
001884  15050500  dma_cfg r10, r10, zero, 0
001888  15050002  dma_cfg r10, zero, zero, 1
00188c  15000004  dma_cfg zero, zero, zero, 2
001890  95069006  dma_cfg r13, zero, r9, 3
001894  95072008  dma_cfg r15, zero, r2, 4
001898  1508a00a  dma_cfg r16, zero, r10, 5
00189c  15006010  dma_cfg zero, zero, r6, 8
0018a0  35000000  dma_run zero
0018a4  1500a00a  dma_cfg zero, zero, r10, 5
0018a8  15000010  dma_cfg zero, zero, zero, 8
0018ac  1d900300  unlock r7
0018b0  7d000400  xsignal r8, 0
0018b4  80330002  core_id r7
0018b8  db0d0000  j 108
0018bc  1f510000  addli r2, zero, 5
0018c0  bb912300  bneq r7, r2, 100
0018c4  1f431000  addli r6, zero, 12
0018c8  1f010000  addli r2, zero, 0
0018cc  7d100300  xwait r6, 0
0018d0  1f731000  addli r6, zero, 15
0018d4  7d100300  xwait r6, 0
0018d8  1f230000  addli r6, zero, 2
0018dc  1d000300  lock zero, r6
0018e0  2b03803f  lui r6, 260096
0018e4  0d000002  ew_cfg zero, zero, zero, 1
0018e8  0d130300  ewcoeff_cfg r6, r6, zero, 0
0018ec  1f73f000  addli r6, zero, 127
0018f0  0d000304  ew_cfg zero, r6, zero, 2
0018f4  1f130000  addli r6, zero, 1
0018f8  0d030006  ew_cfg r6, zero, zero, 3
0018fc  0b132b10  add.s r6, r22, r2
001900  1f010104  addli r2, r2, 512
001904  2d03d300  dsmadd r6, r6, r13, 0
001908  bb5fa1fe  bneq r2, r10, -12
00190c  1f210000  addli r2, zero, 2
001910  1d100100  unlock r2
001914  1f511000  addli r2, zero, 13
001918  7d000100  xsignal r2, 0
00191c  1f012000  addli r2, zero, 16
001920  7d000100  xsignal r2, 0
001924  2b410600  lui r2, 100
001928  3d000000  xfence
00192c  00a00300  mfence { lm, sm, gm }
001930  8b162710  add.s r13, r14, r2
001934  1f71f001  addli r2, zero, 255
001938  80220104  csr_set csr5, r2
00193c  00e00200  sync_core
001940  37a20302  beq r7, zero, 1160
001944  1f110000  addli r2, zero, 1
001948  bbe72302  bneq r7, r2, 1528
00194c  1f011000  addli r2, zero, 8
001950  3d000000  xfence
001954  00a00300  mfence { lm, sm, gm }
001958  33030128  zext_int2long r[7:8], r2
00195c  5b030000  j 24
001960  6b538fff  load.d r[7:8], -8(r30)
001964  6b540ffc  load.d r[9:10], -64(r30)
001968  13216404  setlt.ul r2, r[9:10], r[7:8]
00196c  27130400  addli.d r[7:8], r[9:10], 1
001970  37150100  beq r2, zero, 324
001974  1f710000  addli r2, zero, 7
001978  33040028  zext_int2long r[9:10], zero
00197c  73306ffc  store.d r[7:8], -64(r30)
001980  973c2302  sll.d r[26:27], r[7:8], r2
001984  db040000  j 36
001988  27440400  addli.d r[9:10], r[9:10], 4
00198c  0b936610  add.s r6, r13, r6
001990  13214402  setneq.d r2, r[9:10], r[5:6]
001994  73667300  stores.w r7, 12(r6)
001998  7364b300  stores.w r11, 8(r6)
00199c  7362f300  stores.w r15, 4(r6)
0019a0  7360c300  stores.w r12, 0(r6)
0019a4  b77e01fe  beq r2, zero, -68
0019a8  0b239411  add.ul r[7:8], r[9:10], r[26:27]
0019ac  1b332300  slli r6, r6, 2
0019b0  8b136b10  add.s r7, r22, r6
0019b4  6fc1c300  loads.w r2, 12(r7)
0019b8  efc90300  loads.w r19, 0(r7)
0019bc  6fc84300  loads.w r16, 4(r7)
0019c0  efc88300  loads.w r17, 8(r7)
0019c4  1705c101  and r10, r2, r28
0019c8  9383aa04  setlt.u r7, r21, r10
0019cc  3bb00300  bneq r7, zero, 12
0019d0  9f030100  addli r7, r2, 0
0019d4  5b010000  j 8
0019d8  97134101  or r7, r2, r20
0019dc  1789c801  and r18, r17, r28
0019e0  93852a05  setlt.u r11, r21, r18
0019e4  3bb00500  bneq r11, zero, 12
0019e8  9f850800  addli r11, r17, 0
0019ec  5b010000  j 8
0019f0  97954801  or r11, r17, r20
0019f4  970bc801  and r23, r16, r28
0019f8  13867a05  setlt.u r12, r21, r23
0019fc  3b300600  bneq r12, zero, 12
001a00  9f070800  addli r15, r16, 0
001a04  5b010000  j 8
001a08  97174801  or r15, r16, r20
001a0c  178cc901  and r24, r19, r28
001a10  13868a05  setlt.u r12, r21, r24
001a14  3b500600  bneq r12, zero, 20
001a18  1f860900  addli r12, r19, 0
001a1c  138c8105  setlt.u r24, r3, r24
001a20  37500c00  beq r24, zero, 20
001a24  db040000  j 36
001a28  17964901  or r12, r19, r20
001a2c  138c8105  setlt.u r24, r3, r24
001a30  3b600c00  bneq r24, zero, 24
001a34  1bc60901  srli r12, r19, 16
001a38  1b061600  andi r12, r12, 1
001a3c  0b96c910  add.s r12, r19, r12
001a40  0b161610  add.s r12, r12, r1
001a44  1706b601  and r12, r12, r27
001a48  93897105  setlt.u r19, r3, r23
001a4c  bbb00900  bneq r19, zero, 44
001a50  9b470801  srli r15, r16, 16
001a54  9b871700  andi r15, r15, 1
001a58  8b17f810  add.s r15, r16, r15
001a5c  8b971710  add.s r15, r15, r1
001a60  9787b701  and r15, r15, r27
001a64  13882105  setlt.u r16, r3, r18
001a68  37600800  beq r16, zero, 24
001a6c  1385a104  setlt.u r10, r3, r10
001a70  3b6c05fe  bneq r10, zero, -232
001a74  5b050000  j 40
001a78  13882105  setlt.u r16, r3, r18
001a7c  bb4f08fe  bneq r16, zero, -16
001a80  9bc50801  srli r11, r17, 16
001a84  9b851500  andi r11, r11, 1
001a88  8b95b810  add.s r11, r17, r11
001a8c  8b951510  add.s r11, r11, r1
001a90  9785b501  and r11, r11, r27
001a94  1385a104  setlt.u r10, r3, r10
001a98  bb4b05fe  bneq r10, zero, -272
001a9c  9b430101  srli r7, r2, 16
001aa0  9b831300  andi r7, r7, 1
001aa4  0b117110  add.s r2, r2, r7
001aa8  0b111110  add.s r2, r2, r1
001aac  9703b101  and r7, r2, r27
001ab0  5bdbffff  j -296
001ab4  80330002  core_id r7
001ab8  00200100  mfence { sm }
001abc  63414fff  loadli.w r2,  -92(r30)
001ac0  3b220102  bneq r2, zero, 1160
001ac4  1f310000  addli r2, zero, 3
001ac8  bbe72302  bneq r7, r2, 1528
001acc  1f013000  addli r2, zero, 24
001ad0  3d000000  xfence
001ad4  00a00300  mfence { lm, sm, gm }
001ad8  33030128  zext_int2long r[7:8], r2
001adc  5b030000  j 24
001ae0  6b538ffe  load.d r[7:8], -24(r30)
001ae4  6b548fff  load.d r[9:10], -8(r30)
001ae8  13216404  setlt.ul r2, r[9:10], r[7:8]
001aec  27130400  addli.d r[7:8], r[9:10], 1
001af0  37150100  beq r2, zero, 324
001af4  1f710000  addli r2, zero, 7
001af8  33040028  zext_int2long r[9:10], zero
001afc  733c6ffe  store.d r[7:8], -8(r30)
001b00  973c2302  sll.d r[26:27], r[7:8], r2
001b04  db040000  j 36
001b08  27440400  addli.d r[9:10], r[9:10], 4
001b0c  0b936610  add.s r6, r13, r6
001b10  13214402  setneq.d r2, r[9:10], r[5:6]
001b14  73667300  stores.w r7, 12(r6)
001b18  7364b300  stores.w r11, 8(r6)
001b1c  7362f300  stores.w r15, 4(r6)
001b20  7360c300  stores.w r12, 0(r6)
001b24  b77e01fe  beq r2, zero, -68
001b28  0b239411  add.ul r[7:8], r[9:10], r[26:27]
001b2c  1b332300  slli r6, r6, 2
001b30  8b136b10  add.s r7, r22, r6
001b34  6fc1c300  loads.w r2, 12(r7)
001b38  efc90300  loads.w r19, 0(r7)
001b3c  6fc84300  loads.w r16, 4(r7)
001b40  efc88300  loads.w r17, 8(r7)
001b44  1705c101  and r10, r2, r28
001b48  9383aa04  setlt.u r7, r21, r10
001b4c  3bb00300  bneq r7, zero, 12
001b50  9f030100  addli r7, r2, 0
001b54  5b010000  j 8
001b58  97134101  or r7, r2, r20
001b5c  1789c801  and r18, r17, r28
001b60  93852a05  setlt.u r11, r21, r18
001b64  3bb00500  bneq r11, zero, 12
001b68  9f850800  addli r11, r17, 0
001b6c  5b010000  j 8
001b70  97954801  or r11, r17, r20
001b74  970bc801  and r23, r16, r28
001b78  13867a05  setlt.u r12, r21, r23
001b7c  3b300600  bneq r12, zero, 12
001b80  9f070800  addli r15, r16, 0
001b84  5b010000  j 8
001b88  97174801  or r15, r16, r20
001b8c  178cc901  and r24, r19, r28
001b90  13868a05  setlt.u r12, r21, r24
001b94  3b500600  bneq r12, zero, 20
001b98  1f860900  addli r12, r19, 0
001b9c  138c8105  setlt.u r24, r3, r24
001ba0  37500c00  beq r24, zero, 20
001ba4  db040000  j 36
001ba8  17964901  or r12, r19, r20
001bac  138c8105  setlt.u r24, r3, r24
001bb0  3b600c00  bneq r24, zero, 24
001bb4  1bc60901  srli r12, r19, 16
001bb8  1b061600  andi r12, r12, 1
001bbc  0b96c910  add.s r12, r19, r12
001bc0  0b161610  add.s r12, r12, r1
001bc4  1706b601  and r12, r12, r27
001bc8  93897105  setlt.u r19, r3, r23
001bcc  bbb00900  bneq r19, zero, 44
001bd0  9b470801  srli r15, r16, 16
001bd4  9b871700  andi r15, r15, 1
001bd8  8b17f810  add.s r15, r16, r15
001bdc  8b971710  add.s r15, r15, r1
001be0  9787b701  and r15, r15, r27
001be4  13882105  setlt.u r16, r3, r18
001be8  37600800  beq r16, zero, 24
001bec  1385a104  setlt.u r10, r3, r10
001bf0  3b6c05fe  bneq r10, zero, -232
001bf4  5b050000  j 40
001bf8  13882105  setlt.u r16, r3, r18
001bfc  bb4f08fe  bneq r16, zero, -16
001c00  9bc50801  srli r11, r17, 16
001c04  9b851500  andi r11, r11, 1
001c08  8b95b810  add.s r11, r17, r11
001c0c  8b951510  add.s r11, r11, r1
001c10  9785b501  and r11, r11, r27
001c14  1385a104  setlt.u r10, r3, r10
001c18  bb4b05fe  bneq r10, zero, -272
001c1c  9b430101  srli r7, r2, 16
001c20  9b831300  andi r7, r7, 1
001c24  0b117110  add.s r2, r2, r7
001c28  0b111110  add.s r2, r2, r1
001c2c  9703b101  and r7, r2, r27
001c30  5bdbffff  j -296
001c34  80330002  core_id r7
001c38  00200100  mfence { sm }
001c3c  63015fff  loadli.w r2,  -88(r30)
001c40  3b220102  bneq r2, zero, 1160
001c44  1f510000  addli r2, zero, 5
001c48  bbe72302  bneq r7, r2, 1528
001c4c  1f015000  addli r2, zero, 40
001c50  3d000000  xfence
001c54  00a00300  mfence { lm, sm, gm }
001c58  33030128  zext_int2long r[7:8], r2
001c5c  5b030000  j 24
001c60  6b538ffd  load.d r[7:8], -40(r30)
001c64  6b548fff  load.d r[9:10], -8(r30)
001c68  13216404  setlt.ul r2, r[9:10], r[7:8]
001c6c  27130400  addli.d r[7:8], r[9:10], 1
001c70  37150100  beq r2, zero, 324
001c74  1f710000  addli r2, zero, 7
001c78  b30b0028  zext_int2long r[24:25], zero
001c7c  733c6ffe  store.d r[7:8], -8(r30)
001c80  17342302  sll.d r[9:10], r[7:8], r2
001c84  db040000  j 36
001c88  a7cb0b00  addli.d r[24:25], r[24:25], 4
001c8c  0b933611  add.s r6, r13, r19
001c90  13a14b02  setneq.d r2, r[24:25], r[5:6]
001c94  7366a300  stores.w r10, 12(r6)
001c98  73641301  stores.w r17, 8(r6)
001c9c  7362f300  stores.w r15, 4(r6)
001ca0  7360c300  stores.w r12, 0(r6)
001ca4  b77e01fe  beq r2, zero, -68
001ca8  0ba38b10  add.ul r[7:8], r[24:25], r[9:10]
001cac  9b392300  slli r19, r6, 2
001cb0  0b133b11  add.s r6, r22, r19
001cb4  6f41c300  loads.w r2, 12(r6)
001cb8  6f4d0300  loads.w r26, 0(r6)
001cbc  6f484300  loads.w r16, 4(r6)
001cc0  6f498300  loads.w r18, 8(r6)
001cc4  9705c101  and r11, r2, r28
001cc8  1383ba04  setlt.u r6, r21, r11
001ccc  3b300300  bneq r6, zero, 12
001cd0  1f050100  addli r10, r2, 0
001cd4  5b010000  j 8
001cd8  17154101  or r10, r2, r20
001cdc  970cc901  and r25, r18, r28
001ce0  13839a05  setlt.u r6, r21, r25
001ce4  3b300300  bneq r6, zero, 12
001ce8  9f080900  addli r17, r18, 0
001cec  5b010000  j 8
001cf0  97184901  or r17, r18, r20
001cf4  1703c801  and r6, r16, r28
001cf8  93836a04  setlt.u r7, r21, r6
001cfc  3bb00300  bneq r7, zero, 12
001d00  9f070800  addli r15, r16, 0
001d04  5b010000  j 8
001d08  97174801  or r15, r16, r20
001d0c  9703cd01  and r7, r26, r28
001d10  13867a04  setlt.u r12, r21, r7
001d14  3b500600  bneq r12, zero, 20
001d18  1f060d00  addli r12, r26, 0
001d1c  93837104  setlt.u r7, r3, r7
001d20  37d00300  beq r7, zero, 20
001d24  db040000  j 36
001d28  17164d01  or r12, r26, r20
001d2c  93837104  setlt.u r7, r3, r7
001d30  3be00300  bneq r7, zero, 24
001d34  9b430d01  srli r7, r26, 16
001d38  9b831300  andi r7, r7, 1
001d3c  8b137d10  add.s r7, r26, r7
001d40  8b931310  add.s r7, r7, r1
001d44  1786b301  and r12, r7, r27
001d48  13836104  setlt.u r6, r3, r6
001d4c  bb300300  bneq r6, zero, 44
001d50  1b430801  srli r6, r16, 16
001d54  1b031300  andi r6, r6, 1
001d58  0b136810  add.s r6, r16, r6
001d5c  0b131310  add.s r6, r6, r1
001d60  9707b301  and r15, r6, r27
001d64  13839105  setlt.u r6, r3, r25
001d68  37600300  beq r6, zero, 24
001d6c  1383b104  setlt.u r6, r3, r11
001d70  3b6c03fe  bneq r6, zero, -232
001d74  5b050000  j 40
001d78  13839105  setlt.u r6, r3, r25
001d7c  bb4f03fe  bneq r6, zero, -16
001d80  1b430901  srli r6, r18, 16
001d84  1b031300  andi r6, r6, 1
001d88  0b136910  add.s r6, r18, r6
001d8c  0b131310  add.s r6, r6, r1
001d90  9708b301  and r17, r6, r27
001d94  1383b104  setlt.u r6, r3, r11
001d98  bb4b03fe  bneq r6, zero, -272
001d9c  1b430101  srli r6, r2, 16
001da0  1b031300  andi r6, r6, 1
001da4  0b116110  add.s r2, r2, r6
001da8  0b111110  add.s r2, r2, r1
001dac  1705b101  and r10, r2, r27
001db0  5bdbffff  j -296
001db4  80330002  core_id r7
001db8  00200100  mfence { sm }
001dbc  1f610000  addli r2, zero, 6
001dc0  bbe72302  bneq r7, r2, 1528
001dc4  db900000  j 1156
001dc8  3d000000  xfence
001dcc  33030028  zext_int2long r[7:8], zero
001dd0  00a00300  mfence { lm, sm, gm }
001dd4  73386ffa  store.d r[7:8], -80(r30)
001dd8  5b030000  j 24
001ddc  6b538ffb  load.d r[7:8], -72(r30)
001de0  6b540ffc  load.d r[9:10], -64(r30)
001de4  13216404  setlt.ul r2, r[9:10], r[7:8]
001de8  27130400  addli.d r[7:8], r[9:10], 1
001dec  37150100  beq r2, zero, 324
001df0  1f710000  addli r2, zero, 7
001df4  eb5c0ffb  load.d r[26:27], -80(r30)
001df8  73306ffc  store.d r[7:8], -64(r30)
001dfc  17342302  sll.d r[9:10], r[7:8], r2
001e00  db040000  j 36
001e04  a7cc0c00  addli.d r[26:27], r[26:27], 4
001e08  0b933611  add.s r6, r13, r19
001e0c  13a14c02  setneq.d r2, r[26:27], r[5:6]
001e10  7366a300  stores.w r10, 12(r6)
001e14  73641301  stores.w r17, 8(r6)
001e18  7362f300  stores.w r15, 4(r6)
001e1c  7360c300  stores.w r12, 0(r6)
001e20  b77e01fe  beq r2, zero, -68
001e24  0ba38c10  add.ul r[7:8], r[26:27], r[9:10]
001e28  9b392300  slli r19, r6, 2
001e2c  0b133b11  add.s r6, r22, r19
001e30  6f41c300  loads.w r2, 12(r6)
001e34  ef430300  loads.w r7, 0(r6)
001e38  6f484300  loads.w r16, 4(r6)
001e3c  6f498300  loads.w r18, 8(r6)
001e40  9705c101  and r11, r2, r28
001e44  1383ba04  setlt.u r6, r21, r11
001e48  3b300300  bneq r6, zero, 12
001e4c  1f050100  addli r10, r2, 0
001e50  5b010000  j 8
001e54  17154101  or r10, r2, r20
001e58  1703c901  and r6, r18, r28
001e5c  13866a04  setlt.u r12, r21, r6
001e60  3b300600  bneq r12, zero, 12
001e64  9f080900  addli r17, r18, 0
001e68  5b010000  j 8
001e6c  97184901  or r17, r18, r20
001e70  970bc801  and r23, r16, r28
001e74  13867a05  setlt.u r12, r21, r23
001e78  3b300600  bneq r12, zero, 12
001e7c  9f070800  addli r15, r16, 0
001e80  5b010000  j 8
001e84  97174801  or r15, r16, r20
001e88  178cc301  and r24, r7, r28
001e8c  13868a05  setlt.u r12, r21, r24
001e90  3b500600  bneq r12, zero, 20
001e94  1f860300  addli r12, r7, 0
001e98  138c8105  setlt.u r24, r3, r24
001e9c  37500c00  beq r24, zero, 20
001ea0  db040000  j 36
001ea4  17964301  or r12, r7, r20
001ea8  138c8105  setlt.u r24, r3, r24
001eac  3b600c00  bneq r24, zero, 24
001eb0  1bc60301  srli r12, r7, 16
001eb4  1b061600  andi r12, r12, 1
001eb8  8b93c310  add.s r7, r7, r12
001ebc  8b931310  add.s r7, r7, r1
001ec0  1786b301  and r12, r7, r27
001ec4  93837105  setlt.u r7, r3, r23
001ec8  bbb00300  bneq r7, zero, 44
001ecc  9b430801  srli r7, r16, 16
001ed0  9b831300  andi r7, r7, 1
001ed4  8b137810  add.s r7, r16, r7
001ed8  8b931310  add.s r7, r7, r1
001edc  9787b301  and r15, r7, r27
001ee0  13836104  setlt.u r6, r3, r6
001ee4  37600300  beq r6, zero, 24
001ee8  1383b104  setlt.u r6, r3, r11
001eec  3b6c03fe  bneq r6, zero, -232
001ef0  5b050000  j 40
001ef4  13836104  setlt.u r6, r3, r6
001ef8  bb4f03fe  bneq r6, zero, -16
001efc  1b430901  srli r6, r18, 16
001f00  1b031300  andi r6, r6, 1
001f04  0b136910  add.s r6, r18, r6
001f08  0b131310  add.s r6, r6, r1
001f0c  9708b301  and r17, r6, r27
001f10  1383b104  setlt.u r6, r3, r11
001f14  bb4b03fe  bneq r6, zero, -272
001f18  1b430101  srli r6, r2, 16
001f1c  1b031300  andi r6, r6, 1
001f20  0b116110  add.s r2, r2, r6
001f24  0b111110  add.s r2, r2, r1
001f28  1705b101  and r10, r2, r27
001f2c  5bdbffff  j -296
001f30  80330002  core_id r7
001f34  00200100  mfence { sm }
001f38  1f110000  addli r2, zero, 1
001f3c  37c823fc  beq r7, r2, -1520
001f40  63414fff  loadli.w r2,  -92(r30)
001f44  370e01fc  beq r2, zero, -1152
001f48  1f012000  addli r2, zero, 16
001f4c  3d000000  xfence
001f50  00a00300  mfence { lm, sm, gm }
001f54  33030128  zext_int2long r[7:8], r2
001f58  5b030000  j 24
001f5c  6b530fff  load.d r[7:8], -16(r30)
001f60  6b548fff  load.d r[9:10], -8(r30)
001f64  13216404  setlt.ul r2, r[9:10], r[7:8]
001f68  27130400  addli.d r[7:8], r[9:10], 1
001f6c  37150100  beq r2, zero, 324
001f70  1f710000  addli r2, zero, 7
001f74  33040028  zext_int2long r[9:10], zero
001f78  733c6ffe  store.d r[7:8], -8(r30)
001f7c  973c2302  sll.d r[26:27], r[7:8], r2
001f80  db040000  j 36
001f84  27440400  addli.d r[9:10], r[9:10], 4
001f88  0b936610  add.s r6, r13, r6
001f8c  13214402  setneq.d r2, r[9:10], r[5:6]
001f90  73667300  stores.w r7, 12(r6)
001f94  7364b300  stores.w r11, 8(r6)
001f98  7362f300  stores.w r15, 4(r6)
001f9c  7360c300  stores.w r12, 0(r6)
001fa0  b77e01fe  beq r2, zero, -68
001fa4  0b239411  add.ul r[7:8], r[9:10], r[26:27]
001fa8  1b332300  slli r6, r6, 2
001fac  8b136b10  add.s r7, r22, r6
001fb0  6fc1c300  loads.w r2, 12(r7)
001fb4  efc90300  loads.w r19, 0(r7)
001fb8  6fc84300  loads.w r16, 4(r7)
001fbc  efc88300  loads.w r17, 8(r7)
001fc0  1705c101  and r10, r2, r28
001fc4  9383aa04  setlt.u r7, r21, r10
001fc8  3bb00300  bneq r7, zero, 12
001fcc  9f030100  addli r7, r2, 0
001fd0  5b010000  j 8
001fd4  97134101  or r7, r2, r20
001fd8  1789c801  and r18, r17, r28
001fdc  93852a05  setlt.u r11, r21, r18
001fe0  3bb00500  bneq r11, zero, 12
001fe4  9f850800  addli r11, r17, 0
001fe8  5b010000  j 8
001fec  97954801  or r11, r17, r20
001ff0  970bc801  and r23, r16, r28
001ff4  13867a05  setlt.u r12, r21, r23
001ff8  3b300600  bneq r12, zero, 12
001ffc  9f070800  addli r15, r16, 0
002000  5b010000  j 8
002004  97174801  or r15, r16, r20
002008  178cc901  and r24, r19, r28
00200c  13868a05  setlt.u r12, r21, r24
002010  3b500600  bneq r12, zero, 20
002014  1f860900  addli r12, r19, 0
002018  138c8105  setlt.u r24, r3, r24
00201c  37500c00  beq r24, zero, 20
002020  db040000  j 36
002024  17964901  or r12, r19, r20
002028  138c8105  setlt.u r24, r3, r24
00202c  3b600c00  bneq r24, zero, 24
002030  1bc60901  srli r12, r19, 16
002034  1b061600  andi r12, r12, 1
002038  0b96c910  add.s r12, r19, r12
00203c  0b161610  add.s r12, r12, r1
002040  1706b601  and r12, r12, r27
002044  93897105  setlt.u r19, r3, r23
002048  bbb00900  bneq r19, zero, 44
00204c  9b470801  srli r15, r16, 16
002050  9b871700  andi r15, r15, 1
002054  8b17f810  add.s r15, r16, r15
002058  8b971710  add.s r15, r15, r1
00205c  9787b701  and r15, r15, r27
002060  13882105  setlt.u r16, r3, r18
002064  37600800  beq r16, zero, 24
002068  1385a104  setlt.u r10, r3, r10
00206c  3b6c05fe  bneq r10, zero, -232
002070  5b050000  j 40
002074  13882105  setlt.u r16, r3, r18
002078  bb4f08fe  bneq r16, zero, -16
00207c  9bc50801  srli r11, r17, 16
002080  9b851500  andi r11, r11, 1
002084  8b95b810  add.s r11, r17, r11
002088  8b951510  add.s r11, r11, r1
00208c  9785b501  and r11, r11, r27
002090  1385a104  setlt.u r10, r3, r10
002094  bb4b05fe  bneq r10, zero, -272
002098  9b430101  srli r7, r2, 16
00209c  9b831300  andi r7, r7, 1
0020a0  0b117110  add.s r2, r2, r7
0020a4  0b111110  add.s r2, r2, r1
0020a8  9703b101  and r7, r2, r27
0020ac  5bdbffff  j -296
0020b0  80330002  core_id r7
0020b4  00200100  mfence { sm }
0020b8  1f310000  addli r2, zero, 3
0020bc  37c823fc  beq r7, r2, -1520
0020c0  63015fff  loadli.w r2,  -88(r30)
0020c4  370e01fc  beq r2, zero, -1152
0020c8  1f014000  addli r2, zero, 32
0020cc  3d000000  xfence
0020d0  00a00300  mfence { lm, sm, gm }
0020d4  33030128  zext_int2long r[7:8], r2
0020d8  5b030000  j 24
0020dc  6b530ffe  load.d r[7:8], -32(r30)
0020e0  6b548fff  load.d r[9:10], -8(r30)
0020e4  13216404  setlt.ul r2, r[9:10], r[7:8]
0020e8  27130400  addli.d r[7:8], r[9:10], 1
0020ec  37150100  beq r2, zero, 324
0020f0  1f710000  addli r2, zero, 7
0020f4  b30c0028  zext_int2long r[26:27], zero
0020f8  733c6ffe  store.d r[7:8], -8(r30)
0020fc  973b2302  sll.d r[24:25], r[7:8], r2
002100  db040000  j 36
002104  a7cc0c00  addli.d r[26:27], r[26:27], 4
002108  0b936610  add.s r6, r13, r6
00210c  13a14c02  setneq.d r2, r[26:27], r[5:6]
002110  73667300  stores.w r7, 12(r6)
002114  7364b300  stores.w r11, 8(r6)
002118  7362f300  stores.w r15, 4(r6)
00211c  7360c300  stores.w r12, 0(r6)
002120  b77e01fe  beq r2, zero, -68
002124  0ba37c11  add.ul r[7:8], r[26:27], r[24:25]
002128  1b332300  slli r6, r6, 2
00212c  8b136b10  add.s r7, r22, r6
002130  6fc1c300  loads.w r2, 12(r7)
002134  efc90300  loads.w r19, 0(r7)
002138  6fc84300  loads.w r16, 4(r7)
00213c  efc88300  loads.w r17, 8(r7)
002140  1705c101  and r10, r2, r28
002144  9383aa04  setlt.u r7, r21, r10
002148  3bb00300  bneq r7, zero, 12
00214c  9f030100  addli r7, r2, 0
002150  5b010000  j 8
002154  97134101  or r7, r2, r20
002158  1789c801  and r18, r17, r28
00215c  13842a05  setlt.u r8, r21, r18
002160  3b300400  bneq r8, zero, 12
002164  9f850800  addli r11, r17, 0
002168  5b010000  j 8
00216c  97954801  or r11, r17, r20
002170  1704c801  and r8, r16, r28
002174  93848a04  setlt.u r9, r21, r8
002178  3bb00400  bneq r9, zero, 12
00217c  9f070800  addli r15, r16, 0
002180  5b010000  j 8
002184  97174801  or r15, r16, r20
002188  9784c901  and r9, r19, r28
00218c  13869a04  setlt.u r12, r21, r9
002190  3b500600  bneq r12, zero, 20
002194  1f860900  addli r12, r19, 0
002198  93849104  setlt.u r9, r3, r9
00219c  37d00400  beq r9, zero, 20
0021a0  db040000  j 36
0021a4  17964901  or r12, r19, r20
0021a8  93849104  setlt.u r9, r3, r9
0021ac  3be00400  bneq r9, zero, 24
0021b0  9bc40901  srli r9, r19, 16
0021b4  9b841400  andi r9, r9, 1
0021b8  8b949910  add.s r9, r19, r9
0021bc  8b941410  add.s r9, r9, r1
0021c0  1786b401  and r12, r9, r27
0021c4  13848104  setlt.u r8, r3, r8
0021c8  bb300400  bneq r8, zero, 44
0021cc  1b440801  srli r8, r16, 16
0021d0  1b041400  andi r8, r8, 1
0021d4  0b148810  add.s r8, r16, r8
0021d8  0b141410  add.s r8, r8, r1
0021dc  9707b401  and r15, r8, r27
0021e0  13842105  setlt.u r8, r3, r18
0021e4  37600400  beq r8, zero, 24
0021e8  1384a104  setlt.u r8, r3, r10
0021ec  3b6c04fe  bneq r8, zero, -232
0021f0  5b050000  j 40
0021f4  13842105  setlt.u r8, r3, r18
0021f8  bb4f04fe  bneq r8, zero, -16
0021fc  1bc40801  srli r8, r17, 16
002200  1b041400  andi r8, r8, 1
002204  0b948810  add.s r8, r17, r8
002208  0b141410  add.s r8, r8, r1
00220c  9705b401  and r11, r8, r27
002210  1384a104  setlt.u r8, r3, r10
002214  bb4b04fe  bneq r8, zero, -272
002218  9b430101  srli r7, r2, 16
00221c  9b831300  andi r7, r7, 1
002220  0b117110  add.s r2, r2, r7
002224  0b111110  add.s r2, r2, r1
002228  9703b101  and r7, r2, r27
00222c  5bdbffff  j -296
002230  80330002  core_id r7
002234  00200100  mfence { sm }
002238  1f510000  addli r2, zero, 5
00223c  37c823fc  beq r7, r2, -1520
002240  1f610000  addli r2, zero, 6
002244  bbd52300  bneq r7, r2, 372
002248  1f016000  addli r2, zero, 48
00224c  3d000000  xfence
002250  00a00300  mfence { lm, sm, gm }
002254  33030128  zext_int2long r[7:8], r2
002258  5b030000  j 24
00225c  6b530ffd  load.d r[7:8], -48(r30)
002260  6b548fff  load.d r[9:10], -8(r30)
002264  13216404  setlt.ul r2, r[9:10], r[7:8]
002268  27130400  addli.d r[7:8], r[9:10], 1
00226c  37150100  beq r2, zero, 324
002270  1f710000  addli r2, zero, 7
002274  33050028  zext_int2long r[11:12], zero
002278  733c6ffe  store.d r[7:8], -8(r30)
00227c  17342302  sll.d r[9:10], r[7:8], r2
002280  db040000  j 36
002284  27450500  addli.d r[11:12], r[11:12], 4
002288  0b933611  add.s r6, r13, r19
00228c  13214502  setneq.d r2, r[11:12], r[5:6]
002290  73667301  stores.w r23, 12(r6)
002294  73641301  stores.w r17, 8(r6)
002298  7362f300  stores.w r15, 4(r6)
00229c  7360c300  stores.w r12, 0(r6)
0022a0  b77e01fe  beq r2, zero, -68
0022a4  0b238510  add.ul r[7:8], r[11:12], r[9:10]
0022a8  9b392300  slli r19, r6, 2
0022ac  0b133b11  add.s r6, r22, r19
0022b0  6f41c300  loads.w r2, 12(r6)
0022b4  6f4d0300  loads.w r26, 0(r6)
0022b8  6f484300  loads.w r16, 4(r6)
0022bc  6f498300  loads.w r18, 8(r6)
0022c0  170cc101  and r24, r2, r28
0022c4  13838a05  setlt.u r6, r21, r24
0022c8  3b300300  bneq r6, zero, 12
0022cc  9f0b0100  addli r23, r2, 0
0022d0  5b010000  j 8
0022d4  971b4101  or r23, r2, r20
0022d8  970cc901  and r25, r18, r28
0022dc  13839a05  setlt.u r6, r21, r25
0022e0  3b300300  bneq r6, zero, 12
0022e4  9f080900  addli r17, r18, 0
0022e8  5b010000  j 8
0022ec  97184901  or r17, r18, r20
0022f0  1703c801  and r6, r16, r28
0022f4  93836a04  setlt.u r7, r21, r6
0022f8  3bb00300  bneq r7, zero, 12
0022fc  9f070800  addli r15, r16, 0
002300  5b010000  j 8
002304  97174801  or r15, r16, r20
002308  9703cd01  and r7, r26, r28
00230c  13867a04  setlt.u r12, r21, r7
002310  3b500600  bneq r12, zero, 20
002314  1f060d00  addli r12, r26, 0
002318  93837104  setlt.u r7, r3, r7
00231c  37d00300  beq r7, zero, 20
002320  db040000  j 36
002324  17164d01  or r12, r26, r20
002328  93837104  setlt.u r7, r3, r7
00232c  3be00300  bneq r7, zero, 24
002330  9b430d01  srli r7, r26, 16
002334  9b831300  andi r7, r7, 1
002338  8b137d10  add.s r7, r26, r7
00233c  8b931310  add.s r7, r7, r1
002340  1786b301  and r12, r7, r27
002344  13836104  setlt.u r6, r3, r6
002348  bb300300  bneq r6, zero, 44
00234c  1b430801  srli r6, r16, 16
002350  1b031300  andi r6, r6, 1
002354  0b136810  add.s r6, r16, r6
002358  0b131310  add.s r6, r6, r1
00235c  9707b301  and r15, r6, r27
002360  13839105  setlt.u r6, r3, r25
002364  37600300  beq r6, zero, 24
002368  13838105  setlt.u r6, r3, r24
00236c  3b6c03fe  bneq r6, zero, -232
002370  5b050000  j 40
002374  13839105  setlt.u r6, r3, r25
002378  bb4f03fe  bneq r6, zero, -16
00237c  1b430901  srli r6, r18, 16
002380  1b031300  andi r6, r6, 1
002384  0b136910  add.s r6, r18, r6
002388  0b131310  add.s r6, r6, r1
00238c  9708b301  and r17, r6, r27
002390  13838105  setlt.u r6, r3, r24
002394  bb4b03fe  bneq r6, zero, -272
002398  1b430101  srli r6, r2, 16
00239c  1b031300  andi r6, r6, 1
0023a0  0b116110  add.s r2, r2, r6
0023a4  0b111110  add.s r2, r2, r1
0023a8  970bb101  and r23, r2, r27
0023ac  5bdbffff  j -296
0023b0  80330002  core_id r7
0023b4  00200100  mfence { sm }
0023b8  63415fff  loadli.w r2,  -84(r30)
0023bc  33040028  zext_int2long r[9:10], zero
0023c0  73388ffe  store.d r[9:10], -16(r30)
0023c4  b7550100  beq r2, zero, 372
0023c8  1f017000  addli r2, zero, 56
0023cc  3d000000  xfence
0023d0  00a00300  mfence { lm, sm, gm }
0023d4  33030128  zext_int2long r[7:8], r2
0023d8  5b030000  j 24
0023dc  6b538ffc  load.d r[7:8], -56(r30)
0023e0  6b548fff  load.d r[9:10], -8(r30)
0023e4  13216404  setlt.ul r2, r[9:10], r[7:8]
0023e8  27130400  addli.d r[7:8], r[9:10], 1
0023ec  37150100  beq r2, zero, 324
0023f0  1f710000  addli r2, zero, 7
0023f4  eb580fff  load.d r[18:19], -16(r30)
0023f8  733c6ffe  store.d r[7:8], -8(r30)
0023fc  17352302  sll.d r[11:12], r[7:8], r2
002400  db040000  j 36
002404  a7c80800  addli.d r[18:19], r[18:19], 4
002408  0b933611  add.s r6, r13, r19
00240c  13a14802  setneq.d r2, r[18:19], r[5:6]
002410  73667301  stores.w r23, 12(r6)
002414  73649301  stores.w r25, 8(r6)
002418  7362f300  stores.w r15, 4(r6)
00241c  7360c300  stores.w r12, 0(r6)
002420  b77e01fe  beq r2, zero, -68
002424  0ba3a810  add.ul r[7:8], r[18:19], r[11:12]
002428  9b392300  slli r19, r6, 2
00242c  0b133b11  add.s r6, r22, r19
002430  6f41c300  loads.w r2, 12(r6)
002434  ef430300  loads.w r7, 0(r6)
002438  6f484300  loads.w r16, 4(r6)
00243c  6f4d8300  loads.w r26, 8(r6)
002440  170cc101  and r24, r2, r28
002444  13838a05  setlt.u r6, r21, r24
002448  3b300300  bneq r6, zero, 12
00244c  9f0b0100  addli r23, r2, 0
002450  5b010000  j 8
002454  971b4101  or r23, r2, r20
002458  1703cd01  and r6, r26, r28
00245c  13846a04  setlt.u r8, r21, r6
002460  3b300400  bneq r8, zero, 12
002464  9f0c0d00  addli r25, r26, 0
002468  5b010000  j 8
00246c  971c4d01  or r25, r26, r20
002470  1704c801  and r8, r16, r28
002474  93848a04  setlt.u r9, r21, r8
002478  3bb00400  bneq r9, zero, 12
00247c  9f070800  addli r15, r16, 0
002480  5b010000  j 8
002484  97174801  or r15, r16, r20
002488  9784c301  and r9, r7, r28
00248c  13869a04  setlt.u r12, r21, r9
002490  3b500600  bneq r12, zero, 20
002494  1f860300  addli r12, r7, 0
002498  93849104  setlt.u r9, r3, r9
00249c  37d00400  beq r9, zero, 20
0024a0  db040000  j 36
0024a4  17964301  or r12, r7, r20
0024a8  93849104  setlt.u r9, r3, r9
0024ac  3be00400  bneq r9, zero, 24
0024b0  9bc40301  srli r9, r7, 16
0024b4  9b841400  andi r9, r9, 1
0024b8  8b939310  add.s r7, r7, r9
0024bc  8b931310  add.s r7, r7, r1
0024c0  1786b301  and r12, r7, r27
0024c4  93838104  setlt.u r7, r3, r8
0024c8  bbb00300  bneq r7, zero, 44
0024cc  9b430801  srli r7, r16, 16
0024d0  9b831300  andi r7, r7, 1
0024d4  8b137810  add.s r7, r16, r7
0024d8  8b931310  add.s r7, r7, r1
0024dc  9787b301  and r15, r7, r27
0024e0  13836104  setlt.u r6, r3, r6
0024e4  37600300  beq r6, zero, 24
0024e8  13838105  setlt.u r6, r3, r24
0024ec  3b6c03fe  bneq r6, zero, -232
0024f0  5b050000  j 40
0024f4  13836104  setlt.u r6, r3, r6
0024f8  bb4f03fe  bneq r6, zero, -16
0024fc  1b430d01  srli r6, r26, 16
002500  1b031300  andi r6, r6, 1
002504  0b136d10  add.s r6, r26, r6
002508  0b131310  add.s r6, r6, r1
00250c  970cb301  and r25, r6, r27
002510  13838105  setlt.u r6, r3, r24
002514  bb4b03fe  bneq r6, zero, -272
002518  1b430101  srli r6, r2, 16
00251c  1b031300  andi r6, r6, 1
002520  0b116110  add.s r2, r2, r6
002524  0b111110  add.s r2, r2, r1
002528  970bb101  and r23, r2, r27
00252c  5bdbffff  j -296
002530  80330002  core_id r7
002534  00200100  mfence { sm }
002538  1f71f001  addli r2, zero, 255
00253c  00350002  core_id r10
002540  9f380000  addli r17, zero, 3
002544  80220104  csr_set csr5, r2
002548  00e00200  sync_core
00254c  37d413ef  beq r7, r17, -8940
002550  1f068000  addli r12, zero, 64
002554  9f160000  addli r13, zero, 1
002558  9f770000  addli r15, zero, 7
00255c  1f581000  addli r16, zero, 13
002560  1f490000  addli r18, zero, 4
002564  9f290000  addli r19, zero, 2
002568  1f6b0000  addli r22, zero, 6
00256c  bb8403ee  bneq r7, zero, -8928
002570  6341fffe  loadli.w r2,  -132(r30)
002574  6b540ff8  load.d r[9:10], -128(r30)
002578  eb5b8f01  load.d r[24:25], 24(r30)
00257c  9f550000  addli r11, zero, 5
002580  6b530fff  load.d r[7:8], -16(r30)
002584  1b316100  slli r2, r2, 6
002588  33120128  sext_int2long r[5:6], r2
00258c  1f112000  addli r2, zero, 17
002590  17342402  sll.d r[9:10], r[9:10], r2
002594  7d100100  xwait r2, 0
002598  1d800500  lock zero, r11
00259c  0b336240  min.sl r[7:8], r[5:6], r[7:8]
0025a0  2b410600  lui r2, 100
0025a4  0ba48b10  add.ul r[9:10], r[24:25], r[9:10]
0025a8  eb5b8ff8  load.d r[24:25], -120(r30)
0025ac  27038300  addli.d r[7:8], r[7:8], 64
0025b0  95860600  dma_cfg r13, r13, zero, 0
0025b4  1b110104  ori r2, r2, 64
0025b8  15800602  dma_cfg zero, r13, zero, 1
0025bc  0b334348  max.sl r[7:8], r[7:8], r[5:6]
0025c0  0b112710  add.s r2, r14, r2
0025c4  0b247411  add.ul r[9:10], r[9:10], r[24:25]
0025c8  0b324318  sub.sl r[5:6], r[7:8], r[5:6]
0025cc  33030628  zext_int2long r[7:8], r12
0025d0  95040004  dma_cfg r9, zero, zero, 2
0025d4  eb5b0ff9  load.d r[24:25], -112(r30)
0025d8  0b326240  min.sl r[5:6], r[5:6], r[7:8]
0025dc  1504c106  dma_cfg r8, r2, r12, 3
0025e0  9f030001  addli r7, zero, 128
0025e4  1ff33b00  addli r6, r23, 31
0025e8  1b415300  srli r2, r6, 5
0025ec  1bb31b00  slli r6, r23, 1
0025f0  15862308  dma_cfg r12, r7, r2, 4
0025f4  1b01e303  andi r2, r6, 62
0025f8  1f030004  addli r6, zero, 512
0025fc  9f030010  addli r7, zero, 2048
002600  9503430a  dma_cfg r7, r6, r4, 5
002604  15002010  dma_cfg zero, zero, r2, 8
002608  35000000  dma_run zero
00260c  1500d00a  dma_cfg zero, zero, r13, 5
002610  1f212000  addli r2, zero, 18
002614  15000010  dma_cfg zero, zero, zero, 8
002618  1d900500  unlock r11
00261c  db8dfbff  j -9108
002620  1f011000  addli r2, zero, 8
002624  7d100900  xwait r18, 0
002628  1f030000  addli r6, zero, 0
00262c  9f120000  addli r5, zero, 1
002630  9f331000  addli r7, zero, 11
002634  7d100100  xwait r2, 0
002638  1f110000  addli r2, zero, 1
00263c  7d900300  xwait r7, 0
002640  9b33e300  slli r7, r6, 14
002644  1b338300  slli r6, r6, 8
002648  1d000100  lock zero, r2
00264c  0906c600  mm_cfg r12, r12, r12, 0
002650  9793e300  or r7, r7, r14
002654  1713e300  or r6, r6, r14
002658  09092904  mm_cfg r18, r18, r2, 2
00265c  29037210  mm r6, r4, r7, 8
002660  9b831200  andi r7, r5, 1
002664  1f130000  addli r6, zero, 1
002668  9f020000  addli r5, zero, 0
00266c  1d100100  unlock r2
002670  3bcf03fe  bneq r7, zero, -48
002674  1f510000  addli r2, zero, 5
002678  e74a0ffe  storeli.w zero, -84(r30)
00267c  7d000100  xsignal r2, 0
002680  1f111000  addli r2, zero, 9
002684  7d000100  xsignal r2, 0
002688  1f110000  addli r2, zero, 1
00268c  e70a2ffe  storeli.w r2, -88(r30)
002690  1f211000  addli r2, zero, 10
002694  7d000100  xsignal r2, 0
002698  00330002  core_id r6
00269c  3b6813f1  bneq r6, r17, -7656
0026a0  db40fcff  j -7676
0026a4  e70a0ffe  storeli.w zero, -88(r30)
0026a8  e74a0ffe  storeli.w zero, -84(r30)
0026ac  b76713f1  beq r6, r17, -7688
0026b0  db40fcff  j -7676
0026b4  7d000000  xsignal zero, 0
0026b8  bb600500  bneq r10, zero, 56
0026bc  9f200000  addli r1, zero, 2
0026c0  7d100000  xwait zero, 0
0026c4  7d100000  xwait zero, 0
0026c8  7d100000  xwait zero, 0
0026cc  7d100000  xwait zero, 0
0026d0  7d100000  xwait zero, 0
0026d4  7d100000  xwait zero, 0
0026d8  7d100000  xwait zero, 0
0026dc  7d100000  xwait zero, 0
0026e0  1d800000  lock zero, r1
0026e4  0d000020  ew_cfg zero, zero, zero, 16
0026e8  1d900000  unlock r1
0026ec  7d400000  xsignal_mode_cfg zero
0026f0  9f8e2e01  addli sp, sp, 144
0026f4  00a00300  mfence { lm, sm, gm }
0026f8  00100000  exit
0026fc  00100000  exit
002700  00100000  exit
002704  00100000  exit
002708  00100000  exit
00270c  00100000  exit
002710  00100000  exit
002714  00100000  exit
002718  00100000  exit
00271c  00100000  exit
002720  00100000  exit
002724  00100000  exit
002728  00100000  exit
00272c  00100000  exit
002730  00100000  exit
002734  00100000  exit
002738  00100000  exit
00273c  00100000  exit
002740  00100000  exit
002744  00100000  exit
002748  00100000  exit
00274c  00100000  exit
002750  00100000  exit
002754  00100000  exit
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
