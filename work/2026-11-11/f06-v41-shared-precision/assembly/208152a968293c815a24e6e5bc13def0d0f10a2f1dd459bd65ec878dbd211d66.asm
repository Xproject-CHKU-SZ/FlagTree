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
0000dc  5b9f0000  j 1272
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
000114  9f310000  addli r3, zero, 3
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
000298  9f101000  addli r1, zero, 9
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
000388  9f710000  addli r3, zero, 7
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
0004cc  9f501000  addli r1, zero, 13
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
0005a0  7d800100  xsignal r3, 0
0005a4  7d800100  xsignal r3, 0
0005a8  7d800100  xsignal r3, 0
0005ac  7d800100  xsignal r3, 0
0005b0  7d800100  xsignal r3, 0
0005b4  7d800100  xsignal r3, 0
0005b8  7d800100  xsignal r3, 0
0005bc  7d800100  xsignal r3, 0
0005c0  9f711000  addli r3, zero, 15
0005c4  7d800000  xsignal r1, 0
0005c8  7d800000  xsignal r1, 0
0005cc  7d800100  xsignal r3, 0
0005d0  7d800100  xsignal r3, 0
0005d4  e3004f00  loadli.w r1,  32(r30)
0005d8  e3414f00  loadli.w r3,  36(r30)
0005dc  80d20002  load_param_i r5, 1
0005e0  63025f00  loadli.w r4,  40(r30)
0005e4  674f0ffe  storeli.w zero, -12(r30)
0005e8  e70e0ffe  storeli.w zero, -24(r30)
0005ec  674f0ffc  storeli.w zero, -268(r30)
0005f0  670b0ffa  storeli.w zero, -592(r30)
0005f4  670c0ff8  storeli.w zero, -832(r30)
0005f8  e7430ff6  storeli.w zero, -1220(r30)
0005fc  8b901120  mul.s r1, r3, r1
000600  9f810200  addli r3, r5, 0
000604  8b914050  fmac.s r3, r1, r4
000608  0b924020  mul.s r4, r1, r4
00060c  9ff1f1ff  addli r3, r3, -1
000610  8b915130  div.s r3, r3, r5
000614  80520002  load_param_i r5, 0
000618  8b905120  mul.s r1, r3, r5
00061c  8b915150  fmac.s r3, r3, r5
000620  8b914140  min.s r3, r3, r4
000624  4bf41102  ble.s r3, r1, 1308
000628  b3910128  sext_int2long r[4:5], r3
00062c  634aefff  loadli.w r20,  -12(r30)
000630  6345effd  loadli.w r10,  -268(r30)
000634  e3056ffb  loadli.w r11,  -592(r30)
000638  63068ff9  loadli.w r12,  -832(r30)
00063c  e3467ff6  loadli.w r13,  -1220(r30)
000640  33930028  sext_int2long r[7:8], r1
000644  1f078000  addli r14, zero, 64
000648  9f7a0000  addli r21, zero, 7
00064c  1f290000  addli r18, zero, 2
000650  9f490000  addli r19, zero, 4
000654  9f0cc000  addli r25, zero, 96
000658  9f3b7000  addli r23, zero, 59
00065c  2b0c0100  lui r24, 16
000660  1f0d4000  addli r26, zero, 32
000664  1f0ea000  addli r28, zero, 80
000668  1f0b0001  addli r22, zero, 128
00066c  9f070000  addli r15, zero, 0
000670  733c3fae  store.d r[4:5], -1288(r30)
000674  e301dfff  loadli.w r3,  -24(r30)
000678  e7423ff6  storeli.w r3, -1236(r30)
00067c  9f610000  addli r3, zero, 6
000680  db0e0000  j 116
000684  eb530f01  load.d r[8:9], 16(r30)
000688  eb570fb1  load.d r[16:17], -1264(r30)
00068c  9f501000  addli r1, zero, 13
000690  7d900000  xwait r1, 0
000694  1d800900  lock zero, r19
000698  9b302200  slli r1, r4, 2
00069c  1f020004  addli r4, zero, 512
0006a0  8ba3f310  add.ul r[8:9], r[8:9], r[16:17]
0006a4  15000000  dma_cfg zero, zero, zero, 0
0006a8  15000404  dma_cfg zero, r8, zero, 2
0006ac  15831306  dma_cfg r6, r7, r1, 3
0006b0  9f100000  addli r1, zero, 1
0006b4  15021208  dma_cfg r4, r4, r1, 4
0006b8  9f401000  addli r1, zero, 12
0006bc  35000000  dma_run zero
0006c0  1d900900  unlock r19
0006c4  7d800000  xsignal r1, 0
0006c8  630a5ff6  loadli.w r20,  -1240(r30)
0006cc  6b530fb2  load.d r[7:8], -1248(r30)
0006d0  6b528faf  load.d r[5:6], -1288(r30)
0006d4  e3473ff6  loadli.w r15,  -1252(r30)
0006d8  1f1a0a00  addli r20, r20, 1
0006dc  27130300  addli.d r[7:8], r[7:8], 1
0006e0  93304304  setlt.sl r1, r[7:8], r[5:6]
0006e4  63425ff6  loadli.w r4,  -1236(r30)
0006e8  1f120200  addli r4, r4, 1
0006ec  e7424ff6  storeli.w r4, -1236(r30)
0006f0  37c10002  beq r1, zero, 1104
0006f4  e7024ff7  storeli.w r20, -1240(r30)
0006f8  3b303101  bneq r2, r19, 12
0006fc  9f301000  addli r1, zero, 11
000700  7d900000  xwait r1, 0
000704  63025f00  loadli.w r4,  40(r30)
000708  e3424f00  loadli.w r5,  36(r30)
00070c  73306fb2  store.d r[7:8], -1248(r30)
000710  1f140000  addli r8, zero, 1
000714  9f041000  addli r9, zero, 8
000718  9f000000  addli r1, zero, 0
00071c  1f0a0000  addli r20, zero, 0
000720  0b124330  div.s r4, r6, r4
000724  8b932739  mod.s r7, r15, r18
000728  9f970700  addli r15, r15, 1
00072c  e741fff6  storeli.w r15, -1252(r30)
000730  0b125230  div.s r4, r4, r5
000734  9bb7f300  slli r15, r7, 15
000738  8b12e230  div.s r5, r4, r14
00073c  1bb33200  slli r6, r5, 3
000740  9bb26200  slli r5, r5, 6
000744  0b146418  sub.s r8, r8, r6
000748  8b125218  sub.s r5, r4, r5
00074c  0b149440  min.s r8, r8, r9
000750  0b128238  mod.s r4, r4, r8
000754  8b928230  div.s r5, r5, r8
000758  0b124310  add.s r4, r6, r4
00075c  1bb37200  slli r6, r5, 7
000760  e7016ff6  storeli.w r6, -1256(r30)
000764  b3820228  zext_int2long r[6:7], r5
000768  9b336200  slli r7, r4, 6
00076c  33080228  zext_int2long r[17:18], r4
000770  1f621000  addli r4, zero, 14
000774  97b25203  sll.d r[6:7], r[6:7], r21
000778  67407ff6  storeli.w r7, -1276(r30)
00077c  73340fb1  store.d r[17:18], -1272(r30)
000780  17b42203  sll.d r[9:10], r[6:7], r18
000784  6b538f00  load.d r[7:8], 8(r30)
000788  17324802  sll.d r[5:6], r[17:18], r4
00078c  9f580000  addli r17, zero, 5
000790  73388fb0  store.d r[9:10], -1264(r30)
000794  0b238310  add.ul r[7:8], r[7:8], r[9:10]
000798  1f140000  addli r8, zero, 1
00079c  73386fb2  store.d r[7:8], -1232(r30)
0007a0  6b530f00  load.d r[7:8], 0(r30)
0007a4  0b234310  add.ul r[7:8], r[7:8], r[5:6]
0007a8  5b030000  j 24
0007ac  9b001400  andi r1, r8, 1
0007b0  37f80000  beq r1, zero, 540
0007b4  1f1a0a00  addli r20, r20, 1
0007b8  9f100000  addli r1, zero, 1
0007bc  1f040000  addli r8, zero, 0
0007c0  0b127639  mod.s r4, r12, r23
0007c4  8b929639  mod.s r5, r13, r25
0007c8  9f960600  addli r13, r13, 1
0007cc  1f160600  addli r12, r12, 1
0007d0  1b32d200  slli r4, r4, 13
0007d4  9bb4d200  slli r9, r5, 13
0007d8  0b188211  add.s r16, r4, r24
0007dc  37112101  beq r2, r18, 68
0007e0  33820028  zext_int2long r[5:6], r1
0007e4  bb043100  bneq r2, r3, 288
0007e8  17325203  sll.d r[5:6], r[5:6], r21
0007ec  9f300000  addli r1, zero, 3
0007f0  7d900000  xwait r1, 0
0007f4  1d800900  lock zero, r19
0007f8  0b224310  add.ul r[5:6], r[7:8], r[5:6]
0007fc  9f000002  addli r1, zero, 256
000800  15000000  dma_cfg zero, zero, zero, 0
000804  15800204  dma_cfg zero, r5, zero, 2
000808  15086207  dma_cfg r16, r4, r22, 3
00080c  158be008  dma_cfg r22, r1, r14, 4
000810  35000000  dma_run zero
000814  1d900900  unlock r19
000818  7d000900  xsignal r18, 0
00081c  db060000  j 52
000820  7d100900  xwait r18, 0
000824  7d900800  xwait r17, 0
000828  1d000000  lock zero, zero
00082c  9f300000  addli r1, zero, 3
000830  01090000  ds_cfg r18, zero, 0
000834  010d0002  ds_cfg r26, zero, 1
000838  010d001c  ds_cfg r26, zero, 14
00083c  0107001a  ds_cfg r14, zero, 13
000840  a114a803  shuffle_batch r9, r16, r26, 1
000844  1d100000  unlock zero
000848  7d800000  xsignal r1, 0
00084c  7d800900  xsignal r19, 0
000850  8b90c539  mod.s r1, r11, r28
000854  9f950500  addli r11, r11, 1
000858  1f150500  addli r10, r10, 1
00085c  9bb0e000  slli r1, r1, 14
000860  3b3d31ff  bneq r2, r19, -180
000864  1f021000  addli r4, zero, 8
000868  7d900900  xwait r19, 0
00086c  1f180000  addli r16, zero, 1
000870  9f020000  addli r5, zero, 0
000874  7d100200  xwait r4, 0
000878  1f120000  addli r4, zero, 1
00087c  b7700a00  beq r20, zero, 60
000880  9bbdd200  slli r27, r5, 13
000884  9bb28200  slli r5, r5, 8
000888  1d000800  lock zero, r16
00088c  0907ed00  mm_cfg r14, r26, r14, 0
000890  979d1d00  or r27, r27, r1
000894  9792f200  or r5, r5, r15
000898  09890905  mm_cfg r18, r19, r16, 2
00089c  a992b411  mm_acc r5, r9, r27, 8
0008a0  9b0d1200  andi r27, r4, 1
0008a4  9f120000  addli r5, zero, 1
0008a8  1f020000  addli r4, zero, 0
0008ac  1d100800  unlock r16
0008b0  3bcf0dfe  bneq r27, zero, -48
0008b4  5b070000  j 56
0008b8  9bbdd200  slli r27, r5, 13
0008bc  9bb28200  slli r5, r5, 8
0008c0  1d000800  lock zero, r16
0008c4  0907ed00  mm_cfg r14, r26, r14, 0
0008c8  979d1d00  or r27, r27, r1
0008cc  9792f200  or r5, r5, r15
0008d0  09890905  mm_cfg r18, r19, r16, 2
0008d4  a982b411  mm r5, r9, r27, 8
0008d8  9b0d1200  andi r27, r4, 1
0008dc  9f120000  addli r5, zero, 1
0008e0  1f020000  addli r4, zero, 0
0008e4  1d100800  unlock r16
0008e8  3bcf0dfe  bneq r27, zero, -48
0008ec  9b001400  andi r1, r8, 1
0008f0  1f121000  addli r4, zero, 9
0008f4  7d800800  xsignal r17, 0
0008f8  7d000200  xsignal r4, 0
0008fc  bbea00fe  bneq r1, zero, -328
000900  db180000  j 196
000904  9f407000  addli r1, zero, 60
000908  0b98c539  mod.s r16, r11, r28
00090c  9f950500  addli r11, r11, 1
000910  8b101538  mod.s r1, r10, r1
000914  1f150500  addli r10, r10, 1
000918  9bbde000  slli r27, r1, 14
00091c  9b30e800  slli r1, r16, 14
000920  2b680800  lui r16, 134
000924  0b980d11  add.s r16, r27, r16
000928  37715101  beq r2, r21, 92
00092c  9f1d0000  addli r27, zero, 1
000930  bb4cb1ff  bneq r2, r27, -208
000934  9f102000  addli r1, zero, 17
000938  7d900a00  xwait r21, 0
00093c  eb5a0fb3  load.d r[22:23], -1232(r30)
000940  1d800900  lock zero, r19
000944  15000000  dma_cfg zero, zero, zero, 0
000948  17321202  sll.d r[5:6], r[5:6], r1
00094c  9f000004  addli r1, zero, 512
000950  0ba24a10  add.ul r[5:6], r[22:23], r[5:6]
000954  1f0b0001  addli r22, zero, 128
000958  9f7a0000  addli r21, zero, 7
00095c  15800204  dma_cfg zero, r5, zero, 2
000960  15081206  dma_cfg r16, r4, r1, 3
000964  1f020020  addli r4, zero, 4096
000968  9500a209  dma_cfg r1, r4, r26, 4
00096c  35000000  dma_run zero
000970  1d900900  unlock r19
000974  7d800100  xsignal r3, 0
000978  9b001400  andi r1, r8, 1
00097c  bbe800fe  bneq r1, zero, -456
000980  5b080000  j 64
000984  1f121000  addli r4, zero, 9
000988  7d900100  xwait r3, 0
00098c  7d100200  xwait r4, 0
000990  1d000000  lock zero, zero
000994  01090000  ds_cfg r18, zero, 0
000998  010b0002  ds_cfg r22, zero, 1
00099c  010d001c  ds_cfg r26, zero, 14
0009a0  010b001a  ds_cfg r22, zero, 13
0009a4  c100a805  shuffle_coa r1, r16, r26, 2
0009a8  9f001000  addli r1, zero, 8
0009ac  1d100000  unlock zero
0009b0  7d800a00  xsignal r21, 0
0009b4  7d800000  xsignal r1, 0
0009b8  9b001400  andi r1, r8, 1
0009bc  bbe700fe  bneq r1, zero, -520
0009c0  3b303101  bneq r2, r19, 12
0009c4  9f201000  addli r1, zero, 10
0009c8  7d800000  xsignal r1, 0
0009cc  e3003ff6  loadli.w r1,  -1256(r30)
0009d0  33040b28  zext_int2long r[9:10], r22
0009d4  33820028  zext_int2long r[5:6], r1
0009d8  9f000007  addli r1, zero, 896
0009dc  33830028  zext_int2long r[7:8], r1
0009e0  e3405ff6  loadli.w r1,  -1236(r30)
0009e4  0b236240  min.ul r[7:8], r[5:6], r[7:8]
0009e8  8b902039  mod.s r1, r1, r18
0009ec  27030301  addli.d r[7:8], r[7:8], 128
0009f0  0b234348  max.ul r[7:8], r[7:8], r[5:6]
0009f4  0b324318  sub.sl r[5:6], r[7:8], r[5:6]
0009f8  2b631700  lui r6, 374
0009fc  9bb09000  slli r1, r1, 9
000a00  0b228240  min.ul r[5:6], r[5:6], r[9:10]
000a04  0b936010  add.s r6, r1, r6
000a08  b77131fe  beq r2, r3, -900
000a0c  630a5ff6  loadli.w r20,  -1240(r30)
000a10  ab631700  lui r7, 374
000a14  2b840000  lui r8, 8
000a18  9b930340  ori r7, r7, 1024
000a1c  8b102a39  mod.s r1, r20, r18
000a20  9bb0f000  slli r1, r1, 15
000a24  8b907010  add.s r1, r1, r7
000a28  bb611101  bneq r2, r17, 120
000a2c  9f221000  addli r5, zero, 10
000a30  ab03803f  lui r7, 260096
000a34  1f020000  addli r4, zero, 0
000a38  7d900200  xwait r5, 0
000a3c  9f421000  addli r5, zero, 12
000a40  7d900200  xwait r5, 0
000a44  9f721000  addli r5, zero, 15
000a48  7d900200  xwait r5, 0
000a4c  9f120000  addli r5, zero, 1
000a50  1d000900  lock zero, r18
000a54  8d020014  ew_cfg r5, zero, zero, 10
000a58  0d000002  ew_cfg zero, zero, zero, 1
000a5c  8d930300  ewcoeff_cfg r7, r7, zero, 0
000a60  9f73f000  addli r7, zero, 127
000a64  0d800304  ew_cfg zero, r7, zero, 2
000a68  8d020006  ew_cfg r5, zero, zero, 3
000a6c  8b924010  add.s r5, r1, r4
000a70  8b934710  add.s r7, r15, r4
000a74  1f020204  addli r4, r4, 512
000a78  ad826300  dsmadd r5, r7, r6, 0
000a7c  bb4f82fe  bneq r4, r8, -16
000a80  9f301000  addli r1, zero, 11
000a84  0d000014  ew_cfg zero, zero, zero, 10
000a88  1d100900  unlock r18
000a8c  7d800000  xsignal r1, 0
000a90  9f501000  addli r1, zero, 13
000a94  7d800000  xsignal r1, 0
000a98  9f601000  addli r1, zero, 14
000a9c  db130000  j 156
000aa0  bb3001fe  bneq r2, zero, -980
000aa4  63430ff6  loadli.w r6,  -1276(r30)
000aa8  33040028  zext_int2long r[9:10], zero
000aac  9f272000  addli r15, zero, 18
000ab0  1b322200  slli r4, r4, 2
000ab4  33130328  sext_int2long r[7:8], r6
000ab8  0b348340  min.sl r[9:10], r[7:8], r[9:10]
000abc  27048400  addli.d r[9:10], r[9:10], 64
000ac0  73388fb2  store.d r[9:10], -1232(r30)
000ac4  6b548fb0  load.d r[9:10], -1272(r30)
000ac8  9737f402  sll.d r[16:17], r[9:10], r15
000acc  6b540fb3  load.d r[9:10], -1232(r30)
000ad0  0b346448  max.sl r[9:10], r[9:10], r[7:8]
000ad4  73388fb2  store.d r[9:10], -1232(r30)
000ad8  6b548f01  load.d r[9:10], 24(r30)
000adc  8b27f410  add.ul r[16:17], r[9:10], r[16:17]
000ae0  6b540fb3  load.d r[9:10], -1232(r30)
000ae4  0b336418  sub.sl r[7:8], r[9:10], r[7:8]
000ae8  33040728  zext_int2long r[9:10], r14
000aec  73386fb2  store.d r[7:8], -1232(r30)
000af0  6b530fb1  load.d r[7:8], -1264(r30)
000af4  8ba76710  add.ul r[16:17], r[16:17], r[7:8]
000af8  6b530fb3  load.d r[7:8], -1232(r30)
000afc  0b338340  min.sl r[7:8], r[7:8], r[9:10]
000b00  1f641000  addli r8, zero, 14
000b04  7d100400  xwait r8, 0
000b08  1d800800  lock zero, r17
000b0c  1f140000  addli r8, zero, 1
000b10  15000000  dma_cfg zero, zero, zero, 0
000b14  15000402  dma_cfg zero, r8, zero, 1
000b18  15080004  dma_cfg r16, zero, zero, 2
000b1c  95874006  dma_cfg r15, r1, r4, 3
000b20  9f000004  addli r1, zero, 512
000b24  1f020020  addli r4, zero, 4096
000b28  15826008  dma_cfg r4, r1, r6, 4
000b2c  9f701000  addli r1, zero, 15
000b30  35000000  dma_run zero
000b34  1d900800  unlock r17
000b38  7d800000  xsignal r1, 0
000b3c  5b72ffff  j -1136
000b40  7d000000  xsignal zero, 0
000b44  bb600100  bneq r2, zero, 56
000b48  9f200000  addli r1, zero, 2
000b4c  7d100000  xwait zero, 0
000b50  7d100000  xwait zero, 0
000b54  7d100000  xwait zero, 0
000b58  7d100000  xwait zero, 0
000b5c  7d100000  xwait zero, 0
000b60  7d100000  xwait zero, 0
000b64  7d100000  xwait zero, 0
000b68  7d100000  xwait zero, 0
000b6c  1d800000  lock zero, r1
000b70  0d000020  ew_cfg zero, zero, zero, 16
000b74  1d900000  unlock r1
000b78  7d400000  xsignal_mode_cfg zero
000b7c  9f8e1e0a  addli sp, sp, 1288
000b80  00a00300  mfence { lm, sm, gm }
000b84  00100000  exit
000b88  00100000  exit
000b8c  00100000  exit
000b90  00100000  exit
000b94  00100000  exit
000b98  00100000  exit
000b9c  00100000  exit
000ba0  00100000  exit
000ba4  00100000  exit
000ba8  00100000  exit
000bac  00100000  exit
000bb0  00100000  exit
000bb4  00100000  exit
000bb8  00100000  exit
000bbc  00100000  exit
000bc0  00100000  exit
000bc4  00100000  exit
000bc8  00100000  exit
000bcc  00100000  exit
000bd0  00100000  exit
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
