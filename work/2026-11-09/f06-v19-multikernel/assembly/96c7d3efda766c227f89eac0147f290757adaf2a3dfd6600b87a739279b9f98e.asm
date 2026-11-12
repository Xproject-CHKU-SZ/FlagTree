; SHA-256 96c7d3efda766c227f89eac0147f290757adaf2a3dfd6600b87a739279b9f98e
; P800 SDNN · XTDK LLVM 19 · 1185 / 1185 words decoded
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
0000bc  80330002  core_id r7
0000c0  1f8fae00  addli r30, sp, 80
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7900300  beq r7, zero, 36
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
0001b0  e3005f00  loadli.w r1,  40(r30)
0001b4  63415f00  loadli.w r2,  44(r30)
0001b8  00d20002  load_param_i r4, 1
0001bc  e3016f00  loadli.w r3,  48(r30)
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
0001e8  4b581106  ble.s r2, r1, 3604
0001ec  33110128  sext_int2long r[3:4], r2
0001f0  9f020010  addli r5, zero, 2048
0001f4  1f530000  addli r6, zero, 5
0001f8  ab094000  lui r19, 1024
0001fc  1f290000  addli r18, zero, 2
000200  1f1b0000  addli r22, zero, 1
000204  733c2ffa  store.d r[3:4], -72(r30)
000208  b3910028  sext_int2long r[4:5], r1
00020c  abf0ff7f  lui r1, 524287
000210  2bf17fff  lui r2, 1046527
000214  338d0228  zext_int2long r[27:28], r5
000218  9b90f0ff  ori r1, r1, 4095
00021c  7338affd  store.d r[27:28], -48(r30)
000220  e70f1ffe  storeli.w r1, -8(r30)
000224  ab700000  lui r1, 7
000228  9b90f0ff  ori r1, r1, 4095
00022c  e74e1ffe  storeli.w r1, -20(r30)
000230  abf07f7f  lui r1, 522239
000234  9b90f0ff  ori r1, r1, 4095
000238  e74f1ffe  storeli.w r1, -4(r30)
00023c  ab800d00  lui r1, 216
000240  9b90d0b4  ori r1, r1, 2893
000244  674b1ffe  storeli.w r1, -76(r30)
000248  9b10f1ff  ori r1, r2, 4095
00024c  670b1ffe  storeli.w r1, -80(r30)
000250  b3000028  zext_int2long r[2:3], zero
000254  73301ffc  store.d r[2:3], -64(r30)
000258  5b080000  j 64
00025c  9f301000  addli r1, zero, 11
000260  00200100  mfence { sm }
000264  80330002  core_id r7
000268  1f530000  addli r6, zero, 5
00026c  1f290000  addli r18, zero, 2
000270  1f1b0000  addli r22, zero, 1
000274  7d800000  xsignal r1, 0
000278  9f601000  addli r1, zero, 14
00027c  7d800000  xsignal r1, 0
000280  eb518ffc  load.d r[4:5], -56(r30)
000284  6b5d0ffd  load.d r[27:28], -48(r30)
000288  eb508ffb  load.d r[2:3], -72(r30)
00028c  a7910100  addli.d r[4:5], r[4:5], 1
000290  93b01104  setlt.sl r1, r[4:5], r[2:3]
000294  b7a50006  beq r1, zero, 3432
000298  e3006f00  loadli.w r1,  48(r30)
00029c  63415f00  loadli.w r2,  44(r30)
0002a0  9f221000  addli r5, zero, 10
0002a4  73343ffc  store.d r[4:5], -56(r30)
0002a8  8b901130  div.s r1, r3, r1
0002ac  8b902030  div.s r1, r1, r2
0002b0  b3900028  sext_int2long r[2:3], r1
0002b4  97b55002  sll.d r[12:13], r[2:3], r5
0002b8  9f600000  addli r1, zero, 6
0002bc  733cbffc  store.d r[12:13], -40(r30)
0002c0  b7b91300  beq r7, r1, 620
0002c4  bbe96301  bneq r7, r22, 632
0002c8  9f440000  addli r9, zero, 4
0002cc  eb510f00  load.d r[4:5], 0(r30)
0002d0  1f380000  addli r16, zero, 3
0002d4  97b06503  sll.d r[2:3], r[12:13], r22
0002d8  1f760000  addli r12, zero, 7
0002dc  9f061000  addli r13, zero, 8
0002e0  1f151000  addli r10, zero, 9
0002e4  9f321000  addli r5, zero, 11
0002e8  1f441000  addli r8, zero, 12
0002ec  9f551000  addli r11, zero, 13
0002f0  1f671000  addli r14, zero, 14
0002f4  1f7a1000  addli r20, zero, 15
0002f8  9f0c2000  addli r25, zero, 16
0002fc  1f1e2000  addli r28, zero, 17
000300  9f2a2000  addli r21, zero, 18
000304  9f0b8000  addli r23, zero, 64
000308  9f074000  addli r15, zero, 32
00030c  1f0c0001  addli r24, zero, 128
000310  9f080020  addli r17, zero, 4096
000314  9f030000  addli r7, zero, 0
000318  7d900400  xwait r9, 0
00031c  1d000300  lock zero, r6
000320  15000014  dma_cfg zero, zero, zero, 10
000324  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
000328  1f620000  addli r4, zero, 6
00032c  9f211000  addli r3, zero, 10
000330  15006015  dma_cfg zero, zero, r22, 10
000334  15002015  dma_cfg zero, zero, r18, 10
000338  15000015  dma_cfg zero, zero, r16, 10
00033c  15009014  dma_cfg zero, zero, r9, 10
000340  15006014  dma_cfg zero, zero, r6, 10
000344  15004014  dma_cfg zero, zero, r4, 10
000348  1500c014  dma_cfg zero, zero, r12, 10
00034c  1500d014  dma_cfg zero, zero, r13, 10
000350  1500a014  dma_cfg zero, zero, r10, 10
000354  15003014  dma_cfg zero, zero, r3, 10
000358  15005014  dma_cfg zero, zero, r5, 10
00035c  15008014  dma_cfg zero, zero, r8, 10
000360  1500b014  dma_cfg zero, zero, r11, 10
000364  9f352000  addli r11, zero, 19
000368  1500e014  dma_cfg zero, zero, r14, 10
00036c  15004015  dma_cfg zero, zero, r20, 10
000370  15009015  dma_cfg zero, zero, r25, 10
000374  1500c015  dma_cfg zero, zero, r28, 10
000378  15005015  dma_cfg zero, zero, r21, 10
00037c  1500b014  dma_cfg zero, zero, r11, 10
000380  9f452000  addli r11, zero, 20
000384  1500b014  dma_cfg zero, zero, r11, 10
000388  9f552000  addli r11, zero, 21
00038c  1500b014  dma_cfg zero, zero, r11, 10
000390  9f652000  addli r11, zero, 22
000394  1500b014  dma_cfg zero, zero, r11, 10
000398  9f752000  addli r11, zero, 23
00039c  1500b014  dma_cfg zero, zero, r11, 10
0003a0  9f053000  addli r11, zero, 24
0003a4  1500b014  dma_cfg zero, zero, r11, 10
0003a8  9f153000  addli r11, zero, 25
0003ac  1500b014  dma_cfg zero, zero, r11, 10
0003b0  9f253000  addli r11, zero, 26
0003b4  1500b014  dma_cfg zero, zero, r11, 10
0003b8  9f353000  addli r11, zero, 27
0003bc  1500b014  dma_cfg zero, zero, r11, 10
0003c0  9f453000  addli r11, zero, 28
0003c4  1500b014  dma_cfg zero, zero, r11, 10
0003c8  9f553000  addli r11, zero, 29
0003cc  1500b014  dma_cfg zero, zero, r11, 10
0003d0  9f653000  addli r11, zero, 30
0003d4  1500b014  dma_cfg zero, zero, r11, 10
0003d8  9f753000  addli r11, zero, 31
0003dc  1500b014  dma_cfg zero, zero, r11, 10
0003e0  150b0b00  dma_cfg r22, r22, zero, 0
0003e4  150b0002  dma_cfg r22, zero, zero, 1
0003e8  15000004  dma_cfg zero, zero, zero, 2
0003ec  15007007  dma_cfg zero, zero, r23, 3
0003f0  150cf008  dma_cfg r24, zero, r15, 4
0003f4  9508600b  dma_cfg r17, zero, r22, 5
0003f8  15000010  dma_cfg zero, zero, zero, 8
0003fc  35000000  dma_run zero
000400  1500600b  dma_cfg zero, zero, r22, 5
000404  15000010  dma_cfg zero, zero, zero, 8
000408  1d100300  unlock r6
00040c  1d800400  lock zero, r9
000410  150b0b00  dma_cfg r22, r22, zero, 0
000414  15000104  dma_cfg zero, r2, zero, 2
000418  958b7007  dma_cfg r23, r1, r23, 3
00041c  9f000010  addli r1, zero, 2048
000420  158cfb08  dma_cfg r24, r23, r15, 4
000424  9588600b  dma_cfg r17, r1, r22, 5
000428  9f501000  addli r1, zero, 13
00042c  15000010  dma_cfg zero, zero, zero, 8
000430  35000000  dma_run zero
000434  1500600b  dma_cfg zero, zero, r22, 5
000438  15000010  dma_cfg zero, zero, zero, 8
00043c  1d900400  unlock r9
000440  1d000300  lock zero, r6
000444  15000014  dma_cfg zero, zero, zero, 10
000448  15006015  dma_cfg zero, zero, r22, 10
00044c  15002015  dma_cfg zero, zero, r18, 10
000450  15000015  dma_cfg zero, zero, r16, 10
000454  15009014  dma_cfg zero, zero, r9, 10
000458  15006014  dma_cfg zero, zero, r6, 10
00045c  15004014  dma_cfg zero, zero, r4, 10
000460  1500c014  dma_cfg zero, zero, r12, 10
000464  1500d014  dma_cfg zero, zero, r13, 10
000468  1500a014  dma_cfg zero, zero, r10, 10
00046c  15003014  dma_cfg zero, zero, r3, 10
000470  15005014  dma_cfg zero, zero, r5, 10
000474  15008014  dma_cfg zero, zero, r8, 10
000478  15001014  dma_cfg zero, zero, r1, 10
00047c  9f302000  addli r1, zero, 19
000480  1500e014  dma_cfg zero, zero, r14, 10
000484  15004015  dma_cfg zero, zero, r20, 10
000488  15009015  dma_cfg zero, zero, r25, 10
00048c  1500c015  dma_cfg zero, zero, r28, 10
000490  15005015  dma_cfg zero, zero, r21, 10
000494  15001014  dma_cfg zero, zero, r1, 10
000498  9f402000  addli r1, zero, 20
00049c  15001014  dma_cfg zero, zero, r1, 10
0004a0  9f502000  addli r1, zero, 21
0004a4  15001014  dma_cfg zero, zero, r1, 10
0004a8  9f602000  addli r1, zero, 22
0004ac  15001014  dma_cfg zero, zero, r1, 10
0004b0  9f702000  addli r1, zero, 23
0004b4  15001014  dma_cfg zero, zero, r1, 10
0004b8  9f003000  addli r1, zero, 24
0004bc  15001014  dma_cfg zero, zero, r1, 10
0004c0  9f103000  addli r1, zero, 25
0004c4  15001014  dma_cfg zero, zero, r1, 10
0004c8  9f203000  addli r1, zero, 26
0004cc  15001014  dma_cfg zero, zero, r1, 10
0004d0  9f303000  addli r1, zero, 27
0004d4  15001014  dma_cfg zero, zero, r1, 10
0004d8  9f403000  addli r1, zero, 28
0004dc  15001014  dma_cfg zero, zero, r1, 10
0004e0  9f503000  addli r1, zero, 29
0004e4  15001014  dma_cfg zero, zero, r1, 10
0004e8  9f603000  addli r1, zero, 30
0004ec  15001014  dma_cfg zero, zero, r1, 10
0004f0  1500b014  dma_cfg zero, zero, r11, 10
0004f4  eb558ffd  load.d r[12:13], -40(r30)
0004f8  150b0b00  dma_cfg r22, r22, zero, 0
0004fc  150b0002  dma_cfg r22, zero, zero, 1
000500  15000004  dma_cfg zero, zero, zero, 2
000504  15007007  dma_cfg zero, zero, r23, 3
000508  150cf008  dma_cfg r24, zero, r15, 4
00050c  9508600b  dma_cfg r17, zero, r22, 5
000510  15000010  dma_cfg zero, zero, zero, 8
000514  35000000  dma_run zero
000518  1500600b  dma_cfg zero, zero, r22, 5
00051c  15000010  dma_cfg zero, zero, zero, 8
000520  1d100300  unlock r6
000524  7d000900  xsignal r18, 0
000528  5b030000  j 24
00052c  9f130000  addli r7, zero, 1
000530  9f600000  addli r1, zero, 6
000534  7d900000  xwait r1, 0
000538  5b010000  j 8
00053c  9f030000  addli r7, zero, 0
000540  8f90a571  mod.sl r[2:3], r[12:13], r[27:28]
000544  9f311000  addli r3, zero, 11
000548  a7f0f017  addli.d r[2:3], r[2:3], 3071
00054c  97c13002  srl.d r[4:5], r[2:3], r3
000550  eb500ffc  load.d r[2:3], -64(r30)
000554  73303ffe  store.d r[4:5], -32(r30)
000558  93a01100  seteq.d r1, r[4:5], r[2:3]
00055c  1f010008  addli r2, zero, 1024
000560  33010128  zext_int2long r[3:4], r2
000564  73382ffe  store.d r[3:4], -16(r30)
000568  3bac0000  bneq r1, zero, 776
00056c  b30b0b28  zext_int2long r[24:25], r22
000570  33070028  zext_int2long r[15:16], zero
000574  5b030000  j 24
000578  eb500ffe  load.d r[2:3], -32(r30)
00057c  0ba7e410  add.ul r[15:16], r[10:11], r[15:16]
000580  93a01b04  setlt.ul r1, r[24:25], r[2:3]
000584  b30b0928  zext_int2long r[24:25], r18
000588  b7ab0000  beq r1, zero, 744
00058c  8b20b710  add.ul r[2:3], r[15:16], r[12:13]
000590  eb520fff  load.d r[6:7], -16(r30)
000594  8f90a071  mod.sl r[2:3], r[2:3], r[27:28]
000598  8bb2e218  sub.sl r[6:7], r[6:7], r[15:16]
00059c  8b311d18  sub.sl r[4:5], r[27:28], r[2:3]
0005a0  8ba43240  min.ul r[10:11], r[6:7], r[4:5]
0005a4  37df03fe  beq r7, zero, -44
0005a8  1f5a0000  addli r20, zero, 5
0005ac  17b26003  sll.d r[5:6], r[2:3], r22
0005b0  1f4d0000  addli r26, zero, 4
0005b4  9f760000  addli r13, zero, 7
0005b8  9b312700  slli r3, r14, 2
0005bc  9f0d1000  addli r27, zero, 8
0005c0  9f1a1000  addli r21, zero, 9
0005c4  9f281000  addli r17, zero, 10
0005c8  9f391000  addli r19, zero, 11
0005cc  9f4c1000  addli r25, zero, 12
0005d0  1f6e1000  addli r28, zero, 14
0005d4  1f781000  addli r16, zero, 15
0005d8  1f140000  addli r8, zero, 1
0005dc  1f860300  addli r12, r7, 0
0005e0  9f038000  addli r7, zero, 64
0005e4  9f050001  addli r11, zero, 128
0005e8  1bb31400  slli r6, r9, 1
0005ec  1d000a00  lock zero, r20
0005f0  9f800120  addli r1, r3, 4096
0005f4  6b518f00  load.d r[3:4], 8(r30)
0005f8  15000014  dma_cfg zero, zero, zero, 10
0005fc  15006015  dma_cfg zero, zero, r22, 10
000600  1f3b0000  addli r22, zero, 3
000604  15002015  dma_cfg zero, zero, r18, 10
000608  1f690000  addli r18, zero, 6
00060c  8b214110  add.ul r[4:5], r[3:4], r[5:6]
000610  1f511000  addli r2, zero, 13
000614  9f020020  addli r5, zero, 4096
000618  15006015  dma_cfg zero, zero, r22, 10
00061c  1500a015  dma_cfg zero, zero, r26, 10
000620  15004015  dma_cfg zero, zero, r20, 10
000624  15002015  dma_cfg zero, zero, r18, 10
000628  1500d014  dma_cfg zero, zero, r13, 10
00062c  1500b015  dma_cfg zero, zero, r27, 10
000630  15005015  dma_cfg zero, zero, r21, 10
000634  15001015  dma_cfg zero, zero, r17, 10
000638  15003015  dma_cfg zero, zero, r19, 10
00063c  15009015  dma_cfg zero, zero, r25, 10
000640  15002014  dma_cfg zero, zero, r2, 10
000644  1f012000  addli r2, zero, 16
000648  1500c015  dma_cfg zero, zero, r28, 10
00064c  15000015  dma_cfg zero, zero, r16, 10
000650  15002014  dma_cfg zero, zero, r2, 10
000654  1f112000  addli r2, zero, 17
000658  15002014  dma_cfg zero, zero, r2, 10
00065c  1f212000  addli r2, zero, 18
000660  15002014  dma_cfg zero, zero, r2, 10
000664  1f312000  addli r2, zero, 19
000668  15002014  dma_cfg zero, zero, r2, 10
00066c  1f412000  addli r2, zero, 20
000670  15002014  dma_cfg zero, zero, r2, 10
000674  1f512000  addli r2, zero, 21
000678  15002014  dma_cfg zero, zero, r2, 10
00067c  1f612000  addli r2, zero, 22
000680  15002014  dma_cfg zero, zero, r2, 10
000684  1f712000  addli r2, zero, 23
000688  15002014  dma_cfg zero, zero, r2, 10
00068c  1f013000  addli r2, zero, 24
000690  15002014  dma_cfg zero, zero, r2, 10
000694  1f113000  addli r2, zero, 25
000698  15002014  dma_cfg zero, zero, r2, 10
00069c  1f213000  addli r2, zero, 26
0006a0  15002014  dma_cfg zero, zero, r2, 10
0006a4  1f313000  addli r2, zero, 27
0006a8  15002014  dma_cfg zero, zero, r2, 10
0006ac  1f413000  addli r2, zero, 28
0006b0  15002014  dma_cfg zero, zero, r2, 10
0006b4  1f513000  addli r2, zero, 29
0006b8  15002014  dma_cfg zero, zero, r2, 10
0006bc  1f613000  addli r2, zero, 30
0006c0  15002014  dma_cfg zero, zero, r2, 10
0006c4  1f713000  addli r2, zero, 31
0006c8  15002014  dma_cfg zero, zero, r2, 10
0006cc  1f014000  addli r2, zero, 32
0006d0  15040400  dma_cfg r8, r8, zero, 0
0006d4  15040002  dma_cfg r8, zero, zero, 1
0006d8  15000004  dma_cfg zero, zero, zero, 2
0006dc  95027006  dma_cfg r5, zero, r7, 3
0006e0  95052008  dma_cfg r11, zero, r2, 4
0006e4  0b91b038  mod.s r2, r1, r11
0006e8  9502800a  dma_cfg r5, zero, r8, 5
0006ec  15000010  dma_cfg zero, zero, zero, 8
0006f0  35000000  dma_run zero
0006f4  1500800a  dma_cfg zero, zero, r8, 5
0006f8  15000010  dma_cfg zero, zero, zero, 8
0006fc  1d100a00  unlock r20
000700  1d000d00  lock zero, r26
000704  9b421100  srli r5, r2, 1
000708  15040400  dma_cfg r8, r8, zero, 0
00070c  15000204  dma_cfg zero, r4, zero, 2
000710  8b925018  sub.s r5, r1, r5
000714  8b902018  sub.s r1, r1, r2
000718  1f210000  addli r2, zero, 2
00071c  9f828200  addli r5, r5, 64
000720  95827106  dma_cfg r5, r3, r7, 3
000724  abf2ff7f  lui r5, 524287
000728  9bb12400  slli r3, r9, 2
00072c  1ff23400  addli r4, r9, 31
000730  9b9202f8  ori r5, r5, 3968
000734  1b425200  srli r4, r4, 5
000738  97825100  and r5, r3, r5
00073c  9b01e303  andi r3, r6, 62
000740  95854308  dma_cfg r11, r7, r4, 4
000744  97923200  or r5, r5, r3
000748  9502830a  dma_cfg r5, r6, r8, 5
00074c  15003010  dma_cfg zero, zero, r3, 8
000750  35000000  dma_run zero
000754  1500800a  dma_cfg zero, zero, r8, 5
000758  15000010  dma_cfg zero, zero, zero, 8
00075c  1d100d00  unlock r26
000760  1d000a00  lock zero, r20
000764  15000014  dma_cfg zero, zero, zero, 10
000768  15008014  dma_cfg zero, zero, r8, 10
00076c  15002014  dma_cfg zero, zero, r2, 10
000770  1f511000  addli r2, zero, 13
000774  15006015  dma_cfg zero, zero, r22, 10
000778  1f1b0000  addli r22, zero, 1
00077c  1500a015  dma_cfg zero, zero, r26, 10
000780  15004015  dma_cfg zero, zero, r20, 10
000784  15002015  dma_cfg zero, zero, r18, 10
000788  1f290000  addli r18, zero, 2
00078c  1500d014  dma_cfg zero, zero, r13, 10
000790  1500b015  dma_cfg zero, zero, r27, 10
000794  6b5d0ffd  load.d r[27:28], -48(r30)
000798  15005015  dma_cfg zero, zero, r21, 10
00079c  15001015  dma_cfg zero, zero, r17, 10
0007a0  15003015  dma_cfg zero, zero, r19, 10
0007a4  ab094000  lui r19, 1024
0007a8  15009015  dma_cfg zero, zero, r25, 10
0007ac  15002014  dma_cfg zero, zero, r2, 10
0007b0  1f012000  addli r2, zero, 16
0007b4  1500c015  dma_cfg zero, zero, r28, 10
0007b8  15000015  dma_cfg zero, zero, r16, 10
0007bc  15002014  dma_cfg zero, zero, r2, 10
0007c0  1f112000  addli r2, zero, 17
0007c4  15002014  dma_cfg zero, zero, r2, 10
0007c8  1f212000  addli r2, zero, 18
0007cc  15002014  dma_cfg zero, zero, r2, 10
0007d0  1f312000  addli r2, zero, 19
0007d4  15002014  dma_cfg zero, zero, r2, 10
0007d8  1f412000  addli r2, zero, 20
0007dc  15002014  dma_cfg zero, zero, r2, 10
0007e0  1f512000  addli r2, zero, 21
0007e4  15002014  dma_cfg zero, zero, r2, 10
0007e8  1f612000  addli r2, zero, 22
0007ec  15002014  dma_cfg zero, zero, r2, 10
0007f0  1f712000  addli r2, zero, 23
0007f4  15002014  dma_cfg zero, zero, r2, 10
0007f8  1f013000  addli r2, zero, 24
0007fc  15002014  dma_cfg zero, zero, r2, 10
000800  1f113000  addli r2, zero, 25
000804  15002014  dma_cfg zero, zero, r2, 10
000808  1f213000  addli r2, zero, 26
00080c  15002014  dma_cfg zero, zero, r2, 10
000810  1f313000  addli r2, zero, 27
000814  15002014  dma_cfg zero, zero, r2, 10
000818  1f413000  addli r2, zero, 28
00081c  15002014  dma_cfg zero, zero, r2, 10
000820  1f513000  addli r2, zero, 29
000824  15002014  dma_cfg zero, zero, r2, 10
000828  1f613000  addli r2, zero, 30
00082c  15002014  dma_cfg zero, zero, r2, 10
000830  1f713000  addli r2, zero, 31
000834  15002014  dma_cfg zero, zero, r2, 10
000838  150b0b00  dma_cfg r22, r22, zero, 0
00083c  150b0002  dma_cfg r22, zero, zero, 1
000840  15000004  dma_cfg zero, zero, zero, 2
000844  95007006  dma_cfg r1, zero, r7, 3
000848  9f030600  addli r7, r12, 0
00084c  95054008  dma_cfg r11, zero, r4, 4
000850  eb558ffd  load.d r[12:13], -40(r30)
000854  9502600b  dma_cfg r5, zero, r22, 5
000858  15003010  dma_cfg zero, zero, r3, 8
00085c  35000000  dma_run zero
000860  1500600b  dma_cfg zero, zero, r22, 5
000864  15000010  dma_cfg zero, zero, zero, 8
000868  1d100a00  unlock r20
00086c  dba1ffff  j -756
000870  1f530000  addli r6, zero, 5
000874  37a00300  beq r7, zero, 8
000878  7d000300  xsignal r6, 0
00087c  80330002  core_id r7
000880  9f300000  addli r1, zero, 3
000884  ab04807f  lui r9, 522240
000888  b7f51300  beq r7, r1, 380
00088c  3b8c6302  bneq r7, r6, 1792
000890  7d100900  xwait r18, 0
000894  7d100300  xwait r6, 0
000898  1d000900  lock zero, r18
00089c  ab01803f  lui r3, 260096
0008a0  1f723000  addli r4, zero, 31
0008a4  9f024000  addli r5, zero, 32
0008a8  9f000020  addli r1, zero, 4096
0008ac  1f310000  addli r2, zero, 3
0008b0  1f561000  addli r12, zero, 13
0008b4  2b0400c1  lui r8, 790528
0008b8  9f741000  addli r9, zero, 15
0008bc  1f75f007  addli r10, zero, 1023
0008c0  ab450000  lui r11, 4
0008c4  0d000002  ew_cfg zero, zero, zero, 1
0008c8  8d910100  ewcoeff_cfg r3, r3, zero, 0
0008cc  0d000204  ew_cfg zero, r4, zero, 2
0008d0  8d020006  ew_cfg r5, zero, zero, 3
0008d4  8d825226  ew_cfg r5, r5, r5, 19
0008d8  2d001000  dsmadd zero, zero, r1, 0
0008dc  9f600000  addli r1, zero, 6
0008e0  0d000026  ew_cfg zero, zero, zero, 19
0008e4  1d100900  unlock r18
0008e8  7d000100  xsignal r2, 0
0008ec  7d800000  xsignal r1, 0
0008f0  9f700000  addli r1, zero, 7
0008f4  7d900000  xwait r1, 0
0008f8  9f601000  addli r1, zero, 14
0008fc  7d900000  xwait r1, 0
000900  1d000900  lock zero, r18
000904  0d000002  ew_cfg zero, zero, zero, 1
000908  0d000204  ew_cfg zero, r4, zero, 2
00090c  8d020006  ew_cfg r5, zero, zero, 3
000910  8d820226  ew_cfg r5, r5, zero, 19
000914  0d060014  ew_cfg r12, zero, zero, 10
000918  e3406fff  loadli.w r1,  -76(r30)
00091c  0d091b16  ew_cfg r18, r22, r1, 11
000920  9f400000  addli r1, zero, 4
000924  0d00201a  ew_cfg zero, zero, r2, 13
000928  2b81ff40  lui r2, 266232
00092c  0d84201c  ew_cfg r8, r1, r2, 14
000930  1f010040  addli r2, zero, 8192
000934  1f040060  addli r8, zero, 12288
000938  9f101000  addli r1, zero, 9
00093c  0d80011e  ew_cfg zero, r3, zero, 15
000940  4d240100  sslut r8, r2, 0
000944  0d000014  ew_cfg zero, zero, zero, 10
000948  0d000026  ew_cfg zero, zero, zero, 19
00094c  1d100900  unlock r18
000950  7d900000  xwait r1, 0
000954  7d900400  xwait r9, 0
000958  1d000900  lock zero, r18
00095c  0d000002  ew_cfg zero, zero, zero, 1
000960  0d000504  ew_cfg zero, r10, zero, 2
000964  0d0b0006  ew_cfg r22, zero, zero, 3
000968  e3006fff  loadli.w r1,  -80(r30)
00096c  8d100000  ewcoeff_cfg r1, zero, zero, 0
000970  ad252100  dscmpnsel r11, r2, r2, 0
000974  1d100900  unlock r18
000978  1d000900  lock zero, r18
00097c  0d000002  ew_cfg zero, zero, zero, 1
000980  0d000504  ew_cfg zero, r10, zero, 2
000984  0d0b0006  ew_cfg r22, zero, zero, 3
000988  e340ffff  loadli.w r1,  -4(r30)
00098c  8d100000  ewcoeff_cfg r1, zero, zero, 0
000990  9f201000  addli r1, zero, 10
000994  ada5b508  dscmpnsel r11, r11, r11, 4
000998  1d100900  unlock r18
00099c  7d900000  xwait r1, 0
0009a0  1d000900  lock zero, r18
0009a4  ab0080bf  lui r1, 784384
0009a8  0d000002  ew_cfg zero, zero, zero, 1
0009ac  8d910000  ewcoeff_cfg r3, r1, zero, 0
0009b0  9f001000  addli r1, zero, 8
0009b4  0d000204  ew_cfg zero, r4, zero, 2
0009b8  8d020006  ew_cfg r5, zero, zero, 3
0009bc  8d825226  ew_cfg r5, r5, r5, 19
0009c0  2d01b100  dsmadd r2, r2, r11, 0
0009c4  0d000026  ew_cfg zero, zero, zero, 19
0009c8  1d100900  unlock r18
0009cc  7d800400  xsignal r9, 0
0009d0  1d000900  lock zero, r18
0009d4  0d000002  ew_cfg zero, zero, zero, 1
0009d8  8d910100  ewcoeff_cfg r3, r3, zero, 0
0009dc  0d000204  ew_cfg zero, r4, zero, 2
0009e0  8d020006  ew_cfg r5, zero, zero, 3
0009e4  8d825226  ew_cfg r5, r5, r5, 19
0009e8  2d042400  dsmadd r8, r8, r2, 0
0009ec  0d000026  ew_cfg zero, zero, zero, 19
0009f0  1d100900  unlock r18
0009f4  7d800000  xsignal r1, 0
0009f8  7d000600  xsignal r12, 0
0009fc  eb518ffc  load.d r[4:5], -56(r30)
000a00  5b11ffff  j -1912
000a04  9f300000  addli r1, zero, 3
000a08  7d900000  xwait r1, 0
000a0c  9f401000  addli r1, zero, 12
000a10  7d900000  xwait r1, 0
000a14  3d000000  xfence
000a18  00a00300  mfence { lm, sm, gm }
000a1c  eb5d0ffc  load.d r[28:29], -64(r30)
000a20  5b0b0000  j 88
000a24  1fc30540  addli r6, r11, 8196
000a28  a78d1d00  addli.d r[28:29], r[28:29], 8
000a2c  9fc11540  addli r3, r11, 8204
000a30  1f810540  addli r2, r11, 8192
000a34  9f822540  addli r5, r11, 8208
000a38  73606301  stores.w r22, 0(r6)
000a3c  6b530fff  load.d r[7:8], -16(r30)
000a40  73e08101  stores.w r24, 0(r3)
000a44  9f811540  addli r3, r11, 8200
000a48  73e04200  stores.w r4, 0(r5)
000a4c  73e00101  stores.w r16, 0(r3)
000a50  9fc13540  addli r3, r11, 8220
000a54  13a36d02  setneq.d r6, r[28:29], r[7:8]
000a58  e303cfff  loadli.w r7,  -32(r30)
000a5c  73e05101  stores.w r21, 0(r3)
000a60  9fc12540  addli r3, r11, 8212
000a64  73607100  stores.w r7, 0(r2)
000a68  1f813540  addli r2, r11, 8216
000a6c  73e08100  stores.w r8, 0(r3)
000a70  73601100  stores.w r1, 0(r2)
000a74  b7780300  beq r6, zero, 572
000a78  9bb52d00  slli r11, r27, 2
000a7c  6301ffff  loadli.w r2,  -8(r30)
000a80  6fc3c500  loads.w r6, 12(r11)
000a84  efcc0500  loads.w r25, 0(r11)
000a88  efc84500  loads.w r17, 4(r11)
000a8c  efc28500  loads.w r5, 8(r11)
000a90  efc60501  loads.w r13, 16(r11)
000a94  efcb4501  loads.w r23, 20(r11)
000a98  6fc58501  loads.w r10, 24(r11)
000a9c  efc3c501  loads.w r7, 28(r11)
000aa0  17062300  and r12, r6, r2
000aa4  9380c404  setlt.u r1, r9, r12
000aa8  3bb00000  bneq r1, zero, 12
000aac  1f0c0300  addli r24, r6, 0
000ab0  5b010000  j 8
000ab4  171c3301  or r24, r6, r19
000ab8  178d2200  and r26, r5, r2
000abc  ab07ffff  lui r15, 1048560
000ac0  9380a405  setlt.u r1, r9, r26
000ac4  3bb00000  bneq r1, zero, 12
000ac8  1f880200  addli r16, r5, 0
000acc  5b010000  j 8
000ad0  17983201  or r16, r5, r19
000ad4  17892800  and r18, r17, r2
000ad8  93802405  setlt.u r1, r9, r18
000adc  3bb00000  bneq r1, zero, 12
000ae0  1f8b0800  addli r22, r17, 0
000ae4  5b010000  j 8
000ae8  179b3801  or r22, r17, r19
000aec  17842c00  and r8, r25, r2
000af0  93808404  setlt.u r1, r9, r8
000af4  3bb00000  bneq r1, zero, 12
000af8  670e9fff  storeli.w r25, -32(r30)
000afc  db010000  j 12
000b00  97903c01  or r1, r25, r19
000b04  670e1ffe  storeli.w r1, -32(r30)
000b08  97812300  and r3, r7, r2
000b0c  93803404  setlt.u r1, r9, r3
000b10  3bb00000  bneq r1, zero, 12
000b14  9f8a0300  addli r21, r7, 0
000b18  5b010000  j 8
000b1c  979a3301  or r21, r7, r19
000b20  170a2500  and r20, r10, r2
000b24  93804405  setlt.u r1, r9, r20
000b28  3bb00000  bneq r1, zero, 12
000b2c  9f000500  addli r1, r10, 0
000b30  5b010000  j 8
000b34  97103501  or r1, r10, r19
000b38  17812b00  and r2, r23, r2
000b3c  2b07807f  lui r14, 522240
000b40  e70d1ffe  storeli.w r1, -40(r30)
000b44  13822404  setlt.u r4, r9, r2
000b48  3b400200  bneq r4, zero, 16
000b4c  ab044000  lui r9, 1024
000b50  9f800b00  addli r1, r23, 0
000b54  db010000  j 12
000b58  ab044000  lui r9, 1024
000b5c  97903b01  or r1, r23, r19
000b60  6302ffff  loadli.w r4,  -8(r30)
000b64  97894600  and r19, r13, r4
000b68  13023705  setlt.u r4, r14, r19
000b6c  3b300200  bneq r4, zero, 12
000b70  1f820600  addli r4, r13, 0
000b74  5b010000  j 8
000b78  17929600  or r4, r13, r9
000b7c  e344ffff  loadli.w r9,  -4(r30)
000b80  6347dfff  loadli.w r14,  -20(r30)
000b84  13848404  setlt.u r8, r9, r8
000b88  ab04807f  lui r9, 522240
000b8c  3b700400  bneq r8, zero, 28
000b90  1bc40c01  srli r8, r25, 16
000b94  1b041400  andi r8, r8, 1
000b98  0b948c10  add.s r8, r25, r8
000b9c  0b14e410  add.s r8, r8, r14
000ba0  1704f400  and r8, r8, r15
000ba4  670e8ffe  storeli.w r8, -32(r30)
000ba8  e347ffff  loadli.w r15,  -4(r30)
000bac  13842705  setlt.u r8, r15, r18
000bb0  1f890700  addli r18, r15, 0
000bb4  ab07ffff  lui r15, 1048560
000bb8  b7310400  beq r8, zero, 108
000bbc  1304a905  setlt.u r8, r18, r26
000bc0  37020400  beq r8, zero, 128
000bc4  9302c904  setlt.u r5, r18, r12
000bc8  3be00200  bneq r5, zero, 24
000bcc  9b420301  srli r5, r6, 16
000bd0  9b821200  andi r5, r5, 1
000bd4  8b125310  add.s r5, r6, r5
000bd8  8b92e210  add.s r5, r5, r14
000bdc  178cf200  and r24, r5, r15
000be0  93023905  setlt.u r5, r18, r19
000be4  1f840000  addli r8, r1, 0
000be8  3be00200  bneq r5, zero, 24
000bec  1bc20601  srli r4, r13, 16
000bf0  1b021200  andi r4, r4, 1
000bf4  0b924610  add.s r4, r13, r4
000bf8  0b12e210  add.s r4, r4, r14
000bfc  1702f200  and r4, r4, r15
000c00  13012904  setlt.u r2, r18, r2
000c04  e300bfff  loadli.w r1,  -40(r30)
000c08  ab094000  lui r19, 1024
000c0c  37510100  beq r2, zero, 84
000c10  13014905  setlt.u r2, r18, r20
000c14  b7210100  beq r2, zero, 104
000c18  13013904  setlt.u r2, r18, r3
000c1c  3b2801fe  bneq r2, zero, -504
000c20  5b0f0000  j 120
000c24  1bc40801  srli r8, r17, 16
000c28  1b041400  andi r8, r8, 1
000c2c  0b948810  add.s r8, r17, r8
000c30  0b14e410  add.s r8, r8, r14
000c34  170bf400  and r22, r8, r15
000c38  1304a905  setlt.u r8, r18, r26
000c3c  3b2e04fe  bneq r8, zero, -120
000c40  1bc40201  srli r8, r5, 16
000c44  1b041400  andi r8, r8, 1
000c48  8b928210  add.s r5, r5, r8
000c4c  8b92e210  add.s r5, r5, r14
000c50  1788f200  and r16, r5, r15
000c54  9302c904  setlt.u r5, r18, r12
000c58  b7dd02fe  beq r5, zero, -140
000c5c  dbf0ffff  j -124
000c60  1bc10b01  srli r2, r23, 16
000c64  1b011100  andi r2, r2, 1
000c68  0b912b10  add.s r2, r23, r2
000c6c  0b11e110  add.s r2, r2, r14
000c70  1704f100  and r8, r2, r15
000c74  13014905  setlt.u r2, r18, r20
000c78  bb0e01fe  bneq r2, zero, -96
000c7c  9b400501  srli r1, r10, 16
000c80  9b801000  andi r1, r1, 1
000c84  8b101510  add.s r1, r10, r1
000c88  8b90e010  add.s r1, r1, r14
000c8c  9780f000  and r1, r1, r15
000c90  13013904  setlt.u r2, r18, r3
000c94  3b4601fe  bneq r2, zero, -624
000c98  1bc10301  srli r2, r7, 16
000c9c  1b011100  andi r2, r2, 1
000ca0  0b912310  add.s r2, r7, r2
000ca4  0b11e110  add.s r2, r2, r14
000ca8  970af100  and r21, r2, r15
000cac  5bafffff  j -648
000cb0  9f400000  addli r1, zero, 4
000cb4  00200100  mfence { sm }
000cb8  b30d0028  zext_int2long r[28:29], zero
000cbc  7d800000  xsignal r1, 0
000cc0  9f101000  addli r1, zero, 9
000cc4  7d800000  xsignal r1, 0
000cc8  9f201000  addli r1, zero, 10
000ccc  7d800000  xsignal r1, 0
000cd0  9f700000  addli r1, zero, 7
000cd4  7d800000  xsignal r1, 0
000cd8  9f001000  addli r1, zero, 8
000cdc  7d900000  xwait r1, 0
000ce0  9f501000  addli r1, zero, 13
000ce4  7d900000  xwait r1, 0
000ce8  3d000000  xfence
000cec  00a00300  mfence { lm, sm, gm }
000cf0  db0a0000  j 84
000cf4  1fc30540  addli r6, r11, 8196
000cf8  a78d1d00  addli.d r[28:29], r[28:29], 8
000cfc  9fc11540  addli r3, r11, 8204
000d00  1f810540  addli r2, r11, 8192
000d04  1f822540  addli r4, r11, 8208
000d08  73606301  stores.w r22, 0(r6)
000d0c  6b530fff  load.d r[7:8], -16(r30)
000d10  73e08101  stores.w r24, 0(r3)
000d14  9f811540  addli r3, r11, 8200
000d18  73604101  stores.w r20, 0(r2)
000d1c  1f813540  addli r2, r11, 8216
000d20  73605200  stores.w r5, 0(r4)
000d24  73e05101  stores.w r21, 0(r3)
000d28  9fc13540  addli r3, r11, 8220
000d2c  73601100  stores.w r1, 0(r2)
000d30  13a36d02  setneq.d r6, r[28:29], r[7:8]
000d34  73e08100  stores.w r8, 0(r3)
000d38  9fc12540  addli r3, r11, 8212
000d3c  73e0d100  stores.w r13, 0(r3)
000d40  377403fa  beq r6, zero, -2788
000d44  9bb52d00  slli r11, r27, 2
000d48  9fc11560  addli r3, r11, 12300
000d4c  9f800560  addli r1, r11, 12288
000d50  1f812560  addli r2, r11, 12304
000d54  6fc40100  loads.w r8, 0(r3)
000d58  6fc70000  loads.w r14, 0(r1)
000d5c  9fc00560  addli r1, r11, 12292
000d60  ef460100  loads.w r13, 0(r2)
000d64  1fc13560  addli r2, r11, 12316
000d68  9f811560  addli r3, r11, 12296
000d6c  efc70000  loads.w r15, 0(r1)
000d70  9fc02560  addli r1, r11, 12308
000d74  ef430100  loads.w r7, 0(r2)
000d78  6301ffff  loadli.w r2,  -8(r30)
000d7c  efc10100  loads.w r3, 0(r3)
000d80  efcb0000  loads.w r23, 0(r1)
000d84  9f803560  addli r1, r11, 12312
000d88  6fc50000  loads.w r10, 0(r1)
000d8c  17022400  and r4, r8, r2
000d90  93804404  setlt.u r1, r9, r4
000d94  3bb00000  bneq r1, zero, 12
000d98  1f0c0400  addli r24, r8, 0
000d9c  5b010000  j 8
000da0  171c3401  or r24, r8, r19
000da4  178d2100  and r26, r3, r2
000da8  ab08ffff  lui r17, 1048560
000dac  9380a405  setlt.u r1, r9, r26
000db0  3bb00000  bneq r1, zero, 12
000db4  9f8a0100  addli r21, r3, 0
000db8  5b010000  j 8
000dbc  979a3101  or r21, r3, r19
000dc0  17892700  and r18, r15, r2
000dc4  93802405  setlt.u r1, r9, r18
000dc8  3bb00000  bneq r1, zero, 12
000dcc  1f8b0700  addli r22, r15, 0
000dd0  5b010000  j 8
000dd4  179b3701  or r22, r15, r19
000dd8  17032700  and r6, r14, r2
000ddc  93806404  setlt.u r1, r9, r6
000de0  3bb00000  bneq r1, zero, 12
000de4  1f0a0700  addli r20, r14, 0
000de8  5b010000  j 8
000dec  171a3701  or r20, r14, r19
000df0  17862300  and r12, r7, r2
000df4  9380c404  setlt.u r1, r9, r12
000df8  3bb00000  bneq r1, zero, 12
000dfc  670e7ffe  storeli.w r7, -32(r30)
000e00  db010000  j 12
000e04  97903301  or r1, r7, r19
000e08  670e1ffe  storeli.w r1, -32(r30)
000e0c  970c2500  and r25, r10, r2
000e10  93809405  setlt.u r1, r9, r25
000e14  3bb00000  bneq r1, zero, 12
000e18  9f000500  addli r1, r10, 0
000e1c  5b010000  j 8
000e20  97103501  or r1, r10, r19
000e24  17812b00  and r2, r23, r2
000e28  2b08807f  lui r16, 522240
000e2c  e70d1ffe  storeli.w r1, -40(r30)
000e30  93822404  setlt.u r5, r9, r2
000e34  3bc00200  bneq r5, zero, 16
000e38  ab044000  lui r9, 1024
000e3c  9f800b00  addli r1, r23, 0
000e40  db010000  j 12
000e44  ab044000  lui r9, 1024
000e48  97903b01  or r1, r23, r19
000e4c  e302ffff  loadli.w r5,  -8(r30)
000e50  97895600  and r19, r13, r5
000e54  93023805  setlt.u r5, r16, r19
000e58  3bb00200  bneq r5, zero, 12
000e5c  9f820600  addli r5, r13, 0
000e60  5b010000  j 8
000e64  97929600  or r5, r13, r9
000e68  e344ffff  loadli.w r9,  -4(r30)
000e6c  13836404  setlt.u r6, r9, r6
000e70  ab04807f  lui r9, 522240
000e74  3b700300  bneq r6, zero, 28
000e78  1b430701  srli r6, r14, 16
000e7c  1b031300  andi r6, r6, 1
000e80  0b136710  add.s r6, r14, r6
000e84  6347dfff  loadli.w r14,  -20(r30)
000e88  0b13e310  add.s r6, r6, r14
000e8c  170a1301  and r20, r6, r17
000e90  6348ffff  loadli.w r16,  -4(r30)
000e94  6347dfff  loadli.w r14,  -20(r30)
000e98  13032805  setlt.u r6, r16, r18
000e9c  37620300  beq r6, zero, 152
000ea0  1303a805  setlt.u r6, r16, r26
000ea4  b7320300  beq r6, zero, 172
000ea8  93014804  setlt.u r3, r16, r4
000eac  37830100  beq r3, zero, 192
000eb0  93013805  setlt.u r3, r16, r19
000eb4  3be00100  bneq r3, zero, 24
000eb8  9bc10601  srli r3, r13, 16
000ebc  9b811100  andi r3, r3, 1
000ec0  8b913610  add.s r3, r13, r3
000ec4  8b91e110  add.s r3, r3, r14
000ec8  97821101  and r5, r3, r17
000ecc  13012804  setlt.u r2, r16, r2
000ed0  6304cfff  loadli.w r8,  -32(r30)
000ed4  ab094000  lui r19, 1024
000ed8  9f860000  addli r13, r1, 0
000edc  3b600100  bneq r2, zero, 24
000ee0  1bc10b01  srli r2, r23, 16
000ee4  1b011100  andi r2, r2, 1
000ee8  0b912b10  add.s r2, r23, r2
000eec  0b11e110  add.s r2, r2, r14
000ef0  97061101  and r13, r2, r17
000ef4  13019805  setlt.u r2, r16, r25
000ef8  e300bfff  loadli.w r1,  -40(r30)
000efc  3b600100  bneq r2, zero, 24
000f00  9b400501  srli r1, r10, 16
000f04  9b801000  andi r1, r1, 1
000f08  8b101510  add.s r1, r10, r1
000f0c  8b90e010  add.s r1, r1, r14
000f10  97801001  and r1, r1, r17
000f14  1301c804  setlt.u r2, r16, r12
000f18  3b7701fe  bneq r2, zero, -548
000f1c  1bc10301  srli r2, r7, 16
000f20  1b011100  andi r2, r2, 1
000f24  0b912310  add.s r2, r7, r2
000f28  0b11e110  add.s r2, r2, r14
000f2c  17041101  and r8, r2, r17
000f30  dbb8ffff  j -572
000f34  1bc30701  srli r6, r15, 16
000f38  1b031300  andi r6, r6, 1
000f3c  0b936710  add.s r6, r15, r6
000f40  0b13e310  add.s r6, r6, r14
000f44  170b1301  and r22, r6, r17
000f48  1303a805  setlt.u r6, r16, r26
000f4c  3b7d03fe  bneq r6, zero, -164
000f50  1bc30101  srli r6, r3, 16
000f54  1b031300  andi r6, r6, 1
000f58  8b916110  add.s r3, r3, r6
000f5c  8b91e110  add.s r3, r3, r14
000f60  978a1101  and r21, r3, r17
000f64  93014804  setlt.u r3, r16, r4
000f68  3bad01fe  bneq r3, zero, -184
000f6c  9b410401  srli r3, r8, 16
000f70  9b811100  andi r3, r3, 1
000f74  8b113410  add.s r3, r8, r3
000f78  8b91e110  add.s r3, r3, r14
000f7c  178c1101  and r24, r3, r17
000f80  93013805  setlt.u r3, r16, r19
000f84  b7dc01fe  beq r3, zero, -204
000f88  dbe8ffff  j -188
000f8c  eb518ffc  load.d r[4:5], -56(r30)
000f90  bbeb03f8  bneq r7, zero, -3336
000f94  9f321000  addli r5, zero, 11
000f98  6b540f01  load.d r[9:10], 16(r30)
000f9c  97b06503  sll.d r[2:3], r[12:13], r22
000fa0  7d900200  xwait r5, 0
000fa4  1d000300  lock zero, r6
000fa8  9f028000  addli r5, zero, 64
000fac  8b201410  add.ul r[2:3], r[9:10], r[2:3]
000fb0  150b0b00  dma_cfg r22, r22, zero, 0
000fb4  1f048040  addli r8, zero, 8256
000fb8  15000b02  dma_cfg zero, r22, zero, 1
000fbc  15010004  dma_cfg r2, zero, zero, 2
000fc0  95005406  dma_cfg r1, r8, r5, 3
000fc4  9f004000  addli r1, zero, 32
000fc8  1f010001  addli r2, zero, 128
000fcc  95021108  dma_cfg r5, r2, r1, 4
000fd0  9f000010  addli r1, zero, 2048
000fd4  1f010020  addli r2, zero, 4096
000fd8  9500610b  dma_cfg r1, r2, r22, 5
000fdc  9f401000  addli r1, zero, 12
000fe0  15000010  dma_cfg zero, zero, zero, 8
000fe4  35000000  dma_run zero
000fe8  1500600b  dma_cfg zero, zero, r22, 5
000fec  15000010  dma_cfg zero, zero, zero, 8
000ff0  1d100300  unlock r6
000ff4  7d800000  xsignal r1, 0
000ff8  5b52feff  j -3440
000ffc  7d000000  xsignal zero, 0
001000  bbe00300  bneq r7, zero, 56
001004  9f200000  addli r1, zero, 2
001008  7d100000  xwait zero, 0
00100c  7d100000  xwait zero, 0
001010  7d100000  xwait zero, 0
001014  7d100000  xwait zero, 0
001018  7d100000  xwait zero, 0
00101c  7d100000  xwait zero, 0
001020  7d100000  xwait zero, 0
001024  7d100000  xwait zero, 0
001028  1d800000  lock zero, r1
00102c  0d000020  ew_cfg zero, zero, zero, 16
001030  1d900000  unlock r1
001034  7d400000  xsignal_mode_cfg zero
001038  9f8eae00  addli sp, sp, 80
00103c  00a00300  mfence { lm, sm, gm }
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
001270  00100000  exit
001274  00100000  exit
001278  00100000  exit
00127c  00100000  exit
001280  00100000  exit
