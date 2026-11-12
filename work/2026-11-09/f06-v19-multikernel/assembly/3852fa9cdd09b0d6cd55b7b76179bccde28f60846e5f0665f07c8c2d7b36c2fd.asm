; SHA-256 3852fa9cdd09b0d6cd55b7b76179bccde28f60846e5f0665f07c8c2d7b36c2fd
; P800 SDNN · XTDK LLVM 19 · 1355 / 1355 words decoded
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
00005c  9f496000  addli r19, zero, 52
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
0000b8  1f110000  addli r2, zero, 1
0000bc  80300002  core_id r1
0000c0  80390002  core_id r19
0000c4  1f8f1e0a  addli r30, sp, 1288
0000c8  7d400100  xsignal_mode_cfg r2
0000cc  b7900000  beq r1, zero, 36
0000d0  abf1ffff  lui r3, 1048575
0000d4  7d100100  xwait r2, 0
0000d8  7d100100  xwait r2, 0
0000dc  7d100000  xwait zero, 0
0000e0  1b91f1ff  ori r2, r3, 4095
0000e4  80210104  csr_set csr3, r2
0000e8  00d00100  sync_group
0000ec  dba90000  j 1356
0000f0  9f220000  addli r5, zero, 2
0000f4  7d510100  uni_sram_cfg r2, r2
0000f8  1f430000  addli r6, zero, 4
0000fc  eb510f02  load.d r[4:5], 32(r30)
000100  9f030020  addli r7, zero, 4096
000104  1d800200  lock zero, r5
000108  0d010020  ew_cfg r2, zero, zero, 16
00010c  1d900200  unlock r5
000110  1d000300  lock zero, r6
000114  15000000  dma_cfg zero, zero, zero, 0
000118  15000204  dma_cfg zero, r4, zero, 2
00011c  15807106  dma_cfg zero, r3, r7, 3
000120  9f014000  addli r3, zero, 32
000124  1f020008  addli r4, zero, 1024
000128  15002008  dma_cfg zero, zero, r2, 4
00012c  35000000  dma_run zero
000130  1d100300  unlock r6
000134  7d000100  xsignal r2, 0
000138  7d100100  xwait r2, 0
00013c  1d000000  lock zero, zero
000140  81020000  ds_cfg r5, zero, 0
000144  01000002  ds_cfg zero, zero, 1
000148  01000016  ds_cfg zero, zero, 11
00014c  8101001a  ds_cfg r3, zero, 13
000150  9f311000  addli r3, zero, 11
000154  0102001c  ds_cfg r4, zero, 14
000158  a1134008  shuffle_batch r7, zero, r4, 4
00015c  1d100000  unlock zero
000160  7d000100  xsignal r2, 0
000164  7d100100  xwait r2, 0
000168  1d800200  lock zero, r5
00016c  2b110100  lui r2, 17
000170  0da00300  ewtable_cfg r7, 0
000174  0d200102  ewtable_cfg r2, 1
000178  2bf1ffff  lui r2, 1048575
00017c  1d900200  unlock r5
000180  7d000000  xsignal zero, 0
000184  7d100000  xwait zero, 0
000188  1b11f1ff  ori r2, r2, 4095
00018c  80210104  csr_set csr3, r2
000190  00d00100  sync_group
000194  7d800100  xsignal r3, 0
000198  7d800100  xsignal r3, 0
00019c  7d800100  xsignal r3, 0
0001a0  1f510000  addli r2, zero, 5
0001a4  9f310000  addli r3, zero, 3
0001a8  7d000100  xsignal r2, 0
0001ac  7d000100  xsignal r2, 0
0001b0  7d000100  xsignal r2, 0
0001b4  7d000100  xsignal r2, 0
0001b8  7d000100  xsignal r2, 0
0001bc  7d000100  xsignal r2, 0
0001c0  7d000100  xsignal r2, 0
0001c4  7d000100  xsignal r2, 0
0001c8  7d000100  xsignal r2, 0
0001cc  7d000100  xsignal r2, 0
0001d0  7d000100  xsignal r2, 0
0001d4  7d000100  xsignal r2, 0
0001d8  7d000100  xsignal r2, 0
0001dc  7d000100  xsignal r2, 0
0001e0  7d000100  xsignal r2, 0
0001e4  7d000100  xsignal r2, 0
0001e8  7d000100  xsignal r2, 0
0001ec  7d000100  xsignal r2, 0
0001f0  7d000100  xsignal r2, 0
0001f4  7d000100  xsignal r2, 0
0001f8  7d000100  xsignal r2, 0
0001fc  7d000100  xsignal r2, 0
000200  7d000100  xsignal r2, 0
000204  7d000100  xsignal r2, 0
000208  7d000100  xsignal r2, 0
00020c  7d000100  xsignal r2, 0
000210  7d000100  xsignal r2, 0
000214  7d000100  xsignal r2, 0
000218  7d000100  xsignal r2, 0
00021c  7d000100  xsignal r2, 0
000220  7d000100  xsignal r2, 0
000224  7d000100  xsignal r2, 0
000228  7d000100  xsignal r2, 0
00022c  7d000100  xsignal r2, 0
000230  7d000100  xsignal r2, 0
000234  7d000100  xsignal r2, 0
000238  7d000100  xsignal r2, 0
00023c  7d000100  xsignal r2, 0
000240  7d000100  xsignal r2, 0
000244  7d000100  xsignal r2, 0
000248  7d000100  xsignal r2, 0
00024c  7d000100  xsignal r2, 0
000250  7d000100  xsignal r2, 0
000254  7d000100  xsignal r2, 0
000258  7d000100  xsignal r2, 0
00025c  7d000100  xsignal r2, 0
000260  7d000100  xsignal r2, 0
000264  7d000100  xsignal r2, 0
000268  7d000100  xsignal r2, 0
00026c  7d000100  xsignal r2, 0
000270  7d000100  xsignal r2, 0
000274  7d000100  xsignal r2, 0
000278  7d000100  xsignal r2, 0
00027c  7d000100  xsignal r2, 0
000280  7d000100  xsignal r2, 0
000284  7d000100  xsignal r2, 0
000288  7d000100  xsignal r2, 0
00028c  7d000100  xsignal r2, 0
000290  7d000100  xsignal r2, 0
000294  7d000100  xsignal r2, 0
000298  7d000100  xsignal r2, 0
00029c  7d000100  xsignal r2, 0
0002a0  7d000100  xsignal r2, 0
0002a4  7d000100  xsignal r2, 0
0002a8  7d000100  xsignal r2, 0
0002ac  7d000100  xsignal r2, 0
0002b0  7d000100  xsignal r2, 0
0002b4  7d000100  xsignal r2, 0
0002b8  7d000100  xsignal r2, 0
0002bc  7d000100  xsignal r2, 0
0002c0  7d000100  xsignal r2, 0
0002c4  7d000100  xsignal r2, 0
0002c8  7d000100  xsignal r2, 0
0002cc  7d000100  xsignal r2, 0
0002d0  7d000100  xsignal r2, 0
0002d4  7d000100  xsignal r2, 0
0002d8  7d000100  xsignal r2, 0
0002dc  7d000100  xsignal r2, 0
0002e0  7d000100  xsignal r2, 0
0002e4  7d000100  xsignal r2, 0
0002e8  7d000100  xsignal r2, 0
0002ec  7d000100  xsignal r2, 0
0002f0  7d000100  xsignal r2, 0
0002f4  7d000100  xsignal r2, 0
0002f8  7d000100  xsignal r2, 0
0002fc  7d000100  xsignal r2, 0
000300  7d000100  xsignal r2, 0
000304  7d000100  xsignal r2, 0
000308  7d000100  xsignal r2, 0
00030c  7d000100  xsignal r2, 0
000310  7d000100  xsignal r2, 0
000314  7d000100  xsignal r2, 0
000318  7d000100  xsignal r2, 0
00031c  7d000100  xsignal r2, 0
000320  7d000100  xsignal r2, 0
000324  7d000100  xsignal r2, 0
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
000394  7d800100  xsignal r3, 0
000398  7d800100  xsignal r3, 0
00039c  7d800100  xsignal r3, 0
0003a0  7d800100  xsignal r3, 0
0003a4  7d800100  xsignal r3, 0
0003a8  7d800100  xsignal r3, 0
0003ac  7d800100  xsignal r3, 0
0003b0  7d800100  xsignal r3, 0
0003b4  7d800100  xsignal r3, 0
0003b8  7d800100  xsignal r3, 0
0003bc  7d800100  xsignal r3, 0
0003c0  7d800100  xsignal r3, 0
0003c4  7d800100  xsignal r3, 0
0003c8  7d800100  xsignal r3, 0
0003cc  7d800100  xsignal r3, 0
0003d0  7d800100  xsignal r3, 0
0003d4  7d800100  xsignal r3, 0
0003d8  7d800100  xsignal r3, 0
0003dc  7d800100  xsignal r3, 0
0003e0  7d800100  xsignal r3, 0
0003e4  7d800100  xsignal r3, 0
0003e8  7d800100  xsignal r3, 0
0003ec  1f111000  addli r2, zero, 9
0003f0  9f710000  addli r3, zero, 7
0003f4  7d000100  xsignal r2, 0
0003f8  7d000100  xsignal r2, 0
0003fc  7d000100  xsignal r2, 0
000400  7d000100  xsignal r2, 0
000404  7d000100  xsignal r2, 0
000408  7d000100  xsignal r2, 0
00040c  7d000100  xsignal r2, 0
000410  7d000100  xsignal r2, 0
000414  7d000100  xsignal r2, 0
000418  7d000100  xsignal r2, 0
00041c  7d000100  xsignal r2, 0
000420  7d000100  xsignal r2, 0
000424  7d000100  xsignal r2, 0
000428  7d000100  xsignal r2, 0
00042c  7d000100  xsignal r2, 0
000430  7d000100  xsignal r2, 0
000434  7d000100  xsignal r2, 0
000438  7d000100  xsignal r2, 0
00043c  7d000100  xsignal r2, 0
000440  7d000100  xsignal r2, 0
000444  7d000100  xsignal r2, 0
000448  7d000100  xsignal r2, 0
00044c  7d000100  xsignal r2, 0
000450  7d000100  xsignal r2, 0
000454  7d000100  xsignal r2, 0
000458  7d000100  xsignal r2, 0
00045c  7d000100  xsignal r2, 0
000460  7d000100  xsignal r2, 0
000464  7d000100  xsignal r2, 0
000468  7d000100  xsignal r2, 0
00046c  7d000100  xsignal r2, 0
000470  7d000100  xsignal r2, 0
000474  7d000100  xsignal r2, 0
000478  7d000100  xsignal r2, 0
00047c  7d000100  xsignal r2, 0
000480  7d000100  xsignal r2, 0
000484  7d000100  xsignal r2, 0
000488  7d000100  xsignal r2, 0
00048c  7d000100  xsignal r2, 0
000490  7d000100  xsignal r2, 0
000494  7d000100  xsignal r2, 0
000498  7d000100  xsignal r2, 0
00049c  7d000100  xsignal r2, 0
0004a0  7d000100  xsignal r2, 0
0004a4  7d000100  xsignal r2, 0
0004a8  7d000100  xsignal r2, 0
0004ac  7d000100  xsignal r2, 0
0004b0  7d000100  xsignal r2, 0
0004b4  7d000100  xsignal r2, 0
0004b8  7d000100  xsignal r2, 0
0004bc  7d000100  xsignal r2, 0
0004c0  7d000100  xsignal r2, 0
0004c4  7d000100  xsignal r2, 0
0004c8  7d000100  xsignal r2, 0
0004cc  7d000100  xsignal r2, 0
0004d0  7d000100  xsignal r2, 0
0004d4  7d000100  xsignal r2, 0
0004d8  7d000100  xsignal r2, 0
0004dc  7d000100  xsignal r2, 0
0004e0  7d000100  xsignal r2, 0
0004e4  7d000100  xsignal r2, 0
0004e8  7d000100  xsignal r2, 0
0004ec  7d000100  xsignal r2, 0
0004f0  7d000100  xsignal r2, 0
0004f4  7d000100  xsignal r2, 0
0004f8  7d000100  xsignal r2, 0
0004fc  7d000100  xsignal r2, 0
000500  7d000100  xsignal r2, 0
000504  7d000100  xsignal r2, 0
000508  7d000100  xsignal r2, 0
00050c  7d000100  xsignal r2, 0
000510  7d000100  xsignal r2, 0
000514  7d000100  xsignal r2, 0
000518  7d000100  xsignal r2, 0
00051c  7d000100  xsignal r2, 0
000520  7d000100  xsignal r2, 0
000524  7d000100  xsignal r2, 0
000528  7d000100  xsignal r2, 0
00052c  7d000100  xsignal r2, 0
000530  7d000100  xsignal r2, 0
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
0005f8  1f511000  addli r2, zero, 13
0005fc  9f711000  addli r3, zero, 15
000600  7d000100  xsignal r2, 0
000604  7d000100  xsignal r2, 0
000608  7d000100  xsignal r2, 0
00060c  7d800100  xsignal r3, 0
000610  7d800100  xsignal r3, 0
000614  7d800100  xsignal r3, 0
000618  1f312000  addli r2, zero, 19
00061c  9f412000  addli r3, zero, 20
000620  7d000100  xsignal r2, 0
000624  7d000100  xsignal r2, 0
000628  7d000100  xsignal r2, 0
00062c  7d800100  xsignal r3, 0
000630  7d800100  xsignal r3, 0
000634  7d800100  xsignal r3, 0
000638  63015f00  loadli.w r2,  40(r30)
00063c  e3415f00  loadli.w r3,  44(r30)
000640  00d20002  load_param_i r4, 1
000644  e3026f00  loadli.w r5,  48(r30)
000648  80530002  load_param_i r7, 0
00064c  2bf3ffff  lui r6, 1048575
000650  670f0ffe  storeli.w zero, -16(r30)
000654  670e0ffe  storeli.w zero, -32(r30)
000658  670d0ffe  storeli.w zero, -48(r30)
00065c  670c0ffe  storeli.w zero, -64(r30)
000660  e70f0ffc  storeli.w zero, -264(r30)
000664  674b0ffa  storeli.w zero, -588(r30)
000668  e74e0ff8  storeli.w zero, -788(r30)
00066c  e7060ff6  storeli.w zero, -1176(r30)
000670  0b912120  mul.s r2, r3, r2
000674  9f010200  addli r3, r4, 0
000678  8b115150  fmac.s r3, r2, r5
00067c  8b125120  mul.s r5, r2, r5
000680  9ff1f1ff  addli r3, r3, -1
000684  8b914130  div.s r3, r3, r4
000688  1b12f3ff  ori r4, r6, 4095
00068c  674f4ffe  storeli.w r4, -12(r30)
000690  e70f4ffe  storeli.w r4, -8(r30)
000694  e74f4ffe  storeli.w r4, -4(r30)
000698  674e4ffe  storeli.w r4, -28(r30)
00069c  e70e4ffe  storeli.w r4, -24(r30)
0006a0  e74e4ffe  storeli.w r4, -20(r30)
0006a4  674d4ffe  storeli.w r4, -44(r30)
0006a8  e70d4ffe  storeli.w r4, -40(r30)
0006ac  e74d4ffe  storeli.w r4, -36(r30)
0006b0  674c4ffe  storeli.w r4, -60(r30)
0006b4  e70c4ffe  storeli.w r4, -56(r30)
0006b8  e74c4ffe  storeli.w r4, -52(r30)
0006bc  e74f4ffc  storeli.w r4, -260(r30)
0006c0  67004ffe  storeli.w r4, -256(r30)
0006c4  67404ffe  storeli.w r4, -252(r30)
0006c8  e7004ffe  storeli.w r4, -248(r30)
0006cc  e7404ffe  storeli.w r4, -244(r30)
0006d0  67014ffe  storeli.w r4, -240(r30)
0006d4  67414ffe  storeli.w r4, -236(r30)
0006d8  e7014ffe  storeli.w r4, -232(r30)
0006dc  e7414ffe  storeli.w r4, -228(r30)
0006e0  67024ffe  storeli.w r4, -224(r30)
0006e4  67424ffe  storeli.w r4, -220(r30)
0006e8  e7024ffe  storeli.w r4, -216(r30)
0006ec  e7424ffe  storeli.w r4, -212(r30)
0006f0  67034ffe  storeli.w r4, -208(r30)
0006f4  67434ffe  storeli.w r4, -204(r30)
0006f8  e7034ffe  storeli.w r4, -200(r30)
0006fc  e7434ffe  storeli.w r4, -196(r30)
000700  67044ffe  storeli.w r4, -192(r30)
000704  67444ffe  storeli.w r4, -188(r30)
000708  e7044ffe  storeli.w r4, -184(r30)
00070c  e7444ffe  storeli.w r4, -180(r30)
000710  67054ffe  storeli.w r4, -176(r30)
000714  67454ffe  storeli.w r4, -172(r30)
000718  e7054ffe  storeli.w r4, -168(r30)
00071c  e7454ffe  storeli.w r4, -164(r30)
000720  67064ffe  storeli.w r4, -160(r30)
000724  67464ffe  storeli.w r4, -156(r30)
000728  e7064ffe  storeli.w r4, -152(r30)
00072c  e7464ffe  storeli.w r4, -148(r30)
000730  67074ffe  storeli.w r4, -144(r30)
000734  67474ffe  storeli.w r4, -140(r30)
000738  e7074ffe  storeli.w r4, -136(r30)
00073c  e7474ffe  storeli.w r4, -132(r30)
000740  67084ffe  storeli.w r4, -128(r30)
000744  67484ffe  storeli.w r4, -124(r30)
000748  e7084ffe  storeli.w r4, -120(r30)
00074c  e7484ffe  storeli.w r4, -116(r30)
000750  67094ffe  storeli.w r4, -112(r30)
000754  67494ffe  storeli.w r4, -108(r30)
000758  e7094ffe  storeli.w r4, -104(r30)
00075c  e7494ffe  storeli.w r4, -100(r30)
000760  670a4ffe  storeli.w r4, -96(r30)
000764  674a4ffe  storeli.w r4, -92(r30)
000768  e70a4ffe  storeli.w r4, -88(r30)
00076c  e74a4ffe  storeli.w r4, -84(r30)
000770  670b4ffe  storeli.w r4, -80(r30)
000774  674b4ffe  storeli.w r4, -76(r30)
000778  e70b4ffe  storeli.w r4, -72(r30)
00077c  e74b4ffe  storeli.w r4, -68(r30)
000780  e70b4ffa  storeli.w r4, -584(r30)
000784  e74b4ffa  storeli.w r4, -580(r30)
000788  670c4ffa  storeli.w r4, -576(r30)
00078c  674c4ffa  storeli.w r4, -572(r30)
000790  e70c4ffa  storeli.w r4, -568(r30)
000794  e74c4ffa  storeli.w r4, -564(r30)
000798  670d4ffa  storeli.w r4, -560(r30)
00079c  674d4ffa  storeli.w r4, -556(r30)
0007a0  e70d4ffa  storeli.w r4, -552(r30)
0007a4  e74d4ffa  storeli.w r4, -548(r30)
0007a8  670e4ffa  storeli.w r4, -544(r30)
0007ac  674e4ffa  storeli.w r4, -540(r30)
0007b0  e70e4ffa  storeli.w r4, -536(r30)
0007b4  e74e4ffa  storeli.w r4, -532(r30)
0007b8  670f4ffa  storeli.w r4, -528(r30)
0007bc  674f4ffa  storeli.w r4, -524(r30)
0007c0  e70f4ffa  storeli.w r4, -520(r30)
0007c4  e74f4ffa  storeli.w r4, -516(r30)
0007c8  67004ffc  storeli.w r4, -512(r30)
0007cc  67404ffc  storeli.w r4, -508(r30)
0007d0  e7004ffc  storeli.w r4, -504(r30)
0007d4  e7404ffc  storeli.w r4, -500(r30)
0007d8  67014ffc  storeli.w r4, -496(r30)
0007dc  67414ffc  storeli.w r4, -492(r30)
0007e0  e7014ffc  storeli.w r4, -488(r30)
0007e4  e7414ffc  storeli.w r4, -484(r30)
0007e8  67024ffc  storeli.w r4, -480(r30)
0007ec  67424ffc  storeli.w r4, -476(r30)
0007f0  e7024ffc  storeli.w r4, -472(r30)
0007f4  e7424ffc  storeli.w r4, -468(r30)
0007f8  67034ffc  storeli.w r4, -464(r30)
0007fc  67434ffc  storeli.w r4, -460(r30)
000800  e7034ffc  storeli.w r4, -456(r30)
000804  e7434ffc  storeli.w r4, -452(r30)
000808  67044ffc  storeli.w r4, -448(r30)
00080c  67444ffc  storeli.w r4, -444(r30)
000810  e7044ffc  storeli.w r4, -440(r30)
000814  e7444ffc  storeli.w r4, -436(r30)
000818  67054ffc  storeli.w r4, -432(r30)
00081c  67454ffc  storeli.w r4, -428(r30)
000820  e7054ffc  storeli.w r4, -424(r30)
000824  e7454ffc  storeli.w r4, -420(r30)
000828  67064ffc  storeli.w r4, -416(r30)
00082c  67464ffc  storeli.w r4, -412(r30)
000830  e7064ffc  storeli.w r4, -408(r30)
000834  e7464ffc  storeli.w r4, -404(r30)
000838  67074ffc  storeli.w r4, -400(r30)
00083c  67474ffc  storeli.w r4, -396(r30)
000840  e7074ffc  storeli.w r4, -392(r30)
000844  e7474ffc  storeli.w r4, -388(r30)
000848  67084ffc  storeli.w r4, -384(r30)
00084c  67484ffc  storeli.w r4, -380(r30)
000850  e7084ffc  storeli.w r4, -376(r30)
000854  e7484ffc  storeli.w r4, -372(r30)
000858  67094ffc  storeli.w r4, -368(r30)
00085c  67494ffc  storeli.w r4, -364(r30)
000860  e7094ffc  storeli.w r4, -360(r30)
000864  e7494ffc  storeli.w r4, -356(r30)
000868  670a4ffc  storeli.w r4, -352(r30)
00086c  674a4ffc  storeli.w r4, -348(r30)
000870  e70a4ffc  storeli.w r4, -344(r30)
000874  e74a4ffc  storeli.w r4, -340(r30)
000878  670b4ffc  storeli.w r4, -336(r30)
00087c  674b4ffc  storeli.w r4, -332(r30)
000880  e70b4ffc  storeli.w r4, -328(r30)
000884  e74b4ffc  storeli.w r4, -324(r30)
000888  670c4ffc  storeli.w r4, -320(r30)
00088c  674c4ffc  storeli.w r4, -316(r30)
000890  e70c4ffc  storeli.w r4, -312(r30)
000894  e74c4ffc  storeli.w r4, -308(r30)
000898  670d4ffc  storeli.w r4, -304(r30)
00089c  674d4ffc  storeli.w r4, -300(r30)
0008a0  e70d4ffc  storeli.w r4, -296(r30)
0008a4  e74d4ffc  storeli.w r4, -292(r30)
0008a8  670e4ffc  storeli.w r4, -288(r30)
0008ac  674e4ffc  storeli.w r4, -284(r30)
0008b0  e70e4ffc  storeli.w r4, -280(r30)
0008b4  e74e4ffc  storeli.w r4, -276(r30)
0008b8  670f4ffc  storeli.w r4, -272(r30)
0008bc  674f4ffc  storeli.w r4, -268(r30)
0008c0  670f4ff8  storeli.w r4, -784(r30)
0008c4  674f4ff8  storeli.w r4, -780(r30)
0008c8  e70f4ff8  storeli.w r4, -776(r30)
0008cc  e74f4ff8  storeli.w r4, -772(r30)
0008d0  67004ffa  storeli.w r4, -768(r30)
0008d4  67404ffa  storeli.w r4, -764(r30)
0008d8  e7004ffa  storeli.w r4, -760(r30)
0008dc  e7404ffa  storeli.w r4, -756(r30)
0008e0  67014ffa  storeli.w r4, -752(r30)
0008e4  67414ffa  storeli.w r4, -748(r30)
0008e8  e7014ffa  storeli.w r4, -744(r30)
0008ec  e7414ffa  storeli.w r4, -740(r30)
0008f0  67024ffa  storeli.w r4, -736(r30)
0008f4  67424ffa  storeli.w r4, -732(r30)
0008f8  e7024ffa  storeli.w r4, -728(r30)
0008fc  e7424ffa  storeli.w r4, -724(r30)
000900  67034ffa  storeli.w r4, -720(r30)
000904  67434ffa  storeli.w r4, -716(r30)
000908  e7034ffa  storeli.w r4, -712(r30)
00090c  e7434ffa  storeli.w r4, -708(r30)
000910  67044ffa  storeli.w r4, -704(r30)
000914  67444ffa  storeli.w r4, -700(r30)
000918  e7044ffa  storeli.w r4, -696(r30)
00091c  e7444ffa  storeli.w r4, -692(r30)
000920  67054ffa  storeli.w r4, -688(r30)
000924  67454ffa  storeli.w r4, -684(r30)
000928  e7054ffa  storeli.w r4, -680(r30)
00092c  e7454ffa  storeli.w r4, -676(r30)
000930  67064ffa  storeli.w r4, -672(r30)
000934  67464ffa  storeli.w r4, -668(r30)
000938  e7064ffa  storeli.w r4, -664(r30)
00093c  e7464ffa  storeli.w r4, -660(r30)
000940  67074ffa  storeli.w r4, -656(r30)
000944  67474ffa  storeli.w r4, -652(r30)
000948  e7074ffa  storeli.w r4, -648(r30)
00094c  e7474ffa  storeli.w r4, -644(r30)
000950  67084ffa  storeli.w r4, -640(r30)
000954  67484ffa  storeli.w r4, -636(r30)
000958  e7084ffa  storeli.w r4, -632(r30)
00095c  e7484ffa  storeli.w r4, -628(r30)
000960  67094ffa  storeli.w r4, -624(r30)
000964  67494ffa  storeli.w r4, -620(r30)
000968  e7094ffa  storeli.w r4, -616(r30)
00096c  e7494ffa  storeli.w r4, -612(r30)
000970  670a4ffa  storeli.w r4, -608(r30)
000974  674a4ffa  storeli.w r4, -604(r30)
000978  e70a4ffa  storeli.w r4, -600(r30)
00097c  e74a4ffa  storeli.w r4, -596(r30)
000980  670b4ffa  storeli.w r4, -592(r30)
000984  e7464ff6  storeli.w r4, -1172(r30)
000988  67074ff6  storeli.w r4, -1168(r30)
00098c  67474ff6  storeli.w r4, -1164(r30)
000990  e7074ff6  storeli.w r4, -1160(r30)
000994  e7474ff6  storeli.w r4, -1156(r30)
000998  67084ff6  storeli.w r4, -1152(r30)
00099c  67484ff6  storeli.w r4, -1148(r30)
0009a0  e7084ff6  storeli.w r4, -1144(r30)
0009a4  e7484ff6  storeli.w r4, -1140(r30)
0009a8  67094ff6  storeli.w r4, -1136(r30)
0009ac  67494ff6  storeli.w r4, -1132(r30)
0009b0  e7094ff6  storeli.w r4, -1128(r30)
0009b4  e7494ff6  storeli.w r4, -1124(r30)
0009b8  670a4ff6  storeli.w r4, -1120(r30)
0009bc  674a4ff6  storeli.w r4, -1116(r30)
0009c0  e70a4ff6  storeli.w r4, -1112(r30)
0009c4  e74a4ff6  storeli.w r4, -1108(r30)
0009c8  670b4ff6  storeli.w r4, -1104(r30)
0009cc  674b4ff6  storeli.w r4, -1100(r30)
0009d0  e70b4ff6  storeli.w r4, -1096(r30)
0009d4  e74b4ff6  storeli.w r4, -1092(r30)
0009d8  670c4ff6  storeli.w r4, -1088(r30)
0009dc  674c4ff6  storeli.w r4, -1084(r30)
0009e0  e70c4ff6  storeli.w r4, -1080(r30)
0009e4  e74c4ff6  storeli.w r4, -1076(r30)
0009e8  670d4ff6  storeli.w r4, -1072(r30)
0009ec  674d4ff6  storeli.w r4, -1068(r30)
0009f0  e70d4ff6  storeli.w r4, -1064(r30)
0009f4  e74d4ff6  storeli.w r4, -1060(r30)
0009f8  670e4ff6  storeli.w r4, -1056(r30)
0009fc  674e4ff6  storeli.w r4, -1052(r30)
000a00  e70e4ff6  storeli.w r4, -1048(r30)
000a04  e74e4ff6  storeli.w r4, -1044(r30)
000a08  670f4ff6  storeli.w r4, -1040(r30)
000a0c  674f4ff6  storeli.w r4, -1036(r30)
000a10  e70f4ff6  storeli.w r4, -1032(r30)
000a14  e74f4ff6  storeli.w r4, -1028(r30)
000a18  67004ff8  storeli.w r4, -1024(r30)
000a1c  67404ff8  storeli.w r4, -1020(r30)
000a20  e7004ff8  storeli.w r4, -1016(r30)
000a24  e7404ff8  storeli.w r4, -1012(r30)
000a28  67014ff8  storeli.w r4, -1008(r30)
000a2c  67414ff8  storeli.w r4, -1004(r30)
000a30  e7014ff8  storeli.w r4, -1000(r30)
000a34  e7414ff8  storeli.w r4, -996(r30)
000a38  67024ff8  storeli.w r4, -992(r30)
000a3c  67424ff8  storeli.w r4, -988(r30)
000a40  e7024ff8  storeli.w r4, -984(r30)
000a44  e7424ff8  storeli.w r4, -980(r30)
000a48  67034ff8  storeli.w r4, -976(r30)
000a4c  67434ff8  storeli.w r4, -972(r30)
000a50  e7034ff8  storeli.w r4, -968(r30)
000a54  e7434ff8  storeli.w r4, -964(r30)
000a58  67044ff8  storeli.w r4, -960(r30)
000a5c  67444ff8  storeli.w r4, -956(r30)
000a60  e7044ff8  storeli.w r4, -952(r30)
000a64  e7444ff8  storeli.w r4, -948(r30)
000a68  67054ff8  storeli.w r4, -944(r30)
000a6c  67454ff8  storeli.w r4, -940(r30)
000a70  e7054ff8  storeli.w r4, -936(r30)
000a74  e7454ff8  storeli.w r4, -932(r30)
000a78  67064ff8  storeli.w r4, -928(r30)
000a7c  67464ff8  storeli.w r4, -924(r30)
000a80  e7064ff8  storeli.w r4, -920(r30)
000a84  e7464ff8  storeli.w r4, -916(r30)
000a88  67074ff8  storeli.w r4, -912(r30)
000a8c  67474ff8  storeli.w r4, -908(r30)
000a90  e7074ff8  storeli.w r4, -904(r30)
000a94  e7474ff8  storeli.w r4, -900(r30)
000a98  67084ff8  storeli.w r4, -896(r30)
000a9c  67484ff8  storeli.w r4, -892(r30)
000aa0  e7084ff8  storeli.w r4, -888(r30)
000aa4  e7484ff8  storeli.w r4, -884(r30)
000aa8  67094ff8  storeli.w r4, -880(r30)
000aac  67494ff8  storeli.w r4, -876(r30)
000ab0  e7094ff8  storeli.w r4, -872(r30)
000ab4  e7494ff8  storeli.w r4, -868(r30)
000ab8  670a4ff8  storeli.w r4, -864(r30)
000abc  674a4ff8  storeli.w r4, -860(r30)
000ac0  e70a4ff8  storeli.w r4, -856(r30)
000ac4  e74a4ff8  storeli.w r4, -852(r30)
000ac8  670b4ff8  storeli.w r4, -848(r30)
000acc  674b4ff8  storeli.w r4, -844(r30)
000ad0  e70b4ff8  storeli.w r4, -840(r30)
000ad4  e74b4ff8  storeli.w r4, -836(r30)
000ad8  670c4ff8  storeli.w r4, -832(r30)
000adc  674c4ff8  storeli.w r4, -828(r30)
000ae0  e70c4ff8  storeli.w r4, -824(r30)
000ae4  e74c4ff8  storeli.w r4, -820(r30)
000ae8  670d4ff8  storeli.w r4, -816(r30)
000aec  674d4ff8  storeli.w r4, -812(r30)
000af0  e70d4ff8  storeli.w r4, -808(r30)
000af4  e74d4ff8  storeli.w r4, -804(r30)
000af8  670e4ff8  storeli.w r4, -800(r30)
000afc  674e4ff8  storeli.w r4, -796(r30)
000b00  e70e4ff8  storeli.w r4, -792(r30)
000b04  0b917120  mul.s r2, r3, r7
000b08  8b917150  fmac.s r3, r3, r7
000b0c  8b915140  min.s r3, r3, r5
000b10  4bde2102  ble.s r3, r2, 1940
000b14  b3910128  sext_int2long r[4:5], r3
000b18  b3120128  sext_int2long r[6:7], r2
000b1c  1f71f00f  addli r2, zero, 2047
000b20  e30aefff  loadli.w r21,  -16(r30)
000b24  6306cfff  loadli.w r12,  -32(r30)
000b28  e30bafff  loadli.w r23,  -48(r30)
000b2c  e3088fff  loadli.w r17,  -64(r30)
000b30  e304fffd  loadli.w r9,  -264(r30)
000b34  e3466ffb  loadli.w r13,  -588(r30)
000b38  6347dff9  loadli.w r14,  -788(r30)
000b3c  e307dff6  loadli.w r15,  -1176(r30)
000b40  1f088000  addli r16, zero, 64
000b44  9f3c0000  addli r25, zero, 3
000b48  1f4a0000  addli r20, zero, 4
000b4c  1f2b0000  addli r22, zero, 2
000b50  9f0dc000  addli r27, zero, 96
000b54  2b8e0100  lui r28, 24
000b58  1f5d0000  addli r26, zero, 5
000b5c  e7050ff6  storeli.w zero, -1192(r30)
000b60  ab80ffff  lui r1, 1048568
000b64  733c3fb0  store.d r[4:5], -1256(r30)
000b68  ab611500  lui r3, 342
000b6c  73381fb0  store.d r[2:3], -1264(r30)
000b70  9b900160  ori r1, r3, 1536
000b74  ab810d00  lui r3, 216
000b78  e7401ff6  storeli.w r1, -1268(r30)
000b7c  abe01600  lui r1, 366
000b80  1b91d1b4  ori r2, r3, 2893
000b84  abf17fff  lui r3, 1046527
000b88  9b900060  ori r1, r1, 1536
000b8c  e7002ff6  storeli.w r2, -1272(r30)
000b90  1b91f1ff  ori r2, r3, 4095
000b94  9f014000  addli r3, zero, 32
000b98  67401ff6  storeli.w r1, -1276(r30)
000b9c  abf07f7f  lui r1, 522239
000ba0  67002ff6  storeli.w r2, -1280(r30)
000ba4  9b90f0ff  ori r1, r1, 4095
000ba8  e74f1ff4  storeli.w r1, -1284(r30)
000bac  5b0f0000  j 120
000bb0  eb500f01  load.d r[2:3], 16(r30)
000bb4  6b520fb3  load.d r[5:6], -1232(r30)
000bb8  80390002  core_id r19
000bbc  8ba04010  add.ul r[2:3], r[2:3], r[5:6]
000bc0  9f521000  addli r5, zero, 13
000bc4  7d900200  xwait r5, 0
000bc8  1d000a00  lock zero, r20
000bcc  9bb22300  slli r5, r7, 2
000bd0  15000000  dma_cfg zero, zero, zero, 0
000bd4  15000104  dma_cfg zero, r2, zero, 2
000bd8  15835006  dma_cfg r6, r1, r5, 3
000bdc  9f000004  addli r1, zero, 512
000be0  9580a008  dma_cfg r1, r1, r10, 4
000be4  35000000  dma_run zero
000be8  1d100a00  unlock r20
000bec  9f401000  addli r1, zero, 12
000bf0  e34b9ff6  loadli.w r23,  -1204(r30)
000bf4  7d800000  xsignal r1, 0
000bf8  e34aaff6  loadli.w r21,  -1196(r30)
000bfc  6306aff6  loadli.w r12,  -1200(r30)
000c00  9f9b0b00  addli r23, r23, 1
000c04  eb520fb4  load.d r[6:7], -1216(r30)
000c08  eb508fb1  load.d r[2:3], -1256(r30)
000c0c  9f980800  addli r17, r17, 1
000c10  1f160600  addli r12, r12, 1
000c14  9f9a0a00  addli r21, r21, 1
000c18  a7920200  addli.d r[6:7], r[6:7], 1
000c1c  93b01204  setlt.sl r1, r[6:7], r[2:3]
000c20  b7f90002  beq r1, zero, 1660
000c24  80300002  core_id r1
000c28  e7451ff7  storeli.w r17, -1188(r30)
000c2c  6705cff6  storeli.w r12, -1200(r30)
000c30  3bb04001  bneq r1, r20, 12
000c34  9f301000  addli r1, zero, 11
000c38  7d900000  xwait r1, 0
000c3c  e3006f00  loadli.w r1,  48(r30)
000c40  73305fb4  store.d r[6:7], -1216(r30)
000c44  1f620000  addli r4, zero, 6
000c48  67455ff7  storeli.w r21, -1196(r30)
000c4c  e7447ff7  storeli.w r23, -1204(r30)
000c50  8b921230  div.s r5, r5, r1
000c54  e3405f00  loadli.w r1,  44(r30)
000c58  0b961230  div.s r12, r5, r1
000c5c  9f001000  addli r1, zero, 8
000c60  8b180631  div.s r17, r12, r16
000c64  9bb23800  slli r5, r17, 3
000c68  0b935018  sub.s r6, r1, r5
000c6c  0b191340  min.s r18, r6, r1
000c70  9f700000  addli r1, zero, 7
000c74  0b132639  mod.s r6, r12, r18
000c78  8b936210  add.s r7, r5, r6
000c7c  13847004  setlt.u r8, r1, r7
000c80  b3820328  zext_int2long r[6:7], r7
000c84  9f401000  addli r1, zero, 12
000c88  73345fb2  store.d r[6:7], -1240(r30)
000c8c  97b21202  sll.d r[6:7], r[6:7], r1
000c90  3b300400  bneq r8, zero, 12
000c94  33050028  zext_int2long r[11:12], zero
000c98  db010000  j 12
000c9c  eb500fb1  load.d r[2:3], -1264(r30)
000ca0  17851202  and.d r[11:12], r[6:7], r[2:3]
000ca4  9bb86800  slli r17, r17, 6
000ca8  e300bff6  loadli.w r1,  -1192(r30)
000cac  1bb16300  slli r2, r7, 6
000cb0  9f196000  addli r19, zero, 49
000cb4  1f040000  addli r8, zero, 0
000cb8  9f030000  addli r7, zero, 0
000cbc  0b161619  sub.s r12, r12, r17
000cc0  67422ff6  storeli.w r2, -1244(r30)
000cc4  8b989039  mod.s r17, r1, r25
000cc8  9f900000  addli r1, r1, 1
000ccc  0b162631  div.s r12, r12, r18
000cd0  e7051ff6  storeli.w r1, -1192(r30)
000cd4  9f700000  addli r1, zero, 7
000cd8  9bbaf800  slli r21, r17, 15
000cdc  b30b0628  zext_int2long r[24:25], r12
000ce0  97bb1b02  sll.d r[24:25], r[24:25], r1
000ce4  9b307600  slli r1, r12, 7
000ce8  1f160000  addli r12, zero, 1
000cec  e7431ff6  storeli.w r1, -1220(r30)
000cf0  eb508f00  load.d r[2:3], 8(r30)
000cf4  97b86b03  sll.d r[18:19], r[24:25], r22
000cf8  73381fb3  store.d r[18:19], -1232(r30)
000cfc  8ba01011  add.ul r[2:3], r[2:3], r[18:19]
000d00  73301fb6  store.d r[2:3], -1184(r30)
000d04  00310002  core_id r2
000d08  5b090000  j 72
000d0c  7d100b00  xwait r22, 0
000d10  7d100d00  xwait r26, 0
000d14  1d000000  lock zero, zero
000d18  010b0000  ds_cfg r22, zero, 0
000d1c  81010002  ds_cfg r3, zero, 1
000d20  8101001c  ds_cfg r3, zero, 14
000d24  0108001a  ds_cfg r16, zero, 13
000d28  a1183902  shuffle_batch r17, r18, r3, 1
000d2c  1d100000  unlock zero
000d30  7d800c00  xsignal r25, 0
000d34  7d000a00  xsignal r20, 0
000d38  9f960600  addli r13, r13, 1
000d3c  9f940400  addli r9, r9, 1
000d40  37090600  beq r12, zero, 576
000d44  9f930300  addli r7, r7, 1
000d48  1f140000  addli r8, zero, 1
000d4c  1f060000  addli r12, zero, 0
000d50  8b183739  mod.s r17, r14, r19
000d54  0b99b739  mod.s r18, r15, r27
000d58  9f970700  addli r15, r15, 1
000d5c  1f170700  addli r14, r14, 1
000d60  1b061600  andi r12, r12, 1
000d64  9bbbd800  slli r23, r17, 13
000d68  9b38d900  slli r17, r18, 13
000d6c  0b99cb11  add.s r18, r23, r28
000d70  377e61ff  beq r2, r22, -100
000d74  b30b0428  zext_int2long r[24:25], r8
000d78  80300002  core_id r1
000d7c  1f110000  addli r2, zero, 1
000d80  3b822000  bneq r1, r2, 128
000d84  97bbab03  sll.d r[24:25], r[24:25], r26
000d88  b30c0828  zext_int2long r[26:27], r16
000d8c  9f088003  addli r17, zero, 448
000d90  eb5d0f00  load.d r[28:29], 0(r30)
000d94  1f340000  addli r8, zero, 3
000d98  979b5b02  or.d r[24:25], r[24:25], r[6:7]
000d9c  7d100400  xwait r8, 0
000da0  1d000a00  lock zero, r20
000da4  1f040002  addli r8, zero, 256
000da8  15000000  dma_cfg zero, zero, zero, 0
000dac  8bb0ab18  sub.sl r[2:3], r[24:25], r[11:12]
000db0  97bb6b03  sll.d r[24:25], r[24:25], r22
000db4  8f909061  div.sl r[2:3], r[2:3], r[26:27]
000db8  b38c0828  zext_int2long r[26:27], r17
000dbc  8bab7d11  add.ul r[24:25], r[28:29], r[24:25]
000dc0  2b8e0100  lui r28, 24
000dc4  9f0dc000  addli r27, zero, 96
000dc8  15000c04  dma_cfg zero, r24, zero, 2
000dcc  8bbc9041  min.sl r[26:27], r[2:3], r[26:27]
000dd0  8bb01c18  sub.sl r[2:3], r[26:27], r[2:3]
000dd4  1f5d0000  addli r26, zero, 5
000dd8  9f3c0000  addli r25, zero, 3
000ddc  9f808000  addli r1, r1, 64
000de0  1f010001  addli r2, zero, 128
000de4  15892b06  dma_cfg r18, r23, r2, 3
000de8  15011408  dma_cfg r2, r8, r1, 4
000dec  35000000  dma_run zero
000df0  1d100a00  unlock r20
000df4  7d000b00  xsignal r22, 0
000df8  00310002  core_id r2
000dfc  dbe7ffff  j -196
000e00  1f01a000  addli r2, zero, 80
000e04  8b903439  mod.s r1, r9, r19
000e08  9f940400  addli r9, r9, 1
000e0c  0b912638  mod.s r2, r13, r2
000e10  9f960600  addli r13, r13, 1
000e14  9bb0e000  slli r1, r1, 14
000e18  1b34e100  slli r8, r2, 14
000e1c  2ba10700  lui r2, 122
000e20  0b992010  add.s r18, r1, r2
000e24  9f700000  addli r1, zero, 7
000e28  00310002  core_id r2
000e2c  37711100  beq r2, r1, 92
000e30  9f690000  addli r19, zero, 6
000e34  3b523101  bneq r2, r19, 148
000e38  9f102000  addli r1, zero, 17
000e3c  1f740000  addli r8, zero, 7
000e40  1f620000  addli r4, zero, 6
000e44  7d100400  xwait r8, 0
000e48  97b01b02  sll.d r[2:3], r[24:25], r1
000e4c  eb5b0fb6  load.d r[24:25], -1184(r30)
000e50  1d000a00  lock zero, r20
000e54  1f040004  addli r8, zero, 512
000e58  15000000  dma_cfg zero, zero, zero, 0
000e5c  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000e60  15000104  dma_cfg zero, r2, zero, 2
000e64  15898006  dma_cfg r18, r1, r8, 3
000e68  9f000020  addli r1, zero, 4096
000e6c  00310002  core_id r2
000e70  15843008  dma_cfg r8, r1, r3, 4
000e74  35000000  dma_run zero
000e78  1d100a00  unlock r20
000e7c  7d800900  xsignal r19, 0
000e80  9f196000  addli r19, zero, 49
000e84  dbd7ffff  j -324
000e88  9f101000  addli r1, zero, 9
000e8c  7d100200  xwait r4, 0
000e90  7d900000  xwait r1, 0
000e94  1d000000  lock zero, zero
000e98  9f000001  addli r1, zero, 128
000e9c  010b0000  ds_cfg r22, zero, 0
000ea0  81000002  ds_cfg r1, zero, 1
000ea4  8101001c  ds_cfg r3, zero, 14
000ea8  8100001a  ds_cfg r1, zero, 13
000eac  9f700000  addli r1, zero, 7
000eb0  41043904  shuffle_coa r8, r18, r3, 2
000eb4  1d100000  unlock zero
000eb8  7d800000  xsignal r1, 0
000ebc  9f001000  addli r1, zero, 8
000ec0  7d800000  xsignal r1, 0
000ec4  dbcfffff  j -388
000ec8  1f620000  addli r4, zero, 6
000ecc  bb224101  bneq r2, r20, 168
000ed0  9f001000  addli r1, zero, 8
000ed4  9f196000  addli r19, zero, 49
000ed8  1f190000  addli r18, zero, 1
000edc  9f1b0000  addli r23, zero, 1
000ee0  1f0c0000  addli r24, zero, 0
000ee4  7d100a00  xwait r20, 0
000ee8  7d900000  xwait r1, 0
000eec  b7f00300  beq r7, zero, 60
000ef0  9b30dc00  slli r1, r24, 13
000ef4  1b318c00  slli r2, r24, 8
000ef8  1d000900  lock zero, r18
000efc  1f1c0000  addli r24, zero, 1
000f00  09880101  mm_cfg r16, r3, r16, 0
000f04  97908000  or r1, r1, r8
000f08  17115101  or r2, r2, r21
000f0c  090b2a05  mm_cfg r22, r20, r18, 2
000f10  29911810  mm_acc r2, r17, r1, 8
000f14  9b801b00  andi r1, r23, 1
000f18  9f0b0000  addli r23, zero, 0
000f1c  1d100900  unlock r18
000f20  3bcf00fe  bneq r1, zero, -48
000f24  5b070000  j 56
000f28  9b30dc00  slli r1, r24, 13
000f2c  1b318c00  slli r2, r24, 8
000f30  1d000900  lock zero, r18
000f34  1f1c0000  addli r24, zero, 1
000f38  09880101  mm_cfg r16, r3, r16, 0
000f3c  97908000  or r1, r1, r8
000f40  17115101  or r2, r2, r21
000f44  090b2a05  mm_cfg r22, r20, r18, 2
000f48  29811810  mm r2, r17, r1, 8
000f4c  9b801b00  andi r1, r23, 1
000f50  9f0b0000  addli r23, zero, 0
000f54  1d100900  unlock r18
000f58  3bcf00fe  bneq r1, zero, -48
000f5c  00310002  core_id r2
000f60  9f101000  addli r1, zero, 9
000f64  7d000d00  xsignal r26, 0
000f68  7d800000  xsignal r1, 0
000f6c  3b6706fe  bneq r12, zero, -552
000f70  db020000  j 20
000f74  9f196000  addli r19, zero, 49
000f78  3b3706fe  bneq r12, zero, -564
000f7c  5b020000  j 16
000f80  3b304101  bneq r2, r20, 12
000f84  9f201000  addli r1, zero, 10
000f88  7d800000  xsignal r1, 0
000f8c  e3407ff6  loadli.w r1,  -1220(r30)
000f90  9f020007  addli r5, zero, 896
000f94  e348bff6  loadli.w r17,  -1188(r30)
000f98  1f040001  addli r8, zero, 128
000f9c  00390002  core_id r18
000fa0  b3820228  zext_int2long r[6:7], r5
000fa4  33050428  zext_int2long r[11:12], r8
000fa8  b3800028  zext_int2long r[2:3], r1
000fac  8b939839  mod.s r7, r17, r25
000fb0  8ba25040  min.ul r[6:7], r[2:3], r[6:7]
000fb4  a7820201  addli.d r[6:7], r[6:7], 128
000fb8  8ba21248  max.ul r[6:7], r[6:7], r[2:3]
000fbc  8bb01218  sub.sl r[2:3], r[6:7], r[2:3]
000fc0  9bb29300  slli r5, r7, 9
000fc4  8ba3a040  min.ul r[8:9], r[2:3], r[11:12]
000fc8  abe01300  lui r1, 318
000fcc  2be11300  lui r2, 318
000fd0  1f150000  addli r10, zero, 1
000fd4  0b931210  add.s r6, r5, r1
000fd8  376fa9fc  beq r18, r10, -1064
000fdc  e34b9ff6  loadli.w r23,  -1204(r30)
000fe0  1b110160  ori r2, r2, 1536
000fe4  6306aff6  loadli.w r12,  -1200(r30)
000fe8  8b909b39  mod.s r1, r23, r25
000fec  9f9b0b00  addli r23, r23, 1
000ff0  9bb0f000  slli r1, r1, 15
000ff4  8b922010  add.s r5, r1, r2
000ff8  3b329901  bneq r18, r25, 140
000ffc  9f201000  addli r1, zero, 10
001000  80390002  core_id r19
001004  9f030000  addli r7, zero, 0
001008  2b840000  lui r8, 8
00100c  7d900000  xwait r1, 0
001010  9f401000  addli r1, zero, 12
001014  7d900000  xwait r1, 0
001018  9f701000  addli r1, zero, 15
00101c  7d900000  xwait r1, 0
001020  1d000b00  lock zero, r22
001024  ab00803f  lui r1, 260096
001028  0d000002  ew_cfg zero, zero, zero, 1
00102c  8d900000  ewcoeff_cfg r1, r1, zero, 0
001030  9f70f000  addli r1, zero, 127
001034  0d800004  ew_cfg zero, r1, zero, 2
001038  0d050006  ew_cfg r10, zero, zero, 3
00103c  8b907210  add.s r1, r5, r7
001040  0b917a10  add.s r2, r21, r7
001044  9f830304  addli r7, r7, 512
001048  ad006100  dsmadd r1, r2, r6, 0
00104c  bbcf83fe  bneq r7, r8, -16
001050  9f301000  addli r1, zero, 11
001054  1d100b00  unlock r22
001058  7d800000  xsignal r1, 0
00105c  9f501000  addli r1, zero, 13
001060  7d800000  xsignal r1, 0
001064  9f002000  addli r1, zero, 16
001068  7d800000  xsignal r1, 0
00106c  9f102000  addli r1, zero, 17
001070  7d800000  xsignal r1, 0
001074  9f601000  addli r1, zero, 14
001078  7d800000  xsignal r1, 0
00107c  e34aaff6  loadli.w r21,  -1196(r30)
001080  db70ffff  j -1148
001084  8b109639  mod.s r1, r12, r25
001088  63411ff6  loadli.w r2,  -1268(r30)
00108c  9bb0f000  slli r1, r1, 15
001090  0b932010  add.s r6, r1, r2
001094  80300002  core_id r1
001098  bbc5a001  bneq r1, r26, 368
00109c  9f601000  addli r1, zero, 14
0010a0  ab0300c1  lui r7, 790528
0010a4  80390002  core_id r19
0010a8  1f040000  addli r8, zero, 0
0010ac  ab850000  lui r11, 8
0010b0  7d900000  xwait r1, 0
0010b4  9f302000  addli r1, zero, 19
0010b8  7d900000  xwait r1, 0
0010bc  1d000b00  lock zero, r22
0010c0  0d000002  ew_cfg zero, zero, zero, 1
0010c4  eb500fb1  load.d r[2:3], -1264(r30)
0010c8  0d000104  ew_cfg zero, r2, zero, 2
0010cc  9f501000  addli r1, zero, 13
0010d0  2b81ff40  lui r2, 266232
0010d4  0d0a0006  ew_cfg r20, zero, zero, 3
0010d8  0d0a0a26  ew_cfg r20, r20, zero, 19
0010dc  8d000014  ew_cfg r1, zero, zero, 10
0010e0  e3001ff6  loadli.w r1,  -1272(r30)
0010e4  0d0b1516  ew_cfg r22, r10, r1, 11
0010e8  0d00901b  ew_cfg zero, zero, r25, 13
0010ec  e34aaff6  loadli.w r21,  -1196(r30)
0010f0  8d032a1c  ew_cfg r7, r20, r2, 14
0010f4  2b01803f  lui r2, 260096
0010f8  0d00011e  ew_cfg zero, r2, zero, 15
0010fc  8b909a39  mod.s r1, r21, r25
001100  4da30200  sslut r6, r5, 0
001104  0d000014  ew_cfg zero, zero, zero, 10
001108  0d000026  ew_cfg zero, zero, zero, 19
00110c  1d100b00  unlock r22
001110  63410ff6  loadli.w r2,  -1276(r30)
001114  9bb0f000  slli r1, r1, 15
001118  8b932010  add.s r7, r1, r2
00111c  9f002000  addli r1, zero, 16
001120  7d900000  xwait r1, 0
001124  9f402000  addli r1, zero, 20
001128  7d900000  xwait r1, 0
00112c  1d000b00  lock zero, r22
001130  9f70f000  addli r1, zero, 127
001134  0d000002  ew_cfg zero, zero, zero, 1
001138  0d800004  ew_cfg zero, r1, zero, 2
00113c  0d050006  ew_cfg r10, zero, zero, 3
001140  e3000ff6  loadli.w r1,  -1280(r30)
001144  8d100000  ewcoeff_cfg r1, zero, zero, 0
001148  8b908310  add.s r1, r7, r8
00114c  0b918210  add.s r2, r5, r8
001150  1f040404  addli r8, r8, 512
001154  ad202100  dscmpnsel r1, r2, r2, 0
001158  bb4fb4fe  bneq r8, r11, -16
00115c  1d100b00  unlock r22
001160  9f70f000  addli r1, zero, 127
001164  1f040000  addli r8, zero, 0
001168  1d000b00  lock zero, r22
00116c  0d000002  ew_cfg zero, zero, zero, 1
001170  0d800004  ew_cfg zero, r1, zero, 2
001174  0d050006  ew_cfg r10, zero, zero, 3
001178  e340fff5  loadli.w r1,  -1284(r30)
00117c  8d100000  ewcoeff_cfg r1, zero, zero, 0
001180  8b908310  add.s r1, r7, r8
001184  1f040404  addli r8, r8, 512
001188  ada01008  dscmpnsel r1, r1, r1, 4
00118c  bb5fb4fe  bneq r8, r11, -12
001190  9f102000  addli r1, zero, 17
001194  1d100b00  unlock r22
001198  2b04803f  lui r8, 260096
00119c  7d900000  xwait r1, 0
0011a0  1d000b00  lock zero, r22
0011a4  ab0080bf  lui r1, 784384
0011a8  0d000002  ew_cfg zero, zero, zero, 1
0011ac  0d940000  ewcoeff_cfg r8, r1, zero, 0
0011b0  eb500fb1  load.d r[2:3], -1264(r30)
0011b4  0d000104  ew_cfg zero, r2, zero, 2
0011b8  0d0a0006  ew_cfg r20, zero, zero, 3
0011bc  0d0a4a27  ew_cfg r20, r20, r20, 19
0011c0  ad827200  dsmadd r5, r5, r7, 0
0011c4  9f432000  addli r7, zero, 20
0011c8  0d000026  ew_cfg zero, zero, zero, 19
0011cc  1d100b00  unlock r22
0011d0  7d800300  xsignal r7, 0
0011d4  1d000b00  lock zero, r22
0011d8  0d000002  ew_cfg zero, zero, zero, 1
0011dc  0d140400  ewcoeff_cfg r8, r8, zero, 0
0011e0  0d000104  ew_cfg zero, r2, zero, 2
0011e4  9f701000  addli r1, zero, 15
0011e8  0d0a0006  ew_cfg r20, zero, zero, 3
0011ec  0d0a4a27  ew_cfg r20, r20, r20, 19
0011f0  2d035300  dsmadd r6, r6, r5, 0
0011f4  0d000026  ew_cfg zero, zero, zero, 19
0011f8  1d100b00  unlock r22
0011fc  7d800000  xsignal r1, 0
001200  9f202000  addli r1, zero, 18
001204  5b120000  j 144
001208  e34aaff6  loadli.w r21,  -1196(r30)
00120c  80390002  core_id r19
001210  bbd700fc  bneq r1, zero, -1548
001214  e3404ff6  loadli.w r1,  -1244(r30)
001218  9f028003  addli r5, zero, 448
00121c  1f2c2000  addli r24, zero, 18
001220  33850228  zext_int2long r[11:12], r5
001224  6b528fb2  load.d r[5:6], -1240(r30)
001228  b3900028  sext_int2long r[2:3], r1
00122c  0bb5a040  min.sl r[11:12], r[2:3], r[11:12]
001230  97388203  sll.d r[18:19], r[5:6], r24
001234  27058500  addli.d r[11:12], r[11:12], 64
001238  0b321548  max.sl r[5:6], r[11:12], r[2:3]
00123c  6b558f01  load.d r[11:12], 24(r30)
001240  8b301218  sub.sl r[2:3], r[5:6], r[2:3]
001244  6b520fb3  load.d r[5:6], -1232(r30)
001248  7d100c00  xwait r24, 0
00124c  1d000d00  lock zero, r26
001250  8b281511  add.ul r[18:19], r[11:12], r[18:19]
001254  15000000  dma_cfg zero, zero, zero, 0
001258  33050828  zext_int2long r[11:12], r16
00125c  8ba84810  add.ul r[18:19], r[18:19], r[5:6]
001260  9f120000  addli r5, zero, 1
001264  8bb0a040  min.sl r[2:3], r[2:3], r[11:12]
001268  15800202  dma_cfg zero, r5, zero, 1
00126c  9bb22300  slli r5, r7, 2
001270  15090004  dma_cfg r18, zero, zero, 2
001274  95085306  dma_cfg r17, r6, r5, 3
001278  9f020004  addli r5, zero, 512
00127c  1f030020  addli r6, zero, 4096
001280  e348bff6  loadli.w r17,  -1188(r30)
001284  15831208  dma_cfg r6, r5, r1, 4
001288  9f302000  addli r1, zero, 19
00128c  35000000  dma_run zero
001290  1d100d00  unlock r26
001294  7d800000  xsignal r1, 0
001298  db2dffff  j -1684
00129c  674bdffa  storeli.w r13, -588(r30)
0012a0  e70f9ffc  storeli.w r9, -264(r30)
0012a4  7d000000  xsignal zero, 0
0012a8  bbe00900  bneq r19, zero, 56
0012ac  9f200000  addli r1, zero, 2
0012b0  7d100000  xwait zero, 0
0012b4  7d100000  xwait zero, 0
0012b8  7d100000  xwait zero, 0
0012bc  7d100000  xwait zero, 0
0012c0  7d100000  xwait zero, 0
0012c4  7d100000  xwait zero, 0
0012c8  7d100000  xwait zero, 0
0012cc  7d100000  xwait zero, 0
0012d0  1d800000  lock zero, r1
0012d4  0d000020  ew_cfg zero, zero, zero, 16
0012d8  1d900000  unlock r1
0012dc  7d400000  xsignal_mode_cfg zero
0012e0  9f8e1e0a  addli sp, sp, 1288
0012e4  00a00300  mfence { lm, sm, gm }
0012e8  00100000  exit
0012ec  00100000  exit
0012f0  00100000  exit
0012f4  00100000  exit
0012f8  00100000  exit
0012fc  00100000  exit
001300  00100000  exit
001304  00100000  exit
001308  00100000  exit
00130c  00100000  exit
001310  00100000  exit
001314  00100000  exit
001318  00100000  exit
00131c  00100000  exit
001320  00100000  exit
001324  00100000  exit
001328  00100000  exit
00132c  00100000  exit
001330  00100000  exit
001334  00100000  exit
001338  00100000  exit
00133c  00100000  exit
001340  00100000  exit
001344  00100000  exit
001348  00100000  exit
00134c  00100000  exit
001350  00100000  exit
001354  00100000  exit
001358  00100000  exit
00135c  00100000  exit
001360  00100000  exit
001364  00100000  exit
001368  00100000  exit
00136c  00100000  exit
001370  00100000  exit
001374  00100000  exit
001378  00100000  exit
00137c  00100000  exit
001380  00100000  exit
001384  00100000  exit
001388  00100000  exit
00138c  00100000  exit
001390  00100000  exit
001394  00100000  exit
001398  00100000  exit
00139c  00100000  exit
0013a0  00100000  exit
0013a4  00100000  exit
0013a8  00100000  exit
0013ac  00100000  exit
0013b0  00100000  exit
0013b4  00100000  exit
0013b8  00100000  exit
0013bc  00100000  exit
0013c0  00100000  exit
0013c4  00100000  exit
0013c8  00100000  exit
0013cc  00100000  exit
0013d0  00100000  exit
0013d4  00100000  exit
0013d8  00100000  exit
0013dc  00100000  exit
0013e0  00100000  exit
0013e4  00100000  exit
0013e8  00100000  exit
0013ec  00100000  exit
0013f0  00100000  exit
0013f4  00100000  exit
0013f8  00100000  exit
0013fc  00100000  exit
001400  00100000  exit
001404  00100000  exit
001408  00100000  exit
00140c  00100000  exit
001410  00100000  exit
001414  00100000  exit
001418  00100000  exit
00141c  00100000  exit
001420  00100000  exit
001424  00100000  exit
001428  00100000  exit
00142c  00100000  exit
001430  00100000  exit
001434  00100000  exit
001438  00100000  exit
00143c  00100000  exit
001440  00100000  exit
001444  00100000  exit
001448  00100000  exit
00144c  00100000  exit
001450  00100000  exit
001454  00100000  exit
001458  00100000  exit
00145c  00100000  exit
001460  00100000  exit
001464  00100000  exit
001468  00100000  exit
00146c  00100000  exit
001470  00100000  exit
001474  00100000  exit
001478  00100000  exit
00147c  00100000  exit
001480  00100000  exit
001484  00100000  exit
001488  00100000  exit
00148c  00100000  exit
001490  00100000  exit
001494  00100000  exit
001498  00100000  exit
00149c  00100000  exit
0014a0  00100000  exit
0014a4  00100000  exit
0014a8  00100000  exit
0014ac  00100000  exit
0014b0  00100000  exit
0014b4  00100000  exit
0014b8  00100000  exit
0014bc  00100000  exit
0014c0  00100000  exit
0014c4  00100000  exit
0014c8  00100000  exit
0014cc  00100000  exit
0014d0  00100000  exit
0014d4  00100000  exit
0014d8  00100000  exit
0014dc  00100000  exit
0014e0  00100000  exit
0014e4  00100000  exit
0014e8  00100000  exit
0014ec  00100000  exit
0014f0  00100000  exit
0014f4  00100000  exit
0014f8  00100000  exit
0014fc  00100000  exit
001500  00100000  exit
001504  00100000  exit
001508  00100000  exit
00150c  00100000  exit
001510  00100000  exit
001514  00100000  exit
001518  00100000  exit
00151c  00100000  exit
001520  00100000  exit
001524  00100000  exit
001528  00100000  exit
