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
0000c0  1f8f1e0b  addli r30, sp, 1416
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
000694  cbf41102  ble.s r3, r1, 1340
000698  b3910128  sext_int2long r[4:5], r3
00069c  e344dfff  loadli.w r9,  -20(r30)
0006a0  6309bfff  loadli.w r18,  -40(r30)
0006a4  6348aff5  loadli.w r16,  -1324(r30)
0006a8  6305fffd  loadli.w r10,  -264(r30)
0006ac  e345eff8  loadli.w r11,  -908(r30)
0006b0  630e3ff7  loadli.w r28,  -1128(r30)
0006b4  b3920028  sext_int2long r[6:7], r1
0006b8  9f0d0001  addli r27, zero, 128
0006bc  9f460000  addli r13, zero, 4
0006c0  9f6b0000  addli r23, zero, 6
0006c4  9f280000  addli r17, zero, 2
0006c8  1f0c6000  addli r24, zero, 48
0006cc  9f5c0000  addli r25, zero, 5
0006d0  1f0d4000  addli r26, zero, 32
0006d4  1f068000  addli r12, zero, 64
0006d8  1f0a0000  addli r20, zero, 0
0006dc  73303fa8  store.d r[4:5], -1408(r30)
0006e0  1f72f01f  addli r4, zero, 4095
0006e4  ab81ffff  lui r3, 1048568
0006e8  733c3fa6  store.d r[4:5], -1416(r30)
0006ec  db0e0000  j 116
0006f0  eb510f01  load.d r[4:5], 16(r30)
0006f4  6b578fa9  load.d r[15:16], -1384(r30)
0006f8  9f501000  addli r1, zero, 13
0006fc  1f140000  addli r8, zero, 1
000700  7d900000  xwait r1, 0
000704  1d800600  lock zero, r13
000708  9bb02200  slli r1, r5, 2
00070c  8ba1e110  add.ul r[4:5], r[4:5], r[15:16]
000710  15000000  dma_cfg zero, zero, zero, 0
000714  15000204  dma_cfg zero, r4, zero, 2
000718  95831106  dma_cfg r7, r3, r1, 3
00071c  9f000002  addli r1, zero, 256
000720  95808008  dma_cfg r1, r1, r8, 4
000724  9f401000  addli r1, zero, 12
000728  35000000  dma_run zero
00072c  1d900600  unlock r13
000730  7d800000  xsignal r1, 0
000734  e3047ff5  loadli.w r9,  -1352(r30)
000738  eb528faa  load.d r[6:7], -1368(r30)
00073c  eb510fa8  load.d r[4:5], -1408(r30)
000740  1f180a00  addli r16, r20, 1
000744  634a4ff5  loadli.w r20,  -1372(r30)
000748  1f190900  addli r18, r18, 1
00074c  1f9e0900  addli r28, r19, 1
000750  9f940400  addli r9, r9, 1
000754  a7920200  addli.d r[6:7], r[6:7], 1
000758  93b03204  setlt.sl r1, r[6:7], r[4:5]
00075c  b7d10002  beq r1, zero, 1140
000760  3b30d100  bneq r2, r13, 12
000764  9f301000  addli r1, zero, 11
000768  7d900000  xwait r1, 0
00076c  e3005f00  loadli.w r1,  40(r30)
000770  e3414f00  loadli.w r3,  36(r30)
000774  73345faa  store.d r[6:7], -1368(r30)
000778  e70b9ff4  storeli.w r9, -1352(r30)
00077c  674b2ff5  storeli.w r18, -1356(r30)
000780  8b901230  div.s r1, r5, r1
000784  0b923030  div.s r4, r1, r3
000788  9f011000  addli r3, zero, 8
00078c  0b17b231  div.s r14, r4, r27
000790  9b303700  slli r1, r14, 3
000794  8b921618  sub.s r5, r13, r1
000798  8b973240  min.s r15, r5, r3
00079c  9f310000  addli r3, zero, 3
0007a0  8b12f238  mod.s r5, r4, r15
0007a4  8b905010  add.s r1, r1, r5
0007a8  93831104  setlt.u r7, r3, r1
0007ac  b3820028  zext_int2long r[6:7], r1
0007b0  9f511000  addli r3, zero, 13
0007b4  73385fa8  store.d r[6:7], -1392(r30)
0007b8  97b23202  sll.d r[6:7], r[6:7], r3
0007bc  3bb00300  bneq r7, zero, 12
0007c0  b3030028  zext_int2long r[8:9], zero
0007c4  db010000  j 12
0007c8  eb538fa7  load.d r[8:9], -1416(r30)
0007cc  97837202  and.d r[8:9], r[6:7], r[8:9]
0007d0  1b377700  slli r14, r14, 7
0007d4  9bb07000  slli r1, r1, 7
0007d8  73347fac  store.d r[8:9], -1336(r30)
0007dc  9f040000  addli r9, zero, 0
0007e0  0b12e218  sub.s r4, r4, r14
0007e4  e7481ff4  storeli.w r1, -1396(r30)
0007e8  0b17f230  div.s r14, r4, r15
0007ec  0b12da38  mod.s r4, r20, r13
0007f0  1f1a0a00  addli r20, r20, 1
0007f4  674a4ff5  storeli.w r20, -1372(r30)
0007f8  33090728  zext_int2long r[19:20], r14
0007fc  9b30f200  slli r1, r4, 15
000800  eb518f00  load.d r[4:5], 8(r30)
000804  17397903  sll.d r[19:20], r[19:20], r23
000808  e74b1ff4  storeli.w r1, -1348(r30)
00080c  9b306700  slli r1, r14, 6
000810  97331903  sll.d r[8:9], r[19:20], r17
000814  670a1ff4  storeli.w r1, -1376(r30)
000818  9f100000  addli r1, zero, 1
00081c  1f090000  addli r18, zero, 0
000820  8ba17110  add.ul r[4:5], r[4:5], r[8:9]
000824  733c7fa8  store.d r[8:9], -1384(r30)
000828  73303fac  store.d r[4:5], -1344(r30)
00082c  1f120000  addli r4, zero, 1
000830  5b090000  j 72
000834  7d900800  xwait r17, 0
000838  7d900c00  xwait r25, 0
00083c  1d000000  lock zero, zero
000840  9f310000  addli r3, zero, 3
000844  81080000  ds_cfg r17, zero, 0
000848  010d0002  ds_cfg r26, zero, 1
00084c  010d001c  ds_cfg r26, zero, 14
000850  810d001a  ds_cfg r27, zero, 13
000854  2197a703  shuffle_batch r14, r15, r26, 1
000858  1d100000  unlock zero
00085c  7d800100  xsignal r3, 0
000860  7d800600  xsignal r13, 0
000864  9f950500  addli r11, r11, 1
000868  1f150500  addli r10, r10, 1
00086c  9b801000  andi r1, r1, 1
000870  bbe50000  bneq r1, zero, 376
000874  5b3d0000  j 488
000878  8b192e11  add.s r19, r28, r18
00087c  9f616000  addli r3, zero, 54
000880  0b1a2811  add.s r20, r16, r18
000884  0b973938  mod.s r14, r19, r3
000888  8b178a39  mod.s r15, r20, r24
00088c  ab010200  lui r3, 32
000890  9b3ae700  slli r21, r14, 14
000894  1bb7e700  slli r14, r15, 14
000898  8b973a10  add.s r15, r21, r3
00089c  376e11ff  beq r2, r17, -104
0008a0  b38a0428  zext_int2long r[22:23], r9
0008a4  3b024100  bneq r2, r4, 128
0008a8  97ba9a03  sll.d r[22:23], r[22:23], r25
0008ac  eb518fac  load.d r[4:5], -1336(r30)
0008b0  b30b0628  zext_int2long r[24:25], r12
0008b4  9f040003  addli r9, zero, 384
0008b8  eb530f00  load.d r[8:9], 0(r30)
0008bc  9f0d0001  addli r27, zero, 128
0008c0  979a5a02  or.d r[22:23], r[22:23], r[6:7]
0008c4  8bb13a18  sub.sl r[4:5], r[22:23], r[4:5]
0008c8  97ba1a03  sll.d r[22:23], r[22:23], r17
0008cc  8f917161  div.sl r[4:5], r[4:5], r[24:25]
0008d0  b38b0428  zext_int2long r[24:25], r9
0008d4  9f340000  addli r9, zero, 3
0008d8  8baa5311  add.ul r[22:23], r[8:9], r[22:23]
0008dc  7d900400  xwait r9, 0
0008e0  1d800600  lock zero, r13
0008e4  9f040002  addli r9, zero, 256
0008e8  15000000  dma_cfg zero, zero, zero, 0
0008ec  15000b04  dma_cfg zero, r22, zero, 2
0008f0  8bbb7141  min.sl r[24:25], r[4:5], r[24:25]
0008f4  8bb13b18  sub.sl r[4:5], r[24:25], r[4:5]
0008f8  1f0c6000  addli r24, zero, 48
0008fc  9f6b0000  addli r23, zero, 6
000900  9f810101  addli r3, r3, 128
000904  1f020001  addli r4, zero, 128
000908  95874a06  dma_cfg r15, r21, r4, 3
00090c  15823408  dma_cfg r4, r9, r3, 4
000910  35000000  dma_run zero
000914  1d900600  unlock r13
000918  7d800800  xsignal r17, 0
00091c  1f120000  addli r4, zero, 1
000920  dbe8ffff  j -188
000924  9f716000  addli r3, zero, 55
000928  1f024001  addli r4, zero, 160
00092c  8b113538  mod.s r3, r10, r3
000930  0b924538  mod.s r4, r11, r4
000934  9f950500  addli r11, r11, 1
000938  1f150500  addli r10, r10, 1
00093c  9b34d200  slli r9, r4, 13
000940  9bb1d100  slli r3, r3, 13
000944  2b820f00  lui r4, 248
000948  8b974110  add.s r15, r3, r4
00094c  9f710000  addli r3, zero, 7
000950  37313100  beq r2, r3, 76
000954  bb127101  bneq r2, r23, 164
000958  9f730000  addli r7, zero, 7
00095c  9f112000  addli r3, zero, 17
000960  9f040002  addli r9, zero, 256
000964  7d900300  xwait r7, 0
000968  eb530fac  load.d r[8:9], -1344(r30)
00096c  97b13a02  sll.d r[4:5], r[22:23], r3
000970  1d800600  lock zero, r13
000974  15000000  dma_cfg zero, zero, zero, 0
000978  8ba13310  add.ul r[4:5], r[8:9], r[4:5]
00097c  15000204  dma_cfg zero, r4, zero, 2
000980  95879106  dma_cfg r15, r3, r9, 3
000984  9f010020  addli r3, zero, 4096
000988  9584a109  dma_cfg r9, r3, r26, 4
00098c  35000000  dma_run zero
000990  1d900600  unlock r13
000994  7d800b00  xsignal r23, 0
000998  db080000  j 68
00099c  9f111000  addli r3, zero, 9
0009a0  7d900b00  xwait r23, 0
0009a4  1f068000  addli r12, zero, 64
0009a8  7d900100  xwait r3, 0
0009ac  1d000000  lock zero, zero
0009b0  9f018000  addli r3, zero, 64
0009b4  81080000  ds_cfg r17, zero, 0
0009b8  81010002  ds_cfg r3, zero, 1
0009bc  010d001c  ds_cfg r26, zero, 14
0009c0  8101001a  ds_cfg r3, zero, 13
0009c4  9f710000  addli r3, zero, 7
0009c8  c184a705  shuffle_coa r9, r15, r26, 2
0009cc  1d100000  unlock zero
0009d0  7d800100  xsignal r3, 0
0009d4  9f011000  addli r3, zero, 8
0009d8  7d800100  xsignal r3, 0
0009dc  1f120000  addli r4, zero, 1
0009e0  9b801000  andi r1, r1, 1
0009e4  b7e10000  beq r1, zero, 120
0009e8  1f190900  addli r18, r18, 1
0009ec  9f140000  addli r9, zero, 1
0009f0  9f000000  addli r1, zero, 0
0009f4  dbd0ffff  j -380
0009f8  bb40d100  bneq r2, r13, 48
0009fc  1f120000  addli r4, zero, 1
000a00  9f011000  addli r3, zero, 8
000a04  7d900600  xwait r13, 0
000a08  7d900100  xwait r3, 0
000a0c  1d000200  lock zero, r4
000a10  0906bd01  mm_cfg r12, r26, r27, 0
000a14  89884804  mm_cfg r17, r17, r4, 2
000a18  b7000900  beq r18, zero, 32
000a1c  e3417ff5  loadli.w r3,  -1348(r30)
000a20  a9119710  mm_acc r3, r14, r9, 8
000a24  db030000  j 28
000a28  9b801000  andi r1, r1, 1
000a2c  1f120000  addli r4, zero, 1
000a30  bbee00fe  bneq r1, zero, -72
000a34  db060000  j 52
000a38  e3417ff5  loadli.w r3,  -1348(r30)
000a3c  a9019710  mm r3, r14, r9, 8
000a40  9b801000  andi r1, r1, 1
000a44  9f111000  addli r3, zero, 9
000a48  1d100200  unlock r4
000a4c  7d800c00  xsignal r25, 0
000a50  7d800100  xsignal r3, 0
000a54  3bde00fe  bneq r1, zero, -108
000a58  5b010000  j 8
000a5c  3b30d100  bneq r2, r13, 12
000a60  9f201000  addli r1, zero, 10
000a64  7d800000  xsignal r1, 0
000a68  e3004ff5  loadli.w r1,  -1376(r30)
000a6c  63496ff5  loadli.w r18,  -1356(r30)
000a70  b3030628  zext_int2long r[8:9], r12
000a74  b3810028  zext_int2long r[4:5], r1
000a78  9f008007  addli r1, zero, 960
000a7c  b3820028  zext_int2long r[6:7], r1
000a80  8b10d938  mod.s r1, r18, r13
000a84  8ba25140  min.ul r[6:7], r[4:5], r[6:7]
000a88  a7828200  addli.d r[6:7], r[6:7], 64
000a8c  8ba23248  max.ul r[6:7], r[6:7], r[4:5]
000a90  9bb08000  slli r1, r1, 8
000a94  8bb13218  sub.sl r[4:5], r[6:7], r[4:5]
000a98  8ba27140  min.ul r[6:7], r[4:5], r[8:9]
000a9c  ab611600  lui r3, 358
000aa0  1f120000  addli r4, zero, 1
000aa4  8b933010  add.s r7, r1, r3
000aa8  372141fe  beq r2, r4, -952
000aac  e3047ff5  loadli.w r9,  -1352(r30)
000ab0  9b910140  ori r3, r3, 1024
000ab4  8b90d438  mod.s r1, r9, r13
000ab8  9bb0f000  slli r1, r1, 15
000abc  8b903010  add.s r1, r1, r3
000ac0  bb719101  bneq r2, r25, 124
000ac4  9f211000  addli r3, zero, 10
000ac8  9f020000  addli r5, zero, 0
000acc  2b830000  lui r6, 8
000ad0  7d900100  xwait r3, 0
000ad4  9f411000  addli r3, zero, 12
000ad8  7d900100  xwait r3, 0
000adc  9f711000  addli r3, zero, 15
000ae0  7d900100  xwait r3, 0
000ae4  1d800800  lock zero, r17
000ae8  ab01803f  lui r3, 260096
000aec  0d020014  ew_cfg r4, zero, zero, 10
000af0  0d000002  ew_cfg zero, zero, zero, 1
000af4  8d910100  ewcoeff_cfg r3, r3, zero, 0
000af8  9f717000  addli r3, zero, 63
000afc  0d800104  ew_cfg zero, r3, zero, 2
000b00  0d020006  ew_cfg r4, zero, zero, 3
000b04  63447ff5  loadli.w r8,  -1348(r30)
000b08  8b915010  add.s r3, r1, r5
000b0c  0b125410  add.s r4, r8, r5
000b10  9f820202  addli r5, r5, 256
000b14  ad017200  dsmadd r3, r4, r7, 0
000b18  bbcf62fe  bneq r5, r6, -16
000b1c  9f301000  addli r1, zero, 11
000b20  0d000014  ew_cfg zero, zero, zero, 10
000b24  1d900800  unlock r17
000b28  7d800000  xsignal r1, 0
000b2c  9f501000  addli r1, zero, 13
000b30  7d800000  xsignal r1, 0
000b34  9f601000  addli r1, zero, 14
000b38  5b120000  j 144
000b3c  1f180000  addli r16, zero, 1
000b40  bb6f01fc  bneq r2, zero, -1032
000b44  e3411ff5  loadli.w r3,  -1396(r30)
000b48  9f030003  addli r7, zero, 384
000b4c  eb5a0fa9  load.d r[22:23], -1392(r30)
000b50  1f372000  addli r14, zero, 19
000b54  9bb22200  slli r5, r5, 2
000b58  9f5c0000  addli r25, zero, 5
000b5c  b3830328  zext_int2long r[8:9], r7
000b60  b3910128  sext_int2long r[4:5], r3
000b64  17b7ea02  sll.d r[15:16], r[22:23], r14
000b68  eb5a8f01  load.d r[22:23], 24(r30)
000b6c  8bb37140  min.sl r[8:9], r[4:5], r[8:9]
000b70  0ba7ea10  add.ul r[15:16], r[22:23], r[15:16]
000b74  eb5a8fa9  load.d r[22:23], -1384(r30)
000b78  a7830301  addli.d r[8:9], r[8:9], 128
000b7c  8bb33348  max.sl r[8:9], r[8:9], r[4:5]
000b80  0b275711  add.ul r[15:16], r[15:16], r[22:23]
000b84  8bb13318  sub.sl r[4:5], r[8:9], r[4:5]
000b88  b3830d28  zext_int2long r[8:9], r27
000b8c  8bb17140  min.sl r[4:5], r[4:5], r[8:9]
000b90  9f631000  addli r7, zero, 14
000b94  7d900300  xwait r7, 0
000b98  9f530000  addli r7, zero, 5
000b9c  1d800300  lock zero, r7
000ba0  15000000  dma_cfg zero, zero, zero, 0
000ba4  15000802  dma_cfg zero, r16, zero, 1
000ba8  95070004  dma_cfg r15, zero, zero, 2
000bac  15875006  dma_cfg r14, r1, r5, 3
000bb0  9f000002  addli r1, zero, 256
000bb4  9f020020  addli r5, zero, 4096
000bb8  95823008  dma_cfg r5, r1, r3, 4
000bbc  9f701000  addli r1, zero, 15
000bc0  35000000  dma_run zero
000bc4  1d900300  unlock r7
000bc8  7d800000  xsignal r1, 0
000bcc  db6dffff  j -1172
000bd0  7d000000  xsignal zero, 0
000bd4  bb600100  bneq r2, zero, 56
000bd8  9f200000  addli r1, zero, 2
000bdc  7d100000  xwait zero, 0
000be0  7d100000  xwait zero, 0
000be4  7d100000  xwait zero, 0
000be8  7d100000  xwait zero, 0
000bec  7d100000  xwait zero, 0
000bf0  7d100000  xwait zero, 0
000bf4  7d100000  xwait zero, 0
000bf8  7d100000  xwait zero, 0
000bfc  1d800000  lock zero, r1
000c00  0d000020  ew_cfg zero, zero, zero, 16
000c04  1d900000  unlock r1
000c08  7d400000  xsignal_mode_cfg zero
000c0c  9f8e1e0b  addli sp, sp, 1416
000c10  00a00300  mfence { lm, sm, gm }
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
000e44  00100000  exit
000e48  00100000  exit
000e4c  00100000  exit
000e50  00100000  exit
000e54  00100000  exit
