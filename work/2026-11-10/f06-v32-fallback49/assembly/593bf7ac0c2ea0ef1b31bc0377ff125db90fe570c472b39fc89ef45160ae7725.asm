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
0000b4  9f8edee2  addli sp, sp, -3736
0000b8  9f100000  addli r1, zero, 1
0000bc  803a0002  core_id r21
0000c0  1f8fbe1c  addli r30, sp, 3672
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
000f64  4b211102  ble.s r2, r1, 1096
000f68  33110128  sext_int2long r[3:4], r2
000f6c  1f026fe3  addli r4, r30, -3664
000f70  9f76f007  addli r13, zero, 1023
000f74  63040ffa  loadli.w r8,  -768(r30)
000f78  e3040ff2  loadli.w r9,  -1792(r30)
000f7c  e3020fe4  loadli.w r5,  -3584(r30)
000f80  33930028  sext_int2long r[7:8], r1
000f84  9f250000  addli r11, zero, 2
000f88  1f6b0000  addli r22, zero, 6
000f8c  9f580000  addli r17, zero, 5
000f90  9f470000  addli r15, zero, 4
000f94  9f005fe3  addli r1, r30, -3672
000f98  1f7ef001  addli r28, zero, 255
000f9c  1f7a7001  addli r20, zero, 191
000fa0  9f0b8000  addli r23, zero, 64
000fa4  1f0c4000  addli r24, zero, 32
000fa8  9f1c0000  addli r25, zero, 1
000fac  e74d0fe2  storeli.w zero, -3620(r30)
000fb0  2bf6ffff  lui r12, 1048575
000fb4  73302200  store.d r[3:4], 0(r4)
000fb8  63020fec  loadli.w r4,  -2560(r30)
000fbc  1f310000  addli r2, zero, 3
000fc0  73b0c000  store.d r[13:14], 0(r1)
000fc4  5b060000  j 48
000fc8  9f211000  addli r3, zero, 10
000fcc  7d800100  xsignal r3, 0
000fd0  9f01afe3  addli r3, r30, -3632
000fd4  9f026fe3  addli r5, r30, -3664
000fd8  6bd30100  load.d r[7:8], 0(r3)
000fdc  ebd10200  load.d r[4:5], 0(r5)
000fe0  9f120800  addli r5, r16, 1
000fe4  27130300  addli.d r[7:8], r[7:8], 1
000fe8  93313304  setlt.sl r3, r[7:8], r[4:5]
000fec  1f920000  addli r4, r1, 1
000ff0  b7fe0100  beq r3, zero, 956
000ff4  3bb0fa00  bneq r21, r15, 12
000ff8  9f301000  addli r1, zero, 11
000ffc  7d900000  xwait r1, 0
001000  e3004f00  loadli.w r1,  32(r30)
001004  9f01afe3  addli r3, r30, -3632
001008  73b06100  store.d r[7:8], 0(r3)
00100c  e3413f00  loadli.w r3,  28(r30)
001010  8b101330  div.s r1, r6, r1
001014  1f031000  addli r6, zero, 8
001018  9f331000  addli r7, zero, 11
00101c  0b963030  div.s r12, r1, r3
001020  9f000001  addli r1, zero, 128
001024  0b181630  div.s r16, r12, r1
001028  9b303800  slli r1, r16, 3
00102c  8b911518  sub.s r3, r11, r1
001030  0b9d6140  min.s r26, r3, r6
001034  8b11a639  mod.s r3, r12, r26
001038  8b903010  add.s r1, r1, r3
00103c  9f110000  addli r3, zero, 1
001040  13831104  setlt.u r6, r3, r1
001044  b3860028  zext_int2long r[14:15], r1
001048  17b97602  sll.d r[19:20], r[14:15], r7
00104c  9f03efe3  addli r7, r30, -3600
001050  73b02301  store.d r[19:20], 0(r7)
001054  9f039fe3  addli r7, r30, -3640
001058  73b0d300  store.d r[14:15], 0(r7)
00105c  3b300300  bneq r6, zero, 12
001060  33030028  zext_int2long r[7:8], zero
001064  5b020000  j 16
001068  1f055fe3  addli r10, r30, -3672
00106c  6b530500  load.d r[7:8], 0(r10)
001070  17036902  and.d r[7:8], r[19:20], r[7:8]
001074  9b367800  slli r13, r16, 7
001078  1f05dfe3  addli r10, r30, -3608
00107c  9bb05000  slli r1, r1, 5
001080  0b16d618  sub.s r12, r12, r13
001084  73306500  store.d r[7:8], 0(r10)
001088  6343bfe3  loadli.w r6,  -3620(r30)
00108c  e74b1fe2  storeli.w r1, -3652(r30)
001090  1f050000  addli r10, zero, 0
001094  0b16a631  div.s r12, r12, r26
001098  8b161339  mod.s r13, r6, r17
00109c  1f130300  addli r6, r6, 1
0010a0  e74d6fe2  storeli.w r6, -3620(r30)
0010a4  6b538f00  load.d r[7:8], 8(r30)
0010a8  330d0628  zext_int2long r[27:28], r12
0010ac  9b306600  slli r1, r12, 6
0010b0  e70b1fe2  storeli.w r1, -3656(r30)
0010b4  17396d03  sll.d r[19:20], r[27:28], r22
0010b8  9bb0d600  slli r1, r13, 13
0010bc  1f0d0000  addli r26, zero, 0
0010c0  e74f1fe2  storeli.w r1, -3588(r30)
0010c4  9f008fe3  addli r1, r30, -3648
0010c8  17363902  sll.d r[13:14], r[19:20], r3
0010cc  73b02001  store.d r[19:20], 0(r1)
0010d0  0b23c310  add.ul r[7:8], r[7:8], r[13:14]
0010d4  9f00cfe3  addli r1, r30, -3616
0010d8  73b06000  store.d r[7:8], 0(r1)
0010dc  5b030000  j 24
0010e0  9b811100  andi r3, r3, 1
0010e4  37980100  beq r3, zero, 516
0010e8  1f1d0d00  addli r26, r26, 1
0010ec  1f150000  addli r10, zero, 1
0010f0  9f010000  addli r3, zero, 0
0010f4  8b10a211  add.s r1, r4, r26
0010f8  0b98a211  add.s r16, r5, r26
0010fc  2ba30000  lui r6, 10
001100  0b964039  mod.s r12, r1, r20
001104  8b16c839  mod.s r13, r16, r28
001108  1b37c600  slli r14, r12, 12
00110c  1bb6b600  slli r12, r13, 11
001110  8b1d6710  add.s r27, r14, r6
001114  3782ba00  beq r21, r11, 128
001118  b3060528  zext_int2long r[14:15], r10
00111c  bba36a01  bneq r21, r22, 232
001120  1f05efe3  addli r10, r30, -3600
001124  97b61603  sll.d r[14:15], r[14:15], r17
001128  b38a0b28  zext_int2long r[22:23], r23
00112c  6b590f00  load.d r[19:20], 0(r30)
001130  6b530500  load.d r[7:8], 0(r10)
001134  1f05dfe3  addli r10, r30, -3608
001138  97966602  or.d r[14:15], r[14:15], r[7:8]
00113c  6b530500  load.d r[7:8], 0(r10)
001140  7d100100  xwait r2, 0
001144  1d800700  lock zero, r15
001148  958c0c00  dma_cfg r25, r25, zero, 0
00114c  0bb36618  sub.sl r[7:8], r[14:15], r[7:8]
001150  97b69603  sll.d r[14:15], r[14:15], r25
001154  0f135361  div.sl r[7:8], r[7:8], r[22:23]
001158  b30a0c28  zext_int2long r[22:23], r24
00115c  8b26d910  add.ul r[14:15], r[19:20], r[14:15]
001160  15000704  dma_cfg zero, r14, zero, 2
001164  958d7607  dma_cfg r27, r13, r23, 3
001168  8b3a5341  min.sl r[22:23], r[7:8], r[22:23]
00116c  0bb36a18  sub.sl r[7:8], r[22:23], r[7:8]
001170  1f6b0000  addli r22, zero, 6
001174  803a0002  core_id r21
001178  1f034300  addli r6, r6, 32
00117c  9f030001  addli r7, zero, 128
001180  95836308  dma_cfg r7, r7, r6, 4
001184  35000000  dma_run zero
001188  1d900700  unlock r15
00118c  7d800500  xsignal r11, 0
001190  5b070000  j 56
001194  1f330000  addli r6, zero, 3
001198  7d900500  xwait r11, 0
00119c  7d900800  xwait r17, 0
0011a0  1d000000  lock zero, zero
0011a4  1f310000  addli r2, zero, 3
0011a8  01030000  ds_cfg r6, zero, 0
0011ac  810b0002  ds_cfg r23, zero, 1
0011b0  010c001c  ds_cfg r24, zero, 14
0011b4  010c001a  ds_cfg r24, zero, 13
0011b8  21968d03  shuffle_batch r12, r27, r24, 1
0011bc  1d100000  unlock zero
0011c0  7d000300  xsignal r6, 0
0011c4  7d800700  xsignal r15, 0
0011c8  0b93c439  mod.s r6, r9, r28
0011cc  9f940400  addli r9, r9, 1
0011d0  1f140400  addli r8, r8, 1
0011d4  1b35c300  slli r10, r6, 12
0011d8  3bacfafe  bneq r21, r15, -248
0011dc  1f031000  addli r6, zero, 8
0011e0  7d900700  xwait r15, 0
0011e4  7d100300  xwait r6, 0
0011e8  1d800c00  lock zero, r25
0011ec  890b8c01  mm_cfg r23, r24, r24, 0
0011f0  898c9505  mm_cfg r25, r11, r25, 2
0011f4  37320d00  beq r26, zero, 140
0011f8  6343ffe3  loadli.w r6,  -3588(r30)
0011fc  2913a60a  mm_acc r6, r12, r10, 5
001200  5b110000  j 136
001204  0b134439  mod.s r6, r8, r20
001208  8b93c439  mod.s r7, r9, r28
00120c  9f940400  addli r9, r9, 1
001210  1f140400  addli r8, r8, 1
001214  1bb5c300  slli r10, r7, 12
001218  1b33c300  slli r6, r6, 12
00121c  ab930c00  lui r7, 201
001220  8b1d7310  add.s r27, r6, r7
001224  1f730000  addli r6, zero, 7
001228  b7f16a00  beq r21, r6, 124
00122c  bbbe9aff  bneq r21, r25, -84
001230  1f750000  addli r10, zero, 7
001234  1f032000  addli r6, zero, 16
001238  7d100500  xwait r10, 0
00123c  1f05cfe3  addli r10, r30, -3616
001240  17b36602  sll.d r[7:8], r[14:15], r6
001244  6b560500  load.d r[13:14], 0(r10)
001248  1d800700  lock zero, r15
00124c  1f050001  addli r10, zero, 128
001250  958c0c00  dma_cfg r25, r25, zero, 0
001254  0b236610  add.ul r[7:8], r[13:14], r[7:8]
001258  15800304  dma_cfg zero, r7, zero, 2
00125c  950da306  dma_cfg r27, r6, r10, 3
001260  1f030010  addli r6, zero, 2048
001264  15058309  dma_cfg r10, r6, r24, 4
001268  35000000  dma_run zero
00126c  1d900700  unlock r15
001270  7d000b00  xsignal r22, 0
001274  9b811100  andi r3, r3, 1
001278  bbc901fe  bneq r3, zero, -400
00127c  5b0d0000  j 104
001280  6343ffe3  loadli.w r6,  -3588(r30)
001284  2903a60a  mm r6, r12, r10, 5
001288  9b811100  andi r3, r3, 1
00128c  1f131000  addli r6, zero, 9
001290  1d900c00  unlock r25
001294  7d800800  xsignal r17, 0
001298  7d000300  xsignal r6, 0
00129c  3bb901fe  bneq r3, zero, -436
0012a0  5ba5ffff  j -728
0012a4  1f131000  addli r6, zero, 9
0012a8  7d100b00  xwait r22, 0
0012ac  7d100300  xwait r6, 0
0012b0  1d000000  lock zero, zero
0012b4  1f730000  addli r6, zero, 7
0012b8  01010000  ds_cfg r2, zero, 0
0012bc  810b0002  ds_cfg r23, zero, 1
0012c0  010c001c  ds_cfg r24, zero, 14
0012c4  810b001a  ds_cfg r23, zero, 13
0012c8  41858d05  shuffle_coa r10, r27, r24, 2
0012cc  1d100000  unlock zero
0012d0  7d000300  xsignal r6, 0
0012d4  1f031000  addli r6, zero, 8
0012d8  7d000300  xsignal r6, 0
0012dc  9b811100  andi r3, r3, 1
0012e0  3ba801fe  bneq r3, zero, -504
0012e4  b793fafe  beq r21, r15, -796
0012e8  bba30afe  bneq r21, zero, -792
0012ec  e3017fe3  loadli.w r3,  -3656(r30)
0012f0  9f028007  addli r5, zero, 960
0012f4  e3437fe3  loadli.w r7,  -3652(r30)
0012f8  b3080c28  zext_int2long r[18:19], r24
0012fc  1f059fe3  addli r10, r30, -3640
001300  b3820228  zext_int2long r[6:7], r5
001304  b3810128  zext_int2long r[4:5], r3
001308  33960328  sext_int2long r[13:14], r7
00130c  9f032000  addli r7, zero, 16
001310  8ba25140  min.ul r[6:7], r[4:5], r[6:7]
001314  8b3a1641  min.sl r[22:23], r[13:14], r[18:19]
001318  a7828200  addli.d r[6:7], r[6:7], 64
00131c  a78a4a00  addli.d r[22:23], r[22:23], 32
001320  8ba23248  max.ul r[6:7], r[6:7], r[4:5]
001324  8bb13218  sub.sl r[4:5], r[6:7], r[4:5]
001328  b3820b28  zext_int2long r[6:7], r23
00132c  8ba15140  min.ul r[4:5], r[4:5], r[6:7]
001330  8bb2ca48  max.sl r[6:7], r[22:23], r[13:14]
001334  eb5a0500  load.d r[22:23], 0(r10)
001338  8bb2c218  sub.sl r[6:7], r[6:7], r[13:14]
00133c  6b560f01  load.d r[13:14], 16(r30)
001340  9bb12100  slli r3, r3, 2
001344  97ba7a02  sll.d r[22:23], r[22:23], r7
001348  9f038fe3  addli r7, r30, -3648
00134c  8bb21241  min.sl r[6:7], r[6:7], r[18:19]
001350  9f580000  addli r17, zero, 5
001354  0b265611  add.ul r[13:14], r[13:14], r[22:23]
001358  ebda0300  load.d r[22:23], 0(r7)
00135c  9f231000  addli r7, zero, 10
001360  7d900300  xwait r7, 0
001364  9f530000  addli r7, zero, 5
001368  97ba9a03  sll.d r[22:23], r[22:23], r25
00136c  1d800300  lock zero, r7
001370  0b265611  add.ul r[13:14], r[13:14], r[22:23]
001374  950c0000  dma_cfg r25, zero, zero, 0
001378  1f6b0000  addli r22, zero, 6
00137c  803a0002  core_id r21
001380  15800c02  dma_cfg zero, r25, zero, 1
001384  95060004  dma_cfg r13, zero, zero, 2
001388  6342ffe3  loadli.w r4,  -3588(r30)
00138c  15063206  dma_cfg r12, r4, r3, 3
001390  9f010002  addli r3, zero, 256
001394  1f020010  addli r4, zero, 2048
001398  15825108  dma_cfg r4, r3, r5, 4
00139c  9f311000  addli r3, zero, 11
0013a0  35000000  dma_run zero
0013a4  1d900300  unlock r7
0013a8  db84ffff  j -988
0013ac  7d000000  xsignal zero, 0
0013b0  bbe00a00  bneq r21, zero, 56
0013b4  9f200000  addli r1, zero, 2
0013b8  7d100000  xwait zero, 0
0013bc  7d100000  xwait zero, 0
0013c0  7d100000  xwait zero, 0
0013c4  7d100000  xwait zero, 0
0013c8  7d100000  xwait zero, 0
0013cc  7d100000  xwait zero, 0
0013d0  7d100000  xwait zero, 0
0013d4  7d100000  xwait zero, 0
0013d8  1d800000  lock zero, r1
0013dc  0d000020  ew_cfg zero, zero, zero, 16
0013e0  1d900000  unlock r1
0013e4  7d400000  xsignal_mode_cfg zero
0013e8  9f8ebe1c  addli sp, sp, 3672
0013ec  00a00300  mfence { lm, sm, gm }
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
