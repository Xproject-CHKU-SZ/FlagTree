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
00005c  9f496000  addli r19, zero, 52
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
0000b4  9f8efefd  addli sp, sp, -264
0000b8  9f100000  addli r1, zero, 1
0000bc  00380002  core_id r16
0000c0  1f8f9e01  addli r30, sp, 200
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7100800  beq r16, zero, 36
0000cc  2bf1ffff  lui r2, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b10f1ff  ori r1, r2, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  db280000  j 324
0000ec  1f220000  addli r4, zero, 2
0000f0  fdd00000  uni_sram_cfg r1, r1
0000f4  9f420000  addli r5, zero, 4
0000f8  6b510f02  load.d r[3:4], 32(r30)
0000fc  1f030020  addli r6, zero, 4096
000100  1d000200  lock zero, r4
000104  8d000020  ew_cfg r1, zero, zero, 16
000108  1d100200  unlock r4
00010c  1d800200  lock zero, r5
000110  15000000  dma_cfg zero, zero, zero, 0
000114  15800104  dma_cfg zero, r3, zero, 2
000118  15006106  dma_cfg zero, r2, r6, 3
00011c  1f014000  addli r2, zero, 32
000120  9f010008  addli r3, zero, 1024
000124  15001008  dma_cfg zero, zero, r1, 4
000128  35000000  dma_run zero
00012c  1d900200  unlock r5
000130  7d800000  xsignal r1, 0
000134  7d900000  xwait r1, 0
000138  1d000000  lock zero, zero
00013c  01020000  ds_cfg r4, zero, 0
000140  01000002  ds_cfg zero, zero, 1
000144  01000016  ds_cfg zero, zero, 11
000148  0101001a  ds_cfg r2, zero, 13
00014c  1f510000  addli r2, zero, 5
000150  8101001c  ds_cfg r3, zero, 14
000154  21133008  shuffle_batch r6, zero, r3, 4
000158  1d100000  unlock zero
00015c  7d800000  xsignal r1, 0
000160  7d900000  xwait r1, 0
000164  1d000200  lock zero, r4
000168  ab100100  lui r1, 17
00016c  0d200300  ewtable_cfg r6, 0
000170  0da00002  ewtable_cfg r1, 1
000174  abf0ffff  lui r1, 1048575
000178  1d100200  unlock r4
00017c  7d000000  xsignal zero, 0
000180  7d100000  xwait zero, 0
000184  9b90f0ff  ori r1, r1, 4095
000188  80a10004  csr_set csr3, r1
00018c  9f301000  addli r1, zero, 11
000190  00d00100  sync_group
000194  7d800000  xsignal r1, 0
000198  7d800000  xsignal r1, 0
00019c  7d800000  xsignal r1, 0
0001a0  7d000100  xsignal r2, 0
0001a4  7d000100  xsignal r2, 0
0001a8  7d000100  xsignal r2, 0
0001ac  9f300000  addli r1, zero, 3
0001b0  1f111000  addli r2, zero, 9
0001b4  7d800000  xsignal r1, 0
0001b8  7d800000  xsignal r1, 0
0001bc  7d800000  xsignal r1, 0
0001c0  7d000100  xsignal r2, 0
0001c4  7d000100  xsignal r2, 0
0001c8  7d000100  xsignal r2, 0
0001cc  9f700000  addli r1, zero, 7
0001d0  1f012000  addli r2, zero, 16
0001d4  7d800000  xsignal r1, 0
0001d8  7d800000  xsignal r1, 0
0001dc  7d800000  xsignal r1, 0
0001e0  7d000100  xsignal r2, 0
0001e4  7d000100  xsignal r2, 0
0001e8  7d000100  xsignal r2, 0
0001ec  9f602000  addli r1, zero, 22
0001f0  1f611000  addli r2, zero, 14
0001f4  7d800000  xsignal r1, 0
0001f8  7d800000  xsignal r1, 0
0001fc  7d800000  xsignal r1, 0
000200  7d000100  xsignal r2, 0
000204  7d000100  xsignal r2, 0
000208  7d000100  xsignal r2, 0
00020c  9f003000  addli r1, zero, 24
000210  1f113000  addli r2, zero, 25
000214  7d800000  xsignal r1, 0
000218  7d800000  xsignal r1, 0
00021c  7d800000  xsignal r1, 0
000220  7d000100  xsignal r2, 0
000224  7d000100  xsignal r2, 0
000228  7d000100  xsignal r2, 0
00022c  e3005f00  loadli.w r1,  40(r30)
000230  63415f00  loadli.w r2,  44(r30)
000234  00d20002  load_param_i r4, 1
000238  e3016f00  loadli.w r3,  48(r30)
00023c  8b101120  mul.s r1, r2, r1
000240  1f010200  addli r2, r4, 0
000244  0b913050  fmac.s r2, r1, r3
000248  8b913020  mul.s r3, r1, r3
00024c  1f71f1ff  addli r2, r2, -1
000250  0b114130  div.s r2, r2, r4
000254  00520002  load_param_i r4, 0
000258  8b104120  mul.s r1, r2, r4
00025c  0b114150  fmac.s r2, r2, r4
000260  0b113140  min.s r2, r2, r3
000264  cb58111c  ble.s r2, r1, 14900
000268  33110128  sext_int2long r[3:4], r2
00026c  33940028  sext_int2long r[9:10], r1
000270  2b820d00  lui r4, 216
000274  9f380000  addli r17, zero, 3
000278  1f090001  addli r18, zero, 128
00027c  1f0b2000  addli r22, zero, 16
000280  1f0d1000  addli r26, zero, 8
000284  9f770000  addli r15, zero, 7
000288  9f6a0000  addli r21, zero, 6
00028c  9f1b0000  addli r23, zero, 1
000290  1f2c0000  addli r24, zero, 2
000294  ab0d807f  lui r27, 522240
000298  ab0cffff  lui r25, 1048560
00029c  1f070000  addli r14, zero, 0
0002a0  73302ff6  store.d r[3:4], -160(r30)
0002a4  1f71f01f  addli r2, zero, 4095
0002a8  ab00feff  lui r1, 1048544
0002ac  733c1ff4  store.d r[2:3], -168(r30)
0002b0  2bf1ff7f  lui r2, 524287
0002b4  ab000900  lui r1, 144
0002b8  1b1ef1ff  ori r28, r2, 4095
0002bc  2bf17f7f  lui r2, 522239
0002c0  9b900060  ori r1, r1, 1536
0002c4  9b11f1ff  ori r3, r2, 4095
0002c8  2b010c00  lui r2, 192
0002cc  67451ffe  storeli.w r1, -172(r30)
0002d0  ab700000  lui r1, 7
0002d4  1b110160  ori r2, r2, 1536
0002d8  9b90f0ff  ori r1, r1, 4095
0002dc  67052ffe  storeli.w r2, -176(r30)
0002e0  1b11d2b4  ori r2, r4, 2893
0002e4  2bf27fff  lui r4, 1046527
0002e8  67442ffe  storeli.w r2, -188(r30)
0002ec  2b010f00  lui r2, 240
0002f0  1b110160  ori r2, r2, 1536
0002f4  67042ffe  storeli.w r2, -192(r30)
0002f8  1b11f2ff  ori r2, r4, 4095
0002fc  33020028  zext_int2long r[5:6], zero
000300  73344ff4  store.d r[5:6], -184(r30)
000304  ab024000  lui r5, 1024
000308  e7432ffe  storeli.w r2, -196(r30)
00030c  5b090000  j 72
000310  1f512000  addli r2, zero, 21
000314  1f090001  addli r18, zero, 128
000318  1f0b2000  addli r22, zero, 16
00031c  1f0d1000  addli r26, zero, 8
000320  9f6a0000  addli r21, zero, 6
000324  9f1b0000  addli r23, zero, 1
000328  1f2c0000  addli r24, zero, 2
00032c  7d000100  xsignal r2, 0
000330  1f013000  addli r2, zero, 24
000334  7d000100  xsignal r2, 0
000338  6b548ff8  load.d r[9:10], -120(r30)
00033c  6b530ff6  load.d r[7:8], -160(r30)
000340  63072fff  loadli.w r14,  -112(r30)
000344  27140400  addli.d r[9:10], r[9:10], 1
000348  1f170700  addli r14, r14, 1
00034c  13316404  setlt.sl r2, r[9:10], r[7:8]
000350  3725011c  beq r2, zero, 14664
000354  63016f00  loadli.w r2,  48(r30)
000358  63425f00  loadli.w r4,  44(r30)
00035c  73348ff8  store.d r[9:10], -120(r30)
000360  0b112430  div.s r2, r8, r2
000364  0b124130  div.s r4, r2, r4
000368  8b132231  div.s r7, r4, r18
00036c  1bb13300  slli r2, r7, 3
000370  0b132b18  sub.s r6, r22, r2
000374  0b14a341  min.s r8, r6, r26
000378  0b138238  mod.s r6, r4, r8
00037c  0b132310  add.s r6, r6, r2
000380  1f711000  addli r2, zero, 15
000384  13016104  setlt.u r2, r2, r6
000388  b3040328  zext_int2long r[10:11], r6
00038c  e7466ffe  storeli.w r6, -148(r30)
000390  1f531000  addli r6, zero, 13
000394  73309ff8  store.d r[10:11], -128(r30)
000398  17b56402  sll.d r[11:12], r[10:11], r6
00039c  3b300100  bneq r2, zero, 12
0003a0  6b568ff4  load.d r[13:14], -184(r30)
0003a4  db010000  j 12
0003a8  6b568ff5  load.d r[13:14], -168(r30)
0003ac  1706c502  and.d r[13:14], r[11:12], r[13:14]
0003b0  0b111739  mod.s r2, r14, r17
0003b4  6709effe  storeli.w r14, -112(r30)
0003b8  674a2ffe  storeli.w r2, -92(r30)
0003bc  1b33f100  slli r6, r2, 15
0003c0  1f01000f  addli r2, zero, 1920
0003c4  b3090128  zext_int2long r[20:21], r2
0003c8  2b010300  lui r2, 48
0003cc  8b142310  add.s r9, r6, r2
0003d0  73343fff  store.d r[20:21], -24(r30)
0003d4  bb5a7801  bneq r16, r23, 692
0003d8  0b35c518  sub.sl r[11:12], r[11:12], r[13:14]
0003dc  1f010700  addli r2, r14, 0
0003e0  6b570ff8  load.d r[15:16], -128(r30)
0003e4  7d900800  xwait r17, 0
0003e8  17555503  sra.d r[11:12], r[11:12], r21
0003ec  0b363541  min.sl r[13:14], r[11:12], r[20:21]
0003f0  9f691000  addli r19, zero, 14
0003f4  0b35a618  sub.sl r[11:12], r[13:14], r[11:12]
0003f8  6b560f00  load.d r[13:14], 0(r30)
0003fc  17373703  sll.d r[15:16], r[15:16], r19
000400  1f050501  addli r10, r10, 128
000404  8b26e610  add.ul r[14:15], r[13:14], r[15:16]
000408  9f770000  addli r15, zero, 7
00040c  3f642c00  blt.s r24, r2, 280
000410  9f550000  addli r11, zero, 5
000414  1f410000  addli r2, zero, 4
000418  1d800500  lock zero, r11
00041c  15000014  dma_cfg zero, zero, zero, 10
000420  15007015  dma_cfg zero, zero, r23, 10
000424  15008015  dma_cfg zero, zero, r24, 10
000428  15001015  dma_cfg zero, zero, r17, 10
00042c  15002014  dma_cfg zero, zero, r2, 10
000430  1f111000  addli r2, zero, 9
000434  1500b014  dma_cfg zero, zero, r11, 10
000438  15005015  dma_cfg zero, zero, r21, 10
00043c  1500f014  dma_cfg zero, zero, r15, 10
000440  1500a015  dma_cfg zero, zero, r26, 10
000444  15002014  dma_cfg zero, zero, r2, 10
000448  1f211000  addli r2, zero, 10
00044c  15002014  dma_cfg zero, zero, r2, 10
000450  1f311000  addli r2, zero, 11
000454  15002014  dma_cfg zero, zero, r2, 10
000458  1f411000  addli r2, zero, 12
00045c  15002014  dma_cfg zero, zero, r2, 10
000460  1f511000  addli r2, zero, 13
000464  15002014  dma_cfg zero, zero, r2, 10
000468  1f711000  addli r2, zero, 15
00046c  15003015  dma_cfg zero, zero, r19, 10
000470  15002014  dma_cfg zero, zero, r2, 10
000474  1f112000  addli r2, zero, 17
000478  15006015  dma_cfg zero, zero, r22, 10
00047c  15002014  dma_cfg zero, zero, r2, 10
000480  1f212000  addli r2, zero, 18
000484  15002014  dma_cfg zero, zero, r2, 10
000488  1f312000  addli r2, zero, 19
00048c  15002014  dma_cfg zero, zero, r2, 10
000490  1f412000  addli r2, zero, 20
000494  15002014  dma_cfg zero, zero, r2, 10
000498  1f512000  addli r2, zero, 21
00049c  15002014  dma_cfg zero, zero, r2, 10
0004a0  1f612000  addli r2, zero, 22
0004a4  15002014  dma_cfg zero, zero, r2, 10
0004a8  1f712000  addli r2, zero, 23
0004ac  15002014  dma_cfg zero, zero, r2, 10
0004b0  1f013000  addli r2, zero, 24
0004b4  15002014  dma_cfg zero, zero, r2, 10
0004b8  1f113000  addli r2, zero, 25
0004bc  15002014  dma_cfg zero, zero, r2, 10
0004c0  1f213000  addli r2, zero, 26
0004c4  15002014  dma_cfg zero, zero, r2, 10
0004c8  1f313000  addli r2, zero, 27
0004cc  15002014  dma_cfg zero, zero, r2, 10
0004d0  1f413000  addli r2, zero, 28
0004d4  15002014  dma_cfg zero, zero, r2, 10
0004d8  1f513000  addli r2, zero, 29
0004dc  15002014  dma_cfg zero, zero, r2, 10
0004e0  1f613000  addli r2, zero, 30
0004e4  15002014  dma_cfg zero, zero, r2, 10
0004e8  1f713000  addli r2, zero, 31
0004ec  15002014  dma_cfg zero, zero, r2, 10
0004f0  1f018000  addli r2, zero, 64
0004f4  958b0b00  dma_cfg r23, r23, zero, 0
0004f8  950b0002  dma_cfg r23, zero, zero, 1
0004fc  15000004  dma_cfg zero, zero, zero, 2
000500  95042006  dma_cfg r9, zero, r2, 3
000504  1f010002  addli r2, zero, 256
000508  15098009  dma_cfg r18, zero, r24, 4
00050c  1501200b  dma_cfg r2, zero, r18, 5
000510  15000010  dma_cfg zero, zero, zero, 8
000514  35000000  dma_run zero
000518  1500700b  dma_cfg zero, zero, r23, 5
00051c  15000010  dma_cfg zero, zero, zero, 8
000520  1d900500  unlock r11
000524  1f410000  addli r2, zero, 4
000528  67490ffe  storeli.w zero, -108(r30)
00052c  9f058000  addli r11, zero, 64
000530  1f460000  addli r12, zero, 4
000534  1d000100  lock zero, r2
000538  2b010300  lui r2, 48
00053c  958b0b00  dma_cfg r23, r23, zero, 0
000540  1b110104  ori r2, r2, 64
000544  15000704  dma_cfg zero, r14, zero, 2
000548  0b112310  add.s r2, r6, r2
00054c  1581b606  dma_cfg r2, r13, r11, 3
000550  9f068000  addli r13, zero, 64
000554  1f070002  addli r14, zero, 256
000558  9f550000  addli r11, zero, 5
00055c  1f111000  addli r2, zero, 9
000560  15898609  dma_cfg r18, r13, r24, 4
000564  1507a90a  dma_cfg r14, r18, r10, 5
000568  15000010  dma_cfg zero, zero, zero, 8
00056c  35000000  dma_run zero
000570  1500700b  dma_cfg zero, zero, r23, 5
000574  15000010  dma_cfg zero, zero, zero, 8
000578  1d100600  unlock r12
00057c  1d800500  lock zero, r11
000580  15000014  dma_cfg zero, zero, zero, 10
000584  15007015  dma_cfg zero, zero, r23, 10
000588  15008015  dma_cfg zero, zero, r24, 10
00058c  15001015  dma_cfg zero, zero, r17, 10
000590  1500c014  dma_cfg zero, zero, r12, 10
000594  1500b014  dma_cfg zero, zero, r11, 10
000598  15005015  dma_cfg zero, zero, r21, 10
00059c  1500f014  dma_cfg zero, zero, r15, 10
0005a0  1500a015  dma_cfg zero, zero, r26, 10
0005a4  15002014  dma_cfg zero, zero, r2, 10
0005a8  1f211000  addli r2, zero, 10
0005ac  15002014  dma_cfg zero, zero, r2, 10
0005b0  1f311000  addli r2, zero, 11
0005b4  15002014  dma_cfg zero, zero, r2, 10
0005b8  1f411000  addli r2, zero, 12
0005bc  15002014  dma_cfg zero, zero, r2, 10
0005c0  1f511000  addli r2, zero, 13
0005c4  15002014  dma_cfg zero, zero, r2, 10
0005c8  1f711000  addli r2, zero, 15
0005cc  15003015  dma_cfg zero, zero, r19, 10
0005d0  15002014  dma_cfg zero, zero, r2, 10
0005d4  1f112000  addli r2, zero, 17
0005d8  15006015  dma_cfg zero, zero, r22, 10
0005dc  15002014  dma_cfg zero, zero, r2, 10
0005e0  1f212000  addli r2, zero, 18
0005e4  15002014  dma_cfg zero, zero, r2, 10
0005e8  1f312000  addli r2, zero, 19
0005ec  15002014  dma_cfg zero, zero, r2, 10
0005f0  1f412000  addli r2, zero, 20
0005f4  15002014  dma_cfg zero, zero, r2, 10
0005f8  1f512000  addli r2, zero, 21
0005fc  15002014  dma_cfg zero, zero, r2, 10
000600  1f612000  addli r2, zero, 22
000604  15002014  dma_cfg zero, zero, r2, 10
000608  1f712000  addli r2, zero, 23
00060c  15002014  dma_cfg zero, zero, r2, 10
000610  1f013000  addli r2, zero, 24
000614  15002014  dma_cfg zero, zero, r2, 10
000618  1f113000  addli r2, zero, 25
00061c  15002014  dma_cfg zero, zero, r2, 10
000620  1f213000  addli r2, zero, 26
000624  15002014  dma_cfg zero, zero, r2, 10
000628  1f313000  addli r2, zero, 27
00062c  15002014  dma_cfg zero, zero, r2, 10
000630  1f413000  addli r2, zero, 28
000634  15002014  dma_cfg zero, zero, r2, 10
000638  1f513000  addli r2, zero, 29
00063c  15002014  dma_cfg zero, zero, r2, 10
000640  1f613000  addli r2, zero, 30
000644  15002014  dma_cfg zero, zero, r2, 10
000648  1f713000  addli r2, zero, 31
00064c  15002014  dma_cfg zero, zero, r2, 10
000650  958b0b00  dma_cfg r23, r23, zero, 0
000654  950b0002  dma_cfg r23, zero, zero, 1
000658  15000004  dma_cfg zero, zero, zero, 2
00065c  9504d006  dma_cfg r9, zero, r13, 3
000660  15098009  dma_cfg r18, zero, r24, 4
000664  1507a00a  dma_cfg r14, zero, r10, 5
000668  15000010  dma_cfg zero, zero, zero, 8
00066c  35000000  dma_run zero
000670  1500700b  dma_cfg zero, zero, r23, 5
000674  15000010  dma_cfg zero, zero, zero, 8
000678  1d900500  unlock r11
00067c  7d000c00  xsignal r24, 0
000680  63072fff  loadli.w r14,  -112(r30)
000684  db0b0000  j 92
000688  3b218801  bneq r16, r24, 72
00068c  1f510000  addli r2, zero, 5
000690  7d100c00  xwait r24, 0
000694  9f068000  addli r13, zero, 64
000698  1f460000  addli r12, zero, 4
00069c  7d100100  xwait r2, 0
0006a0  1d000000  lock zero, zero
0006a4  1f110000  addli r2, zero, 1
0006a8  010c0000  ds_cfg r24, zero, 0
0006ac  81060002  ds_cfg r13, zero, 1
0006b0  8106001c  ds_cfg r13, zero, 14
0006b4  0109001a  ds_cfg r18, zero, 13
0006b8  2193d402  shuffle_batch r6, r9, r13, 1
0006bc  1d100000  unlock zero
0006c0  7d800800  xsignal r17, 0
0006c4  67492ffe  storeli.w r2, -108(r30)
0006c8  7d000600  xsignal r12, 0
0006cc  5b020000  j 16
0006d0  67490ffe  storeli.w zero, -108(r30)
0006d4  1f460000  addli r12, zero, 4
0006d8  9f068000  addli r13, zero, 64
0006dc  9f691000  addli r19, zero, 14
0006e0  1bb17300  slli r2, r7, 7
0006e4  0b112218  sub.s r2, r4, r2
0006e8  0b118130  div.s r2, r2, r8
0006ec  b3030128  zext_int2long r[8:9], r2
0006f0  670a2ffe  storeli.w r2, -96(r30)
0006f4  63414fff  loadli.w r2,  -92(r30)
0006f8  17b4f302  sll.d r[9:10], r[8:9], r15
0006fc  1b310101  slli r2, r2, 16
000700  17357403  sll.d r[11:12], r[9:10], r23
000704  674f2ffe  storeli.w r2, -12(r30)
000708  2b810400  lui r2, 72
00070c  733caff6  store.d r[11:12], -136(r30)
000710  8b132310  add.s r7, r6, r2
000714  bb695801  bneq r16, r21, 632
000718  6b548f00  load.d r[9:10], 8(r30)
00071c  7d900700  xwait r15, 0
000720  0b24a410  add.ul r[9:10], r[9:10], r[11:12]
000724  3f44ec00  blt.s r24, r14, 272
000728  1f520000  addli r4, zero, 5
00072c  1f111000  addli r2, zero, 9
000730  1d000200  lock zero, r4
000734  15000014  dma_cfg zero, zero, zero, 10
000738  15007015  dma_cfg zero, zero, r23, 10
00073c  15008015  dma_cfg zero, zero, r24, 10
000740  15001015  dma_cfg zero, zero, r17, 10
000744  1500c014  dma_cfg zero, zero, r12, 10
000748  15004014  dma_cfg zero, zero, r4, 10
00074c  15005015  dma_cfg zero, zero, r21, 10
000750  1500f014  dma_cfg zero, zero, r15, 10
000754  1500a015  dma_cfg zero, zero, r26, 10
000758  15002014  dma_cfg zero, zero, r2, 10
00075c  1f211000  addli r2, zero, 10
000760  15002014  dma_cfg zero, zero, r2, 10
000764  1f311000  addli r2, zero, 11
000768  15002014  dma_cfg zero, zero, r2, 10
00076c  1f411000  addli r2, zero, 12
000770  15002014  dma_cfg zero, zero, r2, 10
000774  1f511000  addli r2, zero, 13
000778  15002014  dma_cfg zero, zero, r2, 10
00077c  1f711000  addli r2, zero, 15
000780  15003015  dma_cfg zero, zero, r19, 10
000784  15002014  dma_cfg zero, zero, r2, 10
000788  1f112000  addli r2, zero, 17
00078c  15006015  dma_cfg zero, zero, r22, 10
000790  15002014  dma_cfg zero, zero, r2, 10
000794  1f212000  addli r2, zero, 18
000798  15002014  dma_cfg zero, zero, r2, 10
00079c  1f312000  addli r2, zero, 19
0007a0  15002014  dma_cfg zero, zero, r2, 10
0007a4  1f412000  addli r2, zero, 20
0007a8  15002014  dma_cfg zero, zero, r2, 10
0007ac  1f512000  addli r2, zero, 21
0007b0  15002014  dma_cfg zero, zero, r2, 10
0007b4  1f612000  addli r2, zero, 22
0007b8  15002014  dma_cfg zero, zero, r2, 10
0007bc  1f712000  addli r2, zero, 23
0007c0  15002014  dma_cfg zero, zero, r2, 10
0007c4  1f013000  addli r2, zero, 24
0007c8  15002014  dma_cfg zero, zero, r2, 10
0007cc  1f113000  addli r2, zero, 25
0007d0  15002014  dma_cfg zero, zero, r2, 10
0007d4  1f213000  addli r2, zero, 26
0007d8  15002014  dma_cfg zero, zero, r2, 10
0007dc  1f313000  addli r2, zero, 27
0007e0  15002014  dma_cfg zero, zero, r2, 10
0007e4  1f413000  addli r2, zero, 28
0007e8  15002014  dma_cfg zero, zero, r2, 10
0007ec  1f513000  addli r2, zero, 29
0007f0  15002014  dma_cfg zero, zero, r2, 10
0007f4  1f613000  addli r2, zero, 30
0007f8  15002014  dma_cfg zero, zero, r2, 10
0007fc  1f713000  addli r2, zero, 31
000800  15002014  dma_cfg zero, zero, r2, 10
000804  1f010004  addli r2, zero, 512
000808  958b0b00  dma_cfg r23, r23, zero, 0
00080c  950b0002  dma_cfg r23, zero, zero, 1
000810  15000004  dma_cfg zero, zero, zero, 2
000814  9503d006  dma_cfg r7, zero, r13, 3
000818  1509c008  dma_cfg r18, zero, r12, 4
00081c  1501d00a  dma_cfg r2, zero, r13, 5
000820  15000010  dma_cfg zero, zero, zero, 8
000824  35000000  dma_run zero
000828  1500700b  dma_cfg zero, zero, r23, 5
00082c  15000010  dma_cfg zero, zero, zero, 8
000830  1d100200  unlock r4
000834  2b810400  lui r2, 72
000838  e7090ffe  storeli.w zero, -104(r30)
00083c  e7490ffe  storeli.w zero, -100(r30)
000840  1f520000  addli r4, zero, 5
000844  1d000600  lock zero, r12
000848  1b110104  ori r2, r2, 64
00084c  958b0b00  dma_cfg r23, r23, zero, 0
000850  15800404  dma_cfg zero, r9, zero, 2
000854  0b112310  add.s r2, r6, r2
000858  1f030004  addli r6, zero, 512
00085c  1501d406  dma_cfg r2, r8, r13, 3
000860  1f010020  addli r2, zero, 4096
000864  1589c608  dma_cfg r18, r13, r12, 4
000868  1503d10a  dma_cfg r6, r2, r13, 5
00086c  1f111000  addli r2, zero, 9
000870  15000010  dma_cfg zero, zero, zero, 8
000874  35000000  dma_run zero
000878  1500700b  dma_cfg zero, zero, r23, 5
00087c  15000010  dma_cfg zero, zero, zero, 8
000880  1d100600  unlock r12
000884  1d000200  lock zero, r4
000888  15000014  dma_cfg zero, zero, zero, 10
00088c  15007015  dma_cfg zero, zero, r23, 10
000890  15008015  dma_cfg zero, zero, r24, 10
000894  15001015  dma_cfg zero, zero, r17, 10
000898  1500c014  dma_cfg zero, zero, r12, 10
00089c  15004014  dma_cfg zero, zero, r4, 10
0008a0  15005015  dma_cfg zero, zero, r21, 10
0008a4  1500f014  dma_cfg zero, zero, r15, 10
0008a8  1500a015  dma_cfg zero, zero, r26, 10
0008ac  15002014  dma_cfg zero, zero, r2, 10
0008b0  1f211000  addli r2, zero, 10
0008b4  15002014  dma_cfg zero, zero, r2, 10
0008b8  1f311000  addli r2, zero, 11
0008bc  15002014  dma_cfg zero, zero, r2, 10
0008c0  1f411000  addli r2, zero, 12
0008c4  15002014  dma_cfg zero, zero, r2, 10
0008c8  1f511000  addli r2, zero, 13
0008cc  15002014  dma_cfg zero, zero, r2, 10
0008d0  1f711000  addli r2, zero, 15
0008d4  15003015  dma_cfg zero, zero, r19, 10
0008d8  15002014  dma_cfg zero, zero, r2, 10
0008dc  1f112000  addli r2, zero, 17
0008e0  15006015  dma_cfg zero, zero, r22, 10
0008e4  15002014  dma_cfg zero, zero, r2, 10
0008e8  1f212000  addli r2, zero, 18
0008ec  15002014  dma_cfg zero, zero, r2, 10
0008f0  1f312000  addli r2, zero, 19
0008f4  15002014  dma_cfg zero, zero, r2, 10
0008f8  1f412000  addli r2, zero, 20
0008fc  15002014  dma_cfg zero, zero, r2, 10
000900  1f512000  addli r2, zero, 21
000904  15002014  dma_cfg zero, zero, r2, 10
000908  1f612000  addli r2, zero, 22
00090c  15002014  dma_cfg zero, zero, r2, 10
000910  1f712000  addli r2, zero, 23
000914  15002014  dma_cfg zero, zero, r2, 10
000918  1f013000  addli r2, zero, 24
00091c  15002014  dma_cfg zero, zero, r2, 10
000920  1f113000  addli r2, zero, 25
000924  15002014  dma_cfg zero, zero, r2, 10
000928  1f213000  addli r2, zero, 26
00092c  15002014  dma_cfg zero, zero, r2, 10
000930  1f313000  addli r2, zero, 27
000934  15002014  dma_cfg zero, zero, r2, 10
000938  1f413000  addli r2, zero, 28
00093c  15002014  dma_cfg zero, zero, r2, 10
000940  1f513000  addli r2, zero, 29
000944  15002014  dma_cfg zero, zero, r2, 10
000948  1f613000  addli r2, zero, 30
00094c  15002014  dma_cfg zero, zero, r2, 10
000950  1f713000  addli r2, zero, 31
000954  15002014  dma_cfg zero, zero, r2, 10
000958  958b0b00  dma_cfg r23, r23, zero, 0
00095c  950b0002  dma_cfg r23, zero, zero, 1
000960  15000004  dma_cfg zero, zero, zero, 2
000964  9503d006  dma_cfg r7, zero, r13, 3
000968  1509c008  dma_cfg r18, zero, r12, 4
00096c  1503d00a  dma_cfg r6, zero, r13, 5
000970  15000010  dma_cfg zero, zero, zero, 8
000974  35000000  dma_run zero
000978  1500700b  dma_cfg zero, zero, r23, 5
00097c  15000010  dma_cfg zero, zero, zero, 8
000980  1d100200  unlock r4
000984  7d800a00  xsignal r21, 0
000988  5b1b0000  j 216
00098c  3721c800  beq r16, r12, 72
000990  3b23f800  bneq r16, r15, 200
000994  1f111000  addli r2, zero, 9
000998  e7090ffe  storeli.w zero, -104(r30)
00099c  7d900a00  xwait r21, 0
0009a0  7d100100  xwait r2, 0
0009a4  1d000000  lock zero, zero
0009a8  1f110000  addli r2, zero, 1
0009ac  010c0000  ds_cfg r24, zero, 0
0009b0  01090002  ds_cfg r18, zero, 1
0009b4  8106001c  ds_cfg r13, zero, 14
0009b8  0109001a  ds_cfg r18, zero, 13
0009bc  4183d304  shuffle_coa r6, r7, r13, 2
0009c0  1d100000  unlock zero
0009c4  7d800700  xsignal r15, 0
0009c8  e7492ffe  storeli.w r2, -100(r30)
0009cc  7d000d00  xsignal r26, 0
0009d0  5b120000  j 144
0009d4  1f341000  addli r8, zero, 11
0009d8  7d100600  xwait r12, 0
0009dc  7d100d00  xwait r26, 0
0009e0  9f030000  addli r7, zero, 0
0009e4  1f110000  addli r2, zero, 1
0009e8  1f120000  addli r4, zero, 1
0009ec  7d100400  xwait r8, 0
0009f0  634aefff  loadli.w r20,  -12(r30)
0009f4  1bb4e300  slli r8, r7, 14
0009f8  9bb38300  slli r7, r7, 8
0009fc  1d000100  lock zero, r2
000a00  89862601  mm_cfg r13, r13, r18, 0
000a04  17146400  or r8, r8, r6
000a08  97934301  or r7, r7, r20
000a0c  09062604  mm_cfg r12, r12, r2, 2
000a10  a9038310  mm r7, r6, r8, 8
000a14  1b041200  andi r8, r4, 1
000a18  9f130000  addli r7, zero, 1
000a1c  1f020000  addli r4, zero, 0
000a20  1d100100  unlock r2
000a24  3b4f04fe  bneq r8, zero, -48
000a28  1f510000  addli r2, zero, 5
000a2c  e7490ffe  storeli.w zero, -100(r30)
000a30  7d000100  xsignal r2, 0
000a34  1f111000  addli r2, zero, 9
000a38  7d000100  xsignal r2, 0
000a3c  1f110000  addli r2, zero, 1
000a40  e7092ffe  storeli.w r2, -104(r30)
000a44  1f211000  addli r2, zero, 10
000a48  7d000100  xsignal r2, 0
000a4c  6b548ffe  load.d r[9:10], -24(r30)
000a50  37701801  beq r16, r17, 28
000a54  db040000  j 36
000a58  e7090ffe  storeli.w zero, -104(r30)
000a5c  e7490ffe  storeli.w zero, -100(r30)
000a60  6b548ffe  load.d r[9:10], -24(r30)
000a64  634aefff  loadli.w r20,  -12(r30)
000a68  3b401801  bneq r16, r17, 16
000a6c  1f211000  addli r2, zero, 10
000a70  7d100100  xwait r2, 0
000a74  7d900900  xwait r19, 0
000a78  6341affe  loadli.w r2,  -172(r30)
000a7c  3d000000  xfence
000a80  b3060928  zext_int2long r[14:15], r18
000a84  00a00300  mfence { lm, sm, gm }
000a88  0b1c2a10  add.s r24, r20, r2
000a8c  1f71f001  addli r2, zero, 255
000a90  80220104  csr_set csr5, r2
000a94  1f711000  addli r2, zero, 15
000a98  33030128  zext_int2long r[7:8], r2
000a9c  73386ffa  store.d r[7:8], -80(r30)
000aa0  00e00200  sync_core
000aa4  bb050800  bneq r16, zero, 352
000aa8  3d000000  xfence
000aac  33040028  zext_int2long r[9:10], zero
000ab0  00a00300  mfence { lm, sm, gm }
000ab4  733c8ffe  store.d r[9:10], -8(r30)
000ab8  5b030000  j 24
000abc  6b530ffb  load.d r[7:8], -80(r30)
000ac0  9f770000  addli r15, zero, 7
000ac4  13216404  setlt.ul r2, r[9:10], r[7:8]
000ac8  27140400  addli.d r[9:10], r[9:10], 1
000acc  b7340100  beq r2, zero, 300
000ad0  1735f402  sll.d r[11:12], r[9:10], r15
000ad4  eb578fff  load.d r[16:17], -8(r30)
000ad8  db040000  j 36
000adc  a7c70700  addli.d r[16:17], r[16:17], 4
000ae0  8b131c11  add.s r7, r24, r17
000ae4  13a1d702  setneq.d r2, r[16:17], r[14:15]
000ae8  73e62301  stores.w r18, 12(r7)
000aec  73e45301  stores.w r21, 8(r7)
000af0  73e24300  stores.w r4, 4(r7)
000af4  73e06300  stores.w r6, 0(r7)
000af8  371f01fe  beq r2, zero, -60
000afc  0ba3a710  add.ul r[7:8], r[16:17], r[11:12]
000b00  9b382300  slli r17, r6, 2
000b04  0b121a11  add.s r4, r20, r17
000b08  6f41c200  loads.w r2, 12(r4)
000b0c  6f4d0200  loads.w r26, 0(r4)
000b10  ef4b4200  loads.w r23, 4(r4)
000b14  6f4b8200  loads.w r22, 8(r4)
000b18  9709c101  and r19, r2, r28
000b1c  13823d05  setlt.u r4, r27, r19
000b20  3b300200  bneq r4, zero, 12
000b24  1f090100  addli r18, r2, 0
000b28  5b010000  j 8
000b2c  17195100  or r18, r2, r5
000b30  1706cb01  and r12, r22, r28
000b34  1382cd04  setlt.u r4, r27, r12
000b38  3b300200  bneq r4, zero, 12
000b3c  9f0a0b00  addli r21, r22, 0
000b40  5b010000  j 8
000b44  971a5b00  or r21, r22, r5
000b48  9783cb01  and r7, r23, r28
000b4c  13827d04  setlt.u r4, r27, r7
000b50  3b300200  bneq r4, zero, 12
000b54  1f820b00  addli r4, r23, 0
000b58  5b010000  j 8
000b5c  17925b00  or r4, r23, r5
000b60  170acd01  and r20, r26, r28
000b64  13834d05  setlt.u r6, r27, r20
000b68  3b500300  bneq r6, zero, 20
000b6c  1f030d00  addli r6, r26, 0
000b70  138a4105  setlt.u r20, r3, r20
000b74  37500a00  beq r20, zero, 20
000b78  db040000  j 36
000b7c  17135d00  or r6, r26, r5
000b80  138a4105  setlt.u r20, r3, r20
000b84  3b600a00  bneq r20, zero, 24
000b88  1b430d01  srli r6, r26, 16
000b8c  1b031300  andi r6, r6, 1
000b90  0b136d10  add.s r6, r26, r6
000b94  0b131310  add.s r6, r6, r1
000b98  17039301  and r6, r6, r25
000b9c  93837104  setlt.u r7, r3, r7
000ba0  3be00300  bneq r7, zero, 24
000ba4  1bc20b01  srli r4, r23, 16
000ba8  1b021200  andi r4, r4, 1
000bac  0b924b10  add.s r4, r23, r4
000bb0  0b121210  add.s r4, r4, r1
000bb4  17029201  and r4, r4, r25
000bb8  9383c104  setlt.u r7, r3, r12
000bbc  634aefff  loadli.w r20,  -12(r30)
000bc0  3be00300  bneq r7, zero, 24
000bc4  9b430b01  srli r7, r22, 16
000bc8  9b831300  andi r7, r7, 1
000bcc  8b137b10  add.s r7, r22, r7
000bd0  8b931310  add.s r7, r7, r1
000bd4  978a9301  and r21, r7, r25
000bd8  93833105  setlt.u r7, r3, r19
000bdc  3b8c03fe  bneq r7, zero, -256
000be0  9b430101  srli r7, r2, 16
000be4  9b831300  andi r7, r7, 1
000be8  0b117110  add.s r2, r2, r7
000bec  0b111110  add.s r2, r2, r1
000bf0  17099101  and r18, r2, r25
000bf4  5bddffff  j -280
000bf8  00200100  mfence { sm }
000bfc  00380002  core_id r16
000c00  6b548ffe  load.d r[9:10], -24(r30)
000c04  1f713000  addli r2, zero, 31
000c08  33030128  zext_int2long r[7:8], r2
000c0c  1f110000  addli r2, zero, 1
000c10  733c6ffa  store.d r[7:8], -72(r30)
000c14  bb052800  bneq r16, r2, 352
000c18  1f012000  addli r2, zero, 16
000c1c  3d000000  xfence
000c20  00a00300  mfence { lm, sm, gm }
000c24  33030128  zext_int2long r[7:8], r2
000c28  5b030000  j 24
000c2c  6b548ffb  load.d r[9:10], -72(r30)
000c30  9f770000  addli r15, zero, 7
000c34  13218304  setlt.ul r2, r[7:8], r[9:10]
000c38  27130300  addli.d r[7:8], r[7:8], 1
000c3c  b7340100  beq r2, zero, 300
000c40  1734f302  sll.d r[9:10], r[7:8], r15
000c44  33050028  zext_int2long r[11:12], zero
000c48  db040000  j 36
000c4c  27450500  addli.d r[11:12], r[11:12], 4
000c50  0b16fc10  add.s r12, r24, r15
000c54  1321d502  setneq.d r2, r[11:12], r[14:15]
000c58  73660601  stores.w r16, 12(r12)
000c5c  73645601  stores.w r21, 8(r12)
000c60  73624600  stores.w r4, 4(r12)
000c64  73602601  stores.w r18, 0(r12)
000c68  371f01fe  beq r2, zero, -60
000c6c  8b278510  add.ul r[16:17], r[11:12], r[9:10]
000c70  9bb72700  slli r15, r15, 2
000c74  0b12fa10  add.s r4, r20, r15
000c78  6f41c200  loads.w r2, 12(r4)
000c7c  ef4b0200  loads.w r23, 0(r4)
000c80  ef484200  loads.w r17, 4(r4)
000c84  6f4b8200  loads.w r22, 8(r4)
000c88  9709c101  and r19, r2, r28
000c8c  13823d05  setlt.u r4, r27, r19
000c90  3b300200  bneq r4, zero, 12
000c94  1f080100  addli r16, r2, 0
000c98  5b010000  j 8
000c9c  17185100  or r16, r2, r5
000ca0  1706cb01  and r12, r22, r28
000ca4  1382cd04  setlt.u r4, r27, r12
000ca8  3b300200  bneq r4, zero, 12
000cac  9f0a0b00  addli r21, r22, 0
000cb0  5b010000  j 8
000cb4  971a5b00  or r21, r22, r5
000cb8  178ac801  and r20, r17, r28
000cbc  13824d05  setlt.u r4, r27, r20
000cc0  3b300200  bneq r4, zero, 12
000cc4  1f820800  addli r4, r17, 0
000cc8  5b010000  j 8
000ccc  17925800  or r4, r17, r5
000cd0  178dcb01  and r26, r23, r28
000cd4  1389ad05  setlt.u r18, r27, r26
000cd8  3b500900  bneq r18, zero, 20
000cdc  1f890b00  addli r18, r23, 0
000ce0  138da105  setlt.u r26, r3, r26
000ce4  37500d00  beq r26, zero, 20
000ce8  db040000  j 36
000cec  17995b00  or r18, r23, r5
000cf0  138da105  setlt.u r26, r3, r26
000cf4  3b600d00  bneq r26, zero, 24
000cf8  1bc90b01  srli r18, r23, 16
000cfc  1b091900  andi r18, r18, 1
000d00  0b992b11  add.s r18, r23, r18
000d04  0b191910  add.s r18, r18, r1
000d08  17099901  and r18, r18, r25
000d0c  138a4105  setlt.u r20, r3, r20
000d10  3b600a00  bneq r20, zero, 24
000d14  1bc20801  srli r4, r17, 16
000d18  1b021200  andi r4, r4, 1
000d1c  0b924810  add.s r4, r17, r4
000d20  0b121210  add.s r4, r4, r1
000d24  17029201  and r4, r4, r25
000d28  1386c104  setlt.u r12, r3, r12
000d2c  634aefff  loadli.w r20,  -12(r30)
000d30  3b600600  bneq r12, zero, 24
000d34  1b460b01  srli r12, r22, 16
000d38  1b061600  andi r12, r12, 1
000d3c  0b16cb10  add.s r12, r22, r12
000d40  0b161610  add.s r12, r12, r1
000d44  970a9601  and r21, r12, r25
000d48  13863105  setlt.u r12, r3, r19
000d4c  3b0c06fe  bneq r12, zero, -256
000d50  1b460101  srli r12, r2, 16
000d54  1b061600  andi r12, r12, 1
000d58  0b11c110  add.s r2, r2, r12
000d5c  0b111110  add.s r2, r2, r1
000d60  17089101  and r16, r2, r25
000d64  5bddffff  j -280
000d68  00200100  mfence { sm }
000d6c  00380002  core_id r16
000d70  6b548ffe  load.d r[9:10], -24(r30)
000d74  1f715000  addli r2, zero, 47
000d78  33030128  zext_int2long r[7:8], r2
000d7c  63412fff  loadli.w r2,  -108(r30)
000d80  73306ffc  store.d r[7:8], -64(r30)
000d84  b7050100  beq r2, zero, 352
000d88  1f014000  addli r2, zero, 32
000d8c  3d000000  xfence
000d90  00a00300  mfence { lm, sm, gm }
000d94  33040128  zext_int2long r[9:10], r2
000d98  5b030000  j 24
000d9c  6b530ffc  load.d r[7:8], -64(r30)
000da0  9f770000  addli r15, zero, 7
000da4  13216404  setlt.ul r2, r[9:10], r[7:8]
000da8  27140400  addli.d r[9:10], r[9:10], 1
000dac  b7340100  beq r2, zero, 300
000db0  1735f402  sll.d r[11:12], r[9:10], r15
000db4  b3070028  zext_int2long r[16:17], zero
000db8  db040000  j 36
000dbc  a7c70700  addli.d r[16:17], r[16:17], 4
000dc0  0b135c11  add.s r6, r24, r21
000dc4  13a1d702  setneq.d r2, r[16:17], r[14:15]
000dc8  73663301  stores.w r19, 12(r6)
000dcc  73647300  stores.w r7, 8(r6)
000dd0  73624300  stores.w r4, 4(r6)
000dd4  73602301  stores.w r18, 0(r6)
000dd8  371f01fe  beq r2, zero, -60
000ddc  0ba3a710  add.ul r[7:8], r[16:17], r[11:12]
000de0  9b3a2300  slli r21, r6, 2
000de4  0b125a11  add.s r4, r20, r21
000de8  6f41c200  loads.w r2, 12(r4)
000dec  ef4b0200  loads.w r23, 0(r4)
000df0  ef484200  loads.w r17, 4(r4)
000df4  6f4b8200  loads.w r22, 8(r4)
000df8  1703c101  and r6, r2, r28
000dfc  13826d04  setlt.u r4, r27, r6
000e00  3b300200  bneq r4, zero, 12
000e04  9f090100  addli r19, r2, 0
000e08  5b010000  j 8
000e0c  97195100  or r19, r2, r5
000e10  1706cb01  and r12, r22, r28
000e14  1382cd04  setlt.u r4, r27, r12
000e18  3b300200  bneq r4, zero, 12
000e1c  9f030b00  addli r7, r22, 0
000e20  5b010000  j 8
000e24  97135b00  or r7, r22, r5
000e28  178ac801  and r20, r17, r28
000e2c  13824d05  setlt.u r4, r27, r20
000e30  3b300200  bneq r4, zero, 12
000e34  1f820800  addli r4, r17, 0
000e38  5b010000  j 8
000e3c  17925800  or r4, r17, r5
000e40  178dcb01  and r26, r23, r28
000e44  1389ad05  setlt.u r18, r27, r26
000e48  3b500900  bneq r18, zero, 20
000e4c  1f890b00  addli r18, r23, 0
000e50  138da105  setlt.u r26, r3, r26
000e54  37500d00  beq r26, zero, 20
000e58  db040000  j 36
000e5c  17995b00  or r18, r23, r5
000e60  138da105  setlt.u r26, r3, r26
000e64  3b600d00  bneq r26, zero, 24
000e68  1bc90b01  srli r18, r23, 16
000e6c  1b091900  andi r18, r18, 1
000e70  0b992b11  add.s r18, r23, r18
000e74  0b191910  add.s r18, r18, r1
000e78  17099901  and r18, r18, r25
000e7c  138a4105  setlt.u r20, r3, r20
000e80  3b600a00  bneq r20, zero, 24
000e84  1bc20801  srli r4, r17, 16
000e88  1b021200  andi r4, r4, 1
000e8c  0b924810  add.s r4, r17, r4
000e90  0b121210  add.s r4, r4, r1
000e94  17029201  and r4, r4, r25
000e98  1386c104  setlt.u r12, r3, r12
000e9c  634aefff  loadli.w r20,  -12(r30)
000ea0  3b600600  bneq r12, zero, 24
000ea4  9b430b01  srli r7, r22, 16
000ea8  9b831300  andi r7, r7, 1
000eac  8b137b10  add.s r7, r22, r7
000eb0  8b931310  add.s r7, r7, r1
000eb4  97839301  and r7, r7, r25
000eb8  13836104  setlt.u r6, r3, r6
000ebc  3b0c03fe  bneq r6, zero, -256
000ec0  1b430101  srli r6, r2, 16
000ec4  1b031300  andi r6, r6, 1
000ec8  0b116110  add.s r2, r2, r6
000ecc  0b111110  add.s r2, r2, r1
000ed0  97099101  and r19, r2, r25
000ed4  5bddffff  j -280
000ed8  00200100  mfence { sm }
000edc  00380002  core_id r16
000ee0  6b548ffe  load.d r[9:10], -24(r30)
000ee4  1f717000  addli r2, zero, 63
000ee8  33030128  zext_int2long r[7:8], r2
000eec  1f310000  addli r2, zero, 3
000ef0  73346ffc  store.d r[7:8], -56(r30)
000ef4  bb052800  bneq r16, r2, 352
000ef8  1f016000  addli r2, zero, 48
000efc  3d000000  xfence
000f00  00a00300  mfence { lm, sm, gm }
000f04  33040128  zext_int2long r[9:10], r2
000f08  5b030000  j 24
000f0c  6b538ffc  load.d r[7:8], -56(r30)
000f10  9f770000  addli r15, zero, 7
000f14  13216404  setlt.ul r2, r[9:10], r[7:8]
000f18  27140400  addli.d r[9:10], r[9:10], 1
000f1c  b7340100  beq r2, zero, 300
000f20  1735f402  sll.d r[11:12], r[9:10], r15
000f24  b30a0028  zext_int2long r[22:23], zero
000f28  db040000  j 36
000f2c  a7ca0a00  addli.d r[22:23], r[22:23], 4
000f30  0b13fc10  add.s r6, r24, r15
000f34  13a1da02  setneq.d r2, r[22:23], r[14:15]
000f38  73660301  stores.w r16, 12(r6)
000f3c  73647300  stores.w r7, 8(r6)
000f40  73624300  stores.w r4, 4(r6)
000f44  73602301  stores.w r18, 0(r6)
000f48  371f01fe  beq r2, zero, -60
000f4c  0ba3aa10  add.ul r[7:8], r[22:23], r[11:12]
000f50  9b372300  slli r15, r6, 2
000f54  0b12fa10  add.s r4, r20, r15
000f58  6f41c200  loads.w r2, 12(r4)
000f5c  ef4b0200  loads.w r23, 0(r4)
000f60  ef484200  loads.w r17, 4(r4)
000f64  ef498200  loads.w r19, 8(r4)
000f68  1703c101  and r6, r2, r28
000f6c  13826d04  setlt.u r4, r27, r6
000f70  3b300200  bneq r4, zero, 12
000f74  1f080100  addli r16, r2, 0
000f78  5b010000  j 8
000f7c  17185100  or r16, r2, r5
000f80  1786c901  and r12, r19, r28
000f84  1382cd04  setlt.u r4, r27, r12
000f88  3b300200  bneq r4, zero, 12
000f8c  9f830900  addli r7, r19, 0
000f90  5b010000  j 8
000f94  97935900  or r7, r19, r5
000f98  178ac801  and r20, r17, r28
000f9c  13824d05  setlt.u r4, r27, r20
000fa0  3b300200  bneq r4, zero, 12
000fa4  1f820800  addli r4, r17, 0
000fa8  5b010000  j 8
000fac  17925800  or r4, r17, r5
000fb0  178dcb01  and r26, r23, r28
000fb4  1389ad05  setlt.u r18, r27, r26
000fb8  3b500900  bneq r18, zero, 20
000fbc  1f890b00  addli r18, r23, 0
000fc0  138da105  setlt.u r26, r3, r26
000fc4  37500d00  beq r26, zero, 20
000fc8  db040000  j 36
000fcc  17995b00  or r18, r23, r5
000fd0  138da105  setlt.u r26, r3, r26
000fd4  3b600d00  bneq r26, zero, 24
000fd8  1bc90b01  srli r18, r23, 16
000fdc  1b091900  andi r18, r18, 1
000fe0  0b992b11  add.s r18, r23, r18
000fe4  0b191910  add.s r18, r18, r1
000fe8  17099901  and r18, r18, r25
000fec  138a4105  setlt.u r20, r3, r20
000ff0  3b600a00  bneq r20, zero, 24
000ff4  1bc20801  srli r4, r17, 16
000ff8  1b021200  andi r4, r4, 1
000ffc  0b924810  add.s r4, r17, r4
001000  0b121210  add.s r4, r4, r1
001004  17029201  and r4, r4, r25
001008  1386c104  setlt.u r12, r3, r12
00100c  634aefff  loadli.w r20,  -12(r30)
001010  3b600600  bneq r12, zero, 24
001014  9bc30901  srli r7, r19, 16
001018  9b831300  andi r7, r7, 1
00101c  8b937910  add.s r7, r19, r7
001020  8b931310  add.s r7, r7, r1
001024  97839301  and r7, r7, r25
001028  13836104  setlt.u r6, r3, r6
00102c  3b0c03fe  bneq r6, zero, -256
001030  1b430101  srli r6, r2, 16
001034  1b031300  andi r6, r6, 1
001038  0b116110  add.s r2, r2, r6
00103c  0b111110  add.s r2, r2, r1
001040  17089101  and r16, r2, r25
001044  5bddffff  j -280
001048  00200100  mfence { sm }
00104c  00380002  core_id r16
001050  6b548ffe  load.d r[9:10], -24(r30)
001054  1f719000  addli r2, zero, 79
001058  33030128  zext_int2long r[7:8], r2
00105c  63013fff  loadli.w r2,  -104(r30)
001060  73386ffc  store.d r[7:8], -48(r30)
001064  b7050100  beq r2, zero, 352
001068  1f018000  addli r2, zero, 64
00106c  3d000000  xfence
001070  00a00300  mfence { lm, sm, gm }
001074  33040128  zext_int2long r[9:10], r2
001078  5b030000  j 24
00107c  6b530ffd  load.d r[7:8], -48(r30)
001080  9f770000  addli r15, zero, 7
001084  13216404  setlt.ul r2, r[9:10], r[7:8]
001088  27140400  addli.d r[9:10], r[9:10], 1
00108c  b7340100  beq r2, zero, 300
001090  1735f402  sll.d r[11:12], r[9:10], r15
001094  b30a0028  zext_int2long r[22:23], zero
001098  db040000  j 36
00109c  a7ca0a00  addli.d r[22:23], r[22:23], 4
0010a0  0b13fc10  add.s r6, r24, r15
0010a4  13a1da02  setneq.d r2, r[22:23], r[14:15]
0010a8  73660301  stores.w r16, 12(r6)
0010ac  73647300  stores.w r7, 8(r6)
0010b0  73624300  stores.w r4, 4(r6)
0010b4  73602301  stores.w r18, 0(r6)
0010b8  371f01fe  beq r2, zero, -60
0010bc  0ba3aa10  add.ul r[7:8], r[22:23], r[11:12]
0010c0  9b372300  slli r15, r6, 2
0010c4  0b12fa10  add.s r4, r20, r15
0010c8  6f41c200  loads.w r2, 12(r4)
0010cc  ef4b0200  loads.w r23, 0(r4)
0010d0  ef484200  loads.w r17, 4(r4)
0010d4  ef498200  loads.w r19, 8(r4)
0010d8  1703c101  and r6, r2, r28
0010dc  13826d04  setlt.u r4, r27, r6
0010e0  3b300200  bneq r4, zero, 12
0010e4  1f080100  addli r16, r2, 0
0010e8  5b010000  j 8
0010ec  17185100  or r16, r2, r5
0010f0  1786c901  and r12, r19, r28
0010f4  1382cd04  setlt.u r4, r27, r12
0010f8  3b300200  bneq r4, zero, 12
0010fc  9f830900  addli r7, r19, 0
001100  5b010000  j 8
001104  97935900  or r7, r19, r5
001108  178ac801  and r20, r17, r28
00110c  13824d05  setlt.u r4, r27, r20
001110  3b300200  bneq r4, zero, 12
001114  1f820800  addli r4, r17, 0
001118  5b010000  j 8
00111c  17925800  or r4, r17, r5
001120  178dcb01  and r26, r23, r28
001124  1389ad05  setlt.u r18, r27, r26
001128  3b500900  bneq r18, zero, 20
00112c  1f890b00  addli r18, r23, 0
001130  138da105  setlt.u r26, r3, r26
001134  37500d00  beq r26, zero, 20
001138  db040000  j 36
00113c  17995b00  or r18, r23, r5
001140  138da105  setlt.u r26, r3, r26
001144  3b600d00  bneq r26, zero, 24
001148  1bc90b01  srli r18, r23, 16
00114c  1b091900  andi r18, r18, 1
001150  0b992b11  add.s r18, r23, r18
001154  0b191910  add.s r18, r18, r1
001158  17099901  and r18, r18, r25
00115c  138a4105  setlt.u r20, r3, r20
001160  3b600a00  bneq r20, zero, 24
001164  1bc20801  srli r4, r17, 16
001168  1b021200  andi r4, r4, 1
00116c  0b924810  add.s r4, r17, r4
001170  0b121210  add.s r4, r4, r1
001174  17029201  and r4, r4, r25
001178  1386c104  setlt.u r12, r3, r12
00117c  634aefff  loadli.w r20,  -12(r30)
001180  3b600600  bneq r12, zero, 24
001184  9bc30901  srli r7, r19, 16
001188  9b831300  andi r7, r7, 1
00118c  8b937910  add.s r7, r19, r7
001190  8b931310  add.s r7, r7, r1
001194  97839301  and r7, r7, r25
001198  13836104  setlt.u r6, r3, r6
00119c  3b0c03fe  bneq r6, zero, -256
0011a0  1b430101  srli r6, r2, 16
0011a4  1b031300  andi r6, r6, 1
0011a8  0b116110  add.s r2, r2, r6
0011ac  0b111110  add.s r2, r2, r1
0011b0  17089101  and r16, r2, r25
0011b4  5bddffff  j -280
0011b8  00200100  mfence { sm }
0011bc  00380002  core_id r16
0011c0  6b548ffe  load.d r[9:10], -24(r30)
0011c4  1f71b000  addli r2, zero, 95
0011c8  33030128  zext_int2long r[7:8], r2
0011cc  1f510000  addli r2, zero, 5
0011d0  733c6ffc  store.d r[7:8], -40(r30)
0011d4  bb052800  bneq r16, r2, 352
0011d8  1f01a000  addli r2, zero, 80
0011dc  3d000000  xfence
0011e0  00a00300  mfence { lm, sm, gm }
0011e4  33040128  zext_int2long r[9:10], r2
0011e8  5b030000  j 24
0011ec  6b538ffd  load.d r[7:8], -40(r30)
0011f0  9f770000  addli r15, zero, 7
0011f4  13216404  setlt.ul r2, r[9:10], r[7:8]
0011f8  27140400  addli.d r[9:10], r[9:10], 1
0011fc  b7340100  beq r2, zero, 300
001200  1735f402  sll.d r[11:12], r[9:10], r15
001204  b30a0028  zext_int2long r[22:23], zero
001208  db040000  j 36
00120c  a7ca0a00  addli.d r[22:23], r[22:23], 4
001210  0b13fc10  add.s r6, r24, r15
001214  13a1da02  setneq.d r2, r[22:23], r[14:15]
001218  73660301  stores.w r16, 12(r6)
00121c  73647300  stores.w r7, 8(r6)
001220  73624300  stores.w r4, 4(r6)
001224  73602301  stores.w r18, 0(r6)
001228  371f01fe  beq r2, zero, -60
00122c  0ba3aa10  add.ul r[7:8], r[22:23], r[11:12]
001230  9b372300  slli r15, r6, 2
001234  0b12fa10  add.s r4, r20, r15
001238  6f41c200  loads.w r2, 12(r4)
00123c  ef4b0200  loads.w r23, 0(r4)
001240  ef484200  loads.w r17, 4(r4)
001244  ef498200  loads.w r19, 8(r4)
001248  1703c101  and r6, r2, r28
00124c  13826d04  setlt.u r4, r27, r6
001250  3b300200  bneq r4, zero, 12
001254  1f080100  addli r16, r2, 0
001258  5b010000  j 8
00125c  17185100  or r16, r2, r5
001260  1786c901  and r12, r19, r28
001264  1382cd04  setlt.u r4, r27, r12
001268  3b300200  bneq r4, zero, 12
00126c  9f830900  addli r7, r19, 0
001270  5b010000  j 8
001274  97935900  or r7, r19, r5
001278  178ac801  and r20, r17, r28
00127c  13824d05  setlt.u r4, r27, r20
001280  3b300200  bneq r4, zero, 12
001284  1f820800  addli r4, r17, 0
001288  5b010000  j 8
00128c  17925800  or r4, r17, r5
001290  178dcb01  and r26, r23, r28
001294  1389ad05  setlt.u r18, r27, r26
001298  3b500900  bneq r18, zero, 20
00129c  1f890b00  addli r18, r23, 0
0012a0  138da105  setlt.u r26, r3, r26
0012a4  37500d00  beq r26, zero, 20
0012a8  db040000  j 36
0012ac  17995b00  or r18, r23, r5
0012b0  138da105  setlt.u r26, r3, r26
0012b4  3b600d00  bneq r26, zero, 24
0012b8  1bc90b01  srli r18, r23, 16
0012bc  1b091900  andi r18, r18, 1
0012c0  0b992b11  add.s r18, r23, r18
0012c4  0b191910  add.s r18, r18, r1
0012c8  17099901  and r18, r18, r25
0012cc  138a4105  setlt.u r20, r3, r20
0012d0  3b600a00  bneq r20, zero, 24
0012d4  1bc20801  srli r4, r17, 16
0012d8  1b021200  andi r4, r4, 1
0012dc  0b924810  add.s r4, r17, r4
0012e0  0b121210  add.s r4, r4, r1
0012e4  17029201  and r4, r4, r25
0012e8  1386c104  setlt.u r12, r3, r12
0012ec  634aefff  loadli.w r20,  -12(r30)
0012f0  3b600600  bneq r12, zero, 24
0012f4  9bc30901  srli r7, r19, 16
0012f8  9b831300  andi r7, r7, 1
0012fc  8b937910  add.s r7, r19, r7
001300  8b931310  add.s r7, r7, r1
001304  97839301  and r7, r7, r25
001308  13836104  setlt.u r6, r3, r6
00130c  3b0c03fe  bneq r6, zero, -256
001310  1b430101  srli r6, r2, 16
001314  1b031300  andi r6, r6, 1
001318  0b116110  add.s r2, r2, r6
00131c  0b111110  add.s r2, r2, r1
001320  17089101  and r16, r2, r25
001324  5bddffff  j -280
001328  00200100  mfence { sm }
00132c  00380002  core_id r16
001330  6b548ffe  load.d r[9:10], -24(r30)
001334  1f71d000  addli r2, zero, 111
001338  33030128  zext_int2long r[7:8], r2
00133c  1f610000  addli r2, zero, 6
001340  73306ffe  store.d r[7:8], -32(r30)
001344  bb052800  bneq r16, r2, 352
001348  1f01c000  addli r2, zero, 96
00134c  3d000000  xfence
001350  00a00300  mfence { lm, sm, gm }
001354  33040128  zext_int2long r[9:10], r2
001358  5b030000  j 24
00135c  6b530ffe  load.d r[7:8], -32(r30)
001360  9f770000  addli r15, zero, 7
001364  13216404  setlt.ul r2, r[9:10], r[7:8]
001368  27140400  addli.d r[9:10], r[9:10], 1
00136c  b7340100  beq r2, zero, 300
001370  1735f402  sll.d r[11:12], r[9:10], r15
001374  b30a0028  zext_int2long r[22:23], zero
001378  db040000  j 36
00137c  a7ca0a00  addli.d r[22:23], r[22:23], 4
001380  0b13fc10  add.s r6, r24, r15
001384  13a1da02  setneq.d r2, r[22:23], r[14:15]
001388  73660301  stores.w r16, 12(r6)
00138c  73647300  stores.w r7, 8(r6)
001390  73624300  stores.w r4, 4(r6)
001394  73602301  stores.w r18, 0(r6)
001398  371f01fe  beq r2, zero, -60
00139c  0ba3aa10  add.ul r[7:8], r[22:23], r[11:12]
0013a0  9b372300  slli r15, r6, 2
0013a4  0b12fa10  add.s r4, r20, r15
0013a8  6f41c200  loads.w r2, 12(r4)
0013ac  ef4b0200  loads.w r23, 0(r4)
0013b0  ef484200  loads.w r17, 4(r4)
0013b4  ef498200  loads.w r19, 8(r4)
0013b8  1703c101  and r6, r2, r28
0013bc  13826d04  setlt.u r4, r27, r6
0013c0  3b300200  bneq r4, zero, 12
0013c4  1f080100  addli r16, r2, 0
0013c8  5b010000  j 8
0013cc  17185100  or r16, r2, r5
0013d0  1786c901  and r12, r19, r28
0013d4  1382cd04  setlt.u r4, r27, r12
0013d8  3b300200  bneq r4, zero, 12
0013dc  9f830900  addli r7, r19, 0
0013e0  5b010000  j 8
0013e4  97935900  or r7, r19, r5
0013e8  178ac801  and r20, r17, r28
0013ec  13824d05  setlt.u r4, r27, r20
0013f0  3b300200  bneq r4, zero, 12
0013f4  1f820800  addli r4, r17, 0
0013f8  5b010000  j 8
0013fc  17925800  or r4, r17, r5
001400  178dcb01  and r26, r23, r28
001404  1389ad05  setlt.u r18, r27, r26
001408  3b500900  bneq r18, zero, 20
00140c  1f890b00  addli r18, r23, 0
001410  138da105  setlt.u r26, r3, r26
001414  37500d00  beq r26, zero, 20
001418  db040000  j 36
00141c  17995b00  or r18, r23, r5
001420  138da105  setlt.u r26, r3, r26
001424  3b600d00  bneq r26, zero, 24
001428  1bc90b01  srli r18, r23, 16
00142c  1b091900  andi r18, r18, 1
001430  0b992b11  add.s r18, r23, r18
001434  0b191910  add.s r18, r18, r1
001438  17099901  and r18, r18, r25
00143c  138a4105  setlt.u r20, r3, r20
001440  3b600a00  bneq r20, zero, 24
001444  1bc20801  srli r4, r17, 16
001448  1b021200  andi r4, r4, 1
00144c  0b924810  add.s r4, r17, r4
001450  0b121210  add.s r4, r4, r1
001454  17029201  and r4, r4, r25
001458  1386c104  setlt.u r12, r3, r12
00145c  634aefff  loadli.w r20,  -12(r30)
001460  3b600600  bneq r12, zero, 24
001464  9bc30901  srli r7, r19, 16
001468  9b831300  andi r7, r7, 1
00146c  8b937910  add.s r7, r19, r7
001470  8b931310  add.s r7, r7, r1
001474  97839301  and r7, r7, r25
001478  13836104  setlt.u r6, r3, r6
00147c  3b0c03fe  bneq r6, zero, -256
001480  1b430101  srli r6, r2, 16
001484  1b031300  andi r6, r6, 1
001488  0b116110  add.s r2, r2, r6
00148c  0b111110  add.s r2, r2, r1
001490  17089101  and r16, r2, r25
001494  5bddffff  j -280
001498  00200100  mfence { sm }
00149c  00380002  core_id r16
0014a0  6b548ffe  load.d r[9:10], -24(r30)
0014a4  1f71f000  addli r2, zero, 127
0014a8  33030128  zext_int2long r[7:8], r2
0014ac  63413fff  loadli.w r2,  -100(r30)
0014b0  733c6ffe  store.d r[7:8], -8(r30)
0014b4  b7250100  beq r2, zero, 360
0014b8  1f01e000  addli r2, zero, 112
0014bc  3d000000  xfence
0014c0  00a00300  mfence { lm, sm, gm }
0014c4  33030128  zext_int2long r[7:8], r2
0014c8  db030000  j 28
0014cc  6b538fff  load.d r[7:8], -8(r30)
0014d0  6b558ffa  load.d r[11:12], -88(r30)
0014d4  9f770000  addli r15, zero, 7
0014d8  13216504  setlt.ul r2, r[11:12], r[7:8]
0014dc  27130500  addli.d r[7:8], r[11:12], 1
0014e0  b7540100  beq r2, zero, 308
0014e4  973af302  sll.d r[22:23], r[7:8], r15
0014e8  b3070028  zext_int2long r[16:17], zero
0014ec  73346ffa  store.d r[7:8], -88(r30)
0014f0  5b050000  j 40
0014f4  a7c70700  addli.d r[16:17], r[16:17], 4
0014f8  0b137c11  add.s r6, r24, r23
0014fc  13a1d702  setneq.d r2, r[16:17], r[14:15]
001500  73608300  stores.w r8, 0(r6)
001504  6b548ffe  load.d r[9:10], -24(r30)
001508  73663301  stores.w r19, 12(r6)
00150c  73644300  stores.w r4, 8(r6)
001510  73621301  stores.w r17, 4(r6)
001514  b76e01fe  beq r2, zero, -72
001518  0ba35711  add.ul r[7:8], r[16:17], r[22:23]
00151c  9b3b2300  slli r23, r6, 2
001520  0b127a11  add.s r4, r20, r23
001524  6f41c200  loads.w r2, 12(r4)
001528  6f4d0200  loads.w r26, 0(r4)
00152c  6f494200  loads.w r18, 4(r4)
001530  ef438200  loads.w r7, 8(r4)
001534  1703c101  and r6, r2, r28
001538  13826d04  setlt.u r4, r27, r6
00153c  3b300200  bneq r4, zero, 12
001540  9f090100  addli r19, r2, 0
001544  5b010000  j 8
001548  97195100  or r19, r2, r5
00154c  1786c301  and r12, r7, r28
001550  1382cd04  setlt.u r4, r27, r12
001554  3b300200  bneq r4, zero, 12
001558  1f820300  addli r4, r7, 0
00155c  5b010000  j 8
001560  17925300  or r4, r7, r5
001564  9704c901  and r9, r18, r28
001568  13849d04  setlt.u r8, r27, r9
00156c  3b300400  bneq r8, zero, 12
001570  9f080900  addli r17, r18, 0
001574  5b010000  j 8
001578  97185900  or r17, r18, r5
00157c  170acd01  and r20, r26, r28
001580  13844d05  setlt.u r8, r27, r20
001584  3b500400  bneq r8, zero, 20
001588  1f040d00  addli r8, r26, 0
00158c  13854105  setlt.u r10, r3, r20
001590  37500500  beq r10, zero, 20
001594  db040000  j 36
001598  17145d00  or r8, r26, r5
00159c  13854105  setlt.u r10, r3, r20
0015a0  3b600500  bneq r10, zero, 24
0015a4  1b440d01  srli r8, r26, 16
0015a8  1b041400  andi r8, r8, 1
0015ac  0b148d10  add.s r8, r26, r8
0015b0  0b141410  add.s r8, r8, r1
0015b4  17049401  and r8, r8, r25
0015b8  93849104  setlt.u r9, r3, r9
0015bc  3be00400  bneq r9, zero, 24
0015c0  9b440901  srli r9, r18, 16
0015c4  9b841400  andi r9, r9, 1
0015c8  8b149910  add.s r9, r18, r9
0015cc  8b941410  add.s r9, r9, r1
0015d0  97889401  and r17, r9, r25
0015d4  9384c104  setlt.u r9, r3, r12
0015d8  634aefff  loadli.w r20,  -12(r30)
0015dc  3be00400  bneq r9, zero, 24
0015e0  1bc20301  srli r4, r7, 16
0015e4  1b021200  andi r4, r4, 1
0015e8  0b924310  add.s r4, r7, r4
0015ec  0b121210  add.s r4, r4, r1
0015f0  17029201  and r4, r4, r25
0015f4  13836104  setlt.u r6, r3, r6
0015f8  bb7b03fe  bneq r6, zero, -260
0015fc  1b430101  srli r6, r2, 16
001600  1b031300  andi r6, r6, 1
001604  0b116110  add.s r2, r2, r6
001608  0b111110  add.s r2, r2, r1
00160c  97099101  and r19, r2, r25
001610  dbdcffff  j -284
001614  00380002  core_id r16
001618  00200100  mfence { sm }
00161c  63014fff  loadli.w r2,  -96(r30)
001620  1b317100  slli r2, r2, 7
001624  33030128  zext_int2long r[7:8], r2
001628  1f71f001  addli r2, zero, 255
00162c  0b248340  min.ul r[9:10], r[7:8], r[9:10]
001630  27040401  addli.d r[9:10], r[9:10], 128
001634  0b246448  max.ul r[9:10], r[9:10], r[7:8]
001638  0b336418  sub.sl r[7:8], r[9:10], r[7:8]
00163c  0b23d340  min.ul r[7:8], r[7:8], r[14:15]
001640  73386ff6  store.d r[7:8], -144(r30)
001644  80220104  csr_set csr5, r2
001648  1f310000  addli r2, zero, 3
00164c  00e00200  sync_core
001650  bb202800  bneq r16, r2, 40
001654  1f311000  addli r2, zero, 11
001658  7d000100  xsignal r2, 0
00165c  1f411000  addli r2, zero, 12
001660  7d000100  xsignal r2, 0
001664  1f511000  addli r2, zero, 13
001668  7d100100  xwait r2, 0
00166c  1f612000  addli r2, zero, 22
001670  7d100100  xwait r2, 0
001674  5b6b0000  j 856
001678  63414fff  loadli.w r2,  -92(r30)
00167c  2b020600  lui r4, 96
001680  1f130000  addli r6, zero, 1
001684  1b319100  slli r2, r2, 9
001688  0b124110  add.s r4, r2, r4
00168c  3b5b6800  bneq r16, r6, 724
001690  6b530f01  load.d r[7:8], 16(r30)
001694  6b548ff7  load.d r[9:10], -136(r30)
001698  9f250000  addli r11, zero, 2
00169c  0b238310  add.ul r[7:8], r[7:8], r[9:10]
0016a0  9f042000  addli r9, zero, 16
0016a4  7d900400  xwait r9, 0
0016a8  63042fff  loadli.w r8,  -112(r30)
0016ac  bfc48500  blt.s r11, r8, 304
0016b0  1f560000  addli r12, zero, 5
0016b4  1f150000  addli r10, zero, 1
0016b8  1f340000  addli r8, zero, 3
0016bc  9f480000  addli r17, zero, 4
0016c0  1d000600  lock zero, r12
0016c4  15000014  dma_cfg zero, zero, zero, 10
0016c8  1500a014  dma_cfg zero, zero, r10, 10
0016cc  1500b014  dma_cfg zero, zero, r11, 10
0016d0  15008014  dma_cfg zero, zero, r8, 10
0016d4  1f640000  addli r8, zero, 6
0016d8  15001015  dma_cfg zero, zero, r17, 10
0016dc  1500c014  dma_cfg zero, zero, r12, 10
0016e0  15008014  dma_cfg zero, zero, r8, 10
0016e4  1f041000  addli r8, zero, 8
0016e8  1500f014  dma_cfg zero, zero, r15, 10
0016ec  15008014  dma_cfg zero, zero, r8, 10
0016f0  1f141000  addli r8, zero, 9
0016f4  15008014  dma_cfg zero, zero, r8, 10
0016f8  1f241000  addli r8, zero, 10
0016fc  15008014  dma_cfg zero, zero, r8, 10
001700  1f341000  addli r8, zero, 11
001704  15008014  dma_cfg zero, zero, r8, 10
001708  1f441000  addli r8, zero, 12
00170c  15008014  dma_cfg zero, zero, r8, 10
001710  1f541000  addli r8, zero, 13
001714  15008014  dma_cfg zero, zero, r8, 10
001718  1f641000  addli r8, zero, 14
00171c  15008014  dma_cfg zero, zero, r8, 10
001720  1f741000  addli r8, zero, 15
001724  15008014  dma_cfg zero, zero, r8, 10
001728  1f142000  addli r8, zero, 17
00172c  15009014  dma_cfg zero, zero, r9, 10
001730  15008014  dma_cfg zero, zero, r8, 10
001734  1f242000  addli r8, zero, 18
001738  15008014  dma_cfg zero, zero, r8, 10
00173c  1f342000  addli r8, zero, 19
001740  15008014  dma_cfg zero, zero, r8, 10
001744  1f442000  addli r8, zero, 20
001748  15008014  dma_cfg zero, zero, r8, 10
00174c  1f542000  addli r8, zero, 21
001750  15008014  dma_cfg zero, zero, r8, 10
001754  1f642000  addli r8, zero, 22
001758  15008014  dma_cfg zero, zero, r8, 10
00175c  1f742000  addli r8, zero, 23
001760  15008014  dma_cfg zero, zero, r8, 10
001764  1f043000  addli r8, zero, 24
001768  15008014  dma_cfg zero, zero, r8, 10
00176c  1f143000  addli r8, zero, 25
001770  15008014  dma_cfg zero, zero, r8, 10
001774  1f243000  addli r8, zero, 26
001778  15008014  dma_cfg zero, zero, r8, 10
00177c  1f343000  addli r8, zero, 27
001780  15008014  dma_cfg zero, zero, r8, 10
001784  1f443000  addli r8, zero, 28
001788  15008014  dma_cfg zero, zero, r8, 10
00178c  1f543000  addli r8, zero, 29
001790  15008014  dma_cfg zero, zero, r8, 10
001794  1f643000  addli r8, zero, 30
001798  15008014  dma_cfg zero, zero, r8, 10
00179c  1f743000  addli r8, zero, 31
0017a0  15008014  dma_cfg zero, zero, r8, 10
0017a4  1f048000  addli r8, zero, 64
0017a8  15050500  dma_cfg r10, r10, zero, 0
0017ac  15050002  dma_cfg r10, zero, zero, 1
0017b0  15000004  dma_cfg zero, zero, zero, 2
0017b4  15028006  dma_cfg r4, zero, r8, 3
0017b8  1f040001  addli r8, zero, 128
0017bc  15041009  dma_cfg r8, zero, r17, 4
0017c0  1f040004  addli r8, zero, 512
0017c4  1504a00a  dma_cfg r8, zero, r10, 5
0017c8  15000010  dma_cfg zero, zero, zero, 8
0017cc  35000000  dma_run zero
0017d0  1500a00a  dma_cfg zero, zero, r10, 5
0017d4  15000010  dma_cfg zero, zero, zero, 8
0017d8  1d100600  unlock r12
0017dc  9f480000  addli r17, zero, 4
0017e0  1f150000  addli r10, zero, 1
0017e4  2b040600  lui r8, 96
0017e8  1f098000  addli r18, zero, 64
0017ec  9f090004  addli r19, zero, 512
0017f0  1f560000  addli r12, zero, 5
0017f4  1d800800  lock zero, r17
0017f8  1b140404  ori r8, r8, 64
0017fc  15050500  dma_cfg r10, r10, zero, 0
001800  15800304  dma_cfg zero, r7, zero, 2
001804  0b118110  add.s r2, r2, r8
001808  eb5a0ff7  load.d r[22:23], -144(r30)
00180c  15012307  dma_cfg r2, r6, r18, 3
001810  9f030002  addli r7, zero, 256
001814  1ff43a00  addli r8, r21, 31
001818  1bb31a00  slli r6, r21, 1
00181c  1b415400  srli r2, r8, 5
001820  1f040001  addli r8, zero, 128
001824  1b03e303  andi r6, r6, 62
001828  15042908  dma_cfg r8, r18, r2, 4
00182c  9589a30a  dma_cfg r19, r7, r10, 5
001830  9f330000  addli r7, zero, 3
001834  15006010  dma_cfg zero, zero, r6, 8
001838  35000000  dma_run zero
00183c  1500a00a  dma_cfg zero, zero, r10, 5
001840  15000010  dma_cfg zero, zero, zero, 8
001844  1d900800  unlock r17
001848  1d000600  lock zero, r12
00184c  15000014  dma_cfg zero, zero, zero, 10
001850  1500a014  dma_cfg zero, zero, r10, 10
001854  1500b014  dma_cfg zero, zero, r11, 10
001858  15007014  dma_cfg zero, zero, r7, 10
00185c  9f630000  addli r7, zero, 6
001860  15001015  dma_cfg zero, zero, r17, 10
001864  1500c014  dma_cfg zero, zero, r12, 10
001868  15007014  dma_cfg zero, zero, r7, 10
00186c  9f031000  addli r7, zero, 8
001870  1500f014  dma_cfg zero, zero, r15, 10
001874  15007014  dma_cfg zero, zero, r7, 10
001878  9f131000  addli r7, zero, 9
00187c  15007014  dma_cfg zero, zero, r7, 10
001880  9f231000  addli r7, zero, 10
001884  15007014  dma_cfg zero, zero, r7, 10
001888  9f331000  addli r7, zero, 11
00188c  15007014  dma_cfg zero, zero, r7, 10
001890  9f431000  addli r7, zero, 12
001894  15007014  dma_cfg zero, zero, r7, 10
001898  9f531000  addli r7, zero, 13
00189c  15007014  dma_cfg zero, zero, r7, 10
0018a0  9f631000  addli r7, zero, 14
0018a4  15007014  dma_cfg zero, zero, r7, 10
0018a8  9f731000  addli r7, zero, 15
0018ac  15007014  dma_cfg zero, zero, r7, 10
0018b0  15009014  dma_cfg zero, zero, r9, 10
0018b4  9f142000  addli r9, zero, 17
0018b8  15009014  dma_cfg zero, zero, r9, 10
0018bc  9f242000  addli r9, zero, 18
0018c0  15009014  dma_cfg zero, zero, r9, 10
0018c4  9f342000  addli r9, zero, 19
0018c8  15009014  dma_cfg zero, zero, r9, 10
0018cc  9f442000  addli r9, zero, 20
0018d0  15009014  dma_cfg zero, zero, r9, 10
0018d4  9f542000  addli r9, zero, 21
0018d8  15009014  dma_cfg zero, zero, r9, 10
0018dc  9f642000  addli r9, zero, 22
0018e0  15009014  dma_cfg zero, zero, r9, 10
0018e4  9f742000  addli r9, zero, 23
0018e8  15009014  dma_cfg zero, zero, r9, 10
0018ec  9f043000  addli r9, zero, 24
0018f0  15009014  dma_cfg zero, zero, r9, 10
0018f4  9f143000  addli r9, zero, 25
0018f8  15009014  dma_cfg zero, zero, r9, 10
0018fc  9f243000  addli r9, zero, 26
001900  15009014  dma_cfg zero, zero, r9, 10
001904  9f343000  addli r9, zero, 27
001908  15009014  dma_cfg zero, zero, r9, 10
00190c  9f443000  addli r9, zero, 28
001910  15009014  dma_cfg zero, zero, r9, 10
001914  9f543000  addli r9, zero, 29
001918  15009014  dma_cfg zero, zero, r9, 10
00191c  9f643000  addli r9, zero, 30
001920  15009014  dma_cfg zero, zero, r9, 10
001924  9f743000  addli r9, zero, 31
001928  15009014  dma_cfg zero, zero, r9, 10
00192c  15050500  dma_cfg r10, r10, zero, 0
001930  15050002  dma_cfg r10, zero, zero, 1
001934  15000004  dma_cfg zero, zero, zero, 2
001938  15022007  dma_cfg r4, zero, r18, 3
00193c  15042008  dma_cfg r8, zero, r2, 4
001940  9509a00a  dma_cfg r19, zero, r10, 5
001944  15006010  dma_cfg zero, zero, r6, 8
001948  35000000  dma_run zero
00194c  1500a00a  dma_cfg zero, zero, r10, 5
001950  15000010  dma_cfg zero, zero, zero, 8
001954  1d100600  unlock r12
001958  7d800300  xsignal r7, 0
00195c  5b0e0000  j 112
001960  1f510000  addli r2, zero, 5
001964  ab030100  lui r7, 16
001968  bb112800  bneq r16, r2, 100
00196c  1f431000  addli r6, zero, 12
001970  1f010000  addli r2, zero, 0
001974  7d100300  xwait r6, 0
001978  1f731000  addli r6, zero, 15
00197c  7d100300  xwait r6, 0
001980  1f230000  addli r6, zero, 2
001984  1d000300  lock zero, r6
001988  2b03803f  lui r6, 260096
00198c  0d000002  ew_cfg zero, zero, zero, 1
001990  0d130300  ewcoeff_cfg r6, r6, zero, 0
001994  1f73f000  addli r6, zero, 127
001998  0d000304  ew_cfg zero, r6, zero, 2
00199c  1f130000  addli r6, zero, 1
0019a0  0d030006  ew_cfg r6, zero, zero, 3
0019a4  0b132c10  add.s r6, r24, r2
0019a8  1f010104  addli r2, r2, 512
0019ac  2d034300  dsmadd r6, r6, r4, 0
0019b0  bb5f71fe  bneq r2, r7, -12
0019b4  1f210000  addli r2, zero, 2
0019b8  1d100100  unlock r2
0019bc  1f511000  addli r2, zero, 13
0019c0  7d000100  xsignal r2, 0
0019c4  1f012000  addli r2, zero, 16
0019c8  7d000100  xsignal r2, 0
0019cc  2b010600  lui r2, 96
0019d0  3d000000  xfence
0019d4  00a00300  mfence { lm, sm, gm }
0019d8  1b110160  ori r2, r2, 1536
0019dc  0b1d2a10  add.s r26, r20, r2
0019e0  1f71f001  addli r2, zero, 255
0019e4  80220104  csr_set csr5, r2
0019e8  00e00200  sync_core
0019ec  b7370802  beq r16, zero, 1516
0019f0  1f110000  addli r2, zero, 1
0019f4  3b3f2802  bneq r16, r2, 1996
0019f8  1f012000  addli r2, zero, 16
0019fc  3d000000  xfence
001a00  00a00300  mfence { lm, sm, gm }
001a04  33030128  zext_int2long r[7:8], r2
001a08  db030000  j 28
001a0c  6b538ffb  load.d r[7:8], -72(r30)
001a10  6b548ffa  load.d r[9:10], -88(r30)
001a14  9f770000  addli r15, zero, 7
001a18  13216404  setlt.ul r2, r[9:10], r[7:8]
001a1c  27130400  addli.d r[7:8], r[9:10], 1
001a20  b7560100  beq r2, zero, 436
001a24  1734f302  sll.d r[9:10], r[7:8], r15
001a28  73346ffa  store.d r[7:8], -88(r30)
001a2c  bb518d01  bneq r26, r24, 116
001a30  33030028  zext_int2long r[7:8], zero
001a34  5b060000  j 48
001a38  1b420601  srli r4, r12, 16
001a3c  1b021200  andi r4, r4, 1
001a40  0b124610  add.s r4, r12, r4
001a44  0b121210  add.s r4, r4, r1
001a48  17029201  and r4, r4, r25
001a4c  6b558fff  load.d r[11:12], -8(r30)
001a50  0b112d10  add.s r2, r26, r2
001a54  73604100  stores.w r4, 0(r2)
001a58  1325a304  setlt.ul r10, r[7:8], r[11:12]
001a5c  27130300  addli.d r[7:8], r[7:8], 1
001a60  b73e05fe  beq r10, zero, -84
001a64  0b258310  add.ul r[11:12], r[7:8], r[9:10]
001a68  1b312500  slli r2, r10, 2
001a6c  0b122c10  add.s r4, r24, r2
001a70  6f460200  loads.w r12, 0(r4)
001a74  1705c601  and r10, r12, r28
001a78  1382ad04  setlt.u r4, r27, r10
001a7c  3b500200  bneq r4, zero, 20
001a80  1f020600  addli r4, r12, 0
001a84  1385a104  setlt.u r10, r3, r10
001a88  3b1f05fe  bneq r10, zero, -60
001a8c  dbf5ffff  j -84
001a90  17125600  or r4, r12, r5
001a94  1385a104  setlt.u r10, r3, r10
001a98  bb5e05fe  bneq r10, zero, -76
001a9c  dbf3ffff  j -100
001aa0  b3070028  zext_int2long r[16:17], zero
001aa4  db040000  j 36
001aa8  a7c70700  addli.d r[16:17], r[16:17], 4
001aac  0b124d10  add.s r4, r26, r4
001ab0  13a1d700  seteq.d r2, r[16:17], r[14:15]
001ab4  73663201  stores.w r19, 12(r4)
001ab8  73646200  stores.w r6, 8(r4)
001abc  73625201  stores.w r21, 4(r4)
001ac0  73602201  stores.w r18, 0(r4)
001ac4  3b2d01fe  bneq r2, zero, -184
001ac8  0ba38710  add.ul r[7:8], r[16:17], r[9:10]
001acc  1b322300  slli r4, r6, 2
001ad0  0b194c10  add.s r18, r24, r4
001ad4  6f41c900  loads.w r2, 12(r18)
001ad8  970bc101  and r23, r2, r28
001adc  13837d05  setlt.u r6, r27, r23
001ae0  3b300300  bneq r6, zero, 12
001ae4  9f090100  addli r19, r2, 0
001ae8  5b010000  j 8
001aec  97195100  or r19, r2, r5
001af0  ef488900  loads.w r17, 8(r18)
001af4  1786c801  and r12, r17, r28
001af8  1383cd04  setlt.u r6, r27, r12
001afc  3b300300  bneq r6, zero, 12
001b00  1f830800  addli r6, r17, 0
001b04  5b010000  j 8
001b08  17935800  or r6, r17, r5
001b0c  ef434900  loads.w r7, 4(r18)
001b10  178bc301  and r22, r7, r28
001b14  13856d05  setlt.u r10, r27, r22
001b18  3b300500  bneq r10, zero, 12
001b1c  9f8a0300  addli r21, r7, 0
001b20  5b010000  j 8
001b24  979a5300  or r21, r7, r5
001b28  6f4a0900  loads.w r20, 0(r18)
001b2c  1705ca01  and r10, r20, r28
001b30  9385ad04  setlt.u r11, r27, r10
001b34  3bd00500  bneq r11, zero, 20
001b38  1f090a00  addli r18, r20, 0
001b3c  1385a104  setlt.u r10, r3, r10
001b40  37500500  beq r10, zero, 20
001b44  db040000  j 36
001b48  17195a00  or r18, r20, r5
001b4c  1385a104  setlt.u r10, r3, r10
001b50  3b600500  bneq r10, zero, 24
001b54  1b450a01  srli r10, r20, 16
001b58  1b051500  andi r10, r10, 1
001b5c  0b15aa10  add.s r10, r20, r10
001b60  0b151510  add.s r10, r10, r1
001b64  17099501  and r18, r10, r25
001b68  13856105  setlt.u r10, r3, r22
001b6c  bb300500  bneq r10, zero, 44
001b70  1bc50301  srli r10, r7, 16
001b74  1b051500  andi r10, r10, 1
001b78  8b93a310  add.s r7, r7, r10
001b7c  8b931310  add.s r7, r7, r1
001b80  978a9301  and r21, r7, r25
001b84  9383c104  setlt.u r7, r3, r12
001b88  37e00300  beq r7, zero, 24
001b8c  93837105  setlt.u r7, r3, r23
001b90  3bec03fe  bneq r7, zero, -232
001b94  5b050000  j 40
001b98  9383c104  setlt.u r7, r3, r12
001b9c  bbcf03fe  bneq r7, zero, -16
001ba0  1bc30801  srli r6, r17, 16
001ba4  1b031300  andi r6, r6, 1
001ba8  0b936810  add.s r6, r17, r6
001bac  0b131310  add.s r6, r6, r1
001bb0  17039301  and r6, r6, r25
001bb4  93837105  setlt.u r7, r3, r23
001bb8  bbcb03fe  bneq r7, zero, -272
001bbc  9b430101  srli r7, r2, 16
001bc0  9b831300  andi r7, r7, 1
001bc4  0b117110  add.s r2, r2, r7
001bc8  0b111110  add.s r2, r2, r1
001bcc  97099101  and r19, r2, r25
001bd0  5bdbffff  j -296
001bd4  00380002  core_id r16
001bd8  00200100  mfence { sm }
001bdc  63412fff  loadli.w r2,  -108(r30)
001be0  bb270102  bneq r2, zero, 1512
001be4  1f310000  addli r2, zero, 3
001be8  3b3f2802  bneq r16, r2, 1996
001bec  1f016000  addli r2, zero, 48
001bf0  3d000000  xfence
001bf4  00a00300  mfence { lm, sm, gm }
001bf8  33030128  zext_int2long r[7:8], r2
001bfc  db030000  j 28
001c00  6b538ffc  load.d r[7:8], -56(r30)
001c04  6b548ffa  load.d r[9:10], -88(r30)
001c08  9f770000  addli r15, zero, 7
001c0c  13216404  setlt.ul r2, r[9:10], r[7:8]
001c10  27130400  addli.d r[7:8], r[9:10], 1
001c14  b7560100  beq r2, zero, 436
001c18  1734f302  sll.d r[9:10], r[7:8], r15
001c1c  73346ffa  store.d r[7:8], -88(r30)
001c20  bb518d01  bneq r26, r24, 116
001c24  33030028  zext_int2long r[7:8], zero
001c28  5b060000  j 48
001c2c  1b420601  srli r4, r12, 16
001c30  1b021200  andi r4, r4, 1
001c34  0b124610  add.s r4, r12, r4
001c38  0b121210  add.s r4, r4, r1
001c3c  17029201  and r4, r4, r25
001c40  6b558fff  load.d r[11:12], -8(r30)
001c44  0b112d10  add.s r2, r26, r2
001c48  73604100  stores.w r4, 0(r2)
001c4c  1325a304  setlt.ul r10, r[7:8], r[11:12]
001c50  27130300  addli.d r[7:8], r[7:8], 1
001c54  b73e05fe  beq r10, zero, -84
001c58  0b258310  add.ul r[11:12], r[7:8], r[9:10]
001c5c  1b312500  slli r2, r10, 2
001c60  0b122c10  add.s r4, r24, r2
001c64  6f460200  loads.w r12, 0(r4)
001c68  1705c601  and r10, r12, r28
001c6c  1382ad04  setlt.u r4, r27, r10
001c70  3b500200  bneq r4, zero, 20
001c74  1f020600  addli r4, r12, 0
001c78  1385a104  setlt.u r10, r3, r10
001c7c  3b1f05fe  bneq r10, zero, -60
001c80  dbf5ffff  j -84
001c84  17125600  or r4, r12, r5
001c88  1385a104  setlt.u r10, r3, r10
001c8c  bb5e05fe  bneq r10, zero, -76
001c90  dbf3ffff  j -100
001c94  b3070028  zext_int2long r[16:17], zero
001c98  db040000  j 36
001c9c  a7c70700  addli.d r[16:17], r[16:17], 4
001ca0  0b124d10  add.s r4, r26, r4
001ca4  13a1d700  seteq.d r2, r[16:17], r[14:15]
001ca8  73663201  stores.w r19, 12(r4)
001cac  73646200  stores.w r6, 8(r4)
001cb0  73625201  stores.w r21, 4(r4)
001cb4  73602201  stores.w r18, 0(r4)
001cb8  3b2d01fe  bneq r2, zero, -184
001cbc  0ba38710  add.ul r[7:8], r[16:17], r[9:10]
001cc0  1b322300  slli r4, r6, 2
001cc4  0b194c10  add.s r18, r24, r4
001cc8  6f41c900  loads.w r2, 12(r18)
001ccc  970bc101  and r23, r2, r28
001cd0  13837d05  setlt.u r6, r27, r23
001cd4  3b300300  bneq r6, zero, 12
001cd8  9f090100  addli r19, r2, 0
001cdc  5b010000  j 8
001ce0  97195100  or r19, r2, r5
001ce4  ef488900  loads.w r17, 8(r18)
001ce8  1786c801  and r12, r17, r28
001cec  1383cd04  setlt.u r6, r27, r12
001cf0  3b300300  bneq r6, zero, 12
001cf4  1f830800  addli r6, r17, 0
001cf8  5b010000  j 8
001cfc  17935800  or r6, r17, r5
001d00  ef434900  loads.w r7, 4(r18)
001d04  178bc301  and r22, r7, r28
001d08  13856d05  setlt.u r10, r27, r22
001d0c  3b300500  bneq r10, zero, 12
001d10  9f8a0300  addli r21, r7, 0
001d14  5b010000  j 8
001d18  979a5300  or r21, r7, r5
001d1c  6f4a0900  loads.w r20, 0(r18)
001d20  1705ca01  and r10, r20, r28
001d24  9385ad04  setlt.u r11, r27, r10
001d28  3bd00500  bneq r11, zero, 20
001d2c  1f090a00  addli r18, r20, 0
001d30  1385a104  setlt.u r10, r3, r10
001d34  37500500  beq r10, zero, 20
001d38  db040000  j 36
001d3c  17195a00  or r18, r20, r5
001d40  1385a104  setlt.u r10, r3, r10
001d44  3b600500  bneq r10, zero, 24
001d48  1b450a01  srli r10, r20, 16
001d4c  1b051500  andi r10, r10, 1
001d50  0b15aa10  add.s r10, r20, r10
001d54  0b151510  add.s r10, r10, r1
001d58  17099501  and r18, r10, r25
001d5c  13856105  setlt.u r10, r3, r22
001d60  bb300500  bneq r10, zero, 44
001d64  1bc50301  srli r10, r7, 16
001d68  1b051500  andi r10, r10, 1
001d6c  8b93a310  add.s r7, r7, r10
001d70  8b931310  add.s r7, r7, r1
001d74  978a9301  and r21, r7, r25
001d78  9383c104  setlt.u r7, r3, r12
001d7c  37e00300  beq r7, zero, 24
001d80  93837105  setlt.u r7, r3, r23
001d84  3bec03fe  bneq r7, zero, -232
001d88  5b050000  j 40
001d8c  9383c104  setlt.u r7, r3, r12
001d90  bbcf03fe  bneq r7, zero, -16
001d94  1bc30801  srli r6, r17, 16
001d98  1b031300  andi r6, r6, 1
001d9c  0b936810  add.s r6, r17, r6
001da0  0b131310  add.s r6, r6, r1
001da4  17039301  and r6, r6, r25
001da8  93837105  setlt.u r7, r3, r23
001dac  bbcb03fe  bneq r7, zero, -272
001db0  9b430101  srli r7, r2, 16
001db4  9b831300  andi r7, r7, 1
001db8  0b117110  add.s r2, r2, r7
001dbc  0b111110  add.s r2, r2, r1
001dc0  97099101  and r19, r2, r25
001dc4  5bdbffff  j -296
001dc8  00380002  core_id r16
001dcc  00200100  mfence { sm }
001dd0  63013fff  loadli.w r2,  -104(r30)
001dd4  bb270102  bneq r2, zero, 1512
001dd8  1f510000  addli r2, zero, 5
001ddc  3b3f2802  bneq r16, r2, 1996
001de0  1f01a000  addli r2, zero, 80
001de4  3d000000  xfence
001de8  00a00300  mfence { lm, sm, gm }
001dec  33030128  zext_int2long r[7:8], r2
001df0  db030000  j 28
001df4  6b538ffd  load.d r[7:8], -40(r30)
001df8  6b548ffa  load.d r[9:10], -88(r30)
001dfc  9f770000  addli r15, zero, 7
001e00  13216404  setlt.ul r2, r[9:10], r[7:8]
001e04  27130400  addli.d r[7:8], r[9:10], 1
001e08  b7560100  beq r2, zero, 436
001e0c  1734f302  sll.d r[9:10], r[7:8], r15
001e10  73346ffa  store.d r[7:8], -88(r30)
001e14  bb518d01  bneq r26, r24, 116
001e18  33030028  zext_int2long r[7:8], zero
001e1c  5b060000  j 48
001e20  1b420601  srli r4, r12, 16
001e24  1b021200  andi r4, r4, 1
001e28  0b124610  add.s r4, r12, r4
001e2c  0b121210  add.s r4, r4, r1
001e30  17029201  and r4, r4, r25
001e34  6b558fff  load.d r[11:12], -8(r30)
001e38  0b112d10  add.s r2, r26, r2
001e3c  73604100  stores.w r4, 0(r2)
001e40  1325a304  setlt.ul r10, r[7:8], r[11:12]
001e44  27130300  addli.d r[7:8], r[7:8], 1
001e48  b73e05fe  beq r10, zero, -84
001e4c  0b258310  add.ul r[11:12], r[7:8], r[9:10]
001e50  1b312500  slli r2, r10, 2
001e54  0b122c10  add.s r4, r24, r2
001e58  6f460200  loads.w r12, 0(r4)
001e5c  1705c601  and r10, r12, r28
001e60  1382ad04  setlt.u r4, r27, r10
001e64  3b500200  bneq r4, zero, 20
001e68  1f020600  addli r4, r12, 0
001e6c  1385a104  setlt.u r10, r3, r10
001e70  3b1f05fe  bneq r10, zero, -60
001e74  dbf5ffff  j -84
001e78  17125600  or r4, r12, r5
001e7c  1385a104  setlt.u r10, r3, r10
001e80  bb5e05fe  bneq r10, zero, -76
001e84  dbf3ffff  j -100
001e88  b3070028  zext_int2long r[16:17], zero
001e8c  db040000  j 36
001e90  a7c70700  addli.d r[16:17], r[16:17], 4
001e94  0b124d10  add.s r4, r26, r4
001e98  13a1d700  seteq.d r2, r[16:17], r[14:15]
001e9c  73663201  stores.w r19, 12(r4)
001ea0  73646200  stores.w r6, 8(r4)
001ea4  73625201  stores.w r21, 4(r4)
001ea8  73602201  stores.w r18, 0(r4)
001eac  3b2d01fe  bneq r2, zero, -184
001eb0  0ba38710  add.ul r[7:8], r[16:17], r[9:10]
001eb4  1b322300  slli r4, r6, 2
001eb8  0b194c10  add.s r18, r24, r4
001ebc  6f41c900  loads.w r2, 12(r18)
001ec0  970bc101  and r23, r2, r28
001ec4  13837d05  setlt.u r6, r27, r23
001ec8  3b300300  bneq r6, zero, 12
001ecc  9f090100  addli r19, r2, 0
001ed0  5b010000  j 8
001ed4  97195100  or r19, r2, r5
001ed8  ef488900  loads.w r17, 8(r18)
001edc  1786c801  and r12, r17, r28
001ee0  1383cd04  setlt.u r6, r27, r12
001ee4  3b300300  bneq r6, zero, 12
001ee8  1f830800  addli r6, r17, 0
001eec  5b010000  j 8
001ef0  17935800  or r6, r17, r5
001ef4  ef434900  loads.w r7, 4(r18)
001ef8  178bc301  and r22, r7, r28
001efc  13856d05  setlt.u r10, r27, r22
001f00  3b300500  bneq r10, zero, 12
001f04  9f8a0300  addli r21, r7, 0
001f08  5b010000  j 8
001f0c  979a5300  or r21, r7, r5
001f10  6f4a0900  loads.w r20, 0(r18)
001f14  1705ca01  and r10, r20, r28
001f18  9385ad04  setlt.u r11, r27, r10
001f1c  3bd00500  bneq r11, zero, 20
001f20  1f090a00  addli r18, r20, 0
001f24  1385a104  setlt.u r10, r3, r10
001f28  37500500  beq r10, zero, 20
001f2c  db040000  j 36
001f30  17195a00  or r18, r20, r5
001f34  1385a104  setlt.u r10, r3, r10
001f38  3b600500  bneq r10, zero, 24
001f3c  1b450a01  srli r10, r20, 16
001f40  1b051500  andi r10, r10, 1
001f44  0b15aa10  add.s r10, r20, r10
001f48  0b151510  add.s r10, r10, r1
001f4c  17099501  and r18, r10, r25
001f50  13856105  setlt.u r10, r3, r22
001f54  bb300500  bneq r10, zero, 44
001f58  1bc50301  srli r10, r7, 16
001f5c  1b051500  andi r10, r10, 1
001f60  8b93a310  add.s r7, r7, r10
001f64  8b931310  add.s r7, r7, r1
001f68  978a9301  and r21, r7, r25
001f6c  9383c104  setlt.u r7, r3, r12
001f70  37e00300  beq r7, zero, 24
001f74  93837105  setlt.u r7, r3, r23
001f78  3bec03fe  bneq r7, zero, -232
001f7c  5b050000  j 40
001f80  9383c104  setlt.u r7, r3, r12
001f84  bbcf03fe  bneq r7, zero, -16
001f88  1bc30801  srli r6, r17, 16
001f8c  1b031300  andi r6, r6, 1
001f90  0b936810  add.s r6, r17, r6
001f94  0b131310  add.s r6, r6, r1
001f98  17039301  and r6, r6, r25
001f9c  93837105  setlt.u r7, r3, r23
001fa0  bbcb03fe  bneq r7, zero, -272
001fa4  9b430101  srli r7, r2, 16
001fa8  9b831300  andi r7, r7, 1
001fac  0b117110  add.s r2, r2, r7
001fb0  0b111110  add.s r2, r2, r1
001fb4  97099101  and r19, r2, r25
001fb8  5bdbffff  j -296
001fbc  00380002  core_id r16
001fc0  00200100  mfence { sm }
001fc4  1f610000  addli r2, zero, 6
001fc8  b7272802  beq r16, r2, 1512
001fcc  63413fff  loadli.w r2,  -100(r30)
001fd0  3b3f0102  bneq r2, zero, 1996
001fd4  db350100  j 2476
001fd8  3d000000  xfence
001fdc  33030028  zext_int2long r[7:8], zero
001fe0  00a00300  mfence { lm, sm, gm }
001fe4  db030000  j 28
001fe8  6b530ffb  load.d r[7:8], -80(r30)
001fec  6b548ffa  load.d r[9:10], -88(r30)
001ff0  9f770000  addli r15, zero, 7
001ff4  13216404  setlt.ul r2, r[9:10], r[7:8]
001ff8  27130400  addli.d r[7:8], r[9:10], 1
001ffc  b7560100  beq r2, zero, 436
002000  1734f302  sll.d r[9:10], r[7:8], r15
002004  73346ffa  store.d r[7:8], -88(r30)
002008  bb518d01  bneq r26, r24, 116
00200c  33030028  zext_int2long r[7:8], zero
002010  5b060000  j 48
002014  1b420601  srli r4, r12, 16
002018  1b021200  andi r4, r4, 1
00201c  0b124610  add.s r4, r12, r4
002020  0b121210  add.s r4, r4, r1
002024  17029201  and r4, r4, r25
002028  6b558fff  load.d r[11:12], -8(r30)
00202c  0b112d10  add.s r2, r26, r2
002030  73604100  stores.w r4, 0(r2)
002034  1325a304  setlt.ul r10, r[7:8], r[11:12]
002038  27130300  addli.d r[7:8], r[7:8], 1
00203c  b73e05fe  beq r10, zero, -84
002040  0b258310  add.ul r[11:12], r[7:8], r[9:10]
002044  1b312500  slli r2, r10, 2
002048  0b122c10  add.s r4, r24, r2
00204c  6f460200  loads.w r12, 0(r4)
002050  1705c601  and r10, r12, r28
002054  1382ad04  setlt.u r4, r27, r10
002058  3b500200  bneq r4, zero, 20
00205c  1f020600  addli r4, r12, 0
002060  1385a104  setlt.u r10, r3, r10
002064  3b1f05fe  bneq r10, zero, -60
002068  dbf5ffff  j -84
00206c  17125600  or r4, r12, r5
002070  1385a104  setlt.u r10, r3, r10
002074  bb5e05fe  bneq r10, zero, -76
002078  dbf3ffff  j -100
00207c  b3070028  zext_int2long r[16:17], zero
002080  db040000  j 36
002084  a7c70700  addli.d r[16:17], r[16:17], 4
002088  0b124d10  add.s r4, r26, r4
00208c  13a1d700  seteq.d r2, r[16:17], r[14:15]
002090  73663201  stores.w r19, 12(r4)
002094  73646200  stores.w r6, 8(r4)
002098  73625201  stores.w r21, 4(r4)
00209c  73602201  stores.w r18, 0(r4)
0020a0  3b2d01fe  bneq r2, zero, -184
0020a4  0ba38710  add.ul r[7:8], r[16:17], r[9:10]
0020a8  1b322300  slli r4, r6, 2
0020ac  0b194c10  add.s r18, r24, r4
0020b0  6f41c900  loads.w r2, 12(r18)
0020b4  970bc101  and r23, r2, r28
0020b8  13837d05  setlt.u r6, r27, r23
0020bc  3b300300  bneq r6, zero, 12
0020c0  9f090100  addli r19, r2, 0
0020c4  5b010000  j 8
0020c8  97195100  or r19, r2, r5
0020cc  ef488900  loads.w r17, 8(r18)
0020d0  1786c801  and r12, r17, r28
0020d4  1383cd04  setlt.u r6, r27, r12
0020d8  3b300300  bneq r6, zero, 12
0020dc  1f830800  addli r6, r17, 0
0020e0  5b010000  j 8
0020e4  17935800  or r6, r17, r5
0020e8  ef434900  loads.w r7, 4(r18)
0020ec  178bc301  and r22, r7, r28
0020f0  13856d05  setlt.u r10, r27, r22
0020f4  3b300500  bneq r10, zero, 12
0020f8  9f8a0300  addli r21, r7, 0
0020fc  5b010000  j 8
002100  979a5300  or r21, r7, r5
002104  6f4a0900  loads.w r20, 0(r18)
002108  1705ca01  and r10, r20, r28
00210c  9385ad04  setlt.u r11, r27, r10
002110  3bd00500  bneq r11, zero, 20
002114  1f090a00  addli r18, r20, 0
002118  1385a104  setlt.u r10, r3, r10
00211c  37500500  beq r10, zero, 20
002120  db040000  j 36
002124  17195a00  or r18, r20, r5
002128  1385a104  setlt.u r10, r3, r10
00212c  3b600500  bneq r10, zero, 24
002130  1b450a01  srli r10, r20, 16
002134  1b051500  andi r10, r10, 1
002138  0b15aa10  add.s r10, r20, r10
00213c  0b151510  add.s r10, r10, r1
002140  17099501  and r18, r10, r25
002144  13856105  setlt.u r10, r3, r22
002148  bb300500  bneq r10, zero, 44
00214c  1bc50301  srli r10, r7, 16
002150  1b051500  andi r10, r10, 1
002154  8b93a310  add.s r7, r7, r10
002158  8b931310  add.s r7, r7, r1
00215c  978a9301  and r21, r7, r25
002160  9383c104  setlt.u r7, r3, r12
002164  37e00300  beq r7, zero, 24
002168  93837105  setlt.u r7, r3, r23
00216c  3bec03fe  bneq r7, zero, -232
002170  5b050000  j 40
002174  9383c104  setlt.u r7, r3, r12
002178  bbcf03fe  bneq r7, zero, -16
00217c  1bc30801  srli r6, r17, 16
002180  1b031300  andi r6, r6, 1
002184  0b936810  add.s r6, r17, r6
002188  0b131310  add.s r6, r6, r1
00218c  17039301  and r6, r6, r25
002190  93837105  setlt.u r7, r3, r23
002194  bbcb03fe  bneq r7, zero, -272
002198  9b430101  srli r7, r2, 16
00219c  9b831300  andi r7, r7, 1
0021a0  0b117110  add.s r2, r2, r7
0021a4  0b111110  add.s r2, r2, r1
0021a8  97099101  and r19, r2, r25
0021ac  5bdbffff  j -296
0021b0  00380002  core_id r16
0021b4  00200100  mfence { sm }
0021b8  1f110000  addli r2, zero, 1
0021bc  b77028fc  beq r16, r2, -1988
0021c0  63412fff  loadli.w r2,  -108(r30)
0021c4  b70801fc  beq r2, zero, -1504
0021c8  1f014000  addli r2, zero, 32
0021cc  3d000000  xfence
0021d0  00a00300  mfence { lm, sm, gm }
0021d4  33030128  zext_int2long r[7:8], r2
0021d8  db030000  j 28
0021dc  6b530ffc  load.d r[7:8], -64(r30)
0021e0  6b548ffa  load.d r[9:10], -88(r30)
0021e4  9f770000  addli r15, zero, 7
0021e8  13216404  setlt.ul r2, r[9:10], r[7:8]
0021ec  27130400  addli.d r[7:8], r[9:10], 1
0021f0  b7560100  beq r2, zero, 436
0021f4  1734f302  sll.d r[9:10], r[7:8], r15
0021f8  73346ffa  store.d r[7:8], -88(r30)
0021fc  bb518d01  bneq r26, r24, 116
002200  33030028  zext_int2long r[7:8], zero
002204  5b060000  j 48
002208  1b420601  srli r4, r12, 16
00220c  1b021200  andi r4, r4, 1
002210  0b124610  add.s r4, r12, r4
002214  0b121210  add.s r4, r4, r1
002218  17029201  and r4, r4, r25
00221c  6b558fff  load.d r[11:12], -8(r30)
002220  0b112d10  add.s r2, r26, r2
002224  73604100  stores.w r4, 0(r2)
002228  1325a304  setlt.ul r10, r[7:8], r[11:12]
00222c  27130300  addli.d r[7:8], r[7:8], 1
002230  b73e05fe  beq r10, zero, -84
002234  0b258310  add.ul r[11:12], r[7:8], r[9:10]
002238  1b312500  slli r2, r10, 2
00223c  0b122c10  add.s r4, r24, r2
002240  6f460200  loads.w r12, 0(r4)
002244  1705c601  and r10, r12, r28
002248  1382ad04  setlt.u r4, r27, r10
00224c  3b500200  bneq r4, zero, 20
002250  1f020600  addli r4, r12, 0
002254  1385a104  setlt.u r10, r3, r10
002258  3b1f05fe  bneq r10, zero, -60
00225c  dbf5ffff  j -84
002260  17125600  or r4, r12, r5
002264  1385a104  setlt.u r10, r3, r10
002268  bb5e05fe  bneq r10, zero, -76
00226c  dbf3ffff  j -100
002270  b3070028  zext_int2long r[16:17], zero
002274  db040000  j 36
002278  a7c70700  addli.d r[16:17], r[16:17], 4
00227c  0b124d10  add.s r4, r26, r4
002280  13a1d700  seteq.d r2, r[16:17], r[14:15]
002284  73663201  stores.w r19, 12(r4)
002288  73646200  stores.w r6, 8(r4)
00228c  73625201  stores.w r21, 4(r4)
002290  73602201  stores.w r18, 0(r4)
002294  3b2d01fe  bneq r2, zero, -184
002298  0ba38710  add.ul r[7:8], r[16:17], r[9:10]
00229c  1b322300  slli r4, r6, 2
0022a0  0b194c10  add.s r18, r24, r4
0022a4  6f41c900  loads.w r2, 12(r18)
0022a8  970bc101  and r23, r2, r28
0022ac  13837d05  setlt.u r6, r27, r23
0022b0  3b300300  bneq r6, zero, 12
0022b4  9f090100  addli r19, r2, 0
0022b8  5b010000  j 8
0022bc  97195100  or r19, r2, r5
0022c0  ef488900  loads.w r17, 8(r18)
0022c4  1786c801  and r12, r17, r28
0022c8  1383cd04  setlt.u r6, r27, r12
0022cc  3b300300  bneq r6, zero, 12
0022d0  1f830800  addli r6, r17, 0
0022d4  5b010000  j 8
0022d8  17935800  or r6, r17, r5
0022dc  ef434900  loads.w r7, 4(r18)
0022e0  178bc301  and r22, r7, r28
0022e4  13856d05  setlt.u r10, r27, r22
0022e8  3b300500  bneq r10, zero, 12
0022ec  9f8a0300  addli r21, r7, 0
0022f0  5b010000  j 8
0022f4  979a5300  or r21, r7, r5
0022f8  6f4a0900  loads.w r20, 0(r18)
0022fc  1705ca01  and r10, r20, r28
002300  9385ad04  setlt.u r11, r27, r10
002304  3bd00500  bneq r11, zero, 20
002308  1f090a00  addli r18, r20, 0
00230c  1385a104  setlt.u r10, r3, r10
002310  37500500  beq r10, zero, 20
002314  db040000  j 36
002318  17195a00  or r18, r20, r5
00231c  1385a104  setlt.u r10, r3, r10
002320  3b600500  bneq r10, zero, 24
002324  1b450a01  srli r10, r20, 16
002328  1b051500  andi r10, r10, 1
00232c  0b15aa10  add.s r10, r20, r10
002330  0b151510  add.s r10, r10, r1
002334  17099501  and r18, r10, r25
002338  13856105  setlt.u r10, r3, r22
00233c  bb300500  bneq r10, zero, 44
002340  1bc50301  srli r10, r7, 16
002344  1b051500  andi r10, r10, 1
002348  8b93a310  add.s r7, r7, r10
00234c  8b931310  add.s r7, r7, r1
002350  978a9301  and r21, r7, r25
002354  9383c104  setlt.u r7, r3, r12
002358  37e00300  beq r7, zero, 24
00235c  93837105  setlt.u r7, r3, r23
002360  3bec03fe  bneq r7, zero, -232
002364  5b050000  j 40
002368  9383c104  setlt.u r7, r3, r12
00236c  bbcf03fe  bneq r7, zero, -16
002370  1bc30801  srli r6, r17, 16
002374  1b031300  andi r6, r6, 1
002378  0b936810  add.s r6, r17, r6
00237c  0b131310  add.s r6, r6, r1
002380  17039301  and r6, r6, r25
002384  93837105  setlt.u r7, r3, r23
002388  bbcb03fe  bneq r7, zero, -272
00238c  9b430101  srli r7, r2, 16
002390  9b831300  andi r7, r7, 1
002394  0b117110  add.s r2, r2, r7
002398  0b111110  add.s r2, r2, r1
00239c  97099101  and r19, r2, r25
0023a0  5bdbffff  j -296
0023a4  00380002  core_id r16
0023a8  00200100  mfence { sm }
0023ac  1f310000  addli r2, zero, 3
0023b0  b77028fc  beq r16, r2, -1988
0023b4  63013fff  loadli.w r2,  -104(r30)
0023b8  b70801fc  beq r2, zero, -1504
0023bc  1f018000  addli r2, zero, 64
0023c0  3d000000  xfence
0023c4  00a00300  mfence { lm, sm, gm }
0023c8  33030128  zext_int2long r[7:8], r2
0023cc  db030000  j 28
0023d0  6b530ffd  load.d r[7:8], -48(r30)
0023d4  6b548ffa  load.d r[9:10], -88(r30)
0023d8  9f770000  addli r15, zero, 7
0023dc  13216404  setlt.ul r2, r[9:10], r[7:8]
0023e0  27130400  addli.d r[7:8], r[9:10], 1
0023e4  b7560100  beq r2, zero, 436
0023e8  1734f302  sll.d r[9:10], r[7:8], r15
0023ec  73346ffa  store.d r[7:8], -88(r30)
0023f0  bb518d01  bneq r26, r24, 116
0023f4  33030028  zext_int2long r[7:8], zero
0023f8  5b060000  j 48
0023fc  1b420601  srli r4, r12, 16
002400  1b021200  andi r4, r4, 1
002404  0b124610  add.s r4, r12, r4
002408  0b121210  add.s r4, r4, r1
00240c  17029201  and r4, r4, r25
002410  6b558fff  load.d r[11:12], -8(r30)
002414  0b112d10  add.s r2, r26, r2
002418  73604100  stores.w r4, 0(r2)
00241c  1325a304  setlt.ul r10, r[7:8], r[11:12]
002420  27130300  addli.d r[7:8], r[7:8], 1
002424  b73e05fe  beq r10, zero, -84
002428  0b258310  add.ul r[11:12], r[7:8], r[9:10]
00242c  1b312500  slli r2, r10, 2
002430  0b122c10  add.s r4, r24, r2
002434  6f460200  loads.w r12, 0(r4)
002438  1705c601  and r10, r12, r28
00243c  1382ad04  setlt.u r4, r27, r10
002440  3b500200  bneq r4, zero, 20
002444  1f020600  addli r4, r12, 0
002448  1385a104  setlt.u r10, r3, r10
00244c  3b1f05fe  bneq r10, zero, -60
002450  dbf5ffff  j -84
002454  17125600  or r4, r12, r5
002458  1385a104  setlt.u r10, r3, r10
00245c  bb5e05fe  bneq r10, zero, -76
002460  dbf3ffff  j -100
002464  b3070028  zext_int2long r[16:17], zero
002468  db040000  j 36
00246c  a7c70700  addli.d r[16:17], r[16:17], 4
002470  0b124d10  add.s r4, r26, r4
002474  13a1d700  seteq.d r2, r[16:17], r[14:15]
002478  73663201  stores.w r19, 12(r4)
00247c  73646200  stores.w r6, 8(r4)
002480  73625201  stores.w r21, 4(r4)
002484  73602201  stores.w r18, 0(r4)
002488  3b2d01fe  bneq r2, zero, -184
00248c  0ba38710  add.ul r[7:8], r[16:17], r[9:10]
002490  1b322300  slli r4, r6, 2
002494  0b194c10  add.s r18, r24, r4
002498  6f41c900  loads.w r2, 12(r18)
00249c  970bc101  and r23, r2, r28
0024a0  13837d05  setlt.u r6, r27, r23
0024a4  3b300300  bneq r6, zero, 12
0024a8  9f090100  addli r19, r2, 0
0024ac  5b010000  j 8
0024b0  97195100  or r19, r2, r5
0024b4  ef488900  loads.w r17, 8(r18)
0024b8  1786c801  and r12, r17, r28
0024bc  1383cd04  setlt.u r6, r27, r12
0024c0  3b300300  bneq r6, zero, 12
0024c4  1f830800  addli r6, r17, 0
0024c8  5b010000  j 8
0024cc  17935800  or r6, r17, r5
0024d0  ef434900  loads.w r7, 4(r18)
0024d4  178bc301  and r22, r7, r28
0024d8  13856d05  setlt.u r10, r27, r22
0024dc  3b300500  bneq r10, zero, 12
0024e0  9f8a0300  addli r21, r7, 0
0024e4  5b010000  j 8
0024e8  979a5300  or r21, r7, r5
0024ec  6f4a0900  loads.w r20, 0(r18)
0024f0  1705ca01  and r10, r20, r28
0024f4  9385ad04  setlt.u r11, r27, r10
0024f8  3bd00500  bneq r11, zero, 20
0024fc  1f090a00  addli r18, r20, 0
002500  1385a104  setlt.u r10, r3, r10
002504  37500500  beq r10, zero, 20
002508  db040000  j 36
00250c  17195a00  or r18, r20, r5
002510  1385a104  setlt.u r10, r3, r10
002514  3b600500  bneq r10, zero, 24
002518  1b450a01  srli r10, r20, 16
00251c  1b051500  andi r10, r10, 1
002520  0b15aa10  add.s r10, r20, r10
002524  0b151510  add.s r10, r10, r1
002528  17099501  and r18, r10, r25
00252c  13856105  setlt.u r10, r3, r22
002530  bb300500  bneq r10, zero, 44
002534  1bc50301  srli r10, r7, 16
002538  1b051500  andi r10, r10, 1
00253c  8b93a310  add.s r7, r7, r10
002540  8b931310  add.s r7, r7, r1
002544  978a9301  and r21, r7, r25
002548  9383c104  setlt.u r7, r3, r12
00254c  37e00300  beq r7, zero, 24
002550  93837105  setlt.u r7, r3, r23
002554  3bec03fe  bneq r7, zero, -232
002558  5b050000  j 40
00255c  9383c104  setlt.u r7, r3, r12
002560  bbcf03fe  bneq r7, zero, -16
002564  1bc30801  srli r6, r17, 16
002568  1b031300  andi r6, r6, 1
00256c  0b936810  add.s r6, r17, r6
002570  0b131310  add.s r6, r6, r1
002574  17039301  and r6, r6, r25
002578  93837105  setlt.u r7, r3, r23
00257c  bbcb03fe  bneq r7, zero, -272
002580  9b430101  srli r7, r2, 16
002584  9b831300  andi r7, r7, 1
002588  0b117110  add.s r2, r2, r7
00258c  0b111110  add.s r2, r2, r1
002590  97099101  and r19, r2, r25
002594  5bdbffff  j -296
002598  00380002  core_id r16
00259c  00200100  mfence { sm }
0025a0  1f510000  addli r2, zero, 5
0025a4  b77028fc  beq r16, r2, -1988
0025a8  1f610000  addli r2, zero, 6
0025ac  bb0828fc  bneq r16, r2, -1504
0025b0  1f01c000  addli r2, zero, 96
0025b4  3d000000  xfence
0025b8  00a00300  mfence { lm, sm, gm }
0025bc  33030128  zext_int2long r[7:8], r2
0025c0  db030000  j 28
0025c4  6b530ffe  load.d r[7:8], -32(r30)
0025c8  6b548ffa  load.d r[9:10], -88(r30)
0025cc  9f770000  addli r15, zero, 7
0025d0  13216404  setlt.ul r2, r[9:10], r[7:8]
0025d4  27130400  addli.d r[7:8], r[9:10], 1
0025d8  b7560100  beq r2, zero, 436
0025dc  1734f302  sll.d r[9:10], r[7:8], r15
0025e0  73346ffa  store.d r[7:8], -88(r30)
0025e4  bb518d01  bneq r26, r24, 116
0025e8  33030028  zext_int2long r[7:8], zero
0025ec  5b060000  j 48
0025f0  1b420601  srli r4, r12, 16
0025f4  1b021200  andi r4, r4, 1
0025f8  0b124610  add.s r4, r12, r4
0025fc  0b121210  add.s r4, r4, r1
002600  17029201  and r4, r4, r25
002604  6b558fff  load.d r[11:12], -8(r30)
002608  0b112d10  add.s r2, r26, r2
00260c  73604100  stores.w r4, 0(r2)
002610  1325a304  setlt.ul r10, r[7:8], r[11:12]
002614  27130300  addli.d r[7:8], r[7:8], 1
002618  b73e05fe  beq r10, zero, -84
00261c  0b258310  add.ul r[11:12], r[7:8], r[9:10]
002620  1b312500  slli r2, r10, 2
002624  0b122c10  add.s r4, r24, r2
002628  6f460200  loads.w r12, 0(r4)
00262c  1705c601  and r10, r12, r28
002630  1382ad04  setlt.u r4, r27, r10
002634  3b500200  bneq r4, zero, 20
002638  1f020600  addli r4, r12, 0
00263c  1385a104  setlt.u r10, r3, r10
002640  3b1f05fe  bneq r10, zero, -60
002644  dbf5ffff  j -84
002648  17125600  or r4, r12, r5
00264c  1385a104  setlt.u r10, r3, r10
002650  bb5e05fe  bneq r10, zero, -76
002654  dbf3ffff  j -100
002658  b3070028  zext_int2long r[16:17], zero
00265c  db040000  j 36
002660  a7c70700  addli.d r[16:17], r[16:17], 4
002664  0b124d10  add.s r4, r26, r4
002668  13a1d700  seteq.d r2, r[16:17], r[14:15]
00266c  73663201  stores.w r19, 12(r4)
002670  73646200  stores.w r6, 8(r4)
002674  73625201  stores.w r21, 4(r4)
002678  73602201  stores.w r18, 0(r4)
00267c  3b2d01fe  bneq r2, zero, -184
002680  0ba38710  add.ul r[7:8], r[16:17], r[9:10]
002684  1b322300  slli r4, r6, 2
002688  0b194c10  add.s r18, r24, r4
00268c  6f41c900  loads.w r2, 12(r18)
002690  970bc101  and r23, r2, r28
002694  13837d05  setlt.u r6, r27, r23
002698  3b300300  bneq r6, zero, 12
00269c  9f090100  addli r19, r2, 0
0026a0  5b010000  j 8
0026a4  97195100  or r19, r2, r5
0026a8  ef488900  loads.w r17, 8(r18)
0026ac  1786c801  and r12, r17, r28
0026b0  1383cd04  setlt.u r6, r27, r12
0026b4  3b300300  bneq r6, zero, 12
0026b8  1f830800  addli r6, r17, 0
0026bc  5b010000  j 8
0026c0  17935800  or r6, r17, r5
0026c4  ef434900  loads.w r7, 4(r18)
0026c8  178bc301  and r22, r7, r28
0026cc  13856d05  setlt.u r10, r27, r22
0026d0  3b300500  bneq r10, zero, 12
0026d4  9f8a0300  addli r21, r7, 0
0026d8  5b010000  j 8
0026dc  979a5300  or r21, r7, r5
0026e0  6f4a0900  loads.w r20, 0(r18)
0026e4  1705ca01  and r10, r20, r28
0026e8  9385ad04  setlt.u r11, r27, r10
0026ec  3bd00500  bneq r11, zero, 20
0026f0  1f090a00  addli r18, r20, 0
0026f4  1385a104  setlt.u r10, r3, r10
0026f8  37500500  beq r10, zero, 20
0026fc  db040000  j 36
002700  17195a00  or r18, r20, r5
002704  1385a104  setlt.u r10, r3, r10
002708  3b600500  bneq r10, zero, 24
00270c  1b450a01  srli r10, r20, 16
002710  1b051500  andi r10, r10, 1
002714  0b15aa10  add.s r10, r20, r10
002718  0b151510  add.s r10, r10, r1
00271c  17099501  and r18, r10, r25
002720  13856105  setlt.u r10, r3, r22
002724  bb300500  bneq r10, zero, 44
002728  1bc50301  srli r10, r7, 16
00272c  1b051500  andi r10, r10, 1
002730  8b93a310  add.s r7, r7, r10
002734  8b931310  add.s r7, r7, r1
002738  978a9301  and r21, r7, r25
00273c  9383c104  setlt.u r7, r3, r12
002740  37e00300  beq r7, zero, 24
002744  93837105  setlt.u r7, r3, r23
002748  3bec03fe  bneq r7, zero, -232
00274c  5b050000  j 40
002750  9383c104  setlt.u r7, r3, r12
002754  bbcf03fe  bneq r7, zero, -16
002758  1bc30801  srli r6, r17, 16
00275c  1b031300  andi r6, r6, 1
002760  0b936810  add.s r6, r17, r6
002764  0b131310  add.s r6, r6, r1
002768  17039301  and r6, r6, r25
00276c  93837105  setlt.u r7, r3, r23
002770  bbcb03fe  bneq r7, zero, -272
002774  9b430101  srli r7, r2, 16
002778  9b831300  andi r7, r7, 1
00277c  0b117110  add.s r2, r2, r7
002780  0b111110  add.s r2, r2, r1
002784  97099101  and r19, r2, r25
002788  5bdbffff  j -296
00278c  00380002  core_id r16
002790  00200100  mfence { sm }
002794  63413fff  loadli.w r2,  -100(r30)
002798  b7270100  beq r2, zero, 488
00279c  1f01e000  addli r2, zero, 112
0027a0  3d000000  xfence
0027a4  00a00300  mfence { lm, sm, gm }
0027a8  33030128  zext_int2long r[7:8], r2
0027ac  db030000  j 28
0027b0  6b538fff  load.d r[7:8], -8(r30)
0027b4  6b548ffa  load.d r[9:10], -88(r30)
0027b8  9f770000  addli r15, zero, 7
0027bc  13216404  setlt.ul r2, r[9:10], r[7:8]
0027c0  27130400  addli.d r[7:8], r[9:10], 1
0027c4  b7560100  beq r2, zero, 436
0027c8  1734f302  sll.d r[9:10], r[7:8], r15
0027cc  73346ffa  store.d r[7:8], -88(r30)
0027d0  bb518d01  bneq r26, r24, 116
0027d4  33030028  zext_int2long r[7:8], zero
0027d8  5b060000  j 48
0027dc  1b420601  srli r4, r12, 16
0027e0  1b021200  andi r4, r4, 1
0027e4  0b124610  add.s r4, r12, r4
0027e8  0b121210  add.s r4, r4, r1
0027ec  17029201  and r4, r4, r25
0027f0  6b558fff  load.d r[11:12], -8(r30)
0027f4  0b112d10  add.s r2, r26, r2
0027f8  73604100  stores.w r4, 0(r2)
0027fc  1325a304  setlt.ul r10, r[7:8], r[11:12]
002800  27130300  addli.d r[7:8], r[7:8], 1
002804  b73e05fe  beq r10, zero, -84
002808  0b258310  add.ul r[11:12], r[7:8], r[9:10]
00280c  1b312500  slli r2, r10, 2
002810  0b122c10  add.s r4, r24, r2
002814  6f460200  loads.w r12, 0(r4)
002818  1705c601  and r10, r12, r28
00281c  1382ad04  setlt.u r4, r27, r10
002820  3b500200  bneq r4, zero, 20
002824  1f020600  addli r4, r12, 0
002828  1385a104  setlt.u r10, r3, r10
00282c  3b1f05fe  bneq r10, zero, -60
002830  dbf5ffff  j -84
002834  17125600  or r4, r12, r5
002838  1385a104  setlt.u r10, r3, r10
00283c  bb5e05fe  bneq r10, zero, -76
002840  dbf3ffff  j -100
002844  b3070028  zext_int2long r[16:17], zero
002848  db040000  j 36
00284c  a7c70700  addli.d r[16:17], r[16:17], 4
002850  0b124d10  add.s r4, r26, r4
002854  13a1d700  seteq.d r2, r[16:17], r[14:15]
002858  73663201  stores.w r19, 12(r4)
00285c  73646200  stores.w r6, 8(r4)
002860  73625201  stores.w r21, 4(r4)
002864  73602201  stores.w r18, 0(r4)
002868  3b2d01fe  bneq r2, zero, -184
00286c  0ba38710  add.ul r[7:8], r[16:17], r[9:10]
002870  1b322300  slli r4, r6, 2
002874  0b194c10  add.s r18, r24, r4
002878  6f41c900  loads.w r2, 12(r18)
00287c  970bc101  and r23, r2, r28
002880  13837d05  setlt.u r6, r27, r23
002884  3b300300  bneq r6, zero, 12
002888  9f090100  addli r19, r2, 0
00288c  5b010000  j 8
002890  97195100  or r19, r2, r5
002894  ef488900  loads.w r17, 8(r18)
002898  1786c801  and r12, r17, r28
00289c  1383cd04  setlt.u r6, r27, r12
0028a0  3b300300  bneq r6, zero, 12
0028a4  1f830800  addli r6, r17, 0
0028a8  5b010000  j 8
0028ac  17935800  or r6, r17, r5
0028b0  ef434900  loads.w r7, 4(r18)
0028b4  178bc301  and r22, r7, r28
0028b8  13856d05  setlt.u r10, r27, r22
0028bc  3b300500  bneq r10, zero, 12
0028c0  9f8a0300  addli r21, r7, 0
0028c4  5b010000  j 8
0028c8  979a5300  or r21, r7, r5
0028cc  6f4a0900  loads.w r20, 0(r18)
0028d0  1705ca01  and r10, r20, r28
0028d4  9385ad04  setlt.u r11, r27, r10
0028d8  3bd00500  bneq r11, zero, 20
0028dc  1f090a00  addli r18, r20, 0
0028e0  1385a104  setlt.u r10, r3, r10
0028e4  37500500  beq r10, zero, 20
0028e8  db040000  j 36
0028ec  17195a00  or r18, r20, r5
0028f0  1385a104  setlt.u r10, r3, r10
0028f4  3b600500  bneq r10, zero, 24
0028f8  1b450a01  srli r10, r20, 16
0028fc  1b051500  andi r10, r10, 1
002900  0b15aa10  add.s r10, r20, r10
002904  0b151510  add.s r10, r10, r1
002908  17099501  and r18, r10, r25
00290c  13856105  setlt.u r10, r3, r22
002910  bb300500  bneq r10, zero, 44
002914  1bc50301  srli r10, r7, 16
002918  1b051500  andi r10, r10, 1
00291c  8b93a310  add.s r7, r7, r10
002920  8b931310  add.s r7, r7, r1
002924  978a9301  and r21, r7, r25
002928  9383c104  setlt.u r7, r3, r12
00292c  37e00300  beq r7, zero, 24
002930  93837105  setlt.u r7, r3, r23
002934  3bec03fe  bneq r7, zero, -232
002938  5b050000  j 40
00293c  9383c104  setlt.u r7, r3, r12
002940  bbcf03fe  bneq r7, zero, -16
002944  1bc30801  srli r6, r17, 16
002948  1b031300  andi r6, r6, 1
00294c  0b936810  add.s r6, r17, r6
002950  0b131310  add.s r6, r6, r1
002954  17039301  and r6, r6, r25
002958  93837105  setlt.u r7, r3, r23
00295c  bbcb03fe  bneq r7, zero, -272
002960  9b430101  srli r7, r2, 16
002964  9b831300  andi r7, r7, 1
002968  0b117110  add.s r2, r2, r7
00296c  0b111110  add.s r2, r2, r1
002970  97099101  and r19, r2, r25
002974  5bdbffff  j -296
002978  00380002  core_id r16
00297c  00200100  mfence { sm }
002980  1f71f001  addli r2, zero, 255
002984  80220104  csr_set csr5, r2
002988  1f310000  addli r2, zero, 3
00298c  00e00200  sync_core
002990  3b112800  bneq r16, r2, 68
002994  1f611000  addli r2, zero, 14
002998  7d000100  xsignal r2, 0
00299c  1f312000  addli r2, zero, 19
0029a0  7d000100  xsignal r2, 0
0029a4  1f412000  addli r2, zero, 20
0029a8  7d000100  xsignal r2, 0
0029ac  1f112000  addli r2, zero, 17
0029b0  7d000100  xsignal r2, 0
0029b4  6301affe  loadli.w r2,  -176(r30)
0029b8  6342efff  loadli.w r4,  -12(r30)
0029bc  0b1c2210  add.s r24, r4, r2
0029c0  1f212000  addli r2, zero, 18
0029c4  7d100100  xwait r2, 0
0029c8  1f712000  addli r2, zero, 23
0029cc  7d100100  xwait r2, 0
0029d0  5b320000  j 400
0029d4  6301affe  loadli.w r2,  -176(r30)
0029d8  6345efff  loadli.w r10,  -12(r30)
0029dc  0b1c2510  add.s r24, r10, r2
0029e0  1f510000  addli r2, zero, 5
0029e4  bb752800  bneq r16, r2, 380
0029e8  1f112000  addli r2, zero, 17
0029ec  1f240000  addli r8, zero, 2
0029f0  ab0400c1  lui r9, 790528
0029f4  1f020000  addli r4, zero, 0
0029f8  7d100100  xwait r2, 0
0029fc  1f013000  addli r2, zero, 24
002a00  7d100100  xwait r2, 0
002a04  1d000400  lock zero, r8
002a08  1f511000  addli r2, zero, 13
002a0c  0d000002  ew_cfg zero, zero, zero, 1
002a10  6b538ff5  load.d r[7:8], -168(r30)
002a14  0d800304  ew_cfg zero, r7, zero, 2
002a18  9f430000  addli r7, zero, 4
002a1c  1f130000  addli r6, zero, 1
002a20  8d030006  ew_cfg r7, zero, zero, 3
002a24  8d830326  ew_cfg r7, r7, zero, 19
002a28  0d010014  ew_cfg r2, zero, zero, 10
002a2c  63418ffe  loadli.w r2,  -188(r30)
002a30  0d042316  ew_cfg r8, r6, r2, 11
002a34  1f310000  addli r2, zero, 3
002a38  0d00201a  ew_cfg zero, zero, r2, 13
002a3c  2b81ff40  lui r2, 266232
002a40  8d84231c  ew_cfg r9, r7, r2, 14
002a44  2b01803f  lui r2, 260096
002a48  9f332000  addli r7, zero, 19
002a4c  ab040100  lui r9, 16
002a50  0d00011e  ew_cfg zero, r2, zero, 15
002a54  4d2c0d00  sslut r24, r26, 0
002a58  0d000014  ew_cfg zero, zero, zero, 10
002a5c  0d000026  ew_cfg zero, zero, zero, 19
002a60  1d100400  unlock r8
002a64  63018ffe  loadli.w r2,  -192(r30)
002a68  7d900300  xwait r7, 0
002a6c  9f133000  addli r7, zero, 25
002a70  7d900300  xwait r7, 0
002a74  1d000400  lock zero, r8
002a78  9f73f000  addli r7, zero, 127
002a7c  0d000002  ew_cfg zero, zero, zero, 1
002a80  0b112510  add.s r2, r10, r2
002a84  0d800304  ew_cfg zero, r7, zero, 2
002a88  0d030006  ew_cfg r6, zero, zero, 3
002a8c  63437ffe  loadli.w r6,  -196(r30)
002a90  0d130000  ewcoeff_cfg r6, zero, zero, 0
002a94  0b134110  add.s r6, r2, r4
002a98  8b134d10  add.s r7, r26, r4
002a9c  1f020204  addli r4, r4, 512
002aa0  2da37300  dscmpnsel r6, r7, r7, 0
002aa4  bb4f92fe  bneq r4, r9, -16
002aa8  1f230000  addli r6, zero, 2
002aac  1f020000  addli r4, zero, 0
002ab0  1d100300  unlock r6
002ab4  1d000300  lock zero, r6
002ab8  1f73f000  addli r6, zero, 127
002abc  0d000002  ew_cfg zero, zero, zero, 1
002ac0  0d000304  ew_cfg zero, r6, zero, 2
002ac4  1f130000  addli r6, zero, 1
002ac8  0d030006  ew_cfg r6, zero, zero, 3
002acc  8d110000  ewcoeff_cfg r3, zero, zero, 0
002ad0  0b134110  add.s r6, r2, r4
002ad4  1f020204  addli r4, r4, 512
002ad8  2d236308  dscmpnsel r6, r6, r6, 4
002adc  bb5f92fe  bneq r4, r9, -12
002ae0  1f220000  addli r4, zero, 2
002ae4  1f432000  addli r6, zero, 20
002ae8  ab04803f  lui r9, 260096
002aec  1f440000  addli r8, zero, 4
002af0  1d100200  unlock r4
002af4  7d100300  xwait r6, 0
002af8  1d000200  lock zero, r4
002afc  2b0380bf  lui r6, 784384
002b00  0d000002  ew_cfg zero, zero, zero, 1
002b04  8d140300  ewcoeff_cfg r9, r6, zero, 0
002b08  6b538ff5  load.d r[7:8], -168(r30)
002b0c  0d800304  ew_cfg zero, r7, zero, 2
002b10  0d040006  ew_cfg r8, zero, zero, 3
002b14  0d048426  ew_cfg r8, r8, r8, 19
002b18  2d0d2d00  dsmadd r26, r26, r2, 0
002b1c  1f113000  addli r2, zero, 25
002b20  0d000026  ew_cfg zero, zero, zero, 19
002b24  1d100200  unlock r4
002b28  7d000100  xsignal r2, 0
002b2c  1d000200  lock zero, r4
002b30  1f212000  addli r2, zero, 18
002b34  0d000002  ew_cfg zero, zero, zero, 1
002b38  8d940400  ewcoeff_cfg r9, r9, zero, 0
002b3c  0d800304  ew_cfg zero, r7, zero, 2
002b40  0d040006  ew_cfg r8, zero, zero, 3
002b44  0d048426  ew_cfg r8, r8, r8, 19
002b48  2d0cac01  dsmadd r24, r24, r26, 0
002b4c  0d000026  ew_cfg zero, zero, zero, 19
002b50  1d100200  unlock r4
002b54  7d000100  xsignal r2, 0
002b58  1f712000  addli r2, zero, 23
002b5c  7d000100  xsignal r2, 0
002b60  1f71f001  addli r2, zero, 255
002b64  3d000000  xfence
002b68  00a00300  mfence { lm, sm, gm }
002b6c  80220104  csr_set csr5, r2
002b70  0b118d19  sub.s r2, r26, r24
002b74  670a2ffe  storeli.w r2, -96(r30)
002b78  00e00200  sync_core
002b7c  b7280802  beq r16, zero, 1576
002b80  1f110000  addli r2, zero, 1
002b84  3b702804  bneq r16, r2, 2076
002b88  63024fff  loadli.w r4,  -96(r30)
002b8c  1f012000  addli r2, zero, 16
002b90  33030128  zext_int2long r[7:8], r2
002b94  13022204  setlt.u r4, r4, r2
002b98  e70a4ffe  storeli.w r4, -88(r30)
002b9c  3d000000  xfence
002ba0  00a00300  mfence { lm, sm, gm }
002ba4  db030000  j 28
002ba8  6b538ffb  load.d r[7:8], -72(r30)
002bac  6b540ffb  load.d r[9:10], -80(r30)
002bb0  9f770000  addli r15, zero, 7
002bb4  13216404  setlt.ul r2, r[9:10], r[7:8]
002bb8  27130400  addli.d r[7:8], r[9:10], 1
002bbc  b7660100  beq r2, zero, 440
002bc0  63015fff  loadli.w r2,  -88(r30)
002bc4  1734f302  sll.d r[9:10], r[7:8], r15
002bc8  73386ffa  store.d r[7:8], -80(r30)
002bcc  b7510100  beq r2, zero, 116
002bd0  33030028  zext_int2long r[7:8], zero
002bd4  5b060000  j 48
002bd8  1b420601  srli r4, r12, 16
002bdc  1b021200  andi r4, r4, 1
002be0  0b124610  add.s r4, r12, r4
002be4  0b121210  add.s r4, r4, r1
002be8  17029201  and r4, r4, r25
002bec  6b558fff  load.d r[11:12], -8(r30)
002bf0  0b112d10  add.s r2, r26, r2
002bf4  73604100  stores.w r4, 0(r2)
002bf8  1325a304  setlt.ul r10, r[7:8], r[11:12]
002bfc  27130300  addli.d r[7:8], r[7:8], 1
002c00  b72e05fe  beq r10, zero, -88
002c04  0b258310  add.ul r[11:12], r[7:8], r[9:10]
002c08  1b312500  slli r2, r10, 2
002c0c  0b122c10  add.s r4, r24, r2
002c10  6f460200  loads.w r12, 0(r4)
002c14  1705c601  and r10, r12, r28
002c18  1382ad04  setlt.u r4, r27, r10
002c1c  3b500200  bneq r4, zero, 20
002c20  1f020600  addli r4, r12, 0
002c24  1385a104  setlt.u r10, r3, r10
002c28  3b1f05fe  bneq r10, zero, -60
002c2c  dbf5ffff  j -84
002c30  17125600  or r4, r12, r5
002c34  1385a104  setlt.u r10, r3, r10
002c38  bb5e05fe  bneq r10, zero, -76
002c3c  dbf3ffff  j -100
002c40  b3070028  zext_int2long r[16:17], zero
002c44  db040000  j 36
002c48  a7c70700  addli.d r[16:17], r[16:17], 4
002c4c  0b133d11  add.s r6, r26, r19
002c50  13a2d700  seteq.d r4, r[16:17], r[14:15]
002c54  73662300  stores.w r2, 12(r6)
002c58  73647300  stores.w r7, 8(r6)
002c5c  73626301  stores.w r22, 4(r6)
002c60  7360c300  stores.w r12, 0(r6)
002c64  3b1d02fe  bneq r4, zero, -188
002c68  0ba38710  add.ul r[7:8], r[16:17], r[9:10]
002c6c  9b392300  slli r19, r6, 2
002c70  0b163c11  add.s r12, r24, r19
002c74  6f42c600  loads.w r4, 12(r12)
002c78  1703c201  and r6, r4, r28
002c7c  13816d04  setlt.u r2, r27, r6
002c80  3b300100  bneq r2, zero, 12
002c84  1f010200  addli r2, r4, 0
002c88  5b010000  j 8
002c8c  17115200  or r2, r4, r5
002c90  6f498600  loads.w r18, 8(r12)
002c94  970ac901  and r21, r18, r28
002c98  93835d05  setlt.u r7, r27, r21
002c9c  3bb00300  bneq r7, zero, 12
002ca0  9f030900  addli r7, r18, 0
002ca4  5b010000  j 8
002ca8  97135900  or r7, r18, r5
002cac  ef484600  loads.w r17, 4(r12)
002cb0  978bc801  and r23, r17, r28
002cb4  13857d05  setlt.u r10, r27, r23
002cb8  3b300500  bneq r10, zero, 12
002cbc  1f8b0800  addli r22, r17, 0
002cc0  5b010000  j 8
002cc4  179b5800  or r22, r17, r5
002cc8  6f4a0600  loads.w r20, 0(r12)
002ccc  1705ca01  and r10, r20, r28
002cd0  9385ad04  setlt.u r11, r27, r10
002cd4  3bd00500  bneq r11, zero, 20
002cd8  1f060a00  addli r12, r20, 0
002cdc  1385a104  setlt.u r10, r3, r10
002ce0  37500500  beq r10, zero, 20
002ce4  db040000  j 36
002ce8  17165a00  or r12, r20, r5
002cec  1385a104  setlt.u r10, r3, r10
002cf0  3b600500  bneq r10, zero, 24
002cf4  1b450a01  srli r10, r20, 16
002cf8  1b051500  andi r10, r10, 1
002cfc  0b15aa10  add.s r10, r20, r10
002d00  0b151510  add.s r10, r10, r1
002d04  17069501  and r12, r10, r25
002d08  13857105  setlt.u r10, r3, r23
002d0c  bb300500  bneq r10, zero, 44
002d10  1bc50801  srli r10, r17, 16
002d14  1b051500  andi r10, r10, 1
002d18  0b95a810  add.s r10, r17, r10
002d1c  0b151510  add.s r10, r10, r1
002d20  170b9501  and r22, r10, r25
002d24  13855105  setlt.u r10, r3, r21
002d28  37600500  beq r10, zero, 24
002d2c  13836104  setlt.u r6, r3, r6
002d30  3b6c03fe  bneq r6, zero, -232
002d34  5b050000  j 40
002d38  13855105  setlt.u r10, r3, r21
002d3c  bb4f05fe  bneq r10, zero, -16
002d40  9b430901  srli r7, r18, 16
002d44  9b831300  andi r7, r7, 1
002d48  8b137910  add.s r7, r18, r7
002d4c  8b931310  add.s r7, r7, r1
002d50  97839301  and r7, r7, r25
002d54  13836104  setlt.u r6, r3, r6
002d58  bb4b03fe  bneq r6, zero, -272
002d5c  1b410201  srli r2, r4, 16
002d60  1b011100  andi r2, r2, 1
002d64  0b112210  add.s r2, r4, r2
002d68  0b111110  add.s r2, r2, r1
002d6c  17019101  and r2, r2, r25
002d70  5bdbffff  j -296
002d74  00380002  core_id r16
002d78  00200100  mfence { sm }
002d7c  63412fff  loadli.w r2,  -108(r30)
002d80  bb280102  bneq r2, zero, 1576
002d84  1f310000  addli r2, zero, 3
002d88  bb002804  bneq r16, r2, 2080
002d8c  63024fff  loadli.w r4,  -96(r30)
002d90  1f012000  addli r2, zero, 16
002d94  13012204  setlt.u r2, r4, r2
002d98  e70b2ffe  storeli.w r2, -72(r30)
002d9c  1f016000  addli r2, zero, 48
002da0  3d000000  xfence
002da4  33030128  zext_int2long r[7:8], r2
002da8  00a00300  mfence { lm, sm, gm }
002dac  db030000  j 28
002db0  6b538ffc  load.d r[7:8], -56(r30)
002db4  6b540ffc  load.d r[9:10], -64(r30)
002db8  9f770000  addli r15, zero, 7
002dbc  13216404  setlt.ul r2, r[9:10], r[7:8]
002dc0  27130400  addli.d r[7:8], r[9:10], 1
002dc4  b7660100  beq r2, zero, 440
002dc8  63017fff  loadli.w r2,  -72(r30)
002dcc  73306ffc  store.d r[7:8], -64(r30)
002dd0  9733f302  sll.d r[8:9], r[7:8], r15
002dd4  b7510100  beq r2, zero, 116
002dd8  b3070028  zext_int2long r[16:17], zero
002ddc  5b060000  j 48
002de0  1b420301  srli r4, r6, 16
002de4  1b021200  andi r4, r4, 1
002de8  0b124310  add.s r4, r6, r4
002dec  0b121210  add.s r4, r4, r1
002df0  17029201  and r4, r4, r25
002df4  eb548fff  load.d r[10:11], -8(r30)
002df8  0b112d10  add.s r2, r26, r2
002dfc  73604100  stores.w r4, 0(r2)
002e00  13a39704  setlt.ul r6, r[16:17], r[10:11]
002e04  a7970700  addli.d r[16:17], r[16:17], 1
002e08  b72e03fe  beq r6, zero, -88
002e0c  8ba47710  add.ul r[10:11], r[16:17], r[8:9]
002e10  1bb12400  slli r2, r9, 2
002e14  0b122c10  add.s r4, r24, r2
002e18  6f430200  loads.w r6, 0(r4)
002e1c  9704c301  and r9, r6, r28
002e20  13829d04  setlt.u r4, r27, r9
002e24  3b500200  bneq r4, zero, 20
002e28  1f020300  addli r4, r6, 0
002e2c  93849104  setlt.u r9, r3, r9
002e30  3b9f04fe  bneq r9, zero, -60
002e34  dbf5ffff  j -84
002e38  17125300  or r4, r6, r5
002e3c  93849104  setlt.u r9, r3, r9
002e40  bbde04fe  bneq r9, zero, -76
002e44  dbf3ffff  j -100
002e48  b3070028  zext_int2long r[16:17], zero
002e4c  db040000  j 36
002e50  a7c70700  addli.d r[16:17], r[16:17], 4
002e54  0b139d10  add.s r6, r26, r9
002e58  13a2d700  seteq.d r4, r[16:17], r[14:15]
002e5c  73662300  stores.w r2, 12(r6)
002e60  73645301  stores.w r21, 8(r6)
002e64  73621301  stores.w r17, 4(r6)
002e68  7360c300  stores.w r12, 0(r6)
002e6c  3b1d02fe  bneq r4, zero, -188
002e70  8ba47710  add.ul r[10:11], r[16:17], r[8:9]
002e74  9bb42400  slli r9, r9, 2
002e78  0b169c10  add.s r12, r24, r9
002e7c  6f42c600  loads.w r4, 12(r12)
002e80  9709c201  and r19, r4, r28
002e84  13813d05  setlt.u r2, r27, r19
002e88  3b300100  bneq r2, zero, 12
002e8c  1f010200  addli r2, r4, 0
002e90  5b010000  j 8
002e94  17115200  or r2, r4, r5
002e98  ef4b8600  loads.w r23, 8(r12)
002e9c  1783cb01  and r6, r23, r28
002ea0  13856d04  setlt.u r10, r27, r6
002ea4  3b300500  bneq r10, zero, 12
002ea8  9f8a0b00  addli r21, r23, 0
002eac  5b010000  j 8
002eb0  979a5b00  or r21, r23, r5
002eb4  6f4b4600  loads.w r22, 4(r12)
002eb8  1709cb01  and r18, r22, r28
002ebc  13852d05  setlt.u r10, r27, r18
002ec0  3b300500  bneq r10, zero, 12
002ec4  9f080b00  addli r17, r22, 0
002ec8  5b010000  j 8
002ecc  97185b00  or r17, r22, r5
002ed0  6f4a0600  loads.w r20, 0(r12)
002ed4  1705ca01  and r10, r20, r28
002ed8  9385ad04  setlt.u r11, r27, r10
002edc  3bd00500  bneq r11, zero, 20
002ee0  1f060a00  addli r12, r20, 0
002ee4  1385a104  setlt.u r10, r3, r10
002ee8  37500500  beq r10, zero, 20
002eec  db040000  j 36
002ef0  17165a00  or r12, r20, r5
002ef4  1385a104  setlt.u r10, r3, r10
002ef8  3b600500  bneq r10, zero, 24
002efc  1b450a01  srli r10, r20, 16
002f00  1b051500  andi r10, r10, 1
002f04  0b15aa10  add.s r10, r20, r10
002f08  0b151510  add.s r10, r10, r1
002f0c  17069501  and r12, r10, r25
002f10  13852105  setlt.u r10, r3, r18
002f14  bb300500  bneq r10, zero, 44
002f18  1b450b01  srli r10, r22, 16
002f1c  1b051500  andi r10, r10, 1
002f20  0b15ab10  add.s r10, r22, r10
002f24  0b151510  add.s r10, r10, r1
002f28  97089501  and r17, r10, r25
002f2c  13836104  setlt.u r6, r3, r6
002f30  37600300  beq r6, zero, 24
002f34  13833105  setlt.u r6, r3, r19
002f38  3b6c03fe  bneq r6, zero, -232
002f3c  5b050000  j 40
002f40  13836104  setlt.u r6, r3, r6
002f44  bb4f03fe  bneq r6, zero, -16
002f48  1bc30b01  srli r6, r23, 16
002f4c  1b031300  andi r6, r6, 1
002f50  0b936b10  add.s r6, r23, r6
002f54  0b131310  add.s r6, r6, r1
002f58  970a9301  and r21, r6, r25
002f5c  13833105  setlt.u r6, r3, r19
002f60  bb4b03fe  bneq r6, zero, -272
002f64  1b410201  srli r2, r4, 16
002f68  1b011100  andi r2, r2, 1
002f6c  0b112210  add.s r2, r4, r2
002f70  0b111110  add.s r2, r2, r1
002f74  17019101  and r2, r2, r25
002f78  5bdbffff  j -296
002f7c  00380002  core_id r16
002f80  00200100  mfence { sm }
002f84  63013fff  loadli.w r2,  -104(r30)
002f88  bb280102  bneq r2, zero, 1576
002f8c  1f510000  addli r2, zero, 5
002f90  bb002804  bneq r16, r2, 2080
002f94  63024fff  loadli.w r4,  -96(r30)
002f98  1f012000  addli r2, zero, 16
002f9c  13012204  setlt.u r2, r4, r2
002fa0  e70c2ffe  storeli.w r2, -56(r30)
002fa4  1f01a000  addli r2, zero, 80
002fa8  3d000000  xfence
002fac  33030128  zext_int2long r[7:8], r2
002fb0  00a00300  mfence { lm, sm, gm }
002fb4  db030000  j 28
002fb8  6b538ffd  load.d r[7:8], -40(r30)
002fbc  6b540ffd  load.d r[9:10], -48(r30)
002fc0  9f770000  addli r15, zero, 7
002fc4  13216404  setlt.ul r2, r[9:10], r[7:8]
002fc8  27130400  addli.d r[7:8], r[9:10], 1
002fcc  b7760100  beq r2, zero, 444
002fd0  1f710000  addli r2, zero, 7
002fd4  73386ffc  store.d r[7:8], -48(r30)
002fd8  97372302  sll.d r[16:17], r[7:8], r2
002fdc  63019fff  loadli.w r2,  -56(r30)
002fe0  b7510100  beq r2, zero, 116
002fe4  33030028  zext_int2long r[7:8], zero
002fe8  5b060000  j 48
002fec  1b420401  srli r4, r8, 16
002ff0  1b021200  andi r4, r4, 1
002ff4  0b124410  add.s r4, r8, r4
002ff8  0b121210  add.s r4, r4, r1
002ffc  17029201  and r4, r4, r25
003000  6b548fff  load.d r[9:10], -8(r30)
003004  0b112d10  add.s r2, r26, r2
003008  73604100  stores.w r4, 0(r2)
00300c  13248304  setlt.ul r8, r[7:8], r[9:10]
003010  27130300  addli.d r[7:8], r[7:8], 1
003014  b71e04fe  beq r8, zero, -92
003018  0b24f310  add.ul r[9:10], r[7:8], r[16:17]
00301c  1b312400  slli r2, r8, 2
003020  0b122c10  add.s r4, r24, r2
003024  6f440200  loads.w r8, 0(r4)
003028  9704c401  and r9, r8, r28
00302c  13829d04  setlt.u r4, r27, r9
003030  3b500200  bneq r4, zero, 20
003034  1f020400  addli r4, r8, 0
003038  93849104  setlt.u r9, r3, r9
00303c  3b9f04fe  bneq r9, zero, -60
003040  dbf5ffff  j -84
003044  17125400  or r4, r8, r5
003048  93849104  setlt.u r9, r3, r9
00304c  bbde04fe  bneq r9, zero, -76
003050  dbf3ffff  j -100
003054  b3080028  zext_int2long r[18:19], zero
003058  db040000  j 36
00305c  a7c80800  addli.d r[18:19], r[18:19], 4
003060  0b139d10  add.s r6, r26, r9
003064  13a2d800  seteq.d r4, r[18:19], r[14:15]
003068  73662300  stores.w r2, 12(r6)
00306c  73645301  stores.w r21, 8(r6)
003070  73627300  stores.w r7, 4(r6)
003074  7360c300  stores.w r12, 0(r6)
003078  3b0d02fe  bneq r4, zero, -192
00307c  0ba3f810  add.ul r[7:8], r[18:19], r[16:17]
003080  9b342300  slli r9, r6, 2
003084  0b149c10  add.s r8, r24, r9
003088  6f42c400  loads.w r4, 12(r8)
00308c  9709c201  and r19, r4, r28
003090  13813d05  setlt.u r2, r27, r19
003094  3b300100  bneq r2, zero, 12
003098  1f010200  addli r2, r4, 0
00309c  5b010000  j 8
0030a0  17115200  or r2, r4, r5
0030a4  ef4b8400  loads.w r23, 8(r8)
0030a8  1783cb01  and r6, r23, r28
0030ac  93836d04  setlt.u r7, r27, r6
0030b0  3bb00300  bneq r7, zero, 12
0030b4  9f8a0b00  addli r21, r23, 0
0030b8  5b010000  j 8
0030bc  979a5b00  or r21, r23, r5
0030c0  6f4b4400  loads.w r22, 4(r8)
0030c4  170acb01  and r20, r22, r28
0030c8  93834d05  setlt.u r7, r27, r20
0030cc  3bb00300  bneq r7, zero, 12
0030d0  9f030b00  addli r7, r22, 0
0030d4  5b010000  j 8
0030d8  97135b00  or r7, r22, r5
0030dc  6f440400  loads.w r8, 0(r8)
0030e0  1705c401  and r10, r8, r28
0030e4  9385ad04  setlt.u r11, r27, r10
0030e8  3bd00500  bneq r11, zero, 20
0030ec  1f060400  addli r12, r8, 0
0030f0  1385a104  setlt.u r10, r3, r10
0030f4  37500500  beq r10, zero, 20
0030f8  db040000  j 36
0030fc  17165400  or r12, r8, r5
003100  1385a104  setlt.u r10, r3, r10
003104  3b600500  bneq r10, zero, 24
003108  1b450401  srli r10, r8, 16
00310c  1b051500  andi r10, r10, 1
003110  0b14a410  add.s r8, r8, r10
003114  0b141410  add.s r8, r8, r1
003118  17069401  and r12, r8, r25
00311c  13844105  setlt.u r8, r3, r20
003120  bb300400  bneq r8, zero, 44
003124  9b430b01  srli r7, r22, 16
003128  9b831300  andi r7, r7, 1
00312c  8b137b10  add.s r7, r22, r7
003130  8b931310  add.s r7, r7, r1
003134  97839301  and r7, r7, r25
003138  13836104  setlt.u r6, r3, r6
00313c  37600300  beq r6, zero, 24
003140  13833105  setlt.u r6, r3, r19
003144  3b6c03fe  bneq r6, zero, -232
003148  5b050000  j 40
00314c  13836104  setlt.u r6, r3, r6
003150  bb4f03fe  bneq r6, zero, -16
003154  1bc30b01  srli r6, r23, 16
003158  1b031300  andi r6, r6, 1
00315c  0b936b10  add.s r6, r23, r6
003160  0b131310  add.s r6, r6, r1
003164  970a9301  and r21, r6, r25
003168  13833105  setlt.u r6, r3, r19
00316c  bb4b03fe  bneq r6, zero, -272
003170  1b410201  srli r2, r4, 16
003174  1b011100  andi r2, r2, 1
003178  0b112210  add.s r2, r4, r2
00317c  0b111110  add.s r2, r2, r1
003180  17019101  and r2, r2, r25
003184  5bdbffff  j -296
003188  00380002  core_id r16
00318c  00200100  mfence { sm }
003190  1f610000  addli r2, zero, 6
003194  b7182802  beq r16, r2, 1572
003198  63413fff  loadli.w r2,  -100(r30)
00319c  bb000104  bneq r2, zero, 2080
0031a0  db420100  j 2580
0031a4  63024fff  loadli.w r4,  -96(r30)
0031a8  1f012000  addli r2, zero, 16
0031ac  33030028  zext_int2long r[7:8], zero
0031b0  13012204  setlt.u r2, r4, r2
0031b4  674a2ffe  storeli.w r2, -92(r30)
0031b8  3d000000  xfence
0031bc  00a00300  mfence { lm, sm, gm }
0031c0  db030000  j 28
0031c4  6b530ffb  load.d r[7:8], -80(r30)
0031c8  6b548ffa  load.d r[9:10], -88(r30)
0031cc  9f770000  addli r15, zero, 7
0031d0  13216404  setlt.ul r2, r[9:10], r[7:8]
0031d4  27130400  addli.d r[7:8], r[9:10], 1
0031d8  b7660100  beq r2, zero, 440
0031dc  63414fff  loadli.w r2,  -92(r30)
0031e0  1734f302  sll.d r[9:10], r[7:8], r15
0031e4  73346ffa  store.d r[7:8], -88(r30)
0031e8  b7510100  beq r2, zero, 116
0031ec  33030028  zext_int2long r[7:8], zero
0031f0  5b060000  j 48
0031f4  1b420601  srli r4, r12, 16
0031f8  1b021200  andi r4, r4, 1
0031fc  0b124610  add.s r4, r12, r4
003200  0b121210  add.s r4, r4, r1
003204  17029201  and r4, r4, r25
003208  6b558fff  load.d r[11:12], -8(r30)
00320c  0b112d10  add.s r2, r26, r2
003210  73604100  stores.w r4, 0(r2)
003214  1325a304  setlt.ul r10, r[7:8], r[11:12]
003218  27130300  addli.d r[7:8], r[7:8], 1
00321c  b72e05fe  beq r10, zero, -88
003220  0b258310  add.ul r[11:12], r[7:8], r[9:10]
003224  1b312500  slli r2, r10, 2
003228  0b122c10  add.s r4, r24, r2
00322c  6f460200  loads.w r12, 0(r4)
003230  1705c601  and r10, r12, r28
003234  1382ad04  setlt.u r4, r27, r10
003238  3b500200  bneq r4, zero, 20
00323c  1f020600  addli r4, r12, 0
003240  1385a104  setlt.u r10, r3, r10
003244  3b1f05fe  bneq r10, zero, -60
003248  dbf5ffff  j -84
00324c  17125600  or r4, r12, r5
003250  1385a104  setlt.u r10, r3, r10
003254  bb5e05fe  bneq r10, zero, -76
003258  dbf3ffff  j -100
00325c  b3070028  zext_int2long r[16:17], zero
003260  db040000  j 36
003264  a7c70700  addli.d r[16:17], r[16:17], 4
003268  0b133d11  add.s r6, r26, r19
00326c  13a1d700  seteq.d r2, r[16:17], r[14:15]
003270  73664300  stores.w r4, 12(r6)
003274  73647300  stores.w r7, 8(r6)
003278  73626301  stores.w r22, 4(r6)
00327c  7360c300  stores.w r12, 0(r6)
003280  3b1d01fe  bneq r2, zero, -188
003284  0ba38710  add.ul r[7:8], r[16:17], r[9:10]
003288  9b392300  slli r19, r6, 2
00328c  0b163c11  add.s r12, r24, r19
003290  6f41c600  loads.w r2, 12(r12)
003294  1703c101  and r6, r2, r28
003298  13826d04  setlt.u r4, r27, r6
00329c  3b300200  bneq r4, zero, 12
0032a0  1f020100  addli r4, r2, 0
0032a4  5b010000  j 8
0032a8  17125100  or r4, r2, r5
0032ac  6f498600  loads.w r18, 8(r12)
0032b0  970ac901  and r21, r18, r28
0032b4  93835d05  setlt.u r7, r27, r21
0032b8  3bb00300  bneq r7, zero, 12
0032bc  9f030900  addli r7, r18, 0
0032c0  5b010000  j 8
0032c4  97135900  or r7, r18, r5
0032c8  ef484600  loads.w r17, 4(r12)
0032cc  978bc801  and r23, r17, r28
0032d0  13857d05  setlt.u r10, r27, r23
0032d4  3b300500  bneq r10, zero, 12
0032d8  1f8b0800  addli r22, r17, 0
0032dc  5b010000  j 8
0032e0  179b5800  or r22, r17, r5
0032e4  6f4a0600  loads.w r20, 0(r12)
0032e8  1705ca01  and r10, r20, r28
0032ec  9385ad04  setlt.u r11, r27, r10
0032f0  3bd00500  bneq r11, zero, 20
0032f4  1f060a00  addli r12, r20, 0
0032f8  1385a104  setlt.u r10, r3, r10
0032fc  37500500  beq r10, zero, 20
003300  db040000  j 36
003304  17165a00  or r12, r20, r5
003308  1385a104  setlt.u r10, r3, r10
00330c  3b600500  bneq r10, zero, 24
003310  1b450a01  srli r10, r20, 16
003314  1b051500  andi r10, r10, 1
003318  0b15aa10  add.s r10, r20, r10
00331c  0b151510  add.s r10, r10, r1
003320  17069501  and r12, r10, r25
003324  13857105  setlt.u r10, r3, r23
003328  bb300500  bneq r10, zero, 44
00332c  1bc50801  srli r10, r17, 16
003330  1b051500  andi r10, r10, 1
003334  0b95a810  add.s r10, r17, r10
003338  0b151510  add.s r10, r10, r1
00333c  170b9501  and r22, r10, r25
003340  13855105  setlt.u r10, r3, r21
003344  37600500  beq r10, zero, 24
003348  13836104  setlt.u r6, r3, r6
00334c  3b6c03fe  bneq r6, zero, -232
003350  5b050000  j 40
003354  13855105  setlt.u r10, r3, r21
003358  bb4f05fe  bneq r10, zero, -16
00335c  9b430901  srli r7, r18, 16
003360  9b831300  andi r7, r7, 1
003364  8b137910  add.s r7, r18, r7
003368  8b931310  add.s r7, r7, r1
00336c  97839301  and r7, r7, r25
003370  13836104  setlt.u r6, r3, r6
003374  bb4b03fe  bneq r6, zero, -272
003378  1b420101  srli r4, r2, 16
00337c  1b021200  andi r4, r4, 1
003380  0b114110  add.s r2, r2, r4
003384  0b111110  add.s r2, r2, r1
003388  17029101  and r4, r2, r25
00338c  5bdbffff  j -296
003390  00380002  core_id r16
003394  00200100  mfence { sm }
003398  1f110000  addli r2, zero, 1
00339c  b73f28fa  beq r16, r2, -2068
0033a0  63412fff  loadli.w r2,  -108(r30)
0033a4  b70701fc  beq r2, zero, -1568
0033a8  63024fff  loadli.w r4,  -96(r30)
0033ac  1f012000  addli r2, zero, 16
0033b0  13012204  setlt.u r2, r4, r2
0033b4  670b2ffe  storeli.w r2, -80(r30)
0033b8  1f014000  addli r2, zero, 32
0033bc  3d000000  xfence
0033c0  33030128  zext_int2long r[7:8], r2
0033c4  00a00300  mfence { lm, sm, gm }
0033c8  db030000  j 28
0033cc  6b530ffc  load.d r[7:8], -64(r30)
0033d0  6b548ffb  load.d r[9:10], -72(r30)
0033d4  9f770000  addli r15, zero, 7
0033d8  13216404  setlt.ul r2, r[9:10], r[7:8]
0033dc  27130400  addli.d r[7:8], r[9:10], 1
0033e0  b7660100  beq r2, zero, 440
0033e4  63016fff  loadli.w r2,  -80(r30)
0033e8  1734f302  sll.d r[9:10], r[7:8], r15
0033ec  733c6ffa  store.d r[7:8], -72(r30)
0033f0  b7510100  beq r2, zero, 116
0033f4  33030028  zext_int2long r[7:8], zero
0033f8  5b060000  j 48
0033fc  1b420601  srli r4, r12, 16
003400  1b021200  andi r4, r4, 1
003404  0b124610  add.s r4, r12, r4
003408  0b121210  add.s r4, r4, r1
00340c  17029201  and r4, r4, r25
003410  6b558fff  load.d r[11:12], -8(r30)
003414  0b112d10  add.s r2, r26, r2
003418  73604100  stores.w r4, 0(r2)
00341c  1325a304  setlt.ul r10, r[7:8], r[11:12]
003420  27130300  addli.d r[7:8], r[7:8], 1
003424  b72e05fe  beq r10, zero, -88
003428  0b258310  add.ul r[11:12], r[7:8], r[9:10]
00342c  1b312500  slli r2, r10, 2
003430  0b122c10  add.s r4, r24, r2
003434  6f460200  loads.w r12, 0(r4)
003438  1705c601  and r10, r12, r28
00343c  1382ad04  setlt.u r4, r27, r10
003440  3b500200  bneq r4, zero, 20
003444  1f020600  addli r4, r12, 0
003448  1385a104  setlt.u r10, r3, r10
00344c  3b1f05fe  bneq r10, zero, -60
003450  dbf5ffff  j -84
003454  17125600  or r4, r12, r5
003458  1385a104  setlt.u r10, r3, r10
00345c  bb5e05fe  bneq r10, zero, -76
003460  dbf3ffff  j -100
003464  b3070028  zext_int2long r[16:17], zero
003468  db040000  j 36
00346c  a7c70700  addli.d r[16:17], r[16:17], 4
003470  0b132d11  add.s r6, r26, r18
003474  13a2d700  seteq.d r4, r[16:17], r[14:15]
003478  73662300  stores.w r2, 12(r6)
00347c  73647300  stores.w r7, 8(r6)
003480  73625301  stores.w r21, 4(r6)
003484  7360c300  stores.w r12, 0(r6)
003488  3b1d02fe  bneq r4, zero, -188
00348c  0ba38710  add.ul r[7:8], r[16:17], r[9:10]
003490  1b392300  slli r18, r6, 2
003494  0b162c11  add.s r12, r24, r18
003498  6f42c600  loads.w r4, 12(r12)
00349c  1703c201  and r6, r4, r28
0034a0  13816d04  setlt.u r2, r27, r6
0034a4  3b300100  bneq r2, zero, 12
0034a8  1f010200  addli r2, r4, 0
0034ac  5b010000  j 8
0034b0  17115200  or r2, r4, r5
0034b4  ef4b8600  loads.w r23, 8(r12)
0034b8  9788cb01  and r17, r23, r28
0034bc  93831d05  setlt.u r7, r27, r17
0034c0  3bb00300  bneq r7, zero, 12
0034c4  9f830b00  addli r7, r23, 0
0034c8  5b010000  j 8
0034cc  97935b00  or r7, r23, r5
0034d0  ef494600  loads.w r19, 4(r12)
0034d4  178bc901  and r22, r19, r28
0034d8  13856d05  setlt.u r10, r27, r22
0034dc  3b300500  bneq r10, zero, 12
0034e0  9f8a0900  addli r21, r19, 0
0034e4  5b010000  j 8
0034e8  979a5900  or r21, r19, r5
0034ec  6f4a0600  loads.w r20, 0(r12)
0034f0  1705ca01  and r10, r20, r28
0034f4  9385ad04  setlt.u r11, r27, r10
0034f8  3bd00500  bneq r11, zero, 20
0034fc  1f060a00  addli r12, r20, 0
003500  1385a104  setlt.u r10, r3, r10
003504  37500500  beq r10, zero, 20
003508  db040000  j 36
00350c  17165a00  or r12, r20, r5
003510  1385a104  setlt.u r10, r3, r10
003514  3b600500  bneq r10, zero, 24
003518  1b450a01  srli r10, r20, 16
00351c  1b051500  andi r10, r10, 1
003520  0b15aa10  add.s r10, r20, r10
003524  0b151510  add.s r10, r10, r1
003528  17069501  and r12, r10, r25
00352c  13856105  setlt.u r10, r3, r22
003530  bb300500  bneq r10, zero, 44
003534  1bc50901  srli r10, r19, 16
003538  1b051500  andi r10, r10, 1
00353c  0b95a910  add.s r10, r19, r10
003540  0b151510  add.s r10, r10, r1
003544  970a9501  and r21, r10, r25
003548  13851105  setlt.u r10, r3, r17
00354c  37600500  beq r10, zero, 24
003550  13836104  setlt.u r6, r3, r6
003554  3b6c03fe  bneq r6, zero, -232
003558  5b050000  j 40
00355c  13851105  setlt.u r10, r3, r17
003560  bb4f05fe  bneq r10, zero, -16
003564  9bc30b01  srli r7, r23, 16
003568  9b831300  andi r7, r7, 1
00356c  8b937b10  add.s r7, r23, r7
003570  8b931310  add.s r7, r7, r1
003574  97839301  and r7, r7, r25
003578  13836104  setlt.u r6, r3, r6
00357c  bb4b03fe  bneq r6, zero, -272
003580  1b410201  srli r2, r4, 16
003584  1b011100  andi r2, r2, 1
003588  0b112210  add.s r2, r4, r2
00358c  0b111110  add.s r2, r2, r1
003590  17019101  and r2, r2, r25
003594  5bdbffff  j -296
003598  00380002  core_id r16
00359c  00200100  mfence { sm }
0035a0  1f310000  addli r2, zero, 3
0035a4  b72f28fa  beq r16, r2, -2072
0035a8  63013fff  loadli.w r2,  -104(r30)
0035ac  b70701fc  beq r2, zero, -1568
0035b0  63024fff  loadli.w r4,  -96(r30)
0035b4  1f012000  addli r2, zero, 16
0035b8  13012204  setlt.u r2, r4, r2
0035bc  670c2ffe  storeli.w r2, -64(r30)
0035c0  1f018000  addli r2, zero, 64
0035c4  3d000000  xfence
0035c8  33030128  zext_int2long r[7:8], r2
0035cc  00a00300  mfence { lm, sm, gm }
0035d0  db030000  j 28
0035d4  6b530ffd  load.d r[7:8], -48(r30)
0035d8  6b548ffc  load.d r[9:10], -56(r30)
0035dc  9f770000  addli r15, zero, 7
0035e0  13216404  setlt.ul r2, r[9:10], r[7:8]
0035e4  27130400  addli.d r[7:8], r[9:10], 1
0035e8  b7660100  beq r2, zero, 440
0035ec  63018fff  loadli.w r2,  -64(r30)
0035f0  73346ffc  store.d r[7:8], -56(r30)
0035f4  9733f302  sll.d r[8:9], r[7:8], r15
0035f8  b7510100  beq r2, zero, 116
0035fc  b3070028  zext_int2long r[16:17], zero
003600  5b060000  j 48
003604  1b420301  srli r4, r6, 16
003608  1b021200  andi r4, r4, 1
00360c  0b124310  add.s r4, r6, r4
003610  0b121210  add.s r4, r4, r1
003614  17029201  and r4, r4, r25
003618  eb548fff  load.d r[10:11], -8(r30)
00361c  0b112d10  add.s r2, r26, r2
003620  73604100  stores.w r4, 0(r2)
003624  13a39704  setlt.ul r6, r[16:17], r[10:11]
003628  a7970700  addli.d r[16:17], r[16:17], 1
00362c  b72e03fe  beq r6, zero, -88
003630  8ba47710  add.ul r[10:11], r[16:17], r[8:9]
003634  1bb12400  slli r2, r9, 2
003638  0b122c10  add.s r4, r24, r2
00363c  6f430200  loads.w r6, 0(r4)
003640  9704c301  and r9, r6, r28
003644  13829d04  setlt.u r4, r27, r9
003648  3b500200  bneq r4, zero, 20
00364c  1f020300  addli r4, r6, 0
003650  93849104  setlt.u r9, r3, r9
003654  3b9f04fe  bneq r9, zero, -60
003658  dbf5ffff  j -84
00365c  17125300  or r4, r6, r5
003660  93849104  setlt.u r9, r3, r9
003664  bbde04fe  bneq r9, zero, -76
003668  dbf3ffff  j -100
00366c  b3080028  zext_int2long r[18:19], zero
003670  db040000  j 36
003674  a7c80800  addli.d r[18:19], r[18:19], 4
003678  0b139d10  add.s r6, r26, r9
00367c  13a2d800  seteq.d r4, r[18:19], r[14:15]
003680  73662300  stores.w r2, 12(r6)
003684  73645301  stores.w r21, 8(r6)
003688  7362f300  stores.w r15, 4(r6)
00368c  7360c300  stores.w r12, 0(r6)
003690  3b1d02fe  bneq r4, zero, -188
003694  8ba47810  add.ul r[10:11], r[18:19], r[8:9]
003698  9bb42400  slli r9, r9, 2
00369c  0b169c10  add.s r12, r24, r9
0036a0  6f42c600  loads.w r4, 12(r12)
0036a4  9709c201  and r19, r4, r28
0036a8  13813d05  setlt.u r2, r27, r19
0036ac  3b300100  bneq r2, zero, 12
0036b0  1f010200  addli r2, r4, 0
0036b4  5b010000  j 8
0036b8  17115200  or r2, r4, r5
0036bc  ef4b8600  loads.w r23, 8(r12)
0036c0  1783cb01  and r6, r23, r28
0036c4  13856d04  setlt.u r10, r27, r6
0036c8  3b300500  bneq r10, zero, 12
0036cc  9f8a0b00  addli r21, r23, 0
0036d0  5b010000  j 8
0036d4  979a5b00  or r21, r23, r5
0036d8  6f4b4600  loads.w r22, 4(r12)
0036dc  1708cb01  and r16, r22, r28
0036e0  13850d05  setlt.u r10, r27, r16
0036e4  3b300500  bneq r10, zero, 12
0036e8  9f070b00  addli r15, r22, 0
0036ec  5b010000  j 8
0036f0  97175b00  or r15, r22, r5
0036f4  6f4a0600  loads.w r20, 0(r12)
0036f8  1705ca01  and r10, r20, r28
0036fc  9385ad04  setlt.u r11, r27, r10
003700  3bd00500  bneq r11, zero, 20
003704  1f060a00  addli r12, r20, 0
003708  1385a104  setlt.u r10, r3, r10
00370c  37500500  beq r10, zero, 20
003710  db040000  j 36
003714  17165a00  or r12, r20, r5
003718  1385a104  setlt.u r10, r3, r10
00371c  3b600500  bneq r10, zero, 24
003720  1b450a01  srli r10, r20, 16
003724  1b051500  andi r10, r10, 1
003728  0b15aa10  add.s r10, r20, r10
00372c  0b151510  add.s r10, r10, r1
003730  17069501  and r12, r10, r25
003734  13850105  setlt.u r10, r3, r16
003738  bb300500  bneq r10, zero, 44
00373c  1b450b01  srli r10, r22, 16
003740  1b051500  andi r10, r10, 1
003744  0b15ab10  add.s r10, r22, r10
003748  0b151510  add.s r10, r10, r1
00374c  97079501  and r15, r10, r25
003750  13836104  setlt.u r6, r3, r6
003754  37600300  beq r6, zero, 24
003758  13833105  setlt.u r6, r3, r19
00375c  3b6c03fe  bneq r6, zero, -232
003760  5b050000  j 40
003764  13836104  setlt.u r6, r3, r6
003768  bb4f03fe  bneq r6, zero, -16
00376c  1bc30b01  srli r6, r23, 16
003770  1b031300  andi r6, r6, 1
003774  0b936b10  add.s r6, r23, r6
003778  0b131310  add.s r6, r6, r1
00377c  970a9301  and r21, r6, r25
003780  13833105  setlt.u r6, r3, r19
003784  bb4b03fe  bneq r6, zero, -272
003788  1b410201  srli r2, r4, 16
00378c  1b011100  andi r2, r2, 1
003790  0b112210  add.s r2, r4, r2
003794  0b111110  add.s r2, r2, r1
003798  17019101  and r2, r2, r25
00379c  5bdbffff  j -296
0037a0  00380002  core_id r16
0037a4  00200100  mfence { sm }
0037a8  1f510000  addli r2, zero, 5
0037ac  b72f28fa  beq r16, r2, -2072
0037b0  1f610000  addli r2, zero, 6
0037b4  bb1728fc  bneq r16, r2, -1564
0037b8  63024fff  loadli.w r4,  -96(r30)
0037bc  1f012000  addli r2, zero, 16
0037c0  13012204  setlt.u r2, r4, r2
0037c4  670d2ffe  storeli.w r2, -48(r30)
0037c8  1f01c000  addli r2, zero, 96
0037cc  3d000000  xfence
0037d0  33030128  zext_int2long r[7:8], r2
0037d4  00a00300  mfence { lm, sm, gm }
0037d8  db030000  j 28
0037dc  6b530ffe  load.d r[7:8], -32(r30)
0037e0  6b548ffd  load.d r[9:10], -40(r30)
0037e4  9f770000  addli r15, zero, 7
0037e8  13216404  setlt.ul r2, r[9:10], r[7:8]
0037ec  27130400  addli.d r[7:8], r[9:10], 1
0037f0  b7760100  beq r2, zero, 444
0037f4  1f710000  addli r2, zero, 7
0037f8  733c6ffc  store.d r[7:8], -40(r30)
0037fc  97372302  sll.d r[16:17], r[7:8], r2
003800  6301afff  loadli.w r2,  -48(r30)
003804  b7510100  beq r2, zero, 116
003808  33030028  zext_int2long r[7:8], zero
00380c  5b060000  j 48
003810  1b420401  srli r4, r8, 16
003814  1b021200  andi r4, r4, 1
003818  0b124410  add.s r4, r8, r4
00381c  0b121210  add.s r4, r4, r1
003820  17029201  and r4, r4, r25
003824  6b548fff  load.d r[9:10], -8(r30)
003828  0b112d10  add.s r2, r26, r2
00382c  73604100  stores.w r4, 0(r2)
003830  13248304  setlt.ul r8, r[7:8], r[9:10]
003834  27130300  addli.d r[7:8], r[7:8], 1
003838  b71e04fe  beq r8, zero, -92
00383c  0b24f310  add.ul r[9:10], r[7:8], r[16:17]
003840  1b312400  slli r2, r8, 2
003844  0b122c10  add.s r4, r24, r2
003848  6f440200  loads.w r8, 0(r4)
00384c  9704c401  and r9, r8, r28
003850  13829d04  setlt.u r4, r27, r9
003854  3b500200  bneq r4, zero, 20
003858  1f020400  addli r4, r8, 0
00385c  93849104  setlt.u r9, r3, r9
003860  3b9f04fe  bneq r9, zero, -60
003864  dbf5ffff  j -84
003868  17125400  or r4, r8, r5
00386c  93849104  setlt.u r9, r3, r9
003870  bbde04fe  bneq r9, zero, -76
003874  dbf3ffff  j -100
003878  b3080028  zext_int2long r[18:19], zero
00387c  db040000  j 36
003880  a7c80800  addli.d r[18:19], r[18:19], 4
003884  0b139d10  add.s r6, r26, r9
003888  13a2d800  seteq.d r4, r[18:19], r[14:15]
00388c  73662300  stores.w r2, 12(r6)
003890  73645301  stores.w r21, 8(r6)
003894  73627300  stores.w r7, 4(r6)
003898  7360c300  stores.w r12, 0(r6)
00389c  3b0d02fe  bneq r4, zero, -192
0038a0  0ba3f810  add.ul r[7:8], r[18:19], r[16:17]
0038a4  9b342300  slli r9, r6, 2
0038a8  0b149c10  add.s r8, r24, r9
0038ac  6f42c400  loads.w r4, 12(r8)
0038b0  9709c201  and r19, r4, r28
0038b4  13813d05  setlt.u r2, r27, r19
0038b8  3b300100  bneq r2, zero, 12
0038bc  1f010200  addli r2, r4, 0
0038c0  5b010000  j 8
0038c4  17115200  or r2, r4, r5
0038c8  ef4b8400  loads.w r23, 8(r8)
0038cc  1783cb01  and r6, r23, r28
0038d0  93836d04  setlt.u r7, r27, r6
0038d4  3bb00300  bneq r7, zero, 12
0038d8  9f8a0b00  addli r21, r23, 0
0038dc  5b010000  j 8
0038e0  979a5b00  or r21, r23, r5
0038e4  6f4b4400  loads.w r22, 4(r8)
0038e8  170acb01  and r20, r22, r28
0038ec  93834d05  setlt.u r7, r27, r20
0038f0  3bb00300  bneq r7, zero, 12
0038f4  9f030b00  addli r7, r22, 0
0038f8  5b010000  j 8
0038fc  97135b00  or r7, r22, r5
003900  6f440400  loads.w r8, 0(r8)
003904  1705c401  and r10, r8, r28
003908  9385ad04  setlt.u r11, r27, r10
00390c  3bd00500  bneq r11, zero, 20
003910  1f060400  addli r12, r8, 0
003914  1385a104  setlt.u r10, r3, r10
003918  37500500  beq r10, zero, 20
00391c  db040000  j 36
003920  17165400  or r12, r8, r5
003924  1385a104  setlt.u r10, r3, r10
003928  3b600500  bneq r10, zero, 24
00392c  1b450401  srli r10, r8, 16
003930  1b051500  andi r10, r10, 1
003934  0b14a410  add.s r8, r8, r10
003938  0b141410  add.s r8, r8, r1
00393c  17069401  and r12, r8, r25
003940  13844105  setlt.u r8, r3, r20
003944  bb300400  bneq r8, zero, 44
003948  9b430b01  srli r7, r22, 16
00394c  9b831300  andi r7, r7, 1
003950  8b137b10  add.s r7, r22, r7
003954  8b931310  add.s r7, r7, r1
003958  97839301  and r7, r7, r25
00395c  13836104  setlt.u r6, r3, r6
003960  37600300  beq r6, zero, 24
003964  13833105  setlt.u r6, r3, r19
003968  3b6c03fe  bneq r6, zero, -232
00396c  5b050000  j 40
003970  13836104  setlt.u r6, r3, r6
003974  bb4f03fe  bneq r6, zero, -16
003978  1bc30b01  srli r6, r23, 16
00397c  1b031300  andi r6, r6, 1
003980  0b936b10  add.s r6, r23, r6
003984  0b131310  add.s r6, r6, r1
003988  970a9301  and r21, r6, r25
00398c  13833105  setlt.u r6, r3, r19
003990  bb4b03fe  bneq r6, zero, -272
003994  1b410201  srli r2, r4, 16
003998  1b011100  andi r2, r2, 1
00399c  0b112210  add.s r2, r4, r2
0039a0  0b111110  add.s r2, r2, r1
0039a4  17019101  and r2, r2, r25
0039a8  5bdbffff  j -296
0039ac  00380002  core_id r16
0039b0  00200100  mfence { sm }
0039b4  63413fff  loadli.w r2,  -100(r30)
0039b8  b7770100  beq r2, zero, 508
0039bc  63024fff  loadli.w r4,  -96(r30)
0039c0  1f012000  addli r2, zero, 16
0039c4  13012204  setlt.u r2, r4, r2
0039c8  e70d2ffe  storeli.w r2, -40(r30)
0039cc  1f01e000  addli r2, zero, 112
0039d0  3d000000  xfence
0039d4  33030128  zext_int2long r[7:8], r2
0039d8  00a00300  mfence { lm, sm, gm }
0039dc  db030000  j 28
0039e0  6b538fff  load.d r[7:8], -8(r30)
0039e4  6b540ffe  load.d r[9:10], -32(r30)
0039e8  9f770000  addli r15, zero, 7
0039ec  13216404  setlt.ul r2, r[9:10], r[7:8]
0039f0  27130400  addli.d r[7:8], r[9:10], 1
0039f4  b7660100  beq r2, zero, 440
0039f8  6301bfff  loadli.w r2,  -40(r30)
0039fc  1734f302  sll.d r[9:10], r[7:8], r15
003a00  73306ffe  store.d r[7:8], -32(r30)
003a04  b7510100  beq r2, zero, 116
003a08  33030028  zext_int2long r[7:8], zero
003a0c  5b060000  j 48
003a10  1b420601  srli r4, r12, 16
003a14  1b021200  andi r4, r4, 1
003a18  0b124610  add.s r4, r12, r4
003a1c  0b121210  add.s r4, r4, r1
003a20  17029201  and r4, r4, r25
003a24  6b558fff  load.d r[11:12], -8(r30)
003a28  0b112d10  add.s r2, r26, r2
003a2c  73604100  stores.w r4, 0(r2)
003a30  1325a304  setlt.ul r10, r[7:8], r[11:12]
003a34  27130300  addli.d r[7:8], r[7:8], 1
003a38  b72e05fe  beq r10, zero, -88
003a3c  0b258310  add.ul r[11:12], r[7:8], r[9:10]
003a40  1b312500  slli r2, r10, 2
003a44  0b122c10  add.s r4, r24, r2
003a48  6f460200  loads.w r12, 0(r4)
003a4c  1705c601  and r10, r12, r28
003a50  1382ad04  setlt.u r4, r27, r10
003a54  3b500200  bneq r4, zero, 20
003a58  1f020600  addli r4, r12, 0
003a5c  1385a104  setlt.u r10, r3, r10
003a60  3b1f05fe  bneq r10, zero, -60
003a64  dbf5ffff  j -84
003a68  17125600  or r4, r12, r5
003a6c  1385a104  setlt.u r10, r3, r10
003a70  bb5e05fe  bneq r10, zero, -76
003a74  dbf3ffff  j -100
003a78  b3070028  zext_int2long r[16:17], zero
003a7c  db040000  j 36
003a80  a7c70700  addli.d r[16:17], r[16:17], 4
003a84  8b131d11  add.s r7, r26, r17
003a88  13a2d700  seteq.d r4, r[16:17], r[14:15]
003a8c  73e62300  stores.w r2, 12(r7)
003a90  73e45301  stores.w r21, 8(r7)
003a94  73e26300  stores.w r6, 4(r7)
003a98  73e0c300  stores.w r12, 0(r7)
003a9c  3b1d02fe  bneq r4, zero, -188
003aa0  0ba38710  add.ul r[7:8], r[16:17], r[9:10]
003aa4  9b382300  slli r17, r6, 2
003aa8  8b131c11  add.s r7, r24, r17
003aac  6fc9c300  loads.w r18, 12(r7)
003ab0  9709c901  and r19, r18, r28
003ab4  13813d05  setlt.u r2, r27, r19
003ab8  3b300100  bneq r2, zero, 12
003abc  1f010900  addli r2, r18, 0
003ac0  5b010000  j 8
003ac4  17115900  or r2, r18, r5
003ac8  efcb8300  loads.w r23, 8(r7)
003acc  1782cb01  and r4, r23, r28
003ad0  13834d04  setlt.u r6, r27, r4
003ad4  3b300300  bneq r6, zero, 12
003ad8  9f8a0b00  addli r21, r23, 0
003adc  5b010000  j 8
003ae0  979a5b00  or r21, r23, r5
003ae4  6fcb4300  loads.w r22, 4(r7)
003ae8  170acb01  and r20, r22, r28
003aec  13834d05  setlt.u r6, r27, r20
003af0  3b300300  bneq r6, zero, 12
003af4  1f030b00  addli r6, r22, 0
003af8  5b010000  j 8
003afc  17135b00  or r6, r22, r5
003b00  efc30300  loads.w r7, 0(r7)
003b04  1785c301  and r10, r7, r28
003b08  9385ad04  setlt.u r11, r27, r10
003b0c  3bd00500  bneq r11, zero, 20
003b10  1f860300  addli r12, r7, 0
003b14  1385a104  setlt.u r10, r3, r10
003b18  37500500  beq r10, zero, 20
003b1c  db040000  j 36
003b20  17965300  or r12, r7, r5
003b24  1385a104  setlt.u r10, r3, r10
003b28  3b600500  bneq r10, zero, 24
003b2c  1bc50301  srli r10, r7, 16
003b30  1b051500  andi r10, r10, 1
003b34  8b93a310  add.s r7, r7, r10
003b38  8b931310  add.s r7, r7, r1
003b3c  17869301  and r12, r7, r25
003b40  93834105  setlt.u r7, r3, r20
003b44  bbb00300  bneq r7, zero, 44
003b48  1b430b01  srli r6, r22, 16
003b4c  1b031300  andi r6, r6, 1
003b50  0b136b10  add.s r6, r22, r6
003b54  0b131310  add.s r6, r6, r1
003b58  17039301  and r6, r6, r25
003b5c  13824104  setlt.u r4, r3, r4
003b60  37600200  beq r4, zero, 24
003b64  13823105  setlt.u r4, r3, r19
003b68  3b6c02fe  bneq r4, zero, -232
003b6c  5b050000  j 40
003b70  13824104  setlt.u r4, r3, r4
003b74  bb4f02fe  bneq r4, zero, -16
003b78  1bc20b01  srli r4, r23, 16
003b7c  1b021200  andi r4, r4, 1
003b80  0b924b10  add.s r4, r23, r4
003b84  0b121210  add.s r4, r4, r1
003b88  970a9201  and r21, r4, r25
003b8c  13823105  setlt.u r4, r3, r19
003b90  bb4b02fe  bneq r4, zero, -272
003b94  1b410901  srli r2, r18, 16
003b98  1b011100  andi r2, r2, 1
003b9c  0b112910  add.s r2, r18, r2
003ba0  0b111110  add.s r2, r2, r1
003ba4  17019101  and r2, r2, r25
003ba8  5bdbffff  j -296
003bac  00380002  core_id r16
003bb0  00200100  mfence { sm }
003bb4  1f71f001  addli r2, zero, 255
003bb8  9f380000  addli r17, zero, 3
003bbc  80220104  csr_set csr5, r2
003bc0  00e00200  sync_core
003bc4  373d18e3  beq r16, r17, -14516
003bc8  1f090001  addli r18, zero, 128
003bcc  1f0b2000  addli r22, zero, 16
003bd0  1f0d1000  addli r26, zero, 8
003bd4  9f6a0000  addli r21, zero, 6
003bd8  9f1b0000  addli r23, zero, 1
003bdc  1f2c0000  addli r24, zero, 2
003be0  3b6d08e2  bneq r16, zero, -14504
003be4  6341dffe  loadli.w r2,  -148(r30)
003be8  6b530ff8  load.d r[7:8], -128(r30)
003bec  1f560000  addli r12, zero, 5
003bf0  1f322000  addli r4, zero, 19
003bf4  eb598f01  load.d r[20:21], 24(r30)
003bf8  1b317100  slli r2, r2, 7
003bfc  17334302  sll.d r[7:8], r[7:8], r4
003c00  33140128  sext_int2long r[9:10], r2
003c04  1f512000  addli r2, zero, 21
003c08  0ba36910  add.ul r[7:8], r[20:21], r[7:8]
003c0c  7d100100  xwait r2, 0
003c10  6b558ffe  load.d r[11:12], -24(r30)
003c14  1d000600  lock zero, r12
003c18  2b010600  lui r2, 96
003c1c  958b0b00  dma_cfg r23, r23, zero, 0
003c20  1b110164  ori r2, r2, 1600
003c24  0b35a440  min.sl r[11:12], r[9:10], r[11:12]
003c28  27050501  addli.d r[11:12], r[11:12], 128
003c2c  0b358548  max.sl r[11:12], r[11:12], r[9:10]
003c30  0b348518  sub.sl r[9:10], r[11:12], r[9:10]
003c34  6b558ff7  load.d r[11:12], -136(r30)
003c38  15800b02  dma_cfg zero, r23, zero, 1
003c3c  0b34d440  min.sl r[9:10], r[9:10], r[14:15]
003c40  0b23a310  add.ul r[7:8], r[7:8], r[11:12]
003c44  1f058000  addli r10, zero, 64
003c48  95030004  dma_cfg r7, zero, zero, 2
003c4c  6342efff  loadli.w r4,  -12(r30)
003c50  eb560ff7  load.d r[14:15], -144(r30)
003c54  0b112210  add.s r2, r4, r2
003c58  1ff23600  addli r4, r13, 31
003c5c  1503a106  dma_cfg r6, r2, r10, 3
003c60  1b415200  srli r2, r4, 5
003c64  1bb21600  slli r4, r13, 1
003c68  1f030020  addli r6, zero, 4096
003c6c  15052908  dma_cfg r10, r18, r2, 4
003c70  1b01e203  andi r2, r4, 62
003c74  1f020004  addli r4, zero, 512
003c78  1503820a  dma_cfg r6, r4, r8, 5
003c7c  15002010  dma_cfg zero, zero, r2, 8
003c80  35000000  dma_run zero
003c84  1500700b  dma_cfg zero, zero, r23, 5
003c88  1f612000  addli r2, zero, 22
003c8c  15000010  dma_cfg zero, zero, zero, 8
003c90  1d100600  unlock r12
003c94  5bd4f8ff  j -14688
003c98  7d000000  xsignal zero, 0
003c9c  bb600800  bneq r16, zero, 56
003ca0  9f200000  addli r1, zero, 2
003ca4  7d100000  xwait zero, 0
003ca8  7d100000  xwait zero, 0
003cac  7d100000  xwait zero, 0
003cb0  7d100000  xwait zero, 0
003cb4  7d100000  xwait zero, 0
003cb8  7d100000  xwait zero, 0
003cbc  7d100000  xwait zero, 0
003cc0  7d100000  xwait zero, 0
003cc4  1d800000  lock zero, r1
003cc8  0d000020  ew_cfg zero, zero, zero, 16
003ccc  1d900000  unlock r1
003cd0  7d400000  xsignal_mode_cfg zero
003cd4  9f8e9e01  addli sp, sp, 200
003cd8  00a00300  mfence { lm, sm, gm }
003cdc  00100000  exit
003ce0  00100000  exit
003ce4  00100000  exit
003ce8  00100000  exit
003cec  00100000  exit
003cf0  00100000  exit
003cf4  00100000  exit
003cf8  00100000  exit
003cfc  00100000  exit
003d00  00100000  exit
003d04  00100000  exit
003d08  00100000  exit
003d0c  00100000  exit
003d10  00100000  exit
003d14  00100000  exit
003d18  00100000  exit
003d1c  00100000  exit
003d20  00100000  exit
003d24  00100000  exit
003d28  00100000  exit
003d2c  00100000  exit
003d30  00100000  exit
003d34  00100000  exit
003d38  00100000  exit
003d3c  00100000  exit
003d40  00100000  exit
003d44  00100000  exit
003d48  00100000  exit
003d4c  00100000  exit
003d50  00100000  exit
003d54  00100000  exit
003d58  00100000  exit
003d5c  00100000  exit
003d60  00100000  exit
003d64  00100000  exit
003d68  00100000  exit
003d6c  00100000  exit
003d70  00100000  exit
003d74  00100000  exit
003d78  00100000  exit
003d7c  00100000  exit
003d80  00100000  exit
003d84  00100000  exit
003d88  00100000  exit
003d8c  00100000  exit
003d90  00100000  exit
003d94  00100000  exit
003d98  00100000  exit
003d9c  00100000  exit
003da0  00100000  exit
003da4  00100000  exit
003da8  00100000  exit
003dac  00100000  exit
003db0  00100000  exit
003db4  00100000  exit
003db8  00100000  exit
003dbc  00100000  exit
003dc0  00100000  exit
003dc4  00100000  exit
003dc8  00100000  exit
003dcc  00100000  exit
003dd0  00100000  exit
003dd4  00100000  exit
003dd8  00100000  exit
003ddc  00100000  exit
003de0  00100000  exit
003de4  00100000  exit
003de8  00100000  exit
003dec  00100000  exit
003df0  00100000  exit
003df4  00100000  exit
003df8  00100000  exit
003dfc  00100000  exit
003e00  00100000  exit
003e04  00100000  exit
003e08  00100000  exit
003e0c  00100000  exit
003e10  00100000  exit
003e14  00100000  exit
003e18  00100000  exit
003e1c  00100000  exit
003e20  00100000  exit
003e24  00100000  exit
003e28  00100000  exit
003e2c  00100000  exit
003e30  00100000  exit
003e34  00100000  exit
003e38  00100000  exit
003e3c  00100000  exit
003e40  00100000  exit
003e44  00100000  exit
003e48  00100000  exit
003e4c  00100000  exit
003e50  00100000  exit
003e54  00100000  exit
003e58  00100000  exit
003e5c  00100000  exit
003e60  00100000  exit
003e64  00100000  exit
003e68  00100000  exit
003e6c  00100000  exit
003e70  00100000  exit
003e74  00100000  exit
003e78  00100000  exit
003e7c  00100000  exit
003e80  00100000  exit
003e84  00100000  exit
003e88  00100000  exit
003e8c  00100000  exit
003e90  00100000  exit
003e94  00100000  exit
003e98  00100000  exit
003e9c  00100000  exit
003ea0  00100000  exit
003ea4  00100000  exit
003ea8  00100000  exit
003eac  00100000  exit
003eb0  00100000  exit
003eb4  00100000  exit
003eb8  00100000  exit
003ebc  00100000  exit
003ec0  00100000  exit
003ec4  00100000  exit
003ec8  00100000  exit
003ecc  00100000  exit
003ed0  00100000  exit
003ed4  00100000  exit
003ed8  00100000  exit
003edc  00100000  exit
003ee0  00100000  exit
003ee4  00100000  exit
003ee8  00100000  exit
003eec  00100000  exit
003ef0  00100000  exit
003ef4  00100000  exit
003ef8  00100000  exit
003efc  00100000  exit
003f00  00100000  exit
003f04  00100000  exit
003f08  00100000  exit
003f0c  00100000  exit
003f10  00100000  exit
003f14  00100000  exit
003f18  00100000  exit
003f1c  00100000  exit
