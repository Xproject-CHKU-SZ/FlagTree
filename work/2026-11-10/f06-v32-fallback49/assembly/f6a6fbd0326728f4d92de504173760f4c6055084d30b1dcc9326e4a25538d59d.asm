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
00005c  9f495000  addli r19, zero, 44
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
0000b4  9f8efede  addli sp, sp, -4232
0000b8  9f100000  addli r1, zero, 1
0000bc  803c0002  core_id r25
0000c0  1f8f9e20  addli r30, sp, 4168
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00c00  beq r25, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b070200  j 4152
0000e0  1f210000  addli r2, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  abf1ffff  lui r3, 1048575
0000ec  1d000100  lock zero, r2
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b90f1ff  ori r1, r3, 4095
0000f8  1d100100  unlock r2
0000fc  1f411000  addli r2, zero, 12
000100  80a10004  csr_set csr3, r1
000104  9f500000  addli r1, zero, 5
000108  00d00100  sync_group
00010c  7d000100  xsignal r2, 0
000110  1f310000  addli r2, zero, 3
000114  7d800000  xsignal r1, 0
000118  7d800000  xsignal r1, 0
00011c  7d800000  xsignal r1, 0
000120  7d800000  xsignal r1, 0
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
000510  9f101000  addli r1, zero, 9
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
00062c  7d000100  xsignal r2, 0
000630  7d000100  xsignal r2, 0
000634  7d000100  xsignal r2, 0
000638  7d000100  xsignal r2, 0
00063c  7d000100  xsignal r2, 0
000640  7d000100  xsignal r2, 0
000644  7d000100  xsignal r2, 0
000648  7d000100  xsignal r2, 0
00064c  7d000100  xsignal r2, 0
000650  7d000100  xsignal r2, 0
000654  7d000100  xsignal r2, 0
000658  7d000100  xsignal r2, 0
00065c  7d000100  xsignal r2, 0
000660  7d000100  xsignal r2, 0
000664  7d000100  xsignal r2, 0
000668  7d000100  xsignal r2, 0
00066c  7d000100  xsignal r2, 0
000670  7d000100  xsignal r2, 0
000674  7d000100  xsignal r2, 0
000678  7d000100  xsignal r2, 0
00067c  7d000100  xsignal r2, 0
000680  7d000100  xsignal r2, 0
000684  7d000100  xsignal r2, 0
000688  7d000100  xsignal r2, 0
00068c  7d000100  xsignal r2, 0
000690  7d000100  xsignal r2, 0
000694  7d000100  xsignal r2, 0
000698  7d000100  xsignal r2, 0
00069c  7d000100  xsignal r2, 0
0006a0  7d000100  xsignal r2, 0
0006a4  7d000100  xsignal r2, 0
0006a8  7d000100  xsignal r2, 0
0006ac  7d000100  xsignal r2, 0
0006b0  7d000100  xsignal r2, 0
0006b4  7d000100  xsignal r2, 0
0006b8  7d000100  xsignal r2, 0
0006bc  7d000100  xsignal r2, 0
0006c0  7d000100  xsignal r2, 0
0006c4  7d000100  xsignal r2, 0
0006c8  7d000100  xsignal r2, 0
0006cc  7d000100  xsignal r2, 0
0006d0  7d000100  xsignal r2, 0
0006d4  7d000100  xsignal r2, 0
0006d8  7d000100  xsignal r2, 0
0006dc  7d000100  xsignal r2, 0
0006e0  7d000100  xsignal r2, 0
0006e4  7d000100  xsignal r2, 0
0006e8  7d000100  xsignal r2, 0
0006ec  7d000100  xsignal r2, 0
0006f0  7d000100  xsignal r2, 0
0006f4  7d000100  xsignal r2, 0
0006f8  7d000100  xsignal r2, 0
0006fc  7d000100  xsignal r2, 0
000700  7d000100  xsignal r2, 0
000704  7d000100  xsignal r2, 0
000708  7d000100  xsignal r2, 0
00070c  7d000100  xsignal r2, 0
000710  7d000100  xsignal r2, 0
000714  7d000100  xsignal r2, 0
000718  7d000100  xsignal r2, 0
00071c  7d000100  xsignal r2, 0
000720  7d000100  xsignal r2, 0
000724  7d000100  xsignal r2, 0
000728  7d000100  xsignal r2, 0
00072c  7d000100  xsignal r2, 0
000730  7d000100  xsignal r2, 0
000734  7d000100  xsignal r2, 0
000738  7d000100  xsignal r2, 0
00073c  7d000100  xsignal r2, 0
000740  7d000100  xsignal r2, 0
000744  7d000100  xsignal r2, 0
000748  7d000100  xsignal r2, 0
00074c  7d000100  xsignal r2, 0
000750  7d000100  xsignal r2, 0
000754  7d000100  xsignal r2, 0
000758  7d000100  xsignal r2, 0
00075c  7d000100  xsignal r2, 0
000760  7d000100  xsignal r2, 0
000764  7d000100  xsignal r2, 0
000768  7d000100  xsignal r2, 0
00076c  7d000100  xsignal r2, 0
000770  7d000100  xsignal r2, 0
000774  7d000100  xsignal r2, 0
000778  7d000100  xsignal r2, 0
00077c  7d000100  xsignal r2, 0
000780  7d000100  xsignal r2, 0
000784  7d000100  xsignal r2, 0
000788  7d000100  xsignal r2, 0
00078c  7d000100  xsignal r2, 0
000790  7d000100  xsignal r2, 0
000794  7d000100  xsignal r2, 0
000798  7d000100  xsignal r2, 0
00079c  7d000100  xsignal r2, 0
0007a0  7d000100  xsignal r2, 0
0007a4  7d000100  xsignal r2, 0
0007a8  7d000100  xsignal r2, 0
0007ac  7d000100  xsignal r2, 0
0007b0  7d000100  xsignal r2, 0
0007b4  7d000100  xsignal r2, 0
0007b8  7d000100  xsignal r2, 0
0007bc  7d000100  xsignal r2, 0
0007c0  7d000100  xsignal r2, 0
0007c4  7d000100  xsignal r2, 0
0007c8  7d000100  xsignal r2, 0
0007cc  7d000100  xsignal r2, 0
0007d0  7d000100  xsignal r2, 0
0007d4  7d000100  xsignal r2, 0
0007d8  7d000100  xsignal r2, 0
0007dc  7d000100  xsignal r2, 0
0007e0  7d000100  xsignal r2, 0
0007e4  7d000100  xsignal r2, 0
0007e8  7d000100  xsignal r2, 0
0007ec  7d000100  xsignal r2, 0
0007f0  7d000100  xsignal r2, 0
0007f4  7d000100  xsignal r2, 0
0007f8  7d000100  xsignal r2, 0
0007fc  7d000100  xsignal r2, 0
000800  7d000100  xsignal r2, 0
000804  7d000100  xsignal r2, 0
000808  7d000100  xsignal r2, 0
00080c  7d000100  xsignal r2, 0
000810  7d000100  xsignal r2, 0
000814  7d000100  xsignal r2, 0
000818  7d000100  xsignal r2, 0
00081c  7d000100  xsignal r2, 0
000820  7d000100  xsignal r2, 0
000824  7d000100  xsignal r2, 0
000828  7d000100  xsignal r2, 0
00082c  7d000100  xsignal r2, 0
000830  7d000100  xsignal r2, 0
000834  7d000100  xsignal r2, 0
000838  7d000100  xsignal r2, 0
00083c  7d000100  xsignal r2, 0
000840  7d000100  xsignal r2, 0
000844  7d000100  xsignal r2, 0
000848  7d000100  xsignal r2, 0
00084c  7d000100  xsignal r2, 0
000850  7d000100  xsignal r2, 0
000854  7d000100  xsignal r2, 0
000858  7d000100  xsignal r2, 0
00085c  7d000100  xsignal r2, 0
000860  7d000100  xsignal r2, 0
000864  7d000100  xsignal r2, 0
000868  7d000100  xsignal r2, 0
00086c  7d000100  xsignal r2, 0
000870  7d000100  xsignal r2, 0
000874  7d000100  xsignal r2, 0
000878  7d000100  xsignal r2, 0
00087c  7d000100  xsignal r2, 0
000880  7d000100  xsignal r2, 0
000884  7d000100  xsignal r2, 0
000888  7d000100  xsignal r2, 0
00088c  7d000100  xsignal r2, 0
000890  7d000100  xsignal r2, 0
000894  7d000100  xsignal r2, 0
000898  7d000100  xsignal r2, 0
00089c  7d000100  xsignal r2, 0
0008a0  7d000100  xsignal r2, 0
0008a4  7d000100  xsignal r2, 0
0008a8  7d000100  xsignal r2, 0
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
000910  1f710000  addli r2, zero, 7
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
000c20  7d800000  xsignal r1, 0
000c24  7d800000  xsignal r1, 0
000c28  7d800000  xsignal r1, 0
000c2c  7d800000  xsignal r1, 0
000c30  7d800000  xsignal r1, 0
000c34  7d800000  xsignal r1, 0
000c38  7d800000  xsignal r1, 0
000c3c  7d800000  xsignal r1, 0
000c40  7d800000  xsignal r1, 0
000c44  7d800000  xsignal r1, 0
000c48  7d800000  xsignal r1, 0
000c4c  7d800000  xsignal r1, 0
000c50  7d800000  xsignal r1, 0
000c54  7d800000  xsignal r1, 0
000c58  7d800000  xsignal r1, 0
000c5c  7d800000  xsignal r1, 0
000c60  7d800000  xsignal r1, 0
000c64  7d800000  xsignal r1, 0
000c68  7d800000  xsignal r1, 0
000c6c  7d800000  xsignal r1, 0
000c70  7d800000  xsignal r1, 0
000c74  7d800000  xsignal r1, 0
000c78  7d800000  xsignal r1, 0
000c7c  7d800000  xsignal r1, 0
000c80  7d800000  xsignal r1, 0
000c84  7d800000  xsignal r1, 0
000c88  7d800000  xsignal r1, 0
000c8c  7d800000  xsignal r1, 0
000c90  7d800000  xsignal r1, 0
000c94  7d800000  xsignal r1, 0
000c98  7d800000  xsignal r1, 0
000c9c  7d800000  xsignal r1, 0
000ca0  7d800000  xsignal r1, 0
000ca4  7d800000  xsignal r1, 0
000ca8  7d800000  xsignal r1, 0
000cac  7d800000  xsignal r1, 0
000cb0  7d800000  xsignal r1, 0
000cb4  7d800000  xsignal r1, 0
000cb8  7d800000  xsignal r1, 0
000cbc  7d800000  xsignal r1, 0
000cc0  7d800000  xsignal r1, 0
000cc4  7d800000  xsignal r1, 0
000cc8  7d800000  xsignal r1, 0
000ccc  7d800000  xsignal r1, 0
000cd0  7d800000  xsignal r1, 0
000cd4  7d800000  xsignal r1, 0
000cd8  7d800000  xsignal r1, 0
000cdc  7d800000  xsignal r1, 0
000ce0  7d800000  xsignal r1, 0
000ce4  7d800000  xsignal r1, 0
000ce8  7d800000  xsignal r1, 0
000cec  7d800000  xsignal r1, 0
000cf0  7d800000  xsignal r1, 0
000cf4  7d800000  xsignal r1, 0
000cf8  7d800000  xsignal r1, 0
000cfc  7d800000  xsignal r1, 0
000d00  7d800000  xsignal r1, 0
000d04  7d800000  xsignal r1, 0
000d08  7d800000  xsignal r1, 0
000d0c  7d800000  xsignal r1, 0
000d10  9f601000  addli r1, zero, 14
000d14  7d000100  xsignal r2, 0
000d18  7d000100  xsignal r2, 0
000d1c  7d000100  xsignal r2, 0
000d20  7d000100  xsignal r2, 0
000d24  7d000100  xsignal r2, 0
000d28  7d000100  xsignal r2, 0
000d2c  7d000100  xsignal r2, 0
000d30  7d000100  xsignal r2, 0
000d34  7d000100  xsignal r2, 0
000d38  7d000100  xsignal r2, 0
000d3c  7d000100  xsignal r2, 0
000d40  7d000100  xsignal r2, 0
000d44  7d000100  xsignal r2, 0
000d48  7d000100  xsignal r2, 0
000d4c  7d000100  xsignal r2, 0
000d50  7d000100  xsignal r2, 0
000d54  7d000100  xsignal r2, 0
000d58  7d000100  xsignal r2, 0
000d5c  7d000100  xsignal r2, 0
000d60  7d000100  xsignal r2, 0
000d64  7d000100  xsignal r2, 0
000d68  7d000100  xsignal r2, 0
000d6c  7d000100  xsignal r2, 0
000d70  7d000100  xsignal r2, 0
000d74  7d000100  xsignal r2, 0
000d78  7d000100  xsignal r2, 0
000d7c  7d000100  xsignal r2, 0
000d80  7d000100  xsignal r2, 0
000d84  7d000100  xsignal r2, 0
000d88  7d000100  xsignal r2, 0
000d8c  7d000100  xsignal r2, 0
000d90  7d000100  xsignal r2, 0
000d94  7d000100  xsignal r2, 0
000d98  7d000100  xsignal r2, 0
000d9c  7d000100  xsignal r2, 0
000da0  7d000100  xsignal r2, 0
000da4  7d000100  xsignal r2, 0
000da8  7d000100  xsignal r2, 0
000dac  7d000100  xsignal r2, 0
000db0  7d000100  xsignal r2, 0
000db4  7d000100  xsignal r2, 0
000db8  7d000100  xsignal r2, 0
000dbc  7d000100  xsignal r2, 0
000dc0  7d000100  xsignal r2, 0
000dc4  7d000100  xsignal r2, 0
000dc8  7d000100  xsignal r2, 0
000dcc  7d000100  xsignal r2, 0
000dd0  7d000100  xsignal r2, 0
000dd4  7d000100  xsignal r2, 0
000dd8  7d000100  xsignal r2, 0
000ddc  7d000100  xsignal r2, 0
000de0  7d000100  xsignal r2, 0
000de4  7d000100  xsignal r2, 0
000de8  7d000100  xsignal r2, 0
000dec  7d000100  xsignal r2, 0
000df0  7d000100  xsignal r2, 0
000df4  7d000100  xsignal r2, 0
000df8  7d000100  xsignal r2, 0
000dfc  7d000100  xsignal r2, 0
000e00  7d000100  xsignal r2, 0
000e04  7d000100  xsignal r2, 0
000e08  7d000100  xsignal r2, 0
000e0c  7d000100  xsignal r2, 0
000e10  7d000100  xsignal r2, 0
000e14  7d000100  xsignal r2, 0
000e18  7d000100  xsignal r2, 0
000e1c  7d000100  xsignal r2, 0
000e20  7d000100  xsignal r2, 0
000e24  7d000100  xsignal r2, 0
000e28  7d000100  xsignal r2, 0
000e2c  7d000100  xsignal r2, 0
000e30  7d000100  xsignal r2, 0
000e34  7d000100  xsignal r2, 0
000e38  7d000100  xsignal r2, 0
000e3c  7d000100  xsignal r2, 0
000e40  7d000100  xsignal r2, 0
000e44  7d000100  xsignal r2, 0
000e48  7d000100  xsignal r2, 0
000e4c  7d000100  xsignal r2, 0
000e50  7d000100  xsignal r2, 0
000e54  7d000100  xsignal r2, 0
000e58  7d000100  xsignal r2, 0
000e5c  7d000100  xsignal r2, 0
000e60  7d000100  xsignal r2, 0
000e64  7d000100  xsignal r2, 0
000e68  7d000100  xsignal r2, 0
000e6c  7d000100  xsignal r2, 0
000e70  7d000100  xsignal r2, 0
000e74  7d000100  xsignal r2, 0
000e78  7d000100  xsignal r2, 0
000e7c  7d000100  xsignal r2, 0
000e80  7d000100  xsignal r2, 0
000e84  7d000100  xsignal r2, 0
000e88  7d000100  xsignal r2, 0
000e8c  7d000100  xsignal r2, 0
000e90  7d000100  xsignal r2, 0
000e94  7d000100  xsignal r2, 0
000e98  7d000100  xsignal r2, 0
000e9c  7d000100  xsignal r2, 0
000ea0  7d000100  xsignal r2, 0
000ea4  7d000100  xsignal r2, 0
000ea8  7d000100  xsignal r2, 0
000eac  7d000100  xsignal r2, 0
000eb0  7d000100  xsignal r2, 0
000eb4  7d000100  xsignal r2, 0
000eb8  7d000100  xsignal r2, 0
000ebc  7d000100  xsignal r2, 0
000ec0  7d000100  xsignal r2, 0
000ec4  7d000100  xsignal r2, 0
000ec8  7d000100  xsignal r2, 0
000ecc  7d000100  xsignal r2, 0
000ed0  7d000100  xsignal r2, 0
000ed4  7d000100  xsignal r2, 0
000ed8  7d000100  xsignal r2, 0
000edc  7d000100  xsignal r2, 0
000ee0  7d000100  xsignal r2, 0
000ee4  7d000100  xsignal r2, 0
000ee8  7d000100  xsignal r2, 0
000eec  7d000100  xsignal r2, 0
000ef0  7d000100  xsignal r2, 0
000ef4  7d000100  xsignal r2, 0
000ef8  7d000100  xsignal r2, 0
000efc  7d000100  xsignal r2, 0
000f00  7d000100  xsignal r2, 0
000f04  7d000100  xsignal r2, 0
000f08  7d000100  xsignal r2, 0
000f0c  7d000100  xsignal r2, 0
000f10  7d000100  xsignal r2, 0
000f14  7d000100  xsignal r2, 0
000f18  7d000100  xsignal r2, 0
000f1c  7d000100  xsignal r2, 0
000f20  7d000100  xsignal r2, 0
000f24  7d000100  xsignal r2, 0
000f28  7d000100  xsignal r2, 0
000f2c  7d000100  xsignal r2, 0
000f30  7d000100  xsignal r2, 0
000f34  7d000100  xsignal r2, 0
000f38  7d000100  xsignal r2, 0
000f3c  7d000100  xsignal r2, 0
000f40  7d000100  xsignal r2, 0
000f44  7d000100  xsignal r2, 0
000f48  7d000100  xsignal r2, 0
000f4c  7d000100  xsignal r2, 0
000f50  7d000100  xsignal r2, 0
000f54  7d000100  xsignal r2, 0
000f58  7d000100  xsignal r2, 0
000f5c  7d000100  xsignal r2, 0
000f60  7d000100  xsignal r2, 0
000f64  7d000100  xsignal r2, 0
000f68  7d000100  xsignal r2, 0
000f6c  7d000100  xsignal r2, 0
000f70  7d000100  xsignal r2, 0
000f74  7d000100  xsignal r2, 0
000f78  7d000100  xsignal r2, 0
000f7c  7d000100  xsignal r2, 0
000f80  7d000100  xsignal r2, 0
000f84  7d000100  xsignal r2, 0
000f88  7d000100  xsignal r2, 0
000f8c  7d000100  xsignal r2, 0
000f90  7d000100  xsignal r2, 0
000f94  7d000100  xsignal r2, 0
000f98  7d000100  xsignal r2, 0
000f9c  7d000100  xsignal r2, 0
000fa0  7d000100  xsignal r2, 0
000fa4  7d000100  xsignal r2, 0
000fa8  7d000100  xsignal r2, 0
000fac  7d000100  xsignal r2, 0
000fb0  7d000100  xsignal r2, 0
000fb4  7d000100  xsignal r2, 0
000fb8  7d000100  xsignal r2, 0
000fbc  7d000100  xsignal r2, 0
000fc0  7d000100  xsignal r2, 0
000fc4  7d000100  xsignal r2, 0
000fc8  7d000100  xsignal r2, 0
000fcc  7d000100  xsignal r2, 0
000fd0  7d000100  xsignal r2, 0
000fd4  7d000100  xsignal r2, 0
000fd8  7d000100  xsignal r2, 0
000fdc  7d000100  xsignal r2, 0
000fe0  7d000100  xsignal r2, 0
000fe4  7d000100  xsignal r2, 0
000fe8  7d000100  xsignal r2, 0
000fec  7d000100  xsignal r2, 0
000ff0  7d000100  xsignal r2, 0
000ff4  7d000100  xsignal r2, 0
000ff8  7d000100  xsignal r2, 0
000ffc  7d000100  xsignal r2, 0
001000  7d000100  xsignal r2, 0
001004  7d000100  xsignal r2, 0
001008  7d000100  xsignal r2, 0
00100c  7d000100  xsignal r2, 0
001010  7d000100  xsignal r2, 0
001014  7d000100  xsignal r2, 0
001018  7d000100  xsignal r2, 0
00101c  7d000100  xsignal r2, 0
001020  7d000100  xsignal r2, 0
001024  7d000100  xsignal r2, 0
001028  7d000100  xsignal r2, 0
00102c  7d000100  xsignal r2, 0
001030  7d000100  xsignal r2, 0
001034  7d000100  xsignal r2, 0
001038  7d000100  xsignal r2, 0
00103c  7d000100  xsignal r2, 0
001040  7d000100  xsignal r2, 0
001044  7d000100  xsignal r2, 0
001048  7d000100  xsignal r2, 0
00104c  7d000100  xsignal r2, 0
001050  7d000100  xsignal r2, 0
001054  7d000100  xsignal r2, 0
001058  7d000100  xsignal r2, 0
00105c  7d000100  xsignal r2, 0
001060  7d000100  xsignal r2, 0
001064  7d000100  xsignal r2, 0
001068  7d000100  xsignal r2, 0
00106c  7d000100  xsignal r2, 0
001070  7d000100  xsignal r2, 0
001074  7d000100  xsignal r2, 0
001078  7d000100  xsignal r2, 0
00107c  7d000100  xsignal r2, 0
001080  7d000100  xsignal r2, 0
001084  7d000100  xsignal r2, 0
001088  7d000100  xsignal r2, 0
00108c  7d000100  xsignal r2, 0
001090  7d000100  xsignal r2, 0
001094  7d000100  xsignal r2, 0
001098  7d000100  xsignal r2, 0
00109c  7d000100  xsignal r2, 0
0010a0  7d000100  xsignal r2, 0
0010a4  7d000100  xsignal r2, 0
0010a8  7d000100  xsignal r2, 0
0010ac  7d000100  xsignal r2, 0
0010b0  7d000100  xsignal r2, 0
0010b4  7d000100  xsignal r2, 0
0010b8  7d000100  xsignal r2, 0
0010bc  7d000100  xsignal r2, 0
0010c0  7d000100  xsignal r2, 0
0010c4  7d000100  xsignal r2, 0
0010c8  7d000100  xsignal r2, 0
0010cc  7d000100  xsignal r2, 0
0010d0  7d000100  xsignal r2, 0
0010d4  7d000100  xsignal r2, 0
0010d8  7d000100  xsignal r2, 0
0010dc  7d000100  xsignal r2, 0
0010e0  7d000100  xsignal r2, 0
0010e4  7d000100  xsignal r2, 0
0010e8  7d000100  xsignal r2, 0
0010ec  7d000100  xsignal r2, 0
0010f0  7d000100  xsignal r2, 0
0010f4  7d000100  xsignal r2, 0
0010f8  7d000100  xsignal r2, 0
0010fc  7d000100  xsignal r2, 0
001100  7d000100  xsignal r2, 0
001104  7d000100  xsignal r2, 0
001108  7d000100  xsignal r2, 0
00110c  7d000100  xsignal r2, 0
001110  7d800000  xsignal r1, 0
001114  e3004f00  loadli.w r1,  32(r30)
001118  63414f00  loadli.w r2,  36(r30)
00111c  00d20002  load_param_i r4, 1
001120  e3015f00  loadli.w r3,  40(r30)
001124  abf3ffff  lui r7, 1048575
001128  9f02bfdf  addli r5, r30, -4136
00112c  67000ff8  storeli.w zero, -1024(r30)
001130  67000ff0  storeli.w zero, -2048(r30)
001134  1b94f3ff  ori r8, r7, 4095
001138  8b101120  mul.s r1, r2, r1
00113c  1f010200  addli r2, r4, 0
001140  67408ff8  storeli.w r8, -1020(r30)
001144  e7008ff8  storeli.w r8, -1016(r30)
001148  e7408ff8  storeli.w r8, -1012(r30)
00114c  67018ff8  storeli.w r8, -1008(r30)
001150  67418ff8  storeli.w r8, -1004(r30)
001154  e7018ff8  storeli.w r8, -1000(r30)
001158  e7418ff8  storeli.w r8, -996(r30)
00115c  67028ff8  storeli.w r8, -992(r30)
001160  67428ff8  storeli.w r8, -988(r30)
001164  e7028ff8  storeli.w r8, -984(r30)
001168  e7428ff8  storeli.w r8, -980(r30)
00116c  67038ff8  storeli.w r8, -976(r30)
001170  67438ff8  storeli.w r8, -972(r30)
001174  e7038ff8  storeli.w r8, -968(r30)
001178  e7438ff8  storeli.w r8, -964(r30)
00117c  67048ff8  storeli.w r8, -960(r30)
001180  67448ff8  storeli.w r8, -956(r30)
001184  e7048ff8  storeli.w r8, -952(r30)
001188  e7448ff8  storeli.w r8, -948(r30)
00118c  67058ff8  storeli.w r8, -944(r30)
001190  67458ff8  storeli.w r8, -940(r30)
001194  e7058ff8  storeli.w r8, -936(r30)
001198  e7458ff8  storeli.w r8, -932(r30)
00119c  67068ff8  storeli.w r8, -928(r30)
0011a0  67468ff8  storeli.w r8, -924(r30)
0011a4  e7068ff8  storeli.w r8, -920(r30)
0011a8  e7468ff8  storeli.w r8, -916(r30)
0011ac  67078ff8  storeli.w r8, -912(r30)
0011b0  67478ff8  storeli.w r8, -908(r30)
0011b4  e7078ff8  storeli.w r8, -904(r30)
0011b8  e7478ff8  storeli.w r8, -900(r30)
0011bc  67088ff8  storeli.w r8, -896(r30)
0011c0  67488ff8  storeli.w r8, -892(r30)
0011c4  e7088ff8  storeli.w r8, -888(r30)
0011c8  e7488ff8  storeli.w r8, -884(r30)
0011cc  67098ff8  storeli.w r8, -880(r30)
0011d0  67498ff8  storeli.w r8, -876(r30)
0011d4  e7098ff8  storeli.w r8, -872(r30)
0011d8  e7498ff8  storeli.w r8, -868(r30)
0011dc  670a8ff8  storeli.w r8, -864(r30)
0011e0  674a8ff8  storeli.w r8, -860(r30)
0011e4  e70a8ff8  storeli.w r8, -856(r30)
0011e8  e74a8ff8  storeli.w r8, -852(r30)
0011ec  670b8ff8  storeli.w r8, -848(r30)
0011f0  674b8ff8  storeli.w r8, -844(r30)
0011f4  e70b8ff8  storeli.w r8, -840(r30)
0011f8  e74b8ff8  storeli.w r8, -836(r30)
0011fc  670c8ff8  storeli.w r8, -832(r30)
001200  674c8ff8  storeli.w r8, -828(r30)
001204  e70c8ff8  storeli.w r8, -824(r30)
001208  e74c8ff8  storeli.w r8, -820(r30)
00120c  670d8ff8  storeli.w r8, -816(r30)
001210  674d8ff8  storeli.w r8, -812(r30)
001214  e70d8ff8  storeli.w r8, -808(r30)
001218  e74d8ff8  storeli.w r8, -804(r30)
00121c  670e8ff8  storeli.w r8, -800(r30)
001220  674e8ff8  storeli.w r8, -796(r30)
001224  e70e8ff8  storeli.w r8, -792(r30)
001228  e74e8ff8  storeli.w r8, -788(r30)
00122c  670f8ff8  storeli.w r8, -784(r30)
001230  674f8ff8  storeli.w r8, -780(r30)
001234  e70f8ff8  storeli.w r8, -776(r30)
001238  e74f8ff8  storeli.w r8, -772(r30)
00123c  67008ffa  storeli.w r8, -768(r30)
001240  67408ffa  storeli.w r8, -764(r30)
001244  e7008ffa  storeli.w r8, -760(r30)
001248  e7408ffa  storeli.w r8, -756(r30)
00124c  67018ffa  storeli.w r8, -752(r30)
001250  67418ffa  storeli.w r8, -748(r30)
001254  e7018ffa  storeli.w r8, -744(r30)
001258  e7418ffa  storeli.w r8, -740(r30)
00125c  67028ffa  storeli.w r8, -736(r30)
001260  67428ffa  storeli.w r8, -732(r30)
001264  e7028ffa  storeli.w r8, -728(r30)
001268  e7428ffa  storeli.w r8, -724(r30)
00126c  67038ffa  storeli.w r8, -720(r30)
001270  67438ffa  storeli.w r8, -716(r30)
001274  e7038ffa  storeli.w r8, -712(r30)
001278  e7438ffa  storeli.w r8, -708(r30)
00127c  67048ffa  storeli.w r8, -704(r30)
001280  67448ffa  storeli.w r8, -700(r30)
001284  e7048ffa  storeli.w r8, -696(r30)
001288  e7448ffa  storeli.w r8, -692(r30)
00128c  67058ffa  storeli.w r8, -688(r30)
001290  67458ffa  storeli.w r8, -684(r30)
001294  e7058ffa  storeli.w r8, -680(r30)
001298  e7458ffa  storeli.w r8, -676(r30)
00129c  67068ffa  storeli.w r8, -672(r30)
0012a0  67468ffa  storeli.w r8, -668(r30)
0012a4  e7068ffa  storeli.w r8, -664(r30)
0012a8  e7468ffa  storeli.w r8, -660(r30)
0012ac  67078ffa  storeli.w r8, -656(r30)
0012b0  67478ffa  storeli.w r8, -652(r30)
0012b4  e7078ffa  storeli.w r8, -648(r30)
0012b8  e7478ffa  storeli.w r8, -644(r30)
0012bc  67088ffa  storeli.w r8, -640(r30)
0012c0  67488ffa  storeli.w r8, -636(r30)
0012c4  e7088ffa  storeli.w r8, -632(r30)
0012c8  e7488ffa  storeli.w r8, -628(r30)
0012cc  67098ffa  storeli.w r8, -624(r30)
0012d0  67498ffa  storeli.w r8, -620(r30)
0012d4  e7098ffa  storeli.w r8, -616(r30)
0012d8  e7498ffa  storeli.w r8, -612(r30)
0012dc  670a8ffa  storeli.w r8, -608(r30)
0012e0  674a8ffa  storeli.w r8, -604(r30)
0012e4  e70a8ffa  storeli.w r8, -600(r30)
0012e8  e74a8ffa  storeli.w r8, -596(r30)
0012ec  670b8ffa  storeli.w r8, -592(r30)
0012f0  674b8ffa  storeli.w r8, -588(r30)
0012f4  e70b8ffa  storeli.w r8, -584(r30)
0012f8  e74b8ffa  storeli.w r8, -580(r30)
0012fc  670c8ffa  storeli.w r8, -576(r30)
001300  674c8ffa  storeli.w r8, -572(r30)
001304  e70c8ffa  storeli.w r8, -568(r30)
001308  e74c8ffa  storeli.w r8, -564(r30)
00130c  670d8ffa  storeli.w r8, -560(r30)
001310  674d8ffa  storeli.w r8, -556(r30)
001314  e70d8ffa  storeli.w r8, -552(r30)
001318  e74d8ffa  storeli.w r8, -548(r30)
00131c  670e8ffa  storeli.w r8, -544(r30)
001320  674e8ffa  storeli.w r8, -540(r30)
001324  e70e8ffa  storeli.w r8, -536(r30)
001328  e74e8ffa  storeli.w r8, -532(r30)
00132c  670f8ffa  storeli.w r8, -528(r30)
001330  674f8ffa  storeli.w r8, -524(r30)
001334  e70f8ffa  storeli.w r8, -520(r30)
001338  e74f8ffa  storeli.w r8, -516(r30)
00133c  67008ffc  storeli.w r8, -512(r30)
001340  67408ffc  storeli.w r8, -508(r30)
001344  e7008ffc  storeli.w r8, -504(r30)
001348  e7408ffc  storeli.w r8, -500(r30)
00134c  67018ffc  storeli.w r8, -496(r30)
001350  67418ffc  storeli.w r8, -492(r30)
001354  e7018ffc  storeli.w r8, -488(r30)
001358  e7418ffc  storeli.w r8, -484(r30)
00135c  67028ffc  storeli.w r8, -480(r30)
001360  67428ffc  storeli.w r8, -476(r30)
001364  e7028ffc  storeli.w r8, -472(r30)
001368  e7428ffc  storeli.w r8, -468(r30)
00136c  67038ffc  storeli.w r8, -464(r30)
001370  67438ffc  storeli.w r8, -460(r30)
001374  e7038ffc  storeli.w r8, -456(r30)
001378  e7438ffc  storeli.w r8, -452(r30)
00137c  67048ffc  storeli.w r8, -448(r30)
001380  67448ffc  storeli.w r8, -444(r30)
001384  e7048ffc  storeli.w r8, -440(r30)
001388  e7448ffc  storeli.w r8, -436(r30)
00138c  67058ffc  storeli.w r8, -432(r30)
001390  67458ffc  storeli.w r8, -428(r30)
001394  e7058ffc  storeli.w r8, -424(r30)
001398  e7458ffc  storeli.w r8, -420(r30)
00139c  67068ffc  storeli.w r8, -416(r30)
0013a0  67468ffc  storeli.w r8, -412(r30)
0013a4  e7068ffc  storeli.w r8, -408(r30)
0013a8  e7468ffc  storeli.w r8, -404(r30)
0013ac  67078ffc  storeli.w r8, -400(r30)
0013b0  67478ffc  storeli.w r8, -396(r30)
0013b4  e7078ffc  storeli.w r8, -392(r30)
0013b8  e7478ffc  storeli.w r8, -388(r30)
0013bc  67088ffc  storeli.w r8, -384(r30)
0013c0  67488ffc  storeli.w r8, -380(r30)
0013c4  e7088ffc  storeli.w r8, -376(r30)
0013c8  e7488ffc  storeli.w r8, -372(r30)
0013cc  67098ffc  storeli.w r8, -368(r30)
0013d0  67498ffc  storeli.w r8, -364(r30)
0013d4  e7098ffc  storeli.w r8, -360(r30)
0013d8  e7498ffc  storeli.w r8, -356(r30)
0013dc  670a8ffc  storeli.w r8, -352(r30)
0013e0  674a8ffc  storeli.w r8, -348(r30)
0013e4  e70a8ffc  storeli.w r8, -344(r30)
0013e8  e74a8ffc  storeli.w r8, -340(r30)
0013ec  670b8ffc  storeli.w r8, -336(r30)
0013f0  674b8ffc  storeli.w r8, -332(r30)
0013f4  e70b8ffc  storeli.w r8, -328(r30)
0013f8  e74b8ffc  storeli.w r8, -324(r30)
0013fc  670c8ffc  storeli.w r8, -320(r30)
001400  674c8ffc  storeli.w r8, -316(r30)
001404  e70c8ffc  storeli.w r8, -312(r30)
001408  e74c8ffc  storeli.w r8, -308(r30)
00140c  670d8ffc  storeli.w r8, -304(r30)
001410  674d8ffc  storeli.w r8, -300(r30)
001414  e70d8ffc  storeli.w r8, -296(r30)
001418  e74d8ffc  storeli.w r8, -292(r30)
00141c  670e8ffc  storeli.w r8, -288(r30)
001420  674e8ffc  storeli.w r8, -284(r30)
001424  e70e8ffc  storeli.w r8, -280(r30)
001428  e74e8ffc  storeli.w r8, -276(r30)
00142c  670f8ffc  storeli.w r8, -272(r30)
001430  674f8ffc  storeli.w r8, -268(r30)
001434  e70f8ffc  storeli.w r8, -264(r30)
001438  e74f8ffc  storeli.w r8, -260(r30)
00143c  67008ffe  storeli.w r8, -256(r30)
001440  67408ffe  storeli.w r8, -252(r30)
001444  e7008ffe  storeli.w r8, -248(r30)
001448  e7408ffe  storeli.w r8, -244(r30)
00144c  67018ffe  storeli.w r8, -240(r30)
001450  67418ffe  storeli.w r8, -236(r30)
001454  e7018ffe  storeli.w r8, -232(r30)
001458  e7418ffe  storeli.w r8, -228(r30)
00145c  67028ffe  storeli.w r8, -224(r30)
001460  67428ffe  storeli.w r8, -220(r30)
001464  e7028ffe  storeli.w r8, -216(r30)
001468  e7428ffe  storeli.w r8, -212(r30)
00146c  67038ffe  storeli.w r8, -208(r30)
001470  67438ffe  storeli.w r8, -204(r30)
001474  e7038ffe  storeli.w r8, -200(r30)
001478  e7438ffe  storeli.w r8, -196(r30)
00147c  67048ffe  storeli.w r8, -192(r30)
001480  67448ffe  storeli.w r8, -188(r30)
001484  e7048ffe  storeli.w r8, -184(r30)
001488  e7448ffe  storeli.w r8, -180(r30)
00148c  67058ffe  storeli.w r8, -176(r30)
001490  67458ffe  storeli.w r8, -172(r30)
001494  e7058ffe  storeli.w r8, -168(r30)
001498  e7458ffe  storeli.w r8, -164(r30)
00149c  67068ffe  storeli.w r8, -160(r30)
0014a0  67468ffe  storeli.w r8, -156(r30)
0014a4  e7068ffe  storeli.w r8, -152(r30)
0014a8  e7468ffe  storeli.w r8, -148(r30)
0014ac  67078ffe  storeli.w r8, -144(r30)
0014b0  67478ffe  storeli.w r8, -140(r30)
0014b4  e7078ffe  storeli.w r8, -136(r30)
0014b8  e7478ffe  storeli.w r8, -132(r30)
0014bc  67088ffe  storeli.w r8, -128(r30)
0014c0  67488ffe  storeli.w r8, -124(r30)
0014c4  e7088ffe  storeli.w r8, -120(r30)
0014c8  e7488ffe  storeli.w r8, -116(r30)
0014cc  67098ffe  storeli.w r8, -112(r30)
0014d0  67498ffe  storeli.w r8, -108(r30)
0014d4  e7098ffe  storeli.w r8, -104(r30)
0014d8  e7498ffe  storeli.w r8, -100(r30)
0014dc  670a8ffe  storeli.w r8, -96(r30)
0014e0  674a8ffe  storeli.w r8, -92(r30)
0014e4  e70a8ffe  storeli.w r8, -88(r30)
0014e8  e74a8ffe  storeli.w r8, -84(r30)
0014ec  670b8ffe  storeli.w r8, -80(r30)
0014f0  674b8ffe  storeli.w r8, -76(r30)
0014f4  e70b8ffe  storeli.w r8, -72(r30)
0014f8  e74b8ffe  storeli.w r8, -68(r30)
0014fc  670c8ffe  storeli.w r8, -64(r30)
001500  674c8ffe  storeli.w r8, -60(r30)
001504  e70c8ffe  storeli.w r8, -56(r30)
001508  e74c8ffe  storeli.w r8, -52(r30)
00150c  670d8ffe  storeli.w r8, -48(r30)
001510  674d8ffe  storeli.w r8, -44(r30)
001514  e70d8ffe  storeli.w r8, -40(r30)
001518  e74d8ffe  storeli.w r8, -36(r30)
00151c  670e8ffe  storeli.w r8, -32(r30)
001520  674e8ffe  storeli.w r8, -28(r30)
001524  e70e8ffe  storeli.w r8, -24(r30)
001528  e74e8ffe  storeli.w r8, -20(r30)
00152c  670f8ffe  storeli.w r8, -16(r30)
001530  674f8ffe  storeli.w r8, -12(r30)
001534  e70f8ffe  storeli.w r8, -8(r30)
001538  e74f8ffe  storeli.w r8, -4(r30)
00153c  67408ff0  storeli.w r8, -2044(r30)
001540  e7008ff0  storeli.w r8, -2040(r30)
001544  e7408ff0  storeli.w r8, -2036(r30)
001548  67018ff0  storeli.w r8, -2032(r30)
00154c  67418ff0  storeli.w r8, -2028(r30)
001550  e7018ff0  storeli.w r8, -2024(r30)
001554  e7418ff0  storeli.w r8, -2020(r30)
001558  67028ff0  storeli.w r8, -2016(r30)
00155c  67428ff0  storeli.w r8, -2012(r30)
001560  e7028ff0  storeli.w r8, -2008(r30)
001564  e7428ff0  storeli.w r8, -2004(r30)
001568  67038ff0  storeli.w r8, -2000(r30)
00156c  67438ff0  storeli.w r8, -1996(r30)
001570  e7038ff0  storeli.w r8, -1992(r30)
001574  e7438ff0  storeli.w r8, -1988(r30)
001578  67048ff0  storeli.w r8, -1984(r30)
00157c  67448ff0  storeli.w r8, -1980(r30)
001580  e7048ff0  storeli.w r8, -1976(r30)
001584  e7448ff0  storeli.w r8, -1972(r30)
001588  67058ff0  storeli.w r8, -1968(r30)
00158c  67458ff0  storeli.w r8, -1964(r30)
001590  67038fe8  storeli.w r8, -3024(r30)
001594  e70f8fee  storeli.w r8, -2056(r30)
001598  674f8fee  storeli.w r8, -2060(r30)
00159c  670f8fee  storeli.w r8, -2064(r30)
0015a0  e74e8fee  storeli.w r8, -2068(r30)
0015a4  e70e8fee  storeli.w r8, -2072(r30)
0015a8  674e8fee  storeli.w r8, -2076(r30)
0015ac  670e8fee  storeli.w r8, -2080(r30)
0015b0  e74d8fee  storeli.w r8, -2084(r30)
0015b4  e70d8fee  storeli.w r8, -2088(r30)
0015b8  674d8fee  storeli.w r8, -2092(r30)
0015bc  670d8fee  storeli.w r8, -2096(r30)
0015c0  e74c8fee  storeli.w r8, -2100(r30)
0015c4  e70c8fee  storeli.w r8, -2104(r30)
0015c8  674c8fee  storeli.w r8, -2108(r30)
0015cc  670c8fee  storeli.w r8, -2112(r30)
0015d0  e74b8fee  storeli.w r8, -2116(r30)
0015d4  e70b8fee  storeli.w r8, -2120(r30)
0015d8  674b8fee  storeli.w r8, -2124(r30)
0015dc  670b8fee  storeli.w r8, -2128(r30)
0015e0  e74a8fee  storeli.w r8, -2132(r30)
0015e4  e70a8fee  storeli.w r8, -2136(r30)
0015e8  674a8fee  storeli.w r8, -2140(r30)
0015ec  670a8fee  storeli.w r8, -2144(r30)
0015f0  e7498fee  storeli.w r8, -2148(r30)
0015f4  e7098fee  storeli.w r8, -2152(r30)
0015f8  67498fee  storeli.w r8, -2156(r30)
0015fc  67098fee  storeli.w r8, -2160(r30)
001600  e7488fee  storeli.w r8, -2164(r30)
001604  e7088fee  storeli.w r8, -2168(r30)
001608  67488fee  storeli.w r8, -2172(r30)
00160c  67088fee  storeli.w r8, -2176(r30)
001610  e7478fee  storeli.w r8, -2180(r30)
001614  e7078fee  storeli.w r8, -2184(r30)
001618  67478fee  storeli.w r8, -2188(r30)
00161c  67078fee  storeli.w r8, -2192(r30)
001620  e7468fee  storeli.w r8, -2196(r30)
001624  e7068fee  storeli.w r8, -2200(r30)
001628  67468fee  storeli.w r8, -2204(r30)
00162c  67068fee  storeli.w r8, -2208(r30)
001630  e7458fee  storeli.w r8, -2212(r30)
001634  e7058fee  storeli.w r8, -2216(r30)
001638  67458fee  storeli.w r8, -2220(r30)
00163c  67058fee  storeli.w r8, -2224(r30)
001640  e7448fee  storeli.w r8, -2228(r30)
001644  e7048fee  storeli.w r8, -2232(r30)
001648  67448fee  storeli.w r8, -2236(r30)
00164c  67048fee  storeli.w r8, -2240(r30)
001650  e7438fee  storeli.w r8, -2244(r30)
001654  e7038fee  storeli.w r8, -2248(r30)
001658  67438fee  storeli.w r8, -2252(r30)
00165c  67038fee  storeli.w r8, -2256(r30)
001660  e7428fee  storeli.w r8, -2260(r30)
001664  e7028fee  storeli.w r8, -2264(r30)
001668  67428fee  storeli.w r8, -2268(r30)
00166c  67028fee  storeli.w r8, -2272(r30)
001670  e7418fee  storeli.w r8, -2276(r30)
001674  e7018fee  storeli.w r8, -2280(r30)
001678  67418fee  storeli.w r8, -2284(r30)
00167c  67018fee  storeli.w r8, -2288(r30)
001680  e7408fee  storeli.w r8, -2292(r30)
001684  e7008fee  storeli.w r8, -2296(r30)
001688  67408fee  storeli.w r8, -2300(r30)
00168c  67008fee  storeli.w r8, -2304(r30)
001690  e74f8fec  storeli.w r8, -2308(r30)
001694  e70f8fec  storeli.w r8, -2312(r30)
001698  674f8fec  storeli.w r8, -2316(r30)
00169c  670f8fec  storeli.w r8, -2320(r30)
0016a0  e74e8fec  storeli.w r8, -2324(r30)
0016a4  e70e8fec  storeli.w r8, -2328(r30)
0016a8  674e8fec  storeli.w r8, -2332(r30)
0016ac  670e8fec  storeli.w r8, -2336(r30)
0016b0  e74d8fec  storeli.w r8, -2340(r30)
0016b4  e70d8fec  storeli.w r8, -2344(r30)
0016b8  674d8fec  storeli.w r8, -2348(r30)
0016bc  670d8fec  storeli.w r8, -2352(r30)
0016c0  e74c8fec  storeli.w r8, -2356(r30)
0016c4  e70c8fec  storeli.w r8, -2360(r30)
0016c8  674c8fec  storeli.w r8, -2364(r30)
0016cc  670c8fec  storeli.w r8, -2368(r30)
0016d0  e74b8fec  storeli.w r8, -2372(r30)
0016d4  e70b8fec  storeli.w r8, -2376(r30)
0016d8  674b8fec  storeli.w r8, -2380(r30)
0016dc  670b8fec  storeli.w r8, -2384(r30)
0016e0  e74a8fec  storeli.w r8, -2388(r30)
0016e4  e70a8fec  storeli.w r8, -2392(r30)
0016e8  674a8fec  storeli.w r8, -2396(r30)
0016ec  670a8fec  storeli.w r8, -2400(r30)
0016f0  e7498fec  storeli.w r8, -2404(r30)
0016f4  e7098fec  storeli.w r8, -2408(r30)
0016f8  67498fec  storeli.w r8, -2412(r30)
0016fc  67098fec  storeli.w r8, -2416(r30)
001700  e7488fec  storeli.w r8, -2420(r30)
001704  e7088fec  storeli.w r8, -2424(r30)
001708  67488fec  storeli.w r8, -2428(r30)
00170c  67088fec  storeli.w r8, -2432(r30)
001710  e7478fec  storeli.w r8, -2436(r30)
001714  e7078fec  storeli.w r8, -2440(r30)
001718  67478fec  storeli.w r8, -2444(r30)
00171c  67078fec  storeli.w r8, -2448(r30)
001720  e7468fec  storeli.w r8, -2452(r30)
001724  e7068fec  storeli.w r8, -2456(r30)
001728  67468fec  storeli.w r8, -2460(r30)
00172c  67068fec  storeli.w r8, -2464(r30)
001730  e7458fec  storeli.w r8, -2468(r30)
001734  e7058fec  storeli.w r8, -2472(r30)
001738  67458fec  storeli.w r8, -2476(r30)
00173c  67058fec  storeli.w r8, -2480(r30)
001740  e7448fec  storeli.w r8, -2484(r30)
001744  e7048fec  storeli.w r8, -2488(r30)
001748  67448fec  storeli.w r8, -2492(r30)
00174c  67048fec  storeli.w r8, -2496(r30)
001750  e7438fec  storeli.w r8, -2500(r30)
001754  e7038fec  storeli.w r8, -2504(r30)
001758  67438fec  storeli.w r8, -2508(r30)
00175c  67038fec  storeli.w r8, -2512(r30)
001760  e7428fec  storeli.w r8, -2516(r30)
001764  e7028fec  storeli.w r8, -2520(r30)
001768  67428fec  storeli.w r8, -2524(r30)
00176c  67028fec  storeli.w r8, -2528(r30)
001770  e7418fec  storeli.w r8, -2532(r30)
001774  e7018fec  storeli.w r8, -2536(r30)
001778  67418fec  storeli.w r8, -2540(r30)
00177c  67018fec  storeli.w r8, -2544(r30)
001780  e7408fec  storeli.w r8, -2548(r30)
001784  e7008fec  storeli.w r8, -2552(r30)
001788  67408fec  storeli.w r8, -2556(r30)
00178c  67008fec  storeli.w r8, -2560(r30)
001790  e74f8fea  storeli.w r8, -2564(r30)
001794  e70f8fea  storeli.w r8, -2568(r30)
001798  674f8fea  storeli.w r8, -2572(r30)
00179c  670f8fea  storeli.w r8, -2576(r30)
0017a0  e74e8fea  storeli.w r8, -2580(r30)
0017a4  e70e8fea  storeli.w r8, -2584(r30)
0017a8  674e8fea  storeli.w r8, -2588(r30)
0017ac  670e8fea  storeli.w r8, -2592(r30)
0017b0  e74d8fea  storeli.w r8, -2596(r30)
0017b4  e70d8fea  storeli.w r8, -2600(r30)
0017b8  674d8fea  storeli.w r8, -2604(r30)
0017bc  670d8fea  storeli.w r8, -2608(r30)
0017c0  e74c8fea  storeli.w r8, -2612(r30)
0017c4  e70c8fea  storeli.w r8, -2616(r30)
0017c8  674c8fea  storeli.w r8, -2620(r30)
0017cc  670c8fea  storeli.w r8, -2624(r30)
0017d0  e74b8fea  storeli.w r8, -2628(r30)
0017d4  e70b8fea  storeli.w r8, -2632(r30)
0017d8  674b8fea  storeli.w r8, -2636(r30)
0017dc  670b8fea  storeli.w r8, -2640(r30)
0017e0  e74a8fea  storeli.w r8, -2644(r30)
0017e4  e70a8fea  storeli.w r8, -2648(r30)
0017e8  674a8fea  storeli.w r8, -2652(r30)
0017ec  670a8fea  storeli.w r8, -2656(r30)
0017f0  e7498fea  storeli.w r8, -2660(r30)
0017f4  e7098fea  storeli.w r8, -2664(r30)
0017f8  67498fea  storeli.w r8, -2668(r30)
0017fc  67098fea  storeli.w r8, -2672(r30)
001800  e7488fea  storeli.w r8, -2676(r30)
001804  e7088fea  storeli.w r8, -2680(r30)
001808  67488fea  storeli.w r8, -2684(r30)
00180c  67088fea  storeli.w r8, -2688(r30)
001810  e7478fea  storeli.w r8, -2692(r30)
001814  e7078fea  storeli.w r8, -2696(r30)
001818  67478fea  storeli.w r8, -2700(r30)
00181c  67078fea  storeli.w r8, -2704(r30)
001820  e7468fea  storeli.w r8, -2708(r30)
001824  e7068fea  storeli.w r8, -2712(r30)
001828  67468fea  storeli.w r8, -2716(r30)
00182c  67068fea  storeli.w r8, -2720(r30)
001830  e7458fea  storeli.w r8, -2724(r30)
001834  e7058fea  storeli.w r8, -2728(r30)
001838  67458fea  storeli.w r8, -2732(r30)
00183c  67058fea  storeli.w r8, -2736(r30)
001840  e7448fea  storeli.w r8, -2740(r30)
001844  e7048fea  storeli.w r8, -2744(r30)
001848  67448fea  storeli.w r8, -2748(r30)
00184c  67048fea  storeli.w r8, -2752(r30)
001850  e7438fea  storeli.w r8, -2756(r30)
001854  e7038fea  storeli.w r8, -2760(r30)
001858  67438fea  storeli.w r8, -2764(r30)
00185c  67038fea  storeli.w r8, -2768(r30)
001860  e7428fea  storeli.w r8, -2772(r30)
001864  e7028fea  storeli.w r8, -2776(r30)
001868  67428fea  storeli.w r8, -2780(r30)
00186c  67028fea  storeli.w r8, -2784(r30)
001870  e7418fea  storeli.w r8, -2788(r30)
001874  e7018fea  storeli.w r8, -2792(r30)
001878  67418fea  storeli.w r8, -2796(r30)
00187c  67018fea  storeli.w r8, -2800(r30)
001880  e7408fea  storeli.w r8, -2804(r30)
001884  e7008fea  storeli.w r8, -2808(r30)
001888  67408fea  storeli.w r8, -2812(r30)
00188c  67008fea  storeli.w r8, -2816(r30)
001890  e74f8fe8  storeli.w r8, -2820(r30)
001894  e70f8fe8  storeli.w r8, -2824(r30)
001898  674f8fe8  storeli.w r8, -2828(r30)
00189c  670f8fe8  storeli.w r8, -2832(r30)
0018a0  e74e8fe8  storeli.w r8, -2836(r30)
0018a4  e70e8fe8  storeli.w r8, -2840(r30)
0018a8  674e8fe8  storeli.w r8, -2844(r30)
0018ac  670e8fe8  storeli.w r8, -2848(r30)
0018b0  e74d8fe8  storeli.w r8, -2852(r30)
0018b4  e70d8fe8  storeli.w r8, -2856(r30)
0018b8  674d8fe8  storeli.w r8, -2860(r30)
0018bc  670d8fe8  storeli.w r8, -2864(r30)
0018c0  e74c8fe8  storeli.w r8, -2868(r30)
0018c4  e70c8fe8  storeli.w r8, -2872(r30)
0018c8  674c8fe8  storeli.w r8, -2876(r30)
0018cc  670c8fe8  storeli.w r8, -2880(r30)
0018d0  e74b8fe8  storeli.w r8, -2884(r30)
0018d4  e70b8fe8  storeli.w r8, -2888(r30)
0018d8  674b8fe8  storeli.w r8, -2892(r30)
0018dc  670b8fe8  storeli.w r8, -2896(r30)
0018e0  e74a8fe8  storeli.w r8, -2900(r30)
0018e4  e70a8fe8  storeli.w r8, -2904(r30)
0018e8  674a8fe8  storeli.w r8, -2908(r30)
0018ec  670a8fe8  storeli.w r8, -2912(r30)
0018f0  e7498fe8  storeli.w r8, -2916(r30)
0018f4  e7098fe8  storeli.w r8, -2920(r30)
0018f8  67498fe8  storeli.w r8, -2924(r30)
0018fc  67098fe8  storeli.w r8, -2928(r30)
001900  e7488fe8  storeli.w r8, -2932(r30)
001904  e7088fe8  storeli.w r8, -2936(r30)
001908  67488fe8  storeli.w r8, -2940(r30)
00190c  67088fe8  storeli.w r8, -2944(r30)
001910  e7478fe8  storeli.w r8, -2948(r30)
001914  e7078fe8  storeli.w r8, -2952(r30)
001918  67478fe8  storeli.w r8, -2956(r30)
00191c  67078fe8  storeli.w r8, -2960(r30)
001920  e7468fe8  storeli.w r8, -2964(r30)
001924  e7068fe8  storeli.w r8, -2968(r30)
001928  67468fe8  storeli.w r8, -2972(r30)
00192c  67068fe8  storeli.w r8, -2976(r30)
001930  e7458fe8  storeli.w r8, -2980(r30)
001934  e7058fe8  storeli.w r8, -2984(r30)
001938  67458fe8  storeli.w r8, -2988(r30)
00193c  67058fe8  storeli.w r8, -2992(r30)
001940  e7448fe8  storeli.w r8, -2996(r30)
001944  e7048fe8  storeli.w r8, -3000(r30)
001948  67448fe8  storeli.w r8, -3004(r30)
00194c  67048fe8  storeli.w r8, -3008(r30)
001950  e7438fe8  storeli.w r8, -3012(r30)
001954  e7038fe8  storeli.w r8, -3016(r30)
001958  67438fe8  storeli.w r8, -3020(r30)
00195c  e7428fe8  storeli.w r8, -3028(r30)
001960  e7028fe8  storeli.w r8, -3032(r30)
001964  67428fe8  storeli.w r8, -3036(r30)
001968  0b913050  fmac.s r2, r1, r3
00196c  8b903020  mul.s r1, r1, r3
001970  1f71f1ff  addli r2, r2, -1
001974  0b114130  div.s r2, r2, r4
001978  00520002  load_param_i r4, 0
00197c  0b134120  mul.s r6, r2, r4
001980  0b114150  fmac.s r2, r2, r4
001984  abf1ffff  lui r3, 1048575
001988  8b131140  min.s r7, r2, r1
00198c  73b03200  store.d r[4:5], 0(r5)
001990  67028fe8  storeli.w r8, -3040(r30)
001994  e7418fe8  storeli.w r8, -3044(r30)
001998  e7018fe8  storeli.w r8, -3048(r30)
00199c  67418fe8  storeli.w r8, -3052(r30)
0019a0  67018fe8  storeli.w r8, -3056(r30)
0019a4  e7408fe8  storeli.w r8, -3060(r30)
0019a8  e7008fe8  storeli.w r8, -3064(r30)
0019ac  67408fe8  storeli.w r8, -3068(r30)
0019b0  67000fe8  storeli.w zero, -3072(r30)
0019b4  e74f8ff6  storeli.w r8, -1028(r30)
0019b8  e70f8ff6  storeli.w r8, -1032(r30)
0019bc  674f8ff6  storeli.w r8, -1036(r30)
0019c0  670f8ff6  storeli.w r8, -1040(r30)
0019c4  e74e8ff6  storeli.w r8, -1044(r30)
0019c8  e70e8ff6  storeli.w r8, -1048(r30)
0019cc  674e8ff6  storeli.w r8, -1052(r30)
0019d0  670e8ff6  storeli.w r8, -1056(r30)
0019d4  e74d8ff6  storeli.w r8, -1060(r30)
0019d8  e70d8ff6  storeli.w r8, -1064(r30)
0019dc  674d8ff6  storeli.w r8, -1068(r30)
0019e0  670d8ff6  storeli.w r8, -1072(r30)
0019e4  e74c8ff6  storeli.w r8, -1076(r30)
0019e8  e70c8ff6  storeli.w r8, -1080(r30)
0019ec  674c8ff6  storeli.w r8, -1084(r30)
0019f0  670c8ff6  storeli.w r8, -1088(r30)
0019f4  e74b8ff6  storeli.w r8, -1092(r30)
0019f8  e70b8ff6  storeli.w r8, -1096(r30)
0019fc  674b8ff6  storeli.w r8, -1100(r30)
001a00  670b8ff6  storeli.w r8, -1104(r30)
001a04  e74a8ff6  storeli.w r8, -1108(r30)
001a08  e70a8ff6  storeli.w r8, -1112(r30)
001a0c  674a8ff6  storeli.w r8, -1116(r30)
001a10  670a8ff6  storeli.w r8, -1120(r30)
001a14  e7498ff6  storeli.w r8, -1124(r30)
001a18  e7098ff6  storeli.w r8, -1128(r30)
001a1c  67498ff6  storeli.w r8, -1132(r30)
001a20  67098ff6  storeli.w r8, -1136(r30)
001a24  e7488ff6  storeli.w r8, -1140(r30)
001a28  e7088ff6  storeli.w r8, -1144(r30)
001a2c  67488ff6  storeli.w r8, -1148(r30)
001a30  67088ff6  storeli.w r8, -1152(r30)
001a34  e7478ff6  storeli.w r8, -1156(r30)
001a38  e7078ff6  storeli.w r8, -1160(r30)
001a3c  67478ff6  storeli.w r8, -1164(r30)
001a40  67078ff6  storeli.w r8, -1168(r30)
001a44  e7468ff6  storeli.w r8, -1172(r30)
001a48  e7068ff6  storeli.w r8, -1176(r30)
001a4c  67468ff6  storeli.w r8, -1180(r30)
001a50  67068ff6  storeli.w r8, -1184(r30)
001a54  e7458ff6  storeli.w r8, -1188(r30)
001a58  e7058ff6  storeli.w r8, -1192(r30)
001a5c  67458ff6  storeli.w r8, -1196(r30)
001a60  67058ff6  storeli.w r8, -1200(r30)
001a64  e7448ff6  storeli.w r8, -1204(r30)
001a68  e7048ff6  storeli.w r8, -1208(r30)
001a6c  67448ff6  storeli.w r8, -1212(r30)
001a70  67048ff6  storeli.w r8, -1216(r30)
001a74  e7438ff6  storeli.w r8, -1220(r30)
001a78  e7038ff6  storeli.w r8, -1224(r30)
001a7c  67438ff6  storeli.w r8, -1228(r30)
001a80  67038ff6  storeli.w r8, -1232(r30)
001a84  e7428ff6  storeli.w r8, -1236(r30)
001a88  e7028ff6  storeli.w r8, -1240(r30)
001a8c  67428ff6  storeli.w r8, -1244(r30)
001a90  67028ff6  storeli.w r8, -1248(r30)
001a94  e7418ff6  storeli.w r8, -1252(r30)
001a98  e7018ff6  storeli.w r8, -1256(r30)
001a9c  67418ff6  storeli.w r8, -1260(r30)
001aa0  67018ff6  storeli.w r8, -1264(r30)
001aa4  e7408ff6  storeli.w r8, -1268(r30)
001aa8  e7008ff6  storeli.w r8, -1272(r30)
001aac  67408ff6  storeli.w r8, -1276(r30)
001ab0  67008ff6  storeli.w r8, -1280(r30)
001ab4  e74f8ff4  storeli.w r8, -1284(r30)
001ab8  e70f8ff4  storeli.w r8, -1288(r30)
001abc  674f8ff4  storeli.w r8, -1292(r30)
001ac0  670f8ff4  storeli.w r8, -1296(r30)
001ac4  e74e8ff4  storeli.w r8, -1300(r30)
001ac8  e70e8ff4  storeli.w r8, -1304(r30)
001acc  674e8ff4  storeli.w r8, -1308(r30)
001ad0  670e8ff4  storeli.w r8, -1312(r30)
001ad4  e74d8ff4  storeli.w r8, -1316(r30)
001ad8  e70d8ff4  storeli.w r8, -1320(r30)
001adc  674d8ff4  storeli.w r8, -1324(r30)
001ae0  670d8ff4  storeli.w r8, -1328(r30)
001ae4  e74c8ff4  storeli.w r8, -1332(r30)
001ae8  e70c8ff4  storeli.w r8, -1336(r30)
001aec  674c8ff4  storeli.w r8, -1340(r30)
001af0  670c8ff4  storeli.w r8, -1344(r30)
001af4  e74b8ff4  storeli.w r8, -1348(r30)
001af8  e70b8ff4  storeli.w r8, -1352(r30)
001afc  674b8ff4  storeli.w r8, -1356(r30)
001b00  670b8ff4  storeli.w r8, -1360(r30)
001b04  e74a8ff4  storeli.w r8, -1364(r30)
001b08  e70a8ff4  storeli.w r8, -1368(r30)
001b0c  674a8ff4  storeli.w r8, -1372(r30)
001b10  670a8ff4  storeli.w r8, -1376(r30)
001b14  e7498ff4  storeli.w r8, -1380(r30)
001b18  e7098ff4  storeli.w r8, -1384(r30)
001b1c  67498ff4  storeli.w r8, -1388(r30)
001b20  67098ff4  storeli.w r8, -1392(r30)
001b24  e7488ff4  storeli.w r8, -1396(r30)
001b28  e7088ff4  storeli.w r8, -1400(r30)
001b2c  67488ff4  storeli.w r8, -1404(r30)
001b30  67088ff4  storeli.w r8, -1408(r30)
001b34  e7478ff4  storeli.w r8, -1412(r30)
001b38  e7078ff4  storeli.w r8, -1416(r30)
001b3c  67478ff4  storeli.w r8, -1420(r30)
001b40  67078ff4  storeli.w r8, -1424(r30)
001b44  e7468ff4  storeli.w r8, -1428(r30)
001b48  e7068ff4  storeli.w r8, -1432(r30)
001b4c  67468ff4  storeli.w r8, -1436(r30)
001b50  67068ff4  storeli.w r8, -1440(r30)
001b54  e7458ff4  storeli.w r8, -1444(r30)
001b58  e7058ff4  storeli.w r8, -1448(r30)
001b5c  67458ff4  storeli.w r8, -1452(r30)
001b60  67058ff4  storeli.w r8, -1456(r30)
001b64  e7448ff4  storeli.w r8, -1460(r30)
001b68  e7048ff4  storeli.w r8, -1464(r30)
001b6c  67448ff4  storeli.w r8, -1468(r30)
001b70  67048ff4  storeli.w r8, -1472(r30)
001b74  e7438ff4  storeli.w r8, -1476(r30)
001b78  e7038ff4  storeli.w r8, -1480(r30)
001b7c  67438ff4  storeli.w r8, -1484(r30)
001b80  67038ff4  storeli.w r8, -1488(r30)
001b84  e7428ff4  storeli.w r8, -1492(r30)
001b88  e7028ff4  storeli.w r8, -1496(r30)
001b8c  67428ff4  storeli.w r8, -1500(r30)
001b90  67028ff4  storeli.w r8, -1504(r30)
001b94  e7418ff4  storeli.w r8, -1508(r30)
001b98  e7018ff4  storeli.w r8, -1512(r30)
001b9c  67418ff4  storeli.w r8, -1516(r30)
001ba0  67018ff4  storeli.w r8, -1520(r30)
001ba4  e7408ff4  storeli.w r8, -1524(r30)
001ba8  e7008ff4  storeli.w r8, -1528(r30)
001bac  67408ff4  storeli.w r8, -1532(r30)
001bb0  67008ff4  storeli.w r8, -1536(r30)
001bb4  e74f8ff2  storeli.w r8, -1540(r30)
001bb8  e70f8ff2  storeli.w r8, -1544(r30)
001bbc  674f8ff2  storeli.w r8, -1548(r30)
001bc0  670f8ff2  storeli.w r8, -1552(r30)
001bc4  e74e8ff2  storeli.w r8, -1556(r30)
001bc8  e70e8ff2  storeli.w r8, -1560(r30)
001bcc  674e8ff2  storeli.w r8, -1564(r30)
001bd0  670e8ff2  storeli.w r8, -1568(r30)
001bd4  e74d8ff2  storeli.w r8, -1572(r30)
001bd8  e70d8ff2  storeli.w r8, -1576(r30)
001bdc  674d8ff2  storeli.w r8, -1580(r30)
001be0  670d8ff2  storeli.w r8, -1584(r30)
001be4  e74c8ff2  storeli.w r8, -1588(r30)
001be8  e70c8ff2  storeli.w r8, -1592(r30)
001bec  674c8ff2  storeli.w r8, -1596(r30)
001bf0  670c8ff2  storeli.w r8, -1600(r30)
001bf4  e74b8ff2  storeli.w r8, -1604(r30)
001bf8  e70b8ff2  storeli.w r8, -1608(r30)
001bfc  674b8ff2  storeli.w r8, -1612(r30)
001c00  670b8ff2  storeli.w r8, -1616(r30)
001c04  e74a8ff2  storeli.w r8, -1620(r30)
001c08  e70a8ff2  storeli.w r8, -1624(r30)
001c0c  674a8ff2  storeli.w r8, -1628(r30)
001c10  670a8ff2  storeli.w r8, -1632(r30)
001c14  e7498ff2  storeli.w r8, -1636(r30)
001c18  e7098ff2  storeli.w r8, -1640(r30)
001c1c  67498ff2  storeli.w r8, -1644(r30)
001c20  67098ff2  storeli.w r8, -1648(r30)
001c24  e7488ff2  storeli.w r8, -1652(r30)
001c28  e7088ff2  storeli.w r8, -1656(r30)
001c2c  67488ff2  storeli.w r8, -1660(r30)
001c30  67088ff2  storeli.w r8, -1664(r30)
001c34  e7478ff2  storeli.w r8, -1668(r30)
001c38  e7078ff2  storeli.w r8, -1672(r30)
001c3c  67478ff2  storeli.w r8, -1676(r30)
001c40  67078ff2  storeli.w r8, -1680(r30)
001c44  e7468ff2  storeli.w r8, -1684(r30)
001c48  e7068ff2  storeli.w r8, -1688(r30)
001c4c  67468ff2  storeli.w r8, -1692(r30)
001c50  67068ff2  storeli.w r8, -1696(r30)
001c54  e7458ff2  storeli.w r8, -1700(r30)
001c58  e7058ff2  storeli.w r8, -1704(r30)
001c5c  67458ff2  storeli.w r8, -1708(r30)
001c60  67058ff2  storeli.w r8, -1712(r30)
001c64  e7448ff2  storeli.w r8, -1716(r30)
001c68  e7048ff2  storeli.w r8, -1720(r30)
001c6c  67448ff2  storeli.w r8, -1724(r30)
001c70  67048ff2  storeli.w r8, -1728(r30)
001c74  e7438ff2  storeli.w r8, -1732(r30)
001c78  e7038ff2  storeli.w r8, -1736(r30)
001c7c  67438ff2  storeli.w r8, -1740(r30)
001c80  67038ff2  storeli.w r8, -1744(r30)
001c84  e7428ff2  storeli.w r8, -1748(r30)
001c88  e7028ff2  storeli.w r8, -1752(r30)
001c8c  67428ff2  storeli.w r8, -1756(r30)
001c90  67028ff2  storeli.w r8, -1760(r30)
001c94  e7418ff2  storeli.w r8, -1764(r30)
001c98  e7018ff2  storeli.w r8, -1768(r30)
001c9c  67418ff2  storeli.w r8, -1772(r30)
001ca0  67018ff2  storeli.w r8, -1776(r30)
001ca4  e7408ff2  storeli.w r8, -1780(r30)
001ca8  e7008ff2  storeli.w r8, -1784(r30)
001cac  67408ff2  storeli.w r8, -1788(r30)
001cb0  67008ff2  storeli.w r8, -1792(r30)
001cb4  e74f8ff0  storeli.w r8, -1796(r30)
001cb8  e70f8ff0  storeli.w r8, -1800(r30)
001cbc  674f8ff0  storeli.w r8, -1804(r30)
001cc0  670f8ff0  storeli.w r8, -1808(r30)
001cc4  e74e8ff0  storeli.w r8, -1812(r30)
001cc8  e70e8ff0  storeli.w r8, -1816(r30)
001ccc  674e8ff0  storeli.w r8, -1820(r30)
001cd0  670e8ff0  storeli.w r8, -1824(r30)
001cd4  e74d8ff0  storeli.w r8, -1828(r30)
001cd8  e70d8ff0  storeli.w r8, -1832(r30)
001cdc  674d8ff0  storeli.w r8, -1836(r30)
001ce0  670d8ff0  storeli.w r8, -1840(r30)
001ce4  e74c8ff0  storeli.w r8, -1844(r30)
001ce8  e70c8ff0  storeli.w r8, -1848(r30)
001cec  674c8ff0  storeli.w r8, -1852(r30)
001cf0  670c8ff0  storeli.w r8, -1856(r30)
001cf4  e74b8ff0  storeli.w r8, -1860(r30)
001cf8  e70b8ff0  storeli.w r8, -1864(r30)
001cfc  674b8ff0  storeli.w r8, -1868(r30)
001d00  670b8ff0  storeli.w r8, -1872(r30)
001d04  e74a8ff0  storeli.w r8, -1876(r30)
001d08  e70a8ff0  storeli.w r8, -1880(r30)
001d0c  674a8ff0  storeli.w r8, -1884(r30)
001d10  670a8ff0  storeli.w r8, -1888(r30)
001d14  e7498ff0  storeli.w r8, -1892(r30)
001d18  e7098ff0  storeli.w r8, -1896(r30)
001d1c  67498ff0  storeli.w r8, -1900(r30)
001d20  67098ff0  storeli.w r8, -1904(r30)
001d24  e7488ff0  storeli.w r8, -1908(r30)
001d28  e7088ff0  storeli.w r8, -1912(r30)
001d2c  67488ff0  storeli.w r8, -1916(r30)
001d30  67088ff0  storeli.w r8, -1920(r30)
001d34  e7478ff0  storeli.w r8, -1924(r30)
001d38  e7078ff0  storeli.w r8, -1928(r30)
001d3c  67478ff0  storeli.w r8, -1932(r30)
001d40  67078ff0  storeli.w r8, -1936(r30)
001d44  e7468ff0  storeli.w r8, -1940(r30)
001d48  e7068ff0  storeli.w r8, -1944(r30)
001d4c  67468ff0  storeli.w r8, -1948(r30)
001d50  67068ff0  storeli.w r8, -1952(r30)
001d54  e7458ff0  storeli.w r8, -1956(r30)
001d58  e7058ff0  storeli.w r8, -1960(r30)
001d5c  e74f8fee  storeli.w r8, -2052(r30)
001d60  67000fe0  storeli.w zero, -4096(r30)
001d64  67408fe0  storeli.w r8, -4092(r30)
001d68  e7008fe0  storeli.w r8, -4088(r30)
001d6c  e7408fe0  storeli.w r8, -4084(r30)
001d70  67018fe0  storeli.w r8, -4080(r30)
001d74  67418fe0  storeli.w r8, -4076(r30)
001d78  e7018fe0  storeli.w r8, -4072(r30)
001d7c  e7418fe0  storeli.w r8, -4068(r30)
001d80  67028fe0  storeli.w r8, -4064(r30)
001d84  67428fe0  storeli.w r8, -4060(r30)
001d88  e7028fe0  storeli.w r8, -4056(r30)
001d8c  e7428fe0  storeli.w r8, -4052(r30)
001d90  67038fe0  storeli.w r8, -4048(r30)
001d94  67438fe0  storeli.w r8, -4044(r30)
001d98  e7038fe0  storeli.w r8, -4040(r30)
001d9c  e7438fe0  storeli.w r8, -4036(r30)
001da0  67048fe0  storeli.w r8, -4032(r30)
001da4  67448fe0  storeli.w r8, -4028(r30)
001da8  e7048fe0  storeli.w r8, -4024(r30)
001dac  e7448fe0  storeli.w r8, -4020(r30)
001db0  67058fe0  storeli.w r8, -4016(r30)
001db4  67458fe0  storeli.w r8, -4012(r30)
001db8  e7058fe0  storeli.w r8, -4008(r30)
001dbc  e7458fe0  storeli.w r8, -4004(r30)
001dc0  67068fe0  storeli.w r8, -4000(r30)
001dc4  67468fe0  storeli.w r8, -3996(r30)
001dc8  e7068fe0  storeli.w r8, -3992(r30)
001dcc  e7468fe0  storeli.w r8, -3988(r30)
001dd0  67078fe0  storeli.w r8, -3984(r30)
001dd4  67478fe0  storeli.w r8, -3980(r30)
001dd8  e7078fe0  storeli.w r8, -3976(r30)
001ddc  e7478fe0  storeli.w r8, -3972(r30)
001de0  67088fe0  storeli.w r8, -3968(r30)
001de4  67488fe0  storeli.w r8, -3964(r30)
001de8  e7088fe0  storeli.w r8, -3960(r30)
001dec  e7488fe0  storeli.w r8, -3956(r30)
001df0  67098fe0  storeli.w r8, -3952(r30)
001df4  67498fe0  storeli.w r8, -3948(r30)
001df8  e7098fe0  storeli.w r8, -3944(r30)
001dfc  e7498fe0  storeli.w r8, -3940(r30)
001e00  670a8fe0  storeli.w r8, -3936(r30)
001e04  674a8fe0  storeli.w r8, -3932(r30)
001e08  e70a8fe0  storeli.w r8, -3928(r30)
001e0c  e74a8fe0  storeli.w r8, -3924(r30)
001e10  670b8fe0  storeli.w r8, -3920(r30)
001e14  674b8fe0  storeli.w r8, -3916(r30)
001e18  e70b8fe0  storeli.w r8, -3912(r30)
001e1c  e74b8fe0  storeli.w r8, -3908(r30)
001e20  670c8fe0  storeli.w r8, -3904(r30)
001e24  674c8fe0  storeli.w r8, -3900(r30)
001e28  e70c8fe0  storeli.w r8, -3896(r30)
001e2c  e74c8fe0  storeli.w r8, -3892(r30)
001e30  670d8fe0  storeli.w r8, -3888(r30)
001e34  674d8fe0  storeli.w r8, -3884(r30)
001e38  e70d8fe0  storeli.w r8, -3880(r30)
001e3c  e74d8fe0  storeli.w r8, -3876(r30)
001e40  670e8fe0  storeli.w r8, -3872(r30)
001e44  674e8fe0  storeli.w r8, -3868(r30)
001e48  e70e8fe0  storeli.w r8, -3864(r30)
001e4c  e74e8fe0  storeli.w r8, -3860(r30)
001e50  670f8fe0  storeli.w r8, -3856(r30)
001e54  674f8fe0  storeli.w r8, -3852(r30)
001e58  e70f8fe0  storeli.w r8, -3848(r30)
001e5c  e74f8fe0  storeli.w r8, -3844(r30)
001e60  67008fe2  storeli.w r8, -3840(r30)
001e64  67408fe2  storeli.w r8, -3836(r30)
001e68  e7008fe2  storeli.w r8, -3832(r30)
001e6c  e7408fe2  storeli.w r8, -3828(r30)
001e70  67018fe2  storeli.w r8, -3824(r30)
001e74  67418fe2  storeli.w r8, -3820(r30)
001e78  e7018fe2  storeli.w r8, -3816(r30)
001e7c  e7418fe2  storeli.w r8, -3812(r30)
001e80  67028fe2  storeli.w r8, -3808(r30)
001e84  67428fe2  storeli.w r8, -3804(r30)
001e88  e7028fe2  storeli.w r8, -3800(r30)
001e8c  e7428fe2  storeli.w r8, -3796(r30)
001e90  67038fe2  storeli.w r8, -3792(r30)
001e94  67438fe2  storeli.w r8, -3788(r30)
001e98  e7038fe2  storeli.w r8, -3784(r30)
001e9c  e7438fe2  storeli.w r8, -3780(r30)
001ea0  67048fe2  storeli.w r8, -3776(r30)
001ea4  67448fe2  storeli.w r8, -3772(r30)
001ea8  e7048fe2  storeli.w r8, -3768(r30)
001eac  e7448fe2  storeli.w r8, -3764(r30)
001eb0  67058fe2  storeli.w r8, -3760(r30)
001eb4  67458fe2  storeli.w r8, -3756(r30)
001eb8  e7058fe2  storeli.w r8, -3752(r30)
001ebc  e7458fe2  storeli.w r8, -3748(r30)
001ec0  67068fe2  storeli.w r8, -3744(r30)
001ec4  67468fe2  storeli.w r8, -3740(r30)
001ec8  e7068fe2  storeli.w r8, -3736(r30)
001ecc  e7468fe2  storeli.w r8, -3732(r30)
001ed0  67078fe2  storeli.w r8, -3728(r30)
001ed4  67478fe2  storeli.w r8, -3724(r30)
001ed8  e7078fe2  storeli.w r8, -3720(r30)
001edc  e7478fe2  storeli.w r8, -3716(r30)
001ee0  67088fe2  storeli.w r8, -3712(r30)
001ee4  67488fe2  storeli.w r8, -3708(r30)
001ee8  e7088fe2  storeli.w r8, -3704(r30)
001eec  e7488fe2  storeli.w r8, -3700(r30)
001ef0  67098fe2  storeli.w r8, -3696(r30)
001ef4  67498fe2  storeli.w r8, -3692(r30)
001ef8  e7098fe2  storeli.w r8, -3688(r30)
001efc  e7498fe2  storeli.w r8, -3684(r30)
001f00  670a8fe2  storeli.w r8, -3680(r30)
001f04  674a8fe2  storeli.w r8, -3676(r30)
001f08  e70a8fe2  storeli.w r8, -3672(r30)
001f0c  e74a8fe2  storeli.w r8, -3668(r30)
001f10  670b8fe2  storeli.w r8, -3664(r30)
001f14  674b8fe2  storeli.w r8, -3660(r30)
001f18  e70b8fe2  storeli.w r8, -3656(r30)
001f1c  e74b8fe2  storeli.w r8, -3652(r30)
001f20  670c8fe2  storeli.w r8, -3648(r30)
001f24  674c8fe2  storeli.w r8, -3644(r30)
001f28  e70c8fe2  storeli.w r8, -3640(r30)
001f2c  e74c8fe2  storeli.w r8, -3636(r30)
001f30  670d8fe2  storeli.w r8, -3632(r30)
001f34  674d8fe2  storeli.w r8, -3628(r30)
001f38  e70d8fe2  storeli.w r8, -3624(r30)
001f3c  e74d8fe2  storeli.w r8, -3620(r30)
001f40  670e8fe2  storeli.w r8, -3616(r30)
001f44  674e8fe2  storeli.w r8, -3612(r30)
001f48  e70e8fe2  storeli.w r8, -3608(r30)
001f4c  e74e8fe2  storeli.w r8, -3604(r30)
001f50  670f8fe2  storeli.w r8, -3600(r30)
001f54  674f8fe2  storeli.w r8, -3596(r30)
001f58  e70f8fe2  storeli.w r8, -3592(r30)
001f5c  e74f8fe2  storeli.w r8, -3588(r30)
001f60  67008fe4  storeli.w r8, -3584(r30)
001f64  67408fe4  storeli.w r8, -3580(r30)
001f68  e7008fe4  storeli.w r8, -3576(r30)
001f6c  e7408fe4  storeli.w r8, -3572(r30)
001f70  67018fe4  storeli.w r8, -3568(r30)
001f74  67418fe4  storeli.w r8, -3564(r30)
001f78  e7018fe4  storeli.w r8, -3560(r30)
001f7c  e7418fe4  storeli.w r8, -3556(r30)
001f80  67028fe4  storeli.w r8, -3552(r30)
001f84  67428fe4  storeli.w r8, -3548(r30)
001f88  e7028fe4  storeli.w r8, -3544(r30)
001f8c  e7428fe4  storeli.w r8, -3540(r30)
001f90  67038fe4  storeli.w r8, -3536(r30)
001f94  67438fe4  storeli.w r8, -3532(r30)
001f98  e7038fe4  storeli.w r8, -3528(r30)
001f9c  e7438fe4  storeli.w r8, -3524(r30)
001fa0  67048fe4  storeli.w r8, -3520(r30)
001fa4  67448fe4  storeli.w r8, -3516(r30)
001fa8  e7048fe4  storeli.w r8, -3512(r30)
001fac  e7448fe4  storeli.w r8, -3508(r30)
001fb0  67058fe4  storeli.w r8, -3504(r30)
001fb4  67458fe4  storeli.w r8, -3500(r30)
001fb8  e7058fe4  storeli.w r8, -3496(r30)
001fbc  e7458fe4  storeli.w r8, -3492(r30)
001fc0  67068fe4  storeli.w r8, -3488(r30)
001fc4  67468fe4  storeli.w r8, -3484(r30)
001fc8  e7068fe4  storeli.w r8, -3480(r30)
001fcc  e7468fe4  storeli.w r8, -3476(r30)
001fd0  67078fe4  storeli.w r8, -3472(r30)
001fd4  67478fe4  storeli.w r8, -3468(r30)
001fd8  e7078fe4  storeli.w r8, -3464(r30)
001fdc  e7478fe4  storeli.w r8, -3460(r30)
001fe0  67088fe4  storeli.w r8, -3456(r30)
001fe4  67488fe4  storeli.w r8, -3452(r30)
001fe8  e7088fe4  storeli.w r8, -3448(r30)
001fec  e7488fe4  storeli.w r8, -3444(r30)
001ff0  67098fe4  storeli.w r8, -3440(r30)
001ff4  67498fe4  storeli.w r8, -3436(r30)
001ff8  e7098fe4  storeli.w r8, -3432(r30)
001ffc  e7498fe4  storeli.w r8, -3428(r30)
002000  670a8fe4  storeli.w r8, -3424(r30)
002004  674a8fe4  storeli.w r8, -3420(r30)
002008  e70a8fe4  storeli.w r8, -3416(r30)
00200c  e74a8fe4  storeli.w r8, -3412(r30)
002010  670b8fe4  storeli.w r8, -3408(r30)
002014  674b8fe4  storeli.w r8, -3404(r30)
002018  e70b8fe4  storeli.w r8, -3400(r30)
00201c  e74b8fe4  storeli.w r8, -3396(r30)
002020  670c8fe4  storeli.w r8, -3392(r30)
002024  674c8fe4  storeli.w r8, -3388(r30)
002028  e70c8fe4  storeli.w r8, -3384(r30)
00202c  e74c8fe4  storeli.w r8, -3380(r30)
002030  670d8fe4  storeli.w r8, -3376(r30)
002034  674d8fe4  storeli.w r8, -3372(r30)
002038  e70d8fe4  storeli.w r8, -3368(r30)
00203c  e74d8fe4  storeli.w r8, -3364(r30)
002040  670e8fe4  storeli.w r8, -3360(r30)
002044  674e8fe4  storeli.w r8, -3356(r30)
002048  e70e8fe4  storeli.w r8, -3352(r30)
00204c  e74e8fe4  storeli.w r8, -3348(r30)
002050  670f8fe4  storeli.w r8, -3344(r30)
002054  674f8fe4  storeli.w r8, -3340(r30)
002058  e70f8fe4  storeli.w r8, -3336(r30)
00205c  e74f8fe4  storeli.w r8, -3332(r30)
002060  67008fe6  storeli.w r8, -3328(r30)
002064  67408fe6  storeli.w r8, -3324(r30)
002068  e7008fe6  storeli.w r8, -3320(r30)
00206c  e7408fe6  storeli.w r8, -3316(r30)
002070  67018fe6  storeli.w r8, -3312(r30)
002074  67418fe6  storeli.w r8, -3308(r30)
002078  e7018fe6  storeli.w r8, -3304(r30)
00207c  e7418fe6  storeli.w r8, -3300(r30)
002080  67028fe6  storeli.w r8, -3296(r30)
002084  67428fe6  storeli.w r8, -3292(r30)
002088  e7028fe6  storeli.w r8, -3288(r30)
00208c  e7428fe6  storeli.w r8, -3284(r30)
002090  67038fe6  storeli.w r8, -3280(r30)
002094  67438fe6  storeli.w r8, -3276(r30)
002098  e7038fe6  storeli.w r8, -3272(r30)
00209c  e7438fe6  storeli.w r8, -3268(r30)
0020a0  67048fe6  storeli.w r8, -3264(r30)
0020a4  67448fe6  storeli.w r8, -3260(r30)
0020a8  e7048fe6  storeli.w r8, -3256(r30)
0020ac  e7448fe6  storeli.w r8, -3252(r30)
0020b0  67058fe6  storeli.w r8, -3248(r30)
0020b4  67458fe6  storeli.w r8, -3244(r30)
0020b8  e7058fe6  storeli.w r8, -3240(r30)
0020bc  e7458fe6  storeli.w r8, -3236(r30)
0020c0  67068fe6  storeli.w r8, -3232(r30)
0020c4  67468fe6  storeli.w r8, -3228(r30)
0020c8  e7068fe6  storeli.w r8, -3224(r30)
0020cc  e7468fe6  storeli.w r8, -3220(r30)
0020d0  67078fe6  storeli.w r8, -3216(r30)
0020d4  67478fe6  storeli.w r8, -3212(r30)
0020d8  e7078fe6  storeli.w r8, -3208(r30)
0020dc  e7478fe6  storeli.w r8, -3204(r30)
0020e0  67088fe6  storeli.w r8, -3200(r30)
0020e4  67488fe6  storeli.w r8, -3196(r30)
0020e8  e7088fe6  storeli.w r8, -3192(r30)
0020ec  e7488fe6  storeli.w r8, -3188(r30)
0020f0  67098fe6  storeli.w r8, -3184(r30)
0020f4  67498fe6  storeli.w r8, -3180(r30)
0020f8  e7098fe6  storeli.w r8, -3176(r30)
0020fc  e7498fe6  storeli.w r8, -3172(r30)
002100  670a8fe6  storeli.w r8, -3168(r30)
002104  674a8fe6  storeli.w r8, -3164(r30)
002108  e70a8fe6  storeli.w r8, -3160(r30)
00210c  e74a8fe6  storeli.w r8, -3156(r30)
002110  670b8fe6  storeli.w r8, -3152(r30)
002114  674b8fe6  storeli.w r8, -3148(r30)
002118  e70b8fe6  storeli.w r8, -3144(r30)
00211c  e74b8fe6  storeli.w r8, -3140(r30)
002120  670c8fe6  storeli.w r8, -3136(r30)
002124  674c8fe6  storeli.w r8, -3132(r30)
002128  e70c8fe6  storeli.w r8, -3128(r30)
00212c  e74c8fe6  storeli.w r8, -3124(r30)
002130  670d8fe6  storeli.w r8, -3120(r30)
002134  674d8fe6  storeli.w r8, -3116(r30)
002138  e70d8fe6  storeli.w r8, -3112(r30)
00213c  e74d8fe6  storeli.w r8, -3108(r30)
002140  670e8fe6  storeli.w r8, -3104(r30)
002144  674e8fe6  storeli.w r8, -3100(r30)
002148  e70e8fe6  storeli.w r8, -3096(r30)
00214c  e74e8fe6  storeli.w r8, -3092(r30)
002150  670f8fe6  storeli.w r8, -3088(r30)
002154  674f8fe6  storeli.w r8, -3084(r30)
002158  e70f8fe6  storeli.w r8, -3080(r30)
00215c  e74f8fe6  storeli.w r8, -3076(r30)
002160  cbbf6304  ble.s r7, r6, 3052
002164  b3900328  sext_int2long r[2:3], r7
002168  9f018fdf  addli r3, r30, -4160
00216c  b3120328  sext_int2long r[6:7], r6
002170  9f250000  addli r11, zero, 2
002174  9f5a0000  addli r21, zero, 5
002178  1f470000  addli r14, zero, 4
00217c  9f180000  addli r17, zero, 1
002180  1f0a4000  addli r20, zero, 32
002184  9f062000  addli r13, zero, 16
002188  73b01100  store.d r[2:3], 0(r3)
00218c  9f01bfdf  addli r3, r30, -4136
002190  ebd00100  load.d r[2:3], 0(r3)
002194  1f71f007  addli r2, zero, 1023
002198  73b01100  store.d r[2:3], 0(r3)
00219c  abf01700  lui r1, 383
0021a0  9b900080  ori r1, r1, 2048
0021a4  e74b1fde  storeli.w r1, -4164(r30)
0021a8  5b540000  j 672
0021ac  9f02cfdf  addli r5, r30, -4128
0021b0  1f6b1000  addli r22, zero, 14
0021b4  9f570000  addli r15, zero, 5
0021b8  1f2d0000  addli r26, zero, 2
0021bc  9f360000  addli r13, zero, 3
0021c0  9f6b0000  addli r23, zero, 6
0021c4  1f7c0000  addli r24, zero, 7
0021c8  1f031000  addli r6, zero, 8
0021cc  9f1d1000  addli r27, zero, 9
0021d0  1f281000  addli r16, zero, 10
0021d4  1f341000  addli r8, zero, 11
0021d8  9f431000  addli r7, zero, 12
0021dc  eb510f00  load.d r[4:5], 0(r30)
0021e0  1f591000  addli r18, zero, 13
0021e4  1f7e1000  addli r28, zero, 15
0021e8  9f793000  addli r19, zero, 31
0021ec  9f250000  addli r11, zero, 2
0021f0  ebd00200  load.d r[2:3], 0(r5)
0021f4  7d100b00  xwait r22, 0
0021f8  1d800700  lock zero, r15
0021fc  9ff23400  addli r5, r9, 31
002200  15000014  dma_cfg zero, zero, zero, 10
002204  15001015  dma_cfg zero, zero, r17, 10
002208  1500a015  dma_cfg zero, zero, r26, 10
00220c  8ba11110  add.ul r[4:5], r[4:5], r[2:3]
002210  9f002000  addli r1, zero, 16
002214  1f010001  addli r2, zero, 128
002218  1500d014  dma_cfg zero, zero, r13, 10
00221c  1500e014  dma_cfg zero, zero, r14, 10
002220  1500f014  dma_cfg zero, zero, r15, 10
002224  15007015  dma_cfg zero, zero, r23, 10
002228  15008015  dma_cfg zero, zero, r24, 10
00222c  15006014  dma_cfg zero, zero, r6, 10
002230  1500b015  dma_cfg zero, zero, r27, 10
002234  15000015  dma_cfg zero, zero, r16, 10
002238  15008014  dma_cfg zero, zero, r8, 10
00223c  15007014  dma_cfg zero, zero, r7, 10
002240  15002015  dma_cfg zero, zero, r18, 10
002244  15006015  dma_cfg zero, zero, r22, 10
002248  1500c015  dma_cfg zero, zero, r28, 10
00224c  15001014  dma_cfg zero, zero, r1, 10
002250  9f102000  addli r1, zero, 17
002254  15001014  dma_cfg zero, zero, r1, 10
002258  9f202000  addli r1, zero, 18
00225c  15001014  dma_cfg zero, zero, r1, 10
002260  9f302000  addli r1, zero, 19
002264  15001014  dma_cfg zero, zero, r1, 10
002268  9f402000  addli r1, zero, 20
00226c  15001014  dma_cfg zero, zero, r1, 10
002270  9f502000  addli r1, zero, 21
002274  15001014  dma_cfg zero, zero, r1, 10
002278  9f602000  addli r1, zero, 22
00227c  15001014  dma_cfg zero, zero, r1, 10
002280  9f702000  addli r1, zero, 23
002284  15001014  dma_cfg zero, zero, r1, 10
002288  9f003000  addli r1, zero, 24
00228c  15001014  dma_cfg zero, zero, r1, 10
002290  9f103000  addli r1, zero, 25
002294  15001014  dma_cfg zero, zero, r1, 10
002298  9f203000  addli r1, zero, 26
00229c  15001014  dma_cfg zero, zero, r1, 10
0022a0  9f303000  addli r1, zero, 27
0022a4  15001014  dma_cfg zero, zero, r1, 10
0022a8  9f403000  addli r1, zero, 28
0022ac  15001014  dma_cfg zero, zero, r1, 10
0022b0  9f503000  addli r1, zero, 29
0022b4  15001014  dma_cfg zero, zero, r1, 10
0022b8  9f603000  addli r1, zero, 30
0022bc  15001014  dma_cfg zero, zero, r1, 10
0022c0  abf01700  lui r1, 383
0022c4  15003015  dma_cfg zero, zero, r19, 10
0022c8  95880800  dma_cfg r17, r17, zero, 0
0022cc  9b900084  ori r1, r1, 2112
0022d0  95080002  dma_cfg r17, zero, zero, 1
0022d4  15000004  dma_cfg zero, zero, zero, 2
0022d8  e34a7fdf  loadli.w r21,  -4164(r30)
0022dc  950ac006  dma_cfg r21, zero, r12, 3
0022e0  15011009  dma_cfg r2, zero, r17, 4
0022e4  1501100b  dma_cfg r2, zero, r17, 5
0022e8  15000010  dma_cfg zero, zero, zero, 8
0022ec  35000000  dma_run zero
0022f0  1500100b  dma_cfg zero, zero, r17, 5
0022f4  15000010  dma_cfg zero, zero, zero, 8
0022f8  1d900700  unlock r15
0022fc  1d000700  lock zero, r14
002300  95880800  dma_cfg r17, r17, zero, 0
002304  15000204  dma_cfg zero, r4, zero, 2
002308  9580c106  dma_cfg r1, r3, r12, 3
00230c  9bb11400  slli r3, r9, 1
002310  9bc05200  srli r1, r5, 5
002314  1f022000  addli r4, zero, 16
002318  15011608  dma_cfg r2, r12, r1, 4
00231c  9b81e103  andi r3, r3, 62
002320  1501160b  dma_cfg r2, r12, r17, 5
002324  15003010  dma_cfg zero, zero, r3, 8
002328  35000000  dma_run zero
00232c  1500100b  dma_cfg zero, zero, r17, 5
002330  15000010  dma_cfg zero, zero, zero, 8
002334  1d100700  unlock r14
002338  1d800700  lock zero, r15
00233c  15000014  dma_cfg zero, zero, zero, 10
002340  15001015  dma_cfg zero, zero, r17, 10
002344  1500a015  dma_cfg zero, zero, r26, 10
002348  1500d014  dma_cfg zero, zero, r13, 10
00234c  9f062000  addli r13, zero, 16
002350  1500e014  dma_cfg zero, zero, r14, 10
002354  1500f014  dma_cfg zero, zero, r15, 10
002358  15007015  dma_cfg zero, zero, r23, 10
00235c  15008015  dma_cfg zero, zero, r24, 10
002360  15006014  dma_cfg zero, zero, r6, 10
002364  1500b015  dma_cfg zero, zero, r27, 10
002368  15000015  dma_cfg zero, zero, r16, 10
00236c  15008014  dma_cfg zero, zero, r8, 10
002370  15007014  dma_cfg zero, zero, r7, 10
002374  15002015  dma_cfg zero, zero, r18, 10
002378  15006015  dma_cfg zero, zero, r22, 10
00237c  1500c015  dma_cfg zero, zero, r28, 10
002380  15004014  dma_cfg zero, zero, r4, 10
002384  1f122000  addli r4, zero, 17
002388  15004014  dma_cfg zero, zero, r4, 10
00238c  1f222000  addli r4, zero, 18
002390  15004014  dma_cfg zero, zero, r4, 10
002394  1f322000  addli r4, zero, 19
002398  15004014  dma_cfg zero, zero, r4, 10
00239c  1f422000  addli r4, zero, 20
0023a0  15004014  dma_cfg zero, zero, r4, 10
0023a4  1f522000  addli r4, zero, 21
0023a8  15004014  dma_cfg zero, zero, r4, 10
0023ac  1f622000  addli r4, zero, 22
0023b0  15004014  dma_cfg zero, zero, r4, 10
0023b4  1f722000  addli r4, zero, 23
0023b8  15004014  dma_cfg zero, zero, r4, 10
0023bc  1f023000  addli r4, zero, 24
0023c0  15004014  dma_cfg zero, zero, r4, 10
0023c4  1f123000  addli r4, zero, 25
0023c8  15004014  dma_cfg zero, zero, r4, 10
0023cc  1f223000  addli r4, zero, 26
0023d0  15004014  dma_cfg zero, zero, r4, 10
0023d4  1f323000  addli r4, zero, 27
0023d8  15004014  dma_cfg zero, zero, r4, 10
0023dc  1f423000  addli r4, zero, 28
0023e0  15004014  dma_cfg zero, zero, r4, 10
0023e4  1f523000  addli r4, zero, 29
0023e8  15004014  dma_cfg zero, zero, r4, 10
0023ec  1f623000  addli r4, zero, 30
0023f0  15004014  dma_cfg zero, zero, r4, 10
0023f4  15003015  dma_cfg zero, zero, r19, 10
0023f8  95880800  dma_cfg r17, r17, zero, 0
0023fc  95080002  dma_cfg r17, zero, zero, 1
002400  15000004  dma_cfg zero, zero, zero, 2
002404  950ac006  dma_cfg r21, zero, r12, 3
002408  9f5a0000  addli r21, zero, 5
00240c  15011008  dma_cfg r2, zero, r1, 4
002410  1501100b  dma_cfg r2, zero, r17, 5
002414  15003010  dma_cfg zero, zero, r3, 8
002418  35000000  dma_run zero
00241c  1500100b  dma_cfg zero, zero, r17, 5
002420  15000010  dma_cfg zero, zero, zero, 8
002424  1d900700  unlock r15
002428  7d000900  xsignal r18, 0
00242c  9f00efdf  addli r1, r30, -4112
002430  ebd20000  load.d r[6:7], 0(r1)
002434  9f008fdf  addli r1, r30, -4160
002438  ebd10000  load.d r[4:5], 0(r1)
00243c  a7920200  addli.d r[6:7], r[6:7], 1
002440  93b03204  setlt.sl r1, r[6:7], r[4:5]
002444  37a40004  beq r1, zero, 2312
002448  1f018000  addli r2, zero, 64
00244c  3bb0ec00  bneq r25, r14, 12
002450  9f401000  addli r1, zero, 12
002454  7d900000  xwait r1, 0
002458  e3005f00  loadli.w r1,  40(r30)
00245c  9f01efdf  addli r3, r30, -4112
002460  630c0fe8  loadli.w r24,  -3072(r30)
002464  9f070000  addli r15, zero, 0
002468  73b05100  store.d r[6:7], 0(r3)
00246c  e3414f00  loadli.w r3,  36(r30)
002470  8b901230  div.s r1, r5, r1
002474  1f031000  addli r6, zero, 8
002478  8b903030  div.s r1, r1, r3
00247c  9f010002  addli r3, zero, 256
002480  8b913030  div.s r3, r1, r3
002484  1bb23100  slli r4, r3, 3
002488  9bb18100  slli r3, r3, 8
00248c  8b924518  sub.s r5, r11, r4
002490  8b913018  sub.s r3, r1, r3
002494  8b926240  min.s r5, r5, r6
002498  0b935038  mod.s r6, r1, r5
00249c  8b915130  div.s r3, r3, r5
0024a0  e3000fe0  loadli.w r1,  -4096(r30)
0024a4  0b126210  add.s r4, r4, r6
0024a8  9bb25100  slli r5, r3, 5
0024ac  e74e5fde  storeli.w r5, -4116(r30)
0024b0  b3820128  zext_int2long r[6:7], r3
0024b4  9b315200  slli r3, r4, 5
0024b8  b3030228  zext_int2long r[8:9], r4
0024bc  e74c3fde  storeli.w r3, -4148(r30)
0024c0  97b15203  sll.d r[4:5], r[6:7], r21
0024c4  9f321000  addli r5, zero, 11
0024c8  1f03afdf  addli r6, r30, -4144
0024cc  73307300  store.d r[8:9], 0(r6)
0024d0  97bd5302  sll.d r[28:29], r[8:9], r5
0024d4  9f03bfdf  addli r7, r30, -4136
0024d8  97b21103  sll.d r[6:7], r[4:5], r17
0024dc  ebd10300  load.d r[4:5], 0(r7)
0024e0  9f03cfdf  addli r7, r30, -4128
0024e4  73b05300  store.d r[6:7], 0(r7)
0024e8  17893d02  and.d r[19:20], r[28:29], r[4:5]
0024ec  eb510f01  load.d r[4:5], 16(r30)
0024f0  8ba15110  add.ul r[4:5], r[4:5], r[6:7]
0024f4  9f02ffdf  addli r5, r30, -4104
0024f8  73b03200  store.d r[4:5], 0(r5)
0024fc  9f010000  addli r3, zero, 0
002500  5b310000  j 392
002504  1d000700  lock zero, r14
002508  1f038320  addli r6, r6, 4160
00250c  9f040001  addli r9, zero, 128
002510  1f610000  addli r2, zero, 6
002514  9f250000  addli r11, zero, 2
002518  95880800  dma_cfg r17, r17, zero, 0
00251c  15800204  dma_cfg zero, r5, zero, 2
002520  15039207  dma_cfg r6, r4, r25, 3
002524  9f520000  addli r5, zero, 5
002528  1f230000  addli r6, zero, 2
00252c  1f021000  addli r4, zero, 8
002530  95841c09  dma_cfg r9, r25, r17, 4
002534  9584040b  dma_cfg r9, r9, r16, 5
002538  15004011  dma_cfg zero, zero, r20, 8
00253c  35000000  dma_run zero
002540  1500100b  dma_cfg zero, zero, r17, 5
002544  15000010  dma_cfg zero, zero, zero, 8
002548  1d100700  unlock r14
00254c  1d800200  lock zero, r5
002550  15000014  dma_cfg zero, zero, zero, 10
002554  15001015  dma_cfg zero, zero, r17, 10
002558  15006014  dma_cfg zero, zero, r6, 10
00255c  1500a014  dma_cfg zero, zero, r10, 10
002560  1500e014  dma_cfg zero, zero, r14, 10
002564  15005014  dma_cfg zero, zero, r5, 10
002568  15002014  dma_cfg zero, zero, r2, 10
00256c  1f111000  addli r2, zero, 9
002570  15005015  dma_cfg zero, zero, r21, 10
002574  9f5a0000  addli r21, zero, 5
002578  15004014  dma_cfg zero, zero, r4, 10
00257c  1f321000  addli r4, zero, 11
002580  15002014  dma_cfg zero, zero, r2, 10
002584  1f211000  addli r2, zero, 10
002588  15002014  dma_cfg zero, zero, r2, 10
00258c  1f511000  addli r2, zero, 13
002590  15004014  dma_cfg zero, zero, r4, 10
002594  1f421000  addli r4, zero, 12
002598  15004014  dma_cfg zero, zero, r4, 10
00259c  15002014  dma_cfg zero, zero, r2, 10
0025a0  1f611000  addli r2, zero, 14
0025a4  15002014  dma_cfg zero, zero, r2, 10
0025a8  1f711000  addli r2, zero, 15
0025ac  15002014  dma_cfg zero, zero, r2, 10
0025b0  1f112000  addli r2, zero, 17
0025b4  1500d014  dma_cfg zero, zero, r13, 10
0025b8  15002014  dma_cfg zero, zero, r2, 10
0025bc  1f212000  addli r2, zero, 18
0025c0  15002014  dma_cfg zero, zero, r2, 10
0025c4  1f312000  addli r2, zero, 19
0025c8  15002014  dma_cfg zero, zero, r2, 10
0025cc  1f412000  addli r2, zero, 20
0025d0  15002014  dma_cfg zero, zero, r2, 10
0025d4  1f512000  addli r2, zero, 21
0025d8  15002014  dma_cfg zero, zero, r2, 10
0025dc  1f612000  addli r2, zero, 22
0025e0  15002014  dma_cfg zero, zero, r2, 10
0025e4  1f712000  addli r2, zero, 23
0025e8  15002014  dma_cfg zero, zero, r2, 10
0025ec  1f013000  addli r2, zero, 24
0025f0  15002014  dma_cfg zero, zero, r2, 10
0025f4  1f113000  addli r2, zero, 25
0025f8  15002014  dma_cfg zero, zero, r2, 10
0025fc  1f213000  addli r2, zero, 26
002600  15002014  dma_cfg zero, zero, r2, 10
002604  1f313000  addli r2, zero, 27
002608  15002014  dma_cfg zero, zero, r2, 10
00260c  1f413000  addli r2, zero, 28
002610  15002014  dma_cfg zero, zero, r2, 10
002614  1f513000  addli r2, zero, 29
002618  15002014  dma_cfg zero, zero, r2, 10
00261c  1f613000  addli r2, zero, 30
002620  15002014  dma_cfg zero, zero, r2, 10
002624  1f713000  addli r2, zero, 31
002628  15002014  dma_cfg zero, zero, r2, 10
00262c  1f018000  addli r2, zero, 64
002630  95880800  dma_cfg r17, r17, zero, 0
002634  95080002  dma_cfg r17, zero, zero, 1
002638  15000004  dma_cfg zero, zero, zero, 2
00263c  150d9007  dma_cfg r26, zero, r25, 3
002640  803c0002  core_id r25
002644  95041009  dma_cfg r9, zero, r17, 4
002648  9504000b  dma_cfg r9, zero, r16, 5
00264c  15004011  dma_cfg zero, zero, r20, 8
002650  35000000  dma_run zero
002654  1500100b  dma_cfg zero, zero, r17, 5
002658  15000010  dma_cfg zero, zero, zero, 8
00265c  1d900200  unlock r5
002660  7d000300  xsignal r6, 0
002664  63020ff0  loadli.w r4,  -2048(r30)
002668  e3020ff8  loadli.w r5,  -1024(r30)
00266c  1f120200  addli r4, r4, 1
002670  9f920200  addli r5, r5, 1
002674  67004ff0  storeli.w r4, -2048(r30)
002678  67005ff8  storeli.w r5, -1024(r30)
00267c  9f910100  addli r3, r3, 1
002680  37d6e102  beq r3, r14, 1428
002684  9f970700  addli r15, r15, 1
002688  33820128  zext_int2long r[5:6], r3
00268c  a7040900  addli.d r[10:11], r[19:20], 0
002690  1733e202  sll.d r[7:8], r[5:6], r14
002694  0b2bb311  add.ul r[23:24], r[7:8], r[28:29]
002698  1f73f01f  addli r6, zero, 4095
00269c  33030328  zext_int2long r[7:8], r6
0026a0  13236305  setlt.ul r6, r[7:8], r[23:24]
0026a4  3b200300  bneq r6, zero, 8
0026a8  b3040028  zext_int2long r[10:11], zero
0026ac  0b16fc10  add.s r12, r24, r15
0026b0  9f73f001  addli r7, zero, 255
0026b4  0b93f010  add.s r6, r1, r15
0026b8  0b1d7638  mod.s r26, r12, r7
0026bc  0b187338  mod.s r16, r6, r7
0026c0  1f130300  addli r6, r6, 1
0026c4  9f1c0600  addli r25, r12, 1
0026c8  b3030a28  zext_int2long r[8:9], r20
0026cc  67006fe0  storeli.w r6, -4096(r30)
0026d0  67009fe9  storeli.w r25, -3072(r30)
0026d4  803c0002  core_id r25
0026d8  1b33cd00  slli r6, r26, 12
0026dc  1b38b800  slli r16, r16, 11
0026e0  1f0d0320  addli r26, r6, 4096
0026e4  b785bc00  beq r25, r11, 352
0026e8  bb861c01  bneq r25, r17, 416
0026ec  9f0c8000  addli r25, zero, 64
0026f0  0b329b18  sub.sl r[5:6], r[23:24], r[10:11]
0026f4  173b1b03  sll.d r[23:24], r[23:24], r17
0026f8  9f7a0000  addli r21, zero, 7
0026fc  1f61f001  addli r2, zero, 254
002700  b3840c28  zext_int2long r[10:11], r25
002704  0f129260  div.sl r[5:6], r[5:6], r[10:11]
002708  8b347240  min.sl r[10:11], r[5:6], r[8:9]
00270c  8bb44418  sub.sl r[10:11], r[10:11], r[5:6]
002710  6b528f00  load.d r[5:6], 8(r30)
002714  1f884400  addli r16, r9, 32
002718  1f350000  addli r10, zero, 3
00271c  0b226211  add.ul r[5:6], r[5:6], r[23:24]
002720  7d100500  xwait r10, 0
002724  bf07c1fe  blt.s r2, r12, -544
002728  1f510000  addli r2, zero, 5
00272c  9f640000  addli r9, zero, 6
002730  1d000100  lock zero, r2
002734  15000014  dma_cfg zero, zero, zero, 10
002738  15001015  dma_cfg zero, zero, r17, 10
00273c  1500b014  dma_cfg zero, zero, r11, 10
002740  1500a014  dma_cfg zero, zero, r10, 10
002744  1500e014  dma_cfg zero, zero, r14, 10
002748  15002014  dma_cfg zero, zero, r2, 10
00274c  15009014  dma_cfg zero, zero, r9, 10
002750  9f041000  addli r9, zero, 8
002754  15005015  dma_cfg zero, zero, r21, 10
002758  15009014  dma_cfg zero, zero, r9, 10
00275c  9f141000  addli r9, zero, 9
002760  15009014  dma_cfg zero, zero, r9, 10
002764  9f241000  addli r9, zero, 10
002768  15009014  dma_cfg zero, zero, r9, 10
00276c  9f341000  addli r9, zero, 11
002770  15009014  dma_cfg zero, zero, r9, 10
002774  9f441000  addli r9, zero, 12
002778  15009014  dma_cfg zero, zero, r9, 10
00277c  9f541000  addli r9, zero, 13
002780  15009014  dma_cfg zero, zero, r9, 10
002784  9f641000  addli r9, zero, 14
002788  15009014  dma_cfg zero, zero, r9, 10
00278c  9f741000  addli r9, zero, 15
002790  15009014  dma_cfg zero, zero, r9, 10
002794  9f142000  addli r9, zero, 17
002798  1500d014  dma_cfg zero, zero, r13, 10
00279c  15009014  dma_cfg zero, zero, r9, 10
0027a0  9f242000  addli r9, zero, 18
0027a4  15009014  dma_cfg zero, zero, r9, 10
0027a8  9f342000  addli r9, zero, 19
0027ac  15009014  dma_cfg zero, zero, r9, 10
0027b0  9f442000  addli r9, zero, 20
0027b4  15009014  dma_cfg zero, zero, r9, 10
0027b8  9f542000  addli r9, zero, 21
0027bc  15009014  dma_cfg zero, zero, r9, 10
0027c0  9f642000  addli r9, zero, 22
0027c4  15009014  dma_cfg zero, zero, r9, 10
0027c8  9f742000  addli r9, zero, 23
0027cc  15009014  dma_cfg zero, zero, r9, 10
0027d0  9f043000  addli r9, zero, 24
0027d4  15009014  dma_cfg zero, zero, r9, 10
0027d8  9f143000  addli r9, zero, 25
0027dc  15009014  dma_cfg zero, zero, r9, 10
0027e0  9f243000  addli r9, zero, 26
0027e4  15009014  dma_cfg zero, zero, r9, 10
0027e8  9f343000  addli r9, zero, 27
0027ec  15009014  dma_cfg zero, zero, r9, 10
0027f0  9f443000  addli r9, zero, 28
0027f4  15009014  dma_cfg zero, zero, r9, 10
0027f8  9f543000  addli r9, zero, 29
0027fc  15009014  dma_cfg zero, zero, r9, 10
002800  9f643000  addli r9, zero, 30
002804  15009014  dma_cfg zero, zero, r9, 10
002808  9f743000  addli r9, zero, 31
00280c  15009014  dma_cfg zero, zero, r9, 10
002810  9f040001  addli r9, zero, 128
002814  95880800  dma_cfg r17, r17, zero, 0
002818  95080002  dma_cfg r17, zero, zero, 1
00281c  15000004  dma_cfg zero, zero, zero, 2
002820  150d9007  dma_cfg r26, zero, r25, 3
002824  95041009  dma_cfg r9, zero, r17, 4
002828  9504400b  dma_cfg r9, zero, r20, 5
00282c  15004011  dma_cfg zero, zero, r20, 8
002830  35000000  dma_run zero
002834  1500100b  dma_cfg zero, zero, r17, 5
002838  15000010  dma_cfg zero, zero, zero, 8
00283c  1d100100  unlock r2
002840  db98ffff  j -828
002844  1f220000  addli r4, zero, 2
002848  9f250000  addli r11, zero, 2
00284c  9f062000  addli r13, zero, 16
002850  7d100200  xwait r4, 0
002854  7d900a00  xwait r21, 0
002858  1d000000  lock zero, zero
00285c  01020000  ds_cfg r4, zero, 0
002860  1f022000  addli r4, zero, 16
002864  010a0002  ds_cfg r20, zero, 1
002868  0102001c  ds_cfg r4, zero, 14
00286c  010a001a  ds_cfg r20, zero, 13
002870  21184d02  shuffle_batch r16, r26, r4, 1
002874  1f320000  addli r4, zero, 3
002878  1d100000  unlock zero
00287c  7d000200  xsignal r4, 0
002880  7d000700  xsignal r14, 0
002884  5bbcffff  j -544
002888  63030ff0  loadli.w r6,  -2048(r30)
00288c  e3040ff8  loadli.w r9,  -1024(r30)
002890  1f76f001  addli r12, zero, 255
002894  0b15c338  mod.s r10, r6, r12
002898  0b96c438  mod.s r12, r9, r12
00289c  1f130300  addli r6, r6, 1
0028a0  67006ff0  storeli.w r6, -2048(r30)
0028a4  1b3bb500  slli r22, r10, 11
0028a8  1b33b600  slli r6, r12, 11
0028ac  1f950400  addli r10, r9, 1
0028b0  2b061000  lui r12, 256
0028b4  6700aff8  storeli.w r10, -1024(r30)
0028b8  0b1dc310  add.s r26, r6, r12
0028bc  1f750000  addli r10, zero, 7
0028c0  b7eaac00  beq r25, r10, 696
0028c4  1f650000  addli r10, zero, 6
0028c8  bbebac00  bneq r25, r10, 760
0028cc  1f05ffdf  addli r10, r30, -4104
0028d0  9f7a1000  addli r21, zero, 15
0028d4  1f780000  addli r16, zero, 7
0028d8  6b560500  load.d r[13:14], 0(r10)
0028dc  17325203  sll.d r[5:6], r[5:6], r21
0028e0  1f65f001  addli r10, zero, 254
0028e4  7d100800  xwait r16, 0
0028e8  0b224610  add.ul r[5:6], r[13:14], r[5:6]
0028ec  1f360000  addli r12, zero, 3
0028f0  3f749500  blt.s r10, r9, 284
0028f4  1f550000  addli r10, zero, 5
0028f8  9f640000  addli r9, zero, 6
0028fc  9f162000  addli r13, zero, 17
002900  1d000500  lock zero, r10
002904  15000014  dma_cfg zero, zero, zero, 10
002908  15001015  dma_cfg zero, zero, r17, 10
00290c  1500b014  dma_cfg zero, zero, r11, 10
002910  1500c014  dma_cfg zero, zero, r12, 10
002914  1500e014  dma_cfg zero, zero, r14, 10
002918  1500a014  dma_cfg zero, zero, r10, 10
00291c  15009014  dma_cfg zero, zero, r9, 10
002920  9f041000  addli r9, zero, 8
002924  15000015  dma_cfg zero, zero, r16, 10
002928  15009014  dma_cfg zero, zero, r9, 10
00292c  9f141000  addli r9, zero, 9
002930  15009014  dma_cfg zero, zero, r9, 10
002934  9f241000  addli r9, zero, 10
002938  15009014  dma_cfg zero, zero, r9, 10
00293c  9f341000  addli r9, zero, 11
002940  15009014  dma_cfg zero, zero, r9, 10
002944  9f441000  addli r9, zero, 12
002948  15009014  dma_cfg zero, zero, r9, 10
00294c  9f541000  addli r9, zero, 13
002950  15009014  dma_cfg zero, zero, r9, 10
002954  9f641000  addli r9, zero, 14
002958  15009014  dma_cfg zero, zero, r9, 10
00295c  9f042000  addli r9, zero, 16
002960  15005015  dma_cfg zero, zero, r21, 10
002964  15009014  dma_cfg zero, zero, r9, 10
002968  1500d014  dma_cfg zero, zero, r13, 10
00296c  9f262000  addli r13, zero, 18
002970  1500d014  dma_cfg zero, zero, r13, 10
002974  9f362000  addli r13, zero, 19
002978  1500d014  dma_cfg zero, zero, r13, 10
00297c  9f462000  addli r13, zero, 20
002980  1500d014  dma_cfg zero, zero, r13, 10
002984  9f562000  addli r13, zero, 21
002988  1500d014  dma_cfg zero, zero, r13, 10
00298c  9f662000  addli r13, zero, 22
002990  1500d014  dma_cfg zero, zero, r13, 10
002994  9f762000  addli r13, zero, 23
002998  1500d014  dma_cfg zero, zero, r13, 10
00299c  9f063000  addli r13, zero, 24
0029a0  1500d014  dma_cfg zero, zero, r13, 10
0029a4  9f163000  addli r13, zero, 25
0029a8  1500d014  dma_cfg zero, zero, r13, 10
0029ac  9f263000  addli r13, zero, 26
0029b0  1500d014  dma_cfg zero, zero, r13, 10
0029b4  9f363000  addli r13, zero, 27
0029b8  1500d014  dma_cfg zero, zero, r13, 10
0029bc  9f463000  addli r13, zero, 28
0029c0  1500d014  dma_cfg zero, zero, r13, 10
0029c4  9f563000  addli r13, zero, 29
0029c8  1500d014  dma_cfg zero, zero, r13, 10
0029cc  9f663000  addli r13, zero, 30
0029d0  1500d014  dma_cfg zero, zero, r13, 10
0029d4  9f763000  addli r13, zero, 31
0029d8  1500d014  dma_cfg zero, zero, r13, 10
0029dc  95880800  dma_cfg r17, r17, zero, 0
0029e0  95080002  dma_cfg r17, zero, zero, 1
0029e4  15000004  dma_cfg zero, zero, zero, 2
0029e8  150d2006  dma_cfg r26, zero, r2, 3
0029ec  1f010001  addli r2, zero, 128
0029f0  15011009  dma_cfg r2, zero, r17, 4
0029f4  1501900a  dma_cfg r2, zero, r9, 5
0029f8  15000010  dma_cfg zero, zero, zero, 8
0029fc  35000000  dma_run zero
002a00  1500100b  dma_cfg zero, zero, r17, 5
002a04  15000010  dma_cfg zero, zero, zero, 8
002a08  1d100500  unlock r10
002a0c  2b011000  lui r2, 256
002a10  1d000700  lock zero, r14
002a14  1f0b0001  addli r22, zero, 128
002a18  1f650000  addli r10, zero, 6
002a1c  9f062000  addli r13, zero, 16
002a20  95880800  dma_cfg r17, r17, zero, 0
002a24  9b140104  ori r9, r2, 64
002a28  15800204  dma_cfg zero, r5, zero, 2
002a2c  1f010010  addli r2, zero, 2048
002a30  0b139310  add.s r6, r6, r9
002a34  9f048000  addli r9, zero, 64
002a38  15039206  dma_cfg r6, r4, r9, 3
002a3c  9f022000  addli r5, zero, 16
002a40  1f530000  addli r6, zero, 5
002a44  1f021000  addli r4, zero, 8
002a48  158b1409  dma_cfg r22, r9, r17, 4
002a4c  150b510a  dma_cfg r22, r2, r5, 5
002a50  1f111000  addli r2, zero, 9
002a54  15000010  dma_cfg zero, zero, zero, 8
002a58  35000000  dma_run zero
002a5c  1500100b  dma_cfg zero, zero, r17, 5
002a60  15000010  dma_cfg zero, zero, zero, 8
002a64  1d100700  unlock r14
002a68  1d000300  lock zero, r6
002a6c  15000014  dma_cfg zero, zero, zero, 10
002a70  15001015  dma_cfg zero, zero, r17, 10
002a74  1500b014  dma_cfg zero, zero, r11, 10
002a78  1500c014  dma_cfg zero, zero, r12, 10
002a7c  1500e014  dma_cfg zero, zero, r14, 10
002a80  15006014  dma_cfg zero, zero, r6, 10
002a84  1500a014  dma_cfg zero, zero, r10, 10
002a88  15000015  dma_cfg zero, zero, r16, 10
002a8c  15004014  dma_cfg zero, zero, r4, 10
002a90  1f321000  addli r4, zero, 11
002a94  15002014  dma_cfg zero, zero, r2, 10
002a98  1f211000  addli r2, zero, 10
002a9c  15002014  dma_cfg zero, zero, r2, 10
002aa0  1f511000  addli r2, zero, 13
002aa4  15004014  dma_cfg zero, zero, r4, 10
002aa8  1f421000  addli r4, zero, 12
002aac  15004014  dma_cfg zero, zero, r4, 10
002ab0  15002014  dma_cfg zero, zero, r2, 10
002ab4  1f611000  addli r2, zero, 14
002ab8  15002014  dma_cfg zero, zero, r2, 10
002abc  1f112000  addli r2, zero, 17
002ac0  15005015  dma_cfg zero, zero, r21, 10
002ac4  9f5a0000  addli r21, zero, 5
002ac8  15005014  dma_cfg zero, zero, r5, 10
002acc  15002014  dma_cfg zero, zero, r2, 10
002ad0  1f212000  addli r2, zero, 18
002ad4  15002014  dma_cfg zero, zero, r2, 10
002ad8  1f312000  addli r2, zero, 19
002adc  15002014  dma_cfg zero, zero, r2, 10
002ae0  1f412000  addli r2, zero, 20
002ae4  15002014  dma_cfg zero, zero, r2, 10
002ae8  1f512000  addli r2, zero, 21
002aec  15002014  dma_cfg zero, zero, r2, 10
002af0  1f612000  addli r2, zero, 22
002af4  15002014  dma_cfg zero, zero, r2, 10
002af8  1f712000  addli r2, zero, 23
002afc  15002014  dma_cfg zero, zero, r2, 10
002b00  1f013000  addli r2, zero, 24
002b04  15002014  dma_cfg zero, zero, r2, 10
002b08  1f113000  addli r2, zero, 25
002b0c  15002014  dma_cfg zero, zero, r2, 10
002b10  1f213000  addli r2, zero, 26
002b14  15002014  dma_cfg zero, zero, r2, 10
002b18  1f313000  addli r2, zero, 27
002b1c  15002014  dma_cfg zero, zero, r2, 10
002b20  1f413000  addli r2, zero, 28
002b24  15002014  dma_cfg zero, zero, r2, 10
002b28  1f513000  addli r2, zero, 29
002b2c  15002014  dma_cfg zero, zero, r2, 10
002b30  1f613000  addli r2, zero, 30
002b34  15002014  dma_cfg zero, zero, r2, 10
002b38  1f713000  addli r2, zero, 31
002b3c  15002014  dma_cfg zero, zero, r2, 10
002b40  1f018000  addli r2, zero, 64
002b44  95880800  dma_cfg r17, r17, zero, 0
002b48  95080002  dma_cfg r17, zero, zero, 1
002b4c  15000004  dma_cfg zero, zero, zero, 2
002b50  150d9006  dma_cfg r26, zero, r9, 3
002b54  150b1009  dma_cfg r22, zero, r17, 4
002b58  150b500a  dma_cfg r22, zero, r5, 5
002b5c  15000010  dma_cfg zero, zero, zero, 8
002b60  35000000  dma_run zero
002b64  1500100b  dma_cfg zero, zero, r17, 5
002b68  15000010  dma_cfg zero, zero, zero, 8
002b6c  1d100300  unlock r6
002b70  7d000500  xsignal r10, 0
002b74  5b61ffff  j -1272
002b78  1f620000  addli r4, zero, 6
002b7c  9f062000  addli r13, zero, 16
002b80  7d100200  xwait r4, 0
002b84  1f121000  addli r4, zero, 9
002b88  7d100200  xwait r4, 0
002b8c  1d000000  lock zero, zero
002b90  1f022000  addli r4, zero, 16
002b94  81050000  ds_cfg r11, zero, 0
002b98  010a0002  ds_cfg r20, zero, 1
002b9c  0102001c  ds_cfg r4, zero, 14
002ba0  010a001a  ds_cfg r20, zero, 13
002ba4  410b4d04  shuffle_coa r22, r26, r4, 2
002ba8  1f720000  addli r4, zero, 7
002bac  1d100000  unlock zero
002bb0  7d000200  xsignal r4, 0
002bb4  1f021000  addli r4, zero, 8
002bb8  7d000200  xsignal r4, 0
002bbc  5b58ffff  j -1344
002bc0  bba0ec00  bneq r25, r14, 40
002bc4  1f021000  addli r4, zero, 8
002bc8  7d100700  xwait r14, 0
002bcc  7d100200  xwait r4, 0
002bd0  1d800800  lock zero, r17
002bd4  098a4601  mm_cfg r20, r13, r20, 0
002bd8  89881805  mm_cfg r17, r17, r17, 2
002bdc  37e00700  beq r15, zero, 24
002be0  29106811  mm_acc zero, r16, r22, 8
002be4  db020000  j 20
002be8  9f910100  addli r3, r3, 1
002bec  3beae1fc  bneq r3, r14, -1384
002bf0  5b060000  j 48
002bf4  29006811  mm zero, r16, r22, 8
002bf8  9f910100  addli r3, r3, 1
002bfc  1f121000  addli r4, zero, 9
002c00  1d900800  unlock r17
002c04  7d800a00  xsignal r21, 0
002c08  7d000200  xsignal r4, 0
002c0c  bbe9e1fc  bneq r3, r14, -1416
002c10  5b010000  j 8
002c14  3bb0ec00  bneq r25, r14, 12
002c18  9f201000  addli r1, zero, 10
002c1c  7d800000  xsignal r1, 0
002c20  37c35c01  beq r25, r21, 208
002c24  e340dfdf  loadli.w r1,  -4116(r30)
002c28  1f068000  addli r12, zero, 64
002c2c  b3810028  zext_int2long r[4:5], r1
002c30  9f00c007  addli r1, zero, 992
002c34  b3820028  zext_int2long r[6:7], r1
002c38  8ba25140  min.ul r[6:7], r[4:5], r[6:7]
002c3c  a7824200  addli.d r[6:7], r[6:7], 32
002c40  8ba23248  max.ul r[6:7], r[6:7], r[4:5]
002c44  8bb13218  sub.sl r[4:5], r[6:7], r[4:5]
002c48  8ba47140  min.ul r[10:11], r[4:5], r[8:9]
002c4c  b7851cfb  beq r25, r17, -2720
002c50  3bff0cfa  bneq r25, zero, -2084
002c54  e3409fdf  loadli.w r1,  -4148(r30)
002c58  9f02afdf  addli r5, r30, -4144
002c5c  6b598f01  load.d r[19:20], 24(r30)
002c60  9f5a0000  addli r21, zero, 5
002c64  b3910028  sext_int2long r[4:5], r1
002c68  ebd00200  load.d r[2:3], 0(r5)
002c6c  8bb77140  min.sl r[16:17], r[4:5], r[8:9]
002c70  97b2d002  sll.d r[6:7], r[2:3], r13
002c74  9f301000  addli r1, zero, 11
002c78  a7874700  addli.d r[16:17], r[16:17], 32
002c7c  8b225910  add.ul r[6:7], r[19:20], r[6:7]
002c80  1f09cfdf  addli r18, r30, -4128
002c84  7d900000  xwait r1, 0
002c88  8bb73748  max.sl r[16:17], r[16:17], r[4:5]
002c8c  eb500900  load.d r[2:3], 0(r18)
002c90  8bb13718  sub.sl r[4:5], r[16:17], r[4:5]
002c94  8ba21210  add.ul r[6:7], r[6:7], r[2:3]
002c98  1f510000  addli r2, zero, 5
002c9c  9ff03400  addli r1, r9, 31
002ca0  8bb17140  min.sl r[4:5], r[4:5], r[8:9]
002ca4  1d000100  lock zero, r2
002ca8  9bc05000  srli r1, r1, 5
002cac  95880800  dma_cfg r17, r17, zero, 0
002cb0  15800802  dma_cfg zero, r17, zero, 1
002cb4  15030004  dma_cfg r6, zero, zero, 2
002cb8  9502c606  dma_cfg r5, r12, r12, 3
002cbc  1f030001  addli r6, zero, 128
002cc0  9bb21400  slli r5, r9, 1
002cc4  15061308  dma_cfg r12, r6, r1, 4
002cc8  9b80e203  andi r1, r5, 62
002ccc  9f020010  addli r5, zero, 2048
002cd0  9502330a  dma_cfg r5, r6, r3, 5
002cd4  15001010  dma_cfg zero, zero, r1, 8
002cd8  35000000  dma_run zero
002cdc  1500100b  dma_cfg zero, zero, r17, 5
002ce0  9f401000  addli r1, zero, 12
002ce4  15000010  dma_cfg zero, zero, zero, 8
002ce8  1d100100  unlock r2
002cec  5b0b0000  j 88
002cf0  1f211000  addli r2, zero, 10
002cf4  9f000000  addli r1, zero, 0
002cf8  9f010020  addli r3, zero, 4096
002cfc  7d100100  xwait r2, 0
002d00  1f511000  addli r2, zero, 13
002d04  7d100100  xwait r2, 0
002d08  1d800500  lock zero, r11
002d0c  2b01803f  lui r2, 260096
002d10  0d000002  ew_cfg zero, zero, zero, 1
002d14  0d110100  ewcoeff_cfg r2, r2, zero, 0
002d18  1f713000  addli r2, zero, 31
002d1c  0d000104  ew_cfg zero, r2, zero, 2
002d20  8d080006  ew_cfg r17, zero, zero, 3
002d24  63417fdf  loadli.w r2,  -4164(r30)
002d28  ad802000  dsmadd r1, r1, r2, 0
002d2c  9f800001  addli r1, r1, 128
002d30  bbef30fe  bneq r1, r3, -8
002d34  9f301000  addli r1, zero, 11
002d38  1d900500  unlock r11
002d3c  7d800000  xsignal r1, 0
002d40  9f601000  addli r1, zero, 14
002d44  7d800000  xsignal r1, 0
002d48  dbdcfeff  j -2332
002d4c  7d000000  xsignal zero, 0
002d50  bbe00c00  bneq r25, zero, 56
002d54  9f200000  addli r1, zero, 2
002d58  7d100000  xwait zero, 0
002d5c  7d100000  xwait zero, 0
002d60  7d100000  xwait zero, 0
002d64  7d100000  xwait zero, 0
002d68  7d100000  xwait zero, 0
002d6c  7d100000  xwait zero, 0
002d70  7d100000  xwait zero, 0
002d74  7d100000  xwait zero, 0
002d78  1d800000  lock zero, r1
002d7c  0d000020  ew_cfg zero, zero, zero, 16
002d80  1d900000  unlock r1
002d84  7d400000  xsignal_mode_cfg zero
002d88  9f8e9e20  addli sp, sp, 4168
002d8c  00a00300  mfence { lm, sm, gm }
002d90  00100000  exit
002d94  00100000  exit
002d98  00100000  exit
002d9c  00100000  exit
002da0  00100000  exit
002da4  00100000  exit
002da8  00100000  exit
002dac  00100000  exit
002db0  00100000  exit
002db4  00100000  exit
002db8  00100000  exit
002dbc  00100000  exit
002dc0  00100000  exit
002dc4  00100000  exit
002dc8  00100000  exit
002dcc  00100000  exit
002dd0  00100000  exit
002dd4  00100000  exit
002dd8  00100000  exit
002ddc  00100000  exit
002de0  00100000  exit
002de4  00100000  exit
002de8  00100000  exit
002dec  00100000  exit
002df0  00100000  exit
002df4  00100000  exit
002df8  00100000  exit
002dfc  00100000  exit
002e00  00100000  exit
002e04  00100000  exit
002e08  00100000  exit
002e0c  00100000  exit
002e10  00100000  exit
002e14  00100000  exit
002e18  00100000  exit
002e1c  00100000  exit
002e20  00100000  exit
002e24  00100000  exit
002e28  00100000  exit
002e2c  00100000  exit
002e30  00100000  exit
002e34  00100000  exit
002e38  00100000  exit
002e3c  00100000  exit
002e40  00100000  exit
002e44  00100000  exit
002e48  00100000  exit
002e4c  00100000  exit
002e50  00100000  exit
002e54  00100000  exit
002e58  00100000  exit
002e5c  00100000  exit
002e60  00100000  exit
002e64  00100000  exit
002e68  00100000  exit
002e6c  00100000  exit
002e70  00100000  exit
002e74  00100000  exit
002e78  00100000  exit
002e7c  00100000  exit
002e80  00100000  exit
002e84  00100000  exit
002e88  00100000  exit
002e8c  00100000  exit
002e90  00100000  exit
002e94  00100000  exit
002e98  00100000  exit
002e9c  00100000  exit
002ea0  00100000  exit
002ea4  00100000  exit
002ea8  00100000  exit
002eac  00100000  exit
002eb0  00100000  exit
002eb4  00100000  exit
002eb8  00100000  exit
002ebc  00100000  exit
002ec0  00100000  exit
002ec4  00100000  exit
002ec8  00100000  exit
002ecc  00100000  exit
002ed0  00100000  exit
002ed4  00100000  exit
002ed8  00100000  exit
002edc  00100000  exit
002ee0  00100000  exit
002ee4  00100000  exit
002ee8  00100000  exit
002eec  00100000  exit
002ef0  00100000  exit
002ef4  00100000  exit
002ef8  00100000  exit
002efc  00100000  exit
002f00  00100000  exit
002f04  00100000  exit
002f08  00100000  exit
002f0c  00100000  exit
002f10  00100000  exit
002f14  00100000  exit
002f18  00100000  exit
002f1c  00100000  exit
002f20  00100000  exit
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
