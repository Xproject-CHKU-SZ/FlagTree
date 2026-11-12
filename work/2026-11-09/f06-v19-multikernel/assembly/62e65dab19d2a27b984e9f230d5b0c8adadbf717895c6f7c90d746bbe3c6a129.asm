; SHA-256 62e65dab19d2a27b984e9f230d5b0c8adadbf717895c6f7c90d746bbe3c6a129
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
000158  1f212000  addli r2, zero, 18
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
0001e4  9f460000  addli r13, zero, 4
0001e8  1f770000  addli r14, zero, 7
0001ec  ab0d4000  lui r27, 1024
0001f0  2b09807f  lui r18, 522240
0001f4  2b05ffff  lui r10, 1048560
0001f8  73342ff6  store.d r[3:4], -152(r30)
0001fc  b3910028  sext_int2long r[4:5], r1
000200  1f71f00f  addli r2, zero, 2047
000204  ab00feff  lui r1, 1048544
000208  73301ff6  store.d r[2:3], -160(r30)
00020c  abf0ff7f  lui r1, 524287
000210  2bf17f7f  lui r2, 522239
000214  9b97f0ff  ori r15, r1, 4095
000218  ab700000  lui r1, 7
00021c  9b19f1ff  ori r19, r2, 4095
000220  1b98f0ff  ori r16, r1, 4095
000224  b3000028  zext_int2long r[2:3], zero
000228  733c1ff4  store.d r[2:3], -168(r30)
00022c  1f010000  addli r2, zero, 0
000230  5b070000  j 56
000234  9f601000  addli r1, zero, 14
000238  9f460000  addli r13, zero, 4
00023c  1f770000  addli r14, zero, 7
000240  7d800000  xsignal r1, 0
000244  9f102000  addli r1, zero, 17
000248  7d800000  xsignal r1, 0
00024c  eb510ff9  load.d r[4:5], -112(r30)
000250  eb508ff6  load.d r[2:3], -152(r30)
000254  a7910100  addli.d r[4:5], r[4:5], 1
000258  93b01104  setlt.sl r1, r[4:5], r[2:3]
00025c  63414fff  loadli.w r2,  -92(r30)
000260  1f110100  addli r2, r2, 1
000264  37f30012  beq r1, zero, 9436
000268  e3005f00  loadli.w r1,  40(r30)
00026c  674a2ffe  storeli.w r2, -92(r30)
000270  63414f00  loadli.w r2,  36(r30)
000274  73383ff8  store.d r[4:5], -112(r30)
000278  9f021000  addli r5, zero, 8
00027c  9f340000  addli r9, zero, 3
000280  8b901130  div.s r1, r3, r1
000284  1f024000  addli r4, zero, 32
000288  0b912030  div.s r2, r1, r2
00028c  9f000001  addli r1, zero, 128
000290  8b111130  div.s r3, r2, r1
000294  9bb03100  slli r1, r3, 3
000298  0b121218  sub.s r4, r4, r1
00029c  8b125240  min.s r5, r4, r5
0002a0  0b125138  mod.s r4, r2, r5
0002a4  0b121210  add.s r4, r4, r1
0002a8  9f703000  addli r1, zero, 31
0002ac  93804004  setlt.u r1, r1, r4
0002b0  33030228  zext_int2long r[7:8], r4
0002b4  67474ffe  storeli.w r4, -140(r30)
0002b8  1f421000  addli r4, zero, 12
0002bc  73306ff8  store.d r[7:8], -128(r30)
0002c0  97334302  sll.d r[8:9], r[7:8], r4
0002c4  3bb00000  bneq r1, zero, 12
0002c8  eb558ff5  load.d r[12:13], -168(r30)
0002cc  db010000  j 12
0002d0  eb550ff6  load.d r[12:13], -160(r30)
0002d4  9785b302  and.d r[12:13], r[8:9], r[12:13]
0002d8  634b4fff  loadli.w r22,  -92(r30)
0002dc  1f02800f  addli r4, zero, 1984
0002e0  b30b0228  zext_int2long r[24:25], r4
0002e4  2b020200  lui r4, 32
0002e8  8b10db38  mod.s r1, r22, r13
0002ec  73347ffb  store.d r[24:25], -88(r30)
0002f0  670b1ffe  storeli.w r1, -80(r30)
0002f4  9bb0e000  slli r1, r1, 14
0002f8  0b934010  add.s r6, r1, r4
0002fc  1f120000  addli r4, zero, 1
000300  3bcb4800  bneq r17, r4, 720
000304  8bb3b318  sub.sl r[8:9], r[8:9], r[12:13]
000308  1f6a0000  addli r20, zero, 6
00030c  eb560ff8  load.d r[14:15], -128(r30)
000310  9f5a1000  addli r21, zero, 13
000314  97d34303  sra.d r[8:9], r[8:9], r20
000318  97b65603  sll.d r[14:15], r[14:15], r21
00031c  8bb57341  min.sl r[12:13], r[8:9], r[24:25]
000320  8bb57518  sub.sl r[12:13], r[12:13], r[8:9]
000324  eb530f00  load.d r[8:9], 0(r30)
000328  0ba4d310  add.ul r[9:10], r[8:9], r[14:15]
00032c  9f838500  addli r7, r11, 64
000330  1f360000  addli r12, zero, 3
000334  1f770000  addli r14, zero, 7
000338  9f460000  addli r13, zero, 4
00033c  7d100600  xwait r12, 0
000340  bf246601  blt.s r12, r22, 296
000344  1f5b0000  addli r22, zero, 5
000348  9f150000  addli r11, zero, 1
00034c  9f2b0000  addli r23, zero, 2
000350  1f021000  addli r4, zero, 8
000354  1f0c8000  addli r24, zero, 64
000358  1d000b00  lock zero, r22
00035c  15000014  dma_cfg zero, zero, zero, 10
000360  1500b014  dma_cfg zero, zero, r11, 10
000364  15007015  dma_cfg zero, zero, r23, 10
000368  1500c014  dma_cfg zero, zero, r12, 10
00036c  1500d014  dma_cfg zero, zero, r13, 10
000370  15006015  dma_cfg zero, zero, r22, 10
000374  15004015  dma_cfg zero, zero, r20, 10
000378  1500e014  dma_cfg zero, zero, r14, 10
00037c  15004014  dma_cfg zero, zero, r4, 10
000380  1f121000  addli r4, zero, 9
000384  15004014  dma_cfg zero, zero, r4, 10
000388  1f221000  addli r4, zero, 10
00038c  15004014  dma_cfg zero, zero, r4, 10
000390  1f321000  addli r4, zero, 11
000394  15004014  dma_cfg zero, zero, r4, 10
000398  1f421000  addli r4, zero, 12
00039c  15004014  dma_cfg zero, zero, r4, 10
0003a0  1f621000  addli r4, zero, 14
0003a4  15005015  dma_cfg zero, zero, r21, 10
0003a8  15004014  dma_cfg zero, zero, r4, 10
0003ac  1f721000  addli r4, zero, 15
0003b0  15004014  dma_cfg zero, zero, r4, 10
0003b4  1f022000  addli r4, zero, 16
0003b8  15004014  dma_cfg zero, zero, r4, 10
0003bc  1f122000  addli r4, zero, 17
0003c0  15004014  dma_cfg zero, zero, r4, 10
0003c4  1f222000  addli r4, zero, 18
0003c8  15004014  dma_cfg zero, zero, r4, 10
0003cc  1f322000  addli r4, zero, 19
0003d0  15004014  dma_cfg zero, zero, r4, 10
0003d4  1f422000  addli r4, zero, 20
0003d8  15004014  dma_cfg zero, zero, r4, 10
0003dc  1f522000  addli r4, zero, 21
0003e0  15004014  dma_cfg zero, zero, r4, 10
0003e4  1f622000  addli r4, zero, 22
0003e8  15004014  dma_cfg zero, zero, r4, 10
0003ec  1f722000  addli r4, zero, 23
0003f0  15004014  dma_cfg zero, zero, r4, 10
0003f4  1f023000  addli r4, zero, 24
0003f8  15004014  dma_cfg zero, zero, r4, 10
0003fc  1f123000  addli r4, zero, 25
000400  15004014  dma_cfg zero, zero, r4, 10
000404  1f223000  addli r4, zero, 26
000408  15004014  dma_cfg zero, zero, r4, 10
00040c  1f323000  addli r4, zero, 27
000410  15004014  dma_cfg zero, zero, r4, 10
000414  1f423000  addli r4, zero, 28
000418  15004014  dma_cfg zero, zero, r4, 10
00041c  1f523000  addli r4, zero, 29
000420  15004014  dma_cfg zero, zero, r4, 10
000424  1f623000  addli r4, zero, 30
000428  15004014  dma_cfg zero, zero, r4, 10
00042c  1f723000  addli r4, zero, 31
000430  15004014  dma_cfg zero, zero, r4, 10
000434  1f020001  addli r4, zero, 128
000438  95850500  dma_cfg r11, r11, zero, 0
00043c  95050002  dma_cfg r11, zero, zero, 1
000440  15000004  dma_cfg zero, zero, zero, 2
000444  15038007  dma_cfg r6, zero, r24, 3
000448  15027009  dma_cfg r4, zero, r23, 4
00044c  1f020002  addli r4, zero, 256
000450  1502800b  dma_cfg r4, zero, r24, 5
000454  15000010  dma_cfg zero, zero, zero, 8
000458  35000000  dma_run zero
00045c  1500b00a  dma_cfg zero, zero, r11, 5
000460  15000010  dma_cfg zero, zero, zero, 8
000464  1d100b00  unlock r22
000468  2b020200  lui r4, 32
00046c  e7090ffe  storeli.w zero, -104(r30)
000470  9f150000  addli r11, zero, 1
000474  9f0b8000  addli r23, zero, 64
000478  1f2b0000  addli r22, zero, 2
00047c  1f0c0002  addli r24, zero, 256
000480  1d800600  lock zero, r13
000484  1b120204  ori r4, r4, 64
000488  95850500  dma_cfg r11, r11, zero, 0
00048c  15800404  dma_cfg zero, r9, zero, 2
000490  0b924010  add.s r4, r1, r4
000494  15027407  dma_cfg r4, r8, r23, 3
000498  1f020001  addli r4, zero, 128
00049c  9f540000  addli r9, zero, 5
0004a0  1f041000  addli r8, zero, 8
0004a4  15826b09  dma_cfg r4, r23, r22, 4
0004a8  150c720a  dma_cfg r24, r4, r7, 5
0004ac  15000010  dma_cfg zero, zero, zero, 8
0004b0  35000000  dma_run zero
0004b4  1500b00a  dma_cfg zero, zero, r11, 5
0004b8  15000010  dma_cfg zero, zero, zero, 8
0004bc  1d900600  unlock r13
0004c0  1d800400  lock zero, r9
0004c4  15000014  dma_cfg zero, zero, zero, 10
0004c8  1500b014  dma_cfg zero, zero, r11, 10
0004cc  15006015  dma_cfg zero, zero, r22, 10
0004d0  1500c014  dma_cfg zero, zero, r12, 10
0004d4  1500d014  dma_cfg zero, zero, r13, 10
0004d8  15009014  dma_cfg zero, zero, r9, 10
0004dc  15004015  dma_cfg zero, zero, r20, 10
0004e0  1500e014  dma_cfg zero, zero, r14, 10
0004e4  15008014  dma_cfg zero, zero, r8, 10
0004e8  1f141000  addli r8, zero, 9
0004ec  15008014  dma_cfg zero, zero, r8, 10
0004f0  1f241000  addli r8, zero, 10
0004f4  15008014  dma_cfg zero, zero, r8, 10
0004f8  1f341000  addli r8, zero, 11
0004fc  15008014  dma_cfg zero, zero, r8, 10
000500  1f441000  addli r8, zero, 12
000504  15008014  dma_cfg zero, zero, r8, 10
000508  1f641000  addli r8, zero, 14
00050c  15005015  dma_cfg zero, zero, r21, 10
000510  15008014  dma_cfg zero, zero, r8, 10
000514  1f741000  addli r8, zero, 15
000518  15008014  dma_cfg zero, zero, r8, 10
00051c  1f042000  addli r8, zero, 16
000520  15008014  dma_cfg zero, zero, r8, 10
000524  1f142000  addli r8, zero, 17
000528  15008014  dma_cfg zero, zero, r8, 10
00052c  1f242000  addli r8, zero, 18
000530  15008014  dma_cfg zero, zero, r8, 10
000534  1f342000  addli r8, zero, 19
000538  15008014  dma_cfg zero, zero, r8, 10
00053c  1f442000  addli r8, zero, 20
000540  15008014  dma_cfg zero, zero, r8, 10
000544  1f542000  addli r8, zero, 21
000548  15008014  dma_cfg zero, zero, r8, 10
00054c  1f642000  addli r8, zero, 22
000550  15008014  dma_cfg zero, zero, r8, 10
000554  1f742000  addli r8, zero, 23
000558  15008014  dma_cfg zero, zero, r8, 10
00055c  1f043000  addli r8, zero, 24
000560  15008014  dma_cfg zero, zero, r8, 10
000564  1f143000  addli r8, zero, 25
000568  15008014  dma_cfg zero, zero, r8, 10
00056c  1f243000  addli r8, zero, 26
000570  15008014  dma_cfg zero, zero, r8, 10
000574  1f343000  addli r8, zero, 27
000578  15008014  dma_cfg zero, zero, r8, 10
00057c  1f443000  addli r8, zero, 28
000580  15008014  dma_cfg zero, zero, r8, 10
000584  1f543000  addli r8, zero, 29
000588  15008014  dma_cfg zero, zero, r8, 10
00058c  1f643000  addli r8, zero, 30
000590  15008014  dma_cfg zero, zero, r8, 10
000594  1f743000  addli r8, zero, 31
000598  15008014  dma_cfg zero, zero, r8, 10
00059c  95850500  dma_cfg r11, r11, zero, 0
0005a0  95050002  dma_cfg r11, zero, zero, 1
0005a4  15000004  dma_cfg zero, zero, zero, 2
0005a8  15037007  dma_cfg r6, zero, r23, 3
0005ac  15026009  dma_cfg r4, zero, r22, 4
0005b0  150c700a  dma_cfg r24, zero, r7, 5
0005b4  15000010  dma_cfg zero, zero, zero, 8
0005b8  35000000  dma_run zero
0005bc  1500b00a  dma_cfg zero, zero, r11, 5
0005c0  15000010  dma_cfg zero, zero, zero, 8
0005c4  1d900400  unlock r9
0005c8  7d000b00  xsignal r22, 0
0005cc  5b0b0000  j 88
0005d0  9f230000  addli r7, zero, 2
0005d4  3b917800  bneq r17, r7, 68
0005d8  1f520000  addli r4, zero, 5
0005dc  7d900300  xwait r7, 0
0005e0  7d100200  xwait r4, 0
0005e4  1d000000  lock zero, zero
0005e8  1f028000  addli r4, zero, 64
0005ec  81030000  ds_cfg r7, zero, 0
0005f0  01020002  ds_cfg r4, zero, 1
0005f4  0102001c  ds_cfg r4, zero, 14
0005f8  0102001a  ds_cfg r4, zero, 13
0005fc  a1104302  shuffle_batch r1, r6, r4, 1
000600  1f120000  addli r4, zero, 1
000604  1d100000  unlock zero
000608  7d800400  xsignal r9, 0
00060c  e7094ffe  storeli.w r4, -104(r30)
000610  7d800600  xsignal r13, 0
000614  5b010000  j 8
000618  e7090ffe  storeli.w zero, -104(r30)
00061c  1f6a0000  addli r20, zero, 6
000620  9f150000  addli r11, zero, 1
000624  9bb17100  slli r3, r3, 7
000628  1f630000  addli r6, zero, 6
00062c  0b113118  sub.s r2, r2, r3
000630  0b115130  div.s r2, r2, r5
000634  33020128  zext_int2long r[5:6], r2
000638  e7082ffe  storeli.w r2, -120(r30)
00063c  63016fff  loadli.w r2,  -80(r30)
000640  1732e202  sll.d r[5:6], r[5:6], r14
000644  9b31f100  slli r3, r2, 15
000648  2b010300  lui r2, 48
00064c  9733b202  sll.d r[8:9], r[5:6], r11
000650  0b912110  add.s r2, r3, r2
000654  733c7ff6  store.d r[8:9], -136(r30)
000658  3b8b4801  bneq r17, r20, 704
00065c  6b528f00  load.d r[5:6], 8(r30)
000660  7d100700  xwait r14, 0
000664  e3404fff  loadli.w r1,  -92(r30)
000668  0b227210  add.ul r[5:6], r[5:6], r[8:9]
00066c  1f340000  addli r8, zero, 3
000670  bf341400  blt.s r8, r1, 300
000674  9f540000  addli r9, zero, 5
000678  9f130000  addli r7, zero, 1
00067c  9f200000  addli r1, zero, 2
000680  1d800400  lock zero, r9
000684  15000014  dma_cfg zero, zero, zero, 10
000688  15007014  dma_cfg zero, zero, r7, 10
00068c  15001014  dma_cfg zero, zero, r1, 10
000690  9f001000  addli r1, zero, 8
000694  15008014  dma_cfg zero, zero, r8, 10
000698  1500d014  dma_cfg zero, zero, r13, 10
00069c  15009014  dma_cfg zero, zero, r9, 10
0006a0  15006014  dma_cfg zero, zero, r6, 10
0006a4  1f038000  addli r6, zero, 64
0006a8  1500e014  dma_cfg zero, zero, r14, 10
0006ac  15001014  dma_cfg zero, zero, r1, 10
0006b0  9f101000  addli r1, zero, 9
0006b4  15001014  dma_cfg zero, zero, r1, 10
0006b8  9f201000  addli r1, zero, 10
0006bc  15001014  dma_cfg zero, zero, r1, 10
0006c0  9f301000  addli r1, zero, 11
0006c4  15001014  dma_cfg zero, zero, r1, 10
0006c8  9f401000  addli r1, zero, 12
0006cc  15001014  dma_cfg zero, zero, r1, 10
0006d0  9f501000  addli r1, zero, 13
0006d4  15001014  dma_cfg zero, zero, r1, 10
0006d8  9f601000  addli r1, zero, 14
0006dc  15001014  dma_cfg zero, zero, r1, 10
0006e0  9f701000  addli r1, zero, 15
0006e4  15001014  dma_cfg zero, zero, r1, 10
0006e8  9f002000  addli r1, zero, 16
0006ec  15001014  dma_cfg zero, zero, r1, 10
0006f0  9f102000  addli r1, zero, 17
0006f4  15001014  dma_cfg zero, zero, r1, 10
0006f8  9f202000  addli r1, zero, 18
0006fc  15001014  dma_cfg zero, zero, r1, 10
000700  9f302000  addli r1, zero, 19
000704  15001014  dma_cfg zero, zero, r1, 10
000708  9f402000  addli r1, zero, 20
00070c  15001014  dma_cfg zero, zero, r1, 10
000710  9f502000  addli r1, zero, 21
000714  15001014  dma_cfg zero, zero, r1, 10
000718  9f602000  addli r1, zero, 22
00071c  15001014  dma_cfg zero, zero, r1, 10
000720  9f702000  addli r1, zero, 23
000724  15001014  dma_cfg zero, zero, r1, 10
000728  9f003000  addli r1, zero, 24
00072c  15001014  dma_cfg zero, zero, r1, 10
000730  9f103000  addli r1, zero, 25
000734  15001014  dma_cfg zero, zero, r1, 10
000738  9f203000  addli r1, zero, 26
00073c  15001014  dma_cfg zero, zero, r1, 10
000740  9f303000  addli r1, zero, 27
000744  15001014  dma_cfg zero, zero, r1, 10
000748  9f403000  addli r1, zero, 28
00074c  15001014  dma_cfg zero, zero, r1, 10
000750  9f503000  addli r1, zero, 29
000754  15001014  dma_cfg zero, zero, r1, 10
000758  9f603000  addli r1, zero, 30
00075c  15001014  dma_cfg zero, zero, r1, 10
000760  9f703000  addli r1, zero, 31
000764  15001014  dma_cfg zero, zero, r1, 10
000768  9f000001  addli r1, zero, 128
00076c  95830300  dma_cfg r7, r7, zero, 0
000770  95030002  dma_cfg r7, zero, zero, 1
000774  15000004  dma_cfg zero, zero, zero, 2
000778  15016006  dma_cfg r2, zero, r6, 3
00077c  9500d008  dma_cfg r1, zero, r13, 4
000780  9f000004  addli r1, zero, 512
000784  9500600a  dma_cfg r1, zero, r6, 5
000788  15000010  dma_cfg zero, zero, zero, 8
00078c  35000000  dma_run zero
000790  1500700a  dma_cfg zero, zero, r7, 5
000794  15000010  dma_cfg zero, zero, zero, 8
000798  1d900400  unlock r9
00079c  ab000300  lui r1, 48
0007a0  e7490ffe  storeli.w zero, -100(r30)
0007a4  670a0ffe  storeli.w zero, -96(r30)
0007a8  1f130000  addli r6, zero, 1
0007ac  9f038000  addli r7, zero, 64
0007b0  9f040004  addli r9, zero, 512
0007b4  1d800600  lock zero, r13
0007b8  9b900004  ori r1, r1, 64
0007bc  15030300  dma_cfg r6, r6, zero, 0
0007c0  15800204  dma_cfg zero, r5, zero, 2
0007c4  8b901110  add.s r1, r3, r1
0007c8  95007206  dma_cfg r1, r4, r7, 3
0007cc  9f000001  addli r1, zero, 128
0007d0  1f020020  addli r4, zero, 4096
0007d4  9f520000  addli r5, zero, 5
0007d8  9580d308  dma_cfg r1, r7, r13, 4
0007dc  9504720a  dma_cfg r9, r4, r7, 5
0007e0  1f220000  addli r4, zero, 2
0007e4  9f038000  addli r7, zero, 64
0007e8  15000010  dma_cfg zero, zero, zero, 8
0007ec  35000000  dma_run zero
0007f0  1500600a  dma_cfg zero, zero, r6, 5
0007f4  15000010  dma_cfg zero, zero, zero, 8
0007f8  1d900600  unlock r13
0007fc  1d800200  lock zero, r5
000800  15000014  dma_cfg zero, zero, zero, 10
000804  15006014  dma_cfg zero, zero, r6, 10
000808  15004014  dma_cfg zero, zero, r4, 10
00080c  1f620000  addli r4, zero, 6
000810  15008014  dma_cfg zero, zero, r8, 10
000814  1500d014  dma_cfg zero, zero, r13, 10
000818  15005014  dma_cfg zero, zero, r5, 10
00081c  15004014  dma_cfg zero, zero, r4, 10
000820  1f021000  addli r4, zero, 8
000824  1500e014  dma_cfg zero, zero, r14, 10
000828  15004014  dma_cfg zero, zero, r4, 10
00082c  1f121000  addli r4, zero, 9
000830  15004014  dma_cfg zero, zero, r4, 10
000834  1f221000  addli r4, zero, 10
000838  15004014  dma_cfg zero, zero, r4, 10
00083c  1f321000  addli r4, zero, 11
000840  15004014  dma_cfg zero, zero, r4, 10
000844  1f421000  addli r4, zero, 12
000848  15004014  dma_cfg zero, zero, r4, 10
00084c  1f521000  addli r4, zero, 13
000850  15004014  dma_cfg zero, zero, r4, 10
000854  1f621000  addli r4, zero, 14
000858  15004014  dma_cfg zero, zero, r4, 10
00085c  1f721000  addli r4, zero, 15
000860  15004014  dma_cfg zero, zero, r4, 10
000864  1f022000  addli r4, zero, 16
000868  15004014  dma_cfg zero, zero, r4, 10
00086c  1f122000  addli r4, zero, 17
000870  15004014  dma_cfg zero, zero, r4, 10
000874  1f222000  addli r4, zero, 18
000878  15004014  dma_cfg zero, zero, r4, 10
00087c  1f322000  addli r4, zero, 19
000880  15004014  dma_cfg zero, zero, r4, 10
000884  1f422000  addli r4, zero, 20
000888  15004014  dma_cfg zero, zero, r4, 10
00088c  1f522000  addli r4, zero, 21
000890  15004014  dma_cfg zero, zero, r4, 10
000894  1f622000  addli r4, zero, 22
000898  15004014  dma_cfg zero, zero, r4, 10
00089c  1f722000  addli r4, zero, 23
0008a0  15004014  dma_cfg zero, zero, r4, 10
0008a4  1f023000  addli r4, zero, 24
0008a8  15004014  dma_cfg zero, zero, r4, 10
0008ac  1f123000  addli r4, zero, 25
0008b0  15004014  dma_cfg zero, zero, r4, 10
0008b4  1f223000  addli r4, zero, 26
0008b8  15004014  dma_cfg zero, zero, r4, 10
0008bc  1f323000  addli r4, zero, 27
0008c0  15004014  dma_cfg zero, zero, r4, 10
0008c4  1f423000  addli r4, zero, 28
0008c8  15004014  dma_cfg zero, zero, r4, 10
0008cc  1f523000  addli r4, zero, 29
0008d0  15004014  dma_cfg zero, zero, r4, 10
0008d4  1f623000  addli r4, zero, 30
0008d8  15004014  dma_cfg zero, zero, r4, 10
0008dc  1f723000  addli r4, zero, 31
0008e0  15004014  dma_cfg zero, zero, r4, 10
0008e4  15030300  dma_cfg r6, r6, zero, 0
0008e8  15030002  dma_cfg r6, zero, zero, 1
0008ec  15000004  dma_cfg zero, zero, zero, 2
0008f0  15017006  dma_cfg r2, zero, r7, 3
0008f4  9500d008  dma_cfg r1, zero, r13, 4
0008f8  9f600000  addli r1, zero, 6
0008fc  9504700a  dma_cfg r9, zero, r7, 5
000900  15000010  dma_cfg zero, zero, zero, 8
000904  35000000  dma_run zero
000908  1500600a  dma_cfg zero, zero, r6, 5
00090c  15000010  dma_cfg zero, zero, zero, 8
000910  1d900200  unlock r5
000914  db1a0000  j 212
000918  37e1d800  beq r17, r13, 88
00091c  3bc8e80e  bneq r17, r14, 7696
000920  9f600000  addli r1, zero, 6
000924  e7490ffe  storeli.w zero, -100(r30)
000928  1f028000  addli r4, zero, 64
00092c  7d900000  xwait r1, 0
000930  9f101000  addli r1, zero, 9
000934  7d900000  xwait r1, 0
000938  9f200000  addli r1, zero, 2
00093c  1d000000  lock zero, zero
000940  81000000  ds_cfg r1, zero, 0
000944  9f000001  addli r1, zero, 128
000948  81000002  ds_cfg r1, zero, 1
00094c  0102001c  ds_cfg r4, zero, 14
000950  8100001a  ds_cfg r1, zero, 13
000954  9f100000  addli r1, zero, 1
000958  c1014104  shuffle_coa r3, r2, r4, 2
00095c  1d100000  unlock zero
000960  7d000700  xsignal r14, 0
000964  670a1ffe  storeli.w r1, -96(r30)
000968  9f001000  addli r1, zero, 8
00096c  db0f0000  j 124
000970  1f011000  addli r2, zero, 8
000974  7d900600  xwait r13, 0
000978  9f020000  addli r5, zero, 0
00097c  1f120000  addli r4, zero, 1
000980  1f331000  addli r6, zero, 11
000984  9f038000  addli r7, zero, 64
000988  7d100100  xwait r2, 0
00098c  1f110000  addli r2, zero, 1
000990  7d100300  xwait r6, 0
000994  1bb3e200  slli r6, r5, 14
000998  9bb28200  slli r5, r5, 8
00099c  1d000100  lock zero, r2
0009a0  89837300  mm_cfg r7, r7, r7, 0
0009a4  17133300  or r6, r6, r3
0009a8  97923200  or r5, r5, r3
0009ac  89862604  mm_cfg r13, r13, r2, 2
0009b0  a9826010  mm r5, r1, r6, 8
0009b4  1b031200  andi r6, r4, 1
0009b8  9f120000  addli r5, zero, 1
0009bc  1f020000  addli r4, zero, 0
0009c0  1d100100  unlock r2
0009c4  3b4f03fe  bneq r6, zero, -48
0009c8  9f500000  addli r1, zero, 5
0009cc  670a0ffe  storeli.w zero, -96(r30)
0009d0  7d800000  xsignal r1, 0
0009d4  9f101000  addli r1, zero, 9
0009d8  7d800000  xsignal r1, 0
0009dc  9f100000  addli r1, zero, 1
0009e0  e7491ffe  storeli.w r1, -100(r30)
0009e4  9f201000  addli r1, zero, 10
0009e8  7d800000  xsignal r1, 0
0009ec  9f300000  addli r1, zero, 3
0009f0  3bd01800  bneq r17, r1, 20
0009f4  9f201000  addli r1, zero, 10
0009f8  7d900000  xwait r1, 0
0009fc  9f601000  addli r1, zero, 14
000a00  7d900000  xwait r1, 0
000a04  ab000700  lui r1, 112
000a08  3d000000  xfence
000a0c  1f010001  addli r2, zero, 128
000a10  00a00300  mfence { lm, sm, gm }
000a14  9b900080  ori r1, r1, 2048
000a18  b3060128  zext_int2long r[14:15], r2
000a1c  8b921110  add.s r5, r3, r1
000a20  9f70f001  addli r1, zero, 255
000a24  80a20004  csr_set csr5, r1
000a28  9f700000  addli r1, zero, 7
000a2c  b3800028  zext_int2long r[2:3], r1
000a30  733c1ffa  store.d r[2:3], -72(r30)
000a34  00e00200  sync_core
000a38  bbe50800  bneq r17, zero, 376
000a3c  b3000028  zext_int2long r[2:3], zero
000a40  3d000000  xfence
000a44  00a00300  mfence { lm, sm, gm }
000a48  27830000  addli.d r[7:8], r[2:3], 0
000a4c  73381ffe  store.d r[2:3], -16(r30)
000a50  5b030000  j 24
000a54  eb508ffb  load.d r[2:3], -72(r30)
000a58  6b538fff  load.d r[7:8], -8(r30)
000a5c  93201304  setlt.ul r1, r[7:8], r[2:3]
000a60  27130300  addli.d r[7:8], r[7:8], 1
000a64  37950000  beq r1, zero, 324
000a68  9f700000  addli r1, zero, 7
000a6c  6b5a0fff  load.d r[21:22], -16(r30)
000a70  733c6ffe  store.d r[7:8], -8(r30)
000a74  17341302  sll.d r[9:10], r[7:8], r1
000a78  db040000  j 36
000a7c  274a0a00  addli.d r[21:22], r[21:22], 4
000a80  0b926211  add.s r4, r5, r22
000a84  1321da02  setneq.d r2, r[21:22], r[14:15]
000a88  73667201  stores.w r23, 12(r4)
000a8c  73648201  stores.w r24, 8(r4)
000a90  7362a201  stores.w r26, 4(r4)
000a94  73601200  stores.w r1, 0(r4)
000a98  b77e01fe  beq r2, zero, -68
000a9c  8b208a10  add.ul r[2:3], r[21:22], r[9:10]
000aa0  1bbb2000  slli r22, r1, 2
000aa4  8b906111  add.s r1, r3, r22
000aa8  efc8c000  loads.w r17, 12(r1)
000aac  efc50000  loads.w r11, 0(r1)
000ab0  6fce4000  loads.w r28, 4(r1)
000ab4  efcc8000  loads.w r25, 8(r1)
000ab8  1782f800  and r4, r17, r15
000abc  93004904  setlt.u r1, r18, r4
000ac0  3bb00000  bneq r1, zero, 12
000ac4  9f8b0800  addli r23, r17, 0
000ac8  5b010000  j 8
000acc  979bb801  or r23, r17, r27
000ad0  1786fc00  and r12, r25, r15
000ad4  9300c904  setlt.u r1, r18, r12
000ad8  3bb00000  bneq r1, zero, 12
000adc  1f8c0c00  addli r24, r25, 0
000ae0  5b010000  j 8
000ae4  179cbc01  or r24, r25, r27
000ae8  1701fe00  and r2, r28, r15
000aec  93002904  setlt.u r1, r18, r2
000af0  3bb00000  bneq r1, zero, 12
000af4  1f0d0e00  addli r26, r28, 0
000af8  5b010000  j 8
000afc  171dbe01  or r26, r28, r27
000b00  1783f500  and r6, r11, r15
000b04  93006904  setlt.u r1, r18, r6
000b08  3bd00000  bneq r1, zero, 20
000b0c  9f800500  addli r1, r11, 0
000b10  13836904  setlt.u r6, r19, r6
000b14  37500300  beq r6, zero, 20
000b18  db040000  j 36
000b1c  9790b501  or r1, r11, r27
000b20  13836904  setlt.u r6, r19, r6
000b24  3b600300  bneq r6, zero, 24
000b28  9bc00501  srli r1, r11, 16
000b2c  9b801000  andi r1, r1, 1
000b30  8b901510  add.s r1, r11, r1
000b34  8b900011  add.s r1, r1, r16
000b38  9780a000  and r1, r1, r10
000b3c  13812904  setlt.u r2, r19, r2
000b40  bb300100  bneq r2, zero, 44
000b44  1b410e01  srli r2, r28, 16
000b48  1b011100  andi r2, r2, 1
000b4c  0b112e10  add.s r2, r28, r2
000b50  0b110111  add.s r2, r2, r16
000b54  170da100  and r26, r2, r10
000b58  1381c904  setlt.u r2, r19, r12
000b5c  37600100  beq r2, zero, 24
000b60  13814904  setlt.u r2, r19, r4
000b64  3b6c01fe  bneq r2, zero, -232
000b68  5b050000  j 40
000b6c  1381c904  setlt.u r2, r19, r12
000b70  bb4f01fe  bneq r2, zero, -16
000b74  1bc10c01  srli r2, r25, 16
000b78  1b011100  andi r2, r2, 1
000b7c  0b912c10  add.s r2, r25, r2
000b80  0b110111  add.s r2, r2, r16
000b84  170ca100  and r24, r2, r10
000b88  13814904  setlt.u r2, r19, r4
000b8c  bb4b01fe  bneq r2, zero, -272
000b90  1bc10801  srli r2, r17, 16
000b94  1b011100  andi r2, r2, 1
000b98  0b912810  add.s r2, r17, r2
000b9c  0b110111  add.s r2, r2, r16
000ba0  970ba100  and r23, r2, r10
000ba4  5bdbffff  j -296
000ba8  80380002  core_id r17
000bac  00200100  mfence { sm }
000bb0  9f701000  addli r1, zero, 15
000bb4  b3800028  zext_int2long r[2:3], r1
000bb8  733c1ffe  store.d r[2:3], -8(r30)
000bbc  9f100000  addli r1, zero, 1
000bc0  bbd51800  bneq r17, r1, 372
000bc4  9f001000  addli r1, zero, 8
000bc8  3d000000  xfence
000bcc  00a00300  mfence { lm, sm, gm }
000bd0  33830028  zext_int2long r[7:8], r1
000bd4  5b030000  j 24
000bd8  eb508fff  load.d r[2:3], -8(r30)
000bdc  6b530fff  load.d r[7:8], -16(r30)
000be0  93201304  setlt.ul r1, r[7:8], r[2:3]
000be4  27130300  addli.d r[7:8], r[7:8], 1
000be8  37950000  beq r1, zero, 324
000bec  9f700000  addli r1, zero, 7
000bf0  73386ffe  store.d r[7:8], -16(r30)
000bf4  33040028  zext_int2long r[9:10], zero
000bf8  17331302  sll.d r[7:8], r[7:8], r1
000bfc  db040000  j 36
000c00  27440400  addli.d r[9:10], r[9:10], 4
000c04  0b914211  add.s r2, r5, r20
000c08  9320d402  setneq.d r1, r[9:10], r[14:15]
000c0c  73665101  stores.w r21, 12(r2)
000c10  73646101  stores.w r22, 8(r2)
000c14  73628101  stores.w r24, 4(r2)
000c18  7360b100  stores.w r11, 0(r2)
000c1c  b7fe00fe  beq r1, zero, -68
000c20  8b206410  add.ul r[2:3], r[9:10], r[7:8]
000c24  1bba2000  slli r20, r1, 2
000c28  8b904111  add.s r1, r3, r20
000c2c  efc8c000  loads.w r17, 12(r1)
000c30  6fcd0000  loads.w r26, 0(r1)
000c34  efcc4000  loads.w r25, 4(r1)
000c38  efcb8000  loads.w r23, 8(r1)
000c3c  1782f800  and r4, r17, r15
000c40  93004904  setlt.u r1, r18, r4
000c44  3bb00000  bneq r1, zero, 12
000c48  9f8a0800  addli r21, r17, 0
000c4c  5b010000  j 8
000c50  979ab801  or r21, r17, r27
000c54  1786fb00  and r12, r23, r15
000c58  9300c904  setlt.u r1, r18, r12
000c5c  3bb00000  bneq r1, zero, 12
000c60  1f8b0b00  addli r22, r23, 0
000c64  5b010000  j 8
000c68  179bbb01  or r22, r23, r27
000c6c  178efc00  and r28, r25, r15
000c70  9300c905  setlt.u r1, r18, r28
000c74  3bb00000  bneq r1, zero, 12
000c78  1f8c0c00  addli r24, r25, 0
000c7c  5b010000  j 8
000c80  179cbc01  or r24, r25, r27
000c84  9700fd00  and r1, r26, r15
000c88  13011904  setlt.u r2, r18, r1
000c8c  3b500100  bneq r2, zero, 20
000c90  9f050d00  addli r11, r26, 0
000c94  93801904  setlt.u r1, r19, r1
000c98  37d00000  beq r1, zero, 20
000c9c  db040000  j 36
000ca0  9715bd01  or r11, r26, r27
000ca4  93801904  setlt.u r1, r19, r1
000ca8  3be00000  bneq r1, zero, 24
000cac  9b400d01  srli r1, r26, 16
000cb0  9b801000  andi r1, r1, 1
000cb4  8b101d10  add.s r1, r26, r1
000cb8  8b900011  add.s r1, r1, r16
000cbc  9785a000  and r11, r1, r10
000cc0  9380c905  setlt.u r1, r19, r28
000cc4  bbb00000  bneq r1, zero, 44
000cc8  9bc00c01  srli r1, r25, 16
000ccc  9b801000  andi r1, r1, 1
000cd0  8b901c10  add.s r1, r25, r1
000cd4  8b900011  add.s r1, r1, r16
000cd8  178ca000  and r24, r1, r10
000cdc  9380c904  setlt.u r1, r19, r12
000ce0  37e00000  beq r1, zero, 24
000ce4  93804904  setlt.u r1, r19, r4
000ce8  3bec00fe  bneq r1, zero, -232
000cec  5b050000  j 40
000cf0  9380c904  setlt.u r1, r19, r12
000cf4  bbcf00fe  bneq r1, zero, -16
000cf8  9bc00b01  srli r1, r23, 16
000cfc  9b801000  andi r1, r1, 1
000d00  8b901b10  add.s r1, r23, r1
000d04  8b900011  add.s r1, r1, r16
000d08  178ba000  and r22, r1, r10
000d0c  93804904  setlt.u r1, r19, r4
000d10  bbcb00fe  bneq r1, zero, -272
000d14  9bc00801  srli r1, r17, 16
000d18  9b801000  andi r1, r1, 1
000d1c  8b901810  add.s r1, r17, r1
000d20  8b900011  add.s r1, r1, r16
000d24  978aa000  and r21, r1, r10
000d28  5bdbffff  j -296
000d2c  80380002  core_id r17
000d30  00200100  mfence { sm }
000d34  9f702000  addli r1, zero, 23
000d38  b3800028  zext_int2long r[2:3], r1
000d3c  73381ffe  store.d r[2:3], -16(r30)
000d40  e3003fff  loadli.w r1,  -104(r30)
000d44  b7d50000  beq r1, zero, 372
000d48  9f002000  addli r1, zero, 16
000d4c  3d000000  xfence
000d50  00a00300  mfence { lm, sm, gm }
000d54  33830028  zext_int2long r[7:8], r1
000d58  5b030000  j 24
000d5c  eb500fff  load.d r[2:3], -16(r30)
000d60  6b538ffe  load.d r[7:8], -24(r30)
000d64  93201304  setlt.ul r1, r[7:8], r[2:3]
000d68  27130300  addli.d r[7:8], r[7:8], 1
000d6c  37950000  beq r1, zero, 324
000d70  9f700000  addli r1, zero, 7
000d74  73346ffe  store.d r[7:8], -24(r30)
000d78  33040028  zext_int2long r[9:10], zero
000d7c  17331302  sll.d r[7:8], r[7:8], r1
000d80  db040000  j 36
000d84  27440400  addli.d r[9:10], r[9:10], 4
000d88  0b914211  add.s r2, r5, r20
000d8c  9320d402  setneq.d r1, r[9:10], r[14:15]
000d90  73665101  stores.w r21, 12(r2)
000d94  73646101  stores.w r22, 8(r2)
000d98  73628101  stores.w r24, 4(r2)
000d9c  7360b100  stores.w r11, 0(r2)
000da0  b7fe00fe  beq r1, zero, -68
000da4  8b206410  add.ul r[2:3], r[9:10], r[7:8]
000da8  1bba2000  slli r20, r1, 2
000dac  8b904111  add.s r1, r3, r20
000db0  efc8c000  loads.w r17, 12(r1)
000db4  6fcd0000  loads.w r26, 0(r1)
000db8  efcc4000  loads.w r25, 4(r1)
000dbc  efcb8000  loads.w r23, 8(r1)
000dc0  1782f800  and r4, r17, r15
000dc4  93004904  setlt.u r1, r18, r4
000dc8  3bb00000  bneq r1, zero, 12
000dcc  9f8a0800  addli r21, r17, 0
000dd0  5b010000  j 8
000dd4  979ab801  or r21, r17, r27
000dd8  1786fb00  and r12, r23, r15
000ddc  9300c904  setlt.u r1, r18, r12
000de0  3bb00000  bneq r1, zero, 12
000de4  1f8b0b00  addli r22, r23, 0
000de8  5b010000  j 8
000dec  179bbb01  or r22, r23, r27
000df0  178efc00  and r28, r25, r15
000df4  9300c905  setlt.u r1, r18, r28
000df8  3bb00000  bneq r1, zero, 12
000dfc  1f8c0c00  addli r24, r25, 0
000e00  5b010000  j 8
000e04  179cbc01  or r24, r25, r27
000e08  9700fd00  and r1, r26, r15
000e0c  13011904  setlt.u r2, r18, r1
000e10  3b500100  bneq r2, zero, 20
000e14  9f050d00  addli r11, r26, 0
000e18  93801904  setlt.u r1, r19, r1
000e1c  37d00000  beq r1, zero, 20
000e20  db040000  j 36
000e24  9715bd01  or r11, r26, r27
000e28  93801904  setlt.u r1, r19, r1
000e2c  3be00000  bneq r1, zero, 24
000e30  9b400d01  srli r1, r26, 16
000e34  9b801000  andi r1, r1, 1
000e38  8b101d10  add.s r1, r26, r1
000e3c  8b900011  add.s r1, r1, r16
000e40  9785a000  and r11, r1, r10
000e44  9380c905  setlt.u r1, r19, r28
000e48  bbb00000  bneq r1, zero, 44
000e4c  9bc00c01  srli r1, r25, 16
000e50  9b801000  andi r1, r1, 1
000e54  8b901c10  add.s r1, r25, r1
000e58  8b900011  add.s r1, r1, r16
000e5c  178ca000  and r24, r1, r10
000e60  9380c904  setlt.u r1, r19, r12
000e64  37e00000  beq r1, zero, 24
000e68  93804904  setlt.u r1, r19, r4
000e6c  3bec00fe  bneq r1, zero, -232
000e70  5b050000  j 40
000e74  9380c904  setlt.u r1, r19, r12
000e78  bbcf00fe  bneq r1, zero, -16
000e7c  9bc00b01  srli r1, r23, 16
000e80  9b801000  andi r1, r1, 1
000e84  8b901b10  add.s r1, r23, r1
000e88  8b900011  add.s r1, r1, r16
000e8c  178ba000  and r22, r1, r10
000e90  93804904  setlt.u r1, r19, r4
000e94  bbcb00fe  bneq r1, zero, -272
000e98  9bc00801  srli r1, r17, 16
000e9c  9b801000  andi r1, r1, 1
000ea0  8b901810  add.s r1, r17, r1
000ea4  8b900011  add.s r1, r1, r16
000ea8  978aa000  and r21, r1, r10
000eac  5bdbffff  j -296
000eb0  80380002  core_id r17
000eb4  00200100  mfence { sm }
000eb8  9f703000  addli r1, zero, 31
000ebc  b3800028  zext_int2long r[2:3], r1
000ec0  73341ffe  store.d r[2:3], -24(r30)
000ec4  9f300000  addli r1, zero, 3
000ec8  bbd51800  bneq r17, r1, 372
000ecc  9f003000  addli r1, zero, 24
000ed0  3d000000  xfence
000ed4  00a00300  mfence { lm, sm, gm }
000ed8  33830028  zext_int2long r[7:8], r1
000edc  5b030000  j 24
000ee0  eb508ffe  load.d r[2:3], -24(r30)
000ee4  6b530ffe  load.d r[7:8], -32(r30)
000ee8  93201304  setlt.ul r1, r[7:8], r[2:3]
000eec  27130300  addli.d r[7:8], r[7:8], 1
000ef0  37950000  beq r1, zero, 324
000ef4  9f700000  addli r1, zero, 7
000ef8  73306ffe  store.d r[7:8], -32(r30)
000efc  33040028  zext_int2long r[9:10], zero
000f00  17331302  sll.d r[7:8], r[7:8], r1
000f04  db040000  j 36
000f08  27440400  addli.d r[9:10], r[9:10], 4
000f0c  0b914211  add.s r2, r5, r20
000f10  9320d402  setneq.d r1, r[9:10], r[14:15]
000f14  73665101  stores.w r21, 12(r2)
000f18  73646101  stores.w r22, 8(r2)
000f1c  73628101  stores.w r24, 4(r2)
000f20  7360b100  stores.w r11, 0(r2)
000f24  b7fe00fe  beq r1, zero, -68
000f28  8b206410  add.ul r[2:3], r[9:10], r[7:8]
000f2c  1bba2000  slli r20, r1, 2
000f30  8b904111  add.s r1, r3, r20
000f34  efc8c000  loads.w r17, 12(r1)
000f38  6fcd0000  loads.w r26, 0(r1)
000f3c  efcc4000  loads.w r25, 4(r1)
000f40  efcb8000  loads.w r23, 8(r1)
000f44  1782f800  and r4, r17, r15
000f48  93004904  setlt.u r1, r18, r4
000f4c  3bb00000  bneq r1, zero, 12
000f50  9f8a0800  addli r21, r17, 0
000f54  5b010000  j 8
000f58  979ab801  or r21, r17, r27
000f5c  1786fb00  and r12, r23, r15
000f60  9300c904  setlt.u r1, r18, r12
000f64  3bb00000  bneq r1, zero, 12
000f68  1f8b0b00  addli r22, r23, 0
000f6c  5b010000  j 8
000f70  179bbb01  or r22, r23, r27
000f74  178efc00  and r28, r25, r15
000f78  9300c905  setlt.u r1, r18, r28
000f7c  3bb00000  bneq r1, zero, 12
000f80  1f8c0c00  addli r24, r25, 0
000f84  5b010000  j 8
000f88  179cbc01  or r24, r25, r27
000f8c  9700fd00  and r1, r26, r15
000f90  13011904  setlt.u r2, r18, r1
000f94  3b500100  bneq r2, zero, 20
000f98  9f050d00  addli r11, r26, 0
000f9c  93801904  setlt.u r1, r19, r1
000fa0  37d00000  beq r1, zero, 20
000fa4  db040000  j 36
000fa8  9715bd01  or r11, r26, r27
000fac  93801904  setlt.u r1, r19, r1
000fb0  3be00000  bneq r1, zero, 24
000fb4  9b400d01  srli r1, r26, 16
000fb8  9b801000  andi r1, r1, 1
000fbc  8b101d10  add.s r1, r26, r1
000fc0  8b900011  add.s r1, r1, r16
000fc4  9785a000  and r11, r1, r10
000fc8  9380c905  setlt.u r1, r19, r28
000fcc  bbb00000  bneq r1, zero, 44
000fd0  9bc00c01  srli r1, r25, 16
000fd4  9b801000  andi r1, r1, 1
000fd8  8b901c10  add.s r1, r25, r1
000fdc  8b900011  add.s r1, r1, r16
000fe0  178ca000  and r24, r1, r10
000fe4  9380c904  setlt.u r1, r19, r12
000fe8  37e00000  beq r1, zero, 24
000fec  93804904  setlt.u r1, r19, r4
000ff0  3bec00fe  bneq r1, zero, -232
000ff4  5b050000  j 40
000ff8  9380c904  setlt.u r1, r19, r12
000ffc  bbcf00fe  bneq r1, zero, -16
001000  9bc00b01  srli r1, r23, 16
001004  9b801000  andi r1, r1, 1
001008  8b901b10  add.s r1, r23, r1
00100c  8b900011  add.s r1, r1, r16
001010  178ba000  and r22, r1, r10
001014  93804904  setlt.u r1, r19, r4
001018  bbcb00fe  bneq r1, zero, -272
00101c  9bc00801  srli r1, r17, 16
001020  9b801000  andi r1, r1, 1
001024  8b901810  add.s r1, r17, r1
001028  8b900011  add.s r1, r1, r16
00102c  978aa000  and r21, r1, r10
001030  5bdbffff  j -296
001034  80380002  core_id r17
001038  00200100  mfence { sm }
00103c  9f704000  addli r1, zero, 39
001040  b3800028  zext_int2long r[2:3], r1
001044  73301ffe  store.d r[2:3], -32(r30)
001048  e3403fff  loadli.w r1,  -100(r30)
00104c  b7d50000  beq r1, zero, 372
001050  9f004000  addli r1, zero, 32
001054  3d000000  xfence
001058  00a00300  mfence { lm, sm, gm }
00105c  33830028  zext_int2long r[7:8], r1
001060  5b030000  j 24
001064  eb500ffe  load.d r[2:3], -32(r30)
001068  6b538ffd  load.d r[7:8], -40(r30)
00106c  93201304  setlt.ul r1, r[7:8], r[2:3]
001070  27130300  addli.d r[7:8], r[7:8], 1
001074  37950000  beq r1, zero, 324
001078  9f700000  addli r1, zero, 7
00107c  733c6ffc  store.d r[7:8], -40(r30)
001080  17341302  sll.d r[9:10], r[7:8], r1
001084  33030028  zext_int2long r[7:8], zero
001088  db040000  j 36
00108c  27430300  addli.d r[7:8], r[7:8], 4
001090  0b914211  add.s r2, r5, r20
001094  9320d302  setneq.d r1, r[7:8], r[14:15]
001098  73665101  stores.w r21, 12(r2)
00109c  73646101  stores.w r22, 8(r2)
0010a0  73628101  stores.w r24, 4(r2)
0010a4  7360b100  stores.w r11, 0(r2)
0010a8  b7fe00fe  beq r1, zero, -68
0010ac  8b208310  add.ul r[2:3], r[7:8], r[9:10]
0010b0  1bba2000  slli r20, r1, 2
0010b4  8b904111  add.s r1, r3, r20
0010b8  efc8c000  loads.w r17, 12(r1)
0010bc  6fcd0000  loads.w r26, 0(r1)
0010c0  efcc4000  loads.w r25, 4(r1)
0010c4  efcb8000  loads.w r23, 8(r1)
0010c8  1782f800  and r4, r17, r15
0010cc  93004904  setlt.u r1, r18, r4
0010d0  3bb00000  bneq r1, zero, 12
0010d4  9f8a0800  addli r21, r17, 0
0010d8  5b010000  j 8
0010dc  979ab801  or r21, r17, r27
0010e0  1786fb00  and r12, r23, r15
0010e4  9300c904  setlt.u r1, r18, r12
0010e8  3bb00000  bneq r1, zero, 12
0010ec  1f8b0b00  addli r22, r23, 0
0010f0  5b010000  j 8
0010f4  179bbb01  or r22, r23, r27
0010f8  178efc00  and r28, r25, r15
0010fc  9300c905  setlt.u r1, r18, r28
001100  3bb00000  bneq r1, zero, 12
001104  1f8c0c00  addli r24, r25, 0
001108  5b010000  j 8
00110c  179cbc01  or r24, r25, r27
001110  9700fd00  and r1, r26, r15
001114  13011904  setlt.u r2, r18, r1
001118  3b500100  bneq r2, zero, 20
00111c  9f050d00  addli r11, r26, 0
001120  93801904  setlt.u r1, r19, r1
001124  37d00000  beq r1, zero, 20
001128  db040000  j 36
00112c  9715bd01  or r11, r26, r27
001130  93801904  setlt.u r1, r19, r1
001134  3be00000  bneq r1, zero, 24
001138  9b400d01  srli r1, r26, 16
00113c  9b801000  andi r1, r1, 1
001140  8b101d10  add.s r1, r26, r1
001144  8b900011  add.s r1, r1, r16
001148  9785a000  and r11, r1, r10
00114c  9380c905  setlt.u r1, r19, r28
001150  bbb00000  bneq r1, zero, 44
001154  9bc00c01  srli r1, r25, 16
001158  9b801000  andi r1, r1, 1
00115c  8b901c10  add.s r1, r25, r1
001160  8b900011  add.s r1, r1, r16
001164  178ca000  and r24, r1, r10
001168  9380c904  setlt.u r1, r19, r12
00116c  37e00000  beq r1, zero, 24
001170  93804904  setlt.u r1, r19, r4
001174  3bec00fe  bneq r1, zero, -232
001178  5b050000  j 40
00117c  9380c904  setlt.u r1, r19, r12
001180  bbcf00fe  bneq r1, zero, -16
001184  9bc00b01  srli r1, r23, 16
001188  9b801000  andi r1, r1, 1
00118c  8b901b10  add.s r1, r23, r1
001190  8b900011  add.s r1, r1, r16
001194  178ba000  and r22, r1, r10
001198  93804904  setlt.u r1, r19, r4
00119c  bbcb00fe  bneq r1, zero, -272
0011a0  9bc00801  srli r1, r17, 16
0011a4  9b801000  andi r1, r1, 1
0011a8  8b901810  add.s r1, r17, r1
0011ac  8b900011  add.s r1, r1, r16
0011b0  978aa000  and r21, r1, r10
0011b4  5bdbffff  j -296
0011b8  80380002  core_id r17
0011bc  00200100  mfence { sm }
0011c0  9f705000  addli r1, zero, 47
0011c4  b3800028  zext_int2long r[2:3], r1
0011c8  733c1ffc  store.d r[2:3], -40(r30)
0011cc  9f500000  addli r1, zero, 5
0011d0  bbd51800  bneq r17, r1, 372
0011d4  9f005000  addli r1, zero, 40
0011d8  3d000000  xfence
0011dc  00a00300  mfence { lm, sm, gm }
0011e0  33830028  zext_int2long r[7:8], r1
0011e4  5b030000  j 24
0011e8  eb508ffd  load.d r[2:3], -40(r30)
0011ec  6b530ffd  load.d r[7:8], -48(r30)
0011f0  93201304  setlt.ul r1, r[7:8], r[2:3]
0011f4  27130300  addli.d r[7:8], r[7:8], 1
0011f8  37950000  beq r1, zero, 324
0011fc  9f700000  addli r1, zero, 7
001200  73386ffc  store.d r[7:8], -48(r30)
001204  173a1302  sll.d r[21:22], r[7:8], r1
001208  33030028  zext_int2long r[7:8], zero
00120c  db040000  j 36
001210  27430300  addli.d r[7:8], r[7:8], 4
001214  8b901210  add.s r1, r5, r1
001218  1321d302  setneq.d r2, r[7:8], r[14:15]
00121c  73e61001  stores.w r17, 12(r1)
001220  73e46001  stores.w r22, 8(r1)
001224  73e28001  stores.w r24, 4(r1)
001228  73e0b000  stores.w r11, 0(r1)
00122c  b77e01fe  beq r2, zero, -68
001230  8b204311  add.ul r[2:3], r[7:8], r[21:22]
001234  9bb02000  slli r1, r1, 2
001238  0b921110  add.s r4, r3, r1
00123c  6f41c200  loads.w r2, 12(r4)
001240  6f4d0200  loads.w r26, 0(r4)
001244  ef4c4200  loads.w r25, 4(r4)
001248  ef4b8200  loads.w r23, 8(r4)
00124c  1702f100  and r4, r2, r15
001250  13044904  setlt.u r8, r18, r4
001254  3b300400  bneq r8, zero, 12
001258  9f080100  addli r17, r2, 0
00125c  5b010000  j 8
001260  9718b101  or r17, r2, r27
001264  1786fb00  and r12, r23, r15
001268  1304c904  setlt.u r8, r18, r12
00126c  3b300400  bneq r8, zero, 12
001270  1f8b0b00  addli r22, r23, 0
001274  5b010000  j 8
001278  179bbb01  or r22, r23, r27
00127c  178efc00  and r28, r25, r15
001280  1304c905  setlt.u r8, r18, r28
001284  3b300400  bneq r8, zero, 12
001288  1f8c0c00  addli r24, r25, 0
00128c  5b010000  j 8
001290  179cbc01  or r24, r25, r27
001294  1704fd00  and r8, r26, r15
001298  93048904  setlt.u r9, r18, r8
00129c  3bd00400  bneq r9, zero, 20
0012a0  9f050d00  addli r11, r26, 0
0012a4  13848904  setlt.u r8, r19, r8
0012a8  37500400  beq r8, zero, 20
0012ac  db040000  j 36
0012b0  9715bd01  or r11, r26, r27
0012b4  13848904  setlt.u r8, r19, r8
0012b8  3b600400  bneq r8, zero, 24
0012bc  1b440d01  srli r8, r26, 16
0012c0  1b041400  andi r8, r8, 1
0012c4  0b148d10  add.s r8, r26, r8
0012c8  0b140411  add.s r8, r8, r16
0012cc  9705a400  and r11, r8, r10
0012d0  1384c905  setlt.u r8, r19, r28
0012d4  bb300400  bneq r8, zero, 44
0012d8  1bc40c01  srli r8, r25, 16
0012dc  1b041400  andi r8, r8, 1
0012e0  0b948c10  add.s r8, r25, r8
0012e4  0b140411  add.s r8, r8, r16
0012e8  170ca400  and r24, r8, r10
0012ec  1384c904  setlt.u r8, r19, r12
0012f0  37600400  beq r8, zero, 24
0012f4  13824904  setlt.u r4, r19, r4
0012f8  3b6c02fe  bneq r4, zero, -232
0012fc  5b050000  j 40
001300  1384c904  setlt.u r8, r19, r12
001304  bb4f04fe  bneq r8, zero, -16
001308  1bc40b01  srli r8, r23, 16
00130c  1b041400  andi r8, r8, 1
001310  0b948b10  add.s r8, r23, r8
001314  0b140411  add.s r8, r8, r16
001318  170ba400  and r22, r8, r10
00131c  13824904  setlt.u r4, r19, r4
001320  bb4b02fe  bneq r4, zero, -272
001324  1b420101  srli r4, r2, 16
001328  1b021200  andi r4, r4, 1
00132c  0b114110  add.s r2, r2, r4
001330  0b110111  add.s r2, r2, r16
001334  9708a100  and r17, r2, r10
001338  5bdbffff  j -296
00133c  80380002  core_id r17
001340  00200100  mfence { sm }
001344  9f706000  addli r1, zero, 55
001348  b3800028  zext_int2long r[2:3], r1
00134c  73381ffc  store.d r[2:3], -48(r30)
001350  9f600000  addli r1, zero, 6
001354  bbd51800  bneq r17, r1, 372
001358  9f006000  addli r1, zero, 48
00135c  3d000000  xfence
001360  00a00300  mfence { lm, sm, gm }
001364  33830028  zext_int2long r[7:8], r1
001368  5b030000  j 24
00136c  eb500ffd  load.d r[2:3], -48(r30)
001370  6b538ffc  load.d r[7:8], -56(r30)
001374  93201304  setlt.ul r1, r[7:8], r[2:3]
001378  27130300  addli.d r[7:8], r[7:8], 1
00137c  37950000  beq r1, zero, 324
001380  9f700000  addli r1, zero, 7
001384  73346ffc  store.d r[7:8], -56(r30)
001388  173a1302  sll.d r[21:22], r[7:8], r1
00138c  33030028  zext_int2long r[7:8], zero
001390  db040000  j 36
001394  27430300  addli.d r[7:8], r[7:8], 4
001398  8b901210  add.s r1, r5, r1
00139c  1321d302  setneq.d r2, r[7:8], r[14:15]
0013a0  73e61001  stores.w r17, 12(r1)
0013a4  73e48001  stores.w r24, 8(r1)
0013a8  73e27001  stores.w r23, 4(r1)
0013ac  73e0b000  stores.w r11, 0(r1)
0013b0  b77e01fe  beq r2, zero, -68
0013b4  8b204311  add.ul r[2:3], r[7:8], r[21:22]
0013b8  9bb02000  slli r1, r1, 2
0013bc  0b921110  add.s r4, r3, r1
0013c0  6f41c200  loads.w r2, 12(r4)
0013c4  6f4d0200  loads.w r26, 0(r4)
0013c8  ef4c4200  loads.w r25, 4(r4)
0013cc  6f4b8200  loads.w r22, 8(r4)
0013d0  1702f100  and r4, r2, r15
0013d4  13044904  setlt.u r8, r18, r4
0013d8  3b300400  bneq r8, zero, 12
0013dc  9f080100  addli r17, r2, 0
0013e0  5b010000  j 8
0013e4  9718b101  or r17, r2, r27
0013e8  1706fb00  and r12, r22, r15
0013ec  1304c904  setlt.u r8, r18, r12
0013f0  3b300400  bneq r8, zero, 12
0013f4  1f0c0b00  addli r24, r22, 0
0013f8  5b010000  j 8
0013fc  171cbb01  or r24, r22, r27
001400  178efc00  and r28, r25, r15
001404  1304c905  setlt.u r8, r18, r28
001408  3b300400  bneq r8, zero, 12
00140c  9f8b0c00  addli r23, r25, 0
001410  5b010000  j 8
001414  979bbc01  or r23, r25, r27
001418  1704fd00  and r8, r26, r15
00141c  93048904  setlt.u r9, r18, r8
001420  3bd00400  bneq r9, zero, 20
001424  9f050d00  addli r11, r26, 0
001428  13848904  setlt.u r8, r19, r8
00142c  37500400  beq r8, zero, 20
001430  db040000  j 36
001434  9715bd01  or r11, r26, r27
001438  13848904  setlt.u r8, r19, r8
00143c  3b600400  bneq r8, zero, 24
001440  1b440d01  srli r8, r26, 16
001444  1b041400  andi r8, r8, 1
001448  0b148d10  add.s r8, r26, r8
00144c  0b140411  add.s r8, r8, r16
001450  9705a400  and r11, r8, r10
001454  1384c905  setlt.u r8, r19, r28
001458  bb300400  bneq r8, zero, 44
00145c  1bc40c01  srli r8, r25, 16
001460  1b041400  andi r8, r8, 1
001464  0b948c10  add.s r8, r25, r8
001468  0b140411  add.s r8, r8, r16
00146c  970ba400  and r23, r8, r10
001470  1384c904  setlt.u r8, r19, r12
001474  37600400  beq r8, zero, 24
001478  13824904  setlt.u r4, r19, r4
00147c  3b6c02fe  bneq r4, zero, -232
001480  5b050000  j 40
001484  1384c904  setlt.u r8, r19, r12
001488  bb4f04fe  bneq r8, zero, -16
00148c  1b440b01  srli r8, r22, 16
001490  1b041400  andi r8, r8, 1
001494  0b148b10  add.s r8, r22, r8
001498  0b140411  add.s r8, r8, r16
00149c  170ca400  and r24, r8, r10
0014a0  13824904  setlt.u r4, r19, r4
0014a4  bb4b02fe  bneq r4, zero, -272
0014a8  1b420101  srli r4, r2, 16
0014ac  1b021200  andi r4, r4, 1
0014b0  0b114110  add.s r2, r2, r4
0014b4  0b110111  add.s r2, r2, r16
0014b8  9708a100  and r17, r2, r10
0014bc  5bdbffff  j -296
0014c0  80380002  core_id r17
0014c4  00200100  mfence { sm }
0014c8  9f707000  addli r1, zero, 63
0014cc  b3800028  zext_int2long r[2:3], r1
0014d0  73341ffc  store.d r[2:3], -56(r30)
0014d4  e3004fff  loadli.w r1,  -96(r30)
0014d8  b7d50000  beq r1, zero, 372
0014dc  9f007000  addli r1, zero, 56
0014e0  3d000000  xfence
0014e4  00a00300  mfence { lm, sm, gm }
0014e8  33830028  zext_int2long r[7:8], r1
0014ec  5b030000  j 24
0014f0  eb508ffc  load.d r[2:3], -56(r30)
0014f4  6b530ffc  load.d r[7:8], -64(r30)
0014f8  93201304  setlt.ul r1, r[7:8], r[2:3]
0014fc  27130300  addli.d r[7:8], r[7:8], 1
001500  37950000  beq r1, zero, 324
001504  9f700000  addli r1, zero, 7
001508  73306ffc  store.d r[7:8], -64(r30)
00150c  173a1302  sll.d r[21:22], r[7:8], r1
001510  33030028  zext_int2long r[7:8], zero
001514  db040000  j 36
001518  27430300  addli.d r[7:8], r[7:8], 4
00151c  8b901210  add.s r1, r5, r1
001520  1321d302  setneq.d r2, r[7:8], r[14:15]
001524  73e61001  stores.w r17, 12(r1)
001528  73e4a001  stores.w r26, 8(r1)
00152c  73e27001  stores.w r23, 4(r1)
001530  73e09000  stores.w r9, 0(r1)
001534  b77e01fe  beq r2, zero, -68
001538  8b204311  add.ul r[2:3], r[7:8], r[21:22]
00153c  9bb02000  slli r1, r1, 2
001540  0b921110  add.s r4, r3, r1
001544  6f41c200  loads.w r2, 12(r4)
001548  6f460200  loads.w r12, 0(r4)
00154c  6f444200  loads.w r8, 4(r4)
001550  6f4b8200  loads.w r22, 8(r4)
001554  1702f100  and r4, r2, r15
001558  93044904  setlt.u r9, r18, r4
00155c  3bb00400  bneq r9, zero, 12
001560  9f080100  addli r17, r2, 0
001564  5b010000  j 8
001568  9718b101  or r17, r2, r27
00156c  9705fb00  and r11, r22, r15
001570  9304b904  setlt.u r9, r18, r11
001574  3bb00400  bneq r9, zero, 12
001578  1f0d0b00  addli r26, r22, 0
00157c  5b010000  j 8
001580  171dbb01  or r26, r22, r27
001584  170ef400  and r28, r8, r15
001588  9304c905  setlt.u r9, r18, r28
00158c  3bb00400  bneq r9, zero, 12
001590  9f0b0400  addli r23, r8, 0
001594  5b010000  j 8
001598  971bb401  or r23, r8, r27
00159c  170cf600  and r24, r12, r15
0015a0  93048905  setlt.u r9, r18, r24
0015a4  3bd00400  bneq r9, zero, 20
0015a8  9f040600  addli r9, r12, 0
0015ac  138c8905  setlt.u r24, r19, r24
0015b0  37500c00  beq r24, zero, 20
0015b4  db040000  j 36
0015b8  9714b601  or r9, r12, r27
0015bc  138c8905  setlt.u r24, r19, r24
0015c0  3b600c00  bneq r24, zero, 24
0015c4  9b440601  srli r9, r12, 16
0015c8  9b841400  andi r9, r9, 1
0015cc  8b149610  add.s r9, r12, r9
0015d0  8b940411  add.s r9, r9, r16
0015d4  9784a400  and r9, r9, r10
0015d8  1386c905  setlt.u r12, r19, r28
0015dc  bb300600  bneq r12, zero, 44
0015e0  1b460401  srli r12, r8, 16
0015e4  1b061600  andi r12, r12, 1
0015e8  0b14c410  add.s r8, r8, r12
0015ec  0b140411  add.s r8, r8, r16
0015f0  970ba400  and r23, r8, r10
0015f4  1384b904  setlt.u r8, r19, r11
0015f8  37600400  beq r8, zero, 24
0015fc  13824904  setlt.u r4, r19, r4
001600  3b6c02fe  bneq r4, zero, -232
001604  5b050000  j 40
001608  1384b904  setlt.u r8, r19, r11
00160c  bb4f04fe  bneq r8, zero, -16
001610  1b440b01  srli r8, r22, 16
001614  1b041400  andi r8, r8, 1
001618  0b148b10  add.s r8, r22, r8
00161c  0b140411  add.s r8, r8, r16
001620  170da400  and r26, r8, r10
001624  13824904  setlt.u r4, r19, r4
001628  bb4b02fe  bneq r4, zero, -272
00162c  1b420101  srli r4, r2, 16
001630  1b021200  andi r4, r4, 1
001634  0b114110  add.s r2, r2, r4
001638  0b110111  add.s r2, r2, r16
00163c  9708a100  and r17, r2, r10
001640  5bdbffff  j -296
001644  80380002  core_id r17
001648  00200100  mfence { sm }
00164c  e3001fff  loadli.w r1,  -120(r30)
001650  1f01000f  addli r2, zero, 1920
001654  33030128  zext_int2long r[7:8], r2
001658  9bb07000  slli r1, r1, 7
00165c  b3800028  zext_int2long r[2:3], r1
001660  0ba36040  min.ul r[7:8], r[2:3], r[7:8]
001664  27030301  addli.d r[7:8], r[7:8], 128
001668  0b231348  max.ul r[7:8], r[7:8], r[2:3]
00166c  8b301318  sub.sl r[2:3], r[7:8], r[2:3]
001670  8ba0d040  min.ul r[2:3], r[2:3], r[14:15]
001674  73341ff8  store.d r[2:3], -120(r30)
001678  9f70f001  addli r1, zero, 255
00167c  80a20004  csr_set csr5, r1
001680  9f300000  addli r1, zero, 3
001684  00e00200  sync_core
001688  bbc01800  bneq r17, r1, 48
00168c  9f301000  addli r1, zero, 11
001690  7d800000  xsignal r1, 0
001694  9f401000  addli r1, zero, 12
001698  7d800000  xsignal r1, 0
00169c  9f501000  addli r1, zero, 13
0016a0  7d900000  xwait r1, 0
0016a4  9f202000  addli r1, zero, 18
0016a8  7d900000  xwait r1, 0
0016ac  6b538ffa  load.d r[7:8], -88(r30)
0016b0  9f100000  addli r1, zero, 1
0016b4  5b5f0000  j 760
0016b8  e3006fff  loadli.w r1,  -80(r30)
0016bc  2b010700  lui r2, 112
0016c0  9bb09000  slli r1, r1, 9
0016c4  8b952010  add.s r11, r1, r2
0016c8  1f110000  addli r2, zero, 1
0016cc  bbbf2806  bneq r17, r2, 4076
0016d0  6b530f01  load.d r[7:8], 16(r30)
0016d4  6b548ff7  load.d r[9:10], -136(r30)
0016d8  1f0a2000  addli r20, zero, 16
0016dc  7d100a00  xwait r20, 0
0016e0  63414fff  loadli.w r2,  -92(r30)
0016e4  0b238310  add.ul r[7:8], r[7:8], r[9:10]
0016e8  9f340000  addli r9, zero, 3
0016ec  bfd42400  blt.s r9, r2, 308
0016f0  1f560000  addli r12, zero, 5
0016f4  1f140000  addli r8, zero, 1
0016f8  1f210000  addli r2, zero, 2
0016fc  1f620000  addli r4, zero, 6
001700  1d000600  lock zero, r12
001704  15000014  dma_cfg zero, zero, zero, 10
001708  15008014  dma_cfg zero, zero, r8, 10
00170c  15002014  dma_cfg zero, zero, r2, 10
001710  1f410000  addli r2, zero, 4
001714  15009014  dma_cfg zero, zero, r9, 10
001718  15002014  dma_cfg zero, zero, r2, 10
00171c  1500c014  dma_cfg zero, zero, r12, 10
001720  15004014  dma_cfg zero, zero, r4, 10
001724  1f720000  addli r4, zero, 7
001728  15004014  dma_cfg zero, zero, r4, 10
00172c  1f021000  addli r4, zero, 8
001730  15004014  dma_cfg zero, zero, r4, 10
001734  1f121000  addli r4, zero, 9
001738  15004014  dma_cfg zero, zero, r4, 10
00173c  1f221000  addli r4, zero, 10
001740  15004014  dma_cfg zero, zero, r4, 10
001744  1f321000  addli r4, zero, 11
001748  15004014  dma_cfg zero, zero, r4, 10
00174c  1f421000  addli r4, zero, 12
001750  15004014  dma_cfg zero, zero, r4, 10
001754  1f521000  addli r4, zero, 13
001758  15004014  dma_cfg zero, zero, r4, 10
00175c  1f621000  addli r4, zero, 14
001760  15004014  dma_cfg zero, zero, r4, 10
001764  1f721000  addli r4, zero, 15
001768  15004014  dma_cfg zero, zero, r4, 10
00176c  1f122000  addli r4, zero, 17
001770  15004015  dma_cfg zero, zero, r20, 10
001774  15004014  dma_cfg zero, zero, r4, 10
001778  1f222000  addli r4, zero, 18
00177c  15004014  dma_cfg zero, zero, r4, 10
001780  1f322000  addli r4, zero, 19
001784  15004014  dma_cfg zero, zero, r4, 10
001788  1f422000  addli r4, zero, 20
00178c  15004014  dma_cfg zero, zero, r4, 10
001790  1f522000  addli r4, zero, 21
001794  15004014  dma_cfg zero, zero, r4, 10
001798  1f622000  addli r4, zero, 22
00179c  15004014  dma_cfg zero, zero, r4, 10
0017a0  1f722000  addli r4, zero, 23
0017a4  15004014  dma_cfg zero, zero, r4, 10
0017a8  1f023000  addli r4, zero, 24
0017ac  15004014  dma_cfg zero, zero, r4, 10
0017b0  1f123000  addli r4, zero, 25
0017b4  15004014  dma_cfg zero, zero, r4, 10
0017b8  1f223000  addli r4, zero, 26
0017bc  15004014  dma_cfg zero, zero, r4, 10
0017c0  1f323000  addli r4, zero, 27
0017c4  15004014  dma_cfg zero, zero, r4, 10
0017c8  1f423000  addli r4, zero, 28
0017cc  15004014  dma_cfg zero, zero, r4, 10
0017d0  1f523000  addli r4, zero, 29
0017d4  15004014  dma_cfg zero, zero, r4, 10
0017d8  1f623000  addli r4, zero, 30
0017dc  15004014  dma_cfg zero, zero, r4, 10
0017e0  1f723000  addli r4, zero, 31
0017e4  15004014  dma_cfg zero, zero, r4, 10
0017e8  1f028000  addli r4, zero, 64
0017ec  15040400  dma_cfg r8, r8, zero, 0
0017f0  15040002  dma_cfg r8, zero, zero, 1
0017f4  15000004  dma_cfg zero, zero, zero, 2
0017f8  95054006  dma_cfg r11, zero, r4, 3
0017fc  1f020001  addli r4, zero, 128
001800  15022008  dma_cfg r4, zero, r2, 4
001804  1f010004  addli r2, zero, 512
001808  1501800a  dma_cfg r2, zero, r8, 5
00180c  15000010  dma_cfg zero, zero, zero, 8
001810  35000000  dma_run zero
001814  1500800a  dma_cfg zero, zero, r8, 5
001818  15000010  dma_cfg zero, zero, zero, 8
00181c  1d100600  unlock r12
001820  1f420000  addli r4, zero, 4
001824  1f140000  addli r8, zero, 1
001828  2b010700  lui r2, 112
00182c  9f0a8000  addli r21, zero, 64
001830  1f260000  addli r12, zero, 2
001834  1d000200  lock zero, r4
001838  1b110104  ori r2, r2, 64
00183c  15040400  dma_cfg r8, r8, zero, 0
001840  15800304  dma_cfg zero, r7, zero, 2
001844  8b902010  add.s r1, r1, r2
001848  6b5b8ff8  load.d r[23:24], -120(r30)
00184c  95005307  dma_cfg r1, r6, r21, 3
001850  1f030001  addli r6, zero, 128
001854  9f030002  addli r7, zero, 256
001858  1f713b00  addli r2, r22, 31
00185c  9b405100  srli r1, r2, 5
001860  1b311b00  slli r2, r22, 1
001864  1f0b0004  addli r22, zero, 512
001868  15831a08  dma_cfg r6, r21, r1, 4
00186c  1b01e103  andi r2, r2, 62
001870  158b830a  dma_cfg r22, r7, r8, 5
001874  9f530000  addli r7, zero, 5
001878  15002010  dma_cfg zero, zero, r2, 8
00187c  35000000  dma_run zero
001880  1500800a  dma_cfg zero, zero, r8, 5
001884  15000010  dma_cfg zero, zero, zero, 8
001888  1d100200  unlock r4
00188c  1d800300  lock zero, r7
001890  15000014  dma_cfg zero, zero, zero, 10
001894  15008014  dma_cfg zero, zero, r8, 10
001898  1500c014  dma_cfg zero, zero, r12, 10
00189c  15009014  dma_cfg zero, zero, r9, 10
0018a0  9f741000  addli r9, zero, 15
0018a4  15004014  dma_cfg zero, zero, r4, 10
0018a8  1f620000  addli r4, zero, 6
0018ac  15007014  dma_cfg zero, zero, r7, 10
0018b0  15004014  dma_cfg zero, zero, r4, 10
0018b4  1f720000  addli r4, zero, 7
0018b8  15004014  dma_cfg zero, zero, r4, 10
0018bc  1f021000  addli r4, zero, 8
0018c0  15004014  dma_cfg zero, zero, r4, 10
0018c4  1f121000  addli r4, zero, 9
0018c8  15004014  dma_cfg zero, zero, r4, 10
0018cc  1f221000  addli r4, zero, 10
0018d0  15004014  dma_cfg zero, zero, r4, 10
0018d4  1f321000  addli r4, zero, 11
0018d8  15004014  dma_cfg zero, zero, r4, 10
0018dc  1f421000  addli r4, zero, 12
0018e0  15004014  dma_cfg zero, zero, r4, 10
0018e4  1f521000  addli r4, zero, 13
0018e8  15004014  dma_cfg zero, zero, r4, 10
0018ec  1f621000  addli r4, zero, 14
0018f0  15004014  dma_cfg zero, zero, r4, 10
0018f4  1f122000  addli r4, zero, 17
0018f8  15009014  dma_cfg zero, zero, r9, 10
0018fc  15004015  dma_cfg zero, zero, r20, 10
001900  15004014  dma_cfg zero, zero, r4, 10
001904  1f222000  addli r4, zero, 18
001908  15004014  dma_cfg zero, zero, r4, 10
00190c  1f322000  addli r4, zero, 19
001910  15004014  dma_cfg zero, zero, r4, 10
001914  1f422000  addli r4, zero, 20
001918  15004014  dma_cfg zero, zero, r4, 10
00191c  1f522000  addli r4, zero, 21
001920  15004014  dma_cfg zero, zero, r4, 10
001924  1f622000  addli r4, zero, 22
001928  15004014  dma_cfg zero, zero, r4, 10
00192c  1f722000  addli r4, zero, 23
001930  15004014  dma_cfg zero, zero, r4, 10
001934  1f023000  addli r4, zero, 24
001938  15004014  dma_cfg zero, zero, r4, 10
00193c  1f123000  addli r4, zero, 25
001940  15004014  dma_cfg zero, zero, r4, 10
001944  1f223000  addli r4, zero, 26
001948  15004014  dma_cfg zero, zero, r4, 10
00194c  1f323000  addli r4, zero, 27
001950  15004014  dma_cfg zero, zero, r4, 10
001954  1f423000  addli r4, zero, 28
001958  15004014  dma_cfg zero, zero, r4, 10
00195c  1f523000  addli r4, zero, 29
001960  15004014  dma_cfg zero, zero, r4, 10
001964  1f623000  addli r4, zero, 30
001968  15004014  dma_cfg zero, zero, r4, 10
00196c  1f723000  addli r4, zero, 31
001970  15004014  dma_cfg zero, zero, r4, 10
001974  15040400  dma_cfg r8, r8, zero, 0
001978  15040002  dma_cfg r8, zero, zero, 1
00197c  15000004  dma_cfg zero, zero, zero, 2
001980  95055007  dma_cfg r11, zero, r21, 3
001984  15031008  dma_cfg r6, zero, r1, 4
001988  9f100000  addli r1, zero, 1
00198c  150b100a  dma_cfg r22, zero, r1, 5
001990  15002010  dma_cfg zero, zero, r2, 8
001994  35000000  dma_run zero
001998  1500100a  dma_cfg zero, zero, r1, 5
00199c  15000010  dma_cfg zero, zero, zero, 8
0019a0  1d900300  unlock r7
0019a4  7d800400  xsignal r9, 0
0019a8  6b538ffa  load.d r[7:8], -88(r30)
0019ac  2b010500  lui r2, 80
0019b0  3d000000  xfence
0019b4  00a00300  mfence { lm, sm, gm }
0019b8  8b952110  add.s r11, r3, r2
0019bc  1f71f001  addli r2, zero, 255
0019c0  80220104  csr_set csr5, r2
0019c4  00e00200  sync_core
0019c8  37e20802  beq r17, zero, 1176
0019cc  3bd81802  bneq r17, r1, 1556
0019d0  9f001000  addli r1, zero, 8
0019d4  3d000000  xfence
0019d8  00a00300  mfence { lm, sm, gm }
0019dc  33830028  zext_int2long r[7:8], r1
0019e0  5b030000  j 24
0019e4  eb508fff  load.d r[2:3], -8(r30)
0019e8  6b530ffc  load.d r[7:8], -64(r30)
0019ec  93201304  setlt.ul r1, r[7:8], r[2:3]
0019f0  27130300  addli.d r[7:8], r[7:8], 1
0019f4  37950000  beq r1, zero, 324
0019f8  9f700000  addli r1, zero, 7
0019fc  73306ffc  store.d r[7:8], -64(r30)
001a00  173a1302  sll.d r[21:22], r[7:8], r1
001a04  33030028  zext_int2long r[7:8], zero
001a08  db040000  j 36
001a0c  27430300  addli.d r[7:8], r[7:8], 4
001a10  8b901510  add.s r1, r11, r1
001a14  1321d302  setneq.d r2, r[7:8], r[14:15]
001a18  73e64000  stores.w r4, 12(r1)
001a1c  73e46001  stores.w r22, 8(r1)
001a20  73e28000  stores.w r8, 4(r1)
001a24  73e0c000  stores.w r12, 0(r1)
001a28  b77e01fe  beq r2, zero, -68
001a2c  8b204311  add.ul r[2:3], r[7:8], r[21:22]
001a30  9bb02000  slli r1, r1, 2
001a34  0b921210  add.s r4, r5, r1
001a38  6f41c200  loads.w r2, 12(r4)
001a3c  6f4e0200  loads.w r28, 0(r4)
001a40  ef444200  loads.w r9, 4(r4)
001a44  ef4b8200  loads.w r23, 8(r4)
001a48  9708f100  and r17, r2, r15
001a4c  13021905  setlt.u r4, r18, r17
001a50  3b300200  bneq r4, zero, 12
001a54  1f020100  addli r4, r2, 0
001a58  5b010000  j 8
001a5c  1712b101  or r4, r2, r27
001a60  178dfb00  and r26, r23, r15
001a64  1304a905  setlt.u r8, r18, r26
001a68  3b300400  bneq r8, zero, 12
001a6c  1f8b0b00  addli r22, r23, 0
001a70  5b010000  j 8
001a74  179bbb01  or r22, r23, r27
001a78  178cf400  and r24, r9, r15
001a7c  13048905  setlt.u r8, r18, r24
001a80  3b300400  bneq r8, zero, 12
001a84  1f840400  addli r8, r9, 0
001a88  5b010000  j 8
001a8c  1794b401  or r8, r9, r27
001a90  970cfe00  and r25, r28, r15
001a94  13069905  setlt.u r12, r18, r25
001a98  3b500600  bneq r12, zero, 20
001a9c  1f060e00  addli r12, r28, 0
001aa0  938c9905  setlt.u r25, r19, r25
001aa4  37d00c00  beq r25, zero, 20
001aa8  db040000  j 36
001aac  1716be01  or r12, r28, r27
001ab0  938c9905  setlt.u r25, r19, r25
001ab4  3be00c00  bneq r25, zero, 24
001ab8  1b460e01  srli r12, r28, 16
001abc  1b061600  andi r12, r12, 1
001ac0  0b16ce10  add.s r12, r28, r12
001ac4  0b160611  add.s r12, r12, r16
001ac8  1706a600  and r12, r12, r10
001acc  138c8905  setlt.u r24, r19, r24
001ad0  bb300c00  bneq r24, zero, 44
001ad4  1bc40401  srli r8, r9, 16
001ad8  1b041400  andi r8, r8, 1
001adc  0b948410  add.s r8, r9, r8
001ae0  0b140411  add.s r8, r8, r16
001ae4  1704a400  and r8, r8, r10
001ae8  9384a905  setlt.u r9, r19, r26
001aec  37e00400  beq r9, zero, 24
001af0  93841905  setlt.u r9, r19, r17
001af4  3bec04fe  bneq r9, zero, -232
001af8  5b050000  j 40
001afc  9384a905  setlt.u r9, r19, r26
001b00  bbcf04fe  bneq r9, zero, -16
001b04  9bc40b01  srli r9, r23, 16
001b08  9b841400  andi r9, r9, 1
001b0c  8b949b10  add.s r9, r23, r9
001b10  8b940411  add.s r9, r9, r16
001b14  178ba400  and r22, r9, r10
001b18  93841905  setlt.u r9, r19, r17
001b1c  bbcb04fe  bneq r9, zero, -272
001b20  1b420101  srli r4, r2, 16
001b24  1b021200  andi r4, r4, 1
001b28  0b114110  add.s r2, r2, r4
001b2c  0b110111  add.s r2, r2, r16
001b30  1702a100  and r4, r2, r10
001b34  5bdbffff  j -296
001b38  00200100  mfence { sm }
001b3c  80380002  core_id r17
001b40  6b538ffa  load.d r[7:8], -88(r30)
001b44  e3003fff  loadli.w r1,  -104(r30)
001b48  bb820002  bneq r1, zero, 1184
001b4c  9f300000  addli r1, zero, 3
001b50  3bd81802  bneq r17, r1, 1556
001b54  9f003000  addli r1, zero, 24
001b58  3d000000  xfence
001b5c  00a00300  mfence { lm, sm, gm }
001b60  33830028  zext_int2long r[7:8], r1
001b64  5b030000  j 24
001b68  eb508ffe  load.d r[2:3], -24(r30)
001b6c  6b538fff  load.d r[7:8], -8(r30)
001b70  93201304  setlt.ul r1, r[7:8], r[2:3]
001b74  27130300  addli.d r[7:8], r[7:8], 1
001b78  37950000  beq r1, zero, 324
001b7c  9f700000  addli r1, zero, 7
001b80  733c6ffe  store.d r[7:8], -8(r30)
001b84  173a1302  sll.d r[21:22], r[7:8], r1
001b88  33030028  zext_int2long r[7:8], zero
001b8c  db040000  j 36
001b90  27430300  addli.d r[7:8], r[7:8], 4
001b94  8b901510  add.s r1, r11, r1
001b98  1321d302  setneq.d r2, r[7:8], r[14:15]
001b9c  73e64000  stores.w r4, 12(r1)
001ba0  73e46001  stores.w r22, 8(r1)
001ba4  73e28000  stores.w r8, 4(r1)
001ba8  73e0c000  stores.w r12, 0(r1)
001bac  b77e01fe  beq r2, zero, -68
001bb0  8b204311  add.ul r[2:3], r[7:8], r[21:22]
001bb4  9bb02000  slli r1, r1, 2
001bb8  0b921210  add.s r4, r5, r1
001bbc  6f41c200  loads.w r2, 12(r4)
001bc0  6f4e0200  loads.w r28, 0(r4)
001bc4  ef444200  loads.w r9, 4(r4)
001bc8  ef4b8200  loads.w r23, 8(r4)
001bcc  9708f100  and r17, r2, r15
001bd0  13021905  setlt.u r4, r18, r17
001bd4  3b300200  bneq r4, zero, 12
001bd8  1f020100  addli r4, r2, 0
001bdc  5b010000  j 8
001be0  1712b101  or r4, r2, r27
001be4  178dfb00  and r26, r23, r15
001be8  1304a905  setlt.u r8, r18, r26
001bec  3b300400  bneq r8, zero, 12
001bf0  1f8b0b00  addli r22, r23, 0
001bf4  5b010000  j 8
001bf8  179bbb01  or r22, r23, r27
001bfc  178cf400  and r24, r9, r15
001c00  13048905  setlt.u r8, r18, r24
001c04  3b300400  bneq r8, zero, 12
001c08  1f840400  addli r8, r9, 0
001c0c  5b010000  j 8
001c10  1794b401  or r8, r9, r27
001c14  970cfe00  and r25, r28, r15
001c18  13069905  setlt.u r12, r18, r25
001c1c  3b500600  bneq r12, zero, 20
001c20  1f060e00  addli r12, r28, 0
001c24  938c9905  setlt.u r25, r19, r25
001c28  37d00c00  beq r25, zero, 20
001c2c  db040000  j 36
001c30  1716be01  or r12, r28, r27
001c34  938c9905  setlt.u r25, r19, r25
001c38  3be00c00  bneq r25, zero, 24
001c3c  1b460e01  srli r12, r28, 16
001c40  1b061600  andi r12, r12, 1
001c44  0b16ce10  add.s r12, r28, r12
001c48  0b160611  add.s r12, r12, r16
001c4c  1706a600  and r12, r12, r10
001c50  138c8905  setlt.u r24, r19, r24
001c54  bb300c00  bneq r24, zero, 44
001c58  1bc40401  srli r8, r9, 16
001c5c  1b041400  andi r8, r8, 1
001c60  0b948410  add.s r8, r9, r8
001c64  0b140411  add.s r8, r8, r16
001c68  1704a400  and r8, r8, r10
001c6c  9384a905  setlt.u r9, r19, r26
001c70  37e00400  beq r9, zero, 24
001c74  93841905  setlt.u r9, r19, r17
001c78  3bec04fe  bneq r9, zero, -232
001c7c  5b050000  j 40
001c80  9384a905  setlt.u r9, r19, r26
001c84  bbcf04fe  bneq r9, zero, -16
001c88  9bc40b01  srli r9, r23, 16
001c8c  9b841400  andi r9, r9, 1
001c90  8b949b10  add.s r9, r23, r9
001c94  8b940411  add.s r9, r9, r16
001c98  178ba400  and r22, r9, r10
001c9c  93841905  setlt.u r9, r19, r17
001ca0  bbcb04fe  bneq r9, zero, -272
001ca4  1b420101  srli r4, r2, 16
001ca8  1b021200  andi r4, r4, 1
001cac  0b114110  add.s r2, r2, r4
001cb0  0b110111  add.s r2, r2, r16
001cb4  1702a100  and r4, r2, r10
001cb8  5bdbffff  j -296
001cbc  00200100  mfence { sm }
001cc0  80380002  core_id r17
001cc4  6b538ffa  load.d r[7:8], -88(r30)
001cc8  e3403fff  loadli.w r1,  -100(r30)
001ccc  bb820002  bneq r1, zero, 1184
001cd0  9f500000  addli r1, zero, 5
001cd4  3bd81802  bneq r17, r1, 1556
001cd8  9f005000  addli r1, zero, 40
001cdc  3d000000  xfence
001ce0  00a00300  mfence { lm, sm, gm }
001ce4  33830028  zext_int2long r[7:8], r1
001ce8  5b030000  j 24
001cec  eb508ffd  load.d r[2:3], -40(r30)
001cf0  6b538fff  load.d r[7:8], -8(r30)
001cf4  93201304  setlt.ul r1, r[7:8], r[2:3]
001cf8  27130300  addli.d r[7:8], r[7:8], 1
001cfc  37950000  beq r1, zero, 324
001d00  9f700000  addli r1, zero, 7
001d04  330c0028  zext_int2long r[25:26], zero
001d08  733c6ffe  store.d r[7:8], -8(r30)
001d0c  173a1302  sll.d r[21:22], r[7:8], r1
001d10  db040000  j 36
001d14  274c0c00  addli.d r[25:26], r[25:26], 4
001d18  8b901510  add.s r1, r11, r1
001d1c  1321dc02  setneq.d r2, r[25:26], r[14:15]
001d20  73e64000  stores.w r4, 12(r1)
001d24  73e46001  stores.w r22, 8(r1)
001d28  73e28000  stores.w r8, 4(r1)
001d2c  73e0c000  stores.w r12, 0(r1)
001d30  b77e01fe  beq r2, zero, -68
001d34  8b204c11  add.ul r[2:3], r[25:26], r[21:22]
001d38  9bb02000  slli r1, r1, 2
001d3c  0b921210  add.s r4, r5, r1
001d40  6f41c200  loads.w r2, 12(r4)
001d44  6f4e0200  loads.w r28, 0(r4)
001d48  ef444200  loads.w r9, 4(r4)
001d4c  ef4b8200  loads.w r23, 8(r4)
001d50  9708f100  and r17, r2, r15
001d54  13021905  setlt.u r4, r18, r17
001d58  3b300200  bneq r4, zero, 12
001d5c  1f020100  addli r4, r2, 0
001d60  5b010000  j 8
001d64  1712b101  or r4, r2, r27
001d68  178dfb00  and r26, r23, r15
001d6c  1303a905  setlt.u r6, r18, r26
001d70  3b300300  bneq r6, zero, 12
001d74  1f8b0b00  addli r22, r23, 0
001d78  5b010000  j 8
001d7c  179bbb01  or r22, r23, r27
001d80  1783f400  and r6, r9, r15
001d84  93036904  setlt.u r7, r18, r6
001d88  3bb00300  bneq r7, zero, 12
001d8c  1f840400  addli r8, r9, 0
001d90  5b010000  j 8
001d94  1794b401  or r8, r9, r27
001d98  9703fe00  and r7, r28, r15
001d9c  13067904  setlt.u r12, r18, r7
001da0  3b500600  bneq r12, zero, 20
001da4  1f060e00  addli r12, r28, 0
001da8  93837904  setlt.u r7, r19, r7
001dac  37d00300  beq r7, zero, 20
001db0  db040000  j 36
001db4  1716be01  or r12, r28, r27
001db8  93837904  setlt.u r7, r19, r7
001dbc  3be00300  bneq r7, zero, 24
001dc0  9b430e01  srli r7, r28, 16
001dc4  9b831300  andi r7, r7, 1
001dc8  8b137e10  add.s r7, r28, r7
001dcc  8b930311  add.s r7, r7, r16
001dd0  1786a300  and r12, r7, r10
001dd4  13836904  setlt.u r6, r19, r6
001dd8  bb300300  bneq r6, zero, 44
001ddc  1bc30401  srli r6, r9, 16
001de0  1b031300  andi r6, r6, 1
001de4  0b936410  add.s r6, r9, r6
001de8  0b130311  add.s r6, r6, r16
001dec  1704a300  and r8, r6, r10
001df0  1383a905  setlt.u r6, r19, r26
001df4  37600300  beq r6, zero, 24
001df8  13831905  setlt.u r6, r19, r17
001dfc  3b6c03fe  bneq r6, zero, -232
001e00  5b050000  j 40
001e04  1383a905  setlt.u r6, r19, r26
001e08  bb4f03fe  bneq r6, zero, -16
001e0c  1bc30b01  srli r6, r23, 16
001e10  1b031300  andi r6, r6, 1
001e14  0b936b10  add.s r6, r23, r6
001e18  0b130311  add.s r6, r6, r16
001e1c  170ba300  and r22, r6, r10
001e20  13831905  setlt.u r6, r19, r17
001e24  bb4b03fe  bneq r6, zero, -272
001e28  1b420101  srli r4, r2, 16
001e2c  1b021200  andi r4, r4, 1
001e30  0b114110  add.s r2, r2, r4
001e34  0b110111  add.s r2, r2, r16
001e38  1702a100  and r4, r2, r10
001e3c  5bdbffff  j -296
001e40  00200100  mfence { sm }
001e44  80380002  core_id r17
001e48  6b538ffa  load.d r[7:8], -88(r30)
001e4c  9f600000  addli r1, zero, 6
001e50  b7821802  beq r17, r1, 1184
001e54  e3004fff  loadli.w r1,  -96(r30)
001e58  3bd80002  bneq r1, zero, 1556
001e5c  dbf00000  j 1924
001e60  b3000028  zext_int2long r[2:3], zero
001e64  3d000000  xfence
001e68  00a00300  mfence { lm, sm, gm }
001e6c  27830000  addli.d r[7:8], r[2:3], 0
001e70  73381ffa  store.d r[2:3], -80(r30)
001e74  5b030000  j 24
001e78  eb508ffb  load.d r[2:3], -72(r30)
001e7c  6b530ffc  load.d r[7:8], -64(r30)
001e80  93201304  setlt.ul r1, r[7:8], r[2:3]
001e84  27130300  addli.d r[7:8], r[7:8], 1
001e88  37950000  beq r1, zero, 324
001e8c  9f700000  addli r1, zero, 7
001e90  6b5a0ffb  load.d r[21:22], -80(r30)
001e94  73306ffc  store.d r[7:8], -64(r30)
001e98  17331302  sll.d r[7:8], r[7:8], r1
001e9c  db040000  j 36
001ea0  274a0a00  addli.d r[21:22], r[21:22], 4
001ea4  0b911511  add.s r2, r11, r17
001ea8  9320da02  setneq.d r1, r[21:22], r[14:15]
001eac  73664100  stores.w r4, 12(r2)
001eb0  73646101  stores.w r22, 8(r2)
001eb4  73628100  stores.w r8, 4(r2)
001eb8  7360c100  stores.w r12, 0(r2)
001ebc  b7fe00fe  beq r1, zero, -68
001ec0  8b206a10  add.ul r[2:3], r[21:22], r[7:8]
001ec4  9bb82000  slli r17, r1, 2
001ec8  8b901211  add.s r1, r5, r17
001ecc  6fcdc000  loads.w r26, 12(r1)
001ed0  6fc10000  loads.w r2, 0(r1)
001ed4  efc44000  loads.w r9, 4(r1)
001ed8  efcb8000  loads.w r23, 8(r1)
001edc  170efd00  and r28, r26, r15
001ee0  9300c905  setlt.u r1, r18, r28
001ee4  3bb00000  bneq r1, zero, 12
001ee8  1f020d00  addli r4, r26, 0
001eec  5b010000  j 8
001ef0  1712bd01  or r4, r26, r27
001ef4  9780fb00  and r1, r23, r15
001ef8  13041904  setlt.u r8, r18, r1
001efc  3b300400  bneq r8, zero, 12
001f00  1f8b0b00  addli r22, r23, 0
001f04  5b010000  j 8
001f08  179bbb01  or r22, r23, r27
001f0c  178cf400  and r24, r9, r15
001f10  13048905  setlt.u r8, r18, r24
001f14  3b300400  bneq r8, zero, 12
001f18  1f840400  addli r8, r9, 0
001f1c  5b010000  j 8
001f20  1794b401  or r8, r9, r27
001f24  970cf100  and r25, r2, r15
001f28  13069905  setlt.u r12, r18, r25
001f2c  3b500600  bneq r12, zero, 20
001f30  1f060100  addli r12, r2, 0
001f34  938c9905  setlt.u r25, r19, r25
001f38  37d00c00  beq r25, zero, 20
001f3c  db040000  j 36
001f40  1716b101  or r12, r2, r27
001f44  938c9905  setlt.u r25, r19, r25
001f48  3be00c00  bneq r25, zero, 24
001f4c  1b460101  srli r12, r2, 16
001f50  1b061600  andi r12, r12, 1
001f54  0b11c110  add.s r2, r2, r12
001f58  0b110111  add.s r2, r2, r16
001f5c  1706a100  and r12, r2, r10
001f60  13818905  setlt.u r2, r19, r24
001f64  bb300100  bneq r2, zero, 44
001f68  1bc10401  srli r2, r9, 16
001f6c  1b011100  andi r2, r2, 1
001f70  0b912410  add.s r2, r9, r2
001f74  0b110111  add.s r2, r2, r16
001f78  1704a100  and r8, r2, r10
001f7c  93801904  setlt.u r1, r19, r1
001f80  37e00000  beq r1, zero, 24
001f84  9380c905  setlt.u r1, r19, r28
001f88  3bec00fe  bneq r1, zero, -232
001f8c  5b050000  j 40
001f90  93801904  setlt.u r1, r19, r1
001f94  bbcf00fe  bneq r1, zero, -16
001f98  9bc00b01  srli r1, r23, 16
001f9c  9b801000  andi r1, r1, 1
001fa0  8b901b10  add.s r1, r23, r1
001fa4  8b900011  add.s r1, r1, r16
001fa8  178ba000  and r22, r1, r10
001fac  9380c905  setlt.u r1, r19, r28
001fb0  bbcb00fe  bneq r1, zero, -272
001fb4  9b400d01  srli r1, r26, 16
001fb8  9b801000  andi r1, r1, 1
001fbc  8b101d10  add.s r1, r26, r1
001fc0  8b900011  add.s r1, r1, r16
001fc4  1782a000  and r4, r1, r10
001fc8  5bdbffff  j -296
001fcc  00200100  mfence { sm }
001fd0  80380002  core_id r17
001fd4  9f100000  addli r1, zero, 1
001fd8  6b538ffa  load.d r[7:8], -88(r30)
001fdc  b7d718fc  beq r17, r1, -1548
001fe0  e3003fff  loadli.w r1,  -104(r30)
001fe4  b7ad00fc  beq r1, zero, -1176
001fe8  9f002000  addli r1, zero, 16
001fec  3d000000  xfence
001ff0  00a00300  mfence { lm, sm, gm }
001ff4  33830028  zext_int2long r[7:8], r1
001ff8  5b030000  j 24
001ffc  eb500fff  load.d r[2:3], -16(r30)
002000  6b538fff  load.d r[7:8], -8(r30)
002004  93201304  setlt.ul r1, r[7:8], r[2:3]
002008  27130300  addli.d r[7:8], r[7:8], 1
00200c  37950000  beq r1, zero, 324
002010  9f700000  addli r1, zero, 7
002014  733c6ffe  store.d r[7:8], -8(r30)
002018  173a1302  sll.d r[21:22], r[7:8], r1
00201c  33030028  zext_int2long r[7:8], zero
002020  db040000  j 36
002024  27430300  addli.d r[7:8], r[7:8], 4
002028  8b901510  add.s r1, r11, r1
00202c  1321d302  setneq.d r2, r[7:8], r[14:15]
002030  73e64000  stores.w r4, 12(r1)
002034  73e46001  stores.w r22, 8(r1)
002038  73e28000  stores.w r8, 4(r1)
00203c  73e0c000  stores.w r12, 0(r1)
002040  b77e01fe  beq r2, zero, -68
002044  8b204311  add.ul r[2:3], r[7:8], r[21:22]
002048  9bb02000  slli r1, r1, 2
00204c  0b921210  add.s r4, r5, r1
002050  6f41c200  loads.w r2, 12(r4)
002054  6f4e0200  loads.w r28, 0(r4)
002058  ef444200  loads.w r9, 4(r4)
00205c  ef4b8200  loads.w r23, 8(r4)
002060  9708f100  and r17, r2, r15
002064  13021905  setlt.u r4, r18, r17
002068  3b300200  bneq r4, zero, 12
00206c  1f020100  addli r4, r2, 0
002070  5b010000  j 8
002074  1712b101  or r4, r2, r27
002078  178dfb00  and r26, r23, r15
00207c  1304a905  setlt.u r8, r18, r26
002080  3b300400  bneq r8, zero, 12
002084  1f8b0b00  addli r22, r23, 0
002088  5b010000  j 8
00208c  179bbb01  or r22, r23, r27
002090  178cf400  and r24, r9, r15
002094  13048905  setlt.u r8, r18, r24
002098  3b300400  bneq r8, zero, 12
00209c  1f840400  addli r8, r9, 0
0020a0  5b010000  j 8
0020a4  1794b401  or r8, r9, r27
0020a8  970cfe00  and r25, r28, r15
0020ac  13069905  setlt.u r12, r18, r25
0020b0  3b500600  bneq r12, zero, 20
0020b4  1f060e00  addli r12, r28, 0
0020b8  938c9905  setlt.u r25, r19, r25
0020bc  37d00c00  beq r25, zero, 20
0020c0  db040000  j 36
0020c4  1716be01  or r12, r28, r27
0020c8  938c9905  setlt.u r25, r19, r25
0020cc  3be00c00  bneq r25, zero, 24
0020d0  1b460e01  srli r12, r28, 16
0020d4  1b061600  andi r12, r12, 1
0020d8  0b16ce10  add.s r12, r28, r12
0020dc  0b160611  add.s r12, r12, r16
0020e0  1706a600  and r12, r12, r10
0020e4  138c8905  setlt.u r24, r19, r24
0020e8  bb300c00  bneq r24, zero, 44
0020ec  1bc40401  srli r8, r9, 16
0020f0  1b041400  andi r8, r8, 1
0020f4  0b948410  add.s r8, r9, r8
0020f8  0b140411  add.s r8, r8, r16
0020fc  1704a400  and r8, r8, r10
002100  9384a905  setlt.u r9, r19, r26
002104  37e00400  beq r9, zero, 24
002108  93841905  setlt.u r9, r19, r17
00210c  3bec04fe  bneq r9, zero, -232
002110  5b050000  j 40
002114  9384a905  setlt.u r9, r19, r26
002118  bbcf04fe  bneq r9, zero, -16
00211c  9bc40b01  srli r9, r23, 16
002120  9b841400  andi r9, r9, 1
002124  8b949b10  add.s r9, r23, r9
002128  8b940411  add.s r9, r9, r16
00212c  178ba400  and r22, r9, r10
002130  93841905  setlt.u r9, r19, r17
002134  bbcb04fe  bneq r9, zero, -272
002138  1b420101  srli r4, r2, 16
00213c  1b021200  andi r4, r4, 1
002140  0b114110  add.s r2, r2, r4
002144  0b110111  add.s r2, r2, r16
002148  1702a100  and r4, r2, r10
00214c  5bdbffff  j -296
002150  00200100  mfence { sm }
002154  80380002  core_id r17
002158  6b538ffa  load.d r[7:8], -88(r30)
00215c  9f300000  addli r1, zero, 3
002160  b7d718fc  beq r17, r1, -1548
002164  e3403fff  loadli.w r1,  -100(r30)
002168  b7ad00fc  beq r1, zero, -1176
00216c  9f004000  addli r1, zero, 32
002170  3d000000  xfence
002174  00a00300  mfence { lm, sm, gm }
002178  33830028  zext_int2long r[7:8], r1
00217c  5b030000  j 24
002180  eb500ffe  load.d r[2:3], -32(r30)
002184  6b538fff  load.d r[7:8], -8(r30)
002188  93201304  setlt.ul r1, r[7:8], r[2:3]
00218c  27130300  addli.d r[7:8], r[7:8], 1
002190  37950000  beq r1, zero, 324
002194  9f700000  addli r1, zero, 7
002198  733c6ffe  store.d r[7:8], -8(r30)
00219c  173c1302  sll.d r[25:26], r[7:8], r1
0021a0  33030028  zext_int2long r[7:8], zero
0021a4  db040000  j 36
0021a8  27430300  addli.d r[7:8], r[7:8], 4
0021ac  8b901510  add.s r1, r11, r1
0021b0  1321d302  setneq.d r2, r[7:8], r[14:15]
0021b4  73e64000  stores.w r4, 12(r1)
0021b8  73e46001  stores.w r22, 8(r1)
0021bc  73e28000  stores.w r8, 4(r1)
0021c0  73e0c000  stores.w r12, 0(r1)
0021c4  b77e01fe  beq r2, zero, -68
0021c8  8b208311  add.ul r[2:3], r[7:8], r[25:26]
0021cc  9bb02000  slli r1, r1, 2
0021d0  0b921210  add.s r4, r5, r1
0021d4  6f41c200  loads.w r2, 12(r4)
0021d8  6f4e0200  loads.w r28, 0(r4)
0021dc  ef444200  loads.w r9, 4(r4)
0021e0  ef4b8200  loads.w r23, 8(r4)
0021e4  9708f100  and r17, r2, r15
0021e8  13021905  setlt.u r4, r18, r17
0021ec  3b300200  bneq r4, zero, 12
0021f0  1f020100  addli r4, r2, 0
0021f4  5b010000  j 8
0021f8  1712b101  or r4, r2, r27
0021fc  178dfb00  and r26, r23, r15
002200  1304a905  setlt.u r8, r18, r26
002204  3b300400  bneq r8, zero, 12
002208  1f8b0b00  addli r22, r23, 0
00220c  5b010000  j 8
002210  179bbb01  or r22, r23, r27
002214  178af400  and r20, r9, r15
002218  13044905  setlt.u r8, r18, r20
00221c  3b300400  bneq r8, zero, 12
002220  1f840400  addli r8, r9, 0
002224  5b010000  j 8
002228  1794b401  or r8, r9, r27
00222c  970afe00  and r21, r28, r15
002230  13065905  setlt.u r12, r18, r21
002234  3b500600  bneq r12, zero, 20
002238  1f060e00  addli r12, r28, 0
00223c  938a5905  setlt.u r21, r19, r21
002240  37d00a00  beq r21, zero, 20
002244  db040000  j 36
002248  1716be01  or r12, r28, r27
00224c  938a5905  setlt.u r21, r19, r21
002250  3be00a00  bneq r21, zero, 24
002254  1b460e01  srli r12, r28, 16
002258  1b061600  andi r12, r12, 1
00225c  0b16ce10  add.s r12, r28, r12
002260  0b160611  add.s r12, r12, r16
002264  1706a600  and r12, r12, r10
002268  138a4905  setlt.u r20, r19, r20
00226c  bb300a00  bneq r20, zero, 44
002270  1bc40401  srli r8, r9, 16
002274  1b041400  andi r8, r8, 1
002278  0b948410  add.s r8, r9, r8
00227c  0b140411  add.s r8, r8, r16
002280  1704a400  and r8, r8, r10
002284  9384a905  setlt.u r9, r19, r26
002288  37e00400  beq r9, zero, 24
00228c  93841905  setlt.u r9, r19, r17
002290  3bec04fe  bneq r9, zero, -232
002294  5b050000  j 40
002298  9384a905  setlt.u r9, r19, r26
00229c  bbcf04fe  bneq r9, zero, -16
0022a0  9bc40b01  srli r9, r23, 16
0022a4  9b841400  andi r9, r9, 1
0022a8  8b949b10  add.s r9, r23, r9
0022ac  8b940411  add.s r9, r9, r16
0022b0  178ba400  and r22, r9, r10
0022b4  93841905  setlt.u r9, r19, r17
0022b8  bbcb04fe  bneq r9, zero, -272
0022bc  1b420101  srli r4, r2, 16
0022c0  1b021200  andi r4, r4, 1
0022c4  0b114110  add.s r2, r2, r4
0022c8  0b110111  add.s r2, r2, r16
0022cc  1702a100  and r4, r2, r10
0022d0  5bdbffff  j -296
0022d4  00200100  mfence { sm }
0022d8  80380002  core_id r17
0022dc  6b538ffa  load.d r[7:8], -88(r30)
0022e0  9f500000  addli r1, zero, 5
0022e4  b7d718fc  beq r17, r1, -1548
0022e8  9f600000  addli r1, zero, 6
0022ec  bbad18fc  bneq r17, r1, -1176
0022f0  9f006000  addli r1, zero, 48
0022f4  3d000000  xfence
0022f8  00a00300  mfence { lm, sm, gm }
0022fc  33830028  zext_int2long r[7:8], r1
002300  5b030000  j 24
002304  eb500ffd  load.d r[2:3], -48(r30)
002308  6b538fff  load.d r[7:8], -8(r30)
00230c  93201304  setlt.ul r1, r[7:8], r[2:3]
002310  27130300  addli.d r[7:8], r[7:8], 1
002314  37950000  beq r1, zero, 324
002318  9f700000  addli r1, zero, 7
00231c  733c6ffe  store.d r[7:8], -8(r30)
002320  330a0028  zext_int2long r[21:22], zero
002324  17331302  sll.d r[7:8], r[7:8], r1
002328  db040000  j 36
00232c  274a0a00  addli.d r[21:22], r[21:22], 4
002330  0b911511  add.s r2, r11, r17
002334  9320da02  setneq.d r1, r[21:22], r[14:15]
002338  73664100  stores.w r4, 12(r2)
00233c  73646101  stores.w r22, 8(r2)
002340  73628100  stores.w r8, 4(r2)
002344  7360c100  stores.w r12, 0(r2)
002348  b7fe00fe  beq r1, zero, -68
00234c  8b206a10  add.ul r[2:3], r[21:22], r[7:8]
002350  9bb82000  slli r17, r1, 2
002354  8b901211  add.s r1, r5, r17
002358  6fccc000  loads.w r24, 12(r1)
00235c  6fce0000  loads.w r28, 0(r1)
002360  efc44000  loads.w r9, 4(r1)
002364  efcb8000  loads.w r23, 8(r1)
002368  970cfc00  and r25, r24, r15
00236c  93009905  setlt.u r1, r18, r25
002370  3bb00000  bneq r1, zero, 12
002374  1f020c00  addli r4, r24, 0
002378  5b010000  j 8
00237c  1712bc01  or r4, r24, r27
002380  178dfb00  and r26, r23, r15
002384  9300a905  setlt.u r1, r18, r26
002388  3bb00000  bneq r1, zero, 12
00238c  1f8b0b00  addli r22, r23, 0
002390  5b010000  j 8
002394  179bbb01  or r22, r23, r27
002398  9780f400  and r1, r9, r15
00239c  13011904  setlt.u r2, r18, r1
0023a0  3b300100  bneq r2, zero, 12
0023a4  1f840400  addli r8, r9, 0
0023a8  5b010000  j 8
0023ac  1794b401  or r8, r9, r27
0023b0  1701fe00  and r2, r28, r15
0023b4  13062904  setlt.u r12, r18, r2
0023b8  3b500600  bneq r12, zero, 20
0023bc  1f060e00  addli r12, r28, 0
0023c0  13812904  setlt.u r2, r19, r2
0023c4  37500100  beq r2, zero, 20
0023c8  db040000  j 36
0023cc  1716be01  or r12, r28, r27
0023d0  13812904  setlt.u r2, r19, r2
0023d4  3b600100  bneq r2, zero, 24
0023d8  1b410e01  srli r2, r28, 16
0023dc  1b011100  andi r2, r2, 1
0023e0  0b112e10  add.s r2, r28, r2
0023e4  0b110111  add.s r2, r2, r16
0023e8  1706a100  and r12, r2, r10
0023ec  93801904  setlt.u r1, r19, r1
0023f0  bbb00000  bneq r1, zero, 44
0023f4  9bc00401  srli r1, r9, 16
0023f8  9b801000  andi r1, r1, 1
0023fc  8b901410  add.s r1, r9, r1
002400  8b900011  add.s r1, r1, r16
002404  1784a000  and r8, r1, r10
002408  9380a905  setlt.u r1, r19, r26
00240c  37e00000  beq r1, zero, 24
002410  93809905  setlt.u r1, r19, r25
002414  3bec00fe  bneq r1, zero, -232
002418  5b050000  j 40
00241c  9380a905  setlt.u r1, r19, r26
002420  bbcf00fe  bneq r1, zero, -16
002424  9bc00b01  srli r1, r23, 16
002428  9b801000  andi r1, r1, 1
00242c  8b901b10  add.s r1, r23, r1
002430  8b900011  add.s r1, r1, r16
002434  178ba000  and r22, r1, r10
002438  93809905  setlt.u r1, r19, r25
00243c  bbcb00fe  bneq r1, zero, -272
002440  9b400c01  srli r1, r24, 16
002444  9b801000  andi r1, r1, 1
002448  8b101c10  add.s r1, r24, r1
00244c  8b900011  add.s r1, r1, r16
002450  1782a000  and r4, r1, r10
002454  5bdbffff  j -296
002458  00200100  mfence { sm }
00245c  80380002  core_id r17
002460  6b538ffa  load.d r[7:8], -88(r30)
002464  e3004fff  loadli.w r1,  -96(r30)
002468  b7e50000  beq r1, zero, 376
00246c  9f007000  addli r1, zero, 56
002470  3d000000  xfence
002474  00a00300  mfence { lm, sm, gm }
002478  33830028  zext_int2long r[7:8], r1
00247c  5b030000  j 24
002480  eb508ffc  load.d r[2:3], -56(r30)
002484  6b538fff  load.d r[7:8], -8(r30)
002488  93201304  setlt.ul r1, r[7:8], r[2:3]
00248c  27130300  addli.d r[7:8], r[7:8], 1
002490  37950000  beq r1, zero, 324
002494  9f700000  addli r1, zero, 7
002498  733c6ffe  store.d r[7:8], -8(r30)
00249c  330a0028  zext_int2long r[21:22], zero
0024a0  17331302  sll.d r[7:8], r[7:8], r1
0024a4  db040000  j 36
0024a8  274a0a00  addli.d r[21:22], r[21:22], 4
0024ac  0b911511  add.s r2, r11, r17
0024b0  9320da02  setneq.d r1, r[21:22], r[14:15]
0024b4  73664100  stores.w r4, 12(r2)
0024b8  73648101  stores.w r24, 8(r2)
0024bc  73628100  stores.w r8, 4(r2)
0024c0  7360c100  stores.w r12, 0(r2)
0024c4  b7fe00fe  beq r1, zero, -68
0024c8  8b206a10  add.ul r[2:3], r[21:22], r[7:8]
0024cc  9bb82000  slli r17, r1, 2
0024d0  8b901211  add.s r1, r5, r17
0024d4  6fcbc000  loads.w r22, 12(r1)
0024d8  6fce0000  loads.w r28, 0(r1)
0024dc  efc44000  loads.w r9, 4(r1)
0024e0  efcc8000  loads.w r25, 8(r1)
0024e4  970bfb00  and r23, r22, r15
0024e8  93007905  setlt.u r1, r18, r23
0024ec  3bb00000  bneq r1, zero, 12
0024f0  1f020b00  addli r4, r22, 0
0024f4  5b010000  j 8
0024f8  1712bb01  or r4, r22, r27
0024fc  178dfc00  and r26, r25, r15
002500  9300a905  setlt.u r1, r18, r26
002504  3bb00000  bneq r1, zero, 12
002508  1f8c0c00  addli r24, r25, 0
00250c  5b010000  j 8
002510  179cbc01  or r24, r25, r27
002514  9780f400  and r1, r9, r15
002518  13011904  setlt.u r2, r18, r1
00251c  3b300100  bneq r2, zero, 12
002520  1f840400  addli r8, r9, 0
002524  5b010000  j 8
002528  1794b401  or r8, r9, r27
00252c  1701fe00  and r2, r28, r15
002530  13062904  setlt.u r12, r18, r2
002534  3b500600  bneq r12, zero, 20
002538  1f060e00  addli r12, r28, 0
00253c  13812904  setlt.u r2, r19, r2
002540  37500100  beq r2, zero, 20
002544  db040000  j 36
002548  1716be01  or r12, r28, r27
00254c  13812904  setlt.u r2, r19, r2
002550  3b600100  bneq r2, zero, 24
002554  1b410e01  srli r2, r28, 16
002558  1b011100  andi r2, r2, 1
00255c  0b112e10  add.s r2, r28, r2
002560  0b110111  add.s r2, r2, r16
002564  1706a100  and r12, r2, r10
002568  93801904  setlt.u r1, r19, r1
00256c  bbb00000  bneq r1, zero, 44
002570  9bc00401  srli r1, r9, 16
002574  9b801000  andi r1, r1, 1
002578  8b901410  add.s r1, r9, r1
00257c  8b900011  add.s r1, r1, r16
002580  1784a000  and r8, r1, r10
002584  9380a905  setlt.u r1, r19, r26
002588  37e00000  beq r1, zero, 24
00258c  93807905  setlt.u r1, r19, r23
002590  3bec00fe  bneq r1, zero, -232
002594  5b050000  j 40
002598  9380a905  setlt.u r1, r19, r26
00259c  bbcf00fe  bneq r1, zero, -16
0025a0  9bc00c01  srli r1, r25, 16
0025a4  9b801000  andi r1, r1, 1
0025a8  8b901c10  add.s r1, r25, r1
0025ac  8b900011  add.s r1, r1, r16
0025b0  178ca000  and r24, r1, r10
0025b4  93807905  setlt.u r1, r19, r23
0025b8  bbcb00fe  bneq r1, zero, -272
0025bc  9b400b01  srli r1, r22, 16
0025c0  9b801000  andi r1, r1, 1
0025c4  8b101b10  add.s r1, r22, r1
0025c8  8b900011  add.s r1, r1, r16
0025cc  1782a000  and r4, r1, r10
0025d0  5bdbffff  j -296
0025d4  00200100  mfence { sm }
0025d8  80380002  core_id r17
0025dc  6b538ffa  load.d r[7:8], -88(r30)
0025e0  9f70f001  addli r1, zero, 255
0025e4  80a20004  csr_set csr5, r1
0025e8  9f300000  addli r1, zero, 3
0025ec  00e00200  sync_core
0025f0  379118ee  beq r17, r1, -9148
0025f4  9f460000  addli r13, zero, 4
0025f8  1f770000  addli r14, zero, 7
0025fc  3bc108ee  bneq r17, zero, -9136
002600  e340effe  loadli.w r1,  -140(r30)
002604  1f142000  addli r8, zero, 17
002608  9f252000  addli r11, zero, 18
00260c  1f068000  addli r12, zero, 64
002610  9bb06000  slli r1, r1, 6
002614  b3900028  sext_int2long r[2:3], r1
002618  0bb26040  min.sl r[5:6], r[2:3], r[7:8]
00261c  6b530ff8  load.d r[7:8], -128(r30)
002620  7d100400  xwait r8, 0
002624  6b548f01  load.d r[9:10], 24(r30)
002628  27028200  addli.d r[5:6], r[5:6], 64
00262c  1733b302  sll.d r[7:8], r[7:8], r11
002630  0b321248  max.sl r[5:6], r[5:6], r[2:3]
002634  0b236410  add.ul r[7:8], r[9:10], r[7:8]
002638  9f540000  addli r9, zero, 5
00263c  1f140000  addli r8, zero, 1
002640  8b301218  sub.sl r[2:3], r[5:6], r[2:3]
002644  33020628  zext_int2long r[5:6], r12
002648  1d800400  lock zero, r9
00264c  6b5a8ff7  load.d r[21:22], -136(r30)
002650  15040400  dma_cfg r8, r8, zero, 0
002654  8bb04040  min.sl r[2:3], r[2:3], r[5:6]
002658  2b020500  lui r4, 80
00265c  9f020001  addli r5, zero, 128
002660  15000402  dma_cfg zero, r8, zero, 1
002664  1b120204  ori r4, r4, 64
002668  0b234311  add.ul r[7:8], r[7:8], r[21:22]
00266c  8b914110  add.s r3, r3, r4
002670  95030004  dma_cfg r7, zero, zero, 2
002674  6b5a8ff8  load.d r[21:22], -120(r30)
002678  1583c106  dma_cfg r6, r3, r12, 3
00267c  1f723a00  addli r4, r20, 31
002680  9b415200  srli r3, r4, 5
002684  1b321a00  slli r4, r20, 1
002688  15863208  dma_cfg r12, r5, r3, 4
00268c  9b01e203  andi r3, r4, 62
002690  1f020004  addli r4, zero, 512
002694  9f020020  addli r5, zero, 4096
002698  9502120a  dma_cfg r5, r4, r1, 5
00269c  15003010  dma_cfg zero, zero, r3, 8
0026a0  35000000  dma_run zero
0026a4  1500800a  dma_cfg zero, zero, r8, 5
0026a8  15000010  dma_cfg zero, zero, zero, 8
0026ac  1d900400  unlock r9
0026b0  7d800500  xsignal r11, 0
0026b4  5b73fbff  j -9320
0026b8  6b538ffa  load.d r[7:8], -88(r30)
0026bc  9f500000  addli r1, zero, 5
0026c0  2b820000  lui r4, 8
0026c4  bbbf18f6  bneq r17, r1, -4116
0026c8  1f411000  addli r2, zero, 12
0026cc  9f000000  addli r1, zero, 0
0026d0  7d100100  xwait r2, 0
0026d4  1f711000  addli r2, zero, 15
0026d8  7d100100  xwait r2, 0
0026dc  1f210000  addli r2, zero, 2
0026e0  1d000100  lock zero, r2
0026e4  2b01803f  lui r2, 260096
0026e8  0d000002  ew_cfg zero, zero, zero, 1
0026ec  0d110100  ewcoeff_cfg r2, r2, zero, 0
0026f0  1f71f000  addli r2, zero, 127
0026f4  0d000104  ew_cfg zero, r2, zero, 2
0026f8  1f110000  addli r2, zero, 1
0026fc  0d010006  ew_cfg r2, zero, zero, 3
002700  0b911210  add.s r2, r5, r1
002704  9f800004  addli r1, r1, 512
002708  2d01b100  dsmadd r2, r2, r11, 0
00270c  bbdf40fe  bneq r1, r4, -12
002710  9f200000  addli r1, zero, 2
002714  1d900000  unlock r1
002718  9f501000  addli r1, zero, 13
00271c  7d800000  xsignal r1, 0
002720  9f002000  addli r1, zero, 16
002724  7d800000  xsignal r1, 0
002728  5bf1fdff  j -4216
00272c  e7490ffe  storeli.w zero, -100(r30)
002730  670a0ffe  storeli.w zero, -96(r30)
002734  9f300000  addli r1, zero, 3
002738  b7fa18f0  beq r17, r1, -7492
00273c  5b59fcff  j -7480
002740  7d000000  xsignal zero, 0
002744  bbe00800  bneq r17, zero, 56
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
