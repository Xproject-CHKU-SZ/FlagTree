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
0000b4  9f8eaef5  addli sp, sp, -1328
0000b8  1f110000  addli r2, zero, 1
0000bc  80300002  core_id r1
0000c0  1f8fee09  addli r30, sp, 1264
0000c4  7d400100  xsignal_mode_cfg r2
0000c8  b7900000  beq r1, zero, 36
0000cc  abf1ffff  lui r3, 1048575
0000d0  7d100100  xwait r2, 0
0000d4  7d100100  xwait r2, 0
0000d8  7d100000  xwait zero, 0
0000dc  1b91f1ff  ori r2, r3, 4095
0000e0  80210104  csr_set csr3, r2
0000e4  00d00100  sync_group
0000e8  dba60000  j 1332
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
0001a0  1f510000  addli r2, zero, 5
0001a4  9f310000  addli r3, zero, 3
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
000320  7d000100  xsignal r2, 0
000324  7d000100  xsignal r2, 0
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
0003d4  1f111000  addli r2, zero, 9
0003d8  9f710000  addli r3, zero, 7
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
00051c  7d800100  xsignal r3, 0
000520  7d800100  xsignal r3, 0
000524  7d800100  xsignal r3, 0
000528  7d800100  xsignal r3, 0
00052c  7d800100  xsignal r3, 0
000530  7d800100  xsignal r3, 0
000534  7d800100  xsignal r3, 0
000538  7d800100  xsignal r3, 0
00053c  7d800100  xsignal r3, 0
000540  7d800100  xsignal r3, 0
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
0005cc  1f511000  addli r2, zero, 13
0005d0  9f711000  addli r3, zero, 15
0005d4  7d000100  xsignal r2, 0
0005d8  7d000100  xsignal r2, 0
0005dc  7d000100  xsignal r2, 0
0005e0  7d000100  xsignal r2, 0
0005e4  7d800100  xsignal r3, 0
0005e8  7d800100  xsignal r3, 0
0005ec  7d800100  xsignal r3, 0
0005f0  7d800100  xsignal r3, 0
0005f4  1f312000  addli r2, zero, 19
0005f8  9f412000  addli r3, zero, 20
0005fc  7d000100  xsignal r2, 0
000600  7d000100  xsignal r2, 0
000604  7d000100  xsignal r2, 0
000608  7d000100  xsignal r2, 0
00060c  7d800100  xsignal r3, 0
000610  7d800100  xsignal r3, 0
000614  7d800100  xsignal r3, 0
000618  7d800100  xsignal r3, 0
00061c  63015f00  loadli.w r2,  40(r30)
000620  e3415f00  loadli.w r3,  44(r30)
000624  00d20002  load_param_i r4, 1
000628  e3026f00  loadli.w r5,  48(r30)
00062c  80530002  load_param_i r7, 0
000630  2bf3ffff  lui r6, 1048575
000634  e74e0ffe  storeli.w zero, -20(r30)
000638  e70d0ffe  storeli.w zero, -40(r30)
00063c  674c0ffe  storeli.w zero, -60(r30)
000640  670b0ffe  storeli.w zero, -80(r30)
000644  e74f0ffc  storeli.w zero, -260(r30)
000648  e70b0ffa  storeli.w zero, -584(r30)
00064c  e7000ffa  storeli.w zero, -760(r30)
000650  67480ff6  storeli.w zero, -1148(r30)
000654  0b912120  mul.s r2, r3, r2
000658  9f010200  addli r3, r4, 0
00065c  8b115150  fmac.s r3, r2, r5
000660  8b125120  mul.s r5, r2, r5
000664  9ff1f1ff  addli r3, r3, -1
000668  8b914130  div.s r3, r3, r4
00066c  1b12f3ff  ori r4, r6, 4095
000670  670f4ffe  storeli.w r4, -16(r30)
000674  674f4ffe  storeli.w r4, -12(r30)
000678  e70f4ffe  storeli.w r4, -8(r30)
00067c  e74f4ffe  storeli.w r4, -4(r30)
000680  e74d4ffe  storeli.w r4, -36(r30)
000684  670e4ffe  storeli.w r4, -32(r30)
000688  674e4ffe  storeli.w r4, -28(r30)
00068c  e70e4ffe  storeli.w r4, -24(r30)
000690  e70c4ffe  storeli.w r4, -56(r30)
000694  e74c4ffe  storeli.w r4, -52(r30)
000698  670d4ffe  storeli.w r4, -48(r30)
00069c  674d4ffe  storeli.w r4, -44(r30)
0006a0  674b4ffe  storeli.w r4, -76(r30)
0006a4  e70b4ffe  storeli.w r4, -72(r30)
0006a8  e74b4ffe  storeli.w r4, -68(r30)
0006ac  670c4ffe  storeli.w r4, -64(r30)
0006b0  67004ffe  storeli.w r4, -256(r30)
0006b4  67404ffe  storeli.w r4, -252(r30)
0006b8  e7004ffe  storeli.w r4, -248(r30)
0006bc  e7404ffe  storeli.w r4, -244(r30)
0006c0  67014ffe  storeli.w r4, -240(r30)
0006c4  67414ffe  storeli.w r4, -236(r30)
0006c8  e7014ffe  storeli.w r4, -232(r30)
0006cc  e7414ffe  storeli.w r4, -228(r30)
0006d0  67024ffe  storeli.w r4, -224(r30)
0006d4  67424ffe  storeli.w r4, -220(r30)
0006d8  e7024ffe  storeli.w r4, -216(r30)
0006dc  e7424ffe  storeli.w r4, -212(r30)
0006e0  67034ffe  storeli.w r4, -208(r30)
0006e4  67434ffe  storeli.w r4, -204(r30)
0006e8  e7034ffe  storeli.w r4, -200(r30)
0006ec  e7434ffe  storeli.w r4, -196(r30)
0006f0  67044ffe  storeli.w r4, -192(r30)
0006f4  67444ffe  storeli.w r4, -188(r30)
0006f8  e7044ffe  storeli.w r4, -184(r30)
0006fc  e7444ffe  storeli.w r4, -180(r30)
000700  67054ffe  storeli.w r4, -176(r30)
000704  67454ffe  storeli.w r4, -172(r30)
000708  e7054ffe  storeli.w r4, -168(r30)
00070c  e7454ffe  storeli.w r4, -164(r30)
000710  67064ffe  storeli.w r4, -160(r30)
000714  67464ffe  storeli.w r4, -156(r30)
000718  e7064ffe  storeli.w r4, -152(r30)
00071c  e7464ffe  storeli.w r4, -148(r30)
000720  67074ffe  storeli.w r4, -144(r30)
000724  67474ffe  storeli.w r4, -140(r30)
000728  e7074ffe  storeli.w r4, -136(r30)
00072c  e7474ffe  storeli.w r4, -132(r30)
000730  67084ffe  storeli.w r4, -128(r30)
000734  67484ffe  storeli.w r4, -124(r30)
000738  e7084ffe  storeli.w r4, -120(r30)
00073c  e7484ffe  storeli.w r4, -116(r30)
000740  67094ffe  storeli.w r4, -112(r30)
000744  67494ffe  storeli.w r4, -108(r30)
000748  e7094ffe  storeli.w r4, -104(r30)
00074c  e7494ffe  storeli.w r4, -100(r30)
000750  670a4ffe  storeli.w r4, -96(r30)
000754  674a4ffe  storeli.w r4, -92(r30)
000758  e70a4ffe  storeli.w r4, -88(r30)
00075c  e74a4ffe  storeli.w r4, -84(r30)
000760  e74b4ffa  storeli.w r4, -580(r30)
000764  670c4ffa  storeli.w r4, -576(r30)
000768  674c4ffa  storeli.w r4, -572(r30)
00076c  e70c4ffa  storeli.w r4, -568(r30)
000770  e74c4ffa  storeli.w r4, -564(r30)
000774  670d4ffa  storeli.w r4, -560(r30)
000778  674d4ffa  storeli.w r4, -556(r30)
00077c  e70d4ffa  storeli.w r4, -552(r30)
000780  e74d4ffa  storeli.w r4, -548(r30)
000784  670e4ffa  storeli.w r4, -544(r30)
000788  674e4ffa  storeli.w r4, -540(r30)
00078c  e70e4ffa  storeli.w r4, -536(r30)
000790  e74e4ffa  storeli.w r4, -532(r30)
000794  670f4ffa  storeli.w r4, -528(r30)
000798  674f4ffa  storeli.w r4, -524(r30)
00079c  e70f4ffa  storeli.w r4, -520(r30)
0007a0  e74f4ffa  storeli.w r4, -516(r30)
0007a4  67004ffc  storeli.w r4, -512(r30)
0007a8  67404ffc  storeli.w r4, -508(r30)
0007ac  e7004ffc  storeli.w r4, -504(r30)
0007b0  e7404ffc  storeli.w r4, -500(r30)
0007b4  67014ffc  storeli.w r4, -496(r30)
0007b8  67414ffc  storeli.w r4, -492(r30)
0007bc  e7014ffc  storeli.w r4, -488(r30)
0007c0  e7414ffc  storeli.w r4, -484(r30)
0007c4  67024ffc  storeli.w r4, -480(r30)
0007c8  67424ffc  storeli.w r4, -476(r30)
0007cc  e7024ffc  storeli.w r4, -472(r30)
0007d0  e7424ffc  storeli.w r4, -468(r30)
0007d4  67034ffc  storeli.w r4, -464(r30)
0007d8  67434ffc  storeli.w r4, -460(r30)
0007dc  e7034ffc  storeli.w r4, -456(r30)
0007e0  e7434ffc  storeli.w r4, -452(r30)
0007e4  67044ffc  storeli.w r4, -448(r30)
0007e8  67444ffc  storeli.w r4, -444(r30)
0007ec  e7044ffc  storeli.w r4, -440(r30)
0007f0  e7444ffc  storeli.w r4, -436(r30)
0007f4  67054ffc  storeli.w r4, -432(r30)
0007f8  67454ffc  storeli.w r4, -428(r30)
0007fc  e7054ffc  storeli.w r4, -424(r30)
000800  e7454ffc  storeli.w r4, -420(r30)
000804  67064ffc  storeli.w r4, -416(r30)
000808  67464ffc  storeli.w r4, -412(r30)
00080c  e7064ffc  storeli.w r4, -408(r30)
000810  e7464ffc  storeli.w r4, -404(r30)
000814  67074ffc  storeli.w r4, -400(r30)
000818  67474ffc  storeli.w r4, -396(r30)
00081c  e7074ffc  storeli.w r4, -392(r30)
000820  e7474ffc  storeli.w r4, -388(r30)
000824  67084ffc  storeli.w r4, -384(r30)
000828  67484ffc  storeli.w r4, -380(r30)
00082c  e7084ffc  storeli.w r4, -376(r30)
000830  e7484ffc  storeli.w r4, -372(r30)
000834  67094ffc  storeli.w r4, -368(r30)
000838  67494ffc  storeli.w r4, -364(r30)
00083c  e7094ffc  storeli.w r4, -360(r30)
000840  e7494ffc  storeli.w r4, -356(r30)
000844  670a4ffc  storeli.w r4, -352(r30)
000848  674a4ffc  storeli.w r4, -348(r30)
00084c  e70a4ffc  storeli.w r4, -344(r30)
000850  e74a4ffc  storeli.w r4, -340(r30)
000854  670b4ffc  storeli.w r4, -336(r30)
000858  674b4ffc  storeli.w r4, -332(r30)
00085c  e70b4ffc  storeli.w r4, -328(r30)
000860  e74b4ffc  storeli.w r4, -324(r30)
000864  670c4ffc  storeli.w r4, -320(r30)
000868  674c4ffc  storeli.w r4, -316(r30)
00086c  e70c4ffc  storeli.w r4, -312(r30)
000870  e74c4ffc  storeli.w r4, -308(r30)
000874  670d4ffc  storeli.w r4, -304(r30)
000878  674d4ffc  storeli.w r4, -300(r30)
00087c  e70d4ffc  storeli.w r4, -296(r30)
000880  e74d4ffc  storeli.w r4, -292(r30)
000884  670e4ffc  storeli.w r4, -288(r30)
000888  674e4ffc  storeli.w r4, -284(r30)
00088c  e70e4ffc  storeli.w r4, -280(r30)
000890  e74e4ffc  storeli.w r4, -276(r30)
000894  670f4ffc  storeli.w r4, -272(r30)
000898  674f4ffc  storeli.w r4, -268(r30)
00089c  e70f4ffc  storeli.w r4, -264(r30)
0008a0  e7404ffa  storeli.w r4, -756(r30)
0008a4  67014ffa  storeli.w r4, -752(r30)
0008a8  67414ffa  storeli.w r4, -748(r30)
0008ac  e7014ffa  storeli.w r4, -744(r30)
0008b0  e7414ffa  storeli.w r4, -740(r30)
0008b4  67024ffa  storeli.w r4, -736(r30)
0008b8  67424ffa  storeli.w r4, -732(r30)
0008bc  e7024ffa  storeli.w r4, -728(r30)
0008c0  e7424ffa  storeli.w r4, -724(r30)
0008c4  67034ffa  storeli.w r4, -720(r30)
0008c8  67434ffa  storeli.w r4, -716(r30)
0008cc  e7034ffa  storeli.w r4, -712(r30)
0008d0  e7434ffa  storeli.w r4, -708(r30)
0008d4  67044ffa  storeli.w r4, -704(r30)
0008d8  67444ffa  storeli.w r4, -700(r30)
0008dc  e7044ffa  storeli.w r4, -696(r30)
0008e0  e7444ffa  storeli.w r4, -692(r30)
0008e4  67054ffa  storeli.w r4, -688(r30)
0008e8  67454ffa  storeli.w r4, -684(r30)
0008ec  e7054ffa  storeli.w r4, -680(r30)
0008f0  e7454ffa  storeli.w r4, -676(r30)
0008f4  67064ffa  storeli.w r4, -672(r30)
0008f8  67464ffa  storeli.w r4, -668(r30)
0008fc  e7064ffa  storeli.w r4, -664(r30)
000900  e7464ffa  storeli.w r4, -660(r30)
000904  67074ffa  storeli.w r4, -656(r30)
000908  67474ffa  storeli.w r4, -652(r30)
00090c  e7074ffa  storeli.w r4, -648(r30)
000910  e7474ffa  storeli.w r4, -644(r30)
000914  67084ffa  storeli.w r4, -640(r30)
000918  67484ffa  storeli.w r4, -636(r30)
00091c  e7084ffa  storeli.w r4, -632(r30)
000920  e7484ffa  storeli.w r4, -628(r30)
000924  67094ffa  storeli.w r4, -624(r30)
000928  67494ffa  storeli.w r4, -620(r30)
00092c  e7094ffa  storeli.w r4, -616(r30)
000930  e7494ffa  storeli.w r4, -612(r30)
000934  670a4ffa  storeli.w r4, -608(r30)
000938  674a4ffa  storeli.w r4, -604(r30)
00093c  e70a4ffa  storeli.w r4, -600(r30)
000940  e74a4ffa  storeli.w r4, -596(r30)
000944  670b4ffa  storeli.w r4, -592(r30)
000948  674b4ffa  storeli.w r4, -588(r30)
00094c  e7084ff6  storeli.w r4, -1144(r30)
000950  e7484ff6  storeli.w r4, -1140(r30)
000954  67094ff6  storeli.w r4, -1136(r30)
000958  67494ff6  storeli.w r4, -1132(r30)
00095c  e7094ff6  storeli.w r4, -1128(r30)
000960  e7494ff6  storeli.w r4, -1124(r30)
000964  670a4ff6  storeli.w r4, -1120(r30)
000968  674a4ff6  storeli.w r4, -1116(r30)
00096c  e70a4ff6  storeli.w r4, -1112(r30)
000970  e74a4ff6  storeli.w r4, -1108(r30)
000974  670b4ff6  storeli.w r4, -1104(r30)
000978  674b4ff6  storeli.w r4, -1100(r30)
00097c  e70b4ff6  storeli.w r4, -1096(r30)
000980  e74b4ff6  storeli.w r4, -1092(r30)
000984  670c4ff6  storeli.w r4, -1088(r30)
000988  674c4ff6  storeli.w r4, -1084(r30)
00098c  e70c4ff6  storeli.w r4, -1080(r30)
000990  e74c4ff6  storeli.w r4, -1076(r30)
000994  670d4ff6  storeli.w r4, -1072(r30)
000998  674d4ff6  storeli.w r4, -1068(r30)
00099c  e70d4ff6  storeli.w r4, -1064(r30)
0009a0  e74d4ff6  storeli.w r4, -1060(r30)
0009a4  670e4ff6  storeli.w r4, -1056(r30)
0009a8  674e4ff6  storeli.w r4, -1052(r30)
0009ac  e70e4ff6  storeli.w r4, -1048(r30)
0009b0  e74e4ff6  storeli.w r4, -1044(r30)
0009b4  670f4ff6  storeli.w r4, -1040(r30)
0009b8  674f4ff6  storeli.w r4, -1036(r30)
0009bc  e70f4ff6  storeli.w r4, -1032(r30)
0009c0  e74f4ff6  storeli.w r4, -1028(r30)
0009c4  67004ff8  storeli.w r4, -1024(r30)
0009c8  67404ff8  storeli.w r4, -1020(r30)
0009cc  e7004ff8  storeli.w r4, -1016(r30)
0009d0  e7404ff8  storeli.w r4, -1012(r30)
0009d4  67014ff8  storeli.w r4, -1008(r30)
0009d8  67414ff8  storeli.w r4, -1004(r30)
0009dc  e7014ff8  storeli.w r4, -1000(r30)
0009e0  e7414ff8  storeli.w r4, -996(r30)
0009e4  67024ff8  storeli.w r4, -992(r30)
0009e8  67424ff8  storeli.w r4, -988(r30)
0009ec  e7024ff8  storeli.w r4, -984(r30)
0009f0  e7424ff8  storeli.w r4, -980(r30)
0009f4  67034ff8  storeli.w r4, -976(r30)
0009f8  67434ff8  storeli.w r4, -972(r30)
0009fc  e7034ff8  storeli.w r4, -968(r30)
000a00  e7434ff8  storeli.w r4, -964(r30)
000a04  67044ff8  storeli.w r4, -960(r30)
000a08  67444ff8  storeli.w r4, -956(r30)
000a0c  e7044ff8  storeli.w r4, -952(r30)
000a10  e7444ff8  storeli.w r4, -948(r30)
000a14  67054ff8  storeli.w r4, -944(r30)
000a18  67454ff8  storeli.w r4, -940(r30)
000a1c  e7054ff8  storeli.w r4, -936(r30)
000a20  e7454ff8  storeli.w r4, -932(r30)
000a24  67064ff8  storeli.w r4, -928(r30)
000a28  67464ff8  storeli.w r4, -924(r30)
000a2c  e7064ff8  storeli.w r4, -920(r30)
000a30  e7464ff8  storeli.w r4, -916(r30)
000a34  67074ff8  storeli.w r4, -912(r30)
000a38  67474ff8  storeli.w r4, -908(r30)
000a3c  e7074ff8  storeli.w r4, -904(r30)
000a40  e7474ff8  storeli.w r4, -900(r30)
000a44  67084ff8  storeli.w r4, -896(r30)
000a48  67484ff8  storeli.w r4, -892(r30)
000a4c  e7084ff8  storeli.w r4, -888(r30)
000a50  e7484ff8  storeli.w r4, -884(r30)
000a54  67094ff8  storeli.w r4, -880(r30)
000a58  67494ff8  storeli.w r4, -876(r30)
000a5c  e7094ff8  storeli.w r4, -872(r30)
000a60  e7494ff8  storeli.w r4, -868(r30)
000a64  670a4ff8  storeli.w r4, -864(r30)
000a68  674a4ff8  storeli.w r4, -860(r30)
000a6c  e70a4ff8  storeli.w r4, -856(r30)
000a70  e74a4ff8  storeli.w r4, -852(r30)
000a74  670b4ff8  storeli.w r4, -848(r30)
000a78  674b4ff8  storeli.w r4, -844(r30)
000a7c  e70b4ff8  storeli.w r4, -840(r30)
000a80  e74b4ff8  storeli.w r4, -836(r30)
000a84  670c4ff8  storeli.w r4, -832(r30)
000a88  674c4ff8  storeli.w r4, -828(r30)
000a8c  e70c4ff8  storeli.w r4, -824(r30)
000a90  e74c4ff8  storeli.w r4, -820(r30)
000a94  670d4ff8  storeli.w r4, -816(r30)
000a98  674d4ff8  storeli.w r4, -812(r30)
000a9c  e70d4ff8  storeli.w r4, -808(r30)
000aa0  e74d4ff8  storeli.w r4, -804(r30)
000aa4  670e4ff8  storeli.w r4, -800(r30)
000aa8  674e4ff8  storeli.w r4, -796(r30)
000aac  e70e4ff8  storeli.w r4, -792(r30)
000ab0  e74e4ff8  storeli.w r4, -788(r30)
000ab4  670f4ff8  storeli.w r4, -784(r30)
000ab8  674f4ff8  storeli.w r4, -780(r30)
000abc  e70f4ff8  storeli.w r4, -776(r30)
000ac0  e74f4ff8  storeli.w r4, -772(r30)
000ac4  67004ffa  storeli.w r4, -768(r30)
000ac8  67404ffa  storeli.w r4, -764(r30)
000acc  0b917120  mul.s r2, r3, r7
000ad0  8b917150  fmac.s r3, r3, r7
000ad4  8b915140  min.s r3, r3, r5
000ad8  cb8d2102  ble.s r3, r2, 1888
000adc  b3910128  sext_int2long r[4:5], r3
000ae0  b3120128  sext_int2long r[6:7], r2
000ae4  e344dfff  loadli.w r9,  -20(r30)
000ae8  630abfff  loadli.w r20,  -40(r30)
000aec  634b8fff  loadli.w r22,  -60(r30)
000af0  e30b6fff  loadli.w r23,  -80(r30)
000af4  6345fffd  loadli.w r10,  -260(r30)
000af8  e3051ffa  loadli.w r11,  -760(r30)
000afc  63067ffb  loadli.w r12,  -584(r30)
000b00  e3470ff7  loadli.w r15,  -1148(r30)
000b04  1f088000  addli r16, zero, 64
000b08  9f490000  addli r19, zero, 4
000b0c  9f2a0000  addli r21, zero, 2
000b10  9f0cc000  addli r25, zero, 96
000b14  2b0d0200  lui r26, 32
000b18  1f5c0000  addli r24, zero, 5
000b1c  9f0d0001  addli r27, zero, 128
000b20  67470ff6  storeli.w zero, -1164(r30)
000b24  73383fb2  store.d r[4:5], -1232(r30)
000b28  9f71f00f  addli r3, zero, 2047
000b2c  2b621600  lui r4, 358
000b30  2b81ffff  lui r2, 1048568
000b34  73342fb2  store.d r[3:4], -1240(r30)
000b38  ab611400  lui r3, 326
000b3c  1f014000  addli r2, zero, 32
000b40  9b910180  ori r3, r3, 2048
000b44  67423ff6  storeli.w r3, -1244(r30)
000b48  ab810d00  lui r3, 216
000b4c  9b91d1b4  ori r3, r3, 2893
000b50  67023ff6  storeli.w r3, -1248(r30)
000b54  9b110280  ori r3, r4, 2048
000b58  2bf27f7f  lui r4, 522239
000b5c  e7413ff6  storeli.w r3, -1252(r30)
000b60  abf17fff  lui r3, 1046527
000b64  9b91f1ff  ori r3, r3, 4095
000b68  e7013ff6  storeli.w r3, -1256(r30)
000b6c  9b11f2ff  ori r3, r4, 4095
000b70  67413ff6  storeli.w r3, -1260(r30)
000b74  db0e0000  j 116
000b78  eb510f01  load.d r[4:5], 16(r30)
000b7c  eb588fb4  load.d r[18:19], -1208(r30)
000b80  9f521000  addli r5, zero, 13
000b84  7d900200  xwait r5, 0
000b88  1d800900  lock zero, r19
000b8c  9bb22300  slli r5, r7, 2
000b90  8ba11111  add.ul r[4:5], r[4:5], r[18:19]
000b94  15000000  dma_cfg zero, zero, zero, 0
000b98  15000204  dma_cfg zero, r4, zero, 2
000b9c  15835106  dma_cfg r6, r3, r5, 3
000ba0  9f010004  addli r3, zero, 512
000ba4  9581d108  dma_cfg r3, r3, r13, 4
000ba8  35000000  dma_run zero
000bac  1d900900  unlock r19
000bb0  9f411000  addli r3, zero, 12
000bb4  630bdff6  loadli.w r22,  -1176(r30)
000bb8  7d800100  xsignal r3, 0
000bbc  e304eff6  loadli.w r9,  -1168(r30)
000bc0  634adff6  loadli.w r20,  -1172(r30)
000bc4  1f1b0b00  addli r22, r22, 1
000bc8  eb528fb5  load.d r[6:7], -1192(r30)
000bcc  eb510fb3  load.d r[4:5], -1232(r30)
000bd0  9f9b0b00  addli r23, r23, 1
000bd4  1f1a0a00  addli r20, r20, 1
000bd8  9f940400  addli r9, r9, 1
000bdc  a7920200  addli.d r[6:7], r[6:7], 1
000be0  93b13204  setlt.sl r3, r[6:7], r[4:5]
000be4  37c90102  beq r3, zero, 1616
000be8  67467ff7  storeli.w r23, -1180(r30)
000bec  e7066ff7  storeli.w r22, -1176(r30)
000bf0  e7464ff7  storeli.w r20, -1172(r30)
000bf4  67079ff6  storeli.w r9, -1168(r30)
000bf8  3bb03001  bneq r1, r19, 12
000bfc  9f311000  addli r3, zero, 11
000c00  7d900100  xwait r3, 0
000c04  e3016f00  loadli.w r3,  48(r30)
000c08  733c5fb4  store.d r[6:7], -1192(r30)
000c0c  1f1e0000  addli r28, zero, 1
000c10  8b923230  div.s r5, r5, r3
000c14  e3415f00  loadli.w r3,  44(r30)
000c18  8b943230  div.s r9, r5, r3
000c1c  9f011000  addli r3, zero, 8
000c20  8b960431  div.s r13, r9, r16
000c24  9bb23600  slli r5, r13, 3
000c28  0b935118  sub.s r6, r3, r5
000c2c  0b173340  min.s r14, r6, r3
000c30  9f710000  addli r3, zero, 7
000c34  0b93e438  mod.s r6, r9, r14
000c38  8b936210  add.s r7, r5, r6
000c3c  93827104  setlt.u r5, r3, r7
000c40  b3880328  zext_int2long r[18:19], r7
000c44  9f411000  addli r3, zero, 12
000c48  17bb3802  sll.d r[23:24], r[18:19], r3
000c4c  73301fb5  store.d r[18:19], -1216(r30)
000c50  3bb00200  bneq r5, zero, 12
000c54  b3020028  zext_int2long r[6:7], zero
000c58  db010000  j 12
000c5c  eb518fb2  load.d r[4:5], -1240(r30)
000c60  97023b02  and.d r[6:7], r[23:24], r[4:5]
000c64  9bb66600  slli r13, r13, 6
000c68  e341eff6  loadli.w r3,  -1164(r30)
000c6c  1bb26300  slli r4, r7, 6
000c70  1f040000  addli r8, zero, 0
000c74  9f030000  addli r7, zero, 0
000c78  8b94d418  sub.s r9, r9, r13
000c7c  e7434ff6  storeli.w r4, -1220(r30)
000c80  8b963139  mod.s r13, r3, r19
000c84  9f910100  addli r3, r3, 1
000c88  8b94e430  div.s r9, r9, r14
000c8c  67473ff6  storeli.w r3, -1164(r30)
000c90  9f710000  addli r3, zero, 7
000c94  b3880428  zext_int2long r[18:19], r9
000c98  97b13802  sll.d r[4:5], r[18:19], r3
000c9c  9bb8f600  slli r17, r13, 15
000ca0  97b65103  sll.d r[14:15], r[4:5], r21
000ca4  9bb17400  slli r3, r9, 7
000ca8  9f140000  addli r9, zero, 1
000cac  67453ff6  storeli.w r3, -1196(r30)
000cb0  eb518f00  load.d r[4:5], 8(r30)
000cb4  7334dfb4  store.d r[14:15], -1208(r30)
000cb8  8ba1d110  add.ul r[4:5], r[4:5], r[14:15]
000cbc  733c3fb6  store.d r[4:5], -1160(r30)
000cc0  db090000  j 76
000cc4  7d900a00  xwait r21, 0
000cc8  7d100c00  xwait r24, 0
000ccc  1d000000  lock zero, zero
000cd0  1f160600  addli r12, r12, 1
000cd4  9f310000  addli r3, zero, 3
000cd8  810a0000  ds_cfg r21, zero, 0
000cdc  01010002  ds_cfg r2, zero, 1
000ce0  0101001c  ds_cfg r2, zero, 14
000ce4  0108001a  ds_cfg r16, zero, 13
000ce8  211a2902  shuffle_batch r20, r18, r2, 1
000cec  1d100000  unlock zero
000cf0  7d800100  xsignal r3, 0
000cf4  7d800900  xsignal r19, 0
000cf8  1f150500  addli r10, r10, 1
000cfc  b7c80400  beq r9, zero, 560
000d00  9f930300  addli r7, r7, 1
000d04  1f140000  addli r8, zero, 1
000d08  9f040000  addli r9, zero, 0
000d0c  9f315000  addli r3, zero, 43
000d10  0b929739  mod.s r4, r15, r25
000d14  9f970700  addli r15, r15, 1
000d18  9b841400  andi r9, r9, 1
000d1c  8b913538  mod.s r3, r11, r3
000d20  9f950500  addli r11, r11, 1
000d24  1b3ad200  slli r20, r4, 13
000d28  9bb1d100  slli r3, r3, 13
000d2c  0b99a111  add.s r18, r3, r26
000d30  37de50ff  beq r1, r21, -108
000d34  b3060428  zext_int2long r[14:15], r8
000d38  3b82c001  bneq r1, r28, 128
000d3c  97b18603  sll.d r[4:5], r[14:15], r24
000d40  b3060828  zext_int2long r[14:15], r16
000d44  1f048003  addli r8, zero, 448
000d48  6b5d0f00  load.d r[27:28], 0(r30)
000d4c  1f160600  addli r12, r12, 1
000d50  97916103  or.d r[4:5], r[4:5], r[23:24]
000d54  0bbc5118  sub.sl r[25:26], r[4:5], r[6:7]
000d58  97b15103  sll.d r[4:5], r[4:5], r21
000d5c  8f16dc60  div.sl r[14:15], r[25:26], r[14:15]
000d60  330c0428  zext_int2long r[25:26], r8
000d64  1f340000  addli r8, zero, 3
000d68  8b213d10  add.ul r[4:5], r[27:28], r[4:5]
000d6c  2b0d0200  lui r26, 32
000d70  9f0d0001  addli r27, zero, 128
000d74  7d100400  xwait r8, 0
000d78  1d800900  lock zero, r19
000d7c  15000000  dma_cfg zero, zero, zero, 0
000d80  15000204  dma_cfg zero, r4, zero, 2
000d84  0bbc8641  min.sl r[25:26], r[14:15], r[25:26]
000d88  8b36dc18  sub.sl r[14:15], r[25:26], r[14:15]
000d8c  9f0cc000  addli r25, zero, 96
000d90  1f5c0000  addli r24, zero, 5
000d94  1f848600  addli r8, r13, 64
000d98  9f060001  addli r13, zero, 128
000d9c  1589d106  dma_cfg r18, r3, r13, 3
000da0  9f010002  addli r3, zero, 256
000da4  95868108  dma_cfg r13, r3, r8, 4
000da8  35000000  dma_run zero
000dac  1d900900  unlock r19
000db0  7d800a00  xsignal r21, 0
000db4  dbe8ffff  j -188
000db8  9f01a000  addli r3, zero, 80
000dbc  1f425000  addli r4, zero, 44
000dc0  8b113638  mod.s r3, r12, r3
000dc4  0b124538  mod.s r4, r10, r4
000dc8  1f160600  addli r12, r12, 1
000dcc  1bb4e100  slli r8, r3, 14
000dd0  9b31e200  slli r3, r4, 14
000dd4  2b620700  lui r4, 118
000dd8  0b994110  add.s r18, r3, r4
000ddc  9f710000  addli r3, zero, 7
000de0  37d13000  beq r1, r3, 84
000de4  9f610000  addli r3, zero, 6
000de8  3bd23000  bneq r1, r3, 148
000dec  9f112000  addli r3, zero, 17
000df0  1f740000  addli r8, zero, 7
000df4  1f6a0000  addli r20, zero, 6
000df8  7d100400  xwait r8, 0
000dfc  97b13602  sll.d r[4:5], r[14:15], r3
000e00  eb568fb7  load.d r[14:15], -1160(r30)
000e04  1d800900  lock zero, r19
000e08  1f040004  addli r8, zero, 512
000e0c  15000000  dma_cfg zero, zero, zero, 0
000e10  8ba13610  add.ul r[4:5], r[14:15], r[4:5]
000e14  15000204  dma_cfg zero, r4, zero, 2
000e18  15898106  dma_cfg r18, r3, r8, 3
000e1c  9f010020  addli r3, zero, 4096
000e20  15842108  dma_cfg r8, r3, r2, 4
000e24  35000000  dma_run zero
000e28  1d900900  unlock r19
000e2c  7d000a00  xsignal r20, 0
000e30  5bd9ffff  j -312
000e34  9f610000  addli r3, zero, 6
000e38  9f0d0001  addli r27, zero, 128
000e3c  7d900100  xwait r3, 0
000e40  9f111000  addli r3, zero, 9
000e44  7d900100  xwait r3, 0
000e48  1d000000  lock zero, zero
000e4c  9f010001  addli r3, zero, 128
000e50  810a0000  ds_cfg r21, zero, 0
000e54  81010002  ds_cfg r3, zero, 1
000e58  0101001c  ds_cfg r2, zero, 14
000e5c  8101001a  ds_cfg r3, zero, 13
000e60  9f710000  addli r3, zero, 7
000e64  41042904  shuffle_coa r8, r18, r2, 2
000e68  1d100000  unlock zero
000e6c  7d800100  xsignal r3, 0
000e70  9f011000  addli r3, zero, 8
000e74  7d800100  xsignal r3, 0
000e78  5bd0ffff  j -384
000e7c  bb923001  bneq r1, r19, 164
000e80  9f011000  addli r3, zero, 8
000e84  1f190000  addli r18, zero, 1
000e88  9f160000  addli r13, zero, 1
000e8c  1f070000  addli r14, zero, 0
000e90  7d900900  xwait r19, 0
000e94  7d900100  xwait r3, 0
000e98  b7f00300  beq r7, zero, 60
000e9c  9b31d700  slli r3, r14, 13
000ea0  1b328700  slli r4, r14, 8
000ea4  1d000900  lock zero, r18
000ea8  1f170000  addli r14, zero, 1
000eac  09080101  mm_cfg r16, r2, r16, 0
000eb0  97918100  or r3, r3, r8
000eb4  17121201  or r4, r4, r17
000eb8  898a2905  mm_cfg r21, r19, r18, 2
000ebc  29123a10  mm_acc r4, r20, r3, 8
000ec0  9b811600  andi r3, r13, 1
000ec4  9f060000  addli r13, zero, 0
000ec8  1d100900  unlock r18
000ecc  3bcf01fe  bneq r3, zero, -48
000ed0  5b070000  j 56
000ed4  9b31d700  slli r3, r14, 13
000ed8  1b328700  slli r4, r14, 8
000edc  1d000900  lock zero, r18
000ee0  1f170000  addli r14, zero, 1
000ee4  09080101  mm_cfg r16, r2, r16, 0
000ee8  97918100  or r3, r3, r8
000eec  17121201  or r4, r4, r17
000ef0  898a2905  mm_cfg r21, r19, r18, 2
000ef4  29023a10  mm r4, r20, r3, 8
000ef8  9b811600  andi r3, r13, 1
000efc  9f060000  addli r13, zero, 0
000f00  1d100900  unlock r18
000f04  3bcf01fe  bneq r3, zero, -48
000f08  1f150500  addli r10, r10, 1
000f0c  9f111000  addli r3, zero, 9
000f10  7d000c00  xsignal r24, 0
000f14  7d800100  xsignal r3, 0
000f18  bba704fe  bneq r9, zero, -536
000f1c  db020000  j 20
000f20  1f150500  addli r10, r10, 1
000f24  3bf704fe  bneq r9, zero, -548
000f28  5b020000  j 16
000f2c  3bb03001  bneq r1, r19, 12
000f30  9f211000  addli r3, zero, 10
000f34  7d800100  xsignal r3, 0
000f38  e341aff6  loadli.w r3,  -1196(r30)
000f3c  9f020007  addli r5, zero, 896
000f40  e34bcff6  loadli.w r23,  -1180(r30)
000f44  33840d28  zext_int2long r[9:10], r27
000f48  9f160000  addli r13, zero, 1
000f4c  b3820228  zext_int2long r[6:7], r5
000f50  b3810128  zext_int2long r[4:5], r3
000f54  8b933b39  mod.s r7, r23, r19
000f58  8ba25140  min.ul r[6:7], r[4:5], r[6:7]
000f5c  a7820201  addli.d r[6:7], r[6:7], 128
000f60  8ba23248  max.ul r[6:7], r[6:7], r[4:5]
000f64  8bb13218  sub.sl r[4:5], r[6:7], r[4:5]
000f68  9bb29300  slli r5, r7, 9
000f6c  8ba38140  min.ul r[8:9], r[4:5], r[9:10]
000f70  ab611200  lui r3, 294
000f74  2b621200  lui r4, 294
000f78  0b933210  add.s r6, r5, r3
000f7c  b7ffd0fc  beq r1, r13, -1028
000f80  630bdff6  loadli.w r22,  -1176(r30)
000f84  1b120280  ori r4, r4, 2048
000f88  e304eff6  loadli.w r9,  -1168(r30)
000f8c  634adff6  loadli.w r20,  -1172(r30)
000f90  2b870000  lui r14, 8
000f94  8b113b39  mod.s r3, r22, r19
000f98  1f1b0b00  addli r22, r22, 1
000f9c  9bb1f100  slli r3, r3, 15
000fa0  8b924110  add.s r5, r3, r4
000fa4  9f310000  addli r3, zero, 3
000fa8  bbf13000  bneq r1, r3, 124
000fac  9f211000  addli r3, zero, 10
000fb0  9f030000  addli r7, zero, 0
000fb4  7d900100  xwait r3, 0
000fb8  9f411000  addli r3, zero, 12
000fbc  7d900100  xwait r3, 0
000fc0  9f711000  addli r3, zero, 15
000fc4  7d900100  xwait r3, 0
000fc8  1d800a00  lock zero, r21
000fcc  ab01803f  lui r3, 260096
000fd0  0d000002  ew_cfg zero, zero, zero, 1
000fd4  8d910100  ewcoeff_cfg r3, r3, zero, 0
000fd8  9f71f000  addli r3, zero, 127
000fdc  0d800104  ew_cfg zero, r3, zero, 2
000fe0  8d060006  ew_cfg r13, zero, zero, 3
000fe4  8b917210  add.s r3, r5, r7
000fe8  0b927810  add.s r4, r17, r7
000fec  9f830304  addli r7, r7, 512
000ff0  ad016200  dsmadd r3, r4, r6, 0
000ff4  bbcfe3fe  bneq r7, r14, -16
000ff8  9f311000  addli r3, zero, 11
000ffc  1d900a00  unlock r21
001000  7d800100  xsignal r3, 0
001004  9f511000  addli r3, zero, 13
001008  7d800100  xsignal r3, 0
00100c  9f012000  addli r3, zero, 16
001010  7d800100  xsignal r3, 0
001014  9f112000  addli r3, zero, 17
001018  7d800100  xsignal r3, 0
00101c  9f611000  addli r3, zero, 14
001020  db410000  j 524
001024  8b113a39  mod.s r3, r20, r19
001028  63424ff6  loadli.w r4,  -1244(r30)
00102c  9bb1f100  slli r3, r3, 15
001030  0b934110  add.s r6, r3, r4
001034  bba58001  bneq r1, r24, 360
001038  9f611000  addli r3, zero, 14
00103c  ab0300c1  lui r7, 790528
001040  1f040000  addli r8, zero, 0
001044  7d900100  xwait r3, 0
001048  9f312000  addli r3, zero, 19
00104c  7d900100  xwait r3, 0
001050  1d800a00  lock zero, r21
001054  0d000002  ew_cfg zero, zero, zero, 1
001058  eb518fb2  load.d r[4:5], -1240(r30)
00105c  0d000204  ew_cfg zero, r4, zero, 2
001060  9f511000  addli r3, zero, 13
001064  2b82ff40  lui r4, 266232
001068  8d090006  ew_cfg r19, zero, zero, 3
00106c  8d890926  ew_cfg r19, r19, zero, 19
001070  8d010014  ew_cfg r3, zero, zero, 10
001074  e3014ff6  loadli.w r3,  -1248(r30)
001078  8d8a3616  ew_cfg r21, r13, r3, 11
00107c  9f310000  addli r3, zero, 3
001080  0d00301a  ew_cfg zero, zero, r3, 13
001084  8b913439  mod.s r3, r9, r19
001088  8d83491c  ew_cfg r7, r19, r4, 14
00108c  2b02803f  lui r4, 260096
001090  0d00021e  ew_cfg zero, r4, zero, 15
001094  4da30200  sslut r6, r5, 0
001098  0d000014  ew_cfg zero, zero, zero, 10
00109c  0d000026  ew_cfg zero, zero, zero, 19
0010a0  9bb1f100  slli r3, r3, 15
0010a4  1d900a00  unlock r21
0010a8  63423ff6  loadli.w r4,  -1252(r30)
0010ac  8b934110  add.s r7, r3, r4
0010b0  9f012000  addli r3, zero, 16
0010b4  7d900100  xwait r3, 0
0010b8  9f412000  addli r3, zero, 20
0010bc  7d900100  xwait r3, 0
0010c0  1d800a00  lock zero, r21
0010c4  9f71f000  addli r3, zero, 127
0010c8  0d000002  ew_cfg zero, zero, zero, 1
0010cc  0d800104  ew_cfg zero, r3, zero, 2
0010d0  8d060006  ew_cfg r13, zero, zero, 3
0010d4  e3013ff6  loadli.w r3,  -1256(r30)
0010d8  8d110000  ewcoeff_cfg r3, zero, zero, 0
0010dc  8b918310  add.s r3, r7, r8
0010e0  0b928210  add.s r4, r5, r8
0010e4  1f040404  addli r8, r8, 512
0010e8  ad214200  dscmpnsel r3, r4, r4, 0
0010ec  bb4fe4fe  bneq r8, r14, -16
0010f0  1d900a00  unlock r21
0010f4  9f71f000  addli r3, zero, 127
0010f8  1f040000  addli r8, zero, 0
0010fc  1d800a00  lock zero, r21
001100  0d000002  ew_cfg zero, zero, zero, 1
001104  0d800104  ew_cfg zero, r3, zero, 2
001108  8d060006  ew_cfg r13, zero, zero, 3
00110c  e3412ff6  loadli.w r3,  -1260(r30)
001110  8d110000  ewcoeff_cfg r3, zero, zero, 0
001114  8b918310  add.s r3, r7, r8
001118  1f040404  addli r8, r8, 512
00111c  ada13108  dscmpnsel r3, r3, r3, 4
001120  bb5fe4fe  bneq r8, r14, -12
001124  9f112000  addli r3, zero, 17
001128  1d900a00  unlock r21
00112c  2b04803f  lui r8, 260096
001130  7d900100  xwait r3, 0
001134  1d800a00  lock zero, r21
001138  ab0180bf  lui r3, 784384
00113c  0d000002  ew_cfg zero, zero, zero, 1
001140  0d940100  ewcoeff_cfg r8, r3, zero, 0
001144  eb518fb2  load.d r[4:5], -1240(r30)
001148  0d000204  ew_cfg zero, r4, zero, 2
00114c  8d090006  ew_cfg r19, zero, zero, 3
001150  8d893927  ew_cfg r19, r19, r19, 19
001154  ad827200  dsmadd r5, r5, r7, 0
001158  9f432000  addli r7, zero, 20
00115c  0d000026  ew_cfg zero, zero, zero, 19
001160  1d900a00  unlock r21
001164  7d800300  xsignal r7, 0
001168  1d800a00  lock zero, r21
00116c  0d000002  ew_cfg zero, zero, zero, 1
001170  0d140400  ewcoeff_cfg r8, r8, zero, 0
001174  0d000204  ew_cfg zero, r4, zero, 2
001178  9f711000  addli r3, zero, 15
00117c  8d090006  ew_cfg r19, zero, zero, 3
001180  8d893927  ew_cfg r19, r19, r19, 19
001184  2d035300  dsmadd r6, r6, r5, 0
001188  0d000026  ew_cfg zero, zero, zero, 19
00118c  1d900a00  unlock r21
001190  7d800100  xsignal r3, 0
001194  9f212000  addli r3, zero, 18
001198  db120000  j 148
00119c  bbb800fc  bneq r1, zero, -1492
0011a0  e3417ff6  loadli.w r3,  -1220(r30)
0011a4  9f028003  addli r5, zero, 448
0011a8  eb580fb4  load.d r[18:19], -1216(r30)
0011ac  1f2e2000  addli r28, zero, 18
0011b0  b3860228  zext_int2long r[14:15], r5
0011b4  9f120000  addli r5, zero, 1
0011b8  b3910128  sext_int2long r[4:5], r3
0011bc  97b8c803  sll.d r[18:19], r[18:19], r28
0011c0  8bb6d140  min.sl r[14:15], r[4:5], r[14:15]
0011c4  a7868600  addli.d r[14:15], r[14:15], 64
0011c8  8bb63648  max.sl r[14:15], r[14:15], r[4:5]
0011cc  733cdfb6  store.d r[14:15], -1160(r30)
0011d0  eb568f01  load.d r[14:15], 24(r30)
0011d4  8ba81611  add.ul r[18:19], r[14:15], r[18:19]
0011d8  eb568fb7  load.d r[14:15], -1160(r30)
0011dc  8bb13618  sub.sl r[4:5], r[14:15], r[4:5]
0011e0  b3060828  zext_int2long r[14:15], r16
0011e4  733c3fb6  store.d r[4:5], -1160(r30)
0011e8  eb518fb4  load.d r[4:5], -1208(r30)
0011ec  8ba83810  add.ul r[18:19], r[18:19], r[4:5]
0011f0  eb518fb7  load.d r[4:5], -1160(r30)
0011f4  7d100e00  xwait r28, 0
0011f8  1d000c00  lock zero, r24
0011fc  15000000  dma_cfg zero, zero, zero, 0
001200  15800202  dma_cfg zero, r5, zero, 1
001204  9bb22300  slli r5, r7, 2
001208  15090004  dma_cfg r18, zero, zero, 2
00120c  8bb1d140  min.sl r[4:5], r[4:5], r[14:15]
001210  95085306  dma_cfg r17, r6, r5, 3
001214  9f020004  addli r5, zero, 512
001218  1f030020  addli r6, zero, 4096
00121c  15833208  dma_cfg r6, r5, r3, 4
001220  9f312000  addli r3, zero, 19
001224  35000000  dma_run zero
001228  1d100c00  unlock r24
00122c  7d800100  xsignal r3, 0
001230  5b33ffff  j -1640
001234  e70bcffa  storeli.w r12, -584(r30)
001238  7d000000  xsignal zero, 0
00123c  bbe00000  bneq r1, zero, 56
001240  9f200000  addli r1, zero, 2
001244  7d100000  xwait zero, 0
001248  7d100000  xwait zero, 0
00124c  7d100000  xwait zero, 0
001250  7d100000  xwait zero, 0
001254  7d100000  xwait zero, 0
001258  7d100000  xwait zero, 0
00125c  7d100000  xwait zero, 0
001260  7d100000  xwait zero, 0
001264  1d800000  lock zero, r1
001268  0d000020  ew_cfg zero, zero, zero, 16
00126c  1d900000  unlock r1
001270  7d400000  xsignal_mode_cfg zero
001274  9f8eee09  addli sp, sp, 1264
001278  00a00300  mfence { lm, sm, gm }
00127c  00100000  exit
001280  00100000  exit
001284  00100000  exit
001288  00100000  exit
00128c  00100000  exit
001290  00100000  exit
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
