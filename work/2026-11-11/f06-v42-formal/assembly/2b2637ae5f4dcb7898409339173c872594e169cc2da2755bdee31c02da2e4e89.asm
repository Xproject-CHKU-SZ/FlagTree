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
0000b4  9f8e7ef5  addli sp, sp, -1352
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8f1e0a  addli r30, sp, 1288
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600100  beq r2, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b9d0000  j 1256
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
000380  9f710000  addli r3, zero, 7
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
0004c4  9f501000  addli r1, zero, 13
0004c8  7d800100  xsignal r3, 0
0004cc  7d800100  xsignal r3, 0
0004d0  7d800100  xsignal r3, 0
0004d4  7d800100  xsignal r3, 0
0004d8  7d800100  xsignal r3, 0
0004dc  7d800100  xsignal r3, 0
0004e0  7d800100  xsignal r3, 0
0004e4  7d800100  xsignal r3, 0
0004e8  7d800100  xsignal r3, 0
0004ec  7d800100  xsignal r3, 0
0004f0  7d800100  xsignal r3, 0
0004f4  7d800100  xsignal r3, 0
0004f8  7d800100  xsignal r3, 0
0004fc  7d800100  xsignal r3, 0
000500  7d800100  xsignal r3, 0
000504  7d800100  xsignal r3, 0
000508  7d800100  xsignal r3, 0
00050c  7d800100  xsignal r3, 0
000510  7d800100  xsignal r3, 0
000514  7d800100  xsignal r3, 0
000518  7d800100  xsignal r3, 0
00051c  7d800100  xsignal r3, 0
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
0005a0  9f711000  addli r3, zero, 15
0005a4  7d800000  xsignal r1, 0
0005a8  7d800000  xsignal r1, 0
0005ac  7d800000  xsignal r1, 0
0005b0  7d800000  xsignal r1, 0
0005b4  7d800100  xsignal r3, 0
0005b8  7d800100  xsignal r3, 0
0005bc  7d800100  xsignal r3, 0
0005c0  7d800100  xsignal r3, 0
0005c4  e3004f00  loadli.w r1,  32(r30)
0005c8  e3414f00  loadli.w r3,  36(r30)
0005cc  80d20002  load_param_i r5, 1
0005d0  63025f00  loadli.w r4,  40(r30)
0005d4  e74e0ffe  storeli.w zero, -20(r30)
0005d8  e70d0ffe  storeli.w zero, -40(r30)
0005dc  e74f0ffc  storeli.w zero, -260(r30)
0005e0  e70b0ffa  storeli.w zero, -584(r30)
0005e4  e70d0ff8  storeli.w zero, -808(r30)
0005e8  67450ff6  storeli.w zero, -1196(r30)
0005ec  8b901120  mul.s r1, r3, r1
0005f0  9f810200  addli r3, r5, 0
0005f4  8b914050  fmac.s r3, r1, r4
0005f8  0b924020  mul.s r4, r1, r4
0005fc  9ff1f1ff  addli r3, r3, -1
000600  8b915130  div.s r3, r3, r5
000604  80520002  load_param_i r5, 0
000608  8b905120  mul.s r1, r3, r5
00060c  8b915150  fmac.s r3, r3, r5
000610  8b914140  min.s r3, r3, r4
000614  cbf51102  ble.s r3, r1, 1404
000618  b3910128  sext_int2long r[4:5], r3
00061c  e347dfff  loadli.w r15,  -20(r30)
000620  6309bfff  loadli.w r18,  -40(r30)
000624  6345fffd  loadli.w r10,  -260(r30)
000628  e3057ffb  loadli.w r11,  -584(r30)
00062c  6306bff9  loadli.w r12,  -808(r30)
000630  e346aff6  loadli.w r13,  -1196(r30)
000634  b3920028  sext_int2long r[6:7], r1
000638  1f078000  addli r14, zero, 64
00063c  9f480000  addli r17, zero, 4
000640  9f290000  addli r19, zero, 2
000644  1f0cc000  addli r24, zero, 96
000648  9f7c6000  addli r25, zero, 55
00064c  2b080200  lui r16, 32
000650  1f5e0000  addli r28, zero, 5
000654  9f0d4000  addli r27, zero, 32
000658  9f00a000  addli r1, zero, 80
00065c  1f0d0001  addli r26, zero, 128
000660  1f640000  addli r8, zero, 6
000664  e7430ff6  storeli.w zero, -1220(r30)
000668  73303fb0  store.d r[4:5], -1280(r30)
00066c  1f72f00f  addli r4, zero, 2047
000670  ab81ffff  lui r3, 1048568
000674  733c3fae  store.d r[4:5], -1288(r30)
000678  db0d0000  j 108
00067c  6b540f01  load.d r[9:10], 16(r30)
000680  6b5a8fb1  load.d r[21:22], -1256(r30)
000684  9f511000  addli r3, zero, 13
000688  7d900100  xwait r3, 0
00068c  1d800800  lock zero, r17
000690  9b312300  slli r3, r6, 2
000694  0b244411  add.ul r[9:10], r[9:10], r[21:22]
000698  15000000  dma_cfg zero, zero, zero, 0
00069c  15800404  dma_cfg zero, r9, zero, 2
0006a0  15023406  dma_cfg r4, r8, r3, 3
0006a4  9f110000  addli r3, zero, 1
0006a8  1f020004  addli r4, zero, 512
0006ac  15023208  dma_cfg r4, r4, r3, 4
0006b0  9f411000  addli r3, zero, 12
0006b4  35000000  dma_run zero
0006b8  1d900800  unlock r17
0006bc  7d800100  xsignal r3, 0
0006c0  e3077ff6  loadli.w r15,  -1224(r30)
0006c4  eb528fb2  load.d r[6:7], -1240(r30)
0006c8  eb510fb0  load.d r[4:5], -1280(r30)
0006cc  1f190900  addli r18, r18, 1
0006d0  9f970700  addli r15, r15, 1
0006d4  1f640000  addli r8, zero, 6
0006d8  a7920200  addli.d r[6:7], r[6:7], 1
0006dc  93b13204  setlt.sl r3, r[6:7], r[4:5]
0006e0  b7c20102  beq r3, zero, 1200
0006e4  67432ff7  storeli.w r18, -1228(r30)
0006e8  e703fff6  storeli.w r15, -1224(r30)
0006ec  3b301101  bneq r2, r17, 12
0006f0  9f311000  addli r3, zero, 11
0006f4  7d900100  xwait r3, 0
0006f8  e3015f00  loadli.w r3,  40(r30)
0006fc  63424f00  loadli.w r4,  36(r30)
000700  73345fb2  store.d r[6:7], -1240(r30)
000704  8b913230  div.s r3, r5, r3
000708  1f031000  addli r6, zero, 8
00070c  8b924130  div.s r5, r3, r4
000710  8b97e230  div.s r15, r5, r14
000714  9bb13700  slli r3, r15, 3
000718  0b123318  sub.s r4, r6, r3
00071c  0b196240  min.s r18, r4, r6
000720  1f431000  addli r6, zero, 12
000724  0b922239  mod.s r4, r5, r18
000728  8b914110  add.s r3, r3, r4
00072c  1f720000  addli r4, zero, 7
000730  13023204  setlt.u r4, r4, r3
000734  338a0128  zext_int2long r[21:22], r3
000738  17336a02  sll.d r[7:8], r[21:22], r6
00073c  73384fb1  store.d r[21:22], -1264(r30)
000740  3b400200  bneq r4, zero, 16
000744  330a0028  zext_int2long r[21:22], zero
000748  73344fb5  store.d r[21:22], -1208(r30)
00074c  db020000  j 20
000750  6b548faf  load.d r[9:10], -1288(r30)
000754  17048302  and.d r[9:10], r[7:8], r[9:10]
000758  73348fb4  store.d r[9:10], -1208(r30)
00075c  1f640000  addli r8, zero, 6
000760  9bb76700  slli r15, r15, 6
000764  9bb16100  slli r3, r3, 6
000768  e3447ff6  loadli.w r9,  -1220(r30)
00076c  1f020000  addli r4, zero, 0
000770  8b92f218  sub.s r5, r5, r15
000774  e7403ff6  storeli.w r3, -1268(r30)
000778  9f710000  addli r3, zero, 7
00077c  8b972231  div.s r15, r5, r18
000780  8b921439  mod.s r5, r9, r17
000784  9f940400  addli r9, r9, 1
000788  1f090000  addli r18, zero, 0
00078c  e7439ff6  storeli.w r9, -1220(r30)
000790  338a0728  zext_int2long r[21:22], r15
000794  9bb2f200  slli r5, r5, 15
000798  173a3a02  sll.d r[21:22], r[21:22], r3
00079c  9bb17700  slli r3, r15, 7
0007a0  173b3a03  sll.d r[23:24], r[21:22], r19
0007a4  6b5a8f00  load.d r[21:22], 8(r30)
0007a8  67423ff6  storeli.w r3, -1244(r30)
0007ac  733c6fb1  store.d r[23:24], -1256(r30)
0007b0  0b2a6a11  add.ul r[21:22], r[21:22], r[23:24]
0007b4  73304fb5  store.d r[21:22], -1216(r30)
0007b8  1f1a0000  addli r20, zero, 1
0007bc  5b030000  j 24
0007c0  9b011a00  andi r3, r20, 1
0007c4  b7b90100  beq r3, zero, 620
0007c8  1f190900  addli r18, r18, 1
0007cc  1f120000  addli r4, zero, 1
0007d0  1f0a0000  addli r20, zero, 0
0007d4  8b119639  mod.s r3, r12, r25
0007d8  8b978639  mod.s r15, r13, r24
0007dc  9f960600  addli r13, r13, 1
0007e0  1f160600  addli r12, r12, 1
0007e4  9bbad100  slli r21, r3, 13
0007e8  9bb1d700  slli r3, r15, 13
0007ec  8b970a11  add.s r15, r21, r16
0007f0  37223101  beq r2, r19, 136
0007f4  b30a0228  zext_int2long r[22:23], r4
0007f8  bb158100  bneq r2, r8, 356
0007fc  97baca03  sll.d r[22:23], r[22:23], r28
000800  6b548fb4  load.d r[9:10], -1208(r30)
000804  b30b0728  zext_int2long r[24:25], r14
000808  1f028003  addli r4, zero, 448
00080c  979a6a02  or.d r[22:23], r[22:23], r[7:8]
000810  8bbc8a18  sub.sl r[26:27], r[22:23], r[9:10]
000814  6b540f00  load.d r[9:10], 0(r30)
000818  97ba3a03  sll.d r[22:23], r[22:23], r19
00081c  8f9b7c61  div.sl r[24:25], r[26:27], r[24:25]
000820  b30c0228  zext_int2long r[26:27], r4
000824  1f320000  addli r4, zero, 3
000828  8b2a5411  add.ul r[22:23], r[9:10], r[22:23]
00082c  9f040002  addli r9, zero, 256
000830  1f640000  addli r8, zero, 6
000834  7d100200  xwait r4, 0
000838  1d800800  lock zero, r17
00083c  15000000  dma_cfg zero, zero, zero, 0
000840  15000b04  dma_cfg zero, r22, zero, 2
000844  8bbc9b41  min.sl r[26:27], r[24:25], r[26:27]
000848  8bbb7c19  sub.sl r[24:25], r[26:27], r[24:25]
00084c  9f7c6000  addli r25, zero, 55
000850  1f0d0001  addli r26, zero, 128
000854  1f828b00  addli r4, r23, 64
000858  9f0b0001  addli r23, zero, 128
00085c  1f0cc000  addli r24, zero, 96
000860  95877a07  dma_cfg r15, r21, r23, 3
000864  958b4408  dma_cfg r23, r9, r4, 4
000868  35000000  dma_run zero
00086c  1d900800  unlock r17
000870  7d800900  xsignal r19, 0
000874  db060000  j 52
000878  7d900900  xwait r19, 0
00087c  7d100e00  xwait r28, 0
000880  1d000000  lock zero, zero
000884  1f320000  addli r4, zero, 3
000888  81090000  ds_cfg r19, zero, 0
00088c  810d0002  ds_cfg r27, zero, 1
000890  810d001c  ds_cfg r27, zero, 14
000894  0107001a  ds_cfg r14, zero, 13
000898  a191b703  shuffle_batch r3, r15, r27, 1
00089c  1d100000  unlock zero
0008a0  7d000200  xsignal r4, 0
0008a4  7d800800  xsignal r17, 0
0008a8  0b921538  mod.s r4, r11, r1
0008ac  9f950500  addli r11, r11, 1
0008b0  1f150500  addli r10, r10, 1
0008b4  1b32e200  slli r4, r4, 14
0008b8  3b2c11ff  bneq r2, r17, -248
0008bc  9f071000  addli r15, zero, 8
0008c0  7d900800  xwait r17, 0
0008c4  9f1a0000  addli r21, zero, 1
0008c8  1f0b0000  addli r22, zero, 0
0008cc  7d900700  xwait r15, 0
0008d0  9f170000  addli r15, zero, 1
0008d4  b7700900  beq r18, zero, 60
0008d8  9b3bdb00  slli r23, r22, 13
0008dc  1b3b8b00  slli r22, r22, 8
0008e0  1d800700  lock zero, r15
0008e4  0987ed00  mm_cfg r14, r27, r14, 0
0008e8  979b4b00  or r23, r23, r4
0008ec  171b5b00  or r22, r22, r5
0008f0  8989f804  mm_cfg r19, r17, r15, 2
0008f4  299b7111  mm_acc r22, r3, r23, 8
0008f8  9b8b1a00  andi r23, r21, 1
0008fc  1f1b0000  addli r22, zero, 1
000900  9f0a0000  addli r21, zero, 0
000904  1d900700  unlock r15
000908  3bcf0bfe  bneq r23, zero, -48
00090c  5b070000  j 56
000910  9b3bdb00  slli r23, r22, 13
000914  1b3b8b00  slli r22, r22, 8
000918  1d800700  lock zero, r15
00091c  0987ed00  mm_cfg r14, r27, r14, 0
000920  979b4b00  or r23, r23, r4
000924  171b5b00  or r22, r22, r5
000928  8989f804  mm_cfg r19, r17, r15, 2
00092c  298b7111  mm r22, r3, r23, 8
000930  9b8b1a00  andi r23, r21, 1
000934  1f1b0000  addli r22, zero, 1
000938  9f0a0000  addli r21, zero, 0
00093c  1d900700  unlock r15
000940  3bcf0bfe  bneq r23, zero, -48
000944  9b011a00  andi r3, r20, 1
000948  1f121000  addli r4, zero, 9
00094c  7d000e00  xsignal r28, 0
000950  7d000200  xsignal r4, 0
000954  bbd901fe  bneq r3, zero, -396
000958  5b1a0000  j 208
00095c  1f626000  addli r4, zero, 54
000960  8b971538  mod.s r15, r11, r1
000964  abe40800  lui r9, 142
000968  9f950500  addli r11, r11, 1
00096c  0b124538  mod.s r4, r10, r4
000970  1f150500  addli r10, r10, 1
000974  9b3be200  slli r23, r4, 14
000978  1bb2e700  slli r4, r15, 14
00097c  8b979b10  add.s r15, r23, r9
000980  9f7b0000  addli r23, zero, 7
000984  37617101  beq r2, r23, 88
000988  9f140000  addli r9, zero, 1
00098c  bb3c91fe  bneq r2, r9, -212
000990  9f112000  addli r3, zero, 17
000994  9f040004  addli r9, zero, 512
000998  97b13a02  sll.d r[4:5], r[22:23], r3
00099c  9f7a0000  addli r21, zero, 7
0009a0  7d900a00  xwait r21, 0
0009a4  eb5a0fb4  load.d r[22:23], -1216(r30)
0009a8  1d800800  lock zero, r17
0009ac  15000000  dma_cfg zero, zero, zero, 0
0009b0  8ba13a10  add.ul r[4:5], r[22:23], r[4:5]
0009b4  15000204  dma_cfg zero, r4, zero, 2
0009b8  95879106  dma_cfg r15, r3, r9, 3
0009bc  9f010020  addli r3, zero, 4096
0009c0  9584b109  dma_cfg r9, r3, r27, 4
0009c4  35000000  dma_run zero
0009c8  1d900800  unlock r17
0009cc  7d000400  xsignal r8, 0
0009d0  9b011a00  andi r3, r20, 1
0009d4  bbd701fe  bneq r3, zero, -524
0009d8  db090000  j 76
0009dc  9f111000  addli r3, zero, 9
0009e0  7d100400  xwait r8, 0
0009e4  1f0d0001  addli r26, zero, 128
0009e8  7d900100  xwait r3, 0
0009ec  1d000000  lock zero, zero
0009f0  9f010001  addli r3, zero, 128
0009f4  81090000  ds_cfg r19, zero, 0
0009f8  81010002  ds_cfg r3, zero, 1
0009fc  810d001c  ds_cfg r27, zero, 14
000a00  8101001a  ds_cfg r3, zero, 13
000a04  9f710000  addli r3, zero, 7
000a08  4182b705  shuffle_coa r4, r15, r27, 2
000a0c  1d100000  unlock zero
000a10  7d800100  xsignal r3, 0
000a14  9f011000  addli r3, zero, 8
000a18  7d800100  xsignal r3, 0
000a1c  9b011a00  andi r3, r20, 1
000a20  bba601fe  bneq r3, zero, -600
000a24  3b301101  bneq r2, r17, 12
000a28  9f211000  addli r3, zero, 10
000a2c  7d800100  xsignal r3, 0
000a30  e3414ff6  loadli.w r3,  -1244(r30)
000a34  1f030007  addli r6, zero, 896
000a38  63496ff6  loadli.w r18,  -1228(r30)
000a3c  330a0d28  zext_int2long r[21:22], r26
000a40  ab641600  lui r9, 358
000a44  9f670000  addli r15, zero, 6
000a48  33030328  zext_int2long r[7:8], r6
000a4c  b3810128  zext_int2long r[4:5], r3
000a50  0b141939  mod.s r8, r18, r17
000a54  0ba36140  min.ul r[7:8], r[4:5], r[7:8]
000a58  27030301  addli.d r[7:8], r[7:8], 128
000a5c  0b233348  max.ul r[7:8], r[7:8], r[4:5]
000a60  1b349400  slli r8, r8, 9
000a64  8b313318  sub.sl r[4:5], r[7:8], r[4:5]
000a68  0ba34141  min.ul r[7:8], r[4:5], r[21:22]
000a6c  0b129410  add.s r4, r8, r9
000a70  3730f1fe  beq r2, r15, -1012
000a74  e3077ff6  loadli.w r15,  -1224(r30)
000a78  1b940480  ori r8, r9, 2048
000a7c  8b911739  mod.s r3, r15, r17
000a80  9bb1f100  slli r3, r3, 15
000a84  8b918110  add.s r3, r3, r8
000a88  bb71c101  bneq r2, r28, 124
000a8c  9f231000  addli r7, zero, 10
000a90  2b04803f  lui r8, 260096
000a94  1f030000  addli r6, zero, 0
000a98  ab840000  lui r9, 8
000a9c  7d900300  xwait r7, 0
000aa0  9f431000  addli r7, zero, 12
000aa4  7d900300  xwait r7, 0
000aa8  9f731000  addli r7, zero, 15
000aac  7d900300  xwait r7, 0
000ab0  9f130000  addli r7, zero, 1
000ab4  1d800900  lock zero, r19
000ab8  8d030014  ew_cfg r7, zero, zero, 10
000abc  0d000002  ew_cfg zero, zero, zero, 1
000ac0  0d140400  ewcoeff_cfg r8, r8, zero, 0
000ac4  1f74f000  addli r8, zero, 127
000ac8  0d000404  ew_cfg zero, r8, zero, 2
000acc  8d030006  ew_cfg r7, zero, zero, 3
000ad0  8b936110  add.s r7, r3, r6
000ad4  0b946210  add.s r8, r5, r6
000ad8  1f030304  addli r6, r6, 512
000adc  ad034400  dsmadd r7, r8, r4, 0
000ae0  bb4f93fe  bneq r6, r9, -16
000ae4  9f311000  addli r3, zero, 11
000ae8  0d000014  ew_cfg zero, zero, zero, 10
000aec  1d900900  unlock r19
000af0  7d800100  xsignal r3, 0
000af4  9f511000  addli r3, zero, 13
000af8  7d800100  xsignal r3, 0
000afc  9f611000  addli r3, zero, 14
000b00  5b110000  j 136
000b04  3b0f01fc  bneq r2, zero, -1088
000b08  63421ff6  loadli.w r4,  -1268(r30)
000b0c  1f048003  addli r8, zero, 448
000b10  eb5a0fb1  load.d r[22:23], -1264(r30)
000b14  1f2a2000  addli r20, zero, 18
000b18  1b332300  slli r6, r6, 2
000b1c  33040428  zext_int2long r[9:10], r8
000b20  33120228  sext_int2long r[5:6], r4
000b24  17ba4a03  sll.d r[21:22], r[22:23], r20
000b28  6b5b8f01  load.d r[23:24], 24(r30)
000b2c  0b348240  min.sl r[9:10], r[5:6], r[9:10]
000b30  0b2a4b11  add.ul r[21:22], r[23:24], r[21:22]
000b34  6b5b8fb1  load.d r[23:24], -1256(r30)
000b38  27048400  addli.d r[9:10], r[9:10], 64
000b3c  0b344448  max.sl r[9:10], r[9:10], r[5:6]
000b40  0b2a6a11  add.ul r[21:22], r[21:22], r[23:24]
000b44  0b324418  sub.sl r[5:6], r[9:10], r[5:6]
000b48  33040728  zext_int2long r[9:10], r14
000b4c  0b328240  min.sl r[5:6], r[5:6], r[9:10]
000b50  1f641000  addli r8, zero, 14
000b54  7d100400  xwait r8, 0
000b58  1d000e00  lock zero, r28
000b5c  1f140000  addli r8, zero, 1
000b60  15000000  dma_cfg zero, zero, zero, 0
000b64  15000402  dma_cfg zero, r8, zero, 1
000b68  950a0004  dma_cfg r21, zero, zero, 2
000b6c  158a6106  dma_cfg r20, r3, r6, 3
000b70  9f010004  addli r3, zero, 512
000b74  1f030020  addli r6, zero, 4096
000b78  15834108  dma_cfg r6, r3, r4, 4
000b7c  9f711000  addli r3, zero, 15
000b80  35000000  dma_run zero
000b84  1d100e00  unlock r28
000b88  7d800100  xsignal r3, 0
000b8c  5b67ffff  j -1224
000b90  7d000000  xsignal zero, 0
000b94  bb600100  bneq r2, zero, 56
000b98  9f200000  addli r1, zero, 2
000b9c  7d100000  xwait zero, 0
000ba0  7d100000  xwait zero, 0
000ba4  7d100000  xwait zero, 0
000ba8  7d100000  xwait zero, 0
000bac  7d100000  xwait zero, 0
000bb0  7d100000  xwait zero, 0
000bb4  7d100000  xwait zero, 0
000bb8  7d100000  xwait zero, 0
000bbc  1d800000  lock zero, r1
000bc0  0d000020  ew_cfg zero, zero, zero, 16
000bc4  1d900000  unlock r1
000bc8  7d400000  xsignal_mode_cfg zero
000bcc  9f8e1e0a  addli sp, sp, 1288
000bd0  00a00300  mfence { lm, sm, gm }
000bd4  00100000  exit
000bd8  00100000  exit
000bdc  00100000  exit
000be0  00100000  exit
000be4  00100000  exit
000be8  00100000  exit
000bec  00100000  exit
000bf0  00100000  exit
000bf4  00100000  exit
000bf8  00100000  exit
000bfc  00100000  exit
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
