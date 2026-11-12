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
00005c  9f494000  addli r19, zero, 36
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
0000b4  9f8ebeeb  addli sp, sp, -2600
0000b8  9f100000  addli r1, zero, 1
0000bc  803c0002  core_id r25
0000c0  1f8fde13  addli r30, sp, 2536
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00c00  beq r25, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  db390100  j 2508
0000e0  1f210000  addli r2, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  abf1ffff  lui r3, 1048575
0000ec  1d000100  lock zero, r2
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b90f1ff  ori r1, r3, 4095
0000f8  1d100100  unlock r2
0000fc  1f311000  addli r2, zero, 11
000100  80a10004  csr_set csr3, r1
000104  00d00100  sync_group
000108  9f500000  addli r1, zero, 5
00010c  7d000100  xsignal r2, 0
000110  7d000100  xsignal r2, 0
000114  7d000100  xsignal r2, 0
000118  7d000100  xsignal r2, 0
00011c  7d000100  xsignal r2, 0
000120  1f310000  addli r2, zero, 3
000124  7d800000  xsignal r1, 0
000128  7d800000  xsignal r1, 0
00012c  7d800000  xsignal r1, 0
000130  7d800000  xsignal r1, 0
000134  7d800000  xsignal r1, 0
000138  7d800000  xsignal r1, 0
00013c  7d800000  xsignal r1, 0
000140  7d800000  xsignal r1, 0
000144  7d800000  xsignal r1, 0
000148  7d800000  xsignal r1, 0
00014c  7d800000  xsignal r1, 0
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
00017c  7d800000  xsignal r1, 0
000180  7d800000  xsignal r1, 0
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
0001c8  7d800000  xsignal r1, 0
0001cc  7d800000  xsignal r1, 0
0001d0  7d800000  xsignal r1, 0
0001d4  7d800000  xsignal r1, 0
0001d8  7d800000  xsignal r1, 0
0001dc  7d800000  xsignal r1, 0
0001e0  7d800000  xsignal r1, 0
0001e4  7d800000  xsignal r1, 0
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
000214  7d800000  xsignal r1, 0
000218  7d800000  xsignal r1, 0
00021c  7d800000  xsignal r1, 0
000220  7d800000  xsignal r1, 0
000224  7d800000  xsignal r1, 0
000228  7d800000  xsignal r1, 0
00022c  7d800000  xsignal r1, 0
000230  7d800000  xsignal r1, 0
000234  7d800000  xsignal r1, 0
000238  7d800000  xsignal r1, 0
00023c  7d800000  xsignal r1, 0
000240  7d800000  xsignal r1, 0
000244  7d800000  xsignal r1, 0
000248  7d800000  xsignal r1, 0
00024c  7d800000  xsignal r1, 0
000250  7d800000  xsignal r1, 0
000254  7d800000  xsignal r1, 0
000258  7d800000  xsignal r1, 0
00025c  7d800000  xsignal r1, 0
000260  7d800000  xsignal r1, 0
000264  7d800000  xsignal r1, 0
000268  7d800000  xsignal r1, 0
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
0002b4  7d800000  xsignal r1, 0
0002b8  7d800000  xsignal r1, 0
0002bc  7d800000  xsignal r1, 0
0002c0  7d800000  xsignal r1, 0
0002c4  7d800000  xsignal r1, 0
0002c8  7d800000  xsignal r1, 0
0002cc  7d800000  xsignal r1, 0
0002d0  7d800000  xsignal r1, 0
0002d4  7d800000  xsignal r1, 0
0002d8  7d800000  xsignal r1, 0
0002dc  7d800000  xsignal r1, 0
0002e0  7d800000  xsignal r1, 0
0002e4  7d800000  xsignal r1, 0
0002e8  7d800000  xsignal r1, 0
0002ec  7d800000  xsignal r1, 0
0002f0  7d800000  xsignal r1, 0
0002f4  7d800000  xsignal r1, 0
0002f8  7d800000  xsignal r1, 0
0002fc  7d800000  xsignal r1, 0
000300  7d800000  xsignal r1, 0
000304  7d800000  xsignal r1, 0
000308  7d800000  xsignal r1, 0
00030c  7d800000  xsignal r1, 0
000310  7d800000  xsignal r1, 0
000314  7d800000  xsignal r1, 0
000318  7d800000  xsignal r1, 0
00031c  7d800000  xsignal r1, 0
000320  7d800000  xsignal r1, 0
000324  7d800000  xsignal r1, 0
000328  7d800000  xsignal r1, 0
00032c  7d800000  xsignal r1, 0
000330  7d800000  xsignal r1, 0
000334  7d800000  xsignal r1, 0
000338  7d800000  xsignal r1, 0
00033c  7d800000  xsignal r1, 0
000340  7d800000  xsignal r1, 0
000344  7d800000  xsignal r1, 0
000348  7d800000  xsignal r1, 0
00034c  7d800000  xsignal r1, 0
000350  7d800000  xsignal r1, 0
000354  7d800000  xsignal r1, 0
000358  7d800000  xsignal r1, 0
00035c  7d800000  xsignal r1, 0
000360  7d800000  xsignal r1, 0
000364  7d800000  xsignal r1, 0
000368  7d800000  xsignal r1, 0
00036c  7d800000  xsignal r1, 0
000370  7d800000  xsignal r1, 0
000374  7d800000  xsignal r1, 0
000378  7d800000  xsignal r1, 0
00037c  7d800000  xsignal r1, 0
000380  7d800000  xsignal r1, 0
000384  7d800000  xsignal r1, 0
000388  7d800000  xsignal r1, 0
00038c  7d800000  xsignal r1, 0
000390  7d800000  xsignal r1, 0
000394  7d800000  xsignal r1, 0
000398  7d800000  xsignal r1, 0
00039c  7d800000  xsignal r1, 0
0003a0  7d800000  xsignal r1, 0
0003a4  7d800000  xsignal r1, 0
0003a8  7d800000  xsignal r1, 0
0003ac  7d800000  xsignal r1, 0
0003b0  7d800000  xsignal r1, 0
0003b4  7d800000  xsignal r1, 0
0003b8  7d800000  xsignal r1, 0
0003bc  7d800000  xsignal r1, 0
0003c0  7d800000  xsignal r1, 0
0003c4  7d800000  xsignal r1, 0
0003c8  7d800000  xsignal r1, 0
0003cc  7d800000  xsignal r1, 0
0003d0  7d800000  xsignal r1, 0
0003d4  7d800000  xsignal r1, 0
0003d8  7d800000  xsignal r1, 0
0003dc  7d800000  xsignal r1, 0
0003e0  7d800000  xsignal r1, 0
0003e4  7d800000  xsignal r1, 0
0003e8  7d800000  xsignal r1, 0
0003ec  7d800000  xsignal r1, 0
0003f0  7d800000  xsignal r1, 0
0003f4  7d800000  xsignal r1, 0
0003f8  7d800000  xsignal r1, 0
0003fc  7d800000  xsignal r1, 0
000400  7d800000  xsignal r1, 0
000404  7d800000  xsignal r1, 0
000408  7d800000  xsignal r1, 0
00040c  7d800000  xsignal r1, 0
000410  7d800000  xsignal r1, 0
000414  7d800000  xsignal r1, 0
000418  7d800000  xsignal r1, 0
00041c  7d800000  xsignal r1, 0
000420  7d800000  xsignal r1, 0
000424  9f101000  addli r1, zero, 9
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
0005e4  7d000100  xsignal r2, 0
0005e8  7d000100  xsignal r2, 0
0005ec  7d000100  xsignal r2, 0
0005f0  7d000100  xsignal r2, 0
0005f4  7d000100  xsignal r2, 0
0005f8  7d000100  xsignal r2, 0
0005fc  7d000100  xsignal r2, 0
000600  7d000100  xsignal r2, 0
000604  7d000100  xsignal r2, 0
000608  7d000100  xsignal r2, 0
00060c  7d000100  xsignal r2, 0
000610  7d000100  xsignal r2, 0
000614  7d000100  xsignal r2, 0
000618  7d000100  xsignal r2, 0
00061c  7d000100  xsignal r2, 0
000620  7d000100  xsignal r2, 0
000624  7d000100  xsignal r2, 0
000628  1f710000  addli r2, zero, 7
00062c  7d800000  xsignal r1, 0
000630  7d800000  xsignal r1, 0
000634  7d800000  xsignal r1, 0
000638  7d800000  xsignal r1, 0
00063c  7d800000  xsignal r1, 0
000640  7d800000  xsignal r1, 0
000644  7d800000  xsignal r1, 0
000648  7d800000  xsignal r1, 0
00064c  7d800000  xsignal r1, 0
000650  7d800000  xsignal r1, 0
000654  7d800000  xsignal r1, 0
000658  7d800000  xsignal r1, 0
00065c  7d800000  xsignal r1, 0
000660  7d800000  xsignal r1, 0
000664  7d800000  xsignal r1, 0
000668  7d800000  xsignal r1, 0
00066c  7d800000  xsignal r1, 0
000670  7d800000  xsignal r1, 0
000674  7d800000  xsignal r1, 0
000678  7d800000  xsignal r1, 0
00067c  7d800000  xsignal r1, 0
000680  7d800000  xsignal r1, 0
000684  7d800000  xsignal r1, 0
000688  7d800000  xsignal r1, 0
00068c  7d800000  xsignal r1, 0
000690  7d800000  xsignal r1, 0
000694  7d800000  xsignal r1, 0
000698  7d800000  xsignal r1, 0
00069c  7d800000  xsignal r1, 0
0006a0  7d800000  xsignal r1, 0
0006a4  7d800000  xsignal r1, 0
0006a8  7d800000  xsignal r1, 0
0006ac  7d800000  xsignal r1, 0
0006b0  7d800000  xsignal r1, 0
0006b4  7d800000  xsignal r1, 0
0006b8  7d800000  xsignal r1, 0
0006bc  7d800000  xsignal r1, 0
0006c0  7d800000  xsignal r1, 0
0006c4  7d800000  xsignal r1, 0
0006c8  7d800000  xsignal r1, 0
0006cc  7d800000  xsignal r1, 0
0006d0  7d800000  xsignal r1, 0
0006d4  7d800000  xsignal r1, 0
0006d8  7d800000  xsignal r1, 0
0006dc  7d800000  xsignal r1, 0
0006e0  7d800000  xsignal r1, 0
0006e4  7d800000  xsignal r1, 0
0006e8  7d800000  xsignal r1, 0
0006ec  7d800000  xsignal r1, 0
0006f0  7d800000  xsignal r1, 0
0006f4  7d800000  xsignal r1, 0
0006f8  7d800000  xsignal r1, 0
0006fc  7d800000  xsignal r1, 0
000700  7d800000  xsignal r1, 0
000704  7d800000  xsignal r1, 0
000708  7d800000  xsignal r1, 0
00070c  7d800000  xsignal r1, 0
000710  7d800000  xsignal r1, 0
000714  7d800000  xsignal r1, 0
000718  7d800000  xsignal r1, 0
00071c  7d800000  xsignal r1, 0
000720  7d800000  xsignal r1, 0
000724  7d800000  xsignal r1, 0
000728  7d800000  xsignal r1, 0
00072c  7d800000  xsignal r1, 0
000730  7d800000  xsignal r1, 0
000734  7d800000  xsignal r1, 0
000738  7d800000  xsignal r1, 0
00073c  7d800000  xsignal r1, 0
000740  7d800000  xsignal r1, 0
000744  7d800000  xsignal r1, 0
000748  7d800000  xsignal r1, 0
00074c  7d800000  xsignal r1, 0
000750  7d800000  xsignal r1, 0
000754  7d800000  xsignal r1, 0
000758  7d800000  xsignal r1, 0
00075c  7d800000  xsignal r1, 0
000760  7d800000  xsignal r1, 0
000764  7d800000  xsignal r1, 0
000768  7d800000  xsignal r1, 0
00076c  7d800000  xsignal r1, 0
000770  7d800000  xsignal r1, 0
000774  7d800000  xsignal r1, 0
000778  7d800000  xsignal r1, 0
00077c  7d800000  xsignal r1, 0
000780  7d800000  xsignal r1, 0
000784  7d800000  xsignal r1, 0
000788  7d800000  xsignal r1, 0
00078c  7d800000  xsignal r1, 0
000790  7d800000  xsignal r1, 0
000794  7d800000  xsignal r1, 0
000798  7d800000  xsignal r1, 0
00079c  7d800000  xsignal r1, 0
0007a0  7d800000  xsignal r1, 0
0007a4  7d800000  xsignal r1, 0
0007a8  7d800000  xsignal r1, 0
0007ac  7d800000  xsignal r1, 0
0007b0  7d800000  xsignal r1, 0
0007b4  7d800000  xsignal r1, 0
0007b8  7d800000  xsignal r1, 0
0007bc  7d800000  xsignal r1, 0
0007c0  7d800000  xsignal r1, 0
0007c4  7d800000  xsignal r1, 0
0007c8  7d800000  xsignal r1, 0
0007cc  7d800000  xsignal r1, 0
0007d0  7d800000  xsignal r1, 0
0007d4  7d800000  xsignal r1, 0
0007d8  7d800000  xsignal r1, 0
0007dc  7d800000  xsignal r1, 0
0007e0  7d800000  xsignal r1, 0
0007e4  7d800000  xsignal r1, 0
0007e8  7d800000  xsignal r1, 0
0007ec  7d800000  xsignal r1, 0
0007f0  7d800000  xsignal r1, 0
0007f4  7d800000  xsignal r1, 0
0007f8  7d800000  xsignal r1, 0
0007fc  7d800000  xsignal r1, 0
000800  7d800000  xsignal r1, 0
000804  7d800000  xsignal r1, 0
000808  7d800000  xsignal r1, 0
00080c  7d800000  xsignal r1, 0
000810  7d800000  xsignal r1, 0
000814  7d800000  xsignal r1, 0
000818  7d800000  xsignal r1, 0
00081c  7d800000  xsignal r1, 0
000820  7d800000  xsignal r1, 0
000824  7d800000  xsignal r1, 0
000828  7d800000  xsignal r1, 0
00082c  7d800000  xsignal r1, 0
000830  7d800000  xsignal r1, 0
000834  7d800000  xsignal r1, 0
000838  7d800000  xsignal r1, 0
00083c  7d800000  xsignal r1, 0
000840  7d800000  xsignal r1, 0
000844  7d800000  xsignal r1, 0
000848  7d800000  xsignal r1, 0
00084c  7d800000  xsignal r1, 0
000850  7d800000  xsignal r1, 0
000854  7d800000  xsignal r1, 0
000858  7d800000  xsignal r1, 0
00085c  7d800000  xsignal r1, 0
000860  7d800000  xsignal r1, 0
000864  7d800000  xsignal r1, 0
000868  7d800000  xsignal r1, 0
00086c  7d800000  xsignal r1, 0
000870  7d800000  xsignal r1, 0
000874  7d800000  xsignal r1, 0
000878  7d800000  xsignal r1, 0
00087c  7d800000  xsignal r1, 0
000880  7d800000  xsignal r1, 0
000884  7d800000  xsignal r1, 0
000888  7d800000  xsignal r1, 0
00088c  7d800000  xsignal r1, 0
000890  7d800000  xsignal r1, 0
000894  7d800000  xsignal r1, 0
000898  7d800000  xsignal r1, 0
00089c  7d800000  xsignal r1, 0
0008a0  7d800000  xsignal r1, 0
0008a4  7d800000  xsignal r1, 0
0008a8  7d800000  xsignal r1, 0
0008ac  7d000100  xsignal r2, 0
0008b0  7d000100  xsignal r2, 0
0008b4  7d000100  xsignal r2, 0
0008b8  7d000100  xsignal r2, 0
0008bc  7d000100  xsignal r2, 0
0008c0  7d000100  xsignal r2, 0
0008c4  7d000100  xsignal r2, 0
0008c8  7d000100  xsignal r2, 0
0008cc  7d000100  xsignal r2, 0
0008d0  7d000100  xsignal r2, 0
0008d4  7d000100  xsignal r2, 0
0008d8  7d000100  xsignal r2, 0
0008dc  7d000100  xsignal r2, 0
0008e0  7d000100  xsignal r2, 0
0008e4  7d000100  xsignal r2, 0
0008e8  7d000100  xsignal r2, 0
0008ec  7d000100  xsignal r2, 0
0008f0  7d000100  xsignal r2, 0
0008f4  7d000100  xsignal r2, 0
0008f8  7d000100  xsignal r2, 0
0008fc  7d000100  xsignal r2, 0
000900  7d000100  xsignal r2, 0
000904  7d000100  xsignal r2, 0
000908  7d000100  xsignal r2, 0
00090c  7d000100  xsignal r2, 0
000910  7d000100  xsignal r2, 0
000914  7d000100  xsignal r2, 0
000918  7d000100  xsignal r2, 0
00091c  7d000100  xsignal r2, 0
000920  7d000100  xsignal r2, 0
000924  7d000100  xsignal r2, 0
000928  7d000100  xsignal r2, 0
00092c  7d000100  xsignal r2, 0
000930  7d000100  xsignal r2, 0
000934  7d000100  xsignal r2, 0
000938  7d000100  xsignal r2, 0
00093c  7d000100  xsignal r2, 0
000940  7d000100  xsignal r2, 0
000944  7d000100  xsignal r2, 0
000948  7d000100  xsignal r2, 0
00094c  7d000100  xsignal r2, 0
000950  7d000100  xsignal r2, 0
000954  7d000100  xsignal r2, 0
000958  7d000100  xsignal r2, 0
00095c  7d000100  xsignal r2, 0
000960  7d000100  xsignal r2, 0
000964  7d000100  xsignal r2, 0
000968  7d000100  xsignal r2, 0
00096c  7d000100  xsignal r2, 0
000970  7d000100  xsignal r2, 0
000974  7d000100  xsignal r2, 0
000978  7d000100  xsignal r2, 0
00097c  7d000100  xsignal r2, 0
000980  7d000100  xsignal r2, 0
000984  7d000100  xsignal r2, 0
000988  7d000100  xsignal r2, 0
00098c  7d000100  xsignal r2, 0
000990  7d000100  xsignal r2, 0
000994  7d000100  xsignal r2, 0
000998  7d000100  xsignal r2, 0
00099c  7d000100  xsignal r2, 0
0009a0  7d000100  xsignal r2, 0
0009a4  7d000100  xsignal r2, 0
0009a8  7d000100  xsignal r2, 0
0009ac  7d000100  xsignal r2, 0
0009b0  7d000100  xsignal r2, 0
0009b4  7d000100  xsignal r2, 0
0009b8  7d000100  xsignal r2, 0
0009bc  7d000100  xsignal r2, 0
0009c0  7d000100  xsignal r2, 0
0009c4  7d000100  xsignal r2, 0
0009c8  7d000100  xsignal r2, 0
0009cc  7d000100  xsignal r2, 0
0009d0  7d000100  xsignal r2, 0
0009d4  7d000100  xsignal r2, 0
0009d8  7d000100  xsignal r2, 0
0009dc  7d000100  xsignal r2, 0
0009e0  7d000100  xsignal r2, 0
0009e4  7d000100  xsignal r2, 0
0009e8  7d000100  xsignal r2, 0
0009ec  7d000100  xsignal r2, 0
0009f0  7d000100  xsignal r2, 0
0009f4  7d000100  xsignal r2, 0
0009f8  7d000100  xsignal r2, 0
0009fc  7d000100  xsignal r2, 0
000a00  7d000100  xsignal r2, 0
000a04  7d000100  xsignal r2, 0
000a08  7d000100  xsignal r2, 0
000a0c  7d000100  xsignal r2, 0
000a10  7d000100  xsignal r2, 0
000a14  7d000100  xsignal r2, 0
000a18  7d000100  xsignal r2, 0
000a1c  7d000100  xsignal r2, 0
000a20  7d000100  xsignal r2, 0
000a24  7d000100  xsignal r2, 0
000a28  7d000100  xsignal r2, 0
000a2c  7d000100  xsignal r2, 0
000a30  7d000100  xsignal r2, 0
000a34  7d000100  xsignal r2, 0
000a38  7d000100  xsignal r2, 0
000a3c  7d000100  xsignal r2, 0
000a40  7d000100  xsignal r2, 0
000a44  7d000100  xsignal r2, 0
000a48  7d000100  xsignal r2, 0
000a4c  7d000100  xsignal r2, 0
000a50  7d000100  xsignal r2, 0
000a54  7d000100  xsignal r2, 0
000a58  7d000100  xsignal r2, 0
000a5c  7d000100  xsignal r2, 0
000a60  7d000100  xsignal r2, 0
000a64  7d000100  xsignal r2, 0
000a68  7d000100  xsignal r2, 0
000a6c  7d000100  xsignal r2, 0
000a70  7d000100  xsignal r2, 0
000a74  7d000100  xsignal r2, 0
000a78  7d000100  xsignal r2, 0
000a7c  7d000100  xsignal r2, 0
000a80  7d000100  xsignal r2, 0
000a84  7d000100  xsignal r2, 0
000a88  7d000100  xsignal r2, 0
000a8c  7d000100  xsignal r2, 0
000a90  7d000100  xsignal r2, 0
000a94  7d000100  xsignal r2, 0
000a98  7d000100  xsignal r2, 0
000a9c  7d000100  xsignal r2, 0
000aa0  7d000100  xsignal r2, 0
000aa4  7d000100  xsignal r2, 0
000aa8  e3003f00  loadli.w r1,  24(r30)
000aac  63413f00  loadli.w r2,  28(r30)
000ab0  00d20002  load_param_i r4, 1
000ab4  e3014f00  loadli.w r3,  32(r30)
000ab8  abf3ffff  lui r7, 1048575
000abc  9f023fec  addli r5, r30, -2536
000ac0  67000ffc  storeli.w zero, -512(r30)
000ac4  e7470ff6  storeli.w zero, -1156(r30)
000ac8  e7070ff2  storeli.w zero, -1672(r30)
000acc  67470fec  storeli.w zero, -2444(r30)
000ad0  1b94f3ff  ori r8, r7, 4095
000ad4  8b101120  mul.s r1, r2, r1
000ad8  1f010200  addli r2, r4, 0
000adc  67408ffc  storeli.w r8, -508(r30)
000ae0  e7008ffc  storeli.w r8, -504(r30)
000ae4  e7408ffc  storeli.w r8, -500(r30)
000ae8  67018ffc  storeli.w r8, -496(r30)
000aec  67418ffc  storeli.w r8, -492(r30)
000af0  e7018ffc  storeli.w r8, -488(r30)
000af4  e7418ffc  storeli.w r8, -484(r30)
000af8  67028ffc  storeli.w r8, -480(r30)
000afc  67428ffc  storeli.w r8, -476(r30)
000b00  e7028ffc  storeli.w r8, -472(r30)
000b04  e7428ffc  storeli.w r8, -468(r30)
000b08  67038ffc  storeli.w r8, -464(r30)
000b0c  67438ffc  storeli.w r8, -460(r30)
000b10  e7038ffc  storeli.w r8, -456(r30)
000b14  e7438ffc  storeli.w r8, -452(r30)
000b18  67048ffc  storeli.w r8, -448(r30)
000b1c  67448ffc  storeli.w r8, -444(r30)
000b20  e7048ffc  storeli.w r8, -440(r30)
000b24  e7448ffc  storeli.w r8, -436(r30)
000b28  67058ffc  storeli.w r8, -432(r30)
000b2c  67458ffc  storeli.w r8, -428(r30)
000b30  e7058ffc  storeli.w r8, -424(r30)
000b34  e7458ffc  storeli.w r8, -420(r30)
000b38  67068ffc  storeli.w r8, -416(r30)
000b3c  67468ffc  storeli.w r8, -412(r30)
000b40  e7068ffc  storeli.w r8, -408(r30)
000b44  e7468ffc  storeli.w r8, -404(r30)
000b48  67078ffc  storeli.w r8, -400(r30)
000b4c  67478ffc  storeli.w r8, -396(r30)
000b50  e7078ffc  storeli.w r8, -392(r30)
000b54  e7478ffc  storeli.w r8, -388(r30)
000b58  67088ffc  storeli.w r8, -384(r30)
000b5c  67488ffc  storeli.w r8, -380(r30)
000b60  e7088ffc  storeli.w r8, -376(r30)
000b64  e7488ffc  storeli.w r8, -372(r30)
000b68  67098ffc  storeli.w r8, -368(r30)
000b6c  67498ffc  storeli.w r8, -364(r30)
000b70  e7098ffc  storeli.w r8, -360(r30)
000b74  e7498ffc  storeli.w r8, -356(r30)
000b78  670a8ffc  storeli.w r8, -352(r30)
000b7c  674a8ffc  storeli.w r8, -348(r30)
000b80  e70a8ffc  storeli.w r8, -344(r30)
000b84  e74a8ffc  storeli.w r8, -340(r30)
000b88  670b8ffc  storeli.w r8, -336(r30)
000b8c  674b8ffc  storeli.w r8, -332(r30)
000b90  e70b8ffc  storeli.w r8, -328(r30)
000b94  e74b8ffc  storeli.w r8, -324(r30)
000b98  670c8ffc  storeli.w r8, -320(r30)
000b9c  674c8ffc  storeli.w r8, -316(r30)
000ba0  e70c8ffc  storeli.w r8, -312(r30)
000ba4  e74c8ffc  storeli.w r8, -308(r30)
000ba8  670d8ffc  storeli.w r8, -304(r30)
000bac  674d8ffc  storeli.w r8, -300(r30)
000bb0  e70d8ffc  storeli.w r8, -296(r30)
000bb4  e74d8ffc  storeli.w r8, -292(r30)
000bb8  670e8ffc  storeli.w r8, -288(r30)
000bbc  674e8ffc  storeli.w r8, -284(r30)
000bc0  e70e8ffc  storeli.w r8, -280(r30)
000bc4  e74e8ffc  storeli.w r8, -276(r30)
000bc8  670f8ffc  storeli.w r8, -272(r30)
000bcc  674f8ffc  storeli.w r8, -268(r30)
000bd0  e70f8ffc  storeli.w r8, -264(r30)
000bd4  e74f8ffc  storeli.w r8, -260(r30)
000bd8  67008ffe  storeli.w r8, -256(r30)
000bdc  67408ffe  storeli.w r8, -252(r30)
000be0  e7008ffe  storeli.w r8, -248(r30)
000be4  e7408ffe  storeli.w r8, -244(r30)
000be8  67018ffe  storeli.w r8, -240(r30)
000bec  67418ffe  storeli.w r8, -236(r30)
000bf0  e7018ffe  storeli.w r8, -232(r30)
000bf4  e7418ffe  storeli.w r8, -228(r30)
000bf8  67028ffe  storeli.w r8, -224(r30)
000bfc  67428ffe  storeli.w r8, -220(r30)
000c00  e7028ffe  storeli.w r8, -216(r30)
000c04  e7428ffe  storeli.w r8, -212(r30)
000c08  67038ffe  storeli.w r8, -208(r30)
000c0c  67438ffe  storeli.w r8, -204(r30)
000c10  e7038ffe  storeli.w r8, -200(r30)
000c14  e7438ffe  storeli.w r8, -196(r30)
000c18  67048ffe  storeli.w r8, -192(r30)
000c1c  67448ffe  storeli.w r8, -188(r30)
000c20  e7048ffe  storeli.w r8, -184(r30)
000c24  e7448ffe  storeli.w r8, -180(r30)
000c28  67058ffe  storeli.w r8, -176(r30)
000c2c  67458ffe  storeli.w r8, -172(r30)
000c30  e7058ffe  storeli.w r8, -168(r30)
000c34  e7458ffe  storeli.w r8, -164(r30)
000c38  67068ffe  storeli.w r8, -160(r30)
000c3c  67468ffe  storeli.w r8, -156(r30)
000c40  e7068ffe  storeli.w r8, -152(r30)
000c44  e7468ffe  storeli.w r8, -148(r30)
000c48  67078ffe  storeli.w r8, -144(r30)
000c4c  67478ffe  storeli.w r8, -140(r30)
000c50  e7078ffe  storeli.w r8, -136(r30)
000c54  e7478ffe  storeli.w r8, -132(r30)
000c58  67088ffe  storeli.w r8, -128(r30)
000c5c  67488ffe  storeli.w r8, -124(r30)
000c60  e7088ffe  storeli.w r8, -120(r30)
000c64  e7488ffe  storeli.w r8, -116(r30)
000c68  67098ffe  storeli.w r8, -112(r30)
000c6c  67498ffe  storeli.w r8, -108(r30)
000c70  e7098ffe  storeli.w r8, -104(r30)
000c74  e7498ffe  storeli.w r8, -100(r30)
000c78  670a8ffe  storeli.w r8, -96(r30)
000c7c  674a8ffe  storeli.w r8, -92(r30)
000c80  e70a8ffe  storeli.w r8, -88(r30)
000c84  e74a8ffe  storeli.w r8, -84(r30)
000c88  670b8ffe  storeli.w r8, -80(r30)
000c8c  674b8ffe  storeli.w r8, -76(r30)
000c90  e70b8ffe  storeli.w r8, -72(r30)
000c94  e74b8ffe  storeli.w r8, -68(r30)
000c98  670c8ffe  storeli.w r8, -64(r30)
000c9c  674c8ffe  storeli.w r8, -60(r30)
000ca0  e70c8ffe  storeli.w r8, -56(r30)
000ca4  e74c8ffe  storeli.w r8, -52(r30)
000ca8  670d8ffe  storeli.w r8, -48(r30)
000cac  674d8ffe  storeli.w r8, -44(r30)
000cb0  e70d8ffe  storeli.w r8, -40(r30)
000cb4  e74d8ffe  storeli.w r8, -36(r30)
000cb8  670e8ffe  storeli.w r8, -32(r30)
000cbc  674e8ffe  storeli.w r8, -28(r30)
000cc0  e70e8ffe  storeli.w r8, -24(r30)
000cc4  e74e8ffe  storeli.w r8, -20(r30)
000cc8  670f8ffe  storeli.w r8, -16(r30)
000ccc  674f8ffe  storeli.w r8, -12(r30)
000cd0  e70f8ffe  storeli.w r8, -8(r30)
000cd4  e74f8ffe  storeli.w r8, -4(r30)
000cd8  67088ff6  storeli.w r8, -1152(r30)
000cdc  67488ff6  storeli.w r8, -1148(r30)
000ce0  e7088ff6  storeli.w r8, -1144(r30)
000ce4  e7488ff6  storeli.w r8, -1140(r30)
000ce8  67098ff6  storeli.w r8, -1136(r30)
000cec  67498ff6  storeli.w r8, -1132(r30)
000cf0  e7098ff6  storeli.w r8, -1128(r30)
000cf4  e7498ff6  storeli.w r8, -1124(r30)
000cf8  670a8ff6  storeli.w r8, -1120(r30)
000cfc  674a8ff6  storeli.w r8, -1116(r30)
000d00  e70a8ff6  storeli.w r8, -1112(r30)
000d04  e74a8ff6  storeli.w r8, -1108(r30)
000d08  670b8ff6  storeli.w r8, -1104(r30)
000d0c  674b8ff6  storeli.w r8, -1100(r30)
000d10  e70b8ff6  storeli.w r8, -1096(r30)
000d14  e74b8ff6  storeli.w r8, -1092(r30)
000d18  670c8ff6  storeli.w r8, -1088(r30)
000d1c  674c8ff6  storeli.w r8, -1084(r30)
000d20  e70c8ff6  storeli.w r8, -1080(r30)
000d24  e74c8ff6  storeli.w r8, -1076(r30)
000d28  670d8ff6  storeli.w r8, -1072(r30)
000d2c  674d8ff6  storeli.w r8, -1068(r30)
000d30  e70d8ff6  storeli.w r8, -1064(r30)
000d34  e74d8ff6  storeli.w r8, -1060(r30)
000d38  670e8ff6  storeli.w r8, -1056(r30)
000d3c  674e8ff6  storeli.w r8, -1052(r30)
000d40  e70e8ff6  storeli.w r8, -1048(r30)
000d44  e74e8ff6  storeli.w r8, -1044(r30)
000d48  670f8ff6  storeli.w r8, -1040(r30)
000d4c  674f8ff6  storeli.w r8, -1036(r30)
000d50  e70f8ff6  storeli.w r8, -1032(r30)
000d54  e74f8ff6  storeli.w r8, -1028(r30)
000d58  67008ff8  storeli.w r8, -1024(r30)
000d5c  67408ff8  storeli.w r8, -1020(r30)
000d60  e7008ff8  storeli.w r8, -1016(r30)
000d64  e7408ff8  storeli.w r8, -1012(r30)
000d68  67018ff8  storeli.w r8, -1008(r30)
000d6c  67418ff8  storeli.w r8, -1004(r30)
000d70  e7018ff8  storeli.w r8, -1000(r30)
000d74  e7418ff8  storeli.w r8, -996(r30)
000d78  67028ff8  storeli.w r8, -992(r30)
000d7c  67428ff8  storeli.w r8, -988(r30)
000d80  e7028ff8  storeli.w r8, -984(r30)
000d84  e7428ff8  storeli.w r8, -980(r30)
000d88  67038ff8  storeli.w r8, -976(r30)
000d8c  67438ff8  storeli.w r8, -972(r30)
000d90  e7038ff8  storeli.w r8, -968(r30)
000d94  e7438ff8  storeli.w r8, -964(r30)
000d98  67048ff8  storeli.w r8, -960(r30)
000d9c  67448ff8  storeli.w r8, -956(r30)
000da0  e7048ff8  storeli.w r8, -952(r30)
000da4  e7448ff8  storeli.w r8, -948(r30)
000da8  67058ff8  storeli.w r8, -944(r30)
000dac  67458ff8  storeli.w r8, -940(r30)
000db0  e7058ff8  storeli.w r8, -936(r30)
000db4  e7458ff8  storeli.w r8, -932(r30)
000db8  67068ff8  storeli.w r8, -928(r30)
000dbc  67468ff8  storeli.w r8, -924(r30)
000dc0  e7068ff8  storeli.w r8, -920(r30)
000dc4  e7468ff8  storeli.w r8, -916(r30)
000dc8  67078ff8  storeli.w r8, -912(r30)
000dcc  67478ff8  storeli.w r8, -908(r30)
000dd0  e7078ff8  storeli.w r8, -904(r30)
000dd4  e7478ff8  storeli.w r8, -900(r30)
000dd8  67088ff8  storeli.w r8, -896(r30)
000ddc  67488ff8  storeli.w r8, -892(r30)
000de0  e7088ff8  storeli.w r8, -888(r30)
000de4  e7488ff8  storeli.w r8, -884(r30)
000de8  67098ff8  storeli.w r8, -880(r30)
000dec  67498ff8  storeli.w r8, -876(r30)
000df0  e7098ff8  storeli.w r8, -872(r30)
000df4  e7498ff8  storeli.w r8, -868(r30)
000df8  670a8ff8  storeli.w r8, -864(r30)
000dfc  674a8ff8  storeli.w r8, -860(r30)
000e00  e70a8ff8  storeli.w r8, -856(r30)
000e04  e74a8ff8  storeli.w r8, -852(r30)
000e08  670b8ff8  storeli.w r8, -848(r30)
000e0c  674b8ff8  storeli.w r8, -844(r30)
000e10  e70b8ff8  storeli.w r8, -840(r30)
000e14  e74b8ff8  storeli.w r8, -836(r30)
000e18  670c8ff8  storeli.w r8, -832(r30)
000e1c  674c8ff8  storeli.w r8, -828(r30)
000e20  e70c8ff8  storeli.w r8, -824(r30)
000e24  e74c8ff8  storeli.w r8, -820(r30)
000e28  670d8ff8  storeli.w r8, -816(r30)
000e2c  674d8ff8  storeli.w r8, -812(r30)
000e30  e70d8ff8  storeli.w r8, -808(r30)
000e34  e74d8ff8  storeli.w r8, -804(r30)
000e38  670e8ff8  storeli.w r8, -800(r30)
000e3c  674e8ff8  storeli.w r8, -796(r30)
000e40  e70e8ff8  storeli.w r8, -792(r30)
000e44  e74e8ff8  storeli.w r8, -788(r30)
000e48  670f8ff8  storeli.w r8, -784(r30)
000e4c  674f8ff8  storeli.w r8, -780(r30)
000e50  e70f8ff8  storeli.w r8, -776(r30)
000e54  e74f8ff8  storeli.w r8, -772(r30)
000e58  67008ffa  storeli.w r8, -768(r30)
000e5c  67408ffa  storeli.w r8, -764(r30)
000e60  e7008ffa  storeli.w r8, -760(r30)
000e64  e7408ffa  storeli.w r8, -756(r30)
000e68  67018ffa  storeli.w r8, -752(r30)
000e6c  67418ffa  storeli.w r8, -748(r30)
000e70  e7018ffa  storeli.w r8, -744(r30)
000e74  e7418ffa  storeli.w r8, -740(r30)
000e78  67028ffa  storeli.w r8, -736(r30)
000e7c  67428ffa  storeli.w r8, -732(r30)
000e80  e7028ffa  storeli.w r8, -728(r30)
000e84  e7428ffa  storeli.w r8, -724(r30)
000e88  67038ffa  storeli.w r8, -720(r30)
000e8c  67438ffa  storeli.w r8, -716(r30)
000e90  e7038ffa  storeli.w r8, -712(r30)
000e94  e7438ffa  storeli.w r8, -708(r30)
000e98  67048ffa  storeli.w r8, -704(r30)
000e9c  67448ffa  storeli.w r8, -700(r30)
000ea0  e7048ffa  storeli.w r8, -696(r30)
000ea4  e7448ffa  storeli.w r8, -692(r30)
000ea8  67058ffa  storeli.w r8, -688(r30)
000eac  67458ffa  storeli.w r8, -684(r30)
000eb0  e7058ffa  storeli.w r8, -680(r30)
000eb4  e7458ffa  storeli.w r8, -676(r30)
000eb8  67068ffa  storeli.w r8, -672(r30)
000ebc  67468ffa  storeli.w r8, -668(r30)
000ec0  e7068ffa  storeli.w r8, -664(r30)
000ec4  e7468ffa  storeli.w r8, -660(r30)
000ec8  67078ffa  storeli.w r8, -656(r30)
000ecc  e7078ff4  storeli.w r8, -1416(r30)
000ed0  67478ff4  storeli.w r8, -1420(r30)
000ed4  67078ff4  storeli.w r8, -1424(r30)
000ed8  e7468ff4  storeli.w r8, -1428(r30)
000edc  e7068ff4  storeli.w r8, -1432(r30)
000ee0  67468ff4  storeli.w r8, -1436(r30)
000ee4  67068ff4  storeli.w r8, -1440(r30)
000ee8  e7458ff4  storeli.w r8, -1444(r30)
000eec  e7058ff4  storeli.w r8, -1448(r30)
000ef0  67458ff4  storeli.w r8, -1452(r30)
000ef4  67058ff4  storeli.w r8, -1456(r30)
000ef8  e7448ff4  storeli.w r8, -1460(r30)
000efc  e7048ff4  storeli.w r8, -1464(r30)
000f00  67448ff4  storeli.w r8, -1468(r30)
000f04  67048ff4  storeli.w r8, -1472(r30)
000f08  e7438ff4  storeli.w r8, -1476(r30)
000f0c  e7038ff4  storeli.w r8, -1480(r30)
000f10  67438ff4  storeli.w r8, -1484(r30)
000f14  67038ff4  storeli.w r8, -1488(r30)
000f18  e7428ff4  storeli.w r8, -1492(r30)
000f1c  e7028ff4  storeli.w r8, -1496(r30)
000f20  67428ff4  storeli.w r8, -1500(r30)
000f24  67028ff4  storeli.w r8, -1504(r30)
000f28  e7418ff4  storeli.w r8, -1508(r30)
000f2c  e7018ff4  storeli.w r8, -1512(r30)
000f30  67418ff4  storeli.w r8, -1516(r30)
000f34  67018ff4  storeli.w r8, -1520(r30)
000f38  e7408ff4  storeli.w r8, -1524(r30)
000f3c  e7008ff4  storeli.w r8, -1528(r30)
000f40  67408ff4  storeli.w r8, -1532(r30)
000f44  67008ff4  storeli.w r8, -1536(r30)
000f48  e74f8ff2  storeli.w r8, -1540(r30)
000f4c  e70f8ff2  storeli.w r8, -1544(r30)
000f50  674f8ff2  storeli.w r8, -1548(r30)
000f54  670f8ff2  storeli.w r8, -1552(r30)
000f58  e74e8ff2  storeli.w r8, -1556(r30)
000f5c  e70e8ff2  storeli.w r8, -1560(r30)
000f60  674e8ff2  storeli.w r8, -1564(r30)
000f64  670e8ff2  storeli.w r8, -1568(r30)
000f68  e74d8ff2  storeli.w r8, -1572(r30)
000f6c  e70d8ff2  storeli.w r8, -1576(r30)
000f70  674d8ff2  storeli.w r8, -1580(r30)
000f74  670d8ff2  storeli.w r8, -1584(r30)
000f78  e74c8ff2  storeli.w r8, -1588(r30)
000f7c  e70c8ff2  storeli.w r8, -1592(r30)
000f80  674c8ff2  storeli.w r8, -1596(r30)
000f84  670c8ff2  storeli.w r8, -1600(r30)
000f88  e74b8ff2  storeli.w r8, -1604(r30)
000f8c  e70b8ff2  storeli.w r8, -1608(r30)
000f90  674b8ff2  storeli.w r8, -1612(r30)
000f94  670b8ff2  storeli.w r8, -1616(r30)
000f98  e74a8ff2  storeli.w r8, -1620(r30)
000f9c  e70a8ff2  storeli.w r8, -1624(r30)
000fa0  674a8ff2  storeli.w r8, -1628(r30)
000fa4  670a8ff2  storeli.w r8, -1632(r30)
000fa8  e7498ff2  storeli.w r8, -1636(r30)
000fac  e7098ff2  storeli.w r8, -1640(r30)
000fb0  67498ff2  storeli.w r8, -1644(r30)
000fb4  67098ff2  storeli.w r8, -1648(r30)
000fb8  e7488ff2  storeli.w r8, -1652(r30)
000fbc  e7088ff2  storeli.w r8, -1656(r30)
000fc0  67488ff2  storeli.w r8, -1660(r30)
000fc4  67088ff2  storeli.w r8, -1664(r30)
000fc8  e7478ff2  storeli.w r8, -1668(r30)
000fcc  e74f8ffa  storeli.w r8, -516(r30)
000fd0  e70f8ffa  storeli.w r8, -520(r30)
000fd4  674f8ffa  storeli.w r8, -524(r30)
000fd8  670f8ffa  storeli.w r8, -528(r30)
000fdc  e74e8ffa  storeli.w r8, -532(r30)
000fe0  e70e8ffa  storeli.w r8, -536(r30)
000fe4  674e8ffa  storeli.w r8, -540(r30)
000fe8  670e8ffa  storeli.w r8, -544(r30)
000fec  e74d8ffa  storeli.w r8, -548(r30)
000ff0  e70d8ffa  storeli.w r8, -552(r30)
000ff4  674d8ffa  storeli.w r8, -556(r30)
000ff8  670d8ffa  storeli.w r8, -560(r30)
000ffc  e74c8ffa  storeli.w r8, -564(r30)
001000  e70c8ffa  storeli.w r8, -568(r30)
001004  674c8ffa  storeli.w r8, -572(r30)
001008  670c8ffa  storeli.w r8, -576(r30)
00100c  e74b8ffa  storeli.w r8, -580(r30)
001010  e70b8ffa  storeli.w r8, -584(r30)
001014  674b8ffa  storeli.w r8, -588(r30)
001018  670b8ffa  storeli.w r8, -592(r30)
00101c  e74a8ffa  storeli.w r8, -596(r30)
001020  e70a8ffa  storeli.w r8, -600(r30)
001024  674a8ffa  storeli.w r8, -604(r30)
001028  670a8ffa  storeli.w r8, -608(r30)
00102c  e7498ffa  storeli.w r8, -612(r30)
001030  e7098ffa  storeli.w r8, -616(r30)
001034  67498ffa  storeli.w r8, -620(r30)
001038  67098ffa  storeli.w r8, -624(r30)
00103c  e7488ffa  storeli.w r8, -628(r30)
001040  e7088ffa  storeli.w r8, -632(r30)
001044  67488ffa  storeli.w r8, -636(r30)
001048  67088ffa  storeli.w r8, -640(r30)
00104c  e7478ffa  storeli.w r8, -644(r30)
001050  e7078ffa  storeli.w r8, -648(r30)
001054  67478ffa  storeli.w r8, -652(r30)
001058  e7478ff4  storeli.w r8, -1412(r30)
00105c  67088ff4  storeli.w r8, -1408(r30)
001060  67488ff4  storeli.w r8, -1404(r30)
001064  e7088ff4  storeli.w r8, -1400(r30)
001068  e7488ff4  storeli.w r8, -1396(r30)
00106c  67098ff4  storeli.w r8, -1392(r30)
001070  67498ff4  storeli.w r8, -1388(r30)
001074  e7098ff4  storeli.w r8, -1384(r30)
001078  e7498ff4  storeli.w r8, -1380(r30)
00107c  670a8ff4  storeli.w r8, -1376(r30)
001080  674a8ff4  storeli.w r8, -1372(r30)
001084  e70a8ff4  storeli.w r8, -1368(r30)
001088  e74a8ff4  storeli.w r8, -1364(r30)
00108c  670b8ff4  storeli.w r8, -1360(r30)
001090  674b8ff4  storeli.w r8, -1356(r30)
001094  e70b8ff4  storeli.w r8, -1352(r30)
001098  e74b8ff4  storeli.w r8, -1348(r30)
00109c  670c8ff4  storeli.w r8, -1344(r30)
0010a0  674c8ff4  storeli.w r8, -1340(r30)
0010a4  e70c8ff4  storeli.w r8, -1336(r30)
0010a8  e74c8ff4  storeli.w r8, -1332(r30)
0010ac  670d8ff4  storeli.w r8, -1328(r30)
0010b0  674d8ff4  storeli.w r8, -1324(r30)
0010b4  e70d8ff4  storeli.w r8, -1320(r30)
0010b8  e74d8ff4  storeli.w r8, -1316(r30)
0010bc  670e8ff4  storeli.w r8, -1312(r30)
0010c0  674e8ff4  storeli.w r8, -1308(r30)
0010c4  e70e8ff4  storeli.w r8, -1304(r30)
0010c8  e74e8ff4  storeli.w r8, -1300(r30)
0010cc  670f8ff4  storeli.w r8, -1296(r30)
0010d0  674f8ff4  storeli.w r8, -1292(r30)
0010d4  e70f8ff4  storeli.w r8, -1288(r30)
0010d8  e74f8ff4  storeli.w r8, -1284(r30)
0010dc  67008ff6  storeli.w r8, -1280(r30)
0010e0  67408ff6  storeli.w r8, -1276(r30)
0010e4  e7008ff6  storeli.w r8, -1272(r30)
0010e8  e7408ff6  storeli.w r8, -1268(r30)
0010ec  67018ff6  storeli.w r8, -1264(r30)
0010f0  67418ff6  storeli.w r8, -1260(r30)
0010f4  e7018ff6  storeli.w r8, -1256(r30)
0010f8  e7418ff6  storeli.w r8, -1252(r30)
0010fc  67028ff6  storeli.w r8, -1248(r30)
001100  67428ff6  storeli.w r8, -1244(r30)
001104  e7028ff6  storeli.w r8, -1240(r30)
001108  e7428ff6  storeli.w r8, -1236(r30)
00110c  67038ff6  storeli.w r8, -1232(r30)
001110  67438ff6  storeli.w r8, -1228(r30)
001114  e7038ff6  storeli.w r8, -1224(r30)
001118  e7438ff6  storeli.w r8, -1220(r30)
00111c  67048ff6  storeli.w r8, -1216(r30)
001120  67448ff6  storeli.w r8, -1212(r30)
001124  e7048ff6  storeli.w r8, -1208(r30)
001128  e7448ff6  storeli.w r8, -1204(r30)
00112c  67058ff6  storeli.w r8, -1200(r30)
001130  67458ff6  storeli.w r8, -1196(r30)
001134  e7058ff6  storeli.w r8, -1192(r30)
001138  e7458ff6  storeli.w r8, -1188(r30)
00113c  67068ff6  storeli.w r8, -1184(r30)
001140  67468ff6  storeli.w r8, -1180(r30)
001144  e7068ff6  storeli.w r8, -1176(r30)
001148  e7468ff6  storeli.w r8, -1172(r30)
00114c  67078ff6  storeli.w r8, -1168(r30)
001150  67478ff6  storeli.w r8, -1164(r30)
001154  e7078ff6  storeli.w r8, -1160(r30)
001158  e7078fec  storeli.w r8, -2440(r30)
00115c  e7478fec  storeli.w r8, -2436(r30)
001160  67088fec  storeli.w r8, -2432(r30)
001164  67488fec  storeli.w r8, -2428(r30)
001168  e7088fec  storeli.w r8, -2424(r30)
00116c  e7488fec  storeli.w r8, -2420(r30)
001170  67098fec  storeli.w r8, -2416(r30)
001174  67498fec  storeli.w r8, -2412(r30)
001178  e7098fec  storeli.w r8, -2408(r30)
00117c  e7498fec  storeli.w r8, -2404(r30)
001180  670a8fec  storeli.w r8, -2400(r30)
001184  674a8fec  storeli.w r8, -2396(r30)
001188  e70a8fec  storeli.w r8, -2392(r30)
00118c  e74a8fec  storeli.w r8, -2388(r30)
001190  670b8fec  storeli.w r8, -2384(r30)
001194  674b8fec  storeli.w r8, -2380(r30)
001198  e70b8fec  storeli.w r8, -2376(r30)
00119c  e74b8fec  storeli.w r8, -2372(r30)
0011a0  670c8fec  storeli.w r8, -2368(r30)
0011a4  674c8fec  storeli.w r8, -2364(r30)
0011a8  e70c8fec  storeli.w r8, -2360(r30)
0011ac  e74c8fec  storeli.w r8, -2356(r30)
0011b0  670d8fec  storeli.w r8, -2352(r30)
0011b4  674d8fec  storeli.w r8, -2348(r30)
0011b8  e70d8fec  storeli.w r8, -2344(r30)
0011bc  e74d8fec  storeli.w r8, -2340(r30)
0011c0  670e8fec  storeli.w r8, -2336(r30)
0011c4  674e8fec  storeli.w r8, -2332(r30)
0011c8  e70e8fec  storeli.w r8, -2328(r30)
0011cc  e74e8fec  storeli.w r8, -2324(r30)
0011d0  670f8fec  storeli.w r8, -2320(r30)
0011d4  674f8fec  storeli.w r8, -2316(r30)
0011d8  e70f8fec  storeli.w r8, -2312(r30)
0011dc  e74f8fec  storeli.w r8, -2308(r30)
0011e0  67008fee  storeli.w r8, -2304(r30)
0011e4  67408fee  storeli.w r8, -2300(r30)
0011e8  e7008fee  storeli.w r8, -2296(r30)
0011ec  e7408fee  storeli.w r8, -2292(r30)
0011f0  67018fee  storeli.w r8, -2288(r30)
0011f4  67418fee  storeli.w r8, -2284(r30)
0011f8  e7018fee  storeli.w r8, -2280(r30)
0011fc  e7418fee  storeli.w r8, -2276(r30)
001200  67028fee  storeli.w r8, -2272(r30)
001204  67428fee  storeli.w r8, -2268(r30)
001208  e7028fee  storeli.w r8, -2264(r30)
00120c  e7428fee  storeli.w r8, -2260(r30)
001210  67038fee  storeli.w r8, -2256(r30)
001214  67438fee  storeli.w r8, -2252(r30)
001218  e7038fee  storeli.w r8, -2248(r30)
00121c  e7438fee  storeli.w r8, -2244(r30)
001220  67048fee  storeli.w r8, -2240(r30)
001224  67448fee  storeli.w r8, -2236(r30)
001228  e7048fee  storeli.w r8, -2232(r30)
00122c  e7448fee  storeli.w r8, -2228(r30)
001230  67058fee  storeli.w r8, -2224(r30)
001234  67458fee  storeli.w r8, -2220(r30)
001238  e7058fee  storeli.w r8, -2216(r30)
00123c  e7458fee  storeli.w r8, -2212(r30)
001240  67068fee  storeli.w r8, -2208(r30)
001244  67468fee  storeli.w r8, -2204(r30)
001248  e7068fee  storeli.w r8, -2200(r30)
00124c  e7468fee  storeli.w r8, -2196(r30)
001250  67078fee  storeli.w r8, -2192(r30)
001254  67478fee  storeli.w r8, -2188(r30)
001258  e7078fee  storeli.w r8, -2184(r30)
00125c  e7478fee  storeli.w r8, -2180(r30)
001260  67088fee  storeli.w r8, -2176(r30)
001264  67488fee  storeli.w r8, -2172(r30)
001268  e7088fee  storeli.w r8, -2168(r30)
00126c  e7488fee  storeli.w r8, -2164(r30)
001270  67098fee  storeli.w r8, -2160(r30)
001274  67498fee  storeli.w r8, -2156(r30)
001278  e7098fee  storeli.w r8, -2152(r30)
00127c  e7498fee  storeli.w r8, -2148(r30)
001280  670a8fee  storeli.w r8, -2144(r30)
001284  674a8fee  storeli.w r8, -2140(r30)
001288  e70a8fee  storeli.w r8, -2136(r30)
00128c  e74a8fee  storeli.w r8, -2132(r30)
001290  670b8fee  storeli.w r8, -2128(r30)
001294  674b8fee  storeli.w r8, -2124(r30)
001298  e70b8fee  storeli.w r8, -2120(r30)
00129c  e74b8fee  storeli.w r8, -2116(r30)
0012a0  670c8fee  storeli.w r8, -2112(r30)
0012a4  674c8fee  storeli.w r8, -2108(r30)
0012a8  e70c8fee  storeli.w r8, -2104(r30)
0012ac  e74c8fee  storeli.w r8, -2100(r30)
0012b0  670d8fee  storeli.w r8, -2096(r30)
0012b4  674d8fee  storeli.w r8, -2092(r30)
0012b8  e70d8fee  storeli.w r8, -2088(r30)
0012bc  e74d8fee  storeli.w r8, -2084(r30)
0012c0  670e8fee  storeli.w r8, -2080(r30)
0012c4  674e8fee  storeli.w r8, -2076(r30)
0012c8  e70e8fee  storeli.w r8, -2072(r30)
0012cc  e74e8fee  storeli.w r8, -2068(r30)
0012d0  670f8fee  storeli.w r8, -2064(r30)
0012d4  674f8fee  storeli.w r8, -2060(r30)
0012d8  e70f8fee  storeli.w r8, -2056(r30)
0012dc  e74f8fee  storeli.w r8, -2052(r30)
0012e0  67008ff0  storeli.w r8, -2048(r30)
0012e4  67408ff0  storeli.w r8, -2044(r30)
0012e8  e7008ff0  storeli.w r8, -2040(r30)
0012ec  e7408ff0  storeli.w r8, -2036(r30)
0012f0  67018ff0  storeli.w r8, -2032(r30)
0012f4  67418ff0  storeli.w r8, -2028(r30)
0012f8  e7018ff0  storeli.w r8, -2024(r30)
0012fc  e7418ff0  storeli.w r8, -2020(r30)
001300  67028ff0  storeli.w r8, -2016(r30)
001304  67428ff0  storeli.w r8, -2012(r30)
001308  e7028ff0  storeli.w r8, -2008(r30)
00130c  e7428ff0  storeli.w r8, -2004(r30)
001310  67038ff0  storeli.w r8, -2000(r30)
001314  67438ff0  storeli.w r8, -1996(r30)
001318  e7038ff0  storeli.w r8, -1992(r30)
00131c  e7438ff0  storeli.w r8, -1988(r30)
001320  67048ff0  storeli.w r8, -1984(r30)
001324  67448ff0  storeli.w r8, -1980(r30)
001328  e7048ff0  storeli.w r8, -1976(r30)
00132c  e7448ff0  storeli.w r8, -1972(r30)
001330  67058ff0  storeli.w r8, -1968(r30)
001334  67458ff0  storeli.w r8, -1964(r30)
001338  e7058ff0  storeli.w r8, -1960(r30)
00133c  e7458ff0  storeli.w r8, -1956(r30)
001340  67068ff0  storeli.w r8, -1952(r30)
001344  67468ff0  storeli.w r8, -1948(r30)
001348  e7068ff0  storeli.w r8, -1944(r30)
00134c  e7468ff0  storeli.w r8, -1940(r30)
001350  67078ff0  storeli.w r8, -1936(r30)
001354  67478ff0  storeli.w r8, -1932(r30)
001358  e7078ff0  storeli.w r8, -1928(r30)
00135c  e7478ff0  storeli.w r8, -1924(r30)
001360  67088ff0  storeli.w r8, -1920(r30)
001364  67488ff0  storeli.w r8, -1916(r30)
001368  e7088ff0  storeli.w r8, -1912(r30)
00136c  e7488ff0  storeli.w r8, -1908(r30)
001370  67098ff0  storeli.w r8, -1904(r30)
001374  67498ff0  storeli.w r8, -1900(r30)
001378  e7098ff0  storeli.w r8, -1896(r30)
00137c  e7498ff0  storeli.w r8, -1892(r30)
001380  670a8ff0  storeli.w r8, -1888(r30)
001384  674a8ff0  storeli.w r8, -1884(r30)
001388  e70a8ff0  storeli.w r8, -1880(r30)
00138c  e74a8ff0  storeli.w r8, -1876(r30)
001390  670b8ff0  storeli.w r8, -1872(r30)
001394  674b8ff0  storeli.w r8, -1868(r30)
001398  e70b8ff0  storeli.w r8, -1864(r30)
00139c  e74b8ff0  storeli.w r8, -1860(r30)
0013a0  670c8ff0  storeli.w r8, -1856(r30)
0013a4  674c8ff0  storeli.w r8, -1852(r30)
0013a8  e70c8ff0  storeli.w r8, -1848(r30)
0013ac  e74c8ff0  storeli.w r8, -1844(r30)
0013b0  670d8ff0  storeli.w r8, -1840(r30)
0013b4  674d8ff0  storeli.w r8, -1836(r30)
0013b8  e70d8ff0  storeli.w r8, -1832(r30)
0013bc  e74d8ff0  storeli.w r8, -1828(r30)
0013c0  670e8ff0  storeli.w r8, -1824(r30)
0013c4  674e8ff0  storeli.w r8, -1820(r30)
0013c8  e70e8ff0  storeli.w r8, -1816(r30)
0013cc  e74e8ff0  storeli.w r8, -1812(r30)
0013d0  670f8ff0  storeli.w r8, -1808(r30)
0013d4  674f8ff0  storeli.w r8, -1804(r30)
0013d8  e70f8ff0  storeli.w r8, -1800(r30)
0013dc  e74f8ff0  storeli.w r8, -1796(r30)
0013e0  67008ff2  storeli.w r8, -1792(r30)
0013e4  67408ff2  storeli.w r8, -1788(r30)
0013e8  e7008ff2  storeli.w r8, -1784(r30)
0013ec  e7408ff2  storeli.w r8, -1780(r30)
0013f0  67018ff2  storeli.w r8, -1776(r30)
0013f4  67418ff2  storeli.w r8, -1772(r30)
0013f8  e7018ff2  storeli.w r8, -1768(r30)
0013fc  e7418ff2  storeli.w r8, -1764(r30)
001400  67028ff2  storeli.w r8, -1760(r30)
001404  67428ff2  storeli.w r8, -1756(r30)
001408  e7028ff2  storeli.w r8, -1752(r30)
00140c  e7428ff2  storeli.w r8, -1748(r30)
001410  67038ff2  storeli.w r8, -1744(r30)
001414  67438ff2  storeli.w r8, -1740(r30)
001418  e7038ff2  storeli.w r8, -1736(r30)
00141c  e7438ff2  storeli.w r8, -1732(r30)
001420  67048ff2  storeli.w r8, -1728(r30)
001424  67448ff2  storeli.w r8, -1724(r30)
001428  e7048ff2  storeli.w r8, -1720(r30)
00142c  e7448ff2  storeli.w r8, -1716(r30)
001430  67058ff2  storeli.w r8, -1712(r30)
001434  67458ff2  storeli.w r8, -1708(r30)
001438  e7058ff2  storeli.w r8, -1704(r30)
00143c  e7458ff2  storeli.w r8, -1700(r30)
001440  67068ff2  storeli.w r8, -1696(r30)
001444  67468ff2  storeli.w r8, -1692(r30)
001448  e7068ff2  storeli.w r8, -1688(r30)
00144c  e7468ff2  storeli.w r8, -1684(r30)
001450  67078ff2  storeli.w r8, -1680(r30)
001454  67478ff2  storeli.w r8, -1676(r30)
001458  0b913050  fmac.s r2, r1, r3
00145c  8b903020  mul.s r1, r1, r3
001460  1f71f1ff  addli r2, r2, -1
001464  0b114130  div.s r2, r2, r4
001468  00520002  load_param_i r4, 0
00146c  0b134120  mul.s r6, r2, r4
001470  0b114150  fmac.s r2, r2, r4
001474  abf1ffff  lui r3, 1048575
001478  8b131140  min.s r7, r2, r1
00147c  73b03200  store.d r[4:5], 0(r5)
001480  cba36304  ble.s r7, r6, 2280
001484  b3900328  sext_int2long r[2:3], r7
001488  9f014fec  addli r3, r30, -2528
00148c  9f250000  addli r11, zero, 2
001490  9f690000  addli r19, zero, 6
001494  1f570000  addli r14, zero, 5
001498  9f470000  addli r15, zero, 4
00149c  9f088000  addli r17, zero, 64
0014a0  1f094000  addli r18, zero, 32
0014a4  2baa0000  lui r20, 10
0014a8  9f1a0000  addli r21, zero, 1
0014ac  1f3b0000  addli r22, zero, 3
0014b0  9f062000  addli r13, zero, 16
0014b4  1f060000  addli r12, zero, 0
0014b8  73b01100  store.d r[2:3], 0(r3)
0014bc  ebd00200  load.d r[2:3], 0(r5)
0014c0  b3110328  sext_int2long r[4:5], r6
0014c4  1f030001  addli r6, zero, 128
0014c8  1f71f007  addli r2, zero, 1023
0014cc  73b01200  store.d r[2:3], 0(r5)
0014d0  db050000  j 44
0014d4  9f201000  addli r1, zero, 10
0014d8  7d800000  xsignal r1, 0
0014dc  9f009fec  addli r1, r30, -2488
0014e0  9f024fec  addli r5, r30, -2528
0014e4  63468fec  loadli.w r12,  -2492(r30)
0014e8  ebd10000  load.d r[4:5], 0(r1)
0014ec  ebd00200  load.d r[2:3], 0(r5)
0014f0  a7910100  addli.d r[4:5], r[4:5], 1
0014f4  93b01104  setlt.sl r1, r[4:5], r[2:3]
0014f8  b7c10004  beq r1, zero, 2160
0014fc  3bb0fc00  bneq r25, r15, 12
001500  9f301000  addli r1, zero, 11
001504  7d900000  xwait r1, 0
001508  e3004f00  loadli.w r1,  32(r30)
00150c  1f019fec  addli r2, r30, -2488
001510  1f1e0000  addli r28, zero, 1
001514  9f027fec  addli r5, r30, -2504
001518  e344efec  loadli.w r9,  -2444(r30)
00151c  6305fff2  loadli.w r10,  -1672(r30)
001520  73303100  store.d r[4:5], 0(r2)
001524  63413f00  loadli.w r2,  28(r30)
001528  8b901130  div.s r1, r3, r1
00152c  1f021000  addli r4, zero, 8
001530  0b912030  div.s r2, r1, r2
001534  8b136130  div.s r7, r2, r6
001538  9bb03300  slli r1, r7, 3
00153c  8b911518  sub.s r3, r11, r1
001540  0b944140  min.s r8, r3, r4
001544  1f321000  addli r4, zero, 11
001548  8b118138  mod.s r3, r2, r8
00154c  8b903010  add.s r1, r1, r3
001550  93011e04  setlt.u r3, r28, r1
001554  b38b0028  zext_int2long r[24:25], r1
001558  73b07201  store.d r[24:25], 0(r5)
00155c  97bb4b02  sll.d r[24:25], r[24:25], r4
001560  3bb00100  bneq r3, zero, 12
001564  b3010028  zext_int2long r[4:5], zero
001568  5b020000  j 16
00156c  9f023fec  addli r5, r30, -2536
001570  ebd10200  load.d r[4:5], 0(r5)
001574  97813b02  and.d r[4:5], r[24:25], r[4:5]
001578  9f02cfec  addli r5, r30, -2464
00157c  9bb05000  slli r1, r1, 5
001580  73b03200  store.d r[4:5], 0(r5)
001584  9f01dfec  addli r3, r30, -2456
001588  e7421fec  storeli.w r1, -2516(r30)
00158c  9f020000  addli r5, zero, 0
001590  73b07101  store.d r[24:25], 0(r3)
001594  9bb17300  slli r3, r7, 7
001598  0b113118  sub.s r2, r2, r3
00159c  8b11e638  mod.s r3, r12, r14
0015a0  1f160600  addli r12, r12, 1
0015a4  0b118130  div.s r2, r2, r8
0015a8  6744cfec  storeli.w r12, -2492(r30)
0015ac  9b306100  slli r1, r2, 6
0015b0  b3030128  zext_int2long r[8:9], r2
0015b4  e7021fec  storeli.w r1, -2520(r30)
0015b8  9bb0d100  slli r1, r3, 13
0015bc  97b33303  sll.d r[8:9], r[8:9], r19
0015c0  eb518f00  load.d r[4:5], 8(r30)
0015c4  67451fec  storeli.w r1, -2476(r30)
0015c8  9f006fec  addli r1, r30, -2512
0015cc  73b07000  store.d r[8:9], 0(r1)
0015d0  97b0c303  sll.d r[2:3], r[8:9], r28
0015d4  1f040000  addli r8, zero, 0
0015d8  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
0015dc  9f01bfec  addli r3, r30, -2472
0015e0  73b01100  store.d r[2:3], 0(r3)
0015e4  db2f0000  j 380
0015e8  9b110a04  ori r3, r20, 64
0015ec  1d800700  lock zero, r15
0015f0  958a0a00  dma_cfg r21, r21, zero, 0
0015f4  8b913b10  add.s r3, r23, r3
0015f8  15000404  dma_cfg zero, r8, zero, 2
0015fc  95811307  dma_cfg r3, r7, r17, 3
001600  9f011000  addli r3, zero, 8
001604  15835809  dma_cfg r6, r17, r21, 4
001608  1503930b  dma_cfg r6, r6, r25, 5
00160c  15000010  dma_cfg zero, zero, zero, 8
001610  35000000  dma_run zero
001614  1500500b  dma_cfg zero, zero, r21, 5
001618  15000010  dma_cfg zero, zero, zero, 8
00161c  1d900700  unlock r15
001620  1d000700  lock zero, r14
001624  15000014  dma_cfg zero, zero, zero, 10
001628  15005015  dma_cfg zero, zero, r21, 10
00162c  1500b014  dma_cfg zero, zero, r11, 10
001630  15006015  dma_cfg zero, zero, r22, 10
001634  1500f014  dma_cfg zero, zero, r15, 10
001638  1500e014  dma_cfg zero, zero, r14, 10
00163c  15003015  dma_cfg zero, zero, r19, 10
001640  1500d014  dma_cfg zero, zero, r13, 10
001644  9f062000  addli r13, zero, 16
001648  15003014  dma_cfg zero, zero, r3, 10
00164c  9f111000  addli r3, zero, 9
001650  15003014  dma_cfg zero, zero, r3, 10
001654  9f211000  addli r3, zero, 10
001658  15003014  dma_cfg zero, zero, r3, 10
00165c  9f311000  addli r3, zero, 11
001660  15003014  dma_cfg zero, zero, r3, 10
001664  9f411000  addli r3, zero, 12
001668  15003014  dma_cfg zero, zero, r3, 10
00166c  9f511000  addli r3, zero, 13
001670  15003014  dma_cfg zero, zero, r3, 10
001674  9f611000  addli r3, zero, 14
001678  15003014  dma_cfg zero, zero, r3, 10
00167c  9f711000  addli r3, zero, 15
001680  15003014  dma_cfg zero, zero, r3, 10
001684  9f112000  addli r3, zero, 17
001688  15004014  dma_cfg zero, zero, r4, 10
00168c  15003014  dma_cfg zero, zero, r3, 10
001690  9f212000  addli r3, zero, 18
001694  15003014  dma_cfg zero, zero, r3, 10
001698  9f312000  addli r3, zero, 19
00169c  15003014  dma_cfg zero, zero, r3, 10
0016a0  9f412000  addli r3, zero, 20
0016a4  15003014  dma_cfg zero, zero, r3, 10
0016a8  9f512000  addli r3, zero, 21
0016ac  15003014  dma_cfg zero, zero, r3, 10
0016b0  9f612000  addli r3, zero, 22
0016b4  15003014  dma_cfg zero, zero, r3, 10
0016b8  9f712000  addli r3, zero, 23
0016bc  15003014  dma_cfg zero, zero, r3, 10
0016c0  9f013000  addli r3, zero, 24
0016c4  15003014  dma_cfg zero, zero, r3, 10
0016c8  9f113000  addli r3, zero, 25
0016cc  15003014  dma_cfg zero, zero, r3, 10
0016d0  9f213000  addli r3, zero, 26
0016d4  15003014  dma_cfg zero, zero, r3, 10
0016d8  9f313000  addli r3, zero, 27
0016dc  15003014  dma_cfg zero, zero, r3, 10
0016e0  9f413000  addli r3, zero, 28
0016e4  15003014  dma_cfg zero, zero, r3, 10
0016e8  9f513000  addli r3, zero, 29
0016ec  15003014  dma_cfg zero, zero, r3, 10
0016f0  9f613000  addli r3, zero, 30
0016f4  15003014  dma_cfg zero, zero, r3, 10
0016f8  9f713000  addli r3, zero, 31
0016fc  15003014  dma_cfg zero, zero, r3, 10
001700  958a0a00  dma_cfg r21, r21, zero, 0
001704  950a0002  dma_cfg r21, zero, zero, 1
001708  15000004  dma_cfg zero, zero, zero, 2
00170c  15081007  dma_cfg r16, zero, r17, 3
001710  15035009  dma_cfg r6, zero, r21, 4
001714  1503900b  dma_cfg r6, zero, r25, 5
001718  803c0002  core_id r25
00171c  15000010  dma_cfg zero, zero, zero, 8
001720  35000000  dma_run zero
001724  1500500b  dma_cfg zero, zero, r21, 5
001728  15000010  dma_cfg zero, zero, zero, 8
00172c  1d100700  unlock r14
001730  7d800500  xsignal r11, 0
001734  e341fff6  loadli.w r3,  -1156(r30)
001738  63020ffc  loadli.w r4,  -512(r30)
00173c  9f910100  addli r3, r3, 1
001740  1f120200  addli r4, r4, 1
001744  e7473ff6  storeli.w r3, -1156(r30)
001748  67004ffc  storeli.w r4, -512(r30)
00174c  9b011e00  andi r3, r28, 1
001750  37b50102  beq r3, zero, 1356
001754  9f920200  addli r5, r5, 1
001758  1f140000  addli r8, zero, 1
00175c  1f0e0000  addli r28, zero, 0
001760  0b165510  add.s r12, r10, r5
001764  8b915410  add.s r3, r9, r5
001768  9f008001  addli r1, zero, 192
00176c  330d0928  zext_int2long r[27:28], r18
001770  0b186638  mod.s r16, r12, r6
001774  0b921138  mod.s r4, r3, r1
001778  9f910100  addli r3, r3, 1
00177c  b3800828  zext_int2long r[2:3], r17
001780  67473fec  storeli.w r3, -2444(r30)
001784  9f110600  addli r3, r12, 1
001788  e7073ff2  storeli.w r3, -1672(r30)
00178c  9b3bc800  slli r23, r16, 12
001790  9b33c200  slli r7, r4, 12
001794  0b984b11  add.s r16, r23, r20
001798  b7a5bc00  beq r25, r11, 360
00179c  b3010428  zext_int2long r[4:5], r8
0017a0  3bc65c01  bneq r25, r21, 400
0017a4  9f06dfec  addli r13, r30, -2456
0017a8  97b1e102  sll.d r[4:5], r[4:5], r14
0017ac  ebd30600  load.d r[8:9], 0(r13)
0017b0  9f06cfec  addli r13, r30, -2464
0017b4  97917102  or.d r[4:5], r[4:5], r[8:9]
0017b8  ebd30600  load.d r[8:9], 0(r13)
0017bc  9f760000  addli r13, zero, 7
0017c0  7d100b00  xwait r22, 0
0017c4  8bb37118  sub.sl r[8:9], r[4:5], r[8:9]
0017c8  97b15103  sll.d r[4:5], r[4:5], r21
0017cc  8f931360  div.sl r[8:9], r[8:9], r[2:3]
0017d0  0bbca341  min.sl r[25:26], r[8:9], r[27:28]
0017d4  0b3c7c18  sub.sl r[25:26], r[25:26], r[8:9]
0017d8  eb530f00  load.d r[8:9], 0(r30)
0017dc  9f0c4c00  addli r25, r24, 32
0017e0  8ba33310  add.ul r[8:9], r[8:9], r[4:5]
0017e4  1f022000  addli r4, zero, 16
0017e8  9f71f000  addli r3, zero, 127
0017ec  bff7c1fe  blt.s r3, r12, -516
0017f0  1d000700  lock zero, r14
0017f4  9f011000  addli r3, zero, 8
0017f8  15000014  dma_cfg zero, zero, zero, 10
0017fc  15005015  dma_cfg zero, zero, r21, 10
001800  1500b014  dma_cfg zero, zero, r11, 10
001804  15006015  dma_cfg zero, zero, r22, 10
001808  1500f014  dma_cfg zero, zero, r15, 10
00180c  1500e014  dma_cfg zero, zero, r14, 10
001810  15003015  dma_cfg zero, zero, r19, 10
001814  1500d014  dma_cfg zero, zero, r13, 10
001818  15003014  dma_cfg zero, zero, r3, 10
00181c  9f111000  addli r3, zero, 9
001820  15003014  dma_cfg zero, zero, r3, 10
001824  9f211000  addli r3, zero, 10
001828  15003014  dma_cfg zero, zero, r3, 10
00182c  9f311000  addli r3, zero, 11
001830  15003014  dma_cfg zero, zero, r3, 10
001834  9f411000  addli r3, zero, 12
001838  15003014  dma_cfg zero, zero, r3, 10
00183c  9f511000  addli r3, zero, 13
001840  15003014  dma_cfg zero, zero, r3, 10
001844  9f611000  addli r3, zero, 14
001848  15003014  dma_cfg zero, zero, r3, 10
00184c  9f711000  addli r3, zero, 15
001850  15003014  dma_cfg zero, zero, r3, 10
001854  9f112000  addli r3, zero, 17
001858  15004014  dma_cfg zero, zero, r4, 10
00185c  15003014  dma_cfg zero, zero, r3, 10
001860  9f212000  addli r3, zero, 18
001864  15003014  dma_cfg zero, zero, r3, 10
001868  9f312000  addli r3, zero, 19
00186c  15003014  dma_cfg zero, zero, r3, 10
001870  9f412000  addli r3, zero, 20
001874  15003014  dma_cfg zero, zero, r3, 10
001878  9f512000  addli r3, zero, 21
00187c  15003014  dma_cfg zero, zero, r3, 10
001880  9f612000  addli r3, zero, 22
001884  15003014  dma_cfg zero, zero, r3, 10
001888  9f712000  addli r3, zero, 23
00188c  15003014  dma_cfg zero, zero, r3, 10
001890  9f013000  addli r3, zero, 24
001894  15003014  dma_cfg zero, zero, r3, 10
001898  9f113000  addli r3, zero, 25
00189c  15003014  dma_cfg zero, zero, r3, 10
0018a0  9f213000  addli r3, zero, 26
0018a4  15003014  dma_cfg zero, zero, r3, 10
0018a8  9f313000  addli r3, zero, 27
0018ac  15003014  dma_cfg zero, zero, r3, 10
0018b0  9f413000  addli r3, zero, 28
0018b4  15003014  dma_cfg zero, zero, r3, 10
0018b8  9f513000  addli r3, zero, 29
0018bc  15003014  dma_cfg zero, zero, r3, 10
0018c0  9f613000  addli r3, zero, 30
0018c4  15003014  dma_cfg zero, zero, r3, 10
0018c8  9f713000  addli r3, zero, 31
0018cc  15003014  dma_cfg zero, zero, r3, 10
0018d0  958a0a00  dma_cfg r21, r21, zero, 0
0018d4  950a0002  dma_cfg r21, zero, zero, 1
0018d8  15000004  dma_cfg zero, zero, zero, 2
0018dc  15081007  dma_cfg r16, zero, r17, 3
0018e0  15035009  dma_cfg r6, zero, r21, 4
0018e4  1503200b  dma_cfg r6, zero, r18, 5
0018e8  15000010  dma_cfg zero, zero, zero, 8
0018ec  35000000  dma_run zero
0018f0  1500500b  dma_cfg zero, zero, r21, 5
0018f4  15000010  dma_cfg zero, zero, zero, 8
0018f8  1d100700  unlock r14
0018fc  db9dffff  j -788
001900  7d900500  xwait r11, 0
001904  7d100700  xwait r14, 0
001908  1d000000  lock zero, zero
00190c  81050000  ds_cfg r11, zero, 0
001910  01090002  ds_cfg r18, zero, 1
001914  0109001c  ds_cfg r18, zero, 14
001918  0109001a  ds_cfg r18, zero, 13
00191c  a1132803  shuffle_batch r7, r16, r18, 1
001920  1d100000  unlock zero
001924  7d000b00  xsignal r22, 0
001928  7d800700  xsignal r15, 0
00192c  5bc1ffff  j -504
001930  63060ffc  loadli.w r12,  -512(r30)
001934  6344fff6  loadli.w r8,  -1156(r30)
001938  1f084001  addli r16, zero, 160
00193c  9f7bf000  addli r23, zero, 127
001940  8b1b7639  mod.s r23, r12, r23
001944  0b180439  mod.s r16, r8, r16
001948  1f140400  addli r8, r8, 1
00194c  1f1c0600  addli r24, r12, 1
001950  e7478ff6  storeli.w r8, -1156(r30)
001954  67008ffd  storeli.w r24, -512(r30)
001958  1f7c0000  addli r24, zero, 7
00195c  1b34d800  slli r8, r16, 13
001960  9bbbdb00  slli r23, r23, 13
001964  2ba80800  lui r16, 138
001968  0b980b11  add.s r16, r23, r16
00196c  37fa8c01  beq r25, r24, 668
001970  3bcb3c01  bneq r25, r19, 720
001974  9f032000  addli r7, zero, 16
001978  9f06bfec  addli r13, r30, -2472
00197c  97b17102  sll.d r[4:5], r[4:5], r7
001980  ebd30600  load.d r[8:9], 0(r13)
001984  7d100c00  xwait r24, 0
001988  8ba33310  add.ul r[8:9], r[8:9], r[4:5]
00198c  1f022000  addli r4, zero, 16
001990  9f61f000  addli r3, zero, 126
001994  3fd4c100  blt.s r3, r12, 276
001998  1d000700  lock zero, r14
00199c  9f011000  addli r3, zero, 8
0019a0  15000014  dma_cfg zero, zero, zero, 10
0019a4  15005015  dma_cfg zero, zero, r21, 10
0019a8  1500b014  dma_cfg zero, zero, r11, 10
0019ac  15006015  dma_cfg zero, zero, r22, 10
0019b0  1500f014  dma_cfg zero, zero, r15, 10
0019b4  1500e014  dma_cfg zero, zero, r14, 10
0019b8  15003015  dma_cfg zero, zero, r19, 10
0019bc  15008015  dma_cfg zero, zero, r24, 10
0019c0  15003014  dma_cfg zero, zero, r3, 10
0019c4  9f111000  addli r3, zero, 9
0019c8  15003014  dma_cfg zero, zero, r3, 10
0019cc  9f211000  addli r3, zero, 10
0019d0  15003014  dma_cfg zero, zero, r3, 10
0019d4  9f311000  addli r3, zero, 11
0019d8  15003014  dma_cfg zero, zero, r3, 10
0019dc  9f411000  addli r3, zero, 12
0019e0  15003014  dma_cfg zero, zero, r3, 10
0019e4  9f511000  addli r3, zero, 13
0019e8  15003014  dma_cfg zero, zero, r3, 10
0019ec  9f611000  addli r3, zero, 14
0019f0  15003014  dma_cfg zero, zero, r3, 10
0019f4  9f711000  addli r3, zero, 15
0019f8  15003014  dma_cfg zero, zero, r3, 10
0019fc  9f112000  addli r3, zero, 17
001a00  15004014  dma_cfg zero, zero, r4, 10
001a04  15003014  dma_cfg zero, zero, r3, 10
001a08  9f212000  addli r3, zero, 18
001a0c  15003014  dma_cfg zero, zero, r3, 10
001a10  9f312000  addli r3, zero, 19
001a14  15003014  dma_cfg zero, zero, r3, 10
001a18  9f412000  addli r3, zero, 20
001a1c  15003014  dma_cfg zero, zero, r3, 10
001a20  9f512000  addli r3, zero, 21
001a24  15003014  dma_cfg zero, zero, r3, 10
001a28  9f612000  addli r3, zero, 22
001a2c  15003014  dma_cfg zero, zero, r3, 10
001a30  9f712000  addli r3, zero, 23
001a34  15003014  dma_cfg zero, zero, r3, 10
001a38  9f013000  addli r3, zero, 24
001a3c  15003014  dma_cfg zero, zero, r3, 10
001a40  9f113000  addli r3, zero, 25
001a44  15003014  dma_cfg zero, zero, r3, 10
001a48  9f213000  addli r3, zero, 26
001a4c  15003014  dma_cfg zero, zero, r3, 10
001a50  9f313000  addli r3, zero, 27
001a54  15003014  dma_cfg zero, zero, r3, 10
001a58  9f413000  addli r3, zero, 28
001a5c  15003014  dma_cfg zero, zero, r3, 10
001a60  9f513000  addli r3, zero, 29
001a64  15003014  dma_cfg zero, zero, r3, 10
001a68  9f613000  addli r3, zero, 30
001a6c  15003014  dma_cfg zero, zero, r3, 10
001a70  9f713000  addli r3, zero, 31
001a74  15003014  dma_cfg zero, zero, r3, 10
001a78  9f010002  addli r3, zero, 256
001a7c  958a0a00  dma_cfg r21, r21, zero, 0
001a80  950a0002  dma_cfg r21, zero, zero, 1
001a84  15000004  dma_cfg zero, zero, zero, 2
001a88  15081007  dma_cfg r16, zero, r17, 3
001a8c  1503b008  dma_cfg r6, zero, r11, 4
001a90  9501200b  dma_cfg r3, zero, r18, 5
001a94  15000010  dma_cfg zero, zero, zero, 8
001a98  35000000  dma_run zero
001a9c  1500500b  dma_cfg zero, zero, r21, 5
001aa0  15000010  dma_cfg zero, zero, zero, 8
001aa4  1d100700  unlock r14
001aa8  aba10800  lui r3, 138
001aac  1d800700  lock zero, r15
001ab0  9f062000  addli r13, zero, 16
001ab4  9f690000  addli r19, zero, 6
001ab8  958a0a00  dma_cfg r21, r21, zero, 0
001abc  9b910104  ori r3, r3, 64
001ac0  15000404  dma_cfg zero, r8, zero, 2
001ac4  8b913b10  add.s r3, r23, r3
001ac8  95811307  dma_cfg r3, r7, r17, 3
001acc  1f040002  addli r8, zero, 256
001ad0  9f010010  addli r3, zero, 2048
001ad4  9f630000  addli r7, zero, 6
001ad8  1583b808  dma_cfg r6, r17, r11, 4
001adc  1584210b  dma_cfg r8, r3, r18, 5
001ae0  9f011000  addli r3, zero, 8
001ae4  15000010  dma_cfg zero, zero, zero, 8
001ae8  35000000  dma_run zero
001aec  1500500b  dma_cfg zero, zero, r21, 5
001af0  15000010  dma_cfg zero, zero, zero, 8
001af4  1d900700  unlock r15
001af8  1d000700  lock zero, r14
001afc  15000014  dma_cfg zero, zero, zero, 10
001b00  15005015  dma_cfg zero, zero, r21, 10
001b04  1500b014  dma_cfg zero, zero, r11, 10
001b08  15006015  dma_cfg zero, zero, r22, 10
001b0c  1500f014  dma_cfg zero, zero, r15, 10
001b10  1500e014  dma_cfg zero, zero, r14, 10
001b14  15007014  dma_cfg zero, zero, r7, 10
001b18  15008015  dma_cfg zero, zero, r24, 10
001b1c  15003014  dma_cfg zero, zero, r3, 10
001b20  9f111000  addli r3, zero, 9
001b24  15003014  dma_cfg zero, zero, r3, 10
001b28  9f211000  addli r3, zero, 10
001b2c  15003014  dma_cfg zero, zero, r3, 10
001b30  9f311000  addli r3, zero, 11
001b34  15003014  dma_cfg zero, zero, r3, 10
001b38  9f411000  addli r3, zero, 12
001b3c  15003014  dma_cfg zero, zero, r3, 10
001b40  9f511000  addli r3, zero, 13
001b44  15003014  dma_cfg zero, zero, r3, 10
001b48  9f611000  addli r3, zero, 14
001b4c  15003014  dma_cfg zero, zero, r3, 10
001b50  9f711000  addli r3, zero, 15
001b54  15003014  dma_cfg zero, zero, r3, 10
001b58  9f112000  addli r3, zero, 17
001b5c  15004014  dma_cfg zero, zero, r4, 10
001b60  15003014  dma_cfg zero, zero, r3, 10
001b64  9f212000  addli r3, zero, 18
001b68  15003014  dma_cfg zero, zero, r3, 10
001b6c  9f312000  addli r3, zero, 19
001b70  15003014  dma_cfg zero, zero, r3, 10
001b74  9f412000  addli r3, zero, 20
001b78  15003014  dma_cfg zero, zero, r3, 10
001b7c  9f512000  addli r3, zero, 21
001b80  15003014  dma_cfg zero, zero, r3, 10
001b84  9f612000  addli r3, zero, 22
001b88  15003014  dma_cfg zero, zero, r3, 10
001b8c  9f712000  addli r3, zero, 23
001b90  15003014  dma_cfg zero, zero, r3, 10
001b94  9f013000  addli r3, zero, 24
001b98  15003014  dma_cfg zero, zero, r3, 10
001b9c  9f113000  addli r3, zero, 25
001ba0  15003014  dma_cfg zero, zero, r3, 10
001ba4  9f213000  addli r3, zero, 26
001ba8  15003014  dma_cfg zero, zero, r3, 10
001bac  9f313000  addli r3, zero, 27
001bb0  15003014  dma_cfg zero, zero, r3, 10
001bb4  9f413000  addli r3, zero, 28
001bb8  15003014  dma_cfg zero, zero, r3, 10
001bbc  9f513000  addli r3, zero, 29
001bc0  15003014  dma_cfg zero, zero, r3, 10
001bc4  9f613000  addli r3, zero, 30
001bc8  15003014  dma_cfg zero, zero, r3, 10
001bcc  9f713000  addli r3, zero, 31
001bd0  15003014  dma_cfg zero, zero, r3, 10
001bd4  958a0a00  dma_cfg r21, r21, zero, 0
001bd8  950a0002  dma_cfg r21, zero, zero, 1
001bdc  15000004  dma_cfg zero, zero, zero, 2
001be0  15081007  dma_cfg r16, zero, r17, 3
001be4  1503b008  dma_cfg r6, zero, r11, 4
001be8  1504200b  dma_cfg r8, zero, r18, 5
001bec  15000010  dma_cfg zero, zero, zero, 8
001bf0  35000000  dma_run zero
001bf4  1500500b  dma_cfg zero, zero, r21, 5
001bf8  15000010  dma_cfg zero, zero, zero, 8
001bfc  1d100700  unlock r14
001c00  7d800300  xsignal r7, 0
001c04  5b69ffff  j -1208
001c08  9f111000  addli r3, zero, 9
001c0c  7d900900  xwait r19, 0
001c10  7d900100  xwait r3, 0
001c14  1d000000  lock zero, zero
001c18  9f011000  addli r3, zero, 8
001c1c  81050000  ds_cfg r11, zero, 0
001c20  81080002  ds_cfg r17, zero, 1
001c24  0109001c  ds_cfg r18, zero, 14
001c28  8108001a  ds_cfg r17, zero, 13
001c2c  41042805  shuffle_coa r8, r16, r18, 2
001c30  1d100000  unlock zero
001c34  7d000c00  xsignal r24, 0
001c38  7d800100  xsignal r3, 0
001c3c  5b62ffff  j -1264
001c40  bbb0fc00  bneq r25, r15, 44
001c44  9f001000  addli r1, zero, 8
001c48  7d900700  xwait r15, 0
001c4c  7d900000  xwait r1, 0
001c50  1d800a00  lock zero, r21
001c54  89082901  mm_cfg r17, r18, r18, 0
001c58  89855505  mm_cfg r11, r11, r21, 2
001c5c  37f00200  beq r5, zero, 28
001c60  e340afec  loadli.w r1,  -2476(r30)
001c64  a9908310  mm_acc r1, r7, r8, 8
001c68  5b030000  j 24
001c6c  9b011e00  andi r3, r28, 1
001c70  bb9b01fc  bneq r3, zero, -1308
001c74  db050000  j 44
001c78  e340afec  loadli.w r1,  -2476(r30)
001c7c  a9808310  mm r1, r7, r8, 8
001c80  9b001e00  andi r1, r28, 1
001c84  1f111000  addli r2, zero, 9
001c88  1d900a00  unlock r21
001c8c  7d000700  xsignal r14, 0
001c90  7d000100  xsignal r2, 0
001c94  3b8b00fc  bneq r1, zero, -1344
001c98  db07ffff  j -1988
001c9c  b7e0fcfc  beq r25, r15, -1992
001ca0  bbf00cfc  bneq r25, zero, -1988
001ca4  e3015fec  loadli.w r3,  -2520(r30)
001ca8  9f028007  addli r5, zero, 960
001cac  eb5b0f01  load.d r[24:25], 16(r30)
001cb0  b3830228  zext_int2long r[8:9], r5
001cb4  e3425fec  loadli.w r5,  -2516(r30)
001cb8  b3810128  zext_int2long r[4:5], r3
001cbc  8ba37140  min.ul r[8:9], r[4:5], r[8:9]
001cc0  b3940228  sext_int2long r[10:11], r5
001cc4  9f027fec  addli r5, r30, -2504
001cc8  a7838300  addli.d r[8:9], r[8:9], 64
001ccc  8ba33348  max.ul r[8:9], r[8:9], r[4:5]
001cd0  8bb13318  sub.sl r[4:5], r[8:9], r[4:5]
001cd4  8bb3a441  min.sl r[8:9], r[10:11], r[27:28]
001cd8  8ba01140  min.ul r[2:3], r[4:5], r[2:3]
001cdc  a7814300  addli.d r[4:5], r[8:9], 32
001ce0  ebd30200  load.d r[8:9], 0(r5)
001ce4  9f026fec  addli r5, r30, -2512
001ce8  8bb19148  max.sl r[4:5], r[4:5], r[10:11]
001cec  97b3d302  sll.d r[8:9], r[8:9], r13
001cf0  8bb19118  sub.sl r[4:5], r[4:5], r[10:11]
001cf4  8ba37b10  add.ul r[8:9], r[24:25], r[8:9]
001cf8  ebdb0200  load.d r[24:25], 0(r5)
001cfc  9f221000  addli r5, zero, 10
001d00  8bb1a141  min.sl r[4:5], r[4:5], r[27:28]
001d04  7d900200  xwait r5, 0
001d08  1d000700  lock zero, r14
001d0c  958a0a00  dma_cfg r21, r21, zero, 0
001d10  97bb5b03  sll.d r[24:25], r[24:25], r21
001d14  15800a02  dma_cfg zero, r21, zero, 1
001d18  e342afec  loadli.w r5,  -2476(r30)
001d1c  8ba37311  add.ul r[8:9], r[8:9], r[24:25]
001d20  15040004  dma_cfg r8, zero, zero, 2
001d24  9b920204  ori r5, r5, 64
001d28  95831207  dma_cfg r7, r5, r17, 3
001d2c  9ff23000  addli r5, r1, 31
001d30  9bb01000  slli r1, r1, 1
001d34  1f010002  addli r2, zero, 256
001d38  9bc25200  srli r5, r5, 5
001d3c  9b80e003  andi r1, r1, 62
001d40  95085308  dma_cfg r17, r6, r5, 4
001d44  9f020010  addli r5, zero, 2048
001d48  9502310a  dma_cfg r5, r2, r3, 5
001d4c  15001010  dma_cfg zero, zero, r1, 8
001d50  35000000  dma_run zero
001d54  1500500b  dma_cfg zero, zero, r21, 5
001d58  9f301000  addli r1, zero, 11
001d5c  15000010  dma_cfg zero, zero, zero, 8
001d60  1d100700  unlock r14
001d64  dbeefeff  j -2188
001d68  7d000000  xsignal zero, 0
001d6c  bbe00c00  bneq r25, zero, 56
001d70  9f200000  addli r1, zero, 2
001d74  7d100000  xwait zero, 0
001d78  7d100000  xwait zero, 0
001d7c  7d100000  xwait zero, 0
001d80  7d100000  xwait zero, 0
001d84  7d100000  xwait zero, 0
001d88  7d100000  xwait zero, 0
001d8c  7d100000  xwait zero, 0
001d90  7d100000  xwait zero, 0
001d94  1d800000  lock zero, r1
001d98  0d000020  ew_cfg zero, zero, zero, 16
001d9c  1d900000  unlock r1
001da0  7d400000  xsignal_mode_cfg zero
001da4  9f8ede13  addli sp, sp, 2536
001da8  00a00300  mfence { lm, sm, gm }
001dac  00100000  exit
001db0  00100000  exit
001db4  00100000  exit
001db8  00100000  exit
001dbc  00100000  exit
001dc0  00100000  exit
001dc4  00100000  exit
001dc8  00100000  exit
001dcc  00100000  exit
001dd0  00100000  exit
001dd4  00100000  exit
001dd8  00100000  exit
001ddc  00100000  exit
001de0  00100000  exit
001de4  00100000  exit
001de8  00100000  exit
001dec  00100000  exit
001df0  00100000  exit
001df4  00100000  exit
001df8  00100000  exit
001dfc  00100000  exit
001e00  00100000  exit
001e04  00100000  exit
001e08  00100000  exit
001e0c  00100000  exit
001e10  00100000  exit
001e14  00100000  exit
001e18  00100000  exit
001e1c  00100000  exit
001e20  00100000  exit
001e24  00100000  exit
001e28  00100000  exit
001e2c  00100000  exit
001e30  00100000  exit
001e34  00100000  exit
001e38  00100000  exit
001e3c  00100000  exit
001e40  00100000  exit
001e44  00100000  exit
001e48  00100000  exit
001e4c  00100000  exit
001e50  00100000  exit
001e54  00100000  exit
001e58  00100000  exit
001e5c  00100000  exit
001e60  00100000  exit
001e64  00100000  exit
001e68  00100000  exit
001e6c  00100000  exit
001e70  00100000  exit
001e74  00100000  exit
001e78  00100000  exit
001e7c  00100000  exit
001e80  00100000  exit
001e84  00100000  exit
001e88  00100000  exit
001e8c  00100000  exit
001e90  00100000  exit
001e94  00100000  exit
001e98  00100000  exit
001e9c  00100000  exit
001ea0  00100000  exit
001ea4  00100000  exit
001ea8  00100000  exit
001eac  00100000  exit
001eb0  00100000  exit
001eb4  00100000  exit
001eb8  00100000  exit
001ebc  00100000  exit
001ec0  00100000  exit
001ec4  00100000  exit
001ec8  00100000  exit
001ecc  00100000  exit
001ed0  00100000  exit
001ed4  00100000  exit
001ed8  00100000  exit
001edc  00100000  exit
001ee0  00100000  exit
001ee4  00100000  exit
001ee8  00100000  exit
001eec  00100000  exit
001ef0  00100000  exit
001ef4  00100000  exit
001ef8  00100000  exit
001efc  00100000  exit
001f00  00100000  exit
001f04  00100000  exit
001f08  00100000  exit
001f0c  00100000  exit
001f10  00100000  exit
001f14  00100000  exit
001f18  00100000  exit
001f1c  00100000  exit
001f20  00100000  exit
001f24  00100000  exit
001f28  00100000  exit
001f2c  00100000  exit
001f30  00100000  exit
001f34  00100000  exit
001f38  00100000  exit
001f3c  00100000  exit
001f40  00100000  exit
001f44  00100000  exit
001f48  00100000  exit
001f4c  00100000  exit
001f50  00100000  exit
001f54  00100000  exit
001f58  00100000  exit
001f5c  00100000  exit
001f60  00100000  exit
001f64  00100000  exit
001f68  00100000  exit
001f6c  00100000  exit
001f70  00100000  exit
001f74  00100000  exit
001f78  00100000  exit
001f7c  00100000  exit
001f80  00100000  exit
001f84  00100000  exit
001f88  00100000  exit
001f8c  00100000  exit
001f90  00100000  exit
001f94  00100000  exit
001f98  00100000  exit
001f9c  00100000  exit
001fa0  00100000  exit
001fa4  00100000  exit
001fa8  00100000  exit
001fac  00100000  exit
001fb0  00100000  exit
001fb4  00100000  exit
001fb8  00100000  exit
001fbc  00100000  exit
001fc0  00100000  exit
001fc4  00100000  exit
001fc8  00100000  exit
001fcc  00100000  exit
001fd0  00100000  exit
001fd4  00100000  exit
001fd8  00100000  exit
001fdc  00100000  exit
001fe0  00100000  exit
001fe4  00100000  exit
001fe8  00100000  exit
001fec  00100000  exit
