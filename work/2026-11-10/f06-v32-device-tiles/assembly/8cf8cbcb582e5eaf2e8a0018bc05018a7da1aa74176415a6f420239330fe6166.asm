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
0000b4  9f8eaef4  addli sp, sp, -1456
0000b8  1f110000  addli r2, zero, 1
0000bc  80350002  core_id r11
0000c0  1f8fee0a  addli r30, sp, 1392
0000c4  7d400100  xsignal_mode_cfg r2
0000c8  b7900500  beq r11, zero, 36
0000cc  abf1ffff  lui r3, 1048575
0000d0  7d100100  xwait r2, 0
0000d4  7d100100  xwait r2, 0
0000d8  7d100000  xwait zero, 0
0000dc  1b91f1ff  ori r2, r3, 4095
0000e0  80210104  csr_set csr3, r2
0000e4  00d00100  sync_group
0000e8  dbb60000  j 1460
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
00014c  9f510000  addli r3, zero, 5
000150  0102001c  ds_cfg r4, zero, 14
000154  a1134008  shuffle_batch r7, zero, r4, 4
000158  1f320000  addli r4, zero, 3
00015c  1d100000  unlock zero
000160  7d000100  xsignal r2, 0
000164  7d100100  xwait r2, 0
000168  1d800200  lock zero, r5
00016c  2b110100  lui r2, 17
000170  0da00300  ewtable_cfg r7, 0
000174  0d200102  ewtable_cfg r2, 1
000178  2bf1ffff  lui r2, 1048575
00017c  1d900200  unlock r5
000180  7d000000  xsignal zero, 0
000184  7d100000  xwait zero, 0
000188  1b11f1ff  ori r2, r2, 4095
00018c  80210104  csr_set csr3, r2
000190  1f311000  addli r2, zero, 11
000194  00d00100  sync_group
000198  7d000100  xsignal r2, 0
00019c  7d000100  xsignal r2, 0
0001a0  7d000100  xsignal r2, 0
0001a4  7d000100  xsignal r2, 0
0001a8  7d800100  xsignal r3, 0
0001ac  7d800100  xsignal r3, 0
0001b0  7d800100  xsignal r3, 0
0001b4  7d800100  xsignal r3, 0
0001b8  7d800100  xsignal r3, 0
0001bc  7d800100  xsignal r3, 0
0001c0  7d800100  xsignal r3, 0
0001c4  7d800100  xsignal r3, 0
0001c8  7d800100  xsignal r3, 0
0001cc  7d800100  xsignal r3, 0
0001d0  7d800100  xsignal r3, 0
0001d4  7d800100  xsignal r3, 0
0001d8  7d800100  xsignal r3, 0
0001dc  7d800100  xsignal r3, 0
0001e0  7d800100  xsignal r3, 0
0001e4  7d800100  xsignal r3, 0
0001e8  7d800100  xsignal r3, 0
0001ec  7d800100  xsignal r3, 0
0001f0  7d800100  xsignal r3, 0
0001f4  7d800100  xsignal r3, 0
0001f8  7d800100  xsignal r3, 0
0001fc  7d800100  xsignal r3, 0
000200  7d800100  xsignal r3, 0
000204  7d800100  xsignal r3, 0
000208  7d800100  xsignal r3, 0
00020c  7d800100  xsignal r3, 0
000210  7d800100  xsignal r3, 0
000214  7d800100  xsignal r3, 0
000218  7d800100  xsignal r3, 0
00021c  7d800100  xsignal r3, 0
000220  7d800100  xsignal r3, 0
000224  7d800100  xsignal r3, 0
000228  7d800100  xsignal r3, 0
00022c  7d800100  xsignal r3, 0
000230  7d800100  xsignal r3, 0
000234  7d800100  xsignal r3, 0
000238  7d800100  xsignal r3, 0
00023c  7d800100  xsignal r3, 0
000240  7d800100  xsignal r3, 0
000244  7d800100  xsignal r3, 0
000248  7d800100  xsignal r3, 0
00024c  7d800100  xsignal r3, 0
000250  7d800100  xsignal r3, 0
000254  7d800100  xsignal r3, 0
000258  7d800100  xsignal r3, 0
00025c  7d800100  xsignal r3, 0
000260  7d800100  xsignal r3, 0
000264  7d800100  xsignal r3, 0
000268  1f111000  addli r2, zero, 9
00026c  9f710000  addli r3, zero, 7
000270  7d000200  xsignal r4, 0
000274  7d000200  xsignal r4, 0
000278  7d000200  xsignal r4, 0
00027c  7d000200  xsignal r4, 0
000280  7d000200  xsignal r4, 0
000284  7d000200  xsignal r4, 0
000288  7d000200  xsignal r4, 0
00028c  7d000200  xsignal r4, 0
000290  7d000200  xsignal r4, 0
000294  7d000200  xsignal r4, 0
000298  7d000200  xsignal r4, 0
00029c  7d000200  xsignal r4, 0
0002a0  7d000200  xsignal r4, 0
0002a4  7d000200  xsignal r4, 0
0002a8  7d000200  xsignal r4, 0
0002ac  7d000200  xsignal r4, 0
0002b0  7d000200  xsignal r4, 0
0002b4  7d000200  xsignal r4, 0
0002b8  7d000200  xsignal r4, 0
0002bc  7d000200  xsignal r4, 0
0002c0  7d000200  xsignal r4, 0
0002c4  7d000200  xsignal r4, 0
0002c8  7d000200  xsignal r4, 0
0002cc  7d000200  xsignal r4, 0
0002d0  7d000200  xsignal r4, 0
0002d4  7d000200  xsignal r4, 0
0002d8  7d000200  xsignal r4, 0
0002dc  7d000200  xsignal r4, 0
0002e0  7d000200  xsignal r4, 0
0002e4  7d000200  xsignal r4, 0
0002e8  7d000200  xsignal r4, 0
0002ec  7d000200  xsignal r4, 0
0002f0  7d000200  xsignal r4, 0
0002f4  7d000200  xsignal r4, 0
0002f8  7d000200  xsignal r4, 0
0002fc  7d000200  xsignal r4, 0
000300  7d000200  xsignal r4, 0
000304  7d000200  xsignal r4, 0
000308  7d000200  xsignal r4, 0
00030c  7d000200  xsignal r4, 0
000310  7d000200  xsignal r4, 0
000314  7d000200  xsignal r4, 0
000318  7d000200  xsignal r4, 0
00031c  7d000200  xsignal r4, 0
000320  7d000100  xsignal r2, 0
000324  7d000100  xsignal r2, 0
000328  7d000100  xsignal r2, 0
00032c  7d000100  xsignal r2, 0
000330  7d000100  xsignal r2, 0
000334  7d000100  xsignal r2, 0
000338  7d000100  xsignal r2, 0
00033c  7d000100  xsignal r2, 0
000340  7d000100  xsignal r2, 0
000344  7d000100  xsignal r2, 0
000348  7d000100  xsignal r2, 0
00034c  7d000100  xsignal r2, 0
000350  7d000100  xsignal r2, 0
000354  7d000100  xsignal r2, 0
000358  7d000100  xsignal r2, 0
00035c  7d000100  xsignal r2, 0
000360  7d000100  xsignal r2, 0
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
00061c  7d800100  xsignal r3, 0
000620  7d800100  xsignal r3, 0
000624  7d800100  xsignal r3, 0
000628  7d800100  xsignal r3, 0
00062c  7d800100  xsignal r3, 0
000630  7d800100  xsignal r3, 0
000634  7d800100  xsignal r3, 0
000638  7d800100  xsignal r3, 0
00063c  7d800100  xsignal r3, 0
000640  7d800100  xsignal r3, 0
000644  7d800100  xsignal r3, 0
000648  7d800100  xsignal r3, 0
00064c  1f511000  addli r2, zero, 13
000650  9f711000  addli r3, zero, 15
000654  7d000100  xsignal r2, 0
000658  7d000100  xsignal r2, 0
00065c  7d000100  xsignal r2, 0
000660  7d000100  xsignal r2, 0
000664  7d800100  xsignal r3, 0
000668  7d800100  xsignal r3, 0
00066c  7d800100  xsignal r3, 0
000670  7d800100  xsignal r3, 0
000674  1f312000  addli r2, zero, 19
000678  9f412000  addli r3, zero, 20
00067c  7d000100  xsignal r2, 0
000680  7d000100  xsignal r2, 0
000684  7d000100  xsignal r2, 0
000688  7d000100  xsignal r2, 0
00068c  7d800100  xsignal r3, 0
000690  7d800100  xsignal r3, 0
000694  7d800100  xsignal r3, 0
000698  7d800100  xsignal r3, 0
00069c  63015f00  loadli.w r2,  40(r30)
0006a0  e3415f00  loadli.w r3,  44(r30)
0006a4  00d20002  load_param_i r4, 1
0006a8  e3026f00  loadli.w r5,  48(r30)
0006ac  80530002  load_param_i r7, 0
0006b0  2bf3ffff  lui r6, 1048575
0006b4  e74e0ffe  storeli.w zero, -20(r30)
0006b8  e70d0ffe  storeli.w zero, -40(r30)
0006bc  674c0ffe  storeli.w zero, -60(r30)
0006c0  670b0ffe  storeli.w zero, -80(r30)
0006c4  67000ffe  storeli.w zero, -256(r30)
0006c8  e7470ff8  storeli.w zero, -900(r30)
0006cc  e70c0ff6  storeli.w zero, -1080(r30)
0006d0  67400ff6  storeli.w zero, -1276(r30)
0006d4  0b912120  mul.s r2, r3, r2
0006d8  9f010200  addli r3, r4, 0
0006dc  8b115150  fmac.s r3, r2, r5
0006e0  8b125120  mul.s r5, r2, r5
0006e4  9ff1f1ff  addli r3, r3, -1
0006e8  8b914130  div.s r3, r3, r4
0006ec  1b12f3ff  ori r4, r6, 4095
0006f0  670f4ffe  storeli.w r4, -16(r30)
0006f4  674f4ffe  storeli.w r4, -12(r30)
0006f8  e70f4ffe  storeli.w r4, -8(r30)
0006fc  e74f4ffe  storeli.w r4, -4(r30)
000700  e74d4ffe  storeli.w r4, -36(r30)
000704  670e4ffe  storeli.w r4, -32(r30)
000708  674e4ffe  storeli.w r4, -28(r30)
00070c  e70e4ffe  storeli.w r4, -24(r30)
000710  e70c4ffe  storeli.w r4, -56(r30)
000714  e74c4ffe  storeli.w r4, -52(r30)
000718  670d4ffe  storeli.w r4, -48(r30)
00071c  674d4ffe  storeli.w r4, -44(r30)
000720  674b4ffe  storeli.w r4, -76(r30)
000724  e70b4ffe  storeli.w r4, -72(r30)
000728  e74b4ffe  storeli.w r4, -68(r30)
00072c  670c4ffe  storeli.w r4, -64(r30)
000730  67404ffe  storeli.w r4, -252(r30)
000734  e7004ffe  storeli.w r4, -248(r30)
000738  e7404ffe  storeli.w r4, -244(r30)
00073c  67014ffe  storeli.w r4, -240(r30)
000740  67414ffe  storeli.w r4, -236(r30)
000744  e7014ffe  storeli.w r4, -232(r30)
000748  e7414ffe  storeli.w r4, -228(r30)
00074c  67024ffe  storeli.w r4, -224(r30)
000750  67424ffe  storeli.w r4, -220(r30)
000754  e7024ffe  storeli.w r4, -216(r30)
000758  e7424ffe  storeli.w r4, -212(r30)
00075c  67034ffe  storeli.w r4, -208(r30)
000760  67434ffe  storeli.w r4, -204(r30)
000764  e7034ffe  storeli.w r4, -200(r30)
000768  e7434ffe  storeli.w r4, -196(r30)
00076c  67044ffe  storeli.w r4, -192(r30)
000770  67444ffe  storeli.w r4, -188(r30)
000774  e7044ffe  storeli.w r4, -184(r30)
000778  e7444ffe  storeli.w r4, -180(r30)
00077c  67054ffe  storeli.w r4, -176(r30)
000780  67454ffe  storeli.w r4, -172(r30)
000784  e7054ffe  storeli.w r4, -168(r30)
000788  e7454ffe  storeli.w r4, -164(r30)
00078c  67064ffe  storeli.w r4, -160(r30)
000790  67464ffe  storeli.w r4, -156(r30)
000794  e7064ffe  storeli.w r4, -152(r30)
000798  e7464ffe  storeli.w r4, -148(r30)
00079c  67074ffe  storeli.w r4, -144(r30)
0007a0  67474ffe  storeli.w r4, -140(r30)
0007a4  e7074ffe  storeli.w r4, -136(r30)
0007a8  e7474ffe  storeli.w r4, -132(r30)
0007ac  67084ffe  storeli.w r4, -128(r30)
0007b0  67484ffe  storeli.w r4, -124(r30)
0007b4  e7084ffe  storeli.w r4, -120(r30)
0007b8  e7484ffe  storeli.w r4, -116(r30)
0007bc  67094ffe  storeli.w r4, -112(r30)
0007c0  67494ffe  storeli.w r4, -108(r30)
0007c4  e7094ffe  storeli.w r4, -104(r30)
0007c8  e7494ffe  storeli.w r4, -100(r30)
0007cc  670a4ffe  storeli.w r4, -96(r30)
0007d0  674a4ffe  storeli.w r4, -92(r30)
0007d4  e70a4ffe  storeli.w r4, -88(r30)
0007d8  e74a4ffe  storeli.w r4, -84(r30)
0007dc  67084ff8  storeli.w r4, -896(r30)
0007e0  67484ff8  storeli.w r4, -892(r30)
0007e4  e7084ff8  storeli.w r4, -888(r30)
0007e8  e7484ff8  storeli.w r4, -884(r30)
0007ec  67094ff8  storeli.w r4, -880(r30)
0007f0  67494ff8  storeli.w r4, -876(r30)
0007f4  e7094ff8  storeli.w r4, -872(r30)
0007f8  e7494ff8  storeli.w r4, -868(r30)
0007fc  670a4ff8  storeli.w r4, -864(r30)
000800  674a4ff8  storeli.w r4, -860(r30)
000804  e70a4ff8  storeli.w r4, -856(r30)
000808  e74a4ff8  storeli.w r4, -852(r30)
00080c  670b4ff8  storeli.w r4, -848(r30)
000810  674b4ff8  storeli.w r4, -844(r30)
000814  e70b4ff8  storeli.w r4, -840(r30)
000818  e74b4ff8  storeli.w r4, -836(r30)
00081c  670c4ff8  storeli.w r4, -832(r30)
000820  674c4ff8  storeli.w r4, -828(r30)
000824  e70c4ff8  storeli.w r4, -824(r30)
000828  e74c4ff8  storeli.w r4, -820(r30)
00082c  670d4ff8  storeli.w r4, -816(r30)
000830  674d4ff8  storeli.w r4, -812(r30)
000834  e70d4ff8  storeli.w r4, -808(r30)
000838  e74d4ff8  storeli.w r4, -804(r30)
00083c  670e4ff8  storeli.w r4, -800(r30)
000840  674e4ff8  storeli.w r4, -796(r30)
000844  e70e4ff8  storeli.w r4, -792(r30)
000848  e74e4ff8  storeli.w r4, -788(r30)
00084c  670f4ff8  storeli.w r4, -784(r30)
000850  674f4ff8  storeli.w r4, -780(r30)
000854  e70f4ff8  storeli.w r4, -776(r30)
000858  e74f4ff8  storeli.w r4, -772(r30)
00085c  67004ffa  storeli.w r4, -768(r30)
000860  67404ffa  storeli.w r4, -764(r30)
000864  e7004ffa  storeli.w r4, -760(r30)
000868  e7404ffa  storeli.w r4, -756(r30)
00086c  67014ffa  storeli.w r4, -752(r30)
000870  67414ffa  storeli.w r4, -748(r30)
000874  e7014ffa  storeli.w r4, -744(r30)
000878  e7414ffa  storeli.w r4, -740(r30)
00087c  67024ffa  storeli.w r4, -736(r30)
000880  67424ffa  storeli.w r4, -732(r30)
000884  e7024ffa  storeli.w r4, -728(r30)
000888  e7424ffa  storeli.w r4, -724(r30)
00088c  67034ffa  storeli.w r4, -720(r30)
000890  67434ffa  storeli.w r4, -716(r30)
000894  e7034ffa  storeli.w r4, -712(r30)
000898  e7434ffa  storeli.w r4, -708(r30)
00089c  67044ffa  storeli.w r4, -704(r30)
0008a0  67444ffa  storeli.w r4, -700(r30)
0008a4  e7044ffa  storeli.w r4, -696(r30)
0008a8  e7444ffa  storeli.w r4, -692(r30)
0008ac  67054ffa  storeli.w r4, -688(r30)
0008b0  67454ffa  storeli.w r4, -684(r30)
0008b4  e7054ffa  storeli.w r4, -680(r30)
0008b8  e7454ffa  storeli.w r4, -676(r30)
0008bc  67064ffa  storeli.w r4, -672(r30)
0008c0  67464ffa  storeli.w r4, -668(r30)
0008c4  e7064ffa  storeli.w r4, -664(r30)
0008c8  e7464ffa  storeli.w r4, -660(r30)
0008cc  67074ffa  storeli.w r4, -656(r30)
0008d0  67474ffa  storeli.w r4, -652(r30)
0008d4  e7074ffa  storeli.w r4, -648(r30)
0008d8  e7474ffa  storeli.w r4, -644(r30)
0008dc  67084ffa  storeli.w r4, -640(r30)
0008e0  67484ffa  storeli.w r4, -636(r30)
0008e4  e7084ffa  storeli.w r4, -632(r30)
0008e8  e7484ffa  storeli.w r4, -628(r30)
0008ec  67094ffa  storeli.w r4, -624(r30)
0008f0  67494ffa  storeli.w r4, -620(r30)
0008f4  e7094ffa  storeli.w r4, -616(r30)
0008f8  e7494ffa  storeli.w r4, -612(r30)
0008fc  670a4ffa  storeli.w r4, -608(r30)
000900  674a4ffa  storeli.w r4, -604(r30)
000904  e70a4ffa  storeli.w r4, -600(r30)
000908  e74a4ffa  storeli.w r4, -596(r30)
00090c  670b4ffa  storeli.w r4, -592(r30)
000910  674b4ffa  storeli.w r4, -588(r30)
000914  e70b4ffa  storeli.w r4, -584(r30)
000918  e74b4ffa  storeli.w r4, -580(r30)
00091c  670c4ffa  storeli.w r4, -576(r30)
000920  674c4ffa  storeli.w r4, -572(r30)
000924  e70c4ffa  storeli.w r4, -568(r30)
000928  e74c4ffa  storeli.w r4, -564(r30)
00092c  670d4ffa  storeli.w r4, -560(r30)
000930  674d4ffa  storeli.w r4, -556(r30)
000934  e70d4ffa  storeli.w r4, -552(r30)
000938  e74d4ffa  storeli.w r4, -548(r30)
00093c  670e4ffa  storeli.w r4, -544(r30)
000940  674e4ffa  storeli.w r4, -540(r30)
000944  e70e4ffa  storeli.w r4, -536(r30)
000948  e74e4ffa  storeli.w r4, -532(r30)
00094c  670f4ffa  storeli.w r4, -528(r30)
000950  674f4ffa  storeli.w r4, -524(r30)
000954  e70f4ffa  storeli.w r4, -520(r30)
000958  e74f4ffa  storeli.w r4, -516(r30)
00095c  67004ffc  storeli.w r4, -512(r30)
000960  67404ffc  storeli.w r4, -508(r30)
000964  e7004ffc  storeli.w r4, -504(r30)
000968  e7404ffc  storeli.w r4, -500(r30)
00096c  67014ffc  storeli.w r4, -496(r30)
000970  67414ffc  storeli.w r4, -492(r30)
000974  e7014ffc  storeli.w r4, -488(r30)
000978  e7414ffc  storeli.w r4, -484(r30)
00097c  67024ffc  storeli.w r4, -480(r30)
000980  67424ffc  storeli.w r4, -476(r30)
000984  e7024ffc  storeli.w r4, -472(r30)
000988  e7424ffc  storeli.w r4, -468(r30)
00098c  67034ffc  storeli.w r4, -464(r30)
000990  67434ffc  storeli.w r4, -460(r30)
000994  e7034ffc  storeli.w r4, -456(r30)
000998  e7434ffc  storeli.w r4, -452(r30)
00099c  67044ffc  storeli.w r4, -448(r30)
0009a0  67444ffc  storeli.w r4, -444(r30)
0009a4  e7044ffc  storeli.w r4, -440(r30)
0009a8  e7444ffc  storeli.w r4, -436(r30)
0009ac  67054ffc  storeli.w r4, -432(r30)
0009b0  67454ffc  storeli.w r4, -428(r30)
0009b4  e7054ffc  storeli.w r4, -424(r30)
0009b8  e7454ffc  storeli.w r4, -420(r30)
0009bc  67064ffc  storeli.w r4, -416(r30)
0009c0  67464ffc  storeli.w r4, -412(r30)
0009c4  e7064ffc  storeli.w r4, -408(r30)
0009c8  e7464ffc  storeli.w r4, -404(r30)
0009cc  67074ffc  storeli.w r4, -400(r30)
0009d0  67474ffc  storeli.w r4, -396(r30)
0009d4  e7074ffc  storeli.w r4, -392(r30)
0009d8  e7474ffc  storeli.w r4, -388(r30)
0009dc  67084ffc  storeli.w r4, -384(r30)
0009e0  67484ffc  storeli.w r4, -380(r30)
0009e4  e7084ffc  storeli.w r4, -376(r30)
0009e8  e7484ffc  storeli.w r4, -372(r30)
0009ec  67094ffc  storeli.w r4, -368(r30)
0009f0  67494ffc  storeli.w r4, -364(r30)
0009f4  e7094ffc  storeli.w r4, -360(r30)
0009f8  e7494ffc  storeli.w r4, -356(r30)
0009fc  670a4ffc  storeli.w r4, -352(r30)
000a00  674a4ffc  storeli.w r4, -348(r30)
000a04  e70a4ffc  storeli.w r4, -344(r30)
000a08  e74a4ffc  storeli.w r4, -340(r30)
000a0c  670b4ffc  storeli.w r4, -336(r30)
000a10  674b4ffc  storeli.w r4, -332(r30)
000a14  e70b4ffc  storeli.w r4, -328(r30)
000a18  e74b4ffc  storeli.w r4, -324(r30)
000a1c  670c4ffc  storeli.w r4, -320(r30)
000a20  674c4ffc  storeli.w r4, -316(r30)
000a24  e70c4ffc  storeli.w r4, -312(r30)
000a28  e74c4ffc  storeli.w r4, -308(r30)
000a2c  670d4ffc  storeli.w r4, -304(r30)
000a30  674d4ffc  storeli.w r4, -300(r30)
000a34  e70d4ffc  storeli.w r4, -296(r30)
000a38  e74d4ffc  storeli.w r4, -292(r30)
000a3c  670e4ffc  storeli.w r4, -288(r30)
000a40  674e4ffc  storeli.w r4, -284(r30)
000a44  e70e4ffc  storeli.w r4, -280(r30)
000a48  e74e4ffc  storeli.w r4, -276(r30)
000a4c  670f4ffc  storeli.w r4, -272(r30)
000a50  674f4ffc  storeli.w r4, -268(r30)
000a54  e70f4ffc  storeli.w r4, -264(r30)
000a58  e74f4ffc  storeli.w r4, -260(r30)
000a5c  e74c4ff6  storeli.w r4, -1076(r30)
000a60  670d4ff6  storeli.w r4, -1072(r30)
000a64  674d4ff6  storeli.w r4, -1068(r30)
000a68  e70d4ff6  storeli.w r4, -1064(r30)
000a6c  e74d4ff6  storeli.w r4, -1060(r30)
000a70  670e4ff6  storeli.w r4, -1056(r30)
000a74  674e4ff6  storeli.w r4, -1052(r30)
000a78  e70e4ff6  storeli.w r4, -1048(r30)
000a7c  e74e4ff6  storeli.w r4, -1044(r30)
000a80  670f4ff6  storeli.w r4, -1040(r30)
000a84  674f4ff6  storeli.w r4, -1036(r30)
000a88  e70f4ff6  storeli.w r4, -1032(r30)
000a8c  e74f4ff6  storeli.w r4, -1028(r30)
000a90  67004ff8  storeli.w r4, -1024(r30)
000a94  67404ff8  storeli.w r4, -1020(r30)
000a98  e7004ff8  storeli.w r4, -1016(r30)
000a9c  e7404ff8  storeli.w r4, -1012(r30)
000aa0  67014ff8  storeli.w r4, -1008(r30)
000aa4  67414ff8  storeli.w r4, -1004(r30)
000aa8  e7014ff8  storeli.w r4, -1000(r30)
000aac  e7414ff8  storeli.w r4, -996(r30)
000ab0  67024ff8  storeli.w r4, -992(r30)
000ab4  67424ff8  storeli.w r4, -988(r30)
000ab8  e7024ff8  storeli.w r4, -984(r30)
000abc  e7424ff8  storeli.w r4, -980(r30)
000ac0  67034ff8  storeli.w r4, -976(r30)
000ac4  67434ff8  storeli.w r4, -972(r30)
000ac8  e7034ff8  storeli.w r4, -968(r30)
000acc  e7434ff8  storeli.w r4, -964(r30)
000ad0  67044ff8  storeli.w r4, -960(r30)
000ad4  67444ff8  storeli.w r4, -956(r30)
000ad8  e7044ff8  storeli.w r4, -952(r30)
000adc  e7444ff8  storeli.w r4, -948(r30)
000ae0  67054ff8  storeli.w r4, -944(r30)
000ae4  67454ff8  storeli.w r4, -940(r30)
000ae8  e7054ff8  storeli.w r4, -936(r30)
000aec  e7454ff8  storeli.w r4, -932(r30)
000af0  67064ff8  storeli.w r4, -928(r30)
000af4  67464ff8  storeli.w r4, -924(r30)
000af8  e7064ff8  storeli.w r4, -920(r30)
000afc  e7464ff8  storeli.w r4, -916(r30)
000b00  67074ff8  storeli.w r4, -912(r30)
000b04  67474ff8  storeli.w r4, -908(r30)
000b08  e7074ff8  storeli.w r4, -904(r30)
000b0c  e7004ff6  storeli.w r4, -1272(r30)
000b10  e7404ff6  storeli.w r4, -1268(r30)
000b14  67014ff6  storeli.w r4, -1264(r30)
000b18  67414ff6  storeli.w r4, -1260(r30)
000b1c  e7014ff6  storeli.w r4, -1256(r30)
000b20  e7414ff6  storeli.w r4, -1252(r30)
000b24  67024ff6  storeli.w r4, -1248(r30)
000b28  67424ff6  storeli.w r4, -1244(r30)
000b2c  e7024ff6  storeli.w r4, -1240(r30)
000b30  e7424ff6  storeli.w r4, -1236(r30)
000b34  67034ff6  storeli.w r4, -1232(r30)
000b38  67434ff6  storeli.w r4, -1228(r30)
000b3c  e7034ff6  storeli.w r4, -1224(r30)
000b40  e7434ff6  storeli.w r4, -1220(r30)
000b44  67044ff6  storeli.w r4, -1216(r30)
000b48  67444ff6  storeli.w r4, -1212(r30)
000b4c  e7044ff6  storeli.w r4, -1208(r30)
000b50  e7444ff6  storeli.w r4, -1204(r30)
000b54  67054ff6  storeli.w r4, -1200(r30)
000b58  67454ff6  storeli.w r4, -1196(r30)
000b5c  e7054ff6  storeli.w r4, -1192(r30)
000b60  e7454ff6  storeli.w r4, -1188(r30)
000b64  67064ff6  storeli.w r4, -1184(r30)
000b68  67464ff6  storeli.w r4, -1180(r30)
000b6c  e7064ff6  storeli.w r4, -1176(r30)
000b70  e7464ff6  storeli.w r4, -1172(r30)
000b74  67074ff6  storeli.w r4, -1168(r30)
000b78  67474ff6  storeli.w r4, -1164(r30)
000b7c  e7074ff6  storeli.w r4, -1160(r30)
000b80  e7474ff6  storeli.w r4, -1156(r30)
000b84  67084ff6  storeli.w r4, -1152(r30)
000b88  67484ff6  storeli.w r4, -1148(r30)
000b8c  e7084ff6  storeli.w r4, -1144(r30)
000b90  e7484ff6  storeli.w r4, -1140(r30)
000b94  67094ff6  storeli.w r4, -1136(r30)
000b98  67494ff6  storeli.w r4, -1132(r30)
000b9c  e7094ff6  storeli.w r4, -1128(r30)
000ba0  e7494ff6  storeli.w r4, -1124(r30)
000ba4  670a4ff6  storeli.w r4, -1120(r30)
000ba8  674a4ff6  storeli.w r4, -1116(r30)
000bac  e70a4ff6  storeli.w r4, -1112(r30)
000bb0  e74a4ff6  storeli.w r4, -1108(r30)
000bb4  670b4ff6  storeli.w r4, -1104(r30)
000bb8  674b4ff6  storeli.w r4, -1100(r30)
000bbc  e70b4ff6  storeli.w r4, -1096(r30)
000bc0  e74b4ff6  storeli.w r4, -1092(r30)
000bc4  670c4ff6  storeli.w r4, -1088(r30)
000bc8  674c4ff6  storeli.w r4, -1084(r30)
000bcc  0b917120  mul.s r2, r3, r7
000bd0  8b917150  fmac.s r3, r3, r7
000bd4  8b915140  min.s r3, r3, r5
000bd8  4b9d2102  ble.s r3, r2, 1860
000bdc  b3910128  sext_int2long r[4:5], r3
000be0  b3130128  sext_int2long r[8:9], r2
000be4  e344dfff  loadli.w r9,  -20(r30)
000be8  630abfff  loadli.w r20,  -40(r30)
000bec  634b8fff  loadli.w r22,  -60(r30)
000bf0  e30b6fff  loadli.w r23,  -80(r30)
000bf4  63050ffe  loadli.w r10,  -256(r30)
000bf8  e3029ff7  loadli.w r5,  -1080(r30)
000bfc  63430ff6  loadli.w r6,  -1276(r30)
000c00  e346fff8  loadli.w r13,  -900(r30)
000c04  1f090001  addli r18, zero, 128
000c08  9f470000  addli r15, zero, 4
000c0c  1f6c0000  addli r24, zero, 6
000c10  9f290000  addli r19, zero, 2
000c14  9f0c6000  addli r25, zero, 48
000c18  9f405000  addli r1, zero, 44
000c1c  1f5d0000  addli r26, zero, 5
000c20  1f070000  addli r14, zero, 0
000c24  73383faa  store.d r[4:5], -1360(r30)
000c28  9f71f01f  addli r3, zero, 4095
000c2c  2b81ffff  lui r2, 1048568
000c30  73342faa  store.d r[3:4], -1368(r30)
000c34  2b611400  lui r2, 326
000c38  ab611600  lui r3, 358
000c3c  1b110140  ori r2, r2, 1024
000c40  674a2ff4  storeli.w r2, -1372(r30)
000c44  2b810d00  lui r2, 216
000c48  1b11d1b4  ori r2, r2, 2893
000c4c  670a2ff4  storeli.w r2, -1376(r30)
000c50  1b910140  ori r2, r3, 1024
000c54  abf17f7f  lui r3, 522239
000c58  e7492ff4  storeli.w r2, -1380(r30)
000c5c  2bf17fff  lui r2, 1046527
000c60  1b11f1ff  ori r2, r2, 4095
000c64  e7092ff4  storeli.w r2, -1384(r30)
000c68  1b91f1ff  ori r2, r3, 4095
000c6c  67492ff4  storeli.w r2, -1388(r30)
000c70  2b010200  lui r2, 32
000c74  5b100000  j 128
000c78  eb530f01  load.d r[8:9], 16(r30)
000c7c  6b588fac  load.d r[17:18], -1336(r30)
000c80  9f511000  addli r3, zero, 13
000c84  7d900100  xwait r3, 0
000c88  1d800700  lock zero, r15
000c8c  9bb12200  slli r3, r5, 2
000c90  8ba30311  add.ul r[8:9], r[8:9], r[17:18]
000c94  15000000  dma_cfg zero, zero, zero, 0
000c98  15000404  dma_cfg zero, r8, zero, 2
000c9c  15823306  dma_cfg r4, r7, r3, 3
000ca0  9f010002  addli r3, zero, 256
000ca4  9581e108  dma_cfg r3, r3, r14, 4
000ca8  35000000  dma_run zero
000cac  1d900700  unlock r15
000cb0  9f411000  addli r3, zero, 12
000cb4  630bdff5  loadli.w r22,  -1304(r30)
000cb8  7d800100  xsignal r3, 0
000cbc  e304eff5  loadli.w r9,  -1296(r30)
000cc0  634adff5  loadli.w r20,  -1300(r30)
000cc4  1f1b0b00  addli r22, r22, 1
000cc8  eb538fad  load.d r[8:9], -1320(r30)
000ccc  eb510fab  load.d r[4:5], -1360(r30)
000cd0  6347aff5  loadli.w r14,  -1324(r30)
000cd4  9f9b0b00  addli r23, r23, 1
000cd8  1f130e00  addli r6, r28, 1
000cdc  9f920a00  addli r5, r21, 1
000ce0  1f1a0a00  addli r20, r20, 1
000ce4  9f940400  addli r9, r9, 1
000ce8  a7930300  addli.d r[8:9], r[8:9], 1
000cec  93b13304  setlt.sl r3, r[8:9], r[4:5]
000cf0  b7a80102  beq r3, zero, 1576
000cf4  670f9ff4  storeli.w r9, -1296(r30)
000cf8  3bb0f500  bneq r11, r15, 12
000cfc  9f311000  addli r3, zero, 11
000d00  7d900100  xwait r3, 0
000d04  e3016f00  loadli.w r3,  48(r30)
000d08  63425f00  loadli.w r4,  44(r30)
000d0c  733c7fac  store.d r[8:9], -1320(r30)
000d10  9f041000  addli r9, zero, 8
000d14  9f551000  addli r11, zero, 13
000d18  9f1d0000  addli r27, zero, 1
000d1c  e74e4ff5  storeli.w r20, -1300(r30)
000d20  e70e6ff5  storeli.w r22, -1304(r30)
000d24  674e7ff5  storeli.w r23, -1308(r30)
000d28  8b913330  div.s r3, r7, r3
000d2c  0b924130  div.s r4, r3, r4
000d30  8b132231  div.s r7, r4, r18
000d34  9bb13300  slli r3, r7, 3
000d38  0b943718  sub.s r8, r15, r3
000d3c  0b149440  min.s r8, r8, r9
000d40  8b148238  mod.s r9, r4, r8
000d44  8b919110  add.s r3, r3, r9
000d48  9f340000  addli r9, zero, 3
000d4c  93843404  setlt.u r9, r9, r3
000d50  33880128  zext_int2long r[17:18], r3
000d54  73300fad  store.d r[17:18], -1344(r30)
000d58  1738b802  sll.d r[17:18], r[17:18], r11
000d5c  3bb00400  bneq r9, zero, 12
000d60  b3050028  zext_int2long r[12:13], zero
000d64  db010000  j 12
000d68  eb558faa  load.d r[12:13], -1368(r30)
000d6c  9705b802  and.d r[12:13], r[17:18], r[12:13]
000d70  9bb37300  slli r7, r7, 7
000d74  9bb17100  slli r3, r3, 7
000d78  1f0a0000  addli r20, zero, 0
000d7c  0b127218  sub.s r4, r4, r7
000d80  8b13f738  mod.s r7, r14, r15
000d84  e74b3ff4  storeli.w r3, -1348(r30)
000d88  1f170700  addli r14, r14, 1
000d8c  0b128230  div.s r4, r4, r8
000d90  674deff4  storeli.w r14, -1324(r30)
000d94  9bb1f300  slli r3, r7, 15
000d98  33040228  zext_int2long r[9:10], r4
000d9c  674f3ff4  storeli.w r3, -1292(r30)
000da0  9b316200  slli r3, r4, 6
000da4  973a8403  sll.d r[22:23], r[9:10], r24
000da8  670d3ff4  storeli.w r3, -1328(r30)
000dac  eb518f00  load.d r[4:5], 8(r30)
000db0  97b33a03  sll.d r[8:9], r[22:23], r19
000db4  1f1b0000  addli r22, zero, 1
000db8  8ba17110  add.ul r[4:5], r[4:5], r[8:9]
000dbc  73347fac  store.d r[8:9], -1336(r30)
000dc0  9f030000  addli r7, zero, 0
000dc4  733c3fae  store.d r[4:5], -1288(r30)
000dc8  db0a0000  j 84
000dcc  7d900900  xwait r19, 0
000dd0  7d100d00  xwait r26, 0
000dd4  1d000000  lock zero, zero
000dd8  9f014000  addli r3, zero, 32
000ddc  9f960600  addli r13, r13, 1
000de0  81090000  ds_cfg r19, zero, 0
000de4  81010002  ds_cfg r3, zero, 1
000de8  8101001c  ds_cfg r3, zero, 14
000dec  0109001a  ds_cfg r18, zero, 13
000df0  a19b3402  shuffle_batch r23, r9, r3, 1
000df4  9f310000  addli r3, zero, 3
000df8  1d100000  unlock zero
000dfc  7d800100  xsignal r3, 0
000e00  7d800700  xsignal r15, 0
000e04  9b011b00  andi r3, r22, 1
000e08  1f150500  addli r10, r10, 1
000e0c  b7d70100  beq r3, zero, 500
000e10  9f930300  addli r7, r7, 1
000e14  1f1a0000  addli r20, zero, 1
000e18  1f0b0000  addli r22, zero, 0
000e1c  8b9a7210  add.s r21, r5, r7
000e20  0b1e7310  add.s r28, r6, r7
000e24  00370002  core_id r14
000e28  8b911a38  mod.s r3, r21, r1
000e2c  0b129e39  mod.s r4, r28, r25
000e30  9bb1e100  slli r3, r3, 14
000e34  9b3be200  slli r23, r4, 14
000e38  8b942110  add.s r9, r3, r2
000e3c  374e37ff  beq r14, r19, -112
000e40  b3010a28  zext_int2long r[4:5], r20
000e44  3b32b701  bneq r14, r27, 140
000e48  97b1a103  sll.d r[4:5], r[4:5], r26
000e4c  9f008000  addli r1, zero, 64
000e50  1f3a0000  addli r20, zero, 3
000e54  9f960600  addli r13, r13, 1
000e58  1f090001  addli r18, zero, 128
000e5c  97910103  or.d r[4:5], r[4:5], r[17:18]
000e60  b38b0028  zext_int2long r[24:25], r1
000e64  9f000003  addli r1, zero, 384
000e68  7d100a00  xwait r20, 0
000e6c  1d800700  lock zero, r15
000e70  15000000  dma_cfg zero, zero, zero, 0
000e74  8bbcb118  sub.sl r[26:27], r[4:5], r[12:13]
000e78  97b13103  sll.d r[4:5], r[4:5], r19
000e7c  8f9b7c61  div.sl r[24:25], r[26:27], r[24:25]
000e80  b38c0028  zext_int2long r[26:27], r1
000e84  eb500f00  load.d r[2:3], 0(r30)
000e88  8ba13010  add.ul r[4:5], r[2:3], r[4:5]
000e8c  2b010200  lui r2, 32
000e90  9f405000  addli r1, zero, 44
000e94  15000204  dma_cfg zero, r4, zero, 2
000e98  8bbc9b41  min.sl r[26:27], r[24:25], r[26:27]
000e9c  8bbb7c19  sub.sl r[24:25], r[26:27], r[24:25]
000ea0  1f5d0000  addli r26, zero, 5
000ea4  9f0c6000  addli r25, zero, 48
000ea8  1f8a0b01  addli r20, r23, 128
000eac  9f0b0001  addli r23, zero, 128
000eb0  1f6c0000  addli r24, zero, 6
000eb4  95847107  dma_cfg r9, r3, r23, 3
000eb8  9f010002  addli r3, zero, 256
000ebc  958b4109  dma_cfg r23, r3, r20, 4
000ec0  35000000  dma_run zero
000ec4  1d900700  unlock r15
000ec8  7d800900  xsignal r19, 0
000ecc  5be7ffff  j -200
000ed0  1f3a5000  addli r20, zero, 43
000ed4  9f044001  addli r9, zero, 160
000ed8  2b040d00  lui r8, 208
000edc  0b1a4539  mod.s r20, r10, r20
000ee0  8b949638  mod.s r9, r13, r9
000ee4  9f960600  addli r13, r13, 1
000ee8  1b3ada00  slli r20, r20, 13
000eec  9bb4d400  slli r9, r9, 13
000ef0  0b1a8a10  add.s r20, r20, r8
000ef4  1f740000  addli r8, zero, 7
000ef8  37418700  beq r14, r8, 80
000efc  3b428701  bneq r14, r24, 144
000f00  9f142000  addli r9, zero, 17
000f04  1f740000  addli r8, zero, 7
000f08  97b19102  sll.d r[4:5], r[4:5], r9
000f0c  7d100400  xwait r8, 0
000f10  6b548faf  load.d r[9:10], -1288(r30)
000f14  1d800700  lock zero, r15
000f18  15000000  dma_cfg zero, zero, zero, 0
000f1c  8b213410  add.ul r[4:5], r[9:10], r[4:5]
000f20  9f040002  addli r9, zero, 256
000f24  15000204  dma_cfg zero, r4, zero, 2
000f28  158a9106  dma_cfg r20, r3, r9, 3
000f2c  9f014000  addli r3, zero, 32
000f30  1f020020  addli r4, zero, 4096
000f34  95043208  dma_cfg r9, r4, r3, 4
000f38  35000000  dma_run zero
000f3c  1d900700  unlock r15
000f40  7d000c00  xsignal r24, 0
000f44  5bd8ffff  j -320
000f48  9f111000  addli r3, zero, 9
000f4c  7d100c00  xwait r24, 0
000f50  1f024000  addli r4, zero, 32
000f54  7d900100  xwait r3, 0
000f58  1d000000  lock zero, zero
000f5c  9f018000  addli r3, zero, 64
000f60  81090000  ds_cfg r19, zero, 0
000f64  81010002  ds_cfg r3, zero, 1
000f68  0102001c  ds_cfg r4, zero, 14
000f6c  8101001a  ds_cfg r3, zero, 13
000f70  9f710000  addli r3, zero, 7
000f74  c1044a04  shuffle_coa r9, r20, r4, 2
000f78  1d100000  unlock zero
000f7c  7d800100  xsignal r3, 0
000f80  9f011000  addli r3, zero, 8
000f84  7d800100  xsignal r3, 0
000f88  dbcfffff  j -388
000f8c  bb60f700  bneq r14, r15, 56
000f90  9f011000  addli r3, zero, 8
000f94  1f120000  addli r4, zero, 1
000f98  7d900700  xwait r15, 0
000f9c  1f074000  addli r14, zero, 32
000fa0  7d900100  xwait r3, 0
000fa4  9f018000  addli r3, zero, 64
000fa8  1d000200  lock zero, r4
000fac  89012701  mm_cfg r3, r14, r18, 0
000fb0  89894904  mm_cfg r19, r19, r4, 2
000fb4  b7800300  beq r7, zero, 32
000fb8  e341eff5  loadli.w r3,  -1292(r30)
000fbc  a9919b10  mm_acc r3, r23, r9, 8
000fc0  db030000  j 28
000fc4  9b011b00  andi r3, r22, 1
000fc8  1f150500  addli r10, r10, 1
000fcc  3b9901fe  bneq r3, zero, -444
000fd0  db070000  j 60
000fd4  e341eff5  loadli.w r3,  -1292(r30)
000fd8  a9819b10  mm r3, r23, r9, 8
000fdc  1d100200  unlock r4
000fe0  9f1d0000  addli r27, zero, 1
000fe4  9b011b00  andi r3, r22, 1
000fe8  1f150500  addli r10, r10, 1
000fec  1f121000  addli r4, zero, 9
000ff0  7d000d00  xsignal r26, 0
000ff4  7d000200  xsignal r4, 0
000ff8  3be801fe  bneq r3, zero, -488
000ffc  5b010000  j 8
001000  3b30f700  bneq r14, r15, 12
001004  9f211000  addli r3, zero, 10
001008  7d800100  xsignal r3, 0
00100c  e301aff5  loadli.w r3,  -1328(r30)
001010  9f028007  addli r5, zero, 960
001014  e34bcff5  loadli.w r23,  -1308(r30)
001018  9f048000  addli r9, zero, 64
00101c  1f170000  addli r14, zero, 1
001020  b3820228  zext_int2long r[6:7], r5
001024  b3850428  zext_int2long r[12:13], r9
001028  ab641200  lui r9, 294
00102c  b3810128  zext_int2long r[4:5], r3
001030  8b93fb38  mod.s r7, r23, r15
001034  8ba25140  min.ul r[6:7], r[4:5], r[6:7]
001038  a7828200  addli.d r[6:7], r[6:7], 64
00103c  8ba23248  max.ul r[6:7], r[6:7], r[4:5]
001040  9bb38300  slli r7, r7, 8
001044  8bb13218  sub.sl r[4:5], r[6:7], r[4:5]
001048  8ba2b140  min.ul r[6:7], r[4:5], r[12:13]
00104c  0b929310  add.s r4, r7, r9
001050  80350002  core_id r11
001054  b790e5fe  beq r11, r14, -988
001058  630bdff5  loadli.w r22,  -1304(r30)
00105c  9b930440  ori r7, r9, 1024
001060  e304eff5  loadli.w r9,  -1296(r30)
001064  634adff5  loadli.w r20,  -1300(r30)
001068  2b860000  lui r12, 8
00106c  8b11fb38  mod.s r3, r22, r15
001070  1f1b0b00  addli r22, r22, 1
001074  9bb1f100  slli r3, r3, 15
001078  8b917110  add.s r3, r3, r7
00107c  9f330000  addli r7, zero, 3
001080  3b927500  bneq r11, r7, 132
001084  1f231000  addli r6, zero, 10
001088  9f020000  addli r5, zero, 0
00108c  7d100300  xwait r6, 0
001090  1f431000  addli r6, zero, 12
001094  7d100300  xwait r6, 0
001098  1f731000  addli r6, zero, 15
00109c  7d100300  xwait r6, 0
0010a0  1d800900  lock zero, r19
0010a4  2b03803f  lui r6, 260096
0010a8  0d000002  ew_cfg zero, zero, zero, 1
0010ac  0d130300  ewcoeff_cfg r6, r6, zero, 0
0010b0  1f737000  addli r6, zero, 63
0010b4  0d000304  ew_cfg zero, r6, zero, 2
0010b8  0d070006  ew_cfg r14, zero, zero, 3
0010bc  6344eff5  loadli.w r8,  -1292(r30)
0010c0  0b935110  add.s r6, r3, r5
0010c4  8b135410  add.s r7, r8, r5
0010c8  9f820202  addli r5, r5, 256
0010cc  2d834300  dsmadd r6, r7, r4, 0
0010d0  bbcfc2fe  bneq r5, r12, -16
0010d4  9f311000  addli r3, zero, 11
0010d8  1d900900  unlock r19
0010dc  7d800100  xsignal r3, 0
0010e0  9f511000  addli r3, zero, 13
0010e4  7d800100  xsignal r3, 0
0010e8  9f012000  addli r3, zero, 16
0010ec  7d800100  xsignal r3, 0
0010f0  9f112000  addli r3, zero, 17
0010f4  7d800100  xsignal r3, 0
0010f8  9f611000  addli r3, zero, 14
0010fc  7d800100  xsignal r3, 0
001100  5b79ffff  j -1080
001104  0b12fa38  mod.s r4, r20, r15
001108  e3434ff5  loadli.w r7,  -1372(r30)
00110c  1b32f200  slli r4, r4, 15
001110  0b127210  add.s r4, r4, r7
001114  bbb5a501  bneq r11, r26, 364
001118  9f621000  addli r5, zero, 14
00111c  1f030000  addli r6, zero, 0
001120  7d900200  xwait r5, 0
001124  9f322000  addli r5, zero, 19
001128  7d900200  xwait r5, 0
00112c  1d800900  lock zero, r19
001130  9f521000  addli r5, zero, 13
001134  0d000002  ew_cfg zero, zero, zero, 1
001138  eb538faa  load.d r[8:9], -1368(r30)
00113c  0d000404  ew_cfg zero, r8, zero, 2
001140  ab83ff40  lui r7, 266232
001144  2b0400c1  lui r8, 790528
001148  8d090006  ew_cfg r19, zero, zero, 3
00114c  8d890926  ew_cfg r19, r19, zero, 19
001150  8d020014  ew_cfg r5, zero, zero, 10
001154  e3024ff5  loadli.w r5,  -1376(r30)
001158  8d095716  ew_cfg r19, r14, r5, 11
00115c  9f320000  addli r5, zero, 3
001160  0d00501a  ew_cfg zero, zero, r5, 13
001164  8b92f438  mod.s r5, r9, r15
001168  0d84771c  ew_cfg r8, r15, r7, 14
00116c  ab03803f  lui r7, 260096
001170  0d80031e  ew_cfg zero, r7, zero, 15
001174  4da20100  sslut r4, r3, 0
001178  0d000014  ew_cfg zero, zero, zero, 10
00117c  0d000026  ew_cfg zero, zero, zero, 19
001180  9bb2f200  slli r5, r5, 15
001184  1d900900  unlock r19
001188  e3433ff5  loadli.w r7,  -1380(r30)
00118c  8b927210  add.s r5, r5, r7
001190  9f032000  addli r7, zero, 16
001194  7d900300  xwait r7, 0
001198  9f432000  addli r7, zero, 20
00119c  7d900300  xwait r7, 0
0011a0  1d800900  lock zero, r19
0011a4  9f737000  addli r7, zero, 63
0011a8  0d000002  ew_cfg zero, zero, zero, 1
0011ac  0d800304  ew_cfg zero, r7, zero, 2
0011b0  0d070006  ew_cfg r14, zero, zero, 3
0011b4  e3033ff5  loadli.w r7,  -1384(r30)
0011b8  8d130000  ewcoeff_cfg r7, zero, zero, 0
0011bc  8b936210  add.s r7, r5, r6
0011c0  0b946110  add.s r8, r3, r6
0011c4  1f030302  addli r6, r6, 256
0011c8  ad238400  dscmpnsel r7, r8, r8, 0
0011cc  bb4fc3fe  bneq r6, r12, -16
0011d0  1d900900  unlock r19
0011d4  9f737000  addli r7, zero, 63
0011d8  1f030000  addli r6, zero, 0
0011dc  1d800900  lock zero, r19
0011e0  0d000002  ew_cfg zero, zero, zero, 1
0011e4  0d800304  ew_cfg zero, r7, zero, 2
0011e8  0d070006  ew_cfg r14, zero, zero, 3
0011ec  e3432ff5  loadli.w r7,  -1388(r30)
0011f0  8d130000  ewcoeff_cfg r7, zero, zero, 0
0011f4  8b936210  add.s r7, r5, r6
0011f8  1f030302  addli r6, r6, 256
0011fc  ada37308  dscmpnsel r7, r7, r7, 4
001200  bb5fc3fe  bneq r6, r12, -12
001204  1f132000  addli r6, zero, 17
001208  1d900900  unlock r19
00120c  2b04803f  lui r8, 260096
001210  7d100300  xwait r6, 0
001214  1d800900  lock zero, r19
001218  2b0380bf  lui r6, 784384
00121c  0d000002  ew_cfg zero, zero, zero, 1
001220  0d140300  ewcoeff_cfg r8, r6, zero, 0
001224  6b538faa  load.d r[7:8], -1368(r30)
001228  0d800304  ew_cfg zero, r7, zero, 2
00122c  8d090006  ew_cfg r19, zero, zero, 3
001230  8d893927  ew_cfg r19, r19, r19, 19
001234  ad815100  dsmadd r3, r3, r5, 0
001238  9f422000  addli r5, zero, 20
00123c  0d000026  ew_cfg zero, zero, zero, 19
001240  1d900900  unlock r19
001244  7d800200  xsignal r5, 0
001248  1d800900  lock zero, r19
00124c  0d000002  ew_cfg zero, zero, zero, 1
001250  0d140400  ewcoeff_cfg r8, r8, zero, 0
001254  0d800304  ew_cfg zero, r7, zero, 2
001258  8d090006  ew_cfg r19, zero, zero, 3
00125c  8d893927  ew_cfg r19, r19, r19, 19
001260  2d023200  dsmadd r4, r4, r3, 0
001264  9f711000  addli r3, zero, 15
001268  0d000026  ew_cfg zero, zero, zero, 19
00126c  1d900900  unlock r19
001270  7d800100  xsignal r3, 0
001274  9f212000  addli r3, zero, 18
001278  7d800100  xsignal r3, 0
00127c  db49ffff  j -1460
001280  3ba905fc  bneq r11, zero, -1464
001284  e3417ff5  loadli.w r3,  -1348(r30)
001288  6b580fac  load.d r[17:18], -1344(r30)
00128c  9f3d2000  addli r27, zero, 19
001290  b3930128  sext_int2long r[8:9], r3
001294  9f010003  addli r3, zero, 384
001298  1738b803  sll.d r[17:18], r[17:18], r27
00129c  b3850128  zext_int2long r[12:13], r3
0012a0  9f212000  addli r3, zero, 18
0012a4  8bb5b340  min.sl r[12:13], r[8:9], r[12:13]
0012a8  a7850501  addli.d r[12:13], r[12:13], 128
0012ac  8bb57548  max.sl r[12:13], r[12:13], r[8:9]
0012b0  733cbfae  store.d r[12:13], -1288(r30)
0012b4  eb558f01  load.d r[12:13], 24(r30)
0012b8  0ba80511  add.ul r[17:18], r[12:13], r[17:18]
0012bc  eb558faf  load.d r[12:13], -1288(r30)
0012c0  8bb37518  sub.sl r[8:9], r[12:13], r[8:9]
0012c4  b3050928  zext_int2long r[12:13], r18
0012c8  733c7fae  store.d r[8:9], -1288(r30)
0012cc  eb538fac  load.d r[8:9], -1336(r30)
0012d0  0b287810  add.ul r[17:18], r[17:18], r[8:9]
0012d4  eb538faf  load.d r[8:9], -1288(r30)
0012d8  7d900100  xwait r3, 0
0012dc  1d000d00  lock zero, r26
0012e0  9bb12200  slli r3, r5, 2
0012e4  15000000  dma_cfg zero, zero, zero, 0
0012e8  15000702  dma_cfg zero, r14, zero, 1
0012ec  95080004  dma_cfg r17, zero, zero, 2
0012f0  8bb3b340  min.sl r[8:9], r[8:9], r[12:13]
0012f4  80350002  core_id r11
0012f8  15083206  dma_cfg r16, r4, r3, 3
0012fc  9f010002  addli r3, zero, 256
001300  1f020020  addli r4, zero, 4096
001304  15827108  dma_cfg r4, r3, r7, 4
001308  35000000  dma_run zero
00130c  1d100d00  unlock r26
001310  7d800d00  xsignal r27, 0
001314  db36ffff  j -1612
001318  e747dff8  storeli.w r13, -900(r30)
00131c  7d000000  xsignal zero, 0
001320  bbe00500  bneq r11, zero, 56
001324  9f200000  addli r1, zero, 2
001328  7d100000  xwait zero, 0
00132c  7d100000  xwait zero, 0
001330  7d100000  xwait zero, 0
001334  7d100000  xwait zero, 0
001338  7d100000  xwait zero, 0
00133c  7d100000  xwait zero, 0
001340  7d100000  xwait zero, 0
001344  7d100000  xwait zero, 0
001348  1d800000  lock zero, r1
00134c  0d000020  ew_cfg zero, zero, zero, 16
001350  1d900000  unlock r1
001354  7d400000  xsignal_mode_cfg zero
001358  9f8eee0a  addli sp, sp, 1392
00135c  00a00300  mfence { lm, sm, gm }
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
