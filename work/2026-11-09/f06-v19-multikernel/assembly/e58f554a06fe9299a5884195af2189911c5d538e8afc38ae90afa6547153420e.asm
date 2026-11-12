; SHA-256 e58f554a06fe9299a5884195af2189911c5d538e8afc38ae90afa6547153420e
; P800 SDNN · XTDK LLVM 19 · 1717 / 1717 words decoded
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
0000b4  9f8e6ef5  addli sp, sp, -1360
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8f2e0a  addli r30, sp, 1296
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
0009ac  e7054ff6  storeli.w r4, -1192(r30)
0009b0  e7454ff6  storeli.w r4, -1188(r30)
0009b4  67064ff6  storeli.w r4, -1184(r30)
0009b8  67464ff6  storeli.w r4, -1180(r30)
0009bc  e7064ff6  storeli.w r4, -1176(r30)
0009c0  e7464ff6  storeli.w r4, -1172(r30)
0009c4  67074ff6  storeli.w r4, -1168(r30)
0009c8  67474ff6  storeli.w r4, -1164(r30)
0009cc  e7074ff6  storeli.w r4, -1160(r30)
0009d0  e7474ff6  storeli.w r4, -1156(r30)
0009d4  67084ff6  storeli.w r4, -1152(r30)
0009d8  67484ff6  storeli.w r4, -1148(r30)
0009dc  e7084ff6  storeli.w r4, -1144(r30)
0009e0  e7484ff6  storeli.w r4, -1140(r30)
0009e4  67094ff6  storeli.w r4, -1136(r30)
0009e8  67494ff6  storeli.w r4, -1132(r30)
0009ec  e7094ff6  storeli.w r4, -1128(r30)
0009f0  e7494ff6  storeli.w r4, -1124(r30)
0009f4  670a4ff6  storeli.w r4, -1120(r30)
0009f8  674a4ff6  storeli.w r4, -1116(r30)
0009fc  e70a4ff6  storeli.w r4, -1112(r30)
000a00  e74a4ff6  storeli.w r4, -1108(r30)
000a04  670b4ff6  storeli.w r4, -1104(r30)
000a08  674b4ff6  storeli.w r4, -1100(r30)
000a0c  e70b4ff6  storeli.w r4, -1096(r30)
000a10  e74b4ff6  storeli.w r4, -1092(r30)
000a14  670c4ff6  storeli.w r4, -1088(r30)
000a18  674c4ff6  storeli.w r4, -1084(r30)
000a1c  e70c4ff6  storeli.w r4, -1080(r30)
000a20  e74c4ff6  storeli.w r4, -1076(r30)
000a24  670d4ff6  storeli.w r4, -1072(r30)
000a28  674d4ff6  storeli.w r4, -1068(r30)
000a2c  e70d4ff6  storeli.w r4, -1064(r30)
000a30  e74d4ff6  storeli.w r4, -1060(r30)
000a34  670e4ff6  storeli.w r4, -1056(r30)
000a38  674e4ff6  storeli.w r4, -1052(r30)
000a3c  e70e4ff6  storeli.w r4, -1048(r30)
000a40  e74e4ff6  storeli.w r4, -1044(r30)
000a44  670f4ff6  storeli.w r4, -1040(r30)
000a48  674f4ff6  storeli.w r4, -1036(r30)
000a4c  e70f4ff6  storeli.w r4, -1032(r30)
000a50  e74f4ff6  storeli.w r4, -1028(r30)
000a54  67004ff8  storeli.w r4, -1024(r30)
000a58  67404ff8  storeli.w r4, -1020(r30)
000a5c  e7004ff8  storeli.w r4, -1016(r30)
000a60  e7404ff8  storeli.w r4, -1012(r30)
000a64  67014ff8  storeli.w r4, -1008(r30)
000a68  67414ff8  storeli.w r4, -1004(r30)
000a6c  e7014ff8  storeli.w r4, -1000(r30)
000a70  e7414ff8  storeli.w r4, -996(r30)
000a74  67024ff8  storeli.w r4, -992(r30)
000a78  67424ff8  storeli.w r4, -988(r30)
000a7c  e7024ff8  storeli.w r4, -984(r30)
000a80  e7424ff8  storeli.w r4, -980(r30)
000a84  67034ff8  storeli.w r4, -976(r30)
000a88  67434ff8  storeli.w r4, -972(r30)
000a8c  e7034ff8  storeli.w r4, -968(r30)
000a90  e7434ff8  storeli.w r4, -964(r30)
000a94  67044ff8  storeli.w r4, -960(r30)
000a98  67444ff8  storeli.w r4, -956(r30)
000a9c  e7044ff8  storeli.w r4, -952(r30)
000aa0  e7444ff8  storeli.w r4, -948(r30)
000aa4  67054ff8  storeli.w r4, -944(r30)
000aa8  67454ff8  storeli.w r4, -940(r30)
000aac  e7054ff8  storeli.w r4, -936(r30)
000ab0  e7454ff8  storeli.w r4, -932(r30)
000ab4  67064ff8  storeli.w r4, -928(r30)
000ab8  67464ff8  storeli.w r4, -924(r30)
000abc  e7064ff8  storeli.w r4, -920(r30)
000ac0  e7464ff8  storeli.w r4, -916(r30)
000ac4  67074ff8  storeli.w r4, -912(r30)
000ac8  67474ff8  storeli.w r4, -908(r30)
000acc  e7074ff8  storeli.w r4, -904(r30)
000ad0  e7474ff8  storeli.w r4, -900(r30)
000ad4  67084ff8  storeli.w r4, -896(r30)
000ad8  67484ff8  storeli.w r4, -892(r30)
000adc  e7084ff8  storeli.w r4, -888(r30)
000ae0  e7484ff8  storeli.w r4, -884(r30)
000ae4  67094ff8  storeli.w r4, -880(r30)
000ae8  67494ff8  storeli.w r4, -876(r30)
000aec  e7094ff8  storeli.w r4, -872(r30)
000af0  e7494ff8  storeli.w r4, -868(r30)
000af4  670a4ff8  storeli.w r4, -864(r30)
000af8  674a4ff8  storeli.w r4, -860(r30)
000afc  e70a4ff8  storeli.w r4, -856(r30)
000b00  e74a4ff8  storeli.w r4, -852(r30)
000b04  670b4ff8  storeli.w r4, -848(r30)
000b08  674b4ff8  storeli.w r4, -844(r30)
000b0c  e70b4ff8  storeli.w r4, -840(r30)
000b10  e74b4ff8  storeli.w r4, -836(r30)
000b14  670c4ff8  storeli.w r4, -832(r30)
000b18  674c4ff8  storeli.w r4, -828(r30)
000b1c  e70c4ff8  storeli.w r4, -824(r30)
000b20  e74c4ff8  storeli.w r4, -820(r30)
000b24  670d4ff8  storeli.w r4, -816(r30)
000b28  674d4ff8  storeli.w r4, -812(r30)
000b2c  8b907120  mul.s r1, r3, r7
000b30  8b917150  fmac.s r3, r3, r7
000b34  8b915140  min.s r3, r3, r5
000b38  4bd41106  ble.s r3, r1, 3348
000b3c  33910128  sext_int2long r[3:4], r3
000b40  33920028  sext_int2long r[5:6], r1
000b44  1f048000  addli r8, zero, 64
000b48  1f081000  addli r16, zero, 8
000b4c  9f7c0000  addli r25, zero, 7
000b50  9f450000  addli r11, zero, 4
000b54  1f550000  addli r10, zero, 5
000b58  9f1a0000  addli r21, zero, 1
000b5c  1f2b0000  addli r22, zero, 2
000b60  9f0b4000  addli r23, zero, 32
000b64  1f6c0000  addli r24, zero, 6
000b68  1f070000  addli r14, zero, 0
000b6c  73302fb0  store.d r[3:4], -1280(r30)
000b70  1f71f00f  addli r2, zero, 2047
000b74  ab810200  lui r3, 40
000b78  ab80ffff  lui r1, 1048568
000b7c  733c1fae  store.d r[2:3], -1288(r30)
000b80  00310002  core_id r2
000b84  9b902184  ori r1, r3, 2114
000b88  674f1ff4  storeli.w r1, -1292(r30)
000b8c  db300000  j 388
000b90  9b900904  ori r1, r19, 64
000b94  1d800500  lock zero, r11
000b98  1f713200  addli r2, r4, 31
000b9c  9f040004  addli r9, zero, 512
000ba0  958a0a00  dma_cfg r21, r21, zero, 0
000ba4  8b101310  add.s r1, r6, r1
000ba8  15800604  dma_cfg zero, r13, zero, 2
000bac  1f631000  addli r6, zero, 14
000bb0  95008606  dma_cfg r1, r12, r8, 3
000bb4  9b405100  srli r1, r2, 5
000bb8  1b311200  slli r2, r4, 1
000bbc  9f020001  addli r5, zero, 128
000bc0  1f020002  addli r4, zero, 256
000bc4  95021408  dma_cfg r5, r8, r1, 4
000bc8  1b01e103  andi r2, r2, 62
000bcc  9504520b  dma_cfg r9, r4, r21, 5
000bd0  1f121000  addli r4, zero, 9
000bd4  15002010  dma_cfg zero, zero, r2, 8
000bd8  35000000  dma_run zero
000bdc  1500500b  dma_cfg zero, zero, r21, 5
000be0  15000010  dma_cfg zero, zero, zero, 8
000be4  1d900500  unlock r11
000be8  1d000500  lock zero, r10
000bec  15000014  dma_cfg zero, zero, zero, 10
000bf0  15005015  dma_cfg zero, zero, r21, 10
000bf4  15006015  dma_cfg zero, zero, r22, 10
000bf8  15007014  dma_cfg zero, zero, r7, 10
000bfc  1500b014  dma_cfg zero, zero, r11, 10
000c00  1500a014  dma_cfg zero, zero, r10, 10
000c04  15008015  dma_cfg zero, zero, r24, 10
000c08  15009015  dma_cfg zero, zero, r25, 10
000c0c  15000015  dma_cfg zero, zero, r16, 10
000c10  15004014  dma_cfg zero, zero, r4, 10
000c14  1f221000  addli r4, zero, 10
000c18  15004014  dma_cfg zero, zero, r4, 10
000c1c  1f321000  addli r4, zero, 11
000c20  15004014  dma_cfg zero, zero, r4, 10
000c24  1f421000  addli r4, zero, 12
000c28  15004014  dma_cfg zero, zero, r4, 10
000c2c  1500e014  dma_cfg zero, zero, r14, 10
000c30  15006014  dma_cfg zero, zero, r6, 10
000c34  1f731000  addli r6, zero, 15
000c38  15006014  dma_cfg zero, zero, r6, 10
000c3c  1f132000  addli r6, zero, 17
000c40  1500f014  dma_cfg zero, zero, r15, 10
000c44  15006014  dma_cfg zero, zero, r6, 10
000c48  1f232000  addli r6, zero, 18
000c4c  15006014  dma_cfg zero, zero, r6, 10
000c50  1f332000  addli r6, zero, 19
000c54  15006014  dma_cfg zero, zero, r6, 10
000c58  1f432000  addli r6, zero, 20
000c5c  15006014  dma_cfg zero, zero, r6, 10
000c60  1f532000  addli r6, zero, 21
000c64  15006014  dma_cfg zero, zero, r6, 10
000c68  1f632000  addli r6, zero, 22
000c6c  15006014  dma_cfg zero, zero, r6, 10
000c70  1f732000  addli r6, zero, 23
000c74  15006014  dma_cfg zero, zero, r6, 10
000c78  1f033000  addli r6, zero, 24
000c7c  15006014  dma_cfg zero, zero, r6, 10
000c80  1f133000  addli r6, zero, 25
000c84  15006014  dma_cfg zero, zero, r6, 10
000c88  1f233000  addli r6, zero, 26
000c8c  15006014  dma_cfg zero, zero, r6, 10
000c90  1f333000  addli r6, zero, 27
000c94  15006014  dma_cfg zero, zero, r6, 10
000c98  1f433000  addli r6, zero, 28
000c9c  15006014  dma_cfg zero, zero, r6, 10
000ca0  1f533000  addli r6, zero, 29
000ca4  15006014  dma_cfg zero, zero, r6, 10
000ca8  1f633000  addli r6, zero, 30
000cac  15006014  dma_cfg zero, zero, r6, 10
000cb0  1f733000  addli r6, zero, 31
000cb4  15006014  dma_cfg zero, zero, r6, 10
000cb8  958a0a00  dma_cfg r21, r21, zero, 0
000cbc  950a0002  dma_cfg r21, zero, zero, 1
000cc0  15000004  dma_cfg zero, zero, zero, 2
000cc4  95018006  dma_cfg r3, zero, r8, 3
000cc8  95021008  dma_cfg r5, zero, r1, 4
000ccc  9504500b  dma_cfg r9, zero, r21, 5
000cd0  15002010  dma_cfg zero, zero, r2, 8
000cd4  35000000  dma_run zero
000cd8  1500500b  dma_cfg zero, zero, r21, 5
000cdc  15000010  dma_cfg zero, zero, zero, 8
000ce0  1d100500  unlock r10
000ce4  7d000200  xsignal r4, 0
000ce8  e340dfff  loadli.w r1,  -20(r30)
000cec  9f900000  addli r1, r1, 1
000cf0  e74e1ffe  storeli.w r1, -20(r30)
000cf4  6b520fb3  load.d r[5:6], -1232(r30)
000cf8  eb500fb0  load.d r[2:3], -1280(r30)
000cfc  63475ff6  loadli.w r14,  -1236(r30)
000d00  27120200  addli.d r[5:6], r[5:6], 1
000d04  93301204  setlt.sl r1, r[5:6], r[2:3]
000d08  00310002  core_id r2
000d0c  378d0004  beq r1, zero, 2880
000d10  3b30b100  bneq r2, r11, 12
000d14  9f301000  addli r1, zero, 11
000d18  7d900000  xwait r1, 0
000d1c  e3006f00  loadli.w r1,  48(r30)
000d20  73384fb2  store.d r[5:6], -1232(r30)
000d24  e309bff9  loadli.w r19,  -808(r30)
000d28  1f3a0000  addli r20, zero, 3
000d2c  8b111230  div.s r3, r4, r1
000d30  e3405f00  loadli.w r1,  44(r30)
000d34  8b921130  div.s r5, r3, r1
000d38  9f401000  addli r1, zero, 12
000d3c  8b938230  div.s r7, r5, r8
000d40  9bb13300  slli r3, r7, 3
000d44  0b123818  sub.s r4, r16, r3
000d48  8b140241  min.s r9, r4, r16
000d4c  0b929238  mod.s r4, r5, r9
000d50  0b924110  add.s r4, r3, r4
000d54  e341aff6  loadli.w r3,  -1196(r30)
000d58  13834c04  setlt.u r6, r25, r4
000d5c  33060228  zext_int2long r[13:14], r4
000d60  7338cfb0  store.d r[13:14], -1264(r30)
000d64  17361602  sll.d r[13:14], r[13:14], r1
000d68  7334cfb4  store.d r[13:14], -1208(r30)
000d6c  3b400300  bneq r6, zero, 16
000d70  33060028  zext_int2long r[13:14], zero
000d74  7330cfb4  store.d r[13:14], -1216(r30)
000d78  db020000  j 20
000d7c  eb508faf  load.d r[2:3], -1288(r30)
000d80  97001602  and.d r[2:3], r[13:14], r[2:3]
000d84  73301fb4  store.d r[2:3], -1216(r30)
000d88  00310002  core_id r2
000d8c  9bb36300  slli r7, r7, 6
000d90  9b306200  slli r1, r4, 6
000d94  9f1d0000  addli r27, zero, 1
000d98  1f030000  addli r6, zero, 0
000d9c  1f7e0000  addli r28, zero, 7
000da0  8b927218  sub.s r5, r5, r7
000da4  8b13b738  mod.s r7, r14, r11
000da8  e7401ff6  storeli.w r1, -1268(r30)
000dac  1f170700  addli r14, r14, 1
000db0  8b929230  div.s r5, r5, r9
000db4  9f040000  addli r9, zero, 0
000db8  e742eff6  storeli.w r14, -1236(r30)
000dbc  9bb3f300  slli r7, r7, 15
000dc0  33860228  zext_int2long r[13:14], r5
000dc4  9bb07200  slli r1, r5, 7
000dc8  17329603  sll.d r[5:6], r[13:14], r25
000dcc  6b568f00  load.d r[13:14], 8(r30)
000dd0  e7411ff6  storeli.w r1, -1252(r30)
000dd4  73304fb2  store.d r[5:6], -1248(r30)
000dd8  1732b203  sll.d r[5:6], r[5:6], r27
000ddc  0b224610  add.ul r[5:6], r[13:14], r[5:6]
000de0  733c4fb2  store.d r[5:6], -1224(r30)
000de4  db030000  j 28
000de8  9b801d00  andi r1, r27, 1
000dec  b7dc0002  beq r1, zero, 1844
000df0  9f0d0000  addli r27, zero, 0
000df4  1f130300  addli r6, r6, 1
000df8  9f140000  addli r9, zero, 1
000dfc  9f090200  addli r19, r4, 0
000e00  9f00c000  addli r1, zero, 96
000e04  33060428  zext_int2long r[13:14], r8
000e08  0b921138  mod.s r4, r3, r1
000e0c  9f706000  addli r1, zero, 55
000e10  9f910100  addli r3, r3, 1
000e14  8b921938  mod.s r5, r19, r1
000e18  9f008003  addli r1, zero, 448
000e1c  67453ff6  storeli.w r3, -1196(r30)
000e20  b3880028  zext_int2long r[18:19], r1
000e24  ab000200  lui r1, 32
000e28  9b3cd200  slli r25, r4, 13
000e2c  1f920900  addli r4, r19, 1
000e30  9bb2d200  slli r5, r5, 13
000e34  e70d4ff8  storeli.w r4, -808(r30)
000e38  0b9d1210  add.s r26, r5, r1
000e3c  b77a6101  beq r2, r22, 700
000e40  33870428  zext_int2long r[15:16], r9
000e44  80300002  core_id r1
000e48  bbae8001  bneq r1, r24, 936
000e4c  eb508fb4  load.d r[2:3], -1208(r30)
000e50  1737a702  sll.d r[15:16], r[15:16], r10
000e54  1f081000  addli r16, zero, 8
000e58  17171702  or.d r[15:16], r[15:16], r[2:3]
000e5c  eb500fb4  load.d r[2:3], -1216(r30)
000e60  8b341718  sub.sl r[10:11], r[15:16], r[2:3]
000e64  17375703  sll.d r[15:16], r[15:16], r21
000e68  8f94c460  div.sl r[10:11], r[10:11], r[13:14]
000e6c  8bb01441  min.sl r[2:3], r[10:11], r[18:19]
000e70  8bb09018  sub.sl r[2:3], r[2:3], r[10:11]
000e74  eb540f00  load.d r[10:11], 0(r30)
000e78  0ba7e410  add.ul r[15:16], r[10:11], r[15:16]
000e7c  9f848000  addli r9, r1, 64
000e80  1f310000  addli r2, zero, 3
000e84  1f550000  addli r10, zero, 5
000e88  9f606000  addli r1, zero, 54
000e8c  7d100100  xwait r2, 0
000e90  3fd43001  blt.s r1, r19, 276
000e94  1d000500  lock zero, r10
000e98  9f101000  addli r1, zero, 9
000e9c  15000014  dma_cfg zero, zero, zero, 10
000ea0  15005015  dma_cfg zero, zero, r21, 10
000ea4  15006015  dma_cfg zero, zero, r22, 10
000ea8  15002014  dma_cfg zero, zero, r2, 10
000eac  1500b014  dma_cfg zero, zero, r11, 10
000eb0  1500a014  dma_cfg zero, zero, r10, 10
000eb4  15008015  dma_cfg zero, zero, r24, 10
000eb8  1500c015  dma_cfg zero, zero, r28, 10
000ebc  15000015  dma_cfg zero, zero, r16, 10
000ec0  15001014  dma_cfg zero, zero, r1, 10
000ec4  9f201000  addli r1, zero, 10
000ec8  15001014  dma_cfg zero, zero, r1, 10
000ecc  9f301000  addli r1, zero, 11
000ed0  15001014  dma_cfg zero, zero, r1, 10
000ed4  9f401000  addli r1, zero, 12
000ed8  15001014  dma_cfg zero, zero, r1, 10
000edc  9f501000  addli r1, zero, 13
000ee0  15001014  dma_cfg zero, zero, r1, 10
000ee4  9f601000  addli r1, zero, 14
000ee8  15001014  dma_cfg zero, zero, r1, 10
000eec  9f701000  addli r1, zero, 15
000ef0  15001014  dma_cfg zero, zero, r1, 10
000ef4  9f002000  addli r1, zero, 16
000ef8  15001014  dma_cfg zero, zero, r1, 10
000efc  9f102000  addli r1, zero, 17
000f00  15001014  dma_cfg zero, zero, r1, 10
000f04  9f202000  addli r1, zero, 18
000f08  15001014  dma_cfg zero, zero, r1, 10
000f0c  9f302000  addli r1, zero, 19
000f10  15001014  dma_cfg zero, zero, r1, 10
000f14  9f402000  addli r1, zero, 20
000f18  15001014  dma_cfg zero, zero, r1, 10
000f1c  9f502000  addli r1, zero, 21
000f20  15001014  dma_cfg zero, zero, r1, 10
000f24  9f602000  addli r1, zero, 22
000f28  15001014  dma_cfg zero, zero, r1, 10
000f2c  9f702000  addli r1, zero, 23
000f30  15001014  dma_cfg zero, zero, r1, 10
000f34  9f003000  addli r1, zero, 24
000f38  15001014  dma_cfg zero, zero, r1, 10
000f3c  9f103000  addli r1, zero, 25
000f40  15001014  dma_cfg zero, zero, r1, 10
000f44  9f203000  addli r1, zero, 26
000f48  15001014  dma_cfg zero, zero, r1, 10
000f4c  9f303000  addli r1, zero, 27
000f50  15001014  dma_cfg zero, zero, r1, 10
000f54  9f403000  addli r1, zero, 28
000f58  15001014  dma_cfg zero, zero, r1, 10
000f5c  9f503000  addli r1, zero, 29
000f60  15001014  dma_cfg zero, zero, r1, 10
000f64  9f603000  addli r1, zero, 30
000f68  15001014  dma_cfg zero, zero, r1, 10
000f6c  9f703000  addli r1, zero, 31
000f70  15001014  dma_cfg zero, zero, r1, 10
000f74  9f000001  addli r1, zero, 128
000f78  958a0a00  dma_cfg r21, r21, zero, 0
000f7c  950a0002  dma_cfg r21, zero, zero, 1
000f80  15000004  dma_cfg zero, zero, zero, 2
000f84  150d8006  dma_cfg r26, zero, r8, 3
000f88  95005009  dma_cfg r1, zero, r21, 4
000f8c  9500800a  dma_cfg r1, zero, r8, 5
000f90  15000010  dma_cfg zero, zero, zero, 8
000f94  35000000  dma_run zero
000f98  1500500b  dma_cfg zero, zero, r21, 5
000f9c  15000010  dma_cfg zero, zero, zero, 8
000fa0  1d100500  unlock r10
000fa4  ab000200  lui r1, 32
000fa8  1d800500  lock zero, r11
000fac  1f3a0000  addli r20, zero, 3
000fb0  958a0a00  dma_cfg r21, r21, zero, 0
000fb4  9b900004  ori r1, r1, 64
000fb8  15800704  dma_cfg zero, r15, zero, 2
000fbc  8b901210  add.s r1, r5, r1
000fc0  9f020001  addli r5, zero, 128
000fc4  95008706  dma_cfg r1, r14, r8, 3
000fc8  9f101000  addli r1, zero, 9
000fcc  95025409  dma_cfg r5, r8, r21, 4
000fd0  9582920a  dma_cfg r5, r5, r9, 5
000fd4  15000010  dma_cfg zero, zero, zero, 8
000fd8  35000000  dma_run zero
000fdc  1500500b  dma_cfg zero, zero, r21, 5
000fe0  15000010  dma_cfg zero, zero, zero, 8
000fe4  1d900500  unlock r11
000fe8  1d000500  lock zero, r10
000fec  15000014  dma_cfg zero, zero, zero, 10
000ff0  15005015  dma_cfg zero, zero, r21, 10
000ff4  15006015  dma_cfg zero, zero, r22, 10
000ff8  15002014  dma_cfg zero, zero, r2, 10
000ffc  1500b014  dma_cfg zero, zero, r11, 10
001000  1500a014  dma_cfg zero, zero, r10, 10
001004  15008015  dma_cfg zero, zero, r24, 10
001008  1500c015  dma_cfg zero, zero, r28, 10
00100c  15000015  dma_cfg zero, zero, r16, 10
001010  15001014  dma_cfg zero, zero, r1, 10
001014  9f201000  addli r1, zero, 10
001018  15001014  dma_cfg zero, zero, r1, 10
00101c  9f301000  addli r1, zero, 11
001020  15001014  dma_cfg zero, zero, r1, 10
001024  9f401000  addli r1, zero, 12
001028  15001014  dma_cfg zero, zero, r1, 10
00102c  9f501000  addli r1, zero, 13
001030  15001014  dma_cfg zero, zero, r1, 10
001034  9f601000  addli r1, zero, 14
001038  15001014  dma_cfg zero, zero, r1, 10
00103c  9f701000  addli r1, zero, 15
001040  15001014  dma_cfg zero, zero, r1, 10
001044  9f002000  addli r1, zero, 16
001048  15001014  dma_cfg zero, zero, r1, 10
00104c  9f102000  addli r1, zero, 17
001050  15001014  dma_cfg zero, zero, r1, 10
001054  9f202000  addli r1, zero, 18
001058  15001014  dma_cfg zero, zero, r1, 10
00105c  9f302000  addli r1, zero, 19
001060  15001014  dma_cfg zero, zero, r1, 10
001064  9f402000  addli r1, zero, 20
001068  15001014  dma_cfg zero, zero, r1, 10
00106c  9f502000  addli r1, zero, 21
001070  15001014  dma_cfg zero, zero, r1, 10
001074  9f602000  addli r1, zero, 22
001078  15001014  dma_cfg zero, zero, r1, 10
00107c  9f702000  addli r1, zero, 23
001080  15001014  dma_cfg zero, zero, r1, 10
001084  9f003000  addli r1, zero, 24
001088  15001014  dma_cfg zero, zero, r1, 10
00108c  9f103000  addli r1, zero, 25
001090  15001014  dma_cfg zero, zero, r1, 10
001094  9f203000  addli r1, zero, 26
001098  15001014  dma_cfg zero, zero, r1, 10
00109c  9f303000  addli r1, zero, 27
0010a0  15001014  dma_cfg zero, zero, r1, 10
0010a4  9f403000  addli r1, zero, 28
0010a8  15001014  dma_cfg zero, zero, r1, 10
0010ac  9f503000  addli r1, zero, 29
0010b0  15001014  dma_cfg zero, zero, r1, 10
0010b4  9f603000  addli r1, zero, 30
0010b8  15001014  dma_cfg zero, zero, r1, 10
0010bc  9f703000  addli r1, zero, 31
0010c0  15001014  dma_cfg zero, zero, r1, 10
0010c4  958a0a00  dma_cfg r21, r21, zero, 0
0010c8  950a0002  dma_cfg r21, zero, zero, 1
0010cc  15000004  dma_cfg zero, zero, zero, 2
0010d0  150d8006  dma_cfg r26, zero, r8, 3
0010d4  95025009  dma_cfg r5, zero, r21, 4
0010d8  9502900a  dma_cfg r5, zero, r9, 5
0010dc  15000010  dma_cfg zero, zero, zero, 8
0010e0  35000000  dma_run zero
0010e4  1500500b  dma_cfg zero, zero, r21, 5
0010e8  15000010  dma_cfg zero, zero, zero, 8
0010ec  1d100500  unlock r10
0010f0  7d000b00  xsignal r22, 0
0010f4  5b060000  j 48
0010f8  7d100b00  xwait r22, 0
0010fc  7d100500  xwait r10, 0
001100  1d000000  lock zero, zero
001104  010b0000  ds_cfg r22, zero, 0
001108  810b0002  ds_cfg r23, zero, 1
00110c  810b001c  ds_cfg r23, zero, 14
001110  0104001a  ds_cfg r8, zero, 13
001114  a11c7d03  shuffle_batch r25, r26, r23, 1
001118  1d100000  unlock zero
00111c  7d000a00  xsignal r20, 0
001120  7d800500  xsignal r11, 0
001124  e3007ffb  loadli.w r1,  -584(r30)
001128  1f01a000  addli r2, zero, 80
00112c  e342fffd  loadli.w r5,  -260(r30)
001130  0b912038  mod.s r2, r1, r2
001134  9f900000  addli r1, r1, 1
001138  9f920200  addli r5, r5, 1
00113c  e70b1ffa  storeli.w r1, -584(r30)
001140  e74f5ffc  storeli.w r5, -260(r30)
001144  9b34e100  slli r9, r2, 14
001148  00310002  core_id r2
00114c  3b72b1fe  bneq r2, r11, -868
001150  9f120000  addli r5, zero, 1
001154  1f170000  addli r14, zero, 1
001158  9f070000  addli r15, zero, 0
00115c  7d900500  xwait r11, 0
001160  7d100800  xwait r16, 0
001164  b7700300  beq r6, zero, 60
001168  9bb0d700  slli r1, r15, 13
00116c  1bb18700  slli r2, r15, 8
001170  1d800200  lock zero, r5
001174  9f170000  addli r15, zero, 1
001178  09848b00  mm_cfg r8, r23, r8, 0
00117c  97909000  or r1, r1, r9
001180  17117100  or r2, r2, r7
001184  098b5504  mm_cfg r22, r11, r5, 2
001188  29911c10  mm_acc r2, r25, r1, 8
00118c  9b001700  andi r1, r14, 1
001190  1f070000  addli r14, zero, 0
001194  1d900200  unlock r5
001198  3bcf00fe  bneq r1, zero, -48
00119c  5b070000  j 56
0011a0  9bb0d700  slli r1, r15, 13
0011a4  1bb18700  slli r2, r15, 8
0011a8  1d800200  lock zero, r5
0011ac  9f170000  addli r15, zero, 1
0011b0  09848b00  mm_cfg r8, r23, r8, 0
0011b4  97909000  or r1, r1, r9
0011b8  17117100  or r2, r2, r7
0011bc  098b5504  mm_cfg r22, r11, r5, 2
0011c0  29811c10  mm r2, r25, r1, 8
0011c4  9b001700  andi r1, r14, 1
0011c8  1f070000  addli r14, zero, 0
0011cc  1d900200  unlock r5
0011d0  3bcf00fe  bneq r1, zero, -48
0011d4  1f111000  addli r2, zero, 9
0011d8  7d000500  xsignal r10, 0
0011dc  9b801d00  andi r1, r27, 1
0011e0  7d000100  xsignal r2, 0
0011e4  00310002  core_id r2
0011e8  3ba000fe  bneq r1, zero, -1016
0011ec  db650000  j 812
0011f0  e3007ffb  loadli.w r1,  -584(r30)
0011f4  e349fffd  loadli.w r19,  -260(r30)
0011f8  1f01a000  addli r2, zero, 80
0011fc  9f626000  addli r5, zero, 54
001200  0b912038  mod.s r2, r1, r2
001204  8b925938  mod.s r5, r19, r5
001208  9f900000  addli r1, r1, 1
00120c  e70b1ffa  storeli.w r1, -584(r30)
001210  9f900900  addli r1, r19, 1
001214  e74f1ffc  storeli.w r1, -260(r30)
001218  9b34e100  slli r9, r2, 14
00121c  9bb2e200  slli r5, r5, 14
001220  2be10800  lui r2, 142
001224  0b9d2210  add.s r26, r5, r2
001228  00310002  core_id r2
00122c  b73ac101  beq r2, r28, 684
001230  3b7c51ff  bneq r2, r21, -228
001234  1f0a2000  addli r20, zero, 16
001238  9f340000  addli r9, zero, 3
00123c  9f5c1000  addli r25, zero, 13
001240  97304703  sll.d r[2:3], r[15:16], r20
001244  6b578fb3  load.d r[15:16], -1224(r30)
001248  0b271710  add.ul r[15:16], r[15:16], r[2:3]
00124c  1f710000  addli r2, zero, 7
001250  9f506000  addli r1, zero, 53
001254  7d100100  xwait r2, 0
001258  3fc43001  blt.s r1, r19, 272
00125c  1d000500  lock zero, r10
001260  9f101000  addli r1, zero, 9
001264  15000014  dma_cfg zero, zero, zero, 10
001268  15005015  dma_cfg zero, zero, r21, 10
00126c  15006015  dma_cfg zero, zero, r22, 10
001270  15009014  dma_cfg zero, zero, r9, 10
001274  1500b014  dma_cfg zero, zero, r11, 10
001278  1500a014  dma_cfg zero, zero, r10, 10
00127c  15008015  dma_cfg zero, zero, r24, 10
001280  15002014  dma_cfg zero, zero, r2, 10
001284  15000015  dma_cfg zero, zero, r16, 10
001288  15001014  dma_cfg zero, zero, r1, 10
00128c  9f201000  addli r1, zero, 10
001290  15001014  dma_cfg zero, zero, r1, 10
001294  9f301000  addli r1, zero, 11
001298  15001014  dma_cfg zero, zero, r1, 10
00129c  9f401000  addli r1, zero, 12
0012a0  15001014  dma_cfg zero, zero, r1, 10
0012a4  9f601000  addli r1, zero, 14
0012a8  15009015  dma_cfg zero, zero, r25, 10
0012ac  15001014  dma_cfg zero, zero, r1, 10
0012b0  9f701000  addli r1, zero, 15
0012b4  15001014  dma_cfg zero, zero, r1, 10
0012b8  9f102000  addli r1, zero, 17
0012bc  15004015  dma_cfg zero, zero, r20, 10
0012c0  15001014  dma_cfg zero, zero, r1, 10
0012c4  9f202000  addli r1, zero, 18
0012c8  15001014  dma_cfg zero, zero, r1, 10
0012cc  9f302000  addli r1, zero, 19
0012d0  15001014  dma_cfg zero, zero, r1, 10
0012d4  9f402000  addli r1, zero, 20
0012d8  15001014  dma_cfg zero, zero, r1, 10
0012dc  9f502000  addli r1, zero, 21
0012e0  15001014  dma_cfg zero, zero, r1, 10
0012e4  9f602000  addli r1, zero, 22
0012e8  15001014  dma_cfg zero, zero, r1, 10
0012ec  9f702000  addli r1, zero, 23
0012f0  15001014  dma_cfg zero, zero, r1, 10
0012f4  9f003000  addli r1, zero, 24
0012f8  15001014  dma_cfg zero, zero, r1, 10
0012fc  9f103000  addli r1, zero, 25
001300  15001014  dma_cfg zero, zero, r1, 10
001304  9f203000  addli r1, zero, 26
001308  15001014  dma_cfg zero, zero, r1, 10
00130c  9f303000  addli r1, zero, 27
001310  15001014  dma_cfg zero, zero, r1, 10
001314  9f403000  addli r1, zero, 28
001318  15001014  dma_cfg zero, zero, r1, 10
00131c  9f503000  addli r1, zero, 29
001320  15001014  dma_cfg zero, zero, r1, 10
001324  9f603000  addli r1, zero, 30
001328  15001014  dma_cfg zero, zero, r1, 10
00132c  9f703000  addli r1, zero, 31
001330  15001014  dma_cfg zero, zero, r1, 10
001334  9f000001  addli r1, zero, 128
001338  958a0a00  dma_cfg r21, r21, zero, 0
00133c  950a0002  dma_cfg r21, zero, zero, 1
001340  15000004  dma_cfg zero, zero, zero, 2
001344  150d8006  dma_cfg r26, zero, r8, 3
001348  9500b008  dma_cfg r1, zero, r11, 4
00134c  9f000004  addli r1, zero, 512
001350  9500700b  dma_cfg r1, zero, r23, 5
001354  15000010  dma_cfg zero, zero, zero, 8
001358  35000000  dma_run zero
00135c  1500500b  dma_cfg zero, zero, r21, 5
001360  15000010  dma_cfg zero, zero, zero, 8
001364  1d100500  unlock r10
001368  abe00800  lui r1, 142
00136c  1d800500  lock zero, r11
001370  9f090004  addli r19, zero, 512
001374  1f3a0000  addli r20, zero, 3
001378  1f7e0000  addli r28, zero, 7
00137c  1f6c0000  addli r24, zero, 6
001380  958a0a00  dma_cfg r21, r21, zero, 0
001384  9b900004  ori r1, r1, 64
001388  15800704  dma_cfg zero, r15, zero, 2
00138c  8b901210  add.s r1, r5, r1
001390  9f620000  addli r5, zero, 6
001394  95008706  dma_cfg r1, r14, r8, 3
001398  1f070001  addli r14, zero, 128
00139c  9f000010  addli r1, zero, 2048
0013a0  9f072000  addli r15, zero, 16
0013a4  1507b408  dma_cfg r14, r8, r11, 4
0013a8  9589700b  dma_cfg r19, r1, r23, 5
0013ac  9f101000  addli r1, zero, 9
0013b0  15000010  dma_cfg zero, zero, zero, 8
0013b4  35000000  dma_run zero
0013b8  1500500b  dma_cfg zero, zero, r21, 5
0013bc  15000010  dma_cfg zero, zero, zero, 8
0013c0  1d900500  unlock r11
0013c4  1d000500  lock zero, r10
0013c8  15000014  dma_cfg zero, zero, zero, 10
0013cc  15005015  dma_cfg zero, zero, r21, 10
0013d0  15006015  dma_cfg zero, zero, r22, 10
0013d4  15009014  dma_cfg zero, zero, r9, 10
0013d8  1500b014  dma_cfg zero, zero, r11, 10
0013dc  1500a014  dma_cfg zero, zero, r10, 10
0013e0  15005014  dma_cfg zero, zero, r5, 10
0013e4  15002014  dma_cfg zero, zero, r2, 10
0013e8  00310002  core_id r2
0013ec  15000015  dma_cfg zero, zero, r16, 10
0013f0  15001014  dma_cfg zero, zero, r1, 10
0013f4  9f201000  addli r1, zero, 10
0013f8  15001014  dma_cfg zero, zero, r1, 10
0013fc  9f301000  addli r1, zero, 11
001400  15001014  dma_cfg zero, zero, r1, 10
001404  9f401000  addli r1, zero, 12
001408  15001014  dma_cfg zero, zero, r1, 10
00140c  9f601000  addli r1, zero, 14
001410  15009015  dma_cfg zero, zero, r25, 10
001414  15001014  dma_cfg zero, zero, r1, 10
001418  9f701000  addli r1, zero, 15
00141c  15001014  dma_cfg zero, zero, r1, 10
001420  9f102000  addli r1, zero, 17
001424  1500f014  dma_cfg zero, zero, r15, 10
001428  15001014  dma_cfg zero, zero, r1, 10
00142c  9f202000  addli r1, zero, 18
001430  15001014  dma_cfg zero, zero, r1, 10
001434  9f302000  addli r1, zero, 19
001438  15001014  dma_cfg zero, zero, r1, 10
00143c  9f402000  addli r1, zero, 20
001440  15001014  dma_cfg zero, zero, r1, 10
001444  9f502000  addli r1, zero, 21
001448  15001014  dma_cfg zero, zero, r1, 10
00144c  9f602000  addli r1, zero, 22
001450  15001014  dma_cfg zero, zero, r1, 10
001454  9f702000  addli r1, zero, 23
001458  15001014  dma_cfg zero, zero, r1, 10
00145c  9f003000  addli r1, zero, 24
001460  15001014  dma_cfg zero, zero, r1, 10
001464  9f103000  addli r1, zero, 25
001468  15001014  dma_cfg zero, zero, r1, 10
00146c  9f203000  addli r1, zero, 26
001470  15001014  dma_cfg zero, zero, r1, 10
001474  9f303000  addli r1, zero, 27
001478  15001014  dma_cfg zero, zero, r1, 10
00147c  9f403000  addli r1, zero, 28
001480  15001014  dma_cfg zero, zero, r1, 10
001484  9f503000  addli r1, zero, 29
001488  15001014  dma_cfg zero, zero, r1, 10
00148c  9f603000  addli r1, zero, 30
001490  15001014  dma_cfg zero, zero, r1, 10
001494  9f703000  addli r1, zero, 31
001498  15001014  dma_cfg zero, zero, r1, 10
00149c  958a0a00  dma_cfg r21, r21, zero, 0
0014a0  950a0002  dma_cfg r21, zero, zero, 1
0014a4  15000004  dma_cfg zero, zero, zero, 2
0014a8  150d8006  dma_cfg r26, zero, r8, 3
0014ac  1507b008  dma_cfg r14, zero, r11, 4
0014b0  9509700b  dma_cfg r19, zero, r23, 5
0014b4  15000010  dma_cfg zero, zero, zero, 8
0014b8  35000000  dma_run zero
0014bc  1500500b  dma_cfg zero, zero, r21, 5
0014c0  15000010  dma_cfg zero, zero, zero, 8
0014c4  1d100500  unlock r10
0014c8  7d800200  xsignal r5, 0
0014cc  9b801d00  andi r1, r27, 1
0014d0  bb8400fc  bneq r1, zero, -1760
0014d4  5b080000  j 64
0014d8  9f101000  addli r1, zero, 9
0014dc  7d100c00  xwait r24, 0
0014e0  7d900000  xwait r1, 0
0014e4  1d000000  lock zero, zero
0014e8  9f000001  addli r1, zero, 128
0014ec  010b0000  ds_cfg r22, zero, 0
0014f0  81000002  ds_cfg r1, zero, 1
0014f4  810b001c  ds_cfg r23, zero, 14
0014f8  8100001a  ds_cfg r1, zero, 13
0014fc  c1047d05  shuffle_coa r9, r26, r23, 2
001500  1d100000  unlock zero
001504  7d000e00  xsignal r28, 0
001508  7d000800  xsignal r16, 0
00150c  9b801d00  andi r1, r27, 1
001510  bb8300fc  bneq r1, zero, -1824
001514  3b30b100  bneq r2, r11, 12
001518  9f201000  addli r1, zero, 10
00151c  7d800000  xsignal r1, 0
001520  e3403ff6  loadli.w r1,  -1252(r30)
001524  9f010007  addli r3, zero, 896
001528  e304bfff  loadli.w r9,  -40(r30)
00152c  6b570fb2  load.d r[15:16], -1248(r30)
001530  ab691600  lui r19, 358
001534  b3810128  zext_int2long r[4:5], r3
001538  b3800028  zext_int2long r[2:3], r1
00153c  8b92b438  mod.s r5, r9, r11
001540  17375703  sll.d r[15:16], r[15:16], r21
001544  8ba13040  min.ul r[4:5], r[2:3], r[4:5]
001548  a7810101  addli.d r[4:5], r[4:5], 128
00154c  8ba11148  max.ul r[4:5], r[4:5], r[2:3]
001550  1bb39200  slli r6, r5, 9
001554  8bb01118  sub.sl r[2:3], r[4:5], r[2:3]
001558  9f010001  addli r3, zero, 128
00155c  b3810128  zext_int2long r[4:5], r3
001560  0ba23040  min.ul r[5:6], r[2:3], r[4:5]
001564  9f900400  addli r1, r9, 1
001568  00310002  core_id r2
00156c  8b113311  add.s r3, r6, r19
001570  e70d1ffe  storeli.w r1, -40(r30)
001574  bb548101  bneq r2, r24, 308
001578  eb500f01  load.d r[2:3], 16(r30)
00157c  9f7c0000  addli r25, zero, 7
001580  9f330000  addli r7, zero, 3
001584  0ba6e010  add.ul r[13:14], r[2:3], r[15:16]
001588  1f571000  addli r14, zero, 13
00158c  9f072000  addli r15, zero, 16
001590  7d100700  xwait r14, 0
001594  bff793fa  blt.s r7, r9, -2564
001598  1d000500  lock zero, r10
00159c  9f101000  addli r1, zero, 9
0015a0  15000014  dma_cfg zero, zero, zero, 10
0015a4  15005015  dma_cfg zero, zero, r21, 10
0015a8  15006015  dma_cfg zero, zero, r22, 10
0015ac  15007014  dma_cfg zero, zero, r7, 10
0015b0  1500b014  dma_cfg zero, zero, r11, 10
0015b4  1500a014  dma_cfg zero, zero, r10, 10
0015b8  15008015  dma_cfg zero, zero, r24, 10
0015bc  15009015  dma_cfg zero, zero, r25, 10
0015c0  15000015  dma_cfg zero, zero, r16, 10
0015c4  15001014  dma_cfg zero, zero, r1, 10
0015c8  9f201000  addli r1, zero, 10
0015cc  15001014  dma_cfg zero, zero, r1, 10
0015d0  9f301000  addli r1, zero, 11
0015d4  15001014  dma_cfg zero, zero, r1, 10
0015d8  9f401000  addli r1, zero, 12
0015dc  15001014  dma_cfg zero, zero, r1, 10
0015e0  9f601000  addli r1, zero, 14
0015e4  1500e014  dma_cfg zero, zero, r14, 10
0015e8  15001014  dma_cfg zero, zero, r1, 10
0015ec  9f701000  addli r1, zero, 15
0015f0  15001014  dma_cfg zero, zero, r1, 10
0015f4  9f102000  addli r1, zero, 17
0015f8  1500f014  dma_cfg zero, zero, r15, 10
0015fc  15001014  dma_cfg zero, zero, r1, 10
001600  9f202000  addli r1, zero, 18
001604  15001014  dma_cfg zero, zero, r1, 10
001608  9f302000  addli r1, zero, 19
00160c  15001014  dma_cfg zero, zero, r1, 10
001610  9f402000  addli r1, zero, 20
001614  15001014  dma_cfg zero, zero, r1, 10
001618  9f502000  addli r1, zero, 21
00161c  15001014  dma_cfg zero, zero, r1, 10
001620  9f602000  addli r1, zero, 22
001624  15001014  dma_cfg zero, zero, r1, 10
001628  9f702000  addli r1, zero, 23
00162c  15001014  dma_cfg zero, zero, r1, 10
001630  9f003000  addli r1, zero, 24
001634  15001014  dma_cfg zero, zero, r1, 10
001638  9f103000  addli r1, zero, 25
00163c  15001014  dma_cfg zero, zero, r1, 10
001640  9f203000  addli r1, zero, 26
001644  15001014  dma_cfg zero, zero, r1, 10
001648  9f303000  addli r1, zero, 27
00164c  15001014  dma_cfg zero, zero, r1, 10
001650  9f403000  addli r1, zero, 28
001654  15001014  dma_cfg zero, zero, r1, 10
001658  9f503000  addli r1, zero, 29
00165c  15001014  dma_cfg zero, zero, r1, 10
001660  9f603000  addli r1, zero, 30
001664  15001014  dma_cfg zero, zero, r1, 10
001668  9f703000  addli r1, zero, 31
00166c  15001014  dma_cfg zero, zero, r1, 10
001670  9f000001  addli r1, zero, 128
001674  958a0a00  dma_cfg r21, r21, zero, 0
001678  950a0002  dma_cfg r21, zero, zero, 1
00167c  15000004  dma_cfg zero, zero, zero, 2
001680  95018006  dma_cfg r3, zero, r8, 3
001684  9500b008  dma_cfg r1, zero, r11, 4
001688  9f000004  addli r1, zero, 512
00168c  9500500b  dma_cfg r1, zero, r21, 5
001690  15000010  dma_cfg zero, zero, zero, 8
001694  35000000  dma_run zero
001698  1500500b  dma_cfg zero, zero, r21, 5
00169c  15000010  dma_cfg zero, zero, zero, 8
0016a0  1d100500  unlock r10
0016a4  db9dfeff  j -2836
0016a8  e340dfff  loadli.w r1,  -20(r30)
0016ac  9f7c0000  addli r25, zero, 7
0016b0  1f0a2000  addli r20, zero, 16
0016b4  0b91b038  mod.s r2, r1, r11
0016b8  9f900000  addli r1, r1, 1
0016bc  e74e1ffe  storeli.w r1, -20(r30)
0016c0  9f300000  addli r1, zero, 3
0016c4  9b34f100  slli r9, r2, 15
0016c8  1b910980  ori r2, r19, 2048
0016cc  0b932410  add.s r6, r9, r2
0016d0  00310002  core_id r2
0016d4  b751a100  beq r2, r10, 116
0016d8  3b631100  bneq r2, r1, 216
0016dc  9f201000  addli r1, zero, 10
0016e0  1f020000  addli r4, zero, 0
0016e4  ab820000  lui r5, 8
0016e8  7d900000  xwait r1, 0
0016ec  9f401000  addli r1, zero, 12
0016f0  7d900000  xwait r1, 0
0016f4  7d100a00  xwait r20, 0
0016f8  1d000b00  lock zero, r22
0016fc  ab00803f  lui r1, 260096
001700  0d000002  ew_cfg zero, zero, zero, 1
001704  8d900000  ewcoeff_cfg r1, r1, zero, 0
001708  9f70f000  addli r1, zero, 127
00170c  0d800004  ew_cfg zero, r1, zero, 2
001710  8d0a0006  ew_cfg r21, zero, zero, 3
001714  8b104310  add.s r1, r6, r4
001718  0b914310  add.s r2, r7, r4
00171c  1f020204  addli r4, r4, 512
001720  ad003100  dsmadd r1, r2, r3, 0
001724  bb4f52fe  bneq r4, r5, -16
001728  9f301000  addli r1, zero, 11
00172c  1d100b00  unlock r22
001730  7d800000  xsignal r1, 0
001734  9f501000  addli r1, zero, 13
001738  7d800000  xsignal r1, 0
00173c  9f601000  addli r1, zero, 14
001740  7d800000  xsignal r1, 0
001744  5bb6feff  j -2640
001748  9f601000  addli r1, zero, 14
00174c  7d900000  xwait r1, 0
001750  1d000b00  lock zero, r22
001754  ab00803f  lui r1, 260096
001758  0d000002  ew_cfg zero, zero, zero, 1
00175c  0d101000  ewcoeff_cfg zero, zero, r1, 0
001760  8d0a0024  ew_cfg r21, zero, zero, 18
001764  0d0b0014  ew_cfg r22, zero, zero, 10
001768  e340eff5  loadli.w r1,  -1292(r30)
00176c  0d8b1a16  ew_cfg r22, r21, r1, 11
001770  abc07f41  lui r1, 268284
001774  0d00001a  ew_cfg zero, zero, zero, 13
001778  0d80151c  ew_cfg zero, r11, r1, 14
00177c  0d00001e  ew_cfg zero, zero, zero, 15
001780  eb508faf  load.d r[2:3], -1288(r30)
001784  0d000104  ew_cfg zero, r2, zero, 2
001788  9f701000  addli r1, zero, 15
00178c  8d050006  ew_cfg r11, zero, zero, 3
001790  8d85b526  ew_cfg r11, r11, r11, 19
001794  2d136300  dsmul r6, r6, r6, 0
001798  0d000014  ew_cfg zero, zero, zero, 10
00179c  0d000024  ew_cfg zero, zero, zero, 18
0017a0  0d000026  ew_cfg zero, zero, zero, 19
0017a4  1d100b00  unlock r22
0017a8  7d800000  xsignal r1, 0
0017ac  5ba9feff  j -2744
0017b0  3b1501fa  bneq r2, zero, -2748
0017b4  e3401ff6  loadli.w r1,  -1268(r30)
0017b8  6b530fb1  load.d r[7:8], -1264(r30)
0017bc  9f112000  addli r3, zero, 17
0017c0  6b5d8f01  load.d r[27:28], 24(r30)
0017c4  b3900028  sext_int2long r[2:3], r1
0017c8  17333302  sll.d r[7:8], r[7:8], r3
0017cc  9f711000  addli r3, zero, 15
0017d0  8bb81041  min.sl r[18:19], r[2:3], r[18:19]
0017d4  0b236d10  add.ul r[7:8], r[27:28], r[7:8]
0017d8  7d900100  xwait r3, 0
0017dc  9b910984  ori r3, r19, 2112
0017e0  1d000500  lock zero, r10
0017e4  958a0a00  dma_cfg r21, r21, zero, 0
0017e8  a7888800  addli.d r[18:19], r[18:19], 64
0017ec  0b23e310  add.ul r[7:8], r[7:8], r[15:16]
0017f0  15800a02  dma_cfg zero, r21, zero, 1
0017f4  8b913410  add.s r3, r9, r3
0017f8  9f743200  addli r9, r4, 31
0017fc  1b321200  slli r4, r4, 1
001800  9f020001  addli r5, zero, 128
001804  8bb81848  max.sl r[18:19], r[18:19], r[2:3]
001808  95030004  dma_cfg r7, zero, zero, 2
00180c  15838106  dma_cfg r6, r3, r8, 3
001810  9bc15400  srli r3, r9, 5
001814  8bb01818  sub.sl r[2:3], r[18:19], r[2:3]
001818  15843208  dma_cfg r8, r5, r3, 4
00181c  9b01e203  andi r3, r4, 62
001820  1f020004  addli r4, zero, 512
001824  9f020010  addli r5, zero, 2048
001828  8bb0c040  min.sl r[2:3], r[2:3], r[13:14]
00182c  9502120a  dma_cfg r5, r4, r1, 5
001830  15003010  dma_cfg zero, zero, r3, 8
001834  35000000  dma_run zero
001838  1500500b  dma_cfg zero, zero, r21, 5
00183c  15000010  dma_cfg zero, zero, zero, 8
001840  1d100500  unlock r10
001844  7d000a00  xsignal r20, 0
001848  db95feff  j -2900
00184c  7d000000  xsignal zero, 0
001850  bb600100  bneq r2, zero, 56
001854  9f200000  addli r1, zero, 2
001858  7d100000  xwait zero, 0
00185c  7d100000  xwait zero, 0
001860  7d100000  xwait zero, 0
001864  7d100000  xwait zero, 0
001868  7d100000  xwait zero, 0
00186c  7d100000  xwait zero, 0
001870  7d100000  xwait zero, 0
001874  7d100000  xwait zero, 0
001878  1d800000  lock zero, r1
00187c  0d000020  ew_cfg zero, zero, zero, 16
001880  1d900000  unlock r1
001884  7d400000  xsignal_mode_cfg zero
001888  9f8e2e0a  addli sp, sp, 1296
00188c  00a00300  mfence { lm, sm, gm }
001890  00100000  exit
001894  00100000  exit
001898  00100000  exit
00189c  00100000  exit
0018a0  00100000  exit
0018a4  00100000  exit
0018a8  00100000  exit
0018ac  00100000  exit
0018b0  00100000  exit
0018b4  00100000  exit
0018b8  00100000  exit
0018bc  00100000  exit
0018c0  00100000  exit
0018c4  00100000  exit
0018c8  00100000  exit
0018cc  00100000  exit
0018d0  00100000  exit
0018d4  00100000  exit
0018d8  00100000  exit
0018dc  00100000  exit
0018e0  00100000  exit
0018e4  00100000  exit
0018e8  00100000  exit
0018ec  00100000  exit
0018f0  00100000  exit
0018f4  00100000  exit
0018f8  00100000  exit
0018fc  00100000  exit
001900  00100000  exit
001904  00100000  exit
001908  00100000  exit
00190c  00100000  exit
001910  00100000  exit
001914  00100000  exit
001918  00100000  exit
00191c  00100000  exit
001920  00100000  exit
001924  00100000  exit
001928  00100000  exit
00192c  00100000  exit
001930  00100000  exit
001934  00100000  exit
001938  00100000  exit
00193c  00100000  exit
001940  00100000  exit
001944  00100000  exit
001948  00100000  exit
00194c  00100000  exit
001950  00100000  exit
001954  00100000  exit
001958  00100000  exit
00195c  00100000  exit
001960  00100000  exit
001964  00100000  exit
001968  00100000  exit
00196c  00100000  exit
001970  00100000  exit
001974  00100000  exit
001978  00100000  exit
00197c  00100000  exit
001980  00100000  exit
001984  00100000  exit
001988  00100000  exit
00198c  00100000  exit
001990  00100000  exit
001994  00100000  exit
001998  00100000  exit
00199c  00100000  exit
0019a0  00100000  exit
0019a4  00100000  exit
0019a8  00100000  exit
0019ac  00100000  exit
0019b0  00100000  exit
0019b4  00100000  exit
0019b8  00100000  exit
0019bc  00100000  exit
0019c0  00100000  exit
0019c4  00100000  exit
0019c8  00100000  exit
0019cc  00100000  exit
0019d0  00100000  exit
0019d4  00100000  exit
0019d8  00100000  exit
0019dc  00100000  exit
0019e0  00100000  exit
0019e4  00100000  exit
0019e8  00100000  exit
0019ec  00100000  exit
0019f0  00100000  exit
0019f4  00100000  exit
0019f8  00100000  exit
0019fc  00100000  exit
001a00  00100000  exit
001a04  00100000  exit
001a08  00100000  exit
001a0c  00100000  exit
001a10  00100000  exit
001a14  00100000  exit
001a18  00100000  exit
001a1c  00100000  exit
001a20  00100000  exit
001a24  00100000  exit
001a28  00100000  exit
001a2c  00100000  exit
001a30  00100000  exit
001a34  00100000  exit
001a38  00100000  exit
001a3c  00100000  exit
001a40  00100000  exit
001a44  00100000  exit
001a48  00100000  exit
001a4c  00100000  exit
001a50  00100000  exit
001a54  00100000  exit
001a58  00100000  exit
001a5c  00100000  exit
001a60  00100000  exit
001a64  00100000  exit
001a68  00100000  exit
001a6c  00100000  exit
001a70  00100000  exit
001a74  00100000  exit
001a78  00100000  exit
001a7c  00100000  exit
001a80  00100000  exit
001a84  00100000  exit
001a88  00100000  exit
001a8c  00100000  exit
001a90  00100000  exit
001a94  00100000  exit
001a98  00100000  exit
001a9c  00100000  exit
001aa0  00100000  exit
001aa4  00100000  exit
001aa8  00100000  exit
001aac  00100000  exit
001ab0  00100000  exit
001ab4  00100000  exit
001ab8  00100000  exit
001abc  00100000  exit
001ac0  00100000  exit
001ac4  00100000  exit
001ac8  00100000  exit
001acc  00100000  exit
001ad0  00100000  exit
