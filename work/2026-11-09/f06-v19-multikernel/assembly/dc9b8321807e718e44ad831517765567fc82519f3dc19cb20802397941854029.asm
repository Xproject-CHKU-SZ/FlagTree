; SHA-256 dc9b8321807e718e44ad831517765567fc82519f3dc19cb20802397941854029
; P800 SDNN · XTDK LLVM 19 · 743 / 743 words decoded
; bound names: triton_tem_fused_mm_0
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
0000b4  9f8e6eff  addli sp, sp, -80
0000b8  1f8f2e00  addli r30, sp, 16
0000bc  9f100000  addli r1, zero, 1
0000c0  00310002  core_id r2
0000c4  63064f00  loadli.w r12,  32(r30)
0000c8  e3463f00  loadli.w r13,  28(r30)
0000cc  7dc00000  xsignal_mode_cfg r1
0000d0  37600100  beq r2, zero, 24
0000d4  abf0ffff  lui r1, 1048575
0000d8  9b90f0ff  ori r1, r1, 4095
0000dc  80a10004  csr_set csr3, r1
0000e0  00d00100  sync_group
0000e4  5b140000  j 160
0000e8  9f210000  addli r3, zero, 2
0000ec  fdd00000  uni_sram_cfg r1, r1
0000f0  2bf2ffff  lui r4, 1048575
0000f4  1d800100  lock zero, r3
0000f8  8d000020  ew_cfg r1, zero, zero, 16
0000fc  9b10f2ff  ori r1, r4, 4095
000100  1d900100  unlock r3
000104  9f510000  addli r3, zero, 5
000108  80a10004  csr_set csr3, r1
00010c  9f301000  addli r1, zero, 11
000110  00d00100  sync_group
000114  7d800000  xsignal r1, 0
000118  7d800000  xsignal r1, 0
00011c  7d800000  xsignal r1, 0
000120  7d800000  xsignal r1, 0
000124  7d800000  xsignal r1, 0
000128  9f300000  addli r1, zero, 3
00012c  7d800100  xsignal r3, 0
000130  7d800100  xsignal r3, 0
000134  7d800100  xsignal r3, 0
000138  7d800100  xsignal r3, 0
00013c  7d800100  xsignal r3, 0
000140  9f111000  addli r3, zero, 9
000144  7d800000  xsignal r1, 0
000148  7d800000  xsignal r1, 0
00014c  7d800000  xsignal r1, 0
000150  7d800000  xsignal r1, 0
000154  7d800000  xsignal r1, 0
000158  9f700000  addli r1, zero, 7
00015c  7d800100  xsignal r3, 0
000160  7d800100  xsignal r3, 0
000164  7d800100  xsignal r3, 0
000168  7d800100  xsignal r3, 0
00016c  7d800100  xsignal r3, 0
000170  7d800000  xsignal r1, 0
000174  7d800000  xsignal r1, 0
000178  7d800000  xsignal r1, 0
00017c  7d800000  xsignal r1, 0
000180  7d800000  xsignal r1, 0
000184  e3003f00  loadli.w r1,  24(r30)
000188  e3413f00  loadli.w r3,  28(r30)
00018c  80d20002  load_param_i r5, 1
000190  63024f00  loadli.w r4,  32(r30)
000194  8b901120  mul.s r1, r3, r1
000198  9f810200  addli r3, r5, 0
00019c  8b914050  fmac.s r3, r1, r4
0001a0  0b924020  mul.s r4, r1, r4
0001a4  9ff1f1ff  addli r3, r3, -1
0001a8  8b915130  div.s r3, r3, r5
0001ac  80520002  load_param_i r5, 0
0001b0  8b905120  mul.s r1, r3, r5
0001b4  8b915150  fmac.s r3, r3, r5
0001b8  8b914140  min.s r3, r3, r4
0001bc  4bed1102  ble.s r3, r1, 1880
0001c0  339c0128  sext_int2long r[25:26], r3
0001c4  33930028  sext_int2long r[7:8], r1
0001c8  1f540000  addli r8, zero, 5
0001cc  9f048000  addli r9, zero, 64
0001d0  1f150000  addli r10, zero, 1
0001d4  9f051000  addli r11, zero, 8
0001d8  1f720000  addli r4, zero, 7
0001dc  2b870200  lui r14, 40
0001e0  1f591000  addli r18, zero, 13
0001e4  9f270000  addli r15, zero, 2
0001e8  9f390000  addli r19, zero, 3
0001ec  9f480000  addli r17, zero, 4
0001f0  1f680000  addli r16, zero, 6
0001f4  9f020001  addli r5, zero, 128
0001f8  9f0d0000  addli r27, zero, 0
0001fc  5b2b0000  j 344
000200  9b100704  ori r1, r14, 64
000204  1d800800  lock zero, r17
000208  15050500  dma_cfg r10, r10, zero, 0
00020c  8b901110  add.s r1, r3, r1
000210  15800b04  dma_cfg zero, r23, zero, 2
000214  9f010002  addli r3, zero, 256
000218  95009b06  dma_cfg r1, r22, r9, 3
00021c  9f101000  addli r1, zero, 9
000220  9582f408  dma_cfg r5, r9, r15, 4
000224  9581920a  dma_cfg r3, r5, r9, 5
000228  15000010  dma_cfg zero, zero, zero, 8
00022c  35000000  dma_run zero
000230  1500a00a  dma_cfg zero, zero, r10, 5
000234  15000010  dma_cfg zero, zero, zero, 8
000238  1d900800  unlock r17
00023c  1d000400  lock zero, r8
000240  15000014  dma_cfg zero, zero, zero, 10
000244  1500a014  dma_cfg zero, zero, r10, 10
000248  1500f014  dma_cfg zero, zero, r15, 10
00024c  15003015  dma_cfg zero, zero, r19, 10
000250  15001015  dma_cfg zero, zero, r17, 10
000254  15008014  dma_cfg zero, zero, r8, 10
000258  15000015  dma_cfg zero, zero, r16, 10
00025c  15004014  dma_cfg zero, zero, r4, 10
000260  1500b014  dma_cfg zero, zero, r11, 10
000264  15001014  dma_cfg zero, zero, r1, 10
000268  9f201000  addli r1, zero, 10
00026c  15001014  dma_cfg zero, zero, r1, 10
000270  9f301000  addli r1, zero, 11
000274  15001014  dma_cfg zero, zero, r1, 10
000278  9f401000  addli r1, zero, 12
00027c  15001014  dma_cfg zero, zero, r1, 10
000280  9f601000  addli r1, zero, 14
000284  15002015  dma_cfg zero, zero, r18, 10
000288  15001014  dma_cfg zero, zero, r1, 10
00028c  9f701000  addli r1, zero, 15
000290  15001014  dma_cfg zero, zero, r1, 10
000294  9f002000  addli r1, zero, 16
000298  15001014  dma_cfg zero, zero, r1, 10
00029c  9f102000  addli r1, zero, 17
0002a0  15001014  dma_cfg zero, zero, r1, 10
0002a4  9f202000  addli r1, zero, 18
0002a8  15001014  dma_cfg zero, zero, r1, 10
0002ac  9f302000  addli r1, zero, 19
0002b0  15001014  dma_cfg zero, zero, r1, 10
0002b4  9f402000  addli r1, zero, 20
0002b8  15001014  dma_cfg zero, zero, r1, 10
0002bc  9f502000  addli r1, zero, 21
0002c0  15001014  dma_cfg zero, zero, r1, 10
0002c4  9f602000  addli r1, zero, 22
0002c8  15001014  dma_cfg zero, zero, r1, 10
0002cc  9f702000  addli r1, zero, 23
0002d0  15001014  dma_cfg zero, zero, r1, 10
0002d4  9f003000  addli r1, zero, 24
0002d8  15001014  dma_cfg zero, zero, r1, 10
0002dc  9f103000  addli r1, zero, 25
0002e0  15001014  dma_cfg zero, zero, r1, 10
0002e4  9f203000  addli r1, zero, 26
0002e8  15001014  dma_cfg zero, zero, r1, 10
0002ec  9f303000  addli r1, zero, 27
0002f0  15001014  dma_cfg zero, zero, r1, 10
0002f4  9f403000  addli r1, zero, 28
0002f8  15001014  dma_cfg zero, zero, r1, 10
0002fc  9f503000  addli r1, zero, 29
000300  15001014  dma_cfg zero, zero, r1, 10
000304  9f603000  addli r1, zero, 30
000308  15001014  dma_cfg zero, zero, r1, 10
00030c  9f703000  addli r1, zero, 31
000310  15001014  dma_cfg zero, zero, r1, 10
000314  15050500  dma_cfg r10, r10, zero, 0
000318  15050002  dma_cfg r10, zero, zero, 1
00031c  15000004  dma_cfg zero, zero, zero, 2
000320  150e9006  dma_cfg r28, zero, r9, 3
000324  9502f008  dma_cfg r5, zero, r15, 4
000328  9501900a  dma_cfg r3, zero, r9, 5
00032c  15000010  dma_cfg zero, zero, zero, 8
000330  35000000  dma_run zero
000334  1500a00a  dma_cfg zero, zero, r10, 5
000338  15000010  dma_cfg zero, zero, zero, 8
00033c  1d100400  unlock r8
000340  7d800700  xsignal r15, 0
000344  27130300  addli.d r[7:8], r[7:8], 1
000348  9f9d0d00  addli r27, r27, 1
00034c  93308305  setlt.sl r1, r[7:8], r[25:26]
000350  37970002  beq r1, zero, 1476
000354  8b908d38  mod.s r1, r27, r8
000358  9bb1e000  slli r3, r1, 14
00035c  0b9ee110  add.s r28, r3, r14
000360  3755f100  beq r2, r15, 340
000364  8b19c330  div.s r19, r6, r12
000368  0b9ad930  div.s r20, r19, r13
00036c  8b1a9a30  div.s r21, r20, r9
000370  1bbb3a00  slli r22, r21, 3
000374  8b196519  sub.s r19, r10, r22
000378  8b99b940  min.s r19, r19, r11
00037c  8b1b3a39  mod.s r23, r20, r19
000380  0b9d6b11  add.s r26, r23, r22
000384  330b0d28  zext_int2long r[23:24], r26
000388  3b750101  bneq r2, r16, 348
00038c  97392b03  sll.d r[20:21], r[23:24], r18
000390  eb5a0f00  load.d r[22:23], 0(r30)
000394  0bab3a11  add.ul r[23:24], r[22:23], r[20:21]
000398  9f390000  addli r19, zero, 3
00039c  7d900900  xwait r19, 0
0003a0  bf89b8ff  blt.s r17, r27, -416
0003a4  1d000400  lock zero, r8
0003a8  9f101000  addli r1, zero, 9
0003ac  15000014  dma_cfg zero, zero, zero, 10
0003b0  1500a014  dma_cfg zero, zero, r10, 10
0003b4  1500f014  dma_cfg zero, zero, r15, 10
0003b8  15003015  dma_cfg zero, zero, r19, 10
0003bc  15001015  dma_cfg zero, zero, r17, 10
0003c0  15008014  dma_cfg zero, zero, r8, 10
0003c4  15000015  dma_cfg zero, zero, r16, 10
0003c8  15004014  dma_cfg zero, zero, r4, 10
0003cc  1500b014  dma_cfg zero, zero, r11, 10
0003d0  15001014  dma_cfg zero, zero, r1, 10
0003d4  9f201000  addli r1, zero, 10
0003d8  15001014  dma_cfg zero, zero, r1, 10
0003dc  9f301000  addli r1, zero, 11
0003e0  15001014  dma_cfg zero, zero, r1, 10
0003e4  9f401000  addli r1, zero, 12
0003e8  15001014  dma_cfg zero, zero, r1, 10
0003ec  9f601000  addli r1, zero, 14
0003f0  15002015  dma_cfg zero, zero, r18, 10
0003f4  15001014  dma_cfg zero, zero, r1, 10
0003f8  9f701000  addli r1, zero, 15
0003fc  15001014  dma_cfg zero, zero, r1, 10
000400  9f002000  addli r1, zero, 16
000404  15001014  dma_cfg zero, zero, r1, 10
000408  9f102000  addli r1, zero, 17
00040c  15001014  dma_cfg zero, zero, r1, 10
000410  9f202000  addli r1, zero, 18
000414  15001014  dma_cfg zero, zero, r1, 10
000418  9f302000  addli r1, zero, 19
00041c  15001014  dma_cfg zero, zero, r1, 10
000420  9f402000  addli r1, zero, 20
000424  15001014  dma_cfg zero, zero, r1, 10
000428  9f502000  addli r1, zero, 21
00042c  15001014  dma_cfg zero, zero, r1, 10
000430  9f602000  addli r1, zero, 22
000434  15001014  dma_cfg zero, zero, r1, 10
000438  9f702000  addli r1, zero, 23
00043c  15001014  dma_cfg zero, zero, r1, 10
000440  9f003000  addli r1, zero, 24
000444  15001014  dma_cfg zero, zero, r1, 10
000448  9f103000  addli r1, zero, 25
00044c  15001014  dma_cfg zero, zero, r1, 10
000450  9f203000  addli r1, zero, 26
000454  15001014  dma_cfg zero, zero, r1, 10
000458  9f303000  addli r1, zero, 27
00045c  15001014  dma_cfg zero, zero, r1, 10
000460  9f403000  addli r1, zero, 28
000464  15001014  dma_cfg zero, zero, r1, 10
000468  9f503000  addli r1, zero, 29
00046c  15001014  dma_cfg zero, zero, r1, 10
000470  9f603000  addli r1, zero, 30
000474  15001014  dma_cfg zero, zero, r1, 10
000478  9f703000  addli r1, zero, 31
00047c  15001014  dma_cfg zero, zero, r1, 10
000480  9f000002  addli r1, zero, 256
000484  15050500  dma_cfg r10, r10, zero, 0
000488  15050002  dma_cfg r10, zero, zero, 1
00048c  15000004  dma_cfg zero, zero, zero, 2
000490  150e9006  dma_cfg r28, zero, r9, 3
000494  9502f008  dma_cfg r5, zero, r15, 4
000498  9500900a  dma_cfg r1, zero, r9, 5
00049c  15000010  dma_cfg zero, zero, zero, 8
0004a0  35000000  dma_run zero
0004a4  1500a00a  dma_cfg zero, zero, r10, 5
0004a8  15000010  dma_cfg zero, zero, zero, 8
0004ac  1d100400  unlock r8
0004b0  5baaffff  j -688
0004b4  7d900700  xwait r15, 0
0004b8  7d100400  xwait r8, 0
0004bc  1d000000  lock zero, zero
0004c0  81070000  ds_cfg r15, zero, 0
0004c4  81040002  ds_cfg r9, zero, 1
0004c8  8104001c  ds_cfg r9, zero, 14
0004cc  8104001a  ds_cfg r9, zero, 13
0004d0  a1119e02  shuffle_batch r3, r28, r9, 1
0004d4  1d100000  unlock zero
0004d8  7d800900  xsignal r19, 0
0004dc  7d800800  xsignal r17, 0
0004e0  dbccffff  j -412
0004e4  1bbef000  slli r28, r1, 15
0004e8  abc00300  lui r1, 60
0004ec  8b101e10  add.s r1, r28, r1
0004f0  370c4100  beq r2, r4, 768
0004f4  374a1101  beq r2, r17, 656
0004f8  9bb16a00  slli r3, r21, 6
0004fc  8b113a18  sub.s r3, r20, r3
000500  8b913131  div.s r3, r3, r19
000504  b3890128  zext_int2long r[20:21], r3
000508  97b94902  sll.d r[20:21], r[20:21], r4
00050c  17baa902  sll.d r[21:22], r[20:21], r10
000510  3b6ca100  bneq r2, r10, 792
000514  6b5b8f00  load.d r[23:24], 8(r30)
000518  9f390000  addli r19, zero, 3
00051c  7d100200  xwait r4, 0
000520  0b2b4b11  add.ul r[23:24], r[23:24], r[21:22]
000524  3fc4b801  blt.s r17, r27, 272
000528  1d000400  lock zero, r8
00052c  9f111000  addli r3, zero, 9
000530  15000014  dma_cfg zero, zero, zero, 10
000534  1500a014  dma_cfg zero, zero, r10, 10
000538  1500f014  dma_cfg zero, zero, r15, 10
00053c  15003015  dma_cfg zero, zero, r19, 10
000540  15001015  dma_cfg zero, zero, r17, 10
000544  15008014  dma_cfg zero, zero, r8, 10
000548  15000015  dma_cfg zero, zero, r16, 10
00054c  15004014  dma_cfg zero, zero, r4, 10
000550  1500b014  dma_cfg zero, zero, r11, 10
000554  15003014  dma_cfg zero, zero, r3, 10
000558  9f211000  addli r3, zero, 10
00055c  15003014  dma_cfg zero, zero, r3, 10
000560  9f311000  addli r3, zero, 11
000564  15003014  dma_cfg zero, zero, r3, 10
000568  9f411000  addli r3, zero, 12
00056c  15003014  dma_cfg zero, zero, r3, 10
000570  9f611000  addli r3, zero, 14
000574  15002015  dma_cfg zero, zero, r18, 10
000578  15003014  dma_cfg zero, zero, r3, 10
00057c  9f711000  addli r3, zero, 15
000580  15003014  dma_cfg zero, zero, r3, 10
000584  9f012000  addli r3, zero, 16
000588  15003014  dma_cfg zero, zero, r3, 10
00058c  9f112000  addli r3, zero, 17
000590  15003014  dma_cfg zero, zero, r3, 10
000594  9f212000  addli r3, zero, 18
000598  15003014  dma_cfg zero, zero, r3, 10
00059c  9f312000  addli r3, zero, 19
0005a0  15003014  dma_cfg zero, zero, r3, 10
0005a4  9f412000  addli r3, zero, 20
0005a8  15003014  dma_cfg zero, zero, r3, 10
0005ac  9f512000  addli r3, zero, 21
0005b0  15003014  dma_cfg zero, zero, r3, 10
0005b4  9f612000  addli r3, zero, 22
0005b8  15003014  dma_cfg zero, zero, r3, 10
0005bc  9f712000  addli r3, zero, 23
0005c0  15003014  dma_cfg zero, zero, r3, 10
0005c4  9f013000  addli r3, zero, 24
0005c8  15003014  dma_cfg zero, zero, r3, 10
0005cc  9f113000  addli r3, zero, 25
0005d0  15003014  dma_cfg zero, zero, r3, 10
0005d4  9f213000  addli r3, zero, 26
0005d8  15003014  dma_cfg zero, zero, r3, 10
0005dc  9f313000  addli r3, zero, 27
0005e0  15003014  dma_cfg zero, zero, r3, 10
0005e4  9f413000  addli r3, zero, 28
0005e8  15003014  dma_cfg zero, zero, r3, 10
0005ec  9f513000  addli r3, zero, 29
0005f0  15003014  dma_cfg zero, zero, r3, 10
0005f4  9f613000  addli r3, zero, 30
0005f8  15003014  dma_cfg zero, zero, r3, 10
0005fc  9f713000  addli r3, zero, 31
000600  15003014  dma_cfg zero, zero, r3, 10
000604  9f010004  addli r3, zero, 512
000608  15050500  dma_cfg r10, r10, zero, 0
00060c  15050002  dma_cfg r10, zero, zero, 1
000610  15000004  dma_cfg zero, zero, zero, 2
000614  95009006  dma_cfg r1, zero, r9, 3
000618  95021009  dma_cfg r5, zero, r17, 4
00061c  9501900a  dma_cfg r3, zero, r9, 5
000620  15000010  dma_cfg zero, zero, zero, 8
000624  35000000  dma_run zero
000628  1500a00a  dma_cfg zero, zero, r10, 5
00062c  15000010  dma_cfg zero, zero, zero, 8
000630  1d100400  unlock r8
000634  abc10300  lui r3, 60
000638  1d800800  lock zero, r17
00063c  1f0a0004  addli r20, zero, 512
000640  15050500  dma_cfg r10, r10, zero, 0
000644  9b910104  ori r3, r3, 64
000648  15800b04  dma_cfg zero, r23, zero, 2
00064c  8b113e10  add.s r3, r28, r3
000650  95019b06  dma_cfg r3, r22, r9, 3
000654  9f010010  addli r3, zero, 2048
000658  95821409  dma_cfg r5, r9, r17, 4
00065c  158a910a  dma_cfg r20, r3, r9, 5
000660  9f111000  addli r3, zero, 9
000664  15000010  dma_cfg zero, zero, zero, 8
000668  35000000  dma_run zero
00066c  1500a00a  dma_cfg zero, zero, r10, 5
000670  15000010  dma_cfg zero, zero, zero, 8
000674  1d900800  unlock r17
000678  1d000400  lock zero, r8
00067c  15000014  dma_cfg zero, zero, zero, 10
000680  1500a014  dma_cfg zero, zero, r10, 10
000684  1500f014  dma_cfg zero, zero, r15, 10
000688  15003015  dma_cfg zero, zero, r19, 10
00068c  15001015  dma_cfg zero, zero, r17, 10
000690  15008014  dma_cfg zero, zero, r8, 10
000694  15000015  dma_cfg zero, zero, r16, 10
000698  15004014  dma_cfg zero, zero, r4, 10
00069c  1500b014  dma_cfg zero, zero, r11, 10
0006a0  15003014  dma_cfg zero, zero, r3, 10
0006a4  9f211000  addli r3, zero, 10
0006a8  15003014  dma_cfg zero, zero, r3, 10
0006ac  9f311000  addli r3, zero, 11
0006b0  15003014  dma_cfg zero, zero, r3, 10
0006b4  9f411000  addli r3, zero, 12
0006b8  15003014  dma_cfg zero, zero, r3, 10
0006bc  9f611000  addli r3, zero, 14
0006c0  15002015  dma_cfg zero, zero, r18, 10
0006c4  15003014  dma_cfg zero, zero, r3, 10
0006c8  9f711000  addli r3, zero, 15
0006cc  15003014  dma_cfg zero, zero, r3, 10
0006d0  9f012000  addli r3, zero, 16
0006d4  15003014  dma_cfg zero, zero, r3, 10
0006d8  9f112000  addli r3, zero, 17
0006dc  15003014  dma_cfg zero, zero, r3, 10
0006e0  9f212000  addli r3, zero, 18
0006e4  15003014  dma_cfg zero, zero, r3, 10
0006e8  9f312000  addli r3, zero, 19
0006ec  15003014  dma_cfg zero, zero, r3, 10
0006f0  9f412000  addli r3, zero, 20
0006f4  15003014  dma_cfg zero, zero, r3, 10
0006f8  9f512000  addli r3, zero, 21
0006fc  15003014  dma_cfg zero, zero, r3, 10
000700  9f612000  addli r3, zero, 22
000704  15003014  dma_cfg zero, zero, r3, 10
000708  9f712000  addli r3, zero, 23
00070c  15003014  dma_cfg zero, zero, r3, 10
000710  9f013000  addli r3, zero, 24
000714  15003014  dma_cfg zero, zero, r3, 10
000718  9f113000  addli r3, zero, 25
00071c  15003014  dma_cfg zero, zero, r3, 10
000720  9f213000  addli r3, zero, 26
000724  15003014  dma_cfg zero, zero, r3, 10
000728  9f313000  addli r3, zero, 27
00072c  15003014  dma_cfg zero, zero, r3, 10
000730  9f413000  addli r3, zero, 28
000734  15003014  dma_cfg zero, zero, r3, 10
000738  9f513000  addli r3, zero, 29
00073c  15003014  dma_cfg zero, zero, r3, 10
000740  9f613000  addli r3, zero, 30
000744  15003014  dma_cfg zero, zero, r3, 10
000748  9f713000  addli r3, zero, 31
00074c  15003014  dma_cfg zero, zero, r3, 10
000750  15050500  dma_cfg r10, r10, zero, 0
000754  15050002  dma_cfg r10, zero, zero, 1
000758  15000004  dma_cfg zero, zero, zero, 2
00075c  95009006  dma_cfg r1, zero, r9, 3
000760  95021009  dma_cfg r5, zero, r17, 4
000764  150a900a  dma_cfg r20, zero, r9, 5
000768  15000010  dma_cfg zero, zero, zero, 8
00076c  35000000  dma_run zero
000770  1500a00a  dma_cfg zero, zero, r10, 5
000774  15000010  dma_cfg zero, zero, zero, 8
000778  1d100400  unlock r8
00077c  7d000800  xsignal r16, 0
000780  db78ffff  j -1084
000784  9f0a0000  addli r21, zero, 0
000788  9f100000  addli r1, zero, 1
00078c  1f1a0000  addli r20, zero, 1
000790  9f391000  addli r19, zero, 11
000794  7d900800  xwait r17, 0
000798  7d900500  xwait r11, 0
00079c  7d900900  xwait r19, 0
0007a0  9bb9ea00  slli r19, r21, 14
0007a4  9bba8a00  slli r21, r21, 8
0007a8  1d800000  lock zero, r1
0007ac  89849400  mm_cfg r9, r9, r9, 0
0007b0  9799c901  or r19, r19, r28
0007b4  979aca01  or r21, r21, r28
0007b8  89881804  mm_cfg r17, r17, r1, 2
0007bc  a98a3111  mm r21, r3, r19, 8
0007c0  9b091a00  andi r19, r20, 1
0007c4  9f1a0000  addli r21, zero, 1
0007c8  1f0a0000  addli r20, zero, 0
0007cc  1d900000  unlock r1
0007d0  3bcf09fe  bneq r19, zero, -48
0007d4  9f101000  addli r1, zero, 9
0007d8  7d000400  xsignal r8, 0
0007dc  9f390000  addli r19, zero, 3
0007e0  7d800000  xsignal r1, 0
0007e4  9f201000  addli r1, zero, 10
0007e8  7d800000  xsignal r1, 0
0007ec  5b6bffff  j -1192
0007f0  9f111000  addli r3, zero, 9
0007f4  7d100800  xwait r16, 0
0007f8  9f390000  addli r19, zero, 3
0007fc  7d900100  xwait r3, 0
000800  1d000000  lock zero, zero
000804  81070000  ds_cfg r15, zero, 0
000808  81020002  ds_cfg r5, zero, 1
00080c  8104001c  ds_cfg r9, zero, 14
000810  8102001a  ds_cfg r5, zero, 13
000814  418e9004  shuffle_coa r28, r1, r9, 2
000818  1d100000  unlock zero
00081c  7d000200  xsignal r4, 0
000820  7d800500  xsignal r11, 0
000824  5b64ffff  j -1248
000828  9f390000  addli r19, zero, 3
00082c  3b6c01fc  bneq r2, zero, -1256
000830  9bb07100  slli r1, r3, 7
000834  9f010007  addli r3, zero, 896
000838  733c8fff  store.d r[25:26], -8(r30)
00083c  33860128  zext_int2long r[13:14], r3
000840  33890028  zext_int2long r[19:20], r1
000844  b3010028  zext_int2long r[4:5], zero
000848  9b306d00  slli r1, r26, 6
00084c  0b26c940  min.ul r[13:14], r[19:20], r[13:14]
000850  73383ffe  store.d r[4:5], -16(r30)
000854  b3910028  sext_int2long r[4:5], r1
000858  9f102000  addli r1, zero, 17
00085c  6b5c0fff  load.d r[25:26], -16(r30)
000860  27060601  addli.d r[13:14], r[13:14], 128
000864  173b1b02  sll.d r[23:24], r[23:24], r1
000868  9f201000  addli r1, zero, 10
00086c  0b262649  max.ul r[13:14], r[13:14], r[19:20]
000870  0bbc8141  min.sl r[25:26], r[4:5], r[25:26]
000874  0b362619  sub.sl r[13:14], r[13:14], r[19:20]
000878  33890228  zext_int2long r[19:20], r5
00087c  270c8c00  addli.d r[25:26], r[25:26], 64
000880  0b262641  min.ul r[13:14], r[13:14], r[19:20]
000884  0b393c48  max.sl r[19:20], r[25:26], r[4:5]
000888  6b5c8fff  load.d r[25:26], -8(r30)
00088c  7d900000  xwait r1, 0
000890  1d000400  lock zero, r8
000894  9b100e04  ori r1, r28, 64
000898  15050500  dma_cfg r10, r10, zero, 0
00089c  8b313918  sub.sl r[4:5], r[19:20], r[4:5]
0008a0  6b590f01  load.d r[19:20], 16(r30)
0008a4  15000502  dma_cfg zero, r10, zero, 1
0008a8  0b296911  add.ul r[19:20], r[19:20], r[23:24]
0008ac  338b0428  zext_int2long r[23:24], r9
0008b0  0b294911  add.ul r[19:20], r[19:20], r[21:22]
0008b4  8bb16141  min.sl r[4:5], r[4:5], r[23:24]
0008b8  1f0a0004  addli r20, zero, 512
0008bc  9f0a0010  addli r21, zero, 2048
0008c0  95090004  dma_cfg r19, zero, zero, 2
0008c4  15899006  dma_cfg r18, r1, r9, 3
0008c8  9f703600  addli r1, r12, 31
0008cc  1b361600  slli r12, r12, 1
0008d0  e3463f00  loadli.w r13,  28(r30)
0008d4  9f390000  addli r19, zero, 3
0008d8  1f591000  addli r18, zero, 13
0008dc  9bc05000  srli r1, r1, 5
0008e0  95841208  dma_cfg r9, r5, r1, 4
0008e4  9b00e603  andi r1, r12, 62
0008e8  63064f00  loadli.w r12,  32(r30)
0008ec  950a3a0a  dma_cfg r21, r20, r3, 5
0008f0  1f720000  addli r4, zero, 7
0008f4  15001010  dma_cfg zero, zero, r1, 8
0008f8  35000000  dma_run zero
0008fc  1500a00a  dma_cfg zero, zero, r10, 5
000900  9f301000  addli r1, zero, 11
000904  15000010  dma_cfg zero, zero, zero, 8
000908  1d100400  unlock r8
00090c  7d800000  xsignal r1, 0
000910  db46ffff  j -1484
000914  7d000000  xsignal zero, 0
000918  bb600100  bneq r2, zero, 56
00091c  9f200000  addli r1, zero, 2
000920  7d100000  xwait zero, 0
000924  7d100000  xwait zero, 0
000928  7d100000  xwait zero, 0
00092c  7d100000  xwait zero, 0
000930  7d100000  xwait zero, 0
000934  7d100000  xwait zero, 0
000938  7d100000  xwait zero, 0
00093c  7d100000  xwait zero, 0
000940  1d800000  lock zero, r1
000944  0d000020  ew_cfg zero, zero, zero, 16
000948  1d900000  unlock r1
00094c  7d400000  xsignal_mode_cfg zero
000950  9f8e2e00  addli sp, sp, 16
000954  00a00300  mfence { lm, sm, gm }
000958  00100000  exit
00095c  00100000  exit
000960  00100000  exit
000964  00100000  exit
000968  00100000  exit
00096c  00100000  exit
000970  00100000  exit
000974  00100000  exit
000978  00100000  exit
00097c  00100000  exit
000980  00100000  exit
000984  00100000  exit
000988  00100000  exit
00098c  00100000  exit
000990  00100000  exit
000994  00100000  exit
000998  00100000  exit
00099c  00100000  exit
0009a0  00100000  exit
0009a4  00100000  exit
0009a8  00100000  exit
0009ac  00100000  exit
0009b0  00100000  exit
0009b4  00100000  exit
0009b8  00100000  exit
0009bc  00100000  exit
0009c0  00100000  exit
0009c4  00100000  exit
0009c8  00100000  exit
0009cc  00100000  exit
0009d0  00100000  exit
0009d4  00100000  exit
0009d8  00100000  exit
0009dc  00100000  exit
0009e0  00100000  exit
0009e4  00100000  exit
0009e8  00100000  exit
0009ec  00100000  exit
0009f0  00100000  exit
0009f4  00100000  exit
0009f8  00100000  exit
0009fc  00100000  exit
000a00  00100000  exit
000a04  00100000  exit
000a08  00100000  exit
000a0c  00100000  exit
000a10  00100000  exit
000a14  00100000  exit
000a18  00100000  exit
000a1c  00100000  exit
000a20  00100000  exit
000a24  00100000  exit
000a28  00100000  exit
000a2c  00100000  exit
000a30  00100000  exit
000a34  00100000  exit
000a38  00100000  exit
000a3c  00100000  exit
000a40  00100000  exit
000a44  00100000  exit
000a48  00100000  exit
000a4c  00100000  exit
000a50  00100000  exit
000a54  00100000  exit
000a58  00100000  exit
000a5c  00100000  exit
000a60  00100000  exit
000a64  00100000  exit
000a68  00100000  exit
000a6c  00100000  exit
000a70  00100000  exit
000a74  00100000  exit
000a78  00100000  exit
000a7c  00100000  exit
000a80  00100000  exit
000a84  00100000  exit
000a88  00100000  exit
000a8c  00100000  exit
000a90  00100000  exit
000a94  00100000  exit
000a98  00100000  exit
000a9c  00100000  exit
000aa0  00100000  exit
000aa4  00100000  exit
000aa8  00100000  exit
000aac  00100000  exit
000ab0  00100000  exit
000ab4  00100000  exit
000ab8  00100000  exit
000abc  00100000  exit
000ac0  00100000  exit
000ac4  00100000  exit
000ac8  00100000  exit
000acc  00100000  exit
000ad0  00100000  exit
000ad4  00100000  exit
000ad8  00100000  exit
000adc  00100000  exit
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
