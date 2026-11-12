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
0000b4  9f8e4eff  addli sp, sp, -96
0000b8  1f8f4e00  addli r30, sp, 32
0000bc  9f100000  addli r1, zero, 1
0000c0  80360002  core_id r13
0000c4  e30b5f00  loadli.w r23,  40(r30)
0000c8  7dc00000  xsignal_mode_cfg r1
0000cc  37e00600  beq r13, zero, 24
0000d0  abf0ffff  lui r1, 1048575
0000d4  9b90f0ff  ori r1, r1, 4095
0000d8  80a10004  csr_set csr3, r1
0000dc  00d00100  sync_group
0000e0  5b0d0000  j 104
0000e4  1f210000  addli r2, zero, 2
0000e8  fdd00000  uni_sram_cfg r1, r1
0000ec  abf1ffff  lui r3, 1048575
0000f0  1d000100  lock zero, r2
0000f4  8d000020  ew_cfg r1, zero, zero, 16
0000f8  9b90f1ff  ori r1, r3, 4095
0000fc  1d100100  unlock r2
000100  1f310000  addli r2, zero, 3
000104  80a10004  csr_set csr3, r1
000108  9f500000  addli r1, zero, 5
00010c  00d00100  sync_group
000110  7d800000  xsignal r1, 0
000114  7d000100  xsignal r2, 0
000118  9f101000  addli r1, zero, 9
00011c  1f710000  addli r2, zero, 7
000120  7d800000  xsignal r1, 0
000124  7d000100  xsignal r2, 0
000128  9f301000  addli r1, zero, 11
00012c  1f212000  addli r2, zero, 18
000130  7d800000  xsignal r1, 0
000134  7d000100  xsignal r2, 0
000138  9f601000  addli r1, zero, 14
00013c  1f012000  addli r2, zero, 16
000140  7d800000  xsignal r1, 0
000144  7d000100  xsignal r2, 0
000148  e3004f00  loadli.w r1,  32(r30)
00014c  63414f00  loadli.w r2,  36(r30)
000150  00d20002  load_param_i r4, 1
000154  e3015f00  loadli.w r3,  40(r30)
000158  8b101120  mul.s r1, r2, r1
00015c  1f010200  addli r2, r4, 0
000160  0b913050  fmac.s r2, r1, r3
000164  8b913020  mul.s r3, r1, r3
000168  1f71f1ff  addli r2, r2, -1
00016c  0b114130  div.s r2, r2, r4
000170  00520002  load_param_i r4, 0
000174  8b104120  mul.s r1, r2, r4
000178  0b114150  fmac.s r2, r2, r4
00017c  0b113140  min.s r2, r2, r3
000180  cb141106  ble.s r2, r1, 3364
000184  331c0128  sext_int2long r[25:26], r2
000188  b3950028  sext_int2long r[12:13], r1
00018c  ab000300  lui r1, 48
000190  2bf1ff7f  lui r2, 524287
000194  2b030100  lui r6, 16
000198  9f340000  addli r9, zero, 3
00019c  1f170000  addli r14, zero, 1
0001a0  9f570000  addli r15, zero, 5
0001a4  9f290000  addli r19, zero, 2
0001a8  9f4a0000  addli r21, zero, 4
0001ac  9f620000  addli r5, zero, 6
0001b0  1f0e0001  addli r28, zero, 128
0001b4  2b09807f  lui r18, 522240
0001b8  2b0affff  lui r20, 1048560
0001bc  1b950020  ori r10, r1, 512
0001c0  1b1df1ff  ori r26, r2, 4095
0001c4  ab700000  lui r1, 7
0001c8  2bf17f7f  lui r2, 522239
0001cc  1b1b0320  ori r22, r6, 512
0001d0  73388fff  store.d r[25:26], -16(r30)
0001d4  9b9df0ff  ori r27, r1, 4095
0001d8  9b10f1ff  ori r1, r2, 4095
0001dc  2b010200  lui r2, 32
0001e0  9f080500  addli r17, r10, 0
0001e4  1b180120  ori r16, r2, 512
0001e8  db550000  j 684
0001ec  9f7c0000  addli r25, zero, 7
0001f0  9f330000  addli r7, zero, 3
0001f4  17b1e102  sll.d r[3:4], r[4:5], r14
0001f8  1f021000  addli r4, zero, 8
0001fc  1f241000  addli r8, zero, 10
000200  1f5e1000  addli r28, zero, 13
000204  eb548f00  load.d r[10:11], 8(r30)
000208  1f8c0b00  addli r24, r23, 0
00020c  9f0b8000  addli r23, zero, 64
000210  1f030004  addli r6, zero, 512
000214  7d900c00  xwait r25, 0
000218  1d800700  lock zero, r15
00021c  15000014  dma_cfg zero, zero, zero, 10
000220  0ba12410  add.ul r[3:4], r[10:11], r[3:4]
000224  9f040001  addli r9, zero, 128
000228  1f650000  addli r10, zero, 6
00022c  1500e014  dma_cfg zero, zero, r14, 10
000230  15003015  dma_cfg zero, zero, r19, 10
000234  15007014  dma_cfg zero, zero, r7, 10
000238  15005015  dma_cfg zero, zero, r21, 10
00023c  1500f014  dma_cfg zero, zero, r15, 10
000240  15005014  dma_cfg zero, zero, r5, 10
000244  ab820000  lui r5, 8
000248  15009015  dma_cfg zero, zero, r25, 10
00024c  15004014  dma_cfg zero, zero, r4, 10
000250  1f121000  addli r4, zero, 9
000254  15004014  dma_cfg zero, zero, r4, 10
000258  1f321000  addli r4, zero, 11
00025c  15008014  dma_cfg zero, zero, r8, 10
000260  15004014  dma_cfg zero, zero, r4, 10
000264  1f421000  addli r4, zero, 12
000268  15004014  dma_cfg zero, zero, r4, 10
00026c  1f621000  addli r4, zero, 14
000270  1500c015  dma_cfg zero, zero, r28, 10
000274  15004014  dma_cfg zero, zero, r4, 10
000278  1f721000  addli r4, zero, 15
00027c  15004014  dma_cfg zero, zero, r4, 10
000280  1f022000  addli r4, zero, 16
000284  15004014  dma_cfg zero, zero, r4, 10
000288  1f122000  addli r4, zero, 17
00028c  15004014  dma_cfg zero, zero, r4, 10
000290  1f222000  addli r4, zero, 18
000294  15004014  dma_cfg zero, zero, r4, 10
000298  1f322000  addli r4, zero, 19
00029c  15004014  dma_cfg zero, zero, r4, 10
0002a0  1f422000  addli r4, zero, 20
0002a4  15004014  dma_cfg zero, zero, r4, 10
0002a8  1f522000  addli r4, zero, 21
0002ac  15004014  dma_cfg zero, zero, r4, 10
0002b0  1f622000  addli r4, zero, 22
0002b4  15004014  dma_cfg zero, zero, r4, 10
0002b8  1f722000  addli r4, zero, 23
0002bc  15004014  dma_cfg zero, zero, r4, 10
0002c0  1f023000  addli r4, zero, 24
0002c4  15004014  dma_cfg zero, zero, r4, 10
0002c8  1f123000  addli r4, zero, 25
0002cc  15004014  dma_cfg zero, zero, r4, 10
0002d0  1f223000  addli r4, zero, 26
0002d4  15004014  dma_cfg zero, zero, r4, 10
0002d8  1f323000  addli r4, zero, 27
0002dc  15004014  dma_cfg zero, zero, r4, 10
0002e0  1f423000  addli r4, zero, 28
0002e4  15004014  dma_cfg zero, zero, r4, 10
0002e8  1f523000  addli r4, zero, 29
0002ec  15004014  dma_cfg zero, zero, r4, 10
0002f0  1f623000  addli r4, zero, 30
0002f4  15004014  dma_cfg zero, zero, r4, 10
0002f8  1f723000  addli r4, zero, 31
0002fc  15004014  dma_cfg zero, zero, r4, 10
000300  1b920204  ori r4, r5, 64
000304  15070700  dma_cfg r14, r14, zero, 0
000308  15070002  dma_cfg r14, zero, zero, 1
00030c  15000004  dma_cfg zero, zero, zero, 2
000310  95027007  dma_cfg r5, zero, r23, 3
000314  95045009  dma_cfg r9, zero, r21, 4
000318  1503700b  dma_cfg r6, zero, r23, 5
00031c  15000010  dma_cfg zero, zero, zero, 8
000320  35000000  dma_run zero
000324  1500e00a  dma_cfg zero, zero, r14, 5
000328  15000010  dma_cfg zero, zero, zero, 8
00032c  1d900700  unlock r15
000330  1d800a00  lock zero, r21
000334  15070700  dma_cfg r14, r14, zero, 0
000338  15800104  dma_cfg zero, r3, zero, 2
00033c  15027107  dma_cfg r4, r2, r23, 3
000340  1f010010  addli r2, zero, 2048
000344  95845b09  dma_cfg r9, r23, r21, 4
000348  1503710b  dma_cfg r6, r2, r23, 5
00034c  1f011000  addli r2, zero, 8
000350  15000010  dma_cfg zero, zero, zero, 8
000354  35000000  dma_run zero
000358  1500e00a  dma_cfg zero, zero, r14, 5
00035c  15000010  dma_cfg zero, zero, zero, 8
000360  1d900a00  unlock r21
000364  1d800700  lock zero, r15
000368  15000014  dma_cfg zero, zero, zero, 10
00036c  1500e014  dma_cfg zero, zero, r14, 10
000370  15003015  dma_cfg zero, zero, r19, 10
000374  15007014  dma_cfg zero, zero, r7, 10
000378  15005015  dma_cfg zero, zero, r21, 10
00037c  1500f014  dma_cfg zero, zero, r15, 10
000380  1500a014  dma_cfg zero, zero, r10, 10
000384  1f850800  addli r10, r17, 0
000388  15009015  dma_cfg zero, zero, r25, 10
00038c  15002014  dma_cfg zero, zero, r2, 10
000390  1f111000  addli r2, zero, 9
000394  15002014  dma_cfg zero, zero, r2, 10
000398  1f311000  addli r2, zero, 11
00039c  15008014  dma_cfg zero, zero, r8, 10
0003a0  15002014  dma_cfg zero, zero, r2, 10
0003a4  1f411000  addli r2, zero, 12
0003a8  15002014  dma_cfg zero, zero, r2, 10
0003ac  1f611000  addli r2, zero, 14
0003b0  1500c015  dma_cfg zero, zero, r28, 10
0003b4  1f0e0001  addli r28, zero, 128
0003b8  15002014  dma_cfg zero, zero, r2, 10
0003bc  1f711000  addli r2, zero, 15
0003c0  15002014  dma_cfg zero, zero, r2, 10
0003c4  1f012000  addli r2, zero, 16
0003c8  15002014  dma_cfg zero, zero, r2, 10
0003cc  1f112000  addli r2, zero, 17
0003d0  15002014  dma_cfg zero, zero, r2, 10
0003d4  1f212000  addli r2, zero, 18
0003d8  15002014  dma_cfg zero, zero, r2, 10
0003dc  1f312000  addli r2, zero, 19
0003e0  15002014  dma_cfg zero, zero, r2, 10
0003e4  1f412000  addli r2, zero, 20
0003e8  15002014  dma_cfg zero, zero, r2, 10
0003ec  1f512000  addli r2, zero, 21
0003f0  15002014  dma_cfg zero, zero, r2, 10
0003f4  1f612000  addli r2, zero, 22
0003f8  15002014  dma_cfg zero, zero, r2, 10
0003fc  1f712000  addli r2, zero, 23
000400  15002014  dma_cfg zero, zero, r2, 10
000404  1f013000  addli r2, zero, 24
000408  15002014  dma_cfg zero, zero, r2, 10
00040c  1f113000  addli r2, zero, 25
000410  15002014  dma_cfg zero, zero, r2, 10
000414  1f213000  addli r2, zero, 26
000418  15002014  dma_cfg zero, zero, r2, 10
00041c  1f313000  addli r2, zero, 27
000420  15002014  dma_cfg zero, zero, r2, 10
000424  1f413000  addli r2, zero, 28
000428  15002014  dma_cfg zero, zero, r2, 10
00042c  1f513000  addli r2, zero, 29
000430  15002014  dma_cfg zero, zero, r2, 10
000434  1f613000  addli r2, zero, 30
000438  15002014  dma_cfg zero, zero, r2, 10
00043c  1f713000  addli r2, zero, 31
000440  15002014  dma_cfg zero, zero, r2, 10
000444  15070700  dma_cfg r14, r14, zero, 0
000448  15070002  dma_cfg r14, zero, zero, 1
00044c  15000004  dma_cfg zero, zero, zero, 2
000450  95027007  dma_cfg r5, zero, r23, 3
000454  9f620000  addli r5, zero, 6
000458  95045009  dma_cfg r9, zero, r21, 4
00045c  9f340000  addli r9, zero, 3
000460  1503700b  dma_cfg r6, zero, r23, 5
000464  9f0b0c00  addli r23, r24, 0
000468  2b030100  lui r6, 16
00046c  6b5c0fff  load.d r[25:26], -16(r30)
000470  15000010  dma_cfg zero, zero, zero, 8
000474  35000000  dma_run zero
000478  1500e00a  dma_cfg zero, zero, r14, 5
00047c  15000010  dma_cfg zero, zero, zero, 8
000480  1d900700  unlock r15
000484  7d800200  xsignal r5, 0
000488  a7950500  addli.d r[12:13], r[12:13], 1
00048c  13b18505  setlt.sl r2, r[12:13], r[25:26]
000490  37580104  beq r2, zero, 2580
000494  0b917531  div.s r2, r11, r23
000498  e3414f00  loadli.w r3,  36(r30)
00049c  1f820100  addli r4, r3, 0
0004a0  8b114138  mod.s r3, r2, r4
0004a4  0b114130  div.s r2, r2, r4
0004a8  b3130128  sext_int2long r[8:9], r2
0004ac  b3910128  sext_int2long r[4:5], r3
0004b0  1f710000  addli r2, zero, 7
0004b4  97b12102  sll.d r[4:5], r[4:5], r2
0004b8  733c7ffe  store.d r[8:9], -8(r30)
0004bc  3fa0d400  blt.s r9, r13, 8
0004c0  db150000  j 172
0004c4  3ffbd700  blt.s r15, r13, 732
0004c8  b7cc5601  beq r13, r21, 816
0004cc  3bd4f604  bneq r13, r15, 2324
0004d0  9f211000  addli r3, zero, 10
0004d4  1f010000  addli r2, zero, 0
0004d8  7d900100  xwait r3, 0
0004dc  9f411000  addli r3, zero, 12
0004e0  7d900100  xwait r3, 0
0004e4  1d800900  lock zero, r19
0004e8  ab01803f  lui r3, 260096
0004ec  0d000002  ew_cfg zero, zero, zero, 1
0004f0  8d910100  ewcoeff_cfg r3, r3, zero, 0
0004f4  9f71f000  addli r3, zero, 127
0004f8  0d800104  ew_cfg zero, r3, zero, 2
0004fc  0d070006  ew_cfg r14, zero, zero, 3
000500  8b110111  add.s r3, r2, r16
000504  1f010104  addli r2, r2, 512
000508  ad816100  dsmadd r3, r3, r6, 0
00050c  bb5f61fe  bneq r2, r6, -12
000510  9f311000  addli r3, zero, 11
000514  1d900900  unlock r19
000518  1f010000  addli r2, zero, 0
00051c  7d800100  xsignal r3, 0
000520  9f012000  addli r3, zero, 16
000524  7d900100  xwait r3, 0
000528  1d800900  lock zero, r19
00052c  9f71f000  addli r3, zero, 127
000530  0d000002  ew_cfg zero, zero, zero, 1
000534  0d800104  ew_cfg zero, r3, zero, 2
000538  0d070006  ew_cfg r14, zero, zero, 3
00053c  0d100000  ewcoeff_cfg zero, zero, zero, 0
000540  8b11a110  add.s r3, r2, r10
000544  0b120111  add.s r4, r2, r16
000548  1f010104  addli r2, r2, 512
00054c  ad214200  dscmpnsel r3, r4, r4, 0
000550  bb4f61fe  bneq r2, r6, -16
000554  1f511000  addli r2, zero, 13
000558  1d900900  unlock r19
00055c  7d000100  xsignal r2, 0
000560  1f711000  addli r2, zero, 15
000564  7d000100  xsignal r2, 0
000568  5be4ffff  j -224
00056c  3782e6fe  beq r13, r14, -896
000570  37843605  beq r13, r19, 2304
000574  bbb19604  bneq r13, r9, 2156
000578  1f511000  addli r2, zero, 13
00057c  73303ffe  store.d r[4:5], -32(r30)
000580  7334bffe  store.d r[12:13], -24(r30)
000584  330c0028  zext_int2long r[25:26], zero
000588  7d100100  xwait r2, 0
00058c  1f711000  addli r2, zero, 15
000590  7d100100  xwait r2, 0
000594  1f212000  addli r2, zero, 18
000598  7d100100  xwait r2, 0
00059c  3d000000  xfence
0005a0  00a00300  mfence { lm, sm, gm }
0005a4  5b030000  j 24
0005a8  1f71f000  addli r2, zero, 127
0005ac  33010128  zext_int2long r[3:4], r2
0005b0  13212c04  setlt.ul r2, r[25:26], r[3:4]
0005b4  271c0c00  addli.d r[25:26], r[25:26], 1
0005b8  376f0102  beq r2, zero, 2008
0005bc  1f710000  addli r2, zero, 7
0005c0  33020028  zext_int2long r[5:6], zero
0005c4  17312c02  sll.d r[3:4], r[25:26], r2
0005c8  db050000  j 44
0005cc  27420200  addli.d r[5:6], r[5:6], 4
0005d0  33030e28  zext_int2long r[7:8], r28
0005d4  13236202  setneq.d r6, r[5:6], r[7:8]
0005d8  8b936a11  add.s r7, r21, r22
0005dc  73e4a300  stores.w r10, 8(r7)
0005e0  1f850800  addli r10, r17, 0
0005e4  73e68300  stores.w r8, 12(r7)
0005e8  73e2d300  stores.w r13, 4(r7)
0005ec  73e03301  stores.w r19, 0(r7)
0005f0  b76e03fe  beq r6, zero, -72
0005f4  0b232210  add.ul r[7:8], r[5:6], r[3:4]
0005f8  9b3a2300  slli r21, r6, 2
0005fc  0b940a11  add.s r8, r21, r16
000600  0b95aa10  add.s r10, r21, r10
000604  ef440400  loads.w r9, 0(r8)
000608  6f43c400  loads.w r6, 12(r8)
00060c  ef438400  loads.w r7, 8(r8)
000610  6f444400  loads.w r8, 4(r8)
000614  6f47c500  loads.w r14, 12(r10)
000618  ef458500  loads.w r11, 8(r10)
00061c  ef4b4500  loads.w r23, 4(r10)
000620  1bb69400  slli r12, r9, 9
000624  9bc67401  srli r13, r9, 23
000628  13060600  seteq r12, r12, zero
00062c  9b86f60f  andi r13, r13, 255
000630  9bf6f60f  setlti r13, r13, 255
000634  1796c600  or r12, r13, r12
000638  37200600  beq r12, zero, 8
00063c  ef440500  loads.w r9, 0(r10)
000640  1b359400  slli r10, r8, 9
000644  1b467401  srli r12, r8, 23
000648  13050500  seteq r10, r10, zero
00064c  1b06f60f  andi r12, r12, 255
000650  1b76f60f  setlti r12, r12, 255
000654  1715a600  or r10, r12, r10
000658  3b200500  bneq r10, zero, 8
00065c  9f0b0400  addli r23, r8, 0
000660  1bb49300  slli r8, r7, 9
000664  1bc57301  srli r10, r7, 23
000668  13040400  seteq r8, r8, zero
00066c  1b05f50f  andi r10, r10, 255
000670  1b75f50f  setlti r10, r10, 255
000674  17148500  or r8, r10, r8
000678  3b200400  bneq r8, zero, 8
00067c  9f850300  addli r11, r7, 0
000680  9b339300  slli r7, r6, 9
000684  1b447301  srli r8, r6, 23
000688  93830300  seteq r7, r7, zero
00068c  1b04f40f  andi r8, r8, 255
000690  1b74f40f  setlti r8, r8, 255
000694  97137400  or r7, r8, r7
000698  3ba00300  bneq r7, zero, 8
00069c  1f070300  addli r14, r6, 0
0006a0  1706a701  and r12, r14, r26
0006a4  1303c904  setlt.u r6, r18, r12
0006a8  3b300300  bneq r6, zero, 12
0006ac  1f040700  addli r8, r14, 0
0006b0  db010000  j 12
0006b4  2b034000  lui r6, 1024
0006b8  17146700  or r8, r14, r6
0006bc  1783a501  and r6, r11, r26
0006c0  93036904  setlt.u r7, r18, r6
0006c4  3bb00300  bneq r7, zero, 12
0006c8  1f850500  addli r10, r11, 0
0006cc  db010000  j 12
0006d0  ab034000  lui r7, 1024
0006d4  17957500  or r10, r11, r7
0006d8  9783ab01  and r7, r23, r26
0006dc  93067904  setlt.u r13, r18, r7
0006e0  3bb00600  bneq r13, zero, 12
0006e4  9f860b00  addli r13, r23, 0
0006e8  db010000  j 12
0006ec  ab064000  lui r13, 1024
0006f0  9796db00  or r13, r23, r13
0006f4  9787a401  and r15, r9, r26
0006f8  9309f904  setlt.u r19, r18, r15
0006fc  3bd00900  bneq r19, zero, 20
000700  9f890400  addli r19, r9, 0
000704  9387f004  setlt.u r15, r1, r15
000708  37e00700  beq r15, zero, 24
00070c  5b050000  j 40
000710  ab094000  lui r19, 1024
000714  97993401  or r19, r9, r19
000718  9387f004  setlt.u r15, r1, r15
00071c  3be00700  bneq r15, zero, 24
000720  9bc70401  srli r15, r9, 16
000724  9b871700  andi r15, r15, 1
000728  8b94f410  add.s r9, r9, r15
00072c  8b94b411  add.s r9, r9, r27
000730  97894401  and r19, r9, r20
000734  93837004  setlt.u r7, r1, r7
000738  37e00300  beq r7, zero, 24
00073c  13836004  setlt.u r6, r1, r6
000740  b7300300  beq r6, zero, 44
000744  1383c004  setlt.u r6, r1, r12
000748  3b1a03fe  bneq r6, zero, -380
00074c  db070000  j 60
000750  9bc30b01  srli r7, r23, 16
000754  9b831300  andi r7, r7, 1
000758  8b937b10  add.s r7, r23, r7
00075c  8b93b311  add.s r7, r7, r27
000760  97864301  and r13, r7, r20
000764  13836004  setlt.u r6, r1, r6
000768  3b7f03fe  bneq r6, zero, -36
00076c  1bc30501  srli r6, r11, 16
000770  1b031300  andi r6, r6, 1
000774  0b936510  add.s r6, r11, r6
000778  0b13b311  add.s r6, r6, r27
00077c  17054301  and r10, r6, r20
000780  1383c004  setlt.u r6, r1, r12
000784  3b2903fe  bneq r6, zero, -440
000788  1b430701  srli r6, r14, 16
00078c  1b031300  andi r6, r6, 1
000790  0b136710  add.s r6, r14, r6
000794  0b13b311  add.s r6, r6, r27
000798  17044301  and r8, r6, r20
00079c  5bc6ffff  j -464
0007a0  37935600  beq r13, r5, 196
0007a4  1f710000  addli r2, zero, 7
0007a8  bbe82602  bneq r13, r2, 1592
0007ac  1f111000  addli r2, zero, 9
0007b0  7d900200  xwait r5, 0
0007b4  9f010001  addli r3, zero, 128
0007b8  1f0e0001  addli r28, zero, 128
0007bc  7d100100  xwait r2, 0
0007c0  1d000000  lock zero, zero
0007c4  1f018000  addli r2, zero, 64
0007c8  81090000  ds_cfg r19, zero, 0
0007cc  81010002  ds_cfg r3, zero, 1
0007d0  0101001c  ds_cfg r2, zero, 14
0007d4  8101001a  ds_cfg r3, zero, 13
0007d8  ab810000  lui r3, 8
0007dc  41802104  shuffle_coa zero, r3, r2, 2
0007e0  1f710000  addli r2, zero, 7
0007e4  1d100000  unlock zero
0007e8  7d000100  xsignal r2, 0
0007ec  1f011000  addli r2, zero, 8
0007f0  7d000100  xsignal r2, 0
0007f4  db92ffff  j -876
0007f8  1f011000  addli r2, zero, 8
0007fc  7d900a00  xwait r21, 0
000800  9f010001  addli r3, zero, 128
000804  1f0e0001  addli r28, zero, 128
000808  7d100100  xwait r2, 0
00080c  1f611000  addli r2, zero, 14
000810  7d100100  xwait r2, 0
000814  1f018000  addli r2, zero, 64
000818  1d000700  lock zero, r14
00081c  09013100  mm_cfg r2, r2, r3, 0
000820  898aea04  mm_cfg r21, r21, r14, 2
000824  29080010  mm r16, zero, zero, 8
000828  1d100700  unlock r14
00082c  1d000700  lock zero, r14
000830  09013100  mm_cfg r2, r2, r3, 0
000834  2b010200  lui r2, 32
000838  ab410000  lui r3, 4
00083c  898aea04  mm_cfg r21, r21, r14, 2
000840  1b110130  ori r2, r2, 768
000844  29013010  mm r2, zero, r3, 8
000848  1f111000  addli r2, zero, 9
00084c  1d100700  unlock r14
000850  7d800700  xsignal r15, 0
000854  7d000100  xsignal r2, 0
000858  1f411000  addli r2, zero, 12
00085c  7d000100  xsignal r2, 0
000860  5b85ffff  j -984
000864  a7840100  addli.d r[10:11], r[4:5], 0
000868  6b518fff  load.d r[3:4], -8(r30)
00086c  9f621000  addli r5, zero, 14
000870  1f320000  addli r4, zero, 3
000874  1f631000  addli r6, zero, 14
000878  9f0b0001  addli r23, zero, 128
00087c  1f141000  addli r8, zero, 9
000880  9f231000  addli r7, zero, 10
000884  9f3c1000  addli r25, zero, 11
000888  1f5e1000  addli r28, zero, 13
00088c  1f6c1000  addli r24, zero, 14
000890  7d100200  xwait r4, 0
000894  1d800700  lock zero, r15
000898  17315102  sll.d r[3:4], r[3:4], r5
00089c  6b520f00  load.d r[5:6], 0(r30)
0008a0  15000014  dma_cfg zero, zero, zero, 10
0008a4  1500e014  dma_cfg zero, zero, r14, 10
0008a8  15003015  dma_cfg zero, zero, r19, 10
0008ac  0b212210  add.ul r[3:4], r[5:6], r[3:4]
0008b0  1f320000  addli r4, zero, 3
0008b4  9f421000  addli r5, zero, 12
0008b8  15004014  dma_cfg zero, zero, r4, 10
0008bc  1f620000  addli r4, zero, 6
0008c0  15005015  dma_cfg zero, zero, r21, 10
0008c4  1500f014  dma_cfg zero, zero, r15, 10
0008c8  15004014  dma_cfg zero, zero, r4, 10
0008cc  1f720000  addli r4, zero, 7
0008d0  15004014  dma_cfg zero, zero, r4, 10
0008d4  1f021000  addli r4, zero, 8
0008d8  15004014  dma_cfg zero, zero, r4, 10
0008dc  1f121000  addli r4, zero, 9
0008e0  15004014  dma_cfg zero, zero, r4, 10
0008e4  1f221000  addli r4, zero, 10
0008e8  15004014  dma_cfg zero, zero, r4, 10
0008ec  1f321000  addli r4, zero, 11
0008f0  15004014  dma_cfg zero, zero, r4, 10
0008f4  1f521000  addli r4, zero, 13
0008f8  15005014  dma_cfg zero, zero, r5, 10
0008fc  9f721000  addli r5, zero, 15
000900  15004014  dma_cfg zero, zero, r4, 10
000904  1f020002  addli r4, zero, 256
000908  15006014  dma_cfg zero, zero, r6, 10
00090c  1f431000  addli r6, zero, 12
000910  15005014  dma_cfg zero, zero, r5, 10
000914  9f022000  addli r5, zero, 16
000918  15005014  dma_cfg zero, zero, r5, 10
00091c  9f122000  addli r5, zero, 17
000920  15005014  dma_cfg zero, zero, r5, 10
000924  9f222000  addli r5, zero, 18
000928  15005014  dma_cfg zero, zero, r5, 10
00092c  9f322000  addli r5, zero, 19
000930  15005014  dma_cfg zero, zero, r5, 10
000934  9f422000  addli r5, zero, 20
000938  15005014  dma_cfg zero, zero, r5, 10
00093c  9f522000  addli r5, zero, 21
000940  15005014  dma_cfg zero, zero, r5, 10
000944  9f622000  addli r5, zero, 22
000948  15005014  dma_cfg zero, zero, r5, 10
00094c  9f722000  addli r5, zero, 23
000950  15005014  dma_cfg zero, zero, r5, 10
000954  9f023000  addli r5, zero, 24
000958  15005014  dma_cfg zero, zero, r5, 10
00095c  9f123000  addli r5, zero, 25
000960  15005014  dma_cfg zero, zero, r5, 10
000964  9f223000  addli r5, zero, 26
000968  15005014  dma_cfg zero, zero, r5, 10
00096c  9f323000  addli r5, zero, 27
000970  15005014  dma_cfg zero, zero, r5, 10
000974  9f423000  addli r5, zero, 28
000978  15005014  dma_cfg zero, zero, r5, 10
00097c  9f523000  addli r5, zero, 29
000980  15005014  dma_cfg zero, zero, r5, 10
000984  9f623000  addli r5, zero, 30
000988  15005014  dma_cfg zero, zero, r5, 10
00098c  9f723000  addli r5, zero, 31
000990  15005014  dma_cfg zero, zero, r5, 10
000994  9f028000  addli r5, zero, 64
000998  15070700  dma_cfg r14, r14, zero, 0
00099c  15070002  dma_cfg r14, zero, zero, 1
0009a0  15000004  dma_cfg zero, zero, zero, 2
0009a4  15005006  dma_cfg zero, zero, r5, 3
0009a8  950b3009  dma_cfg r23, zero, r19, 4
0009ac  1502700b  dma_cfg r4, zero, r23, 5
0009b0  15000010  dma_cfg zero, zero, zero, 8
0009b4  35000000  dma_run zero
0009b8  1500e00a  dma_cfg zero, zero, r14, 5
0009bc  15000010  dma_cfg zero, zero, zero, 8
0009c0  1d900700  unlock r15
0009c4  1d800a00  lock zero, r21
0009c8  15070700  dma_cfg r14, r14, zero, 0
0009cc  15800104  dma_cfg zero, r3, zero, 2
0009d0  95025106  dma_cfg r5, r2, r5, 3
0009d4  1f310000  addli r2, zero, 3
0009d8  9f010002  addli r3, zero, 256
0009dc  958b3209  dma_cfg r23, r5, r19, 4
0009e0  15827b0b  dma_cfg r4, r23, r23, 5
0009e4  1f720000  addli r4, zero, 7
0009e8  15000010  dma_cfg zero, zero, zero, 8
0009ec  35000000  dma_run zero
0009f0  1500e00a  dma_cfg zero, zero, r14, 5
0009f4  15000010  dma_cfg zero, zero, zero, 8
0009f8  1d900a00  unlock r21
0009fc  1d800700  lock zero, r15
000a00  15000014  dma_cfg zero, zero, zero, 10
000a04  1500e014  dma_cfg zero, zero, r14, 10
000a08  15003015  dma_cfg zero, zero, r19, 10
000a0c  15002014  dma_cfg zero, zero, r2, 10
000a10  1f610000  addli r2, zero, 6
000a14  15005015  dma_cfg zero, zero, r21, 10
000a18  1500f014  dma_cfg zero, zero, r15, 10
000a1c  15002014  dma_cfg zero, zero, r2, 10
000a20  1f011000  addli r2, zero, 8
000a24  15004014  dma_cfg zero, zero, r4, 10
000a28  15002014  dma_cfg zero, zero, r2, 10
000a2c  1f412000  addli r2, zero, 20
000a30  15008014  dma_cfg zero, zero, r8, 10
000a34  1f042000  addli r8, zero, 16
000a38  15007014  dma_cfg zero, zero, r7, 10
000a3c  9f731000  addli r7, zero, 15
000a40  15009015  dma_cfg zero, zero, r25, 10
000a44  9f2c2000  addli r25, zero, 18
000a48  15006014  dma_cfg zero, zero, r6, 10
000a4c  1500c015  dma_cfg zero, zero, r28, 10
000a50  1f3e2000  addli r28, zero, 19
000a54  15008015  dma_cfg zero, zero, r24, 10
000a58  1f1c2000  addli r24, zero, 17
000a5c  15007014  dma_cfg zero, zero, r7, 10
000a60  15008014  dma_cfg zero, zero, r8, 10
000a64  15008015  dma_cfg zero, zero, r24, 10
000a68  15009015  dma_cfg zero, zero, r25, 10
000a6c  1500c015  dma_cfg zero, zero, r28, 10
000a70  15002014  dma_cfg zero, zero, r2, 10
000a74  1f512000  addli r2, zero, 21
000a78  15002014  dma_cfg zero, zero, r2, 10
000a7c  1f612000  addli r2, zero, 22
000a80  15002014  dma_cfg zero, zero, r2, 10
000a84  1f712000  addli r2, zero, 23
000a88  15002014  dma_cfg zero, zero, r2, 10
000a8c  1f013000  addli r2, zero, 24
000a90  15002014  dma_cfg zero, zero, r2, 10
000a94  1f113000  addli r2, zero, 25
000a98  15002014  dma_cfg zero, zero, r2, 10
000a9c  1f213000  addli r2, zero, 26
000aa0  15002014  dma_cfg zero, zero, r2, 10
000aa4  1f313000  addli r2, zero, 27
000aa8  15002014  dma_cfg zero, zero, r2, 10
000aac  1f413000  addli r2, zero, 28
000ab0  15002014  dma_cfg zero, zero, r2, 10
000ab4  1f513000  addli r2, zero, 29
000ab8  15002014  dma_cfg zero, zero, r2, 10
000abc  1f613000  addli r2, zero, 30
000ac0  15002014  dma_cfg zero, zero, r2, 10
000ac4  1f713000  addli r2, zero, 31
000ac8  15002014  dma_cfg zero, zero, r2, 10
000acc  15070700  dma_cfg r14, r14, zero, 0
000ad0  15070002  dma_cfg r14, zero, zero, 1
000ad4  15000004  dma_cfg zero, zero, zero, 2
000ad8  15005006  dma_cfg zero, zero, r5, 3
000adc  950b3009  dma_cfg r23, zero, r19, 4
000ae0  9501700b  dma_cfg r3, zero, r23, 5
000ae4  17b1e402  sll.d r[3:4], r[10:11], r14
000ae8  eb540f01  load.d r[10:11], 16(r30)
000aec  15000010  dma_cfg zero, zero, zero, 8
000af0  35000000  dma_run zero
000af4  1500e00a  dma_cfg zero, zero, r14, 5
000af8  15000010  dma_cfg zero, zero, zero, 8
000afc  1d900700  unlock r15
000b00  7d800900  xsignal r19, 0
000b04  9f391000  addli r19, zero, 11
000b08  0ba12410  add.ul r[3:4], r[10:11], r[3:4]
000b0c  9f240000  addli r9, zero, 2
000b10  1f850800  addli r10, r17, 0
000b14  7d900900  xwait r19, 0
000b18  1d800700  lock zero, r15
000b1c  15000014  dma_cfg zero, zero, zero, 10
000b20  1500e014  dma_cfg zero, zero, r14, 10
000b24  15009014  dma_cfg zero, zero, r9, 10
000b28  9f340000  addli r9, zero, 3
000b2c  15009014  dma_cfg zero, zero, r9, 10
000b30  9f640000  addli r9, zero, 6
000b34  15005015  dma_cfg zero, zero, r21, 10
000b38  1500f014  dma_cfg zero, zero, r15, 10
000b3c  15009014  dma_cfg zero, zero, r9, 10
000b40  9f040004  addli r9, zero, 512
000b44  15004014  dma_cfg zero, zero, r4, 10
000b48  1f021000  addli r4, zero, 8
000b4c  15004014  dma_cfg zero, zero, r4, 10
000b50  1f121000  addli r4, zero, 9
000b54  15004014  dma_cfg zero, zero, r4, 10
000b58  1f221000  addli r4, zero, 10
000b5c  15004014  dma_cfg zero, zero, r4, 10
000b60  1f521000  addli r4, zero, 13
000b64  15003015  dma_cfg zero, zero, r19, 10
000b68  9f290000  addli r19, zero, 2
000b6c  15006014  dma_cfg zero, zero, r6, 10
000b70  2b030100  lui r6, 16
000b74  15004014  dma_cfg zero, zero, r4, 10
000b78  1f621000  addli r4, zero, 14
000b7c  15004014  dma_cfg zero, zero, r4, 10
000b80  1f422000  addli r4, zero, 20
000b84  15007014  dma_cfg zero, zero, r7, 10
000b88  9f032000  addli r7, zero, 16
000b8c  15008014  dma_cfg zero, zero, r8, 10
000b90  1f142000  addli r8, zero, 17
000b94  15008015  dma_cfg zero, zero, r24, 10
000b98  1f2c2000  addli r24, zero, 18
000b9c  15009015  dma_cfg zero, zero, r25, 10
000ba0  9f3c2000  addli r25, zero, 19
000ba4  1500c015  dma_cfg zero, zero, r28, 10
000ba8  1f4e2000  addli r28, zero, 20
000bac  15004014  dma_cfg zero, zero, r4, 10
000bb0  1f522000  addli r4, zero, 21
000bb4  15004014  dma_cfg zero, zero, r4, 10
000bb8  1f622000  addli r4, zero, 22
000bbc  15004014  dma_cfg zero, zero, r4, 10
000bc0  1f722000  addli r4, zero, 23
000bc4  15004014  dma_cfg zero, zero, r4, 10
000bc8  1f023000  addli r4, zero, 24
000bcc  15004014  dma_cfg zero, zero, r4, 10
000bd0  1f123000  addli r4, zero, 25
000bd4  15004014  dma_cfg zero, zero, r4, 10
000bd8  1f223000  addli r4, zero, 26
000bdc  15004014  dma_cfg zero, zero, r4, 10
000be0  1f323000  addli r4, zero, 27
000be4  15004014  dma_cfg zero, zero, r4, 10
000be8  1f423000  addli r4, zero, 28
000bec  15004014  dma_cfg zero, zero, r4, 10
000bf0  1f523000  addli r4, zero, 29
000bf4  15004014  dma_cfg zero, zero, r4, 10
000bf8  1f623000  addli r4, zero, 30
000bfc  15004014  dma_cfg zero, zero, r4, 10
000c00  1f723000  addli r4, zero, 31
000c04  15004014  dma_cfg zero, zero, r4, 10
000c08  2b020100  lui r4, 16
000c0c  15070700  dma_cfg r14, r14, zero, 0
000c10  15070002  dma_cfg r14, zero, zero, 1
000c14  15000004  dma_cfg zero, zero, zero, 2
000c18  15025006  dma_cfg r4, zero, r5, 3
000c1c  1b120204  ori r4, r4, 64
000c20  950b5009  dma_cfg r23, zero, r21, 4
000c24  9504e00a  dma_cfg r9, zero, r14, 5
000c28  15000010  dma_cfg zero, zero, zero, 8
000c2c  35000000  dma_run zero
000c30  1500e00a  dma_cfg zero, zero, r14, 5
000c34  15000010  dma_cfg zero, zero, zero, 8
000c38  1d900700  unlock r15
000c3c  1d800a00  lock zero, r21
000c40  15070700  dma_cfg r14, r14, zero, 0
000c44  15800104  dma_cfg zero, r3, zero, 2
000c48  15025106  dma_cfg r4, r2, r5, 3
000c4c  1f010002  addli r2, zero, 256
000c50  9f311000  addli r3, zero, 11
000c54  958b5209  dma_cfg r23, r5, r21, 4
000c58  9504e10a  dma_cfg r9, r2, r14, 5
000c5c  1f310000  addli r2, zero, 3
000c60  15000010  dma_cfg zero, zero, zero, 8
000c64  35000000  dma_run zero
000c68  1500e00a  dma_cfg zero, zero, r14, 5
000c6c  15000010  dma_cfg zero, zero, zero, 8
000c70  1d900a00  unlock r21
000c74  1d800700  lock zero, r15
000c78  15000014  dma_cfg zero, zero, zero, 10
000c7c  1500e014  dma_cfg zero, zero, r14, 10
000c80  15003015  dma_cfg zero, zero, r19, 10
000c84  15002014  dma_cfg zero, zero, r2, 10
000c88  1f610000  addli r2, zero, 6
000c8c  15005015  dma_cfg zero, zero, r21, 10
000c90  1500f014  dma_cfg zero, zero, r15, 10
000c94  15002014  dma_cfg zero, zero, r2, 10
000c98  1f710000  addli r2, zero, 7
000c9c  15002014  dma_cfg zero, zero, r2, 10
000ca0  1f011000  addli r2, zero, 8
000ca4  15002014  dma_cfg zero, zero, r2, 10
000ca8  1f111000  addli r2, zero, 9
000cac  15002014  dma_cfg zero, zero, r2, 10
000cb0  1f211000  addli r2, zero, 10
000cb4  15002014  dma_cfg zero, zero, r2, 10
000cb8  15003014  dma_cfg zero, zero, r3, 10
000cbc  9f411000  addli r3, zero, 12
000cc0  15003014  dma_cfg zero, zero, r3, 10
000cc4  9f511000  addli r3, zero, 13
000cc8  15003014  dma_cfg zero, zero, r3, 10
000ccc  9f611000  addli r3, zero, 14
000cd0  15003014  dma_cfg zero, zero, r3, 10
000cd4  9f711000  addli r3, zero, 15
000cd8  15003014  dma_cfg zero, zero, r3, 10
000cdc  9f512000  addli r3, zero, 21
000ce0  15007014  dma_cfg zero, zero, r7, 10
000ce4  15008014  dma_cfg zero, zero, r8, 10
000ce8  15008015  dma_cfg zero, zero, r24, 10
000cec  15009015  dma_cfg zero, zero, r25, 10
000cf0  1500c015  dma_cfg zero, zero, r28, 10
000cf4  1f0e0001  addli r28, zero, 128
000cf8  15003014  dma_cfg zero, zero, r3, 10
000cfc  9f612000  addli r3, zero, 22
000d00  15003014  dma_cfg zero, zero, r3, 10
000d04  9f712000  addli r3, zero, 23
000d08  15003014  dma_cfg zero, zero, r3, 10
000d0c  9f013000  addli r3, zero, 24
000d10  15003014  dma_cfg zero, zero, r3, 10
000d14  9f113000  addli r3, zero, 25
000d18  15003014  dma_cfg zero, zero, r3, 10
000d1c  9f213000  addli r3, zero, 26
000d20  15003014  dma_cfg zero, zero, r3, 10
000d24  9f313000  addli r3, zero, 27
000d28  15003014  dma_cfg zero, zero, r3, 10
000d2c  9f413000  addli r3, zero, 28
000d30  15003014  dma_cfg zero, zero, r3, 10
000d34  9f513000  addli r3, zero, 29
000d38  15003014  dma_cfg zero, zero, r3, 10
000d3c  9f613000  addli r3, zero, 30
000d40  15003014  dma_cfg zero, zero, r3, 10
000d44  9f713000  addli r3, zero, 31
000d48  15003014  dma_cfg zero, zero, r3, 10
000d4c  15070700  dma_cfg r14, r14, zero, 0
000d50  15070002  dma_cfg r14, zero, zero, 1
000d54  15000004  dma_cfg zero, zero, zero, 2
000d58  15035006  dma_cfg r6, zero, r5, 3
000d5c  9f620000  addli r5, zero, 6
000d60  950b5009  dma_cfg r23, zero, r21, 4
000d64  e30b5f00  loadli.w r23,  40(r30)
000d68  9504e00a  dma_cfg r9, zero, r14, 5
000d6c  9f340000  addli r9, zero, 3
000d70  15000010  dma_cfg zero, zero, zero, 8
000d74  35000000  dma_run zero
000d78  1500e00a  dma_cfg zero, zero, r14, 5
000d7c  15000010  dma_cfg zero, zero, zero, 8
000d80  1d900700  unlock r15
000d84  7d000100  xsignal r2, 0
000d88  6b5c0fff  load.d r[25:26], -16(r30)
000d8c  dbdffeff  j -2308
000d90  1f611000  addli r2, zero, 14
000d94  00200100  mfence { sm }
000d98  63035f00  loadli.w r6,  40(r30)
000d9c  80360002  core_id r13
000da0  9f340000  addli r9, zero, 3
000da4  1f170000  addli r14, zero, 1
000da8  9f570000  addli r15, zero, 5
000dac  9f290000  addli r19, zero, 2
000db0  9f4a0000  addli r21, zero, 4
000db4  9f620000  addli r5, zero, 6
000db8  7d000100  xsignal r2, 0
000dbc  1f012000  addli r2, zero, 16
000dc0  9f0b0300  addli r23, r6, 0
000dc4  2b030100  lui r6, 16
000dc8  7d000100  xsignal r2, 0
000dcc  1f112000  addli r2, zero, 17
000dd0  7d000100  xsignal r2, 0
000dd4  6b5c0fff  load.d r[25:26], -16(r30)
000dd8  eb558ffe  load.d r[12:13], -24(r30)
000ddc  eb510ffe  load.d r[4:5], -32(r30)
000de0  bbaa06fa  bneq r13, zero, -2392
000de4  27820100  addli.d r[5:6], r[4:5], 0
000de8  6b518fff  load.d r[3:4], -8(r30)
000dec  9f242000  addli r9, zero, 18
000df0  27030c00  addli.d r[7:8], r[25:26], 0
000df4  6b5c8f01  load.d r[25:26], 24(r30)
000df8  1f0e0001  addli r28, zero, 128
000dfc  1732e202  sll.d r[5:6], r[5:6], r14
000e00  17319102  sll.d r[3:4], r[3:4], r9
000e04  0b212c10  add.ul r[3:4], r[25:26], r[3:4]
000e08  270c0300  addli.d r[25:26], r[7:8], 0
000e0c  1f132000  addli r6, zero, 17
000e10  7d100300  xwait r6, 0
000e14  1d800700  lock zero, r15
000e18  2b030100  lui r6, 16
000e1c  0b214110  add.ul r[3:4], r[3:4], r[5:6]
000e20  9f028000  addli r5, zero, 64
000e24  15070700  dma_cfg r14, r14, zero, 0
000e28  15000702  dma_cfg zero, r14, zero, 1
000e2c  1b120324  ori r4, r6, 576
000e30  95010004  dma_cfg r3, zero, zero, 2
000e34  15015206  dma_cfg r2, r4, r5, 3
000e38  1f010001  addli r2, zero, 128
000e3c  9f010004  addli r3, zero, 512
000e40  1f020010  addli r4, zero, 2048
000e44  95025109  dma_cfg r5, r2, r21, 4
000e48  9f620000  addli r5, zero, 6
000e4c  1582210a  dma_cfg r4, r3, r2, 5
000e50  15000010  dma_cfg zero, zero, zero, 8
000e54  35000000  dma_run zero
000e58  1500e00a  dma_cfg zero, zero, r14, 5
000e5c  15000010  dma_cfg zero, zero, zero, 8
000e60  1d900700  unlock r15
000e64  7d800400  xsignal r9, 0
000e68  9f340000  addli r9, zero, 3
000e6c  dbc3feff  j -2532
000e70  7d900900  xwait r19, 0
000e74  7d900700  xwait r15, 0
000e78  1d000000  lock zero, zero
000e7c  1f018000  addli r2, zero, 64
000e80  81090000  ds_cfg r19, zero, 0
000e84  01010002  ds_cfg r2, zero, 1
000e88  0101001c  ds_cfg r2, zero, 14
000e8c  010e001a  ds_cfg r28, zero, 13
000e90  21102002  shuffle_batch zero, zero, r2, 1
000e94  1d100000  unlock zero
000e98  7d800400  xsignal r9, 0
000e9c  7d800a00  xsignal r21, 0
000ea0  5bbdfeff  j -2584
000ea4  7d000000  xsignal zero, 0
000ea8  bbe00600  bneq r13, zero, 56
000eac  9f200000  addli r1, zero, 2
000eb0  7d100000  xwait zero, 0
000eb4  7d100000  xwait zero, 0
000eb8  7d100000  xwait zero, 0
000ebc  7d100000  xwait zero, 0
000ec0  7d100000  xwait zero, 0
000ec4  7d100000  xwait zero, 0
000ec8  7d100000  xwait zero, 0
000ecc  7d100000  xwait zero, 0
000ed0  1d800000  lock zero, r1
000ed4  0d000020  ew_cfg zero, zero, zero, 16
000ed8  1d900000  unlock r1
000edc  7d400000  xsignal_mode_cfg zero
000ee0  9f8e4e00  addli sp, sp, 32
000ee4  00a00300  mfence { lm, sm, gm }
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
