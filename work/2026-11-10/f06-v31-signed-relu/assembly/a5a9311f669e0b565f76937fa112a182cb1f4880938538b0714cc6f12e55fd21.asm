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
0000b4  9f8e5eef  addli sp, sp, -2136
0000b8  1f8f3e10  addli r30, sp, 2072
0000bc  9f100000  addli r1, zero, 1
0000c0  00370002  core_id r14
0000c4  e3064f00  loadli.w r13,  32(r30)
0000c8  634a3f00  loadli.w r20,  28(r30)
0000cc  7dc00000  xsignal_mode_cfg r1
0000d0  37600700  beq r14, zero, 24
0000d4  abf0ffff  lui r1, 1048575
0000d8  9b90f0ff  ori r1, r1, 4095
0000dc  80a10004  csr_set csr3, r1
0000e0  00d00100  sync_group
0000e4  5b010100  j 2056
0000e8  1f210000  addli r2, zero, 2
0000ec  fdd00000  uni_sram_cfg r1, r1
0000f0  abf1ffff  lui r3, 1048575
0000f4  1d000100  lock zero, r2
0000f8  8d000020  ew_cfg r1, zero, zero, 16
0000fc  9b90f1ff  ori r1, r3, 4095
000100  9f310000  addli r3, zero, 3
000104  1d100100  unlock r2
000108  1f311000  addli r2, zero, 11
00010c  80a10004  csr_set csr3, r1
000110  9f500000  addli r1, zero, 5
000114  00d00100  sync_group
000118  7d000100  xsignal r2, 0
00011c  7d000100  xsignal r2, 0
000120  7d000100  xsignal r2, 0
000124  7d000100  xsignal r2, 0
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
0003c4  7d800100  xsignal r3, 0
0003c8  9f101000  addli r1, zero, 9
0003cc  9f710000  addli r3, zero, 7
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
0007c4  7d800000  xsignal r1, 0
0007c8  7d800000  xsignal r1, 0
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
0008e4  7d800100  xsignal r3, 0
0008e8  7d800100  xsignal r3, 0
0008ec  e3003f00  loadli.w r1,  24(r30)
0008f0  63413f00  loadli.w r2,  28(r30)
0008f4  00d20002  load_param_i r4, 1
0008f8  e3014f00  loadli.w r3,  32(r30)
0008fc  e74d0ffc  storeli.w zero, -292(r30)
000900  e74d0ff4  storeli.w zero, -1316(r30)
000904  e70b0ff2  storeli.w zero, -1608(r30)
000908  67430ff0  storeli.w zero, -1996(r30)
00090c  8b101120  mul.s r1, r2, r1
000910  1f010200  addli r2, r4, 0
000914  0b913050  fmac.s r2, r1, r3
000918  8b913020  mul.s r3, r1, r3
00091c  1f71f1ff  addli r2, r2, -1
000920  0b114130  div.s r2, r2, r4
000924  00520002  load_param_i r4, 0
000928  8b104120  mul.s r1, r2, r4
00092c  0b114150  fmac.s r2, r2, r4
000930  0b113140  min.s r2, r2, r3
000934  cb031102  ble.s r2, r1, 1248
000938  33110128  sext_int2long r[3:4], r2
00093c  33920028  sext_int2long r[5:6], r1
000940  634ebffd  loadli.w r28,  -292(r30)
000944  634dbff5  loadli.w r26,  -1316(r30)
000948  63047ff3  loadli.w r8,  -1608(r30)
00094c  e34d6ff0  loadli.w r27,  -1996(r30)
000950  9f0a0001  addli r21, zero, 128
000954  1f450000  addli r10, zero, 4
000958  1f6c0000  addli r24, zero, 6
00095c  9f0cc000  addli r25, zero, 96
000960  1f0b9000  addli r22, zero, 72
000964  1f790000  addli r18, zero, 7
000968  9f3b0000  addli r23, zero, 3
00096c  1f068000  addli r12, zero, 64
000970  9f044000  addli r9, zero, 32
000974  9f290000  addli r19, zero, 2
000978  ab050200  lui r11, 32
00097c  9f070000  addli r15, zero, 0
000980  73302f80  store.d r[3:4], -2048(r30)
000984  1f71f01f  addli r2, zero, 4095
000988  9f01dfef  addli r3, r30, -2072
00098c  ab80ffff  lui r1, 1048568
000990  73b01100  store.d r[2:3], 0(r3)
000994  5b0a0000  j 80
000998  1f240400  addli r8, r8, 2
00099c  1f9d0000  addli r26, r1, 1
0009a0  9f201000  addli r1, zero, 10
0009a4  9f9d0c00  addli r27, r25, 1
0009a8  1f9e0900  addli r28, r19, 1
0009ac  7d800000  xsignal r1, 0
0009b0  6b528f82  load.d r[5:6], -2008(r30)
0009b4  e3064f00  loadli.w r13,  32(r30)
0009b8  634a3f00  loadli.w r20,  28(r30)
0009bc  9f0cc000  addli r25, zero, 96
0009c0  e3474ff0  loadli.w r15,  -2012(r30)
0009c4  9f3b0000  addli r23, zero, 3
0009c8  9f290000  addli r19, zero, 2
0009cc  ab050200  lui r11, 32
0009d0  eb500f80  load.d r[2:3], -2048(r30)
0009d4  27120200  addli.d r[5:6], r[5:6], 1
0009d8  9f970700  addli r15, r15, 1
0009dc  93301204  setlt.sl r1, r[5:6], r[2:3]
0009e0  b7d00002  beq r1, zero, 1076
0009e4  8b10d230  div.s r1, r4, r13
0009e8  9f031000  addli r7, zero, 8
0009ec  33080628  zext_int2long r[17:18], r12
0009f0  733c0f81  store.d r[17:18], -2024(r30)
0009f4  8b914031  div.s r3, r1, r20
0009f8  0b935131  div.s r6, r3, r21
0009fc  9b303300  slli r1, r6, 3
000a00  0b111518  sub.s r2, r10, r1
000a04  8b137140  min.s r7, r2, r7
000a08  0b917138  mod.s r2, r3, r7
000a0c  8b902010  add.s r1, r1, r2
000a10  1f010003  addli r2, zero, 384
000a14  33880028  zext_int2long r[17:18], r1
000a18  73340f81  store.d r[17:18], -2040(r30)
000a1c  33080128  zext_int2long r[17:18], r2
000a20  73380f81  store.d r[17:18], -2032(r30)
000a24  3b50a700  bneq r14, r10, 20
000a28  1f311000  addli r2, zero, 11
000a2c  1f180000  addli r16, zero, 1
000a30  7d100100  xwait r2, 0
000a34  5b0f0000  j 120
000a38  1f180000  addli r16, zero, 1
000a3c  b7570701  beq r14, r16, 500
000a40  bb313701  bneq r14, r19, 108
000a44  9f100000  addli r1, zero, 1
000a48  1f530000  addli r6, zero, 5
000a4c  0b116439  mod.s r2, r8, r22
000a50  8b919d39  mod.s r3, r27, r25
000a54  7d900900  xwait r19, 0
000a58  7d100300  xwait r6, 0
000a5c  1d000000  lock zero, zero
000a60  9f9d0d00  addli r27, r27, 1
000a64  1f140400  addli r8, r8, 1
000a68  810b0000  ds_cfg r23, zero, 0
000a6c  01060002  ds_cfg r12, zero, 1
000a70  8104001c  ds_cfg r9, zero, 14
000a74  810a001a  ds_cfg r21, zero, 13
000a78  1b31e100  slli r2, r2, 14
000a7c  9bb1d100  slli r3, r3, 13
000a80  0b11b110  add.s r2, r2, r11
000a84  a1119102  shuffle_batch r3, r2, r9, 1
000a88  1b811000  andi r2, r1, 1
000a8c  9f000000  addli r1, zero, 0
000a90  1d100000  unlock zero
000a94  7d800b00  xsignal r23, 0
000a98  7d000500  xsignal r10, 0
000a9c  bb4e01fe  bneq r2, zero, -80
000aa0  1f2d0d00  addli r26, r26, 2
000aa4  1f2e0e00  addli r28, r28, 2
000aa8  5be5ffff  j -216
000aac  1b337300  slli r6, r6, 7
000ab0  9bb07000  slli r1, r1, 7
000ab4  73344f82  store.d r[5:6], -2008(r30)
000ab8  9f1b0000  addli r23, zero, 1
000abc  9f260000  addli r13, zero, 2
000ac0  1f3a0000  addli r20, zero, 3
000ac4  1f010000  addli r2, zero, 0
000ac8  9f050000  addli r11, zero, 0
000acc  6742fff0  storeli.w r15, -2012(r30)
000ad0  8b916118  sub.s r3, r3, r6
000ad4  0b93a738  mod.s r6, r15, r10
000ad8  674f1fee  storeli.w r1, -2060(r30)
000adc  8b917130  div.s r3, r3, r7
000ae0  33820128  zext_int2long r[5:6], r3
000ae4  9bb06100  slli r1, r3, 6
000ae8  9b31f300  slli r3, r6, 15
000aec  6b538f00  load.d r[7:8], 8(r30)
000af0  670f1fee  storeli.w r1, -2064(r30)
000af4  17328203  sll.d r[5:6], r[5:6], r24
000af8  9f00ffef  addli r1, r30, -2056
000afc  73b04000  store.d r[5:6], 0(r1)
000b00  17327203  sll.d r[5:6], r[5:6], r23
000b04  0b234310  add.ul r[7:8], r[7:8], r[5:6]
000b08  db080000  j 68
000b0c  1f111000  addli r2, zero, 9
000b10  7d100c00  xwait r24, 0
000b14  7d100100  xwait r2, 0
000b18  1d000000  lock zero, zero
000b1c  1f011000  addli r2, zero, 8
000b20  010a0000  ds_cfg r20, zero, 0
000b24  01060002  ds_cfg r12, zero, 1
000b28  8104001c  ds_cfg r9, zero, 14
000b2c  0106001a  ds_cfg r12, zero, 13
000b30  c1879804  shuffle_coa r15, r17, r9, 2
000b34  1d100000  unlock zero
000b38  7d000900  xsignal r18, 0
000b3c  7d000100  xsignal r2, 0
000b40  1b811b00  andi r2, r23, 1
000b44  3b430100  bneq r2, zero, 208
000b48  db1b0000  j 220
000b4c  8b19be10  add.s r19, r28, r11
000b50  8b10bd10  add.s r1, r26, r11
000b54  9f72f001  addli r5, zero, 255
000b58  8b9cbd10  add.s r25, r27, r11
000b5c  0b926939  mod.s r4, r19, r22
000b60  8b925038  mod.s r5, r1, r5
000b64  9bb7c200  slli r15, r5, 12
000b68  1b32c200  slli r4, r4, 12
000b6c  ab021400  lui r5, 320
000b70  8b185210  add.s r17, r4, r5
000b74  376e27ff  beq r14, r18, -104
000b78  3b018701  bneq r14, r24, 64
000b7c  33020128  zext_int2long r[5:6], r2
000b80  7d100900  xwait r18, 0
000b84  1d000500  lock zero, r10
000b88  1f010010  addli r2, zero, 2048
000b8c  15080800  dma_cfg r16, r16, zero, 0
000b90  0b224310  add.ul r[5:6], r[7:8], r[5:6]
000b94  15800204  dma_cfg zero, r5, zero, 2
000b98  95085207  dma_cfg r17, r4, r21, 3
000b9c  950a9108  dma_cfg r21, r2, r9, 4
000ba0  35000000  dma_run zero
000ba4  1d100500  unlock r10
000ba8  7d000c00  xsignal r24, 0
000bac  1b811b00  andi r2, r23, 1
000bb0  bb110100  bneq r2, zero, 100
000bb4  5b0e0000  j 112
000bb8  1b811b00  andi r2, r23, 1
000bbc  bb50a700  bneq r14, r10, 52
000bc0  1f02c000  addli r4, zero, 96
000bc4  9f021000  addli r5, zero, 8
000bc8  7d100500  xwait r10, 0
000bcc  0b924c38  mod.s r4, r25, r4
000bd0  7d900200  xwait r5, 0
000bd4  1d000800  lock zero, r16
000bd8  09865401  mm_cfg r12, r9, r21, 0
000bdc  09880605  mm_cfg r16, r13, r16, 2
000be0  9b38d200  slli r17, r4, 13
000be4  37d00500  beq r11, zero, 20
000be8  a991f80a  mm_acc r3, r17, r15, 5
000bec  5b020000  j 16
000bf0  bb100100  bneq r2, zero, 36
000bf4  5b0c0000  j 96
000bf8  a981f80a  mm r3, r17, r15, 5
000bfc  1f520000  addli r4, zero, 5
000c00  1d100800  unlock r16
000c04  7d000200  xsignal r4, 0
000c08  1f121000  addli r4, zero, 9
000c0c  7d000200  xsignal r4, 0
000c10  372601fe  beq r2, zero, -632
000c14  9f950500  addli r11, r11, 1
000c18  2b010100  lui r2, 16
000c1c  9f0b0000  addli r23, zero, 0
000c20  dbe5ffff  j -212
000c24  1f240400  addli r8, r8, 2
000c28  b755a7fe  beq r14, r10, -652
000c2c  db050000  j 44
000c30  93801b04  setlt.u r1, r23, r1
000c34  6b538f80  load.d r[7:8], -2040(r30)
000c38  1f511000  addli r2, zero, 13
000c3c  73344f82  store.d r[5:6], -2008(r30)
000c40  6742fff0  storeli.w r15, -2012(r30)
000c44  17332302  sll.d r[7:8], r[7:8], r2
000c48  bbc30000  bneq r1, zero, 240
000c4c  b3000028  zext_int2long r[2:3], zero
000c50  db1e0000  j 244
000c54  1f240400  addli r8, r8, 2
000c58  6b528f82  load.d r[5:6], -2008(r30)
000c5c  9f9d0c00  addli r27, r25, 1
000c60  1f9d0000  addli r26, r1, 1
000c64  1f9e0900  addli r28, r19, 1
000c68  3b3507fe  bneq r14, zero, -692
000c6c  e300efef  loadli.w r1,  -2064(r30)
000c70  1f028007  addli r4, zero, 960
000c74  6343efef  loadli.w r6,  -2060(r30)
000c78  eb560f81  load.d r[14:15], -2032(r30)
000c7c  eb590f01  load.d r[20:21], 16(r30)
000c80  9f05ffef  addli r11, r30, -2056
000c84  9f0cc000  addli r25, zero, 96
000c88  33020228  zext_int2long r[5:6], r4
000c8c  b3800028  zext_int2long r[2:3], r1
000c90  33130328  sext_int2long r[7:8], r6
000c94  0ba24040  min.ul r[5:6], r[2:3], r[5:6]
000c98  8b36d340  min.sl r[14:15], r[7:8], r[14:15]
000c9c  27028200  addli.d r[5:6], r[5:6], 64
000ca0  a7860601  addli.d r[14:15], r[14:15], 128
000ca4  0b221248  max.ul r[5:6], r[5:6], r[2:3]
000ca8  8b301218  sub.sl r[2:3], r[5:6], r[2:3]
000cac  0bb26648  max.sl r[5:6], r[14:15], r[7:8]
000cb0  eb568f81  load.d r[14:15], -2024(r30)
000cb4  0b326218  sub.sl r[5:6], r[5:6], r[7:8]
000cb8  1f232000  addli r6, zero, 18
000cbc  8ba0d040  min.ul r[2:3], r[2:3], r[14:15]
000cc0  eb568f80  load.d r[14:15], -2040(r30)
000cc4  9bb02000  slli r1, r1, 2
000cc8  1f010010  addli r2, zero, 2048
000ccc  17b36602  sll.d r[7:8], r[14:15], r6
000cd0  b3860a28  zext_int2long r[14:15], r21
000cd4  0ba36910  add.ul r[7:8], r[20:21], r[7:8]
000cd8  ebd90500  load.d r[20:21], 0(r11)
000cdc  9f251000  addli r11, zero, 10
000ce0  0b32d240  min.sl r[5:6], r[5:6], r[14:15]
000ce4  e3064f00  loadli.w r13,  32(r30)
000ce8  00370002  core_id r14
000cec  7d900500  xwait r11, 0
000cf0  9f550000  addli r11, zero, 5
000cf4  97b90903  sll.d r[20:21], r[20:21], r16
000cf8  1d800500  lock zero, r11
000cfc  0b233311  add.ul r[7:8], r[7:8], r[20:21]
000d00  15080000  dma_cfg r16, zero, zero, 0
000d04  634a3f00  loadli.w r20,  28(r30)
000d08  15000802  dma_cfg zero, r16, zero, 1
000d0c  95030004  dma_cfg r7, zero, zero, 2
000d10  15831106  dma_cfg r6, r3, r1, 3
000d14  9f000002  addli r1, zero, 256
000d18  9f510000  addli r3, zero, 5
000d1c  15814008  dma_cfg r2, r1, r4, 4
000d20  9f301000  addli r1, zero, 11
000d24  6b528f82  load.d r[5:6], -2008(r30)
000d28  35000000  dma_run zero
000d2c  1d900100  unlock r3
000d30  7d800000  xsignal r1, 0
000d34  db91ffff  j -884
000d38  9f01dfef  addli r3, r30, -2072
000d3c  ebd00100  load.d r[2:3], 0(r3)
000d40  97001302  and.d r[2:3], r[7:8], r[2:3]
000d44  6b5c0f00  load.d r[25:26], 0(r30)
000d48  6b588f81  load.d r[17:18], -2024(r30)
000d4c  eb5a0f81  load.d r[22:23], -2032(r30)
000d50  9f110000  addli r3, zero, 1
000d54  9f050000  addli r11, zero, 0
000d58  1f160000  addli r12, zero, 1
000d5c  33820528  zext_int2long r[5:6], r11
000d60  9f059000  addli r11, zero, 72
000d64  7d900b00  xwait r23, 0
000d68  1d000500  lock zero, r10
000d6c  15060600  dma_cfg r12, r12, zero, 0
000d70  17124302  or.d r[5:6], r[7:8], r[5:6]
000d74  8b17b438  mod.s r15, r8, r11
000d78  1f140400  addli r8, r8, 1
000d7c  9f054000  addli r11, zero, 32
000d80  8b361218  sub.sl r[14:15], r[5:6], r[2:3]
000d84  1732c202  sll.d r[5:6], r[5:6], r12
000d88  8f960661  div.sl r[14:15], r[14:15], r[17:18]
000d8c  0b224c10  add.ul r[5:6], r[25:26], r[5:6]
000d90  9bb7e700  slli r15, r15, 14
000d94  15800204  dma_cfg zero, r5, zero, 2
000d98  8bb95641  min.sl r[20:21], r[14:15], r[22:23]
000d9c  8bb6d918  sub.sl r[14:15], r[20:21], r[14:15]
000da0  2b0a0200  lui r20, 32
000da4  9f290000  addli r19, zero, 2
000da8  8b974711  add.s r15, r15, r20
000dac  1f0a8000  addli r20, zero, 64
000db0  95074207  dma_cfg r15, r4, r20, 3
000db4  9b821100  andi r5, r3, 1
000db8  1f820601  addli r4, r13, 128
000dbc  9f010001  addli r3, zero, 128
000dc0  95814108  dma_cfg r3, r3, r4, 4
000dc4  9f010000  addli r3, zero, 0
000dc8  35000000  dma_run zero
000dcc  1d100500  unlock r10
000dd0  7d800900  xsignal r19, 0
000dd4  3bae02fe  bneq r5, zero, -120
000dd8  e3064f00  loadli.w r13,  32(r30)
000ddc  634a3f00  loadli.w r20,  28(r30)
000de0  6b528f82  load.d r[5:6], -2008(r30)
000de4  e3474ff0  loadli.w r15,  -2012(r30)
000de8  9fad0d00  addli r27, r27, 2
000dec  1f2d0d00  addli r26, r26, 2
000df0  1f2e0e00  addli r28, r28, 2
000df4  00370002  core_id r14
000df8  1f6c0000  addli r24, zero, 6
000dfc  ab050200  lui r11, 32
000e00  9f0a0001  addli r21, zero, 128
000e04  1f068000  addli r12, zero, 64
000e08  1f0b9000  addli r22, zero, 72
000e0c  9f0cc000  addli r25, zero, 96
000e10  5b78ffff  j -1088
000e14  7d000000  xsignal zero, 0
000e18  bb600700  bneq r14, zero, 56
000e1c  9f200000  addli r1, zero, 2
000e20  7d100000  xwait zero, 0
000e24  7d100000  xwait zero, 0
000e28  7d100000  xwait zero, 0
000e2c  7d100000  xwait zero, 0
000e30  7d100000  xwait zero, 0
000e34  7d100000  xwait zero, 0
000e38  7d100000  xwait zero, 0
000e3c  7d100000  xwait zero, 0
000e40  1d800000  lock zero, r1
000e44  0d000020  ew_cfg zero, zero, zero, 16
000e48  1d900000  unlock r1
000e4c  7d400000  xsignal_mode_cfg zero
000e50  9f8e3e10  addli sp, sp, 2072
000e54  00a00300  mfence { lm, sm, gm }
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
000fc8  00100000  exit
000fcc  00100000  exit
000fd0  00100000  exit
000fd4  00100000  exit
000fd8  00100000  exit
000fdc  00100000  exit
000fe0  00100000  exit
000fe4  00100000  exit
000fe8  00100000  exit
000fec  00100000  exit
000ff0  00100000  exit
000ff4  00100000  exit
000ff8  00100000  exit
000ffc  00100000  exit
001000  00100000  exit
001004  00100000  exit
001008  00100000  exit
00100c  00100000  exit
001010  00100000  exit
001014  00100000  exit
001018  00100000  exit
00101c  00100000  exit
001020  00100000  exit
001024  00100000  exit
001028  00100000  exit
00102c  00100000  exit
001030  00100000  exit
001034  00100000  exit
001038  00100000  exit
00103c  00100000  exit
001040  00100000  exit
001044  00100000  exit
001048  00100000  exit
00104c  00100000  exit
001050  00100000  exit
001054  00100000  exit
001058  00100000  exit
00105c  00100000  exit
001060  00100000  exit
001064  00100000  exit
001068  00100000  exit
00106c  00100000  exit
001070  00100000  exit
001074  00100000  exit
001078  00100000  exit
00107c  00100000  exit
001080  00100000  exit
001084  00100000  exit
001088  00100000  exit
00108c  00100000  exit
001090  00100000  exit
001094  00100000  exit
001098  00100000  exit
