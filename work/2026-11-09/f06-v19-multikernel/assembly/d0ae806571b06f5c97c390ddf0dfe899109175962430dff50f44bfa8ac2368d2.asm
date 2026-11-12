; SHA-256 d0ae806571b06f5c97c390ddf0dfe899109175962430dff50f44bfa8ac2368d2
; P800 SDNN · XTDK LLVM 19 · 802 / 802 words decoded
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
0000b4  9f8efef7  addli sp, sp, -1032
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8f9e07  addli r30, sp, 968
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600100  beq r2, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  db750000  j 940
0000e0  9f210000  addli r3, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  2bf2ffff  lui r4, 1048575
0000ec  1d800100  lock zero, r3
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b10f2ff  ori r1, r4, 4095
0000f8  1f320000  addli r4, zero, 3
0000fc  1d900100  unlock r3
000100  9f510000  addli r3, zero, 5
000104  80a10004  csr_set csr3, r1
000108  9f401000  addli r1, zero, 12
00010c  00d00100  sync_group
000110  7d800000  xsignal r1, 0
000114  7d800000  xsignal r1, 0
000118  7d800000  xsignal r1, 0
00011c  9f101000  addli r1, zero, 9
000120  7d800100  xsignal r3, 0
000124  7d800100  xsignal r3, 0
000128  7d800100  xsignal r3, 0
00012c  7d800100  xsignal r3, 0
000130  7d800100  xsignal r3, 0
000134  7d800100  xsignal r3, 0
000138  7d800100  xsignal r3, 0
00013c  7d800100  xsignal r3, 0
000140  7d800100  xsignal r3, 0
000144  7d800100  xsignal r3, 0
000148  7d800100  xsignal r3, 0
00014c  7d800100  xsignal r3, 0
000150  7d800100  xsignal r3, 0
000154  7d800100  xsignal r3, 0
000158  7d800100  xsignal r3, 0
00015c  7d800100  xsignal r3, 0
000160  7d800100  xsignal r3, 0
000164  7d800100  xsignal r3, 0
000168  7d800100  xsignal r3, 0
00016c  7d800100  xsignal r3, 0
000170  7d800100  xsignal r3, 0
000174  7d800100  xsignal r3, 0
000178  7d800100  xsignal r3, 0
00017c  7d800100  xsignal r3, 0
000180  7d800100  xsignal r3, 0
000184  7d800100  xsignal r3, 0
000188  7d800100  xsignal r3, 0
00018c  7d800100  xsignal r3, 0
000190  7d800100  xsignal r3, 0
000194  7d800100  xsignal r3, 0
000198  7d800100  xsignal r3, 0
00019c  7d800100  xsignal r3, 0
0001a0  7d800100  xsignal r3, 0
0001a4  7d800100  xsignal r3, 0
0001a8  7d800100  xsignal r3, 0
0001ac  7d800100  xsignal r3, 0
0001b0  7d800100  xsignal r3, 0
0001b4  7d800100  xsignal r3, 0
0001b8  7d800100  xsignal r3, 0
0001bc  7d800100  xsignal r3, 0
0001c0  7d800100  xsignal r3, 0
0001c4  7d800100  xsignal r3, 0
0001c8  7d800100  xsignal r3, 0
0001cc  7d800100  xsignal r3, 0
0001d0  7d800100  xsignal r3, 0
0001d4  7d800100  xsignal r3, 0
0001d8  7d800100  xsignal r3, 0
0001dc  7d800100  xsignal r3, 0
0001e0  7d000200  xsignal r4, 0
0001e4  7d000200  xsignal r4, 0
0001e8  7d000200  xsignal r4, 0
0001ec  7d000200  xsignal r4, 0
0001f0  7d000200  xsignal r4, 0
0001f4  7d000200  xsignal r4, 0
0001f8  7d000200  xsignal r4, 0
0001fc  7d000200  xsignal r4, 0
000200  7d000200  xsignal r4, 0
000204  7d000200  xsignal r4, 0
000208  7d000200  xsignal r4, 0
00020c  7d000200  xsignal r4, 0
000210  7d000200  xsignal r4, 0
000214  7d000200  xsignal r4, 0
000218  7d000200  xsignal r4, 0
00021c  7d000200  xsignal r4, 0
000220  7d000200  xsignal r4, 0
000224  7d000200  xsignal r4, 0
000228  7d000200  xsignal r4, 0
00022c  7d000200  xsignal r4, 0
000230  7d000200  xsignal r4, 0
000234  7d000200  xsignal r4, 0
000238  7d000200  xsignal r4, 0
00023c  7d000200  xsignal r4, 0
000240  7d000200  xsignal r4, 0
000244  7d000200  xsignal r4, 0
000248  7d000200  xsignal r4, 0
00024c  7d000200  xsignal r4, 0
000250  7d000200  xsignal r4, 0
000254  7d000200  xsignal r4, 0
000258  7d000200  xsignal r4, 0
00025c  7d000200  xsignal r4, 0
000260  7d000200  xsignal r4, 0
000264  7d000200  xsignal r4, 0
000268  7d000200  xsignal r4, 0
00026c  7d000200  xsignal r4, 0
000270  7d000200  xsignal r4, 0
000274  7d000200  xsignal r4, 0
000278  7d000200  xsignal r4, 0
00027c  7d000200  xsignal r4, 0
000280  7d000200  xsignal r4, 0
000284  7d000200  xsignal r4, 0
000288  7d000200  xsignal r4, 0
00028c  9f710000  addli r3, zero, 7
000290  7d800000  xsignal r1, 0
000294  7d800000  xsignal r1, 0
000298  7d800000  xsignal r1, 0
00029c  7d800000  xsignal r1, 0
0002a0  7d800000  xsignal r1, 0
0002a4  7d800000  xsignal r1, 0
0002a8  7d800000  xsignal r1, 0
0002ac  7d800000  xsignal r1, 0
0002b0  7d800000  xsignal r1, 0
0002b4  7d800000  xsignal r1, 0
0002b8  7d800000  xsignal r1, 0
0002bc  7d800000  xsignal r1, 0
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
0003d0  9f601000  addli r1, zero, 14
0003d4  7d800100  xsignal r3, 0
0003d8  7d800100  xsignal r3, 0
0003dc  7d800100  xsignal r3, 0
0003e0  7d800100  xsignal r3, 0
0003e4  7d800100  xsignal r3, 0
0003e8  7d800100  xsignal r3, 0
0003ec  7d800100  xsignal r3, 0
0003f0  7d800100  xsignal r3, 0
0003f4  7d800100  xsignal r3, 0
0003f8  7d800100  xsignal r3, 0
0003fc  7d800100  xsignal r3, 0
000400  7d800100  xsignal r3, 0
000404  7d800100  xsignal r3, 0
000408  7d800100  xsignal r3, 0
00040c  7d800100  xsignal r3, 0
000410  7d800100  xsignal r3, 0
000414  7d800100  xsignal r3, 0
000418  7d800100  xsignal r3, 0
00041c  7d800100  xsignal r3, 0
000420  7d800100  xsignal r3, 0
000424  7d800100  xsignal r3, 0
000428  7d800100  xsignal r3, 0
00042c  7d800100  xsignal r3, 0
000430  7d800100  xsignal r3, 0
000434  7d800100  xsignal r3, 0
000438  7d800100  xsignal r3, 0
00043c  7d800100  xsignal r3, 0
000440  7d800100  xsignal r3, 0
000444  7d800100  xsignal r3, 0
000448  7d800100  xsignal r3, 0
00044c  7d800100  xsignal r3, 0
000450  7d800100  xsignal r3, 0
000454  7d800100  xsignal r3, 0
000458  7d800100  xsignal r3, 0
00045c  7d800100  xsignal r3, 0
000460  7d800100  xsignal r3, 0
000464  7d800100  xsignal r3, 0
000468  7d800100  xsignal r3, 0
00046c  7d800100  xsignal r3, 0
000470  7d800100  xsignal r3, 0
000474  7d800100  xsignal r3, 0
000478  7d800100  xsignal r3, 0
00047c  7d800000  xsignal r1, 0
000480  7d800000  xsignal r1, 0
000484  7d800000  xsignal r1, 0
000488  e3004f00  loadli.w r1,  32(r30)
00048c  e3414f00  loadli.w r3,  36(r30)
000490  80d20002  load_param_i r5, 1
000494  63025f00  loadli.w r4,  40(r30)
000498  670f0ffe  storeli.w zero, -16(r30)
00049c  67440ffe  storeli.w zero, -188(r30)
0004a0  67000ffc  storeli.w zero, -512(r30)
0004a4  67050ffa  storeli.w zero, -688(r30)
0004a8  e7480ff8  storeli.w zero, -884(r30)
0004ac  8b901120  mul.s r1, r3, r1
0004b0  9f810200  addli r3, r5, 0
0004b4  8b914050  fmac.s r3, r1, r4
0004b8  0b924020  mul.s r4, r1, r4
0004bc  9ff1f1ff  addli r3, r3, -1
0004c0  8b915130  div.s r3, r3, r5
0004c4  80520002  load_param_i r5, 0
0004c8  8b905120  mul.s r1, r3, r5
0004cc  8b915150  fmac.s r3, r3, r5
0004d0  8b914140  min.s r3, r3, r4
0004d4  cbb41102  ble.s r3, r1, 1324
0004d8  b3910128  sext_int2long r[4:5], r3
0004dc  630befff  loadli.w r22,  -16(r30)
0004e0  e3438ffe  loadli.w r7,  -188(r30)
0004e4  6304affa  loadli.w r8,  -688(r30)
0004e8  e3441ff9  loadli.w r9,  -884(r30)
0004ec  63060ffc  loadli.w r12,  -512(r30)
0004f0  33950028  sext_int2long r[11:12], r1
0004f4  9f068000  addli r13, zero, 64
0004f8  1f470000  addli r14, zero, 4
0004fc  9f290000  addli r19, zero, 2
000500  9f0b6000  addli r23, zero, 48
000504  1f3c5000  addli r24, zero, 43
000508  9f5c0000  addli r25, zero, 5
00050c  9f0d4000  addli r27, zero, 32
000510  1f0e0001  addli r28, zero, 128
000514  1f1d0000  addli r26, zero, 1
000518  67470ff8  storeli.w zero, -908(r30)
00051c  73303fc4  store.d r[4:5], -960(r30)
000520  1f72f01f  addli r4, zero, 4095
000524  ab81ffff  lui r3, 1048568
000528  733c3fc2  store.d r[4:5], -968(r30)
00052c  db0b0000  j 92
000530  6b550f01  load.d r[11:12], 16(r30)
000534  eb578fc5  load.d r[16:17], -936(r30)
000538  9f601000  addli r1, zero, 14
00053c  7d900000  xwait r1, 0
000540  1d000700  lock zero, r14
000544  9b302200  slli r1, r4, 2
000548  0b25f510  add.ul r[11:12], r[11:12], r[16:17]
00054c  15000000  dma_cfg zero, zero, zero, 0
000550  15800504  dma_cfg zero, r11, zero, 2
000554  15031506  dma_cfg r6, r10, r1, 3
000558  9f000004  addli r1, zero, 512
00055c  9580a009  dma_cfg r1, r1, r26, 4
000560  35000000  dma_run zero
000564  1d100700  unlock r14
000568  9f501000  addli r1, zero, 13
00056c  7d800000  xsignal r1, 0
000570  6b558fc6  load.d r[11:12], -920(r30)
000574  6b520fc4  load.d r[5:6], -960(r30)
000578  1f1b0b00  addli r22, r22, 1
00057c  27150500  addli.d r[11:12], r[11:12], 1
000580  93304504  setlt.sl r1, r[11:12], r[5:6]
000584  b7f10002  beq r1, zero, 1148
000588  67076ff9  storeli.w r22, -912(r30)
00058c  3b30e100  bneq r2, r14, 12
000590  9f401000  addli r1, zero, 12
000594  7d900000  xwait r1, 0
000598  e3005f00  loadli.w r1,  40(r30)
00059c  63424f00  loadli.w r4,  36(r30)
0005a0  7334afc6  store.d r[11:12], -920(r30)
0005a4  9f021000  addli r5, zero, 8
0005a8  8b101530  div.s r1, r10, r1
0005ac  0b934030  div.s r6, r1, r4
0005b0  0b15d330  div.s r10, r6, r13
0005b4  9b303500  slli r1, r10, 3
0005b8  0b121718  sub.s r4, r14, r1
0005bc  8b155240  min.s r11, r4, r5
0005c0  9f521000  addli r5, zero, 13
0005c4  0b12b338  mod.s r4, r6, r11
0005c8  8b904010  add.s r1, r1, r4
0005cc  1f320000  addli r4, zero, 3
0005d0  13021204  setlt.u r4, r4, r1
0005d4  b3870028  zext_int2long r[16:17], r1
0005d8  97ba5702  sll.d r[22:23], r[16:17], r5
0005dc  7338ffc4  store.d r[16:17], -944(r30)
0005e0  3b300200  bneq r4, zero, 12
0005e4  b3010028  zext_int2long r[4:5], zero
0005e8  db010000  j 12
0005ec  6b528fc3  load.d r[5:6], -968(r30)
0005f0  97814a02  and.d r[4:5], r[22:23], r[5:6]
0005f4  1b356500  slli r10, r10, 6
0005f8  73303fc8  store.d r[4:5], -896(r30)
0005fc  e341eff8  loadli.w r3,  -908(r30)
000600  9bb07000  slli r1, r1, 7
000604  ab020300  lui r5, 48
000608  1f0a0000  addli r20, zero, 0
00060c  0b13a318  sub.s r6, r6, r10
000610  1f350000  addli r10, zero, 3
000614  e7441ff8  storeli.w r1, -948(r30)
000618  9f700000  addli r1, zero, 7
00061c  0b13b330  div.s r6, r6, r11
000620  0b95a138  mod.s r10, r3, r10
000624  9f910100  addli r3, r3, 1
000628  67473ff8  storeli.w r3, -908(r30)
00062c  b3070328  zext_int2long r[16:17], r6
000630  1b337300  slli r6, r6, 7
000634  97b71702  sll.d r[16:17], r[16:17], r1
000638  9b300501  slli r1, r10, 16
00063c  6b558f00  load.d r[11:12], 8(r30)
000640  67466ff8  storeli.w r6, -924(r30)
000644  97b13703  sll.d r[4:5], r[16:17], r19
000648  9f070000  addli r15, zero, 0
00064c  733c3fc4  store.d r[4:5], -936(r30)
000650  8b213510  add.ul r[4:5], r[11:12], r[4:5]
000654  9f150000  addli r11, zero, 1
000658  733c3fc6  store.d r[4:5], -904(r30)
00065c  1f620000  addli r4, zero, 6
000660  db090000  j 76
000664  7d900900  xwait r19, 0
000668  7d900c00  xwait r25, 0
00066c  1d000000  lock zero, zero
000670  1f160600  addli r12, r12, 1
000674  81090000  ds_cfg r19, zero, 0
000678  810d0002  ds_cfg r27, zero, 1
00067c  810d001c  ds_cfg r27, zero, 14
000680  010e001a  ds_cfg r28, zero, 13
000684  2113b503  shuffle_batch r6, r10, r27, 1
000688  1f330000  addli r6, zero, 3
00068c  1d100000  unlock zero
000690  7d000300  xsignal r6, 0
000694  7d000700  xsignal r14, 0
000698  9f930300  addli r7, r7, 1
00069c  b7280900  beq r18, zero, 552
0006a0  9f970700  addli r15, r15, 1
0006a4  1f1a0000  addli r20, zero, 1
0006a8  9f050000  addli r11, zero, 0
0006ac  0b138439  mod.s r6, r8, r24
0006b0  0b957439  mod.s r10, r9, r23
0006b4  9f940400  addli r9, r9, 1
0006b8  1f140400  addli r8, r8, 1
0006bc  1b891500  andi r18, r11, 1
0006c0  1b38e300  slli r16, r6, 14
0006c4  1b33e500  slli r6, r10, 14
0006c8  0b155810  add.s r10, r16, r5
0006cc  376e31ff  beq r2, r19, -104
0006d0  33080a28  zext_int2long r[17:18], r20
0006d4  3b12a101  bneq r2, r26, 132
0006d8  17389803  sll.d r[17:18], r[17:18], r25
0006dc  eb510fc8  load.d r[4:5], -896(r30)
0006e0  b38b0628  zext_int2long r[24:25], r13
0006e4  1f030003  addli r6, zero, 384
0006e8  1f160600  addli r12, r12, 1
0006ec  17185803  or.d r[17:18], r[17:18], r[22:23]
0006f0  8b3c3818  sub.sl r[26:27], r[17:18], r[4:5]
0006f4  eb510f00  load.d r[4:5], 0(r30)
0006f8  17383803  sll.d r[17:18], r[17:18], r19
0006fc  8f9b7c61  div.sl r[24:25], r[26:27], r[24:25]
000700  b30c0328  zext_int2long r[26:27], r6
000704  1f330000  addli r6, zero, 3
000708  0ba80111  add.ul r[17:18], r[4:5], r[17:18]
00070c  9f010002  addli r3, zero, 256
000710  1f620000  addli r4, zero, 6
000714  7d100300  xwait r6, 0
000718  1d000700  lock zero, r14
00071c  15000000  dma_cfg zero, zero, zero, 0
000720  15800804  dma_cfg zero, r17, zero, 2
000724  1505c807  dma_cfg r10, r16, r28, 3
000728  8bbc9b41  min.sl r[26:27], r[24:25], r[26:27]
00072c  8bbb7c19  sub.sl r[24:25], r[26:27], r[24:25]
000730  1f1d0000  addli r26, zero, 1
000734  9f5c0000  addli r25, zero, 5
000738  1f830b01  addli r6, r23, 128
00073c  1f3c5000  addli r24, zero, 43
000740  9f0b6000  addli r23, zero, 48
000744  158e6108  dma_cfg r28, r3, r6, 4
000748  35000000  dma_run zero
00074c  1d100700  unlock r14
000750  7d800900  xsignal r19, 0
000754  dbe8ffff  j -188
000758  9f01a000  addli r3, zero, 80
00075c  0b153638  mod.s r10, r12, r3
000760  9f215000  addli r3, zero, 42
000764  1f160600  addli r12, r12, 1
000768  8b953338  mod.s r11, r7, r3
00076c  abc10d00  lui r3, 220
000770  1b3ae500  slli r20, r10, 14
000774  1bb5e500  slli r10, r11, 14
000778  9f750000  addli r11, zero, 7
00077c  0b153510  add.s r10, r10, r3
000780  3761b100  beq r2, r11, 88
000784  3b424100  bneq r2, r4, 144
000788  9f112000  addli r3, zero, 17
00078c  1f730000  addli r6, zero, 7
000790  17383802  sll.d r[17:18], r[17:18], r3
000794  7d100300  xwait r6, 0
000798  27810a00  addli.d r[3:4], r[22:23], 0
00079c  6b5a8fc7  load.d r[21:22], -904(r30)
0007a0  1d000700  lock zero, r14
0007a4  1f030004  addli r6, zero, 512
0007a8  15000000  dma_cfg zero, zero, zero, 0
0007ac  0b280a11  add.ul r[17:18], r[21:22], r[17:18]
0007b0  a70a0100  addli.d r[22:23], r[3:4], 0
0007b4  9f010020  addli r3, zero, 4096
0007b8  00310002  core_id r2
0007bc  15800804  dma_cfg zero, r17, zero, 2
0007c0  15056806  dma_cfg r10, r16, r6, 3
0007c4  1583b109  dma_cfg r6, r3, r27, 4
0007c8  35000000  dma_run zero
0007cc  1d100700  unlock r14
0007d0  7d000200  xsignal r4, 0
0007d4  dbd8ffff  j -316
0007d8  9f111000  addli r3, zero, 9
0007dc  7d100200  xwait r4, 0
0007e0  1f730000  addli r6, zero, 7
0007e4  7d900100  xwait r3, 0
0007e8  1d000000  lock zero, zero
0007ec  81090000  ds_cfg r19, zero, 0
0007f0  010e0002  ds_cfg r28, zero, 1
0007f4  810d001c  ds_cfg r27, zero, 14
0007f8  010e001a  ds_cfg r28, zero, 13
0007fc  410ab505  shuffle_coa r20, r10, r27, 2
000800  1d100000  unlock zero
000804  7d000300  xsignal r6, 0
000808  1f031000  addli r6, zero, 8
00080c  7d000300  xsignal r6, 0
000810  5bd1ffff  j -376
000814  bb12e100  bneq r2, r14, 164
000818  1f051000  addli r10, zero, 8
00081c  7d100700  xwait r14, 0
000820  9f150000  addli r11, zero, 1
000824  1f080000  addli r16, zero, 0
000828  7d100500  xwait r10, 0
00082c  1f150000  addli r10, zero, 1
000830  b7f00700  beq r15, zero, 60
000834  9b38d800  slli r17, r16, 13
000838  1b388800  slli r16, r16, 8
00083c  1d000500  lock zero, r10
000840  8986cd01  mm_cfg r13, r27, r28, 0
000844  97984801  or r17, r17, r20
000848  17181800  or r16, r16, r1
00084c  8909a704  mm_cfg r19, r14, r10, 2
000850  29181311  mm_acc r16, r6, r17, 8
000854  9b881500  andi r17, r11, 1
000858  1f180000  addli r16, zero, 1
00085c  9f050000  addli r11, zero, 0
000860  1d100500  unlock r10
000864  3bcf08fe  bneq r17, zero, -48
000868  5b070000  j 56
00086c  9b38d800  slli r17, r16, 13
000870  1b388800  slli r16, r16, 8
000874  1d000500  lock zero, r10
000878  8986cd01  mm_cfg r13, r27, r28, 0
00087c  97984801  or r17, r17, r20
000880  17181800  or r16, r16, r1
000884  8909a704  mm_cfg r19, r14, r10, 2
000888  29081311  mm r16, r6, r17, 8
00088c  9b881500  andi r17, r11, 1
000890  1f180000  addli r16, zero, 1
000894  9f050000  addli r11, zero, 0
000898  1d100500  unlock r10
00089c  3bcf08fe  bneq r17, zero, -48
0008a0  9f930300  addli r7, r7, 1
0008a4  9f111000  addli r3, zero, 9
0008a8  7d800c00  xsignal r25, 0
0008ac  7d800100  xsignal r3, 0
0008b0  bb4709fe  bneq r18, zero, -528
0008b4  db020000  j 20
0008b8  9f930300  addli r7, r7, 1
0008bc  bb1709fe  bneq r18, zero, -540
0008c0  5b020000  j 16
0008c4  3b30e100  bneq r2, r14, 12
0008c8  1f221000  addli r4, zero, 10
0008cc  7d000200  xsignal r4, 0
0008d0  e341cff8  loadli.w r3,  -924(r30)
0008d4  1f030007  addli r6, zero, 896
0008d8  630beff8  loadli.w r22,  -912(r30)
0008dc  33050328  zext_int2long r[11:12], r6
0008e0  1f330000  addli r6, zero, 3
0008e4  33820128  zext_int2long r[5:6], r3
0008e8  0b136b38  mod.s r6, r22, r6
0008ec  0b25a240  min.ul r[11:12], r[5:6], r[11:12]
0008f0  27050501  addli.d r[11:12], r[11:12], 128
0008f4  8b274548  max.ul r[16:17], r[11:12], r[5:6]
0008f8  33050e28  zext_int2long r[11:12], r28
0008fc  1b339300  slli r6, r6, 9
000900  0bb24718  sub.sl r[5:6], r[16:17], r[5:6]
000904  ab471800  lui r15, 388
000908  0b22a240  min.ul r[5:6], r[5:6], r[11:12]
00090c  0b13f310  add.s r6, r6, r15
000910  b700a1ff  beq r2, r26, -992
000914  3b719101  bneq r2, r25, 92
000918  9f221000  addli r5, zero, 10
00091c  ab01803f  lui r3, 260096
000920  1f020000  addli r4, zero, 0
000924  7d900200  xwait r5, 0
000928  9f521000  addli r5, zero, 13
00092c  7d900200  xwait r5, 0
000930  1d800900  lock zero, r19
000934  0d000002  ew_cfg zero, zero, zero, 1
000938  8d910100  ewcoeff_cfg r3, r3, zero, 0
00093c  9f71f000  addli r3, zero, 127
000940  0d800104  ew_cfg zero, r3, zero, 2
000944  ab010100  lui r3, 16
000948  0d0d0006  ew_cfg r26, zero, zero, 3
00094c  8b924010  add.s r5, r1, r4
000950  1f020204  addli r4, r4, 512
000954  ad826200  dsmadd r5, r5, r6, 0
000958  bb5f32fe  bneq r4, r3, -12
00095c  9f301000  addli r1, zero, 11
000960  1d900900  unlock r19
000964  7d800000  xsignal r1, 0
000968  9f601000  addli r1, zero, 14
00096c  5b80ffff  j -1024
000970  3b0001fe  bneq r2, zero, -1024
000974  e3419ff8  loadli.w r3,  -948(r30)
000978  1f030003  addli r6, zero, 384
00097c  6b5a0fc5  load.d r[21:22], -944(r30)
000980  1b322200  slli r4, r4, 2
000984  b3080328  zext_int2long r[18:19], r6
000988  b3970128  sext_int2long r[16:17], r3
00098c  9f312000  addli r3, zero, 19
000990  8bb81741  min.sl r[18:19], r[16:17], r[18:19]
000994  173a3a02  sll.d r[21:22], r[21:22], r3
000998  9f311000  addli r3, zero, 11
00099c  a7880801  addli.d r[18:19], r[18:19], 128
0009a0  73304fc9  store.d r[21:22], -896(r30)
0009a4  7d900100  xwait r3, 0
0009a8  6b5a8f01  load.d r[21:22], 24(r30)
0009ac  9f010020  addli r3, zero, 4096
0009b0  8bb8f848  max.sl r[18:19], r[18:19], r[16:17]
0009b4  733c1fc7  store.d r[18:19], -904(r30)
0009b8  eb580fc8  load.d r[18:19], -896(r30)
0009bc  0b2a1a11  add.ul r[21:22], r[21:22], r[18:19]
0009c0  eb588fc7  load.d r[18:19], -904(r30)
0009c4  8bb7f818  sub.sl r[16:17], r[18:19], r[16:17]
0009c8  eb588fc5  load.d r[18:19], -936(r30)
0009cc  1d800c00  lock zero, r25
0009d0  15000000  dma_cfg zero, zero, zero, 0
0009d4  15000d02  dma_cfg zero, r26, zero, 1
0009d8  0bb5a740  min.sl r[11:12], r[16:17], r[11:12]
0009dc  8b281a11  add.ul r[18:19], r[21:22], r[18:19]
0009e0  15090004  dma_cfg r18, zero, zero, 2
0009e4  95884006  dma_cfg r17, r1, r4, 3
0009e8  9f000004  addli r1, zero, 512
0009ec  9581a008  dma_cfg r3, r1, r10, 4
0009f0  9f401000  addli r1, zero, 12
0009f4  35000000  dma_run zero
0009f8  1d900c00  unlock r25
0009fc  5b6effff  j -1168
000a00  7d000000  xsignal zero, 0
000a04  bb600100  bneq r2, zero, 56
000a08  9f200000  addli r1, zero, 2
000a0c  7d100000  xwait zero, 0
000a10  7d100000  xwait zero, 0
000a14  7d100000  xwait zero, 0
000a18  7d100000  xwait zero, 0
000a1c  7d100000  xwait zero, 0
000a20  7d100000  xwait zero, 0
000a24  7d100000  xwait zero, 0
000a28  7d100000  xwait zero, 0
000a2c  1d800000  lock zero, r1
000a30  0d000020  ew_cfg zero, zero, zero, 16
000a34  1d900000  unlock r1
000a38  7d400000  xsignal_mode_cfg zero
000a3c  9f8e9e07  addli sp, sp, 968
000a40  00a00300  mfence { lm, sm, gm }
000a44  00100000  exit
000a48  00100000  exit
000a4c  00100000  exit
000a50  00100000  exit
000a54  00100000  exit
000a58  00100000  exit
000a5c  00100000  exit
000a60  00100000  exit
000a64  00100000  exit
000a68  00100000  exit
000a6c  00100000  exit
000a70  00100000  exit
000a74  00100000  exit
000a78  00100000  exit
000a7c  00100000  exit
000a80  00100000  exit
000a84  00100000  exit
000a88  00100000  exit
000a8c  00100000  exit
000a90  00100000  exit
000a94  00100000  exit
000a98  00100000  exit
000a9c  00100000  exit
000aa0  00100000  exit
000aa4  00100000  exit
000aa8  00100000  exit
000aac  00100000  exit
000ab0  00100000  exit
000ab4  00100000  exit
000ab8  00100000  exit
000abc  00100000  exit
000ac0  00100000  exit
000ac4  00100000  exit
000ac8  00100000  exit
000acc  00100000  exit
000ad0  00100000  exit
000ad4  00100000  exit
000ad8  00100000  exit
000adc  00100000  exit
000ae0  00100000  exit
000ae4  00100000  exit
000ae8  00100000  exit
000aec  00100000  exit
000af0  00100000  exit
000af4  00100000  exit
000af8  00100000  exit
000afc  00100000  exit
000b00  00100000  exit
000b04  00100000  exit
000b08  00100000  exit
000b0c  00100000  exit
000b10  00100000  exit
000b14  00100000  exit
000b18  00100000  exit
000b1c  00100000  exit
000b20  00100000  exit
000b24  00100000  exit
000b28  00100000  exit
000b2c  00100000  exit
000b30  00100000  exit
000b34  00100000  exit
000b38  00100000  exit
000b3c  00100000  exit
000b40  00100000  exit
000b44  00100000  exit
000b48  00100000  exit
000b4c  00100000  exit
000b50  00100000  exit
000b54  00100000  exit
000b58  00100000  exit
000b5c  00100000  exit
000b60  00100000  exit
000b64  00100000  exit
000b68  00100000  exit
000b6c  00100000  exit
000b70  00100000  exit
000b74  00100000  exit
000b78  00100000  exit
000b7c  00100000  exit
000b80  00100000  exit
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
