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
000120  1f311000  addli r2, zero, 11
000124  7d800000  xsignal r1, 0
000128  7d000100  xsignal r2, 0
00012c  9f002000  addli r1, zero, 16
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
000174  4b3d110a  ble.s r2, r1, 5964
000178  33110128  sext_int2long r[3:4], r2
00017c  b3940028  sext_int2long r[10:11], r1
000180  9f750000  addli r11, zero, 7
000184  1f660000  addli r12, zero, 6
000188  1f470000  addli r14, zero, 4
00018c  2b0b4000  lui r22, 1024
000190  ab0a807f  lui r21, 522240
000194  2b0dffff  lui r26, 1048560
000198  73382ffa  store.d r[3:4], -80(r30)
00019c  1f510000  addli r2, zero, 5
0001a0  93002400  seteq r1, r8, r2
0001a4  2bf17f7f  lui r2, 522239
0001a8  9b1cf1ff  ori r25, r2, 4095
0001ac  e74a1ffe  storeli.w r1, -84(r30)
0001b0  abf0ff7f  lui r1, 524287
0001b4  1b92f0ff  ori r4, r1, 4095
0001b8  ab700000  lui r1, 7
0001bc  9b92f0ff  ori r5, r1, 4095
0001c0  ab000200  lui r1, 32
0001c4  1b9e0020  ori r28, r1, 512
0001c8  db060000  j 52
0001cc  9f601000  addli r1, zero, 14
0001d0  00340002  core_id r8
0001d4  1f660000  addli r12, zero, 6
0001d8  1f470000  addli r14, zero, 4
0001dc  7d800000  xsignal r1, 0
0001e0  9f701000  addli r1, zero, 15
0001e4  7d800000  xsignal r1, 0
0001e8  eb540ffe  load.d r[10:11], -32(r30)
0001ec  eb500ffb  load.d r[2:3], -80(r30)
0001f0  a7940400  addli.d r[10:11], r[10:11], 1
0001f4  93b01404  setlt.sl r1, r[10:11], r[2:3]
0001f8  37ab000a  beq r1, zero, 5832
0001fc  e3005f00  loadli.w r1,  40(r30)
000200  63414f00  loadli.w r2,  36(r30)
000204  73309ffe  store.d r[10:11], -32(r30)
000208  8b901430  div.s r1, r9, r1
00020c  9f010100  addli r3, r2, 0
000210  0b913038  mod.s r2, r1, r3
000214  8b903030  div.s r1, r1, r3
000218  33110128  sext_int2long r[3:4], r2
00021c  33930028  sext_int2long r[7:8], r1
000220  1739b102  sll.d r[19:20], r[3:4], r11
000224  733c6ffa  store.d r[7:8], -72(r30)
000228  73302ffd  store.d r[19:20], -64(r30)
00022c  3b04c402  bneq r8, r12, 1280
000230  9f671000  addli r15, zero, 14
000234  eb540f00  load.d r[10:11], 0(r30)
000238  9f360000  addli r13, zero, 3
00023c  e74e0ffe  storeli.w zero, -20(r30)
000240  e70d0ffe  storeli.w zero, -40(r30)
000244  e74d0ffe  storeli.w zero, -36(r30)
000248  670d0ffe  storeli.w zero, -48(r30)
00024c  e74c0ffe  storeli.w zero, -52(r30)
000250  9f011000  addli r3, zero, 8
000254  9f381000  addli r17, zero, 11
000258  1f040002  addli r8, zero, 256
00025c  1f081000  addli r16, zero, 8
000260  1f1a1000  addli r20, zero, 9
000264  9f2b1000  addli r23, zero, 10
000268  9f4d1000  addli r27, zero, 12
00026c  1f2c2000  addli r24, zero, 18
000270  9730f302  sll.d r[2:3], r[7:8], r15
000274  1f530000  addli r6, zero, 5
000278  7d900600  xwait r13, 0
00027c  9f038000  addli r7, zero, 64
000280  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
000284  1d000300  lock zero, r6
000288  9f140000  addli r9, zero, 1
00028c  1f250000  addli r10, zero, 2
000290  15000014  dma_cfg zero, zero, zero, 10
000294  15009014  dma_cfg zero, zero, r9, 10
000298  1500a014  dma_cfg zero, zero, r10, 10
00029c  1500d014  dma_cfg zero, zero, r13, 10
0002a0  1500e014  dma_cfg zero, zero, r14, 10
0002a4  15006014  dma_cfg zero, zero, r6, 10
0002a8  1500c014  dma_cfg zero, zero, r12, 10
0002ac  1500b014  dma_cfg zero, zero, r11, 10
0002b0  15003014  dma_cfg zero, zero, r3, 10
0002b4  9f111000  addli r3, zero, 9
0002b8  15003014  dma_cfg zero, zero, r3, 10
0002bc  9f211000  addli r3, zero, 10
0002c0  15003014  dma_cfg zero, zero, r3, 10
0002c4  9f411000  addli r3, zero, 12
0002c8  15001015  dma_cfg zero, zero, r17, 10
0002cc  15003014  dma_cfg zero, zero, r3, 10
0002d0  9f511000  addli r3, zero, 13
0002d4  15003014  dma_cfg zero, zero, r3, 10
0002d8  9f711000  addli r3, zero, 15
0002dc  1500f014  dma_cfg zero, zero, r15, 10
0002e0  15003014  dma_cfg zero, zero, r3, 10
0002e4  9f012000  addli r3, zero, 16
0002e8  15003014  dma_cfg zero, zero, r3, 10
0002ec  9f112000  addli r3, zero, 17
0002f0  15003014  dma_cfg zero, zero, r3, 10
0002f4  9f212000  addli r3, zero, 18
0002f8  15003014  dma_cfg zero, zero, r3, 10
0002fc  9f312000  addli r3, zero, 19
000300  15003014  dma_cfg zero, zero, r3, 10
000304  9f412000  addli r3, zero, 20
000308  15003014  dma_cfg zero, zero, r3, 10
00030c  9f512000  addli r3, zero, 21
000310  15003014  dma_cfg zero, zero, r3, 10
000314  9f612000  addli r3, zero, 22
000318  15003014  dma_cfg zero, zero, r3, 10
00031c  9f712000  addli r3, zero, 23
000320  15003014  dma_cfg zero, zero, r3, 10
000324  9f013000  addli r3, zero, 24
000328  15003014  dma_cfg zero, zero, r3, 10
00032c  9f113000  addli r3, zero, 25
000330  15003014  dma_cfg zero, zero, r3, 10
000334  9f213000  addli r3, zero, 26
000338  15003014  dma_cfg zero, zero, r3, 10
00033c  9f313000  addli r3, zero, 27
000340  15003014  dma_cfg zero, zero, r3, 10
000344  9f413000  addli r3, zero, 28
000348  15003014  dma_cfg zero, zero, r3, 10
00034c  9f513000  addli r3, zero, 29
000350  15003014  dma_cfg zero, zero, r3, 10
000354  9f613000  addli r3, zero, 30
000358  15003014  dma_cfg zero, zero, r3, 10
00035c  9f713000  addli r3, zero, 31
000360  15003014  dma_cfg zero, zero, r3, 10
000364  9f010001  addli r3, zero, 128
000368  95840400  dma_cfg r9, r9, zero, 0
00036c  95040002  dma_cfg r9, zero, zero, 1
000370  15000004  dma_cfg zero, zero, zero, 2
000374  15007006  dma_cfg zero, zero, r7, 3
000378  9501a008  dma_cfg r3, zero, r10, 4
00037c  1504300a  dma_cfg r8, zero, r3, 5
000380  15000010  dma_cfg zero, zero, zero, 8
000384  35000000  dma_run zero
000388  1500900a  dma_cfg zero, zero, r9, 5
00038c  15000010  dma_cfg zero, zero, zero, 8
000390  1d100300  unlock r6
000394  1d000700  lock zero, r14
000398  95840400  dma_cfg r9, r9, zero, 0
00039c  15000104  dma_cfg zero, r2, zero, 2
0003a0  95837006  dma_cfg r7, r1, r7, 3
0003a4  9f501000  addli r1, zero, 13
0003a8  9581a308  dma_cfg r3, r7, r10, 4
0003ac  1584310a  dma_cfg r8, r3, r3, 5
0003b0  15000010  dma_cfg zero, zero, zero, 8
0003b4  35000000  dma_run zero
0003b8  1500900a  dma_cfg zero, zero, r9, 5
0003bc  15000010  dma_cfg zero, zero, zero, 8
0003c0  1d100700  unlock r14
0003c4  1d000300  lock zero, r6
0003c8  15000014  dma_cfg zero, zero, zero, 10
0003cc  15009014  dma_cfg zero, zero, r9, 10
0003d0  1500a014  dma_cfg zero, zero, r10, 10
0003d4  1500d014  dma_cfg zero, zero, r13, 10
0003d8  1500e014  dma_cfg zero, zero, r14, 10
0003dc  15006014  dma_cfg zero, zero, r6, 10
0003e0  1500c014  dma_cfg zero, zero, r12, 10
0003e4  1500b014  dma_cfg zero, zero, r11, 10
0003e8  15000015  dma_cfg zero, zero, r16, 10
0003ec  1f081000  addli r16, zero, 8
0003f0  15004015  dma_cfg zero, zero, r20, 10
0003f4  1f1a1000  addli r20, zero, 9
0003f8  15007015  dma_cfg zero, zero, r23, 10
0003fc  9f4b1000  addli r23, zero, 12
000400  15001015  dma_cfg zero, zero, r17, 10
000404  1500b015  dma_cfg zero, zero, r27, 10
000408  9f4d2000  addli r27, zero, 20
00040c  15001014  dma_cfg zero, zero, r1, 10
000410  9f701000  addli r1, zero, 15
000414  1500f014  dma_cfg zero, zero, r15, 10
000418  15001014  dma_cfg zero, zero, r1, 10
00041c  9f002000  addli r1, zero, 16
000420  15001014  dma_cfg zero, zero, r1, 10
000424  9f102000  addli r1, zero, 17
000428  15001014  dma_cfg zero, zero, r1, 10
00042c  9f302000  addli r1, zero, 19
000430  15008015  dma_cfg zero, zero, r24, 10
000434  1f3c2000  addli r24, zero, 19
000438  15001014  dma_cfg zero, zero, r1, 10
00043c  9f402000  addli r1, zero, 20
000440  15001014  dma_cfg zero, zero, r1, 10
000444  9f502000  addli r1, zero, 21
000448  15001014  dma_cfg zero, zero, r1, 10
00044c  9f602000  addli r1, zero, 22
000450  15001014  dma_cfg zero, zero, r1, 10
000454  9f702000  addli r1, zero, 23
000458  15001014  dma_cfg zero, zero, r1, 10
00045c  9f003000  addli r1, zero, 24
000460  15001014  dma_cfg zero, zero, r1, 10
000464  9f103000  addli r1, zero, 25
000468  15001014  dma_cfg zero, zero, r1, 10
00046c  9f203000  addli r1, zero, 26
000470  15001014  dma_cfg zero, zero, r1, 10
000474  9f303000  addli r1, zero, 27
000478  15001014  dma_cfg zero, zero, r1, 10
00047c  9f403000  addli r1, zero, 28
000480  15001014  dma_cfg zero, zero, r1, 10
000484  9f503000  addli r1, zero, 29
000488  15001014  dma_cfg zero, zero, r1, 10
00048c  9f603000  addli r1, zero, 30
000490  15001014  dma_cfg zero, zero, r1, 10
000494  9f703000  addli r1, zero, 31
000498  15001014  dma_cfg zero, zero, r1, 10
00049c  97309902  sll.d r[2:3], r[19:20], r9
0004a0  6b590f01  load.d r[19:20], 16(r30)
0004a4  95840400  dma_cfg r9, r9, zero, 0
0004a8  95040002  dma_cfg r9, zero, zero, 1
0004ac  15000004  dma_cfg zero, zero, zero, 2
0004b0  8b201910  add.ul r[2:3], r[19:20], r[2:3]
0004b4  1f291000  addli r18, zero, 10
0004b8  9f090004  addli r19, zero, 512
0004bc  15007006  dma_cfg zero, zero, r7, 3
0004c0  9501a008  dma_cfg r3, zero, r10, 4
0004c4  1504300a  dma_cfg r8, zero, r3, 5
0004c8  15000010  dma_cfg zero, zero, zero, 8
0004cc  35000000  dma_run zero
0004d0  1500900a  dma_cfg zero, zero, r9, 5
0004d4  15000010  dma_cfg zero, zero, zero, 8
0004d8  1d100300  unlock r6
0004dc  7d000500  xsignal r10, 0
0004e0  7d900800  xwait r17, 0
0004e4  1d000300  lock zero, r6
0004e8  15000014  dma_cfg zero, zero, zero, 10
0004ec  15009014  dma_cfg zero, zero, r9, 10
0004f0  1500a014  dma_cfg zero, zero, r10, 10
0004f4  1500d014  dma_cfg zero, zero, r13, 10
0004f8  1500e014  dma_cfg zero, zero, r14, 10
0004fc  15006014  dma_cfg zero, zero, r6, 10
000500  1500c014  dma_cfg zero, zero, r12, 10
000504  1500b014  dma_cfg zero, zero, r11, 10
000508  15000015  dma_cfg zero, zero, r16, 10
00050c  1f181000  addli r16, zero, 9
000510  15004015  dma_cfg zero, zero, r20, 10
000514  1f4a1000  addli r20, zero, 12
000518  15002015  dma_cfg zero, zero, r18, 10
00051c  1f591000  addli r18, zero, 13
000520  15001015  dma_cfg zero, zero, r17, 10
000524  15007015  dma_cfg zero, zero, r23, 10
000528  9f3b2000  addli r23, zero, 19
00052c  15002015  dma_cfg zero, zero, r18, 10
000530  1f791000  addli r18, zero, 15
000534  1500f014  dma_cfg zero, zero, r15, 10
000538  15002015  dma_cfg zero, zero, r18, 10
00053c  1f092000  addli r18, zero, 16
000540  15002015  dma_cfg zero, zero, r18, 10
000544  1f192000  addli r18, zero, 17
000548  15002015  dma_cfg zero, zero, r18, 10
00054c  1f292000  addli r18, zero, 18
000550  15002015  dma_cfg zero, zero, r18, 10
000554  1f592000  addli r18, zero, 21
000558  15008015  dma_cfg zero, zero, r24, 10
00055c  1f4c2000  addli r24, zero, 20
000560  1500b015  dma_cfg zero, zero, r27, 10
000564  9f5d2000  addli r27, zero, 21
000568  15002015  dma_cfg zero, zero, r18, 10
00056c  1f692000  addli r18, zero, 22
000570  15002015  dma_cfg zero, zero, r18, 10
000574  1f792000  addli r18, zero, 23
000578  15002015  dma_cfg zero, zero, r18, 10
00057c  1f093000  addli r18, zero, 24
000580  15002015  dma_cfg zero, zero, r18, 10
000584  1f193000  addli r18, zero, 25
000588  15002015  dma_cfg zero, zero, r18, 10
00058c  1f293000  addli r18, zero, 26
000590  15002015  dma_cfg zero, zero, r18, 10
000594  1f393000  addli r18, zero, 27
000598  15002015  dma_cfg zero, zero, r18, 10
00059c  1f493000  addli r18, zero, 28
0005a0  15002015  dma_cfg zero, zero, r18, 10
0005a4  1f593000  addli r18, zero, 29
0005a8  15002015  dma_cfg zero, zero, r18, 10
0005ac  1f693000  addli r18, zero, 30
0005b0  15002015  dma_cfg zero, zero, r18, 10
0005b4  1f793000  addli r18, zero, 31
0005b8  15002015  dma_cfg zero, zero, r18, 10
0005bc  2b090100  lui r18, 16
0005c0  95840400  dma_cfg r9, r9, zero, 0
0005c4  95040002  dma_cfg r9, zero, zero, 1
0005c8  15000004  dma_cfg zero, zero, zero, 2
0005cc  15097006  dma_cfg r18, zero, r7, 3
0005d0  9501e008  dma_cfg r3, zero, r14, 4
0005d4  9b110904  ori r3, r18, 64
0005d8  9509900a  dma_cfg r19, zero, r9, 5
0005dc  15000010  dma_cfg zero, zero, zero, 8
0005e0  35000000  dma_run zero
0005e4  1500900a  dma_cfg zero, zero, r9, 5
0005e8  15000010  dma_cfg zero, zero, zero, 8
0005ec  1d100300  unlock r6
0005f0  1d000700  lock zero, r14
0005f4  95840400  dma_cfg r9, r9, zero, 0
0005f8  15000104  dma_cfg zero, r2, zero, 2
0005fc  95817006  dma_cfg r3, r1, r7, 3
000600  9f000001  addli r1, zero, 128
000604  1f011000  addli r2, zero, 8
000608  ab010100  lui r3, 16
00060c  9580e308  dma_cfg r1, r7, r14, 4
000610  9509940a  dma_cfg r19, r8, r9, 5
000614  1f541000  addli r8, zero, 13
000618  15000010  dma_cfg zero, zero, zero, 8
00061c  35000000  dma_run zero
000620  1500900a  dma_cfg zero, zero, r9, 5
000624  15000010  dma_cfg zero, zero, zero, 8
000628  1d100700  unlock r14
00062c  1d000300  lock zero, r6
000630  15000014  dma_cfg zero, zero, zero, 10
000634  15009014  dma_cfg zero, zero, r9, 10
000638  1500a014  dma_cfg zero, zero, r10, 10
00063c  1500d014  dma_cfg zero, zero, r13, 10
000640  1500e014  dma_cfg zero, zero, r14, 10
000644  15006014  dma_cfg zero, zero, r6, 10
000648  1500c014  dma_cfg zero, zero, r12, 10
00064c  1500b014  dma_cfg zero, zero, r11, 10
000650  15002014  dma_cfg zero, zero, r2, 10
000654  1f211000  addli r2, zero, 10
000658  15000015  dma_cfg zero, zero, r16, 10
00065c  15002014  dma_cfg zero, zero, r2, 10
000660  15001015  dma_cfg zero, zero, r17, 10
000664  15004015  dma_cfg zero, zero, r20, 10
000668  15008014  dma_cfg zero, zero, r8, 10
00066c  1f741000  addli r8, zero, 15
000670  1500f014  dma_cfg zero, zero, r15, 10
000674  15008014  dma_cfg zero, zero, r8, 10
000678  1f042000  addli r8, zero, 16
00067c  15008014  dma_cfg zero, zero, r8, 10
000680  1f142000  addli r8, zero, 17
000684  15008014  dma_cfg zero, zero, r8, 10
000688  1f242000  addli r8, zero, 18
00068c  15008014  dma_cfg zero, zero, r8, 10
000690  1f642000  addli r8, zero, 22
000694  15007015  dma_cfg zero, zero, r23, 10
000698  15008015  dma_cfg zero, zero, r24, 10
00069c  1500b015  dma_cfg zero, zero, r27, 10
0006a0  15008014  dma_cfg zero, zero, r8, 10
0006a4  1f742000  addli r8, zero, 23
0006a8  15008014  dma_cfg zero, zero, r8, 10
0006ac  1f043000  addli r8, zero, 24
0006b0  15008014  dma_cfg zero, zero, r8, 10
0006b4  1f143000  addli r8, zero, 25
0006b8  15008014  dma_cfg zero, zero, r8, 10
0006bc  1f243000  addli r8, zero, 26
0006c0  15008014  dma_cfg zero, zero, r8, 10
0006c4  1f343000  addli r8, zero, 27
0006c8  15008014  dma_cfg zero, zero, r8, 10
0006cc  1f443000  addli r8, zero, 28
0006d0  15008014  dma_cfg zero, zero, r8, 10
0006d4  1f543000  addli r8, zero, 29
0006d8  15008014  dma_cfg zero, zero, r8, 10
0006dc  1f643000  addli r8, zero, 30
0006e0  15008014  dma_cfg zero, zero, r8, 10
0006e4  1f743000  addli r8, zero, 31
0006e8  15008014  dma_cfg zero, zero, r8, 10
0006ec  95840400  dma_cfg r9, r9, zero, 0
0006f0  95040002  dma_cfg r9, zero, zero, 1
0006f4  15000004  dma_cfg zero, zero, zero, 2
0006f8  95017006  dma_cfg r3, zero, r7, 3
0006fc  e3439fff  loadli.w r7,  -52(r30)
000700  9500e008  dma_cfg r1, zero, r14, 4
000704  9509900a  dma_cfg r19, zero, r9, 5
000708  15000010  dma_cfg zero, zero, zero, 8
00070c  35000000  dma_run zero
000710  1500900a  dma_cfg zero, zero, r9, 5
000714  15000010  dma_cfg zero, zero, zero, 8
000718  1d100300  unlock r6
00071c  7d000100  xsignal r2, 0
000720  e3405fff  loadli.w r1,  -84(r30)
000724  674d1ffe  storeli.w r1, -44(r30)
000728  5b900000  j 1152
00072c  9f300000  addli r1, zero, 3
000730  bfc18000  blt.s r1, r8, 112
000734  9f100000  addli r1, zero, 1
000738  b7051400  beq r8, r1, 352
00073c  9f200000  addli r1, zero, 2
000740  3b331400  bneq r8, r1, 204
000744  1f210000  addli r2, zero, 2
000748  9f500000  addli r1, zero, 5
00074c  e74e0ffe  storeli.w zero, -20(r30)
000750  e70d0ffe  storeli.w zero, -40(r30)
000754  e74d0ffe  storeli.w zero, -36(r30)
000758  9f030000  addli r7, zero, 0
00075c  7d100100  xwait r2, 0
000760  7d900000  xwait r1, 0
000764  1d000000  lock zero, zero
000768  9f008000  addli r1, zero, 64
00076c  01010000  ds_cfg r2, zero, 0
000770  1f010001  addli r2, zero, 128
000774  81000002  ds_cfg r1, zero, 1
000778  8100001c  ds_cfg r1, zero, 14
00077c  0101001a  ds_cfg r2, zero, 13
000780  21101002  shuffle_batch zero, zero, r1, 1
000784  9f300000  addli r1, zero, 3
000788  1d100000  unlock zero
00078c  7d800000  xsignal r1, 0
000790  9f100000  addli r1, zero, 1
000794  670d1ffe  storeli.w r1, -48(r30)
000798  7d000700  xsignal r14, 0
00079c  5b800000  j 1024
0007a0  1f010001  addli r2, zero, 128
0007a4  b76de400  beq r8, r14, 888
0007a8  bb11b400  bneq r8, r11, 100
0007ac  9f101000  addli r1, zero, 9
0007b0  e74e0ffe  storeli.w zero, -20(r30)
0007b4  e70d0ffe  storeli.w zero, -40(r30)
0007b8  670d0ffe  storeli.w zero, -48(r30)
0007bc  674d0ffe  storeli.w zero, -44(r30)
0007c0  7d100600  xwait r12, 0
0007c4  9f030000  addli r7, zero, 0
0007c8  7d900000  xwait r1, 0
0007cc  9f200000  addli r1, zero, 2
0007d0  1d000000  lock zero, zero
0007d4  81000000  ds_cfg r1, zero, 0
0007d8  9f008000  addli r1, zero, 64
0007dc  01010002  ds_cfg r2, zero, 1
0007e0  8100001c  ds_cfg r1, zero, 14
0007e4  0101001a  ds_cfg r2, zero, 13
0007e8  2b810000  lui r2, 8
0007ec  41001104  shuffle_coa zero, r2, r1, 2
0007f0  9f100000  addli r1, zero, 1
0007f4  1d100000  unlock zero
0007f8  7d800500  xsignal r11, 0
0007fc  e74d1ffe  storeli.w r1, -36(r30)
000800  9f001000  addli r1, zero, 8
000804  7d800000  xsignal r1, 0
000808  db730000  j 924
00080c  9f500000  addli r1, zero, 5
000810  3b711408  bneq r8, r1, 4188
000814  1f211000  addli r2, zero, 10
000818  9f000000  addli r1, zero, 0
00081c  ab010100  lui r3, 16
000820  7d100100  xwait r2, 0
000824  1f411000  addli r2, zero, 12
000828  7d100100  xwait r2, 0
00082c  1f210000  addli r2, zero, 2
000830  1d000100  lock zero, r2
000834  2b01803f  lui r2, 260096
000838  0d000002  ew_cfg zero, zero, zero, 1
00083c  0d110100  ewcoeff_cfg r2, r2, zero, 0
000840  1f71f000  addli r2, zero, 127
000844  0d000104  ew_cfg zero, r2, zero, 2
000848  1f110000  addli r2, zero, 1
00084c  0d010006  ew_cfg r2, zero, zero, 3
000850  0b91c011  add.s r2, r1, r28
000854  9f800004  addli r1, r1, 512
000858  2d013100  dsmadd r2, r2, r3, 0
00085c  bbdf30fe  bneq r1, r3, -12
000860  9f200000  addli r1, zero, 2
000864  e74e0ffe  storeli.w zero, -20(r30)
000868  e70d0ffe  storeli.w zero, -40(r30)
00086c  e74d0ffe  storeli.w zero, -36(r30)
000870  670d0ffe  storeli.w zero, -48(r30)
000874  9f030000  addli r7, zero, 0
000878  1d900000  unlock r1
00087c  9f301000  addli r1, zero, 11
000880  7d800000  xsignal r1, 0
000884  9f100000  addli r1, zero, 1
000888  674d1ffe  storeli.w r1, -44(r30)
00088c  9f501000  addli r1, zero, 13
000890  7d800000  xsignal r1, 0
000894  db620000  j 788
000898  9f110000  addli r3, zero, 1
00089c  1f530000  addli r6, zero, 5
0008a0  eb538f00  load.d r[8:9], 8(r30)
0008a4  e74e0ffe  storeli.w zero, -20(r30)
0008a8  e70d0ffe  storeli.w zero, -40(r30)
0008ac  e74d0ffe  storeli.w zero, -36(r30)
0008b0  670d0ffe  storeli.w zero, -48(r30)
0008b4  7d900500  xwait r11, 0
0008b8  9f161000  addli r13, zero, 9
0008bc  9f271000  addli r15, zero, 10
0008c0  1f381000  addli r16, zero, 11
0008c4  9f481000  addli r17, zero, 12
0008c8  1f0a2000  addli r20, zero, 16
0008cc  9f1b2000  addli r23, zero, 17
0008d0  1f2c2000  addli r24, zero, 18
0008d4  9f3d2000  addli r27, zero, 19
0008d8  1f050001  addli r10, zero, 128
0008dc  9f040004  addli r9, zero, 512
0008e0  97303902  sll.d r[2:3], r[19:20], r3
0008e4  1d000300  lock zero, r6
0008e8  1f591000  addli r18, zero, 13
0008ec  9f791000  addli r19, zero, 15
0008f0  15000014  dma_cfg zero, zero, zero, 10
0008f4  8ba31310  add.ul r[8:9], r[8:9], r[2:3]
0008f8  9f200000  addli r1, zero, 2
0008fc  15003014  dma_cfg zero, zero, r3, 10
000900  2b810000  lui r2, 8
000904  15001014  dma_cfg zero, zero, r1, 10
000908  9f300000  addli r1, zero, 3
00090c  15001014  dma_cfg zero, zero, r1, 10
000910  9f001000  addli r1, zero, 8
000914  1500e014  dma_cfg zero, zero, r14, 10
000918  15006014  dma_cfg zero, zero, r6, 10
00091c  1500c014  dma_cfg zero, zero, r12, 10
000920  1500b014  dma_cfg zero, zero, r11, 10
000924  15001014  dma_cfg zero, zero, r1, 10
000928  9f601000  addli r1, zero, 14
00092c  1500d014  dma_cfg zero, zero, r13, 10
000930  1500f014  dma_cfg zero, zero, r15, 10
000934  15000015  dma_cfg zero, zero, r16, 10
000938  15001015  dma_cfg zero, zero, r17, 10
00093c  15002015  dma_cfg zero, zero, r18, 10
000940  15001014  dma_cfg zero, zero, r1, 10
000944  9f402000  addli r1, zero, 20
000948  15003015  dma_cfg zero, zero, r19, 10
00094c  15004015  dma_cfg zero, zero, r20, 10
000950  15007015  dma_cfg zero, zero, r23, 10
000954  15008015  dma_cfg zero, zero, r24, 10
000958  1500b015  dma_cfg zero, zero, r27, 10
00095c  15001014  dma_cfg zero, zero, r1, 10
000960  9f502000  addli r1, zero, 21
000964  15001014  dma_cfg zero, zero, r1, 10
000968  9f602000  addli r1, zero, 22
00096c  15001014  dma_cfg zero, zero, r1, 10
000970  9f702000  addli r1, zero, 23
000974  15001014  dma_cfg zero, zero, r1, 10
000978  9f003000  addli r1, zero, 24
00097c  15001014  dma_cfg zero, zero, r1, 10
000980  9f103000  addli r1, zero, 25
000984  15001014  dma_cfg zero, zero, r1, 10
000988  9f203000  addli r1, zero, 26
00098c  15001014  dma_cfg zero, zero, r1, 10
000990  9f303000  addli r1, zero, 27
000994  15001014  dma_cfg zero, zero, r1, 10
000998  9f403000  addli r1, zero, 28
00099c  15001014  dma_cfg zero, zero, r1, 10
0009a0  9f503000  addli r1, zero, 29
0009a4  15001014  dma_cfg zero, zero, r1, 10
0009a8  9f603000  addli r1, zero, 30
0009ac  15001014  dma_cfg zero, zero, r1, 10
0009b0  9f703000  addli r1, zero, 31
0009b4  15001014  dma_cfg zero, zero, r1, 10
0009b8  9f008000  addli r1, zero, 64
0009bc  95810100  dma_cfg r3, r3, zero, 0
0009c0  95010002  dma_cfg r3, zero, zero, 1
0009c4  15000004  dma_cfg zero, zero, zero, 2
0009c8  15011006  dma_cfg r2, zero, r1, 3
0009cc  1505e008  dma_cfg r10, zero, r14, 4
0009d0  9504100a  dma_cfg r9, zero, r1, 5
0009d4  15000010  dma_cfg zero, zero, zero, 8
0009d8  35000000  dma_run zero
0009dc  1500300a  dma_cfg zero, zero, r3, 5
0009e0  15000010  dma_cfg zero, zero, zero, 8
0009e4  1d100300  unlock r6
0009e8  1d000700  lock zero, r14
0009ec  95810100  dma_cfg r3, r3, zero, 0
0009f0  9b110104  ori r3, r2, 64
0009f4  15000404  dma_cfg zero, r8, zero, 2
0009f8  95811306  dma_cfg r3, r7, r1, 3
0009fc  9f010010  addli r3, zero, 2048
000a00  9f130000  addli r7, zero, 1
000a04  1f442000  addli r8, zero, 20
000a08  1585e008  dma_cfg r10, r1, r14, 4
000a0c  9584110a  dma_cfg r9, r3, r1, 5
000a10  9f210000  addli r3, zero, 2
000a14  15000010  dma_cfg zero, zero, zero, 8
000a18  35000000  dma_run zero
000a1c  1500700a  dma_cfg zero, zero, r7, 5
000a20  15000010  dma_cfg zero, zero, zero, 8
000a24  1d100700  unlock r14
000a28  1d000300  lock zero, r6
000a2c  15000014  dma_cfg zero, zero, zero, 10
000a30  15007014  dma_cfg zero, zero, r7, 10
000a34  15003014  dma_cfg zero, zero, r3, 10
000a38  9f310000  addli r3, zero, 3
000a3c  15003014  dma_cfg zero, zero, r3, 10
000a40  9f011000  addli r3, zero, 8
000a44  1500e014  dma_cfg zero, zero, r14, 10
000a48  15006014  dma_cfg zero, zero, r6, 10
000a4c  1500c014  dma_cfg zero, zero, r12, 10
000a50  1500b014  dma_cfg zero, zero, r11, 10
000a54  15003014  dma_cfg zero, zero, r3, 10
000a58  9f611000  addli r3, zero, 14
000a5c  1500d014  dma_cfg zero, zero, r13, 10
000a60  1500f014  dma_cfg zero, zero, r15, 10
000a64  15000015  dma_cfg zero, zero, r16, 10
000a68  15001015  dma_cfg zero, zero, r17, 10
000a6c  15002015  dma_cfg zero, zero, r18, 10
000a70  15003014  dma_cfg zero, zero, r3, 10
000a74  9f010001  addli r3, zero, 128
000a78  15003015  dma_cfg zero, zero, r19, 10
000a7c  15004015  dma_cfg zero, zero, r20, 10
000a80  15007015  dma_cfg zero, zero, r23, 10
000a84  15008015  dma_cfg zero, zero, r24, 10
000a88  1500b015  dma_cfg zero, zero, r27, 10
000a8c  15008014  dma_cfg zero, zero, r8, 10
000a90  1f542000  addli r8, zero, 21
000a94  15008014  dma_cfg zero, zero, r8, 10
000a98  1f642000  addli r8, zero, 22
000a9c  15008014  dma_cfg zero, zero, r8, 10
000aa0  1f742000  addli r8, zero, 23
000aa4  15008014  dma_cfg zero, zero, r8, 10
000aa8  1f043000  addli r8, zero, 24
000aac  15008014  dma_cfg zero, zero, r8, 10
000ab0  1f143000  addli r8, zero, 25
000ab4  15008014  dma_cfg zero, zero, r8, 10
000ab8  1f243000  addli r8, zero, 26
000abc  15008014  dma_cfg zero, zero, r8, 10
000ac0  1f343000  addli r8, zero, 27
000ac4  15008014  dma_cfg zero, zero, r8, 10
000ac8  1f443000  addli r8, zero, 28
000acc  15008014  dma_cfg zero, zero, r8, 10
000ad0  1f543000  addli r8, zero, 29
000ad4  15008014  dma_cfg zero, zero, r8, 10
000ad8  1f643000  addli r8, zero, 30
000adc  15008014  dma_cfg zero, zero, r8, 10
000ae0  1f743000  addli r8, zero, 31
000ae4  15008014  dma_cfg zero, zero, r8, 10
000ae8  95830300  dma_cfg r7, r7, zero, 0
000aec  95030002  dma_cfg r7, zero, zero, 1
000af0  15000004  dma_cfg zero, zero, zero, 2
000af4  15011006  dma_cfg r2, zero, r1, 3
000af8  9501e008  dma_cfg r3, zero, r14, 4
000afc  9504100a  dma_cfg r9, zero, r1, 5
000b00  15000010  dma_cfg zero, zero, zero, 8
000b04  35000000  dma_run zero
000b08  1500700a  dma_cfg zero, zero, r7, 5
000b0c  15000010  dma_cfg zero, zero, zero, 8
000b10  1d100300  unlock r6
000b14  7d000600  xsignal r12, 0
000b18  db100000  j 132
000b1c  9f001000  addli r1, zero, 8
000b20  e74e0ffe  storeli.w zero, -20(r30)
000b24  e74d0ffe  storeli.w zero, -36(r30)
000b28  670d0ffe  storeli.w zero, -48(r30)
000b2c  7d100700  xwait r14, 0
000b30  9f110000  addli r3, zero, 1
000b34  9f030000  addli r7, zero, 0
000b38  7d900000  xwait r1, 0
000b3c  9f601000  addli r1, zero, 14
000b40  7d900000  xwait r1, 0
000b44  9f008000  addli r1, zero, 64
000b48  1d800100  lock zero, r3
000b4c  89802000  mm_cfg r1, r1, r2, 0
000b50  09073704  mm_cfg r14, r14, r3, 2
000b54  290e0010  mm r28, zero, zero, 8
000b58  1d900100  unlock r3
000b5c  1d800100  lock zero, r3
000b60  89802000  mm_cfg r1, r1, r2, 0
000b64  ab000200  lui r1, 32
000b68  2b410000  lui r2, 4
000b6c  09073704  mm_cfg r14, r14, r3, 2
000b70  9b900030  ori r1, r1, 768
000b74  a9002010  mm r1, zero, r2, 8
000b78  9f100000  addli r1, zero, 1
000b7c  e70d1ffe  storeli.w r1, -40(r30)
000b80  9f500000  addli r1, zero, 5
000b84  1d900100  unlock r3
000b88  7d800000  xsignal r1, 0
000b8c  9f101000  addli r1, zero, 9
000b90  7d800000  xsignal r1, 0
000b94  9f401000  addli r1, zero, 12
000b98  7d800000  xsignal r1, 0
000b9c  e3405fff  loadli.w r1,  -84(r30)
000ba0  674d1ffe  storeli.w r1, -44(r30)
000ba4  ab010100  lui r3, 16
000ba8  9f70f001  addli r1, zero, 255
000bac  3d000000  xfence
000bb0  9b970120  ori r15, r3, 512
000bb4  00a00300  mfence { lm, sm, gm }
000bb8  80a20004  csr_set csr5, r1
000bbc  9f000001  addli r1, zero, 128
000bc0  00e00200  sync_core
000bc4  33810028  zext_int2long r[3:4], r1
000bc8  80300002  core_id r1
000bcc  b7b00000  beq r1, zero, 44
000bd0  bb960300  bneq r7, zero, 420
000bd4  e300afff  loadli.w r1,  -48(r30)
000bd8  3bdc0000  bneq r1, zero, 788
000bdc  e340dfff  loadli.w r1,  -20(r30)
000be0  3b920002  bneq r1, zero, 1156
000be4  e300bfff  loadli.w r1,  -40(r30)
000be8  bbd70002  bneq r1, zero, 1524
000bec  e340afff  loadli.w r1,  -44(r30)
000bf0  bb9d0002  bneq r1, zero, 1892
000bf4  5b1a0100  j 2256
000bf8  e74c7ffe  storeli.w r7, -52(r30)
000bfc  33030028  zext_int2long r[7:8], zero
000c00  3d000000  xfence
000c04  00a00300  mfence { lm, sm, gm }
000c08  73386ffe  store.d r[7:8], -16(r30)
000c0c  5b040000  j 32
000c10  9f701000  addli r1, zero, 15
000c14  6b548fff  load.d r[9:10], -8(r30)
000c18  9f750000  addli r11, zero, 7
000c1c  33830028  zext_int2long r[7:8], r1
000c20  93206404  setlt.ul r1, r[9:10], r[7:8]
000c24  27130400  addli.d r[7:8], r[9:10], 1
000c28  37850000  beq r1, zero, 320
000c2c  733c6ffe  store.d r[7:8], -8(r30)
000c30  1734b302  sll.d r[9:10], r[7:8], r11
000c34  6b530fff  load.d r[7:8], -16(r30)
000c38  db040000  j 36
000c3c  27430300  addli.d r[7:8], r[7:8], 4
000c40  0b95fd10  add.s r10, r27, r15
000c44  93202302  setneq.d r1, r[7:8], r[3:4]
000c48  73662501  stores.w r18, 12(r10)
000c4c  73648501  stores.w r24, 8(r10)
000c50  7362b500  stores.w r11, 4(r10)
000c54  73600501  stores.w r16, 0(r10)
000c58  b7ee00fe  beq r1, zero, -72
000c5c  0b258310  add.ul r[11:12], r[7:8], r[9:10]
000c60  9b3d2500  slli r27, r10, 2
000c64  0b95cd11  add.s r10, r27, r28
000c68  ef4bc500  loads.w r23, 12(r10)
000c6c  ef400500  loads.w r1, 0(r10)
000c70  6f464500  loads.w r12, 4(r10)
000c74  6f4a8500  loads.w r20, 8(r10)
000c78  97894b00  and r19, r23, r4
000c7c  13853a05  setlt.u r10, r21, r19
000c80  3b300500  bneq r10, zero, 12
000c84  1f890b00  addli r18, r23, 0
000c88  5b010000  j 8
000c8c  17996b01  or r18, r23, r22
000c90  17054a00  and r10, r20, r4
000c94  9385aa04  setlt.u r11, r21, r10
000c98  3bb00500  bneq r11, zero, 12
000c9c  1f0c0a00  addli r24, r20, 0
000ca0  5b010000  j 8
000ca4  171c6a01  or r24, r20, r22
000ca8  97084600  and r17, r12, r4
000cac  93851a05  setlt.u r11, r21, r17
000cb0  3bb00500  bneq r11, zero, 12
000cb4  9f050600  addli r11, r12, 0
000cb8  5b010000  j 8
000cbc  97156601  or r11, r12, r22
000cc0  97864000  and r13, r1, r4
000cc4  1387da04  setlt.u r14, r21, r13
000cc8  3b500700  bneq r14, zero, 20
000ccc  1f880000  addli r16, r1, 0
000cd0  9386dc04  setlt.u r13, r25, r13
000cd4  37d00600  beq r13, zero, 20
000cd8  db040000  j 36
000cdc  17986001  or r16, r1, r22
000ce0  9386dc04  setlt.u r13, r25, r13
000ce4  3be00600  bneq r13, zero, 24
000ce8  9bc60001  srli r13, r1, 16
000cec  9b861600  andi r13, r13, 1
000cf0  8b90d010  add.s r1, r1, r13
000cf4  8b905010  add.s r1, r1, r5
000cf8  1788a001  and r16, r1, r26
000cfc  93801c05  setlt.u r1, r25, r17
000d00  37e00000  beq r1, zero, 24
000d04  9380ac04  setlt.u r1, r25, r10
000d08  b7b00000  beq r1, zero, 44
000d0c  93803c05  setlt.u r1, r25, r19
000d10  bbbc00fe  bneq r1, zero, -212
000d14  db070000  j 60
000d18  9b400601  srli r1, r12, 16
000d1c  9b801000  andi r1, r1, 1
000d20  8b101610  add.s r1, r12, r1
000d24  8b905010  add.s r1, r1, r5
000d28  9785a001  and r11, r1, r26
000d2c  9380ac04  setlt.u r1, r25, r10
000d30  3bff00fe  bneq r1, zero, -36
000d34  9b400a01  srli r1, r20, 16
000d38  9b801000  andi r1, r1, 1
000d3c  8b101a10  add.s r1, r20, r1
000d40  8b905010  add.s r1, r1, r5
000d44  178ca001  and r24, r1, r26
000d48  93803c05  setlt.u r1, r25, r19
000d4c  bbcb00fe  bneq r1, zero, -272
000d50  9bc00b01  srli r1, r23, 16
000d54  9b801000  andi r1, r1, 1
000d58  8b901b10  add.s r1, r23, r1
000d5c  8b905010  add.s r1, r1, r5
000d60  1789a001  and r18, r1, r26
000d64  5bdbffff  j -296
000d68  00200100  mfence { sm }
000d6c  e3439fff  loadli.w r7,  -52(r30)
000d70  b79903fe  beq r7, zero, -412
000d74  9f002000  addli r1, zero, 16
000d78  3d000000  xfence
000d7c  00a00300  mfence { lm, sm, gm }
000d80  33830028  zext_int2long r[7:8], r1
000d84  5b040000  j 32
000d88  9f703000  addli r1, zero, 31
000d8c  6b548fff  load.d r[9:10], -8(r30)
000d90  9f750000  addli r11, zero, 7
000d94  33830028  zext_int2long r[7:8], r1
000d98  93206404  setlt.ul r1, r[9:10], r[7:8]
000d9c  27130400  addli.d r[7:8], r[9:10], 1
000da0  37850000  beq r1, zero, 320
000da4  733c6ffe  store.d r[7:8], -8(r30)
000da8  1733b302  sll.d r[7:8], r[7:8], r11
000dac  33040028  zext_int2long r[9:10], zero
000db0  db040000  j 36
000db4  27440400  addli.d r[9:10], r[9:10], 4
000db8  8b95f510  add.s r11, r11, r15
000dbc  13252402  setneq.d r10, r[9:10], r[3:4]
000dc0  73e61501  stores.w r17, 12(r11)
000dc4  73e43501  stores.w r19, 8(r11)
000dc8  73e2c500  stores.w r12, 4(r11)
000dcc  73e01500  stores.w r1, 0(r11)
000dd0  b76e05fe  beq r10, zero, -72
000dd4  0b256410  add.ul r[11:12], r[9:10], r[7:8]
000dd8  9b352500  slli r11, r10, 2
000ddc  8b90c511  add.s r1, r11, r28
000de0  6fc8c000  loads.w r16, 12(r1)
000de4  6fcc0000  loads.w r24, 0(r1)
000de8  efcb4000  loads.w r23, 4(r1)
000dec  6fca8000  loads.w r20, 8(r1)
000df0  17094800  and r18, r16, r4
000df4  93802a05  setlt.u r1, r21, r18
000df8  3bb00000  bneq r1, zero, 12
000dfc  9f080800  addli r17, r16, 0
000e00  5b010000  j 8
000e04  97186801  or r17, r16, r22
000e08  17054a00  and r10, r20, r4
000e0c  9380aa04  setlt.u r1, r21, r10
000e10  3bb00000  bneq r1, zero, 12
000e14  9f090a00  addli r19, r20, 0
000e18  5b010000  j 8
000e1c  97196a01  or r19, r20, r22
000e20  978d4b00  and r27, r23, r4
000e24  9380ba05  setlt.u r1, r21, r27
000e28  3bb00000  bneq r1, zero, 12
000e2c  1f860b00  addli r12, r23, 0
000e30  5b010000  j 8
000e34  17966b01  or r12, r23, r22
000e38  97064c00  and r13, r24, r4
000e3c  9380da04  setlt.u r1, r21, r13
000e40  3bd00000  bneq r1, zero, 20
000e44  9f000c00  addli r1, r24, 0
000e48  9386dc04  setlt.u r13, r25, r13
000e4c  37d00600  beq r13, zero, 20
000e50  db040000  j 36
000e54  97106c01  or r1, r24, r22
000e58  9386dc04  setlt.u r13, r25, r13
000e5c  3be00600  bneq r13, zero, 24
000e60  9b400c01  srli r1, r24, 16
000e64  9b801000  andi r1, r1, 1
000e68  8b101c10  add.s r1, r24, r1
000e6c  8b905010  add.s r1, r1, r5
000e70  9780a001  and r1, r1, r26
000e74  9386bc05  setlt.u r13, r25, r27
000e78  37e00600  beq r13, zero, 24
000e7c  1385ac04  setlt.u r10, r25, r10
000e80  b7300500  beq r10, zero, 44
000e84  13852c05  setlt.u r10, r25, r18
000e88  bb3c05fe  bneq r10, zero, -212
000e8c  db070000  j 60
000e90  1bc60b01  srli r12, r23, 16
000e94  1b061600  andi r12, r12, 1
000e98  0b96cb10  add.s r12, r23, r12
000e9c  0b165610  add.s r12, r12, r5
000ea0  1706a601  and r12, r12, r26
000ea4  1385ac04  setlt.u r10, r25, r10
000ea8  3b7f05fe  bneq r10, zero, -36
000eac  1b450a01  srli r10, r20, 16
000eb0  1b051500  andi r10, r10, 1
000eb4  0b15aa10  add.s r10, r20, r10
000eb8  0b155510  add.s r10, r10, r5
000ebc  9709a501  and r19, r10, r26
000ec0  13852c05  setlt.u r10, r25, r18
000ec4  bb4b05fe  bneq r10, zero, -272
000ec8  1b450801  srli r10, r16, 16
000ecc  1b051500  andi r10, r10, 1
000ed0  0b15a810  add.s r10, r16, r10
000ed4  0b155510  add.s r10, r10, r5
000ed8  9708a501  and r17, r10, r26
000edc  5bdbffff  j -296
000ee0  00200100  mfence { sm }
000ee4  e300afff  loadli.w r1,  -48(r30)
000ee8  b7d300fe  beq r1, zero, -780
000eec  9f004000  addli r1, zero, 32
000ef0  3d000000  xfence
000ef4  00a00300  mfence { lm, sm, gm }
000ef8  33830028  zext_int2long r[7:8], r1
000efc  5b040000  j 32
000f00  9f705000  addli r1, zero, 47
000f04  6b548fff  load.d r[9:10], -8(r30)
000f08  9f750000  addli r11, zero, 7
000f0c  33830028  zext_int2long r[7:8], r1
000f10  93206404  setlt.ul r1, r[9:10], r[7:8]
000f14  27130400  addli.d r[7:8], r[9:10], 1
000f18  37850000  beq r1, zero, 320
000f1c  733c6ffe  store.d r[7:8], -8(r30)
000f20  1733b302  sll.d r[7:8], r[7:8], r11
000f24  33040028  zext_int2long r[9:10], zero
000f28  db040000  j 36
000f2c  27440400  addli.d r[9:10], r[9:10], 4
000f30  8b95f510  add.s r11, r11, r15
000f34  13252402  setneq.d r10, r[9:10], r[3:4]
000f38  73e61501  stores.w r17, 12(r11)
000f3c  73e43501  stores.w r19, 8(r11)
000f40  73e2c500  stores.w r12, 4(r11)
000f44  73e01500  stores.w r1, 0(r11)
000f48  b76e05fe  beq r10, zero, -72
000f4c  0b256410  add.ul r[11:12], r[9:10], r[7:8]
000f50  9b352500  slli r11, r10, 2
000f54  8b90c511  add.s r1, r11, r28
000f58  6fc8c000  loads.w r16, 12(r1)
000f5c  6fcc0000  loads.w r24, 0(r1)
000f60  efcb4000  loads.w r23, 4(r1)
000f64  6fca8000  loads.w r20, 8(r1)
000f68  17094800  and r18, r16, r4
000f6c  93802a05  setlt.u r1, r21, r18
000f70  3bb00000  bneq r1, zero, 12
000f74  9f080800  addli r17, r16, 0
000f78  5b010000  j 8
000f7c  97186801  or r17, r16, r22
000f80  17054a00  and r10, r20, r4
000f84  9380aa04  setlt.u r1, r21, r10
000f88  3bb00000  bneq r1, zero, 12
000f8c  9f090a00  addli r19, r20, 0
000f90  5b010000  j 8
000f94  97196a01  or r19, r20, r22
000f98  978d4b00  and r27, r23, r4
000f9c  9380ba05  setlt.u r1, r21, r27
000fa0  3bb00000  bneq r1, zero, 12
000fa4  1f860b00  addli r12, r23, 0
000fa8  5b010000  j 8
000fac  17966b01  or r12, r23, r22
000fb0  97064c00  and r13, r24, r4
000fb4  9380da04  setlt.u r1, r21, r13
000fb8  3bd00000  bneq r1, zero, 20
000fbc  9f000c00  addli r1, r24, 0
000fc0  9386dc04  setlt.u r13, r25, r13
000fc4  37d00600  beq r13, zero, 20
000fc8  db040000  j 36
000fcc  97106c01  or r1, r24, r22
000fd0  9386dc04  setlt.u r13, r25, r13
000fd4  3be00600  bneq r13, zero, 24
000fd8  9b400c01  srli r1, r24, 16
000fdc  9b801000  andi r1, r1, 1
000fe0  8b101c10  add.s r1, r24, r1
000fe4  8b905010  add.s r1, r1, r5
000fe8  9780a001  and r1, r1, r26
000fec  9386bc05  setlt.u r13, r25, r27
000ff0  37e00600  beq r13, zero, 24
000ff4  1385ac04  setlt.u r10, r25, r10
000ff8  b7300500  beq r10, zero, 44
000ffc  13852c05  setlt.u r10, r25, r18
001000  bb3c05fe  bneq r10, zero, -212
001004  db070000  j 60
001008  1bc60b01  srli r12, r23, 16
00100c  1b061600  andi r12, r12, 1
001010  0b96cb10  add.s r12, r23, r12
001014  0b165610  add.s r12, r12, r5
001018  1706a601  and r12, r12, r26
00101c  1385ac04  setlt.u r10, r25, r10
001020  3b7f05fe  bneq r10, zero, -36
001024  1b450a01  srli r10, r20, 16
001028  1b051500  andi r10, r10, 1
00102c  0b15aa10  add.s r10, r20, r10
001030  0b155510  add.s r10, r10, r5
001034  9709a501  and r19, r10, r26
001038  13852c05  setlt.u r10, r25, r18
00103c  bb4b05fe  bneq r10, zero, -272
001040  1b450801  srli r10, r16, 16
001044  1b051500  andi r10, r10, 1
001048  0b15a810  add.s r10, r16, r10
00104c  0b155510  add.s r10, r10, r5
001050  9708a501  and r17, r10, r26
001054  5bdbffff  j -296
001058  00200100  mfence { sm }
00105c  e340dfff  loadli.w r1,  -20(r30)
001060  379e00fc  beq r1, zero, -1148
001064  9f006000  addli r1, zero, 48
001068  3d000000  xfence
00106c  00a00300  mfence { lm, sm, gm }
001070  33830028  zext_int2long r[7:8], r1
001074  5b040000  j 32
001078  9f707000  addli r1, zero, 63
00107c  6b548fff  load.d r[9:10], -8(r30)
001080  9f750000  addli r11, zero, 7
001084  33830028  zext_int2long r[7:8], r1
001088  93206404  setlt.ul r1, r[9:10], r[7:8]
00108c  27130400  addli.d r[7:8], r[9:10], 1
001090  37850000  beq r1, zero, 320
001094  733c6ffe  store.d r[7:8], -8(r30)
001098  1733b302  sll.d r[7:8], r[7:8], r11
00109c  33040028  zext_int2long r[9:10], zero
0010a0  db040000  j 36
0010a4  27440400  addli.d r[9:10], r[9:10], 4
0010a8  8b95f510  add.s r11, r11, r15
0010ac  13252402  setneq.d r10, r[9:10], r[3:4]
0010b0  73e61501  stores.w r17, 12(r11)
0010b4  73e43501  stores.w r19, 8(r11)
0010b8  73e2c500  stores.w r12, 4(r11)
0010bc  73e01500  stores.w r1, 0(r11)
0010c0  b76e05fe  beq r10, zero, -72
0010c4  0b256410  add.ul r[11:12], r[9:10], r[7:8]
0010c8  9b352500  slli r11, r10, 2
0010cc  8b90c511  add.s r1, r11, r28
0010d0  6fc8c000  loads.w r16, 12(r1)
0010d4  6fcc0000  loads.w r24, 0(r1)
0010d8  efcb4000  loads.w r23, 4(r1)
0010dc  6fca8000  loads.w r20, 8(r1)
0010e0  17094800  and r18, r16, r4
0010e4  93802a05  setlt.u r1, r21, r18
0010e8  3bb00000  bneq r1, zero, 12
0010ec  9f080800  addli r17, r16, 0
0010f0  5b010000  j 8
0010f4  97186801  or r17, r16, r22
0010f8  17054a00  and r10, r20, r4
0010fc  9380aa04  setlt.u r1, r21, r10
001100  3bb00000  bneq r1, zero, 12
001104  9f090a00  addli r19, r20, 0
001108  5b010000  j 8
00110c  97196a01  or r19, r20, r22
001110  978d4b00  and r27, r23, r4
001114  9380ba05  setlt.u r1, r21, r27
001118  3bb00000  bneq r1, zero, 12
00111c  1f860b00  addli r12, r23, 0
001120  5b010000  j 8
001124  17966b01  or r12, r23, r22
001128  97064c00  and r13, r24, r4
00112c  9380da04  setlt.u r1, r21, r13
001130  3bd00000  bneq r1, zero, 20
001134  9f000c00  addli r1, r24, 0
001138  9386dc04  setlt.u r13, r25, r13
00113c  37d00600  beq r13, zero, 20
001140  db040000  j 36
001144  97106c01  or r1, r24, r22
001148  9386dc04  setlt.u r13, r25, r13
00114c  3be00600  bneq r13, zero, 24
001150  9b400c01  srli r1, r24, 16
001154  9b801000  andi r1, r1, 1
001158  8b101c10  add.s r1, r24, r1
00115c  8b905010  add.s r1, r1, r5
001160  9780a001  and r1, r1, r26
001164  9386bc05  setlt.u r13, r25, r27
001168  37e00600  beq r13, zero, 24
00116c  1385ac04  setlt.u r10, r25, r10
001170  b7300500  beq r10, zero, 44
001174  13852c05  setlt.u r10, r25, r18
001178  bb3c05fe  bneq r10, zero, -212
00117c  db070000  j 60
001180  1bc60b01  srli r12, r23, 16
001184  1b061600  andi r12, r12, 1
001188  0b96cb10  add.s r12, r23, r12
00118c  0b165610  add.s r12, r12, r5
001190  1706a601  and r12, r12, r26
001194  1385ac04  setlt.u r10, r25, r10
001198  3b7f05fe  bneq r10, zero, -36
00119c  1b450a01  srli r10, r20, 16
0011a0  1b051500  andi r10, r10, 1
0011a4  0b15aa10  add.s r10, r20, r10
0011a8  0b155510  add.s r10, r10, r5
0011ac  9709a501  and r19, r10, r26
0011b0  13852c05  setlt.u r10, r25, r18
0011b4  bb4b05fe  bneq r10, zero, -272
0011b8  1b450801  srli r10, r16, 16
0011bc  1b051500  andi r10, r10, 1
0011c0  0b15a810  add.s r10, r16, r10
0011c4  0b155510  add.s r10, r10, r5
0011c8  9708a501  and r17, r10, r26
0011cc  5bdbffff  j -296
0011d0  00200100  mfence { sm }
0011d4  e300bfff  loadli.w r1,  -40(r30)
0011d8  37d800fc  beq r1, zero, -1516
0011dc  9f008000  addli r1, zero, 64
0011e0  3d000000  xfence
0011e4  00a00300  mfence { lm, sm, gm }
0011e8  33830028  zext_int2long r[7:8], r1
0011ec  5b040000  j 32
0011f0  9f709000  addli r1, zero, 79
0011f4  6b548fff  load.d r[9:10], -8(r30)
0011f8  9f750000  addli r11, zero, 7
0011fc  33830028  zext_int2long r[7:8], r1
001200  93206404  setlt.ul r1, r[9:10], r[7:8]
001204  27130400  addli.d r[7:8], r[9:10], 1
001208  37850000  beq r1, zero, 320
00120c  733c6ffe  store.d r[7:8], -8(r30)
001210  1733b302  sll.d r[7:8], r[7:8], r11
001214  33040028  zext_int2long r[9:10], zero
001218  db040000  j 36
00121c  27440400  addli.d r[9:10], r[9:10], 4
001220  8b95f510  add.s r11, r11, r15
001224  13252402  setneq.d r10, r[9:10], r[3:4]
001228  73e61501  stores.w r17, 12(r11)
00122c  73e43501  stores.w r19, 8(r11)
001230  73e2c500  stores.w r12, 4(r11)
001234  73e01500  stores.w r1, 0(r11)
001238  b76e05fe  beq r10, zero, -72
00123c  0b256410  add.ul r[11:12], r[9:10], r[7:8]
001240  9b352500  slli r11, r10, 2
001244  8b90c511  add.s r1, r11, r28
001248  6fc8c000  loads.w r16, 12(r1)
00124c  6fcc0000  loads.w r24, 0(r1)
001250  efcb4000  loads.w r23, 4(r1)
001254  6fca8000  loads.w r20, 8(r1)
001258  17094800  and r18, r16, r4
00125c  93802a05  setlt.u r1, r21, r18
001260  3bb00000  bneq r1, zero, 12
001264  9f080800  addli r17, r16, 0
001268  5b010000  j 8
00126c  97186801  or r17, r16, r22
001270  17054a00  and r10, r20, r4
001274  9380aa04  setlt.u r1, r21, r10
001278  3bb00000  bneq r1, zero, 12
00127c  9f090a00  addli r19, r20, 0
001280  5b010000  j 8
001284  97196a01  or r19, r20, r22
001288  978d4b00  and r27, r23, r4
00128c  9380ba05  setlt.u r1, r21, r27
001290  3bb00000  bneq r1, zero, 12
001294  1f860b00  addli r12, r23, 0
001298  5b010000  j 8
00129c  17966b01  or r12, r23, r22
0012a0  97064c00  and r13, r24, r4
0012a4  9380da04  setlt.u r1, r21, r13
0012a8  3bd00000  bneq r1, zero, 20
0012ac  9f000c00  addli r1, r24, 0
0012b0  9386dc04  setlt.u r13, r25, r13
0012b4  37d00600  beq r13, zero, 20
0012b8  db040000  j 36
0012bc  97106c01  or r1, r24, r22
0012c0  9386dc04  setlt.u r13, r25, r13
0012c4  3be00600  bneq r13, zero, 24
0012c8  9b400c01  srli r1, r24, 16
0012cc  9b801000  andi r1, r1, 1
0012d0  8b101c10  add.s r1, r24, r1
0012d4  8b905010  add.s r1, r1, r5
0012d8  9780a001  and r1, r1, r26
0012dc  9386bc05  setlt.u r13, r25, r27
0012e0  37e00600  beq r13, zero, 24
0012e4  1385ac04  setlt.u r10, r25, r10
0012e8  b7300500  beq r10, zero, 44
0012ec  13852c05  setlt.u r10, r25, r18
0012f0  bb3c05fe  bneq r10, zero, -212
0012f4  db070000  j 60
0012f8  1bc60b01  srli r12, r23, 16
0012fc  1b061600  andi r12, r12, 1
001300  0b96cb10  add.s r12, r23, r12
001304  0b165610  add.s r12, r12, r5
001308  1706a601  and r12, r12, r26
00130c  1385ac04  setlt.u r10, r25, r10
001310  3b7f05fe  bneq r10, zero, -36
001314  1b450a01  srli r10, r20, 16
001318  1b051500  andi r10, r10, 1
00131c  0b15aa10  add.s r10, r20, r10
001320  0b155510  add.s r10, r10, r5
001324  9709a501  and r19, r10, r26
001328  13852c05  setlt.u r10, r25, r18
00132c  bb4b05fe  bneq r10, zero, -272
001330  1b450801  srli r10, r16, 16
001334  1b051500  andi r10, r10, 1
001338  0b15a810  add.s r10, r16, r10
00133c  0b155510  add.s r10, r10, r5
001340  9708a501  and r17, r10, r26
001344  5bdbffff  j -296
001348  00200100  mfence { sm }
00134c  e340afff  loadli.w r1,  -44(r30)
001350  b7d50000  beq r1, zero, 372
001354  9f00a000  addli r1, zero, 80
001358  3d000000  xfence
00135c  00a00300  mfence { lm, sm, gm }
001360  33830028  zext_int2long r[7:8], r1
001364  5b040000  j 32
001368  9f70b000  addli r1, zero, 95
00136c  6b548fff  load.d r[9:10], -8(r30)
001370  9f750000  addli r11, zero, 7
001374  33830028  zext_int2long r[7:8], r1
001378  93206404  setlt.ul r1, r[9:10], r[7:8]
00137c  27130400  addli.d r[7:8], r[9:10], 1
001380  37850000  beq r1, zero, 320
001384  733c6ffe  store.d r[7:8], -8(r30)
001388  1733b302  sll.d r[7:8], r[7:8], r11
00138c  33040028  zext_int2long r[9:10], zero
001390  db040000  j 36
001394  27440400  addli.d r[9:10], r[9:10], 4
001398  8b95f510  add.s r11, r11, r15
00139c  13252402  setneq.d r10, r[9:10], r[3:4]
0013a0  73e61501  stores.w r17, 12(r11)
0013a4  73e43501  stores.w r19, 8(r11)
0013a8  73e2c500  stores.w r12, 4(r11)
0013ac  73e01500  stores.w r1, 0(r11)
0013b0  b76e05fe  beq r10, zero, -72
0013b4  0b256410  add.ul r[11:12], r[9:10], r[7:8]
0013b8  9b352500  slli r11, r10, 2
0013bc  8b90c511  add.s r1, r11, r28
0013c0  6fc8c000  loads.w r16, 12(r1)
0013c4  6fcc0000  loads.w r24, 0(r1)
0013c8  efcb4000  loads.w r23, 4(r1)
0013cc  6fca8000  loads.w r20, 8(r1)
0013d0  17094800  and r18, r16, r4
0013d4  93802a05  setlt.u r1, r21, r18
0013d8  3bb00000  bneq r1, zero, 12
0013dc  9f080800  addli r17, r16, 0
0013e0  5b010000  j 8
0013e4  97186801  or r17, r16, r22
0013e8  17054a00  and r10, r20, r4
0013ec  9380aa04  setlt.u r1, r21, r10
0013f0  3bb00000  bneq r1, zero, 12
0013f4  9f090a00  addli r19, r20, 0
0013f8  5b010000  j 8
0013fc  97196a01  or r19, r20, r22
001400  978d4b00  and r27, r23, r4
001404  9380ba05  setlt.u r1, r21, r27
001408  3bb00000  bneq r1, zero, 12
00140c  1f860b00  addli r12, r23, 0
001410  5b010000  j 8
001414  17966b01  or r12, r23, r22
001418  97064c00  and r13, r24, r4
00141c  9380da04  setlt.u r1, r21, r13
001420  3bd00000  bneq r1, zero, 20
001424  9f000c00  addli r1, r24, 0
001428  9386dc04  setlt.u r13, r25, r13
00142c  37d00600  beq r13, zero, 20
001430  db040000  j 36
001434  97106c01  or r1, r24, r22
001438  9386dc04  setlt.u r13, r25, r13
00143c  3be00600  bneq r13, zero, 24
001440  9b400c01  srli r1, r24, 16
001444  9b801000  andi r1, r1, 1
001448  8b101c10  add.s r1, r24, r1
00144c  8b905010  add.s r1, r1, r5
001450  9780a001  and r1, r1, r26
001454  9386bc05  setlt.u r13, r25, r27
001458  37e00600  beq r13, zero, 24
00145c  1385ac04  setlt.u r10, r25, r10
001460  b7300500  beq r10, zero, 44
001464  13852c05  setlt.u r10, r25, r18
001468  bb3c05fe  bneq r10, zero, -212
00146c  db070000  j 60
001470  1bc60b01  srli r12, r23, 16
001474  1b061600  andi r12, r12, 1
001478  0b96cb10  add.s r12, r23, r12
00147c  0b165610  add.s r12, r12, r5
001480  1706a601  and r12, r12, r26
001484  1385ac04  setlt.u r10, r25, r10
001488  3b7f05fe  bneq r10, zero, -36
00148c  1b450a01  srli r10, r20, 16
001490  1b051500  andi r10, r10, 1
001494  0b15aa10  add.s r10, r20, r10
001498  0b155510  add.s r10, r10, r5
00149c  9709a501  and r19, r10, r26
0014a0  13852c05  setlt.u r10, r25, r18
0014a4  bb4b05fe  bneq r10, zero, -272
0014a8  1b450801  srli r10, r16, 16
0014ac  1b051500  andi r10, r10, 1
0014b0  0b15a810  add.s r10, r16, r10
0014b4  0b155510  add.s r10, r10, r5
0014b8  9708a501  and r17, r10, r26
0014bc  5bdbffff  j -296
0014c0  00200100  mfence { sm }
0014c4  80300002  core_id r1
0014c8  1f630000  addli r6, zero, 6
0014cc  bbd56000  bneq r1, r6, 372
0014d0  9f00c000  addli r1, zero, 96
0014d4  3d000000  xfence
0014d8  00a00300  mfence { lm, sm, gm }
0014dc  33830028  zext_int2long r[7:8], r1
0014e0  5b040000  j 32
0014e4  9f70d000  addli r1, zero, 111
0014e8  6b548fff  load.d r[9:10], -8(r30)
0014ec  9f750000  addli r11, zero, 7
0014f0  33830028  zext_int2long r[7:8], r1
0014f4  93206404  setlt.ul r1, r[9:10], r[7:8]
0014f8  27130400  addli.d r[7:8], r[9:10], 1
0014fc  37850000  beq r1, zero, 320
001500  733c6ffe  store.d r[7:8], -8(r30)
001504  1733b302  sll.d r[7:8], r[7:8], r11
001508  33040028  zext_int2long r[9:10], zero
00150c  db040000  j 36
001510  27440400  addli.d r[9:10], r[9:10], 4
001514  8b95f510  add.s r11, r11, r15
001518  13252402  setneq.d r10, r[9:10], r[3:4]
00151c  73e61501  stores.w r17, 12(r11)
001520  73e43501  stores.w r19, 8(r11)
001524  73e2c500  stores.w r12, 4(r11)
001528  73e01500  stores.w r1, 0(r11)
00152c  b76e05fe  beq r10, zero, -72
001530  0b256410  add.ul r[11:12], r[9:10], r[7:8]
001534  9b352500  slli r11, r10, 2
001538  8b90c511  add.s r1, r11, r28
00153c  6fc8c000  loads.w r16, 12(r1)
001540  6fcc0000  loads.w r24, 0(r1)
001544  efcb4000  loads.w r23, 4(r1)
001548  6fca8000  loads.w r20, 8(r1)
00154c  17094800  and r18, r16, r4
001550  93802a05  setlt.u r1, r21, r18
001554  3bb00000  bneq r1, zero, 12
001558  9f080800  addli r17, r16, 0
00155c  5b010000  j 8
001560  97186801  or r17, r16, r22
001564  17054a00  and r10, r20, r4
001568  9380aa04  setlt.u r1, r21, r10
00156c  3bb00000  bneq r1, zero, 12
001570  9f090a00  addli r19, r20, 0
001574  5b010000  j 8
001578  97196a01  or r19, r20, r22
00157c  978d4b00  and r27, r23, r4
001580  9380ba05  setlt.u r1, r21, r27
001584  3bb00000  bneq r1, zero, 12
001588  1f860b00  addli r12, r23, 0
00158c  5b010000  j 8
001590  17966b01  or r12, r23, r22
001594  97064c00  and r13, r24, r4
001598  9380da04  setlt.u r1, r21, r13
00159c  3bd00000  bneq r1, zero, 20
0015a0  9f000c00  addli r1, r24, 0
0015a4  9386dc04  setlt.u r13, r25, r13
0015a8  37d00600  beq r13, zero, 20
0015ac  db040000  j 36
0015b0  97106c01  or r1, r24, r22
0015b4  9386dc04  setlt.u r13, r25, r13
0015b8  3be00600  bneq r13, zero, 24
0015bc  9b400c01  srli r1, r24, 16
0015c0  9b801000  andi r1, r1, 1
0015c4  8b101c10  add.s r1, r24, r1
0015c8  8b905010  add.s r1, r1, r5
0015cc  9780a001  and r1, r1, r26
0015d0  9386bc05  setlt.u r13, r25, r27
0015d4  37e00600  beq r13, zero, 24
0015d8  1385ac04  setlt.u r10, r25, r10
0015dc  b7300500  beq r10, zero, 44
0015e0  13852c05  setlt.u r10, r25, r18
0015e4  bb3c05fe  bneq r10, zero, -212
0015e8  db070000  j 60
0015ec  1bc60b01  srli r12, r23, 16
0015f0  1b061600  andi r12, r12, 1
0015f4  0b96cb10  add.s r12, r23, r12
0015f8  0b165610  add.s r12, r12, r5
0015fc  1706a601  and r12, r12, r26
001600  1385ac04  setlt.u r10, r25, r10
001604  3b7f05fe  bneq r10, zero, -36
001608  1b450a01  srli r10, r20, 16
00160c  1b051500  andi r10, r10, 1
001610  0b15aa10  add.s r10, r20, r10
001614  0b155510  add.s r10, r10, r5
001618  9709a501  and r19, r10, r26
00161c  13852c05  setlt.u r10, r25, r18
001620  bb4b05fe  bneq r10, zero, -272
001624  1b450801  srli r10, r16, 16
001628  1b051500  andi r10, r10, 1
00162c  0b15a810  add.s r10, r16, r10
001630  0b155510  add.s r10, r10, r5
001634  9708a501  and r17, r10, r26
001638  5bdbffff  j -296
00163c  00200100  mfence { sm }
001640  e340bfff  loadli.w r1,  -36(r30)
001644  b7f50000  beq r1, zero, 380
001648  33030028  zext_int2long r[7:8], zero
00164c  9f00e000  addli r1, zero, 112
001650  73386ffe  store.d r[7:8], -16(r30)
001654  33830028  zext_int2long r[7:8], r1
001658  3d000000  xfence
00165c  00a00300  mfence { lm, sm, gm }
001660  5b040000  j 32
001664  9f70f000  addli r1, zero, 127
001668  6b548fff  load.d r[9:10], -8(r30)
00166c  9f750000  addli r11, zero, 7
001670  33830028  zext_int2long r[7:8], r1
001674  93206404  setlt.ul r1, r[9:10], r[7:8]
001678  27130400  addli.d r[7:8], r[9:10], 1
00167c  37850000  beq r1, zero, 320
001680  6b580fff  load.d r[17:18], -16(r30)
001684  1734b302  sll.d r[9:10], r[7:8], r11
001688  733c6ffe  store.d r[7:8], -8(r30)
00168c  db040000  j 36
001690  27480800  addli.d r[17:18], r[17:18], 4
001694  0b93f510  add.s r6, r11, r15
001698  93202802  setneq.d r1, r[17:18], r[3:4]
00169c  73662301  stores.w r18, 12(r6)
0016a0  73644301  stores.w r20, 8(r6)
0016a4  7362c300  stores.w r12, 4(r6)
0016a8  7360d300  stores.w r13, 0(r6)
0016ac  b7ee00fe  beq r1, zero, -72
0016b0  0b238810  add.ul r[7:8], r[17:18], r[9:10]
0016b4  9b352300  slli r11, r6, 2
0016b8  0b93c511  add.s r6, r11, r28
0016bc  ef4bc300  loads.w r23, 12(r6)
0016c0  ef400300  loads.w r1, 0(r6)
0016c4  ef4d4300  loads.w r27, 4(r6)
0016c8  6f4c8300  loads.w r24, 8(r6)
0016cc  97894b00  and r19, r23, r4
0016d0  13833a05  setlt.u r6, r21, r19
0016d4  3b300300  bneq r6, zero, 12
0016d8  1f890b00  addli r18, r23, 0
0016dc  5b010000  j 8
0016e0  17996b01  or r18, r23, r22
0016e4  17054c00  and r10, r24, r4
0016e8  1383aa04  setlt.u r6, r21, r10
0016ec  3b300300  bneq r6, zero, 12
0016f0  1f0a0c00  addli r20, r24, 0
0016f4  5b010000  j 8
0016f8  171a6c01  or r20, r24, r22
0016fc  17874d00  and r14, r27, r4
001700  1383ea04  setlt.u r6, r21, r14
001704  3b300300  bneq r6, zero, 12
001708  1f860d00  addli r12, r27, 0
00170c  5b010000  j 8
001710  17966d01  or r12, r27, r22
001714  17834000  and r6, r1, r4
001718  93836a04  setlt.u r7, r21, r6
00171c  3bd00300  bneq r7, zero, 20
001720  9f860000  addli r13, r1, 0
001724  13836c04  setlt.u r6, r25, r6
001728  37500300  beq r6, zero, 20
00172c  db040000  j 36
001730  97966001  or r13, r1, r22
001734  13836c04  setlt.u r6, r25, r6
001738  3b600300  bneq r6, zero, 24
00173c  1bc30001  srli r6, r1, 16
001740  1b031300  andi r6, r6, 1
001744  8b906010  add.s r1, r1, r6
001748  8b905010  add.s r1, r1, r5
00174c  9786a001  and r13, r1, r26
001750  9380ec04  setlt.u r1, r25, r14
001754  37e00000  beq r1, zero, 24
001758  9380ac04  setlt.u r1, r25, r10
00175c  b7b00000  beq r1, zero, 44
001760  93803c05  setlt.u r1, r25, r19
001764  bbbc00fe  bneq r1, zero, -212
001768  db070000  j 60
00176c  9bc00d01  srli r1, r27, 16
001770  9b801000  andi r1, r1, 1
001774  8b901d10  add.s r1, r27, r1
001778  8b905010  add.s r1, r1, r5
00177c  1786a001  and r12, r1, r26
001780  9380ac04  setlt.u r1, r25, r10
001784  3bff00fe  bneq r1, zero, -36
001788  9b400c01  srli r1, r24, 16
00178c  9b801000  andi r1, r1, 1
001790  8b101c10  add.s r1, r24, r1
001794  8b905010  add.s r1, r1, r5
001798  178aa001  and r20, r1, r26
00179c  93803c05  setlt.u r1, r25, r19
0017a0  bbcb00fe  bneq r1, zero, -272
0017a4  9bc00b01  srli r1, r23, 16
0017a8  9b801000  andi r1, r1, 1
0017ac  8b901b10  add.s r1, r23, r1
0017b0  8b905010  add.s r1, r1, r5
0017b4  1789a001  and r18, r1, r26
0017b8  5bdbffff  j -296
0017bc  00200100  mfence { sm }
0017c0  9f70f001  addli r1, zero, 255
0017c4  80a20004  csr_set csr5, r1
0017c8  00e00200  sync_core
0017cc  e340dfff  loadli.w r1,  -20(r30)
0017d0  bbf700f4  bneq r1, zero, -5636
0017d4  eb540ffe  load.d r[10:11], -32(r30)
0017d8  00340002  core_id r8
0017dc  1f660000  addli r12, zero, 6
0017e0  1f470000  addli r14, zero, 4
0017e4  3b2804f4  bneq r8, zero, -5624
0017e8  6b518ffb  load.d r[3:4], -72(r30)
0017ec  9f202000  addli r1, zero, 18
0017f0  6b530ffc  load.d r[7:8], -64(r30)
0017f4  eb578f01  load.d r[16:17], 24(r30)
0017f8  9f160000  addli r13, zero, 1
0017fc  97301102  sll.d r[2:3], r[3:4], r1
001800  1733d302  sll.d r[7:8], r[7:8], r13
001804  9f711000  addli r3, zero, 15
001808  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
00180c  7d900100  xwait r3, 0
001810  ab010100  lui r3, 16
001814  8ba06010  add.ul r[2:3], r[2:3], r[7:8]
001818  1f530000  addli r6, zero, 5
00181c  9b910124  ori r3, r3, 576
001820  9f038000  addli r7, zero, 64
001824  1d000300  lock zero, r6
001828  95860600  dma_cfg r13, r13, zero, 0
00182c  15800602  dma_cfg zero, r13, zero, 1
001830  15010004  dma_cfg r2, zero, zero, 2
001834  95807106  dma_cfg r1, r3, r7, 3
001838  9f000001  addli r1, zero, 128
00183c  1f010004  addli r2, zero, 512
001840  9f010010  addli r3, zero, 2048
001844  9583e008  dma_cfg r7, r1, r14, 4
001848  9501110a  dma_cfg r3, r2, r1, 5
00184c  9f002000  addli r1, zero, 16
001850  15000010  dma_cfg zero, zero, zero, 8
001854  35000000  dma_run zero
001858  1500d00a  dma_cfg zero, zero, r13, 5
00185c  15000010  dma_cfg zero, zero, zero, 8
001860  1d100300  unlock r6
001864  7d800000  xsignal r1, 0
001868  db30fdff  j -5756
00186c  9f300000  addli r1, zero, 3
001870  bb501400  bneq r8, r1, 52
001874  9f501000  addli r1, zero, 13
001878  e70d0ffe  storeli.w zero, -40(r30)
00187c  e74d0ffe  storeli.w zero, -36(r30)
001880  670d0ffe  storeli.w zero, -48(r30)
001884  674d0ffe  storeli.w zero, -44(r30)
001888  9f030000  addli r7, zero, 0
00188c  7d900000  xwait r1, 0
001890  9f100000  addli r1, zero, 1
001894  e74e1ffe  storeli.w r1, -20(r30)
001898  9f002000  addli r1, zero, 16
00189c  7d900000  xwait r1, 0
0018a0  db60feff  j -3324
0018a4  e74e0ffe  storeli.w zero, -20(r30)
0018a8  e70d0ffe  storeli.w zero, -40(r30)
0018ac  e74d0ffe  storeli.w zero, -36(r30)
0018b0  670d0ffe  storeli.w zero, -48(r30)
0018b4  9f030000  addli r7, zero, 0
0018b8  674d0ffe  storeli.w zero, -44(r30)
0018bc  5b5dfeff  j -3352
0018c0  7d000000  xsignal zero, 0
0018c4  bb600400  bneq r8, zero, 56
0018c8  9f200000  addli r1, zero, 2
0018cc  7d100000  xwait zero, 0
0018d0  7d100000  xwait zero, 0
0018d4  7d100000  xwait zero, 0
0018d8  7d100000  xwait zero, 0
0018dc  7d100000  xwait zero, 0
0018e0  7d100000  xwait zero, 0
0018e4  7d100000  xwait zero, 0
0018e8  7d100000  xwait zero, 0
0018ec  1d800000  lock zero, r1
0018f0  0d000020  ew_cfg zero, zero, zero, 16
0018f4  1d900000  unlock r1
0018f8  7d400000  xsignal_mode_cfg zero
0018fc  9f8ebe00  addli sp, sp, 88
001900  00a00300  mfence { lm, sm, gm }
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
