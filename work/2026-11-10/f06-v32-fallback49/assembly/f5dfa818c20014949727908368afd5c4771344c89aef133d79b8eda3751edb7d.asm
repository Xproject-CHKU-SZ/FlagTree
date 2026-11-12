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
0000b4  9f8e2eff  addli sp, sp, -112
0000b8  9f100000  addli r1, zero, 1
0000bc  00370002  core_id r14
0000c0  1f8f6e00  addli r30, sp, 48
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7100700  beq r14, zero, 36
0000cc  abf1ffff  lui r3, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b90f1ff  ori r1, r3, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  db220000  j 276
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
00014c  9f510000  addli r3, zero, 5
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
00018c  9f301000  addli r1, zero, 11
000190  00d00100  sync_group
000194  7d800000  xsignal r1, 0
000198  7d800000  xsignal r1, 0
00019c  7d800000  xsignal r1, 0
0001a0  9f300000  addli r1, zero, 3
0001a4  7d800100  xsignal r3, 0
0001a8  7d800100  xsignal r3, 0
0001ac  7d800100  xsignal r3, 0
0001b0  9f111000  addli r3, zero, 9
0001b4  7d800000  xsignal r1, 0
0001b8  7d800000  xsignal r1, 0
0001bc  7d800000  xsignal r1, 0
0001c0  9f700000  addli r1, zero, 7
0001c4  7d800100  xsignal r3, 0
0001c8  7d800100  xsignal r3, 0
0001cc  7d800100  xsignal r3, 0
0001d0  9f511000  addli r3, zero, 13
0001d4  7d800000  xsignal r1, 0
0001d8  7d800000  xsignal r1, 0
0001dc  7d800000  xsignal r1, 0
0001e0  9f002000  addli r1, zero, 16
0001e4  7d800100  xsignal r3, 0
0001e8  7d800100  xsignal r3, 0
0001ec  7d800100  xsignal r3, 0
0001f0  7d800000  xsignal r1, 0
0001f4  7d800000  xsignal r1, 0
0001f8  7d800000  xsignal r1, 0
0001fc  e3005f00  loadli.w r1,  40(r30)
000200  e3415f00  loadli.w r3,  44(r30)
000204  80d20002  load_param_i r5, 1
000208  63026f00  loadli.w r4,  48(r30)
00020c  8b901120  mul.s r1, r3, r1
000210  9f810200  addli r3, r5, 0
000214  8b914050  fmac.s r3, r1, r4
000218  0b924020  mul.s r4, r1, r4
00021c  9ff1f1ff  addli r3, r3, -1
000220  8b915130  div.s r3, r3, r5
000224  80520002  load_param_i r5, 0
000228  8b905120  mul.s r1, r3, r5
00022c  8b915150  fmac.s r3, r3, r5
000230  8b914140  min.s r3, r3, r4
000234  4bdf1104  ble.s r3, r1, 3028
000238  33910128  sext_int2long r[3:4], r3
00023c  33930028  sext_int2long r[7:8], r1
000240  1f3a0000  addli r20, zero, 3
000244  9f040001  addli r9, zero, 128
000248  9f082000  addli r17, zero, 16
00024c  1f0b1000  addli r22, zero, 8
000250  1f5e1000  addli r28, zero, 13
000254  9f5c0000  addli r25, zero, 5
000258  9f1b0000  addli r23, zero, 1
00025c  1f0d8000  addli r26, zero, 64
000260  73342ffe  store.d r[3:4], -24(r30)
000264  1f71f01f  addli r2, zero, 4095
000268  9f010000  addli r3, zero, 0
00026c  ab00feff  lui r1, 1048544
000270  73301ffe  store.d r[2:3], -32(r30)
000274  ab800200  lui r1, 40
000278  9b902084  ori r1, r1, 2114
00027c  674d1ffe  storeli.w r1, -44(r30)
000280  b3000028  zext_int2long r[2:3], zero
000284  733c1ffc  store.d r[2:3], -40(r30)
000288  db2f0000  j 380
00028c  1f490000  addli r18, zero, 4
000290  9b100c04  ori r1, r24, 64
000294  1f713600  addli r2, r12, 31
000298  1f0d8000  addli r26, zero, 64
00029c  9f5c0000  addli r25, zero, 5
0002a0  1d000900  lock zero, r18
0002a4  8b101510  add.s r1, r10, r1
0002a8  1f058000  addli r10, zero, 64
0002ac  958b0b00  dma_cfg r23, r23, zero, 0
0002b0  15800204  dma_cfg zero, r5, zero, 2
0002b4  9500a206  dma_cfg r1, r4, r10, 3
0002b8  9b405100  srli r1, r2, 5
0002bc  1b311600  slli r2, r12, 1
0002c0  1f020002  addli r4, zero, 256
0002c4  1f060004  addli r12, zero, 512
0002c8  9f520000  addli r5, zero, 5
0002cc  95041508  dma_cfg r9, r10, r1, 4
0002d0  1b01e103  andi r2, r2, 62
0002d4  1506720b  dma_cfg r12, r4, r23, 5
0002d8  1f121000  addli r4, zero, 9
0002dc  15002010  dma_cfg zero, zero, r2, 8
0002e0  35000000  dma_run zero
0002e4  1500700b  dma_cfg zero, zero, r23, 5
0002e8  15000010  dma_cfg zero, zero, zero, 8
0002ec  1d100900  unlock r18
0002f0  1d800200  lock zero, r5
0002f4  15000014  dma_cfg zero, zero, zero, 10
0002f8  15007015  dma_cfg zero, zero, r23, 10
0002fc  1500f014  dma_cfg zero, zero, r15, 10
000300  15004015  dma_cfg zero, zero, r20, 10
000304  15002015  dma_cfg zero, zero, r18, 10
000308  15005014  dma_cfg zero, zero, r5, 10
00030c  15005015  dma_cfg zero, zero, r21, 10
000310  15008014  dma_cfg zero, zero, r8, 10
000314  1f441000  addli r8, zero, 12
000318  15006015  dma_cfg zero, zero, r22, 10
00031c  15004014  dma_cfg zero, zero, r4, 10
000320  1f221000  addli r4, zero, 10
000324  15004014  dma_cfg zero, zero, r4, 10
000328  1f321000  addli r4, zero, 11
00032c  15004014  dma_cfg zero, zero, r4, 10
000330  1f721000  addli r4, zero, 15
000334  15008014  dma_cfg zero, zero, r8, 10
000338  1500c015  dma_cfg zero, zero, r28, 10
00033c  15000015  dma_cfg zero, zero, r16, 10
000340  15004014  dma_cfg zero, zero, r4, 10
000344  1f122000  addli r4, zero, 17
000348  15001015  dma_cfg zero, zero, r17, 10
00034c  15004014  dma_cfg zero, zero, r4, 10
000350  1f222000  addli r4, zero, 18
000354  15004014  dma_cfg zero, zero, r4, 10
000358  1f322000  addli r4, zero, 19
00035c  15004014  dma_cfg zero, zero, r4, 10
000360  1f422000  addli r4, zero, 20
000364  15004014  dma_cfg zero, zero, r4, 10
000368  1f522000  addli r4, zero, 21
00036c  15004014  dma_cfg zero, zero, r4, 10
000370  1f622000  addli r4, zero, 22
000374  15004014  dma_cfg zero, zero, r4, 10
000378  1f722000  addli r4, zero, 23
00037c  15004014  dma_cfg zero, zero, r4, 10
000380  1f023000  addli r4, zero, 24
000384  15004014  dma_cfg zero, zero, r4, 10
000388  1f123000  addli r4, zero, 25
00038c  15004014  dma_cfg zero, zero, r4, 10
000390  1f223000  addli r4, zero, 26
000394  15004014  dma_cfg zero, zero, r4, 10
000398  1f323000  addli r4, zero, 27
00039c  15004014  dma_cfg zero, zero, r4, 10
0003a0  1f423000  addli r4, zero, 28
0003a4  15004014  dma_cfg zero, zero, r4, 10
0003a8  1f523000  addli r4, zero, 29
0003ac  15004014  dma_cfg zero, zero, r4, 10
0003b0  1f623000  addli r4, zero, 30
0003b4  15004014  dma_cfg zero, zero, r4, 10
0003b8  1f723000  addli r4, zero, 31
0003bc  15004014  dma_cfg zero, zero, r4, 10
0003c0  958b0b00  dma_cfg r23, r23, zero, 0
0003c4  950b0002  dma_cfg r23, zero, zero, 1
0003c8  15000004  dma_cfg zero, zero, zero, 2
0003cc  9505a006  dma_cfg r11, zero, r10, 3
0003d0  95041008  dma_cfg r9, zero, r1, 4
0003d4  1506700b  dma_cfg r12, zero, r23, 5
0003d8  15002010  dma_cfg zero, zero, r2, 8
0003dc  35000000  dma_run zero
0003e0  1500700b  dma_cfg zero, zero, r23, 5
0003e4  15000010  dma_cfg zero, zero, zero, 8
0003e8  1d900200  unlock r5
0003ec  7d000400  xsignal r8, 0
0003f0  eb508ffe  load.d r[2:3], -24(r30)
0003f4  27130300  addli.d r[7:8], r[7:8], 1
0003f8  9f910100  addli r3, r3, 1
0003fc  93301304  setlt.sl r1, r[7:8], r[2:3]
000400  37a80004  beq r1, zero, 2568
000404  e3006f00  loadli.w r1,  48(r30)
000408  9f7a0000  addli r21, zero, 7
00040c  1f041000  addli r8, zero, 8
000410  1f5c1000  addli r24, zero, 13
000414  0b121330  div.s r4, r6, r1
000418  e3405f00  loadli.w r1,  44(r30)
00041c  0b151230  div.s r10, r4, r1
000420  9f701000  addli r1, zero, 15
000424  8b159530  div.s r11, r10, r9
000428  1bb23500  slli r4, r11, 3
00042c  8b924818  sub.s r5, r17, r4
000430  0b976241  min.s r14, r5, r22
000434  1f0b2000  addli r22, zero, 16
000438  8b12e538  mod.s r5, r10, r14
00043c  8b9d4210  add.s r27, r5, r4
000440  1386b005  setlt.u r12, r1, r27
000444  b3800d28  zext_int2long r[2:3], r27
000448  17b2c003  sll.d r[5:6], r[2:3], r28
00044c  73381ffe  store.d r[2:3], -16(r30)
000450  3b300600  bneq r12, zero, 12
000454  6b568ffd  load.d r[13:14], -40(r30)
000458  db010000  j 12
00045c  eb500ffe  load.d r[2:3], -32(r30)
000460  17061202  and.d r[13:14], r[5:6], r[2:3]
000464  9bb57500  slli r11, r11, 7
000468  0b9e4139  mod.s r28, r3, r20
00046c  9f380000  addli r17, zero, 3
000470  1f680000  addli r16, zero, 6
000474  0b15b518  sub.s r10, r10, r11
000478  0b1ae530  div.s r20, r10, r14
00047c  1f05000f  addli r10, zero, 1920
000480  00370002  core_id r14
000484  9b35fe00  slli r11, r28, 15
000488  9b370e01  slli r15, r28, 16
00048c  33090a28  zext_int2long r[19:20], r20
000490  97305903  sll.d r[2:3], r[19:20], r21
000494  33090528  zext_int2long r[19:20], r10
000498  2b050300  lui r10, 48
00049c  0b95a510  add.s r10, r11, r10
0004a0  97b07003  sll.d r[2:3], r[2:3], r23
0004a4  733c1ffe  store.d r[2:3], -8(r30)
0004a8  bb6a0701  bneq r14, r16, 696
0004ac  8b30c218  sub.sl r[2:3], r[5:6], r[13:14]
0004b0  6b560fff  load.d r[13:14], -16(r30)
0004b4  9f641000  addli r9, zero, 14
0004b8  7d900800  xwait r17, 0
0004bc  97d00003  sra.d r[2:3], r[2:3], r16
0004c0  17369602  sll.d r[13:14], r[13:14], r9
0004c4  0bb22041  min.sl r[5:6], r[2:3], r[19:20]
0004c8  8b301218  sub.sl r[2:3], r[5:6], r[2:3]
0004cc  6b520f00  load.d r[5:6], 0(r30)
0004d0  8b26c210  add.ul r[14:15], r[5:6], r[13:14]
0004d4  1f860001  addli r12, r1, 128
0004d8  1f210000  addli r2, zero, 2
0004dc  3f543100  blt.s r2, r3, 276
0004e0  1f520000  addli r4, zero, 5
0004e4  9f400000  addli r1, zero, 4
0004e8  9f020002  addli r5, zero, 256
0004ec  1d000200  lock zero, r4
0004f0  15000014  dma_cfg zero, zero, zero, 10
0004f4  15007015  dma_cfg zero, zero, r23, 10
0004f8  15002014  dma_cfg zero, zero, r2, 10
0004fc  15001015  dma_cfg zero, zero, r17, 10
000500  15001014  dma_cfg zero, zero, r1, 10
000504  9f101000  addli r1, zero, 9
000508  15004014  dma_cfg zero, zero, r4, 10
00050c  15000015  dma_cfg zero, zero, r16, 10
000510  15005015  dma_cfg zero, zero, r21, 10
000514  15008014  dma_cfg zero, zero, r8, 10
000518  15001014  dma_cfg zero, zero, r1, 10
00051c  9f201000  addli r1, zero, 10
000520  15001014  dma_cfg zero, zero, r1, 10
000524  9f301000  addli r1, zero, 11
000528  15001014  dma_cfg zero, zero, r1, 10
00052c  9f401000  addli r1, zero, 12
000530  15001014  dma_cfg zero, zero, r1, 10
000534  9f701000  addli r1, zero, 15
000538  15008015  dma_cfg zero, zero, r24, 10
00053c  15009014  dma_cfg zero, zero, r9, 10
000540  15001014  dma_cfg zero, zero, r1, 10
000544  9f102000  addli r1, zero, 17
000548  15006015  dma_cfg zero, zero, r22, 10
00054c  15001014  dma_cfg zero, zero, r1, 10
000550  9f202000  addli r1, zero, 18
000554  15001014  dma_cfg zero, zero, r1, 10
000558  9f302000  addli r1, zero, 19
00055c  15001014  dma_cfg zero, zero, r1, 10
000560  9f402000  addli r1, zero, 20
000564  15001014  dma_cfg zero, zero, r1, 10
000568  9f502000  addli r1, zero, 21
00056c  15001014  dma_cfg zero, zero, r1, 10
000570  9f602000  addli r1, zero, 22
000574  15001014  dma_cfg zero, zero, r1, 10
000578  9f702000  addli r1, zero, 23
00057c  15001014  dma_cfg zero, zero, r1, 10
000580  9f003000  addli r1, zero, 24
000584  15001014  dma_cfg zero, zero, r1, 10
000588  9f103000  addli r1, zero, 25
00058c  15001014  dma_cfg zero, zero, r1, 10
000590  9f203000  addli r1, zero, 26
000594  15001014  dma_cfg zero, zero, r1, 10
000598  9f303000  addli r1, zero, 27
00059c  15001014  dma_cfg zero, zero, r1, 10
0005a0  9f403000  addli r1, zero, 28
0005a4  15001014  dma_cfg zero, zero, r1, 10
0005a8  9f503000  addli r1, zero, 29
0005ac  15001014  dma_cfg zero, zero, r1, 10
0005b0  9f603000  addli r1, zero, 30
0005b4  15001014  dma_cfg zero, zero, r1, 10
0005b8  9f703000  addli r1, zero, 31
0005bc  15001014  dma_cfg zero, zero, r1, 10
0005c0  9f000001  addli r1, zero, 128
0005c4  958b0b00  dma_cfg r23, r23, zero, 0
0005c8  950b0002  dma_cfg r23, zero, zero, 1
0005cc  15000004  dma_cfg zero, zero, zero, 2
0005d0  1505a007  dma_cfg r10, zero, r26, 3
0005d4  95002008  dma_cfg r1, zero, r2, 4
0005d8  9502100a  dma_cfg r5, zero, r1, 5
0005dc  15000010  dma_cfg zero, zero, zero, 8
0005e0  35000000  dma_run zero
0005e4  1500700b  dma_cfg zero, zero, r23, 5
0005e8  15000010  dma_cfg zero, zero, zero, 8
0005ec  1d100200  unlock r4
0005f0  ab000300  lui r1, 48
0005f4  1f440000  addli r8, zero, 4
0005f8  9f028000  addli r5, zero, 64
0005fc  1f520000  addli r4, zero, 5
000600  1f0b1000  addli r22, zero, 8
000604  1f0d8000  addli r26, zero, 64
000608  9f5c0000  addli r25, zero, 5
00060c  9b900004  ori r1, r1, 64
000610  1d000400  lock zero, r8
000614  958b0b00  dma_cfg r23, r23, zero, 0
000618  8b901510  add.s r1, r11, r1
00061c  15000704  dma_cfg zero, r14, zero, 2
000620  9f050002  addli r11, zero, 256
000624  95805606  dma_cfg r1, r13, r5, 3
000628  9f000001  addli r1, zero, 128
00062c  00370002  core_id r14
000630  95802208  dma_cfg r1, r5, r2, 4
000634  9585c00a  dma_cfg r11, r1, r12, 5
000638  9f101000  addli r1, zero, 9
00063c  15000010  dma_cfg zero, zero, zero, 8
000640  35000000  dma_run zero
000644  1500700b  dma_cfg zero, zero, r23, 5
000648  15000010  dma_cfg zero, zero, zero, 8
00064c  1d100400  unlock r8
000650  1d000200  lock zero, r4
000654  15000014  dma_cfg zero, zero, zero, 10
000658  15007015  dma_cfg zero, zero, r23, 10
00065c  15002014  dma_cfg zero, zero, r2, 10
000660  15001015  dma_cfg zero, zero, r17, 10
000664  9f082000  addli r17, zero, 16
000668  15008014  dma_cfg zero, zero, r8, 10
00066c  1f740000  addli r8, zero, 7
000670  15004014  dma_cfg zero, zero, r4, 10
000674  15000015  dma_cfg zero, zero, r16, 10
000678  15008014  dma_cfg zero, zero, r8, 10
00067c  15006015  dma_cfg zero, zero, r22, 10
000680  15001014  dma_cfg zero, zero, r1, 10
000684  9f201000  addli r1, zero, 10
000688  15001014  dma_cfg zero, zero, r1, 10
00068c  9f301000  addli r1, zero, 11
000690  15001014  dma_cfg zero, zero, r1, 10
000694  9f401000  addli r1, zero, 12
000698  15001014  dma_cfg zero, zero, r1, 10
00069c  9f701000  addli r1, zero, 15
0006a0  15008015  dma_cfg zero, zero, r24, 10
0006a4  15009014  dma_cfg zero, zero, r9, 10
0006a8  9f040001  addli r9, zero, 128
0006ac  15001014  dma_cfg zero, zero, r1, 10
0006b0  9f102000  addli r1, zero, 17
0006b4  15001015  dma_cfg zero, zero, r17, 10
0006b8  15001014  dma_cfg zero, zero, r1, 10
0006bc  9f202000  addli r1, zero, 18
0006c0  15001014  dma_cfg zero, zero, r1, 10
0006c4  9f302000  addli r1, zero, 19
0006c8  15001014  dma_cfg zero, zero, r1, 10
0006cc  9f402000  addli r1, zero, 20
0006d0  15001014  dma_cfg zero, zero, r1, 10
0006d4  9f502000  addli r1, zero, 21
0006d8  15001014  dma_cfg zero, zero, r1, 10
0006dc  9f602000  addli r1, zero, 22
0006e0  15001014  dma_cfg zero, zero, r1, 10
0006e4  9f702000  addli r1, zero, 23
0006e8  15001014  dma_cfg zero, zero, r1, 10
0006ec  9f003000  addli r1, zero, 24
0006f0  15001014  dma_cfg zero, zero, r1, 10
0006f4  9f103000  addli r1, zero, 25
0006f8  15001014  dma_cfg zero, zero, r1, 10
0006fc  9f203000  addli r1, zero, 26
000700  15001014  dma_cfg zero, zero, r1, 10
000704  9f303000  addli r1, zero, 27
000708  15001014  dma_cfg zero, zero, r1, 10
00070c  9f403000  addli r1, zero, 28
000710  15001014  dma_cfg zero, zero, r1, 10
000714  9f503000  addli r1, zero, 29
000718  15001014  dma_cfg zero, zero, r1, 10
00071c  9f603000  addli r1, zero, 30
000720  15001014  dma_cfg zero, zero, r1, 10
000724  9f703000  addli r1, zero, 31
000728  15001014  dma_cfg zero, zero, r1, 10
00072c  958b0b00  dma_cfg r23, r23, zero, 0
000730  950b0002  dma_cfg r23, zero, zero, 1
000734  15000004  dma_cfg zero, zero, zero, 2
000738  15055006  dma_cfg r10, zero, r5, 3
00073c  95042008  dma_cfg r9, zero, r2, 4
000740  9505c00a  dma_cfg r11, zero, r12, 5
000744  15000010  dma_cfg zero, zero, zero, 8
000748  35000000  dma_run zero
00074c  1500700b  dma_cfg zero, zero, r23, 5
000750  15000010  dma_cfg zero, zero, zero, 8
000754  1d100200  unlock r4
000758  7d000100  xsignal r2, 0
00075c  db0a0000  j 84
000760  1f310000  addli r2, zero, 3
000764  9f082000  addli r17, zero, 16
000768  9f200000  addli r1, zero, 2
00076c  bb381700  bneq r14, r1, 556
000770  7d900000  xwait r1, 0
000774  7d900c00  xwait r25, 0
000778  1d000000  lock zero, zero
00077c  1f0d8000  addli r26, zero, 64
000780  1f0b1000  addli r22, zero, 8
000784  1f740000  addli r8, zero, 7
000788  81000000  ds_cfg r1, zero, 0
00078c  9f008000  addli r1, zero, 64
000790  81000002  ds_cfg r1, zero, 1
000794  8100001c  ds_cfg r1, zero, 14
000798  8104001a  ds_cfg r9, zero, 13
00079c  a1151502  shuffle_batch r11, r10, r1, 1
0007a0  9f400000  addli r1, zero, 4
0007a4  1d100000  unlock zero
0007a8  7d000100  xsignal r2, 0
0007ac  7d800000  xsignal r1, 0
0007b0  9f6a0000  addli r21, zero, 6
0007b4  1f681000  addli r16, zero, 14
0007b8  9b307a00  slli r1, r20, 7
0007bc  2b0c0600  lui r24, 96
0007c0  b3800028  zext_int2long r[2:3], r1
0007c4  0ba22041  min.ul r[5:6], r[2:3], r[19:20]
0007c8  27020201  addli.d r[5:6], r[5:6], 128
0007cc  0b251248  max.ul r[11:12], r[5:6], r[2:3]
0007d0  33820428  zext_int2long r[5:6], r9
0007d4  8b301518  sub.sl r[2:3], r[11:12], r[2:3]
0007d8  1b359e00  slli r10, r28, 9
0007dc  0ba64040  min.ul r[13:14], r[2:3], r[5:6]
0007e0  8b158511  add.s r11, r10, r24
0007e4  bb545701  bneq r14, r21, 308
0007e8  eb500f01  load.d r[2:3], 16(r30)
0007ec  6b528fff  load.d r[5:6], -8(r30)
0007f0  1f5e1000  addli r28, zero, 13
0007f4  1f3a0000  addli r20, zero, 3
0007f8  9f270000  addli r15, zero, 2
0007fc  7d100e00  xwait r28, 0
000800  0ba24010  add.ul r[5:6], r[2:3], r[5:6]
000804  3faa37fc  blt.s r15, r3, -1400
000808  1f510000  addli r2, zero, 5
00080c  1f490000  addli r18, zero, 4
000810  9f101000  addli r1, zero, 9
000814  1d000100  lock zero, r2
000818  15000014  dma_cfg zero, zero, zero, 10
00081c  15007015  dma_cfg zero, zero, r23, 10
000820  1500f014  dma_cfg zero, zero, r15, 10
000824  15004015  dma_cfg zero, zero, r20, 10
000828  15002015  dma_cfg zero, zero, r18, 10
00082c  15002014  dma_cfg zero, zero, r2, 10
000830  15005015  dma_cfg zero, zero, r21, 10
000834  15008014  dma_cfg zero, zero, r8, 10
000838  15006015  dma_cfg zero, zero, r22, 10
00083c  15001014  dma_cfg zero, zero, r1, 10
000840  9f201000  addli r1, zero, 10
000844  15001014  dma_cfg zero, zero, r1, 10
000848  9f301000  addli r1, zero, 11
00084c  15001014  dma_cfg zero, zero, r1, 10
000850  9f401000  addli r1, zero, 12
000854  15001014  dma_cfg zero, zero, r1, 10
000858  9f701000  addli r1, zero, 15
00085c  1500c015  dma_cfg zero, zero, r28, 10
000860  15000015  dma_cfg zero, zero, r16, 10
000864  15001014  dma_cfg zero, zero, r1, 10
000868  9f102000  addli r1, zero, 17
00086c  15001015  dma_cfg zero, zero, r17, 10
000870  15001014  dma_cfg zero, zero, r1, 10
000874  9f202000  addli r1, zero, 18
000878  15001014  dma_cfg zero, zero, r1, 10
00087c  9f302000  addli r1, zero, 19
000880  15001014  dma_cfg zero, zero, r1, 10
000884  9f402000  addli r1, zero, 20
000888  15001014  dma_cfg zero, zero, r1, 10
00088c  9f502000  addli r1, zero, 21
000890  15001014  dma_cfg zero, zero, r1, 10
000894  9f602000  addli r1, zero, 22
000898  15001014  dma_cfg zero, zero, r1, 10
00089c  9f702000  addli r1, zero, 23
0008a0  15001014  dma_cfg zero, zero, r1, 10
0008a4  9f003000  addli r1, zero, 24
0008a8  15001014  dma_cfg zero, zero, r1, 10
0008ac  9f103000  addli r1, zero, 25
0008b0  15001014  dma_cfg zero, zero, r1, 10
0008b4  9f203000  addli r1, zero, 26
0008b8  15001014  dma_cfg zero, zero, r1, 10
0008bc  9f303000  addli r1, zero, 27
0008c0  15001014  dma_cfg zero, zero, r1, 10
0008c4  9f403000  addli r1, zero, 28
0008c8  15001014  dma_cfg zero, zero, r1, 10
0008cc  9f503000  addli r1, zero, 29
0008d0  15001014  dma_cfg zero, zero, r1, 10
0008d4  9f603000  addli r1, zero, 30
0008d8  15001014  dma_cfg zero, zero, r1, 10
0008dc  9f703000  addli r1, zero, 31
0008e0  15001014  dma_cfg zero, zero, r1, 10
0008e4  9f000004  addli r1, zero, 512
0008e8  958b0b00  dma_cfg r23, r23, zero, 0
0008ec  950b0002  dma_cfg r23, zero, zero, 1
0008f0  15000004  dma_cfg zero, zero, zero, 2
0008f4  9505a007  dma_cfg r11, zero, r26, 3
0008f8  95042009  dma_cfg r9, zero, r18, 4
0008fc  9500700b  dma_cfg r1, zero, r23, 5
000900  15000010  dma_cfg zero, zero, zero, 8
000904  35000000  dma_run zero
000908  1500700b  dma_cfg zero, zero, r23, 5
00090c  15000010  dma_cfg zero, zero, zero, 8
000910  1d100100  unlock r2
000914  5b2fffff  j -1672
000918  9b100c60  ori r1, r24, 1536
00091c  1f3a0000  addli r20, zero, 3
000920  1f5e1000  addli r28, zero, 13
000924  0b951710  add.s r10, r15, r1
000928  b70c9701  beq r14, r25, 800
00092c  3b2e4701  bneq r14, r20, 904
000930  9f201000  addli r1, zero, 10
000934  9f220000  addli r5, zero, 2
000938  1f020000  addli r4, zero, 0
00093c  2b040100  lui r8, 16
000940  7d900000  xwait r1, 0
000944  9f401000  addli r1, zero, 12
000948  7d900000  xwait r1, 0
00094c  7d900800  xwait r17, 0
000950  1d800200  lock zero, r5
000954  ab00803f  lui r1, 260096
000958  0d000002  ew_cfg zero, zero, zero, 1
00095c  8d900000  ewcoeff_cfg r1, r1, zero, 0
000960  9f70f000  addli r1, zero, 127
000964  0d800004  ew_cfg zero, r1, zero, 2
000968  8d0b0006  ew_cfg r23, zero, zero, 3
00096c  8b104510  add.s r1, r10, r4
000970  0b914710  add.s r2, r15, r4
000974  1f020204  addli r4, r4, 512
000978  ad00b100  dsmadd r1, r2, r11, 0
00097c  bb4f82fe  bneq r4, r8, -16
000980  9f301000  addli r1, zero, 11
000984  1d900200  unlock r5
000988  7d800000  xsignal r1, 0
00098c  7d000e00  xsignal r28, 0
000990  7d000800  xsignal r16, 0
000994  db4bffff  j -1444
000998  2b820400  lui r4, 72
00099c  1f0b1000  addli r22, zero, 8
0009a0  1f740000  addli r8, zero, 7
0009a4  9f6a0000  addli r21, zero, 6
0009a8  1f681000  addli r16, zero, 14
0009ac  1f068000  addli r12, zero, 64
0009b0  0b954510  add.s r10, r11, r4
0009b4  37708702  beq r14, r8, 1052
0009b8  9f460000  addli r13, zero, 4
0009bc  b72ed700  beq r14, r13, 936
0009c0  1f0d8000  addli r26, zero, 64
0009c4  bb5777ff  bneq r14, r23, -524
0009c8  6b568fff  load.d r[13:14], -8(r30)
0009cc  6b528f00  load.d r[5:6], 8(r30)
0009d0  9f4c0000  addli r25, zero, 4
0009d4  7d100400  xwait r8, 0
0009d8  0b26c210  add.ul r[13:14], r[5:6], r[13:14]
0009dc  1f220000  addli r4, zero, 2
0009e0  3f443200  blt.s r4, r3, 272
0009e4  9f520000  addli r5, zero, 5
0009e8  9f101000  addli r1, zero, 9
0009ec  1f0d0004  addli r26, zero, 512
0009f0  1d800200  lock zero, r5
0009f4  15000014  dma_cfg zero, zero, zero, 10
0009f8  15007015  dma_cfg zero, zero, r23, 10
0009fc  15004014  dma_cfg zero, zero, r4, 10
000a00  15002014  dma_cfg zero, zero, r2, 10
000a04  15009015  dma_cfg zero, zero, r25, 10
000a08  15005014  dma_cfg zero, zero, r5, 10
000a0c  15005015  dma_cfg zero, zero, r21, 10
000a10  15008014  dma_cfg zero, zero, r8, 10
000a14  15006015  dma_cfg zero, zero, r22, 10
000a18  15001014  dma_cfg zero, zero, r1, 10
000a1c  9f201000  addli r1, zero, 10
000a20  15001014  dma_cfg zero, zero, r1, 10
000a24  9f301000  addli r1, zero, 11
000a28  15001014  dma_cfg zero, zero, r1, 10
000a2c  9f401000  addli r1, zero, 12
000a30  15001014  dma_cfg zero, zero, r1, 10
000a34  9f701000  addli r1, zero, 15
000a38  15008015  dma_cfg zero, zero, r24, 10
000a3c  15000015  dma_cfg zero, zero, r16, 10
000a40  15001014  dma_cfg zero, zero, r1, 10
000a44  9f102000  addli r1, zero, 17
000a48  15001015  dma_cfg zero, zero, r17, 10
000a4c  15001014  dma_cfg zero, zero, r1, 10
000a50  9f202000  addli r1, zero, 18
000a54  15001014  dma_cfg zero, zero, r1, 10
000a58  9f302000  addli r1, zero, 19
000a5c  15001014  dma_cfg zero, zero, r1, 10
000a60  9f402000  addli r1, zero, 20
000a64  15001014  dma_cfg zero, zero, r1, 10
000a68  9f502000  addli r1, zero, 21
000a6c  15001014  dma_cfg zero, zero, r1, 10
000a70  9f602000  addli r1, zero, 22
000a74  15001014  dma_cfg zero, zero, r1, 10
000a78  9f702000  addli r1, zero, 23
000a7c  15001014  dma_cfg zero, zero, r1, 10
000a80  9f003000  addli r1, zero, 24
000a84  15001014  dma_cfg zero, zero, r1, 10
000a88  9f103000  addli r1, zero, 25
000a8c  15001014  dma_cfg zero, zero, r1, 10
000a90  9f203000  addli r1, zero, 26
000a94  15001014  dma_cfg zero, zero, r1, 10
000a98  9f303000  addli r1, zero, 27
000a9c  15001014  dma_cfg zero, zero, r1, 10
000aa0  9f403000  addli r1, zero, 28
000aa4  15001014  dma_cfg zero, zero, r1, 10
000aa8  9f503000  addli r1, zero, 29
000aac  15001014  dma_cfg zero, zero, r1, 10
000ab0  9f603000  addli r1, zero, 30
000ab4  15001014  dma_cfg zero, zero, r1, 10
000ab8  9f703000  addli r1, zero, 31
000abc  15001014  dma_cfg zero, zero, r1, 10
000ac0  9f008000  addli r1, zero, 64
000ac4  958b0b00  dma_cfg r23, r23, zero, 0
000ac8  950b0002  dma_cfg r23, zero, zero, 1
000acc  15000004  dma_cfg zero, zero, zero, 2
000ad0  15051006  dma_cfg r10, zero, r1, 3
000ad4  95049009  dma_cfg r9, zero, r25, 4
000ad8  150d100a  dma_cfg r26, zero, r1, 5
000adc  15000010  dma_cfg zero, zero, zero, 8
000ae0  35000000  dma_run zero
000ae4  1500700b  dma_cfg zero, zero, r23, 5
000ae8  15000010  dma_cfg zero, zero, zero, 8
000aec  1d900200  unlock r5
000af0  ab800400  lui r1, 72
000af4  1d800c00  lock zero, r25
000af8  9f520000  addli r5, zero, 5
000afc  1f0d8000  addli r26, zero, 64
000b00  958b0b00  dma_cfg r23, r23, zero, 0
000b04  9b900004  ori r1, r1, 64
000b08  15800604  dma_cfg zero, r13, zero, 2
000b0c  8b901510  add.s r1, r11, r1
000b10  9f058000  addli r11, zero, 64
000b14  9500b606  dma_cfg r1, r12, r11, 3
000b18  1f060004  addli r12, zero, 512
000b1c  9f000020  addli r1, zero, 4096
000b20  95849509  dma_cfg r9, r11, r25, 4
000b24  1586b00a  dma_cfg r12, r1, r11, 5
000b28  9f101000  addli r1, zero, 9
000b2c  15000010  dma_cfg zero, zero, zero, 8
000b30  35000000  dma_run zero
000b34  1500700b  dma_cfg zero, zero, r23, 5
000b38  15000010  dma_cfg zero, zero, zero, 8
000b3c  1d900c00  unlock r25
000b40  1d800200  lock zero, r5
000b44  15000014  dma_cfg zero, zero, zero, 10
000b48  15007015  dma_cfg zero, zero, r23, 10
000b4c  15004014  dma_cfg zero, zero, r4, 10
000b50  15002014  dma_cfg zero, zero, r2, 10
000b54  15009015  dma_cfg zero, zero, r25, 10
000b58  15005014  dma_cfg zero, zero, r5, 10
000b5c  15005015  dma_cfg zero, zero, r21, 10
000b60  15008014  dma_cfg zero, zero, r8, 10
000b64  15006015  dma_cfg zero, zero, r22, 10
000b68  15001014  dma_cfg zero, zero, r1, 10
000b6c  9f201000  addli r1, zero, 10
000b70  15001014  dma_cfg zero, zero, r1, 10
000b74  9f301000  addli r1, zero, 11
000b78  15001014  dma_cfg zero, zero, r1, 10
000b7c  9f401000  addli r1, zero, 12
000b80  15001014  dma_cfg zero, zero, r1, 10
000b84  9f701000  addli r1, zero, 15
000b88  15008015  dma_cfg zero, zero, r24, 10
000b8c  15000015  dma_cfg zero, zero, r16, 10
000b90  15001014  dma_cfg zero, zero, r1, 10
000b94  9f102000  addli r1, zero, 17
000b98  15001015  dma_cfg zero, zero, r17, 10
000b9c  15001014  dma_cfg zero, zero, r1, 10
000ba0  9f202000  addli r1, zero, 18
000ba4  15001014  dma_cfg zero, zero, r1, 10
000ba8  9f302000  addli r1, zero, 19
000bac  15001014  dma_cfg zero, zero, r1, 10
000bb0  9f402000  addli r1, zero, 20
000bb4  15001014  dma_cfg zero, zero, r1, 10
000bb8  9f502000  addli r1, zero, 21
000bbc  15001014  dma_cfg zero, zero, r1, 10
000bc0  9f602000  addli r1, zero, 22
000bc4  15001014  dma_cfg zero, zero, r1, 10
000bc8  9f702000  addli r1, zero, 23
000bcc  15001014  dma_cfg zero, zero, r1, 10
000bd0  9f003000  addli r1, zero, 24
000bd4  15001014  dma_cfg zero, zero, r1, 10
000bd8  9f103000  addli r1, zero, 25
000bdc  15001014  dma_cfg zero, zero, r1, 10
000be0  9f203000  addli r1, zero, 26
000be4  15001014  dma_cfg zero, zero, r1, 10
000be8  9f303000  addli r1, zero, 27
000bec  15001014  dma_cfg zero, zero, r1, 10
000bf0  9f403000  addli r1, zero, 28
000bf4  15001014  dma_cfg zero, zero, r1, 10
000bf8  9f503000  addli r1, zero, 29
000bfc  15001014  dma_cfg zero, zero, r1, 10
000c00  9f603000  addli r1, zero, 30
000c04  15001014  dma_cfg zero, zero, r1, 10
000c08  9f703000  addli r1, zero, 31
000c0c  15001014  dma_cfg zero, zero, r1, 10
000c10  958b0b00  dma_cfg r23, r23, zero, 0
000c14  950b0002  dma_cfg r23, zero, zero, 1
000c18  15000004  dma_cfg zero, zero, zero, 2
000c1c  1505b006  dma_cfg r10, zero, r11, 3
000c20  95049009  dma_cfg r9, zero, r25, 4
000c24  9f5c0000  addli r25, zero, 5
000c28  1506b00a  dma_cfg r12, zero, r11, 5
000c2c  15000010  dma_cfg zero, zero, zero, 8
000c30  35000000  dma_run zero
000c34  1500700b  dma_cfg zero, zero, r23, 5
000c38  15000010  dma_cfg zero, zero, zero, 8
000c3c  1d900200  unlock r5
000c40  7d800a00  xsignal r21, 0
000c44  db6effff  j -1164
000c48  1f220000  addli r4, zero, 2
000c4c  7d100800  xwait r16, 0
000c50  ab00803f  lui r1, 260096
000c54  9f420000  addli r5, zero, 4
000c58  1d000200  lock zero, r4
000c5c  0d000002  ew_cfg zero, zero, zero, 1
000c60  0d101000  ewcoeff_cfg zero, zero, r1, 0
000c64  8d0b0024  ew_cfg r23, zero, zero, 18
000c68  0d020014  ew_cfg r4, zero, zero, 10
000c6c  e340afff  loadli.w r1,  -44(r30)
000c70  0d821b16  ew_cfg r4, r23, r1, 11
000c74  abc07f41  lui r1, 268284
000c78  0d00001a  ew_cfg zero, zero, zero, 13
000c7c  0d80121c  ew_cfg zero, r5, r1, 14
000c80  0d00001e  ew_cfg zero, zero, zero, 15
000c84  eb500ffe  load.d r[2:3], -32(r30)
000c88  0d000104  ew_cfg zero, r2, zero, 2
000c8c  9f701000  addli r1, zero, 15
000c90  8d020006  ew_cfg r5, zero, zero, 3
000c94  8d825226  ew_cfg r5, r5, r5, 19
000c98  2d15a500  dsmul r10, r10, r10, 0
000c9c  0d000014  ew_cfg zero, zero, zero, 10
000ca0  0d000024  ew_cfg zero, zero, zero, 18
000ca4  0d000026  ew_cfg zero, zero, zero, 19
000ca8  1d100200  unlock r4
000cac  7d800000  xsignal r1, 0
000cb0  5be8feff  j -2240
000cb4  bb7c07fa  bneq r14, zero, -2244
000cb8  6b550fff  load.d r[11:12], -16(r30)
000cbc  1f312000  addli r2, zero, 19
000cc0  9bb07d00  slli r1, r27, 7
000cc4  1f741000  addli r8, zero, 15
000cc8  6b5c8f01  load.d r[25:26], 24(r30)
000ccc  2b080600  lui r16, 96
000cd0  1f0d8000  addli r26, zero, 64
000cd4  7d100400  xwait r8, 0
000cd8  1f540000  addli r8, zero, 5
000cdc  17352502  sll.d r[11:12], r[11:12], r2
000ce0  b3900028  sext_int2long r[2:3], r1
000ce4  1d000400  lock zero, r8
000ce8  0bb92041  min.sl r[19:20], r[2:3], r[19:20]
000cec  958b0b00  dma_cfg r23, r23, zero, 0
000cf0  0b25ac10  add.ul r[11:12], r[25:26], r[11:12]
000cf4  9f5c0000  addli r25, zero, 5
000cf8  27090901  addli.d r[19:20], r[19:20], 128
000cfc  0b391948  max.sl r[19:20], r[19:20], r[2:3]
000d00  8b301918  sub.sl r[2:3], r[19:20], r[2:3]
000d04  6b598fff  load.d r[19:20], -8(r30)
000d08  15800b02  dma_cfg zero, r23, zero, 1
000d0c  8bb04040  min.sl r[2:3], r[2:3], r[5:6]
000d10  1b120864  ori r4, r16, 1600
000d14  9f723600  addli r5, r12, 31
000d18  0b252511  add.ul r[11:12], r[11:12], r[19:20]
000d1c  0b924710  add.s r4, r15, r4
000d20  9f078000  addli r15, zero, 64
000d24  95050004  dma_cfg r11, zero, zero, 2
000d28  1505f206  dma_cfg r10, r4, r15, 3
000d2c  1bc25200  srli r4, r5, 5
000d30  9b321600  slli r5, r12, 1
000d34  1f050020  addli r10, zero, 4096
000d38  95874408  dma_cfg r15, r9, r4, 4
000d3c  1b82e203  andi r4, r5, 62
000d40  9f020004  addli r5, zero, 512
000d44  1585120a  dma_cfg r10, r5, r1, 5
000d48  15004010  dma_cfg zero, zero, r4, 8
000d4c  35000000  dma_run zero
000d50  1500700b  dma_cfg zero, zero, r23, 5
000d54  15000010  dma_cfg zero, zero, zero, 8
000d58  1d100400  unlock r8
000d5c  7d800800  xsignal r17, 0
000d60  5bd2feff  j -2416
000d64  1f050000  addli r10, zero, 0
000d68  1f120000  addli r4, zero, 1
000d6c  9f120000  addli r5, zero, 1
000d70  9f301000  addli r1, zero, 11
000d74  7d900600  xwait r13, 0
000d78  7d100b00  xwait r22, 0
000d7c  7d900000  xwait r1, 0
000d80  9b30e500  slli r1, r10, 14
000d84  1b318500  slli r2, r10, 8
000d88  1d000200  lock zero, r4
000d8c  1f150000  addli r10, zero, 1
000d90  09069600  mm_cfg r12, r12, r9, 0
000d94  9790b000  or r1, r1, r11
000d98  1711f100  or r2, r2, r15
000d9c  89864604  mm_cfg r13, r13, r4, 2
000da0  29811510  mm r2, r11, r1, 8
000da4  9b801200  andi r1, r5, 1
000da8  9f020000  addli r5, zero, 0
000dac  1d100200  unlock r4
000db0  3bcf00fe  bneq r1, zero, -48
000db4  9f101000  addli r1, zero, 9
000db8  1f0d8000  addli r26, zero, 64
000dbc  7d800c00  xsignal r25, 0
000dc0  7d800000  xsignal r1, 0
000dc4  9f201000  addli r1, zero, 10
000dc8  7d800000  xsignal r1, 0
000dcc  db3dffff  j -1556
000dd0  1f111000  addli r2, zero, 9
000dd4  7d900a00  xwait r21, 0
000dd8  1f0d8000  addli r26, zero, 64
000ddc  7d100100  xwait r2, 0
000de0  1d000000  lock zero, zero
000de4  81000000  ds_cfg r1, zero, 0
000de8  81040002  ds_cfg r9, zero, 1
000dec  0106001c  ds_cfg r12, zero, 14
000df0  8104001a  ds_cfg r9, zero, 13
000df4  c105c504  shuffle_coa r11, r10, r12, 2
000df8  1d100000  unlock zero
000dfc  7d000400  xsignal r8, 0
000e00  7d000b00  xsignal r22, 0
000e04  db36ffff  j -1612
000e08  7d000000  xsignal zero, 0
000e0c  bb600700  bneq r14, zero, 56
000e10  9f200000  addli r1, zero, 2
000e14  7d100000  xwait zero, 0
000e18  7d100000  xwait zero, 0
000e1c  7d100000  xwait zero, 0
000e20  7d100000  xwait zero, 0
000e24  7d100000  xwait zero, 0
000e28  7d100000  xwait zero, 0
000e2c  7d100000  xwait zero, 0
000e30  7d100000  xwait zero, 0
000e34  1d800000  lock zero, r1
000e38  0d000020  ew_cfg zero, zero, zero, 16
000e3c  1d900000  unlock r1
000e40  7d400000  xsignal_mode_cfg zero
000e44  9f8e6e00  addli sp, sp, 48
000e48  00a00300  mfence { lm, sm, gm }
000e4c  00100000  exit
000e50  00100000  exit
000e54  00100000  exit
000e58  00100000  exit
000e5c  00100000  exit
000e60  00100000  exit
000e64  00100000  exit
000e68  00100000  exit
000e6c  00100000  exit
000e70  00100000  exit
000e74  00100000  exit
000e78  00100000  exit
000e7c  00100000  exit
000e80  00100000  exit
000e84  00100000  exit
000e88  00100000  exit
000e8c  00100000  exit
000e90  00100000  exit
000e94  00100000  exit
000e98  00100000  exit
000e9c  00100000  exit
000ea0  00100000  exit
000ea4  00100000  exit
000ea8  00100000  exit
000eac  00100000  exit
000eb0  00100000  exit
000eb4  00100000  exit
000eb8  00100000  exit
000ebc  00100000  exit
000ec0  00100000  exit
000ec4  00100000  exit
000ec8  00100000  exit
000ecc  00100000  exit
000ed0  00100000  exit
000ed4  00100000  exit
000ed8  00100000  exit
000edc  00100000  exit
000ee0  00100000  exit
000ee4  00100000  exit
000ee8  00100000  exit
000eec  00100000  exit
000ef0  00100000  exit
000ef4  00100000  exit
000ef8  00100000  exit
000efc  00100000  exit
000f00  00100000  exit
000f04  00100000  exit
000f08  00100000  exit
000f0c  00100000  exit
000f10  00100000  exit
000f14  00100000  exit
000f18  00100000  exit
000f1c  00100000  exit
000f20  00100000  exit
000f24  00100000  exit
000f28  00100000  exit
000f2c  00100000  exit
000f30  00100000  exit
000f34  00100000  exit
000f38  00100000  exit
000f3c  00100000  exit
000f40  00100000  exit
000f44  00100000  exit
000f48  00100000  exit
000f4c  00100000  exit
000f50  00100000  exit
000f54  00100000  exit
000f58  00100000  exit
000f5c  00100000  exit
000f60  00100000  exit
000f64  00100000  exit
000f68  00100000  exit
000f6c  00100000  exit
000f70  00100000  exit
000f74  00100000  exit
000f78  00100000  exit
000f7c  00100000  exit
000f80  00100000  exit
000f84  00100000  exit
000f88  00100000  exit
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
