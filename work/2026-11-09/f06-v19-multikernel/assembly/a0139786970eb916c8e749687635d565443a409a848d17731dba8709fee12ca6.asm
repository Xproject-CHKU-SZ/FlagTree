; SHA-256 a0139786970eb916c8e749687635d565443a409a848d17731dba8709fee12ca6
; P800 SDNN · XTDK LLVM 19 · 650 / 650 words decoded
; bound names: triton_tem_fused_add_gelu_mm_0
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
0000b4  9f8e1eff  addli sp, sp, -120
0000b8  9f100000  addli r1, zero, 1
0000bc  803d0002  core_id r27
0000c0  1f8f7e00  addli r30, sp, 56
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7900d00  beq r27, zero, 36
0000cc  abf1ffff  lui r3, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b90f1ff  ori r1, r3, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  db240000  j 292
0000ec  9f220000  addli r5, zero, 2
0000f0  fdd00000  uni_sram_cfg r1, r1
0000f4  1f430000  addli r6, zero, 4
0000f8  eb510f02  load.d r[4:5], 32(r30)
0000fc  9f030020  addli r7, zero, 4096
000100  1d800200  lock zero, r5
000104  8d000020  ew_cfg r1, zero, zero, 16
000108  1d900200  unlock r5
00010c  1d000300  lock zero, r6
000110  15000000  dma_cfg zero, zero, zero, 0
000114  15000204  dma_cfg zero, r4, zero, 2
000118  15807106  dma_cfg zero, r3, r7, 3
00011c  9f014000  addli r3, zero, 32
000120  1f020008  addli r4, zero, 1024
000124  15001008  dma_cfg zero, zero, r1, 4
000128  35000000  dma_run zero
00012c  1d100300  unlock r6
000130  7d800000  xsignal r1, 0
000134  7d900000  xwait r1, 0
000138  1d000000  lock zero, zero
00013c  81020000  ds_cfg r5, zero, 0
000140  01000002  ds_cfg zero, zero, 1
000144  01000016  ds_cfg zero, zero, 11
000148  8101001a  ds_cfg r3, zero, 13
00014c  9f310000  addli r3, zero, 3
000150  0102001c  ds_cfg r4, zero, 14
000154  a1134008  shuffle_batch r7, zero, r4, 4
000158  1d100000  unlock zero
00015c  7d800000  xsignal r1, 0
000160  7d900000  xwait r1, 0
000164  1d800200  lock zero, r5
000168  ab100100  lui r1, 17
00016c  0da00300  ewtable_cfg r7, 0
000170  0da00002  ewtable_cfg r1, 1
000174  abf0ffff  lui r1, 1048575
000178  1d900200  unlock r5
00017c  7d000000  xsignal zero, 0
000180  7d100000  xwait zero, 0
000184  9b90f0ff  ori r1, r1, 4095
000188  80a10004  csr_set csr3, r1
00018c  9f500000  addli r1, zero, 5
000190  00d00100  sync_group
000194  7d800000  xsignal r1, 0
000198  7d800000  xsignal r1, 0
00019c  7d800000  xsignal r1, 0
0001a0  7d800100  xsignal r3, 0
0001a4  7d800100  xsignal r3, 0
0001a8  7d800100  xsignal r3, 0
0001ac  9f101000  addli r1, zero, 9
0001b0  9f710000  addli r3, zero, 7
0001b4  7d800000  xsignal r1, 0
0001b8  7d800000  xsignal r1, 0
0001bc  7d800000  xsignal r1, 0
0001c0  7d800100  xsignal r3, 0
0001c4  7d800100  xsignal r3, 0
0001c8  7d800100  xsignal r3, 0
0001cc  9f301000  addli r1, zero, 11
0001d0  9f611000  addli r3, zero, 14
0001d4  7d800000  xsignal r1, 0
0001d8  7d800000  xsignal r1, 0
0001dc  7d800000  xsignal r1, 0
0001e0  7d800100  xsignal r3, 0
0001e4  7d800100  xsignal r3, 0
0001e8  7d800100  xsignal r3, 0
0001ec  9f701000  addli r1, zero, 15
0001f0  9f012000  addli r3, zero, 16
0001f4  7d800000  xsignal r1, 0
0001f8  7d800000  xsignal r1, 0
0001fc  7d800000  xsignal r1, 0
000200  7d800100  xsignal r3, 0
000204  7d800100  xsignal r3, 0
000208  7d800100  xsignal r3, 0
00020c  e3005f00  loadli.w r1,  40(r30)
000210  e3415f00  loadli.w r3,  44(r30)
000214  80d20002  load_param_i r5, 1
000218  63026f00  loadli.w r4,  48(r30)
00021c  8b901120  mul.s r1, r3, r1
000220  9f810200  addli r3, r5, 0
000224  8b914050  fmac.s r3, r1, r4
000228  0b924020  mul.s r4, r1, r4
00022c  9ff1f1ff  addli r3, r3, -1
000230  8b915130  div.s r3, r3, r5
000234  80520002  load_param_i r5, 0
000238  8b905120  mul.s r1, r3, r5
00023c  8b915150  fmac.s r3, r3, r5
000240  e3026f00  loadli.w r5,  48(r30)
000244  8b914140  min.s r3, r3, r4
000248  4be51102  ble.s r3, r1, 1368
00024c  33910128  sext_int2long r[3:4], r3
000250  33930028  sext_int2long r[7:8], r1
000254  1f040001  addli r8, zero, 128
000258  1f0c2000  addli r24, zero, 16
00025c  9f660000  addli r13, zero, 6
000260  9f490000  addli r19, zero, 4
000264  9f280000  addli r17, zero, 2
000268  1f0e8000  addli r28, zero, 64
00026c  2b0d0100  lui r26, 16
000270  1f070000  addli r14, zero, 0
000274  733c2ffe  store.d r[3:4], -8(r30)
000278  1f71f01f  addli r2, zero, 4095
00027c  ab21373d  lui r3, 250738
000280  ab00feff  lui r1, 1048544
000284  73381ffe  store.d r[2:3], -16(r30)
000288  ab000600  lui r1, 96
00028c  9b900060  ori r1, r1, 1536
000290  e74e1ffe  storeli.w r1, -20(r30)
000294  ab000900  lui r1, 144
000298  9b900060  ori r1, r1, 1536
00029c  e70e1ffe  storeli.w r1, -24(r30)
0002a0  9b903171  ori r1, r3, 1811
0002a4  ab810300  lui r3, 56
0002a8  674e1ffe  storeli.w r1, -28(r30)
0002ac  ab404c3f  lui r1, 259268
0002b0  9b90a022  ori r1, r1, 554
0002b4  670e1ffe  storeli.w r1, -32(r30)
0002b8  9b903184  ori r1, r3, 2115
0002bc  e74d1ffe  storeli.w r1, -36(r30)
0002c0  db0b0000  j 92
0002c4  17b11403  sll.d r[3:4], r[10:11], r17
0002c8  eb540f01  load.d r[10:11], 16(r30)
0002cc  1f321000  addli r4, zero, 11
0002d0  7d100200  xwait r4, 0
0002d4  1d800900  lock zero, r19
0002d8  1bb22700  slli r4, r15, 2
0002dc  0ba12410  add.ul r[3:4], r[10:11], r[3:4]
0002e0  15000000  dma_cfg zero, zero, zero, 0
0002e4  15800104  dma_cfg zero, r3, zero, 2
0002e8  95004106  dma_cfg r1, r2, r4, 3
0002ec  9f100000  addli r1, zero, 1
0002f0  1f010004  addli r2, zero, 512
0002f4  15011108  dma_cfg r2, r2, r1, 4
0002f8  35000000  dma_run zero
0002fc  1d900900  unlock r19
000300  9f201000  addli r1, zero, 10
000304  7d800000  xsignal r1, 0
000308  eb508fff  load.d r[2:3], -8(r30)
00030c  27130300  addli.d r[7:8], r[7:8], 1
000310  1f170700  addli r14, r14, 1
000314  93301304  setlt.sl r1, r[7:8], r[2:3]
000318  37a20002  beq r1, zero, 1160
00031c  8b105330  div.s r1, r6, r5
000320  63415f00  loadli.w r2,  44(r30)
000324  8b902030  div.s r1, r1, r2
000328  1f011000  addli r2, zero, 8
00032c  8b918030  div.s r3, r1, r8
000330  1bb23100  slli r4, r3, 3
000334  9bb17100  slli r3, r3, 7
000338  8b144c18  sub.s r9, r24, r4
00033c  8b913018  sub.s r3, r1, r3
000340  8b942440  min.s r9, r9, r2
000344  1f310000  addli r2, zero, 3
000348  8b909038  mod.s r1, r1, r9
00034c  0b9a9130  div.s r20, r3, r9
000350  8b1b2738  mod.s r23, r14, r2
000354  0b191210  add.s r18, r4, r1
000358  b3040a28  zext_int2long r[10:11], r20
00035c  9f700000  addli r1, zero, 7
000360  9bbcfb00  slli r25, r23, 15
000364  97b41402  sll.d r[10:11], r[10:11], r1
000368  9f00000f  addli r1, zero, 1920
00036c  b3010928  zext_int2long r[4:5], r18
000370  b3850028  zext_int2long r[12:13], r1
000374  bb80dd00  bneq r27, r13, 32
000378  9f701000  addli r1, zero, 15
00037c  1f511000  addli r2, zero, 13
000380  93802005  setlt.u r1, r1, r18
000384  97b72102  sll.d r[16:17], r[4:5], r2
000388  3ba10000  bneq r1, zero, 72
00038c  b30a0028  zext_int2long r[22:23], zero
000390  5b090000  j 72
000394  3b951d01  bneq r27, r17, 324
000398  9f500000  addli r1, zero, 5
00039c  7d900800  xwait r17, 0
0003a0  7d900000  xwait r1, 0
0003a4  1d000000  lock zero, zero
0003a8  9f300000  addli r1, zero, 3
0003ac  81080000  ds_cfg r17, zero, 0
0003b0  010e0002  ds_cfg r28, zero, 1
0003b4  010e001c  ds_cfg r28, zero, 14
0003b8  0104001a  ds_cfg r8, zero, 13
0003bc  a19ccc03  shuffle_batch r25, r25, r28, 1
0003c0  1d100000  unlock zero
0003c4  7d800000  xsignal r1, 0
0003c8  7d800900  xsignal r19, 0
0003cc  db0b0000  j 92
0003d0  eb500fff  load.d r[2:3], -16(r30)
0003d4  978a1702  and.d r[22:23], r[16:17], r[2:3]
0003d8  8bb75719  sub.sl r[16:17], r[16:17], r[22:23]
0003dc  9f701000  addli r1, zero, 15
0003e0  97d7d702  sra.d r[16:17], r[16:17], r13
0003e4  8bbab740  min.sl r[22:23], r[16:17], r[12:13]
0003e8  8bb7fa18  sub.sl r[16:17], r[22:23], r[16:17]
0003ec  97ba1102  sll.d r[22:23], r[4:5], r1
0003f0  9f300000  addli r1, zero, 3
0003f4  7d900000  xwait r1, 0
0003f8  eb500f00  load.d r[2:3], 0(r30)
0003fc  1d800900  lock zero, r19
000400  15000000  dma_cfg zero, zero, zero, 0
000404  8baa5011  add.ul r[22:23], r[2:3], r[22:23]
000408  1f010002  addli r2, zero, 256
00040c  9f800701  addli r1, r15, 128
000410  15000b04  dma_cfg zero, r22, zero, 2
000414  958c2a06  dma_cfg r25, r21, r2, 3
000418  15011108  dma_cfg r2, r2, r1, 4
00041c  35000000  dma_run zero
000420  1d900900  unlock r19
000424  7d800800  xsignal r17, 0
000428  9b307a00  slli r1, r20, 7
00042c  b3870028  zext_int2long r[16:17], r1
000430  0baab740  min.ul r[21:22], r[16:17], r[12:13]
000434  270a0a01  addli.d r[21:22], r[21:22], 128
000438  8b20fa48  max.ul r[2:3], r[21:22], r[16:17]
00043c  b30a0428  zext_int2long r[22:23], r8
000440  1bba9b00  slli r20, r23, 9
000444  8bb0f018  sub.sl r[2:3], r[2:3], r[16:17]
000448  8ba75041  min.ul r[16:17], r[2:3], r[22:23]
00044c  ab000300  lui r1, 48
000450  8b101a10  add.s r1, r20, r1
000454  b7c9ddfe  beq r27, r13, -400
000458  2b010300  lui r2, 48
00045c  1bba0b01  slli r20, r23, 16
000460  1b110160  ori r2, r2, 1536
000464  8b1b2a10  add.s r23, r20, r2
000468  3ba33d01  bneq r27, r19, 200
00046c  9f001000  addli r1, zero, 8
000470  7d900900  xwait r19, 0
000474  1f020000  addli r4, zero, 0
000478  9f110000  addli r3, zero, 1
00047c  1f611000  addli r2, zero, 14
000480  7d900000  xwait r1, 0
000484  9f100000  addli r1, zero, 1
000488  7d100100  xwait r2, 0
00048c  1b31e200  slli r2, r4, 14
000490  1b328200  slli r4, r4, 8
000494  1d800000  lock zero, r1
000498  090e8e00  mm_cfg r28, r28, r8, 0
00049c  17119101  or r2, r2, r25
0004a0  17127201  or r4, r4, r23
0004a4  89891904  mm_cfg r19, r19, r1, 2
0004a8  29822c10  mm r4, r25, r2, 8
0004ac  1b811100  andi r2, r3, 1
0004b0  1f120000  addli r4, zero, 1
0004b4  9f010000  addli r3, zero, 0
0004b8  1d900000  unlock r1
0004bc  3b4f01fe  bneq r2, zero, -48
0004c0  9f500000  addli r1, zero, 5
0004c4  7d800000  xsignal r1, 0
0004c8  9f101000  addli r1, zero, 9
0004cc  7d800000  xsignal r1, 0
0004d0  9f401000  addli r1, zero, 12
0004d4  5bc6ffff  j -464
0004d8  ab800100  lui r1, 24
0004dc  1f710000  addli r2, zero, 7
0004e0  8b901c10  add.s r1, r25, r1
0004e4  378a2d00  beq r27, r2, 640
0004e8  1f110000  addli r2, zero, 1
0004ec  bbfc2dfe  bneq r27, r2, -196
0004f0  eb5a8f00  load.d r[22:23], 8(r30)
0004f4  97b71403  sll.d r[16:17], r[10:11], r17
0004f8  1f710000  addli r2, zero, 7
0004fc  7d100100  xwait r2, 0
000500  1d800900  lock zero, r19
000504  1f010004  addli r2, zero, 512
000508  8ba7fa10  add.ul r[16:17], r[22:23], r[16:17]
00050c  15000000  dma_cfg zero, zero, zero, 0
000510  15000804  dma_cfg zero, r16, zero, 2
000514  95802706  dma_cfg r1, r15, r2, 3
000518  9f000040  addli r1, zero, 8192
00051c  1581c009  dma_cfg r2, r1, r28, 4
000520  35000000  dma_run zero
000524  1d900900  unlock r19
000528  7d800600  xsignal r13, 0
00052c  dbdfffff  j -260
000530  1f510000  addli r2, zero, 5
000534  bb862d00  bneq r27, r2, 416
000538  1f211000  addli r2, zero, 10
00053c  9f010000  addli r3, zero, 0
000540  7d100100  xwait r2, 0
000544  1f411000  addli r2, zero, 12
000548  7d100100  xwait r2, 0
00054c  1d800800  lock zero, r17
000550  2b01803f  lui r2, 260096
000554  0d000002  ew_cfg zero, zero, zero, 1
000558  0d110100  ewcoeff_cfg r2, r2, zero, 0
00055c  1f71f000  addli r2, zero, 127
000560  0d000104  ew_cfg zero, r2, zero, 2
000564  1f110000  addli r2, zero, 1
000568  0d010006  ew_cfg r2, zero, zero, 3
00056c  0b913b10  add.s r2, r23, r3
000570  9f810104  addli r3, r3, 512
000574  2d011100  dsmadd r2, r2, r1, 0
000578  bbdfa1ff  bneq r3, r26, -12
00057c  9f301000  addli r1, zero, 11
000580  1f721000  addli r4, zero, 15
000584  1d900800  unlock r17
000588  2b06803f  lui r12, 260096
00058c  9f012000  addli r3, zero, 16
000590  1f0c2000  addli r24, zero, 16
000594  7d800000  xsignal r1, 0
000598  e340dfff  loadli.w r1,  -20(r30)
00059c  7d100200  xwait r4, 0
0005a0  1d800800  lock zero, r17
0005a4  0d000002  ew_cfg zero, zero, zero, 1
0005a8  0d10c000  ewcoeff_cfg zero, zero, r12, 0
0005ac  eb540fff  load.d r[10:11], -16(r30)
0005b0  8b101a10  add.s r1, r20, r1
0005b4  0d000504  ew_cfg zero, r10, zero, 2
0005b8  8d090006  ew_cfg r19, zero, zero, 3
0005bc  8d893927  ew_cfg r19, r19, r19, 19
0005c0  ad907b01  dsmul r1, r23, r23, 0
0005c4  0d000026  ew_cfg zero, zero, zero, 19
0005c8  1d900800  unlock r17
0005cc  1d800800  lock zero, r17
0005d0  0d000002  ew_cfg zero, zero, zero, 1
0005d4  0d10c000  ewcoeff_cfg zero, zero, r12, 0
0005d8  0d000504  ew_cfg zero, r10, zero, 2
0005dc  8d090006  ew_cfg r19, zero, zero, 3
0005e0  8d893927  ew_cfg r19, r19, r19, 19
0005e4  ad907001  dsmul r1, r1, r23, 0
0005e8  0d000026  ew_cfg zero, zero, zero, 19
0005ec  1d900800  unlock r17
0005f0  6301dfff  loadli.w r2,  -24(r30)
0005f4  7d900100  xwait r3, 0
0005f8  1d800800  lock zero, r17
0005fc  0d000002  ew_cfg zero, zero, zero, 1
000600  e345cfff  loadli.w r11,  -28(r30)
000604  0b112a10  add.s r2, r20, r2
000608  0d960500  ewcoeff_cfg r12, r11, zero, 0
00060c  0d000504  ew_cfg zero, r10, zero, 2
000610  8d090006  ew_cfg r19, zero, zero, 3
000614  8d893927  ew_cfg r19, r19, r19, 19
000618  2d811b00  dsmadd r2, r23, r1, 0
00061c  0d000026  ew_cfg zero, zero, zero, 19
000620  1d900800  unlock r17
000624  7d000200  xsignal r4, 0
000628  1d800800  lock zero, r17
00062c  0d000002  ew_cfg zero, zero, zero, 1
000630  e300cfff  loadli.w r1,  -32(r30)
000634  8d100000  ewcoeff_cfg r1, zero, zero, 0
000638  9f300000  addli r1, zero, 3
00063c  8d000014  ew_cfg r1, zero, zero, 10
000640  9f100000  addli r1, zero, 1
000644  6342bfff  loadli.w r4,  -36(r30)
000648  8d884016  ew_cfg r17, r1, r4, 11
00064c  abc07f41  lui r1, 268284
000650  0d00001a  ew_cfg zero, zero, zero, 13
000654  0d80191c  ew_cfg zero, r19, r1, 14
000658  ab00003f  lui r1, 258048
00065c  0d00001e  ew_cfg zero, zero, zero, 15
000660  0d000504  ew_cfg zero, r10, zero, 2
000664  8d090006  ew_cfg r19, zero, zero, 3
000668  8d890926  ew_cfg r19, r19, zero, 19
00066c  2d012100  dsmadd r2, r2, r2, 0
000670  0d000026  ew_cfg zero, zero, zero, 19
000674  0d000014  ew_cfg zero, zero, zero, 10
000678  1d900800  unlock r17
00067c  1d800800  lock zero, r17
000680  0d000002  ew_cfg zero, zero, zero, 1
000684  0d16c000  ewcoeff_cfg r12, zero, r12, 0
000688  0d000504  ew_cfg zero, r10, zero, 2
00068c  8d090006  ew_cfg r19, zero, zero, 3
000690  8d890926  ew_cfg r19, r19, zero, 19
000694  2d012100  dsmadd r2, r2, r2, 0
000698  0d000026  ew_cfg zero, zero, zero, 19
00069c  1d900800  unlock r17
0006a0  1d800800  lock zero, r17
0006a4  0d000002  ew_cfg zero, zero, zero, 1
0006a8  0d101000  ewcoeff_cfg zero, zero, r1, 0
0006ac  9f501000  addli r1, zero, 13
0006b0  0d000504  ew_cfg zero, r10, zero, 2
0006b4  8d090006  ew_cfg r19, zero, zero, 3
0006b8  8d893927  ew_cfg r19, r19, r19, 19
0006bc  ad9b2b00  dsmul r23, r23, r2, 0
0006c0  0d000026  ew_cfg zero, zero, zero, 19
0006c4  1d900800  unlock r17
0006c8  7d800000  xsignal r1, 0
0006cc  7d800100  xsignal r3, 0
0006d0  5b87ffff  j -968
0006d4  bbd00dfe  bneq r27, zero, -972
0006d8  1f412000  addli r2, zero, 20
0006dc  9b307900  slli r1, r18, 7
0006e0  1f590000  addli r18, zero, 5
0006e4  17b12102  sll.d r[3:4], r[4:5], r2
0006e8  33920028  sext_int2long r[5:6], r1
0006ec  73382ffc  store.d r[3:4], -48(r30)
0006f0  97b01403  sll.d r[2:3], r[10:11], r17
0006f4  8b35b240  min.sl r[12:13], r[5:6], r[12:13]
0006f8  73341ffc  store.d r[2:3], -56(r30)
0006fc  9f501000  addli r1, zero, 13
000700  a7850501  addli.d r[12:13], r[12:13], 128
000704  7d900000  xwait r1, 0
000708  1d000900  lock zero, r18
00070c  eb508f01  load.d r[2:3], 24(r30)
000710  8bb54548  max.sl r[12:13], r[12:13], r[5:6]
000714  eb540ffd  load.d r[10:11], -48(r30)
000718  8bb14518  sub.sl r[4:5], r[12:13], r[5:6]
00071c  9f120000  addli r5, zero, 1
000720  8ba09010  add.ul r[2:3], r[2:3], r[10:11]
000724  eb548ffc  load.d r[10:11], -56(r30)
000728  15000000  dma_cfg zero, zero, zero, 0
00072c  8bb15141  min.sl r[4:5], r[4:5], r[22:23]
000730  15800202  dma_cfg zero, r5, zero, 1
000734  9bb22700  slli r5, r15, 2
000738  8ba09010  add.ul r[2:3], r[2:3], r[10:11]
00073c  15010004  dma_cfg r2, zero, zero, 2
000740  95805b06  dma_cfg r1, r23, r5, 3
000744  9f000004  addli r1, zero, 512
000748  1f010040  addli r2, zero, 8192
00074c  e3026f00  loadli.w r5,  48(r30)
000750  15813008  dma_cfg r2, r1, r3, 4
000754  9f601000  addli r1, zero, 14
000758  35000000  dma_run zero
00075c  1d100900  unlock r18
000760  db74ffff  j -1116
000764  1f111000  addli r2, zero, 9
000768  7d900600  xwait r13, 0
00076c  7d100100  xwait r2, 0
000770  1d000000  lock zero, zero
000774  81080000  ds_cfg r17, zero, 0
000778  01040002  ds_cfg r8, zero, 1
00077c  010e001c  ds_cfg r28, zero, 14
000780  0104001a  ds_cfg r8, zero, 13
000784  c18cc005  shuffle_coa r25, r1, r28, 2
000788  9f700000  addli r1, zero, 7
00078c  1d100000  unlock zero
000790  7d800000  xsignal r1, 0
000794  9f001000  addli r1, zero, 8
000798  7d800000  xsignal r1, 0
00079c  db91ffff  j -884
0007a0  7d000000  xsignal zero, 0
0007a4  bbe00d00  bneq r27, zero, 56
0007a8  9f200000  addli r1, zero, 2
0007ac  7d100000  xwait zero, 0
0007b0  7d100000  xwait zero, 0
0007b4  7d100000  xwait zero, 0
0007b8  7d100000  xwait zero, 0
0007bc  7d100000  xwait zero, 0
0007c0  7d100000  xwait zero, 0
0007c4  7d100000  xwait zero, 0
0007c8  7d100000  xwait zero, 0
0007cc  1d800000  lock zero, r1
0007d0  0d000020  ew_cfg zero, zero, zero, 16
0007d4  1d900000  unlock r1
0007d8  7d400000  xsignal_mode_cfg zero
0007dc  9f8e7e00  addli sp, sp, 56
0007e0  00a00300  mfence { lm, sm, gm }
0007e4  00100000  exit
0007e8  00100000  exit
0007ec  00100000  exit
0007f0  00100000  exit
0007f4  00100000  exit
0007f8  00100000  exit
0007fc  00100000  exit
000800  00100000  exit
000804  00100000  exit
000808  00100000  exit
00080c  00100000  exit
000810  00100000  exit
000814  00100000  exit
000818  00100000  exit
00081c  00100000  exit
000820  00100000  exit
000824  00100000  exit
000828  00100000  exit
00082c  00100000  exit
000830  00100000  exit
000834  00100000  exit
000838  00100000  exit
00083c  00100000  exit
000840  00100000  exit
000844  00100000  exit
000848  00100000  exit
00084c  00100000  exit
000850  00100000  exit
000854  00100000  exit
000858  00100000  exit
00085c  00100000  exit
000860  00100000  exit
000864  00100000  exit
000868  00100000  exit
00086c  00100000  exit
000870  00100000  exit
000874  00100000  exit
000878  00100000  exit
00087c  00100000  exit
000880  00100000  exit
000884  00100000  exit
000888  00100000  exit
00088c  00100000  exit
000890  00100000  exit
000894  00100000  exit
000898  00100000  exit
00089c  00100000  exit
0008a0  00100000  exit
0008a4  00100000  exit
0008a8  00100000  exit
0008ac  00100000  exit
0008b0  00100000  exit
0008b4  00100000  exit
0008b8  00100000  exit
0008bc  00100000  exit
0008c0  00100000  exit
0008c4  00100000  exit
0008c8  00100000  exit
0008cc  00100000  exit
0008d0  00100000  exit
0008d4  00100000  exit
0008d8  00100000  exit
0008dc  00100000  exit
0008e0  00100000  exit
0008e4  00100000  exit
0008e8  00100000  exit
0008ec  00100000  exit
0008f0  00100000  exit
0008f4  00100000  exit
0008f8  00100000  exit
0008fc  00100000  exit
000900  00100000  exit
000904  00100000  exit
000908  00100000  exit
00090c  00100000  exit
000910  00100000  exit
000914  00100000  exit
000918  00100000  exit
00091c  00100000  exit
000920  00100000  exit
000924  00100000  exit
000928  00100000  exit
00092c  00100000  exit
000930  00100000  exit
000934  00100000  exit
000938  00100000  exit
00093c  00100000  exit
000940  00100000  exit
000944  00100000  exit
000948  00100000  exit
00094c  00100000  exit
000950  00100000  exit
000954  00100000  exit
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
