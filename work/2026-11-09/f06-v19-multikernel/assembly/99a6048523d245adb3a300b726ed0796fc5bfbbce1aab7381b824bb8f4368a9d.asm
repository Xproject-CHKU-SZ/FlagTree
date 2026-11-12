; SHA-256 99a6048523d245adb3a300b726ed0796fc5bfbbce1aab7381b824bb8f4368a9d
; P800 SDNN · XTDK LLVM 19 · 1150 / 1150 words decoded
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
0000b4  9f8efefe  addli sp, sp, -136
0000b8  9f100000  addli r1, zero, 1
0000bc  80330002  core_id r7
0000c0  1f8f9e00  addli r30, sp, 72
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7900300  beq r7, zero, 36
0000cc  2bf1ffff  lui r2, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b10f1ff  ori r1, r2, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  5b1a0000  j 208
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
00014c  1f211000  addli r2, zero, 10
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
000198  7d800000  xsignal r1, 0
00019c  9f002000  addli r1, zero, 16
0001a0  7d800000  xsignal r1, 0
0001a4  7d000100  xsignal r2, 0
0001a8  9f401000  addli r1, zero, 12
0001ac  1f611000  addli r2, zero, 14
0001b0  7d800000  xsignal r1, 0
0001b4  7d000100  xsignal r2, 0
0001b8  e3005f00  loadli.w r1,  40(r30)
0001bc  63415f00  loadli.w r2,  44(r30)
0001c0  00d20002  load_param_i r4, 1
0001c4  e3016f00  loadli.w r3,  48(r30)
0001c8  8b101120  mul.s r1, r2, r1
0001cc  1f010200  addli r2, r4, 0
0001d0  0b913050  fmac.s r2, r1, r3
0001d4  8b913020  mul.s r3, r1, r3
0001d8  1f71f1ff  addli r2, r2, -1
0001dc  0b114130  div.s r2, r2, r4
0001e0  00520002  load_param_i r4, 0
0001e4  8b104120  mul.s r1, r2, r4
0001e8  0b114150  fmac.s r2, r2, r4
0001ec  0b113140  min.s r2, r2, r3
0001f0  4b061106  ble.s r2, r1, 3456
0001f4  33110128  sext_int2long r[3:4], r2
0001f8  1f5e0000  addli r28, zero, 5
0001fc  2b094000  lui r18, 1024
000200  9f551000  addli r11, zero, 13
000204  1f2d0000  addli r26, zero, 2
000208  9f190000  addli r19, zero, 1
00020c  73302ffc  store.d r[3:4], -64(r30)
000210  b3910028  sext_int2long r[4:5], r1
000214  abf0ff7f  lui r1, 524287
000218  1f010008  addli r2, zero, 1024
00021c  9b97f0ff  ori r15, r1, 4095
000220  ab700000  lui r1, 7
000224  330a0128  zext_int2long r[21:22], r2
000228  9b90f0ff  ori r1, r1, 4095
00022c  733c4ffd  store.d r[21:22], -40(r30)
000230  674e1ffe  storeli.w r1, -28(r30)
000234  abf07f7f  lui r1, 522239
000238  9b9df0ff  ori r27, r1, 4095
00023c  ab800200  lui r1, 40
000240  9b902084  ori r1, r1, 2114
000244  e74b1ffe  storeli.w r1, -68(r30)
000248  b3000028  zext_int2long r[2:3], zero
00024c  73341ffc  store.d r[2:3], -56(r30)
000250  5b0a0000  j 80
000254  9f201000  addli r1, zero, 10
000258  00200100  mfence { sm }
00025c  80330002  core_id r7
000260  9f551000  addli r11, zero, 13
000264  1f2d0000  addli r26, zero, 2
000268  9f190000  addli r19, zero, 1
00026c  7d800000  xsignal r1, 0
000270  9f401000  addli r1, zero, 12
000274  7d800000  xsignal r1, 0
000278  9f601000  addli r1, zero, 14
00027c  7d800000  xsignal r1, 0
000280  9f701000  addli r1, zero, 15
000284  7d800000  xsignal r1, 0
000288  eb510ffd  load.d r[4:5], -48(r30)
00028c  6b5a8ffd  load.d r[21:22], -40(r30)
000290  eb500ffc  load.d r[2:3], -64(r30)
000294  a7910100  addli.d r[4:5], r[4:5], 1
000298  93b01104  setlt.sl r1, r[4:5], r[2:3]
00029c  37d30006  beq r1, zero, 3284
0002a0  e3006f00  loadli.w r1,  48(r30)
0002a4  63415f00  loadli.w r2,  44(r30)
0002a8  9f021000  addli r5, zero, 8
0002ac  73383ffc  store.d r[4:5], -48(r30)
0002b0  8b901130  div.s r1, r3, r1
0002b4  8b902030  div.s r1, r1, r2
0002b8  b3900028  sext_int2long r[2:3], r1
0002bc  17b45002  sll.d r[9:10], r[2:3], r5
0002c0  9f600000  addli r1, zero, 6
0002c4  73388ffe  store.d r[9:10], -16(r30)
0002c8  378a1300  beq r7, r1, 640
0002cc  1f050000  addli r10, zero, 0
0002d0  3b9a3301  bneq r7, r19, 644
0002d4  97303403  sll.d r[2:3], r[9:10], r19
0002d8  9f440000  addli r9, zero, 4
0002dc  1f340000  addli r8, zero, 3
0002e0  eb510f00  load.d r[4:5], 0(r30)
0002e4  9f620000  addli r5, zero, 6
0002e8  9f750000  addli r11, zero, 7
0002ec  1f1c1000  addli r24, zero, 9
0002f0  9f231000  addli r7, zero, 10
0002f4  1f361000  addli r12, zero, 11
0002f8  1f671000  addli r14, zero, 14
0002fc  9f7b1000  addli r23, zero, 15
000300  9f062000  addli r13, zero, 16
000304  9f1c2000  addli r25, zero, 17
000308  1f482000  addli r16, zero, 20
00030c  1f532000  addli r6, zero, 21
000310  1f793000  addli r18, zero, 31
000314  1f0b8000  addli r22, zero, 64
000318  9f080001  addli r17, zero, 128
00031c  7d900400  xwait r9, 0
000320  1d000e00  lock zero, r28
000324  15000014  dma_cfg zero, zero, zero, 10
000328  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
00032c  1f021000  addli r4, zero, 8
000330  9f411000  addli r3, zero, 12
000334  15003015  dma_cfg zero, zero, r19, 10
000338  1500a015  dma_cfg zero, zero, r26, 10
00033c  1f2d0000  addli r26, zero, 2
000340  15008014  dma_cfg zero, zero, r8, 10
000344  15009014  dma_cfg zero, zero, r9, 10
000348  1500c015  dma_cfg zero, zero, r28, 10
00034c  1f3e2000  addli r28, zero, 19
000350  15005014  dma_cfg zero, zero, r5, 10
000354  1500b014  dma_cfg zero, zero, r11, 10
000358  15004014  dma_cfg zero, zero, r4, 10
00035c  15008015  dma_cfg zero, zero, r24, 10
000360  15007014  dma_cfg zero, zero, r7, 10
000364  1500c014  dma_cfg zero, zero, r12, 10
000368  15003014  dma_cfg zero, zero, r3, 10
00036c  9f511000  addli r3, zero, 13
000370  15003014  dma_cfg zero, zero, r3, 10
000374  9f212000  addli r3, zero, 18
000378  1500e014  dma_cfg zero, zero, r14, 10
00037c  15007015  dma_cfg zero, zero, r23, 10
000380  1500d014  dma_cfg zero, zero, r13, 10
000384  15009015  dma_cfg zero, zero, r25, 10
000388  15003014  dma_cfg zero, zero, r3, 10
00038c  9f510000  addli r3, zero, 5
000390  1500c015  dma_cfg zero, zero, r28, 10
000394  15000015  dma_cfg zero, zero, r16, 10
000398  15006014  dma_cfg zero, zero, r6, 10
00039c  1f632000  addli r6, zero, 22
0003a0  15006014  dma_cfg zero, zero, r6, 10
0003a4  1f732000  addli r6, zero, 23
0003a8  15006014  dma_cfg zero, zero, r6, 10
0003ac  1f033000  addli r6, zero, 24
0003b0  15006014  dma_cfg zero, zero, r6, 10
0003b4  1f133000  addli r6, zero, 25
0003b8  15006014  dma_cfg zero, zero, r6, 10
0003bc  1f233000  addli r6, zero, 26
0003c0  15006014  dma_cfg zero, zero, r6, 10
0003c4  1f333000  addli r6, zero, 27
0003c8  15006014  dma_cfg zero, zero, r6, 10
0003cc  1f433000  addli r6, zero, 28
0003d0  15006014  dma_cfg zero, zero, r6, 10
0003d4  1f533000  addli r6, zero, 29
0003d8  15006014  dma_cfg zero, zero, r6, 10
0003dc  1f633000  addli r6, zero, 30
0003e0  15006014  dma_cfg zero, zero, r6, 10
0003e4  1f030008  addli r6, zero, 1024
0003e8  15002015  dma_cfg zero, zero, r18, 10
0003ec  95890900  dma_cfg r19, r19, zero, 0
0003f0  95090002  dma_cfg r19, zero, zero, 1
0003f4  15000004  dma_cfg zero, zero, zero, 2
0003f8  15006007  dma_cfg zero, zero, r22, 3
0003fc  95084008  dma_cfg r17, zero, r4, 4
000400  1503300b  dma_cfg r6, zero, r19, 5
000404  15000010  dma_cfg zero, zero, zero, 8
000408  35000000  dma_run zero
00040c  1500300b  dma_cfg zero, zero, r19, 5
000410  15000010  dma_cfg zero, zero, zero, 8
000414  1d900100  unlock r3
000418  1d800400  lock zero, r9
00041c  95890900  dma_cfg r19, r19, zero, 0
000420  15000104  dma_cfg zero, r2, zero, 2
000424  158b6007  dma_cfg r22, r1, r22, 3
000428  9f000004  addli r1, zero, 512
00042c  95084b08  dma_cfg r17, r22, r4, 4
000430  1583300b  dma_cfg r6, r1, r19, 5
000434  9f200000  addli r1, zero, 2
000438  15000010  dma_cfg zero, zero, zero, 8
00043c  35000000  dma_run zero
000440  1500300b  dma_cfg zero, zero, r19, 5
000444  15000010  dma_cfg zero, zero, zero, 8
000448  1d900400  unlock r9
00044c  1d800100  lock zero, r3
000450  15000014  dma_cfg zero, zero, zero, 10
000454  15003015  dma_cfg zero, zero, r19, 10
000458  15001014  dma_cfg zero, zero, r1, 10
00045c  9f401000  addli r1, zero, 12
000460  15008014  dma_cfg zero, zero, r8, 10
000464  15009014  dma_cfg zero, zero, r9, 10
000468  6b540fff  load.d r[9:10], -16(r30)
00046c  15003014  dma_cfg zero, zero, r3, 10
000470  15005014  dma_cfg zero, zero, r5, 10
000474  1500b014  dma_cfg zero, zero, r11, 10
000478  9f551000  addli r11, zero, 13
00047c  15004014  dma_cfg zero, zero, r4, 10
000480  15008015  dma_cfg zero, zero, r24, 10
000484  15007014  dma_cfg zero, zero, r7, 10
000488  1500c014  dma_cfg zero, zero, r12, 10
00048c  15001014  dma_cfg zero, zero, r1, 10
000490  9f501000  addli r1, zero, 13
000494  15001014  dma_cfg zero, zero, r1, 10
000498  9f202000  addli r1, zero, 18
00049c  1500e014  dma_cfg zero, zero, r14, 10
0004a0  15007015  dma_cfg zero, zero, r23, 10
0004a4  1500d014  dma_cfg zero, zero, r13, 10
0004a8  15009015  dma_cfg zero, zero, r25, 10
0004ac  15001014  dma_cfg zero, zero, r1, 10
0004b0  9f502000  addli r1, zero, 21
0004b4  1500c015  dma_cfg zero, zero, r28, 10
0004b8  1f5e0000  addli r28, zero, 5
0004bc  15000015  dma_cfg zero, zero, r16, 10
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
00050c  15002015  dma_cfg zero, zero, r18, 10
000510  2b094000  lui r18, 1024
000514  95890900  dma_cfg r19, r19, zero, 0
000518  95090002  dma_cfg r19, zero, zero, 1
00051c  15000004  dma_cfg zero, zero, zero, 2
000520  15006007  dma_cfg zero, zero, r22, 3
000524  95084008  dma_cfg r17, zero, r4, 4
000528  1503300b  dma_cfg r6, zero, r19, 5
00052c  15000010  dma_cfg zero, zero, zero, 8
000530  35000000  dma_run zero
000534  1500300b  dma_cfg zero, zero, r19, 5
000538  15000010  dma_cfg zero, zero, zero, 8
00053c  1d100e00  unlock r28
000540  7d000d00  xsignal r26, 0
000544  5b020000  j 16
000548  1f150000  addli r10, zero, 1
00054c  9f600000  addli r1, zero, 6
000550  7d900000  xwait r1, 0
000554  8f104471  mod.sl r[2:3], r[9:10], r[21:22]
000558  1f221000  addli r4, zero, 10
00055c  a7f0f009  addli.d r[2:3], r[2:3], 1279
000560  17cc4002  srl.d r[25:26], r[2:3], r4
000564  eb508ffc  load.d r[2:3], -56(r30)
000568  93201c00  seteq.d r1, r[25:26], r[2:3]
00056c  1f010002  addli r2, zero, 256
000570  33010128  zext_int2long r[3:4], r2
000574  733c2ffe  store.d r[3:4], -8(r30)
000578  3bdc0000  bneq r1, zero, 788
00057c  338b0928  zext_int2long r[23:24], r19
000580  b3060028  zext_int2long r[14:15], zero
000584  db020000  j 20
000588  13228b05  setlt.ul r4, r[23:24], r[25:26]
00058c  8ba6d010  add.ul r[14:15], r[2:3], r[14:15]
000590  330b0d28  zext_int2long r[23:24], r26
000594  b76b0200  beq r4, zero, 760
000598  8ba08610  add.ul r[2:3], r[14:15], r[9:10]
00059c  6b538fff  load.d r[7:8], -8(r30)
0005a0  0f924071  mod.sl r[5:6], r[2:3], r[21:22]
0005a4  0b33d318  sub.sl r[7:8], r[7:8], r[14:15]
0005a8  8b304a18  sub.sl r[2:3], r[21:22], r[5:6]
0005ac  8b201340  min.ul r[2:3], r[7:8], r[2:3]
0005b0  376f05fe  beq r10, zero, -40
0005b4  1d000e00  lock zero, r28
0005b8  1bb32600  slli r6, r13, 2
0005bc  97333203  sll.d r[8:9], r[5:6], r19
0005c0  9f4a0000  addli r21, zero, 4
0005c4  1f7a0000  addli r20, zero, 7
0005c8  1f061000  addli r12, zero, 8
0005cc  1f691000  addli r18, zero, 14
0005d0  9f110000  addli r3, zero, 1
0005d4  9f048000  addli r9, zero, 64
0005d8  9f080500  addli r17, r10, 0
0005dc  1f050001  addli r10, zero, 128
0005e0  1f580000  addli r16, zero, 5
0005e4  9bb51000  slli r11, r1, 1
0005e8  15000014  dma_cfg zero, zero, zero, 10
0005ec  15003015  dma_cfg zero, zero, r19, 10
0005f0  1f020308  addli r4, r6, 1024
0005f4  eb528f00  load.d r[6:7], 8(r30)
0005f8  9f390000  addli r19, zero, 3
0005fc  1500a015  dma_cfg zero, zero, r26, 10
000600  15003015  dma_cfg zero, zero, r19, 10
000604  0ba37210  add.ul r[7:8], r[6:7], r[8:9]
000608  15005015  dma_cfg zero, zero, r21, 10
00060c  9f620000  addli r5, zero, 6
000610  1500c015  dma_cfg zero, zero, r28, 10
000614  1f1e1000  addli r28, zero, 9
000618  15005014  dma_cfg zero, zero, r5, 10
00061c  9f221000  addli r5, zero, 10
000620  15004015  dma_cfg zero, zero, r20, 10
000624  1500c014  dma_cfg zero, zero, r12, 10
000628  1500c015  dma_cfg zero, zero, r28, 10
00062c  15005014  dma_cfg zero, zero, r5, 10
000630  9f321000  addli r5, zero, 11
000634  15005014  dma_cfg zero, zero, r5, 10
000638  9f421000  addli r5, zero, 12
00063c  15005014  dma_cfg zero, zero, r5, 10
000640  9f521000  addli r5, zero, 13
000644  15005014  dma_cfg zero, zero, r5, 10
000648  9f721000  addli r5, zero, 15
00064c  15002015  dma_cfg zero, zero, r18, 10
000650  15005014  dma_cfg zero, zero, r5, 10
000654  9f022000  addli r5, zero, 16
000658  15005014  dma_cfg zero, zero, r5, 10
00065c  9f122000  addli r5, zero, 17
000660  15005014  dma_cfg zero, zero, r5, 10
000664  9f222000  addli r5, zero, 18
000668  15005014  dma_cfg zero, zero, r5, 10
00066c  9f322000  addli r5, zero, 19
000670  15005014  dma_cfg zero, zero, r5, 10
000674  9f422000  addli r5, zero, 20
000678  15005014  dma_cfg zero, zero, r5, 10
00067c  9f522000  addli r5, zero, 21
000680  15005014  dma_cfg zero, zero, r5, 10
000684  9f622000  addli r5, zero, 22
000688  15005014  dma_cfg zero, zero, r5, 10
00068c  9f722000  addli r5, zero, 23
000690  15005014  dma_cfg zero, zero, r5, 10
000694  9f023000  addli r5, zero, 24
000698  15005014  dma_cfg zero, zero, r5, 10
00069c  9f123000  addli r5, zero, 25
0006a0  15005014  dma_cfg zero, zero, r5, 10
0006a4  9f223000  addli r5, zero, 26
0006a8  15005014  dma_cfg zero, zero, r5, 10
0006ac  9f323000  addli r5, zero, 27
0006b0  15005014  dma_cfg zero, zero, r5, 10
0006b4  9f423000  addli r5, zero, 28
0006b8  15005014  dma_cfg zero, zero, r5, 10
0006bc  9f523000  addli r5, zero, 29
0006c0  15005014  dma_cfg zero, zero, r5, 10
0006c4  9f623000  addli r5, zero, 30
0006c8  15005014  dma_cfg zero, zero, r5, 10
0006cc  9f723000  addli r5, zero, 31
0006d0  15005014  dma_cfg zero, zero, r5, 10
0006d4  9f020008  addli r5, zero, 1024
0006d8  95810100  dma_cfg r3, r3, zero, 0
0006dc  95010002  dma_cfg r3, zero, zero, 1
0006e0  15000004  dma_cfg zero, zero, zero, 2
0006e4  95029006  dma_cfg r5, zero, r9, 3
0006e8  1505c008  dma_cfg r10, zero, r12, 4
0006ec  9502300a  dma_cfg r5, zero, r3, 5
0006f0  8b12a238  mod.s r5, r4, r10
0006f4  15000010  dma_cfg zero, zero, zero, 8
0006f8  35000000  dma_run zero
0006fc  1500300a  dma_cfg zero, zero, r3, 5
000700  15000010  dma_cfg zero, zero, zero, 8
000704  1d100800  unlock r16
000708  1d800a00  lock zero, r21
00070c  95810100  dma_cfg r3, r3, zero, 0
000710  1bc41200  srli r8, r5, 1
000714  15800304  dma_cfg zero, r7, zero, 2
000718  0b148218  sub.s r8, r4, r8
00071c  0b125218  sub.s r4, r4, r5
000720  1f048400  addli r8, r8, 64
000724  15049306  dma_cfg r8, r6, r9, 3
000728  2bf4ff7f  lui r8, 524287
00072c  1bb32000  slli r6, r1, 2
000730  9ff33000  addli r7, r1, 31
000734  1b1404f8  ori r8, r8, 3968
000738  9bc35300  srli r7, r7, 5
00073c  17048300  and r8, r6, r8
000740  1b83e503  andi r6, r11, 62
000744  15857408  dma_cfg r10, r9, r7, 4
000748  17146400  or r8, r8, r6
00074c  1584350a  dma_cfg r8, r11, r3, 5
000750  9f551000  addli r11, zero, 13
000754  15006010  dma_cfg zero, zero, r6, 8
000758  35000000  dma_run zero
00075c  1500300a  dma_cfg zero, zero, r3, 5
000760  15000010  dma_cfg zero, zero, zero, 8
000764  1d900a00  unlock r21
000768  1d000800  lock zero, r16
00076c  15000014  dma_cfg zero, zero, zero, 10
000770  15003014  dma_cfg zero, zero, r3, 10
000774  9f610000  addli r3, zero, 6
000778  1500a015  dma_cfg zero, zero, r26, 10
00077c  15003015  dma_cfg zero, zero, r19, 10
000780  9f190000  addli r19, zero, 1
000784  15005015  dma_cfg zero, zero, r21, 10
000788  15000015  dma_cfg zero, zero, r16, 10
00078c  15003014  dma_cfg zero, zero, r3, 10
000790  9f211000  addli r3, zero, 10
000794  15004015  dma_cfg zero, zero, r20, 10
000798  6b5a8ffd  load.d r[21:22], -40(r30)
00079c  1500c014  dma_cfg zero, zero, r12, 10
0007a0  1500c015  dma_cfg zero, zero, r28, 10
0007a4  1f5e0000  addli r28, zero, 5
0007a8  15003014  dma_cfg zero, zero, r3, 10
0007ac  9f311000  addli r3, zero, 11
0007b0  15003014  dma_cfg zero, zero, r3, 10
0007b4  9f411000  addli r3, zero, 12
0007b8  15003014  dma_cfg zero, zero, r3, 10
0007bc  9f511000  addli r3, zero, 13
0007c0  15003014  dma_cfg zero, zero, r3, 10
0007c4  9f711000  addli r3, zero, 15
0007c8  15002015  dma_cfg zero, zero, r18, 10
0007cc  2b094000  lui r18, 1024
0007d0  15003014  dma_cfg zero, zero, r3, 10
0007d4  9f012000  addli r3, zero, 16
0007d8  15003014  dma_cfg zero, zero, r3, 10
0007dc  9f112000  addli r3, zero, 17
0007e0  15003014  dma_cfg zero, zero, r3, 10
0007e4  9f212000  addli r3, zero, 18
0007e8  15003014  dma_cfg zero, zero, r3, 10
0007ec  9f312000  addli r3, zero, 19
0007f0  15003014  dma_cfg zero, zero, r3, 10
0007f4  9f412000  addli r3, zero, 20
0007f8  15003014  dma_cfg zero, zero, r3, 10
0007fc  9f512000  addli r3, zero, 21
000800  15003014  dma_cfg zero, zero, r3, 10
000804  9f612000  addli r3, zero, 22
000808  15003014  dma_cfg zero, zero, r3, 10
00080c  9f712000  addli r3, zero, 23
000810  15003014  dma_cfg zero, zero, r3, 10
000814  9f013000  addli r3, zero, 24
000818  15003014  dma_cfg zero, zero, r3, 10
00081c  9f113000  addli r3, zero, 25
000820  15003014  dma_cfg zero, zero, r3, 10
000824  9f213000  addli r3, zero, 26
000828  15003014  dma_cfg zero, zero, r3, 10
00082c  9f313000  addli r3, zero, 27
000830  15003014  dma_cfg zero, zero, r3, 10
000834  9f413000  addli r3, zero, 28
000838  15003014  dma_cfg zero, zero, r3, 10
00083c  9f513000  addli r3, zero, 29
000840  15003014  dma_cfg zero, zero, r3, 10
000844  9f613000  addli r3, zero, 30
000848  15003014  dma_cfg zero, zero, r3, 10
00084c  9f713000  addli r3, zero, 31
000850  15003014  dma_cfg zero, zero, r3, 10
000854  95890900  dma_cfg r19, r19, zero, 0
000858  95090002  dma_cfg r19, zero, zero, 1
00085c  15000004  dma_cfg zero, zero, zero, 2
000860  15029006  dma_cfg r4, zero, r9, 3
000864  15057008  dma_cfg r10, zero, r7, 4
000868  1f850800  addli r10, r17, 0
00086c  1504300b  dma_cfg r8, zero, r19, 5
000870  6b540fff  load.d r[9:10], -16(r30)
000874  15006010  dma_cfg zero, zero, r6, 8
000878  35000000  dma_run zero
00087c  1500300b  dma_cfg zero, zero, r19, 5
000880  15000010  dma_cfg zero, zero, zero, 8
000884  1d100e00  unlock r28
000888  5ba0ffff  j -768
00088c  37200500  beq r10, zero, 8
000890  7d000e00  xsignal r28, 0
000894  80330002  core_id r7
000898  9f300000  addli r1, zero, 3
00089c  ab0b807f  lui r23, 522240
0008a0  37841300  beq r7, r1, 256
0008a4  3bf9c303  bneq r7, r28, 1628
0008a8  7d100d00  xwait r26, 0
0008ac  7d100e00  xwait r28, 0
0008b0  1d000d00  lock zero, r26
0008b4  ab01803f  lui r3, 260096
0008b8  1f723000  addli r4, zero, 31
0008bc  9f001000  addli r1, zero, 8
0008c0  1f010008  addli r2, zero, 1024
0008c4  abc27f41  lui r5, 268284
0008c8  1f030020  addli r6, zero, 4096
0008cc  0d000002  ew_cfg zero, zero, zero, 1
0008d0  8d910100  ewcoeff_cfg r3, r3, zero, 0
0008d4  0d000204  ew_cfg zero, r4, zero, 2
0008d8  8d000006  ew_cfg r1, zero, zero, 3
0008dc  8d801026  ew_cfg r1, r1, r1, 19
0008e0  2d002000  dsmadd zero, zero, r2, 0
0008e4  1f310000  addli r2, zero, 3
0008e8  0d000026  ew_cfg zero, zero, zero, 19
0008ec  1d100d00  unlock r26
0008f0  7d000100  xsignal r2, 0
0008f4  1f610000  addli r2, zero, 6
0008f8  7d000100  xsignal r2, 0
0008fc  1f710000  addli r2, zero, 7
000900  7d100100  xwait r2, 0
000904  1f411000  addli r2, zero, 12
000908  7d100100  xwait r2, 0
00090c  1d000d00  lock zero, r26
000910  0d000002  ew_cfg zero, zero, zero, 1
000914  0d000204  ew_cfg zero, r4, zero, 2
000918  8d000006  ew_cfg r1, zero, zero, 3
00091c  8d800026  ew_cfg r1, r1, zero, 19
000920  0d0d0014  ew_cfg r26, zero, zero, 10
000924  63417fff  loadli.w r2,  -68(r30)
000928  0d8d2916  ew_cfg r26, r19, r2, 11
00092c  1f410000  addli r2, zero, 4
000930  0d00001a  ew_cfg zero, zero, zero, 13
000934  0d00511c  ew_cfg zero, r2, r5, 14
000938  9f020018  addli r5, zero, 3072
00093c  1f111000  addli r2, zero, 9
000940  0d00001e  ew_cfg zero, zero, zero, 15
000944  4da30200  sslut r6, r5, 0
000948  0d000014  ew_cfg zero, zero, zero, 10
00094c  0d000026  ew_cfg zero, zero, zero, 19
000950  1d100d00  unlock r26
000954  7d100100  xwait r2, 0
000958  1f611000  addli r2, zero, 14
00095c  7d100100  xwait r2, 0
000960  1d000d00  lock zero, r26
000964  1f010028  addli r2, zero, 5120
000968  0d000002  ew_cfg zero, zero, zero, 1
00096c  0d103000  ewcoeff_cfg zero, zero, r3, 0
000970  0d000204  ew_cfg zero, r4, zero, 2
000974  8d000006  ew_cfg r1, zero, zero, 3
000978  8d801026  ew_cfg r1, r1, r1, 19
00097c  2d916200  dsmul r2, r5, r6, 0
000980  0d000026  ew_cfg zero, zero, zero, 19
000984  1d100d00  unlock r26
000988  7d800000  xsignal r1, 0
00098c  9f301000  addli r1, zero, 11
000990  7d800000  xsignal r1, 0
000994  7d800500  xsignal r11, 0
000998  eb510ffd  load.d r[4:5], -48(r30)
00099c  db1effff  j -1804
0009a0  9f300000  addli r1, zero, 3
0009a4  7d900000  xwait r1, 0
0009a8  9f201000  addli r1, zero, 10
0009ac  7d900000  xwait r1, 0
0009b0  3d000000  xfence
0009b4  00a00300  mfence { lm, sm, gm }
0009b8  6b5c8ffc  load.d r[25:26], -56(r30)
0009bc  5b0c0000  j 96
0009c0  1fc11118  addli r2, r3, 3084
0009c4  1fc20118  addli r4, r3, 3076
0009c8  270c1c00  addli.d r[25:26], r[25:26], 8
0009cc  9f800118  addli r1, r3, 3072
0009d0  9f822118  addli r5, r3, 3088
0009d4  2b094000  lui r18, 1024
0009d8  7360a101  stores.w r26, 0(r2)
0009dc  1f811118  addli r2, r3, 3080
0009e0  7360d200  stores.w r13, 0(r4)
0009e4  73e00201  stores.w r16, 0(r5)
0009e8  73606100  stores.w r6, 0(r2)
0009ec  6b538fff  load.d r[7:8], -8(r30)
0009f0  1fc13118  addli r2, r3, 3100
0009f4  73608100  stores.w r8, 0(r2)
0009f8  1fc12118  addli r2, r3, 3092
0009fc  13226c02  setneq.d r4, r[25:26], r[7:8]
000a00  6303efff  loadli.w r6,  -16(r30)
000a04  73607101  stores.w r23, 0(r2)
000a08  ab0b807f  lui r23, 522240
000a0c  73e06000  stores.w r6, 0(r1)
000a10  9f803118  addli r1, r3, 3096
000a14  73e0b000  stores.w r11, 0(r1)
000a18  b7380200  beq r4, zero, 556
000a1c  9b312c00  slli r3, r24, 2
000a20  6fc1c100  loads.w r2, 12(r3)
000a24  efc60100  loads.w r13, 0(r3)
000a28  6fc74100  loads.w r14, 4(r3)
000a2c  efc48100  loads.w r9, 8(r3)
000a30  6fc40101  loads.w r8, 16(r3)
000a34  6fcb4101  loads.w r22, 20(r3)
000a38  6fc58101  loads.w r10, 24(r3)
000a3c  efc0c101  loads.w r1, 28(r3)
000a40  1706f100  and r12, r2, r15
000a44  1382cb04  setlt.u r4, r23, r12
000a48  3b300200  bneq r4, zero, 12
000a4c  1f0d0100  addli r26, r2, 0
000a50  5b010000  j 8
000a54  171d2101  or r26, r2, r18
000a58  178ef400  and r28, r9, r15
000a5c  9382cb05  setlt.u r5, r23, r28
000a60  3bb00200  bneq r5, zero, 12
000a64  e74e9ffe  storeli.w r9, -20(r30)
000a68  db010000  j 12
000a6c  17922401  or r4, r9, r18
000a70  e74e4ffe  storeli.w r4, -20(r30)
000a74  9702f700  and r5, r14, r15
000a78  13835b04  setlt.u r6, r23, r5
000a7c  3b300300  bneq r6, zero, 12
000a80  1f030700  addli r6, r14, 0
000a84  5b010000  j 8
000a88  17132701  or r6, r14, r18
000a8c  178af600  and r20, r13, r15
000a90  93834b05  setlt.u r7, r23, r20
000a94  3bb00300  bneq r7, zero, 12
000a98  670fdffe  storeli.w r13, -16(r30)
000a9c  db010000  j 12
000aa0  17922601  or r4, r13, r18
000aa4  670f4ffe  storeli.w r4, -16(r30)
000aa8  978af000  and r21, r1, r15
000aac  ab09807f  lui r19, 522240
000ab0  93835b05  setlt.u r7, r23, r21
000ab4  3bb00300  bneq r7, zero, 12
000ab8  e70e1ffe  storeli.w r1, -24(r30)
000abc  db010000  j 12
000ac0  17922001  or r4, r1, r18
000ac4  e70e4ffe  storeli.w r4, -24(r30)
000ac8  9703f500  and r7, r10, r15
000acc  93857904  setlt.u r11, r19, r7
000ad0  3bb00500  bneq r11, zero, 12
000ad4  9f050500  addli r11, r10, 0
000ad8  5b010000  j 8
000adc  97152501  or r11, r10, r18
000ae0  1709fb00  and r18, r22, r15
000ae4  2b024000  lui r4, 1024
000ae8  13882905  setlt.u r16, r19, r18
000aec  3b300800  bneq r16, zero, 12
000af0  9f0b0b00  addli r23, r22, 0
000af4  db010000  j 12
000af8  2b084000  lui r16, 1024
000afc  971b0b01  or r23, r22, r16
000b00  9708f400  and r17, r8, r15
000b04  13881905  setlt.u r16, r19, r17
000b08  3b500800  bneq r16, zero, 20
000b0c  1f080400  addli r16, r8, 0
000b10  138a4d05  setlt.u r20, r27, r20
000b14  37500a00  beq r20, zero, 20
000b18  5b060000  j 48
000b1c  17184400  or r16, r8, r4
000b20  138a4d05  setlt.u r20, r27, r20
000b24  bb100a00  bneq r20, zero, 36
000b28  1bca0601  srli r20, r13, 16
000b2c  6342cfff  loadli.w r4,  -28(r30)
000b30  1b0a1a00  andi r20, r20, 1
000b34  8b964611  add.s r13, r13, r20
000b38  8b964610  add.s r13, r13, r4
000b3c  2b02ffff  lui r4, 1048560
000b40  17824600  and r4, r13, r4
000b44  670f4ffe  storeli.w r4, -16(r30)
000b48  93825d04  setlt.u r5, r27, r5
000b4c  e349cfff  loadli.w r19,  -28(r30)
000b50  2b0affff  lui r20, 1048560
000b54  9f060300  addli r13, r6, 0
000b58  3be00200  bneq r5, zero, 24
000b5c  9b420701  srli r5, r14, 16
000b60  9b821200  andi r5, r5, 1
000b64  8b125710  add.s r5, r14, r5
000b68  8b923211  add.s r5, r5, r19
000b6c  97864201  and r13, r5, r20
000b70  9382cd05  setlt.u r5, r27, r28
000b74  6343dfff  loadli.w r6,  -20(r30)
000b78  b7d10200  beq r5, zero, 116
000b7c  9382cd04  setlt.u r5, r27, r12
000b80  37a20200  beq r5, zero, 136
000b84  13811d05  setlt.u r2, r27, r17
000b88  37720100  beq r2, zero, 156
000b8c  13812d05  setlt.u r2, r27, r18
000b90  3b600100  bneq r2, zero, 24
000b94  1b410b01  srli r2, r22, 16
000b98  1b011100  andi r2, r2, 1
000b9c  0b112b10  add.s r2, r22, r2
000ba0  0b113111  add.s r2, r2, r19
000ba4  970b4101  and r23, r2, r20
000ba8  13817d04  setlt.u r2, r27, r7
000bac  6304dfff  loadli.w r8,  -24(r30)
000bb0  1f5e0000  addli r28, zero, 5
000bb4  3b600100  bneq r2, zero, 24
000bb8  1b410501  srli r2, r10, 16
000bbc  1b011100  andi r2, r2, 1
000bc0  0b112510  add.s r2, r10, r2
000bc4  0b113111  add.s r2, r2, r19
000bc8  97054101  and r11, r2, r20
000bcc  13815d05  setlt.u r2, r27, r21
000bd0  bb4701fe  bneq r2, zero, -528
000bd4  1bc10001  srli r2, r1, 16
000bd8  1b011100  andi r2, r2, 1
000bdc  8b902010  add.s r1, r1, r2
000be0  8b903011  add.s r1, r1, r19
000be4  17844001  and r8, r1, r20
000be8  5bbbffff  j -552
000bec  9bc20401  srli r5, r9, 16
000bf0  9b821200  andi r5, r5, 1
000bf4  8b925410  add.s r5, r9, r5
000bf8  8b923211  add.s r5, r5, r19
000bfc  17834201  and r6, r5, r20
000c00  9382cd04  setlt.u r5, r27, r12
000c04  3b8e02fe  bneq r5, zero, -128
000c08  1b420101  srli r4, r2, 16
000c0c  1b021200  andi r4, r4, 1
000c10  0b114110  add.s r2, r2, r4
000c14  0b113111  add.s r2, r2, r19
000c18  170d4101  and r26, r2, r20
000c1c  13811d05  setlt.u r2, r27, r17
000c20  bb3d01fe  bneq r2, zero, -148
000c24  1b410401  srli r2, r8, 16
000c28  1b011100  andi r2, r2, 1
000c2c  0b112410  add.s r2, r8, r2
000c30  0b113111  add.s r2, r2, r19
000c34  17084101  and r16, r2, r20
000c38  13812d05  setlt.u r2, r27, r18
000c3c  376d01fe  beq r2, zero, -168
000c40  5bedffff  j -152
000c44  9f400000  addli r1, zero, 4
000c48  00200100  mfence { sm }
000c4c  330c0028  zext_int2long r[25:26], zero
000c50  7d800000  xsignal r1, 0
000c54  9f101000  addli r1, zero, 9
000c58  7d800000  xsignal r1, 0
000c5c  9f700000  addli r1, zero, 7
000c60  7d800000  xsignal r1, 0
000c64  9f001000  addli r1, zero, 8
000c68  7d900000  xwait r1, 0
000c6c  9f301000  addli r1, zero, 11
000c70  7d900000  xwait r1, 0
000c74  9f501000  addli r1, zero, 13
000c78  7d900000  xwait r1, 0
000c7c  9f002000  addli r1, zero, 16
000c80  7d900000  xwait r1, 0
000c84  3d000000  xfence
000c88  00a00300  mfence { lm, sm, gm }
000c8c  db060000  j 52
000c90  eb558fff  load.d r[12:13], -8(r30)
000c94  274c0c00  addli.d r[25:26], r[25:26], 4
000c98  9fc01110  addli r1, r3, 2060
000c9c  1f820110  addli r4, r3, 2048
000ca0  73e07000  stores.w r7, 0(r1)
000ca4  9f801110  addli r1, r3, 2056
000ca8  9fc10110  addli r3, r3, 2052
000cac  7360a200  stores.w r10, 0(r4)
000cb0  1321bc02  setneq.d r2, r[25:26], r[12:13]
000cb4  73e08000  stores.w r8, 0(r1)
000cb8  73e05100  stores.w r5, 0(r3)
000cbc  376601fa  beq r2, zero, -2664
000cc0  9b312c00  slli r3, r24, 2
000cc4  1fc10118  addli r2, r3, 3076
000cc8  9f800118  addli r1, r3, 3072
000ccc  1f830120  addli r6, r3, 4096
000cd0  9f831120  addli r7, r3, 4104
000cd4  1fc51128  addli r10, r3, 5132
000cd8  9f821118  addli r5, r3, 3080
000cdc  6f420100  loads.w r4, 0(r2)
000ce0  1fc11118  addli r2, r3, 3084
000ce4  efc00000  loads.w r1, 0(r1)
000ce8  efc20200  loads.w r5, 0(r5)
000cec  6f440100  loads.w r8, 0(r2)
000cf0  6f410300  loads.w r2, 0(r6)
000cf4  1fc30120  addli r6, r3, 4100
000cf8  ef450300  loads.w r11, 0(r6)
000cfc  6fc30300  loads.w r6, 0(r7)
000d00  9fc31120  addli r7, r3, 4108
000d04  efc40300  loads.w r9, 0(r7)
000d08  ef430500  loads.w r7, 0(r10)
000d0c  1f851128  addli r10, r3, 5128
000d10  6f450500  loads.w r10, 0(r10)
000d14  9780f000  and r1, r1, r15
000d18  1701f100  and r2, r2, r15
000d1c  93867001  seteq r13, r1, r23
000d20  93880000  seteq r17, r1, zero
000d24  8b802048  max.u r1, r1, r2
000d28  13070100  seteq r14, r2, zero
000d2c  13087101  seteq r16, r2, r23
000d30  1fc10128  addli r2, r3, 5124
000d34  6f460100  loads.w r12, 0(r2)
000d38  93801b04  setlt.u r1, r23, r1
000d3c  1781e600  and r2, r13, r14
000d40  97860801  and r13, r17, r16
000d44  1711d100  or r2, r2, r13
000d48  97962000  or r13, r1, r2
000d4c  ab00c07f  lui r1, 523264
000d50  2b01c07f  lui r2, 523264
000d54  3bb00600  bneq r13, zero, 12
000d58  1f810128  addli r2, r3, 5120
000d5c  6f410100  loads.w r2, 0(r2)
000d60  1702f200  and r4, r4, r15
000d64  9785f500  and r11, r11, r15
000d68  93067201  seteq r13, r4, r23
000d6c  93080200  seteq r17, r4, zero
000d70  13870500  seteq r14, r11, zero
000d74  13887501  seteq r16, r11, r23
000d78  0b02b248  max.u r4, r4, r11
000d7c  13824b04  setlt.u r4, r23, r4
000d80  9785e600  and r11, r13, r14
000d84  97860801  and r13, r17, r16
000d88  9795d500  or r11, r11, r13
000d8c  9715b200  or r11, r4, r11
000d90  2b02c07f  lui r4, 523264
000d94  3ba00500  bneq r11, zero, 8
000d98  1f020600  addli r4, r12, 0
000d9c  9782f200  and r5, r5, r15
000da0  1703f300  and r6, r6, r15
000da4  93857201  seteq r11, r5, r23
000da8  13870200  seteq r14, r5, zero
000dac  13060300  seteq r12, r6, zero
000db0  93067301  seteq r13, r6, r23
000db4  8b826248  max.u r5, r5, r6
000db8  93825b04  setlt.u r5, r23, r5
000dbc  1783c500  and r6, r11, r12
000dc0  9705d700  and r11, r14, r13
000dc4  1713b300  or r6, r6, r11
000dc8  97926200  or r5, r5, r6
000dcc  2b03c07f  lui r6, 523264
000dd0  3ba00200  bneq r5, zero, 8
000dd4  1f030500  addli r6, r10, 0
000dd8  9702f400  and r5, r8, r15
000ddc  1784f400  and r8, r9, r15
000de0  93847201  seteq r9, r5, r23
000de4  13860200  seteq r12, r5, zero
000de8  13050400  seteq r10, r8, zero
000dec  93057401  seteq r11, r8, r23
000df0  8b828248  max.u r5, r5, r8
000df4  93825b04  setlt.u r5, r23, r5
000df8  1784a400  and r8, r9, r10
000dfc  9704b600  and r9, r12, r11
000e00  17149400  or r8, r8, r9
000e04  97928200  or r5, r5, r8
000e08  3ba00200  bneq r5, zero, 8
000e0c  9f800300  addli r1, r7, 0
000e10  9784f000  and r9, r1, r15
000e14  93829b04  setlt.u r5, r23, r9
000e18  3bb00200  bneq r5, zero, 12
000e1c  9f830000  addli r7, r1, 0
000e20  5b010000  j 8
000e24  97932001  or r7, r1, r18
000e28  9705f300  and r11, r6, r15
000e2c  9382bb04  setlt.u r5, r23, r11
000e30  3bb00200  bneq r5, zero, 12
000e34  1f040300  addli r8, r6, 0
000e38  5b010000  j 8
000e3c  17142301  or r8, r6, r18
000e40  1706f200  and r12, r4, r15
000e44  9382cb04  setlt.u r5, r23, r12
000e48  3bb00200  bneq r5, zero, 12
000e4c  9f020200  addli r5, r4, 0
000e50  5b010000  j 8
000e54  97122201  or r5, r4, r18
000e58  9706f100  and r13, r2, r15
000e5c  1385db04  setlt.u r10, r23, r13
000e60  3b500500  bneq r10, zero, 20
000e64  1f050100  addli r10, r2, 0
000e68  9386dd04  setlt.u r13, r27, r13
000e6c  37d00600  beq r13, zero, 20
000e70  db040000  j 36
000e74  17152101  or r10, r2, r18
000e78  9386dd04  setlt.u r13, r27, r13
000e7c  3be00600  bneq r13, zero, 24
000e80  1b450101  srli r10, r2, 16
000e84  1b051500  andi r10, r10, 1
000e88  0b11a110  add.s r2, r2, r10
000e8c  0b113111  add.s r2, r2, r19
000e90  17054101  and r10, r2, r20
000e94  1381cd04  setlt.u r2, r27, r12
000e98  37600100  beq r2, zero, 24
000e9c  1381bd04  setlt.u r2, r27, r11
000ea0  b7300100  beq r2, zero, 44
000ea4  13819d04  setlt.u r2, r27, r9
000ea8  bb2701fe  bneq r2, zero, -536
000eac  db070000  j 60
000eb0  1b410201  srli r2, r4, 16
000eb4  1b011100  andi r2, r2, 1
000eb8  0b112210  add.s r2, r4, r2
000ebc  0b113111  add.s r2, r2, r19
000ec0  97024101  and r5, r2, r20
000ec4  1381bd04  setlt.u r2, r27, r11
000ec8  3b7f01fe  bneq r2, zero, -36
000ecc  1b410301  srli r2, r6, 16
000ed0  1b011100  andi r2, r2, 1
000ed4  0b112310  add.s r2, r6, r2
000ed8  0b113111  add.s r2, r2, r19
000edc  17044101  and r8, r2, r20
000ee0  13819d04  setlt.u r2, r27, r9
000ee4  bb3601fe  bneq r2, zero, -596
000ee8  1bc10001  srli r2, r1, 16
000eec  1b011100  andi r2, r2, 1
000ef0  8b902010  add.s r1, r1, r2
000ef4  8b903011  add.s r1, r1, r19
000ef8  97834001  and r7, r1, r20
000efc  dbb2ffff  j -620
000f00  eb510ffd  load.d r[4:5], -48(r30)
000f04  3bbe03f8  bneq r7, zero, -3188
000f08  9f721000  addli r5, zero, 15
000f0c  97303403  sll.d r[2:3], r[9:10], r19
000f10  7d900200  xwait r5, 0
000f14  eb520f01  load.d r[6:7], 16(r30)
000f18  1d000e00  lock zero, r28
000f1c  95890900  dma_cfg r19, r19, zero, 0
000f20  15800902  dma_cfg zero, r19, zero, 1
000f24  8ba01210  add.ul r[2:3], r[6:7], r[2:3]
000f28  9f028000  addli r5, zero, 64
000f2c  1f038010  addli r6, zero, 2112
000f30  15010004  dma_cfg r2, zero, zero, 2
000f34  95005306  dma_cfg r1, r6, r5, 3
000f38  9f001000  addli r1, zero, 8
000f3c  1f010001  addli r2, zero, 128
000f40  95021108  dma_cfg r5, r2, r1, 4
000f44  9f000008  addli r1, zero, 1024
000f48  1f010004  addli r2, zero, 512
000f4c  1581300b  dma_cfg r2, r1, r19, 5
000f50  9f002000  addli r1, zero, 16
000f54  15000010  dma_cfg zero, zero, zero, 8
000f58  35000000  dma_run zero
000f5c  1500300b  dma_cfg zero, zero, r19, 5
000f60  15000010  dma_cfg zero, zero, zero, 8
000f64  1d100e00  unlock r28
000f68  7d800000  xsignal r1, 0
000f6c  db64feff  j -3292
000f70  7d000000  xsignal zero, 0
000f74  bbe00300  bneq r7, zero, 56
000f78  9f200000  addli r1, zero, 2
000f7c  7d100000  xwait zero, 0
000f80  7d100000  xwait zero, 0
000f84  7d100000  xwait zero, 0
000f88  7d100000  xwait zero, 0
000f8c  7d100000  xwait zero, 0
000f90  7d100000  xwait zero, 0
000f94  7d100000  xwait zero, 0
000f98  7d100000  xwait zero, 0
000f9c  1d800000  lock zero, r1
000fa0  0d000020  ew_cfg zero, zero, zero, 16
000fa4  1d900000  unlock r1
000fa8  7d400000  xsignal_mode_cfg zero
000fac  9f8e9e00  addli sp, sp, 72
000fb0  00a00300  mfence { lm, sm, gm }
000fb4  00100000  exit
000fb8  00100000  exit
000fbc  00100000  exit
000fc0  00100000  exit
000fc4  00100000  exit
000fc8  00100000  exit
000fcc  00100000  exit
000fd0  00100000  exit
000fd4  00100000  exit
000fd8  00100000  exit
000fdc  00100000  exit
000fe0  00100000  exit
000fe4  00100000  exit
000fe8  00100000  exit
000fec  00100000  exit
000ff0  00100000  exit
000ff4  00100000  exit
000ff8  00100000  exit
000ffc  00100000  exit
001000  00100000  exit
001004  00100000  exit
001008  00100000  exit
00100c  00100000  exit
001010  00100000  exit
001014  00100000  exit
001018  00100000  exit
00101c  00100000  exit
001020  00100000  exit
001024  00100000  exit
001028  00100000  exit
00102c  00100000  exit
001030  00100000  exit
001034  00100000  exit
001038  00100000  exit
00103c  00100000  exit
001040  00100000  exit
001044  00100000  exit
001048  00100000  exit
00104c  00100000  exit
001050  00100000  exit
001054  00100000  exit
001058  00100000  exit
00105c  00100000  exit
001060  00100000  exit
001064  00100000  exit
001068  00100000  exit
00106c  00100000  exit
001070  00100000  exit
001074  00100000  exit
001078  00100000  exit
00107c  00100000  exit
001080  00100000  exit
001084  00100000  exit
001088  00100000  exit
00108c  00100000  exit
001090  00100000  exit
001094  00100000  exit
001098  00100000  exit
00109c  00100000  exit
0010a0  00100000  exit
0010a4  00100000  exit
0010a8  00100000  exit
0010ac  00100000  exit
0010b0  00100000  exit
0010b4  00100000  exit
0010b8  00100000  exit
0010bc  00100000  exit
0010c0  00100000  exit
0010c4  00100000  exit
0010c8  00100000  exit
0010cc  00100000  exit
0010d0  00100000  exit
0010d4  00100000  exit
0010d8  00100000  exit
0010dc  00100000  exit
0010e0  00100000  exit
0010e4  00100000  exit
0010e8  00100000  exit
0010ec  00100000  exit
0010f0  00100000  exit
0010f4  00100000  exit
0010f8  00100000  exit
0010fc  00100000  exit
001100  00100000  exit
001104  00100000  exit
001108  00100000  exit
00110c  00100000  exit
001110  00100000  exit
001114  00100000  exit
001118  00100000  exit
00111c  00100000  exit
001120  00100000  exit
001124  00100000  exit
001128  00100000  exit
00112c  00100000  exit
001130  00100000  exit
001134  00100000  exit
001138  00100000  exit
00113c  00100000  exit
001140  00100000  exit
001144  00100000  exit
001148  00100000  exit
00114c  00100000  exit
001150  00100000  exit
001154  00100000  exit
001158  00100000  exit
00115c  00100000  exit
001160  00100000  exit
001164  00100000  exit
001168  00100000  exit
00116c  00100000  exit
001170  00100000  exit
001174  00100000  exit
001178  00100000  exit
00117c  00100000  exit
001180  00100000  exit
001184  00100000  exit
001188  00100000  exit
00118c  00100000  exit
001190  00100000  exit
001194  00100000  exit
001198  00100000  exit
00119c  00100000  exit
0011a0  00100000  exit
0011a4  00100000  exit
0011a8  00100000  exit
0011ac  00100000  exit
0011b0  00100000  exit
0011b4  00100000  exit
0011b8  00100000  exit
0011bc  00100000  exit
0011c0  00100000  exit
0011c4  00100000  exit
0011c8  00100000  exit
0011cc  00100000  exit
0011d0  00100000  exit
0011d4  00100000  exit
0011d8  00100000  exit
0011dc  00100000  exit
0011e0  00100000  exit
0011e4  00100000  exit
0011e8  00100000  exit
0011ec  00100000  exit
0011f0  00100000  exit
0011f4  00100000  exit
