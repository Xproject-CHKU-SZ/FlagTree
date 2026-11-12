; SHA-256 6d7110c471f8b72f0e606550b74a72c4005874f0328c19d4ac14699785efe0d5
; P800 SDNN · XTDK LLVM 19 · 1140 / 1140 words decoded
; bound names: triton_tem_fused_add_mm_silu_0
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
0000b4  9f8e9ef5  addli sp, sp, -1336
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8ffe09  addli r30, sp, 1272
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7100100  beq r2, zero, 36
0000cc  abf1ffff  lui r3, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b90f1ff  ori r1, r3, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  dbac0000  j 1380
0000ec  9f220000  addli r5, zero, 2
0000f0  fdd00000  uni_sram_cfg r1, r1
0000f4  1f430000  addli r6, zero, 4
0000f8  eb510f02  load.d r[4:5], 32(r30)
0000fc  9f030020  addli r7, zero, 4096
000100  1d800200  lock zero, r5
000104  8d000020  ew_cfg r1, zero, zero, 16
000108  1d900200  unlock r5
00010c  1d000300  lock zero, r6
000110  15000000  dma_cfg zero, zero, zero, 0
000114  15000204  dma_cfg zero, r4, zero, 2
000118  15807106  dma_cfg zero, r3, r7, 3
00011c  9f014000  addli r3, zero, 32
000120  1f020008  addli r4, zero, 1024
000124  15001008  dma_cfg zero, zero, r1, 4
000128  35000000  dma_run zero
00012c  1d100300  unlock r6
000130  7d800000  xsignal r1, 0
000134  7d900000  xwait r1, 0
000138  1d000000  lock zero, zero
00013c  81020000  ds_cfg r5, zero, 0
000140  01000002  ds_cfg zero, zero, 1
000144  01000016  ds_cfg zero, zero, 11
000148  8101001a  ds_cfg r3, zero, 13
00014c  9f311000  addli r3, zero, 11
000150  0102001c  ds_cfg r4, zero, 14
000154  a1134008  shuffle_batch r7, zero, r4, 4
000158  1d100000  unlock zero
00015c  7d800000  xsignal r1, 0
000160  7d900000  xwait r1, 0
000164  1d800200  lock zero, r5
000168  ab100100  lui r1, 17
00016c  0da00300  ewtable_cfg r7, 0
000170  0da00002  ewtable_cfg r1, 1
000174  abf0ffff  lui r1, 1048575
000178  1d900200  unlock r5
00017c  7d000000  xsignal zero, 0
000180  7d100000  xwait zero, 0
000184  9b90f0ff  ori r1, r1, 4095
000188  80a10004  csr_set csr3, r1
00018c  00d00100  sync_group
000190  7d800100  xsignal r3, 0
000194  7d800100  xsignal r3, 0
000198  7d800100  xsignal r3, 0
00019c  7d800100  xsignal r3, 0
0001a0  9f500000  addli r1, zero, 5
0001a4  9f310000  addli r3, zero, 3
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
0003ec  7d800100  xsignal r3, 0
0003f0  7d800100  xsignal r3, 0
0003f4  7d800100  xsignal r3, 0
0003f8  7d800100  xsignal r3, 0
0003fc  7d800100  xsignal r3, 0
000400  7d800100  xsignal r3, 0
000404  9f101000  addli r1, zero, 9
000408  9f710000  addli r3, zero, 7
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
000624  9f501000  addli r1, zero, 13
000628  9f012000  addli r3, zero, 16
00062c  7d800000  xsignal r1, 0
000630  7d800000  xsignal r1, 0
000634  7d800000  xsignal r1, 0
000638  7d800000  xsignal r1, 0
00063c  7d800100  xsignal r3, 0
000640  7d800100  xsignal r3, 0
000644  7d800100  xsignal r3, 0
000648  7d800100  xsignal r3, 0
00064c  e3005f00  loadli.w r1,  40(r30)
000650  e3415f00  loadli.w r3,  44(r30)
000654  00d20002  load_param_i r4, 1
000658  e3026f00  loadli.w r5,  48(r30)
00065c  80530002  load_param_i r7, 0
000660  2bf3ffff  lui r6, 1048575
000664  e74e0ffe  storeli.w zero, -20(r30)
000668  e70d0ffe  storeli.w zero, -40(r30)
00066c  e74f0ffc  storeli.w zero, -260(r30)
000670  e70b0ffa  storeli.w zero, -584(r30)
000674  e70d0ff8  storeli.w zero, -808(r30)
000678  67450ff6  storeli.w zero, -1196(r30)
00067c  8b901120  mul.s r1, r3, r1
000680  9f010200  addli r3, r4, 0
000684  8b915050  fmac.s r3, r1, r5
000688  8b925020  mul.s r5, r1, r5
00068c  9ff1f1ff  addli r3, r3, -1
000690  8b914130  div.s r3, r3, r4
000694  1b12f3ff  ori r4, r6, 4095
000698  670f4ffe  storeli.w r4, -16(r30)
00069c  674f4ffe  storeli.w r4, -12(r30)
0006a0  e70f4ffe  storeli.w r4, -8(r30)
0006a4  e74f4ffe  storeli.w r4, -4(r30)
0006a8  e74d4ffe  storeli.w r4, -36(r30)
0006ac  670e4ffe  storeli.w r4, -32(r30)
0006b0  674e4ffe  storeli.w r4, -28(r30)
0006b4  e70e4ffe  storeli.w r4, -24(r30)
0006b8  67004ffe  storeli.w r4, -256(r30)
0006bc  67404ffe  storeli.w r4, -252(r30)
0006c0  e7004ffe  storeli.w r4, -248(r30)
0006c4  e7404ffe  storeli.w r4, -244(r30)
0006c8  67014ffe  storeli.w r4, -240(r30)
0006cc  67414ffe  storeli.w r4, -236(r30)
0006d0  e7014ffe  storeli.w r4, -232(r30)
0006d4  e7414ffe  storeli.w r4, -228(r30)
0006d8  67024ffe  storeli.w r4, -224(r30)
0006dc  67424ffe  storeli.w r4, -220(r30)
0006e0  e7024ffe  storeli.w r4, -216(r30)
0006e4  e7424ffe  storeli.w r4, -212(r30)
0006e8  67034ffe  storeli.w r4, -208(r30)
0006ec  67434ffe  storeli.w r4, -204(r30)
0006f0  e7034ffe  storeli.w r4, -200(r30)
0006f4  e7434ffe  storeli.w r4, -196(r30)
0006f8  67044ffe  storeli.w r4, -192(r30)
0006fc  67444ffe  storeli.w r4, -188(r30)
000700  e7044ffe  storeli.w r4, -184(r30)
000704  e7444ffe  storeli.w r4, -180(r30)
000708  67054ffe  storeli.w r4, -176(r30)
00070c  67454ffe  storeli.w r4, -172(r30)
000710  e7054ffe  storeli.w r4, -168(r30)
000714  e7454ffe  storeli.w r4, -164(r30)
000718  67064ffe  storeli.w r4, -160(r30)
00071c  67464ffe  storeli.w r4, -156(r30)
000720  e7064ffe  storeli.w r4, -152(r30)
000724  e7464ffe  storeli.w r4, -148(r30)
000728  67074ffe  storeli.w r4, -144(r30)
00072c  67474ffe  storeli.w r4, -140(r30)
000730  e7074ffe  storeli.w r4, -136(r30)
000734  e7474ffe  storeli.w r4, -132(r30)
000738  67084ffe  storeli.w r4, -128(r30)
00073c  67484ffe  storeli.w r4, -124(r30)
000740  e7084ffe  storeli.w r4, -120(r30)
000744  e7484ffe  storeli.w r4, -116(r30)
000748  67094ffe  storeli.w r4, -112(r30)
00074c  67494ffe  storeli.w r4, -108(r30)
000750  e7094ffe  storeli.w r4, -104(r30)
000754  e7494ffe  storeli.w r4, -100(r30)
000758  670a4ffe  storeli.w r4, -96(r30)
00075c  674a4ffe  storeli.w r4, -92(r30)
000760  e70a4ffe  storeli.w r4, -88(r30)
000764  e74a4ffe  storeli.w r4, -84(r30)
000768  670b4ffe  storeli.w r4, -80(r30)
00076c  674b4ffe  storeli.w r4, -76(r30)
000770  e70b4ffe  storeli.w r4, -72(r30)
000774  e74b4ffe  storeli.w r4, -68(r30)
000778  670c4ffe  storeli.w r4, -64(r30)
00077c  674c4ffe  storeli.w r4, -60(r30)
000780  e70c4ffe  storeli.w r4, -56(r30)
000784  e74c4ffe  storeli.w r4, -52(r30)
000788  670d4ffe  storeli.w r4, -48(r30)
00078c  674d4ffe  storeli.w r4, -44(r30)
000790  e74b4ffa  storeli.w r4, -580(r30)
000794  670c4ffa  storeli.w r4, -576(r30)
000798  674c4ffa  storeli.w r4, -572(r30)
00079c  e70c4ffa  storeli.w r4, -568(r30)
0007a0  e74c4ffa  storeli.w r4, -564(r30)
0007a4  670d4ffa  storeli.w r4, -560(r30)
0007a8  674d4ffa  storeli.w r4, -556(r30)
0007ac  e70d4ffa  storeli.w r4, -552(r30)
0007b0  e74d4ffa  storeli.w r4, -548(r30)
0007b4  670e4ffa  storeli.w r4, -544(r30)
0007b8  674e4ffa  storeli.w r4, -540(r30)
0007bc  e70e4ffa  storeli.w r4, -536(r30)
0007c0  e74e4ffa  storeli.w r4, -532(r30)
0007c4  670f4ffa  storeli.w r4, -528(r30)
0007c8  674f4ffa  storeli.w r4, -524(r30)
0007cc  e70f4ffa  storeli.w r4, -520(r30)
0007d0  e74f4ffa  storeli.w r4, -516(r30)
0007d4  67004ffc  storeli.w r4, -512(r30)
0007d8  67404ffc  storeli.w r4, -508(r30)
0007dc  e7004ffc  storeli.w r4, -504(r30)
0007e0  e7404ffc  storeli.w r4, -500(r30)
0007e4  67014ffc  storeli.w r4, -496(r30)
0007e8  67414ffc  storeli.w r4, -492(r30)
0007ec  e7014ffc  storeli.w r4, -488(r30)
0007f0  e7414ffc  storeli.w r4, -484(r30)
0007f4  67024ffc  storeli.w r4, -480(r30)
0007f8  67424ffc  storeli.w r4, -476(r30)
0007fc  e7024ffc  storeli.w r4, -472(r30)
000800  e7424ffc  storeli.w r4, -468(r30)
000804  67034ffc  storeli.w r4, -464(r30)
000808  67434ffc  storeli.w r4, -460(r30)
00080c  e7034ffc  storeli.w r4, -456(r30)
000810  e7434ffc  storeli.w r4, -452(r30)
000814  67044ffc  storeli.w r4, -448(r30)
000818  67444ffc  storeli.w r4, -444(r30)
00081c  e7044ffc  storeli.w r4, -440(r30)
000820  e7444ffc  storeli.w r4, -436(r30)
000824  67054ffc  storeli.w r4, -432(r30)
000828  67454ffc  storeli.w r4, -428(r30)
00082c  e7054ffc  storeli.w r4, -424(r30)
000830  e7454ffc  storeli.w r4, -420(r30)
000834  67064ffc  storeli.w r4, -416(r30)
000838  67464ffc  storeli.w r4, -412(r30)
00083c  e7064ffc  storeli.w r4, -408(r30)
000840  e7464ffc  storeli.w r4, -404(r30)
000844  67074ffc  storeli.w r4, -400(r30)
000848  67474ffc  storeli.w r4, -396(r30)
00084c  e7074ffc  storeli.w r4, -392(r30)
000850  e7474ffc  storeli.w r4, -388(r30)
000854  67084ffc  storeli.w r4, -384(r30)
000858  67484ffc  storeli.w r4, -380(r30)
00085c  e7084ffc  storeli.w r4, -376(r30)
000860  e7484ffc  storeli.w r4, -372(r30)
000864  67094ffc  storeli.w r4, -368(r30)
000868  67494ffc  storeli.w r4, -364(r30)
00086c  e7094ffc  storeli.w r4, -360(r30)
000870  e7494ffc  storeli.w r4, -356(r30)
000874  670a4ffc  storeli.w r4, -352(r30)
000878  674a4ffc  storeli.w r4, -348(r30)
00087c  e70a4ffc  storeli.w r4, -344(r30)
000880  e74a4ffc  storeli.w r4, -340(r30)
000884  670b4ffc  storeli.w r4, -336(r30)
000888  674b4ffc  storeli.w r4, -332(r30)
00088c  e70b4ffc  storeli.w r4, -328(r30)
000890  e74b4ffc  storeli.w r4, -324(r30)
000894  670c4ffc  storeli.w r4, -320(r30)
000898  674c4ffc  storeli.w r4, -316(r30)
00089c  e70c4ffc  storeli.w r4, -312(r30)
0008a0  e74c4ffc  storeli.w r4, -308(r30)
0008a4  670d4ffc  storeli.w r4, -304(r30)
0008a8  674d4ffc  storeli.w r4, -300(r30)
0008ac  e70d4ffc  storeli.w r4, -296(r30)
0008b0  e74d4ffc  storeli.w r4, -292(r30)
0008b4  670e4ffc  storeli.w r4, -288(r30)
0008b8  674e4ffc  storeli.w r4, -284(r30)
0008bc  e70e4ffc  storeli.w r4, -280(r30)
0008c0  e74e4ffc  storeli.w r4, -276(r30)
0008c4  670f4ffc  storeli.w r4, -272(r30)
0008c8  674f4ffc  storeli.w r4, -268(r30)
0008cc  e70f4ffc  storeli.w r4, -264(r30)
0008d0  e74d4ff8  storeli.w r4, -804(r30)
0008d4  670e4ff8  storeli.w r4, -800(r30)
0008d8  674e4ff8  storeli.w r4, -796(r30)
0008dc  e70e4ff8  storeli.w r4, -792(r30)
0008e0  e74e4ff8  storeli.w r4, -788(r30)
0008e4  670f4ff8  storeli.w r4, -784(r30)
0008e8  674f4ff8  storeli.w r4, -780(r30)
0008ec  e70f4ff8  storeli.w r4, -776(r30)
0008f0  e74f4ff8  storeli.w r4, -772(r30)
0008f4  67004ffa  storeli.w r4, -768(r30)
0008f8  67404ffa  storeli.w r4, -764(r30)
0008fc  e7004ffa  storeli.w r4, -760(r30)
000900  e7404ffa  storeli.w r4, -756(r30)
000904  67014ffa  storeli.w r4, -752(r30)
000908  67414ffa  storeli.w r4, -748(r30)
00090c  e7014ffa  storeli.w r4, -744(r30)
000910  e7414ffa  storeli.w r4, -740(r30)
000914  67024ffa  storeli.w r4, -736(r30)
000918  67424ffa  storeli.w r4, -732(r30)
00091c  e7024ffa  storeli.w r4, -728(r30)
000920  e7424ffa  storeli.w r4, -724(r30)
000924  67034ffa  storeli.w r4, -720(r30)
000928  67434ffa  storeli.w r4, -716(r30)
00092c  e7034ffa  storeli.w r4, -712(r30)
000930  e7434ffa  storeli.w r4, -708(r30)
000934  67044ffa  storeli.w r4, -704(r30)
000938  67444ffa  storeli.w r4, -700(r30)
00093c  e7044ffa  storeli.w r4, -696(r30)
000940  e7444ffa  storeli.w r4, -692(r30)
000944  67054ffa  storeli.w r4, -688(r30)
000948  67454ffa  storeli.w r4, -684(r30)
00094c  e7054ffa  storeli.w r4, -680(r30)
000950  e7454ffa  storeli.w r4, -676(r30)
000954  67064ffa  storeli.w r4, -672(r30)
000958  67464ffa  storeli.w r4, -668(r30)
00095c  e7064ffa  storeli.w r4, -664(r30)
000960  e7464ffa  storeli.w r4, -660(r30)
000964  67074ffa  storeli.w r4, -656(r30)
000968  67474ffa  storeli.w r4, -652(r30)
00096c  e7074ffa  storeli.w r4, -648(r30)
000970  e7474ffa  storeli.w r4, -644(r30)
000974  67084ffa  storeli.w r4, -640(r30)
000978  67484ffa  storeli.w r4, -636(r30)
00097c  e7084ffa  storeli.w r4, -632(r30)
000980  e7484ffa  storeli.w r4, -628(r30)
000984  67094ffa  storeli.w r4, -624(r30)
000988  67494ffa  storeli.w r4, -620(r30)
00098c  e7094ffa  storeli.w r4, -616(r30)
000990  e7494ffa  storeli.w r4, -612(r30)
000994  670a4ffa  storeli.w r4, -608(r30)
000998  674a4ffa  storeli.w r4, -604(r30)
00099c  e70a4ffa  storeli.w r4, -600(r30)
0009a0  e74a4ffa  storeli.w r4, -596(r30)
0009a4  670b4ffa  storeli.w r4, -592(r30)
0009a8  674b4ffa  storeli.w r4, -588(r30)
0009ac  8b907120  mul.s r1, r3, r7
0009b0  8b917150  fmac.s r3, r3, r7
0009b4  8b915140  min.s r3, r3, r5
0009b8  4bc61102  ble.s r3, r1, 1424
0009bc  b3910128  sext_int2long r[4:5], r3
0009c0  33930028  sext_int2long r[7:8], r1
0009c4  ab800200  lui r1, 40
0009c8  e349dfff  loadli.w r19,  -20(r30)
0009cc  6345fffd  loadli.w r10,  -260(r30)
0009d0  e3057ffb  loadli.w r11,  -584(r30)
0009d4  6306bff9  loadli.w r12,  -808(r30)
0009d8  e346aff6  loadli.w r13,  -1196(r30)
0009dc  1f078000  addli r14, zero, 64
0009e0  9f7a0000  addli r21, zero, 7
0009e4  1f490000  addli r18, zero, 4
0009e8  1f2a0000  addli r20, zero, 2
0009ec  9f0cc000  addli r25, zero, 96
0009f0  9f7b6000  addli r23, zero, 55
0009f4  2b0c0200  lui r24, 32
0009f8  1f0d4000  addli r26, zero, 32
0009fc  1f0ea000  addli r28, zero, 80
000a00  1f0b0001  addli r22, zero, 128
000a04  9f070000  addli r15, zero, 0
000a08  73383fb0  store.d r[4:5], -1264(r30)
000a0c  e301bfff  loadli.w r3,  -40(r30)
000a10  9b902084  ori r1, r1, 2114
000a14  e7401ff6  storeli.w r1, -1268(r30)
000a18  67443ff6  storeli.w r3, -1212(r30)
000a1c  9f610000  addli r3, zero, 6
000a20  db0e0000  j 116
000a24  eb530f01  load.d r[8:9], 16(r30)
000a28  eb578fb2  load.d r[16:17], -1240(r30)
000a2c  9f501000  addli r1, zero, 13
000a30  7d900000  xwait r1, 0
000a34  1d000900  lock zero, r18
000a38  9b302200  slli r1, r4, 2
000a3c  1f020004  addli r4, zero, 512
000a40  8ba3f310  add.ul r[8:9], r[8:9], r[16:17]
000a44  15000000  dma_cfg zero, zero, zero, 0
000a48  15000404  dma_cfg zero, r8, zero, 2
000a4c  15831306  dma_cfg r6, r7, r1, 3
000a50  9f100000  addli r1, zero, 1
000a54  15021208  dma_cfg r4, r4, r1, 4
000a58  9f401000  addli r1, zero, 12
000a5c  35000000  dma_run zero
000a60  1d100900  unlock r18
000a64  7d800000  xsignal r1, 0
000a68  e3098ff6  loadli.w r19,  -1216(r30)
000a6c  6b538fb3  load.d r[7:8], -1224(r30)
000a70  6b520fb1  load.d r[5:6], -1264(r30)
000a74  e3476ff6  loadli.w r15,  -1228(r30)
000a78  9f990900  addli r19, r19, 1
000a7c  27130300  addli.d r[7:8], r[7:8], 1
000a80  93304304  setlt.sl r1, r[7:8], r[5:6]
000a84  63428ff6  loadli.w r4,  -1212(r30)
000a88  1f120200  addli r4, r4, 1
000a8c  67444ff6  storeli.w r4, -1212(r30)
000a90  b7e20002  beq r1, zero, 1208
000a94  67043ff7  storeli.w r19, -1216(r30)
000a98  3b302101  bneq r2, r18, 12
000a9c  9f301000  addli r1, zero, 11
000aa0  7d900000  xwait r1, 0
000aa4  63026f00  loadli.w r4,  48(r30)
000aa8  e3425f00  loadli.w r5,  44(r30)
000aac  733c6fb2  store.d r[7:8], -1224(r30)
000ab0  1f140000  addli r8, zero, 1
000ab4  9f041000  addli r9, zero, 8
000ab8  9f000000  addli r1, zero, 0
000abc  9f090000  addli r19, zero, 0
000ac0  0b124330  div.s r4, r6, r4
000ac4  8b932739  mod.s r7, r15, r18
000ac8  9f970700  addli r15, r15, 1
000acc  6743fff6  storeli.w r15, -1228(r30)
000ad0  0b125230  div.s r4, r4, r5
000ad4  9bb7f300  slli r15, r7, 15
000ad8  8b12e230  div.s r5, r4, r14
000adc  1bb33200  slli r6, r5, 3
000ae0  9bb26200  slli r5, r5, 6
000ae4  0b146418  sub.s r8, r8, r6
000ae8  8b125218  sub.s r5, r4, r5
000aec  0b149440  min.s r8, r8, r9
000af0  0b128238  mod.s r4, r4, r8
000af4  8b928230  div.s r5, r5, r8
000af8  0b124310  add.s r4, r6, r4
000afc  1bb37200  slli r6, r5, 7
000b00  67036ff6  storeli.w r6, -1232(r30)
000b04  b3820228  zext_int2long r[6:7], r5
000b08  9b336200  slli r7, r4, 6
000b0c  33080228  zext_int2long r[17:18], r4
000b10  1f621000  addli r4, zero, 14
000b14  97b25203  sll.d r[6:7], r[6:7], r21
000b18  e7417ff6  storeli.w r7, -1252(r30)
000b1c  73300fb3  store.d r[17:18], -1248(r30)
000b20  17b44203  sll.d r[9:10], r[6:7], r20
000b24  6b538f00  load.d r[7:8], 8(r30)
000b28  17324802  sll.d r[5:6], r[17:18], r4
000b2c  9f580000  addli r17, zero, 5
000b30  73348fb2  store.d r[9:10], -1240(r30)
000b34  0b238310  add.ul r[7:8], r[7:8], r[9:10]
000b38  1f140000  addli r8, zero, 1
000b3c  73346fb4  store.d r[7:8], -1208(r30)
000b40  6b530f00  load.d r[7:8], 0(r30)
000b44  0b234310  add.ul r[7:8], r[7:8], r[5:6]
000b48  5b030000  j 24
000b4c  9b001400  andi r1, r8, 1
000b50  37f80000  beq r1, zero, 540
000b54  9f990900  addli r19, r19, 1
000b58  9f100000  addli r1, zero, 1
000b5c  1f040000  addli r8, zero, 0
000b60  0b127639  mod.s r4, r12, r23
000b64  8b929639  mod.s r5, r13, r25
000b68  9f960600  addli r13, r13, 1
000b6c  1f160600  addli r12, r12, 1
000b70  1b32d200  slli r4, r4, 13
000b74  9bb4d200  slli r9, r5, 13
000b78  0b188211  add.s r16, r4, r24
000b7c  37114101  beq r2, r20, 68
000b80  33820028  zext_int2long r[5:6], r1
000b84  bb043100  bneq r2, r3, 288
000b88  17325203  sll.d r[5:6], r[5:6], r21
000b8c  9f300000  addli r1, zero, 3
000b90  7d900000  xwait r1, 0
000b94  1d000900  lock zero, r18
000b98  0b224310  add.ul r[5:6], r[7:8], r[5:6]
000b9c  9f000002  addli r1, zero, 256
000ba0  15000000  dma_cfg zero, zero, zero, 0
000ba4  15800204  dma_cfg zero, r5, zero, 2
000ba8  15086207  dma_cfg r16, r4, r22, 3
000bac  158be008  dma_cfg r22, r1, r14, 4
000bb0  35000000  dma_run zero
000bb4  1d100900  unlock r18
000bb8  7d000a00  xsignal r20, 0
000bbc  db060000  j 52
000bc0  7d100a00  xwait r20, 0
000bc4  7d900800  xwait r17, 0
000bc8  1d000000  lock zero, zero
000bcc  9f300000  addli r1, zero, 3
000bd0  010a0000  ds_cfg r20, zero, 0
000bd4  010d0002  ds_cfg r26, zero, 1
000bd8  010d001c  ds_cfg r26, zero, 14
000bdc  0107001a  ds_cfg r14, zero, 13
000be0  a114a803  shuffle_batch r9, r16, r26, 1
000be4  1d100000  unlock zero
000be8  7d800000  xsignal r1, 0
000bec  7d000900  xsignal r18, 0
000bf0  8b90c539  mod.s r1, r11, r28
000bf4  9f950500  addli r11, r11, 1
000bf8  1f150500  addli r10, r10, 1
000bfc  9bb0e000  slli r1, r1, 14
000c00  3b3d21ff  bneq r2, r18, -180
000c04  1f021000  addli r4, zero, 8
000c08  7d100900  xwait r18, 0
000c0c  1f180000  addli r16, zero, 1
000c10  9f020000  addli r5, zero, 0
000c14  7d100200  xwait r4, 0
000c18  1f120000  addli r4, zero, 1
000c1c  b7f00900  beq r19, zero, 60
000c20  9bbdd200  slli r27, r5, 13
000c24  9bb28200  slli r5, r5, 8
000c28  1d000800  lock zero, r16
000c2c  0907ed00  mm_cfg r14, r26, r14, 0
000c30  979d1d00  or r27, r27, r1
000c34  9792f200  or r5, r5, r15
000c38  090a0905  mm_cfg r20, r18, r16, 2
000c3c  a992b411  mm_acc r5, r9, r27, 8
000c40  9b0d1200  andi r27, r4, 1
000c44  9f120000  addli r5, zero, 1
000c48  1f020000  addli r4, zero, 0
000c4c  1d100800  unlock r16
000c50  3bcf0dfe  bneq r27, zero, -48
000c54  5b070000  j 56
000c58  9bbdd200  slli r27, r5, 13
000c5c  9bb28200  slli r5, r5, 8
000c60  1d000800  lock zero, r16
000c64  0907ed00  mm_cfg r14, r26, r14, 0
000c68  979d1d00  or r27, r27, r1
000c6c  9792f200  or r5, r5, r15
000c70  090a0905  mm_cfg r20, r18, r16, 2
000c74  a982b411  mm r5, r9, r27, 8
000c78  9b0d1200  andi r27, r4, 1
000c7c  9f120000  addli r5, zero, 1
000c80  1f020000  addli r4, zero, 0
000c84  1d100800  unlock r16
000c88  3bcf0dfe  bneq r27, zero, -48
000c8c  9b001400  andi r1, r8, 1
000c90  1f121000  addli r4, zero, 9
000c94  7d800800  xsignal r17, 0
000c98  7d000200  xsignal r4, 0
000c9c  bbea00fe  bneq r1, zero, -328
000ca0  db180000  j 196
000ca4  9f606000  addli r1, zero, 54
000ca8  0b98c539  mod.s r16, r11, r28
000cac  9f950500  addli r11, r11, 1
000cb0  8b101538  mod.s r1, r10, r1
000cb4  1f150500  addli r10, r10, 1
000cb8  9bbde000  slli r27, r1, 14
000cbc  9b30e800  slli r1, r16, 14
000cc0  2be80800  lui r16, 142
000cc4  0b980d11  add.s r16, r27, r16
000cc8  37715101  beq r2, r21, 92
000ccc  9f1d0000  addli r27, zero, 1
000cd0  bb4cb1ff  bneq r2, r27, -208
000cd4  9f102000  addli r1, zero, 17
000cd8  7d900a00  xwait r21, 0
000cdc  eb5a8fb4  load.d r[22:23], -1208(r30)
000ce0  1d000900  lock zero, r18
000ce4  15000000  dma_cfg zero, zero, zero, 0
000ce8  17321202  sll.d r[5:6], r[5:6], r1
000cec  9f000004  addli r1, zero, 512
000cf0  0ba24a10  add.ul r[5:6], r[22:23], r[5:6]
000cf4  1f0b0001  addli r22, zero, 128
000cf8  9f7a0000  addli r21, zero, 7
000cfc  15800204  dma_cfg zero, r5, zero, 2
000d00  15081206  dma_cfg r16, r4, r1, 3
000d04  1f020020  addli r4, zero, 4096
000d08  9500a209  dma_cfg r1, r4, r26, 4
000d0c  35000000  dma_run zero
000d10  1d100900  unlock r18
000d14  7d800100  xsignal r3, 0
000d18  9b001400  andi r1, r8, 1
000d1c  bbe800fe  bneq r1, zero, -456
000d20  5b080000  j 64
000d24  1f121000  addli r4, zero, 9
000d28  7d900100  xwait r3, 0
000d2c  7d100200  xwait r4, 0
000d30  1d000000  lock zero, zero
000d34  010a0000  ds_cfg r20, zero, 0
000d38  010b0002  ds_cfg r22, zero, 1
000d3c  010d001c  ds_cfg r26, zero, 14
000d40  010b001a  ds_cfg r22, zero, 13
000d44  c100a805  shuffle_coa r1, r16, r26, 2
000d48  9f001000  addli r1, zero, 8
000d4c  1d100000  unlock zero
000d50  7d800a00  xsignal r21, 0
000d54  7d800000  xsignal r1, 0
000d58  9b001400  andi r1, r8, 1
000d5c  bbe700fe  bneq r1, zero, -520
000d60  3b302101  bneq r2, r18, 12
000d64  9f201000  addli r1, zero, 10
000d68  7d800000  xsignal r1, 0
000d6c  e3006ff6  loadli.w r1,  -1232(r30)
000d70  33040b28  zext_int2long r[9:10], r22
000d74  33820028  zext_int2long r[5:6], r1
000d78  9f000007  addli r1, zero, 896
000d7c  33830028  zext_int2long r[7:8], r1
000d80  e3408ff6  loadli.w r1,  -1212(r30)
000d84  0b236240  min.ul r[7:8], r[5:6], r[7:8]
000d88  8b902039  mod.s r1, r1, r18
000d8c  27030301  addli.d r[7:8], r[7:8], 128
000d90  0b234348  max.ul r[7:8], r[7:8], r[5:6]
000d94  0b324318  sub.sl r[5:6], r[7:8], r[5:6]
000d98  2b631600  lui r6, 358
000d9c  9bb09000  slli r1, r1, 9
000da0  0b228240  min.ul r[5:6], r[5:6], r[9:10]
000da4  0b936010  add.s r6, r1, r6
000da8  b77131fe  beq r2, r3, -900
000dac  e3098ff6  loadli.w r19,  -1216(r30)
000db0  ab631600  lui r7, 358
000db4  9b930380  ori r7, r7, 2048
000db8  8b902939  mod.s r1, r19, r18
000dbc  9bb0f000  slli r1, r1, 15
000dc0  8b907010  add.s r1, r1, r7
000dc4  b7711101  beq r2, r17, 124
000dc8  9f330000  addli r7, zero, 3
000dcc  2b840000  lui r8, 8
000dd0  3b637100  bneq r2, r7, 216
000dd4  9f221000  addli r5, zero, 10
000dd8  1f020000  addli r4, zero, 0
000ddc  7d900200  xwait r5, 0
000de0  9f421000  addli r5, zero, 12
000de4  7d900200  xwait r5, 0
000de8  9f022000  addli r5, zero, 16
000dec  7d900200  xwait r5, 0
000df0  1d000a00  lock zero, r20
000df4  ab02803f  lui r5, 260096
000df8  0d000002  ew_cfg zero, zero, zero, 1
000dfc  8d920200  ewcoeff_cfg r5, r5, zero, 0
000e00  9f72f000  addli r5, zero, 127
000e04  0d800204  ew_cfg zero, r5, zero, 2
000e08  9f120000  addli r5, zero, 1
000e0c  8d020006  ew_cfg r5, zero, zero, 3
000e10  8b924010  add.s r5, r1, r4
000e14  8b934710  add.s r7, r15, r4
000e18  1f020204  addli r4, r4, 512
000e1c  ad826300  dsmadd r5, r7, r6, 0
000e20  bb4f82fe  bneq r4, r8, -16
000e24  9f301000  addli r1, zero, 11
000e28  1d100a00  unlock r20
000e2c  7d800000  xsignal r1, 0
000e30  9f501000  addli r1, zero, 13
000e34  7d800000  xsignal r1, 0
000e38  9f601000  addli r1, zero, 14
000e3c  db200000  j 260
000e40  1f621000  addli r4, zero, 14
000e44  7d100200  xwait r4, 0
000e48  1d000a00  lock zero, r20
000e4c  2b02803f  lui r4, 260096
000e50  0d000002  ew_cfg zero, zero, zero, 1
000e54  0d104000  ewcoeff_cfg zero, zero, r4, 0
000e58  1f120000  addli r4, zero, 1
000e5c  0d020024  ew_cfg r4, zero, zero, 18
000e60  0d0a0014  ew_cfg r20, zero, zero, 10
000e64  e3421ff6  loadli.w r5,  -1268(r30)
000e68  0d0a5216  ew_cfg r20, r4, r5, 11
000e6c  2bc27f41  lui r4, 268284
000e70  0d00001a  ew_cfg zero, zero, zero, 13
000e74  0d00491c  ew_cfg zero, r18, r4, 14
000e78  1f72f00f  addli r4, zero, 2047
000e7c  0d00001e  ew_cfg zero, zero, zero, 15
000e80  0d000204  ew_cfg zero, r4, zero, 2
000e84  0d090006  ew_cfg r18, zero, zero, 3
000e88  0d092927  ew_cfg r18, r18, r18, 19
000e8c  ad901000  dsmul r1, r1, r1, 0
000e90  9f701000  addli r1, zero, 15
000e94  0d000014  ew_cfg zero, zero, zero, 10
000e98  0d000024  ew_cfg zero, zero, zero, 18
000e9c  0d000026  ew_cfg zero, zero, zero, 19
000ea0  1d100a00  unlock r20
000ea4  db130000  j 156
000ea8  3b1f01fc  bneq r2, zero, -1084
000eac  63433ff6  loadli.w r6,  -1252(r30)
000eb0  33040028  zext_int2long r[9:10], zero
000eb4  9f272000  addli r15, zero, 18
000eb8  1b322200  slli r4, r4, 2
000ebc  33130328  sext_int2long r[7:8], r6
000ec0  0b348340  min.sl r[9:10], r[7:8], r[9:10]
000ec4  27048400  addli.d r[9:10], r[9:10], 64
000ec8  73348fb4  store.d r[9:10], -1208(r30)
000ecc  6b540fb2  load.d r[9:10], -1248(r30)
000ed0  9737f402  sll.d r[16:17], r[9:10], r15
000ed4  6b548fb4  load.d r[9:10], -1208(r30)
000ed8  0b346448  max.sl r[9:10], r[9:10], r[7:8]
000edc  73348fb4  store.d r[9:10], -1208(r30)
000ee0  6b548f01  load.d r[9:10], 24(r30)
000ee4  8b27f410  add.ul r[16:17], r[9:10], r[16:17]
000ee8  6b548fb4  load.d r[9:10], -1208(r30)
000eec  0b336418  sub.sl r[7:8], r[9:10], r[7:8]
000ef0  33040728  zext_int2long r[9:10], r14
000ef4  73346fb4  store.d r[7:8], -1208(r30)
000ef8  6b538fb2  load.d r[7:8], -1240(r30)
000efc  8ba76710  add.ul r[16:17], r[16:17], r[7:8]
000f00  6b538fb4  load.d r[7:8], -1208(r30)
000f04  0b338340  min.sl r[7:8], r[7:8], r[9:10]
000f08  1f741000  addli r8, zero, 15
000f0c  7d100400  xwait r8, 0
000f10  1d800800  lock zero, r17
000f14  1f140000  addli r8, zero, 1
000f18  15000000  dma_cfg zero, zero, zero, 0
000f1c  15000402  dma_cfg zero, r8, zero, 1
000f20  15080004  dma_cfg r16, zero, zero, 2
000f24  95874006  dma_cfg r15, r1, r4, 3
000f28  9f000004  addli r1, zero, 512
000f2c  1f020020  addli r4, zero, 4096
000f30  15826008  dma_cfg r4, r1, r6, 4
000f34  9f002000  addli r1, zero, 16
000f38  35000000  dma_run zero
000f3c  1d900800  unlock r17
000f40  7d800000  xsignal r1, 0
000f44  5b65ffff  j -1240
000f48  7d000000  xsignal zero, 0
000f4c  bb600100  bneq r2, zero, 56
000f50  9f200000  addli r1, zero, 2
000f54  7d100000  xwait zero, 0
000f58  7d100000  xwait zero, 0
000f5c  7d100000  xwait zero, 0
000f60  7d100000  xwait zero, 0
000f64  7d100000  xwait zero, 0
000f68  7d100000  xwait zero, 0
000f6c  7d100000  xwait zero, 0
000f70  7d100000  xwait zero, 0
000f74  1d800000  lock zero, r1
000f78  0d000020  ew_cfg zero, zero, zero, 16
000f7c  1d900000  unlock r1
000f80  7d400000  xsignal_mode_cfg zero
000f84  9f8efe09  addli sp, sp, 1272
000f88  00a00300  mfence { lm, sm, gm }
000f8c  00100000  exit
000f90  00100000  exit
000f94  00100000  exit
000f98  00100000  exit
000f9c  00100000  exit
000fa0  00100000  exit
000fa4  00100000  exit
000fa8  00100000  exit
000fac  00100000  exit
000fb0  00100000  exit
000fb4  00100000  exit
000fb8  00100000  exit
000fbc  00100000  exit
000fc0  00100000  exit
000fc4  00100000  exit
000fc8  00100000  exit
000fcc  00100000  exit
000fd0  00100000  exit
000fd4  00100000  exit
000fd8  00100000  exit
000fdc  00100000  exit
000fe0  00100000  exit
000fe4  00100000  exit
000fe8  00100000  exit
000fec  00100000  exit
000ff0  00100000  exit
000ff4  00100000  exit
000ff8  00100000  exit
000ffc  00100000  exit
001000  00100000  exit
001004  00100000  exit
001008  00100000  exit
00100c  00100000  exit
001010  00100000  exit
001014  00100000  exit
001018  00100000  exit
00101c  00100000  exit
001020  00100000  exit
001024  00100000  exit
001028  00100000  exit
00102c  00100000  exit
001030  00100000  exit
001034  00100000  exit
001038  00100000  exit
00103c  00100000  exit
001040  00100000  exit
001044  00100000  exit
001048  00100000  exit
00104c  00100000  exit
001050  00100000  exit
001054  00100000  exit
001058  00100000  exit
00105c  00100000  exit
001060  00100000  exit
001064  00100000  exit
001068  00100000  exit
00106c  00100000  exit
001070  00100000  exit
001074  00100000  exit
001078  00100000  exit
00107c  00100000  exit
001080  00100000  exit
001084  00100000  exit
001088  00100000  exit
00108c  00100000  exit
001090  00100000  exit
001094  00100000  exit
001098  00100000  exit
00109c  00100000  exit
0010a0  00100000  exit
0010a4  00100000  exit
0010a8  00100000  exit
0010ac  00100000  exit
0010b0  00100000  exit
0010b4  00100000  exit
0010b8  00100000  exit
0010bc  00100000  exit
0010c0  00100000  exit
0010c4  00100000  exit
0010c8  00100000  exit
0010cc  00100000  exit
0010d0  00100000  exit
0010d4  00100000  exit
0010d8  00100000  exit
0010dc  00100000  exit
0010e0  00100000  exit
0010e4  00100000  exit
0010e8  00100000  exit
0010ec  00100000  exit
0010f0  00100000  exit
0010f4  00100000  exit
0010f8  00100000  exit
0010fc  00100000  exit
001100  00100000  exit
001104  00100000  exit
001108  00100000  exit
00110c  00100000  exit
001110  00100000  exit
001114  00100000  exit
001118  00100000  exit
00111c  00100000  exit
001120  00100000  exit
001124  00100000  exit
001128  00100000  exit
00112c  00100000  exit
001130  00100000  exit
001134  00100000  exit
001138  00100000  exit
00113c  00100000  exit
001140  00100000  exit
001144  00100000  exit
001148  00100000  exit
00114c  00100000  exit
001150  00100000  exit
001154  00100000  exit
001158  00100000  exit
00115c  00100000  exit
001160  00100000  exit
001164  00100000  exit
001168  00100000  exit
00116c  00100000  exit
001170  00100000  exit
001174  00100000  exit
001178  00100000  exit
00117c  00100000  exit
001180  00100000  exit
001184  00100000  exit
001188  00100000  exit
00118c  00100000  exit
001190  00100000  exit
001194  00100000  exit
001198  00100000  exit
00119c  00100000  exit
0011a0  00100000  exit
0011a4  00100000  exit
0011a8  00100000  exit
0011ac  00100000  exit
0011b0  00100000  exit
0011b4  00100000  exit
0011b8  00100000  exit
0011bc  00100000  exit
0011c0  00100000  exit
0011c4  00100000  exit
0011c8  00100000  exit
0011cc  00100000  exit
