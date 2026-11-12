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
0000b4  9f8eeefe  addli sp, sp, -144
0000b8  9f100000  addli r1, zero, 1
0000bc  00390002  core_id r18
0000c0  1f8fae00  addli r30, sp, 80
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600900  beq r18, zero, 24
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
00019c  cb54110a  ble.s r2, r1, 5428
0001a0  33110128  sext_int2long r[3:4], r2
0001a4  b3920028  sext_int2long r[6:7], r1
0001a8  abf0ff7f  lui r1, 524287
0001ac  9f740000  addli r9, zero, 7
0001b0  2b0a4000  lui r20, 1024
0001b4  ab0c807f  lui r25, 522240
0001b8  2b02ffff  lui r4, 1048560
0001bc  9f030000  addli r7, zero, 0
0001c0  73382ffa  store.d r[3:4], -80(r30)
0001c4  9b9bf0ff  ori r23, r1, 4095
0001c8  ab700000  lui r1, 7
0001cc  2bf17f7f  lui r2, 522239
0001d0  9b9df0ff  ori r27, r1, 4095
0001d4  1b1ef1ff  ori r28, r2, 4095
0001d8  5b060000  j 48
0001dc  9f301000  addli r1, zero, 11
0001e0  7d800000  xsignal r1, 0
0001e4  9f401000  addli r1, zero, 12
0001e8  7d800000  xsignal r1, 0
0001ec  eb528ffd  load.d r[6:7], -40(r30)
0001f0  eb500ffb  load.d r[2:3], -80(r30)
0001f4  e303cfff  loadli.w r7,  -32(r30)
0001f8  a7920200  addli.d r[6:7], r[6:7], 1
0001fc  9f930300  addli r7, r7, 1
000200  93b01204  setlt.sl r1, r[6:7], r[2:3]
000204  37b3000a  beq r1, zero, 5324
000208  e3004f00  loadli.w r1,  32(r30)
00020c  63413f00  loadli.w r2,  28(r30)
000210  733c5ffc  store.d r[6:7], -40(r30)
000214  9f110000  addli r3, zero, 1
000218  670e7ffe  storeli.w r7, -32(r30)
00021c  8b901230  div.s r1, r5, r1
000220  1f038000  addli r6, zero, 64
000224  9f021000  addli r5, zero, 8
000228  8b952030  div.s r11, r1, r2
00022c  0b976530  div.s r14, r11, r6
000230  9b303700  slli r1, r14, 3
000234  0b911118  sub.s r2, r3, r1
000238  8b185140  min.s r17, r2, r5
00023c  9f320000  addli r5, zero, 3
000240  0b911539  mod.s r2, r11, r17
000244  8b975338  mod.s r15, r7, r5
000248  8b101110  add.s r1, r2, r1
00024c  1bb4e700  slli r8, r15, 14
000250  b38a0028  zext_int2long r[22:23], r1
000254  e70c1ffe  storeli.w r1, -56(r30)
000258  ab800100  lui r1, 24
00025c  0b111410  add.s r2, r8, r1
000260  73345fff  store.d r[22:23], -24(r30)
000264  3b1b3900  bneq r18, r3, 708
000268  1f561000  addli r12, zero, 13
00026c  9f310000  addli r3, zero, 3
000270  9f260000  addli r13, zero, 2
000274  97b2ca02  sll.d r[6:7], r[22:23], r12
000278  eb5a0f00  load.d r[22:23], 0(r30)
00027c  7d900100  xwait r3, 0
000280  8ba25a10  add.ul r[6:7], r[22:23], r[6:7]
000284  bfb47600  blt.s r13, r7, 300
000288  1f550000  addli r10, zero, 5
00028c  9f130000  addli r7, zero, 1
000290  9f400000  addli r1, zero, 4
000294  1f080001  addli r16, zero, 128
000298  1d000500  lock zero, r10
00029c  15000014  dma_cfg zero, zero, zero, 10
0002a0  15007014  dma_cfg zero, zero, r7, 10
0002a4  1500d014  dma_cfg zero, zero, r13, 10
0002a8  15003014  dma_cfg zero, zero, r3, 10
0002ac  15001014  dma_cfg zero, zero, r1, 10
0002b0  9f600000  addli r1, zero, 6
0002b4  1500a014  dma_cfg zero, zero, r10, 10
0002b8  15001014  dma_cfg zero, zero, r1, 10
0002bc  9f001000  addli r1, zero, 8
0002c0  15009014  dma_cfg zero, zero, r9, 10
0002c4  15001014  dma_cfg zero, zero, r1, 10
0002c8  9f101000  addli r1, zero, 9
0002cc  15001014  dma_cfg zero, zero, r1, 10
0002d0  9f201000  addli r1, zero, 10
0002d4  15001014  dma_cfg zero, zero, r1, 10
0002d8  9f301000  addli r1, zero, 11
0002dc  15001014  dma_cfg zero, zero, r1, 10
0002e0  9f401000  addli r1, zero, 12
0002e4  15001014  dma_cfg zero, zero, r1, 10
0002e8  9f601000  addli r1, zero, 14
0002ec  1500c014  dma_cfg zero, zero, r12, 10
0002f0  15001014  dma_cfg zero, zero, r1, 10
0002f4  9f701000  addli r1, zero, 15
0002f8  15001014  dma_cfg zero, zero, r1, 10
0002fc  9f002000  addli r1, zero, 16
000300  15001014  dma_cfg zero, zero, r1, 10
000304  9f102000  addli r1, zero, 17
000308  15001014  dma_cfg zero, zero, r1, 10
00030c  9f202000  addli r1, zero, 18
000310  15001014  dma_cfg zero, zero, r1, 10
000314  9f302000  addli r1, zero, 19
000318  15001014  dma_cfg zero, zero, r1, 10
00031c  9f402000  addli r1, zero, 20
000320  15001014  dma_cfg zero, zero, r1, 10
000324  9f502000  addli r1, zero, 21
000328  15001014  dma_cfg zero, zero, r1, 10
00032c  9f602000  addli r1, zero, 22
000330  15001014  dma_cfg zero, zero, r1, 10
000334  9f702000  addli r1, zero, 23
000338  15001014  dma_cfg zero, zero, r1, 10
00033c  9f003000  addli r1, zero, 24
000340  15001014  dma_cfg zero, zero, r1, 10
000344  9f103000  addli r1, zero, 25
000348  15001014  dma_cfg zero, zero, r1, 10
00034c  9f203000  addli r1, zero, 26
000350  15001014  dma_cfg zero, zero, r1, 10
000354  9f303000  addli r1, zero, 27
000358  15001014  dma_cfg zero, zero, r1, 10
00035c  9f403000  addli r1, zero, 28
000360  15001014  dma_cfg zero, zero, r1, 10
000364  9f503000  addli r1, zero, 29
000368  15001014  dma_cfg zero, zero, r1, 10
00036c  9f603000  addli r1, zero, 30
000370  15001014  dma_cfg zero, zero, r1, 10
000374  9f703000  addli r1, zero, 31
000378  15001014  dma_cfg zero, zero, r1, 10
00037c  9f008000  addli r1, zero, 64
000380  95830300  dma_cfg r7, r7, zero, 0
000384  95030002  dma_cfg r7, zero, zero, 1
000388  15000004  dma_cfg zero, zero, zero, 2
00038c  15011006  dma_cfg r2, zero, r1, 3
000390  1508d008  dma_cfg r16, zero, r13, 4
000394  1f080002  addli r16, zero, 256
000398  1508100a  dma_cfg r16, zero, r1, 5
00039c  15000010  dma_cfg zero, zero, zero, 8
0003a0  35000000  dma_run zero
0003a4  1500700a  dma_cfg zero, zero, r7, 5
0003a8  15000010  dma_cfg zero, zero, zero, 8
0003ac  1d100500  unlock r10
0003b0  ab800100  lui r1, 24
0003b4  1f480000  addli r16, zero, 4
0003b8  e74c0ffe  storeli.w zero, -52(r30)
0003bc  1f150000  addli r10, zero, 1
0003c0  9f038000  addli r7, zero, 64
0003c4  9f090002  addli r19, zero, 256
0003c8  9b900004  ori r1, r1, 64
0003cc  1d000800  lock zero, r16
0003d0  15050500  dma_cfg r10, r10, zero, 0
0003d4  8b101410  add.s r1, r8, r1
0003d8  15000304  dma_cfg zero, r6, zero, 2
0003dc  95807206  dma_cfg r1, r5, r7, 3
0003e0  1f038000  addli r6, zero, 64
0003e4  9f030001  addli r7, zero, 128
0003e8  9f520000  addli r5, zero, 5
0003ec  9f600000  addli r1, zero, 6
0003f0  9503d308  dma_cfg r7, r6, r13, 4
0003f4  9589630a  dma_cfg r19, r7, r6, 5
0003f8  15000010  dma_cfg zero, zero, zero, 8
0003fc  35000000  dma_run zero
000400  1500a00a  dma_cfg zero, zero, r10, 5
000404  15000010  dma_cfg zero, zero, zero, 8
000408  1d100800  unlock r16
00040c  1d800200  lock zero, r5
000410  15000014  dma_cfg zero, zero, zero, 10
000414  1500a014  dma_cfg zero, zero, r10, 10
000418  1500d014  dma_cfg zero, zero, r13, 10
00041c  15003014  dma_cfg zero, zero, r3, 10
000420  15000015  dma_cfg zero, zero, r16, 10
000424  15005014  dma_cfg zero, zero, r5, 10
000428  15001014  dma_cfg zero, zero, r1, 10
00042c  9f001000  addli r1, zero, 8
000430  15009014  dma_cfg zero, zero, r9, 10
000434  15001014  dma_cfg zero, zero, r1, 10
000438  9f101000  addli r1, zero, 9
00043c  15001014  dma_cfg zero, zero, r1, 10
000440  9f201000  addli r1, zero, 10
000444  15001014  dma_cfg zero, zero, r1, 10
000448  9f301000  addli r1, zero, 11
00044c  15001014  dma_cfg zero, zero, r1, 10
000450  9f401000  addli r1, zero, 12
000454  15001014  dma_cfg zero, zero, r1, 10
000458  9f601000  addli r1, zero, 14
00045c  1500c014  dma_cfg zero, zero, r12, 10
000460  15001014  dma_cfg zero, zero, r1, 10
000464  9f701000  addli r1, zero, 15
000468  15001014  dma_cfg zero, zero, r1, 10
00046c  9f002000  addli r1, zero, 16
000470  15001014  dma_cfg zero, zero, r1, 10
000474  9f102000  addli r1, zero, 17
000478  15001014  dma_cfg zero, zero, r1, 10
00047c  9f202000  addli r1, zero, 18
000480  15001014  dma_cfg zero, zero, r1, 10
000484  9f302000  addli r1, zero, 19
000488  15001014  dma_cfg zero, zero, r1, 10
00048c  9f402000  addli r1, zero, 20
000490  15001014  dma_cfg zero, zero, r1, 10
000494  9f502000  addli r1, zero, 21
000498  15001014  dma_cfg zero, zero, r1, 10
00049c  9f602000  addli r1, zero, 22
0004a0  15001014  dma_cfg zero, zero, r1, 10
0004a4  9f702000  addli r1, zero, 23
0004a8  15001014  dma_cfg zero, zero, r1, 10
0004ac  9f003000  addli r1, zero, 24
0004b0  15001014  dma_cfg zero, zero, r1, 10
0004b4  9f103000  addli r1, zero, 25
0004b8  15001014  dma_cfg zero, zero, r1, 10
0004bc  9f203000  addli r1, zero, 26
0004c0  15001014  dma_cfg zero, zero, r1, 10
0004c4  9f303000  addli r1, zero, 27
0004c8  15001014  dma_cfg zero, zero, r1, 10
0004cc  9f403000  addli r1, zero, 28
0004d0  15001014  dma_cfg zero, zero, r1, 10
0004d4  9f503000  addli r1, zero, 29
0004d8  15001014  dma_cfg zero, zero, r1, 10
0004dc  9f603000  addli r1, zero, 30
0004e0  15001014  dma_cfg zero, zero, r1, 10
0004e4  9f703000  addli r1, zero, 31
0004e8  15001014  dma_cfg zero, zero, r1, 10
0004ec  15050500  dma_cfg r10, r10, zero, 0
0004f0  15050002  dma_cfg r10, zero, zero, 1
0004f4  15000004  dma_cfg zero, zero, zero, 2
0004f8  15016006  dma_cfg r2, zero, r6, 3
0004fc  9503d008  dma_cfg r7, zero, r13, 4
000500  9509600a  dma_cfg r19, zero, r6, 5
000504  15000010  dma_cfg zero, zero, zero, 8
000508  35000000  dma_run zero
00050c  1500a00a  dma_cfg zero, zero, r10, 5
000510  15000010  dma_cfg zero, zero, zero, 8
000514  1d900200  unlock r5
000518  7d800600  xsignal r13, 0
00051c  eb5a8ffe  load.d r[22:23], -24(r30)
000520  9f320000  addli r5, zero, 3
000524  db0a0000  j 84
000528  9f200000  addli r1, zero, 2
00052c  3b111900  bneq r18, r1, 68
000530  9f510000  addli r3, zero, 5
000534  7d900000  xwait r1, 0
000538  7d900100  xwait r3, 0
00053c  1d000000  lock zero, zero
000540  81000000  ds_cfg r1, zero, 0
000544  9f100000  addli r1, zero, 1
000548  01030002  ds_cfg r6, zero, 1
00054c  0103001c  ds_cfg r6, zero, 14
000550  0103001a  ds_cfg r6, zero, 13
000554  21146102  shuffle_batch r8, r2, r6, 1
000558  1d100000  unlock zero
00055c  7d800200  xsignal r5, 0
000560  e74c1ffe  storeli.w r1, -52(r30)
000564  9f400000  addli r1, zero, 4
000568  7d800000  xsignal r1, 0
00056c  5b010000  j 8
000570  e74c0ffe  storeli.w zero, -52(r30)
000574  1f150000  addli r10, zero, 1
000578  9b306700  slli r1, r14, 6
00057c  ab410200  lui r3, 36
000580  1f760000  addli r12, zero, 7
000584  9f130000  addli r7, zero, 1
000588  8b901518  sub.s r1, r11, r1
00058c  9bb5f700  slli r11, r15, 15
000590  9f670000  addli r15, zero, 6
000594  8b901031  div.s r1, r1, r17
000598  e74b1ffe  storeli.w r1, -68(r30)
00059c  b3800028  zext_int2long r[2:3], r1
0005a0  97b09002  sll.d r[2:3], r[2:3], r9
0005a4  8b943510  add.s r9, r11, r3
0005a8  97b6a002  sll.d r[14:15], r[2:3], r10
0005ac  7330dffc  store.d r[14:15], -64(r30)
0005b0  3b0cf900  bneq r18, r15, 768
0005b4  eb508f00  load.d r[2:3], 8(r30)
0005b8  7d100600  xwait r12, 0
0005bc  e301cfff  loadli.w r3,  -32(r30)
0005c0  1f541000  addli r8, zero, 13
0005c4  1f250000  addli r10, zero, 2
0005c8  8ba0d010  add.ul r[2:3], r[2:3], r[14:15]
0005cc  1f470000  addli r14, zero, 4
0005d0  3f743500  blt.s r10, r3, 284
0005d4  9f560000  addli r13, zero, 5
0005d8  9f011000  addli r3, zero, 8
0005dc  1d800600  lock zero, r13
0005e0  15000014  dma_cfg zero, zero, zero, 10
0005e4  15007014  dma_cfg zero, zero, r7, 10
0005e8  1500a014  dma_cfg zero, zero, r10, 10
0005ec  15005014  dma_cfg zero, zero, r5, 10
0005f0  1500e014  dma_cfg zero, zero, r14, 10
0005f4  1500d014  dma_cfg zero, zero, r13, 10
0005f8  1500f014  dma_cfg zero, zero, r15, 10
0005fc  1500c014  dma_cfg zero, zero, r12, 10
000600  15003014  dma_cfg zero, zero, r3, 10
000604  9f111000  addli r3, zero, 9
000608  15003014  dma_cfg zero, zero, r3, 10
00060c  9f211000  addli r3, zero, 10
000610  15003014  dma_cfg zero, zero, r3, 10
000614  9f311000  addli r3, zero, 11
000618  15003014  dma_cfg zero, zero, r3, 10
00061c  9f411000  addli r3, zero, 12
000620  15003014  dma_cfg zero, zero, r3, 10
000624  9f611000  addli r3, zero, 14
000628  15008014  dma_cfg zero, zero, r8, 10
00062c  15003014  dma_cfg zero, zero, r3, 10
000630  9f711000  addli r3, zero, 15
000634  15003014  dma_cfg zero, zero, r3, 10
000638  9f012000  addli r3, zero, 16
00063c  15003014  dma_cfg zero, zero, r3, 10
000640  9f112000  addli r3, zero, 17
000644  15003014  dma_cfg zero, zero, r3, 10
000648  9f212000  addli r3, zero, 18
00064c  15003014  dma_cfg zero, zero, r3, 10
000650  9f312000  addli r3, zero, 19
000654  15003014  dma_cfg zero, zero, r3, 10
000658  9f412000  addli r3, zero, 20
00065c  15003014  dma_cfg zero, zero, r3, 10
000660  9f512000  addli r3, zero, 21
000664  15003014  dma_cfg zero, zero, r3, 10
000668  9f612000  addli r3, zero, 22
00066c  15003014  dma_cfg zero, zero, r3, 10
000670  9f712000  addli r3, zero, 23
000674  15003014  dma_cfg zero, zero, r3, 10
000678  9f013000  addli r3, zero, 24
00067c  15003014  dma_cfg zero, zero, r3, 10
000680  9f113000  addli r3, zero, 25
000684  15003014  dma_cfg zero, zero, r3, 10
000688  9f213000  addli r3, zero, 26
00068c  15003014  dma_cfg zero, zero, r3, 10
000690  9f313000  addli r3, zero, 27
000694  15003014  dma_cfg zero, zero, r3, 10
000698  9f413000  addli r3, zero, 28
00069c  15003014  dma_cfg zero, zero, r3, 10
0006a0  9f513000  addli r3, zero, 29
0006a4  15003014  dma_cfg zero, zero, r3, 10
0006a8  9f613000  addli r3, zero, 30
0006ac  15003014  dma_cfg zero, zero, r3, 10
0006b0  9f713000  addli r3, zero, 31
0006b4  15003014  dma_cfg zero, zero, r3, 10
0006b8  9f010001  addli r3, zero, 128
0006bc  95830300  dma_cfg r7, r7, zero, 0
0006c0  95030002  dma_cfg r7, zero, zero, 1
0006c4  15000004  dma_cfg zero, zero, zero, 2
0006c8  95046006  dma_cfg r9, zero, r6, 3
0006cc  9501e008  dma_cfg r3, zero, r14, 4
0006d0  9f010004  addli r3, zero, 512
0006d4  9501600a  dma_cfg r3, zero, r6, 5
0006d8  15000010  dma_cfg zero, zero, zero, 8
0006dc  35000000  dma_run zero
0006e0  1500700a  dma_cfg zero, zero, r7, 5
0006e4  15000010  dma_cfg zero, zero, zero, 8
0006e8  1d900600  unlock r13
0006ec  ab410200  lui r3, 36
0006f0  674e0ffe  storeli.w zero, -28(r30)
0006f4  674d0ffe  storeli.w zero, -44(r30)
0006f8  670d0ffe  storeli.w zero, -48(r30)
0006fc  9f060004  addli r13, zero, 512
000700  1d000700  lock zero, r14
000704  9b910104  ori r3, r3, 64
000708  95830300  dma_cfg r7, r7, zero, 0
00070c  15000104  dma_cfg zero, r2, zero, 2
000710  8b913510  add.s r3, r11, r3
000714  95816006  dma_cfg r3, r1, r6, 3
000718  9f010001  addli r3, zero, 128
00071c  9f000010  addli r1, zero, 2048
000720  1f510000  addli r2, zero, 5
000724  9501e308  dma_cfg r3, r6, r14, 4
000728  9586600a  dma_cfg r13, r1, r6, 5
00072c  9f001000  addli r1, zero, 8
000730  15000010  dma_cfg zero, zero, zero, 8
000734  35000000  dma_run zero
000738  1500700a  dma_cfg zero, zero, r7, 5
00073c  15000010  dma_cfg zero, zero, zero, 8
000740  1d100700  unlock r14
000744  1d000100  lock zero, r2
000748  15000014  dma_cfg zero, zero, zero, 10
00074c  15007014  dma_cfg zero, zero, r7, 10
000750  1500a014  dma_cfg zero, zero, r10, 10
000754  15005014  dma_cfg zero, zero, r5, 10
000758  1500e014  dma_cfg zero, zero, r14, 10
00075c  15002014  dma_cfg zero, zero, r2, 10
000760  1500f014  dma_cfg zero, zero, r15, 10
000764  1500c014  dma_cfg zero, zero, r12, 10
000768  15001014  dma_cfg zero, zero, r1, 10
00076c  9f101000  addli r1, zero, 9
000770  15001014  dma_cfg zero, zero, r1, 10
000774  9f201000  addli r1, zero, 10
000778  15001014  dma_cfg zero, zero, r1, 10
00077c  9f301000  addli r1, zero, 11
000780  15001014  dma_cfg zero, zero, r1, 10
000784  9f401000  addli r1, zero, 12
000788  15001014  dma_cfg zero, zero, r1, 10
00078c  9f601000  addli r1, zero, 14
000790  15008014  dma_cfg zero, zero, r8, 10
000794  15001014  dma_cfg zero, zero, r1, 10
000798  9f701000  addli r1, zero, 15
00079c  15001014  dma_cfg zero, zero, r1, 10
0007a0  9f002000  addli r1, zero, 16
0007a4  15001014  dma_cfg zero, zero, r1, 10
0007a8  9f102000  addli r1, zero, 17
0007ac  15001014  dma_cfg zero, zero, r1, 10
0007b0  9f202000  addli r1, zero, 18
0007b4  15001014  dma_cfg zero, zero, r1, 10
0007b8  9f302000  addli r1, zero, 19
0007bc  15001014  dma_cfg zero, zero, r1, 10
0007c0  9f402000  addli r1, zero, 20
0007c4  15001014  dma_cfg zero, zero, r1, 10
0007c8  9f502000  addli r1, zero, 21
0007cc  15001014  dma_cfg zero, zero, r1, 10
0007d0  9f602000  addli r1, zero, 22
0007d4  15001014  dma_cfg zero, zero, r1, 10
0007d8  9f702000  addli r1, zero, 23
0007dc  15001014  dma_cfg zero, zero, r1, 10
0007e0  9f003000  addli r1, zero, 24
0007e4  15001014  dma_cfg zero, zero, r1, 10
0007e8  9f103000  addli r1, zero, 25
0007ec  15001014  dma_cfg zero, zero, r1, 10
0007f0  9f203000  addli r1, zero, 26
0007f4  15001014  dma_cfg zero, zero, r1, 10
0007f8  9f303000  addli r1, zero, 27
0007fc  15001014  dma_cfg zero, zero, r1, 10
000800  9f403000  addli r1, zero, 28
000804  15001014  dma_cfg zero, zero, r1, 10
000808  9f503000  addli r1, zero, 29
00080c  15001014  dma_cfg zero, zero, r1, 10
000810  9f603000  addli r1, zero, 30
000814  15001014  dma_cfg zero, zero, r1, 10
000818  9f703000  addli r1, zero, 31
00081c  15001014  dma_cfg zero, zero, r1, 10
000820  95830300  dma_cfg r7, r7, zero, 0
000824  95030002  dma_cfg r7, zero, zero, 1
000828  15000004  dma_cfg zero, zero, zero, 2
00082c  95046006  dma_cfg r9, zero, r6, 3
000830  9501e008  dma_cfg r3, zero, r14, 4
000834  9506600a  dma_cfg r13, zero, r6, 5
000838  15000010  dma_cfg zero, zero, zero, 8
00083c  35000000  dma_run zero
000840  1500700a  dma_cfg zero, zero, r7, 5
000844  15000010  dma_cfg zero, zero, zero, 8
000848  1d100100  unlock r2
00084c  7d800700  xsignal r15, 0
000850  abc00300  lui r1, 60
000854  3d000000  xfence
000858  9f740000  addli r9, zero, 7
00085c  00a00300  mfence { lm, sm, gm }
000860  0b941510  add.s r8, r11, r1
000864  9f70f001  addli r1, zero, 255
000868  80a20004  csr_set csr5, r1
00086c  9f000001  addli r1, zero, 128
000870  00e00200  sync_core
000874  33870028  zext_int2long r[15:16], r1
000878  b7020900  beq r18, zero, 160
00087c  9f100000  addli r1, zero, 1
000880  37581900  beq r18, r1, 532
000884  e3409fff  loadli.w r1,  -52(r30)
000888  3bbe0000  bneq r1, zero, 908
00088c  e340cfff  loadli.w r1,  -28(r30)
000890  3ba40002  bneq r1, zero, 1288
000894  e300afff  loadli.w r1,  -48(r30)
000898  3b9a0002  bneq r1, zero, 1668
00089c  9f500000  addli r1, zero, 5
0008a0  37001904  beq r18, r1, 2048
0008a4  9f600000  addli r1, zero, 6
0008a8  b7751904  beq r18, r1, 2428
0008ac  db5e0100  j 2804
0008b0  9f501000  addli r1, zero, 13
0008b4  1f210000  addli r2, zero, 2
0008b8  9f430000  addli r7, zero, 4
0008bc  b7175906  beq r18, r5, 3556
0008c0  9f020001  addli r5, zero, 128
0008c4  37757906  beq r18, r7, 3420
0008c8  9f700000  addli r1, zero, 7
0008cc  bb571906  bneq r18, r1, 3572
0008d0  9f111000  addli r3, zero, 9
0008d4  674e0ffe  storeli.w zero, -28(r30)
0008d8  670d0ffe  storeli.w zero, -48(r30)
0008dc  7d900700  xwait r15, 0
0008e0  7d900100  xwait r3, 0
0008e4  1d000000  lock zero, zero
0008e8  01010000  ds_cfg r2, zero, 0
0008ec  81020002  ds_cfg r5, zero, 1
0008f0  0103001c  ds_cfg r6, zero, 14
0008f4  8102001a  ds_cfg r5, zero, 13
0008f8  c1856404  shuffle_coa r11, r9, r6, 2
0008fc  1d100000  unlock zero
000900  7d800000  xsignal r1, 0
000904  9f100000  addli r1, zero, 1
000908  674d1ffe  storeli.w r1, -44(r30)
00090c  9f001000  addli r1, zero, 8
000910  7d800000  xsignal r1, 0
000914  dbe7ffff  j -196
000918  b3000028  zext_int2long r[2:3], zero
00091c  3d000000  xfence
000920  00a00300  mfence { lm, sm, gm }
000924  73381ffe  store.d r[2:3], -16(r30)
000928  27810000  addli.d r[3:4], r[2:3], 0
00092c  db030000  j 28
000930  9f740000  addli r9, zero, 7
000934  eb528fff  load.d r[6:7], -8(r30)
000938  b3800428  zext_int2long r[2:3], r9
00093c  93a01204  setlt.ul r1, r[6:7], r[2:3]
000940  27910200  addli.d r[3:4], r[6:7], 1
000944  37850000  beq r1, zero, 320
000948  17339102  sll.d r[7:8], r[3:4], r9
00094c  eb540fff  load.d r[10:11], -16(r30)
000950  733c2ffe  store.d r[3:4], -8(r30)
000954  db040000  j 36
000958  a7c40400  addli.d r[10:11], r[10:11], 4
00095c  0b160411  add.s r12, r8, r16
000960  93a1e402  setneq.d r3, r[10:11], r[15:16]
000964  73665600  stores.w r5, 12(r12)
000968  73646601  stores.w r22, 8(r12)
00096c  73621600  stores.w r1, 4(r12)
000970  73602600  stores.w r2, 0(r12)
000974  b7fe01fe  beq r3, zero, -68
000978  8ba06410  add.ul r[2:3], r[10:11], r[7:8]
00097c  1bb82000  slli r16, r1, 2
000980  8b900511  add.s r1, r11, r16
000984  6fcdc000  loads.w r26, 12(r1)
000988  efc60000  loads.w r13, 0(r1)
00098c  6fcc4000  loads.w r24, 4(r1)
000990  efca8000  loads.w r21, 8(r1)
000994  97097d01  and r19, r26, r23
000998  93803c05  setlt.u r1, r25, r19
00099c  3bb00000  bneq r1, zero, 12
0009a0  9f020d00  addli r5, r26, 0
0009a4  5b010000  j 8
0009a8  97124d01  or r5, r26, r20
0009ac  17867a01  and r12, r21, r23
0009b0  9380cc04  setlt.u r1, r25, r12
0009b4  3bb00000  bneq r1, zero, 12
0009b8  1f8b0a00  addli r22, r21, 0
0009bc  5b010000  j 8
0009c0  179b4a01  or r22, r21, r20
0009c4  97017c01  and r3, r24, r23
0009c8  93803c04  setlt.u r1, r25, r3
0009cc  3bb00000  bneq r1, zero, 12
0009d0  9f000c00  addli r1, r24, 0
0009d4  5b010000  j 8
0009d8  97104c01  or r1, r24, r20
0009dc  97887601  and r17, r13, r23
0009e0  13811c05  setlt.u r2, r25, r17
0009e4  3b500100  bneq r2, zero, 20
0009e8  1f810600  addli r2, r13, 0
0009ec  93081e05  setlt.u r17, r28, r17
0009f0  37d00800  beq r17, zero, 20
0009f4  db040000  j 36
0009f8  17914601  or r2, r13, r20
0009fc  93081e05  setlt.u r17, r28, r17
000a00  3be00800  bneq r17, zero, 24
000a04  1bc10601  srli r2, r13, 16
000a08  1b011100  andi r2, r2, 1
000a0c  0b912610  add.s r2, r13, r2
000a10  0b11b111  add.s r2, r2, r27
000a14  17014100  and r2, r2, r4
000a18  93013e04  setlt.u r3, r28, r3
000a1c  37e00100  beq r3, zero, 24
000a20  9301ce04  setlt.u r3, r28, r12
000a24  b7b00100  beq r3, zero, 44
000a28  93013e05  setlt.u r3, r28, r19
000a2c  bbbc01fe  bneq r3, zero, -212
000a30  db070000  j 60
000a34  9b400c01  srli r1, r24, 16
000a38  9b801000  andi r1, r1, 1
000a3c  8b101c10  add.s r1, r24, r1
000a40  8b90b011  add.s r1, r1, r27
000a44  97804000  and r1, r1, r4
000a48  9301ce04  setlt.u r3, r28, r12
000a4c  3bff01fe  bneq r3, zero, -36
000a50  9bc10a01  srli r3, r21, 16
000a54  9b811100  andi r3, r3, 1
000a58  8b913a10  add.s r3, r21, r3
000a5c  8b91b111  add.s r3, r3, r27
000a60  178b4100  and r22, r3, r4
000a64  93013e05  setlt.u r3, r28, r19
000a68  bbcb01fe  bneq r3, zero, -272
000a6c  9b410d01  srli r3, r26, 16
000a70  9b811100  andi r3, r3, 1
000a74  8b113d10  add.s r3, r26, r3
000a78  8b91b111  add.s r3, r3, r27
000a7c  97824100  and r5, r3, r4
000a80  5bdbffff  j -296
000a84  00200100  mfence { sm }
000a88  eb5a8ffe  load.d r[22:23], -24(r30)
000a8c  9f100000  addli r1, zero, 1
000a90  bb5719fe  bneq r18, r1, -524
000a94  9f001000  addli r1, zero, 8
000a98  3d000000  xfence
000a9c  00a00300  mfence { lm, sm, gm }
000aa0  33810028  zext_int2long r[3:4], r1
000aa4  5b040000  j 32
000aa8  9f701000  addli r1, zero, 15
000aac  eb528fff  load.d r[6:7], -8(r30)
000ab0  9f740000  addli r9, zero, 7
000ab4  b3800028  zext_int2long r[2:3], r1
000ab8  93a01204  setlt.ul r1, r[6:7], r[2:3]
000abc  27910200  addli.d r[3:4], r[6:7], 1
000ac0  37950000  beq r1, zero, 324
000ac4  9f700000  addli r1, zero, 7
000ac8  33030028  zext_int2long r[7:8], zero
000acc  733c2ffe  store.d r[3:4], -8(r30)
000ad0  97341102  sll.d r[10:11], r[3:4], r1
000ad4  db040000  j 36
000ad8  27430300  addli.d r[7:8], r[7:8], 4
000adc  0b112410  add.s r2, r8, r2
000ae0  9320e302  setneq.d r1, r[7:8], r[15:16]
000ae4  73665100  stores.w r5, 12(r2)
000ae8  73643101  stores.w r19, 8(r2)
000aec  73626101  stores.w r22, 4(r2)
000af0  7360d100  stores.w r13, 0(r2)
000af4  b7de00fe  beq r1, zero, -76
000af8  8b209310  add.ul r[2:3], r[7:8], r[10:11]
000afc  1bb12000  slli r2, r1, 2
000b00  8b922510  add.s r5, r11, r2
000b04  efc1c200  loads.w r3, 12(r5)
000b08  6fcc0200  loads.w r24, 0(r5)
000b0c  efc04200  loads.w r1, 4(r5)
000b10  efca8200  loads.w r21, 8(r5)
000b14  17887101  and r16, r3, r23
000b18  93820c05  setlt.u r5, r25, r16
000b1c  3bb00200  bneq r5, zero, 12
000b20  9f820100  addli r5, r3, 0
000b24  5b010000  j 8
000b28  97924101  or r5, r3, r20
000b2c  17867a01  and r12, r21, r23
000b30  9386cc04  setlt.u r13, r25, r12
000b34  3bb00600  bneq r13, zero, 12
000b38  9f890a00  addli r19, r21, 0
000b3c  5b010000  j 8
000b40  97994a01  or r19, r21, r20
000b44  178d7001  and r26, r1, r23
000b48  9386ac05  setlt.u r13, r25, r26
000b4c  3bb00600  bneq r13, zero, 12
000b50  1f8b0000  addli r22, r1, 0
000b54  5b010000  j 8
000b58  179b4001  or r22, r1, r20
000b5c  97087c01  and r17, r24, r23
000b60  93861c05  setlt.u r13, r25, r17
000b64  3bd00600  bneq r13, zero, 20
000b68  9f060c00  addli r13, r24, 0
000b6c  93081e05  setlt.u r17, r28, r17
000b70  37d00800  beq r17, zero, 20
000b74  db040000  j 36
000b78  97164c01  or r13, r24, r20
000b7c  93081e05  setlt.u r17, r28, r17
000b80  3be00800  bneq r17, zero, 24
000b84  9b460c01  srli r13, r24, 16
000b88  9b861600  andi r13, r13, 1
000b8c  8b16dc10  add.s r13, r24, r13
000b90  8b96b611  add.s r13, r13, r27
000b94  97864600  and r13, r13, r4
000b98  9308ae05  setlt.u r17, r28, r26
000b9c  37e00800  beq r17, zero, 24
000ba0  9300ce04  setlt.u r1, r28, r12
000ba4  b7b00000  beq r1, zero, 44
000ba8  93000e05  setlt.u r1, r28, r16
000bac  bbbc00fe  bneq r1, zero, -212
000bb0  db070000  j 60
000bb4  9bc80001  srli r17, r1, 16
000bb8  9b881800  andi r17, r17, 1
000bbc  8b901011  add.s r1, r1, r17
000bc0  8b90b011  add.s r1, r1, r27
000bc4  178b4000  and r22, r1, r4
000bc8  9300ce04  setlt.u r1, r28, r12
000bcc  3bff00fe  bneq r1, zero, -36
000bd0  9bc00a01  srli r1, r21, 16
000bd4  9b801000  andi r1, r1, 1
000bd8  8b901a10  add.s r1, r21, r1
000bdc  8b90b011  add.s r1, r1, r27
000be0  97894000  and r19, r1, r4
000be4  93000e05  setlt.u r1, r28, r16
000be8  bbcb00fe  bneq r1, zero, -272
000bec  9bc00101  srli r1, r3, 16
000bf0  9b801000  andi r1, r1, 1
000bf4  8b901110  add.s r1, r3, r1
000bf8  8b90b011  add.s r1, r1, r27
000bfc  97824000  and r5, r1, r4
000c00  5bdbffff  j -296
000c04  00200100  mfence { sm }
000c08  eb5a8ffe  load.d r[22:23], -24(r30)
000c0c  e3409fff  loadli.w r1,  -52(r30)
000c10  b7f100fe  beq r1, zero, -900
000c14  9f002000  addli r1, zero, 16
000c18  3d000000  xfence
000c1c  00a00300  mfence { lm, sm, gm }
000c20  33810028  zext_int2long r[3:4], r1
000c24  5b040000  j 32
000c28  9f702000  addli r1, zero, 23
000c2c  eb528fff  load.d r[6:7], -8(r30)
000c30  9f740000  addli r9, zero, 7
000c34  b3800028  zext_int2long r[2:3], r1
000c38  93a01204  setlt.ul r1, r[6:7], r[2:3]
000c3c  27910200  addli.d r[3:4], r[6:7], 1
000c40  37950000  beq r1, zero, 324
000c44  9f700000  addli r1, zero, 7
000c48  33030028  zext_int2long r[7:8], zero
000c4c  733c2ffe  store.d r[3:4], -8(r30)
000c50  97341102  sll.d r[10:11], r[3:4], r1
000c54  db040000  j 36
000c58  27430300  addli.d r[7:8], r[7:8], 4
000c5c  0b112410  add.s r2, r8, r2
000c60  9320e302  setneq.d r1, r[7:8], r[15:16]
000c64  73665100  stores.w r5, 12(r2)
000c68  73643101  stores.w r19, 8(r2)
000c6c  73626101  stores.w r22, 4(r2)
000c70  7360d100  stores.w r13, 0(r2)
000c74  b7de00fe  beq r1, zero, -76
000c78  8b209310  add.ul r[2:3], r[7:8], r[10:11]
000c7c  1bb12000  slli r2, r1, 2
000c80  8b922510  add.s r5, r11, r2
000c84  efc1c200  loads.w r3, 12(r5)
000c88  6fcc0200  loads.w r24, 0(r5)
000c8c  efc04200  loads.w r1, 4(r5)
000c90  efca8200  loads.w r21, 8(r5)
000c94  17897101  and r18, r3, r23
000c98  93822c05  setlt.u r5, r25, r18
000c9c  3bb00200  bneq r5, zero, 12
000ca0  9f820100  addli r5, r3, 0
000ca4  5b010000  j 8
000ca8  97924101  or r5, r3, r20
000cac  17867a01  and r12, r21, r23
000cb0  9386cc04  setlt.u r13, r25, r12
000cb4  3bb00600  bneq r13, zero, 12
000cb8  9f890a00  addli r19, r21, 0
000cbc  5b010000  j 8
000cc0  97994a01  or r19, r21, r20
000cc4  178d7001  and r26, r1, r23
000cc8  9386ac05  setlt.u r13, r25, r26
000ccc  3bb00600  bneq r13, zero, 12
000cd0  1f8b0000  addli r22, r1, 0
000cd4  5b010000  j 8
000cd8  179b4001  or r22, r1, r20
000cdc  17087c01  and r16, r24, r23
000ce0  93860c05  setlt.u r13, r25, r16
000ce4  3bd00600  bneq r13, zero, 20
000ce8  9f060c00  addli r13, r24, 0
000cec  13080e05  setlt.u r16, r28, r16
000cf0  37500800  beq r16, zero, 20
000cf4  db040000  j 36
000cf8  97164c01  or r13, r24, r20
000cfc  13080e05  setlt.u r16, r28, r16
000d00  3b600800  bneq r16, zero, 24
000d04  9b460c01  srli r13, r24, 16
000d08  9b861600  andi r13, r13, 1
000d0c  8b16dc10  add.s r13, r24, r13
000d10  8b96b611  add.s r13, r13, r27
000d14  97864600  and r13, r13, r4
000d18  1308ae05  setlt.u r16, r28, r26
000d1c  37600800  beq r16, zero, 24
000d20  9300ce04  setlt.u r1, r28, r12
000d24  b7b00000  beq r1, zero, 44
000d28  93002e05  setlt.u r1, r28, r18
000d2c  bbbc00fe  bneq r1, zero, -212
000d30  db070000  j 60
000d34  1bc80001  srli r16, r1, 16
000d38  1b081800  andi r16, r16, 1
000d3c  8b900011  add.s r1, r1, r16
000d40  8b90b011  add.s r1, r1, r27
000d44  178b4000  and r22, r1, r4
000d48  9300ce04  setlt.u r1, r28, r12
000d4c  3bff00fe  bneq r1, zero, -36
000d50  9bc00a01  srli r1, r21, 16
000d54  9b801000  andi r1, r1, 1
000d58  8b901a10  add.s r1, r21, r1
000d5c  8b90b011  add.s r1, r1, r27
000d60  97894000  and r19, r1, r4
000d64  93002e05  setlt.u r1, r28, r18
000d68  bbcb00fe  bneq r1, zero, -272
000d6c  9bc00101  srli r1, r3, 16
000d70  9b801000  andi r1, r1, 1
000d74  8b901110  add.s r1, r3, r1
000d78  8b90b011  add.s r1, r1, r27
000d7c  97824000  and r5, r1, r4
000d80  5bdbffff  j -296
000d84  00200100  mfence { sm }
000d88  00390002  core_id r18
000d8c  eb5a8ffe  load.d r[22:23], -24(r30)
000d90  e340cfff  loadli.w r1,  -28(r30)
000d94  378c00fc  beq r1, zero, -1280
000d98  9f003000  addli r1, zero, 24
000d9c  3d000000  xfence
000da0  00a00300  mfence { lm, sm, gm }
000da4  33810028  zext_int2long r[3:4], r1
000da8  5b040000  j 32
000dac  9f703000  addli r1, zero, 31
000db0  eb528fff  load.d r[6:7], -8(r30)
000db4  9f740000  addli r9, zero, 7
000db8  b3800028  zext_int2long r[2:3], r1
000dbc  93a01204  setlt.ul r1, r[6:7], r[2:3]
000dc0  27910200  addli.d r[3:4], r[6:7], 1
000dc4  37950000  beq r1, zero, 324
000dc8  9f700000  addli r1, zero, 7
000dcc  33030028  zext_int2long r[7:8], zero
000dd0  733c2ffe  store.d r[3:4], -8(r30)
000dd4  97341102  sll.d r[10:11], r[3:4], r1
000dd8  db040000  j 36
000ddc  27430300  addli.d r[7:8], r[7:8], 4
000de0  0b112410  add.s r2, r8, r2
000de4  9320e302  setneq.d r1, r[7:8], r[15:16]
000de8  73665100  stores.w r5, 12(r2)
000dec  73643101  stores.w r19, 8(r2)
000df0  73626101  stores.w r22, 4(r2)
000df4  7360d100  stores.w r13, 0(r2)
000df8  b7de00fe  beq r1, zero, -76
000dfc  8b209310  add.ul r[2:3], r[7:8], r[10:11]
000e00  1bb12000  slli r2, r1, 2
000e04  8b922510  add.s r5, r11, r2
000e08  efc1c200  loads.w r3, 12(r5)
000e0c  6fcc0200  loads.w r24, 0(r5)
000e10  efc04200  loads.w r1, 4(r5)
000e14  efca8200  loads.w r21, 8(r5)
000e18  17897101  and r18, r3, r23
000e1c  93822c05  setlt.u r5, r25, r18
000e20  3bb00200  bneq r5, zero, 12
000e24  9f820100  addli r5, r3, 0
000e28  5b010000  j 8
000e2c  97924101  or r5, r3, r20
000e30  17867a01  and r12, r21, r23
000e34  9386cc04  setlt.u r13, r25, r12
000e38  3bb00600  bneq r13, zero, 12
000e3c  9f890a00  addli r19, r21, 0
000e40  5b010000  j 8
000e44  97994a01  or r19, r21, r20
000e48  178d7001  and r26, r1, r23
000e4c  9386ac05  setlt.u r13, r25, r26
000e50  3bb00600  bneq r13, zero, 12
000e54  1f8b0000  addli r22, r1, 0
000e58  5b010000  j 8
000e5c  179b4001  or r22, r1, r20
000e60  17087c01  and r16, r24, r23
000e64  93860c05  setlt.u r13, r25, r16
000e68  3bd00600  bneq r13, zero, 20
000e6c  9f060c00  addli r13, r24, 0
000e70  13080e05  setlt.u r16, r28, r16
000e74  37500800  beq r16, zero, 20
000e78  db040000  j 36
000e7c  97164c01  or r13, r24, r20
000e80  13080e05  setlt.u r16, r28, r16
000e84  3b600800  bneq r16, zero, 24
000e88  9b460c01  srli r13, r24, 16
000e8c  9b861600  andi r13, r13, 1
000e90  8b16dc10  add.s r13, r24, r13
000e94  8b96b611  add.s r13, r13, r27
000e98  97864600  and r13, r13, r4
000e9c  1308ae05  setlt.u r16, r28, r26
000ea0  37600800  beq r16, zero, 24
000ea4  9300ce04  setlt.u r1, r28, r12
000ea8  b7b00000  beq r1, zero, 44
000eac  93002e05  setlt.u r1, r28, r18
000eb0  bbbc00fe  bneq r1, zero, -212
000eb4  db070000  j 60
000eb8  1bc80001  srli r16, r1, 16
000ebc  1b081800  andi r16, r16, 1
000ec0  8b900011  add.s r1, r1, r16
000ec4  8b90b011  add.s r1, r1, r27
000ec8  178b4000  and r22, r1, r4
000ecc  9300ce04  setlt.u r1, r28, r12
000ed0  3bff00fe  bneq r1, zero, -36
000ed4  9bc00a01  srli r1, r21, 16
000ed8  9b801000  andi r1, r1, 1
000edc  8b901a10  add.s r1, r21, r1
000ee0  8b90b011  add.s r1, r1, r27
000ee4  97894000  and r19, r1, r4
000ee8  93002e05  setlt.u r1, r28, r18
000eec  bbcb00fe  bneq r1, zero, -272
000ef0  9bc00101  srli r1, r3, 16
000ef4  9b801000  andi r1, r1, 1
000ef8  8b901110  add.s r1, r3, r1
000efc  8b90b011  add.s r1, r1, r27
000f00  97824000  and r5, r1, r4
000f04  5bdbffff  j -296
000f08  00200100  mfence { sm }
000f0c  00390002  core_id r18
000f10  eb5a8ffe  load.d r[22:23], -24(r30)
000f14  e300afff  loadli.w r1,  -48(r30)
000f18  379600fc  beq r1, zero, -1660
000f1c  9f004000  addli r1, zero, 32
000f20  3d000000  xfence
000f24  00a00300  mfence { lm, sm, gm }
000f28  33810028  zext_int2long r[3:4], r1
000f2c  5b040000  j 32
000f30  9f704000  addli r1, zero, 39
000f34  eb528fff  load.d r[6:7], -8(r30)
000f38  9f740000  addli r9, zero, 7
000f3c  b3800028  zext_int2long r[2:3], r1
000f40  93a01204  setlt.ul r1, r[6:7], r[2:3]
000f44  27910200  addli.d r[3:4], r[6:7], 1
000f48  37950000  beq r1, zero, 324
000f4c  9f700000  addli r1, zero, 7
000f50  33030028  zext_int2long r[7:8], zero
000f54  733c2ffe  store.d r[3:4], -8(r30)
000f58  97341102  sll.d r[10:11], r[3:4], r1
000f5c  db040000  j 36
000f60  27430300  addli.d r[7:8], r[7:8], 4
000f64  0b112410  add.s r2, r8, r2
000f68  9320e302  setneq.d r1, r[7:8], r[15:16]
000f6c  73665100  stores.w r5, 12(r2)
000f70  73643101  stores.w r19, 8(r2)
000f74  73626101  stores.w r22, 4(r2)
000f78  7360d100  stores.w r13, 0(r2)
000f7c  b7de00fe  beq r1, zero, -76
000f80  8b209310  add.ul r[2:3], r[7:8], r[10:11]
000f84  1bb12000  slli r2, r1, 2
000f88  8b922510  add.s r5, r11, r2
000f8c  efc1c200  loads.w r3, 12(r5)
000f90  6fcc0200  loads.w r24, 0(r5)
000f94  efc04200  loads.w r1, 4(r5)
000f98  efca8200  loads.w r21, 8(r5)
000f9c  17897101  and r18, r3, r23
000fa0  93822c05  setlt.u r5, r25, r18
000fa4  3bb00200  bneq r5, zero, 12
000fa8  9f820100  addli r5, r3, 0
000fac  5b010000  j 8
000fb0  97924101  or r5, r3, r20
000fb4  17867a01  and r12, r21, r23
000fb8  9386cc04  setlt.u r13, r25, r12
000fbc  3bb00600  bneq r13, zero, 12
000fc0  9f890a00  addli r19, r21, 0
000fc4  5b010000  j 8
000fc8  97994a01  or r19, r21, r20
000fcc  178d7001  and r26, r1, r23
000fd0  9386ac05  setlt.u r13, r25, r26
000fd4  3bb00600  bneq r13, zero, 12
000fd8  1f8b0000  addli r22, r1, 0
000fdc  5b010000  j 8
000fe0  179b4001  or r22, r1, r20
000fe4  17087c01  and r16, r24, r23
000fe8  93860c05  setlt.u r13, r25, r16
000fec  3bd00600  bneq r13, zero, 20
000ff0  9f060c00  addli r13, r24, 0
000ff4  13080e05  setlt.u r16, r28, r16
000ff8  37500800  beq r16, zero, 20
000ffc  db040000  j 36
001000  97164c01  or r13, r24, r20
001004  13080e05  setlt.u r16, r28, r16
001008  3b600800  bneq r16, zero, 24
00100c  9b460c01  srli r13, r24, 16
001010  9b861600  andi r13, r13, 1
001014  8b16dc10  add.s r13, r24, r13
001018  8b96b611  add.s r13, r13, r27
00101c  97864600  and r13, r13, r4
001020  1308ae05  setlt.u r16, r28, r26
001024  37600800  beq r16, zero, 24
001028  9300ce04  setlt.u r1, r28, r12
00102c  b7b00000  beq r1, zero, 44
001030  93002e05  setlt.u r1, r28, r18
001034  bbbc00fe  bneq r1, zero, -212
001038  db070000  j 60
00103c  1bc80001  srli r16, r1, 16
001040  1b081800  andi r16, r16, 1
001044  8b900011  add.s r1, r1, r16
001048  8b90b011  add.s r1, r1, r27
00104c  178b4000  and r22, r1, r4
001050  9300ce04  setlt.u r1, r28, r12
001054  3bff00fe  bneq r1, zero, -36
001058  9bc00a01  srli r1, r21, 16
00105c  9b801000  andi r1, r1, 1
001060  8b901a10  add.s r1, r21, r1
001064  8b90b011  add.s r1, r1, r27
001068  97894000  and r19, r1, r4
00106c  93002e05  setlt.u r1, r28, r18
001070  bbcb00fe  bneq r1, zero, -272
001074  9bc00101  srli r1, r3, 16
001078  9b801000  andi r1, r1, 1
00107c  8b901110  add.s r1, r3, r1
001080  8b90b011  add.s r1, r1, r27
001084  97824000  and r5, r1, r4
001088  5bdbffff  j -296
00108c  00200100  mfence { sm }
001090  00390002  core_id r18
001094  eb5a8ffe  load.d r[22:23], -24(r30)
001098  9f500000  addli r1, zero, 5
00109c  3b2019fc  bneq r18, r1, -2040
0010a0  9f005000  addli r1, zero, 40
0010a4  3d000000  xfence
0010a8  00a00300  mfence { lm, sm, gm }
0010ac  33810028  zext_int2long r[3:4], r1
0010b0  5b040000  j 32
0010b4  9f705000  addli r1, zero, 47
0010b8  eb528fff  load.d r[6:7], -8(r30)
0010bc  9f740000  addli r9, zero, 7
0010c0  b3800028  zext_int2long r[2:3], r1
0010c4  93a01204  setlt.ul r1, r[6:7], r[2:3]
0010c8  27910200  addli.d r[3:4], r[6:7], 1
0010cc  37950000  beq r1, zero, 324
0010d0  9f700000  addli r1, zero, 7
0010d4  33030028  zext_int2long r[7:8], zero
0010d8  733c2ffe  store.d r[3:4], -8(r30)
0010dc  97341102  sll.d r[10:11], r[3:4], r1
0010e0  db040000  j 36
0010e4  27430300  addli.d r[7:8], r[7:8], 4
0010e8  0b112410  add.s r2, r8, r2
0010ec  9320e302  setneq.d r1, r[7:8], r[15:16]
0010f0  73665100  stores.w r5, 12(r2)
0010f4  73643101  stores.w r19, 8(r2)
0010f8  73626101  stores.w r22, 4(r2)
0010fc  7360d100  stores.w r13, 0(r2)
001100  b7de00fe  beq r1, zero, -76
001104  8b209310  add.ul r[2:3], r[7:8], r[10:11]
001108  1bb12000  slli r2, r1, 2
00110c  8b922510  add.s r5, r11, r2
001110  efc1c200  loads.w r3, 12(r5)
001114  6fcc0200  loads.w r24, 0(r5)
001118  efc04200  loads.w r1, 4(r5)
00111c  efca8200  loads.w r21, 8(r5)
001120  17897101  and r18, r3, r23
001124  93822c05  setlt.u r5, r25, r18
001128  3bb00200  bneq r5, zero, 12
00112c  9f820100  addli r5, r3, 0
001130  5b010000  j 8
001134  97924101  or r5, r3, r20
001138  17867a01  and r12, r21, r23
00113c  9386cc04  setlt.u r13, r25, r12
001140  3bb00600  bneq r13, zero, 12
001144  9f890a00  addli r19, r21, 0
001148  5b010000  j 8
00114c  97994a01  or r19, r21, r20
001150  178d7001  and r26, r1, r23
001154  9386ac05  setlt.u r13, r25, r26
001158  3bb00600  bneq r13, zero, 12
00115c  1f8b0000  addli r22, r1, 0
001160  5b010000  j 8
001164  179b4001  or r22, r1, r20
001168  17087c01  and r16, r24, r23
00116c  93860c05  setlt.u r13, r25, r16
001170  3bd00600  bneq r13, zero, 20
001174  9f060c00  addli r13, r24, 0
001178  13080e05  setlt.u r16, r28, r16
00117c  37500800  beq r16, zero, 20
001180  db040000  j 36
001184  97164c01  or r13, r24, r20
001188  13080e05  setlt.u r16, r28, r16
00118c  3b600800  bneq r16, zero, 24
001190  9b460c01  srli r13, r24, 16
001194  9b861600  andi r13, r13, 1
001198  8b16dc10  add.s r13, r24, r13
00119c  8b96b611  add.s r13, r13, r27
0011a0  97864600  and r13, r13, r4
0011a4  1308ae05  setlt.u r16, r28, r26
0011a8  37600800  beq r16, zero, 24
0011ac  9300ce04  setlt.u r1, r28, r12
0011b0  b7b00000  beq r1, zero, 44
0011b4  93002e05  setlt.u r1, r28, r18
0011b8  bbbc00fe  bneq r1, zero, -212
0011bc  db070000  j 60
0011c0  1bc80001  srli r16, r1, 16
0011c4  1b081800  andi r16, r16, 1
0011c8  8b900011  add.s r1, r1, r16
0011cc  8b90b011  add.s r1, r1, r27
0011d0  178b4000  and r22, r1, r4
0011d4  9300ce04  setlt.u r1, r28, r12
0011d8  3bff00fe  bneq r1, zero, -36
0011dc  9bc00a01  srli r1, r21, 16
0011e0  9b801000  andi r1, r1, 1
0011e4  8b901a10  add.s r1, r21, r1
0011e8  8b90b011  add.s r1, r1, r27
0011ec  97894000  and r19, r1, r4
0011f0  93002e05  setlt.u r1, r28, r18
0011f4  bbcb00fe  bneq r1, zero, -272
0011f8  9bc00101  srli r1, r3, 16
0011fc  9b801000  andi r1, r1, 1
001200  8b901110  add.s r1, r3, r1
001204  8b90b011  add.s r1, r1, r27
001208  97824000  and r5, r1, r4
00120c  5bdbffff  j -296
001210  00200100  mfence { sm }
001214  00390002  core_id r18
001218  eb5a8ffe  load.d r[22:23], -24(r30)
00121c  9f600000  addli r1, zero, 6
001220  3b061900  bneq r18, r1, 384
001224  9f006000  addli r1, zero, 48
001228  3d000000  xfence
00122c  00a00300  mfence { lm, sm, gm }
001230  33810028  zext_int2long r[3:4], r1
001234  5b040000  j 32
001238  9f706000  addli r1, zero, 55
00123c  eb528fff  load.d r[6:7], -8(r30)
001240  9f740000  addli r9, zero, 7
001244  b3800028  zext_int2long r[2:3], r1
001248  93a01204  setlt.ul r1, r[6:7], r[2:3]
00124c  27910200  addli.d r[3:4], r[6:7], 1
001250  37950000  beq r1, zero, 324
001254  9f700000  addli r1, zero, 7
001258  33030028  zext_int2long r[7:8], zero
00125c  733c2ffe  store.d r[3:4], -8(r30)
001260  97341102  sll.d r[10:11], r[3:4], r1
001264  db040000  j 36
001268  27430300  addli.d r[7:8], r[7:8], 4
00126c  0b112410  add.s r2, r8, r2
001270  9320e302  setneq.d r1, r[7:8], r[15:16]
001274  73665100  stores.w r5, 12(r2)
001278  73643101  stores.w r19, 8(r2)
00127c  73626101  stores.w r22, 4(r2)
001280  7360d100  stores.w r13, 0(r2)
001284  b7de00fe  beq r1, zero, -76
001288  8b209310  add.ul r[2:3], r[7:8], r[10:11]
00128c  1bb12000  slli r2, r1, 2
001290  8b922510  add.s r5, r11, r2
001294  efc1c200  loads.w r3, 12(r5)
001298  6fcc0200  loads.w r24, 0(r5)
00129c  efc04200  loads.w r1, 4(r5)
0012a0  efca8200  loads.w r21, 8(r5)
0012a4  17897101  and r18, r3, r23
0012a8  93822c05  setlt.u r5, r25, r18
0012ac  3bb00200  bneq r5, zero, 12
0012b0  9f820100  addli r5, r3, 0
0012b4  5b010000  j 8
0012b8  97924101  or r5, r3, r20
0012bc  17867a01  and r12, r21, r23
0012c0  9386cc04  setlt.u r13, r25, r12
0012c4  3bb00600  bneq r13, zero, 12
0012c8  9f890a00  addli r19, r21, 0
0012cc  5b010000  j 8
0012d0  97994a01  or r19, r21, r20
0012d4  178d7001  and r26, r1, r23
0012d8  9386ac05  setlt.u r13, r25, r26
0012dc  3bb00600  bneq r13, zero, 12
0012e0  1f8b0000  addli r22, r1, 0
0012e4  5b010000  j 8
0012e8  179b4001  or r22, r1, r20
0012ec  17087c01  and r16, r24, r23
0012f0  93860c05  setlt.u r13, r25, r16
0012f4  3bd00600  bneq r13, zero, 20
0012f8  9f060c00  addli r13, r24, 0
0012fc  13080e05  setlt.u r16, r28, r16
001300  37500800  beq r16, zero, 20
001304  db040000  j 36
001308  97164c01  or r13, r24, r20
00130c  13080e05  setlt.u r16, r28, r16
001310  3b600800  bneq r16, zero, 24
001314  9b460c01  srli r13, r24, 16
001318  9b861600  andi r13, r13, 1
00131c  8b16dc10  add.s r13, r24, r13
001320  8b96b611  add.s r13, r13, r27
001324  97864600  and r13, r13, r4
001328  1308ae05  setlt.u r16, r28, r26
00132c  37600800  beq r16, zero, 24
001330  9300ce04  setlt.u r1, r28, r12
001334  b7b00000  beq r1, zero, 44
001338  93002e05  setlt.u r1, r28, r18
00133c  bbbc00fe  bneq r1, zero, -212
001340  db070000  j 60
001344  1bc80001  srli r16, r1, 16
001348  1b081800  andi r16, r16, 1
00134c  8b900011  add.s r1, r1, r16
001350  8b90b011  add.s r1, r1, r27
001354  178b4000  and r22, r1, r4
001358  9300ce04  setlt.u r1, r28, r12
00135c  3bff00fe  bneq r1, zero, -36
001360  9bc00a01  srli r1, r21, 16
001364  9b801000  andi r1, r1, 1
001368  8b901a10  add.s r1, r21, r1
00136c  8b90b011  add.s r1, r1, r27
001370  97894000  and r19, r1, r4
001374  93002e05  setlt.u r1, r28, r18
001378  bbcb00fe  bneq r1, zero, -272
00137c  9bc00101  srli r1, r3, 16
001380  9b801000  andi r1, r1, 1
001384  8b901110  add.s r1, r3, r1
001388  8b90b011  add.s r1, r1, r27
00138c  97824000  and r5, r1, r4
001390  5bdbffff  j -296
001394  00200100  mfence { sm }
001398  00390002  core_id r18
00139c  eb5a8ffe  load.d r[22:23], -24(r30)
0013a0  b3000028  zext_int2long r[2:3], zero
0013a4  73381ffe  store.d r[2:3], -16(r30)
0013a8  e340afff  loadli.w r1,  -44(r30)
0013ac  b7f50000  beq r1, zero, 380
0013b0  9f007000  addli r1, zero, 56
0013b4  3d000000  xfence
0013b8  00a00300  mfence { lm, sm, gm }
0013bc  33810028  zext_int2long r[3:4], r1
0013c0  5b040000  j 32
0013c4  9f707000  addli r1, zero, 63
0013c8  eb528fff  load.d r[6:7], -8(r30)
0013cc  9f740000  addli r9, zero, 7
0013d0  b3800028  zext_int2long r[2:3], r1
0013d4  93a01204  setlt.ul r1, r[6:7], r[2:3]
0013d8  27910200  addli.d r[3:4], r[6:7], 1
0013dc  37850000  beq r1, zero, 320
0013e0  733c2ffe  store.d r[3:4], -8(r30)
0013e4  17339102  sll.d r[7:8], r[3:4], r9
0013e8  6b510fff  load.d r[3:4], -16(r30)
0013ec  db040000  j 36
0013f0  27410100  addli.d r[3:4], r[3:4], 4
0013f4  8b142411  add.s r9, r8, r18
0013f8  9320e102  setneq.d r1, r[3:4], r[15:16]
0013fc  73e65400  stores.w r5, 12(r9)
001400  73e45401  stores.w r21, 8(r9)
001404  73e28401  stores.w r24, 4(r9)
001408  73e00401  stores.w r16, 0(r9)
00140c  b7ee00fe  beq r1, zero, -72
001410  8b246110  add.ul r[10:11], r[3:4], r[7:8]
001414  1bb92400  slli r18, r9, 2
001418  8b922511  add.s r5, r11, r18
00141c  6fcdc200  loads.w r26, 12(r5)
001420  efc60200  loads.w r13, 0(r5)
001424  efc04200  loads.w r1, 4(r5)
001428  6fcb8200  loads.w r22, 8(r5)
00142c  97097d01  and r19, r26, r23
001430  93823c05  setlt.u r5, r25, r19
001434  3bb00200  bneq r5, zero, 12
001438  9f020d00  addli r5, r26, 0
00143c  5b010000  j 8
001440  97124d01  or r5, r26, r20
001444  17067b01  and r12, r22, r23
001448  9384cc04  setlt.u r9, r25, r12
00144c  3bb00400  bneq r9, zero, 12
001450  9f0a0b00  addli r21, r22, 0
001454  5b010000  j 8
001458  971a4b01  or r21, r22, r20
00145c  97887001  and r17, r1, r23
001460  93841c05  setlt.u r9, r25, r17
001464  3bb00400  bneq r9, zero, 12
001468  1f8c0000  addli r24, r1, 0
00146c  5b010000  j 8
001470  179c4001  or r24, r1, r20
001474  97847601  and r9, r13, r23
001478  13859c04  setlt.u r10, r25, r9
00147c  3b500500  bneq r10, zero, 20
001480  1f880600  addli r16, r13, 0
001484  93049e04  setlt.u r9, r28, r9
001488  37d00400  beq r9, zero, 20
00148c  db040000  j 36
001490  17984601  or r16, r13, r20
001494  93049e04  setlt.u r9, r28, r9
001498  3be00400  bneq r9, zero, 24
00149c  9bc40601  srli r9, r13, 16
0014a0  9b841400  andi r9, r9, 1
0014a4  8b949610  add.s r9, r13, r9
0014a8  8b94b411  add.s r9, r9, r27
0014ac  17884400  and r16, r9, r4
0014b0  93041e05  setlt.u r9, r28, r17
0014b4  37e00400  beq r9, zero, 24
0014b8  9300ce04  setlt.u r1, r28, r12
0014bc  b7b00000  beq r1, zero, 44
0014c0  93003e05  setlt.u r1, r28, r19
0014c4  bbbc00fe  bneq r1, zero, -212
0014c8  db070000  j 60
0014cc  9bc40001  srli r9, r1, 16
0014d0  9b841400  andi r9, r9, 1
0014d4  8b909010  add.s r1, r1, r9
0014d8  8b90b011  add.s r1, r1, r27
0014dc  178c4000  and r24, r1, r4
0014e0  9300ce04  setlt.u r1, r28, r12
0014e4  3bff00fe  bneq r1, zero, -36
0014e8  9b400b01  srli r1, r22, 16
0014ec  9b801000  andi r1, r1, 1
0014f0  8b101b10  add.s r1, r22, r1
0014f4  8b90b011  add.s r1, r1, r27
0014f8  978a4000  and r21, r1, r4
0014fc  93003e05  setlt.u r1, r28, r19
001500  bbcb00fe  bneq r1, zero, -272
001504  9b400d01  srli r1, r26, 16
001508  9b801000  andi r1, r1, 1
00150c  8b101d10  add.s r1, r26, r1
001510  8b90b011  add.s r1, r1, r27
001514  97824000  and r5, r1, r4
001518  5bdbffff  j -296
00151c  00200100  mfence { sm }
001520  00390002  core_id r18
001524  eb5a8ffe  load.d r[22:23], -24(r30)
001528  9f70f001  addli r1, zero, 255
00152c  80a20004  csr_set csr5, r1
001530  00e00200  sync_core
001534  e340cfff  loadli.w r1,  -28(r30)
001538  bb9200f6  bneq r1, zero, -4956
00153c  bb4209f6  bneq r18, zero, -4944
001540  e3407fff  loadli.w r1,  -68(r30)
001544  1f010007  addli r2, zero, 896
001548  eb540fff  load.d r[10:11], -16(r30)
00154c  1f068000  addli r12, zero, 64
001550  33010128  zext_int2long r[3:4], r2
001554  9bb07000  slli r1, r1, 7
001558  b3820028  zext_int2long r[6:7], r1
00155c  e3009fff  loadli.w r1,  -56(r30)
001560  0ba12240  min.ul r[3:4], r[6:7], r[3:4]
001564  9bb06000  slli r1, r1, 6
001568  b3930028  sext_int2long r[8:9], r1
00156c  a7000101  addli.d r[2:3], r[3:4], 128
001570  9f112000  addli r3, zero, 17
001574  8bb49340  min.sl r[10:11], r[8:9], r[10:11]
001578  8ba05048  max.ul r[2:3], r[2:3], r[6:7]
00157c  a7848400  addli.d r[10:11], r[10:11], 64
001580  8bb05018  sub.sl r[2:3], r[2:3], r[6:7]
001584  8bb27448  max.sl r[6:7], r[10:11], r[8:9]
001588  8ba0e040  min.ul r[2:3], r[2:3], r[15:16]
00158c  b3040628  zext_int2long r[10:11], r12
001590  eb560f01  load.d r[14:15], 16(r30)
001594  8bb27218  sub.sl r[6:7], r[6:7], r[8:9]
001598  97b33a02  sll.d r[8:9], r[22:23], r3
00159c  9f411000  addli r3, zero, 12
0015a0  8bb29240  min.sl r[6:7], r[6:7], r[10:11]
0015a4  eb540ffc  load.d r[10:11], -64(r30)
0015a8  8ba37610  add.ul r[8:9], r[14:15], r[8:9]
0015ac  7d900100  xwait r3, 0
0015b0  abc10300  lui r3, 60
0015b4  9f560000  addli r13, zero, 5
0015b8  9b910104  ori r3, r3, 64
0015bc  1d800600  lock zero, r13
0015c0  8ba39310  add.ul r[8:9], r[8:9], r[10:11]
0015c4  1f150000  addli r10, zero, 1
0015c8  9ff43000  addli r9, r1, 31
0015cc  9bb01000  slli r1, r1, 1
0015d0  1f010001  addli r2, zero, 128
0015d4  8b913510  add.s r3, r11, r3
0015d8  15050500  dma_cfg r10, r10, zero, 0
0015dc  9b80e003  andi r1, r1, 62
0015e0  15000502  dma_cfg zero, r10, zero, 1
0015e4  15040004  dma_cfg r8, zero, zero, 2
0015e8  9583c106  dma_cfg r7, r3, r12, 3
0015ec  9bc15400  srli r3, r9, 5
0015f0  9f740000  addli r9, zero, 7
0015f4  15063108  dma_cfg r12, r2, r3, 4
0015f8  1f010004  addli r2, zero, 512
0015fc  9f010010  addli r3, zero, 2048
001600  9501510a  dma_cfg r3, r2, r5, 5
001604  15001010  dma_cfg zero, zero, r1, 8
001608  35000000  dma_run zero
00160c  1500a00a  dma_cfg zero, zero, r10, 5
001610  9f501000  addli r1, zero, 13
001614  15000010  dma_cfg zero, zero, zero, 8
001618  1d900600  unlock r13
00161c  db79fdff  j -5172
001620  9f001000  addli r1, zero, 8
001624  7d900300  xwait r7, 0
001628  9f010000  addli r3, zero, 0
00162c  1f110000  addli r2, zero, 1
001630  9f321000  addli r5, zero, 11
001634  7d900000  xwait r1, 0
001638  9f100000  addli r1, zero, 1
00163c  7d900200  xwait r5, 0
001640  9bb2e100  slli r5, r3, 14
001644  9bb18100  slli r3, r3, 8
001648  1d800000  lock zero, r1
00164c  09036300  mm_cfg r6, r6, r6, 0
001650  9792b200  or r5, r5, r11
001654  9791b100  or r3, r3, r11
001658  89831304  mm_cfg r7, r7, r1, 2
00165c  a9015410  mm r3, r8, r5, 8
001660  9b021100  andi r5, r2, 1
001664  9f110000  addli r3, zero, 1
001668  1f010000  addli r2, zero, 0
00166c  1d900000  unlock r1
001670  3bcf02fe  bneq r5, zero, -48
001674  9f500000  addli r1, zero, 5
001678  674e0ffe  storeli.w zero, -28(r30)
00167c  674d0ffe  storeli.w zero, -44(r30)
001680  7d800000  xsignal r1, 0
001684  9f101000  addli r1, zero, 9
001688  7d800000  xsignal r1, 0
00168c  9f100000  addli r1, zero, 1
001690  670d1ffe  storeli.w r1, -48(r30)
001694  9f201000  addli r1, zero, 10
001698  7d800000  xsignal r1, 0
00169c  db36feff  j -3660
0016a0  1f211000  addli r2, zero, 10
0016a4  674d0ffe  storeli.w zero, -44(r30)
0016a8  670d0ffe  storeli.w zero, -48(r30)
0016ac  7d100100  xwait r2, 0
0016b0  1f110000  addli r2, zero, 1
0016b4  674e2ffe  storeli.w r2, -28(r30)
0016b8  7d900000  xwait r1, 0
0016bc  db32feff  j -3692
0016c0  674e0ffe  storeli.w zero, -28(r30)
0016c4  674d0ffe  storeli.w zero, -44(r30)
0016c8  670d0ffe  storeli.w zero, -48(r30)
0016cc  db30feff  j -3708
0016d0  7d000000  xsignal zero, 0
0016d4  bb600900  bneq r18, zero, 56
0016d8  9f200000  addli r1, zero, 2
0016dc  7d100000  xwait zero, 0
0016e0  7d100000  xwait zero, 0
0016e4  7d100000  xwait zero, 0
0016e8  7d100000  xwait zero, 0
0016ec  7d100000  xwait zero, 0
0016f0  7d100000  xwait zero, 0
0016f4  7d100000  xwait zero, 0
0016f8  7d100000  xwait zero, 0
0016fc  1d800000  lock zero, r1
001700  0d000020  ew_cfg zero, zero, zero, 16
001704  1d900000  unlock r1
001708  7d400000  xsignal_mode_cfg zero
00170c  9f8eae00  addli sp, sp, 80
001710  00a00300  mfence { lm, sm, gm }
001714  00100000  exit
001718  00100000  exit
00171c  00100000  exit
001720  00100000  exit
001724  00100000  exit
001728  00100000  exit
00172c  00100000  exit
001730  00100000  exit
001734  00100000  exit
001738  00100000  exit
00173c  00100000  exit
001740  00100000  exit
001744  00100000  exit
001748  00100000  exit
00174c  00100000  exit
001750  00100000  exit
001754  00100000  exit
001758  00100000  exit
00175c  00100000  exit
001760  00100000  exit
001764  00100000  exit
001768  00100000  exit
00176c  00100000  exit
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
