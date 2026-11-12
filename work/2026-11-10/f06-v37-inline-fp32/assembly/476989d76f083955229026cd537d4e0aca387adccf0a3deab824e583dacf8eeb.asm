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
0000b4  9f8e3ef5  addli sp, sp, -1384
0000b8  1f110000  addli r2, zero, 1
0000bc  80300002  core_id r1
0000c0  1f8f5e0a  addli r30, sp, 1320
0000c4  7d400100  xsignal_mode_cfg r2
0000c8  b7900000  beq r1, zero, 36
0000cc  abf1ffff  lui r3, 1048575
0000d0  7d100100  xwait r2, 0
0000d4  7d100100  xwait r2, 0
0000d8  7d100000  xwait zero, 0
0000dc  1b91f1ff  ori r2, r3, 4095
0000e0  80210104  csr_set csr3, r2
0000e4  00d00100  sync_group
0000e8  dbac0000  j 1380
0000ec  9f220000  addli r5, zero, 2
0000f0  7d510100  uni_sram_cfg r2, r2
0000f4  1f430000  addli r6, zero, 4
0000f8  eb510f02  load.d r[4:5], 32(r30)
0000fc  9f030020  addli r7, zero, 4096
000100  1d800200  lock zero, r5
000104  0d010020  ew_cfg r2, zero, zero, 16
000108  1d900200  unlock r5
00010c  1d000300  lock zero, r6
000110  15000000  dma_cfg zero, zero, zero, 0
000114  15000204  dma_cfg zero, r4, zero, 2
000118  15807106  dma_cfg zero, r3, r7, 3
00011c  9f014000  addli r3, zero, 32
000120  1f020008  addli r4, zero, 1024
000124  15002008  dma_cfg zero, zero, r2, 4
000128  35000000  dma_run zero
00012c  1d100300  unlock r6
000130  7d000100  xsignal r2, 0
000134  7d100100  xwait r2, 0
000138  1d000000  lock zero, zero
00013c  81020000  ds_cfg r5, zero, 0
000140  01000002  ds_cfg zero, zero, 1
000144  01000016  ds_cfg zero, zero, 11
000148  8101001a  ds_cfg r3, zero, 13
00014c  9f311000  addli r3, zero, 11
000150  0102001c  ds_cfg r4, zero, 14
000154  a1134008  shuffle_batch r7, zero, r4, 4
000158  1d100000  unlock zero
00015c  7d000100  xsignal r2, 0
000160  7d100100  xwait r2, 0
000164  1d800200  lock zero, r5
000168  2b110100  lui r2, 17
00016c  0da00300  ewtable_cfg r7, 0
000170  0d200102  ewtable_cfg r2, 1
000174  2bf1ffff  lui r2, 1048575
000178  1d900200  unlock r5
00017c  7d000000  xsignal zero, 0
000180  7d100000  xwait zero, 0
000184  1b11f1ff  ori r2, r2, 4095
000188  80210104  csr_set csr3, r2
00018c  00d00100  sync_group
000190  7d800100  xsignal r3, 0
000194  7d800100  xsignal r3, 0
000198  1f510000  addli r2, zero, 5
00019c  9f310000  addli r3, zero, 3
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
00026c  7d000100  xsignal r2, 0
000270  7d000100  xsignal r2, 0
000274  7d000100  xsignal r2, 0
000278  7d000100  xsignal r2, 0
00027c  7d000100  xsignal r2, 0
000280  7d000100  xsignal r2, 0
000284  7d000100  xsignal r2, 0
000288  7d000100  xsignal r2, 0
00028c  7d000100  xsignal r2, 0
000290  7d000100  xsignal r2, 0
000294  7d000100  xsignal r2, 0
000298  7d000100  xsignal r2, 0
00029c  7d000100  xsignal r2, 0
0002a0  7d000100  xsignal r2, 0
0002a4  7d000100  xsignal r2, 0
0002a8  7d000100  xsignal r2, 0
0002ac  7d000100  xsignal r2, 0
0002b0  7d000100  xsignal r2, 0
0002b4  7d000100  xsignal r2, 0
0002b8  7d000100  xsignal r2, 0
0002bc  7d000100  xsignal r2, 0
0002c0  7d000100  xsignal r2, 0
0002c4  7d000100  xsignal r2, 0
0002c8  7d000100  xsignal r2, 0
0002cc  7d000100  xsignal r2, 0
0002d0  7d000100  xsignal r2, 0
0002d4  7d000100  xsignal r2, 0
0002d8  7d000100  xsignal r2, 0
0002dc  7d000100  xsignal r2, 0
0002e0  7d000100  xsignal r2, 0
0002e4  7d000100  xsignal r2, 0
0002e8  7d000100  xsignal r2, 0
0002ec  7d000100  xsignal r2, 0
0002f0  7d000100  xsignal r2, 0
0002f4  7d000100  xsignal r2, 0
0002f8  7d000100  xsignal r2, 0
0002fc  7d000100  xsignal r2, 0
000300  7d000100  xsignal r2, 0
000304  7d000100  xsignal r2, 0
000308  7d000100  xsignal r2, 0
00030c  7d000100  xsignal r2, 0
000310  7d000100  xsignal r2, 0
000314  7d000100  xsignal r2, 0
000318  7d000100  xsignal r2, 0
00031c  7d000100  xsignal r2, 0
000320  7d800100  xsignal r3, 0
000324  7d800100  xsignal r3, 0
000328  7d800100  xsignal r3, 0
00032c  7d800100  xsignal r3, 0
000330  7d800100  xsignal r3, 0
000334  7d800100  xsignal r3, 0
000338  7d800100  xsignal r3, 0
00033c  7d800100  xsignal r3, 0
000340  7d800100  xsignal r3, 0
000344  7d800100  xsignal r3, 0
000348  7d800100  xsignal r3, 0
00034c  7d800100  xsignal r3, 0
000350  7d800100  xsignal r3, 0
000354  7d800100  xsignal r3, 0
000358  7d800100  xsignal r3, 0
00035c  7d800100  xsignal r3, 0
000360  7d800100  xsignal r3, 0
000364  7d800100  xsignal r3, 0
000368  7d800100  xsignal r3, 0
00036c  7d800100  xsignal r3, 0
000370  7d800100  xsignal r3, 0
000374  7d800100  xsignal r3, 0
000378  7d800100  xsignal r3, 0
00037c  7d800100  xsignal r3, 0
000380  7d800100  xsignal r3, 0
000384  7d800100  xsignal r3, 0
000388  7d800100  xsignal r3, 0
00038c  7d800100  xsignal r3, 0
000390  7d800100  xsignal r3, 0
000394  7d800100  xsignal r3, 0
000398  7d800100  xsignal r3, 0
00039c  7d800100  xsignal r3, 0
0003a0  7d800100  xsignal r3, 0
0003a4  7d800100  xsignal r3, 0
0003a8  7d800100  xsignal r3, 0
0003ac  7d800100  xsignal r3, 0
0003b0  7d800100  xsignal r3, 0
0003b4  7d800100  xsignal r3, 0
0003b8  7d800100  xsignal r3, 0
0003bc  7d800100  xsignal r3, 0
0003c0  7d800100  xsignal r3, 0
0003c4  7d800100  xsignal r3, 0
0003c8  7d800100  xsignal r3, 0
0003cc  7d800100  xsignal r3, 0
0003d0  7d800100  xsignal r3, 0
0003d4  7d800100  xsignal r3, 0
0003d8  7d800100  xsignal r3, 0
0003dc  7d800100  xsignal r3, 0
0003e0  7d800100  xsignal r3, 0
0003e4  7d800100  xsignal r3, 0
0003e8  7d800100  xsignal r3, 0
0003ec  7d800100  xsignal r3, 0
0003f0  7d800100  xsignal r3, 0
0003f4  7d800100  xsignal r3, 0
0003f8  7d800100  xsignal r3, 0
0003fc  1f111000  addli r2, zero, 9
000400  9f710000  addli r3, zero, 7
000404  7d000100  xsignal r2, 0
000408  7d000100  xsignal r2, 0
00040c  7d000100  xsignal r2, 0
000410  7d000100  xsignal r2, 0
000414  7d000100  xsignal r2, 0
000418  7d000100  xsignal r2, 0
00041c  7d000100  xsignal r2, 0
000420  7d000100  xsignal r2, 0
000424  7d000100  xsignal r2, 0
000428  7d000100  xsignal r2, 0
00042c  7d000100  xsignal r2, 0
000430  7d000100  xsignal r2, 0
000434  7d000100  xsignal r2, 0
000438  7d000100  xsignal r2, 0
00043c  7d000100  xsignal r2, 0
000440  7d000100  xsignal r2, 0
000444  7d000100  xsignal r2, 0
000448  7d000100  xsignal r2, 0
00044c  7d000100  xsignal r2, 0
000450  7d000100  xsignal r2, 0
000454  7d000100  xsignal r2, 0
000458  7d000100  xsignal r2, 0
00045c  7d000100  xsignal r2, 0
000460  7d000100  xsignal r2, 0
000464  7d000100  xsignal r2, 0
000468  7d000100  xsignal r2, 0
00046c  7d000100  xsignal r2, 0
000470  7d000100  xsignal r2, 0
000474  7d000100  xsignal r2, 0
000478  7d000100  xsignal r2, 0
00047c  7d000100  xsignal r2, 0
000480  7d000100  xsignal r2, 0
000484  7d000100  xsignal r2, 0
000488  7d000100  xsignal r2, 0
00048c  7d000100  xsignal r2, 0
000490  7d000100  xsignal r2, 0
000494  7d000100  xsignal r2, 0
000498  7d000100  xsignal r2, 0
00049c  7d000100  xsignal r2, 0
0004a0  7d000100  xsignal r2, 0
0004a4  7d000100  xsignal r2, 0
0004a8  7d000100  xsignal r2, 0
0004ac  7d000100  xsignal r2, 0
0004b0  7d000100  xsignal r2, 0
0004b4  7d000100  xsignal r2, 0
0004b8  7d000100  xsignal r2, 0
0004bc  7d000100  xsignal r2, 0
0004c0  7d000100  xsignal r2, 0
0004c4  7d000100  xsignal r2, 0
0004c8  7d000100  xsignal r2, 0
0004cc  7d000100  xsignal r2, 0
0004d0  7d000100  xsignal r2, 0
0004d4  7d000100  xsignal r2, 0
0004d8  7d000100  xsignal r2, 0
0004dc  7d000100  xsignal r2, 0
0004e0  7d000100  xsignal r2, 0
0004e4  7d000100  xsignal r2, 0
0004e8  7d000100  xsignal r2, 0
0004ec  7d000100  xsignal r2, 0
0004f0  7d000100  xsignal r2, 0
0004f4  7d000100  xsignal r2, 0
0004f8  7d000100  xsignal r2, 0
0004fc  7d000100  xsignal r2, 0
000500  7d000100  xsignal r2, 0
000504  7d000100  xsignal r2, 0
000508  7d000100  xsignal r2, 0
00050c  7d000100  xsignal r2, 0
000510  7d000100  xsignal r2, 0
000514  7d000100  xsignal r2, 0
000518  7d000100  xsignal r2, 0
00051c  7d000100  xsignal r2, 0
000520  7d000100  xsignal r2, 0
000524  7d000100  xsignal r2, 0
000528  7d000100  xsignal r2, 0
00052c  7d000100  xsignal r2, 0
000530  7d000100  xsignal r2, 0
000534  7d000100  xsignal r2, 0
000538  7d000100  xsignal r2, 0
00053c  7d000100  xsignal r2, 0
000540  7d000100  xsignal r2, 0
000544  7d800100  xsignal r3, 0
000548  7d800100  xsignal r3, 0
00054c  7d800100  xsignal r3, 0
000550  7d800100  xsignal r3, 0
000554  7d800100  xsignal r3, 0
000558  7d800100  xsignal r3, 0
00055c  7d800100  xsignal r3, 0
000560  7d800100  xsignal r3, 0
000564  7d800100  xsignal r3, 0
000568  7d800100  xsignal r3, 0
00056c  7d800100  xsignal r3, 0
000570  7d800100  xsignal r3, 0
000574  7d800100  xsignal r3, 0
000578  7d800100  xsignal r3, 0
00057c  7d800100  xsignal r3, 0
000580  7d800100  xsignal r3, 0
000584  7d800100  xsignal r3, 0
000588  7d800100  xsignal r3, 0
00058c  7d800100  xsignal r3, 0
000590  7d800100  xsignal r3, 0
000594  7d800100  xsignal r3, 0
000598  7d800100  xsignal r3, 0
00059c  7d800100  xsignal r3, 0
0005a0  7d800100  xsignal r3, 0
0005a4  7d800100  xsignal r3, 0
0005a8  7d800100  xsignal r3, 0
0005ac  7d800100  xsignal r3, 0
0005b0  7d800100  xsignal r3, 0
0005b4  7d800100  xsignal r3, 0
0005b8  7d800100  xsignal r3, 0
0005bc  7d800100  xsignal r3, 0
0005c0  7d800100  xsignal r3, 0
0005c4  7d800100  xsignal r3, 0
0005c8  7d800100  xsignal r3, 0
0005cc  7d800100  xsignal r3, 0
0005d0  7d800100  xsignal r3, 0
0005d4  7d800100  xsignal r3, 0
0005d8  7d800100  xsignal r3, 0
0005dc  7d800100  xsignal r3, 0
0005e0  7d800100  xsignal r3, 0
0005e4  7d800100  xsignal r3, 0
0005e8  7d800100  xsignal r3, 0
0005ec  7d800100  xsignal r3, 0
0005f0  7d800100  xsignal r3, 0
0005f4  7d800100  xsignal r3, 0
0005f8  7d800100  xsignal r3, 0
0005fc  7d800100  xsignal r3, 0
000600  7d800100  xsignal r3, 0
000604  7d800100  xsignal r3, 0
000608  7d800100  xsignal r3, 0
00060c  7d800100  xsignal r3, 0
000610  7d800100  xsignal r3, 0
000614  7d800100  xsignal r3, 0
000618  7d800100  xsignal r3, 0
00061c  1f511000  addli r2, zero, 13
000620  9f711000  addli r3, zero, 15
000624  7d000100  xsignal r2, 0
000628  7d000100  xsignal r2, 0
00062c  7d800100  xsignal r3, 0
000630  7d800100  xsignal r3, 0
000634  1f312000  addli r2, zero, 19
000638  9f412000  addli r3, zero, 20
00063c  7d000100  xsignal r2, 0
000640  7d000100  xsignal r2, 0
000644  7d800100  xsignal r3, 0
000648  7d800100  xsignal r3, 0
00064c  63015f00  loadli.w r2,  40(r30)
000650  e3415f00  loadli.w r3,  44(r30)
000654  00d20002  load_param_i r4, 1
000658  e3026f00  loadli.w r5,  48(r30)
00065c  80530002  load_param_i r7, 0
000660  2bf3ffff  lui r6, 1048575
000664  674f0ffe  storeli.w zero, -12(r30)
000668  e70e0ffe  storeli.w zero, -24(r30)
00066c  e74d0ffe  storeli.w zero, -36(r30)
000670  670d0ffe  storeli.w zero, -48(r30)
000674  674f0ffc  storeli.w zero, -268(r30)
000678  670b0ffa  storeli.w zero, -592(r30)
00067c  670d0ff8  storeli.w zero, -816(r30)
000680  e7440ff6  storeli.w zero, -1204(r30)
000684  0b912120  mul.s r2, r3, r2
000688  9f010200  addli r3, r4, 0
00068c  8b115150  fmac.s r3, r2, r5
000690  8b125120  mul.s r5, r2, r5
000694  9ff1f1ff  addli r3, r3, -1
000698  8b914130  div.s r3, r3, r4
00069c  1b12f3ff  ori r4, r6, 4095
0006a0  e70f4ffe  storeli.w r4, -8(r30)
0006a4  e74f4ffe  storeli.w r4, -4(r30)
0006a8  e74e4ffe  storeli.w r4, -20(r30)
0006ac  670f4ffe  storeli.w r4, -16(r30)
0006b0  670e4ffe  storeli.w r4, -32(r30)
0006b4  674e4ffe  storeli.w r4, -28(r30)
0006b8  674d4ffe  storeli.w r4, -44(r30)
0006bc  e70d4ffe  storeli.w r4, -40(r30)
0006c0  e70f4ffc  storeli.w r4, -264(r30)
0006c4  e74f4ffc  storeli.w r4, -260(r30)
0006c8  67004ffe  storeli.w r4, -256(r30)
0006cc  67404ffe  storeli.w r4, -252(r30)
0006d0  e7004ffe  storeli.w r4, -248(r30)
0006d4  e7404ffe  storeli.w r4, -244(r30)
0006d8  67014ffe  storeli.w r4, -240(r30)
0006dc  67414ffe  storeli.w r4, -236(r30)
0006e0  e7014ffe  storeli.w r4, -232(r30)
0006e4  e7414ffe  storeli.w r4, -228(r30)
0006e8  67024ffe  storeli.w r4, -224(r30)
0006ec  67424ffe  storeli.w r4, -220(r30)
0006f0  e7024ffe  storeli.w r4, -216(r30)
0006f4  e7424ffe  storeli.w r4, -212(r30)
0006f8  67034ffe  storeli.w r4, -208(r30)
0006fc  67434ffe  storeli.w r4, -204(r30)
000700  e7034ffe  storeli.w r4, -200(r30)
000704  e7434ffe  storeli.w r4, -196(r30)
000708  67044ffe  storeli.w r4, -192(r30)
00070c  67444ffe  storeli.w r4, -188(r30)
000710  e7044ffe  storeli.w r4, -184(r30)
000714  e7444ffe  storeli.w r4, -180(r30)
000718  67054ffe  storeli.w r4, -176(r30)
00071c  67454ffe  storeli.w r4, -172(r30)
000720  e7054ffe  storeli.w r4, -168(r30)
000724  e7454ffe  storeli.w r4, -164(r30)
000728  67064ffe  storeli.w r4, -160(r30)
00072c  67464ffe  storeli.w r4, -156(r30)
000730  e7064ffe  storeli.w r4, -152(r30)
000734  e7464ffe  storeli.w r4, -148(r30)
000738  67074ffe  storeli.w r4, -144(r30)
00073c  67474ffe  storeli.w r4, -140(r30)
000740  e7074ffe  storeli.w r4, -136(r30)
000744  e7474ffe  storeli.w r4, -132(r30)
000748  67084ffe  storeli.w r4, -128(r30)
00074c  67484ffe  storeli.w r4, -124(r30)
000750  e7084ffe  storeli.w r4, -120(r30)
000754  e7484ffe  storeli.w r4, -116(r30)
000758  67094ffe  storeli.w r4, -112(r30)
00075c  67494ffe  storeli.w r4, -108(r30)
000760  e7094ffe  storeli.w r4, -104(r30)
000764  e7494ffe  storeli.w r4, -100(r30)
000768  670a4ffe  storeli.w r4, -96(r30)
00076c  674a4ffe  storeli.w r4, -92(r30)
000770  e70a4ffe  storeli.w r4, -88(r30)
000774  e74a4ffe  storeli.w r4, -84(r30)
000778  670b4ffe  storeli.w r4, -80(r30)
00077c  674b4ffe  storeli.w r4, -76(r30)
000780  e70b4ffe  storeli.w r4, -72(r30)
000784  e74b4ffe  storeli.w r4, -68(r30)
000788  670c4ffe  storeli.w r4, -64(r30)
00078c  674c4ffe  storeli.w r4, -60(r30)
000790  e70c4ffe  storeli.w r4, -56(r30)
000794  e74c4ffe  storeli.w r4, -52(r30)
000798  674b4ffa  storeli.w r4, -588(r30)
00079c  e70b4ffa  storeli.w r4, -584(r30)
0007a0  e74b4ffa  storeli.w r4, -580(r30)
0007a4  670c4ffa  storeli.w r4, -576(r30)
0007a8  674c4ffa  storeli.w r4, -572(r30)
0007ac  e70c4ffa  storeli.w r4, -568(r30)
0007b0  e74c4ffa  storeli.w r4, -564(r30)
0007b4  670d4ffa  storeli.w r4, -560(r30)
0007b8  674d4ffa  storeli.w r4, -556(r30)
0007bc  e70d4ffa  storeli.w r4, -552(r30)
0007c0  e74d4ffa  storeli.w r4, -548(r30)
0007c4  670e4ffa  storeli.w r4, -544(r30)
0007c8  674e4ffa  storeli.w r4, -540(r30)
0007cc  e70e4ffa  storeli.w r4, -536(r30)
0007d0  e74e4ffa  storeli.w r4, -532(r30)
0007d4  670f4ffa  storeli.w r4, -528(r30)
0007d8  674f4ffa  storeli.w r4, -524(r30)
0007dc  e70f4ffa  storeli.w r4, -520(r30)
0007e0  e74f4ffa  storeli.w r4, -516(r30)
0007e4  67004ffc  storeli.w r4, -512(r30)
0007e8  67404ffc  storeli.w r4, -508(r30)
0007ec  e7004ffc  storeli.w r4, -504(r30)
0007f0  e7404ffc  storeli.w r4, -500(r30)
0007f4  67014ffc  storeli.w r4, -496(r30)
0007f8  67414ffc  storeli.w r4, -492(r30)
0007fc  e7014ffc  storeli.w r4, -488(r30)
000800  e7414ffc  storeli.w r4, -484(r30)
000804  67024ffc  storeli.w r4, -480(r30)
000808  67424ffc  storeli.w r4, -476(r30)
00080c  e7024ffc  storeli.w r4, -472(r30)
000810  e7424ffc  storeli.w r4, -468(r30)
000814  67034ffc  storeli.w r4, -464(r30)
000818  67434ffc  storeli.w r4, -460(r30)
00081c  e7034ffc  storeli.w r4, -456(r30)
000820  e7434ffc  storeli.w r4, -452(r30)
000824  67044ffc  storeli.w r4, -448(r30)
000828  67444ffc  storeli.w r4, -444(r30)
00082c  e7044ffc  storeli.w r4, -440(r30)
000830  e7444ffc  storeli.w r4, -436(r30)
000834  67054ffc  storeli.w r4, -432(r30)
000838  67454ffc  storeli.w r4, -428(r30)
00083c  e7054ffc  storeli.w r4, -424(r30)
000840  e7454ffc  storeli.w r4, -420(r30)
000844  67064ffc  storeli.w r4, -416(r30)
000848  67464ffc  storeli.w r4, -412(r30)
00084c  e7064ffc  storeli.w r4, -408(r30)
000850  e7464ffc  storeli.w r4, -404(r30)
000854  67074ffc  storeli.w r4, -400(r30)
000858  67474ffc  storeli.w r4, -396(r30)
00085c  e7074ffc  storeli.w r4, -392(r30)
000860  e7474ffc  storeli.w r4, -388(r30)
000864  67084ffc  storeli.w r4, -384(r30)
000868  67484ffc  storeli.w r4, -380(r30)
00086c  e7084ffc  storeli.w r4, -376(r30)
000870  e7484ffc  storeli.w r4, -372(r30)
000874  67094ffc  storeli.w r4, -368(r30)
000878  67494ffc  storeli.w r4, -364(r30)
00087c  e7094ffc  storeli.w r4, -360(r30)
000880  e7494ffc  storeli.w r4, -356(r30)
000884  670a4ffc  storeli.w r4, -352(r30)
000888  674a4ffc  storeli.w r4, -348(r30)
00088c  e70a4ffc  storeli.w r4, -344(r30)
000890  e74a4ffc  storeli.w r4, -340(r30)
000894  670b4ffc  storeli.w r4, -336(r30)
000898  674b4ffc  storeli.w r4, -332(r30)
00089c  e70b4ffc  storeli.w r4, -328(r30)
0008a0  e74b4ffc  storeli.w r4, -324(r30)
0008a4  670c4ffc  storeli.w r4, -320(r30)
0008a8  674c4ffc  storeli.w r4, -316(r30)
0008ac  e70c4ffc  storeli.w r4, -312(r30)
0008b0  e74c4ffc  storeli.w r4, -308(r30)
0008b4  670d4ffc  storeli.w r4, -304(r30)
0008b8  674d4ffc  storeli.w r4, -300(r30)
0008bc  e70d4ffc  storeli.w r4, -296(r30)
0008c0  e74d4ffc  storeli.w r4, -292(r30)
0008c4  670e4ffc  storeli.w r4, -288(r30)
0008c8  674e4ffc  storeli.w r4, -284(r30)
0008cc  e70e4ffc  storeli.w r4, -280(r30)
0008d0  e74e4ffc  storeli.w r4, -276(r30)
0008d4  670f4ffc  storeli.w r4, -272(r30)
0008d8  674d4ff8  storeli.w r4, -812(r30)
0008dc  e70d4ff8  storeli.w r4, -808(r30)
0008e0  e74d4ff8  storeli.w r4, -804(r30)
0008e4  670e4ff8  storeli.w r4, -800(r30)
0008e8  674e4ff8  storeli.w r4, -796(r30)
0008ec  e70e4ff8  storeli.w r4, -792(r30)
0008f0  e74e4ff8  storeli.w r4, -788(r30)
0008f4  670f4ff8  storeli.w r4, -784(r30)
0008f8  674f4ff8  storeli.w r4, -780(r30)
0008fc  e70f4ff8  storeli.w r4, -776(r30)
000900  e74f4ff8  storeli.w r4, -772(r30)
000904  67004ffa  storeli.w r4, -768(r30)
000908  67404ffa  storeli.w r4, -764(r30)
00090c  e7004ffa  storeli.w r4, -760(r30)
000910  e7404ffa  storeli.w r4, -756(r30)
000914  67014ffa  storeli.w r4, -752(r30)
000918  67414ffa  storeli.w r4, -748(r30)
00091c  e7014ffa  storeli.w r4, -744(r30)
000920  e7414ffa  storeli.w r4, -740(r30)
000924  67024ffa  storeli.w r4, -736(r30)
000928  67424ffa  storeli.w r4, -732(r30)
00092c  e7024ffa  storeli.w r4, -728(r30)
000930  e7424ffa  storeli.w r4, -724(r30)
000934  67034ffa  storeli.w r4, -720(r30)
000938  67434ffa  storeli.w r4, -716(r30)
00093c  e7034ffa  storeli.w r4, -712(r30)
000940  e7434ffa  storeli.w r4, -708(r30)
000944  67044ffa  storeli.w r4, -704(r30)
000948  67444ffa  storeli.w r4, -700(r30)
00094c  e7044ffa  storeli.w r4, -696(r30)
000950  e7444ffa  storeli.w r4, -692(r30)
000954  67054ffa  storeli.w r4, -688(r30)
000958  67454ffa  storeli.w r4, -684(r30)
00095c  e7054ffa  storeli.w r4, -680(r30)
000960  e7454ffa  storeli.w r4, -676(r30)
000964  67064ffa  storeli.w r4, -672(r30)
000968  67464ffa  storeli.w r4, -668(r30)
00096c  e7064ffa  storeli.w r4, -664(r30)
000970  e7464ffa  storeli.w r4, -660(r30)
000974  67074ffa  storeli.w r4, -656(r30)
000978  67474ffa  storeli.w r4, -652(r30)
00097c  e7074ffa  storeli.w r4, -648(r30)
000980  e7474ffa  storeli.w r4, -644(r30)
000984  67084ffa  storeli.w r4, -640(r30)
000988  67484ffa  storeli.w r4, -636(r30)
00098c  e7084ffa  storeli.w r4, -632(r30)
000990  e7484ffa  storeli.w r4, -628(r30)
000994  67094ffa  storeli.w r4, -624(r30)
000998  67494ffa  storeli.w r4, -620(r30)
00099c  e7094ffa  storeli.w r4, -616(r30)
0009a0  e7494ffa  storeli.w r4, -612(r30)
0009a4  670a4ffa  storeli.w r4, -608(r30)
0009a8  674a4ffa  storeli.w r4, -604(r30)
0009ac  e70a4ffa  storeli.w r4, -600(r30)
0009b0  e74a4ffa  storeli.w r4, -596(r30)
0009b4  67054ff6  storeli.w r4, -1200(r30)
0009b8  67454ff6  storeli.w r4, -1196(r30)
0009bc  e7054ff6  storeli.w r4, -1192(r30)
0009c0  e7454ff6  storeli.w r4, -1188(r30)
0009c4  67064ff6  storeli.w r4, -1184(r30)
0009c8  67464ff6  storeli.w r4, -1180(r30)
0009cc  e7064ff6  storeli.w r4, -1176(r30)
0009d0  e7464ff6  storeli.w r4, -1172(r30)
0009d4  67074ff6  storeli.w r4, -1168(r30)
0009d8  67474ff6  storeli.w r4, -1164(r30)
0009dc  e7074ff6  storeli.w r4, -1160(r30)
0009e0  e7474ff6  storeli.w r4, -1156(r30)
0009e4  67084ff6  storeli.w r4, -1152(r30)
0009e8  67484ff6  storeli.w r4, -1148(r30)
0009ec  e7084ff6  storeli.w r4, -1144(r30)
0009f0  e7484ff6  storeli.w r4, -1140(r30)
0009f4  67094ff6  storeli.w r4, -1136(r30)
0009f8  67494ff6  storeli.w r4, -1132(r30)
0009fc  e7094ff6  storeli.w r4, -1128(r30)
000a00  e7494ff6  storeli.w r4, -1124(r30)
000a04  670a4ff6  storeli.w r4, -1120(r30)
000a08  674a4ff6  storeli.w r4, -1116(r30)
000a0c  e70a4ff6  storeli.w r4, -1112(r30)
000a10  e74a4ff6  storeli.w r4, -1108(r30)
000a14  670b4ff6  storeli.w r4, -1104(r30)
000a18  674b4ff6  storeli.w r4, -1100(r30)
000a1c  e70b4ff6  storeli.w r4, -1096(r30)
000a20  e74b4ff6  storeli.w r4, -1092(r30)
000a24  670c4ff6  storeli.w r4, -1088(r30)
000a28  674c4ff6  storeli.w r4, -1084(r30)
000a2c  e70c4ff6  storeli.w r4, -1080(r30)
000a30  e74c4ff6  storeli.w r4, -1076(r30)
000a34  670d4ff6  storeli.w r4, -1072(r30)
000a38  674d4ff6  storeli.w r4, -1068(r30)
000a3c  e70d4ff6  storeli.w r4, -1064(r30)
000a40  e74d4ff6  storeli.w r4, -1060(r30)
000a44  670e4ff6  storeli.w r4, -1056(r30)
000a48  674e4ff6  storeli.w r4, -1052(r30)
000a4c  e70e4ff6  storeli.w r4, -1048(r30)
000a50  e74e4ff6  storeli.w r4, -1044(r30)
000a54  670f4ff6  storeli.w r4, -1040(r30)
000a58  674f4ff6  storeli.w r4, -1036(r30)
000a5c  e70f4ff6  storeli.w r4, -1032(r30)
000a60  e74f4ff6  storeli.w r4, -1028(r30)
000a64  67004ff8  storeli.w r4, -1024(r30)
000a68  67404ff8  storeli.w r4, -1020(r30)
000a6c  e7004ff8  storeli.w r4, -1016(r30)
000a70  e7404ff8  storeli.w r4, -1012(r30)
000a74  67014ff8  storeli.w r4, -1008(r30)
000a78  67414ff8  storeli.w r4, -1004(r30)
000a7c  e7014ff8  storeli.w r4, -1000(r30)
000a80  e7414ff8  storeli.w r4, -996(r30)
000a84  67024ff8  storeli.w r4, -992(r30)
000a88  67424ff8  storeli.w r4, -988(r30)
000a8c  e7024ff8  storeli.w r4, -984(r30)
000a90  e7424ff8  storeli.w r4, -980(r30)
000a94  67034ff8  storeli.w r4, -976(r30)
000a98  67434ff8  storeli.w r4, -972(r30)
000a9c  e7034ff8  storeli.w r4, -968(r30)
000aa0  e7434ff8  storeli.w r4, -964(r30)
000aa4  67044ff8  storeli.w r4, -960(r30)
000aa8  67444ff8  storeli.w r4, -956(r30)
000aac  e7044ff8  storeli.w r4, -952(r30)
000ab0  e7444ff8  storeli.w r4, -948(r30)
000ab4  67054ff8  storeli.w r4, -944(r30)
000ab8  67454ff8  storeli.w r4, -940(r30)
000abc  e7054ff8  storeli.w r4, -936(r30)
000ac0  e7454ff8  storeli.w r4, -932(r30)
000ac4  67064ff8  storeli.w r4, -928(r30)
000ac8  67464ff8  storeli.w r4, -924(r30)
000acc  e7064ff8  storeli.w r4, -920(r30)
000ad0  e7464ff8  storeli.w r4, -916(r30)
000ad4  67074ff8  storeli.w r4, -912(r30)
000ad8  67474ff8  storeli.w r4, -908(r30)
000adc  e7074ff8  storeli.w r4, -904(r30)
000ae0  e7474ff8  storeli.w r4, -900(r30)
000ae4  67084ff8  storeli.w r4, -896(r30)
000ae8  67484ff8  storeli.w r4, -892(r30)
000aec  e7084ff8  storeli.w r4, -888(r30)
000af0  e7484ff8  storeli.w r4, -884(r30)
000af4  67094ff8  storeli.w r4, -880(r30)
000af8  67494ff8  storeli.w r4, -876(r30)
000afc  e7094ff8  storeli.w r4, -872(r30)
000b00  e7494ff8  storeli.w r4, -868(r30)
000b04  670a4ff8  storeli.w r4, -864(r30)
000b08  674a4ff8  storeli.w r4, -860(r30)
000b0c  e70a4ff8  storeli.w r4, -856(r30)
000b10  e74a4ff8  storeli.w r4, -852(r30)
000b14  670b4ff8  storeli.w r4, -848(r30)
000b18  674b4ff8  storeli.w r4, -844(r30)
000b1c  e70b4ff8  storeli.w r4, -840(r30)
000b20  e74b4ff8  storeli.w r4, -836(r30)
000b24  670c4ff8  storeli.w r4, -832(r30)
000b28  674c4ff8  storeli.w r4, -828(r30)
000b2c  e70c4ff8  storeli.w r4, -824(r30)
000b30  e74c4ff8  storeli.w r4, -820(r30)
000b34  0b917120  mul.s r2, r3, r7
000b38  8b917150  fmac.s r3, r3, r7
000b3c  8b915140  min.s r3, r3, r5
000b40  4bcc2102  ble.s r3, r2, 1808
000b44  33130128  sext_int2long r[7:8], r2
000b48  2b611600  lui r2, 358
000b4c  b3910128  sext_int2long r[4:5], r3
000b50  6346efff  loadli.w r12,  -12(r30)
000b54  6309dfff  loadli.w r18,  -24(r30)
000b58  e34dbfff  loadli.w r27,  -36(r30)
000b5c  e344effd  loadli.w r9,  -268(r30)
000b60  e3066ffb  loadli.w r13,  -592(r30)
000b64  6307aff9  loadli.w r14,  -816(r30)
000b68  e3479ff6  loadli.w r15,  -1204(r30)
000b6c  1f088000  addli r16, zero, 64
000b70  1f150000  addli r10, zero, 1
000b74  1f7c0000  addli r24, zero, 7
000b78  1f2a0000  addli r20, zero, 2
000b7c  9f4a0000  addli r21, zero, 4
000b80  9f09c000  addli r19, zero, 96
000b84  2b0d0100  lui r26, 16
000b88  1f0e4000  addli r28, zero, 32
000b8c  9f0c0001  addli r25, zero, 128
000b90  9f050000  addli r11, zero, 0
000b94  1b110140  ori r2, r2, 1024
000b98  73383fae  store.d r[4:5], -1296(r30)
000b9c  2b621700  lui r4, 374
000ba0  e301afff  loadli.w r3,  -48(r30)
000ba4  e74e2ff4  storeli.w r2, -1300(r30)
000ba8  2b810d00  lui r2, 216
000bac  e7433ff6  storeli.w r3, -1220(r30)
000bb0  9f716000  addli r3, zero, 55
000bb4  1b11d1b4  ori r2, r2, 2893
000bb8  e70e2ff4  storeli.w r2, -1304(r30)
000bbc  1b110240  ori r2, r4, 1024
000bc0  2bf27f7f  lui r4, 522239
000bc4  674e2ff4  storeli.w r2, -1308(r30)
000bc8  2bf17fff  lui r2, 1046527
000bcc  1b11f1ff  ori r2, r2, 4095
000bd0  670e2ff4  storeli.w r2, -1312(r30)
000bd4  1b11f2ff  ori r2, r4, 4095
000bd8  e74d2ff4  storeli.w r2, -1316(r30)
000bdc  5b100000  j 128
000be0  6b520f01  load.d r[5:6], 16(r30)
000be4  eb558fb0  load.d r[12:13], -1272(r30)
000be8  1f511000  addli r2, zero, 13
000bec  7d100100  xwait r2, 0
000bf0  1d800a00  lock zero, r21
000bf4  1b312300  slli r2, r6, 2
000bf8  0b22b210  add.ul r[5:6], r[5:6], r[12:13]
000bfc  15000000  dma_cfg zero, zero, zero, 0
000c00  15800204  dma_cfg zero, r5, zero, 2
000c04  15042206  dma_cfg r8, r4, r2, 3
000c08  1f010004  addli r2, zero, 512
000c0c  1501a108  dma_cfg r2, r2, r10, 4
000c10  35000000  dma_run zero
000c14  1d900a00  unlock r21
000c18  1f411000  addli r2, zero, 12
000c1c  e30d5ff6  loadli.w r27,  -1240(r30)
000c20  7d000100  xsignal r2, 0
000c24  63067ff6  loadli.w r12,  -1224(r30)
000c28  63496ff6  loadli.w r18,  -1228(r30)
000c2c  9f9d0d00  addli r27, r27, 1
000c30  6b530fb2  load.d r[7:8], -1248(r30)
000c34  6b520faf  load.d r[5:6], -1296(r30)
000c38  e3453ff6  loadli.w r11,  -1252(r30)
000c3c  1f190900  addli r18, r18, 1
000c40  1f160600  addli r12, r12, 1
000c44  27130300  addli.d r[7:8], r[7:8], 1
000c48  13314304  setlt.sl r2, r[7:8], r[5:6]
000c4c  63427ff6  loadli.w r4,  -1220(r30)
000c50  1f120200  addli r4, r4, 1
000c54  e7434ff6  storeli.w r4, -1220(r30)
000c58  b7470102  beq r2, zero, 1520
000c5c  e702bff7  storeli.w r27, -1240(r30)
000c60  67432ff7  storeli.w r18, -1228(r30)
000c64  e703cff6  storeli.w r12, -1224(r30)
000c68  3bb05001  bneq r1, r21, 12
000c6c  1f311000  addli r2, zero, 11
000c70  7d100100  xwait r2, 0
000c74  63016f00  loadli.w r2,  48(r30)
000c78  73306fb2  store.d r[7:8], -1248(r30)
000c7c  9f0d0000  addli r27, zero, 0
000c80  9f180000  addli r17, zero, 1
000c84  1f090000  addli r18, zero, 0
000c88  0b122330  div.s r4, r6, r2
000c8c  63415f00  loadli.w r2,  44(r30)
000c90  8b934539  mod.s r7, r11, r20
000c94  9f950500  addli r11, r11, 1
000c98  e741bff6  storeli.w r11, -1252(r30)
000c9c  0b122230  div.s r4, r4, r2
000ca0  1f011000  addli r2, zero, 8
000ca4  8b120231  div.s r5, r4, r16
000ca8  1bb33200  slli r6, r5, 3
000cac  9bb26200  slli r5, r5, 6
000cb0  0b146518  sub.s r8, r10, r6
000cb4  8b125218  sub.s r5, r4, r5
000cb8  0b142440  min.s r8, r8, r2
000cbc  0b128238  mod.s r4, r4, r8
000cc0  0b948230  div.s r8, r5, r8
000cc4  9bb2f300  slli r5, r7, 15
000cc8  0b124310  add.s r4, r6, r4
000ccc  1b337400  slli r6, r8, 7
000cd0  67016ff6  storeli.w r6, -1264(r30)
000cd4  33030428  zext_int2long r[7:8], r8
000cd8  1b346200  slli r8, r4, 6
000cdc  33050228  zext_int2long r[11:12], r4
000ce0  1f621000  addli r4, zero, 14
000ce4  17338303  sll.d r[7:8], r[7:8], r24
000ce8  7330afb0  store.d r[11:12], -1280(r30)
000cec  17354502  sll.d r[11:12], r[11:12], r4
000cf0  1f120000  addli r4, zero, 1
000cf4  e74f8ff4  storeli.w r8, -1284(r30)
000cf8  173b4303  sll.d r[23:24], r[7:8], r20
000cfc  6b538f00  load.d r[7:8], 8(r30)
000d00  73346fb1  store.d r[23:24], -1272(r30)
000d04  0b236311  add.ul r[7:8], r[7:8], r[23:24]
000d08  6b5b0f00  load.d r[23:24], 0(r30)
000d0c  73306fb4  store.d r[7:8], -1216(r30)
000d10  9f630000  addli r7, zero, 6
000d14  0b25ab10  add.ul r[11:12], r[23:24], r[11:12]
000d18  5b0a0000  j 80
000d1c  1f5b0000  addli r22, zero, 5
000d20  7d100a00  xwait r20, 0
000d24  7d100b00  xwait r22, 0
000d28  1d000000  lock zero, zero
000d2c  010a0000  ds_cfg r20, zero, 0
000d30  010e0002  ds_cfg r28, zero, 1
000d34  010e001c  ds_cfg r28, zero, 14
000d38  0108001a  ds_cfg r16, zero, 13
000d3c  2114c603  shuffle_batch r8, r12, r28, 1
000d40  1f340000  addli r8, zero, 3
000d44  1d100000  unlock zero
000d48  7d000400  xsignal r8, 0
000d4c  7d800a00  xsignal r21, 0
000d50  9f960600  addli r13, r13, 1
000d54  9f940400  addli r9, r9, 1
000d58  37370200  beq r4, zero, 460
000d5c  1f190900  addli r18, r18, 1
000d60  9f1d0000  addli r27, zero, 1
000d64  1f020000  addli r4, zero, 0
000d68  0b143738  mod.s r8, r14, r3
000d6c  0b963739  mod.s r12, r15, r19
000d70  9f970700  addli r15, r15, 1
000d74  1f170700  addli r14, r14, 1
000d78  1b021200  andi r4, r4, 1
000d7c  1b3bd400  slli r22, r8, 13
000d80  1b34d600  slli r8, r12, 13
000d84  0b16ab11  add.s r12, r22, r26
000d88  37de40ff  beq r1, r20, -108
000d8c  338b0d28  zext_int2long r[23:24], r27
000d90  bbf01001  bneq r1, r17, 60
000d94  173b8b03  sll.d r[23:24], r[23:24], r24
000d98  1f340000  addli r8, zero, 3
000d9c  7d100400  xwait r8, 0
000da0  1d800a00  lock zero, r21
000da4  0b2b6511  add.ul r[23:24], r[11:12], r[23:24]
000da8  1f040002  addli r8, zero, 256
000dac  15000000  dma_cfg zero, zero, zero, 0
000db0  15800b04  dma_cfg zero, r23, zero, 2
000db4  15069b07  dma_cfg r12, r22, r25, 3
000db8  950c0409  dma_cfg r25, r8, r16, 4
000dbc  35000000  dma_run zero
000dc0  1d900a00  unlock r21
000dc4  7d000a00  xsignal r20, 0
000dc8  5bf1ffff  j -120
000dcc  1f666000  addli r12, zero, 54
000dd0  9f0da000  addli r27, zero, 80
000dd4  2be30700  lui r6, 126
000dd8  0b96c438  mod.s r12, r9, r12
000ddc  8b9db639  mod.s r27, r13, r27
000de0  9f960600  addli r13, r13, 1
000de4  9f940400  addli r9, r9, 1
000de8  1b36e600  slli r12, r12, 14
000dec  9bbded00  slli r27, r27, 14
000df0  0b166610  add.s r12, r12, r6
000df4  37c18001  beq r1, r24, 80
000df8  3b827000  bneq r1, r7, 128
000dfc  1f142000  addli r8, zero, 17
000e00  7d100c00  xwait r24, 0
000e04  6b5c0fb4  load.d r[25:26], -1216(r30)
000e08  1d800a00  lock zero, r21
000e0c  15000000  dma_cfg zero, zero, zero, 0
000e10  173b8b02  sll.d r[23:24], r[23:24], r8
000e14  1f040004  addli r8, zero, 512
000e18  0b2b6c11  add.ul r[23:24], r[25:26], r[23:24]
000e1c  9f0c0001  addli r25, zero, 128
000e20  1f7c0000  addli r24, zero, 7
000e24  15800b04  dma_cfg zero, r23, zero, 2
000e28  15068b06  dma_cfg r12, r22, r8, 3
000e2c  1f060020  addli r12, zero, 4096
000e30  1504c609  dma_cfg r8, r12, r28, 4
000e34  35000000  dma_run zero
000e38  1d900a00  unlock r21
000e3c  7d800300  xsignal r7, 0
000e40  5be3ffff  j -232
000e44  1f131000  addli r6, zero, 9
000e48  7d900300  xwait r7, 0
000e4c  7d100300  xwait r6, 0
000e50  1d000000  lock zero, zero
000e54  010a0000  ds_cfg r20, zero, 0
000e58  810c0002  ds_cfg r25, zero, 1
000e5c  010e001c  ds_cfg r28, zero, 14
000e60  810c001a  ds_cfg r25, zero, 13
000e64  c10dc605  shuffle_coa r27, r12, r28, 2
000e68  1d100000  unlock zero
000e6c  7d000c00  xsignal r24, 0
000e70  7d000100  xsignal r2, 0
000e74  dbdcffff  j -284
000e78  bb925001  bneq r1, r21, 164
000e7c  1f160000  addli r12, zero, 1
000e80  1f1b0000  addli r22, zero, 1
000e84  9f0b0000  addli r23, zero, 0
000e88  7d900a00  xwait r21, 0
000e8c  7d100100  xwait r2, 0
000e90  b7700900  beq r18, zero, 60
000e94  1bb1db00  slli r2, r23, 13
000e98  9bbb8b00  slli r23, r23, 8
000e9c  1d000600  lock zero, r12
000ea0  09080e01  mm_cfg r16, r28, r16, 0
000ea4  1711b101  or r2, r2, r27
000ea8  979b5b00  or r23, r23, r5
000eac  098aca04  mm_cfg r20, r21, r12, 2
000eb0  a91b2410  mm_acc r23, r8, r2, 8
000eb4  1b011b00  andi r2, r22, 1
000eb8  9f1b0000  addli r23, zero, 1
000ebc  1f0b0000  addli r22, zero, 0
000ec0  1d100600  unlock r12
000ec4  3b4f01fe  bneq r2, zero, -48
000ec8  5b070000  j 56
000ecc  1bb1db00  slli r2, r23, 13
000ed0  9bbb8b00  slli r23, r23, 8
000ed4  1d000600  lock zero, r12
000ed8  09080e01  mm_cfg r16, r28, r16, 0
000edc  1711b101  or r2, r2, r27
000ee0  979b5b00  or r23, r23, r5
000ee4  098aca04  mm_cfg r20, r21, r12, 2
000ee8  a90b2410  mm r23, r8, r2, 8
000eec  1b011b00  andi r2, r22, 1
000ef0  9f1b0000  addli r23, zero, 1
000ef4  1f0b0000  addli r22, zero, 0
000ef8  1d100600  unlock r12
000efc  3b4f01fe  bneq r2, zero, -48
000f00  1f510000  addli r2, zero, 5
000f04  7d000100  xsignal r2, 0
000f08  1f111000  addli r2, zero, 9
000f0c  7d000100  xsignal r2, 0
000f10  1f011000  addli r2, zero, 8
000f14  3b2902fe  bneq r4, zero, -440
000f18  5b020000  j 16
000f1c  3b0902fe  bneq r4, zero, -448
000f20  5b020000  j 16
000f24  3bb05001  bneq r1, r21, 12
000f28  1f211000  addli r2, zero, 10
000f2c  7d000100  xsignal r2, 0
000f30  63012ff6  loadli.w r2,  -1264(r30)
000f34  338b0c28  zext_int2long r[23:24], r25
000f38  2b621500  lui r4, 342
000f3c  33030128  zext_int2long r[7:8], r2
000f40  1f010007  addli r2, zero, 896
000f44  33050128  zext_int2long r[11:12], r2
000f48  63417ff6  loadli.w r2,  -1220(r30)
000f4c  0b25a340  min.ul r[11:12], r[7:8], r[11:12]
000f50  0b114139  mod.s r2, r2, r20
000f54  27050501  addli.d r[11:12], r[11:12], 128
000f58  0b256548  max.ul r[11:12], r[11:12], r[7:8]
000f5c  0b336518  sub.sl r[7:8], r[11:12], r[7:8]
000f60  1f150000  addli r10, zero, 1
000f64  1b319100  slli r2, r2, 9
000f68  0b236341  min.ul r[7:8], r[7:8], r[23:24]
000f6c  0b144110  add.s r8, r2, r4
000f70  b7c1a0fe  beq r1, r10, -912
000f74  e30d5ff6  loadli.w r27,  -1240(r30)
000f78  1b120240  ori r4, r4, 1024
000f7c  63067ff6  loadli.w r12,  -1224(r30)
000f80  63496ff6  loadli.w r18,  -1228(r30)
000f84  ab850000  lui r11, 8
000f88  0b914d39  mod.s r2, r27, r20
000f8c  9f9d0d00  addli r27, r27, 1
000f90  1b31f100  slli r2, r2, 15
000f94  0b124110  add.s r4, r2, r4
000f98  1f310000  addli r2, zero, 3
000f9c  bbf12000  bneq r1, r2, 124
000fa0  1f211000  addli r2, zero, 10
000fa4  1f030000  addli r6, zero, 0
000fa8  7d100100  xwait r2, 0
000fac  1f411000  addli r2, zero, 12
000fb0  7d100100  xwait r2, 0
000fb4  1f711000  addli r2, zero, 15
000fb8  7d100100  xwait r2, 0
000fbc  1d000a00  lock zero, r20
000fc0  2b01803f  lui r2, 260096
000fc4  0d000002  ew_cfg zero, zero, zero, 1
000fc8  0d110100  ewcoeff_cfg r2, r2, zero, 0
000fcc  1f71f000  addli r2, zero, 127
000fd0  0d000104  ew_cfg zero, r2, zero, 2
000fd4  0d050006  ew_cfg r10, zero, zero, 3
000fd8  0b116210  add.s r2, r4, r6
000fdc  8b936210  add.s r7, r5, r6
000fe0  1f030304  addli r6, r6, 512
000fe4  2d818300  dsmadd r2, r7, r8, 0
000fe8  bb4fb3fe  bneq r6, r11, -16
000fec  1f311000  addli r2, zero, 11
000ff0  1d100a00  unlock r20
000ff4  7d000100  xsignal r2, 0
000ff8  1f511000  addli r2, zero, 13
000ffc  7d000100  xsignal r2, 0
001000  1f012000  addli r2, zero, 16
001004  7d000100  xsignal r2, 0
001008  1f112000  addli r2, zero, 17
00100c  7d000100  xsignal r2, 0
001010  1f611000  addli r2, zero, 14
001014  db450000  j 556
001018  0b114939  mod.s r2, r18, r20
00101c  e342dff5  loadli.w r5,  -1300(r30)
001020  1b31f100  slli r2, r2, 15
001024  8b185110  add.s r17, r2, r5
001028  1f510000  addli r2, zero, 5
00102c  bba52000  bneq r1, r2, 360
001030  1f611000  addli r2, zero, 14
001034  2b83ff40  lui r6, 266232
001038  2b0400c1  lui r8, 790528
00103c  9f030000  addli r7, zero, 0
001040  7d100100  xwait r2, 0
001044  1f312000  addli r2, zero, 19
001048  7d100100  xwait r2, 0
00104c  1d000a00  lock zero, r20
001050  1f71f00f  addli r2, zero, 2047
001054  0d000002  ew_cfg zero, zero, zero, 1
001058  0d000104  ew_cfg zero, r2, zero, 2
00105c  1f511000  addli r2, zero, 13
001060  8d0a0006  ew_cfg r21, zero, zero, 3
001064  8d8a0a26  ew_cfg r21, r21, zero, 19
001068  0d010014  ew_cfg r2, zero, zero, 10
00106c  6301dff5  loadli.w r2,  -1304(r30)
001070  0d0a2516  ew_cfg r20, r10, r2, 11
001074  1f310000  addli r2, zero, 3
001078  0d00201a  ew_cfg zero, zero, r2, 13
00107c  0b114639  mod.s r2, r12, r20
001080  0d846a1c  ew_cfg r8, r21, r6, 14
001084  2b03803f  lui r6, 260096
001088  0d00031e  ew_cfg zero, r6, zero, 15
00108c  cd280200  sslut r17, r4, 0
001090  0d000014  ew_cfg zero, zero, zero, 10
001094  0d000026  ew_cfg zero, zero, zero, 19
001098  1b31f100  slli r2, r2, 15
00109c  1d100a00  unlock r20
0010a0  6343cff5  loadli.w r6,  -1308(r30)
0010a4  0b136110  add.s r6, r2, r6
0010a8  1f012000  addli r2, zero, 16
0010ac  7d100100  xwait r2, 0
0010b0  1f412000  addli r2, zero, 20
0010b4  7d100100  xwait r2, 0
0010b8  1d000a00  lock zero, r20
0010bc  1f71f000  addli r2, zero, 127
0010c0  0d000002  ew_cfg zero, zero, zero, 1
0010c4  0d000104  ew_cfg zero, r2, zero, 2
0010c8  0d050006  ew_cfg r10, zero, zero, 3
0010cc  6301cff5  loadli.w r2,  -1312(r30)
0010d0  0d110000  ewcoeff_cfg r2, zero, zero, 0
0010d4  0b117310  add.s r2, r6, r7
0010d8  0b147210  add.s r8, r4, r7
0010dc  9f830304  addli r7, r7, 512
0010e0  2d218400  dscmpnsel r2, r8, r8, 0
0010e4  bbcfb3fe  bneq r7, r11, -16
0010e8  1d100a00  unlock r20
0010ec  1f71f000  addli r2, zero, 127
0010f0  9f030000  addli r7, zero, 0
0010f4  1d000a00  lock zero, r20
0010f8  0d000002  ew_cfg zero, zero, zero, 1
0010fc  0d000104  ew_cfg zero, r2, zero, 2
001100  0d050006  ew_cfg r10, zero, zero, 3
001104  6341bff5  loadli.w r2,  -1316(r30)
001108  0d110000  ewcoeff_cfg r2, zero, zero, 0
00110c  0b117310  add.s r2, r6, r7
001110  9f830304  addli r7, r7, 512
001114  2d212108  dscmpnsel r2, r2, r2, 4
001118  bbdfb3fe  bneq r7, r11, -12
00111c  1f112000  addli r2, zero, 17
001120  1d100a00  unlock r20
001124  ab0380bf  lui r7, 784384
001128  7d100100  xwait r2, 0
00112c  1d000a00  lock zero, r20
001130  2b01803f  lui r2, 260096
001134  0d000002  ew_cfg zero, zero, zero, 1
001138  0d910300  ewcoeff_cfg r2, r7, zero, 0
00113c  9f73f00f  addli r7, zero, 2047
001140  0d800304  ew_cfg zero, r7, zero, 2
001144  8d0a0006  ew_cfg r21, zero, zero, 3
001148  8d8a5a27  ew_cfg r21, r21, r21, 19
00114c  2d026200  dsmadd r4, r4, r6, 0
001150  1f432000  addli r6, zero, 20
001154  0d000026  ew_cfg zero, zero, zero, 19
001158  1d100a00  unlock r20
00115c  7d000300  xsignal r6, 0
001160  1d000a00  lock zero, r20
001164  0d000002  ew_cfg zero, zero, zero, 1
001168  0d110100  ewcoeff_cfg r2, r2, zero, 0
00116c  1f711000  addli r2, zero, 15
001170  0d800304  ew_cfg zero, r7, zero, 2
001174  8d0a0006  ew_cfg r21, zero, zero, 3
001178  8d8a5a27  ew_cfg r21, r21, r21, 19
00117c  ad884800  dsmadd r17, r17, r4, 0
001180  0d000026  ew_cfg zero, zero, zero, 19
001184  1d100a00  unlock r20
001188  7d000100  xsignal r2, 0
00118c  1f212000  addli r2, zero, 18
001190  5b160000  j 176
001194  3bfa00fc  bneq r1, zero, -1380
001198  6342fff5  loadli.w r4,  -1284(r30)
00119c  330b0028  zext_int2long r[23:24], zero
0011a0  1f242000  addli r8, zero, 18
0011a4  1f110000  addli r2, zero, 1
0011a8  33150228  sext_int2long r[11:12], r4
0011ac  0b3b6541  min.sl r[23:24], r[11:12], r[23:24]
0011b0  270b8b00  addli.d r[23:24], r[23:24], 64
0011b4  73306fb5  store.d r[23:24], -1216(r30)
0011b8  6b5b0fb0  load.d r[23:24], -1280(r30)
0011bc  17328b02  sll.d r[5:6], r[23:24], r8
0011c0  6b5b0fb4  load.d r[23:24], -1216(r30)
0011c4  0b3bab48  max.sl r[23:24], r[23:24], r[11:12]
0011c8  73306fb5  store.d r[23:24], -1216(r30)
0011cc  6b5b8f01  load.d r[23:24], 24(r30)
0011d0  0b2b4b10  add.ul r[23:24], r[23:24], r[5:6]
0011d4  73346fb3  store.d r[23:24], -1240(r30)
0011d8  6b5b0fb4  load.d r[23:24], -1216(r30)
0011dc  0b35ab18  sub.sl r[11:12], r[23:24], r[11:12]
0011e0  6b5b8fb0  load.d r[23:24], -1272(r30)
0011e4  7330afb4  store.d r[11:12], -1216(r30)
0011e8  33050828  zext_int2long r[11:12], r16
0011ec  7338afb0  store.d r[11:12], -1264(r30)
0011f0  6b558fb2  load.d r[11:12], -1240(r30)
0011f4  6b520fb1  load.d r[5:6], -1264(r30)
0011f8  0b2b6511  add.ul r[23:24], r[11:12], r[23:24]
0011fc  6b550fb4  load.d r[11:12], -1216(r30)
001200  7d100400  xwait r8, 0
001204  0b354540  min.sl r[11:12], r[11:12], r[5:6]
001208  1f520000  addli r4, zero, 5
00120c  9f020020  addli r5, zero, 4096
001210  1d000200  lock zero, r4
001214  15000000  dma_cfg zero, zero, zero, 0
001218  15000102  dma_cfg zero, r2, zero, 1
00121c  1b312300  slli r2, r6, 2
001220  950b0004  dma_cfg r23, zero, zero, 2
001224  158b2806  dma_cfg r22, r17, r2, 3
001228  1f010004  addli r2, zero, 512
00122c  9502a108  dma_cfg r5, r2, r10, 4
001230  1f150000  addli r10, zero, 1
001234  1f312000  addli r2, zero, 19
001238  35000000  dma_run zero
00123c  1d100200  unlock r4
001240  7d000100  xsignal r2, 0
001244  db3dffff  j -1556
001248  670bdffa  storeli.w r13, -592(r30)
00124c  674f9ffc  storeli.w r9, -268(r30)
001250  7d000000  xsignal zero, 0
001254  bbe00000  bneq r1, zero, 56
001258  9f200000  addli r1, zero, 2
00125c  7d100000  xwait zero, 0
001260  7d100000  xwait zero, 0
001264  7d100000  xwait zero, 0
001268  7d100000  xwait zero, 0
00126c  7d100000  xwait zero, 0
001270  7d100000  xwait zero, 0
001274  7d100000  xwait zero, 0
001278  7d100000  xwait zero, 0
00127c  1d800000  lock zero, r1
001280  0d000020  ew_cfg zero, zero, zero, 16
001284  1d900000  unlock r1
001288  7d400000  xsignal_mode_cfg zero
00128c  9f8e5e0a  addli sp, sp, 1320
001290  00a00300  mfence { lm, sm, gm }
001294  00100000  exit
001298  00100000  exit
00129c  00100000  exit
0012a0  00100000  exit
0012a4  00100000  exit
0012a8  00100000  exit
0012ac  00100000  exit
0012b0  00100000  exit
0012b4  00100000  exit
0012b8  00100000  exit
0012bc  00100000  exit
0012c0  00100000  exit
0012c4  00100000  exit
0012c8  00100000  exit
0012cc  00100000  exit
0012d0  00100000  exit
0012d4  00100000  exit
0012d8  00100000  exit
0012dc  00100000  exit
0012e0  00100000  exit
0012e4  00100000  exit
0012e8  00100000  exit
0012ec  00100000  exit
0012f0  00100000  exit
0012f4  00100000  exit
0012f8  00100000  exit
0012fc  00100000  exit
001300  00100000  exit
001304  00100000  exit
001308  00100000  exit
00130c  00100000  exit
001310  00100000  exit
001314  00100000  exit
001318  00100000  exit
00131c  00100000  exit
001320  00100000  exit
001324  00100000  exit
001328  00100000  exit
00132c  00100000  exit
001330  00100000  exit
001334  00100000  exit
001338  00100000  exit
00133c  00100000  exit
001340  00100000  exit
001344  00100000  exit
001348  00100000  exit
00134c  00100000  exit
001350  00100000  exit
001354  00100000  exit
001358  00100000  exit
00135c  00100000  exit
001360  00100000  exit
001364  00100000  exit
001368  00100000  exit
00136c  00100000  exit
001370  00100000  exit
001374  00100000  exit
001378  00100000  exit
00137c  00100000  exit
001380  00100000  exit
001384  00100000  exit
001388  00100000  exit
00138c  00100000  exit
001390  00100000  exit
001394  00100000  exit
001398  00100000  exit
00139c  00100000  exit
0013a0  00100000  exit
0013a4  00100000  exit
0013a8  00100000  exit
0013ac  00100000  exit
0013b0  00100000  exit
0013b4  00100000  exit
0013b8  00100000  exit
0013bc  00100000  exit
0013c0  00100000  exit
0013c4  00100000  exit
0013c8  00100000  exit
0013cc  00100000  exit
0013d0  00100000  exit
0013d4  00100000  exit
0013d8  00100000  exit
0013dc  00100000  exit
0013e0  00100000  exit
0013e4  00100000  exit
0013e8  00100000  exit
0013ec  00100000  exit
0013f0  00100000  exit
0013f4  00100000  exit
0013f8  00100000  exit
0013fc  00100000  exit
001400  00100000  exit
001404  00100000  exit
001408  00100000  exit
00140c  00100000  exit
001410  00100000  exit
001414  00100000  exit
001418  00100000  exit
00141c  00100000  exit
001420  00100000  exit
001424  00100000  exit
001428  00100000  exit
00142c  00100000  exit
001430  00100000  exit
001434  00100000  exit
001438  00100000  exit
00143c  00100000  exit
001440  00100000  exit
001444  00100000  exit
001448  00100000  exit
00144c  00100000  exit
001450  00100000  exit
001454  00100000  exit
001458  00100000  exit
00145c  00100000  exit
001460  00100000  exit
001464  00100000  exit
001468  00100000  exit
00146c  00100000  exit
001470  00100000  exit
001474  00100000  exit
001478  00100000  exit
00147c  00100000  exit
001480  00100000  exit
001484  00100000  exit
001488  00100000  exit
00148c  00100000  exit
001490  00100000  exit
001494  00100000  exit
001498  00100000  exit
00149c  00100000  exit
0014a0  00100000  exit
0014a4  00100000  exit
0014a8  00100000  exit
0014ac  00100000  exit
0014b0  00100000  exit
0014b4  00100000  exit
0014b8  00100000  exit
0014bc  00100000  exit
0014c0  00100000  exit
0014c4  00100000  exit
0014c8  00100000  exit
0014cc  00100000  exit
0014d0  00100000  exit
0014d4  00100000  exit
