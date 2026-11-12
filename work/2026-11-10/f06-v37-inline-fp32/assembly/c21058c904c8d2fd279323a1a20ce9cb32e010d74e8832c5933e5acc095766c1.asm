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
0000b4  9f8edefe  addli sp, sp, -152
0000b8  9f100000  addli r1, zero, 1
0000bc  00340002  core_id r8
0000c0  1f8fbe00  addli r30, sp, 88
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600400  beq r8, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b0c0000  j 96
0000e0  1f210000  addli r2, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  abf1ffff  lui r3, 1048575
0000ec  1d000100  lock zero, r2
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b90f1ff  ori r1, r3, 4095
0000f8  1d100100  unlock r2
0000fc  1f111000  addli r2, zero, 9
000100  80a10004  csr_set csr3, r1
000104  9f500000  addli r1, zero, 5
000108  00d00100  sync_group
00010c  7d800000  xsignal r1, 0
000110  9f300000  addli r1, zero, 3
000114  7d800000  xsignal r1, 0
000118  7d000100  xsignal r2, 0
00011c  9f700000  addli r1, zero, 7
000120  1f012000  addli r2, zero, 16
000124  7d800000  xsignal r1, 0
000128  7d000100  xsignal r2, 0
00012c  9f301000  addli r1, zero, 11
000130  1f611000  addli r2, zero, 14
000134  7d800000  xsignal r1, 0
000138  7d000100  xsignal r2, 0
00013c  e3004f00  loadli.w r1,  32(r30)
000140  63414f00  loadli.w r2,  36(r30)
000144  00d20002  load_param_i r4, 1
000148  e3015f00  loadli.w r3,  40(r30)
00014c  8b101120  mul.s r1, r2, r1
000150  1f010200  addli r2, r4, 0
000154  0b913050  fmac.s r2, r1, r3
000158  8b913020  mul.s r3, r1, r3
00015c  1f71f1ff  addli r2, r2, -1
000160  0b114130  div.s r2, r2, r4
000164  00520002  load_param_i r4, 0
000168  8b104120  mul.s r1, r2, r4
00016c  0b114150  fmac.s r2, r2, r4
000170  0b113140  min.s r2, r2, r3
000174  4b2e110a  ble.s r2, r1, 6024
000178  33110128  sext_int2long r[3:4], r2
00017c  b3940028  sext_int2long r[10:11], r1
000180  9f131000  addli r7, zero, 9
000184  1f6e0000  addli r28, zero, 6
000188  1f160000  addli r12, zero, 1
00018c  9f460000  addli r13, zero, 4
000190  1f072000  addli r14, zero, 16
000194  9f058000  addli r11, zero, 64
000198  ab4a0400  lui r21, 68
00019c  2b0d4000  lui r26, 1024
0001a0  ab09807f  lui r19, 522240
0001a4  2b0affff  lui r20, 1048560
0001a8  ab4d0200  lui r27, 36
0001ac  ab070200  lui r15, 32
0001b0  73382ffa  store.d r[3:4], -80(r30)
0001b4  1f510000  addli r2, zero, 5
0001b8  93002400  seteq r1, r8, r2
0001bc  2bf17f7f  lui r2, 522239
0001c0  9b1cf1ff  ori r25, r2, 4095
0001c4  e74a1ffe  storeli.w r1, -84(r30)
0001c8  abf0ff7f  lui r1, 524287
0001cc  1b92f0ff  ori r4, r1, 4095
0001d0  ab700000  lui r1, 7
0001d4  9b92f0ff  ori r5, r1, 4095
0001d8  db080000  j 68
0001dc  9f601000  addli r1, zero, 14
0001e0  00340002  core_id r8
0001e4  1f6e0000  addli r28, zero, 6
0001e8  1f160000  addli r12, zero, 1
0001ec  9f460000  addli r13, zero, 4
0001f0  1f072000  addli r14, zero, 16
0001f4  9f058000  addli r11, zero, 64
0001f8  ab070200  lui r15, 32
0001fc  7d800000  xsignal r1, 0
000200  9f701000  addli r1, zero, 15
000204  7d800000  xsignal r1, 0
000208  eb540ffe  load.d r[10:11], -32(r30)
00020c  eb500ffb  load.d r[2:3], -80(r30)
000210  a7940400  addli.d r[10:11], r[10:11], 1
000214  93b01404  setlt.sl r1, r[10:11], r[2:3]
000218  b79b000a  beq r1, zero, 5860
00021c  e3005f00  loadli.w r1,  40(r30)
000220  63414f00  loadli.w r2,  36(r30)
000224  73309ffe  store.d r[10:11], -32(r30)
000228  8b901430  div.s r1, r9, r1
00022c  9f010100  addli r3, r2, 0
000230  0b913038  mod.s r2, r1, r3
000234  8b903030  div.s r1, r1, r3
000238  33110128  sext_int2long r[3:4], r2
00023c  33980028  sext_int2long r[17:18], r1
000240  17317102  sll.d r[3:4], r[3:4], r7
000244  733c0ffb  store.d r[17:18], -72(r30)
000248  73302ffc  store.d r[3:4], -64(r30)
00024c  3b45c403  bneq r8, r28, 1360
000250  27040100  addli.d r[9:10], r[3:4], 0
000254  9f310000  addli r3, zero, 3
000258  1f530000  addli r6, zero, 5
00025c  e74e0ffe  storeli.w zero, -20(r30)
000260  e70d0ffe  storeli.w zero, -40(r30)
000264  e74d0ffe  storeli.w zero, -36(r30)
000268  670d0ffe  storeli.w zero, -48(r30)
00026c  e74c0ffe  storeli.w zero, -52(r30)
000270  1f250000  addli r10, zero, 2
000274  9f501000  addli r1, zero, 13
000278  6b570f00  load.d r[15:16], 0(r30)
00027c  9f058000  addli r11, zero, 64
000280  9f4b1000  addli r23, zero, 12
000284  1f7c1000  addli r24, zero, 15
000288  1f292000  addli r18, zero, 18
00028c  1f3b2000  addli r22, zero, 19
000290  7d900100  xwait r3, 0
000294  1d000300  lock zero, r6
000298  97301802  sll.d r[2:3], r[17:18], r1
00029c  1f581000  addli r16, zero, 13
0002a0  9f080001  addli r17, zero, 128
0002a4  15000014  dma_cfg zero, zero, zero, 10
0002a8  1500c014  dma_cfg zero, zero, r12, 10
0002ac  8b201710  add.ul r[2:3], r[15:16], r[2:3]
0002b0  1f072000  addli r14, zero, 16
0002b4  9f673000  addli r15, zero, 30
0002b8  1500a014  dma_cfg zero, zero, r10, 10
0002bc  15003014  dma_cfg zero, zero, r3, 10
0002c0  9f710000  addli r3, zero, 7
0002c4  1500d014  dma_cfg zero, zero, r13, 10
0002c8  15006014  dma_cfg zero, zero, r6, 10
0002cc  1500c015  dma_cfg zero, zero, r28, 10
0002d0  1f3e0000  addli r28, zero, 3
0002d4  15003014  dma_cfg zero, zero, r3, 10
0002d8  9f011000  addli r3, zero, 8
0002dc  15003014  dma_cfg zero, zero, r3, 10
0002e0  9f211000  addli r3, zero, 10
0002e4  15007014  dma_cfg zero, zero, r7, 10
0002e8  15003014  dma_cfg zero, zero, r3, 10
0002ec  9f311000  addli r3, zero, 11
0002f0  15003014  dma_cfg zero, zero, r3, 10
0002f4  9f411000  addli r3, zero, 12
0002f8  15003014  dma_cfg zero, zero, r3, 10
0002fc  9f611000  addli r3, zero, 14
000300  15000015  dma_cfg zero, zero, r16, 10
000304  1f082000  addli r16, zero, 16
000308  15003014  dma_cfg zero, zero, r3, 10
00030c  9f711000  addli r3, zero, 15
000310  15003014  dma_cfg zero, zero, r3, 10
000314  9f112000  addli r3, zero, 17
000318  1500e014  dma_cfg zero, zero, r14, 10
00031c  1f773000  addli r14, zero, 31
000320  15003014  dma_cfg zero, zero, r3, 10
000324  9f212000  addli r3, zero, 18
000328  15003014  dma_cfg zero, zero, r3, 10
00032c  9f312000  addli r3, zero, 19
000330  15003014  dma_cfg zero, zero, r3, 10
000334  9f412000  addli r3, zero, 20
000338  15003014  dma_cfg zero, zero, r3, 10
00033c  9f512000  addli r3, zero, 21
000340  15003014  dma_cfg zero, zero, r3, 10
000344  9f612000  addli r3, zero, 22
000348  15003014  dma_cfg zero, zero, r3, 10
00034c  9f712000  addli r3, zero, 23
000350  15003014  dma_cfg zero, zero, r3, 10
000354  9f013000  addli r3, zero, 24
000358  15003014  dma_cfg zero, zero, r3, 10
00035c  9f113000  addli r3, zero, 25
000360  15003014  dma_cfg zero, zero, r3, 10
000364  9f213000  addli r3, zero, 26
000368  15003014  dma_cfg zero, zero, r3, 10
00036c  9f313000  addli r3, zero, 27
000370  15003014  dma_cfg zero, zero, r3, 10
000374  9f413000  addli r3, zero, 28
000378  15003014  dma_cfg zero, zero, r3, 10
00037c  9f513000  addli r3, zero, 29
000380  15003014  dma_cfg zero, zero, r3, 10
000384  9f613000  addli r3, zero, 30
000388  15003014  dma_cfg zero, zero, r3, 10
00038c  9f713000  addli r3, zero, 31
000390  15003014  dma_cfg zero, zero, r3, 10
000394  9f010002  addli r3, zero, 256
000398  15060600  dma_cfg r12, r12, zero, 0
00039c  15060002  dma_cfg r12, zero, zero, 1
0003a0  15000004  dma_cfg zero, zero, zero, 2
0003a4  1500b006  dma_cfg zero, zero, r11, 3
0003a8  9508a008  dma_cfg r17, zero, r10, 4
0003ac  9501b00a  dma_cfg r3, zero, r11, 5
0003b0  15000010  dma_cfg zero, zero, zero, 8
0003b4  35000000  dma_run zero
0003b8  1500c00a  dma_cfg zero, zero, r12, 5
0003bc  15000010  dma_cfg zero, zero, zero, 8
0003c0  1d100300  unlock r6
0003c4  1d800600  lock zero, r13
0003c8  15060600  dma_cfg r12, r12, zero, 0
0003cc  15000104  dma_cfg zero, r2, zero, 2
0003d0  9585b006  dma_cfg r11, r1, r11, 3
0003d4  9f600000  addli r1, zero, 6
0003d8  9588a508  dma_cfg r17, r11, r10, 4
0003dc  9581b80a  dma_cfg r3, r17, r11, 5
0003e0  15000010  dma_cfg zero, zero, zero, 8
0003e4  35000000  dma_run zero
0003e8  1500c00a  dma_cfg zero, zero, r12, 5
0003ec  15000010  dma_cfg zero, zero, zero, 8
0003f0  1d900600  unlock r13
0003f4  1d000300  lock zero, r6
0003f8  15000014  dma_cfg zero, zero, zero, 10
0003fc  1500c014  dma_cfg zero, zero, r12, 10
000400  1500a014  dma_cfg zero, zero, r10, 10
000404  1500c015  dma_cfg zero, zero, r28, 10
000408  1500d014  dma_cfg zero, zero, r13, 10
00040c  15006014  dma_cfg zero, zero, r6, 10
000410  15001014  dma_cfg zero, zero, r1, 10
000414  9f700000  addli r1, zero, 7
000418  15001014  dma_cfg zero, zero, r1, 10
00041c  9f001000  addli r1, zero, 8
000420  15001014  dma_cfg zero, zero, r1, 10
000424  9f201000  addli r1, zero, 10
000428  15007014  dma_cfg zero, zero, r7, 10
00042c  15001014  dma_cfg zero, zero, r1, 10
000430  9f301000  addli r1, zero, 11
000434  15001014  dma_cfg zero, zero, r1, 10
000438  9f501000  addli r1, zero, 13
00043c  15007015  dma_cfg zero, zero, r23, 10
000440  9f7b2000  addli r23, zero, 23
000444  15001014  dma_cfg zero, zero, r1, 10
000448  9f601000  addli r1, zero, 14
00044c  15001014  dma_cfg zero, zero, r1, 10
000450  9f102000  addli r1, zero, 17
000454  15008015  dma_cfg zero, zero, r24, 10
000458  1f0c3000  addli r24, zero, 24
00045c  15000015  dma_cfg zero, zero, r16, 10
000460  1f482000  addli r16, zero, 20
000464  15001014  dma_cfg zero, zero, r1, 10
000468  9f103000  addli r1, zero, 25
00046c  15002015  dma_cfg zero, zero, r18, 10
000470  1f592000  addli r18, zero, 21
000474  15006015  dma_cfg zero, zero, r22, 10
000478  1f6b2000  addli r22, zero, 22
00047c  15000015  dma_cfg zero, zero, r16, 10
000480  15002015  dma_cfg zero, zero, r18, 10
000484  15006015  dma_cfg zero, zero, r22, 10
000488  15007015  dma_cfg zero, zero, r23, 10
00048c  15008015  dma_cfg zero, zero, r24, 10
000490  15001014  dma_cfg zero, zero, r1, 10
000494  9f203000  addli r1, zero, 26
000498  15001014  dma_cfg zero, zero, r1, 10
00049c  9f303000  addli r1, zero, 27
0004a0  15001014  dma_cfg zero, zero, r1, 10
0004a4  9f403000  addli r1, zero, 28
0004a8  15001014  dma_cfg zero, zero, r1, 10
0004ac  9f503000  addli r1, zero, 29
0004b0  15001014  dma_cfg zero, zero, r1, 10
0004b4  9730c402  sll.d r[2:3], r[9:10], r12
0004b8  1f640000  addli r8, zero, 6
0004bc  9f242000  addli r9, zero, 18
0004c0  1500f014  dma_cfg zero, zero, r15, 10
0004c4  1500e014  dma_cfg zero, zero, r14, 10
0004c8  6b570f01  load.d r[15:16], 16(r30)
0004cc  15060600  dma_cfg r12, r12, zero, 0
0004d0  15060002  dma_cfg r12, zero, zero, 1
0004d4  15000004  dma_cfg zero, zero, zero, 2
0004d8  8b201710  add.ul r[2:3], r[15:16], r[2:3]
0004dc  9f372000  addli r15, zero, 19
0004e0  1f173000  addli r14, zero, 25
0004e4  1500b006  dma_cfg zero, zero, r11, 3
0004e8  9508a008  dma_cfg r17, zero, r10, 4
0004ec  9501b00a  dma_cfg r3, zero, r11, 5
0004f0  9f311000  addli r3, zero, 11
0004f4  15000010  dma_cfg zero, zero, zero, 8
0004f8  35000000  dma_run zero
0004fc  1500c00a  dma_cfg zero, zero, r12, 5
000500  15000010  dma_cfg zero, zero, zero, 8
000504  1d100300  unlock r6
000508  7d000500  xsignal r10, 0
00050c  7d900100  xwait r3, 0
000510  1d000300  lock zero, r6
000514  15000014  dma_cfg zero, zero, zero, 10
000518  1500c014  dma_cfg zero, zero, r12, 10
00051c  1500a014  dma_cfg zero, zero, r10, 10
000520  1500c015  dma_cfg zero, zero, r28, 10
000524  1f5e1000  addli r28, zero, 13
000528  1500d014  dma_cfg zero, zero, r13, 10
00052c  15006014  dma_cfg zero, zero, r6, 10
000530  15008014  dma_cfg zero, zero, r8, 10
000534  1f740000  addli r8, zero, 7
000538  15008014  dma_cfg zero, zero, r8, 10
00053c  1f041000  addli r8, zero, 8
000540  15008014  dma_cfg zero, zero, r8, 10
000544  1f241000  addli r8, zero, 10
000548  15007014  dma_cfg zero, zero, r7, 10
00054c  15008014  dma_cfg zero, zero, r8, 10
000550  1f142000  addli r8, zero, 17
000554  15003014  dma_cfg zero, zero, r3, 10
000558  9f411000  addli r3, zero, 12
00055c  15003014  dma_cfg zero, zero, r3, 10
000560  9f511000  addli r3, zero, 13
000564  15003014  dma_cfg zero, zero, r3, 10
000568  9f611000  addli r3, zero, 14
00056c  15003014  dma_cfg zero, zero, r3, 10
000570  9f711000  addli r3, zero, 15
000574  15003014  dma_cfg zero, zero, r3, 10
000578  9f012000  addli r3, zero, 16
00057c  15003014  dma_cfg zero, zero, r3, 10
000580  15008014  dma_cfg zero, zero, r8, 10
000584  15009014  dma_cfg zero, zero, r9, 10
000588  1500f014  dma_cfg zero, zero, r15, 10
00058c  15000015  dma_cfg zero, zero, r16, 10
000590  1f582000  addli r16, zero, 21
000594  15002015  dma_cfg zero, zero, r18, 10
000598  1f692000  addli r18, zero, 22
00059c  15006015  dma_cfg zero, zero, r22, 10
0005a0  1f7b2000  addli r22, zero, 23
0005a4  15007015  dma_cfg zero, zero, r23, 10
0005a8  9f0b3000  addli r23, zero, 24
0005ac  15008015  dma_cfg zero, zero, r24, 10
0005b0  1f0c2000  addli r24, zero, 16
0005b4  1500e014  dma_cfg zero, zero, r14, 10
0005b8  1f273000  addli r14, zero, 26
0005bc  1500e014  dma_cfg zero, zero, r14, 10
0005c0  1f373000  addli r14, zero, 27
0005c4  1500e014  dma_cfg zero, zero, r14, 10
0005c8  1f473000  addli r14, zero, 28
0005cc  1500e014  dma_cfg zero, zero, r14, 10
0005d0  1f573000  addli r14, zero, 29
0005d4  1500e014  dma_cfg zero, zero, r14, 10
0005d8  1f673000  addli r14, zero, 30
0005dc  1500e014  dma_cfg zero, zero, r14, 10
0005e0  1f773000  addli r14, zero, 31
0005e4  1500e014  dma_cfg zero, zero, r14, 10
0005e8  1f070010  addli r14, zero, 2048
0005ec  15060600  dma_cfg r12, r12, zero, 0
0005f0  15060002  dma_cfg r12, zero, zero, 1
0005f4  15000004  dma_cfg zero, zero, zero, 2
0005f8  950ab006  dma_cfg r21, zero, r11, 3
0005fc  95083008  dma_cfg r17, zero, r3, 4
000600  9b910a04  ori r3, r21, 64
000604  1507c00a  dma_cfg r14, zero, r12, 5
000608  15000010  dma_cfg zero, zero, zero, 8
00060c  35000000  dma_run zero
000610  1500c00a  dma_cfg zero, zero, r12, 5
000614  15000010  dma_cfg zero, zero, zero, 8
000618  1d100300  unlock r6
00061c  1d800600  lock zero, r13
000620  15060600  dma_cfg r12, r12, zero, 0
000624  15000104  dma_cfg zero, r2, zero, 2
000628  9581b006  dma_cfg r3, r1, r11, 3
00062c  9f000008  addli r1, zero, 1024
000630  1f311000  addli r2, zero, 11
000634  e3419fff  loadli.w r3,  -52(r30)
000638  95888509  dma_cfg r17, r11, r24, 4
00063c  1587c00a  dma_cfg r14, r1, r12, 5
000640  9f300000  addli r1, zero, 3
000644  15000010  dma_cfg zero, zero, zero, 8
000648  35000000  dma_run zero
00064c  1500c00a  dma_cfg zero, zero, r12, 5
000650  15000010  dma_cfg zero, zero, zero, 8
000654  1d900600  unlock r13
000658  1d000300  lock zero, r6
00065c  15000014  dma_cfg zero, zero, zero, 10
000660  1500c014  dma_cfg zero, zero, r12, 10
000664  1500a014  dma_cfg zero, zero, r10, 10
000668  15001014  dma_cfg zero, zero, r1, 10
00066c  9f600000  addli r1, zero, 6
000670  1500d014  dma_cfg zero, zero, r13, 10
000674  15006014  dma_cfg zero, zero, r6, 10
000678  15001014  dma_cfg zero, zero, r1, 10
00067c  9f700000  addli r1, zero, 7
000680  15001014  dma_cfg zero, zero, r1, 10
000684  9f001000  addli r1, zero, 8
000688  15001014  dma_cfg zero, zero, r1, 10
00068c  9f201000  addli r1, zero, 10
000690  15007014  dma_cfg zero, zero, r7, 10
000694  15001014  dma_cfg zero, zero, r1, 10
000698  15002014  dma_cfg zero, zero, r2, 10
00069c  1f411000  addli r2, zero, 12
0006a0  15002014  dma_cfg zero, zero, r2, 10
0006a4  1f611000  addli r2, zero, 14
0006a8  1500c015  dma_cfg zero, zero, r28, 10
0006ac  15002014  dma_cfg zero, zero, r2, 10
0006b0  1f711000  addli r2, zero, 15
0006b4  15002014  dma_cfg zero, zero, r2, 10
0006b8  1f412000  addli r2, zero, 20
0006bc  15008015  dma_cfg zero, zero, r24, 10
0006c0  15008014  dma_cfg zero, zero, r8, 10
0006c4  15009014  dma_cfg zero, zero, r9, 10
0006c8  1500f014  dma_cfg zero, zero, r15, 10
0006cc  15002014  dma_cfg zero, zero, r2, 10
0006d0  1f113000  addli r2, zero, 25
0006d4  15000015  dma_cfg zero, zero, r16, 10
0006d8  15002015  dma_cfg zero, zero, r18, 10
0006dc  15006015  dma_cfg zero, zero, r22, 10
0006e0  15007015  dma_cfg zero, zero, r23, 10
0006e4  15002014  dma_cfg zero, zero, r2, 10
0006e8  1f213000  addli r2, zero, 26
0006ec  15002014  dma_cfg zero, zero, r2, 10
0006f0  1f313000  addli r2, zero, 27
0006f4  15002014  dma_cfg zero, zero, r2, 10
0006f8  1f413000  addli r2, zero, 28
0006fc  15002014  dma_cfg zero, zero, r2, 10
000700  1f513000  addli r2, zero, 29
000704  15002014  dma_cfg zero, zero, r2, 10
000708  1f613000  addli r2, zero, 30
00070c  15002014  dma_cfg zero, zero, r2, 10
000710  1f713000  addli r2, zero, 31
000714  15002014  dma_cfg zero, zero, r2, 10
000718  15060600  dma_cfg r12, r12, zero, 0
00071c  15060002  dma_cfg r12, zero, zero, 1
000720  15000004  dma_cfg zero, zero, zero, 2
000724  950ab006  dma_cfg r21, zero, r11, 3
000728  95088009  dma_cfg r17, zero, r24, 4
00072c  1507c00a  dma_cfg r14, zero, r12, 5
000730  15000010  dma_cfg zero, zero, zero, 8
000734  35000000  dma_run zero
000738  1500c00a  dma_cfg zero, zero, r12, 5
00073c  15000010  dma_cfg zero, zero, zero, 8
000740  1d100300  unlock r6
000744  7d800000  xsignal r1, 0
000748  e3405fff  loadli.w r1,  -84(r30)
00074c  674d1ffe  storeli.w r1, -44(r30)
000750  9f70f001  addli r1, zero, 255
000754  3d000000  xfence
000758  00a00300  mfence { lm, sm, gm }
00075c  80a20004  csr_set csr5, r1
000760  9f000004  addli r1, zero, 512
000764  00e00200  sync_core
000768  b3870028  zext_int2long r[16:17], r1
00076c  80300002  core_id r1
000770  37d20000  beq r1, zero, 148
000774  3bd80100  bneq r3, zero, 532
000778  e300afff  loadli.w r1,  -48(r30)
00077c  3bbe0000  bneq r1, zero, 908
000780  e340dfff  loadli.w r1,  -20(r30)
000784  3b940002  bneq r1, zero, 1284
000788  e300bfff  loadli.w r1,  -40(r30)
00078c  bbf90002  bneq r1, zero, 1660
000790  e340afff  loadli.w r1,  -44(r30)
000794  bbdf0002  bneq r1, zero, 2036
000798  5b2d0100  j 2408
00079c  9f300000  addli r1, zero, 3
0007a0  3ff48006  blt.s r1, r8, 3356
0007a4  3738c406  beq r8, r12, 3596
0007a8  9f200000  addli r1, zero, 2
0007ac  bb751406  bneq r8, r1, 3452
0007b0  1f210000  addli r2, zero, 2
0007b4  9f500000  addli r1, zero, 5
0007b8  e74e0ffe  storeli.w zero, -20(r30)
0007bc  e70d0ffe  storeli.w zero, -40(r30)
0007c0  e74d0ffe  storeli.w zero, -36(r30)
0007c4  9f010000  addli r3, zero, 0
0007c8  7d100100  xwait r2, 0
0007cc  7d900000  xwait r1, 0
0007d0  1d000000  lock zero, zero
0007d4  9f300000  addli r1, zero, 3
0007d8  01010000  ds_cfg r2, zero, 0
0007dc  81050002  ds_cfg r11, zero, 1
0007e0  8105001c  ds_cfg r11, zero, 14
0007e4  8105001a  ds_cfg r11, zero, 13
0007e8  2110b002  shuffle_batch zero, zero, r11, 1
0007ec  1d100000  unlock zero
0007f0  7d800000  xsignal r1, 0
0007f4  9f100000  addli r1, zero, 1
0007f8  670d1ffe  storeli.w r1, -48(r30)
0007fc  7d800600  xsignal r13, 0
000800  5be9ffff  j -184
000804  e74c3ffe  storeli.w r3, -52(r30)
000808  b3000028  zext_int2long r[2:3], zero
00080c  3d000000  xfence
000810  00a00300  mfence { lm, sm, gm }
000814  73381ffe  store.d r[2:3], -16(r30)
000818  27810000  addli.d r[3:4], r[2:3], 0
00081c  5b040000  j 32
000820  9f700000  addli r1, zero, 7
000824  6b538fff  load.d r[7:8], -8(r30)
000828  b3800028  zext_int2long r[2:3], r1
00082c  93201304  setlt.ul r1, r[7:8], r[2:3]
000830  27110300  addli.d r[3:4], r[7:8], 1
000834  9f131000  addli r7, zero, 9
000838  37950000  beq r1, zero, 324
00083c  97357102  sll.d r[12:13], r[3:4], r7
000840  eb530fff  load.d r[8:9], -16(r30)
000844  733c2ffe  store.d r[3:4], -8(r30)
000848  db040000  j 36
00084c  a7c30300  addli.d r[8:9], r[8:9], 4
000850  0b11bc11  add.s r2, r24, r27
000854  93a0f302  setneq.d r1, r[8:9], r[16:17]
000858  73669100  stores.w r9, 12(r2)
00085c  7364c101  stores.w r28, 8(r2)
000860  73627101  stores.w r23, 4(r2)
000864  73601101  stores.w r17, 0(r2)
000868  b7ee00fe  beq r1, zero, -72
00086c  8ba0b310  add.ul r[2:3], r[8:9], r[12:13]
000870  1bbc2000  slli r24, r1, 2
000874  9b900a80  ori r1, r21, 2048
000878  8b101c10  add.s r1, r24, r1
00087c  6fcbc000  loads.w r22, 12(r1)
000880  6fc70000  loads.w r14, 0(r1)
000884  6fc34000  loads.w r6, 4(r1)
000888  efc18000  loads.w r3, 8(r1)
00088c  97064b00  and r13, r22, r4
000890  9380d904  setlt.u r1, r19, r13
000894  3bb00000  bneq r1, zero, 12
000898  9f040b00  addli r9, r22, 0
00089c  5b010000  j 8
0008a0  9714ab01  or r9, r22, r26
0008a4  17854100  and r10, r3, r4
0008a8  9380a904  setlt.u r1, r19, r10
0008ac  3bb00000  bneq r1, zero, 12
0008b0  1f8e0100  addli r28, r3, 0
0008b4  5b010000  j 8
0008b8  179ea101  or r28, r3, r26
0008bc  17094300  and r18, r6, r4
0008c0  93802905  setlt.u r1, r19, r18
0008c4  3bb00000  bneq r1, zero, 12
0008c8  9f0b0300  addli r23, r6, 0
0008cc  5b010000  j 8
0008d0  971ba301  or r23, r6, r26
0008d4  97004700  and r1, r14, r4
0008d8  13811904  setlt.u r2, r19, r1
0008dc  3b500100  bneq r2, zero, 20
0008e0  9f080700  addli r17, r14, 0
0008e4  93801c04  setlt.u r1, r25, r1
0008e8  37d00000  beq r1, zero, 20
0008ec  db040000  j 36
0008f0  9718a701  or r17, r14, r26
0008f4  93801c04  setlt.u r1, r25, r1
0008f8  3be00000  bneq r1, zero, 24
0008fc  9b400701  srli r1, r14, 16
000900  9b801000  andi r1, r1, 1
000904  8b101710  add.s r1, r14, r1
000908  8b905010  add.s r1, r1, r5
00090c  97884001  and r17, r1, r20
000910  93802c05  setlt.u r1, r25, r18
000914  37e00000  beq r1, zero, 24
000918  9380ac04  setlt.u r1, r25, r10
00091c  b7b00000  beq r1, zero, 44
000920  9380dc04  setlt.u r1, r25, r13
000924  bbac00fe  bneq r1, zero, -216
000928  db070000  j 60
00092c  9b400301  srli r1, r6, 16
000930  9b801000  andi r1, r1, 1
000934  8b101310  add.s r1, r6, r1
000938  8b905010  add.s r1, r1, r5
00093c  978b4001  and r23, r1, r20
000940  9380ac04  setlt.u r1, r25, r10
000944  3bff00fe  bneq r1, zero, -36
000948  9bc00101  srli r1, r3, 16
00094c  9b801000  andi r1, r1, 1
000950  8b901110  add.s r1, r3, r1
000954  8b905010  add.s r1, r1, r5
000958  178e4001  and r28, r1, r20
00095c  9380dc04  setlt.u r1, r25, r13
000960  bbbb00fe  bneq r1, zero, -276
000964  9b400b01  srli r1, r22, 16
000968  9b801000  andi r1, r1, 1
00096c  8b101b10  add.s r1, r22, r1
000970  8b905010  add.s r1, r1, r5
000974  97844001  and r9, r1, r20
000978  dbdaffff  j -300
00097c  00200100  mfence { sm }
000980  e3419fff  loadli.w r3,  -52(r30)
000984  b7d701fe  beq r3, zero, -524
000988  9f001000  addli r1, zero, 8
00098c  3d000000  xfence
000990  00a00300  mfence { lm, sm, gm }
000994  33810028  zext_int2long r[3:4], r1
000998  5b040000  j 32
00099c  9f701000  addli r1, zero, 15
0009a0  6b538fff  load.d r[7:8], -8(r30)
0009a4  b3800028  zext_int2long r[2:3], r1
0009a8  93201304  setlt.ul r1, r[7:8], r[2:3]
0009ac  27110300  addli.d r[3:4], r[7:8], 1
0009b0  9f131000  addli r7, zero, 9
0009b4  37a50000  beq r1, zero, 328
0009b8  9f101000  addli r1, zero, 9
0009bc  b3050028  zext_int2long r[12:13], zero
0009c0  733c2ffe  store.d r[3:4], -8(r30)
0009c4  17331102  sll.d r[7:8], r[3:4], r1
0009c8  db040000  j 36
0009cc  a7c50500  addli.d r[12:13], r[12:13], 4
0009d0  0b11b411  add.s r2, r8, r27
0009d4  93a0f502  setneq.d r1, r[12:13], r[16:17]
0009d8  73669100  stores.w r9, 12(r2)
0009dc  73643100  stores.w r3, 8(r2)
0009e0  73626101  stores.w r22, 4(r2)
0009e4  7360e100  stores.w r14, 0(r2)
0009e8  b7de00fe  beq r1, zero, -76
0009ec  8ba06510  add.ul r[2:3], r[12:13], r[7:8]
0009f0  1bb42000  slli r8, r1, 2
0009f4  9b900a80  ori r1, r21, 2048
0009f8  8b101410  add.s r1, r8, r1
0009fc  efc8c000  loads.w r17, 12(r1)
000a00  6fcc0000  loads.w r24, 0(r1)
000a04  efcb4000  loads.w r23, 4(r1)
000a08  6fc98000  loads.w r18, 8(r1)
000a0c  97864800  and r13, r17, r4
000a10  9380d904  setlt.u r1, r19, r13
000a14  3bb00000  bneq r1, zero, 12
000a18  9f840800  addli r9, r17, 0
000a1c  5b010000  j 8
000a20  9794a801  or r9, r17, r26
000a24  17054900  and r10, r18, r4
000a28  9380a904  setlt.u r1, r19, r10
000a2c  3bb00000  bneq r1, zero, 12
000a30  9f010900  addli r3, r18, 0
000a34  5b010000  j 8
000a38  9711a901  or r3, r18, r26
000a3c  178e4b00  and r28, r23, r4
000a40  9380c905  setlt.u r1, r19, r28
000a44  3bb00000  bneq r1, zero, 12
000a48  1f8b0b00  addli r22, r23, 0
000a4c  5b010000  j 8
000a50  179bab01  or r22, r23, r26
000a54  97004c00  and r1, r24, r4
000a58  13811904  setlt.u r2, r19, r1
000a5c  3b500100  bneq r2, zero, 20
000a60  1f070c00  addli r14, r24, 0
000a64  93801c04  setlt.u r1, r25, r1
000a68  37d00000  beq r1, zero, 20
000a6c  db040000  j 36
000a70  1717ac01  or r14, r24, r26
000a74  93801c04  setlt.u r1, r25, r1
000a78  3be00000  bneq r1, zero, 24
000a7c  9b400c01  srli r1, r24, 16
000a80  9b801000  andi r1, r1, 1
000a84  8b101c10  add.s r1, r24, r1
000a88  8b905010  add.s r1, r1, r5
000a8c  17874001  and r14, r1, r20
000a90  9380cc05  setlt.u r1, r25, r28
000a94  37e00000  beq r1, zero, 24
000a98  9380ac04  setlt.u r1, r25, r10
000a9c  b7b00000  beq r1, zero, 44
000aa0  9380dc04  setlt.u r1, r25, r13
000aa4  bbac00fe  bneq r1, zero, -216
000aa8  db070000  j 60
000aac  9bc00b01  srli r1, r23, 16
000ab0  9b801000  andi r1, r1, 1
000ab4  8b901b10  add.s r1, r23, r1
000ab8  8b905010  add.s r1, r1, r5
000abc  178b4001  and r22, r1, r20
000ac0  9380ac04  setlt.u r1, r25, r10
000ac4  3bff00fe  bneq r1, zero, -36
000ac8  9b400901  srli r1, r18, 16
000acc  9b801000  andi r1, r1, 1
000ad0  8b101910  add.s r1, r18, r1
000ad4  8b905010  add.s r1, r1, r5
000ad8  97814001  and r3, r1, r20
000adc  9380dc04  setlt.u r1, r25, r13
000ae0  bbbb00fe  bneq r1, zero, -276
000ae4  9bc00801  srli r1, r17, 16
000ae8  9b801000  andi r1, r1, 1
000aec  8b901810  add.s r1, r17, r1
000af0  8b905010  add.s r1, r1, r5
000af4  97844001  and r9, r1, r20
000af8  dbdaffff  j -300
000afc  00200100  mfence { sm }
000b00  e300afff  loadli.w r1,  -48(r30)
000b04  b7f100fe  beq r1, zero, -900
000b08  9f002000  addli r1, zero, 16
000b0c  3d000000  xfence
000b10  00a00300  mfence { lm, sm, gm }
000b14  33810028  zext_int2long r[3:4], r1
000b18  5b040000  j 32
000b1c  9f702000  addli r1, zero, 23
000b20  6b538fff  load.d r[7:8], -8(r30)
000b24  b3800028  zext_int2long r[2:3], r1
000b28  93201304  setlt.ul r1, r[7:8], r[2:3]
000b2c  27110300  addli.d r[3:4], r[7:8], 1
000b30  9f131000  addli r7, zero, 9
000b34  37a50000  beq r1, zero, 328
000b38  9f101000  addli r1, zero, 9
000b3c  b3050028  zext_int2long r[12:13], zero
000b40  733c2ffe  store.d r[3:4], -8(r30)
000b44  17331102  sll.d r[7:8], r[3:4], r1
000b48  db040000  j 36
000b4c  a7c50500  addli.d r[12:13], r[12:13], 4
000b50  0b11b411  add.s r2, r8, r27
000b54  93a0f502  setneq.d r1, r[12:13], r[16:17]
000b58  73669100  stores.w r9, 12(r2)
000b5c  73643100  stores.w r3, 8(r2)
000b60  73626101  stores.w r22, 4(r2)
000b64  7360e100  stores.w r14, 0(r2)
000b68  b7de00fe  beq r1, zero, -76
000b6c  8ba06510  add.ul r[2:3], r[12:13], r[7:8]
000b70  1bb42000  slli r8, r1, 2
000b74  9b900a80  ori r1, r21, 2048
000b78  8b101410  add.s r1, r8, r1
000b7c  efc8c000  loads.w r17, 12(r1)
000b80  6fcc0000  loads.w r24, 0(r1)
000b84  efcb4000  loads.w r23, 4(r1)
000b88  6fc98000  loads.w r18, 8(r1)
000b8c  97864800  and r13, r17, r4
000b90  9380d904  setlt.u r1, r19, r13
000b94  3bb00000  bneq r1, zero, 12
000b98  9f840800  addli r9, r17, 0
000b9c  5b010000  j 8
000ba0  9794a801  or r9, r17, r26
000ba4  17054900  and r10, r18, r4
000ba8  9380a904  setlt.u r1, r19, r10
000bac  3bb00000  bneq r1, zero, 12
000bb0  9f010900  addli r3, r18, 0
000bb4  5b010000  j 8
000bb8  9711a901  or r3, r18, r26
000bbc  178e4b00  and r28, r23, r4
000bc0  9380c905  setlt.u r1, r19, r28
000bc4  3bb00000  bneq r1, zero, 12
000bc8  1f8b0b00  addli r22, r23, 0
000bcc  5b010000  j 8
000bd0  179bab01  or r22, r23, r26
000bd4  97004c00  and r1, r24, r4
000bd8  13811904  setlt.u r2, r19, r1
000bdc  3b500100  bneq r2, zero, 20
000be0  1f070c00  addli r14, r24, 0
000be4  93801c04  setlt.u r1, r25, r1
000be8  37d00000  beq r1, zero, 20
000bec  db040000  j 36
000bf0  1717ac01  or r14, r24, r26
000bf4  93801c04  setlt.u r1, r25, r1
000bf8  3be00000  bneq r1, zero, 24
000bfc  9b400c01  srli r1, r24, 16
000c00  9b801000  andi r1, r1, 1
000c04  8b101c10  add.s r1, r24, r1
000c08  8b905010  add.s r1, r1, r5
000c0c  17874001  and r14, r1, r20
000c10  9380cc05  setlt.u r1, r25, r28
000c14  37e00000  beq r1, zero, 24
000c18  9380ac04  setlt.u r1, r25, r10
000c1c  b7b00000  beq r1, zero, 44
000c20  9380dc04  setlt.u r1, r25, r13
000c24  bbac00fe  bneq r1, zero, -216
000c28  db070000  j 60
000c2c  9bc00b01  srli r1, r23, 16
000c30  9b801000  andi r1, r1, 1
000c34  8b901b10  add.s r1, r23, r1
000c38  8b905010  add.s r1, r1, r5
000c3c  178b4001  and r22, r1, r20
000c40  9380ac04  setlt.u r1, r25, r10
000c44  3bff00fe  bneq r1, zero, -36
000c48  9b400901  srli r1, r18, 16
000c4c  9b801000  andi r1, r1, 1
000c50  8b101910  add.s r1, r18, r1
000c54  8b905010  add.s r1, r1, r5
000c58  97814001  and r3, r1, r20
000c5c  9380dc04  setlt.u r1, r25, r13
000c60  bbbb00fe  bneq r1, zero, -276
000c64  9bc00801  srli r1, r17, 16
000c68  9b801000  andi r1, r1, 1
000c6c  8b901810  add.s r1, r17, r1
000c70  8b905010  add.s r1, r1, r5
000c74  97844001  and r9, r1, r20
000c78  dbdaffff  j -300
000c7c  00200100  mfence { sm }
000c80  e340dfff  loadli.w r1,  -20(r30)
000c84  379c00fc  beq r1, zero, -1276
000c88  9f003000  addli r1, zero, 24
000c8c  3d000000  xfence
000c90  00a00300  mfence { lm, sm, gm }
000c94  33810028  zext_int2long r[3:4], r1
000c98  5b040000  j 32
000c9c  9f703000  addli r1, zero, 31
000ca0  6b538fff  load.d r[7:8], -8(r30)
000ca4  b3800028  zext_int2long r[2:3], r1
000ca8  93201304  setlt.ul r1, r[7:8], r[2:3]
000cac  27110300  addli.d r[3:4], r[7:8], 1
000cb0  9f131000  addli r7, zero, 9
000cb4  37a50000  beq r1, zero, 328
000cb8  9f101000  addli r1, zero, 9
000cbc  b3050028  zext_int2long r[12:13], zero
000cc0  733c2ffe  store.d r[3:4], -8(r30)
000cc4  17331102  sll.d r[7:8], r[3:4], r1
000cc8  db040000  j 36
000ccc  a7c50500  addli.d r[12:13], r[12:13], 4
000cd0  0b11b411  add.s r2, r8, r27
000cd4  93a0f502  setneq.d r1, r[12:13], r[16:17]
000cd8  73669100  stores.w r9, 12(r2)
000cdc  73643100  stores.w r3, 8(r2)
000ce0  73626101  stores.w r22, 4(r2)
000ce4  7360e100  stores.w r14, 0(r2)
000ce8  b7de00fe  beq r1, zero, -76
000cec  8ba06510  add.ul r[2:3], r[12:13], r[7:8]
000cf0  1bb42000  slli r8, r1, 2
000cf4  9b900a80  ori r1, r21, 2048
000cf8  8b101410  add.s r1, r8, r1
000cfc  efc8c000  loads.w r17, 12(r1)
000d00  6fcc0000  loads.w r24, 0(r1)
000d04  efcb4000  loads.w r23, 4(r1)
000d08  6fc98000  loads.w r18, 8(r1)
000d0c  97864800  and r13, r17, r4
000d10  9380d904  setlt.u r1, r19, r13
000d14  3bb00000  bneq r1, zero, 12
000d18  9f840800  addli r9, r17, 0
000d1c  5b010000  j 8
000d20  9794a801  or r9, r17, r26
000d24  17054900  and r10, r18, r4
000d28  9380a904  setlt.u r1, r19, r10
000d2c  3bb00000  bneq r1, zero, 12
000d30  9f010900  addli r3, r18, 0
000d34  5b010000  j 8
000d38  9711a901  or r3, r18, r26
000d3c  178e4b00  and r28, r23, r4
000d40  9380c905  setlt.u r1, r19, r28
000d44  3bb00000  bneq r1, zero, 12
000d48  1f8b0b00  addli r22, r23, 0
000d4c  5b010000  j 8
000d50  179bab01  or r22, r23, r26
000d54  97004c00  and r1, r24, r4
000d58  13811904  setlt.u r2, r19, r1
000d5c  3b500100  bneq r2, zero, 20
000d60  1f070c00  addli r14, r24, 0
000d64  93801c04  setlt.u r1, r25, r1
000d68  37d00000  beq r1, zero, 20
000d6c  db040000  j 36
000d70  1717ac01  or r14, r24, r26
000d74  93801c04  setlt.u r1, r25, r1
000d78  3be00000  bneq r1, zero, 24
000d7c  9b400c01  srli r1, r24, 16
000d80  9b801000  andi r1, r1, 1
000d84  8b101c10  add.s r1, r24, r1
000d88  8b905010  add.s r1, r1, r5
000d8c  17874001  and r14, r1, r20
000d90  9380cc05  setlt.u r1, r25, r28
000d94  37e00000  beq r1, zero, 24
000d98  9380ac04  setlt.u r1, r25, r10
000d9c  b7b00000  beq r1, zero, 44
000da0  9380dc04  setlt.u r1, r25, r13
000da4  bbac00fe  bneq r1, zero, -216
000da8  db070000  j 60
000dac  9bc00b01  srli r1, r23, 16
000db0  9b801000  andi r1, r1, 1
000db4  8b901b10  add.s r1, r23, r1
000db8  8b905010  add.s r1, r1, r5
000dbc  178b4001  and r22, r1, r20
000dc0  9380ac04  setlt.u r1, r25, r10
000dc4  3bff00fe  bneq r1, zero, -36
000dc8  9b400901  srli r1, r18, 16
000dcc  9b801000  andi r1, r1, 1
000dd0  8b101910  add.s r1, r18, r1
000dd4  8b905010  add.s r1, r1, r5
000dd8  97814001  and r3, r1, r20
000ddc  9380dc04  setlt.u r1, r25, r13
000de0  bbbb00fe  bneq r1, zero, -276
000de4  9bc00801  srli r1, r17, 16
000de8  9b801000  andi r1, r1, 1
000dec  8b901810  add.s r1, r17, r1
000df0  8b905010  add.s r1, r1, r5
000df4  97844001  and r9, r1, r20
000df8  dbdaffff  j -300
000dfc  00200100  mfence { sm }
000e00  e300bfff  loadli.w r1,  -40(r30)
000e04  37b600fc  beq r1, zero, -1652
000e08  9f004000  addli r1, zero, 32
000e0c  3d000000  xfence
000e10  00a00300  mfence { lm, sm, gm }
000e14  33810028  zext_int2long r[3:4], r1
000e18  5b040000  j 32
000e1c  9f704000  addli r1, zero, 39
000e20  6b538fff  load.d r[7:8], -8(r30)
000e24  b3800028  zext_int2long r[2:3], r1
000e28  93201304  setlt.ul r1, r[7:8], r[2:3]
000e2c  27110300  addli.d r[3:4], r[7:8], 1
000e30  9f131000  addli r7, zero, 9
000e34  37a50000  beq r1, zero, 328
000e38  9f101000  addli r1, zero, 9
000e3c  b3050028  zext_int2long r[12:13], zero
000e40  733c2ffe  store.d r[3:4], -8(r30)
000e44  17331102  sll.d r[7:8], r[3:4], r1
000e48  db040000  j 36
000e4c  a7c50500  addli.d r[12:13], r[12:13], 4
000e50  0b11b411  add.s r2, r8, r27
000e54  93a0f502  setneq.d r1, r[12:13], r[16:17]
000e58  73669100  stores.w r9, 12(r2)
000e5c  73643100  stores.w r3, 8(r2)
000e60  73626101  stores.w r22, 4(r2)
000e64  7360e100  stores.w r14, 0(r2)
000e68  b7de00fe  beq r1, zero, -76
000e6c  8ba06510  add.ul r[2:3], r[12:13], r[7:8]
000e70  1bb42000  slli r8, r1, 2
000e74  9b900a80  ori r1, r21, 2048
000e78  8b101410  add.s r1, r8, r1
000e7c  efc8c000  loads.w r17, 12(r1)
000e80  6fcc0000  loads.w r24, 0(r1)
000e84  efcb4000  loads.w r23, 4(r1)
000e88  6fc98000  loads.w r18, 8(r1)
000e8c  97864800  and r13, r17, r4
000e90  9380d904  setlt.u r1, r19, r13
000e94  3bb00000  bneq r1, zero, 12
000e98  9f840800  addli r9, r17, 0
000e9c  5b010000  j 8
000ea0  9794a801  or r9, r17, r26
000ea4  17054900  and r10, r18, r4
000ea8  9380a904  setlt.u r1, r19, r10
000eac  3bb00000  bneq r1, zero, 12
000eb0  9f010900  addli r3, r18, 0
000eb4  5b010000  j 8
000eb8  9711a901  or r3, r18, r26
000ebc  178e4b00  and r28, r23, r4
000ec0  9380c905  setlt.u r1, r19, r28
000ec4  3bb00000  bneq r1, zero, 12
000ec8  1f8b0b00  addli r22, r23, 0
000ecc  5b010000  j 8
000ed0  179bab01  or r22, r23, r26
000ed4  97004c00  and r1, r24, r4
000ed8  13811904  setlt.u r2, r19, r1
000edc  3b500100  bneq r2, zero, 20
000ee0  1f070c00  addli r14, r24, 0
000ee4  93801c04  setlt.u r1, r25, r1
000ee8  37d00000  beq r1, zero, 20
000eec  db040000  j 36
000ef0  1717ac01  or r14, r24, r26
000ef4  93801c04  setlt.u r1, r25, r1
000ef8  3be00000  bneq r1, zero, 24
000efc  9b400c01  srli r1, r24, 16
000f00  9b801000  andi r1, r1, 1
000f04  8b101c10  add.s r1, r24, r1
000f08  8b905010  add.s r1, r1, r5
000f0c  17874001  and r14, r1, r20
000f10  9380cc05  setlt.u r1, r25, r28
000f14  37e00000  beq r1, zero, 24
000f18  9380ac04  setlt.u r1, r25, r10
000f1c  b7b00000  beq r1, zero, 44
000f20  9380dc04  setlt.u r1, r25, r13
000f24  bbac00fe  bneq r1, zero, -216
000f28  db070000  j 60
000f2c  9bc00b01  srli r1, r23, 16
000f30  9b801000  andi r1, r1, 1
000f34  8b901b10  add.s r1, r23, r1
000f38  8b905010  add.s r1, r1, r5
000f3c  178b4001  and r22, r1, r20
000f40  9380ac04  setlt.u r1, r25, r10
000f44  3bff00fe  bneq r1, zero, -36
000f48  9b400901  srli r1, r18, 16
000f4c  9b801000  andi r1, r1, 1
000f50  8b101910  add.s r1, r18, r1
000f54  8b905010  add.s r1, r1, r5
000f58  97814001  and r3, r1, r20
000f5c  9380dc04  setlt.u r1, r25, r13
000f60  bbbb00fe  bneq r1, zero, -276
000f64  9bc00801  srli r1, r17, 16
000f68  9b801000  andi r1, r1, 1
000f6c  8b901810  add.s r1, r17, r1
000f70  8b905010  add.s r1, r1, r5
000f74  97844001  and r9, r1, r20
000f78  dbdaffff  j -300
000f7c  00200100  mfence { sm }
000f80  e340afff  loadli.w r1,  -44(r30)
000f84  b7f50000  beq r1, zero, 380
000f88  9f005000  addli r1, zero, 40
000f8c  3d000000  xfence
000f90  00a00300  mfence { lm, sm, gm }
000f94  33810028  zext_int2long r[3:4], r1
000f98  5b040000  j 32
000f9c  9f705000  addli r1, zero, 47
000fa0  6b538fff  load.d r[7:8], -8(r30)
000fa4  b3800028  zext_int2long r[2:3], r1
000fa8  93201304  setlt.ul r1, r[7:8], r[2:3]
000fac  27110300  addli.d r[3:4], r[7:8], 1
000fb0  9f131000  addli r7, zero, 9
000fb4  37a50000  beq r1, zero, 328
000fb8  9f101000  addli r1, zero, 9
000fbc  b3050028  zext_int2long r[12:13], zero
000fc0  733c2ffe  store.d r[3:4], -8(r30)
000fc4  17331102  sll.d r[7:8], r[3:4], r1
000fc8  db040000  j 36
000fcc  a7c50500  addli.d r[12:13], r[12:13], 4
000fd0  0b11b411  add.s r2, r8, r27
000fd4  93a0f502  setneq.d r1, r[12:13], r[16:17]
000fd8  73669100  stores.w r9, 12(r2)
000fdc  73643100  stores.w r3, 8(r2)
000fe0  73626101  stores.w r22, 4(r2)
000fe4  7360e100  stores.w r14, 0(r2)
000fe8  b7de00fe  beq r1, zero, -76
000fec  8ba06510  add.ul r[2:3], r[12:13], r[7:8]
000ff0  1bb42000  slli r8, r1, 2
000ff4  9b900a80  ori r1, r21, 2048
000ff8  8b101410  add.s r1, r8, r1
000ffc  efc8c000  loads.w r17, 12(r1)
001000  6fcc0000  loads.w r24, 0(r1)
001004  efcb4000  loads.w r23, 4(r1)
001008  6fc98000  loads.w r18, 8(r1)
00100c  97864800  and r13, r17, r4
001010  9380d904  setlt.u r1, r19, r13
001014  3bb00000  bneq r1, zero, 12
001018  9f840800  addli r9, r17, 0
00101c  5b010000  j 8
001020  9794a801  or r9, r17, r26
001024  17054900  and r10, r18, r4
001028  9380a904  setlt.u r1, r19, r10
00102c  3bb00000  bneq r1, zero, 12
001030  9f010900  addli r3, r18, 0
001034  5b010000  j 8
001038  9711a901  or r3, r18, r26
00103c  178e4b00  and r28, r23, r4
001040  9380c905  setlt.u r1, r19, r28
001044  3bb00000  bneq r1, zero, 12
001048  1f8b0b00  addli r22, r23, 0
00104c  5b010000  j 8
001050  179bab01  or r22, r23, r26
001054  97004c00  and r1, r24, r4
001058  13811904  setlt.u r2, r19, r1
00105c  3b500100  bneq r2, zero, 20
001060  1f070c00  addli r14, r24, 0
001064  93801c04  setlt.u r1, r25, r1
001068  37d00000  beq r1, zero, 20
00106c  db040000  j 36
001070  1717ac01  or r14, r24, r26
001074  93801c04  setlt.u r1, r25, r1
001078  3be00000  bneq r1, zero, 24
00107c  9b400c01  srli r1, r24, 16
001080  9b801000  andi r1, r1, 1
001084  8b101c10  add.s r1, r24, r1
001088  8b905010  add.s r1, r1, r5
00108c  17874001  and r14, r1, r20
001090  9380cc05  setlt.u r1, r25, r28
001094  37e00000  beq r1, zero, 24
001098  9380ac04  setlt.u r1, r25, r10
00109c  b7b00000  beq r1, zero, 44
0010a0  9380dc04  setlt.u r1, r25, r13
0010a4  bbac00fe  bneq r1, zero, -216
0010a8  db070000  j 60
0010ac  9bc00b01  srli r1, r23, 16
0010b0  9b801000  andi r1, r1, 1
0010b4  8b901b10  add.s r1, r23, r1
0010b8  8b905010  add.s r1, r1, r5
0010bc  178b4001  and r22, r1, r20
0010c0  9380ac04  setlt.u r1, r25, r10
0010c4  3bff00fe  bneq r1, zero, -36
0010c8  9b400901  srli r1, r18, 16
0010cc  9b801000  andi r1, r1, 1
0010d0  8b101910  add.s r1, r18, r1
0010d4  8b905010  add.s r1, r1, r5
0010d8  97814001  and r3, r1, r20
0010dc  9380dc04  setlt.u r1, r25, r13
0010e0  bbbb00fe  bneq r1, zero, -276
0010e4  9bc00801  srli r1, r17, 16
0010e8  9b801000  andi r1, r1, 1
0010ec  8b901810  add.s r1, r17, r1
0010f0  8b905010  add.s r1, r1, r5
0010f4  97844001  and r9, r1, r20
0010f8  dbdaffff  j -300
0010fc  00200100  mfence { sm }
001100  80300002  core_id r1
001104  1f610000  addli r2, zero, 6
001108  bbf52000  bneq r1, r2, 380
00110c  9f006000  addli r1, zero, 48
001110  3d000000  xfence
001114  00a00300  mfence { lm, sm, gm }
001118  33810028  zext_int2long r[3:4], r1
00111c  5b040000  j 32
001120  9f706000  addli r1, zero, 55
001124  6b538fff  load.d r[7:8], -8(r30)
001128  b3800028  zext_int2long r[2:3], r1
00112c  93201304  setlt.ul r1, r[7:8], r[2:3]
001130  27110300  addli.d r[3:4], r[7:8], 1
001134  9f131000  addli r7, zero, 9
001138  37a50000  beq r1, zero, 328
00113c  9f101000  addli r1, zero, 9
001140  b3050028  zext_int2long r[12:13], zero
001144  733c2ffe  store.d r[3:4], -8(r30)
001148  17331102  sll.d r[7:8], r[3:4], r1
00114c  db040000  j 36
001150  a7c50500  addli.d r[12:13], r[12:13], 4
001154  0b11b411  add.s r2, r8, r27
001158  93a0f502  setneq.d r1, r[12:13], r[16:17]
00115c  73669100  stores.w r9, 12(r2)
001160  73643100  stores.w r3, 8(r2)
001164  73626101  stores.w r22, 4(r2)
001168  7360e100  stores.w r14, 0(r2)
00116c  b7de00fe  beq r1, zero, -76
001170  8ba06510  add.ul r[2:3], r[12:13], r[7:8]
001174  1bb42000  slli r8, r1, 2
001178  9b900a80  ori r1, r21, 2048
00117c  8b101410  add.s r1, r8, r1
001180  efc8c000  loads.w r17, 12(r1)
001184  6fcc0000  loads.w r24, 0(r1)
001188  efcb4000  loads.w r23, 4(r1)
00118c  6fc98000  loads.w r18, 8(r1)
001190  97864800  and r13, r17, r4
001194  9380d904  setlt.u r1, r19, r13
001198  3bb00000  bneq r1, zero, 12
00119c  9f840800  addli r9, r17, 0
0011a0  5b010000  j 8
0011a4  9794a801  or r9, r17, r26
0011a8  17054900  and r10, r18, r4
0011ac  9380a904  setlt.u r1, r19, r10
0011b0  3bb00000  bneq r1, zero, 12
0011b4  9f010900  addli r3, r18, 0
0011b8  5b010000  j 8
0011bc  9711a901  or r3, r18, r26
0011c0  178e4b00  and r28, r23, r4
0011c4  9380c905  setlt.u r1, r19, r28
0011c8  3bb00000  bneq r1, zero, 12
0011cc  1f8b0b00  addli r22, r23, 0
0011d0  5b010000  j 8
0011d4  179bab01  or r22, r23, r26
0011d8  97004c00  and r1, r24, r4
0011dc  13811904  setlt.u r2, r19, r1
0011e0  3b500100  bneq r2, zero, 20
0011e4  1f070c00  addli r14, r24, 0
0011e8  93801c04  setlt.u r1, r25, r1
0011ec  37d00000  beq r1, zero, 20
0011f0  db040000  j 36
0011f4  1717ac01  or r14, r24, r26
0011f8  93801c04  setlt.u r1, r25, r1
0011fc  3be00000  bneq r1, zero, 24
001200  9b400c01  srli r1, r24, 16
001204  9b801000  andi r1, r1, 1
001208  8b101c10  add.s r1, r24, r1
00120c  8b905010  add.s r1, r1, r5
001210  17874001  and r14, r1, r20
001214  9380cc05  setlt.u r1, r25, r28
001218  37e00000  beq r1, zero, 24
00121c  9380ac04  setlt.u r1, r25, r10
001220  b7b00000  beq r1, zero, 44
001224  9380dc04  setlt.u r1, r25, r13
001228  bbac00fe  bneq r1, zero, -216
00122c  db070000  j 60
001230  9bc00b01  srli r1, r23, 16
001234  9b801000  andi r1, r1, 1
001238  8b901b10  add.s r1, r23, r1
00123c  8b905010  add.s r1, r1, r5
001240  178b4001  and r22, r1, r20
001244  9380ac04  setlt.u r1, r25, r10
001248  3bff00fe  bneq r1, zero, -36
00124c  9b400901  srli r1, r18, 16
001250  9b801000  andi r1, r1, 1
001254  8b101910  add.s r1, r18, r1
001258  8b905010  add.s r1, r1, r5
00125c  97814001  and r3, r1, r20
001260  9380dc04  setlt.u r1, r25, r13
001264  bbbb00fe  bneq r1, zero, -276
001268  9bc00801  srli r1, r17, 16
00126c  9b801000  andi r1, r1, 1
001270  8b901810  add.s r1, r17, r1
001274  8b905010  add.s r1, r1, r5
001278  97844001  and r9, r1, r20
00127c  dbdaffff  j -300
001280  00200100  mfence { sm }
001284  e340bfff  loadli.w r1,  -36(r30)
001288  b7f50000  beq r1, zero, 380
00128c  b3000028  zext_int2long r[2:3], zero
001290  73381ffe  store.d r[2:3], -16(r30)
001294  9f007000  addli r1, zero, 56
001298  3d000000  xfence
00129c  33810028  zext_int2long r[3:4], r1
0012a0  00a00300  mfence { lm, sm, gm }
0012a4  db030000  j 28
0012a8  9f707000  addli r1, zero, 63
0012ac  6b548fff  load.d r[9:10], -8(r30)
0012b0  b3800028  zext_int2long r[2:3], r1
0012b4  93201404  setlt.ul r1, r[9:10], r[2:3]
0012b8  27110400  addli.d r[3:4], r[9:10], 1
0012bc  37950000  beq r1, zero, 324
0012c0  eb580fff  load.d r[18:19], -16(r30)
0012c4  97357102  sll.d r[12:13], r[3:4], r7
0012c8  733c2ffe  store.d r[3:4], -8(r30)
0012cc  db040000  j 36
0012d0  a7c80800  addli.d r[18:19], r[18:19], 4
0012d4  0b13b411  add.s r6, r8, r27
0012d8  13a1f802  setneq.d r2, r[18:19], r[16:17]
0012dc  73669300  stores.w r9, 12(r6)
0012e0  73643300  stores.w r3, 8(r6)
0012e4  7362c301  stores.w r28, 4(r6)
0012e8  73601300  stores.w r1, 0(r6)
0012ec  b77e01fe  beq r2, zero, -68
0012f0  8ba0b810  add.ul r[2:3], r[18:19], r[12:13]
0012f4  1bb42000  slli r8, r1, 2
0012f8  9b900a80  ori r1, r21, 2048
0012fc  8b101410  add.s r1, r8, r1
001300  6fcbc000  loads.w r22, 12(r1)
001304  6fc70000  loads.w r14, 0(r1)
001308  efcb4000  loads.w r23, 4(r1)
00130c  6fcc8000  loads.w r24, 8(r1)
001310  97064b00  and r13, r22, r4
001314  9380d904  setlt.u r1, r19, r13
001318  3bb00000  bneq r1, zero, 12
00131c  9f040b00  addli r9, r22, 0
001320  5b010000  j 8
001324  9714ab01  or r9, r22, r26
001328  17054c00  and r10, r24, r4
00132c  9380a904  setlt.u r1, r19, r10
001330  3bb00000  bneq r1, zero, 12
001334  9f010c00  addli r3, r24, 0
001338  5b010000  j 8
00133c  9711ac01  or r3, r24, r26
001340  17814b00  and r2, r23, r4
001344  93802904  setlt.u r1, r19, r2
001348  3bb00000  bneq r1, zero, 12
00134c  1f8e0b00  addli r28, r23, 0
001350  5b010000  j 8
001354  179eab01  or r28, r23, r26
001358  17034700  and r6, r14, r4
00135c  93806904  setlt.u r1, r19, r6
001360  3bd00000  bneq r1, zero, 20
001364  9f000700  addli r1, r14, 0
001368  13836c04  setlt.u r6, r25, r6
00136c  37500300  beq r6, zero, 20
001370  db040000  j 36
001374  9710a701  or r1, r14, r26
001378  13836c04  setlt.u r6, r25, r6
00137c  3b600300  bneq r6, zero, 24
001380  9b400701  srli r1, r14, 16
001384  9b801000  andi r1, r1, 1
001388  8b101710  add.s r1, r14, r1
00138c  8b905010  add.s r1, r1, r5
001390  97804001  and r1, r1, r20
001394  13812c04  setlt.u r2, r25, r2
001398  37600100  beq r2, zero, 24
00139c  1381ac04  setlt.u r2, r25, r10
0013a0  b7300100  beq r2, zero, 44
0013a4  1381dc04  setlt.u r2, r25, r13
0013a8  bb2c01fe  bneq r2, zero, -216
0013ac  db070000  j 60
0013b0  1bc10b01  srli r2, r23, 16
0013b4  1b011100  andi r2, r2, 1
0013b8  0b912b10  add.s r2, r23, r2
0013bc  0b115110  add.s r2, r2, r5
0013c0  170e4101  and r28, r2, r20
0013c4  1381ac04  setlt.u r2, r25, r10
0013c8  3b7f01fe  bneq r2, zero, -36
0013cc  1b410c01  srli r2, r24, 16
0013d0  1b011100  andi r2, r2, 1
0013d4  0b112c10  add.s r2, r24, r2
0013d8  0b115110  add.s r2, r2, r5
0013dc  97014101  and r3, r2, r20
0013e0  1381dc04  setlt.u r2, r25, r13
0013e4  bb3b01fe  bneq r2, zero, -276
0013e8  1b410b01  srli r2, r22, 16
0013ec  1b011100  andi r2, r2, 1
0013f0  0b112b10  add.s r2, r22, r2
0013f4  0b115110  add.s r2, r2, r5
0013f8  97044101  and r9, r2, r20
0013fc  dbdaffff  j -300
001400  00200100  mfence { sm }
001404  9f70f001  addli r1, zero, 255
001408  80a20004  csr_set csr5, r1
00140c  00e00200  sync_core
001410  e340dfff  loadli.w r1,  -20(r30)
001414  3ba700f6  bneq r1, zero, -4664
001418  eb540ffe  load.d r[10:11], -32(r30)
00141c  00340002  core_id r8
001420  1f6e0000  addli r28, zero, 6
001424  1f160000  addli r12, zero, 1
001428  9f460000  addli r13, zero, 4
00142c  1f072000  addli r14, zero, 16
001430  9f058000  addli r11, zero, 64
001434  ab070200  lui r15, 32
001438  3b5704f6  bneq r8, zero, -4652
00143c  6b518ffb  load.d r[3:4], -72(r30)
001440  9f202000  addli r1, zero, 18
001444  6b530ffc  load.d r[7:8], -64(r30)
001448  eb578f01  load.d r[16:17], 24(r30)
00144c  9f058000  addli r11, zero, 64
001450  97301102  sll.d r[2:3], r[3:4], r1
001454  1733c302  sll.d r[7:8], r[7:8], r12
001458  9f711000  addli r3, zero, 15
00145c  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
001460  7d900100  xwait r3, 0
001464  9b910d04  ori r3, r27, 64
001468  ab070200  lui r15, 32
00146c  8ba06010  add.ul r[2:3], r[2:3], r[7:8]
001470  1f530000  addli r6, zero, 5
001474  9f131000  addli r7, zero, 9
001478  1d000300  lock zero, r6
00147c  15060600  dma_cfg r12, r12, zero, 0
001480  15000602  dma_cfg zero, r12, zero, 1
001484  15010004  dma_cfg r2, zero, zero, 2
001488  9580b106  dma_cfg r1, r3, r11, 3
00148c  9f000001  addli r1, zero, 128
001490  1f010020  addli r2, zero, 4096
001494  9585e008  dma_cfg r11, r1, r14, 4
001498  9f000010  addli r1, zero, 2048
00149c  1581b00a  dma_cfg r2, r1, r11, 5
0014a0  15000010  dma_cfg zero, zero, zero, 8
0014a4  35000000  dma_run zero
0014a8  1500c00a  dma_cfg zero, zero, r12, 5
0014ac  15000010  dma_cfg zero, zero, zero, 8
0014b0  1d100300  unlock r6
0014b4  7d000700  xsignal r14, 0
0014b8  dbaafdff  j -4780
0014bc  b77dd400  beq r8, r13, 892
0014c0  9f700000  addli r1, zero, 7
0014c4  bb111400  bneq r8, r1, 100
0014c8  9f200000  addli r1, zero, 2
0014cc  e74e0ffe  storeli.w zero, -20(r30)
0014d0  e70d0ffe  storeli.w zero, -40(r30)
0014d4  670d0ffe  storeli.w zero, -48(r30)
0014d8  674d0ffe  storeli.w zero, -44(r30)
0014dc  7d100e00  xwait r28, 0
0014e0  7d900300  xwait r7, 0
0014e4  1d000000  lock zero, zero
0014e8  9f010000  addli r3, zero, 0
0014ec  81000000  ds_cfg r1, zero, 0
0014f0  9f000004  addli r1, zero, 512
0014f4  81000002  ds_cfg r1, zero, 1
0014f8  8105001c  ds_cfg r11, zero, 14
0014fc  8100001a  ds_cfg r1, zero, 13
001500  ab400000  lui r1, 4
001504  4180b004  shuffle_coa zero, r1, r11, 2
001508  9f700000  addli r1, zero, 7
00150c  1d100000  unlock zero
001510  7d800000  xsignal r1, 0
001514  9f100000  addli r1, zero, 1
001518  e74d1ffe  storeli.w r1, -36(r30)
00151c  9f001000  addli r1, zero, 8
001520  7d800000  xsignal r1, 0
001524  db45feff  j -3540
001528  9f500000  addli r1, zero, 5
00152c  bb7d1400  bneq r8, r1, 892
001530  1f211000  addli r2, zero, 10
001534  9f000000  addli r1, zero, 0
001538  7d100100  xwait r2, 0
00153c  1f411000  addli r2, zero, 12
001540  7d100100  xwait r2, 0
001544  1f210000  addli r2, zero, 2
001548  1d000100  lock zero, r2
00154c  2b01803f  lui r2, 260096
001550  0d000002  ew_cfg zero, zero, zero, 1
001554  0d110100  ewcoeff_cfg r2, r2, zero, 0
001558  1f71f003  addli r2, zero, 511
00155c  0d000104  ew_cfg zero, r2, zero, 2
001560  0d060006  ew_cfg r12, zero, zero, 3
001564  1b910a80  ori r2, r21, 2048
001568  0b912010  add.s r2, r1, r2
00156c  9f800010  addli r1, r1, 2048
001570  2d015101  dsmadd r2, r2, r21, 0
001574  bbcff0fe  bneq r1, r15, -16
001578  9f200000  addli r1, zero, 2
00157c  e74e0ffe  storeli.w zero, -20(r30)
001580  e70d0ffe  storeli.w zero, -40(r30)
001584  e74d0ffe  storeli.w zero, -36(r30)
001588  670d0ffe  storeli.w zero, -48(r30)
00158c  9f010000  addli r3, zero, 0
001590  1d900000  unlock r1
001594  9f301000  addli r1, zero, 11
001598  7d800000  xsignal r1, 0
00159c  9f100000  addli r1, zero, 1
0015a0  674d1ffe  storeli.w r1, -44(r30)
0015a4  9f501000  addli r1, zero, 13
0015a8  7d800000  xsignal r1, 0
0015ac  db34feff  j -3676
0015b0  1f770000  addli r14, zero, 7
0015b4  1f550000  addli r10, zero, 5
0015b8  1f130000  addli r6, zero, 1
0015bc  e74e0ffe  storeli.w zero, -20(r30)
0015c0  e70d0ffe  storeli.w zero, -40(r30)
0015c4  e74d0ffe  storeli.w zero, -36(r30)
0015c8  670d0ffe  storeli.w zero, -48(r30)
0015cc  9f271000  addli r15, zero, 10
0015d0  1f381000  addli r16, zero, 11
0015d4  9f481000  addli r17, zero, 12
0015d8  1f7b1000  addli r22, zero, 15
0015dc  1f092000  addli r18, zero, 16
0015e0  1f1c2000  addli r24, zero, 17
0015e4  9f2b2000  addli r23, zero, 18
0015e8  6b548f00  load.d r[9:10], 8(r30)
0015ec  9f058000  addli r11, zero, 64
0015f0  2b460000  lui r12, 4
0015f4  7d100700  xwait r14, 0
0015f8  1d000500  lock zero, r10
0015fc  97306102  sll.d r[2:3], r[3:4], r6
001600  9f210000  addli r3, zero, 2
001604  15000014  dma_cfg zero, zero, zero, 10
001608  15006014  dma_cfg zero, zero, r6, 10
00160c  8b201410  add.ul r[2:3], r[9:10], r[2:3]
001610  1f040001  addli r8, zero, 128
001614  9f040010  addli r9, zero, 2048
001618  15003014  dma_cfg zero, zero, r3, 10
00161c  9f310000  addli r3, zero, 3
001620  15003014  dma_cfg zero, zero, r3, 10
001624  9f011000  addli r3, zero, 8
001628  1500d014  dma_cfg zero, zero, r13, 10
00162c  1500a014  dma_cfg zero, zero, r10, 10
001630  1500c015  dma_cfg zero, zero, r28, 10
001634  1500e014  dma_cfg zero, zero, r14, 10
001638  15003014  dma_cfg zero, zero, r3, 10
00163c  9f511000  addli r3, zero, 13
001640  15007014  dma_cfg zero, zero, r7, 10
001644  1500f014  dma_cfg zero, zero, r15, 10
001648  15000015  dma_cfg zero, zero, r16, 10
00164c  15001015  dma_cfg zero, zero, r17, 10
001650  15003014  dma_cfg zero, zero, r3, 10
001654  9f611000  addli r3, zero, 14
001658  15003014  dma_cfg zero, zero, r3, 10
00165c  9f312000  addli r3, zero, 19
001660  15006015  dma_cfg zero, zero, r22, 10
001664  15002015  dma_cfg zero, zero, r18, 10
001668  15008015  dma_cfg zero, zero, r24, 10
00166c  15007015  dma_cfg zero, zero, r23, 10
001670  15003014  dma_cfg zero, zero, r3, 10
001674  9f412000  addli r3, zero, 20
001678  15003014  dma_cfg zero, zero, r3, 10
00167c  9f512000  addli r3, zero, 21
001680  15003014  dma_cfg zero, zero, r3, 10
001684  9f612000  addli r3, zero, 22
001688  15003014  dma_cfg zero, zero, r3, 10
00168c  9f712000  addli r3, zero, 23
001690  15003014  dma_cfg zero, zero, r3, 10
001694  9f013000  addli r3, zero, 24
001698  15003014  dma_cfg zero, zero, r3, 10
00169c  9f113000  addli r3, zero, 25
0016a0  15003014  dma_cfg zero, zero, r3, 10
0016a4  9f213000  addli r3, zero, 26
0016a8  15003014  dma_cfg zero, zero, r3, 10
0016ac  9f313000  addli r3, zero, 27
0016b0  15003014  dma_cfg zero, zero, r3, 10
0016b4  9f413000  addli r3, zero, 28
0016b8  15003014  dma_cfg zero, zero, r3, 10
0016bc  9f513000  addli r3, zero, 29
0016c0  15003014  dma_cfg zero, zero, r3, 10
0016c4  9f613000  addli r3, zero, 30
0016c8  15003014  dma_cfg zero, zero, r3, 10
0016cc  9f713000  addli r3, zero, 31
0016d0  15003014  dma_cfg zero, zero, r3, 10
0016d4  9b110604  ori r3, r12, 64
0016d8  15030300  dma_cfg r6, r6, zero, 0
0016dc  15030002  dma_cfg r6, zero, zero, 1
0016e0  15000004  dma_cfg zero, zero, zero, 2
0016e4  1506b006  dma_cfg r12, zero, r11, 3
0016e8  15042009  dma_cfg r8, zero, r18, 4
0016ec  9504b00a  dma_cfg r9, zero, r11, 5
0016f0  15000010  dma_cfg zero, zero, zero, 8
0016f4  35000000  dma_run zero
0016f8  1500600a  dma_cfg zero, zero, r6, 5
0016fc  15000010  dma_cfg zero, zero, zero, 8
001700  1d100500  unlock r10
001704  1d800600  lock zero, r13
001708  15030300  dma_cfg r6, r6, zero, 0
00170c  15000104  dma_cfg zero, r2, zero, 2
001710  9581b006  dma_cfg r3, r1, r11, 3
001714  9f000020  addli r1, zero, 4096
001718  9f110000  addli r3, zero, 1
00171c  15842509  dma_cfg r8, r11, r18, 4
001720  9584b00a  dma_cfg r9, r1, r11, 5
001724  9f200000  addli r1, zero, 2
001728  15000010  dma_cfg zero, zero, zero, 8
00172c  35000000  dma_run zero
001730  1500300a  dma_cfg zero, zero, r3, 5
001734  15000010  dma_cfg zero, zero, zero, 8
001738  1d900600  unlock r13
00173c  1d000500  lock zero, r10
001740  15000014  dma_cfg zero, zero, zero, 10
001744  15003014  dma_cfg zero, zero, r3, 10
001748  15001014  dma_cfg zero, zero, r1, 10
00174c  9f300000  addli r1, zero, 3
001750  15001014  dma_cfg zero, zero, r1, 10
001754  9f001000  addli r1, zero, 8
001758  1500d014  dma_cfg zero, zero, r13, 10
00175c  1500a014  dma_cfg zero, zero, r10, 10
001760  1500c015  dma_cfg zero, zero, r28, 10
001764  1500e014  dma_cfg zero, zero, r14, 10
001768  15001014  dma_cfg zero, zero, r1, 10
00176c  9f501000  addli r1, zero, 13
001770  15007014  dma_cfg zero, zero, r7, 10
001774  1500f014  dma_cfg zero, zero, r15, 10
001778  15000015  dma_cfg zero, zero, r16, 10
00177c  15001015  dma_cfg zero, zero, r17, 10
001780  15001014  dma_cfg zero, zero, r1, 10
001784  9f601000  addli r1, zero, 14
001788  15001014  dma_cfg zero, zero, r1, 10
00178c  9f302000  addli r1, zero, 19
001790  15006015  dma_cfg zero, zero, r22, 10
001794  15002015  dma_cfg zero, zero, r18, 10
001798  15008015  dma_cfg zero, zero, r24, 10
00179c  15007015  dma_cfg zero, zero, r23, 10
0017a0  15001014  dma_cfg zero, zero, r1, 10
0017a4  9f402000  addli r1, zero, 20
0017a8  15001014  dma_cfg zero, zero, r1, 10
0017ac  9f502000  addli r1, zero, 21
0017b0  15001014  dma_cfg zero, zero, r1, 10
0017b4  9f602000  addli r1, zero, 22
0017b8  15001014  dma_cfg zero, zero, r1, 10
0017bc  9f702000  addli r1, zero, 23
0017c0  15001014  dma_cfg zero, zero, r1, 10
0017c4  9f003000  addli r1, zero, 24
0017c8  15001014  dma_cfg zero, zero, r1, 10
0017cc  9f103000  addli r1, zero, 25
0017d0  15001014  dma_cfg zero, zero, r1, 10
0017d4  9f203000  addli r1, zero, 26
0017d8  15001014  dma_cfg zero, zero, r1, 10
0017dc  9f303000  addli r1, zero, 27
0017e0  15001014  dma_cfg zero, zero, r1, 10
0017e4  9f403000  addli r1, zero, 28
0017e8  15001014  dma_cfg zero, zero, r1, 10
0017ec  9f503000  addli r1, zero, 29
0017f0  15001014  dma_cfg zero, zero, r1, 10
0017f4  9f603000  addli r1, zero, 30
0017f8  15001014  dma_cfg zero, zero, r1, 10
0017fc  9f703000  addli r1, zero, 31
001800  15001014  dma_cfg zero, zero, r1, 10
001804  95810100  dma_cfg r3, r3, zero, 0
001808  95010002  dma_cfg r3, zero, zero, 1
00180c  15000004  dma_cfg zero, zero, zero, 2
001810  1506b006  dma_cfg r12, zero, r11, 3
001814  15042009  dma_cfg r8, zero, r18, 4
001818  9504b00a  dma_cfg r9, zero, r11, 5
00181c  15000010  dma_cfg zero, zero, zero, 8
001820  35000000  dma_run zero
001824  1500300a  dma_cfg zero, zero, r3, 5
001828  15000010  dma_cfg zero, zero, zero, 8
00182c  1d100500  unlock r10
001830  7d000e00  xsignal r28, 0
001834  dbe2fdff  j -4332
001838  9f011000  addli r3, zero, 8
00183c  7d900600  xwait r13, 0
001840  9f000000  addli r1, zero, 0
001844  1b910a80  ori r2, r21, 2048
001848  2b530400  lui r6, 69
00184c  7d900100  xwait r3, 0
001850  9f611000  addli r3, zero, 14
001854  7d900100  xwait r3, 0
001858  ab410000  lui r3, 4
00185c  1d000600  lock zero, r12
001860  8985b500  mm_cfg r11, r11, r11, 0
001864  8906c704  mm_cfg r13, r14, r12, 2
001868  29011010  mm r2, zero, r1, 8
00186c  1f010102  addli r2, r2, 256
001870  8b903010  add.s r1, r1, r3
001874  1d100600  unlock r12
001878  bb1f61fe  bneq r2, r6, -28
00187c  9f500000  addli r1, zero, 5
001880  e74e0ffe  storeli.w zero, -20(r30)
001884  e74d0ffe  storeli.w zero, -36(r30)
001888  670d0ffe  storeli.w zero, -48(r30)
00188c  9f010000  addli r3, zero, 0
001890  7d800000  xsignal r1, 0
001894  9f100000  addli r1, zero, 1
001898  7d800300  xsignal r7, 0
00189c  e70d1ffe  storeli.w r1, -40(r30)
0018a0  9f401000  addli r1, zero, 12
0018a4  5bd4fdff  j -4448
0018a8  9f300000  addli r1, zero, 3
0018ac  bb501400  bneq r8, r1, 52
0018b0  9f501000  addli r1, zero, 13
0018b4  e70d0ffe  storeli.w zero, -40(r30)
0018b8  e74d0ffe  storeli.w zero, -36(r30)
0018bc  670d0ffe  storeli.w zero, -48(r30)
0018c0  674d0ffe  storeli.w zero, -44(r30)
0018c4  9f010000  addli r3, zero, 0
0018c8  7d900000  xwait r1, 0
0018cc  9f100000  addli r1, zero, 1
0018d0  e74e1ffe  storeli.w r1, -20(r30)
0018d4  9f002000  addli r1, zero, 16
0018d8  7d900000  xwait r1, 0
0018dc  dbcefdff  j -4492
0018e0  e74e0ffe  storeli.w zero, -20(r30)
0018e4  e70d0ffe  storeli.w zero, -40(r30)
0018e8  e74d0ffe  storeli.w zero, -36(r30)
0018ec  670d0ffe  storeli.w zero, -48(r30)
0018f0  9f010000  addli r3, zero, 0
0018f4  674d0ffe  storeli.w zero, -44(r30)
0018f8  5bcbfdff  j -4520
0018fc  7d000000  xsignal zero, 0
001900  bb600400  bneq r8, zero, 56
001904  9f200000  addli r1, zero, 2
001908  7d100000  xwait zero, 0
00190c  7d100000  xwait zero, 0
001910  7d100000  xwait zero, 0
001914  7d100000  xwait zero, 0
001918  7d100000  xwait zero, 0
00191c  7d100000  xwait zero, 0
001920  7d100000  xwait zero, 0
001924  7d100000  xwait zero, 0
001928  1d800000  lock zero, r1
00192c  0d000020  ew_cfg zero, zero, zero, 16
001930  1d900000  unlock r1
001934  7d400000  xsignal_mode_cfg zero
001938  9f8ebe00  addli sp, sp, 88
00193c  00a00300  mfence { lm, sm, gm }
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
0019b4  00100000  exit
0019b8  00100000  exit
0019bc  00100000  exit
0019c0  00100000  exit
0019c4  00100000  exit
0019c8  00100000  exit
0019cc  00100000  exit
0019d0  00100000  exit
0019d4  00100000  exit
0019d8  00100000  exit
0019dc  00100000  exit
0019e0  00100000  exit
0019e4  00100000  exit
0019e8  00100000  exit
0019ec  00100000  exit
0019f0  00100000  exit
0019f4  00100000  exit
0019f8  00100000  exit
0019fc  00100000  exit
001a00  00100000  exit
001a04  00100000  exit
001a08  00100000  exit
001a0c  00100000  exit
001a10  00100000  exit
001a14  00100000  exit
001a18  00100000  exit
001a1c  00100000  exit
001a20  00100000  exit
001a24  00100000  exit
001a28  00100000  exit
001a2c  00100000  exit
001a30  00100000  exit
001a34  00100000  exit
001a38  00100000  exit
001a3c  00100000  exit
001a40  00100000  exit
001a44  00100000  exit
001a48  00100000  exit
001a4c  00100000  exit
001a50  00100000  exit
001a54  00100000  exit
001a58  00100000  exit
001a5c  00100000  exit
001a60  00100000  exit
001a64  00100000  exit
001a68  00100000  exit
001a6c  00100000  exit
001a70  00100000  exit
001a74  00100000  exit
001a78  00100000  exit
001a7c  00100000  exit
001a80  00100000  exit
001a84  00100000  exit
001a88  00100000  exit
001a8c  00100000  exit
001a90  00100000  exit
001a94  00100000  exit
001a98  00100000  exit
001a9c  00100000  exit
001aa0  00100000  exit
001aa4  00100000  exit
001aa8  00100000  exit
001aac  00100000  exit
001ab0  00100000  exit
001ab4  00100000  exit
001ab8  00100000  exit
001abc  00100000  exit
001ac0  00100000  exit
001ac4  00100000  exit
001ac8  00100000  exit
001acc  00100000  exit
001ad0  00100000  exit
001ad4  00100000  exit
001ad8  00100000  exit
001adc  00100000  exit
001ae0  00100000  exit
001ae4  00100000  exit
001ae8  00100000  exit
001aec  00100000  exit
001af0  00100000  exit
001af4  00100000  exit
001af8  00100000  exit
001afc  00100000  exit
001b00  00100000  exit
001b04  00100000  exit
001b08  00100000  exit
001b0c  00100000  exit
001b10  00100000  exit
001b14  00100000  exit
001b18  00100000  exit
001b1c  00100000  exit
001b20  00100000  exit
001b24  00100000  exit
001b28  00100000  exit
001b2c  00100000  exit
001b30  00100000  exit
001b34  00100000  exit
001b38  00100000  exit
001b3c  00100000  exit
001b40  00100000  exit
001b44  00100000  exit
001b48  00100000  exit
001b4c  00100000  exit
001b50  00100000  exit
001b54  00100000  exit
001b58  00100000  exit
001b5c  00100000  exit
001b60  00100000  exit
001b64  00100000  exit
001b68  00100000  exit
001b6c  00100000  exit
001b70  00100000  exit
001b74  00100000  exit
001b78  00100000  exit
001b7c  00100000  exit
001b80  00100000  exit
