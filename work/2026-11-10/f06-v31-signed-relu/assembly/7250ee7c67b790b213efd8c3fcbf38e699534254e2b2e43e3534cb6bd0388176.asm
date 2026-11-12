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
0000b4  9f8eeeeb  addli sp, sp, -2576
0000b8  9f100000  addli r1, zero, 1
0000bc  80380002  core_id r17
0000c0  1f8fae13  addli r30, sp, 2512
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00800  beq r17, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b390100  j 2504
0000e0  1f210000  addli r2, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  abf1ffff  lui r3, 1048575
0000ec  1d000100  lock zero, r2
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b90f1ff  ori r1, r3, 4095
0000f8  1d100100  unlock r2
0000fc  1f311000  addli r2, zero, 11
000100  80a10004  csr_set csr3, r1
000104  9f501000  addli r1, zero, 13
000108  00d00100  sync_group
00010c  7d800000  xsignal r1, 0
000110  7d800000  xsignal r1, 0
000114  7d800000  xsignal r1, 0
000118  7d800000  xsignal r1, 0
00011c  7d800000  xsignal r1, 0
000120  7d000100  xsignal r2, 0
000124  7d000100  xsignal r2, 0
000128  7d000100  xsignal r2, 0
00012c  7d000100  xsignal r2, 0
000130  7d000100  xsignal r2, 0
000134  9f500000  addli r1, zero, 5
000138  1f310000  addli r2, zero, 3
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
000424  7d800000  xsignal r1, 0
000428  7d800000  xsignal r1, 0
00042c  7d800000  xsignal r1, 0
000430  7d800000  xsignal r1, 0
000434  7d800000  xsignal r1, 0
000438  7d800000  xsignal r1, 0
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
000628  7d000100  xsignal r2, 0
00062c  9f101000  addli r1, zero, 9
000630  1f710000  addli r2, zero, 7
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
0008ac  7d800000  xsignal r1, 0
0008b0  7d800000  xsignal r1, 0
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
000aa4  e3003f00  loadli.w r1,  24(r30)
000aa8  63413f00  loadli.w r2,  28(r30)
000aac  00d20002  load_param_i r4, 1
000ab0  e3014f00  loadli.w r3,  32(r30)
000ab4  2bf3ffff  lui r6, 1048575
000ab8  1f046fec  addli r8, r30, -2512
000abc  e7400ffc  storeli.w zero, -500(r30)
000ac0  e7080ff6  storeli.w zero, -1144(r30)
000ac4  67490ff2  storeli.w zero, -1644(r30)
000ac8  67090fec  storeli.w zero, -2416(r30)
000acc  8b101120  mul.s r1, r2, r1
000ad0  1f010200  addli r2, r4, 0
000ad4  0b913050  fmac.s r2, r1, r3
000ad8  8b913020  mul.s r3, r1, r3
000adc  1f71f1ff  addli r2, r2, -1
000ae0  0b114130  div.s r2, r2, r4
000ae4  00520002  load_param_i r4, 0
000ae8  8b104120  mul.s r1, r2, r4
000aec  0b114150  fmac.s r2, r2, r4
000af0  2bf2ffff  lui r4, 1048575
000af4  73304400  store.d r[5:6], 0(r8)
000af8  1b12f3ff  ori r4, r6, 4095
000afc  8b113140  min.s r3, r2, r3
000b00  67014ffc  storeli.w r4, -496(r30)
000b04  67414ffc  storeli.w r4, -492(r30)
000b08  e7014ffc  storeli.w r4, -488(r30)
000b0c  e7414ffc  storeli.w r4, -484(r30)
000b10  67024ffc  storeli.w r4, -480(r30)
000b14  67424ffc  storeli.w r4, -476(r30)
000b18  e7024ffc  storeli.w r4, -472(r30)
000b1c  e7424ffc  storeli.w r4, -468(r30)
000b20  67034ffc  storeli.w r4, -464(r30)
000b24  67434ffc  storeli.w r4, -460(r30)
000b28  e7034ffc  storeli.w r4, -456(r30)
000b2c  e7434ffc  storeli.w r4, -452(r30)
000b30  67044ffc  storeli.w r4, -448(r30)
000b34  67444ffc  storeli.w r4, -444(r30)
000b38  e7044ffc  storeli.w r4, -440(r30)
000b3c  e7444ffc  storeli.w r4, -436(r30)
000b40  67054ffc  storeli.w r4, -432(r30)
000b44  67454ffc  storeli.w r4, -428(r30)
000b48  e7054ffc  storeli.w r4, -424(r30)
000b4c  e7454ffc  storeli.w r4, -420(r30)
000b50  67064ffc  storeli.w r4, -416(r30)
000b54  67464ffc  storeli.w r4, -412(r30)
000b58  e7064ffc  storeli.w r4, -408(r30)
000b5c  e7464ffc  storeli.w r4, -404(r30)
000b60  67074ffc  storeli.w r4, -400(r30)
000b64  67474ffc  storeli.w r4, -396(r30)
000b68  e7074ffc  storeli.w r4, -392(r30)
000b6c  e7474ffc  storeli.w r4, -388(r30)
000b70  67084ffc  storeli.w r4, -384(r30)
000b74  67484ffc  storeli.w r4, -380(r30)
000b78  e7084ffc  storeli.w r4, -376(r30)
000b7c  e7484ffc  storeli.w r4, -372(r30)
000b80  67094ffc  storeli.w r4, -368(r30)
000b84  67494ffc  storeli.w r4, -364(r30)
000b88  e7094ffc  storeli.w r4, -360(r30)
000b8c  e7494ffc  storeli.w r4, -356(r30)
000b90  670a4ffc  storeli.w r4, -352(r30)
000b94  674a4ffc  storeli.w r4, -348(r30)
000b98  e70a4ffc  storeli.w r4, -344(r30)
000b9c  e74a4ffc  storeli.w r4, -340(r30)
000ba0  670b4ffc  storeli.w r4, -336(r30)
000ba4  674b4ffc  storeli.w r4, -332(r30)
000ba8  e70b4ffc  storeli.w r4, -328(r30)
000bac  e74b4ffc  storeli.w r4, -324(r30)
000bb0  670c4ffc  storeli.w r4, -320(r30)
000bb4  674c4ffc  storeli.w r4, -316(r30)
000bb8  e70c4ffc  storeli.w r4, -312(r30)
000bbc  e74c4ffc  storeli.w r4, -308(r30)
000bc0  670d4ffc  storeli.w r4, -304(r30)
000bc4  674d4ffc  storeli.w r4, -300(r30)
000bc8  e70d4ffc  storeli.w r4, -296(r30)
000bcc  e74d4ffc  storeli.w r4, -292(r30)
000bd0  670e4ffc  storeli.w r4, -288(r30)
000bd4  674e4ffc  storeli.w r4, -284(r30)
000bd8  e70e4ffc  storeli.w r4, -280(r30)
000bdc  e74e4ffc  storeli.w r4, -276(r30)
000be0  670f4ffc  storeli.w r4, -272(r30)
000be4  674f4ffc  storeli.w r4, -268(r30)
000be8  e70f4ffc  storeli.w r4, -264(r30)
000bec  e74f4ffc  storeli.w r4, -260(r30)
000bf0  67004ffe  storeli.w r4, -256(r30)
000bf4  67404ffe  storeli.w r4, -252(r30)
000bf8  e7004ffe  storeli.w r4, -248(r30)
000bfc  e7404ffe  storeli.w r4, -244(r30)
000c00  67014ffe  storeli.w r4, -240(r30)
000c04  67414ffe  storeli.w r4, -236(r30)
000c08  e7014ffe  storeli.w r4, -232(r30)
000c0c  e7414ffe  storeli.w r4, -228(r30)
000c10  67024ffe  storeli.w r4, -224(r30)
000c14  67424ffe  storeli.w r4, -220(r30)
000c18  e7024ffe  storeli.w r4, -216(r30)
000c1c  e7424ffe  storeli.w r4, -212(r30)
000c20  67034ffe  storeli.w r4, -208(r30)
000c24  67434ffe  storeli.w r4, -204(r30)
000c28  e7034ffe  storeli.w r4, -200(r30)
000c2c  e7434ffe  storeli.w r4, -196(r30)
000c30  67044ffe  storeli.w r4, -192(r30)
000c34  67444ffe  storeli.w r4, -188(r30)
000c38  e7044ffe  storeli.w r4, -184(r30)
000c3c  e7444ffe  storeli.w r4, -180(r30)
000c40  67054ffe  storeli.w r4, -176(r30)
000c44  67454ffe  storeli.w r4, -172(r30)
000c48  e7054ffe  storeli.w r4, -168(r30)
000c4c  e7454ffe  storeli.w r4, -164(r30)
000c50  67064ffe  storeli.w r4, -160(r30)
000c54  67464ffe  storeli.w r4, -156(r30)
000c58  e7064ffe  storeli.w r4, -152(r30)
000c5c  e7464ffe  storeli.w r4, -148(r30)
000c60  67074ffe  storeli.w r4, -144(r30)
000c64  67474ffe  storeli.w r4, -140(r30)
000c68  e7074ffe  storeli.w r4, -136(r30)
000c6c  e7474ffe  storeli.w r4, -132(r30)
000c70  67084ffe  storeli.w r4, -128(r30)
000c74  67484ffe  storeli.w r4, -124(r30)
000c78  e7084ffe  storeli.w r4, -120(r30)
000c7c  e7484ffe  storeli.w r4, -116(r30)
000c80  67094ffe  storeli.w r4, -112(r30)
000c84  67494ffe  storeli.w r4, -108(r30)
000c88  e7094ffe  storeli.w r4, -104(r30)
000c8c  e7494ffe  storeli.w r4, -100(r30)
000c90  670a4ffe  storeli.w r4, -96(r30)
000c94  674a4ffe  storeli.w r4, -92(r30)
000c98  e70a4ffe  storeli.w r4, -88(r30)
000c9c  e74a4ffe  storeli.w r4, -84(r30)
000ca0  670b4ffe  storeli.w r4, -80(r30)
000ca4  674b4ffe  storeli.w r4, -76(r30)
000ca8  e70b4ffe  storeli.w r4, -72(r30)
000cac  e74b4ffe  storeli.w r4, -68(r30)
000cb0  670c4ffe  storeli.w r4, -64(r30)
000cb4  674c4ffe  storeli.w r4, -60(r30)
000cb8  e70c4ffe  storeli.w r4, -56(r30)
000cbc  e74c4ffe  storeli.w r4, -52(r30)
000cc0  670d4ffe  storeli.w r4, -48(r30)
000cc4  674d4ffe  storeli.w r4, -44(r30)
000cc8  e70d4ffe  storeli.w r4, -40(r30)
000ccc  e74d4ffe  storeli.w r4, -36(r30)
000cd0  670e4ffe  storeli.w r4, -32(r30)
000cd4  674e4ffe  storeli.w r4, -28(r30)
000cd8  e70e4ffe  storeli.w r4, -24(r30)
000cdc  e74e4ffe  storeli.w r4, -20(r30)
000ce0  670f4ffe  storeli.w r4, -16(r30)
000ce4  674f4ffe  storeli.w r4, -12(r30)
000ce8  e70f4ffe  storeli.w r4, -8(r30)
000cec  e74f4ffe  storeli.w r4, -4(r30)
000cf0  e7484ff6  storeli.w r4, -1140(r30)
000cf4  67094ff6  storeli.w r4, -1136(r30)
000cf8  67494ff6  storeli.w r4, -1132(r30)
000cfc  e7094ff6  storeli.w r4, -1128(r30)
000d00  e7494ff6  storeli.w r4, -1124(r30)
000d04  670a4ff6  storeli.w r4, -1120(r30)
000d08  674a4ff6  storeli.w r4, -1116(r30)
000d0c  e70a4ff6  storeli.w r4, -1112(r30)
000d10  e74a4ff6  storeli.w r4, -1108(r30)
000d14  670b4ff6  storeli.w r4, -1104(r30)
000d18  674b4ff6  storeli.w r4, -1100(r30)
000d1c  e70b4ff6  storeli.w r4, -1096(r30)
000d20  e74b4ff6  storeli.w r4, -1092(r30)
000d24  670c4ff6  storeli.w r4, -1088(r30)
000d28  674c4ff6  storeli.w r4, -1084(r30)
000d2c  e70c4ff6  storeli.w r4, -1080(r30)
000d30  e74c4ff6  storeli.w r4, -1076(r30)
000d34  670d4ff6  storeli.w r4, -1072(r30)
000d38  674d4ff6  storeli.w r4, -1068(r30)
000d3c  e70d4ff6  storeli.w r4, -1064(r30)
000d40  e74d4ff6  storeli.w r4, -1060(r30)
000d44  670e4ff6  storeli.w r4, -1056(r30)
000d48  674e4ff6  storeli.w r4, -1052(r30)
000d4c  e70e4ff6  storeli.w r4, -1048(r30)
000d50  e74e4ff6  storeli.w r4, -1044(r30)
000d54  670f4ff6  storeli.w r4, -1040(r30)
000d58  674f4ff6  storeli.w r4, -1036(r30)
000d5c  e70f4ff6  storeli.w r4, -1032(r30)
000d60  e74f4ff6  storeli.w r4, -1028(r30)
000d64  67004ff8  storeli.w r4, -1024(r30)
000d68  67404ff8  storeli.w r4, -1020(r30)
000d6c  e7004ff8  storeli.w r4, -1016(r30)
000d70  e7404ff8  storeli.w r4, -1012(r30)
000d74  67014ff8  storeli.w r4, -1008(r30)
000d78  67414ff8  storeli.w r4, -1004(r30)
000d7c  e7014ff8  storeli.w r4, -1000(r30)
000d80  e7414ff8  storeli.w r4, -996(r30)
000d84  67024ff8  storeli.w r4, -992(r30)
000d88  67424ff8  storeli.w r4, -988(r30)
000d8c  e7024ff8  storeli.w r4, -984(r30)
000d90  e7424ff8  storeli.w r4, -980(r30)
000d94  67034ff8  storeli.w r4, -976(r30)
000d98  67434ff8  storeli.w r4, -972(r30)
000d9c  e7034ff8  storeli.w r4, -968(r30)
000da0  e7434ff8  storeli.w r4, -964(r30)
000da4  67044ff8  storeli.w r4, -960(r30)
000da8  67444ff8  storeli.w r4, -956(r30)
000dac  e7044ff8  storeli.w r4, -952(r30)
000db0  e7444ff8  storeli.w r4, -948(r30)
000db4  67054ff8  storeli.w r4, -944(r30)
000db8  67454ff8  storeli.w r4, -940(r30)
000dbc  e7054ff8  storeli.w r4, -936(r30)
000dc0  e7454ff8  storeli.w r4, -932(r30)
000dc4  67064ff8  storeli.w r4, -928(r30)
000dc8  67464ff8  storeli.w r4, -924(r30)
000dcc  e7064ff8  storeli.w r4, -920(r30)
000dd0  e7464ff8  storeli.w r4, -916(r30)
000dd4  67074ff8  storeli.w r4, -912(r30)
000dd8  67474ff8  storeli.w r4, -908(r30)
000ddc  e7074ff8  storeli.w r4, -904(r30)
000de0  e7474ff8  storeli.w r4, -900(r30)
000de4  67084ff8  storeli.w r4, -896(r30)
000de8  67484ff8  storeli.w r4, -892(r30)
000dec  e7084ff8  storeli.w r4, -888(r30)
000df0  e7484ff8  storeli.w r4, -884(r30)
000df4  67094ff8  storeli.w r4, -880(r30)
000df8  67494ff8  storeli.w r4, -876(r30)
000dfc  e7094ff8  storeli.w r4, -872(r30)
000e00  e7494ff8  storeli.w r4, -868(r30)
000e04  670a4ff8  storeli.w r4, -864(r30)
000e08  674a4ff8  storeli.w r4, -860(r30)
000e0c  e70a4ff8  storeli.w r4, -856(r30)
000e10  e74a4ff8  storeli.w r4, -852(r30)
000e14  670b4ff8  storeli.w r4, -848(r30)
000e18  674b4ff8  storeli.w r4, -844(r30)
000e1c  e70b4ff8  storeli.w r4, -840(r30)
000e20  e74b4ff8  storeli.w r4, -836(r30)
000e24  670c4ff8  storeli.w r4, -832(r30)
000e28  674c4ff8  storeli.w r4, -828(r30)
000e2c  e70c4ff8  storeli.w r4, -824(r30)
000e30  e74c4ff8  storeli.w r4, -820(r30)
000e34  670d4ff8  storeli.w r4, -816(r30)
000e38  674d4ff8  storeli.w r4, -812(r30)
000e3c  e70d4ff8  storeli.w r4, -808(r30)
000e40  e74d4ff8  storeli.w r4, -804(r30)
000e44  670e4ff8  storeli.w r4, -800(r30)
000e48  674e4ff8  storeli.w r4, -796(r30)
000e4c  e70e4ff8  storeli.w r4, -792(r30)
000e50  e74e4ff8  storeli.w r4, -788(r30)
000e54  670f4ff8  storeli.w r4, -784(r30)
000e58  674f4ff8  storeli.w r4, -780(r30)
000e5c  e70f4ff8  storeli.w r4, -776(r30)
000e60  e74f4ff8  storeli.w r4, -772(r30)
000e64  67004ffa  storeli.w r4, -768(r30)
000e68  67404ffa  storeli.w r4, -764(r30)
000e6c  e7004ffa  storeli.w r4, -760(r30)
000e70  e7404ffa  storeli.w r4, -756(r30)
000e74  67014ffa  storeli.w r4, -752(r30)
000e78  67414ffa  storeli.w r4, -748(r30)
000e7c  e7014ffa  storeli.w r4, -744(r30)
000e80  e7414ffa  storeli.w r4, -740(r30)
000e84  67024ffa  storeli.w r4, -736(r30)
000e88  67424ffa  storeli.w r4, -732(r30)
000e8c  e7024ffa  storeli.w r4, -728(r30)
000e90  e7424ffa  storeli.w r4, -724(r30)
000e94  67034ffa  storeli.w r4, -720(r30)
000e98  67434ffa  storeli.w r4, -716(r30)
000e9c  e7034ffa  storeli.w r4, -712(r30)
000ea0  e7434ffa  storeli.w r4, -708(r30)
000ea4  67044ffa  storeli.w r4, -704(r30)
000ea8  67444ffa  storeli.w r4, -700(r30)
000eac  e7044ffa  storeli.w r4, -696(r30)
000eb0  e7444ffa  storeli.w r4, -692(r30)
000eb4  67054ffa  storeli.w r4, -688(r30)
000eb8  67454ffa  storeli.w r4, -684(r30)
000ebc  e7054ffa  storeli.w r4, -680(r30)
000ec0  e7454ffa  storeli.w r4, -676(r30)
000ec4  67064ffa  storeli.w r4, -672(r30)
000ec8  67464ffa  storeli.w r4, -668(r30)
000ecc  e7064ffa  storeli.w r4, -664(r30)
000ed0  e7464ffa  storeli.w r4, -660(r30)
000ed4  67074ffa  storeli.w r4, -656(r30)
000ed8  67474ffa  storeli.w r4, -652(r30)
000edc  e7074ffa  storeli.w r4, -648(r30)
000ee0  e7474ffa  storeli.w r4, -644(r30)
000ee4  67084ffa  storeli.w r4, -640(r30)
000ee8  67484ffa  storeli.w r4, -636(r30)
000eec  e7084ffa  storeli.w r4, -632(r30)
000ef0  67484ff4  storeli.w r4, -1404(r30)
000ef4  67084ff4  storeli.w r4, -1408(r30)
000ef8  e7474ff4  storeli.w r4, -1412(r30)
000efc  e7074ff4  storeli.w r4, -1416(r30)
000f00  67474ff4  storeli.w r4, -1420(r30)
000f04  67074ff4  storeli.w r4, -1424(r30)
000f08  e7464ff4  storeli.w r4, -1428(r30)
000f0c  e7064ff4  storeli.w r4, -1432(r30)
000f10  67464ff4  storeli.w r4, -1436(r30)
000f14  67064ff4  storeli.w r4, -1440(r30)
000f18  e7454ff4  storeli.w r4, -1444(r30)
000f1c  e7054ff4  storeli.w r4, -1448(r30)
000f20  67454ff4  storeli.w r4, -1452(r30)
000f24  67054ff4  storeli.w r4, -1456(r30)
000f28  e7444ff4  storeli.w r4, -1460(r30)
000f2c  e7044ff4  storeli.w r4, -1464(r30)
000f30  67444ff4  storeli.w r4, -1468(r30)
000f34  67044ff4  storeli.w r4, -1472(r30)
000f38  e7434ff4  storeli.w r4, -1476(r30)
000f3c  e7034ff4  storeli.w r4, -1480(r30)
000f40  67434ff4  storeli.w r4, -1484(r30)
000f44  67034ff4  storeli.w r4, -1488(r30)
000f48  e7424ff4  storeli.w r4, -1492(r30)
000f4c  e7024ff4  storeli.w r4, -1496(r30)
000f50  67424ff4  storeli.w r4, -1500(r30)
000f54  67024ff4  storeli.w r4, -1504(r30)
000f58  e7414ff4  storeli.w r4, -1508(r30)
000f5c  e7014ff4  storeli.w r4, -1512(r30)
000f60  67414ff4  storeli.w r4, -1516(r30)
000f64  67014ff4  storeli.w r4, -1520(r30)
000f68  e7404ff4  storeli.w r4, -1524(r30)
000f6c  e7004ff4  storeli.w r4, -1528(r30)
000f70  67404ff4  storeli.w r4, -1532(r30)
000f74  67004ff4  storeli.w r4, -1536(r30)
000f78  e74f4ff2  storeli.w r4, -1540(r30)
000f7c  e70f4ff2  storeli.w r4, -1544(r30)
000f80  674f4ff2  storeli.w r4, -1548(r30)
000f84  670f4ff2  storeli.w r4, -1552(r30)
000f88  e74e4ff2  storeli.w r4, -1556(r30)
000f8c  e70e4ff2  storeli.w r4, -1560(r30)
000f90  674e4ff2  storeli.w r4, -1564(r30)
000f94  670e4ff2  storeli.w r4, -1568(r30)
000f98  e74d4ff2  storeli.w r4, -1572(r30)
000f9c  e70d4ff2  storeli.w r4, -1576(r30)
000fa0  674d4ff2  storeli.w r4, -1580(r30)
000fa4  670d4ff2  storeli.w r4, -1584(r30)
000fa8  e74c4ff2  storeli.w r4, -1588(r30)
000fac  e70c4ff2  storeli.w r4, -1592(r30)
000fb0  674c4ff2  storeli.w r4, -1596(r30)
000fb4  670c4ff2  storeli.w r4, -1600(r30)
000fb8  e74b4ff2  storeli.w r4, -1604(r30)
000fbc  e70b4ff2  storeli.w r4, -1608(r30)
000fc0  674b4ff2  storeli.w r4, -1612(r30)
000fc4  670b4ff2  storeli.w r4, -1616(r30)
000fc8  e74a4ff2  storeli.w r4, -1620(r30)
000fcc  e70a4ff2  storeli.w r4, -1624(r30)
000fd0  674a4ff2  storeli.w r4, -1628(r30)
000fd4  670a4ff2  storeli.w r4, -1632(r30)
000fd8  e7494ff2  storeli.w r4, -1636(r30)
000fdc  e7094ff2  storeli.w r4, -1640(r30)
000fe0  e7004ffc  storeli.w r4, -504(r30)
000fe4  67404ffc  storeli.w r4, -508(r30)
000fe8  67004ffc  storeli.w r4, -512(r30)
000fec  e74f4ffa  storeli.w r4, -516(r30)
000ff0  e70f4ffa  storeli.w r4, -520(r30)
000ff4  674f4ffa  storeli.w r4, -524(r30)
000ff8  670f4ffa  storeli.w r4, -528(r30)
000ffc  e74e4ffa  storeli.w r4, -532(r30)
001000  e70e4ffa  storeli.w r4, -536(r30)
001004  674e4ffa  storeli.w r4, -540(r30)
001008  670e4ffa  storeli.w r4, -544(r30)
00100c  e74d4ffa  storeli.w r4, -548(r30)
001010  e70d4ffa  storeli.w r4, -552(r30)
001014  674d4ffa  storeli.w r4, -556(r30)
001018  670d4ffa  storeli.w r4, -560(r30)
00101c  e74c4ffa  storeli.w r4, -564(r30)
001020  e70c4ffa  storeli.w r4, -568(r30)
001024  674c4ffa  storeli.w r4, -572(r30)
001028  670c4ffa  storeli.w r4, -576(r30)
00102c  e74b4ffa  storeli.w r4, -580(r30)
001030  e70b4ffa  storeli.w r4, -584(r30)
001034  674b4ffa  storeli.w r4, -588(r30)
001038  670b4ffa  storeli.w r4, -592(r30)
00103c  e74a4ffa  storeli.w r4, -596(r30)
001040  e70a4ffa  storeli.w r4, -600(r30)
001044  674a4ffa  storeli.w r4, -604(r30)
001048  670a4ffa  storeli.w r4, -608(r30)
00104c  e7494ffa  storeli.w r4, -612(r30)
001050  e7094ffa  storeli.w r4, -616(r30)
001054  67494ffa  storeli.w r4, -620(r30)
001058  67094ffa  storeli.w r4, -624(r30)
00105c  e7484ffa  storeli.w r4, -628(r30)
001060  e7084ff4  storeli.w r4, -1400(r30)
001064  e7484ff4  storeli.w r4, -1396(r30)
001068  67094ff4  storeli.w r4, -1392(r30)
00106c  67494ff4  storeli.w r4, -1388(r30)
001070  e7094ff4  storeli.w r4, -1384(r30)
001074  e7494ff4  storeli.w r4, -1380(r30)
001078  670a4ff4  storeli.w r4, -1376(r30)
00107c  674a4ff4  storeli.w r4, -1372(r30)
001080  e70a4ff4  storeli.w r4, -1368(r30)
001084  e74a4ff4  storeli.w r4, -1364(r30)
001088  670b4ff4  storeli.w r4, -1360(r30)
00108c  674b4ff4  storeli.w r4, -1356(r30)
001090  e70b4ff4  storeli.w r4, -1352(r30)
001094  e74b4ff4  storeli.w r4, -1348(r30)
001098  670c4ff4  storeli.w r4, -1344(r30)
00109c  674c4ff4  storeli.w r4, -1340(r30)
0010a0  e70c4ff4  storeli.w r4, -1336(r30)
0010a4  e74c4ff4  storeli.w r4, -1332(r30)
0010a8  670d4ff4  storeli.w r4, -1328(r30)
0010ac  674d4ff4  storeli.w r4, -1324(r30)
0010b0  e70d4ff4  storeli.w r4, -1320(r30)
0010b4  e74d4ff4  storeli.w r4, -1316(r30)
0010b8  670e4ff4  storeli.w r4, -1312(r30)
0010bc  674e4ff4  storeli.w r4, -1308(r30)
0010c0  e70e4ff4  storeli.w r4, -1304(r30)
0010c4  e74e4ff4  storeli.w r4, -1300(r30)
0010c8  670f4ff4  storeli.w r4, -1296(r30)
0010cc  674f4ff4  storeli.w r4, -1292(r30)
0010d0  e70f4ff4  storeli.w r4, -1288(r30)
0010d4  e74f4ff4  storeli.w r4, -1284(r30)
0010d8  67004ff6  storeli.w r4, -1280(r30)
0010dc  67404ff6  storeli.w r4, -1276(r30)
0010e0  e7004ff6  storeli.w r4, -1272(r30)
0010e4  e7404ff6  storeli.w r4, -1268(r30)
0010e8  67014ff6  storeli.w r4, -1264(r30)
0010ec  67414ff6  storeli.w r4, -1260(r30)
0010f0  e7014ff6  storeli.w r4, -1256(r30)
0010f4  e7414ff6  storeli.w r4, -1252(r30)
0010f8  67024ff6  storeli.w r4, -1248(r30)
0010fc  67424ff6  storeli.w r4, -1244(r30)
001100  e7024ff6  storeli.w r4, -1240(r30)
001104  e7424ff6  storeli.w r4, -1236(r30)
001108  67034ff6  storeli.w r4, -1232(r30)
00110c  67434ff6  storeli.w r4, -1228(r30)
001110  e7034ff6  storeli.w r4, -1224(r30)
001114  e7434ff6  storeli.w r4, -1220(r30)
001118  67044ff6  storeli.w r4, -1216(r30)
00111c  67444ff6  storeli.w r4, -1212(r30)
001120  e7044ff6  storeli.w r4, -1208(r30)
001124  e7444ff6  storeli.w r4, -1204(r30)
001128  67054ff6  storeli.w r4, -1200(r30)
00112c  67454ff6  storeli.w r4, -1196(r30)
001130  e7054ff6  storeli.w r4, -1192(r30)
001134  e7454ff6  storeli.w r4, -1188(r30)
001138  67064ff6  storeli.w r4, -1184(r30)
00113c  67464ff6  storeli.w r4, -1180(r30)
001140  e7064ff6  storeli.w r4, -1176(r30)
001144  e7464ff6  storeli.w r4, -1172(r30)
001148  67074ff6  storeli.w r4, -1168(r30)
00114c  67474ff6  storeli.w r4, -1164(r30)
001150  e7074ff6  storeli.w r4, -1160(r30)
001154  e7474ff6  storeli.w r4, -1156(r30)
001158  67084ff6  storeli.w r4, -1152(r30)
00115c  67484ff6  storeli.w r4, -1148(r30)
001160  67494fec  storeli.w r4, -2412(r30)
001164  e7094fec  storeli.w r4, -2408(r30)
001168  e7494fec  storeli.w r4, -2404(r30)
00116c  670a4fec  storeli.w r4, -2400(r30)
001170  674a4fec  storeli.w r4, -2396(r30)
001174  e70a4fec  storeli.w r4, -2392(r30)
001178  e74a4fec  storeli.w r4, -2388(r30)
00117c  670b4fec  storeli.w r4, -2384(r30)
001180  674b4fec  storeli.w r4, -2380(r30)
001184  e70b4fec  storeli.w r4, -2376(r30)
001188  e74b4fec  storeli.w r4, -2372(r30)
00118c  670c4fec  storeli.w r4, -2368(r30)
001190  674c4fec  storeli.w r4, -2364(r30)
001194  e70c4fec  storeli.w r4, -2360(r30)
001198  e74c4fec  storeli.w r4, -2356(r30)
00119c  670d4fec  storeli.w r4, -2352(r30)
0011a0  674d4fec  storeli.w r4, -2348(r30)
0011a4  e70d4fec  storeli.w r4, -2344(r30)
0011a8  e74d4fec  storeli.w r4, -2340(r30)
0011ac  670e4fec  storeli.w r4, -2336(r30)
0011b0  674e4fec  storeli.w r4, -2332(r30)
0011b4  e70e4fec  storeli.w r4, -2328(r30)
0011b8  e74e4fec  storeli.w r4, -2324(r30)
0011bc  670f4fec  storeli.w r4, -2320(r30)
0011c0  674f4fec  storeli.w r4, -2316(r30)
0011c4  e70f4fec  storeli.w r4, -2312(r30)
0011c8  e74f4fec  storeli.w r4, -2308(r30)
0011cc  67004fee  storeli.w r4, -2304(r30)
0011d0  67404fee  storeli.w r4, -2300(r30)
0011d4  e7004fee  storeli.w r4, -2296(r30)
0011d8  e7404fee  storeli.w r4, -2292(r30)
0011dc  67014fee  storeli.w r4, -2288(r30)
0011e0  67414fee  storeli.w r4, -2284(r30)
0011e4  e7014fee  storeli.w r4, -2280(r30)
0011e8  e7414fee  storeli.w r4, -2276(r30)
0011ec  67024fee  storeli.w r4, -2272(r30)
0011f0  67424fee  storeli.w r4, -2268(r30)
0011f4  e7024fee  storeli.w r4, -2264(r30)
0011f8  e7424fee  storeli.w r4, -2260(r30)
0011fc  67034fee  storeli.w r4, -2256(r30)
001200  67434fee  storeli.w r4, -2252(r30)
001204  e7034fee  storeli.w r4, -2248(r30)
001208  e7434fee  storeli.w r4, -2244(r30)
00120c  67044fee  storeli.w r4, -2240(r30)
001210  67444fee  storeli.w r4, -2236(r30)
001214  e7044fee  storeli.w r4, -2232(r30)
001218  e7444fee  storeli.w r4, -2228(r30)
00121c  67054fee  storeli.w r4, -2224(r30)
001220  67454fee  storeli.w r4, -2220(r30)
001224  e7054fee  storeli.w r4, -2216(r30)
001228  e7454fee  storeli.w r4, -2212(r30)
00122c  67064fee  storeli.w r4, -2208(r30)
001230  67464fee  storeli.w r4, -2204(r30)
001234  e7064fee  storeli.w r4, -2200(r30)
001238  e7464fee  storeli.w r4, -2196(r30)
00123c  67074fee  storeli.w r4, -2192(r30)
001240  67474fee  storeli.w r4, -2188(r30)
001244  e7074fee  storeli.w r4, -2184(r30)
001248  e7474fee  storeli.w r4, -2180(r30)
00124c  67084fee  storeli.w r4, -2176(r30)
001250  67484fee  storeli.w r4, -2172(r30)
001254  e7084fee  storeli.w r4, -2168(r30)
001258  e7484fee  storeli.w r4, -2164(r30)
00125c  67094fee  storeli.w r4, -2160(r30)
001260  67494fee  storeli.w r4, -2156(r30)
001264  e7094fee  storeli.w r4, -2152(r30)
001268  e7494fee  storeli.w r4, -2148(r30)
00126c  670a4fee  storeli.w r4, -2144(r30)
001270  674a4fee  storeli.w r4, -2140(r30)
001274  e70a4fee  storeli.w r4, -2136(r30)
001278  e74a4fee  storeli.w r4, -2132(r30)
00127c  670b4fee  storeli.w r4, -2128(r30)
001280  674b4fee  storeli.w r4, -2124(r30)
001284  e70b4fee  storeli.w r4, -2120(r30)
001288  e74b4fee  storeli.w r4, -2116(r30)
00128c  670c4fee  storeli.w r4, -2112(r30)
001290  674c4fee  storeli.w r4, -2108(r30)
001294  e70c4fee  storeli.w r4, -2104(r30)
001298  e74c4fee  storeli.w r4, -2100(r30)
00129c  670d4fee  storeli.w r4, -2096(r30)
0012a0  674d4fee  storeli.w r4, -2092(r30)
0012a4  e70d4fee  storeli.w r4, -2088(r30)
0012a8  e74d4fee  storeli.w r4, -2084(r30)
0012ac  670e4fee  storeli.w r4, -2080(r30)
0012b0  674e4fee  storeli.w r4, -2076(r30)
0012b4  e70e4fee  storeli.w r4, -2072(r30)
0012b8  e74e4fee  storeli.w r4, -2068(r30)
0012bc  670f4fee  storeli.w r4, -2064(r30)
0012c0  674f4fee  storeli.w r4, -2060(r30)
0012c4  e70f4fee  storeli.w r4, -2056(r30)
0012c8  e74f4fee  storeli.w r4, -2052(r30)
0012cc  67004ff0  storeli.w r4, -2048(r30)
0012d0  67404ff0  storeli.w r4, -2044(r30)
0012d4  e7004ff0  storeli.w r4, -2040(r30)
0012d8  e7404ff0  storeli.w r4, -2036(r30)
0012dc  67014ff0  storeli.w r4, -2032(r30)
0012e0  67414ff0  storeli.w r4, -2028(r30)
0012e4  e7014ff0  storeli.w r4, -2024(r30)
0012e8  e7414ff0  storeli.w r4, -2020(r30)
0012ec  67024ff0  storeli.w r4, -2016(r30)
0012f0  67424ff0  storeli.w r4, -2012(r30)
0012f4  e7024ff0  storeli.w r4, -2008(r30)
0012f8  e7424ff0  storeli.w r4, -2004(r30)
0012fc  67034ff0  storeli.w r4, -2000(r30)
001300  67434ff0  storeli.w r4, -1996(r30)
001304  e7034ff0  storeli.w r4, -1992(r30)
001308  e7434ff0  storeli.w r4, -1988(r30)
00130c  67044ff0  storeli.w r4, -1984(r30)
001310  67444ff0  storeli.w r4, -1980(r30)
001314  e7044ff0  storeli.w r4, -1976(r30)
001318  e7444ff0  storeli.w r4, -1972(r30)
00131c  67054ff0  storeli.w r4, -1968(r30)
001320  67454ff0  storeli.w r4, -1964(r30)
001324  e7054ff0  storeli.w r4, -1960(r30)
001328  e7454ff0  storeli.w r4, -1956(r30)
00132c  67064ff0  storeli.w r4, -1952(r30)
001330  67464ff0  storeli.w r4, -1948(r30)
001334  e7064ff0  storeli.w r4, -1944(r30)
001338  e7464ff0  storeli.w r4, -1940(r30)
00133c  67074ff0  storeli.w r4, -1936(r30)
001340  67474ff0  storeli.w r4, -1932(r30)
001344  e7074ff0  storeli.w r4, -1928(r30)
001348  e7474ff0  storeli.w r4, -1924(r30)
00134c  67084ff0  storeli.w r4, -1920(r30)
001350  67484ff0  storeli.w r4, -1916(r30)
001354  e7084ff0  storeli.w r4, -1912(r30)
001358  e7484ff0  storeli.w r4, -1908(r30)
00135c  67094ff0  storeli.w r4, -1904(r30)
001360  67494ff0  storeli.w r4, -1900(r30)
001364  e7094ff0  storeli.w r4, -1896(r30)
001368  e7494ff0  storeli.w r4, -1892(r30)
00136c  670a4ff0  storeli.w r4, -1888(r30)
001370  674a4ff0  storeli.w r4, -1884(r30)
001374  e70a4ff0  storeli.w r4, -1880(r30)
001378  e74a4ff0  storeli.w r4, -1876(r30)
00137c  670b4ff0  storeli.w r4, -1872(r30)
001380  674b4ff0  storeli.w r4, -1868(r30)
001384  e70b4ff0  storeli.w r4, -1864(r30)
001388  e74b4ff0  storeli.w r4, -1860(r30)
00138c  670c4ff0  storeli.w r4, -1856(r30)
001390  674c4ff0  storeli.w r4, -1852(r30)
001394  e70c4ff0  storeli.w r4, -1848(r30)
001398  e74c4ff0  storeli.w r4, -1844(r30)
00139c  670d4ff0  storeli.w r4, -1840(r30)
0013a0  674d4ff0  storeli.w r4, -1836(r30)
0013a4  e70d4ff0  storeli.w r4, -1832(r30)
0013a8  e74d4ff0  storeli.w r4, -1828(r30)
0013ac  670e4ff0  storeli.w r4, -1824(r30)
0013b0  674e4ff0  storeli.w r4, -1820(r30)
0013b4  e70e4ff0  storeli.w r4, -1816(r30)
0013b8  e74e4ff0  storeli.w r4, -1812(r30)
0013bc  670f4ff0  storeli.w r4, -1808(r30)
0013c0  674f4ff0  storeli.w r4, -1804(r30)
0013c4  e70f4ff0  storeli.w r4, -1800(r30)
0013c8  e74f4ff0  storeli.w r4, -1796(r30)
0013cc  67004ff2  storeli.w r4, -1792(r30)
0013d0  67404ff2  storeli.w r4, -1788(r30)
0013d4  e7004ff2  storeli.w r4, -1784(r30)
0013d8  e7404ff2  storeli.w r4, -1780(r30)
0013dc  67014ff2  storeli.w r4, -1776(r30)
0013e0  67414ff2  storeli.w r4, -1772(r30)
0013e4  e7014ff2  storeli.w r4, -1768(r30)
0013e8  e7414ff2  storeli.w r4, -1764(r30)
0013ec  67024ff2  storeli.w r4, -1760(r30)
0013f0  67424ff2  storeli.w r4, -1756(r30)
0013f4  e7024ff2  storeli.w r4, -1752(r30)
0013f8  e7424ff2  storeli.w r4, -1748(r30)
0013fc  67034ff2  storeli.w r4, -1744(r30)
001400  67434ff2  storeli.w r4, -1740(r30)
001404  e7034ff2  storeli.w r4, -1736(r30)
001408  e7434ff2  storeli.w r4, -1732(r30)
00140c  67044ff2  storeli.w r4, -1728(r30)
001410  67444ff2  storeli.w r4, -1724(r30)
001414  e7044ff2  storeli.w r4, -1720(r30)
001418  e7444ff2  storeli.w r4, -1716(r30)
00141c  67054ff2  storeli.w r4, -1712(r30)
001420  67454ff2  storeli.w r4, -1708(r30)
001424  e7054ff2  storeli.w r4, -1704(r30)
001428  e7454ff2  storeli.w r4, -1700(r30)
00142c  67064ff2  storeli.w r4, -1696(r30)
001430  67464ff2  storeli.w r4, -1692(r30)
001434  e7064ff2  storeli.w r4, -1688(r30)
001438  e7464ff2  storeli.w r4, -1684(r30)
00143c  67074ff2  storeli.w r4, -1680(r30)
001440  67474ff2  storeli.w r4, -1676(r30)
001444  e7074ff2  storeli.w r4, -1672(r30)
001448  e7474ff2  storeli.w r4, -1668(r30)
00144c  67084ff2  storeli.w r4, -1664(r30)
001450  67484ff2  storeli.w r4, -1660(r30)
001454  e7084ff2  storeli.w r4, -1656(r30)
001458  e7484ff2  storeli.w r4, -1652(r30)
00145c  67094ff2  storeli.w r4, -1648(r30)
001460  4b8b110c  ble.s r3, r1, 6848
001464  33910128  sext_int2long r[3:4], r3
001468  1f027fec  addli r4, r30, -2504
00146c  33940028  sext_int2long r[9:10], r1
001470  9f560000  addli r13, zero, 5
001474  1f470000  addli r14, zero, 4
001478  2b0e4000  lui r28, 1024
00147c  e7450fec  storeli.w zero, -2468(r30)
001480  73302200  store.d r[3:4], 0(r4)
001484  9f016fec  addli r3, r30, -2512
001488  2b02ffff  lui r4, 1048560
00148c  ebd00100  load.d r[2:3], 0(r3)
001490  1f71f007  addli r2, zero, 1023
001494  73b01100  store.d r[2:3], 0(r3)
001498  2b710000  lui r2, 7
00149c  abf0ff7f  lui r1, 524287
0014a0  9b11f1ff  ori r3, r2, 4095
0014a4  2bf17f7f  lui r2, 522239
0014a8  9b9df0ff  ori r27, r1, 4095
0014ac  ab00807f  lui r1, 522240
0014b0  9b12f1ff  ori r5, r2, 4095
0014b4  5b060000  j 48
0014b8  1f311000  addli r2, zero, 11
0014bc  7d000100  xsignal r2, 0
0014c0  1f411000  addli r2, zero, 12
0014c4  7d000100  xsignal r2, 0
0014c8  1f01cfec  addli r2, r30, -2464
0014cc  6b540100  load.d r[9:10], 0(r2)
0014d0  1f017fec  addli r2, r30, -2504
0014d4  27140400  addli.d r[9:10], r[9:10], 1
0014d8  6b530100  load.d r[7:8], 0(r2)
0014dc  13316404  setlt.sl r2, r[9:10], r[7:8]
0014e0  3709010c  beq r2, zero, 6720
0014e4  9f072000  addli r15, zero, 16
0014e8  3bb0e800  bneq r17, r14, 12
0014ec  1f311000  addli r2, zero, 11
0014f0  7d100100  xwait r2, 0
0014f4  63014f00  loadli.w r2,  32(r30)
0014f8  1f03cfec  addli r6, r30, -2464
0014fc  9f280000  addli r17, zero, 2
001500  1f1c0000  addli r24, zero, 1
001504  1f361000  addli r12, zero, 11
001508  1f07afec  addli r14, r30, -2480
00150c  73308300  store.d r[9:10], 0(r6)
001510  63433f00  loadli.w r6,  28(r30)
001514  0b112430  div.s r2, r8, r2
001518  1f041000  addli r8, zero, 8
00151c  0b136130  div.s r6, r2, r6
001520  1f010001  addli r2, zero, 128
001524  8b142330  div.s r9, r6, r2
001528  1bb13400  slli r2, r9, 3
00152c  8b932818  sub.s r7, r17, r2
001530  0b958340  min.s r10, r7, r8
001534  63442ff3  loadli.w r8,  -1644(r30)
001538  8b13a338  mod.s r7, r6, r10
00153c  0b117110  add.s r2, r2, r7
001540  e3032fed  loadli.w r7,  -2416(r30)
001544  93052c04  setlt.u r11, r24, r2
001548  33090128  zext_int2long r[19:20], r2
00154c  73302701  store.d r[19:20], 0(r14)
001550  1739c902  sll.d r[19:20], r[19:20], r12
001554  3bb00500  bneq r11, zero, 12
001558  b3050028  zext_int2long r[12:13], zero
00155c  5b020000  j 16
001560  1f076fec  addli r14, r30, -2512
001564  eb550700  load.d r[12:13], 0(r14)
001568  9705b902  and.d r[12:13], r[19:20], r[12:13]
00156c  9bb47400  slli r9, r9, 7
001570  1f07efec  addli r14, r30, -2448
001574  1b315100  slli r2, r2, 5
001578  9f4b0000  addli r23, zero, 4
00157c  1f5a0000  addli r20, zero, 5
001580  0b139318  sub.s r6, r6, r9
001584  7330b700  store.d r[12:13], 0(r14)
001588  6347bfec  loadli.w r14,  -2468(r30)
00158c  9f05ffec  addli r11, r30, -2440
001590  67442fec  storeli.w r2, -2492(r30)
001594  1f060000  addli r12, zero, 0
001598  0b13a330  div.s r6, r6, r10
00159c  73b02501  store.d r[19:20], 0(r11)
0015a0  8b14d738  mod.s r9, r14, r13
0015a4  1f170700  addli r14, r14, 1
0015a8  e745efec  storeli.w r14, -2468(r30)
0015ac  eb568f00  load.d r[14:15], 8(r30)
0015b0  1b316300  slli r2, r6, 6
0015b4  33050328  zext_int2long r[11:12], r6
0015b8  1bb3d400  slli r6, r9, 13
0015bc  67042fec  storeli.w r2, -2496(r30)
0015c0  1f610000  addli r2, zero, 6
0015c4  17352502  sll.d r[11:12], r[11:12], r2
0015c8  1f019fec  addli r2, r30, -2488
0015cc  7330a100  store.d r[11:12], 0(r2)
0015d0  17358503  sll.d r[11:12], r[11:12], r24
0015d4  2ba10000  lui r2, 10
0015d8  8b142310  add.s r9, r6, r2
0015dc  0ba5a610  add.ul r[11:12], r[14:15], r[11:12]
0015e0  1f01dfec  addli r2, r30, -2456
0015e4  9f060000  addli r13, zero, 0
0015e8  7330a100  store.d r[11:12], 0(r2)
0015ec  db320000  j 404
0015f0  ab450100  lui r11, 20
0015f4  1d000700  lock zero, r14
0015f8  9f098000  addli r19, zero, 64
0015fc  150d0d00  dma_cfg r26, r26, zero, 0
001600  9b950504  ori r11, r11, 64
001604  15000904  dma_cfg zero, r18, zero, 2
001608  0b11b110  add.s r2, r2, r11
00160c  9f650000  addli r11, zero, 6
001610  15813807  dma_cfg r2, r17, r19, 3
001614  1f010001  addli r2, zero, 128
001618  9f280000  addli r17, zero, 2
00161c  1581a909  dma_cfg r2, r19, r26, 4
001620  1501a10a  dma_cfg r2, r2, r10, 5
001624  15000010  dma_cfg zero, zero, zero, 8
001628  35000000  dma_run zero
00162c  1500a00b  dma_cfg zero, zero, r26, 5
001630  15000010  dma_cfg zero, zero, zero, 8
001634  1d100700  unlock r14
001638  1d800600  lock zero, r13
00163c  15000014  dma_cfg zero, zero, zero, 10
001640  1500a015  dma_cfg zero, zero, r26, 10
001644  15001015  dma_cfg zero, zero, r17, 10
001648  15004015  dma_cfg zero, zero, r20, 10
00164c  1f5a0000  addli r20, zero, 5
001650  1500e014  dma_cfg zero, zero, r14, 10
001654  1500d014  dma_cfg zero, zero, r13, 10
001658  1500b014  dma_cfg zero, zero, r11, 10
00165c  9f750000  addli r11, zero, 7
001660  1500b014  dma_cfg zero, zero, r11, 10
001664  9f051000  addli r11, zero, 8
001668  1500b014  dma_cfg zero, zero, r11, 10
00166c  9f151000  addli r11, zero, 9
001670  1500b014  dma_cfg zero, zero, r11, 10
001674  9f251000  addli r11, zero, 10
001678  1500b014  dma_cfg zero, zero, r11, 10
00167c  9f351000  addli r11, zero, 11
001680  1500b014  dma_cfg zero, zero, r11, 10
001684  9f451000  addli r11, zero, 12
001688  1500b014  dma_cfg zero, zero, r11, 10
00168c  9f551000  addli r11, zero, 13
001690  1500b014  dma_cfg zero, zero, r11, 10
001694  9f651000  addli r11, zero, 14
001698  1500b014  dma_cfg zero, zero, r11, 10
00169c  9f751000  addli r11, zero, 15
0016a0  1500b014  dma_cfg zero, zero, r11, 10
0016a4  9f152000  addli r11, zero, 17
0016a8  1500f014  dma_cfg zero, zero, r15, 10
0016ac  1500b014  dma_cfg zero, zero, r11, 10
0016b0  9f252000  addli r11, zero, 18
0016b4  1500b014  dma_cfg zero, zero, r11, 10
0016b8  9f352000  addli r11, zero, 19
0016bc  1500b014  dma_cfg zero, zero, r11, 10
0016c0  9f452000  addli r11, zero, 20
0016c4  1500b014  dma_cfg zero, zero, r11, 10
0016c8  9f552000  addli r11, zero, 21
0016cc  1500b014  dma_cfg zero, zero, r11, 10
0016d0  9f652000  addli r11, zero, 22
0016d4  1500b014  dma_cfg zero, zero, r11, 10
0016d8  9f752000  addli r11, zero, 23
0016dc  1500b014  dma_cfg zero, zero, r11, 10
0016e0  9f053000  addli r11, zero, 24
0016e4  1500b014  dma_cfg zero, zero, r11, 10
0016e8  9f153000  addli r11, zero, 25
0016ec  1500b014  dma_cfg zero, zero, r11, 10
0016f0  9f253000  addli r11, zero, 26
0016f4  1500b014  dma_cfg zero, zero, r11, 10
0016f8  9f353000  addli r11, zero, 27
0016fc  1500b014  dma_cfg zero, zero, r11, 10
001700  9f453000  addli r11, zero, 28
001704  1500b014  dma_cfg zero, zero, r11, 10
001708  9f553000  addli r11, zero, 29
00170c  1500b014  dma_cfg zero, zero, r11, 10
001710  9f653000  addli r11, zero, 30
001714  1500b014  dma_cfg zero, zero, r11, 10
001718  9f753000  addli r11, zero, 31
00171c  1500b014  dma_cfg zero, zero, r11, 10
001720  150d0d00  dma_cfg r26, r26, zero, 0
001724  150d0002  dma_cfg r26, zero, zero, 1
001728  15000004  dma_cfg zero, zero, zero, 2
00172c  950c3007  dma_cfg r25, zero, r19, 3
001730  1501a009  dma_cfg r2, zero, r26, 4
001734  1501a00a  dma_cfg r2, zero, r10, 5
001738  15000010  dma_cfg zero, zero, zero, 8
00173c  35000000  dma_run zero
001740  1500a00b  dma_cfg zero, zero, r26, 5
001744  15000010  dma_cfg zero, zero, zero, 8
001748  1d900600  unlock r13
00174c  7d800800  xsignal r17, 0
001750  63011ff7  loadli.w r2,  -1144(r30)
001754  63451ffc  loadli.w r10,  -500(r30)
001758  1f110100  addli r2, r2, 1
00175c  1f150500  addli r10, r10, 1
001760  e7082ff6  storeli.w r2, -1144(r30)
001764  e740affc  storeli.w r10, -500(r30)
001768  1b011c00  andi r2, r24, 1
00176c  b7780102  beq r2, zero, 1596
001770  9f4b0000  addli r23, zero, 4
001774  1f160600  addli r12, r12, 1
001778  9f160000  addli r13, zero, 1
00177c  1f0c0000  addli r24, zero, 0
001780  1f098000  addli r18, zero, 64
001784  8b15c410  add.s r11, r8, r12
001788  1f47f000  addli r14, zero, 124
00178c  0b91c310  add.s r2, r7, r12
001790  1f058001  addli r10, zero, 192
001794  1f081fed  addli r16, r30, -2424
001798  33090928  zext_int2long r[19:20], r18
00179c  0b97e538  mod.s r14, r11, r14
0017a0  0b15a138  mod.s r10, r2, r10
0017a4  1f110100  addli r2, r2, 1
0017a8  73302801  store.d r[19:20], 0(r16)
0017ac  1f094000  addli r18, zero, 32
0017b0  1f080fed  addli r16, r30, -2432
0017b4  67092fec  storeli.w r2, -2416(r30)
0017b8  33090928  zext_int2long r[19:20], r18
0017bc  73302801  store.d r[19:20], 0(r16)
0017c0  1b31c700  slli r2, r14, 12
0017c4  2b490100  lui r18, 20
0017c8  1f970500  addli r14, r11, 1
0017cc  1b35c500  slli r10, r10, 12
0017d0  80390002  core_id r19
0017d4  8b1c2111  add.s r25, r2, r18
0017d8  6749eff2  storeli.w r14, -1644(r30)
0017dc  b7861901  beq r19, r17, 416
0017e0  1f2b0000  addli r22, zero, 2
0017e4  b3860628  zext_int2long r[14:15], r13
0017e8  1f1d0000  addli r26, zero, 1
0017ec  3bc7a901  bneq r19, r26, 464
0017f0  1f550000  addli r10, zero, 5
0017f4  803a0002  core_id r21
0017f8  97b6a602  sll.d r[14:15], r[14:15], r10
0017fc  1f05ffec  addli r10, r30, -2440
001800  6b580500  load.d r[17:18], 0(r10)
001804  1f05efec  addli r10, r30, -2448
001808  97960603  or.d r[14:15], r[14:15], r[17:18]
00180c  6b580500  load.d r[17:18], 0(r10)
001810  1f051fed  addli r10, r30, -2424
001814  eb590500  load.d r[20:21], 0(r10)
001818  1f050fed  addli r10, r30, -2432
00181c  8bb80619  sub.sl r[18:19], r[14:15], r[17:18]
001820  97b6a603  sll.d r[14:15], r[14:15], r26
001824  8f983861  div.sl r[18:19], r[18:19], r[20:21]
001828  eb590500  load.d r[20:21], 0(r10)
00182c  8bb93841  min.sl r[20:21], r[18:19], r[20:21]
001830  8bb91919  sub.sl r[20:21], r[20:21], r[18:19]
001834  6b580f00  load.d r[17:18], 0(r30)
001838  1f854900  addli r10, r19, 32
00183c  1f3a0000  addli r20, zero, 3
001840  8b28d810  add.ul r[18:19], r[17:18], r[14:15]
001844  9f560000  addli r13, zero, 5
001848  1f470000  addli r14, zero, 4
00184c  1f38f000  addli r16, zero, 123
001850  7d100a00  xwait r20, 0
001854  3f76b8fe  blt.s r16, r11, -612
001858  1d800600  lock zero, r13
00185c  9f650000  addli r11, zero, 6
001860  9f094000  addli r19, zero, 32
001864  15000014  dma_cfg zero, zero, zero, 10
001868  1500a015  dma_cfg zero, zero, r26, 10
00186c  15006015  dma_cfg zero, zero, r22, 10
001870  15004015  dma_cfg zero, zero, r20, 10
001874  1500e014  dma_cfg zero, zero, r14, 10
001878  1500d014  dma_cfg zero, zero, r13, 10
00187c  1500b014  dma_cfg zero, zero, r11, 10
001880  9f750000  addli r11, zero, 7
001884  1500b014  dma_cfg zero, zero, r11, 10
001888  9f051000  addli r11, zero, 8
00188c  1500b014  dma_cfg zero, zero, r11, 10
001890  9f151000  addli r11, zero, 9
001894  1500b014  dma_cfg zero, zero, r11, 10
001898  9f251000  addli r11, zero, 10
00189c  1500b014  dma_cfg zero, zero, r11, 10
0018a0  9f351000  addli r11, zero, 11
0018a4  1500b014  dma_cfg zero, zero, r11, 10
0018a8  9f451000  addli r11, zero, 12
0018ac  1500b014  dma_cfg zero, zero, r11, 10
0018b0  9f551000  addli r11, zero, 13
0018b4  1500b014  dma_cfg zero, zero, r11, 10
0018b8  9f651000  addli r11, zero, 14
0018bc  1500b014  dma_cfg zero, zero, r11, 10
0018c0  9f751000  addli r11, zero, 15
0018c4  1500b014  dma_cfg zero, zero, r11, 10
0018c8  9f152000  addli r11, zero, 17
0018cc  1500f014  dma_cfg zero, zero, r15, 10
0018d0  1500b014  dma_cfg zero, zero, r11, 10
0018d4  9f252000  addli r11, zero, 18
0018d8  1500b014  dma_cfg zero, zero, r11, 10
0018dc  9f352000  addli r11, zero, 19
0018e0  1500b014  dma_cfg zero, zero, r11, 10
0018e4  9f452000  addli r11, zero, 20
0018e8  1500b014  dma_cfg zero, zero, r11, 10
0018ec  9f552000  addli r11, zero, 21
0018f0  1500b014  dma_cfg zero, zero, r11, 10
0018f4  9f652000  addli r11, zero, 22
0018f8  1500b014  dma_cfg zero, zero, r11, 10
0018fc  9f752000  addli r11, zero, 23
001900  1500b014  dma_cfg zero, zero, r11, 10
001904  9f053000  addli r11, zero, 24
001908  1500b014  dma_cfg zero, zero, r11, 10
00190c  9f153000  addli r11, zero, 25
001910  1500b014  dma_cfg zero, zero, r11, 10
001914  9f253000  addli r11, zero, 26
001918  1500b014  dma_cfg zero, zero, r11, 10
00191c  9f353000  addli r11, zero, 27
001920  1500b014  dma_cfg zero, zero, r11, 10
001924  9f453000  addli r11, zero, 28
001928  1500b014  dma_cfg zero, zero, r11, 10
00192c  9f553000  addli r11, zero, 29
001930  1500b014  dma_cfg zero, zero, r11, 10
001934  9f653000  addli r11, zero, 30
001938  1500b014  dma_cfg zero, zero, r11, 10
00193c  9f753000  addli r11, zero, 31
001940  1500b014  dma_cfg zero, zero, r11, 10
001944  9f058000  addli r11, zero, 64
001948  150d0d00  dma_cfg r26, r26, zero, 0
00194c  150d0002  dma_cfg r26, zero, zero, 1
001950  15000004  dma_cfg zero, zero, zero, 2
001954  950cb006  dma_cfg r25, zero, r11, 3
001958  9f050001  addli r11, zero, 128
00195c  9505a009  dma_cfg r11, zero, r26, 4
001960  9505300b  dma_cfg r11, zero, r19, 5
001964  15000010  dma_cfg zero, zero, zero, 8
001968  35000000  dma_run zero
00196c  1500a00b  dma_cfg zero, zero, r26, 5
001970  15000010  dma_cfg zero, zero, zero, 8
001974  1d900600  unlock r13
001978  5b8fffff  j -904
00197c  7d900800  xwait r17, 0
001980  7d100a00  xwait r20, 0
001984  1d000000  lock zero, zero
001988  1f014000  addli r2, zero, 32
00198c  803a0002  core_id r21
001990  1f470000  addli r14, zero, 4
001994  81080000  ds_cfg r17, zero, 0
001998  01010002  ds_cfg r2, zero, 1
00199c  0101001c  ds_cfg r2, zero, 14
0019a0  0101001a  ds_cfg r2, zero, 13
0019a4  21952c02  shuffle_batch r10, r25, r2, 1
0019a8  1f310000  addli r2, zero, 3
0019ac  1d100000  unlock zero
0019b0  7d000100  xsignal r2, 0
0019b4  7d000700  xsignal r14, 0
0019b8  5bb3ffff  j -616
0019bc  e3481ffc  loadli.w r17,  -500(r30)
0019c0  1f49f000  addli r18, zero, 124
0019c4  63011ff7  loadli.w r2,  -1144(r30)
0019c8  9f054001  addli r11, zero, 160
0019cc  2b080900  lui r16, 144
0019d0  0b992839  mod.s r18, r17, r18
0019d4  8b15b138  mod.s r11, r2, r11
0019d8  1f110100  addli r2, r2, 1
0019dc  e7082ff6  storeli.w r2, -1144(r30)
0019e0  1b31d900  slli r2, r18, 13
0019e4  1f990800  addli r18, r17, 1
0019e8  9bb5d500  slli r11, r11, 13
0019ec  8b1c0111  add.s r25, r2, r16
0019f0  1f780000  addli r16, zero, 7
0019f4  e7402ffd  storeli.w r18, -500(r30)
0019f8  b79b0901  beq r19, r16, 740
0019fc  1f690000  addli r18, zero, 6
001a00  bbcc2901  bneq r19, r18, 816
001a04  1f082000  addli r16, zero, 16
001a08  9f07dfec  addli r15, r30, -2456
001a0c  803a0002  core_id r21
001a10  17b50603  sll.d r[11:12], r[14:15], r16
001a14  ebd60700  load.d r[14:15], 0(r15)
001a18  9f770000  addli r15, zero, 7
001a1c  7d900700  xwait r15, 0
001a20  0ba5a610  add.ul r[11:12], r[14:15], r[11:12]
001a24  9f36f000  addli r13, zero, 123
001a28  bfd41601  blt.s r13, r17, 308
001a2c  9f580000  addli r17, zero, 5
001a30  1f190000  addli r18, zero, 1
001a34  1f270000  addli r14, zero, 2
001a38  9f360000  addli r13, zero, 3
001a3c  1d800800  lock zero, r17
001a40  15000014  dma_cfg zero, zero, zero, 10
001a44  15002015  dma_cfg zero, zero, r18, 10
001a48  1500e014  dma_cfg zero, zero, r14, 10
001a4c  1500d014  dma_cfg zero, zero, r13, 10
001a50  9f660000  addli r13, zero, 6
001a54  15007015  dma_cfg zero, zero, r23, 10
001a58  15001015  dma_cfg zero, zero, r17, 10
001a5c  1500d014  dma_cfg zero, zero, r13, 10
001a60  9f061000  addli r13, zero, 8
001a64  1500f014  dma_cfg zero, zero, r15, 10
001a68  1500d014  dma_cfg zero, zero, r13, 10
001a6c  9f161000  addli r13, zero, 9
001a70  1500d014  dma_cfg zero, zero, r13, 10
001a74  9f261000  addli r13, zero, 10
001a78  1500d014  dma_cfg zero, zero, r13, 10
001a7c  9f361000  addli r13, zero, 11
001a80  1500d014  dma_cfg zero, zero, r13, 10
001a84  9f461000  addli r13, zero, 12
001a88  1500d014  dma_cfg zero, zero, r13, 10
001a8c  9f561000  addli r13, zero, 13
001a90  1500d014  dma_cfg zero, zero, r13, 10
001a94  9f661000  addli r13, zero, 14
001a98  1500d014  dma_cfg zero, zero, r13, 10
001a9c  9f761000  addli r13, zero, 15
001aa0  1500d014  dma_cfg zero, zero, r13, 10
001aa4  9f162000  addli r13, zero, 17
001aa8  15000015  dma_cfg zero, zero, r16, 10
001aac  1500d014  dma_cfg zero, zero, r13, 10
001ab0  9f262000  addli r13, zero, 18
001ab4  1500d014  dma_cfg zero, zero, r13, 10
001ab8  9f362000  addli r13, zero, 19
001abc  1500d014  dma_cfg zero, zero, r13, 10
001ac0  9f462000  addli r13, zero, 20
001ac4  1500d014  dma_cfg zero, zero, r13, 10
001ac8  9f562000  addli r13, zero, 21
001acc  1500d014  dma_cfg zero, zero, r13, 10
001ad0  9f662000  addli r13, zero, 22
001ad4  1500d014  dma_cfg zero, zero, r13, 10
001ad8  9f762000  addli r13, zero, 23
001adc  1500d014  dma_cfg zero, zero, r13, 10
001ae0  9f063000  addli r13, zero, 24
001ae4  1500d014  dma_cfg zero, zero, r13, 10
001ae8  9f163000  addli r13, zero, 25
001aec  1500d014  dma_cfg zero, zero, r13, 10
001af0  9f263000  addli r13, zero, 26
001af4  1500d014  dma_cfg zero, zero, r13, 10
001af8  9f363000  addli r13, zero, 27
001afc  1500d014  dma_cfg zero, zero, r13, 10
001b00  9f463000  addli r13, zero, 28
001b04  1500d014  dma_cfg zero, zero, r13, 10
001b08  9f563000  addli r13, zero, 29
001b0c  1500d014  dma_cfg zero, zero, r13, 10
001b10  9f663000  addli r13, zero, 30
001b14  1500d014  dma_cfg zero, zero, r13, 10
001b18  9f763000  addli r13, zero, 31
001b1c  1500d014  dma_cfg zero, zero, r13, 10
001b20  9f068000  addli r13, zero, 64
001b24  15090900  dma_cfg r18, r18, zero, 0
001b28  15090002  dma_cfg r18, zero, zero, 1
001b2c  15000004  dma_cfg zero, zero, zero, 2
001b30  950cd006  dma_cfg r25, zero, r13, 3
001b34  9f060001  addli r13, zero, 128
001b38  9506e008  dma_cfg r13, zero, r14, 4
001b3c  9f064000  addli r13, zero, 32
001b40  1f070002  addli r14, zero, 256
001b44  1507d00a  dma_cfg r14, zero, r13, 5
001b48  15000010  dma_cfg zero, zero, zero, 8
001b4c  35000000  dma_run zero
001b50  1500200b  dma_cfg zero, zero, r18, 5
001b54  15000010  dma_cfg zero, zero, zero, 8
001b58  1d900800  unlock r17
001b5c  ab060900  lui r13, 144
001b60  1f470000  addli r14, zero, 4
001b64  1f1a0000  addli r20, zero, 1
001b68  1f098000  addli r18, zero, 64
001b6c  9f280000  addli r17, zero, 2
001b70  9f094000  addli r19, zero, 32
001b74  1f0b0002  addli r22, zero, 256
001b78  9b960604  ori r13, r13, 64
001b7c  1d000700  lock zero, r14
001b80  150a0a00  dma_cfg r20, r20, zero, 0
001b84  0b11d110  add.s r2, r2, r13
001b88  15800504  dma_cfg zero, r11, zero, 2
001b8c  9f560000  addli r13, zero, 5
001b90  15012507  dma_cfg r2, r10, r18, 3
001b94  1f010001  addli r2, zero, 128
001b98  1f050010  addli r10, zero, 2048
001b9c  9f650000  addli r11, zero, 6
001ba0  15011909  dma_cfg r2, r18, r17, 4
001ba4  150b350b  dma_cfg r22, r10, r19, 5
001ba8  1f350000  addli r10, zero, 3
001bac  15000010  dma_cfg zero, zero, zero, 8
001bb0  35000000  dma_run zero
001bb4  1500400b  dma_cfg zero, zero, r20, 5
001bb8  15000010  dma_cfg zero, zero, zero, 8
001bbc  1d100700  unlock r14
001bc0  1d800600  lock zero, r13
001bc4  15000014  dma_cfg zero, zero, zero, 10
001bc8  15004015  dma_cfg zero, zero, r20, 10
001bcc  15001015  dma_cfg zero, zero, r17, 10
001bd0  1500a014  dma_cfg zero, zero, r10, 10
001bd4  1f051000  addli r10, zero, 8
001bd8  1500e014  dma_cfg zero, zero, r14, 10
001bdc  1500d014  dma_cfg zero, zero, r13, 10
001be0  1500b014  dma_cfg zero, zero, r11, 10
001be4  1500f014  dma_cfg zero, zero, r15, 10
001be8  9f072000  addli r15, zero, 16
001bec  1500a014  dma_cfg zero, zero, r10, 10
001bf0  1f151000  addli r10, zero, 9
001bf4  1500a014  dma_cfg zero, zero, r10, 10
001bf8  1f251000  addli r10, zero, 10
001bfc  1500a014  dma_cfg zero, zero, r10, 10
001c00  1f351000  addli r10, zero, 11
001c04  1500a014  dma_cfg zero, zero, r10, 10
001c08  1f451000  addli r10, zero, 12
001c0c  1500a014  dma_cfg zero, zero, r10, 10
001c10  1f551000  addli r10, zero, 13
001c14  1500a014  dma_cfg zero, zero, r10, 10
001c18  1f651000  addli r10, zero, 14
001c1c  1500a014  dma_cfg zero, zero, r10, 10
001c20  1f751000  addli r10, zero, 15
001c24  1500a014  dma_cfg zero, zero, r10, 10
001c28  1f152000  addli r10, zero, 17
001c2c  15000015  dma_cfg zero, zero, r16, 10
001c30  1500a014  dma_cfg zero, zero, r10, 10
001c34  1f252000  addli r10, zero, 18
001c38  1500a014  dma_cfg zero, zero, r10, 10
001c3c  1f352000  addli r10, zero, 19
001c40  1500a014  dma_cfg zero, zero, r10, 10
001c44  1f452000  addli r10, zero, 20
001c48  1500a014  dma_cfg zero, zero, r10, 10
001c4c  1f552000  addli r10, zero, 21
001c50  1500a014  dma_cfg zero, zero, r10, 10
001c54  1f652000  addli r10, zero, 22
001c58  1500a014  dma_cfg zero, zero, r10, 10
001c5c  1f752000  addli r10, zero, 23
001c60  1500a014  dma_cfg zero, zero, r10, 10
001c64  1f053000  addli r10, zero, 24
001c68  1500a014  dma_cfg zero, zero, r10, 10
001c6c  1f153000  addli r10, zero, 25
001c70  1500a014  dma_cfg zero, zero, r10, 10
001c74  1f253000  addli r10, zero, 26
001c78  1500a014  dma_cfg zero, zero, r10, 10
001c7c  1f353000  addli r10, zero, 27
001c80  1500a014  dma_cfg zero, zero, r10, 10
001c84  1f453000  addli r10, zero, 28
001c88  1500a014  dma_cfg zero, zero, r10, 10
001c8c  1f553000  addli r10, zero, 29
001c90  1500a014  dma_cfg zero, zero, r10, 10
001c94  1f653000  addli r10, zero, 30
001c98  1500a014  dma_cfg zero, zero, r10, 10
001c9c  1f753000  addli r10, zero, 31
001ca0  1500a014  dma_cfg zero, zero, r10, 10
001ca4  150a0a00  dma_cfg r20, r20, zero, 0
001ca8  150a0002  dma_cfg r20, zero, zero, 1
001cac  15000004  dma_cfg zero, zero, zero, 2
001cb0  950c2007  dma_cfg r25, zero, r18, 3
001cb4  15011009  dma_cfg r2, zero, r17, 4
001cb8  150b300b  dma_cfg r22, zero, r19, 5
001cbc  15000010  dma_cfg zero, zero, zero, 8
001cc0  35000000  dma_run zero
001cc4  1500400b  dma_cfg zero, zero, r20, 5
001cc8  1f5a0000  addli r20, zero, 5
001ccc  15000010  dma_cfg zero, zero, zero, 8
001cd0  1d900600  unlock r13
001cd4  7d800500  xsignal r11, 0
001cd8  5b52ffff  j -1392
001cdc  1f610000  addli r2, zero, 6
001ce0  9f280000  addli r17, zero, 2
001ce4  1f054000  addli r10, zero, 32
001ce8  803a0002  core_id r21
001cec  1f470000  addli r14, zero, 4
001cf0  7d100100  xwait r2, 0
001cf4  1f111000  addli r2, zero, 9
001cf8  7d100100  xwait r2, 0
001cfc  1d000000  lock zero, zero
001d00  1f018000  addli r2, zero, 64
001d04  81080000  ds_cfg r17, zero, 0
001d08  01010002  ds_cfg r2, zero, 1
001d0c  0105001c  ds_cfg r10, zero, 14
001d10  0101001a  ds_cfg r2, zero, 13
001d14  1f710000  addli r2, zero, 7
001d18  c185ac04  shuffle_coa r11, r25, r10, 2
001d1c  1d100000  unlock zero
001d20  7d000100  xsignal r2, 0
001d24  1f011000  addli r2, zero, 8
001d28  7d000100  xsignal r2, 0
001d2c  db47ffff  j -1476
001d30  1b011c00  andi r2, r24, 1
001d34  80360002  core_id r13
001d38  1f470000  addli r14, zero, 4
001d3c  bbf0e600  bneq r13, r14, 60
001d40  9f061000  addli r13, zero, 8
001d44  7d100700  xwait r14, 0
001d48  9f084000  addli r17, zero, 32
001d4c  7d900600  xwait r13, 0
001d50  9f160000  addli r13, zero, 1
001d54  1d800600  lock zero, r13
001d58  9f068000  addli r13, zero, 64
001d5c  89861801  mm_cfg r13, r17, r17, 0
001d60  9f160000  addli r13, zero, 1
001d64  9f280000  addli r17, zero, 2
001d68  8988d804  mm_cfg r17, r17, r13, 2
001d6c  37600600  beq r12, zero, 24
001d70  a914b510  mm_acc r9, r10, r11, 8
001d74  db020000  j 20
001d78  9f280000  addli r17, zero, 2
001d7c  bb5701fc  bneq r2, zero, -1548
001d80  5b080000  j 64
001d84  a904b510  mm r9, r10, r11, 8
001d88  1f550000  addli r10, zero, 5
001d8c  1d900600  unlock r13
001d90  1f5a0000  addli r20, zero, 5
001d94  7d000500  xsignal r10, 0
001d98  1f151000  addli r10, zero, 9
001d9c  7d000500  xsignal r10, 0
001da0  3b4701fc  bneq r2, zero, -1584
001da4  5b010000  j 8
001da8  3be0ea00  bneq r21, r14, 24
001dac  1f211000  addli r2, zero, 10
001db0  e7060fec  storeli.w zero, -2456(r30)
001db4  80380002  core_id r17
001db8  7d000100  xsignal r2, 0
001dbc  5b060000  j 48
001dc0  80380002  core_id r17
001dc4  1f310000  addli r2, zero, 3
001dc8  bb802800  bneq r17, r2, 32
001dcc  1f211000  addli r2, zero, 10
001dd0  7d100100  xwait r2, 0
001dd4  1f110000  addli r2, zero, 1
001dd8  e7062fec  storeli.w r2, -2456(r30)
001ddc  1f511000  addli r2, zero, 13
001de0  7d100100  xwait r2, 0
001de4  5b010000  j 8
001de8  e7060fec  storeli.w zero, -2456(r30)
001dec  1f71f001  addli r2, zero, 255
001df0  3d000000  xfence
001df4  9f560000  addli r13, zero, 5
001df8  00a00300  mfence { lm, sm, gm }
001dfc  80220104  csr_set csr5, r2
001e00  1f717000  addli r2, zero, 63
001e04  00e00200  sync_core
001e08  b3030128  zext_int2long r[8:9], r2
001e0c  bbf70800  bneq r17, zero, 508
001e10  3d000000  xfence
001e14  33050028  zext_int2long r[11:12], zero
001e18  00a00300  mfence { lm, sm, gm }
001e1c  5b040000  j 32
001e20  1f310000  addli r2, zero, 3
001e24  33050128  zext_int2long r[11:12], r2
001e28  1f01ffec  addli r2, r30, -2440
001e2c  6b560100  load.d r[13:14], 0(r2)
001e30  1321a604  setlt.ul r2, r[13:14], r[11:12]
001e34  27150600  addli.d r[11:12], r[13:14], 1
001e38  37070100  beq r2, zero, 448
001e3c  1f610000  addli r2, zero, 6
001e40  1f06ffec  addli r12, r30, -2440
001e44  97382502  sll.d r[18:19], r[11:12], r2
001e48  7330a600  store.d r[11:12], 0(r12)
001e4c  bb419300  bneq r6, r9, 112
001e50  33050028  zext_int2long r[11:12], zero
001e54  5b030000  j 24
001e58  93267504  setlt.ul r13, r[11:12], r[8:9]
001e5c  0b112310  add.s r2, r6, r2
001e60  27150500  addli.d r[11:12], r[11:12], 1
001e64  7360c100  stores.w r12, 0(r2)
001e68  b7ee06fe  beq r13, zero, -72
001e6c  0b261511  add.ul r[13:14], r[11:12], r[18:19]
001e70  1b312600  slli r2, r12, 2
001e74  0b962410  add.s r12, r9, r2
001e78  ef460600  loads.w r13, 0(r12)
001e7c  1787b601  and r14, r13, r27
001e80  1386e004  setlt.u r12, r1, r14
001e84  3b500600  bneq r12, zero, 20
001e88  1f860600  addli r12, r13, 0
001e8c  1387e204  setlt.u r14, r5, r14
001e90  3b2f07fe  bneq r14, zero, -56
001e94  5b020000  j 16
001e98  1796c601  or r12, r13, r28
001e9c  1387e204  setlt.u r14, r5, r14
001ea0  bb6e07fe  bneq r14, zero, -72
001ea4  1bc60601  srli r12, r13, 16
001ea8  1b061600  andi r12, r12, 1
001eac  0b96c610  add.s r12, r13, r12
001eb0  0b163610  add.s r12, r12, r3
001eb4  17064600  and r12, r12, r4
001eb8  5bf4ffff  j -96
001ebc  330c0028  zext_int2long r[25:26], zero
001ec0  db050000  j 44
001ec4  1f071fed  addli r14, r30, -2424
001ec8  274c0c00  addli.d r[25:26], r[25:26], 4
001ecc  0b15a310  add.s r10, r6, r10
001ed0  6b560700  load.d r[13:14], 0(r14)
001ed4  7366b500  stores.w r11, 12(r10)
001ed8  73642500  stores.w r2, 8(r10)
001edc  73627501  stores.w r23, 4(r10)
001ee0  7360a501  stores.w r26, 0(r10)
001ee4  1326cc00  seteq.d r12, r[25:26], r[13:14]
001ee8  bb6c06fe  bneq r12, zero, -200
001eec  0b251c11  add.ul r[11:12], r[25:26], r[18:19]
001ef0  1b352500  slli r10, r10, 2
001ef4  0b9da410  add.s r26, r9, r10
001ef8  6f46cd00  loads.w r12, 12(r26)
001efc  1707b601  and r14, r12, r27
001f00  1381e004  setlt.u r2, r1, r14
001f04  3b300100  bneq r2, zero, 12
001f08  9f050600  addli r11, r12, 0
001f0c  5b010000  j 8
001f10  9715c601  or r11, r12, r28
001f14  6f4b8d00  loads.w r22, 8(r26)
001f18  9706bb01  and r13, r22, r27
001f1c  1381d004  setlt.u r2, r1, r13
001f20  3b300100  bneq r2, zero, 12
001f24  1f010b00  addli r2, r22, 0
001f28  5b010000  j 8
001f2c  1711cb01  or r2, r22, r28
001f30  ef494d00  loads.w r19, 4(r26)
001f34  9787b901  and r15, r19, r27
001f38  1388f004  setlt.u r16, r1, r15
001f3c  3b300800  bneq r16, zero, 12
001f40  9f8b0900  addli r23, r19, 0
001f44  5b010000  j 8
001f48  979bc901  or r23, r19, r28
001f4c  6f480d00  loads.w r16, 0(r26)
001f50  170ab801  and r20, r16, r27
001f54  938a4005  setlt.u r21, r1, r20
001f58  3bd00a00  bneq r21, zero, 20
001f5c  1f0d0800  addli r26, r16, 0
001f60  138a4205  setlt.u r20, r5, r20
001f64  37500a00  beq r20, zero, 20
001f68  db040000  j 36
001f6c  171dc801  or r26, r16, r28
001f70  138a4205  setlt.u r20, r5, r20
001f74  3b600a00  bneq r20, zero, 24
001f78  1b4a0801  srli r20, r16, 16
001f7c  1b0a1a00  andi r20, r20, 1
001f80  0b184811  add.s r16, r16, r20
001f84  0b183810  add.s r16, r16, r3
001f88  170d4800  and r26, r16, r4
001f8c  9387f204  setlt.u r15, r5, r15
001f90  37e00700  beq r15, zero, 24
001f94  9386d204  setlt.u r13, r5, r13
001f98  b7b00600  beq r13, zero, 44
001f9c  9386e204  setlt.u r13, r5, r14
001fa0  bb9c06fe  bneq r13, zero, -220
001fa4  db070000  j 60
001fa8  9bc70901  srli r15, r19, 16
001fac  9b871700  andi r15, r15, 1
001fb0  8b97f910  add.s r15, r19, r15
001fb4  8b973710  add.s r15, r15, r3
001fb8  978b4700  and r23, r15, r4
001fbc  9386d204  setlt.u r13, r5, r13
001fc0  3bff06fe  bneq r13, zero, -36
001fc4  1b410b01  srli r2, r22, 16
001fc8  1b011100  andi r2, r2, 1
001fcc  0b112b10  add.s r2, r22, r2
001fd0  0b113110  add.s r2, r2, r3
001fd4  17014100  and r2, r2, r4
001fd8  9386e204  setlt.u r13, r5, r14
001fdc  bbab06fe  bneq r13, zero, -280
001fe0  9b450601  srli r11, r12, 16
001fe4  9b851500  andi r11, r11, 1
001fe8  8b15b610  add.s r11, r12, r11
001fec  8b953510  add.s r11, r11, r3
001ff0  97854500  and r11, r11, r4
001ff4  5bdaffff  j -304
001ff8  80380002  core_id r17
001ffc  9f560000  addli r13, zero, 5
002000  1f470000  addli r14, zero, 4
002004  00200100  mfence { sm }
002008  1f210000  addli r2, zero, 2
00200c  1f052000  addli r10, zero, 16
002010  37982800  beq r17, r2, 516
002014  1f110000  addli r2, zero, 1
002018  bbff2800  bneq r17, r2, 1020
00201c  33050028  zext_int2long r[11:12], zero
002020  1f01efec  addli r2, r30, -2448
002024  7330a100  store.d r[11:12], 0(r2)
002028  33050728  zext_int2long r[11:12], r14
00202c  3d000000  xfence
002030  00a00300  mfence { lm, sm, gm }
002034  5b040000  j 32
002038  1f710000  addli r2, zero, 7
00203c  33050128  zext_int2long r[11:12], r2
002040  1f01ffec  addli r2, r30, -2440
002044  6b560100  load.d r[13:14], 0(r2)
002048  1321a604  setlt.ul r2, r[13:14], r[11:12]
00204c  27150600  addli.d r[11:12], r[13:14], 1
002050  b74e0100  beq r2, zero, 944
002054  1f610000  addli r2, zero, 6
002058  1f06ffec  addli r12, r30, -2440
00205c  173c2502  sll.d r[25:26], r[11:12], r2
002060  7330a600  store.d r[11:12], 0(r12)
002064  bb419300  bneq r6, r9, 112
002068  33050028  zext_int2long r[11:12], zero
00206c  5b030000  j 24
002070  93267504  setlt.ul r13, r[11:12], r[8:9]
002074  0b112310  add.s r2, r6, r2
002078  27150500  addli.d r[11:12], r[11:12], 1
00207c  7360c100  stores.w r12, 0(r2)
002080  b7ee06fe  beq r13, zero, -72
002084  0b268511  add.ul r[13:14], r[11:12], r[25:26]
002088  1b312600  slli r2, r12, 2
00208c  0b962410  add.s r12, r9, r2
002090  ef460600  loads.w r13, 0(r12)
002094  1787b601  and r14, r13, r27
002098  1386e004  setlt.u r12, r1, r14
00209c  3b500600  bneq r12, zero, 20
0020a0  1f860600  addli r12, r13, 0
0020a4  1387e204  setlt.u r14, r5, r14
0020a8  3b2f07fe  bneq r14, zero, -56
0020ac  5b020000  j 16
0020b0  1796c601  or r12, r13, r28
0020b4  1387e204  setlt.u r14, r5, r14
0020b8  bb6e07fe  bneq r14, zero, -72
0020bc  1bc60601  srli r12, r13, 16
0020c0  1b061600  andi r12, r12, 1
0020c4  0b96c610  add.s r12, r13, r12
0020c8  0b163610  add.s r12, r12, r3
0020cc  17064600  and r12, r12, r4
0020d0  5bf4ffff  j -96
0020d4  1f01efec  addli r2, r30, -2448
0020d8  eb570100  load.d r[16:17], 0(r2)
0020dc  db050000  j 44
0020e0  1f011fed  addli r2, r30, -2424
0020e4  a7c70700  addli.d r[16:17], r[16:17], 4
0020e8  0b16c310  add.s r12, r6, r12
0020ec  eb580100  load.d r[18:19], 0(r2)
0020f0  7366e600  stores.w r14, 12(r12)
0020f4  7364a600  stores.w r10, 8(r12)
0020f8  73626601  stores.w r22, 4(r12)
0020fc  7360b600  stores.w r11, 0(r12)
002100  13a11701  seteq.d r2, r[16:17], r[18:19]
002104  bb5c01fe  bneq r2, zero, -204
002108  0ba58711  add.ul r[11:12], r[16:17], r[25:26]
00210c  1b362500  slli r12, r10, 2
002110  8b95c410  add.s r11, r9, r12
002114  6fcdc500  loads.w r26, 12(r11)
002118  1701bd01  and r2, r26, r27
00211c  13852004  setlt.u r10, r1, r2
002120  3b300500  bneq r10, zero, 12
002124  1f070d00  addli r14, r26, 0
002128  5b010000  j 8
00212c  1717cd01  or r14, r26, r28
002130  efc98500  loads.w r19, 8(r11)
002134  9786b901  and r13, r19, r27
002138  1385d004  setlt.u r10, r1, r13
00213c  3b300500  bneq r10, zero, 12
002140  1f850900  addli r10, r19, 0
002144  5b010000  j 8
002148  1795c901  or r10, r19, r28
00214c  efcb4500  loads.w r23, 4(r11)
002150  9788bb01  and r17, r23, r27
002154  13891005  setlt.u r18, r1, r17
002158  3b300900  bneq r18, zero, 12
00215c  1f8b0b00  addli r22, r23, 0
002160  5b010000  j 8
002164  179bcb01  or r22, r23, r28
002168  6fc90500  loads.w r18, 0(r11)
00216c  170ab901  and r20, r18, r27
002170  93854005  setlt.u r11, r1, r20
002174  3bd00500  bneq r11, zero, 20
002178  9f050900  addli r11, r18, 0
00217c  138a4205  setlt.u r20, r5, r20
002180  37500a00  beq r20, zero, 20
002184  db040000  j 36
002188  9715c901  or r11, r18, r28
00218c  138a4205  setlt.u r20, r5, r20
002190  3b600a00  bneq r20, zero, 24
002194  9b450901  srli r11, r18, 16
002198  9b851500  andi r11, r11, 1
00219c  8b15b910  add.s r11, r18, r11
0021a0  8b953510  add.s r11, r11, r3
0021a4  97854500  and r11, r11, r4
0021a8  93881205  setlt.u r17, r5, r17
0021ac  37e00800  beq r17, zero, 24
0021b0  9386d204  setlt.u r13, r5, r13
0021b4  b7b00600  beq r13, zero, 44
0021b8  13812204  setlt.u r2, r5, r2
0021bc  bb1c01fe  bneq r2, zero, -220
0021c0  db070000  j 60
0021c4  9bc80b01  srli r17, r23, 16
0021c8  9b881800  andi r17, r17, 1
0021cc  8b981b11  add.s r17, r23, r17
0021d0  8b983810  add.s r17, r17, r3
0021d4  178b4800  and r22, r17, r4
0021d8  9386d204  setlt.u r13, r5, r13
0021dc  3bff06fe  bneq r13, zero, -36
0021e0  1bc50901  srli r10, r19, 16
0021e4  1b051500  andi r10, r10, 1
0021e8  0b95a910  add.s r10, r19, r10
0021ec  0b153510  add.s r10, r10, r3
0021f0  17054500  and r10, r10, r4
0021f4  13812204  setlt.u r2, r5, r2
0021f8  bb2b01fe  bneq r2, zero, -280
0021fc  1b410d01  srli r2, r26, 16
002200  1b011100  andi r2, r2, 1
002204  0b112d10  add.s r2, r26, r2
002208  0b113110  add.s r2, r2, r3
00220c  17074100  and r14, r2, r4
002210  5bdaffff  j -304
002214  1f011000  addli r2, zero, 8
002218  3d000000  xfence
00221c  00a00300  mfence { lm, sm, gm }
002220  33050128  zext_int2long r[11:12], r2
002224  5b040000  j 32
002228  1f311000  addli r2, zero, 11
00222c  33050128  zext_int2long r[11:12], r2
002230  1f01ffec  addli r2, r30, -2440
002234  6b560100  load.d r[13:14], 0(r2)
002238  1321a604  setlt.ul r2, r[13:14], r[11:12]
00223c  27150600  addli.d r[11:12], r[13:14], 1
002240  37070100  beq r2, zero, 448
002244  1f610000  addli r2, zero, 6
002248  1f06ffec  addli r12, r30, -2440
00224c  97382502  sll.d r[18:19], r[11:12], r2
002250  7330a600  store.d r[11:12], 0(r12)
002254  bb419300  bneq r6, r9, 112
002258  33050028  zext_int2long r[11:12], zero
00225c  5b030000  j 24
002260  93267504  setlt.ul r13, r[11:12], r[8:9]
002264  0b112310  add.s r2, r6, r2
002268  27150500  addli.d r[11:12], r[11:12], 1
00226c  7360c100  stores.w r12, 0(r2)
002270  b7ee06fe  beq r13, zero, -72
002274  0b261511  add.ul r[13:14], r[11:12], r[18:19]
002278  1b312600  slli r2, r12, 2
00227c  0b962410  add.s r12, r9, r2
002280  ef460600  loads.w r13, 0(r12)
002284  1787b601  and r14, r13, r27
002288  1386e004  setlt.u r12, r1, r14
00228c  3b500600  bneq r12, zero, 20
002290  1f860600  addli r12, r13, 0
002294  1387e204  setlt.u r14, r5, r14
002298  3b2f07fe  bneq r14, zero, -56
00229c  5b020000  j 16
0022a0  1796c601  or r12, r13, r28
0022a4  1387e204  setlt.u r14, r5, r14
0022a8  bb6e07fe  bneq r14, zero, -72
0022ac  1bc60601  srli r12, r13, 16
0022b0  1b061600  andi r12, r12, 1
0022b4  0b96c610  add.s r12, r13, r12
0022b8  0b163610  add.s r12, r12, r3
0022bc  17064600  and r12, r12, r4
0022c0  5bf4ffff  j -96
0022c4  330c0028  zext_int2long r[25:26], zero
0022c8  db050000  j 44
0022cc  1f071fed  addli r14, r30, -2424
0022d0  274c0c00  addli.d r[25:26], r[25:26], 4
0022d4  0b15a310  add.s r10, r6, r10
0022d8  6b560700  load.d r[13:14], 0(r14)
0022dc  7366b500  stores.w r11, 12(r10)
0022e0  73642500  stores.w r2, 8(r10)
0022e4  73623501  stores.w r19, 4(r10)
0022e8  7360a501  stores.w r26, 0(r10)
0022ec  1326cc00  seteq.d r12, r[25:26], r[13:14]
0022f0  bb6c06fe  bneq r12, zero, -200
0022f4  0b251c11  add.ul r[11:12], r[25:26], r[18:19]
0022f8  1b352500  slli r10, r10, 2
0022fc  0b9da410  add.s r26, r9, r10
002300  6f46cd00  loads.w r12, 12(r26)
002304  1707b601  and r14, r12, r27
002308  1381e004  setlt.u r2, r1, r14
00230c  3b300100  bneq r2, zero, 12
002310  9f050600  addli r11, r12, 0
002314  5b010000  j 8
002318  9715c601  or r11, r12, r28
00231c  6f4b8d00  loads.w r22, 8(r26)
002320  9706bb01  and r13, r22, r27
002324  1381d004  setlt.u r2, r1, r13
002328  3b300100  bneq r2, zero, 12
00232c  1f010b00  addli r2, r22, 0
002330  5b010000  j 8
002334  1711cb01  or r2, r22, r28
002338  ef4b4d00  loads.w r23, 4(r26)
00233c  9787bb01  and r15, r23, r27
002340  1388f004  setlt.u r16, r1, r15
002344  3b300800  bneq r16, zero, 12
002348  9f890b00  addli r19, r23, 0
00234c  5b010000  j 8
002350  9799cb01  or r19, r23, r28
002354  6f480d00  loads.w r16, 0(r26)
002358  170ab801  and r20, r16, r27
00235c  938a4005  setlt.u r21, r1, r20
002360  3bd00a00  bneq r21, zero, 20
002364  1f0d0800  addli r26, r16, 0
002368  138a4205  setlt.u r20, r5, r20
00236c  37500a00  beq r20, zero, 20
002370  db040000  j 36
002374  171dc801  or r26, r16, r28
002378  138a4205  setlt.u r20, r5, r20
00237c  3b600a00  bneq r20, zero, 24
002380  1b4a0801  srli r20, r16, 16
002384  1b0a1a00  andi r20, r20, 1
002388  0b184811  add.s r16, r16, r20
00238c  0b183810  add.s r16, r16, r3
002390  170d4800  and r26, r16, r4
002394  9387f204  setlt.u r15, r5, r15
002398  37e00700  beq r15, zero, 24
00239c  9386d204  setlt.u r13, r5, r13
0023a0  b7b00600  beq r13, zero, 44
0023a4  9386e204  setlt.u r13, r5, r14
0023a8  bb9c06fe  bneq r13, zero, -220
0023ac  db070000  j 60
0023b0  9bc70b01  srli r15, r23, 16
0023b4  9b871700  andi r15, r15, 1
0023b8  8b97fb10  add.s r15, r23, r15
0023bc  8b973710  add.s r15, r15, r3
0023c0  97894700  and r19, r15, r4
0023c4  9386d204  setlt.u r13, r5, r13
0023c8  3bff06fe  bneq r13, zero, -36
0023cc  1b410b01  srli r2, r22, 16
0023d0  1b011100  andi r2, r2, 1
0023d4  0b112b10  add.s r2, r22, r2
0023d8  0b113110  add.s r2, r2, r3
0023dc  17014100  and r2, r2, r4
0023e0  9386e204  setlt.u r13, r5, r14
0023e4  bbab06fe  bneq r13, zero, -280
0023e8  9b450601  srli r11, r12, 16
0023ec  9b851500  andi r11, r11, 1
0023f0  8b15b610  add.s r11, r12, r11
0023f4  8b953510  add.s r11, r11, r3
0023f8  97854500  and r11, r11, r4
0023fc  5bdaffff  j -304
002400  80380002  core_id r17
002404  9f560000  addli r13, zero, 5
002408  1f470000  addli r14, zero, 4
00240c  1f052000  addli r10, zero, 16
002410  00200100  mfence { sm }
002414  6301dfec  loadli.w r2,  -2456(r30)
002418  3b280100  bneq r2, zero, 520
00241c  37a0e802  beq r17, r14, 1032
002420  1f710000  addli r2, zero, 7
002424  37882802  beq r17, r2, 1536
002428  1f610000  addli r2, zero, 6
00242c  b79f2802  beq r17, r2, 2020
002430  3bf7d804  bneq r17, r13, 2524
002434  1f412000  addli r2, zero, 20
002438  3d000000  xfence
00243c  00a00300  mfence { lm, sm, gm }
002440  33050128  zext_int2long r[11:12], r2
002444  5b040000  j 32
002448  1f712000  addli r2, zero, 23
00244c  33050128  zext_int2long r[11:12], r2
002450  1f01ffec  addli r2, r30, -2440
002454  6b560100  load.d r[13:14], 0(r2)
002458  1321a604  setlt.ul r2, r[13:14], r[11:12]
00245c  27150600  addli.d r[11:12], r[13:14], 1
002460  37760104  beq r2, zero, 2460
002464  1f610000  addli r2, zero, 6
002468  1f06ffec  addli r12, r30, -2440
00246c  97382502  sll.d r[18:19], r[11:12], r2
002470  7330a600  store.d r[11:12], 0(r12)
002474  bb419300  bneq r6, r9, 112
002478  33050028  zext_int2long r[11:12], zero
00247c  5b030000  j 24
002480  93267504  setlt.ul r13, r[11:12], r[8:9]
002484  0b112310  add.s r2, r6, r2
002488  27150500  addli.d r[11:12], r[11:12], 1
00248c  7360c100  stores.w r12, 0(r2)
002490  b7ee06fe  beq r13, zero, -72
002494  0b261511  add.ul r[13:14], r[11:12], r[18:19]
002498  1b312600  slli r2, r12, 2
00249c  0b962410  add.s r12, r9, r2
0024a0  ef460600  loads.w r13, 0(r12)
0024a4  1787b601  and r14, r13, r27
0024a8  1386e004  setlt.u r12, r1, r14
0024ac  3b500600  bneq r12, zero, 20
0024b0  1f860600  addli r12, r13, 0
0024b4  1387e204  setlt.u r14, r5, r14
0024b8  3b2f07fe  bneq r14, zero, -56
0024bc  5b020000  j 16
0024c0  1796c601  or r12, r13, r28
0024c4  1387e204  setlt.u r14, r5, r14
0024c8  bb6e07fe  bneq r14, zero, -72
0024cc  1bc60601  srli r12, r13, 16
0024d0  1b061600  andi r12, r12, 1
0024d4  0b96c610  add.s r12, r13, r12
0024d8  0b163610  add.s r12, r12, r3
0024dc  17064600  and r12, r12, r4
0024e0  5bf4ffff  j -96
0024e4  330c0028  zext_int2long r[25:26], zero
0024e8  db050000  j 44
0024ec  1f011fed  addli r2, r30, -2424
0024f0  274c0c00  addli.d r[25:26], r[25:26], 4
0024f4  0b15a310  add.s r10, r6, r10
0024f8  6b560100  load.d r[13:14], 0(r2)
0024fc  7366b500  stores.w r11, 12(r10)
002500  7364e500  stores.w r14, 8(r10)
002504  73623501  stores.w r19, 4(r10)
002508  7360a501  stores.w r26, 0(r10)
00250c  1321cc00  seteq.d r2, r[25:26], r[13:14]
002510  bb6c01fe  bneq r2, zero, -200
002514  0b251c11  add.ul r[11:12], r[25:26], r[18:19]
002518  1b352500  slli r10, r10, 2
00251c  0b9da410  add.s r26, r9, r10
002520  6f46cd00  loads.w r12, 12(r26)
002524  1701b601  and r2, r12, r27
002528  93852004  setlt.u r11, r1, r2
00252c  3bb00500  bneq r11, zero, 12
002530  9f050600  addli r11, r12, 0
002534  5b010000  j 8
002538  9715c601  or r11, r12, r28
00253c  6f4b8d00  loads.w r22, 8(r26)
002540  9706bb01  and r13, r22, r27
002544  1387d004  setlt.u r14, r1, r13
002548  3b300700  bneq r14, zero, 12
00254c  1f070b00  addli r14, r22, 0
002550  5b010000  j 8
002554  1717cb01  or r14, r22, r28
002558  ef4b4d00  loads.w r23, 4(r26)
00255c  9787bb01  and r15, r23, r27
002560  1388f004  setlt.u r16, r1, r15
002564  3b300800  bneq r16, zero, 12
002568  9f890b00  addli r19, r23, 0
00256c  5b010000  j 8
002570  9799cb01  or r19, r23, r28
002574  6f480d00  loads.w r16, 0(r26)
002578  170ab801  and r20, r16, r27
00257c  938a4005  setlt.u r21, r1, r20
002580  3b810a00  bneq r21, zero, 64
002584  1f0d0800  addli r26, r16, 0
002588  138a4205  setlt.u r20, r5, r20
00258c  3b600a00  bneq r20, zero, 24
002590  1b4a0801  srli r20, r16, 16
002594  1b0a1a00  andi r20, r20, 1
002598  0b184811  add.s r16, r16, r20
00259c  0b183810  add.s r16, r16, r3
0025a0  170d4800  and r26, r16, r4
0025a4  9387f204  setlt.u r15, r5, r15
0025a8  b7a00700  beq r15, zero, 40
0025ac  9386d204  setlt.u r13, r5, r13
0025b0  b7f00600  beq r13, zero, 60
0025b4  13812204  setlt.u r2, r5, r2
0025b8  bb5c01fe  bneq r2, zero, -204
0025bc  db090000  j 76
0025c0  171dc801  or r26, r16, r28
0025c4  138a4205  setlt.u r20, r5, r20
0025c8  372f0afe  beq r20, zero, -56
0025cc  5bfbffff  j -40
0025d0  9bc70b01  srli r15, r23, 16
0025d4  9b871700  andi r15, r15, 1
0025d8  8b97fb10  add.s r15, r23, r15
0025dc  8b973710  add.s r15, r15, r3
0025e0  97894700  and r19, r15, r4
0025e4  9386d204  setlt.u r13, r5, r13
0025e8  3bbf06fe  bneq r13, zero, -52
0025ec  9b460b01  srli r13, r22, 16
0025f0  9b861600  andi r13, r13, 1
0025f4  8b16db10  add.s r13, r22, r13
0025f8  8b963610  add.s r13, r13, r3
0025fc  17874600  and r14, r13, r4
002600  13812204  setlt.u r2, r5, r2
002604  bb2b01fe  bneq r2, zero, -280
002608  1b410601  srli r2, r12, 16
00260c  1b011100  andi r2, r2, 1
002610  0b112610  add.s r2, r12, r2
002614  0b113110  add.s r2, r2, r3
002618  97054100  and r11, r2, r4
00261c  5bdaffff  j -304
002620  1f411000  addli r2, zero, 12
002624  3d000000  xfence
002628  00a00300  mfence { lm, sm, gm }
00262c  33050128  zext_int2long r[11:12], r2
002630  5b040000  j 32
002634  1f711000  addli r2, zero, 15
002638  33050128  zext_int2long r[11:12], r2
00263c  1f01ffec  addli r2, r30, -2440
002640  6b560100  load.d r[13:14], 0(r2)
002644  1321a604  setlt.ul r2, r[13:14], r[11:12]
002648  27150600  addli.d r[11:12], r[13:14], 1
00264c  37070100  beq r2, zero, 448
002650  1f610000  addli r2, zero, 6
002654  1f06ffec  addli r12, r30, -2440
002658  97382502  sll.d r[18:19], r[11:12], r2
00265c  7330a600  store.d r[11:12], 0(r12)
002660  bb419300  bneq r6, r9, 112
002664  33050028  zext_int2long r[11:12], zero
002668  5b030000  j 24
00266c  93267504  setlt.ul r13, r[11:12], r[8:9]
002670  0b112310  add.s r2, r6, r2
002674  27150500  addli.d r[11:12], r[11:12], 1
002678  7360c100  stores.w r12, 0(r2)
00267c  b7ee06fe  beq r13, zero, -72
002680  0b261511  add.ul r[13:14], r[11:12], r[18:19]
002684  1b312600  slli r2, r12, 2
002688  0b962410  add.s r12, r9, r2
00268c  ef460600  loads.w r13, 0(r12)
002690  1787b601  and r14, r13, r27
002694  1386e004  setlt.u r12, r1, r14
002698  3b500600  bneq r12, zero, 20
00269c  1f860600  addli r12, r13, 0
0026a0  1387e204  setlt.u r14, r5, r14
0026a4  3b2f07fe  bneq r14, zero, -56
0026a8  5b020000  j 16
0026ac  1796c601  or r12, r13, r28
0026b0  1387e204  setlt.u r14, r5, r14
0026b4  bb6e07fe  bneq r14, zero, -72
0026b8  1bc60601  srli r12, r13, 16
0026bc  1b061600  andi r12, r12, 1
0026c0  0b96c610  add.s r12, r13, r12
0026c4  0b163610  add.s r12, r12, r3
0026c8  17064600  and r12, r12, r4
0026cc  5bf4ffff  j -96
0026d0  330c0028  zext_int2long r[25:26], zero
0026d4  db050000  j 44
0026d8  1f011fed  addli r2, r30, -2424
0026dc  274c0c00  addli.d r[25:26], r[25:26], 4
0026e0  0b15a310  add.s r10, r6, r10
0026e4  6b560100  load.d r[13:14], 0(r2)
0026e8  7366b500  stores.w r11, 12(r10)
0026ec  7364e500  stores.w r14, 8(r10)
0026f0  73623501  stores.w r19, 4(r10)
0026f4  7360a501  stores.w r26, 0(r10)
0026f8  1321cc00  seteq.d r2, r[25:26], r[13:14]
0026fc  bb6c01fe  bneq r2, zero, -200
002700  0b251c11  add.ul r[11:12], r[25:26], r[18:19]
002704  1b352500  slli r10, r10, 2
002708  0b9da410  add.s r26, r9, r10
00270c  6f46cd00  loads.w r12, 12(r26)
002710  1701b601  and r2, r12, r27
002714  93852004  setlt.u r11, r1, r2
002718  3bb00500  bneq r11, zero, 12
00271c  9f050600  addli r11, r12, 0
002720  5b010000  j 8
002724  9715c601  or r11, r12, r28
002728  6f4b8d00  loads.w r22, 8(r26)
00272c  9706bb01  and r13, r22, r27
002730  1387d004  setlt.u r14, r1, r13
002734  3b300700  bneq r14, zero, 12
002738  1f070b00  addli r14, r22, 0
00273c  5b010000  j 8
002740  1717cb01  or r14, r22, r28
002744  ef4b4d00  loads.w r23, 4(r26)
002748  9787bb01  and r15, r23, r27
00274c  1388f004  setlt.u r16, r1, r15
002750  3b300800  bneq r16, zero, 12
002754  9f890b00  addli r19, r23, 0
002758  5b010000  j 8
00275c  9799cb01  or r19, r23, r28
002760  6f480d00  loads.w r16, 0(r26)
002764  170ab801  and r20, r16, r27
002768  938a4005  setlt.u r21, r1, r20
00276c  3b810a00  bneq r21, zero, 64
002770  1f0d0800  addli r26, r16, 0
002774  138a4205  setlt.u r20, r5, r20
002778  3b600a00  bneq r20, zero, 24
00277c  1b4a0801  srli r20, r16, 16
002780  1b0a1a00  andi r20, r20, 1
002784  0b184811  add.s r16, r16, r20
002788  0b183810  add.s r16, r16, r3
00278c  170d4800  and r26, r16, r4
002790  9387f204  setlt.u r15, r5, r15
002794  b7a00700  beq r15, zero, 40
002798  9386d204  setlt.u r13, r5, r13
00279c  b7f00600  beq r13, zero, 60
0027a0  13812204  setlt.u r2, r5, r2
0027a4  bb5c01fe  bneq r2, zero, -204
0027a8  db090000  j 76
0027ac  171dc801  or r26, r16, r28
0027b0  138a4205  setlt.u r20, r5, r20
0027b4  372f0afe  beq r20, zero, -56
0027b8  5bfbffff  j -40
0027bc  9bc70b01  srli r15, r23, 16
0027c0  9b871700  andi r15, r15, 1
0027c4  8b97fb10  add.s r15, r23, r15
0027c8  8b973710  add.s r15, r15, r3
0027cc  97894700  and r19, r15, r4
0027d0  9386d204  setlt.u r13, r5, r13
0027d4  3bbf06fe  bneq r13, zero, -52
0027d8  9b460b01  srli r13, r22, 16
0027dc  9b861600  andi r13, r13, 1
0027e0  8b16db10  add.s r13, r22, r13
0027e4  8b963610  add.s r13, r13, r3
0027e8  17874600  and r14, r13, r4
0027ec  13812204  setlt.u r2, r5, r2
0027f0  bb2b01fe  bneq r2, zero, -280
0027f4  1b410601  srli r2, r12, 16
0027f8  1b011100  andi r2, r2, 1
0027fc  0b112610  add.s r2, r12, r2
002800  0b113110  add.s r2, r2, r3
002804  97054100  and r11, r2, r4
002808  5bdaffff  j -304
00280c  80380002  core_id r17
002810  9f560000  addli r13, zero, 5
002814  1f470000  addli r14, zero, 4
002818  1f052000  addli r10, zero, 16
00281c  00200100  mfence { sm }
002820  3b80e8fe  bneq r17, r14, -1024
002824  3d000000  xfence
002828  33050528  zext_int2long r[11:12], r10
00282c  00a00300  mfence { lm, sm, gm }
002830  5b040000  j 32
002834  1f312000  addli r2, zero, 19
002838  33050128  zext_int2long r[11:12], r2
00283c  1f01ffec  addli r2, r30, -2440
002840  6b560100  load.d r[13:14], 0(r2)
002844  1321a604  setlt.ul r2, r[13:14], r[11:12]
002848  27150600  addli.d r[11:12], r[13:14], 1
00284c  37070100  beq r2, zero, 448
002850  1f610000  addli r2, zero, 6
002854  1f06ffec  addli r12, r30, -2440
002858  97382502  sll.d r[18:19], r[11:12], r2
00285c  7330a600  store.d r[11:12], 0(r12)
002860  bb419300  bneq r6, r9, 112
002864  33050028  zext_int2long r[11:12], zero
002868  5b030000  j 24
00286c  93267504  setlt.ul r13, r[11:12], r[8:9]
002870  0b112310  add.s r2, r6, r2
002874  27150500  addli.d r[11:12], r[11:12], 1
002878  7360c100  stores.w r12, 0(r2)
00287c  b7ee06fe  beq r13, zero, -72
002880  0b261511  add.ul r[13:14], r[11:12], r[18:19]
002884  1b312600  slli r2, r12, 2
002888  0b962410  add.s r12, r9, r2
00288c  ef460600  loads.w r13, 0(r12)
002890  1787b601  and r14, r13, r27
002894  1386e004  setlt.u r12, r1, r14
002898  3b500600  bneq r12, zero, 20
00289c  1f860600  addli r12, r13, 0
0028a0  1387e204  setlt.u r14, r5, r14
0028a4  3b2f07fe  bneq r14, zero, -56
0028a8  5b020000  j 16
0028ac  1796c601  or r12, r13, r28
0028b0  1387e204  setlt.u r14, r5, r14
0028b4  bb6e07fe  bneq r14, zero, -72
0028b8  1bc60601  srli r12, r13, 16
0028bc  1b061600  andi r12, r12, 1
0028c0  0b96c610  add.s r12, r13, r12
0028c4  0b163610  add.s r12, r12, r3
0028c8  17064600  and r12, r12, r4
0028cc  5bf4ffff  j -96
0028d0  330c0028  zext_int2long r[25:26], zero
0028d4  db050000  j 44
0028d8  1f011fed  addli r2, r30, -2424
0028dc  274c0c00  addli.d r[25:26], r[25:26], 4
0028e0  0b15a310  add.s r10, r6, r10
0028e4  6b560100  load.d r[13:14], 0(r2)
0028e8  7366b500  stores.w r11, 12(r10)
0028ec  7364e500  stores.w r14, 8(r10)
0028f0  73623501  stores.w r19, 4(r10)
0028f4  7360a501  stores.w r26, 0(r10)
0028f8  1321cc00  seteq.d r2, r[25:26], r[13:14]
0028fc  bb6c01fe  bneq r2, zero, -200
002900  0b251c11  add.ul r[11:12], r[25:26], r[18:19]
002904  1b352500  slli r10, r10, 2
002908  0b9da410  add.s r26, r9, r10
00290c  6f46cd00  loads.w r12, 12(r26)
002910  1701b601  and r2, r12, r27
002914  93852004  setlt.u r11, r1, r2
002918  3bb00500  bneq r11, zero, 12
00291c  9f050600  addli r11, r12, 0
002920  5b010000  j 8
002924  9715c601  or r11, r12, r28
002928  6f4b8d00  loads.w r22, 8(r26)
00292c  9706bb01  and r13, r22, r27
002930  1387d004  setlt.u r14, r1, r13
002934  3b300700  bneq r14, zero, 12
002938  1f070b00  addli r14, r22, 0
00293c  5b010000  j 8
002940  1717cb01  or r14, r22, r28
002944  ef4b4d00  loads.w r23, 4(r26)
002948  9787bb01  and r15, r23, r27
00294c  1388f004  setlt.u r16, r1, r15
002950  3b300800  bneq r16, zero, 12
002954  9f890b00  addli r19, r23, 0
002958  5b010000  j 8
00295c  9799cb01  or r19, r23, r28
002960  6f480d00  loads.w r16, 0(r26)
002964  170ab801  and r20, r16, r27
002968  938a4005  setlt.u r21, r1, r20
00296c  3b810a00  bneq r21, zero, 64
002970  1f0d0800  addli r26, r16, 0
002974  138a4205  setlt.u r20, r5, r20
002978  3b600a00  bneq r20, zero, 24
00297c  1b4a0801  srli r20, r16, 16
002980  1b0a1a00  andi r20, r20, 1
002984  0b184811  add.s r16, r16, r20
002988  0b183810  add.s r16, r16, r3
00298c  170d4800  and r26, r16, r4
002990  9387f204  setlt.u r15, r5, r15
002994  b7a00700  beq r15, zero, 40
002998  9386d204  setlt.u r13, r5, r13
00299c  b7f00600  beq r13, zero, 60
0029a0  13812204  setlt.u r2, r5, r2
0029a4  bb5c01fe  bneq r2, zero, -204
0029a8  db090000  j 76
0029ac  171dc801  or r26, r16, r28
0029b0  138a4205  setlt.u r20, r5, r20
0029b4  372f0afe  beq r20, zero, -56
0029b8  5bfbffff  j -40
0029bc  9bc70b01  srli r15, r23, 16
0029c0  9b871700  andi r15, r15, 1
0029c4  8b97fb10  add.s r15, r23, r15
0029c8  8b973710  add.s r15, r15, r3
0029cc  97894700  and r19, r15, r4
0029d0  9386d204  setlt.u r13, r5, r13
0029d4  3bbf06fe  bneq r13, zero, -52
0029d8  9b460b01  srli r13, r22, 16
0029dc  9b861600  andi r13, r13, 1
0029e0  8b16db10  add.s r13, r22, r13
0029e4  8b963610  add.s r13, r13, r3
0029e8  17874600  and r14, r13, r4
0029ec  13812204  setlt.u r2, r5, r2
0029f0  bb2b01fe  bneq r2, zero, -280
0029f4  1b410601  srli r2, r12, 16
0029f8  1b011100  andi r2, r2, 1
0029fc  0b112610  add.s r2, r12, r2
002a00  0b113110  add.s r2, r2, r3
002a04  97054100  and r11, r2, r4
002a08  5bdaffff  j -304
002a0c  80380002  core_id r17
002a10  9f560000  addli r13, zero, 5
002a14  1f470000  addli r14, zero, 4
002a18  00200100  mfence { sm }
002a1c  1f710000  addli r2, zero, 7
002a20  3ba828fc  bneq r17, r2, -1528
002a24  1f413000  addli r2, zero, 28
002a28  3d000000  xfence
002a2c  00a00300  mfence { lm, sm, gm }
002a30  33050128  zext_int2long r[11:12], r2
002a34  5b040000  j 32
002a38  1f713000  addli r2, zero, 31
002a3c  33050128  zext_int2long r[11:12], r2
002a40  1f01ffec  addli r2, r30, -2440
002a44  6b560100  load.d r[13:14], 0(r2)
002a48  1321a604  setlt.ul r2, r[13:14], r[11:12]
002a4c  27150600  addli.d r[11:12], r[13:14], 1
002a50  b73e0100  beq r2, zero, 940
002a54  1f610000  addli r2, zero, 6
002a58  1f06ffec  addli r12, r30, -2440
002a5c  97382502  sll.d r[18:19], r[11:12], r2
002a60  7330a600  store.d r[11:12], 0(r12)
002a64  bb419300  bneq r6, r9, 112
002a68  33050028  zext_int2long r[11:12], zero
002a6c  5b030000  j 24
002a70  93267504  setlt.ul r13, r[11:12], r[8:9]
002a74  0b112310  add.s r2, r6, r2
002a78  27150500  addli.d r[11:12], r[11:12], 1
002a7c  7360c100  stores.w r12, 0(r2)
002a80  b7ee06fe  beq r13, zero, -72
002a84  0b261511  add.ul r[13:14], r[11:12], r[18:19]
002a88  1b312600  slli r2, r12, 2
002a8c  0b962410  add.s r12, r9, r2
002a90  ef460600  loads.w r13, 0(r12)
002a94  1787b601  and r14, r13, r27
002a98  1386e004  setlt.u r12, r1, r14
002a9c  3b500600  bneq r12, zero, 20
002aa0  1f860600  addli r12, r13, 0
002aa4  1387e204  setlt.u r14, r5, r14
002aa8  3b2f07fe  bneq r14, zero, -56
002aac  5b020000  j 16
002ab0  1796c601  or r12, r13, r28
002ab4  1387e204  setlt.u r14, r5, r14
002ab8  bb6e07fe  bneq r14, zero, -72
002abc  1bc60601  srli r12, r13, 16
002ac0  1b061600  andi r12, r12, 1
002ac4  0b96c610  add.s r12, r13, r12
002ac8  0b163610  add.s r12, r12, r3
002acc  17064600  and r12, r12, r4
002ad0  5bf4ffff  j -96
002ad4  330c0028  zext_int2long r[25:26], zero
002ad8  db050000  j 44
002adc  1f011fed  addli r2, r30, -2424
002ae0  274c0c00  addli.d r[25:26], r[25:26], 4
002ae4  0b15a310  add.s r10, r6, r10
002ae8  6b560100  load.d r[13:14], 0(r2)
002aec  7366b500  stores.w r11, 12(r10)
002af0  7364e500  stores.w r14, 8(r10)
002af4  73623501  stores.w r19, 4(r10)
002af8  7360a501  stores.w r26, 0(r10)
002afc  1321cc00  seteq.d r2, r[25:26], r[13:14]
002b00  bb6c01fe  bneq r2, zero, -200
002b04  0b251c11  add.ul r[11:12], r[25:26], r[18:19]
002b08  1b352500  slli r10, r10, 2
002b0c  0b9da410  add.s r26, r9, r10
002b10  6f46cd00  loads.w r12, 12(r26)
002b14  1701b601  and r2, r12, r27
002b18  93852004  setlt.u r11, r1, r2
002b1c  3bb00500  bneq r11, zero, 12
002b20  9f050600  addli r11, r12, 0
002b24  5b010000  j 8
002b28  9715c601  or r11, r12, r28
002b2c  6f4b8d00  loads.w r22, 8(r26)
002b30  9706bb01  and r13, r22, r27
002b34  1387d004  setlt.u r14, r1, r13
002b38  3b300700  bneq r14, zero, 12
002b3c  1f070b00  addli r14, r22, 0
002b40  5b010000  j 8
002b44  1717cb01  or r14, r22, r28
002b48  ef4b4d00  loads.w r23, 4(r26)
002b4c  9787bb01  and r15, r23, r27
002b50  1388f004  setlt.u r16, r1, r15
002b54  3b300800  bneq r16, zero, 12
002b58  9f890b00  addli r19, r23, 0
002b5c  5b010000  j 8
002b60  9799cb01  or r19, r23, r28
002b64  6f480d00  loads.w r16, 0(r26)
002b68  170ab801  and r20, r16, r27
002b6c  938a4005  setlt.u r21, r1, r20
002b70  3bd00a00  bneq r21, zero, 20
002b74  1f0d0800  addli r26, r16, 0
002b78  138a4205  setlt.u r20, r5, r20
002b7c  37500a00  beq r20, zero, 20
002b80  db040000  j 36
002b84  171dc801  or r26, r16, r28
002b88  138a4205  setlt.u r20, r5, r20
002b8c  3b600a00  bneq r20, zero, 24
002b90  1b4a0801  srli r20, r16, 16
002b94  1b0a1a00  andi r20, r20, 1
002b98  0b184811  add.s r16, r16, r20
002b9c  0b183810  add.s r16, r16, r3
002ba0  170d4800  and r26, r16, r4
002ba4  9387f204  setlt.u r15, r5, r15
002ba8  37e00700  beq r15, zero, 24
002bac  9386d204  setlt.u r13, r5, r13
002bb0  b7b00600  beq r13, zero, 44
002bb4  13812204  setlt.u r2, r5, r2
002bb8  bb1c01fe  bneq r2, zero, -220
002bbc  db070000  j 60
002bc0  9bc70b01  srli r15, r23, 16
002bc4  9b871700  andi r15, r15, 1
002bc8  8b97fb10  add.s r15, r23, r15
002bcc  8b973710  add.s r15, r15, r3
002bd0  97894700  and r19, r15, r4
002bd4  9386d204  setlt.u r13, r5, r13
002bd8  3bff06fe  bneq r13, zero, -36
002bdc  9b460b01  srli r13, r22, 16
002be0  9b861600  andi r13, r13, 1
002be4  8b16db10  add.s r13, r22, r13
002be8  8b963610  add.s r13, r13, r3
002bec  17874600  and r14, r13, r4
002bf0  13812204  setlt.u r2, r5, r2
002bf4  bb2b01fe  bneq r2, zero, -280
002bf8  1b410601  srli r2, r12, 16
002bfc  1b011100  andi r2, r2, 1
002c00  0b112610  add.s r2, r12, r2
002c04  0b113110  add.s r2, r2, r3
002c08  97054100  and r11, r2, r4
002c0c  5bdaffff  j -304
002c10  1f013000  addli r2, zero, 24
002c14  3d000000  xfence
002c18  00a00300  mfence { lm, sm, gm }
002c1c  33050128  zext_int2long r[11:12], r2
002c20  5b040000  j 32
002c24  1f313000  addli r2, zero, 27
002c28  33050128  zext_int2long r[11:12], r2
002c2c  1f01ffec  addli r2, r30, -2440
002c30  6b560100  load.d r[13:14], 0(r2)
002c34  1321a604  setlt.ul r2, r[13:14], r[11:12]
002c38  27150600  addli.d r[11:12], r[13:14], 1
002c3c  37070100  beq r2, zero, 448
002c40  1f610000  addli r2, zero, 6
002c44  1f06ffec  addli r12, r30, -2440
002c48  97382502  sll.d r[18:19], r[11:12], r2
002c4c  7330a600  store.d r[11:12], 0(r12)
002c50  bb419300  bneq r6, r9, 112
002c54  33050028  zext_int2long r[11:12], zero
002c58  5b030000  j 24
002c5c  93267504  setlt.ul r13, r[11:12], r[8:9]
002c60  0b112310  add.s r2, r6, r2
002c64  27150500  addli.d r[11:12], r[11:12], 1
002c68  7360c100  stores.w r12, 0(r2)
002c6c  b7ee06fe  beq r13, zero, -72
002c70  0b261511  add.ul r[13:14], r[11:12], r[18:19]
002c74  1b312600  slli r2, r12, 2
002c78  0b962410  add.s r12, r9, r2
002c7c  ef460600  loads.w r13, 0(r12)
002c80  1787b601  and r14, r13, r27
002c84  1386e004  setlt.u r12, r1, r14
002c88  3b500600  bneq r12, zero, 20
002c8c  1f860600  addli r12, r13, 0
002c90  1387e204  setlt.u r14, r5, r14
002c94  3b2f07fe  bneq r14, zero, -56
002c98  5b020000  j 16
002c9c  1796c601  or r12, r13, r28
002ca0  1387e204  setlt.u r14, r5, r14
002ca4  bb6e07fe  bneq r14, zero, -72
002ca8  1bc60601  srli r12, r13, 16
002cac  1b061600  andi r12, r12, 1
002cb0  0b96c610  add.s r12, r13, r12
002cb4  0b163610  add.s r12, r12, r3
002cb8  17064600  and r12, r12, r4
002cbc  5bf4ffff  j -96
002cc0  330c0028  zext_int2long r[25:26], zero
002cc4  db050000  j 44
002cc8  1f011fed  addli r2, r30, -2424
002ccc  274c0c00  addli.d r[25:26], r[25:26], 4
002cd0  0b15a310  add.s r10, r6, r10
002cd4  6b560100  load.d r[13:14], 0(r2)
002cd8  7366b500  stores.w r11, 12(r10)
002cdc  7364e500  stores.w r14, 8(r10)
002ce0  73623501  stores.w r19, 4(r10)
002ce4  7360a501  stores.w r26, 0(r10)
002ce8  1321cc00  seteq.d r2, r[25:26], r[13:14]
002cec  bb6c01fe  bneq r2, zero, -200
002cf0  0b251c11  add.ul r[11:12], r[25:26], r[18:19]
002cf4  1b352500  slli r10, r10, 2
002cf8  0b9da410  add.s r26, r9, r10
002cfc  6f46cd00  loads.w r12, 12(r26)
002d00  1701b601  and r2, r12, r27
002d04  93852004  setlt.u r11, r1, r2
002d08  3bb00500  bneq r11, zero, 12
002d0c  9f050600  addli r11, r12, 0
002d10  5b010000  j 8
002d14  9715c601  or r11, r12, r28
002d18  6f4b8d00  loads.w r22, 8(r26)
002d1c  9706bb01  and r13, r22, r27
002d20  1387d004  setlt.u r14, r1, r13
002d24  3b300700  bneq r14, zero, 12
002d28  1f070b00  addli r14, r22, 0
002d2c  5b010000  j 8
002d30  1717cb01  or r14, r22, r28
002d34  ef4b4d00  loads.w r23, 4(r26)
002d38  9787bb01  and r15, r23, r27
002d3c  1388f004  setlt.u r16, r1, r15
002d40  3b300800  bneq r16, zero, 12
002d44  9f890b00  addli r19, r23, 0
002d48  5b010000  j 8
002d4c  9799cb01  or r19, r23, r28
002d50  6f480d00  loads.w r16, 0(r26)
002d54  170ab801  and r20, r16, r27
002d58  938a4005  setlt.u r21, r1, r20
002d5c  3bd00a00  bneq r21, zero, 20
002d60  1f0d0800  addli r26, r16, 0
002d64  138a4205  setlt.u r20, r5, r20
002d68  37500a00  beq r20, zero, 20
002d6c  db040000  j 36
002d70  171dc801  or r26, r16, r28
002d74  138a4205  setlt.u r20, r5, r20
002d78  3b600a00  bneq r20, zero, 24
002d7c  1b4a0801  srli r20, r16, 16
002d80  1b0a1a00  andi r20, r20, 1
002d84  0b184811  add.s r16, r16, r20
002d88  0b183810  add.s r16, r16, r3
002d8c  170d4800  and r26, r16, r4
002d90  9387f204  setlt.u r15, r5, r15
002d94  37e00700  beq r15, zero, 24
002d98  9386d204  setlt.u r13, r5, r13
002d9c  b7b00600  beq r13, zero, 44
002da0  13812204  setlt.u r2, r5, r2
002da4  bb1c01fe  bneq r2, zero, -220
002da8  db070000  j 60
002dac  9bc70b01  srli r15, r23, 16
002db0  9b871700  andi r15, r15, 1
002db4  8b97fb10  add.s r15, r23, r15
002db8  8b973710  add.s r15, r15, r3
002dbc  97894700  and r19, r15, r4
002dc0  9386d204  setlt.u r13, r5, r13
002dc4  3bff06fe  bneq r13, zero, -36
002dc8  9b460b01  srli r13, r22, 16
002dcc  9b861600  andi r13, r13, 1
002dd0  8b16db10  add.s r13, r22, r13
002dd4  8b963610  add.s r13, r13, r3
002dd8  17874600  and r14, r13, r4
002ddc  13812204  setlt.u r2, r5, r2
002de0  bb2b01fe  bneq r2, zero, -280
002de4  1b410601  srli r2, r12, 16
002de8  1b011100  andi r2, r2, 1
002dec  0b112610  add.s r2, r12, r2
002df0  0b113110  add.s r2, r2, r3
002df4  97054100  and r11, r2, r4
002df8  5bdaffff  j -304
002dfc  80380002  core_id r17
002e00  9f560000  addli r13, zero, 5
002e04  1f470000  addli r14, zero, 4
002e08  00200100  mfence { sm }
002e0c  1f71f001  addli r2, zero, 255
002e10  80220104  csr_set csr5, r2
002e14  00e00200  sync_core
002e18  6301dfec  loadli.w r2,  -2456(r30)
002e1c  3b7a01f2  bneq r2, zero, -6500
002e20  1f01cfec  addli r2, r30, -2464
002e24  6b540100  load.d r[9:10], 0(r2)
002e28  bbaa08f2  bneq r17, zero, -6488
002e2c  63018fec  loadli.w r2,  -2496(r30)
002e30  9f071fed  addli r15, r30, -2424
002e34  e3458fec  loadli.w r11,  -2492(r30)
002e38  1f190000  addli r18, zero, 1
002e3c  ebd60700  load.d r[14:15], 0(r15)
002e40  9f07afec  addli r15, r30, -2480
002e44  b3030128  zext_int2long r[8:9], r2
002e48  1f018007  addli r2, zero, 960
002e4c  b3950528  sext_int2long r[12:13], r11
002e50  b3040128  zext_int2long r[10:11], r2
002e54  1f012000  addli r2, zero, 16
002e58  8ba49340  min.ul r[10:11], r[8:9], r[10:11]
002e5c  a7848400  addli.d r[10:11], r[10:11], 64
002e60  8ba47448  max.ul r[10:11], r[10:11], r[8:9]
002e64  8bb37418  sub.sl r[8:9], r[10:11], r[8:9]
002e68  9f040fed  addli r9, r30, -2432
002e6c  8ba3d340  min.ul r[8:9], r[8:9], r[14:15]
002e70  ebd60700  load.d r[14:15], 0(r15)
002e74  ebd90400  load.d r[20:21], 0(r9)
002e78  eb570f01  load.d r[16:17], 16(r30)
002e7c  97b62602  sll.d r[14:15], r[14:15], r2
002e80  1f019fec  addli r2, r30, -2488
002e84  8bb43541  min.sl r[10:11], r[12:13], r[20:21]
002e88  8ba6d710  add.ul r[14:15], r[16:17], r[14:15]
002e8c  eb570100  load.d r[16:17], 0(r2)
002e90  a7844400  addli.d r[10:11], r[10:11], 32
002e94  1f411000  addli r2, zero, 12
002e98  8bb4b448  max.sl r[10:11], r[10:11], r[12:13]
002e9c  7d100100  xwait r2, 0
002ea0  1b110304  ori r2, r6, 64
002ea4  1bb31300  slli r6, r7, 1
002ea8  97b72703  sll.d r[16:17], r[16:17], r18
002eac  8bb4b418  sub.sl r[10:11], r[10:11], r[12:13]
002eb0  8ba5f610  add.ul r[12:13], r[14:15], r[16:17]
002eb4  9f560000  addli r13, zero, 5
002eb8  9f078000  addli r15, zero, 64
002ebc  1f470000  addli r14, zero, 4
002ec0  8bb43441  min.sl r[10:11], r[10:11], r[20:21]
002ec4  1d800600  lock zero, r13
002ec8  15090900  dma_cfg r18, r18, zero, 0
002ecc  15000902  dma_cfg zero, r18, zero, 1
002ed0  15060004  dma_cfg r12, zero, zero, 2
002ed4  9505f106  dma_cfg r11, r2, r15, 3
002ed8  1ff13300  addli r2, r7, 31
002edc  9f030001  addli r7, zero, 128
002ee0  1b415100  srli r2, r2, 5
002ee4  95872308  dma_cfg r15, r7, r2, 4
002ee8  1b01e303  andi r2, r6, 62
002eec  1f030002  addli r6, zero, 256
002ef0  9f030010  addli r7, zero, 2048
002ef4  9503930a  dma_cfg r7, r6, r9, 5
002ef8  1f03cfec  addli r6, r30, -2464
002efc  6b540300  load.d r[9:10], 0(r6)
002f00  15002010  dma_cfg zero, zero, r2, 8
002f04  35000000  dma_run zero
002f08  1500200b  dma_cfg zero, zero, r18, 5
002f0c  1f511000  addli r2, zero, 13
002f10  15000010  dma_cfg zero, zero, zero, 8
002f14  1d900600  unlock r13
002f18  7d000100  xsignal r2, 0
002f1c  dbb6fcff  j -6732
002f20  7d000000  xsignal zero, 0
002f24  bbe00800  bneq r17, zero, 56
002f28  9f200000  addli r1, zero, 2
002f2c  7d100000  xwait zero, 0
002f30  7d100000  xwait zero, 0
002f34  7d100000  xwait zero, 0
002f38  7d100000  xwait zero, 0
002f3c  7d100000  xwait zero, 0
002f40  7d100000  xwait zero, 0
002f44  7d100000  xwait zero, 0
002f48  7d100000  xwait zero, 0
002f4c  1d800000  lock zero, r1
002f50  0d000020  ew_cfg zero, zero, zero, 16
002f54  1d900000  unlock r1
002f58  7d400000  xsignal_mode_cfg zero
002f5c  9f8eae13  addli sp, sp, 2512
002f60  00a00300  mfence { lm, sm, gm }
002f64  00100000  exit
002f68  00100000  exit
002f6c  00100000  exit
002f70  00100000  exit
002f74  00100000  exit
002f78  00100000  exit
002f7c  00100000  exit
002f80  00100000  exit
002f84  00100000  exit
002f88  00100000  exit
002f8c  00100000  exit
002f90  00100000  exit
002f94  00100000  exit
002f98  00100000  exit
002f9c  00100000  exit
002fa0  00100000  exit
002fa4  00100000  exit
002fa8  00100000  exit
002fac  00100000  exit
002fb0  00100000  exit
002fb4  00100000  exit
002fb8  00100000  exit
002fbc  00100000  exit
002fc0  00100000  exit
002fc4  00100000  exit
002fc8  00100000  exit
002fcc  00100000  exit
002fd0  00100000  exit
002fd4  00100000  exit
002fd8  00100000  exit
002fdc  00100000  exit
002fe0  00100000  exit
002fe4  00100000  exit
002fe8  00100000  exit
002fec  00100000  exit
002ff0  00100000  exit
002ff4  00100000  exit
002ff8  00100000  exit
002ffc  00100000  exit
003000  00100000  exit
003004  00100000  exit
003008  00100000  exit
00300c  00100000  exit
003010  00100000  exit
003014  00100000  exit
003018  00100000  exit
00301c  00100000  exit
003020  00100000  exit
003024  00100000  exit
003028  00100000  exit
00302c  00100000  exit
003030  00100000  exit
003034  00100000  exit
003038  00100000  exit
00303c  00100000  exit
003040  00100000  exit
003044  00100000  exit
003048  00100000  exit
00304c  00100000  exit
003050  00100000  exit
003054  00100000  exit
003058  00100000  exit
00305c  00100000  exit
003060  00100000  exit
003064  00100000  exit
003068  00100000  exit
00306c  00100000  exit
003070  00100000  exit
003074  00100000  exit
003078  00100000  exit
00307c  00100000  exit
003080  00100000  exit
003084  00100000  exit
003088  00100000  exit
00308c  00100000  exit
003090  00100000  exit
003094  00100000  exit
003098  00100000  exit
00309c  00100000  exit
0030a0  00100000  exit
0030a4  00100000  exit
0030a8  00100000  exit
0030ac  00100000  exit
0030b0  00100000  exit
0030b4  00100000  exit
0030b8  00100000  exit
0030bc  00100000  exit
0030c0  00100000  exit
0030c4  00100000  exit
0030c8  00100000  exit
0030cc  00100000  exit
0030d0  00100000  exit
0030d4  00100000  exit
0030d8  00100000  exit
0030dc  00100000  exit
0030e0  00100000  exit
0030e4  00100000  exit
0030e8  00100000  exit
0030ec  00100000  exit
0030f0  00100000  exit
0030f4  00100000  exit
0030f8  00100000  exit
0030fc  00100000  exit
003100  00100000  exit
003104  00100000  exit
003108  00100000  exit
00310c  00100000  exit
003110  00100000  exit
003114  00100000  exit
003118  00100000  exit
00311c  00100000  exit
003120  00100000  exit
003124  00100000  exit
003128  00100000  exit
00312c  00100000  exit
003130  00100000  exit
003134  00100000  exit
003138  00100000  exit
00313c  00100000  exit
003140  00100000  exit
003144  00100000  exit
003148  00100000  exit
00314c  00100000  exit
003150  00100000  exit
003154  00100000  exit
003158  00100000  exit
00315c  00100000  exit
003160  00100000  exit
003164  00100000  exit
003168  00100000  exit
00316c  00100000  exit
003170  00100000  exit
003174  00100000  exit
003178  00100000  exit
00317c  00100000  exit
003180  00100000  exit
003184  00100000  exit
003188  00100000  exit
00318c  00100000  exit
003190  00100000  exit
003194  00100000  exit
003198  00100000  exit
00319c  00100000  exit
0031a0  00100000  exit
0031a4  00100000  exit
