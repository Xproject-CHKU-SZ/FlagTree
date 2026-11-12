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
0000b4  9f8efeeb  addli sp, sp, -2568
0000b8  9f100000  addli r1, zero, 1
0000bc  80350002  core_id r11
0000c0  1f8f9e13  addli r30, sp, 2504
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00500  beq r11, zero, 24
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
000ab8  1f047fec  addli r8, r30, -2504
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
001460  4b8a110c  ble.s r3, r1, 6784
001464  33910128  sext_int2long r[3:4], r3
001468  1f028fec  addli r4, r30, -2496
00146c  33940028  sext_int2long r[9:10], r1
001470  1f460000  addli r12, zero, 4
001474  ab07ffff  lui r15, 1048560
001478  e7060fec  storeli.w zero, -2456(r30)
00147c  73302200  store.d r[3:4], 0(r4)
001480  9f017fec  addli r3, r30, -2504
001484  2b02807f  lui r4, 522240
001488  ebd00100  load.d r[2:3], 0(r3)
00148c  1f71f007  addli r2, zero, 1023
001490  73b01100  store.d r[2:3], 0(r3)
001494  2b710000  lui r2, 7
001498  abf0ff7f  lui r1, 524287
00149c  ab014000  lui r3, 1024
0014a0  9b12f1ff  ori r5, r2, 4095
0014a4  2bf17f7f  lui r2, 522239
0014a8  9b90f0ff  ori r1, r1, 4095
0014ac  1b1ef1ff  ori r28, r2, 4095
0014b0  5b060000  j 48
0014b4  1f311000  addli r2, zero, 11
0014b8  7d000100  xsignal r2, 0
0014bc  1f411000  addli r2, zero, 12
0014c0  7d000100  xsignal r2, 0
0014c4  1f01cfec  addli r2, r30, -2464
0014c8  6b540100  load.d r[9:10], 0(r2)
0014cc  1f018fec  addli r2, r30, -2496
0014d0  6b530100  load.d r[7:8], 0(r2)
0014d4  27140400  addli.d r[9:10], r[9:10], 1
0014d8  13316404  setlt.sl r2, r[9:10], r[7:8]
0014dc  3718010c  beq r2, zero, 6660
0014e0  3bb0c500  bneq r11, r12, 12
0014e4  1f311000  addli r2, zero, 11
0014e8  7d100100  xwait r2, 0
0014ec  63014f00  loadli.w r2,  32(r30)
0014f0  1f03cfec  addli r6, r30, -2464
0014f4  1f1b0000  addli r22, zero, 1
0014f8  1f361000  addli r12, zero, 11
0014fc  63452ff3  loadli.w r10,  -1644(r30)
001500  1f08bfec  addli r16, r30, -2472
001504  9f490000  addli r19, zero, 4
001508  73308300  store.d r[9:10], 0(r6)
00150c  63433f00  loadli.w r6,  28(r30)
001510  0b112430  div.s r2, r8, r2
001514  1f240000  addli r8, zero, 2
001518  9f041000  addli r9, zero, 8
00151c  0b136130  div.s r6, r2, r6
001520  1f010001  addli r2, zero, 128
001524  8b132330  div.s r7, r6, r2
001528  1bb13300  slli r2, r7, 3
00152c  0b142418  sub.s r8, r8, r2
001530  0b149440  min.s r8, r8, r9
001534  8b148338  mod.s r9, r6, r8
001538  0b119110  add.s r2, r2, r9
00153c  e3042fed  loadli.w r9,  -2416(r30)
001540  93052b04  setlt.u r11, r22, r2
001544  b3060128  zext_int2long r[14:15], r2
001548  17bcc602  sll.d r[25:26], r[14:15], r12
00154c  7330d800  store.d r[14:15], 0(r16)
001550  3bb00500  bneq r11, zero, 12
001554  b3050028  zext_int2long r[12:13], zero
001558  5b020000  j 16
00155c  9f067fec  addli r13, r30, -2504
001560  ebd50600  load.d r[12:13], 0(r13)
001564  9705bc02  and.d r[12:13], r[25:26], r[12:13]
001568  9bb37300  slli r7, r7, 7
00156c  9f06ffec  addli r13, r30, -2440
001570  1b315100  slli r2, r2, 5
001574  9f080000  addli r17, zero, 0
001578  0b137318  sub.s r6, r6, r7
00157c  73b0b600  store.d r[12:13], 0(r13)
001580  e306dfec  loadli.w r13,  -2456(r30)
001584  9f550000  addli r11, zero, 5
001588  e7442fec  storeli.w r2, -2484(r30)
00158c  0b138330  div.s r6, r6, r8
001590  8b93b638  mod.s r7, r13, r11
001594  9f960600  addli r13, r13, 1
001598  e706dfec  storeli.w r13, -2456(r30)
00159c  eb568f00  load.d r[14:15], 8(r30)
0015a0  1b316300  slli r2, r6, 6
0015a4  b3050328  zext_int2long r[12:13], r6
0015a8  1bb4d300  slli r8, r7, 13
0015ac  e7042fec  storeli.w r2, -2488(r30)
0015b0  1f610000  addli r2, zero, 6
0015b4  97b52502  sll.d r[12:13], r[12:13], r2
0015b8  1f01afec  addli r2, r30, -2480
0015bc  7330b100  store.d r[12:13], 0(r2)
0015c0  97b56503  sll.d r[12:13], r[12:13], r22
0015c4  2ba10000  lui r2, 10
0015c8  0b132410  add.s r6, r8, r2
0015cc  8ba5b610  add.ul r[12:13], r[14:15], r[12:13]
0015d0  1f01efec  addli r2, r30, -2448
0015d4  7330b100  store.d r[12:13], 0(r2)
0015d8  9f050000  addli r11, zero, 0
0015dc  db030000  j 28
0015e0  9f490000  addli r19, zero, 4
0015e4  1b011b00  andi r2, r22, 1
0015e8  372f0102  beq r2, zero, 1992
0015ec  9f980800  addli r17, r17, 1
0015f0  9f150000  addli r11, zero, 1
0015f4  1f0b0000  addli r22, zero, 0
0015f8  1f078000  addli r14, zero, 64
0015fc  8b131511  add.s r7, r10, r17
001600  9f46f000  addli r13, zero, 124
001604  0b911411  add.s r2, r9, r17
001608  1f068001  addli r12, zero, 192
00160c  330a0728  zext_int2long r[21:22], r14
001610  1f071fed  addli r14, r30, -2424
001614  8b96d338  mod.s r13, r7, r13
001618  0b16c138  mod.s r12, r2, r12
00161c  1f110100  addli r2, r2, 1
001620  73304701  store.d r[21:22], 0(r14)
001624  1f074000  addli r14, zero, 32
001628  67092fec  storeli.w r2, -2416(r30)
00162c  330a0728  zext_int2long r[21:22], r14
001630  1f070fed  addli r14, r30, -2432
001634  73304701  store.d r[21:22], 0(r14)
001638  1bb1c600  slli r2, r13, 12
00163c  9f960300  addli r13, r7, 1
001640  2b470100  lui r14, 20
001644  1b36c600  slli r12, r12, 12
001648  0b18e110  add.s r16, r2, r14
00164c  6749dff2  storeli.w r13, -1644(r30)
001650  80360002  core_id r13
001654  1f270000  addli r14, zero, 2
001658  378ce600  beq r13, r14, 768
00165c  b3860528  zext_int2long r[14:15], r11
001660  80350002  core_id r11
001664  1f690000  addli r18, zero, 6
001668  3bee2501  bneq r11, r18, 920
00166c  9f550000  addli r11, zero, 5
001670  1f0affec  addli r20, r30, -2440
001674  9f0b1fed  addli r23, r30, -2424
001678  97b6b602  sll.d r[14:15], r[14:15], r11
00167c  6b590a00  load.d r[19:20], 0(r20)
001680  6bda0b00  load.d r[21:22], 0(r23)
001684  9f0b0fed  addli r23, r30, -2432
001688  97968603  or.d r[14:15], r[14:15], r[25:26]
00168c  0bb92619  sub.sl r[19:20], r[14:15], r[19:20]
001690  0f194961  div.sl r[19:20], r[19:20], r[21:22]
001694  6bda0b00  load.d r[21:22], 0(r23)
001698  9f1b0000  addli r23, zero, 1
00169c  97b67603  sll.d r[14:15], r[14:15], r23
0016a0  0b3a4941  min.sl r[21:22], r[19:20], r[21:22]
0016a4  0b392a19  sub.sl r[19:20], r[21:22], r[19:20]
0016a8  6b5a0f00  load.d r[21:22], 0(r30)
0016ac  1f094900  addli r18, r18, 32
0016b0  9f390000  addli r19, zero, 3
0016b4  0b2dda10  add.ul r[27:28], r[21:22], r[14:15]
0016b8  9f460000  addli r13, zero, 4
0016bc  1f37f000  addli r14, zero, 123
0016c0  7d900900  xwait r19, 0
0016c4  bf347700  blt.s r14, r7, 300
0016c8  1d800500  lock zero, r11
0016cc  9f230000  addli r7, zero, 2
0016d0  1f074000  addli r14, zero, 32
0016d4  15000014  dma_cfg zero, zero, zero, 10
0016d8  15007015  dma_cfg zero, zero, r23, 10
0016dc  15007014  dma_cfg zero, zero, r7, 10
0016e0  9f630000  addli r7, zero, 6
0016e4  15003015  dma_cfg zero, zero, r19, 10
0016e8  1500d014  dma_cfg zero, zero, r13, 10
0016ec  1500b014  dma_cfg zero, zero, r11, 10
0016f0  15007014  dma_cfg zero, zero, r7, 10
0016f4  9f730000  addli r7, zero, 7
0016f8  15007014  dma_cfg zero, zero, r7, 10
0016fc  9f031000  addli r7, zero, 8
001700  15007014  dma_cfg zero, zero, r7, 10
001704  9f131000  addli r7, zero, 9
001708  15007014  dma_cfg zero, zero, r7, 10
00170c  9f231000  addli r7, zero, 10
001710  15007014  dma_cfg zero, zero, r7, 10
001714  9f331000  addli r7, zero, 11
001718  15007014  dma_cfg zero, zero, r7, 10
00171c  9f431000  addli r7, zero, 12
001720  15007014  dma_cfg zero, zero, r7, 10
001724  9f531000  addli r7, zero, 13
001728  15007014  dma_cfg zero, zero, r7, 10
00172c  9f631000  addli r7, zero, 14
001730  15007014  dma_cfg zero, zero, r7, 10
001734  9f731000  addli r7, zero, 15
001738  15007014  dma_cfg zero, zero, r7, 10
00173c  9f032000  addli r7, zero, 16
001740  15007014  dma_cfg zero, zero, r7, 10
001744  9f132000  addli r7, zero, 17
001748  15007014  dma_cfg zero, zero, r7, 10
00174c  9f232000  addli r7, zero, 18
001750  15007014  dma_cfg zero, zero, r7, 10
001754  9f332000  addli r7, zero, 19
001758  15007014  dma_cfg zero, zero, r7, 10
00175c  9f432000  addli r7, zero, 20
001760  15007014  dma_cfg zero, zero, r7, 10
001764  9f532000  addli r7, zero, 21
001768  15007014  dma_cfg zero, zero, r7, 10
00176c  9f632000  addli r7, zero, 22
001770  15007014  dma_cfg zero, zero, r7, 10
001774  9f732000  addli r7, zero, 23
001778  15007014  dma_cfg zero, zero, r7, 10
00177c  9f033000  addli r7, zero, 24
001780  15007014  dma_cfg zero, zero, r7, 10
001784  9f133000  addli r7, zero, 25
001788  15007014  dma_cfg zero, zero, r7, 10
00178c  9f233000  addli r7, zero, 26
001790  15007014  dma_cfg zero, zero, r7, 10
001794  9f333000  addli r7, zero, 27
001798  15007014  dma_cfg zero, zero, r7, 10
00179c  9f433000  addli r7, zero, 28
0017a0  15007014  dma_cfg zero, zero, r7, 10
0017a4  9f533000  addli r7, zero, 29
0017a8  15007014  dma_cfg zero, zero, r7, 10
0017ac  9f633000  addli r7, zero, 30
0017b0  15007014  dma_cfg zero, zero, r7, 10
0017b4  9f733000  addli r7, zero, 31
0017b8  15007014  dma_cfg zero, zero, r7, 10
0017bc  9f038000  addli r7, zero, 64
0017c0  958b0b00  dma_cfg r23, r23, zero, 0
0017c4  950b0002  dma_cfg r23, zero, zero, 1
0017c8  15000004  dma_cfg zero, zero, zero, 2
0017cc  15087006  dma_cfg r16, zero, r7, 3
0017d0  9f030001  addli r7, zero, 128
0017d4  95037009  dma_cfg r7, zero, r23, 4
0017d8  9503e00a  dma_cfg r7, zero, r14, 5
0017dc  15000010  dma_cfg zero, zero, zero, 8
0017e0  35000000  dma_run zero
0017e4  1500700b  dma_cfg zero, zero, r23, 5
0017e8  15000010  dma_cfg zero, zero, zero, 8
0017ec  1d900500  unlock r11
0017f0  ab430100  lui r7, 20
0017f4  1d800600  lock zero, r13
0017f8  1f078000  addli r14, zero, 64
0017fc  958b0b00  dma_cfg r23, r23, zero, 0
001800  9b930304  ori r7, r7, 64
001804  15800d04  dma_cfg zero, r27, zero, 2
001808  0b117110  add.s r2, r2, r7
00180c  9f230000  addli r7, zero, 2
001810  1501ed06  dma_cfg r2, r26, r14, 3
001814  1f010001  addli r2, zero, 128
001818  15017709  dma_cfg r2, r14, r23, 4
00181c  1501210b  dma_cfg r2, r2, r18, 5
001820  15000010  dma_cfg zero, zero, zero, 8
001824  35000000  dma_run zero
001828  1500700b  dma_cfg zero, zero, r23, 5
00182c  15000010  dma_cfg zero, zero, zero, 8
001830  1d900600  unlock r13
001834  1d800500  lock zero, r11
001838  15000014  dma_cfg zero, zero, zero, 10
00183c  15007015  dma_cfg zero, zero, r23, 10
001840  15007014  dma_cfg zero, zero, r7, 10
001844  15003015  dma_cfg zero, zero, r19, 10
001848  1500d014  dma_cfg zero, zero, r13, 10
00184c  9f560000  addli r13, zero, 5
001850  1500b014  dma_cfg zero, zero, r11, 10
001854  9f650000  addli r11, zero, 6
001858  1500b014  dma_cfg zero, zero, r11, 10
00185c  9f750000  addli r11, zero, 7
001860  1500b014  dma_cfg zero, zero, r11, 10
001864  9f051000  addli r11, zero, 8
001868  1500b014  dma_cfg zero, zero, r11, 10
00186c  9f151000  addli r11, zero, 9
001870  1500b014  dma_cfg zero, zero, r11, 10
001874  9f251000  addli r11, zero, 10
001878  1500b014  dma_cfg zero, zero, r11, 10
00187c  9f351000  addli r11, zero, 11
001880  1500b014  dma_cfg zero, zero, r11, 10
001884  9f451000  addli r11, zero, 12
001888  1500b014  dma_cfg zero, zero, r11, 10
00188c  9f551000  addli r11, zero, 13
001890  1500b014  dma_cfg zero, zero, r11, 10
001894  9f651000  addli r11, zero, 14
001898  1500b014  dma_cfg zero, zero, r11, 10
00189c  9f751000  addli r11, zero, 15
0018a0  1500b014  dma_cfg zero, zero, r11, 10
0018a4  9f052000  addli r11, zero, 16
0018a8  1500b014  dma_cfg zero, zero, r11, 10
0018ac  9f152000  addli r11, zero, 17
0018b0  1500b014  dma_cfg zero, zero, r11, 10
0018b4  9f252000  addli r11, zero, 18
0018b8  1500b014  dma_cfg zero, zero, r11, 10
0018bc  9f352000  addli r11, zero, 19
0018c0  1500b014  dma_cfg zero, zero, r11, 10
0018c4  9f452000  addli r11, zero, 20
0018c8  1500b014  dma_cfg zero, zero, r11, 10
0018cc  9f552000  addli r11, zero, 21
0018d0  1500b014  dma_cfg zero, zero, r11, 10
0018d4  9f652000  addli r11, zero, 22
0018d8  1500b014  dma_cfg zero, zero, r11, 10
0018dc  9f752000  addli r11, zero, 23
0018e0  1500b014  dma_cfg zero, zero, r11, 10
0018e4  9f053000  addli r11, zero, 24
0018e8  1500b014  dma_cfg zero, zero, r11, 10
0018ec  9f153000  addli r11, zero, 25
0018f0  1500b014  dma_cfg zero, zero, r11, 10
0018f4  9f253000  addli r11, zero, 26
0018f8  1500b014  dma_cfg zero, zero, r11, 10
0018fc  9f353000  addli r11, zero, 27
001900  1500b014  dma_cfg zero, zero, r11, 10
001904  9f453000  addli r11, zero, 28
001908  1500b014  dma_cfg zero, zero, r11, 10
00190c  9f553000  addli r11, zero, 29
001910  1500b014  dma_cfg zero, zero, r11, 10
001914  9f653000  addli r11, zero, 30
001918  1500b014  dma_cfg zero, zero, r11, 10
00191c  9f753000  addli r11, zero, 31
001920  1500b014  dma_cfg zero, zero, r11, 10
001924  958b0b00  dma_cfg r23, r23, zero, 0
001928  950b0002  dma_cfg r23, zero, zero, 1
00192c  15000004  dma_cfg zero, zero, zero, 2
001930  1508e006  dma_cfg r16, zero, r14, 3
001934  15017009  dma_cfg r2, zero, r23, 4
001938  1501200b  dma_cfg r2, zero, r18, 5
00193c  15000010  dma_cfg zero, zero, zero, 8
001940  35000000  dma_run zero
001944  1500700b  dma_cfg zero, zero, r23, 5
001948  15000010  dma_cfg zero, zero, zero, 8
00194c  1d900600  unlock r13
001950  7d800300  xsignal r7, 0
001954  5b080000  j 64
001958  1f210000  addli r2, zero, 2
00195c  9f530000  addli r7, zero, 5
001960  7d100100  xwait r2, 0
001964  7d900300  xwait r7, 0
001968  1d000000  lock zero, zero
00196c  01010000  ds_cfg r2, zero, 0
001970  1f014000  addli r2, zero, 32
001974  01010002  ds_cfg r2, zero, 1
001978  0101001c  ds_cfg r2, zero, 14
00197c  0101001a  ds_cfg r2, zero, 13
001980  21162802  shuffle_batch r12, r16, r2, 1
001984  1f310000  addli r2, zero, 3
001988  1d100000  unlock zero
00198c  7d000100  xsignal r2, 0
001990  7d800900  xsignal r19, 0
001994  63011ff7  loadli.w r2,  -1144(r30)
001998  9f034001  addli r7, zero, 160
00199c  e3451ffc  loadli.w r11,  -500(r30)
0019a0  8b137138  mod.s r7, r2, r7
0019a4  9f950500  addli r11, r11, 1
0019a8  1f110100  addli r2, r2, 1
0019ac  e740bffc  storeli.w r11, -500(r30)
0019b0  80350002  core_id r11
0019b4  e7082ff6  storeli.w r2, -1144(r30)
0019b8  9bb3d300  slli r7, r7, 13
0019bc  1f410000  addli r2, zero, 4
0019c0  bb8025fe  bneq r11, r2, -992
0019c4  7d100100  xwait r2, 0
0019c8  1f011000  addli r2, zero, 8
0019cc  1f170000  addli r14, zero, 1
0019d0  9f064000  addli r13, zero, 32
0019d4  9f490000  addli r19, zero, 4
0019d8  7d100100  xwait r2, 0
0019dc  1f018000  addli r2, zero, 64
0019e0  1d000700  lock zero, r14
0019e4  0981d600  mm_cfg r2, r13, r13, 0
0019e8  1f210000  addli r2, zero, 2
0019ec  0901e104  mm_cfg r2, r2, r14, 2
0019f0  1f110000  addli r2, zero, 1
0019f4  b7dc0800  beq r17, zero, 820
0019f8  29137610  mm_acc r6, r12, r7, 8
0019fc  5b660000  j 816
001a00  63491ffc  loadli.w r18,  -500(r30)
001a04  9f45f000  addli r11, zero, 124
001a08  63011ff7  loadli.w r2,  -1144(r30)
001a0c  9f034001  addli r7, zero, 160
001a10  2b080900  lui r16, 144
001a14  1f7a0000  addli r20, zero, 7
001a18  8b15b938  mod.s r11, r18, r11
001a1c  8b137138  mod.s r7, r2, r7
001a20  1f110100  addli r2, r2, 1
001a24  e7082ff6  storeli.w r2, -1144(r30)
001a28  1bb1d500  slli r2, r11, 13
001a2c  9f150900  addli r11, r18, 1
001a30  9bb3d300  slli r7, r7, 13
001a34  e740bffc  storeli.w r11, -500(r30)
001a38  0b180111  add.s r16, r2, r16
001a3c  80350002  core_id r11
001a40  37bc4501  beq r11, r20, 780
001a44  1f1a0000  addli r20, zero, 1
001a48  bbdd45ff  bneq r11, r20, -140
001a4c  9f0b2000  addli r23, zero, 16
001a50  9f03efec  addli r7, r30, -2448
001a54  1f7d0000  addli r26, zero, 7
001a58  97b57603  sll.d r[12:13], r[14:15], r23
001a5c  ebd60300  load.d r[14:15], 0(r7)
001a60  9f33f000  addli r7, zero, 123
001a64  7d100d00  xwait r26, 0
001a68  8ba5b610  add.ul r[12:13], r[14:15], r[12:13]
001a6c  bfd42301  blt.s r7, r18, 308
001a70  1f570000  addli r14, zero, 5
001a74  1f190000  addli r18, zero, 1
001a78  9f260000  addli r13, zero, 2
001a7c  9f330000  addli r7, zero, 3
001a80  1d000700  lock zero, r14
001a84  15000014  dma_cfg zero, zero, zero, 10
001a88  15002015  dma_cfg zero, zero, r18, 10
001a8c  1500d014  dma_cfg zero, zero, r13, 10
001a90  15007014  dma_cfg zero, zero, r7, 10
001a94  9f630000  addli r7, zero, 6
001a98  15003015  dma_cfg zero, zero, r19, 10
001a9c  1500e014  dma_cfg zero, zero, r14, 10
001aa0  15007014  dma_cfg zero, zero, r7, 10
001aa4  9f031000  addli r7, zero, 8
001aa8  1500a015  dma_cfg zero, zero, r26, 10
001aac  15007014  dma_cfg zero, zero, r7, 10
001ab0  9f131000  addli r7, zero, 9
001ab4  15007014  dma_cfg zero, zero, r7, 10
001ab8  9f231000  addli r7, zero, 10
001abc  15007014  dma_cfg zero, zero, r7, 10
001ac0  9f331000  addli r7, zero, 11
001ac4  15007014  dma_cfg zero, zero, r7, 10
001ac8  9f431000  addli r7, zero, 12
001acc  15007014  dma_cfg zero, zero, r7, 10
001ad0  9f531000  addli r7, zero, 13
001ad4  15007014  dma_cfg zero, zero, r7, 10
001ad8  9f631000  addli r7, zero, 14
001adc  15007014  dma_cfg zero, zero, r7, 10
001ae0  9f731000  addli r7, zero, 15
001ae4  15007014  dma_cfg zero, zero, r7, 10
001ae8  9f132000  addli r7, zero, 17
001aec  15007015  dma_cfg zero, zero, r23, 10
001af0  15007014  dma_cfg zero, zero, r7, 10
001af4  9f232000  addli r7, zero, 18
001af8  15007014  dma_cfg zero, zero, r7, 10
001afc  9f332000  addli r7, zero, 19
001b00  15007014  dma_cfg zero, zero, r7, 10
001b04  9f432000  addli r7, zero, 20
001b08  15007014  dma_cfg zero, zero, r7, 10
001b0c  9f532000  addli r7, zero, 21
001b10  15007014  dma_cfg zero, zero, r7, 10
001b14  9f632000  addli r7, zero, 22
001b18  15007014  dma_cfg zero, zero, r7, 10
001b1c  9f732000  addli r7, zero, 23
001b20  15007014  dma_cfg zero, zero, r7, 10
001b24  9f033000  addli r7, zero, 24
001b28  15007014  dma_cfg zero, zero, r7, 10
001b2c  9f133000  addli r7, zero, 25
001b30  15007014  dma_cfg zero, zero, r7, 10
001b34  9f233000  addli r7, zero, 26
001b38  15007014  dma_cfg zero, zero, r7, 10
001b3c  9f333000  addli r7, zero, 27
001b40  15007014  dma_cfg zero, zero, r7, 10
001b44  9f433000  addli r7, zero, 28
001b48  15007014  dma_cfg zero, zero, r7, 10
001b4c  9f533000  addli r7, zero, 29
001b50  15007014  dma_cfg zero, zero, r7, 10
001b54  9f633000  addli r7, zero, 30
001b58  15007014  dma_cfg zero, zero, r7, 10
001b5c  9f733000  addli r7, zero, 31
001b60  15007014  dma_cfg zero, zero, r7, 10
001b64  9f038000  addli r7, zero, 64
001b68  15090900  dma_cfg r18, r18, zero, 0
001b6c  15090002  dma_cfg r18, zero, zero, 1
001b70  15000004  dma_cfg zero, zero, zero, 2
001b74  15087006  dma_cfg r16, zero, r7, 3
001b78  9f030001  addli r7, zero, 128
001b7c  9503d008  dma_cfg r7, zero, r13, 4
001b80  9f034000  addli r7, zero, 32
001b84  9f060002  addli r13, zero, 256
001b88  9506700a  dma_cfg r13, zero, r7, 5
001b8c  15000010  dma_cfg zero, zero, zero, 8
001b90  35000000  dma_run zero
001b94  1500200b  dma_cfg zero, zero, r18, 5
001b98  15000010  dma_cfg zero, zero, zero, 8
001b9c  1d100700  unlock r14
001ba0  ab030900  lui r7, 144
001ba4  1f470000  addli r14, zero, 4
001ba8  9f1a0000  addli r21, zero, 1
001bac  1f098000  addli r18, zero, 64
001bb0  1f0a4000  addli r20, zero, 32
001bb4  9f0d0002  addli r27, zero, 256
001bb8  9f560000  addli r13, zero, 5
001bbc  9f490000  addli r19, zero, 4
001bc0  9b930304  ori r7, r7, 64
001bc4  1d000700  lock zero, r14
001bc8  958a0a00  dma_cfg r21, r21, zero, 0
001bcc  0b117110  add.s r2, r2, r7
001bd0  15000604  dma_cfg zero, r12, zero, 2
001bd4  9f230000  addli r7, zero, 2
001bd8  15812507  dma_cfg r2, r11, r18, 3
001bdc  1f010001  addli r2, zero, 128
001be0  9f050010  addli r11, zero, 2048
001be4  1f660000  addli r12, zero, 6
001be8  15017908  dma_cfg r2, r18, r7, 4
001bec  958d450b  dma_cfg r27, r11, r20, 5
001bf0  9f350000  addli r11, zero, 3
001bf4  15000010  dma_cfg zero, zero, zero, 8
001bf8  35000000  dma_run zero
001bfc  1500500b  dma_cfg zero, zero, r21, 5
001c00  15000010  dma_cfg zero, zero, zero, 8
001c04  1d100700  unlock r14
001c08  1d800600  lock zero, r13
001c0c  15000014  dma_cfg zero, zero, zero, 10
001c10  15005015  dma_cfg zero, zero, r21, 10
001c14  15007014  dma_cfg zero, zero, r7, 10
001c18  1500b014  dma_cfg zero, zero, r11, 10
001c1c  9f051000  addli r11, zero, 8
001c20  1500e014  dma_cfg zero, zero, r14, 10
001c24  1500d014  dma_cfg zero, zero, r13, 10
001c28  1500c014  dma_cfg zero, zero, r12, 10
001c2c  1500a015  dma_cfg zero, zero, r26, 10
001c30  1500b014  dma_cfg zero, zero, r11, 10
001c34  9f151000  addli r11, zero, 9
001c38  1500b014  dma_cfg zero, zero, r11, 10
001c3c  9f251000  addli r11, zero, 10
001c40  1500b014  dma_cfg zero, zero, r11, 10
001c44  9f351000  addli r11, zero, 11
001c48  1500b014  dma_cfg zero, zero, r11, 10
001c4c  9f451000  addli r11, zero, 12
001c50  1500b014  dma_cfg zero, zero, r11, 10
001c54  9f551000  addli r11, zero, 13
001c58  1500b014  dma_cfg zero, zero, r11, 10
001c5c  9f651000  addli r11, zero, 14
001c60  1500b014  dma_cfg zero, zero, r11, 10
001c64  9f751000  addli r11, zero, 15
001c68  1500b014  dma_cfg zero, zero, r11, 10
001c6c  9f152000  addli r11, zero, 17
001c70  15007015  dma_cfg zero, zero, r23, 10
001c74  1500b014  dma_cfg zero, zero, r11, 10
001c78  9f252000  addli r11, zero, 18
001c7c  1500b014  dma_cfg zero, zero, r11, 10
001c80  9f352000  addli r11, zero, 19
001c84  1500b014  dma_cfg zero, zero, r11, 10
001c88  9f452000  addli r11, zero, 20
001c8c  1500b014  dma_cfg zero, zero, r11, 10
001c90  9f552000  addli r11, zero, 21
001c94  1500b014  dma_cfg zero, zero, r11, 10
001c98  9f652000  addli r11, zero, 22
001c9c  1500b014  dma_cfg zero, zero, r11, 10
001ca0  9f752000  addli r11, zero, 23
001ca4  1500b014  dma_cfg zero, zero, r11, 10
001ca8  9f053000  addli r11, zero, 24
001cac  1500b014  dma_cfg zero, zero, r11, 10
001cb0  9f153000  addli r11, zero, 25
001cb4  1500b014  dma_cfg zero, zero, r11, 10
001cb8  9f253000  addli r11, zero, 26
001cbc  1500b014  dma_cfg zero, zero, r11, 10
001cc0  9f353000  addli r11, zero, 27
001cc4  1500b014  dma_cfg zero, zero, r11, 10
001cc8  9f453000  addli r11, zero, 28
001ccc  1500b014  dma_cfg zero, zero, r11, 10
001cd0  9f553000  addli r11, zero, 29
001cd4  1500b014  dma_cfg zero, zero, r11, 10
001cd8  9f653000  addli r11, zero, 30
001cdc  1500b014  dma_cfg zero, zero, r11, 10
001ce0  9f753000  addli r11, zero, 31
001ce4  1500b014  dma_cfg zero, zero, r11, 10
001ce8  80350002  core_id r11
001cec  958a0a00  dma_cfg r21, r21, zero, 0
001cf0  950a0002  dma_cfg r21, zero, zero, 1
001cf4  15000004  dma_cfg zero, zero, zero, 2
001cf8  15082007  dma_cfg r16, zero, r18, 3
001cfc  15017008  dma_cfg r2, zero, r7, 4
001d00  950d400b  dma_cfg r27, zero, r20, 5
001d04  15000010  dma_cfg zero, zero, zero, 8
001d08  35000000  dma_run zero
001d0c  1500500b  dma_cfg zero, zero, r21, 5
001d10  15000010  dma_cfg zero, zero, zero, 8
001d14  1d900600  unlock r13
001d18  7d000600  xsignal r12, 0
001d1c  1b011b00  andi r2, r22, 1
001d20  3b3301fc  bneq r2, zero, -1844
001d24  5b0f0000  j 120
001d28  29037610  mm r6, r12, r7, 8
001d2c  9f530000  addli r7, zero, 5
001d30  1d100100  unlock r2
001d34  1b011b00  andi r2, r22, 1
001d38  7d800300  xsignal r7, 0
001d3c  9f131000  addli r7, zero, 9
001d40  7d800300  xsignal r7, 0
001d44  bb2201fc  bneq r2, zero, -1880
001d48  5b0b0000  j 88
001d4c  1f610000  addli r2, zero, 6
001d50  1f064000  addli r12, zero, 32
001d54  7d100100  xwait r2, 0
001d58  1f111000  addli r2, zero, 9
001d5c  7d100100  xwait r2, 0
001d60  1f210000  addli r2, zero, 2
001d64  1d000000  lock zero, zero
001d68  01010000  ds_cfg r2, zero, 0
001d6c  1f018000  addli r2, zero, 64
001d70  01010002  ds_cfg r2, zero, 1
001d74  0106001c  ds_cfg r12, zero, 14
001d78  0101001a  ds_cfg r2, zero, 13
001d7c  1f710000  addli r2, zero, 7
001d80  c103c804  shuffle_coa r7, r16, r12, 2
001d84  1d100000  unlock zero
001d88  7d000100  xsignal r2, 0
001d8c  1f011000  addli r2, zero, 8
001d90  7d000100  xsignal r2, 0
001d94  1b011b00  andi r2, r22, 1
001d98  3b5101fc  bneq r2, zero, -1964
001d9c  3bd03501  bneq r11, r19, 20
001da0  1f211000  addli r2, zero, 10
001da4  e7460fec  storeli.w zero, -2452(r30)
001da8  7d000100  xsignal r2, 0
001dac  db050000  j 44
001db0  1f310000  addli r2, zero, 3
001db4  bb802500  bneq r11, r2, 32
001db8  1f211000  addli r2, zero, 10
001dbc  7d100100  xwait r2, 0
001dc0  1f110000  addli r2, zero, 1
001dc4  e7462fec  storeli.w r2, -2452(r30)
001dc8  1f511000  addli r2, zero, 13
001dcc  7d100100  xwait r2, 0
001dd0  5b010000  j 8
001dd4  e7460fec  storeli.w zero, -2452(r30)
001dd8  1f71f001  addli r2, zero, 255
001ddc  3d000000  xfence
001de0  00a00300  mfence { lm, sm, gm }
001de4  80220104  csr_set csr5, r2
001de8  1f717000  addli r2, zero, 63
001dec  00e00200  sync_core
001df0  b3040128  zext_int2long r[10:11], r2
001df4  bbd70500  bneq r11, zero, 500
001df8  3d000000  xfence
001dfc  b3050028  zext_int2long r[12:13], zero
001e00  00a00300  mfence { lm, sm, gm }
001e04  5b040000  j 32
001e08  1f310000  addli r2, zero, 3
001e0c  b3050128  zext_int2long r[12:13], r2
001e10  1f01ffec  addli r2, r30, -2440
001e14  eb560100  load.d r[14:15], 0(r2)
001e18  13a1b604  setlt.ul r2, r[14:15], r[12:13]
001e1c  a7950600  addli.d r[12:13], r[14:15], 1
001e20  37070100  beq r2, zero, 448
001e24  1f610000  addli r2, zero, 6
001e28  9f03ffec  addli r7, r30, -2440
001e2c  17bd2502  sll.d r[27:28], r[12:13], r2
001e30  73b0b300  store.d r[12:13], 0(r7)
001e34  bb416400  bneq r8, r6, 112
001e38  b3050028  zext_int2long r[12:13], zero
001e3c  5b030000  j 24
001e40  93a69504  setlt.ul r13, r[12:13], r[10:11]
001e44  0b112410  add.s r2, r8, r2
001e48  a7950500  addli.d r[12:13], r[12:13], 1
001e4c  73607100  stores.w r7, 0(r2)
001e50  b7ee06fe  beq r13, zero, -72
001e54  8ba6a511  add.ul r[14:15], r[12:13], r[27:28]
001e58  1bb12600  slli r2, r13, 2
001e5c  8b132310  add.s r7, r6, r2
001e60  efc60300  loads.w r13, 0(r7)
001e64  17871600  and r14, r13, r1
001e68  9303e204  setlt.u r7, r4, r14
001e6c  3bd00300  bneq r7, zero, 20
001e70  9f830600  addli r7, r13, 0
001e74  1307ee04  setlt.u r14, r28, r14
001e78  3b2f07fe  bneq r14, zero, -56
001e7c  5b020000  j 16
001e80  97933600  or r7, r13, r3
001e84  1307ee04  setlt.u r14, r28, r14
001e88  bb6e07fe  bneq r14, zero, -72
001e8c  9bc30601  srli r7, r13, 16
001e90  9b831300  andi r7, r7, 1
001e94  8b937610  add.s r7, r13, r7
001e98  8b935310  add.s r7, r7, r5
001e9c  9783f300  and r7, r7, r15
001ea0  5bf4ffff  j -96
001ea4  33080028  zext_int2long r[17:18], zero
001ea8  db050000  j 44
001eac  1f011fed  addli r2, r30, -2424
001eb0  27480800  addli.d r[17:18], r[17:18], 4
001eb4  8b15c410  add.s r11, r8, r12
001eb8  eb560100  load.d r[14:15], 0(r2)
001ebc  73e62501  stores.w r18, 12(r11)
001ec0  73e47500  stores.w r7, 8(r11)
001ec4  73e27501  stores.w r23, 4(r11)
001ec8  73e06501  stores.w r22, 0(r11)
001ecc  1321d800  seteq.d r2, r[17:18], r[14:15]
001ed0  bb6c01fe  bneq r2, zero, -200
001ed4  8b25a811  add.ul r[12:13], r[17:18], r[27:28]
001ed8  1bb62500  slli r12, r11, 2
001edc  0b1bc310  add.s r22, r6, r12
001ee0  ef49cb00  loads.w r19, 12(r22)
001ee4  17811900  and r2, r19, r1
001ee8  93032204  setlt.u r7, r4, r2
001eec  3bb00300  bneq r7, zero, 12
001ef0  1f890900  addli r18, r19, 0
001ef4  5b010000  j 8
001ef8  17993900  or r18, r19, r3
001efc  ef458b00  loads.w r11, 8(r22)
001f00  97861500  and r13, r11, r1
001f04  9303d204  setlt.u r7, r4, r13
001f08  3bb00300  bneq r7, zero, 12
001f0c  9f830500  addli r7, r11, 0
001f10  5b010000  j 8
001f14  97933500  or r7, r11, r3
001f18  6f474b00  loads.w r14, 4(r22)
001f1c  170c1700  and r24, r14, r1
001f20  130a8205  setlt.u r20, r4, r24
001f24  3b300a00  bneq r20, zero, 12
001f28  9f0b0700  addli r23, r14, 0
001f2c  5b010000  j 8
001f30  971b3700  or r23, r14, r3
001f34  ef4c0b00  loads.w r25, 0(r22)
001f38  178a1c00  and r20, r25, r1
001f3c  930a4205  setlt.u r21, r4, r20
001f40  3bd00a00  bneq r21, zero, 20
001f44  1f8b0c00  addli r22, r25, 0
001f48  130a4e05  setlt.u r20, r28, r20
001f4c  37500a00  beq r20, zero, 20
001f50  db040000  j 36
001f54  179b3c00  or r22, r25, r3
001f58  130a4e05  setlt.u r20, r28, r20
001f5c  3b600a00  bneq r20, zero, 24
001f60  1bca0c01  srli r20, r25, 16
001f64  1b0a1a00  andi r20, r20, 1
001f68  0b9a4c11  add.s r20, r25, r20
001f6c  0b1a5a10  add.s r20, r20, r5
001f70  170bfa00  and r22, r20, r15
001f74  130a8e05  setlt.u r20, r28, r24
001f78  37600a00  beq r20, zero, 24
001f7c  9306de04  setlt.u r13, r28, r13
001f80  b7b00600  beq r13, zero, 44
001f84  13012e04  setlt.u r2, r28, r2
001f88  bb1c01fe  bneq r2, zero, -220
001f8c  db070000  j 60
001f90  1b4a0701  srli r20, r14, 16
001f94  1b0a1a00  andi r20, r20, 1
001f98  0b174711  add.s r14, r14, r20
001f9c  0b175710  add.s r14, r14, r5
001fa0  970bf700  and r23, r14, r15
001fa4  9306de04  setlt.u r13, r28, r13
001fa8  3bff06fe  bneq r13, zero, -36
001fac  9bc30501  srli r7, r11, 16
001fb0  9b831300  andi r7, r7, 1
001fb4  8b937510  add.s r7, r11, r7
001fb8  8b935310  add.s r7, r7, r5
001fbc  9783f300  and r7, r7, r15
001fc0  13012e04  setlt.u r2, r28, r2
001fc4  bb2b01fe  bneq r2, zero, -280
001fc8  1bc10901  srli r2, r19, 16
001fcc  1b011100  andi r2, r2, 1
001fd0  0b912910  add.s r2, r19, r2
001fd4  0b115110  add.s r2, r2, r5
001fd8  1709f100  and r18, r2, r15
001fdc  5bdaffff  j -304
001fe0  80350002  core_id r11
001fe4  00200100  mfence { sm }
001fe8  1f210000  addli r2, zero, 2
001fec  1f460000  addli r12, zero, 4
001ff0  37982500  beq r11, r2, 516
001ff4  1f110000  addli r2, zero, 1
001ff8  bbdf2500  bneq r11, r2, 1012
001ffc  b3060028  zext_int2long r[14:15], zero
002000  1f01efec  addli r2, r30, -2448
002004  b3050628  zext_int2long r[12:13], r12
002008  7330d100  store.d r[14:15], 0(r2)
00200c  3d000000  xfence
002010  00a00300  mfence { lm, sm, gm }
002014  5b040000  j 32
002018  1f710000  addli r2, zero, 7
00201c  b3050128  zext_int2long r[12:13], r2
002020  1f01ffec  addli r2, r30, -2440
002024  eb560100  load.d r[14:15], 0(r2)
002028  13a1b604  setlt.ul r2, r[14:15], r[12:13]
00202c  a7950600  addli.d r[12:13], r[14:15], 1
002030  b74e0100  beq r2, zero, 944
002034  1f610000  addli r2, zero, 6
002038  9f03ffec  addli r7, r30, -2440
00203c  17b82502  sll.d r[17:18], r[12:13], r2
002040  73b0b300  store.d r[12:13], 0(r7)
002044  bb416400  bneq r8, r6, 112
002048  b3050028  zext_int2long r[12:13], zero
00204c  5b030000  j 24
002050  93a69504  setlt.ul r13, r[12:13], r[10:11]
002054  0b112410  add.s r2, r8, r2
002058  a7950500  addli.d r[12:13], r[12:13], 1
00205c  73607100  stores.w r7, 0(r2)
002060  b7ee06fe  beq r13, zero, -72
002064  8ba60511  add.ul r[14:15], r[12:13], r[17:18]
002068  1bb12600  slli r2, r13, 2
00206c  8b132310  add.s r7, r6, r2
002070  efc60300  loads.w r13, 0(r7)
002074  17871600  and r14, r13, r1
002078  9303e204  setlt.u r7, r4, r14
00207c  3bd00300  bneq r7, zero, 20
002080  9f830600  addli r7, r13, 0
002084  1307ee04  setlt.u r14, r28, r14
002088  3b2f07fe  bneq r14, zero, -56
00208c  5b020000  j 16
002090  97933600  or r7, r13, r3
002094  1307ee04  setlt.u r14, r28, r14
002098  bb6e07fe  bneq r14, zero, -72
00209c  9bc30601  srli r7, r13, 16
0020a0  9b831300  andi r7, r7, 1
0020a4  8b937610  add.s r7, r13, r7
0020a8  8b935310  add.s r7, r7, r5
0020ac  9783f300  and r7, r7, r15
0020b0  5bf4ffff  j -96
0020b4  1f01efec  addli r2, r30, -2448
0020b8  6b5c0100  load.d r[25:26], 0(r2)
0020bc  db050000  j 44
0020c0  9f031fed  addli r7, r30, -2424
0020c4  274c0c00  addli.d r[25:26], r[25:26], 4
0020c8  0b16c410  add.s r12, r8, r12
0020cc  ebd60300  load.d r[14:15], 0(r7)
0020d0  73662600  stores.w r2, 12(r12)
0020d4  73642601  stores.w r18, 8(r12)
0020d8  7362b600  stores.w r11, 4(r12)
0020dc  73603601  stores.w r19, 0(r12)
0020e0  9323dc00  seteq.d r7, r[25:26], r[14:15]
0020e4  bbdc03fe  bneq r7, zero, -204
0020e8  8b250c11  add.ul r[12:13], r[25:26], r[17:18]
0020ec  1bb62500  slli r12, r11, 2
0020f0  8b19c310  add.s r19, r6, r12
0020f4  6fcbc900  loads.w r22, 12(r19)
0020f8  97031b00  and r7, r22, r1
0020fc  13017204  setlt.u r2, r4, r7
002100  3b300100  bneq r2, zero, 12
002104  1f010b00  addli r2, r22, 0
002108  5b010000  j 8
00210c  17113b00  or r2, r22, r3
002110  6fc78900  loads.w r14, 8(r19)
002114  97061700  and r13, r14, r1
002118  9305d204  setlt.u r11, r4, r13
00211c  3bb00500  bneq r11, zero, 12
002120  1f090700  addli r18, r14, 0
002124  5b010000  j 8
002128  17193700  or r18, r14, r3
00212c  efcb4900  loads.w r23, 4(r19)
002130  178d1b00  and r26, r23, r1
002134  9305a205  setlt.u r11, r4, r26
002138  3bb00500  bneq r11, zero, 12
00213c  9f850b00  addli r11, r23, 0
002140  5b010000  j 8
002144  97953b00  or r11, r23, r3
002148  efcd0900  loads.w r27, 0(r19)
00214c  178a1d00  and r20, r27, r1
002150  93094205  setlt.u r19, r4, r20
002154  3bd00900  bneq r19, zero, 20
002158  9f890d00  addli r19, r27, 0
00215c  130a4e05  setlt.u r20, r28, r20
002160  37500a00  beq r20, zero, 20
002164  db040000  j 36
002168  97993d00  or r19, r27, r3
00216c  130a4e05  setlt.u r20, r28, r20
002170  3b600a00  bneq r20, zero, 24
002174  9bc90d01  srli r19, r27, 16
002178  9b891900  andi r19, r19, 1
00217c  8b993d11  add.s r19, r27, r19
002180  8b995910  add.s r19, r19, r5
002184  9789f900  and r19, r19, r15
002188  130aae05  setlt.u r20, r28, r26
00218c  37600a00  beq r20, zero, 24
002190  9306de04  setlt.u r13, r28, r13
002194  b7b00600  beq r13, zero, 44
002198  93037e04  setlt.u r7, r28, r7
00219c  bb9c03fe  bneq r7, zero, -220
0021a0  db070000  j 60
0021a4  9bc50b01  srli r11, r23, 16
0021a8  9b851500  andi r11, r11, 1
0021ac  8b95bb10  add.s r11, r23, r11
0021b0  8b955510  add.s r11, r11, r5
0021b4  9785f500  and r11, r11, r15
0021b8  9306de04  setlt.u r13, r28, r13
0021bc  3bff06fe  bneq r13, zero, -36
0021c0  9b460701  srli r13, r14, 16
0021c4  9b861600  andi r13, r13, 1
0021c8  8b16d710  add.s r13, r14, r13
0021cc  8b965610  add.s r13, r13, r5
0021d0  1789f600  and r18, r13, r15
0021d4  93037e04  setlt.u r7, r28, r7
0021d8  bbab03fe  bneq r7, zero, -280
0021dc  1b410b01  srli r2, r22, 16
0021e0  1b011100  andi r2, r2, 1
0021e4  0b112b10  add.s r2, r22, r2
0021e8  0b115110  add.s r2, r2, r5
0021ec  1701f100  and r2, r2, r15
0021f0  5bdaffff  j -304
0021f4  1f011000  addli r2, zero, 8
0021f8  3d000000  xfence
0021fc  00a00300  mfence { lm, sm, gm }
002200  b3050128  zext_int2long r[12:13], r2
002204  5b040000  j 32
002208  1f311000  addli r2, zero, 11
00220c  b3050128  zext_int2long r[12:13], r2
002210  1f01ffec  addli r2, r30, -2440
002214  eb560100  load.d r[14:15], 0(r2)
002218  13a1b604  setlt.ul r2, r[14:15], r[12:13]
00221c  a7950600  addli.d r[12:13], r[14:15], 1
002220  37070100  beq r2, zero, 448
002224  1f610000  addli r2, zero, 6
002228  9f03ffec  addli r7, r30, -2440
00222c  17bd2502  sll.d r[27:28], r[12:13], r2
002230  73b0b300  store.d r[12:13], 0(r7)
002234  bb416400  bneq r8, r6, 112
002238  b3050028  zext_int2long r[12:13], zero
00223c  5b030000  j 24
002240  93a69504  setlt.ul r13, r[12:13], r[10:11]
002244  0b112410  add.s r2, r8, r2
002248  a7950500  addli.d r[12:13], r[12:13], 1
00224c  73607100  stores.w r7, 0(r2)
002250  b7ee06fe  beq r13, zero, -72
002254  8ba6a511  add.ul r[14:15], r[12:13], r[27:28]
002258  1bb12600  slli r2, r13, 2
00225c  8b132310  add.s r7, r6, r2
002260  efc60300  loads.w r13, 0(r7)
002264  17871600  and r14, r13, r1
002268  9303e204  setlt.u r7, r4, r14
00226c  3bd00300  bneq r7, zero, 20
002270  9f830600  addli r7, r13, 0
002274  1307ee04  setlt.u r14, r28, r14
002278  3b2f07fe  bneq r14, zero, -56
00227c  5b020000  j 16
002280  97933600  or r7, r13, r3
002284  1307ee04  setlt.u r14, r28, r14
002288  bb6e07fe  bneq r14, zero, -72
00228c  9bc30601  srli r7, r13, 16
002290  9b831300  andi r7, r7, 1
002294  8b937610  add.s r7, r13, r7
002298  8b935310  add.s r7, r7, r5
00229c  9783f300  and r7, r7, r15
0022a0  5bf4ffff  j -96
0022a4  33080028  zext_int2long r[17:18], zero
0022a8  db050000  j 44
0022ac  1f011fed  addli r2, r30, -2424
0022b0  27480800  addli.d r[17:18], r[17:18], 4
0022b4  0b16c410  add.s r12, r8, r12
0022b8  eb560100  load.d r[14:15], 0(r2)
0022bc  73662601  stores.w r18, 12(r12)
0022c0  73647600  stores.w r7, 8(r12)
0022c4  7362b600  stores.w r11, 4(r12)
0022c8  73606601  stores.w r22, 0(r12)
0022cc  1321d800  seteq.d r2, r[17:18], r[14:15]
0022d0  bb6c01fe  bneq r2, zero, -200
0022d4  8b25a811  add.ul r[12:13], r[17:18], r[27:28]
0022d8  1bb62500  slli r12, r11, 2
0022dc  0b1bc310  add.s r22, r6, r12
0022e0  ef49cb00  loads.w r19, 12(r22)
0022e4  17811900  and r2, r19, r1
0022e8  93032204  setlt.u r7, r4, r2
0022ec  3bb00300  bneq r7, zero, 12
0022f0  1f890900  addli r18, r19, 0
0022f4  5b010000  j 8
0022f8  17993900  or r18, r19, r3
0022fc  6f478b00  loads.w r14, 8(r22)
002300  97061700  and r13, r14, r1
002304  9303d204  setlt.u r7, r4, r13
002308  3bb00300  bneq r7, zero, 12
00230c  9f030700  addli r7, r14, 0
002310  5b010000  j 8
002314  97133700  or r7, r14, r3
002318  ef4b4b00  loads.w r23, 4(r22)
00231c  178c1b00  and r24, r23, r1
002320  93058205  setlt.u r11, r4, r24
002324  3bb00500  bneq r11, zero, 12
002328  9f850b00  addli r11, r23, 0
00232c  5b010000  j 8
002330  97953b00  or r11, r23, r3
002334  ef4c0b00  loads.w r25, 0(r22)
002338  178a1c00  and r20, r25, r1
00233c  930a4205  setlt.u r21, r4, r20
002340  3bd00a00  bneq r21, zero, 20
002344  1f8b0c00  addli r22, r25, 0
002348  130a4e05  setlt.u r20, r28, r20
00234c  37500a00  beq r20, zero, 20
002350  db040000  j 36
002354  179b3c00  or r22, r25, r3
002358  130a4e05  setlt.u r20, r28, r20
00235c  3b600a00  bneq r20, zero, 24
002360  1bca0c01  srli r20, r25, 16
002364  1b0a1a00  andi r20, r20, 1
002368  0b9a4c11  add.s r20, r25, r20
00236c  0b1a5a10  add.s r20, r20, r5
002370  170bfa00  and r22, r20, r15
002374  130a8e05  setlt.u r20, r28, r24
002378  37600a00  beq r20, zero, 24
00237c  9306de04  setlt.u r13, r28, r13
002380  b7b00600  beq r13, zero, 44
002384  13012e04  setlt.u r2, r28, r2
002388  bb1c01fe  bneq r2, zero, -220
00238c  db070000  j 60
002390  9bc50b01  srli r11, r23, 16
002394  9b851500  andi r11, r11, 1
002398  8b95bb10  add.s r11, r23, r11
00239c  8b955510  add.s r11, r11, r5
0023a0  9785f500  and r11, r11, r15
0023a4  9306de04  setlt.u r13, r28, r13
0023a8  3bff06fe  bneq r13, zero, -36
0023ac  9b430701  srli r7, r14, 16
0023b0  9b831300  andi r7, r7, 1
0023b4  8b137710  add.s r7, r14, r7
0023b8  8b935310  add.s r7, r7, r5
0023bc  9783f300  and r7, r7, r15
0023c0  13012e04  setlt.u r2, r28, r2
0023c4  bb2b01fe  bneq r2, zero, -280
0023c8  1bc10901  srli r2, r19, 16
0023cc  1b011100  andi r2, r2, 1
0023d0  0b912910  add.s r2, r19, r2
0023d4  0b115110  add.s r2, r2, r5
0023d8  1709f100  and r18, r2, r15
0023dc  5bdaffff  j -304
0023e0  80350002  core_id r11
0023e4  1f460000  addli r12, zero, 4
0023e8  00200100  mfence { sm }
0023ec  6341dfec  loadli.w r2,  -2452(r30)
0023f0  3b380100  bneq r2, zero, 524
0023f4  3790c502  beq r11, r12, 1028
0023f8  1f710000  addli r2, zero, 7
0023fc  b7f72502  beq r11, r2, 1532
002400  1f610000  addli r2, zero, 6
002404  b78f2502  beq r11, r2, 2016
002408  1f510000  addli r2, zero, 5
00240c  3bc72504  bneq r11, r2, 2512
002410  1f412000  addli r2, zero, 20
002414  3d000000  xfence
002418  00a00300  mfence { lm, sm, gm }
00241c  b3050128  zext_int2long r[12:13], r2
002420  5b040000  j 32
002424  1f712000  addli r2, zero, 23
002428  b3050128  zext_int2long r[12:13], r2
00242c  1f01ffec  addli r2, r30, -2440
002430  eb560100  load.d r[14:15], 0(r2)
002434  13a1b604  setlt.ul r2, r[14:15], r[12:13]
002438  a7950600  addli.d r[12:13], r[14:15], 1
00243c  37560104  beq r2, zero, 2452
002440  1f610000  addli r2, zero, 6
002444  9f03ffec  addli r7, r30, -2440
002448  17bd2502  sll.d r[27:28], r[12:13], r2
00244c  73b0b300  store.d r[12:13], 0(r7)
002450  bb416400  bneq r8, r6, 112
002454  b3050028  zext_int2long r[12:13], zero
002458  5b030000  j 24
00245c  93a69504  setlt.ul r13, r[12:13], r[10:11]
002460  0b112410  add.s r2, r8, r2
002464  a7950500  addli.d r[12:13], r[12:13], 1
002468  73607100  stores.w r7, 0(r2)
00246c  b7ee06fe  beq r13, zero, -72
002470  8ba6a511  add.ul r[14:15], r[12:13], r[27:28]
002474  1bb12600  slli r2, r13, 2
002478  8b132310  add.s r7, r6, r2
00247c  efc60300  loads.w r13, 0(r7)
002480  17871600  and r14, r13, r1
002484  9303e204  setlt.u r7, r4, r14
002488  3bd00300  bneq r7, zero, 20
00248c  9f830600  addli r7, r13, 0
002490  1307ee04  setlt.u r14, r28, r14
002494  3b2f07fe  bneq r14, zero, -56
002498  5b020000  j 16
00249c  97933600  or r7, r13, r3
0024a0  1307ee04  setlt.u r14, r28, r14
0024a4  bb6e07fe  bneq r14, zero, -72
0024a8  9bc30601  srli r7, r13, 16
0024ac  9b831300  andi r7, r7, 1
0024b0  8b937610  add.s r7, r13, r7
0024b4  8b935310  add.s r7, r7, r5
0024b8  9783f300  and r7, r7, r15
0024bc  5bf4ffff  j -96
0024c0  33080028  zext_int2long r[17:18], zero
0024c4  db050000  j 44
0024c8  1f011fed  addli r2, r30, -2424
0024cc  27480800  addli.d r[17:18], r[17:18], 4
0024d0  8b13c410  add.s r7, r8, r12
0024d4  eb590100  load.d r[20:21], 0(r2)
0024d8  73e62301  stores.w r18, 12(r7)
0024dc  73e4e300  stores.w r14, 8(r7)
0024e0  73e2b300  stores.w r11, 4(r7)
0024e4  73e06301  stores.w r22, 0(r7)
0024e8  13213801  seteq.d r2, r[17:18], r[20:21]
0024ec  bb6c01fe  bneq r2, zero, -200
0024f0  8b25a811  add.ul r[12:13], r[17:18], r[27:28]
0024f4  1bb62500  slli r12, r11, 2
0024f8  0b1bc310  add.s r22, r6, r12
0024fc  6f41cb00  loads.w r2, 12(r22)
002500  97031100  and r7, r2, r1
002504  93057204  setlt.u r11, r4, r7
002508  3bb00500  bneq r11, zero, 12
00250c  1f090100  addli r18, r2, 0
002510  5b010000  j 8
002514  17193100  or r18, r2, r3
002518  ef498b00  loads.w r19, 8(r22)
00251c  97861900  and r13, r19, r1
002520  9305d204  setlt.u r11, r4, r13
002524  3bb00500  bneq r11, zero, 12
002528  1f870900  addli r14, r19, 0
00252c  5b010000  j 8
002530  17973900  or r14, r19, r3
002534  ef4b4b00  loads.w r23, 4(r22)
002538  178c1b00  and r24, r23, r1
00253c  93058205  setlt.u r11, r4, r24
002540  3bb00500  bneq r11, zero, 12
002544  9f850b00  addli r11, r23, 0
002548  5b010000  j 8
00254c  97953b00  or r11, r23, r3
002550  ef4c0b00  loads.w r25, 0(r22)
002554  178a1c00  and r20, r25, r1
002558  930a4205  setlt.u r21, r4, r20
00255c  3b810a00  bneq r21, zero, 64
002560  1f8b0c00  addli r22, r25, 0
002564  130a4e05  setlt.u r20, r28, r20
002568  3b600a00  bneq r20, zero, 24
00256c  1bca0c01  srli r20, r25, 16
002570  1b0a1a00  andi r20, r20, 1
002574  0b9a4c11  add.s r20, r25, r20
002578  0b1a5a10  add.s r20, r20, r5
00257c  170bfa00  and r22, r20, r15
002580  130a8e05  setlt.u r20, r28, r24
002584  b7200a00  beq r20, zero, 40
002588  9306de04  setlt.u r13, r28, r13
00258c  b7f00600  beq r13, zero, 60
002590  93037e04  setlt.u r7, r28, r7
002594  bbdc03fe  bneq r7, zero, -204
002598  db090000  j 76
00259c  179b3c00  or r22, r25, r3
0025a0  130a4e05  setlt.u r20, r28, r20
0025a4  372f0afe  beq r20, zero, -56
0025a8  5bfbffff  j -40
0025ac  9bc50b01  srli r11, r23, 16
0025b0  9b851500  andi r11, r11, 1
0025b4  8b95bb10  add.s r11, r23, r11
0025b8  8b955510  add.s r11, r11, r5
0025bc  9785f500  and r11, r11, r15
0025c0  9306de04  setlt.u r13, r28, r13
0025c4  3bbf06fe  bneq r13, zero, -52
0025c8  9bc60901  srli r13, r19, 16
0025cc  9b861600  andi r13, r13, 1
0025d0  8b96d910  add.s r13, r19, r13
0025d4  8b965610  add.s r13, r13, r5
0025d8  1787f600  and r14, r13, r15
0025dc  93037e04  setlt.u r7, r28, r7
0025e0  bbab03fe  bneq r7, zero, -280
0025e4  9b430101  srli r7, r2, 16
0025e8  9b831300  andi r7, r7, 1
0025ec  0b117110  add.s r2, r2, r7
0025f0  0b115110  add.s r2, r2, r5
0025f4  1709f100  and r18, r2, r15
0025f8  5bdaffff  j -304
0025fc  1f411000  addli r2, zero, 12
002600  3d000000  xfence
002604  00a00300  mfence { lm, sm, gm }
002608  b3050128  zext_int2long r[12:13], r2
00260c  5b040000  j 32
002610  1f711000  addli r2, zero, 15
002614  b3050128  zext_int2long r[12:13], r2
002618  1f01ffec  addli r2, r30, -2440
00261c  eb560100  load.d r[14:15], 0(r2)
002620  13a1b604  setlt.ul r2, r[14:15], r[12:13]
002624  a7950600  addli.d r[12:13], r[14:15], 1
002628  37070100  beq r2, zero, 448
00262c  1f610000  addli r2, zero, 6
002630  9f03ffec  addli r7, r30, -2440
002634  17bd2502  sll.d r[27:28], r[12:13], r2
002638  73b0b300  store.d r[12:13], 0(r7)
00263c  bb416400  bneq r8, r6, 112
002640  b3050028  zext_int2long r[12:13], zero
002644  5b030000  j 24
002648  93a69504  setlt.ul r13, r[12:13], r[10:11]
00264c  0b112410  add.s r2, r8, r2
002650  a7950500  addli.d r[12:13], r[12:13], 1
002654  73607100  stores.w r7, 0(r2)
002658  b7ee06fe  beq r13, zero, -72
00265c  8ba6a511  add.ul r[14:15], r[12:13], r[27:28]
002660  1bb12600  slli r2, r13, 2
002664  8b132310  add.s r7, r6, r2
002668  efc60300  loads.w r13, 0(r7)
00266c  17871600  and r14, r13, r1
002670  9303e204  setlt.u r7, r4, r14
002674  3bd00300  bneq r7, zero, 20
002678  9f830600  addli r7, r13, 0
00267c  1307ee04  setlt.u r14, r28, r14
002680  3b2f07fe  bneq r14, zero, -56
002684  5b020000  j 16
002688  97933600  or r7, r13, r3
00268c  1307ee04  setlt.u r14, r28, r14
002690  bb6e07fe  bneq r14, zero, -72
002694  9bc30601  srli r7, r13, 16
002698  9b831300  andi r7, r7, 1
00269c  8b937610  add.s r7, r13, r7
0026a0  8b935310  add.s r7, r7, r5
0026a4  9783f300  and r7, r7, r15
0026a8  5bf4ffff  j -96
0026ac  33080028  zext_int2long r[17:18], zero
0026b0  db050000  j 44
0026b4  1f011fed  addli r2, r30, -2424
0026b8  27480800  addli.d r[17:18], r[17:18], 4
0026bc  8b13c410  add.s r7, r8, r12
0026c0  eb590100  load.d r[20:21], 0(r2)
0026c4  73e62301  stores.w r18, 12(r7)
0026c8  73e4e300  stores.w r14, 8(r7)
0026cc  73e2b300  stores.w r11, 4(r7)
0026d0  73e06301  stores.w r22, 0(r7)
0026d4  13213801  seteq.d r2, r[17:18], r[20:21]
0026d8  bb6c01fe  bneq r2, zero, -200
0026dc  8b25a811  add.ul r[12:13], r[17:18], r[27:28]
0026e0  1bb62500  slli r12, r11, 2
0026e4  0b1bc310  add.s r22, r6, r12
0026e8  6f41cb00  loads.w r2, 12(r22)
0026ec  97031100  and r7, r2, r1
0026f0  93057204  setlt.u r11, r4, r7
0026f4  3bb00500  bneq r11, zero, 12
0026f8  1f090100  addli r18, r2, 0
0026fc  5b010000  j 8
002700  17193100  or r18, r2, r3
002704  ef498b00  loads.w r19, 8(r22)
002708  97861900  and r13, r19, r1
00270c  9305d204  setlt.u r11, r4, r13
002710  3bb00500  bneq r11, zero, 12
002714  1f870900  addli r14, r19, 0
002718  5b010000  j 8
00271c  17973900  or r14, r19, r3
002720  ef4b4b00  loads.w r23, 4(r22)
002724  178c1b00  and r24, r23, r1
002728  93058205  setlt.u r11, r4, r24
00272c  3bb00500  bneq r11, zero, 12
002730  9f850b00  addli r11, r23, 0
002734  5b010000  j 8
002738  97953b00  or r11, r23, r3
00273c  ef4c0b00  loads.w r25, 0(r22)
002740  178a1c00  and r20, r25, r1
002744  930a4205  setlt.u r21, r4, r20
002748  3b810a00  bneq r21, zero, 64
00274c  1f8b0c00  addli r22, r25, 0
002750  130a4e05  setlt.u r20, r28, r20
002754  3b600a00  bneq r20, zero, 24
002758  1bca0c01  srli r20, r25, 16
00275c  1b0a1a00  andi r20, r20, 1
002760  0b9a4c11  add.s r20, r25, r20
002764  0b1a5a10  add.s r20, r20, r5
002768  170bfa00  and r22, r20, r15
00276c  130a8e05  setlt.u r20, r28, r24
002770  b7200a00  beq r20, zero, 40
002774  9306de04  setlt.u r13, r28, r13
002778  b7f00600  beq r13, zero, 60
00277c  93037e04  setlt.u r7, r28, r7
002780  bbdc03fe  bneq r7, zero, -204
002784  db090000  j 76
002788  179b3c00  or r22, r25, r3
00278c  130a4e05  setlt.u r20, r28, r20
002790  372f0afe  beq r20, zero, -56
002794  5bfbffff  j -40
002798  9bc50b01  srli r11, r23, 16
00279c  9b851500  andi r11, r11, 1
0027a0  8b95bb10  add.s r11, r23, r11
0027a4  8b955510  add.s r11, r11, r5
0027a8  9785f500  and r11, r11, r15
0027ac  9306de04  setlt.u r13, r28, r13
0027b0  3bbf06fe  bneq r13, zero, -52
0027b4  9bc60901  srli r13, r19, 16
0027b8  9b861600  andi r13, r13, 1
0027bc  8b96d910  add.s r13, r19, r13
0027c0  8b965610  add.s r13, r13, r5
0027c4  1787f600  and r14, r13, r15
0027c8  93037e04  setlt.u r7, r28, r7
0027cc  bbab03fe  bneq r7, zero, -280
0027d0  9b430101  srli r7, r2, 16
0027d4  9b831300  andi r7, r7, 1
0027d8  0b117110  add.s r2, r2, r7
0027dc  0b115110  add.s r2, r2, r5
0027e0  1709f100  and r18, r2, r15
0027e4  5bdaffff  j -304
0027e8  80350002  core_id r11
0027ec  1f460000  addli r12, zero, 4
0027f0  00200100  mfence { sm }
0027f4  3b90c5fe  bneq r11, r12, -1020
0027f8  1f012000  addli r2, zero, 16
0027fc  3d000000  xfence
002800  00a00300  mfence { lm, sm, gm }
002804  b3050128  zext_int2long r[12:13], r2
002808  5b040000  j 32
00280c  1f312000  addli r2, zero, 19
002810  b3050128  zext_int2long r[12:13], r2
002814  1f01ffec  addli r2, r30, -2440
002818  eb560100  load.d r[14:15], 0(r2)
00281c  13a1b604  setlt.ul r2, r[14:15], r[12:13]
002820  a7950600  addli.d r[12:13], r[14:15], 1
002824  37070100  beq r2, zero, 448
002828  1f610000  addli r2, zero, 6
00282c  9f03ffec  addli r7, r30, -2440
002830  17bd2502  sll.d r[27:28], r[12:13], r2
002834  73b0b300  store.d r[12:13], 0(r7)
002838  bb416400  bneq r8, r6, 112
00283c  b3050028  zext_int2long r[12:13], zero
002840  5b030000  j 24
002844  93a69504  setlt.ul r13, r[12:13], r[10:11]
002848  0b112410  add.s r2, r8, r2
00284c  a7950500  addli.d r[12:13], r[12:13], 1
002850  73607100  stores.w r7, 0(r2)
002854  b7ee06fe  beq r13, zero, -72
002858  8ba6a511  add.ul r[14:15], r[12:13], r[27:28]
00285c  1bb12600  slli r2, r13, 2
002860  8b132310  add.s r7, r6, r2
002864  efc60300  loads.w r13, 0(r7)
002868  17871600  and r14, r13, r1
00286c  9303e204  setlt.u r7, r4, r14
002870  3bd00300  bneq r7, zero, 20
002874  9f830600  addli r7, r13, 0
002878  1307ee04  setlt.u r14, r28, r14
00287c  3b2f07fe  bneq r14, zero, -56
002880  5b020000  j 16
002884  97933600  or r7, r13, r3
002888  1307ee04  setlt.u r14, r28, r14
00288c  bb6e07fe  bneq r14, zero, -72
002890  9bc30601  srli r7, r13, 16
002894  9b831300  andi r7, r7, 1
002898  8b937610  add.s r7, r13, r7
00289c  8b935310  add.s r7, r7, r5
0028a0  9783f300  and r7, r7, r15
0028a4  5bf4ffff  j -96
0028a8  33080028  zext_int2long r[17:18], zero
0028ac  db050000  j 44
0028b0  1f011fed  addli r2, r30, -2424
0028b4  27480800  addli.d r[17:18], r[17:18], 4
0028b8  8b13c410  add.s r7, r8, r12
0028bc  eb590100  load.d r[20:21], 0(r2)
0028c0  73e62301  stores.w r18, 12(r7)
0028c4  73e4e300  stores.w r14, 8(r7)
0028c8  73e2b300  stores.w r11, 4(r7)
0028cc  73e06301  stores.w r22, 0(r7)
0028d0  13213801  seteq.d r2, r[17:18], r[20:21]
0028d4  bb6c01fe  bneq r2, zero, -200
0028d8  8b25a811  add.ul r[12:13], r[17:18], r[27:28]
0028dc  1bb62500  slli r12, r11, 2
0028e0  0b1bc310  add.s r22, r6, r12
0028e4  6f41cb00  loads.w r2, 12(r22)
0028e8  97031100  and r7, r2, r1
0028ec  93057204  setlt.u r11, r4, r7
0028f0  3bb00500  bneq r11, zero, 12
0028f4  1f090100  addli r18, r2, 0
0028f8  5b010000  j 8
0028fc  17193100  or r18, r2, r3
002900  ef498b00  loads.w r19, 8(r22)
002904  97861900  and r13, r19, r1
002908  9305d204  setlt.u r11, r4, r13
00290c  3bb00500  bneq r11, zero, 12
002910  1f870900  addli r14, r19, 0
002914  5b010000  j 8
002918  17973900  or r14, r19, r3
00291c  ef4b4b00  loads.w r23, 4(r22)
002920  178c1b00  and r24, r23, r1
002924  93058205  setlt.u r11, r4, r24
002928  3bb00500  bneq r11, zero, 12
00292c  9f850b00  addli r11, r23, 0
002930  5b010000  j 8
002934  97953b00  or r11, r23, r3
002938  ef4c0b00  loads.w r25, 0(r22)
00293c  178a1c00  and r20, r25, r1
002940  930a4205  setlt.u r21, r4, r20
002944  3b810a00  bneq r21, zero, 64
002948  1f8b0c00  addli r22, r25, 0
00294c  130a4e05  setlt.u r20, r28, r20
002950  3b600a00  bneq r20, zero, 24
002954  1bca0c01  srli r20, r25, 16
002958  1b0a1a00  andi r20, r20, 1
00295c  0b9a4c11  add.s r20, r25, r20
002960  0b1a5a10  add.s r20, r20, r5
002964  170bfa00  and r22, r20, r15
002968  130a8e05  setlt.u r20, r28, r24
00296c  b7200a00  beq r20, zero, 40
002970  9306de04  setlt.u r13, r28, r13
002974  b7f00600  beq r13, zero, 60
002978  93037e04  setlt.u r7, r28, r7
00297c  bbdc03fe  bneq r7, zero, -204
002980  db090000  j 76
002984  179b3c00  or r22, r25, r3
002988  130a4e05  setlt.u r20, r28, r20
00298c  372f0afe  beq r20, zero, -56
002990  5bfbffff  j -40
002994  9bc50b01  srli r11, r23, 16
002998  9b851500  andi r11, r11, 1
00299c  8b95bb10  add.s r11, r23, r11
0029a0  8b955510  add.s r11, r11, r5
0029a4  9785f500  and r11, r11, r15
0029a8  9306de04  setlt.u r13, r28, r13
0029ac  3bbf06fe  bneq r13, zero, -52
0029b0  9bc60901  srli r13, r19, 16
0029b4  9b861600  andi r13, r13, 1
0029b8  8b96d910  add.s r13, r19, r13
0029bc  8b965610  add.s r13, r13, r5
0029c0  1787f600  and r14, r13, r15
0029c4  93037e04  setlt.u r7, r28, r7
0029c8  bbab03fe  bneq r7, zero, -280
0029cc  9b430101  srli r7, r2, 16
0029d0  9b831300  andi r7, r7, 1
0029d4  0b117110  add.s r2, r2, r7
0029d8  0b115110  add.s r2, r2, r5
0029dc  1709f100  and r18, r2, r15
0029e0  5bdaffff  j -304
0029e4  80350002  core_id r11
0029e8  1f460000  addli r12, zero, 4
0029ec  00200100  mfence { sm }
0029f0  1f710000  addli r2, zero, 7
0029f4  3bb825fc  bneq r11, r2, -1524
0029f8  1f413000  addli r2, zero, 28
0029fc  3d000000  xfence
002a00  00a00300  mfence { lm, sm, gm }
002a04  b3050128  zext_int2long r[12:13], r2
002a08  5b040000  j 32
002a0c  1f713000  addli r2, zero, 31
002a10  b3050128  zext_int2long r[12:13], r2
002a14  1f01ffec  addli r2, r30, -2440
002a18  eb560100  load.d r[14:15], 0(r2)
002a1c  13a1b604  setlt.ul r2, r[14:15], r[12:13]
002a20  a7950600  addli.d r[12:13], r[14:15], 1
002a24  b73e0100  beq r2, zero, 940
002a28  1f610000  addli r2, zero, 6
002a2c  9f03ffec  addli r7, r30, -2440
002a30  17bd2502  sll.d r[27:28], r[12:13], r2
002a34  73b0b300  store.d r[12:13], 0(r7)
002a38  bb416400  bneq r8, r6, 112
002a3c  b3050028  zext_int2long r[12:13], zero
002a40  5b030000  j 24
002a44  93a69504  setlt.ul r13, r[12:13], r[10:11]
002a48  0b112410  add.s r2, r8, r2
002a4c  a7950500  addli.d r[12:13], r[12:13], 1
002a50  73607100  stores.w r7, 0(r2)
002a54  b7ee06fe  beq r13, zero, -72
002a58  8ba6a511  add.ul r[14:15], r[12:13], r[27:28]
002a5c  1bb12600  slli r2, r13, 2
002a60  8b132310  add.s r7, r6, r2
002a64  efc60300  loads.w r13, 0(r7)
002a68  17871600  and r14, r13, r1
002a6c  9303e204  setlt.u r7, r4, r14
002a70  3bd00300  bneq r7, zero, 20
002a74  9f830600  addli r7, r13, 0
002a78  1307ee04  setlt.u r14, r28, r14
002a7c  3b2f07fe  bneq r14, zero, -56
002a80  5b020000  j 16
002a84  97933600  or r7, r13, r3
002a88  1307ee04  setlt.u r14, r28, r14
002a8c  bb6e07fe  bneq r14, zero, -72
002a90  9bc30601  srli r7, r13, 16
002a94  9b831300  andi r7, r7, 1
002a98  8b937610  add.s r7, r13, r7
002a9c  8b935310  add.s r7, r7, r5
002aa0  9783f300  and r7, r7, r15
002aa4  5bf4ffff  j -96
002aa8  33080028  zext_int2long r[17:18], zero
002aac  db050000  j 44
002ab0  1f011fed  addli r2, r30, -2424
002ab4  27480800  addli.d r[17:18], r[17:18], 4
002ab8  8b13c410  add.s r7, r8, r12
002abc  eb590100  load.d r[20:21], 0(r2)
002ac0  73e62301  stores.w r18, 12(r7)
002ac4  73e4e300  stores.w r14, 8(r7)
002ac8  73e2b300  stores.w r11, 4(r7)
002acc  73e06301  stores.w r22, 0(r7)
002ad0  13213801  seteq.d r2, r[17:18], r[20:21]
002ad4  bb6c01fe  bneq r2, zero, -200
002ad8  8b25a811  add.ul r[12:13], r[17:18], r[27:28]
002adc  1bb62500  slli r12, r11, 2
002ae0  0b1bc310  add.s r22, r6, r12
002ae4  6f41cb00  loads.w r2, 12(r22)
002ae8  97031100  and r7, r2, r1
002aec  93057204  setlt.u r11, r4, r7
002af0  3bb00500  bneq r11, zero, 12
002af4  1f090100  addli r18, r2, 0
002af8  5b010000  j 8
002afc  17193100  or r18, r2, r3
002b00  ef498b00  loads.w r19, 8(r22)
002b04  97861900  and r13, r19, r1
002b08  9305d204  setlt.u r11, r4, r13
002b0c  3bb00500  bneq r11, zero, 12
002b10  1f870900  addli r14, r19, 0
002b14  5b010000  j 8
002b18  17973900  or r14, r19, r3
002b1c  ef4b4b00  loads.w r23, 4(r22)
002b20  178c1b00  and r24, r23, r1
002b24  93058205  setlt.u r11, r4, r24
002b28  3bb00500  bneq r11, zero, 12
002b2c  9f850b00  addli r11, r23, 0
002b30  5b010000  j 8
002b34  97953b00  or r11, r23, r3
002b38  ef4c0b00  loads.w r25, 0(r22)
002b3c  178a1c00  and r20, r25, r1
002b40  930a4205  setlt.u r21, r4, r20
002b44  3bd00a00  bneq r21, zero, 20
002b48  1f8b0c00  addli r22, r25, 0
002b4c  130a4e05  setlt.u r20, r28, r20
002b50  37500a00  beq r20, zero, 20
002b54  db040000  j 36
002b58  179b3c00  or r22, r25, r3
002b5c  130a4e05  setlt.u r20, r28, r20
002b60  3b600a00  bneq r20, zero, 24
002b64  1bca0c01  srli r20, r25, 16
002b68  1b0a1a00  andi r20, r20, 1
002b6c  0b9a4c11  add.s r20, r25, r20
002b70  0b1a5a10  add.s r20, r20, r5
002b74  170bfa00  and r22, r20, r15
002b78  130a8e05  setlt.u r20, r28, r24
002b7c  37600a00  beq r20, zero, 24
002b80  9306de04  setlt.u r13, r28, r13
002b84  b7b00600  beq r13, zero, 44
002b88  93037e04  setlt.u r7, r28, r7
002b8c  bb9c03fe  bneq r7, zero, -220
002b90  db070000  j 60
002b94  9bc50b01  srli r11, r23, 16
002b98  9b851500  andi r11, r11, 1
002b9c  8b95bb10  add.s r11, r23, r11
002ba0  8b955510  add.s r11, r11, r5
002ba4  9785f500  and r11, r11, r15
002ba8  9306de04  setlt.u r13, r28, r13
002bac  3bff06fe  bneq r13, zero, -36
002bb0  9bc60901  srli r13, r19, 16
002bb4  9b861600  andi r13, r13, 1
002bb8  8b96d910  add.s r13, r19, r13
002bbc  8b965610  add.s r13, r13, r5
002bc0  1787f600  and r14, r13, r15
002bc4  93037e04  setlt.u r7, r28, r7
002bc8  bbab03fe  bneq r7, zero, -280
002bcc  9b430101  srli r7, r2, 16
002bd0  9b831300  andi r7, r7, 1
002bd4  0b117110  add.s r2, r2, r7
002bd8  0b115110  add.s r2, r2, r5
002bdc  1709f100  and r18, r2, r15
002be0  5bdaffff  j -304
002be4  1f013000  addli r2, zero, 24
002be8  3d000000  xfence
002bec  00a00300  mfence { lm, sm, gm }
002bf0  b3050128  zext_int2long r[12:13], r2
002bf4  5b040000  j 32
002bf8  1f313000  addli r2, zero, 27
002bfc  b3050128  zext_int2long r[12:13], r2
002c00  1f01ffec  addli r2, r30, -2440
002c04  eb560100  load.d r[14:15], 0(r2)
002c08  13a1b604  setlt.ul r2, r[14:15], r[12:13]
002c0c  a7950600  addli.d r[12:13], r[14:15], 1
002c10  37070100  beq r2, zero, 448
002c14  1f610000  addli r2, zero, 6
002c18  9f03ffec  addli r7, r30, -2440
002c1c  17bd2502  sll.d r[27:28], r[12:13], r2
002c20  73b0b300  store.d r[12:13], 0(r7)
002c24  bb416400  bneq r8, r6, 112
002c28  b3050028  zext_int2long r[12:13], zero
002c2c  5b030000  j 24
002c30  93a69504  setlt.ul r13, r[12:13], r[10:11]
002c34  0b112410  add.s r2, r8, r2
002c38  a7950500  addli.d r[12:13], r[12:13], 1
002c3c  73607100  stores.w r7, 0(r2)
002c40  b7ee06fe  beq r13, zero, -72
002c44  8ba6a511  add.ul r[14:15], r[12:13], r[27:28]
002c48  1bb12600  slli r2, r13, 2
002c4c  8b132310  add.s r7, r6, r2
002c50  efc60300  loads.w r13, 0(r7)
002c54  17871600  and r14, r13, r1
002c58  9303e204  setlt.u r7, r4, r14
002c5c  3bd00300  bneq r7, zero, 20
002c60  9f830600  addli r7, r13, 0
002c64  1307ee04  setlt.u r14, r28, r14
002c68  3b2f07fe  bneq r14, zero, -56
002c6c  5b020000  j 16
002c70  97933600  or r7, r13, r3
002c74  1307ee04  setlt.u r14, r28, r14
002c78  bb6e07fe  bneq r14, zero, -72
002c7c  9bc30601  srli r7, r13, 16
002c80  9b831300  andi r7, r7, 1
002c84  8b937610  add.s r7, r13, r7
002c88  8b935310  add.s r7, r7, r5
002c8c  9783f300  and r7, r7, r15
002c90  5bf4ffff  j -96
002c94  33080028  zext_int2long r[17:18], zero
002c98  db050000  j 44
002c9c  1f011fed  addli r2, r30, -2424
002ca0  27480800  addli.d r[17:18], r[17:18], 4
002ca4  8b13c410  add.s r7, r8, r12
002ca8  eb590100  load.d r[20:21], 0(r2)
002cac  73e62301  stores.w r18, 12(r7)
002cb0  73e4e300  stores.w r14, 8(r7)
002cb4  73e2b300  stores.w r11, 4(r7)
002cb8  73e06301  stores.w r22, 0(r7)
002cbc  13213801  seteq.d r2, r[17:18], r[20:21]
002cc0  bb6c01fe  bneq r2, zero, -200
002cc4  8b25a811  add.ul r[12:13], r[17:18], r[27:28]
002cc8  1bb62500  slli r12, r11, 2
002ccc  0b1bc310  add.s r22, r6, r12
002cd0  6f41cb00  loads.w r2, 12(r22)
002cd4  97031100  and r7, r2, r1
002cd8  93057204  setlt.u r11, r4, r7
002cdc  3bb00500  bneq r11, zero, 12
002ce0  1f090100  addli r18, r2, 0
002ce4  5b010000  j 8
002ce8  17193100  or r18, r2, r3
002cec  ef498b00  loads.w r19, 8(r22)
002cf0  97861900  and r13, r19, r1
002cf4  9305d204  setlt.u r11, r4, r13
002cf8  3bb00500  bneq r11, zero, 12
002cfc  1f870900  addli r14, r19, 0
002d00  5b010000  j 8
002d04  17973900  or r14, r19, r3
002d08  ef4b4b00  loads.w r23, 4(r22)
002d0c  178c1b00  and r24, r23, r1
002d10  93058205  setlt.u r11, r4, r24
002d14  3bb00500  bneq r11, zero, 12
002d18  9f850b00  addli r11, r23, 0
002d1c  5b010000  j 8
002d20  97953b00  or r11, r23, r3
002d24  ef4c0b00  loads.w r25, 0(r22)
002d28  178a1c00  and r20, r25, r1
002d2c  930a4205  setlt.u r21, r4, r20
002d30  3bd00a00  bneq r21, zero, 20
002d34  1f8b0c00  addli r22, r25, 0
002d38  130a4e05  setlt.u r20, r28, r20
002d3c  37500a00  beq r20, zero, 20
002d40  db040000  j 36
002d44  179b3c00  or r22, r25, r3
002d48  130a4e05  setlt.u r20, r28, r20
002d4c  3b600a00  bneq r20, zero, 24
002d50  1bca0c01  srli r20, r25, 16
002d54  1b0a1a00  andi r20, r20, 1
002d58  0b9a4c11  add.s r20, r25, r20
002d5c  0b1a5a10  add.s r20, r20, r5
002d60  170bfa00  and r22, r20, r15
002d64  130a8e05  setlt.u r20, r28, r24
002d68  37600a00  beq r20, zero, 24
002d6c  9306de04  setlt.u r13, r28, r13
002d70  b7b00600  beq r13, zero, 44
002d74  93037e04  setlt.u r7, r28, r7
002d78  bb9c03fe  bneq r7, zero, -220
002d7c  db070000  j 60
002d80  9bc50b01  srli r11, r23, 16
002d84  9b851500  andi r11, r11, 1
002d88  8b95bb10  add.s r11, r23, r11
002d8c  8b955510  add.s r11, r11, r5
002d90  9785f500  and r11, r11, r15
002d94  9306de04  setlt.u r13, r28, r13
002d98  3bff06fe  bneq r13, zero, -36
002d9c  9bc60901  srli r13, r19, 16
002da0  9b861600  andi r13, r13, 1
002da4  8b96d910  add.s r13, r19, r13
002da8  8b965610  add.s r13, r13, r5
002dac  1787f600  and r14, r13, r15
002db0  93037e04  setlt.u r7, r28, r7
002db4  bbab03fe  bneq r7, zero, -280
002db8  9b430101  srli r7, r2, 16
002dbc  9b831300  andi r7, r7, 1
002dc0  0b117110  add.s r2, r2, r7
002dc4  0b115110  add.s r2, r2, r5
002dc8  1709f100  and r18, r2, r15
002dcc  5bdaffff  j -304
002dd0  80350002  core_id r11
002dd4  1f460000  addli r12, zero, 4
002dd8  00200100  mfence { sm }
002ddc  1f71f001  addli r2, zero, 255
002de0  80220104  csr_set csr5, r2
002de4  00e00200  sync_core
002de8  6341dfec  loadli.w r2,  -2452(r30)
002dec  3b2b01f2  bneq r2, zero, -6456
002df0  3bdb05f2  bneq r11, zero, -6444
002df4  63019fec  loadli.w r2,  -2488(r30)
002df8  9f048007  addli r9, zero, 960
002dfc  1f081fed  addli r16, r30, -2424
002e00  e3459fec  loadli.w r11,  -2484(r30)
002e04  1f190000  addli r18, zero, 1
002e08  b3840428  zext_int2long r[10:11], r9
002e0c  eb560800  load.d r[14:15], 0(r16)
002e10  1f08bfec  addli r16, r30, -2472
002e14  33030128  zext_int2long r[7:8], r2
002e18  1f012000  addli r2, zero, 16
002e1c  b3950528  sext_int2long r[12:13], r11
002e20  8b249340  min.ul r[10:11], r[7:8], r[10:11]
002e24  a7848400  addli.d r[10:11], r[10:11], 64
002e28  8ba46448  max.ul r[10:11], r[10:11], r[7:8]
002e2c  0bb36418  sub.sl r[7:8], r[10:11], r[7:8]
002e30  9f040fed  addli r9, r30, -2432
002e34  0b23d340  min.ul r[7:8], r[7:8], r[14:15]
002e38  eb560800  load.d r[14:15], 0(r16)
002e3c  ebd90400  load.d r[20:21], 0(r9)
002e40  6b580f01  load.d r[17:18], 16(r30)
002e44  97b62602  sll.d r[14:15], r[14:15], r2
002e48  1f01afec  addli r2, r30, -2480
002e4c  8bb43541  min.sl r[10:11], r[12:13], r[20:21]
002e50  8b26d810  add.ul r[14:15], r[17:18], r[14:15]
002e54  6b580100  load.d r[17:18], 0(r2)
002e58  a7844400  addli.d r[10:11], r[10:11], 32
002e5c  1f411000  addli r2, zero, 12
002e60  8bb4b448  max.sl r[10:11], r[10:11], r[12:13]
002e64  7d100100  xwait r2, 0
002e68  1b110404  ori r2, r8, 64
002e6c  17382803  sll.d r[17:18], r[17:18], r18
002e70  8bb4b418  sub.sl r[10:11], r[10:11], r[12:13]
002e74  8ba50611  add.ul r[12:13], r[14:15], r[17:18]
002e78  9f560000  addli r13, zero, 5
002e7c  1f078000  addli r14, zero, 64
002e80  0bb43441  min.sl r[9:10], r[10:11], r[20:21]
002e84  1d800600  lock zero, r13
002e88  15090900  dma_cfg r18, r18, zero, 0
002e8c  15000902  dma_cfg zero, r18, zero, 1
002e90  15060004  dma_cfg r12, zero, zero, 2
002e94  9505e106  dma_cfg r11, r2, r14, 3
002e98  1f713300  addli r2, r6, 31
002e9c  1b331300  slli r6, r6, 1
002ea0  9f030001  addli r7, zero, 128
002ea4  80350002  core_id r11
002ea8  1f460000  addli r12, zero, 4
002eac  1b415100  srli r2, r2, 5
002eb0  15872308  dma_cfg r14, r7, r2, 4
002eb4  1b01e303  andi r2, r6, 62
002eb8  1f030002  addli r6, zero, 256
002ebc  9f030010  addli r7, zero, 2048
002ec0  9503830a  dma_cfg r7, r6, r8, 5
002ec4  15002010  dma_cfg zero, zero, r2, 8
002ec8  35000000  dma_run zero
002ecc  1500200b  dma_cfg zero, zero, r18, 5
002ed0  1f511000  addli r2, zero, 13
002ed4  15000010  dma_cfg zero, zero, zero, 8
002ed8  1d900600  unlock r13
002edc  dbbcfcff  j -6684
002ee0  7d000000  xsignal zero, 0
002ee4  bbe00500  bneq r11, zero, 56
002ee8  9f200000  addli r1, zero, 2
002eec  7d100000  xwait zero, 0
002ef0  7d100000  xwait zero, 0
002ef4  7d100000  xwait zero, 0
002ef8  7d100000  xwait zero, 0
002efc  7d100000  xwait zero, 0
002f00  7d100000  xwait zero, 0
002f04  7d100000  xwait zero, 0
002f08  7d100000  xwait zero, 0
002f0c  1d800000  lock zero, r1
002f10  0d000020  ew_cfg zero, zero, zero, 16
002f14  1d900000  unlock r1
002f18  7d400000  xsignal_mode_cfg zero
002f1c  9f8e9e13  addli sp, sp, 2504
002f20  00a00300  mfence { lm, sm, gm }
002f24  00100000  exit
002f28  00100000  exit
002f2c  00100000  exit
002f30  00100000  exit
002f34  00100000  exit
002f38  00100000  exit
002f3c  00100000  exit
002f40  00100000  exit
002f44  00100000  exit
002f48  00100000  exit
002f4c  00100000  exit
002f50  00100000  exit
002f54  00100000  exit
002f58  00100000  exit
002f5c  00100000  exit
002f60  00100000  exit
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
