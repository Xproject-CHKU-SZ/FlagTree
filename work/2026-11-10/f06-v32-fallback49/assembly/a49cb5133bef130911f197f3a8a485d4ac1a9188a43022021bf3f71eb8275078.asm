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
0000b4  9f8e0eeb  addli sp, sp, -2688
0000b8  9f100000  addli r1, zero, 1
0000bc  00390002  core_id r18
0000c0  1f8f8e14  addli r30, sp, 2624
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600900  beq r18, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  db3b0100  j 2524
0000e0  1f210000  addli r2, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  abf1ffff  lui r3, 1048575
0000ec  1d000100  lock zero, r2
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b90f1ff  ori r1, r3, 4095
0000f8  1d100100  unlock r2
0000fc  1f511000  addli r2, zero, 13
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
000614  1f710000  addli r2, zero, 7
000618  7d800000  xsignal r1, 0
00061c  7d800000  xsignal r1, 0
000620  7d800000  xsignal r1, 0
000624  7d800000  xsignal r1, 0
000628  7d800000  xsignal r1, 0
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
000898  9f202000  addli r1, zero, 18
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
000a8c  1f012000  addli r2, zero, 16
000a90  7d800000  xsignal r1, 0
000a94  7d800000  xsignal r1, 0
000a98  7d800000  xsignal r1, 0
000a9c  7d800000  xsignal r1, 0
000aa0  7d800000  xsignal r1, 0
000aa4  7d000100  xsignal r2, 0
000aa8  7d000100  xsignal r2, 0
000aac  7d000100  xsignal r2, 0
000ab0  7d000100  xsignal r2, 0
000ab4  7d000100  xsignal r2, 0
000ab8  e3004f00  loadli.w r1,  32(r30)
000abc  63414f00  loadli.w r2,  36(r30)
000ac0  00d20002  load_param_i r4, 1
000ac4  e3015f00  loadli.w r3,  40(r30)
000ac8  2bf3ffff  lui r6, 1048575
000acc  1f048feb  addli r8, r30, -2624
000ad0  e70e0ffe  storeli.w zero, -24(r30)
000ad4  670d0ffe  storeli.w zero, -48(r30)
000ad8  e74d0ffa  storeli.w zero, -548(r30)
000adc  e7050ff6  storeli.w zero, -1192(r30)
000ae0  e7060ff2  storeli.w zero, -1688(r30)
000ae4  67460fec  storeli.w zero, -2460(r30)
000ae8  8b101120  mul.s r1, r2, r1
000aec  1f010200  addli r2, r4, 0
000af0  0b913050  fmac.s r2, r1, r3
000af4  8b923020  mul.s r5, r1, r3
000af8  1f71f1ff  addli r2, r2, -1
000afc  0b114130  div.s r2, r2, r4
000b00  00520002  load_param_i r4, 0
000b04  8b104120  mul.s r1, r2, r4
000b08  0b114150  fmac.s r2, r2, r4
000b0c  abf1ffff  lui r3, 1048575
000b10  73303400  store.d r[4:5], 0(r8)
000b14  9b11f3ff  ori r3, r6, 4095
000b18  0b115140  min.s r2, r2, r5
000b1c  e74e3ffe  storeli.w r3, -20(r30)
000b20  670f3ffe  storeli.w r3, -16(r30)
000b24  674f3ffe  storeli.w r3, -12(r30)
000b28  e70f3ffe  storeli.w r3, -8(r30)
000b2c  e74f3ffe  storeli.w r3, -4(r30)
000b30  674d3ffe  storeli.w r3, -44(r30)
000b34  e70d3ffe  storeli.w r3, -40(r30)
000b38  e74d3ffe  storeli.w r3, -36(r30)
000b3c  670e3ffe  storeli.w r3, -32(r30)
000b40  674e3ffe  storeli.w r3, -28(r30)
000b44  670e3ffa  storeli.w r3, -544(r30)
000b48  674e3ffa  storeli.w r3, -540(r30)
000b4c  e70e3ffa  storeli.w r3, -536(r30)
000b50  e74e3ffa  storeli.w r3, -532(r30)
000b54  670f3ffa  storeli.w r3, -528(r30)
000b58  674f3ffa  storeli.w r3, -524(r30)
000b5c  e70f3ffa  storeli.w r3, -520(r30)
000b60  e74f3ffa  storeli.w r3, -516(r30)
000b64  67003ffc  storeli.w r3, -512(r30)
000b68  67403ffc  storeli.w r3, -508(r30)
000b6c  e7003ffc  storeli.w r3, -504(r30)
000b70  e7403ffc  storeli.w r3, -500(r30)
000b74  67013ffc  storeli.w r3, -496(r30)
000b78  67413ffc  storeli.w r3, -492(r30)
000b7c  e7013ffc  storeli.w r3, -488(r30)
000b80  e7413ffc  storeli.w r3, -484(r30)
000b84  67023ffc  storeli.w r3, -480(r30)
000b88  67423ffc  storeli.w r3, -476(r30)
000b8c  e7023ffc  storeli.w r3, -472(r30)
000b90  e7423ffc  storeli.w r3, -468(r30)
000b94  67033ffc  storeli.w r3, -464(r30)
000b98  67433ffc  storeli.w r3, -460(r30)
000b9c  e7033ffc  storeli.w r3, -456(r30)
000ba0  e7433ffc  storeli.w r3, -452(r30)
000ba4  67043ffc  storeli.w r3, -448(r30)
000ba8  67443ffc  storeli.w r3, -444(r30)
000bac  e7043ffc  storeli.w r3, -440(r30)
000bb0  e7443ffc  storeli.w r3, -436(r30)
000bb4  67053ffc  storeli.w r3, -432(r30)
000bb8  67453ffc  storeli.w r3, -428(r30)
000bbc  e7053ffc  storeli.w r3, -424(r30)
000bc0  e7453ffc  storeli.w r3, -420(r30)
000bc4  67063ffc  storeli.w r3, -416(r30)
000bc8  67463ffc  storeli.w r3, -412(r30)
000bcc  e7063ffc  storeli.w r3, -408(r30)
000bd0  e7463ffc  storeli.w r3, -404(r30)
000bd4  67073ffc  storeli.w r3, -400(r30)
000bd8  67473ffc  storeli.w r3, -396(r30)
000bdc  e7073ffc  storeli.w r3, -392(r30)
000be0  e7473ffc  storeli.w r3, -388(r30)
000be4  67083ffc  storeli.w r3, -384(r30)
000be8  67483ffc  storeli.w r3, -380(r30)
000bec  e7083ffc  storeli.w r3, -376(r30)
000bf0  e7483ffc  storeli.w r3, -372(r30)
000bf4  67093ffc  storeli.w r3, -368(r30)
000bf8  67493ffc  storeli.w r3, -364(r30)
000bfc  e7093ffc  storeli.w r3, -360(r30)
000c00  e7493ffc  storeli.w r3, -356(r30)
000c04  670a3ffc  storeli.w r3, -352(r30)
000c08  674a3ffc  storeli.w r3, -348(r30)
000c0c  e70a3ffc  storeli.w r3, -344(r30)
000c10  e74a3ffc  storeli.w r3, -340(r30)
000c14  670b3ffc  storeli.w r3, -336(r30)
000c18  674b3ffc  storeli.w r3, -332(r30)
000c1c  e70b3ffc  storeli.w r3, -328(r30)
000c20  e74b3ffc  storeli.w r3, -324(r30)
000c24  670c3ffc  storeli.w r3, -320(r30)
000c28  674c3ffc  storeli.w r3, -316(r30)
000c2c  e70c3ffc  storeli.w r3, -312(r30)
000c30  e74c3ffc  storeli.w r3, -308(r30)
000c34  670d3ffc  storeli.w r3, -304(r30)
000c38  674d3ffc  storeli.w r3, -300(r30)
000c3c  e70d3ffc  storeli.w r3, -296(r30)
000c40  e74d3ffc  storeli.w r3, -292(r30)
000c44  670e3ffc  storeli.w r3, -288(r30)
000c48  674e3ffc  storeli.w r3, -284(r30)
000c4c  e70e3ffc  storeli.w r3, -280(r30)
000c50  e74e3ffc  storeli.w r3, -276(r30)
000c54  670f3ffc  storeli.w r3, -272(r30)
000c58  674f3ffc  storeli.w r3, -268(r30)
000c5c  e70f3ffc  storeli.w r3, -264(r30)
000c60  e74f3ffc  storeli.w r3, -260(r30)
000c64  67003ffe  storeli.w r3, -256(r30)
000c68  67403ffe  storeli.w r3, -252(r30)
000c6c  e7003ffe  storeli.w r3, -248(r30)
000c70  e7403ffe  storeli.w r3, -244(r30)
000c74  67013ffe  storeli.w r3, -240(r30)
000c78  67413ffe  storeli.w r3, -236(r30)
000c7c  e7013ffe  storeli.w r3, -232(r30)
000c80  e7413ffe  storeli.w r3, -228(r30)
000c84  67023ffe  storeli.w r3, -224(r30)
000c88  67423ffe  storeli.w r3, -220(r30)
000c8c  e7023ffe  storeli.w r3, -216(r30)
000c90  e7423ffe  storeli.w r3, -212(r30)
000c94  67033ffe  storeli.w r3, -208(r30)
000c98  67433ffe  storeli.w r3, -204(r30)
000c9c  e7033ffe  storeli.w r3, -200(r30)
000ca0  e7433ffe  storeli.w r3, -196(r30)
000ca4  67043ffe  storeli.w r3, -192(r30)
000ca8  67443ffe  storeli.w r3, -188(r30)
000cac  e7043ffe  storeli.w r3, -184(r30)
000cb0  e7443ffe  storeli.w r3, -180(r30)
000cb4  67053ffe  storeli.w r3, -176(r30)
000cb8  67453ffe  storeli.w r3, -172(r30)
000cbc  e7053ffe  storeli.w r3, -168(r30)
000cc0  e7453ffe  storeli.w r3, -164(r30)
000cc4  67063ffe  storeli.w r3, -160(r30)
000cc8  67463ffe  storeli.w r3, -156(r30)
000ccc  e7063ffe  storeli.w r3, -152(r30)
000cd0  e7463ffe  storeli.w r3, -148(r30)
000cd4  67073ffe  storeli.w r3, -144(r30)
000cd8  67473ffe  storeli.w r3, -140(r30)
000cdc  e7073ffe  storeli.w r3, -136(r30)
000ce0  e7473ffe  storeli.w r3, -132(r30)
000ce4  67083ffe  storeli.w r3, -128(r30)
000ce8  67483ffe  storeli.w r3, -124(r30)
000cec  e7083ffe  storeli.w r3, -120(r30)
000cf0  e7483ffe  storeli.w r3, -116(r30)
000cf4  67093ffe  storeli.w r3, -112(r30)
000cf8  67493ffe  storeli.w r3, -108(r30)
000cfc  e7093ffe  storeli.w r3, -104(r30)
000d00  e7493ffe  storeli.w r3, -100(r30)
000d04  670a3ffe  storeli.w r3, -96(r30)
000d08  674a3ffe  storeli.w r3, -92(r30)
000d0c  e70a3ffe  storeli.w r3, -88(r30)
000d10  e74a3ffe  storeli.w r3, -84(r30)
000d14  670b3ffe  storeli.w r3, -80(r30)
000d18  674b3ffe  storeli.w r3, -76(r30)
000d1c  e70b3ffe  storeli.w r3, -72(r30)
000d20  e74b3ffe  storeli.w r3, -68(r30)
000d24  670c3ffe  storeli.w r3, -64(r30)
000d28  674c3ffe  storeli.w r3, -60(r30)
000d2c  e70c3ffe  storeli.w r3, -56(r30)
000d30  e74c3ffe  storeli.w r3, -52(r30)
000d34  e7453ff6  storeli.w r3, -1188(r30)
000d38  67063ff6  storeli.w r3, -1184(r30)
000d3c  67463ff6  storeli.w r3, -1180(r30)
000d40  e7063ff6  storeli.w r3, -1176(r30)
000d44  e7463ff6  storeli.w r3, -1172(r30)
000d48  67073ff6  storeli.w r3, -1168(r30)
000d4c  67473ff6  storeli.w r3, -1164(r30)
000d50  e7073ff6  storeli.w r3, -1160(r30)
000d54  e7473ff6  storeli.w r3, -1156(r30)
000d58  67083ff6  storeli.w r3, -1152(r30)
000d5c  67483ff6  storeli.w r3, -1148(r30)
000d60  e7083ff6  storeli.w r3, -1144(r30)
000d64  e7483ff6  storeli.w r3, -1140(r30)
000d68  67093ff6  storeli.w r3, -1136(r30)
000d6c  67493ff6  storeli.w r3, -1132(r30)
000d70  e7093ff6  storeli.w r3, -1128(r30)
000d74  e7493ff6  storeli.w r3, -1124(r30)
000d78  670a3ff6  storeli.w r3, -1120(r30)
000d7c  674a3ff6  storeli.w r3, -1116(r30)
000d80  e70a3ff6  storeli.w r3, -1112(r30)
000d84  e74a3ff6  storeli.w r3, -1108(r30)
000d88  670b3ff6  storeli.w r3, -1104(r30)
000d8c  674b3ff6  storeli.w r3, -1100(r30)
000d90  e70b3ff6  storeli.w r3, -1096(r30)
000d94  e74b3ff6  storeli.w r3, -1092(r30)
000d98  670c3ff6  storeli.w r3, -1088(r30)
000d9c  674c3ff6  storeli.w r3, -1084(r30)
000da0  e70c3ff6  storeli.w r3, -1080(r30)
000da4  e74c3ff6  storeli.w r3, -1076(r30)
000da8  670d3ff6  storeli.w r3, -1072(r30)
000dac  674d3ff6  storeli.w r3, -1068(r30)
000db0  e70d3ff6  storeli.w r3, -1064(r30)
000db4  e74d3ff6  storeli.w r3, -1060(r30)
000db8  670e3ff6  storeli.w r3, -1056(r30)
000dbc  674e3ff6  storeli.w r3, -1052(r30)
000dc0  e70e3ff6  storeli.w r3, -1048(r30)
000dc4  e74e3ff6  storeli.w r3, -1044(r30)
000dc8  670f3ff6  storeli.w r3, -1040(r30)
000dcc  674f3ff6  storeli.w r3, -1036(r30)
000dd0  e70f3ff6  storeli.w r3, -1032(r30)
000dd4  e74f3ff6  storeli.w r3, -1028(r30)
000dd8  67003ff8  storeli.w r3, -1024(r30)
000ddc  67403ff8  storeli.w r3, -1020(r30)
000de0  e7003ff8  storeli.w r3, -1016(r30)
000de4  e7403ff8  storeli.w r3, -1012(r30)
000de8  67013ff8  storeli.w r3, -1008(r30)
000dec  67413ff8  storeli.w r3, -1004(r30)
000df0  e7013ff8  storeli.w r3, -1000(r30)
000df4  e7413ff8  storeli.w r3, -996(r30)
000df8  67023ff8  storeli.w r3, -992(r30)
000dfc  67423ff8  storeli.w r3, -988(r30)
000e00  e7023ff8  storeli.w r3, -984(r30)
000e04  e7423ff8  storeli.w r3, -980(r30)
000e08  67033ff8  storeli.w r3, -976(r30)
000e0c  67433ff8  storeli.w r3, -972(r30)
000e10  e7033ff8  storeli.w r3, -968(r30)
000e14  e7433ff8  storeli.w r3, -964(r30)
000e18  67043ff8  storeli.w r3, -960(r30)
000e1c  67443ff8  storeli.w r3, -956(r30)
000e20  e7043ff8  storeli.w r3, -952(r30)
000e24  e7443ff8  storeli.w r3, -948(r30)
000e28  67053ff8  storeli.w r3, -944(r30)
000e2c  67453ff8  storeli.w r3, -940(r30)
000e30  e7053ff8  storeli.w r3, -936(r30)
000e34  e7453ff8  storeli.w r3, -932(r30)
000e38  67063ff8  storeli.w r3, -928(r30)
000e3c  67463ff8  storeli.w r3, -924(r30)
000e40  e7063ff8  storeli.w r3, -920(r30)
000e44  e7463ff8  storeli.w r3, -916(r30)
000e48  67073ff8  storeli.w r3, -912(r30)
000e4c  67473ff8  storeli.w r3, -908(r30)
000e50  e7073ff8  storeli.w r3, -904(r30)
000e54  e7473ff8  storeli.w r3, -900(r30)
000e58  67083ff8  storeli.w r3, -896(r30)
000e5c  67483ff8  storeli.w r3, -892(r30)
000e60  e7083ff8  storeli.w r3, -888(r30)
000e64  e7483ff8  storeli.w r3, -884(r30)
000e68  67093ff8  storeli.w r3, -880(r30)
000e6c  67493ff8  storeli.w r3, -876(r30)
000e70  e7093ff8  storeli.w r3, -872(r30)
000e74  e7493ff8  storeli.w r3, -868(r30)
000e78  670a3ff8  storeli.w r3, -864(r30)
000e7c  674a3ff8  storeli.w r3, -860(r30)
000e80  e70a3ff8  storeli.w r3, -856(r30)
000e84  e74a3ff8  storeli.w r3, -852(r30)
000e88  670b3ff8  storeli.w r3, -848(r30)
000e8c  674b3ff8  storeli.w r3, -844(r30)
000e90  e70b3ff8  storeli.w r3, -840(r30)
000e94  e74b3ff8  storeli.w r3, -836(r30)
000e98  670c3ff8  storeli.w r3, -832(r30)
000e9c  674c3ff8  storeli.w r3, -828(r30)
000ea0  e70c3ff8  storeli.w r3, -824(r30)
000ea4  e74c3ff8  storeli.w r3, -820(r30)
000ea8  670d3ff8  storeli.w r3, -816(r30)
000eac  674d3ff8  storeli.w r3, -812(r30)
000eb0  e70d3ff8  storeli.w r3, -808(r30)
000eb4  e74d3ff8  storeli.w r3, -804(r30)
000eb8  670e3ff8  storeli.w r3, -800(r30)
000ebc  674e3ff8  storeli.w r3, -796(r30)
000ec0  e70e3ff8  storeli.w r3, -792(r30)
000ec4  e74e3ff8  storeli.w r3, -788(r30)
000ec8  670f3ff8  storeli.w r3, -784(r30)
000ecc  674f3ff8  storeli.w r3, -780(r30)
000ed0  e70f3ff8  storeli.w r3, -776(r30)
000ed4  e74f3ff8  storeli.w r3, -772(r30)
000ed8  67003ffa  storeli.w r3, -768(r30)
000edc  67403ffa  storeli.w r3, -764(r30)
000ee0  e7003ffa  storeli.w r3, -760(r30)
000ee4  e7403ffa  storeli.w r3, -756(r30)
000ee8  67013ffa  storeli.w r3, -752(r30)
000eec  67413ffa  storeli.w r3, -748(r30)
000ef0  e7013ffa  storeli.w r3, -744(r30)
000ef4  e7413ffa  storeli.w r3, -740(r30)
000ef8  67023ffa  storeli.w r3, -736(r30)
000efc  67423ffa  storeli.w r3, -732(r30)
000f00  e7023ffa  storeli.w r3, -728(r30)
000f04  67453ff4  storeli.w r3, -1452(r30)
000f08  67053ff4  storeli.w r3, -1456(r30)
000f0c  e7443ff4  storeli.w r3, -1460(r30)
000f10  e7043ff4  storeli.w r3, -1464(r30)
000f14  67443ff4  storeli.w r3, -1468(r30)
000f18  67043ff4  storeli.w r3, -1472(r30)
000f1c  e7433ff4  storeli.w r3, -1476(r30)
000f20  e7033ff4  storeli.w r3, -1480(r30)
000f24  67433ff4  storeli.w r3, -1484(r30)
000f28  67033ff4  storeli.w r3, -1488(r30)
000f2c  e7423ff4  storeli.w r3, -1492(r30)
000f30  e7023ff4  storeli.w r3, -1496(r30)
000f34  67423ff4  storeli.w r3, -1500(r30)
000f38  67023ff4  storeli.w r3, -1504(r30)
000f3c  e7413ff4  storeli.w r3, -1508(r30)
000f40  e7013ff4  storeli.w r3, -1512(r30)
000f44  67413ff4  storeli.w r3, -1516(r30)
000f48  67013ff4  storeli.w r3, -1520(r30)
000f4c  e7403ff4  storeli.w r3, -1524(r30)
000f50  e7003ff4  storeli.w r3, -1528(r30)
000f54  67403ff4  storeli.w r3, -1532(r30)
000f58  67003ff4  storeli.w r3, -1536(r30)
000f5c  e74f3ff2  storeli.w r3, -1540(r30)
000f60  e70f3ff2  storeli.w r3, -1544(r30)
000f64  674f3ff2  storeli.w r3, -1548(r30)
000f68  670f3ff2  storeli.w r3, -1552(r30)
000f6c  e74e3ff2  storeli.w r3, -1556(r30)
000f70  e70e3ff2  storeli.w r3, -1560(r30)
000f74  674e3ff2  storeli.w r3, -1564(r30)
000f78  670e3ff2  storeli.w r3, -1568(r30)
000f7c  e74d3ff2  storeli.w r3, -1572(r30)
000f80  e70d3ff2  storeli.w r3, -1576(r30)
000f84  674d3ff2  storeli.w r3, -1580(r30)
000f88  670d3ff2  storeli.w r3, -1584(r30)
000f8c  e74c3ff2  storeli.w r3, -1588(r30)
000f90  e70c3ff2  storeli.w r3, -1592(r30)
000f94  674c3ff2  storeli.w r3, -1596(r30)
000f98  670c3ff2  storeli.w r3, -1600(r30)
000f9c  e74b3ff2  storeli.w r3, -1604(r30)
000fa0  e70b3ff2  storeli.w r3, -1608(r30)
000fa4  674b3ff2  storeli.w r3, -1612(r30)
000fa8  670b3ff2  storeli.w r3, -1616(r30)
000fac  e74a3ff2  storeli.w r3, -1620(r30)
000fb0  e70a3ff2  storeli.w r3, -1624(r30)
000fb4  674a3ff2  storeli.w r3, -1628(r30)
000fb8  670a3ff2  storeli.w r3, -1632(r30)
000fbc  e7493ff2  storeli.w r3, -1636(r30)
000fc0  e7093ff2  storeli.w r3, -1640(r30)
000fc4  67493ff2  storeli.w r3, -1644(r30)
000fc8  67093ff2  storeli.w r3, -1648(r30)
000fcc  e7483ff2  storeli.w r3, -1652(r30)
000fd0  e7083ff2  storeli.w r3, -1656(r30)
000fd4  67483ff2  storeli.w r3, -1660(r30)
000fd8  67083ff2  storeli.w r3, -1664(r30)
000fdc  e7473ff2  storeli.w r3, -1668(r30)
000fe0  e7073ff2  storeli.w r3, -1672(r30)
000fe4  67473ff2  storeli.w r3, -1676(r30)
000fe8  67073ff2  storeli.w r3, -1680(r30)
000fec  e7463ff2  storeli.w r3, -1684(r30)
000ff0  e70d3ffa  storeli.w r3, -552(r30)
000ff4  674d3ffa  storeli.w r3, -556(r30)
000ff8  670d3ffa  storeli.w r3, -560(r30)
000ffc  e74c3ffa  storeli.w r3, -564(r30)
001000  e70c3ffa  storeli.w r3, -568(r30)
001004  674c3ffa  storeli.w r3, -572(r30)
001008  670c3ffa  storeli.w r3, -576(r30)
00100c  e74b3ffa  storeli.w r3, -580(r30)
001010  e70b3ffa  storeli.w r3, -584(r30)
001014  674b3ffa  storeli.w r3, -588(r30)
001018  670b3ffa  storeli.w r3, -592(r30)
00101c  e74a3ffa  storeli.w r3, -596(r30)
001020  e70a3ffa  storeli.w r3, -600(r30)
001024  674a3ffa  storeli.w r3, -604(r30)
001028  670a3ffa  storeli.w r3, -608(r30)
00102c  e7493ffa  storeli.w r3, -612(r30)
001030  e7093ffa  storeli.w r3, -616(r30)
001034  67493ffa  storeli.w r3, -620(r30)
001038  67093ffa  storeli.w r3, -624(r30)
00103c  e7483ffa  storeli.w r3, -628(r30)
001040  e7083ffa  storeli.w r3, -632(r30)
001044  67483ffa  storeli.w r3, -636(r30)
001048  67083ffa  storeli.w r3, -640(r30)
00104c  e7473ffa  storeli.w r3, -644(r30)
001050  e7073ffa  storeli.w r3, -648(r30)
001054  67473ffa  storeli.w r3, -652(r30)
001058  67073ffa  storeli.w r3, -656(r30)
00105c  e7463ffa  storeli.w r3, -660(r30)
001060  e7063ffa  storeli.w r3, -664(r30)
001064  67463ffa  storeli.w r3, -668(r30)
001068  67063ffa  storeli.w r3, -672(r30)
00106c  e7453ffa  storeli.w r3, -676(r30)
001070  e7053ffa  storeli.w r3, -680(r30)
001074  67453ffa  storeli.w r3, -684(r30)
001078  67053ffa  storeli.w r3, -688(r30)
00107c  e7443ffa  storeli.w r3, -692(r30)
001080  e7043ffa  storeli.w r3, -696(r30)
001084  67443ffa  storeli.w r3, -700(r30)
001088  67043ffa  storeli.w r3, -704(r30)
00108c  e7433ffa  storeli.w r3, -708(r30)
001090  e7033ffa  storeli.w r3, -712(r30)
001094  67433ffa  storeli.w r3, -716(r30)
001098  67033ffa  storeli.w r3, -720(r30)
00109c  e7423ffa  storeli.w r3, -724(r30)
0010a0  e7053ff4  storeli.w r3, -1448(r30)
0010a4  e7453ff4  storeli.w r3, -1444(r30)
0010a8  67063ff4  storeli.w r3, -1440(r30)
0010ac  67463ff4  storeli.w r3, -1436(r30)
0010b0  e7063ff4  storeli.w r3, -1432(r30)
0010b4  e7463ff4  storeli.w r3, -1428(r30)
0010b8  67073ff4  storeli.w r3, -1424(r30)
0010bc  67473ff4  storeli.w r3, -1420(r30)
0010c0  e7073ff4  storeli.w r3, -1416(r30)
0010c4  e7473ff4  storeli.w r3, -1412(r30)
0010c8  67083ff4  storeli.w r3, -1408(r30)
0010cc  67483ff4  storeli.w r3, -1404(r30)
0010d0  e7083ff4  storeli.w r3, -1400(r30)
0010d4  e7483ff4  storeli.w r3, -1396(r30)
0010d8  67093ff4  storeli.w r3, -1392(r30)
0010dc  67493ff4  storeli.w r3, -1388(r30)
0010e0  e7093ff4  storeli.w r3, -1384(r30)
0010e4  e7493ff4  storeli.w r3, -1380(r30)
0010e8  670a3ff4  storeli.w r3, -1376(r30)
0010ec  674a3ff4  storeli.w r3, -1372(r30)
0010f0  e70a3ff4  storeli.w r3, -1368(r30)
0010f4  e74a3ff4  storeli.w r3, -1364(r30)
0010f8  670b3ff4  storeli.w r3, -1360(r30)
0010fc  674b3ff4  storeli.w r3, -1356(r30)
001100  e70b3ff4  storeli.w r3, -1352(r30)
001104  e74b3ff4  storeli.w r3, -1348(r30)
001108  670c3ff4  storeli.w r3, -1344(r30)
00110c  674c3ff4  storeli.w r3, -1340(r30)
001110  e70c3ff4  storeli.w r3, -1336(r30)
001114  e74c3ff4  storeli.w r3, -1332(r30)
001118  670d3ff4  storeli.w r3, -1328(r30)
00111c  674d3ff4  storeli.w r3, -1324(r30)
001120  e70d3ff4  storeli.w r3, -1320(r30)
001124  e74d3ff4  storeli.w r3, -1316(r30)
001128  670e3ff4  storeli.w r3, -1312(r30)
00112c  674e3ff4  storeli.w r3, -1308(r30)
001130  e70e3ff4  storeli.w r3, -1304(r30)
001134  e74e3ff4  storeli.w r3, -1300(r30)
001138  670f3ff4  storeli.w r3, -1296(r30)
00113c  674f3ff4  storeli.w r3, -1292(r30)
001140  e70f3ff4  storeli.w r3, -1288(r30)
001144  e74f3ff4  storeli.w r3, -1284(r30)
001148  67003ff6  storeli.w r3, -1280(r30)
00114c  67403ff6  storeli.w r3, -1276(r30)
001150  e7003ff6  storeli.w r3, -1272(r30)
001154  e7403ff6  storeli.w r3, -1268(r30)
001158  67013ff6  storeli.w r3, -1264(r30)
00115c  67413ff6  storeli.w r3, -1260(r30)
001160  e7013ff6  storeli.w r3, -1256(r30)
001164  e7413ff6  storeli.w r3, -1252(r30)
001168  67023ff6  storeli.w r3, -1248(r30)
00116c  67423ff6  storeli.w r3, -1244(r30)
001170  e7023ff6  storeli.w r3, -1240(r30)
001174  e7423ff6  storeli.w r3, -1236(r30)
001178  67033ff6  storeli.w r3, -1232(r30)
00117c  67433ff6  storeli.w r3, -1228(r30)
001180  e7033ff6  storeli.w r3, -1224(r30)
001184  e7433ff6  storeli.w r3, -1220(r30)
001188  67043ff6  storeli.w r3, -1216(r30)
00118c  67443ff6  storeli.w r3, -1212(r30)
001190  e7043ff6  storeli.w r3, -1208(r30)
001194  e7443ff6  storeli.w r3, -1204(r30)
001198  67053ff6  storeli.w r3, -1200(r30)
00119c  67453ff6  storeli.w r3, -1196(r30)
0011a0  e7063fec  storeli.w r3, -2456(r30)
0011a4  e7463fec  storeli.w r3, -2452(r30)
0011a8  67073fec  storeli.w r3, -2448(r30)
0011ac  67473fec  storeli.w r3, -2444(r30)
0011b0  e7073fec  storeli.w r3, -2440(r30)
0011b4  e7473fec  storeli.w r3, -2436(r30)
0011b8  67083fec  storeli.w r3, -2432(r30)
0011bc  67483fec  storeli.w r3, -2428(r30)
0011c0  e7083fec  storeli.w r3, -2424(r30)
0011c4  e7483fec  storeli.w r3, -2420(r30)
0011c8  67093fec  storeli.w r3, -2416(r30)
0011cc  67493fec  storeli.w r3, -2412(r30)
0011d0  e7093fec  storeli.w r3, -2408(r30)
0011d4  e7493fec  storeli.w r3, -2404(r30)
0011d8  670a3fec  storeli.w r3, -2400(r30)
0011dc  674a3fec  storeli.w r3, -2396(r30)
0011e0  e70a3fec  storeli.w r3, -2392(r30)
0011e4  e74a3fec  storeli.w r3, -2388(r30)
0011e8  670b3fec  storeli.w r3, -2384(r30)
0011ec  674b3fec  storeli.w r3, -2380(r30)
0011f0  e70b3fec  storeli.w r3, -2376(r30)
0011f4  e74b3fec  storeli.w r3, -2372(r30)
0011f8  670c3fec  storeli.w r3, -2368(r30)
0011fc  674c3fec  storeli.w r3, -2364(r30)
001200  e70c3fec  storeli.w r3, -2360(r30)
001204  e74c3fec  storeli.w r3, -2356(r30)
001208  670d3fec  storeli.w r3, -2352(r30)
00120c  674d3fec  storeli.w r3, -2348(r30)
001210  e70d3fec  storeli.w r3, -2344(r30)
001214  e74d3fec  storeli.w r3, -2340(r30)
001218  670e3fec  storeli.w r3, -2336(r30)
00121c  674e3fec  storeli.w r3, -2332(r30)
001220  e70e3fec  storeli.w r3, -2328(r30)
001224  e74e3fec  storeli.w r3, -2324(r30)
001228  670f3fec  storeli.w r3, -2320(r30)
00122c  674f3fec  storeli.w r3, -2316(r30)
001230  e70f3fec  storeli.w r3, -2312(r30)
001234  e74f3fec  storeli.w r3, -2308(r30)
001238  67003fee  storeli.w r3, -2304(r30)
00123c  67403fee  storeli.w r3, -2300(r30)
001240  e7003fee  storeli.w r3, -2296(r30)
001244  e7403fee  storeli.w r3, -2292(r30)
001248  67013fee  storeli.w r3, -2288(r30)
00124c  67413fee  storeli.w r3, -2284(r30)
001250  e7013fee  storeli.w r3, -2280(r30)
001254  e7413fee  storeli.w r3, -2276(r30)
001258  67023fee  storeli.w r3, -2272(r30)
00125c  67423fee  storeli.w r3, -2268(r30)
001260  e7023fee  storeli.w r3, -2264(r30)
001264  e7423fee  storeli.w r3, -2260(r30)
001268  67033fee  storeli.w r3, -2256(r30)
00126c  67433fee  storeli.w r3, -2252(r30)
001270  e7033fee  storeli.w r3, -2248(r30)
001274  e7433fee  storeli.w r3, -2244(r30)
001278  67043fee  storeli.w r3, -2240(r30)
00127c  67443fee  storeli.w r3, -2236(r30)
001280  e7043fee  storeli.w r3, -2232(r30)
001284  e7443fee  storeli.w r3, -2228(r30)
001288  67053fee  storeli.w r3, -2224(r30)
00128c  67453fee  storeli.w r3, -2220(r30)
001290  e7053fee  storeli.w r3, -2216(r30)
001294  e7453fee  storeli.w r3, -2212(r30)
001298  67063fee  storeli.w r3, -2208(r30)
00129c  67463fee  storeli.w r3, -2204(r30)
0012a0  e7063fee  storeli.w r3, -2200(r30)
0012a4  e7463fee  storeli.w r3, -2196(r30)
0012a8  67073fee  storeli.w r3, -2192(r30)
0012ac  67473fee  storeli.w r3, -2188(r30)
0012b0  e7073fee  storeli.w r3, -2184(r30)
0012b4  e7473fee  storeli.w r3, -2180(r30)
0012b8  67083fee  storeli.w r3, -2176(r30)
0012bc  67483fee  storeli.w r3, -2172(r30)
0012c0  e7083fee  storeli.w r3, -2168(r30)
0012c4  e7483fee  storeli.w r3, -2164(r30)
0012c8  67093fee  storeli.w r3, -2160(r30)
0012cc  67493fee  storeli.w r3, -2156(r30)
0012d0  e7093fee  storeli.w r3, -2152(r30)
0012d4  e7493fee  storeli.w r3, -2148(r30)
0012d8  670a3fee  storeli.w r3, -2144(r30)
0012dc  674a3fee  storeli.w r3, -2140(r30)
0012e0  e70a3fee  storeli.w r3, -2136(r30)
0012e4  e74a3fee  storeli.w r3, -2132(r30)
0012e8  670b3fee  storeli.w r3, -2128(r30)
0012ec  674b3fee  storeli.w r3, -2124(r30)
0012f0  e70b3fee  storeli.w r3, -2120(r30)
0012f4  e74b3fee  storeli.w r3, -2116(r30)
0012f8  670c3fee  storeli.w r3, -2112(r30)
0012fc  674c3fee  storeli.w r3, -2108(r30)
001300  e70c3fee  storeli.w r3, -2104(r30)
001304  e74c3fee  storeli.w r3, -2100(r30)
001308  670d3fee  storeli.w r3, -2096(r30)
00130c  674d3fee  storeli.w r3, -2092(r30)
001310  e70d3fee  storeli.w r3, -2088(r30)
001314  e74d3fee  storeli.w r3, -2084(r30)
001318  670e3fee  storeli.w r3, -2080(r30)
00131c  674e3fee  storeli.w r3, -2076(r30)
001320  e70e3fee  storeli.w r3, -2072(r30)
001324  e74e3fee  storeli.w r3, -2068(r30)
001328  670f3fee  storeli.w r3, -2064(r30)
00132c  674f3fee  storeli.w r3, -2060(r30)
001330  e70f3fee  storeli.w r3, -2056(r30)
001334  e74f3fee  storeli.w r3, -2052(r30)
001338  67003ff0  storeli.w r3, -2048(r30)
00133c  67403ff0  storeli.w r3, -2044(r30)
001340  e7003ff0  storeli.w r3, -2040(r30)
001344  e7403ff0  storeli.w r3, -2036(r30)
001348  67013ff0  storeli.w r3, -2032(r30)
00134c  67413ff0  storeli.w r3, -2028(r30)
001350  e7013ff0  storeli.w r3, -2024(r30)
001354  e7413ff0  storeli.w r3, -2020(r30)
001358  67023ff0  storeli.w r3, -2016(r30)
00135c  67423ff0  storeli.w r3, -2012(r30)
001360  e7023ff0  storeli.w r3, -2008(r30)
001364  e7423ff0  storeli.w r3, -2004(r30)
001368  67033ff0  storeli.w r3, -2000(r30)
00136c  67433ff0  storeli.w r3, -1996(r30)
001370  e7033ff0  storeli.w r3, -1992(r30)
001374  e7433ff0  storeli.w r3, -1988(r30)
001378  67043ff0  storeli.w r3, -1984(r30)
00137c  67443ff0  storeli.w r3, -1980(r30)
001380  e7043ff0  storeli.w r3, -1976(r30)
001384  e7443ff0  storeli.w r3, -1972(r30)
001388  67053ff0  storeli.w r3, -1968(r30)
00138c  67453ff0  storeli.w r3, -1964(r30)
001390  e7053ff0  storeli.w r3, -1960(r30)
001394  e7453ff0  storeli.w r3, -1956(r30)
001398  67063ff0  storeli.w r3, -1952(r30)
00139c  67463ff0  storeli.w r3, -1948(r30)
0013a0  e7063ff0  storeli.w r3, -1944(r30)
0013a4  e7463ff0  storeli.w r3, -1940(r30)
0013a8  67073ff0  storeli.w r3, -1936(r30)
0013ac  67473ff0  storeli.w r3, -1932(r30)
0013b0  e7073ff0  storeli.w r3, -1928(r30)
0013b4  e7473ff0  storeli.w r3, -1924(r30)
0013b8  67083ff0  storeli.w r3, -1920(r30)
0013bc  67483ff0  storeli.w r3, -1916(r30)
0013c0  e7083ff0  storeli.w r3, -1912(r30)
0013c4  e7483ff0  storeli.w r3, -1908(r30)
0013c8  67093ff0  storeli.w r3, -1904(r30)
0013cc  67493ff0  storeli.w r3, -1900(r30)
0013d0  e7093ff0  storeli.w r3, -1896(r30)
0013d4  e7493ff0  storeli.w r3, -1892(r30)
0013d8  670a3ff0  storeli.w r3, -1888(r30)
0013dc  674a3ff0  storeli.w r3, -1884(r30)
0013e0  e70a3ff0  storeli.w r3, -1880(r30)
0013e4  e74a3ff0  storeli.w r3, -1876(r30)
0013e8  670b3ff0  storeli.w r3, -1872(r30)
0013ec  674b3ff0  storeli.w r3, -1868(r30)
0013f0  e70b3ff0  storeli.w r3, -1864(r30)
0013f4  e74b3ff0  storeli.w r3, -1860(r30)
0013f8  670c3ff0  storeli.w r3, -1856(r30)
0013fc  674c3ff0  storeli.w r3, -1852(r30)
001400  e70c3ff0  storeli.w r3, -1848(r30)
001404  e74c3ff0  storeli.w r3, -1844(r30)
001408  670d3ff0  storeli.w r3, -1840(r30)
00140c  674d3ff0  storeli.w r3, -1836(r30)
001410  e70d3ff0  storeli.w r3, -1832(r30)
001414  e74d3ff0  storeli.w r3, -1828(r30)
001418  670e3ff0  storeli.w r3, -1824(r30)
00141c  674e3ff0  storeli.w r3, -1820(r30)
001420  e70e3ff0  storeli.w r3, -1816(r30)
001424  e74e3ff0  storeli.w r3, -1812(r30)
001428  670f3ff0  storeli.w r3, -1808(r30)
00142c  674f3ff0  storeli.w r3, -1804(r30)
001430  e70f3ff0  storeli.w r3, -1800(r30)
001434  e74f3ff0  storeli.w r3, -1796(r30)
001438  67003ff2  storeli.w r3, -1792(r30)
00143c  67403ff2  storeli.w r3, -1788(r30)
001440  e7003ff2  storeli.w r3, -1784(r30)
001444  e7403ff2  storeli.w r3, -1780(r30)
001448  67013ff2  storeli.w r3, -1776(r30)
00144c  67413ff2  storeli.w r3, -1772(r30)
001450  e7013ff2  storeli.w r3, -1768(r30)
001454  e7413ff2  storeli.w r3, -1764(r30)
001458  67023ff2  storeli.w r3, -1760(r30)
00145c  67423ff2  storeli.w r3, -1756(r30)
001460  e7023ff2  storeli.w r3, -1752(r30)
001464  e7423ff2  storeli.w r3, -1748(r30)
001468  67033ff2  storeli.w r3, -1744(r30)
00146c  67433ff2  storeli.w r3, -1740(r30)
001470  e7033ff2  storeli.w r3, -1736(r30)
001474  e7433ff2  storeli.w r3, -1732(r30)
001478  67043ff2  storeli.w r3, -1728(r30)
00147c  67443ff2  storeli.w r3, -1724(r30)
001480  e7043ff2  storeli.w r3, -1720(r30)
001484  e7443ff2  storeli.w r3, -1716(r30)
001488  67053ff2  storeli.w r3, -1712(r30)
00148c  67453ff2  storeli.w r3, -1708(r30)
001490  e7053ff2  storeli.w r3, -1704(r30)
001494  e7453ff2  storeli.w r3, -1700(r30)
001498  67063ff2  storeli.w r3, -1696(r30)
00149c  67463ff2  storeli.w r3, -1692(r30)
0014a0  4b5d1112  ble.s r2, r1, 10068
0014a4  33110128  sext_int2long r[3:4], r2
0014a8  1f029feb  addli r4, r30, -2616
0014ac  b3960028  sext_int2long r[14:15], r1
0014b0  9f290000  addli r19, zero, 2
0014b4  2b0d4000  lui r26, 1024
0014b8  ab0dffff  lui r27, 1048560
0014bc  67400fec  storeli.w zero, -2556(r30)
0014c0  73302200  store.d r[3:4], 0(r4)
0014c4  9f018feb  addli r3, r30, -2624
0014c8  2b02807f  lui r4, 522240
0014cc  ebd00100  load.d r[2:3], 0(r3)
0014d0  1f71f007  addli r2, zero, 1023
0014d4  73b01100  store.d r[2:3], 0(r3)
0014d8  abf0ff7f  lui r1, 524287
0014dc  9b91f0ff  ori r3, r1, 4095
0014e0  ab700000  lui r1, 7
0014e4  9b92f0ff  ori r5, r1, 4095
0014e8  abf07f7f  lui r1, 522239
0014ec  1b93f0ff  ori r6, r1, 4095
0014f0  5b060000  j 48
0014f4  9f401000  addli r1, zero, 12
0014f8  7d800000  xsignal r1, 0
0014fc  9f002000  addli r1, zero, 16
001500  7d800000  xsignal r1, 0
001504  9f00ffeb  addli r1, r30, -2568
001508  ebd60000  load.d r[14:15], 0(r1)
00150c  9f039feb  addli r7, r30, -2616
001510  a7960600  addli.d r[14:15], r[14:15], 1
001514  ebd00300  load.d r[2:3], 0(r7)
001518  93b01604  setlt.sl r1, r[14:15], r[2:3]
00151c  37eb0012  beq r1, zero, 9944
001520  9f400000  addli r1, zero, 4
001524  3b301900  bneq r18, r1, 12
001528  9f501000  addli r1, zero, 13
00152c  7d900000  xwait r1, 0
001530  e3005f00  loadli.w r1,  40(r30)
001534  1f01ffeb  addli r2, r30, -2568
001538  9f031000  addli r7, zero, 8
00153c  1f160000  addli r12, zero, 1
001540  1f341000  addli r8, zero, 11
001544  9f04bfeb  addli r9, r30, -2600
001548  9f05afec  addli r11, r30, -2480
00154c  7330d100  store.d r[14:15], 0(r2)
001550  63414f00  loadli.w r2,  36(r30)
001554  8b901630  div.s r1, r13, r1
001558  8b962030  div.s r13, r1, r2
00155c  9f000001  addli r1, zero, 128
001560  8b971630  div.s r15, r13, r1
001564  9bb03700  slli r1, r15, 3
001568  0b911918  sub.s r2, r19, r1
00156c  0b187140  min.s r16, r2, r7
001570  e303dff2  loadli.w r7,  -1688(r30)
001574  0b910639  mod.s r2, r13, r16
001578  0b912010  add.s r2, r1, r2
00157c  e340cfec  loadli.w r1,  -2460(r30)
001580  13052604  setlt.u r10, r12, r2
001584  330a0128  zext_int2long r[21:22], r2
001588  73b04401  store.d r[21:22], 0(r9)
00158c  17348a02  sll.d r[9:10], r[21:22], r8
001590  73b08500  store.d r[9:10], 0(r11)
001594  3b300500  bneq r10, zero, 12
001598  33040028  zext_int2long r[9:10], zero
00159c  5b020000  j 16
0015a0  1f078feb  addli r14, r30, -2624
0015a4  6b550700  load.d r[11:12], 0(r14)
0015a8  1704a402  and.d r[9:10], r[9:10], r[11:12]
0015ac  9bb77700  slli r15, r15, 7
0015b0  1f059fec  addli r10, r30, -2488
0015b4  1b315100  slli r2, r2, 5
0015b8  1f070000  addli r14, zero, 0
0015bc  1f0a0000  addli r20, zero, 0
0015c0  8b96f618  sub.s r13, r13, r15
0015c4  73308500  store.d r[9:10], 0(r10)
0015c8  63440fec  loadli.w r8,  -2556(r30)
0015cc  1f550000  addli r10, zero, 5
0015d0  674d2fea  storeli.w r2, -2604(r30)
0015d4  8b960631  div.s r13, r13, r16
0015d8  8b17a438  mod.s r15, r8, r10
0015dc  1f140400  addli r8, r8, 1
0015e0  67408fec  storeli.w r8, -2556(r30)
0015e4  1bb16600  slli r2, r13, 6
0015e8  33880628  zext_int2long r[17:18], r13
0015ec  9bbcd700  slli r25, r15, 13
0015f0  e7002fec  storeli.w r2, -2552(r30)
0015f4  1f610000  addli r2, zero, 6
0015f8  97342802  sll.d r[10:11], r[17:18], r2
0015fc  1f01dfeb  addli r2, r30, -2584
001600  73309100  store.d r[10:11], 0(r2)
001604  97b7c402  sll.d r[16:17], r[10:11], r12
001608  6b558f00  load.d r[11:12], 8(r30)
00160c  1f018fec  addli r2, r30, -2496
001610  0b24f510  add.ul r[9:10], r[11:12], r[16:17]
001614  73308100  store.d r[9:10], 0(r2)
001618  5b320000  j 400
00161c  2ba50000  lui r10, 10
001620  1d800500  lock zero, r11
001624  1f098000  addli r18, zero, 64
001628  1f141000  addli r8, zero, 9
00162c  150c0c00  dma_cfg r24, r24, zero, 0
001630  1b150504  ori r10, r10, 64
001634  15000b04  dma_cfg zero, r22, zero, 2
001638  0b11a110  add.s r2, r2, r10
00163c  1f650000  addli r10, zero, 6
001640  15812a07  dma_cfg r2, r21, r18, 3
001644  1f010001  addli r2, zero, 128
001648  15018909  dma_cfg r2, r18, r24, 4
00164c  1501410b  dma_cfg r2, r2, r20, 5
001650  15000010  dma_cfg zero, zero, zero, 8
001654  35000000  dma_run zero
001658  1500800b  dma_cfg zero, zero, r24, 5
00165c  15000010  dma_cfg zero, zero, zero, 8
001660  1d900500  unlock r11
001664  1d800600  lock zero, r13
001668  15000014  dma_cfg zero, zero, zero, 10
00166c  15008015  dma_cfg zero, zero, r24, 10
001670  15003015  dma_cfg zero, zero, r19, 10
001674  1500c015  dma_cfg zero, zero, r28, 10
001678  1500b014  dma_cfg zero, zero, r11, 10
00167c  1500d014  dma_cfg zero, zero, r13, 10
001680  1500a014  dma_cfg zero, zero, r10, 10
001684  1f750000  addli r10, zero, 7
001688  1500a014  dma_cfg zero, zero, r10, 10
00168c  1f051000  addli r10, zero, 8
001690  1500a014  dma_cfg zero, zero, r10, 10
001694  1f251000  addli r10, zero, 10
001698  15008014  dma_cfg zero, zero, r8, 10
00169c  1f641000  addli r8, zero, 14
0016a0  1500a014  dma_cfg zero, zero, r10, 10
0016a4  1f351000  addli r10, zero, 11
0016a8  1500a014  dma_cfg zero, zero, r10, 10
0016ac  1f451000  addli r10, zero, 12
0016b0  1500a014  dma_cfg zero, zero, r10, 10
0016b4  1f551000  addli r10, zero, 13
0016b8  1500a014  dma_cfg zero, zero, r10, 10
0016bc  1f052000  addli r10, zero, 16
0016c0  15008014  dma_cfg zero, zero, r8, 10
0016c4  1f741000  addli r8, zero, 15
0016c8  15008014  dma_cfg zero, zero, r8, 10
0016cc  1f142000  addli r8, zero, 17
0016d0  1500a014  dma_cfg zero, zero, r10, 10
0016d4  15008014  dma_cfg zero, zero, r8, 10
0016d8  1f242000  addli r8, zero, 18
0016dc  15008014  dma_cfg zero, zero, r8, 10
0016e0  1f342000  addli r8, zero, 19
0016e4  15008014  dma_cfg zero, zero, r8, 10
0016e8  1f442000  addli r8, zero, 20
0016ec  15008014  dma_cfg zero, zero, r8, 10
0016f0  1f542000  addli r8, zero, 21
0016f4  15008014  dma_cfg zero, zero, r8, 10
0016f8  1f642000  addli r8, zero, 22
0016fc  15008014  dma_cfg zero, zero, r8, 10
001700  1f742000  addli r8, zero, 23
001704  15008014  dma_cfg zero, zero, r8, 10
001708  1f043000  addli r8, zero, 24
00170c  15008014  dma_cfg zero, zero, r8, 10
001710  1f143000  addli r8, zero, 25
001714  15008014  dma_cfg zero, zero, r8, 10
001718  1f243000  addli r8, zero, 26
00171c  15008014  dma_cfg zero, zero, r8, 10
001720  1f343000  addli r8, zero, 27
001724  15008014  dma_cfg zero, zero, r8, 10
001728  1f443000  addli r8, zero, 28
00172c  15008014  dma_cfg zero, zero, r8, 10
001730  1f543000  addli r8, zero, 29
001734  15008014  dma_cfg zero, zero, r8, 10
001738  1f643000  addli r8, zero, 30
00173c  15008014  dma_cfg zero, zero, r8, 10
001740  1f743000  addli r8, zero, 31
001744  15008014  dma_cfg zero, zero, r8, 10
001748  150c0c00  dma_cfg r24, r24, zero, 0
00174c  150c0002  dma_cfg r24, zero, zero, 1
001750  15000004  dma_cfg zero, zero, zero, 2
001754  95072007  dma_cfg r15, zero, r18, 3
001758  00390002  core_id r18
00175c  15018009  dma_cfg r2, zero, r24, 4
001760  1501400b  dma_cfg r2, zero, r20, 5
001764  15000010  dma_cfg zero, zero, zero, 8
001768  35000000  dma_run zero
00176c  1500800b  dma_cfg zero, zero, r24, 5
001770  15000010  dma_cfg zero, zero, zero, 8
001774  1d900600  unlock r13
001778  7d800900  xsignal r19, 0
00177c  6301bff6  loadli.w r2,  -1192(r30)
001780  6345bffb  loadli.w r10,  -548(r30)
001784  1f110100  addli r2, r2, 1
001788  1f150500  addli r10, r10, 1
00178c  e7052ff6  storeli.w r2, -1192(r30)
001790  e74daffa  storeli.w r10, -548(r30)
001794  1b011600  andi r2, r12, 1
001798  b7770102  beq r2, zero, 1532
00179c  1f170700  addli r14, r14, 1
0017a0  1f1a0000  addli r20, zero, 1
0017a4  1f060000  addli r12, zero, 0
0017a8  0b91e010  add.s r2, r1, r14
0017ac  1f058001  addli r10, zero, 192
0017b0  8b9be310  add.s r23, r7, r14
0017b4  8b16a138  mod.s r13, r2, r10
0017b8  1f35f000  addli r10, zero, 123
0017bc  1f110100  addli r2, r2, 1
0017c0  9f9a0b00  addli r21, r23, 1
0017c4  8b97ab38  mod.s r15, r23, r10
0017c8  1f058000  addli r10, zero, 64
0017cc  67462fec  storeli.w r2, -2460(r30)
0017d0  e7065ff3  storeli.w r21, -1688(r30)
0017d4  33080528  zext_int2long r[17:18], r10
0017d8  1f054000  addli r10, zero, 32
0017dc  33040528  zext_int2long r[9:10], r10
0017e0  1f05bfec  addli r10, r30, -2472
0017e4  9bb6c600  slli r13, r13, 12
0017e8  73308500  store.d r[9:10], 0(r10)
0017ec  1bb1c700  slli r2, r15, 12
0017f0  2ba50000  lui r10, 10
0017f4  8b17a110  add.s r15, r2, r10
0017f8  37663901  beq r18, r19, 408
0017fc  b30a0a28  zext_int2long r[22:23], r20
001800  1f1c0000  addli r24, zero, 1
001804  3b378901  bneq r18, r24, 460
001808  1f550000  addli r10, zero, 5
00180c  9f560000  addli r13, zero, 5
001810  1f3e0000  addli r28, zero, 3
001814  17baaa02  sll.d r[21:22], r[22:23], r10
001818  1f05afec  addli r10, r30, -2480
00181c  6b540500  load.d r[9:10], 0(r10)
001820  1f059fec  addli r10, r30, -2488
001824  171a8a02  or.d r[21:22], r[21:22], r[9:10]
001828  6b540500  load.d r[9:10], 0(r10)
00182c  1f05bfec  addli r10, r30, -2472
001830  0b398a18  sub.sl r[19:20], r[21:22], r[9:10]
001834  6b540500  load.d r[9:10], 0(r10)
001838  173a8a03  sll.d r[21:22], r[21:22], r24
00183c  7d100e00  xwait r28, 0
001840  0f190961  div.sl r[19:20], r[19:20], r[17:18]
001844  0b358940  min.sl r[11:12], r[19:20], r[9:10]
001848  6b540f00  load.d r[9:10], 0(r30)
00184c  0b352519  sub.sl r[11:12], r[11:12], r[19:20]
001850  9f290000  addli r19, zero, 2
001854  8b2a4411  add.ul r[22:23], r[9:10], r[21:22]
001858  1f24f000  addli r8, zero, 122
00185c  1f0a4500  addli r20, r10, 32
001860  9f450000  addli r11, zero, 4
001864  bf6674ff  blt.s r8, r23, -584
001868  1d800600  lock zero, r13
00186c  1f650000  addli r10, zero, 6
001870  1f141000  addli r8, zero, 9
001874  1f094000  addli r18, zero, 32
001878  15000014  dma_cfg zero, zero, zero, 10
00187c  15008015  dma_cfg zero, zero, r24, 10
001880  15003015  dma_cfg zero, zero, r19, 10
001884  1500c015  dma_cfg zero, zero, r28, 10
001888  1500b014  dma_cfg zero, zero, r11, 10
00188c  1500d014  dma_cfg zero, zero, r13, 10
001890  1500a014  dma_cfg zero, zero, r10, 10
001894  1f750000  addli r10, zero, 7
001898  1500a014  dma_cfg zero, zero, r10, 10
00189c  1f051000  addli r10, zero, 8
0018a0  1500a014  dma_cfg zero, zero, r10, 10
0018a4  1f251000  addli r10, zero, 10
0018a8  15008014  dma_cfg zero, zero, r8, 10
0018ac  1f641000  addli r8, zero, 14
0018b0  1500a014  dma_cfg zero, zero, r10, 10
0018b4  1f351000  addli r10, zero, 11
0018b8  1500a014  dma_cfg zero, zero, r10, 10
0018bc  1f451000  addli r10, zero, 12
0018c0  1500a014  dma_cfg zero, zero, r10, 10
0018c4  1f551000  addli r10, zero, 13
0018c8  1500a014  dma_cfg zero, zero, r10, 10
0018cc  1f052000  addli r10, zero, 16
0018d0  15008014  dma_cfg zero, zero, r8, 10
0018d4  1f741000  addli r8, zero, 15
0018d8  15008014  dma_cfg zero, zero, r8, 10
0018dc  1f142000  addli r8, zero, 17
0018e0  1500a014  dma_cfg zero, zero, r10, 10
0018e4  1f058000  addli r10, zero, 64
0018e8  15008014  dma_cfg zero, zero, r8, 10
0018ec  1f242000  addli r8, zero, 18
0018f0  15008014  dma_cfg zero, zero, r8, 10
0018f4  1f342000  addli r8, zero, 19
0018f8  15008014  dma_cfg zero, zero, r8, 10
0018fc  1f442000  addli r8, zero, 20
001900  15008014  dma_cfg zero, zero, r8, 10
001904  1f542000  addli r8, zero, 21
001908  15008014  dma_cfg zero, zero, r8, 10
00190c  1f642000  addli r8, zero, 22
001910  15008014  dma_cfg zero, zero, r8, 10
001914  1f742000  addli r8, zero, 23
001918  15008014  dma_cfg zero, zero, r8, 10
00191c  1f043000  addli r8, zero, 24
001920  15008014  dma_cfg zero, zero, r8, 10
001924  1f143000  addli r8, zero, 25
001928  15008014  dma_cfg zero, zero, r8, 10
00192c  1f243000  addli r8, zero, 26
001930  15008014  dma_cfg zero, zero, r8, 10
001934  1f343000  addli r8, zero, 27
001938  15008014  dma_cfg zero, zero, r8, 10
00193c  1f443000  addli r8, zero, 28
001940  15008014  dma_cfg zero, zero, r8, 10
001944  1f543000  addli r8, zero, 29
001948  15008014  dma_cfg zero, zero, r8, 10
00194c  1f643000  addli r8, zero, 30
001950  15008014  dma_cfg zero, zero, r8, 10
001954  1f743000  addli r8, zero, 31
001958  15008014  dma_cfg zero, zero, r8, 10
00195c  150c0c00  dma_cfg r24, r24, zero, 0
001960  150c0002  dma_cfg r24, zero, zero, 1
001964  15000004  dma_cfg zero, zero, zero, 2
001968  9507a006  dma_cfg r15, zero, r10, 3
00196c  1f050001  addli r10, zero, 128
001970  15058009  dma_cfg r10, zero, r24, 4
001974  1505200b  dma_cfg r10, zero, r18, 5
001978  15000010  dma_cfg zero, zero, zero, 8
00197c  35000000  dma_run zero
001980  1500800b  dma_cfg zero, zero, r24, 5
001984  15000010  dma_cfg zero, zero, zero, 8
001988  1d900600  unlock r13
00198c  5b92ffff  j -880
001990  1f510000  addli r2, zero, 5
001994  7d900900  xwait r19, 0
001998  7d100100  xwait r2, 0
00199c  1d000000  lock zero, zero
0019a0  1f014000  addli r2, zero, 32
0019a4  81090000  ds_cfg r19, zero, 0
0019a8  01010002  ds_cfg r2, zero, 1
0019ac  0101001c  ds_cfg r2, zero, 14
0019b0  0101001a  ds_cfg r2, zero, 13
0019b4  a1962702  shuffle_batch r13, r15, r2, 1
0019b8  1f310000  addli r2, zero, 3
0019bc  1d100000  unlock zero
0019c0  7d000100  xsignal r2, 0
0019c4  1f410000  addli r2, zero, 4
0019c8  7d000100  xsignal r2, 0
0019cc  5bb6ffff  j -592
0019d0  6301bff6  loadli.w r2,  -1192(r30)
0019d4  1f044001  addli r8, zero, 160
0019d8  e34bbffb  loadli.w r23,  -548(r30)
0019dc  0b158138  mod.s r10, r2, r8
0019e0  1f44f000  addli r8, zero, 124
0019e4  1f110100  addli r2, r2, 1
0019e8  8b958b38  mod.s r11, r23, r8
0019ec  e7052ff6  storeli.w r2, -1192(r30)
0019f0  2b540800  lui r8, 133
0019f4  1b3ad500  slli r20, r10, 13
0019f8  1f950b00  addli r10, r23, 1
0019fc  1bb1d500  slli r2, r11, 13
001a00  e74daffa  storeli.w r10, -548(r30)
001a04  1f750000  addli r10, zero, 7
001a08  8b178110  add.s r15, r2, r8
001a0c  375ba900  beq r18, r10, 724
001a10  1f650000  addli r10, zero, 6
001a14  3b5ca900  bneq r18, r10, 788
001a18  9f068fec  addli r13, r30, -2496
001a1c  1f0c2000  addli r24, zero, 16
001a20  1f7e0000  addli r28, zero, 7
001a24  6bd40600  load.d r[9:10], 0(r13)
001a28  17b58a03  sll.d r[11:12], r[22:23], r24
001a2c  7d100e00  xwait r28, 0
001a30  0b2aa410  add.ul r[21:22], r[9:10], r[11:12]
001a34  1f35f000  addli r10, zero, 123
001a38  bf547501  blt.s r10, r23, 308
001a3c  9f550000  addli r11, zero, 5
001a40  9f160000  addli r13, zero, 1
001a44  1f350000  addli r10, zero, 3
001a48  1f141000  addli r8, zero, 9
001a4c  1d800500  lock zero, r11
001a50  15000014  dma_cfg zero, zero, zero, 10
001a54  1500d014  dma_cfg zero, zero, r13, 10
001a58  15003015  dma_cfg zero, zero, r19, 10
001a5c  1500a014  dma_cfg zero, zero, r10, 10
001a60  1f450000  addli r10, zero, 4
001a64  1500a014  dma_cfg zero, zero, r10, 10
001a68  1f650000  addli r10, zero, 6
001a6c  1500b014  dma_cfg zero, zero, r11, 10
001a70  1500a014  dma_cfg zero, zero, r10, 10
001a74  1f051000  addli r10, zero, 8
001a78  1500c015  dma_cfg zero, zero, r28, 10
001a7c  1500a014  dma_cfg zero, zero, r10, 10
001a80  1f251000  addli r10, zero, 10
001a84  15008014  dma_cfg zero, zero, r8, 10
001a88  1f641000  addli r8, zero, 14
001a8c  1500a014  dma_cfg zero, zero, r10, 10
001a90  1f351000  addli r10, zero, 11
001a94  1500a014  dma_cfg zero, zero, r10, 10
001a98  1f451000  addli r10, zero, 12
001a9c  1500a014  dma_cfg zero, zero, r10, 10
001aa0  1f551000  addli r10, zero, 13
001aa4  1500a014  dma_cfg zero, zero, r10, 10
001aa8  1f058000  addli r10, zero, 64
001aac  15008014  dma_cfg zero, zero, r8, 10
001ab0  1f741000  addli r8, zero, 15
001ab4  15008014  dma_cfg zero, zero, r8, 10
001ab8  1f142000  addli r8, zero, 17
001abc  15008015  dma_cfg zero, zero, r24, 10
001ac0  15008014  dma_cfg zero, zero, r8, 10
001ac4  1f242000  addli r8, zero, 18
001ac8  15008014  dma_cfg zero, zero, r8, 10
001acc  1f342000  addli r8, zero, 19
001ad0  15008014  dma_cfg zero, zero, r8, 10
001ad4  1f442000  addli r8, zero, 20
001ad8  15008014  dma_cfg zero, zero, r8, 10
001adc  1f542000  addli r8, zero, 21
001ae0  15008014  dma_cfg zero, zero, r8, 10
001ae4  1f642000  addli r8, zero, 22
001ae8  15008014  dma_cfg zero, zero, r8, 10
001aec  1f742000  addli r8, zero, 23
001af0  15008014  dma_cfg zero, zero, r8, 10
001af4  1f043000  addli r8, zero, 24
001af8  15008014  dma_cfg zero, zero, r8, 10
001afc  1f143000  addli r8, zero, 25
001b00  15008014  dma_cfg zero, zero, r8, 10
001b04  1f243000  addli r8, zero, 26
001b08  15008014  dma_cfg zero, zero, r8, 10
001b0c  1f343000  addli r8, zero, 27
001b10  15008014  dma_cfg zero, zero, r8, 10
001b14  1f443000  addli r8, zero, 28
001b18  15008014  dma_cfg zero, zero, r8, 10
001b1c  1f543000  addli r8, zero, 29
001b20  15008014  dma_cfg zero, zero, r8, 10
001b24  1f643000  addli r8, zero, 30
001b28  15008014  dma_cfg zero, zero, r8, 10
001b2c  1f743000  addli r8, zero, 31
001b30  15008014  dma_cfg zero, zero, r8, 10
001b34  1f040002  addli r8, zero, 256
001b38  95860600  dma_cfg r13, r13, zero, 0
001b3c  95060002  dma_cfg r13, zero, zero, 1
001b40  15000004  dma_cfg zero, zero, zero, 2
001b44  9507a006  dma_cfg r15, zero, r10, 3
001b48  1f050001  addli r10, zero, 128
001b4c  15053009  dma_cfg r10, zero, r19, 4
001b50  1f054000  addli r10, zero, 32
001b54  1504a00a  dma_cfg r8, zero, r10, 5
001b58  15000010  dma_cfg zero, zero, zero, 8
001b5c  35000000  dma_run zero
001b60  1500d00a  dma_cfg zero, zero, r13, 5
001b64  15000010  dma_cfg zero, zero, zero, 8
001b68  1d900500  unlock r11
001b6c  2b540800  lui r8, 133
001b70  9f1b0000  addli r23, zero, 1
001b74  1f0b8000  addli r22, zero, 64
001b78  9f040002  addli r9, zero, 256
001b7c  9f560000  addli r13, zero, 5
001b80  9f350000  addli r11, zero, 3
001b84  1b150404  ori r10, r8, 64
001b88  1f040010  addli r8, zero, 2048
001b8c  0b11a110  add.s r2, r2, r10
001b90  1f450000  addli r10, zero, 4
001b94  1d000500  lock zero, r10
001b98  958b0b00  dma_cfg r23, r23, zero, 0
001b9c  15800a04  dma_cfg zero, r21, zero, 2
001ba0  15016a07  dma_cfg r2, r20, r22, 3
001ba4  1f010001  addli r2, zero, 128
001ba8  1f0a4000  addli r20, zero, 32
001bac  15013b09  dma_cfg r2, r22, r19, 4
001bb0  9504440b  dma_cfg r9, r8, r20, 5
001bb4  1f141000  addli r8, zero, 9
001bb8  15000010  dma_cfg zero, zero, zero, 8
001bbc  35000000  dma_run zero
001bc0  1500700b  dma_cfg zero, zero, r23, 5
001bc4  15000010  dma_cfg zero, zero, zero, 8
001bc8  1d100500  unlock r10
001bcc  1d800600  lock zero, r13
001bd0  15000014  dma_cfg zero, zero, zero, 10
001bd4  15007015  dma_cfg zero, zero, r23, 10
001bd8  15003015  dma_cfg zero, zero, r19, 10
001bdc  1500b014  dma_cfg zero, zero, r11, 10
001be0  9f650000  addli r11, zero, 6
001be4  1500a014  dma_cfg zero, zero, r10, 10
001be8  1f051000  addli r10, zero, 8
001bec  1500d014  dma_cfg zero, zero, r13, 10
001bf0  1500b014  dma_cfg zero, zero, r11, 10
001bf4  1500c015  dma_cfg zero, zero, r28, 10
001bf8  1500a014  dma_cfg zero, zero, r10, 10
001bfc  1f251000  addli r10, zero, 10
001c00  15008014  dma_cfg zero, zero, r8, 10
001c04  1f641000  addli r8, zero, 14
001c08  1500a014  dma_cfg zero, zero, r10, 10
001c0c  1f351000  addli r10, zero, 11
001c10  1500a014  dma_cfg zero, zero, r10, 10
001c14  1f451000  addli r10, zero, 12
001c18  1500a014  dma_cfg zero, zero, r10, 10
001c1c  1f551000  addli r10, zero, 13
001c20  1500a014  dma_cfg zero, zero, r10, 10
001c24  15008014  dma_cfg zero, zero, r8, 10
001c28  1f741000  addli r8, zero, 15
001c2c  15008014  dma_cfg zero, zero, r8, 10
001c30  1f142000  addli r8, zero, 17
001c34  15008015  dma_cfg zero, zero, r24, 10
001c38  15008014  dma_cfg zero, zero, r8, 10
001c3c  1f242000  addli r8, zero, 18
001c40  15008014  dma_cfg zero, zero, r8, 10
001c44  1f342000  addli r8, zero, 19
001c48  15008014  dma_cfg zero, zero, r8, 10
001c4c  1f442000  addli r8, zero, 20
001c50  15008014  dma_cfg zero, zero, r8, 10
001c54  1f542000  addli r8, zero, 21
001c58  15008014  dma_cfg zero, zero, r8, 10
001c5c  1f642000  addli r8, zero, 22
001c60  15008014  dma_cfg zero, zero, r8, 10
001c64  1f742000  addli r8, zero, 23
001c68  15008014  dma_cfg zero, zero, r8, 10
001c6c  1f043000  addli r8, zero, 24
001c70  15008014  dma_cfg zero, zero, r8, 10
001c74  1f143000  addli r8, zero, 25
001c78  15008014  dma_cfg zero, zero, r8, 10
001c7c  1f243000  addli r8, zero, 26
001c80  15008014  dma_cfg zero, zero, r8, 10
001c84  1f343000  addli r8, zero, 27
001c88  15008014  dma_cfg zero, zero, r8, 10
001c8c  1f443000  addli r8, zero, 28
001c90  15008014  dma_cfg zero, zero, r8, 10
001c94  1f543000  addli r8, zero, 29
001c98  15008014  dma_cfg zero, zero, r8, 10
001c9c  1f643000  addli r8, zero, 30
001ca0  15008014  dma_cfg zero, zero, r8, 10
001ca4  1f743000  addli r8, zero, 31
001ca8  15008014  dma_cfg zero, zero, r8, 10
001cac  958b0b00  dma_cfg r23, r23, zero, 0
001cb0  950b0002  dma_cfg r23, zero, zero, 1
001cb4  15000004  dma_cfg zero, zero, zero, 2
001cb8  95076007  dma_cfg r15, zero, r22, 3
001cbc  15013009  dma_cfg r2, zero, r19, 4
001cc0  9504400b  dma_cfg r9, zero, r20, 5
001cc4  15000010  dma_cfg zero, zero, zero, 8
001cc8  35000000  dma_run zero
001ccc  1500700b  dma_cfg zero, zero, r23, 5
001cd0  15000010  dma_cfg zero, zero, zero, 8
001cd4  1d900600  unlock r13
001cd8  7d800500  xsignal r11, 0
001cdc  5b57ffff  j -1352
001ce0  1f610000  addli r2, zero, 6
001ce4  1f054000  addli r10, zero, 32
001ce8  7d100100  xwait r2, 0
001cec  1f111000  addli r2, zero, 9
001cf0  7d100100  xwait r2, 0
001cf4  1d000000  lock zero, zero
001cf8  1f018000  addli r2, zero, 64
001cfc  81090000  ds_cfg r19, zero, 0
001d00  01010002  ds_cfg r2, zero, 1
001d04  0105001c  ds_cfg r10, zero, 14
001d08  0101001a  ds_cfg r2, zero, 13
001d0c  1f710000  addli r2, zero, 7
001d10  418aa704  shuffle_coa r20, r15, r10, 2
001d14  1d100000  unlock zero
001d18  7d000100  xsignal r2, 0
001d1c  1f011000  addli r2, zero, 8
001d20  7d000100  xsignal r2, 0
001d24  5b4effff  j -1424
001d28  1f410000  addli r2, zero, 4
001d2c  bb502900  bneq r18, r2, 52
001d30  7d100100  xwait r2, 0
001d34  1f011000  addli r2, zero, 8
001d38  9f150000  addli r11, zero, 1
001d3c  1f054000  addli r10, zero, 32
001d40  7d100100  xwait r2, 0
001d44  1f018000  addli r2, zero, 64
001d48  1d800500  lock zero, r11
001d4c  0901a500  mm_cfg r2, r10, r10, 0
001d50  8989b904  mm_cfg r19, r19, r11, 2
001d54  37600700  beq r14, zero, 24
001d58  a99c4611  mm_acc r25, r13, r20, 8
001d5c  db020000  j 20
001d60  1b011600  andi r2, r12, 1
001d64  bb6801fc  bneq r2, zero, -1480
001d68  db070000  j 60
001d6c  a98c4611  mm r25, r13, r20, 8
001d70  1f110000  addli r2, zero, 1
001d74  1f550000  addli r10, zero, 5
001d78  1f141000  addli r8, zero, 9
001d7c  1d100100  unlock r2
001d80  1b011600  andi r2, r12, 1
001d84  7d000500  xsignal r10, 0
001d88  7d000400  xsignal r8, 0
001d8c  3b4801fc  bneq r2, zero, -1520
001d90  db010000  j 12
001d94  9f400000  addli r1, zero, 4
001d98  3b301900  bneq r18, r1, 12
001d9c  9f201000  addli r1, zero, 10
001da0  7d800000  xsignal r1, 0
001da4  6305afff  loadli.w r10,  -48(r30)
001da8  e300dfff  loadli.w r1,  -24(r30)
001dac  1f110500  addli r2, r10, 1
001db0  9f930000  addli r7, r1, 1
001db4  670d2ffe  storeli.w r2, -48(r30)
001db8  1f310000  addli r2, zero, 3
001dbc  e70e7ffe  storeli.w r7, -24(r30)
001dc0  3b502900  bneq r18, r2, 20
001dc4  1f211000  addli r2, zero, 10
001dc8  7d100100  xwait r2, 0
001dcc  1f012000  addli r2, zero, 16
001dd0  7d100100  xwait r2, 0
001dd4  1f510000  addli r2, zero, 5
001dd8  9f73f001  addli r7, zero, 255
001ddc  3d000000  xfence
001de0  00a00300  mfence { lm, sm, gm }
001de4  8b902038  mod.s r1, r1, r2
001de8  2bd11700  lui r2, 381
001dec  80a20304  csr_set csr5, r7
001df0  1b110150  ori r2, r2, 1280
001df4  9bb0d000  slli r1, r1, 13
001df8  8b902010  add.s r1, r1, r2
001dfc  1f310000  addli r2, zero, 3
001e00  b3030128  zext_int2long r[8:9], r2
001e04  1f012fec  addli r2, r30, -2544
001e08  73307100  store.d r[8:9], 0(r2)
001e0c  00e00200  sync_core
001e10  3b360900  bneq r18, zero, 396
001e14  3d000000  xfence
001e18  b3030028  zext_int2long r[8:9], zero
001e1c  1f019fec  addli r2, r30, -2488
001e20  00a00300  mfence { lm, sm, gm }
001e24  73307100  store.d r[8:9], 0(r2)
001e28  5b040000  j 32
001e2c  1f012fec  addli r2, r30, -2544
001e30  eb530100  load.d r[8:9], 0(r2)
001e34  1f01afec  addli r2, r30, -2480
001e38  eb550100  load.d r[12:13], 0(r2)
001e3c  13a17504  setlt.ul r2, r[12:13], r[8:9]
001e40  a7930500  addli.d r[8:9], r[12:13], 1
001e44  37350100  beq r2, zero, 332
001e48  1f610000  addli r2, zero, 6
001e4c  9f04afec  addli r9, r30, -2480
001e50  97b52302  sll.d r[12:13], r[8:9], r2
001e54  1f019fec  addli r2, r30, -2488
001e58  73b07400  store.d r[8:9], 0(r9)
001e5c  6b570100  load.d r[15:16], 0(r2)
001e60  db040000  j 36
001e64  27470700  addli.d r[15:16], r[15:16], 4
001e68  8b942011  add.s r9, r1, r18
001e6c  13240703  setneq.d r8, r[15:16], r[17:18]
001e70  73e64401  stores.w r20, 12(r9)
001e74  73e42400  stores.w r2, 8(r9)
001e78  73e28401  stores.w r24, 4(r9)
001e7c  73e07400  stores.w r7, 0(r9)
001e80  b73e04fe  beq r8, zero, -84
001e84  8b23b710  add.ul r[8:9], r[15:16], r[12:13]
001e88  1bb92300  slli r18, r7, 2
001e8c  0b912c11  add.s r2, r25, r18
001e90  ef49c100  loads.w r19, 12(r2)
001e94  ef4b0100  loads.w r23, 0(r2)
001e98  6f4e4100  loads.w r28, 4(r2)
001e9c  6f4b8100  loads.w r22, 8(r2)
001ea0  978a3900  and r21, r19, r3
001ea4  13015205  setlt.u r2, r4, r21
001ea8  3b300100  bneq r2, zero, 12
001eac  1f8a0900  addli r20, r19, 0
001eb0  5b010000  j 8
001eb4  179aa901  or r20, r19, r26
001eb8  97063b00  and r13, r22, r3
001ebc  1301d204  setlt.u r2, r4, r13
001ec0  3b300100  bneq r2, zero, 12
001ec4  1f010b00  addli r2, r22, 0
001ec8  5b010000  j 8
001ecc  1711ab01  or r2, r22, r26
001ed0  17043e00  and r8, r28, r3
001ed4  93038204  setlt.u r7, r4, r8
001ed8  3bb00300  bneq r7, zero, 12
001edc  1f0c0e00  addli r24, r28, 0
001ee0  5b010000  j 8
001ee4  171cae01  or r24, r28, r26
001ee8  97843b00  and r9, r23, r3
001eec  93039204  setlt.u r7, r4, r9
001ef0  3bd00300  bneq r7, zero, 20
001ef4  9f830b00  addli r7, r23, 0
001ef8  93049304  setlt.u r9, r6, r9
001efc  37d00400  beq r9, zero, 20
001f00  db040000  j 36
001f04  9793ab01  or r7, r23, r26
001f08  93049304  setlt.u r9, r6, r9
001f0c  3be00400  bneq r9, zero, 24
001f10  9bc30b01  srli r7, r23, 16
001f14  9b831300  andi r7, r7, 1
001f18  8b937b10  add.s r7, r23, r7
001f1c  8b935310  add.s r7, r7, r5
001f20  9783b301  and r7, r7, r27
001f24  13048304  setlt.u r8, r6, r8
001f28  37600400  beq r8, zero, 24
001f2c  1304d304  setlt.u r8, r6, r13
001f30  b7300400  beq r8, zero, 44
001f34  13045305  setlt.u r8, r6, r21
001f38  bb3c04fe  bneq r8, zero, -212
001f3c  db070000  j 60
001f40  1b440e01  srli r8, r28, 16
001f44  1b041400  andi r8, r8, 1
001f48  0b148e10  add.s r8, r28, r8
001f4c  0b145410  add.s r8, r8, r5
001f50  170cb401  and r24, r8, r27
001f54  1304d304  setlt.u r8, r6, r13
001f58  3b7f04fe  bneq r8, zero, -36
001f5c  1b410b01  srli r2, r22, 16
001f60  1b011100  andi r2, r2, 1
001f64  0b112b10  add.s r2, r22, r2
001f68  0b115110  add.s r2, r2, r5
001f6c  1701b101  and r2, r2, r27
001f70  13045305  setlt.u r8, r6, r21
001f74  bb4b04fe  bneq r8, zero, -272
001f78  1bc40901  srli r8, r19, 16
001f7c  1b041400  andi r8, r8, 1
001f80  0b948910  add.s r8, r19, r8
001f84  0b145410  add.s r8, r8, r5
001f88  170ab401  and r20, r8, r27
001f8c  5bdbffff  j -296
001f90  00390002  core_id r18
001f94  9f290000  addli r19, zero, 2
001f98  00200100  mfence { sm }
001f9c  1f710000  addli r2, zero, 7
001fa0  674fafea  storeli.w r10, -2572(r30)
001fa4  b3030128  zext_int2long r[8:9], r2
001fa8  1f01afec  addli r2, r30, -2480
001fac  73307100  store.d r[8:9], 0(r2)
001fb0  1f110000  addli r2, zero, 1
001fb4  3b162900  bneq r18, r2, 388
001fb8  1f410000  addli r2, zero, 4
001fbc  3d000000  xfence
001fc0  00a00300  mfence { lm, sm, gm }
001fc4  b3030128  zext_int2long r[8:9], r2
001fc8  5b040000  j 32
001fcc  1f01afec  addli r2, r30, -2480
001fd0  eb530100  load.d r[8:9], 0(r2)
001fd4  1f019fec  addli r2, r30, -2488
001fd8  eb540100  load.d r[10:11], 0(r2)
001fdc  13a17404  setlt.ul r2, r[10:11], r[8:9]
001fe0  a7930400  addli.d r[8:9], r[10:11], 1
001fe4  37250100  beq r2, zero, 328
001fe8  9f049fec  addli r9, r30, -2488
001fec  1f610000  addli r2, zero, 6
001ff0  b3050028  zext_int2long r[12:13], zero
001ff4  73b07400  store.d r[8:9], 0(r9)
001ff8  97b42302  sll.d r[10:11], r[8:9], r2
001ffc  db040000  j 36
002000  a7c50500  addli.d r[12:13], r[12:13], 4
002004  0b94e010  add.s r8, r1, r14
002008  93a30503  setneq.d r7, r[12:13], r[17:18]
00200c  73662401  stores.w r18, 12(r8)
002010  73642400  stores.w r2, 8(r8)
002014  73625401  stores.w r21, 4(r8)
002018  73607401  stores.w r23, 0(r8)
00201c  b7ce03fe  beq r7, zero, -80
002020  8ba39510  add.ul r[8:9], r[12:13], r[10:11]
002024  1bb72300  slli r14, r7, 2
002028  0b91ec10  add.s r2, r25, r14
00202c  ef47c100  loads.w r15, 12(r2)
002030  6f4c0100  loads.w r24, 0(r2)
002034  6f4b4100  loads.w r22, 4(r2)
002038  6f4a8100  loads.w r20, 8(r2)
00203c  97893700  and r19, r15, r3
002040  13013205  setlt.u r2, r4, r19
002044  3b300100  bneq r2, zero, 12
002048  1f890700  addli r18, r15, 0
00204c  5b010000  j 8
002050  1799a701  or r18, r15, r26
002054  97063a00  and r13, r20, r3
002058  1301d204  setlt.u r2, r4, r13
00205c  3b300100  bneq r2, zero, 12
002060  1f010a00  addli r2, r20, 0
002064  5b010000  j 8
002068  1711aa01  or r2, r20, r26
00206c  170e3b00  and r28, r22, r3
002070  9303c205  setlt.u r7, r4, r28
002074  3bb00300  bneq r7, zero, 12
002078  9f0a0b00  addli r21, r22, 0
00207c  5b010000  j 8
002080  971aab01  or r21, r22, r26
002084  97033c00  and r7, r24, r3
002088  13047204  setlt.u r8, r4, r7
00208c  3b500400  bneq r8, zero, 20
002090  9f0b0c00  addli r23, r24, 0
002094  93037304  setlt.u r7, r6, r7
002098  37d00300  beq r7, zero, 20
00209c  db040000  j 36
0020a0  971bac01  or r23, r24, r26
0020a4  93037304  setlt.u r7, r6, r7
0020a8  3be00300  bneq r7, zero, 24
0020ac  9b430c01  srli r7, r24, 16
0020b0  9b831300  andi r7, r7, 1
0020b4  8b137c10  add.s r7, r24, r7
0020b8  8b935310  add.s r7, r7, r5
0020bc  978bb301  and r23, r7, r27
0020c0  9303c305  setlt.u r7, r6, r28
0020c4  37e00300  beq r7, zero, 24
0020c8  9303d304  setlt.u r7, r6, r13
0020cc  b7b00300  beq r7, zero, 44
0020d0  93033305  setlt.u r7, r6, r19
0020d4  bbbc03fe  bneq r7, zero, -212
0020d8  db070000  j 60
0020dc  9b430b01  srli r7, r22, 16
0020e0  9b831300  andi r7, r7, 1
0020e4  8b137b10  add.s r7, r22, r7
0020e8  8b935310  add.s r7, r7, r5
0020ec  978ab301  and r21, r7, r27
0020f0  9303d304  setlt.u r7, r6, r13
0020f4  3bff03fe  bneq r7, zero, -36
0020f8  1b410a01  srli r2, r20, 16
0020fc  1b011100  andi r2, r2, 1
002100  0b112a10  add.s r2, r20, r2
002104  0b115110  add.s r2, r2, r5
002108  1701b101  and r2, r2, r27
00210c  93033305  setlt.u r7, r6, r19
002110  bbcb03fe  bneq r7, zero, -272
002114  9bc30701  srli r7, r15, 16
002118  9b831300  andi r7, r7, 1
00211c  8b937710  add.s r7, r15, r7
002120  8b935310  add.s r7, r7, r5
002124  1789b301  and r18, r7, r27
002128  5bdbffff  j -296
00212c  00390002  core_id r18
002130  9f290000  addli r19, zero, 2
002134  00200100  mfence { sm }
002138  1f311000  addli r2, zero, 11
00213c  b3030128  zext_int2long r[8:9], r2
002140  1f019fec  addli r2, r30, -2488
002144  73307100  store.d r[8:9], 0(r2)
002148  3b163901  bneq r18, r19, 388
00214c  1f011000  addli r2, zero, 8
002150  3d000000  xfence
002154  00a00300  mfence { lm, sm, gm }
002158  b3030128  zext_int2long r[8:9], r2
00215c  5b040000  j 32
002160  1f019fec  addli r2, r30, -2488
002164  eb530100  load.d r[8:9], 0(r2)
002168  1f018fec  addli r2, r30, -2496
00216c  eb540100  load.d r[10:11], 0(r2)
002170  13a17404  setlt.ul r2, r[10:11], r[8:9]
002174  a7930400  addli.d r[8:9], r[10:11], 1
002178  37250100  beq r2, zero, 328
00217c  9f048fec  addli r9, r30, -2496
002180  1f610000  addli r2, zero, 6
002184  b3050028  zext_int2long r[12:13], zero
002188  73b07400  store.d r[8:9], 0(r9)
00218c  97b42302  sll.d r[10:11], r[8:9], r2
002190  db040000  j 36
002194  a7c50500  addli.d r[12:13], r[12:13], 4
002198  0b94e010  add.s r8, r1, r14
00219c  93a30503  setneq.d r7, r[12:13], r[17:18]
0021a0  73662401  stores.w r18, 12(r8)
0021a4  73642400  stores.w r2, 8(r8)
0021a8  73625401  stores.w r21, 4(r8)
0021ac  73607401  stores.w r23, 0(r8)
0021b0  b7ce03fe  beq r7, zero, -80
0021b4  8ba39510  add.ul r[8:9], r[12:13], r[10:11]
0021b8  1bb72300  slli r14, r7, 2
0021bc  0b91ec10  add.s r2, r25, r14
0021c0  ef47c100  loads.w r15, 12(r2)
0021c4  6f4c0100  loads.w r24, 0(r2)
0021c8  6f4b4100  loads.w r22, 4(r2)
0021cc  6f4a8100  loads.w r20, 8(r2)
0021d0  97893700  and r19, r15, r3
0021d4  13013205  setlt.u r2, r4, r19
0021d8  3b300100  bneq r2, zero, 12
0021dc  1f890700  addli r18, r15, 0
0021e0  5b010000  j 8
0021e4  1799a701  or r18, r15, r26
0021e8  97063a00  and r13, r20, r3
0021ec  1301d204  setlt.u r2, r4, r13
0021f0  3b300100  bneq r2, zero, 12
0021f4  1f010a00  addli r2, r20, 0
0021f8  5b010000  j 8
0021fc  1711aa01  or r2, r20, r26
002200  170e3b00  and r28, r22, r3
002204  9303c205  setlt.u r7, r4, r28
002208  3bb00300  bneq r7, zero, 12
00220c  9f0a0b00  addli r21, r22, 0
002210  5b010000  j 8
002214  971aab01  or r21, r22, r26
002218  97033c00  and r7, r24, r3
00221c  13047204  setlt.u r8, r4, r7
002220  3b500400  bneq r8, zero, 20
002224  9f0b0c00  addli r23, r24, 0
002228  93037304  setlt.u r7, r6, r7
00222c  37d00300  beq r7, zero, 20
002230  db040000  j 36
002234  971bac01  or r23, r24, r26
002238  93037304  setlt.u r7, r6, r7
00223c  3be00300  bneq r7, zero, 24
002240  9b430c01  srli r7, r24, 16
002244  9b831300  andi r7, r7, 1
002248  8b137c10  add.s r7, r24, r7
00224c  8b935310  add.s r7, r7, r5
002250  978bb301  and r23, r7, r27
002254  9303c305  setlt.u r7, r6, r28
002258  37e00300  beq r7, zero, 24
00225c  9303d304  setlt.u r7, r6, r13
002260  b7b00300  beq r7, zero, 44
002264  93033305  setlt.u r7, r6, r19
002268  bbbc03fe  bneq r7, zero, -212
00226c  db070000  j 60
002270  9b430b01  srli r7, r22, 16
002274  9b831300  andi r7, r7, 1
002278  8b137b10  add.s r7, r22, r7
00227c  8b935310  add.s r7, r7, r5
002280  978ab301  and r21, r7, r27
002284  9303d304  setlt.u r7, r6, r13
002288  3bff03fe  bneq r7, zero, -36
00228c  1b410a01  srli r2, r20, 16
002290  1b011100  andi r2, r2, 1
002294  0b112a10  add.s r2, r20, r2
002298  0b115110  add.s r2, r2, r5
00229c  1701b101  and r2, r2, r27
0022a0  93033305  setlt.u r7, r6, r19
0022a4  bbcb03fe  bneq r7, zero, -272
0022a8  9bc30701  srli r7, r15, 16
0022ac  9b831300  andi r7, r7, 1
0022b0  8b937710  add.s r7, r15, r7
0022b4  8b935310  add.s r7, r7, r5
0022b8  1789b301  and r18, r7, r27
0022bc  5bdbffff  j -296
0022c0  00390002  core_id r18
0022c4  9f290000  addli r19, zero, 2
0022c8  00200100  mfence { sm }
0022cc  1f711000  addli r2, zero, 15
0022d0  b3030128  zext_int2long r[8:9], r2
0022d4  1f018fec  addli r2, r30, -2496
0022d8  73307100  store.d r[8:9], 0(r2)
0022dc  1f310000  addli r2, zero, 3
0022e0  3b162900  bneq r18, r2, 388
0022e4  1f411000  addli r2, zero, 12
0022e8  3d000000  xfence
0022ec  00a00300  mfence { lm, sm, gm }
0022f0  b3030128  zext_int2long r[8:9], r2
0022f4  5b040000  j 32
0022f8  1f018fec  addli r2, r30, -2496
0022fc  eb530100  load.d r[8:9], 0(r2)
002300  1f017fec  addli r2, r30, -2504
002304  eb540100  load.d r[10:11], 0(r2)
002308  13a17404  setlt.ul r2, r[10:11], r[8:9]
00230c  a7930400  addli.d r[8:9], r[10:11], 1
002310  37250100  beq r2, zero, 328
002314  9f047fec  addli r9, r30, -2504
002318  1f610000  addli r2, zero, 6
00231c  b3050028  zext_int2long r[12:13], zero
002320  73b07400  store.d r[8:9], 0(r9)
002324  97b42302  sll.d r[10:11], r[8:9], r2
002328  db040000  j 36
00232c  a7c50500  addli.d r[12:13], r[12:13], 4
002330  0b94e010  add.s r8, r1, r14
002334  93a30503  setneq.d r7, r[12:13], r[17:18]
002338  73662401  stores.w r18, 12(r8)
00233c  73642400  stores.w r2, 8(r8)
002340  73625401  stores.w r21, 4(r8)
002344  73607401  stores.w r23, 0(r8)
002348  b7ce03fe  beq r7, zero, -80
00234c  8ba39510  add.ul r[8:9], r[12:13], r[10:11]
002350  1bb72300  slli r14, r7, 2
002354  0b91ec10  add.s r2, r25, r14
002358  ef47c100  loads.w r15, 12(r2)
00235c  6f4c0100  loads.w r24, 0(r2)
002360  6f4b4100  loads.w r22, 4(r2)
002364  6f4a8100  loads.w r20, 8(r2)
002368  97893700  and r19, r15, r3
00236c  13013205  setlt.u r2, r4, r19
002370  3b300100  bneq r2, zero, 12
002374  1f890700  addli r18, r15, 0
002378  5b010000  j 8
00237c  1799a701  or r18, r15, r26
002380  97063a00  and r13, r20, r3
002384  1301d204  setlt.u r2, r4, r13
002388  3b300100  bneq r2, zero, 12
00238c  1f010a00  addli r2, r20, 0
002390  5b010000  j 8
002394  1711aa01  or r2, r20, r26
002398  170e3b00  and r28, r22, r3
00239c  9303c205  setlt.u r7, r4, r28
0023a0  3bb00300  bneq r7, zero, 12
0023a4  9f0a0b00  addli r21, r22, 0
0023a8  5b010000  j 8
0023ac  971aab01  or r21, r22, r26
0023b0  97033c00  and r7, r24, r3
0023b4  13047204  setlt.u r8, r4, r7
0023b8  3b500400  bneq r8, zero, 20
0023bc  9f0b0c00  addli r23, r24, 0
0023c0  93037304  setlt.u r7, r6, r7
0023c4  37d00300  beq r7, zero, 20
0023c8  db040000  j 36
0023cc  971bac01  or r23, r24, r26
0023d0  93037304  setlt.u r7, r6, r7
0023d4  3be00300  bneq r7, zero, 24
0023d8  9b430c01  srli r7, r24, 16
0023dc  9b831300  andi r7, r7, 1
0023e0  8b137c10  add.s r7, r24, r7
0023e4  8b935310  add.s r7, r7, r5
0023e8  978bb301  and r23, r7, r27
0023ec  9303c305  setlt.u r7, r6, r28
0023f0  37e00300  beq r7, zero, 24
0023f4  9303d304  setlt.u r7, r6, r13
0023f8  b7b00300  beq r7, zero, 44
0023fc  93033305  setlt.u r7, r6, r19
002400  bbbc03fe  bneq r7, zero, -212
002404  db070000  j 60
002408  9b430b01  srli r7, r22, 16
00240c  9b831300  andi r7, r7, 1
002410  8b137b10  add.s r7, r22, r7
002414  8b935310  add.s r7, r7, r5
002418  978ab301  and r21, r7, r27
00241c  9303d304  setlt.u r7, r6, r13
002420  3bff03fe  bneq r7, zero, -36
002424  1b410a01  srli r2, r20, 16
002428  1b011100  andi r2, r2, 1
00242c  0b112a10  add.s r2, r20, r2
002430  0b115110  add.s r2, r2, r5
002434  1701b101  and r2, r2, r27
002438  93033305  setlt.u r7, r6, r19
00243c  bbcb03fe  bneq r7, zero, -272
002440  9bc30701  srli r7, r15, 16
002444  9b831300  andi r7, r7, 1
002448  8b937710  add.s r7, r15, r7
00244c  8b935310  add.s r7, r7, r5
002450  1789b301  and r18, r7, r27
002454  5bdbffff  j -296
002458  00390002  core_id r18
00245c  9f290000  addli r19, zero, 2
002460  00200100  mfence { sm }
002464  1f312000  addli r2, zero, 19
002468  b3030128  zext_int2long r[8:9], r2
00246c  1f017fec  addli r2, r30, -2504
002470  73307100  store.d r[8:9], 0(r2)
002474  1f410000  addli r2, zero, 4
002478  3b162900  bneq r18, r2, 388
00247c  1f012000  addli r2, zero, 16
002480  3d000000  xfence
002484  00a00300  mfence { lm, sm, gm }
002488  b3030128  zext_int2long r[8:9], r2
00248c  5b040000  j 32
002490  1f017fec  addli r2, r30, -2504
002494  eb530100  load.d r[8:9], 0(r2)
002498  1f016fec  addli r2, r30, -2512
00249c  eb540100  load.d r[10:11], 0(r2)
0024a0  13a17404  setlt.ul r2, r[10:11], r[8:9]
0024a4  a7930400  addli.d r[8:9], r[10:11], 1
0024a8  37250100  beq r2, zero, 328
0024ac  9f046fec  addli r9, r30, -2512
0024b0  1f610000  addli r2, zero, 6
0024b4  b3050028  zext_int2long r[12:13], zero
0024b8  73b07400  store.d r[8:9], 0(r9)
0024bc  97b42302  sll.d r[10:11], r[8:9], r2
0024c0  db040000  j 36
0024c4  a7c50500  addli.d r[12:13], r[12:13], 4
0024c8  0b94e010  add.s r8, r1, r14
0024cc  93a30503  setneq.d r7, r[12:13], r[17:18]
0024d0  73662401  stores.w r18, 12(r8)
0024d4  73642400  stores.w r2, 8(r8)
0024d8  73625401  stores.w r21, 4(r8)
0024dc  73607401  stores.w r23, 0(r8)
0024e0  b7ce03fe  beq r7, zero, -80
0024e4  8ba39510  add.ul r[8:9], r[12:13], r[10:11]
0024e8  1bb72300  slli r14, r7, 2
0024ec  0b91ec10  add.s r2, r25, r14
0024f0  ef47c100  loads.w r15, 12(r2)
0024f4  6f4c0100  loads.w r24, 0(r2)
0024f8  6f4b4100  loads.w r22, 4(r2)
0024fc  6f4a8100  loads.w r20, 8(r2)
002500  97893700  and r19, r15, r3
002504  13013205  setlt.u r2, r4, r19
002508  3b300100  bneq r2, zero, 12
00250c  1f890700  addli r18, r15, 0
002510  5b010000  j 8
002514  1799a701  or r18, r15, r26
002518  97063a00  and r13, r20, r3
00251c  1301d204  setlt.u r2, r4, r13
002520  3b300100  bneq r2, zero, 12
002524  1f010a00  addli r2, r20, 0
002528  5b010000  j 8
00252c  1711aa01  or r2, r20, r26
002530  170e3b00  and r28, r22, r3
002534  9303c205  setlt.u r7, r4, r28
002538  3bb00300  bneq r7, zero, 12
00253c  9f0a0b00  addli r21, r22, 0
002540  5b010000  j 8
002544  971aab01  or r21, r22, r26
002548  97033c00  and r7, r24, r3
00254c  13047204  setlt.u r8, r4, r7
002550  3b500400  bneq r8, zero, 20
002554  9f0b0c00  addli r23, r24, 0
002558  93037304  setlt.u r7, r6, r7
00255c  37d00300  beq r7, zero, 20
002560  db040000  j 36
002564  971bac01  or r23, r24, r26
002568  93037304  setlt.u r7, r6, r7
00256c  3be00300  bneq r7, zero, 24
002570  9b430c01  srli r7, r24, 16
002574  9b831300  andi r7, r7, 1
002578  8b137c10  add.s r7, r24, r7
00257c  8b935310  add.s r7, r7, r5
002580  978bb301  and r23, r7, r27
002584  9303c305  setlt.u r7, r6, r28
002588  37e00300  beq r7, zero, 24
00258c  9303d304  setlt.u r7, r6, r13
002590  b7b00300  beq r7, zero, 44
002594  93033305  setlt.u r7, r6, r19
002598  bbbc03fe  bneq r7, zero, -212
00259c  db070000  j 60
0025a0  9b430b01  srli r7, r22, 16
0025a4  9b831300  andi r7, r7, 1
0025a8  8b137b10  add.s r7, r22, r7
0025ac  8b935310  add.s r7, r7, r5
0025b0  978ab301  and r21, r7, r27
0025b4  9303d304  setlt.u r7, r6, r13
0025b8  3bff03fe  bneq r7, zero, -36
0025bc  1b410a01  srli r2, r20, 16
0025c0  1b011100  andi r2, r2, 1
0025c4  0b112a10  add.s r2, r20, r2
0025c8  0b115110  add.s r2, r2, r5
0025cc  1701b101  and r2, r2, r27
0025d0  93033305  setlt.u r7, r6, r19
0025d4  bbcb03fe  bneq r7, zero, -272
0025d8  9bc30701  srli r7, r15, 16
0025dc  9b831300  andi r7, r7, 1
0025e0  8b937710  add.s r7, r15, r7
0025e4  8b935310  add.s r7, r7, r5
0025e8  1789b301  and r18, r7, r27
0025ec  5bdbffff  j -296
0025f0  00390002  core_id r18
0025f4  9f290000  addli r19, zero, 2
0025f8  00200100  mfence { sm }
0025fc  1f712000  addli r2, zero, 23
002600  b3030128  zext_int2long r[8:9], r2
002604  1f016fec  addli r2, r30, -2512
002608  73307100  store.d r[8:9], 0(r2)
00260c  1f510000  addli r2, zero, 5
002610  3b162900  bneq r18, r2, 388
002614  1f412000  addli r2, zero, 20
002618  3d000000  xfence
00261c  00a00300  mfence { lm, sm, gm }
002620  b3030128  zext_int2long r[8:9], r2
002624  5b040000  j 32
002628  1f016fec  addli r2, r30, -2512
00262c  eb530100  load.d r[8:9], 0(r2)
002630  1f015fec  addli r2, r30, -2520
002634  eb540100  load.d r[10:11], 0(r2)
002638  13a17404  setlt.ul r2, r[10:11], r[8:9]
00263c  a7930400  addli.d r[8:9], r[10:11], 1
002640  37250100  beq r2, zero, 328
002644  9f045fec  addli r9, r30, -2520
002648  1f610000  addli r2, zero, 6
00264c  b3050028  zext_int2long r[12:13], zero
002650  73b07400  store.d r[8:9], 0(r9)
002654  97b42302  sll.d r[10:11], r[8:9], r2
002658  db040000  j 36
00265c  a7c50500  addli.d r[12:13], r[12:13], 4
002660  0b94e010  add.s r8, r1, r14
002664  93a30503  setneq.d r7, r[12:13], r[17:18]
002668  73662401  stores.w r18, 12(r8)
00266c  73642400  stores.w r2, 8(r8)
002670  73625401  stores.w r21, 4(r8)
002674  73607401  stores.w r23, 0(r8)
002678  b7ce03fe  beq r7, zero, -80
00267c  8ba39510  add.ul r[8:9], r[12:13], r[10:11]
002680  1bb72300  slli r14, r7, 2
002684  0b91ec10  add.s r2, r25, r14
002688  ef47c100  loads.w r15, 12(r2)
00268c  6f4c0100  loads.w r24, 0(r2)
002690  6f4b4100  loads.w r22, 4(r2)
002694  6f4a8100  loads.w r20, 8(r2)
002698  97893700  and r19, r15, r3
00269c  13013205  setlt.u r2, r4, r19
0026a0  3b300100  bneq r2, zero, 12
0026a4  1f890700  addli r18, r15, 0
0026a8  5b010000  j 8
0026ac  1799a701  or r18, r15, r26
0026b0  97063a00  and r13, r20, r3
0026b4  1301d204  setlt.u r2, r4, r13
0026b8  3b300100  bneq r2, zero, 12
0026bc  1f010a00  addli r2, r20, 0
0026c0  5b010000  j 8
0026c4  1711aa01  or r2, r20, r26
0026c8  170e3b00  and r28, r22, r3
0026cc  9303c205  setlt.u r7, r4, r28
0026d0  3bb00300  bneq r7, zero, 12
0026d4  9f0a0b00  addli r21, r22, 0
0026d8  5b010000  j 8
0026dc  971aab01  or r21, r22, r26
0026e0  97033c00  and r7, r24, r3
0026e4  13047204  setlt.u r8, r4, r7
0026e8  3b500400  bneq r8, zero, 20
0026ec  9f0b0c00  addli r23, r24, 0
0026f0  93037304  setlt.u r7, r6, r7
0026f4  37d00300  beq r7, zero, 20
0026f8  db040000  j 36
0026fc  971bac01  or r23, r24, r26
002700  93037304  setlt.u r7, r6, r7
002704  3be00300  bneq r7, zero, 24
002708  9b430c01  srli r7, r24, 16
00270c  9b831300  andi r7, r7, 1
002710  8b137c10  add.s r7, r24, r7
002714  8b935310  add.s r7, r7, r5
002718  978bb301  and r23, r7, r27
00271c  9303c305  setlt.u r7, r6, r28
002720  37e00300  beq r7, zero, 24
002724  9303d304  setlt.u r7, r6, r13
002728  b7b00300  beq r7, zero, 44
00272c  93033305  setlt.u r7, r6, r19
002730  bbbc03fe  bneq r7, zero, -212
002734  db070000  j 60
002738  9b430b01  srli r7, r22, 16
00273c  9b831300  andi r7, r7, 1
002740  8b137b10  add.s r7, r22, r7
002744  8b935310  add.s r7, r7, r5
002748  978ab301  and r21, r7, r27
00274c  9303d304  setlt.u r7, r6, r13
002750  3bff03fe  bneq r7, zero, -36
002754  1b410a01  srli r2, r20, 16
002758  1b011100  andi r2, r2, 1
00275c  0b112a10  add.s r2, r20, r2
002760  0b115110  add.s r2, r2, r5
002764  1701b101  and r2, r2, r27
002768  93033305  setlt.u r7, r6, r19
00276c  bbcb03fe  bneq r7, zero, -272
002770  9bc30701  srli r7, r15, 16
002774  9b831300  andi r7, r7, 1
002778  8b937710  add.s r7, r15, r7
00277c  8b935310  add.s r7, r7, r5
002780  1789b301  and r18, r7, r27
002784  5bdbffff  j -296
002788  00390002  core_id r18
00278c  9f290000  addli r19, zero, 2
002790  00200100  mfence { sm }
002794  1f313000  addli r2, zero, 27
002798  b3030128  zext_int2long r[8:9], r2
00279c  1f015fec  addli r2, r30, -2520
0027a0  73307100  store.d r[8:9], 0(r2)
0027a4  1f610000  addli r2, zero, 6
0027a8  3b162900  bneq r18, r2, 388
0027ac  1f013000  addli r2, zero, 24
0027b0  3d000000  xfence
0027b4  00a00300  mfence { lm, sm, gm }
0027b8  b3030128  zext_int2long r[8:9], r2
0027bc  5b040000  j 32
0027c0  1f015fec  addli r2, r30, -2520
0027c4  eb530100  load.d r[8:9], 0(r2)
0027c8  1f014fec  addli r2, r30, -2528
0027cc  eb540100  load.d r[10:11], 0(r2)
0027d0  13a17404  setlt.ul r2, r[10:11], r[8:9]
0027d4  a7930400  addli.d r[8:9], r[10:11], 1
0027d8  37250100  beq r2, zero, 328
0027dc  9f044fec  addli r9, r30, -2528
0027e0  1f610000  addli r2, zero, 6
0027e4  33070028  zext_int2long r[15:16], zero
0027e8  73b07400  store.d r[8:9], 0(r9)
0027ec  97b42302  sll.d r[10:11], r[8:9], r2
0027f0  db040000  j 36
0027f4  27470700  addli.d r[15:16], r[15:16], 4
0027f8  0b942011  add.s r8, r1, r18
0027fc  93230703  setneq.d r7, r[15:16], r[17:18]
002800  73664401  stores.w r20, 12(r8)
002804  73642400  stores.w r2, 8(r8)
002808  7362c400  stores.w r12, 4(r8)
00280c  73607401  stores.w r23, 0(r8)
002810  b7ce03fe  beq r7, zero, -80
002814  8b239710  add.ul r[8:9], r[15:16], r[10:11]
002818  1bb92300  slli r18, r7, 2
00281c  0b912c11  add.s r2, r25, r18
002820  ef49c100  loads.w r19, 12(r2)
002824  6f4c0100  loads.w r24, 0(r2)
002828  6f4b4100  loads.w r22, 4(r2)
00282c  ef458100  loads.w r11, 8(r2)
002830  978a3900  and r21, r19, r3
002834  13015205  setlt.u r2, r4, r21
002838  3b300100  bneq r2, zero, 12
00283c  1f8a0900  addli r20, r19, 0
002840  5b010000  j 8
002844  179aa901  or r20, r19, r26
002848  97863500  and r13, r11, r3
00284c  1301d204  setlt.u r2, r4, r13
002850  3b300100  bneq r2, zero, 12
002854  1f810500  addli r2, r11, 0
002858  5b010000  j 8
00285c  1791a501  or r2, r11, r26
002860  170e3b00  and r28, r22, r3
002864  9303c205  setlt.u r7, r4, r28
002868  3bb00300  bneq r7, zero, 12
00286c  1f060b00  addli r12, r22, 0
002870  5b010000  j 8
002874  1716ab01  or r12, r22, r26
002878  97033c00  and r7, r24, r3
00287c  13047204  setlt.u r8, r4, r7
002880  3b500400  bneq r8, zero, 20
002884  9f0b0c00  addli r23, r24, 0
002888  93037304  setlt.u r7, r6, r7
00288c  37d00300  beq r7, zero, 20
002890  db040000  j 36
002894  971bac01  or r23, r24, r26
002898  93037304  setlt.u r7, r6, r7
00289c  3be00300  bneq r7, zero, 24
0028a0  9b430c01  srli r7, r24, 16
0028a4  9b831300  andi r7, r7, 1
0028a8  8b137c10  add.s r7, r24, r7
0028ac  8b935310  add.s r7, r7, r5
0028b0  978bb301  and r23, r7, r27
0028b4  9303c305  setlt.u r7, r6, r28
0028b8  37e00300  beq r7, zero, 24
0028bc  9303d304  setlt.u r7, r6, r13
0028c0  b7b00300  beq r7, zero, 44
0028c4  93035305  setlt.u r7, r6, r21
0028c8  bbbc03fe  bneq r7, zero, -212
0028cc  db070000  j 60
0028d0  9b430b01  srli r7, r22, 16
0028d4  9b831300  andi r7, r7, 1
0028d8  8b137b10  add.s r7, r22, r7
0028dc  8b935310  add.s r7, r7, r5
0028e0  1786b301  and r12, r7, r27
0028e4  9303d304  setlt.u r7, r6, r13
0028e8  3bff03fe  bneq r7, zero, -36
0028ec  1bc10501  srli r2, r11, 16
0028f0  1b011100  andi r2, r2, 1
0028f4  0b912510  add.s r2, r11, r2
0028f8  0b115110  add.s r2, r2, r5
0028fc  1701b101  and r2, r2, r27
002900  93035305  setlt.u r7, r6, r21
002904  bbcb03fe  bneq r7, zero, -272
002908  9bc30901  srli r7, r19, 16
00290c  9b831300  andi r7, r7, 1
002910  8b937910  add.s r7, r19, r7
002914  8b935310  add.s r7, r7, r5
002918  178ab301  and r20, r7, r27
00291c  5bdbffff  j -296
002920  00390002  core_id r18
002924  9f290000  addli r19, zero, 2
002928  00200100  mfence { sm }
00292c  1f713000  addli r2, zero, 31
002930  b3030128  zext_int2long r[8:9], r2
002934  1f014fec  addli r2, r30, -2528
002938  73307100  store.d r[8:9], 0(r2)
00293c  1f710000  addli r2, zero, 7
002940  3b162900  bneq r18, r2, 388
002944  1f413000  addli r2, zero, 28
002948  3d000000  xfence
00294c  00a00300  mfence { lm, sm, gm }
002950  b3030128  zext_int2long r[8:9], r2
002954  5b040000  j 32
002958  1f014fec  addli r2, r30, -2528
00295c  eb530100  load.d r[8:9], 0(r2)
002960  1f013fec  addli r2, r30, -2536
002964  eb540100  load.d r[10:11], 0(r2)
002968  13a17404  setlt.ul r2, r[10:11], r[8:9]
00296c  a7930400  addli.d r[8:9], r[10:11], 1
002970  37250100  beq r2, zero, 328
002974  1f610000  addli r2, zero, 6
002978  9f043fec  addli r9, r30, -2536
00297c  33090028  zext_int2long r[19:20], zero
002980  17b72302  sll.d r[15:16], r[8:9], r2
002984  73b07400  store.d r[8:9], 0(r9)
002988  db040000  j 36
00298c  27490900  addli.d r[19:20], r[19:20], 4
002990  8b944011  add.s r9, r1, r20
002994  93230903  setneq.d r7, r[19:20], r[17:18]
002998  73e66401  stores.w r22, 12(r9)
00299c  73e42400  stores.w r2, 8(r9)
0029a0  73e2c400  stores.w r12, 4(r9)
0029a4  73e08400  stores.w r8, 0(r9)
0029a8  b7ce03fe  beq r7, zero, -80
0029ac  8b23e910  add.ul r[8:9], r[19:20], r[15:16]
0029b0  1bba2300  slli r20, r7, 2
0029b4  0b914c11  add.s r2, r25, r20
0029b8  ef4ac100  loads.w r21, 12(r2)
0029bc  ef4b0100  loads.w r23, 0(r2)
0029c0  ef434100  loads.w r7, 4(r2)
0029c4  ef458100  loads.w r11, 8(r2)
0029c8  178c3a00  and r24, r21, r3
0029cc  13018205  setlt.u r2, r4, r24
0029d0  3b300100  bneq r2, zero, 12
0029d4  1f8b0a00  addli r22, r21, 0
0029d8  5b010000  j 8
0029dc  179baa01  or r22, r21, r26
0029e0  97863500  and r13, r11, r3
0029e4  1301d204  setlt.u r2, r4, r13
0029e8  3b300100  bneq r2, zero, 12
0029ec  1f810500  addli r2, r11, 0
0029f0  5b010000  j 8
0029f4  1791a501  or r2, r11, r26
0029f8  178e3300  and r28, r7, r3
0029fc  1304c205  setlt.u r8, r4, r28
002a00  3b300400  bneq r8, zero, 12
002a04  1f860300  addli r12, r7, 0
002a08  5b010000  j 8
002a0c  1796a301  or r12, r7, r26
002a10  97843b00  and r9, r23, r3
002a14  13049204  setlt.u r8, r4, r9
002a18  3b500400  bneq r8, zero, 20
002a1c  1f840b00  addli r8, r23, 0
002a20  93049304  setlt.u r9, r6, r9
002a24  37d00400  beq r9, zero, 20
002a28  db040000  j 36
002a2c  1794ab01  or r8, r23, r26
002a30  93049304  setlt.u r9, r6, r9
002a34  3be00400  bneq r9, zero, 24
002a38  1bc40b01  srli r8, r23, 16
002a3c  1b041400  andi r8, r8, 1
002a40  0b948b10  add.s r8, r23, r8
002a44  0b145410  add.s r8, r8, r5
002a48  1704b401  and r8, r8, r27
002a4c  9304c305  setlt.u r9, r6, r28
002a50  37e00400  beq r9, zero, 24
002a54  9303d304  setlt.u r7, r6, r13
002a58  b7b00300  beq r7, zero, 44
002a5c  93038305  setlt.u r7, r6, r24
002a60  bbbc03fe  bneq r7, zero, -212
002a64  db070000  j 60
002a68  9bc40301  srli r9, r7, 16
002a6c  9b841400  andi r9, r9, 1
002a70  8b939310  add.s r7, r7, r9
002a74  8b935310  add.s r7, r7, r5
002a78  1786b301  and r12, r7, r27
002a7c  9303d304  setlt.u r7, r6, r13
002a80  3bff03fe  bneq r7, zero, -36
002a84  1bc10501  srli r2, r11, 16
002a88  1b011100  andi r2, r2, 1
002a8c  0b912510  add.s r2, r11, r2
002a90  0b115110  add.s r2, r2, r5
002a94  1701b101  and r2, r2, r27
002a98  93038305  setlt.u r7, r6, r24
002a9c  bbcb03fe  bneq r7, zero, -272
002aa0  9bc30a01  srli r7, r21, 16
002aa4  9b831300  andi r7, r7, 1
002aa8  8b937a10  add.s r7, r21, r7
002aac  8b935310  add.s r7, r7, r5
002ab0  178bb301  and r22, r7, r27
002ab4  5bdbffff  j -296
002ab8  00390002  core_id r18
002abc  9f290000  addli r19, zero, 2
002ac0  00200100  mfence { sm }
002ac4  63011fec  loadli.w r2,  -2552(r30)
002ac8  b3030128  zext_int2long r[8:9], r2
002acc  1f018007  addli r2, zero, 960
002ad0  b3040128  zext_int2long r[10:11], r2
002ad4  1f01cfeb  addli r2, r30, -2592
002ad8  8ba49340  min.ul r[10:11], r[8:9], r[10:11]
002adc  a7848400  addli.d r[10:11], r[10:11], 64
002ae0  8ba47448  max.ul r[10:11], r[10:11], r[8:9]
002ae4  8bb37418  sub.sl r[8:9], r[10:11], r[8:9]
002ae8  8ba30341  min.ul r[8:9], r[8:9], r[17:18]
002aec  73307100  store.d r[8:9], 0(r2)
002af0  1f71f001  addli r2, zero, 255
002af4  80220104  csr_set csr5, r2
002af8  1f310000  addli r2, zero, 3
002afc  00e00200  sync_core
002b00  bb102900  bneq r18, r2, 36
002b04  1f311000  addli r2, zero, 11
002b08  9f631000  addli r7, zero, 14
002b0c  7d000100  xsignal r2, 0
002b10  7d800300  xsignal r7, 0
002b14  7d100100  xwait r2, 0
002b18  1f711000  addli r2, zero, 15
002b1c  7d100100  xwait r2, 0
002b20  db6a0000  j 852
002b24  e344efeb  loadli.w r9,  -2572(r30)
002b28  9f530000  addli r7, zero, 5
002b2c  2bd41700  lui r8, 381
002b30  9f160000  addli r13, zero, 1
002b34  1f262000  addli r12, zero, 18
002b38  0b917438  mod.s r2, r9, r7
002b3c  1b318100  slli r2, r2, 8
002b40  0b1c8110  add.s r24, r2, r8
002b44  3b5bd900  bneq r18, r13, 724
002b48  1f05dfeb  addli r10, r30, -2584
002b4c  1f870400  addli r14, r9, 0
002b50  9f450000  addli r11, zero, 4
002b54  eb530500  load.d r[8:9], 0(r10)
002b58  eb540f01  load.d r[10:11], 16(r30)
002b5c  7d100600  xwait r12, 0
002b60  97b3d302  sll.d r[8:9], r[8:9], r13
002b64  8ba37410  add.ul r[8:9], r[10:11], r[8:9]
002b68  bfb4e500  blt.s r11, r14, 300
002b6c  1f550000  addli r10, zero, 5
002b70  9f340000  addli r9, zero, 3
002b74  1d000500  lock zero, r10
002b78  15000014  dma_cfg zero, zero, zero, 10
002b7c  1500d014  dma_cfg zero, zero, r13, 10
002b80  15003015  dma_cfg zero, zero, r19, 10
002b84  15009014  dma_cfg zero, zero, r9, 10
002b88  9f640000  addli r9, zero, 6
002b8c  1500b014  dma_cfg zero, zero, r11, 10
002b90  1500a014  dma_cfg zero, zero, r10, 10
002b94  15009014  dma_cfg zero, zero, r9, 10
002b98  9f740000  addli r9, zero, 7
002b9c  15009014  dma_cfg zero, zero, r9, 10
002ba0  9f041000  addli r9, zero, 8
002ba4  15009014  dma_cfg zero, zero, r9, 10
002ba8  9f141000  addli r9, zero, 9
002bac  15009014  dma_cfg zero, zero, r9, 10
002bb0  9f241000  addli r9, zero, 10
002bb4  15009014  dma_cfg zero, zero, r9, 10
002bb8  9f341000  addli r9, zero, 11
002bbc  15009014  dma_cfg zero, zero, r9, 10
002bc0  9f441000  addli r9, zero, 12
002bc4  15009014  dma_cfg zero, zero, r9, 10
002bc8  9f541000  addli r9, zero, 13
002bcc  15009014  dma_cfg zero, zero, r9, 10
002bd0  9f641000  addli r9, zero, 14
002bd4  15009014  dma_cfg zero, zero, r9, 10
002bd8  9f741000  addli r9, zero, 15
002bdc  15009014  dma_cfg zero, zero, r9, 10
002be0  9f042000  addli r9, zero, 16
002be4  15009014  dma_cfg zero, zero, r9, 10
002be8  9f142000  addli r9, zero, 17
002bec  15009014  dma_cfg zero, zero, r9, 10
002bf0  9f342000  addli r9, zero, 19
002bf4  1500c014  dma_cfg zero, zero, r12, 10
002bf8  15009014  dma_cfg zero, zero, r9, 10
002bfc  9f442000  addli r9, zero, 20
002c00  15009014  dma_cfg zero, zero, r9, 10
002c04  9f542000  addli r9, zero, 21
002c08  15009014  dma_cfg zero, zero, r9, 10
002c0c  9f642000  addli r9, zero, 22
002c10  15009014  dma_cfg zero, zero, r9, 10
002c14  9f742000  addli r9, zero, 23
002c18  15009014  dma_cfg zero, zero, r9, 10
002c1c  9f043000  addli r9, zero, 24
002c20  15009014  dma_cfg zero, zero, r9, 10
002c24  9f143000  addli r9, zero, 25
002c28  15009014  dma_cfg zero, zero, r9, 10
002c2c  9f243000  addli r9, zero, 26
002c30  15009014  dma_cfg zero, zero, r9, 10
002c34  9f343000  addli r9, zero, 27
002c38  15009014  dma_cfg zero, zero, r9, 10
002c3c  9f443000  addli r9, zero, 28
002c40  15009014  dma_cfg zero, zero, r9, 10
002c44  9f543000  addli r9, zero, 29
002c48  15009014  dma_cfg zero, zero, r9, 10
002c4c  9f643000  addli r9, zero, 30
002c50  15009014  dma_cfg zero, zero, r9, 10
002c54  9f743000  addli r9, zero, 31
002c58  15009014  dma_cfg zero, zero, r9, 10
002c5c  9f048000  addli r9, zero, 64
002c60  95860600  dma_cfg r13, r13, zero, 0
002c64  95060002  dma_cfg r13, zero, zero, 1
002c68  15000004  dma_cfg zero, zero, zero, 2
002c6c  150c9006  dma_cfg r24, zero, r9, 3
002c70  9f040001  addli r9, zero, 128
002c74  95043009  dma_cfg r9, zero, r19, 4
002c78  9f040002  addli r9, zero, 256
002c7c  9504d00a  dma_cfg r9, zero, r13, 5
002c80  15000010  dma_cfg zero, zero, zero, 8
002c84  35000000  dma_run zero
002c88  1500d00a  dma_cfg zero, zero, r13, 5
002c8c  15000010  dma_cfg zero, zero, zero, 8
002c90  1d100500  unlock r10
002c94  abd41700  lui r9, 381
002c98  1d800500  lock zero, r11
002c9c  1f068000  addli r12, zero, 64
002ca0  1f550000  addli r10, zero, 5
002ca4  95860600  dma_cfg r13, r13, zero, 0
002ca8  9b940404  ori r9, r9, 64
002cac  15000404  dma_cfg zero, r8, zero, 2
002cb0  0b119110  add.s r2, r2, r9
002cb4  9f04cfeb  addli r9, r30, -2592
002cb8  6bd70400  load.d r[15:16], 0(r9)
002cbc  1581c306  dma_cfg r2, r7, r12, 3
002cc0  1f040001  addli r8, zero, 128
002cc4  9f743700  addli r9, r14, 31
002cc8  9b331700  slli r7, r14, 1
002ccc  1f070002  addli r14, zero, 256
002cd0  9f272000  addli r15, zero, 18
002cd4  1bc15400  srli r2, r9, 5
002cd8  9b83e303  andi r7, r7, 62
002cdc  9f340000  addli r9, zero, 3
002ce0  15042608  dma_cfg r8, r12, r2, 4
002ce4  1507d40a  dma_cfg r14, r8, r13, 5
002ce8  15007010  dma_cfg zero, zero, r7, 8
002cec  35000000  dma_run zero
002cf0  1500d00a  dma_cfg zero, zero, r13, 5
002cf4  15000010  dma_cfg zero, zero, zero, 8
002cf8  1d900500  unlock r11
002cfc  1d000500  lock zero, r10
002d00  15000014  dma_cfg zero, zero, zero, 10
002d04  1500d014  dma_cfg zero, zero, r13, 10
002d08  15003015  dma_cfg zero, zero, r19, 10
002d0c  15009014  dma_cfg zero, zero, r9, 10
002d10  9f640000  addli r9, zero, 6
002d14  1500b014  dma_cfg zero, zero, r11, 10
002d18  9f152000  addli r11, zero, 17
002d1c  1500a014  dma_cfg zero, zero, r10, 10
002d20  15009014  dma_cfg zero, zero, r9, 10
002d24  9f740000  addli r9, zero, 7
002d28  15009014  dma_cfg zero, zero, r9, 10
002d2c  9f041000  addli r9, zero, 8
002d30  15009014  dma_cfg zero, zero, r9, 10
002d34  9f141000  addli r9, zero, 9
002d38  15009014  dma_cfg zero, zero, r9, 10
002d3c  9f241000  addli r9, zero, 10
002d40  15009014  dma_cfg zero, zero, r9, 10
002d44  9f341000  addli r9, zero, 11
002d48  15009014  dma_cfg zero, zero, r9, 10
002d4c  9f441000  addli r9, zero, 12
002d50  15009014  dma_cfg zero, zero, r9, 10
002d54  9f541000  addli r9, zero, 13
002d58  15009014  dma_cfg zero, zero, r9, 10
002d5c  9f641000  addli r9, zero, 14
002d60  15009014  dma_cfg zero, zero, r9, 10
002d64  9f741000  addli r9, zero, 15
002d68  15009014  dma_cfg zero, zero, r9, 10
002d6c  9f042000  addli r9, zero, 16
002d70  15009014  dma_cfg zero, zero, r9, 10
002d74  9f342000  addli r9, zero, 19
002d78  1500b014  dma_cfg zero, zero, r11, 10
002d7c  1500f014  dma_cfg zero, zero, r15, 10
002d80  15009014  dma_cfg zero, zero, r9, 10
002d84  9f442000  addli r9, zero, 20
002d88  15009014  dma_cfg zero, zero, r9, 10
002d8c  9f542000  addli r9, zero, 21
002d90  15009014  dma_cfg zero, zero, r9, 10
002d94  9f642000  addli r9, zero, 22
002d98  15009014  dma_cfg zero, zero, r9, 10
002d9c  9f742000  addli r9, zero, 23
002da0  15009014  dma_cfg zero, zero, r9, 10
002da4  9f043000  addli r9, zero, 24
002da8  15009014  dma_cfg zero, zero, r9, 10
002dac  9f143000  addli r9, zero, 25
002db0  15009014  dma_cfg zero, zero, r9, 10
002db4  9f243000  addli r9, zero, 26
002db8  15009014  dma_cfg zero, zero, r9, 10
002dbc  9f343000  addli r9, zero, 27
002dc0  15009014  dma_cfg zero, zero, r9, 10
002dc4  9f443000  addli r9, zero, 28
002dc8  15009014  dma_cfg zero, zero, r9, 10
002dcc  9f543000  addli r9, zero, 29
002dd0  15009014  dma_cfg zero, zero, r9, 10
002dd4  9f643000  addli r9, zero, 30
002dd8  15009014  dma_cfg zero, zero, r9, 10
002ddc  9f743000  addli r9, zero, 31
002de0  15009014  dma_cfg zero, zero, r9, 10
002de4  95860600  dma_cfg r13, r13, zero, 0
002de8  95060002  dma_cfg r13, zero, zero, 1
002dec  15000004  dma_cfg zero, zero, zero, 2
002df0  150cc006  dma_cfg r24, zero, r12, 3
002df4  15042008  dma_cfg r8, zero, r2, 4
002df8  1507d00a  dma_cfg r14, zero, r13, 5
002dfc  15007010  dma_cfg zero, zero, r7, 8
002e00  35000000  dma_run zero
002e04  1500d00a  dma_cfg zero, zero, r13, 5
002e08  15000010  dma_cfg zero, zero, zero, 8
002e0c  1d100500  unlock r10
002e10  7d800500  xsignal r11, 0
002e14  5b0c0000  j 96
002e18  3b717900  bneq r18, r7, 92
002e1c  9f631000  addli r7, zero, 14
002e20  1f010000  addli r2, zero, 0
002e24  1f040040  addli r8, zero, 8192
002e28  7d900300  xwait r7, 0
002e2c  9f132000  addli r7, zero, 17
002e30  7d900300  xwait r7, 0
002e34  1d800900  lock zero, r19
002e38  ab03803f  lui r7, 260096
002e3c  0d000002  ew_cfg zero, zero, zero, 1
002e40  8d930300  ewcoeff_cfg r7, r7, zero, 0
002e44  9f737000  addli r7, zero, 63
002e48  0d800304  ew_cfg zero, r7, zero, 2
002e4c  9f130000  addli r7, zero, 1
002e50  8d030006  ew_cfg r7, zero, zero, 3
002e54  8b932010  add.s r7, r1, r2
002e58  1f010102  addli r2, r2, 256
002e5c  ad838301  dsmadd r7, r7, r24, 0
002e60  bb5f81fe  bneq r2, r8, -12
002e64  1f711000  addli r2, zero, 15
002e68  1d900900  unlock r19
002e6c  7d000100  xsignal r2, 0
002e70  7d000600  xsignal r12, 0
002e74  3d000000  xfence
002e78  1f71f001  addli r2, zero, 255
002e7c  00a00300  mfence { lm, sm, gm }
002e80  80220104  csr_set csr5, r2
002e84  00e00200  sync_core
002e88  b7700900  beq r18, zero, 60
002e8c  1f110000  addli r2, zero, 1
002e90  37172900  beq r18, r2, 452
002e94  371d3901  beq r18, r19, 836
002e98  1f310000  addli r2, zero, 3
002e9c  37132902  beq r18, r2, 1220
002ea0  1f410000  addli r2, zero, 4
002ea4  37192902  beq r18, r2, 1604
002ea8  1f510000  addli r2, zero, 5
002eac  371f2902  beq r18, r2, 1988
002eb0  1f610000  addli r2, zero, 6
002eb4  37152904  beq r18, r2, 2372
002eb8  1f710000  addli r2, zero, 7
002ebc  371b2904  beq r18, r2, 2756
002ec0  5b8a0100  j 3152
002ec4  3d000000  xfence
002ec8  b3030028  zext_int2long r[8:9], zero
002ecc  1f011fec  addli r2, r30, -2552
002ed0  00a00300  mfence { lm, sm, gm }
002ed4  73307100  store.d r[8:9], 0(r2)
002ed8  5b040000  j 32
002edc  1f012fec  addli r2, r30, -2544
002ee0  eb530100  load.d r[8:9], 0(r2)
002ee4  1f013fec  addli r2, r30, -2536
002ee8  eb540100  load.d r[10:11], 0(r2)
002eec  13a17404  setlt.ul r2, r[10:11], r[8:9]
002ef0  a7930400  addli.d r[8:9], r[10:11], 1
002ef4  37350100  beq r2, zero, 332
002ef8  1f610000  addli r2, zero, 6
002efc  9f043fec  addli r9, r30, -2536
002f00  17b92302  sll.d r[19:20], r[8:9], r2
002f04  1f011fec  addli r2, r30, -2552
002f08  73b07400  store.d r[8:9], 0(r9)
002f0c  6b570100  load.d r[15:16], 0(r2)
002f10  db040000  j 36
002f14  27470700  addli.d r[15:16], r[15:16], 4
002f18  0b948c11  add.s r8, r25, r24
002f1c  13210703  setneq.d r2, r[15:16], r[17:18]
002f20  7366c401  stores.w r28, 12(r8)
002f24  7364b400  stores.w r11, 8(r8)
002f28  73627400  stores.w r7, 4(r8)
002f2c  73604401  stores.w r20, 0(r8)
002f30  b73e01fe  beq r2, zero, -84
002f34  8b232711  add.ul r[8:9], r[15:16], r[19:20]
002f38  1bbc2300  slli r24, r7, 2
002f3c  0b918011  add.s r2, r1, r24
002f40  6f4bc100  loads.w r22, 12(r2)
002f44  ef4b0100  loads.w r23, 0(r2)
002f48  6f444100  loads.w r8, 4(r2)
002f4c  6f468100  loads.w r12, 8(r2)
002f50  17013b00  and r2, r22, r3
002f54  93032204  setlt.u r7, r4, r2
002f58  3bb00300  bneq r7, zero, 12
002f5c  1f0e0b00  addli r28, r22, 0
002f60  5b010000  j 8
002f64  171eab01  or r28, r22, r26
002f68  97063600  and r13, r12, r3
002f6c  9303d204  setlt.u r7, r4, r13
002f70  3bb00300  bneq r7, zero, 12
002f74  9f050600  addli r11, r12, 0
002f78  5b010000  j 8
002f7c  9715a601  or r11, r12, r26
002f80  970a3400  and r21, r8, r3
002f84  93035205  setlt.u r7, r4, r21
002f88  3bb00300  bneq r7, zero, 12
002f8c  9f030400  addli r7, r8, 0
002f90  5b010000  j 8
002f94  9713a401  or r7, r8, r26
002f98  97843b00  and r9, r23, r3
002f9c  13059204  setlt.u r10, r4, r9
002fa0  3b500500  bneq r10, zero, 20
002fa4  1f8a0b00  addli r20, r23, 0
002fa8  93049304  setlt.u r9, r6, r9
002fac  37d00400  beq r9, zero, 20
002fb0  db040000  j 36
002fb4  179aab01  or r20, r23, r26
002fb8  93049304  setlt.u r9, r6, r9
002fbc  3be00400  bneq r9, zero, 24
002fc0  9bc40b01  srli r9, r23, 16
002fc4  9b841400  andi r9, r9, 1
002fc8  8b949b10  add.s r9, r23, r9
002fcc  8b945410  add.s r9, r9, r5
002fd0  178ab401  and r20, r9, r27
002fd4  93045305  setlt.u r9, r6, r21
002fd8  37e00400  beq r9, zero, 24
002fdc  1304d304  setlt.u r8, r6, r13
002fe0  b7300400  beq r8, zero, 44
002fe4  13012304  setlt.u r2, r6, r2
002fe8  bb3c01fe  bneq r2, zero, -212
002fec  db070000  j 60
002ff0  9b430401  srli r7, r8, 16
002ff4  9b831300  andi r7, r7, 1
002ff8  8b137410  add.s r7, r8, r7
002ffc  8b935310  add.s r7, r7, r5
003000  9783b301  and r7, r7, r27
003004  1304d304  setlt.u r8, r6, r13
003008  3b7f04fe  bneq r8, zero, -36
00300c  1b440601  srli r8, r12, 16
003010  1b041400  andi r8, r8, 1
003014  0b148610  add.s r8, r12, r8
003018  0b145410  add.s r8, r8, r5
00301c  9705b401  and r11, r8, r27
003020  13012304  setlt.u r2, r6, r2
003024  bb4b01fe  bneq r2, zero, -272
003028  1b410b01  srli r2, r22, 16
00302c  1b011100  andi r2, r2, 1
003030  0b112b10  add.s r2, r22, r2
003034  0b115110  add.s r2, r2, r5
003038  170eb101  and r28, r2, r27
00303c  5bdbffff  j -296
003040  00390002  core_id r18
003044  9f290000  addli r19, zero, 2
003048  00200100  mfence { sm }
00304c  1f110000  addli r2, zero, 1
003050  3b1929fe  bneq r18, r2, -444
003054  1f410000  addli r2, zero, 4
003058  3d000000  xfence
00305c  00a00300  mfence { lm, sm, gm }
003060  b3030128  zext_int2long r[8:9], r2
003064  5b040000  j 32
003068  1f01afec  addli r2, r30, -2480
00306c  eb530100  load.d r[8:9], 0(r2)
003070  1f013fec  addli r2, r30, -2536
003074  eb540100  load.d r[10:11], 0(r2)
003078  13a17404  setlt.ul r2, r[10:11], r[8:9]
00307c  a7930400  addli.d r[8:9], r[10:11], 1
003080  37250100  beq r2, zero, 328
003084  1f610000  addli r2, zero, 6
003088  9f043fec  addli r9, r30, -2536
00308c  33090028  zext_int2long r[19:20], zero
003090  17b72302  sll.d r[15:16], r[8:9], r2
003094  73b07400  store.d r[8:9], 0(r9)
003098  db040000  j 36
00309c  27490900  addli.d r[19:20], r[19:20], 4
0030a0  0b944c11  add.s r8, r25, r20
0030a4  13210903  setneq.d r2, r[19:20], r[17:18]
0030a8  73666401  stores.w r22, 12(r8)
0030ac  7364b400  stores.w r11, 8(r8)
0030b0  73627400  stores.w r7, 4(r8)
0030b4  73607401  stores.w r23, 0(r8)
0030b8  b74e01fe  beq r2, zero, -80
0030bc  8b23e910  add.ul r[8:9], r[19:20], r[15:16]
0030c0  1bba2300  slli r20, r7, 2
0030c4  0b914011  add.s r2, r1, r20
0030c8  ef4ac100  loads.w r21, 12(r2)
0030cc  6f4c0100  loads.w r24, 0(r2)
0030d0  6f444100  loads.w r8, 4(r2)
0030d4  6f468100  loads.w r12, 8(r2)
0030d8  17813a00  and r2, r21, r3
0030dc  93032204  setlt.u r7, r4, r2
0030e0  3bb00300  bneq r7, zero, 12
0030e4  1f8b0a00  addli r22, r21, 0
0030e8  5b010000  j 8
0030ec  179baa01  or r22, r21, r26
0030f0  97063600  and r13, r12, r3
0030f4  9303d204  setlt.u r7, r4, r13
0030f8  3bb00300  bneq r7, zero, 12
0030fc  9f050600  addli r11, r12, 0
003100  5b010000  j 8
003104  9715a601  or r11, r12, r26
003108  170e3400  and r28, r8, r3
00310c  9303c205  setlt.u r7, r4, r28
003110  3bb00300  bneq r7, zero, 12
003114  9f030400  addli r7, r8, 0
003118  5b010000  j 8
00311c  9713a401  or r7, r8, r26
003120  97043c00  and r9, r24, r3
003124  13059204  setlt.u r10, r4, r9
003128  3b500500  bneq r10, zero, 20
00312c  9f0b0c00  addli r23, r24, 0
003130  93049304  setlt.u r9, r6, r9
003134  37d00400  beq r9, zero, 20
003138  db040000  j 36
00313c  971bac01  or r23, r24, r26
003140  93049304  setlt.u r9, r6, r9
003144  3be00400  bneq r9, zero, 24
003148  9b440c01  srli r9, r24, 16
00314c  9b841400  andi r9, r9, 1
003150  8b149c10  add.s r9, r24, r9
003154  8b945410  add.s r9, r9, r5
003158  978bb401  and r23, r9, r27
00315c  9304c305  setlt.u r9, r6, r28
003160  37e00400  beq r9, zero, 24
003164  1304d304  setlt.u r8, r6, r13
003168  b7300400  beq r8, zero, 44
00316c  13012304  setlt.u r2, r6, r2
003170  bb3c01fe  bneq r2, zero, -212
003174  db070000  j 60
003178  9b430401  srli r7, r8, 16
00317c  9b831300  andi r7, r7, 1
003180  8b137410  add.s r7, r8, r7
003184  8b935310  add.s r7, r7, r5
003188  9783b301  and r7, r7, r27
00318c  1304d304  setlt.u r8, r6, r13
003190  3b7f04fe  bneq r8, zero, -36
003194  1b440601  srli r8, r12, 16
003198  1b041400  andi r8, r8, 1
00319c  0b148610  add.s r8, r12, r8
0031a0  0b145410  add.s r8, r8, r5
0031a4  9705b401  and r11, r8, r27
0031a8  13012304  setlt.u r2, r6, r2
0031ac  bb4b01fe  bneq r2, zero, -272
0031b0  1bc10a01  srli r2, r21, 16
0031b4  1b011100  andi r2, r2, 1
0031b8  0b912a10  add.s r2, r21, r2
0031bc  0b115110  add.s r2, r2, r5
0031c0  170bb101  and r22, r2, r27
0031c4  5bdbffff  j -296
0031c8  00390002  core_id r18
0031cc  9f290000  addli r19, zero, 2
0031d0  00200100  mfence { sm }
0031d4  3b1339ff  bneq r18, r19, -828
0031d8  1f011000  addli r2, zero, 8
0031dc  3d000000  xfence
0031e0  00a00300  mfence { lm, sm, gm }
0031e4  b3030128  zext_int2long r[8:9], r2
0031e8  5b040000  j 32
0031ec  1f019fec  addli r2, r30, -2488
0031f0  eb530100  load.d r[8:9], 0(r2)
0031f4  1f01afec  addli r2, r30, -2480
0031f8  eb540100  load.d r[10:11], 0(r2)
0031fc  13a17404  setlt.ul r2, r[10:11], r[8:9]
003200  a7930400  addli.d r[8:9], r[10:11], 1
003204  37250100  beq r2, zero, 328
003208  1f610000  addli r2, zero, 6
00320c  9f04afec  addli r9, r30, -2480
003210  33090028  zext_int2long r[19:20], zero
003214  17b72302  sll.d r[15:16], r[8:9], r2
003218  73b07400  store.d r[8:9], 0(r9)
00321c  db040000  j 36
003220  27490900  addli.d r[19:20], r[19:20], 4
003224  0b944c11  add.s r8, r25, r20
003228  13210903  setneq.d r2, r[19:20], r[17:18]
00322c  73666401  stores.w r22, 12(r8)
003230  7364b400  stores.w r11, 8(r8)
003234  73627400  stores.w r7, 4(r8)
003238  73607401  stores.w r23, 0(r8)
00323c  b74e01fe  beq r2, zero, -80
003240  8b23e910  add.ul r[8:9], r[19:20], r[15:16]
003244  1bba2300  slli r20, r7, 2
003248  0b914011  add.s r2, r1, r20
00324c  ef4ac100  loads.w r21, 12(r2)
003250  6f4c0100  loads.w r24, 0(r2)
003254  6f444100  loads.w r8, 4(r2)
003258  6f468100  loads.w r12, 8(r2)
00325c  17813a00  and r2, r21, r3
003260  93032204  setlt.u r7, r4, r2
003264  3bb00300  bneq r7, zero, 12
003268  1f8b0a00  addli r22, r21, 0
00326c  5b010000  j 8
003270  179baa01  or r22, r21, r26
003274  97063600  and r13, r12, r3
003278  9303d204  setlt.u r7, r4, r13
00327c  3bb00300  bneq r7, zero, 12
003280  9f050600  addli r11, r12, 0
003284  5b010000  j 8
003288  9715a601  or r11, r12, r26
00328c  170e3400  and r28, r8, r3
003290  9303c205  setlt.u r7, r4, r28
003294  3bb00300  bneq r7, zero, 12
003298  9f030400  addli r7, r8, 0
00329c  5b010000  j 8
0032a0  9713a401  or r7, r8, r26
0032a4  97043c00  and r9, r24, r3
0032a8  13059204  setlt.u r10, r4, r9
0032ac  3b500500  bneq r10, zero, 20
0032b0  9f0b0c00  addli r23, r24, 0
0032b4  93049304  setlt.u r9, r6, r9
0032b8  37d00400  beq r9, zero, 20
0032bc  db040000  j 36
0032c0  971bac01  or r23, r24, r26
0032c4  93049304  setlt.u r9, r6, r9
0032c8  3be00400  bneq r9, zero, 24
0032cc  9b440c01  srli r9, r24, 16
0032d0  9b841400  andi r9, r9, 1
0032d4  8b149c10  add.s r9, r24, r9
0032d8  8b945410  add.s r9, r9, r5
0032dc  978bb401  and r23, r9, r27
0032e0  9304c305  setlt.u r9, r6, r28
0032e4  37e00400  beq r9, zero, 24
0032e8  1304d304  setlt.u r8, r6, r13
0032ec  b7300400  beq r8, zero, 44
0032f0  13012304  setlt.u r2, r6, r2
0032f4  bb3c01fe  bneq r2, zero, -212
0032f8  db070000  j 60
0032fc  9b430401  srli r7, r8, 16
003300  9b831300  andi r7, r7, 1
003304  8b137410  add.s r7, r8, r7
003308  8b935310  add.s r7, r7, r5
00330c  9783b301  and r7, r7, r27
003310  1304d304  setlt.u r8, r6, r13
003314  3b7f04fe  bneq r8, zero, -36
003318  1b440601  srli r8, r12, 16
00331c  1b041400  andi r8, r8, 1
003320  0b148610  add.s r8, r12, r8
003324  0b145410  add.s r8, r8, r5
003328  9705b401  and r11, r8, r27
00332c  13012304  setlt.u r2, r6, r2
003330  bb4b01fe  bneq r2, zero, -272
003334  1bc10a01  srli r2, r21, 16
003338  1b011100  andi r2, r2, 1
00333c  0b912a10  add.s r2, r21, r2
003340  0b115110  add.s r2, r2, r5
003344  170bb101  and r22, r2, r27
003348  5bdbffff  j -296
00334c  00390002  core_id r18
003350  9f290000  addli r19, zero, 2
003354  00200100  mfence { sm }
003358  1f310000  addli r2, zero, 3
00335c  3b1d29fc  bneq r18, r2, -1212
003360  1f411000  addli r2, zero, 12
003364  3d000000  xfence
003368  00a00300  mfence { lm, sm, gm }
00336c  b3030128  zext_int2long r[8:9], r2
003370  5b040000  j 32
003374  1f018fec  addli r2, r30, -2496
003378  eb530100  load.d r[8:9], 0(r2)
00337c  1f01afec  addli r2, r30, -2480
003380  eb540100  load.d r[10:11], 0(r2)
003384  13a17404  setlt.ul r2, r[10:11], r[8:9]
003388  a7930400  addli.d r[8:9], r[10:11], 1
00338c  37250100  beq r2, zero, 328
003390  1f610000  addli r2, zero, 6
003394  9f04afec  addli r9, r30, -2480
003398  33090028  zext_int2long r[19:20], zero
00339c  17b72302  sll.d r[15:16], r[8:9], r2
0033a0  73b07400  store.d r[8:9], 0(r9)
0033a4  db040000  j 36
0033a8  27490900  addli.d r[19:20], r[19:20], 4
0033ac  0b944c11  add.s r8, r25, r20
0033b0  13210903  setneq.d r2, r[19:20], r[17:18]
0033b4  73666401  stores.w r22, 12(r8)
0033b8  7364b400  stores.w r11, 8(r8)
0033bc  73627400  stores.w r7, 4(r8)
0033c0  73607401  stores.w r23, 0(r8)
0033c4  b74e01fe  beq r2, zero, -80
0033c8  8b23e910  add.ul r[8:9], r[19:20], r[15:16]
0033cc  1bba2300  slli r20, r7, 2
0033d0  0b914011  add.s r2, r1, r20
0033d4  ef4ac100  loads.w r21, 12(r2)
0033d8  6f4c0100  loads.w r24, 0(r2)
0033dc  6f444100  loads.w r8, 4(r2)
0033e0  6f468100  loads.w r12, 8(r2)
0033e4  17813a00  and r2, r21, r3
0033e8  93032204  setlt.u r7, r4, r2
0033ec  3bb00300  bneq r7, zero, 12
0033f0  1f8b0a00  addli r22, r21, 0
0033f4  5b010000  j 8
0033f8  179baa01  or r22, r21, r26
0033fc  97063600  and r13, r12, r3
003400  9303d204  setlt.u r7, r4, r13
003404  3bb00300  bneq r7, zero, 12
003408  9f050600  addli r11, r12, 0
00340c  5b010000  j 8
003410  9715a601  or r11, r12, r26
003414  170e3400  and r28, r8, r3
003418  9303c205  setlt.u r7, r4, r28
00341c  3bb00300  bneq r7, zero, 12
003420  9f030400  addli r7, r8, 0
003424  5b010000  j 8
003428  9713a401  or r7, r8, r26
00342c  97043c00  and r9, r24, r3
003430  13059204  setlt.u r10, r4, r9
003434  3b500500  bneq r10, zero, 20
003438  9f0b0c00  addli r23, r24, 0
00343c  93049304  setlt.u r9, r6, r9
003440  37d00400  beq r9, zero, 20
003444  db040000  j 36
003448  971bac01  or r23, r24, r26
00344c  93049304  setlt.u r9, r6, r9
003450  3be00400  bneq r9, zero, 24
003454  9b440c01  srli r9, r24, 16
003458  9b841400  andi r9, r9, 1
00345c  8b149c10  add.s r9, r24, r9
003460  8b945410  add.s r9, r9, r5
003464  978bb401  and r23, r9, r27
003468  9304c305  setlt.u r9, r6, r28
00346c  37e00400  beq r9, zero, 24
003470  1304d304  setlt.u r8, r6, r13
003474  b7300400  beq r8, zero, 44
003478  13012304  setlt.u r2, r6, r2
00347c  bb3c01fe  bneq r2, zero, -212
003480  db070000  j 60
003484  9b430401  srli r7, r8, 16
003488  9b831300  andi r7, r7, 1
00348c  8b137410  add.s r7, r8, r7
003490  8b935310  add.s r7, r7, r5
003494  9783b301  and r7, r7, r27
003498  1304d304  setlt.u r8, r6, r13
00349c  3b7f04fe  bneq r8, zero, -36
0034a0  1b440601  srli r8, r12, 16
0034a4  1b041400  andi r8, r8, 1
0034a8  0b148610  add.s r8, r12, r8
0034ac  0b145410  add.s r8, r8, r5
0034b0  9705b401  and r11, r8, r27
0034b4  13012304  setlt.u r2, r6, r2
0034b8  bb4b01fe  bneq r2, zero, -272
0034bc  1bc10a01  srli r2, r21, 16
0034c0  1b011100  andi r2, r2, 1
0034c4  0b912a10  add.s r2, r21, r2
0034c8  0b115110  add.s r2, r2, r5
0034cc  170bb101  and r22, r2, r27
0034d0  5bdbffff  j -296
0034d4  00390002  core_id r18
0034d8  9f290000  addli r19, zero, 2
0034dc  00200100  mfence { sm }
0034e0  1f410000  addli r2, zero, 4
0034e4  3b1729fc  bneq r18, r2, -1596
0034e8  1f012000  addli r2, zero, 16
0034ec  3d000000  xfence
0034f0  00a00300  mfence { lm, sm, gm }
0034f4  b3030128  zext_int2long r[8:9], r2
0034f8  5b040000  j 32
0034fc  1f017fec  addli r2, r30, -2504
003500  eb530100  load.d r[8:9], 0(r2)
003504  1f01afec  addli r2, r30, -2480
003508  eb540100  load.d r[10:11], 0(r2)
00350c  13a17404  setlt.ul r2, r[10:11], r[8:9]
003510  a7930400  addli.d r[8:9], r[10:11], 1
003514  37250100  beq r2, zero, 328
003518  1f610000  addli r2, zero, 6
00351c  9f04afec  addli r9, r30, -2480
003520  33090028  zext_int2long r[19:20], zero
003524  17b72302  sll.d r[15:16], r[8:9], r2
003528  73b07400  store.d r[8:9], 0(r9)
00352c  db040000  j 36
003530  27490900  addli.d r[19:20], r[19:20], 4
003534  0b944c11  add.s r8, r25, r20
003538  13210903  setneq.d r2, r[19:20], r[17:18]
00353c  73666401  stores.w r22, 12(r8)
003540  7364b400  stores.w r11, 8(r8)
003544  73627400  stores.w r7, 4(r8)
003548  73607401  stores.w r23, 0(r8)
00354c  b74e01fe  beq r2, zero, -80
003550  8b23e910  add.ul r[8:9], r[19:20], r[15:16]
003554  1bba2300  slli r20, r7, 2
003558  0b914011  add.s r2, r1, r20
00355c  ef4ac100  loads.w r21, 12(r2)
003560  6f4c0100  loads.w r24, 0(r2)
003564  6f444100  loads.w r8, 4(r2)
003568  6f468100  loads.w r12, 8(r2)
00356c  17813a00  and r2, r21, r3
003570  93032204  setlt.u r7, r4, r2
003574  3bb00300  bneq r7, zero, 12
003578  1f8b0a00  addli r22, r21, 0
00357c  5b010000  j 8
003580  179baa01  or r22, r21, r26
003584  97063600  and r13, r12, r3
003588  9303d204  setlt.u r7, r4, r13
00358c  3bb00300  bneq r7, zero, 12
003590  9f050600  addli r11, r12, 0
003594  5b010000  j 8
003598  9715a601  or r11, r12, r26
00359c  170e3400  and r28, r8, r3
0035a0  9303c205  setlt.u r7, r4, r28
0035a4  3bb00300  bneq r7, zero, 12
0035a8  9f030400  addli r7, r8, 0
0035ac  5b010000  j 8
0035b0  9713a401  or r7, r8, r26
0035b4  97043c00  and r9, r24, r3
0035b8  13059204  setlt.u r10, r4, r9
0035bc  3b500500  bneq r10, zero, 20
0035c0  9f0b0c00  addli r23, r24, 0
0035c4  93049304  setlt.u r9, r6, r9
0035c8  37d00400  beq r9, zero, 20
0035cc  db040000  j 36
0035d0  971bac01  or r23, r24, r26
0035d4  93049304  setlt.u r9, r6, r9
0035d8  3be00400  bneq r9, zero, 24
0035dc  9b440c01  srli r9, r24, 16
0035e0  9b841400  andi r9, r9, 1
0035e4  8b149c10  add.s r9, r24, r9
0035e8  8b945410  add.s r9, r9, r5
0035ec  978bb401  and r23, r9, r27
0035f0  9304c305  setlt.u r9, r6, r28
0035f4  37e00400  beq r9, zero, 24
0035f8  1304d304  setlt.u r8, r6, r13
0035fc  b7300400  beq r8, zero, 44
003600  13012304  setlt.u r2, r6, r2
003604  bb3c01fe  bneq r2, zero, -212
003608  db070000  j 60
00360c  9b430401  srli r7, r8, 16
003610  9b831300  andi r7, r7, 1
003614  8b137410  add.s r7, r8, r7
003618  8b935310  add.s r7, r7, r5
00361c  9783b301  and r7, r7, r27
003620  1304d304  setlt.u r8, r6, r13
003624  3b7f04fe  bneq r8, zero, -36
003628  1b440601  srli r8, r12, 16
00362c  1b041400  andi r8, r8, 1
003630  0b148610  add.s r8, r12, r8
003634  0b145410  add.s r8, r8, r5
003638  9705b401  and r11, r8, r27
00363c  13012304  setlt.u r2, r6, r2
003640  bb4b01fe  bneq r2, zero, -272
003644  1bc10a01  srli r2, r21, 16
003648  1b011100  andi r2, r2, 1
00364c  0b912a10  add.s r2, r21, r2
003650  0b115110  add.s r2, r2, r5
003654  170bb101  and r22, r2, r27
003658  5bdbffff  j -296
00365c  00390002  core_id r18
003660  9f290000  addli r19, zero, 2
003664  00200100  mfence { sm }
003668  1f510000  addli r2, zero, 5
00366c  3b1129fc  bneq r18, r2, -1980
003670  1f412000  addli r2, zero, 20
003674  3d000000  xfence
003678  00a00300  mfence { lm, sm, gm }
00367c  b3030128  zext_int2long r[8:9], r2
003680  5b040000  j 32
003684  1f016fec  addli r2, r30, -2512
003688  eb530100  load.d r[8:9], 0(r2)
00368c  1f01afec  addli r2, r30, -2480
003690  eb540100  load.d r[10:11], 0(r2)
003694  13a17404  setlt.ul r2, r[10:11], r[8:9]
003698  a7930400  addli.d r[8:9], r[10:11], 1
00369c  37250100  beq r2, zero, 328
0036a0  1f610000  addli r2, zero, 6
0036a4  9f04afec  addli r9, r30, -2480
0036a8  33090028  zext_int2long r[19:20], zero
0036ac  17b72302  sll.d r[15:16], r[8:9], r2
0036b0  73b07400  store.d r[8:9], 0(r9)
0036b4  db040000  j 36
0036b8  27490900  addli.d r[19:20], r[19:20], 4
0036bc  0b944c11  add.s r8, r25, r20
0036c0  13210903  setneq.d r2, r[19:20], r[17:18]
0036c4  73666401  stores.w r22, 12(r8)
0036c8  7364b400  stores.w r11, 8(r8)
0036cc  73627400  stores.w r7, 4(r8)
0036d0  73607401  stores.w r23, 0(r8)
0036d4  b74e01fe  beq r2, zero, -80
0036d8  8b23e910  add.ul r[8:9], r[19:20], r[15:16]
0036dc  1bba2300  slli r20, r7, 2
0036e0  0b914011  add.s r2, r1, r20
0036e4  ef4ac100  loads.w r21, 12(r2)
0036e8  6f4c0100  loads.w r24, 0(r2)
0036ec  6f444100  loads.w r8, 4(r2)
0036f0  6f468100  loads.w r12, 8(r2)
0036f4  17813a00  and r2, r21, r3
0036f8  93032204  setlt.u r7, r4, r2
0036fc  3bb00300  bneq r7, zero, 12
003700  1f8b0a00  addli r22, r21, 0
003704  5b010000  j 8
003708  179baa01  or r22, r21, r26
00370c  97063600  and r13, r12, r3
003710  9303d204  setlt.u r7, r4, r13
003714  3bb00300  bneq r7, zero, 12
003718  9f050600  addli r11, r12, 0
00371c  5b010000  j 8
003720  9715a601  or r11, r12, r26
003724  170e3400  and r28, r8, r3
003728  9303c205  setlt.u r7, r4, r28
00372c  3bb00300  bneq r7, zero, 12
003730  9f030400  addli r7, r8, 0
003734  5b010000  j 8
003738  9713a401  or r7, r8, r26
00373c  97043c00  and r9, r24, r3
003740  13059204  setlt.u r10, r4, r9
003744  3b500500  bneq r10, zero, 20
003748  9f0b0c00  addli r23, r24, 0
00374c  93049304  setlt.u r9, r6, r9
003750  37d00400  beq r9, zero, 20
003754  db040000  j 36
003758  971bac01  or r23, r24, r26
00375c  93049304  setlt.u r9, r6, r9
003760  3be00400  bneq r9, zero, 24
003764  9b440c01  srli r9, r24, 16
003768  9b841400  andi r9, r9, 1
00376c  8b149c10  add.s r9, r24, r9
003770  8b945410  add.s r9, r9, r5
003774  978bb401  and r23, r9, r27
003778  9304c305  setlt.u r9, r6, r28
00377c  37e00400  beq r9, zero, 24
003780  1304d304  setlt.u r8, r6, r13
003784  b7300400  beq r8, zero, 44
003788  13012304  setlt.u r2, r6, r2
00378c  bb3c01fe  bneq r2, zero, -212
003790  db070000  j 60
003794  9b430401  srli r7, r8, 16
003798  9b831300  andi r7, r7, 1
00379c  8b137410  add.s r7, r8, r7
0037a0  8b935310  add.s r7, r7, r5
0037a4  9783b301  and r7, r7, r27
0037a8  1304d304  setlt.u r8, r6, r13
0037ac  3b7f04fe  bneq r8, zero, -36
0037b0  1b440601  srli r8, r12, 16
0037b4  1b041400  andi r8, r8, 1
0037b8  0b148610  add.s r8, r12, r8
0037bc  0b145410  add.s r8, r8, r5
0037c0  9705b401  and r11, r8, r27
0037c4  13012304  setlt.u r2, r6, r2
0037c8  bb4b01fe  bneq r2, zero, -272
0037cc  1bc10a01  srli r2, r21, 16
0037d0  1b011100  andi r2, r2, 1
0037d4  0b912a10  add.s r2, r21, r2
0037d8  0b115110  add.s r2, r2, r5
0037dc  170bb101  and r22, r2, r27
0037e0  5bdbffff  j -296
0037e4  00390002  core_id r18
0037e8  9f290000  addli r19, zero, 2
0037ec  00200100  mfence { sm }
0037f0  1f610000  addli r2, zero, 6
0037f4  3b1b29fa  bneq r18, r2, -2364
0037f8  1f013000  addli r2, zero, 24
0037fc  3d000000  xfence
003800  00a00300  mfence { lm, sm, gm }
003804  b3030128  zext_int2long r[8:9], r2
003808  5b040000  j 32
00380c  1f015fec  addli r2, r30, -2520
003810  eb530100  load.d r[8:9], 0(r2)
003814  1f01afec  addli r2, r30, -2480
003818  eb540100  load.d r[10:11], 0(r2)
00381c  13a17404  setlt.ul r2, r[10:11], r[8:9]
003820  a7930400  addli.d r[8:9], r[10:11], 1
003824  37250100  beq r2, zero, 328
003828  1f610000  addli r2, zero, 6
00382c  9f04afec  addli r9, r30, -2480
003830  33090028  zext_int2long r[19:20], zero
003834  17b72302  sll.d r[15:16], r[8:9], r2
003838  73b07400  store.d r[8:9], 0(r9)
00383c  db040000  j 36
003840  27490900  addli.d r[19:20], r[19:20], 4
003844  0b944c11  add.s r8, r25, r20
003848  13210903  setneq.d r2, r[19:20], r[17:18]
00384c  73666401  stores.w r22, 12(r8)
003850  7364b400  stores.w r11, 8(r8)
003854  73627400  stores.w r7, 4(r8)
003858  73607401  stores.w r23, 0(r8)
00385c  b74e01fe  beq r2, zero, -80
003860  8b23e910  add.ul r[8:9], r[19:20], r[15:16]
003864  1bba2300  slli r20, r7, 2
003868  0b914011  add.s r2, r1, r20
00386c  ef4ac100  loads.w r21, 12(r2)
003870  6f4c0100  loads.w r24, 0(r2)
003874  6f444100  loads.w r8, 4(r2)
003878  6f468100  loads.w r12, 8(r2)
00387c  17813a00  and r2, r21, r3
003880  93032204  setlt.u r7, r4, r2
003884  3bb00300  bneq r7, zero, 12
003888  1f8b0a00  addli r22, r21, 0
00388c  5b010000  j 8
003890  179baa01  or r22, r21, r26
003894  97063600  and r13, r12, r3
003898  9303d204  setlt.u r7, r4, r13
00389c  3bb00300  bneq r7, zero, 12
0038a0  9f050600  addli r11, r12, 0
0038a4  5b010000  j 8
0038a8  9715a601  or r11, r12, r26
0038ac  170e3400  and r28, r8, r3
0038b0  9303c205  setlt.u r7, r4, r28
0038b4  3bb00300  bneq r7, zero, 12
0038b8  9f030400  addli r7, r8, 0
0038bc  5b010000  j 8
0038c0  9713a401  or r7, r8, r26
0038c4  97043c00  and r9, r24, r3
0038c8  13059204  setlt.u r10, r4, r9
0038cc  3b500500  bneq r10, zero, 20
0038d0  9f0b0c00  addli r23, r24, 0
0038d4  93049304  setlt.u r9, r6, r9
0038d8  37d00400  beq r9, zero, 20
0038dc  db040000  j 36
0038e0  971bac01  or r23, r24, r26
0038e4  93049304  setlt.u r9, r6, r9
0038e8  3be00400  bneq r9, zero, 24
0038ec  9b440c01  srli r9, r24, 16
0038f0  9b841400  andi r9, r9, 1
0038f4  8b149c10  add.s r9, r24, r9
0038f8  8b945410  add.s r9, r9, r5
0038fc  978bb401  and r23, r9, r27
003900  9304c305  setlt.u r9, r6, r28
003904  37e00400  beq r9, zero, 24
003908  1304d304  setlt.u r8, r6, r13
00390c  b7300400  beq r8, zero, 44
003910  13012304  setlt.u r2, r6, r2
003914  bb3c01fe  bneq r2, zero, -212
003918  db070000  j 60
00391c  9b430401  srli r7, r8, 16
003920  9b831300  andi r7, r7, 1
003924  8b137410  add.s r7, r8, r7
003928  8b935310  add.s r7, r7, r5
00392c  9783b301  and r7, r7, r27
003930  1304d304  setlt.u r8, r6, r13
003934  3b7f04fe  bneq r8, zero, -36
003938  1b440601  srli r8, r12, 16
00393c  1b041400  andi r8, r8, 1
003940  0b148610  add.s r8, r12, r8
003944  0b145410  add.s r8, r8, r5
003948  9705b401  and r11, r8, r27
00394c  13012304  setlt.u r2, r6, r2
003950  bb4b01fe  bneq r2, zero, -272
003954  1bc10a01  srli r2, r21, 16
003958  1b011100  andi r2, r2, 1
00395c  0b912a10  add.s r2, r21, r2
003960  0b115110  add.s r2, r2, r5
003964  170bb101  and r22, r2, r27
003968  5bdbffff  j -296
00396c  00390002  core_id r18
003970  9f290000  addli r19, zero, 2
003974  00200100  mfence { sm }
003978  1f710000  addli r2, zero, 7
00397c  3b562900  bneq r18, r2, 404
003980  b3030028  zext_int2long r[8:9], zero
003984  1f019fec  addli r2, r30, -2488
003988  73307100  store.d r[8:9], 0(r2)
00398c  1f413000  addli r2, zero, 28
003990  3d000000  xfence
003994  b3030128  zext_int2long r[8:9], r2
003998  00a00300  mfence { lm, sm, gm }
00399c  5b040000  j 32
0039a0  1f014fec  addli r2, r30, -2528
0039a4  eb530100  load.d r[8:9], 0(r2)
0039a8  1f01afec  addli r2, r30, -2480
0039ac  eb540100  load.d r[10:11], 0(r2)
0039b0  13a17404  setlt.ul r2, r[10:11], r[8:9]
0039b4  a7930400  addli.d r[8:9], r[10:11], 1
0039b8  37350100  beq r2, zero, 332
0039bc  1f610000  addli r2, zero, 6
0039c0  9f04afec  addli r9, r30, -2480
0039c4  17b72302  sll.d r[15:16], r[8:9], r2
0039c8  1f019fec  addli r2, r30, -2488
0039cc  73b07400  store.d r[8:9], 0(r9)
0039d0  6b590100  load.d r[19:20], 0(r2)
0039d4  db040000  j 36
0039d8  27490900  addli.d r[19:20], r[19:20], 4
0039dc  0b944c11  add.s r8, r25, r20
0039e0  13210903  setneq.d r2, r[19:20], r[17:18]
0039e4  73666401  stores.w r22, 12(r8)
0039e8  73648401  stores.w r24, 8(r8)
0039ec  73627400  stores.w r7, 4(r8)
0039f0  73609400  stores.w r9, 0(r8)
0039f4  b73e01fe  beq r2, zero, -84
0039f8  8b23e910  add.ul r[8:9], r[19:20], r[15:16]
0039fc  1bba2300  slli r20, r7, 2
003a00  0b914011  add.s r2, r1, r20
003a04  ef4ac100  loads.w r21, 12(r2)
003a08  ef4b0100  loads.w r23, 0(r2)
003a0c  6f444100  loads.w r8, 4(r2)
003a10  6f4e8100  loads.w r28, 8(r2)
003a14  17813a00  and r2, r21, r3
003a18  93032204  setlt.u r7, r4, r2
003a1c  3bb00300  bneq r7, zero, 12
003a20  1f8b0a00  addli r22, r21, 0
003a24  5b010000  j 8
003a28  179baa01  or r22, r21, r26
003a2c  97063e00  and r13, r28, r3
003a30  9303d204  setlt.u r7, r4, r13
003a34  3bb00300  bneq r7, zero, 12
003a38  1f0c0e00  addli r24, r28, 0
003a3c  5b010000  j 8
003a40  171cae01  or r24, r28, r26
003a44  17053400  and r10, r8, r3
003a48  9303a204  setlt.u r7, r4, r10
003a4c  3bb00300  bneq r7, zero, 12
003a50  9f030400  addli r7, r8, 0
003a54  5b010000  j 8
003a58  9713a401  or r7, r8, r26
003a5c  97853b00  and r11, r23, r3
003a60  9304b204  setlt.u r9, r4, r11
003a64  3bd00400  bneq r9, zero, 20
003a68  9f840b00  addli r9, r23, 0
003a6c  9305b304  setlt.u r11, r6, r11
003a70  37d00500  beq r11, zero, 20
003a74  db040000  j 36
003a78  9794ab01  or r9, r23, r26
003a7c  9305b304  setlt.u r11, r6, r11
003a80  3be00500  bneq r11, zero, 24
003a84  9bc40b01  srli r9, r23, 16
003a88  9b841400  andi r9, r9, 1
003a8c  8b949b10  add.s r9, r23, r9
003a90  8b945410  add.s r9, r9, r5
003a94  9784b401  and r9, r9, r27
003a98  1305a304  setlt.u r10, r6, r10
003a9c  37600500  beq r10, zero, 24
003aa0  1304d304  setlt.u r8, r6, r13
003aa4  b7300400  beq r8, zero, 44
003aa8  13012304  setlt.u r2, r6, r2
003aac  bb3c01fe  bneq r2, zero, -212
003ab0  db070000  j 60
003ab4  9b430401  srli r7, r8, 16
003ab8  9b831300  andi r7, r7, 1
003abc  8b137410  add.s r7, r8, r7
003ac0  8b935310  add.s r7, r7, r5
003ac4  9783b301  and r7, r7, r27
003ac8  1304d304  setlt.u r8, r6, r13
003acc  3b7f04fe  bneq r8, zero, -36
003ad0  1b440e01  srli r8, r28, 16
003ad4  1b041400  andi r8, r8, 1
003ad8  0b148e10  add.s r8, r28, r8
003adc  0b145410  add.s r8, r8, r5
003ae0  170cb401  and r24, r8, r27
003ae4  13012304  setlt.u r2, r6, r2
003ae8  bb4b01fe  bneq r2, zero, -272
003aec  1bc10a01  srli r2, r21, 16
003af0  1b011100  andi r2, r2, 1
003af4  0b912a10  add.s r2, r21, r2
003af8  0b115110  add.s r2, r2, r5
003afc  170bb101  and r22, r2, r27
003b00  5bdbffff  j -296
003b04  00390002  core_id r18
003b08  9f290000  addli r19, zero, 2
003b0c  00200100  mfence { sm }
003b10  9f70f001  addli r1, zero, 255
003b14  80a20004  csr_set csr5, r1
003b18  9f300000  addli r1, zero, 3
003b1c  00e00200  sync_core
003b20  375719ec  beq r18, r1, -9772
003b24  9f00ffeb  addli r1, r30, -2568
003b28  9f170000  addli r15, zero, 1
003b2c  9f032000  addli r7, zero, 16
003b30  ebd60000  load.d r[14:15], 0(r1)
003b34  3b6709ec  bneq r18, zero, -9768
003b38  1f05bfeb  addli r10, r30, -2600
003b3c  e340afeb  loadli.w r1,  -2604(r30)
003b40  1f08dfeb  addli r16, r30, -2584
003b44  6b540500  load.d r[9:10], 0(r10)
003b48  eb550800  load.d r[12:13], 0(r16)
003b4c  6b588f01  load.d r[17:18], 24(r30)
003b50  b3900028  sext_int2long r[2:3], r1
003b54  97337402  sll.d r[8:9], r[9:10], r7
003b58  9f04bfec  addli r9, r30, -2472
003b5c  97b5f502  sll.d r[12:13], r[12:13], r15
003b60  6bda0400  load.d r[21:22], 0(r9)
003b64  8b237810  add.ul r[8:9], r[17:18], r[8:9]
003b68  8ba3b310  add.ul r[8:9], r[8:9], r[12:13]
003b6c  9f058000  addli r11, zero, 64
003b70  8bb44041  min.sl r[10:11], r[2:3], r[21:22]
003b74  a7844400  addli.d r[10:11], r[10:11], 32
003b78  8bb41448  max.sl r[10:11], r[10:11], r[2:3]
003b7c  8bb01418  sub.sl r[2:3], r[10:11], r[2:3]
003b80  9f441000  addli r9, zero, 12
003b84  1f550000  addli r10, zero, 5
003b88  7d900400  xwait r9, 0
003b8c  1d000500  lock zero, r10
003b90  9b940c04  ori r9, r25, 64
003b94  8bb04041  min.sl r[2:3], r[2:3], r[21:22]
003b98  95870700  dma_cfg r15, r15, zero, 0
003b9c  15800702  dma_cfg zero, r15, zero, 1
003ba0  15040004  dma_cfg r8, zero, zero, 2
003ba4  9583b406  dma_cfg r7, r9, r11, 3
003ba8  9f03cfeb  addli r7, r30, -2592
003bac  6bd40300  load.d r[9:10], 0(r7)
003bb0  9f733400  addli r7, r8, 31
003bb4  1b341400  slli r8, r8, 1
003bb8  9f040001  addli r9, zero, 128
003bbc  9bc35300  srli r7, r7, 5
003bc0  95857408  dma_cfg r11, r9, r7, 4
003bc4  9b03e403  andi r7, r8, 62
003bc8  1f040002  addli r8, zero, 256
003bcc  9f040010  addli r9, zero, 2048
003bd0  9504140a  dma_cfg r9, r8, r1, 5
003bd4  9f501000  addli r1, zero, 13
003bd8  15007010  dma_cfg zero, zero, r7, 8
003bdc  35000000  dma_run zero
003be0  1500f00a  dma_cfg zero, zero, r15, 5
003be4  15000010  dma_cfg zero, zero, zero, 8
003be8  1d100500  unlock r10
003bec  7d800000  xsignal r1, 0
003bf0  db23fbff  j -9956
003bf4  7d000000  xsignal zero, 0
003bf8  bb600900  bneq r18, zero, 56
003bfc  9f200000  addli r1, zero, 2
003c00  7d100000  xwait zero, 0
003c04  7d100000  xwait zero, 0
003c08  7d100000  xwait zero, 0
003c0c  7d100000  xwait zero, 0
003c10  7d100000  xwait zero, 0
003c14  7d100000  xwait zero, 0
003c18  7d100000  xwait zero, 0
003c1c  7d100000  xwait zero, 0
003c20  1d800000  lock zero, r1
003c24  0d000020  ew_cfg zero, zero, zero, 16
003c28  1d900000  unlock r1
003c2c  7d400000  xsignal_mode_cfg zero
003c30  9f8e8e14  addli sp, sp, 2624
003c34  00a00300  mfence { lm, sm, gm }
003c38  00100000  exit
003c3c  00100000  exit
003c40  00100000  exit
003c44  00100000  exit
003c48  00100000  exit
003c4c  00100000  exit
003c50  00100000  exit
003c54  00100000  exit
003c58  00100000  exit
003c5c  00100000  exit
003c60  00100000  exit
003c64  00100000  exit
003c68  00100000  exit
003c6c  00100000  exit
003c70  00100000  exit
003c74  00100000  exit
003c78  00100000  exit
003c7c  00100000  exit
003c80  00100000  exit
003c84  00100000  exit
003c88  00100000  exit
003c8c  00100000  exit
003c90  00100000  exit
003c94  00100000  exit
003c98  00100000  exit
003c9c  00100000  exit
003ca0  00100000  exit
003ca4  00100000  exit
003ca8  00100000  exit
003cac  00100000  exit
003cb0  00100000  exit
003cb4  00100000  exit
003cb8  00100000  exit
003cbc  00100000  exit
003cc0  00100000  exit
003cc4  00100000  exit
003cc8  00100000  exit
003ccc  00100000  exit
003cd0  00100000  exit
003cd4  00100000  exit
003cd8  00100000  exit
003cdc  00100000  exit
003ce0  00100000  exit
003ce4  00100000  exit
003ce8  00100000  exit
003cec  00100000  exit
003cf0  00100000  exit
003cf4  00100000  exit
003cf8  00100000  exit
003cfc  00100000  exit
003d00  00100000  exit
003d04  00100000  exit
003d08  00100000  exit
003d0c  00100000  exit
003d10  00100000  exit
003d14  00100000  exit
003d18  00100000  exit
003d1c  00100000  exit
003d20  00100000  exit
003d24  00100000  exit
003d28  00100000  exit
003d2c  00100000  exit
003d30  00100000  exit
003d34  00100000  exit
003d38  00100000  exit
003d3c  00100000  exit
003d40  00100000  exit
003d44  00100000  exit
003d48  00100000  exit
003d4c  00100000  exit
003d50  00100000  exit
003d54  00100000  exit
003d58  00100000  exit
003d5c  00100000  exit
003d60  00100000  exit
003d64  00100000  exit
003d68  00100000  exit
003d6c  00100000  exit
003d70  00100000  exit
003d74  00100000  exit
003d78  00100000  exit
003d7c  00100000  exit
003d80  00100000  exit
003d84  00100000  exit
003d88  00100000  exit
003d8c  00100000  exit
003d90  00100000  exit
003d94  00100000  exit
003d98  00100000  exit
003d9c  00100000  exit
003da0  00100000  exit
003da4  00100000  exit
003da8  00100000  exit
003dac  00100000  exit
003db0  00100000  exit
003db4  00100000  exit
003db8  00100000  exit
003dbc  00100000  exit
003dc0  00100000  exit
003dc4  00100000  exit
003dc8  00100000  exit
003dcc  00100000  exit
003dd0  00100000  exit
003dd4  00100000  exit
003dd8  00100000  exit
003ddc  00100000  exit
003de0  00100000  exit
003de4  00100000  exit
003de8  00100000  exit
003dec  00100000  exit
003df0  00100000  exit
003df4  00100000  exit
003df8  00100000  exit
003dfc  00100000  exit
003e00  00100000  exit
003e04  00100000  exit
003e08  00100000  exit
003e0c  00100000  exit
003e10  00100000  exit
003e14  00100000  exit
003e18  00100000  exit
003e1c  00100000  exit
003e20  00100000  exit
003e24  00100000  exit
003e28  00100000  exit
003e2c  00100000  exit
003e30  00100000  exit
003e34  00100000  exit
003e38  00100000  exit
003e3c  00100000  exit
003e40  00100000  exit
003e44  00100000  exit
003e48  00100000  exit
003e4c  00100000  exit
003e50  00100000  exit
003e54  00100000  exit
003e58  00100000  exit
003e5c  00100000  exit
003e60  00100000  exit
003e64  00100000  exit
003e68  00100000  exit
003e6c  00100000  exit
003e70  00100000  exit
003e74  00100000  exit
003e78  00100000  exit
