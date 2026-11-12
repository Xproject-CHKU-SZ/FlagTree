; SHA-256 2ed9741d916e668d1c615b3b8dc0f070739f6a8c917f260cb39a5b6026d7758f
; P800 SDNN · XTDK LLVM 19 · 889 / 889 words decoded
; bound names: triton_unk_fused_0
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
0000b4  9f8e5ef5  addli sp, sp, -1368
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8f3e0a  addli r30, sp, 1304
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600100  beq r2, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5ba00000  j 1280
0000e0  9f210000  addli r3, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  2bf2ffff  lui r4, 1048575
0000ec  1d800100  lock zero, r3
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b10f2ff  ori r1, r4, 4095
0000f8  1d900100  unlock r3
0000fc  9f411000  addli r3, zero, 12
000100  80a10004  csr_set csr3, r1
000104  9f500000  addli r1, zero, 5
000108  00d00100  sync_group
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
000384  7d800100  xsignal r3, 0
000388  7d800100  xsignal r3, 0
00038c  7d800100  xsignal r3, 0
000390  7d800100  xsignal r3, 0
000394  9f710000  addli r3, zero, 7
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
0004d8  9f601000  addli r1, zero, 14
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
0005c0  7d800100  xsignal r3, 0
0005c4  7d800100  xsignal r3, 0
0005c8  7d800100  xsignal r3, 0
0005cc  7d800100  xsignal r3, 0
0005d0  7d800000  xsignal r1, 0
0005d4  7d800000  xsignal r1, 0
0005d8  7d800000  xsignal r1, 0
0005dc  e3004f00  loadli.w r1,  32(r30)
0005e0  e3414f00  loadli.w r3,  36(r30)
0005e4  80d20002  load_param_i r5, 1
0005e8  63025f00  loadli.w r4,  40(r30)
0005ec  670f0ffe  storeli.w zero, -16(r30)
0005f0  e70f0ffc  storeli.w zero, -264(r30)
0005f4  674b0ffa  storeli.w zero, -588(r30)
0005f8  e74b0ff8  storeli.w zero, -836(r30)
0005fc  e7030ff6  storeli.w zero, -1224(r30)
000600  8b901120  mul.s r1, r3, r1
000604  9f810200  addli r3, r5, 0
000608  8b914050  fmac.s r3, r1, r4
00060c  0b924020  mul.s r4, r1, r4
000610  9ff1f1ff  addli r3, r3, -1
000614  8b915130  div.s r3, r3, r5
000618  80520002  load_param_i r5, 0
00061c  8b905120  mul.s r1, r3, r5
000620  8b915150  fmac.s r3, r3, r5
000624  8b914140  min.s r3, r3, r4
000628  cbd41102  ble.s r3, r1, 1332
00062c  b3910128  sext_int2long r[4:5], r3
000630  6308efff  loadli.w r16,  -16(r30)
000634  e304fffd  loadli.w r9,  -264(r30)
000638  63456ffb  loadli.w r10,  -588(r30)
00063c  e3457ff9  loadli.w r11,  -836(r30)
000640  63067ff6  loadli.w r12,  -1224(r30)
000644  33930028  sext_int2long r[7:8], r1
000648  9f068000  addli r13, zero, 64
00064c  9f480000  addli r17, zero, 4
000650  9f290000  addli r19, zero, 2
000654  9f5b7000  addli r23, zero, 61
000658  2b8e0100  lui r28, 24
00065c  1f0d4000  addli r26, zero, 32
000660  1f0b0001  addli r22, zero, 128
000664  9f1c0000  addli r25, zero, 1
000668  67420ff6  storeli.w zero, -1244(r30)
00066c  73383fae  store.d r[4:5], -1296(r30)
000670  1f72f00f  addli r4, zero, 2047
000674  ab81ffff  lui r3, 1048568
000678  73343fae  store.d r[4:5], -1304(r30)
00067c  9f510000  addli r3, zero, 5
000680  db0b0000  j 92
000684  eb530f01  load.d r[8:9], 16(r30)
000688  6b578fb0  load.d r[15:16], -1272(r30)
00068c  9f601000  addli r1, zero, 14
000690  1b322200  slli r4, r4, 2
000694  7d900000  xwait r1, 0
000698  1d800800  lock zero, r17
00069c  9f000004  addli r1, zero, 512
0006a0  8ba3e310  add.ul r[8:9], r[8:9], r[15:16]
0006a4  15000000  dma_cfg zero, zero, zero, 0
0006a8  15000404  dma_cfg zero, r8, zero, 2
0006ac  15834306  dma_cfg r6, r7, r4, 3
0006b0  95809009  dma_cfg r1, r1, r25, 4
0006b4  35000000  dma_run zero
0006b8  1d900800  unlock r17
0006bc  9f501000  addli r1, zero, 13
0006c0  7d800000  xsignal r1, 0
0006c4  6b538fb1  load.d r[7:8], -1256(r30)
0006c8  6b520faf  load.d r[5:6], -1296(r30)
0006cc  1f180800  addli r16, r16, 1
0006d0  27130300  addli.d r[7:8], r[7:8], 1
0006d4  13324304  setlt.sl r4, r[7:8], r[5:6]
0006d8  37120202  beq r4, zero, 1156
0006dc  3b301101  bneq r2, r17, 12
0006e0  9f401000  addli r1, zero, 12
0006e4  7d900000  xwait r1, 0
0006e8  63025f00  loadli.w r4,  40(r30)
0006ec  e3424f00  loadli.w r5,  36(r30)
0006f0  733c6fb0  store.d r[7:8], -1256(r30)
0006f4  9f401000  addli r1, zero, 12
0006f8  67020ff7  storeli.w r16, -1248(r30)
0006fc  0b124330  div.s r4, r6, r4
000700  1f031000  addli r6, zero, 8
000704  8b135230  div.s r7, r4, r5
000708  0b97d330  div.s r14, r7, r13
00070c  1b323700  slli r4, r14, 3
000710  8b124318  sub.s r5, r6, r4
000714  0b996240  min.s r18, r5, r6
000718  8b922339  mod.s r5, r7, r18
00071c  0b135210  add.s r6, r4, r5
000720  1f720000  addli r4, zero, 7
000724  13026204  setlt.u r4, r4, r6
000728  330a0328  zext_int2long r[21:22], r6
00072c  73304fb1  store.d r[21:22], -1280(r30)
000730  173a1a02  sll.d r[21:22], r[21:22], r1
000734  3b300200  bneq r4, zero, 12
000738  33020028  zext_int2long r[5:6], zero
00073c  db010000  j 12
000740  6b528fae  load.d r[5:6], -1304(r30)
000744  17024a02  and.d r[5:6], r[21:22], r[5:6]
000748  1b376700  slli r14, r14, 6
00074c  73384fb2  store.d r[5:6], -1232(r30)
000750  63424ff6  loadli.w r4,  -1244(r30)
000754  9f300000  addli r1, zero, 3
000758  1f040000  addli r8, zero, 0
00075c  8b93e318  sub.s r7, r7, r14
000760  0b171238  mod.s r14, r4, r1
000764  9b306300  slli r1, r6, 6
000768  1f730000  addli r6, zero, 7
00076c  1f120200  addli r4, r4, 1
000770  8b932331  div.s r7, r7, r18
000774  e74f1ff4  storeli.w r1, -1284(r30)
000778  67424ff6  storeli.w r4, -1244(r30)
00077c  1b39f700  slli r18, r14, 15
000780  1f170000  addli r14, zero, 1
000784  b3870328  zext_int2long r[16:17], r7
000788  9bb07300  slli r1, r7, 7
00078c  97b76702  sll.d r[16:17], r[16:17], r6
000790  6b538f00  load.d r[7:8], 8(r30)
000794  67411ff6  storeli.w r1, -1260(r30)
000798  17b23703  sll.d r[5:6], r[16:17], r19
00079c  73344fb0  store.d r[5:6], -1272(r30)
0007a0  0b224310  add.ul r[5:6], r[7:8], r[5:6]
0007a4  1f030000  addli r6, zero, 0
0007a8  73344fb2  store.d r[5:6], -1240(r30)
0007ac  db080000  j 68
0007b0  7d900900  xwait r19, 0
0007b4  7d900100  xwait r3, 0
0007b8  1d000000  lock zero, zero
0007bc  9f300000  addli r1, zero, 3
0007c0  81090000  ds_cfg r19, zero, 0
0007c4  010d0002  ds_cfg r26, zero, 1
0007c8  010d001c  ds_cfg r26, zero, 14
0007cc  8106001a  ds_cfg r13, zero, 13
0007d0  a193ad03  shuffle_batch r7, r27, r26, 1
0007d4  1d100000  unlock zero
0007d8  7d800000  xsignal r1, 0
0007dc  7d800800  xsignal r17, 0
0007e0  1f150500  addli r10, r10, 1
0007e4  9f940400  addli r9, r9, 1
0007e8  bb450700  bneq r14, zero, 368
0007ec  5b450000  j 552
0007f0  8b937539  mod.s r7, r11, r23
0007f4  9f00c000  addli r1, zero, 96
0007f8  9f950500  addli r11, r11, 1
0007fc  1b071700  andi r14, r14, 1
000800  8b171638  mod.s r15, r12, r1
000804  1f160600  addli r12, r12, 1
000808  1bb8d300  slli r16, r7, 13
00080c  9bb3d700  slli r7, r15, 13
000810  8b1dc811  add.s r27, r16, r28
000814  377e31ff  beq r2, r19, -100
000818  b3070428  zext_int2long r[16:17], r8
00081c  bb619101  bneq r2, r25, 120
000820  97b33702  sll.d r[8:9], r[16:17], r3
000824  6b520fb3  load.d r[5:6], -1232(r30)
000828  b3870628  zext_int2long r[16:17], r13
00082c  9f008003  addli r1, zero, 448
000830  1f0b0001  addli r22, zero, 128
000834  97934303  or.d r[8:9], r[8:9], r[21:22]
000838  0bbc4318  sub.sl r[25:26], r[8:9], r[5:6]
00083c  6b520f00  load.d r[5:6], 0(r30)
000840  97b33303  sll.d r[8:9], r[8:9], r19
000844  8f17fc60  div.sl r[16:17], r[25:26], r[16:17]
000848  338c0028  zext_int2long r[25:26], r1
00084c  9f300000  addli r1, zero, 3
000850  8b237210  add.ul r[8:9], r[5:6], r[8:9]
000854  1f020002  addli r4, zero, 256
000858  7d900000  xwait r1, 0
00085c  1d800800  lock zero, r17
000860  9f000001  addli r1, zero, 128
000864  15000000  dma_cfg zero, zero, zero, 0
000868  15000404  dma_cfg zero, r8, zero, 2
00086c  958d1306  dma_cfg r27, r7, r1, 3
000870  0bbc8741  min.sl r[25:26], r[16:17], r[25:26]
000874  8b37fc18  sub.sl r[16:17], r[25:26], r[16:17]
000878  9f1c0000  addli r25, zero, 1
00087c  9f878700  addli r15, r15, 64
000880  9500f208  dma_cfg r1, r4, r15, 4
000884  35000000  dma_run zero
000888  1d900800  unlock r17
00088c  7d800900  xsignal r19, 0
000890  5beaffff  j -176
000894  0b947439  mod.s r8, r9, r23
000898  9f00a000  addli r1, zero, 80
00089c  9f940400  addli r9, r9, 1
0008a0  0b1c1538  mod.s r24, r10, r1
0008a4  ab200900  lui r1, 146
0008a8  1f150500  addli r10, r10, 1
0008ac  9b3ce400  slli r25, r8, 14
0008b0  1b34ec00  slli r8, r24, 14
0008b4  8b9d1c10  add.s r27, r25, r1
0008b8  1f7c0000  addli r24, zero, 7
0008bc  37418101  beq r2, r24, 80
0008c0  9f620000  addli r5, zero, 6
0008c4  bb125100  bneq r2, r5, 164
0008c8  9f102000  addli r1, zero, 17
0008cc  1f020020  addli r4, zero, 4096
0008d0  97b31702  sll.d r[8:9], r[16:17], r1
0008d4  9f770000  addli r15, zero, 7
0008d8  9f000004  addli r1, zero, 512
0008dc  7d900700  xwait r15, 0
0008e0  eb578fb2  load.d r[16:17], -1240(r30)
0008e4  1d800800  lock zero, r17
0008e8  15000000  dma_cfg zero, zero, zero, 0
0008ec  8ba37710  add.ul r[8:9], r[16:17], r[8:9]
0008f0  15000404  dma_cfg zero, r8, zero, 2
0008f4  958d1306  dma_cfg r27, r7, r1, 3
0008f8  9500a209  dma_cfg r1, r4, r26, 4
0008fc  35000000  dma_run zero
000900  1d900800  unlock r17
000904  7d800200  xsignal r5, 0
000908  5b090000  j 72
00090c  9f600000  addli r1, zero, 6
000910  9f730000  addli r7, zero, 7
000914  1f0b0001  addli r22, zero, 128
000918  7d900000  xwait r1, 0
00091c  9f101000  addli r1, zero, 9
000920  7d900000  xwait r1, 0
000924  1d000000  lock zero, zero
000928  9f000001  addli r1, zero, 128
00092c  81090000  ds_cfg r19, zero, 0
000930  81000002  ds_cfg r1, zero, 1
000934  010d001c  ds_cfg r26, zero, 14
000938  8100001a  ds_cfg r1, zero, 13
00093c  4184ad05  shuffle_coa r8, r27, r26, 2
000940  1d100000  unlock zero
000944  7d800300  xsignal r7, 0
000948  9f031000  addli r7, zero, 8
00094c  7d800300  xsignal r7, 0
000950  9f1c0000  addli r25, zero, 1
000954  37030700  beq r14, zero, 192
000958  1f130300  addli r6, r6, 1
00095c  1f140000  addli r8, zero, 1
000960  1f070000  addli r14, zero, 0
000964  dbd1ffff  j -372
000968  9f1c0000  addli r25, zero, 1
00096c  bb021101  bneq r2, r17, 160
000970  9f071000  addli r15, zero, 8
000974  7d900800  xwait r17, 0
000978  9f1d0000  addli r27, zero, 1
00097c  1f080000  addli r16, zero, 0
000980  7d900700  xwait r15, 0
000984  9f170000  addli r15, zero, 1
000988  b7700300  beq r6, zero, 60
00098c  1b3cd800  slli r24, r16, 13
000990  1b388800  slli r16, r16, 8
000994  1d800d00  lock zero, r27
000998  8906dd00  mm_cfg r13, r26, r13, 0
00099c  171c8c00  or r24, r24, r8
0009a0  17182801  or r16, r16, r18
0009a4  8989b805  mm_cfg r19, r17, r27, 2
0009a8  29988311  mm_acc r16, r7, r24, 8
0009ac  1b8c1700  andi r24, r15, 1
0009b0  1f180000  addli r16, zero, 1
0009b4  9f070000  addli r15, zero, 0
0009b8  1d900d00  unlock r27
0009bc  3b4f0cfe  bneq r24, zero, -48
0009c0  5b070000  j 56
0009c4  1b3cd800  slli r24, r16, 13
0009c8  1b388800  slli r16, r16, 8
0009cc  1d800d00  lock zero, r27
0009d0  8906dd00  mm_cfg r13, r26, r13, 0
0009d4  171c8c00  or r24, r24, r8
0009d8  17182801  or r16, r16, r18
0009dc  8989b805  mm_cfg r19, r17, r27, 2
0009e0  29888311  mm r16, r7, r24, 8
0009e4  1b8c1700  andi r24, r15, 1
0009e8  1f180000  addli r16, zero, 1
0009ec  9f070000  addli r15, zero, 0
0009f0  1d900d00  unlock r27
0009f4  3b4f0cfe  bneq r24, zero, -48
0009f8  9f101000  addli r1, zero, 9
0009fc  7d800100  xsignal r3, 0
000a00  7d800000  xsignal r1, 0
000a04  3b5d07fe  bneq r14, zero, -172
000a08  5b020000  j 16
000a0c  3b3d07fe  bneq r14, zero, -180
000a10  5b020000  j 16
000a14  3b301101  bneq r2, r17, 12
000a18  9f201000  addli r1, zero, 10
000a1c  7d800000  xsignal r1, 0
000a20  e3402ff6  loadli.w r1,  -1260(r30)
000a24  63084ff6  loadli.w r16,  -1248(r30)
000a28  33070b28  zext_int2long r[15:16], r22
000a2c  33820028  zext_int2long r[5:6], r1
000a30  9f000007  addli r1, zero, 896
000a34  33830028  zext_int2long r[7:8], r1
000a38  9f300000  addli r1, zero, 3
000a3c  0b236240  min.ul r[7:8], r[5:6], r[7:8]
000a40  0b141838  mod.s r8, r16, r1
000a44  ab601800  lui r1, 390
000a48  27030301  addli.d r[7:8], r[7:8], 128
000a4c  0b234348  max.ul r[7:8], r[7:8], r[5:6]
000a50  0b324318  sub.sl r[5:6], r[7:8], r[5:6]
000a54  1b339400  slli r6, r8, 9
000a58  0b22e240  min.ul r[5:6], r[5:6], r[15:16]
000a5c  0b131310  add.s r6, r6, r1
000a60  b71091ff  beq r2, r25, -988
000a64  3b713100  bneq r2, r3, 92
000a68  9f201000  addli r1, zero, 10
000a6c  1f020000  addli r4, zero, 0
000a70  7d900000  xwait r1, 0
000a74  9f501000  addli r1, zero, 13
000a78  7d900000  xwait r1, 0
000a7c  1d800900  lock zero, r19
000a80  ab00803f  lui r1, 260096
000a84  0d000002  ew_cfg zero, zero, zero, 1
000a88  8d900000  ewcoeff_cfg r1, r1, zero, 0
000a8c  9f70f000  addli r1, zero, 127
000a90  0d800004  ew_cfg zero, r1, zero, 2
000a94  ab800000  lui r1, 8
000a98  8d0c0006  ew_cfg r25, zero, zero, 3
000a9c  8b124910  add.s r5, r18, r4
000aa0  1f020204  addli r4, r4, 512
000aa4  ad826200  dsmadd r5, r5, r6, 0
000aa8  bb5f12fe  bneq r4, r1, -12
000aac  9f301000  addli r1, zero, 11
000ab0  1d900900  unlock r19
000ab4  7d800000  xsignal r1, 0
000ab8  9f601000  addli r1, zero, 14
000abc  db80ffff  j -1020
000ac0  3b1001fe  bneq r2, zero, -1020
000ac4  e340fff5  loadli.w r1,  -1284(r30)
000ac8  6b5a0fb0  load.d r[21:22], -1280(r30)
000acc  1b322200  slli r4, r4, 2
000ad0  9f010004  addli r3, zero, 512
000ad4  33930028  sext_int2long r[7:8], r1
000ad8  9f008003  addli r1, zero, 448
000adc  33870028  zext_int2long r[15:16], r1
000ae0  9f202000  addli r1, zero, 18
000ae4  0b37e340  min.sl r[15:16], r[7:8], r[15:16]
000ae8  173a1a02  sll.d r[21:22], r[21:22], r1
000aec  9f301000  addli r1, zero, 11
000af0  27078700  addli.d r[15:16], r[15:16], 64
000af4  0b376748  max.sl r[15:16], r[15:16], r[7:8]
000af8  7338efb2  store.d r[15:16], -1232(r30)
000afc  6b578f01  load.d r[15:16], 24(r30)
000b00  0b2a4711  add.ul r[21:22], r[15:16], r[21:22]
000b04  6b570fb3  load.d r[15:16], -1232(r30)
000b08  0b336718  sub.sl r[7:8], r[15:16], r[7:8]
000b0c  33870628  zext_int2long r[15:16], r13
000b10  73386fb2  store.d r[7:8], -1232(r30)
000b14  6b538fb0  load.d r[7:8], -1272(r30)
000b18  0b2a6a10  add.ul r[21:22], r[21:22], r[7:8]
000b1c  6b530fb3  load.d r[7:8], -1232(r30)
000b20  7d900000  xwait r1, 0
000b24  9f500000  addli r1, zero, 5
000b28  1d800000  lock zero, r1
000b2c  15000000  dma_cfg zero, zero, zero, 0
000b30  0b33e340  min.sl r[7:8], r[7:8], r[15:16]
000b34  15800c02  dma_cfg zero, r25, zero, 1
000b38  950a0004  dma_cfg r21, zero, zero, 2
000b3c  150a4906  dma_cfg r20, r18, r4, 3
000b40  1f020020  addli r4, zero, 4096
000b44  15826108  dma_cfg r4, r3, r6, 4
000b48  35000000  dma_run zero
000b4c  1d900000  unlock r1
000b50  9f510000  addli r3, zero, 5
000b54  9f401000  addli r1, zero, 12
000b58  5b6dffff  j -1176
000b5c  7d000000  xsignal zero, 0
000b60  bb600100  bneq r2, zero, 56
000b64  9f200000  addli r1, zero, 2
000b68  7d100000  xwait zero, 0
000b6c  7d100000  xwait zero, 0
000b70  7d100000  xwait zero, 0
000b74  7d100000  xwait zero, 0
000b78  7d100000  xwait zero, 0
000b7c  7d100000  xwait zero, 0
000b80  7d100000  xwait zero, 0
000b84  7d100000  xwait zero, 0
000b88  1d800000  lock zero, r1
000b8c  0d000020  ew_cfg zero, zero, zero, 16
000b90  1d900000  unlock r1
000b94  7d400000  xsignal_mode_cfg zero
000b98  9f8e3e0a  addli sp, sp, 1304
000b9c  00a00300  mfence { lm, sm, gm }
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
000dc8  00100000  exit
000dcc  00100000  exit
000dd0  00100000  exit
000dd4  00100000  exit
000dd8  00100000  exit
000ddc  00100000  exit
000de0  00100000  exit
