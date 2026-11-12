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
0000c4  e34a4f00  loadli.w r21,  36(r30)
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
000170  4b251204  ble.s r4, r1, 2376
000174  33120228  sext_int2long r[5:6], r4
000178  33930028  sext_int2long r[7:8], r1
00017c  1f740000  addli r8, zero, 7
000180  9f440000  addli r9, zero, 4
000184  1f150000  addli r10, zero, 1
000188  1f6e1000  addli r28, zero, 14
00018c  9f560000  addli r13, zero, 5
000190  1f270000  addli r14, zero, 2
000194  1f6a0000  addli r20, zero, 6
000198  1f1d1000  addli r26, zero, 9
00019c  9f0d8000  addli r27, zero, 64
0001a0  9f010001  addli r3, zero, 128
0001a4  2b0b0100  lui r22, 16
0001a8  733c4ffe  store.d r[5:6], -8(r30)
0001ac  5b9e0000  j 1264
0001b0  9f601000  addli r1, zero, 14
0001b4  1f611000  addli r2, zero, 14
0001b8  9f070001  addli r15, zero, 128
0001bc  eb510f00  load.d r[4:5], 0(r30)
0001c0  9f091000  addli r19, zero, 8
0001c4  9f351000  addli r11, zero, 11
0001c8  9f4c1000  addli r25, zero, 12
0001cc  1f5d1000  addli r26, zero, 13
0001d0  1f092000  addli r18, zero, 16
0001d4  9f122000  addli r5, zero, 17
0001d8  1f5e2000  addli r28, zero, 21
0001dc  1f163000  addli r12, zero, 25
0001e0  9f5a3000  addli r21, zero, 29
0001e4  17381802  sll.d r[17:18], r[17:18], r1
0001e8  9f300000  addli r1, zero, 3
0001ec  7d900000  xwait r1, 0
0001f0  1d800600  lock zero, r13
0001f4  0ba80111  add.ul r[17:18], r[4:5], r[17:18]
0001f8  1f320000  addli r4, zero, 3
0001fc  9f611000  addli r3, zero, 14
000200  15000014  dma_cfg zero, zero, zero, 10
000204  1500a014  dma_cfg zero, zero, r10, 10
000208  1500e014  dma_cfg zero, zero, r14, 10
00020c  15001014  dma_cfg zero, zero, r1, 10
000210  9f001000  addli r1, zero, 8
000214  15009014  dma_cfg zero, zero, r9, 10
000218  1500d014  dma_cfg zero, zero, r13, 10
00021c  15004015  dma_cfg zero, zero, r20, 10
000220  1f2a1000  addli r20, zero, 10
000224  15008014  dma_cfg zero, zero, r8, 10
000228  15001014  dma_cfg zero, zero, r1, 10
00022c  9f101000  addli r1, zero, 9
000230  15001014  dma_cfg zero, zero, r1, 10
000234  9f201000  addli r1, zero, 10
000238  15001014  dma_cfg zero, zero, r1, 10
00023c  9f301000  addli r1, zero, 11
000240  15001014  dma_cfg zero, zero, r1, 10
000244  9f401000  addli r1, zero, 12
000248  15001014  dma_cfg zero, zero, r1, 10
00024c  9f501000  addli r1, zero, 13
000250  15001014  dma_cfg zero, zero, r1, 10
000254  9f701000  addli r1, zero, 15
000258  15002014  dma_cfg zero, zero, r2, 10
00025c  1f711000  addli r2, zero, 15
000260  15001014  dma_cfg zero, zero, r1, 10
000264  9f002000  addli r1, zero, 16
000268  15001014  dma_cfg zero, zero, r1, 10
00026c  9f102000  addli r1, zero, 17
000270  15001014  dma_cfg zero, zero, r1, 10
000274  9f202000  addli r1, zero, 18
000278  15001014  dma_cfg zero, zero, r1, 10
00027c  9f302000  addli r1, zero, 19
000280  15001014  dma_cfg zero, zero, r1, 10
000284  9f402000  addli r1, zero, 20
000288  15001014  dma_cfg zero, zero, r1, 10
00028c  9f502000  addli r1, zero, 21
000290  15001014  dma_cfg zero, zero, r1, 10
000294  9f602000  addli r1, zero, 22
000298  15001014  dma_cfg zero, zero, r1, 10
00029c  9f702000  addli r1, zero, 23
0002a0  15001014  dma_cfg zero, zero, r1, 10
0002a4  9f003000  addli r1, zero, 24
0002a8  15001014  dma_cfg zero, zero, r1, 10
0002ac  9f103000  addli r1, zero, 25
0002b0  15001014  dma_cfg zero, zero, r1, 10
0002b4  9f203000  addli r1, zero, 26
0002b8  15001014  dma_cfg zero, zero, r1, 10
0002bc  9f303000  addli r1, zero, 27
0002c0  15001014  dma_cfg zero, zero, r1, 10
0002c4  9f403000  addli r1, zero, 28
0002c8  15001014  dma_cfg zero, zero, r1, 10
0002cc  9f503000  addli r1, zero, 29
0002d0  15001014  dma_cfg zero, zero, r1, 10
0002d4  9f603000  addli r1, zero, 30
0002d8  15001014  dma_cfg zero, zero, r1, 10
0002dc  9f703000  addli r1, zero, 31
0002e0  15001014  dma_cfg zero, zero, r1, 10
0002e4  9f000002  addli r1, zero, 256
0002e8  15050500  dma_cfg r10, r10, zero, 0
0002ec  15050002  dma_cfg r10, zero, zero, 1
0002f0  15000004  dma_cfg zero, zero, zero, 2
0002f4  1500b007  dma_cfg zero, zero, r27, 3
0002f8  9507e008  dma_cfg r15, zero, r14, 4
0002fc  9500f00a  dma_cfg r1, zero, r15, 5
000300  9f000002  addli r1, zero, 256
000304  15000010  dma_cfg zero, zero, zero, 8
000308  35000000  dma_run zero
00030c  1500a00a  dma_cfg zero, zero, r10, 5
000310  15000010  dma_cfg zero, zero, zero, 8
000314  1d900600  unlock r13
000318  1d800400  lock zero, r9
00031c  15050500  dma_cfg r10, r10, zero, 0
000320  15800804  dma_cfg zero, r17, zero, 2
000324  950db807  dma_cfg r27, r16, r27, 3
000328  1f080002  addli r16, zero, 256
00032c  9587ed08  dma_cfg r15, r27, r14, 4
000330  9580f70a  dma_cfg r1, r15, r15, 5
000334  9f101000  addli r1, zero, 9
000338  15000010  dma_cfg zero, zero, zero, 8
00033c  35000000  dma_run zero
000340  1500a00a  dma_cfg zero, zero, r10, 5
000344  15000010  dma_cfg zero, zero, zero, 8
000348  1d900400  unlock r9
00034c  1d800600  lock zero, r13
000350  15000014  dma_cfg zero, zero, zero, 10
000354  1500a014  dma_cfg zero, zero, r10, 10
000358  1500e014  dma_cfg zero, zero, r14, 10
00035c  15004014  dma_cfg zero, zero, r4, 10
000360  1f620000  addli r4, zero, 6
000364  15009014  dma_cfg zero, zero, r9, 10
000368  1500d014  dma_cfg zero, zero, r13, 10
00036c  15004014  dma_cfg zero, zero, r4, 10
000370  15008014  dma_cfg zero, zero, r8, 10
000374  15003015  dma_cfg zero, zero, r19, 10
000378  9f492000  addli r19, zero, 20
00037c  15001014  dma_cfg zero, zero, r1, 10
000380  9f302000  addli r1, zero, 19
000384  15004015  dma_cfg zero, zero, r20, 10
000388  1f4a3000  addli r20, zero, 28
00038c  1500b014  dma_cfg zero, zero, r11, 10
000390  9f053000  addli r11, zero, 24
000394  15009015  dma_cfg zero, zero, r25, 10
000398  9f7c3000  addli r25, zero, 31
00039c  1500a015  dma_cfg zero, zero, r26, 10
0003a0  1f2d2000  addli r26, zero, 18
0003a4  15003014  dma_cfg zero, zero, r3, 10
0003a8  9f712000  addli r3, zero, 23
0003ac  15002014  dma_cfg zero, zero, r2, 10
0003b0  1f612000  addli r2, zero, 22
0003b4  15002015  dma_cfg zero, zero, r18, 10
0003b8  1f393000  addli r18, zero, 27
0003bc  15005014  dma_cfg zero, zero, r5, 10
0003c0  6b520f01  load.d r[5:6], 16(r30)
0003c4  1500a015  dma_cfg zero, zero, r26, 10
0003c8  15001014  dma_cfg zero, zero, r1, 10
0003cc  15003015  dma_cfg zero, zero, r19, 10
0003d0  1500c015  dma_cfg zero, zero, r28, 10
0003d4  15002014  dma_cfg zero, zero, r2, 10
0003d8  15003014  dma_cfg zero, zero, r3, 10
0003dc  1500b014  dma_cfg zero, zero, r11, 10
0003e0  1500c014  dma_cfg zero, zero, r12, 10
0003e4  1f263000  addli r12, zero, 26
0003e8  1500c014  dma_cfg zero, zero, r12, 10
0003ec  15002015  dma_cfg zero, zero, r18, 10
0003f0  15004015  dma_cfg zero, zero, r20, 10
0003f4  15005015  dma_cfg zero, zero, r21, 10
0003f8  9f6a3000  addli r21, zero, 30
0003fc  15005015  dma_cfg zero, zero, r21, 10
000400  15009015  dma_cfg zero, zero, r25, 10
000404  15050500  dma_cfg r10, r10, zero, 0
000408  15050002  dma_cfg r10, zero, zero, 1
00040c  15000004  dma_cfg zero, zero, zero, 2
000410  1500b007  dma_cfg zero, zero, r27, 3
000414  9507e008  dma_cfg r15, zero, r14, 4
000418  1508f00a  dma_cfg r16, zero, r15, 5
00041c  17b8ab02  sll.d r[17:18], r[24:25], r10
000420  1f3c1000  addli r24, zero, 11
000424  9f0b1000  addli r23, zero, 8
000428  15000010  dma_cfg zero, zero, zero, 8
00042c  35000000  dma_run zero
000430  1500a00a  dma_cfg zero, zero, r10, 5
000434  15000010  dma_cfg zero, zero, zero, 8
000438  0b280211  add.ul r[17:18], r[5:6], r[17:18]
00043c  1f320000  addli r4, zero, 3
000440  1d900600  unlock r13
000444  7d000700  xsignal r14, 0
000448  7d100c00  xwait r24, 0
00044c  1d800600  lock zero, r13
000450  15000014  dma_cfg zero, zero, zero, 10
000454  1500a014  dma_cfg zero, zero, r10, 10
000458  1500e014  dma_cfg zero, zero, r14, 10
00045c  15004014  dma_cfg zero, zero, r4, 10
000460  1f620000  addli r4, zero, 6
000464  15009014  dma_cfg zero, zero, r9, 10
000468  1500d014  dma_cfg zero, zero, r13, 10
00046c  15004014  dma_cfg zero, zero, r4, 10
000470  6b528fff  load.d r[5:6], -8(r30)
000474  15008014  dma_cfg zero, zero, r8, 10
000478  15007015  dma_cfg zero, zero, r23, 10
00047c  9f1b1000  addli r23, zero, 9
000480  15007015  dma_cfg zero, zero, r23, 10
000484  9f2b1000  addli r23, zero, 10
000488  15007015  dma_cfg zero, zero, r23, 10
00048c  9f4b1000  addli r23, zero, 12
000490  15008015  dma_cfg zero, zero, r24, 10
000494  1f1c2000  addli r24, zero, 17
000498  15007015  dma_cfg zero, zero, r23, 10
00049c  9f5b1000  addli r23, zero, 13
0004a0  15007015  dma_cfg zero, zero, r23, 10
0004a4  9f6b1000  addli r23, zero, 14
0004a8  15007015  dma_cfg zero, zero, r23, 10
0004ac  9f7b1000  addli r23, zero, 15
0004b0  15007015  dma_cfg zero, zero, r23, 10
0004b4  9f0b2000  addli r23, zero, 16
0004b8  15007015  dma_cfg zero, zero, r23, 10
0004bc  9b1b0b04  ori r23, r22, 64
0004c0  15008015  dma_cfg zero, zero, r24, 10
0004c4  1500a015  dma_cfg zero, zero, r26, 10
0004c8  1f1d1000  addli r26, zero, 9
0004cc  15001014  dma_cfg zero, zero, r1, 10
0004d0  9f103000  addli r1, zero, 25
0004d4  15003015  dma_cfg zero, zero, r19, 10
0004d8  9f592000  addli r19, zero, 21
0004dc  1500c015  dma_cfg zero, zero, r28, 10
0004e0  1f6e1000  addli r28, zero, 14
0004e4  15002014  dma_cfg zero, zero, r2, 10
0004e8  00310002  core_id r2
0004ec  15003014  dma_cfg zero, zero, r3, 10
0004f0  9f013000  addli r3, zero, 24
0004f4  1500b014  dma_cfg zero, zero, r11, 10
0004f8  9f050004  addli r11, zero, 512
0004fc  15001014  dma_cfg zero, zero, r1, 10
000500  9f503000  addli r1, zero, 29
000504  1500c014  dma_cfg zero, zero, r12, 10
000508  1f263000  addli r12, zero, 26
00050c  15002015  dma_cfg zero, zero, r18, 10
000510  1f493000  addli r18, zero, 28
000514  15004015  dma_cfg zero, zero, r20, 10
000518  1f6a3000  addli r20, zero, 30
00051c  15001014  dma_cfg zero, zero, r1, 10
000520  9f000002  addli r1, zero, 256
000524  15005015  dma_cfg zero, zero, r21, 10
000528  e34a4f00  loadli.w r21,  36(r30)
00052c  15009015  dma_cfg zero, zero, r25, 10
000530  9f7c3000  addli r25, zero, 31
000534  15050500  dma_cfg r10, r10, zero, 0
000538  15050002  dma_cfg r10, zero, zero, 1
00053c  15000004  dma_cfg zero, zero, zero, 2
000540  150bb007  dma_cfg r22, zero, r27, 3
000544  95079008  dma_cfg r15, zero, r9, 4
000548  9505a00a  dma_cfg r11, zero, r10, 5
00054c  15000010  dma_cfg zero, zero, zero, 8
000550  35000000  dma_run zero
000554  1500a00a  dma_cfg zero, zero, r10, 5
000558  15000010  dma_cfg zero, zero, zero, 8
00055c  1d900600  unlock r13
000560  1d800400  lock zero, r9
000564  15050500  dma_cfg r10, r10, zero, 0
000568  15800804  dma_cfg zero, r17, zero, 2
00056c  950bb807  dma_cfg r23, r16, r27, 3
000570  1f381000  addli r16, zero, 11
000574  95879d08  dma_cfg r15, r27, r9, 4
000578  9585a00a  dma_cfg r11, r1, r10, 5
00057c  9f300000  addli r1, zero, 3
000580  15000010  dma_cfg zero, zero, zero, 8
000584  35000000  dma_run zero
000588  1500a00a  dma_cfg zero, zero, r10, 5
00058c  15000010  dma_cfg zero, zero, zero, 8
000590  1d900400  unlock r9
000594  1d800600  lock zero, r13
000598  15000014  dma_cfg zero, zero, zero, 10
00059c  1500a014  dma_cfg zero, zero, r10, 10
0005a0  1500e014  dma_cfg zero, zero, r14, 10
0005a4  15001014  dma_cfg zero, zero, r1, 10
0005a8  9f600000  addli r1, zero, 6
0005ac  15009014  dma_cfg zero, zero, r9, 10
0005b0  1500d014  dma_cfg zero, zero, r13, 10
0005b4  15001014  dma_cfg zero, zero, r1, 10
0005b8  9f001000  addli r1, zero, 8
0005bc  15008014  dma_cfg zero, zero, r8, 10
0005c0  15001014  dma_cfg zero, zero, r1, 10
0005c4  9f201000  addli r1, zero, 10
0005c8  1500a015  dma_cfg zero, zero, r26, 10
0005cc  15001014  dma_cfg zero, zero, r1, 10
0005d0  15000015  dma_cfg zero, zero, r16, 10
0005d4  1f481000  addli r16, zero, 12
0005d8  15000015  dma_cfg zero, zero, r16, 10
0005dc  1f581000  addli r16, zero, 13
0005e0  15000015  dma_cfg zero, zero, r16, 10
0005e4  1f681000  addli r16, zero, 14
0005e8  15000015  dma_cfg zero, zero, r16, 10
0005ec  1f781000  addli r16, zero, 15
0005f0  15000015  dma_cfg zero, zero, r16, 10
0005f4  1f082000  addli r16, zero, 16
0005f8  15000015  dma_cfg zero, zero, r16, 10
0005fc  1f282000  addli r16, zero, 18
000600  15008015  dma_cfg zero, zero, r24, 10
000604  15000015  dma_cfg zero, zero, r16, 10
000608  1f382000  addli r16, zero, 19
00060c  15000015  dma_cfg zero, zero, r16, 10
000610  1f482000  addli r16, zero, 20
000614  15000015  dma_cfg zero, zero, r16, 10
000618  1f682000  addli r16, zero, 22
00061c  15003015  dma_cfg zero, zero, r19, 10
000620  15000015  dma_cfg zero, zero, r16, 10
000624  1f782000  addli r16, zero, 23
000628  15000015  dma_cfg zero, zero, r16, 10
00062c  15003014  dma_cfg zero, zero, r3, 10
000630  9f113000  addli r3, zero, 25
000634  15003014  dma_cfg zero, zero, r3, 10
000638  9f313000  addli r3, zero, 27
00063c  1500c014  dma_cfg zero, zero, r12, 10
000640  15003014  dma_cfg zero, zero, r3, 10
000644  9f513000  addli r3, zero, 29
000648  15002015  dma_cfg zero, zero, r18, 10
00064c  15003014  dma_cfg zero, zero, r3, 10
000650  9f010001  addli r3, zero, 128
000654  15004015  dma_cfg zero, zero, r20, 10
000658  1f6a0000  addli r20, zero, 6
00065c  15009015  dma_cfg zero, zero, r25, 10
000660  15050500  dma_cfg r10, r10, zero, 0
000664  15050002  dma_cfg r10, zero, zero, 1
000668  15000004  dma_cfg zero, zero, zero, 2
00066c  150bb007  dma_cfg r22, zero, r27, 3
000670  95079008  dma_cfg r15, zero, r9, 4
000674  9505a00a  dma_cfg r11, zero, r10, 5
000678  15000010  dma_cfg zero, zero, zero, 8
00067c  35000000  dma_run zero
000680  1500a00a  dma_cfg zero, zero, r10, 5
000684  15000010  dma_cfg zero, zero, zero, 8
000688  1d900600  unlock r13
00068c  7d800000  xsignal r1, 0
000690  27130300  addli.d r[7:8], r[7:8], 1
000694  13384304  setlt.sl r16, r[7:8], r[5:6]
000698  b7000802  beq r16, zero, 1056
00069c  63085f00  loadli.w r16,  40(r30)
0006a0  9b1c0b20  ori r25, r22, 512
0006a4  0b180331  div.s r16, r6, r16
0006a8  8b185839  mod.s r17, r16, r21
0006ac  0b185831  div.s r16, r16, r21
0006b0  b39b0828  sext_int2long r[24:25], r17
0006b4  33180828  sext_int2long r[17:18], r16
0006b8  97bb8b02  sll.d r[24:25], r[24:25], r8
0006bc  bfa12400  blt.s r9, r2, 104
0006c0  b74ba1fc  beq r2, r10, -1296
0006c4  3745e100  beq r2, r14, 336
0006c8  bb639100  bneq r2, r9, 248
0006cc  9f001000  addli r1, zero, 8
0006d0  7d900400  xwait r9, 0
0006d4  1b180b30  ori r16, r22, 768
0006d8  9f010001  addli r3, zero, 128
0006dc  7d900000  xwait r1, 0
0006e0  9f000001  addli r1, zero, 128
0006e4  7d100e00  xwait r28, 0
0006e8  1d000500  lock zero, r10
0006ec  898d1d00  mm_cfg r27, r27, r1, 0
0006f0  8984a404  mm_cfg r9, r9, r10, 2
0006f4  a90c0010  mm r25, zero, zero, 8
0006f8  1d100500  unlock r10
0006fc  1d000500  lock zero, r10
000700  898d1d00  mm_cfg r27, r27, r1, 0
000704  ab400000  lui r1, 4
000708  8984a404  mm_cfg r9, r9, r10, 2
00070c  29081010  mm r16, zero, r1, 8
000710  9f401000  addli r1, zero, 12
000714  1d100500  unlock r10
000718  7d800600  xsignal r13, 0
00071c  7d000d00  xsignal r26, 0
000720  dbedffff  j -148
000724  3721d100  beq r2, r13, 72
000728  b7044101  beq r2, r20, 288
00072c  3b528100  bneq r2, r8, 148
000730  7d100a00  xwait r20, 0
000734  7d100d00  xwait r26, 0
000738  1d000000  lock zero, zero
00073c  9f000001  addli r1, zero, 128
000740  9f010001  addli r3, zero, 128
000744  01070000  ds_cfg r14, zero, 0
000748  81000002  ds_cfg r1, zero, 1
00074c  810d001c  ds_cfg r27, zero, 14
000750  8100001a  ds_cfg r1, zero, 13
000754  ab800000  lui r1, 8
000758  4180b005  shuffle_coa zero, r1, r27, 2
00075c  9f001000  addli r1, zero, 8
000760  1d100000  unlock zero
000764  7d000400  xsignal r8, 0
000768  dbe4ffff  j -220
00076c  9f251000  addli r11, zero, 10
000770  9f401000  addli r1, zero, 12
000774  1f080000  addli r16, zero, 0
000778  7d900500  xwait r11, 0
00077c  7d900000  xwait r1, 0
000780  1d000700  lock zero, r14
000784  ab00803f  lui r1, 260096
000788  0d000002  ew_cfg zero, zero, zero, 1
00078c  8d900000  ewcoeff_cfg r1, r1, zero, 0
000790  9f70f000  addli r1, zero, 127
000794  0d800004  ew_cfg zero, r1, zero, 2
000798  0d050006  ew_cfg r10, zero, zero, 3
00079c  8b189811  add.s r17, r16, r25
0007a0  1f080804  addli r16, r16, 512
0007a4  ad886801  dsmadd r17, r17, r22, 0
0007a8  bb5f68ff  bneq r16, r22, -12
0007ac  9f351000  addli r11, zero, 11
0007b0  9f501000  addli r1, zero, 13
0007b4  1d100700  unlock r14
0007b8  7d800500  xsignal r11, 0
0007bc  5bdaffff  j -304
0007c0  3b4b01fe  bneq r2, zero, -304
0007c4  9f302000  addli r1, zero, 19
0007c8  eb558f01  load.d r[12:13], 24(r30)
0007cc  97bbeb02  sll.d r[24:25], r[24:25], r14
0007d0  17381802  sll.d r[17:18], r[17:18], r1
0007d4  9f501000  addli r1, zero, 13
0007d8  0ba80511  add.ul r[17:18], r[12:13], r[17:18]
0007dc  7d900000  xwait r1, 0
0007e0  1d800600  lock zero, r13
0007e4  9f000004  addli r1, zero, 512
0007e8  9f050020  addli r11, zero, 4096
0007ec  15000000  dma_cfg zero, zero, zero, 0
0007f0  0b287811  add.ul r[17:18], r[17:18], r[24:25]
0007f4  15000502  dma_cfg zero, r10, zero, 1
0007f8  95080004  dma_cfg r17, zero, zero, 2
0007fc  15881c06  dma_cfg r16, r25, r1, 3
000800  95853008  dma_cfg r11, r1, r3, 4
000804  35000000  dma_run zero
000808  1d900600  unlock r13
00080c  7d000e00  xsignal r28, 0
000810  5bd0ffff  j -384
000814  7d100700  xwait r14, 0
000818  7d900600  xwait r13, 0
00081c  1d000000  lock zero, zero
000820  9f300000  addli r1, zero, 3
000824  01070000  ds_cfg r14, zero, 0
000828  810d0002  ds_cfg r27, zero, 1
00082c  810d001c  ds_cfg r27, zero, 14
000830  8101001a  ds_cfg r3, zero, 13
000834  2110b003  shuffle_batch zero, zero, r27, 1
000838  1d100000  unlock zero
00083c  7d800000  xsignal r1, 0
000840  7d800400  xsignal r9, 0
000844  dbc9ffff  j -436
000848  7d100400  xwait r8, 0
00084c  1d800600  lock zero, r13
000850  9f320000  addli r5, zero, 3
000854  9f091000  addli r19, zero, 8
000858  9f371000  addli r15, zero, 11
00085c  9f451000  addli r11, zero, 12
000860  9f5c1000  addli r25, zero, 13
000864  eb518f00  load.d r[4:5], 8(r30)
000868  9f601000  addli r1, zero, 14
00086c  17b8ab02  sll.d r[17:18], r[24:25], r10
000870  1f7c1000  addli r24, zero, 15
000874  9f0a2000  addli r21, zero, 16
000878  2b890000  lui r18, 8
00087c  1f060004  addli r12, zero, 512
000880  1f6e1000  addli r28, zero, 14
000884  15000014  dma_cfg zero, zero, zero, 10
000888  1500a014  dma_cfg zero, zero, r10, 10
00088c  9b1b0904  ori r23, r18, 64
000890  1500e014  dma_cfg zero, zero, r14, 10
000894  0ba80111  add.ul r[17:18], r[4:5], r[17:18]
000898  1f122000  addli r4, zero, 17
00089c  9f512000  addli r3, zero, 21
0008a0  1f672000  addli r14, zero, 22
0008a4  15005014  dma_cfg zero, zero, r5, 10
0008a8  15009014  dma_cfg zero, zero, r9, 10
0008ac  1500d014  dma_cfg zero, zero, r13, 10
0008b0  15004015  dma_cfg zero, zero, r20, 10
0008b4  1f2a1000  addli r20, zero, 10
0008b8  15008014  dma_cfg zero, zero, r8, 10
0008bc  1f442000  addli r8, zero, 20
0008c0  15003015  dma_cfg zero, zero, r19, 10
0008c4  1500a015  dma_cfg zero, zero, r26, 10
0008c8  15004015  dma_cfg zero, zero, r20, 10
0008cc  1500f014  dma_cfg zero, zero, r15, 10
0008d0  1500b014  dma_cfg zero, zero, r11, 10
0008d4  15009015  dma_cfg zero, zero, r25, 10
0008d8  15001014  dma_cfg zero, zero, r1, 10
0008dc  9f202000  addli r1, zero, 18
0008e0  15008015  dma_cfg zero, zero, r24, 10
0008e4  15005015  dma_cfg zero, zero, r21, 10
0008e8  15004014  dma_cfg zero, zero, r4, 10
0008ec  15001014  dma_cfg zero, zero, r1, 10
0008f0  9f302000  addli r1, zero, 19
0008f4  15001014  dma_cfg zero, zero, r1, 10
0008f8  9f702000  addli r1, zero, 23
0008fc  15008014  dma_cfg zero, zero, r8, 10
000900  15003014  dma_cfg zero, zero, r3, 10
000904  1500e014  dma_cfg zero, zero, r14, 10
000908  15001014  dma_cfg zero, zero, r1, 10
00090c  9f003000  addli r1, zero, 24
000910  15001014  dma_cfg zero, zero, r1, 10
000914  9f103000  addli r1, zero, 25
000918  15001014  dma_cfg zero, zero, r1, 10
00091c  9f203000  addli r1, zero, 26
000920  15001014  dma_cfg zero, zero, r1, 10
000924  9f303000  addli r1, zero, 27
000928  15001014  dma_cfg zero, zero, r1, 10
00092c  9f403000  addli r1, zero, 28
000930  15001014  dma_cfg zero, zero, r1, 10
000934  9f503000  addli r1, zero, 29
000938  15001014  dma_cfg zero, zero, r1, 10
00093c  9f603000  addli r1, zero, 30
000940  15001014  dma_cfg zero, zero, r1, 10
000944  9f703000  addli r1, zero, 31
000948  15001014  dma_cfg zero, zero, r1, 10
00094c  9f000001  addli r1, zero, 128
000950  15050500  dma_cfg r10, r10, zero, 0
000954  15050002  dma_cfg r10, zero, zero, 1
000958  15000004  dma_cfg zero, zero, zero, 2
00095c  1509b007  dma_cfg r18, zero, r27, 3
000960  95009008  dma_cfg r1, zero, r9, 4
000964  1506b00b  dma_cfg r12, zero, r27, 5
000968  15000010  dma_cfg zero, zero, zero, 8
00096c  35000000  dma_run zero
000970  1500a00a  dma_cfg zero, zero, r10, 5
000974  15000010  dma_cfg zero, zero, zero, 8
000978  1d900600  unlock r13
00097c  1d800400  lock zero, r9
000980  15050500  dma_cfg r10, r10, zero, 0
000984  15800804  dma_cfg zero, r17, zero, 2
000988  950bb807  dma_cfg r23, r16, r27, 3
00098c  1f080010  addli r16, zero, 2048
000990  95809d08  dma_cfg r1, r27, r9, 4
000994  1506b80b  dma_cfg r12, r16, r27, 5
000998  1f280000  addli r16, zero, 2
00099c  15000010  dma_cfg zero, zero, zero, 8
0009a0  35000000  dma_run zero
0009a4  1500a00a  dma_cfg zero, zero, r10, 5
0009a8  15000010  dma_cfg zero, zero, zero, 8
0009ac  1d900400  unlock r9
0009b0  1d800600  lock zero, r13
0009b4  15000014  dma_cfg zero, zero, zero, 10
0009b8  1500a014  dma_cfg zero, zero, r10, 10
0009bc  15000015  dma_cfg zero, zero, r16, 10
0009c0  1f680000  addli r16, zero, 6
0009c4  15005014  dma_cfg zero, zero, r5, 10
0009c8  9f720000  addli r5, zero, 7
0009cc  15009014  dma_cfg zero, zero, r9, 10
0009d0  1500d014  dma_cfg zero, zero, r13, 10
0009d4  15000015  dma_cfg zero, zero, r16, 10
0009d8  15005014  dma_cfg zero, zero, r5, 10
0009dc  9f621000  addli r5, zero, 14
0009e0  15003015  dma_cfg zero, zero, r19, 10
0009e4  1500a015  dma_cfg zero, zero, r26, 10
0009e8  15004015  dma_cfg zero, zero, r20, 10
0009ec  1f6a0000  addli r20, zero, 6
0009f0  1500f014  dma_cfg zero, zero, r15, 10
0009f4  1500b014  dma_cfg zero, zero, r11, 10
0009f8  9f252000  addli r11, zero, 18
0009fc  15009015  dma_cfg zero, zero, r25, 10
000a00  15005014  dma_cfg zero, zero, r5, 10
000a04  15008015  dma_cfg zero, zero, r24, 10
000a08  15005015  dma_cfg zero, zero, r21, 10
000a0c  e34a4f00  loadli.w r21,  36(r30)
000a10  15004014  dma_cfg zero, zero, r4, 10
000a14  6b528fff  load.d r[5:6], -8(r30)
000a18  1500b014  dma_cfg zero, zero, r11, 10
000a1c  9f352000  addli r11, zero, 19
000a20  1500b014  dma_cfg zero, zero, r11, 10
000a24  15008014  dma_cfg zero, zero, r8, 10
000a28  1f740000  addli r8, zero, 7
000a2c  15003014  dma_cfg zero, zero, r3, 10
000a30  9f712000  addli r3, zero, 23
000a34  1500e014  dma_cfg zero, zero, r14, 10
000a38  1f270000  addli r14, zero, 2
000a3c  15003014  dma_cfg zero, zero, r3, 10
000a40  9f013000  addli r3, zero, 24
000a44  15003014  dma_cfg zero, zero, r3, 10
000a48  9f113000  addli r3, zero, 25
000a4c  15003014  dma_cfg zero, zero, r3, 10
000a50  9f213000  addli r3, zero, 26
000a54  15003014  dma_cfg zero, zero, r3, 10
000a58  9f313000  addli r3, zero, 27
000a5c  15003014  dma_cfg zero, zero, r3, 10
000a60  9f413000  addli r3, zero, 28
000a64  15003014  dma_cfg zero, zero, r3, 10
000a68  9f513000  addli r3, zero, 29
000a6c  15003014  dma_cfg zero, zero, r3, 10
000a70  9f613000  addli r3, zero, 30
000a74  15003014  dma_cfg zero, zero, r3, 10
000a78  9f713000  addli r3, zero, 31
000a7c  15003014  dma_cfg zero, zero, r3, 10
000a80  9f010001  addli r3, zero, 128
000a84  15050500  dma_cfg r10, r10, zero, 0
000a88  15050002  dma_cfg r10, zero, zero, 1
000a8c  15000004  dma_cfg zero, zero, zero, 2
000a90  1509b007  dma_cfg r18, zero, r27, 3
000a94  95009008  dma_cfg r1, zero, r9, 4
000a98  1506b00b  dma_cfg r12, zero, r27, 5
000a9c  15000010  dma_cfg zero, zero, zero, 8
000aa0  35000000  dma_run zero
000aa4  1500a00a  dma_cfg zero, zero, r10, 5
000aa8  15000010  dma_cfg zero, zero, zero, 8
000aac  1d900600  unlock r13
000ab0  7d000a00  xsignal r20, 0
000ab4  db7bffff  j -1060
000ab8  7d000000  xsignal zero, 0
000abc  bb600100  bneq r2, zero, 56
000ac0  9f200000  addli r1, zero, 2
000ac4  7d100000  xwait zero, 0
000ac8  7d100000  xwait zero, 0
000acc  7d100000  xwait zero, 0
000ad0  7d100000  xwait zero, 0
000ad4  7d100000  xwait zero, 0
000ad8  7d100000  xwait zero, 0
000adc  7d100000  xwait zero, 0
000ae0  7d100000  xwait zero, 0
000ae4  1d800000  lock zero, r1
000ae8  0d000020  ew_cfg zero, zero, zero, 16
000aec  1d900000  unlock r1
000af0  7d400000  xsignal_mode_cfg zero
000af4  9f8e1e00  addli sp, sp, 8
000af8  00a00300  mfence { lm, sm, gm }
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
000d3c  00100000  exit
