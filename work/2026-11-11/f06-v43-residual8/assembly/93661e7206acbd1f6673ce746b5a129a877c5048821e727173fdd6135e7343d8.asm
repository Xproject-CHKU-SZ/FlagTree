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
0000b4  9f8e6efc  addli sp, sp, -464
0000b8  1f8f2e03  addli r30, sp, 400
0000bc  9f100000  addli r1, zero, 1
0000c0  80390002  core_id r19
0000c4  e34d6f00  loadli.w r27,  52(r30)
0000c8  7dc00000  xsignal_mode_cfg r1
0000cc  37e00900  beq r19, zero, 24
0000d0  abf0ffff  lui r1, 1048575
0000d4  9b90f0ff  ori r1, r1, 4095
0000d8  80a10004  csr_set csr3, r1
0000dc  00d00100  sync_group
0000e0  db3a0000  j 468
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
00014c  7d000100  xsignal r2, 0
000150  7d000100  xsignal r2, 0
000154  7d000100  xsignal r2, 0
000158  7d000100  xsignal r2, 0
00015c  7d000100  xsignal r2, 0
000160  7d000100  xsignal r2, 0
000164  7d000100  xsignal r2, 0
000168  7d000100  xsignal r2, 0
00016c  7d000100  xsignal r2, 0
000170  7d000100  xsignal r2, 0
000174  7d000100  xsignal r2, 0
000178  7d000100  xsignal r2, 0
00017c  7d000100  xsignal r2, 0
000180  1f111000  addli r2, zero, 9
000184  7d800000  xsignal r1, 0
000188  7d800000  xsignal r1, 0
00018c  7d800000  xsignal r1, 0
000190  7d800000  xsignal r1, 0
000194  7d800000  xsignal r1, 0
000198  7d800000  xsignal r1, 0
00019c  7d800000  xsignal r1, 0
0001a0  7d800000  xsignal r1, 0
0001a4  7d800000  xsignal r1, 0
0001a8  7d800000  xsignal r1, 0
0001ac  7d800000  xsignal r1, 0
0001b0  7d800000  xsignal r1, 0
0001b4  7d800000  xsignal r1, 0
0001b8  7d800000  xsignal r1, 0
0001bc  7d800000  xsignal r1, 0
0001c0  7d800000  xsignal r1, 0
0001c4  7d800000  xsignal r1, 0
0001c8  9f700000  addli r1, zero, 7
0001cc  7d000100  xsignal r2, 0
0001d0  7d000100  xsignal r2, 0
0001d4  7d000100  xsignal r2, 0
0001d8  7d000100  xsignal r2, 0
0001dc  7d000100  xsignal r2, 0
0001e0  7d000100  xsignal r2, 0
0001e4  7d000100  xsignal r2, 0
0001e8  7d000100  xsignal r2, 0
0001ec  7d000100  xsignal r2, 0
0001f0  7d000100  xsignal r2, 0
0001f4  7d000100  xsignal r2, 0
0001f8  7d000100  xsignal r2, 0
0001fc  7d000100  xsignal r2, 0
000200  7d000100  xsignal r2, 0
000204  7d000100  xsignal r2, 0
000208  7d000100  xsignal r2, 0
00020c  7d000100  xsignal r2, 0
000210  7d000100  xsignal r2, 0
000214  7d000100  xsignal r2, 0
000218  7d000100  xsignal r2, 0
00021c  7d000100  xsignal r2, 0
000220  7d000100  xsignal r2, 0
000224  7d000100  xsignal r2, 0
000228  7d000100  xsignal r2, 0
00022c  7d000100  xsignal r2, 0
000230  7d000100  xsignal r2, 0
000234  7d000100  xsignal r2, 0
000238  7d000100  xsignal r2, 0
00023c  7d000100  xsignal r2, 0
000240  7d000100  xsignal r2, 0
000244  7d000100  xsignal r2, 0
000248  7d000100  xsignal r2, 0
00024c  7d000100  xsignal r2, 0
000250  7d000100  xsignal r2, 0
000254  7d000100  xsignal r2, 0
000258  7d000100  xsignal r2, 0
00025c  7d000100  xsignal r2, 0
000260  7d000100  xsignal r2, 0
000264  7d000100  xsignal r2, 0
000268  7d000100  xsignal r2, 0
00026c  7d800000  xsignal r1, 0
000270  7d800000  xsignal r1, 0
000274  7d800000  xsignal r1, 0
000278  7d800000  xsignal r1, 0
00027c  7d800000  xsignal r1, 0
000280  7d800000  xsignal r1, 0
000284  7d800000  xsignal r1, 0
000288  7d800000  xsignal r1, 0
00028c  7d800000  xsignal r1, 0
000290  7d800000  xsignal r1, 0
000294  7d800000  xsignal r1, 0
000298  7d800000  xsignal r1, 0
00029c  7d800000  xsignal r1, 0
0002a0  7d800000  xsignal r1, 0
0002a4  7d800000  xsignal r1, 0
0002a8  7d800000  xsignal r1, 0
0002ac  7d800000  xsignal r1, 0
0002b0  7d800000  xsignal r1, 0
0002b4  e3006f00  loadli.w r1,  48(r30)
0002b8  63416f00  loadli.w r2,  52(r30)
0002bc  00d20002  load_param_i r4, 1
0002c0  e3017f00  loadli.w r3,  56(r30)
0002c4  674b0ffe  storeli.w zero, -76(r30)
0002c8  67010ffe  storeli.w zero, -240(r30)
0002cc  8b101120  mul.s r1, r2, r1
0002d0  1f010200  addli r2, r4, 0
0002d4  0b913050  fmac.s r2, r1, r3
0002d8  8b913020  mul.s r3, r1, r3
0002dc  1f71f1ff  addli r2, r2, -1
0002e0  0b114130  div.s r2, r2, r4
0002e4  00520002  load_param_i r4, 0
0002e8  8b104120  mul.s r1, r2, r4
0002ec  0b114150  fmac.s r2, r2, r4
0002f0  0b123140  min.s r4, r2, r3
0002f4  4b041202  ble.s r4, r1, 1280
0002f8  63443f00  loadli.w r8,  28(r30)
0002fc  b3140228  sext_int2long r[10:11], r4
000300  e3053f00  loadli.w r11,  24(r30)
000304  9f171000  addli r15, zero, 9
000308  e3034f00  loadli.w r7,  32(r30)
00030c  63434f00  loadli.w r6,  36(r30)
000310  b39a0028  sext_int2long r[22:23], r1
000314  63015f00  loadli.w r2,  40(r30)
000318  1f070000  addli r14, zero, 0
00031c  e3415f00  loadli.w r3,  44(r30)
000320  9f020000  addli r5, zero, 0
000324  9f081000  addli r17, zero, 8
000328  1f290000  addli r18, zero, 2
00032c  9f4c0000  addli r25, zero, 4
000330  1f1d3000  addli r26, zero, 25
000334  73309fea  store.d r[10:11], -352(r30)
000338  9f040002  addli r9, zero, 256
00033c  63456fff  loadli.w r10,  -76(r30)
000340  1f72f401  addli r4, r8, 255
000344  1ff6d501  addli r12, r11, 239
000348  9ff07300  addli r1, r7, 63
00034c  b39b0528  sext_int2long r[24:25], r11
000350  9f050700  addli r11, r14, 0
000354  0b129230  div.s r4, r4, r9
000358  9f04e001  addli r9, zero, 240
00035c  e7481ffc  storeli.w r1, -372(r30)
000360  73347fef  store.d r[24:25], -280(r30)
000364  8b169630  div.s r13, r12, r9
000368  63062ffe  loadli.w r12,  -240(r30)
00036c  0b12f220  mul.s r4, r4, r15
000370  b3170228  sext_int2long r[16:17], r4
000374  733cffe8  store.d r[16:17], -360(r30)
000378  b3970628  sext_int2long r[16:17], r13
00037c  b3160428  sext_int2long r[14:15], r8
000380  b3130128  sext_int2long r[8:9], r2
000384  7338ffe8  store.d r[16:17], -368(r30)
000388  9f078000  addli r15, zero, 64
00038c  7330dfec  store.d r[14:15], -320(r30)
000390  b3160328  sext_int2long r[14:15], r6
000394  1f180000  addli r16, zero, 1
000398  73307fe8  store.d r[8:9], -384(r30)
00039c  0b9af030  div.s r20, r1, r15
0003a0  9b301300  slli r1, r6, 1
0003a4  733cdfee  store.d r[14:15], -264(r30)
0003a8  8bb67621  mul.sl r[14:15], r[14:15], r[24:25]
0003ac  674e1ffc  storeli.w r1, -284(r30)
0003b0  9b301100  slli r1, r2, 1
0003b4  2b710f00  lui r2, 247
0003b8  7330dff0  store.d r[14:15], -256(r30)
0003bc  e70b1ffc  storeli.w r1, -328(r30)
0003c0  ab700000  lui r1, 7
0003c4  1b9e0080  ori r28, r1, 2048
0003c8  9b100180  ori r1, r2, 2048
0003cc  1bb11100  slli r2, r3, 1
0003d0  e74b4ffd  storeli.w r20, -324(r30)
0003d4  670e1ffc  storeli.w r1, -288(r30)
0003d8  9f600000  addli r1, zero, 6
0003dc  e7472ffc  storeli.w r2, -388(r30)
0003e0  97b01302  sll.d r[2:3], r[8:9], r1
0003e4  73341ff0  store.d r[2:3], -248(r30)
0003e8  b3900128  sext_int2long r[2:3], r3
0003ec  9f010000  addli r3, zero, 0
0003f0  73381fe6  store.d r[2:3], -400(r30)
0003f4  db050000  j 44
0003f8  9f201000  addli r1, zero, 10
0003fc  e34d6f00  loadli.w r27,  52(r30)
000400  7d800000  xsignal r1, 0
000404  e345affd  loadli.w r11,  -300(r30)
000408  eb5a8fec  load.d r[22:23], -312(r30)
00040c  eb500fea  load.d r[2:3], -352(r30)
000410  a79a0a00  addli.d r[22:23], r[22:23], 1
000414  9f950500  addli r11, r11, 1
000418  93b01a04  setlt.sl r1, r[22:23], r[2:3]
00041c  37ef0000  beq r1, zero, 984
000420  3bb09901  bneq r19, r25, 12
000424  9f301000  addli r1, zero, 11
000428  7d900000  xwait r1, 0
00042c  e3007f00  loadli.w r1,  56(r30)
000430  6b538fe9  load.d r[7:8], -360(r30)
000434  73345fed  store.d r[22:23], -312(r30)
000438  0b942539  mod.s r8, r11, r18
00043c  674dbffc  storeli.w r11, -300(r30)
000440  0b921a30  div.s r4, r21, r1
000444  8b10b231  div.s r1, r4, r27
000448  b3900028  sext_int2long r[2:3], r1
00044c  8f966060  div.sl r[14:15], r[2:3], r[7:8]
000450  8f9a6070  mod.sl r[22:23], r[2:3], r[7:8]
000454  1f131000  addli r6, zero, 9
000458  b30b0328  zext_int2long r[24:25], r6
00045c  6b530fe9  load.d r[7:8], -368(r30)
000460  8bb67621  mul.sl r[14:15], r[14:15], r[24:25]
000464  0b33d318  sub.sl r[7:8], r[7:8], r[14:15]
000468  0b337341  min.sl r[7:8], r[7:8], r[24:25]
00046c  8f906070  mod.sl r[2:3], r[2:3], r[7:8]
000470  0f936a60  div.sl r[7:8], r[22:23], r[7:8]
000474  8ba01610  add.ul r[2:3], r[14:15], r[2:3]
000478  b3860428  zext_int2long r[14:15], r9
00047c  17331303  sll.d r[7:8], r[7:8], r17
000480  7338dfea  store.d r[14:15], -336(r30)
000484  8bb6d020  mul.sl r[14:15], r[2:3], r[14:15]
000488  abc00300  lui r1, 60
00048c  733c6fec  store.d r[7:8], -296(r30)
000490  0b131420  mul.s r6, r8, r1
000494  e3401ffd  loadli.w r1,  -372(r30)
000498  7334dfea  store.d r[14:15], -344(r30)
00049c  3faaf000  blt.s r1, r15, 648
0004a0  8b10b239  mod.s r1, r4, r27
0004a4  9f630000  addli r7, zero, 6
0004a8  9f0d0000  addli r27, zero, 0
0004ac  b3900028  sext_int2long r[2:3], r1
0004b0  97ba7002  sll.d r[22:23], r[2:3], r7
0004b4  eb508fef  load.d r[2:3], -264(r30)
0004b8  73385fef  store.d r[22:23], -272(r30)
0004bc  8bb61620  mul.sl r[14:15], r[14:15], r[2:3]
0004c0  eb500fe8  load.d r[2:3], -384(r30)
0004c4  8bba1a20  mul.sl r[22:23], r[22:23], r[2:3]
0004c8  5b110000  j 136
0004cc  eb538fef  load.d r[8:9], -264(r30)
0004d0  1f320000  addli r4, zero, 3
0004d4  7d100200  xwait r4, 0
0004d8  1d800c00  lock zero, r25
0004dc  eb5c0f00  load.d r[26:27], 0(r30)
0004e0  8f907060  div.sl r[2:3], r[2:3], r[8:9]
0004e4  97b30b03  sll.d r[8:9], r[24:25], r16
0004e8  15080800  dma_cfg r16, r16, zero, 0
0004ec  8ba37c10  add.ul r[8:9], r[26:27], r[8:9]
0004f0  eb5c8fee  load.d r[26:27], -280(r30)
0004f4  15000404  dma_cfg zero, r8, zero, 2
0004f8  a78be001  addli.d r[24:25], r[2:3], 240
0004fc  8bbb9b41  min.sl r[24:25], r[24:25], r[26:27]
000500  9f4c0000  addli r25, zero, 4
000504  1f1d3000  addli r26, zero, 25
000508  8bb01b18  sub.sl r[2:3], r[24:25], r[2:3]
00050c  9f0b0001  addli r23, zero, 128
000510  95857307  dma_cfg r11, r7, r23, 3
000514  9f630000  addli r7, zero, 6
000518  6342cffd  loadli.w r4,  -284(r30)
00051c  950b1208  dma_cfg r23, r4, r1, 4
000520  35000000  dma_run zero
000524  1d900c00  unlock r25
000528  7d000900  xsignal r18, 0
00052c  eb508ff0  load.d r[2:3], -248(r30)
000530  9f920200  addli r5, r5, 1
000534  9f910100  addli r3, r3, 1
000538  1f160600  addli r12, r12, 1
00053c  1f150500  addli r10, r10, 1
000540  9f9d0d00  addli r27, r27, 1
000544  a7868600  addli.d r[14:15], r[14:15], 64
000548  8baa1a10  add.ul r[22:23], r[22:23], r[2:3]
00054c  37e74d01  beq r27, r20, 472
000550  1f112000  addli r2, zero, 17
000554  8b90a239  mod.s r1, r5, r26
000558  ab850700  lui r11, 120
00055c  0b912138  mod.s r2, r3, r2
000560  0b92c021  mul.s r4, r1, r28
000564  8b15c151  fmac.s r11, r2, r28
000568  b7b02901  beq r19, r18, 44
00056c  bb810901  bneq r19, r16, 96
000570  eb500fef  load.d r[2:3], -272(r30)
000574  8bab1610  add.ul r[24:25], r[14:15], r[2:3]
000578  eb500ff0  load.d r[2:3], -256(r30)
00057c  13b21b04  setlt.sl r4, r[24:25], r[2:3]
000580  a7800b00  addli.d r[2:3], r[24:25], 0
000584  3b2d02fe  bneq r4, zero, -184
000588  eb500ff0  load.d r[2:3], -256(r30)
00058c  8f901b70  mod.sl r[2:3], r[24:25], r[2:3]
000590  dbe7ffff  j -196
000594  9f500000  addli r1, zero, 5
000598  7d100900  xwait r18, 0
00059c  7d900000  xwait r1, 0
0005a0  9f300000  addli r1, zero, 3
0005a4  1d000000  lock zero, zero
0005a8  81000000  ds_cfg r1, zero, 0
0005ac  81070002  ds_cfg r15, zero, 1
0005b0  8107001c  ds_cfg r15, zero, 14
0005b4  8104001a  ds_cfg r9, zero, 13
0005b8  2192f502  shuffle_batch r4, r11, r15, 1
0005bc  1d100000  unlock zero
0005c0  7d800000  xsignal r1, 0
0005c4  7d800c00  xsignal r25, 0
0005c8  dbecffff  j -156
0005cc  1f015000  addli r2, zero, 40
0005d0  9f202000  addli r1, zero, 18
0005d4  0b112638  mod.s r2, r12, r2
0005d8  8b101538  mod.s r1, r10, r1
0005dc  9b35f100  slli r11, r2, 15
0005e0  6301cffd  loadli.w r2,  -288(r30)
0005e4  9bb0f000  slli r1, r1, 15
0005e8  0b942010  add.s r8, r1, r2
0005ec  9f700000  addli r1, zero, 7
0005f0  b7f11900  beq r19, r1, 124
0005f4  bbe27900  bneq r19, r7, 184
0005f8  eb508fed  load.d r[2:3], -296(r30)
0005fc  eb5c0fec  load.d r[26:27], -320(r30)
000600  9f750000  addli r11, zero, 7
000604  1f420000  addli r4, zero, 4
000608  7d900500  xwait r11, 0
00060c  1d000200  lock zero, r4
000610  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000614  15080800  dma_cfg r16, r16, zero, 0
000618  8f9b9071  mod.sl r[24:25], r[2:3], r[26:27]
00061c  97b00003  sll.d r[2:3], r[2:3], r16
000620  a7890b02  addli.d r[20:21], r[24:25], 256
000624  8bb99941  min.sl r[20:21], r[20:21], r[26:27]
000628  9f4c0000  addli r25, zero, 4
00062c  1f1d3000  addli r26, zero, 25
000630  8bb97919  sub.sl r[20:21], r[20:21], r[24:25]
000634  eb5b8f00  load.d r[24:25], 8(r30)
000638  1bb21900  slli r4, r19, 1
00063c  634a7ffd  loadli.w r20,  -324(r30)
000640  80390002  core_id r19
000644  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000648  15000104  dma_cfg zero, r2, zero, 2
00064c  15844006  dma_cfg r8, r1, r4, 3
000650  1f010004  addli r2, zero, 512
000654  e3007ffd  loadli.w r1,  -328(r30)
000658  1581f008  dma_cfg r2, r1, r15, 4
00065c  35000000  dma_run zero
000660  1d900c00  unlock r25
000664  7d800300  xsignal r7, 0
000668  dbd8ffff  j -316
00066c  9f101000  addli r1, zero, 9
000670  7d900300  xwait r7, 0
000674  7d900000  xwait r1, 0
000678  9f300000  addli r1, zero, 3
00067c  1d000000  lock zero, zero
000680  81000000  ds_cfg r1, zero, 0
000684  9f000002  addli r1, zero, 256
000688  81000002  ds_cfg r1, zero, 1
00068c  8107001c  ds_cfg r15, zero, 14
000690  8100001a  ds_cfg r1, zero, 13
000694  9f700000  addli r1, zero, 7
000698  c105f404  shuffle_coa r11, r8, r15, 2
00069c  1d100000  unlock zero
0006a0  7d800000  xsignal r1, 0
0006a4  7d800800  xsignal r17, 0
0006a8  dbd0ffff  j -380
0006ac  3b8a99ff  bneq r19, r25, -384
0006b0  1f040000  addli r8, zero, 0
0006b4  1f010008  addli r2, zero, 1024
0006b8  7d900c00  xwait r25, 0
0006bc  7d900800  xwait r17, 0
0006c0  b7b00d00  beq r27, zero, 44
0006c4  1d000800  lock zero, r16
0006c8  8b108310  add.s r1, r6, r8
0006cc  1f040402  addli r8, r8, 256
0006d0  89879700  mm_cfg r15, r15, r9, 0
0006d4  09890805  mm_cfg r18, r17, r16, 2
0006d8  a910b20a  mm_acc r1, r4, r11, 5
0006dc  9f850540  addli r11, r11, 8192
0006e0  1d100800  unlock r16
0006e4  bb0f24fe  bneq r8, r2, -32
0006e8  5b050000  j 40
0006ec  1d000800  lock zero, r16
0006f0  8b108310  add.s r1, r6, r8
0006f4  1f040402  addli r8, r8, 256
0006f8  89879700  mm_cfg r15, r15, r9, 0
0006fc  09890805  mm_cfg r18, r17, r16, 2
000700  a900b20a  mm r1, r4, r11, 5
000704  9f850540  addli r11, r11, 8192
000708  1d100800  unlock r16
00070c  bb0f24fe  bneq r8, r2, -32
000710  9f500000  addli r1, zero, 5
000714  7d800000  xsignal r1, 0
000718  9f101000  addli r1, zero, 9
00071c  7d800000  xsignal r1, 0
000720  dbc1ffff  j -500
000724  37d399ff  beq r19, r25, -812
000728  e34d6f00  loadli.w r27,  52(r30)
00072c  e345affd  loadli.w r11,  -300(r30)
000730  eb5a8fec  load.d r[22:23], -312(r30)
000734  3be309fe  bneq r19, zero, -808
000738  eb5b8fed  load.d r[24:25], -296(r30)
00073c  eb530fec  load.d r[8:9], -320(r30)
000740  1f020002  addli r4, zero, 256
000744  a7800b02  addli.d r[2:3], r[24:25], 256
000748  8bb07040  min.sl r[2:3], r[2:3], r[8:9]
00074c  b3030228  zext_int2long r[8:9], r4
000750  1f221000  addli r4, zero, 10
000754  8bb97049  max.sl r[20:21], r[2:3], r[24:25]
000758  eb508fea  load.d r[2:3], -344(r30)
00075c  73387fee  store.d r[8:9], -272(r30)
000760  8bb37919  sub.sl r[8:9], r[20:21], r[24:25]
000764  eb598fee  load.d r[20:21], -280(r30)
000768  a786e001  addli.d r[14:15], r[2:3], 240
00076c  8bb63641  min.sl r[14:15], r[14:15], r[20:21]
000770  eb590fef  load.d r[20:21], -272(r30)
000774  8bb61648  max.sl r[14:15], r[14:15], r[2:3]
000778  8bb33341  min.sl r[8:9], r[8:9], r[20:21]
00077c  eb590f01  load.d r[20:21], 16(r30)
000780  8bb61618  sub.sl r[14:15], r[14:15], r[2:3]
000784  73387fee  store.d r[8:9], -272(r30)
000788  eb530fe7  load.d r[8:9], -400(r30)
00078c  8bb37020  mul.sl r[8:9], r[2:3], r[8:9]
000790  97b30303  sll.d r[8:9], r[8:9], r16
000794  8ba37910  add.ul r[8:9], r[20:21], r[8:9]
000798  97b90b03  sll.d r[20:21], r[24:25], r16
00079c  eb5b0feb  load.d r[24:25], -336(r30)
0007a0  8ba33311  add.ul r[8:9], r[8:9], r[20:21]
0007a4  634a7ffd  loadli.w r20,  -324(r30)
0007a8  7d100200  xwait r4, 0
0007ac  1f520000  addli r4, zero, 5
0007b0  80390002  core_id r19
0007b4  8bb67641  min.sl r[14:15], r[14:15], r[24:25]
0007b8  1d000200  lock zero, r4
0007bc  15080000  dma_cfg r16, zero, zero, 0
0007c0  15000802  dma_cfg zero, r16, zero, 1
0007c4  eb500fef  load.d r[2:3], -272(r30)
0007c8  15040004  dma_cfg r8, zero, zero, 2
0007cc  9bb02000  slli r1, r1, 2
0007d0  1f010008  addli r2, zero, 1024
0007d4  95031306  dma_cfg r7, r6, r1, 3
0007d8  e340fffc  loadli.w r1,  -388(r30)
0007dc  9500d108  dma_cfg r1, r2, r13, 4
0007e0  9f301000  addli r1, zero, 11
0007e4  35000000  dma_run zero
0007e8  1d100200  unlock r4
0007ec  7d800000  xsignal r1, 0
0007f0  db83ffff  j -996
0007f4  7d000000  xsignal zero, 0
0007f8  bbe00900  bneq r19, zero, 56
0007fc  9f200000  addli r1, zero, 2
000800  7d100000  xwait zero, 0
000804  7d100000  xwait zero, 0
000808  7d100000  xwait zero, 0
00080c  7d100000  xwait zero, 0
000810  7d100000  xwait zero, 0
000814  7d100000  xwait zero, 0
000818  7d100000  xwait zero, 0
00081c  7d100000  xwait zero, 0
000820  1d800000  lock zero, r1
000824  0d000020  ew_cfg zero, zero, zero, 16
000828  1d900000  unlock r1
00082c  7d400000  xsignal_mode_cfg zero
000830  9f8e2e03  addli sp, sp, 400
000834  00a00300  mfence { lm, sm, gm }
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
000a04  00100000  exit
000a08  00100000  exit
000a0c  00100000  exit
000a10  00100000  exit
000a14  00100000  exit
000a18  00100000  exit
000a1c  00100000  exit
000a20  00100000  exit
000a24  00100000  exit
000a28  00100000  exit
000a2c  00100000  exit
000a30  00100000  exit
000a34  00100000  exit
000a38  00100000  exit
000a3c  00100000  exit
000a40  00100000  exit
000a44  00100000  exit
000a48  00100000  exit
000a4c  00100000  exit
000a50  00100000  exit
000a54  00100000  exit
000a58  00100000  exit
000a5c  00100000  exit
000a60  00100000  exit
000a64  00100000  exit
000a68  00100000  exit
000a6c  00100000  exit
000a70  00100000  exit
000a74  00100000  exit
000a78  00100000  exit
