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
0000b4  9f8e6ef4  addli sp, sp, -1488
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8f2e0b  addli r30, sp, 1424
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600100  beq r2, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5bad0000  j 1384
0000e0  9f210000  addli r3, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  2bf2ffff  lui r4, 1048575
0000ec  1d800100  lock zero, r3
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b10f2ff  ori r1, r4, 4095
0000f8  1f520000  addli r4, zero, 5
0000fc  1d900100  unlock r3
000100  9f310000  addli r3, zero, 3
000104  80a10004  csr_set csr3, r1
000108  9f301000  addli r1, zero, 11
00010c  00d00100  sync_group
000110  7d800000  xsignal r1, 0
000114  7d800000  xsignal r1, 0
000118  7d800000  xsignal r1, 0
00011c  7d800000  xsignal r1, 0
000120  7d000200  xsignal r4, 0
000124  7d000200  xsignal r4, 0
000128  7d000200  xsignal r4, 0
00012c  7d000200  xsignal r4, 0
000130  7d000200  xsignal r4, 0
000134  7d000200  xsignal r4, 0
000138  7d000200  xsignal r4, 0
00013c  7d000200  xsignal r4, 0
000140  7d000200  xsignal r4, 0
000144  7d000200  xsignal r4, 0
000148  7d000200  xsignal r4, 0
00014c  7d000200  xsignal r4, 0
000150  7d000200  xsignal r4, 0
000154  7d000200  xsignal r4, 0
000158  7d000200  xsignal r4, 0
00015c  7d000200  xsignal r4, 0
000160  7d000200  xsignal r4, 0
000164  7d000200  xsignal r4, 0
000168  7d000200  xsignal r4, 0
00016c  7d000200  xsignal r4, 0
000170  7d000200  xsignal r4, 0
000174  7d000200  xsignal r4, 0
000178  7d000200  xsignal r4, 0
00017c  7d000200  xsignal r4, 0
000180  7d000200  xsignal r4, 0
000184  7d000200  xsignal r4, 0
000188  7d000200  xsignal r4, 0
00018c  7d000200  xsignal r4, 0
000190  7d000200  xsignal r4, 0
000194  7d000200  xsignal r4, 0
000198  7d000200  xsignal r4, 0
00019c  7d000200  xsignal r4, 0
0001a0  7d000200  xsignal r4, 0
0001a4  7d000200  xsignal r4, 0
0001a8  7d000200  xsignal r4, 0
0001ac  7d000200  xsignal r4, 0
0001b0  7d000200  xsignal r4, 0
0001b4  7d000200  xsignal r4, 0
0001b8  7d000200  xsignal r4, 0
0001bc  7d000200  xsignal r4, 0
0001c0  7d000200  xsignal r4, 0
0001c4  7d000200  xsignal r4, 0
0001c8  7d000200  xsignal r4, 0
0001cc  7d000200  xsignal r4, 0
0001d0  7d000200  xsignal r4, 0
0001d4  7d000200  xsignal r4, 0
0001d8  7d000200  xsignal r4, 0
0001dc  7d000200  xsignal r4, 0
0001e0  7d800100  xsignal r3, 0
0001e4  7d800100  xsignal r3, 0
0001e8  7d800100  xsignal r3, 0
0001ec  7d800100  xsignal r3, 0
0001f0  7d800100  xsignal r3, 0
0001f4  7d800100  xsignal r3, 0
0001f8  7d800100  xsignal r3, 0
0001fc  7d800100  xsignal r3, 0
000200  7d800100  xsignal r3, 0
000204  7d800100  xsignal r3, 0
000208  7d800100  xsignal r3, 0
00020c  7d800100  xsignal r3, 0
000210  7d800100  xsignal r3, 0
000214  7d800100  xsignal r3, 0
000218  7d800100  xsignal r3, 0
00021c  7d800100  xsignal r3, 0
000220  7d800100  xsignal r3, 0
000224  7d800100  xsignal r3, 0
000228  7d800100  xsignal r3, 0
00022c  7d800100  xsignal r3, 0
000230  7d800100  xsignal r3, 0
000234  7d800100  xsignal r3, 0
000238  7d800100  xsignal r3, 0
00023c  7d800100  xsignal r3, 0
000240  7d800100  xsignal r3, 0
000244  7d800100  xsignal r3, 0
000248  7d800100  xsignal r3, 0
00024c  7d800100  xsignal r3, 0
000250  7d800100  xsignal r3, 0
000254  7d800100  xsignal r3, 0
000258  7d800100  xsignal r3, 0
00025c  7d800100  xsignal r3, 0
000260  7d800100  xsignal r3, 0
000264  7d800100  xsignal r3, 0
000268  7d800100  xsignal r3, 0
00026c  7d800100  xsignal r3, 0
000270  7d800100  xsignal r3, 0
000274  7d800100  xsignal r3, 0
000278  7d800100  xsignal r3, 0
00027c  7d800100  xsignal r3, 0
000280  7d800100  xsignal r3, 0
000284  7d800100  xsignal r3, 0
000288  7d800100  xsignal r3, 0
00028c  7d800100  xsignal r3, 0
000290  7d800100  xsignal r3, 0
000294  7d800100  xsignal r3, 0
000298  7d800100  xsignal r3, 0
00029c  7d800100  xsignal r3, 0
0002a0  7d800100  xsignal r3, 0
0002a4  7d800100  xsignal r3, 0
0002a8  7d800100  xsignal r3, 0
0002ac  7d800100  xsignal r3, 0
0002b0  7d800100  xsignal r3, 0
0002b4  7d800100  xsignal r3, 0
0002b8  9f101000  addli r1, zero, 9
0002bc  9f710000  addli r3, zero, 7
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
000520  7d800000  xsignal r1, 0
000524  7d800000  xsignal r1, 0
000528  7d800000  xsignal r1, 0
00052c  7d800000  xsignal r1, 0
000530  7d800000  xsignal r1, 0
000534  7d800000  xsignal r1, 0
000538  7d800000  xsignal r1, 0
00053c  7d800000  xsignal r1, 0
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
00061c  9f501000  addli r1, zero, 13
000620  9f711000  addli r3, zero, 15
000624  7d800000  xsignal r1, 0
000628  7d800000  xsignal r1, 0
00062c  7d800000  xsignal r1, 0
000630  7d800000  xsignal r1, 0
000634  7d800100  xsignal r3, 0
000638  7d800100  xsignal r3, 0
00063c  7d800100  xsignal r3, 0
000640  7d800100  xsignal r3, 0
000644  e3004f00  loadli.w r1,  32(r30)
000648  e3414f00  loadli.w r3,  36(r30)
00064c  80d20002  load_param_i r5, 1
000650  63025f00  loadli.w r4,  40(r30)
000654  e74e0ffe  storeli.w zero, -20(r30)
000658  e70d0ffe  storeli.w zero, -40(r30)
00065c  e70f0ffc  storeli.w zero, -264(r30)
000660  67470ff8  storeli.w zero, -908(r30)
000664  e7090ff6  storeli.w zero, -1128(r30)
000668  674d0ff4  storeli.w zero, -1324(r30)
00066c  8b901120  mul.s r1, r3, r1
000670  9f810200  addli r3, r5, 0
000674  8b914050  fmac.s r3, r1, r4
000678  0b924020  mul.s r4, r1, r4
00067c  9ff1f1ff  addli r3, r3, -1
000680  8b915130  div.s r3, r3, r5
000684  80520002  load_param_i r5, 0
000688  8b905120  mul.s r1, r3, r5
00068c  8b915150  fmac.s r3, r3, r5
000690  8b914140  min.s r3, r3, r4
000694  cba41102  ble.s r3, r1, 1320
000698  b3910128  sext_int2long r[4:5], r3
00069c  6348dfff  loadli.w r16,  -20(r30)
0006a0  e30abfff  loadli.w r21,  -40(r30)
0006a4  e349aff5  loadli.w r19,  -1324(r30)
0006a8  6305fffd  loadli.w r10,  -264(r30)
0006ac  e345eff8  loadli.w r11,  -908(r30)
0006b0  630a3ff7  loadli.w r20,  -1128(r30)
0006b4  33940028  sext_int2long r[9:10], r1
0006b8  1f060001  addli r12, zero, 128
0006bc  9f460000  addli r13, zero, 4
0006c0  1f6c0000  addli r24, zero, 6
0006c4  9f280000  addli r17, zero, 2
0006c8  9f076000  addli r15, zero, 48
0006cc  9f5c0000  addli r25, zero, 5
0006d0  1f0d4000  addli r26, zero, 32
0006d4  1f1e0000  addli r28, zero, 1
0006d8  9f0d8000  addli r27, zero, 64
0006dc  674b0ff4  storeli.w zero, -1356(r30)
0006e0  733c3fa6  store.d r[4:5], -1416(r30)
0006e4  1f72f01f  addli r4, zero, 4095
0006e8  ab81ffff  lui r3, 1048568
0006ec  73383fa6  store.d r[4:5], -1424(r30)
0006f0  5b0e0000  j 112
0006f4  6b530f01  load.d r[7:8], 16(r30)
0006f8  eb570fa9  load.d r[16:17], -1392(r30)
0006fc  9f511000  addli r3, zero, 13
000700  9f000002  addli r1, zero, 256
000704  7d900100  xwait r3, 0
000708  1d800600  lock zero, r13
00070c  9b312400  slli r3, r8, 2
000710  0b23f310  add.ul r[7:8], r[7:8], r[16:17]
000714  15000000  dma_cfg zero, zero, zero, 0
000718  9f076000  addli r15, zero, 48
00071c  15800304  dma_cfg zero, r7, zero, 2
000720  15073306  dma_cfg r14, r6, r3, 3
000724  9580c009  dma_cfg r1, r1, r28, 4
000728  9f401000  addli r1, zero, 12
00072c  35000000  dma_run zero
000730  1d900600  unlock r13
000734  7d800000  xsignal r1, 0
000738  63086ff5  loadli.w r16,  -1360(r30)
00073c  6b540faa  load.d r[9:10], -1376(r30)
000740  6b538fa7  load.d r[7:8], -1416(r30)
000744  9f9a0a00  addli r21, r21, 1
000748  9f190200  addli r19, r4, 1
00074c  1f9a0200  addli r20, r5, 1
000750  1f180800  addli r16, r16, 1
000754  27140400  addli.d r[9:10], r[9:10], 1
000758  93316404  setlt.sl r3, r[9:10], r[7:8]
00075c  b7810102  beq r3, zero, 1120
000760  3b30d100  bneq r2, r13, 12
000764  9f311000  addli r3, zero, 11
000768  7d900100  xwait r3, 0
00076c  e3015f00  loadli.w r3,  40(r30)
000770  63424f00  loadli.w r4,  36(r30)
000774  9f031000  addli r7, zero, 8
000778  9f300000  addli r1, zero, 3
00077c  73308faa  store.d r[9:10], -1376(r30)
000780  670b0ff5  storeli.w r16, -1360(r30)
000784  e74a5ff5  storeli.w r21, -1364(r30)
000788  8b113430  div.s r3, r8, r3
00078c  0b924130  div.s r4, r3, r4
000790  8b12c230  div.s r5, r4, r12
000794  9bb13200  slli r3, r5, 3
000798  0b933618  sub.s r6, r13, r3
00079c  0b137340  min.s r6, r6, r7
0007a0  8b136238  mod.s r7, r4, r6
0007a4  8b917110  add.s r3, r3, r7
0007a8  9f531000  addli r7, zero, 13
0007ac  93843004  setlt.u r9, r1, r3
0007b0  338b0128  zext_int2long r[23:24], r3
0007b4  97337b02  sll.d r[8:9], r[23:24], r7
0007b8  73346fa9  store.d r[23:24], -1400(r30)
0007bc  73347fac  store.d r[8:9], -1336(r30)
0007c0  3bb00400  bneq r9, zero, 12
0007c4  b3030028  zext_int2long r[8:9], zero
0007c8  5b020000  j 16
0007cc  6b570fa7  load.d r[15:16], -1424(r30)
0007d0  9783e302  and.d r[8:9], r[8:9], r[15:16]
0007d4  9f076000  addli r15, zero, 48
0007d8  73307fac  store.d r[8:9], -1344(r30)
0007dc  9bb27200  slli r5, r5, 7
0007e0  e3406ff5  loadli.w r1,  -1356(r30)
0007e4  9bb17100  slli r3, r3, 7
0007e8  9f0a0000  addli r21, zero, 0
0007ec  1f180000  addli r16, zero, 1
0007f0  9f040000  addli r9, zero, 0
0007f4  0b125218  sub.s r4, r4, r5
0007f8  67483ff4  storeli.w r3, -1404(r30)
0007fc  8b92d038  mod.s r5, r1, r13
000800  9f900000  addli r1, r1, 1
000804  0b126230  div.s r4, r4, r6
000808  674b1ff4  storeli.w r1, -1356(r30)
00080c  1bb3f200  slli r6, r5, 15
000810  330b0228  zext_int2long r[23:24], r4
000814  9b306200  slli r1, r4, 6
000818  eb518f00  load.d r[4:5], 8(r30)
00081c  173b8b03  sll.d r[23:24], r[23:24], r24
000820  e7491ff4  storeli.w r1, -1380(r30)
000824  97331b03  sll.d r[8:9], r[23:24], r17
000828  8ba17110  add.ul r[4:5], r[4:5], r[8:9]
00082c  73387fa8  store.d r[8:9], -1392(r30)
000830  733c3faa  store.d r[4:5], -1352(r30)
000834  5b030000  j 24
000838  9b011800  andi r3, r16, 1
00083c  37e80100  beq r3, zero, 536
000840  9f940400  addli r9, r9, 1
000844  9f1a0000  addli r21, zero, 1
000848  1f080000  addli r16, zero, 0
00084c  8b129a10  add.s r5, r20, r9
000850  9f606000  addli r1, zero, 54
000854  0b929910  add.s r4, r19, r9
000858  8b911238  mod.s r3, r5, r1
00085c  0b19f238  mod.s r18, r4, r15
000860  ab000200  lui r1, 32
000864  9bb1e100  slli r3, r3, 14
000868  1b39e900  slli r18, r18, 14
00086c  8b911110  add.s r3, r3, r1
000870  37021101  beq r2, r17, 128
000874  338b0a28  zext_int2long r[23:24], r21
000878  bb138101  bneq r2, r24, 228
00087c  eb538fac  load.d r[8:9], -1336(r30)
000880  973a9b03  sll.d r[22:23], r[23:24], r25
000884  b38b0d28  zext_int2long r[24:25], r27
000888  9f000003  addli r1, zero, 384
00088c  979a7a02  or.d r[22:23], r[22:23], r[8:9]
000890  eb530fac  load.d r[8:9], -1344(r30)
000894  0bb77a18  sub.sl r[15:16], r[22:23], r[8:9]
000898  eb530f00  load.d r[8:9], 0(r30)
00089c  97ba1a03  sll.d r[22:23], r[22:23], r17
0008a0  0f177761  div.sl r[15:16], r[15:16], r[24:25]
0008a4  b38b0028  zext_int2long r[24:25], r1
0008a8  9f300000  addli r1, zero, 3
0008ac  8baa5311  add.ul r[22:23], r[8:9], r[22:23]
0008b0  7d900000  xwait r1, 0
0008b4  1d800600  lock zero, r13
0008b8  9f000002  addli r1, zero, 256
0008bc  15000000  dma_cfg zero, zero, zero, 0
0008c0  15000b04  dma_cfg zero, r22, zero, 2
0008c4  9581ca06  dma_cfg r3, r21, r12, 3
0008c8  8b3b7741  min.sl r[24:25], r[15:16], r[24:25]
0008cc  0bb7eb18  sub.sl r[15:16], r[24:25], r[15:16]
0008d0  1f6c0000  addli r24, zero, 6
0008d4  1f070701  addli r14, r14, 128
0008d8  9f076000  addli r15, zero, 48
0008dc  1586e008  dma_cfg r12, r1, r14, 4
0008e0  35000000  dma_run zero
0008e4  1d900600  unlock r13
0008e8  7d800800  xsignal r17, 0
0008ec  db060000  j 52
0008f0  7d900800  xwait r17, 0
0008f4  7d900c00  xwait r25, 0
0008f8  1d000000  lock zero, zero
0008fc  9f300000  addli r1, zero, 3
000900  81080000  ds_cfg r17, zero, 0
000904  010d0002  ds_cfg r26, zero, 1
000908  010d001c  ds_cfg r26, zero, 14
00090c  0106001a  ds_cfg r12, zero, 13
000910  2199a103  shuffle_batch r18, r3, r26, 1
000914  1d100000  unlock zero
000918  7d800000  xsignal r1, 0
00091c  7d800600  xsignal r13, 0
000920  9f004001  addli r1, zero, 160
000924  1f150500  addli r10, r10, 1
000928  8b911538  mod.s r3, r11, r1
00092c  9f950500  addli r11, r11, 1
000930  9bbad100  slli r21, r3, 13
000934  3b1cd1fe  bneq r2, r13, -252
000938  9f011000  addli r3, zero, 8
00093c  7d900600  xwait r13, 0
000940  7d900100  xwait r3, 0
000944  1d000e00  lock zero, r28
000948  890dcd00  mm_cfg r27, r26, r12, 0
00094c  8988c805  mm_cfg r17, r17, r28, 2
000950  37c20400  beq r9, zero, 144
000954  29135911  mm_acc r6, r18, r21, 8
000958  db110000  j 140
00095c  9f706000  addli r1, zero, 55
000960  8b111538  mod.s r3, r10, r1
000964  9f004001  addli r1, zero, 160
000968  1f150500  addli r10, r10, 1
00096c  0b971538  mod.s r14, r11, r1
000970  ab800f00  lui r1, 248
000974  9f950500  addli r11, r11, 1
000978  9bb1d100  slli r3, r3, 13
00097c  8b911110  add.s r3, r3, r1
000980  9b3ad700  slli r21, r14, 13
000984  9f700000  addli r1, zero, 7
000988  b7611100  beq r2, r1, 120
00098c  bb2ec1ff  bneq r2, r28, -88
000990  9f102000  addli r1, zero, 17
000994  17371b02  sll.d r[15:16], r[23:24], r1
000998  9f700000  addli r1, zero, 7
00099c  7d900000  xwait r1, 0
0009a0  eb538fab  load.d r[8:9], -1352(r30)
0009a4  1d800600  lock zero, r13
0009a8  9f000002  addli r1, zero, 256
0009ac  15000000  dma_cfg zero, zero, zero, 0
0009b0  0ba7e310  add.ul r[15:16], r[8:9], r[15:16]
0009b4  15800704  dma_cfg zero, r15, zero, 2
0009b8  95011706  dma_cfg r3, r14, r1, 3
0009bc  9f010020  addli r3, zero, 4096
0009c0  9f076000  addli r15, zero, 48
0009c4  9580a109  dma_cfg r1, r3, r26, 4
0009c8  35000000  dma_run zero
0009cc  1d900600  unlock r13
0009d0  7d000c00  xsignal r24, 0
0009d4  9b011800  andi r3, r16, 1
0009d8  bba901fe  bneq r3, zero, -408
0009dc  db0d0000  j 108
0009e0  29035911  mm r6, r18, r21, 8
0009e4  9b011800  andi r3, r16, 1
0009e8  9f101000  addli r1, zero, 9
0009ec  1d100e00  unlock r28
0009f0  7d800c00  xsignal r25, 0
0009f4  7d800000  xsignal r1, 0
0009f8  3ba901fe  bneq r3, zero, -440
0009fc  5b0a0000  j 80
000a00  9f101000  addli r1, zero, 9
000a04  7d100c00  xwait r24, 0
000a08  9f0d8000  addli r27, zero, 64
000a0c  7d900000  xwait r1, 0
000a10  1d000000  lock zero, zero
000a14  9f008000  addli r1, zero, 64
000a18  81080000  ds_cfg r17, zero, 0
000a1c  81000002  ds_cfg r1, zero, 1
000a20  010d001c  ds_cfg r26, zero, 14
000a24  8100001a  ds_cfg r1, zero, 13
000a28  9f700000  addli r1, zero, 7
000a2c  c18aa105  shuffle_coa r21, r3, r26, 2
000a30  9f011000  addli r3, zero, 8
000a34  1d100000  unlock zero
000a38  7d800000  xsignal r1, 0
000a3c  7d800100  xsignal r3, 0
000a40  9b011800  andi r3, r16, 1
000a44  bbf701fe  bneq r3, zero, -516
000a48  3b30d100  bneq r2, r13, 12
000a4c  9f201000  addli r1, zero, 10
000a50  7d800000  xsignal r1, 0
000a54  e3403ff5  loadli.w r1,  -1380(r30)
000a58  e34a5ff5  loadli.w r21,  -1364(r30)
000a5c  33890d28  zext_int2long r[19:20], r27
000a60  b3830028  zext_int2long r[8:9], r1
000a64  9f008007  addli r1, zero, 960
000a68  8b91da38  mod.s r3, r21, r13
000a6c  33870028  zext_int2long r[15:16], r1
000a70  ab601600  lui r1, 358
000a74  0ba7e340  min.ul r[15:16], r[8:9], r[15:16]
000a78  27078700  addli.d r[15:16], r[15:16], 64
000a7c  9bb18100  slli r3, r3, 8
000a80  0b277748  max.ul r[15:16], r[15:16], r[8:9]
000a84  8b337718  sub.sl r[8:9], r[15:16], r[8:9]
000a88  0b971110  add.s r14, r3, r1
000a8c  0ba42341  min.ul r[9:10], r[8:9], r[19:20]
000a90  b71181ff  beq r2, r24, -924
000a94  63086ff5  loadli.w r16,  -1360(r30)
000a98  9b930040  ori r7, r1, 1024
000a9c  8b11d838  mod.s r3, r16, r13
000aa0  9bb1f100  slli r3, r3, 15
000aa4  8b937110  add.s r7, r3, r7
000aa8  bb719101  bneq r2, r25, 124
000aac  9f201000  addli r1, zero, 10
000ab0  9f010000  addli r3, zero, 0
000ab4  9f076000  addli r15, zero, 48
000ab8  7d900000  xwait r1, 0
000abc  9f401000  addli r1, zero, 12
000ac0  7d900000  xwait r1, 0
000ac4  9f701000  addli r1, zero, 15
000ac8  7d900000  xwait r1, 0
000acc  1d800800  lock zero, r17
000ad0  ab00803f  lui r1, 260096
000ad4  0d0e0014  ew_cfg r28, zero, zero, 10
000ad8  0d000002  ew_cfg zero, zero, zero, 1
000adc  8d900000  ewcoeff_cfg r1, r1, zero, 0
000ae0  9f707000  addli r1, zero, 63
000ae4  0d800004  ew_cfg zero, r1, zero, 2
000ae8  ab800000  lui r1, 8
000aec  0d0e0006  ew_cfg r28, zero, zero, 3
000af0  0b943310  add.s r8, r7, r3
000af4  8b143310  add.s r9, r6, r3
000af8  9f810102  addli r3, r3, 256
000afc  2d84e400  dsmadd r8, r9, r14, 0
000b00  bbcf11fe  bneq r3, r1, -16
000b04  9f311000  addli r3, zero, 11
000b08  0d000014  ew_cfg zero, zero, zero, 10
000b0c  9f601000  addli r1, zero, 14
000b10  1d900800  unlock r17
000b14  7d800100  xsignal r3, 0
000b18  9f511000  addli r3, zero, 13
000b1c  7d800100  xsignal r3, 0
000b20  db120000  j 148
000b24  9f076000  addli r15, zero, 48
000b28  3b5001fe  bneq r2, zero, -1004
000b2c  e3400ff5  loadli.w r1,  -1404(r30)
000b30  1f830a00  addli r6, r21, 0
000b34  6b5a8fa8  load.d r[21:22], -1400(r30)
000b38  6b5b8f01  load.d r[23:24], 24(r30)
000b3c  9b312400  slli r3, r8, 2
000b40  33970028  sext_int2long r[15:16], r1
000b44  9f000003  addli r1, zero, 384
000b48  33890028  zext_int2long r[19:20], r1
000b4c  9f302000  addli r1, zero, 19
000b50  173a1a02  sll.d r[21:22], r[21:22], r1
000b54  0b392741  min.sl r[19:20], r[15:16], r[19:20]
000b58  9f601000  addli r1, zero, 14
000b5c  27090901  addli.d r[19:20], r[19:20], 128
000b60  0b2a4b11  add.ul r[21:22], r[23:24], r[21:22]
000b64  6b5b0fa9  load.d r[23:24], -1392(r30)
000b68  7d900000  xwait r1, 0
000b6c  1d800c00  lock zero, r25
000b70  9f000002  addli r1, zero, 256
000b74  15000000  dma_cfg zero, zero, zero, 0
000b78  0b39e948  max.sl r[19:20], r[19:20], r[15:16]
000b7c  15000e02  dma_cfg zero, r28, zero, 1
000b80  0b2a6a11  add.ul r[21:22], r[21:22], r[23:24]
000b84  0b37e918  sub.sl r[15:16], r[19:20], r[15:16]
000b88  33090628  zext_int2long r[19:20], r12
000b8c  950a0004  dma_cfg r21, zero, zero, 2
000b90  158a3306  dma_cfg r20, r7, r3, 3
000b94  0b372741  min.sl r[15:16], r[15:16], r[19:20]
000b98  9f010020  addli r3, zero, 4096
000b9c  9f0a0300  addli r21, r6, 0
000ba0  9581e008  dma_cfg r3, r1, r14, 4
000ba4  9f076000  addli r15, zero, 48
000ba8  9f701000  addli r1, zero, 15
000bac  35000000  dma_run zero
000bb0  1d900c00  unlock r25
000bb4  7d800000  xsignal r1, 0
000bb8  db70ffff  j -1148
000bbc  7d000000  xsignal zero, 0
000bc0  bb600100  bneq r2, zero, 56
000bc4  9f200000  addli r1, zero, 2
000bc8  7d100000  xwait zero, 0
000bcc  7d100000  xwait zero, 0
000bd0  7d100000  xwait zero, 0
000bd4  7d100000  xwait zero, 0
000bd8  7d100000  xwait zero, 0
000bdc  7d100000  xwait zero, 0
000be0  7d100000  xwait zero, 0
000be4  7d100000  xwait zero, 0
000be8  1d800000  lock zero, r1
000bec  0d000020  ew_cfg zero, zero, zero, 16
000bf0  1d900000  unlock r1
000bf4  7d400000  xsignal_mode_cfg zero
000bf8  9f8e2e0b  addli sp, sp, 1424
000bfc  00a00300  mfence { lm, sm, gm }
000c00  00100000  exit
000c04  00100000  exit
000c08  00100000  exit
000c0c  00100000  exit
000c10  00100000  exit
000c14  00100000  exit
000c18  00100000  exit
000c1c  00100000  exit
000c20  00100000  exit
000c24  00100000  exit
000c28  00100000  exit
000c2c  00100000  exit
000c30  00100000  exit
000c34  00100000  exit
000c38  00100000  exit
000c3c  00100000  exit
000c40  00100000  exit
000c44  00100000  exit
000c48  00100000  exit
000c4c  00100000  exit
000c50  00100000  exit
000c54  00100000  exit
000c58  00100000  exit
000c5c  00100000  exit
000c60  00100000  exit
000c64  00100000  exit
000c68  00100000  exit
000c6c  00100000  exit
000c70  00100000  exit
000c74  00100000  exit
000c78  00100000  exit
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
