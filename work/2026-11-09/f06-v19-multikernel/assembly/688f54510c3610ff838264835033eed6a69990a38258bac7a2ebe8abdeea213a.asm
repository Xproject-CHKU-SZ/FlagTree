; SHA-256 688f54510c3610ff838264835033eed6a69990a38258bac7a2ebe8abdeea213a
; P800 SDNN · XTDK LLVM 19 · 567 / 567 words decoded
; bound names: triton_tem_fused_add_mm_silu_0
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
0000b4  9f8e3eff  addli sp, sp, -104
0000b8  9f100000  addli r1, zero, 1
0000bc  803d0002  core_id r27
0000c0  1f8f5e00  addli r30, sp, 40
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7900d00  beq r27, zero, 36
0000cc  abf1ffff  lui r3, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b90f1ff  ori r1, r3, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  db200000  j 260
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
0001ec  e3005f00  loadli.w r1,  40(r30)
0001f0  e3415f00  loadli.w r3,  44(r30)
0001f4  80d20002  load_param_i r5, 1
0001f8  63026f00  loadli.w r4,  48(r30)
0001fc  8b901120  mul.s r1, r3, r1
000200  9f810200  addli r3, r5, 0
000204  8b914050  fmac.s r3, r1, r4
000208  0b924020  mul.s r4, r1, r4
00020c  9ff1f1ff  addli r3, r3, -1
000210  8b915130  div.s r3, r3, r5
000214  80520002  load_param_i r5, 0
000218  8b905120  mul.s r1, r3, r5
00021c  8b915150  fmac.s r3, r3, r5
000220  8b914140  min.s r3, r3, r4
000224  cbc01102  ble.s r3, r1, 1072
000228  33910128  sext_int2long r[3:4], r3
00022c  33930028  sext_int2long r[7:8], r1
000230  1f040001  addli r8, zero, 128
000234  9f660000  addli r13, zero, 6
000238  9f490000  addli r19, zero, 4
00023c  9f2a0000  addli r21, zero, 2
000240  1f1b0000  addli r22, zero, 1
000244  1f0e8000  addli r28, zero, 64
000248  1f5a0000  addli r20, zero, 5
00024c  ab0b0100  lui r23, 16
000250  1f0d0000  addli r26, zero, 0
000254  733c2ffe  store.d r[3:4], -8(r30)
000258  1f71f01f  addli r2, zero, 4095
00025c  ab810200  lui r3, 40
000260  ab00feff  lui r1, 1048544
000264  73381ffe  store.d r[2:3], -16(r30)
000268  9b902184  ori r1, r3, 2114
00026c  e74e1ffe  storeli.w r1, -20(r30)
000270  e3006f00  loadli.w r1,  48(r30)
000274  8b111330  div.s r3, r6, r1
000278  e3405f00  loadli.w r1,  44(r30)
00027c  8b911130  div.s r3, r3, r1
000280  9f002000  addli r1, zero, 16
000284  0b928130  div.s r4, r3, r8
000288  9b323200  slli r5, r4, 3
00028c  1b327200  slli r4, r4, 7
000290  8b945018  sub.s r9, r1, r5
000294  9f001000  addli r1, zero, 8
000298  0b924118  sub.s r4, r3, r4
00029c  8b941440  min.s r9, r9, r1
0002a0  9f300000  addli r1, zero, 3
0002a4  8b919138  mod.s r3, r3, r9
0002a8  0b199230  div.s r18, r4, r9
0002ac  8b171d38  mod.s r15, r26, r1
0002b0  9f700000  addli r1, zero, 7
0002b4  8b913210  add.s r3, r5, r3
0002b8  33020928  zext_int2long r[5:6], r18
0002bc  1bb7f700  slli r14, r15, 15
0002c0  17381202  sll.d r[17:18], r[5:6], r1
0002c4  9f00000f  addli r1, zero, 1920
0002c8  b3840128  zext_int2long r[10:11], r3
0002cc  338c0028  zext_int2long r[25:26], r1
0002d0  bb80dd00  bneq r27, r13, 32
0002d4  9f701000  addli r1, zero, 15
0002d8  93853004  setlt.u r11, r1, r3
0002dc  9f501000  addli r1, zero, 13
0002e0  17b21402  sll.d r[5:6], r[10:11], r1
0002e4  3b910500  bneq r11, zero, 68
0002e8  b3050028  zext_int2long r[12:13], zero
0002ec  db080000  j 68
0002f0  bbf55d01  bneq r27, r21, 380
0002f4  7d900a00  xwait r21, 0
0002f8  7d100a00  xwait r20, 0
0002fc  1d000000  lock zero, zero
000300  9f300000  addli r1, zero, 3
000304  810a0000  ds_cfg r21, zero, 0
000308  010e0002  ds_cfg r28, zero, 1
00030c  010e001c  ds_cfg r28, zero, 14
000310  0104001a  ds_cfg r8, zero, 13
000314  2117c703  shuffle_batch r14, r14, r28, 1
000318  1d100000  unlock zero
00031c  7d800000  xsignal r1, 0
000320  7d800900  xsignal r19, 0
000324  db0b0000  j 92
000328  eb500fff  load.d r[2:3], -16(r30)
00032c  97051202  and.d r[12:13], r[5:6], r[2:3]
000330  0b32b218  sub.sl r[5:6], r[5:6], r[12:13]
000334  9f701000  addli r1, zero, 15
000338  1752d202  sra.d r[5:6], r[5:6], r13
00033c  8b358241  min.sl r[12:13], r[5:6], r[25:26]
000340  0bb24518  sub.sl r[5:6], r[12:13], r[5:6]
000344  97b51402  sll.d r[12:13], r[10:11], r1
000348  9f300000  addli r1, zero, 3
00034c  7d900000  xwait r1, 0
000350  eb500f00  load.d r[2:3], 0(r30)
000354  1d800900  lock zero, r19
000358  1f020201  addli r4, r4, 128
00035c  15000000  dma_cfg zero, zero, zero, 0
000360  8ba5b010  add.ul r[12:13], r[2:3], r[12:13]
000364  9f000002  addli r1, zero, 256
000368  15000604  dma_cfg zero, r12, zero, 2
00036c  15871506  dma_cfg r14, r11, r1, 3
000370  95804008  dma_cfg r1, r1, r4, 4
000374  35000000  dma_run zero
000378  1d900900  unlock r19
00037c  7d800a00  xsignal r21, 0
000380  1b327900  slli r4, r18, 7
000384  1bb99700  slli r18, r15, 9
000388  b3050228  zext_int2long r[12:13], r4
00038c  0ba28541  min.ul r[5:6], r[12:13], r[25:26]
000390  27020201  addli.d r[5:6], r[5:6], 128
000394  8b20b248  max.ul r[2:3], r[5:6], r[12:13]
000398  33020428  zext_int2long r[5:6], r8
00039c  8bb0b018  sub.sl r[2:3], r[2:3], r[12:13]
0003a0  8ba54040  min.ul r[12:13], r[2:3], r[5:6]
0003a4  ab000300  lui r1, 48
0003a8  0b191910  add.s r18, r18, r1
0003ac  3b91dd00  bneq r27, r13, 68
0003b0  9f311000  addli r3, zero, 11
0003b4  97305803  sll.d r[2:3], r[17:18], r21
0003b8  7d900100  xwait r3, 0
0003bc  eb510f01  load.d r[4:5], 16(r30)
0003c0  1d800900  lock zero, r19
0003c4  15000000  dma_cfg zero, zero, zero, 0
0003c8  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
0003cc  9bb12500  slli r3, r11, 2
0003d0  15000104  dma_cfg zero, r2, zero, 2
0003d4  15893006  dma_cfg r18, r1, r3, 3
0003d8  9f000004  addli r1, zero, 512
0003dc  95806009  dma_cfg r1, r1, r22, 4
0003e0  35000000  dma_run zero
0003e4  1d900900  unlock r19
0003e8  9f201000  addli r1, zero, 10
0003ec  5b420000  j 528
0003f0  2b010300  lui r2, 48
0003f4  9bb00701  slli r1, r15, 16
0003f8  1b110160  ori r2, r2, 1536
0003fc  8b972010  add.s r15, r1, r2
000400  3b833d01  bneq r27, r19, 192
000404  9f001000  addli r1, zero, 8
000408  7d900900  xwait r19, 0
00040c  9f020000  addli r5, zero, 0
000410  9f110000  addli r3, zero, 1
000414  1f120000  addli r4, zero, 1
000418  7d900000  xwait r1, 0
00041c  9f601000  addli r1, zero, 14
000420  7d900000  xwait r1, 0
000424  9bb0e200  slli r1, r5, 14
000428  1bb18200  slli r2, r5, 8
00042c  1d800100  lock zero, r3
000430  9f120000  addli r5, zero, 1
000434  090e8e00  mm_cfg r28, r28, r8, 0
000438  9790e000  or r1, r1, r14
00043c  1711f100  or r2, r2, r15
000440  89893904  mm_cfg r19, r19, r3, 2
000444  29011710  mm r2, r14, r1, 8
000448  9b001200  andi r1, r4, 1
00044c  1f020000  addli r4, zero, 0
000450  1d900100  unlock r3
000454  3bcf00fe  bneq r1, zero, -48
000458  9f101000  addli r1, zero, 9
00045c  7d000a00  xsignal r20, 0
000460  7d800000  xsignal r1, 0
000464  9f401000  addli r1, zero, 12
000468  db320000  j 404
00046c  ab800100  lui r1, 24
000470  0b121710  add.s r4, r14, r1
000474  9f700000  addli r1, zero, 7
000478  b7861d00  beq r27, r1, 416
00047c  3b9c6dff  bneq r27, r22, -252
000480  9f700000  addli r1, zero, 7
000484  97355803  sll.d r[12:13], r[17:18], r21
000488  7d900000  xwait r1, 0
00048c  eb508f00  load.d r[2:3], 8(r30)
000490  1d800900  lock zero, r19
000494  15000000  dma_cfg zero, zero, zero, 0
000498  8ba5b010  add.ul r[12:13], r[2:3], r[12:13]
00049c  9f000004  addli r1, zero, 512
0004a0  1f010040  addli r2, zero, 8192
0004a4  15000604  dma_cfg zero, r12, zero, 2
0004a8  15821506  dma_cfg r4, r11, r1, 3
0004ac  9500c109  dma_cfg r1, r2, r28, 4
0004b0  35000000  dma_run zero
0004b4  1d900900  unlock r19
0004b8  7d800600  xsignal r13, 0
0004bc  dbd8ffff  j -316
0004c0  bbd24d01  bneq r27, r20, 180
0004c4  9f201000  addli r1, zero, 10
0004c8  9f010000  addli r3, zero, 0
0004cc  7d900000  xwait r1, 0
0004d0  9f401000  addli r1, zero, 12
0004d4  7d900000  xwait r1, 0
0004d8  1d800a00  lock zero, r21
0004dc  ab00803f  lui r1, 260096
0004e0  0d000002  ew_cfg zero, zero, zero, 1
0004e4  8d900000  ewcoeff_cfg r1, r1, zero, 0
0004e8  9f70f000  addli r1, zero, 127
0004ec  0d800004  ew_cfg zero, r1, zero, 2
0004f0  0d0b0006  ew_cfg r22, zero, zero, 3
0004f4  8b903710  add.s r1, r15, r3
0004f8  9f810104  addli r3, r3, 512
0004fc  ad802001  dsmadd r1, r1, r18, 0
000500  bbdf71ff  bneq r3, r23, -12
000504  9f301000  addli r1, zero, 11
000508  1d900a00  unlock r21
00050c  1f1b0000  addli r22, zero, 1
000510  7d800000  xsignal r1, 0
000514  1d800a00  lock zero, r21
000518  ab00803f  lui r1, 260096
00051c  0d000002  ew_cfg zero, zero, zero, 1
000520  0d101000  ewcoeff_cfg zero, zero, r1, 0
000524  9f100000  addli r1, zero, 1
000528  8d000024  ew_cfg r1, zero, zero, 18
00052c  8d0a0014  ew_cfg r21, zero, zero, 10
000530  6341dfff  loadli.w r2,  -20(r30)
000534  8d8a2016  ew_cfg r21, r1, r2, 11
000538  abc07f41  lui r1, 268284
00053c  0d00001a  ew_cfg zero, zero, zero, 13
000540  0d80191c  ew_cfg zero, r19, r1, 14
000544  0d00001e  ew_cfg zero, zero, zero, 15
000548  eb500fff  load.d r[2:3], -16(r30)
00054c  0d000104  ew_cfg zero, r2, zero, 2
000550  9f501000  addli r1, zero, 13
000554  8d090006  ew_cfg r19, zero, zero, 3
000558  8d893927  ew_cfg r19, r19, r19, 19
00055c  ad97f700  dsmul r15, r15, r15, 0
000560  0d000014  ew_cfg zero, zero, zero, 10
000564  0d000024  ew_cfg zero, zero, zero, 18
000568  0d000026  ew_cfg zero, zero, zero, 19
00056c  1d900a00  unlock r21
000570  db110000  j 140
000574  3bb20d00  bneq r27, zero, 140
000578  1f412000  addli r2, zero, 20
00057c  9bb07100  slli r1, r3, 7
000580  1f570000  addli r14, zero, 5
000584  1f5a0000  addli r20, zero, 5
000588  17b12402  sll.d r[3:4], r[10:11], r2
00058c  b3940028  sext_int2long r[10:11], r1
000590  73302ffe  store.d r[3:4], -32(r30)
000594  97305803  sll.d r[2:3], r[17:18], r21
000598  0bbc8441  min.sl r[25:26], r[10:11], r[25:26]
00059c  733c1ffc  store.d r[2:3], -40(r30)
0005a0  9f501000  addli r1, zero, 13
0005a4  270c0c01  addli.d r[25:26], r[25:26], 128
0005a8  7d900000  xwait r1, 0
0005ac  1d000700  lock zero, r14
0005b0  eb508f01  load.d r[2:3], 24(r30)
0005b4  0b3c9c48  max.sl r[25:26], r[25:26], r[10:11]
0005b8  6b580ffe  load.d r[17:18], -32(r30)
0005bc  8b349c18  sub.sl r[10:11], r[25:26], r[10:11]
0005c0  8ba00011  add.ul r[2:3], r[2:3], r[17:18]
0005c4  6b588ffd  load.d r[17:18], -40(r30)
0005c8  15000000  dma_cfg zero, zero, zero, 0
0005cc  8bb14440  min.sl r[4:5], r[10:11], r[5:6]
0005d0  9bb22500  slli r5, r11, 2
0005d4  15000b02  dma_cfg zero, r22, zero, 1
0005d8  8ba00011  add.ul r[2:3], r[2:3], r[17:18]
0005dc  15010004  dma_cfg r2, zero, zero, 2
0005e0  95805706  dma_cfg r1, r15, r5, 3
0005e4  9f000004  addli r1, zero, 512
0005e8  1f010040  addli r2, zero, 8192
0005ec  15813008  dma_cfg r2, r1, r3, 4
0005f0  9f601000  addli r1, zero, 14
0005f4  35000000  dma_run zero
0005f8  1d100700  unlock r14
0005fc  7d800000  xsignal r1, 0
000600  eb508fff  load.d r[2:3], -8(r30)
000604  27130300  addli.d r[7:8], r[7:8], 1
000608  1f1d0d00  addli r26, r26, 1
00060c  93301304  setlt.sl r1, r[7:8], r[2:3]
000610  bb8100fe  bneq r1, zero, -928
000614  5b080000  j 64
000618  9f101000  addli r1, zero, 9
00061c  7d900600  xwait r13, 0
000620  7d900000  xwait r1, 0
000624  1d000000  lock zero, zero
000628  9f700000  addli r1, zero, 7
00062c  810a0000  ds_cfg r21, zero, 0
000630  01040002  ds_cfg r8, zero, 1
000634  010e001c  ds_cfg r28, zero, 14
000638  0104001a  ds_cfg r8, zero, 13
00063c  4107c205  shuffle_coa r14, r4, r28, 2
000640  1d100000  unlock zero
000644  7d800000  xsignal r1, 0
000648  9f001000  addli r1, zero, 8
00064c  7d800000  xsignal r1, 0
000650  5ba6ffff  j -720
000654  7d000000  xsignal zero, 0
000658  bbe00d00  bneq r27, zero, 56
00065c  9f200000  addli r1, zero, 2
000660  7d100000  xwait zero, 0
000664  7d100000  xwait zero, 0
000668  7d100000  xwait zero, 0
00066c  7d100000  xwait zero, 0
000670  7d100000  xwait zero, 0
000674  7d100000  xwait zero, 0
000678  7d100000  xwait zero, 0
00067c  7d100000  xwait zero, 0
000680  1d800000  lock zero, r1
000684  0d000020  ew_cfg zero, zero, zero, 16
000688  1d900000  unlock r1
00068c  7d400000  xsignal_mode_cfg zero
000690  9f8e5e00  addli sp, sp, 40
000694  00a00300  mfence { lm, sm, gm }
000698  00100000  exit
00069c  00100000  exit
0006a0  00100000  exit
0006a4  00100000  exit
0006a8  00100000  exit
0006ac  00100000  exit
0006b0  00100000  exit
0006b4  00100000  exit
0006b8  00100000  exit
0006bc  00100000  exit
0006c0  00100000  exit
0006c4  00100000  exit
0006c8  00100000  exit
0006cc  00100000  exit
0006d0  00100000  exit
0006d4  00100000  exit
0006d8  00100000  exit
0006dc  00100000  exit
0006e0  00100000  exit
0006e4  00100000  exit
0006e8  00100000  exit
0006ec  00100000  exit
0006f0  00100000  exit
0006f4  00100000  exit
0006f8  00100000  exit
0006fc  00100000  exit
000700  00100000  exit
000704  00100000  exit
000708  00100000  exit
00070c  00100000  exit
000710  00100000  exit
000714  00100000  exit
000718  00100000  exit
00071c  00100000  exit
000720  00100000  exit
000724  00100000  exit
000728  00100000  exit
00072c  00100000  exit
000730  00100000  exit
000734  00100000  exit
000738  00100000  exit
00073c  00100000  exit
000740  00100000  exit
000744  00100000  exit
000748  00100000  exit
00074c  00100000  exit
000750  00100000  exit
000754  00100000  exit
000758  00100000  exit
00075c  00100000  exit
000760  00100000  exit
000764  00100000  exit
000768  00100000  exit
00076c  00100000  exit
000770  00100000  exit
000774  00100000  exit
000778  00100000  exit
00077c  00100000  exit
000780  00100000  exit
000784  00100000  exit
000788  00100000  exit
00078c  00100000  exit
000790  00100000  exit
000794  00100000  exit
000798  00100000  exit
00079c  00100000  exit
0007a0  00100000  exit
0007a4  00100000  exit
0007a8  00100000  exit
0007ac  00100000  exit
0007b0  00100000  exit
0007b4  00100000  exit
0007b8  00100000  exit
0007bc  00100000  exit
0007c0  00100000  exit
0007c4  00100000  exit
0007c8  00100000  exit
0007cc  00100000  exit
0007d0  00100000  exit
0007d4  00100000  exit
0007d8  00100000  exit
0007dc  00100000  exit
0007e0  00100000  exit
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
