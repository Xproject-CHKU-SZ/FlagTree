; SHA-256 c3f5e348c551c512f3ce0c35118ad0fea9ee101b3892f9ab8f0b08e3f7fe1b8f
; P800 SDNN · XTDK LLVM 19 · 641 / 641 words decoded
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
0000bc  00310002  core_id r2
0000c0  1f8f7e00  addli r30, sp, 56
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7100100  beq r2, zero, 36
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
0001d0  9f511000  addli r3, zero, 13
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
000240  8b914140  min.s r3, r3, r4
000244  cbe41102  ble.s r3, r1, 1336
000248  33930028  sext_int2long r[7:8], r1
00024c  ab000600  lui r1, 96
000250  b3910128  sext_int2long r[4:5], r3
000254  1f040001  addli r8, zero, 128
000258  9f3b0000  addli r23, zero, 3
00025c  9f160000  addli r13, zero, 1
000260  1f4a0000  addli r20, zero, 4
000264  1f2b0000  addli r22, zero, 2
000268  9f0d8000  addli r27, zero, 64
00026c  2b0c0100  lui r24, 16
000270  1f0d0000  addli r26, zero, 0
000274  9b900060  ori r1, r1, 1536
000278  733c3ffe  store.d r[4:5], -8(r30)
00027c  1f72f01f  addli r4, zero, 4095
000280  ab01feff  lui r3, 1048544
000284  e74e1ffe  storeli.w r1, -20(r30)
000288  ab800d00  lui r1, 216
00028c  73383ffe  store.d r[4:5], -16(r30)
000290  ab010900  lui r3, 144
000294  9b90d0b4  ori r1, r1, 2893
000298  e70e1ffe  storeli.w r1, -24(r30)
00029c  9b900160  ori r1, r3, 1536
0002a0  abf17f7f  lui r3, 522239
0002a4  674e1ffe  storeli.w r1, -28(r30)
0002a8  abf07fff  lui r1, 1046527
0002ac  9b90f0ff  ori r1, r1, 4095
0002b0  670e1ffe  storeli.w r1, -32(r30)
0002b4  9b90f1ff  ori r1, r3, 4095
0002b8  e74d1ffe  storeli.w r1, -36(r30)
0002bc  e3006f00  loadli.w r1,  48(r30)
0002c0  e3415f00  loadli.w r3,  44(r30)
0002c4  1f022000  addli r4, zero, 16
0002c8  8b101330  div.s r1, r6, r1
0002cc  8b903030  div.s r1, r1, r3
0002d0  8b918030  div.s r3, r1, r8
0002d4  9bb43100  slli r9, r3, 3
0002d8  9bb17100  slli r3, r3, 7
0002dc  0b159218  sub.s r10, r4, r9
0002e0  1f021000  addli r4, zero, 8
0002e4  8b913018  sub.s r3, r1, r3
0002e8  0b154540  min.s r10, r10, r4
0002ec  1f720000  addli r4, zero, 7
0002f0  8b95a038  mod.s r11, r1, r10
0002f4  8b91a130  div.s r3, r3, r10
0002f8  8b107d39  mod.s r1, r26, r23
0002fc  0b9eb410  add.s r28, r9, r11
000300  b3840128  zext_int2long r[10:11], r3
000304  9bbcf000  slli r25, r1, 15
000308  17b94402  sll.d r[19:20], r[10:11], r4
00030c  1f02000f  addli r4, zero, 1920
000310  33070e28  zext_int2long r[15:16], r28
000314  b3040228  zext_int2long r[10:11], r4
000318  bb00d100  bneq r2, r13, 32
00031c  1f721000  addli r4, zero, 15
000320  1308c205  setlt.u r16, r4, r28
000324  1f521000  addli r4, zero, 13
000328  97354702  sll.d r[12:13], r[15:16], r4
00032c  3b110800  bneq r16, zero, 68
000330  33080028  zext_int2long r[17:18], zero
000334  db080000  j 68
000338  3b526101  bneq r2, r22, 148
00033c  1f520000  addli r4, zero, 5
000340  7d100b00  xwait r22, 0
000344  7d100200  xwait r4, 0
000348  1d000000  lock zero, zero
00034c  010b0000  ds_cfg r22, zero, 0
000350  810d0002  ds_cfg r27, zero, 1
000354  810d001c  ds_cfg r27, zero, 14
000358  0104001a  ds_cfg r8, zero, 13
00035c  a19cbc03  shuffle_batch r25, r25, r27, 1
000360  1d100000  unlock zero
000364  7d800b00  xsignal r23, 0
000368  7d000a00  xsignal r20, 0
00036c  db1e0000  j 244
000370  6b520fff  load.d r[5:6], -16(r30)
000374  17884502  and.d r[17:18], r[12:13], r[5:6]
000378  8bb50519  sub.sl r[12:13], r[12:13], r[17:18]
00037c  1f620000  addli r4, zero, 6
000380  7d900b00  xwait r23, 0
000384  1d000a00  lock zero, r20
000388  15000000  dma_cfg zero, zero, zero, 0
00038c  97d54502  sra.d r[12:13], r[12:13], r4
000390  1f721000  addli r4, zero, 15
000394  0bb89540  min.sl r[17:18], r[12:13], r[10:11]
000398  8b35b818  sub.sl r[12:13], r[17:18], r[12:13]
00039c  17384702  sll.d r[17:18], r[15:16], r4
0003a0  6b520f00  load.d r[5:6], 0(r30)
0003a4  9f850501  addli r11, r11, 128
0003a8  0b280211  add.ul r[17:18], r[5:6], r[17:18]
0003ac  1f020002  addli r4, zero, 256
0003b0  15800804  dma_cfg zero, r17, zero, 2
0003b4  950c4806  dma_cfg r25, r16, r4, 3
0003b8  1502b208  dma_cfg r4, r4, r11, 4
0003bc  35000000  dma_run zero
0003c0  1d100a00  unlock r20
0003c4  7d000b00  xsignal r22, 0
0003c8  5b130000  j 152
0003cc  2b820100  lui r4, 24
0003d0  8b954c10  add.s r11, r25, r4
0003d4  1f720000  addli r4, zero, 7
0003d8  37314100  beq r2, r4, 76
0003dc  1f620000  addli r4, zero, 6
0003e0  3b024100  bneq r2, r4, 128
0003e4  1f720000  addli r4, zero, 7
0003e8  17386903  sll.d r[17:18], r[19:20], r22
0003ec  7d100200  xwait r4, 0
0003f0  6b528f00  load.d r[5:6], 8(r30)
0003f4  1d000a00  lock zero, r20
0003f8  15000000  dma_cfg zero, zero, zero, 0
0003fc  0b280211  add.ul r[17:18], r[5:6], r[17:18]
000400  1f020004  addli r4, zero, 512
000404  9f020040  addli r5, zero, 8192
000408  15800804  dma_cfg zero, r17, zero, 2
00040c  95054806  dma_cfg r11, r16, r4, 3
000410  1582b209  dma_cfg r4, r5, r27, 4
000414  35000000  dma_run zero
000418  1d100a00  unlock r20
00041c  1f620000  addli r4, zero, 6
000420  db070000  j 60
000424  1f620000  addli r4, zero, 6
000428  7d100200  xwait r4, 0
00042c  1f121000  addli r4, zero, 9
000430  7d100200  xwait r4, 0
000434  1d000000  lock zero, zero
000438  1f720000  addli r4, zero, 7
00043c  010b0000  ds_cfg r22, zero, 0
000440  01040002  ds_cfg r8, zero, 1
000444  810d001c  ds_cfg r27, zero, 14
000448  0104001a  ds_cfg r8, zero, 13
00044c  c18cb505  shuffle_coa r25, r11, r27, 2
000450  1d100000  unlock zero
000454  7d000200  xsignal r4, 0
000458  1f021000  addli r4, zero, 8
00045c  7d000200  xsignal r4, 0
000460  9bb17100  slli r3, r3, 7
000464  9bb29000  slli r5, r1, 9
000468  33880128  zext_int2long r[17:18], r3
00046c  8b259840  min.ul r[12:13], r[17:18], r[10:11]
000470  a7850501  addli.d r[12:13], r[12:13], 128
000474  8ba10549  max.ul r[4:5], r[12:13], r[17:18]
000478  b3050428  zext_int2long r[12:13], r8
00047c  8bb10119  sub.sl r[4:5], r[4:5], r[17:18]
000480  0ba8b140  min.ul r[17:18], r[4:5], r[12:13]
000484  2b020300  lui r4, 48
000488  8b914210  add.s r3, r5, r4
00048c  3b11d100  bneq r2, r13, 68
000490  eb540f01  load.d r[10:11], 16(r30)
000494  17326903  sll.d r[5:6], r[19:20], r22
000498  9f301000  addli r1, zero, 11
00049c  7d900000  xwait r1, 0
0004a0  1d000a00  lock zero, r20
0004a4  9b302800  slli r1, r16, 2
0004a8  0ba24410  add.ul r[5:6], r[10:11], r[5:6]
0004ac  15000000  dma_cfg zero, zero, zero, 0
0004b0  15800204  dma_cfg zero, r5, zero, 2
0004b4  95011206  dma_cfg r3, r4, r1, 3
0004b8  9f000004  addli r1, zero, 512
0004bc  9580d008  dma_cfg r1, r1, r13, 4
0004c0  35000000  dma_run zero
0004c4  1d100a00  unlock r20
0004c8  9f201000  addli r1, zero, 10
0004cc  5b530000  j 664
0004d0  9bba0001  slli r21, r1, 16
0004d4  9b100260  ori r1, r4, 1536
0004d8  8b901a10  add.s r1, r21, r1
0004dc  bb414101  bneq r2, r20, 112
0004e0  9f011000  addli r3, zero, 8
0004e4  7d100a00  xwait r20, 0
0004e8  1f050000  addli r10, zero, 0
0004ec  9f140000  addli r9, zero, 1
0004f0  1f521000  addli r4, zero, 13
0004f4  7d900100  xwait r3, 0
0004f8  9f110000  addli r3, zero, 1
0004fc  7d100200  xwait r4, 0
000500  1b32e500  slli r4, r10, 14
000504  9b328500  slli r5, r10, 8
000508  1d800100  lock zero, r3
00050c  1f150000  addli r10, zero, 1
000510  898d8d00  mm_cfg r27, r27, r8, 0
000514  17129201  or r4, r4, r25
000518  97921200  or r5, r5, r1
00051c  090a3a04  mm_cfg r20, r20, r3, 2
000520  a9824c10  mm r5, r25, r4, 8
000524  1b821400  andi r4, r9, 1
000528  9f040000  addli r9, zero, 0
00052c  1d900100  unlock r3
000530  3b4f02fe  bneq r4, zero, -48
000534  9f500000  addli r1, zero, 5
000538  7d800000  xsignal r1, 0
00053c  9f101000  addli r1, zero, 9
000540  7d800000  xsignal r1, 0
000544  9f401000  addli r1, zero, 12
000548  db430000  j 540
00054c  1f520000  addli r4, zero, 5
000550  3b264100  bneq r2, r4, 392
000554  1f221000  addli r4, zero, 10
000558  2b06803f  lui r12, 260096
00055c  9f75f000  addli r11, zero, 127
000560  9f040000  addli r9, zero, 0
000564  7d100200  xwait r4, 0
000568  1f421000  addli r4, zero, 12
00056c  7d100200  xwait r4, 0
000570  1d000b00  lock zero, r22
000574  0d000002  ew_cfg zero, zero, zero, 1
000578  0d160600  ewcoeff_cfg r12, r12, zero, 0
00057c  0d800504  ew_cfg zero, r11, zero, 2
000580  8d060006  ew_cfg r13, zero, zero, 3
000584  0b929010  add.s r4, r1, r9
000588  9f840404  addli r9, r9, 512
00058c  2d023200  dsmadd r4, r4, r3, 0
000590  bbdf84ff  bneq r9, r24, -12
000594  9f311000  addli r3, zero, 11
000598  1f721000  addli r4, zero, 15
00059c  1d100b00  unlock r22
0005a0  1f050000  addli r10, zero, 0
0005a4  7d800100  xsignal r3, 0
0005a8  e341dfff  loadli.w r3,  -20(r30)
0005ac  7d100200  xwait r4, 0
0005b0  1d000b00  lock zero, r22
0005b4  0d000002  ew_cfg zero, zero, zero, 1
0005b8  6b520fff  load.d r[5:6], -16(r30)
0005bc  8b913a10  add.s r3, r21, r3
0005c0  0d800204  ew_cfg zero, r5, zero, 2
0005c4  1f521000  addli r4, zero, 13
0005c8  ab0200c1  lui r5, 790528
0005cc  0d0a0006  ew_cfg r20, zero, zero, 3
0005d0  0d0a0a26  ew_cfg r20, r20, zero, 19
0005d4  0d020014  ew_cfg r4, zero, zero, 10
0005d8  6302dfff  loadli.w r4,  -24(r30)
0005dc  0d8b4616  ew_cfg r22, r13, r4, 11
0005e0  2b82ff40  lui r4, 266232
0005e4  0d00701b  ew_cfg zero, zero, r23, 13
0005e8  8d024a1c  ew_cfg r5, r20, r4, 14
0005ec  0d00061e  ew_cfg zero, r12, zero, 15
0005f0  cda10000  sslut r3, r1, 0
0005f4  0d000014  ew_cfg zero, zero, zero, 10
0005f8  0d000026  ew_cfg zero, zero, zero, 19
0005fc  1d100b00  unlock r22
000600  6342cfff  loadli.w r4,  -28(r30)
000604  8b944a10  add.s r9, r21, r4
000608  1f022000  addli r4, zero, 16
00060c  7d100200  xwait r4, 0
000610  1d000b00  lock zero, r22
000614  0d000002  ew_cfg zero, zero, zero, 1
000618  0d800504  ew_cfg zero, r11, zero, 2
00061c  8d060006  ew_cfg r13, zero, zero, 3
000620  6302cfff  loadli.w r4,  -32(r30)
000624  0d120000  ewcoeff_cfg r4, zero, zero, 0
000628  0b92a410  add.s r4, r9, r10
00062c  8b92a010  add.s r5, r1, r10
000630  1f050504  addli r10, r10, 512
000634  2da25200  dscmpnsel r4, r5, r5, 0
000638  bb4f85ff  bneq r10, r24, -16
00063c  1d100b00  unlock r22
000640  1f050000  addli r10, zero, 0
000644  1d000b00  lock zero, r22
000648  0d000002  ew_cfg zero, zero, zero, 1
00064c  0d800504  ew_cfg zero, r11, zero, 2
000650  8d060006  ew_cfg r13, zero, zero, 3
000654  6342bfff  loadli.w r4,  -36(r30)
000658  0d120000  ewcoeff_cfg r4, zero, zero, 0
00065c  0b92a410  add.s r4, r9, r10
000660  1f050504  addli r10, r10, 512
000664  2d224208  dscmpnsel r4, r4, r4, 4
000668  bb5f85ff  bneq r10, r24, -12
00066c  1d100b00  unlock r22
000670  2b0280bf  lui r4, 784384
000674  1d000b00  lock zero, r22
000678  0d000002  ew_cfg zero, zero, zero, 1
00067c  0d160200  ewcoeff_cfg r12, r4, zero, 0
000680  1f022000  addli r4, zero, 16
000684  6b550fff  load.d r[11:12], -16(r30)
000688  0d800504  ew_cfg zero, r11, zero, 2
00068c  0d0a0006  ew_cfg r20, zero, zero, 3
000690  0d0a4a27  ew_cfg r20, r20, r20, 19
000694  ad809000  dsmadd r1, r1, r9, 0
000698  0d000026  ew_cfg zero, zero, zero, 19
00069c  1d100b00  unlock r22
0006a0  7d000200  xsignal r4, 0
0006a4  1d000b00  lock zero, r22
0006a8  0d000002  ew_cfg zero, zero, zero, 1
0006ac  0d160600  ewcoeff_cfg r12, r12, zero, 0
0006b0  0d800504  ew_cfg zero, r11, zero, 2
0006b4  0d0a0006  ew_cfg r20, zero, zero, 3
0006b8  0d0a4a27  ew_cfg r20, r20, r20, 19
0006bc  ad811100  dsmadd r3, r3, r1, 0
0006c0  9f501000  addli r1, zero, 13
0006c4  0d000026  ew_cfg zero, zero, zero, 19
0006c8  1d100b00  unlock r22
0006cc  7d800000  xsignal r1, 0
0006d0  9f601000  addli r1, zero, 14
0006d4  5b120000  j 144
0006d8  3b420100  bneq r2, zero, 144
0006dc  9b307e00  slli r1, r28, 7
0006e0  e341dfff  loadli.w r3,  -20(r30)
0006e4  33920028  sext_int2long r[5:6], r1
0006e8  9f402000  addli r1, zero, 20
0006ec  8b913a10  add.s r3, r21, r3
0006f0  8b349240  min.sl r[10:11], r[5:6], r[10:11]
0006f4  17371702  sll.d r[15:16], r[15:16], r1
0006f8  9f601000  addli r1, zero, 14
0006fc  a7840401  addli.d r[10:11], r[10:11], 128
000700  7338effc  store.d r[15:16], -48(r30)
000704  17376903  sll.d r[15:16], r[19:20], r22
000708  8bb44448  max.sl r[10:11], r[10:11], r[5:6]
00070c  7334effc  store.d r[15:16], -56(r30)
000710  7d900000  xwait r1, 0
000714  6b578f01  load.d r[15:16], 24(r30)
000718  6b590ffd  load.d r[19:20], -48(r30)
00071c  9b302800  slli r1, r16, 2
000720  0bb24418  sub.sl r[5:6], r[10:11], r[5:6]
000724  eb548ffc  load.d r[10:11], -56(r30)
000728  0b272711  add.ul r[15:16], r[15:16], r[19:20]
00072c  0b32b240  min.sl r[5:6], r[5:6], r[12:13]
000730  9f550000  addli r11, zero, 5
000734  8b249710  add.ul r[10:11], r[15:16], r[10:11]
000738  1d800500  lock zero, r11
00073c  15000000  dma_cfg zero, zero, zero, 0
000740  15800602  dma_cfg zero, r13, zero, 1
000744  15050004  dma_cfg r10, zero, zero, 2
000748  95841106  dma_cfg r9, r3, r1, 3
00074c  9f000004  addli r1, zero, 512
000750  9f010040  addli r3, zero, 8192
000754  95814008  dma_cfg r3, r1, r4, 4
000758  9f701000  addli r1, zero, 15
00075c  35000000  dma_run zero
000760  1d900500  unlock r11
000764  7d800000  xsignal r1, 0
000768  eb518fff  load.d r[4:5], -8(r30)
00076c  27130300  addli.d r[7:8], r[7:8], 1
000770  1f1d0d00  addli r26, r26, 1
000774  93303304  setlt.sl r1, r[7:8], r[4:5]
000778  3b9d00fc  bneq r1, zero, -1212
00077c  7d000000  xsignal zero, 0
000780  bb600100  bneq r2, zero, 56
000784  9f200000  addli r1, zero, 2
000788  7d100000  xwait zero, 0
00078c  7d100000  xwait zero, 0
000790  7d100000  xwait zero, 0
000794  7d100000  xwait zero, 0
000798  7d100000  xwait zero, 0
00079c  7d100000  xwait zero, 0
0007a0  7d100000  xwait zero, 0
0007a4  7d100000  xwait zero, 0
0007a8  1d800000  lock zero, r1
0007ac  0d000020  ew_cfg zero, zero, zero, 16
0007b0  1d900000  unlock r1
0007b4  7d400000  xsignal_mode_cfg zero
0007b8  9f8e7e00  addli sp, sp, 56
0007bc  00a00300  mfence { lm, sm, gm }
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
