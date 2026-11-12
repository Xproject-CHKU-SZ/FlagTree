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
0000b4  9f8e7ef4  addli sp, sp, -1480
0000b8  1f110000  addli r2, zero, 1
0000bc  80300002  core_id r1
0000c0  1f8f1e0b  addli r30, sp, 1416
0000c4  7d400100  xsignal_mode_cfg r2
0000c8  b7900000  beq r1, zero, 36
0000cc  abf1ffff  lui r3, 1048575
0000d0  7d100100  xwait r2, 0
0000d4  7d100100  xwait r2, 0
0000d8  7d100000  xwait zero, 0
0000dc  1b91f1ff  ori r2, r3, 4095
0000e0  80210104  csr_set csr3, r2
0000e4  00d00100  sync_group
0000e8  dbb90000  j 1484
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
0001a4  7d800100  xsignal r3, 0
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
000264  1f111000  addli r2, zero, 9
000268  9f710000  addli r3, zero, 7
00026c  7d000200  xsignal r4, 0
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
000320  7d000200  xsignal r4, 0
000324  7d000200  xsignal r4, 0
000328  7d000200  xsignal r4, 0
00032c  7d000200  xsignal r4, 0
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
0005a0  7d000100  xsignal r2, 0
0005a4  7d000100  xsignal r2, 0
0005a8  7d000100  xsignal r2, 0
0005ac  7d000100  xsignal r2, 0
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
00064c  7d800100  xsignal r3, 0
000650  7d800100  xsignal r3, 0
000654  7d800100  xsignal r3, 0
000658  7d800100  xsignal r3, 0
00065c  7d800100  xsignal r3, 0
000660  7d800100  xsignal r3, 0
000664  7d800100  xsignal r3, 0
000668  7d800100  xsignal r3, 0
00066c  7d800100  xsignal r3, 0
000670  7d800100  xsignal r3, 0
000674  1f511000  addli r2, zero, 13
000678  9f711000  addli r3, zero, 15
00067c  7d000100  xsignal r2, 0
000680  7d000100  xsignal r2, 0
000684  7d000100  xsignal r2, 0
000688  7d800100  xsignal r3, 0
00068c  7d800100  xsignal r3, 0
000690  7d800100  xsignal r3, 0
000694  1f312000  addli r2, zero, 19
000698  9f412000  addli r3, zero, 20
00069c  7d000100  xsignal r2, 0
0006a0  7d000100  xsignal r2, 0
0006a4  7d000100  xsignal r2, 0
0006a8  7d800100  xsignal r3, 0
0006ac  7d800100  xsignal r3, 0
0006b0  7d800100  xsignal r3, 0
0006b4  63015f00  loadli.w r2,  40(r30)
0006b8  e3415f00  loadli.w r3,  44(r30)
0006bc  00d20002  load_param_i r4, 1
0006c0  e3026f00  loadli.w r5,  48(r30)
0006c4  80530002  load_param_i r7, 0
0006c8  2bf3ffff  lui r6, 1048575
0006cc  670f0ffe  storeli.w zero, -16(r30)
0006d0  670e0ffe  storeli.w zero, -32(r30)
0006d4  670d0ffe  storeli.w zero, -48(r30)
0006d8  670c0ffe  storeli.w zero, -64(r30)
0006dc  e70f0ffc  storeli.w zero, -264(r30)
0006e0  67470ff8  storeli.w zero, -908(r30)
0006e4  e74a0ff6  storeli.w zero, -1108(r30)
0006e8  e70e0ff4  storeli.w zero, -1304(r30)
0006ec  0b912120  mul.s r2, r3, r2
0006f0  9f010200  addli r3, r4, 0
0006f4  8b115150  fmac.s r3, r2, r5
0006f8  8b125120  mul.s r5, r2, r5
0006fc  9ff1f1ff  addli r3, r3, -1
000700  8b914130  div.s r3, r3, r4
000704  1b12f3ff  ori r4, r6, 4095
000708  674f4ffe  storeli.w r4, -12(r30)
00070c  e70f4ffe  storeli.w r4, -8(r30)
000710  e74f4ffe  storeli.w r4, -4(r30)
000714  674e4ffe  storeli.w r4, -28(r30)
000718  e70e4ffe  storeli.w r4, -24(r30)
00071c  e74e4ffe  storeli.w r4, -20(r30)
000720  674d4ffe  storeli.w r4, -44(r30)
000724  e70d4ffe  storeli.w r4, -40(r30)
000728  e74d4ffe  storeli.w r4, -36(r30)
00072c  674c4ffe  storeli.w r4, -60(r30)
000730  e70c4ffe  storeli.w r4, -56(r30)
000734  e74c4ffe  storeli.w r4, -52(r30)
000738  e74f4ffc  storeli.w r4, -260(r30)
00073c  67004ffe  storeli.w r4, -256(r30)
000740  67404ffe  storeli.w r4, -252(r30)
000744  e7004ffe  storeli.w r4, -248(r30)
000748  e7404ffe  storeli.w r4, -244(r30)
00074c  67014ffe  storeli.w r4, -240(r30)
000750  67414ffe  storeli.w r4, -236(r30)
000754  e7014ffe  storeli.w r4, -232(r30)
000758  e7414ffe  storeli.w r4, -228(r30)
00075c  67024ffe  storeli.w r4, -224(r30)
000760  67424ffe  storeli.w r4, -220(r30)
000764  e7024ffe  storeli.w r4, -216(r30)
000768  e7424ffe  storeli.w r4, -212(r30)
00076c  67034ffe  storeli.w r4, -208(r30)
000770  67434ffe  storeli.w r4, -204(r30)
000774  e7034ffe  storeli.w r4, -200(r30)
000778  e7434ffe  storeli.w r4, -196(r30)
00077c  67044ffe  storeli.w r4, -192(r30)
000780  67444ffe  storeli.w r4, -188(r30)
000784  e7044ffe  storeli.w r4, -184(r30)
000788  e7444ffe  storeli.w r4, -180(r30)
00078c  67054ffe  storeli.w r4, -176(r30)
000790  67454ffe  storeli.w r4, -172(r30)
000794  e7054ffe  storeli.w r4, -168(r30)
000798  e7454ffe  storeli.w r4, -164(r30)
00079c  67064ffe  storeli.w r4, -160(r30)
0007a0  67464ffe  storeli.w r4, -156(r30)
0007a4  e7064ffe  storeli.w r4, -152(r30)
0007a8  e7464ffe  storeli.w r4, -148(r30)
0007ac  67074ffe  storeli.w r4, -144(r30)
0007b0  67474ffe  storeli.w r4, -140(r30)
0007b4  e7074ffe  storeli.w r4, -136(r30)
0007b8  e7474ffe  storeli.w r4, -132(r30)
0007bc  67084ffe  storeli.w r4, -128(r30)
0007c0  67484ffe  storeli.w r4, -124(r30)
0007c4  e7084ffe  storeli.w r4, -120(r30)
0007c8  e7484ffe  storeli.w r4, -116(r30)
0007cc  67094ffe  storeli.w r4, -112(r30)
0007d0  67494ffe  storeli.w r4, -108(r30)
0007d4  e7094ffe  storeli.w r4, -104(r30)
0007d8  e7494ffe  storeli.w r4, -100(r30)
0007dc  670a4ffe  storeli.w r4, -96(r30)
0007e0  674a4ffe  storeli.w r4, -92(r30)
0007e4  e70a4ffe  storeli.w r4, -88(r30)
0007e8  e74a4ffe  storeli.w r4, -84(r30)
0007ec  670b4ffe  storeli.w r4, -80(r30)
0007f0  674b4ffe  storeli.w r4, -76(r30)
0007f4  e70b4ffe  storeli.w r4, -72(r30)
0007f8  e74b4ffe  storeli.w r4, -68(r30)
0007fc  e7074ff8  storeli.w r4, -904(r30)
000800  e7474ff8  storeli.w r4, -900(r30)
000804  67084ff8  storeli.w r4, -896(r30)
000808  67484ff8  storeli.w r4, -892(r30)
00080c  e7084ff8  storeli.w r4, -888(r30)
000810  e7484ff8  storeli.w r4, -884(r30)
000814  67094ff8  storeli.w r4, -880(r30)
000818  67494ff8  storeli.w r4, -876(r30)
00081c  e7094ff8  storeli.w r4, -872(r30)
000820  e7494ff8  storeli.w r4, -868(r30)
000824  670a4ff8  storeli.w r4, -864(r30)
000828  674a4ff8  storeli.w r4, -860(r30)
00082c  e70a4ff8  storeli.w r4, -856(r30)
000830  e74a4ff8  storeli.w r4, -852(r30)
000834  670b4ff8  storeli.w r4, -848(r30)
000838  674b4ff8  storeli.w r4, -844(r30)
00083c  e70b4ff8  storeli.w r4, -840(r30)
000840  e74b4ff8  storeli.w r4, -836(r30)
000844  670c4ff8  storeli.w r4, -832(r30)
000848  674c4ff8  storeli.w r4, -828(r30)
00084c  e70c4ff8  storeli.w r4, -824(r30)
000850  e74c4ff8  storeli.w r4, -820(r30)
000854  670d4ff8  storeli.w r4, -816(r30)
000858  674d4ff8  storeli.w r4, -812(r30)
00085c  e70d4ff8  storeli.w r4, -808(r30)
000860  e74d4ff8  storeli.w r4, -804(r30)
000864  670e4ff8  storeli.w r4, -800(r30)
000868  674e4ff8  storeli.w r4, -796(r30)
00086c  e70e4ff8  storeli.w r4, -792(r30)
000870  e74e4ff8  storeli.w r4, -788(r30)
000874  670f4ff8  storeli.w r4, -784(r30)
000878  674f4ff8  storeli.w r4, -780(r30)
00087c  e70f4ff8  storeli.w r4, -776(r30)
000880  e74f4ff8  storeli.w r4, -772(r30)
000884  67004ffa  storeli.w r4, -768(r30)
000888  67404ffa  storeli.w r4, -764(r30)
00088c  e7004ffa  storeli.w r4, -760(r30)
000890  e7404ffa  storeli.w r4, -756(r30)
000894  67014ffa  storeli.w r4, -752(r30)
000898  67414ffa  storeli.w r4, -748(r30)
00089c  e7014ffa  storeli.w r4, -744(r30)
0008a0  e7414ffa  storeli.w r4, -740(r30)
0008a4  67024ffa  storeli.w r4, -736(r30)
0008a8  67424ffa  storeli.w r4, -732(r30)
0008ac  e7024ffa  storeli.w r4, -728(r30)
0008b0  e7424ffa  storeli.w r4, -724(r30)
0008b4  67034ffa  storeli.w r4, -720(r30)
0008b8  67434ffa  storeli.w r4, -716(r30)
0008bc  e7034ffa  storeli.w r4, -712(r30)
0008c0  e7434ffa  storeli.w r4, -708(r30)
0008c4  67044ffa  storeli.w r4, -704(r30)
0008c8  67444ffa  storeli.w r4, -700(r30)
0008cc  e7044ffa  storeli.w r4, -696(r30)
0008d0  e7444ffa  storeli.w r4, -692(r30)
0008d4  67054ffa  storeli.w r4, -688(r30)
0008d8  67454ffa  storeli.w r4, -684(r30)
0008dc  e7054ffa  storeli.w r4, -680(r30)
0008e0  e7454ffa  storeli.w r4, -676(r30)
0008e4  67064ffa  storeli.w r4, -672(r30)
0008e8  67464ffa  storeli.w r4, -668(r30)
0008ec  e7064ffa  storeli.w r4, -664(r30)
0008f0  e7464ffa  storeli.w r4, -660(r30)
0008f4  67074ffa  storeli.w r4, -656(r30)
0008f8  67474ffa  storeli.w r4, -652(r30)
0008fc  e7074ffa  storeli.w r4, -648(r30)
000900  e7474ffa  storeli.w r4, -644(r30)
000904  67084ffa  storeli.w r4, -640(r30)
000908  67484ffa  storeli.w r4, -636(r30)
00090c  e7084ffa  storeli.w r4, -632(r30)
000910  e7484ffa  storeli.w r4, -628(r30)
000914  67094ffa  storeli.w r4, -624(r30)
000918  67494ffa  storeli.w r4, -620(r30)
00091c  e7094ffa  storeli.w r4, -616(r30)
000920  e7494ffa  storeli.w r4, -612(r30)
000924  670a4ffa  storeli.w r4, -608(r30)
000928  674a4ffa  storeli.w r4, -604(r30)
00092c  e70a4ffa  storeli.w r4, -600(r30)
000930  e74a4ffa  storeli.w r4, -596(r30)
000934  670b4ffa  storeli.w r4, -592(r30)
000938  674b4ffa  storeli.w r4, -588(r30)
00093c  e70b4ffa  storeli.w r4, -584(r30)
000940  e74b4ffa  storeli.w r4, -580(r30)
000944  670c4ffa  storeli.w r4, -576(r30)
000948  674c4ffa  storeli.w r4, -572(r30)
00094c  e70c4ffa  storeli.w r4, -568(r30)
000950  e74c4ffa  storeli.w r4, -564(r30)
000954  670d4ffa  storeli.w r4, -560(r30)
000958  674d4ffa  storeli.w r4, -556(r30)
00095c  e70d4ffa  storeli.w r4, -552(r30)
000960  e74d4ffa  storeli.w r4, -548(r30)
000964  670e4ffa  storeli.w r4, -544(r30)
000968  674e4ffa  storeli.w r4, -540(r30)
00096c  e70e4ffa  storeli.w r4, -536(r30)
000970  e74e4ffa  storeli.w r4, -532(r30)
000974  670f4ffa  storeli.w r4, -528(r30)
000978  674f4ffa  storeli.w r4, -524(r30)
00097c  e70f4ffa  storeli.w r4, -520(r30)
000980  e74f4ffa  storeli.w r4, -516(r30)
000984  67004ffc  storeli.w r4, -512(r30)
000988  67404ffc  storeli.w r4, -508(r30)
00098c  e7004ffc  storeli.w r4, -504(r30)
000990  e7404ffc  storeli.w r4, -500(r30)
000994  67014ffc  storeli.w r4, -496(r30)
000998  67414ffc  storeli.w r4, -492(r30)
00099c  e7014ffc  storeli.w r4, -488(r30)
0009a0  e7414ffc  storeli.w r4, -484(r30)
0009a4  67024ffc  storeli.w r4, -480(r30)
0009a8  67424ffc  storeli.w r4, -476(r30)
0009ac  e7024ffc  storeli.w r4, -472(r30)
0009b0  e7424ffc  storeli.w r4, -468(r30)
0009b4  67034ffc  storeli.w r4, -464(r30)
0009b8  67434ffc  storeli.w r4, -460(r30)
0009bc  e7034ffc  storeli.w r4, -456(r30)
0009c0  e7434ffc  storeli.w r4, -452(r30)
0009c4  67044ffc  storeli.w r4, -448(r30)
0009c8  67444ffc  storeli.w r4, -444(r30)
0009cc  e7044ffc  storeli.w r4, -440(r30)
0009d0  e7444ffc  storeli.w r4, -436(r30)
0009d4  67054ffc  storeli.w r4, -432(r30)
0009d8  67454ffc  storeli.w r4, -428(r30)
0009dc  e7054ffc  storeli.w r4, -424(r30)
0009e0  e7454ffc  storeli.w r4, -420(r30)
0009e4  67064ffc  storeli.w r4, -416(r30)
0009e8  67464ffc  storeli.w r4, -412(r30)
0009ec  e7064ffc  storeli.w r4, -408(r30)
0009f0  e7464ffc  storeli.w r4, -404(r30)
0009f4  67074ffc  storeli.w r4, -400(r30)
0009f8  67474ffc  storeli.w r4, -396(r30)
0009fc  e7074ffc  storeli.w r4, -392(r30)
000a00  e7474ffc  storeli.w r4, -388(r30)
000a04  67084ffc  storeli.w r4, -384(r30)
000a08  67484ffc  storeli.w r4, -380(r30)
000a0c  e7084ffc  storeli.w r4, -376(r30)
000a10  e7484ffc  storeli.w r4, -372(r30)
000a14  67094ffc  storeli.w r4, -368(r30)
000a18  67494ffc  storeli.w r4, -364(r30)
000a1c  e7094ffc  storeli.w r4, -360(r30)
000a20  e7494ffc  storeli.w r4, -356(r30)
000a24  670a4ffc  storeli.w r4, -352(r30)
000a28  674a4ffc  storeli.w r4, -348(r30)
000a2c  e70a4ffc  storeli.w r4, -344(r30)
000a30  e74a4ffc  storeli.w r4, -340(r30)
000a34  670b4ffc  storeli.w r4, -336(r30)
000a38  674b4ffc  storeli.w r4, -332(r30)
000a3c  e70b4ffc  storeli.w r4, -328(r30)
000a40  e74b4ffc  storeli.w r4, -324(r30)
000a44  670c4ffc  storeli.w r4, -320(r30)
000a48  674c4ffc  storeli.w r4, -316(r30)
000a4c  e70c4ffc  storeli.w r4, -312(r30)
000a50  e74c4ffc  storeli.w r4, -308(r30)
000a54  670d4ffc  storeli.w r4, -304(r30)
000a58  674d4ffc  storeli.w r4, -300(r30)
000a5c  e70d4ffc  storeli.w r4, -296(r30)
000a60  e74d4ffc  storeli.w r4, -292(r30)
000a64  670e4ffc  storeli.w r4, -288(r30)
000a68  674e4ffc  storeli.w r4, -284(r30)
000a6c  e70e4ffc  storeli.w r4, -280(r30)
000a70  e74e4ffc  storeli.w r4, -276(r30)
000a74  670f4ffc  storeli.w r4, -272(r30)
000a78  674f4ffc  storeli.w r4, -268(r30)
000a7c  670b4ff6  storeli.w r4, -1104(r30)
000a80  674b4ff6  storeli.w r4, -1100(r30)
000a84  e70b4ff6  storeli.w r4, -1096(r30)
000a88  e74b4ff6  storeli.w r4, -1092(r30)
000a8c  670c4ff6  storeli.w r4, -1088(r30)
000a90  674c4ff6  storeli.w r4, -1084(r30)
000a94  e70c4ff6  storeli.w r4, -1080(r30)
000a98  e74c4ff6  storeli.w r4, -1076(r30)
000a9c  670d4ff6  storeli.w r4, -1072(r30)
000aa0  674d4ff6  storeli.w r4, -1068(r30)
000aa4  e70d4ff6  storeli.w r4, -1064(r30)
000aa8  e74d4ff6  storeli.w r4, -1060(r30)
000aac  670e4ff6  storeli.w r4, -1056(r30)
000ab0  674e4ff6  storeli.w r4, -1052(r30)
000ab4  e70e4ff6  storeli.w r4, -1048(r30)
000ab8  e74e4ff6  storeli.w r4, -1044(r30)
000abc  670f4ff6  storeli.w r4, -1040(r30)
000ac0  674f4ff6  storeli.w r4, -1036(r30)
000ac4  e70f4ff6  storeli.w r4, -1032(r30)
000ac8  e74f4ff6  storeli.w r4, -1028(r30)
000acc  67004ff8  storeli.w r4, -1024(r30)
000ad0  67404ff8  storeli.w r4, -1020(r30)
000ad4  e7004ff8  storeli.w r4, -1016(r30)
000ad8  e7404ff8  storeli.w r4, -1012(r30)
000adc  67014ff8  storeli.w r4, -1008(r30)
000ae0  67414ff8  storeli.w r4, -1004(r30)
000ae4  e7014ff8  storeli.w r4, -1000(r30)
000ae8  e7414ff8  storeli.w r4, -996(r30)
000aec  67024ff8  storeli.w r4, -992(r30)
000af0  67424ff8  storeli.w r4, -988(r30)
000af4  e7024ff8  storeli.w r4, -984(r30)
000af8  e7424ff8  storeli.w r4, -980(r30)
000afc  67034ff8  storeli.w r4, -976(r30)
000b00  67434ff8  storeli.w r4, -972(r30)
000b04  e7034ff8  storeli.w r4, -968(r30)
000b08  e7434ff8  storeli.w r4, -964(r30)
000b0c  67044ff8  storeli.w r4, -960(r30)
000b10  67444ff8  storeli.w r4, -956(r30)
000b14  e7044ff8  storeli.w r4, -952(r30)
000b18  e7444ff8  storeli.w r4, -948(r30)
000b1c  67054ff8  storeli.w r4, -944(r30)
000b20  67454ff8  storeli.w r4, -940(r30)
000b24  e7054ff8  storeli.w r4, -936(r30)
000b28  e7454ff8  storeli.w r4, -932(r30)
000b2c  67064ff8  storeli.w r4, -928(r30)
000b30  67464ff8  storeli.w r4, -924(r30)
000b34  e7064ff8  storeli.w r4, -920(r30)
000b38  e7464ff8  storeli.w r4, -916(r30)
000b3c  67074ff8  storeli.w r4, -912(r30)
000b40  e74e4ff4  storeli.w r4, -1300(r30)
000b44  670f4ff4  storeli.w r4, -1296(r30)
000b48  674f4ff4  storeli.w r4, -1292(r30)
000b4c  e70f4ff4  storeli.w r4, -1288(r30)
000b50  e74f4ff4  storeli.w r4, -1284(r30)
000b54  67004ff6  storeli.w r4, -1280(r30)
000b58  67404ff6  storeli.w r4, -1276(r30)
000b5c  e7004ff6  storeli.w r4, -1272(r30)
000b60  e7404ff6  storeli.w r4, -1268(r30)
000b64  67014ff6  storeli.w r4, -1264(r30)
000b68  67414ff6  storeli.w r4, -1260(r30)
000b6c  e7014ff6  storeli.w r4, -1256(r30)
000b70  e7414ff6  storeli.w r4, -1252(r30)
000b74  67024ff6  storeli.w r4, -1248(r30)
000b78  67424ff6  storeli.w r4, -1244(r30)
000b7c  e7024ff6  storeli.w r4, -1240(r30)
000b80  e7424ff6  storeli.w r4, -1236(r30)
000b84  67034ff6  storeli.w r4, -1232(r30)
000b88  67434ff6  storeli.w r4, -1228(r30)
000b8c  e7034ff6  storeli.w r4, -1224(r30)
000b90  e7434ff6  storeli.w r4, -1220(r30)
000b94  67044ff6  storeli.w r4, -1216(r30)
000b98  67444ff6  storeli.w r4, -1212(r30)
000b9c  e7044ff6  storeli.w r4, -1208(r30)
000ba0  e7444ff6  storeli.w r4, -1204(r30)
000ba4  67054ff6  storeli.w r4, -1200(r30)
000ba8  67454ff6  storeli.w r4, -1196(r30)
000bac  e7054ff6  storeli.w r4, -1192(r30)
000bb0  e7454ff6  storeli.w r4, -1188(r30)
000bb4  67064ff6  storeli.w r4, -1184(r30)
000bb8  67464ff6  storeli.w r4, -1180(r30)
000bbc  e7064ff6  storeli.w r4, -1176(r30)
000bc0  e7464ff6  storeli.w r4, -1172(r30)
000bc4  67074ff6  storeli.w r4, -1168(r30)
000bc8  67474ff6  storeli.w r4, -1164(r30)
000bcc  e7074ff6  storeli.w r4, -1160(r30)
000bd0  e7474ff6  storeli.w r4, -1156(r30)
000bd4  67084ff6  storeli.w r4, -1152(r30)
000bd8  67484ff6  storeli.w r4, -1148(r30)
000bdc  e7084ff6  storeli.w r4, -1144(r30)
000be0  e7484ff6  storeli.w r4, -1140(r30)
000be4  67094ff6  storeli.w r4, -1136(r30)
000be8  67494ff6  storeli.w r4, -1132(r30)
000bec  e7094ff6  storeli.w r4, -1128(r30)
000bf0  e7494ff6  storeli.w r4, -1124(r30)
000bf4  670a4ff6  storeli.w r4, -1120(r30)
000bf8  674a4ff6  storeli.w r4, -1116(r30)
000bfc  e70a4ff6  storeli.w r4, -1112(r30)
000c00  0b917120  mul.s r2, r3, r7
000c04  8b917150  fmac.s r3, r3, r7
000c08  8b915140  min.s r3, r3, r5
000c0c  cb9d2102  ble.s r3, r2, 1892
000c10  b3910128  sext_int2long r[4:5], r3
000c14  b3130128  sext_int2long r[8:9], r2
000c18  e304efff  loadli.w r9,  -16(r30)
000c1c  6309cfff  loadli.w r18,  -32(r30)
000c20  e309afff  loadli.w r19,  -48(r30)
000c24  e30b8fff  loadli.w r23,  -64(r30)
000c28  630edff5  loadli.w r28,  -1304(r30)
000c2c  6305fffd  loadli.w r10,  -264(r30)
000c30  e346eff8  loadli.w r13,  -908(r30)
000c34  63435ff7  loadli.w r6,  -1108(r30)
000c38  003d0002  core_id r26
000c3c  1f070001  addli r14, zero, 128
000c40  9f4c0000  addli r25, zero, 4
000c44  9f6a0000  addli r21, zero, 6
000c48  1f3c0000  addli r24, zero, 3
000c4c  1f2a0000  addli r20, zero, 2
000c50  9f176000  addli r15, zero, 49
000c54  9f500000  addli r1, zero, 5
000c58  1f0b0000  addli r22, zero, 0
000c5c  733c3fa8  store.d r[4:5], -1384(r30)
000c60  9f71f01f  addli r3, zero, 4095
000c64  2b81ffff  lui r2, 1048568
000c68  73382fa8  store.d r[3:4], -1392(r30)
000c6c  2b611500  lui r2, 342
000c70  abe11600  lui r3, 366
000c74  1b110130  ori r2, r2, 768
000c78  e7482ff4  storeli.w r2, -1396(r30)
000c7c  2b810d00  lui r2, 216
000c80  1b11d1b4  ori r2, r2, 2893
000c84  e7082ff4  storeli.w r2, -1400(r30)
000c88  1b910130  ori r2, r3, 768
000c8c  abf17f7f  lui r3, 522239
000c90  67482ff4  storeli.w r2, -1404(r30)
000c94  2bf17fff  lui r2, 1046527
000c98  1b11f1ff  ori r2, r2, 4095
000c9c  67082ff4  storeli.w r2, -1408(r30)
000ca0  1b91f1ff  ori r2, r3, 4095
000ca4  e7472ff4  storeli.w r2, -1412(r30)
000ca8  1f014000  addli r2, zero, 32
000cac  5b110000  j 136
000cb0  eb520f01  load.d r[6:7], 16(r30)
000cb4  eb550fab  load.d r[12:13], -1360(r30)
000cb8  9f511000  addli r3, zero, 13
000cbc  003d0002  core_id r26
000cc0  7d900100  xwait r3, 0
000cc4  1d800c00  lock zero, r25
000cc8  9bb12300  slli r3, r7, 2
000ccc  8ba2b210  add.ul r[6:7], r[6:7], r[12:13]
000cd0  15000000  dma_cfg zero, zero, zero, 0
000cd4  15000304  dma_cfg zero, r6, zero, 2
000cd8  15823206  dma_cfg r4, r5, r3, 3
000cdc  9f010002  addli r3, zero, 256
000ce0  95812109  dma_cfg r3, r3, r18, 4
000ce4  35000000  dma_run zero
000ce8  1d900c00  unlock r25
000cec  9f411000  addli r3, zero, 12
000cf0  e309aff5  loadli.w r19,  -1328(r30)
000cf4  7d800100  xsignal r3, 0
000cf8  e344bff5  loadli.w r9,  -1316(r30)
000cfc  6309bff5  loadli.w r18,  -1320(r30)
000d00  9f990900  addli r19, r19, 1
000d04  eb530fac  load.d r[8:9], -1344(r30)
000d08  eb518fa9  load.d r[4:5], -1384(r30)
000d0c  1f1e0b00  addli r28, r22, 1
000d10  634b7ff5  loadli.w r22,  -1348(r30)
000d14  1f930a00  addli r6, r21, 1
000d18  9f9b0b00  addli r23, r23, 1
000d1c  1f190900  addli r18, r18, 1
000d20  9f940400  addli r9, r9, 1
000d24  9f6a0000  addli r21, zero, 6
000d28  a7930300  addli.d r[8:9], r[8:9], 1
000d2c  93b13304  setlt.sl r3, r[8:9], r[4:5]
000d30  b7d80102  beq r3, zero, 1588
000d34  e74d9ff4  storeli.w r9, -1316(r30)
000d38  3b309d01  bneq r26, r25, 12
000d3c  9f311000  addli r3, zero, 11
000d40  7d900100  xwait r3, 0
000d44  e3016f00  loadli.w r3,  48(r30)
000d48  63425f00  loadli.w r4,  44(r30)
000d4c  73307fac  store.d r[8:9], -1344(r30)
000d50  e70d2ff5  storeli.w r18, -1320(r30)
000d54  670d3ff5  storeli.w r19, -1328(r30)
000d58  e74c7ff5  storeli.w r23, -1332(r30)
000d5c  8b913330  div.s r3, r7, r3
000d60  9f031000  addli r7, zero, 8
000d64  8b924130  div.s r5, r3, r4
000d68  8b94e230  div.s r9, r5, r14
000d6c  9bb13400  slli r3, r9, 3
000d70  0b923c18  sub.s r4, r25, r3
000d74  0b187240  min.s r16, r4, r7
000d78  9f531000  addli r7, zero, 13
000d7c  0b920239  mod.s r4, r5, r16
000d80  8b914110  add.s r3, r3, r4
000d84  13023c04  setlt.u r4, r24, r3
000d88  b3850128  zext_int2long r[12:13], r3
000d8c  97b37502  sll.d r[8:9], r[12:13], r7
000d90  7334bfaa  store.d r[12:13], -1368(r30)
000d94  3b300200  bneq r4, zero, 12
000d98  b3050028  zext_int2long r[12:13], zero
000d9c  db010000  j 12
000da0  eb550fa9  load.d r[12:13], -1392(r30)
000da4  9785b302  and.d r[12:13], r[8:9], r[12:13]
000da8  9bb47400  slli r9, r9, 7
000dac  9bb17100  slli r3, r3, 7
000db0  1f020000  addli r4, zero, 0
000db4  1f3d0000  addli r26, zero, 3
000db8  9f1b0000  addli r23, zero, 1
000dbc  8b929218  sub.s r5, r5, r9
000dc0  674a3ff4  storeli.w r3, -1372(r30)
000dc4  8b940231  div.s r9, r5, r16
000dc8  8b128b39  mod.s r5, r22, r24
000dcc  1f1b0b00  addli r22, r22, 1
000dd0  1f6c0000  addli r24, zero, 6
000dd4  e74b6ff5  storeli.w r22, -1348(r30)
000dd8  33880428  zext_int2long r[17:18], r9
000ddc  9bb16400  slli r3, r9, 6
000de0  9bb2f200  slli r5, r5, 15
000de4  9f040000  addli r9, zero, 0
000de8  17385803  sll.d r[17:18], r[17:18], r21
000dec  e70b3ff4  storeli.w r3, -1352(r30)
000df0  17394803  sll.d r[19:20], r[17:18], r20
000df4  6b588f00  load.d r[17:18], 8(r30)
000df8  73382fab  store.d r[19:20], -1360(r30)
000dfc  0b282811  add.ul r[17:18], r[17:18], r[19:20]
000e00  80390002  core_id r19
000e04  1f190000  addli r18, zero, 1
000e08  73300faf  store.d r[17:18], -1312(r30)
000e0c  db080000  j 68
000e10  7d100a00  xwait r20, 0
000e14  7d900000  xwait r1, 0
000e18  1d000000  lock zero, zero
000e1c  010a0000  ds_cfg r20, zero, 0
000e20  01010002  ds_cfg r2, zero, 1
000e24  0101001c  ds_cfg r2, zero, 14
000e28  0107001a  ds_cfg r14, zero, 13
000e2c  a1912d02  shuffle_batch r3, r27, r2, 1
000e30  1d100000  unlock zero
000e34  7d000d00  xsignal r26, 0
000e38  7d800c00  xsignal r25, 0
000e3c  9f960600  addli r13, r13, 1
000e40  1f150500  addli r10, r10, 1
000e44  9b811b00  andi r3, r23, 1
000e48  bbe50100  bneq r3, zero, 376
000e4c  5b3d0000  j 488
000e50  8b1a9310  add.s r21, r6, r9
000e54  0b1b9e10  add.s r22, r28, r9
000e58  1f086000  addli r16, zero, 48
000e5c  8b91fa38  mod.s r3, r21, r15
000e60  0b180b39  mod.s r16, r22, r16
000e64  9bb8e100  slli r17, r3, 14
000e68  9b31e800  slli r3, r16, 14
000e6c  2b880100  lui r16, 24
000e70  8b9d0811  add.s r27, r17, r16
000e74  37fe49ff  beq r19, r20, -100
000e78  33080228  zext_int2long r[17:18], r4
000e7c  00320002  core_id r4
000e80  bb612201  bneq r4, r18, 120
000e84  97311802  sll.d r[4:5], r[17:18], r1
000e88  1f078000  addli r14, zero, 64
000e8c  7d100d00  xwait r26, 0
000e90  1d800c00  lock zero, r25
000e94  15000000  dma_cfg zero, zero, zero, 0
000e98  97917102  or.d r[4:5], r[4:5], r[8:9]
000e9c  33080728  zext_int2long r[17:18], r14
000ea0  1f070003  addli r14, zero, 384
000ea4  0bb9b118  sub.sl r[19:20], r[4:5], r[12:13]
000ea8  97b14103  sll.d r[4:5], r[4:5], r20
000eac  0f180961  div.sl r[17:18], r[19:20], r[17:18]
000eb0  33090728  zext_int2long r[19:20], r14
000eb4  6b570f00  load.d r[15:16], 0(r30)
000eb8  8b213710  add.ul r[4:5], r[15:16], r[4:5]
000ebc  1f070001  addli r14, zero, 128
000ec0  9f176000  addli r15, zero, 49
000ec4  15000204  dma_cfg zero, r4, zero, 2
000ec8  958de106  dma_cfg r27, r3, r14, 3
000ecc  9f010002  addli r3, zero, 256
000ed0  0b392841  min.sl r[19:20], r[17:18], r[19:20]
000ed4  0b380919  sub.sl r[17:18], r[19:20], r[17:18]
000ed8  80390002  core_id r19
000edc  1f190000  addli r18, zero, 1
000ee0  1f080801  addli r16, r16, 128
000ee4  15870109  dma_cfg r14, r3, r16, 4
000ee8  35000000  dma_run zero
000eec  1d900c00  unlock r25
000ef0  7d000a00  xsignal r20, 0
000ef4  5be9ffff  j -184
000ef8  1f094001  addli r18, zero, 160
000efc  0b12f538  mod.s r4, r10, r15
000f00  1f150500  addli r10, r10, 1
000f04  0b992639  mod.s r18, r13, r18
000f08  9f960600  addli r13, r13, 1
000f0c  9b39d200  slli r19, r4, 13
000f10  1b32d900  slli r4, r18, 13
000f14  2bc90d00  lui r18, 220
000f18  8b9d2911  add.s r27, r19, r18
000f1c  80390002  core_id r19
000f20  1f790000  addli r18, zero, 7
000f24  37d12901  beq r19, r18, 84
000f28  1f690000  addli r18, zero, 6
000f2c  bb922901  bneq r19, r18, 164
000f30  9f112000  addli r3, zero, 17
000f34  1f6c0000  addli r24, zero, 6
000f38  97313802  sll.d r[4:5], r[17:18], r3
000f3c  1f780000  addli r16, zero, 7
000f40  7d100800  xwait r16, 0
000f44  6b580fae  load.d r[17:18], -1312(r30)
000f48  1d800c00  lock zero, r25
000f4c  15000000  dma_cfg zero, zero, zero, 0
000f50  8b213810  add.ul r[4:5], r[17:18], r[4:5]
000f54  1f080002  addli r16, zero, 256
000f58  15000204  dma_cfg zero, r4, zero, 2
000f5c  958d0107  dma_cfg r27, r3, r16, 3
000f60  9f010020  addli r3, zero, 4096
000f64  15882108  dma_cfg r16, r3, r2, 4
000f68  35000000  dma_run zero
000f6c  1d900c00  unlock r25
000f70  7d000900  xsignal r18, 0
000f74  5b080000  j 64
000f78  9f111000  addli r3, zero, 9
000f7c  7d100c00  xwait r24, 0
000f80  7d900100  xwait r3, 0
000f84  1d000000  lock zero, zero
000f88  9f018000  addli r3, zero, 64
000f8c  010a0000  ds_cfg r20, zero, 0
000f90  81010002  ds_cfg r3, zero, 1
000f94  0101001c  ds_cfg r2, zero, 14
000f98  8101001a  ds_cfg r3, zero, 13
000f9c  9f710000  addli r3, zero, 7
000fa0  41822d04  shuffle_coa r4, r27, r2, 2
000fa4  1d100000  unlock zero
000fa8  7d800100  xsignal r3, 0
000fac  9f011000  addli r3, zero, 8
000fb0  7d800100  xsignal r3, 0
000fb4  1f190000  addli r18, zero, 1
000fb8  9b811b00  andi r3, r23, 1
000fbc  b7e10100  beq r3, zero, 120
000fc0  9f940400  addli r9, r9, 1
000fc4  1f120000  addli r4, zero, 1
000fc8  9f0b0000  addli r23, zero, 0
000fcc  dbd0ffff  j -380
000fd0  1f6c0000  addli r24, zero, 6
000fd4  bbc09901  bneq r19, r25, 48
000fd8  1f081000  addli r16, zero, 8
000fdc  1f190000  addli r18, zero, 1
000fe0  7d900c00  xwait r25, 0
000fe4  7d100800  xwait r16, 0
000fe8  1f088000  addli r16, zero, 64
000fec  1d000900  lock zero, r18
000ff0  0908e100  mm_cfg r16, r2, r14, 0
000ff4  090a2a05  mm_cfg r20, r20, r18, 2
000ff8  37f00400  beq r9, zero, 28
000ffc  a9924110  mm_acc r5, r3, r4, 8
001000  5b030000  j 24
001004  9b811b00  andi r3, r23, 1
001008  1f190000  addli r18, zero, 1
00100c  bbde01fe  bneq r3, zero, -76
001010  5b060000  j 48
001014  a9824110  mm r5, r3, r4, 8
001018  9b811b00  andi r3, r23, 1
00101c  1f121000  addli r4, zero, 9
001020  1d100900  unlock r18
001024  7d800000  xsignal r1, 0
001028  7d000200  xsignal r4, 0
00102c  3bde01fe  bneq r3, zero, -108
001030  5b010000  j 8
001034  3bb09901  bneq r19, r25, 12
001038  9f211000  addli r3, zero, 10
00103c  7d800100  xsignal r3, 0
001040  e3017ff5  loadli.w r3,  -1352(r30)
001044  1f038007  addli r6, zero, 960
001048  e34b9ff5  loadli.w r23,  -1332(r30)
00104c  1f3c0000  addli r24, zero, 3
001050  9f048000  addli r9, zero, 64
001054  33030328  zext_int2long r[7:8], r6
001058  b3850428  zext_int2long r[12:13], r9
00105c  b3810128  zext_int2long r[4:5], r3
001060  0b948b39  mod.s r8, r23, r24
001064  0ba36140  min.ul r[7:8], r[4:5], r[7:8]
001068  27038300  addli.d r[7:8], r[7:8], 64
00106c  0b233348  max.ul r[7:8], r[7:8], r[4:5]
001070  8b313318  sub.sl r[4:5], r[7:8], r[4:5]
001074  1b338400  slli r6, r8, 8
001078  8ba3b140  min.ul r[8:9], r[4:5], r[12:13]
00107c  abe11300  lui r3, 318
001080  80350002  core_id r11
001084  0b123310  add.s r4, r6, r3
001088  b7a025ff  beq r11, r18, -984
00108c  e309aff5  loadli.w r19,  -1328(r30)
001090  2be31300  lui r6, 318
001094  e344bff5  loadli.w r9,  -1316(r30)
001098  6309bff5  loadli.w r18,  -1320(r30)
00109c  1f180000  addli r16, zero, 1
0010a0  2b860000  lui r12, 8
0010a4  1b130330  ori r6, r6, 768
0010a8  8b918939  mod.s r3, r19, r24
0010ac  9f990900  addli r19, r19, 1
0010b0  9bb1f100  slli r3, r3, 15
0010b4  0b936110  add.s r6, r3, r6
0010b8  3b928501  bneq r11, r24, 132
0010bc  9f231000  addli r7, zero, 10
0010c0  003d0002  core_id r26
0010c4  9f010000  addli r3, zero, 0
0010c8  7d900300  xwait r7, 0
0010cc  9f431000  addli r7, zero, 12
0010d0  7d900300  xwait r7, 0
0010d4  9f731000  addli r7, zero, 15
0010d8  7d900300  xwait r7, 0
0010dc  1d000a00  lock zero, r20
0010e0  ab03803f  lui r7, 260096
0010e4  0d000002  ew_cfg zero, zero, zero, 1
0010e8  8d930300  ewcoeff_cfg r7, r7, zero, 0
0010ec  9f737000  addli r7, zero, 63
0010f0  0d800304  ew_cfg zero, r7, zero, 2
0010f4  0d080006  ew_cfg r16, zero, zero, 3
0010f8  8b133310  add.s r7, r6, r3
0010fc  0b943210  add.s r8, r5, r3
001100  9f810102  addli r3, r3, 256
001104  ad034400  dsmadd r7, r8, r4, 0
001108  bbcfc1fe  bneq r3, r12, -16
00110c  9f311000  addli r3, zero, 11
001110  1d100a00  unlock r20
001114  7d800100  xsignal r3, 0
001118  9f511000  addli r3, zero, 13
00111c  7d800100  xsignal r3, 0
001120  9f012000  addli r3, zero, 16
001124  7d800100  xsignal r3, 0
001128  9f112000  addli r3, zero, 17
00112c  7d800100  xsignal r3, 0
001130  9f611000  addli r3, zero, 14
001134  7d800100  xsignal r3, 0
001138  db79ffff  j -1076
00113c  8b118939  mod.s r3, r18, r24
001140  63421ff5  loadli.w r4,  -1396(r30)
001144  003d0002  core_id r26
001148  9bb1f100  slli r3, r3, 15
00114c  8b924110  add.s r5, r3, r4
001150  bbc51500  bneq r11, r1, 368
001154  9f611000  addli r3, zero, 14
001158  1f140000  addli r8, zero, 1
00115c  ab0500c1  lui r11, 790528
001160  9f030000  addli r7, zero, 0
001164  7d900100  xwait r3, 0
001168  9f312000  addli r3, zero, 19
00116c  7d900100  xwait r3, 0
001170  1d000a00  lock zero, r20
001174  0d000002  ew_cfg zero, zero, zero, 1
001178  eb510fa9  load.d r[4:5], -1392(r30)
00117c  0d000204  ew_cfg zero, r4, zero, 2
001180  9f511000  addli r3, zero, 13
001184  2b82ff40  lui r4, 266232
001188  0d0a0006  ew_cfg r20, zero, zero, 3
00118c  0d0a0a26  ew_cfg r20, r20, zero, 19
001190  8d010014  ew_cfg r3, zero, zero, 10
001194  e3011ff5  loadli.w r3,  -1400(r30)
001198  0d0a3416  ew_cfg r20, r8, r3, 11
00119c  8b918439  mod.s r3, r9, r24
0011a0  0d00801b  ew_cfg zero, zero, r24, 13
0011a4  8d854c1c  ew_cfg r11, r25, r4, 14
0011a8  2b02803f  lui r4, 260096
0011ac  9f150000  addli r11, zero, 1
0011b0  0d00021e  ew_cfg zero, r4, zero, 15
0011b4  cd220300  sslut r5, r6, 0
0011b8  0d000014  ew_cfg zero, zero, zero, 10
0011bc  9bb1f100  slli r3, r3, 15
0011c0  0d000026  ew_cfg zero, zero, zero, 19
0011c4  1d100a00  unlock r20
0011c8  63420ff5  loadli.w r4,  -1404(r30)
0011cc  0b924110  add.s r4, r3, r4
0011d0  9f012000  addli r3, zero, 16
0011d4  7d900100  xwait r3, 0
0011d8  9f412000  addli r3, zero, 20
0011dc  7d900100  xwait r3, 0
0011e0  1d000a00  lock zero, r20
0011e4  9f717000  addli r3, zero, 63
0011e8  0d000002  ew_cfg zero, zero, zero, 1
0011ec  0d800104  ew_cfg zero, r3, zero, 2
0011f0  0d040006  ew_cfg r8, zero, zero, 3
0011f4  e3010ff5  loadli.w r3,  -1408(r30)
0011f8  8d110000  ewcoeff_cfg r3, zero, zero, 0
0011fc  8b117210  add.s r3, r4, r7
001200  0b147310  add.s r8, r6, r7
001204  9f830302  addli r7, r7, 256
001208  ad218400  dscmpnsel r3, r8, r8, 0
00120c  bbcfc3fe  bneq r7, r12, -16
001210  1d100a00  unlock r20
001214  9f737000  addli r7, zero, 63
001218  9f010000  addli r3, zero, 0
00121c  1d000a00  lock zero, r20
001220  0d000002  ew_cfg zero, zero, zero, 1
001224  0d800304  ew_cfg zero, r7, zero, 2
001228  8d050006  ew_cfg r11, zero, zero, 3
00122c  e343fff4  loadli.w r7,  -1412(r30)
001230  8d130000  ewcoeff_cfg r7, zero, zero, 0
001234  8b133210  add.s r7, r4, r3
001238  9f810102  addli r3, r3, 256
00123c  ada37308  dscmpnsel r7, r7, r7, 4
001240  bbdfc1fe  bneq r3, r12, -12
001244  9f112000  addli r3, zero, 17
001248  1d100a00  unlock r20
00124c  ab0380bf  lui r7, 784384
001250  7d900100  xwait r3, 0
001254  1d000a00  lock zero, r20
001258  ab01803f  lui r3, 260096
00125c  0d000002  ew_cfg zero, zero, zero, 1
001260  8d910300  ewcoeff_cfg r3, r7, zero, 0
001264  eb530fa9  load.d r[8:9], -1392(r30)
001268  0d000404  ew_cfg zero, r8, zero, 2
00126c  0d0a0006  ew_cfg r20, zero, zero, 3
001270  0d0a4a27  ew_cfg r20, r20, r20, 19
001274  2d034300  dsmadd r6, r6, r4, 0
001278  1f422000  addli r4, zero, 20
00127c  0d000026  ew_cfg zero, zero, zero, 19
001280  1d100a00  unlock r20
001284  7d000200  xsignal r4, 0
001288  1d000a00  lock zero, r20
00128c  0d000002  ew_cfg zero, zero, zero, 1
001290  8d910100  ewcoeff_cfg r3, r3, zero, 0
001294  9f711000  addli r3, zero, 15
001298  0d000404  ew_cfg zero, r8, zero, 2
00129c  0d0a0006  ew_cfg r20, zero, zero, 3
0012a0  0d0a4a27  ew_cfg r20, r20, r20, 19
0012a4  ad826200  dsmadd r5, r5, r6, 0
0012a8  0d000026  ew_cfg zero, zero, zero, 19
0012ac  1d100a00  unlock r20
0012b0  7d800100  xsignal r3, 0
0012b4  9f212000  addli r3, zero, 18
0012b8  7d800100  xsignal r3, 0
0012bc  5b49ffff  j -1464
0012c0  3b9905fc  bneq r11, zero, -1468
0012c4  e3404ff5  loadli.w r1,  -1372(r30)
0012c8  eb5d8faa  load.d r[28:29], -1368(r30)
0012cc  9f382000  addli r17, zero, 19
0012d0  1bb32300  slli r6, r7, 2
0012d4  b3910028  sext_int2long r[4:5], r1
0012d8  9f000003  addli r1, zero, 384
0012dc  97bd1d03  sll.d r[28:29], r[28:29], r17
0012e0  b3850028  zext_int2long r[12:13], r1
0012e4  7330bfaf  store.d r[28:29], -1312(r30)
0012e8  eb5d8f01  load.d r[28:29], 24(r30)
0012ec  9f202000  addli r1, zero, 18
0012f0  8bb5b140  min.sl r[12:13], r[4:5], r[12:13]
0012f4  a7850501  addli.d r[12:13], r[12:13], 128
0012f8  8bb53548  max.sl r[12:13], r[12:13], r[4:5]
0012fc  7338bfac  store.d r[12:13], -1328(r30)
001300  eb550fae  load.d r[12:13], -1312(r30)
001304  8badbd10  add.ul r[28:29], r[28:29], r[12:13]
001308  eb550fad  load.d r[12:13], -1328(r30)
00130c  8bb13518  sub.sl r[4:5], r[12:13], r[4:5]
001310  b3050728  zext_int2long r[12:13], r14
001314  73303fae  store.d r[4:5], -1312(r30)
001318  eb510fab  load.d r[4:5], -1360(r30)
00131c  8bad3d10  add.ul r[28:29], r[28:29], r[4:5]
001320  eb510fae  load.d r[4:5], -1312(r30)
001324  7d900000  xwait r1, 0
001328  9f000002  addli r1, zero, 256
00132c  8bb1b140  min.sl r[4:5], r[4:5], r[12:13]
001330  9f550000  addli r11, zero, 5
001334  1d800500  lock zero, r11
001338  15000000  dma_cfg zero, zero, zero, 0
00133c  15000802  dma_cfg zero, r16, zero, 1
001340  150e0004  dma_cfg r28, zero, zero, 2
001344  958d6206  dma_cfg r27, r5, r6, 3
001348  9f020020  addli r5, zero, 4096
00134c  95823008  dma_cfg r5, r1, r3, 4
001350  9f500000  addli r1, zero, 5
001354  35000000  dma_run zero
001358  1d900500  unlock r11
00135c  7d800800  xsignal r17, 0
001360  db34ffff  j -1628
001364  80300002  core_id r1
001368  6747dff8  storeli.w r13, -908(r30)
00136c  e70faffc  storeli.w r10, -264(r30)
001370  7d000000  xsignal zero, 0
001374  bbe00000  bneq r1, zero, 56
001378  9f200000  addli r1, zero, 2
00137c  7d100000  xwait zero, 0
001380  7d100000  xwait zero, 0
001384  7d100000  xwait zero, 0
001388  7d100000  xwait zero, 0
00138c  7d100000  xwait zero, 0
001390  7d100000  xwait zero, 0
001394  7d100000  xwait zero, 0
001398  7d100000  xwait zero, 0
00139c  1d800000  lock zero, r1
0013a0  0d000020  ew_cfg zero, zero, zero, 16
0013a4  1d900000  unlock r1
0013a8  7d400000  xsignal_mode_cfg zero
0013ac  9f8e1e0b  addli sp, sp, 1416
0013b0  00a00300  mfence { lm, sm, gm }
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
0015e0  00100000  exit
0015e4  00100000  exit
0015e8  00100000  exit
0015ec  00100000  exit
0015f0  00100000  exit
0015f4  00100000  exit
