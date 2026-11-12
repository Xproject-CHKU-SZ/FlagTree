; SHA-256 803ab0b5d5c7a7c27afceccabf8882bf8a2802a493c96f101f9873ff3c9b8575
; P800 SDNN · XTDK LLVM 19 · 1463 / 1463 words decoded
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
0000b4  9f8e4eee  addli sp, sp, -2272
0000b8  9f100000  addli r1, zero, 1
0000bc  803b0002  core_id r23
0000c0  1f8f4e11  addli r30, sp, 2208
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7900b00  beq r23, zero, 36
0000cc  2bf1ffff  lui r2, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b10f1ff  ori r1, r2, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  db1f0100  j 2300
0000ec  1f220000  addli r4, zero, 2
0000f0  fdd00000  uni_sram_cfg r1, r1
0000f4  9f420000  addli r5, zero, 4
0000f8  6b510f02  load.d r[3:4], 32(r30)
0000fc  1f030020  addli r6, zero, 4096
000100  1d000200  lock zero, r4
000104  8d000020  ew_cfg r1, zero, zero, 16
000108  1d100200  unlock r4
00010c  1d800200  lock zero, r5
000110  15000000  dma_cfg zero, zero, zero, 0
000114  15800104  dma_cfg zero, r3, zero, 2
000118  15006106  dma_cfg zero, r2, r6, 3
00011c  1f014000  addli r2, zero, 32
000120  9f010008  addli r3, zero, 1024
000124  15001008  dma_cfg zero, zero, r1, 4
000128  35000000  dma_run zero
00012c  1d900200  unlock r5
000130  7d800000  xsignal r1, 0
000134  7d900000  xwait r1, 0
000138  1d000000  lock zero, zero
00013c  01020000  ds_cfg r4, zero, 0
000140  01000002  ds_cfg zero, zero, 1
000144  01000016  ds_cfg zero, zero, 11
000148  0101001a  ds_cfg r2, zero, 13
00014c  1f311000  addli r2, zero, 11
000150  8101001c  ds_cfg r3, zero, 14
000154  21133008  shuffle_batch r6, zero, r3, 4
000158  9f310000  addli r3, zero, 3
00015c  1d100000  unlock zero
000160  7d800000  xsignal r1, 0
000164  7d900000  xwait r1, 0
000168  1d000200  lock zero, r4
00016c  ab100100  lui r1, 17
000170  0d200300  ewtable_cfg r6, 0
000174  0da00002  ewtable_cfg r1, 1
000178  abf0ffff  lui r1, 1048575
00017c  1d100200  unlock r4
000180  7d000000  xsignal zero, 0
000184  7d100000  xwait zero, 0
000188  9b90f0ff  ori r1, r1, 4095
00018c  80a10004  csr_set csr3, r1
000190  9f500000  addli r1, zero, 5
000194  00d00100  sync_group
000198  7d000100  xsignal r2, 0
00019c  7d000100  xsignal r2, 0
0001a0  7d000100  xsignal r2, 0
0001a4  7d000100  xsignal r2, 0
0001a8  1f012000  addli r2, zero, 16
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
0004ac  9f101000  addli r1, zero, 9
0004b0  7d800100  xsignal r3, 0
0004b4  7d800100  xsignal r3, 0
0004b8  7d800100  xsignal r3, 0
0004bc  7d800100  xsignal r3, 0
0004c0  7d800100  xsignal r3, 0
0004c4  7d800100  xsignal r3, 0
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
0005f8  9f710000  addli r3, zero, 7
0005fc  7d800000  xsignal r1, 0
000600  7d800000  xsignal r1, 0
000604  7d800000  xsignal r1, 0
000608  7d800000  xsignal r1, 0
00060c  7d800000  xsignal r1, 0
000610  7d800000  xsignal r1, 0
000614  7d800000  xsignal r1, 0
000618  7d800000  xsignal r1, 0
00061c  7d800000  xsignal r1, 0
000620  7d800000  xsignal r1, 0
000624  7d800000  xsignal r1, 0
000628  7d800000  xsignal r1, 0
00062c  7d800000  xsignal r1, 0
000630  7d800000  xsignal r1, 0
000634  7d800000  xsignal r1, 0
000638  7d800000  xsignal r1, 0
00063c  7d800000  xsignal r1, 0
000640  7d800000  xsignal r1, 0
000644  7d800000  xsignal r1, 0
000648  7d800000  xsignal r1, 0
00064c  7d800000  xsignal r1, 0
000650  7d800000  xsignal r1, 0
000654  7d800000  xsignal r1, 0
000658  7d800000  xsignal r1, 0
00065c  7d800000  xsignal r1, 0
000660  7d800000  xsignal r1, 0
000664  7d800000  xsignal r1, 0
000668  7d800000  xsignal r1, 0
00066c  7d800000  xsignal r1, 0
000670  7d800000  xsignal r1, 0
000674  7d800000  xsignal r1, 0
000678  7d800000  xsignal r1, 0
00067c  7d800000  xsignal r1, 0
000680  7d800000  xsignal r1, 0
000684  7d800000  xsignal r1, 0
000688  7d800000  xsignal r1, 0
00068c  7d800000  xsignal r1, 0
000690  7d800000  xsignal r1, 0
000694  7d800000  xsignal r1, 0
000698  7d800000  xsignal r1, 0
00069c  7d800000  xsignal r1, 0
0006a0  7d800000  xsignal r1, 0
0006a4  7d800000  xsignal r1, 0
0006a8  7d800000  xsignal r1, 0
0006ac  7d800000  xsignal r1, 0
0006b0  7d800000  xsignal r1, 0
0006b4  7d800000  xsignal r1, 0
0006b8  7d800000  xsignal r1, 0
0006bc  7d800000  xsignal r1, 0
0006c0  7d800000  xsignal r1, 0
0006c4  7d800000  xsignal r1, 0
0006c8  7d800000  xsignal r1, 0
0006cc  7d800000  xsignal r1, 0
0006d0  7d800000  xsignal r1, 0
0006d4  7d800000  xsignal r1, 0
0006d8  7d800000  xsignal r1, 0
0006dc  7d800000  xsignal r1, 0
0006e0  7d800000  xsignal r1, 0
0006e4  7d800000  xsignal r1, 0
0006e8  7d800000  xsignal r1, 0
0006ec  7d800000  xsignal r1, 0
0006f0  7d800000  xsignal r1, 0
0006f4  7d800000  xsignal r1, 0
0006f8  7d800000  xsignal r1, 0
0006fc  7d800000  xsignal r1, 0
000700  7d800000  xsignal r1, 0
000704  7d800000  xsignal r1, 0
000708  7d800000  xsignal r1, 0
00070c  7d800000  xsignal r1, 0
000710  7d800000  xsignal r1, 0
000714  7d800000  xsignal r1, 0
000718  7d800000  xsignal r1, 0
00071c  7d800000  xsignal r1, 0
000720  7d800000  xsignal r1, 0
000724  7d800000  xsignal r1, 0
000728  7d800000  xsignal r1, 0
00072c  7d800000  xsignal r1, 0
000730  7d800000  xsignal r1, 0
000734  7d800000  xsignal r1, 0
000738  7d800000  xsignal r1, 0
00073c  7d800000  xsignal r1, 0
000740  7d800000  xsignal r1, 0
000744  7d800000  xsignal r1, 0
000748  7d800000  xsignal r1, 0
00074c  7d800000  xsignal r1, 0
000750  7d800000  xsignal r1, 0
000754  7d800000  xsignal r1, 0
000758  7d800000  xsignal r1, 0
00075c  7d800000  xsignal r1, 0
000760  7d800000  xsignal r1, 0
000764  7d800000  xsignal r1, 0
000768  7d800000  xsignal r1, 0
00076c  7d800000  xsignal r1, 0
000770  7d800000  xsignal r1, 0
000774  7d800000  xsignal r1, 0
000778  7d800000  xsignal r1, 0
00077c  7d800000  xsignal r1, 0
000780  7d800000  xsignal r1, 0
000784  7d800000  xsignal r1, 0
000788  7d800000  xsignal r1, 0
00078c  7d800000  xsignal r1, 0
000790  7d800000  xsignal r1, 0
000794  7d800000  xsignal r1, 0
000798  7d800000  xsignal r1, 0
00079c  7d800000  xsignal r1, 0
0007a0  7d800000  xsignal r1, 0
0007a4  7d800000  xsignal r1, 0
0007a8  7d800000  xsignal r1, 0
0007ac  7d800000  xsignal r1, 0
0007b0  7d800000  xsignal r1, 0
0007b4  7d800000  xsignal r1, 0
0007b8  7d800000  xsignal r1, 0
0007bc  7d800000  xsignal r1, 0
0007c0  7d800000  xsignal r1, 0
0007c4  7d800000  xsignal r1, 0
0007c8  7d800000  xsignal r1, 0
0007cc  7d800000  xsignal r1, 0
0007d0  7d800000  xsignal r1, 0
0007d4  7d800000  xsignal r1, 0
0007d8  7d800000  xsignal r1, 0
0007dc  7d800000  xsignal r1, 0
0007e0  7d800000  xsignal r1, 0
0007e4  7d800000  xsignal r1, 0
0007e8  7d800000  xsignal r1, 0
0007ec  7d800000  xsignal r1, 0
0007f0  7d800000  xsignal r1, 0
0007f4  7d800000  xsignal r1, 0
0007f8  7d800000  xsignal r1, 0
0007fc  7d800000  xsignal r1, 0
000800  7d800000  xsignal r1, 0
000804  7d800000  xsignal r1, 0
000808  7d800000  xsignal r1, 0
00080c  7d800000  xsignal r1, 0
000810  7d800000  xsignal r1, 0
000814  7d800000  xsignal r1, 0
000818  7d800000  xsignal r1, 0
00081c  7d800000  xsignal r1, 0
000820  7d800000  xsignal r1, 0
000824  7d800000  xsignal r1, 0
000828  7d800000  xsignal r1, 0
00082c  7d800000  xsignal r1, 0
000830  7d800000  xsignal r1, 0
000834  7d800000  xsignal r1, 0
000838  7d800000  xsignal r1, 0
00083c  7d800000  xsignal r1, 0
000840  7d800000  xsignal r1, 0
000844  7d800000  xsignal r1, 0
000848  7d800000  xsignal r1, 0
00084c  7d800000  xsignal r1, 0
000850  7d800000  xsignal r1, 0
000854  7d800000  xsignal r1, 0
000858  7d800000  xsignal r1, 0
00085c  7d800000  xsignal r1, 0
000860  7d800000  xsignal r1, 0
000864  7d800000  xsignal r1, 0
000868  7d800000  xsignal r1, 0
00086c  7d800000  xsignal r1, 0
000870  7d800000  xsignal r1, 0
000874  7d800000  xsignal r1, 0
000878  7d800000  xsignal r1, 0
00087c  9f501000  addli r1, zero, 13
000880  7d800100  xsignal r3, 0
000884  7d800100  xsignal r3, 0
000888  7d800100  xsignal r3, 0
00088c  7d800100  xsignal r3, 0
000890  7d800100  xsignal r3, 0
000894  7d800100  xsignal r3, 0
000898  7d800100  xsignal r3, 0
00089c  7d800100  xsignal r3, 0
0008a0  7d800100  xsignal r3, 0
0008a4  7d800100  xsignal r3, 0
0008a8  7d800100  xsignal r3, 0
0008ac  7d800100  xsignal r3, 0
0008b0  7d800100  xsignal r3, 0
0008b4  7d800100  xsignal r3, 0
0008b8  7d800100  xsignal r3, 0
0008bc  7d800100  xsignal r3, 0
0008c0  7d800100  xsignal r3, 0
0008c4  7d800100  xsignal r3, 0
0008c8  7d800100  xsignal r3, 0
0008cc  7d800100  xsignal r3, 0
0008d0  7d800100  xsignal r3, 0
0008d4  7d800100  xsignal r3, 0
0008d8  7d800100  xsignal r3, 0
0008dc  7d800100  xsignal r3, 0
0008e0  7d800100  xsignal r3, 0
0008e4  7d800100  xsignal r3, 0
0008e8  7d800100  xsignal r3, 0
0008ec  7d800100  xsignal r3, 0
0008f0  7d800100  xsignal r3, 0
0008f4  7d800100  xsignal r3, 0
0008f8  7d800100  xsignal r3, 0
0008fc  7d800100  xsignal r3, 0
000900  7d800100  xsignal r3, 0
000904  7d800100  xsignal r3, 0
000908  7d800100  xsignal r3, 0
00090c  7d800100  xsignal r3, 0
000910  7d800100  xsignal r3, 0
000914  7d800100  xsignal r3, 0
000918  7d800100  xsignal r3, 0
00091c  7d800100  xsignal r3, 0
000920  7d800100  xsignal r3, 0
000924  7d800100  xsignal r3, 0
000928  7d800100  xsignal r3, 0
00092c  7d800100  xsignal r3, 0
000930  7d800100  xsignal r3, 0
000934  7d800100  xsignal r3, 0
000938  7d800100  xsignal r3, 0
00093c  7d800100  xsignal r3, 0
000940  7d800100  xsignal r3, 0
000944  7d800100  xsignal r3, 0
000948  7d800100  xsignal r3, 0
00094c  7d800100  xsignal r3, 0
000950  7d800100  xsignal r3, 0
000954  7d800100  xsignal r3, 0
000958  7d800100  xsignal r3, 0
00095c  7d800100  xsignal r3, 0
000960  7d800100  xsignal r3, 0
000964  7d800100  xsignal r3, 0
000968  7d800100  xsignal r3, 0
00096c  7d800100  xsignal r3, 0
000970  7d800100  xsignal r3, 0
000974  7d800100  xsignal r3, 0
000978  7d800100  xsignal r3, 0
00097c  7d800100  xsignal r3, 0
000980  7d800100  xsignal r3, 0
000984  7d800100  xsignal r3, 0
000988  7d800100  xsignal r3, 0
00098c  7d800100  xsignal r3, 0
000990  7d800100  xsignal r3, 0
000994  7d800100  xsignal r3, 0
000998  7d800100  xsignal r3, 0
00099c  7d800100  xsignal r3, 0
0009a0  7d800100  xsignal r3, 0
0009a4  7d800100  xsignal r3, 0
0009a8  7d800100  xsignal r3, 0
0009ac  7d800100  xsignal r3, 0
0009b0  7d800100  xsignal r3, 0
0009b4  7d800100  xsignal r3, 0
0009b8  7d800100  xsignal r3, 0
0009bc  7d800100  xsignal r3, 0
0009c0  7d800100  xsignal r3, 0
0009c4  7d800000  xsignal r1, 0
0009c8  7d800000  xsignal r1, 0
0009cc  7d800000  xsignal r1, 0
0009d0  7d800000  xsignal r1, 0
0009d4  7d000100  xsignal r2, 0
0009d8  7d000100  xsignal r2, 0
0009dc  7d000100  xsignal r2, 0
0009e0  7d000100  xsignal r2, 0
0009e4  e3005f00  loadli.w r1,  40(r30)
0009e8  63415f00  loadli.w r2,  44(r30)
0009ec  00d20002  load_param_i r4, 1
0009f0  e3016f00  loadli.w r3,  48(r30)
0009f4  00530002  load_param_i r6, 0
0009f8  abf2ffff  lui r5, 1048575
0009fc  e74e0ffe  storeli.w zero, -20(r30)
000a00  e70d0ffe  storeli.w zero, -40(r30)
000a04  67090ffc  storeli.w zero, -368(r30)
000a08  e7400ff8  storeli.w zero, -1012(r30)
000a0c  670c0ff4  storeli.w zero, -1344(r30)
000a10  e74b0fee  storeli.w zero, -2116(r30)
000a14  8b101120  mul.s r1, r2, r1
000a18  1f010200  addli r2, r4, 0
000a1c  0b913050  fmac.s r2, r1, r3
000a20  8b913020  mul.s r3, r1, r3
000a24  1f71f1ff  addli r2, r2, -1
000a28  0b114130  div.s r2, r2, r4
000a2c  1b92f2ff  ori r4, r5, 4095
000a30  670f4ffe  storeli.w r4, -16(r30)
000a34  674f4ffe  storeli.w r4, -12(r30)
000a38  e70f4ffe  storeli.w r4, -8(r30)
000a3c  e74f4ffe  storeli.w r4, -4(r30)
000a40  e74d4ffe  storeli.w r4, -36(r30)
000a44  670e4ffe  storeli.w r4, -32(r30)
000a48  674e4ffe  storeli.w r4, -28(r30)
000a4c  e70e4ffe  storeli.w r4, -24(r30)
000a50  67494ffc  storeli.w r4, -364(r30)
000a54  e7094ffc  storeli.w r4, -360(r30)
000a58  e7494ffc  storeli.w r4, -356(r30)
000a5c  670a4ffc  storeli.w r4, -352(r30)
000a60  674a4ffc  storeli.w r4, -348(r30)
000a64  e70a4ffc  storeli.w r4, -344(r30)
000a68  e74a4ffc  storeli.w r4, -340(r30)
000a6c  670b4ffc  storeli.w r4, -336(r30)
000a70  674b4ffc  storeli.w r4, -332(r30)
000a74  e70b4ffc  storeli.w r4, -328(r30)
000a78  e74b4ffc  storeli.w r4, -324(r30)
000a7c  670c4ffc  storeli.w r4, -320(r30)
000a80  674c4ffc  storeli.w r4, -316(r30)
000a84  e70c4ffc  storeli.w r4, -312(r30)
000a88  e74c4ffc  storeli.w r4, -308(r30)
000a8c  670d4ffc  storeli.w r4, -304(r30)
000a90  674d4ffc  storeli.w r4, -300(r30)
000a94  e70d4ffc  storeli.w r4, -296(r30)
000a98  e74d4ffc  storeli.w r4, -292(r30)
000a9c  670e4ffc  storeli.w r4, -288(r30)
000aa0  674e4ffc  storeli.w r4, -284(r30)
000aa4  e70e4ffc  storeli.w r4, -280(r30)
000aa8  e74e4ffc  storeli.w r4, -276(r30)
000aac  670f4ffc  storeli.w r4, -272(r30)
000ab0  674f4ffc  storeli.w r4, -268(r30)
000ab4  e70f4ffc  storeli.w r4, -264(r30)
000ab8  e74f4ffc  storeli.w r4, -260(r30)
000abc  67004ffe  storeli.w r4, -256(r30)
000ac0  67404ffe  storeli.w r4, -252(r30)
000ac4  e7004ffe  storeli.w r4, -248(r30)
000ac8  e7404ffe  storeli.w r4, -244(r30)
000acc  67014ffe  storeli.w r4, -240(r30)
000ad0  67414ffe  storeli.w r4, -236(r30)
000ad4  e7014ffe  storeli.w r4, -232(r30)
000ad8  e7414ffe  storeli.w r4, -228(r30)
000adc  67024ffe  storeli.w r4, -224(r30)
000ae0  67424ffe  storeli.w r4, -220(r30)
000ae4  e7024ffe  storeli.w r4, -216(r30)
000ae8  e7424ffe  storeli.w r4, -212(r30)
000aec  67034ffe  storeli.w r4, -208(r30)
000af0  67434ffe  storeli.w r4, -204(r30)
000af4  e7034ffe  storeli.w r4, -200(r30)
000af8  e7434ffe  storeli.w r4, -196(r30)
000afc  67044ffe  storeli.w r4, -192(r30)
000b00  67444ffe  storeli.w r4, -188(r30)
000b04  e7044ffe  storeli.w r4, -184(r30)
000b08  e7444ffe  storeli.w r4, -180(r30)
000b0c  67054ffe  storeli.w r4, -176(r30)
000b10  67454ffe  storeli.w r4, -172(r30)
000b14  e7054ffe  storeli.w r4, -168(r30)
000b18  e7454ffe  storeli.w r4, -164(r30)
000b1c  67064ffe  storeli.w r4, -160(r30)
000b20  67464ffe  storeli.w r4, -156(r30)
000b24  e7064ffe  storeli.w r4, -152(r30)
000b28  e7464ffe  storeli.w r4, -148(r30)
000b2c  67074ffe  storeli.w r4, -144(r30)
000b30  67474ffe  storeli.w r4, -140(r30)
000b34  e7074ffe  storeli.w r4, -136(r30)
000b38  e7474ffe  storeli.w r4, -132(r30)
000b3c  67084ffe  storeli.w r4, -128(r30)
000b40  67484ffe  storeli.w r4, -124(r30)
000b44  e7084ffe  storeli.w r4, -120(r30)
000b48  e7484ffe  storeli.w r4, -116(r30)
000b4c  67094ffe  storeli.w r4, -112(r30)
000b50  67494ffe  storeli.w r4, -108(r30)
000b54  e7094ffe  storeli.w r4, -104(r30)
000b58  e7494ffe  storeli.w r4, -100(r30)
000b5c  670a4ffe  storeli.w r4, -96(r30)
000b60  674a4ffe  storeli.w r4, -92(r30)
000b64  e70a4ffe  storeli.w r4, -88(r30)
000b68  e74a4ffe  storeli.w r4, -84(r30)
000b6c  670b4ffe  storeli.w r4, -80(r30)
000b70  674b4ffe  storeli.w r4, -76(r30)
000b74  e70b4ffe  storeli.w r4, -72(r30)
000b78  e74b4ffe  storeli.w r4, -68(r30)
000b7c  670c4ffe  storeli.w r4, -64(r30)
000b80  674c4ffe  storeli.w r4, -60(r30)
000b84  e70c4ffe  storeli.w r4, -56(r30)
000b88  e74c4ffe  storeli.w r4, -52(r30)
000b8c  670d4ffe  storeli.w r4, -48(r30)
000b90  674d4ffe  storeli.w r4, -44(r30)
000b94  67014ff8  storeli.w r4, -1008(r30)
000b98  67414ff8  storeli.w r4, -1004(r30)
000b9c  e7014ff8  storeli.w r4, -1000(r30)
000ba0  e7414ff8  storeli.w r4, -996(r30)
000ba4  67024ff8  storeli.w r4, -992(r30)
000ba8  67424ff8  storeli.w r4, -988(r30)
000bac  e7024ff8  storeli.w r4, -984(r30)
000bb0  e7424ff8  storeli.w r4, -980(r30)
000bb4  67034ff8  storeli.w r4, -976(r30)
000bb8  67434ff8  storeli.w r4, -972(r30)
000bbc  e7034ff8  storeli.w r4, -968(r30)
000bc0  e7434ff8  storeli.w r4, -964(r30)
000bc4  67044ff8  storeli.w r4, -960(r30)
000bc8  67444ff8  storeli.w r4, -956(r30)
000bcc  e7044ff8  storeli.w r4, -952(r30)
000bd0  e7444ff8  storeli.w r4, -948(r30)
000bd4  67054ff8  storeli.w r4, -944(r30)
000bd8  67454ff8  storeli.w r4, -940(r30)
000bdc  e7054ff8  storeli.w r4, -936(r30)
000be0  e7454ff8  storeli.w r4, -932(r30)
000be4  67064ff8  storeli.w r4, -928(r30)
000be8  67464ff8  storeli.w r4, -924(r30)
000bec  e7064ff8  storeli.w r4, -920(r30)
000bf0  e7464ff8  storeli.w r4, -916(r30)
000bf4  67074ff8  storeli.w r4, -912(r30)
000bf8  67474ff8  storeli.w r4, -908(r30)
000bfc  e7074ff8  storeli.w r4, -904(r30)
000c00  e7474ff8  storeli.w r4, -900(r30)
000c04  67084ff8  storeli.w r4, -896(r30)
000c08  67484ff8  storeli.w r4, -892(r30)
000c0c  e7084ff8  storeli.w r4, -888(r30)
000c10  e7484ff8  storeli.w r4, -884(r30)
000c14  67094ff8  storeli.w r4, -880(r30)
000c18  67494ff8  storeli.w r4, -876(r30)
000c1c  e7094ff8  storeli.w r4, -872(r30)
000c20  e7494ff8  storeli.w r4, -868(r30)
000c24  670a4ff8  storeli.w r4, -864(r30)
000c28  674a4ff8  storeli.w r4, -860(r30)
000c2c  e70a4ff8  storeli.w r4, -856(r30)
000c30  e74a4ff8  storeli.w r4, -852(r30)
000c34  670b4ff8  storeli.w r4, -848(r30)
000c38  674b4ff8  storeli.w r4, -844(r30)
000c3c  e70b4ff8  storeli.w r4, -840(r30)
000c40  e74b4ff8  storeli.w r4, -836(r30)
000c44  670c4ff8  storeli.w r4, -832(r30)
000c48  674c4ff8  storeli.w r4, -828(r30)
000c4c  e70c4ff8  storeli.w r4, -824(r30)
000c50  e74c4ff8  storeli.w r4, -820(r30)
000c54  670d4ff8  storeli.w r4, -816(r30)
000c58  674d4ff8  storeli.w r4, -812(r30)
000c5c  e70d4ff8  storeli.w r4, -808(r30)
000c60  e74d4ff8  storeli.w r4, -804(r30)
000c64  670e4ff8  storeli.w r4, -800(r30)
000c68  674e4ff8  storeli.w r4, -796(r30)
000c6c  e70e4ff8  storeli.w r4, -792(r30)
000c70  e74e4ff8  storeli.w r4, -788(r30)
000c74  670f4ff8  storeli.w r4, -784(r30)
000c78  674f4ff8  storeli.w r4, -780(r30)
000c7c  e70f4ff8  storeli.w r4, -776(r30)
000c80  e74f4ff8  storeli.w r4, -772(r30)
000c84  67004ffa  storeli.w r4, -768(r30)
000c88  67404ffa  storeli.w r4, -764(r30)
000c8c  e7004ffa  storeli.w r4, -760(r30)
000c90  e7404ffa  storeli.w r4, -756(r30)
000c94  67014ffa  storeli.w r4, -752(r30)
000c98  67414ffa  storeli.w r4, -748(r30)
000c9c  e7014ffa  storeli.w r4, -744(r30)
000ca0  e7414ffa  storeli.w r4, -740(r30)
000ca4  67024ffa  storeli.w r4, -736(r30)
000ca8  67424ffa  storeli.w r4, -732(r30)
000cac  e7024ffa  storeli.w r4, -728(r30)
000cb0  e7424ffa  storeli.w r4, -724(r30)
000cb4  67034ffa  storeli.w r4, -720(r30)
000cb8  67434ffa  storeli.w r4, -716(r30)
000cbc  e7034ffa  storeli.w r4, -712(r30)
000cc0  e7434ffa  storeli.w r4, -708(r30)
000cc4  67044ffa  storeli.w r4, -704(r30)
000cc8  67444ffa  storeli.w r4, -700(r30)
000ccc  e7044ffa  storeli.w r4, -696(r30)
000cd0  e7444ffa  storeli.w r4, -692(r30)
000cd4  67054ffa  storeli.w r4, -688(r30)
000cd8  67454ffa  storeli.w r4, -684(r30)
000cdc  e7054ffa  storeli.w r4, -680(r30)
000ce0  e7454ffa  storeli.w r4, -676(r30)
000ce4  67064ffa  storeli.w r4, -672(r30)
000ce8  67464ffa  storeli.w r4, -668(r30)
000cec  e7064ffa  storeli.w r4, -664(r30)
000cf0  e7464ffa  storeli.w r4, -660(r30)
000cf4  67074ffa  storeli.w r4, -656(r30)
000cf8  67474ffa  storeli.w r4, -652(r30)
000cfc  e7074ffa  storeli.w r4, -648(r30)
000d00  e7474ffa  storeli.w r4, -644(r30)
000d04  67084ffa  storeli.w r4, -640(r30)
000d08  67484ffa  storeli.w r4, -636(r30)
000d0c  e7084ffa  storeli.w r4, -632(r30)
000d10  e7484ffa  storeli.w r4, -628(r30)
000d14  67094ffa  storeli.w r4, -624(r30)
000d18  67494ffa  storeli.w r4, -620(r30)
000d1c  e7094ffa  storeli.w r4, -616(r30)
000d20  e7494ffa  storeli.w r4, -612(r30)
000d24  670a4ffa  storeli.w r4, -608(r30)
000d28  674a4ffa  storeli.w r4, -604(r30)
000d2c  e70a4ffa  storeli.w r4, -600(r30)
000d30  e74a4ffa  storeli.w r4, -596(r30)
000d34  670b4ffa  storeli.w r4, -592(r30)
000d38  674b4ffa  storeli.w r4, -588(r30)
000d3c  e70b4ffa  storeli.w r4, -584(r30)
000d40  e74b4ffa  storeli.w r4, -580(r30)
000d44  670c4ffa  storeli.w r4, -576(r30)
000d48  674c4ffa  storeli.w r4, -572(r30)
000d4c  e70c4ffa  storeli.w r4, -568(r30)
000d50  e74c4ffa  storeli.w r4, -564(r30)
000d54  670d4ffa  storeli.w r4, -560(r30)
000d58  674d4ffa  storeli.w r4, -556(r30)
000d5c  e70d4ffa  storeli.w r4, -552(r30)
000d60  e74d4ffa  storeli.w r4, -548(r30)
000d64  670e4ffa  storeli.w r4, -544(r30)
000d68  674e4ffa  storeli.w r4, -540(r30)
000d6c  e70e4ffa  storeli.w r4, -536(r30)
000d70  e74e4ffa  storeli.w r4, -532(r30)
000d74  670f4ffa  storeli.w r4, -528(r30)
000d78  674f4ffa  storeli.w r4, -524(r30)
000d7c  e70f4ffa  storeli.w r4, -520(r30)
000d80  e74f4ffa  storeli.w r4, -516(r30)
000d84  67004ffc  storeli.w r4, -512(r30)
000d88  67404ffc  storeli.w r4, -508(r30)
000d8c  e7004ffc  storeli.w r4, -504(r30)
000d90  e7404ffc  storeli.w r4, -500(r30)
000d94  67014ffc  storeli.w r4, -496(r30)
000d98  67414ffc  storeli.w r4, -492(r30)
000d9c  e7014ffc  storeli.w r4, -488(r30)
000da0  e7414ffc  storeli.w r4, -484(r30)
000da4  67024ffc  storeli.w r4, -480(r30)
000da8  67424ffc  storeli.w r4, -476(r30)
000dac  e7024ffc  storeli.w r4, -472(r30)
000db0  e7424ffc  storeli.w r4, -468(r30)
000db4  67034ffc  storeli.w r4, -464(r30)
000db8  67434ffc  storeli.w r4, -460(r30)
000dbc  e7034ffc  storeli.w r4, -456(r30)
000dc0  e7434ffc  storeli.w r4, -452(r30)
000dc4  67044ffc  storeli.w r4, -448(r30)
000dc8  67444ffc  storeli.w r4, -444(r30)
000dcc  e7044ffc  storeli.w r4, -440(r30)
000dd0  e7444ffc  storeli.w r4, -436(r30)
000dd4  67054ffc  storeli.w r4, -432(r30)
000dd8  67454ffc  storeli.w r4, -428(r30)
000ddc  e7054ffc  storeli.w r4, -424(r30)
000de0  e7454ffc  storeli.w r4, -420(r30)
000de4  67064ffc  storeli.w r4, -416(r30)
000de8  67464ffc  storeli.w r4, -412(r30)
000dec  e7064ffc  storeli.w r4, -408(r30)
000df0  e7464ffc  storeli.w r4, -404(r30)
000df4  67074ffc  storeli.w r4, -400(r30)
000df8  67474ffc  storeli.w r4, -396(r30)
000dfc  e7074ffc  storeli.w r4, -392(r30)
000e00  e7474ffc  storeli.w r4, -388(r30)
000e04  67084ffc  storeli.w r4, -384(r30)
000e08  67484ffc  storeli.w r4, -380(r30)
000e0c  e7084ffc  storeli.w r4, -376(r30)
000e10  e7484ffc  storeli.w r4, -372(r30)
000e14  8b106120  mul.s r1, r2, r6
000e18  0b116150  fmac.s r2, r2, r6
000e1c  8b113140  min.s r3, r2, r3
000e20  cbd81102  ble.s r3, r1, 1588
000e24  33910128  sext_int2long r[3:4], r3
000e28  1f02efee  addli r4, r30, -2192
000e2c  9f02dfee  addli r5, r30, -2200
000e30  e344dfff  loadli.w r9,  -20(r30)
000e34  e307bfff  loadli.w r15,  -40(r30)
000e38  63052ffd  loadli.w r10,  -368(r30)
000e3c  e3451ff8  loadli.w r11,  -1012(r30)
000e40  63068ff5  loadli.w r12,  -1344(r30)
000e44  e3467fef  loadli.w r13,  -2116(r30)
000e48  1f078000  addli r14, zero, 64
000e4c  9f480000  addli r17, zero, 4
000e50  1f2da000  addli r26, zero, 82
000e54  ab0d0200  lui r27, 32
000e58  9f2c0000  addli r25, zero, 2
000e5c  1f5b0000  addli r22, zero, 5
000e60  1f3c0000  addli r24, zero, 3
000e64  1f0e4000  addli r28, zero, 32
000e68  1f1a0000  addli r20, zero, 1
000e6c  9f0a0000  addli r21, zero, 0
000e70  73302200  store.d r[3:4], 0(r4)
000e74  b3910028  sext_int2long r[4:5], r1
000e78  1f71f00f  addli r2, zero, 2047
000e7c  ab80ffff  lui r1, 1048568
000e80  73b01200  store.d r[2:3], 0(r5)
000e84  ab800200  lui r1, 40
000e88  9b902084  ori r1, r1, 2114
000e8c  67461fee  storeli.w r1, -2204(r30)
000e90  db0f0000  j 124
000e94  9f011fef  addli r3, r30, -2168
000e98  ebd00100  load.d r[2:3], 0(r3)
000e9c  9f511000  addli r3, zero, 13
000ea0  7d900100  xwait r3, 0
000ea4  eb510f01  load.d r[4:5], 16(r30)
000ea8  1d800800  lock zero, r17
000eac  97b04003  sll.d r[2:3], r[2:3], r20
000eb0  15000a00  dma_cfg zero, r20, zero, 0
000eb4  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
000eb8  9bb11200  slli r3, r5, 1
000ebc  15000104  dma_cfg zero, r2, zero, 2
000ec0  95833006  dma_cfg r7, r1, r3, 3
000ec4  9f000002  addli r1, zero, 256
000ec8  1f010004  addli r2, zero, 512
000ecc  15814009  dma_cfg r2, r1, r20, 4
000ed0  9f401000  addli r1, zero, 12
000ed4  35000000  dma_run zero
000ed8  1d900800  unlock r17
000edc  7d800000  xsignal r1, 0
000ee0  e3445fef  loadli.w r9,  -2132(r30)
000ee4  e34a3fef  loadli.w r21,  -2148(r30)
000ee8  9f004fef  addli r1, r30, -2144
000eec  9f02efee  addli r5, r30, -2192
000ef0  9f970700  addli r15, r15, 1
000ef4  9f940400  addli r9, r9, 1
000ef8  ebd10000  load.d r[4:5], 0(r1)
000efc  ebd00200  load.d r[2:3], 0(r5)
000f00  a7910100  addli.d r[4:5], r[4:5], 1
000f04  93b01104  setlt.sl r1, r[4:5], r[2:3]
000f08  37b50002  beq r1, zero, 1356
000f0c  3bb01b01  bneq r23, r17, 12
000f10  9f301000  addli r1, zero, 11
000f14  7d900000  xwait r1, 0
000f18  e3006f00  loadli.w r1,  48(r30)
000f1c  1f014fef  addli r2, r30, -2144
000f20  1f080fef  addli r16, r30, -2176
000f24  e74a9fee  storeli.w r9, -2132(r30)
000f28  e70affee  storeli.w r15, -2136(r30)
000f2c  73303100  store.d r[4:5], 0(r2)
000f30  63415f00  loadli.w r2,  44(r30)
000f34  8b901130  div.s r1, r3, r1
000f38  9f011000  addli r3, zero, 8
000f3c  0b932030  div.s r6, r1, r2
000f40  8b13e330  div.s r7, r6, r14
000f44  9bb03300  slli r1, r7, 3
000f48  0b911118  sub.s r2, r3, r1
000f4c  0b143140  min.s r8, r2, r3
000f50  0b118338  mod.s r2, r6, r8
000f54  8b912010  add.s r3, r1, r2
000f58  9f700000  addli r1, zero, 7
000f5c  1f411000  addli r2, zero, 12
000f60  93803004  setlt.u r1, r1, r3
000f64  33820128  zext_int2long r[5:6], r3
000f68  17392202  sll.d r[19:20], r[5:6], r2
000f6c  73304800  store.d r[5:6], 0(r16)
000f70  3bb00000  bneq r1, zero, 12
000f74  33020028  zext_int2long r[5:6], zero
000f78  5b020000  j 16
000f7c  1f02dfee  addli r4, r30, -2200
000f80  eb500200  load.d r[2:3], 0(r4)
000f84  17021902  and.d r[5:6], r[19:20], r[2:3]
000f88  9bb06300  slli r1, r7, 6
000f8c  0b911a39  mod.s r2, r21, r17
000f90  9bb16100  slli r3, r3, 6
000f94  9f9a0a00  addli r21, r21, 1
000f98  9f040000  addli r9, zero, 0
000f9c  8b101318  sub.s r1, r6, r1
000fa0  e7473fee  storeli.w r3, -2180(r30)
000fa4  e7495fef  storeli.w r21, -2148(r30)
000fa8  8b908030  div.s r1, r1, r8
000fac  9b31f100  slli r3, r2, 15
000fb0  33830028  zext_int2long r[7:8], r1
000fb4  9bb07000  slli r1, r1, 7
000fb8  67091fee  storeli.w r1, -2160(r30)
000fbc  9f700000  addli r1, zero, 7
000fc0  97371302  sll.d r[16:17], r[7:8], r1
000fc4  9f001fef  addli r1, r30, -2168
000fc8  9f130000  addli r7, zero, 1
000fcc  1f036fef  addli r6, r30, -2128
000fd0  73b0f000  store.d r[16:17], 0(r1)
000fd4  97b07702  sll.d r[2:3], r[16:17], r7
000fd8  eb578f00  load.d r[16:17], 8(r30)
000fdc  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000fe0  9f070000  addli r15, zero, 0
000fe4  1f088001  addli r16, zero, 192
000fe8  73301300  store.d r[2:3], 0(r6)
000fec  5b090000  j 72
000ff0  7d900c00  xwait r25, 0
000ff4  7d100b00  xwait r22, 0
000ff8  1d000000  lock zero, zero
000ffc  010c0000  ds_cfg r24, zero, 0
001000  01070002  ds_cfg r14, zero, 1
001004  010e001c  ds_cfg r28, zero, 14
001008  0107001a  ds_cfg r14, zero, 13
00100c  2114c303  shuffle_batch r8, r6, r28, 1
001010  1d100000  unlock zero
001014  7d000c00  xsignal r24, 0
001018  7d800800  xsignal r17, 0
00101c  9f950500  addli r11, r11, 1
001020  1f150500  addli r10, r10, 1
001024  b7980a00  beq r21, zero, 548
001028  9f970700  addli r15, r15, 1
00102c  9f140000  addli r9, zero, 1
001030  9f030000  addli r7, zero, 0
001034  8b10a639  mod.s r1, r12, r26
001038  0b910639  mod.s r2, r13, r16
00103c  9f960600  addli r13, r13, 1
001040  1f160600  addli r12, r12, 1
001044  9b8a1300  andi r21, r7, 1
001048  9bb0d000  slli r1, r1, 13
00104c  1b34c100  slli r8, r2, 12
001050  0b93b011  add.s r6, r1, r27
001054  37fe9bff  beq r23, r25, -100
001058  b3800428  zext_int2long r[2:3], r9
00105c  bbd14b01  bneq r23, r20, 116
001060  97b06003  sll.d r[2:3], r[2:3], r22
001064  b3030728  zext_int2long r[8:9], r14
001068  9f048003  addli r9, zero, 448
00106c  6b5d0f00  load.d r[27:28], 0(r30)
001070  7d100c00  xwait r24, 0
001074  1d800800  lock zero, r17
001078  150a0a00  dma_cfg r20, r20, zero, 0
00107c  97902003  or.d r[2:3], r[2:3], r[19:20]
001080  0bbb4018  sub.sl r[23:24], r[2:3], r[5:6]
001084  97b04003  sll.d r[2:3], r[2:3], r20
001088  8f137b60  div.sl r[8:9], r[23:24], r[8:9]
00108c  338b0428  zext_int2long r[23:24], r9
001090  8b201d10  add.ul r[2:3], r[27:28], r[2:3]
001094  ab0d0200  lui r27, 32
001098  1f2da000  addli r26, zero, 82
00109c  15000104  dma_cfg zero, r2, zero, 2
0010a0  1583e006  dma_cfg r6, r1, r14, 3
0010a4  9f000001  addli r1, zero, 128
0010a8  0bbb6341  min.sl r[23:24], r[8:9], r[23:24]
0010ac  8b337b18  sub.sl r[8:9], r[23:24], r[8:9]
0010b0  1f5b0000  addli r22, zero, 5
0010b4  803b0002  core_id r23
0010b8  9f838300  addli r7, r7, 64
0010bc  95807008  dma_cfg r1, r1, r7, 4
0010c0  35000000  dma_run zero
0010c4  1d900800  unlock r17
0010c8  7d800c00  xsignal r25, 0
0010cc  5beaffff  j -176
0010d0  1f13a000  addli r6, zero, 81
0010d4  9f034001  addli r7, zero, 160
0010d8  0b136538  mod.s r6, r10, r6
0010dc  8b937538  mod.s r7, r11, r7
0010e0  9f950500  addli r11, r11, 1
0010e4  1f150500  addli r10, r10, 1
0010e8  9bb4d300  slli r9, r7, 13
0010ec  1b33d300  slli r6, r6, 13
0010f0  ab430c00  lui r7, 196
0010f4  0b137310  add.s r6, r6, r7
0010f8  9f730000  addli r7, zero, 7
0010fc  37e17b00  beq r23, r7, 88
001100  1f6c0000  addli r24, zero, 6
001104  3bd28b01  bneq r23, r24, 148
001108  9f032000  addli r7, zero, 16
00110c  9f046fef  addli r9, r30, -2128
001110  97b07002  sll.d r[2:3], r[2:3], r7
001114  9f730000  addli r7, zero, 7
001118  7d900300  xwait r7, 0
00111c  ebd30400  load.d r[8:9], 0(r9)
001120  1d800800  lock zero, r17
001124  150a0a00  dma_cfg r20, r20, zero, 0
001128  8ba01310  add.ul r[2:3], r[8:9], r[2:3]
00112c  9f030002  addli r7, zero, 256
001130  15000104  dma_cfg zero, r2, zero, 2
001134  15837006  dma_cfg r6, r1, r7, 3
001138  9f000010  addli r1, zero, 2048
00113c  9583c009  dma_cfg r7, r1, r28, 4
001140  35000000  dma_run zero
001144  1d900800  unlock r17
001148  7d000c00  xsignal r24, 0
00114c  1f3c0000  addli r24, zero, 3
001150  dbdaffff  j -300
001154  9f600000  addli r1, zero, 6
001158  7d900000  xwait r1, 0
00115c  9f101000  addli r1, zero, 9
001160  7d900000  xwait r1, 0
001164  1d000000  lock zero, zero
001168  9f000001  addli r1, zero, 128
00116c  010c0000  ds_cfg r24, zero, 0
001170  81000002  ds_cfg r1, zero, 1
001174  010e001c  ds_cfg r28, zero, 14
001178  8100001a  ds_cfg r1, zero, 13
00117c  9f700000  addli r1, zero, 7
001180  c104c305  shuffle_coa r9, r6, r28, 2
001184  1d100000  unlock zero
001188  7d800000  xsignal r1, 0
00118c  9f001000  addli r1, zero, 8
001190  7d800000  xsignal r1, 0
001194  5bd2ffff  j -368
001198  bb921b01  bneq r23, r17, 164
00119c  9f001000  addli r1, zero, 8
0011a0  7d900800  xwait r17, 0
0011a4  1f3c0000  addli r24, zero, 3
0011a8  1f130000  addli r6, zero, 1
0011ac  1f010000  addli r2, zero, 0
0011b0  7d900000  xwait r1, 0
0011b4  9f100000  addli r1, zero, 1
0011b8  b7f00700  beq r15, zero, 60
0011bc  9b33c100  slli r7, r2, 12
0011c0  1b318100  slli r2, r2, 8
0011c4  1d000300  lock zero, r6
0011c8  0907ee00  mm_cfg r14, r28, r14, 0
0011cc  97939300  or r7, r7, r9
0011d0  17113100  or r2, r2, r3
0011d4  09836804  mm_cfg r6, r17, r6, 2
0011d8  2911740a  mm_acc r2, r8, r7, 5
0011dc  9b831000  andi r7, r1, 1
0011e0  1f110000  addli r2, zero, 1
0011e4  9f000000  addli r1, zero, 0
0011e8  1d100300  unlock r6
0011ec  3bcf03fe  bneq r7, zero, -48
0011f0  5b070000  j 56
0011f4  9b33c100  slli r7, r2, 12
0011f8  1b318100  slli r2, r2, 8
0011fc  1d000300  lock zero, r6
001200  0907ee00  mm_cfg r14, r28, r14, 0
001204  97939300  or r7, r7, r9
001208  17113100  or r2, r2, r3
00120c  09836804  mm_cfg r6, r17, r6, 2
001210  2901740a  mm r2, r8, r7, 5
001214  9b831000  andi r7, r1, 1
001218  1f110000  addli r2, zero, 1
00121c  9f000000  addli r1, zero, 0
001220  1d100300  unlock r6
001224  3bcf03fe  bneq r7, zero, -48
001228  9f101000  addli r1, zero, 9
00122c  7d000b00  xsignal r22, 0
001230  7d800000  xsignal r1, 0
001234  bbd70afe  bneq r21, zero, -524
001238  db020000  j 20
00123c  1f3c0000  addli r24, zero, 3
001240  bba70afe  bneq r21, zero, -536
001244  5b020000  j 16
001248  3bb01b01  bneq r23, r17, 12
00124c  9f201000  addli r1, zero, 10
001250  7d800000  xsignal r1, 0
001254  e3002fef  loadli.w r1,  -2160(r30)
001258  1f020007  addli r4, zero, 896
00125c  e3075fef  loadli.w r15,  -2136(r30)
001260  9f030001  addli r7, zero, 128
001264  33020228  zext_int2long r[5:6], r4
001268  b3830328  zext_int2long r[8:9], r7
00126c  b3800028  zext_int2long r[2:3], r1
001270  0b931739  mod.s r6, r15, r17
001274  0ba24040  min.ul r[5:6], r[2:3], r[5:6]
001278  27020201  addli.d r[5:6], r[5:6], 128
00127c  0b221248  max.ul r[5:6], r[5:6], r[2:3]
001280  8b301218  sub.sl r[2:3], r[5:6], r[2:3]
001284  1b329300  slli r4, r6, 9
001288  8ba27040  min.ul r[6:7], r[2:3], r[8:9]
00128c  ab601600  lui r1, 358
001290  8b131210  add.s r7, r4, r1
001294  37804bff  beq r23, r20, -1024
001298  e3445fef  loadli.w r9,  -2132(r30)
00129c  2b611600  lui r2, 358
0012a0  e34a3fef  loadli.w r21,  -2148(r30)
0012a4  1b110180  ori r2, r2, 2048
0012a8  8b901439  mod.s r1, r9, r17
0012ac  9bb0f000  slli r1, r1, 15
0012b0  0b922010  add.s r4, r1, r2
0012b4  b7d16b01  beq r23, r22, 116
0012b8  3be38b01  bneq r23, r24, 216
0012bc  9f201000  addli r1, zero, 10
0012c0  9f020000  addli r5, zero, 0
0012c4  2b830000  lui r6, 8
0012c8  7d900000  xwait r1, 0
0012cc  9f401000  addli r1, zero, 12
0012d0  7d900000  xwait r1, 0
0012d4  9f002000  addli r1, zero, 16
0012d8  7d900000  xwait r1, 0
0012dc  1d800c00  lock zero, r25
0012e0  ab00803f  lui r1, 260096
0012e4  0d000002  ew_cfg zero, zero, zero, 1
0012e8  8d900000  ewcoeff_cfg r1, r1, zero, 0
0012ec  9f70f000  addli r1, zero, 127
0012f0  0d800004  ew_cfg zero, r1, zero, 2
0012f4  0d0a0006  ew_cfg r20, zero, zero, 3
0012f8  8b105210  add.s r1, r4, r5
0012fc  0b915110  add.s r2, r3, r5
001300  9f820204  addli r5, r5, 512
001304  ad007100  dsmadd r1, r2, r7, 0
001308  bbcf62fe  bneq r5, r6, -16
00130c  9f301000  addli r1, zero, 11
001310  1d900c00  unlock r25
001314  7d800000  xsignal r1, 0
001318  9f501000  addli r1, zero, 13
00131c  7d800000  xsignal r1, 0
001320  9f601000  addli r1, zero, 14
001324  5b250000  j 296
001328  9f601000  addli r1, zero, 14
00132c  9f01dfee  addli r3, r30, -2200
001330  7d900000  xwait r1, 0
001334  1d800c00  lock zero, r25
001338  ab00803f  lui r1, 260096
00133c  0d000002  ew_cfg zero, zero, zero, 1
001340  0d101000  ewcoeff_cfg zero, zero, r1, 0
001344  0d0a0024  ew_cfg r20, zero, zero, 18
001348  8d0c0014  ew_cfg r25, zero, zero, 10
00134c  e340cfee  loadli.w r1,  -2204(r30)
001350  8d0c1a16  ew_cfg r25, r20, r1, 11
001354  abc07f41  lui r1, 268284
001358  0d00001a  ew_cfg zero, zero, zero, 13
00135c  0d80181c  ew_cfg zero, r17, r1, 14
001360  0d00001e  ew_cfg zero, zero, zero, 15
001364  ebd00100  load.d r[2:3], 0(r3)
001368  0d000104  ew_cfg zero, r2, zero, 2
00136c  9f701000  addli r1, zero, 15
001370  8d080006  ew_cfg r17, zero, zero, 3
001374  8d881827  ew_cfg r17, r17, r17, 19
001378  2d124200  dsmul r4, r4, r4, 0
00137c  0d000014  ew_cfg zero, zero, zero, 10
001380  0d000024  ew_cfg zero, zero, zero, 18
001384  0d000026  ew_cfg zero, zero, zero, 19
001388  1d900c00  unlock r25
00138c  5b180000  j 192
001390  3bed0bfc  bneq r23, zero, -1192
001394  e340ffee  loadli.w r1,  -2180(r30)
001398  9f018003  addli r3, zero, 448
00139c  1f5b0000  addli r22, zero, 5
0013a0  b3830128  zext_int2long r[8:9], r3
0013a4  9f016fef  addli r3, r30, -2128
0013a8  b3900028  sext_int2long r[2:3], r1
0013ac  8bb37040  min.sl r[8:9], r[2:3], r[8:9]
0013b0  a7838300  addli.d r[8:9], r[8:9], 64
0013b4  8bb31348  max.sl r[8:9], r[8:9], r[2:3]
0013b8  8bb01318  sub.sl r[2:3], r[8:9], r[2:3]
0013bc  9f030fef  addli r7, r30, -2176
0013c0  73b01100  store.d r[2:3], 0(r3)
0013c4  b3000728  zext_int2long r[2:3], r14
0013c8  9f012fef  addli r3, r30, -2160
0013cc  73b01100  store.d r[2:3], 0(r3)
0013d0  6bd10300  load.d r[3:4], 0(r7)
0013d4  9f102000  addli r1, zero, 17
0013d8  17391102  sll.d r[19:20], r[3:4], r1
0013dc  9f011fef  addli r3, r30, -2168
0013e0  ebd00100  load.d r[2:3], 0(r3)
0013e4  97b04003  sll.d r[2:3], r[2:3], r20
0013e8  73b01100  store.d r[2:3], 0(r3)
0013ec  eb508f01  load.d r[2:3], 24(r30)
0013f0  9f016fef  addli r3, r30, -2128
0013f4  0ba92011  add.ul r[19:20], r[2:3], r[19:20]
0013f8  ebd00100  load.d r[2:3], 0(r3)
0013fc  9f012fef  addli r3, r30, -2160
001400  ebd30100  load.d r[8:9], 0(r3)
001404  9f011fef  addli r3, r30, -2168
001408  8bb07040  min.sl r[2:3], r[2:3], r[8:9]
00140c  ebd30100  load.d r[8:9], 0(r3)
001410  9f711000  addli r3, zero, 15
001414  7d900100  xwait r3, 0
001418  1d000b00  lock zero, r22
00141c  9bb12200  slli r3, r5, 2
001420  150a0000  dma_cfg r20, zero, zero, 0
001424  8b237910  add.ul r[8:9], r[19:20], r[8:9]
001428  15000a02  dma_cfg zero, r20, zero, 1
00142c  15040004  dma_cfg r8, zero, zero, 2
001430  95033206  dma_cfg r7, r4, r3, 3
001434  9f010004  addli r3, zero, 512
001438  1f020010  addli r4, zero, 2048
00143c  15821108  dma_cfg r4, r3, r1, 4
001440  9f002000  addli r1, zero, 16
001444  35000000  dma_run zero
001448  1d100b00  unlock r22
00144c  7d800000  xsignal r1, 0
001450  5b53ffff  j -1384
001454  7d000000  xsignal zero, 0
001458  bbe00b00  bneq r23, zero, 56
00145c  9f200000  addli r1, zero, 2
001460  7d100000  xwait zero, 0
001464  7d100000  xwait zero, 0
001468  7d100000  xwait zero, 0
00146c  7d100000  xwait zero, 0
001470  7d100000  xwait zero, 0
001474  7d100000  xwait zero, 0
001478  7d100000  xwait zero, 0
00147c  7d100000  xwait zero, 0
001480  1d800000  lock zero, r1
001484  0d000020  ew_cfg zero, zero, zero, 16
001488  1d900000  unlock r1
00148c  7d400000  xsignal_mode_cfg zero
001490  9f8e4e11  addli sp, sp, 2208
001494  00a00300  mfence { lm, sm, gm }
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
00152c  00100000  exit
001530  00100000  exit
001534  00100000  exit
001538  00100000  exit
00153c  00100000  exit
001540  00100000  exit
001544  00100000  exit
001548  00100000  exit
00154c  00100000  exit
001550  00100000  exit
001554  00100000  exit
001558  00100000  exit
00155c  00100000  exit
001560  00100000  exit
001564  00100000  exit
001568  00100000  exit
00156c  00100000  exit
001570  00100000  exit
001574  00100000  exit
001578  00100000  exit
00157c  00100000  exit
001580  00100000  exit
001584  00100000  exit
001588  00100000  exit
00158c  00100000  exit
001590  00100000  exit
001594  00100000  exit
001598  00100000  exit
00159c  00100000  exit
0015a0  00100000  exit
0015a4  00100000  exit
0015a8  00100000  exit
0015ac  00100000  exit
0015b0  00100000  exit
0015b4  00100000  exit
0015b8  00100000  exit
0015bc  00100000  exit
0015c0  00100000  exit
0015c4  00100000  exit
0015c8  00100000  exit
0015cc  00100000  exit
0015d0  00100000  exit
0015d4  00100000  exit
0015d8  00100000  exit
0015dc  00100000  exit
0015e0  00100000  exit
0015e4  00100000  exit
0015e8  00100000  exit
0015ec  00100000  exit
0015f0  00100000  exit
0015f4  00100000  exit
0015f8  00100000  exit
0015fc  00100000  exit
001600  00100000  exit
001604  00100000  exit
001608  00100000  exit
00160c  00100000  exit
001610  00100000  exit
001614  00100000  exit
001618  00100000  exit
00161c  00100000  exit
001620  00100000  exit
001624  00100000  exit
001628  00100000  exit
00162c  00100000  exit
001630  00100000  exit
001634  00100000  exit
001638  00100000  exit
00163c  00100000  exit
001640  00100000  exit
001644  00100000  exit
001648  00100000  exit
00164c  00100000  exit
001650  00100000  exit
001654  00100000  exit
001658  00100000  exit
00165c  00100000  exit
001660  00100000  exit
001664  00100000  exit
001668  00100000  exit
00166c  00100000  exit
001670  00100000  exit
001674  00100000  exit
001678  00100000  exit
00167c  00100000  exit
001680  00100000  exit
001684  00100000  exit
001688  00100000  exit
00168c  00100000  exit
001690  00100000  exit
001694  00100000  exit
001698  00100000  exit
00169c  00100000  exit
0016a0  00100000  exit
0016a4  00100000  exit
0016a8  00100000  exit
0016ac  00100000  exit
0016b0  00100000  exit
0016b4  00100000  exit
0016b8  00100000  exit
0016bc  00100000  exit
0016c0  00100000  exit
0016c4  00100000  exit
0016c8  00100000  exit
0016cc  00100000  exit
0016d0  00100000  exit
0016d4  00100000  exit
0016d8  00100000  exit
