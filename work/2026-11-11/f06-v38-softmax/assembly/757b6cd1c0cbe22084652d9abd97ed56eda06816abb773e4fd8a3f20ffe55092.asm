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
0000b4  9f8e6eff  addli sp, sp, -80
0000b8  1f8f2e00  addli r30, sp, 16
0000bc  9f100000  addli r1, zero, 1
0000c0  803c0002  core_id r25
0000c4  e3414f00  loadli.w r3,  36(r30)
0000c8  7dc00000  xsignal_mode_cfg r1
0000cc  37e00c00  beq r25, zero, 24
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
000170  4b551204  ble.s r4, r1, 2388
000174  ab4d0200  lui r27, 36
000178  33120228  sext_int2long r[5:6], r4
00017c  33930028  sext_int2long r[7:8], r1
000180  1f141000  addli r8, zero, 9
000184  9f440000  addli r9, zero, 4
000188  1f150000  addli r10, zero, 1
00018c  1f560000  addli r12, zero, 5
000190  9f260000  addli r13, zero, 2
000194  9f670000  addli r15, zero, 6
000198  9f451000  addli r11, zero, 12
00019c  9f0b2000  addli r23, zero, 16
0001a0  1f0b8000  addli r22, zero, 64
0001a4  2b4c0000  lui r24, 4
0001a8  2b5e0200  lui r28, 37
0001ac  2b0d0200  lui r26, 32
0001b0  9b900d80  ori r1, r27, 2048
0001b4  733c4ffe  store.d r[5:6], -8(r30)
0001b8  674f1ffe  storeli.w r1, -12(r30)
0001bc  db4f0000  j 636
0001c0  9f750000  addli r11, zero, 7
0001c4  9f390000  addli r19, zero, 3
0001c8  1f0a1000  addli r20, zero, 8
0001cc  eb518f00  load.d r[4:5], 8(r30)
0001d0  1738a802  sll.d r[17:18], r[17:18], r10
0001d4  9f3a1000  addli r21, zero, 11
0001d8  9f401000  addli r1, zero, 12
0001dc  1f172000  addli r14, zero, 17
0001e0  1f010010  addli r2, zero, 2048
0001e4  1b190c04  ori r18, r24, 64
0001e8  9f220000  addli r5, zero, 2
0001ec  7d900500  xwait r11, 0
0001f0  1d000600  lock zero, r12
0001f4  15000014  dma_cfg zero, zero, zero, 10
0001f8  0ba80111  add.ul r[17:18], r[4:5], r[17:18]
0001fc  9f511000  addli r3, zero, 13
000200  1f621000  addli r4, zero, 14
000204  1500a014  dma_cfg zero, zero, r10, 10
000208  1500d014  dma_cfg zero, zero, r13, 10
00020c  9f362000  addli r13, zero, 19
000210  15003015  dma_cfg zero, zero, r19, 10
000214  15009014  dma_cfg zero, zero, r9, 10
000218  1500c014  dma_cfg zero, zero, r12, 10
00021c  1500f014  dma_cfg zero, zero, r15, 10
000220  9f271000  addli r15, zero, 10
000224  1500b014  dma_cfg zero, zero, r11, 10
000228  15004015  dma_cfg zero, zero, r20, 10
00022c  15008014  dma_cfg zero, zero, r8, 10
000230  1f741000  addli r8, zero, 15
000234  1500f014  dma_cfg zero, zero, r15, 10
000238  15005015  dma_cfg zero, zero, r21, 10
00023c  15001014  dma_cfg zero, zero, r1, 10
000240  9f202000  addli r1, zero, 18
000244  15003014  dma_cfg zero, zero, r3, 10
000248  15004014  dma_cfg zero, zero, r4, 10
00024c  15008014  dma_cfg zero, zero, r8, 10
000250  15007015  dma_cfg zero, zero, r23, 10
000254  1500e014  dma_cfg zero, zero, r14, 10
000258  15001014  dma_cfg zero, zero, r1, 10
00025c  9f402000  addli r1, zero, 20
000260  1500d014  dma_cfg zero, zero, r13, 10
000264  15001014  dma_cfg zero, zero, r1, 10
000268  9f502000  addli r1, zero, 21
00026c  15001014  dma_cfg zero, zero, r1, 10
000270  9f602000  addli r1, zero, 22
000274  15001014  dma_cfg zero, zero, r1, 10
000278  9f702000  addli r1, zero, 23
00027c  15001014  dma_cfg zero, zero, r1, 10
000280  9f003000  addli r1, zero, 24
000284  15001014  dma_cfg zero, zero, r1, 10
000288  9f103000  addli r1, zero, 25
00028c  15001014  dma_cfg zero, zero, r1, 10
000290  9f203000  addli r1, zero, 26
000294  15001014  dma_cfg zero, zero, r1, 10
000298  9f303000  addli r1, zero, 27
00029c  15001014  dma_cfg zero, zero, r1, 10
0002a0  9f403000  addli r1, zero, 28
0002a4  15001014  dma_cfg zero, zero, r1, 10
0002a8  9f503000  addli r1, zero, 29
0002ac  15001014  dma_cfg zero, zero, r1, 10
0002b0  9f603000  addli r1, zero, 30
0002b4  15001014  dma_cfg zero, zero, r1, 10
0002b8  9f703000  addli r1, zero, 31
0002bc  15001014  dma_cfg zero, zero, r1, 10
0002c0  9f000001  addli r1, zero, 128
0002c4  15050500  dma_cfg r10, r10, zero, 0
0002c8  15050002  dma_cfg r10, zero, zero, 1
0002cc  15000004  dma_cfg zero, zero, zero, 2
0002d0  150c6007  dma_cfg r24, zero, r22, 3
0002d4  95007009  dma_cfg r1, zero, r23, 4
0002d8  1501600b  dma_cfg r2, zero, r22, 5
0002dc  15000010  dma_cfg zero, zero, zero, 8
0002e0  35000000  dma_run zero
0002e4  1500a00a  dma_cfg zero, zero, r10, 5
0002e8  15000010  dma_cfg zero, zero, zero, 8
0002ec  1d100600  unlock r12
0002f0  1d800400  lock zero, r9
0002f4  15050500  dma_cfg r10, r10, zero, 0
0002f8  15800804  dma_cfg zero, r17, zero, 2
0002fc  15096807  dma_cfg r18, r16, r22, 3
000300  1f080020  addli r16, zero, 4096
000304  95007b09  dma_cfg r1, r22, r23, 4
000308  1501680b  dma_cfg r2, r16, r22, 5
00030c  1f680000  addli r16, zero, 6
000310  15000010  dma_cfg zero, zero, zero, 8
000314  35000000  dma_run zero
000318  1500a00a  dma_cfg zero, zero, r10, 5
00031c  15000010  dma_cfg zero, zero, zero, 8
000320  1d900400  unlock r9
000324  1d000600  lock zero, r12
000328  15000014  dma_cfg zero, zero, zero, 10
00032c  1500a014  dma_cfg zero, zero, r10, 10
000330  15005014  dma_cfg zero, zero, r5, 10
000334  9f121000  addli r5, zero, 9
000338  15003015  dma_cfg zero, zero, r19, 10
00033c  15009014  dma_cfg zero, zero, r9, 10
000340  1500c014  dma_cfg zero, zero, r12, 10
000344  15000015  dma_cfg zero, zero, r16, 10
000348  1500b014  dma_cfg zero, zero, r11, 10
00034c  9f451000  addli r11, zero, 12
000350  15004015  dma_cfg zero, zero, r20, 10
000354  15005014  dma_cfg zero, zero, r5, 10
000358  9f421000  addli r5, zero, 12
00035c  1500f014  dma_cfg zero, zero, r15, 10
000360  9f670000  addli r15, zero, 6
000364  15005015  dma_cfg zero, zero, r21, 10
000368  15005014  dma_cfg zero, zero, r5, 10
00036c  15003014  dma_cfg zero, zero, r3, 10
000370  e3414f00  loadli.w r3,  36(r30)
000374  15004014  dma_cfg zero, zero, r4, 10
000378  6b528fff  load.d r[5:6], -8(r30)
00037c  15008014  dma_cfg zero, zero, r8, 10
000380  1f141000  addli r8, zero, 9
000384  15007015  dma_cfg zero, zero, r23, 10
000388  1500e014  dma_cfg zero, zero, r14, 10
00038c  1f272000  addli r14, zero, 18
000390  1500e014  dma_cfg zero, zero, r14, 10
000394  1f472000  addli r14, zero, 20
000398  1500d014  dma_cfg zero, zero, r13, 10
00039c  9f260000  addli r13, zero, 2
0003a0  1500e014  dma_cfg zero, zero, r14, 10
0003a4  1f572000  addli r14, zero, 21
0003a8  1500e014  dma_cfg zero, zero, r14, 10
0003ac  1f672000  addli r14, zero, 22
0003b0  1500e014  dma_cfg zero, zero, r14, 10
0003b4  1f772000  addli r14, zero, 23
0003b8  1500e014  dma_cfg zero, zero, r14, 10
0003bc  1f073000  addli r14, zero, 24
0003c0  1500e014  dma_cfg zero, zero, r14, 10
0003c4  1f173000  addli r14, zero, 25
0003c8  1500e014  dma_cfg zero, zero, r14, 10
0003cc  1f273000  addli r14, zero, 26
0003d0  1500e014  dma_cfg zero, zero, r14, 10
0003d4  1f373000  addli r14, zero, 27
0003d8  1500e014  dma_cfg zero, zero, r14, 10
0003dc  1f473000  addli r14, zero, 28
0003e0  1500e014  dma_cfg zero, zero, r14, 10
0003e4  1f573000  addli r14, zero, 29
0003e8  1500e014  dma_cfg zero, zero, r14, 10
0003ec  1f673000  addli r14, zero, 30
0003f0  1500e014  dma_cfg zero, zero, r14, 10
0003f4  1f773000  addli r14, zero, 31
0003f8  1500e014  dma_cfg zero, zero, r14, 10
0003fc  15050500  dma_cfg r10, r10, zero, 0
000400  15050002  dma_cfg r10, zero, zero, 1
000404  15000004  dma_cfg zero, zero, zero, 2
000408  150c6007  dma_cfg r24, zero, r22, 3
00040c  95007009  dma_cfg r1, zero, r23, 4
000410  1501600b  dma_cfg r2, zero, r22, 5
000414  15000010  dma_cfg zero, zero, zero, 8
000418  35000000  dma_run zero
00041c  1500a00a  dma_cfg zero, zero, r10, 5
000420  15000010  dma_cfg zero, zero, zero, 8
000424  1d100600  unlock r12
000428  7d800700  xsignal r15, 0
00042c  27130300  addli.d r[7:8], r[7:8], 1
000430  13384304  setlt.sl r16, r[7:8], r[5:6]
000434  374a0802  beq r16, zero, 1680
000438  63085f00  loadli.w r16,  40(r30)
00043c  0b180331  div.s r16, r6, r16
000440  8b183838  mod.s r17, r16, r3
000444  0b183830  div.s r16, r16, r3
000448  339a0828  sext_int2long r[21:22], r17
00044c  33190828  sext_int2long r[19:20], r16
000450  17388a02  sll.d r[17:18], r[21:22], r8
000454  3ff19401  blt.s r9, r25, 92
000458  b7a5acfe  beq r25, r10, -664
00045c  37f5dc00  beq r25, r13, 348
000460  bbe39c00  bneq r25, r9, 248
000464  9f001000  addli r1, zero, 8
000468  1f671000  addli r14, zero, 14
00046c  7d900400  xwait r9, 0
000470  1f080000  addli r16, zero, 0
000474  7d900000  xwait r1, 0
000478  7d100700  xwait r14, 0
00047c  e348efff  loadli.w r17,  -12(r30)
000480  1d000500  lock zero, r10
000484  090b6b01  mm_cfg r22, r22, r22, 0
000488  8984ab04  mm_cfg r9, r23, r10, 2
00048c  a9080011  mm r17, zero, r16, 8
000490  9f880802  addli r17, r17, 256
000494  0b188811  add.s r16, r16, r24
000498  1d100500  unlock r10
00049c  bb9fc8ff  bneq r17, r28, -28
0004a0  7d000600  xsignal r12, 0
0004a4  7d000400  xsignal r8, 0
0004a8  7d800500  xsignal r11, 0
0004ac  5bf0ffff  j -128
0004b0  37b1cc00  beq r25, r12, 76
0004b4  b7e4fc00  beq r25, r15, 312
0004b8  9f700000  addli r1, zero, 7
0004bc  3bf21c00  bneq r25, r1, 156
0004c0  7d900700  xwait r15, 0
0004c4  7d100400  xwait r8, 0
0004c8  1d000000  lock zero, zero
0004cc  9f000004  addli r1, zero, 512
0004d0  81060000  ds_cfg r13, zero, 0
0004d4  81000002  ds_cfg r1, zero, 1
0004d8  010b001c  ds_cfg r22, zero, 14
0004dc  8100001a  ds_cfg r1, zero, 13
0004e0  9f700000  addli r1, zero, 7
0004e4  41006c05  shuffle_coa zero, r24, r22, 2
0004e8  1d100000  unlock zero
0004ec  7d800000  xsignal r1, 0
0004f0  9f001000  addli r1, zero, 8
0004f4  7d800000  xsignal r1, 0
0004f8  dbe6ffff  j -204
0004fc  9f211000  addli r3, zero, 10
000500  ab00803f  lui r1, 260096
000504  1f080000  addli r16, zero, 0
000508  7d900100  xwait r3, 0
00050c  7d900500  xwait r11, 0
000510  1d800600  lock zero, r13
000514  0d000002  ew_cfg zero, zero, zero, 1
000518  8d900000  ewcoeff_cfg r1, r1, zero, 0
00051c  9f70f003  addli r1, zero, 511
000520  0d800004  ew_cfg zero, r1, zero, 2
000524  0d050006  ew_cfg r10, zero, zero, 3
000528  9b980d80  ori r17, r27, 2048
00052c  8b181811  add.s r17, r16, r17
000530  1f080810  addli r16, r16, 2048
000534  ad88b801  dsmadd r17, r17, r27, 0
000538  bb4fa8ff  bneq r16, r26, -16
00053c  1f381000  addli r16, zero, 11
000540  9f511000  addli r3, zero, 13
000544  1d900600  unlock r13
000548  7d000800  xsignal r16, 0
00054c  7d800100  xsignal r3, 0
000550  e3414f00  loadli.w r3,  36(r30)
000554  5bdbffff  j -296
000558  3bdb0cfe  bneq r25, zero, -300
00055c  9f302000  addli r1, zero, 19
000560  6b528f01  load.d r[5:6], 24(r30)
000564  1738d802  sll.d r[17:18], r[17:18], r13
000568  1f010040  addli r2, zero, 8192
00056c  1f671000  addli r14, zero, 14
000570  17391902  sll.d r[19:20], r[19:20], r1
000574  9f000010  addli r1, zero, 2048
000578  0b292211  add.ul r[19:20], r[5:6], r[19:20]
00057c  1f521000  addli r4, zero, 13
000580  7d100200  xwait r4, 0
000584  6b528fff  load.d r[5:6], -8(r30)
000588  1d000600  lock zero, r12
00058c  0b280911  add.ul r[17:18], r[19:20], r[17:18]
000590  1b990d80  ori r18, r27, 2048
000594  15000000  dma_cfg zero, zero, zero, 0
000598  15000502  dma_cfg zero, r10, zero, 1
00059c  95080004  dma_cfg r17, zero, zero, 2
0005a0  15081906  dma_cfg r16, r18, r1, 3
0005a4  15816009  dma_cfg r2, r1, r22, 4
0005a8  35000000  dma_run zero
0005ac  1d100600  unlock r12
0005b0  7d000700  xsignal r14, 0
0005b4  5bcfffff  j -392
0005b8  7d900600  xwait r13, 0
0005bc  7d100600  xwait r12, 0
0005c0  1d000000  lock zero, zero
0005c4  1f380000  addli r16, zero, 3
0005c8  81060000  ds_cfg r13, zero, 0
0005cc  010b0002  ds_cfg r22, zero, 1
0005d0  010b001c  ds_cfg r22, zero, 14
0005d4  010b001a  ds_cfg r22, zero, 13
0005d8  21106003  shuffle_batch zero, zero, r22, 1
0005dc  1d100000  unlock zero
0005e0  7d000800  xsignal r16, 0
0005e4  7d800400  xsignal r9, 0
0005e8  dbc8ffff  j -444
0005ec  9f501000  addli r1, zero, 13
0005f0  1f511000  addli r2, zero, 13
0005f4  9f0c0002  addli r25, zero, 256
0005f8  6b520f00  load.d r[5:6], 0(r30)
0005fc  1f3a0000  addli r20, zero, 3
000600  1f071000  addli r14, zero, 8
000604  9f3a1000  addli r21, zero, 11
000608  9f611000  addli r3, zero, 14
00060c  9f751000  addli r11, zero, 15
000610  1738a802  sll.d r[17:18], r[17:18], r10
000614  17391902  sll.d r[19:20], r[19:20], r1
000618  9f300000  addli r1, zero, 3
00061c  7d900000  xwait r1, 0
000620  1d000600  lock zero, r12
000624  0b292211  add.ul r[19:20], r[5:6], r[19:20]
000628  1f221000  addli r4, zero, 10
00062c  9f122000  addli r5, zero, 17
000630  15000014  dma_cfg zero, zero, zero, 10
000634  1500a014  dma_cfg zero, zero, r10, 10
000638  1500d014  dma_cfg zero, zero, r13, 10
00063c  15001014  dma_cfg zero, zero, r1, 10
000640  9f700000  addli r1, zero, 7
000644  15009014  dma_cfg zero, zero, r9, 10
000648  1500c014  dma_cfg zero, zero, r12, 10
00064c  1500f014  dma_cfg zero, zero, r15, 10
000650  9f571000  addli r15, zero, 13
000654  15001014  dma_cfg zero, zero, r1, 10
000658  9f001000  addli r1, zero, 8
00065c  15001014  dma_cfg zero, zero, r1, 10
000660  9f201000  addli r1, zero, 10
000664  15008014  dma_cfg zero, zero, r8, 10
000668  15001014  dma_cfg zero, zero, r1, 10
00066c  9f301000  addli r1, zero, 11
000670  15001014  dma_cfg zero, zero, r1, 10
000674  9f401000  addli r1, zero, 12
000678  15001014  dma_cfg zero, zero, r1, 10
00067c  9f601000  addli r1, zero, 14
000680  15002014  dma_cfg zero, zero, r2, 10
000684  1f710000  addli r2, zero, 7
000688  15001014  dma_cfg zero, zero, r1, 10
00068c  9f701000  addli r1, zero, 15
000690  15001014  dma_cfg zero, zero, r1, 10
000694  9f102000  addli r1, zero, 17
000698  15007015  dma_cfg zero, zero, r23, 10
00069c  15001014  dma_cfg zero, zero, r1, 10
0006a0  9f202000  addli r1, zero, 18
0006a4  15001014  dma_cfg zero, zero, r1, 10
0006a8  9f302000  addli r1, zero, 19
0006ac  15001014  dma_cfg zero, zero, r1, 10
0006b0  9f402000  addli r1, zero, 20
0006b4  15001014  dma_cfg zero, zero, r1, 10
0006b8  9f502000  addli r1, zero, 21
0006bc  15001014  dma_cfg zero, zero, r1, 10
0006c0  9f602000  addli r1, zero, 22
0006c4  15001014  dma_cfg zero, zero, r1, 10
0006c8  9f702000  addli r1, zero, 23
0006cc  15001014  dma_cfg zero, zero, r1, 10
0006d0  9f003000  addli r1, zero, 24
0006d4  15001014  dma_cfg zero, zero, r1, 10
0006d8  9f103000  addli r1, zero, 25
0006dc  15001014  dma_cfg zero, zero, r1, 10
0006e0  9f203000  addli r1, zero, 26
0006e4  15001014  dma_cfg zero, zero, r1, 10
0006e8  9f303000  addli r1, zero, 27
0006ec  15001014  dma_cfg zero, zero, r1, 10
0006f0  9f403000  addli r1, zero, 28
0006f4  15001014  dma_cfg zero, zero, r1, 10
0006f8  9f503000  addli r1, zero, 29
0006fc  15001014  dma_cfg zero, zero, r1, 10
000700  9f603000  addli r1, zero, 30
000704  15001014  dma_cfg zero, zero, r1, 10
000708  9f703000  addli r1, zero, 31
00070c  15001014  dma_cfg zero, zero, r1, 10
000710  9f000001  addli r1, zero, 128
000714  15050500  dma_cfg r10, r10, zero, 0
000718  15050002  dma_cfg r10, zero, zero, 1
00071c  15000004  dma_cfg zero, zero, zero, 2
000720  15006007  dma_cfg zero, zero, r22, 3
000724  9500d008  dma_cfg r1, zero, r13, 4
000728  950c600b  dma_cfg r25, zero, r22, 5
00072c  15000010  dma_cfg zero, zero, zero, 8
000730  35000000  dma_run zero
000734  1500a00a  dma_cfg zero, zero, r10, 5
000738  15000010  dma_cfg zero, zero, zero, 8
00073c  1d100600  unlock r12
000740  1d800400  lock zero, r9
000744  15050500  dma_cfg r10, r10, zero, 0
000748  15800904  dma_cfg zero, r19, zero, 2
00074c  150b6907  dma_cfg r22, r18, r22, 3
000750  1f690000  addli r18, zero, 6
000754  9500db08  dma_cfg r1, r22, r13, 4
000758  958c600b  dma_cfg r25, r1, r22, 5
00075c  15000010  dma_cfg zero, zero, zero, 8
000760  35000000  dma_run zero
000764  1500a00a  dma_cfg zero, zero, r10, 5
000768  15000010  dma_cfg zero, zero, zero, 8
00076c  1d900400  unlock r9
000770  1d000600  lock zero, r12
000774  15000014  dma_cfg zero, zero, zero, 10
000778  1500a014  dma_cfg zero, zero, r10, 10
00077c  1500d014  dma_cfg zero, zero, r13, 10
000780  15004015  dma_cfg zero, zero, r20, 10
000784  1f0a3000  addli r20, zero, 24
000788  15009014  dma_cfg zero, zero, r9, 10
00078c  1500c014  dma_cfg zero, zero, r12, 10
000790  15002015  dma_cfg zero, zero, r18, 10
000794  6b590f01  load.d r[19:20], 16(r30)
000798  15002014  dma_cfg zero, zero, r2, 10
00079c  1f411000  addli r2, zero, 12
0007a0  1500e014  dma_cfg zero, zero, r14, 10
0007a4  1f672000  addli r14, zero, 22
0007a8  15008014  dma_cfg zero, zero, r8, 10
0007ac  0b280911  add.ul r[17:18], r[19:20], r[17:18]
0007b0  1f391000  addli r18, zero, 11
0007b4  9f192000  addli r19, zero, 17
0007b8  15004014  dma_cfg zero, zero, r4, 10
0007bc  1f422000  addli r4, zero, 20
0007c0  15005015  dma_cfg zero, zero, r21, 10
0007c4  9f1a3000  addli r21, zero, 25
0007c8  15002014  dma_cfg zero, zero, r2, 10
0007cc  1f212000  addli r2, zero, 18
0007d0  1500f014  dma_cfg zero, zero, r15, 10
0007d4  9f772000  addli r15, zero, 23
0007d8  15003014  dma_cfg zero, zero, r3, 10
0007dc  9f312000  addli r3, zero, 19
0007e0  1500b014  dma_cfg zero, zero, r11, 10
0007e4  9f552000  addli r11, zero, 21
0007e8  15007015  dma_cfg zero, zero, r23, 10
0007ec  15005014  dma_cfg zero, zero, r5, 10
0007f0  9f223000  addli r5, zero, 26
0007f4  15002014  dma_cfg zero, zero, r2, 10
0007f8  15003014  dma_cfg zero, zero, r3, 10
0007fc  15004014  dma_cfg zero, zero, r4, 10
000800  1500b014  dma_cfg zero, zero, r11, 10
000804  1500e014  dma_cfg zero, zero, r14, 10
000808  1500f014  dma_cfg zero, zero, r15, 10
00080c  15004015  dma_cfg zero, zero, r20, 10
000810  15005015  dma_cfg zero, zero, r21, 10
000814  15005014  dma_cfg zero, zero, r5, 10
000818  9f323000  addli r5, zero, 27
00081c  15005014  dma_cfg zero, zero, r5, 10
000820  9f423000  addli r5, zero, 28
000824  15005014  dma_cfg zero, zero, r5, 10
000828  9f523000  addli r5, zero, 29
00082c  15005014  dma_cfg zero, zero, r5, 10
000830  9f623000  addli r5, zero, 30
000834  15005014  dma_cfg zero, zero, r5, 10
000838  9f723000  addli r5, zero, 31
00083c  15005014  dma_cfg zero, zero, r5, 10
000840  9f320000  addli r5, zero, 3
000844  15050500  dma_cfg r10, r10, zero, 0
000848  15050002  dma_cfg r10, zero, zero, 1
00084c  15000004  dma_cfg zero, zero, zero, 2
000850  15006007  dma_cfg zero, zero, r22, 3
000854  9500d008  dma_cfg r1, zero, r13, 4
000858  950c600b  dma_cfg r25, zero, r22, 5
00085c  803c0002  core_id r25
000860  15000010  dma_cfg zero, zero, zero, 8
000864  35000000  dma_run zero
000868  1500a00a  dma_cfg zero, zero, r10, 5
00086c  15000010  dma_cfg zero, zero, zero, 8
000870  1d100600  unlock r12
000874  7d800600  xsignal r13, 0
000878  7d100900  xwait r18, 0
00087c  1d000600  lock zero, r12
000880  15000014  dma_cfg zero, zero, zero, 10
000884  1500a014  dma_cfg zero, zero, r10, 10
000888  1500d014  dma_cfg zero, zero, r13, 10
00088c  15005014  dma_cfg zero, zero, r5, 10
000890  9f620000  addli r5, zero, 6
000894  15009014  dma_cfg zero, zero, r9, 10
000898  1500c014  dma_cfg zero, zero, r12, 10
00089c  15005014  dma_cfg zero, zero, r5, 10
0008a0  9f720000  addli r5, zero, 7
0008a4  15005014  dma_cfg zero, zero, r5, 10
0008a8  9f021000  addli r5, zero, 8
0008ac  15005014  dma_cfg zero, zero, r5, 10
0008b0  9f221000  addli r5, zero, 10
0008b4  15008014  dma_cfg zero, zero, r8, 10
0008b8  15005014  dma_cfg zero, zero, r5, 10
0008bc  9f421000  addli r5, zero, 12
0008c0  15002015  dma_cfg zero, zero, r18, 10
0008c4  1b990d04  ori r18, r27, 64
0008c8  15005014  dma_cfg zero, zero, r5, 10
0008cc  9f521000  addli r5, zero, 13
0008d0  15005014  dma_cfg zero, zero, r5, 10
0008d4  9f621000  addli r5, zero, 14
0008d8  15005014  dma_cfg zero, zero, r5, 10
0008dc  9f721000  addli r5, zero, 15
0008e0  15005014  dma_cfg zero, zero, r5, 10
0008e4  9f620000  addli r5, zero, 6
0008e8  15007015  dma_cfg zero, zero, r23, 10
0008ec  15003015  dma_cfg zero, zero, r19, 10
0008f0  15002014  dma_cfg zero, zero, r2, 10
0008f4  1f312000  addli r2, zero, 19
0008f8  15003014  dma_cfg zero, zero, r3, 10
0008fc  9f213000  addli r3, zero, 26
000900  15004014  dma_cfg zero, zero, r4, 10
000904  1f621000  addli r4, zero, 14
000908  1500b014  dma_cfg zero, zero, r11, 10
00090c  9f451000  addli r11, zero, 12
000910  1500e014  dma_cfg zero, zero, r14, 10
000914  1f070010  addli r14, zero, 2048
000918  1500f014  dma_cfg zero, zero, r15, 10
00091c  9f772000  addli r15, zero, 23
000920  15004015  dma_cfg zero, zero, r20, 10
000924  1f1a3000  addli r20, zero, 25
000928  15005015  dma_cfg zero, zero, r21, 10
00092c  9f2a3000  addli r21, zero, 26
000930  15003014  dma_cfg zero, zero, r3, 10
000934  9f313000  addli r3, zero, 27
000938  15003014  dma_cfg zero, zero, r3, 10
00093c  9f413000  addli r3, zero, 28
000940  15003014  dma_cfg zero, zero, r3, 10
000944  9f513000  addli r3, zero, 29
000948  15003014  dma_cfg zero, zero, r3, 10
00094c  9f613000  addli r3, zero, 30
000950  15003014  dma_cfg zero, zero, r3, 10
000954  9f713000  addli r3, zero, 31
000958  15003014  dma_cfg zero, zero, r3, 10
00095c  9f310000  addli r3, zero, 3
000960  15050500  dma_cfg r10, r10, zero, 0
000964  15050002  dma_cfg r10, zero, zero, 1
000968  15000004  dma_cfg zero, zero, zero, 2
00096c  950d6007  dma_cfg r27, zero, r22, 3
000970  95007009  dma_cfg r1, zero, r23, 4
000974  1507a00a  dma_cfg r14, zero, r10, 5
000978  15000010  dma_cfg zero, zero, zero, 8
00097c  35000000  dma_run zero
000980  1500a00a  dma_cfg zero, zero, r10, 5
000984  15000010  dma_cfg zero, zero, zero, 8
000988  1d100600  unlock r12
00098c  1d800400  lock zero, r9
000990  15050500  dma_cfg r10, r10, zero, 0
000994  15800804  dma_cfg zero, r17, zero, 2
000998  15096807  dma_cfg r18, r16, r22, 3
00099c  1f080008  addli r16, zero, 1024
0009a0  9f781000  addli r17, zero, 15
0009a4  95007b09  dma_cfg r1, r22, r23, 4
0009a8  1507a80a  dma_cfg r14, r16, r10, 5
0009ac  1f281000  addli r16, zero, 10
0009b0  15000010  dma_cfg zero, zero, zero, 8
0009b4  35000000  dma_run zero
0009b8  1500a00a  dma_cfg zero, zero, r10, 5
0009bc  15000010  dma_cfg zero, zero, zero, 8
0009c0  1d900400  unlock r9
0009c4  1d000600  lock zero, r12
0009c8  15000014  dma_cfg zero, zero, zero, 10
0009cc  1500a014  dma_cfg zero, zero, r10, 10
0009d0  1500d014  dma_cfg zero, zero, r13, 10
0009d4  15003014  dma_cfg zero, zero, r3, 10
0009d8  9f710000  addli r3, zero, 7
0009dc  15009014  dma_cfg zero, zero, r9, 10
0009e0  1500c014  dma_cfg zero, zero, r12, 10
0009e4  15005014  dma_cfg zero, zero, r5, 10
0009e8  9f421000  addli r5, zero, 12
0009ec  15003014  dma_cfg zero, zero, r3, 10
0009f0  9f011000  addli r3, zero, 8
0009f4  15003014  dma_cfg zero, zero, r3, 10
0009f8  9f311000  addli r3, zero, 11
0009fc  15008014  dma_cfg zero, zero, r8, 10
000a00  15000015  dma_cfg zero, zero, r16, 10
000a04  15003014  dma_cfg zero, zero, r3, 10
000a08  9f511000  addli r3, zero, 13
000a0c  15005014  dma_cfg zero, zero, r5, 10
000a10  15003014  dma_cfg zero, zero, r3, 10
000a14  e3414f00  loadli.w r3,  36(r30)
000a18  15004014  dma_cfg zero, zero, r4, 10
000a1c  6b528fff  load.d r[5:6], -8(r30)
000a20  15001015  dma_cfg zero, zero, r17, 10
000a24  9f282000  addli r17, zero, 18
000a28  15007015  dma_cfg zero, zero, r23, 10
000a2c  15003015  dma_cfg zero, zero, r19, 10
000a30  15001015  dma_cfg zero, zero, r17, 10
000a34  15002014  dma_cfg zero, zero, r2, 10
000a38  1f412000  addli r2, zero, 20
000a3c  15002014  dma_cfg zero, zero, r2, 10
000a40  1f512000  addli r2, zero, 21
000a44  15002014  dma_cfg zero, zero, r2, 10
000a48  1f612000  addli r2, zero, 22
000a4c  15002014  dma_cfg zero, zero, r2, 10
000a50  1f013000  addli r2, zero, 24
000a54  1500f014  dma_cfg zero, zero, r15, 10
000a58  9f670000  addli r15, zero, 6
000a5c  15002014  dma_cfg zero, zero, r2, 10
000a60  1f313000  addli r2, zero, 27
000a64  15004015  dma_cfg zero, zero, r20, 10
000a68  15005015  dma_cfg zero, zero, r21, 10
000a6c  15002014  dma_cfg zero, zero, r2, 10
000a70  1f413000  addli r2, zero, 28
000a74  15002014  dma_cfg zero, zero, r2, 10
000a78  1f513000  addli r2, zero, 29
000a7c  15002014  dma_cfg zero, zero, r2, 10
000a80  1f613000  addli r2, zero, 30
000a84  15002014  dma_cfg zero, zero, r2, 10
000a88  1f713000  addli r2, zero, 31
000a8c  15002014  dma_cfg zero, zero, r2, 10
000a90  15050500  dma_cfg r10, r10, zero, 0
000a94  15050002  dma_cfg r10, zero, zero, 1
000a98  15000004  dma_cfg zero, zero, zero, 2
000a9c  950d6007  dma_cfg r27, zero, r22, 3
000aa0  95007009  dma_cfg r1, zero, r23, 4
000aa4  1507a00a  dma_cfg r14, zero, r10, 5
000aa8  15000010  dma_cfg zero, zero, zero, 8
000aac  35000000  dma_run zero
000ab0  1500a00a  dma_cfg zero, zero, r10, 5
000ab4  15000010  dma_cfg zero, zero, zero, 8
000ab8  1d100600  unlock r12
000abc  7d000800  xsignal r16, 0
000ac0  db2dffff  j -1684
000ac4  7d000000  xsignal zero, 0
000ac8  bbe00c00  bneq r25, zero, 56
000acc  9f200000  addli r1, zero, 2
000ad0  7d100000  xwait zero, 0
000ad4  7d100000  xwait zero, 0
000ad8  7d100000  xwait zero, 0
000adc  7d100000  xwait zero, 0
000ae0  7d100000  xwait zero, 0
000ae4  7d100000  xwait zero, 0
000ae8  7d100000  xwait zero, 0
000aec  7d100000  xwait zero, 0
000af0  1d800000  lock zero, r1
000af4  0d000020  ew_cfg zero, zero, zero, 16
000af8  1d900000  unlock r1
000afc  7d400000  xsignal_mode_cfg zero
000b00  9f8e2e00  addli sp, sp, 16
000b04  00a00300  mfence { lm, sm, gm }
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
000d40  00100000  exit
000d44  00100000  exit
000d48  00100000  exit
