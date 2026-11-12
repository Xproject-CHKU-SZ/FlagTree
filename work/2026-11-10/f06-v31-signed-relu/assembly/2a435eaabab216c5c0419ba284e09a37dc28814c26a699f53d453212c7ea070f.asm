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
0000b4  9f8e0ee3  addli sp, sp, -3712
0000b8  9f100000  addli r1, zero, 1
0000bc  803a0002  core_id r21
0000c0  1f8f8e1c  addli r30, sp, 3648
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00a00  beq r21, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5bc80100  j 3648
0000e0  1f210000  addli r2, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  abf1ffff  lui r3, 1048575
0000ec  1d000100  lock zero, r2
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b90f1ff  ori r1, r3, 4095
0000f8  9f310000  addli r3, zero, 3
0000fc  1d100100  unlock r2
000100  1f311000  addli r2, zero, 11
000104  80a10004  csr_set csr3, r1
000108  9f500000  addli r1, zero, 5
00010c  00d00100  sync_group
000110  7d000100  xsignal r2, 0
000114  7d000100  xsignal r2, 0
000118  7d000100  xsignal r2, 0
00011c  7d000100  xsignal r2, 0
000120  7d000100  xsignal r2, 0
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
000424  7d800000  xsignal r1, 0
000428  7d800000  xsignal r1, 0
00042c  7d800000  xsignal r1, 0
000430  7d800000  xsignal r1, 0
000434  7d800000  xsignal r1, 0
000438  7d800000  xsignal r1, 0
00043c  7d800000  xsignal r1, 0
000440  7d800000  xsignal r1, 0
000444  7d800000  xsignal r1, 0
000448  7d800000  xsignal r1, 0
00044c  7d800000  xsignal r1, 0
000450  7d800000  xsignal r1, 0
000454  7d800000  xsignal r1, 0
000458  7d800000  xsignal r1, 0
00045c  7d800000  xsignal r1, 0
000460  7d800000  xsignal r1, 0
000464  7d800000  xsignal r1, 0
000468  7d800000  xsignal r1, 0
00046c  7d800000  xsignal r1, 0
000470  7d800000  xsignal r1, 0
000474  7d800000  xsignal r1, 0
000478  7d800000  xsignal r1, 0
00047c  7d800000  xsignal r1, 0
000480  7d800000  xsignal r1, 0
000484  7d800000  xsignal r1, 0
000488  7d800000  xsignal r1, 0
00048c  7d800000  xsignal r1, 0
000490  7d800000  xsignal r1, 0
000494  7d800000  xsignal r1, 0
000498  7d800000  xsignal r1, 0
00049c  7d800000  xsignal r1, 0
0004a0  7d800000  xsignal r1, 0
0004a4  7d800000  xsignal r1, 0
0004a8  7d800000  xsignal r1, 0
0004ac  7d800000  xsignal r1, 0
0004b0  7d800000  xsignal r1, 0
0004b4  7d800000  xsignal r1, 0
0004b8  7d800000  xsignal r1, 0
0004bc  7d800000  xsignal r1, 0
0004c0  7d800000  xsignal r1, 0
0004c4  7d800000  xsignal r1, 0
0004c8  7d800000  xsignal r1, 0
0004cc  7d800000  xsignal r1, 0
0004d0  7d800000  xsignal r1, 0
0004d4  7d800000  xsignal r1, 0
0004d8  7d800000  xsignal r1, 0
0004dc  7d800000  xsignal r1, 0
0004e0  7d800000  xsignal r1, 0
0004e4  7d800000  xsignal r1, 0
0004e8  7d800000  xsignal r1, 0
0004ec  7d800000  xsignal r1, 0
0004f0  7d800000  xsignal r1, 0
0004f4  7d800000  xsignal r1, 0
0004f8  7d800000  xsignal r1, 0
0004fc  7d800000  xsignal r1, 0
000500  7d800000  xsignal r1, 0
000504  7d800000  xsignal r1, 0
000508  7d800000  xsignal r1, 0
00050c  7d800000  xsignal r1, 0
000510  7d800000  xsignal r1, 0
000514  7d800000  xsignal r1, 0
000518  7d800000  xsignal r1, 0
00051c  7d800000  xsignal r1, 0
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
000674  7d800100  xsignal r3, 0
000678  7d800100  xsignal r3, 0
00067c  7d800100  xsignal r3, 0
000680  7d800100  xsignal r3, 0
000684  7d800100  xsignal r3, 0
000688  7d800100  xsignal r3, 0
00068c  7d800100  xsignal r3, 0
000690  7d800100  xsignal r3, 0
000694  7d800100  xsignal r3, 0
000698  7d800100  xsignal r3, 0
00069c  7d800100  xsignal r3, 0
0006a0  7d800100  xsignal r3, 0
0006a4  7d800100  xsignal r3, 0
0006a8  7d800100  xsignal r3, 0
0006ac  7d800100  xsignal r3, 0
0006b0  7d800100  xsignal r3, 0
0006b4  7d800100  xsignal r3, 0
0006b8  7d800100  xsignal r3, 0
0006bc  7d800100  xsignal r3, 0
0006c0  7d800100  xsignal r3, 0
0006c4  7d800100  xsignal r3, 0
0006c8  7d800100  xsignal r3, 0
0006cc  7d800100  xsignal r3, 0
0006d0  7d800100  xsignal r3, 0
0006d4  7d800100  xsignal r3, 0
0006d8  7d800100  xsignal r3, 0
0006dc  7d800100  xsignal r3, 0
0006e0  7d800100  xsignal r3, 0
0006e4  7d800100  xsignal r3, 0
0006e8  7d800100  xsignal r3, 0
0006ec  7d800100  xsignal r3, 0
0006f0  7d800100  xsignal r3, 0
0006f4  7d800100  xsignal r3, 0
0006f8  7d800100  xsignal r3, 0
0006fc  7d800100  xsignal r3, 0
000700  7d800100  xsignal r3, 0
000704  7d800100  xsignal r3, 0
000708  7d800100  xsignal r3, 0
00070c  7d800100  xsignal r3, 0
000710  7d800100  xsignal r3, 0
000714  7d800100  xsignal r3, 0
000718  7d800100  xsignal r3, 0
00071c  7d800100  xsignal r3, 0
000720  7d800100  xsignal r3, 0
000724  7d800100  xsignal r3, 0
000728  7d800100  xsignal r3, 0
00072c  7d800100  xsignal r3, 0
000730  7d800100  xsignal r3, 0
000734  7d800100  xsignal r3, 0
000738  7d800100  xsignal r3, 0
00073c  7d800100  xsignal r3, 0
000740  7d800100  xsignal r3, 0
000744  7d800100  xsignal r3, 0
000748  7d800100  xsignal r3, 0
00074c  7d800100  xsignal r3, 0
000750  7d800100  xsignal r3, 0
000754  7d800100  xsignal r3, 0
000758  7d800100  xsignal r3, 0
00075c  7d800100  xsignal r3, 0
000760  7d800100  xsignal r3, 0
000764  7d800100  xsignal r3, 0
000768  7d800100  xsignal r3, 0
00076c  7d800100  xsignal r3, 0
000770  7d800100  xsignal r3, 0
000774  7d800100  xsignal r3, 0
000778  7d800100  xsignal r3, 0
00077c  7d800100  xsignal r3, 0
000780  7d800100  xsignal r3, 0
000784  7d800100  xsignal r3, 0
000788  7d800100  xsignal r3, 0
00078c  7d800100  xsignal r3, 0
000790  7d800100  xsignal r3, 0
000794  7d800100  xsignal r3, 0
000798  7d800100  xsignal r3, 0
00079c  7d800100  xsignal r3, 0
0007a0  7d800100  xsignal r3, 0
0007a4  7d800100  xsignal r3, 0
0007a8  7d800100  xsignal r3, 0
0007ac  7d800100  xsignal r3, 0
0007b0  7d800100  xsignal r3, 0
0007b4  7d800100  xsignal r3, 0
0007b8  7d800100  xsignal r3, 0
0007bc  7d800100  xsignal r3, 0
0007c0  7d800100  xsignal r3, 0
0007c4  7d800100  xsignal r3, 0
0007c8  7d800100  xsignal r3, 0
0007cc  7d800100  xsignal r3, 0
0007d0  7d800100  xsignal r3, 0
0007d4  7d800100  xsignal r3, 0
0007d8  7d800100  xsignal r3, 0
0007dc  7d800100  xsignal r3, 0
0007e0  7d800100  xsignal r3, 0
0007e4  7d800100  xsignal r3, 0
0007e8  7d800100  xsignal r3, 0
0007ec  7d800100  xsignal r3, 0
0007f0  7d800100  xsignal r3, 0
0007f4  7d800100  xsignal r3, 0
0007f8  7d800100  xsignal r3, 0
0007fc  7d800100  xsignal r3, 0
000800  7d800100  xsignal r3, 0
000804  7d800100  xsignal r3, 0
000808  7d800100  xsignal r3, 0
00080c  7d800100  xsignal r3, 0
000810  7d800100  xsignal r3, 0
000814  7d800100  xsignal r3, 0
000818  7d800100  xsignal r3, 0
00081c  9f101000  addli r1, zero, 9
000820  9f710000  addli r3, zero, 7
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
0008b4  7d800000  xsignal r1, 0
0008b8  7d800000  xsignal r1, 0
0008bc  7d800000  xsignal r1, 0
0008c0  7d800000  xsignal r1, 0
0008c4  7d800000  xsignal r1, 0
0008c8  7d800000  xsignal r1, 0
0008cc  7d800000  xsignal r1, 0
0008d0  7d800000  xsignal r1, 0
0008d4  7d800000  xsignal r1, 0
0008d8  7d800000  xsignal r1, 0
0008dc  7d800000  xsignal r1, 0
0008e0  7d800000  xsignal r1, 0
0008e4  7d800000  xsignal r1, 0
0008e8  7d800000  xsignal r1, 0
0008ec  7d800000  xsignal r1, 0
0008f0  7d800000  xsignal r1, 0
0008f4  7d800000  xsignal r1, 0
0008f8  7d800000  xsignal r1, 0
0008fc  7d800000  xsignal r1, 0
000900  7d800000  xsignal r1, 0
000904  7d800000  xsignal r1, 0
000908  7d800000  xsignal r1, 0
00090c  7d800000  xsignal r1, 0
000910  7d800000  xsignal r1, 0
000914  7d800000  xsignal r1, 0
000918  7d800000  xsignal r1, 0
00091c  7d800000  xsignal r1, 0
000920  7d800000  xsignal r1, 0
000924  7d800000  xsignal r1, 0
000928  7d800000  xsignal r1, 0
00092c  7d800000  xsignal r1, 0
000930  7d800000  xsignal r1, 0
000934  7d800000  xsignal r1, 0
000938  7d800000  xsignal r1, 0
00093c  7d800000  xsignal r1, 0
000940  7d800000  xsignal r1, 0
000944  7d800000  xsignal r1, 0
000948  7d800000  xsignal r1, 0
00094c  7d800000  xsignal r1, 0
000950  7d800000  xsignal r1, 0
000954  7d800000  xsignal r1, 0
000958  7d800000  xsignal r1, 0
00095c  7d800000  xsignal r1, 0
000960  7d800000  xsignal r1, 0
000964  7d800000  xsignal r1, 0
000968  7d800000  xsignal r1, 0
00096c  7d800000  xsignal r1, 0
000970  7d800000  xsignal r1, 0
000974  7d800000  xsignal r1, 0
000978  7d800000  xsignal r1, 0
00097c  7d800000  xsignal r1, 0
000980  7d800000  xsignal r1, 0
000984  7d800000  xsignal r1, 0
000988  7d800000  xsignal r1, 0
00098c  7d800000  xsignal r1, 0
000990  7d800000  xsignal r1, 0
000994  7d800000  xsignal r1, 0
000998  7d800000  xsignal r1, 0
00099c  7d800000  xsignal r1, 0
0009a0  7d800000  xsignal r1, 0
0009a4  7d800000  xsignal r1, 0
0009a8  7d800000  xsignal r1, 0
0009ac  7d800000  xsignal r1, 0
0009b0  7d800000  xsignal r1, 0
0009b4  7d800000  xsignal r1, 0
0009b8  7d800000  xsignal r1, 0
0009bc  7d800000  xsignal r1, 0
0009c0  7d800000  xsignal r1, 0
0009c4  7d800000  xsignal r1, 0
0009c8  7d800000  xsignal r1, 0
0009cc  7d800000  xsignal r1, 0
0009d0  7d800000  xsignal r1, 0
0009d4  7d800000  xsignal r1, 0
0009d8  7d800000  xsignal r1, 0
0009dc  7d800000  xsignal r1, 0
0009e0  7d800000  xsignal r1, 0
0009e4  7d800000  xsignal r1, 0
0009e8  7d800000  xsignal r1, 0
0009ec  7d800000  xsignal r1, 0
0009f0  7d800000  xsignal r1, 0
0009f4  7d800000  xsignal r1, 0
0009f8  7d800000  xsignal r1, 0
0009fc  7d800000  xsignal r1, 0
000a00  7d800000  xsignal r1, 0
000a04  7d800000  xsignal r1, 0
000a08  7d800000  xsignal r1, 0
000a0c  7d800000  xsignal r1, 0
000a10  7d800000  xsignal r1, 0
000a14  7d800000  xsignal r1, 0
000a18  7d800000  xsignal r1, 0
000a1c  7d800000  xsignal r1, 0
000a20  7d800000  xsignal r1, 0
000a24  7d800000  xsignal r1, 0
000a28  7d800000  xsignal r1, 0
000a2c  7d800000  xsignal r1, 0
000a30  7d800000  xsignal r1, 0
000a34  7d800000  xsignal r1, 0
000a38  7d800000  xsignal r1, 0
000a3c  7d800000  xsignal r1, 0
000a40  7d800000  xsignal r1, 0
000a44  7d800000  xsignal r1, 0
000a48  7d800000  xsignal r1, 0
000a4c  7d800000  xsignal r1, 0
000a50  7d800000  xsignal r1, 0
000a54  7d800000  xsignal r1, 0
000a58  7d800000  xsignal r1, 0
000a5c  7d800000  xsignal r1, 0
000a60  7d800000  xsignal r1, 0
000a64  7d800000  xsignal r1, 0
000a68  7d800000  xsignal r1, 0
000a6c  7d800000  xsignal r1, 0
000a70  7d800000  xsignal r1, 0
000a74  7d800000  xsignal r1, 0
000a78  7d800000  xsignal r1, 0
000a7c  7d800000  xsignal r1, 0
000a80  7d800000  xsignal r1, 0
000a84  7d800000  xsignal r1, 0
000a88  7d800000  xsignal r1, 0
000a8c  7d800000  xsignal r1, 0
000a90  7d800000  xsignal r1, 0
000a94  7d800000  xsignal r1, 0
000a98  7d800000  xsignal r1, 0
000a9c  7d800000  xsignal r1, 0
000aa0  7d800000  xsignal r1, 0
000aa4  7d800000  xsignal r1, 0
000aa8  7d800000  xsignal r1, 0
000aac  7d800000  xsignal r1, 0
000ab0  7d800000  xsignal r1, 0
000ab4  7d800000  xsignal r1, 0
000ab8  7d800000  xsignal r1, 0
000abc  7d800000  xsignal r1, 0
000ac0  7d800000  xsignal r1, 0
000ac4  7d800000  xsignal r1, 0
000ac8  7d800000  xsignal r1, 0
000acc  7d800000  xsignal r1, 0
000ad0  7d800000  xsignal r1, 0
000ad4  7d800000  xsignal r1, 0
000ad8  7d800000  xsignal r1, 0
000adc  7d800000  xsignal r1, 0
000ae0  7d800000  xsignal r1, 0
000ae4  7d800000  xsignal r1, 0
000ae8  7d800000  xsignal r1, 0
000aec  7d800000  xsignal r1, 0
000af0  7d800000  xsignal r1, 0
000af4  7d800000  xsignal r1, 0
000af8  7d800000  xsignal r1, 0
000afc  7d800000  xsignal r1, 0
000b00  7d800000  xsignal r1, 0
000b04  7d800000  xsignal r1, 0
000b08  7d800000  xsignal r1, 0
000b0c  7d800000  xsignal r1, 0
000b10  7d800000  xsignal r1, 0
000b14  7d800000  xsignal r1, 0
000b18  7d800000  xsignal r1, 0
000b1c  7d800000  xsignal r1, 0
000b20  7d800000  xsignal r1, 0
000b24  7d800000  xsignal r1, 0
000b28  7d800000  xsignal r1, 0
000b2c  7d800000  xsignal r1, 0
000b30  7d800000  xsignal r1, 0
000b34  7d800000  xsignal r1, 0
000b38  7d800000  xsignal r1, 0
000b3c  7d800000  xsignal r1, 0
000b40  7d800000  xsignal r1, 0
000b44  7d800000  xsignal r1, 0
000b48  7d800000  xsignal r1, 0
000b4c  7d800000  xsignal r1, 0
000b50  7d800000  xsignal r1, 0
000b54  7d800000  xsignal r1, 0
000b58  7d800000  xsignal r1, 0
000b5c  7d800000  xsignal r1, 0
000b60  7d800000  xsignal r1, 0
000b64  7d800000  xsignal r1, 0
000b68  7d800000  xsignal r1, 0
000b6c  7d800000  xsignal r1, 0
000b70  7d800000  xsignal r1, 0
000b74  7d800000  xsignal r1, 0
000b78  7d800000  xsignal r1, 0
000b7c  7d800000  xsignal r1, 0
000b80  7d800000  xsignal r1, 0
000b84  7d800000  xsignal r1, 0
000b88  7d800000  xsignal r1, 0
000b8c  7d800000  xsignal r1, 0
000b90  7d800000  xsignal r1, 0
000b94  7d800000  xsignal r1, 0
000b98  7d800000  xsignal r1, 0
000b9c  7d800000  xsignal r1, 0
000ba0  7d800000  xsignal r1, 0
000ba4  7d800000  xsignal r1, 0
000ba8  7d800000  xsignal r1, 0
000bac  7d800000  xsignal r1, 0
000bb0  7d800000  xsignal r1, 0
000bb4  7d800000  xsignal r1, 0
000bb8  7d800000  xsignal r1, 0
000bbc  7d800000  xsignal r1, 0
000bc0  7d800000  xsignal r1, 0
000bc4  7d800000  xsignal r1, 0
000bc8  7d800000  xsignal r1, 0
000bcc  7d800000  xsignal r1, 0
000bd0  7d800000  xsignal r1, 0
000bd4  7d800000  xsignal r1, 0
000bd8  7d800000  xsignal r1, 0
000bdc  7d800000  xsignal r1, 0
000be0  7d800000  xsignal r1, 0
000be4  7d800000  xsignal r1, 0
000be8  7d800000  xsignal r1, 0
000bec  7d800000  xsignal r1, 0
000bf0  7d800000  xsignal r1, 0
000bf4  7d800000  xsignal r1, 0
000bf8  7d800000  xsignal r1, 0
000bfc  7d800000  xsignal r1, 0
000c00  7d800000  xsignal r1, 0
000c04  7d800000  xsignal r1, 0
000c08  7d800000  xsignal r1, 0
000c0c  7d800000  xsignal r1, 0
000c10  7d800000  xsignal r1, 0
000c14  7d800000  xsignal r1, 0
000c18  7d800000  xsignal r1, 0
000c1c  7d800000  xsignal r1, 0
000c20  7d800100  xsignal r3, 0
000c24  7d800100  xsignal r3, 0
000c28  7d800100  xsignal r3, 0
000c2c  7d800100  xsignal r3, 0
000c30  7d800100  xsignal r3, 0
000c34  7d800100  xsignal r3, 0
000c38  7d800100  xsignal r3, 0
000c3c  7d800100  xsignal r3, 0
000c40  7d800100  xsignal r3, 0
000c44  7d800100  xsignal r3, 0
000c48  7d800100  xsignal r3, 0
000c4c  7d800100  xsignal r3, 0
000c50  7d800100  xsignal r3, 0
000c54  7d800100  xsignal r3, 0
000c58  7d800100  xsignal r3, 0
000c5c  7d800100  xsignal r3, 0
000c60  7d800100  xsignal r3, 0
000c64  7d800100  xsignal r3, 0
000c68  7d800100  xsignal r3, 0
000c6c  7d800100  xsignal r3, 0
000c70  7d800100  xsignal r3, 0
000c74  7d800100  xsignal r3, 0
000c78  7d800100  xsignal r3, 0
000c7c  7d800100  xsignal r3, 0
000c80  7d800100  xsignal r3, 0
000c84  7d800100  xsignal r3, 0
000c88  7d800100  xsignal r3, 0
000c8c  7d800100  xsignal r3, 0
000c90  7d800100  xsignal r3, 0
000c94  7d800100  xsignal r3, 0
000c98  7d800100  xsignal r3, 0
000c9c  7d800100  xsignal r3, 0
000ca0  7d800100  xsignal r3, 0
000ca4  7d800100  xsignal r3, 0
000ca8  7d800100  xsignal r3, 0
000cac  7d800100  xsignal r3, 0
000cb0  7d800100  xsignal r3, 0
000cb4  7d800100  xsignal r3, 0
000cb8  7d800100  xsignal r3, 0
000cbc  7d800100  xsignal r3, 0
000cc0  7d800100  xsignal r3, 0
000cc4  7d800100  xsignal r3, 0
000cc8  7d800100  xsignal r3, 0
000ccc  7d800100  xsignal r3, 0
000cd0  7d800100  xsignal r3, 0
000cd4  7d800100  xsignal r3, 0
000cd8  7d800100  xsignal r3, 0
000cdc  7d800100  xsignal r3, 0
000ce0  7d800100  xsignal r3, 0
000ce4  7d800100  xsignal r3, 0
000ce8  7d800100  xsignal r3, 0
000cec  7d800100  xsignal r3, 0
000cf0  7d800100  xsignal r3, 0
000cf4  7d800100  xsignal r3, 0
000cf8  7d800100  xsignal r3, 0
000cfc  7d800100  xsignal r3, 0
000d00  7d800100  xsignal r3, 0
000d04  7d800100  xsignal r3, 0
000d08  7d800100  xsignal r3, 0
000d0c  7d800100  xsignal r3, 0
000d10  7d800100  xsignal r3, 0
000d14  7d800100  xsignal r3, 0
000d18  7d800100  xsignal r3, 0
000d1c  7d800100  xsignal r3, 0
000d20  7d800100  xsignal r3, 0
000d24  7d800100  xsignal r3, 0
000d28  7d800100  xsignal r3, 0
000d2c  7d800100  xsignal r3, 0
000d30  7d800100  xsignal r3, 0
000d34  7d800100  xsignal r3, 0
000d38  7d800100  xsignal r3, 0
000d3c  7d800100  xsignal r3, 0
000d40  7d800100  xsignal r3, 0
000d44  7d800100  xsignal r3, 0
000d48  7d800100  xsignal r3, 0
000d4c  7d800100  xsignal r3, 0
000d50  7d800100  xsignal r3, 0
000d54  7d800100  xsignal r3, 0
000d58  7d800100  xsignal r3, 0
000d5c  7d800100  xsignal r3, 0
000d60  7d800100  xsignal r3, 0
000d64  7d800100  xsignal r3, 0
000d68  7d800100  xsignal r3, 0
000d6c  7d800100  xsignal r3, 0
000d70  7d800100  xsignal r3, 0
000d74  7d800100  xsignal r3, 0
000d78  7d800100  xsignal r3, 0
000d7c  7d800100  xsignal r3, 0
000d80  7d800100  xsignal r3, 0
000d84  7d800100  xsignal r3, 0
000d88  7d800100  xsignal r3, 0
000d8c  7d800100  xsignal r3, 0
000d90  7d800100  xsignal r3, 0
000d94  7d800100  xsignal r3, 0
000d98  7d800100  xsignal r3, 0
000d9c  7d800100  xsignal r3, 0
000da0  7d800100  xsignal r3, 0
000da4  7d800100  xsignal r3, 0
000da8  7d800100  xsignal r3, 0
000dac  7d800100  xsignal r3, 0
000db0  7d800100  xsignal r3, 0
000db4  7d800100  xsignal r3, 0
000db8  7d800100  xsignal r3, 0
000dbc  7d800100  xsignal r3, 0
000dc0  7d800100  xsignal r3, 0
000dc4  7d800100  xsignal r3, 0
000dc8  7d800100  xsignal r3, 0
000dcc  7d800100  xsignal r3, 0
000dd0  7d800100  xsignal r3, 0
000dd4  7d800100  xsignal r3, 0
000dd8  7d800100  xsignal r3, 0
000ddc  7d800100  xsignal r3, 0
000de0  7d800100  xsignal r3, 0
000de4  7d800100  xsignal r3, 0
000de8  7d800100  xsignal r3, 0
000dec  7d800100  xsignal r3, 0
000df0  7d800100  xsignal r3, 0
000df4  7d800100  xsignal r3, 0
000df8  7d800100  xsignal r3, 0
000dfc  7d800100  xsignal r3, 0
000e00  7d800100  xsignal r3, 0
000e04  7d800100  xsignal r3, 0
000e08  7d800100  xsignal r3, 0
000e0c  7d800100  xsignal r3, 0
000e10  7d800100  xsignal r3, 0
000e14  7d800100  xsignal r3, 0
000e18  7d800100  xsignal r3, 0
000e1c  7d800100  xsignal r3, 0
000e20  7d800100  xsignal r3, 0
000e24  7d800100  xsignal r3, 0
000e28  7d800100  xsignal r3, 0
000e2c  7d800100  xsignal r3, 0
000e30  7d800100  xsignal r3, 0
000e34  7d800100  xsignal r3, 0
000e38  7d800100  xsignal r3, 0
000e3c  7d800100  xsignal r3, 0
000e40  7d800100  xsignal r3, 0
000e44  7d800100  xsignal r3, 0
000e48  7d800100  xsignal r3, 0
000e4c  7d800100  xsignal r3, 0
000e50  7d800100  xsignal r3, 0
000e54  7d800100  xsignal r3, 0
000e58  7d800100  xsignal r3, 0
000e5c  7d800100  xsignal r3, 0
000e60  7d800100  xsignal r3, 0
000e64  7d800100  xsignal r3, 0
000e68  7d800100  xsignal r3, 0
000e6c  7d800100  xsignal r3, 0
000e70  7d800100  xsignal r3, 0
000e74  7d800100  xsignal r3, 0
000e78  7d800100  xsignal r3, 0
000e7c  7d800100  xsignal r3, 0
000e80  7d800100  xsignal r3, 0
000e84  7d800100  xsignal r3, 0
000e88  7d800100  xsignal r3, 0
000e8c  7d800100  xsignal r3, 0
000e90  7d800100  xsignal r3, 0
000e94  7d800100  xsignal r3, 0
000e98  7d800100  xsignal r3, 0
000e9c  7d800100  xsignal r3, 0
000ea0  7d800100  xsignal r3, 0
000ea4  7d800100  xsignal r3, 0
000ea8  7d800100  xsignal r3, 0
000eac  7d800100  xsignal r3, 0
000eb0  7d800100  xsignal r3, 0
000eb4  7d800100  xsignal r3, 0
000eb8  7d800100  xsignal r3, 0
000ebc  7d800100  xsignal r3, 0
000ec0  7d800100  xsignal r3, 0
000ec4  7d800100  xsignal r3, 0
000ec8  7d800100  xsignal r3, 0
000ecc  7d800100  xsignal r3, 0
000ed0  7d800100  xsignal r3, 0
000ed4  7d800100  xsignal r3, 0
000ed8  7d800100  xsignal r3, 0
000edc  7d800100  xsignal r3, 0
000ee0  7d800100  xsignal r3, 0
000ee4  7d800100  xsignal r3, 0
000ee8  7d800100  xsignal r3, 0
000eec  7d800100  xsignal r3, 0
000ef0  7d800100  xsignal r3, 0
000ef4  7d800100  xsignal r3, 0
000ef8  7d800100  xsignal r3, 0
000efc  7d800100  xsignal r3, 0
000f00  7d800100  xsignal r3, 0
000f04  7d800100  xsignal r3, 0
000f08  7d800100  xsignal r3, 0
000f0c  7d800100  xsignal r3, 0
000f10  7d800100  xsignal r3, 0
000f14  7d800100  xsignal r3, 0
000f18  7d800100  xsignal r3, 0
000f1c  e3003f00  loadli.w r1,  24(r30)
000f20  63413f00  loadli.w r2,  28(r30)
000f24  00d20002  load_param_i r4, 1
000f28  e3014f00  loadli.w r3,  32(r30)
000f2c  67000ffa  storeli.w zero, -768(r30)
000f30  67000ff2  storeli.w zero, -1792(r30)
000f34  67000fec  storeli.w zero, -2560(r30)
000f38  67000fe4  storeli.w zero, -3584(r30)
000f3c  8b101120  mul.s r1, r2, r1
000f40  1f010200  addli r2, r4, 0
000f44  0b913050  fmac.s r2, r1, r3
000f48  8b913020  mul.s r3, r1, r3
000f4c  1f71f1ff  addli r2, r2, -1
000f50  0b114130  div.s r2, r2, r4
000f54  00520002  load_param_i r4, 0
000f58  8b104120  mul.s r1, r2, r4
000f5c  0b114150  fmac.s r2, r2, r4
000f60  0b113140  min.s r2, r2, r3
000f64  4b241102  ble.s r2, r1, 1288
000f68  33110128  sext_int2long r[3:4], r2
000f6c  1f02cfe3  addli r4, r30, -3616
000f70  33950028  sext_int2long r[11:12], r1
000f74  630e0ffa  loadli.w r28,  -768(r30)
000f78  630d0ff2  loadli.w r26,  -1792(r30)
000f7c  63040fec  loadli.w r8,  -2560(r30)
000f80  e30d0fe4  loadli.w r27,  -3584(r30)
000f84  1f0b0001  addli r22, zero, 128
000f88  9f230000  addli r7, zero, 2
000f8c  1f660000  addli r12, zero, 6
000f90  9f570000  addli r15, zero, 5
000f94  1f470000  addli r14, zero, 4
000f98  1f79f001  addli r18, zero, 255
000f9c  9f747001  addli r9, zero, 191
000fa0  9f790000  addli r19, zero, 7
000fa4  9f3c0000  addli r25, zero, 3
000fa8  1f088000  addli r16, zero, 64
000fac  9f0b4000  addli r23, zero, 32
000fb0  9f180000  addli r17, zero, 1
000fb4  aba60000  lui r13, 10
000fb8  1f0c0000  addli r24, zero, 0
000fbc  73302200  store.d r[3:4], 0(r4)
000fc0  1f71f007  addli r2, zero, 1023
000fc4  9f018fe3  addli r3, r30, -3648
000fc8  abf0ffff  lui r1, 1048575
000fcc  73b01100  store.d r[2:3], 0(r3)
000fd0  db090000  j 76
000fd4  1f9e0000  addli r28, r1, 1
000fd8  9f201000  addli r1, zero, 10
000fdc  9f1d0100  addli r27, r2, 1
000fe0  1f9d0200  addli r26, r5, 1
000fe4  1f0b0001  addli r22, zero, 128
000fe8  9f230000  addli r7, zero, 2
000fec  9f570000  addli r15, zero, 5
000ff0  aba60000  lui r13, 10
000ff4  7d800000  xsignal r1, 0
000ff8  9f00ffe3  addli r1, r30, -3592
000ffc  634cefe3  loadli.w r24,  -3596(r30)
001000  6bd50000  load.d r[11:12], 0(r1)
001004  9f01cfe3  addli r3, r30, -3616
001008  27150500  addli.d r[11:12], r[11:12], 1
00100c  1f1c0c00  addli r24, r24, 1
001010  ebd00100  load.d r[2:3], 0(r3)
001014  93301504  setlt.sl r1, r[11:12], r[2:3]
001018  37d10002  beq r1, zero, 1108
00101c  e3004f00  loadli.w r1,  32(r30)
001020  63413f00  loadli.w r2,  28(r30)
001024  1f021000  addli r4, zero, 8
001028  1f0adfe3  addli r20, r30, -3608
00102c  8b101530  div.s r1, r10, r1
001030  0b912030  div.s r2, r1, r2
001034  8b126131  div.s r5, r2, r22
001038  9bb03200  slli r1, r5, 3
00103c  8b911318  sub.s r3, r7, r1
001040  0b934140  min.s r6, r3, r4
001044  8b116138  mod.s r3, r2, r6
001048  8b903010  add.s r1, r1, r3
00104c  b3810028  zext_int2long r[4:5], r1
001050  73303a00  store.d r[4:5], 0(r20)
001054  b3010828  zext_int2long r[4:5], r16
001058  3be0ea00  bneq r21, r14, 24
00105c  9f03bfe3  addli r7, r30, -3624
001060  73b03300  store.d r[4:5], 0(r7)
001064  9f311000  addli r3, zero, 11
001068  7d900100  xwait r3, 0
00106c  5b0f0000  j 120
001070  b7d71a01  beq r21, r17, 500
001074  1f0abfe3  addli r20, r30, -3624
001078  73303a00  store.d r[4:5], 0(r20)
00107c  bba17a00  bneq r21, r7, 104
001080  9f100000  addli r1, zero, 1
001084  0b119438  mod.s r2, r8, r9
001088  8b912d39  mod.s r3, r27, r18
00108c  7d900300  xwait r7, 0
001090  7d900700  xwait r15, 0
001094  1d000000  lock zero, zero
001098  9f9d0d00  addli r27, r27, 1
00109c  1f140400  addli r8, r8, 1
0010a0  810c0000  ds_cfg r25, zero, 0
0010a4  01080002  ds_cfg r16, zero, 1
0010a8  810b001c  ds_cfg r23, zero, 14
0010ac  810b001a  ds_cfg r23, zero, 13
0010b0  1b31c100  slli r2, r2, 12
0010b4  9bb1b100  slli r3, r3, 11
0010b8  0b11d110  add.s r2, r2, r13
0010bc  a1117103  shuffle_batch r3, r2, r23, 1
0010c0  1b811000  andi r2, r1, 1
0010c4  9f000000  addli r1, zero, 0
0010c8  1d100000  unlock zero
0010cc  7d800c00  xsignal r25, 0
0010d0  7d000700  xsignal r14, 0
0010d4  bb4e01fe  bneq r2, zero, -80
0010d8  1f2d0d00  addli r26, r26, 2
0010dc  1f2e0e00  addli r28, r28, 2
0010e0  dbe4ffff  j -220
0010e4  9bb27200  slli r5, r5, 7
0010e8  9bb05000  slli r1, r1, 5
0010ec  9f01ffe3  addli r3, r30, -3592
0010f0  674f8fe3  storeli.w r24, -3596(r30)
0010f4  9f060000  addli r13, zero, 0
0010f8  1f5b0000  addli r22, zero, 5
0010fc  1f0a0000  addli r20, zero, 0
001100  0b115118  sub.s r2, r2, r5
001104  e74c1fe2  storeli.w r1, -3636(r30)
001108  8b12fc38  mod.s r5, r24, r15
00110c  73b0a100  store.d r[11:12], 0(r3)
001110  1f1c0000  addli r24, zero, 1
001114  0b116130  div.s r2, r2, r6
001118  9bb7d200  slli r15, r5, 13
00111c  33030128  zext_int2long r[7:8], r2
001120  9b306100  slli r1, r2, 6
001124  e70c1fe2  storeli.w r1, -3640(r30)
001128  9731c302  sll.d r[4:5], r[7:8], r12
00112c  9f00afe3  addli r1, r30, -3632
001130  73b03000  store.d r[4:5], 0(r1)
001134  97b08103  sll.d r[2:3], r[4:5], r24
001138  eb518f00  load.d r[4:5], 8(r30)
00113c  0ba51110  add.ul r[11:12], r[4:5], r[2:3]
001140  db090000  j 76
001144  9f111000  addli r3, zero, 9
001148  7d100600  xwait r12, 0
00114c  7d900100  xwait r3, 0
001150  1d000000  lock zero, zero
001154  9f011000  addli r3, zero, 8
001158  810c0000  ds_cfg r25, zero, 0
00115c  01080002  ds_cfg r16, zero, 1
001160  810b001c  ds_cfg r23, zero, 14
001164  0108001a  ds_cfg r16, zero, 13
001168  41837305  shuffle_coa r6, r7, r23, 2
00116c  1d100000  unlock zero
001170  7d800900  xsignal r19, 0
001174  7d800100  xsignal r3, 0
001178  9b011c00  andi r3, r24, 1
00117c  37f30100  beq r3, zero, 220
001180  1f1a0a00  addli r20, r20, 1
001184  ab060100  lui r13, 16
001188  1f0c0000  addli r24, zero, 0
00118c  8b104e11  add.s r1, r28, r20
001190  8b124d11  add.s r5, r26, r20
001194  0b914d11  add.s r2, r27, r20
001198  8b919038  mod.s r3, r1, r9
00119c  0b922239  mod.s r4, r5, r18
0011a0  1b33c200  slli r6, r4, 12
0011a4  9bb1c100  slli r3, r3, 12
0011a8  2b920c00  lui r4, 201
0011ac  8b934110  add.s r7, r3, r4
0011b0  37de3aff  beq r21, r19, -108
0011b4  3b91ca00  bneq r21, r12, 68
0011b8  b3810628  zext_int2long r[4:5], r13
0011bc  7d900900  xwait r19, 0
0011c0  1d000700  lock zero, r14
0011c4  1f030001  addli r6, zero, 128
0011c8  95880800  dma_cfg r17, r17, zero, 0
0011cc  8b213510  add.ul r[4:5], r[11:12], r[4:5]
0011d0  15000204  dma_cfg zero, r4, zero, 2
0011d4  95836106  dma_cfg r7, r3, r6, 3
0011d8  9f010010  addli r3, zero, 2048
0011dc  15837109  dma_cfg r6, r3, r23, 4
0011e0  35000000  dma_run zero
0011e4  1d100700  unlock r14
0011e8  7d000600  xsignal r12, 0
0011ec  9b011c00  andi r3, r24, 1
0011f0  3bce01fe  bneq r3, zero, -112
0011f4  db0c0000  j 100
0011f8  9b031c00  andi r7, r24, 1
0011fc  bbd0ea00  bneq r21, r14, 52
001200  8b112139  mod.s r3, r2, r18
001204  1f021000  addli r4, zero, 8
001208  7d100700  xwait r14, 0
00120c  7d100200  xwait r4, 0
001210  1d800800  lock zero, r17
001214  09887b01  mm_cfg r16, r23, r23, 0
001218  9bb6b100  slli r13, r3, 11
00121c  9f210000  addli r3, zero, 2
001220  89881105  mm_cfg r17, r3, r17, 2
001224  37500a00  beq r20, zero, 20
001228  a997660a  mm_acc r15, r13, r6, 5
00122c  5b020000  j 16
001230  3bcd03fe  bneq r7, zero, -176
001234  db0c0000  j 100
001238  a987660a  mm r15, r13, r6, 5
00123c  9f111000  addli r3, zero, 9
001240  1d900800  unlock r17
001244  7d000b00  xsignal r22, 0
001248  7d800100  xsignal r3, 0
00124c  bbdc03fe  bneq r7, zero, -204
001250  1f240400  addli r8, r8, 2
001254  5bb0ffff  j -640
001258  1f240400  addli r8, r8, 2
00125c  b7e5eafe  beq r21, r14, -648
001260  db070000  j 60
001264  1f01ffe3  addli r2, r30, -3592
001268  9f120000  addli r5, zero, 1
00126c  27880100  addli.d r[17:18], r[4:5], 0
001270  674f8fe3  storeli.w r24, -3596(r30)
001274  7330a100  store.d r[11:12], 0(r2)
001278  13831204  setlt.u r6, r5, r1
00127c  1f01dfe3  addli r2, r30, -3608
001280  9f301000  addli r1, zero, 11
001284  6b550100  load.d r[11:12], 0(r2)
001288  97301502  sll.d r[2:3], r[11:12], r1
00128c  3b640300  bneq r6, zero, 280
001290  33050028  zext_int2long r[11:12], zero
001294  db230000  j 284
001298  1f240400  addli r8, r8, 2
00129c  1f9e0000  addli r28, r1, 1
0012a0  9f00ffe3  addli r1, r30, -3592
0012a4  634cefe3  loadli.w r24,  -3596(r30)
0012a8  9f1d0100  addli r27, r2, 1
0012ac  1f9d0200  addli r26, r5, 1
0012b0  1f0b0001  addli r22, zero, 128
0012b4  9f230000  addli r7, zero, 2
0012b8  aba60000  lui r13, 10
0012bc  6bd50000  load.d r[11:12], 0(r1)
0012c0  37b00a00  beq r21, zero, 12
0012c4  9f570000  addli r15, zero, 5
0012c8  dba7ffff  j -708
0012cc  e3009fe3  loadli.w r1,  -3640(r30)
0012d0  9f018007  addli r3, zero, 960
0012d4  e3429fe3  loadli.w r5,  -3636(r30)
0012d8  9f06bfe3  addli r13, r30, -3624
0012dc  33850b28  zext_int2long r[11:12], r23
0012e0  b3810128  zext_int2long r[4:5], r3
0012e4  6bd80600  load.d r[17:18], 0(r13)
0012e8  9f062000  addli r13, zero, 16
0012ec  b3800028  zext_int2long r[2:3], r1
0012f0  b3920228  sext_int2long r[6:7], r5
0012f4  8ba13040  min.ul r[4:5], r[2:3], r[4:5]
0012f8  0bbaa240  min.sl r[21:22], r[6:7], r[11:12]
0012fc  a7818100  addli.d r[4:5], r[4:5], 64
001300  8ba11148  max.ul r[4:5], r[4:5], r[2:3]
001304  8bb01118  sub.sl r[2:3], r[4:5], r[2:3]
001308  a7014a00  addli.d r[4:5], r[21:22], 32
00130c  8ba00041  min.ul r[2:3], r[2:3], r[17:18]
001310  9f180000  addli r17, zero, 1
001314  1f088000  addli r16, zero, 64
001318  1f00dfe3  addli zero, r30, -3608
00131c  8bb15148  max.sl r[4:5], r[4:5], r[6:7]
001320  6b5a0000  load.d r[21:22], 0(zero)
001324  8bb15118  sub.sl r[4:5], r[4:5], r[6:7]
001328  eb520f01  load.d r[6:7], 16(r30)
00132c  17200000  xor zero, zero, zero
001330  9bb02000  slli r1, r1, 2
001334  8bb1a140  min.sl r[4:5], r[4:5], r[11:12]
001338  1f010010  addli r2, zero, 2048
00133c  173ada02  sll.d r[21:22], r[21:22], r13
001340  9f06afe3  addli r13, r30, -3632
001344  8ba24211  add.ul r[6:7], r[6:7], r[21:22]
001348  6bda0600  load.d r[21:22], 0(r13)
00134c  9f06ffe3  addli r13, r30, -3592
001350  6bd50600  load.d r[11:12], 0(r13)
001354  9f261000  addli r13, zero, 10
001358  173a1a03  sll.d r[21:22], r[21:22], r17
00135c  7d900600  xwait r13, 0
001360  9f560000  addli r13, zero, 5
001364  8ba24211  add.ul r[6:7], r[6:7], r[21:22]
001368  803a0002  core_id r21
00136c  1d800600  lock zero, r13
001370  aba60000  lui r13, 10
001374  95080000  dma_cfg r17, zero, zero, 0
001378  15800802  dma_cfg zero, r17, zero, 1
00137c  15030004  dma_cfg r6, zero, zero, 2
001380  95821706  dma_cfg r5, r15, r1, 3
001384  9f000002  addli r1, zero, 256
001388  9f570000  addli r15, zero, 5
00138c  15813008  dma_cfg r2, r1, r3, 4
001390  9f301000  addli r1, zero, 11
001394  35000000  dma_run zero
001398  1d900700  unlock r15
00139c  7d800000  xsignal r1, 0
0013a0  db8cffff  j -924
0013a4  1f038fe3  addli r6, r30, -3648
0013a8  eb510300  load.d r[4:5], 0(r6)
0013ac  17853002  and.d r[11:12], r[2:3], r[4:5]
0013b0  6b5c0f00  load.d r[25:26], 0(r30)
0013b4  9f070000  addli r15, zero, 0
0013b8  1f160000  addli r12, zero, 1
0013bc  33830728  zext_int2long r[7:8], r15
0013c0  8b169438  mod.s r13, r8, r9
0013c4  9f074000  addli r15, zero, 32
0013c8  1f3a0000  addli r20, zero, 3
0013cc  1f140400  addli r8, r8, 1
0013d0  17936002  or.d r[7:8], r[2:3], r[7:8]
0013d4  b38a0728  zext_int2long r[22:23], r15
0013d8  7d100a00  xwait r20, 0
0013dc  1b8a1200  andi r20, r5, 1
0013e0  1d000700  lock zero, r14
0013e4  15060600  dma_cfg r12, r12, zero, 0
0013e8  8b31a318  sub.sl r[4:5], r[7:8], r[11:12]
0013ec  9732c302  sll.d r[6:7], r[7:8], r12
0013f0  8f910161  div.sl r[4:5], r[4:5], r[17:18]
0013f4  9bb3c600  slli r7, r13, 12
0013f8  aba60000  lui r13, 10
0013fc  8b225c10  add.ul r[6:7], r[25:26], r[6:7]
001400  8b93d310  add.s r7, r7, r13
001404  15000304  dma_cfg zero, r6, zero, 2
001408  8bba5141  min.sl r[22:23], r[4:5], r[22:23]
00140c  8bb13a18  sub.sl r[4:5], r[22:23], r[4:5]
001410  1f0b0001  addli r22, zero, 128
001414  9f814100  addli r3, r3, 32
001418  1f028000  addli r4, zero, 64
00141c  95834206  dma_cfg r7, r5, r4, 3
001420  9f230000  addli r7, zero, 2
001424  9f020000  addli r5, zero, 0
001428  150b3b08  dma_cfg r22, r22, r3, 4
00142c  35000000  dma_run zero
001430  1d100700  unlock r14
001434  7d800300  xsignal r7, 0
001438  3b1e0afe  bneq r20, zero, -124
00143c  9f00ffe3  addli r1, r30, -3592
001440  634cefe3  loadli.w r24,  -3596(r30)
001444  9fad0d00  addli r27, r27, 2
001448  1f2d0d00  addli r26, r26, 2
00144c  1f2e0e00  addli r28, r28, 2
001450  803a0002  core_id r21
001454  9f570000  addli r15, zero, 5
001458  9f3c0000  addli r25, zero, 3
00145c  1f660000  addli r12, zero, 6
001460  1f088000  addli r16, zero, 64
001464  9f180000  addli r17, zero, 1
001468  5b73ffff  j -1128
00146c  7d000000  xsignal zero, 0
001470  bbe00a00  bneq r21, zero, 56
001474  9f200000  addli r1, zero, 2
001478  7d100000  xwait zero, 0
00147c  7d100000  xwait zero, 0
001480  7d100000  xwait zero, 0
001484  7d100000  xwait zero, 0
001488  7d100000  xwait zero, 0
00148c  7d100000  xwait zero, 0
001490  7d100000  xwait zero, 0
001494  7d100000  xwait zero, 0
001498  1d800000  lock zero, r1
00149c  0d000020  ew_cfg zero, zero, zero, 16
0014a0  1d900000  unlock r1
0014a4  7d400000  xsignal_mode_cfg zero
0014a8  9f8e8e1c  addli sp, sp, 3648
0014ac  00a00300  mfence { lm, sm, gm }
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
0015f8  00100000  exit
0015fc  00100000  exit
001600  00100000  exit
001604  00100000  exit
001608  00100000  exit
00160c  00100000  exit
001610  00100000  exit
001614  00100000  exit
001618  00100000  exit
00161c  00100000  exit
001620  00100000  exit
001624  00100000  exit
001628  00100000  exit
00162c  00100000  exit
001630  00100000  exit
001634  00100000  exit
001638  00100000  exit
00163c  00100000  exit
001640  00100000  exit
001644  00100000  exit
001648  00100000  exit
00164c  00100000  exit
001650  00100000  exit
001654  00100000  exit
001658  00100000  exit
00165c  00100000  exit
001660  00100000  exit
001664  00100000  exit
001668  00100000  exit
00166c  00100000  exit
001670  00100000  exit
001674  00100000  exit
001678  00100000  exit
00167c  00100000  exit
001680  00100000  exit
001684  00100000  exit
001688  00100000  exit
00168c  00100000  exit
001690  00100000  exit
001694  00100000  exit
001698  00100000  exit
00169c  00100000  exit
0016a0  00100000  exit
0016a4  00100000  exit
0016a8  00100000  exit
0016ac  00100000  exit
0016b0  00100000  exit
0016b4  00100000  exit
0016b8  00100000  exit
0016bc  00100000  exit
0016c0  00100000  exit
0016c4  00100000  exit
0016c8  00100000  exit
0016cc  00100000  exit
0016d0  00100000  exit
0016d4  00100000  exit
0016d8  00100000  exit
0016dc  00100000  exit
0016e0  00100000  exit
0016e4  00100000  exit
0016e8  00100000  exit
0016ec  00100000  exit
0016f0  00100000  exit
