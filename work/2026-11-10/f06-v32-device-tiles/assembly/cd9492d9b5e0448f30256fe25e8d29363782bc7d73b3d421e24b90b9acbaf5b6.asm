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
0001f0  4b651106  ble.s r2, r1, 3416
0001f4  33110128  sext_int2long r[3:4], r2
0001f8  1f5d0000  addli r26, zero, 5
0001fc  9f481000  addli r17, zero, 12
000200  9f270000  addli r15, zero, 2
000204  1f190000  addli r18, zero, 1
000208  73302ffc  store.d r[3:4], -64(r30)
00020c  b3910028  sext_int2long r[4:5], r1
000210  abf0ff7f  lui r1, 524287
000214  1f010010  addli r2, zero, 2048
000218  1b98f0ff  ori r16, r1, 4095
00021c  ab700000  lui r1, 7
000220  9b90f0ff  ori r1, r1, 4095
000224  e74d1ffe  storeli.w r1, -36(r30)
000228  abf07f7f  lui r1, 522239
00022c  9b90f0ff  ori r1, r1, 4095
000230  674f1ffe  storeli.w r1, -12(r30)
000234  ab800200  lui r1, 40
000238  9b902084  ori r1, r1, 2114
00023c  e74b1ffe  storeli.w r1, -68(r30)
000240  b3000128  zext_int2long r[2:3], r2
000244  73301ffe  store.d r[2:3], -32(r30)
000248  b3000028  zext_int2long r[2:3], zero
00024c  73341ffc  store.d r[2:3], -56(r30)
000250  db090000  j 76
000254  9f201000  addli r1, zero, 10
000258  00200100  mfence { sm }
00025c  9f481000  addli r17, zero, 12
000260  80330002  core_id r7
000264  9f270000  addli r15, zero, 2
000268  1f190000  addli r18, zero, 1
00026c  7d800000  xsignal r1, 0
000270  9f401000  addli r1, zero, 12
000274  7d800000  xsignal r1, 0
000278  9f601000  addli r1, zero, 14
00027c  7d800000  xsignal r1, 0
000280  9f701000  addli r1, zero, 15
000284  7d800000  xsignal r1, 0
000288  eb510ffd  load.d r[4:5], -48(r30)
00028c  eb500ffc  load.d r[2:3], -64(r30)
000290  a7910100  addli.d r[4:5], r[4:5], 1
000294  93b01104  setlt.sl r1, r[4:5], r[2:3]
000298  b7c20006  beq r1, zero, 3248
00029c  e3006f00  loadli.w r1,  48(r30)
0002a0  63415f00  loadli.w r2,  44(r30)
0002a4  9f121000  addli r5, zero, 9
0002a8  73383ffc  store.d r[4:5], -48(r30)
0002ac  8b901130  div.s r1, r3, r1
0002b0  8b902030  div.s r1, r1, r2
0002b4  b3900028  sext_int2long r[2:3], r1
0002b8  17b45002  sll.d r[9:10], r[2:3], r5
0002bc  9f600000  addli r1, zero, 6
0002c0  73348ffe  store.d r[9:10], -24(r30)
0002c4  b7891300  beq r7, r1, 608
0002c8  bbb92301  bneq r7, r18, 620
0002cc  9f480000  addli r17, zero, 4
0002d0  eb510f00  load.d r[4:5], 0(r30)
0002d4  97302403  sll.d r[2:3], r[9:10], r18
0002d8  1f760000  addli r12, zero, 7
0002dc  9f061000  addli r13, zero, 8
0002e0  9f251000  addli r11, zero, 10
0002e4  1f331000  addli r6, zero, 11
0002e8  9f421000  addli r5, zero, 12
0002ec  1f571000  addli r14, zero, 13
0002f0  9f641000  addli r9, zero, 14
0002f4  1f751000  addli r10, zero, 15
0002f8  1f042000  addli r8, zero, 16
0002fc  9f1a2000  addli r21, zero, 17
000300  1f2b2000  addli r22, zero, 18
000304  9f3b2000  addli r23, zero, 19
000308  1f4c2000  addli r24, zero, 20
00030c  9f5c2000  addli r25, zero, 21
000310  9f6d2000  addli r27, zero, 22
000314  1f7e2000  addli r28, zero, 23
000318  9f098000  addli r19, zero, 64
00031c  1f0a0001  addli r20, zero, 128
000320  9f030000  addli r7, zero, 0
000324  7d900800  xwait r17, 0
000328  1d000d00  lock zero, r26
00032c  15000014  dma_cfg zero, zero, zero, 10
000330  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
000334  9f310000  addli r3, zero, 3
000338  1f620000  addli r4, zero, 6
00033c  15002015  dma_cfg zero, zero, r18, 10
000340  1500f014  dma_cfg zero, zero, r15, 10
000344  15003014  dma_cfg zero, zero, r3, 10
000348  9f111000  addli r3, zero, 9
00034c  15001015  dma_cfg zero, zero, r17, 10
000350  1500a015  dma_cfg zero, zero, r26, 10
000354  15004014  dma_cfg zero, zero, r4, 10
000358  1500c014  dma_cfg zero, zero, r12, 10
00035c  1500d014  dma_cfg zero, zero, r13, 10
000360  15003014  dma_cfg zero, zero, r3, 10
000364  1500b014  dma_cfg zero, zero, r11, 10
000368  15006014  dma_cfg zero, zero, r6, 10
00036c  15005014  dma_cfg zero, zero, r5, 10
000370  9f023000  addli r5, zero, 24
000374  1500e014  dma_cfg zero, zero, r14, 10
000378  15009014  dma_cfg zero, zero, r9, 10
00037c  1500a014  dma_cfg zero, zero, r10, 10
000380  15008014  dma_cfg zero, zero, r8, 10
000384  15005015  dma_cfg zero, zero, r21, 10
000388  15006015  dma_cfg zero, zero, r22, 10
00038c  15007015  dma_cfg zero, zero, r23, 10
000390  15008015  dma_cfg zero, zero, r24, 10
000394  15009015  dma_cfg zero, zero, r25, 10
000398  1500b015  dma_cfg zero, zero, r27, 10
00039c  1500c015  dma_cfg zero, zero, r28, 10
0003a0  15005014  dma_cfg zero, zero, r5, 10
0003a4  9f123000  addli r5, zero, 25
0003a8  15005014  dma_cfg zero, zero, r5, 10
0003ac  9f223000  addli r5, zero, 26
0003b0  15005014  dma_cfg zero, zero, r5, 10
0003b4  9f323000  addli r5, zero, 27
0003b8  15005014  dma_cfg zero, zero, r5, 10
0003bc  9f423000  addli r5, zero, 28
0003c0  15005014  dma_cfg zero, zero, r5, 10
0003c4  9f523000  addli r5, zero, 29
0003c8  15005014  dma_cfg zero, zero, r5, 10
0003cc  9f623000  addli r5, zero, 30
0003d0  15005014  dma_cfg zero, zero, r5, 10
0003d4  9f723000  addli r5, zero, 31
0003d8  15005014  dma_cfg zero, zero, r5, 10
0003dc  9f020010  addli r5, zero, 2048
0003e0  15090900  dma_cfg r18, r18, zero, 0
0003e4  15090002  dma_cfg r18, zero, zero, 1
0003e8  15000004  dma_cfg zero, zero, zero, 2
0003ec  15003007  dma_cfg zero, zero, r19, 3
0003f0  150a8008  dma_cfg r20, zero, r8, 4
0003f4  9502200b  dma_cfg r5, zero, r18, 5
0003f8  15000010  dma_cfg zero, zero, zero, 8
0003fc  35000000  dma_run zero
000400  1500200b  dma_cfg zero, zero, r18, 5
000404  15000010  dma_cfg zero, zero, zero, 8
000408  1d100d00  unlock r26
00040c  1d800800  lock zero, r17
000410  15090900  dma_cfg r18, r18, zero, 0
000414  15000104  dma_cfg zero, r2, zero, 2
000418  95893007  dma_cfg r19, r1, r19, 3
00041c  9f000008  addli r1, zero, 1024
000420  158a8908  dma_cfg r20, r19, r8, 4
000424  9582200b  dma_cfg r5, r1, r18, 5
000428  9f300000  addli r1, zero, 3
00042c  15000010  dma_cfg zero, zero, zero, 8
000430  35000000  dma_run zero
000434  1500200b  dma_cfg zero, zero, r18, 5
000438  15000010  dma_cfg zero, zero, zero, 8
00043c  1d900800  unlock r17
000440  1d000d00  lock zero, r26
000444  15000014  dma_cfg zero, zero, zero, 10
000448  15002015  dma_cfg zero, zero, r18, 10
00044c  1500f014  dma_cfg zero, zero, r15, 10
000450  15001014  dma_cfg zero, zero, r1, 10
000454  9f401000  addli r1, zero, 12
000458  15001015  dma_cfg zero, zero, r17, 10
00045c  9f481000  addli r17, zero, 12
000460  1500a015  dma_cfg zero, zero, r26, 10
000464  15004014  dma_cfg zero, zero, r4, 10
000468  1500c014  dma_cfg zero, zero, r12, 10
00046c  1500d014  dma_cfg zero, zero, r13, 10
000470  15003014  dma_cfg zero, zero, r3, 10
000474  1500b014  dma_cfg zero, zero, r11, 10
000478  15006014  dma_cfg zero, zero, r6, 10
00047c  15001014  dma_cfg zero, zero, r1, 10
000480  9f003000  addli r1, zero, 24
000484  1500e014  dma_cfg zero, zero, r14, 10
000488  15009014  dma_cfg zero, zero, r9, 10
00048c  1500a014  dma_cfg zero, zero, r10, 10
000490  15008014  dma_cfg zero, zero, r8, 10
000494  15005015  dma_cfg zero, zero, r21, 10
000498  15006015  dma_cfg zero, zero, r22, 10
00049c  15007015  dma_cfg zero, zero, r23, 10
0004a0  15008015  dma_cfg zero, zero, r24, 10
0004a4  15009015  dma_cfg zero, zero, r25, 10
0004a8  1500b015  dma_cfg zero, zero, r27, 10
0004ac  1500c015  dma_cfg zero, zero, r28, 10
0004b0  15001014  dma_cfg zero, zero, r1, 10
0004b4  9f103000  addli r1, zero, 25
0004b8  15001014  dma_cfg zero, zero, r1, 10
0004bc  9f203000  addli r1, zero, 26
0004c0  15001014  dma_cfg zero, zero, r1, 10
0004c4  9f303000  addli r1, zero, 27
0004c8  15001014  dma_cfg zero, zero, r1, 10
0004cc  9f403000  addli r1, zero, 28
0004d0  15001014  dma_cfg zero, zero, r1, 10
0004d4  9f503000  addli r1, zero, 29
0004d8  15001014  dma_cfg zero, zero, r1, 10
0004dc  9f603000  addli r1, zero, 30
0004e0  15001014  dma_cfg zero, zero, r1, 10
0004e4  9f703000  addli r1, zero, 31
0004e8  15001014  dma_cfg zero, zero, r1, 10
0004ec  15090900  dma_cfg r18, r18, zero, 0
0004f0  15090002  dma_cfg r18, zero, zero, 1
0004f4  15000004  dma_cfg zero, zero, zero, 2
0004f8  15003007  dma_cfg zero, zero, r19, 3
0004fc  150a8008  dma_cfg r20, zero, r8, 4
000500  6b548ffe  load.d r[9:10], -24(r30)
000504  9502200b  dma_cfg r5, zero, r18, 5
000508  15000010  dma_cfg zero, zero, zero, 8
00050c  35000000  dma_run zero
000510  1500200b  dma_cfg zero, zero, r18, 5
000514  15000010  dma_cfg zero, zero, zero, 8
000518  1d100d00  unlock r26
00051c  7d800700  xsignal r15, 0
000520  5b030000  j 24
000524  9f130000  addli r7, zero, 1
000528  9f600000  addli r1, zero, 6
00052c  7d900000  xwait r1, 0
000530  5b010000  j 8
000534  9f030000  addli r7, zero, 0
000538  eb500ffe  load.d r[2:3], -32(r30)
00053c  9f311000  addli r3, zero, 11
000540  8f101470  mod.sl r[2:3], r[9:10], r[2:3]
000544  a7f0f013  addli.d r[2:3], r[2:3], 2559
000548  97ca3002  srl.d r[22:23], r[2:3], r3
00054c  eb508ffc  load.d r[2:3], -56(r30)
000550  93a01a00  seteq.d r1, r[22:23], r[2:3]
000554  1f010004  addli r2, zero, 512
000558  33010128  zext_int2long r[3:4], r2
00055c  733c2ffe  store.d r[3:4], -8(r30)
000560  3bac0000  bneq r1, zero, 776
000564  b3060928  zext_int2long r[14:15], r18
000568  b30d0028  zext_int2long r[28:29], zero
00056c  db020000  j 20
000570  93a05605  setlt.ul r1, r[14:15], r[22:23]
000574  8badbb11  add.ul r[28:29], r[24:25], r[28:29]
000578  b3860728  zext_int2long r[14:15], r15
00057c  b7bb0000  beq r1, zero, 748
000580  eb510ffe  load.d r[4:5], -32(r30)
000584  8ba08d10  add.ul r[2:3], r[28:29], r[9:10]
000588  8f903070  mod.sl r[2:3], r[2:3], r[4:5]
00058c  8bb21118  sub.sl r[6:7], r[4:5], r[2:3]
000590  eb518fff  load.d r[4:5], -8(r30)
000594  8bb5b119  sub.sl r[12:13], r[4:5], r[28:29]
000598  8bab5540  min.ul r[24:25], r[12:13], r[6:7]
00059c  37df03fe  beq r7, zero, -44
0005a0  1d000d00  lock zero, r26
0005a4  1f850300  addli r10, r7, 0
0005a8  17b32003  sll.d r[7:8], r[2:3], r18
0005ac  6b518f00  load.d r[3:4], 8(r30)
0005b0  9f4c0000  addli r25, zero, 4
0005b4  9f291000  addli r19, zero, 10
0005b8  9f381000  addli r17, zero, 11
0005bc  1f042000  addli r8, zero, 16
0005c0  9f142000  addli r9, zero, 17
0005c4  1f262000  addli r12, zero, 18
0005c8  9bb22d00  slli r5, r27, 2
0005cc  1f0a0001  addli r20, zero, 128
0005d0  1f028000  addli r4, zero, 64
0005d4  9bb51b00  slli r11, r23, 1
0005d8  15000014  dma_cfg zero, zero, zero, 10
0005dc  15002015  dma_cfg zero, zero, r18, 10
0005e0  1f390000  addli r18, zero, 3
0005e4  9f800210  addli r1, r5, 2048
0005e8  1500f014  dma_cfg zero, zero, r15, 10
0005ec  9f670000  addli r15, zero, 6
0005f0  0b236110  add.ul r[7:8], r[3:4], r[7:8]
0005f4  1f710000  addli r2, zero, 7
0005f8  9f110000  addli r3, zero, 1
0005fc  15002015  dma_cfg zero, zero, r18, 10
000600  8b924039  mod.s r5, r1, r20
000604  15009015  dma_cfg zero, zero, r25, 10
000608  1500a015  dma_cfg zero, zero, r26, 10
00060c  1500f014  dma_cfg zero, zero, r15, 10
000610  15002014  dma_cfg zero, zero, r2, 10
000614  1f011000  addli r2, zero, 8
000618  15002014  dma_cfg zero, zero, r2, 10
00061c  1f111000  addli r2, zero, 9
000620  15002014  dma_cfg zero, zero, r2, 10
000624  1f411000  addli r2, zero, 12
000628  15003015  dma_cfg zero, zero, r19, 10
00062c  15001015  dma_cfg zero, zero, r17, 10
000630  15002014  dma_cfg zero, zero, r2, 10
000634  1f511000  addli r2, zero, 13
000638  15002014  dma_cfg zero, zero, r2, 10
00063c  1f611000  addli r2, zero, 14
000640  15002014  dma_cfg zero, zero, r2, 10
000644  1f711000  addli r2, zero, 15
000648  15002014  dma_cfg zero, zero, r2, 10
00064c  1f312000  addli r2, zero, 19
000650  15008014  dma_cfg zero, zero, r8, 10
000654  15009014  dma_cfg zero, zero, r9, 10
000658  1500c014  dma_cfg zero, zero, r12, 10
00065c  15002014  dma_cfg zero, zero, r2, 10
000660  1f412000  addli r2, zero, 20
000664  15002014  dma_cfg zero, zero, r2, 10
000668  1f512000  addli r2, zero, 21
00066c  15002014  dma_cfg zero, zero, r2, 10
000670  1f612000  addli r2, zero, 22
000674  15002014  dma_cfg zero, zero, r2, 10
000678  1f712000  addli r2, zero, 23
00067c  15002014  dma_cfg zero, zero, r2, 10
000680  1f013000  addli r2, zero, 24
000684  15002014  dma_cfg zero, zero, r2, 10
000688  1f113000  addli r2, zero, 25
00068c  15002014  dma_cfg zero, zero, r2, 10
000690  1f213000  addli r2, zero, 26
000694  15002014  dma_cfg zero, zero, r2, 10
000698  1f313000  addli r2, zero, 27
00069c  15002014  dma_cfg zero, zero, r2, 10
0006a0  1f413000  addli r2, zero, 28
0006a4  15002014  dma_cfg zero, zero, r2, 10
0006a8  1f513000  addli r2, zero, 29
0006ac  15002014  dma_cfg zero, zero, r2, 10
0006b0  1f613000  addli r2, zero, 30
0006b4  15002014  dma_cfg zero, zero, r2, 10
0006b8  1f713000  addli r2, zero, 31
0006bc  15002014  dma_cfg zero, zero, r2, 10
0006c0  1f010010  addli r2, zero, 2048
0006c4  95810100  dma_cfg r3, r3, zero, 0
0006c8  95010002  dma_cfg r3, zero, zero, 1
0006cc  15000004  dma_cfg zero, zero, zero, 2
0006d0  15014006  dma_cfg r2, zero, r4, 3
0006d4  150a8008  dma_cfg r20, zero, r8, 4
0006d8  1501300a  dma_cfg r2, zero, r3, 5
0006dc  1bc11200  srli r2, r5, 1
0006e0  15000010  dma_cfg zero, zero, zero, 8
0006e4  35000000  dma_run zero
0006e8  1500300a  dma_cfg zero, zero, r3, 5
0006ec  15000010  dma_cfg zero, zero, zero, 8
0006f0  0b912018  sub.s r2, r1, r2
0006f4  8b905018  sub.s r1, r1, r5
0006f8  9f220000  addli r5, zero, 2
0006fc  1d100d00  unlock r26
000700  1d800c00  lock zero, r25
000704  1f018100  addli r2, r2, 64
000708  95810100  dma_cfg r3, r3, zero, 0
00070c  15800304  dma_cfg zero, r7, zero, 2
000710  15014306  dma_cfg r2, r6, r4, 3
000714  abf3ff7f  lui r7, 524287
000718  1bb12b00  slli r2, r23, 2
00071c  1ff33b00  addli r6, r23, 31
000720  9b9303f8  ori r7, r7, 3968
000724  1b435300  srli r6, r6, 5
000728  97037100  and r7, r2, r7
00072c  1b81e503  andi r2, r11, 62
000730  150a6208  dma_cfg r20, r4, r6, 4
000734  97932300  or r7, r7, r2
000738  9583350a  dma_cfg r7, r11, r3, 5
00073c  15002010  dma_cfg zero, zero, r2, 8
000740  35000000  dma_run zero
000744  1500300a  dma_cfg zero, zero, r3, 5
000748  15000010  dma_cfg zero, zero, zero, 8
00074c  1d900c00  unlock r25
000750  1d000d00  lock zero, r26
000754  15000014  dma_cfg zero, zero, zero, 10
000758  15003014  dma_cfg zero, zero, r3, 10
00075c  9f710000  addli r3, zero, 7
000760  15005014  dma_cfg zero, zero, r5, 10
000764  15002015  dma_cfg zero, zero, r18, 10
000768  1f190000  addli r18, zero, 1
00076c  15009015  dma_cfg zero, zero, r25, 10
000770  1500a015  dma_cfg zero, zero, r26, 10
000774  1500f014  dma_cfg zero, zero, r15, 10
000778  9f270000  addli r15, zero, 2
00077c  15003014  dma_cfg zero, zero, r3, 10
000780  9f011000  addli r3, zero, 8
000784  15003014  dma_cfg zero, zero, r3, 10
000788  9f111000  addli r3, zero, 9
00078c  15003014  dma_cfg zero, zero, r3, 10
000790  9f411000  addli r3, zero, 12
000794  15003015  dma_cfg zero, zero, r19, 10
000798  15001015  dma_cfg zero, zero, r17, 10
00079c  9f481000  addli r17, zero, 12
0007a0  15003014  dma_cfg zero, zero, r3, 10
0007a4  9f511000  addli r3, zero, 13
0007a8  15003014  dma_cfg zero, zero, r3, 10
0007ac  9f611000  addli r3, zero, 14
0007b0  15003014  dma_cfg zero, zero, r3, 10
0007b4  9f711000  addli r3, zero, 15
0007b8  15003014  dma_cfg zero, zero, r3, 10
0007bc  9f312000  addli r3, zero, 19
0007c0  15008014  dma_cfg zero, zero, r8, 10
0007c4  15009014  dma_cfg zero, zero, r9, 10
0007c8  6b548ffe  load.d r[9:10], -24(r30)
0007cc  1500c014  dma_cfg zero, zero, r12, 10
0007d0  15003014  dma_cfg zero, zero, r3, 10
0007d4  9f412000  addli r3, zero, 20
0007d8  15003014  dma_cfg zero, zero, r3, 10
0007dc  9f512000  addli r3, zero, 21
0007e0  15003014  dma_cfg zero, zero, r3, 10
0007e4  9f612000  addli r3, zero, 22
0007e8  15003014  dma_cfg zero, zero, r3, 10
0007ec  9f712000  addli r3, zero, 23
0007f0  15003014  dma_cfg zero, zero, r3, 10
0007f4  9f013000  addli r3, zero, 24
0007f8  15003014  dma_cfg zero, zero, r3, 10
0007fc  9f113000  addli r3, zero, 25
000800  15003014  dma_cfg zero, zero, r3, 10
000804  9f213000  addli r3, zero, 26
000808  15003014  dma_cfg zero, zero, r3, 10
00080c  9f313000  addli r3, zero, 27
000810  15003014  dma_cfg zero, zero, r3, 10
000814  9f413000  addli r3, zero, 28
000818  15003014  dma_cfg zero, zero, r3, 10
00081c  9f513000  addli r3, zero, 29
000820  15003014  dma_cfg zero, zero, r3, 10
000824  9f613000  addli r3, zero, 30
000828  15003014  dma_cfg zero, zero, r3, 10
00082c  9f713000  addli r3, zero, 31
000830  15003014  dma_cfg zero, zero, r3, 10
000834  15090900  dma_cfg r18, r18, zero, 0
000838  15090002  dma_cfg r18, zero, zero, 1
00083c  15000004  dma_cfg zero, zero, zero, 2
000840  95004006  dma_cfg r1, zero, r4, 3
000844  150a6008  dma_cfg r20, zero, r6, 4
000848  9503200b  dma_cfg r7, zero, r18, 5
00084c  9f030500  addli r7, r10, 0
000850  15002010  dma_cfg zero, zero, r2, 8
000854  35000000  dma_run zero
000858  1500200b  dma_cfg zero, zero, r18, 5
00085c  15000010  dma_cfg zero, zero, zero, 8
000860  1d100d00  unlock r26
000864  dba1ffff  j -756
000868  37a00300  beq r7, zero, 8
00086c  7d000d00  xsignal r26, 0
000870  80330002  core_id r7
000874  9f300000  addli r1, zero, 3
000878  2b0b4000  lui r22, 1024
00087c  2b0e807f  lui r28, 522240
000880  b7f31300  beq r7, r1, 252
000884  3be9a303  bneq r7, r26, 1624
000888  7d900700  xwait r15, 0
00088c  7d100d00  xwait r26, 0
000890  1d800700  lock zero, r15
000894  ab01803f  lui r3, 260096
000898  1f723000  addli r4, zero, 31
00089c  1f012000  addli r2, zero, 16
0008a0  9f000010  addli r1, zero, 2048
0008a4  9f420000  addli r5, zero, 4
0008a8  1f030040  addli r6, zero, 8192
0008ac  0d000002  ew_cfg zero, zero, zero, 1
0008b0  8d910100  ewcoeff_cfg r3, r3, zero, 0
0008b4  0d000204  ew_cfg zero, r4, zero, 2
0008b8  0d010006  ew_cfg r2, zero, zero, 3
0008bc  0d012126  ew_cfg r2, r2, r2, 19
0008c0  2d001000  dsmadd zero, zero, r1, 0
0008c4  9f300000  addli r1, zero, 3
0008c8  0d000026  ew_cfg zero, zero, zero, 19
0008cc  1d900700  unlock r15
0008d0  7d800000  xsignal r1, 0
0008d4  9f600000  addli r1, zero, 6
0008d8  7d800000  xsignal r1, 0
0008dc  9f700000  addli r1, zero, 7
0008e0  7d900000  xwait r1, 0
0008e4  7d900800  xwait r17, 0
0008e8  1d800700  lock zero, r15
0008ec  0d000002  ew_cfg zero, zero, zero, 1
0008f0  0d000204  ew_cfg zero, r4, zero, 2
0008f4  0d010006  ew_cfg r2, zero, zero, 3
0008f8  0d010126  ew_cfg r2, r2, zero, 19
0008fc  8d070014  ew_cfg r15, zero, zero, 10
000900  e3407fff  loadli.w r1,  -68(r30)
000904  8d071916  ew_cfg r15, r18, r1, 11
000908  abc07f41  lui r1, 268284
00090c  0d00001a  ew_cfg zero, zero, zero, 13
000910  0d80121c  ew_cfg zero, r5, r1, 14
000914  9f020030  addli r5, zero, 6144
000918  9f101000  addli r1, zero, 9
00091c  0d00001e  ew_cfg zero, zero, zero, 15
000920  4da30200  sslut r6, r5, 0
000924  0d000014  ew_cfg zero, zero, zero, 10
000928  0d000026  ew_cfg zero, zero, zero, 19
00092c  1d900700  unlock r15
000930  7d900000  xwait r1, 0
000934  9f601000  addli r1, zero, 14
000938  7d900000  xwait r1, 0
00093c  1d800700  lock zero, r15
000940  9f000050  addli r1, zero, 10240
000944  0d000002  ew_cfg zero, zero, zero, 1
000948  0d103000  ewcoeff_cfg zero, zero, r3, 0
00094c  0d000204  ew_cfg zero, r4, zero, 2
000950  0d010006  ew_cfg r2, zero, zero, 3
000954  0d012126  ew_cfg r2, r2, r2, 19
000958  ad906200  dsmul r1, r5, r6, 0
00095c  9f001000  addli r1, zero, 8
000960  0d000026  ew_cfg zero, zero, zero, 19
000964  1d900700  unlock r15
000968  7d800000  xsignal r1, 0
00096c  9f301000  addli r1, zero, 11
000970  7d800000  xsignal r1, 0
000974  9f501000  addli r1, zero, 13
000978  db21ffff  j -1780
00097c  9f300000  addli r1, zero, 3
000980  7d900000  xwait r1, 0
000984  9f201000  addli r1, zero, 10
000988  7d900000  xwait r1, 0
00098c  3d000000  xfence
000990  00a00300  mfence { lm, sm, gm }
000994  6b548ffc  load.d r[9:10], -56(r30)
000998  db0c0000  j 100
00099c  1f421530  addli r4, r10, 6156
0009a0  27041400  addli.d r[9:10], r[9:10], 8
0009a4  9f001530  addli r1, r10, 6152
0009a8  9f010530  addli r3, r10, 6144
0009ac  9f022530  addli r5, r10, 6160
0009b0  1f5d0000  addli r26, zero, 5
0009b4  2b0b4000  lui r22, 1024
0009b8  73604201  stores.w r20, 0(r4)
0009bc  1f420530  addli r4, r10, 6148
0009c0  73e09001  stores.w r25, 0(r1)
0009c4  9f403530  addli r1, r10, 6172
0009c8  73e01201  stores.w r17, 0(r5)
0009cc  73606200  stores.w r6, 0(r4)
0009d0  6b538fff  load.d r[7:8], -8(r30)
0009d4  73e0c001  stores.w r28, 0(r1)
0009d8  9f003530  addli r1, r10, 6168
0009dc  2b0e807f  lui r28, 522240
0009e0  73e0b000  stores.w r11, 0(r1)
0009e4  13226402  setneq.d r4, r[9:10], r[7:8]
0009e8  6303dfff  loadli.w r6,  -24(r30)
0009ec  73e06100  stores.w r6, 0(r3)
0009f0  9f412530  addli r3, r10, 6164
0009f4  73e02100  stores.w r2, 0(r3)
0009f8  b7280200  beq r4, zero, 552
0009fc  1b352400  slli r10, r8, 2
000a00  6f42c500  loads.w r4, 12(r10)
000a04  ef4b0500  loads.w r23, 0(r10)
000a08  6f4c4500  loads.w r24, 4(r10)
000a0c  ef468500  loads.w r13, 8(r10)
000a10  ef470501  loads.w r15, 16(r10)
000a14  ef4d4501  loads.w r27, 20(r10)
000a18  6f478501  loads.w r14, 24(r10)
000a1c  ef41c501  loads.w r3, 28(r10)
000a20  17060201  and r12, r4, r16
000a24  9300ce04  setlt.u r1, r28, r12
000a28  3bb00000  bneq r1, zero, 12
000a2c  1f0a0200  addli r20, r4, 0
000a30  5b010000  j 8
000a34  171a6201  or r20, r4, r22
000a38  178d0601  and r26, r13, r16
000a3c  1301ae05  setlt.u r2, r28, r26
000a40  3b300100  bneq r2, zero, 12
000a44  9f8c0600  addli r25, r13, 0
000a48  5b010000  j 8
000a4c  979c6601  or r25, r13, r22
000a50  97020c01  and r5, r24, r16
000a54  13015e04  setlt.u r2, r28, r5
000a58  3b300100  bneq r2, zero, 12
000a5c  1f030c00  addli r6, r24, 0
000a60  5b010000  j 8
000a64  17136c01  or r6, r24, r22
000a68  978a0b01  and r21, r23, r16
000a6c  13015e05  setlt.u r2, r28, r21
000a70  3b300100  bneq r2, zero, 12
000a74  e70e7fff  storeli.w r23, -24(r30)
000a78  db010000  j 12
000a7c  97906b01  or r1, r23, r22
000a80  e70e1ffe  storeli.w r1, -24(r30)
000a84  178b0101  and r22, r3, r16
000a88  ab08807f  lui r17, 522240
000a8c  ab004000  lui r1, 1024
000a90  13016e05  setlt.u r2, r28, r22
000a94  3b300100  bneq r2, zero, 12
000a98  1f8e0100  addli r28, r3, 0
000a9c  db010000  j 12
000aa0  2b014000  lui r2, 1024
000aa4  179e2100  or r28, r3, r2
000aa8  97030701  and r7, r14, r16
000aac  13817804  setlt.u r2, r17, r7
000ab0  3b300100  bneq r2, zero, 12
000ab4  9f050700  addli r11, r14, 0
000ab8  5b010000  j 8
000abc  97151700  or r11, r14, r1
000ac0  97890d01  and r19, r27, r16
000ac4  13813805  setlt.u r2, r17, r19
000ac8  3b300100  bneq r2, zero, 12
000acc  1f810d00  addli r2, r27, 0
000ad0  5b010000  j 8
000ad4  17911d00  or r2, r27, r1
000ad8  17890701  and r18, r15, r16
000adc  93882805  setlt.u r17, r17, r18
000ae0  3bb00800  bneq r17, zero, 12
000ae4  9f880700  addli r17, r15, 0
000ae8  5b010000  j 8
000aec  97981700  or r17, r15, r1
000af0  e340efff  loadli.w r1,  -12(r30)
000af4  938a5005  setlt.u r21, r1, r21
000af8  bb900a00  bneq r21, zero, 36
000afc  9bca0b01  srli r21, r23, 16
000b00  e340bfff  loadli.w r1,  -36(r30)
000b04  9b8a1a00  andi r21, r21, 1
000b08  8b9a5b11  add.s r21, r23, r21
000b0c  8b9a1a10  add.s r21, r21, r1
000b10  ab00ffff  lui r1, 1048560
000b14  97801a00  and r1, r21, r1
000b18  e70e1ffe  storeli.w r1, -24(r30)
000b1c  e340efff  loadli.w r1,  -12(r30)
000b20  e34abfff  loadli.w r21,  -36(r30)
000b24  ab0bffff  lui r23, 1048560
000b28  93825004  setlt.u r5, r1, r5
000b2c  3be00200  bneq r5, zero, 24
000b30  9b420c01  srli r5, r24, 16
000b34  9b821200  andi r5, r5, 1
000b38  8b125c10  add.s r5, r24, r5
000b3c  8b925211  add.s r5, r5, r21
000b40  17837201  and r6, r5, r23
000b44  634cefff  loadli.w r24,  -12(r30)
000b48  9302ac05  setlt.u r5, r24, r26
000b4c  bbb10200  bneq r5, zero, 108
000b50  9bc20601  srli r5, r13, 16
000b54  9b821200  andi r5, r5, 1
000b58  8b925610  add.s r5, r13, r5
000b5c  8b925211  add.s r5, r5, r21
000b60  978c7201  and r25, r5, r23
000b64  9302cc04  setlt.u r5, r24, r12
000b68  37e10200  beq r5, zero, 88
000b6c  13022c05  setlt.u r4, r24, r18
000b70  bb310200  bneq r4, zero, 108
000b74  1bc20701  srli r4, r15, 16
000b78  1b021200  andi r4, r4, 1
000b7c  0b924710  add.s r4, r15, r4
000b80  0b125211  add.s r4, r4, r21
000b84  97087201  and r17, r4, r23
000b88  13023c05  setlt.u r4, r24, r19
000b8c  37610200  beq r4, zero, 88
000b90  13027c04  setlt.u r4, r24, r7
000b94  bb310200  bneq r4, zero, 108
000b98  1b420701  srli r4, r14, 16
000b9c  1b021200  andi r4, r4, 1
000ba0  0b124710  add.s r4, r14, r4
000ba4  0b125211  add.s r4, r4, r21
000ba8  97057201  and r11, r4, r23
000bac  13026c05  setlt.u r4, r24, r22
000bb0  bb3702fe  bneq r4, zero, -532
000bb4  db0a0000  j 84
000bb8  9302cc04  setlt.u r5, r24, r12
000bbc  bbce02fe  bneq r5, zero, -80
000bc0  9b400201  srli r1, r4, 16
000bc4  9b801000  andi r1, r1, 1
000bc8  8b101210  add.s r1, r4, r1
000bcc  8b905011  add.s r1, r1, r21
000bd0  178a7001  and r20, r1, r23
000bd4  13022c05  setlt.u r4, r24, r18
000bd8  377e02fe  beq r4, zero, -100
000bdc  13023c05  setlt.u r4, r24, r19
000be0  bb4e02fe  bneq r4, zero, -80
000be4  1bc10d01  srli r2, r27, 16
000be8  1b011100  andi r2, r2, 1
000bec  0b912d10  add.s r2, r27, r2
000bf0  0b115111  add.s r2, r2, r21
000bf4  17017101  and r2, r2, r23
000bf8  13027c04  setlt.u r4, r24, r7
000bfc  377e02fe  beq r4, zero, -100
000c00  13026c05  setlt.u r4, r24, r22
000c04  3b6602fe  bneq r4, zero, -616
000c08  1bc20101  srli r4, r3, 16
000c0c  1b021200  andi r4, r4, 1
000c10  8b914110  add.s r3, r3, r4
000c14  8b915111  add.s r3, r3, r21
000c18  178e7101  and r28, r3, r23
000c1c  5bb0ffff  j -640
000c20  9f400000  addli r1, zero, 4
000c24  00200100  mfence { sm }
000c28  33040028  zext_int2long r[9:10], zero
000c2c  7d800000  xsignal r1, 0
000c30  9f101000  addli r1, zero, 9
000c34  7d800000  xsignal r1, 0
000c38  9f700000  addli r1, zero, 7
000c3c  7d800000  xsignal r1, 0
000c40  9f001000  addli r1, zero, 8
000c44  7d900000  xwait r1, 0
000c48  9f301000  addli r1, zero, 11
000c4c  7d900000  xwait r1, 0
000c50  9f501000  addli r1, zero, 13
000c54  7d900000  xwait r1, 0
000c58  9f002000  addli r1, zero, 16
000c5c  7d900000  xwait r1, 0
000c60  3d000000  xfence
000c64  00a00300  mfence { lm, sm, gm }
000c68  db060000  j 52
000c6c  6b518fff  load.d r[3:4], -8(r30)
000c70  27440400  addli.d r[9:10], r[9:10], 4
000c74  9f401520  addli r1, r10, 4108
000c78  1f420520  addli r4, r10, 4100
000c7c  73e06000  stores.w r6, 0(r1)
000c80  9f001520  addli r1, r10, 4104
000c84  73605200  stores.w r5, 0(r4)
000c88  13212402  setneq.d r2, r[9:10], r[3:4]
000c8c  9f010520  addli r3, r10, 4096
000c90  73e07000  stores.w r7, 0(r1)
000c94  73e0c100  stores.w r12, 0(r3)
000c98  b77601fa  beq r2, zero, -2628
000c9c  1b352400  slli r10, r8, 2
000ca0  9f011530  addli r3, r10, 6152
000ca4  9f000530  addli r1, r10, 6144
000ca8  9f020540  addli r5, r10, 8192
000cac  1f031540  addli r6, r10, 8200
000cb0  1f461550  addli r12, r10, 10252
000cb4  1f410530  addli r2, r10, 6148
000cb8  6fc20100  loads.w r4, 0(r3)
000cbc  9f411530  addli r3, r10, 6156
000cc0  efc00000  loads.w r1, 0(r1)
000cc4  6f410100  loads.w r2, 0(r2)
000cc8  efc30100  loads.w r7, 0(r3)
000ccc  efc10200  loads.w r3, 0(r5)
000cd0  9f420540  addli r5, r10, 8196
000cd4  efc60200  loads.w r13, 0(r5)
000cd8  ef420300  loads.w r5, 0(r6)
000cdc  1f431540  addli r6, r10, 8204
000ce0  ef450300  loads.w r11, 0(r6)
000ce4  6f430600  loads.w r6, 0(r12)
000ce8  1f061550  addli r12, r10, 10248
000cec  6f460600  loads.w r12, 0(r12)
000cf0  97800001  and r1, r1, r16
000cf4  97810101  and r3, r3, r16
000cf8  9387c001  seteq r15, r1, r28
000cfc  93890000  seteq r19, r1, zero
000d00  8b803048  max.u r1, r1, r3
000d04  93880100  seteq r17, r3, zero
000d08  1389c101  seteq r18, r3, r28
000d0c  9f410550  addli r3, r10, 10244
000d10  6fc70100  loads.w r14, 0(r3)
000d14  93001e04  setlt.u r1, r28, r1
000d18  97811701  and r3, r15, r17
000d1c  97872901  and r15, r19, r18
000d20  9791f100  or r3, r3, r15
000d24  97973000  or r15, r1, r3
000d28  ab01c07f  lui r3, 523264
000d2c  ab00c07f  lui r1, 523264
000d30  3bb00700  bneq r15, zero, 12
000d34  9f000550  addli r1, r10, 10240
000d38  efc00000  loads.w r1, 0(r1)
000d3c  17010101  and r2, r2, r16
000d40  97860601  and r13, r13, r16
000d44  9307c101  seteq r15, r2, r28
000d48  93090100  seteq r19, r2, zero
000d4c  93880600  seteq r17, r13, zero
000d50  1389c601  seteq r18, r13, r28
000d54  0b01d148  max.u r2, r2, r13
000d58  13012e04  setlt.u r2, r28, r2
000d5c  97861701  and r13, r15, r17
000d60  97872901  and r15, r19, r18
000d64  9796f600  or r13, r13, r15
000d68  9716d100  or r13, r2, r13
000d6c  2b01c07f  lui r2, 523264
000d70  3ba00600  bneq r13, zero, 8
000d74  1f010700  addli r2, r14, 0
000d78  17020201  and r4, r4, r16
000d7c  97820201  and r5, r5, r16
000d80  9306c201  seteq r13, r4, r28
000d84  93080200  seteq r17, r4, zero
000d88  13870200  seteq r14, r5, zero
000d8c  9387c201  seteq r15, r5, r28
000d90  0b025248  max.u r4, r4, r5
000d94  13024e04  setlt.u r4, r28, r4
000d98  9782e600  and r5, r13, r14
000d9c  9786f800  and r13, r17, r15
000da0  9792d200  or r5, r5, r13
000da4  97125200  or r5, r4, r5
000da8  2b02c07f  lui r4, 523264
000dac  3ba00200  bneq r5, zero, 8
000db0  1f020600  addli r4, r12, 0
000db4  97820301  and r5, r7, r16
000db8  97830501  and r7, r11, r16
000dbc  9385c201  seteq r11, r5, r28
000dc0  13870200  seteq r14, r5, zero
000dc4  13860300  seteq r12, r7, zero
000dc8  9386c301  seteq r13, r7, r28
000dcc  8b827248  max.u r5, r5, r7
000dd0  93025e04  setlt.u r5, r28, r5
000dd4  9783c500  and r7, r11, r12
000dd8  9705d700  and r11, r14, r13
000ddc  9793b300  or r7, r7, r11
000de0  97927200  or r5, r5, r7
000de4  3ba00200  bneq r5, zero, 8
000de8  9f010300  addli r3, r6, 0
000dec  97850101  and r11, r3, r16
000df0  9302be04  setlt.u r5, r28, r11
000df4  3bb00200  bneq r5, zero, 12
000df8  1f830100  addli r6, r3, 0
000dfc  5b010000  j 8
000e00  17936101  or r6, r3, r22
000e04  97060201  and r13, r4, r16
000e08  9302de04  setlt.u r5, r28, r13
000e0c  3bb00200  bneq r5, zero, 12
000e10  9f030200  addli r7, r4, 0
000e14  5b010000  j 8
000e18  97136201  or r7, r4, r22
000e1c  17070101  and r14, r2, r16
000e20  9302ee04  setlt.u r5, r28, r14
000e24  3bb00200  bneq r5, zero, 12
000e28  9f020100  addli r5, r2, 0
000e2c  5b010000  j 8
000e30  97126101  or r5, r2, r22
000e34  97870001  and r15, r1, r16
000e38  1306fe04  setlt.u r12, r28, r15
000e3c  3b500600  bneq r12, zero, 20
000e40  1f860000  addli r12, r1, 0
000e44  9307fc04  setlt.u r15, r24, r15
000e48  37d00700  beq r15, zero, 20
000e4c  db040000  j 36
000e50  17966001  or r12, r1, r22
000e54  9307fc04  setlt.u r15, r24, r15
000e58  3be00700  bneq r15, zero, 24
000e5c  1bc60001  srli r12, r1, 16
000e60  1b061600  andi r12, r12, 1
000e64  8b90c010  add.s r1, r1, r12
000e68  8b905011  add.s r1, r1, r21
000e6c  17867001  and r12, r1, r23
000e70  9300ec04  setlt.u r1, r24, r14
000e74  bbb00000  bneq r1, zero, 44
000e78  9b400101  srli r1, r2, 16
000e7c  9b801000  andi r1, r1, 1
000e80  8b101110  add.s r1, r2, r1
000e84  8b905011  add.s r1, r1, r21
000e88  97827001  and r5, r1, r23
000e8c  9300dc04  setlt.u r1, r24, r13
000e90  37e00000  beq r1, zero, 24
000e94  9300bc04  setlt.u r1, r24, r11
000e98  3bd700fe  bneq r1, zero, -556
000e9c  5b050000  j 40
000ea0  9300dc04  setlt.u r1, r24, r13
000ea4  bbcf00fe  bneq r1, zero, -16
000ea8  9b400201  srli r1, r4, 16
000eac  9b801000  andi r1, r1, 1
000eb0  8b101210  add.s r1, r4, r1
000eb4  8b905011  add.s r1, r1, r21
000eb8  97837001  and r7, r1, r23
000ebc  9300bc04  setlt.u r1, r24, r11
000ec0  bbb600fe  bneq r1, zero, -596
000ec4  9bc00101  srli r1, r3, 16
000ec8  9b801000  andi r1, r1, 1
000ecc  8b901110  add.s r1, r3, r1
000ed0  8b905011  add.s r1, r1, r21
000ed4  17837001  and r6, r1, r23
000ed8  dbb2ffff  j -620
000edc  eb510ffd  load.d r[4:5], -48(r30)
000ee0  bbbe03f8  bneq r7, zero, -3156
000ee4  9f721000  addli r5, zero, 15
000ee8  97302403  sll.d r[2:3], r[9:10], r18
000eec  7d900200  xwait r5, 0
000ef0  eb520f01  load.d r[6:7], 16(r30)
000ef4  1d000d00  lock zero, r26
000ef8  15090900  dma_cfg r18, r18, zero, 0
000efc  15000902  dma_cfg zero, r18, zero, 1
000f00  8ba01210  add.ul r[2:3], r[6:7], r[2:3]
000f04  9f028000  addli r5, zero, 64
000f08  1f038020  addli r6, zero, 4160
000f0c  15010004  dma_cfg r2, zero, zero, 2
000f10  95005306  dma_cfg r1, r6, r5, 3
000f14  1f012000  addli r2, zero, 16
000f18  9f000001  addli r1, zero, 128
000f1c  95822008  dma_cfg r5, r1, r2, 4
000f20  9f000010  addli r1, zero, 2048
000f24  9f020008  addli r5, zero, 1024
000f28  9582200b  dma_cfg r5, r1, r18, 5
000f2c  15000010  dma_cfg zero, zero, zero, 8
000f30  35000000  dma_run zero
000f34  1500200b  dma_cfg zero, zero, r18, 5
000f38  15000010  dma_cfg zero, zero, zero, 8
000f3c  1d100d00  unlock r26
000f40  7d000100  xsignal r2, 0
000f44  5b69feff  j -3256
000f48  7d000000  xsignal zero, 0
000f4c  bbe00300  bneq r7, zero, 56
000f50  9f200000  addli r1, zero, 2
000f54  7d100000  xwait zero, 0
000f58  7d100000  xwait zero, 0
000f5c  7d100000  xwait zero, 0
000f60  7d100000  xwait zero, 0
000f64  7d100000  xwait zero, 0
000f68  7d100000  xwait zero, 0
000f6c  7d100000  xwait zero, 0
000f70  7d100000  xwait zero, 0
000f74  1d800000  lock zero, r1
000f78  0d000020  ew_cfg zero, zero, zero, 16
000f7c  1d900000  unlock r1
000f80  7d400000  xsignal_mode_cfg zero
000f84  9f8e9e00  addli sp, sp, 72
000f88  00a00300  mfence { lm, sm, gm }
000f8c  00100000  exit
000f90  00100000  exit
000f94  00100000  exit
000f98  00100000  exit
000f9c  00100000  exit
000fa0  00100000  exit
000fa4  00100000  exit
000fa8  00100000  exit
000fac  00100000  exit
000fb0  00100000  exit
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
