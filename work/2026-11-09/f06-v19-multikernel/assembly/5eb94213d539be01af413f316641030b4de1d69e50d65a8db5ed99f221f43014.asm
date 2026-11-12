; SHA-256 5eb94213d539be01af413f316641030b4de1d69e50d65a8db5ed99f221f43014
; P800 SDNN · XTDK LLVM 19 · 1599 / 1599 words decoded
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
0000b4  9f8edefe  addli sp, sp, -152
0000b8  9f100000  addli r1, zero, 1
0000bc  00360002  core_id r12
0000c0  1f8fbe00  addli r30, sp, 88
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600600  beq r12, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b170000  j 184
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
00011c  7d800000  xsignal r1, 0
000120  7d000100  xsignal r2, 0
000124  7d000100  xsignal r2, 0
000128  7d000100  xsignal r2, 0
00012c  7d000100  xsignal r2, 0
000130  7d000100  xsignal r2, 0
000134  9f300000  addli r1, zero, 3
000138  1f111000  addli r2, zero, 9
00013c  7d800000  xsignal r1, 0
000140  7d800000  xsignal r1, 0
000144  7d800000  xsignal r1, 0
000148  7d800000  xsignal r1, 0
00014c  7d800000  xsignal r1, 0
000150  7d000100  xsignal r2, 0
000154  7d000100  xsignal r2, 0
000158  7d000100  xsignal r2, 0
00015c  7d000100  xsignal r2, 0
000160  7d000100  xsignal r2, 0
000164  9f700000  addli r1, zero, 7
000168  1f511000  addli r2, zero, 13
00016c  7d800000  xsignal r1, 0
000170  7d800000  xsignal r1, 0
000174  7d800000  xsignal r1, 0
000178  7d800000  xsignal r1, 0
00017c  7d800000  xsignal r1, 0
000180  7d000100  xsignal r2, 0
000184  7d000100  xsignal r2, 0
000188  7d000100  xsignal r2, 0
00018c  7d000100  xsignal r2, 0
000190  7d000100  xsignal r2, 0
000194  e3003f00  loadli.w r1,  24(r30)
000198  63413f00  loadli.w r2,  28(r30)
00019c  00d20002  load_param_i r4, 1
0001a0  e3014f00  loadli.w r3,  32(r30)
0001a4  8b101120  mul.s r1, r2, r1
0001a8  1f010200  addli r2, r4, 0
0001ac  0b913050  fmac.s r2, r1, r3
0001b0  8b913020  mul.s r3, r1, r3
0001b4  1f71f1ff  addli r2, r2, -1
0001b8  0b114130  div.s r2, r2, r4
0001bc  00520002  load_param_i r4, 0
0001c0  8b104120  mul.s r1, r2, r4
0001c4  0b114150  fmac.s r2, r2, r4
0001c8  0b113140  min.s r2, r2, r3
0001cc  cb22110a  ble.s r2, r1, 5288
0001d0  33110128  sext_int2long r[3:4], r2
0001d4  b3920028  sext_int2long r[6:7], r1
0001d8  abf0ff7f  lui r1, 524287
0001dc  9f560000  addli r13, zero, 5
0001e0  1f088000  addli r16, zero, 64
0001e4  1f1a0000  addli r20, zero, 1
0001e8  9f0a1000  addli r21, zero, 8
0001ec  9f730000  addli r7, zero, 7
0001f0  1f5b1000  addli r22, zero, 13
0001f4  1f3c0000  addli r24, zero, 3
0001f8  1f4d0000  addli r26, zero, 4
0001fc  ab094000  lui r19, 1024
000200  ab0c807f  lui r25, 522240
000204  2b02ffff  lui r4, 1048560
000208  73342ffa  store.d r[3:4], -88(r30)
00020c  9b9bf0ff  ori r23, r1, 4095
000210  ab700000  lui r1, 7
000214  2bf17f7f  lui r2, 522239
000218  9f010000  addli r3, zero, 0
00021c  9b9df0ff  ori r27, r1, 4095
000220  1b1ef1ff  ori r28, r2, 4095
000224  5b090000  j 72
000228  9f301000  addli r1, zero, 11
00022c  9f560000  addli r13, zero, 5
000230  1f088000  addli r16, zero, 64
000234  1f1a0000  addli r20, zero, 1
000238  9f0a1000  addli r21, zero, 8
00023c  1f5b1000  addli r22, zero, 13
000240  1f4d0000  addli r26, zero, 4
000244  7d800000  xsignal r1, 0
000248  9f401000  addli r1, zero, 12
00024c  7d800000  xsignal r1, 0
000250  eb520ffe  load.d r[6:7], -32(r30)
000254  eb508ffa  load.d r[2:3], -88(r30)
000258  e341dfff  loadli.w r3,  -20(r30)
00025c  a7920200  addli.d r[6:7], r[6:7], 1
000260  9f910100  addli r3, r3, 1
000264  93b01204  setlt.sl r1, r[6:7], r[2:3]
000268  37b0000a  beq r1, zero, 5132
00026c  e3004f00  loadli.w r1,  32(r30)
000270  63413f00  loadli.w r2,  28(r30)
000274  8b98d138  mod.s r17, r3, r13
000278  73305ffe  store.d r[6:7], -32(r30)
00027c  e74e3ffe  storeli.w r3, -20(r30)
000280  8b901230  div.s r1, r5, r1
000284  1bb7e800  slli r14, r17, 14
000288  8b952030  div.s r11, r1, r2
00028c  8b970531  div.s r15, r11, r16
000290  9bb03700  slli r1, r15, 3
000294  0b111a18  sub.s r2, r20, r1
000298  0b195141  min.s r18, r2, r21
00029c  0b912539  mod.s r2, r11, r18
0002a0  8b101110  add.s r1, r2, r1
0002a4  b3820028  zext_int2long r[6:7], r1
0002a8  674c1ffe  storeli.w r1, -60(r30)
0002ac  ab800200  lui r1, 40
0002b0  0b111710  add.s r2, r14, r1
0002b4  9f600000  addli r1, zero, 6
0002b8  73345ffc  store.d r[6:7], -56(r30)
0002bc  3b3a1600  bneq r12, r1, 652
0002c0  6b540f00  load.d r[9:10], 0(r30)
0002c4  97b26203  sll.d r[6:7], r[6:7], r22
0002c8  7d100c00  xwait r24, 0
0002cc  8b225410  add.ul r[6:7], r[9:10], r[6:7]
0002d0  3f743d00  blt.s r26, r3, 284
0002d4  1d800600  lock zero, r13
0002d8  9f210000  addli r3, zero, 2
0002dc  9f600000  addli r1, zero, 6
0002e0  15000014  dma_cfg zero, zero, zero, 10
0002e4  15004015  dma_cfg zero, zero, r20, 10
0002e8  15003014  dma_cfg zero, zero, r3, 10
0002ec  15008015  dma_cfg zero, zero, r24, 10
0002f0  1500a015  dma_cfg zero, zero, r26, 10
0002f4  1500d014  dma_cfg zero, zero, r13, 10
0002f8  15001014  dma_cfg zero, zero, r1, 10
0002fc  9f101000  addli r1, zero, 9
000300  15007014  dma_cfg zero, zero, r7, 10
000304  15005015  dma_cfg zero, zero, r21, 10
000308  15001014  dma_cfg zero, zero, r1, 10
00030c  9f201000  addli r1, zero, 10
000310  15001014  dma_cfg zero, zero, r1, 10
000314  9f301000  addli r1, zero, 11
000318  15001014  dma_cfg zero, zero, r1, 10
00031c  9f401000  addli r1, zero, 12
000320  15001014  dma_cfg zero, zero, r1, 10
000324  9f601000  addli r1, zero, 14
000328  15006015  dma_cfg zero, zero, r22, 10
00032c  15001014  dma_cfg zero, zero, r1, 10
000330  9f701000  addli r1, zero, 15
000334  15001014  dma_cfg zero, zero, r1, 10
000338  9f002000  addli r1, zero, 16
00033c  15001014  dma_cfg zero, zero, r1, 10
000340  9f102000  addli r1, zero, 17
000344  15001014  dma_cfg zero, zero, r1, 10
000348  9f202000  addli r1, zero, 18
00034c  15001014  dma_cfg zero, zero, r1, 10
000350  9f302000  addli r1, zero, 19
000354  15001014  dma_cfg zero, zero, r1, 10
000358  9f402000  addli r1, zero, 20
00035c  15001014  dma_cfg zero, zero, r1, 10
000360  9f502000  addli r1, zero, 21
000364  15001014  dma_cfg zero, zero, r1, 10
000368  9f602000  addli r1, zero, 22
00036c  15001014  dma_cfg zero, zero, r1, 10
000370  9f702000  addli r1, zero, 23
000374  15001014  dma_cfg zero, zero, r1, 10
000378  9f003000  addli r1, zero, 24
00037c  15001014  dma_cfg zero, zero, r1, 10
000380  9f103000  addli r1, zero, 25
000384  15001014  dma_cfg zero, zero, r1, 10
000388  9f203000  addli r1, zero, 26
00038c  15001014  dma_cfg zero, zero, r1, 10
000390  9f303000  addli r1, zero, 27
000394  15001014  dma_cfg zero, zero, r1, 10
000398  9f403000  addli r1, zero, 28
00039c  15001014  dma_cfg zero, zero, r1, 10
0003a0  9f503000  addli r1, zero, 29
0003a4  15001014  dma_cfg zero, zero, r1, 10
0003a8  9f603000  addli r1, zero, 30
0003ac  15001014  dma_cfg zero, zero, r1, 10
0003b0  9f703000  addli r1, zero, 31
0003b4  15001014  dma_cfg zero, zero, r1, 10
0003b8  9f000001  addli r1, zero, 128
0003bc  150a0a00  dma_cfg r20, r20, zero, 0
0003c0  150a0002  dma_cfg r20, zero, zero, 1
0003c4  15000004  dma_cfg zero, zero, zero, 2
0003c8  15010007  dma_cfg r2, zero, r16, 3
0003cc  95003008  dma_cfg r1, zero, r3, 4
0003d0  9f000002  addli r1, zero, 256
0003d4  9500000b  dma_cfg r1, zero, r16, 5
0003d8  15000010  dma_cfg zero, zero, zero, 8
0003dc  35000000  dma_run zero
0003e0  1500400b  dma_cfg zero, zero, r20, 5
0003e4  15000010  dma_cfg zero, zero, zero, 8
0003e8  1d900600  unlock r13
0003ec  ab800200  lui r1, 40
0003f0  674d0ffe  storeli.w zero, -44(r30)
0003f4  9f010002  addli r3, zero, 256
0003f8  1d000d00  lock zero, r26
0003fc  9b900004  ori r1, r1, 64
000400  150a0a00  dma_cfg r20, r20, zero, 0
000404  15000304  dma_cfg zero, r6, zero, 2
000408  8b101710  add.s r1, r14, r1
00040c  95800207  dma_cfg r1, r5, r16, 3
000410  9f220000  addli r5, zero, 2
000414  1f030001  addli r6, zero, 128
000418  9f600000  addli r1, zero, 6
00041c  15035808  dma_cfg r6, r16, r5, 4
000420  9501030b  dma_cfg r3, r6, r16, 5
000424  15000010  dma_cfg zero, zero, zero, 8
000428  35000000  dma_run zero
00042c  1500400b  dma_cfg zero, zero, r20, 5
000430  15000010  dma_cfg zero, zero, zero, 8
000434  1d100d00  unlock r26
000438  1d800600  lock zero, r13
00043c  15000014  dma_cfg zero, zero, zero, 10
000440  15004015  dma_cfg zero, zero, r20, 10
000444  15005014  dma_cfg zero, zero, r5, 10
000448  15008015  dma_cfg zero, zero, r24, 10
00044c  1500a015  dma_cfg zero, zero, r26, 10
000450  1500d014  dma_cfg zero, zero, r13, 10
000454  15001014  dma_cfg zero, zero, r1, 10
000458  9f101000  addli r1, zero, 9
00045c  15007014  dma_cfg zero, zero, r7, 10
000460  15005015  dma_cfg zero, zero, r21, 10
000464  15001014  dma_cfg zero, zero, r1, 10
000468  9f201000  addli r1, zero, 10
00046c  15001014  dma_cfg zero, zero, r1, 10
000470  9f301000  addli r1, zero, 11
000474  15001014  dma_cfg zero, zero, r1, 10
000478  9f401000  addli r1, zero, 12
00047c  15001014  dma_cfg zero, zero, r1, 10
000480  9f601000  addli r1, zero, 14
000484  15006015  dma_cfg zero, zero, r22, 10
000488  15001014  dma_cfg zero, zero, r1, 10
00048c  9f701000  addli r1, zero, 15
000490  15001014  dma_cfg zero, zero, r1, 10
000494  9f002000  addli r1, zero, 16
000498  15001014  dma_cfg zero, zero, r1, 10
00049c  9f102000  addli r1, zero, 17
0004a0  15001014  dma_cfg zero, zero, r1, 10
0004a4  9f202000  addli r1, zero, 18
0004a8  15001014  dma_cfg zero, zero, r1, 10
0004ac  9f302000  addli r1, zero, 19
0004b0  15001014  dma_cfg zero, zero, r1, 10
0004b4  9f402000  addli r1, zero, 20
0004b8  15001014  dma_cfg zero, zero, r1, 10
0004bc  9f502000  addli r1, zero, 21
0004c0  15001014  dma_cfg zero, zero, r1, 10
0004c4  9f602000  addli r1, zero, 22
0004c8  15001014  dma_cfg zero, zero, r1, 10
0004cc  9f702000  addli r1, zero, 23
0004d0  15001014  dma_cfg zero, zero, r1, 10
0004d4  9f003000  addli r1, zero, 24
0004d8  15001014  dma_cfg zero, zero, r1, 10
0004dc  9f103000  addli r1, zero, 25
0004e0  15001014  dma_cfg zero, zero, r1, 10
0004e4  9f203000  addli r1, zero, 26
0004e8  15001014  dma_cfg zero, zero, r1, 10
0004ec  9f303000  addli r1, zero, 27
0004f0  15001014  dma_cfg zero, zero, r1, 10
0004f4  9f403000  addli r1, zero, 28
0004f8  15001014  dma_cfg zero, zero, r1, 10
0004fc  9f503000  addli r1, zero, 29
000500  15001014  dma_cfg zero, zero, r1, 10
000504  9f603000  addli r1, zero, 30
000508  15001014  dma_cfg zero, zero, r1, 10
00050c  9f703000  addli r1, zero, 31
000510  15001014  dma_cfg zero, zero, r1, 10
000514  150a0a00  dma_cfg r20, r20, zero, 0
000518  150a0002  dma_cfg r20, zero, zero, 1
00051c  15000004  dma_cfg zero, zero, zero, 2
000520  15010007  dma_cfg r2, zero, r16, 3
000524  15035008  dma_cfg r6, zero, r5, 4
000528  9501000b  dma_cfg r3, zero, r16, 5
00052c  15000010  dma_cfg zero, zero, zero, 8
000530  35000000  dma_run zero
000534  1500400b  dma_cfg zero, zero, r20, 5
000538  15000010  dma_cfg zero, zero, zero, 8
00053c  1d900600  unlock r13
000540  7d800200  xsignal r5, 0
000544  db090000  j 76
000548  9f220000  addli r5, zero, 2
00054c  bb705600  bneq r12, r5, 60
000550  7d900200  xwait r5, 0
000554  7d900600  xwait r13, 0
000558  1d000000  lock zero, zero
00055c  9f100000  addli r1, zero, 1
000560  81020000  ds_cfg r5, zero, 0
000564  01080002  ds_cfg r16, zero, 1
000568  0108001c  ds_cfg r16, zero, 14
00056c  0108001a  ds_cfg r16, zero, 13
000570  21170103  shuffle_batch r14, r2, r16, 1
000574  1d100000  unlock zero
000578  7d000c00  xsignal r24, 0
00057c  674d1ffe  storeli.w r1, -44(r30)
000580  7d000d00  xsignal r26, 0
000584  5b010000  j 8
000588  674d0ffe  storeli.w zero, -44(r30)
00058c  1f030001  addli r6, zero, 128
000590  9bb06700  slli r1, r15, 6
000594  abc10300  lui r3, 60
000598  8b901518  sub.s r1, r11, r1
00059c  9bb5f800  slli r11, r17, 15
0005a0  8b972031  div.s r15, r1, r18
0005a4  0b943510  add.s r8, r11, r3
0005a8  b3800728  zext_int2long r[2:3], r15
0005ac  674bfffe  storeli.w r15, -76(r30)
0005b0  97b07002  sll.d r[2:3], r[2:3], r7
0005b4  97b04003  sll.d r[2:3], r[2:3], r20
0005b8  733c1ffa  store.d r[2:3], -72(r30)
0005bc  3b3a4601  bneq r12, r20, 652
0005c0  a7840000  addli.d r[10:11], r[2:3], 0
0005c4  eb508f00  load.d r[2:3], 8(r30)
0005c8  7d900300  xwait r7, 0
0005cc  e341dfff  loadli.w r3,  -20(r30)
0005d0  8ba09010  add.ul r[2:3], r[2:3], r[10:11]
0005d4  3f543d00  blt.s r26, r3, 276
0005d8  1d800600  lock zero, r13
0005dc  9f610000  addli r3, zero, 6
0005e0  15000014  dma_cfg zero, zero, zero, 10
0005e4  15004015  dma_cfg zero, zero, r20, 10
0005e8  15005014  dma_cfg zero, zero, r5, 10
0005ec  15008015  dma_cfg zero, zero, r24, 10
0005f0  1500a015  dma_cfg zero, zero, r26, 10
0005f4  1500d014  dma_cfg zero, zero, r13, 10
0005f8  15003014  dma_cfg zero, zero, r3, 10
0005fc  9f111000  addli r3, zero, 9
000600  15007014  dma_cfg zero, zero, r7, 10
000604  15005015  dma_cfg zero, zero, r21, 10
000608  15003014  dma_cfg zero, zero, r3, 10
00060c  9f211000  addli r3, zero, 10
000610  15003014  dma_cfg zero, zero, r3, 10
000614  9f311000  addli r3, zero, 11
000618  15003014  dma_cfg zero, zero, r3, 10
00061c  9f411000  addli r3, zero, 12
000620  15003014  dma_cfg zero, zero, r3, 10
000624  9f611000  addli r3, zero, 14
000628  15006015  dma_cfg zero, zero, r22, 10
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
0006b8  9f010004  addli r3, zero, 512
0006bc  150a0a00  dma_cfg r20, r20, zero, 0
0006c0  150a0002  dma_cfg r20, zero, zero, 1
0006c4  15000004  dma_cfg zero, zero, zero, 2
0006c8  15040007  dma_cfg r8, zero, r16, 3
0006cc  1503a009  dma_cfg r6, zero, r26, 4
0006d0  9501000b  dma_cfg r3, zero, r16, 5
0006d4  15000010  dma_cfg zero, zero, zero, 8
0006d8  35000000  dma_run zero
0006dc  1500400b  dma_cfg zero, zero, r20, 5
0006e0  15000010  dma_cfg zero, zero, zero, 8
0006e4  1d900600  unlock r13
0006e8  abc10300  lui r3, 60
0006ec  e74d0ffe  storeli.w zero, -36(r30)
0006f0  e70d0ffe  storeli.w zero, -40(r30)
0006f4  1f190000  addli r18, zero, 1
0006f8  1d000d00  lock zero, r26
0006fc  9b910104  ori r3, r3, 64
000700  150a0a00  dma_cfg r20, r20, zero, 0
000704  15000104  dma_cfg zero, r2, zero, 2
000708  8b913510  add.s r3, r11, r3
00070c  95810007  dma_cfg r3, r1, r16, 3
000710  9f010004  addli r3, zero, 512
000714  9f000010  addli r1, zero, 2048
000718  1f111000  addli r2, zero, 9
00071c  1503a809  dma_cfg r6, r16, r26, 4
000720  9581000b  dma_cfg r3, r1, r16, 5
000724  9f600000  addli r1, zero, 6
000728  15000010  dma_cfg zero, zero, zero, 8
00072c  35000000  dma_run zero
000730  1500400b  dma_cfg zero, zero, r20, 5
000734  15000010  dma_cfg zero, zero, zero, 8
000738  1d100d00  unlock r26
00073c  1d800600  lock zero, r13
000740  15000014  dma_cfg zero, zero, zero, 10
000744  15004015  dma_cfg zero, zero, r20, 10
000748  15005014  dma_cfg zero, zero, r5, 10
00074c  15008015  dma_cfg zero, zero, r24, 10
000750  1500a015  dma_cfg zero, zero, r26, 10
000754  1500d014  dma_cfg zero, zero, r13, 10
000758  15001014  dma_cfg zero, zero, r1, 10
00075c  15007014  dma_cfg zero, zero, r7, 10
000760  15005015  dma_cfg zero, zero, r21, 10
000764  15002014  dma_cfg zero, zero, r2, 10
000768  1f211000  addli r2, zero, 10
00076c  15002014  dma_cfg zero, zero, r2, 10
000770  1f311000  addli r2, zero, 11
000774  15002014  dma_cfg zero, zero, r2, 10
000778  1f411000  addli r2, zero, 12
00077c  15002014  dma_cfg zero, zero, r2, 10
000780  1f611000  addli r2, zero, 14
000784  15006015  dma_cfg zero, zero, r22, 10
000788  15002014  dma_cfg zero, zero, r2, 10
00078c  1f711000  addli r2, zero, 15
000790  15002014  dma_cfg zero, zero, r2, 10
000794  1f012000  addli r2, zero, 16
000798  15002014  dma_cfg zero, zero, r2, 10
00079c  1f112000  addli r2, zero, 17
0007a0  15002014  dma_cfg zero, zero, r2, 10
0007a4  1f212000  addli r2, zero, 18
0007a8  15002014  dma_cfg zero, zero, r2, 10
0007ac  1f312000  addli r2, zero, 19
0007b0  15002014  dma_cfg zero, zero, r2, 10
0007b4  1f412000  addli r2, zero, 20
0007b8  15002014  dma_cfg zero, zero, r2, 10
0007bc  1f512000  addli r2, zero, 21
0007c0  15002014  dma_cfg zero, zero, r2, 10
0007c4  1f612000  addli r2, zero, 22
0007c8  15002014  dma_cfg zero, zero, r2, 10
0007cc  1f712000  addli r2, zero, 23
0007d0  15002014  dma_cfg zero, zero, r2, 10
0007d4  1f013000  addli r2, zero, 24
0007d8  15002014  dma_cfg zero, zero, r2, 10
0007dc  1f113000  addli r2, zero, 25
0007e0  15002014  dma_cfg zero, zero, r2, 10
0007e4  1f213000  addli r2, zero, 26
0007e8  15002014  dma_cfg zero, zero, r2, 10
0007ec  1f313000  addli r2, zero, 27
0007f0  15002014  dma_cfg zero, zero, r2, 10
0007f4  1f413000  addli r2, zero, 28
0007f8  15002014  dma_cfg zero, zero, r2, 10
0007fc  1f513000  addli r2, zero, 29
000800  15002014  dma_cfg zero, zero, r2, 10
000804  1f613000  addli r2, zero, 30
000808  15002014  dma_cfg zero, zero, r2, 10
00080c  1f713000  addli r2, zero, 31
000810  15002014  dma_cfg zero, zero, r2, 10
000814  150a0a00  dma_cfg r20, r20, zero, 0
000818  150a0002  dma_cfg r20, zero, zero, 1
00081c  15000004  dma_cfg zero, zero, zero, 2
000820  15040007  dma_cfg r8, zero, r16, 3
000824  1503a009  dma_cfg r6, zero, r26, 4
000828  9501000b  dma_cfg r3, zero, r16, 5
00082c  15000010  dma_cfg zero, zero, zero, 8
000830  35000000  dma_run zero
000834  1500400b  dma_cfg zero, zero, r20, 5
000838  15000010  dma_cfg zero, zero, zero, 8
00083c  1d900600  unlock r13
000840  7d800000  xsignal r1, 0
000844  5b1e0000  j 240
000848  3741a601  beq r12, r26, 80
00084c  1f190000  addli r18, zero, 1
000850  3b037600  bneq r12, r7, 192
000854  9f600000  addli r1, zero, 6
000858  e70d0ffe  storeli.w zero, -40(r30)
00085c  7d900000  xwait r1, 0
000860  9f101000  addli r1, zero, 9
000864  7d900000  xwait r1, 0
000868  1d000000  lock zero, zero
00086c  9f100000  addli r1, zero, 1
000870  81020000  ds_cfg r5, zero, 0
000874  01030002  ds_cfg r6, zero, 1
000878  0108001c  ds_cfg r16, zero, 14
00087c  0103001a  ds_cfg r6, zero, 13
000880  c1050405  shuffle_coa r11, r8, r16, 2
000884  1d100000  unlock zero
000888  7d800300  xsignal r7, 0
00088c  e74d1ffe  storeli.w r1, -36(r30)
000890  7d800a00  xsignal r21, 0
000894  5b140000  j 160
000898  9f010000  addli r3, zero, 0
00089c  9f100000  addli r1, zero, 1
0008a0  1f110000  addli r2, zero, 1
0008a4  9f321000  addli r5, zero, 11
0008a8  7d100d00  xwait r26, 0
0008ac  7d900a00  xwait r21, 0
0008b0  7d900200  xwait r5, 0
0008b4  9bb2e100  slli r5, r3, 14
0008b8  9bb18100  slli r3, r3, 8
0008bc  1d800000  lock zero, r1
0008c0  09080801  mm_cfg r16, r16, r16, 0
0008c4  9792b200  or r5, r5, r11
0008c8  9791b100  or r3, r3, r11
0008cc  090d1d04  mm_cfg r26, r26, r1, 2
0008d0  a9015710  mm r3, r14, r5, 8
0008d4  9b021100  andi r5, r2, 1
0008d8  9f110000  addli r3, zero, 1
0008dc  1f010000  addli r2, zero, 0
0008e0  1d900000  unlock r1
0008e4  3bcf02fe  bneq r5, zero, -48
0008e8  9f101000  addli r1, zero, 9
0008ec  e74d0ffe  storeli.w zero, -36(r30)
0008f0  7d800600  xsignal r13, 0
0008f4  1f190000  addli r18, zero, 1
0008f8  7d800000  xsignal r1, 0
0008fc  9f100000  addli r1, zero, 1
000900  e70d1ffe  storeli.w r1, -40(r30)
000904  9f201000  addli r1, zero, 10
000908  7d800000  xsignal r1, 0
00090c  5b050000  j 40
000910  3b708601  bneq r12, r24, 28
000914  9f201000  addli r1, zero, 10
000918  e74d0ffe  storeli.w zero, -36(r30)
00091c  e70d0ffe  storeli.w zero, -40(r30)
000920  7d900000  xwait r1, 0
000924  7d100b00  xwait r22, 0
000928  db010000  j 12
00092c  e74d0ffe  storeli.w zero, -36(r30)
000930  e70d0ffe  storeli.w zero, -40(r30)
000934  ab400600  lui r1, 100
000938  3d000000  xfence
00093c  33070328  zext_int2long r[15:16], r6
000940  00a00300  mfence { lm, sm, gm }
000944  0b9d1510  add.s r26, r11, r1
000948  9f70f001  addli r1, zero, 255
00094c  80a20004  csr_set csr5, r1
000950  00e00200  sync_core
000954  b7500600  beq r12, zero, 52
000958  b7362601  beq r12, r18, 428
00095c  e340afff  loadli.w r1,  -44(r30)
000960  bb8c0000  bneq r1, zero, 800
000964  9f300000  addli r1, zero, 3
000968  37521602  beq r12, r1, 1172
00096c  e300bfff  loadli.w r1,  -40(r30)
000970  3ba80002  bneq r1, zero, 1544
000974  9f500000  addli r1, zero, 5
000978  b77d1602  beq r12, r1, 1916
00097c  9f600000  addli r1, zero, 6
000980  b7431604  beq r12, r1, 2288
000984  5b4c0100  j 2656
000988  b3000028  zext_int2long r[2:3], zero
00098c  3d000000  xfence
000990  00a00300  mfence { lm, sm, gm }
000994  73381ffe  store.d r[2:3], -16(r30)
000998  27810000  addli.d r[3:4], r[2:3], 0
00099c  db030000  j 28
0009a0  9f730000  addli r7, zero, 7
0009a4  eb528fff  load.d r[6:7], -8(r30)
0009a8  b3800328  zext_int2long r[2:3], r7
0009ac  93a01204  setlt.ul r1, r[6:7], r[2:3]
0009b0  27910200  addli.d r[3:4], r[6:7], 1
0009b4  37950000  beq r1, zero, 324
0009b8  9f700000  addli r1, zero, 7
0009bc  6b540fff  load.d r[9:10], -16(r30)
0009c0  733c2ffe  store.d r[3:4], -8(r30)
0009c4  17331102  sll.d r[7:8], r[3:4], r1
0009c8  db040000  j 36
0009cc  27440400  addli.d r[9:10], r[9:10], 4
0009d0  0b150d11  add.s r10, r26, r16
0009d4  9321e402  setneq.d r3, r[9:10], r[15:16]
0009d8  73665500  stores.w r5, 12(r10)
0009dc  73646501  stores.w r22, 8(r10)
0009e0  73621500  stores.w r1, 4(r10)
0009e4  73602500  stores.w r2, 0(r10)
0009e8  b7ee01fe  beq r3, zero, -72
0009ec  8b206410  add.ul r[2:3], r[9:10], r[7:8]
0009f0  1bb82000  slli r16, r1, 2
0009f4  8b900511  add.s r1, r11, r16
0009f8  6fc5c000  loads.w r10, 12(r1)
0009fc  efc60000  loads.w r13, 0(r1)
000a00  6fcc4000  loads.w r24, 4(r1)
000a04  efca8000  loads.w r21, 8(r1)
000a08  170a7501  and r20, r10, r23
000a0c  93804c05  setlt.u r1, r25, r20
000a10  3bb00000  bneq r1, zero, 12
000a14  9f020500  addli r5, r10, 0
000a18  5b010000  j 8
000a1c  97123501  or r5, r10, r19
000a20  17867a01  and r12, r21, r23
000a24  9380cc04  setlt.u r1, r25, r12
000a28  3bb00000  bneq r1, zero, 12
000a2c  1f8b0a00  addli r22, r21, 0
000a30  5b010000  j 8
000a34  179b3a01  or r22, r21, r19
000a38  97017c01  and r3, r24, r23
000a3c  93803c04  setlt.u r1, r25, r3
000a40  3bb00000  bneq r1, zero, 12
000a44  9f000c00  addli r1, r24, 0
000a48  5b010000  j 8
000a4c  97103c01  or r1, r24, r19
000a50  97887601  and r17, r13, r23
000a54  13811c05  setlt.u r2, r25, r17
000a58  3b500100  bneq r2, zero, 20
000a5c  1f810600  addli r2, r13, 0
000a60  93081e05  setlt.u r17, r28, r17
000a64  37d00800  beq r17, zero, 20
000a68  db040000  j 36
000a6c  17913601  or r2, r13, r19
000a70  93081e05  setlt.u r17, r28, r17
000a74  3be00800  bneq r17, zero, 24
000a78  1bc10601  srli r2, r13, 16
000a7c  1b011100  andi r2, r2, 1
000a80  0b912610  add.s r2, r13, r2
000a84  0b11b111  add.s r2, r2, r27
000a88  17014100  and r2, r2, r4
000a8c  93013e04  setlt.u r3, r28, r3
000a90  37e00100  beq r3, zero, 24
000a94  9301ce04  setlt.u r3, r28, r12
000a98  b7b00100  beq r3, zero, 44
000a9c  93014e05  setlt.u r3, r28, r20
000aa0  bbbc01fe  bneq r3, zero, -212
000aa4  db070000  j 60
000aa8  9b400c01  srli r1, r24, 16
000aac  9b801000  andi r1, r1, 1
000ab0  8b101c10  add.s r1, r24, r1
000ab4  8b90b011  add.s r1, r1, r27
000ab8  97804000  and r1, r1, r4
000abc  9301ce04  setlt.u r3, r28, r12
000ac0  3bff01fe  bneq r3, zero, -36
000ac4  9bc10a01  srli r3, r21, 16
000ac8  9b811100  andi r3, r3, 1
000acc  8b913a10  add.s r3, r21, r3
000ad0  8b91b111  add.s r3, r3, r27
000ad4  178b4100  and r22, r3, r4
000ad8  93014e05  setlt.u r3, r28, r20
000adc  bbcb01fe  bneq r3, zero, -272
000ae0  9b410501  srli r3, r10, 16
000ae4  9b811100  andi r3, r3, 1
000ae8  8b113510  add.s r3, r10, r3
000aec  8b91b111  add.s r3, r3, r27
000af0  97824100  and r5, r3, r4
000af4  5bdbffff  j -296
000af8  00360002  core_id r12
000afc  00200100  mfence { sm }
000b00  3b7926ff  bneq r12, r18, -420
000b04  9f001000  addli r1, zero, 8
000b08  3d000000  xfence
000b0c  00a00300  mfence { lm, sm, gm }
000b10  33810028  zext_int2long r[3:4], r1
000b14  5b040000  j 32
000b18  9f701000  addli r1, zero, 15
000b1c  eb528fff  load.d r[6:7], -8(r30)
000b20  9f730000  addli r7, zero, 7
000b24  b3800028  zext_int2long r[2:3], r1
000b28  93a01204  setlt.ul r1, r[6:7], r[2:3]
000b2c  27910200  addli.d r[3:4], r[6:7], 1
000b30  37850000  beq r1, zero, 320
000b34  17347102  sll.d r[9:10], r[3:4], r7
000b38  33030028  zext_int2long r[7:8], zero
000b3c  733c2ffe  store.d r[3:4], -8(r30)
000b40  db040000  j 36
000b44  27430300  addli.d r[7:8], r[7:8], 4
000b48  0b112d10  add.s r2, r26, r2
000b4c  9320e302  setneq.d r1, r[7:8], r[15:16]
000b50  73665100  stores.w r5, 12(r2)
000b54  73640101  stores.w r16, 8(r2)
000b58  73625101  stores.w r21, 4(r2)
000b5c  7360d100  stores.w r13, 0(r2)
000b60  b7ee00fe  beq r1, zero, -72
000b64  8b208310  add.ul r[2:3], r[7:8], r[9:10]
000b68  1bb12000  slli r2, r1, 2
000b6c  8b922510  add.s r5, r11, r2
000b70  efc1c200  loads.w r3, 12(r5)
000b74  6fcb0200  loads.w r22, 0(r5)
000b78  efc04200  loads.w r1, 4(r5)
000b7c  6fca8200  loads.w r20, 8(r5)
000b80  17857101  and r10, r3, r23
000b84  9382ac04  setlt.u r5, r25, r10
000b88  3bb00200  bneq r5, zero, 12
000b8c  9f820100  addli r5, r3, 0
000b90  5b010000  j 8
000b94  97923101  or r5, r3, r19
000b98  17067a01  and r12, r20, r23
000b9c  9386cc04  setlt.u r13, r25, r12
000ba0  3bb00600  bneq r13, zero, 12
000ba4  1f080a00  addli r16, r20, 0
000ba8  5b010000  j 8
000bac  17183a01  or r16, r20, r19
000bb0  178c7001  and r24, r1, r23
000bb4  93868c05  setlt.u r13, r25, r24
000bb8  3bb00600  bneq r13, zero, 12
000bbc  9f8a0000  addli r21, r1, 0
000bc0  5b010000  j 8
000bc4  979a3001  or r21, r1, r19
000bc8  97087b01  and r17, r22, r23
000bcc  93861c05  setlt.u r13, r25, r17
000bd0  3bd00600  bneq r13, zero, 20
000bd4  9f060b00  addli r13, r22, 0
000bd8  93081e05  setlt.u r17, r28, r17
000bdc  37d00800  beq r17, zero, 20
000be0  db040000  j 36
000be4  97163b01  or r13, r22, r19
000be8  93081e05  setlt.u r17, r28, r17
000bec  3be00800  bneq r17, zero, 24
000bf0  9b460b01  srli r13, r22, 16
000bf4  9b861600  andi r13, r13, 1
000bf8  8b16db10  add.s r13, r22, r13
000bfc  8b96b611  add.s r13, r13, r27
000c00  97864600  and r13, r13, r4
000c04  93088e05  setlt.u r17, r28, r24
000c08  37e00800  beq r17, zero, 24
000c0c  9300ce04  setlt.u r1, r28, r12
000c10  b7b00000  beq r1, zero, 44
000c14  9300ae04  setlt.u r1, r28, r10
000c18  bbbc00fe  bneq r1, zero, -212
000c1c  db070000  j 60
000c20  9bc80001  srli r17, r1, 16
000c24  9b881800  andi r17, r17, 1
000c28  8b901011  add.s r1, r1, r17
000c2c  8b90b011  add.s r1, r1, r27
000c30  978a4000  and r21, r1, r4
000c34  9300ce04  setlt.u r1, r28, r12
000c38  3bff00fe  bneq r1, zero, -36
000c3c  9b400a01  srli r1, r20, 16
000c40  9b801000  andi r1, r1, 1
000c44  8b101a10  add.s r1, r20, r1
000c48  8b90b011  add.s r1, r1, r27
000c4c  17884000  and r16, r1, r4
000c50  9300ae04  setlt.u r1, r28, r10
000c54  bbcb00fe  bneq r1, zero, -272
000c58  9bc00101  srli r1, r3, 16
000c5c  9b801000  andi r1, r1, 1
000c60  8b901110  add.s r1, r3, r1
000c64  8b90b011  add.s r1, r1, r27
000c68  97824000  and r5, r1, r4
000c6c  5bdbffff  j -296
000c70  00360002  core_id r12
000c74  00200100  mfence { sm }
000c78  e340afff  loadli.w r1,  -44(r30)
000c7c  b7a300fe  beq r1, zero, -792
000c80  9f002000  addli r1, zero, 16
000c84  3d000000  xfence
000c88  00a00300  mfence { lm, sm, gm }
000c8c  33810028  zext_int2long r[3:4], r1
000c90  5b040000  j 32
000c94  9f702000  addli r1, zero, 23
000c98  eb528fff  load.d r[6:7], -8(r30)
000c9c  9f730000  addli r7, zero, 7
000ca0  b3800028  zext_int2long r[2:3], r1
000ca4  93a01204  setlt.ul r1, r[6:7], r[2:3]
000ca8  27910200  addli.d r[3:4], r[6:7], 1
000cac  37850000  beq r1, zero, 320
000cb0  17347102  sll.d r[9:10], r[3:4], r7
000cb4  33030028  zext_int2long r[7:8], zero
000cb8  733c2ffe  store.d r[3:4], -8(r30)
000cbc  db040000  j 36
000cc0  27430300  addli.d r[7:8], r[7:8], 4
000cc4  0b112d10  add.s r2, r26, r2
000cc8  9320e302  setneq.d r1, r[7:8], r[15:16]
000ccc  73665100  stores.w r5, 12(r2)
000cd0  73642101  stores.w r18, 8(r2)
000cd4  73625101  stores.w r21, 4(r2)
000cd8  7360d100  stores.w r13, 0(r2)
000cdc  b7ee00fe  beq r1, zero, -72
000ce0  8b208310  add.ul r[2:3], r[7:8], r[9:10]
000ce4  1bb12000  slli r2, r1, 2
000ce8  8b922510  add.s r5, r11, r2
000cec  efc1c200  loads.w r3, 12(r5)
000cf0  6fcb0200  loads.w r22, 0(r5)
000cf4  efc04200  loads.w r1, 4(r5)
000cf8  6fca8200  loads.w r20, 8(r5)
000cfc  17857101  and r10, r3, r23
000d00  9382ac04  setlt.u r5, r25, r10
000d04  3bb00200  bneq r5, zero, 12
000d08  9f820100  addli r5, r3, 0
000d0c  5b010000  j 8
000d10  97923101  or r5, r3, r19
000d14  17067a01  and r12, r20, r23
000d18  9386cc04  setlt.u r13, r25, r12
000d1c  3bb00600  bneq r13, zero, 12
000d20  1f090a00  addli r18, r20, 0
000d24  5b010000  j 8
000d28  17193a01  or r18, r20, r19
000d2c  178c7001  and r24, r1, r23
000d30  93868c05  setlt.u r13, r25, r24
000d34  3bb00600  bneq r13, zero, 12
000d38  9f8a0000  addli r21, r1, 0
000d3c  5b010000  j 8
000d40  979a3001  or r21, r1, r19
000d44  17087b01  and r16, r22, r23
000d48  93860c05  setlt.u r13, r25, r16
000d4c  3bd00600  bneq r13, zero, 20
000d50  9f060b00  addli r13, r22, 0
000d54  13080e05  setlt.u r16, r28, r16
000d58  37500800  beq r16, zero, 20
000d5c  db040000  j 36
000d60  97163b01  or r13, r22, r19
000d64  13080e05  setlt.u r16, r28, r16
000d68  3b600800  bneq r16, zero, 24
000d6c  9b460b01  srli r13, r22, 16
000d70  9b861600  andi r13, r13, 1
000d74  8b16db10  add.s r13, r22, r13
000d78  8b96b611  add.s r13, r13, r27
000d7c  97864600  and r13, r13, r4
000d80  13088e05  setlt.u r16, r28, r24
000d84  37600800  beq r16, zero, 24
000d88  9300ce04  setlt.u r1, r28, r12
000d8c  b7b00000  beq r1, zero, 44
000d90  9300ae04  setlt.u r1, r28, r10
000d94  bbbc00fe  bneq r1, zero, -212
000d98  db070000  j 60
000d9c  1bc80001  srli r16, r1, 16
000da0  1b081800  andi r16, r16, 1
000da4  8b900011  add.s r1, r1, r16
000da8  8b90b011  add.s r1, r1, r27
000dac  978a4000  and r21, r1, r4
000db0  9300ce04  setlt.u r1, r28, r12
000db4  3bff00fe  bneq r1, zero, -36
000db8  9b400a01  srli r1, r20, 16
000dbc  9b801000  andi r1, r1, 1
000dc0  8b101a10  add.s r1, r20, r1
000dc4  8b90b011  add.s r1, r1, r27
000dc8  17894000  and r18, r1, r4
000dcc  9300ae04  setlt.u r1, r28, r10
000dd0  bbcb00fe  bneq r1, zero, -272
000dd4  9bc00101  srli r1, r3, 16
000dd8  9b801000  andi r1, r1, 1
000ddc  8b901110  add.s r1, r3, r1
000de0  8b90b011  add.s r1, r1, r27
000de4  97824000  and r5, r1, r4
000de8  5bdbffff  j -296
000dec  00360002  core_id r12
000df0  00200100  mfence { sm }
000df4  9f300000  addli r1, zero, 3
000df8  bb5d16fc  bneq r12, r1, -1164
000dfc  9f003000  addli r1, zero, 24
000e00  3d000000  xfence
000e04  00a00300  mfence { lm, sm, gm }
000e08  33810028  zext_int2long r[3:4], r1
000e0c  5b040000  j 32
000e10  9f703000  addli r1, zero, 31
000e14  eb528fff  load.d r[6:7], -8(r30)
000e18  9f730000  addli r7, zero, 7
000e1c  b3800028  zext_int2long r[2:3], r1
000e20  93a01204  setlt.ul r1, r[6:7], r[2:3]
000e24  27910200  addli.d r[3:4], r[6:7], 1
000e28  37850000  beq r1, zero, 320
000e2c  17347102  sll.d r[9:10], r[3:4], r7
000e30  33030028  zext_int2long r[7:8], zero
000e34  733c2ffe  store.d r[3:4], -8(r30)
000e38  db040000  j 36
000e3c  27430300  addli.d r[7:8], r[7:8], 4
000e40  0b112d10  add.s r2, r26, r2
000e44  9320e302  setneq.d r1, r[7:8], r[15:16]
000e48  73665100  stores.w r5, 12(r2)
000e4c  73642101  stores.w r18, 8(r2)
000e50  73625101  stores.w r21, 4(r2)
000e54  7360d100  stores.w r13, 0(r2)
000e58  b7ee00fe  beq r1, zero, -72
000e5c  8b208310  add.ul r[2:3], r[7:8], r[9:10]
000e60  1bb12000  slli r2, r1, 2
000e64  8b922510  add.s r5, r11, r2
000e68  efc1c200  loads.w r3, 12(r5)
000e6c  6fcb0200  loads.w r22, 0(r5)
000e70  efc04200  loads.w r1, 4(r5)
000e74  6fca8200  loads.w r20, 8(r5)
000e78  17857101  and r10, r3, r23
000e7c  9382ac04  setlt.u r5, r25, r10
000e80  3bb00200  bneq r5, zero, 12
000e84  9f820100  addli r5, r3, 0
000e88  5b010000  j 8
000e8c  97923101  or r5, r3, r19
000e90  17067a01  and r12, r20, r23
000e94  9386cc04  setlt.u r13, r25, r12
000e98  3bb00600  bneq r13, zero, 12
000e9c  1f090a00  addli r18, r20, 0
000ea0  5b010000  j 8
000ea4  17193a01  or r18, r20, r19
000ea8  178c7001  and r24, r1, r23
000eac  93868c05  setlt.u r13, r25, r24
000eb0  3bb00600  bneq r13, zero, 12
000eb4  9f8a0000  addli r21, r1, 0
000eb8  5b010000  j 8
000ebc  979a3001  or r21, r1, r19
000ec0  17087b01  and r16, r22, r23
000ec4  93860c05  setlt.u r13, r25, r16
000ec8  3bd00600  bneq r13, zero, 20
000ecc  9f060b00  addli r13, r22, 0
000ed0  13080e05  setlt.u r16, r28, r16
000ed4  37500800  beq r16, zero, 20
000ed8  db040000  j 36
000edc  97163b01  or r13, r22, r19
000ee0  13080e05  setlt.u r16, r28, r16
000ee4  3b600800  bneq r16, zero, 24
000ee8  9b460b01  srli r13, r22, 16
000eec  9b861600  andi r13, r13, 1
000ef0  8b16db10  add.s r13, r22, r13
000ef4  8b96b611  add.s r13, r13, r27
000ef8  97864600  and r13, r13, r4
000efc  13088e05  setlt.u r16, r28, r24
000f00  37600800  beq r16, zero, 24
000f04  9300ce04  setlt.u r1, r28, r12
000f08  b7b00000  beq r1, zero, 44
000f0c  9300ae04  setlt.u r1, r28, r10
000f10  bbbc00fe  bneq r1, zero, -212
000f14  db070000  j 60
000f18  1bc80001  srli r16, r1, 16
000f1c  1b081800  andi r16, r16, 1
000f20  8b900011  add.s r1, r1, r16
000f24  8b90b011  add.s r1, r1, r27
000f28  978a4000  and r21, r1, r4
000f2c  9300ce04  setlt.u r1, r28, r12
000f30  3bff00fe  bneq r1, zero, -36
000f34  9b400a01  srli r1, r20, 16
000f38  9b801000  andi r1, r1, 1
000f3c  8b101a10  add.s r1, r20, r1
000f40  8b90b011  add.s r1, r1, r27
000f44  17894000  and r18, r1, r4
000f48  9300ae04  setlt.u r1, r28, r10
000f4c  bbcb00fe  bneq r1, zero, -272
000f50  9bc00101  srli r1, r3, 16
000f54  9b801000  andi r1, r1, 1
000f58  8b901110  add.s r1, r3, r1
000f5c  8b90b011  add.s r1, r1, r27
000f60  97824000  and r5, r1, r4
000f64  5bdbffff  j -296
000f68  00360002  core_id r12
000f6c  00200100  mfence { sm }
000f70  e300bfff  loadli.w r1,  -40(r30)
000f74  378800fc  beq r1, zero, -1536
000f78  9f004000  addli r1, zero, 32
000f7c  3d000000  xfence
000f80  00a00300  mfence { lm, sm, gm }
000f84  33810028  zext_int2long r[3:4], r1
000f88  5b040000  j 32
000f8c  9f704000  addli r1, zero, 39
000f90  eb528fff  load.d r[6:7], -8(r30)
000f94  9f730000  addli r7, zero, 7
000f98  b3800028  zext_int2long r[2:3], r1
000f9c  93a01204  setlt.ul r1, r[6:7], r[2:3]
000fa0  27910200  addli.d r[3:4], r[6:7], 1
000fa4  37850000  beq r1, zero, 320
000fa8  17347102  sll.d r[9:10], r[3:4], r7
000fac  33030028  zext_int2long r[7:8], zero
000fb0  733c2ffe  store.d r[3:4], -8(r30)
000fb4  db040000  j 36
000fb8  27430300  addli.d r[7:8], r[7:8], 4
000fbc  0b112d10  add.s r2, r26, r2
000fc0  9320e302  setneq.d r1, r[7:8], r[15:16]
000fc4  73665100  stores.w r5, 12(r2)
000fc8  73642101  stores.w r18, 8(r2)
000fcc  73625101  stores.w r21, 4(r2)
000fd0  7360d100  stores.w r13, 0(r2)
000fd4  b7ee00fe  beq r1, zero, -72
000fd8  8b208310  add.ul r[2:3], r[7:8], r[9:10]
000fdc  1bb12000  slli r2, r1, 2
000fe0  8b922510  add.s r5, r11, r2
000fe4  efc1c200  loads.w r3, 12(r5)
000fe8  6fcb0200  loads.w r22, 0(r5)
000fec  efc04200  loads.w r1, 4(r5)
000ff0  6fca8200  loads.w r20, 8(r5)
000ff4  17857101  and r10, r3, r23
000ff8  9382ac04  setlt.u r5, r25, r10
000ffc  3bb00200  bneq r5, zero, 12
001000  9f820100  addli r5, r3, 0
001004  5b010000  j 8
001008  97923101  or r5, r3, r19
00100c  17067a01  and r12, r20, r23
001010  9386cc04  setlt.u r13, r25, r12
001014  3bb00600  bneq r13, zero, 12
001018  1f090a00  addli r18, r20, 0
00101c  5b010000  j 8
001020  17193a01  or r18, r20, r19
001024  178c7001  and r24, r1, r23
001028  93868c05  setlt.u r13, r25, r24
00102c  3bb00600  bneq r13, zero, 12
001030  9f8a0000  addli r21, r1, 0
001034  5b010000  j 8
001038  979a3001  or r21, r1, r19
00103c  17087b01  and r16, r22, r23
001040  93860c05  setlt.u r13, r25, r16
001044  3bd00600  bneq r13, zero, 20
001048  9f060b00  addli r13, r22, 0
00104c  13080e05  setlt.u r16, r28, r16
001050  37500800  beq r16, zero, 20
001054  db040000  j 36
001058  97163b01  or r13, r22, r19
00105c  13080e05  setlt.u r16, r28, r16
001060  3b600800  bneq r16, zero, 24
001064  9b460b01  srli r13, r22, 16
001068  9b861600  andi r13, r13, 1
00106c  8b16db10  add.s r13, r22, r13
001070  8b96b611  add.s r13, r13, r27
001074  97864600  and r13, r13, r4
001078  13088e05  setlt.u r16, r28, r24
00107c  37600800  beq r16, zero, 24
001080  9300ce04  setlt.u r1, r28, r12
001084  b7b00000  beq r1, zero, 44
001088  9300ae04  setlt.u r1, r28, r10
00108c  bbbc00fe  bneq r1, zero, -212
001090  db070000  j 60
001094  1bc80001  srli r16, r1, 16
001098  1b081800  andi r16, r16, 1
00109c  8b900011  add.s r1, r1, r16
0010a0  8b90b011  add.s r1, r1, r27
0010a4  978a4000  and r21, r1, r4
0010a8  9300ce04  setlt.u r1, r28, r12
0010ac  3bff00fe  bneq r1, zero, -36
0010b0  9b400a01  srli r1, r20, 16
0010b4  9b801000  andi r1, r1, 1
0010b8  8b101a10  add.s r1, r20, r1
0010bc  8b90b011  add.s r1, r1, r27
0010c0  17894000  and r18, r1, r4
0010c4  9300ae04  setlt.u r1, r28, r10
0010c8  bbcb00fe  bneq r1, zero, -272
0010cc  9bc00101  srli r1, r3, 16
0010d0  9b801000  andi r1, r1, 1
0010d4  8b901110  add.s r1, r3, r1
0010d8  8b90b011  add.s r1, r1, r27
0010dc  97824000  and r5, r1, r4
0010e0  5bdbffff  j -296
0010e4  00360002  core_id r12
0010e8  00200100  mfence { sm }
0010ec  9f500000  addli r1, zero, 5
0010f0  3b3216fc  bneq r12, r1, -1908
0010f4  9f005000  addli r1, zero, 40
0010f8  3d000000  xfence
0010fc  00a00300  mfence { lm, sm, gm }
001100  33810028  zext_int2long r[3:4], r1
001104  5b040000  j 32
001108  9f705000  addli r1, zero, 47
00110c  eb528fff  load.d r[6:7], -8(r30)
001110  9f730000  addli r7, zero, 7
001114  b3800028  zext_int2long r[2:3], r1
001118  93a01204  setlt.ul r1, r[6:7], r[2:3]
00111c  27910200  addli.d r[3:4], r[6:7], 1
001120  37850000  beq r1, zero, 320
001124  17347102  sll.d r[9:10], r[3:4], r7
001128  33030028  zext_int2long r[7:8], zero
00112c  733c2ffe  store.d r[3:4], -8(r30)
001130  db040000  j 36
001134  27430300  addli.d r[7:8], r[7:8], 4
001138  0b112d10  add.s r2, r26, r2
00113c  9320e302  setneq.d r1, r[7:8], r[15:16]
001140  73665100  stores.w r5, 12(r2)
001144  73642101  stores.w r18, 8(r2)
001148  73625101  stores.w r21, 4(r2)
00114c  7360d100  stores.w r13, 0(r2)
001150  b7ee00fe  beq r1, zero, -72
001154  8b208310  add.ul r[2:3], r[7:8], r[9:10]
001158  1bb12000  slli r2, r1, 2
00115c  8b922510  add.s r5, r11, r2
001160  efc1c200  loads.w r3, 12(r5)
001164  6fcb0200  loads.w r22, 0(r5)
001168  efc04200  loads.w r1, 4(r5)
00116c  6fca8200  loads.w r20, 8(r5)
001170  17857101  and r10, r3, r23
001174  9382ac04  setlt.u r5, r25, r10
001178  3bb00200  bneq r5, zero, 12
00117c  9f820100  addli r5, r3, 0
001180  5b010000  j 8
001184  97923101  or r5, r3, r19
001188  17067a01  and r12, r20, r23
00118c  9386cc04  setlt.u r13, r25, r12
001190  3bb00600  bneq r13, zero, 12
001194  1f090a00  addli r18, r20, 0
001198  5b010000  j 8
00119c  17193a01  or r18, r20, r19
0011a0  178c7001  and r24, r1, r23
0011a4  93868c05  setlt.u r13, r25, r24
0011a8  3bb00600  bneq r13, zero, 12
0011ac  9f8a0000  addli r21, r1, 0
0011b0  5b010000  j 8
0011b4  979a3001  or r21, r1, r19
0011b8  17087b01  and r16, r22, r23
0011bc  93860c05  setlt.u r13, r25, r16
0011c0  3bd00600  bneq r13, zero, 20
0011c4  9f060b00  addli r13, r22, 0
0011c8  13080e05  setlt.u r16, r28, r16
0011cc  37500800  beq r16, zero, 20
0011d0  db040000  j 36
0011d4  97163b01  or r13, r22, r19
0011d8  13080e05  setlt.u r16, r28, r16
0011dc  3b600800  bneq r16, zero, 24
0011e0  9b460b01  srli r13, r22, 16
0011e4  9b861600  andi r13, r13, 1
0011e8  8b16db10  add.s r13, r22, r13
0011ec  8b96b611  add.s r13, r13, r27
0011f0  97864600  and r13, r13, r4
0011f4  13088e05  setlt.u r16, r28, r24
0011f8  37600800  beq r16, zero, 24
0011fc  9300ce04  setlt.u r1, r28, r12
001200  b7b00000  beq r1, zero, 44
001204  9300ae04  setlt.u r1, r28, r10
001208  bbbc00fe  bneq r1, zero, -212
00120c  db070000  j 60
001210  1bc80001  srli r16, r1, 16
001214  1b081800  andi r16, r16, 1
001218  8b900011  add.s r1, r1, r16
00121c  8b90b011  add.s r1, r1, r27
001220  978a4000  and r21, r1, r4
001224  9300ce04  setlt.u r1, r28, r12
001228  3bff00fe  bneq r1, zero, -36
00122c  9b400a01  srli r1, r20, 16
001230  9b801000  andi r1, r1, 1
001234  8b101a10  add.s r1, r20, r1
001238  8b90b011  add.s r1, r1, r27
00123c  17894000  and r18, r1, r4
001240  9300ae04  setlt.u r1, r28, r10
001244  bbcb00fe  bneq r1, zero, -272
001248  9bc00101  srli r1, r3, 16
00124c  9b801000  andi r1, r1, 1
001250  8b901110  add.s r1, r3, r1
001254  8b90b011  add.s r1, r1, r27
001258  97824000  and r5, r1, r4
00125c  5bdbffff  j -296
001260  00360002  core_id r12
001264  00200100  mfence { sm }
001268  9f600000  addli r1, zero, 6
00126c  bb651600  bneq r12, r1, 376
001270  9f006000  addli r1, zero, 48
001274  3d000000  xfence
001278  00a00300  mfence { lm, sm, gm }
00127c  33810028  zext_int2long r[3:4], r1
001280  5b040000  j 32
001284  9f706000  addli r1, zero, 55
001288  eb528fff  load.d r[6:7], -8(r30)
00128c  9f730000  addli r7, zero, 7
001290  b3800028  zext_int2long r[2:3], r1
001294  93a01204  setlt.ul r1, r[6:7], r[2:3]
001298  27910200  addli.d r[3:4], r[6:7], 1
00129c  37850000  beq r1, zero, 320
0012a0  17347102  sll.d r[9:10], r[3:4], r7
0012a4  33030028  zext_int2long r[7:8], zero
0012a8  733c2ffe  store.d r[3:4], -8(r30)
0012ac  db040000  j 36
0012b0  27430300  addli.d r[7:8], r[7:8], 4
0012b4  0b112d10  add.s r2, r26, r2
0012b8  9320e302  setneq.d r1, r[7:8], r[15:16]
0012bc  73665100  stores.w r5, 12(r2)
0012c0  73642101  stores.w r18, 8(r2)
0012c4  73625101  stores.w r21, 4(r2)
0012c8  7360d100  stores.w r13, 0(r2)
0012cc  b7ee00fe  beq r1, zero, -72
0012d0  8b208310  add.ul r[2:3], r[7:8], r[9:10]
0012d4  1bb12000  slli r2, r1, 2
0012d8  8b922510  add.s r5, r11, r2
0012dc  efc1c200  loads.w r3, 12(r5)
0012e0  6fcb0200  loads.w r22, 0(r5)
0012e4  efc04200  loads.w r1, 4(r5)
0012e8  6fca8200  loads.w r20, 8(r5)
0012ec  17857101  and r10, r3, r23
0012f0  9382ac04  setlt.u r5, r25, r10
0012f4  3bb00200  bneq r5, zero, 12
0012f8  9f820100  addli r5, r3, 0
0012fc  5b010000  j 8
001300  97923101  or r5, r3, r19
001304  17067a01  and r12, r20, r23
001308  9386cc04  setlt.u r13, r25, r12
00130c  3bb00600  bneq r13, zero, 12
001310  1f090a00  addli r18, r20, 0
001314  5b010000  j 8
001318  17193a01  or r18, r20, r19
00131c  178c7001  and r24, r1, r23
001320  93868c05  setlt.u r13, r25, r24
001324  3bb00600  bneq r13, zero, 12
001328  9f8a0000  addli r21, r1, 0
00132c  5b010000  j 8
001330  979a3001  or r21, r1, r19
001334  17087b01  and r16, r22, r23
001338  93860c05  setlt.u r13, r25, r16
00133c  3bd00600  bneq r13, zero, 20
001340  9f060b00  addli r13, r22, 0
001344  13080e05  setlt.u r16, r28, r16
001348  37500800  beq r16, zero, 20
00134c  db040000  j 36
001350  97163b01  or r13, r22, r19
001354  13080e05  setlt.u r16, r28, r16
001358  3b600800  bneq r16, zero, 24
00135c  9b460b01  srli r13, r22, 16
001360  9b861600  andi r13, r13, 1
001364  8b16db10  add.s r13, r22, r13
001368  8b96b611  add.s r13, r13, r27
00136c  97864600  and r13, r13, r4
001370  13088e05  setlt.u r16, r28, r24
001374  37600800  beq r16, zero, 24
001378  9300ce04  setlt.u r1, r28, r12
00137c  b7b00000  beq r1, zero, 44
001380  9300ae04  setlt.u r1, r28, r10
001384  bbbc00fe  bneq r1, zero, -212
001388  db070000  j 60
00138c  1bc80001  srli r16, r1, 16
001390  1b081800  andi r16, r16, 1
001394  8b900011  add.s r1, r1, r16
001398  8b90b011  add.s r1, r1, r27
00139c  978a4000  and r21, r1, r4
0013a0  9300ce04  setlt.u r1, r28, r12
0013a4  3bff00fe  bneq r1, zero, -36
0013a8  9b400a01  srli r1, r20, 16
0013ac  9b801000  andi r1, r1, 1
0013b0  8b101a10  add.s r1, r20, r1
0013b4  8b90b011  add.s r1, r1, r27
0013b8  17894000  and r18, r1, r4
0013bc  9300ae04  setlt.u r1, r28, r10
0013c0  bbcb00fe  bneq r1, zero, -272
0013c4  9bc00101  srli r1, r3, 16
0013c8  9b801000  andi r1, r1, 1
0013cc  8b901110  add.s r1, r3, r1
0013d0  8b90b011  add.s r1, r1, r27
0013d4  97824000  and r5, r1, r4
0013d8  5bdbffff  j -296
0013dc  00360002  core_id r12
0013e0  00200100  mfence { sm }
0013e4  b3000028  zext_int2long r[2:3], zero
0013e8  73381ffe  store.d r[2:3], -16(r30)
0013ec  e340bfff  loadli.w r1,  -36(r30)
0013f0  b7f50000  beq r1, zero, 380
0013f4  9f007000  addli r1, zero, 56
0013f8  3d000000  xfence
0013fc  00a00300  mfence { lm, sm, gm }
001400  33810028  zext_int2long r[3:4], r1
001404  5b040000  j 32
001408  9f707000  addli r1, zero, 63
00140c  eb528fff  load.d r[6:7], -8(r30)
001410  9f730000  addli r7, zero, 7
001414  b3800028  zext_int2long r[2:3], r1
001418  93a01204  setlt.ul r1, r[6:7], r[2:3]
00141c  27910200  addli.d r[3:4], r[6:7], 1
001420  37950000  beq r1, zero, 324
001424  9f700000  addli r1, zero, 7
001428  733c2ffe  store.d r[3:4], -8(r30)
00142c  17331102  sll.d r[7:8], r[3:4], r1
001430  6b510fff  load.d r[3:4], -16(r30)
001434  db040000  j 36
001438  27410100  addli.d r[3:4], r[3:4], 4
00143c  0b142d11  add.s r8, r26, r18
001440  9320e102  setneq.d r1, r[3:4], r[15:16]
001444  73665400  stores.w r5, 12(r8)
001448  73645401  stores.w r21, 8(r8)
00144c  73628401  stores.w r24, 4(r8)
001450  73600401  stores.w r16, 0(r8)
001454  b7de00fe  beq r1, zero, -76
001458  0b246110  add.ul r[9:10], r[3:4], r[7:8]
00145c  1b392400  slli r18, r8, 2
001460  8b922511  add.s r5, r11, r18
001464  6fc5c200  loads.w r10, 12(r5)
001468  efc60200  loads.w r13, 0(r5)
00146c  efc04200  loads.w r1, 4(r5)
001470  6fcb8200  loads.w r22, 8(r5)
001474  170a7501  and r20, r10, r23
001478  93824c05  setlt.u r5, r25, r20
00147c  3bb00200  bneq r5, zero, 12
001480  9f020500  addli r5, r10, 0
001484  5b010000  j 8
001488  97123501  or r5, r10, r19
00148c  17067b01  and r12, r22, r23
001490  1384cc04  setlt.u r8, r25, r12
001494  3b300400  bneq r8, zero, 12
001498  9f0a0b00  addli r21, r22, 0
00149c  5b010000  j 8
0014a0  971a3b01  or r21, r22, r19
0014a4  97887001  and r17, r1, r23
0014a8  13841c05  setlt.u r8, r25, r17
0014ac  3b300400  bneq r8, zero, 12
0014b0  1f8c0000  addli r24, r1, 0
0014b4  5b010000  j 8
0014b8  179c3001  or r24, r1, r19
0014bc  17847601  and r8, r13, r23
0014c0  93848c04  setlt.u r9, r25, r8
0014c4  3bd00400  bneq r9, zero, 20
0014c8  1f880600  addli r16, r13, 0
0014cc  13048e04  setlt.u r8, r28, r8
0014d0  37500400  beq r8, zero, 20
0014d4  db040000  j 36
0014d8  17983601  or r16, r13, r19
0014dc  13048e04  setlt.u r8, r28, r8
0014e0  3b600400  bneq r8, zero, 24
0014e4  1bc40601  srli r8, r13, 16
0014e8  1b041400  andi r8, r8, 1
0014ec  0b948610  add.s r8, r13, r8
0014f0  0b14b411  add.s r8, r8, r27
0014f4  17084400  and r16, r8, r4
0014f8  13041e05  setlt.u r8, r28, r17
0014fc  37600400  beq r8, zero, 24
001500  9300ce04  setlt.u r1, r28, r12
001504  b7b00000  beq r1, zero, 44
001508  93004e05  setlt.u r1, r28, r20
00150c  bbbc00fe  bneq r1, zero, -212
001510  db070000  j 60
001514  1bc40001  srli r8, r1, 16
001518  1b041400  andi r8, r8, 1
00151c  8b908010  add.s r1, r1, r8
001520  8b90b011  add.s r1, r1, r27
001524  178c4000  and r24, r1, r4
001528  9300ce04  setlt.u r1, r28, r12
00152c  3bff00fe  bneq r1, zero, -36
001530  9b400b01  srli r1, r22, 16
001534  9b801000  andi r1, r1, 1
001538  8b101b10  add.s r1, r22, r1
00153c  8b90b011  add.s r1, r1, r27
001540  978a4000  and r21, r1, r4
001544  93004e05  setlt.u r1, r28, r20
001548  bbcb00fe  bneq r1, zero, -272
00154c  9b400501  srli r1, r10, 16
001550  9b801000  andi r1, r1, 1
001554  8b101510  add.s r1, r10, r1
001558  8b90b011  add.s r1, r1, r27
00155c  97824000  and r5, r1, r4
001560  5bdbffff  j -296
001564  00360002  core_id r12
001568  00200100  mfence { sm }
00156c  9f70f001  addli r1, zero, 255
001570  1f3c0000  addli r24, zero, 3
001574  80a20004  csr_set csr5, r1
001578  00e00200  sync_core
00157c  b73286f7  beq r12, r24, -4948
001580  9f560000  addli r13, zero, 5
001584  1f088000  addli r16, zero, 64
001588  1f1a0000  addli r20, zero, 1
00158c  9f0a1000  addli r21, zero, 8
001590  1f5b1000  addli r22, zero, 13
001594  1f4d0000  addli r26, zero, 4
001598  bb6206f6  bneq r12, zero, -4936
00159c  e3406fff  loadli.w r1,  -76(r30)
0015a0  1f010007  addli r2, zero, 896
0015a4  eb540fff  load.d r[10:11], -16(r30)
0015a8  33010128  zext_int2long r[3:4], r2
0015ac  9bb07000  slli r1, r1, 7
0015b0  b3820028  zext_int2long r[6:7], r1
0015b4  e3408fff  loadli.w r1,  -60(r30)
0015b8  0ba12240  min.ul r[3:4], r[6:7], r[3:4]
0015bc  9bb06000  slli r1, r1, 6
0015c0  b3930028  sext_int2long r[8:9], r1
0015c4  a7000101  addli.d r[2:3], r[3:4], 128
0015c8  9f112000  addli r3, zero, 17
0015cc  8bb49340  min.sl r[10:11], r[8:9], r[10:11]
0015d0  8ba05048  max.ul r[2:3], r[2:3], r[6:7]
0015d4  a7848400  addli.d r[10:11], r[10:11], 64
0015d8  8bb05018  sub.sl r[2:3], r[2:3], r[6:7]
0015dc  8bb27448  max.sl r[6:7], r[10:11], r[8:9]
0015e0  8ba0e040  min.ul r[2:3], r[2:3], r[15:16]
0015e4  b3040828  zext_int2long r[10:11], r16
0015e8  6b570f01  load.d r[15:16], 16(r30)
0015ec  8bb27218  sub.sl r[6:7], r[6:7], r[8:9]
0015f0  eb538ffc  load.d r[8:9], -56(r30)
0015f4  8bb29240  min.sl r[6:7], r[6:7], r[10:11]
0015f8  eb548ffb  load.d r[10:11], -72(r30)
0015fc  97b33302  sll.d r[8:9], r[8:9], r3
001600  9f411000  addli r3, zero, 12
001604  7d900100  xwait r3, 0
001608  ab410600  lui r3, 100
00160c  8b237710  add.ul r[8:9], r[15:16], r[8:9]
001610  1d800600  lock zero, r13
001614  150a0a00  dma_cfg r20, r20, zero, 0
001618  9b910104  ori r3, r3, 64
00161c  8ba39310  add.ul r[8:9], r[8:9], r[10:11]
001620  15000a02  dma_cfg zero, r20, zero, 1
001624  9ff43000  addli r9, r1, 31
001628  9bb01000  slli r1, r1, 1
00162c  1f010001  addli r2, zero, 128
001630  8b913510  add.s r3, r11, r3
001634  15040004  dma_cfg r8, zero, zero, 2
001638  9b80e003  andi r1, r1, 62
00163c  95830107  dma_cfg r7, r3, r16, 3
001640  9bc15400  srli r3, r9, 5
001644  9f730000  addli r7, zero, 7
001648  15083108  dma_cfg r16, r2, r3, 4
00164c  1f010004  addli r2, zero, 512
001650  9f010010  addli r3, zero, 2048
001654  9501510a  dma_cfg r3, r2, r5, 5
001658  15001010  dma_cfg zero, zero, r1, 8
00165c  35000000  dma_run zero
001660  1500400b  dma_cfg zero, zero, r20, 5
001664  15000010  dma_cfg zero, zero, zero, 8
001668  1d900600  unlock r13
00166c  7d000b00  xsignal r22, 0
001670  5b7cfdff  j -5152
001674  7d000000  xsignal zero, 0
001678  bb600600  bneq r12, zero, 56
00167c  9f200000  addli r1, zero, 2
001680  7d100000  xwait zero, 0
001684  7d100000  xwait zero, 0
001688  7d100000  xwait zero, 0
00168c  7d100000  xwait zero, 0
001690  7d100000  xwait zero, 0
001694  7d100000  xwait zero, 0
001698  7d100000  xwait zero, 0
00169c  7d100000  xwait zero, 0
0016a0  1d800000  lock zero, r1
0016a4  0d000020  ew_cfg zero, zero, zero, 16
0016a8  1d900000  unlock r1
0016ac  7d400000  xsignal_mode_cfg zero
0016b0  9f8ebe00  addli sp, sp, 88
0016b4  00a00300  mfence { lm, sm, gm }
0016b8  00100000  exit
0016bc  00100000  exit
0016c0  00100000  exit
0016c4  00100000  exit
0016c8  00100000  exit
0016cc  00100000  exit
0016d0  00100000  exit
0016d4  00100000  exit
0016d8  00100000  exit
0016dc  00100000  exit
0016e0  00100000  exit
0016e4  00100000  exit
0016e8  00100000  exit
0016ec  00100000  exit
0016f0  00100000  exit
0016f4  00100000  exit
0016f8  00100000  exit
0016fc  00100000  exit
001700  00100000  exit
001704  00100000  exit
001708  00100000  exit
00170c  00100000  exit
001710  00100000  exit
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
