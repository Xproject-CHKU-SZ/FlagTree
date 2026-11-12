; SHA-256 5be86c5e62c51824a89aa27e8e22871412d9b4ab093af8b0f10f0fff083cb0db
; P800 SDNN · XTDK LLVM 19 · 1678 / 1678 words decoded
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
0000b4  9f8e7ef5  addli sp, sp, -1352
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8f1e0a  addli r30, sp, 1288
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7100100  beq r2, zero, 36
0000cc  abf1ffff  lui r3, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b90f1ff  ori r1, r3, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  dbad0000  j 1388
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
00019c  9f500000  addli r1, zero, 5
0001a0  9f310000  addli r3, zero, 3
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
000404  7d800100  xsignal r3, 0
000408  9f101000  addli r1, zero, 9
00040c  9f710000  addli r3, zero, 7
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
00054c  7d800000  xsignal r1, 0
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
000624  7d800100  xsignal r3, 0
000628  7d800100  xsignal r3, 0
00062c  7d800100  xsignal r3, 0
000630  7d800100  xsignal r3, 0
000634  9f501000  addli r1, zero, 13
000638  9f012000  addli r3, zero, 16
00063c  7d800000  xsignal r1, 0
000640  7d800000  xsignal r1, 0
000644  7d800000  xsignal r1, 0
000648  7d800100  xsignal r3, 0
00064c  7d800100  xsignal r3, 0
000650  7d800100  xsignal r3, 0
000654  e3005f00  loadli.w r1,  40(r30)
000658  e3415f00  loadli.w r3,  44(r30)
00065c  00d20002  load_param_i r4, 1
000660  e3026f00  loadli.w r5,  48(r30)
000664  80530002  load_param_i r7, 0
000668  2bf3ffff  lui r6, 1048575
00066c  670f0ffe  storeli.w zero, -16(r30)
000670  670e0ffe  storeli.w zero, -32(r30)
000674  e70f0ffc  storeli.w zero, -264(r30)
000678  674b0ffa  storeli.w zero, -588(r30)
00067c  e74c0ff8  storeli.w zero, -820(r30)
000680  e7040ff6  storeli.w zero, -1208(r30)
000684  8b901120  mul.s r1, r3, r1
000688  9f010200  addli r3, r4, 0
00068c  8b915050  fmac.s r3, r1, r5
000690  8b925020  mul.s r5, r1, r5
000694  9ff1f1ff  addli r3, r3, -1
000698  8b914130  div.s r3, r3, r4
00069c  1b12f3ff  ori r4, r6, 4095
0006a0  674f4ffe  storeli.w r4, -12(r30)
0006a4  e70f4ffe  storeli.w r4, -8(r30)
0006a8  e74f4ffe  storeli.w r4, -4(r30)
0006ac  674e4ffe  storeli.w r4, -28(r30)
0006b0  e70e4ffe  storeli.w r4, -24(r30)
0006b4  e74e4ffe  storeli.w r4, -20(r30)
0006b8  e74f4ffc  storeli.w r4, -260(r30)
0006bc  67004ffe  storeli.w r4, -256(r30)
0006c0  67404ffe  storeli.w r4, -252(r30)
0006c4  e7004ffe  storeli.w r4, -248(r30)
0006c8  e7404ffe  storeli.w r4, -244(r30)
0006cc  67014ffe  storeli.w r4, -240(r30)
0006d0  67414ffe  storeli.w r4, -236(r30)
0006d4  e7014ffe  storeli.w r4, -232(r30)
0006d8  e7414ffe  storeli.w r4, -228(r30)
0006dc  67024ffe  storeli.w r4, -224(r30)
0006e0  67424ffe  storeli.w r4, -220(r30)
0006e4  e7024ffe  storeli.w r4, -216(r30)
0006e8  e7424ffe  storeli.w r4, -212(r30)
0006ec  67034ffe  storeli.w r4, -208(r30)
0006f0  67434ffe  storeli.w r4, -204(r30)
0006f4  e7034ffe  storeli.w r4, -200(r30)
0006f8  e7434ffe  storeli.w r4, -196(r30)
0006fc  67044ffe  storeli.w r4, -192(r30)
000700  67444ffe  storeli.w r4, -188(r30)
000704  e7044ffe  storeli.w r4, -184(r30)
000708  e7444ffe  storeli.w r4, -180(r30)
00070c  67054ffe  storeli.w r4, -176(r30)
000710  67454ffe  storeli.w r4, -172(r30)
000714  e7054ffe  storeli.w r4, -168(r30)
000718  e7454ffe  storeli.w r4, -164(r30)
00071c  67064ffe  storeli.w r4, -160(r30)
000720  67464ffe  storeli.w r4, -156(r30)
000724  e7064ffe  storeli.w r4, -152(r30)
000728  e7464ffe  storeli.w r4, -148(r30)
00072c  67074ffe  storeli.w r4, -144(r30)
000730  67474ffe  storeli.w r4, -140(r30)
000734  e7074ffe  storeli.w r4, -136(r30)
000738  e7474ffe  storeli.w r4, -132(r30)
00073c  67084ffe  storeli.w r4, -128(r30)
000740  67484ffe  storeli.w r4, -124(r30)
000744  e7084ffe  storeli.w r4, -120(r30)
000748  e7484ffe  storeli.w r4, -116(r30)
00074c  67094ffe  storeli.w r4, -112(r30)
000750  67494ffe  storeli.w r4, -108(r30)
000754  e7094ffe  storeli.w r4, -104(r30)
000758  e7494ffe  storeli.w r4, -100(r30)
00075c  670a4ffe  storeli.w r4, -96(r30)
000760  674a4ffe  storeli.w r4, -92(r30)
000764  e70a4ffe  storeli.w r4, -88(r30)
000768  e74a4ffe  storeli.w r4, -84(r30)
00076c  670b4ffe  storeli.w r4, -80(r30)
000770  674b4ffe  storeli.w r4, -76(r30)
000774  e70b4ffe  storeli.w r4, -72(r30)
000778  e74b4ffe  storeli.w r4, -68(r30)
00077c  670c4ffe  storeli.w r4, -64(r30)
000780  674c4ffe  storeli.w r4, -60(r30)
000784  e70c4ffe  storeli.w r4, -56(r30)
000788  e74c4ffe  storeli.w r4, -52(r30)
00078c  670d4ffe  storeli.w r4, -48(r30)
000790  674d4ffe  storeli.w r4, -44(r30)
000794  e70d4ffe  storeli.w r4, -40(r30)
000798  e74d4ffe  storeli.w r4, -36(r30)
00079c  e70b4ffa  storeli.w r4, -584(r30)
0007a0  e74b4ffa  storeli.w r4, -580(r30)
0007a4  670c4ffa  storeli.w r4, -576(r30)
0007a8  674c4ffa  storeli.w r4, -572(r30)
0007ac  e70c4ffa  storeli.w r4, -568(r30)
0007b0  e74c4ffa  storeli.w r4, -564(r30)
0007b4  670d4ffa  storeli.w r4, -560(r30)
0007b8  674d4ffa  storeli.w r4, -556(r30)
0007bc  e70d4ffa  storeli.w r4, -552(r30)
0007c0  e74d4ffa  storeli.w r4, -548(r30)
0007c4  670e4ffa  storeli.w r4, -544(r30)
0007c8  674e4ffa  storeli.w r4, -540(r30)
0007cc  e70e4ffa  storeli.w r4, -536(r30)
0007d0  e74e4ffa  storeli.w r4, -532(r30)
0007d4  670f4ffa  storeli.w r4, -528(r30)
0007d8  674f4ffa  storeli.w r4, -524(r30)
0007dc  e70f4ffa  storeli.w r4, -520(r30)
0007e0  e74f4ffa  storeli.w r4, -516(r30)
0007e4  67004ffc  storeli.w r4, -512(r30)
0007e8  67404ffc  storeli.w r4, -508(r30)
0007ec  e7004ffc  storeli.w r4, -504(r30)
0007f0  e7404ffc  storeli.w r4, -500(r30)
0007f4  67014ffc  storeli.w r4, -496(r30)
0007f8  67414ffc  storeli.w r4, -492(r30)
0007fc  e7014ffc  storeli.w r4, -488(r30)
000800  e7414ffc  storeli.w r4, -484(r30)
000804  67024ffc  storeli.w r4, -480(r30)
000808  67424ffc  storeli.w r4, -476(r30)
00080c  e7024ffc  storeli.w r4, -472(r30)
000810  e7424ffc  storeli.w r4, -468(r30)
000814  67034ffc  storeli.w r4, -464(r30)
000818  67434ffc  storeli.w r4, -460(r30)
00081c  e7034ffc  storeli.w r4, -456(r30)
000820  e7434ffc  storeli.w r4, -452(r30)
000824  67044ffc  storeli.w r4, -448(r30)
000828  67444ffc  storeli.w r4, -444(r30)
00082c  e7044ffc  storeli.w r4, -440(r30)
000830  e7444ffc  storeli.w r4, -436(r30)
000834  67054ffc  storeli.w r4, -432(r30)
000838  67454ffc  storeli.w r4, -428(r30)
00083c  e7054ffc  storeli.w r4, -424(r30)
000840  e7454ffc  storeli.w r4, -420(r30)
000844  67064ffc  storeli.w r4, -416(r30)
000848  67464ffc  storeli.w r4, -412(r30)
00084c  e7064ffc  storeli.w r4, -408(r30)
000850  e7464ffc  storeli.w r4, -404(r30)
000854  67074ffc  storeli.w r4, -400(r30)
000858  67474ffc  storeli.w r4, -396(r30)
00085c  e7074ffc  storeli.w r4, -392(r30)
000860  e7474ffc  storeli.w r4, -388(r30)
000864  67084ffc  storeli.w r4, -384(r30)
000868  67484ffc  storeli.w r4, -380(r30)
00086c  e7084ffc  storeli.w r4, -376(r30)
000870  e7484ffc  storeli.w r4, -372(r30)
000874  67094ffc  storeli.w r4, -368(r30)
000878  67494ffc  storeli.w r4, -364(r30)
00087c  e7094ffc  storeli.w r4, -360(r30)
000880  e7494ffc  storeli.w r4, -356(r30)
000884  670a4ffc  storeli.w r4, -352(r30)
000888  674a4ffc  storeli.w r4, -348(r30)
00088c  e70a4ffc  storeli.w r4, -344(r30)
000890  e74a4ffc  storeli.w r4, -340(r30)
000894  670b4ffc  storeli.w r4, -336(r30)
000898  674b4ffc  storeli.w r4, -332(r30)
00089c  e70b4ffc  storeli.w r4, -328(r30)
0008a0  e74b4ffc  storeli.w r4, -324(r30)
0008a4  670c4ffc  storeli.w r4, -320(r30)
0008a8  674c4ffc  storeli.w r4, -316(r30)
0008ac  e70c4ffc  storeli.w r4, -312(r30)
0008b0  e74c4ffc  storeli.w r4, -308(r30)
0008b4  670d4ffc  storeli.w r4, -304(r30)
0008b8  674d4ffc  storeli.w r4, -300(r30)
0008bc  e70d4ffc  storeli.w r4, -296(r30)
0008c0  e74d4ffc  storeli.w r4, -292(r30)
0008c4  670e4ffc  storeli.w r4, -288(r30)
0008c8  674e4ffc  storeli.w r4, -284(r30)
0008cc  e70e4ffc  storeli.w r4, -280(r30)
0008d0  e74e4ffc  storeli.w r4, -276(r30)
0008d4  670f4ffc  storeli.w r4, -272(r30)
0008d8  674f4ffc  storeli.w r4, -268(r30)
0008dc  670d4ff8  storeli.w r4, -816(r30)
0008e0  674d4ff8  storeli.w r4, -812(r30)
0008e4  e70d4ff8  storeli.w r4, -808(r30)
0008e8  e74d4ff8  storeli.w r4, -804(r30)
0008ec  670e4ff8  storeli.w r4, -800(r30)
0008f0  674e4ff8  storeli.w r4, -796(r30)
0008f4  e70e4ff8  storeli.w r4, -792(r30)
0008f8  e74e4ff8  storeli.w r4, -788(r30)
0008fc  670f4ff8  storeli.w r4, -784(r30)
000900  674f4ff8  storeli.w r4, -780(r30)
000904  e70f4ff8  storeli.w r4, -776(r30)
000908  e74f4ff8  storeli.w r4, -772(r30)
00090c  67004ffa  storeli.w r4, -768(r30)
000910  67404ffa  storeli.w r4, -764(r30)
000914  e7004ffa  storeli.w r4, -760(r30)
000918  e7404ffa  storeli.w r4, -756(r30)
00091c  67014ffa  storeli.w r4, -752(r30)
000920  67414ffa  storeli.w r4, -748(r30)
000924  e7014ffa  storeli.w r4, -744(r30)
000928  e7414ffa  storeli.w r4, -740(r30)
00092c  67024ffa  storeli.w r4, -736(r30)
000930  67424ffa  storeli.w r4, -732(r30)
000934  e7024ffa  storeli.w r4, -728(r30)
000938  e7424ffa  storeli.w r4, -724(r30)
00093c  67034ffa  storeli.w r4, -720(r30)
000940  67434ffa  storeli.w r4, -716(r30)
000944  e7034ffa  storeli.w r4, -712(r30)
000948  e7434ffa  storeli.w r4, -708(r30)
00094c  67044ffa  storeli.w r4, -704(r30)
000950  67444ffa  storeli.w r4, -700(r30)
000954  e7044ffa  storeli.w r4, -696(r30)
000958  e7444ffa  storeli.w r4, -692(r30)
00095c  67054ffa  storeli.w r4, -688(r30)
000960  67454ffa  storeli.w r4, -684(r30)
000964  e7054ffa  storeli.w r4, -680(r30)
000968  e7454ffa  storeli.w r4, -676(r30)
00096c  67064ffa  storeli.w r4, -672(r30)
000970  67464ffa  storeli.w r4, -668(r30)
000974  e7064ffa  storeli.w r4, -664(r30)
000978  e7464ffa  storeli.w r4, -660(r30)
00097c  67074ffa  storeli.w r4, -656(r30)
000980  67474ffa  storeli.w r4, -652(r30)
000984  e7074ffa  storeli.w r4, -648(r30)
000988  e7474ffa  storeli.w r4, -644(r30)
00098c  67084ffa  storeli.w r4, -640(r30)
000990  67484ffa  storeli.w r4, -636(r30)
000994  e7084ffa  storeli.w r4, -632(r30)
000998  e7484ffa  storeli.w r4, -628(r30)
00099c  67094ffa  storeli.w r4, -624(r30)
0009a0  67494ffa  storeli.w r4, -620(r30)
0009a4  e7094ffa  storeli.w r4, -616(r30)
0009a8  e7494ffa  storeli.w r4, -612(r30)
0009ac  670a4ffa  storeli.w r4, -608(r30)
0009b0  674a4ffa  storeli.w r4, -604(r30)
0009b4  e70a4ffa  storeli.w r4, -600(r30)
0009b8  e74a4ffa  storeli.w r4, -596(r30)
0009bc  670b4ffa  storeli.w r4, -592(r30)
0009c0  e7444ff6  storeli.w r4, -1204(r30)
0009c4  67054ff6  storeli.w r4, -1200(r30)
0009c8  67454ff6  storeli.w r4, -1196(r30)
0009cc  e7054ff6  storeli.w r4, -1192(r30)
0009d0  e7454ff6  storeli.w r4, -1188(r30)
0009d4  67064ff6  storeli.w r4, -1184(r30)
0009d8  67464ff6  storeli.w r4, -1180(r30)
0009dc  e7064ff6  storeli.w r4, -1176(r30)
0009e0  e7464ff6  storeli.w r4, -1172(r30)
0009e4  67074ff6  storeli.w r4, -1168(r30)
0009e8  67474ff6  storeli.w r4, -1164(r30)
0009ec  e7074ff6  storeli.w r4, -1160(r30)
0009f0  e7474ff6  storeli.w r4, -1156(r30)
0009f4  67084ff6  storeli.w r4, -1152(r30)
0009f8  67484ff6  storeli.w r4, -1148(r30)
0009fc  e7084ff6  storeli.w r4, -1144(r30)
000a00  e7484ff6  storeli.w r4, -1140(r30)
000a04  67094ff6  storeli.w r4, -1136(r30)
000a08  67494ff6  storeli.w r4, -1132(r30)
000a0c  e7094ff6  storeli.w r4, -1128(r30)
000a10  e7494ff6  storeli.w r4, -1124(r30)
000a14  670a4ff6  storeli.w r4, -1120(r30)
000a18  674a4ff6  storeli.w r4, -1116(r30)
000a1c  e70a4ff6  storeli.w r4, -1112(r30)
000a20  e74a4ff6  storeli.w r4, -1108(r30)
000a24  670b4ff6  storeli.w r4, -1104(r30)
000a28  674b4ff6  storeli.w r4, -1100(r30)
000a2c  e70b4ff6  storeli.w r4, -1096(r30)
000a30  e74b4ff6  storeli.w r4, -1092(r30)
000a34  670c4ff6  storeli.w r4, -1088(r30)
000a38  674c4ff6  storeli.w r4, -1084(r30)
000a3c  e70c4ff6  storeli.w r4, -1080(r30)
000a40  e74c4ff6  storeli.w r4, -1076(r30)
000a44  670d4ff6  storeli.w r4, -1072(r30)
000a48  674d4ff6  storeli.w r4, -1068(r30)
000a4c  e70d4ff6  storeli.w r4, -1064(r30)
000a50  e74d4ff6  storeli.w r4, -1060(r30)
000a54  670e4ff6  storeli.w r4, -1056(r30)
000a58  674e4ff6  storeli.w r4, -1052(r30)
000a5c  e70e4ff6  storeli.w r4, -1048(r30)
000a60  e74e4ff6  storeli.w r4, -1044(r30)
000a64  670f4ff6  storeli.w r4, -1040(r30)
000a68  674f4ff6  storeli.w r4, -1036(r30)
000a6c  e70f4ff6  storeli.w r4, -1032(r30)
000a70  e74f4ff6  storeli.w r4, -1028(r30)
000a74  67004ff8  storeli.w r4, -1024(r30)
000a78  67404ff8  storeli.w r4, -1020(r30)
000a7c  e7004ff8  storeli.w r4, -1016(r30)
000a80  e7404ff8  storeli.w r4, -1012(r30)
000a84  67014ff8  storeli.w r4, -1008(r30)
000a88  67414ff8  storeli.w r4, -1004(r30)
000a8c  e7014ff8  storeli.w r4, -1000(r30)
000a90  e7414ff8  storeli.w r4, -996(r30)
000a94  67024ff8  storeli.w r4, -992(r30)
000a98  67424ff8  storeli.w r4, -988(r30)
000a9c  e7024ff8  storeli.w r4, -984(r30)
000aa0  e7424ff8  storeli.w r4, -980(r30)
000aa4  67034ff8  storeli.w r4, -976(r30)
000aa8  67434ff8  storeli.w r4, -972(r30)
000aac  e7034ff8  storeli.w r4, -968(r30)
000ab0  e7434ff8  storeli.w r4, -964(r30)
000ab4  67044ff8  storeli.w r4, -960(r30)
000ab8  67444ff8  storeli.w r4, -956(r30)
000abc  e7044ff8  storeli.w r4, -952(r30)
000ac0  e7444ff8  storeli.w r4, -948(r30)
000ac4  67054ff8  storeli.w r4, -944(r30)
000ac8  67454ff8  storeli.w r4, -940(r30)
000acc  e7054ff8  storeli.w r4, -936(r30)
000ad0  e7454ff8  storeli.w r4, -932(r30)
000ad4  67064ff8  storeli.w r4, -928(r30)
000ad8  67464ff8  storeli.w r4, -924(r30)
000adc  e7064ff8  storeli.w r4, -920(r30)
000ae0  e7464ff8  storeli.w r4, -916(r30)
000ae4  67074ff8  storeli.w r4, -912(r30)
000ae8  67474ff8  storeli.w r4, -908(r30)
000aec  e7074ff8  storeli.w r4, -904(r30)
000af0  e7474ff8  storeli.w r4, -900(r30)
000af4  67084ff8  storeli.w r4, -896(r30)
000af8  67484ff8  storeli.w r4, -892(r30)
000afc  e7084ff8  storeli.w r4, -888(r30)
000b00  e7484ff8  storeli.w r4, -884(r30)
000b04  67094ff8  storeli.w r4, -880(r30)
000b08  67494ff8  storeli.w r4, -876(r30)
000b0c  e7094ff8  storeli.w r4, -872(r30)
000b10  e7494ff8  storeli.w r4, -868(r30)
000b14  670a4ff8  storeli.w r4, -864(r30)
000b18  674a4ff8  storeli.w r4, -860(r30)
000b1c  e70a4ff8  storeli.w r4, -856(r30)
000b20  e74a4ff8  storeli.w r4, -852(r30)
000b24  670b4ff8  storeli.w r4, -848(r30)
000b28  674b4ff8  storeli.w r4, -844(r30)
000b2c  e70b4ff8  storeli.w r4, -840(r30)
000b30  e74b4ff8  storeli.w r4, -836(r30)
000b34  670c4ff8  storeli.w r4, -832(r30)
000b38  674c4ff8  storeli.w r4, -828(r30)
000b3c  e70c4ff8  storeli.w r4, -824(r30)
000b40  8b907120  mul.s r1, r3, r7
000b44  8b917150  fmac.s r3, r3, r7
000b48  8b915140  min.s r3, r3, r5
000b4c  cb911106  ble.s r3, r1, 3172
000b50  b3910128  sext_int2long r[4:5], r3
000b54  b3920028  sext_int2long r[6:7], r1
000b58  ab800200  lui r1, 40
000b5c  1f048000  addli r8, zero, 64
000b60  9f140000  addli r9, zero, 1
000b64  9f380000  addli r17, zero, 3
000b68  9f460000  addli r13, zero, 4
000b6c  1f551000  addli r10, zero, 13
000b70  9f690000  addli r19, zero, 6
000b74  1f2a0000  addli r20, zero, 2
000b78  9f5a0000  addli r21, zero, 5
000b7c  1f0b4000  addli r22, zero, 32
000b80  9f0d0001  addli r27, zero, 128
000b84  1f461000  addli r12, zero, 12
000b88  73303fb0  store.d r[4:5], -1280(r30)
000b8c  9b902084  ori r1, r1, 2114
000b90  1f020000  addli r4, zero, 0
000b94  e74f1ff4  storeli.w r1, -1284(r30)
000b98  5b300000  j 384
000b9c  9b110e04  ori r3, r28, 64
000ba0  1d800600  lock zero, r13
000ba4  9f030004  addli r7, zero, 512
000ba8  1f461000  addli r12, zero, 12
000bac  95840400  dma_cfg r9, r9, zero, 0
000bb0  8b113210  add.s r3, r4, r3
000bb4  1ff23200  addli r4, r5, 31
000bb8  15800704  dma_cfg zero, r15, zero, 2
000bbc  95018706  dma_cfg r3, r14, r8, 3
000bc0  9b415200  srli r3, r4, 5
000bc4  1bb21200  slli r4, r5, 1
000bc8  9f020002  addli r5, zero, 256
000bcc  1f631000  addli r6, zero, 14
000bd0  950d3408  dma_cfg r27, r8, r3, 4
000bd4  1b02e203  andi r4, r4, 62
000bd8  9583920a  dma_cfg r7, r5, r9, 5
000bdc  9f021000  addli r5, zero, 8
000be0  15004010  dma_cfg zero, zero, r4, 8
000be4  35000000  dma_run zero
000be8  1500900a  dma_cfg zero, zero, r9, 5
000bec  15000010  dma_cfg zero, zero, zero, 8
000bf0  1d900600  unlock r13
000bf4  1d800a00  lock zero, r21
000bf8  15000014  dma_cfg zero, zero, zero, 10
000bfc  15009014  dma_cfg zero, zero, r9, 10
000c00  15004015  dma_cfg zero, zero, r20, 10
000c04  15001015  dma_cfg zero, zero, r17, 10
000c08  1500d014  dma_cfg zero, zero, r13, 10
000c0c  15005015  dma_cfg zero, zero, r21, 10
000c10  15003015  dma_cfg zero, zero, r19, 10
000c14  1500b014  dma_cfg zero, zero, r11, 10
000c18  15005014  dma_cfg zero, zero, r5, 10
000c1c  9f121000  addli r5, zero, 9
000c20  15005014  dma_cfg zero, zero, r5, 10
000c24  9f221000  addli r5, zero, 10
000c28  15005014  dma_cfg zero, zero, r5, 10
000c2c  9f321000  addli r5, zero, 11
000c30  15005014  dma_cfg zero, zero, r5, 10
000c34  9f421000  addli r5, zero, 12
000c38  15005014  dma_cfg zero, zero, r5, 10
000c3c  1500a014  dma_cfg zero, zero, r10, 10
000c40  15006014  dma_cfg zero, zero, r6, 10
000c44  1f731000  addli r6, zero, 15
000c48  15006014  dma_cfg zero, zero, r6, 10
000c4c  1f232000  addli r6, zero, 18
000c50  15000015  dma_cfg zero, zero, r16, 10
000c54  15002015  dma_cfg zero, zero, r18, 10
000c58  15006014  dma_cfg zero, zero, r6, 10
000c5c  1f332000  addli r6, zero, 19
000c60  15006014  dma_cfg zero, zero, r6, 10
000c64  1f432000  addli r6, zero, 20
000c68  15006014  dma_cfg zero, zero, r6, 10
000c6c  1f532000  addli r6, zero, 21
000c70  15006014  dma_cfg zero, zero, r6, 10
000c74  1f632000  addli r6, zero, 22
000c78  15006014  dma_cfg zero, zero, r6, 10
000c7c  1f732000  addli r6, zero, 23
000c80  15006014  dma_cfg zero, zero, r6, 10
000c84  1f033000  addli r6, zero, 24
000c88  15006014  dma_cfg zero, zero, r6, 10
000c8c  1f133000  addli r6, zero, 25
000c90  15006014  dma_cfg zero, zero, r6, 10
000c94  1f233000  addli r6, zero, 26
000c98  15006014  dma_cfg zero, zero, r6, 10
000c9c  1f333000  addli r6, zero, 27
000ca0  15006014  dma_cfg zero, zero, r6, 10
000ca4  1f433000  addli r6, zero, 28
000ca8  15006014  dma_cfg zero, zero, r6, 10
000cac  1f533000  addli r6, zero, 29
000cb0  15006014  dma_cfg zero, zero, r6, 10
000cb4  1f633000  addli r6, zero, 30
000cb8  15006014  dma_cfg zero, zero, r6, 10
000cbc  1f733000  addli r6, zero, 31
000cc0  15006014  dma_cfg zero, zero, r6, 10
000cc4  95840400  dma_cfg r9, r9, zero, 0
000cc8  95040002  dma_cfg r9, zero, zero, 1
000ccc  15000004  dma_cfg zero, zero, zero, 2
000cd0  95008006  dma_cfg r1, zero, r8, 3
000cd4  950d3008  dma_cfg r27, zero, r3, 4
000cd8  9503900a  dma_cfg r7, zero, r9, 5
000cdc  15004010  dma_cfg zero, zero, r4, 8
000ce0  35000000  dma_run zero
000ce4  1500900a  dma_cfg zero, zero, r9, 5
000ce8  15000010  dma_cfg zero, zero, zero, 8
000cec  1d900a00  unlock r21
000cf0  7d800200  xsignal r5, 0
000cf4  e300efff  loadli.w r1,  -16(r30)
000cf8  9f900000  addli r1, r1, 1
000cfc  670f1ffe  storeli.w r1, -16(r30)
000d00  eb520fb3  load.d r[6:7], -1232(r30)
000d04  eb510fb0  load.d r[4:5], -1280(r30)
000d08  a7920200  addli.d r[6:7], r[6:7], 1
000d0c  93b03204  setlt.sl r1, r[6:7], r[4:5]
000d10  63425ff6  loadli.w r4,  -1236(r30)
000d14  37fa0004  beq r1, zero, 2716
000d18  1f092000  addli r18, zero, 16
000d1c  3b30d100  bneq r2, r13, 12
000d20  9f301000  addli r1, zero, 11
000d24  7d900000  xwait r1, 0
000d28  e3006f00  loadli.w r1,  48(r30)
000d2c  e3415f00  loadli.w r3,  44(r30)
000d30  73385fb2  store.d r[6:7], -1232(r30)
000d34  9f031000  addli r7, zero, 8
000d38  1f1e0000  addli r28, zero, 1
000d3c  eb5b8f00  load.d r[24:25], 8(r30)
000d40  9f0c0000  addli r25, zero, 0
000d44  8b901230  div.s r1, r5, r1
000d48  8b121239  mod.s r5, r4, r17
000d4c  1f120200  addli r4, r4, 1
000d50  e7424ff6  storeli.w r4, -1236(r30)
000d54  8b903030  div.s r1, r1, r3
000d58  8b918030  div.s r3, r1, r8
000d5c  1bb33100  slli r6, r3, 3
000d60  9bb16100  slli r3, r3, 6
000d64  0b926418  sub.s r4, r9, r6
000d68  8b913018  sub.s r3, r1, r3
000d6c  0b127240  min.s r4, r4, r7
000d70  8b934038  mod.s r7, r1, r4
000d74  0b974130  div.s r14, r3, r4
000d78  9bb1f200  slli r3, r5, 15
000d7c  e3009ff6  loadli.w r1,  -1208(r30)
000d80  63429ff9  loadli.w r4,  -820(r30)
000d84  8b127310  add.s r5, r6, r7
000d88  1b337700  slli r6, r14, 7
000d8c  9bb56200  slli r11, r5, 6
000d90  e7416ff6  storeli.w r6, -1252(r30)
000d94  33030728  zext_int2long r[7:8], r14
000d98  33870228  zext_int2long r[15:16], r5
000d9c  e740bff6  storeli.w r11, -1268(r30)
000da0  9f750000  addli r11, zero, 7
000da4  7338efb0  store.d r[15:16], -1264(r30)
000da8  1737a702  sll.d r[15:16], r[15:16], r10
000dac  1f750000  addli r10, zero, 7
000db0  1733b302  sll.d r[7:8], r[7:8], r11
000db4  9f551000  addli r11, zero, 13
000db8  73306fb2  store.d r[7:8], -1248(r30)
000dbc  9732c303  sll.d r[6:7], r[7:8], r28
000dc0  8ba25b10  add.ul r[6:7], r[24:25], r[6:7]
000dc4  9f0b0000  addli r23, zero, 0
000dc8  733c5fb2  store.d r[6:7], -1224(r30)
000dcc  eb520f00  load.d r[6:7], 0(r30)
000dd0  8ba2e210  add.ul r[6:7], r[6:7], r[15:16]
000dd4  73305fb4  store.d r[6:7], -1216(r30)
000dd8  2b830100  lui r6, 24
000ddc  9f122000  addli r5, zero, 17
000de0  db030000  j 28
000de4  1b021e00  andi r4, r28, 1
000de8  b75a0202  beq r4, zero, 1716
000dec  1f0e0000  addli r28, zero, 0
000df0  9f9c0c00  addli r25, r25, 1
000df4  9f1b0000  addli r23, zero, 1
000df8  1f820300  addli r4, r7, 0
000dfc  1f177000  addli r14, zero, 57
000e00  9f03c000  addli r7, zero, 96
000e04  8b17e238  mod.s r15, r4, r14
000e08  8b937038  mod.s r7, r1, r7
000e0c  9f900000  addli r1, r1, 1
000e10  e7041ff6  storeli.w r1, -1208(r30)
000e14  9bb7d700  slli r15, r15, 13
000e18  1bb7d300  slli r14, r7, 13
000e1c  9f130200  addli r7, r4, 1
000e20  0b9d6710  add.s r26, r15, r6
000e24  e74c7ff8  storeli.w r7, -820(r30)
000e28  b7194101  beq r2, r20, 612
000e2c  b38b0b28  zext_int2long r[24:25], r23
000e30  3b5d3101  bneq r2, r19, 852
000e34  6b580fb4  load.d r[17:18], -1216(r30)
000e38  97bb3b03  sll.d r[24:25], r[24:25], r19
000e3c  8b2b7811  add.ul r[24:25], r[17:18], r[24:25]
000e40  9f380000  addli r17, zero, 3
000e44  1f087000  addli r16, zero, 56
000e48  7d900800  xwait r17, 0
000e4c  3f144800  blt.s r16, r4, 260
000e50  1d800a00  lock zero, r21
000e54  1f021000  addli r4, zero, 8
000e58  15000014  dma_cfg zero, zero, zero, 10
000e5c  15009014  dma_cfg zero, zero, r9, 10
000e60  15004015  dma_cfg zero, zero, r20, 10
000e64  15001015  dma_cfg zero, zero, r17, 10
000e68  1500d014  dma_cfg zero, zero, r13, 10
000e6c  15005015  dma_cfg zero, zero, r21, 10
000e70  15003015  dma_cfg zero, zero, r19, 10
000e74  1500a014  dma_cfg zero, zero, r10, 10
000e78  15004014  dma_cfg zero, zero, r4, 10
000e7c  1f121000  addli r4, zero, 9
000e80  15004014  dma_cfg zero, zero, r4, 10
000e84  1f221000  addli r4, zero, 10
000e88  15004014  dma_cfg zero, zero, r4, 10
000e8c  1f321000  addli r4, zero, 11
000e90  15004014  dma_cfg zero, zero, r4, 10
000e94  1f621000  addli r4, zero, 14
000e98  1500c014  dma_cfg zero, zero, r12, 10
000e9c  1500b014  dma_cfg zero, zero, r11, 10
000ea0  15004014  dma_cfg zero, zero, r4, 10
000ea4  1f721000  addli r4, zero, 15
000ea8  15004014  dma_cfg zero, zero, r4, 10
000eac  1f222000  addli r4, zero, 18
000eb0  15002015  dma_cfg zero, zero, r18, 10
000eb4  15005014  dma_cfg zero, zero, r5, 10
000eb8  15004014  dma_cfg zero, zero, r4, 10
000ebc  1f322000  addli r4, zero, 19
000ec0  15004014  dma_cfg zero, zero, r4, 10
000ec4  1f422000  addli r4, zero, 20
000ec8  15004014  dma_cfg zero, zero, r4, 10
000ecc  1f522000  addli r4, zero, 21
000ed0  15004014  dma_cfg zero, zero, r4, 10
000ed4  1f622000  addli r4, zero, 22
000ed8  15004014  dma_cfg zero, zero, r4, 10
000edc  1f722000  addli r4, zero, 23
000ee0  15004014  dma_cfg zero, zero, r4, 10
000ee4  1f023000  addli r4, zero, 24
000ee8  15004014  dma_cfg zero, zero, r4, 10
000eec  1f123000  addli r4, zero, 25
000ef0  15004014  dma_cfg zero, zero, r4, 10
000ef4  1f223000  addli r4, zero, 26
000ef8  15004014  dma_cfg zero, zero, r4, 10
000efc  1f323000  addli r4, zero, 27
000f00  15004014  dma_cfg zero, zero, r4, 10
000f04  1f423000  addli r4, zero, 28
000f08  15004014  dma_cfg zero, zero, r4, 10
000f0c  1f523000  addli r4, zero, 29
000f10  15004014  dma_cfg zero, zero, r4, 10
000f14  1f623000  addli r4, zero, 30
000f18  15004014  dma_cfg zero, zero, r4, 10
000f1c  1f723000  addli r4, zero, 31
000f20  15004014  dma_cfg zero, zero, r4, 10
000f24  95840400  dma_cfg r9, r9, zero, 0
000f28  95040002  dma_cfg r9, zero, zero, 1
000f2c  15000004  dma_cfg zero, zero, zero, 2
000f30  150d8006  dma_cfg r26, zero, r8, 3
000f34  950d9008  dma_cfg r27, zero, r9, 4
000f38  950d800a  dma_cfg r27, zero, r8, 5
000f3c  15000010  dma_cfg zero, zero, zero, 8
000f40  35000000  dma_run zero
000f44  1500900a  dma_cfg zero, zero, r9, 5
000f48  15000010  dma_cfg zero, zero, zero, 8
000f4c  1d900a00  unlock r21
000f50  1b120304  ori r4, r6, 64
000f54  1d800600  lock zero, r13
000f58  95840400  dma_cfg r9, r9, zero, 0
000f5c  0b924710  add.s r4, r15, r4
000f60  15000c04  dma_cfg zero, r24, zero, 2
000f64  15828b06  dma_cfg r4, r23, r8, 3
000f68  1f021000  addli r4, zero, 8
000f6c  950d9408  dma_cfg r27, r8, r9, 4
000f70  958d8d0a  dma_cfg r27, r27, r8, 5
000f74  15000010  dma_cfg zero, zero, zero, 8
000f78  35000000  dma_run zero
000f7c  1500900a  dma_cfg zero, zero, r9, 5
000f80  15000010  dma_cfg zero, zero, zero, 8
000f84  1d900600  unlock r13
000f88  1d800a00  lock zero, r21
000f8c  15000014  dma_cfg zero, zero, zero, 10
000f90  15009014  dma_cfg zero, zero, r9, 10
000f94  15004015  dma_cfg zero, zero, r20, 10
000f98  15001015  dma_cfg zero, zero, r17, 10
000f9c  1500d014  dma_cfg zero, zero, r13, 10
000fa0  15005015  dma_cfg zero, zero, r21, 10
000fa4  15003015  dma_cfg zero, zero, r19, 10
000fa8  1500a014  dma_cfg zero, zero, r10, 10
000fac  15004014  dma_cfg zero, zero, r4, 10
000fb0  1f121000  addli r4, zero, 9
000fb4  15004014  dma_cfg zero, zero, r4, 10
000fb8  1f221000  addli r4, zero, 10
000fbc  15004014  dma_cfg zero, zero, r4, 10
000fc0  1f321000  addli r4, zero, 11
000fc4  15004014  dma_cfg zero, zero, r4, 10
000fc8  1f621000  addli r4, zero, 14
000fcc  1500c014  dma_cfg zero, zero, r12, 10
000fd0  1500b014  dma_cfg zero, zero, r11, 10
000fd4  15004014  dma_cfg zero, zero, r4, 10
000fd8  1f721000  addli r4, zero, 15
000fdc  15004014  dma_cfg zero, zero, r4, 10
000fe0  1f222000  addli r4, zero, 18
000fe4  15002015  dma_cfg zero, zero, r18, 10
000fe8  15005014  dma_cfg zero, zero, r5, 10
000fec  15004014  dma_cfg zero, zero, r4, 10
000ff0  1f322000  addli r4, zero, 19
000ff4  15004014  dma_cfg zero, zero, r4, 10
000ff8  1f422000  addli r4, zero, 20
000ffc  15004014  dma_cfg zero, zero, r4, 10
001000  1f522000  addli r4, zero, 21
001004  15004014  dma_cfg zero, zero, r4, 10
001008  1f622000  addli r4, zero, 22
00100c  15004014  dma_cfg zero, zero, r4, 10
001010  1f722000  addli r4, zero, 23
001014  15004014  dma_cfg zero, zero, r4, 10
001018  1f023000  addli r4, zero, 24
00101c  15004014  dma_cfg zero, zero, r4, 10
001020  1f123000  addli r4, zero, 25
001024  15004014  dma_cfg zero, zero, r4, 10
001028  1f223000  addli r4, zero, 26
00102c  15004014  dma_cfg zero, zero, r4, 10
001030  1f323000  addli r4, zero, 27
001034  15004014  dma_cfg zero, zero, r4, 10
001038  1f423000  addli r4, zero, 28
00103c  15004014  dma_cfg zero, zero, r4, 10
001040  1f523000  addli r4, zero, 29
001044  15004014  dma_cfg zero, zero, r4, 10
001048  1f623000  addli r4, zero, 30
00104c  15004014  dma_cfg zero, zero, r4, 10
001050  1f723000  addli r4, zero, 31
001054  15004014  dma_cfg zero, zero, r4, 10
001058  95840400  dma_cfg r9, r9, zero, 0
00105c  95040002  dma_cfg r9, zero, zero, 1
001060  15000004  dma_cfg zero, zero, zero, 2
001064  150d8006  dma_cfg r26, zero, r8, 3
001068  950d9008  dma_cfg r27, zero, r9, 4
00106c  950d800a  dma_cfg r27, zero, r8, 5
001070  15000010  dma_cfg zero, zero, zero, 8
001074  35000000  dma_run zero
001078  1500900a  dma_cfg zero, zero, r9, 5
00107c  15000010  dma_cfg zero, zero, zero, 8
001080  1d900a00  unlock r21
001084  7d000a00  xsignal r20, 0
001088  5b060000  j 48
00108c  7d100a00  xwait r20, 0
001090  7d900a00  xwait r21, 0
001094  1d000000  lock zero, zero
001098  010a0000  ds_cfg r20, zero, 0
00109c  010b0002  ds_cfg r22, zero, 1
0010a0  010b001c  ds_cfg r22, zero, 14
0010a4  0104001a  ds_cfg r8, zero, 13
0010a8  21176d03  shuffle_batch r14, r26, r22, 1
0010ac  1d100000  unlock zero
0010b0  7d800800  xsignal r17, 0
0010b4  7d800600  xsignal r13, 0
0010b8  63426ffb  loadli.w r4,  -588(r30)
0010bc  9f07a000  addli r15, zero, 80
0010c0  6308fffd  loadli.w r16,  -264(r30)
0010c4  8b17f238  mod.s r15, r4, r15
0010c8  1f120200  addli r4, r4, 1
0010cc  1f180800  addli r16, r16, 1
0010d0  674b4ffa  storeli.w r4, -588(r30)
0010d4  e70f0ffd  storeli.w r16, -264(r30)
0010d8  9bb7e700  slli r15, r15, 14
0010dc  3b24d1fe  bneq r2, r13, -760
0010e0  1f021000  addli r4, zero, 8
0010e4  7d900600  xwait r13, 0
0010e8  1f180000  addli r16, zero, 1
0010ec  9f0b0000  addli r23, zero, 0
0010f0  7d100200  xwait r4, 0
0010f4  1f120000  addli r4, zero, 1
0010f8  b7f00c00  beq r25, zero, 60
0010fc  1bb5db00  slli r10, r23, 13
001100  9bbb8b00  slli r23, r23, 8
001104  1d000200  lock zero, r4
001108  09048b00  mm_cfg r8, r22, r8, 0
00110c  1715f500  or r10, r10, r15
001110  979b3b00  or r23, r23, r3
001114  098a4604  mm_cfg r20, r13, r4, 2
001118  a91ba710  mm_acc r23, r14, r10, 8
00111c  1b051800  andi r10, r16, 1
001120  9f1b0000  addli r23, zero, 1
001124  1f080000  addli r16, zero, 0
001128  1d100200  unlock r4
00112c  3b4f05fe  bneq r10, zero, -48
001130  5b070000  j 56
001134  1bb5db00  slli r10, r23, 13
001138  9bbb8b00  slli r23, r23, 8
00113c  1d000200  lock zero, r4
001140  09048b00  mm_cfg r8, r22, r8, 0
001144  1715f500  or r10, r10, r15
001148  979b3b00  or r23, r23, r3
00114c  098a4604  mm_cfg r20, r13, r4, 2
001150  a90ba710  mm r23, r14, r10, 8
001154  1b051800  andi r10, r16, 1
001158  9f1b0000  addli r23, zero, 1
00115c  1f080000  addli r16, zero, 0
001160  1d100200  unlock r4
001164  3b4f05fe  bneq r10, zero, -48
001168  1f151000  addli r10, zero, 9
00116c  7d800a00  xsignal r21, 0
001170  1b021e00  andi r4, r28, 1
001174  7d000500  xsignal r10, 0
001178  1f750000  addli r10, zero, 7
00117c  bb4102fe  bneq r4, zero, -912
001180  db620000  j 788
001184  63426ffb  loadli.w r4,  -588(r30)
001188  1f05a000  addli r10, zero, 80
00118c  6308fffd  loadli.w r16,  -264(r30)
001190  8b17a238  mod.s r15, r4, r10
001194  1f157000  addli r10, zero, 57
001198  1f120200  addli r4, r4, 1
00119c  0b1da838  mod.s r26, r16, r10
0011a0  674b4ffa  storeli.w r4, -588(r30)
0011a4  1f150800  addli r10, r16, 1
0011a8  e70faffc  storeli.w r10, -264(r30)
0011ac  1f750000  addli r10, zero, 7
0011b0  9bb7e700  slli r15, r15, 14
0011b4  1b32ed00  slli r4, r26, 14
0011b8  2bad0800  lui r26, 138
0011bc  0b1da211  add.s r26, r4, r26
0011c0  375aa100  beq r2, r10, 660
0011c4  3b6c91fe  bneq r2, r9, -232
0011c8  9f022000  addli r5, zero, 16
0011cc  1f192000  addli r18, zero, 17
0011d0  9f750000  addli r11, zero, 7
0011d4  17b75b02  sll.d r[15:16], r[24:25], r5
0011d8  eb5b8fb3  load.d r[24:25], -1224(r30)
0011dc  7d100500  xwait r10, 0
0011e0  1f057000  addli r10, zero, 56
0011e4  0ba7eb10  add.ul r[15:16], r[24:25], r[15:16]
0011e8  9f5b1000  addli r23, zero, 13
0011ec  3f240501  blt.s r10, r16, 264
0011f0  1d800a00  lock zero, r21
0011f4  1f051000  addli r10, zero, 8
0011f8  15000014  dma_cfg zero, zero, zero, 10
0011fc  15009014  dma_cfg zero, zero, r9, 10
001200  15004015  dma_cfg zero, zero, r20, 10
001204  15001015  dma_cfg zero, zero, r17, 10
001208  1500d014  dma_cfg zero, zero, r13, 10
00120c  15005015  dma_cfg zero, zero, r21, 10
001210  15003015  dma_cfg zero, zero, r19, 10
001214  1500b014  dma_cfg zero, zero, r11, 10
001218  1500a014  dma_cfg zero, zero, r10, 10
00121c  1f151000  addli r10, zero, 9
001220  1500a014  dma_cfg zero, zero, r10, 10
001224  1f251000  addli r10, zero, 10
001228  1500a014  dma_cfg zero, zero, r10, 10
00122c  1f351000  addli r10, zero, 11
001230  1500a014  dma_cfg zero, zero, r10, 10
001234  1f651000  addli r10, zero, 14
001238  1500c014  dma_cfg zero, zero, r12, 10
00123c  15007015  dma_cfg zero, zero, r23, 10
001240  1500a014  dma_cfg zero, zero, r10, 10
001244  1f751000  addli r10, zero, 15
001248  1500a014  dma_cfg zero, zero, r10, 10
00124c  1f252000  addli r10, zero, 18
001250  15005014  dma_cfg zero, zero, r5, 10
001254  15002015  dma_cfg zero, zero, r18, 10
001258  1500a014  dma_cfg zero, zero, r10, 10
00125c  1f352000  addli r10, zero, 19
001260  1500a014  dma_cfg zero, zero, r10, 10
001264  1f452000  addli r10, zero, 20
001268  1500a014  dma_cfg zero, zero, r10, 10
00126c  1f552000  addli r10, zero, 21
001270  1500a014  dma_cfg zero, zero, r10, 10
001274  1f652000  addli r10, zero, 22
001278  1500a014  dma_cfg zero, zero, r10, 10
00127c  1f752000  addli r10, zero, 23
001280  1500a014  dma_cfg zero, zero, r10, 10
001284  1f053000  addli r10, zero, 24
001288  1500a014  dma_cfg zero, zero, r10, 10
00128c  1f153000  addli r10, zero, 25
001290  1500a014  dma_cfg zero, zero, r10, 10
001294  1f253000  addli r10, zero, 26
001298  1500a014  dma_cfg zero, zero, r10, 10
00129c  1f353000  addli r10, zero, 27
0012a0  1500a014  dma_cfg zero, zero, r10, 10
0012a4  1f453000  addli r10, zero, 28
0012a8  1500a014  dma_cfg zero, zero, r10, 10
0012ac  1f553000  addli r10, zero, 29
0012b0  1500a014  dma_cfg zero, zero, r10, 10
0012b4  1f653000  addli r10, zero, 30
0012b8  1500a014  dma_cfg zero, zero, r10, 10
0012bc  1f753000  addli r10, zero, 31
0012c0  1500a014  dma_cfg zero, zero, r10, 10
0012c4  1f050004  addli r10, zero, 512
0012c8  95840400  dma_cfg r9, r9, zero, 0
0012cc  95040002  dma_cfg r9, zero, zero, 1
0012d0  15000004  dma_cfg zero, zero, zero, 2
0012d4  150d8006  dma_cfg r26, zero, r8, 3
0012d8  950dd008  dma_cfg r27, zero, r13, 4
0012dc  1505600b  dma_cfg r10, zero, r22, 5
0012e0  15000010  dma_cfg zero, zero, zero, 8
0012e4  35000000  dma_run zero
0012e8  1500900a  dma_cfg zero, zero, r9, 5
0012ec  15000010  dma_cfg zero, zero, zero, 8
0012f0  1d900a00  unlock r21
0012f4  2ba50800  lui r10, 138
0012f8  1d800600  lock zero, r13
0012fc  1f092000  addli r18, zero, 16
001300  95840400  dma_cfg r9, r9, zero, 0
001304  1b150504  ori r10, r10, 64
001308  15800704  dma_cfg zero, r15, zero, 2
00130c  0b12a210  add.s r4, r4, r10
001310  1f050004  addli r10, zero, 512
001314  15028706  dma_cfg r4, r14, r8, 3
001318  1f020010  addli r4, zero, 2048
00131c  950dd408  dma_cfg r27, r8, r13, 4
001320  1505620b  dma_cfg r10, r4, r22, 5
001324  1f021000  addli r4, zero, 8
001328  15000010  dma_cfg zero, zero, zero, 8
00132c  35000000  dma_run zero
001330  1500900a  dma_cfg zero, zero, r9, 5
001334  15000010  dma_cfg zero, zero, zero, 8
001338  1d900600  unlock r13
00133c  1d800a00  lock zero, r21
001340  15000014  dma_cfg zero, zero, zero, 10
001344  15009014  dma_cfg zero, zero, r9, 10
001348  15004015  dma_cfg zero, zero, r20, 10
00134c  15001015  dma_cfg zero, zero, r17, 10
001350  1500d014  dma_cfg zero, zero, r13, 10
001354  15005015  dma_cfg zero, zero, r21, 10
001358  15003015  dma_cfg zero, zero, r19, 10
00135c  1500b014  dma_cfg zero, zero, r11, 10
001360  9f551000  addli r11, zero, 13
001364  15004014  dma_cfg zero, zero, r4, 10
001368  1f121000  addli r4, zero, 9
00136c  15004014  dma_cfg zero, zero, r4, 10
001370  1f221000  addli r4, zero, 10
001374  15004014  dma_cfg zero, zero, r4, 10
001378  1f321000  addli r4, zero, 11
00137c  15004014  dma_cfg zero, zero, r4, 10
001380  1f621000  addli r4, zero, 14
001384  1500c014  dma_cfg zero, zero, r12, 10
001388  15007015  dma_cfg zero, zero, r23, 10
00138c  15004014  dma_cfg zero, zero, r4, 10
001390  1f721000  addli r4, zero, 15
001394  15004014  dma_cfg zero, zero, r4, 10
001398  1f222000  addli r4, zero, 18
00139c  15005014  dma_cfg zero, zero, r5, 10
0013a0  9f122000  addli r5, zero, 17
0013a4  15005014  dma_cfg zero, zero, r5, 10
0013a8  15004014  dma_cfg zero, zero, r4, 10
0013ac  1f322000  addli r4, zero, 19
0013b0  15004014  dma_cfg zero, zero, r4, 10
0013b4  1f422000  addli r4, zero, 20
0013b8  15004014  dma_cfg zero, zero, r4, 10
0013bc  1f522000  addli r4, zero, 21
0013c0  15004014  dma_cfg zero, zero, r4, 10
0013c4  1f622000  addli r4, zero, 22
0013c8  15004014  dma_cfg zero, zero, r4, 10
0013cc  1f722000  addli r4, zero, 23
0013d0  15004014  dma_cfg zero, zero, r4, 10
0013d4  1f023000  addli r4, zero, 24
0013d8  15004014  dma_cfg zero, zero, r4, 10
0013dc  1f123000  addli r4, zero, 25
0013e0  15004014  dma_cfg zero, zero, r4, 10
0013e4  1f223000  addli r4, zero, 26
0013e8  15004014  dma_cfg zero, zero, r4, 10
0013ec  1f323000  addli r4, zero, 27
0013f0  15004014  dma_cfg zero, zero, r4, 10
0013f4  1f423000  addli r4, zero, 28
0013f8  15004014  dma_cfg zero, zero, r4, 10
0013fc  1f523000  addli r4, zero, 29
001400  15004014  dma_cfg zero, zero, r4, 10
001404  1f623000  addli r4, zero, 30
001408  15004014  dma_cfg zero, zero, r4, 10
00140c  1f723000  addli r4, zero, 31
001410  15004014  dma_cfg zero, zero, r4, 10
001414  95840400  dma_cfg r9, r9, zero, 0
001418  95040002  dma_cfg r9, zero, zero, 1
00141c  15000004  dma_cfg zero, zero, zero, 2
001420  150d8006  dma_cfg r26, zero, r8, 3
001424  950dd008  dma_cfg r27, zero, r13, 4
001428  1505600b  dma_cfg r10, zero, r22, 5
00142c  1f750000  addli r10, zero, 7
001430  15000010  dma_cfg zero, zero, zero, 8
001434  35000000  dma_run zero
001438  1500900a  dma_cfg zero, zero, r9, 5
00143c  15000010  dma_cfg zero, zero, zero, 8
001440  1d900a00  unlock r21
001444  7d800900  xsignal r19, 0
001448  1b021e00  andi r4, r28, 1
00144c  bb0602fc  bneq r4, zero, -1632
001450  5b080000  j 64
001454  1f121000  addli r4, zero, 9
001458  7d900900  xwait r19, 0
00145c  7d100200  xwait r4, 0
001460  1d000000  lock zero, zero
001464  1f021000  addli r4, zero, 8
001468  010a0000  ds_cfg r20, zero, 0
00146c  810d0002  ds_cfg r27, zero, 1
001470  010b001c  ds_cfg r22, zero, 14
001474  810d001a  ds_cfg r27, zero, 13
001478  c1076d05  shuffle_coa r15, r26, r22, 2
00147c  1d100000  unlock zero
001480  7d000500  xsignal r10, 0
001484  7d000200  xsignal r4, 0
001488  1b021e00  andi r4, r28, 1
00148c  bb0502fc  bneq r4, zero, -1696
001490  3b30d100  bneq r2, r13, 12
001494  9f201000  addli r1, zero, 10
001498  7d800000  xsignal r1, 0
00149c  e3403ff6  loadli.w r1,  -1252(r30)
0014a0  2bee1600  lui r28, 366
0014a4  1f192000  addli r18, zero, 17
0014a8  9f750000  addli r11, zero, 7
0014ac  33820028  zext_int2long r[5:6], r1
0014b0  9f000007  addli r1, zero, 896
0014b4  33830028  zext_int2long r[7:8], r1
0014b8  0b276240  min.ul r[15:16], r[5:6], r[7:8]
0014bc  e303cfff  loadli.w r7,  -32(r30)
0014c0  27070701  addli.d r[15:16], r[15:16], 128
0014c4  8b901339  mod.s r1, r7, r17
0014c8  1f950300  addli r10, r7, 1
0014cc  0b274748  max.ul r[15:16], r[15:16], r[5:6]
0014d0  670eaffe  storeli.w r10, -32(r30)
0014d4  8b324718  sub.sl r[6:7], r[15:16], r[5:6]
0014d8  33870d28  zext_int2long r[15:16], r27
0014dc  8ba2e240  min.ul r[6:7], r[6:7], r[15:16]
0014e0  6b570fb2  load.d r[15:16], -1248(r30)
0014e4  1bb29000  slli r4, r1, 9
0014e8  8b10c211  add.s r1, r4, r28
0014ec  17379702  sll.d r[15:16], r[15:16], r9
0014f0  bb143101  bneq r2, r19, 292
0014f4  eb5b0f01  load.d r[24:25], 16(r30)
0014f8  1f551000  addli r10, zero, 13
0014fc  1f082000  addli r16, zero, 16
001500  7d100500  xwait r10, 0
001504  0ba7eb10  add.ul r[15:16], r[24:25], r[15:16]
001508  3f5a7afa  blt.s r20, r7, -2412
00150c  1d800a00  lock zero, r21
001510  9f011000  addli r3, zero, 8
001514  15000014  dma_cfg zero, zero, zero, 10
001518  15009014  dma_cfg zero, zero, r9, 10
00151c  15004015  dma_cfg zero, zero, r20, 10
001520  15001015  dma_cfg zero, zero, r17, 10
001524  1500d014  dma_cfg zero, zero, r13, 10
001528  15005015  dma_cfg zero, zero, r21, 10
00152c  15003015  dma_cfg zero, zero, r19, 10
001530  1500b014  dma_cfg zero, zero, r11, 10
001534  15003014  dma_cfg zero, zero, r3, 10
001538  9f111000  addli r3, zero, 9
00153c  15003014  dma_cfg zero, zero, r3, 10
001540  9f211000  addli r3, zero, 10
001544  15003014  dma_cfg zero, zero, r3, 10
001548  9f311000  addli r3, zero, 11
00154c  15003014  dma_cfg zero, zero, r3, 10
001550  9f611000  addli r3, zero, 14
001554  1500c014  dma_cfg zero, zero, r12, 10
001558  1500a014  dma_cfg zero, zero, r10, 10
00155c  15003014  dma_cfg zero, zero, r3, 10
001560  9f711000  addli r3, zero, 15
001564  15003014  dma_cfg zero, zero, r3, 10
001568  9f212000  addli r3, zero, 18
00156c  15000015  dma_cfg zero, zero, r16, 10
001570  15002015  dma_cfg zero, zero, r18, 10
001574  15003014  dma_cfg zero, zero, r3, 10
001578  9f312000  addli r3, zero, 19
00157c  15003014  dma_cfg zero, zero, r3, 10
001580  9f412000  addli r3, zero, 20
001584  15003014  dma_cfg zero, zero, r3, 10
001588  9f512000  addli r3, zero, 21
00158c  15003014  dma_cfg zero, zero, r3, 10
001590  9f612000  addli r3, zero, 22
001594  15003014  dma_cfg zero, zero, r3, 10
001598  9f712000  addli r3, zero, 23
00159c  15003014  dma_cfg zero, zero, r3, 10
0015a0  9f013000  addli r3, zero, 24
0015a4  15003014  dma_cfg zero, zero, r3, 10
0015a8  9f113000  addli r3, zero, 25
0015ac  15003014  dma_cfg zero, zero, r3, 10
0015b0  9f213000  addli r3, zero, 26
0015b4  15003014  dma_cfg zero, zero, r3, 10
0015b8  9f313000  addli r3, zero, 27
0015bc  15003014  dma_cfg zero, zero, r3, 10
0015c0  9f413000  addli r3, zero, 28
0015c4  15003014  dma_cfg zero, zero, r3, 10
0015c8  9f513000  addli r3, zero, 29
0015cc  15003014  dma_cfg zero, zero, r3, 10
0015d0  9f613000  addli r3, zero, 30
0015d4  15003014  dma_cfg zero, zero, r3, 10
0015d8  9f713000  addli r3, zero, 31
0015dc  15003014  dma_cfg zero, zero, r3, 10
0015e0  9f010004  addli r3, zero, 512
0015e4  95840400  dma_cfg r9, r9, zero, 0
0015e8  95040002  dma_cfg r9, zero, zero, 1
0015ec  15000004  dma_cfg zero, zero, zero, 2
0015f0  95008006  dma_cfg r1, zero, r8, 3
0015f4  950dd008  dma_cfg r27, zero, r13, 4
0015f8  9501900a  dma_cfg r3, zero, r9, 5
0015fc  15000010  dma_cfg zero, zero, zero, 8
001600  35000000  dma_run zero
001604  1500900a  dma_cfg zero, zero, r9, 5
001608  15000010  dma_cfg zero, zero, zero, 8
00160c  1d900a00  unlock r21
001610  dbb1feff  j -2676
001614  6302efff  loadli.w r4,  -16(r30)
001618  1b150e60  ori r10, r28, 1536
00161c  9f052000  addli r11, zero, 16
001620  8b131239  mod.s r7, r4, r17
001624  1f180200  addli r16, r4, 1
001628  670f0fff  storeli.w r16, -16(r30)
00162c  9bb3f300  slli r7, r7, 15
001630  0b92a310  add.s r4, r7, r10
001634  1f551000  addli r10, zero, 13
001638  b7315101  beq r2, r21, 108
00163c  3b431101  bneq r2, r17, 208
001640  1f231000  addli r6, zero, 10
001644  9f020000  addli r5, zero, 0
001648  7d100300  xwait r6, 0
00164c  7d100600  xwait r12, 0
001650  7d900500  xwait r11, 0
001654  1d000a00  lock zero, r20
001658  2b03803f  lui r6, 260096
00165c  ab850000  lui r11, 8
001660  0d000002  ew_cfg zero, zero, zero, 1
001664  0d130300  ewcoeff_cfg r6, r6, zero, 0
001668  1f73f000  addli r6, zero, 127
00166c  0d000304  ew_cfg zero, r6, zero, 2
001670  8d040006  ew_cfg r9, zero, zero, 3
001674  0b135210  add.s r6, r4, r5
001678  8b935110  add.s r7, r3, r5
00167c  9f820204  addli r5, r5, 512
001680  2d831300  dsmadd r6, r7, r1, 0
001684  bbcfb2fe  bneq r5, r11, -16
001688  9f301000  addli r1, zero, 11
00168c  1d100a00  unlock r20
001690  7d800000  xsignal r1, 0
001694  9f601000  addli r1, zero, 14
001698  7d000500  xsignal r10, 0
00169c  7d800000  xsignal r1, 0
0016a0  5bccfeff  j -2464
0016a4  9f601000  addli r1, zero, 14
0016a8  7d900000  xwait r1, 0
0016ac  1d000a00  lock zero, r20
0016b0  ab00803f  lui r1, 260096
0016b4  0d000002  ew_cfg zero, zero, zero, 1
0016b8  0d101000  ewcoeff_cfg zero, zero, r1, 0
0016bc  8d040024  ew_cfg r9, zero, zero, 18
0016c0  0d0a0014  ew_cfg r20, zero, zero, 10
0016c4  e340fff5  loadli.w r1,  -1284(r30)
0016c8  0d8a1416  ew_cfg r20, r9, r1, 11
0016cc  abc07f41  lui r1, 268284
0016d0  0d00001a  ew_cfg zero, zero, zero, 13
0016d4  0d80161c  ew_cfg zero, r13, r1, 14
0016d8  9f70f00f  addli r1, zero, 2047
0016dc  0d00001e  ew_cfg zero, zero, zero, 15
0016e0  0d800004  ew_cfg zero, r1, zero, 2
0016e4  9f701000  addli r1, zero, 15
0016e8  8d060006  ew_cfg r13, zero, zero, 3
0016ec  8d86d626  ew_cfg r13, r13, r13, 19
0016f0  2d124200  dsmul r4, r4, r4, 0
0016f4  0d000014  ew_cfg zero, zero, zero, 10
0016f8  0d000024  ew_cfg zero, zero, zero, 18
0016fc  0d000026  ew_cfg zero, zero, zero, 19
001700  1d100a00  unlock r20
001704  7d800000  xsignal r1, 0
001708  5bbffeff  j -2568
00170c  bb5701fa  bneq r2, zero, -2572
001710  e3401ff6  loadli.w r1,  -1268(r30)
001714  6b550fb1  load.d r[11:12], -1264(r30)
001718  b30b0028  zext_int2long r[24:25], zero
00171c  b3910028  sext_int2long r[4:5], r1
001720  973c2503  sll.d r[26:27], r[11:12], r18
001724  6b558f01  load.d r[11:12], 24(r30)
001728  9f701000  addli r1, zero, 15
00172c  8bbb7141  min.sl r[24:25], r[4:5], r[24:25]
001730  7d900000  xwait r1, 0
001734  9b100e64  ori r1, r28, 1600
001738  1d800a00  lock zero, r21
00173c  8b2c9511  add.ul r[26:27], r[11:12], r[26:27]
001740  95840400  dma_cfg r9, r9, zero, 0
001744  1f551000  addli r10, zero, 13
001748  9f052000  addli r11, zero, 16
00174c  a78b8b00  addli.d r[24:25], r[24:25], 64
001750  8b901310  add.s r1, r7, r1
001754  9ff33200  addli r7, r5, 31
001758  15800402  dma_cfg zero, r9, zero, 1
00175c  9bb21200  slli r5, r5, 1
001760  1f030010  addli r6, zero, 2048
001764  0ba7ec10  add.ul r[15:16], r[26:27], r[15:16]
001768  8bbb3b48  max.sl r[24:25], r[24:25], r[4:5]
00176c  95070004  dma_cfg r15, zero, zero, 2
001770  8bb13b18  sub.sl r[4:5], r[24:25], r[4:5]
001774  b30b0428  zext_int2long r[24:25], r8
001778  15878006  dma_cfg r14, r1, r8, 3
00177c  9bc05300  srli r1, r7, 5
001780  15841d08  dma_cfg r8, r27, r1, 4
001784  9b80e203  andi r1, r5, 62
001788  8bb17141  min.sl r[4:5], r[4:5], r[24:25]
00178c  9f020004  addli r5, zero, 512
001790  1583320a  dma_cfg r6, r5, r3, 5
001794  15001010  dma_cfg zero, zero, r1, 8
001798  35000000  dma_run zero
00179c  1500900a  dma_cfg zero, zero, r9, 5
0017a0  15000010  dma_cfg zero, zero, zero, 8
0017a4  1d900a00  unlock r21
0017a8  7d800500  xsignal r11, 0
0017ac  dbaafeff  j -2732
0017b0  7d000000  xsignal zero, 0
0017b4  bb600100  bneq r2, zero, 56
0017b8  9f200000  addli r1, zero, 2
0017bc  7d100000  xwait zero, 0
0017c0  7d100000  xwait zero, 0
0017c4  7d100000  xwait zero, 0
0017c8  7d100000  xwait zero, 0
0017cc  7d100000  xwait zero, 0
0017d0  7d100000  xwait zero, 0
0017d4  7d100000  xwait zero, 0
0017d8  7d100000  xwait zero, 0
0017dc  1d800000  lock zero, r1
0017e0  0d000020  ew_cfg zero, zero, zero, 16
0017e4  1d900000  unlock r1
0017e8  7d400000  xsignal_mode_cfg zero
0017ec  9f8e1e0a  addli sp, sp, 1288
0017f0  00a00300  mfence { lm, sm, gm }
0017f4  00100000  exit
0017f8  00100000  exit
0017fc  00100000  exit
001800  00100000  exit
001804  00100000  exit
001808  00100000  exit
00180c  00100000  exit
001810  00100000  exit
001814  00100000  exit
001818  00100000  exit
00181c  00100000  exit
001820  00100000  exit
001824  00100000  exit
001828  00100000  exit
00182c  00100000  exit
001830  00100000  exit
001834  00100000  exit
001838  00100000  exit
00183c  00100000  exit
001840  00100000  exit
001844  00100000  exit
001848  00100000  exit
00184c  00100000  exit
001850  00100000  exit
001854  00100000  exit
001858  00100000  exit
00185c  00100000  exit
001860  00100000  exit
001864  00100000  exit
001868  00100000  exit
00186c  00100000  exit
001870  00100000  exit
001874  00100000  exit
001878  00100000  exit
00187c  00100000  exit
001880  00100000  exit
001884  00100000  exit
001888  00100000  exit
00188c  00100000  exit
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
