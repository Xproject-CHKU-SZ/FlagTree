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
0000b4  9f8e7eff  addli sp, sp, -72
0000b8  1f8f1e00  addli r30, sp, 8
0000bc  9f100000  addli r1, zero, 1
0000c0  803a0002  core_id r21
0000c4  e3454f00  loadli.w r11,  36(r30)
0000c8  7dc00000  xsignal_mode_cfg r1
0000cc  37e00a00  beq r21, zero, 24
0000d0  abf0ffff  lui r1, 1048575
0000d4  9b90f0ff  ori r1, r1, 4095
0000d8  80a10004  csr_set csr3, r1
0000dc  00d00100  sync_group
0000e0  5b0b0000  j 88
0000e4  1f220000  addli r4, zero, 2
0000e8  fdd00000  uni_sram_cfg r1, r1
0000ec  abf2ffff  lui r5, 1048575
0000f0  1d000200  lock zero, r4
0000f4  8d000020  ew_cfg r1, zero, zero, 16
0000f8  9b90f2ff  ori r1, r5, 4095
0000fc  1d100200  unlock r4
000100  1f320000  addli r4, zero, 3
000104  80a10004  csr_set csr3, r1
000108  9f500000  addli r1, zero, 5
00010c  00d00100  sync_group
000110  7d800000  xsignal r1, 0
000114  7d000200  xsignal r4, 0
000118  9f101000  addli r1, zero, 9
00011c  1f720000  addli r4, zero, 7
000120  7d800000  xsignal r1, 0
000124  7d000200  xsignal r4, 0
000128  9f301000  addli r1, zero, 11
00012c  1f621000  addli r4, zero, 14
000130  7d800000  xsignal r1, 0
000134  7d000200  xsignal r4, 0
000138  e3004f00  loadli.w r1,  32(r30)
00013c  63424f00  loadli.w r4,  36(r30)
000140  00d30002  load_param_i r6, 1
000144  e3025f00  loadli.w r5,  40(r30)
000148  8b101220  mul.s r1, r4, r1
00014c  1f020300  addli r4, r6, 0
000150  0b925050  fmac.s r4, r1, r5
000154  8b925020  mul.s r5, r1, r5
000158  1f72f2ff  addli r4, r4, -1
00015c  0b126230  div.s r4, r4, r6
000160  00530002  load_param_i r6, 0
000164  8b106220  mul.s r1, r4, r6
000168  0b126250  fmac.s r4, r4, r6
00016c  0b125240  min.s r4, r4, r5
000170  4b151204  ble.s r4, r1, 2372
000174  33120228  sext_int2long r[5:6], r4
000178  33930028  sext_int2long r[7:8], r1
00017c  1f141000  addli r8, zero, 9
000180  9f440000  addli r9, zero, 4
000184  1f150000  addli r10, zero, 1
000188  9f560000  addli r13, zero, 5
00018c  1f270000  addli r14, zero, 2
000190  1f680000  addli r16, zero, 6
000194  9f471000  addli r15, zero, 12
000198  9f0b2000  addli r23, zero, 16
00019c  1f0b8000  addli r22, zero, 64
0001a0  1f0c0001  addli r24, zero, 128
0001a4  ab400200  lui r1, 36
0001a8  1f0d0010  addli r26, zero, 2048
0001ac  ab4d0000  lui r27, 4
0001b0  2b5e0200  lui r28, 37
0001b4  ab0c0200  lui r25, 32
0001b8  733c4ffe  store.d r[5:6], -8(r30)
0001bc  db500000  j 644
0001c0  9f770000  addli r15, zero, 7
0001c4  9f390000  addli r19, zero, 3
0001c8  1f011000  addli r2, zero, 8
0001cc  eb518f00  load.d r[4:5], 8(r30)
0001d0  97b8a802  sll.d r[18:19], r[18:19], r10
0001d4  9f451000  addli r11, zero, 12
0001d8  1f5a1000  addli r20, zero, 13
0001dc  1f1d2000  addli r26, zero, 17
0001e0  1f4c2000  addli r24, zero, 20
0001e4  1b960d04  ori r12, r27, 64
0001e8  9f220000  addli r5, zero, 2
0001ec  7d900700  xwait r15, 0
0001f0  1d800600  lock zero, r13
0001f4  15000014  dma_cfg zero, zero, zero, 10
0001f8  8ba81111  add.ul r[18:19], r[4:5], r[18:19]
0001fc  1f621000  addli r4, zero, 14
000200  9f010010  addli r3, zero, 2048
000204  1500a014  dma_cfg zero, zero, r10, 10
000208  1500e014  dma_cfg zero, zero, r14, 10
00020c  1f272000  addli r14, zero, 18
000210  15003015  dma_cfg zero, zero, r19, 10
000214  15009014  dma_cfg zero, zero, r9, 10
000218  1500d014  dma_cfg zero, zero, r13, 10
00021c  15000015  dma_cfg zero, zero, r16, 10
000220  1f281000  addli r16, zero, 10
000224  1500f014  dma_cfg zero, zero, r15, 10
000228  15002014  dma_cfg zero, zero, r2, 10
00022c  1f311000  addli r2, zero, 11
000230  15008014  dma_cfg zero, zero, r8, 10
000234  1f741000  addli r8, zero, 15
000238  15000015  dma_cfg zero, zero, r16, 10
00023c  15002014  dma_cfg zero, zero, r2, 10
000240  1f312000  addli r2, zero, 19
000244  1500b014  dma_cfg zero, zero, r11, 10
000248  15004015  dma_cfg zero, zero, r20, 10
00024c  15004014  dma_cfg zero, zero, r4, 10
000250  15008014  dma_cfg zero, zero, r8, 10
000254  15007015  dma_cfg zero, zero, r23, 10
000258  1500a015  dma_cfg zero, zero, r26, 10
00025c  1500e014  dma_cfg zero, zero, r14, 10
000260  15002014  dma_cfg zero, zero, r2, 10
000264  1f512000  addli r2, zero, 21
000268  15008015  dma_cfg zero, zero, r24, 10
00026c  15002014  dma_cfg zero, zero, r2, 10
000270  1f612000  addli r2, zero, 22
000274  15002014  dma_cfg zero, zero, r2, 10
000278  1f712000  addli r2, zero, 23
00027c  15002014  dma_cfg zero, zero, r2, 10
000280  1f013000  addli r2, zero, 24
000284  15002014  dma_cfg zero, zero, r2, 10
000288  1f113000  addli r2, zero, 25
00028c  15002014  dma_cfg zero, zero, r2, 10
000290  1f213000  addli r2, zero, 26
000294  15002014  dma_cfg zero, zero, r2, 10
000298  1f313000  addli r2, zero, 27
00029c  15002014  dma_cfg zero, zero, r2, 10
0002a0  1f413000  addli r2, zero, 28
0002a4  15002014  dma_cfg zero, zero, r2, 10
0002a8  1f513000  addli r2, zero, 29
0002ac  15002014  dma_cfg zero, zero, r2, 10
0002b0  1f613000  addli r2, zero, 30
0002b4  15002014  dma_cfg zero, zero, r2, 10
0002b8  1f713000  addli r2, zero, 31
0002bc  15002014  dma_cfg zero, zero, r2, 10
0002c0  1f010001  addli r2, zero, 128
0002c4  15050500  dma_cfg r10, r10, zero, 0
0002c8  15050002  dma_cfg r10, zero, zero, 1
0002cc  15000004  dma_cfg zero, zero, zero, 2
0002d0  950d6007  dma_cfg r27, zero, r22, 3
0002d4  15017009  dma_cfg r2, zero, r23, 4
0002d8  9501600b  dma_cfg r3, zero, r22, 5
0002dc  15000010  dma_cfg zero, zero, zero, 8
0002e0  35000000  dma_run zero
0002e4  1500a00a  dma_cfg zero, zero, r10, 5
0002e8  15000010  dma_cfg zero, zero, zero, 8
0002ec  1d900600  unlock r13
0002f0  1d800400  lock zero, r9
0002f4  15050500  dma_cfg r10, r10, zero, 0
0002f8  15000904  dma_cfg zero, r18, zero, 2
0002fc  15866807  dma_cfg r12, r17, r22, 3
000300  1f060020  addli r12, zero, 4096
000304  15017b09  dma_cfg r2, r22, r23, 4
000308  9501660b  dma_cfg r3, r12, r22, 5
00030c  1f362000  addli r12, zero, 19
000310  15000010  dma_cfg zero, zero, zero, 8
000314  35000000  dma_run zero
000318  1500a00a  dma_cfg zero, zero, r10, 5
00031c  15000010  dma_cfg zero, zero, zero, 8
000320  1d900400  unlock r9
000324  1d800600  lock zero, r13
000328  15000014  dma_cfg zero, zero, zero, 10
00032c  1500a014  dma_cfg zero, zero, r10, 10
000330  15005014  dma_cfg zero, zero, r5, 10
000334  9f620000  addli r5, zero, 6
000338  15003015  dma_cfg zero, zero, r19, 10
00033c  15009014  dma_cfg zero, zero, r9, 10
000340  1500d014  dma_cfg zero, zero, r13, 10
000344  15005014  dma_cfg zero, zero, r5, 10
000348  9f021000  addli r5, zero, 8
00034c  1500f014  dma_cfg zero, zero, r15, 10
000350  9f471000  addli r15, zero, 12
000354  15005014  dma_cfg zero, zero, r5, 10
000358  9f121000  addli r5, zero, 9
00035c  15005014  dma_cfg zero, zero, r5, 10
000360  9f321000  addli r5, zero, 11
000364  15000015  dma_cfg zero, zero, r16, 10
000368  1f680000  addli r16, zero, 6
00036c  15005014  dma_cfg zero, zero, r5, 10
000370  1500b014  dma_cfg zero, zero, r11, 10
000374  e3454f00  loadli.w r11,  36(r30)
000378  15004015  dma_cfg zero, zero, r20, 10
00037c  15004014  dma_cfg zero, zero, r4, 10
000380  6b528fff  load.d r[5:6], -8(r30)
000384  15008014  dma_cfg zero, zero, r8, 10
000388  1f141000  addli r8, zero, 9
00038c  15007015  dma_cfg zero, zero, r23, 10
000390  1500a015  dma_cfg zero, zero, r26, 10
000394  1f0d0010  addli r26, zero, 2048
000398  1500e014  dma_cfg zero, zero, r14, 10
00039c  1f270000  addli r14, zero, 2
0003a0  1500c014  dma_cfg zero, zero, r12, 10
0003a4  1f562000  addli r12, zero, 21
0003a8  15008015  dma_cfg zero, zero, r24, 10
0003ac  1f0c0001  addli r24, zero, 128
0003b0  1500c014  dma_cfg zero, zero, r12, 10
0003b4  1f662000  addli r12, zero, 22
0003b8  1500c014  dma_cfg zero, zero, r12, 10
0003bc  1f762000  addli r12, zero, 23
0003c0  1500c014  dma_cfg zero, zero, r12, 10
0003c4  1f063000  addli r12, zero, 24
0003c8  1500c014  dma_cfg zero, zero, r12, 10
0003cc  1f163000  addli r12, zero, 25
0003d0  1500c014  dma_cfg zero, zero, r12, 10
0003d4  1f263000  addli r12, zero, 26
0003d8  1500c014  dma_cfg zero, zero, r12, 10
0003dc  1f363000  addli r12, zero, 27
0003e0  1500c014  dma_cfg zero, zero, r12, 10
0003e4  1f463000  addli r12, zero, 28
0003e8  1500c014  dma_cfg zero, zero, r12, 10
0003ec  1f563000  addli r12, zero, 29
0003f0  1500c014  dma_cfg zero, zero, r12, 10
0003f4  1f663000  addli r12, zero, 30
0003f8  1500c014  dma_cfg zero, zero, r12, 10
0003fc  1f763000  addli r12, zero, 31
000400  1500c014  dma_cfg zero, zero, r12, 10
000404  15050500  dma_cfg r10, r10, zero, 0
000408  15050002  dma_cfg r10, zero, zero, 1
00040c  15000004  dma_cfg zero, zero, zero, 2
000410  950d6007  dma_cfg r27, zero, r22, 3
000414  15017009  dma_cfg r2, zero, r23, 4
000418  9501600b  dma_cfg r3, zero, r22, 5
00041c  15000010  dma_cfg zero, zero, zero, 8
000420  35000000  dma_run zero
000424  1500a00a  dma_cfg zero, zero, r10, 5
000428  15000010  dma_cfg zero, zero, zero, 8
00042c  1d900600  unlock r13
000430  7d000800  xsignal r16, 0
000434  27130300  addli.d r[7:8], r[7:8], 1
000438  13364304  setlt.sl r12, r[7:8], r[5:6]
00043c  b7690602  beq r12, zero, 1656
000440  63065f00  loadli.w r12,  40(r30)
000444  0b16c330  div.s r12, r6, r12
000448  8b18b638  mod.s r17, r12, r11
00044c  0b16b630  div.s r12, r12, r11
000450  b3980828  sext_int2long r[18:19], r17
000454  b3190628  sext_int2long r[20:21], r12
000458  1b960080  ori r12, r1, 2048
00045c  97b88802  sll.d r[18:19], r[18:19], r8
000460  3fe15401  blt.s r9, r21, 88
000464  b782aa00  beq r21, r10, 160
000468  37e8ea02  beq r21, r14, 1560
00046c  bba69a02  bneq r21, r9, 1448
000470  9f080000  addli r17, zero, 0
000474  1f011000  addli r2, zero, 8
000478  1f691000  addli r18, zero, 14
00047c  7d900400  xwait r9, 0
000480  7d100100  xwait r2, 0
000484  7d100900  xwait r18, 0
000488  1d000500  lock zero, r10
00048c  090b6b01  mm_cfg r22, r22, r22, 0
000490  8984ab04  mm_cfg r9, r23, r10, 2
000494  29061011  mm r12, zero, r17, 8
000498  1f060602  addli r12, r12, 256
00049c  8b98b811  add.s r17, r17, r27
0004a0  1d100500  unlock r10
0004a4  bb1fc6ff  bneq r12, r28, -28
0004a8  7d800600  xsignal r13, 0
0004ac  7d000400  xsignal r8, 0
0004b0  7d800700  xsignal r15, 0
0004b4  5bf0ffff  j -128
0004b8  3784da02  beq r21, r13, 1280
0004bc  37940aff  beq r21, r16, -764
0004c0  1f760000  addli r12, zero, 7
0004c4  3bc5ca02  bneq r21, r12, 1360
0004c8  7d100800  xwait r16, 0
0004cc  7d100400  xwait r8, 0
0004d0  1d000000  lock zero, zero
0004d4  1f010004  addli r2, zero, 512
0004d8  1f760000  addli r12, zero, 7
0004dc  01070000  ds_cfg r14, zero, 0
0004e0  01010002  ds_cfg r2, zero, 1
0004e4  010b001c  ds_cfg r22, zero, 14
0004e8  0101001a  ds_cfg r2, zero, 13
0004ec  1f011000  addli r2, zero, 8
0004f0  41806d05  shuffle_coa zero, r27, r22, 2
0004f4  1d100000  unlock zero
0004f8  7d000600  xsignal r12, 0
0004fc  7d000100  xsignal r2, 0
000500  dbe6ffff  j -204
000504  9f320000  addli r5, zero, 3
000508  1f710000  addli r2, zero, 7
00050c  1f061000  addli r12, zero, 8
000510  1f3c1000  addli r24, zero, 11
000514  9f551000  addli r11, zero, 13
000518  1f0d0001  addli r26, zero, 128
00051c  eb510f00  load.d r[4:5], 0(r30)
000520  9f770000  addli r15, zero, 7
000524  97b8a802  sll.d r[18:19], r[18:19], r10
000528  7d900200  xwait r5, 0
00052c  1d800600  lock zero, r13
000530  97b9b902  sll.d r[20:21], r[20:21], r11
000534  15000014  dma_cfg zero, zero, zero, 10
000538  1500a014  dma_cfg zero, zero, r10, 10
00053c  8ba93111  add.ul r[20:21], r[4:5], r[20:21]
000540  9f411000  addli r3, zero, 12
000544  1f621000  addli r4, zero, 14
000548  1500e014  dma_cfg zero, zero, r14, 10
00054c  15005014  dma_cfg zero, zero, r5, 10
000550  15009014  dma_cfg zero, zero, r9, 10
000554  1500d014  dma_cfg zero, zero, r13, 10
000558  15000015  dma_cfg zero, zero, r16, 10
00055c  1f281000  addli r16, zero, 10
000560  15002014  dma_cfg zero, zero, r2, 10
000564  1f211000  addli r2, zero, 10
000568  1500c014  dma_cfg zero, zero, r12, 10
00056c  15008014  dma_cfg zero, zero, r8, 10
000570  15002014  dma_cfg zero, zero, r2, 10
000574  1f411000  addli r2, zero, 12
000578  15008015  dma_cfg zero, zero, r24, 10
00057c  15002014  dma_cfg zero, zero, r2, 10
000580  1f611000  addli r2, zero, 14
000584  1500b014  dma_cfg zero, zero, r11, 10
000588  15002014  dma_cfg zero, zero, r2, 10
00058c  1f711000  addli r2, zero, 15
000590  15002014  dma_cfg zero, zero, r2, 10
000594  1f112000  addli r2, zero, 17
000598  15007015  dma_cfg zero, zero, r23, 10
00059c  15002014  dma_cfg zero, zero, r2, 10
0005a0  1f212000  addli r2, zero, 18
0005a4  15002014  dma_cfg zero, zero, r2, 10
0005a8  1f312000  addli r2, zero, 19
0005ac  15002014  dma_cfg zero, zero, r2, 10
0005b0  1f412000  addli r2, zero, 20
0005b4  15002014  dma_cfg zero, zero, r2, 10
0005b8  1f512000  addli r2, zero, 21
0005bc  15002014  dma_cfg zero, zero, r2, 10
0005c0  1f612000  addli r2, zero, 22
0005c4  15002014  dma_cfg zero, zero, r2, 10
0005c8  1f712000  addli r2, zero, 23
0005cc  15002014  dma_cfg zero, zero, r2, 10
0005d0  1f013000  addli r2, zero, 24
0005d4  15002014  dma_cfg zero, zero, r2, 10
0005d8  1f113000  addli r2, zero, 25
0005dc  15002014  dma_cfg zero, zero, r2, 10
0005e0  1f213000  addli r2, zero, 26
0005e4  15002014  dma_cfg zero, zero, r2, 10
0005e8  1f313000  addli r2, zero, 27
0005ec  15002014  dma_cfg zero, zero, r2, 10
0005f0  1f413000  addli r2, zero, 28
0005f4  15002014  dma_cfg zero, zero, r2, 10
0005f8  1f513000  addli r2, zero, 29
0005fc  15002014  dma_cfg zero, zero, r2, 10
000600  1f613000  addli r2, zero, 30
000604  15002014  dma_cfg zero, zero, r2, 10
000608  1f713000  addli r2, zero, 31
00060c  15002014  dma_cfg zero, zero, r2, 10
000610  1f010002  addli r2, zero, 256
000614  15050500  dma_cfg r10, r10, zero, 0
000618  15050002  dma_cfg r10, zero, zero, 1
00061c  15000004  dma_cfg zero, zero, zero, 2
000620  15006007  dma_cfg zero, zero, r22, 3
000624  150de008  dma_cfg r26, zero, r14, 4
000628  1501600b  dma_cfg r2, zero, r22, 5
00062c  15000010  dma_cfg zero, zero, zero, 8
000630  35000000  dma_run zero
000634  1500a00a  dma_cfg zero, zero, r10, 5
000638  15000010  dma_cfg zero, zero, zero, 8
00063c  1d900600  unlock r13
000640  1d800400  lock zero, r9
000644  15050500  dma_cfg r10, r10, zero, 0
000648  15000a04  dma_cfg zero, r20, zero, 2
00064c  158b6907  dma_cfg r22, r19, r22, 3
000650  9f690000  addli r19, zero, 6
000654  150deb08  dma_cfg r26, r22, r14, 4
000658  15016d0b  dma_cfg r2, r26, r22, 5
00065c  15000010  dma_cfg zero, zero, zero, 8
000660  35000000  dma_run zero
000664  1500a00a  dma_cfg zero, zero, r10, 5
000668  15000010  dma_cfg zero, zero, zero, 8
00066c  1d900400  unlock r9
000670  1d800600  lock zero, r13
000674  15000014  dma_cfg zero, zero, zero, 10
000678  1500a014  dma_cfg zero, zero, r10, 10
00067c  1500e014  dma_cfg zero, zero, r14, 10
000680  15005014  dma_cfg zero, zero, r5, 10
000684  15009014  dma_cfg zero, zero, r9, 10
000688  1500d014  dma_cfg zero, zero, r13, 10
00068c  15003015  dma_cfg zero, zero, r19, 10
000690  9f792000  addli r19, zero, 23
000694  1500f014  dma_cfg zero, zero, r15, 10
000698  9f572000  addli r15, zero, 21
00069c  1500c014  dma_cfg zero, zero, r12, 10
0006a0  15008014  dma_cfg zero, zero, r8, 10
0006a4  15000015  dma_cfg zero, zero, r16, 10
0006a8  1f682000  addli r16, zero, 22
0006ac  15008015  dma_cfg zero, zero, r24, 10
0006b0  15003014  dma_cfg zero, zero, r3, 10
0006b4  9f711000  addli r3, zero, 15
0006b8  1500b014  dma_cfg zero, zero, r11, 10
0006bc  15004014  dma_cfg zero, zero, r4, 10
0006c0  1f422000  addli r4, zero, 20
0006c4  15003014  dma_cfg zero, zero, r3, 10
0006c8  9f112000  addli r3, zero, 17
0006cc  15007015  dma_cfg zero, zero, r23, 10
0006d0  15003014  dma_cfg zero, zero, r3, 10
0006d4  9f212000  addli r3, zero, 18
0006d8  15003014  dma_cfg zero, zero, r3, 10
0006dc  9f312000  addli r3, zero, 19
0006e0  15003014  dma_cfg zero, zero, r3, 10
0006e4  9f312000  addli r3, zero, 19
0006e8  15004014  dma_cfg zero, zero, r4, 10
0006ec  1f422000  addli r4, zero, 20
0006f0  1500f014  dma_cfg zero, zero, r15, 10
0006f4  9f572000  addli r15, zero, 21
0006f8  15000015  dma_cfg zero, zero, r16, 10
0006fc  1f682000  addli r16, zero, 22
000700  15003015  dma_cfg zero, zero, r19, 10
000704  9f093000  addli r19, zero, 24
000708  15003015  dma_cfg zero, zero, r19, 10
00070c  9f193000  addli r19, zero, 25
000710  15003015  dma_cfg zero, zero, r19, 10
000714  9f293000  addli r19, zero, 26
000718  15003015  dma_cfg zero, zero, r19, 10
00071c  9f393000  addli r19, zero, 27
000720  15003015  dma_cfg zero, zero, r19, 10
000724  9f493000  addli r19, zero, 28
000728  15003015  dma_cfg zero, zero, r19, 10
00072c  9f593000  addli r19, zero, 29
000730  15003015  dma_cfg zero, zero, r19, 10
000734  9f693000  addli r19, zero, 30
000738  15003015  dma_cfg zero, zero, r19, 10
00073c  9f793000  addli r19, zero, 31
000740  15003015  dma_cfg zero, zero, r19, 10
000744  eb590f01  load.d r[20:21], 16(r30)
000748  15050500  dma_cfg r10, r10, zero, 0
00074c  15050002  dma_cfg r10, zero, zero, 1
000750  15000004  dma_cfg zero, zero, zero, 2
000754  8ba81911  add.ul r[18:19], r[20:21], r[18:19]
000758  9f192000  addli r19, zero, 17
00075c  1f2a2000  addli r20, zero, 18
000760  15006007  dma_cfg zero, zero, r22, 3
000764  150de008  dma_cfg r26, zero, r14, 4
000768  1501600b  dma_cfg r2, zero, r22, 5
00076c  1f610000  addli r2, zero, 6
000770  15000010  dma_cfg zero, zero, zero, 8
000774  35000000  dma_run zero
000778  1500a00a  dma_cfg zero, zero, r10, 5
00077c  15000010  dma_cfg zero, zero, zero, 8
000780  1d900600  unlock r13
000784  7d000700  xsignal r14, 0
000788  7d100c00  xwait r24, 0
00078c  1d800600  lock zero, r13
000790  15000014  dma_cfg zero, zero, zero, 10
000794  1500a014  dma_cfg zero, zero, r10, 10
000798  1500e014  dma_cfg zero, zero, r14, 10
00079c  15005014  dma_cfg zero, zero, r5, 10
0007a0  15009014  dma_cfg zero, zero, r9, 10
0007a4  1500d014  dma_cfg zero, zero, r13, 10
0007a8  15002014  dma_cfg zero, zero, r2, 10
0007ac  1f710000  addli r2, zero, 7
0007b0  15002014  dma_cfg zero, zero, r2, 10
0007b4  1f211000  addli r2, zero, 10
0007b8  1500c014  dma_cfg zero, zero, r12, 10
0007bc  1b960004  ori r12, r1, 64
0007c0  15008014  dma_cfg zero, zero, r8, 10
0007c4  15002014  dma_cfg zero, zero, r2, 10
0007c8  1f411000  addli r2, zero, 12
0007cc  15008015  dma_cfg zero, zero, r24, 10
0007d0  1f3c2000  addli r24, zero, 19
0007d4  15002014  dma_cfg zero, zero, r2, 10
0007d8  1f611000  addli r2, zero, 14
0007dc  1500b014  dma_cfg zero, zero, r11, 10
0007e0  15002014  dma_cfg zero, zero, r2, 10
0007e4  1f711000  addli r2, zero, 15
0007e8  15002014  dma_cfg zero, zero, r2, 10
0007ec  1f712000  addli r2, zero, 23
0007f0  15007015  dma_cfg zero, zero, r23, 10
0007f4  15003015  dma_cfg zero, zero, r19, 10
0007f8  15004015  dma_cfg zero, zero, r20, 10
0007fc  15003014  dma_cfg zero, zero, r3, 10
000800  9f610000  addli r3, zero, 6
000804  15004014  dma_cfg zero, zero, r4, 10
000808  1500f014  dma_cfg zero, zero, r15, 10
00080c  9f471000  addli r15, zero, 12
000810  15000015  dma_cfg zero, zero, r16, 10
000814  1f782000  addli r16, zero, 23
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
00085c  1f010010  addli r2, zero, 2048
000860  15050500  dma_cfg r10, r10, zero, 0
000864  15050002  dma_cfg r10, zero, zero, 1
000868  15000004  dma_cfg zero, zero, zero, 2
00086c  95006007  dma_cfg r1, zero, r22, 3
000870  150d7009  dma_cfg r26, zero, r23, 4
000874  1501a00a  dma_cfg r2, zero, r10, 5
000878  15000010  dma_cfg zero, zero, zero, 8
00087c  35000000  dma_run zero
000880  1500a00a  dma_cfg zero, zero, r10, 5
000884  15000010  dma_cfg zero, zero, zero, 8
000888  1d900600  unlock r13
00088c  1d800400  lock zero, r9
000890  15050500  dma_cfg r10, r10, zero, 0
000894  15000904  dma_cfg zero, r18, zero, 2
000898  15866807  dma_cfg r12, r17, r22, 3
00089c  1f060008  addli r12, zero, 1024
0008a0  150d7b09  dma_cfg r26, r22, r23, 4
0008a4  1501a60a  dma_cfg r2, r12, r10, 5
0008a8  1f061000  addli r12, zero, 8
0008ac  15000010  dma_cfg zero, zero, zero, 8
0008b0  35000000  dma_run zero
0008b4  1500a00a  dma_cfg zero, zero, r10, 5
0008b8  15000010  dma_cfg zero, zero, zero, 8
0008bc  1d900400  unlock r9
0008c0  1d800600  lock zero, r13
0008c4  15000014  dma_cfg zero, zero, zero, 10
0008c8  1500a014  dma_cfg zero, zero, r10, 10
0008cc  1500e014  dma_cfg zero, zero, r14, 10
0008d0  15005014  dma_cfg zero, zero, r5, 10
0008d4  15009014  dma_cfg zero, zero, r9, 10
0008d8  1500d014  dma_cfg zero, zero, r13, 10
0008dc  15003014  dma_cfg zero, zero, r3, 10
0008e0  9f710000  addli r3, zero, 7
0008e4  15003014  dma_cfg zero, zero, r3, 10
0008e8  9f311000  addli r3, zero, 11
0008ec  1500c014  dma_cfg zero, zero, r12, 10
0008f0  1f261000  addli r12, zero, 10
0008f4  15008014  dma_cfg zero, zero, r8, 10
0008f8  1500c014  dma_cfg zero, zero, r12, 10
0008fc  15003014  dma_cfg zero, zero, r3, 10
000900  9f411000  addli r3, zero, 12
000904  15003014  dma_cfg zero, zero, r3, 10
000908  9f611000  addli r3, zero, 14
00090c  1500b014  dma_cfg zero, zero, r11, 10
000910  e3454f00  loadli.w r11,  36(r30)
000914  15003014  dma_cfg zero, zero, r3, 10
000918  9f711000  addli r3, zero, 15
00091c  6b528fff  load.d r[5:6], -8(r30)
000920  15003014  dma_cfg zero, zero, r3, 10
000924  9f412000  addli r3, zero, 20
000928  15007015  dma_cfg zero, zero, r23, 10
00092c  15003015  dma_cfg zero, zero, r19, 10
000930  15004015  dma_cfg zero, zero, r20, 10
000934  15008015  dma_cfg zero, zero, r24, 10
000938  1f0c0001  addli r24, zero, 128
00093c  15003014  dma_cfg zero, zero, r3, 10
000940  9f512000  addli r3, zero, 21
000944  15003014  dma_cfg zero, zero, r3, 10
000948  9f612000  addli r3, zero, 22
00094c  15003014  dma_cfg zero, zero, r3, 10
000950  9f013000  addli r3, zero, 24
000954  15000015  dma_cfg zero, zero, r16, 10
000958  1f680000  addli r16, zero, 6
00095c  15003014  dma_cfg zero, zero, r3, 10
000960  9f113000  addli r3, zero, 25
000964  15003014  dma_cfg zero, zero, r3, 10
000968  9f213000  addli r3, zero, 26
00096c  15003014  dma_cfg zero, zero, r3, 10
000970  9f313000  addli r3, zero, 27
000974  15003014  dma_cfg zero, zero, r3, 10
000978  9f413000  addli r3, zero, 28
00097c  15003014  dma_cfg zero, zero, r3, 10
000980  9f513000  addli r3, zero, 29
000984  15003014  dma_cfg zero, zero, r3, 10
000988  9f613000  addli r3, zero, 30
00098c  15003014  dma_cfg zero, zero, r3, 10
000990  9f713000  addli r3, zero, 31
000994  15003014  dma_cfg zero, zero, r3, 10
000998  15050500  dma_cfg r10, r10, zero, 0
00099c  15050002  dma_cfg r10, zero, zero, 1
0009a0  15000004  dma_cfg zero, zero, zero, 2
0009a4  95006007  dma_cfg r1, zero, r22, 3
0009a8  150d7009  dma_cfg r26, zero, r23, 4
0009ac  1f0d0010  addli r26, zero, 2048
0009b0  1501a00a  dma_cfg r2, zero, r10, 5
0009b4  5b160000  j 176
0009b8  1f221000  addli r4, zero, 10
0009bc  2b01803f  lui r2, 260096
0009c0  9f080000  addli r17, zero, 0
0009c4  7d100200  xwait r4, 0
0009c8  7d900700  xwait r15, 0
0009cc  1d000700  lock zero, r14
0009d0  0d000002  ew_cfg zero, zero, zero, 1
0009d4  0d110100  ewcoeff_cfg r2, r2, zero, 0
0009d8  1f71f003  addli r2, zero, 511
0009dc  0d000104  ew_cfg zero, r2, zero, 2
0009e0  0d050006  ew_cfg r10, zero, zero, 3
0009e4  0b99c810  add.s r18, r17, r12
0009e8  9f880810  addli r17, r17, 2048
0009ec  2d091900  dsmadd r18, r18, r1, 0
0009f0  bbdf98ff  bneq r17, r25, -12
0009f4  1f321000  addli r4, zero, 11
0009f8  9f551000  addli r11, zero, 13
0009fc  1d100700  unlock r14
000a00  7d000200  xsignal r4, 0
000a04  7d800500  xsignal r11, 0
000a08  e3454f00  loadli.w r11,  36(r30)
000a0c  6b528fff  load.d r[5:6], -8(r30)
000a10  db44ffff  j -1500
000a14  bb880afc  bneq r21, zero, -1504
000a18  1f212000  addli r2, zero, 18
000a1c  eb558f01  load.d r[12:13], 24(r30)
000a20  97b8a802  sll.d r[18:19], r[18:19], r10
000a24  97b92902  sll.d r[20:21], r[20:21], r2
000a28  1f010020  addli r2, zero, 4096
000a2c  8ba93511  add.ul r[20:21], r[12:13], r[20:21]
000a30  9f551000  addli r11, zero, 13
000a34  1b960084  ori r12, r1, 2112
000a38  7d900500  xwait r11, 0
000a3c  1d800600  lock zero, r13
000a40  8ba81911  add.ul r[18:19], r[20:21], r[18:19]
000a44  e3454f00  loadli.w r11,  36(r30)
000a48  15050500  dma_cfg r10, r10, zero, 0
000a4c  15000502  dma_cfg zero, r10, zero, 1
000a50  15090004  dma_cfg r18, zero, zero, 2
000a54  95086607  dma_cfg r17, r12, r22, 3
000a58  1f661000  addli r12, zero, 14
000a5c  150b7c09  dma_cfg r22, r24, r23, 4
000a60  15016d0b  dma_cfg r2, r26, r22, 5
000a64  15000010  dma_cfg zero, zero, zero, 8
000a68  35000000  dma_run zero
000a6c  1500a00a  dma_cfg zero, zero, r10, 5
000a70  15000010  dma_cfg zero, zero, zero, 8
000a74  1d900600  unlock r13
000a78  7d000600  xsignal r12, 0
000a7c  5b37ffff  j -1608
000a80  7d100700  xwait r14, 0
000a84  7d900600  xwait r13, 0
000a88  1d000000  lock zero, zero
000a8c  1f360000  addli r12, zero, 3
000a90  01070000  ds_cfg r14, zero, 0
000a94  010b0002  ds_cfg r22, zero, 1
000a98  010b001c  ds_cfg r22, zero, 14
000a9c  010b001a  ds_cfg r22, zero, 13
000aa0  21106003  shuffle_batch zero, zero, r22, 1
000aa4  1d100000  unlock zero
000aa8  7d000600  xsignal r12, 0
000aac  7d800400  xsignal r9, 0
000ab0  db30ffff  j -1660
000ab4  7d000000  xsignal zero, 0
000ab8  bbe00a00  bneq r21, zero, 56
000abc  9f200000  addli r1, zero, 2
000ac0  7d100000  xwait zero, 0
000ac4  7d100000  xwait zero, 0
000ac8  7d100000  xwait zero, 0
000acc  7d100000  xwait zero, 0
000ad0  7d100000  xwait zero, 0
000ad4  7d100000  xwait zero, 0
000ad8  7d100000  xwait zero, 0
000adc  7d100000  xwait zero, 0
000ae0  1d800000  lock zero, r1
000ae4  0d000020  ew_cfg zero, zero, zero, 16
000ae8  1d900000  unlock r1
000aec  7d400000  xsignal_mode_cfg zero
000af0  9f8e1e00  addli sp, sp, 8
000af4  00a00300  mfence { lm, sm, gm }
000af8  00100000  exit
000afc  00100000  exit
000b00  00100000  exit
000b04  00100000  exit
000b08  00100000  exit
000b0c  00100000  exit
000b10  00100000  exit
000b14  00100000  exit
000b18  00100000  exit
000b1c  00100000  exit
000b20  00100000  exit
000b24  00100000  exit
000b28  00100000  exit
000b2c  00100000  exit
000b30  00100000  exit
000b34  00100000  exit
000b38  00100000  exit
000b3c  00100000  exit
000b40  00100000  exit
000b44  00100000  exit
000b48  00100000  exit
000b4c  00100000  exit
000b50  00100000  exit
000b54  00100000  exit
000b58  00100000  exit
000b5c  00100000  exit
000b60  00100000  exit
000b64  00100000  exit
000b68  00100000  exit
000b6c  00100000  exit
000b70  00100000  exit
000b74  00100000  exit
000b78  00100000  exit
000b7c  00100000  exit
000b80  00100000  exit
000b84  00100000  exit
000b88  00100000  exit
000b8c  00100000  exit
000b90  00100000  exit
000b94  00100000  exit
000b98  00100000  exit
000b9c  00100000  exit
000ba0  00100000  exit
000ba4  00100000  exit
000ba8  00100000  exit
000bac  00100000  exit
000bb0  00100000  exit
000bb4  00100000  exit
000bb8  00100000  exit
000bbc  00100000  exit
000bc0  00100000  exit
000bc4  00100000  exit
000bc8  00100000  exit
000bcc  00100000  exit
000bd0  00100000  exit
000bd4  00100000  exit
000bd8  00100000  exit
000bdc  00100000  exit
000be0  00100000  exit
000be4  00100000  exit
000be8  00100000  exit
000bec  00100000  exit
000bf0  00100000  exit
000bf4  00100000  exit
000bf8  00100000  exit
000bfc  00100000  exit
000c00  00100000  exit
000c04  00100000  exit
000c08  00100000  exit
000c0c  00100000  exit
000c10  00100000  exit
000c14  00100000  exit
000c18  00100000  exit
000c1c  00100000  exit
000c20  00100000  exit
000c24  00100000  exit
000c28  00100000  exit
000c2c  00100000  exit
000c30  00100000  exit
000c34  00100000  exit
000c38  00100000  exit
000c3c  00100000  exit
000c40  00100000  exit
000c44  00100000  exit
000c48  00100000  exit
000c4c  00100000  exit
000c50  00100000  exit
000c54  00100000  exit
000c58  00100000  exit
000c5c  00100000  exit
000c60  00100000  exit
000c64  00100000  exit
000c68  00100000  exit
000c6c  00100000  exit
000c70  00100000  exit
000c74  00100000  exit
000c78  00100000  exit
000c7c  00100000  exit
000c80  00100000  exit
000c84  00100000  exit
000c88  00100000  exit
000c8c  00100000  exit
000c90  00100000  exit
000c94  00100000  exit
000c98  00100000  exit
000c9c  00100000  exit
000ca0  00100000  exit
000ca4  00100000  exit
000ca8  00100000  exit
000cac  00100000  exit
000cb0  00100000  exit
000cb4  00100000  exit
000cb8  00100000  exit
000cbc  00100000  exit
000cc0  00100000  exit
000cc4  00100000  exit
000cc8  00100000  exit
000ccc  00100000  exit
000cd0  00100000  exit
000cd4  00100000  exit
000cd8  00100000  exit
000cdc  00100000  exit
000ce0  00100000  exit
000ce4  00100000  exit
000ce8  00100000  exit
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
