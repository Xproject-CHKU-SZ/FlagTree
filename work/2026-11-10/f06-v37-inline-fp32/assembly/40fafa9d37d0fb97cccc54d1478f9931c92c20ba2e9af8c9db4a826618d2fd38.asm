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
000174  4b41110c  ble.s r2, r1, 6224
000178  33110128  sext_int2long r[3:4], r2
00017c  b3940028  sext_int2long r[10:11], r1
000180  1f760000  addli r12, zero, 7
000184  9f6b0000  addli r23, zero, 6
000188  1f470000  addli r14, zero, 4
00018c  ab450100  lui r11, 20
000190  2b09807f  lui r18, 522240
000194  ab09ffff  lui r19, 1048560
000198  73382ffa  store.d r[3:4], -80(r30)
00019c  1f510000  addli r2, zero, 5
0001a0  93002400  seteq r1, r8, r2
0001a4  2bf17f7f  lui r2, 522239
0001a8  1b1df1ff  ori r26, r2, 4095
0001ac  e74a1ffe  storeli.w r1, -84(r30)
0001b0  abf0ff7f  lui r1, 524287
0001b4  1b92f0ff  ori r4, r1, 4095
0001b8  ab700000  lui r1, 7
0001bc  9b92f0ff  ori r5, r1, 4095
0001c0  5b070000  j 56
0001c4  9f601000  addli r1, zero, 14
0001c8  00340002  core_id r8
0001cc  9f6b0000  addli r23, zero, 6
0001d0  1f470000  addli r14, zero, 4
0001d4  ab450100  lui r11, 20
0001d8  7d800000  xsignal r1, 0
0001dc  9f701000  addli r1, zero, 15
0001e0  7d800000  xsignal r1, 0
0001e4  eb540ffe  load.d r[10:11], -32(r30)
0001e8  eb500ffb  load.d r[2:3], -80(r30)
0001ec  a7940400  addli.d r[10:11], r[10:11], 1
0001f0  93b01404  setlt.sl r1, r[10:11], r[2:3]
0001f4  37cf000a  beq r1, zero, 6096
0001f8  e3005f00  loadli.w r1,  40(r30)
0001fc  63414f00  loadli.w r2,  36(r30)
000200  1b9c0520  ori r24, r11, 512
000204  73309ffe  store.d r[10:11], -32(r30)
000208  8b901430  div.s r1, r9, r1
00020c  9f010100  addli r3, r2, 0
000210  0b913038  mod.s r2, r1, r3
000214  8b903030  div.s r1, r1, r3
000218  33110128  sext_int2long r[3:4], r2
00021c  33930028  sext_int2long r[7:8], r1
000220  173ac102  sll.d r[21:22], r[3:4], r12
000224  733c6ffa  store.d r[7:8], -72(r30)
000228  73304ffd  store.d r[21:22], -64(r30)
00022c  bb157403  bneq r8, r23, 1380
000230  9f501000  addli r1, zero, 13
000234  eb540f00  load.d r[10:11], 0(r30)
000238  9f310000  addli r3, zero, 3
00023c  e74e0ffe  storeli.w zero, -20(r30)
000240  e70d0ffe  storeli.w zero, -40(r30)
000244  e74d0ffe  storeli.w zero, -36(r30)
000248  670d0ffe  storeli.w zero, -48(r30)
00024c  e74c0ffe  storeli.w zero, -52(r30)
000250  1f541000  addli r8, zero, 13
000254  9f058000  addli r11, zero, 64
000258  9f380000  addli r17, zero, 3
00025c  9f5c1000  addli r25, zero, 13
000260  1f0b2000  addli r22, zero, 16
000264  9f1d2000  addli r27, zero, 17
000268  1f2e2000  addli r28, zero, 18
00026c  9f562000  addli r13, zero, 21
000270  9f073000  addli r15, zero, 24
000274  1f383000  addli r16, zero, 27
000278  97301302  sll.d r[2:3], r[7:8], r1
00027c  1f530000  addli r6, zero, 5
000280  7d900100  xwait r3, 0
000284  9f030002  addli r7, zero, 256
000288  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
00028c  1d000300  lock zero, r6
000290  9f140000  addli r9, zero, 1
000294  1f250000  addli r10, zero, 2
000298  15000014  dma_cfg zero, zero, zero, 10
00029c  15009014  dma_cfg zero, zero, r9, 10
0002a0  1500a014  dma_cfg zero, zero, r10, 10
0002a4  15003014  dma_cfg zero, zero, r3, 10
0002a8  9f011000  addli r3, zero, 8
0002ac  1500e014  dma_cfg zero, zero, r14, 10
0002b0  15006014  dma_cfg zero, zero, r6, 10
0002b4  15007015  dma_cfg zero, zero, r23, 10
0002b8  1500c014  dma_cfg zero, zero, r12, 10
0002bc  15003014  dma_cfg zero, zero, r3, 10
0002c0  9f111000  addli r3, zero, 9
0002c4  15003014  dma_cfg zero, zero, r3, 10
0002c8  9f211000  addli r3, zero, 10
0002cc  15003014  dma_cfg zero, zero, r3, 10
0002d0  9f311000  addli r3, zero, 11
0002d4  15003014  dma_cfg zero, zero, r3, 10
0002d8  9f411000  addli r3, zero, 12
0002dc  15003014  dma_cfg zero, zero, r3, 10
0002e0  9f611000  addli r3, zero, 14
0002e4  15008014  dma_cfg zero, zero, r8, 10
0002e8  1f741000  addli r8, zero, 15
0002ec  15003014  dma_cfg zero, zero, r3, 10
0002f0  9f711000  addli r3, zero, 15
0002f4  15003014  dma_cfg zero, zero, r3, 10
0002f8  9f012000  addli r3, zero, 16
0002fc  15003014  dma_cfg zero, zero, r3, 10
000300  9f112000  addli r3, zero, 17
000304  15003014  dma_cfg zero, zero, r3, 10
000308  9f212000  addli r3, zero, 18
00030c  15003014  dma_cfg zero, zero, r3, 10
000310  9f312000  addli r3, zero, 19
000314  15003014  dma_cfg zero, zero, r3, 10
000318  9f412000  addli r3, zero, 20
00031c  15003014  dma_cfg zero, zero, r3, 10
000320  9f512000  addli r3, zero, 21
000324  15003014  dma_cfg zero, zero, r3, 10
000328  9f612000  addli r3, zero, 22
00032c  15003014  dma_cfg zero, zero, r3, 10
000330  9f712000  addli r3, zero, 23
000334  15003014  dma_cfg zero, zero, r3, 10
000338  9f013000  addli r3, zero, 24
00033c  15003014  dma_cfg zero, zero, r3, 10
000340  9f113000  addli r3, zero, 25
000344  15003014  dma_cfg zero, zero, r3, 10
000348  9f213000  addli r3, zero, 26
00034c  15003014  dma_cfg zero, zero, r3, 10
000350  9f313000  addli r3, zero, 27
000354  15003014  dma_cfg zero, zero, r3, 10
000358  9f413000  addli r3, zero, 28
00035c  15003014  dma_cfg zero, zero, r3, 10
000360  9f513000  addli r3, zero, 29
000364  15003014  dma_cfg zero, zero, r3, 10
000368  9f613000  addli r3, zero, 30
00036c  15003014  dma_cfg zero, zero, r3, 10
000370  9f713000  addli r3, zero, 31
000374  15003014  dma_cfg zero, zero, r3, 10
000378  9f010001  addli r3, zero, 128
00037c  95840400  dma_cfg r9, r9, zero, 0
000380  95040002  dma_cfg r9, zero, zero, 1
000384  15000004  dma_cfg zero, zero, zero, 2
000388  1500b006  dma_cfg zero, zero, r11, 3
00038c  9501a008  dma_cfg r3, zero, r10, 4
000390  9503b00a  dma_cfg r7, zero, r11, 5
000394  9f030002  addli r7, zero, 256
000398  15000010  dma_cfg zero, zero, zero, 8
00039c  35000000  dma_run zero
0003a0  1500900a  dma_cfg zero, zero, r9, 5
0003a4  15000010  dma_cfg zero, zero, zero, 8
0003a8  1d100300  unlock r6
0003ac  1d000700  lock zero, r14
0003b0  95840400  dma_cfg r9, r9, zero, 0
0003b4  15000104  dma_cfg zero, r2, zero, 2
0003b8  9585b006  dma_cfg r11, r1, r11, 3
0003bc  1f011000  addli r2, zero, 8
0003c0  9f000002  addli r1, zero, 256
0003c4  9581a508  dma_cfg r3, r11, r10, 4
0003c8  9583b10a  dma_cfg r7, r3, r11, 5
0003cc  9f630000  addli r7, zero, 6
0003d0  15000010  dma_cfg zero, zero, zero, 8
0003d4  35000000  dma_run zero
0003d8  1500900a  dma_cfg zero, zero, r9, 5
0003dc  15000010  dma_cfg zero, zero, zero, 8
0003e0  1d100700  unlock r14
0003e4  1d000300  lock zero, r6
0003e8  15000014  dma_cfg zero, zero, zero, 10
0003ec  15009014  dma_cfg zero, zero, r9, 10
0003f0  1500a014  dma_cfg zero, zero, r10, 10
0003f4  15001015  dma_cfg zero, zero, r17, 10
0003f8  9f481000  addli r17, zero, 12
0003fc  1500e014  dma_cfg zero, zero, r14, 10
000400  15006014  dma_cfg zero, zero, r6, 10
000404  15007015  dma_cfg zero, zero, r23, 10
000408  9f7b3000  addli r23, zero, 31
00040c  1500c014  dma_cfg zero, zero, r12, 10
000410  15002014  dma_cfg zero, zero, r2, 10
000414  1f111000  addli r2, zero, 9
000418  15002014  dma_cfg zero, zero, r2, 10
00041c  1f211000  addli r2, zero, 10
000420  15002014  dma_cfg zero, zero, r2, 10
000424  1f311000  addli r2, zero, 11
000428  15002014  dma_cfg zero, zero, r2, 10
00042c  1f611000  addli r2, zero, 14
000430  15001015  dma_cfg zero, zero, r17, 10
000434  15009015  dma_cfg zero, zero, r25, 10
000438  9f3c2000  addli r25, zero, 19
00043c  15002014  dma_cfg zero, zero, r2, 10
000440  1f613000  addli r2, zero, 30
000444  15008014  dma_cfg zero, zero, r8, 10
000448  1f442000  addli r8, zero, 20
00044c  15006015  dma_cfg zero, zero, r22, 10
000450  1f6b2000  addli r22, zero, 22
000454  1500b015  dma_cfg zero, zero, r27, 10
000458  9f1d3000  addli r27, zero, 25
00045c  1500c015  dma_cfg zero, zero, r28, 10
000460  1f4e3000  addli r28, zero, 28
000464  15009015  dma_cfg zero, zero, r25, 10
000468  15008014  dma_cfg zero, zero, r8, 10
00046c  1500d014  dma_cfg zero, zero, r13, 10
000470  9f762000  addli r13, zero, 23
000474  15006015  dma_cfg zero, zero, r22, 10
000478  1500d014  dma_cfg zero, zero, r13, 10
00047c  1500f014  dma_cfg zero, zero, r15, 10
000480  9f273000  addli r15, zero, 26
000484  1500b015  dma_cfg zero, zero, r27, 10
000488  1500f014  dma_cfg zero, zero, r15, 10
00048c  15000015  dma_cfg zero, zero, r16, 10
000490  1f583000  addli r16, zero, 29
000494  1500c015  dma_cfg zero, zero, r28, 10
000498  15000015  dma_cfg zero, zero, r16, 10
00049c  15002014  dma_cfg zero, zero, r2, 10
0004a0  15007015  dma_cfg zero, zero, r23, 10
0004a4  95840400  dma_cfg r9, r9, zero, 0
0004a8  95040002  dma_cfg r9, zero, zero, 1
0004ac  15000004  dma_cfg zero, zero, zero, 2
0004b0  1500b006  dma_cfg zero, zero, r11, 3
0004b4  9501a008  dma_cfg r3, zero, r10, 4
0004b8  9500b00a  dma_cfg r1, zero, r11, 5
0004bc  97309a02  sll.d r[2:3], r[21:22], r9
0004c0  6b5a0f01  load.d r[21:22], 16(r30)
0004c4  15000010  dma_cfg zero, zero, zero, 8
0004c8  35000000  dma_run zero
0004cc  1500900a  dma_cfg zero, zero, r9, 5
0004d0  15000010  dma_cfg zero, zero, zero, 8
0004d4  8b201a10  add.ul r[2:3], r[21:22], r[2:3]
0004d8  1f3a1000  addli r20, zero, 11
0004dc  1d100300  unlock r6
0004e0  7d000500  xsignal r10, 0
0004e4  9f3a0000  addli r21, zero, 3
0004e8  7d100a00  xwait r20, 0
0004ec  1d000300  lock zero, r6
0004f0  15000014  dma_cfg zero, zero, zero, 10
0004f4  15009014  dma_cfg zero, zero, r9, 10
0004f8  1500a014  dma_cfg zero, zero, r10, 10
0004fc  15005015  dma_cfg zero, zero, r21, 10
000500  9f0a1000  addli r21, zero, 8
000504  1500e014  dma_cfg zero, zero, r14, 10
000508  15006014  dma_cfg zero, zero, r6, 10
00050c  15007014  dma_cfg zero, zero, r7, 10
000510  9f231000  addli r7, zero, 10
000514  1500c014  dma_cfg zero, zero, r12, 10
000518  15005015  dma_cfg zero, zero, r21, 10
00051c  9f1a1000  addli r21, zero, 9
000520  15005015  dma_cfg zero, zero, r21, 10
000524  15007014  dma_cfg zero, zero, r7, 10
000528  9f631000  addli r7, zero, 14
00052c  15004015  dma_cfg zero, zero, r20, 10
000530  1f0a0004  addli r20, zero, 512
000534  15001015  dma_cfg zero, zero, r17, 10
000538  9f581000  addli r17, zero, 13
00053c  15001015  dma_cfg zero, zero, r17, 10
000540  9f781000  addli r17, zero, 15
000544  15007014  dma_cfg zero, zero, r7, 10
000548  9f032000  addli r7, zero, 16
00054c  15001015  dma_cfg zero, zero, r17, 10
000550  15007014  dma_cfg zero, zero, r7, 10
000554  9f132000  addli r7, zero, 17
000558  15007014  dma_cfg zero, zero, r7, 10
00055c  9f232000  addli r7, zero, 18
000560  15007014  dma_cfg zero, zero, r7, 10
000564  9f532000  addli r7, zero, 21
000568  15009015  dma_cfg zero, zero, r25, 10
00056c  9f5c2000  addli r25, zero, 21
000570  15008014  dma_cfg zero, zero, r8, 10
000574  1f642000  addli r8, zero, 22
000578  15007014  dma_cfg zero, zero, r7, 10
00057c  9f033000  addli r7, zero, 24
000580  15006015  dma_cfg zero, zero, r22, 10
000584  1f7b2000  addli r22, zero, 23
000588  1500d014  dma_cfg zero, zero, r13, 10
00058c  9f163000  addli r13, zero, 25
000590  15007014  dma_cfg zero, zero, r7, 10
000594  9f333000  addli r7, zero, 27
000598  1500b015  dma_cfg zero, zero, r27, 10
00059c  9f2d3000  addli r27, zero, 26
0005a0  1500f014  dma_cfg zero, zero, r15, 10
0005a4  9f473000  addli r15, zero, 28
0005a8  15007014  dma_cfg zero, zero, r7, 10
0005ac  9f633000  addli r7, zero, 30
0005b0  1500c015  dma_cfg zero, zero, r28, 10
0005b4  1f5e3000  addli r28, zero, 29
0005b8  15000015  dma_cfg zero, zero, r16, 10
0005bc  1f783000  addli r16, zero, 31
0005c0  15007014  dma_cfg zero, zero, r7, 10
0005c4  ab430100  lui r7, 20
0005c8  15007015  dma_cfg zero, zero, r23, 10
0005cc  ab4b0100  lui r23, 20
0005d0  95840400  dma_cfg r9, r9, zero, 0
0005d4  95040002  dma_cfg r9, zero, zero, 1
0005d8  15000004  dma_cfg zero, zero, zero, 2
0005dc  9503b006  dma_cfg r7, zero, r11, 3
0005e0  9501e008  dma_cfg r3, zero, r14, 4
0005e4  9b910304  ori r3, r7, 64
0005e8  150a900a  dma_cfg r20, zero, r9, 5
0005ec  15000010  dma_cfg zero, zero, zero, 8
0005f0  35000000  dma_run zero
0005f4  1500900a  dma_cfg zero, zero, r9, 5
0005f8  15000010  dma_cfg zero, zero, zero, 8
0005fc  1d100300  unlock r6
000600  1d000700  lock zero, r14
000604  95840400  dma_cfg r9, r9, zero, 0
000608  15000104  dma_cfg zero, r2, zero, 2
00060c  9581b006  dma_cfg r3, r1, r11, 3
000610  9f000001  addli r1, zero, 128
000614  1f010002  addli r2, zero, 256
000618  9f311000  addli r3, zero, 11
00061c  9580e508  dma_cfg r1, r11, r14, 4
000620  150a910a  dma_cfg r20, r2, r9, 5
000624  1f310000  addli r2, zero, 3
000628  e3439fff  loadli.w r7,  -52(r30)
00062c  15000010  dma_cfg zero, zero, zero, 8
000630  35000000  dma_run zero
000634  1500900a  dma_cfg zero, zero, r9, 5
000638  15000010  dma_cfg zero, zero, zero, 8
00063c  1d100700  unlock r14
000640  1d000300  lock zero, r6
000644  15000014  dma_cfg zero, zero, zero, 10
000648  15009014  dma_cfg zero, zero, r9, 10
00064c  1500a014  dma_cfg zero, zero, r10, 10
000650  15002014  dma_cfg zero, zero, r2, 10
000654  1f610000  addli r2, zero, 6
000658  1500e014  dma_cfg zero, zero, r14, 10
00065c  15006014  dma_cfg zero, zero, r6, 10
000660  15002014  dma_cfg zero, zero, r2, 10
000664  1f011000  addli r2, zero, 8
000668  1500c014  dma_cfg zero, zero, r12, 10
00066c  15002014  dma_cfg zero, zero, r2, 10
000670  1f211000  addli r2, zero, 10
000674  15005015  dma_cfg zero, zero, r21, 10
000678  15002014  dma_cfg zero, zero, r2, 10
00067c  15003014  dma_cfg zero, zero, r3, 10
000680  9f411000  addli r3, zero, 12
000684  15003014  dma_cfg zero, zero, r3, 10
000688  9f511000  addli r3, zero, 13
00068c  15003014  dma_cfg zero, zero, r3, 10
000690  9f611000  addli r3, zero, 14
000694  15003014  dma_cfg zero, zero, r3, 10
000698  9f012000  addli r3, zero, 16
00069c  15001015  dma_cfg zero, zero, r17, 10
0006a0  15003014  dma_cfg zero, zero, r3, 10
0006a4  9f112000  addli r3, zero, 17
0006a8  15003014  dma_cfg zero, zero, r3, 10
0006ac  9f212000  addli r3, zero, 18
0006b0  15003014  dma_cfg zero, zero, r3, 10
0006b4  9f312000  addli r3, zero, 19
0006b8  15003014  dma_cfg zero, zero, r3, 10
0006bc  9f412000  addli r3, zero, 20
0006c0  15003014  dma_cfg zero, zero, r3, 10
0006c4  9f013000  addli r3, zero, 24
0006c8  15009015  dma_cfg zero, zero, r25, 10
0006cc  15008014  dma_cfg zero, zero, r8, 10
0006d0  15006015  dma_cfg zero, zero, r22, 10
0006d4  15003014  dma_cfg zero, zero, r3, 10
0006d8  9f313000  addli r3, zero, 27
0006dc  1500d014  dma_cfg zero, zero, r13, 10
0006e0  1500b015  dma_cfg zero, zero, r27, 10
0006e4  15003014  dma_cfg zero, zero, r3, 10
0006e8  9f613000  addli r3, zero, 30
0006ec  1500f014  dma_cfg zero, zero, r15, 10
0006f0  1500c015  dma_cfg zero, zero, r28, 10
0006f4  15003014  dma_cfg zero, zero, r3, 10
0006f8  15000015  dma_cfg zero, zero, r16, 10
0006fc  95840400  dma_cfg r9, r9, zero, 0
000700  95040002  dma_cfg r9, zero, zero, 1
000704  15000004  dma_cfg zero, zero, zero, 2
000708  950bb006  dma_cfg r23, zero, r11, 3
00070c  9500e008  dma_cfg r1, zero, r14, 4
000710  150a900a  dma_cfg r20, zero, r9, 5
000714  15000010  dma_cfg zero, zero, zero, 8
000718  35000000  dma_run zero
00071c  1500900a  dma_cfg zero, zero, r9, 5
000720  15000010  dma_cfg zero, zero, zero, 8
000724  1d100300  unlock r6
000728  7d000100  xsignal r2, 0
00072c  e3405fff  loadli.w r1,  -84(r30)
000730  674d1ffe  storeli.w r1, -44(r30)
000734  9f70f001  addli r1, zero, 255
000738  3d000000  xfence
00073c  80310002  core_id r3
000740  00a00300  mfence { lm, sm, gm }
000744  80a20004  csr_set csr5, r1
000748  abc00000  lui r1, 12
00074c  00e00200  sync_core
000750  9b95c000  ori r11, r1, 12
000754  9b978000  ori r15, r1, 8
000758  9b9a4000  ori r21, r1, 4
00075c  9f000001  addli r1, zero, 128
000760  b3800028  zext_int2long r[2:3], r1
000764  37f20100  beq r3, zero, 156
000768  bbc80300  bneq r7, zero, 560
00076c  e301afff  loadli.w r3,  -48(r30)
000770  3b8f0100  bneq r3, zero, 960
000774  e341dfff  loadli.w r3,  -20(r30)
000778  3bc50102  bneq r3, zero, 1360
00077c  e301bfff  loadli.w r3,  -40(r30)
000780  bb8b0102  bneq r3, zero, 1760
000784  e341afff  loadli.w r3,  -44(r30)
000788  bbc10104  bneq r3, zero, 2160
00078c  db3f0100  j 2556
000790  9f300000  addli r1, zero, 3
000794  bf878006  blt.s r1, r8, 3552
000798  9f100000  addli r1, zero, 1
00079c  375b1406  beq r8, r1, 3796
0007a0  9f200000  addli r1, zero, 2
0007a4  bb781406  bneq r8, r1, 3644
0007a8  1f210000  addli r2, zero, 2
0007ac  9f500000  addli r1, zero, 5
0007b0  e74e0ffe  storeli.w zero, -20(r30)
0007b4  e70d0ffe  storeli.w zero, -40(r30)
0007b8  e74d0ffe  storeli.w zero, -36(r30)
0007bc  9f030000  addli r7, zero, 0
0007c0  7d100100  xwait r2, 0
0007c4  7d900000  xwait r1, 0
0007c8  1d000000  lock zero, zero
0007cc  9f008000  addli r1, zero, 64
0007d0  01010000  ds_cfg r2, zero, 0
0007d4  81000002  ds_cfg r1, zero, 1
0007d8  8100001c  ds_cfg r1, zero, 14
0007dc  8100001a  ds_cfg r1, zero, 13
0007e0  21101002  shuffle_batch zero, zero, r1, 1
0007e4  9f300000  addli r1, zero, 3
0007e8  1d100000  unlock zero
0007ec  7d800000  xsignal r1, 0
0007f0  9f100000  addli r1, zero, 1
0007f4  670d1ffe  storeli.w r1, -48(r30)
0007f8  7d000700  xsignal r14, 0
0007fc  5be6ffff  j -208
000800  e74c7ffe  storeli.w r7, -52(r30)
000804  33030028  zext_int2long r[7:8], zero
000808  3d000000  xfence
00080c  00a00300  mfence { lm, sm, gm }
000810  73386ffe  store.d r[7:8], -16(r30)
000814  db030000  j 28
000818  1f760000  addli r12, zero, 7
00081c  6b548fff  load.d r[9:10], -8(r30)
000820  33030628  zext_int2long r[7:8], r12
000824  93216404  setlt.ul r3, r[9:10], r[7:8]
000828  27130400  addli.d r[7:8], r[9:10], 1
00082c  b7850100  beq r3, zero, 352
000830  eb560fff  load.d r[14:15], -16(r30)
000834  1738c302  sll.d r[17:18], r[7:8], r12
000838  733c6ffe  store.d r[7:8], -8(r30)
00083c  db060000  j 52
000840  a7c60600  addli.d r[14:15], r[14:15], 4
000844  2bc40000  lui r8, 12
000848  8b11b310  add.s r3, r6, r11
00084c  93a31602  setneq.d r7, r[14:15], r[2:3]
000850  0b148310  add.s r8, r6, r8
000854  73e09100  stores.w r9, 0(r3)
000858  8b11f310  add.s r3, r6, r15
00085c  0b135311  add.s r6, r6, r21
000860  73e0a100  stores.w r10, 0(r3)
000864  73607301  stores.w r23, 0(r6)
000868  7360b401  stores.w r27, 0(r8)
00086c  b7be03fe  beq r7, zero, -84
000870  0ba30611  add.ul r[7:8], r[14:15], r[17:18]
000874  1b332300  slli r6, r6, 2
000878  8b118311  add.s r3, r6, r24
00087c  6fcbc100  loads.w r22, 12(r3)
000880  6fc40100  loads.w r8, 0(r3)
000884  6fce4100  loads.w r28, 4(r3)
000888  efc18100  loads.w r3, 8(r3)
00088c  17064b00  and r12, r22, r4
000890  9303c904  setlt.u r7, r18, r12
000894  3bb00300  bneq r7, zero, 12
000898  9f040b00  addli r9, r22, 0
00089c  db010000  j 12
0008a0  ab034000  lui r7, 1024
0008a4  97147b00  or r9, r22, r7
0008a8  97834100  and r7, r3, r4
0008ac  13057904  setlt.u r10, r18, r7
0008b0  3b300500  bneq r10, zero, 12
0008b4  1f850100  addli r10, r3, 0
0008b8  db010000  j 12
0008bc  2b054000  lui r10, 1024
0008c0  1795a100  or r10, r3, r10
0008c4  170a4e00  and r20, r28, r4
0008c8  930b4905  setlt.u r23, r18, r20
0008cc  3bb00b00  bneq r23, zero, 12
0008d0  9f0b0e00  addli r23, r28, 0
0008d4  db010000  j 12
0008d8  ab0b4000  lui r23, 1024
0008dc  971b7e01  or r23, r28, r23
0008e0  970c4400  and r25, r8, r4
0008e4  930d9905  setlt.u r27, r18, r25
0008e8  3bd00d00  bneq r27, zero, 20
0008ec  9f0d0400  addli r27, r8, 0
0008f0  930c9d05  setlt.u r25, r26, r25
0008f4  37e00c00  beq r25, zero, 24
0008f8  5b050000  j 40
0008fc  ab0d4000  lui r27, 1024
000900  971db401  or r27, r8, r27
000904  930c9d05  setlt.u r25, r26, r25
000908  3be00c00  bneq r25, zero, 24
00090c  9b4c0401  srli r25, r8, 16
000910  9b8c1c00  andi r25, r25, 1
000914  0b149411  add.s r8, r8, r25
000918  0b145410  add.s r8, r8, r5
00091c  970d3401  and r27, r8, r19
000920  13044d05  setlt.u r8, r26, r20
000924  37600400  beq r8, zero, 24
000928  93037d04  setlt.u r7, r26, r7
00092c  b7b00300  beq r7, zero, 44
000930  9301cd04  setlt.u r3, r26, r12
000934  3bbc01fe  bneq r3, zero, -244
000938  db070000  j 60
00093c  1b440e01  srli r8, r28, 16
000940  1b041400  andi r8, r8, 1
000944  0b148e10  add.s r8, r28, r8
000948  0b145410  add.s r8, r8, r5
00094c  970b3401  and r23, r8, r19
000950  93037d04  setlt.u r7, r26, r7
000954  3bff03fe  bneq r7, zero, -36
000958  9bc30101  srli r7, r3, 16
00095c  9b831300  andi r7, r7, 1
000960  8b917110  add.s r3, r3, r7
000964  8b915110  add.s r3, r3, r5
000968  17853101  and r10, r3, r19
00096c  9301cd04  setlt.u r3, r26, r12
000970  3bcb01fe  bneq r3, zero, -304
000974  9b410b01  srli r3, r22, 16
000978  9b811100  andi r3, r3, 1
00097c  8b113b10  add.s r3, r22, r3
000980  8b915110  add.s r3, r3, r5
000984  97843101  and r9, r3, r19
000988  5bd7ffff  j -328
00098c  00200100  mfence { sm }
000990  e3439fff  loadli.w r7,  -52(r30)
000994  37e703fe  beq r7, zero, -552
000998  9f011000  addli r3, zero, 8
00099c  3d000000  xfence
0009a0  00a00300  mfence { lm, sm, gm }
0009a4  33830128  zext_int2long r[7:8], r3
0009a8  5b040000  j 32
0009ac  9f711000  addli r3, zero, 15
0009b0  6b548fff  load.d r[9:10], -8(r30)
0009b4  1f760000  addli r12, zero, 7
0009b8  33830128  zext_int2long r[7:8], r3
0009bc  93216404  setlt.ul r3, r[9:10], r[7:8]
0009c0  27130400  addli.d r[7:8], r[9:10], 1
0009c4  b7850100  beq r3, zero, 352
0009c8  733c6ffe  store.d r[7:8], -8(r30)
0009cc  9733c302  sll.d r[8:9], r[7:8], r12
0009d0  33080028  zext_int2long r[17:18], zero
0009d4  db060000  j 52
0009d8  27480800  addli.d r[17:18], r[17:18], 4
0009dc  abc60000  lui r13, 12
0009e0  0b15b310  add.s r10, r6, r11
0009e4  13261802  setneq.d r12, r[17:18], r[2:3]
0009e8  8b16d310  add.s r13, r6, r13
0009ec  73609500  stores.w r9, 0(r10)
0009f0  8b14f310  add.s r9, r6, r15
0009f4  0b135311  add.s r6, r6, r21
0009f8  73e03400  stores.w r3, 0(r9)
0009fc  73607301  stores.w r23, 0(r6)
000a00  73e0b601  stores.w r27, 0(r13)
000a04  b72e06fe  beq r12, zero, -88
000a08  8b247810  add.ul r[10:11], r[17:18], r[8:9]
000a0c  1bb32400  slli r6, r9, 2
000a10  8b118311  add.s r3, r6, r24
000a14  6fcbc100  loads.w r22, 12(r3)
000a18  6fc70100  loads.w r14, 0(r3)
000a1c  6fce4100  loads.w r28, 4(r3)
000a20  6fc58100  loads.w r10, 8(r3)
000a24  17064b00  and r12, r22, r4
000a28  9301c904  setlt.u r3, r18, r12
000a2c  3bb00100  bneq r3, zero, 12
000a30  9f040b00  addli r9, r22, 0
000a34  db010000  j 12
000a38  ab014000  lui r3, 1024
000a3c  97143b00  or r9, r22, r3
000a40  97064500  and r13, r10, r4
000a44  9301d904  setlt.u r3, r18, r13
000a48  3bb00100  bneq r3, zero, 12
000a4c  9f010500  addli r3, r10, 0
000a50  db010000  j 12
000a54  ab014000  lui r3, 1024
000a58  97113500  or r3, r10, r3
000a5c  170a4e00  and r20, r28, r4
000a60  930b4905  setlt.u r23, r18, r20
000a64  3bb00b00  bneq r23, zero, 12
000a68  9f0b0e00  addli r23, r28, 0
000a6c  db010000  j 12
000a70  ab0b4000  lui r23, 1024
000a74  971b7e01  or r23, r28, r23
000a78  970c4700  and r25, r14, r4
000a7c  930d9905  setlt.u r27, r18, r25
000a80  3bd00d00  bneq r27, zero, 20
000a84  9f0d0700  addli r27, r14, 0
000a88  930c9d05  setlt.u r25, r26, r25
000a8c  37e00c00  beq r25, zero, 24
000a90  5b050000  j 40
000a94  ab0d4000  lui r27, 1024
000a98  971db701  or r27, r14, r27
000a9c  930c9d05  setlt.u r25, r26, r25
000aa0  3be00c00  bneq r25, zero, 24
000aa4  9b4c0701  srli r25, r14, 16
000aa8  9b8c1c00  andi r25, r25, 1
000aac  0b179711  add.s r14, r14, r25
000ab0  0b175710  add.s r14, r14, r5
000ab4  970d3701  and r27, r14, r19
000ab8  13074d05  setlt.u r14, r26, r20
000abc  37600700  beq r14, zero, 24
000ac0  9306dd04  setlt.u r13, r26, r13
000ac4  b7b00600  beq r13, zero, 44
000ac8  1305cd04  setlt.u r10, r26, r12
000acc  3b3c05fe  bneq r10, zero, -244
000ad0  db070000  j 60
000ad4  1b470e01  srli r14, r28, 16
000ad8  1b071700  andi r14, r14, 1
000adc  0b17ee10  add.s r14, r28, r14
000ae0  0b175710  add.s r14, r14, r5
000ae4  970b3701  and r23, r14, r19
000ae8  9306dd04  setlt.u r13, r26, r13
000aec  3bff06fe  bneq r13, zero, -36
000af0  9b410501  srli r3, r10, 16
000af4  9b811100  andi r3, r3, 1
000af8  8b113510  add.s r3, r10, r3
000afc  8b915110  add.s r3, r3, r5
000b00  97813101  and r3, r3, r19
000b04  1305cd04  setlt.u r10, r26, r12
000b08  3b4b05fe  bneq r10, zero, -304
000b0c  9b440b01  srli r9, r22, 16
000b10  9b841400  andi r9, r9, 1
000b14  8b149b10  add.s r9, r22, r9
000b18  8b945410  add.s r9, r9, r5
000b1c  97843401  and r9, r9, r19
000b20  5bd7ffff  j -328
000b24  00200100  mfence { sm }
000b28  e301afff  loadli.w r3,  -48(r30)
000b2c  37a101fe  beq r3, zero, -952
000b30  9f012000  addli r3, zero, 16
000b34  3d000000  xfence
000b38  00a00300  mfence { lm, sm, gm }
000b3c  33830128  zext_int2long r[7:8], r3
000b40  5b040000  j 32
000b44  9f712000  addli r3, zero, 23
000b48  6b548fff  load.d r[9:10], -8(r30)
000b4c  1f760000  addli r12, zero, 7
000b50  33830128  zext_int2long r[7:8], r3
000b54  93216404  setlt.ul r3, r[9:10], r[7:8]
000b58  27130400  addli.d r[7:8], r[9:10], 1
000b5c  b7850100  beq r3, zero, 352
000b60  733c6ffe  store.d r[7:8], -8(r30)
000b64  1733c302  sll.d r[7:8], r[7:8], r12
000b68  33040028  zext_int2long r[9:10], zero
000b6c  db060000  j 52
000b70  27440400  addli.d r[9:10], r[9:10], 4
000b74  abc60000  lui r13, 12
000b78  0b15b810  add.s r10, r16, r11
000b7c  0b175811  add.s r14, r16, r21
000b80  13261402  setneq.d r12, r[9:10], r[2:3]
000b84  8b16d810  add.s r13, r16, r13
000b88  73601501  stores.w r17, 0(r10)
000b8c  0b15f810  add.s r10, r16, r15
000b90  73607701  stores.w r23, 0(r14)
000b94  73603500  stores.w r3, 0(r10)
000b98  73e0b601  stores.w r27, 0(r13)
000b9c  b72e06fe  beq r12, zero, -88
000ba0  0b266410  add.ul r[13:14], r[9:10], r[7:8]
000ba4  1b382600  slli r16, r12, 2
000ba8  8b118811  add.s r3, r16, r24
000bac  6fcbc100  loads.w r22, 12(r3)
000bb0  6fc70100  loads.w r14, 0(r3)
000bb4  6fce4100  loads.w r28, 4(r3)
000bb8  6fc58100  loads.w r10, 8(r3)
000bbc  17064b00  and r12, r22, r4
000bc0  9301c904  setlt.u r3, r18, r12
000bc4  3bb00100  bneq r3, zero, 12
000bc8  9f080b00  addli r17, r22, 0
000bcc  db010000  j 12
000bd0  ab014000  lui r3, 1024
000bd4  97183b00  or r17, r22, r3
000bd8  97064500  and r13, r10, r4
000bdc  9301d904  setlt.u r3, r18, r13
000be0  3bb00100  bneq r3, zero, 12
000be4  9f010500  addli r3, r10, 0
000be8  db010000  j 12
000bec  ab014000  lui r3, 1024
000bf0  97113500  or r3, r10, r3
000bf4  170a4e00  and r20, r28, r4
000bf8  930b4905  setlt.u r23, r18, r20
000bfc  3bb00b00  bneq r23, zero, 12
000c00  9f0b0e00  addli r23, r28, 0
000c04  db010000  j 12
000c08  ab0b4000  lui r23, 1024
000c0c  971b7e01  or r23, r28, r23
000c10  970c4700  and r25, r14, r4
000c14  930d9905  setlt.u r27, r18, r25
000c18  3bd00d00  bneq r27, zero, 20
000c1c  9f0d0700  addli r27, r14, 0
000c20  930c9d05  setlt.u r25, r26, r25
000c24  37e00c00  beq r25, zero, 24
000c28  5b050000  j 40
000c2c  ab0d4000  lui r27, 1024
000c30  971db701  or r27, r14, r27
000c34  930c9d05  setlt.u r25, r26, r25
000c38  3be00c00  bneq r25, zero, 24
000c3c  9b4c0701  srli r25, r14, 16
000c40  9b8c1c00  andi r25, r25, 1
000c44  0b179711  add.s r14, r14, r25
000c48  0b175710  add.s r14, r14, r5
000c4c  970d3701  and r27, r14, r19
000c50  13074d05  setlt.u r14, r26, r20
000c54  37600700  beq r14, zero, 24
000c58  9306dd04  setlt.u r13, r26, r13
000c5c  b7b00600  beq r13, zero, 44
000c60  1305cd04  setlt.u r10, r26, r12
000c64  3b3c05fe  bneq r10, zero, -244
000c68  db070000  j 60
000c6c  1b470e01  srli r14, r28, 16
000c70  1b071700  andi r14, r14, 1
000c74  0b17ee10  add.s r14, r28, r14
000c78  0b175710  add.s r14, r14, r5
000c7c  970b3701  and r23, r14, r19
000c80  9306dd04  setlt.u r13, r26, r13
000c84  3bff06fe  bneq r13, zero, -36
000c88  9b410501  srli r3, r10, 16
000c8c  9b811100  andi r3, r3, 1
000c90  8b113510  add.s r3, r10, r3
000c94  8b915110  add.s r3, r3, r5
000c98  97813101  and r3, r3, r19
000c9c  1305cd04  setlt.u r10, r26, r12
000ca0  3b4b05fe  bneq r10, zero, -304
000ca4  1b450b01  srli r10, r22, 16
000ca8  1b051500  andi r10, r10, 1
000cac  0b15ab10  add.s r10, r22, r10
000cb0  0b155510  add.s r10, r10, r5
000cb4  97083501  and r17, r10, r19
000cb8  5bd7ffff  j -328
000cbc  00200100  mfence { sm }
000cc0  e341dfff  loadli.w r3,  -20(r30)
000cc4  b7ea01fc  beq r3, zero, -1352
000cc8  9f013000  addli r3, zero, 24
000ccc  3d000000  xfence
000cd0  00a00300  mfence { lm, sm, gm }
000cd4  33830128  zext_int2long r[7:8], r3
000cd8  5b040000  j 32
000cdc  9f713000  addli r3, zero, 31
000ce0  6b548fff  load.d r[9:10], -8(r30)
000ce4  1f760000  addli r12, zero, 7
000ce8  33830128  zext_int2long r[7:8], r3
000cec  93216404  setlt.ul r3, r[9:10], r[7:8]
000cf0  27130400  addli.d r[7:8], r[9:10], 1
000cf4  b7850100  beq r3, zero, 352
000cf8  733c6ffe  store.d r[7:8], -8(r30)
000cfc  1733c302  sll.d r[7:8], r[7:8], r12
000d00  33040028  zext_int2long r[9:10], zero
000d04  db060000  j 52
000d08  27440400  addli.d r[9:10], r[9:10], 4
000d0c  abc60000  lui r13, 12
000d10  0b15b810  add.s r10, r16, r11
000d14  0b175811  add.s r14, r16, r21
000d18  13261402  setneq.d r12, r[9:10], r[2:3]
000d1c  8b16d810  add.s r13, r16, r13
000d20  73601501  stores.w r17, 0(r10)
000d24  0b15f810  add.s r10, r16, r15
000d28  73607701  stores.w r23, 0(r14)
000d2c  73603500  stores.w r3, 0(r10)
000d30  73e0b601  stores.w r27, 0(r13)
000d34  b72e06fe  beq r12, zero, -88
000d38  0b266410  add.ul r[13:14], r[9:10], r[7:8]
000d3c  1b382600  slli r16, r12, 2
000d40  8b118811  add.s r3, r16, r24
000d44  6fcbc100  loads.w r22, 12(r3)
000d48  6fc70100  loads.w r14, 0(r3)
000d4c  6fce4100  loads.w r28, 4(r3)
000d50  6fc58100  loads.w r10, 8(r3)
000d54  17064b00  and r12, r22, r4
000d58  9301c904  setlt.u r3, r18, r12
000d5c  3bb00100  bneq r3, zero, 12
000d60  9f080b00  addli r17, r22, 0
000d64  db010000  j 12
000d68  ab014000  lui r3, 1024
000d6c  97183b00  or r17, r22, r3
000d70  97064500  and r13, r10, r4
000d74  9301d904  setlt.u r3, r18, r13
000d78  3bb00100  bneq r3, zero, 12
000d7c  9f010500  addli r3, r10, 0
000d80  db010000  j 12
000d84  ab014000  lui r3, 1024
000d88  97113500  or r3, r10, r3
000d8c  170a4e00  and r20, r28, r4
000d90  930b4905  setlt.u r23, r18, r20
000d94  3bb00b00  bneq r23, zero, 12
000d98  9f0b0e00  addli r23, r28, 0
000d9c  db010000  j 12
000da0  ab0b4000  lui r23, 1024
000da4  971b7e01  or r23, r28, r23
000da8  970c4700  and r25, r14, r4
000dac  930d9905  setlt.u r27, r18, r25
000db0  3bd00d00  bneq r27, zero, 20
000db4  9f0d0700  addli r27, r14, 0
000db8  930c9d05  setlt.u r25, r26, r25
000dbc  37e00c00  beq r25, zero, 24
000dc0  5b050000  j 40
000dc4  ab0d4000  lui r27, 1024
000dc8  971db701  or r27, r14, r27
000dcc  930c9d05  setlt.u r25, r26, r25
000dd0  3be00c00  bneq r25, zero, 24
000dd4  9b4c0701  srli r25, r14, 16
000dd8  9b8c1c00  andi r25, r25, 1
000ddc  0b179711  add.s r14, r14, r25
000de0  0b175710  add.s r14, r14, r5
000de4  970d3701  and r27, r14, r19
000de8  13074d05  setlt.u r14, r26, r20
000dec  37600700  beq r14, zero, 24
000df0  9306dd04  setlt.u r13, r26, r13
000df4  b7b00600  beq r13, zero, 44
000df8  1305cd04  setlt.u r10, r26, r12
000dfc  3b3c05fe  bneq r10, zero, -244
000e00  db070000  j 60
000e04  1b470e01  srli r14, r28, 16
000e08  1b071700  andi r14, r14, 1
000e0c  0b17ee10  add.s r14, r28, r14
000e10  0b175710  add.s r14, r14, r5
000e14  970b3701  and r23, r14, r19
000e18  9306dd04  setlt.u r13, r26, r13
000e1c  3bff06fe  bneq r13, zero, -36
000e20  9b410501  srli r3, r10, 16
000e24  9b811100  andi r3, r3, 1
000e28  8b113510  add.s r3, r10, r3
000e2c  8b915110  add.s r3, r3, r5
000e30  97813101  and r3, r3, r19
000e34  1305cd04  setlt.u r10, r26, r12
000e38  3b4b05fe  bneq r10, zero, -304
000e3c  1b450b01  srli r10, r22, 16
000e40  1b051500  andi r10, r10, 1
000e44  0b15ab10  add.s r10, r22, r10
000e48  0b155510  add.s r10, r10, r5
000e4c  97083501  and r17, r10, r19
000e50  5bd7ffff  j -328
000e54  00200100  mfence { sm }
000e58  e301bfff  loadli.w r3,  -40(r30)
000e5c  b7a401fc  beq r3, zero, -1752
000e60  9f014000  addli r3, zero, 32
000e64  3d000000  xfence
000e68  00a00300  mfence { lm, sm, gm }
000e6c  33830128  zext_int2long r[7:8], r3
000e70  5b040000  j 32
000e74  9f714000  addli r3, zero, 39
000e78  6b548fff  load.d r[9:10], -8(r30)
000e7c  1f760000  addli r12, zero, 7
000e80  33830128  zext_int2long r[7:8], r3
000e84  93216404  setlt.ul r3, r[9:10], r[7:8]
000e88  27130400  addli.d r[7:8], r[9:10], 1
000e8c  b7850100  beq r3, zero, 352
000e90  733c6ffe  store.d r[7:8], -8(r30)
000e94  1733c302  sll.d r[7:8], r[7:8], r12
000e98  33040028  zext_int2long r[9:10], zero
000e9c  db060000  j 52
000ea0  27440400  addli.d r[9:10], r[9:10], 4
000ea4  abc60000  lui r13, 12
000ea8  0b15b810  add.s r10, r16, r11
000eac  0b175811  add.s r14, r16, r21
000eb0  13261402  setneq.d r12, r[9:10], r[2:3]
000eb4  8b16d810  add.s r13, r16, r13
000eb8  73601501  stores.w r17, 0(r10)
000ebc  0b15f810  add.s r10, r16, r15
000ec0  73607701  stores.w r23, 0(r14)
000ec4  73603500  stores.w r3, 0(r10)
000ec8  73e0b601  stores.w r27, 0(r13)
000ecc  b72e06fe  beq r12, zero, -88
000ed0  0b266410  add.ul r[13:14], r[9:10], r[7:8]
000ed4  1b382600  slli r16, r12, 2
000ed8  8b118811  add.s r3, r16, r24
000edc  6fcbc100  loads.w r22, 12(r3)
000ee0  6fc70100  loads.w r14, 0(r3)
000ee4  6fce4100  loads.w r28, 4(r3)
000ee8  6fc58100  loads.w r10, 8(r3)
000eec  17064b00  and r12, r22, r4
000ef0  9301c904  setlt.u r3, r18, r12
000ef4  3bb00100  bneq r3, zero, 12
000ef8  9f080b00  addli r17, r22, 0
000efc  db010000  j 12
000f00  ab014000  lui r3, 1024
000f04  97183b00  or r17, r22, r3
000f08  97064500  and r13, r10, r4
000f0c  9301d904  setlt.u r3, r18, r13
000f10  3bb00100  bneq r3, zero, 12
000f14  9f010500  addli r3, r10, 0
000f18  db010000  j 12
000f1c  ab014000  lui r3, 1024
000f20  97113500  or r3, r10, r3
000f24  170a4e00  and r20, r28, r4
000f28  930b4905  setlt.u r23, r18, r20
000f2c  3bb00b00  bneq r23, zero, 12
000f30  9f0b0e00  addli r23, r28, 0
000f34  db010000  j 12
000f38  ab0b4000  lui r23, 1024
000f3c  971b7e01  or r23, r28, r23
000f40  970c4700  and r25, r14, r4
000f44  930d9905  setlt.u r27, r18, r25
000f48  3bd00d00  bneq r27, zero, 20
000f4c  9f0d0700  addli r27, r14, 0
000f50  930c9d05  setlt.u r25, r26, r25
000f54  37e00c00  beq r25, zero, 24
000f58  5b050000  j 40
000f5c  ab0d4000  lui r27, 1024
000f60  971db701  or r27, r14, r27
000f64  930c9d05  setlt.u r25, r26, r25
000f68  3be00c00  bneq r25, zero, 24
000f6c  9b4c0701  srli r25, r14, 16
000f70  9b8c1c00  andi r25, r25, 1
000f74  0b179711  add.s r14, r14, r25
000f78  0b175710  add.s r14, r14, r5
000f7c  970d3701  and r27, r14, r19
000f80  13074d05  setlt.u r14, r26, r20
000f84  37600700  beq r14, zero, 24
000f88  9306dd04  setlt.u r13, r26, r13
000f8c  b7b00600  beq r13, zero, 44
000f90  1305cd04  setlt.u r10, r26, r12
000f94  3b3c05fe  bneq r10, zero, -244
000f98  db070000  j 60
000f9c  1b470e01  srli r14, r28, 16
000fa0  1b071700  andi r14, r14, 1
000fa4  0b17ee10  add.s r14, r28, r14
000fa8  0b175710  add.s r14, r14, r5
000fac  970b3701  and r23, r14, r19
000fb0  9306dd04  setlt.u r13, r26, r13
000fb4  3bff06fe  bneq r13, zero, -36
000fb8  9b410501  srli r3, r10, 16
000fbc  9b811100  andi r3, r3, 1
000fc0  8b113510  add.s r3, r10, r3
000fc4  8b915110  add.s r3, r3, r5
000fc8  97813101  and r3, r3, r19
000fcc  1305cd04  setlt.u r10, r26, r12
000fd0  3b4b05fe  bneq r10, zero, -304
000fd4  1b450b01  srli r10, r22, 16
000fd8  1b051500  andi r10, r10, 1
000fdc  0b15ab10  add.s r10, r22, r10
000fe0  0b155510  add.s r10, r10, r5
000fe4  97083501  and r17, r10, r19
000fe8  5bd7ffff  j -328
000fec  00200100  mfence { sm }
000ff0  e341afff  loadli.w r3,  -44(r30)
000ff4  37d60100  beq r3, zero, 404
000ff8  9f015000  addli r3, zero, 40
000ffc  3d000000  xfence
001000  00a00300  mfence { lm, sm, gm }
001004  33830128  zext_int2long r[7:8], r3
001008  5b040000  j 32
00100c  9f715000  addli r3, zero, 47
001010  6b548fff  load.d r[9:10], -8(r30)
001014  1f760000  addli r12, zero, 7
001018  33830128  zext_int2long r[7:8], r3
00101c  93216404  setlt.ul r3, r[9:10], r[7:8]
001020  27130400  addli.d r[7:8], r[9:10], 1
001024  b7850100  beq r3, zero, 352
001028  733c6ffe  store.d r[7:8], -8(r30)
00102c  1733c302  sll.d r[7:8], r[7:8], r12
001030  33040028  zext_int2long r[9:10], zero
001034  db060000  j 52
001038  27440400  addli.d r[9:10], r[9:10], 4
00103c  abc60000  lui r13, 12
001040  0b15b810  add.s r10, r16, r11
001044  0b175811  add.s r14, r16, r21
001048  13261402  setneq.d r12, r[9:10], r[2:3]
00104c  8b16d810  add.s r13, r16, r13
001050  73601501  stores.w r17, 0(r10)
001054  0b15f810  add.s r10, r16, r15
001058  73607701  stores.w r23, 0(r14)
00105c  73603500  stores.w r3, 0(r10)
001060  73e0b601  stores.w r27, 0(r13)
001064  b72e06fe  beq r12, zero, -88
001068  0b266410  add.ul r[13:14], r[9:10], r[7:8]
00106c  1b382600  slli r16, r12, 2
001070  8b118811  add.s r3, r16, r24
001074  6fcbc100  loads.w r22, 12(r3)
001078  6fc70100  loads.w r14, 0(r3)
00107c  6fce4100  loads.w r28, 4(r3)
001080  6fc58100  loads.w r10, 8(r3)
001084  17064b00  and r12, r22, r4
001088  9301c904  setlt.u r3, r18, r12
00108c  3bb00100  bneq r3, zero, 12
001090  9f080b00  addli r17, r22, 0
001094  db010000  j 12
001098  ab014000  lui r3, 1024
00109c  97183b00  or r17, r22, r3
0010a0  97064500  and r13, r10, r4
0010a4  9301d904  setlt.u r3, r18, r13
0010a8  3bb00100  bneq r3, zero, 12
0010ac  9f010500  addli r3, r10, 0
0010b0  db010000  j 12
0010b4  ab014000  lui r3, 1024
0010b8  97113500  or r3, r10, r3
0010bc  170a4e00  and r20, r28, r4
0010c0  930b4905  setlt.u r23, r18, r20
0010c4  3bb00b00  bneq r23, zero, 12
0010c8  9f0b0e00  addli r23, r28, 0
0010cc  db010000  j 12
0010d0  ab0b4000  lui r23, 1024
0010d4  971b7e01  or r23, r28, r23
0010d8  970c4700  and r25, r14, r4
0010dc  930d9905  setlt.u r27, r18, r25
0010e0  3bd00d00  bneq r27, zero, 20
0010e4  9f0d0700  addli r27, r14, 0
0010e8  930c9d05  setlt.u r25, r26, r25
0010ec  37e00c00  beq r25, zero, 24
0010f0  5b050000  j 40
0010f4  ab0d4000  lui r27, 1024
0010f8  971db701  or r27, r14, r27
0010fc  930c9d05  setlt.u r25, r26, r25
001100  3be00c00  bneq r25, zero, 24
001104  9b4c0701  srli r25, r14, 16
001108  9b8c1c00  andi r25, r25, 1
00110c  0b179711  add.s r14, r14, r25
001110  0b175710  add.s r14, r14, r5
001114  970d3701  and r27, r14, r19
001118  13074d05  setlt.u r14, r26, r20
00111c  37600700  beq r14, zero, 24
001120  9306dd04  setlt.u r13, r26, r13
001124  b7b00600  beq r13, zero, 44
001128  1305cd04  setlt.u r10, r26, r12
00112c  3b3c05fe  bneq r10, zero, -244
001130  db070000  j 60
001134  1b470e01  srli r14, r28, 16
001138  1b071700  andi r14, r14, 1
00113c  0b17ee10  add.s r14, r28, r14
001140  0b175710  add.s r14, r14, r5
001144  970b3701  and r23, r14, r19
001148  9306dd04  setlt.u r13, r26, r13
00114c  3bff06fe  bneq r13, zero, -36
001150  9b410501  srli r3, r10, 16
001154  9b811100  andi r3, r3, 1
001158  8b113510  add.s r3, r10, r3
00115c  8b915110  add.s r3, r3, r5
001160  97813101  and r3, r3, r19
001164  1305cd04  setlt.u r10, r26, r12
001168  3b4b05fe  bneq r10, zero, -304
00116c  1b450b01  srli r10, r22, 16
001170  1b051500  andi r10, r10, 1
001174  0b15ab10  add.s r10, r22, r10
001178  0b155510  add.s r10, r10, r5
00117c  97083501  and r17, r10, r19
001180  5bd7ffff  j -328
001184  00200100  mfence { sm }
001188  80310002  core_id r3
00118c  1f630000  addli r6, zero, 6
001190  3bd66100  bneq r3, r6, 404
001194  9f016000  addli r3, zero, 48
001198  3d000000  xfence
00119c  00a00300  mfence { lm, sm, gm }
0011a0  33830128  zext_int2long r[7:8], r3
0011a4  5b040000  j 32
0011a8  9f716000  addli r3, zero, 55
0011ac  6b548fff  load.d r[9:10], -8(r30)
0011b0  1f760000  addli r12, zero, 7
0011b4  33830128  zext_int2long r[7:8], r3
0011b8  93216404  setlt.ul r3, r[9:10], r[7:8]
0011bc  27130400  addli.d r[7:8], r[9:10], 1
0011c0  b7850100  beq r3, zero, 352
0011c4  733c6ffe  store.d r[7:8], -8(r30)
0011c8  1733c302  sll.d r[7:8], r[7:8], r12
0011cc  33040028  zext_int2long r[9:10], zero
0011d0  db060000  j 52
0011d4  27440400  addli.d r[9:10], r[9:10], 4
0011d8  abc60000  lui r13, 12
0011dc  0b15b810  add.s r10, r16, r11
0011e0  0b175811  add.s r14, r16, r21
0011e4  13261402  setneq.d r12, r[9:10], r[2:3]
0011e8  8b16d810  add.s r13, r16, r13
0011ec  73601501  stores.w r17, 0(r10)
0011f0  0b15f810  add.s r10, r16, r15
0011f4  73607701  stores.w r23, 0(r14)
0011f8  73603500  stores.w r3, 0(r10)
0011fc  73e0b601  stores.w r27, 0(r13)
001200  b72e06fe  beq r12, zero, -88
001204  0b266410  add.ul r[13:14], r[9:10], r[7:8]
001208  1b382600  slli r16, r12, 2
00120c  8b118811  add.s r3, r16, r24
001210  6fcbc100  loads.w r22, 12(r3)
001214  6fc70100  loads.w r14, 0(r3)
001218  6fce4100  loads.w r28, 4(r3)
00121c  6fc58100  loads.w r10, 8(r3)
001220  17064b00  and r12, r22, r4
001224  9301c904  setlt.u r3, r18, r12
001228  3bb00100  bneq r3, zero, 12
00122c  9f080b00  addli r17, r22, 0
001230  db010000  j 12
001234  ab014000  lui r3, 1024
001238  97183b00  or r17, r22, r3
00123c  97064500  and r13, r10, r4
001240  9301d904  setlt.u r3, r18, r13
001244  3bb00100  bneq r3, zero, 12
001248  9f010500  addli r3, r10, 0
00124c  db010000  j 12
001250  ab014000  lui r3, 1024
001254  97113500  or r3, r10, r3
001258  170a4e00  and r20, r28, r4
00125c  930b4905  setlt.u r23, r18, r20
001260  3bb00b00  bneq r23, zero, 12
001264  9f0b0e00  addli r23, r28, 0
001268  db010000  j 12
00126c  ab0b4000  lui r23, 1024
001270  971b7e01  or r23, r28, r23
001274  970c4700  and r25, r14, r4
001278  930d9905  setlt.u r27, r18, r25
00127c  3bd00d00  bneq r27, zero, 20
001280  9f0d0700  addli r27, r14, 0
001284  930c9d05  setlt.u r25, r26, r25
001288  37e00c00  beq r25, zero, 24
00128c  5b050000  j 40
001290  ab0d4000  lui r27, 1024
001294  971db701  or r27, r14, r27
001298  930c9d05  setlt.u r25, r26, r25
00129c  3be00c00  bneq r25, zero, 24
0012a0  9b4c0701  srli r25, r14, 16
0012a4  9b8c1c00  andi r25, r25, 1
0012a8  0b179711  add.s r14, r14, r25
0012ac  0b175710  add.s r14, r14, r5
0012b0  970d3701  and r27, r14, r19
0012b4  13074d05  setlt.u r14, r26, r20
0012b8  37600700  beq r14, zero, 24
0012bc  9306dd04  setlt.u r13, r26, r13
0012c0  b7b00600  beq r13, zero, 44
0012c4  1305cd04  setlt.u r10, r26, r12
0012c8  3b3c05fe  bneq r10, zero, -244
0012cc  db070000  j 60
0012d0  1b470e01  srli r14, r28, 16
0012d4  1b071700  andi r14, r14, 1
0012d8  0b17ee10  add.s r14, r28, r14
0012dc  0b175710  add.s r14, r14, r5
0012e0  970b3701  and r23, r14, r19
0012e4  9306dd04  setlt.u r13, r26, r13
0012e8  3bff06fe  bneq r13, zero, -36
0012ec  9b410501  srli r3, r10, 16
0012f0  9b811100  andi r3, r3, 1
0012f4  8b113510  add.s r3, r10, r3
0012f8  8b915110  add.s r3, r3, r5
0012fc  97813101  and r3, r3, r19
001300  1305cd04  setlt.u r10, r26, r12
001304  3b4b05fe  bneq r10, zero, -304
001308  1b450b01  srli r10, r22, 16
00130c  1b051500  andi r10, r10, 1
001310  0b15ab10  add.s r10, r22, r10
001314  0b155510  add.s r10, r10, r5
001318  97083501  and r17, r10, r19
00131c  5bd7ffff  j -328
001320  00200100  mfence { sm }
001324  e341bfff  loadli.w r3,  -36(r30)
001328  37f60100  beq r3, zero, 412
00132c  33030028  zext_int2long r[7:8], zero
001330  9f017000  addli r3, zero, 56
001334  73386ffe  store.d r[7:8], -16(r30)
001338  33830128  zext_int2long r[7:8], r3
00133c  3d000000  xfence
001340  00a00300  mfence { lm, sm, gm }
001344  5b040000  j 32
001348  9f717000  addli r3, zero, 63
00134c  6b548fff  load.d r[9:10], -8(r30)
001350  1f760000  addli r12, zero, 7
001354  33830128  zext_int2long r[7:8], r3
001358  93216404  setlt.ul r3, r[9:10], r[7:8]
00135c  27130400  addli.d r[7:8], r[9:10], 1
001360  b7850100  beq r3, zero, 352
001364  6b580fff  load.d r[17:18], -16(r30)
001368  1734c302  sll.d r[9:10], r[7:8], r12
00136c  733c6ffe  store.d r[7:8], -8(r30)
001370  db060000  j 52
001374  27480800  addli.d r[17:18], r[17:18], 4
001378  2bc50000  lui r10, 12
00137c  0b93bd10  add.s r6, r27, r11
001380  0b965d11  add.s r12, r27, r21
001384  93231802  setneq.d r7, r[17:18], r[2:3]
001388  0b95ad10  add.s r10, r27, r10
00138c  73606301  stores.w r22, 0(r6)
001390  0b93fd10  add.s r6, r27, r15
001394  73607601  stores.w r23, 0(r12)
001398  73603300  stores.w r3, 0(r6)
00139c  7360d500  stores.w r13, 0(r10)
0013a0  b7ae03fe  beq r7, zero, -88
0013a4  0b238810  add.ul r[7:8], r[17:18], r[9:10]
0013a8  9b3d2300  slli r27, r6, 2
0013ac  8b918d11  add.s r3, r27, r24
0013b0  6fcec100  loads.w r28, 12(r3)
0013b4  efc30100  loads.w r7, 0(r3)
0013b8  6fc74100  loads.w r14, 4(r3)
0013bc  6fc58100  loads.w r10, 8(r3)
0013c0  17064e00  and r12, r28, r4
0013c4  9301c904  setlt.u r3, r18, r12
0013c8  3bb00100  bneq r3, zero, 12
0013cc  1f0b0e00  addli r22, r28, 0
0013d0  db010000  j 12
0013d4  ab014000  lui r3, 1024
0013d8  171b3e00  or r22, r28, r3
0013dc  17034500  and r6, r10, r4
0013e0  93016904  setlt.u r3, r18, r6
0013e4  3bb00100  bneq r3, zero, 12
0013e8  9f010500  addli r3, r10, 0
0013ec  db010000  j 12
0013f0  ab014000  lui r3, 1024
0013f4  97113500  or r3, r10, r3
0013f8  170a4700  and r20, r14, r4
0013fc  93064905  setlt.u r13, r18, r20
001400  3bb00600  bneq r13, zero, 12
001404  9f0b0700  addli r23, r14, 0
001408  db010000  j 12
00140c  ab064000  lui r13, 1024
001410  971bd700  or r23, r14, r13
001414  978c4300  and r25, r7, r4
001418  93069905  setlt.u r13, r18, r25
00141c  3bd00600  bneq r13, zero, 20
001420  9f860300  addli r13, r7, 0
001424  930c9d05  setlt.u r25, r26, r25
001428  37e00c00  beq r25, zero, 24
00142c  5b050000  j 40
001430  ab064000  lui r13, 1024
001434  9796d300  or r13, r7, r13
001438  930c9d05  setlt.u r25, r26, r25
00143c  3be00c00  bneq r25, zero, 24
001440  9bc60301  srli r13, r7, 16
001444  9b861600  andi r13, r13, 1
001448  8b93d310  add.s r7, r7, r13
00144c  8b935310  add.s r7, r7, r5
001450  97863301  and r13, r7, r19
001454  93034d05  setlt.u r7, r26, r20
001458  37e00300  beq r7, zero, 24
00145c  13036d04  setlt.u r6, r26, r6
001460  b7300300  beq r6, zero, 44
001464  1303cd04  setlt.u r6, r26, r12
001468  3b3c03fe  bneq r6, zero, -244
00146c  db070000  j 60
001470  9b430701  srli r7, r14, 16
001474  9b831300  andi r7, r7, 1
001478  8b137710  add.s r7, r14, r7
00147c  8b935310  add.s r7, r7, r5
001480  978b3301  and r23, r7, r19
001484  13036d04  setlt.u r6, r26, r6
001488  3b7f03fe  bneq r6, zero, -36
00148c  9b410501  srli r3, r10, 16
001490  9b811100  andi r3, r3, 1
001494  8b113510  add.s r3, r10, r3
001498  8b915110  add.s r3, r3, r5
00149c  97813101  and r3, r3, r19
0014a0  1303cd04  setlt.u r6, r26, r12
0014a4  3b4b03fe  bneq r6, zero, -304
0014a8  1b430e01  srli r6, r28, 16
0014ac  1b031300  andi r6, r6, 1
0014b0  0b136e10  add.s r6, r28, r6
0014b4  0b135310  add.s r6, r6, r5
0014b8  170b3301  and r22, r6, r19
0014bc  5bd7ffff  j -328
0014c0  00200100  mfence { sm }
0014c4  9f70f001  addli r1, zero, 255
0014c8  80a20004  csr_set csr5, r1
0014cc  00e00200  sync_core
0014d0  e340dfff  loadli.w r1,  -20(r30)
0014d4  bbc300f6  bneq r1, zero, -4880
0014d8  eb540ffe  load.d r[10:11], -32(r30)
0014dc  00340002  core_id r8
0014e0  9f6b0000  addli r23, zero, 6
0014e4  1f470000  addli r14, zero, 4
0014e8  ab450100  lui r11, 20
0014ec  bb7304f6  bneq r8, zero, -4868
0014f0  6b518ffb  load.d r[3:4], -72(r30)
0014f4  9f102000  addli r1, zero, 17
0014f8  6b530ffc  load.d r[7:8], -64(r30)
0014fc  eb578f01  load.d r[16:17], 24(r30)
001500  9f160000  addli r13, zero, 1
001504  97301102  sll.d r[2:3], r[3:4], r1
001508  1733d302  sll.d r[7:8], r[7:8], r13
00150c  9f711000  addli r3, zero, 15
001510  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
001514  7d900100  xwait r3, 0
001518  abc10000  lui r3, 12
00151c  8ba06010  add.ul r[2:3], r[2:3], r[7:8]
001520  1f530000  addli r6, zero, 5
001524  9b910104  ori r3, r3, 64
001528  9f038000  addli r7, zero, 64
00152c  1d000300  lock zero, r6
001530  95860600  dma_cfg r13, r13, zero, 0
001534  15800602  dma_cfg zero, r13, zero, 1
001538  15010004  dma_cfg r2, zero, zero, 2
00153c  95807106  dma_cfg r1, r3, r7, 3
001540  9f000001  addli r1, zero, 128
001544  1f010010  addli r2, zero, 2048
001548  9583e008  dma_cfg r7, r1, r14, 4
00154c  9f000004  addli r1, zero, 512
001550  1581700a  dma_cfg r2, r1, r7, 5
001554  9f002000  addli r1, zero, 16
001558  15000010  dma_cfg zero, zero, zero, 8
00155c  35000000  dma_run zero
001560  1500d00a  dma_cfg zero, zero, r13, 5
001564  15000010  dma_cfg zero, zero, zero, 8
001568  1d100300  unlock r6
00156c  7d800000  xsignal r1, 0
001570  5b8ffdff  j -5000
001574  b77de400  beq r8, r14, 892
001578  bb21c400  bneq r8, r12, 104
00157c  9f101000  addli r1, zero, 9
001580  e74e0ffe  storeli.w zero, -20(r30)
001584  e70d0ffe  storeli.w zero, -40(r30)
001588  670d0ffe  storeli.w zero, -48(r30)
00158c  674d0ffe  storeli.w zero, -44(r30)
001590  7d900b00  xwait r23, 0
001594  1f010001  addli r2, zero, 128
001598  9f030000  addli r7, zero, 0
00159c  7d900000  xwait r1, 0
0015a0  9f200000  addli r1, zero, 2
0015a4  1d000000  lock zero, zero
0015a8  81000000  ds_cfg r1, zero, 0
0015ac  9f008000  addli r1, zero, 64
0015b0  01010002  ds_cfg r2, zero, 1
0015b4  8100001c  ds_cfg r1, zero, 14
0015b8  0101001a  ds_cfg r2, zero, 13
0015bc  2b410000  lui r2, 4
0015c0  41001104  shuffle_coa zero, r2, r1, 2
0015c4  9f100000  addli r1, zero, 1
0015c8  1d100000  unlock zero
0015cc  7d000600  xsignal r12, 0
0015d0  e74d1ffe  storeli.w r1, -36(r30)
0015d4  9f001000  addli r1, zero, 8
0015d8  7d800000  xsignal r1, 0
0015dc  5b2bfeff  j -3752
0015e0  9f500000  addli r1, zero, 5
0015e4  3b3e1400  bneq r8, r1, 908
0015e8  1f211000  addli r2, zero, 10
0015ec  9f000000  addli r1, zero, 0
0015f0  ab410100  lui r3, 20
0015f4  2b830000  lui r6, 8
0015f8  7d100100  xwait r2, 0
0015fc  1f411000  addli r2, zero, 12
001600  7d100100  xwait r2, 0
001604  1f210000  addli r2, zero, 2
001608  1d000100  lock zero, r2
00160c  2b01803f  lui r2, 260096
001610  0d000002  ew_cfg zero, zero, zero, 1
001614  0d110100  ewcoeff_cfg r2, r2, zero, 0
001618  1f71f000  addli r2, zero, 127
00161c  0d000104  ew_cfg zero, r2, zero, 2
001620  1f110000  addli r2, zero, 1
001624  0d010006  ew_cfg r2, zero, zero, 3
001628  0b918011  add.s r2, r1, r24
00162c  9f800004  addli r1, r1, 512
001630  2d013100  dsmadd r2, r2, r3, 0
001634  bbdf60fe  bneq r1, r6, -12
001638  9f200000  addli r1, zero, 2
00163c  e74e0ffe  storeli.w zero, -20(r30)
001640  e70d0ffe  storeli.w zero, -40(r30)
001644  e74d0ffe  storeli.w zero, -36(r30)
001648  670d0ffe  storeli.w zero, -48(r30)
00164c  9f030000  addli r7, zero, 0
001650  1d900000  unlock r1
001654  9f301000  addli r1, zero, 11
001658  7d800000  xsignal r1, 0
00165c  9f100000  addli r1, zero, 1
001660  674d1ffe  storeli.w r1, -44(r30)
001664  9f501000  addli r1, zero, 13
001668  7d800000  xsignal r1, 0
00166c  5b19feff  j -3896
001670  9f540000  addli r9, zero, 5
001674  1f130000  addli r6, zero, 1
001678  e74e0ffe  storeli.w zero, -20(r30)
00167c  e70d0ffe  storeli.w zero, -40(r30)
001680  e74d0ffe  storeli.w zero, -36(r30)
001684  670d0ffe  storeli.w zero, -48(r30)
001688  7d100600  xwait r12, 0
00168c  9f210000  addli r3, zero, 2
001690  1f051000  addli r10, zero, 8
001694  9f161000  addli r13, zero, 9
001698  9f271000  addli r15, zero, 10
00169c  1f381000  addli r16, zero, 11
0016a0  9f481000  addli r17, zero, 12
0016a4  9f1c2000  addli r25, zero, 17
0016a8  1f2e2000  addli r28, zero, 18
0016ac  1f3b2000  addli r22, zero, 19
0016b0  9f4d2000  addli r27, zero, 20
0016b4  eb538f00  load.d r[8:9], 8(r30)
0016b8  9f058000  addli r11, zero, 64
0016bc  1d800400  lock zero, r9
0016c0  97306a02  sll.d r[2:3], r[21:22], r6
0016c4  1f6a1000  addli r20, zero, 14
0016c8  9f7a1000  addli r21, zero, 15
0016cc  15000014  dma_cfg zero, zero, zero, 10
0016d0  15006014  dma_cfg zero, zero, r6, 10
0016d4  8ba01310  add.ul r[2:3], r[8:9], r[2:3]
0016d8  ab430000  lui r7, 4
0016dc  1f040004  addli r8, zero, 512
0016e0  15003014  dma_cfg zero, zero, r3, 10
0016e4  9f310000  addli r3, zero, 3
0016e8  15003014  dma_cfg zero, zero, r3, 10
0016ec  9f511000  addli r3, zero, 13
0016f0  1500e014  dma_cfg zero, zero, r14, 10
0016f4  15009014  dma_cfg zero, zero, r9, 10
0016f8  15007015  dma_cfg zero, zero, r23, 10
0016fc  1500c014  dma_cfg zero, zero, r12, 10
001700  1500a014  dma_cfg zero, zero, r10, 10
001704  1500d014  dma_cfg zero, zero, r13, 10
001708  1500f014  dma_cfg zero, zero, r15, 10
00170c  15000015  dma_cfg zero, zero, r16, 10
001710  15001015  dma_cfg zero, zero, r17, 10
001714  15003014  dma_cfg zero, zero, r3, 10
001718  9f012000  addli r3, zero, 16
00171c  15004015  dma_cfg zero, zero, r20, 10
001720  15005015  dma_cfg zero, zero, r21, 10
001724  15003014  dma_cfg zero, zero, r3, 10
001728  9f512000  addli r3, zero, 21
00172c  15009015  dma_cfg zero, zero, r25, 10
001730  1500c015  dma_cfg zero, zero, r28, 10
001734  15006015  dma_cfg zero, zero, r22, 10
001738  1500b015  dma_cfg zero, zero, r27, 10
00173c  15003014  dma_cfg zero, zero, r3, 10
001740  9f612000  addli r3, zero, 22
001744  15003014  dma_cfg zero, zero, r3, 10
001748  9f712000  addli r3, zero, 23
00174c  15003014  dma_cfg zero, zero, r3, 10
001750  9f013000  addli r3, zero, 24
001754  15003014  dma_cfg zero, zero, r3, 10
001758  9f113000  addli r3, zero, 25
00175c  15003014  dma_cfg zero, zero, r3, 10
001760  9f213000  addli r3, zero, 26
001764  15003014  dma_cfg zero, zero, r3, 10
001768  9f313000  addli r3, zero, 27
00176c  15003014  dma_cfg zero, zero, r3, 10
001770  9f413000  addli r3, zero, 28
001774  15003014  dma_cfg zero, zero, r3, 10
001778  9f513000  addli r3, zero, 29
00177c  15003014  dma_cfg zero, zero, r3, 10
001780  9f613000  addli r3, zero, 30
001784  15003014  dma_cfg zero, zero, r3, 10
001788  9f713000  addli r3, zero, 31
00178c  15003014  dma_cfg zero, zero, r3, 10
001790  9f010001  addli r3, zero, 128
001794  15030300  dma_cfg r6, r6, zero, 0
001798  15030002  dma_cfg r6, zero, zero, 1
00179c  15000004  dma_cfg zero, zero, zero, 2
0017a0  9503b006  dma_cfg r7, zero, r11, 3
0017a4  9501e008  dma_cfg r3, zero, r14, 4
0017a8  9b910304  ori r3, r7, 64
0017ac  1504b00a  dma_cfg r8, zero, r11, 5
0017b0  15000010  dma_cfg zero, zero, zero, 8
0017b4  35000000  dma_run zero
0017b8  1500600a  dma_cfg zero, zero, r6, 5
0017bc  15000010  dma_cfg zero, zero, zero, 8
0017c0  1d900400  unlock r9
0017c4  1d000700  lock zero, r14
0017c8  15030300  dma_cfg r6, r6, zero, 0
0017cc  15000104  dma_cfg zero, r2, zero, 2
0017d0  9581b006  dma_cfg r3, r1, r11, 3
0017d4  9f000001  addli r1, zero, 128
0017d8  1f010010  addli r2, zero, 2048
0017dc  9580e508  dma_cfg r1, r11, r14, 4
0017e0  1504b10a  dma_cfg r8, r2, r11, 5
0017e4  1f210000  addli r2, zero, 2
0017e8  15000010  dma_cfg zero, zero, zero, 8
0017ec  35000000  dma_run zero
0017f0  1500600a  dma_cfg zero, zero, r6, 5
0017f4  15000010  dma_cfg zero, zero, zero, 8
0017f8  1d100700  unlock r14
0017fc  1d800400  lock zero, r9
001800  15000014  dma_cfg zero, zero, zero, 10
001804  15006014  dma_cfg zero, zero, r6, 10
001808  15002014  dma_cfg zero, zero, r2, 10
00180c  1f310000  addli r2, zero, 3
001810  15002014  dma_cfg zero, zero, r2, 10
001814  1f511000  addli r2, zero, 13
001818  1500e014  dma_cfg zero, zero, r14, 10
00181c  15009014  dma_cfg zero, zero, r9, 10
001820  15007015  dma_cfg zero, zero, r23, 10
001824  1500c014  dma_cfg zero, zero, r12, 10
001828  1500a014  dma_cfg zero, zero, r10, 10
00182c  1500d014  dma_cfg zero, zero, r13, 10
001830  1500f014  dma_cfg zero, zero, r15, 10
001834  15000015  dma_cfg zero, zero, r16, 10
001838  15001015  dma_cfg zero, zero, r17, 10
00183c  15002014  dma_cfg zero, zero, r2, 10
001840  1f012000  addli r2, zero, 16
001844  15004015  dma_cfg zero, zero, r20, 10
001848  15005015  dma_cfg zero, zero, r21, 10
00184c  15002014  dma_cfg zero, zero, r2, 10
001850  1f512000  addli r2, zero, 21
001854  15009015  dma_cfg zero, zero, r25, 10
001858  1500c015  dma_cfg zero, zero, r28, 10
00185c  15006015  dma_cfg zero, zero, r22, 10
001860  1500b015  dma_cfg zero, zero, r27, 10
001864  15002014  dma_cfg zero, zero, r2, 10
001868  1f612000  addli r2, zero, 22
00186c  15002014  dma_cfg zero, zero, r2, 10
001870  1f712000  addli r2, zero, 23
001874  15002014  dma_cfg zero, zero, r2, 10
001878  1f013000  addli r2, zero, 24
00187c  15002014  dma_cfg zero, zero, r2, 10
001880  1f113000  addli r2, zero, 25
001884  15002014  dma_cfg zero, zero, r2, 10
001888  1f213000  addli r2, zero, 26
00188c  15002014  dma_cfg zero, zero, r2, 10
001890  1f313000  addli r2, zero, 27
001894  15002014  dma_cfg zero, zero, r2, 10
001898  1f413000  addli r2, zero, 28
00189c  15002014  dma_cfg zero, zero, r2, 10
0018a0  1f513000  addli r2, zero, 29
0018a4  15002014  dma_cfg zero, zero, r2, 10
0018a8  1f613000  addli r2, zero, 30
0018ac  15002014  dma_cfg zero, zero, r2, 10
0018b0  1f713000  addli r2, zero, 31
0018b4  15002014  dma_cfg zero, zero, r2, 10
0018b8  15030300  dma_cfg r6, r6, zero, 0
0018bc  15030002  dma_cfg r6, zero, zero, 1
0018c0  15000004  dma_cfg zero, zero, zero, 2
0018c4  9503b006  dma_cfg r7, zero, r11, 3
0018c8  9f130000  addli r7, zero, 1
0018cc  9500e008  dma_cfg r1, zero, r14, 4
0018d0  1504b00a  dma_cfg r8, zero, r11, 5
0018d4  15000010  dma_cfg zero, zero, zero, 8
0018d8  35000000  dma_run zero
0018dc  1500700a  dma_cfg zero, zero, r7, 5
0018e0  15000010  dma_cfg zero, zero, zero, 8
0018e4  1d900400  unlock r9
0018e8  7d800b00  xsignal r23, 0
0018ec  5bc8fdff  j -4544
0018f0  9f001000  addli r1, zero, 8
0018f4  e74e0ffe  storeli.w zero, -20(r30)
0018f8  e74d0ffe  storeli.w zero, -36(r30)
0018fc  670d0ffe  storeli.w zero, -48(r30)
001900  7d100700  xwait r14, 0
001904  9f110000  addli r3, zero, 1
001908  2b410000  lui r2, 4
00190c  9f030000  addli r7, zero, 0
001910  7d900000  xwait r1, 0
001914  9f601000  addli r1, zero, 14
001918  7d900000  xwait r1, 0
00191c  9f008000  addli r1, zero, 64
001920  1d800100  lock zero, r3
001924  89801000  mm_cfg r1, r1, r1, 0
001928  09073704  mm_cfg r14, r14, r3, 2
00192c  290c0010  mm r24, zero, zero, 8
001930  1d900100  unlock r3
001934  1d800100  lock zero, r3
001938  89801000  mm_cfg r1, r1, r1, 0
00193c  9b900530  ori r1, r11, 768
001940  09073704  mm_cfg r14, r14, r3, 2
001944  a9002010  mm r1, zero, r2, 8
001948  9f100000  addli r1, zero, 1
00194c  e70d1ffe  storeli.w r1, -40(r30)
001950  9f500000  addli r1, zero, 5
001954  1d900100  unlock r3
001958  7d800000  xsignal r1, 0
00195c  9f101000  addli r1, zero, 9
001960  7d800000  xsignal r1, 0
001964  9f401000  addli r1, zero, 12
001968  7d800000  xsignal r1, 0
00196c  5bb8fdff  j -4672
001970  9f300000  addli r1, zero, 3
001974  bb501400  bneq r8, r1, 52
001978  9f501000  addli r1, zero, 13
00197c  e70d0ffe  storeli.w zero, -40(r30)
001980  e74d0ffe  storeli.w zero, -36(r30)
001984  670d0ffe  storeli.w zero, -48(r30)
001988  674d0ffe  storeli.w zero, -44(r30)
00198c  9f030000  addli r7, zero, 0
001990  7d900000  xwait r1, 0
001994  9f100000  addli r1, zero, 1
001998  e74e1ffe  storeli.w r1, -20(r30)
00199c  9f002000  addli r1, zero, 16
0019a0  7d900000  xwait r1, 0
0019a4  5bb2fdff  j -4720
0019a8  e74e0ffe  storeli.w zero, -20(r30)
0019ac  e70d0ffe  storeli.w zero, -40(r30)
0019b0  e74d0ffe  storeli.w zero, -36(r30)
0019b4  670d0ffe  storeli.w zero, -48(r30)
0019b8  9f030000  addli r7, zero, 0
0019bc  674d0ffe  storeli.w zero, -44(r30)
0019c0  dbaefdff  j -4748
0019c4  7d000000  xsignal zero, 0
0019c8  bb600400  bneq r8, zero, 56
0019cc  9f200000  addli r1, zero, 2
0019d0  7d100000  xwait zero, 0
0019d4  7d100000  xwait zero, 0
0019d8  7d100000  xwait zero, 0
0019dc  7d100000  xwait zero, 0
0019e0  7d100000  xwait zero, 0
0019e4  7d100000  xwait zero, 0
0019e8  7d100000  xwait zero, 0
0019ec  7d100000  xwait zero, 0
0019f0  1d800000  lock zero, r1
0019f4  0d000020  ew_cfg zero, zero, zero, 16
0019f8  1d900000  unlock r1
0019fc  7d400000  xsignal_mode_cfg zero
001a00  9f8ebe00  addli sp, sp, 88
001a04  00a00300  mfence { lm, sm, gm }
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
001b84  00100000  exit
001b88  00100000  exit
001b8c  00100000  exit
001b90  00100000  exit
001b94  00100000  exit
001b98  00100000  exit
001b9c  00100000  exit
001ba0  00100000  exit
001ba4  00100000  exit
001ba8  00100000  exit
001bac  00100000  exit
001bb0  00100000  exit
001bb4  00100000  exit
001bb8  00100000  exit
001bbc  00100000  exit
001bc0  00100000  exit
001bc4  00100000  exit
001bc8  00100000  exit
001bcc  00100000  exit
001bd0  00100000  exit
001bd4  00100000  exit
001bd8  00100000  exit
001bdc  00100000  exit
001be0  00100000  exit
001be4  00100000  exit
001be8  00100000  exit
001bec  00100000  exit
001bf0  00100000  exit
001bf4  00100000  exit
001bf8  00100000  exit
001bfc  00100000  exit
001c00  00100000  exit
001c04  00100000  exit
001c08  00100000  exit
001c0c  00100000  exit
001c10  00100000  exit
001c14  00100000  exit
001c18  00100000  exit
001c1c  00100000  exit
001c20  00100000  exit
001c24  00100000  exit
001c28  00100000  exit
001c2c  00100000  exit
001c30  00100000  exit
001c34  00100000  exit
001c38  00100000  exit
001c3c  00100000  exit
001c40  00100000  exit
001c44  00100000  exit
001c48  00100000  exit
