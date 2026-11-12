; SHA-256 05456923d5e80e4311a932889c38d794a1c021ecb5a2b0f5bc3a21471c9a3d2a
; P800 SDNN · XTDK LLVM 19 · 1180 / 1180 words decoded
; bound names: triton_unk_fused_1
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
0000b4  9f8edefe  addli sp, sp, -152
0000b8  9f100000  addli r1, zero, 1
0000bc  00360002  core_id r12
0000c0  1f8fbe00  addli r30, sp, 88
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7100600  beq r12, zero, 36
0000cc  2bf1ffff  lui r2, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b10f1ff  ori r1, r2, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  5b190000  j 200
0000ec  1f220000  addli r4, zero, 2
0000f0  fdd00000  uni_sram_cfg r1, r1
0000f4  9f420000  addli r5, zero, 4
0000f8  6b518f01  load.d r[3:4], 24(r30)
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
00014c  1f411000  addli r2, zero, 12
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
00019c  7d000100  xsignal r2, 0
0001a0  9f601000  addli r1, zero, 14
0001a4  1f711000  addli r2, zero, 15
0001a8  7d800000  xsignal r1, 0
0001ac  7d000100  xsignal r2, 0
0001b0  e3004f00  loadli.w r1,  32(r30)
0001b4  63414f00  loadli.w r2,  36(r30)
0001b8  00d20002  load_param_i r4, 1
0001bc  e3015f00  loadli.w r3,  40(r30)
0001c0  8b101120  mul.s r1, r2, r1
0001c4  1f010200  addli r2, r4, 0
0001c8  0b913050  fmac.s r2, r1, r3
0001cc  8b913020  mul.s r3, r1, r3
0001d0  1f71f1ff  addli r2, r2, -1
0001d4  0b114130  div.s r2, r2, r4
0001d8  00520002  load_param_i r4, 0
0001dc  8b104120  mul.s r1, r2, r4
0001e0  0b114150  fmac.s r2, r2, r4
0001e4  0b113140  min.s r2, r2, r3
0001e8  4b081106  ble.s r2, r1, 3584
0001ec  b3960028  sext_int2long r[14:15], r1
0001f0  abf0ff7f  lui r1, 524287
0001f4  33110128  sext_int2long r[3:4], r2
0001f8  1f540000  addli r8, zero, 5
0001fc  2b084000  lui r16, 1024
000200  1f290000  addli r18, zero, 2
000204  1f1a0000  addli r20, zero, 1
000208  9b90f0ff  ori r1, r1, 4095
00020c  73382ffa  store.d r[3:4], -80(r30)
000210  1f010008  addli r2, zero, 1024
000214  e74d1ffe  storeli.w r1, -36(r30)
000218  ab700000  lui r1, 7
00021c  b30c0128  zext_int2long r[26:27], r2
000220  9b90f0ff  ori r1, r1, 4095
000224  73349ffd  store.d r[26:27], -56(r30)
000228  e74e1ffe  storeli.w r1, -20(r30)
00022c  abf07f7f  lui r1, 522239
000230  9b98f0ff  ori r17, r1, 4095
000234  ab800d00  lui r1, 216
000238  9b90d0b4  ori r1, r1, 2893
00023c  e74f1fff  storeli.w r17, -4(r30)
000240  e74a1ffe  storeli.w r1, -84(r30)
000244  abf07fff  lui r1, 1046527
000248  9b90f0ff  ori r1, r1, 4095
00024c  e70a1ffe  storeli.w r1, -88(r30)
000250  b3000028  zext_int2long r[2:3], zero
000254  733c1ffa  store.d r[2:3], -72(r30)
000258  5b080000  j 64
00025c  9f301000  addli r1, zero, 11
000260  00200100  mfence { sm }
000264  00360002  core_id r12
000268  1f540000  addli r8, zero, 5
00026c  1f290000  addli r18, zero, 2
000270  1f1a0000  addli r20, zero, 1
000274  7d800000  xsignal r1, 0
000278  9f601000  addli r1, zero, 14
00027c  7d800000  xsignal r1, 0
000280  eb560ffc  load.d r[14:15], -64(r30)
000284  eb5c8ffc  load.d r[26:27], -56(r30)
000288  eb500ffb  load.d r[2:3], -80(r30)
00028c  a7960600  addli.d r[14:15], r[14:15], 1
000290  93b01604  setlt.sl r1, r[14:15], r[2:3]
000294  37d50006  beq r1, zero, 3412
000298  e3005f00  loadli.w r1,  40(r30)
00029c  63414f00  loadli.w r2,  36(r30)
0002a0  eb510f00  load.d r[4:5], 0(r30)
0002a4  7330dffc  store.d r[14:15], -64(r30)
0002a8  8b901630  div.s r1, r13, r1
0002ac  8b902030  div.s r1, r1, r2
0002b0  33930028  sext_int2long r[7:8], r1
0002b4  9f101000  addli r1, zero, 9
0002b8  97301302  sll.d r[2:3], r[7:8], r1
0002bc  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
0002c0  73381ffc  store.d r[2:3], -48(r30)
0002c4  9f600000  addli r1, zero, 6
0002c8  b7291600  beq r12, r1, 616
0002cc  9f040000  addli r9, zero, 0
0002d0  bb394601  bneq r12, r20, 620
0002d4  9f450000  addli r11, zero, 4
0002d8  9f300000  addli r1, zero, 3
0002dc  1f6b0000  addli r22, zero, 6
0002e0  1f760000  addli r12, zero, 7
0002e4  9f011000  addli r3, zero, 8
0002e8  9f181000  addli r17, zero, 9
0002ec  9f221000  addli r5, zero, 10
0002f0  1f371000  addli r14, zero, 11
0002f4  1f451000  addli r10, zero, 12
0002f8  9f561000  addli r13, zero, 13
0002fc  1f621000  addli r4, zero, 14
000300  9f791000  addli r19, zero, 15
000304  9f0d2000  addli r27, zero, 16
000308  1f1e2000  addli r28, zero, 17
00030c  9f773000  addli r15, zero, 31
000310  9f0a8000  addli r21, zero, 64
000314  9f0b0001  addli r23, zero, 128
000318  1f0c0004  addli r24, zero, 512
00031c  7d900500  xwait r11, 0
000320  1d000400  lock zero, r8
000324  15000014  dma_cfg zero, zero, zero, 10
000328  15004015  dma_cfg zero, zero, r20, 10
00032c  15002015  dma_cfg zero, zero, r18, 10
000330  15001014  dma_cfg zero, zero, r1, 10
000334  9f202000  addli r1, zero, 18
000338  1500b014  dma_cfg zero, zero, r11, 10
00033c  15008014  dma_cfg zero, zero, r8, 10
000340  15006015  dma_cfg zero, zero, r22, 10
000344  1500c014  dma_cfg zero, zero, r12, 10
000348  15003014  dma_cfg zero, zero, r3, 10
00034c  15001015  dma_cfg zero, zero, r17, 10
000350  15005014  dma_cfg zero, zero, r5, 10
000354  1500e014  dma_cfg zero, zero, r14, 10
000358  1500a014  dma_cfg zero, zero, r10, 10
00035c  1500d014  dma_cfg zero, zero, r13, 10
000360  15004014  dma_cfg zero, zero, r4, 10
000364  1f020008  addli r4, zero, 1024
000368  15003015  dma_cfg zero, zero, r19, 10
00036c  1500b015  dma_cfg zero, zero, r27, 10
000370  1500c015  dma_cfg zero, zero, r28, 10
000374  15001014  dma_cfg zero, zero, r1, 10
000378  9f302000  addli r1, zero, 19
00037c  15001014  dma_cfg zero, zero, r1, 10
000380  9f402000  addli r1, zero, 20
000384  15001014  dma_cfg zero, zero, r1, 10
000388  9f502000  addli r1, zero, 21
00038c  15001014  dma_cfg zero, zero, r1, 10
000390  9f602000  addli r1, zero, 22
000394  15001014  dma_cfg zero, zero, r1, 10
000398  9f702000  addli r1, zero, 23
00039c  15001014  dma_cfg zero, zero, r1, 10
0003a0  9f003000  addli r1, zero, 24
0003a4  15001014  dma_cfg zero, zero, r1, 10
0003a8  9f103000  addli r1, zero, 25
0003ac  15001014  dma_cfg zero, zero, r1, 10
0003b0  9f203000  addli r1, zero, 26
0003b4  15001014  dma_cfg zero, zero, r1, 10
0003b8  9f303000  addli r1, zero, 27
0003bc  15001014  dma_cfg zero, zero, r1, 10
0003c0  9f403000  addli r1, zero, 28
0003c4  15001014  dma_cfg zero, zero, r1, 10
0003c8  9f503000  addli r1, zero, 29
0003cc  15001014  dma_cfg zero, zero, r1, 10
0003d0  9f603000  addli r1, zero, 30
0003d4  15001014  dma_cfg zero, zero, r1, 10
0003d8  1500f014  dma_cfg zero, zero, r15, 10
0003dc  150a0a00  dma_cfg r20, r20, zero, 0
0003e0  150a0002  dma_cfg r20, zero, zero, 1
0003e4  15000004  dma_cfg zero, zero, zero, 2
0003e8  15005007  dma_cfg zero, zero, r21, 3
0003ec  950b3008  dma_cfg r23, zero, r3, 4
0003f0  1502400b  dma_cfg r4, zero, r20, 5
0003f4  15000010  dma_cfg zero, zero, zero, 8
0003f8  35000000  dma_run zero
0003fc  1500400b  dma_cfg zero, zero, r20, 5
000400  15000010  dma_cfg zero, zero, zero, 8
000404  1d100400  unlock r8
000408  1d800500  lock zero, r11
00040c  150a0a00  dma_cfg r20, r20, zero, 0
000410  eb500ffd  load.d r[2:3], -48(r30)
000414  15000104  dma_cfg zero, r2, zero, 2
000418  958a5007  dma_cfg r21, r1, r21, 3
00041c  9f300000  addli r1, zero, 3
000420  1f611000  addli r2, zero, 14
000424  958b3a08  dma_cfg r23, r21, r3, 4
000428  15024c0b  dma_cfg r4, r24, r20, 5
00042c  15000010  dma_cfg zero, zero, zero, 8
000430  35000000  dma_run zero
000434  1500400b  dma_cfg zero, zero, r20, 5
000438  15000010  dma_cfg zero, zero, zero, 8
00043c  1d900500  unlock r11
000440  1d000400  lock zero, r8
000444  15000014  dma_cfg zero, zero, zero, 10
000448  15004015  dma_cfg zero, zero, r20, 10
00044c  15002015  dma_cfg zero, zero, r18, 10
000450  15001014  dma_cfg zero, zero, r1, 10
000454  9f202000  addli r1, zero, 18
000458  1500b014  dma_cfg zero, zero, r11, 10
00045c  15008014  dma_cfg zero, zero, r8, 10
000460  15006015  dma_cfg zero, zero, r22, 10
000464  1500c014  dma_cfg zero, zero, r12, 10
000468  15003014  dma_cfg zero, zero, r3, 10
00046c  15001015  dma_cfg zero, zero, r17, 10
000470  15005014  dma_cfg zero, zero, r5, 10
000474  1500e014  dma_cfg zero, zero, r14, 10
000478  1500a014  dma_cfg zero, zero, r10, 10
00047c  1500d014  dma_cfg zero, zero, r13, 10
000480  15002014  dma_cfg zero, zero, r2, 10
000484  15003015  dma_cfg zero, zero, r19, 10
000488  e348ffff  loadli.w r17,  -4(r30)
00048c  1500b015  dma_cfg zero, zero, r27, 10
000490  1500c015  dma_cfg zero, zero, r28, 10
000494  15001014  dma_cfg zero, zero, r1, 10
000498  9f302000  addli r1, zero, 19
00049c  15001014  dma_cfg zero, zero, r1, 10
0004a0  9f402000  addli r1, zero, 20
0004a4  15001014  dma_cfg zero, zero, r1, 10
0004a8  9f502000  addli r1, zero, 21
0004ac  15001014  dma_cfg zero, zero, r1, 10
0004b0  9f602000  addli r1, zero, 22
0004b4  15001014  dma_cfg zero, zero, r1, 10
0004b8  9f702000  addli r1, zero, 23
0004bc  15001014  dma_cfg zero, zero, r1, 10
0004c0  9f003000  addli r1, zero, 24
0004c4  15001014  dma_cfg zero, zero, r1, 10
0004c8  9f103000  addli r1, zero, 25
0004cc  15001014  dma_cfg zero, zero, r1, 10
0004d0  9f203000  addli r1, zero, 26
0004d4  15001014  dma_cfg zero, zero, r1, 10
0004d8  9f303000  addli r1, zero, 27
0004dc  15001014  dma_cfg zero, zero, r1, 10
0004e0  9f403000  addli r1, zero, 28
0004e4  15001014  dma_cfg zero, zero, r1, 10
0004e8  9f503000  addli r1, zero, 29
0004ec  15001014  dma_cfg zero, zero, r1, 10
0004f0  9f603000  addli r1, zero, 30
0004f4  15001014  dma_cfg zero, zero, r1, 10
0004f8  1500f014  dma_cfg zero, zero, r15, 10
0004fc  150a0a00  dma_cfg r20, r20, zero, 0
000500  150a0002  dma_cfg r20, zero, zero, 1
000504  15000004  dma_cfg zero, zero, zero, 2
000508  15005007  dma_cfg zero, zero, r21, 3
00050c  950b3008  dma_cfg r23, zero, r3, 4
000510  1502400b  dma_cfg r4, zero, r20, 5
000514  15000010  dma_cfg zero, zero, zero, 8
000518  35000000  dma_run zero
00051c  1500400b  dma_cfg zero, zero, r20, 5
000520  15000010  dma_cfg zero, zero, zero, 8
000524  1d100400  unlock r8
000528  7d000900  xsignal r18, 0
00052c  5b020000  j 16
000530  9f140000  addli r9, zero, 1
000534  9f600000  addli r1, zero, 6
000538  7d900000  xwait r1, 0
00053c  9f001000  addli r1, zero, 8
000540  9f211000  addli r3, zero, 10
000544  973d1302  sll.d r[28:29], r[7:8], r1
000548  8f909d71  mod.sl r[2:3], r[28:29], r[26:27]
00054c  a7f0f009  addli.d r[2:3], r[2:3], 1279
000550  17c53002  srl.d r[11:12], r[2:3], r3
000554  eb508ffb  load.d r[2:3], -72(r30)
000558  93201500  seteq.d r1, r[11:12], r[2:3]
00055c  1f010002  addli r2, zero, 256
000560  33010128  zext_int2long r[3:4], r2
000564  73382ffe  store.d r[3:4], -16(r30)
000568  3bec0000  bneq r1, zero, 792
00056c  b30b0a28  zext_int2long r[24:25], r20
000570  b3030028  zext_int2long r[8:9], zero
000574  7330bfff  store.d r[28:29], -32(r30)
000578  db020000  j 20
00057c  93a0ab04  setlt.ul r1, r[24:25], r[11:12]
000580  8b237710  add.ul r[8:9], r[15:16], r[8:9]
000584  b30b0928  zext_int2long r[24:25], r18
000588  b7eb0000  beq r1, zero, 760
00058c  8ba0b311  add.ul r[2:3], r[8:9], r[28:29]
000590  eb520fff  load.d r[6:7], -16(r30)
000594  8f909071  mod.sl r[2:3], r[2:3], r[26:27]
000598  8bb27218  sub.sl r[6:7], r[6:7], r[8:9]
00059c  8bb11c18  sub.sl r[4:5], r[26:27], r[2:3]
0005a0  0ba73240  min.ul r[15:16], r[6:7], r[4:5]
0005a4  37ef04fe  beq r9, zero, -40
0005a8  9f590000  addli r19, zero, 5
0005ac  9bb12300  slli r3, r7, 2
0005b0  17b24003  sll.d r[5:6], r[2:3], r20
0005b4  1f4d0000  addli r26, zero, 4
0005b8  9f660000  addli r13, zero, 6
0005bc  9f0a1000  addli r21, zero, 8
0005c0  1f481000  addli r16, zero, 12
0005c4  9f5c1000  addli r25, zero, 13
0005c8  1f6b1000  addli r22, zero, 14
0005cc  9f781000  addli r17, zero, 15
0005d0  a70d0500  addli.d r[28:29], r[11:12], 0
0005d4  9f150000  addli r11, zero, 1
0005d8  1f050001  addli r10, zero, 128
0005dc  1f860400  addli r12, r9, 0
0005e0  9f048000  addli r9, zero, 64
0005e4  1b331700  slli r6, r14, 1
0005e8  1d800900  lock zero, r19
0005ec  9f800108  addli r1, r3, 1024
0005f0  6b518f00  load.d r[3:4], 8(r30)
0005f4  15000014  dma_cfg zero, zero, zero, 10
0005f8  15004015  dma_cfg zero, zero, r20, 10
0005fc  1f3a0000  addli r20, zero, 3
000600  15002015  dma_cfg zero, zero, r18, 10
000604  0b224110  add.ul r[5:6], r[3:4], r[5:6]
000608  1f710000  addli r2, zero, 7
00060c  1f291000  addli r18, zero, 10
000610  8b91a038  mod.s r3, r1, r10
000614  15004015  dma_cfg zero, zero, r20, 10
000618  1500a015  dma_cfg zero, zero, r26, 10
00061c  15003015  dma_cfg zero, zero, r19, 10
000620  1500d014  dma_cfg zero, zero, r13, 10
000624  15002014  dma_cfg zero, zero, r2, 10
000628  1f111000  addli r2, zero, 9
00062c  15005015  dma_cfg zero, zero, r21, 10
000630  15002014  dma_cfg zero, zero, r2, 10
000634  1f311000  addli r2, zero, 11
000638  15002015  dma_cfg zero, zero, r18, 10
00063c  15002014  dma_cfg zero, zero, r2, 10
000640  1f012000  addli r2, zero, 16
000644  15000015  dma_cfg zero, zero, r16, 10
000648  15009015  dma_cfg zero, zero, r25, 10
00064c  15006015  dma_cfg zero, zero, r22, 10
000650  15001015  dma_cfg zero, zero, r17, 10
000654  15002014  dma_cfg zero, zero, r2, 10
000658  1f112000  addli r2, zero, 17
00065c  15002014  dma_cfg zero, zero, r2, 10
000660  1f212000  addli r2, zero, 18
000664  15002014  dma_cfg zero, zero, r2, 10
000668  1f312000  addli r2, zero, 19
00066c  15002014  dma_cfg zero, zero, r2, 10
000670  1f412000  addli r2, zero, 20
000674  15002014  dma_cfg zero, zero, r2, 10
000678  1f512000  addli r2, zero, 21
00067c  15002014  dma_cfg zero, zero, r2, 10
000680  1f612000  addli r2, zero, 22
000684  15002014  dma_cfg zero, zero, r2, 10
000688  1f712000  addli r2, zero, 23
00068c  15002014  dma_cfg zero, zero, r2, 10
000690  1f013000  addli r2, zero, 24
000694  15002014  dma_cfg zero, zero, r2, 10
000698  1f113000  addli r2, zero, 25
00069c  15002014  dma_cfg zero, zero, r2, 10
0006a0  1f213000  addli r2, zero, 26
0006a4  15002014  dma_cfg zero, zero, r2, 10
0006a8  1f313000  addli r2, zero, 27
0006ac  15002014  dma_cfg zero, zero, r2, 10
0006b0  1f413000  addli r2, zero, 28
0006b4  15002014  dma_cfg zero, zero, r2, 10
0006b8  1f513000  addli r2, zero, 29
0006bc  15002014  dma_cfg zero, zero, r2, 10
0006c0  1f613000  addli r2, zero, 30
0006c4  15002014  dma_cfg zero, zero, r2, 10
0006c8  1f713000  addli r2, zero, 31
0006cc  15002014  dma_cfg zero, zero, r2, 10
0006d0  1f010008  addli r2, zero, 1024
0006d4  95850500  dma_cfg r11, r11, zero, 0
0006d8  95050002  dma_cfg r11, zero, zero, 1
0006dc  15000004  dma_cfg zero, zero, zero, 2
0006e0  15019006  dma_cfg r2, zero, r9, 3
0006e4  15055009  dma_cfg r10, zero, r21, 4
0006e8  1501b00a  dma_cfg r2, zero, r11, 5
0006ec  1bc11100  srli r2, r3, 1
0006f0  15000010  dma_cfg zero, zero, zero, 8
0006f4  35000000  dma_run zero
0006f8  1500b00a  dma_cfg zero, zero, r11, 5
0006fc  15000010  dma_cfg zero, zero, zero, 8
000700  0b912018  sub.s r2, r1, r2
000704  8b903018  sub.s r1, r1, r3
000708  9f210000  addli r3, zero, 2
00070c  1d900900  unlock r19
000710  1d000d00  lock zero, r26
000714  1f018100  addli r2, r2, 64
000718  95850500  dma_cfg r11, r11, zero, 0
00071c  15800204  dma_cfg zero, r5, zero, 2
000720  15019206  dma_cfg r2, r4, r9, 3
000724  abf2ff7f  lui r5, 524287
000728  1b312700  slli r2, r14, 2
00072c  1f723700  addli r4, r14, 31
000730  9b9202f8  ori r5, r5, 3968
000734  1b425200  srli r4, r4, 5
000738  97025100  and r5, r2, r5
00073c  1b01e303  andi r2, r6, 62
000740  15854408  dma_cfg r10, r9, r4, 4
000744  97922200  or r5, r5, r2
000748  9502b30a  dma_cfg r5, r6, r11, 5
00074c  15002010  dma_cfg zero, zero, r2, 8
000750  35000000  dma_run zero
000754  1500b00a  dma_cfg zero, zero, r11, 5
000758  15000010  dma_cfg zero, zero, zero, 8
00075c  1d100d00  unlock r26
000760  1d800900  lock zero, r19
000764  15000014  dma_cfg zero, zero, zero, 10
000768  1500b014  dma_cfg zero, zero, r11, 10
00076c  15003014  dma_cfg zero, zero, r3, 10
000770  9f710000  addli r3, zero, 7
000774  15004015  dma_cfg zero, zero, r20, 10
000778  1f1a0000  addli r20, zero, 1
00077c  1500a015  dma_cfg zero, zero, r26, 10
000780  15003015  dma_cfg zero, zero, r19, 10
000784  1500d014  dma_cfg zero, zero, r13, 10
000788  15003014  dma_cfg zero, zero, r3, 10
00078c  9f111000  addli r3, zero, 9
000790  15005015  dma_cfg zero, zero, r21, 10
000794  15003014  dma_cfg zero, zero, r3, 10
000798  9f311000  addli r3, zero, 11
00079c  15002015  dma_cfg zero, zero, r18, 10
0007a0  1f290000  addli r18, zero, 2
0007a4  15003014  dma_cfg zero, zero, r3, 10
0007a8  9f012000  addli r3, zero, 16
0007ac  15000015  dma_cfg zero, zero, r16, 10
0007b0  2b084000  lui r16, 1024
0007b4  15009015  dma_cfg zero, zero, r25, 10
0007b8  eb5c8ffc  load.d r[26:27], -56(r30)
0007bc  15006015  dma_cfg zero, zero, r22, 10
0007c0  15001015  dma_cfg zero, zero, r17, 10
0007c4  15003014  dma_cfg zero, zero, r3, 10
0007c8  9f112000  addli r3, zero, 17
0007cc  15003014  dma_cfg zero, zero, r3, 10
0007d0  9f212000  addli r3, zero, 18
0007d4  15003014  dma_cfg zero, zero, r3, 10
0007d8  9f312000  addli r3, zero, 19
0007dc  15003014  dma_cfg zero, zero, r3, 10
0007e0  9f412000  addli r3, zero, 20
0007e4  15003014  dma_cfg zero, zero, r3, 10
0007e8  9f512000  addli r3, zero, 21
0007ec  15003014  dma_cfg zero, zero, r3, 10
0007f0  9f612000  addli r3, zero, 22
0007f4  15003014  dma_cfg zero, zero, r3, 10
0007f8  9f712000  addli r3, zero, 23
0007fc  15003014  dma_cfg zero, zero, r3, 10
000800  9f013000  addli r3, zero, 24
000804  15003014  dma_cfg zero, zero, r3, 10
000808  9f113000  addli r3, zero, 25
00080c  15003014  dma_cfg zero, zero, r3, 10
000810  9f213000  addli r3, zero, 26
000814  15003014  dma_cfg zero, zero, r3, 10
000818  9f313000  addli r3, zero, 27
00081c  15003014  dma_cfg zero, zero, r3, 10
000820  9f413000  addli r3, zero, 28
000824  15003014  dma_cfg zero, zero, r3, 10
000828  9f513000  addli r3, zero, 29
00082c  15003014  dma_cfg zero, zero, r3, 10
000830  9f613000  addli r3, zero, 30
000834  15003014  dma_cfg zero, zero, r3, 10
000838  9f713000  addli r3, zero, 31
00083c  15003014  dma_cfg zero, zero, r3, 10
000840  150a0a00  dma_cfg r20, r20, zero, 0
000844  150a0002  dma_cfg r20, zero, zero, 1
000848  15000004  dma_cfg zero, zero, zero, 2
00084c  95009006  dma_cfg r1, zero, r9, 3
000850  9f040600  addli r9, r12, 0
000854  15054008  dma_cfg r10, zero, r4, 4
000858  27850d00  addli.d r[11:12], r[28:29], 0
00085c  eb5d0ffe  load.d r[28:29], -32(r30)
000860  9502400b  dma_cfg r5, zero, r20, 5
000864  15002010  dma_cfg zero, zero, r2, 8
000868  35000000  dma_run zero
00086c  1500400b  dma_cfg zero, zero, r20, 5
000870  15000010  dma_cfg zero, zero, zero, 8
000874  1d900900  unlock r19
000878  e348ffff  loadli.w r17,  -4(r30)
00087c  5ba0ffff  j -768
000880  1f540000  addli r8, zero, 5
000884  2b05807f  lui r10, 522240
000888  37a00400  beq r9, zero, 8
00088c  7d000400  xsignal r8, 0
000890  eb560ffc  load.d r[14:15], -64(r30)
000894  9f300000  addli r1, zero, 3
000898  00360002  core_id r12
00089c  b7451600  beq r12, r1, 368
0008a0  bb1b8602  bneq r12, r8, 1764
0008a4  7d100900  xwait r18, 0
0008a8  7d100400  xwait r8, 0
0008ac  1d000900  lock zero, r18
0008b0  ab02803f  lui r5, 260096
0008b4  1f733000  addli r6, zero, 31
0008b8  9f001000  addli r1, zero, 8
0008bc  1f010008  addli r2, zero, 1024
0008c0  9f310000  addli r3, zero, 3
0008c4  1f521000  addli r4, zero, 13
0008c8  ab0300c1  lui r7, 790528
0008cc  9f741000  addli r9, zero, 15
0008d0  1f75f001  addli r10, zero, 255
0008d4  9f050020  addli r11, zero, 4096
0008d8  0d000002  ew_cfg zero, zero, zero, 1
0008dc  8d920200  ewcoeff_cfg r5, r5, zero, 0
0008e0  0d000304  ew_cfg zero, r6, zero, 2
0008e4  8d000006  ew_cfg r1, zero, zero, 3
0008e8  8d801026  ew_cfg r1, r1, r1, 19
0008ec  2d002000  dsmadd zero, zero, r2, 0
0008f0  1f610000  addli r2, zero, 6
0008f4  0d000026  ew_cfg zero, zero, zero, 19
0008f8  1d100900  unlock r18
0008fc  7d800100  xsignal r3, 0
000900  7d000100  xsignal r2, 0
000904  1f710000  addli r2, zero, 7
000908  7d100100  xwait r2, 0
00090c  1f611000  addli r2, zero, 14
000910  7d100100  xwait r2, 0
000914  1d000900  lock zero, r18
000918  0d000002  ew_cfg zero, zero, zero, 1
00091c  0d000304  ew_cfg zero, r6, zero, 2
000920  8d000006  ew_cfg r1, zero, zero, 3
000924  8d800026  ew_cfg r1, r1, zero, 19
000928  0d020014  ew_cfg r4, zero, zero, 10
00092c  63415fff  loadli.w r2,  -84(r30)
000930  0d092a16  ew_cfg r18, r20, r2, 11
000934  1f410000  addli r2, zero, 4
000938  0d00301a  ew_cfg zero, zero, r3, 13
00093c  ab81ff40  lui r3, 266232
000940  8d03311c  ew_cfg r7, r2, r3, 14
000944  9f010010  addli r3, zero, 2048
000948  9f030018  addli r7, zero, 3072
00094c  1f111000  addli r2, zero, 9
000950  0d80021e  ew_cfg zero, r5, zero, 15
000954  cda30100  sslut r7, r3, 0
000958  0d000014  ew_cfg zero, zero, zero, 10
00095c  0d000026  ew_cfg zero, zero, zero, 19
000960  1d100900  unlock r18
000964  7d100100  xwait r2, 0
000968  7d900400  xwait r9, 0
00096c  1d000900  lock zero, r18
000970  0d000002  ew_cfg zero, zero, zero, 1
000974  0d000504  ew_cfg zero, r10, zero, 2
000978  0d0a0006  ew_cfg r20, zero, zero, 3
00097c  63015fff  loadli.w r2,  -88(r30)
000980  0d110000  ewcoeff_cfg r2, zero, zero, 0
000984  1f211000  addli r2, zero, 10
000988  ada53100  dscmpnsel r11, r3, r3, 0
00098c  1d100900  unlock r18
000990  1d000900  lock zero, r18
000994  0d000002  ew_cfg zero, zero, zero, 1
000998  0d000504  ew_cfg zero, r10, zero, 2
00099c  0d0a0006  ew_cfg r20, zero, zero, 3
0009a0  8d180000  ewcoeff_cfg r17, zero, zero, 0
0009a4  ada5b508  dscmpnsel r11, r11, r11, 4
0009a8  1d100900  unlock r18
0009ac  7d100100  xwait r2, 0
0009b0  1d000900  lock zero, r18
0009b4  2b0180bf  lui r2, 784384
0009b8  0d000002  ew_cfg zero, zero, zero, 1
0009bc  8d120100  ewcoeff_cfg r5, r2, zero, 0
0009c0  0d000304  ew_cfg zero, r6, zero, 2
0009c4  8d000006  ew_cfg r1, zero, zero, 3
0009c8  8d801026  ew_cfg r1, r1, r1, 19
0009cc  ad81b100  dsmadd r3, r3, r11, 0
0009d0  0d000026  ew_cfg zero, zero, zero, 19
0009d4  1d100900  unlock r18
0009d8  7d800400  xsignal r9, 0
0009dc  1d000900  lock zero, r18
0009e0  0d000002  ew_cfg zero, zero, zero, 1
0009e4  8d920200  ewcoeff_cfg r5, r5, zero, 0
0009e8  0d000304  ew_cfg zero, r6, zero, 2
0009ec  8d000006  ew_cfg r1, zero, zero, 3
0009f0  8d801026  ew_cfg r1, r1, r1, 19
0009f4  ad833300  dsmadd r7, r7, r3, 0
0009f8  0d000026  ew_cfg zero, zero, zero, 19
0009fc  1d100900  unlock r18
000a00  7d800000  xsignal r1, 0
000a04  7d000200  xsignal r4, 0
000a08  5b10ffff  j -1920
000a0c  9f300000  addli r1, zero, 3
000a10  7d900000  xwait r1, 0
000a14  9f401000  addli r1, zero, 12
000a18  7d900000  xwait r1, 0
000a1c  3d000000  xfence
000a20  00a00300  mfence { lm, sm, gm }
000a24  eb5c8ffb  load.d r[26:27], -72(r30)
000a28  634abfff  loadli.w r20,  -36(r30)
000a2c  db0b0000  j 92
000a30  9fc11310  addli r3, r7, 2060
000a34  6b540fff  load.d r[9:10], -16(r30)
000a38  1fc30310  addli r6, r7, 2052
000a3c  a78c1c00  addli.d r[26:27], r[26:27], 8
000a40  9f800310  addli r1, r7, 2048
000a44  9f822310  addli r5, r7, 2064
000a48  73e07101  stores.w r23, 0(r3)
000a4c  9f811310  addli r3, r7, 2056
000a50  73606301  stores.w r22, 0(r6)
000a54  73e04200  stores.w r4, 0(r5)
000a58  13a38c02  setneq.d r6, r[26:27], r[9:10]
000a5c  6304cfff  loadli.w r8,  -32(r30)
000a60  73e01101  stores.w r17, 0(r3)
000a64  9fc13310  addli r3, r7, 2076
000a68  73e0b100  stores.w r11, 0(r3)
000a6c  9fc12310  addli r3, r7, 2068
000a70  73e08000  stores.w r8, 0(r1)
000a74  9f803310  addli r1, r7, 2072
000a78  73e00101  stores.w r16, 0(r3)
000a7c  2b084000  lui r16, 1024
000a80  73e02000  stores.w r2, 0(r1)
000a84  b7280300  beq r6, zero, 552
000a88  9bb32c00  slli r7, r25, 2
000a8c  6fc3c300  loads.w r6, 12(r7)
000a90  efcd0300  loads.w r27, 0(r7)
000a94  6fc94300  loads.w r18, 4(r7)
000a98  efc28300  loads.w r5, 8(r7)
000a9c  6fcc0301  loads.w r24, 16(r7)
000aa0  efc74301  loads.w r15, 20(r7)
000aa4  efc58301  loads.w r11, 24(r7)
000aa8  6fc4c301  loads.w r8, 28(r7)
000aac  97064301  and r13, r6, r20
000ab0  9300d504  setlt.u r1, r10, r13
000ab4  3bb00000  bneq r1, zero, 12
000ab8  9f0b0300  addli r23, r6, 0
000abc  5b010000  j 8
000ac0  971b0301  or r23, r6, r16
000ac4  178e4201  and r28, r5, r20
000ac8  2b07ffff  lui r14, 1048560
000acc  9300c505  setlt.u r1, r10, r28
000ad0  3bb00000  bneq r1, zero, 12
000ad4  9f880200  addli r17, r5, 0
000ad8  5b010000  j 8
000adc  97980201  or r17, r5, r16
000ae0  97094901  and r19, r18, r20
000ae4  93003505  setlt.u r1, r10, r19
000ae8  3bb00000  bneq r1, zero, 12
000aec  1f0b0900  addli r22, r18, 0
000af0  5b010000  j 8
000af4  171b0901  or r22, r18, r16
000af8  97844d01  and r9, r27, r20
000afc  93009504  setlt.u r1, r10, r9
000b00  3bb00000  bneq r1, zero, 12
000b04  670ebfff  storeli.w r27, -32(r30)
000b08  db010000  j 12
000b0c  97900d01  or r1, r27, r16
000b10  670e1ffe  storeli.w r1, -32(r30)
000b14  97004401  and r1, r8, r20
000b18  13011504  setlt.u r2, r10, r1
000b1c  3b300100  bneq r2, zero, 12
000b20  670d8ffe  storeli.w r8, -48(r30)
000b24  db010000  j 12
000b28  17110401  or r2, r8, r16
000b2c  670d2ffe  storeli.w r2, -48(r30)
000b30  978a4501  and r21, r11, r20
000b34  13015505  setlt.u r2, r10, r21
000b38  3b300100  bneq r2, zero, 12
000b3c  1f810500  addli r2, r11, 0
000b40  5b010000  j 8
000b44  17910501  or r2, r11, r16
000b48  97814701  and r3, r15, r20
000b4c  2b06807f  lui r12, 522240
000b50  13023504  setlt.u r4, r10, r3
000b54  3b400200  bneq r4, zero, 16
000b58  2b054000  lui r10, 1024
000b5c  1f880700  addli r16, r15, 0
000b60  5b020000  j 16
000b64  2b024000  lui r4, 1024
000b68  2b054000  lui r10, 1024
000b6c  17984700  or r16, r15, r4
000b70  170a4c01  and r20, r24, r20
000b74  13024605  setlt.u r4, r12, r20
000b78  3b300200  bneq r4, zero, 12
000b7c  1f020c00  addli r4, r24, 0
000b80  5b010000  j 8
000b84  1712ac00  or r4, r24, r10
000b88  6345ffff  loadli.w r10,  -4(r30)
000b8c  6346dfff  loadli.w r12,  -20(r30)
000b90  93049504  setlt.u r9, r10, r9
000b94  2b05807f  lui r10, 522240
000b98  3bf00400  bneq r9, zero, 28
000b9c  9bc40d01  srli r9, r27, 16
000ba0  9b841400  andi r9, r9, 1
000ba4  8b949d10  add.s r9, r27, r9
000ba8  8b94c410  add.s r9, r9, r12
000bac  9784e400  and r9, r9, r14
000bb0  670e9ffe  storeli.w r9, -32(r30)
000bb4  6347ffff  loadli.w r14,  -4(r30)
000bb8  93043705  setlt.u r9, r14, r19
000bbc  9f090700  addli r19, r14, 0
000bc0  2b07ffff  lui r14, 1048560
000bc4  37c20400  beq r9, zero, 144
000bc8  9384c905  setlt.u r9, r19, r28
000bcc  b7920400  beq r9, zero, 164
000bd0  9382d904  setlt.u r5, r19, r13
000bd4  b7e20200  beq r5, zero, 184
000bd8  93824905  setlt.u r5, r19, r20
000bdc  3be00200  bneq r5, zero, 24
000be0  1b420c01  srli r4, r24, 16
000be4  1b021200  andi r4, r4, 1
000be8  0b124c10  add.s r4, r24, r4
000bec  0b12c210  add.s r4, r4, r12
000bf0  1702e200  and r4, r4, r14
000bf4  93813904  setlt.u r3, r19, r3
000bf8  634abfff  loadli.w r20,  -36(r30)
000bfc  3be00100  bneq r3, zero, 24
000c00  9bc10701  srli r3, r15, 16
000c04  9b811100  andi r3, r3, 1
000c08  8b913710  add.s r3, r15, r3
000c0c  8b91c110  add.s r3, r3, r12
000c10  1788e100  and r16, r3, r14
000c14  93815905  setlt.u r3, r19, r21
000c18  3be00100  bneq r3, zero, 24
000c1c  1bc10501  srli r2, r11, 16
000c20  1b011100  andi r2, r2, 1
000c24  0b912510  add.s r2, r11, r2
000c28  0b11c110  add.s r2, r2, r12
000c2c  1701e100  and r2, r2, r14
000c30  93801904  setlt.u r1, r19, r1
000c34  e305afff  loadli.w r11,  -48(r30)
000c38  bbe700fe  bneq r1, zero, -520
000c3c  9b400401  srli r1, r8, 16
000c40  9b801000  andi r1, r1, 1
000c44  8b101410  add.s r1, r8, r1
000c48  8b90c010  add.s r1, r1, r12
000c4c  9785e000  and r11, r1, r14
000c50  5bbcffff  j -544
000c54  9b440901  srli r9, r18, 16
000c58  9b841400  andi r9, r9, 1
000c5c  8b149910  add.s r9, r18, r9
000c60  8b94c410  add.s r9, r9, r12
000c64  178be400  and r22, r9, r14
000c68  9384c905  setlt.u r9, r19, r28
000c6c  bb9d04fe  bneq r9, zero, -156
000c70  9bc40201  srli r9, r5, 16
000c74  9b841400  andi r9, r9, 1
000c78  8b929210  add.s r5, r5, r9
000c7c  8b92c210  add.s r5, r5, r12
000c80  9788e200  and r17, r5, r14
000c84  9382d904  setlt.u r5, r19, r13
000c88  3bcd02fe  bneq r5, zero, -176
000c8c  9b420301  srli r5, r6, 16
000c90  9b821200  andi r5, r5, 1
000c94  8b125310  add.s r5, r6, r5
000c98  8b92c210  add.s r5, r5, r12
000c9c  978be200  and r23, r5, r14
000ca0  93824905  setlt.u r5, r19, r20
000ca4  b7fc02fe  beq r5, zero, -196
000ca8  dbe9ffff  j -180
000cac  9f400000  addli r1, zero, 4
000cb0  00200100  mfence { sm }
000cb4  b30c0028  zext_int2long r[26:27], zero
000cb8  7d800000  xsignal r1, 0
000cbc  9f101000  addli r1, zero, 9
000cc0  7d800000  xsignal r1, 0
000cc4  9f201000  addli r1, zero, 10
000cc8  7d800000  xsignal r1, 0
000ccc  9f700000  addli r1, zero, 7
000cd0  7d800000  xsignal r1, 0
000cd4  9f001000  addli r1, zero, 8
000cd8  7d900000  xwait r1, 0
000cdc  9f501000  addli r1, zero, 13
000ce0  7d900000  xwait r1, 0
000ce4  3d000000  xfence
000ce8  00a00300  mfence { lm, sm, gm }
000cec  5b0b0000  j 88
000cf0  9fc11310  addli r3, r7, 2060
000cf4  6b540fff  load.d r[9:10], -16(r30)
000cf8  1fc30310  addli r6, r7, 2052
000cfc  a78c1c00  addli.d r[26:27], r[26:27], 8
000d00  9f800310  addli r1, r7, 2048
000d04  1f822310  addli r4, r7, 2064
000d08  73e07101  stores.w r23, 0(r3)
000d0c  9f811310  addli r3, r7, 2056
000d10  7360d300  stores.w r13, 0(r6)
000d14  73e05001  stores.w r21, 0(r1)
000d18  9f803310  addli r1, r7, 2072
000d1c  73605200  stores.w r5, 0(r4)
000d20  13a38c02  setneq.d r6, r[26:27], r[9:10]
000d24  73e06101  stores.w r22, 0(r3)
000d28  9fc13310  addli r3, r7, 2076
000d2c  73e02000  stores.w r2, 0(r1)
000d30  73e0b100  stores.w r11, 0(r3)
000d34  9fc12310  addli r3, r7, 2068
000d38  73e00101  stores.w r16, 0(r3)
000d3c  2b084000  lui r16, 1024
000d40  377403fa  beq r6, zero, -2788
000d44  9bb32c00  slli r7, r25, 2
000d48  9fc11318  addli r3, r7, 3084
000d4c  9f800318  addli r1, r7, 3072
000d50  1f812318  addli r2, r7, 3088
000d54  efc40100  loads.w r9, 0(r3)
000d58  6fc60000  loads.w r12, 0(r1)
000d5c  9fc00318  addli r1, r7, 3076
000d60  9f811318  addli r3, r7, 3080
000d64  6f4c0100  loads.w r24, 0(r2)
000d68  1f813318  addli r2, r7, 3096
000d6c  6fc70000  loads.w r14, 0(r1)
000d70  efc00100  loads.w r1, 0(r3)
000d74  9fc12318  addli r3, r7, 3092
000d78  ef450100  loads.w r11, 0(r2)
000d7c  efc70100  loads.w r15, 0(r3)
000d80  9fc13318  addli r3, r7, 3100
000d84  6fc40100  loads.w r8, 0(r3)
000d88  17824401  and r4, r9, r20
000d8c  13014504  setlt.u r2, r10, r4
000d90  3b300100  bneq r2, zero, 12
000d94  9f8b0400  addli r23, r9, 0
000d98  5b010000  j 8
000d9c  979b0401  or r23, r9, r16
000da0  178e4001  and r28, r1, r20
000da4  2b09ffff  lui r18, 1048560
000da8  1301c505  setlt.u r2, r10, r28
000dac  3b300100  bneq r2, zero, 12
000db0  1f8b0000  addli r22, r1, 0
000db4  5b010000  j 8
000db8  179b0001  or r22, r1, r16
000dbc  97094701  and r19, r14, r20
000dc0  13013505  setlt.u r2, r10, r19
000dc4  3b300100  bneq r2, zero, 12
000dc8  9f060700  addli r13, r14, 0
000dcc  5b010000  j 8
000dd0  97160701  or r13, r14, r16
000dd4  17034601  and r6, r12, r20
000dd8  13016504  setlt.u r2, r10, r6
000ddc  3b300100  bneq r2, zero, 12
000de0  9f0a0600  addli r21, r12, 0
000de4  5b010000  j 8
000de8  971a0601  or r21, r12, r16
000dec  17014401  and r2, r8, r20
000df0  670d2ffe  storeli.w r2, -48(r30)
000df4  13012504  setlt.u r2, r10, r2
000df8  3b300100  bneq r2, zero, 12
000dfc  670e8ffe  storeli.w r8, -32(r30)
000e00  db010000  j 12
000e04  17110401  or r2, r8, r16
000e08  670e2ffe  storeli.w r2, -32(r30)
000e0c  978d4501  and r27, r11, r20
000e10  1301b505  setlt.u r2, r10, r27
000e14  3b300100  bneq r2, zero, 12
000e18  1f810500  addli r2, r11, 0
000e1c  5b010000  j 8
000e20  17910501  or r2, r11, r16
000e24  97814701  and r3, r15, r20
000e28  ab08807f  lui r17, 522240
000e2c  93023504  setlt.u r5, r10, r3
000e30  3bc00200  bneq r5, zero, 16
000e34  2b054000  lui r10, 1024
000e38  1f880700  addli r16, r15, 0
000e3c  5b020000  j 16
000e40  ab024000  lui r5, 1024
000e44  2b054000  lui r10, 1024
000e48  17985700  or r16, r15, r5
000e4c  170a4c01  and r20, r24, r20
000e50  93824805  setlt.u r5, r17, r20
000e54  3bb00200  bneq r5, zero, 12
000e58  9f020c00  addli r5, r24, 0
000e5c  5b010000  j 8
000e60  9712ac00  or r5, r24, r10
000e64  6345ffff  loadli.w r10,  -4(r30)
000e68  13036504  setlt.u r6, r10, r6
000e6c  2b05807f  lui r10, 522240
000e70  3b700300  bneq r6, zero, 28
000e74  1b430601  srli r6, r12, 16
000e78  1b031300  andi r6, r6, 1
000e7c  0b136610  add.s r6, r12, r6
000e80  6346dfff  loadli.w r12,  -20(r30)
000e84  0b13c310  add.s r6, r6, r12
000e88  970a2301  and r21, r6, r18
000e8c  e348ffff  loadli.w r17,  -4(r30)
000e90  6346dfff  loadli.w r12,  -20(r30)
000e94  13833805  setlt.u r6, r17, r19
000e98  37520300  beq r6, zero, 148
000e9c  1383c805  setlt.u r6, r17, r28
000ea0  b7220300  beq r6, zero, 168
000ea4  93804804  setlt.u r1, r17, r4
000ea8  b7f20000  beq r1, zero, 188
000eac  93804805  setlt.u r1, r17, r20
000eb0  3be00000  bneq r1, zero, 24
000eb4  9b400c01  srli r1, r24, 16
000eb8  9b801000  andi r1, r1, 1
000ebc  8b101c10  add.s r1, r24, r1
000ec0  8b90c010  add.s r1, r1, r12
000ec4  97822001  and r5, r1, r18
000ec8  93803804  setlt.u r1, r17, r3
000ecc  634abfff  loadli.w r20,  -36(r30)
000ed0  3be00000  bneq r1, zero, 24
000ed4  9bc00701  srli r1, r15, 16
000ed8  9b801000  andi r1, r1, 1
000edc  8b901710  add.s r1, r15, r1
000ee0  8b90c010  add.s r1, r1, r12
000ee4  17882001  and r16, r1, r18
000ee8  9380b805  setlt.u r1, r17, r27
000eec  3be00000  bneq r1, zero, 24
000ef0  9bc00501  srli r1, r11, 16
000ef4  9b801000  andi r1, r1, 1
000ef8  8b901510  add.s r1, r11, r1
000efc  8b90c010  add.s r1, r1, r12
000f00  17812001  and r2, r1, r18
000f04  e300afff  loadli.w r1,  -48(r30)
000f08  e305cfff  loadli.w r11,  -32(r30)
000f0c  93801804  setlt.u r1, r17, r1
000f10  bb8700fe  bneq r1, zero, -544
000f14  9b400401  srli r1, r8, 16
000f18  9b801000  andi r1, r1, 1
000f1c  8b101410  add.s r1, r8, r1
000f20  8b90c010  add.s r1, r1, r12
000f24  97852001  and r11, r1, r18
000f28  5bb9ffff  j -568
000f2c  1b430701  srli r6, r14, 16
000f30  1b031300  andi r6, r6, 1
000f34  0b136710  add.s r6, r14, r6
000f38  0b13c310  add.s r6, r6, r12
000f3c  97062301  and r13, r6, r18
000f40  1383c805  setlt.u r6, r17, r28
000f44  bb0d03fe  bneq r6, zero, -160
000f48  1bc30001  srli r6, r1, 16
000f4c  1b031300  andi r6, r6, 1
000f50  8b906010  add.s r1, r1, r6
000f54  8b90c010  add.s r1, r1, r12
000f58  178b2001  and r22, r1, r18
000f5c  93804804  setlt.u r1, r17, r4
000f60  3bbd00fe  bneq r1, zero, -180
000f64  9bc00401  srli r1, r9, 16
000f68  9b801000  andi r1, r1, 1
000f6c  8b901410  add.s r1, r9, r1
000f70  8b90c010  add.s r1, r1, r12
000f74  978b2001  and r23, r1, r18
000f78  93804805  setlt.u r1, r17, r20
000f7c  b7ec00fe  beq r1, zero, -200
000f80  5be9ffff  j -184
000f84  3b1c06f8  bneq r12, zero, -3324
000f88  9f301000  addli r1, zero, 11
000f8c  1f018000  addli r2, zero, 64
000f90  7d900000  xwait r1, 0
000f94  1d000400  lock zero, r8
000f98  9f008010  addli r1, zero, 2112
000f9c  150a0a00  dma_cfg r20, r20, zero, 0
000fa0  15000a02  dma_cfg zero, r20, zero, 1
000fa4  eb510ffd  load.d r[4:5], -48(r30)
000fa8  15020004  dma_cfg r4, zero, zero, 2
000fac  95812006  dma_cfg r3, r1, r2, 3
000fb0  9f001000  addli r1, zero, 8
000fb4  9f010001  addli r3, zero, 128
000fb8  15811108  dma_cfg r2, r3, r1, 4
000fbc  9f000008  addli r1, zero, 1024
000fc0  1f010004  addli r2, zero, 512
000fc4  1581400b  dma_cfg r2, r1, r20, 5
000fc8  9f401000  addli r1, zero, 12
000fcc  15000010  dma_cfg zero, zero, zero, 8
000fd0  35000000  dma_run zero
000fd4  1500400b  dma_cfg zero, zero, r20, 5
000fd8  15000010  dma_cfg zero, zero, zero, 8
000fdc  1d100400  unlock r8
000fe0  7d800000  xsignal r1, 0
000fe4  db54feff  j -3420
000fe8  7d000000  xsignal zero, 0
000fec  bb600600  bneq r12, zero, 56
000ff0  9f200000  addli r1, zero, 2
000ff4  7d100000  xwait zero, 0
000ff8  7d100000  xwait zero, 0
000ffc  7d100000  xwait zero, 0
001000  7d100000  xwait zero, 0
001004  7d100000  xwait zero, 0
001008  7d100000  xwait zero, 0
00100c  7d100000  xwait zero, 0
001010  7d100000  xwait zero, 0
001014  1d800000  lock zero, r1
001018  0d000020  ew_cfg zero, zero, zero, 16
00101c  1d900000  unlock r1
001020  7d400000  xsignal_mode_cfg zero
001024  9f8ebe00  addli sp, sp, 88
001028  00a00300  mfence { lm, sm, gm }
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
0011f8  00100000  exit
0011fc  00100000  exit
001200  00100000  exit
001204  00100000  exit
001208  00100000  exit
00120c  00100000  exit
001210  00100000  exit
001214  00100000  exit
001218  00100000  exit
00121c  00100000  exit
001220  00100000  exit
001224  00100000  exit
001228  00100000  exit
00122c  00100000  exit
001230  00100000  exit
001234  00100000  exit
001238  00100000  exit
00123c  00100000  exit
001240  00100000  exit
001244  00100000  exit
001248  00100000  exit
00124c  00100000  exit
001250  00100000  exit
001254  00100000  exit
001258  00100000  exit
00125c  00100000  exit
001260  00100000  exit
001264  00100000  exit
001268  00100000  exit
00126c  00100000  exit
