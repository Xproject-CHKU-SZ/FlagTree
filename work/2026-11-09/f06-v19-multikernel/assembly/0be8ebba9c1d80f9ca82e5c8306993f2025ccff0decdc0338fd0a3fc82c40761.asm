; SHA-256 0be8ebba9c1d80f9ca82e5c8306993f2025ccff0decdc0338fd0a3fc82c40761
; P800 SDNN · XTDK LLVM 19 · 1663 / 1663 words decoded
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
0000b4  9f8eeefe  addli sp, sp, -144
0000b8  9f100000  addli r1, zero, 1
0000bc  80320002  core_id r5
0000c0  1f8fae00  addli r30, sp, 80
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7900200  beq r5, zero, 36
0000cc  2bf1ffff  lui r2, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b10f1ff  ori r1, r2, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  db1f0000  j 252
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
00014c  1f213000  addli r2, zero, 26
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
00018c  9f600000  addli r1, zero, 6
000190  00d00100  sync_group
000194  7d800200  xsignal r5, 0
000198  80320002  core_id r5
00019c  7d800000  xsignal r1, 0
0001a0  7d000100  xsignal r2, 0
0001a4  9f703000  addli r1, zero, 31
0001a8  1f411000  addli r2, zero, 12
0001ac  7d800000  xsignal r1, 0
0001b0  7d000100  xsignal r2, 0
0001b4  9f701000  addli r1, zero, 15
0001b8  1f112000  addli r2, zero, 17
0001bc  7d800000  xsignal r1, 0
0001c0  7d000100  xsignal r2, 0
0001c4  9f302000  addli r1, zero, 19
0001c8  1f413000  addli r2, zero, 28
0001cc  7d800000  xsignal r1, 0
0001d0  7d000100  xsignal r2, 0
0001d4  9f204000  addli r1, zero, 34
0001d8  1f414000  addli r2, zero, 36
0001dc  7d800000  xsignal r1, 0
0001e0  7d000100  xsignal r2, 0
0001e4  e3005f00  loadli.w r1,  40(r30)
0001e8  63415f00  loadli.w r2,  44(r30)
0001ec  00d20002  load_param_i r4, 1
0001f0  e3016f00  loadli.w r3,  48(r30)
0001f4  8b101120  mul.s r1, r2, r1
0001f8  1f010200  addli r2, r4, 0
0001fc  0b913050  fmac.s r2, r1, r3
000200  8b913020  mul.s r3, r1, r3
000204  1f71f1ff  addli r2, r2, -1
000208  0b114130  div.s r2, r2, r4
00020c  00520002  load_param_i r4, 0
000210  8b104120  mul.s r1, r2, r4
000214  0b114150  fmac.s r2, r2, r4
000218  0b113140  min.s r2, r2, r3
00021c  4b65110a  ble.s r2, r1, 5464
000220  33110128  sext_int2long r[3:4], r2
000224  1f030010  addli r6, zero, 2048
000228  1f270000  addli r14, zero, 2
00022c  1f6b1000  addli r22, zero, 14
000230  ab4c0000  lui r25, 4
000234  1f1e0000  addli r28, zero, 1
000238  ab09807f  lui r19, 522240
00023c  73302ffc  store.d r[3:4], -64(r30)
000240  b3910028  sext_int2long r[4:5], r1
000244  ab20373d  lui r1, 250738
000248  2b414c3f  lui r2, 259268
00024c  b3070328  zext_int2long r[16:17], r6
000250  9b903071  ori r1, r1, 1811
000254  733cfffc  store.d r[16:17], -40(r30)
000258  e74b1ffe  storeli.w r1, -68(r30)
00025c  9b10a122  ori r1, r2, 554
000260  2b710000  lui r2, 7
000264  e70b1ffe  storeli.w r1, -72(r30)
000268  ab800300  lui r1, 56
00026c  9b903084  ori r1, r1, 2115
000270  674b1ffe  storeli.w r1, -76(r30)
000274  9b10f1ff  ori r1, r2, 4095
000278  2bf17f00  lui r2, 2047
00027c  e70e1ffe  storeli.w r1, -24(r30)
000280  abf07f7f  lui r1, 522239
000284  9b90f0ff  ori r1, r1, 4095
000288  674f1ffe  storeli.w r1, -12(r30)
00028c  9b10f1ff  ori r1, r2, 4095
000290  670e1ffe  storeli.w r1, -32(r30)
000294  b3000028  zext_int2long r[2:3], zero
000298  73341ffc  store.d r[2:3], -56(r30)
00029c  abf0ff7f  lui r1, 524287
0002a0  9b9df0ff  ori r27, r1, 4095
0002a4  5b0a0000  j 80
0002a8  9f701000  addli r1, zero, 15
0002ac  00200100  mfence { sm }
0002b0  80320002  core_id r5
0002b4  1f6b1000  addli r22, zero, 14
0002b8  1f1e0000  addli r28, zero, 1
0002bc  1f270000  addli r14, zero, 2
0002c0  7d800000  xsignal r1, 0
0002c4  9f103000  addli r1, zero, 25
0002c8  7d800000  xsignal r1, 0
0002cc  9f204000  addli r1, zero, 34
0002d0  7d800000  xsignal r1, 0
0002d4  9f404000  addli r1, zero, 36
0002d8  7d800000  xsignal r1, 0
0002dc  eb578ffd  load.d r[16:17], -40(r30)
0002e0  eb510ffd  load.d r[4:5], -48(r30)
0002e4  eb500ffc  load.d r[2:3], -64(r30)
0002e8  a7910100  addli.d r[4:5], r[4:5], 1
0002ec  93b01104  setlt.sl r1, r[4:5], r[2:3]
0002f0  3792000a  beq r1, zero, 5252
0002f4  e3006f00  loadli.w r1,  48(r30)
0002f8  63415f00  loadli.w r2,  44(r30)
0002fc  73383ffc  store.d r[4:5], -48(r30)
000300  8b901130  div.s r1, r3, r1
000304  9f111000  addli r3, zero, 9
000308  8b902030  div.s r1, r1, r2
00030c  b3900028  sext_int2long r[2:3], r1
000310  97b83002  sll.d r[18:19], r[2:3], r3
000314  9f600000  addli r1, zero, 6
000318  733c1fff  store.d r[18:19], -8(r30)
00031c  b7e91200  beq r5, r1, 632
000320  3b9ac201  bneq r5, r28, 644
000324  1f450000  addli r10, zero, 4
000328  9f530000  addli r7, zero, 5
00032c  670f0ffe  storeli.w zero, -16(r30)
000330  eb510f00  load.d r[4:5], 0(r30)
000334  97b0c803  sll.d r[2:3], r[18:19], r28
000338  9f750000  addli r11, zero, 7
00033c  9f081000  addli r17, zero, 8
000340  1f1b1000  addli r22, zero, 9
000344  9f2a1000  addli r21, zero, 10
000348  1f331000  addli r6, zero, 11
00034c  1f761000  addli r12, zero, 15
000350  9f042000  addli r9, zero, 16
000354  9f162000  addli r13, zero, 17
000358  1f292000  addli r18, zero, 18
00035c  9f492000  addli r19, zero, 20
000360  9f5b2000  addli r23, zero, 21
000364  1f6d2000  addli r26, zero, 22
000368  1f3c3000  addli r24, zero, 27
00036c  1f4a3000  addli r20, zero, 28
000370  1f743000  addli r8, zero, 31
000374  9f020010  addli r5, zero, 2048
000378  7d100500  xwait r10, 0
00037c  1d800300  lock zero, r7
000380  15000014  dma_cfg zero, zero, zero, 10
000384  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
000388  9f610000  addli r3, zero, 6
00038c  1f020001  addli r4, zero, 128
000390  1500c015  dma_cfg zero, zero, r28, 10
000394  1500e014  dma_cfg zero, zero, r14, 10
000398  1f370000  addli r14, zero, 3
00039c  1500e014  dma_cfg zero, zero, r14, 10
0003a0  1500a014  dma_cfg zero, zero, r10, 10
0003a4  15007014  dma_cfg zero, zero, r7, 10
0003a8  15003014  dma_cfg zero, zero, r3, 10
0003ac  9f411000  addli r3, zero, 12
0003b0  1500b014  dma_cfg zero, zero, r11, 10
0003b4  15001015  dma_cfg zero, zero, r17, 10
0003b8  15006015  dma_cfg zero, zero, r22, 10
0003bc  15005015  dma_cfg zero, zero, r21, 10
0003c0  15006014  dma_cfg zero, zero, r6, 10
0003c4  15003014  dma_cfg zero, zero, r3, 10
0003c8  9f511000  addli r3, zero, 13
0003cc  15003014  dma_cfg zero, zero, r3, 10
0003d0  9f611000  addli r3, zero, 14
0003d4  15003014  dma_cfg zero, zero, r3, 10
0003d8  9f312000  addli r3, zero, 19
0003dc  1500c014  dma_cfg zero, zero, r12, 10
0003e0  15009014  dma_cfg zero, zero, r9, 10
0003e4  1500d014  dma_cfg zero, zero, r13, 10
0003e8  15002015  dma_cfg zero, zero, r18, 10
0003ec  15003014  dma_cfg zero, zero, r3, 10
0003f0  9f712000  addli r3, zero, 23
0003f4  15003015  dma_cfg zero, zero, r19, 10
0003f8  15007015  dma_cfg zero, zero, r23, 10
0003fc  1500a015  dma_cfg zero, zero, r26, 10
000400  15003014  dma_cfg zero, zero, r3, 10
000404  9f013000  addli r3, zero, 24
000408  15003014  dma_cfg zero, zero, r3, 10
00040c  9f113000  addli r3, zero, 25
000410  15003014  dma_cfg zero, zero, r3, 10
000414  9f213000  addli r3, zero, 26
000418  15003014  dma_cfg zero, zero, r3, 10
00041c  9f513000  addli r3, zero, 29
000420  15008015  dma_cfg zero, zero, r24, 10
000424  15004015  dma_cfg zero, zero, r20, 10
000428  15003014  dma_cfg zero, zero, r3, 10
00042c  9f613000  addli r3, zero, 30
000430  15003014  dma_cfg zero, zero, r3, 10
000434  9f018000  addli r3, zero, 64
000438  15008014  dma_cfg zero, zero, r8, 10
00043c  150e0e00  dma_cfg r28, r28, zero, 0
000440  150e0002  dma_cfg r28, zero, zero, 1
000444  15000004  dma_cfg zero, zero, zero, 2
000448  15003006  dma_cfg zero, zero, r3, 3
00044c  15029008  dma_cfg r4, zero, r9, 4
000450  9502c00b  dma_cfg r5, zero, r28, 5
000454  15000010  dma_cfg zero, zero, zero, 8
000458  35000000  dma_run zero
00045c  1500c00b  dma_cfg zero, zero, r28, 5
000460  15000010  dma_cfg zero, zero, zero, 8
000464  1d900300  unlock r7
000468  1d000500  lock zero, r10
00046c  150e0e00  dma_cfg r28, r28, zero, 0
000470  15000104  dma_cfg zero, r2, zero, 2
000474  95813006  dma_cfg r3, r1, r3, 3
000478  9f000008  addli r1, zero, 1024
00047c  15829108  dma_cfg r4, r3, r9, 4
000480  9582c00b  dma_cfg r5, r1, r28, 5
000484  9f200000  addli r1, zero, 2
000488  15000010  dma_cfg zero, zero, zero, 8
00048c  35000000  dma_run zero
000490  1500c00b  dma_cfg zero, zero, r28, 5
000494  15000010  dma_cfg zero, zero, zero, 8
000498  1d100500  unlock r10
00049c  1d800300  lock zero, r7
0004a0  15000014  dma_cfg zero, zero, zero, 10
0004a4  1500c015  dma_cfg zero, zero, r28, 10
0004a8  15001014  dma_cfg zero, zero, r1, 10
0004ac  9f600000  addli r1, zero, 6
0004b0  1500e014  dma_cfg zero, zero, r14, 10
0004b4  1f270000  addli r14, zero, 2
0004b8  1500a014  dma_cfg zero, zero, r10, 10
0004bc  15007014  dma_cfg zero, zero, r7, 10
0004c0  15001014  dma_cfg zero, zero, r1, 10
0004c4  9f401000  addli r1, zero, 12
0004c8  1500b014  dma_cfg zero, zero, r11, 10
0004cc  15001015  dma_cfg zero, zero, r17, 10
0004d0  15006015  dma_cfg zero, zero, r22, 10
0004d4  1f6b1000  addli r22, zero, 14
0004d8  15005015  dma_cfg zero, zero, r21, 10
0004dc  15006014  dma_cfg zero, zero, r6, 10
0004e0  15001014  dma_cfg zero, zero, r1, 10
0004e4  9f501000  addli r1, zero, 13
0004e8  15001014  dma_cfg zero, zero, r1, 10
0004ec  9f601000  addli r1, zero, 14
0004f0  15001014  dma_cfg zero, zero, r1, 10
0004f4  9f302000  addli r1, zero, 19
0004f8  1500c014  dma_cfg zero, zero, r12, 10
0004fc  15009014  dma_cfg zero, zero, r9, 10
000500  1500d014  dma_cfg zero, zero, r13, 10
000504  15002015  dma_cfg zero, zero, r18, 10
000508  eb588fff  load.d r[18:19], -8(r30)
00050c  15001014  dma_cfg zero, zero, r1, 10
000510  9f702000  addli r1, zero, 23
000514  15003015  dma_cfg zero, zero, r19, 10
000518  ab09807f  lui r19, 522240
00051c  15007015  dma_cfg zero, zero, r23, 10
000520  1500a015  dma_cfg zero, zero, r26, 10
000524  15001014  dma_cfg zero, zero, r1, 10
000528  9f003000  addli r1, zero, 24
00052c  15001014  dma_cfg zero, zero, r1, 10
000530  9f103000  addli r1, zero, 25
000534  15001014  dma_cfg zero, zero, r1, 10
000538  9f203000  addli r1, zero, 26
00053c  15001014  dma_cfg zero, zero, r1, 10
000540  9f503000  addli r1, zero, 29
000544  15008015  dma_cfg zero, zero, r24, 10
000548  15004015  dma_cfg zero, zero, r20, 10
00054c  15001014  dma_cfg zero, zero, r1, 10
000550  9f603000  addli r1, zero, 30
000554  15001014  dma_cfg zero, zero, r1, 10
000558  15008014  dma_cfg zero, zero, r8, 10
00055c  6304efff  loadli.w r8,  -16(r30)
000560  150e0e00  dma_cfg r28, r28, zero, 0
000564  150e0002  dma_cfg r28, zero, zero, 1
000568  15000004  dma_cfg zero, zero, zero, 2
00056c  15003006  dma_cfg zero, zero, r3, 3
000570  15029008  dma_cfg r4, zero, r9, 4
000574  9502c00b  dma_cfg r5, zero, r28, 5
000578  15000010  dma_cfg zero, zero, zero, 8
00057c  35000000  dma_run zero
000580  1500c00b  dma_cfg zero, zero, r28, 5
000584  15000010  dma_cfg zero, zero, zero, 8
000588  1d900300  unlock r7
00058c  7d000700  xsignal r14, 0
000590  5b030000  j 24
000594  1f140000  addli r8, zero, 1
000598  9f600000  addli r1, zero, 6
00059c  7d900000  xwait r1, 0
0005a0  5b010000  j 8
0005a4  1f040000  addli r8, zero, 0
0005a8  8f90f870  mod.sl r[2:3], r[18:19], r[16:17]
0005ac  9f311000  addli r3, zero, 11
0005b0  a7f0f013  addli.d r[2:3], r[2:3], 2559
0005b4  17ca3002  srl.d r[21:22], r[2:3], r3
0005b8  eb508ffc  load.d r[2:3], -56(r30)
0005bc  93201a00  seteq.d r1, r[21:22], r[2:3]
0005c0  1f010004  addli r2, zero, 512
0005c4  b30b0128  zext_int2long r[24:25], r2
0005c8  3bfc0000  bneq r1, zero, 796
0005cc  eb548ffc  load.d r[10:11], -56(r30)
0005d0  33020e28  zext_int2long r[5:6], r28
0005d4  db020000  j 20
0005d8  93204205  setlt.ul r1, r[5:6], r[21:22]
0005dc  8b249610  add.ul r[10:11], r[13:14], r[10:11]
0005e0  33020728  zext_int2long r[5:6], r14
0005e4  378c0000  beq r1, zero, 768
0005e8  8ba01411  add.ul r[2:3], r[10:11], r[18:19]
0005ec  8bb59b18  sub.sl r[12:13], r[24:25], r[10:11]
0005f0  8f90f070  mod.sl r[2:3], r[2:3], r[16:17]
0005f4  0bb31718  sub.sl r[7:8], r[16:17], r[2:3]
0005f8  0ba66540  min.ul r[13:14], r[12:13], r[7:8]
0005fc  377f04fe  beq r8, zero, -36
000600  9bb12400  slli r3, r9, 2
000604  9f5c0000  addli r25, zero, 5
000608  17b3c003  sll.d r[7:8], r[2:3], r28
00060c  1f490000  addli r18, zero, 4
000610  1f6b0000  addli r22, zero, 6
000614  1f6d1000  addli r26, zero, 14
000618  9f092000  addli r19, zero, 16
00061c  1f088000  addli r16, zero, 64
000620  9f080001  addli r17, zero, 128
000624  9b351600  slli r11, r12, 1
000628  9f070400  addli r15, r8, 0
00062c  9f800110  addli r1, r3, 2048
000630  6b518f00  load.d r[3:4], 8(r30)
000634  1d800c00  lock zero, r25
000638  15000014  dma_cfg zero, zero, zero, 10
00063c  1500c015  dma_cfg zero, zero, r28, 10
000640  1f7e0000  addli r28, zero, 7
000644  0b216110  add.ul r[3:4], r[3:4], r[7:8]
000648  1f330000  addli r6, zero, 3
00064c  1500e014  dma_cfg zero, zero, r14, 10
000650  1f170000  addli r14, zero, 1
000654  15006014  dma_cfg zero, zero, r6, 10
000658  1f031000  addli r6, zero, 8
00065c  15002015  dma_cfg zero, zero, r18, 10
000660  15009015  dma_cfg zero, zero, r25, 10
000664  15006015  dma_cfg zero, zero, r22, 10
000668  1500c015  dma_cfg zero, zero, r28, 10
00066c  15006014  dma_cfg zero, zero, r6, 10
000670  1f131000  addli r6, zero, 9
000674  15006014  dma_cfg zero, zero, r6, 10
000678  1f231000  addli r6, zero, 10
00067c  15006014  dma_cfg zero, zero, r6, 10
000680  1f331000  addli r6, zero, 11
000684  15006014  dma_cfg zero, zero, r6, 10
000688  1f431000  addli r6, zero, 12
00068c  15006014  dma_cfg zero, zero, r6, 10
000690  1f531000  addli r6, zero, 13
000694  15006014  dma_cfg zero, zero, r6, 10
000698  1f731000  addli r6, zero, 15
00069c  1500a015  dma_cfg zero, zero, r26, 10
0006a0  15006014  dma_cfg zero, zero, r6, 10
0006a4  1f132000  addli r6, zero, 17
0006a8  15003015  dma_cfg zero, zero, r19, 10
0006ac  15006014  dma_cfg zero, zero, r6, 10
0006b0  1f232000  addli r6, zero, 18
0006b4  15006014  dma_cfg zero, zero, r6, 10
0006b8  1f332000  addli r6, zero, 19
0006bc  15006014  dma_cfg zero, zero, r6, 10
0006c0  1f432000  addli r6, zero, 20
0006c4  15006014  dma_cfg zero, zero, r6, 10
0006c8  1f532000  addli r6, zero, 21
0006cc  15006014  dma_cfg zero, zero, r6, 10
0006d0  1f632000  addli r6, zero, 22
0006d4  15006014  dma_cfg zero, zero, r6, 10
0006d8  1f732000  addli r6, zero, 23
0006dc  15006014  dma_cfg zero, zero, r6, 10
0006e0  1f033000  addli r6, zero, 24
0006e4  15006014  dma_cfg zero, zero, r6, 10
0006e8  1f133000  addli r6, zero, 25
0006ec  15006014  dma_cfg zero, zero, r6, 10
0006f0  1f233000  addli r6, zero, 26
0006f4  15006014  dma_cfg zero, zero, r6, 10
0006f8  1f333000  addli r6, zero, 27
0006fc  15006014  dma_cfg zero, zero, r6, 10
000700  1f433000  addli r6, zero, 28
000704  15006014  dma_cfg zero, zero, r6, 10
000708  1f533000  addli r6, zero, 29
00070c  15006014  dma_cfg zero, zero, r6, 10
000710  1f633000  addli r6, zero, 30
000714  15006014  dma_cfg zero, zero, r6, 10
000718  1f733000  addli r6, zero, 31
00071c  15006014  dma_cfg zero, zero, r6, 10
000720  1f030010  addli r6, zero, 2048
000724  15070700  dma_cfg r14, r14, zero, 0
000728  15070002  dma_cfg r14, zero, zero, 1
00072c  15000004  dma_cfg zero, zero, zero, 2
000730  15030007  dma_cfg r6, zero, r16, 3
000734  95083009  dma_cfg r17, zero, r19, 4
000738  1503e00a  dma_cfg r6, zero, r14, 5
00073c  0b931039  mod.s r6, r1, r17
000740  15000010  dma_cfg zero, zero, zero, 8
000744  35000000  dma_run zero
000748  1500e00a  dma_cfg zero, zero, r14, 5
00074c  15000010  dma_cfg zero, zero, zero, 8
000750  1d900c00  unlock r25
000754  1d000900  lock zero, r18
000758  15070700  dma_cfg r14, r14, zero, 0
00075c  9b431300  srli r7, r6, 1
000760  15800104  dma_cfg zero, r3, zero, 2
000764  8b937018  sub.s r7, r1, r7
000768  8b906018  sub.s r1, r1, r6
00076c  1f330000  addli r6, zero, 3
000770  9f838300  addli r7, r7, 64
000774  95030107  dma_cfg r7, r2, r16, 3
000778  abf3ff7f  lui r7, 524287
00077c  1b312600  slli r2, r12, 2
000780  9f713600  addli r3, r12, 31
000784  9b9303f8  ori r7, r7, 3968
000788  9bc15100  srli r3, r3, 5
00078c  97037100  and r7, r2, r7
000790  1b81e503  andi r2, r11, 62
000794  95083808  dma_cfg r17, r16, r3, 4
000798  17942300  or r8, r7, r2
00079c  1584e50a  dma_cfg r8, r11, r14, 5
0007a0  15002010  dma_cfg zero, zero, r2, 8
0007a4  35000000  dma_run zero
0007a8  1500e00a  dma_cfg zero, zero, r14, 5
0007ac  15000010  dma_cfg zero, zero, zero, 8
0007b0  1d100900  unlock r18
0007b4  1d800c00  lock zero, r25
0007b8  15000014  dma_cfg zero, zero, zero, 10
0007bc  1500e014  dma_cfg zero, zero, r14, 10
0007c0  1f270000  addli r14, zero, 2
0007c4  1500e014  dma_cfg zero, zero, r14, 10
0007c8  15006014  dma_cfg zero, zero, r6, 10
0007cc  1f031000  addli r6, zero, 8
0007d0  15002015  dma_cfg zero, zero, r18, 10
0007d4  15009015  dma_cfg zero, zero, r25, 10
0007d8  15006015  dma_cfg zero, zero, r22, 10
0007dc  1f6b1000  addli r22, zero, 14
0007e0  1500c015  dma_cfg zero, zero, r28, 10
0007e4  1f1e0000  addli r28, zero, 1
0007e8  15006014  dma_cfg zero, zero, r6, 10
0007ec  1f131000  addli r6, zero, 9
0007f0  15006014  dma_cfg zero, zero, r6, 10
0007f4  1f231000  addli r6, zero, 10
0007f8  15006014  dma_cfg zero, zero, r6, 10
0007fc  1f331000  addli r6, zero, 11
000800  15006014  dma_cfg zero, zero, r6, 10
000804  1f431000  addli r6, zero, 12
000808  15006014  dma_cfg zero, zero, r6, 10
00080c  1f531000  addli r6, zero, 13
000810  15006014  dma_cfg zero, zero, r6, 10
000814  1f731000  addli r6, zero, 15
000818  1500a015  dma_cfg zero, zero, r26, 10
00081c  15006014  dma_cfg zero, zero, r6, 10
000820  1f132000  addli r6, zero, 17
000824  15003015  dma_cfg zero, zero, r19, 10
000828  ab09807f  lui r19, 522240
00082c  15006014  dma_cfg zero, zero, r6, 10
000830  1f232000  addli r6, zero, 18
000834  15006014  dma_cfg zero, zero, r6, 10
000838  1f332000  addli r6, zero, 19
00083c  15006014  dma_cfg zero, zero, r6, 10
000840  1f432000  addli r6, zero, 20
000844  15006014  dma_cfg zero, zero, r6, 10
000848  1f532000  addli r6, zero, 21
00084c  15006014  dma_cfg zero, zero, r6, 10
000850  1f632000  addli r6, zero, 22
000854  15006014  dma_cfg zero, zero, r6, 10
000858  1f732000  addli r6, zero, 23
00085c  15006014  dma_cfg zero, zero, r6, 10
000860  1f033000  addli r6, zero, 24
000864  15006014  dma_cfg zero, zero, r6, 10
000868  1f133000  addli r6, zero, 25
00086c  15006014  dma_cfg zero, zero, r6, 10
000870  1f233000  addli r6, zero, 26
000874  15006014  dma_cfg zero, zero, r6, 10
000878  1f333000  addli r6, zero, 27
00087c  15006014  dma_cfg zero, zero, r6, 10
000880  1f433000  addli r6, zero, 28
000884  15006014  dma_cfg zero, zero, r6, 10
000888  1f533000  addli r6, zero, 29
00088c  15006014  dma_cfg zero, zero, r6, 10
000890  1f633000  addli r6, zero, 30
000894  15006014  dma_cfg zero, zero, r6, 10
000898  1f733000  addli r6, zero, 31
00089c  15006014  dma_cfg zero, zero, r6, 10
0008a0  6b538ffd  load.d r[7:8], -40(r30)
0008a4  150e0e00  dma_cfg r28, r28, zero, 0
0008a8  150e0002  dma_cfg r28, zero, zero, 1
0008ac  15000004  dma_cfg zero, zero, zero, 2
0008b0  95000007  dma_cfg r1, zero, r16, 3
0008b4  95083008  dma_cfg r17, zero, r3, 4
0008b8  eb588fff  load.d r[18:19], -8(r30)
0008bc  1504c00b  dma_cfg r8, zero, r28, 5
0008c0  1f840700  addli r8, r15, 0
0008c4  a7070300  addli.d r[16:17], r[7:8], 0
0008c8  15002010  dma_cfg zero, zero, r2, 8
0008cc  35000000  dma_run zero
0008d0  1500c00b  dma_cfg zero, zero, r28, 5
0008d4  15000010  dma_cfg zero, zero, zero, 8
0008d8  1d900c00  unlock r25
0008dc  ab4c0000  lui r25, 4
0008e0  5b9fffff  j -776
0008e4  37300400  beq r8, zero, 12
0008e8  9f500000  addli r1, zero, 5
0008ec  7d800000  xsignal r1, 0
0008f0  9b900c80  ori r1, r25, 2048
0008f4  80320002  core_id r5
0008f8  2b0a4000  lui r20, 1024
0008fc  670f1ffe  storeli.w r1, -16(r30)
000900  9f500000  addli r1, zero, 5
000904  37ee1204  beq r5, r1, 2968
000908  9f300000  addli r1, zero, 3
00090c  bbe71206  bneq r5, r1, 3576
000910  733c7fff  store.d r[24:25], -8(r30)
000914  7d900000  xwait r1, 0
000918  9f401000  addli r1, zero, 12
00091c  b3070028  zext_int2long r[16:17], zero
000920  7d900000  xwait r1, 0
000924  3d000000  xfence
000928  00a00300  mfence { lm, sm, gm }
00092c  5b0c0000  j 96
000930  1f430240  addli r6, r4, 8196
000934  a7871700  addli.d r[16:17], r[16:17], 8
000938  1f411240  addli r2, r4, 8204
00093c  9f000240  addli r1, r4, 8192
000940  9f022240  addli r5, r4, 8208
000944  7360d300  stores.w r13, 0(r6)
000948  6b538fff  load.d r[7:8], -8(r30)
00094c  73609101  stores.w r25, 0(r2)
000950  1f011240  addli r2, r4, 8200
000954  73e02001  stores.w r18, 0(r1)
000958  9f003240  addli r1, r4, 8216
00095c  73e04201  stores.w r20, 0(r5)
000960  ab4c0000  lui r25, 4
000964  2b0a4000  lui r20, 1024
000968  73608101  stores.w r24, 0(r2)
00096c  1f413240  addli r2, r4, 8220
000970  73e03001  stores.w r19, 0(r1)
000974  ab09807f  lui r19, 522240
000978  93a16702  setneq.d r3, r[16:17], r[7:8]
00097c  73609100  stores.w r9, 0(r2)
000980  1f412240  addli r2, r4, 8212
000984  73608100  stores.w r8, 0(r2)
000988  b7c80100  beq r3, zero, 560
00098c  1bb22700  slli r4, r15, 2
000990  ef44c200  loads.w r9, 12(r4)
000994  ef460200  loads.w r13, 0(r4)
000998  ef484200  loads.w r17, 4(r4)
00099c  6f458200  loads.w r10, 8(r4)
0009a0  ef4a0201  loads.w r21, 16(r4)
0009a4  ef4b4201  loads.w r23, 20(r4)
0009a8  6f468201  loads.w r12, 24(r4)
0009ac  ef41c201  loads.w r3, 28(r4)
0009b0  1781b401  and r2, r9, r27
0009b4  93802904  setlt.u r1, r19, r2
0009b8  3bb00000  bneq r1, zero, 12
0009bc  9f8c0400  addli r25, r9, 0
0009c0  5b010000  j 8
0009c4  979c4401  or r25, r9, r20
0009c8  170eb501  and r28, r10, r27
0009cc  9380c905  setlt.u r1, r19, r28
0009d0  3bb00000  bneq r1, zero, 12
0009d4  1f0c0500  addli r24, r10, 0
0009d8  5b010000  j 8
0009dc  171c4501  or r24, r10, r20
0009e0  9783b801  and r7, r17, r27
0009e4  93807904  setlt.u r1, r19, r7
0009e8  3bb00000  bneq r1, zero, 12
0009ec  9f820800  addli r5, r17, 0
0009f0  5b010000  j 8
0009f4  97924801  or r5, r17, r20
0009f8  178db601  and r26, r13, r27
0009fc  9380a905  setlt.u r1, r19, r26
000a00  3bb00000  bneq r1, zero, 12
000a04  1f890600  addli r18, r13, 0
000a08  5b010000  j 8
000a0c  17994601  or r18, r13, r20
000a10  9780b101  and r1, r3, r27
000a14  13831904  setlt.u r6, r19, r1
000a18  3b300300  bneq r6, zero, 12
000a1c  e74e3ffe  storeli.w r3, -20(r30)
000a20  db010000  j 12
000a24  17934101  or r6, r3, r20
000a28  e74e6ffe  storeli.w r6, -20(r30)
000a2c  9705b601  and r11, r12, r27
000a30  2b07807f  lui r14, 522240
000a34  1383b904  setlt.u r6, r19, r11
000a38  3b300300  bneq r6, zero, 12
000a3c  9f090600  addli r19, r12, 0
000a40  5b010000  j 8
000a44  97194601  or r19, r12, r20
000a48  1783bb01  and r6, r23, r27
000a4c  674e3ffe  storeli.w r3, -28(r30)
000a50  ab014000  lui r3, 1024
000a54  13046704  setlt.u r8, r14, r6
000a58  3b300400  bneq r8, zero, 12
000a5c  1f840b00  addli r8, r23, 0
000a60  5b010000  j 8
000a64  17944b01  or r8, r23, r20
000a68  178bba01  and r22, r21, r27
000a6c  130a6705  setlt.u r20, r14, r22
000a70  3b300a00  bneq r20, zero, 12
000a74  1f8a0a00  addli r20, r21, 0
000a78  5b010000  j 8
000a7c  179a3a00  or r20, r21, r3
000a80  e341efff  loadli.w r3,  -12(r30)
000a84  2b07ffff  lui r14, 1048560
000a88  138da105  setlt.u r26, r3, r26
000a8c  3b700d00  bneq r26, zero, 28
000a90  1bc90601  srli r18, r13, 16
000a94  1b091900  andi r18, r18, 1
000a98  8b962611  add.s r13, r13, r18
000a9c  6309dfff  loadli.w r18,  -24(r30)
000aa0  8b962611  add.s r13, r13, r18
000aa4  1789e600  and r18, r13, r14
000aa8  e346efff  loadli.w r13,  -12(r30)
000aac  630ddfff  loadli.w r26,  -24(r30)
000ab0  93837604  setlt.u r7, r13, r7
000ab4  9f860200  addli r13, r5, 0
000ab8  3be00300  bneq r7, zero, 24
000abc  9bc30801  srli r7, r17, 16
000ac0  9b831300  andi r7, r7, 1
000ac4  8b937810  add.s r7, r17, r7
000ac8  8b93a311  add.s r7, r7, r26
000acc  9786e300  and r13, r7, r14
000ad0  e341efff  loadli.w r3,  -12(r30)
000ad4  9383c105  setlt.u r7, r3, r28
000ad8  1f8e0100  addli r28, r3, 0
000adc  37b10300  beq r7, zero, 76
000ae0  13012e04  setlt.u r2, r28, r2
000ae4  b7010100  beq r2, zero, 96
000ae8  13016e05  setlt.u r2, r28, r22
000aec  3b600100  bneq r2, zero, 24
000af0  1bc10a01  srli r2, r21, 16
000af4  1b011100  andi r2, r2, 1
000af8  0b912a10  add.s r2, r21, r2
000afc  0b11a111  add.s r2, r2, r26
000b00  170ae100  and r20, r2, r14
000b04  13016e04  setlt.u r2, r28, r6
000b08  630bcfff  loadli.w r22,  -32(r30)
000b0c  e344dfff  loadli.w r9,  -20(r30)
000b10  37510100  beq r2, zero, 84
000b14  1301be04  setlt.u r2, r28, r11
000b18  b7210100  beq r2, zero, 104
000b1c  93001e04  setlt.u r1, r28, r1
000b20  3bc800fe  bneq r1, zero, -496
000b24  5b0f0000  j 120
000b28  9b410501  srli r3, r10, 16
000b2c  9b811100  andi r3, r3, 1
000b30  8b113510  add.s r3, r10, r3
000b34  8b91a111  add.s r3, r3, r26
000b38  178ce100  and r24, r3, r14
000b3c  13012e04  setlt.u r2, r28, r2
000b40  bb2e01fe  bneq r2, zero, -88
000b44  1bc10401  srli r2, r9, 16
000b48  1b011100  andi r2, r2, 1
000b4c  0b912410  add.s r2, r9, r2
000b50  0b11a111  add.s r2, r2, r26
000b54  970ce100  and r25, r2, r14
000b58  13016e05  setlt.u r2, r28, r22
000b5c  375e01fe  beq r2, zero, -108
000b60  dbf4ffff  j -92
000b64  1bc10b01  srli r2, r23, 16
000b68  1b011100  andi r2, r2, 1
000b6c  0b912b10  add.s r2, r23, r2
000b70  0b11a111  add.s r2, r2, r26
000b74  1704e100  and r8, r2, r14
000b78  1301be04  setlt.u r2, r28, r11
000b7c  bb0e01fe  bneq r2, zero, -96
000b80  1b410601  srli r2, r12, 16
000b84  1b011100  andi r2, r2, 1
000b88  0b112610  add.s r2, r12, r2
000b8c  0b11a111  add.s r2, r2, r26
000b90  9709e100  and r19, r2, r14
000b94  93001e04  setlt.u r1, r28, r1
000b98  3be600fe  bneq r1, zero, -616
000b9c  6341cfff  loadli.w r2,  -28(r30)
000ba0  9b400101  srli r1, r2, 16
000ba4  9b801000  andi r1, r1, 1
000ba8  8b101110  add.s r1, r2, r1
000bac  8b90a011  add.s r1, r1, r26
000bb0  9784e000  and r9, r1, r14
000bb4  dbafffff  j -644
000bb8  9f400000  addli r1, zero, 4
000bbc  00200100  mfence { sm }
000bc0  33020028  zext_int2long r[5:6], zero
000bc4  7d800000  xsignal r1, 0
000bc8  9f101000  addli r1, zero, 9
000bcc  7d800000  xsignal r1, 0
000bd0  9f201000  addli r1, zero, 10
000bd4  7d800000  xsignal r1, 0
000bd8  9f501000  addli r1, zero, 13
000bdc  7d800000  xsignal r1, 0
000be0  9f700000  addli r1, zero, 7
000be4  7d800000  xsignal r1, 0
000be8  9f001000  addli r1, zero, 8
000bec  7d900000  xwait r1, 0
000bf0  9f002000  addli r1, zero, 16
000bf4  7d900000  xwait r1, 0
000bf8  9f202000  addli r1, zero, 18
000bfc  7d900000  xwait r1, 0
000c00  9f203000  addli r1, zero, 26
000c04  7d900000  xwait r1, 0
000c08  3d000000  xfence
000c0c  00a00300  mfence { lm, sm, gm }
000c10  eb5b8fff  load.d r[24:25], -8(r30)
000c14  5b060000  j 48
000c18  27420200  addli.d r[5:6], r[5:6], 4
000c1c  9fc01420  addli r1, r9, 4108
000c20  1f830420  addli r6, r9, 4096
000c24  13217203  setneq.d r2, r[5:6], r[24:25]
000c28  73e08000  stores.w r8, 0(r1)
000c2c  9f801420  addli r1, r9, 4104
000c30  1fc40420  addli r8, r9, 4100
000c34  73603300  stores.w r3, 0(r6)
000c38  73e07000  stores.w r7, 0(r1)
000c3c  7360a400  stores.w r10, 0(r8)
000c40  b7050100  beq r2, zero, 352
000c44  9b342200  slli r9, r4, 2
000c48  2b07807f  lui r14, 522240
000c4c  9f811460  addli r3, r9, 12296
000c50  9f800460  addli r1, r9, 12288
000c54  1fc10460  addli r2, r9, 12292
000c58  1f831440  addli r6, r9, 8200
000c5c  1fc61470  addli r12, r9, 14348
000c60  efc30100  loads.w r7, 0(r3)
000c64  9f810440  addli r3, r9, 8192
000c68  6fc40000  loads.w r8, 0(r1)
000c6c  9fc01460  addli r1, r9, 12300
000c70  6f450100  loads.w r10, 0(r2)
000c74  ef450300  loads.w r11, 0(r6)
000c78  efc10100  loads.w r3, 0(r3)
000c7c  6fc10000  loads.w r2, 0(r1)
000c80  9fc00440  addli r1, r9, 8196
000c84  efc60000  loads.w r13, 0(r1)
000c88  9fc01440  addli r1, r9, 8204
000c8c  6fc30000  loads.w r6, 0(r1)
000c90  ef400600  loads.w r1, 0(r12)
000c94  1f861470  addli r12, r9, 14344
000c98  6f460600  loads.w r12, 0(r12)
000c9c  1704b401  and r8, r8, r27
000ca0  9781b101  and r3, r3, r27
000ca4  13083401  seteq r16, r8, r19
000ca8  13893101  seteq r18, r3, r19
000cac  93880100  seteq r17, r3, zero
000cb0  8b013448  max.u r3, r8, r3
000cb4  93090400  seteq r19, r8, zero
000cb8  1fc40470  addli r8, r9, 14340
000cbc  ef470400  loads.w r15, 0(r8)
000cc0  93013704  setlt.u r3, r14, r3
000cc4  17041801  and r8, r16, r17
000cc8  17882901  and r16, r19, r18
000ccc  17140401  or r8, r8, r16
000cd0  17988100  or r16, r3, r8
000cd4  2b04c07f  lui r8, 523264
000cd8  ab01c07f  lui r3, 523264
000cdc  3b300800  bneq r16, zero, 12
000ce0  9f810470  addli r3, r9, 14336
000ce4  efc10100  loads.w r3, 0(r3)
000ce8  1705b501  and r10, r10, r27
000cec  9786b601  and r13, r13, r27
000cf0  1308e500  seteq r16, r10, r14
000cf4  93090500  seteq r19, r10, zero
000cf8  93880600  seteq r17, r13, zero
000cfc  1389e600  seteq r18, r13, r14
000d00  0b05d548  max.u r10, r10, r13
000d04  1305a704  setlt.u r10, r14, r10
000d08  97061801  and r13, r16, r17
000d0c  17882901  and r16, r19, r18
000d10  97960601  or r13, r13, r16
000d14  9716d500  or r13, r10, r13
000d18  2b05c07f  lui r10, 523264
000d1c  3ba00600  bneq r13, zero, 8
000d20  1f850700  addli r10, r15, 0
000d24  9783b301  and r7, r7, r27
000d28  9785b501  and r11, r11, r27
000d2c  ab09807f  lui r19, 522240
000d30  93863301  seteq r13, r7, r19
000d34  93880300  seteq r17, r7, zero
000d38  93870500  seteq r15, r11, zero
000d3c  13883501  seteq r16, r11, r19
000d40  8b83b348  max.u r7, r7, r11
000d44  93837904  setlt.u r7, r19, r7
000d48  9785f600  and r11, r13, r15
000d4c  97860801  and r13, r17, r16
000d50  9795d500  or r11, r11, r13
000d54  9795b300  or r11, r7, r11
000d58  ab03c07f  lui r7, 523264
000d5c  3ba00500  bneq r11, zero, 8
000d60  9f030600  addli r7, r12, 0
000d64  1701b101  and r2, r2, r27
000d68  1703b301  and r6, r6, r27
000d6c  93053101  seteq r11, r2, r19
000d70  93070100  seteq r15, r2, zero
000d74  13060300  seteq r12, r6, zero
000d78  93063301  seteq r13, r6, r19
000d7c  0b016148  max.u r2, r2, r6
000d80  13812904  setlt.u r2, r19, r2
000d84  1783c500  and r6, r11, r12
000d88  9785d700  and r11, r15, r13
000d8c  1713b300  or r6, r6, r11
000d90  17116100  or r2, r2, r6
000d94  3b1a01fe  bneq r2, zero, -380
000d98  1f840000  addli r8, r1, 0
000d9c  dbcfffff  j -388
000da0  9f301000  addli r1, zero, 11
000da4  00200100  mfence { sm }
000da8  2b070080  lui r14, 524288
000dac  2b088041  lui r16, 268288
000db0  7d800000  xsignal r1, 0
000db4  9f102000  addli r1, zero, 17
000db8  7d800000  xsignal r1, 0
000dbc  9f302000  addli r1, zero, 19
000dc0  7d800000  xsignal r1, 0
000dc4  9f402000  addli r1, zero, 20
000dc8  7d800000  xsignal r1, 0
000dcc  9f303000  addli r1, zero, 27
000dd0  7d900000  xwait r1, 0
000dd4  9f703000  addli r1, zero, 31
000dd8  7d900000  xwait r1, 0
000ddc  3d000000  xfence
000de0  b3000028  zext_int2long r[2:3], zero
000de4  00a00300  mfence { lm, sm, gm }
000de8  9bb12000  slli r3, r1, 2
000dec  1b928c00  ori r4, r25, 8
000df0  1b930c01  ori r6, r25, 16
000df4  a7801000  addli.d r[2:3], r[2:3], 8
000df8  0b924110  add.s r4, r3, r4
000dfc  8b929111  add.s r5, r3, r25
000e00  0b936110  add.s r6, r3, r6
000e04  93a67003  setneq.d r13, r[2:3], r[24:25]
000e08  9f870130  addli r15, r3, 6144
000e0c  ef530200  loads.d r[8:9], 0(r4)
000e10  1b928c01  ori r4, r25, 24
000e14  ef550300  loads.d r[12:13], 0(r6)
000e18  efd40200  loads.d r[10:11], 0(r5)
000e1c  1f831130  addli r6, r3, 6152
000e20  0b924110  add.s r4, r3, r4
000e24  6f520200  loads.d r[5:6], 0(r4)
000e28  73707300  stores.d r[8:9], 0(r6)
000e2c  1f832130  addli r6, r3, 6160
000e30  9f813130  addli r3, r3, 6168
000e34  73f09700  stores.d r[10:11], 0(r15)
000e38  7370b300  stores.d r[12:13], 0(r6)
000e3c  73f04100  stores.d r[5:6], 0(r3)
000e40  bbae06fe  bneq r13, zero, -88
000e44  9f403000  addli r1, zero, 28
000e48  00200100  mfence { sm }
000e4c  1f513000  addli r2, zero, 29
000e50  33020028  zext_int2long r[5:6], zero
000e54  7d800000  xsignal r1, 0
000e58  9f502000  addli r1, zero, 21
000e5c  7d000100  xsignal r2, 0
000e60  7d900000  xwait r1, 0
000e64  7d100100  xwait r2, 0
000e68  3d000000  xfence
000e6c  00a00300  mfence { lm, sm, gm }
000e70  5b0a0000  j 80
000e74  9fc31420  addli r7, r9, 4108
000e78  27021200  addli.d r[5:6], r[5:6], 8
000e7c  1f830420  addli r6, r9, 4096
000e80  9f852420  addli r11, r9, 4112
000e84  73e0c300  stores.w r12, 0(r7)
000e88  1fc60420  addli r12, r9, 4100
000e8c  9f831420  addli r7, r9, 4104
000e90  73601300  stores.w r1, 0(r6)
000e94  9f803420  addli r1, r9, 4120
000e98  73e03500  stores.w r3, 0(r11)
000e9c  7360f600  stores.w r15, 0(r12)
000ea0  13267203  setneq.d r12, r[5:6], r[24:25]
000ea4  73e0d300  stores.w r13, 0(r7)
000ea8  9fc33420  addli r7, r9, 4124
000eac  73e0a000  stores.w r10, 0(r1)
000eb0  73e02300  stores.w r2, 0(r7)
000eb4  1fc12420  addli r2, r9, 4116
000eb8  73608100  stores.w r8, 0(r2)
000ebc  b7330600  beq r12, zero, 236
000ec0  9b342200  slli r9, r4, 2
000ec4  9f800430  addli r1, r9, 6144
000ec8  1fc11430  addli r2, r9, 6156
000ecc  1fc33430  addli r6, r9, 6172
000ed0  9f812430  addli r3, r9, 6160
000ed4  9fc32430  addli r7, r9, 6164
000ed8  efc00000  loads.w r1, 0(r1)
000edc  6f460100  loads.w r12, 0(r2)
000ee0  1f811430  addli r2, r9, 6152
000ee4  6fc40300  loads.w r8, 0(r7)
000ee8  efc10100  loads.w r3, 0(r3)
000eec  ef460100  loads.w r13, 0(r2)
000ef0  1fc10430  addli r2, r9, 6148
000ef4  ef470100  loads.w r15, 0(r2)
000ef8  6f410300  loads.w r2, 0(r6)
000efc  1f833430  addli r6, r9, 6168
000f00  6f450300  loads.w r10, 0(r6)
000f04  1783b001  and r6, r1, r27
000f08  13036804  setlt.u r6, r16, r6
000f0c  37300300  beq r6, zero, 12
000f10  9780e000  and r1, r1, r14
000f14  97900001  or r1, r1, r16
000f18  1783b701  and r6, r15, r27
000f1c  13036804  setlt.u r6, r16, r6
000f20  37300300  beq r6, zero, 12
000f24  1783e700  and r6, r15, r14
000f28  97170301  or r15, r6, r16
000f2c  1783b601  and r6, r13, r27
000f30  13036804  setlt.u r6, r16, r6
000f34  37300300  beq r6, zero, 12
000f38  1783e600  and r6, r13, r14
000f3c  97160301  or r13, r6, r16
000f40  1703b601  and r6, r12, r27
000f44  13036804  setlt.u r6, r16, r6
000f48  37300300  beq r6, zero, 12
000f4c  1703e600  and r6, r12, r14
000f50  17160301  or r12, r6, r16
000f54  1783b101  and r6, r3, r27
000f58  13036804  setlt.u r6, r16, r6
000f5c  37300300  beq r6, zero, 12
000f60  9781e100  and r3, r3, r14
000f64  97910101  or r3, r3, r16
000f68  1703b401  and r6, r8, r27
000f6c  13036804  setlt.u r6, r16, r6
000f70  37300300  beq r6, zero, 12
000f74  1703e400  and r6, r8, r14
000f78  17140301  or r8, r6, r16
000f7c  1703b501  and r6, r10, r27
000f80  13036804  setlt.u r6, r16, r6
000f84  37300300  beq r6, zero, 12
000f88  1703e500  and r6, r10, r14
000f8c  17150301  or r10, r6, r16
000f90  1703b101  and r6, r2, r27
000f94  13036804  setlt.u r6, r16, r6
000f98  377b03fe  beq r6, zero, -292
000f9c  1701e100  and r2, r2, r14
000fa0  17110101  or r2, r2, r16
000fa4  5bdaffff  j -304
000fa8  9f602000  addli r1, zero, 22
000fac  00200100  mfence { sm }
000fb0  1f613000  addli r2, zero, 30
000fb4  b30b0028  zext_int2long r[24:25], zero
000fb8  7d800000  xsignal r1, 0
000fbc  9f702000  addli r1, zero, 23
000fc0  7d000100  xsignal r2, 0
000fc4  7d900000  xwait r1, 0
000fc8  9f204000  addli r1, zero, 34
000fcc  7d100100  xwait r2, 0
000fd0  7d900000  xwait r1, 0
000fd4  3d000000  xfence
000fd8  00a00300  mfence { lm, sm, gm }
000fdc  db0e0000  j 116
000fe0  1b988c80  ori r16, r25, 2056
000fe4  9b97cc80  ori r15, r25, 2060
000fe8  6b538fff  load.d r[7:8], -8(r30)
000fec  a78b1b00  addli.d r[24:25], r[24:25], 8
000ff0  0b910811  add.s r2, r17, r16
000ff4  8b90f810  add.s r1, r17, r15
000ff8  73604100  stores.w r4, 0(r2)
000ffc  1b924c80  ori r4, r25, 2052
001000  73e05001  stores.w r21, 0(r1)
001004  e300efff  loadli.w r1,  -16(r30)
001008  1b910c81  ori r2, r25, 2064
00100c  8b914810  add.s r3, r17, r4
001010  0b912810  add.s r2, r17, r2
001014  8b901810  add.s r1, r17, r1
001018  73e0d100  stores.w r13, 0(r3)
00101c  9b91cc81  ori r3, r25, 2076
001020  73605100  stores.w r5, 0(r2)
001024  73e08000  stores.w r8, 0(r1)
001028  8b903810  add.s r1, r17, r3
00102c  9b918c81  ori r3, r25, 2072
001030  73e0c000  stores.w r12, 0(r1)
001034  93a06b00  seteq.d r1, r[24:25], r[7:8]
001038  1b934c81  ori r6, r25, 2068
00103c  8b913810  add.s r3, r17, r3
001040  0b936810  add.s r6, r17, r6
001044  73e0a100  stores.w r10, 0(r3)
001048  73609300  stores.w r9, 0(r6)
00104c  bbc50000  bneq r1, zero, 368
001050  9bb82b00  slli r17, r23, 2
001054  9f800830  addli r1, r17, 6144
001058  1fc23830  addli r4, r17, 6172
00105c  9fc10830  addli r3, r17, 6148
001060  9f841820  addli r9, r17, 4104
001064  1f812830  addli r2, r17, 6160
001068  9f822820  addli r5, r17, 4112
00106c  1fc53820  addli r10, r17, 4124
001070  1fc82820  addli r16, r17, 4116
001074  6fc40000  loads.w r8, 0(r1)
001078  9f801830  addli r1, r17, 6152
00107c  ef470200  loads.w r15, 0(r4)
001080  1fc21820  addli r4, r17, 4108
001084  efc30100  loads.w r7, 0(r3)
001088  9fc11830  addli r3, r17, 6156
00108c  6f460500  loads.w r12, 0(r10)
001090  efc20200  loads.w r5, 0(r5)
001094  6fc30000  loads.w r6, 0(r1)
001098  ef4a0200  loads.w r21, 0(r4)
00109c  6fc20400  loads.w r4, 0(r9)
0010a0  9fc40820  addli r9, r17, 4100
0010a4  9fc02830  addli r1, r17, 6164
0010a8  efc50100  loads.w r11, 0(r3)
0010ac  ef410100  loads.w r3, 0(r2)
0010b0  6fc10000  loads.w r2, 0(r1)
0010b4  9f803830  addli r1, r17, 6168
0010b8  efc60400  loads.w r13, 0(r9)
0010bc  9f843820  addli r9, r17, 4120
0010c0  6fc50400  loads.w r10, 0(r9)
0010c4  ef440800  loads.w r9, 0(r16)
0010c8  efc00000  loads.w r1, 0(r1)
0010cc  17083401  and r16, r8, r19
0010d0  17096401  and r18, r8, r22
0010d4  13083801  seteq r16, r16, r19
0010d8  13090902  setneq r18, r18, zero
0010dc  17082801  and r16, r16, r18
0010e0  3b400800  bneq r16, zero, 16
0010e4  1f840820  addli r8, r17, 4096
0010e8  6f440400  loads.w r8, 0(r8)
0010ec  5b010000  j 8
0010f0  17144401  or r8, r8, r20
0010f4  17883301  and r16, r7, r19
0010f8  17896301  and r18, r7, r22
0010fc  13083801  seteq r16, r16, r19
001100  13090902  setneq r18, r18, zero
001104  17082801  and r16, r16, r18
001108  37200800  beq r16, zero, 8
00110c  97964301  or r13, r7, r20
001110  97033301  and r7, r6, r19
001114  17086301  and r16, r6, r22
001118  93833301  seteq r7, r7, r19
00111c  13080802  setneq r16, r16, zero
001120  97830301  and r7, r7, r16
001124  37a00300  beq r7, zero, 8
001128  17124301  or r4, r6, r20
00112c  17833501  and r6, r11, r19
001130  97836501  and r7, r11, r22
001134  13033301  seteq r6, r6, r19
001138  93830302  setneq r7, r7, zero
00113c  17037300  and r6, r6, r7
001140  37200300  beq r6, zero, 8
001144  979a4501  or r21, r11, r20
001148  17833101  and r6, r3, r19
00114c  97836101  and r7, r3, r22
001150  13033301  seteq r6, r6, r19
001154  93830302  setneq r7, r7, zero
001158  17037300  and r6, r6, r7
00115c  37200300  beq r6, zero, 8
001160  97924101  or r5, r3, r20
001164  97013101  and r3, r2, r19
001168  17036101  and r6, r2, r22
00116c  93813101  seteq r3, r3, r19
001170  13030302  setneq r6, r6, zero
001174  97816100  and r3, r3, r6
001178  37a00100  beq r3, zero, 8
00117c  97144101  or r9, r2, r20
001180  17813001  and r2, r1, r19
001184  97816001  and r3, r1, r22
001188  13013101  seteq r2, r2, r19
00118c  93810102  setneq r3, r3, zero
001190  17013100  and r2, r2, r3
001194  37200100  beq r2, zero, 8
001198  17954001  or r10, r1, r20
00119c  97803701  and r1, r15, r19
0011a0  17816701  and r2, r15, r22
0011a4  93803001  seteq r1, r1, r19
0011a8  13010102  setneq r2, r2, zero
0011ac  97802000  and r1, r1, r2
0011b0  b7c800fe  beq r1, zero, -464
0011b4  17964701  or r12, r15, r20
0011b8  5bc5ffff  j -472
0011bc  1f013000  addli r2, zero, 24
0011c0  9f703000  addli r1, zero, 31
0011c4  00200100  mfence { sm }
0011c8  b30b0028  zext_int2long r[24:25], zero
0011cc  7d000100  xsignal r2, 0
0011d0  7d800000  xsignal r1, 0
0011d4  9f004000  addli r1, zero, 32
0011d8  7d800000  xsignal r1, 0
0011dc  9f601000  addli r1, zero, 14
0011e0  7d900000  xwait r1, 0
0011e4  9f104000  addli r1, zero, 33
0011e8  7d100100  xwait r2, 0
0011ec  7d900000  xwait r1, 0
0011f0  9f304000  addli r1, zero, 35
0011f4  7d900000  xwait r1, 0
0011f8  3d000000  xfence
0011fc  00a00300  mfence { lm, sm, gm }
001200  db060000  j 52
001204  6b518fff  load.d r[3:4], -8(r30)
001208  a7cb0b00  addli.d r[24:25], r[24:25], 4
00120c  9fc01820  addli r1, r17, 4108
001210  9fc20820  addli r5, r17, 4100
001214  73e08000  stores.w r8, 0(r1)
001218  9f801820  addli r1, r17, 4104
00121c  73e07200  stores.w r7, 0(r5)
001220  13a12b02  setneq.d r2, r[24:25], r[3:4]
001224  9f810820  addli r3, r17, 4096
001228  73e09000  stores.w r9, 0(r1)
00122c  73e0a100  stores.w r10, 0(r3)
001230  b76101f8  beq r2, zero, -3976
001234  6303efff  loadli.w r6,  -16(r30)
001238  9bb82b00  slli r17, r23, 2
00123c  ab560000  lui r13, 5
001240  2b07807f  lui r14, 522240
001244  9f800850  addli r1, r17, 10240
001248  9fc21850  addli r5, r17, 10252
00124c  8b930811  add.s r7, r17, r16
001250  1b94c600  ori r8, r13, 12
001254  1b968600  ori r12, r13, 8
001258  1fc10850  addli r2, r17, 10244
00125c  9f811850  addli r3, r17, 10248
001260  0b936810  add.s r6, r17, r6
001264  efc00000  loads.w r1, 0(r1)
001268  efc40200  loads.w r9, 0(r5)
00126c  6f410100  loads.w r2, 0(r2)
001270  efc10100  loads.w r3, 0(r3)
001274  ef420300  loads.w r5, 0(r6)
001278  0b934810  add.s r6, r17, r4
00127c  ef450300  loads.w r11, 0(r6)
001280  6fc30300  loads.w r6, 0(r7)
001284  8b93f810  add.s r7, r17, r15
001288  6fc50300  loads.w r10, 0(r7)
00128c  8b938810  add.s r7, r17, r8
001290  6fc40300  loads.w r8, 0(r7)
001294  8b93c810  add.s r7, r17, r12
001298  1b964600  ori r12, r13, 4
00129c  0b96c810  add.s r12, r17, r12
0012a0  efc30300  loads.w r7, 0(r7)
0012a4  9780b001  and r1, r1, r27
0012a8  6f460600  loads.w r12, 0(r12)
0012ac  9782b201  and r5, r5, r27
0012b0  93863001  seteq r13, r1, r19
0012b4  13890200  seteq r18, r5, zero
0012b8  9389e200  seteq r19, r5, r14
0012bc  8b825048  max.u r5, r1, r5
0012c0  93800000  seteq r1, r1, zero
0012c4  93025704  setlt.u r5, r14, r5
0012c8  97862601  and r13, r13, r18
0012cc  97803001  and r1, r1, r19
0012d0  97901600  or r1, r13, r1
0012d4  97961200  or r13, r5, r1
0012d8  ab02c07f  lui r5, 523264
0012dc  ab00c07f  lui r1, 523264
0012e0  3bc00600  bneq r13, zero, 16
0012e4  ab500000  lui r1, 5
0012e8  8b901810  add.s r1, r17, r1
0012ec  efc00000  loads.w r1, 0(r1)
0012f0  1701b101  and r2, r2, r27
0012f4  9785b501  and r11, r11, r27
0012f8  9306e100  seteq r13, r2, r14
0012fc  130a0100  seteq r20, r2, zero
001300  13890500  seteq r18, r11, zero
001304  9389e500  seteq r19, r11, r14
001308  0b01b148  max.u r2, r2, r11
00130c  13012704  setlt.u r2, r14, r2
001310  97852601  and r11, r13, r18
001314  97063a01  and r13, r20, r19
001318  9795d500  or r11, r11, r13
00131c  9715b100  or r11, r2, r11
001320  2b01c07f  lui r2, 523264
001324  3ba00500  bneq r11, zero, 8
001328  1f010600  addli r2, r12, 0
00132c  9781b101  and r3, r3, r27
001330  1703b301  and r6, r6, r27
001334  ab09807f  lui r19, 522240
001338  2b07ffff  lui r14, 1048560
00133c  93853101  seteq r11, r3, r19
001340  13890100  seteq r18, r3, zero
001344  13060300  seteq r12, r6, zero
001348  93063301  seteq r13, r6, r19
00134c  8b816148  max.u r3, r3, r6
001350  93813904  setlt.u r3, r19, r3
001354  1783c500  and r6, r11, r12
001358  9705d900  and r11, r18, r13
00135c  2b094000  lui r18, 1024
001360  1713b300  or r6, r6, r11
001364  17936100  or r6, r3, r6
001368  ab01c07f  lui r3, 523264
00136c  3b200300  bneq r6, zero, 8
001370  9f810300  addli r3, r7, 0
001374  1783b401  and r6, r9, r27
001378  9703b501  and r7, r10, r27
00137c  93043301  seteq r9, r6, r19
001380  13060300  seteq r12, r6, zero
001384  13850300  seteq r10, r7, zero
001388  93853301  seteq r11, r7, r19
00138c  0b037348  max.u r6, r6, r7
001390  13836904  setlt.u r6, r19, r6
001394  9783a400  and r7, r9, r10
001398  9704b600  and r9, r12, r11
00139c  97939300  or r7, r7, r9
0013a0  17137300  or r6, r6, r7
0013a4  3b200300  bneq r6, zero, 8
0013a8  9f020400  addli r5, r8, 0
0013ac  1783b201  and r6, r5, r27
0013b0  93836904  setlt.u r7, r19, r6
0013b4  3bb00300  bneq r7, zero, 12
0013b8  1f840200  addli r8, r5, 0
0013bc  5b010000  j 8
0013c0  17942201  or r8, r5, r18
0013c4  9785b101  and r11, r3, r27
0013c8  9383b904  setlt.u r7, r19, r11
0013cc  3bb00300  bneq r7, zero, 12
0013d0  9f840100  addli r9, r3, 0
0013d4  5b010000  j 8
0013d8  97942101  or r9, r3, r18
0013dc  1706b101  and r12, r2, r27
0013e0  9383c904  setlt.u r7, r19, r12
0013e4  3bb00300  bneq r7, zero, 12
0013e8  9f030100  addli r7, r2, 0
0013ec  5b010000  j 8
0013f0  97132101  or r7, r2, r18
0013f4  9786b001  and r13, r1, r27
0013f8  1385d904  setlt.u r10, r19, r13
0013fc  3b500500  bneq r10, zero, 20
001400  1f850000  addli r10, r1, 0
001404  9306de04  setlt.u r13, r28, r13
001408  37d00600  beq r13, zero, 20
00140c  db040000  j 36
001410  17952001  or r10, r1, r18
001414  9306de04  setlt.u r13, r28, r13
001418  3be00600  bneq r13, zero, 24
00141c  1bc50001  srli r10, r1, 16
001420  1b051500  andi r10, r10, 1
001424  8b90a010  add.s r1, r1, r10
001428  8b90a011  add.s r1, r1, r26
00142c  1785e000  and r10, r1, r14
001430  9300ce04  setlt.u r1, r28, r12
001434  37e00000  beq r1, zero, 24
001438  9300be04  setlt.u r1, r28, r11
00143c  b7b00000  beq r1, zero, 44
001440  93006e04  setlt.u r1, r28, r6
001444  3b8700fe  bneq r1, zero, -576
001448  db070000  j 60
00144c  9b400101  srli r1, r2, 16
001450  9b801000  andi r1, r1, 1
001454  8b101110  add.s r1, r2, r1
001458  8b90a011  add.s r1, r1, r26
00145c  9783e000  and r7, r1, r14
001460  9300be04  setlt.u r1, r28, r11
001464  3bff00fe  bneq r1, zero, -36
001468  9bc00101  srli r1, r3, 16
00146c  9b801000  andi r1, r1, 1
001470  8b901110  add.s r1, r3, r1
001474  8b90a011  add.s r1, r1, r26
001478  9784e000  and r9, r1, r14
00147c  93006e04  setlt.u r1, r28, r6
001480  3b9600fe  bneq r1, zero, -636
001484  9bc00201  srli r1, r5, 16
001488  9b801000  andi r1, r1, 1
00148c  8b901210  add.s r1, r5, r1
001490  8b90a011  add.s r1, r1, r26
001494  1784e000  and r8, r1, r14
001498  dbadffff  j -660
00149c  9f500000  addli r1, zero, 5
0014a0  7d100700  xwait r14, 0
0014a4  2b01803f  lui r2, 260096
0014a8  9f713000  addli r3, zero, 31
0014ac  1f022000  addli r4, zero, 16
0014b0  1f330000  addli r6, zero, 3
0014b4  ab03003f  lui r7, 258048
0014b8  1f040040  addli r8, zero, 8192
0014bc  9f241000  addli r9, zero, 10
0014c0  7d900000  xwait r1, 0
0014c4  1d000700  lock zero, r14
0014c8  9f000010  addli r1, zero, 2048
0014cc  0d000002  ew_cfg zero, zero, zero, 1
0014d0  0d110100  ewcoeff_cfg r2, r2, zero, 0
0014d4  0d800104  ew_cfg zero, r3, zero, 2
0014d8  0d020006  ew_cfg r4, zero, zero, 3
0014dc  0d024226  ew_cfg r4, r4, r4, 19
0014e0  2d001000  dsmadd zero, zero, r1, 0
0014e4  9f600000  addli r1, zero, 6
0014e8  0d000026  ew_cfg zero, zero, zero, 19
0014ec  1d100700  unlock r14
0014f0  7d000300  xsignal r6, 0
0014f4  7d800000  xsignal r1, 0
0014f8  9f700000  addli r1, zero, 7
0014fc  7d900000  xwait r1, 0
001500  9f701000  addli r1, zero, 15
001504  7d900000  xwait r1, 0
001508  1d000700  lock zero, r14
00150c  9f000050  addli r1, zero, 10240
001510  0d000002  ew_cfg zero, zero, zero, 1
001514  8d130000  ewcoeff_cfg r7, zero, zero, 0
001518  0d800104  ew_cfg zero, r3, zero, 2
00151c  0d020006  ew_cfg r4, zero, zero, 3
001520  0d020226  ew_cfg r4, r4, zero, 19
001524  cd508400  hp_ssmul r1, r8, r8, 0
001528  9f101000  addli r1, zero, 9
00152c  0d000026  ew_cfg zero, zero, zero, 19
001530  1d100700  unlock r14
001534  7d000b00  xsignal r22, 0
001538  7d900000  xwait r1, 0
00153c  9f102000  addli r1, zero, 17
001540  7d900000  xwait r1, 0
001544  1d000700  lock zero, r14
001548  9f000060  addli r1, zero, 12288
00154c  0d000002  ew_cfg zero, zero, zero, 1
001550  0d102000  ewcoeff_cfg zero, zero, r2, 0
001554  0d800104  ew_cfg zero, r3, zero, 2
001558  0d020006  ew_cfg r4, zero, zero, 3
00155c  0d024226  ew_cfg r4, r4, r4, 19
001560  ad108400  dsmul r1, r8, r8, 0
001564  0d000026  ew_cfg zero, zero, zero, 19
001568  1d100700  unlock r14
00156c  7d900400  xwait r9, 0
001570  9f342000  addli r9, zero, 19
001574  7d900400  xwait r9, 0
001578  1d000700  lock zero, r14
00157c  9f040070  addli r9, zero, 14336
001580  0d000002  ew_cfg zero, zero, zero, 1
001584  0d102000  ewcoeff_cfg zero, zero, r2, 0
001588  0d800104  ew_cfg zero, r3, zero, 2
00158c  0d020006  ew_cfg r4, zero, zero, 3
001590  0d024226  ew_cfg r4, r4, r4, 19
001594  ad948000  dsmul r9, r1, r8, 0
001598  9f001000  addli r1, zero, 8
00159c  9f040020  addli r9, zero, 4096
0015a0  0d000026  ew_cfg zero, zero, zero, 19
0015a4  1d100700  unlock r14
0015a8  7d800000  xsignal r1, 0
0015ac  9f202000  addli r1, zero, 18
0015b0  7d000200  xsignal r4, 0
0015b4  7d800000  xsignal r1, 0
0015b8  9f301000  addli r1, zero, 11
0015bc  7d900000  xwait r1, 0
0015c0  9f402000  addli r1, zero, 20
0015c4  7d900000  xwait r1, 0
0015c8  9f403000  addli r1, zero, 28
0015cc  7d900000  xwait r1, 0
0015d0  1d000700  lock zero, r14
0015d4  0d000002  ew_cfg zero, zero, zero, 1
0015d8  e3407fff  loadli.w r1,  -68(r30)
0015dc  0d910000  ewcoeff_cfg r2, r1, zero, 0
0015e0  9f502000  addli r1, zero, 21
0015e4  0d800104  ew_cfg zero, r3, zero, 2
0015e8  0d020006  ew_cfg r4, zero, zero, 3
0015ec  0d024226  ew_cfg r4, r4, r4, 19
0015f0  ad0c9400  dsmadd r25, r8, r9, 0
0015f4  0d000026  ew_cfg zero, zero, zero, 19
0015f8  1d100700  unlock r14
0015fc  7d800000  xsignal r1, 0
001600  1d000700  lock zero, r14
001604  0d000002  ew_cfg zero, zero, zero, 1
001608  e3007fff  loadli.w r1,  -72(r30)
00160c  8d100000  ewcoeff_cfg r1, zero, zero, 0
001610  9f303000  addli r1, zero, 27
001614  0d800104  ew_cfg zero, r3, zero, 2
001618  0d020006  ew_cfg r4, zero, zero, 3
00161c  0d020226  ew_cfg r4, r4, zero, 19
001620  cddc9c01  hp_ssmul r25, r25, r25, 0
001624  0d000026  ew_cfg zero, zero, zero, 19
001628  1d100700  unlock r14
00162c  7d800000  xsignal r1, 0
001630  9f602000  addli r1, zero, 22
001634  7d900000  xwait r1, 0
001638  1d000700  lock zero, r14
00163c  0d000002  ew_cfg zero, zero, zero, 1
001640  0d800104  ew_cfg zero, r3, zero, 2
001644  0d020006  ew_cfg r4, zero, zero, 3
001648  0d020226  ew_cfg r4, r4, zero, 19
00164c  0d030014  ew_cfg r6, zero, zero, 10
001650  1f430000  addli r6, zero, 4
001654  e3406fff  loadli.w r1,  -76(r30)
001658  0d071e16  ew_cfg r14, r28, r1, 11
00165c  abc07f41  lui r1, 268284
001660  0d00001a  ew_cfg zero, zero, zero, 13
001664  0d00131c  ew_cfg zero, r6, r1, 14
001668  9f702000  addli r1, zero, 23
00166c  0d00001e  ew_cfg zero, zero, zero, 15
001670  cda40400  sslut r9, r9, 0
001674  0d000014  ew_cfg zero, zero, zero, 10
001678  0d000026  ew_cfg zero, zero, zero, 19
00167c  1d100700  unlock r14
001680  7d800000  xsignal r1, 0
001684  9f004000  addli r1, zero, 32
001688  7d900000  xwait r1, 0
00168c  1d000700  lock zero, r14
001690  9f501000  addli r1, zero, 13
001694  0d000002  ew_cfg zero, zero, zero, 1
001698  0d112000  ewcoeff_cfg r2, zero, r2, 0
00169c  0d800104  ew_cfg zero, r3, zero, 2
0016a0  0d020006  ew_cfg r4, zero, zero, 3
0016a4  0d020226  ew_cfg r4, r4, zero, 19
0016a8  6301efff  loadli.w r2,  -16(r30)
0016ac  2d012100  dsmadd r2, r2, r2, 0
0016b0  0d000026  ew_cfg zero, zero, zero, 19
0016b4  1d100700  unlock r14
0016b8  7d900000  xwait r1, 0
0016bc  9f404000  addli r1, zero, 36
0016c0  7d900000  xwait r1, 0
0016c4  1d000700  lock zero, r14
0016c8  ab500000  lui r1, 5
0016cc  0d000002  ew_cfg zero, zero, zero, 1
0016d0  0d107000  ewcoeff_cfg zero, zero, r7, 0
0016d4  0d800104  ew_cfg zero, r3, zero, 2
0016d8  0d020006  ew_cfg r4, zero, zero, 3
0016dc  0d024226  ew_cfg r4, r4, r4, 19
0016e0  ad102400  dsmul r1, r8, r2, 0
0016e4  9f401000  addli r1, zero, 12
0016e8  0d000026  ew_cfg zero, zero, zero, 19
0016ec  1d100700  unlock r14
0016f0  7d800000  xsignal r1, 0
0016f4  9f104000  addli r1, zero, 33
0016f8  7d800000  xsignal r1, 0
0016fc  9f304000  addli r1, zero, 35
001700  db0d0000  j 108
001704  3bff02f4  bneq r5, zero, -5156
001708  9f113000  addli r3, zero, 25
00170c  97b0c803  sll.d r[2:3], r[18:19], r28
001710  1f038020  addli r6, zero, 4160
001714  7d900100  xwait r3, 0
001718  eb510f01  load.d r[4:5], 16(r30)
00171c  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
001720  9f510000  addli r3, zero, 5
001724  1f028000  addli r4, zero, 64
001728  1d800100  lock zero, r3
00172c  150e0e00  dma_cfg r28, r28, zero, 0
001730  15000e02  dma_cfg zero, r28, zero, 1
001734  15010004  dma_cfg r2, zero, zero, 2
001738  95004306  dma_cfg r1, r6, r4, 3
00173c  9f002000  addli r1, zero, 16
001740  1f010001  addli r2, zero, 128
001744  15021108  dma_cfg r4, r2, r1, 4
001748  9f000010  addli r1, zero, 2048
00174c  1f010008  addli r2, zero, 1024
001750  1581c00b  dma_cfg r2, r1, r28, 5
001754  9f203000  addli r1, zero, 26
001758  15000010  dma_cfg zero, zero, zero, 8
00175c  35000000  dma_run zero
001760  1500c00b  dma_cfg zero, zero, r28, 5
001764  15000010  dma_cfg zero, zero, zero, 8
001768  1d900100  unlock r3
00176c  7d800000  xsignal r1, 0
001770  5b6efdff  j -5264
001774  7d000000  xsignal zero, 0
001778  bbe00200  bneq r5, zero, 56
00177c  9f200000  addli r1, zero, 2
001780  7d100000  xwait zero, 0
001784  7d100000  xwait zero, 0
001788  7d100000  xwait zero, 0
00178c  7d100000  xwait zero, 0
001790  7d100000  xwait zero, 0
001794  7d100000  xwait zero, 0
001798  7d100000  xwait zero, 0
00179c  7d100000  xwait zero, 0
0017a0  1d800000  lock zero, r1
0017a4  0d000020  ew_cfg zero, zero, zero, 16
0017a8  1d900000  unlock r1
0017ac  7d400000  xsignal_mode_cfg zero
0017b0  9f8eae00  addli sp, sp, 80
0017b4  00a00300  mfence { lm, sm, gm }
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
0018fc  00100000  exit
001900  00100000  exit
001904  00100000  exit
001908  00100000  exit
00190c  00100000  exit
001910  00100000  exit
001914  00100000  exit
001918  00100000  exit
00191c  00100000  exit
001920  00100000  exit
001924  00100000  exit
001928  00100000  exit
00192c  00100000  exit
001930  00100000  exit
001934  00100000  exit
001938  00100000  exit
00193c  00100000  exit
001940  00100000  exit
001944  00100000  exit
001948  00100000  exit
00194c  00100000  exit
001950  00100000  exit
001954  00100000  exit
001958  00100000  exit
00195c  00100000  exit
001960  00100000  exit
001964  00100000  exit
001968  00100000  exit
00196c  00100000  exit
001970  00100000  exit
001974  00100000  exit
001978  00100000  exit
00197c  00100000  exit
001980  00100000  exit
001984  00100000  exit
001988  00100000  exit
00198c  00100000  exit
001990  00100000  exit
001994  00100000  exit
001998  00100000  exit
00199c  00100000  exit
0019a0  00100000  exit
0019a4  00100000  exit
0019a8  00100000  exit
0019ac  00100000  exit
0019b0  00100000  exit
0019b4  00100000  exit
0019b8  00100000  exit
0019bc  00100000  exit
0019c0  00100000  exit
0019c4  00100000  exit
0019c8  00100000  exit
0019cc  00100000  exit
0019d0  00100000  exit
0019d4  00100000  exit
0019d8  00100000  exit
0019dc  00100000  exit
0019e0  00100000  exit
0019e4  00100000  exit
0019e8  00100000  exit
0019ec  00100000  exit
0019f0  00100000  exit
0019f4  00100000  exit
0019f8  00100000  exit
