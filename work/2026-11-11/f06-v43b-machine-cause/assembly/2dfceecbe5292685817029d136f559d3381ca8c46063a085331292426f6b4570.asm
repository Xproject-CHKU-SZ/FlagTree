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
00005c  9f497000  addli r19, zero, 60
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
0000b4  9f8edefc  addli sp, sp, -408
0000b8  1f8fbe02  addli r30, sp, 344
0000bc  9f100000  addli r1, zero, 1
0000c0  00380002  core_id r16
0000c4  e3486f00  loadli.w r17,  52(r30)
0000c8  7dc00000  xsignal_mode_cfg r1
0000cc  37600800  beq r16, zero, 24
0000d0  abf0ffff  lui r1, 1048575
0000d4  9b90f0ff  ori r1, r1, 4095
0000d8  80a10004  csr_set csr3, r1
0000dc  00d00100  sync_group
0000e0  db260000  j 308
0000e4  1f210000  addli r2, zero, 2
0000e8  fdd00000  uni_sram_cfg r1, r1
0000ec  abf1ffff  lui r3, 1048575
0000f0  1d000100  lock zero, r2
0000f4  8d000020  ew_cfg r1, zero, zero, 16
0000f8  9b90f1ff  ori r1, r3, 4095
0000fc  1d100100  unlock r2
000100  1f510000  addli r2, zero, 5
000104  80a10004  csr_set csr3, r1
000108  9f301000  addli r1, zero, 11
00010c  00d00100  sync_group
000110  7d800000  xsignal r1, 0
000114  7d800000  xsignal r1, 0
000118  9f300000  addli r1, zero, 3
00011c  7d000100  xsignal r2, 0
000120  7d000100  xsignal r2, 0
000124  7d000100  xsignal r2, 0
000128  7d000100  xsignal r2, 0
00012c  7d000100  xsignal r2, 0
000130  7d000100  xsignal r2, 0
000134  7d000100  xsignal r2, 0
000138  7d000100  xsignal r2, 0
00013c  7d000100  xsignal r2, 0
000140  7d000100  xsignal r2, 0
000144  7d000100  xsignal r2, 0
000148  7d000100  xsignal r2, 0
00014c  1f111000  addli r2, zero, 9
000150  7d800000  xsignal r1, 0
000154  7d800000  xsignal r1, 0
000158  7d800000  xsignal r1, 0
00015c  7d800000  xsignal r1, 0
000160  7d800000  xsignal r1, 0
000164  7d800000  xsignal r1, 0
000168  7d800000  xsignal r1, 0
00016c  7d800000  xsignal r1, 0
000170  7d800000  xsignal r1, 0
000174  7d800000  xsignal r1, 0
000178  7d800000  xsignal r1, 0
00017c  9f700000  addli r1, zero, 7
000180  7d000100  xsignal r2, 0
000184  7d000100  xsignal r2, 0
000188  7d000100  xsignal r2, 0
00018c  7d000100  xsignal r2, 0
000190  7d000100  xsignal r2, 0
000194  7d000100  xsignal r2, 0
000198  7d000100  xsignal r2, 0
00019c  7d000100  xsignal r2, 0
0001a0  7d000100  xsignal r2, 0
0001a4  7d000100  xsignal r2, 0
0001a8  7d000100  xsignal r2, 0
0001ac  7d000100  xsignal r2, 0
0001b0  7d000100  xsignal r2, 0
0001b4  7d000100  xsignal r2, 0
0001b8  7d000100  xsignal r2, 0
0001bc  7d000100  xsignal r2, 0
0001c0  7d000100  xsignal r2, 0
0001c4  7d000100  xsignal r2, 0
0001c8  7d000100  xsignal r2, 0
0001cc  7d000100  xsignal r2, 0
0001d0  7d000100  xsignal r2, 0
0001d4  7d000100  xsignal r2, 0
0001d8  7d000100  xsignal r2, 0
0001dc  7d000100  xsignal r2, 0
0001e0  7d000100  xsignal r2, 0
0001e4  7d000100  xsignal r2, 0
0001e8  7d800000  xsignal r1, 0
0001ec  7d800000  xsignal r1, 0
0001f0  7d800000  xsignal r1, 0
0001f4  7d800000  xsignal r1, 0
0001f8  7d800000  xsignal r1, 0
0001fc  7d800000  xsignal r1, 0
000200  7d800000  xsignal r1, 0
000204  7d800000  xsignal r1, 0
000208  7d800000  xsignal r1, 0
00020c  7d800000  xsignal r1, 0
000210  7d800000  xsignal r1, 0
000214  e3006f00  loadli.w r1,  48(r30)
000218  63416f00  loadli.w r2,  52(r30)
00021c  00d20002  load_param_i r4, 1
000220  e3017f00  loadli.w r3,  56(r30)
000224  670d0ffe  storeli.w zero, -48(r30)
000228  67460ffe  storeli.w zero, -156(r30)
00022c  8b101120  mul.s r1, r2, r1
000230  1f010200  addli r2, r4, 0
000234  0b913050  fmac.s r2, r1, r3
000238  8b913020  mul.s r3, r1, r3
00023c  1f71f1ff  addli r2, r2, -1
000240  0b114130  div.s r2, r2, r4
000244  00520002  load_param_i r4, 0
000248  8b104120  mul.s r1, r2, r4
00024c  0b114150  fmac.s r2, r2, r4
000250  8b113140  min.s r3, r2, r3
000254  cb931102  ble.s r3, r1, 1252
000258  63043f00  loadli.w r8,  24(r30)
00025c  e3443f00  loadli.w r9,  28(r30)
000260  9f068001  addli r13, zero, 192
000264  1f0ee001  addli r28, zero, 240
000268  63015f00  loadli.w r2,  40(r30)
00026c  63425f00  loadli.w r4,  44(r30)
000270  63434f00  loadli.w r6,  36(r30)
000274  63064f00  loadli.w r12,  32(r30)
000278  339a0028  sext_int2long r[21:22], r1
00027c  9f0c8000  addli r25, zero, 64
000280  9f070000  addli r15, zero, 0
000284  9f020000  addli r5, zero, 0
000288  9f1d0000  addli r27, zero, 1
00028c  1f2d0000  addli r26, zero, 2
000290  2bfc0000  lui r24, 15
000294  1f75d401  addli r10, r8, 239
000298  9ff57401  addli r11, r9, 191
00029c  9f707600  addli r1, r12, 63
0002a0  b3130428  sext_int2long r[8:9], r8
0002a4  8b96d530  div.s r13, r11, r13
0002a8  0b17c531  div.s r14, r10, r28
0002ac  33950128  sext_int2long r[11:12], r3
0002b0  9b312300  slli r3, r6, 2
0002b4  8b9b9031  div.s r23, r1, r25
0002b8  e74c1ffc  storeli.w r1, -308(r30)
0002bc  9f600000  addli r1, zero, 6
0002c0  73387ff2  store.d r[8:9], -208(r30)
0002c4  e7423ffe  storeli.w r3, -212(r30)
0002c8  7330afee  store.d r[11:12], -288(r30)
0002cc  6305afff  loadli.w r10,  -48(r30)
0002d0  e345cffe  loadli.w r11,  -156(r30)
0002d4  33990628  sext_int2long r[19:20], r13
0002d8  b3160728  sext_int2long r[14:15], r14
0002dc  67447fff  storeli.w r23, -188(r30)
0002e0  733c2fed  store.d r[19:20], -296(r30)
0002e4  33190128  sext_int2long r[19:20], r2
0002e8  7338dfec  store.d r[14:15], -304(r30)
0002ec  b3960428  sext_int2long r[14:15], r9
0002f0  1b312100  slli r2, r2, 2
0002f4  9f440000  addli r9, zero, 4
0002f8  7334dff0  store.d r[14:15], -248(r30)
0002fc  b3160328  sext_int2long r[14:15], r6
000300  67402ffe  storeli.w r2, -252(r30)
000304  1b312200  slli r2, r4, 2
000308  1f830700  addli r6, r15, 0
00030c  73302fed  store.d r[19:20], -320(r30)
000310  674b2ffc  storeli.w r2, -332(r30)
000314  0bb17620  mul.sl r[3:4], r[14:15], r[8:9]
000318  7334dff4  store.d r[14:15], -184(r30)
00031c  9f331000  addli r7, zero, 11
000320  1f070000  addli r14, zero, 0
000324  73382ff4  store.d r[3:4], -176(r30)
000328  17311902  sll.d r[3:4], r[19:20], r1
00032c  733c2ff4  store.d r[3:4], -168(r30)
000330  33110228  sext_int2long r[3:4], r4
000334  73342fea  store.d r[3:4], -344(r30)
000338  db050000  j 44
00033c  1f211000  addli r2, zero, 10
000340  e3486f00  loadli.w r17,  52(r30)
000344  7d000100  xsignal r2, 0
000348  63433ffe  loadli.w r6,  -228(r30)
00034c  6b5a0ff1  load.d r[21:22], -240(r30)
000350  6b510fee  load.d r[3:4], -288(r30)
000354  271a0a00  addli.d r[21:22], r[21:22], 1
000358  1f130300  addli r6, r6, 1
00035c  13312a04  setlt.sl r2, r[21:22], r[3:4]
000360  376f0100  beq r2, zero, 984
000364  3b209800  bneq r16, r9, 8
000368  7d900300  xwait r7, 0
00036c  63017f00  loadli.w r2,  56(r30)
000370  eb578fed  load.d r[16:17], -296(r30)
000374  73384ff1  store.d r[21:22], -240(r30)
000378  338b0d28  zext_int2long r[23:24], r27
00037c  1f098001  addli r18, zero, 192
000380  e7416ffe  storeli.w r6, -228(r30)
000384  0b13a339  mod.s r6, r6, r26
000388  33090928  zext_int2long r[19:20], r18
00038c  0b122a30  div.s r4, r20, r2
000390  73342fef  store.d r[19:20], -280(r30)
000394  0b111231  div.s r2, r4, r17
000398  33110128  sext_int2long r[3:4], r2
00039c  0f16f160  div.sl r[13:14], r[3:4], r[16:17]
0003a0  0f1af170  mod.sl r[21:22], r[3:4], r[16:17]
0003a4  eb570fed  load.d r[16:17], -304(r30)
0003a8  8bb7c718  sub.sl r[16:17], r[16:17], r[13:14]
0003ac  8bb76741  min.sl r[16:17], r[16:17], r[23:24]
0003b0  0f11f170  mod.sl r[3:4], r[3:4], r[16:17]
0003b4  8f17fa60  div.sl r[16:17], r[21:22], r[16:17]
0003b8  0b21c110  add.ul r[3:4], r[3:4], r[13:14]
0003bc  33060e28  zext_int2long r[13:14], r28
0003c0  8bb72721  mul.sl r[16:17], r[16:17], r[19:20]
0003c4  1f090006  addli r18, zero, 768
0003c8  733ccfee  store.d r[13:14], -264(r30)
0003cc  0b36c120  mul.sl r[13:14], r[3:4], r[13:14]
0003d0  2bd10200  lui r2, 45
0003d4  7330fff2  store.d r[16:17], -224(r30)
0003d8  8b172320  mul.s r15, r6, r2
0003dc  63419ffd  loadli.w r2,  -308(r30)
0003e0  7338cfee  store.d r[13:14], -272(r30)
0003e4  bf799101  blt.s r2, r25, 636
0003e8  0b111239  mod.s r2, r4, r17
0003ec  e34b8ffe  loadli.w r23,  -188(r30)
0003f0  1f030000  addli r6, zero, 0
0003f4  33110128  sext_int2long r[3:4], r2
0003f8  17381102  sll.d r[17:18], r[3:4], r1
0003fc  6b518ff4  load.d r[3:4], -184(r30)
000400  733c0ff3  store.d r[17:18], -200(r30)
000404  0b362620  mul.sl r[13:14], r[13:14], r[3:4]
000408  6b510fec  load.d r[3:4], -320(r30)
00040c  0b3a2820  mul.sl r[21:22], r[17:18], r[3:4]
000410  00380002  core_id r16
000414  5b110000  j 136
000418  eb538ff4  load.d r[8:9], -184(r30)
00041c  1f320000  addli r4, zero, 3
000420  173bab03  sll.d r[23:24], r[23:24], r26
000424  7d100200  xwait r4, 0
000428  1d800400  lock zero, r9
00042c  0f117160  div.sl r[3:4], r[3:4], r[8:9]
000430  eb530f00  load.d r[8:9], 0(r30)
000434  15000000  dma_cfg zero, zero, zero, 0
000438  0bab6311  add.ul r[23:24], r[8:9], r[23:24]
00043c  eb530ff3  load.d r[8:9], -208(r30)
000440  15800b04  dma_cfg zero, r23, zero, 2
000444  2709e101  addli.d r[19:20], r[3:4], 240
000448  0b397940  min.sl r[19:20], r[19:20], r[8:9]
00044c  9f030002  addli r7, zero, 256
000450  95087b06  dma_cfg r17, r22, r7, 3
000454  0b312918  sub.sl r[3:4], r[19:20], r[3:4]
000458  1f090006  addli r18, zero, 768
00045c  63425ffe  loadli.w r4,  -212(r30)
000460  95032208  dma_cfg r7, r4, r2, 4
000464  35000000  dma_run zero
000468  1d900400  unlock r9
00046c  7d000d00  xsignal r26, 0
000470  e34b8ffe  loadli.w r23,  -188(r30)
000474  9f331000  addli r7, zero, 11
000478  6b518ff5  load.d r[3:4], -168(r30)
00047c  9f920200  addli r5, r5, 1
000480  1f170700  addli r14, r14, 1
000484  9f950500  addli r11, r11, 1
000488  1f150500  addli r10, r10, 1
00048c  1f130300  addli r6, r6, 1
000490  27068600  addli.d r[13:14], r[13:14], 64
000494  0b2a2a10  add.ul r[21:22], r[21:22], r[3:4]
000498  37377301  beq r6, r23, 460
00049c  1f411000  addli r2, zero, 12
0004a0  8b117738  mod.s r3, r14, r7
0004a4  aba80500  lui r17, 90
0004a8  0b912238  mod.s r2, r5, r2
0004ac  8b988151  fmac.s r17, r3, r24
0004b0  0b128121  mul.s r4, r2, r24
0004b4  b730a801  beq r16, r26, 44
0004b8  bb01b801  bneq r16, r27, 96
0004bc  6b518ff3  load.d r[3:4], -200(r30)
0004c0  0b2b2610  add.ul r[23:24], r[13:14], r[3:4]
0004c4  6b510ff5  load.d r[3:4], -176(r30)
0004c8  13322b04  setlt.sl r4, r[23:24], r[3:4]
0004cc  27010b00  addli.d r[3:4], r[23:24], 0
0004d0  3b2d02fe  bneq r4, zero, -184
0004d4  6b510ff5  load.d r[3:4], -176(r30)
0004d8  0f112b70  mod.sl r[3:4], r[23:24], r[3:4]
0004dc  dbe7ffff  j -196
0004e0  1f510000  addli r2, zero, 5
0004e4  7d100d00  xwait r26, 0
0004e8  7d100100  xwait r2, 0
0004ec  1d000000  lock zero, zero
0004f0  1f310000  addli r2, zero, 3
0004f4  010d0000  ds_cfg r26, zero, 0
0004f8  810c0002  ds_cfg r25, zero, 1
0004fc  810c001c  ds_cfg r25, zero, 14
000500  010e001a  ds_cfg r28, zero, 13
000504  21929803  shuffle_batch r4, r17, r25, 1
000508  1d100000  unlock zero
00050c  7d000100  xsignal r2, 0
000510  7d800400  xsignal r9, 0
000514  dbecffff  j -156
000518  1f213000  addli r2, zero, 26
00051c  8b117538  mod.s r3, r10, r7
000520  2bfb0f00  lui r22, 255
000524  2bc40000  lui r8, 12
000528  0b912538  mod.s r2, r11, r2
00052c  0b9b8150  fmac.s r22, r3, r8
000530  8b188120  mul.s r17, r2, r8
000534  1f710000  addli r2, zero, 7
000538  b7412800  beq r16, r2, 112
00053c  bb221800  bneq r16, r1, 168
000540  6b510ff2  load.d r[3:4], -224(r30)
000544  eb538ff0  load.d r[8:9], -248(r30)
000548  1f720000  addli r4, zero, 7
00054c  7d100200  xwait r4, 0
000550  1d800400  lock zero, r9
000554  0b212a10  add.ul r[3:4], r[21:22], r[3:4]
000558  15000000  dma_cfg zero, zero, zero, 0
00055c  0f187170  mod.sl r[17:18], r[3:4], r[8:9]
000560  1731a103  sll.d r[3:4], r[3:4], r26
000564  27098801  addli.d r[19:20], r[17:18], 192
000568  0b397940  min.sl r[19:20], r[19:20], r[8:9]
00056c  9f331000  addli r7, zero, 11
000570  0b380919  sub.sl r[17:18], r[19:20], r[17:18]
000574  6b598f00  load.d r[19:20], 8(r30)
000578  1b322800  slli r4, r16, 2
00057c  00380002  core_id r16
000580  0b212910  add.ul r[3:4], r[19:20], r[3:4]
000584  1f090006  addli r18, zero, 768
000588  15800104  dma_cfg zero, r3, zero, 2
00058c  150b4106  dma_cfg r22, r2, r4, 3
000590  63410ffe  loadli.w r2,  -252(r30)
000594  15099109  dma_cfg r18, r2, r25, 4
000598  35000000  dma_run zero
00059c  1d900400  unlock r9
0005a0  7d800000  xsignal r1, 0
0005a4  dbdaffff  j -300
0005a8  1f111000  addli r2, zero, 9
0005ac  7d900000  xwait r1, 0
0005b0  7d100100  xwait r2, 0
0005b4  1d000000  lock zero, zero
0005b8  1f018001  addli r2, zero, 192
0005bc  010d0000  ds_cfg r26, zero, 0
0005c0  01010002  ds_cfg r2, zero, 1
0005c4  810c001c  ds_cfg r25, zero, 14
0005c8  0101001a  ds_cfg r2, zero, 13
0005cc  1f710000  addli r2, zero, 7
0005d0  c1089b05  shuffle_coa r17, r22, r25, 2
0005d4  1d100000  unlock zero
0005d8  7d000100  xsignal r2, 0
0005dc  1f011000  addli r2, zero, 8
0005e0  5b0f0000  j 120
0005e4  3b5a98fe  bneq r16, r9, -364
0005e8  1f011000  addli r2, zero, 8
0005ec  1f0b0000  addli r22, zero, 0
0005f0  ab410000  lui r3, 4
0005f4  7d900400  xwait r9, 0
0005f8  7d100100  xwait r2, 0
0005fc  b7300300  beq r6, zero, 44
000600  1d800d00  lock zero, r27
000604  0b916711  add.s r2, r15, r22
000608  1f0b0b02  addli r22, r22, 256
00060c  898ccc01  mm_cfg r25, r25, r28, 0
000610  8984b005  mm_cfg r9, r1, r27, 2
000614  29111211  mm_acc r2, r4, r17, 8
000618  8b983810  add.s r17, r17, r3
00061c  1d900d00  unlock r27
000620  bb0f2bff  bneq r22, r18, -32
000624  5b050000  j 40
000628  1d800d00  lock zero, r27
00062c  0b916711  add.s r2, r15, r22
000630  1f0b0b02  addli r22, r22, 256
000634  898ccc01  mm_cfg r25, r25, r28, 0
000638  8984b005  mm_cfg r9, r1, r27, 2
00063c  29011211  mm r2, r4, r17, 8
000640  8b983810  add.s r17, r17, r3
000644  1d900d00  unlock r27
000648  bb0f2bff  bneq r22, r18, -32
00064c  1f510000  addli r2, zero, 5
000650  7d000100  xsignal r2, 0
000654  1f111000  addli r2, zero, 9
000658  7d000100  xsignal r2, 0
00065c  dbc3ffff  j -484
000660  00380002  core_id r16
000664  376398fe  beq r16, r9, -808
000668  e3486f00  loadli.w r17,  52(r30)
00066c  63433ffe  loadli.w r6,  -228(r30)
000670  6b5a0ff1  load.d r[21:22], -240(r30)
000674  1f0b0006  addli r22, zero, 768
000678  3b6308fe  bneq r16, zero, -808
00067c  6b560ff2  load.d r[13:14], -224(r30)
000680  eb538ff0  load.d r[8:9], -248(r30)
000684  1f221000  addli r4, zero, 10
000688  27018601  addli.d r[3:4], r[13:14], 192
00068c  0b317140  min.sl r[3:4], r[3:4], r[8:9]
000690  8b33c148  max.sl r[8:9], r[3:4], r[13:14]
000694  6b510fef  load.d r[3:4], -272(r30)
000698  0bb9c318  sub.sl r[19:20], r[8:9], r[13:14]
00069c  eb530ff3  load.d r[8:9], -208(r30)
0006a0  2708e101  addli.d r[17:18], r[3:4], 240
0006a4  8b337840  min.sl r[8:9], r[17:18], r[8:9]
0006a8  6b588fee  load.d r[17:18], -280(r30)
0006ac  733c7fea  store.d r[8:9], -328(r30)
0006b0  9f331000  addli r7, zero, 11
0006b4  0b380941  min.sl r[17:18], r[19:20], r[17:18]
0006b8  6b598feb  load.d r[19:20], -328(r30)
0006bc  733c0ff3  store.d r[17:18], -200(r30)
0006c0  6b588fea  load.d r[17:18], -344(r30)
0006c4  0b392948  max.sl r[19:20], r[19:20], r[3:4]
0006c8  0b380121  mul.sl r[17:18], r[3:4], r[17:18]
0006cc  0b312918  sub.sl r[3:4], r[19:20], r[3:4]
0006d0  6b590f01  load.d r[19:20], 16(r30)
0006d4  1738a803  sll.d r[17:18], r[17:18], r26
0006d8  73382fee  store.d r[3:4], -272(r30)
0006dc  6b518fef  load.d r[3:4], -264(r30)
0006e0  0b280911  add.ul r[17:18], r[19:20], r[17:18]
0006e4  1739a603  sll.d r[19:20], r[13:14], r26
0006e8  6b560fef  load.d r[13:14], -272(r30)
0006ec  7d100200  xwait r4, 0
0006f0  1f520000  addli r4, zero, 5
0006f4  1d000200  lock zero, r4
0006f8  0b282811  add.ul r[17:18], r[17:18], r[19:20]
0006fc  15000000  dma_cfg zero, zero, zero, 0
000700  0b362640  min.sl r[13:14], r[13:14], r[3:4]
000704  15800d02  dma_cfg zero, r27, zero, 1
000708  6b518ff3  load.d r[3:4], -200(r30)
00070c  95080004  dma_cfg r17, zero, zero, 2
000710  1b312100  slli r2, r2, 2
000714  15882706  dma_cfg r16, r15, r2, 3
000718  e3486f00  loadli.w r17,  52(r30)
00071c  00380002  core_id r16
000720  63416ffd  loadli.w r2,  -332(r30)
000724  1501cb08  dma_cfg r2, r22, r12, 4
000728  35000000  dma_run zero
00072c  1d100200  unlock r4
000730  7d800300  xsignal r7, 0
000734  db83ffff  j -996
000738  7d000000  xsignal zero, 0
00073c  bb600800  bneq r16, zero, 56
000740  9f200000  addli r1, zero, 2
000744  7d100000  xwait zero, 0
000748  7d100000  xwait zero, 0
00074c  7d100000  xwait zero, 0
000750  7d100000  xwait zero, 0
000754  7d100000  xwait zero, 0
000758  7d100000  xwait zero, 0
00075c  7d100000  xwait zero, 0
000760  7d100000  xwait zero, 0
000764  1d800000  lock zero, r1
000768  0d000020  ew_cfg zero, zero, zero, 16
00076c  1d900000  unlock r1
000770  7d400000  xsignal_mode_cfg zero
000774  9f8ebe02  addli sp, sp, 344
000778  00a00300  mfence { lm, sm, gm }
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
