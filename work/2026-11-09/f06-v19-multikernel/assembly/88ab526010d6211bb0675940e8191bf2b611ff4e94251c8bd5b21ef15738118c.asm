; SHA-256 88ab526010d6211bb0675940e8191bf2b611ff4e94251c8bd5b21ef15738118c
; P800 SDNN · XTDK LLVM 19 · 1645 / 1645 words decoded
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
00005c  9f494000  addli r19, zero, 36
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
0000b4  9f8eaefe  addli sp, sp, -176
0000b8  9f100000  addli r1, zero, 1
0000bc  003a0002  core_id r20
0000c0  1f8fee00  addli r30, sp, 112
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600a00  beq r20, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b110000  j 136
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
000118  7d000100  xsignal r2, 0
00011c  7d000100  xsignal r2, 0
000120  7d000100  xsignal r2, 0
000124  9f300000  addli r1, zero, 3
000128  1f111000  addli r2, zero, 9
00012c  7d800000  xsignal r1, 0
000130  7d800000  xsignal r1, 0
000134  7d800000  xsignal r1, 0
000138  7d000100  xsignal r2, 0
00013c  7d000100  xsignal r2, 0
000140  7d000100  xsignal r2, 0
000144  9f700000  addli r1, zero, 7
000148  1f511000  addli r2, zero, 13
00014c  7d800000  xsignal r1, 0
000150  7d800000  xsignal r1, 0
000154  7d800000  xsignal r1, 0
000158  7d000100  xsignal r2, 0
00015c  7d000100  xsignal r2, 0
000160  7d000100  xsignal r2, 0
000164  e3003f00  loadli.w r1,  24(r30)
000168  63413f00  loadli.w r2,  28(r30)
00016c  00d20002  load_param_i r4, 1
000170  e3014f00  loadli.w r3,  32(r30)
000174  8b101120  mul.s r1, r2, r1
000178  1f010200  addli r2, r4, 0
00017c  0b913050  fmac.s r2, r1, r3
000180  8b913020  mul.s r3, r1, r3
000184  1f71f1ff  addli r2, r2, -1
000188  0b114130  div.s r2, r2, r4
00018c  00520002  load_param_i r4, 0
000190  8b104120  mul.s r1, r2, r4
000194  0b114150  fmac.s r2, r2, r4
000198  0b113140  min.s r2, r2, r3
00019c  4b46110a  ble.s r2, r1, 5520
0001a0  33110128  sext_int2long r[3:4], r2
0001a4  33930028  sext_int2long r[7:8], r1
0001a8  9f0a1000  addli r21, zero, 8
0001ac  9f7b0000  addli r23, zero, 7
0001b0  2b0d4000  lui r26, 1024
0001b4  2b02807f  lui r4, 522240
0001b8  ab02ffff  lui r5, 1048560
0001bc  1f040000  addli r8, zero, 0
0001c0  73302ffa  store.d r[3:4], -96(r30)
0001c4  1f71f00f  addli r2, zero, 2047
0001c8  9f010001  addli r3, zero, 128
0001cc  ab00feff  lui r1, 1048544
0001d0  733c1ff8  store.d r[2:3], -104(r30)
0001d4  abf0ff7f  lui r1, 524287
0001d8  2bf17f7f  lui r2, 522239
0001dc  9b97f0ff  ori r15, r1, 4095
0001e0  ab700000  lui r1, 7
0001e4  1b15f1ff  ori r10, r2, 4095
0001e8  1b98f0ff  ori r16, r1, 4095
0001ec  b3000028  zext_int2long r[2:3], zero
0001f0  73381ff8  store.d r[2:3], -112(r30)
0001f4  5b070000  j 56
0001f8  9f301000  addli r1, zero, 11
0001fc  7d800000  xsignal r1, 0
000200  9f401000  addli r1, zero, 12
000204  7d800000  xsignal r1, 0
000208  6b538ffd  load.d r[7:8], -40(r30)
00020c  eb500ffa  load.d r[2:3], -96(r30)
000210  6304cfff  loadli.w r8,  -32(r30)
000214  9f010001  addli r3, zero, 128
000218  9f0a1000  addli r21, zero, 8
00021c  27130300  addli.d r[7:8], r[7:8], 1
000220  1f140400  addli r8, r8, 1
000224  93301304  setlt.sl r1, r[7:8], r[2:3]
000228  3794000a  beq r1, zero, 5380
00022c  e3004f00  loadli.w r1,  32(r30)
000230  63413f00  loadli.w r2,  28(r30)
000234  733c6ffc  store.d r[7:8], -40(r30)
000238  1f190000  addli r18, zero, 1
00023c  8b101330  div.s r1, r6, r1
000240  8b942030  div.s r9, r1, r2
000244  1f014000  addli r2, zero, 32
000248  8b953430  div.s r11, r9, r3
00024c  9bb03500  slli r1, r11, 3
000250  0b111118  sub.s r2, r2, r1
000254  8b185141  min.s r17, r2, r21
000258  0b911439  mod.s r2, r9, r17
00025c  0b111110  add.s r2, r2, r1
000260  9f703000  addli r1, zero, 31
000264  93802004  setlt.u r1, r1, r2
000268  33030128  zext_int2long r[7:8], r2
00026c  e74b2ffe  storeli.w r2, -68(r30)
000270  1f411000  addli r2, zero, 12
000274  73306ffc  store.d r[7:8], -64(r30)
000278  17332302  sll.d r[7:8], r[7:8], r2
00027c  3bc00000  bneq r1, zero, 16
000280  6b560ff9  load.d r[13:14], -112(r30)
000284  9f000001  addli r1, zero, 128
000288  5b020000  j 16
00028c  6b518ff9  load.d r[3:4], -104(r30)
000290  9f000001  addli r1, zero, 128
000294  17062302  and.d r[13:14], r[7:8], r[3:4]
000298  1f370000  addli r14, zero, 3
00029c  1f01800f  addli r2, zero, 1984
0002a0  9f0d0400  addli r27, r8, 0
0002a4  0b1be438  mod.s r22, r8, r14
0002a8  330c0128  zext_int2long r[25:26], r2
0002ac  2b810100  lui r2, 24
0002b0  670ebfff  storeli.w r27, -32(r30)
0002b4  73348fff  store.d r[25:26], -24(r30)
0002b8  1b34eb00  slli r8, r22, 14
0002bc  0b112410  add.s r2, r8, r2
0002c0  3b3b2a01  bneq r20, r18, 716
0002c4  0b33c318  sub.sl r[7:8], r[7:8], r[13:14]
0002c8  27060c00  addli.d r[13:14], r[25:26], 0
0002cc  1f6c0000  addli r24, zero, 6
0002d0  6b590ffc  load.d r[19:20], -64(r30)
0002d4  9f5c1000  addli r25, zero, 13
0002d8  7d100700  xwait r14, 0
0002dc  17538303  sra.d r[7:8], r[7:8], r24
0002e0  17399903  sll.d r[19:20], r[19:20], r25
0002e4  0b36c340  min.sl r[13:14], r[7:8], r[13:14]
0002e8  0b366618  sub.sl r[13:14], r[13:14], r[7:8]
0002ec  6b530f00  load.d r[7:8], 0(r30)
0002f0  9f018600  addli r3, r12, 64
0002f4  0b232311  add.ul r[7:8], r[7:8], r[19:20]
0002f8  1f290000  addli r18, zero, 2
0002fc  bf04b901  blt.s r18, r27, 288
000300  9f590000  addli r19, zero, 5
000304  9f160000  addli r13, zero, 1
000308  1f460000  addli r12, zero, 4
00030c  1d800900  lock zero, r19
000310  15000014  dma_cfg zero, zero, zero, 10
000314  1500d014  dma_cfg zero, zero, r13, 10
000318  15002015  dma_cfg zero, zero, r18, 10
00031c  1500e014  dma_cfg zero, zero, r14, 10
000320  1500c014  dma_cfg zero, zero, r12, 10
000324  1f161000  addli r12, zero, 9
000328  15003015  dma_cfg zero, zero, r19, 10
00032c  15008015  dma_cfg zero, zero, r24, 10
000330  15007015  dma_cfg zero, zero, r23, 10
000334  15005015  dma_cfg zero, zero, r21, 10
000338  1500c014  dma_cfg zero, zero, r12, 10
00033c  1f261000  addli r12, zero, 10
000340  1500c014  dma_cfg zero, zero, r12, 10
000344  1f361000  addli r12, zero, 11
000348  1500c014  dma_cfg zero, zero, r12, 10
00034c  1f461000  addli r12, zero, 12
000350  1500c014  dma_cfg zero, zero, r12, 10
000354  1f661000  addli r12, zero, 14
000358  15009015  dma_cfg zero, zero, r25, 10
00035c  1500c014  dma_cfg zero, zero, r12, 10
000360  1f761000  addli r12, zero, 15
000364  1500c014  dma_cfg zero, zero, r12, 10
000368  1f062000  addli r12, zero, 16
00036c  1500c014  dma_cfg zero, zero, r12, 10
000370  1f162000  addli r12, zero, 17
000374  1500c014  dma_cfg zero, zero, r12, 10
000378  1f262000  addli r12, zero, 18
00037c  1500c014  dma_cfg zero, zero, r12, 10
000380  1f362000  addli r12, zero, 19
000384  1500c014  dma_cfg zero, zero, r12, 10
000388  1f462000  addli r12, zero, 20
00038c  1500c014  dma_cfg zero, zero, r12, 10
000390  1f562000  addli r12, zero, 21
000394  1500c014  dma_cfg zero, zero, r12, 10
000398  1f662000  addli r12, zero, 22
00039c  1500c014  dma_cfg zero, zero, r12, 10
0003a0  1f762000  addli r12, zero, 23
0003a4  1500c014  dma_cfg zero, zero, r12, 10
0003a8  1f063000  addli r12, zero, 24
0003ac  1500c014  dma_cfg zero, zero, r12, 10
0003b0  1f163000  addli r12, zero, 25
0003b4  1500c014  dma_cfg zero, zero, r12, 10
0003b8  1f263000  addli r12, zero, 26
0003bc  1500c014  dma_cfg zero, zero, r12, 10
0003c0  1f363000  addli r12, zero, 27
0003c4  1500c014  dma_cfg zero, zero, r12, 10
0003c8  1f463000  addli r12, zero, 28
0003cc  1500c014  dma_cfg zero, zero, r12, 10
0003d0  1f563000  addli r12, zero, 29
0003d4  1500c014  dma_cfg zero, zero, r12, 10
0003d8  1f663000  addli r12, zero, 30
0003dc  1500c014  dma_cfg zero, zero, r12, 10
0003e0  1f763000  addli r12, zero, 31
0003e4  1500c014  dma_cfg zero, zero, r12, 10
0003e8  1f068000  addli r12, zero, 64
0003ec  95860600  dma_cfg r13, r13, zero, 0
0003f0  95060002  dma_cfg r13, zero, zero, 1
0003f4  15000004  dma_cfg zero, zero, zero, 2
0003f8  1501c006  dma_cfg r2, zero, r12, 3
0003fc  95002009  dma_cfg r1, zero, r18, 4
000400  9f000002  addli r1, zero, 256
000404  9500c00a  dma_cfg r1, zero, r12, 5
000408  15000010  dma_cfg zero, zero, zero, 8
00040c  35000000  dma_run zero
000410  1500d00a  dma_cfg zero, zero, r13, 5
000414  15000010  dma_cfg zero, zero, zero, 8
000418  1d900900  unlock r19
00041c  ab800100  lui r1, 24
000420  9f460000  addli r13, zero, 4
000424  e74c0ffe  storeli.w zero, -52(r30)
000428  1f160000  addli r12, zero, 1
00042c  9f098000  addli r19, zero, 64
000430  9f0d0002  addli r27, zero, 256
000434  9b900004  ori r1, r1, 64
000438  1d800600  lock zero, r13
00043c  15060600  dma_cfg r12, r12, zero, 0
000440  8b101410  add.s r1, r8, r1
000444  15800304  dma_cfg zero, r7, zero, 2
000448  95003307  dma_cfg r1, r6, r19, 3
00044c  9f000001  addli r1, zero, 128
000450  9f530000  addli r7, zero, 5
000454  1f131000  addli r6, zero, 9
000458  95802909  dma_cfg r1, r19, r18, 4
00045c  958d300a  dma_cfg r27, r1, r3, 5
000460  15000010  dma_cfg zero, zero, zero, 8
000464  35000000  dma_run zero
000468  1500c00a  dma_cfg zero, zero, r12, 5
00046c  15000010  dma_cfg zero, zero, zero, 8
000470  1d900600  unlock r13
000474  1d800300  lock zero, r7
000478  15000014  dma_cfg zero, zero, zero, 10
00047c  1500c014  dma_cfg zero, zero, r12, 10
000480  15002015  dma_cfg zero, zero, r18, 10
000484  1500e014  dma_cfg zero, zero, r14, 10
000488  1500d014  dma_cfg zero, zero, r13, 10
00048c  15007014  dma_cfg zero, zero, r7, 10
000490  15008015  dma_cfg zero, zero, r24, 10
000494  15007015  dma_cfg zero, zero, r23, 10
000498  15005015  dma_cfg zero, zero, r21, 10
00049c  15006014  dma_cfg zero, zero, r6, 10
0004a0  1f231000  addli r6, zero, 10
0004a4  15006014  dma_cfg zero, zero, r6, 10
0004a8  1f331000  addli r6, zero, 11
0004ac  15006014  dma_cfg zero, zero, r6, 10
0004b0  1f431000  addli r6, zero, 12
0004b4  15006014  dma_cfg zero, zero, r6, 10
0004b8  1f631000  addli r6, zero, 14
0004bc  15009015  dma_cfg zero, zero, r25, 10
0004c0  15006014  dma_cfg zero, zero, r6, 10
0004c4  1f731000  addli r6, zero, 15
0004c8  15006014  dma_cfg zero, zero, r6, 10
0004cc  1f032000  addli r6, zero, 16
0004d0  15006014  dma_cfg zero, zero, r6, 10
0004d4  1f132000  addli r6, zero, 17
0004d8  15006014  dma_cfg zero, zero, r6, 10
0004dc  1f232000  addli r6, zero, 18
0004e0  15006014  dma_cfg zero, zero, r6, 10
0004e4  1f332000  addli r6, zero, 19
0004e8  15006014  dma_cfg zero, zero, r6, 10
0004ec  1f432000  addli r6, zero, 20
0004f0  15006014  dma_cfg zero, zero, r6, 10
0004f4  1f532000  addli r6, zero, 21
0004f8  15006014  dma_cfg zero, zero, r6, 10
0004fc  1f632000  addli r6, zero, 22
000500  15006014  dma_cfg zero, zero, r6, 10
000504  1f732000  addli r6, zero, 23
000508  15006014  dma_cfg zero, zero, r6, 10
00050c  1f033000  addli r6, zero, 24
000510  15006014  dma_cfg zero, zero, r6, 10
000514  1f133000  addli r6, zero, 25
000518  15006014  dma_cfg zero, zero, r6, 10
00051c  1f233000  addli r6, zero, 26
000520  15006014  dma_cfg zero, zero, r6, 10
000524  1f333000  addli r6, zero, 27
000528  15006014  dma_cfg zero, zero, r6, 10
00052c  1f433000  addli r6, zero, 28
000530  15006014  dma_cfg zero, zero, r6, 10
000534  1f533000  addli r6, zero, 29
000538  15006014  dma_cfg zero, zero, r6, 10
00053c  1f633000  addli r6, zero, 30
000540  15006014  dma_cfg zero, zero, r6, 10
000544  1f733000  addli r6, zero, 31
000548  15006014  dma_cfg zero, zero, r6, 10
00054c  15060600  dma_cfg r12, r12, zero, 0
000550  15060002  dma_cfg r12, zero, zero, 1
000554  15000004  dma_cfg zero, zero, zero, 2
000558  15013007  dma_cfg r2, zero, r19, 3
00055c  95002009  dma_cfg r1, zero, r18, 4
000560  950d300a  dma_cfg r27, zero, r3, 5
000564  9f210000  addli r3, zero, 2
000568  15000010  dma_cfg zero, zero, zero, 8
00056c  35000000  dma_run zero
000570  1500c00a  dma_cfg zero, zero, r12, 5
000574  15000010  dma_cfg zero, zero, zero, 8
000578  1d900300  unlock r7
00057c  7d000900  xsignal r18, 0
000580  6b5c8ffe  load.d r[25:26], -24(r30)
000584  9f330000  addli r7, zero, 3
000588  5b0d0000  j 104
00058c  9f200000  addli r1, zero, 2
000590  3b411a00  bneq r20, r1, 80
000594  9f510000  addli r3, zero, 5
000598  7d900000  xwait r1, 0
00059c  9f330000  addli r7, zero, 3
0005a0  7d900100  xwait r3, 0
0005a4  1d000000  lock zero, zero
0005a8  9f210000  addli r3, zero, 2
0005ac  81000000  ds_cfg r1, zero, 0
0005b0  9f008000  addli r1, zero, 64
0005b4  81000002  ds_cfg r1, zero, 1
0005b8  8100001c  ds_cfg r1, zero, 14
0005bc  8100001a  ds_cfg r1, zero, 13
0005c0  21141102  shuffle_batch r8, r2, r1, 1
0005c4  9f100000  addli r1, zero, 1
0005c8  1d100000  unlock zero
0005cc  7d800300  xsignal r7, 0
0005d0  e74c1ffe  storeli.w r1, -52(r30)
0005d4  9f400000  addli r1, zero, 4
0005d8  7d800000  xsignal r1, 0
0005dc  5b020000  j 16
0005e0  9f210000  addli r3, zero, 2
0005e4  e74c0ffe  storeli.w zero, -52(r30)
0005e8  9f330000  addli r7, zero, 3
0005ec  1f160000  addli r12, zero, 1
0005f0  9bb07500  slli r1, r11, 7
0005f4  2b430200  lui r6, 36
0005f8  9f150000  addli r11, zero, 1
0005fc  8b901418  sub.s r1, r9, r1
000600  9f640000  addli r9, zero, 6
000604  8b901031  div.s r1, r1, r17
000608  9b38fb00  slli r17, r22, 15
00060c  0b936810  add.s r6, r17, r6
000610  e74a1ffe  storeli.w r1, -84(r30)
000614  b3800028  zext_int2long r[2:3], r1
000618  97b07003  sll.d r[2:3], r[2:3], r23
00061c  17b6c002  sll.d r[13:14], r[2:3], r12
000620  7338cffa  store.d r[13:14], -80(r30)
000624  3b7b9a00  bneq r20, r9, 732
000628  eb508f00  load.d r[2:3], 8(r30)
00062c  7d900b00  xwait r23, 0
000630  e301cfff  loadli.w r3,  -32(r30)
000634  1f040001  addli r8, zero, 128
000638  8ba0c010  add.ul r[2:3], r[2:3], r[13:14]
00063c  1f260000  addli r12, zero, 2
000640  bf043600  blt.s r12, r3, 288
000644  9f560000  addli r13, zero, 5
000648  1f470000  addli r14, zero, 4
00064c  9f111000  addli r3, zero, 9
000650  1d800600  lock zero, r13
000654  15000014  dma_cfg zero, zero, zero, 10
000658  1500b014  dma_cfg zero, zero, r11, 10
00065c  1500c014  dma_cfg zero, zero, r12, 10
000660  15007014  dma_cfg zero, zero, r7, 10
000664  1500e014  dma_cfg zero, zero, r14, 10
000668  1500d014  dma_cfg zero, zero, r13, 10
00066c  15009014  dma_cfg zero, zero, r9, 10
000670  15007015  dma_cfg zero, zero, r23, 10
000674  15005015  dma_cfg zero, zero, r21, 10
000678  15003014  dma_cfg zero, zero, r3, 10
00067c  9f211000  addli r3, zero, 10
000680  15003014  dma_cfg zero, zero, r3, 10
000684  9f311000  addli r3, zero, 11
000688  15003014  dma_cfg zero, zero, r3, 10
00068c  9f411000  addli r3, zero, 12
000690  15003014  dma_cfg zero, zero, r3, 10
000694  9f511000  addli r3, zero, 13
000698  15003014  dma_cfg zero, zero, r3, 10
00069c  9f611000  addli r3, zero, 14
0006a0  15003014  dma_cfg zero, zero, r3, 10
0006a4  9f711000  addli r3, zero, 15
0006a8  15003014  dma_cfg zero, zero, r3, 10
0006ac  9f012000  addli r3, zero, 16
0006b0  15003014  dma_cfg zero, zero, r3, 10
0006b4  9f112000  addli r3, zero, 17
0006b8  15003014  dma_cfg zero, zero, r3, 10
0006bc  9f212000  addli r3, zero, 18
0006c0  15003014  dma_cfg zero, zero, r3, 10
0006c4  9f312000  addli r3, zero, 19
0006c8  15003014  dma_cfg zero, zero, r3, 10
0006cc  9f412000  addli r3, zero, 20
0006d0  15003014  dma_cfg zero, zero, r3, 10
0006d4  9f512000  addli r3, zero, 21
0006d8  15003014  dma_cfg zero, zero, r3, 10
0006dc  9f612000  addli r3, zero, 22
0006e0  15003014  dma_cfg zero, zero, r3, 10
0006e4  9f712000  addli r3, zero, 23
0006e8  15003014  dma_cfg zero, zero, r3, 10
0006ec  9f013000  addli r3, zero, 24
0006f0  15003014  dma_cfg zero, zero, r3, 10
0006f4  9f113000  addli r3, zero, 25
0006f8  15003014  dma_cfg zero, zero, r3, 10
0006fc  9f213000  addli r3, zero, 26
000700  15003014  dma_cfg zero, zero, r3, 10
000704  9f313000  addli r3, zero, 27
000708  15003014  dma_cfg zero, zero, r3, 10
00070c  9f413000  addli r3, zero, 28
000710  15003014  dma_cfg zero, zero, r3, 10
000714  9f513000  addli r3, zero, 29
000718  15003014  dma_cfg zero, zero, r3, 10
00071c  9f613000  addli r3, zero, 30
000720  15003014  dma_cfg zero, zero, r3, 10
000724  9f713000  addli r3, zero, 31
000728  15003014  dma_cfg zero, zero, r3, 10
00072c  9f018000  addli r3, zero, 64
000730  95850500  dma_cfg r11, r11, zero, 0
000734  95050002  dma_cfg r11, zero, zero, 1
000738  15000004  dma_cfg zero, zero, zero, 2
00073c  15033006  dma_cfg r6, zero, r3, 3
000740  1504e008  dma_cfg r8, zero, r14, 4
000744  1f070004  addli r14, zero, 512
000748  1507300a  dma_cfg r14, zero, r3, 5
00074c  15000010  dma_cfg zero, zero, zero, 8
000750  35000000  dma_run zero
000754  1500b00a  dma_cfg zero, zero, r11, 5
000758  15000010  dma_cfg zero, zero, zero, 8
00075c  1d900600  unlock r13
000760  ab410200  lui r3, 36
000764  9f460000  addli r13, zero, 4
000768  674e0ffe  storeli.w zero, -28(r30)
00076c  674d0ffe  storeli.w zero, -44(r30)
000770  670d0ffe  storeli.w zero, -48(r30)
000774  1f078000  addli r14, zero, 64
000778  9b910104  ori r3, r3, 64
00077c  1d800600  lock zero, r13
000780  95850500  dma_cfg r11, r11, zero, 0
000784  8b913810  add.s r3, r17, r3
000788  15000104  dma_cfg zero, r2, zero, 2
00078c  9581e006  dma_cfg r3, r1, r14, 3
000790  9f010004  addli r3, zero, 512
000794  9f000020  addli r1, zero, 4096
000798  1f510000  addli r2, zero, 5
00079c  1504d708  dma_cfg r8, r14, r13, 4
0007a0  9581e00a  dma_cfg r3, r1, r14, 5
0007a4  9f101000  addli r1, zero, 9
0007a8  15000010  dma_cfg zero, zero, zero, 8
0007ac  35000000  dma_run zero
0007b0  1500b00a  dma_cfg zero, zero, r11, 5
0007b4  15000010  dma_cfg zero, zero, zero, 8
0007b8  1d900600  unlock r13
0007bc  1d000100  lock zero, r2
0007c0  15000014  dma_cfg zero, zero, zero, 10
0007c4  1500b014  dma_cfg zero, zero, r11, 10
0007c8  1500c014  dma_cfg zero, zero, r12, 10
0007cc  15007014  dma_cfg zero, zero, r7, 10
0007d0  1500d014  dma_cfg zero, zero, r13, 10
0007d4  15002014  dma_cfg zero, zero, r2, 10
0007d8  15009014  dma_cfg zero, zero, r9, 10
0007dc  15007015  dma_cfg zero, zero, r23, 10
0007e0  9f0b1000  addli r23, zero, 8
0007e4  15005015  dma_cfg zero, zero, r21, 10
0007e8  15001014  dma_cfg zero, zero, r1, 10
0007ec  9f201000  addli r1, zero, 10
0007f0  15001014  dma_cfg zero, zero, r1, 10
0007f4  9f301000  addli r1, zero, 11
0007f8  15001014  dma_cfg zero, zero, r1, 10
0007fc  9f401000  addli r1, zero, 12
000800  15001014  dma_cfg zero, zero, r1, 10
000804  9f501000  addli r1, zero, 13
000808  15001014  dma_cfg zero, zero, r1, 10
00080c  9f601000  addli r1, zero, 14
000810  15001014  dma_cfg zero, zero, r1, 10
000814  9f701000  addli r1, zero, 15
000818  15001014  dma_cfg zero, zero, r1, 10
00081c  9f002000  addli r1, zero, 16
000820  15001014  dma_cfg zero, zero, r1, 10
000824  9f102000  addli r1, zero, 17
000828  15001014  dma_cfg zero, zero, r1, 10
00082c  9f202000  addli r1, zero, 18
000830  15001014  dma_cfg zero, zero, r1, 10
000834  9f302000  addli r1, zero, 19
000838  15001014  dma_cfg zero, zero, r1, 10
00083c  9f402000  addli r1, zero, 20
000840  15001014  dma_cfg zero, zero, r1, 10
000844  9f502000  addli r1, zero, 21
000848  15001014  dma_cfg zero, zero, r1, 10
00084c  9f602000  addli r1, zero, 22
000850  15001014  dma_cfg zero, zero, r1, 10
000854  9f702000  addli r1, zero, 23
000858  15001014  dma_cfg zero, zero, r1, 10
00085c  9f003000  addli r1, zero, 24
000860  15001014  dma_cfg zero, zero, r1, 10
000864  9f103000  addli r1, zero, 25
000868  15001014  dma_cfg zero, zero, r1, 10
00086c  9f203000  addli r1, zero, 26
000870  15001014  dma_cfg zero, zero, r1, 10
000874  9f303000  addli r1, zero, 27
000878  15001014  dma_cfg zero, zero, r1, 10
00087c  9f403000  addli r1, zero, 28
000880  15001014  dma_cfg zero, zero, r1, 10
000884  9f503000  addli r1, zero, 29
000888  15001014  dma_cfg zero, zero, r1, 10
00088c  9f603000  addli r1, zero, 30
000890  15001014  dma_cfg zero, zero, r1, 10
000894  9f703000  addli r1, zero, 31
000898  15001014  dma_cfg zero, zero, r1, 10
00089c  95850500  dma_cfg r11, r11, zero, 0
0008a0  95050002  dma_cfg r11, zero, zero, 1
0008a4  15000004  dma_cfg zero, zero, zero, 2
0008a8  1503e006  dma_cfg r6, zero, r14, 3
0008ac  1504d008  dma_cfg r8, zero, r13, 4
0008b0  9501e00a  dma_cfg r3, zero, r14, 5
0008b4  15000010  dma_cfg zero, zero, zero, 8
0008b8  35000000  dma_run zero
0008bc  1500b00a  dma_cfg zero, zero, r11, 5
0008c0  15000010  dma_cfg zero, zero, zero, 8
0008c4  1d100100  unlock r2
0008c8  7d800400  xsignal r9, 0
0008cc  abc00300  lui r1, 60
0008d0  3d000000  xfence
0008d4  00a00300  mfence { lm, sm, gm }
0008d8  8b951810  add.s r11, r17, r1
0008dc  9f70f001  addli r1, zero, 255
0008e0  80a20004  csr_set csr5, r1
0008e4  9f000001  addli r1, zero, 128
0008e8  00e00200  sync_core
0008ec  33840028  zext_int2long r[9:10], r1
0008f0  b7410a00  beq r20, zero, 112
0008f4  9f100000  addli r1, zero, 1
0008f8  b7371a00  beq r20, r1, 492
0008fc  db6b0000  j 860
000900  b7477a06  beq r20, r7, 3568
000904  9f400000  addli r1, zero, 4
000908  b7051a06  beq r20, r1, 3424
00090c  3b387a07  bneq r20, r23, 3596
000910  9f101000  addli r1, zero, 9
000914  674e0ffe  storeli.w zero, -28(r30)
000918  670d0ffe  storeli.w zero, -48(r30)
00091c  7d900400  xwait r9, 0
000920  1f018000  addli r2, zero, 64
000924  7d900000  xwait r1, 0
000928  1d000000  lock zero, zero
00092c  9f000001  addli r1, zero, 128
000930  81010000  ds_cfg r3, zero, 0
000934  81000002  ds_cfg r1, zero, 1
000938  0101001c  ds_cfg r2, zero, 14
00093c  8100001a  ds_cfg r1, zero, 13
000940  9f100000  addli r1, zero, 1
000944  c1082304  shuffle_coa r17, r6, r2, 2
000948  1d100000  unlock zero
00094c  7d800b00  xsignal r23, 0
000950  674d1ffe  storeli.w r1, -44(r30)
000954  9f0b1000  addli r23, zero, 8
000958  7d800a00  xsignal r21, 0
00095c  5beeffff  j -144
000960  b3000028  zext_int2long r[2:3], zero
000964  3d000000  xfence
000968  1f730000  addli r6, zero, 7
00096c  00a00300  mfence { lm, sm, gm }
000970  73381ffe  store.d r[2:3], -16(r30)
000974  27810000  addli.d r[3:4], r[2:3], 0
000978  db030000  j 28
00097c  1f730000  addli r6, zero, 7
000980  6b568fff  load.d r[13:14], -8(r30)
000984  b3000328  zext_int2long r[2:3], r6
000988  93201604  setlt.ul r1, r[13:14], r[2:3]
00098c  27110600  addli.d r[3:4], r[13:14], 1
000990  37850000  beq r1, zero, 320
000994  733c2ffe  store.d r[3:4], -8(r30)
000998  17316102  sll.d r[3:4], r[3:4], r6
00099c  6b530fff  load.d r[7:8], -16(r30)
0009a0  db040000  j 36
0009a4  27430300  addli.d r[7:8], r[7:8], 4
0009a8  0b96d510  add.s r12, r11, r13
0009ac  93208302  setneq.d r1, r[7:8], r[9:10]
0009b0  73665601  stores.w r21, 12(r12)
0009b4  73644601  stores.w r20, 8(r12)
0009b8  7362c601  stores.w r28, 4(r12)
0009bc  73602601  stores.w r18, 0(r12)
0009c0  b7fe00fe  beq r1, zero, -68
0009c4  0b262310  add.ul r[13:14], r[7:8], r[3:4]
0009c8  9b362600  slli r13, r12, 2
0009cc  0b96d810  add.s r12, r17, r13
0009d0  6f4cc600  loads.w r24, 12(r12)
0009d4  6f470600  loads.w r14, 0(r12)
0009d8  ef404600  loads.w r1, 4(r12)
0009dc  ef4d8600  loads.w r27, 8(r12)
0009e0  970cfc00  and r25, r24, r15
0009e4  13069205  setlt.u r12, r4, r25
0009e8  3b300600  bneq r12, zero, 12
0009ec  9f0a0c00  addli r21, r24, 0
0009f0  5b010000  j 8
0009f4  971aac01  or r21, r24, r26
0009f8  1786fd00  and r12, r27, r15
0009fc  1309c204  setlt.u r18, r4, r12
000a00  3b300900  bneq r18, zero, 12
000a04  1f8a0d00  addli r20, r27, 0
000a08  5b010000  j 8
000a0c  179aad01  or r20, r27, r26
000a10  9789f000  and r19, r1, r15
000a14  13093205  setlt.u r18, r4, r19
000a18  3b300900  bneq r18, zero, 12
000a1c  1f8e0000  addli r28, r1, 0
000a20  5b010000  j 8
000a24  179ea001  or r28, r1, r26
000a28  170bf700  and r22, r14, r15
000a2c  13096205  setlt.u r18, r4, r22
000a30  3b500900  bneq r18, zero, 20
000a34  1f090700  addli r18, r14, 0
000a38  130b6505  setlt.u r22, r10, r22
000a3c  37500b00  beq r22, zero, 20
000a40  db040000  j 36
000a44  1719a701  or r18, r14, r26
000a48  130b6505  setlt.u r22, r10, r22
000a4c  3b600b00  bneq r22, zero, 24
000a50  1b490701  srli r18, r14, 16
000a54  1b091900  andi r18, r18, 1
000a58  0b172711  add.s r14, r14, r18
000a5c  0b170711  add.s r14, r14, r16
000a60  17095700  and r18, r14, r5
000a64  13073505  setlt.u r14, r10, r19
000a68  37600700  beq r14, zero, 24
000a6c  9300c504  setlt.u r1, r10, r12
000a70  b7b00000  beq r1, zero, 44
000a74  93009505  setlt.u r1, r10, r25
000a78  bbbc00fe  bneq r1, zero, -212
000a7c  db070000  j 60
000a80  1bc70001  srli r14, r1, 16
000a84  1b071700  andi r14, r14, 1
000a88  8b90e010  add.s r1, r1, r14
000a8c  8b900011  add.s r1, r1, r16
000a90  178e5000  and r28, r1, r5
000a94  9300c504  setlt.u r1, r10, r12
000a98  3bff00fe  bneq r1, zero, -36
000a9c  9bc00d01  srli r1, r27, 16
000aa0  9b801000  andi r1, r1, 1
000aa4  8b901d10  add.s r1, r27, r1
000aa8  8b900011  add.s r1, r1, r16
000aac  178a5000  and r20, r1, r5
000ab0  93009505  setlt.u r1, r10, r25
000ab4  bbcb00fe  bneq r1, zero, -272
000ab8  9b400c01  srli r1, r24, 16
000abc  9b801000  andi r1, r1, 1
000ac0  8b101c10  add.s r1, r24, r1
000ac4  8b900011  add.s r1, r1, r16
000ac8  978a5000  and r21, r1, r5
000acc  5bdbffff  j -296
000ad0  00200100  mfence { sm }
000ad4  003a0002  core_id r20
000ad8  6b5c8ffe  load.d r[25:26], -24(r30)
000adc  9f100000  addli r1, zero, 1
000ae0  bb651a00  bneq r20, r1, 376
000ae4  3d000000  xfence
000ae8  33810b28  zext_int2long r[3:4], r23
000aec  9f7b0000  addli r23, zero, 7
000af0  00a00300  mfence { lm, sm, gm }
000af4  db030000  j 28
000af8  9f701000  addli r1, zero, 15
000afc  6b538fff  load.d r[7:8], -8(r30)
000b00  b3800028  zext_int2long r[2:3], r1
000b04  93201304  setlt.ul r1, r[7:8], r[2:3]
000b08  27110300  addli.d r[3:4], r[7:8], 1
000b0c  37850000  beq r1, zero, 320
000b10  733c2ffe  store.d r[3:4], -8(r30)
000b14  17337103  sll.d r[7:8], r[3:4], r23
000b18  33010028  zext_int2long r[3:4], zero
000b1c  db040000  j 36
000b20  27410100  addli.d r[3:4], r[3:4], 4
000b24  8b96d510  add.s r13, r11, r13
000b28  13268102  setneq.d r12, r[3:4], r[9:10]
000b2c  73e63601  stores.w r19, 12(r13)
000b30  73e48601  stores.w r24, 8(r13)
000b34  73e21600  stores.w r1, 4(r13)
000b38  73e0e600  stores.w r14, 0(r13)
000b3c  b77e06fe  beq r12, zero, -68
000b40  0b266110  add.ul r[13:14], r[3:4], r[7:8]
000b44  9b362600  slli r13, r12, 2
000b48  8b90d810  add.s r1, r17, r13
000b4c  6fc9c000  loads.w r18, 12(r1)
000b50  efcd0000  loads.w r27, 0(r1)
000b54  efcc4000  loads.w r25, 4(r1)
000b58  6fca8000  loads.w r20, 8(r1)
000b5c  970af900  and r21, r18, r15
000b60  93005205  setlt.u r1, r4, r21
000b64  3bb00000  bneq r1, zero, 12
000b68  9f090900  addli r19, r18, 0
000b6c  5b010000  j 8
000b70  9719a901  or r19, r18, r26
000b74  1706fa00  and r12, r20, r15
000b78  9300c204  setlt.u r1, r4, r12
000b7c  3bb00000  bneq r1, zero, 12
000b80  1f0c0a00  addli r24, r20, 0
000b84  5b010000  j 8
000b88  171caa01  or r24, r20, r26
000b8c  178efc00  and r28, r25, r15
000b90  9300c205  setlt.u r1, r4, r28
000b94  3bb00000  bneq r1, zero, 12
000b98  9f800c00  addli r1, r25, 0
000b9c  5b010000  j 8
000ba0  9790ac01  or r1, r25, r26
000ba4  178bfd00  and r22, r27, r15
000ba8  13076205  setlt.u r14, r4, r22
000bac  3b500700  bneq r14, zero, 20
000bb0  1f870d00  addli r14, r27, 0
000bb4  130b6505  setlt.u r22, r10, r22
000bb8  37500b00  beq r22, zero, 20
000bbc  db040000  j 36
000bc0  1797ad01  or r14, r27, r26
000bc4  130b6505  setlt.u r22, r10, r22
000bc8  3b600b00  bneq r22, zero, 24
000bcc  1bc70d01  srli r14, r27, 16
000bd0  1b071700  andi r14, r14, 1
000bd4  0b97ed10  add.s r14, r27, r14
000bd8  0b170711  add.s r14, r14, r16
000bdc  17075700  and r14, r14, r5
000be0  130bc505  setlt.u r22, r10, r28
000be4  37600b00  beq r22, zero, 24
000be8  1306c504  setlt.u r12, r10, r12
000bec  b7300600  beq r12, zero, 44
000bf0  13065505  setlt.u r12, r10, r21
000bf4  bb3c06fe  bneq r12, zero, -212
000bf8  db070000  j 60
000bfc  9bc00c01  srli r1, r25, 16
000c00  9b801000  andi r1, r1, 1
000c04  8b901c10  add.s r1, r25, r1
000c08  8b900011  add.s r1, r1, r16
000c0c  97805000  and r1, r1, r5
000c10  1306c504  setlt.u r12, r10, r12
000c14  3b7f06fe  bneq r12, zero, -36
000c18  1b460a01  srli r12, r20, 16
000c1c  1b061600  andi r12, r12, 1
000c20  0b16ca10  add.s r12, r20, r12
000c24  0b160611  add.s r12, r12, r16
000c28  170c5600  and r24, r12, r5
000c2c  13065505  setlt.u r12, r10, r21
000c30  bb4b06fe  bneq r12, zero, -272
000c34  1b460901  srli r12, r18, 16
000c38  1b061600  andi r12, r12, 1
000c3c  0b16c910  add.s r12, r18, r12
000c40  0b160611  add.s r12, r12, r16
000c44  97095600  and r19, r12, r5
000c48  5bdbffff  j -296
000c4c  00200100  mfence { sm }
000c50  003a0002  core_id r20
000c54  6b5c8ffe  load.d r[25:26], -24(r30)
000c58  e3409fff  loadli.w r1,  -52(r30)
000c5c  9f7b0000  addli r23, zero, 7
000c60  bbc00000  bneq r1, zero, 48
000c64  e340cfff  loadli.w r1,  -28(r30)
000c68  bb960000  bneq r1, zero, 420
000c6c  e300afff  loadli.w r1,  -48(r30)
000c70  3bec0000  bneq r1, zero, 792
000c74  9f500000  addli r1, zero, 5
000c78  37321a02  beq r20, r1, 1164
000c7c  9f600000  addli r1, zero, 6
000c80  37081a02  beq r20, r1, 1536
000c84  e340afff  loadli.w r1,  -44(r30)
000c88  bbdd0002  bneq r1, zero, 1908
000c8c  db1c0100  j 2276
000c90  9f002000  addli r1, zero, 16
000c94  3d000000  xfence
000c98  00a00300  mfence { lm, sm, gm }
000c9c  33810028  zext_int2long r[3:4], r1
000ca0  db030000  j 28
000ca4  9f702000  addli r1, zero, 23
000ca8  6b538fff  load.d r[7:8], -8(r30)
000cac  b3800028  zext_int2long r[2:3], r1
000cb0  93201304  setlt.ul r1, r[7:8], r[2:3]
000cb4  27110300  addli.d r[3:4], r[7:8], 1
000cb8  37850000  beq r1, zero, 320
000cbc  733c2ffe  store.d r[3:4], -8(r30)
000cc0  17337103  sll.d r[7:8], r[3:4], r23
000cc4  33010028  zext_int2long r[3:4], zero
000cc8  db040000  j 36
000ccc  27410100  addli.d r[3:4], r[3:4], 4
000cd0  8b96d510  add.s r13, r11, r13
000cd4  13268102  setneq.d r12, r[3:4], r[9:10]
000cd8  73e63601  stores.w r19, 12(r13)
000cdc  73e48601  stores.w r24, 8(r13)
000ce0  73e21600  stores.w r1, 4(r13)
000ce4  73e0e600  stores.w r14, 0(r13)
000ce8  b77e06fe  beq r12, zero, -68
000cec  0b266110  add.ul r[13:14], r[3:4], r[7:8]
000cf0  9b362600  slli r13, r12, 2
000cf4  8b90d810  add.s r1, r17, r13
000cf8  6fc9c000  loads.w r18, 12(r1)
000cfc  efcd0000  loads.w r27, 0(r1)
000d00  efcc4000  loads.w r25, 4(r1)
000d04  6fca8000  loads.w r20, 8(r1)
000d08  970af900  and r21, r18, r15
000d0c  93005205  setlt.u r1, r4, r21
000d10  3bb00000  bneq r1, zero, 12
000d14  9f090900  addli r19, r18, 0
000d18  5b010000  j 8
000d1c  9719a901  or r19, r18, r26
000d20  1706fa00  and r12, r20, r15
000d24  9300c204  setlt.u r1, r4, r12
000d28  3bb00000  bneq r1, zero, 12
000d2c  1f0c0a00  addli r24, r20, 0
000d30  5b010000  j 8
000d34  171caa01  or r24, r20, r26
000d38  178efc00  and r28, r25, r15
000d3c  9300c205  setlt.u r1, r4, r28
000d40  3bb00000  bneq r1, zero, 12
000d44  9f800c00  addli r1, r25, 0
000d48  5b010000  j 8
000d4c  9790ac01  or r1, r25, r26
000d50  178bfd00  and r22, r27, r15
000d54  13076205  setlt.u r14, r4, r22
000d58  3b500700  bneq r14, zero, 20
000d5c  1f870d00  addli r14, r27, 0
000d60  130b6505  setlt.u r22, r10, r22
000d64  37500b00  beq r22, zero, 20
000d68  db040000  j 36
000d6c  1797ad01  or r14, r27, r26
000d70  130b6505  setlt.u r22, r10, r22
000d74  3b600b00  bneq r22, zero, 24
000d78  1bc70d01  srli r14, r27, 16
000d7c  1b071700  andi r14, r14, 1
000d80  0b97ed10  add.s r14, r27, r14
000d84  0b170711  add.s r14, r14, r16
000d88  17075700  and r14, r14, r5
000d8c  130bc505  setlt.u r22, r10, r28
000d90  37600b00  beq r22, zero, 24
000d94  1306c504  setlt.u r12, r10, r12
000d98  b7300600  beq r12, zero, 44
000d9c  13065505  setlt.u r12, r10, r21
000da0  bb3c06fe  bneq r12, zero, -212
000da4  db070000  j 60
000da8  9bc00c01  srli r1, r25, 16
000dac  9b801000  andi r1, r1, 1
000db0  8b901c10  add.s r1, r25, r1
000db4  8b900011  add.s r1, r1, r16
000db8  97805000  and r1, r1, r5
000dbc  1306c504  setlt.u r12, r10, r12
000dc0  3b7f06fe  bneq r12, zero, -36
000dc4  1b460a01  srli r12, r20, 16
000dc8  1b061600  andi r12, r12, 1
000dcc  0b16ca10  add.s r12, r20, r12
000dd0  0b160611  add.s r12, r12, r16
000dd4  170c5600  and r24, r12, r5
000dd8  13065505  setlt.u r12, r10, r21
000ddc  bb4b06fe  bneq r12, zero, -272
000de0  1b460901  srli r12, r18, 16
000de4  1b061600  andi r12, r12, 1
000de8  0b16c910  add.s r12, r18, r12
000dec  0b160611  add.s r12, r12, r16
000df0  97095600  and r19, r12, r5
000df4  5bdbffff  j -296
000df8  00200100  mfence { sm }
000dfc  003a0002  core_id r20
000e00  6b5c8ffe  load.d r[25:26], -24(r30)
000e04  e340cfff  loadli.w r1,  -28(r30)
000e08  b79900fe  beq r1, zero, -412
000e0c  9f003000  addli r1, zero, 24
000e10  3d000000  xfence
000e14  00a00300  mfence { lm, sm, gm }
000e18  33810028  zext_int2long r[3:4], r1
000e1c  db030000  j 28
000e20  9f703000  addli r1, zero, 31
000e24  6b538fff  load.d r[7:8], -8(r30)
000e28  b3800028  zext_int2long r[2:3], r1
000e2c  93201304  setlt.ul r1, r[7:8], r[2:3]
000e30  27110300  addli.d r[3:4], r[7:8], 1
000e34  37850000  beq r1, zero, 320
000e38  733c2ffe  store.d r[3:4], -8(r30)
000e3c  17337103  sll.d r[7:8], r[3:4], r23
000e40  33010028  zext_int2long r[3:4], zero
000e44  db040000  j 36
000e48  27410100  addli.d r[3:4], r[3:4], 4
000e4c  8b96d510  add.s r13, r11, r13
000e50  13268102  setneq.d r12, r[3:4], r[9:10]
000e54  73e63601  stores.w r19, 12(r13)
000e58  73e48601  stores.w r24, 8(r13)
000e5c  73e21600  stores.w r1, 4(r13)
000e60  73e0e600  stores.w r14, 0(r13)
000e64  b77e06fe  beq r12, zero, -68
000e68  0b266110  add.ul r[13:14], r[3:4], r[7:8]
000e6c  9b362600  slli r13, r12, 2
000e70  8b90d810  add.s r1, r17, r13
000e74  6fc9c000  loads.w r18, 12(r1)
000e78  efcd0000  loads.w r27, 0(r1)
000e7c  efcc4000  loads.w r25, 4(r1)
000e80  6fca8000  loads.w r20, 8(r1)
000e84  970af900  and r21, r18, r15
000e88  93005205  setlt.u r1, r4, r21
000e8c  3bb00000  bneq r1, zero, 12
000e90  9f090900  addli r19, r18, 0
000e94  5b010000  j 8
000e98  9719a901  or r19, r18, r26
000e9c  1706fa00  and r12, r20, r15
000ea0  9300c204  setlt.u r1, r4, r12
000ea4  3bb00000  bneq r1, zero, 12
000ea8  1f0c0a00  addli r24, r20, 0
000eac  5b010000  j 8
000eb0  171caa01  or r24, r20, r26
000eb4  178efc00  and r28, r25, r15
000eb8  9300c205  setlt.u r1, r4, r28
000ebc  3bb00000  bneq r1, zero, 12
000ec0  9f800c00  addli r1, r25, 0
000ec4  5b010000  j 8
000ec8  9790ac01  or r1, r25, r26
000ecc  178bfd00  and r22, r27, r15
000ed0  13076205  setlt.u r14, r4, r22
000ed4  3b500700  bneq r14, zero, 20
000ed8  1f870d00  addli r14, r27, 0
000edc  130b6505  setlt.u r22, r10, r22
000ee0  37500b00  beq r22, zero, 20
000ee4  db040000  j 36
000ee8  1797ad01  or r14, r27, r26
000eec  130b6505  setlt.u r22, r10, r22
000ef0  3b600b00  bneq r22, zero, 24
000ef4  1bc70d01  srli r14, r27, 16
000ef8  1b071700  andi r14, r14, 1
000efc  0b97ed10  add.s r14, r27, r14
000f00  0b170711  add.s r14, r14, r16
000f04  17075700  and r14, r14, r5
000f08  130bc505  setlt.u r22, r10, r28
000f0c  37600b00  beq r22, zero, 24
000f10  1306c504  setlt.u r12, r10, r12
000f14  b7300600  beq r12, zero, 44
000f18  13065505  setlt.u r12, r10, r21
000f1c  bb3c06fe  bneq r12, zero, -212
000f20  db070000  j 60
000f24  9bc00c01  srli r1, r25, 16
000f28  9b801000  andi r1, r1, 1
000f2c  8b901c10  add.s r1, r25, r1
000f30  8b900011  add.s r1, r1, r16
000f34  97805000  and r1, r1, r5
000f38  1306c504  setlt.u r12, r10, r12
000f3c  3b7f06fe  bneq r12, zero, -36
000f40  1b460a01  srli r12, r20, 16
000f44  1b061600  andi r12, r12, 1
000f48  0b16ca10  add.s r12, r20, r12
000f4c  0b160611  add.s r12, r12, r16
000f50  170c5600  and r24, r12, r5
000f54  13065505  setlt.u r12, r10, r21
000f58  bb4b06fe  bneq r12, zero, -272
000f5c  1b460901  srli r12, r18, 16
000f60  1b061600  andi r12, r12, 1
000f64  0b16c910  add.s r12, r18, r12
000f68  0b160611  add.s r12, r12, r16
000f6c  97095600  and r19, r12, r5
000f70  5bdbffff  j -296
000f74  00200100  mfence { sm }
000f78  003a0002  core_id r20
000f7c  6b5c8ffe  load.d r[25:26], -24(r30)
000f80  e300afff  loadli.w r1,  -48(r30)
000f84  b7c300fe  beq r1, zero, -784
000f88  9f004000  addli r1, zero, 32
000f8c  3d000000  xfence
000f90  00a00300  mfence { lm, sm, gm }
000f94  33810028  zext_int2long r[3:4], r1
000f98  db030000  j 28
000f9c  9f704000  addli r1, zero, 39
000fa0  6b538fff  load.d r[7:8], -8(r30)
000fa4  b3800028  zext_int2long r[2:3], r1
000fa8  93201304  setlt.ul r1, r[7:8], r[2:3]
000fac  27110300  addli.d r[3:4], r[7:8], 1
000fb0  37850000  beq r1, zero, 320
000fb4  733c2ffe  store.d r[3:4], -8(r30)
000fb8  17337103  sll.d r[7:8], r[3:4], r23
000fbc  33010028  zext_int2long r[3:4], zero
000fc0  db040000  j 36
000fc4  27410100  addli.d r[3:4], r[3:4], 4
000fc8  8b96d510  add.s r13, r11, r13
000fcc  13268102  setneq.d r12, r[3:4], r[9:10]
000fd0  73e63601  stores.w r19, 12(r13)
000fd4  73e48601  stores.w r24, 8(r13)
000fd8  73e21600  stores.w r1, 4(r13)
000fdc  73e0e600  stores.w r14, 0(r13)
000fe0  b77e06fe  beq r12, zero, -68
000fe4  0b266110  add.ul r[13:14], r[3:4], r[7:8]
000fe8  9b362600  slli r13, r12, 2
000fec  8b90d810  add.s r1, r17, r13
000ff0  6fc9c000  loads.w r18, 12(r1)
000ff4  efcd0000  loads.w r27, 0(r1)
000ff8  efcc4000  loads.w r25, 4(r1)
000ffc  6fca8000  loads.w r20, 8(r1)
001000  970af900  and r21, r18, r15
001004  93005205  setlt.u r1, r4, r21
001008  3bb00000  bneq r1, zero, 12
00100c  9f090900  addli r19, r18, 0
001010  5b010000  j 8
001014  9719a901  or r19, r18, r26
001018  1706fa00  and r12, r20, r15
00101c  9300c204  setlt.u r1, r4, r12
001020  3bb00000  bneq r1, zero, 12
001024  1f0c0a00  addli r24, r20, 0
001028  5b010000  j 8
00102c  171caa01  or r24, r20, r26
001030  178efc00  and r28, r25, r15
001034  9300c205  setlt.u r1, r4, r28
001038  3bb00000  bneq r1, zero, 12
00103c  9f800c00  addli r1, r25, 0
001040  5b010000  j 8
001044  9790ac01  or r1, r25, r26
001048  178bfd00  and r22, r27, r15
00104c  13076205  setlt.u r14, r4, r22
001050  3b500700  bneq r14, zero, 20
001054  1f870d00  addli r14, r27, 0
001058  130b6505  setlt.u r22, r10, r22
00105c  37500b00  beq r22, zero, 20
001060  db040000  j 36
001064  1797ad01  or r14, r27, r26
001068  130b6505  setlt.u r22, r10, r22
00106c  3b600b00  bneq r22, zero, 24
001070  1bc70d01  srli r14, r27, 16
001074  1b071700  andi r14, r14, 1
001078  0b97ed10  add.s r14, r27, r14
00107c  0b170711  add.s r14, r14, r16
001080  17075700  and r14, r14, r5
001084  130bc505  setlt.u r22, r10, r28
001088  37600b00  beq r22, zero, 24
00108c  1306c504  setlt.u r12, r10, r12
001090  b7300600  beq r12, zero, 44
001094  13065505  setlt.u r12, r10, r21
001098  bb3c06fe  bneq r12, zero, -212
00109c  db070000  j 60
0010a0  9bc00c01  srli r1, r25, 16
0010a4  9b801000  andi r1, r1, 1
0010a8  8b901c10  add.s r1, r25, r1
0010ac  8b900011  add.s r1, r1, r16
0010b0  97805000  and r1, r1, r5
0010b4  1306c504  setlt.u r12, r10, r12
0010b8  3b7f06fe  bneq r12, zero, -36
0010bc  1b460a01  srli r12, r20, 16
0010c0  1b061600  andi r12, r12, 1
0010c4  0b16ca10  add.s r12, r20, r12
0010c8  0b160611  add.s r12, r12, r16
0010cc  170c5600  and r24, r12, r5
0010d0  13065505  setlt.u r12, r10, r21
0010d4  bb4b06fe  bneq r12, zero, -272
0010d8  1b460901  srli r12, r18, 16
0010dc  1b061600  andi r12, r12, 1
0010e0  0b16c910  add.s r12, r18, r12
0010e4  0b160611  add.s r12, r12, r16
0010e8  97095600  and r19, r12, r5
0010ec  5bdbffff  j -296
0010f0  00200100  mfence { sm }
0010f4  003a0002  core_id r20
0010f8  6b5c8ffe  load.d r[25:26], -24(r30)
0010fc  9f500000  addli r1, zero, 5
001100  bb7d1afc  bneq r20, r1, -1156
001104  9f005000  addli r1, zero, 40
001108  3d000000  xfence
00110c  00a00300  mfence { lm, sm, gm }
001110  33810028  zext_int2long r[3:4], r1
001114  db030000  j 28
001118  9f705000  addli r1, zero, 47
00111c  6b538fff  load.d r[7:8], -8(r30)
001120  b3800028  zext_int2long r[2:3], r1
001124  93201304  setlt.ul r1, r[7:8], r[2:3]
001128  27110300  addli.d r[3:4], r[7:8], 1
00112c  37850000  beq r1, zero, 320
001130  733c2ffe  store.d r[3:4], -8(r30)
001134  17337103  sll.d r[7:8], r[3:4], r23
001138  33010028  zext_int2long r[3:4], zero
00113c  db040000  j 36
001140  27410100  addli.d r[3:4], r[3:4], 4
001144  8b96d510  add.s r13, r11, r13
001148  13268102  setneq.d r12, r[3:4], r[9:10]
00114c  73e63601  stores.w r19, 12(r13)
001150  73e48601  stores.w r24, 8(r13)
001154  73e21600  stores.w r1, 4(r13)
001158  73e0e600  stores.w r14, 0(r13)
00115c  b77e06fe  beq r12, zero, -68
001160  0b266110  add.ul r[13:14], r[3:4], r[7:8]
001164  9b362600  slli r13, r12, 2
001168  8b90d810  add.s r1, r17, r13
00116c  6fc9c000  loads.w r18, 12(r1)
001170  efcd0000  loads.w r27, 0(r1)
001174  efcc4000  loads.w r25, 4(r1)
001178  6fca8000  loads.w r20, 8(r1)
00117c  970af900  and r21, r18, r15
001180  93005205  setlt.u r1, r4, r21
001184  3bb00000  bneq r1, zero, 12
001188  9f090900  addli r19, r18, 0
00118c  5b010000  j 8
001190  9719a901  or r19, r18, r26
001194  1706fa00  and r12, r20, r15
001198  9300c204  setlt.u r1, r4, r12
00119c  3bb00000  bneq r1, zero, 12
0011a0  1f0c0a00  addli r24, r20, 0
0011a4  5b010000  j 8
0011a8  171caa01  or r24, r20, r26
0011ac  178efc00  and r28, r25, r15
0011b0  9300c205  setlt.u r1, r4, r28
0011b4  3bb00000  bneq r1, zero, 12
0011b8  9f800c00  addli r1, r25, 0
0011bc  5b010000  j 8
0011c0  9790ac01  or r1, r25, r26
0011c4  178bfd00  and r22, r27, r15
0011c8  13076205  setlt.u r14, r4, r22
0011cc  3b500700  bneq r14, zero, 20
0011d0  1f870d00  addli r14, r27, 0
0011d4  130b6505  setlt.u r22, r10, r22
0011d8  37500b00  beq r22, zero, 20
0011dc  db040000  j 36
0011e0  1797ad01  or r14, r27, r26
0011e4  130b6505  setlt.u r22, r10, r22
0011e8  3b600b00  bneq r22, zero, 24
0011ec  1bc70d01  srli r14, r27, 16
0011f0  1b071700  andi r14, r14, 1
0011f4  0b97ed10  add.s r14, r27, r14
0011f8  0b170711  add.s r14, r14, r16
0011fc  17075700  and r14, r14, r5
001200  130bc505  setlt.u r22, r10, r28
001204  37600b00  beq r22, zero, 24
001208  1306c504  setlt.u r12, r10, r12
00120c  b7300600  beq r12, zero, 44
001210  13065505  setlt.u r12, r10, r21
001214  bb3c06fe  bneq r12, zero, -212
001218  db070000  j 60
00121c  9bc00c01  srli r1, r25, 16
001220  9b801000  andi r1, r1, 1
001224  8b901c10  add.s r1, r25, r1
001228  8b900011  add.s r1, r1, r16
00122c  97805000  and r1, r1, r5
001230  1306c504  setlt.u r12, r10, r12
001234  3b7f06fe  bneq r12, zero, -36
001238  1b460a01  srli r12, r20, 16
00123c  1b061600  andi r12, r12, 1
001240  0b16ca10  add.s r12, r20, r12
001244  0b160611  add.s r12, r12, r16
001248  170c5600  and r24, r12, r5
00124c  13065505  setlt.u r12, r10, r21
001250  bb4b06fe  bneq r12, zero, -272
001254  1b460901  srli r12, r18, 16
001258  1b061600  andi r12, r12, 1
00125c  0b16c910  add.s r12, r18, r12
001260  0b160611  add.s r12, r12, r16
001264  97095600  and r19, r12, r5
001268  5bdbffff  j -296
00126c  00200100  mfence { sm }
001270  003a0002  core_id r20
001274  6b5c8ffe  load.d r[25:26], -24(r30)
001278  9f600000  addli r1, zero, 6
00127c  3b281afc  bneq r20, r1, -1528
001280  9f006000  addli r1, zero, 48
001284  3d000000  xfence
001288  00a00300  mfence { lm, sm, gm }
00128c  33810028  zext_int2long r[3:4], r1
001290  db030000  j 28
001294  9f706000  addli r1, zero, 55
001298  6b538fff  load.d r[7:8], -8(r30)
00129c  b3800028  zext_int2long r[2:3], r1
0012a0  93201304  setlt.ul r1, r[7:8], r[2:3]
0012a4  27110300  addli.d r[3:4], r[7:8], 1
0012a8  37850000  beq r1, zero, 320
0012ac  733c2ffe  store.d r[3:4], -8(r30)
0012b0  17337103  sll.d r[7:8], r[3:4], r23
0012b4  33010028  zext_int2long r[3:4], zero
0012b8  db040000  j 36
0012bc  27410100  addli.d r[3:4], r[3:4], 4
0012c0  8b96d510  add.s r13, r11, r13
0012c4  13268102  setneq.d r12, r[3:4], r[9:10]
0012c8  73e63601  stores.w r19, 12(r13)
0012cc  73e48601  stores.w r24, 8(r13)
0012d0  73e21600  stores.w r1, 4(r13)
0012d4  73e0e600  stores.w r14, 0(r13)
0012d8  b77e06fe  beq r12, zero, -68
0012dc  0b266110  add.ul r[13:14], r[3:4], r[7:8]
0012e0  9b362600  slli r13, r12, 2
0012e4  8b90d810  add.s r1, r17, r13
0012e8  6fc9c000  loads.w r18, 12(r1)
0012ec  efcd0000  loads.w r27, 0(r1)
0012f0  efcc4000  loads.w r25, 4(r1)
0012f4  6fca8000  loads.w r20, 8(r1)
0012f8  970af900  and r21, r18, r15
0012fc  93005205  setlt.u r1, r4, r21
001300  3bb00000  bneq r1, zero, 12
001304  9f090900  addli r19, r18, 0
001308  5b010000  j 8
00130c  9719a901  or r19, r18, r26
001310  1706fa00  and r12, r20, r15
001314  9300c204  setlt.u r1, r4, r12
001318  3bb00000  bneq r1, zero, 12
00131c  1f0c0a00  addli r24, r20, 0
001320  5b010000  j 8
001324  171caa01  or r24, r20, r26
001328  178efc00  and r28, r25, r15
00132c  9300c205  setlt.u r1, r4, r28
001330  3bb00000  bneq r1, zero, 12
001334  9f800c00  addli r1, r25, 0
001338  5b010000  j 8
00133c  9790ac01  or r1, r25, r26
001340  178bfd00  and r22, r27, r15
001344  13076205  setlt.u r14, r4, r22
001348  3b500700  bneq r14, zero, 20
00134c  1f870d00  addli r14, r27, 0
001350  130b6505  setlt.u r22, r10, r22
001354  37500b00  beq r22, zero, 20
001358  db040000  j 36
00135c  1797ad01  or r14, r27, r26
001360  130b6505  setlt.u r22, r10, r22
001364  3b600b00  bneq r22, zero, 24
001368  1bc70d01  srli r14, r27, 16
00136c  1b071700  andi r14, r14, 1
001370  0b97ed10  add.s r14, r27, r14
001374  0b170711  add.s r14, r14, r16
001378  17075700  and r14, r14, r5
00137c  130bc505  setlt.u r22, r10, r28
001380  37600b00  beq r22, zero, 24
001384  1306c504  setlt.u r12, r10, r12
001388  b7300600  beq r12, zero, 44
00138c  13065505  setlt.u r12, r10, r21
001390  bb3c06fe  bneq r12, zero, -212
001394  db070000  j 60
001398  9bc00c01  srli r1, r25, 16
00139c  9b801000  andi r1, r1, 1
0013a0  8b901c10  add.s r1, r25, r1
0013a4  8b900011  add.s r1, r1, r16
0013a8  97805000  and r1, r1, r5
0013ac  1306c504  setlt.u r12, r10, r12
0013b0  3b7f06fe  bneq r12, zero, -36
0013b4  1b460a01  srli r12, r20, 16
0013b8  1b061600  andi r12, r12, 1
0013bc  0b16ca10  add.s r12, r20, r12
0013c0  0b160611  add.s r12, r12, r16
0013c4  170c5600  and r24, r12, r5
0013c8  13065505  setlt.u r12, r10, r21
0013cc  bb4b06fe  bneq r12, zero, -272
0013d0  1b460901  srli r12, r18, 16
0013d4  1b061600  andi r12, r12, 1
0013d8  0b16c910  add.s r12, r18, r12
0013dc  0b160611  add.s r12, r12, r16
0013e0  97095600  and r19, r12, r5
0013e4  5bdbffff  j -296
0013e8  00200100  mfence { sm }
0013ec  003a0002  core_id r20
0013f0  6b5c8ffe  load.d r[25:26], -24(r30)
0013f4  e340afff  loadli.w r1,  -44(r30)
0013f8  b7e50000  beq r1, zero, 376
0013fc  9f007000  addli r1, zero, 56
001400  3d000000  xfence
001404  00a00300  mfence { lm, sm, gm }
001408  33810028  zext_int2long r[3:4], r1
00140c  db030000  j 28
001410  9f707000  addli r1, zero, 63
001414  6b538fff  load.d r[7:8], -8(r30)
001418  b3800028  zext_int2long r[2:3], r1
00141c  93201304  setlt.ul r1, r[7:8], r[2:3]
001420  27110300  addli.d r[3:4], r[7:8], 1
001424  37850000  beq r1, zero, 320
001428  733c2ffe  store.d r[3:4], -8(r30)
00142c  17337103  sll.d r[7:8], r[3:4], r23
001430  33010028  zext_int2long r[3:4], zero
001434  db040000  j 36
001438  27410100  addli.d r[3:4], r[3:4], 4
00143c  8b96d510  add.s r13, r11, r13
001440  13268102  setneq.d r12, r[3:4], r[9:10]
001444  73e63601  stores.w r19, 12(r13)
001448  73e48601  stores.w r24, 8(r13)
00144c  73e21600  stores.w r1, 4(r13)
001450  73e0e600  stores.w r14, 0(r13)
001454  b77e06fe  beq r12, zero, -68
001458  0b266110  add.ul r[13:14], r[3:4], r[7:8]
00145c  9b362600  slli r13, r12, 2
001460  8b90d810  add.s r1, r17, r13
001464  6fc9c000  loads.w r18, 12(r1)
001468  efcd0000  loads.w r27, 0(r1)
00146c  efcc4000  loads.w r25, 4(r1)
001470  6fca8000  loads.w r20, 8(r1)
001474  970af900  and r21, r18, r15
001478  93005205  setlt.u r1, r4, r21
00147c  3bb00000  bneq r1, zero, 12
001480  9f090900  addli r19, r18, 0
001484  5b010000  j 8
001488  9719a901  or r19, r18, r26
00148c  1706fa00  and r12, r20, r15
001490  9300c204  setlt.u r1, r4, r12
001494  3bb00000  bneq r1, zero, 12
001498  1f0c0a00  addli r24, r20, 0
00149c  5b010000  j 8
0014a0  171caa01  or r24, r20, r26
0014a4  178efc00  and r28, r25, r15
0014a8  9300c205  setlt.u r1, r4, r28
0014ac  3bb00000  bneq r1, zero, 12
0014b0  9f800c00  addli r1, r25, 0
0014b4  5b010000  j 8
0014b8  9790ac01  or r1, r25, r26
0014bc  178bfd00  and r22, r27, r15
0014c0  13076205  setlt.u r14, r4, r22
0014c4  3b500700  bneq r14, zero, 20
0014c8  1f870d00  addli r14, r27, 0
0014cc  130b6505  setlt.u r22, r10, r22
0014d0  37500b00  beq r22, zero, 20
0014d4  db040000  j 36
0014d8  1797ad01  or r14, r27, r26
0014dc  130b6505  setlt.u r22, r10, r22
0014e0  3b600b00  bneq r22, zero, 24
0014e4  1bc70d01  srli r14, r27, 16
0014e8  1b071700  andi r14, r14, 1
0014ec  0b97ed10  add.s r14, r27, r14
0014f0  0b170711  add.s r14, r14, r16
0014f4  17075700  and r14, r14, r5
0014f8  130bc505  setlt.u r22, r10, r28
0014fc  37600b00  beq r22, zero, 24
001500  1306c504  setlt.u r12, r10, r12
001504  b7300600  beq r12, zero, 44
001508  13065505  setlt.u r12, r10, r21
00150c  bb3c06fe  bneq r12, zero, -212
001510  db070000  j 60
001514  9bc00c01  srli r1, r25, 16
001518  9b801000  andi r1, r1, 1
00151c  8b901c10  add.s r1, r25, r1
001520  8b900011  add.s r1, r1, r16
001524  97805000  and r1, r1, r5
001528  1306c504  setlt.u r12, r10, r12
00152c  3b7f06fe  bneq r12, zero, -36
001530  1b460a01  srli r12, r20, 16
001534  1b061600  andi r12, r12, 1
001538  0b16ca10  add.s r12, r20, r12
00153c  0b160611  add.s r12, r12, r16
001540  170c5600  and r24, r12, r5
001544  13065505  setlt.u r12, r10, r21
001548  bb4b06fe  bneq r12, zero, -272
00154c  1b460901  srli r12, r18, 16
001550  1b061600  andi r12, r12, 1
001554  0b16c910  add.s r12, r18, r12
001558  0b160611  add.s r12, r12, r16
00155c  97095600  and r19, r12, r5
001560  5bdbffff  j -296
001564  00200100  mfence { sm }
001568  003a0002  core_id r20
00156c  6b5c8ffe  load.d r[25:26], -24(r30)
001570  9f70f001  addli r1, zero, 255
001574  80a20004  csr_set csr5, r1
001578  00e00200  sync_core
00157c  e340cfff  loadli.w r1,  -28(r30)
001580  bbe100f6  bneq r1, zero, -5000
001584  3b120af6  bneq r20, zero, -4988
001588  e3405fff  loadli.w r1,  -84(r30)
00158c  1f01000f  addli r2, zero, 1920
001590  9f098000  addli r19, zero, 64
001594  1f190000  addli r18, zero, 1
001598  33010128  zext_int2long r[3:4], r2
00159c  9bb07000  slli r1, r1, 7
0015a0  33830028  zext_int2long r[7:8], r1
0015a4  e3407fff  loadli.w r1,  -68(r30)
0015a8  0b212340  min.ul r[3:4], r[7:8], r[3:4]
0015ac  9bb06000  slli r1, r1, 6
0015b0  b3950028  sext_int2long r[12:13], r1
0015b4  a7000101  addli.d r[2:3], r[3:4], 128
0015b8  9f212000  addli r3, zero, 18
0015bc  8bb68541  min.sl r[14:15], r[12:13], r[25:26]
0015c0  8ba06048  max.ul r[2:3], r[2:3], r[7:8]
0015c4  8bb06018  sub.sl r[2:3], r[2:3], r[7:8]
0015c8  a7868600  addli.d r[14:15], r[14:15], 64
0015cc  0bb3b648  max.sl r[7:8], r[14:15], r[12:13]
0015d0  8ba08040  min.ul r[2:3], r[2:3], r[9:10]
0015d4  6b540ffc  load.d r[9:10], -64(r30)
0015d8  eb560f01  load.d r[14:15], 16(r30)
0015dc  0b33b318  sub.sl r[7:8], r[7:8], r[12:13]
0015e0  b3850928  zext_int2long r[12:13], r19
0015e4  17343402  sll.d r[9:10], r[9:10], r3
0015e8  9f411000  addli r3, zero, 12
0015ec  0b33b340  min.sl r[7:8], r[7:8], r[12:13]
0015f0  eb550ffb  load.d r[12:13], -80(r30)
0015f4  0ba48610  add.ul r[9:10], r[14:15], r[9:10]
0015f8  7d900100  xwait r3, 0
0015fc  abc10300  lui r3, 60
001600  0b24b410  add.ul r[9:10], r[9:10], r[12:13]
001604  1f560000  addli r12, zero, 5
001608  9b910104  ori r3, r3, 64
00160c  9ff53000  addli r11, r1, 31
001610  9bb01000  slli r1, r1, 1
001614  1f010001  addli r2, zero, 128
001618  1d000600  lock zero, r12
00161c  8b913810  add.s r3, r17, r3
001620  9b80e003  andi r1, r1, 62
001624  15090900  dma_cfg r18, r18, zero, 0
001628  15000902  dma_cfg zero, r18, zero, 1
00162c  95040004  dma_cfg r9, zero, zero, 2
001630  15843107  dma_cfg r8, r3, r19, 3
001634  9bc15500  srli r3, r11, 5
001638  1f140000  addli r8, zero, 1
00163c  95093108  dma_cfg r19, r2, r3, 4
001640  1f010004  addli r2, zero, 512
001644  9f010020  addli r3, zero, 4096
001648  9501610a  dma_cfg r3, r2, r6, 5
00164c  15001010  dma_cfg zero, zero, r1, 8
001650  35000000  dma_run zero
001654  1500800a  dma_cfg zero, zero, r8, 5
001658  9f501000  addli r1, zero, 13
00165c  15000010  dma_cfg zero, zero, zero, 8
001660  1d100600  unlock r12
001664  5b74fdff  j -5216
001668  9f430000  addli r7, zero, 4
00166c  9f010000  addli r3, zero, 0
001670  9f100000  addli r1, zero, 1
001674  1f110000  addli r2, zero, 1
001678  9f048000  addli r9, zero, 64
00167c  1f331000  addli r6, zero, 11
001680  7d900300  xwait r7, 0
001684  7d900a00  xwait r21, 0
001688  7d100300  xwait r6, 0
00168c  1bb3e100  slli r6, r3, 14
001690  9bb18100  slli r3, r3, 8
001694  1d800000  lock zero, r1
001698  89849400  mm_cfg r9, r9, r9, 0
00169c  17131301  or r6, r6, r17
0016a0  97911101  or r3, r3, r17
0016a4  89831304  mm_cfg r7, r7, r1, 2
0016a8  a9016410  mm r3, r8, r6, 8
0016ac  1b031100  andi r6, r2, 1
0016b0  9f110000  addli r3, zero, 1
0016b4  1f010000  addli r2, zero, 0
0016b8  1d900000  unlock r1
0016bc  3b4f03fe  bneq r6, zero, -48
0016c0  9f500000  addli r1, zero, 5
0016c4  674e0ffe  storeli.w zero, -28(r30)
0016c8  674d0ffe  storeli.w zero, -44(r30)
0016cc  9f0b1000  addli r23, zero, 8
0016d0  7d800000  xsignal r1, 0
0016d4  9f101000  addli r1, zero, 9
0016d8  7d800000  xsignal r1, 0
0016dc  9f100000  addli r1, zero, 1
0016e0  670d1ffe  storeli.w r1, -48(r30)
0016e4  9f201000  addli r1, zero, 10
0016e8  7d800000  xsignal r1, 0
0016ec  5b3cfeff  j -3616
0016f0  9f201000  addli r1, zero, 10
0016f4  674d0ffe  storeli.w zero, -44(r30)
0016f8  670d0ffe  storeli.w zero, -48(r30)
0016fc  9f0b1000  addli r23, zero, 8
001700  7d900000  xwait r1, 0
001704  9f100000  addli r1, zero, 1
001708  674e1ffe  storeli.w r1, -28(r30)
00170c  9f501000  addli r1, zero, 13
001710  7d900000  xwait r1, 0
001714  5b37feff  j -3656
001718  9f0b1000  addli r23, zero, 8
00171c  674e0ffe  storeli.w zero, -28(r30)
001720  674d0ffe  storeli.w zero, -44(r30)
001724  670d0ffe  storeli.w zero, -48(r30)
001728  db34feff  j -3676
00172c  7d000000  xsignal zero, 0
001730  bb600a00  bneq r20, zero, 56
001734  9f200000  addli r1, zero, 2
001738  7d100000  xwait zero, 0
00173c  7d100000  xwait zero, 0
001740  7d100000  xwait zero, 0
001744  7d100000  xwait zero, 0
001748  7d100000  xwait zero, 0
00174c  7d100000  xwait zero, 0
001750  7d100000  xwait zero, 0
001754  7d100000  xwait zero, 0
001758  1d800000  lock zero, r1
00175c  0d000020  ew_cfg zero, zero, zero, 16
001760  1d900000  unlock r1
001764  7d400000  xsignal_mode_cfg zero
001768  9f8eee00  addli sp, sp, 112
00176c  00a00300  mfence { lm, sm, gm }
001770  00100000  exit
001774  00100000  exit
001778  00100000  exit
00177c  00100000  exit
001780  00100000  exit
001784  00100000  exit
001788  00100000  exit
00178c  00100000  exit
001790  00100000  exit
001794  00100000  exit
001798  00100000  exit
00179c  00100000  exit
0017a0  00100000  exit
0017a4  00100000  exit
0017a8  00100000  exit
0017ac  00100000  exit
0017b0  00100000  exit
0017b4  00100000  exit
0017b8  00100000  exit
0017bc  00100000  exit
0017c0  00100000  exit
0017c4  00100000  exit
0017c8  00100000  exit
0017cc  00100000  exit
0017d0  00100000  exit
0017d4  00100000  exit
0017d8  00100000  exit
0017dc  00100000  exit
0017e0  00100000  exit
0017e4  00100000  exit
0017e8  00100000  exit
0017ec  00100000  exit
0017f0  00100000  exit
0017f4  00100000  exit
0017f8  00100000  exit
0017fc  00100000  exit
001800  00100000  exit
001804  00100000  exit
001808  00100000  exit
00180c  00100000  exit
001810  00100000  exit
001814  00100000  exit
001818  00100000  exit
00181c  00100000  exit
001820  00100000  exit
001824  00100000  exit
001828  00100000  exit
00182c  00100000  exit
001830  00100000  exit
001834  00100000  exit
001838  00100000  exit
00183c  00100000  exit
001840  00100000  exit
001844  00100000  exit
001848  00100000  exit
00184c  00100000  exit
001850  00100000  exit
001854  00100000  exit
001858  00100000  exit
00185c  00100000  exit
001860  00100000  exit
001864  00100000  exit
001868  00100000  exit
00186c  00100000  exit
001870  00100000  exit
001874  00100000  exit
001878  00100000  exit
00187c  00100000  exit
001880  00100000  exit
001884  00100000  exit
001888  00100000  exit
00188c  00100000  exit
001890  00100000  exit
001894  00100000  exit
001898  00100000  exit
00189c  00100000  exit
0018a0  00100000  exit
0018a4  00100000  exit
0018a8  00100000  exit
0018ac  00100000  exit
0018b0  00100000  exit
0018b4  00100000  exit
0018b8  00100000  exit
0018bc  00100000  exit
0018c0  00100000  exit
0018c4  00100000  exit
0018c8  00100000  exit
0018cc  00100000  exit
0018d0  00100000  exit
0018d4  00100000  exit
0018d8  00100000  exit
0018dc  00100000  exit
0018e0  00100000  exit
0018e4  00100000  exit
0018e8  00100000  exit
0018ec  00100000  exit
0018f0  00100000  exit
0018f4  00100000  exit
0018f8  00100000  exit
0018fc  00100000  exit
001900  00100000  exit
001904  00100000  exit
001908  00100000  exit
00190c  00100000  exit
001910  00100000  exit
001914  00100000  exit
001918  00100000  exit
00191c  00100000  exit
001920  00100000  exit
001924  00100000  exit
001928  00100000  exit
00192c  00100000  exit
001930  00100000  exit
001934  00100000  exit
001938  00100000  exit
00193c  00100000  exit
001940  00100000  exit
001944  00100000  exit
001948  00100000  exit
00194c  00100000  exit
001950  00100000  exit
001954  00100000  exit
001958  00100000  exit
00195c  00100000  exit
001960  00100000  exit
001964  00100000  exit
001968  00100000  exit
00196c  00100000  exit
001970  00100000  exit
001974  00100000  exit
001978  00100000  exit
00197c  00100000  exit
001980  00100000  exit
001984  00100000  exit
001988  00100000  exit
00198c  00100000  exit
001990  00100000  exit
001994  00100000  exit
001998  00100000  exit
00199c  00100000  exit
0019a0  00100000  exit
0019a4  00100000  exit
0019a8  00100000  exit
0019ac  00100000  exit
0019b0  00100000  exit
