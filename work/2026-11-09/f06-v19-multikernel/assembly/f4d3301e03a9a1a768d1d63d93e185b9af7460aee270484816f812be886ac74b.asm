; SHA-256 f4d3301e03a9a1a768d1d63d93e185b9af7460aee270484816f812be886ac74b
; P800 SDNN · XTDK LLVM 19 · 1880 / 1880 words decoded
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
0000b4  9f8eeefe  addli sp, sp, -144
0000b8  9f100000  addli r1, zero, 1
0000bc  00360002  core_id r12
0000c0  1f8fae00  addli r30, sp, 80
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600600  beq r12, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b140000  j 160
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
000158  1f511000  addli r2, zero, 13
00015c  7d800000  xsignal r1, 0
000160  7d800000  xsignal r1, 0
000164  7d800000  xsignal r1, 0
000168  7d800000  xsignal r1, 0
00016c  7d000100  xsignal r2, 0
000170  7d000100  xsignal r2, 0
000174  7d000100  xsignal r2, 0
000178  7d000100  xsignal r2, 0
00017c  e3003f00  loadli.w r1,  24(r30)
000180  63413f00  loadli.w r2,  28(r30)
000184  00d20002  load_param_i r4, 1
000188  e3014f00  loadli.w r3,  32(r30)
00018c  8b101120  mul.s r1, r2, r1
000190  1f010200  addli r2, r4, 0
000194  0b913050  fmac.s r2, r1, r3
000198  8b913020  mul.s r3, r1, r3
00019c  1f71f1ff  addli r2, r2, -1
0001a0  0b114130  div.s r2, r2, r4
0001a4  00520002  load_param_i r4, 0
0001a8  8b104120  mul.s r1, r2, r4
0001ac  0b114150  fmac.s r2, r2, r4
0001b0  0b113140  min.s r2, r2, r3
0001b4  cb14110c  ble.s r2, r1, 6436
0001b8  33110128  sext_int2long r[3:4], r2
0001bc  33950028  sext_int2long r[11:12], r1
0001c0  abf0ff7f  lui r1, 524287
0001c4  9f460000  addli r13, zero, 4
0001c8  1f088000  addli r16, zero, 64
0001cc  9f180000  addli r17, zero, 1
0001d0  1f071000  addli r14, zero, 8
0001d4  1f790000  addli r18, zero, 7
0001d8  9f571000  addli r15, zero, 13
0001dc  ab0c807f  lui r25, 522240
0001e0  2b02ffff  lui r4, 1048560
0001e4  9f040000  addli r9, zero, 0
0001e8  73382ffa  store.d r[3:4], -80(r30)
0001ec  9b9bf0ff  ori r23, r1, 4095
0001f0  ab700000  lui r1, 7
0001f4  2bf17f7f  lui r2, 522239
0001f8  9b9df0ff  ori r27, r1, 4095
0001fc  1b1ef1ff  ori r28, r2, 4095
000200  db080000  j 68
000204  9f301000  addli r1, zero, 11
000208  1f088000  addli r16, zero, 64
00020c  9f180000  addli r17, zero, 1
000210  7d800000  xsignal r1, 0
000214  9f401000  addli r1, zero, 12
000218  7d800000  xsignal r1, 0
00021c  e344cfff  loadli.w r9,  -28(r30)
000220  6b558ffd  load.d r[11:12], -40(r30)
000224  eb500ffb  load.d r[2:3], -80(r30)
000228  9f940400  addli r9, r9, 1
00022c  9f460000  addli r13, zero, 4
000230  1f071000  addli r14, zero, 8
000234  9f571000  addli r15, zero, 13
000238  27150500  addli.d r[11:12], r[11:12], 1
00023c  93301504  setlt.sl r1, r[11:12], r[2:3]
000240  37e2000c  beq r1, zero, 6296
000244  e3004f00  loadli.w r1,  32(r30)
000248  63413f00  loadli.w r2,  28(r30)
00024c  8b93d438  mod.s r7, r9, r13
000250  1f6a0000  addli r20, zero, 6
000254  733caffc  store.d r[11:12], -40(r30)
000258  8b101530  div.s r1, r10, r1
00025c  1bb3e300  slli r6, r7, 14
000260  0b912030  div.s r2, r1, r2
000264  8b110131  div.s r3, r2, r16
000268  9bb03100  slli r1, r3, 3
00026c  8b921818  sub.s r5, r17, r1
000270  0b94e240  min.s r8, r5, r14
000274  8b128138  mod.s r5, r2, r8
000278  8b901210  add.s r1, r5, r1
00027c  9f820400  addli r5, r9, 0
000280  b38a0028  zext_int2long r[22:23], r1
000284  e74c1ffe  storeli.w r1, -52(r30)
000288  ab000200  lui r1, 32
00028c  674e5ffe  storeli.w r5, -28(r30)
000290  8b141310  add.s r9, r6, r1
000294  73345fff  store.d r[22:23], -24(r30)
000298  3b7a1601  bneq r12, r17, 668
00029c  17b5fa02  sll.d r[11:12], r[22:23], r15
0002a0  eb5a0f00  load.d r[22:23], 0(r30)
0002a4  9f300000  addli r1, zero, 3
0002a8  7d900000  xwait r1, 0
0002ac  0ba5aa10  add.ul r[11:12], r[22:23], r[11:12]
0002b0  3ff45000  blt.s r1, r5, 284
0002b4  9f520000  addli r5, zero, 5
0002b8  9f290000  addli r19, zero, 2
0002bc  1d800200  lock zero, r5
0002c0  15000014  dma_cfg zero, zero, zero, 10
0002c4  15001015  dma_cfg zero, zero, r17, 10
0002c8  15003015  dma_cfg zero, zero, r19, 10
0002cc  15001014  dma_cfg zero, zero, r1, 10
0002d0  9f101000  addli r1, zero, 9
0002d4  1500d014  dma_cfg zero, zero, r13, 10
0002d8  15005014  dma_cfg zero, zero, r5, 10
0002dc  15004015  dma_cfg zero, zero, r20, 10
0002e0  15002015  dma_cfg zero, zero, r18, 10
0002e4  1500e014  dma_cfg zero, zero, r14, 10
0002e8  15001014  dma_cfg zero, zero, r1, 10
0002ec  9f201000  addli r1, zero, 10
0002f0  15001014  dma_cfg zero, zero, r1, 10
0002f4  9f301000  addli r1, zero, 11
0002f8  15001014  dma_cfg zero, zero, r1, 10
0002fc  9f401000  addli r1, zero, 12
000300  15001014  dma_cfg zero, zero, r1, 10
000304  9f601000  addli r1, zero, 14
000308  1500f014  dma_cfg zero, zero, r15, 10
00030c  15001014  dma_cfg zero, zero, r1, 10
000310  9f701000  addli r1, zero, 15
000314  15001014  dma_cfg zero, zero, r1, 10
000318  9f002000  addli r1, zero, 16
00031c  15001014  dma_cfg zero, zero, r1, 10
000320  9f102000  addli r1, zero, 17
000324  15001014  dma_cfg zero, zero, r1, 10
000328  9f202000  addli r1, zero, 18
00032c  15001014  dma_cfg zero, zero, r1, 10
000330  9f302000  addli r1, zero, 19
000334  15001014  dma_cfg zero, zero, r1, 10
000338  9f402000  addli r1, zero, 20
00033c  15001014  dma_cfg zero, zero, r1, 10
000340  9f502000  addli r1, zero, 21
000344  15001014  dma_cfg zero, zero, r1, 10
000348  9f602000  addli r1, zero, 22
00034c  15001014  dma_cfg zero, zero, r1, 10
000350  9f702000  addli r1, zero, 23
000354  15001014  dma_cfg zero, zero, r1, 10
000358  9f003000  addli r1, zero, 24
00035c  15001014  dma_cfg zero, zero, r1, 10
000360  9f103000  addli r1, zero, 25
000364  15001014  dma_cfg zero, zero, r1, 10
000368  9f203000  addli r1, zero, 26
00036c  15001014  dma_cfg zero, zero, r1, 10
000370  9f303000  addli r1, zero, 27
000374  15001014  dma_cfg zero, zero, r1, 10
000378  9f403000  addli r1, zero, 28
00037c  15001014  dma_cfg zero, zero, r1, 10
000380  9f503000  addli r1, zero, 29
000384  15001014  dma_cfg zero, zero, r1, 10
000388  9f603000  addli r1, zero, 30
00038c  15001014  dma_cfg zero, zero, r1, 10
000390  9f703000  addli r1, zero, 31
000394  15001014  dma_cfg zero, zero, r1, 10
000398  9f000001  addli r1, zero, 128
00039c  95880800  dma_cfg r17, r17, zero, 0
0003a0  95080002  dma_cfg r17, zero, zero, 1
0003a4  15000004  dma_cfg zero, zero, zero, 2
0003a8  95040007  dma_cfg r9, zero, r16, 3
0003ac  95003009  dma_cfg r1, zero, r19, 4
0003b0  9f000002  addli r1, zero, 256
0003b4  9500000b  dma_cfg r1, zero, r16, 5
0003b8  15000010  dma_cfg zero, zero, zero, 8
0003bc  35000000  dma_run zero
0003c0  1500100b  dma_cfg zero, zero, r17, 5
0003c4  15000010  dma_cfg zero, zero, zero, 8
0003c8  1d900200  unlock r5
0003cc  ab000200  lui r1, 32
0003d0  670d0ffe  storeli.w zero, -48(r30)
0003d4  9f090002  addli r19, zero, 256
0003d8  9f320000  addli r5, zero, 3
0003dc  1d800600  lock zero, r13
0003e0  9b900004  ori r1, r1, 64
0003e4  95880800  dma_cfg r17, r17, zero, 0
0003e8  15800504  dma_cfg zero, r11, zero, 2
0003ec  8b101310  add.s r1, r6, r1
0003f0  95000507  dma_cfg r1, r10, r16, 3
0003f4  9f250000  addli r11, zero, 2
0003f8  1f050001  addli r10, zero, 128
0003fc  9f500000  addli r1, zero, 5
000400  1505b808  dma_cfg r10, r16, r11, 4
000404  9509050b  dma_cfg r19, r10, r16, 5
000408  15000010  dma_cfg zero, zero, zero, 8
00040c  35000000  dma_run zero
000410  1500100b  dma_cfg zero, zero, r17, 5
000414  15000010  dma_cfg zero, zero, zero, 8
000418  1d900600  unlock r13
00041c  1d800000  lock zero, r1
000420  15000014  dma_cfg zero, zero, zero, 10
000424  15001015  dma_cfg zero, zero, r17, 10
000428  1500b014  dma_cfg zero, zero, r11, 10
00042c  15005014  dma_cfg zero, zero, r5, 10
000430  9f620000  addli r5, zero, 6
000434  1500d014  dma_cfg zero, zero, r13, 10
000438  15001014  dma_cfg zero, zero, r1, 10
00043c  15005014  dma_cfg zero, zero, r5, 10
000440  9f121000  addli r5, zero, 9
000444  15002015  dma_cfg zero, zero, r18, 10
000448  1500e014  dma_cfg zero, zero, r14, 10
00044c  15005014  dma_cfg zero, zero, r5, 10
000450  9f221000  addli r5, zero, 10
000454  15005014  dma_cfg zero, zero, r5, 10
000458  9f321000  addli r5, zero, 11
00045c  15005014  dma_cfg zero, zero, r5, 10
000460  9f421000  addli r5, zero, 12
000464  15005014  dma_cfg zero, zero, r5, 10
000468  9f621000  addli r5, zero, 14
00046c  1500f014  dma_cfg zero, zero, r15, 10
000470  15005014  dma_cfg zero, zero, r5, 10
000474  9f721000  addli r5, zero, 15
000478  15005014  dma_cfg zero, zero, r5, 10
00047c  9f022000  addli r5, zero, 16
000480  15005014  dma_cfg zero, zero, r5, 10
000484  9f122000  addli r5, zero, 17
000488  15005014  dma_cfg zero, zero, r5, 10
00048c  9f222000  addli r5, zero, 18
000490  15005014  dma_cfg zero, zero, r5, 10
000494  9f322000  addli r5, zero, 19
000498  15005014  dma_cfg zero, zero, r5, 10
00049c  9f422000  addli r5, zero, 20
0004a0  15005014  dma_cfg zero, zero, r5, 10
0004a4  9f522000  addli r5, zero, 21
0004a8  15005014  dma_cfg zero, zero, r5, 10
0004ac  9f622000  addli r5, zero, 22
0004b0  15005014  dma_cfg zero, zero, r5, 10
0004b4  9f722000  addli r5, zero, 23
0004b8  15005014  dma_cfg zero, zero, r5, 10
0004bc  9f023000  addli r5, zero, 24
0004c0  15005014  dma_cfg zero, zero, r5, 10
0004c4  9f123000  addli r5, zero, 25
0004c8  15005014  dma_cfg zero, zero, r5, 10
0004cc  9f223000  addli r5, zero, 26
0004d0  15005014  dma_cfg zero, zero, r5, 10
0004d4  9f323000  addli r5, zero, 27
0004d8  15005014  dma_cfg zero, zero, r5, 10
0004dc  9f423000  addli r5, zero, 28
0004e0  15005014  dma_cfg zero, zero, r5, 10
0004e4  9f523000  addli r5, zero, 29
0004e8  15005014  dma_cfg zero, zero, r5, 10
0004ec  9f623000  addli r5, zero, 30
0004f0  15005014  dma_cfg zero, zero, r5, 10
0004f4  9f723000  addli r5, zero, 31
0004f8  15005014  dma_cfg zero, zero, r5, 10
0004fc  95880800  dma_cfg r17, r17, zero, 0
000500  95080002  dma_cfg r17, zero, zero, 1
000504  15000004  dma_cfg zero, zero, zero, 2
000508  95040007  dma_cfg r9, zero, r16, 3
00050c  1505b008  dma_cfg r10, zero, r11, 4
000510  1f250000  addli r10, zero, 2
000514  9509000b  dma_cfg r19, zero, r16, 5
000518  15000010  dma_cfg zero, zero, zero, 8
00051c  35000000  dma_run zero
000520  1500100b  dma_cfg zero, zero, r17, 5
000524  15000010  dma_cfg zero, zero, zero, 8
000528  1d900000  unlock r1
00052c  7d800500  xsignal r11, 0
000530  5b0b0000  j 88
000534  9f300000  addli r1, zero, 3
000538  9f250000  addli r11, zero, 2
00053c  3b11b600  bneq r12, r11, 68
000540  9f520000  addli r5, zero, 5
000544  7d900500  xwait r11, 0
000548  1f250000  addli r10, zero, 2
00054c  7d900200  xwait r5, 0
000550  1d000000  lock zero, zero
000554  81050000  ds_cfg r11, zero, 0
000558  01080002  ds_cfg r16, zero, 1
00055c  0108001c  ds_cfg r16, zero, 14
000560  0108001a  ds_cfg r16, zero, 13
000564  21930403  shuffle_batch r6, r9, r16, 1
000568  1d100000  unlock zero
00056c  7d800000  xsignal r1, 0
000570  9f100000  addli r1, zero, 1
000574  670d1ffe  storeli.w r1, -48(r30)
000578  7d800600  xsignal r13, 0
00057c  db010000  j 12
000580  1f250000  addli r10, zero, 2
000584  670d0ffe  storeli.w zero, -48(r30)
000588  9bb06100  slli r1, r3, 6
00058c  9bb5f300  slli r11, r7, 15
000590  eb598ffe  load.d r[20:21], -24(r30)
000594  e341cfff  loadli.w r3,  -28(r30)
000598  8b101118  sub.s r1, r2, r1
00059c  8b908030  div.s r1, r1, r8
0005a0  e74b1ffe  storeli.w r1, -68(r30)
0005a4  b3800028  zext_int2long r[2:3], r1
0005a8  97b32003  sll.d r[8:9], r[2:3], r18
0005ac  ab000300  lui r1, 48
0005b0  17b41303  sll.d r[9:10], r[8:9], r17
0005b4  0b911510  add.s r2, r11, r1
0005b8  9f630000  addli r7, zero, 6
0005bc  73308ffc  store.d r[9:10], -64(r30)
0005c0  bb6b7600  bneq r12, r7, 760
0005c4  eb528f00  load.d r[6:7], 8(r30)
0005c8  9f300000  addli r1, zero, 3
0005cc  7d100900  xwait r18, 0
0005d0  8ba28210  add.ul r[6:7], r[6:7], r[9:10]
0005d4  3fe43000  blt.s r1, r3, 280
0005d8  9f510000  addli r3, zero, 5
0005dc  1d800100  lock zero, r3
0005e0  15000014  dma_cfg zero, zero, zero, 10
0005e4  15001015  dma_cfg zero, zero, r17, 10
0005e8  1500a014  dma_cfg zero, zero, r10, 10
0005ec  15001014  dma_cfg zero, zero, r1, 10
0005f0  9f101000  addli r1, zero, 9
0005f4  1500d014  dma_cfg zero, zero, r13, 10
0005f8  15003014  dma_cfg zero, zero, r3, 10
0005fc  15007014  dma_cfg zero, zero, r7, 10
000600  15002015  dma_cfg zero, zero, r18, 10
000604  1500e014  dma_cfg zero, zero, r14, 10
000608  15001014  dma_cfg zero, zero, r1, 10
00060c  9f201000  addli r1, zero, 10
000610  15001014  dma_cfg zero, zero, r1, 10
000614  9f301000  addli r1, zero, 11
000618  15001014  dma_cfg zero, zero, r1, 10
00061c  9f401000  addli r1, zero, 12
000620  15001014  dma_cfg zero, zero, r1, 10
000624  9f601000  addli r1, zero, 14
000628  1500f014  dma_cfg zero, zero, r15, 10
00062c  15001014  dma_cfg zero, zero, r1, 10
000630  9f701000  addli r1, zero, 15
000634  15001014  dma_cfg zero, zero, r1, 10
000638  9f002000  addli r1, zero, 16
00063c  15001014  dma_cfg zero, zero, r1, 10
000640  9f102000  addli r1, zero, 17
000644  15001014  dma_cfg zero, zero, r1, 10
000648  9f202000  addli r1, zero, 18
00064c  15001014  dma_cfg zero, zero, r1, 10
000650  9f302000  addli r1, zero, 19
000654  15001014  dma_cfg zero, zero, r1, 10
000658  9f402000  addli r1, zero, 20
00065c  15001014  dma_cfg zero, zero, r1, 10
000660  9f502000  addli r1, zero, 21
000664  15001014  dma_cfg zero, zero, r1, 10
000668  9f602000  addli r1, zero, 22
00066c  15001014  dma_cfg zero, zero, r1, 10
000670  9f702000  addli r1, zero, 23
000674  15001014  dma_cfg zero, zero, r1, 10
000678  9f003000  addli r1, zero, 24
00067c  15001014  dma_cfg zero, zero, r1, 10
000680  9f103000  addli r1, zero, 25
000684  15001014  dma_cfg zero, zero, r1, 10
000688  9f203000  addli r1, zero, 26
00068c  15001014  dma_cfg zero, zero, r1, 10
000690  9f303000  addli r1, zero, 27
000694  15001014  dma_cfg zero, zero, r1, 10
000698  9f403000  addli r1, zero, 28
00069c  15001014  dma_cfg zero, zero, r1, 10
0006a0  9f503000  addli r1, zero, 29
0006a4  15001014  dma_cfg zero, zero, r1, 10
0006a8  9f603000  addli r1, zero, 30
0006ac  15001014  dma_cfg zero, zero, r1, 10
0006b0  9f703000  addli r1, zero, 31
0006b4  15001014  dma_cfg zero, zero, r1, 10
0006b8  9f000001  addli r1, zero, 128
0006bc  95880800  dma_cfg r17, r17, zero, 0
0006c0  95080002  dma_cfg r17, zero, zero, 1
0006c4  15000004  dma_cfg zero, zero, zero, 2
0006c8  15010007  dma_cfg r2, zero, r16, 3
0006cc  9500d008  dma_cfg r1, zero, r13, 4
0006d0  9f000004  addli r1, zero, 512
0006d4  9500000b  dma_cfg r1, zero, r16, 5
0006d8  15000010  dma_cfg zero, zero, zero, 8
0006dc  35000000  dma_run zero
0006e0  1500100b  dma_cfg zero, zero, r17, 5
0006e4  15000010  dma_cfg zero, zero, zero, 8
0006e8  1d900100  unlock r3
0006ec  ab000300  lui r1, 48
0006f0  670e0ffe  storeli.w zero, -32(r30)
0006f4  674d0ffe  storeli.w zero, -44(r30)
0006f8  670f0ffe  storeli.w zero, -16(r30)
0006fc  9f310000  addli r3, zero, 3
000700  1d800600  lock zero, r13
000704  9b900004  ori r1, r1, 64
000708  95880800  dma_cfg r17, r17, zero, 0
00070c  15000304  dma_cfg zero, r6, zero, 2
000710  8b901510  add.s r1, r11, r1
000714  95800207  dma_cfg r1, r5, r16, 3
000718  9f000001  addli r1, zero, 128
00071c  1f030004  addli r6, zero, 512
000720  9f020001  addli r5, zero, 128
000724  9500d808  dma_cfg r1, r16, r13, 4
000728  9f000010  addli r1, zero, 2048
00072c  1583000b  dma_cfg r6, r1, r16, 5
000730  9f500000  addli r1, zero, 5
000734  15000010  dma_cfg zero, zero, zero, 8
000738  35000000  dma_run zero
00073c  1500100b  dma_cfg zero, zero, r17, 5
000740  15000010  dma_cfg zero, zero, zero, 8
000744  1d900600  unlock r13
000748  1d800000  lock zero, r1
00074c  15000014  dma_cfg zero, zero, zero, 10
000750  15001015  dma_cfg zero, zero, r17, 10
000754  1500a014  dma_cfg zero, zero, r10, 10
000758  15003014  dma_cfg zero, zero, r3, 10
00075c  9f111000  addli r3, zero, 9
000760  1500d014  dma_cfg zero, zero, r13, 10
000764  15001014  dma_cfg zero, zero, r1, 10
000768  15007014  dma_cfg zero, zero, r7, 10
00076c  15002015  dma_cfg zero, zero, r18, 10
000770  1500e014  dma_cfg zero, zero, r14, 10
000774  15003014  dma_cfg zero, zero, r3, 10
000778  9f211000  addli r3, zero, 10
00077c  15003014  dma_cfg zero, zero, r3, 10
000780  9f311000  addli r3, zero, 11
000784  15003014  dma_cfg zero, zero, r3, 10
000788  9f411000  addli r3, zero, 12
00078c  15003014  dma_cfg zero, zero, r3, 10
000790  9f611000  addli r3, zero, 14
000794  1500f014  dma_cfg zero, zero, r15, 10
000798  15003014  dma_cfg zero, zero, r3, 10
00079c  9f711000  addli r3, zero, 15
0007a0  15003014  dma_cfg zero, zero, r3, 10
0007a4  9f012000  addli r3, zero, 16
0007a8  15003014  dma_cfg zero, zero, r3, 10
0007ac  9f112000  addli r3, zero, 17
0007b0  15003014  dma_cfg zero, zero, r3, 10
0007b4  9f212000  addli r3, zero, 18
0007b8  15003014  dma_cfg zero, zero, r3, 10
0007bc  9f312000  addli r3, zero, 19
0007c0  15003014  dma_cfg zero, zero, r3, 10
0007c4  9f412000  addli r3, zero, 20
0007c8  15003014  dma_cfg zero, zero, r3, 10
0007cc  9f512000  addli r3, zero, 21
0007d0  15003014  dma_cfg zero, zero, r3, 10
0007d4  9f612000  addli r3, zero, 22
0007d8  15003014  dma_cfg zero, zero, r3, 10
0007dc  9f712000  addli r3, zero, 23
0007e0  15003014  dma_cfg zero, zero, r3, 10
0007e4  9f013000  addli r3, zero, 24
0007e8  15003014  dma_cfg zero, zero, r3, 10
0007ec  9f113000  addli r3, zero, 25
0007f0  15003014  dma_cfg zero, zero, r3, 10
0007f4  9f213000  addli r3, zero, 26
0007f8  15003014  dma_cfg zero, zero, r3, 10
0007fc  9f313000  addli r3, zero, 27
000800  15003014  dma_cfg zero, zero, r3, 10
000804  9f413000  addli r3, zero, 28
000808  15003014  dma_cfg zero, zero, r3, 10
00080c  9f513000  addli r3, zero, 29
000810  15003014  dma_cfg zero, zero, r3, 10
000814  9f613000  addli r3, zero, 30
000818  15003014  dma_cfg zero, zero, r3, 10
00081c  9f713000  addli r3, zero, 31
000820  15003014  dma_cfg zero, zero, r3, 10
000824  95880800  dma_cfg r17, r17, zero, 0
000828  95080002  dma_cfg r17, zero, zero, 1
00082c  15000004  dma_cfg zero, zero, zero, 2
000830  15010007  dma_cfg r2, zero, r16, 3
000834  9502d008  dma_cfg r5, zero, r13, 4
000838  1503000b  dma_cfg r6, zero, r16, 5
00083c  15000010  dma_cfg zero, zero, zero, 8
000840  35000000  dma_run zero
000844  1500100b  dma_cfg zero, zero, r17, 5
000848  15000010  dma_cfg zero, zero, zero, 8
00084c  1d900000  unlock r1
000850  7d800300  xsignal r7, 0
000854  ab000500  lui r1, 80
000858  3d000000  xfence
00085c  00a00300  mfence { lm, sm, gm }
000860  8b981510  add.s r17, r11, r1
000864  9f70f001  addli r1, zero, 255
000868  80a20004  csr_set csr5, r1
00086c  9f000001  addli r1, zero, 128
000870  00e00200  sync_core
000874  33870028  zext_int2long r[15:16], r1
000878  9f70f000  addli r1, zero, 127
00087c  33840028  zext_int2long r[9:10], r1
000880  37420600  beq r12, zero, 144
000884  9f100000  addli r1, zero, 1
000888  371a1600  beq r12, r1, 644
00088c  e300afff  loadli.w r1,  -48(r30)
000890  3b820002  bneq r1, zero, 1152
000894  e300cfff  loadli.w r1,  -32(r30)
000898  bbf90002  bneq r1, zero, 1660
00089c  e300efff  loadli.w r1,  -16(r30)
0008a0  bbe10004  bneq r1, zero, 2168
0008a4  9f500000  addli r1, zero, 5
0008a8  b7591604  beq r12, r1, 2676
0008ac  9f600000  addli r1, zero, 6
0008b0  b7411606  beq r12, r1, 3184
0008b4  5bcd0100  j 3688
0008b8  9f300000  addli r1, zero, 3
0008bc  b7371608  beq r12, r1, 4588
0008c0  b735d608  beq r12, r13, 4460
0008c4  9f010001  addli r3, zero, 128
0008c8  3b082609  bneq r12, r18, 4608
0008cc  9f101000  addli r1, zero, 9
0008d0  670e0ffe  storeli.w zero, -32(r30)
0008d4  670f0ffe  storeli.w zero, -16(r30)
0008d8  7d900300  xwait r7, 0
0008dc  7d900000  xwait r1, 0
0008e0  1d000000  lock zero, zero
0008e4  9f100000  addli r1, zero, 1
0008e8  01050000  ds_cfg r10, zero, 0
0008ec  81010002  ds_cfg r3, zero, 1
0008f0  0108001c  ds_cfg r16, zero, 14
0008f4  8101001a  ds_cfg r3, zero, 13
0008f8  c1050105  shuffle_coa r11, r2, r16, 2
0008fc  1d100000  unlock zero
000900  7d000900  xsignal r18, 0
000904  674d1ffe  storeli.w r1, -44(r30)
000908  7d000700  xsignal r14, 0
00090c  5be9ffff  j -184
000910  3d000000  xfence
000914  33010028  zext_int2long r[3:4], zero
000918  00a00300  mfence { lm, sm, gm }
00091c  db030000  j 28
000920  1f790000  addli r18, zero, 7
000924  eb528fff  load.d r[6:7], -8(r30)
000928  b3000928  zext_int2long r[2:3], r18
00092c  93a01204  setlt.ul r1, r[6:7], r[2:3]
000930  27910200  addli.d r[3:4], r[6:7], 1
000934  37970000  beq r1, zero, 452
000938  733c2ffe  store.d r[3:4], -8(r30)
00093c  17312103  sll.d r[3:4], r[3:4], r18
000940  bbd1b800  bneq r17, r11, 116
000944  33060028  zext_int2long r[13:14], zero
000948  5b030000  j 24
00094c  13238604  setlt.ul r6, r[13:14], r[9:10]
000950  8b901810  add.s r1, r17, r1
000954  27160600  addli.d r[13:14], r[13:14], 1
000958  73e05000  stores.w r5, 0(r1)
00095c  371f03fe  beq r6, zero, -60
000960  8b222610  add.ul r[6:7], r[13:14], r[3:4]
000964  9bb02200  slli r1, r5, 2
000968  8b921510  add.s r5, r11, r1
00096c  6fc30200  loads.w r6, 0(r5)
000970  97037301  and r7, r6, r23
000974  93827c04  setlt.u r5, r25, r7
000978  3bd00200  bneq r5, zero, 20
00097c  9f020300  addli r5, r6, 0
000980  93037e04  setlt.u r7, r28, r7
000984  3baf03fe  bneq r7, zero, -56
000988  db020000  j 20
00098c  ab024000  lui r5, 1024
000990  97125300  or r5, r6, r5
000994  93037e04  setlt.u r7, r28, r7
000998  bbde03fe  bneq r7, zero, -76
00099c  9b420301  srli r5, r6, 16
0009a0  9b821200  andi r5, r5, 1
0009a4  8b125310  add.s r5, r6, r5
0009a8  8b92b211  add.s r5, r5, r27
0009ac  97824200  and r5, r5, r4
0009b0  dbf3ffff  j -100
0009b4  33090028  zext_int2long r[19:20], zero
0009b8  db040000  j 36
0009bc  27490900  addli.d r[19:20], r[19:20], 4
0009c0  0b935811  add.s r6, r17, r21
0009c4  9320e900  seteq.d r1, r[19:20], r[15:16]
0009c8  73666301  stores.w r22, 12(r6)
0009cc  73645300  stores.w r5, 8(r6)
0009d0  73628301  stores.w r24, 4(r6)
0009d4  7360d300  stores.w r13, 0(r6)
0009d8  3bad00fe  bneq r1, zero, -184
0009dc  8b222910  add.ul r[6:7], r[19:20], r[3:4]
0009e0  9bba2200  slli r21, r5, 2
0009e4  8b965511  add.s r13, r11, r21
0009e8  6fc5c600  loads.w r10, 12(r13)
0009ec  17087501  and r16, r10, r23
0009f0  93800c05  setlt.u r1, r25, r16
0009f4  3bb00000  bneq r1, zero, 12
0009f8  1f0b0500  addli r22, r10, 0
0009fc  db010000  j 12
000a00  ab004000  lui r1, 1024
000a04  171b1500  or r22, r10, r1
000a08  efc08600  loads.w r1, 8(r13)
000a0c  17867001  and r12, r1, r23
000a10  9382cc04  setlt.u r5, r25, r12
000a14  3bb00200  bneq r5, zero, 12
000a18  9f820000  addli r5, r1, 0
000a1c  db010000  j 12
000a20  ab024000  lui r5, 1024
000a24  97925000  or r5, r1, r5
000a28  6fcd4600  loads.w r26, 4(r13)
000a2c  17037d01  and r6, r26, r23
000a30  93836c04  setlt.u r7, r25, r6
000a34  3bb00300  bneq r7, zero, 12
000a38  1f0c0d00  addli r24, r26, 0
000a3c  db010000  j 12
000a40  ab034000  lui r7, 1024
000a44  171c7d00  or r24, r26, r7
000a48  efc30600  loads.w r7, 0(r13)
000a4c  178a7301  and r20, r7, r23
000a50  93864c05  setlt.u r13, r25, r20
000a54  3bd00600  bneq r13, zero, 20
000a58  9f860300  addli r13, r7, 0
000a5c  130a4e05  setlt.u r20, r28, r20
000a60  37600a00  beq r20, zero, 24
000a64  5b050000  j 40
000a68  ab064000  lui r13, 1024
000a6c  9796d300  or r13, r7, r13
000a70  130a4e05  setlt.u r20, r28, r20
000a74  3b600a00  bneq r20, zero, 24
000a78  9bc60301  srli r13, r7, 16
000a7c  9b861600  andi r13, r13, 1
000a80  8b93d310  add.s r7, r7, r13
000a84  8b93b311  add.s r7, r7, r27
000a88  97864300  and r13, r7, r4
000a8c  13036e04  setlt.u r6, r28, r6
000a90  37600300  beq r6, zero, 24
000a94  1303ce04  setlt.u r6, r28, r12
000a98  b7300300  beq r6, zero, 44
000a9c  93000e05  setlt.u r1, r28, r16
000aa0  3bfc00fe  bneq r1, zero, -228
000aa4  db070000  j 60
000aa8  1b430d01  srli r6, r26, 16
000aac  1b031300  andi r6, r6, 1
000ab0  0b136d10  add.s r6, r26, r6
000ab4  0b13b311  add.s r6, r6, r27
000ab8  170c4300  and r24, r6, r4
000abc  1303ce04  setlt.u r6, r28, r12
000ac0  3b7f03fe  bneq r6, zero, -36
000ac4  9bc20001  srli r5, r1, 16
000ac8  9b821200  andi r5, r5, 1
000acc  8b905010  add.s r1, r1, r5
000ad0  8b90b011  add.s r1, r1, r27
000ad4  97824000  and r5, r1, r4
000ad8  93000e05  setlt.u r1, r28, r16
000adc  bb8b00fe  bneq r1, zero, -288
000ae0  9b400501  srli r1, r10, 16
000ae4  9b801000  andi r1, r1, 1
000ae8  8b101510  add.s r1, r10, r1
000aec  8b90b011  add.s r1, r1, r27
000af0  178b4000  and r22, r1, r4
000af4  5bd9ffff  j -312
000af8  00200100  mfence { sm }
000afc  00360002  core_id r12
000b00  eb598ffe  load.d r[20:21], -24(r30)
000b04  9f100000  addli r1, zero, 1
000b08  3b1616fe  bneq r12, r1, -636
000b0c  9f001000  addli r1, zero, 8
000b10  3d000000  xfence
000b14  00a00300  mfence { lm, sm, gm }
000b18  33810028  zext_int2long r[3:4], r1
000b1c  5b040000  j 32
000b20  9f701000  addli r1, zero, 15
000b24  eb528fff  load.d r[6:7], -8(r30)
000b28  1f790000  addli r18, zero, 7
000b2c  b3800028  zext_int2long r[2:3], r1
000b30  93a01204  setlt.ul r1, r[6:7], r[2:3]
000b34  27910200  addli.d r[3:4], r[6:7], 1
000b38  37970000  beq r1, zero, 452
000b3c  733c2ffe  store.d r[3:4], -8(r30)
000b40  17312103  sll.d r[3:4], r[3:4], r18
000b44  bbd1b800  bneq r17, r11, 116
000b48  33060028  zext_int2long r[13:14], zero
000b4c  5b030000  j 24
000b50  13238604  setlt.ul r6, r[13:14], r[9:10]
000b54  8b901810  add.s r1, r17, r1
000b58  27160600  addli.d r[13:14], r[13:14], 1
000b5c  73e05000  stores.w r5, 0(r1)
000b60  370f03fe  beq r6, zero, -64
000b64  8b222610  add.ul r[6:7], r[13:14], r[3:4]
000b68  9bb02200  slli r1, r5, 2
000b6c  8b921510  add.s r5, r11, r1
000b70  6fc30200  loads.w r6, 0(r5)
000b74  97037301  and r7, r6, r23
000b78  93827c04  setlt.u r5, r25, r7
000b7c  3bd00200  bneq r5, zero, 20
000b80  9f020300  addli r5, r6, 0
000b84  93037e04  setlt.u r7, r28, r7
000b88  3baf03fe  bneq r7, zero, -56
000b8c  db020000  j 20
000b90  ab024000  lui r5, 1024
000b94  97125300  or r5, r6, r5
000b98  93037e04  setlt.u r7, r28, r7
000b9c  bbde03fe  bneq r7, zero, -76
000ba0  9b420301  srli r5, r6, 16
000ba4  9b821200  andi r5, r5, 1
000ba8  8b125310  add.s r5, r6, r5
000bac  8b92b211  add.s r5, r5, r27
000bb0  97824200  and r5, r5, r4
000bb4  dbf3ffff  j -100
000bb8  33090028  zext_int2long r[19:20], zero
000bbc  db040000  j 36
000bc0  27490900  addli.d r[19:20], r[19:20], 4
000bc4  0b935811  add.s r6, r17, r21
000bc8  9320e900  seteq.d r1, r[19:20], r[15:16]
000bcc  73666301  stores.w r22, 12(r6)
000bd0  73645300  stores.w r5, 8(r6)
000bd4  73628301  stores.w r24, 4(r6)
000bd8  7360d300  stores.w r13, 0(r6)
000bdc  3b9d00fe  bneq r1, zero, -188
000be0  8b222910  add.ul r[6:7], r[19:20], r[3:4]
000be4  9bba2200  slli r21, r5, 2
000be8  8b965511  add.s r13, r11, r21
000bec  6fc5c600  loads.w r10, 12(r13)
000bf0  17087501  and r16, r10, r23
000bf4  93800c05  setlt.u r1, r25, r16
000bf8  3bb00000  bneq r1, zero, 12
000bfc  1f0b0500  addli r22, r10, 0
000c00  db010000  j 12
000c04  ab004000  lui r1, 1024
000c08  171b1500  or r22, r10, r1
000c0c  efc08600  loads.w r1, 8(r13)
000c10  17867001  and r12, r1, r23
000c14  9382cc04  setlt.u r5, r25, r12
000c18  3bb00200  bneq r5, zero, 12
000c1c  9f820000  addli r5, r1, 0
000c20  db010000  j 12
000c24  ab024000  lui r5, 1024
000c28  97925000  or r5, r1, r5
000c2c  6fcd4600  loads.w r26, 4(r13)
000c30  17037d01  and r6, r26, r23
000c34  93836c04  setlt.u r7, r25, r6
000c38  3bb00300  bneq r7, zero, 12
000c3c  1f0c0d00  addli r24, r26, 0
000c40  db010000  j 12
000c44  ab034000  lui r7, 1024
000c48  171c7d00  or r24, r26, r7
000c4c  efc30600  loads.w r7, 0(r13)
000c50  178a7301  and r20, r7, r23
000c54  93864c05  setlt.u r13, r25, r20
000c58  3b810600  bneq r13, zero, 64
000c5c  9f860300  addli r13, r7, 0
000c60  130a4e05  setlt.u r20, r28, r20
000c64  3b600a00  bneq r20, zero, 24
000c68  9bc60301  srli r13, r7, 16
000c6c  9b861600  andi r13, r13, 1
000c70  8b93d310  add.s r7, r7, r13
000c74  8b93b311  add.s r7, r7, r27
000c78  97864300  and r13, r7, r4
000c7c  13036e04  setlt.u r6, r28, r6
000c80  b7300300  beq r6, zero, 44
000c84  1303ce04  setlt.u r6, r28, r12
000c88  37010300  beq r6, zero, 64
000c8c  93000e05  setlt.u r1, r28, r16
000c90  bbcc00fe  bneq r1, zero, -208
000c94  5b0a0000  j 80
000c98  ab064000  lui r13, 1024
000c9c  9796d300  or r13, r7, r13
000ca0  130a4e05  setlt.u r20, r28, r20
000ca4  371f0afe  beq r20, zero, -60
000ca8  dbfaffff  j -44
000cac  1b430d01  srli r6, r26, 16
000cb0  1b031300  andi r6, r6, 1
000cb4  0b136d10  add.s r6, r26, r6
000cb8  0b13b311  add.s r6, r6, r27
000cbc  170c4300  and r24, r6, r4
000cc0  1303ce04  setlt.u r6, r28, r12
000cc4  3b2f03fe  bneq r6, zero, -56
000cc8  9bc20001  srli r5, r1, 16
000ccc  9b821200  andi r5, r5, 1
000cd0  8b905010  add.s r1, r1, r5
000cd4  8b90b011  add.s r1, r1, r27
000cd8  97824000  and r5, r1, r4
000cdc  93000e05  setlt.u r1, r28, r16
000ce0  bb8b00fe  bneq r1, zero, -288
000ce4  9b400501  srli r1, r10, 16
000ce8  9b801000  andi r1, r1, 1
000cec  8b101510  add.s r1, r10, r1
000cf0  8b90b011  add.s r1, r1, r27
000cf4  178b4000  and r22, r1, r4
000cf8  5bd9ffff  j -312
000cfc  00200100  mfence { sm }
000d00  00360002  core_id r12
000d04  eb598ffe  load.d r[20:21], -24(r30)
000d08  e300afff  loadli.w r1,  -48(r30)
000d0c  37ae00fc  beq r1, zero, -1144
000d10  9f002000  addli r1, zero, 16
000d14  3d000000  xfence
000d18  00a00300  mfence { lm, sm, gm }
000d1c  33810028  zext_int2long r[3:4], r1
000d20  5b040000  j 32
000d24  9f702000  addli r1, zero, 23
000d28  eb528fff  load.d r[6:7], -8(r30)
000d2c  1f790000  addli r18, zero, 7
000d30  b3800028  zext_int2long r[2:3], r1
000d34  93a01204  setlt.ul r1, r[6:7], r[2:3]
000d38  27910200  addli.d r[3:4], r[6:7], 1
000d3c  37970000  beq r1, zero, 452
000d40  733c2ffe  store.d r[3:4], -8(r30)
000d44  17312103  sll.d r[3:4], r[3:4], r18
000d48  bbd1b800  bneq r17, r11, 116
000d4c  33060028  zext_int2long r[13:14], zero
000d50  5b030000  j 24
000d54  13238604  setlt.ul r6, r[13:14], r[9:10]
000d58  8b901810  add.s r1, r17, r1
000d5c  27160600  addli.d r[13:14], r[13:14], 1
000d60  73e05000  stores.w r5, 0(r1)
000d64  370f03fe  beq r6, zero, -64
000d68  8b222610  add.ul r[6:7], r[13:14], r[3:4]
000d6c  9bb02200  slli r1, r5, 2
000d70  8b921510  add.s r5, r11, r1
000d74  6fc30200  loads.w r6, 0(r5)
000d78  97037301  and r7, r6, r23
000d7c  93827c04  setlt.u r5, r25, r7
000d80  3bd00200  bneq r5, zero, 20
000d84  9f020300  addli r5, r6, 0
000d88  93037e04  setlt.u r7, r28, r7
000d8c  3baf03fe  bneq r7, zero, -56
000d90  db020000  j 20
000d94  ab024000  lui r5, 1024
000d98  97125300  or r5, r6, r5
000d9c  93037e04  setlt.u r7, r28, r7
000da0  bbde03fe  bneq r7, zero, -76
000da4  9b420301  srli r5, r6, 16
000da8  9b821200  andi r5, r5, 1
000dac  8b125310  add.s r5, r6, r5
000db0  8b92b211  add.s r5, r5, r27
000db4  97824200  and r5, r5, r4
000db8  dbf3ffff  j -100
000dbc  33090028  zext_int2long r[19:20], zero
000dc0  db040000  j 36
000dc4  27490900  addli.d r[19:20], r[19:20], 4
000dc8  0b935811  add.s r6, r17, r21
000dcc  9320e900  seteq.d r1, r[19:20], r[15:16]
000dd0  73666301  stores.w r22, 12(r6)
000dd4  73645300  stores.w r5, 8(r6)
000dd8  73628301  stores.w r24, 4(r6)
000ddc  7360d300  stores.w r13, 0(r6)
000de0  3b9d00fe  bneq r1, zero, -188
000de4  8b222910  add.ul r[6:7], r[19:20], r[3:4]
000de8  9bba2200  slli r21, r5, 2
000dec  8b965511  add.s r13, r11, r21
000df0  6fc5c600  loads.w r10, 12(r13)
000df4  17087501  and r16, r10, r23
000df8  93800c05  setlt.u r1, r25, r16
000dfc  3bb00000  bneq r1, zero, 12
000e00  1f0b0500  addli r22, r10, 0
000e04  db010000  j 12
000e08  ab004000  lui r1, 1024
000e0c  171b1500  or r22, r10, r1
000e10  efc08600  loads.w r1, 8(r13)
000e14  17867001  and r12, r1, r23
000e18  9382cc04  setlt.u r5, r25, r12
000e1c  3bb00200  bneq r5, zero, 12
000e20  9f820000  addli r5, r1, 0
000e24  db010000  j 12
000e28  ab024000  lui r5, 1024
000e2c  97925000  or r5, r1, r5
000e30  6fcd4600  loads.w r26, 4(r13)
000e34  17037d01  and r6, r26, r23
000e38  93836c04  setlt.u r7, r25, r6
000e3c  3bb00300  bneq r7, zero, 12
000e40  1f0c0d00  addli r24, r26, 0
000e44  db010000  j 12
000e48  ab034000  lui r7, 1024
000e4c  171c7d00  or r24, r26, r7
000e50  efc30600  loads.w r7, 0(r13)
000e54  178a7301  and r20, r7, r23
000e58  93864c05  setlt.u r13, r25, r20
000e5c  3b810600  bneq r13, zero, 64
000e60  9f860300  addli r13, r7, 0
000e64  130a4e05  setlt.u r20, r28, r20
000e68  3b600a00  bneq r20, zero, 24
000e6c  9bc60301  srli r13, r7, 16
000e70  9b861600  andi r13, r13, 1
000e74  8b93d310  add.s r7, r7, r13
000e78  8b93b311  add.s r7, r7, r27
000e7c  97864300  and r13, r7, r4
000e80  13036e04  setlt.u r6, r28, r6
000e84  b7300300  beq r6, zero, 44
000e88  1303ce04  setlt.u r6, r28, r12
000e8c  37010300  beq r6, zero, 64
000e90  93000e05  setlt.u r1, r28, r16
000e94  bbcc00fe  bneq r1, zero, -208
000e98  5b0a0000  j 80
000e9c  ab064000  lui r13, 1024
000ea0  9796d300  or r13, r7, r13
000ea4  130a4e05  setlt.u r20, r28, r20
000ea8  371f0afe  beq r20, zero, -60
000eac  dbfaffff  j -44
000eb0  1b430d01  srli r6, r26, 16
000eb4  1b031300  andi r6, r6, 1
000eb8  0b136d10  add.s r6, r26, r6
000ebc  0b13b311  add.s r6, r6, r27
000ec0  170c4300  and r24, r6, r4
000ec4  1303ce04  setlt.u r6, r28, r12
000ec8  3b2f03fe  bneq r6, zero, -56
000ecc  9bc20001  srli r5, r1, 16
000ed0  9b821200  andi r5, r5, 1
000ed4  8b905010  add.s r1, r1, r5
000ed8  8b90b011  add.s r1, r1, r27
000edc  97824000  and r5, r1, r4
000ee0  93000e05  setlt.u r1, r28, r16
000ee4  bb8b00fe  bneq r1, zero, -288
000ee8  9b400501  srli r1, r10, 16
000eec  9b801000  andi r1, r1, 1
000ef0  8b101510  add.s r1, r10, r1
000ef4  8b90b011  add.s r1, r1, r27
000ef8  178b4000  and r22, r1, r4
000efc  5bd9ffff  j -312
000f00  00200100  mfence { sm }
000f04  00360002  core_id r12
000f08  eb598ffe  load.d r[20:21], -24(r30)
000f0c  e300cfff  loadli.w r1,  -32(r30)
000f10  37b600fc  beq r1, zero, -1652
000f14  9f003000  addli r1, zero, 24
000f18  3d000000  xfence
000f1c  00a00300  mfence { lm, sm, gm }
000f20  33810028  zext_int2long r[3:4], r1
000f24  5b040000  j 32
000f28  9f703000  addli r1, zero, 31
000f2c  eb528fff  load.d r[6:7], -8(r30)
000f30  1f790000  addli r18, zero, 7
000f34  b3800028  zext_int2long r[2:3], r1
000f38  93a01204  setlt.ul r1, r[6:7], r[2:3]
000f3c  27910200  addli.d r[3:4], r[6:7], 1
000f40  37970000  beq r1, zero, 452
000f44  733c2ffe  store.d r[3:4], -8(r30)
000f48  17312103  sll.d r[3:4], r[3:4], r18
000f4c  bbd1b800  bneq r17, r11, 116
000f50  33060028  zext_int2long r[13:14], zero
000f54  5b030000  j 24
000f58  13238604  setlt.ul r6, r[13:14], r[9:10]
000f5c  8b901810  add.s r1, r17, r1
000f60  27160600  addli.d r[13:14], r[13:14], 1
000f64  73e05000  stores.w r5, 0(r1)
000f68  370f03fe  beq r6, zero, -64
000f6c  8b222610  add.ul r[6:7], r[13:14], r[3:4]
000f70  9bb02200  slli r1, r5, 2
000f74  8b921510  add.s r5, r11, r1
000f78  6fc30200  loads.w r6, 0(r5)
000f7c  97037301  and r7, r6, r23
000f80  93827c04  setlt.u r5, r25, r7
000f84  3bd00200  bneq r5, zero, 20
000f88  9f020300  addli r5, r6, 0
000f8c  93037e04  setlt.u r7, r28, r7
000f90  3baf03fe  bneq r7, zero, -56
000f94  db020000  j 20
000f98  ab024000  lui r5, 1024
000f9c  97125300  or r5, r6, r5
000fa0  93037e04  setlt.u r7, r28, r7
000fa4  bbde03fe  bneq r7, zero, -76
000fa8  9b420301  srli r5, r6, 16
000fac  9b821200  andi r5, r5, 1
000fb0  8b125310  add.s r5, r6, r5
000fb4  8b92b211  add.s r5, r5, r27
000fb8  97824200  and r5, r5, r4
000fbc  dbf3ffff  j -100
000fc0  33090028  zext_int2long r[19:20], zero
000fc4  db040000  j 36
000fc8  27490900  addli.d r[19:20], r[19:20], 4
000fcc  0b935811  add.s r6, r17, r21
000fd0  9320e900  seteq.d r1, r[19:20], r[15:16]
000fd4  73666301  stores.w r22, 12(r6)
000fd8  73645300  stores.w r5, 8(r6)
000fdc  73628301  stores.w r24, 4(r6)
000fe0  7360d300  stores.w r13, 0(r6)
000fe4  3b9d00fe  bneq r1, zero, -188
000fe8  8b222910  add.ul r[6:7], r[19:20], r[3:4]
000fec  9bba2200  slli r21, r5, 2
000ff0  8b965511  add.s r13, r11, r21
000ff4  6fc5c600  loads.w r10, 12(r13)
000ff8  17087501  and r16, r10, r23
000ffc  93800c05  setlt.u r1, r25, r16
001000  3bb00000  bneq r1, zero, 12
001004  1f0b0500  addli r22, r10, 0
001008  db010000  j 12
00100c  ab004000  lui r1, 1024
001010  171b1500  or r22, r10, r1
001014  efc08600  loads.w r1, 8(r13)
001018  17867001  and r12, r1, r23
00101c  9382cc04  setlt.u r5, r25, r12
001020  3bb00200  bneq r5, zero, 12
001024  9f820000  addli r5, r1, 0
001028  db010000  j 12
00102c  ab024000  lui r5, 1024
001030  97925000  or r5, r1, r5
001034  6fcd4600  loads.w r26, 4(r13)
001038  17037d01  and r6, r26, r23
00103c  93836c04  setlt.u r7, r25, r6
001040  3bb00300  bneq r7, zero, 12
001044  1f0c0d00  addli r24, r26, 0
001048  db010000  j 12
00104c  ab034000  lui r7, 1024
001050  171c7d00  or r24, r26, r7
001054  efc30600  loads.w r7, 0(r13)
001058  178a7301  and r20, r7, r23
00105c  93864c05  setlt.u r13, r25, r20
001060  3b810600  bneq r13, zero, 64
001064  9f860300  addli r13, r7, 0
001068  130a4e05  setlt.u r20, r28, r20
00106c  3b600a00  bneq r20, zero, 24
001070  9bc60301  srli r13, r7, 16
001074  9b861600  andi r13, r13, 1
001078  8b93d310  add.s r7, r7, r13
00107c  8b93b311  add.s r7, r7, r27
001080  97864300  and r13, r7, r4
001084  13036e04  setlt.u r6, r28, r6
001088  b7300300  beq r6, zero, 44
00108c  1303ce04  setlt.u r6, r28, r12
001090  37010300  beq r6, zero, 64
001094  93000e05  setlt.u r1, r28, r16
001098  bbcc00fe  bneq r1, zero, -208
00109c  5b0a0000  j 80
0010a0  ab064000  lui r13, 1024
0010a4  9796d300  or r13, r7, r13
0010a8  130a4e05  setlt.u r20, r28, r20
0010ac  371f0afe  beq r20, zero, -60
0010b0  dbfaffff  j -44
0010b4  1b430d01  srli r6, r26, 16
0010b8  1b031300  andi r6, r6, 1
0010bc  0b136d10  add.s r6, r26, r6
0010c0  0b13b311  add.s r6, r6, r27
0010c4  170c4300  and r24, r6, r4
0010c8  1303ce04  setlt.u r6, r28, r12
0010cc  3b2f03fe  bneq r6, zero, -56
0010d0  9bc20001  srli r5, r1, 16
0010d4  9b821200  andi r5, r5, 1
0010d8  8b905010  add.s r1, r1, r5
0010dc  8b90b011  add.s r1, r1, r27
0010e0  97824000  and r5, r1, r4
0010e4  93000e05  setlt.u r1, r28, r16
0010e8  bb8b00fe  bneq r1, zero, -288
0010ec  9b400501  srli r1, r10, 16
0010f0  9b801000  andi r1, r1, 1
0010f4  8b101510  add.s r1, r10, r1
0010f8  8b90b011  add.s r1, r1, r27
0010fc  178b4000  and r22, r1, r4
001100  5bd9ffff  j -312
001104  00200100  mfence { sm }
001108  00360002  core_id r12
00110c  eb598ffe  load.d r[20:21], -24(r30)
001110  e300efff  loadli.w r1,  -16(r30)
001114  37ce00fa  beq r1, zero, -2160
001118  9f004000  addli r1, zero, 32
00111c  3d000000  xfence
001120  00a00300  mfence { lm, sm, gm }
001124  33810028  zext_int2long r[3:4], r1
001128  5b040000  j 32
00112c  9f704000  addli r1, zero, 39
001130  eb528fff  load.d r[6:7], -8(r30)
001134  1f790000  addli r18, zero, 7
001138  b3800028  zext_int2long r[2:3], r1
00113c  93a01204  setlt.ul r1, r[6:7], r[2:3]
001140  27910200  addli.d r[3:4], r[6:7], 1
001144  37970000  beq r1, zero, 452
001148  733c2ffe  store.d r[3:4], -8(r30)
00114c  17312103  sll.d r[3:4], r[3:4], r18
001150  bbd1b800  bneq r17, r11, 116
001154  33060028  zext_int2long r[13:14], zero
001158  5b030000  j 24
00115c  13238604  setlt.ul r6, r[13:14], r[9:10]
001160  8b901810  add.s r1, r17, r1
001164  27160600  addli.d r[13:14], r[13:14], 1
001168  73e05000  stores.w r5, 0(r1)
00116c  370f03fe  beq r6, zero, -64
001170  8b222610  add.ul r[6:7], r[13:14], r[3:4]
001174  9bb02200  slli r1, r5, 2
001178  8b921510  add.s r5, r11, r1
00117c  6fc30200  loads.w r6, 0(r5)
001180  97037301  and r7, r6, r23
001184  93827c04  setlt.u r5, r25, r7
001188  3bd00200  bneq r5, zero, 20
00118c  9f020300  addli r5, r6, 0
001190  93037e04  setlt.u r7, r28, r7
001194  3baf03fe  bneq r7, zero, -56
001198  db020000  j 20
00119c  ab024000  lui r5, 1024
0011a0  97125300  or r5, r6, r5
0011a4  93037e04  setlt.u r7, r28, r7
0011a8  bbde03fe  bneq r7, zero, -76
0011ac  9b420301  srli r5, r6, 16
0011b0  9b821200  andi r5, r5, 1
0011b4  8b125310  add.s r5, r6, r5
0011b8  8b92b211  add.s r5, r5, r27
0011bc  97824200  and r5, r5, r4
0011c0  dbf3ffff  j -100
0011c4  33090028  zext_int2long r[19:20], zero
0011c8  db040000  j 36
0011cc  27490900  addli.d r[19:20], r[19:20], 4
0011d0  0b935811  add.s r6, r17, r21
0011d4  9320e900  seteq.d r1, r[19:20], r[15:16]
0011d8  73666301  stores.w r22, 12(r6)
0011dc  73645300  stores.w r5, 8(r6)
0011e0  73628301  stores.w r24, 4(r6)
0011e4  7360d300  stores.w r13, 0(r6)
0011e8  3b9d00fe  bneq r1, zero, -188
0011ec  8b222910  add.ul r[6:7], r[19:20], r[3:4]
0011f0  9bba2200  slli r21, r5, 2
0011f4  8b965511  add.s r13, r11, r21
0011f8  6fc5c600  loads.w r10, 12(r13)
0011fc  17087501  and r16, r10, r23
001200  93800c05  setlt.u r1, r25, r16
001204  3bb00000  bneq r1, zero, 12
001208  1f0b0500  addli r22, r10, 0
00120c  db010000  j 12
001210  ab004000  lui r1, 1024
001214  171b1500  or r22, r10, r1
001218  efc08600  loads.w r1, 8(r13)
00121c  17867001  and r12, r1, r23
001220  9382cc04  setlt.u r5, r25, r12
001224  3bb00200  bneq r5, zero, 12
001228  9f820000  addli r5, r1, 0
00122c  db010000  j 12
001230  ab024000  lui r5, 1024
001234  97925000  or r5, r1, r5
001238  6fcd4600  loads.w r26, 4(r13)
00123c  17037d01  and r6, r26, r23
001240  93836c04  setlt.u r7, r25, r6
001244  3bb00300  bneq r7, zero, 12
001248  1f0c0d00  addli r24, r26, 0
00124c  db010000  j 12
001250  ab034000  lui r7, 1024
001254  171c7d00  or r24, r26, r7
001258  efc30600  loads.w r7, 0(r13)
00125c  178a7301  and r20, r7, r23
001260  93864c05  setlt.u r13, r25, r20
001264  3b810600  bneq r13, zero, 64
001268  9f860300  addli r13, r7, 0
00126c  130a4e05  setlt.u r20, r28, r20
001270  3b600a00  bneq r20, zero, 24
001274  9bc60301  srli r13, r7, 16
001278  9b861600  andi r13, r13, 1
00127c  8b93d310  add.s r7, r7, r13
001280  8b93b311  add.s r7, r7, r27
001284  97864300  and r13, r7, r4
001288  13036e04  setlt.u r6, r28, r6
00128c  b7300300  beq r6, zero, 44
001290  1303ce04  setlt.u r6, r28, r12
001294  37010300  beq r6, zero, 64
001298  93000e05  setlt.u r1, r28, r16
00129c  bbcc00fe  bneq r1, zero, -208
0012a0  5b0a0000  j 80
0012a4  ab064000  lui r13, 1024
0012a8  9796d300  or r13, r7, r13
0012ac  130a4e05  setlt.u r20, r28, r20
0012b0  371f0afe  beq r20, zero, -60
0012b4  dbfaffff  j -44
0012b8  1b430d01  srli r6, r26, 16
0012bc  1b031300  andi r6, r6, 1
0012c0  0b136d10  add.s r6, r26, r6
0012c4  0b13b311  add.s r6, r6, r27
0012c8  170c4300  and r24, r6, r4
0012cc  1303ce04  setlt.u r6, r28, r12
0012d0  3b2f03fe  bneq r6, zero, -56
0012d4  9bc20001  srli r5, r1, 16
0012d8  9b821200  andi r5, r5, 1
0012dc  8b905010  add.s r1, r1, r5
0012e0  8b90b011  add.s r1, r1, r27
0012e4  97824000  and r5, r1, r4
0012e8  93000e05  setlt.u r1, r28, r16
0012ec  bb8b00fe  bneq r1, zero, -288
0012f0  9b400501  srli r1, r10, 16
0012f4  9b801000  andi r1, r1, 1
0012f8  8b101510  add.s r1, r10, r1
0012fc  8b90b011  add.s r1, r1, r27
001300  178b4000  and r22, r1, r4
001304  5bd9ffff  j -312
001308  00200100  mfence { sm }
00130c  00360002  core_id r12
001310  eb598ffe  load.d r[20:21], -24(r30)
001314  9f500000  addli r1, zero, 5
001318  3b5616fa  bneq r12, r1, -2668
00131c  9f005000  addli r1, zero, 40
001320  3d000000  xfence
001324  00a00300  mfence { lm, sm, gm }
001328  33810028  zext_int2long r[3:4], r1
00132c  5b040000  j 32
001330  9f705000  addli r1, zero, 47
001334  eb528fff  load.d r[6:7], -8(r30)
001338  1f790000  addli r18, zero, 7
00133c  b3800028  zext_int2long r[2:3], r1
001340  93a01204  setlt.ul r1, r[6:7], r[2:3]
001344  27910200  addli.d r[3:4], r[6:7], 1
001348  37970000  beq r1, zero, 452
00134c  733c2ffe  store.d r[3:4], -8(r30)
001350  17312103  sll.d r[3:4], r[3:4], r18
001354  bbd1b800  bneq r17, r11, 116
001358  33060028  zext_int2long r[13:14], zero
00135c  5b030000  j 24
001360  13238604  setlt.ul r6, r[13:14], r[9:10]
001364  8b901810  add.s r1, r17, r1
001368  27160600  addli.d r[13:14], r[13:14], 1
00136c  73e05000  stores.w r5, 0(r1)
001370  370f03fe  beq r6, zero, -64
001374  8b222610  add.ul r[6:7], r[13:14], r[3:4]
001378  9bb02200  slli r1, r5, 2
00137c  8b921510  add.s r5, r11, r1
001380  6fc30200  loads.w r6, 0(r5)
001384  97037301  and r7, r6, r23
001388  93827c04  setlt.u r5, r25, r7
00138c  3bd00200  bneq r5, zero, 20
001390  9f020300  addli r5, r6, 0
001394  93037e04  setlt.u r7, r28, r7
001398  3baf03fe  bneq r7, zero, -56
00139c  db020000  j 20
0013a0  ab024000  lui r5, 1024
0013a4  97125300  or r5, r6, r5
0013a8  93037e04  setlt.u r7, r28, r7
0013ac  bbde03fe  bneq r7, zero, -76
0013b0  9b420301  srli r5, r6, 16
0013b4  9b821200  andi r5, r5, 1
0013b8  8b125310  add.s r5, r6, r5
0013bc  8b92b211  add.s r5, r5, r27
0013c0  97824200  and r5, r5, r4
0013c4  dbf3ffff  j -100
0013c8  33090028  zext_int2long r[19:20], zero
0013cc  db040000  j 36
0013d0  27490900  addli.d r[19:20], r[19:20], 4
0013d4  0b935811  add.s r6, r17, r21
0013d8  9320e900  seteq.d r1, r[19:20], r[15:16]
0013dc  73666301  stores.w r22, 12(r6)
0013e0  73645300  stores.w r5, 8(r6)
0013e4  73628301  stores.w r24, 4(r6)
0013e8  7360d300  stores.w r13, 0(r6)
0013ec  3b9d00fe  bneq r1, zero, -188
0013f0  8b222910  add.ul r[6:7], r[19:20], r[3:4]
0013f4  9bba2200  slli r21, r5, 2
0013f8  8b965511  add.s r13, r11, r21
0013fc  6fc5c600  loads.w r10, 12(r13)
001400  17087501  and r16, r10, r23
001404  93800c05  setlt.u r1, r25, r16
001408  3bb00000  bneq r1, zero, 12
00140c  1f0b0500  addli r22, r10, 0
001410  db010000  j 12
001414  ab004000  lui r1, 1024
001418  171b1500  or r22, r10, r1
00141c  efc08600  loads.w r1, 8(r13)
001420  17867001  and r12, r1, r23
001424  9382cc04  setlt.u r5, r25, r12
001428  3bb00200  bneq r5, zero, 12
00142c  9f820000  addli r5, r1, 0
001430  db010000  j 12
001434  ab024000  lui r5, 1024
001438  97925000  or r5, r1, r5
00143c  6fcd4600  loads.w r26, 4(r13)
001440  17037d01  and r6, r26, r23
001444  93836c04  setlt.u r7, r25, r6
001448  3bb00300  bneq r7, zero, 12
00144c  1f0c0d00  addli r24, r26, 0
001450  db010000  j 12
001454  ab034000  lui r7, 1024
001458  171c7d00  or r24, r26, r7
00145c  efc30600  loads.w r7, 0(r13)
001460  178a7301  and r20, r7, r23
001464  93864c05  setlt.u r13, r25, r20
001468  3b810600  bneq r13, zero, 64
00146c  9f860300  addli r13, r7, 0
001470  130a4e05  setlt.u r20, r28, r20
001474  3b600a00  bneq r20, zero, 24
001478  9bc60301  srli r13, r7, 16
00147c  9b861600  andi r13, r13, 1
001480  8b93d310  add.s r7, r7, r13
001484  8b93b311  add.s r7, r7, r27
001488  97864300  and r13, r7, r4
00148c  13036e04  setlt.u r6, r28, r6
001490  b7300300  beq r6, zero, 44
001494  1303ce04  setlt.u r6, r28, r12
001498  37010300  beq r6, zero, 64
00149c  93000e05  setlt.u r1, r28, r16
0014a0  bbcc00fe  bneq r1, zero, -208
0014a4  5b0a0000  j 80
0014a8  ab064000  lui r13, 1024
0014ac  9796d300  or r13, r7, r13
0014b0  130a4e05  setlt.u r20, r28, r20
0014b4  371f0afe  beq r20, zero, -60
0014b8  dbfaffff  j -44
0014bc  1b430d01  srli r6, r26, 16
0014c0  1b031300  andi r6, r6, 1
0014c4  0b136d10  add.s r6, r26, r6
0014c8  0b13b311  add.s r6, r6, r27
0014cc  170c4300  and r24, r6, r4
0014d0  1303ce04  setlt.u r6, r28, r12
0014d4  3b2f03fe  bneq r6, zero, -56
0014d8  9bc20001  srli r5, r1, 16
0014dc  9b821200  andi r5, r5, 1
0014e0  8b905010  add.s r1, r1, r5
0014e4  8b90b011  add.s r1, r1, r27
0014e8  97824000  and r5, r1, r4
0014ec  93000e05  setlt.u r1, r28, r16
0014f0  bb8b00fe  bneq r1, zero, -288
0014f4  9b400501  srli r1, r10, 16
0014f8  9b801000  andi r1, r1, 1
0014fc  8b101510  add.s r1, r10, r1
001500  8b90b011  add.s r1, r1, r27
001504  178b4000  and r22, r1, r4
001508  5bd9ffff  j -312
00150c  00200100  mfence { sm }
001510  00360002  core_id r12
001514  eb598ffe  load.d r[20:21], -24(r30)
001518  9f600000  addli r1, zero, 6
00151c  3b081600  bneq r12, r1, 512
001520  9f006000  addli r1, zero, 48
001524  3d000000  xfence
001528  00a00300  mfence { lm, sm, gm }
00152c  33810028  zext_int2long r[3:4], r1
001530  5b040000  j 32
001534  9f706000  addli r1, zero, 55
001538  eb528fff  load.d r[6:7], -8(r30)
00153c  1f790000  addli r18, zero, 7
001540  b3800028  zext_int2long r[2:3], r1
001544  93a01204  setlt.ul r1, r[6:7], r[2:3]
001548  27910200  addli.d r[3:4], r[6:7], 1
00154c  37970000  beq r1, zero, 452
001550  733c2ffe  store.d r[3:4], -8(r30)
001554  17312103  sll.d r[3:4], r[3:4], r18
001558  bbd1b800  bneq r17, r11, 116
00155c  33060028  zext_int2long r[13:14], zero
001560  5b030000  j 24
001564  13238604  setlt.ul r6, r[13:14], r[9:10]
001568  8b901810  add.s r1, r17, r1
00156c  27160600  addli.d r[13:14], r[13:14], 1
001570  73e05000  stores.w r5, 0(r1)
001574  370f03fe  beq r6, zero, -64
001578  8b222610  add.ul r[6:7], r[13:14], r[3:4]
00157c  9bb02200  slli r1, r5, 2
001580  8b921510  add.s r5, r11, r1
001584  6fc30200  loads.w r6, 0(r5)
001588  97037301  and r7, r6, r23
00158c  93827c04  setlt.u r5, r25, r7
001590  3bd00200  bneq r5, zero, 20
001594  9f020300  addli r5, r6, 0
001598  93037e04  setlt.u r7, r28, r7
00159c  3baf03fe  bneq r7, zero, -56
0015a0  db020000  j 20
0015a4  ab024000  lui r5, 1024
0015a8  97125300  or r5, r6, r5
0015ac  93037e04  setlt.u r7, r28, r7
0015b0  bbde03fe  bneq r7, zero, -76
0015b4  9b420301  srli r5, r6, 16
0015b8  9b821200  andi r5, r5, 1
0015bc  8b125310  add.s r5, r6, r5
0015c0  8b92b211  add.s r5, r5, r27
0015c4  97824200  and r5, r5, r4
0015c8  dbf3ffff  j -100
0015cc  33090028  zext_int2long r[19:20], zero
0015d0  db040000  j 36
0015d4  27490900  addli.d r[19:20], r[19:20], 4
0015d8  0b935811  add.s r6, r17, r21
0015dc  9320e900  seteq.d r1, r[19:20], r[15:16]
0015e0  73666301  stores.w r22, 12(r6)
0015e4  73645300  stores.w r5, 8(r6)
0015e8  73628301  stores.w r24, 4(r6)
0015ec  7360d300  stores.w r13, 0(r6)
0015f0  3b9d00fe  bneq r1, zero, -188
0015f4  8b222910  add.ul r[6:7], r[19:20], r[3:4]
0015f8  9bba2200  slli r21, r5, 2
0015fc  8b965511  add.s r13, r11, r21
001600  6fc5c600  loads.w r10, 12(r13)
001604  17087501  and r16, r10, r23
001608  93800c05  setlt.u r1, r25, r16
00160c  3bb00000  bneq r1, zero, 12
001610  1f0b0500  addli r22, r10, 0
001614  db010000  j 12
001618  ab004000  lui r1, 1024
00161c  171b1500  or r22, r10, r1
001620  efc08600  loads.w r1, 8(r13)
001624  17867001  and r12, r1, r23
001628  9382cc04  setlt.u r5, r25, r12
00162c  3bb00200  bneq r5, zero, 12
001630  9f820000  addli r5, r1, 0
001634  db010000  j 12
001638  ab024000  lui r5, 1024
00163c  97925000  or r5, r1, r5
001640  6fcd4600  loads.w r26, 4(r13)
001644  17037d01  and r6, r26, r23
001648  93836c04  setlt.u r7, r25, r6
00164c  3bb00300  bneq r7, zero, 12
001650  1f0c0d00  addli r24, r26, 0
001654  db010000  j 12
001658  ab034000  lui r7, 1024
00165c  171c7d00  or r24, r26, r7
001660  efc30600  loads.w r7, 0(r13)
001664  178a7301  and r20, r7, r23
001668  93864c05  setlt.u r13, r25, r20
00166c  3b810600  bneq r13, zero, 64
001670  9f860300  addli r13, r7, 0
001674  130a4e05  setlt.u r20, r28, r20
001678  3b600a00  bneq r20, zero, 24
00167c  9bc60301  srli r13, r7, 16
001680  9b861600  andi r13, r13, 1
001684  8b93d310  add.s r7, r7, r13
001688  8b93b311  add.s r7, r7, r27
00168c  97864300  and r13, r7, r4
001690  13036e04  setlt.u r6, r28, r6
001694  b7300300  beq r6, zero, 44
001698  1303ce04  setlt.u r6, r28, r12
00169c  37010300  beq r6, zero, 64
0016a0  93000e05  setlt.u r1, r28, r16
0016a4  bbcc00fe  bneq r1, zero, -208
0016a8  5b0a0000  j 80
0016ac  ab064000  lui r13, 1024
0016b0  9796d300  or r13, r7, r13
0016b4  130a4e05  setlt.u r20, r28, r20
0016b8  371f0afe  beq r20, zero, -60
0016bc  dbfaffff  j -44
0016c0  1b430d01  srli r6, r26, 16
0016c4  1b031300  andi r6, r6, 1
0016c8  0b136d10  add.s r6, r26, r6
0016cc  0b13b311  add.s r6, r6, r27
0016d0  170c4300  and r24, r6, r4
0016d4  1303ce04  setlt.u r6, r28, r12
0016d8  3b2f03fe  bneq r6, zero, -56
0016dc  9bc20001  srli r5, r1, 16
0016e0  9b821200  andi r5, r5, 1
0016e4  8b905010  add.s r1, r1, r5
0016e8  8b90b011  add.s r1, r1, r27
0016ec  97824000  and r5, r1, r4
0016f0  93000e05  setlt.u r1, r28, r16
0016f4  bb8b00fe  bneq r1, zero, -288
0016f8  9b400501  srli r1, r10, 16
0016fc  9b801000  andi r1, r1, 1
001700  8b101510  add.s r1, r10, r1
001704  8b90b011  add.s r1, r1, r27
001708  178b4000  and r22, r1, r4
00170c  5bd9ffff  j -312
001710  00200100  mfence { sm }
001714  00360002  core_id r12
001718  eb598ffe  load.d r[20:21], -24(r30)
00171c  b3000028  zext_int2long r[2:3], zero
001720  73381ffe  store.d r[2:3], -16(r30)
001724  e340afff  loadli.w r1,  -44(r30)
001728  37980000  beq r1, zero, 516
00172c  9f007000  addli r1, zero, 56
001730  3d000000  xfence
001734  00a00300  mfence { lm, sm, gm }
001738  33810028  zext_int2long r[3:4], r1
00173c  5b040000  j 32
001740  9f707000  addli r1, zero, 63
001744  eb528fff  load.d r[6:7], -8(r30)
001748  1f790000  addli r18, zero, 7
00174c  b3800028  zext_int2long r[2:3], r1
001750  93a01204  setlt.ul r1, r[6:7], r[2:3]
001754  27910200  addli.d r[3:4], r[6:7], 1
001758  37a70000  beq r1, zero, 456
00175c  9f700000  addli r1, zero, 7
001760  733c2ffe  store.d r[3:4], -8(r30)
001764  17391102  sll.d r[19:20], r[3:4], r1
001768  bbd1b800  bneq r17, r11, 116
00176c  b3020028  zext_int2long r[6:7], zero
001770  5b030000  j 24
001774  93a18204  setlt.ul r3, r[6:7], r[9:10]
001778  8b901810  add.s r1, r17, r1
00177c  a7920200  addli.d r[6:7], r[6:7], 1
001780  73e02000  stores.w r2, 0(r1)
001784  b7fe01fe  beq r3, zero, -68
001788  8ba02211  add.ul r[2:3], r[6:7], r[19:20]
00178c  9bb02000  slli r1, r1, 2
001790  0b911510  add.s r2, r11, r1
001794  ef410100  loads.w r3, 0(r2)
001798  97837101  and r7, r3, r23
00179c  13817c04  setlt.u r2, r25, r7
0017a0  3b500100  bneq r2, zero, 20
0017a4  1f810100  addli r2, r3, 0
0017a8  93037e04  setlt.u r7, r28, r7
0017ac  3baf03fe  bneq r7, zero, -56
0017b0  db020000  j 20
0017b4  2b014000  lui r2, 1024
0017b8  17912100  or r2, r3, r2
0017bc  93037e04  setlt.u r7, r28, r7
0017c0  bbde03fe  bneq r7, zero, -76
0017c4  1bc10101  srli r2, r3, 16
0017c8  1b011100  andi r2, r2, 1
0017cc  0b912110  add.s r2, r3, r2
0017d0  0b11b111  add.s r2, r2, r27
0017d4  17014100  and r2, r2, r4
0017d8  dbf3ffff  j -100
0017dc  6b530fff  load.d r[7:8], -16(r30)
0017e0  db040000  j 36
0017e4  27430300  addli.d r[7:8], r[7:8], 4
0017e8  8b91a811  add.s r3, r17, r26
0017ec  1321e300  seteq.d r2, r[7:8], r[15:16]
0017f0  73e60101  stores.w r16, 12(r3)
0017f4  73e4d100  stores.w r13, 8(r3)
0017f8  73e21100  stores.w r1, 4(r3)
0017fc  73e0c100  stores.w r12, 0(r3)
001800  3b0d01fe  bneq r2, zero, -192
001804  8b202311  add.ul r[2:3], r[7:8], r[19:20]
001808  1bbd2000  slli r26, r1, 2
00180c  0b96a511  add.s r12, r11, r26
001810  6f45c600  loads.w r10, 12(r12)
001814  97027501  and r5, r10, r23
001818  93805c04  setlt.u r1, r25, r5
00181c  3bb00000  bneq r1, zero, 12
001820  1f080500  addli r16, r10, 0
001824  db010000  j 12
001828  ab004000  lui r1, 1024
00182c  17181500  or r16, r10, r1
001830  6f4c8600  loads.w r24, 8(r12)
001834  970a7c01  and r21, r24, r23
001838  93805c05  setlt.u r1, r25, r21
00183c  3bb00000  bneq r1, zero, 12
001840  9f060c00  addli r13, r24, 0
001844  db010000  j 12
001848  ab004000  lui r1, 1024
00184c  97161c00  or r13, r24, r1
001850  6f4b4600  loads.w r22, 4(r12)
001854  17017b01  and r2, r22, r23
001858  93802c04  setlt.u r1, r25, r2
00185c  3bb00000  bneq r1, zero, 12
001860  9f000b00  addli r1, r22, 0
001864  db010000  j 12
001868  ab004000  lui r1, 1024
00186c  97101b00  or r1, r22, r1
001870  ef410600  loads.w r3, 0(r12)
001874  178a7101  and r20, r3, r23
001878  13864c05  setlt.u r12, r25, r20
00187c  3b010600  bneq r12, zero, 64
001880  1f860100  addli r12, r3, 0
001884  130a4e05  setlt.u r20, r28, r20
001888  3b600a00  bneq r20, zero, 24
00188c  1bc60101  srli r12, r3, 16
001890  1b061600  andi r12, r12, 1
001894  8b91c110  add.s r3, r3, r12
001898  8b91b111  add.s r3, r3, r27
00189c  17864100  and r12, r3, r4
0018a0  13012e04  setlt.u r2, r28, r2
0018a4  b7300100  beq r2, zero, 44
0018a8  13015e05  setlt.u r2, r28, r21
0018ac  37010100  beq r2, zero, 64
0018b0  13015e04  setlt.u r2, r28, r5
0018b4  bb4c01fe  bneq r2, zero, -208
0018b8  5b0a0000  j 80
0018bc  2b064000  lui r12, 1024
0018c0  1796c100  or r12, r3, r12
0018c4  130a4e05  setlt.u r20, r28, r20
0018c8  371f0afe  beq r20, zero, -60
0018cc  dbfaffff  j -44
0018d0  9b400b01  srli r1, r22, 16
0018d4  9b801000  andi r1, r1, 1
0018d8  8b101b10  add.s r1, r22, r1
0018dc  8b90b011  add.s r1, r1, r27
0018e0  97804000  and r1, r1, r4
0018e4  13015e05  setlt.u r2, r28, r21
0018e8  3b2f01fe  bneq r2, zero, -56
0018ec  1b410c01  srli r2, r24, 16
0018f0  1b011100  andi r2, r2, 1
0018f4  0b112c10  add.s r2, r24, r2
0018f8  0b11b111  add.s r2, r2, r27
0018fc  97064100  and r13, r2, r4
001900  13015e04  setlt.u r2, r28, r5
001904  bb0b01fe  bneq r2, zero, -288
001908  1b410501  srli r2, r10, 16
00190c  1b011100  andi r2, r2, 1
001910  0b112510  add.s r2, r10, r2
001914  0b11b111  add.s r2, r2, r27
001918  17084100  and r16, r2, r4
00191c  5bd9ffff  j -312
001920  00200100  mfence { sm }
001924  00360002  core_id r12
001928  eb598ffe  load.d r[20:21], -24(r30)
00192c  9f70f001  addli r1, zero, 255
001930  80a20004  csr_set csr5, r1
001934  00e00200  sync_core
001938  e300cfff  loadli.w r1,  -32(r30)
00193c  3ba300f4  bneq r1, zero, -5944
001940  e344cfff  loadli.w r9,  -28(r30)
001944  1f088000  addli r16, zero, 64
001948  9f180000  addli r17, zero, 1
00194c  3b5306f4  bneq r12, zero, -5932
001950  e3407fff  loadli.w r1,  -68(r30)
001954  1f010007  addli r2, zero, 896
001958  eb540fff  load.d r[10:11], -16(r30)
00195c  33010128  zext_int2long r[3:4], r2
001960  9bb07000  slli r1, r1, 7
001964  b3820028  zext_int2long r[6:7], r1
001968  e3409fff  loadli.w r1,  -52(r30)
00196c  0ba12240  min.ul r[3:4], r[6:7], r[3:4]
001970  9bb06000  slli r1, r1, 6
001974  b3930028  sext_int2long r[8:9], r1
001978  a7000101  addli.d r[2:3], r[3:4], 128
00197c  9f112000  addli r3, zero, 17
001980  8bb49340  min.sl r[10:11], r[8:9], r[10:11]
001984  8ba05048  max.ul r[2:3], r[2:3], r[6:7]
001988  a7848400  addli.d r[10:11], r[10:11], 64
00198c  8bb05018  sub.sl r[2:3], r[2:3], r[6:7]
001990  8bb27448  max.sl r[6:7], r[10:11], r[8:9]
001994  8ba0e040  min.ul r[2:3], r[2:3], r[15:16]
001998  b3040828  zext_int2long r[10:11], r16
00199c  eb560f01  load.d r[14:15], 16(r30)
0019a0  8bb27218  sub.sl r[6:7], r[6:7], r[8:9]
0019a4  97b33902  sll.d r[8:9], r[20:21], r3
0019a8  9f411000  addli r3, zero, 12
0019ac  8bb29240  min.sl r[6:7], r[6:7], r[10:11]
0019b0  eb540ffc  load.d r[10:11], -64(r30)
0019b4  8ba37610  add.ul r[8:9], r[14:15], r[8:9]
0019b8  7d900100  xwait r3, 0
0019bc  ab010500  lui r3, 80
0019c0  9b910104  ori r3, r3, 64
0019c4  8ba39310  add.ul r[8:9], r[8:9], r[10:11]
0019c8  1f550000  addli r10, zero, 5
0019cc  9ff43000  addli r9, r1, 31
0019d0  9bb01000  slli r1, r1, 1
0019d4  1f010001  addli r2, zero, 128
0019d8  8b913510  add.s r3, r11, r3
0019dc  1d000500  lock zero, r10
0019e0  9b80e003  andi r1, r1, 62
0019e4  95880800  dma_cfg r17, r17, zero, 0
0019e8  15800802  dma_cfg zero, r17, zero, 1
0019ec  15040004  dma_cfg r8, zero, zero, 2
0019f0  95830107  dma_cfg r7, r3, r16, 3
0019f4  9bc15400  srli r3, r9, 5
0019f8  e344cfff  loadli.w r9,  -28(r30)
0019fc  15083108  dma_cfg r16, r2, r3, 4
001a00  1f010004  addli r2, zero, 512
001a04  9f010010  addli r3, zero, 2048
001a08  9501510a  dma_cfg r3, r2, r5, 5
001a0c  15001010  dma_cfg zero, zero, r1, 8
001a10  35000000  dma_run zero
001a14  1500100b  dma_cfg zero, zero, r17, 5
001a18  9f501000  addli r1, zero, 13
001a1c  15000010  dma_cfg zero, zero, zero, 8
001a20  1d100500  unlock r10
001a24  7d800000  xsignal r1, 0
001a28  5bfffcff  j -6152
001a2c  9f010000  addli r3, zero, 0
001a30  9f100000  addli r1, zero, 1
001a34  1f110000  addli r2, zero, 1
001a38  9f321000  addli r5, zero, 11
001a3c  7d900600  xwait r13, 0
001a40  7d100700  xwait r14, 0
001a44  7d900200  xwait r5, 0
001a48  9bb2e100  slli r5, r3, 14
001a4c  9bb18100  slli r3, r3, 8
001a50  1d800000  lock zero, r1
001a54  09080801  mm_cfg r16, r16, r16, 0
001a58  9792b200  or r5, r5, r11
001a5c  9791b100  or r3, r3, r11
001a60  89861604  mm_cfg r13, r13, r1, 2
001a64  a9015310  mm r3, r6, r5, 8
001a68  9b021100  andi r5, r2, 1
001a6c  9f110000  addli r3, zero, 1
001a70  1f010000  addli r2, zero, 0
001a74  1d900000  unlock r1
001a78  3bcf02fe  bneq r5, zero, -48
001a7c  9f500000  addli r1, zero, 5
001a80  670e0ffe  storeli.w zero, -32(r30)
001a84  674d0ffe  storeli.w zero, -44(r30)
001a88  7d800000  xsignal r1, 0
001a8c  9f101000  addli r1, zero, 9
001a90  7d800000  xsignal r1, 0
001a94  9f100000  addli r1, zero, 1
001a98  670f1ffe  storeli.w r1, -16(r30)
001a9c  9f201000  addli r1, zero, 10
001aa0  7d800000  xsignal r1, 0
001aa4  5bb6fdff  j -4688
001aa8  9f201000  addli r1, zero, 10
001aac  674d0ffe  storeli.w zero, -44(r30)
001ab0  670f0ffe  storeli.w zero, -16(r30)
001ab4  7d900000  xwait r1, 0
001ab8  9f100000  addli r1, zero, 1
001abc  670e1ffe  storeli.w r1, -32(r30)
001ac0  7d900700  xwait r15, 0
001ac4  5bb2fdff  j -4720
001ac8  670e0ffe  storeli.w zero, -32(r30)
001acc  674d0ffe  storeli.w zero, -44(r30)
001ad0  670f0ffe  storeli.w zero, -16(r30)
001ad4  5bb0fdff  j -4736
001ad8  7d000000  xsignal zero, 0
001adc  bb600600  bneq r12, zero, 56
001ae0  9f200000  addli r1, zero, 2
001ae4  7d100000  xwait zero, 0
001ae8  7d100000  xwait zero, 0
001aec  7d100000  xwait zero, 0
001af0  7d100000  xwait zero, 0
001af4  7d100000  xwait zero, 0
001af8  7d100000  xwait zero, 0
001afc  7d100000  xwait zero, 0
001b00  7d100000  xwait zero, 0
001b04  1d800000  lock zero, r1
001b08  0d000020  ew_cfg zero, zero, zero, 16
001b0c  1d900000  unlock r1
001b10  7d400000  xsignal_mode_cfg zero
001b14  9f8eae00  addli sp, sp, 80
001b18  00a00300  mfence { lm, sm, gm }
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
001c4c  00100000  exit
001c50  00100000  exit
001c54  00100000  exit
001c58  00100000  exit
001c5c  00100000  exit
001c60  00100000  exit
001c64  00100000  exit
001c68  00100000  exit
001c6c  00100000  exit
001c70  00100000  exit
001c74  00100000  exit
001c78  00100000  exit
001c7c  00100000  exit
001c80  00100000  exit
001c84  00100000  exit
001c88  00100000  exit
001c8c  00100000  exit
001c90  00100000  exit
001c94  00100000  exit
001c98  00100000  exit
001c9c  00100000  exit
001ca0  00100000  exit
001ca4  00100000  exit
001ca8  00100000  exit
001cac  00100000  exit
001cb0  00100000  exit
001cb4  00100000  exit
001cb8  00100000  exit
001cbc  00100000  exit
001cc0  00100000  exit
001cc4  00100000  exit
001cc8  00100000  exit
001ccc  00100000  exit
001cd0  00100000  exit
001cd4  00100000  exit
001cd8  00100000  exit
001cdc  00100000  exit
001ce0  00100000  exit
001ce4  00100000  exit
001ce8  00100000  exit
001cec  00100000  exit
001cf0  00100000  exit
001cf4  00100000  exit
001cf8  00100000  exit
001cfc  00100000  exit
001d00  00100000  exit
001d04  00100000  exit
001d08  00100000  exit
001d0c  00100000  exit
001d10  00100000  exit
001d14  00100000  exit
001d18  00100000  exit
001d1c  00100000  exit
001d20  00100000  exit
001d24  00100000  exit
001d28  00100000  exit
001d2c  00100000  exit
001d30  00100000  exit
001d34  00100000  exit
001d38  00100000  exit
001d3c  00100000  exit
001d40  00100000  exit
001d44  00100000  exit
001d48  00100000  exit
001d4c  00100000  exit
001d50  00100000  exit
001d54  00100000  exit
001d58  00100000  exit
001d5c  00100000  exit
