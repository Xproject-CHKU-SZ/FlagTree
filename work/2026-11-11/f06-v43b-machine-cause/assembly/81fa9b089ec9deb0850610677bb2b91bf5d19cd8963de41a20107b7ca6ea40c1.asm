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
0000b4  9f8e0ef4  addli sp, sp, -1536
0000b8  9f100000  addli r1, zero, 1
0000bc  003b0002  core_id r22
0000c0  1f8f8e0b  addli r30, sp, 1472
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600b00  beq r22, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  dbb60000  j 1460
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
00011c  7d800100  xsignal r3, 0
000120  9f310000  addli r3, zero, 3
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
0002a4  9f101000  addli r1, zero, 9
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
000340  9f710000  addli r3, zero, 7
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
0005c4  9f501000  addli r1, zero, 13
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
000664  9f711000  addli r3, zero, 15
000668  7d800000  xsignal r1, 0
00066c  7d800000  xsignal r1, 0
000670  7d800000  xsignal r1, 0
000674  7d800000  xsignal r1, 0
000678  7d800000  xsignal r1, 0
00067c  7d800100  xsignal r3, 0
000680  7d800100  xsignal r3, 0
000684  7d800100  xsignal r3, 0
000688  7d800100  xsignal r3, 0
00068c  7d800100  xsignal r3, 0
000690  e3004f00  loadli.w r1,  32(r30)
000694  e3414f00  loadli.w r3,  36(r30)
000698  80d20002  load_param_i r5, 1
00069c  63025f00  loadli.w r4,  40(r30)
0006a0  e70e0ffe  storeli.w zero, -24(r30)
0006a4  670d0ffe  storeli.w zero, -48(r30)
0006a8  67030ffe  storeli.w zero, -208(r30)
0006ac  e74a0ff8  storeli.w zero, -852(r30)
0006b0  67010ff8  storeli.w zero, -1008(r30)
0006b4  e7480ff4  storeli.w zero, -1396(r30)
0006b8  8b901120  mul.s r1, r3, r1
0006bc  9f810200  addli r3, r5, 0
0006c0  8b914050  fmac.s r3, r1, r4
0006c4  0b924020  mul.s r4, r1, r4
0006c8  9ff1f1ff  addli r3, r3, -1
0006cc  8b915130  div.s r3, r3, r5
0006d0  80520002  load_param_i r5, 0
0006d4  8b905120  mul.s r1, r3, r5
0006d8  8b915150  fmac.s r3, r3, r5
0006dc  8b914140  min.s r3, r3, r4
0006e0  4be51102  ble.s r3, r1, 1368
0006e4  b3910128  sext_int2long r[4:5], r3
0006e8  33930028  sext_int2long r[7:8], r1
0006ec  630adfff  loadli.w r20,  -24(r30)
0006f0  e30cafff  loadli.w r25,  -48(r30)
0006f4  63046ffe  loadli.w r8,  -208(r30)
0006f8  e3042ff8  loadli.w r9,  -1008(r30)
0006fc  63465ff9  loadli.w r12,  -852(r30)
000700  e3461ff5  loadli.w r13,  -1396(r30)
000704  1f070001  addli r14, zero, 128
000708  9f072000  addli r15, zero, 16
00070c  9f5d0000  addli r27, zero, 5
000710  9f490000  addli r19, zero, 4
000714  9f2a0000  addli r21, zero, 2
000718  1f614000  addli r2, zero, 38
00071c  1f088000  addli r16, zero, 64
000720  73343fa4  store.d r[4:5], -1464(r30)
000724  1f72f01f  addli r4, zero, 4095
000728  ab01feff  lui r3, 1048544
00072c  73303fa4  store.d r[4:5], -1472(r30)
000730  2bf20100  lui r4, 31
000734  9b10f2ff  ori r1, r4, 4095
000738  e7081ff4  storeli.w r1, -1400(r30)
00073c  9f000000  addli r1, zero, 0
000740  5b0d0000  j 104
000744  6b520f01  load.d r[5:6], 16(r30)
000748  eb580fa6  load.d r[18:19], -1440(r30)
00074c  9f551000  addli r11, zero, 13
000750  1b332300  slli r6, r6, 2
000754  7d900500  xwait r11, 0
000758  1d800900  lock zero, r19
00075c  0b221211  add.ul r[5:6], r[5:6], r[18:19]
000760  15000000  dma_cfg zero, zero, zero, 0
000764  15800204  dma_cfg zero, r5, zero, 2
000768  15056206  dma_cfg r10, r4, r6, 3
00076c  1f020004  addli r4, zero, 512
000770  15021208  dma_cfg r4, r4, r1, 4
000774  9f401000  addli r1, zero, 12
000778  35000000  dma_run zero
00077c  1d900900  unlock r19
000780  7d800000  xsignal r1, 0
000784  630afff4  loadli.w r20,  -1416(r30)
000788  6b530fa7  load.d r[7:8], -1424(r30)
00078c  6b528fa4  load.d r[5:6], -1464(r30)
000790  e340dff4  loadli.w r1,  -1428(r30)
000794  9f9c0c00  addli r25, r25, 1
000798  1f1a0a00  addli r20, r20, 1
00079c  27130300  addli.d r[7:8], r[7:8], 1
0007a0  13324304  setlt.sl r4, r[7:8], r[5:6]
0007a4  37520202  beq r4, zero, 1172
0007a8  e7479ff5  storeli.w r25, -1412(r30)
0007ac  e7074ff5  storeli.w r20, -1416(r30)
0007b0  3b303b01  bneq r22, r19, 12
0007b4  1f321000  addli r4, zero, 11
0007b8  7d100200  xwait r4, 0
0007bc  63025f00  loadli.w r4,  40(r30)
0007c0  73386fa6  store.d r[7:8], -1424(r30)
0007c4  9f081000  addli r17, zero, 8
0007c8  0b95b039  mod.s r10, r1, r27
0007cc  9f900000  addli r1, r1, 1
0007d0  9f020000  addli r5, zero, 0
0007d4  1f0a0000  addli r20, zero, 0
0007d8  e7461ff4  storeli.w r1, -1428(r30)
0007dc  0b124330  div.s r4, r6, r4
0007e0  63434f00  loadli.w r6,  36(r30)
0007e4  0b126230  div.s r4, r4, r6
0007e8  0b13e230  div.s r6, r4, r14
0007ec  9b333300  slli r7, r6, 3
0007f0  1b337300  slli r6, r6, 7
0007f4  8b957718  sub.s r11, r15, r7
0007f8  0b136218  sub.s r6, r4, r6
0007fc  8b951541  min.s r11, r11, r17
000800  0b13b330  div.s r6, r6, r11
000804  8b18b238  mod.s r17, r4, r11
000808  1b320501  slli r4, r10, 16
00080c  9b307300  slli r1, r6, 7
000810  33050328  zext_int2long r[11:12], r6
000814  1f730000  addli r6, zero, 7
000818  8b931311  add.s r7, r7, r17
00081c  17356502  sll.d r[11:12], r[11:12], r6
000820  b38b0328  zext_int2long r[24:25], r7
000824  1f531000  addli r6, zero, 13
000828  e7061ff4  storeli.w r1, -1432(r30)
00082c  9bb07300  slli r1, r7, 7
000830  97385503  sll.d r[18:19], r[11:12], r21
000834  6b558f00  load.d r[11:12], 8(r30)
000838  17b36b02  sll.d r[7:8], r[24:25], r6
00083c  67451ff4  storeli.w r1, -1452(r30)
000840  ab000500  lui r1, 80
000844  733c7fa5  store.d r[24:25], -1448(r30)
000848  73301fa7  store.d r[18:19], -1440(r30)
00084c  0b251511  add.ul r[11:12], r[11:12], r[18:19]
000850  7330afa8  store.d r[11:12], -1408(r30)
000854  6b550fa4  load.d r[11:12], -1472(r30)
000858  970ca302  and.d r[26:27], r[7:8], r[11:12]
00085c  db0f0000  j 124
000860  0bb5ab18  sub.sl r[11:12], r[24:25], r[11:12]
000864  b30d0828  zext_int2long r[28:29], r16
000868  9f08000f  addli r17, zero, 1920
00086c  eb500f00  load.d r[2:3], 0(r30)
000870  97bb5b03  sll.d r[24:25], r[24:25], r21
000874  1f160600  addli r12, r12, 1
000878  0f15b561  div.sl r[11:12], r[11:12], r[28:29]
00087c  b38d0828  zext_int2long r[28:29], r17
000880  9f380000  addli r17, zero, 3
000884  8bab7011  add.ul r[24:25], r[2:3], r[24:25]
000888  9f000002  addli r1, zero, 256
00088c  1f614000  addli r2, zero, 38
000890  7d900800  xwait r17, 0
000894  1d800900  lock zero, r19
000898  15000000  dma_cfg zero, zero, zero, 0
00089c  15000c04  dma_cfg zero, r24, zero, 2
0008a0  15890b07  dma_cfg r18, r23, r16, 3
0008a4  8b3db541  min.sl r[28:29], r[11:12], r[28:29]
0008a8  0bb5ad18  sub.sl r[11:12], r[28:29], r[11:12]
0008ac  9f5d0000  addli r27, zero, 5
0008b0  1f050501  addli r10, r10, 128
0008b4  1587a008  dma_cfg r14, r1, r10, 4
0008b8  35000000  dma_run zero
0008bc  1d900900  unlock r19
0008c0  7d800a00  xsignal r21, 0
0008c4  ab000500  lui r1, 80
0008c8  9f920200  addli r5, r5, 1
0008cc  1f140400  addli r8, r8, 1
0008d0  37983201  beq r5, r19, 516
0008d4  1f1a0a00  addli r20, r20, 1
0008d8  0b952438  mod.s r10, r9, r2
0008dc  9f05c000  addli r11, zero, 96
0008e0  9f940400  addli r9, r9, 1
0008e4  8b95b638  mod.s r11, r13, r11
0008e8  9f960600  addli r13, r13, 1
0008ec  1b35e500  slli r10, r10, 14
0008f0  1bbed500  slli r28, r11, 13
0008f4  0b191510  add.s r18, r10, r1
0008f8  b7505b01  beq r22, r21, 52
0008fc  b38b0228  zext_int2long r[24:25], r5
000900  9f110000  addli r3, zero, 1
000904  bb113b00  bneq r22, r3, 100
000908  17b53b03  sll.d r[11:12], r[24:25], r19
00090c  8b2b6510  add.ul r[24:25], r[11:12], r[7:8]
000910  63051ff5  loadli.w r10,  -1400(r30)
000914  33050528  zext_int2long r[11:12], r10
000918  93287505  setlt.ul r17, r[11:12], r[24:25]
00091c  27850c00  addli.d r[11:12], r[26:27], 0
000920  3b8d08fe  bneq r17, zero, -192
000924  33050028  zext_int2long r[11:12], zero
000928  5be7ffff  j -200
00092c  7d900a00  xwait r21, 0
000930  7d900d00  xwait r27, 0
000934  1d000000  lock zero, zero
000938  1f054000  addli r10, zero, 32
00093c  1f160600  addli r12, r12, 1
000940  810a0000  ds_cfg r21, zero, 0
000944  01050002  ds_cfg r10, zero, 1
000948  1f350000  addli r10, zero, 3
00094c  8107001c  ds_cfg r15, zero, 14
000950  0107001a  ds_cfg r14, zero, 13
000954  211ef902  shuffle_batch r28, r18, r15, 1
000958  1d100000  unlock zero
00095c  7d000500  xsignal r10, 0
000960  7d800900  xsignal r19, 0
000964  dbecffff  j -156
000968  1f054001  addli r10, zero, 160
00096c  9f754000  addli r11, zero, 39
000970  9f610000  addli r3, zero, 6
000974  0b15a638  mod.s r10, r12, r10
000978  8b15b438  mod.s r11, r8, r11
00097c  1f160600  addli r12, r12, 1
000980  1b39d500  slli r18, r10, 13
000984  1bb5d500  slli r10, r11, 13
000988  ab850e00  lui r11, 232
00098c  8b18b510  add.s r17, r10, r11
000990  1f750000  addli r10, zero, 7
000994  3731ab00  beq r22, r10, 76
000998  3b123b00  bneq r22, r3, 132
00099c  1f152000  addli r10, zero, 17
0009a0  1f790000  addli r18, zero, 7
0009a4  7d100900  xwait r18, 0
0009a8  17b5ab02  sll.d r[11:12], r[24:25], r10
0009ac  eb5b0fa8  load.d r[24:25], -1408(r30)
0009b0  1d800900  lock zero, r19
0009b4  1f090004  addli r18, zero, 512
0009b8  15000000  dma_cfg zero, zero, zero, 0
0009bc  0ba5ab10  add.ul r[11:12], r[24:25], r[11:12]
0009c0  15800504  dma_cfg zero, r11, zero, 2
0009c4  95082507  dma_cfg r17, r10, r18, 3
0009c8  1f050040  addli r10, zero, 8192
0009cc  1509f508  dma_cfg r18, r10, r15, 4
0009d0  35000000  dma_run zero
0009d4  1d900900  unlock r19
0009d8  7d800100  xsignal r3, 0
0009dc  dbddffff  j -276
0009e0  7d900100  xwait r3, 0
0009e4  9f111000  addli r3, zero, 9
0009e8  1f750000  addli r10, zero, 7
0009ec  7d900100  xwait r3, 0
0009f0  1d000000  lock zero, zero
0009f4  810a0000  ds_cfg r21, zero, 0
0009f8  01070002  ds_cfg r14, zero, 1
0009fc  8107001c  ds_cfg r15, zero, 14
000a00  0107001a  ds_cfg r14, zero, 13
000a04  4189f804  shuffle_coa r18, r17, r15, 2
000a08  1d100000  unlock zero
000a0c  7d000500  xsignal r10, 0
000a10  1f051000  addli r10, zero, 8
000a14  7d000500  xsignal r10, 0
000a18  5bd6ffff  j -336
000a1c  bb223b01  bneq r22, r19, 168
000a20  1f051000  addli r10, zero, 8
000a24  9f180000  addli r17, zero, 1
000a28  9f1b0000  addli r23, zero, 1
000a2c  1f0c0000  addli r24, zero, 0
000a30  7d900900  xwait r19, 0
000a34  7d100500  xwait r10, 0
000a38  b7700a00  beq r20, zero, 60
000a3c  1b35cc00  slli r10, r24, 12
000a40  9b358c00  slli r11, r24, 8
000a44  1d800800  lock zero, r17
000a48  1f1c0000  addli r24, zero, 1
000a4c  0988e700  mm_cfg r16, r15, r14, 0
000a50  17152501  or r10, r10, r18
000a54  97954500  or r11, r11, r4
000a58  89881905  mm_cfg r17, r19, r17, 2
000a5c  a915ae10  mm_acc r11, r28, r10, 8
000a60  1b851b00  andi r10, r23, 1
000a64  9f0b0000  addli r23, zero, 0
000a68  1d900800  unlock r17
000a6c  3b4f05fe  bneq r10, zero, -48
000a70  5b070000  j 56
000a74  1b35cc00  slli r10, r24, 12
000a78  9b358c00  slli r11, r24, 8
000a7c  1d800800  lock zero, r17
000a80  1f1c0000  addli r24, zero, 1
000a84  0988e700  mm_cfg r16, r15, r14, 0
000a88  17152501  or r10, r10, r18
000a8c  97954500  or r11, r11, r4
000a90  89881905  mm_cfg r17, r19, r17, 2
000a94  a905ae10  mm r11, r28, r10, 8
000a98  1b851b00  andi r10, r23, 1
000a9c  9f0b0000  addli r23, zero, 0
000aa0  1d900800  unlock r17
000aa4  3b4f05fe  bneq r10, zero, -48
000aa8  9f920200  addli r5, r5, 1
000aac  1f140400  addli r8, r8, 1
000ab0  9f111000  addli r3, zero, 9
000ab4  7d800d00  xsignal r27, 0
000ab8  7d800100  xsignal r3, 0
000abc  3be832ff  bneq r5, r19, -488
000ac0  5b030000  j 24
000ac4  9f920200  addli r5, r5, 1
000ac8  1f140400  addli r8, r8, 1
000acc  3ba832ff  bneq r5, r19, -504
000ad0  5b020000  j 16
000ad4  3b303b01  bneq r22, r19, 12
000ad8  9f221000  addli r5, zero, 10
000adc  7d800200  xsignal r5, 0
000ae0  e300dff4  loadli.w r1,  -1432(r30)
000ae4  9f02000f  addli r5, zero, 1920
000ae8  e34cfff4  loadli.w r25,  -1412(r30)
000aec  b3080728  zext_int2long r[18:19], r14
000af0  b38b0228  zext_int2long r[24:25], r5
000af4  b3820028  zext_int2long r[6:7], r1
000af8  8b93bc39  mod.s r7, r25, r27
000afc  9f100000  addli r1, zero, 1
000b00  0ba57241  min.ul r[11:12], r[6:7], r[24:25]
000b04  27050501  addli.d r[11:12], r[11:12], 128
000b08  0b255548  max.ul r[11:12], r[11:12], r[6:7]
000b0c  8b325518  sub.sl r[6:7], r[11:12], r[6:7]
000b10  1bb59300  slli r10, r7, 9
000b14  0ba31241  min.ul r[7:8], r[6:7], r[18:19]
000b18  ab621300  lui r5, 310
000b1c  0b155510  add.s r10, r10, r5
000b20  b7101bfe  beq r22, r1, -988
000b24  630afff4  loadli.w r20,  -1416(r30)
000b28  ab651300  lui r11, 310
000b2c  9b9505a0  ori r11, r11, 2560
000b30  8b12ba39  mod.s r5, r20, r27
000b34  9bb20201  slli r5, r5, 16
000b38  8b92b210  add.s r5, r5, r11
000b3c  bb61bb01  bneq r22, r27, 120
000b40  9f231000  addli r7, zero, 10
000b44  9f411000  addli r3, zero, 12
000b48  1f030000  addli r6, zero, 0
000b4c  7d900300  xwait r7, 0
000b50  7d900100  xwait r3, 0
000b54  9f711000  addli r3, zero, 15
000b58  7d900100  xwait r3, 0
000b5c  1d800a00  lock zero, r21
000b60  ab01803f  lui r3, 260096
000b64  8d000014  ew_cfg r1, zero, zero, 10
000b68  0d000002  ew_cfg zero, zero, zero, 1
000b6c  8d910100  ewcoeff_cfg r3, r3, zero, 0
000b70  9f71f000  addli r3, zero, 127
000b74  0d800104  ew_cfg zero, r3, zero, 2
000b78  8d000006  ew_cfg r1, zero, zero, 3
000b7c  ab000100  lui r1, 16
000b80  8b936210  add.s r7, r5, r6
000b84  8b156210  add.s r11, r4, r6
000b88  1f030304  addli r6, r6, 512
000b8c  ad83a500  dsmadd r7, r11, r10, 0
000b90  bb4f13fe  bneq r6, r1, -16
000b94  1f321000  addli r4, zero, 11
000b98  0d000014  ew_cfg zero, zero, zero, 10
000b9c  9f601000  addli r1, zero, 14
000ba0  1d900a00  unlock r21
000ba4  7d000200  xsignal r4, 0
000ba8  1f521000  addli r4, zero, 13
000bac  7d000200  xsignal r4, 0
000bb0  5b100000  j 128
000bb4  3b5f0bfc  bneq r22, zero, -1068
000bb8  e340aff4  loadli.w r1,  -1452(r30)
000bbc  eb518fa5  load.d r[4:5], -1448(r30)
000bc0  eb5c8f01  load.d r[26:27], 24(r30)
000bc4  33950028  sext_int2long r[11:12], r1
000bc8  9f402000  addli r1, zero, 20
000bcc  97b11102  sll.d r[4:5], r[4:5], r1
000bd0  8b3b7541  min.sl r[24:25], r[11:12], r[24:25]
000bd4  9f601000  addli r1, zero, 14
000bd8  7d900000  xwait r1, 0
000bdc  a78b0b01  addli.d r[24:25], r[24:25], 128
000be0  1d800d00  lock zero, r27
000be4  8bac3c10  add.ul r[26:27], r[26:27], r[4:5]
000be8  9f100000  addli r1, zero, 1
000bec  eb510fa6  load.d r[4:5], -1440(r30)
000bf0  8bbbab48  max.sl r[24:25], r[24:25], r[11:12]
000bf4  0bb5ab18  sub.sl r[11:12], r[24:25], r[11:12]
000bf8  8bab3c10  add.ul r[24:25], r[26:27], r[4:5]
000bfc  e34cfff4  loadli.w r25,  -1412(r30)
000c00  15000000  dma_cfg zero, zero, zero, 0
000c04  1b322300  slli r4, r6, 2
000c08  9f010040  addli r3, zero, 8192
000c0c  15800002  dma_cfg zero, r1, zero, 1
000c10  9f000004  addli r1, zero, 512
000c14  150c0004  dma_cfg r24, zero, zero, 2
000c18  0b351541  min.sl r[11:12], r[11:12], r[18:19]
000c1c  958b4206  dma_cfg r23, r5, r4, 3
000c20  9581a008  dma_cfg r3, r1, r10, 4
000c24  9f701000  addli r1, zero, 15
000c28  35000000  dma_run zero
000c2c  1d900d00  unlock r27
000c30  7d800000  xsignal r1, 0
000c34  db6affff  j -1196
000c38  7d000000  xsignal zero, 0
000c3c  bb600b00  bneq r22, zero, 56
000c40  9f200000  addli r1, zero, 2
000c44  7d100000  xwait zero, 0
000c48  7d100000  xwait zero, 0
000c4c  7d100000  xwait zero, 0
000c50  7d100000  xwait zero, 0
000c54  7d100000  xwait zero, 0
000c58  7d100000  xwait zero, 0
000c5c  7d100000  xwait zero, 0
000c60  7d100000  xwait zero, 0
000c64  1d800000  lock zero, r1
000c68  0d000020  ew_cfg zero, zero, zero, 16
000c6c  1d900000  unlock r1
000c70  7d400000  xsignal_mode_cfg zero
000c74  9f8e8e0b  addli sp, sp, 1472
000c78  00a00300  mfence { lm, sm, gm }
000c7c  00100000  exit
000c80  00100000  exit
000c84  00100000  exit
000c88  00100000  exit
000c8c  00100000  exit
000c90  00100000  exit
000c94  00100000  exit
000c98  00100000  exit
000c9c  00100000  exit
000ca0  00100000  exit
000ca4  00100000  exit
000ca8  00100000  exit
000cac  00100000  exit
000cb0  00100000  exit
000cb4  00100000  exit
000cb8  00100000  exit
000cbc  00100000  exit
000cc0  00100000  exit
000cc4  00100000  exit
000cc8  00100000  exit
000ccc  00100000  exit
000cd0  00100000  exit
000cd4  00100000  exit
000cd8  00100000  exit
000cdc  00100000  exit
000ce0  00100000  exit
000ce4  00100000  exit
000ce8  00100000  exit
000cec  00100000  exit
000cf0  00100000  exit
000cf4  00100000  exit
000cf8  00100000  exit
000cfc  00100000  exit
000d00  00100000  exit
000d04  00100000  exit
000d08  00100000  exit
000d0c  00100000  exit
000d10  00100000  exit
000d14  00100000  exit
000d18  00100000  exit
000d1c  00100000  exit
000d20  00100000  exit
000d24  00100000  exit
000d28  00100000  exit
000d2c  00100000  exit
000d30  00100000  exit
000d34  00100000  exit
000d38  00100000  exit
000d3c  00100000  exit
000d40  00100000  exit
000d44  00100000  exit
000d48  00100000  exit
000d4c  00100000  exit
000d50  00100000  exit
000d54  00100000  exit
000d58  00100000  exit
000d5c  00100000  exit
000d60  00100000  exit
000d64  00100000  exit
000d68  00100000  exit
000d6c  00100000  exit
000d70  00100000  exit
000d74  00100000  exit
000d78  00100000  exit
000d7c  00100000  exit
000d80  00100000  exit
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
