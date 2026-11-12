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
0000b4  9f8e1ef5  addli sp, sp, -1400
0000b8  1f110000  addli r2, zero, 1
0000bc  00390002  core_id r18
0000c0  1f8f7e0a  addli r30, sp, 1336
0000c4  7d400100  xsignal_mode_cfg r2
0000c8  b7100900  beq r18, zero, 36
0000cc  abf1ffff  lui r3, 1048575
0000d0  7d100100  xwait r2, 0
0000d4  7d100100  xwait r2, 0
0000d8  7d100000  xwait zero, 0
0000dc  1b91f1ff  ori r2, r3, 4095
0000e0  80210104  csr_set csr3, r2
0000e4  00d00100  sync_group
0000e8  5bb10000  j 1416
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
000198  7d800100  xsignal r3, 0
00019c  7d800100  xsignal r3, 0
0001a0  7d800100  xsignal r3, 0
0001a4  1f510000  addli r2, zero, 5
0001a8  9f310000  addli r3, zero, 3
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
000320  7d000100  xsignal r2, 0
000324  7d000100  xsignal r2, 0
000328  7d000100  xsignal r2, 0
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
00035c  1f111000  addli r2, zero, 9
000360  9f710000  addli r3, zero, 7
000364  7d000100  xsignal r2, 0
000368  7d000100  xsignal r2, 0
00036c  7d000100  xsignal r2, 0
000370  7d000100  xsignal r2, 0
000374  7d000100  xsignal r2, 0
000378  7d000100  xsignal r2, 0
00037c  7d000100  xsignal r2, 0
000380  7d000100  xsignal r2, 0
000384  7d000100  xsignal r2, 0
000388  7d000100  xsignal r2, 0
00038c  7d000100  xsignal r2, 0
000390  7d000100  xsignal r2, 0
000394  7d000100  xsignal r2, 0
000398  7d000100  xsignal r2, 0
00039c  7d000100  xsignal r2, 0
0003a0  7d000100  xsignal r2, 0
0003a4  7d000100  xsignal r2, 0
0003a8  7d000100  xsignal r2, 0
0003ac  7d000100  xsignal r2, 0
0003b0  7d000100  xsignal r2, 0
0003b4  7d000100  xsignal r2, 0
0003b8  7d000100  xsignal r2, 0
0003bc  7d000100  xsignal r2, 0
0003c0  7d000100  xsignal r2, 0
0003c4  7d000100  xsignal r2, 0
0003c8  7d000100  xsignal r2, 0
0003cc  7d000100  xsignal r2, 0
0003d0  7d000100  xsignal r2, 0
0003d4  7d000100  xsignal r2, 0
0003d8  7d000100  xsignal r2, 0
0003dc  7d000100  xsignal r2, 0
0003e0  7d000100  xsignal r2, 0
0003e4  7d000100  xsignal r2, 0
0003e8  7d000100  xsignal r2, 0
0003ec  7d000100  xsignal r2, 0
0003f0  7d000100  xsignal r2, 0
0003f4  7d000100  xsignal r2, 0
0003f8  7d000100  xsignal r2, 0
0003fc  7d000100  xsignal r2, 0
000400  7d000100  xsignal r2, 0
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
000544  7d000100  xsignal r2, 0
000548  7d000100  xsignal r2, 0
00054c  7d000100  xsignal r2, 0
000550  7d000100  xsignal r2, 0
000554  7d000100  xsignal r2, 0
000558  7d000100  xsignal r2, 0
00055c  7d000100  xsignal r2, 0
000560  7d000100  xsignal r2, 0
000564  7d000100  xsignal r2, 0
000568  7d000100  xsignal r2, 0
00056c  7d000100  xsignal r2, 0
000570  7d000100  xsignal r2, 0
000574  7d000100  xsignal r2, 0
000578  7d000100  xsignal r2, 0
00057c  7d000100  xsignal r2, 0
000580  7d000100  xsignal r2, 0
000584  7d000100  xsignal r2, 0
000588  7d000100  xsignal r2, 0
00058c  7d000100  xsignal r2, 0
000590  7d000100  xsignal r2, 0
000594  7d000100  xsignal r2, 0
000598  7d000100  xsignal r2, 0
00059c  7d000100  xsignal r2, 0
0005a0  7d000100  xsignal r2, 0
0005a4  7d000100  xsignal r2, 0
0005a8  7d000100  xsignal r2, 0
0005ac  7d000100  xsignal r2, 0
0005b0  7d000100  xsignal r2, 0
0005b4  7d000100  xsignal r2, 0
0005b8  7d000100  xsignal r2, 0
0005bc  7d000100  xsignal r2, 0
0005c0  7d000100  xsignal r2, 0
0005c4  7d000100  xsignal r2, 0
0005c8  7d000100  xsignal r2, 0
0005cc  7d000100  xsignal r2, 0
0005d0  7d000100  xsignal r2, 0
0005d4  7d000100  xsignal r2, 0
0005d8  7d000100  xsignal r2, 0
0005dc  7d000100  xsignal r2, 0
0005e0  7d000100  xsignal r2, 0
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
000610  1f511000  addli r2, zero, 13
000614  9f711000  addli r3, zero, 15
000618  7d000100  xsignal r2, 0
00061c  7d000100  xsignal r2, 0
000620  7d000100  xsignal r2, 0
000624  7d000100  xsignal r2, 0
000628  7d000100  xsignal r2, 0
00062c  7d800100  xsignal r3, 0
000630  7d800100  xsignal r3, 0
000634  7d800100  xsignal r3, 0
000638  7d800100  xsignal r3, 0
00063c  7d800100  xsignal r3, 0
000640  1f312000  addli r2, zero, 19
000644  9f412000  addli r3, zero, 20
000648  7d000100  xsignal r2, 0
00064c  7d000100  xsignal r2, 0
000650  7d000100  xsignal r2, 0
000654  7d000100  xsignal r2, 0
000658  7d000100  xsignal r2, 0
00065c  7d800100  xsignal r3, 0
000660  7d800100  xsignal r3, 0
000664  7d800100  xsignal r3, 0
000668  7d800100  xsignal r3, 0
00066c  7d800100  xsignal r3, 0
000670  63015f00  loadli.w r2,  40(r30)
000674  e3415f00  loadli.w r3,  44(r30)
000678  00d20002  load_param_i r4, 1
00067c  e3026f00  loadli.w r5,  48(r30)
000680  80530002  load_param_i r7, 0
000684  2bf3ffff  lui r6, 1048575
000688  e70e0ffe  storeli.w zero, -24(r30)
00068c  670d0ffe  storeli.w zero, -48(r30)
000690  e70b0ffe  storeli.w zero, -72(r30)
000694  670a0ffe  storeli.w zero, -96(r30)
000698  67070ffe  storeli.w zero, -144(r30)
00069c  e74e0ff8  storeli.w zero, -788(r30)
0006a0  e70b0ff8  storeli.w zero, -840(r30)
0006a4  67430ff6  storeli.w zero, -1228(r30)
0006a8  0b912120  mul.s r2, r3, r2
0006ac  9f010200  addli r3, r4, 0
0006b0  8b115150  fmac.s r3, r2, r5
0006b4  8b125120  mul.s r5, r2, r5
0006b8  9ff1f1ff  addli r3, r3, -1
0006bc  8b914130  div.s r3, r3, r4
0006c0  1b12f3ff  ori r4, r6, 4095
0006c4  e74e4ffe  storeli.w r4, -20(r30)
0006c8  670f4ffe  storeli.w r4, -16(r30)
0006cc  674f4ffe  storeli.w r4, -12(r30)
0006d0  e70f4ffe  storeli.w r4, -8(r30)
0006d4  e74f4ffe  storeli.w r4, -4(r30)
0006d8  674d4ffe  storeli.w r4, -44(r30)
0006dc  e70d4ffe  storeli.w r4, -40(r30)
0006e0  e74d4ffe  storeli.w r4, -36(r30)
0006e4  670e4ffe  storeli.w r4, -32(r30)
0006e8  674e4ffe  storeli.w r4, -28(r30)
0006ec  e74b4ffe  storeli.w r4, -68(r30)
0006f0  670c4ffe  storeli.w r4, -64(r30)
0006f4  674c4ffe  storeli.w r4, -60(r30)
0006f8  e70c4ffe  storeli.w r4, -56(r30)
0006fc  e74c4ffe  storeli.w r4, -52(r30)
000700  674a4ffe  storeli.w r4, -92(r30)
000704  e70a4ffe  storeli.w r4, -88(r30)
000708  e74a4ffe  storeli.w r4, -84(r30)
00070c  670b4ffe  storeli.w r4, -80(r30)
000710  674b4ffe  storeli.w r4, -76(r30)
000714  67474ffe  storeli.w r4, -140(r30)
000718  e7074ffe  storeli.w r4, -136(r30)
00071c  e7474ffe  storeli.w r4, -132(r30)
000720  67084ffe  storeli.w r4, -128(r30)
000724  67484ffe  storeli.w r4, -124(r30)
000728  e7084ffe  storeli.w r4, -120(r30)
00072c  e7484ffe  storeli.w r4, -116(r30)
000730  67094ffe  storeli.w r4, -112(r30)
000734  67494ffe  storeli.w r4, -108(r30)
000738  e7094ffe  storeli.w r4, -104(r30)
00073c  e7494ffe  storeli.w r4, -100(r30)
000740  670f4ff8  storeli.w r4, -784(r30)
000744  674f4ff8  storeli.w r4, -780(r30)
000748  e70f4ff8  storeli.w r4, -776(r30)
00074c  e74f4ff8  storeli.w r4, -772(r30)
000750  67004ffa  storeli.w r4, -768(r30)
000754  67404ffa  storeli.w r4, -764(r30)
000758  e7004ffa  storeli.w r4, -760(r30)
00075c  e7404ffa  storeli.w r4, -756(r30)
000760  67014ffa  storeli.w r4, -752(r30)
000764  67414ffa  storeli.w r4, -748(r30)
000768  e7014ffa  storeli.w r4, -744(r30)
00076c  e7414ffa  storeli.w r4, -740(r30)
000770  67024ffa  storeli.w r4, -736(r30)
000774  67424ffa  storeli.w r4, -732(r30)
000778  e7024ffa  storeli.w r4, -728(r30)
00077c  e7424ffa  storeli.w r4, -724(r30)
000780  67034ffa  storeli.w r4, -720(r30)
000784  67434ffa  storeli.w r4, -716(r30)
000788  e7034ffa  storeli.w r4, -712(r30)
00078c  e7434ffa  storeli.w r4, -708(r30)
000790  67044ffa  storeli.w r4, -704(r30)
000794  67444ffa  storeli.w r4, -700(r30)
000798  e7044ffa  storeli.w r4, -696(r30)
00079c  e7444ffa  storeli.w r4, -692(r30)
0007a0  67054ffa  storeli.w r4, -688(r30)
0007a4  67454ffa  storeli.w r4, -684(r30)
0007a8  e7054ffa  storeli.w r4, -680(r30)
0007ac  e7454ffa  storeli.w r4, -676(r30)
0007b0  67064ffa  storeli.w r4, -672(r30)
0007b4  67464ffa  storeli.w r4, -668(r30)
0007b8  e7064ffa  storeli.w r4, -664(r30)
0007bc  e7464ffa  storeli.w r4, -660(r30)
0007c0  67074ffa  storeli.w r4, -656(r30)
0007c4  67474ffa  storeli.w r4, -652(r30)
0007c8  e7074ffa  storeli.w r4, -648(r30)
0007cc  e7474ffa  storeli.w r4, -644(r30)
0007d0  67084ffa  storeli.w r4, -640(r30)
0007d4  67484ffa  storeli.w r4, -636(r30)
0007d8  e7084ffa  storeli.w r4, -632(r30)
0007dc  e7484ffa  storeli.w r4, -628(r30)
0007e0  67094ffa  storeli.w r4, -624(r30)
0007e4  67494ffa  storeli.w r4, -620(r30)
0007e8  e7094ffa  storeli.w r4, -616(r30)
0007ec  e7494ffa  storeli.w r4, -612(r30)
0007f0  670a4ffa  storeli.w r4, -608(r30)
0007f4  674a4ffa  storeli.w r4, -604(r30)
0007f8  e70a4ffa  storeli.w r4, -600(r30)
0007fc  e74a4ffa  storeli.w r4, -596(r30)
000800  670b4ffa  storeli.w r4, -592(r30)
000804  674b4ffa  storeli.w r4, -588(r30)
000808  e70b4ffa  storeli.w r4, -584(r30)
00080c  e74b4ffa  storeli.w r4, -580(r30)
000810  670c4ffa  storeli.w r4, -576(r30)
000814  674c4ffa  storeli.w r4, -572(r30)
000818  e70c4ffa  storeli.w r4, -568(r30)
00081c  e74c4ffa  storeli.w r4, -564(r30)
000820  670d4ffa  storeli.w r4, -560(r30)
000824  674d4ffa  storeli.w r4, -556(r30)
000828  e70d4ffa  storeli.w r4, -552(r30)
00082c  e74d4ffa  storeli.w r4, -548(r30)
000830  670e4ffa  storeli.w r4, -544(r30)
000834  674e4ffa  storeli.w r4, -540(r30)
000838  e70e4ffa  storeli.w r4, -536(r30)
00083c  e74e4ffa  storeli.w r4, -532(r30)
000840  670f4ffa  storeli.w r4, -528(r30)
000844  674f4ffa  storeli.w r4, -524(r30)
000848  e70f4ffa  storeli.w r4, -520(r30)
00084c  e74f4ffa  storeli.w r4, -516(r30)
000850  67004ffc  storeli.w r4, -512(r30)
000854  67404ffc  storeli.w r4, -508(r30)
000858  e7004ffc  storeli.w r4, -504(r30)
00085c  e7404ffc  storeli.w r4, -500(r30)
000860  67014ffc  storeli.w r4, -496(r30)
000864  67414ffc  storeli.w r4, -492(r30)
000868  e7014ffc  storeli.w r4, -488(r30)
00086c  e7414ffc  storeli.w r4, -484(r30)
000870  67024ffc  storeli.w r4, -480(r30)
000874  67424ffc  storeli.w r4, -476(r30)
000878  e7024ffc  storeli.w r4, -472(r30)
00087c  e7424ffc  storeli.w r4, -468(r30)
000880  67034ffc  storeli.w r4, -464(r30)
000884  67434ffc  storeli.w r4, -460(r30)
000888  e7034ffc  storeli.w r4, -456(r30)
00088c  e7434ffc  storeli.w r4, -452(r30)
000890  67044ffc  storeli.w r4, -448(r30)
000894  67444ffc  storeli.w r4, -444(r30)
000898  e7044ffc  storeli.w r4, -440(r30)
00089c  e7444ffc  storeli.w r4, -436(r30)
0008a0  67054ffc  storeli.w r4, -432(r30)
0008a4  67454ffc  storeli.w r4, -428(r30)
0008a8  e7054ffc  storeli.w r4, -424(r30)
0008ac  e7454ffc  storeli.w r4, -420(r30)
0008b0  67064ffc  storeli.w r4, -416(r30)
0008b4  67464ffc  storeli.w r4, -412(r30)
0008b8  e7064ffc  storeli.w r4, -408(r30)
0008bc  e7464ffc  storeli.w r4, -404(r30)
0008c0  67074ffc  storeli.w r4, -400(r30)
0008c4  67474ffc  storeli.w r4, -396(r30)
0008c8  e7074ffc  storeli.w r4, -392(r30)
0008cc  e7474ffc  storeli.w r4, -388(r30)
0008d0  67084ffc  storeli.w r4, -384(r30)
0008d4  67484ffc  storeli.w r4, -380(r30)
0008d8  e7084ffc  storeli.w r4, -376(r30)
0008dc  e7484ffc  storeli.w r4, -372(r30)
0008e0  67094ffc  storeli.w r4, -368(r30)
0008e4  67494ffc  storeli.w r4, -364(r30)
0008e8  e7094ffc  storeli.w r4, -360(r30)
0008ec  e7494ffc  storeli.w r4, -356(r30)
0008f0  670a4ffc  storeli.w r4, -352(r30)
0008f4  674a4ffc  storeli.w r4, -348(r30)
0008f8  e70a4ffc  storeli.w r4, -344(r30)
0008fc  e74a4ffc  storeli.w r4, -340(r30)
000900  670b4ffc  storeli.w r4, -336(r30)
000904  674b4ffc  storeli.w r4, -332(r30)
000908  e70b4ffc  storeli.w r4, -328(r30)
00090c  e74b4ffc  storeli.w r4, -324(r30)
000910  670c4ffc  storeli.w r4, -320(r30)
000914  674c4ffc  storeli.w r4, -316(r30)
000918  e70c4ffc  storeli.w r4, -312(r30)
00091c  e74c4ffc  storeli.w r4, -308(r30)
000920  670d4ffc  storeli.w r4, -304(r30)
000924  674d4ffc  storeli.w r4, -300(r30)
000928  e70d4ffc  storeli.w r4, -296(r30)
00092c  e74d4ffc  storeli.w r4, -292(r30)
000930  670e4ffc  storeli.w r4, -288(r30)
000934  674e4ffc  storeli.w r4, -284(r30)
000938  e70e4ffc  storeli.w r4, -280(r30)
00093c  e74e4ffc  storeli.w r4, -276(r30)
000940  670f4ffc  storeli.w r4, -272(r30)
000944  674f4ffc  storeli.w r4, -268(r30)
000948  e70f4ffc  storeli.w r4, -264(r30)
00094c  e74f4ffc  storeli.w r4, -260(r30)
000950  67004ffe  storeli.w r4, -256(r30)
000954  67404ffe  storeli.w r4, -252(r30)
000958  e7004ffe  storeli.w r4, -248(r30)
00095c  e7404ffe  storeli.w r4, -244(r30)
000960  67014ffe  storeli.w r4, -240(r30)
000964  67414ffe  storeli.w r4, -236(r30)
000968  e7014ffe  storeli.w r4, -232(r30)
00096c  e7414ffe  storeli.w r4, -228(r30)
000970  67024ffe  storeli.w r4, -224(r30)
000974  67424ffe  storeli.w r4, -220(r30)
000978  e7024ffe  storeli.w r4, -216(r30)
00097c  e7424ffe  storeli.w r4, -212(r30)
000980  67034ffe  storeli.w r4, -208(r30)
000984  67434ffe  storeli.w r4, -204(r30)
000988  e7034ffe  storeli.w r4, -200(r30)
00098c  e7434ffe  storeli.w r4, -196(r30)
000990  67044ffe  storeli.w r4, -192(r30)
000994  67444ffe  storeli.w r4, -188(r30)
000998  e7044ffe  storeli.w r4, -184(r30)
00099c  e7444ffe  storeli.w r4, -180(r30)
0009a0  67054ffe  storeli.w r4, -176(r30)
0009a4  67454ffe  storeli.w r4, -172(r30)
0009a8  e7054ffe  storeli.w r4, -168(r30)
0009ac  e7454ffe  storeli.w r4, -164(r30)
0009b0  67064ffe  storeli.w r4, -160(r30)
0009b4  67464ffe  storeli.w r4, -156(r30)
0009b8  e7064ffe  storeli.w r4, -152(r30)
0009bc  e7464ffe  storeli.w r4, -148(r30)
0009c0  e74b4ff8  storeli.w r4, -836(r30)
0009c4  670c4ff8  storeli.w r4, -832(r30)
0009c8  674c4ff8  storeli.w r4, -828(r30)
0009cc  e70c4ff8  storeli.w r4, -824(r30)
0009d0  e74c4ff8  storeli.w r4, -820(r30)
0009d4  670d4ff8  storeli.w r4, -816(r30)
0009d8  674d4ff8  storeli.w r4, -812(r30)
0009dc  e70d4ff8  storeli.w r4, -808(r30)
0009e0  e74d4ff8  storeli.w r4, -804(r30)
0009e4  670e4ff8  storeli.w r4, -800(r30)
0009e8  674e4ff8  storeli.w r4, -796(r30)
0009ec  e70e4ff8  storeli.w r4, -792(r30)
0009f0  e7034ff6  storeli.w r4, -1224(r30)
0009f4  e7434ff6  storeli.w r4, -1220(r30)
0009f8  67044ff6  storeli.w r4, -1216(r30)
0009fc  67444ff6  storeli.w r4, -1212(r30)
000a00  e7044ff6  storeli.w r4, -1208(r30)
000a04  e7444ff6  storeli.w r4, -1204(r30)
000a08  67054ff6  storeli.w r4, -1200(r30)
000a0c  67454ff6  storeli.w r4, -1196(r30)
000a10  e7054ff6  storeli.w r4, -1192(r30)
000a14  e7454ff6  storeli.w r4, -1188(r30)
000a18  67064ff6  storeli.w r4, -1184(r30)
000a1c  67464ff6  storeli.w r4, -1180(r30)
000a20  e7064ff6  storeli.w r4, -1176(r30)
000a24  e7464ff6  storeli.w r4, -1172(r30)
000a28  67074ff6  storeli.w r4, -1168(r30)
000a2c  67474ff6  storeli.w r4, -1164(r30)
000a30  e7074ff6  storeli.w r4, -1160(r30)
000a34  e7474ff6  storeli.w r4, -1156(r30)
000a38  67084ff6  storeli.w r4, -1152(r30)
000a3c  67484ff6  storeli.w r4, -1148(r30)
000a40  e7084ff6  storeli.w r4, -1144(r30)
000a44  e7484ff6  storeli.w r4, -1140(r30)
000a48  67094ff6  storeli.w r4, -1136(r30)
000a4c  67494ff6  storeli.w r4, -1132(r30)
000a50  e7094ff6  storeli.w r4, -1128(r30)
000a54  e7494ff6  storeli.w r4, -1124(r30)
000a58  670a4ff6  storeli.w r4, -1120(r30)
000a5c  674a4ff6  storeli.w r4, -1116(r30)
000a60  e70a4ff6  storeli.w r4, -1112(r30)
000a64  e74a4ff6  storeli.w r4, -1108(r30)
000a68  670b4ff6  storeli.w r4, -1104(r30)
000a6c  674b4ff6  storeli.w r4, -1100(r30)
000a70  e70b4ff6  storeli.w r4, -1096(r30)
000a74  e74b4ff6  storeli.w r4, -1092(r30)
000a78  670c4ff6  storeli.w r4, -1088(r30)
000a7c  674c4ff6  storeli.w r4, -1084(r30)
000a80  e70c4ff6  storeli.w r4, -1080(r30)
000a84  e74c4ff6  storeli.w r4, -1076(r30)
000a88  670d4ff6  storeli.w r4, -1072(r30)
000a8c  674d4ff6  storeli.w r4, -1068(r30)
000a90  e70d4ff6  storeli.w r4, -1064(r30)
000a94  e74d4ff6  storeli.w r4, -1060(r30)
000a98  670e4ff6  storeli.w r4, -1056(r30)
000a9c  674e4ff6  storeli.w r4, -1052(r30)
000aa0  e70e4ff6  storeli.w r4, -1048(r30)
000aa4  e74e4ff6  storeli.w r4, -1044(r30)
000aa8  670f4ff6  storeli.w r4, -1040(r30)
000aac  674f4ff6  storeli.w r4, -1036(r30)
000ab0  e70f4ff6  storeli.w r4, -1032(r30)
000ab4  e74f4ff6  storeli.w r4, -1028(r30)
000ab8  67004ff8  storeli.w r4, -1024(r30)
000abc  67404ff8  storeli.w r4, -1020(r30)
000ac0  e7004ff8  storeli.w r4, -1016(r30)
000ac4  e7404ff8  storeli.w r4, -1012(r30)
000ac8  67014ff8  storeli.w r4, -1008(r30)
000acc  67414ff8  storeli.w r4, -1004(r30)
000ad0  e7014ff8  storeli.w r4, -1000(r30)
000ad4  e7414ff8  storeli.w r4, -996(r30)
000ad8  67024ff8  storeli.w r4, -992(r30)
000adc  67424ff8  storeli.w r4, -988(r30)
000ae0  e7024ff8  storeli.w r4, -984(r30)
000ae4  e7424ff8  storeli.w r4, -980(r30)
000ae8  67034ff8  storeli.w r4, -976(r30)
000aec  67434ff8  storeli.w r4, -972(r30)
000af0  e7034ff8  storeli.w r4, -968(r30)
000af4  e7434ff8  storeli.w r4, -964(r30)
000af8  67044ff8  storeli.w r4, -960(r30)
000afc  67444ff8  storeli.w r4, -956(r30)
000b00  e7044ff8  storeli.w r4, -952(r30)
000b04  e7444ff8  storeli.w r4, -948(r30)
000b08  67054ff8  storeli.w r4, -944(r30)
000b0c  67454ff8  storeli.w r4, -940(r30)
000b10  e7054ff8  storeli.w r4, -936(r30)
000b14  e7454ff8  storeli.w r4, -932(r30)
000b18  67064ff8  storeli.w r4, -928(r30)
000b1c  67464ff8  storeli.w r4, -924(r30)
000b20  e7064ff8  storeli.w r4, -920(r30)
000b24  e7464ff8  storeli.w r4, -916(r30)
000b28  67074ff8  storeli.w r4, -912(r30)
000b2c  67474ff8  storeli.w r4, -908(r30)
000b30  e7074ff8  storeli.w r4, -904(r30)
000b34  e7474ff8  storeli.w r4, -900(r30)
000b38  67084ff8  storeli.w r4, -896(r30)
000b3c  67484ff8  storeli.w r4, -892(r30)
000b40  e7084ff8  storeli.w r4, -888(r30)
000b44  e7484ff8  storeli.w r4, -884(r30)
000b48  67094ff8  storeli.w r4, -880(r30)
000b4c  67494ff8  storeli.w r4, -876(r30)
000b50  e7094ff8  storeli.w r4, -872(r30)
000b54  e7494ff8  storeli.w r4, -868(r30)
000b58  670a4ff8  storeli.w r4, -864(r30)
000b5c  674a4ff8  storeli.w r4, -860(r30)
000b60  e70a4ff8  storeli.w r4, -856(r30)
000b64  e74a4ff8  storeli.w r4, -852(r30)
000b68  670b4ff8  storeli.w r4, -848(r30)
000b6c  674b4ff8  storeli.w r4, -844(r30)
000b70  0b917120  mul.s r2, r3, r7
000b74  8b917150  fmac.s r3, r3, r7
000b78  8b915140  min.s r3, r3, r5
000b7c  4bff2102  ble.s r3, r2, 2012
000b80  b3910128  sext_int2long r[4:5], r3
000b84  b3120128  sext_int2long r[6:7], r2
000b88  e306dfff  loadli.w r13,  -24(r30)
000b8c  630aafff  loadli.w r20,  -48(r30)
000b90  e3037fff  loadli.w r7,  -72(r30)
000b94  e30d4fff  loadli.w r27,  -96(r30)
000b98  6305effe  loadli.w r10,  -144(r30)
000b9c  e3057ff9  loadli.w r11,  -840(r30)
000ba0  6346dff9  loadli.w r12,  -788(r30)
000ba4  e3476ff6  loadli.w r15,  -1228(r30)
000ba8  1f080001  addli r16, zero, 128
000bac  9f082000  addli r17, zero, 16
000bb0  9f5c0000  addli r25, zero, 5
000bb4  9f4a0000  addli r21, zero, 4
000bb8  9f2b0000  addli r23, zero, 2
000bbc  9f00c000  addli r1, zero, 96
000bc0  9f491000  addli r19, zero, 12
000bc4  1f0b8000  addli r22, zero, 64
000bc8  1f0d0000  addli r26, zero, 0
000bcc  1f1e0000  addli r28, zero, 1
000bd0  73303fae  store.d r[4:5], -1312(r30)
000bd4  9f71f01f  addli r3, zero, 4095
000bd8  2b820d00  lui r4, 216
000bdc  2b01feff  lui r2, 1048544
000be0  733c2fae  store.d r[3:4], -1288(r30)
000be4  2b610e00  lui r2, 230
000be8  1b1101a0  ori r2, r2, 2560
000bec  e74d2ff4  storeli.w r2, -1316(r30)
000bf0  1b11d2b4  ori r2, r4, 2893
000bf4  2bf27fff  lui r4, 1046527
000bf8  e70d2ff4  storeli.w r2, -1320(r30)
000bfc  2b611300  lui r2, 310
000c00  1b1101a0  ori r2, r2, 2560
000c04  674d2ff4  storeli.w r2, -1324(r30)
000c08  1b11f2ff  ori r2, r4, 4095
000c0c  2bf20100  lui r4, 31
000c10  670d2ff4  storeli.w r2, -1328(r30)
000c14  2bf17f7f  lui r2, 522239
000c18  1b11f1ff  ori r2, r2, 4095
000c1c  e74c2ff4  storeli.w r2, -1332(r30)
000c20  1b11f2ff  ori r2, r4, 4095
000c24  67032ff6  storeli.w r2, -1232(r30)
000c28  5b100000  j 128
000c2c  eb520f01  load.d r[6:7], 16(r30)
000c30  6b510fb0  load.d r[3:4], -1280(r30)
000c34  9f491000  addli r19, zero, 12
000c38  9f5c0000  addli r25, zero, 5
000c3c  8ba22210  add.ul r[6:7], r[6:7], r[3:4]
000c40  9f511000  addli r3, zero, 13
000c44  1f010004  addli r2, zero, 512
000c48  7d900100  xwait r3, 0
000c4c  1d800a00  lock zero, r21
000c50  9bb12600  slli r3, r13, 2
000c54  15000000  dma_cfg zero, zero, zero, 0
000c58  15000304  dma_cfg zero, r6, zero, 2
000c5c  15823206  dma_cfg r4, r5, r3, 3
000c60  15019108  dma_cfg r2, r2, r9, 4
000c64  35000000  dma_run zero
000c68  1d900a00  unlock r21
000c6c  e3433ff6  loadli.w r7,  -1252(r30)
000c70  7d800900  xsignal r19, 0
000c74  e3464ff6  loadli.w r13,  -1244(r30)
000c78  630a4ff6  loadli.w r20,  -1248(r30)
000c7c  9f930300  addli r7, r7, 1
000c80  634d1ff6  loadli.w r26,  -1268(r30)
000c84  00390002  core_id r18
000c88  eb520fb1  load.d r[6:7], -1264(r30)
000c8c  eb510fae  load.d r[4:5], -1312(r30)
000c90  9f9d0d00  addli r27, r27, 1
000c94  1f1a0a00  addli r20, r20, 1
000c98  9f960600  addli r13, r13, 1
000c9c  a7920200  addli.d r[6:7], r[6:7], 1
000ca0  93b13204  setlt.sl r3, r[6:7], r[4:5]
000ca4  b7ca0102  beq r3, zero, 1712
000ca8  1f640000  addli r8, zero, 6
000cac  e701bff7  storeli.w r27, -1256(r30)
000cb0  e7417ff6  storeli.w r7, -1252(r30)
000cb4  67024ff7  storeli.w r20, -1248(r30)
000cb8  3b305901  bneq r18, r21, 12
000cbc  9f311000  addli r3, zero, 11
000cc0  7d900100  xwait r3, 0
000cc4  e3016f00  loadli.w r3,  48(r30)
000cc8  73385fb0  store.d r[6:7], -1264(r30)
000ccc  8b139d39  mod.s r7, r26, r25
000cd0  1f1d0d00  addli r26, r26, 1
000cd4  6742dff6  storeli.w r13, -1244(r30)
000cd8  1f0c0000  addli r24, zero, 0
000cdc  1f0a0000  addli r20, zero, 0
000ce0  e740aff7  storeli.w r26, -1268(r30)
000ce4  0b923230  div.s r4, r5, r3
000ce8  e3415f00  loadli.w r3,  44(r30)
000cec  0b123230  div.s r4, r4, r3
000cf0  9f011000  addli r3, zero, 8
000cf4  8b120231  div.s r5, r4, r16
000cf8  1bb33200  slli r6, r5, 3
000cfc  9bb27200  slli r5, r5, 7
000d00  8b946818  sub.s r9, r17, r6
000d04  8b125218  sub.s r5, r4, r5
000d08  8b943440  min.s r9, r9, r3
000d0c  9f710000  addli r3, zero, 7
000d10  0b129238  mod.s r4, r4, r9
000d14  8b949230  div.s r9, r5, r9
000d18  9bb20301  slli r5, r7, 16
000d1c  0b124310  add.s r4, r6, r4
000d20  33830428  zext_int2long r[7:8], r9
000d24  1bb17400  slli r2, r9, 7
000d28  17333302  sll.d r[7:8], r[7:8], r3
000d2c  330d0228  zext_int2long r[27:28], r4
000d30  9f511000  addli r3, zero, 13
000d34  e7002ff6  storeli.w r2, -1272(r30)
000d38  1b317200  slli r2, r4, 7
000d3c  97367303  sll.d r[14:15], r[7:8], r23
000d40  17333d02  sll.d r[7:8], r[27:28], r3
000d44  eb518f00  load.d r[4:5], 8(r30)
000d48  e74e2ff4  storeli.w r2, -1300(r30)
000d4c  7338afaf  store.d r[27:28], -1296(r30)
000d50  7330dfb0  store.d r[14:15], -1280(r30)
000d54  0ba1d110  add.ul r[3:4], r[4:5], r[14:15]
000d58  73342fb2  store.d r[3:4], -1240(r30)
000d5c  eb518faf  load.d r[4:5], -1288(r30)
000d60  170d3302  and.d r[27:28], r[7:8], r[4:5]
000d64  db0f0000  j 124
000d68  0bb92619  sub.sl r[19:20], r[14:15], r[19:20]
000d6c  b3010b28  zext_int2long r[4:5], r22
000d70  9f00000f  addli r1, zero, 1920
000d74  97b67603  sll.d r[14:15], r[14:15], r23
000d78  1f160600  addli r12, r12, 1
000d7c  8f113960  div.sl r[4:5], r[19:20], r[4:5]
000d80  33890028  zext_int2long r[19:20], r1
000d84  9f300000  addli r1, zero, 3
000d88  7d900000  xwait r1, 0
000d8c  eb500f00  load.d r[2:3], 0(r30)
000d90  1d800a00  lock zero, r21
000d94  15000000  dma_cfg zero, zero, zero, 0
000d98  8ba6d010  add.ul r[14:15], r[2:3], r[14:15]
000d9c  9f000002  addli r1, zero, 256
000da0  15000704  dma_cfg zero, r14, zero, 2
000da4  95846607  dma_cfg r9, r13, r22, 3
000da8  0bb92141  min.sl r[19:20], r[4:5], r[19:20]
000dac  8b313918  sub.sl r[4:5], r[19:20], r[4:5]
000db0  9f491000  addli r19, zero, 12
000db4  00390002  core_id r18
000db8  9f810101  addli r3, r3, 128
000dbc  15883008  dma_cfg r16, r1, r3, 4
000dc0  35000000  dma_run zero
000dc4  1d900a00  unlock r21
000dc8  7d800b00  xsignal r23, 0
000dcc  9f00c000  addli r1, zero, 96
000dd0  1f1c0c00  addli r24, r24, 1
000dd4  1f150500  addli r10, r10, 1
000dd8  b7385c01  beq r24, r21, 556
000ddc  1f1a0a00  addli r20, r20, 1
000de0  0b923539  mod.s r4, r11, r19
000de4  8b941738  mod.s r9, r15, r1
000de8  2b010500  lui r2, 80
000dec  9f970700  addli r15, r15, 1
000df0  9f950500  addli r11, r11, 1
000df4  9b36e200  slli r13, r4, 14
000df8  1bb2d400  slli r4, r9, 13
000dfc  8b942610  add.s r9, r13, r2
000e00  b7507901  beq r18, r23, 52
000e04  b3060c28  zext_int2long r[14:15], r24
000e08  00310002  core_id r2
000e0c  bb11c101  bneq r2, r28, 100
000e10  e3016ff6  loadli.w r3,  -1232(r30)
000e14  97b65603  sll.d r[14:15], r[14:15], r21
000e18  8ba66610  add.ul r[14:15], r[14:15], r[7:8]
000e1c  33890128  zext_int2long r[19:20], r3
000e20  1322d904  setlt.ul r4, r[19:20], r[14:15]
000e24  27090d00  addli.d r[19:20], r[27:28], 0
000e28  3b0d02fe  bneq r4, zero, -192
000e2c  33090028  zext_int2long r[19:20], zero
000e30  5be7ffff  j -200
000e34  7d900b00  xwait r23, 0
000e38  7d900c00  xwait r25, 0
000e3c  1d000000  lock zero, zero
000e40  1f014000  addli r2, zero, 32
000e44  1f160600  addli r12, r12, 1
000e48  810b0000  ds_cfg r23, zero, 0
000e4c  01010002  ds_cfg r2, zero, 1
000e50  1f310000  addli r2, zero, 3
000e54  8108001c  ds_cfg r17, zero, 14
000e58  0108001a  ds_cfg r16, zero, 13
000e5c  21921403  shuffle_batch r4, r9, r17, 1
000e60  1d100000  unlock zero
000e64  7d000100  xsignal r2, 0
000e68  7d800a00  xsignal r21, 0
000e6c  dbecffff  j -156
000e70  1f014001  addli r2, zero, 160
000e74  9f341000  addli r9, zero, 11
000e78  8b112638  mod.s r3, r12, r2
000e7c  0b199538  mod.s r18, r10, r9
000e80  2b010800  lui r2, 128
000e84  1f160600  addli r12, r12, 1
000e88  9bb4d100  slli r9, r3, 13
000e8c  9b31d900  slli r3, r18, 13
000e90  00390002  core_id r18
000e94  8b9c2110  add.s r25, r3, r2
000e98  9f710000  addli r3, zero, 7
000e9c  b7013900  beq r18, r3, 96
000ea0  00310002  core_id r2
000ea4  1f690000  addli r18, zero, 6
000ea8  3b522101  bneq r2, r18, 148
000eac  9f740000  addli r9, zero, 7
000eb0  1f112000  addli r2, zero, 17
000eb4  7d900400  xwait r9, 0
000eb8  6b548fb2  load.d r[9:10], -1240(r30)
000ebc  97b12602  sll.d r[4:5], r[14:15], r2
000ec0  1d800a00  lock zero, r21
000ec4  1f010004  addli r2, zero, 512
000ec8  15000000  dma_cfg zero, zero, zero, 0
000ecc  8b213410  add.ul r[4:5], r[9:10], r[4:5]
000ed0  1f640000  addli r8, zero, 6
000ed4  15000204  dma_cfg zero, r4, zero, 2
000ed8  958c2106  dma_cfg r25, r3, r2, 3
000edc  9f010040  addli r3, zero, 8192
000ee0  9f5c0000  addli r25, zero, 5
000ee4  15811109  dma_cfg r2, r3, r17, 4
000ee8  35000000  dma_run zero
000eec  1d900a00  unlock r21
000ef0  7d000900  xsignal r18, 0
000ef4  00390002  core_id r18
000ef8  5bdbffff  j -296
000efc  1f111000  addli r2, zero, 9
000f00  7d100400  xwait r8, 0
000f04  9f710000  addli r3, zero, 7
000f08  7d100100  xwait r2, 0
000f0c  1d000000  lock zero, zero
000f10  810b0000  ds_cfg r23, zero, 0
000f14  01080002  ds_cfg r16, zero, 1
000f18  8108001c  ds_cfg r17, zero, 14
000f1c  0108001a  ds_cfg r16, zero, 13
000f20  c1841c05  shuffle_coa r9, r25, r17, 2
000f24  9f5c0000  addli r25, zero, 5
000f28  1d100000  unlock zero
000f2c  7d800100  xsignal r3, 0
000f30  9f011000  addli r3, zero, 8
000f34  7d800100  xsignal r3, 0
000f38  5bd3ffff  j -360
000f3c  1f640000  addli r8, zero, 6
000f40  00390002  core_id r18
000f44  bb325901  bneq r18, r21, 172
000f48  9f011000  addli r3, zero, 8
000f4c  9f1c0000  addli r25, zero, 1
000f50  9f160000  addli r13, zero, 1
000f54  1f070000  addli r14, zero, 0
000f58  7d900a00  xwait r21, 0
000f5c  7d900100  xwait r3, 0
000f60  b7700a00  beq r20, zero, 60
000f64  9b31c700  slli r3, r14, 12
000f68  1b378700  slli r14, r14, 8
000f6c  1d800c00  lock zero, r25
000f70  098b0801  mm_cfg r22, r17, r16, 0
000f74  97919100  or r3, r3, r9
000f78  17175700  or r14, r14, r5
000f7c  898c9a05  mm_cfg r25, r21, r25, 2
000f80  29173210  mm_acc r14, r4, r3, 8
000f84  9b811600  andi r3, r13, 1
000f88  1f170000  addli r14, zero, 1
000f8c  9f060000  addli r13, zero, 0
000f90  1d900c00  unlock r25
000f94  3bcf01fe  bneq r3, zero, -48
000f98  5b070000  j 56
000f9c  9b31c700  slli r3, r14, 12
000fa0  1b378700  slli r14, r14, 8
000fa4  1d800c00  lock zero, r25
000fa8  098b0801  mm_cfg r22, r17, r16, 0
000fac  97919100  or r3, r3, r9
000fb0  17175700  or r14, r14, r5
000fb4  898c9a05  mm_cfg r25, r21, r25, 2
000fb8  29073210  mm r14, r4, r3, 8
000fbc  9b811600  andi r3, r13, 1
000fc0  1f170000  addli r14, zero, 1
000fc4  9f060000  addli r13, zero, 0
000fc8  1d900c00  unlock r25
000fcc  3bcf01fe  bneq r3, zero, -48
000fd0  9f5c0000  addli r25, zero, 5
000fd4  1f1c0c00  addli r24, r24, 1
000fd8  1f150500  addli r10, r10, 1
000fdc  1f111000  addli r2, zero, 9
000fe0  7d800c00  xsignal r25, 0
000fe4  7d000100  xsignal r2, 0
000fe8  bb575cff  bneq r24, r21, -524
000fec  db030000  j 28
000ff0  1f1c0c00  addli r24, r24, 1
000ff4  1f150500  addli r10, r10, 1
000ff8  9f5c0000  addli r25, zero, 5
000ffc  bb075cff  bneq r24, r21, -544
001000  5b020000  j 16
001004  3b305901  bneq r18, r21, 12
001008  1f211000  addli r2, zero, 10
00100c  7d000100  xsignal r2, 0
001010  1f01000f  addli r2, zero, 1920
001014  e30d3ff6  loadli.w r27,  -1256(r30)
001018  00340002  core_id r8
00101c  1f5d0000  addli r26, zero, 5
001020  33090128  zext_int2long r[19:20], r2
001024  63011ff6  loadli.w r2,  -1272(r30)
001028  8b949d39  mod.s r9, r27, r25
00102c  330c0828  zext_int2long r[25:26], r16
001030  b3010128  zext_int2long r[4:5], r2
001034  2b610900  lui r2, 150
001038  0ba32141  min.ul r[7:8], r[4:5], r[19:20]
00103c  27030301  addli.d r[7:8], r[7:8], 128
001040  0b233348  max.ul r[7:8], r[7:8], r[4:5]
001044  8b313318  sub.sl r[4:5], r[7:8], r[4:5]
001048  1bb39400  slli r6, r9, 9
00104c  9f140000  addli r9, zero, 1
001050  8ba68141  min.ul r[14:15], r[4:5], r[25:26]
001054  0b122310  add.s r4, r6, r2
001058  375f94fc  beq r8, r9, -1068
00105c  e3433ff6  loadli.w r7,  -1252(r30)
001060  1b1301a0  ori r6, r2, 2560
001064  630a4ff6  loadli.w r20,  -1248(r30)
001068  1f310000  addli r2, zero, 3
00106c  8b91a339  mod.s r3, r7, r26
001070  9f930300  addli r7, r7, 1
001074  9bb10101  slli r3, r3, 16
001078  0b936110  add.s r6, r3, r6
00107c  3b422400  bneq r8, r2, 144
001080  1f211000  addli r2, zero, 10
001084  9f491000  addli r19, zero, 12
001088  1f840300  addli r8, r7, 0
00108c  9f030000  addli r7, zero, 0
001090  7d100100  xwait r2, 0
001094  1f711000  addli r2, zero, 15
001098  7d900900  xwait r19, 0
00109c  7d100100  xwait r2, 0
0010a0  1d800b00  lock zero, r23
0010a4  2b01803f  lui r2, 260096
0010a8  0d000002  ew_cfg zero, zero, zero, 1
0010ac  0d110100  ewcoeff_cfg r2, r2, zero, 0
0010b0  1f71f000  addli r2, zero, 127
0010b4  0d000104  ew_cfg zero, r2, zero, 2
0010b8  2b010100  lui r2, 16
0010bc  8d040006  ew_cfg r9, zero, zero, 3
0010c0  634d1ff6  loadli.w r26,  -1268(r30)
0010c4  8b117310  add.s r3, r6, r7
0010c8  8b947210  add.s r9, r5, r7
0010cc  9f830304  addli r7, r7, 512
0010d0  ad814400  dsmadd r3, r9, r4, 0
0010d4  bbcf23fe  bneq r7, r2, -16
0010d8  9f311000  addli r3, zero, 11
0010dc  1d900b00  unlock r23
0010e0  1f112000  addli r2, zero, 17
0010e4  9f5c0000  addli r25, zero, 5
0010e8  7d800100  xsignal r3, 0
0010ec  9f511000  addli r3, zero, 13
0010f0  7d800100  xsignal r3, 0
0010f4  7d800800  xsignal r17, 0
0010f8  7d000100  xsignal r2, 0
0010fc  1f611000  addli r2, zero, 14
001100  7d000100  xsignal r2, 0
001104  e3464ff6  loadli.w r13,  -1244(r30)
001108  db320000  j 404
00110c  8b11aa39  mod.s r3, r20, r26
001110  6342bff5  loadli.w r4,  -1316(r30)
001114  9bb10101  slli r3, r3, 16
001118  8b924110  add.s r5, r3, r4
00111c  3b36a401  bneq r8, r26, 396
001120  1f611000  addli r2, zero, 14
001124  1f840300  addli r8, r7, 0
001128  9f030000  addli r7, zero, 0
00112c  9f5c0000  addli r25, zero, 5
001130  2b070100  lui r14, 16
001134  7d100100  xwait r2, 0
001138  1f312000  addli r2, zero, 19
00113c  7d100100  xwait r2, 0
001140  1d800b00  lock zero, r23
001144  1f310000  addli r2, zero, 3
001148  0d000002  ew_cfg zero, zero, zero, 1
00114c  eb518faf  load.d r[4:5], -1288(r30)
001150  0d000204  ew_cfg zero, r4, zero, 2
001154  9f511000  addli r3, zero, 13
001158  2b0200c1  lui r4, 790528
00115c  8d0a0006  ew_cfg r21, zero, zero, 3
001160  8d8a0a26  ew_cfg r21, r21, zero, 19
001164  8d010014  ew_cfg r3, zero, zero, 10
001168  e301bff5  loadli.w r3,  -1320(r30)
00116c  8d8b3416  ew_cfg r23, r9, r3, 11
001170  0d00201a  ew_cfg zero, zero, r2, 13
001174  2b81ff40  lui r2, 266232
001178  e3464ff6  loadli.w r13,  -1244(r30)
00117c  0d822a1c  ew_cfg r4, r21, r2, 14
001180  2b01803f  lui r2, 260096
001184  0d00011e  ew_cfg zero, r2, zero, 15
001188  8b91a639  mod.s r3, r13, r26
00118c  1f412000  addli r2, zero, 20
001190  cd220300  sslut r5, r6, 0
001194  0d000014  ew_cfg zero, zero, zero, 10
001198  0d000026  ew_cfg zero, zero, zero, 19
00119c  1d900b00  unlock r23
0011a0  6342aff5  loadli.w r4,  -1324(r30)
0011a4  7d900800  xwait r17, 0
0011a8  7d100100  xwait r2, 0
0011ac  1d800b00  lock zero, r23
0011b0  1f71f000  addli r2, zero, 127
0011b4  0d000002  ew_cfg zero, zero, zero, 1
0011b8  9bb10101  slli r3, r3, 16
0011bc  0d000104  ew_cfg zero, r2, zero, 2
0011c0  8d040006  ew_cfg r9, zero, zero, 3
0011c4  0b924110  add.s r4, r3, r4
0011c8  e301aff5  loadli.w r3,  -1328(r30)
0011cc  8d110000  ewcoeff_cfg r3, zero, zero, 0
0011d0  8b117210  add.s r3, r4, r7
0011d4  8b147310  add.s r9, r6, r7
0011d8  9f830304  addli r7, r7, 512
0011dc  ada19400  dscmpnsel r3, r9, r9, 0
0011e0  bbcfe3fe  bneq r7, r14, -16
0011e4  1d900b00  unlock r23
0011e8  1f71f000  addli r2, zero, 127
0011ec  9f030000  addli r7, zero, 0
0011f0  1d800b00  lock zero, r23
0011f4  0d000002  ew_cfg zero, zero, zero, 1
0011f8  0d000104  ew_cfg zero, r2, zero, 2
0011fc  1f110000  addli r2, zero, 1
001200  0d010006  ew_cfg r2, zero, zero, 3
001204  e3419ff5  loadli.w r3,  -1332(r30)
001208  8d110000  ewcoeff_cfg r3, zero, zero, 0
00120c  634d1ff6  loadli.w r26,  -1268(r30)
001210  8b117210  add.s r3, r4, r7
001214  9f830304  addli r7, r7, 512
001218  ada13108  dscmpnsel r3, r3, r3, 4
00121c  bbdfe3fe  bneq r7, r14, -12
001220  1f112000  addli r2, zero, 17
001224  1d900b00  unlock r23
001228  ab0180bf  lui r3, 784384
00122c  7d100100  xwait r2, 0
001230  1d800b00  lock zero, r23
001234  2b01803f  lui r2, 260096
001238  0d000002  ew_cfg zero, zero, zero, 1
00123c  0d910100  ewcoeff_cfg r2, r3, zero, 0
001240  9f412000  addli r3, zero, 20
001244  6b598faf  load.d r[19:20], -1288(r30)
001248  0d800904  ew_cfg zero, r19, zero, 2
00124c  8d0a0006  ew_cfg r21, zero, zero, 3
001250  8d8a5a27  ew_cfg r21, r21, r21, 19
001254  2d034300  dsmadd r6, r6, r4, 0
001258  0d000026  ew_cfg zero, zero, zero, 19
00125c  1d900b00  unlock r23
001260  7d800100  xsignal r3, 0
001264  1d800b00  lock zero, r23
001268  0d000002  ew_cfg zero, zero, zero, 1
00126c  0d110100  ewcoeff_cfg r2, r2, zero, 0
001270  1f711000  addli r2, zero, 15
001274  0d800904  ew_cfg zero, r19, zero, 2
001278  9f491000  addli r19, zero, 12
00127c  8d0a0006  ew_cfg r21, zero, zero, 3
001280  8d8a5a27  ew_cfg r21, r21, r21, 19
001284  ad826200  dsmadd r5, r5, r6, 0
001288  0d000026  ew_cfg zero, zero, zero, 19
00128c  1d900b00  unlock r23
001290  7d000100  xsignal r2, 0
001294  1f212000  addli r2, zero, 18
001298  7d000100  xsignal r2, 0
00129c  00390002  core_id r18
0012a0  9f030400  addli r7, r8, 0
0012a4  db3cffff  j -1564
0012a8  37400400  beq r8, zero, 16
0012ac  e3464ff6  loadli.w r13,  -1244(r30)
0012b0  9f5c0000  addli r25, zero, 5
0012b4  5b130000  j 152
0012b8  6341dff5  loadli.w r2,  -1300(r30)
0012bc  1f8d0300  addli r26, r7, 0
0012c0  6b530faf  load.d r[7:8], -1296(r30)
0012c4  9f540000  addli r9, zero, 5
0012c8  b3110128  sext_int2long r[4:5], r2
0012cc  1f412000  addli r2, zero, 20
0012d0  17332302  sll.d r[7:8], r[7:8], r2
0012d4  1f212000  addli r2, zero, 18
0012d8  0bb92141  min.sl r[19:20], r[4:5], r[19:20]
0012dc  73346fb2  store.d r[7:8], -1240(r30)
0012e0  7d100100  xwait r2, 0
0012e4  1d800400  lock zero, r9
0012e8  6b538f01  load.d r[7:8], 24(r30)
0012ec  27090901  addli.d r[19:20], r[19:20], 128
0012f0  1f110000  addli r2, zero, 1
0012f4  6b548fb2  load.d r[9:10], -1240(r30)
0012f8  0b393948  max.sl r[19:20], r[19:20], r[4:5]
0012fc  0b238310  add.ul r[7:8], r[7:8], r[9:10]
001300  6b540fb0  load.d r[9:10], -1280(r30)
001304  15000000  dma_cfg zero, zero, zero, 0
001308  8b313918  sub.sl r[4:5], r[19:20], r[4:5]
00130c  15000102  dma_cfg zero, r2, zero, 1
001310  1f010004  addli r2, zero, 512
001314  8bb18141  min.sl r[4:5], r[4:5], r[25:26]
001318  9f5c0000  addli r25, zero, 5
00131c  0b238310  add.ul r[7:8], r[7:8], r[9:10]
001320  9bb42600  slli r9, r13, 2
001324  95030004  dma_cfg r7, zero, zero, 2
001328  15839206  dma_cfg r6, r5, r9, 3
00132c  9f020040  addli r5, zero, 8192
001330  9f030d00  addli r7, r26, 0
001334  95023108  dma_cfg r5, r2, r3, 4
001338  1f312000  addli r2, zero, 19
00133c  35000000  dma_run zero
001340  1d900c00  unlock r25
001344  7d000100  xsignal r2, 0
001348  e3464ff6  loadli.w r13,  -1244(r30)
00134c  9f491000  addli r19, zero, 12
001350  5b26ffff  j -1744
001354  e74ecff8  storeli.w r12, -788(r30)
001358  7d000000  xsignal zero, 0
00135c  bb600900  bneq r18, zero, 56
001360  9f200000  addli r1, zero, 2
001364  7d100000  xwait zero, 0
001368  7d100000  xwait zero, 0
00136c  7d100000  xwait zero, 0
001370  7d100000  xwait zero, 0
001374  7d100000  xwait zero, 0
001378  7d100000  xwait zero, 0
00137c  7d100000  xwait zero, 0
001380  7d100000  xwait zero, 0
001384  1d800000  lock zero, r1
001388  0d000020  ew_cfg zero, zero, zero, 16
00138c  1d900000  unlock r1
001390  7d400000  xsignal_mode_cfg zero
001394  9f8e7e0a  addli sp, sp, 1336
001398  00a00300  mfence { lm, sm, gm }
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
0014d8  00100000  exit
0014dc  00100000  exit
0014e0  00100000  exit
0014e4  00100000  exit
0014e8  00100000  exit
0014ec  00100000  exit
0014f0  00100000  exit
0014f4  00100000  exit
0014f8  00100000  exit
0014fc  00100000  exit
001500  00100000  exit
001504  00100000  exit
001508  00100000  exit
00150c  00100000  exit
001510  00100000  exit
001514  00100000  exit
001518  00100000  exit
00151c  00100000  exit
001520  00100000  exit
001524  00100000  exit
001528  00100000  exit
00152c  00100000  exit
001530  00100000  exit
001534  00100000  exit
001538  00100000  exit
00153c  00100000  exit
001540  00100000  exit
001544  00100000  exit
001548  00100000  exit
00154c  00100000  exit
001550  00100000  exit
001554  00100000  exit
001558  00100000  exit
00155c  00100000  exit
001560  00100000  exit
001564  00100000  exit
001568  00100000  exit
00156c  00100000  exit
001570  00100000  exit
001574  00100000  exit
001578  00100000  exit
00157c  00100000  exit
001580  00100000  exit
001584  00100000  exit
001588  00100000  exit
00158c  00100000  exit
001590  00100000  exit
001594  00100000  exit
001598  00100000  exit
00159c  00100000  exit
0015a0  00100000  exit
0015a4  00100000  exit
0015a8  00100000  exit
0015ac  00100000  exit
0015b0  00100000  exit
0015b4  00100000  exit
0015b8  00100000  exit
0015bc  00100000  exit
0015c0  00100000  exit
0015c4  00100000  exit
0015c8  00100000  exit
0015cc  00100000  exit
0015d0  00100000  exit
0015d4  00100000  exit
0015d8  00100000  exit
0015dc  00100000  exit
