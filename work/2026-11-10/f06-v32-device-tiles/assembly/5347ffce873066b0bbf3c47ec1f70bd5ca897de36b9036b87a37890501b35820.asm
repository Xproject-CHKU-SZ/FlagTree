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
0000b4  9f8e4eef  addli sp, sp, -2144
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8f4e10  addli r30, sp, 2080
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600100  beq r2, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b010100  j 2056
0000e0  9f210000  addli r3, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  2bf2ffff  lui r4, 1048575
0000ec  1d800100  lock zero, r3
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b10f2ff  ori r1, r4, 4095
0000f8  1d900100  unlock r3
0000fc  9f311000  addli r3, zero, 11
000100  80a10004  csr_set csr3, r1
000104  00d00100  sync_group
000108  9f500000  addli r1, zero, 5
00010c  7d800100  xsignal r3, 0
000110  7d800100  xsignal r3, 0
000114  7d800100  xsignal r3, 0
000118  7d800100  xsignal r3, 0
00011c  9f310000  addli r3, zero, 3
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
0002a0  9f101000  addli r1, zero, 9
0002a4  7d800100  xsignal r3, 0
0002a8  7d800100  xsignal r3, 0
0002ac  7d800100  xsignal r3, 0
0002b0  7d800100  xsignal r3, 0
0002b4  7d800100  xsignal r3, 0
0002b8  7d800100  xsignal r3, 0
0002bc  7d800100  xsignal r3, 0
0002c0  7d800100  xsignal r3, 0
0002c4  7d800100  xsignal r3, 0
0002c8  7d800100  xsignal r3, 0
0002cc  7d800100  xsignal r3, 0
0002d0  7d800100  xsignal r3, 0
0002d4  7d800100  xsignal r3, 0
0002d8  7d800100  xsignal r3, 0
0002dc  7d800100  xsignal r3, 0
0002e0  7d800100  xsignal r3, 0
0002e4  7d800100  xsignal r3, 0
0002e8  7d800100  xsignal r3, 0
0002ec  7d800100  xsignal r3, 0
0002f0  7d800100  xsignal r3, 0
0002f4  7d800100  xsignal r3, 0
0002f8  7d800100  xsignal r3, 0
0002fc  7d800100  xsignal r3, 0
000300  7d800100  xsignal r3, 0
000304  7d800100  xsignal r3, 0
000308  7d800100  xsignal r3, 0
00030c  7d800100  xsignal r3, 0
000310  7d800100  xsignal r3, 0
000314  7d800100  xsignal r3, 0
000318  7d800100  xsignal r3, 0
00031c  7d800100  xsignal r3, 0
000320  7d800100  xsignal r3, 0
000324  7d800100  xsignal r3, 0
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
0003c4  9f710000  addli r3, zero, 7
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
000520  7d800000  xsignal r1, 0
000524  7d800000  xsignal r1, 0
000528  7d800000  xsignal r1, 0
00052c  7d800000  xsignal r1, 0
000530  7d800000  xsignal r1, 0
000534  7d800000  xsignal r1, 0
000538  7d800000  xsignal r1, 0
00053c  7d800000  xsignal r1, 0
000540  7d800000  xsignal r1, 0
000544  7d800000  xsignal r1, 0
000548  7d800000  xsignal r1, 0
00054c  7d800000  xsignal r1, 0
000550  7d800000  xsignal r1, 0
000554  7d800000  xsignal r1, 0
000558  7d800000  xsignal r1, 0
00055c  7d800000  xsignal r1, 0
000560  7d800000  xsignal r1, 0
000564  7d800000  xsignal r1, 0
000568  7d800000  xsignal r1, 0
00056c  7d800000  xsignal r1, 0
000570  7d800000  xsignal r1, 0
000574  7d800000  xsignal r1, 0
000578  7d800000  xsignal r1, 0
00057c  7d800000  xsignal r1, 0
000580  7d800000  xsignal r1, 0
000584  7d800000  xsignal r1, 0
000588  7d800000  xsignal r1, 0
00058c  7d800000  xsignal r1, 0
000590  7d800000  xsignal r1, 0
000594  7d800000  xsignal r1, 0
000598  7d800000  xsignal r1, 0
00059c  7d800000  xsignal r1, 0
0005a0  7d800000  xsignal r1, 0
0005a4  7d800000  xsignal r1, 0
0005a8  7d800000  xsignal r1, 0
0005ac  7d800000  xsignal r1, 0
0005b0  7d800000  xsignal r1, 0
0005b4  7d800000  xsignal r1, 0
0005b8  7d800000  xsignal r1, 0
0005bc  7d800000  xsignal r1, 0
0005c0  7d800000  xsignal r1, 0
0005c4  7d800000  xsignal r1, 0
0005c8  7d800000  xsignal r1, 0
0005cc  7d800000  xsignal r1, 0
0005d0  7d800000  xsignal r1, 0
0005d4  7d800000  xsignal r1, 0
0005d8  7d800000  xsignal r1, 0
0005dc  7d800000  xsignal r1, 0
0005e0  7d800000  xsignal r1, 0
0005e4  7d800000  xsignal r1, 0
0005e8  7d800000  xsignal r1, 0
0005ec  7d800000  xsignal r1, 0
0005f0  7d800000  xsignal r1, 0
0005f4  7d800000  xsignal r1, 0
0005f8  7d800000  xsignal r1, 0
0005fc  7d800000  xsignal r1, 0
000600  7d800000  xsignal r1, 0
000604  7d800000  xsignal r1, 0
000608  7d800000  xsignal r1, 0
00060c  7d800000  xsignal r1, 0
000610  7d800000  xsignal r1, 0
000614  7d800000  xsignal r1, 0
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
00081c  7d800100  xsignal r3, 0
000820  7d800100  xsignal r3, 0
000824  7d800100  xsignal r3, 0
000828  7d800100  xsignal r3, 0
00082c  7d800100  xsignal r3, 0
000830  7d800100  xsignal r3, 0
000834  7d800100  xsignal r3, 0
000838  7d800100  xsignal r3, 0
00083c  7d800100  xsignal r3, 0
000840  7d800100  xsignal r3, 0
000844  7d800100  xsignal r3, 0
000848  7d800100  xsignal r3, 0
00084c  7d800100  xsignal r3, 0
000850  7d800100  xsignal r3, 0
000854  7d800100  xsignal r3, 0
000858  7d800100  xsignal r3, 0
00085c  7d800100  xsignal r3, 0
000860  7d800100  xsignal r3, 0
000864  7d800100  xsignal r3, 0
000868  7d800100  xsignal r3, 0
00086c  7d800100  xsignal r3, 0
000870  7d800100  xsignal r3, 0
000874  7d800100  xsignal r3, 0
000878  7d800100  xsignal r3, 0
00087c  7d800100  xsignal r3, 0
000880  7d800100  xsignal r3, 0
000884  7d800100  xsignal r3, 0
000888  7d800100  xsignal r3, 0
00088c  7d800100  xsignal r3, 0
000890  7d800100  xsignal r3, 0
000894  7d800100  xsignal r3, 0
000898  7d800100  xsignal r3, 0
00089c  7d800100  xsignal r3, 0
0008a0  7d800100  xsignal r3, 0
0008a4  7d800100  xsignal r3, 0
0008a8  7d800100  xsignal r3, 0
0008ac  7d800100  xsignal r3, 0
0008b0  7d800100  xsignal r3, 0
0008b4  7d800100  xsignal r3, 0
0008b8  7d800100  xsignal r3, 0
0008bc  7d800100  xsignal r3, 0
0008c0  7d800100  xsignal r3, 0
0008c4  7d800100  xsignal r3, 0
0008c8  7d800100  xsignal r3, 0
0008cc  7d800100  xsignal r3, 0
0008d0  7d800100  xsignal r3, 0
0008d4  7d800100  xsignal r3, 0
0008d8  7d800100  xsignal r3, 0
0008dc  7d800100  xsignal r3, 0
0008e0  7d800100  xsignal r3, 0
0008e4  e3003f00  loadli.w r1,  24(r30)
0008e8  e3413f00  loadli.w r3,  28(r30)
0008ec  80d20002  load_param_i r5, 1
0008f0  63024f00  loadli.w r4,  32(r30)
0008f4  e74d0ffc  storeli.w zero, -292(r30)
0008f8  e74d0ff4  storeli.w zero, -1316(r30)
0008fc  e70b0ff2  storeli.w zero, -1608(r30)
000900  67430ff0  storeli.w zero, -1996(r30)
000904  8b901120  mul.s r1, r3, r1
000908  9f810200  addli r3, r5, 0
00090c  8b914050  fmac.s r3, r1, r4
000910  0b924020  mul.s r4, r1, r4
000914  9ff1f1ff  addli r3, r3, -1
000918  8b915130  div.s r3, r3, r5
00091c  80520002  load_param_i r5, 0
000920  8b905120  mul.s r1, r3, r5
000924  8b915150  fmac.s r3, r3, r5
000928  8b914140  min.s r3, r3, r4
00092c  4bd01102  ble.s r3, r1, 1044
000930  b3910128  sext_int2long r[4:5], r3
000934  9f02dfef  addli r5, r30, -2072
000938  9f76f01f  addli r13, zero, 4095
00093c  6344bffd  loadli.w r8,  -292(r30)
000940  e344bff5  loadli.w r9,  -1316(r30)
000944  1f050001  addli r10, zero, 128
000948  9f450000  addli r11, zero, 4
00094c  9f6a0000  addli r21, zero, 6
000950  9f3c0000  addli r25, zero, 3
000954  1f0ac000  addli r20, zero, 96
000958  9f0b9000  addli r23, zero, 72
00095c  1f2b0000  addli r22, zero, 2
000960  1f5d0000  addli r26, zero, 5
000964  1f0c8000  addli r24, zero, 64
000968  1f094000  addli r18, zero, 32
00096c  9f1d0000  addli r27, zero, 1
000970  9f080000  addli r17, zero, 0
000974  2b86ffff  lui r12, 1048568
000978  73b03200  store.d r[4:5], 0(r5)
00097c  b3920028  sext_int2long r[6:7], r1
000980  63027ff3  loadli.w r4,  -1608(r30)
000984  e3406ff0  loadli.w r1,  -1996(r30)
000988  9f01cfef  addli r3, r30, -2080
00098c  73b0c100  store.d r[13:14], 0(r3)
000990  5b060000  j 48
000994  9f201000  addli r1, zero, 10
000998  7d800000  xsignal r1, 0
00099c  eb520f81  load.d r[6:7], -2032(r30)
0009a0  9f00dfef  addli r1, r30, -2072
0009a4  e3481ff0  loadli.w r17,  -2036(r30)
0009a8  ebd10000  load.d r[4:5], 0(r1)
0009ac  9f900700  addli r1, r15, 1
0009b0  a7920200  addli.d r[6:7], r[6:7], 1
0009b4  93b13204  setlt.sl r3, r[6:7], r[4:5]
0009b8  1f120700  addli r4, r14, 1
0009bc  379e0100  beq r3, zero, 900
0009c0  3b30b100  bneq r2, r11, 12
0009c4  9f311000  addli r3, zero, 11
0009c8  7d900100  xwait r3, 0
0009cc  e3014f00  loadli.w r3,  32(r30)
0009d0  73385f80  store.d r[6:7], -2032(r30)
0009d4  9f031000  addli r7, zero, 8
0009d8  8b913230  div.s r3, r5, r3
0009dc  e3423f00  loadli.w r5,  28(r30)
0009e0  8b925130  div.s r5, r3, r5
0009e4  0b96a230  div.s r12, r5, r10
0009e8  9b313600  slli r3, r12, 3
0009ec  0b933518  sub.s r6, r11, r3
0009f0  0b177340  min.s r14, r6, r7
0009f4  0b93e238  mod.s r6, r5, r14
0009f8  8b916110  add.s r3, r3, r6
0009fc  1f531000  addli r6, zero, 13
000a00  93863c04  setlt.u r13, r25, r3
000a04  b3870128  zext_int2long r[16:17], r3
000a08  17b36702  sll.d r[7:8], r[16:17], r6
000a0c  7330ff80  store.d r[16:17], -2048(r30)
000a10  73346f82  store.d r[7:8], -2008(r30)
000a14  3bb00600  bneq r13, zero, 12
000a18  33030028  zext_int2long r[7:8], zero
000a1c  db020000  j 20
000a20  9f06cfef  addli r13, r30, -2080
000a24  a7070300  addli.d r[16:17], r[7:8], 0
000a28  6bd30600  load.d r[7:8], 0(r13)
000a2c  17836702  and.d r[7:8], r[16:17], r[7:8]
000a30  1b367600  slli r12, r12, 7
000a34  9bb17100  slli r3, r3, 7
000a38  73306f82  store.d r[7:8], -2016(r30)
000a3c  9f060000  addli r13, zero, 0
000a40  8b92c218  sub.s r5, r5, r12
000a44  674f3fee  storeli.w r3, -2060(r30)
000a48  1f160000  addli r12, zero, 1
000a4c  8b92e230  div.s r5, r5, r14
000a50  0b97b838  mod.s r14, r17, r11
000a54  9f980800  addli r17, r17, 1
000a58  e7401ff1  storeli.w r17, -2036(r30)
000a5c  b3870228  zext_int2long r[16:17], r5
000a60  9bb16200  slli r3, r5, 6
000a64  9b32f700  slli r5, r14, 15
000a68  17b35703  sll.d r[7:8], r[16:17], r21
000a6c  670f3fee  storeli.w r3, -2064(r30)
000a70  9f01ffef  addli r3, r30, -2056
000a74  73b06100  store.d r[7:8], 0(r3)
000a78  1737c302  sll.d r[15:16], r[7:8], r12
000a7c  6b538f00  load.d r[7:8], 8(r30)
000a80  9f010000  addli r3, zero, 0
000a84  0b23e310  add.ul r[7:8], r[7:8], r[15:16]
000a88  733c6f80  store.d r[7:8], -2024(r30)
000a8c  5b030000  j 24
000a90  1b031600  andi r6, r12, 1
000a94  b7570300  beq r6, zero, 500
000a98  9f910100  addli r3, r3, 1
000a9c  9f160000  addli r13, zero, 1
000aa0  1f060000  addli r12, zero, 0
000aa4  0b173210  add.s r14, r4, r3
000aa8  8b973010  add.s r15, r1, r3
000aac  2b030200  lui r6, 32
000ab0  0b187739  mod.s r16, r14, r23
000ab4  8b984739  mod.s r17, r15, r20
000ab8  1b38e800  slli r16, r16, 14
000abc  1bbed800  slli r28, r17, 13
000ac0  8b196810  add.s r19, r16, r6
000ac4  37026101  beq r2, r22, 128
000ac8  33880628  zext_int2long r[17:18], r13
000acc  bb035101  bneq r2, r21, 224
000ad0  6b538f82  load.d r[7:8], -2008(r30)
000ad4  1738a803  sll.d r[17:18], r[17:18], r26
000ad8  6b5a0f82  load.d r[21:22], -2016(r30)
000adc  9f060003  addli r13, zero, 384
000ae0  7d900c00  xwait r25, 0
000ae4  eb5c0f00  load.d r[26:27], 0(r30)
000ae8  1d800500  lock zero, r11
000aec  958d0d00  dma_cfg r27, r27, zero, 0
000af0  17186802  or.d r[17:18], r[17:18], r[7:8]
000af4  33030c28  zext_int2long r[7:8], r24
000af8  0b3a4819  sub.sl r[21:22], r[17:18], r[21:22]
000afc  1738b803  sll.d r[17:18], r[17:18], r27
000b00  0f136a60  div.sl r[7:8], r[21:22], r[7:8]
000b04  338a0628  zext_int2long r[21:22], r13
000b08  0ba80c11  add.ul r[17:18], r[26:27], r[17:18]
000b0c  1f5d0000  addli r26, zero, 5
000b10  9f3c0000  addli r25, zero, 3
000b14  15800804  dma_cfg zero, r17, zero, 2
000b18  95098807  dma_cfg r19, r16, r24, 3
000b1c  0b3a4341  min.sl r[21:22], r[7:8], r[21:22]
000b20  0b336a18  sub.sl r[7:8], r[21:22], r[7:8]
000b24  1f0ac000  addli r20, zero, 96
000b28  9f6a0000  addli r21, zero, 6
000b2c  1f030301  addli r6, r6, 128
000b30  15056508  dma_cfg r10, r10, r6, 4
000b34  35000000  dma_run zero
000b38  1d900500  unlock r11
000b3c  7d000b00  xsignal r22, 0
000b40  5b060000  j 48
000b44  7d100b00  xwait r22, 0
000b48  7d100d00  xwait r26, 0
000b4c  1d000000  lock zero, zero
000b50  810c0000  ds_cfg r25, zero, 0
000b54  010c0002  ds_cfg r24, zero, 1
000b58  0109001c  ds_cfg r18, zero, 14
000b5c  0105001a  ds_cfg r10, zero, 13
000b60  219e2903  shuffle_batch r28, r19, r18, 1
000b64  1d100000  unlock zero
000b68  7d800c00  xsignal r25, 0
000b6c  7d800500  xsignal r11, 0
000b70  1f73f001  addli r6, zero, 255
000b74  1f140400  addli r8, r8, 1
000b78  0b936438  mod.s r6, r9, r6
000b7c  9f940400  addli r9, r9, 1
000b80  9b36c300  slli r13, r6, 12
000b84  3b3cb1fe  bneq r2, r11, -244
000b88  1f031000  addli r6, zero, 8
000b8c  7d900500  xwait r11, 0
000b90  7d100300  xwait r6, 0
000b94  1d800d00  lock zero, r27
000b98  090ca900  mm_cfg r24, r18, r10, 0
000b9c  890dbb05  mm_cfg r27, r22, r27, 2
000ba0  37920100  beq r3, zero, 132
000ba4  a912de0a  mm_acc r5, r28, r13, 5
000ba8  5b100000  j 128
000bac  9f73f001  addli r7, zero, 255
000bb0  0b137439  mod.s r6, r8, r23
000bb4  1f140400  addli r8, r8, 1
000bb8  8b937438  mod.s r7, r9, r7
000bbc  9f940400  addli r9, r9, 1
000bc0  1b33c300  slli r6, r6, 12
000bc4  9bb6c300  slli r13, r7, 12
000bc8  ab031400  lui r7, 320
000bcc  8b197310  add.s r19, r6, r7
000bd0  1f730000  addli r6, zero, 7
000bd4  b7416100  beq r2, r6, 112
000bd8  bb3eb1ff  bneq r2, r27, -84
000bdc  1f032000  addli r6, zero, 16
000be0  9f760000  addli r13, zero, 7
000be4  17336802  sll.d r[7:8], r[17:18], r6
000be8  7d900600  xwait r13, 0
000bec  6b588f81  load.d r[17:18], -2024(r30)
000bf0  1d800500  lock zero, r11
000bf4  958d0d00  dma_cfg r27, r27, zero, 0
000bf8  0b236810  add.ul r[7:8], r[17:18], r[7:8]
000bfc  15800304  dma_cfg zero, r7, zero, 2
000c00  9509a306  dma_cfg r19, r6, r10, 3
000c04  1f030010  addli r6, zero, 2048
000c08  15052309  dma_cfg r10, r6, r18, 4
000c0c  35000000  dma_run zero
000c10  1d900500  unlock r11
000c14  7d800a00  xsignal r21, 0
000c18  1b031600  andi r6, r12, 1
000c1c  bb7903fe  bneq r6, zero, -388
000c20  db0c0000  j 100
000c24  a902de0a  mm r5, r28, r13, 5
000c28  1b031600  andi r6, r12, 1
000c2c  9f131000  addli r7, zero, 9
000c30  1d900d00  unlock r27
000c34  7d000d00  xsignal r26, 0
000c38  7d800300  xsignal r7, 0
000c3c  3b7903fe  bneq r6, zero, -420
000c40  dbaaffff  j -684
000c44  1f131000  addli r6, zero, 9
000c48  7d900a00  xwait r21, 0
000c4c  7d100300  xwait r6, 0
000c50  1d000000  lock zero, zero
000c54  1f730000  addli r6, zero, 7
000c58  810c0000  ds_cfg r25, zero, 0
000c5c  010c0002  ds_cfg r24, zero, 1
000c60  0109001c  ds_cfg r18, zero, 14
000c64  010c001a  ds_cfg r24, zero, 13
000c68  c1862905  shuffle_coa r13, r19, r18, 2
000c6c  1d100000  unlock zero
000c70  7d000300  xsignal r6, 0
000c74  1f031000  addli r6, zero, 8
000c78  7d000300  xsignal r6, 0
000c7c  1b031600  andi r6, r12, 1
000c80  3b6803fe  bneq r6, zero, -488
000c84  3744b1fe  beq r2, r11, -752
000c88  3b5401fe  bneq r2, zero, -748
000c8c  e300efef  loadli.w r1,  -2064(r30)
000c90  eb590f01  load.d r[20:21], 16(r30)
000c94  b3810028  zext_int2long r[4:5], r1
000c98  9f008007  addli r1, zero, 960
000c9c  33830028  zext_int2long r[7:8], r1
000ca0  e340efef  loadli.w r1,  -2060(r30)
000ca4  0ba36140  min.ul r[7:8], r[4:5], r[7:8]
000ca8  33960028  sext_int2long r[13:14], r1
000cac  9f000003  addli r1, zero, 384
000cb0  27038300  addli.d r[7:8], r[7:8], 64
000cb4  33880028  zext_int2long r[17:18], r1
000cb8  9f202000  addli r1, zero, 18
000cbc  0b233348  max.ul r[7:8], r[7:8], r[4:5]
000cc0  0b380641  min.sl r[17:18], r[13:14], r[17:18]
000cc4  8b313318  sub.sl r[4:5], r[7:8], r[4:5]
000cc8  27030801  addli.d r[7:8], r[17:18], 128
000ccc  33080c28  zext_int2long r[17:18], r24
000cd0  0b33c348  max.sl r[7:8], r[7:8], r[13:14]
000cd4  8ba10141  min.ul r[4:5], r[4:5], r[17:18]
000cd8  33080528  zext_int2long r[17:18], r10
000cdc  0b33c318  sub.sl r[7:8], r[7:8], r[13:14]
000ce0  6b560f80  load.d r[13:14], -2048(r30)
000ce4  0b330341  min.sl r[7:8], r[7:8], r[17:18]
000ce8  17361602  sll.d r[13:14], r[13:14], r1
000cec  9f00ffef  addli r1, r30, -2056
000cf0  0ba6c910  add.ul r[13:14], r[20:21], r[13:14]
000cf4  ebd90000  load.d r[20:21], 0(r1)
000cf8  9f201000  addli r1, zero, 10
000cfc  7d900000  xwait r1, 0
000d00  1d000d00  lock zero, r26
000d04  9bb02100  slli r1, r3, 2
000d08  9f010010  addli r3, zero, 2048
000d0c  97b9b903  sll.d r[20:21], r[20:21], r27
000d10  950d0000  dma_cfg r27, zero, zero, 0
000d14  15800d02  dma_cfg zero, r27, zero, 1
000d18  0b263611  add.ul r[13:14], r[13:14], r[20:21]
000d1c  1f0ac000  addli r20, zero, 96
000d20  95060004  dma_cfg r13, zero, zero, 2
000d24  15861206  dma_cfg r12, r5, r1, 3
000d28  9f000002  addli r1, zero, 256
000d2c  95816008  dma_cfg r3, r1, r6, 4
000d30  9f301000  addli r1, zero, 11
000d34  35000000  dma_run zero
000d38  1d100d00  unlock r26
000d3c  db8bffff  j -932
000d40  7d000000  xsignal zero, 0
000d44  bb600100  bneq r2, zero, 56
000d48  9f200000  addli r1, zero, 2
000d4c  7d100000  xwait zero, 0
000d50  7d100000  xwait zero, 0
000d54  7d100000  xwait zero, 0
000d58  7d100000  xwait zero, 0
000d5c  7d100000  xwait zero, 0
000d60  7d100000  xwait zero, 0
000d64  7d100000  xwait zero, 0
000d68  7d100000  xwait zero, 0
000d6c  1d800000  lock zero, r1
000d70  0d000020  ew_cfg zero, zero, zero, 16
000d74  1d900000  unlock r1
000d78  7d400000  xsignal_mode_cfg zero
000d7c  9f8e4e10  addli sp, sp, 2080
000d80  00a00300  mfence { lm, sm, gm }
000d84  00100000  exit
000d88  00100000  exit
000d8c  00100000  exit
000d90  00100000  exit
000d94  00100000  exit
000d98  00100000  exit
000d9c  00100000  exit
000da0  00100000  exit
000da4  00100000  exit
000da8  00100000  exit
000dac  00100000  exit
000db0  00100000  exit
000db4  00100000  exit
000db8  00100000  exit
000dbc  00100000  exit
000dc0  00100000  exit
000dc4  00100000  exit
000dc8  00100000  exit
000dcc  00100000  exit
000dd0  00100000  exit
000dd4  00100000  exit
000dd8  00100000  exit
000ddc  00100000  exit
000de0  00100000  exit
000de4  00100000  exit
000de8  00100000  exit
000dec  00100000  exit
000df0  00100000  exit
000df4  00100000  exit
000df8  00100000  exit
000dfc  00100000  exit
000e00  00100000  exit
000e04  00100000  exit
000e08  00100000  exit
000e0c  00100000  exit
000e10  00100000  exit
000e14  00100000  exit
000e18  00100000  exit
000e1c  00100000  exit
000e20  00100000  exit
000e24  00100000  exit
000e28  00100000  exit
000e2c  00100000  exit
000e30  00100000  exit
000e34  00100000  exit
000e38  00100000  exit
000e3c  00100000  exit
000e40  00100000  exit
000e44  00100000  exit
000e48  00100000  exit
000e4c  00100000  exit
000e50  00100000  exit
000e54  00100000  exit
000e58  00100000  exit
000e5c  00100000  exit
000e60  00100000  exit
000e64  00100000  exit
000e68  00100000  exit
000e6c  00100000  exit
000e70  00100000  exit
000e74  00100000  exit
000e78  00100000  exit
000e7c  00100000  exit
000e80  00100000  exit
000e84  00100000  exit
000e88  00100000  exit
000e8c  00100000  exit
000e90  00100000  exit
000e94  00100000  exit
000e98  00100000  exit
000e9c  00100000  exit
000ea0  00100000  exit
000ea4  00100000  exit
000ea8  00100000  exit
000eac  00100000  exit
000eb0  00100000  exit
000eb4  00100000  exit
000eb8  00100000  exit
000ebc  00100000  exit
000ec0  00100000  exit
000ec4  00100000  exit
000ec8  00100000  exit
000ecc  00100000  exit
000ed0  00100000  exit
000ed4  00100000  exit
000ed8  00100000  exit
000edc  00100000  exit
000ee0  00100000  exit
000ee4  00100000  exit
000ee8  00100000  exit
000eec  00100000  exit
000ef0  00100000  exit
000ef4  00100000  exit
000ef8  00100000  exit
000efc  00100000  exit
000f00  00100000  exit
000f04  00100000  exit
000f08  00100000  exit
000f0c  00100000  exit
000f10  00100000  exit
000f14  00100000  exit
000f18  00100000  exit
000f1c  00100000  exit
000f20  00100000  exit
000f24  00100000  exit
000f28  00100000  exit
000f2c  00100000  exit
000f30  00100000  exit
000f34  00100000  exit
000f38  00100000  exit
000f3c  00100000  exit
000f40  00100000  exit
000f44  00100000  exit
000f48  00100000  exit
000f4c  00100000  exit
000f50  00100000  exit
000f54  00100000  exit
000f58  00100000  exit
000f5c  00100000  exit
000f60  00100000  exit
000f64  00100000  exit
000f68  00100000  exit
000f6c  00100000  exit
000f70  00100000  exit
000f74  00100000  exit
000f78  00100000  exit
000f7c  00100000  exit
000f80  00100000  exit
000f84  00100000  exit
000f88  00100000  exit
000f8c  00100000  exit
000f90  00100000  exit
000f94  00100000  exit
000f98  00100000  exit
000f9c  00100000  exit
000fa0  00100000  exit
000fa4  00100000  exit
000fa8  00100000  exit
000fac  00100000  exit
000fb0  00100000  exit
000fb4  00100000  exit
000fb8  00100000  exit
000fbc  00100000  exit
000fc0  00100000  exit
000fc4  00100000  exit
