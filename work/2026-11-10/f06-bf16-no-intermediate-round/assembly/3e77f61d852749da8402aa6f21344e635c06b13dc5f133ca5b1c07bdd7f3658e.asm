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
0000c0  00310002  core_id r2
0000c4  e3454f00  loadli.w r11,  36(r30)
0000c8  7dc00000  xsignal_mode_cfg r1
0000cc  37600100  beq r2, zero, 24
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
000170  cb341204  ble.s r4, r1, 2348
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
0001a0  ab400200  lui r1, 36
0001a4  ab4d0000  lui r27, 4
0001a8  2b5e0200  lui r28, 37
0001ac  2b0d0200  lui r26, 32
0001b0  733c4ffe  store.d r[5:6], -8(r30)
0001b4  db4f0000  j 636
0001b8  9f770000  addli r15, zero, 7
0001bc  9f390000  addli r19, zero, 3
0001c0  1f011000  addli r2, zero, 8
0001c4  eb518f00  load.d r[4:5], 8(r30)
0001c8  97b8a802  sll.d r[18:19], r[18:19], r10
0001cc  9f451000  addli r11, zero, 12
0001d0  1f5a1000  addli r20, zero, 13
0001d4  9f1c2000  addli r25, zero, 17
0001d8  9f3a2000  addli r21, zero, 19
0001dc  1f4c2000  addli r24, zero, 20
0001e0  1b960d04  ori r12, r27, 64
0001e4  9f220000  addli r5, zero, 2
0001e8  7d900700  xwait r15, 0
0001ec  1d800600  lock zero, r13
0001f0  15000014  dma_cfg zero, zero, zero, 10
0001f4  8ba81111  add.ul r[18:19], r[4:5], r[18:19]
0001f8  1f621000  addli r4, zero, 14
0001fc  9f010010  addli r3, zero, 2048
000200  1500a014  dma_cfg zero, zero, r10, 10
000204  1500e014  dma_cfg zero, zero, r14, 10
000208  1f272000  addli r14, zero, 18
00020c  15003015  dma_cfg zero, zero, r19, 10
000210  15009014  dma_cfg zero, zero, r9, 10
000214  1500d014  dma_cfg zero, zero, r13, 10
000218  15000015  dma_cfg zero, zero, r16, 10
00021c  1f281000  addli r16, zero, 10
000220  1500f014  dma_cfg zero, zero, r15, 10
000224  15002014  dma_cfg zero, zero, r2, 10
000228  1f311000  addli r2, zero, 11
00022c  15008014  dma_cfg zero, zero, r8, 10
000230  1f741000  addli r8, zero, 15
000234  15000015  dma_cfg zero, zero, r16, 10
000238  15002014  dma_cfg zero, zero, r2, 10
00023c  1f512000  addli r2, zero, 21
000240  1500b014  dma_cfg zero, zero, r11, 10
000244  15004015  dma_cfg zero, zero, r20, 10
000248  15004014  dma_cfg zero, zero, r4, 10
00024c  15008014  dma_cfg zero, zero, r8, 10
000250  15007015  dma_cfg zero, zero, r23, 10
000254  15009015  dma_cfg zero, zero, r25, 10
000258  1500e014  dma_cfg zero, zero, r14, 10
00025c  15005015  dma_cfg zero, zero, r21, 10
000260  15008015  dma_cfg zero, zero, r24, 10
000264  15002014  dma_cfg zero, zero, r2, 10
000268  1f612000  addli r2, zero, 22
00026c  15002014  dma_cfg zero, zero, r2, 10
000270  1f712000  addli r2, zero, 23
000274  15002014  dma_cfg zero, zero, r2, 10
000278  1f013000  addli r2, zero, 24
00027c  15002014  dma_cfg zero, zero, r2, 10
000280  1f113000  addli r2, zero, 25
000284  15002014  dma_cfg zero, zero, r2, 10
000288  1f213000  addli r2, zero, 26
00028c  15002014  dma_cfg zero, zero, r2, 10
000290  1f313000  addli r2, zero, 27
000294  15002014  dma_cfg zero, zero, r2, 10
000298  1f413000  addli r2, zero, 28
00029c  15002014  dma_cfg zero, zero, r2, 10
0002a0  1f513000  addli r2, zero, 29
0002a4  15002014  dma_cfg zero, zero, r2, 10
0002a8  1f613000  addli r2, zero, 30
0002ac  15002014  dma_cfg zero, zero, r2, 10
0002b0  1f713000  addli r2, zero, 31
0002b4  15002014  dma_cfg zero, zero, r2, 10
0002b8  1f010001  addli r2, zero, 128
0002bc  15050500  dma_cfg r10, r10, zero, 0
0002c0  15050002  dma_cfg r10, zero, zero, 1
0002c4  15000004  dma_cfg zero, zero, zero, 2
0002c8  950d6007  dma_cfg r27, zero, r22, 3
0002cc  15017009  dma_cfg r2, zero, r23, 4
0002d0  9501600b  dma_cfg r3, zero, r22, 5
0002d4  15000010  dma_cfg zero, zero, zero, 8
0002d8  35000000  dma_run zero
0002dc  1500a00a  dma_cfg zero, zero, r10, 5
0002e0  15000010  dma_cfg zero, zero, zero, 8
0002e4  1d900600  unlock r13
0002e8  1d800400  lock zero, r9
0002ec  15050500  dma_cfg r10, r10, zero, 0
0002f0  15000904  dma_cfg zero, r18, zero, 2
0002f4  15866807  dma_cfg r12, r17, r22, 3
0002f8  1f060020  addli r12, zero, 4096
0002fc  15017b09  dma_cfg r2, r22, r23, 4
000300  9501660b  dma_cfg r3, r12, r22, 5
000304  1f562000  addli r12, zero, 21
000308  15000010  dma_cfg zero, zero, zero, 8
00030c  35000000  dma_run zero
000310  1500a00a  dma_cfg zero, zero, r10, 5
000314  15000010  dma_cfg zero, zero, zero, 8
000318  1d900400  unlock r9
00031c  1d800600  lock zero, r13
000320  15000014  dma_cfg zero, zero, zero, 10
000324  1500a014  dma_cfg zero, zero, r10, 10
000328  15005014  dma_cfg zero, zero, r5, 10
00032c  9f620000  addli r5, zero, 6
000330  15003015  dma_cfg zero, zero, r19, 10
000334  15009014  dma_cfg zero, zero, r9, 10
000338  1500d014  dma_cfg zero, zero, r13, 10
00033c  15005014  dma_cfg zero, zero, r5, 10
000340  9f021000  addli r5, zero, 8
000344  1500f014  dma_cfg zero, zero, r15, 10
000348  9f471000  addli r15, zero, 12
00034c  15005014  dma_cfg zero, zero, r5, 10
000350  9f121000  addli r5, zero, 9
000354  15005014  dma_cfg zero, zero, r5, 10
000358  9f321000  addli r5, zero, 11
00035c  15000015  dma_cfg zero, zero, r16, 10
000360  1f680000  addli r16, zero, 6
000364  15005014  dma_cfg zero, zero, r5, 10
000368  1500b014  dma_cfg zero, zero, r11, 10
00036c  e3454f00  loadli.w r11,  36(r30)
000370  15004015  dma_cfg zero, zero, r20, 10
000374  15004014  dma_cfg zero, zero, r4, 10
000378  6b528fff  load.d r[5:6], -8(r30)
00037c  15008014  dma_cfg zero, zero, r8, 10
000380  1f141000  addli r8, zero, 9
000384  15007015  dma_cfg zero, zero, r23, 10
000388  15009015  dma_cfg zero, zero, r25, 10
00038c  1500e014  dma_cfg zero, zero, r14, 10
000390  1f270000  addli r14, zero, 2
000394  15005015  dma_cfg zero, zero, r21, 10
000398  15008015  dma_cfg zero, zero, r24, 10
00039c  1500c014  dma_cfg zero, zero, r12, 10
0003a0  1f662000  addli r12, zero, 22
0003a4  1500c014  dma_cfg zero, zero, r12, 10
0003a8  1f762000  addli r12, zero, 23
0003ac  1500c014  dma_cfg zero, zero, r12, 10
0003b0  1f063000  addli r12, zero, 24
0003b4  1500c014  dma_cfg zero, zero, r12, 10
0003b8  1f163000  addli r12, zero, 25
0003bc  1500c014  dma_cfg zero, zero, r12, 10
0003c0  1f263000  addli r12, zero, 26
0003c4  1500c014  dma_cfg zero, zero, r12, 10
0003c8  1f363000  addli r12, zero, 27
0003cc  1500c014  dma_cfg zero, zero, r12, 10
0003d0  1f463000  addli r12, zero, 28
0003d4  1500c014  dma_cfg zero, zero, r12, 10
0003d8  1f563000  addli r12, zero, 29
0003dc  1500c014  dma_cfg zero, zero, r12, 10
0003e0  1f663000  addli r12, zero, 30
0003e4  1500c014  dma_cfg zero, zero, r12, 10
0003e8  1f763000  addli r12, zero, 31
0003ec  1500c014  dma_cfg zero, zero, r12, 10
0003f0  15050500  dma_cfg r10, r10, zero, 0
0003f4  15050002  dma_cfg r10, zero, zero, 1
0003f8  15000004  dma_cfg zero, zero, zero, 2
0003fc  950d6007  dma_cfg r27, zero, r22, 3
000400  15017009  dma_cfg r2, zero, r23, 4
000404  00310002  core_id r2
000408  9501600b  dma_cfg r3, zero, r22, 5
00040c  15000010  dma_cfg zero, zero, zero, 8
000410  35000000  dma_run zero
000414  1500a00a  dma_cfg zero, zero, r10, 5
000418  15000010  dma_cfg zero, zero, zero, 8
00041c  1d900600  unlock r13
000420  7d000800  xsignal r16, 0
000424  27130300  addli.d r[7:8], r[7:8], 1
000428  13364304  setlt.sl r12, r[7:8], r[5:6]
00042c  b7490602  beq r12, zero, 1648
000430  63065f00  loadli.w r12,  40(r30)
000434  0b16c330  div.s r12, r6, r12
000438  8b18b638  mod.s r17, r12, r11
00043c  0b16b630  div.s r12, r12, r11
000440  b3980828  sext_int2long r[18:19], r17
000444  b3190628  sext_int2long r[20:21], r12
000448  1b960080  ori r12, r1, 2048
00044c  97b88802  sll.d r[18:19], r[18:19], r8
000450  3fe12400  blt.s r9, r2, 88
000454  b702a100  beq r2, r10, 160
000458  3748e102  beq r2, r14, 1552
00045c  bb469102  bneq r2, r9, 1456
000460  9f080000  addli r17, zero, 0
000464  9f011000  addli r3, zero, 8
000468  1f691000  addli r18, zero, 14
00046c  7d900400  xwait r9, 0
000470  7d900100  xwait r3, 0
000474  7d100900  xwait r18, 0
000478  1d000500  lock zero, r10
00047c  090b6b01  mm_cfg r22, r22, r22, 0
000480  8984ab04  mm_cfg r9, r23, r10, 2
000484  29061011  mm r12, zero, r17, 8
000488  1f060602  addli r12, r12, 256
00048c  8b98b811  add.s r17, r17, r27
000490  1d100500  unlock r10
000494  bb1fc6ff  bneq r12, r28, -28
000498  7d800600  xsignal r13, 0
00049c  7d000400  xsignal r8, 0
0004a0  7d800700  xsignal r15, 0
0004a4  5bf0ffff  j -128
0004a8  3724d102  beq r2, r13, 1288
0004ac  373401ff  beq r2, r16, -756
0004b0  9f7a0000  addli r21, zero, 7
0004b4  3b655103  bneq r2, r21, 1368
0004b8  7d100800  xwait r16, 0
0004bc  7d100400  xwait r8, 0
0004c0  1d000000  lock zero, zero
0004c4  9f010004  addli r3, zero, 512
0004c8  1f760000  addli r12, zero, 7
0004cc  01070000  ds_cfg r14, zero, 0
0004d0  81010002  ds_cfg r3, zero, 1
0004d4  010b001c  ds_cfg r22, zero, 14
0004d8  8101001a  ds_cfg r3, zero, 13
0004dc  9f011000  addli r3, zero, 8
0004e0  41806d05  shuffle_coa zero, r27, r22, 2
0004e4  1d100000  unlock zero
0004e8  7d000600  xsignal r12, 0
0004ec  7d800100  xsignal r3, 0
0004f0  dbe6ffff  j -204
0004f4  9f3a0000  addli r21, zero, 3
0004f8  9f551000  addli r11, zero, 13
0004fc  9f710000  addli r3, zero, 7
000500  1f061000  addli r12, zero, 8
000504  6b5c0f00  load.d r[25:26], 0(r30)
000508  9f770000  addli r15, zero, 7
00050c  97b8a802  sll.d r[18:19], r[18:19], r10
000510  7d900a00  xwait r21, 0
000514  1d800600  lock zero, r13
000518  97b9b902  sll.d r[20:21], r[20:21], r11
00051c  15000014  dma_cfg zero, zero, zero, 10
000520  1500a014  dma_cfg zero, zero, r10, 10
000524  8b293c11  add.ul r[20:21], r[25:26], r[20:21]
000528  1f3c1000  addli r24, zero, 11
00052c  9f0c0001  addli r25, zero, 128
000530  1500e014  dma_cfg zero, zero, r14, 10
000534  15005015  dma_cfg zero, zero, r21, 10
000538  15009014  dma_cfg zero, zero, r9, 10
00053c  1500d014  dma_cfg zero, zero, r13, 10
000540  15000015  dma_cfg zero, zero, r16, 10
000544  1f281000  addli r16, zero, 10
000548  15003014  dma_cfg zero, zero, r3, 10
00054c  9f211000  addli r3, zero, 10
000550  1500c014  dma_cfg zero, zero, r12, 10
000554  15008014  dma_cfg zero, zero, r8, 10
000558  15003014  dma_cfg zero, zero, r3, 10
00055c  9f411000  addli r3, zero, 12
000560  15008015  dma_cfg zero, zero, r24, 10
000564  15003014  dma_cfg zero, zero, r3, 10
000568  9f611000  addli r3, zero, 14
00056c  1500b014  dma_cfg zero, zero, r11, 10
000570  15003014  dma_cfg zero, zero, r3, 10
000574  9f711000  addli r3, zero, 15
000578  15003014  dma_cfg zero, zero, r3, 10
00057c  9f112000  addli r3, zero, 17
000580  15007015  dma_cfg zero, zero, r23, 10
000584  15003014  dma_cfg zero, zero, r3, 10
000588  9f212000  addli r3, zero, 18
00058c  15003014  dma_cfg zero, zero, r3, 10
000590  9f312000  addli r3, zero, 19
000594  15003014  dma_cfg zero, zero, r3, 10
000598  9f412000  addli r3, zero, 20
00059c  15003014  dma_cfg zero, zero, r3, 10
0005a0  9f512000  addli r3, zero, 21
0005a4  15003014  dma_cfg zero, zero, r3, 10
0005a8  9f612000  addli r3, zero, 22
0005ac  15003014  dma_cfg zero, zero, r3, 10
0005b0  9f712000  addli r3, zero, 23
0005b4  15003014  dma_cfg zero, zero, r3, 10
0005b8  9f013000  addli r3, zero, 24
0005bc  15003014  dma_cfg zero, zero, r3, 10
0005c0  9f113000  addli r3, zero, 25
0005c4  15003014  dma_cfg zero, zero, r3, 10
0005c8  9f213000  addli r3, zero, 26
0005cc  15003014  dma_cfg zero, zero, r3, 10
0005d0  9f313000  addli r3, zero, 27
0005d4  15003014  dma_cfg zero, zero, r3, 10
0005d8  9f413000  addli r3, zero, 28
0005dc  15003014  dma_cfg zero, zero, r3, 10
0005e0  9f513000  addli r3, zero, 29
0005e4  15003014  dma_cfg zero, zero, r3, 10
0005e8  9f613000  addli r3, zero, 30
0005ec  15003014  dma_cfg zero, zero, r3, 10
0005f0  9f713000  addli r3, zero, 31
0005f4  15003014  dma_cfg zero, zero, r3, 10
0005f8  9f010002  addli r3, zero, 256
0005fc  15050500  dma_cfg r10, r10, zero, 0
000600  15050002  dma_cfg r10, zero, zero, 1
000604  15000004  dma_cfg zero, zero, zero, 2
000608  15006007  dma_cfg zero, zero, r22, 3
00060c  950ce008  dma_cfg r25, zero, r14, 4
000610  9501600b  dma_cfg r3, zero, r22, 5
000614  15000010  dma_cfg zero, zero, zero, 8
000618  35000000  dma_run zero
00061c  1500a00a  dma_cfg zero, zero, r10, 5
000620  15000010  dma_cfg zero, zero, zero, 8
000624  1d900600  unlock r13
000628  1d800400  lock zero, r9
00062c  15050500  dma_cfg r10, r10, zero, 0
000630  15000a04  dma_cfg zero, r20, zero, 2
000634  158b6907  dma_cfg r22, r19, r22, 3
000638  9f690000  addli r19, zero, 6
00063c  950ceb08  dma_cfg r25, r22, r14, 4
000640  95816c0b  dma_cfg r3, r25, r22, 5
000644  15000010  dma_cfg zero, zero, zero, 8
000648  35000000  dma_run zero
00064c  1500a00a  dma_cfg zero, zero, r10, 5
000650  15000010  dma_cfg zero, zero, zero, 8
000654  1d900400  unlock r9
000658  1d800600  lock zero, r13
00065c  15000014  dma_cfg zero, zero, zero, 10
000660  1500a014  dma_cfg zero, zero, r10, 10
000664  1500e014  dma_cfg zero, zero, r14, 10
000668  15005015  dma_cfg zero, zero, r21, 10
00066c  15009014  dma_cfg zero, zero, r9, 10
000670  1500d014  dma_cfg zero, zero, r13, 10
000674  15003015  dma_cfg zero, zero, r19, 10
000678  9f392000  addli r19, zero, 19
00067c  1500f014  dma_cfg zero, zero, r15, 10
000680  9f471000  addli r15, zero, 12
000684  1500c014  dma_cfg zero, zero, r12, 10
000688  15008014  dma_cfg zero, zero, r8, 10
00068c  15000015  dma_cfg zero, zero, r16, 10
000690  1f282000  addli r16, zero, 18
000694  15008015  dma_cfg zero, zero, r24, 10
000698  1500f014  dma_cfg zero, zero, r15, 10
00069c  9f671000  addli r15, zero, 14
0006a0  1500b014  dma_cfg zero, zero, r11, 10
0006a4  1500f014  dma_cfg zero, zero, r15, 10
0006a8  9f771000  addli r15, zero, 15
0006ac  1500f014  dma_cfg zero, zero, r15, 10
0006b0  9f172000  addli r15, zero, 17
0006b4  15007015  dma_cfg zero, zero, r23, 10
0006b8  1500f014  dma_cfg zero, zero, r15, 10
0006bc  9f172000  addli r15, zero, 17
0006c0  15000015  dma_cfg zero, zero, r16, 10
0006c4  1f282000  addli r16, zero, 18
0006c8  15003015  dma_cfg zero, zero, r19, 10
0006cc  9f492000  addli r19, zero, 20
0006d0  15003015  dma_cfg zero, zero, r19, 10
0006d4  9f592000  addli r19, zero, 21
0006d8  15003015  dma_cfg zero, zero, r19, 10
0006dc  9f692000  addli r19, zero, 22
0006e0  15003015  dma_cfg zero, zero, r19, 10
0006e4  9f792000  addli r19, zero, 23
0006e8  15003015  dma_cfg zero, zero, r19, 10
0006ec  9f093000  addli r19, zero, 24
0006f0  15003015  dma_cfg zero, zero, r19, 10
0006f4  9f193000  addli r19, zero, 25
0006f8  15003015  dma_cfg zero, zero, r19, 10
0006fc  9f293000  addli r19, zero, 26
000700  15003015  dma_cfg zero, zero, r19, 10
000704  9f393000  addli r19, zero, 27
000708  15003015  dma_cfg zero, zero, r19, 10
00070c  9f493000  addli r19, zero, 28
000710  15003015  dma_cfg zero, zero, r19, 10
000714  9f593000  addli r19, zero, 29
000718  15003015  dma_cfg zero, zero, r19, 10
00071c  9f693000  addli r19, zero, 30
000720  15003015  dma_cfg zero, zero, r19, 10
000724  9f793000  addli r19, zero, 31
000728  15003015  dma_cfg zero, zero, r19, 10
00072c  eb590f01  load.d r[20:21], 16(r30)
000730  15050500  dma_cfg r10, r10, zero, 0
000734  15050002  dma_cfg r10, zero, zero, 1
000738  15000004  dma_cfg zero, zero, zero, 2
00073c  8ba81911  add.ul r[18:19], r[20:21], r[18:19]
000740  1f6a1000  addli r20, zero, 14
000744  9f090010  addli r19, zero, 2048
000748  15006007  dma_cfg zero, zero, r22, 3
00074c  950ce008  dma_cfg r25, zero, r14, 4
000750  9501600b  dma_cfg r3, zero, r22, 5
000754  9f610000  addli r3, zero, 6
000758  15000010  dma_cfg zero, zero, zero, 8
00075c  35000000  dma_run zero
000760  1500a00a  dma_cfg zero, zero, r10, 5
000764  15000010  dma_cfg zero, zero, zero, 8
000768  1d900600  unlock r13
00076c  7d000700  xsignal r14, 0
000770  7d100c00  xwait r24, 0
000774  1d800600  lock zero, r13
000778  15000014  dma_cfg zero, zero, zero, 10
00077c  1500a014  dma_cfg zero, zero, r10, 10
000780  1500e014  dma_cfg zero, zero, r14, 10
000784  15005015  dma_cfg zero, zero, r21, 10
000788  15009014  dma_cfg zero, zero, r9, 10
00078c  1500d014  dma_cfg zero, zero, r13, 10
000790  15003014  dma_cfg zero, zero, r3, 10
000794  9f710000  addli r3, zero, 7
000798  15003014  dma_cfg zero, zero, r3, 10
00079c  9f211000  addli r3, zero, 10
0007a0  1500c014  dma_cfg zero, zero, r12, 10
0007a4  1b960004  ori r12, r1, 64
0007a8  15008014  dma_cfg zero, zero, r8, 10
0007ac  15003014  dma_cfg zero, zero, r3, 10
0007b0  9f411000  addli r3, zero, 12
0007b4  15008015  dma_cfg zero, zero, r24, 10
0007b8  1f1c2000  addli r24, zero, 17
0007bc  15003014  dma_cfg zero, zero, r3, 10
0007c0  9f711000  addli r3, zero, 15
0007c4  1500b014  dma_cfg zero, zero, r11, 10
0007c8  15004015  dma_cfg zero, zero, r20, 10
0007cc  15003014  dma_cfg zero, zero, r3, 10
0007d0  9f312000  addli r3, zero, 19
0007d4  15007015  dma_cfg zero, zero, r23, 10
0007d8  1500f014  dma_cfg zero, zero, r15, 10
0007dc  9f471000  addli r15, zero, 12
0007e0  15000015  dma_cfg zero, zero, r16, 10
0007e4  1f382000  addli r16, zero, 19
0007e8  15003014  dma_cfg zero, zero, r3, 10
0007ec  9f412000  addli r3, zero, 20
0007f0  15003014  dma_cfg zero, zero, r3, 10
0007f4  9f512000  addli r3, zero, 21
0007f8  15003014  dma_cfg zero, zero, r3, 10
0007fc  9f612000  addli r3, zero, 22
000800  15003014  dma_cfg zero, zero, r3, 10
000804  9f712000  addli r3, zero, 23
000808  15003014  dma_cfg zero, zero, r3, 10
00080c  9f013000  addli r3, zero, 24
000810  15003014  dma_cfg zero, zero, r3, 10
000814  9f113000  addli r3, zero, 25
000818  15003014  dma_cfg zero, zero, r3, 10
00081c  9f213000  addli r3, zero, 26
000820  15003014  dma_cfg zero, zero, r3, 10
000824  9f313000  addli r3, zero, 27
000828  15003014  dma_cfg zero, zero, r3, 10
00082c  9f413000  addli r3, zero, 28
000830  15003014  dma_cfg zero, zero, r3, 10
000834  9f513000  addli r3, zero, 29
000838  15003014  dma_cfg zero, zero, r3, 10
00083c  9f613000  addli r3, zero, 30
000840  15003014  dma_cfg zero, zero, r3, 10
000844  9f713000  addli r3, zero, 31
000848  15003014  dma_cfg zero, zero, r3, 10
00084c  9f010008  addli r3, zero, 1024
000850  15050500  dma_cfg r10, r10, zero, 0
000854  15050002  dma_cfg r10, zero, zero, 1
000858  15000004  dma_cfg zero, zero, zero, 2
00085c  95006007  dma_cfg r1, zero, r22, 3
000860  950c7009  dma_cfg r25, zero, r23, 4
000864  9509a00a  dma_cfg r19, zero, r10, 5
000868  15000010  dma_cfg zero, zero, zero, 8
00086c  35000000  dma_run zero
000870  1500a00a  dma_cfg zero, zero, r10, 5
000874  15000010  dma_cfg zero, zero, zero, 8
000878  1d900600  unlock r13
00087c  1d800400  lock zero, r9
000880  15050500  dma_cfg r10, r10, zero, 0
000884  15000904  dma_cfg zero, r18, zero, 2
000888  15866807  dma_cfg r12, r17, r22, 3
00088c  1f061000  addli r12, zero, 8
000890  950c7b09  dma_cfg r25, r22, r23, 4
000894  9589a10a  dma_cfg r19, r3, r10, 5
000898  9f610000  addli r3, zero, 6
00089c  15000010  dma_cfg zero, zero, zero, 8
0008a0  35000000  dma_run zero
0008a4  1500a00a  dma_cfg zero, zero, r10, 5
0008a8  15000010  dma_cfg zero, zero, zero, 8
0008ac  1d900400  unlock r9
0008b0  1d800600  lock zero, r13
0008b4  15000014  dma_cfg zero, zero, zero, 10
0008b8  1500a014  dma_cfg zero, zero, r10, 10
0008bc  1500e014  dma_cfg zero, zero, r14, 10
0008c0  15005015  dma_cfg zero, zero, r21, 10
0008c4  15009014  dma_cfg zero, zero, r9, 10
0008c8  1500d014  dma_cfg zero, zero, r13, 10
0008cc  15003014  dma_cfg zero, zero, r3, 10
0008d0  9f710000  addli r3, zero, 7
0008d4  15003014  dma_cfg zero, zero, r3, 10
0008d8  9f311000  addli r3, zero, 11
0008dc  1500c014  dma_cfg zero, zero, r12, 10
0008e0  1f261000  addli r12, zero, 10
0008e4  15008014  dma_cfg zero, zero, r8, 10
0008e8  1500c014  dma_cfg zero, zero, r12, 10
0008ec  15003014  dma_cfg zero, zero, r3, 10
0008f0  9f411000  addli r3, zero, 12
0008f4  15003014  dma_cfg zero, zero, r3, 10
0008f8  9f711000  addli r3, zero, 15
0008fc  1500b014  dma_cfg zero, zero, r11, 10
000900  e3454f00  loadli.w r11,  36(r30)
000904  15004015  dma_cfg zero, zero, r20, 10
000908  15003014  dma_cfg zero, zero, r3, 10
00090c  9f212000  addli r3, zero, 18
000910  15007015  dma_cfg zero, zero, r23, 10
000914  15008015  dma_cfg zero, zero, r24, 10
000918  15003014  dma_cfg zero, zero, r3, 10
00091c  9f412000  addli r3, zero, 20
000920  15000015  dma_cfg zero, zero, r16, 10
000924  1f680000  addli r16, zero, 6
000928  15003014  dma_cfg zero, zero, r3, 10
00092c  9f512000  addli r3, zero, 21
000930  15003014  dma_cfg zero, zero, r3, 10
000934  9f612000  addli r3, zero, 22
000938  15003014  dma_cfg zero, zero, r3, 10
00093c  9f712000  addli r3, zero, 23
000940  15003014  dma_cfg zero, zero, r3, 10
000944  9f013000  addli r3, zero, 24
000948  15003014  dma_cfg zero, zero, r3, 10
00094c  9f113000  addli r3, zero, 25
000950  15003014  dma_cfg zero, zero, r3, 10
000954  9f213000  addli r3, zero, 26
000958  15003014  dma_cfg zero, zero, r3, 10
00095c  9f313000  addli r3, zero, 27
000960  15003014  dma_cfg zero, zero, r3, 10
000964  9f413000  addli r3, zero, 28
000968  15003014  dma_cfg zero, zero, r3, 10
00096c  9f513000  addli r3, zero, 29
000970  15003014  dma_cfg zero, zero, r3, 10
000974  9f613000  addli r3, zero, 30
000978  15003014  dma_cfg zero, zero, r3, 10
00097c  9f713000  addli r3, zero, 31
000980  15003014  dma_cfg zero, zero, r3, 10
000984  15050500  dma_cfg r10, r10, zero, 0
000988  15050002  dma_cfg r10, zero, zero, 1
00098c  15000004  dma_cfg zero, zero, zero, 2
000990  95006007  dma_cfg r1, zero, r22, 3
000994  950c7009  dma_cfg r25, zero, r23, 4
000998  9509a00a  dma_cfg r19, zero, r10, 5
00099c  15000010  dma_cfg zero, zero, zero, 8
0009a0  35000000  dma_run zero
0009a4  1500a00a  dma_cfg zero, zero, r10, 5
0009a8  15000010  dma_cfg zero, zero, zero, 8
0009ac  5b160000  j 176
0009b0  1f221000  addli r4, zero, 10
0009b4  ab01803f  lui r3, 260096
0009b8  9f080000  addli r17, zero, 0
0009bc  7d100200  xwait r4, 0
0009c0  7d900700  xwait r15, 0
0009c4  1d000700  lock zero, r14
0009c8  0d000002  ew_cfg zero, zero, zero, 1
0009cc  8d910100  ewcoeff_cfg r3, r3, zero, 0
0009d0  9f71f003  addli r3, zero, 511
0009d4  0d800104  ew_cfg zero, r3, zero, 2
0009d8  0d050006  ew_cfg r10, zero, zero, 3
0009dc  0b99c810  add.s r18, r17, r12
0009e0  9f880810  addli r17, r17, 2048
0009e4  2d091900  dsmadd r18, r18, r1, 0
0009e8  bbdfa8ff  bneq r17, r26, -12
0009ec  1f321000  addli r4, zero, 11
0009f0  9f551000  addli r11, zero, 13
0009f4  1d100700  unlock r14
0009f8  7d000200  xsignal r4, 0
0009fc  7d800500  xsignal r11, 0
000a00  e3454f00  loadli.w r11,  36(r30)
000a04  6b528fff  load.d r[5:6], -8(r30)
000a08  db43ffff  j -1508
000a0c  3b6801fc  bneq r2, zero, -1512
000a10  9f352000  addli r11, zero, 19
000a14  6b5c8f01  load.d r[25:26], 24(r30)
000a18  97b8e802  sll.d r[18:19], r[18:19], r14
000a1c  9f010010  addli r3, zero, 2048
000a20  97b9b902  sll.d r[20:21], r[20:21], r11
000a24  9f551000  addli r11, zero, 13
000a28  8b293c11  add.ul r[20:21], r[25:26], r[20:21]
000a2c  7d900500  xwait r11, 0
000a30  1d800600  lock zero, r13
000a34  e3454f00  loadli.w r11,  36(r30)
000a38  15000000  dma_cfg zero, zero, zero, 0
000a3c  8ba81911  add.ul r[18:19], r[20:21], r[18:19]
000a40  15000502  dma_cfg zero, r10, zero, 1
000a44  15090004  dma_cfg r18, zero, zero, 2
000a48  95083606  dma_cfg r17, r12, r3, 3
000a4c  1f060040  addli r12, zero, 8192
000a50  15866109  dma_cfg r12, r3, r22, 4
000a54  1f661000  addli r12, zero, 14
000a58  35000000  dma_run zero
000a5c  1d900600  unlock r13
000a60  7d000600  xsignal r12, 0
000a64  5b38ffff  j -1600
000a68  7d100700  xwait r14, 0
000a6c  7d900600  xwait r13, 0
000a70  1d000000  lock zero, zero
000a74  1f360000  addli r12, zero, 3
000a78  01070000  ds_cfg r14, zero, 0
000a7c  010b0002  ds_cfg r22, zero, 1
000a80  010b001c  ds_cfg r22, zero, 14
000a84  010b001a  ds_cfg r22, zero, 13
000a88  21106003  shuffle_batch zero, zero, r22, 1
000a8c  1d100000  unlock zero
000a90  7d000600  xsignal r12, 0
000a94  7d800400  xsignal r9, 0
000a98  db31ffff  j -1652
000a9c  7d000000  xsignal zero, 0
000aa0  bb600100  bneq r2, zero, 56
000aa4  9f200000  addli r1, zero, 2
000aa8  7d100000  xwait zero, 0
000aac  7d100000  xwait zero, 0
000ab0  7d100000  xwait zero, 0
000ab4  7d100000  xwait zero, 0
000ab8  7d100000  xwait zero, 0
000abc  7d100000  xwait zero, 0
000ac0  7d100000  xwait zero, 0
000ac4  7d100000  xwait zero, 0
000ac8  1d800000  lock zero, r1
000acc  0d000020  ew_cfg zero, zero, zero, 16
000ad0  1d900000  unlock r1
000ad4  7d400000  xsignal_mode_cfg zero
000ad8  9f8e1e00  addli sp, sp, 8
000adc  00a00300  mfence { lm, sm, gm }
000ae0  00100000  exit
000ae4  00100000  exit
000ae8  00100000  exit
000aec  00100000  exit
000af0  00100000  exit
000af4  00100000  exit
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
