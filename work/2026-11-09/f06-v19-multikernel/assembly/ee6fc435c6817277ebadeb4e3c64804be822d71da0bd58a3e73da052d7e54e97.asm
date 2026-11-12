; SHA-256 ee6fc435c6817277ebadeb4e3c64804be822d71da0bd58a3e73da052d7e54e97
; P800 SDNN · XTDK LLVM 19 · 745 / 745 words decoded
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
0000b4  9f8e2ef8  addli sp, sp, -1008
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8f6e07  addli r30, sp, 944
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600100  beq r2, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b740000  j 928
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
000108  9f301000  addli r1, zero, 11
00010c  00d00100  sync_group
000110  7d800000  xsignal r1, 0
000114  7d800000  xsignal r1, 0
000118  7d800000  xsignal r1, 0
00011c  7d800100  xsignal r3, 0
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
0001dc  9f101000  addli r1, zero, 9
0001e0  9f710000  addli r3, zero, 7
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
00028c  7d000200  xsignal r4, 0
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
0003d0  7d800100  xsignal r3, 0
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
00047c  e3003f00  loadli.w r1,  24(r30)
000480  e3413f00  loadli.w r3,  28(r30)
000484  80d20002  load_param_i r5, 1
000488  63024f00  loadli.w r4,  32(r30)
00048c  67050ffe  storeli.w zero, -176(r30)
000490  e7400ffc  storeli.w zero, -500(r30)
000494  e7450ffa  storeli.w zero, -676(r30)
000498  e7090ff8  storeli.w zero, -872(r30)
00049c  8b901120  mul.s r1, r3, r1
0004a0  9f810200  addli r3, r5, 0
0004a4  8b914050  fmac.s r3, r1, r4
0004a8  0b924020  mul.s r4, r1, r4
0004ac  9ff1f1ff  addli r3, r3, -1
0004b0  8b915130  div.s r3, r3, r5
0004b4  80520002  load_param_i r5, 0
0004b8  8b905120  mul.s r1, r3, r5
0004bc  8b915150  fmac.s r3, r3, r5
0004c0  8b914140  min.s r3, r3, r4
0004c4  4be11102  ble.s r3, r1, 1112
0004c8  b3910128  sext_int2long r[4:5], r3
0004cc  6303affe  loadli.w r6,  -176(r30)
0004d0  e343bffa  loadli.w r7,  -676(r30)
0004d4  63043ff9  loadli.w r8,  -872(r30)
0004d8  e3451ffc  loadli.w r11,  -500(r30)
0004dc  b3940028  sext_int2long r[10:11], r1
0004e0  1f068000  addli r12, zero, 64
0004e4  9f460000  addli r13, zero, 4
0004e8  1f290000  addli r18, zero, 2
0004ec  1f0c6000  addli r24, zero, 48
0004f0  9f325000  addli r5, zero, 43
0004f4  2b0b0300  lui r22, 48
0004f8  1f5e0000  addli r28, zero, 5
0004fc  1f0d4000  addli r26, zero, 32
000500  9f0d0001  addli r27, zero, 128
000504  9f0ba000  addli r23, zero, 80
000508  9f6c0000  addli r25, zero, 6
00050c  9f090000  addli r19, zero, 0
000510  733c3fc4  store.d r[4:5], -936(r30)
000514  1f72f01f  addli r4, zero, 4095
000518  ab81ffff  lui r3, 1048568
00051c  73383fc4  store.d r[4:5], -944(r30)
000520  db040000  j 36
000524  9f201000  addli r1, zero, 10
000528  7d800000  xsignal r1, 0
00052c  eb540fc8  load.d r[10:11], -896(r30)
000530  eb518fc5  load.d r[4:5], -936(r30)
000534  e349fff8  loadli.w r19,  -900(r30)
000538  a7940400  addli.d r[10:11], r[10:11], 1
00053c  93b03404  setlt.sl r1, r[10:11], r[4:5]
000540  37ff0000  beq r1, zero, 988
000544  3b30d100  bneq r2, r13, 12
000548  9f301000  addli r1, zero, 11
00054c  7d900000  xwait r1, 0
000550  e3004f00  loadli.w r1,  32(r30)
000554  e3413f00  loadli.w r3,  28(r30)
000558  73309fc8  store.d r[10:11], -896(r30)
00055c  1f021000  addli r4, zero, 8
000560  8b901430  div.s r1, r9, r1
000564  0b953030  div.s r10, r1, r3
000568  0b17c530  div.s r14, r10, r12
00056c  9b303700  slli r1, r14, 3
000570  8b911618  sub.s r3, r13, r1
000574  8b984140  min.s r17, r3, r4
000578  8b111539  mod.s r3, r10, r17
00057c  8b943010  add.s r9, r1, r3
000580  9f300000  addli r1, zero, 3
000584  9f511000  addli r3, zero, 13
000588  93809004  setlt.u r1, r1, r9
00058c  b3870428  zext_int2long r[16:17], r9
000590  17ba3702  sll.d r[21:22], r[16:17], r3
000594  7338ffc6  store.d r[16:17], -912(r30)
000598  3bb00000  bneq r1, zero, 12
00059c  b3010028  zext_int2long r[4:5], zero
0005a0  db010000  j 12
0005a4  eb510fc5  load.d r[4:5], -944(r30)
0005a8  97013a02  and.d r[4:5], r[21:22], r[4:5]
0005ac  1b376700  slli r14, r14, 6
0005b0  73383fc8  store.d r[4:5], -880(r30)
0005b4  9f310000  addli r3, zero, 3
0005b8  9f000000  addli r1, zero, 0
0005bc  0b15e518  sub.s r10, r10, r14
0005c0  0b973938  mod.s r14, r19, r3
0005c4  9bb17400  slli r3, r9, 7
0005c8  9f990900  addli r19, r19, 1
0005cc  9f140000  addli r9, zero, 1
0005d0  0b151531  div.s r10, r10, r17
0005d4  67463ff8  storeli.w r3, -924(r30)
0005d8  9f710000  addli r3, zero, 7
0005dc  e7473ff9  storeli.w r19, -900(r30)
0005e0  9f080000  addli r17, zero, 0
0005e4  9b390701  slli r19, r14, 16
0005e8  b3070528  zext_int2long r[16:17], r10
0005ec  97b73702  sll.d r[16:17], r[16:17], r3
0005f0  9b317500  slli r3, r10, 7
0005f4  67063ff8  storeli.w r3, -928(r30)
0005f8  eb518f00  load.d r[4:5], 8(r30)
0005fc  17b72703  sll.d r[15:16], r[16:17], r18
000600  7334efc6  store.d r[15:16], -920(r30)
000604  8ba1e110  add.ul r[4:5], r[4:5], r[15:16]
000608  73343fc8  store.d r[4:5], -888(r30)
00060c  5b030000  j 24
000610  9b801400  andi r1, r9, 1
000614  37f90000  beq r1, zero, 604
000618  9f980800  addli r17, r17, 1
00061c  9f100000  addli r1, zero, 1
000620  9f040000  addli r9, zero, 0
000624  0b955338  mod.s r10, r7, r5
000628  0b178439  mod.s r14, r8, r24
00062c  1f140400  addli r8, r8, 1
000630  9f930300  addli r7, r7, 1
000634  9b37e500  slli r15, r10, 14
000638  1b35e700  slli r10, r14, 14
00063c  0b976711  add.s r14, r15, r22
000640  37322101  beq r2, r18, 140
000644  b3870028  zext_int2long r[16:17], r1
000648  bb259101  bneq r2, r25, 360
00064c  97b7c703  sll.d r[16:17], r[16:17], r28
000650  6b5b0fc9  load.d r[23:24], -880(r30)
000654  b3010628  zext_int2long r[4:5], r12
000658  9f000003  addli r1, zero, 384
00065c  97974703  or.d r[16:17], r[16:17], r[21:22]
000660  0bbc6719  sub.sl r[25:26], r[16:17], r[23:24]
000664  270b0a00  addli.d r[23:24], r[21:22], 0
000668  6b5a0f00  load.d r[21:22], 0(r30)
00066c  97b72703  sll.d r[16:17], r[16:17], r18
000670  8f113c60  div.sl r[4:5], r[25:26], r[4:5]
000674  338c0028  zext_int2long r[25:26], r1
000678  9f300000  addli r1, zero, 3
00067c  8b27fa10  add.ul r[16:17], r[21:22], r[16:17]
000680  270a0b00  addli.d r[21:22], r[23:24], 0
000684  9f0ba000  addli r23, zero, 80
000688  2b0b0300  lui r22, 48
00068c  7d900000  xwait r1, 0
000690  1d800600  lock zero, r13
000694  15000000  dma_cfg zero, zero, zero, 0
000698  15000804  dma_cfg zero, r16, zero, 2
00069c  1587b707  dma_cfg r14, r15, r27, 3
0006a0  0bbc8141  min.sl r[25:26], r[4:5], r[25:26]
0006a4  8b313c18  sub.sl r[4:5], r[25:26], r[4:5]
0006a8  9f6c0000  addli r25, zero, 6
0006ac  1f0c6000  addli r24, zero, 48
0006b0  9f800101  addli r1, r3, 128
0006b4  9f010002  addli r3, zero, 256
0006b8  958d1108  dma_cfg r27, r3, r1, 4
0006bc  35000000  dma_run zero
0006c0  1d900600  unlock r13
0006c4  7d000900  xsignal r18, 0
0006c8  db060000  j 52
0006cc  7d100900  xwait r18, 0
0006d0  7d100e00  xwait r28, 0
0006d4  1d000000  lock zero, zero
0006d8  9f300000  addli r1, zero, 3
0006dc  01090000  ds_cfg r18, zero, 0
0006e0  010d0002  ds_cfg r26, zero, 1
0006e4  010d001c  ds_cfg r26, zero, 14
0006e8  810d001a  ds_cfg r27, zero, 13
0006ec  2115a703  shuffle_batch r10, r14, r26, 1
0006f0  1d100000  unlock zero
0006f4  7d800000  xsignal r1, 0
0006f8  7d800600  xsignal r13, 0
0006fc  8b907539  mod.s r1, r11, r23
000700  9f950500  addli r11, r11, 1
000704  1f130300  addli r6, r6, 1
000708  9bb0e000  slli r1, r1, 14
00070c  3b1cd1fe  bneq r2, r13, -252
000710  9f011000  addli r3, zero, 8
000714  1f170000  addli r14, zero, 1
000718  9f170000  addli r15, zero, 1
00071c  1f080000  addli r16, zero, 0
000720  7d900600  xwait r13, 0
000724  7d900100  xwait r3, 0
000728  b7f00800  beq r17, zero, 60
00072c  9b31d800  slli r3, r16, 13
000730  1b328800  slli r4, r16, 8
000734  1d000700  lock zero, r14
000738  1f180000  addli r16, zero, 1
00073c  0906bd01  mm_cfg r12, r26, r27, 0
000740  97911100  or r3, r3, r1
000744  17123201  or r4, r4, r19
000748  0989e604  mm_cfg r18, r13, r14, 2
00074c  29123510  mm_acc r4, r10, r3, 8
000750  9b811700  andi r3, r15, 1
000754  9f070000  addli r15, zero, 0
000758  1d100700  unlock r14
00075c  3bcf01fe  bneq r3, zero, -48
000760  5b070000  j 56
000764  9b31d800  slli r3, r16, 13
000768  1b328800  slli r4, r16, 8
00076c  1d000700  lock zero, r14
000770  1f180000  addli r16, zero, 1
000774  0906bd01  mm_cfg r12, r26, r27, 0
000778  97911100  or r3, r3, r1
00077c  17123201  or r4, r4, r19
000780  0989e604  mm_cfg r18, r13, r14, 2
000784  29023510  mm r4, r10, r3, 8
000788  9b811700  andi r3, r15, 1
00078c  9f070000  addli r15, zero, 0
000790  1d100700  unlock r14
000794  3bcf01fe  bneq r3, zero, -48
000798  9b801400  andi r1, r9, 1
00079c  9f111000  addli r3, zero, 9
0007a0  7d000e00  xsignal r28, 0
0007a4  7d800100  xsignal r3, 0
0007a8  bbc900fe  bneq r1, zero, -400
0007ac  5bafffff  j -648
0007b0  8b105338  mod.s r1, r6, r5
0007b4  8b917539  mod.s r3, r11, r23
0007b8  9f950500  addli r11, r11, 1
0007bc  1f130300  addli r6, r6, 1
0007c0  1bb2e000  slli r4, r1, 14
0007c4  9bb0e100  slli r1, r3, 14
0007c8  abc10d00  lui r3, 220
0007cc  0b173210  add.s r14, r4, r3
0007d0  9f710000  addli r3, zero, 7
0007d4  37613100  beq r2, r3, 88
0007d8  9f110000  addli r3, zero, 1
0007dc  bb4c31fe  bneq r2, r3, -208
0007e0  9f102000  addli r1, zero, 17
0007e4  97b11702  sll.d r[4:5], r[16:17], r1
0007e8  9f700000  addli r1, zero, 7
0007ec  7d900000  xwait r1, 0
0007f0  eb578fc8  load.d r[16:17], -888(r30)
0007f4  1d800600  lock zero, r13
0007f8  9f000004  addli r1, zero, 512
0007fc  15000000  dma_cfg zero, zero, zero, 0
000800  8ba13710  add.ul r[4:5], r[16:17], r[4:5]
000804  15000204  dma_cfg zero, r4, zero, 2
000808  15871106  dma_cfg r14, r3, r1, 3
00080c  9f010020  addli r3, zero, 4096
000810  9580a109  dma_cfg r1, r3, r26, 4
000814  35000000  dma_run zero
000818  1d900600  unlock r13
00081c  7d800c00  xsignal r25, 0
000820  9b801400  andi r1, r9, 1
000824  bbd700fe  bneq r1, zero, -524
000828  db080000  j 68
00082c  9f111000  addli r3, zero, 9
000830  7d900c00  xwait r25, 0
000834  7d900100  xwait r3, 0
000838  1d000000  lock zero, zero
00083c  01090000  ds_cfg r18, zero, 0
000840  810d0002  ds_cfg r27, zero, 1
000844  010d001c  ds_cfg r26, zero, 14
000848  810d001a  ds_cfg r27, zero, 13
00084c  c100a705  shuffle_coa r1, r14, r26, 2
000850  9f700000  addli r1, zero, 7
000854  1d100000  unlock zero
000858  7d800000  xsignal r1, 0
00085c  9f001000  addli r1, zero, 8
000860  7d800000  xsignal r1, 0
000864  9b801400  andi r1, r9, 1
000868  bbc600fe  bneq r1, zero, -592
00086c  b762d1fe  beq r2, r13, -840
000870  bb7201fe  bneq r2, zero, -836
000874  e300cff8  loadli.w r1,  -928(r30)
000878  6b5a0fc7  load.d r[21:22], -912(r30)
00087c  b3810028  zext_int2long r[4:5], r1
000880  9f000007  addli r1, zero, 896
000884  b3840028  zext_int2long r[10:11], r1
000888  e340cff8  loadli.w r1,  -924(r30)
00088c  8ba49140  min.ul r[10:11], r[4:5], r[10:11]
000890  33970028  sext_int2long r[15:16], r1
000894  9f000003  addli r1, zero, 384
000898  a7840401  addli.d r[10:11], r[10:11], 128
00089c  33880028  zext_int2long r[17:18], r1
0008a0  9f302000  addli r1, zero, 19
0008a4  8ba43448  max.ul r[10:11], r[10:11], r[4:5]
0008a8  0b380741  min.sl r[17:18], r[15:16], r[17:18]
0008ac  173a1a02  sll.d r[21:22], r[21:22], r1
0008b0  9f201000  addli r1, zero, 10
0008b4  8bb13418  sub.sl r[4:5], r[10:11], r[4:5]
0008b8  b3840d28  zext_int2long r[10:11], r27
0008bc  27080801  addli.d r[17:18], r[17:18], 128
0008c0  8ba19140  min.ul r[4:5], r[4:5], r[10:11]
0008c4  0b38e848  max.sl r[17:18], r[17:18], r[15:16]
0008c8  0b37e818  sub.sl r[15:16], r[17:18], r[15:16]
0008cc  6b580f01  load.d r[17:18], 16(r30)
0008d0  8b349740  min.sl r[10:11], r[15:16], r[10:11]
0008d4  6b578fc6  load.d r[15:16], -920(r30)
0008d8  7d900000  xwait r1, 0
0008dc  1d000e00  lock zero, r28
0008e0  9f100000  addli r1, zero, 1
0008e4  0b284811  add.ul r[17:18], r[17:18], r[21:22]
0008e8  15000000  dma_cfg zero, zero, zero, 0
0008ec  15800002  dma_cfg zero, r1, zero, 1
0008f0  9bb02100  slli r1, r3, 2
0008f4  9f010020  addli r3, zero, 4096
0008f8  0b27e810  add.ul r[15:16], r[17:18], r[15:16]
0008fc  95070004  dma_cfg r15, zero, zero, 2
000900  15871906  dma_cfg r14, r19, r1, 3
000904  9f000004  addli r1, zero, 512
000908  95819008  dma_cfg r3, r1, r9, 4
00090c  9f301000  addli r1, zero, 11
000910  35000000  dma_run zero
000914  1d100e00  unlock r28
000918  5b82ffff  j -1008
00091c  7d000000  xsignal zero, 0
000920  bb600100  bneq r2, zero, 56
000924  9f200000  addli r1, zero, 2
000928  7d100000  xwait zero, 0
00092c  7d100000  xwait zero, 0
000930  7d100000  xwait zero, 0
000934  7d100000  xwait zero, 0
000938  7d100000  xwait zero, 0
00093c  7d100000  xwait zero, 0
000940  7d100000  xwait zero, 0
000944  7d100000  xwait zero, 0
000948  1d800000  lock zero, r1
00094c  0d000020  ew_cfg zero, zero, zero, 16
000950  1d900000  unlock r1
000954  7d400000  xsignal_mode_cfg zero
000958  9f8e6e07  addli sp, sp, 944
00095c  00a00300  mfence { lm, sm, gm }
000960  00100000  exit
000964  00100000  exit
000968  00100000  exit
00096c  00100000  exit
000970  00100000  exit
000974  00100000  exit
000978  00100000  exit
00097c  00100000  exit
000980  00100000  exit
000984  00100000  exit
000988  00100000  exit
00098c  00100000  exit
000990  00100000  exit
000994  00100000  exit
000998  00100000  exit
00099c  00100000  exit
0009a0  00100000  exit
0009a4  00100000  exit
0009a8  00100000  exit
0009ac  00100000  exit
0009b0  00100000  exit
0009b4  00100000  exit
0009b8  00100000  exit
0009bc  00100000  exit
0009c0  00100000  exit
0009c4  00100000  exit
0009c8  00100000  exit
0009cc  00100000  exit
0009d0  00100000  exit
0009d4  00100000  exit
0009d8  00100000  exit
0009dc  00100000  exit
0009e0  00100000  exit
0009e4  00100000  exit
0009e8  00100000  exit
0009ec  00100000  exit
0009f0  00100000  exit
0009f4  00100000  exit
0009f8  00100000  exit
0009fc  00100000  exit
000a00  00100000  exit
000a04  00100000  exit
000a08  00100000  exit
000a0c  00100000  exit
000a10  00100000  exit
000a14  00100000  exit
000a18  00100000  exit
000a1c  00100000  exit
000a20  00100000  exit
000a24  00100000  exit
000a28  00100000  exit
000a2c  00100000  exit
000a30  00100000  exit
000a34  00100000  exit
000a38  00100000  exit
000a3c  00100000  exit
000a40  00100000  exit
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
