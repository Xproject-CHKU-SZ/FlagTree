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
0000b4  9f8e6ef5  addli sp, sp, -1360
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8f2e0a  addli r30, sp, 1296
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600100  beq r2, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b9e0000  j 1264
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
000118  9f310000  addli r3, zero, 3
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
00029c  9f101000  addli r1, zero, 9
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
000384  9f710000  addli r3, zero, 7
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
0004c8  9f501000  addli r1, zero, 13
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
0005a0  7d800100  xsignal r3, 0
0005a4  7d800100  xsignal r3, 0
0005a8  7d800100  xsignal r3, 0
0005ac  7d800100  xsignal r3, 0
0005b0  9f711000  addli r3, zero, 15
0005b4  7d800000  xsignal r1, 0
0005b8  7d800000  xsignal r1, 0
0005bc  7d800000  xsignal r1, 0
0005c0  7d800100  xsignal r3, 0
0005c4  7d800100  xsignal r3, 0
0005c8  7d800100  xsignal r3, 0
0005cc  e3004f00  loadli.w r1,  32(r30)
0005d0  e3414f00  loadli.w r3,  36(r30)
0005d4  80d20002  load_param_i r5, 1
0005d8  63025f00  loadli.w r4,  40(r30)
0005dc  670f0ffe  storeli.w zero, -16(r30)
0005e0  670e0ffe  storeli.w zero, -32(r30)
0005e4  e70f0ffc  storeli.w zero, -264(r30)
0005e8  674b0ffa  storeli.w zero, -588(r30)
0005ec  e74c0ff8  storeli.w zero, -820(r30)
0005f0  e7040ff6  storeli.w zero, -1208(r30)
0005f4  8b901120  mul.s r1, r3, r1
0005f8  9f810200  addli r3, r5, 0
0005fc  8b914050  fmac.s r3, r1, r4
000600  0b924020  mul.s r4, r1, r4
000604  9ff1f1ff  addli r3, r3, -1
000608  8b915130  div.s r3, r3, r5
00060c  80520002  load_param_i r5, 0
000610  8b905120  mul.s r1, r3, r5
000614  8b915150  fmac.s r3, r3, r5
000618  8b914140  min.s r3, r3, r4
00061c  4bb61102  ble.s r3, r1, 1420
000620  b3910128  sext_int2long r[4:5], r3
000624  e304efff  loadli.w r9,  -16(r30)
000628  e308cfff  loadli.w r17,  -32(r30)
00062c  6305fffd  loadli.w r10,  -264(r30)
000630  e3456ffb  loadli.w r11,  -588(r30)
000634  63469ff9  loadli.w r12,  -820(r30)
000638  e3069ff6  loadli.w r13,  -1208(r30)
00063c  b3920028  sext_int2long r[6:7], r1
000640  1f078000  addli r14, zero, 64
000644  9f3b0000  addli r23, zero, 3
000648  1f490000  addli r18, zero, 4
00064c  1f2a0000  addli r20, zero, 2
000650  1f0dc000  addli r26, zero, 96
000654  9f1c7000  addli r25, zero, 57
000658  9f500000  addli r1, zero, 5
00065c  1f0e4000  addli r28, zero, 32
000660  9f0da000  addli r27, zero, 80
000664  1f0c0001  addli r24, zero, 128
000668  9f630000  addli r7, zero, 6
00066c  67430ff6  storeli.w zero, -1228(r30)
000670  733c3fae  store.d r[4:5], -1288(r30)
000674  1f72f00f  addli r4, zero, 2047
000678  ab81ffff  lui r3, 1048568
00067c  73383fae  store.d r[4:5], -1296(r30)
000680  db0d0000  j 108
000684  eb510f01  load.d r[4:5], 16(r30)
000688  6b540fb1  load.d r[9:10], -1264(r30)
00068c  9bb22200  slli r5, r5, 2
000690  8ba18110  add.ul r[4:5], r[4:5], r[9:10]
000694  1f541000  addli r8, zero, 13
000698  7d100400  xwait r8, 0
00069c  1d000900  lock zero, r18
0006a0  15000000  dma_cfg zero, zero, zero, 0
0006a4  15000204  dma_cfg zero, r4, zero, 2
0006a8  95835106  dma_cfg r7, r3, r5, 3
0006ac  9f110000  addli r3, zero, 1
0006b0  1f020004  addli r4, zero, 512
0006b4  15023208  dma_cfg r4, r4, r3, 4
0006b8  9f411000  addli r3, zero, 12
0006bc  35000000  dma_run zero
0006c0  1d100900  unlock r18
0006c4  7d800100  xsignal r3, 0
0006c8  e3046ff6  loadli.w r9,  -1232(r30)
0006cc  eb520fb2  load.d r[6:7], -1248(r30)
0006d0  eb518faf  load.d r[4:5], -1288(r30)
0006d4  9f980800  addli r17, r17, 1
0006d8  9f940400  addli r9, r9, 1
0006dc  9f630000  addli r7, zero, 6
0006e0  a7920200  addli.d r[6:7], r[6:7], 1
0006e4  93b13204  setlt.sl r3, r[6:7], r[4:5]
0006e8  37830102  beq r3, zero, 1216
0006ec  e7421ff7  storeli.w r17, -1236(r30)
0006f0  67039ff6  storeli.w r9, -1232(r30)
0006f4  3b302101  bneq r2, r18, 12
0006f8  9f311000  addli r3, zero, 11
0006fc  7d900100  xwait r3, 0
000700  e3015f00  loadli.w r3,  40(r30)
000704  63424f00  loadli.w r4,  36(r30)
000708  73305fb2  store.d r[6:7], -1248(r30)
00070c  8b913230  div.s r3, r5, r3
000710  9f021000  addli r5, zero, 8
000714  8b944130  div.s r9, r3, r4
000718  8b97e430  div.s r15, r9, r14
00071c  9bb13700  slli r3, r15, 3
000720  0b923218  sub.s r4, r5, r3
000724  8b195240  min.s r19, r4, r5
000728  9f421000  addli r5, zero, 12
00072c  0b923439  mod.s r4, r9, r19
000730  0b924110  add.s r4, r3, r4
000734  9f710000  addli r3, zero, 7
000738  93814104  setlt.u r3, r3, r4
00073c  33080228  zext_int2long r[17:18], r4
000740  97325802  sll.d r[6:7], r[17:18], r5
000744  73340fb1  store.d r[17:18], -1272(r30)
000748  3bc00100  bneq r3, zero, 16
00074c  33080028  zext_int2long r[17:18], zero
000750  73300fb5  store.d r[17:18], -1216(r30)
000754  db020000  j 20
000758  eb530faf  load.d r[8:9], -1296(r30)
00075c  97837202  and.d r[8:9], r[6:7], r[8:9]
000760  73307fb4  store.d r[8:9], -1216(r30)
000764  9f630000  addli r7, zero, 6
000768  9bb76700  slli r15, r15, 6
00076c  63446ff6  loadli.w r8,  -1228(r30)
000770  1b326200  slli r4, r4, 6
000774  9f010000  addli r3, zero, 0
000778  8b94f418  sub.s r9, r9, r15
00077c  67404ff6  storeli.w r4, -1276(r30)
000780  1f720000  addli r4, zero, 7
000784  8b177439  mod.s r15, r8, r23
000788  1f140400  addli r8, r8, 1
00078c  8b943431  div.s r9, r9, r19
000790  9f090000  addli r19, zero, 0
000794  67438ff6  storeli.w r8, -1228(r30)
000798  33880428  zext_int2long r[17:18], r9
00079c  1bb47400  slli r8, r9, 7
0007a0  17384802  sll.d r[17:18], r[17:18], r4
0007a4  1bb2f700  slli r4, r15, 15
0007a8  e7418ff6  storeli.w r8, -1252(r30)
0007ac  973a4803  sll.d r[22:23], r[17:18], r20
0007b0  eb578f00  load.d r[16:17], 8(r30)
0007b4  73385fb1  store.d r[22:23], -1264(r30)
0007b8  0ba45711  add.ul r[9:10], r[16:17], r[22:23]
0007bc  9f1a0000  addli r21, zero, 1
0007c0  733c8fb2  store.d r[9:10], -1224(r30)
0007c4  5b030000  j 24
0007c8  9b811a00  andi r3, r21, 1
0007cc  b7b90100  beq r3, zero, 620
0007d0  9f990900  addli r19, r19, 1
0007d4  9f110000  addli r3, zero, 1
0007d8  9f0a0000  addli r21, zero, 0
0007dc  8b149639  mod.s r9, r12, r25
0007e0  8b97a639  mod.s r15, r13, r26
0007e4  9f960600  addli r13, r13, 1
0007e8  1f160600  addli r12, r12, 1
0007ec  1bb8d400  slli r16, r9, 13
0007f0  9bb4d700  slli r9, r15, 13
0007f4  ab870100  lui r15, 24
0007f8  8b17f810  add.s r15, r16, r15
0007fc  37324101  beq r2, r20, 140
000800  33880128  zext_int2long r[17:18], r3
000804  bb157100  bneq r2, r7, 356
000808  17381802  sll.d r[17:18], r[17:18], r1
00080c  eb530fb4  load.d r[8:9], -1216(r30)
000810  330b0728  zext_int2long r[23:24], r14
000814  9f310000  addli r3, zero, 3
000818  1f0c0001  addli r24, zero, 128
00081c  17185802  or.d r[17:18], r[17:18], r[6:7]
000820  7d900100  xwait r3, 0
000824  1d000900  lock zero, r18
000828  15000000  dma_cfg zero, zero, zero, 0
00082c  0b3d7818  sub.sl r[27:28], r[17:18], r[8:9]
000830  eb530f00  load.d r[8:9], 0(r30)
000834  17384803  sll.d r[17:18], r[17:18], r20
000838  0f1b6d61  div.sl r[23:24], r[27:28], r[23:24]
00083c  1f0d8003  addli r26, zero, 448
000840  0ba80311  add.ul r[17:18], r[8:9], r[17:18]
000844  1f040002  addli r8, zero, 256
000848  9f630000  addli r7, zero, 6
00084c  330d0d28  zext_int2long r[27:28], r26
000850  15800804  dma_cfg zero, r17, zero, 2
000854  0b3dab41  min.sl r[27:28], r[23:24], r[27:28]
000858  0b3b6d19  sub.sl r[23:24], r[27:28], r[23:24]
00085c  9f0da000  addli r27, zero, 80
000860  1f0dc000  addli r26, zero, 96
000864  9f018b00  addli r3, r22, 64
000868  1f0b0001  addli r22, zero, 128
00086c  9f3b0000  addli r23, zero, 3
000870  95076807  dma_cfg r15, r16, r22, 3
000874  150b3408  dma_cfg r22, r8, r3, 4
000878  35000000  dma_run zero
00087c  1d100900  unlock r18
000880  7d000a00  xsignal r20, 0
000884  5b060000  j 48
000888  7d100a00  xwait r20, 0
00088c  7d900000  xwait r1, 0
000890  1d000000  lock zero, zero
000894  010a0000  ds_cfg r20, zero, 0
000898  010e0002  ds_cfg r28, zero, 1
00089c  010e001c  ds_cfg r28, zero, 14
0008a0  0107001a  ds_cfg r14, zero, 13
0008a4  a194c703  shuffle_batch r9, r15, r28, 1
0008a8  1d100000  unlock zero
0008ac  7d800b00  xsignal r23, 0
0008b0  7d000900  xsignal r18, 0
0008b4  8b91b539  mod.s r3, r11, r27
0008b8  9f950500  addli r11, r11, 1
0008bc  1f150500  addli r10, r10, 1
0008c0  9bb1e100  slli r3, r3, 14
0008c4  3b1c21ff  bneq r2, r18, -252
0008c8  9f071000  addli r15, zero, 8
0008cc  7d100900  xwait r18, 0
0008d0  1f180000  addli r16, zero, 1
0008d4  9f080000  addli r17, zero, 0
0008d8  7d900700  xwait r15, 0
0008dc  9f170000  addli r15, zero, 1
0008e0  b7f00900  beq r19, zero, 60
0008e4  1bbbd800  slli r22, r17, 13
0008e8  9bb88800  slli r17, r17, 8
0008ec  1d800700  lock zero, r15
0008f0  0907ee00  mm_cfg r14, r28, r14, 0
0008f4  171b3b00  or r22, r22, r3
0008f8  97984800  or r17, r17, r4
0008fc  090af904  mm_cfg r20, r18, r15, 2
000900  a9986411  mm_acc r17, r9, r22, 8
000904  1b0b1800  andi r22, r16, 1
000908  9f180000  addli r17, zero, 1
00090c  1f080000  addli r16, zero, 0
000910  1d900700  unlock r15
000914  3b4f0bfe  bneq r22, zero, -48
000918  5b070000  j 56
00091c  1bbbd800  slli r22, r17, 13
000920  9bb88800  slli r17, r17, 8
000924  1d800700  lock zero, r15
000928  0907ee00  mm_cfg r14, r28, r14, 0
00092c  171b3b00  or r22, r22, r3
000930  97984800  or r17, r17, r4
000934  090af904  mm_cfg r20, r18, r15, 2
000938  a9886411  mm r17, r9, r22, 8
00093c  1b0b1800  andi r22, r16, 1
000940  9f180000  addli r17, zero, 1
000944  1f080000  addli r16, zero, 0
000948  1d900700  unlock r15
00094c  3b4f0bfe  bneq r22, zero, -48
000950  9b811a00  andi r3, r21, 1
000954  9f141000  addli r9, zero, 9
000958  7d800000  xsignal r1, 0
00095c  7d800400  xsignal r9, 0
000960  bbc901fe  bneq r3, zero, -400
000964  db190000  j 204
000968  8b119539  mod.s r3, r10, r25
00096c  8b97b539  mod.s r15, r11, r27
000970  2ba40800  lui r8, 138
000974  9f950500  addli r11, r11, 1
000978  1f150500  addli r10, r10, 1
00097c  1bbbe100  slli r22, r3, 14
000980  9bb1e700  slli r3, r15, 14
000984  8b178b10  add.s r15, r22, r8
000988  1f7b0000  addli r22, zero, 7
00098c  37616101  beq r2, r22, 88
000990  1f140000  addli r8, zero, 1
000994  bb4c81fe  bneq r2, r8, -208
000998  9f112000  addli r3, zero, 17
00099c  17383802  sll.d r[17:18], r[17:18], r3
0009a0  9f710000  addli r3, zero, 7
0009a4  7d900100  xwait r3, 0
0009a8  6b548fb3  load.d r[9:10], -1224(r30)
0009ac  1d000900  lock zero, r18
0009b0  9f010004  addli r3, zero, 512
0009b4  15000000  dma_cfg zero, zero, zero, 0
0009b8  0b280411  add.ul r[17:18], r[9:10], r[17:18]
0009bc  1f040020  addli r8, zero, 4096
0009c0  15800804  dma_cfg zero, r17, zero, 2
0009c4  95073806  dma_cfg r15, r16, r3, 3
0009c8  9501c409  dma_cfg r3, r8, r28, 4
0009cc  35000000  dma_run zero
0009d0  1d100900  unlock r18
0009d4  7d800300  xsignal r7, 0
0009d8  9b811a00  andi r3, r21, 1
0009dc  bbd701fe  bneq r3, zero, -524
0009e0  db090000  j 76
0009e4  9f141000  addli r9, zero, 9
0009e8  7d900300  xwait r7, 0
0009ec  1f0c0001  addli r24, zero, 128
0009f0  7d900400  xwait r9, 0
0009f4  1d000000  lock zero, zero
0009f8  9f040001  addli r9, zero, 128
0009fc  010a0000  ds_cfg r20, zero, 0
000a00  81040002  ds_cfg r9, zero, 1
000a04  010e001c  ds_cfg r28, zero, 14
000a08  8104001a  ds_cfg r9, zero, 13
000a0c  c181c705  shuffle_coa r3, r15, r28, 2
000a10  9f710000  addli r3, zero, 7
000a14  1d100000  unlock zero
000a18  7d800100  xsignal r3, 0
000a1c  9f011000  addli r3, zero, 8
000a20  7d800100  xsignal r3, 0
000a24  9b811a00  andi r3, r21, 1
000a28  bba601fe  bneq r3, zero, -600
000a2c  3b302101  bneq r2, r18, 12
000a30  9f211000  addli r3, zero, 10
000a34  7d800100  xsignal r3, 0
000a38  e3413ff6  loadli.w r3,  -1252(r30)
000a3c  e3485ff6  loadli.w r17,  -1236(r30)
000a40  b3070c28  zext_int2long r[16:17], r24
000a44  9f640000  addli r9, zero, 6
000a48  b3820128  zext_int2long r[6:7], r3
000a4c  9f010007  addli r3, zero, 896
000a50  b3830128  zext_int2long r[8:9], r3
000a54  8b917839  mod.s r3, r17, r23
000a58  8ba37240  min.ul r[8:9], r[6:7], r[8:9]
000a5c  a7830301  addli.d r[8:9], r[8:9], 128
000a60  8ba35348  max.ul r[8:9], r[8:9], r[6:7]
000a64  9bb19100  slli r3, r3, 9
000a68  8bb25318  sub.sl r[6:7], r[8:9], r[6:7]
000a6c  2be41600  lui r8, 366
000a70  8ba2f240  min.ul r[6:7], r[6:7], r[16:17]
000a74  8b938110  add.s r7, r3, r8
000a78  373091fe  beq r2, r9, -1012
000a7c  e3046ff6  loadli.w r9,  -1232(r30)
000a80  1b140460  ori r8, r8, 1536
000a84  ab870000  lui r15, 8
000a88  8b917439  mod.s r3, r9, r23
000a8c  9bb1f100  slli r3, r3, 15
000a90  8b918110  add.s r3, r3, r8
000a94  bb611100  bneq r2, r1, 120
000a98  1f231000  addli r6, zero, 10
000a9c  2b04803f  lui r8, 260096
000aa0  9f020000  addli r5, zero, 0
000aa4  7d100300  xwait r6, 0
000aa8  1f431000  addli r6, zero, 12
000aac  7d100300  xwait r6, 0
000ab0  1f731000  addli r6, zero, 15
000ab4  7d100300  xwait r6, 0
000ab8  1f130000  addli r6, zero, 1
000abc  1d000a00  lock zero, r20
000ac0  0d030014  ew_cfg r6, zero, zero, 10
000ac4  0d000002  ew_cfg zero, zero, zero, 1
000ac8  0d140400  ewcoeff_cfg r8, r8, zero, 0
000acc  1f74f000  addli r8, zero, 127
000ad0  0d000404  ew_cfg zero, r8, zero, 2
000ad4  0d030006  ew_cfg r6, zero, zero, 3
000ad8  0b935110  add.s r6, r3, r5
000adc  0b145210  add.s r8, r4, r5
000ae0  9f820204  addli r5, r5, 512
000ae4  2d037400  dsmadd r6, r8, r7, 0
000ae8  bbcff2fe  bneq r5, r15, -16
000aec  9f311000  addli r3, zero, 11
000af0  0d000014  ew_cfg zero, zero, zero, 10
000af4  1d100a00  unlock r20
000af8  7d800100  xsignal r3, 0
000afc  9f511000  addli r3, zero, 13
000b00  7d800100  xsignal r3, 0
000b04  9f611000  addli r3, zero, 14
000b08  5b130000  j 152
000b0c  3b0f01fc  bneq r2, zero, -1088
000b10  63420ff6  loadli.w r4,  -1276(r30)
000b14  eb5a8fb0  load.d r[22:23], -1272(r30)
000b18  b3130228  sext_int2long r[8:9], r4
000b1c  1f028003  addli r4, zero, 448
000b20  b3070228  zext_int2long r[16:17], r4
000b24  1f222000  addli r4, zero, 18
000b28  8bb7f340  min.sl r[16:17], r[8:9], r[16:17]
000b2c  97ba4a02  sll.d r[22:23], r[22:23], r4
000b30  1f621000  addli r4, zero, 14
000b34  a7878700  addli.d r[16:17], r[16:17], 64
000b38  8bb77748  max.sl r[16:17], r[16:17], r[8:9]
000b3c  7330ffb4  store.d r[16:17], -1216(r30)
000b40  eb578f01  load.d r[16:17], 24(r30)
000b44  8baa5711  add.ul r[22:23], r[16:17], r[22:23]
000b48  eb570fb4  load.d r[16:17], -1216(r30)
000b4c  8bb37718  sub.sl r[8:9], r[16:17], r[8:9]
000b50  b3070728  zext_int2long r[16:17], r14
000b54  73307fb4  store.d r[8:9], -1216(r30)
000b58  eb530fb1  load.d r[8:9], -1264(r30)
000b5c  8baa7a10  add.ul r[22:23], r[22:23], r[8:9]
000b60  eb530fb4  load.d r[8:9], -1216(r30)
000b64  7d100200  xwait r4, 0
000b68  1d800000  lock zero, r1
000b6c  1f120000  addli r4, zero, 1
000b70  15000000  dma_cfg zero, zero, zero, 0
000b74  15000202  dma_cfg zero, r4, zero, 1
000b78  1bb22200  slli r4, r5, 2
000b7c  150b0004  dma_cfg r22, zero, zero, 2
000b80  8bb3f340  min.sl r[8:9], r[8:9], r[16:17]
000b84  958a4106  dma_cfg r21, r3, r4, 3
000b88  9f010004  addli r3, zero, 512
000b8c  1f020020  addli r4, zero, 4096
000b90  15827108  dma_cfg r4, r3, r7, 4
000b94  9f711000  addli r3, zero, 15
000b98  35000000  dma_run zero
000b9c  1d900000  unlock r1
000ba0  7d800100  xsignal r3, 0
000ba4  5b65ffff  j -1240
000ba8  7d000000  xsignal zero, 0
000bac  bb600100  bneq r2, zero, 56
000bb0  9f200000  addli r1, zero, 2
000bb4  7d100000  xwait zero, 0
000bb8  7d100000  xwait zero, 0
000bbc  7d100000  xwait zero, 0
000bc0  7d100000  xwait zero, 0
000bc4  7d100000  xwait zero, 0
000bc8  7d100000  xwait zero, 0
000bcc  7d100000  xwait zero, 0
000bd0  7d100000  xwait zero, 0
000bd4  1d800000  lock zero, r1
000bd8  0d000020  ew_cfg zero, zero, zero, 16
000bdc  1d900000  unlock r1
000be0  7d400000  xsignal_mode_cfg zero
000be4  9f8e2e0a  addli sp, sp, 1296
000be8  00a00300  mfence { lm, sm, gm }
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
000e18  00100000  exit
000e1c  00100000  exit
000e20  00100000  exit
000e24  00100000  exit
000e28  00100000  exit
000e2c  00100000  exit
