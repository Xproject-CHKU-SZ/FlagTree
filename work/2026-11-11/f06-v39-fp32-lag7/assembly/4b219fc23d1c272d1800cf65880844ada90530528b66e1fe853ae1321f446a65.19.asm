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
0000b4  9f8e7ef4  addli sp, sp, -1480
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  003d0002  core_id r26
0000c4  1f8f1e0b  addli r30, sp, 1416
0000c8  7dc00000  xsignal_mode_cfg r1
0000cc  37600100  beq r2, zero, 24
0000d0  abf0ffff  lui r1, 1048575
0000d4  9b90f0ff  ori r1, r1, 4095
0000d8  80a10004  csr_set csr3, r1
0000dc  00d00100  sync_group
0000e0  5bae0000  j 1392
0000e4  9f210000  addli r3, zero, 2
0000e8  fdd00000  uni_sram_cfg r1, r1
0000ec  2bf2ffff  lui r4, 1048575
0000f0  1d800100  lock zero, r3
0000f4  8d000020  ew_cfg r1, zero, zero, 16
0000f8  9b10f2ff  ori r1, r4, 4095
0000fc  1f520000  addli r4, zero, 5
000100  1d900100  unlock r3
000104  9f310000  addli r3, zero, 3
000108  80a10004  csr_set csr3, r1
00010c  9f301000  addli r1, zero, 11
000110  00d00100  sync_group
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
0002b8  7d800100  xsignal r3, 0
0002bc  7d800100  xsignal r3, 0
0002c0  7d800100  xsignal r3, 0
0002c4  9f101000  addli r1, zero, 9
0002c8  9f710000  addli r3, zero, 7
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
000540  7d800000  xsignal r1, 0
000544  7d800000  xsignal r1, 0
000548  7d800000  xsignal r1, 0
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
000630  9f501000  addli r1, zero, 13
000634  9f711000  addli r3, zero, 15
000638  7d800000  xsignal r1, 0
00063c  7d800000  xsignal r1, 0
000640  7d800000  xsignal r1, 0
000644  7d800100  xsignal r3, 0
000648  7d800100  xsignal r3, 0
00064c  7d800100  xsignal r3, 0
000650  e3004f00  loadli.w r1,  32(r30)
000654  e3414f00  loadli.w r3,  36(r30)
000658  80d20002  load_param_i r5, 1
00065c  63025f00  loadli.w r4,  40(r30)
000660  670f0ffe  storeli.w zero, -16(r30)
000664  670e0ffe  storeli.w zero, -32(r30)
000668  e70f0ffc  storeli.w zero, -264(r30)
00066c  67470ff8  storeli.w zero, -908(r30)
000670  e7480ff6  storeli.w zero, -1140(r30)
000674  e70c0ff4  storeli.w zero, -1336(r30)
000678  8b901120  mul.s r1, r3, r1
00067c  9f810200  addli r3, r5, 0
000680  8b914050  fmac.s r3, r1, r4
000684  0b924020  mul.s r4, r1, r4
000688  9ff1f1ff  addli r3, r3, -1
00068c  8b915130  div.s r3, r3, r5
000690  80520002  load_param_i r5, 0
000694  8b905120  mul.s r1, r3, r5
000698  8b915150  fmac.s r3, r3, r5
00069c  8b914140  min.s r3, r3, r4
0006a0  cbd51102  ble.s r3, r1, 1396
0006a4  b3910128  sext_int2long r[4:5], r3
0006a8  e307efff  loadli.w r15,  -16(r30)
0006ac  6308cfff  loadli.w r16,  -32(r30)
0006b0  e3089ff5  loadli.w r17,  -1336(r30)
0006b4  6305fffd  loadli.w r10,  -264(r30)
0006b8  e345eff8  loadli.w r11,  -908(r30)
0006bc  634a1ff7  loadli.w r20,  -1140(r30)
0006c0  33930028  sext_int2long r[7:8], r1
0006c4  1f010001  addli r2, zero, 128
0006c8  9f460000  addli r13, zero, 4
0006cc  1f6b0000  addli r22, zero, 6
0006d0  9f3b0000  addli r23, zero, 3
0006d4  1f290000  addli r18, zero, 2
0006d8  9f500000  addli r1, zero, 5
0006dc  1f0e4000  addli r28, zero, 32
0006e0  1f160000  addli r12, zero, 1
0006e4  1f040000  addli r8, zero, 0
0006e8  73303fa8  store.d r[4:5], -1408(r30)
0006ec  1f72f01f  addli r4, zero, 4095
0006f0  ab81ffff  lui r3, 1048568
0006f4  733c3fa6  store.d r[4:5], -1416(r30)
0006f8  db0e0000  j 116
0006fc  6b570f01  load.d r[15:16], 16(r30)
000700  eb598fa9  load.d r[20:21], -1384(r30)
000704  9f511000  addli r3, zero, 13
000708  003d0002  core_id r26
00070c  7d900100  xwait r3, 0
000710  1d800600  lock zero, r13
000714  9bb12300  slli r3, r7, 2
000718  0b273711  add.ul r[15:16], r[15:16], r[20:21]
00071c  15000000  dma_cfg zero, zero, zero, 0
000720  15800704  dma_cfg zero, r15, zero, 2
000724  15023706  dma_cfg r4, r14, r3, 3
000728  9f010002  addli r3, zero, 256
00072c  9581c108  dma_cfg r3, r3, r12, 4
000730  9f411000  addli r3, zero, 12
000734  35000000  dma_run zero
000738  1d900600  unlock r13
00073c  7d800100  xsignal r3, 0
000740  e3476ff5  loadli.w r15,  -1356(r30)
000744  6b538faa  load.d r[7:8], -1368(r30)
000748  eb510fa8  load.d r[4:5], -1408(r30)
00074c  63444ff5  loadli.w r8,  -1372(r30)
000750  1f180800  addli r16, r16, 1
000754  9f980200  addli r17, r5, 1
000758  1f9a0a00  addli r20, r21, 1
00075c  9f970700  addli r15, r15, 1
000760  27130300  addli.d r[7:8], r[7:8], 1
000764  93313304  setlt.sl r3, r[7:8], r[4:5]
000768  b7b20102  beq r3, zero, 1196
00076c  3b30dd00  bneq r26, r13, 12
000770  9f311000  addli r3, zero, 11
000774  7d900100  xwait r3, 0
000778  e3015f00  loadli.w r3,  40(r30)
00077c  63424f00  loadli.w r4,  36(r30)
000780  73346faa  store.d r[7:8], -1368(r30)
000784  9f021000  addli r5, zero, 8
000788  674bfff4  storeli.w r15, -1356(r30)
00078c  670b0ff5  storeli.w r16, -1360(r30)
000790  8b113330  div.s r3, r6, r3
000794  0b934130  div.s r6, r3, r4
000798  8b142330  div.s r9, r6, r2
00079c  9bb13400  slli r3, r9, 3
0007a0  0b923618  sub.s r4, r13, r3
0007a4  0b175240  min.s r14, r4, r5
0007a8  0b12e338  mod.s r4, r6, r14
0007ac  8b924110  add.s r5, r3, r4
0007b0  1f521000  addli r4, zero, 13
0007b4  93815b04  setlt.u r3, r23, r5
0007b8  338c0228  zext_int2long r[25:26], r5
0007bc  73388fa9  store.d r[25:26], -1392(r30)
0007c0  173c4c02  sll.d r[25:26], r[25:26], r4
0007c4  270d0c00  addli.d r[27:28], r[25:26], 0
0007c8  3bb00100  bneq r3, zero, 12
0007cc  b3010028  zext_int2long r[4:5], zero
0007d0  db010000  j 12
0007d4  eb518fa7  load.d r[4:5], -1416(r30)
0007d8  97013c02  and.d r[4:5], r[25:26], r[4:5]
0007dc  9bb47400  slli r9, r9, 7
0007e0  73303fac  store.d r[4:5], -1344(r30)
0007e4  9bb17200  slli r3, r5, 7
0007e8  1f080000  addli r16, zero, 0
0007ec  0b139318  sub.s r6, r6, r9
0007f0  e7483ff4  storeli.w r3, -1396(r30)
0007f4  8b14e330  div.s r9, r6, r14
0007f8  0b137439  mod.s r6, r8, r23
0007fc  1f140400  addli r8, r8, 1
000800  674a8ff4  storeli.w r8, -1372(r30)
000804  33870428  zext_int2long r[15:16], r9
000808  9bb16400  slli r3, r9, 6
00080c  1b33f300  slli r6, r6, 15
000810  9f040000  addli r9, zero, 0
000814  17376703  sll.d r[15:16], r[15:16], r22
000818  670a3ff4  storeli.w r3, -1376(r30)
00081c  eb518f00  load.d r[4:5], 8(r30)
000820  97332703  sll.d r[8:9], r[15:16], r18
000824  1f170000  addli r14, zero, 1
000828  8ba17110  add.ul r[4:5], r[4:5], r[8:9]
00082c  733c7fa8  store.d r[8:9], -1384(r30)
000830  a7030d00  addli.d r[8:9], r[27:28], 0
000834  733c3faa  store.d r[4:5], -1352(r30)
000838  00320002  core_id r4
00083c  5b030000  j 24
000840  9b011700  andi r3, r14, 1
000844  37c90100  beq r3, zero, 592
000848  9f940400  addli r9, r9, 1
00084c  1f180000  addli r16, zero, 1
000850  1f070000  addli r14, zero, 0
000854  8b1a9a10  add.s r21, r20, r9
000858  9f117000  addli r3, zero, 57
00085c  8b929810  add.s r5, r17, r9
000860  8b973a38  mod.s r15, r21, r3
000864  9f016000  addli r3, zero, 48
000868  8b993238  mod.s r19, r5, r3
00086c  ab810100  lui r3, 24
000870  9bb7e700  slli r15, r15, 14
000874  9bb9e900  slli r19, r19, 14
000878  8b973710  add.s r15, r15, r3
00087c  37522201  beq r4, r18, 148
000880  330c0828  zext_int2long r[25:26], r16
000884  80310002  core_id r3
000888  3b946101  bneq r3, r22, 260
00088c  1f018000  addli r2, zero, 64
000890  173c1c02  sll.d r[25:26], r[25:26], r1
000894  1f380000  addli r16, zero, 3
000898  330b0128  zext_int2long r[23:24], r2
00089c  6b510fac  load.d r[3:4], -1344(r30)
0008a0  171c7c02  or.d r[25:26], r[25:26], r[8:9]
0008a4  eb530f00  load.d r[8:9], 0(r30)
0008a8  7d100800  xwait r16, 0
0008ac  1d800600  lock zero, r13
0008b0  1f080001  addli r16, zero, 128
0008b4  15000000  dma_cfg zero, zero, zero, 0
0008b8  8b312c18  sub.sl r[4:5], r[25:26], r[3:4]
0008bc  173c2c03  sll.d r[25:26], r[25:26], r18
0008c0  1f010001  addli r2, zero, 128
0008c4  8f916161  div.sl r[4:5], r[4:5], r[23:24]
0008c8  1f0b0003  addli r22, zero, 384
0008cc  0bac8311  add.ul r[25:26], r[8:9], r[25:26]
0008d0  a7030d00  addli.d r[8:9], r[27:28], 0
0008d4  330b0b28  zext_int2long r[23:24], r22
0008d8  15800c04  dma_cfg zero, r25, zero, 2
0008dc  95070c07  dma_cfg r15, r24, r16, 3
0008e0  0bbb6141  min.sl r[23:24], r[4:5], r[23:24]
0008e4  8b313b18  sub.sl r[4:5], r[23:24], r[4:5]
0008e8  9f3b0000  addli r23, zero, 3
0008ec  1f6b0000  addli r22, zero, 6
0008f0  9f810101  addli r3, r3, 128
0008f4  1f020002  addli r4, zero, 256
0008f8  15083208  dma_cfg r16, r4, r3, 4
0008fc  35000000  dma_run zero
000900  1d900600  unlock r13
000904  7d000900  xsignal r18, 0
000908  00320002  core_id r4
00090c  5b070000  j 56
000910  7d100900  xwait r18, 0
000914  7d900000  xwait r1, 0
000918  1d000000  lock zero, zero
00091c  9f014000  addli r3, zero, 32
000920  1f0e4000  addli r28, zero, 32
000924  01090000  ds_cfg r18, zero, 0
000928  81010002  ds_cfg r3, zero, 1
00092c  8101001c  ds_cfg r3, zero, 14
000930  0101001a  ds_cfg r2, zero, 13
000934  a1993702  shuffle_batch r19, r15, r3, 1
000938  1d100000  unlock zero
00093c  7d800b00  xsignal r23, 0
000940  7d800600  xsignal r13, 0
000944  9f014001  addli r3, zero, 160
000948  1f150500  addli r10, r10, 1
00094c  8b913538  mod.s r3, r11, r3
000950  9f950500  addli r11, r11, 1
000954  1bb8d100  slli r16, r3, 13
000958  bb2bd2fe  bneq r4, r13, -280
00095c  9f011000  addli r3, zero, 8
000960  7d900600  xwait r13, 0
000964  1f028000  addli r4, zero, 64
000968  1f160000  addli r12, zero, 1
00096c  7d900100  xwait r3, 0
000970  9f110000  addli r3, zero, 1
000974  1d800100  lock zero, r3
000978  09022e00  mm_cfg r4, r28, r2, 0
00097c  09093904  mm_cfg r18, r18, r3, 2
000980  37e20400  beq r9, zero, 152
000984  29930911  mm_acc r6, r19, r16, 8
000988  db120000  j 148
00098c  9f117000  addli r3, zero, 57
000990  1f024001  addli r4, zero, 160
000994  8b113538  mod.s r3, r10, r3
000998  0b924538  mod.s r4, r11, r4
00099c  9f950500  addli r11, r11, 1
0009a0  1f150500  addli r10, r10, 1
0009a4  1b38d200  slli r16, r4, 13
0009a8  9bb1d100  slli r3, r3, 13
0009ac  2bc20f00  lui r4, 252
0009b0  8b974110  add.s r15, r3, r4
0009b4  9f710000  addli r3, zero, 7
0009b8  00320002  core_id r4
0009bc  37023200  beq r4, r3, 128
0009c0  3b6ec2fe  bneq r4, r12, -104
0009c4  9f730000  addli r7, zero, 7
0009c8  9f112000  addli r3, zero, 17
0009cc  7d900300  xwait r7, 0
0009d0  eb538fab  load.d r[8:9], -1352(r30)
0009d4  97313c02  sll.d r[4:5], r[25:26], r3
0009d8  1d800600  lock zero, r13
0009dc  15000000  dma_cfg zero, zero, zero, 0
0009e0  8ba13310  add.ul r[4:5], r[8:9], r[4:5]
0009e4  9f030002  addli r7, zero, 256
0009e8  15000204  dma_cfg zero, r4, zero, 2
0009ec  95877106  dma_cfg r15, r3, r7, 3
0009f0  9f010020  addli r3, zero, 4096
0009f4  00320002  core_id r4
0009f8  9583c109  dma_cfg r7, r3, r28, 4
0009fc  35000000  dma_run zero
000a00  1d900600  unlock r13
000a04  a7030d00  addli.d r[8:9], r[27:28], 0
000a08  7d000b00  xsignal r22, 0
000a0c  9b011700  andi r3, r14, 1
000a10  bbe801fe  bneq r3, zero, -456
000a14  db0e0000  j 116
000a18  29830911  mm r6, r19, r16, 8
000a1c  1f121000  addli r4, zero, 9
000a20  1d100600  unlock r12
000a24  7d800000  xsignal r1, 0
000a28  9b011700  andi r3, r14, 1
000a2c  7d000200  xsignal r4, 0
000a30  00320002  core_id r4
000a34  3bd801fe  bneq r3, zero, -492
000a38  db0a0000  j 84
000a3c  9f111000  addli r3, zero, 9
000a40  7d100b00  xwait r22, 0
000a44  9f094000  addli r19, zero, 32
000a48  1f0e4000  addli r28, zero, 32
000a4c  7d900100  xwait r3, 0
000a50  1d000000  lock zero, zero
000a54  9f018000  addli r3, zero, 64
000a58  01090000  ds_cfg r18, zero, 0
000a5c  81010002  ds_cfg r3, zero, 1
000a60  8109001c  ds_cfg r19, zero, 14
000a64  8101001a  ds_cfg r3, zero, 13
000a68  9f710000  addli r3, zero, 7
000a6c  41883705  shuffle_coa r16, r15, r19, 2
000a70  1d100000  unlock zero
000a74  7d800100  xsignal r3, 0
000a78  9f011000  addli r3, zero, 8
000a7c  7d800100  xsignal r3, 0
000a80  9b011700  andi r3, r14, 1
000a84  3b9701fe  bneq r3, zero, -572
000a88  3b30d200  bneq r4, r13, 12
000a8c  9f211000  addli r3, zero, 10
000a90  7d800100  xsignal r3, 0
000a94  e3014ff5  loadli.w r3,  -1376(r30)
000a98  9f038007  addli r7, zero, 960
000a9c  63086ff5  loadli.w r16,  -1360(r30)
000aa0  1f078000  addli r14, zero, 64
000aa4  80380002  core_id r17
000aa8  b3830328  zext_int2long r[8:9], r7
000aac  33070728  zext_int2long r[15:16], r14
000ab0  b3810128  zext_int2long r[4:5], r3
000ab4  8b147839  mod.s r9, r16, r23
000ab8  8ba37140  min.ul r[8:9], r[4:5], r[8:9]
000abc  a7838300  addli.d r[8:9], r[8:9], 64
000ac0  8ba33348  max.ul r[8:9], r[8:9], r[4:5]
000ac4  9bb48400  slli r9, r9, 8
000ac8  8bb13318  sub.sl r[4:5], r[8:9], r[4:5]
000acc  8ba3e140  min.ul r[8:9], r[4:5], r[15:16]
000ad0  2be71600  lui r14, 366
000ad4  0b92e410  add.s r4, r9, r14
000ad8  b79068ff  beq r17, r22, -988
000adc  e3476ff5  loadli.w r15,  -1356(r30)
000ae0  9b140730  ori r9, r14, 768
000ae4  003d0002  core_id r26
000ae8  8b917739  mod.s r3, r15, r23
000aec  9bb1f100  slli r3, r3, 15
000af0  8b919110  add.s r3, r3, r9
000af4  3b821800  bneq r17, r1, 128
000af8  1f241000  addli r8, zero, 10
000afc  9f140000  addli r9, zero, 1
000b00  9f030000  addli r7, zero, 0
000b04  1f160000  addli r12, zero, 1
000b08  2b870000  lui r14, 8
000b0c  7d100400  xwait r8, 0
000b10  1f441000  addli r8, zero, 12
000b14  7d100400  xwait r8, 0
000b18  1f741000  addli r8, zero, 15
000b1c  7d100400  xwait r8, 0
000b20  1d000900  lock zero, r18
000b24  2b04803f  lui r8, 260096
000b28  8d040014  ew_cfg r9, zero, zero, 10
000b2c  0d000002  ew_cfg zero, zero, zero, 1
000b30  0d140400  ewcoeff_cfg r8, r8, zero, 0
000b34  1f747000  addli r8, zero, 63
000b38  0d000404  ew_cfg zero, r8, zero, 2
000b3c  8d040006  ew_cfg r9, zero, zero, 3
000b40  0b947110  add.s r8, r3, r7
000b44  8b147310  add.s r9, r6, r7
000b48  9f830302  addli r7, r7, 256
000b4c  2d844400  dsmadd r8, r9, r4, 0
000b50  bbcfe3fe  bneq r7, r14, -16
000b54  9f311000  addli r3, zero, 11
000b58  0d000014  ew_cfg zero, zero, zero, 10
000b5c  1d100900  unlock r18
000b60  7d800100  xsignal r3, 0
000b64  9f511000  addli r3, zero, 13
000b68  7d800100  xsignal r3, 0
000b6c  9f611000  addli r3, zero, 14
000b70  db130000  j 156
000b74  3bcf08fc  bneq r17, zero, -1072
000b78  e3401ff5  loadli.w r1,  -1396(r30)
000b7c  1f830700  addli r6, r15, 0
000b80  1f020800  addli r4, r16, 0
000b84  eb590fa9  load.d r[20:21], -1392(r30)
000b88  6b5c8f01  load.d r[25:26], 24(r30)
000b8c  9f540000  addli r9, zero, 5
000b90  33970028  sext_int2long r[15:16], r1
000b94  9f000003  addli r1, zero, 384
000b98  33880028  zext_int2long r[17:18], r1
000b9c  9f302000  addli r1, zero, 19
000ba0  0b380741  min.sl r[17:18], r[15:16], r[17:18]
000ba4  97b91902  sll.d r[20:21], r[20:21], r1
000ba8  9f601000  addli r1, zero, 14
000bac  27080801  addli.d r[17:18], r[17:18], 128
000bb0  8b293c11  add.ul r[20:21], r[25:26], r[20:21]
000bb4  6b5c8fa9  load.d r[25:26], -1384(r30)
000bb8  7d900000  xwait r1, 0
000bbc  1d800400  lock zero, r9
000bc0  9f000002  addli r1, zero, 256
000bc4  15000000  dma_cfg zero, zero, zero, 0
000bc8  0b38e848  max.sl r[17:18], r[17:18], r[15:16]
000bcc  15000602  dma_cfg zero, r12, zero, 1
000bd0  8ba98911  add.ul r[20:21], r[20:21], r[25:26]
000bd4  0b37e818  sub.sl r[15:16], r[17:18], r[15:16]
000bd8  33080128  zext_int2long r[17:18], r2
000bdc  150a0004  dma_cfg r20, zero, zero, 2
000be0  0b370741  min.sl r[15:16], r[15:16], r[17:18]
000be4  1f080200  addli r16, r4, 0
000be8  1bb22300  slli r4, r7, 2
000bec  95894106  dma_cfg r19, r3, r4, 3
000bf0  9f010020  addli r3, zero, 4096
000bf4  9581e008  dma_cfg r3, r1, r14, 4
000bf8  9f070300  addli r15, r6, 0
000bfc  9f500000  addli r1, zero, 5
000c00  9f711000  addli r3, zero, 15
000c04  35000000  dma_run zero
000c08  1d900400  unlock r9
000c0c  7d800100  xsignal r3, 0
000c10  db66ffff  j -1228
000c14  7d000000  xsignal zero, 0
000c18  bb600d00  bneq r26, zero, 56
000c1c  9f200000  addli r1, zero, 2
000c20  7d100000  xwait zero, 0
000c24  7d100000  xwait zero, 0
000c28  7d100000  xwait zero, 0
000c2c  7d100000  xwait zero, 0
000c30  7d100000  xwait zero, 0
000c34  7d100000  xwait zero, 0
000c38  7d100000  xwait zero, 0
000c3c  7d100000  xwait zero, 0
000c40  1d800000  lock zero, r1
000c44  0d000020  ew_cfg zero, zero, zero, 16
000c48  1d900000  unlock r1
000c4c  7d400000  xsignal_mode_cfg zero
000c50  9f8e1e0b  addli sp, sp, 1416
000c54  00a00300  mfence { lm, sm, gm }
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
